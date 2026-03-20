unit pemail;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, dxCntner, dxEditor, dxEdLib, comObj, ExtCtrls,
  dxExEdtr, dxPageControl,  dxTL, dxDBCtrl, dxDBGrid, ImgList, DB,
  IBCustomDataSet, IBDatabase, IBQuery, rxSpeedbar;

type                                                                                    
  TFrmEmail = class(TForm)
    BEnv: TBitBtn;
    ODFiles: TOpenDialog;
    Panel1: TPanel;
    Label5: TLabel;
    edremetente: TdxEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtitulo: TdxEdit;
    pcMAIN: TdxPageControl;
    tsTEXTO: TdxTabSheet;
    tsCC: TdxTabSheet;
    memo1: TdxMemo;
    tsLIST: TdxTabSheet;
    imageOPC3: TImageList;
    dbgcopia_email: TdxDBGrid;
    SpeedBar4: TSpeedBar;
    SpeedbarSection17: TSpeedbarSection;
    SpeedbarSection18: TSpeedbarSection;
    SpeedbarSection19: TSpeedbarSection;
    SpeedbarSection20: TSpeedbarSection;
    cI: TSpeedItem;
    cE: TSpeedItem;
    cS: TSpeedItem;
    cC: TSpeedItem;
    cA: TSpeedItem;
    BSai: TBitBtn;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    cbemail: TdxPickEdit;
    cbarqs: TdxPickEdit;
    dtscopia_email: TDataSource;
    copia_email: TIBDataSet;
    copia_emailID: TIntegerField;
    copia_emailEMAIL: TIBStringField;
    dbgcopia_emailEMAIL: TdxDBGridMaskColumn;
    TSEdicao: TIBTransaction;
    QConsulta: TIBQuery;
    Panel2: TPanel;
    rgFRQ: TRadioGroup;
    rgABC: TRadioGroup;
    BPsq: TBitBtn;
    BDel: TBitBtn;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    cbPSQ: TdxImageEdit;
    Panel4: TPanel;
    rgPSQ: TRadioGroup;
    cbcid: TdxImageEdit;
    cbuf: TdxImageEdit;
    rgSEL: TRadioGroup;
    TCadastro: TIBTransaction;
    QSEdicao: TIBQuery;
    procedure BEnvClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnpsqClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BSaiClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cIClick(Sender: TObject);
    procedure cAClick(Sender: TObject);
    procedure cEClick(Sender: TObject);
    procedure cSClick(Sender: TObject);
    procedure cCClick(Sender: TObject);
    procedure copia_emailAfterCancel(DataSet: TDataSet);
    procedure copia_emailBeforeCancel(DataSet: TDataSet);
    procedure copia_emailAfterDelete(DataSet: TDataSet);
    procedure copia_emailAfterEdit(DataSet: TDataSet);
    procedure copia_emailAfterPost(DataSet: TDataSet);
    procedure copia_emailNewRecord(DataSet: TDataSet);
    procedure dbgcopia_emailKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgPSQClick(Sender: TObject);
    procedure BPsqClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    ATextoEmail: String;
  public
    { Public declarations }
    Constructor Create(AOwner: TComponent;
                 const ATexto: String = ''); reintroduce; overload;
  end;

var
  FrmEmail: TFrmEmail;

implementation

uses uPrincipal;

{$R *.dfm}

Constructor TFrmEmail.Create(AOwner: TComponent;
                        const ATexto: String = '');
begin
  ATextoEmail := ATexto;
  inherited Create(AOwner);
end;

procedure TFrmEmail.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;

  oOTransact(TCadastro);
  oOTransact(TSEdicao);
  with QSEdicao do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM COPIA_EMAIL');
    ExecSQL;
  end;
  oRTransact(TSEdicao);
  with copia_email do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM COPIA_EMAIL');
    SelectSQL.Add('ORDER  BY ID');
    Open;
  end;  
end;

procedure TFrmEmail.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Screen.Cursor := crDefault;

  cbarqs.ItemIndex  := 0;
  edremetente.Text  := RECUSuarios.Login;

  if cbemail.Text <> '' then
  edtitulo.SetFocus;
end;

procedure TFrmEmail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Screen.Cursor := crAppStart;
end;

procedure TFrmEmail.FormDestroy(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  FrmEmail := Nil;
end;

procedure TFrmEmail.BEnvClick(Sender: TObject);
var
  Ok: Boolean;
  Err : string;
  Html: string;
begin
  Html :=

  '<html><body style="font-family:Segoe UI, Arial; font-size:12pt">' +

  '<p>Prezado cliente,</p>'   +

  '<p>' + Memo1.Text + '</p>' +

  '<p><b>Atenciosamente,</b><br/>' + RECUsuarios.Login + '</p>' +

  '</body></html>';

  Ok := oSendEmailOutlook365(

  cbemail.Text, {'ricardo@sheild.com.br; suporte@sheild.app.br',  Destinatário }
  '', { CC  }
  '', { BCC }

  RECParametros.EP_NO + ' - Nota Fiscal', { Assunto }

  Html, { Corpo da Mensagem }

  [cbarqs.Items[0], cbarqs.Items[1]], { Anexos }

  False   , { False = enviar; True = abrir na tela }
  mpNormal, { Prioridade }
  '',       { ou 'shared-mailbox@empresa.com' se for enviar em nome de }
  Err
  );

  if not Ok then
    ShowMessage('Falha: ' + Err)
  else
    ShowMessage('E-mail enviado com sucesso.');
end;

procedure TFrmEmail.btnpsqClick(Sender: TObject);
begin
  if ODFiles.Execute then
  cbarqs.Items.Add(ODFiles.FileName);

  cbarqs.ItemIndex := 0;
end;

procedure TFrmEmail.BSaiClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEmail.cIClick(Sender: TObject);
begin
  if copia_email.State = dsBrowse then
  copia_email.Append;
end;

procedure TFrmEmail.cAClick(Sender: TObject);
begin
  if (copia_email.State = dsBrowse) and (not copia_email.Fields[0].IsNull) then
  copia_email.Edit;
end;

procedure TFrmEmail.cEClick(Sender: TObject);
begin
  if (copia_email.State = dsBrowse) and (not copia_email.Fields[0].IsNull) then
  copia_email.Delete;
end;

procedure TFrmEmail.cSClick(Sender: TObject);
begin
  if copia_email.State in [dsEdit,dsInsert] then
  copia_email.Post;
end;

procedure TFrmEmail.cCClick(Sender: TObject);
begin
  copia_email.Cancel;
end;

procedure TFrmEmail.copia_emailAfterCancel(DataSet: TDataSet);
begin
  cI.Enabled := true;
  cE.Enabled := true;
  cA.Enabled := true;
  cS.Enabled := false;
  cC.Enabled := false;
end;

procedure TFrmEmail.copia_emailBeforeCancel(DataSet: TDataSet);
begin
  if copia_email.Fields[0].IsNull then
  begin
    cI.Enabled := true;
    cE.Enabled := true;
    cA.Enabled := true;
    cS.Enabled := false;
    cC.Enabled := false;

    copia_email.Close;
    copia_email.Open;
    ABORT;
  end;
end;

procedure TFrmEmail.copia_emailAfterDelete(DataSet: TDataSet);
begin
  oRTransact(TSEdicao);
end;

procedure TFrmEmail.copia_emailAfterEdit(DataSet: TDataSet);
begin
  cI.Enabled := false;
  cA.Enabled := false;
  cE.Enabled := false;
  cS.Enabled := true;
  cC.Enabled := true;
end;

procedure TFrmEmail.copia_emailAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  cI.Enabled := true;
  cE.Enabled := true;
  cA.Enabled := true;
  cS.Enabled := false;
  cC.Enabled := false;

  wRec := copia_email.GetBookmark;
  oRTransact(TSEdicao);
  if (wRec = Nil) or (copia_email.Fields[0].IsNull) then copia_email.last else
  copia_email.GotoBookmark(wRec);
  copia_email.FreeBookmark(wRec);
end;

procedure TFrmEmail.copia_emailNewRecord(DataSet: TDataSet);
begin
  copia_emailID.Value := 0;
end;

procedure TFrmEmail.dbgcopia_emailKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if (dbgcopia_email.FocusedColumn = 0) and (Length(dbgcopia_email.EditingText) > 5) then
                 begin
                   copia_email.Next;
                   if copia_email.Eof then
                   copia_email.Append;
                 end else
                 dbgcopia_email.FocusedColumn := dbgcopia_email.FocusedColumn + 1;
               end;
    VK_INSERT: if copia_email.State = dsBrowse then cI.Click;
    VK_DELETE: if copia_email.State = dsBrowse then cE.Click;
    VK_ESCAPE: if copia_email.State = dsBrowse then {nothing} else cC.Click;
  end;
end;

procedure TFrmEmail.rgPSQClick(Sender: TObject);
begin
  cbCID.Enabled := false;
  cbUF.Enabled  := false;

  if rgPSQ.ItemIndex = 1 then
  cbCID.Enabled := true;

  if rgPSQ.ItemIndex = 1 then
  cbUF.Enabled := true;
end;

procedure TFrmEmail.BPsqClick(Sender: TObject);
begin
  with QConsulta do
  begin
    SQL.Clear;
    if cbPSQ.Text = 'CLIENTE' then
    begin
    end else
    if cbPSQ.Text = 'VENDEDOR' then
    begin
      SQL.Clear;
      SQL.Add('SELECT   EMAIL FROM CAD_FUN');
      SQL.Add('WHERE    IDEP = '''+RECParametros.EP_ID+'''');
      SQL.Add('ORDER BY EMAIL');
      Open;
    end else
    if cbPSQ.Text = 'CLIENTE' then
    begin
    end;
  end;

  if Qconsulta.Fields[0].IsNull then
  Abort;

  try
    while not QConsulta.Eof do
    begin
      copia_email.Append;
      copia_emailEMAIL.Value := QConsulta.Fields[0].AsString;
      copia_email.Post;
      QConsulta.Next;
    end;
  finally
    pcMAIN.ActivePageIndex := 1;
  end;
end;

end.

      
      
      
      

