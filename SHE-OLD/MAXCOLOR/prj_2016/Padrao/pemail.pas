unit pemail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, dxCntner, dxEditor, dxEdLib, comObj, ExtCtrls,
  dxExEdtr, dxPageControl,  dxTL, dxDBCtrl, dxDBGrid, ImgList, DB,
  IBCustomDataSet, IBDatabase, IBQuery, rxSpeedbar;

type                                                                                    
  Tfrmemail = class(TForm)
    BEnv: TBitBtn;
    OpenDialog1: TOpenDialog;
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
    tSHEILD: TIBTransaction;
    consulta: TIBQuery;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmemail: Tfrmemail;

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmemail.BEnvClick(Sender: TObject);
const
  olMailItem = 0;
var
  Outlook: OleVariant;
  vMailItem: variant;
  i: integer;
begin
  if copia_email.State in [dsEdit,dsInsert] then
  begin
    if copia_emailEMAIL.AsString <> '' then
    copia_email.Post else
    copia_email.Cancel;
  end;
  copia_email.First;

  if cbarqs.Text = '' then
     raise exception.Create('Arquivo não Gerado !');

  if (cbemail.Text = '') and (copia_email.Fields[0].IsNull) then
     raise exception.Create('Email não Selecionado !');

  try
    try
      Outlook := GetActiveOleObject('Outlook.Application');
    except
      Outlook := CreateOleObject('Outlook.Application');
    end;
    vMailItem := Outlook.CreateItem(olMailItem);

    if cbemail.Text <> '' then
    vMailItem.Recipients.Add(cbemail.Text); // 1o destinatário

    while not copia_email.Eof do
    begin
      vMailItem.Recipients.Add(copia_emailEMAIL.AsString);
      copia_email.Next;
    end;
    vMailItem.Subject := edtitulo.Text;
    vMailItem.Body    := memo1.Text;

    for i := 0 to cbarqs.Items.Count - 1 do
        vMailItem.Attachments.Add(cbarqs.Items[i]);

    vMailItem.Send;
    VarClear(Outlook);
  finally
  end;
  close;
end;

procedure Tfrmemail.FormActivate(Sender: TObject);
begin
  cbarqs.ItemIndex  := 0;
  edremetente.Text  := frmprincipal.cad_usuUSU_NOME.AsString;

  if cbemail.Text <> '' then
     edtitulo.SetFocus;
end;

procedure Tfrmemail.btnpsqClick(Sender: TObject);
begin
  if opendialog1.Execute then
     cbarqs.Items.Add(opendialog1.FileName);

  cbarqs.ItemIndex := 0;
end;

procedure Tfrmemail.FormCreate(Sender: TObject);
begin
  OpenDialog1.InitialDir := 'C:\Sheild\Documentos\';
  with copia_email do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM COPIA_EMAIL');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM COPIA_EMAIL');
    SelectSQL.Add('ORDER  BY ID');
    Open;
  end;  
end;

procedure Tfrmemail.BSaiClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmemail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmemail.cIClick(Sender: TObject);
begin
  if copia_email.State = dsBrowse then
  copia_email.Append;
end;

procedure Tfrmemail.cAClick(Sender: TObject);
begin
  if (copia_email.State = dsBrowse) and (not copia_email.Fields[0].IsNull) then
  copia_email.Edit;
end;

procedure Tfrmemail.cEClick(Sender: TObject);
begin
  if (copia_email.State = dsBrowse) and (not copia_email.Fields[0].IsNull) then
  copia_email.Delete;
end;

procedure Tfrmemail.cSClick(Sender: TObject);
begin
  if copia_email.State in [dsEdit,dsInsert] then
  copia_email.Post;
end;

procedure Tfrmemail.cCClick(Sender: TObject);
begin
  copia_email.Cancel;
end;

procedure Tfrmemail.copia_emailAfterCancel(DataSet: TDataSet);
begin
  cI.Enabled := true;
  cE.Enabled := true;
  cA.Enabled := true;
  cS.Enabled := false;
  cC.Enabled := false;
end;

procedure Tfrmemail.copia_emailBeforeCancel(DataSet: TDataSet);
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

procedure Tfrmemail.copia_emailAfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
end;

procedure Tfrmemail.copia_emailAfterEdit(DataSet: TDataSet);
begin
  cI.Enabled := false;
  cA.Enabled := false;
  cE.Enabled := false;
  cS.Enabled := true;
  cC.Enabled := true;
end;

procedure Tfrmemail.copia_emailAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  cI.Enabled := true;
  cE.Enabled := true;
  cA.Enabled := true;
  cS.Enabled := false;
  cC.Enabled := false;

  wRec := copia_email.GetBookmark;
  tSHEILD.CommitRetaining;

  copia_email.Close;
  copia_email.Open;
  if (wRec = Nil) or (copia_email.Fields[0].IsNull) then copia_email.last
     else copia_email.GotoBookmark(wRec);
  copia_email.FreeBookmark(wRec);
end;

procedure Tfrmemail.copia_emailNewRecord(DataSet: TDataSet);
begin
  copia_emailID.Value := 0;
end;

procedure Tfrmemail.dbgcopia_emailKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if (dbgcopia_email.FocusedColumn = 0) and (Length(dbgcopia_email.EditingText) > 5) then
                 begin
                   copia_email.Next;
                   if copia_email.Eof then
                      copia_email.Append;
                 end
                 else
                    dbgcopia_email.FocusedColumn := dbgcopia_email.FocusedColumn + 1;
               end;
    VK_INSERT: if copia_email.State = dsBrowse then cI.Click;
    VK_DELETE: if copia_email.State = dsBrowse then cE.Click;
    VK_ESCAPE: if copia_email.State = dsBrowse then {nothing} else cC.Click;
  end;
end;

procedure Tfrmemail.rgPSQClick(Sender: TObject);
begin
  cbCID.Enabled := false;
  cbUF.Enabled  := false;

  if rgPSQ.ItemIndex = 1 then
  cbCID.Enabled := true;

  if rgPSQ.ItemIndex = 1 then
  cbUF.Enabled := true;
end;

procedure Tfrmemail.BPsqClick(Sender: TObject);
begin
  with consulta do
  begin
    SQL.Clear;
    if cbPSQ.Text = 'CLIENTE' then
    begin
    end else
    if cbPSQ.Text = 'VENDEDOR' then
    begin
      SQL.Clear;
      SQL.Add('SELECT   FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE    FUN_CEMP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('AND      FUN_CDEP = ''1''');
      SQL.Add('ORDER BY FUN_MAIL');
      Open;
    end else
    if cbPSQ.Text = 'CLIENTE' then
    begin
    end;
  end;

  if consulta.Fields[0].IsNull then
     abort;

  try
    while not consulta.Eof do
    begin
      copia_email.Append;
      copia_emailEMAIL.Value := consulta.Fields[0].AsString;
      copia_email.Post;
      consulta.Next;
    end;
  finally
    pcMAIN.ActivePageIndex := 1;
  end;    
end;

end.

      
      
      
      

