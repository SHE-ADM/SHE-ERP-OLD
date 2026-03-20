unit pnfe_cce;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxEdLib, ExtCtrls, ComCtrls, dxCntner, dxEditor, math, StrUtils,
  StdCtrls,  ImgList, Registry, DB, IBCustomDataSet, IBQuery, IBDatabase, rxSpeedbar,
  StrInt, StrIntImp, XMLDom, XMLIntf, MSXMLDom, XMLDoc, XMLXForm;

type
  Tfrmnfe_cce = class(TForm)
    Shape1: TShape;
    Shape9: TShape;
    Bevel1: TBevel;
    Label5: TLabel;
    Shape10: TShape;
    Label1: TLabel;
    Shape2: TShape;
    edchv: TdxEdit;
    edproc: TdxEdit;
    sbMSG: TStatusBar;
    Panel1: TPanel;
    imageOPC: TImageList;
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    siSAIR: TSpeedItem;
    siVAL: TSpeedItem;
    siCAN: TSpeedItem;
    GroupBox1: TGroupBox;
    mmoCorrecao: TdxMemo;
    GroupBox2: TGroupBox;
    mmoCCe: TdxMemo;
    Shape3: TShape;
    Label2: TLabel;
    Shape4: TShape;
    eddemi: TdxDateEdit;
    Shape5: TShape;
    Label3: TLabel;
    Shape6: TShape;
    edseq: TdxSpinEdit;
    Shape7: TShape;
    Label4: TLabel;
    Shape8: TShape;
    edhemi: TdxTimeEdit;
    siVIS: TSpeedItem;
    siENV: TSpeedItem;
    Shape11: TShape;
    Label6: TLabel;
    Shape12: TShape;
    edcdnf: TdxEdit;
    ibTRA: TIBTransaction;
    Consulta: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure siVALClick(Sender: TObject);
    procedure siCANClick(Sender: TObject);
    procedure siSAIRClick(Sender: TObject);
    procedure siVISClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure siENVClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnfe_cce: Tfrmnfe_cce;
  Diretorio,Evento,PDF: string;

implementation

uses uPrincipal, pctr_nfe, pemail;

{$R *.dfm}

function GeraCCe(chnfe, seq, tpEvento, dhEvento : shortstring; xCorrecao : array of shortstring) : shortstring; stdcall; External dllNfe; far; //v6.4.1
function ImprimeCCe(pathCCe, pathPDF : shortstring; tipoImp : integer) : boolean; stdcall; External dllNfe; far;

procedure Tfrmnfe_cce.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
  oOTransact(IBTra);
end;

procedure Tfrmnfe_cce.FormShow(Sender: TObject);
begin
  Diretorio := 'C:\Sheild\NotaFiscal\nfe\arquivos\procNFe\'+eddemi.Hint;
  Evento    := '*'+edcdnf.Text+'?-procEventoNfe*.*';
  PDF       := 'C:\Sheild\NotaFiscal\CCe\'+oStrZero(strtoint(edcdnf.Text),6)+'.PDF';
end;

procedure Tfrmnfe_cce.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Screen.Cursor := crDefault;
end;

procedure Tfrmnfe_cce.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Screen.Cursor := crAppStart;
  Action := caFree;
end;

procedure Tfrmnfe_cce.FormDestroy(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  frmnfe_cce := Nil;
end;

function PesquisaArquivo(diretorio, pesquisa: string): string;
var
  f: TSearchRec;
  r: integer;
  nomearquivo: string;
begin
  nomearquivo := '';

  if diretorio[length(diretorio)]<>'\' then
  diretorio := diretorio+'\';

  if DirectoryExists(diretorio) then
  begin
    r := FindFirst(diretorio+pesquisa,faAnyFile,f);
    while (r=0) do
    begin
      r := FindNext(f);

      if (f.Name = '.') or (f.Name='..') then
      Continue;

      if f.Attr = fadirectory then
      PesquisaArquivo(diretorio+f.Name,pesquisa) else
      nomearquivo := trim(diretorio+f.Name);
    end;
  end;
  result := nomearquivo;
end;

procedure Tfrmnfe_cce.siVALClick(Sender: TObject);
var
 xCorrecao: array of ShortString;
 x: Integer;
 Str: String;
begin
  if oEmpty(edcdnf.Text) then
  oException(edcdnf,'Número da nota fiscal não informada !');

  if oEmpty(edchv.Text) then
  oException(edchv,'Número da chave de acesso não informada !');

  if oEmpty(mmoCorrecao.Text) then
  oException(mmoCorrecao,'Instrução não Informada !');

  Str := Trim(mmoCorrecao.Text);
  SetLength(xCorrecao,4);
  for x := 0 to 3 do
  begin
    xCorrecao[x] := oREPAcentos(copy(str,0,250));
    if (length(str) >= 250) then
    Delete(str,1,250) else
    Delete(str,1,length(str));
  end;

  mmoCCe.Lines.Clear;
  mmoCCe.Lines.Add('## Metodo: GeraCCe');
  mmoCCe.Lines.Add('Retorno:');
  mmoCCe.Lines.Add(
  GeraCCe(edchv.text, //chave NFE (apenas numeros)
  edSeq.Text,         //Seqüencial do evento para o mesmo tipo de evento. Para maioria dos eventos será 1, nos casos em que possa existir mais de um evento, como é o caso da carta de correção, o autor do evento deve numerar de forma seqüencial.
  '110110',           //Código do de evento, conforme NT2011.03, default = 110110
  FormatDateTime('yyyy-mm-dd',Date)+'T'+FormatDatetime('hh:mm:ss',Now)+RECParametros.SHEILD_TIMEZONE, //Data e hora do evento no formato AAAA-MMDDThh:mm:ssTZD
  xCorrecao)); //Correção a ser considerada, texto livre. A correção mais recente substitui as anteriores.


  mmoCCe.Lines.Add('');
  mmoCCe.Lines.Add('');
end;

procedure Tfrmnfe_cce.siCANClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmnfe_cce.siSAIRClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmnfe_cce.siVISClick(Sender: TObject);
var
  CCe: string;
begin
  DecodeDate(eddemi.Date, Ano, Mes, Dia);
  CCE := 'C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\'+oStrZero(ano,4)+oStrZero(mes,2)+'\110110-'+edchv.Text+'-procEventoNfe.xml';

  if not ImprimeCCe(CCe, PDF, 2) then
     raise exception.Create('Falha ao tentar gerar CCe !');

  SleepEx(500,False);
  ImprimeCCe(CCe, PDF, 3);
end;

procedure Tfrmnfe_cce.siENVClick(Sender: TObject);
var
  XML: string;
begin
  DecodeDate(eddemi.Date, Ano, Mes, Dia);
  XML := 'C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\'+oStrZero(ano,4)+oStrZero(mes,2)+'\110110-'+edchv.Text+'-procEventoNfe.xml';

  if not fileexists(PDF) then
     raise exception.Create('PDF da Carta de correção eletrônica não encontrada !');

  if not fileexists(XML) then
     raise exception.Create('XML da Carta de correção eletrônica não encontrada !');

  frmemail := TFrmemail.Create(self);
  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT CLI_MAIL FROM CAD_CLI');
      SQL.Add('WHERE  ID = '''+edcdnf.Hint+'''');
      Open;
    end;

    frmemail.cbemail.Text  := consulta.Fields[0].AsString;
    frmemail.edtitulo.Text := RECParametros.Fantasia+' - CCe.: '+edcdnf.Text;
    frmemail.Memo1.Lines.Add('Segue em anexo...') ;

    frmemail.cbarqs.Items.Add(PDF);
    frmemail.cbarqs.Items.Add(XML);

    frmemail.ShowModal;
  finally
    freeAndNil(frmemail);
  end;
end;

end.
