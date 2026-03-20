unit parquivo_geral;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBDatabase, QRExport, IBQuery, ImgList,
  StdCtrls, Mask, dxCntner, dxEditor, dxEdLib, ComCtrls,
  ExtCtrls, dxDBGrid, dxDBCtrl, dxExEdtr, Shellapi, QRPDFFilt, rxSpeedbar,
  rxToolEdit;

type
  Tfrmarquivo_geral = class(TForm)
    Shape13: TShape;
    Shape11: TShape;
    Shape9: TShape;
    Label5: TLabel;
    Shape10: TShape;
    Label6: TLabel;
    Shape12: TShape;
    Shape14: TShape;
    Label7: TLabel;
    sbMSG: TStatusBar;
    edfile: TdxEdit;
    cblfile: TDirectoryEdit;
    consulta: TIBQuery;
    aux: TIBQuery;
    QRRTFFilter1: TQRRTFFilter;
    expXLS: TQRExcelFilter;
    ibTRA: TIBTransaction;
    cadastro: TIBDataSet;
    cadastroID: TIntegerField;
    cadastroDATA: TDateField;
    cadastroARQUIVO: TIBStringField;
    cadastroDATA1: TDateField;
    cadastroDATA2: TDateField;
    cadastroRESPONSAVEL: TIBStringField;
    cadastroSTATUS: TIBStringField;
    imageOPC: TImageList;
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    BSai: TSpeedItem;
    BVis: TSpeedItem;
    BEnv: TSpeedItem;
    BGer: TSpeedItem;
    cbffile: TdxImageEdit;
    edemail: TdxEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSaiClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BGerClick(Sender: TObject);
    procedure BEnvClick(Sender: TObject);
    procedure BVisClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    function  RETORNA_EXTENSAO: string;
  public
    { Public declarations }
  end;

var
  frmarquivo_geral: Tfrmarquivo_geral;

implementation

uses uPrincipal, pemail, prelatorio_geral;

{$R *.dfm}

procedure Tfrmarquivo_geral.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
  cblfile.Text  := 'C:\Sheild\Documentos\';
end;

procedure Tfrmarquivo_geral.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Screen.Cursor := crDefault;
end;

procedure Tfrmarquivo_geral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmarquivo_geral.FormDestroy(Sender: TObject);
begin
  frmarquivo_geral := Nil;
end;

procedure Tfrmarquivo_geral.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_ESCAPE: BSai.Click;
       VK_RETURN: if (not (activeControl is TdxDBGrid) and
                      not (activeControl is TdxMemo)   and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       40       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       38       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, false, true);
  end;
end;

procedure Tfrmarquivo_geral.BSaiClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmarquivo_geral.BGerClick(Sender: TObject);
var
  WTag: Word;
begin
  if cblfile.Text = '' then
  raise exception.Create('Local de Gravação não Informado !');

  if not Assigned(frmrelatorio_geral) then
  Abort;

  if cbffile.Text  = 'PDF - CATALOGO' then
  WTag := 2 else
  if cbffile.Text  = 'XLS - PLANILHA EXCEL' then
  WTag := 3 else
  if cbffile.Text  = 'DOC - DOCUMENTO WORD' then
  WTag := 4 else
  WTag := 0;

  frmrelatorio_geral.ENVIA_RELATORIO(WTag);

  BEnv.Enabled := true;
  BVis.Enabled := true;
end;

procedure Tfrmarquivo_geral.BEnvClick(Sender: TObject);
begin
  if not fileexists(cblfile.Text+'\'+edfile.Text+RETORNA_EXTENSAO) then
     raise exception.Create('Arquivo não Gerado !');

  frmemail := TFrmemail.Create(self);
  try
    frmemail.cbemail.Text  := edemail.Text;
    frmemail.edtitulo.Text := RECParametros.Fantasia+' - '+edfile.Text;
    frmemail.Memo1.Lines.Add('Segue em anexo...') ;

    frmemail.cbarqs.Items.Add(cblfile.Text+'\'+edfile.Text+RETORNA_EXTENSAO);
    frmemail.ShowModal;
  finally
    freeAndNil(frmemail);
  end;
end;

function Tfrmarquivo_geral.RETORNA_EXTENSAO: string;
var
  ext: string;
begin
  if cbffile.Text      = 'TXT - FORMATO TEXTO' then
     ext := '.TXT'
  else if cbffile.Text = 'XLS - PLANILHA EXCEL' then
     ext := '.XLS'
  else if cbffile.Text = 'DOC - DOCUMENTO WORD' then
     ext := '.DOC'
  else if cbffile.Text = 'PDF - CATALOGO' then
     ext := '.PDF'
  else if cbffile.Text = 'ZIP - ZIPADO' then
     ext := '.ZIP';
  result := ext;
end;

procedure Tfrmarquivo_geral.BVisClick(Sender: TObject);
begin
  if not fileexists(PChar(cblfile.Text+'\'+edfile.Text+'.'+copy(cbffile.Text,1,3))) then
     raise exception.Create('Arquivo não Encontrado !');

  if copy(cbffile.Text,1,3) = 'TXT' then
     ShellExecute (handle, 'open', 'notepad.exe', PChar(cblfile.Text+'\'+edfile.Text+'.TXT'), nil, sw_shownormal)
  else if copy(cbffile.Text,1,3) = 'XLS' then
     ShellExecute (Handle, 'open', PChar(cblfile.Text+'\'+edfile.Text+'.XLS')  , nil, nil, sw_shownormal)
  else if copy(cbffile.Text,1,3) = 'DOC' then
     ShellExecute (Handle, 'open', PChar(cblfile.Text+'\'+edfile.Text+'.DOC')  , nil, nil, sw_shownormal)
  else if copy(cbffile.Text,1,3) = 'PDF' then
     ShellExecute (Handle, 'open', PChar(cblfile.Text+'\'+edfile.Text+'.PDF')  , nil, nil, sw_shownormal);
end;

end.
