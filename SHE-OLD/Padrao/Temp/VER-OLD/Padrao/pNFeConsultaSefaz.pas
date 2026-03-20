unit pNFeConsultaSefaz;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxEditor, dxExEdtr, dxEdLib, ExtCtrls, StdCtrls,
  ComCtrls, StrUtils, math,
  StrInt, StrIntImp, XMLDom, XMLIntf, MSXMLDom, XMLDoc, XMLXForm,
  cxGraphics, cxControls, dxStatusBar, IBSQL, IBDatabase;

type
  TFrmNFeConsultaSefaz = class(TForm)
    PNLParametros: TPanel;
    GBConsulta: TGroupBox;
    EMConsulta: TdxMemo;
    SBRodape: TdxStatusBar;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    SAchNFe: TShape;
    SBchNFe: TShape;
    LAchNFe: TLabel;
    SAprotNFe: TShape;
    SBprotNFe: TShape;
    SAcStat: TShape;
    SBcStat: TShape;
    SBdStat: TShape;
    LAprotNFe: TLabel;
    LAcStat: TLabel;
    EDchNFe: TdxEdit;
    EDprotNFe: TdxEdit;
    EDcStat: TdxEdit;
    IEdStat: TdxImageEdit;
    BTNSEFAZ: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IEdStatChange(Sender: TObject);
    procedure BTNSEFAZClick(Sender: TObject);
  private
    { Private declarations }
    vCaption,
    vchNFe: String;
    ANFeConsulta: ShortString;
  public
    { Public declarations }
    Constructor Create(AOwner: TComponent;Const ACaption: String; AchNFe: String); reintroduce; overload;
  end;

var
  FrmNFeConsultaSefaz: TFrmNFeConsultaSefaz;

implementation

{$R *.dfm}

Constructor TFrmNFeConsultaSefaz.Create(AOwner: TComponent;Const ACaption: String; AchNFe: String);
begin
  vCaption := ACaption;
  vchNFe   := AchNFe;

  inherited Create(AOwner);
end;

procedure TFrmNFeConsultaSefaz.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;

  Self.Caption := vCaption;
  EDchNFe.Text := vchNFe;

  try
    oOTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   ID,DESCRICAO FROM TAB_NFE_RES WHERE ID > 0');
      SQL.Add('ORDER BY ID');
      ExecQuery;
      while not Eof do
      begin
        IEdStat.Values.Add(Current.Vars[0].AsString);
        IEdStat.Descriptions.Add(Current.Vars[1].AsString);
        Next;
      end;
    end;
  finally
    oCTransact(TConsulta);
  end;
end;

procedure TFrmNFeConsultaSefaz.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  
  if Length(EDchNFe.Text) < 44 then
  begin
    oErro(Handle,'ACESSO NEGADO !'+#13+
                 'Chave de acesso não informada ou incorreta.');
    PostMessage(Handle, WM_CLOSE, 0, 0);
  end;
end;

procedure TFrmNFeConsultaSefaz.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;

  if Length(EDchNFe.Text) = 44 then
     if (Pos('REJ',UPPERCASE(EMConsulta.Text)) = 0) and (Pos('FAL',UPPERCASE(EMConsulta.Text)) = 0) then
     begin
       EMConsulta.Text := TRIM(NFeConsulta(EDchNFe.Text));
       IEdStat.Text    := LeftStr(EMConsulta.Text,3);
       EDprotNFe.Text  := Trim(RightStr(EMConsulta.Text,Length(EMConsulta.Text) - Pos('#',EMConsulta.Text)));
     end else
     if Pos('DUP',UPPERCASE(EMConsulta.Text)) > 0 then
        BTNSEFAZ.Click;
end;

procedure TFrmNFeConsultaSefaz.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFrmNFeConsultaSefaz.FormDestroy(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  frmNFeConsultaSefaz := Nil;
end;

procedure TFrmNFeConsultaSefaz.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_ESCAPE: Close;
    VK_RETURN: SelectNext (ActiveControl, true , true);
    40       : SelectNext (ActiveControl, true , true);
    38       : SelectNext (ActiveControl, false, true);
  end;
end;

procedure TFrmNFeConsultaSefaz.IEdStatChange(Sender: TObject);
begin
  EDcStat.Text := IEdStat.Text;
end;

procedure TFrmNFeConsultaSefaz.BTNSEFAZClick(Sender: TObject);
var
  chNFe,F_XML: String;

  XMLDoc: TXMLDocument;
  NodeMain,NodeItem,NodeSubItem: IXMLNode;
begin
  EMConsulta.Lines.Add('');

  if Pos('[chNFe:',EMConsulta.Text) > 0 then
     chNFe := Copy(EMConsulta.Text,Pos('[chNFe:',EMConsulta.Text) + 7,44) else
     chNFe := EDchNFe.Text;

  EDchNFe.Text   := chNFe;
  ANFeConsulta   := NFeConsulta(EDchNFe.Text);
  IEdStat.Text   := LeftStr(ANFeConsulta,3);
  EDprotNFe.Text := Trim(RightStr(ANFeConsulta,Length(ANFeConsulta) - Pos('#',ANFeConsulta)));

         { ricardo - mais tempo aqui}
  F_XML := ArquivoDistribuicaoNFe(chNFe);
  if not FileExists(F_XML) then
  begin
    EMConsulta.Lines.Add(F_XML);
    Application.ProcessMessages;

    Abort;
  end;

  // Cria a variável baseada no TXMLDocument
  XMLDOC := TXMLDocument.Create(self);

  // Le conteúdo do arquivo XML informado
  XMLDOC.LoadFromFile(F_XML);
  XMLDOC.Active;

  // Aqui eu peço para encontrar a primeira ocorrencia da Tag <det>>
  NodeMain := XMLDOC.DocumentElement.ChildNodes.FindNode('NFe');
  NodeMain := NodeMain.ChildNodes.FindNode('infNFe');

  NodeItem := NodeMain.ChildNodes['dest'];
  NodeItem.ChildNodes.First;

  EMConsulta.Lines.Add('Destinatário: ' + Trim(NodeItem.ChildNodes['xNome'].Text));
  EMConsulta.Lines.Add('CNPJ: '         + Trim(NodeItem.ChildNodes['CNPJ' ].Text));
  EMConsulta.Lines.Add('');

  NodeItem := NodeMain.ChildNodes['total'];
  NodeItem.ChildNodes.First;

  NodeSubItem := NodeItem.ChildNodes['ICMSTot'];
  NodeSubItem.ChildNodes.First;

  EMConsulta.Lines.Add(FormatFloat('Valor Total: R$ ,##,0.00',oTextToValor(NodeSubItem.ChildNodes['vNF'].Text)));
  EMConsulta.Lines.Add('');

  NodeItem := NodeMain.ChildNodes['infAdic'];
  NodeItem.ChildNodes.First;
  //EMConsulta.Lines.Add(Trim(NodeItem.ChildNodes['infCpl'].Text));

  NodeSubItem := NodeItem.ChildNodes['obsCont'];
  NodeSubItem.ChildNodes.First;

  EMConsulta.Lines.Add(Trim(NodeSubItem.ChildNodes['xTexto'].Text));
  NodeSubItem := NodeSubItem.NextSibling;
  if NodeSubItem <> Nil then
  EMConsulta.Lines.Add(Trim(NodeSubItem.ChildNodes['xTexto'].Text));

  Application.ProcessMessages;
end;

end.
