unit pSenha;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, dxCntner, dxEditor, dxEdLib,
  StdCtrls, ExtCtrls, Buttons, IBDatabase;

type
  TFrmSenha = class(TForm)
    BTNValida: TBitBtn;
    BTNCancela: TBitBtn;
    ILogo: TImage;
    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    LAPassA: TLabel;
    EDPassA: TdxEdit;
    LAPassN: TLabel;
    EDPassN: TdxEdit;
    TEdicao: TIBTransaction;
    QEdicao: TIBQuery;
    LAPassNMsg: TLabel;
    procedure EDPassAValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure BTNValidaClick(Sender: TObject);
    procedure BTNCancelaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EDPassNValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Editado: Boolean;
  end;

var
  FrmSenha: TFrmSenha;

implementation

uses bPrincipal;

{$R *.dfm}

procedure TFrmSenha.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
  oOTransact(TEdicao);
end;

procedure TFrmSenha.FormActivate(Sender: TObject);
begin
  OnActivate   := Nil;
  Screen.Cursor:= crDefault;
end;

procedure TFrmSenha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Screen.Cursor := crAppStart;

  try oFTransact(TEdicao);
  finally Action := caFree;
  end;
end;

procedure TFrmSenha.FormDestroy(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  FrmSenha      := Nil;
end;

procedure TFrmSenha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_return : selectNext (activecontrol, true, true);
       VK_UP     : selectNext (activecontrol, False, true);
       VK_Escape : BTNCancela.Click;  // Fecha Tela
  end;
end;

procedure TFrmSenha.EDPassAValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if oEmpty(EDPassA.Text) then
  oException(EDPassA,'Senha atual não informada !');
  
  try
    oOTransact(TEdicao);
    with QEdicao do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,USU_PASS FROM CAD_USU');
      SQL.Add('WHERE  USU_CUSU = '''+RECUsuarios.Id+'''');
      Open;
      if Fields[1].AsString <> EDPassA.Text then
      oException(EDPassA,'Senha informada difere da senha atual !');

      LAPassN.Enabled    := (not Fields[0].IsNull);
      EDPassN.Enabled    := (not Fields[0].IsNull);
      LAPassNMsg.Visible := (not Fields[0].IsNull);

      EDPassN.SetFocus;
    end;
  finally
    oCTransact(TEdicao);
  end;
end;

procedure TFrmSenha.EDPassNValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BTNValida.Click;
end;

procedure TFrmSenha.BTNValidaClick(Sender: TObject);
begin
  ActiveControl := Nil;

  if oEmpty(EDPassA.Text) then
  oException(EDPassA,'Senha atutal não informada !');

  if oEmpty(EDPassN.Text) then
  oException(EDPassN,'Nova senha não informada !');

  if Length(EDPassN.Text) > 15 then
  oException(EDPassN,'Senha nova maior que 15 caracteres !');

  try
    oOTransact(TEdicao);
    with QEdicao do
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_USU');
      SQL.Add('SET    USU_PASS = '''+EDPassN.Text  +'''');
      SQL.Add('WHERE  USU_CUSU = '''+RECUsuarios.Id+'''');
      ExecSQL;
    end;
    oCTransact(TEdicao);
    bExecUsuarios(RECUsuarios.Id);

    Editado := True;
    Close;
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollbackRetaining);
      Editado := False;

      oException(Nil,'Falha ao tentar alterar senha !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;
end;

procedure TFrmSenha.BTNCancelaClick(Sender: TObject);
begin
  ActiveControl := Nil;
  Editado := False;
  Close;
end;

end.
