unit pLogin;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc, math, StrUtils,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, dxDBELib, dxExEdtr, rxSpeedbar,
  IBSQL, cxGraphics, cxControls, dxStatusBar, dxPageControl, dxEditor,
  RXCtrls, Registry, IBTable;

type
  TFrmLogin = class(TForm)
    PNLPrincipal: TPanel;
    PNLLogin: TPanel;
    LAUsuario: TLabel;
    LANome: TLabel;
    LASenha: TLabel;
    EDUsuario: TdxEdit;
    EDNome: TdxEdit;
    EDSenha: TdxEdit;

    PNLTitulo: TPanel;
    IPrincipal: TImage;
    TCadastro: TIBTransaction;
    IEEmpresa: TdxImageEdit;
    LAEmpresa: TLabel;
    QConsulta: TIBQuery;
    LATitulo: TLabel;
    Usuarios: TIBQuery;
    SBRodape: TdxStatusBar;
    TTempo: TTimer;
    UsuariosID: TSmallintField;
    UsuariosIDEP: TSmallintField;
    UsuariosDEEP: TIBStringField;
    UsuariosIDEP_LOG: TSmallintField;
    UsuariosIDEP_UEP: TSmallintField;
    UsuariosIDEP_UEP_NO: TIBStringField;
    UsuariosIDEP_UDT: TDateTimeField;
    UsuariosIDCA: TSmallintField;
    UsuariosDTCA: TDateTimeField;
    UsuariosIDED: TSmallintField;
    UsuariosDTED: TDateTimeField;
    UsuariosIDST: TSmallintField;
    UsuariosDTST: TDateTimeField;
    UsuariosCDST: TSmallintField;
    UsuariosREST: TIBStringField;
    UsuariosDEST: TIBStringField;
    UsuariosLOGIN: TIBStringField;
    UsuariosNOME: TIBStringField;
    UsuariosGRUPO: TIBStringField;
    UsuariosCOMPRADOR: TSmallintField;
    UsuariosCAIXA: TSmallintField;
    UsuariosDEP_ID: TSmallintField;
    UsuariosDEP_NO: TIBStringField;
    UsuariosCGO_ID: TSmallintField;
    UsuariosCGO_NO: TIBStringField;
    UsuariosPED_TOTALIZADOR: TSmallintField;
    UsuariosPED_RELATORIO: TSmallintField;
    UsuariosPED_GRID_FOCUSED: TSmallintField;
    UsuariosPED_DESCONTO: TSmallintField;
    UsuariosPED_DESCONTO_LIMITE: TSmallintField;
    UsuariosFIN_LIMITE_CREDITO: TSmallintField;
    UsuariosFIN_LIMITE_CREDITO_VMAX: TIBBCDField;
    UsuariosFIN_API_BOLETO: TSmallintField;
    UsuariosFIN_API_BANCO: TIBStringField;
    UsuariosFIN_API_AMBIENTE: TIBStringField;
    UsuariosEMP_API_B2B: TSmallintField;
    UsuariosEMP_API_B2C: TSmallintField;
    UsuariosEMP_API_MKP: TSmallintField;
    UsuariosEMAIL: TIBStringField;
    UsuariosEMAIL_NOME: TIBStringField;
    UsuariosEMAIL_PORTA: TIBStringField;
    UsuariosEMAIL_SMTP: TIBStringField;
    UsuariosEMAIL_SSL: TIBStringField;
    UsuariosEMAIL_TOKEN: TIBStringField;
    UsuariosNUDDD: TIBStringField;
    UsuariosNUTEL: TIBStringField;
    UsuariosNUDDDCEL: TIBStringField;
    UsuariosNUCEL: TIBStringField;
    UsuariosTOKEN: TIBStringField;
    UsuariosIP: TIBStringField;
    UsuariosHOST: TIBStringField;
    UsuariosIDEP_UEP_D: TIBStringField;
    RSBLogout: TRxSpeedButton;
    RSBLogin: TRxSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EDUsuarioValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure UsuariosAfterOpen(DataSet: TDataSet);
    procedure EDSenhaValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure TTempoTimer(Sender: TObject);
    procedure EDSenhaChange(Sender: TObject);
    procedure RSBLoginClick(Sender: TObject);
    procedure RSBLogoutClick(Sender: TObject);
    procedure UsuariosBeforeOpen(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure QConsultaAfterClose(DataSet: TDataSet);
  private
    { Private declarations }
    procedure _PSQUsuarios;
  public
    { Public declarations }
    RECLogin: TRECUsuarios;
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
  SBRodape.Panels[0].Text := oRETDataExtenso(Date)+', '+oStrZero(oRETDia(Date),2)+' de '+oRETMesExtenso(Date)+' de '+oStrZero(oRETAno(Date),4)+'.';

  Initialize(RECLogin);
  FillChar(RECLogin,SizeOf(RECLogin),0);

  oOTransact(TCadastro);
  with QConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   ID || '' - '' || FANTASIA FROM TAB_PAR_SIS');
    SQL.Add('ORDER BY ID');
    Open;
    while not eof do
    begin
      IEEmpresa.Values.Add(fields[0].AsString);
      IEEmpresa.Descriptions.Add(fields[0].AsString);
      Next;
    end;
  end;
end;

procedure TFrmLogin.FormActivate(Sender: TObject);
begin                                                       
  OnActivate := Nil;
  Screen.Cursor := crDefault;

  oRegister_Import_Usuario(RECLogin);
  EDUsuario.Text := RECLogin.Login;

  _PSQUsuarios;
end;

procedure TFrmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
          Type RECPSQSenha = record
               BRet: Boolean;
               SRet: String;
          End;
          function _PSQSenha: RECPSQSenha;
          begin
            result.BRet := False;
            if EDSenha.Text = '' then
            result.SRet := 'Senha não Informada !' else
            if Length(EDSenha.Text) > 15 then
            result.SRet := 'Senha Incorreta !'+#13+#13+
                           'Senha ultrapassa o limite máximo de caracteres permitido !'+#13+
                           '15 Caracteres (letras, números ou ambos).' else
            if EDSenha.Text <> UsuariosTOKEN.AsString then
            result.SRet := 'Senha Incorreta !'+#13+#13+
                           'Atenção às teclas "Caps Lock" e "Shift".'+#13+
                           'SISTEMA diferencia letras maiúsculas de minúsculas.' else
            result.Bret := True;
          end;
begin
  if RECLogin.Selected then
  begin
    if oEmpty(EDUsuario.Text) then
       oException(EDUsuario,'Usuário não Informado !');

    if oEmpty(IEEmpresa.Text) then
       oException(IEEmpresa,'Empresa não Informada !');

    if oEmpty(EDSenha.Text) then
       oException(EDSenha,'Senha não Informada !');

    if oEmpty(UsuariosLogin.AsString) then
       oException(EDUsuario,'Usuário não Encontrado !');

    if UsuariosDEST.AsString <> 'ATIVO' then
       oException(EDUsuario,'Login não Autorizado !'+#13+
                            'Usuário ' + UsuariosDEST.AsString + ' !');

    if not _PSQSenha.BRet then
    begin
      EDSenha.Text := '';
      oException(EDSenha,PChar(_PSQSenha.SRet));
    end;  
  end;

  RECLogin.Id    := IFThen(RECLogin.Selected,UsuariosId.AsString             ,'');
  RECLogin.IDEP  := IFThen(RECLogin.Selected,Trim(Copy(IEEmpresa.Text,01,02)),'');
  RECLogin.DEEP  := IFThen(RECLogin.Selected,Trim(Copy(IEEmpresa.Text,05,60)),'');
  RECLogin.Login := IFThen(RECLogin.Selected,UsuariosLogin.AsString          ,'');
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Screen.Cursor := crAppStart;

  try oFTransact(TCadastro);
  finally
  Action := caFree;
  end;
end;

procedure TFrmLogin.FormDestroy(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  FrmLogin      := Nil;

  Finalize(RECLogin);
  FillChar(RECLogin,SizeOf(RECLogin),0);
end;

procedure TFrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: RSBLogout.Click;
       vk_return: if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo)) then
                  SelectNext (ActiveControl, True, True);
       40       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext (ActiveControl, True, True);
       38       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext(ActiveControl, False, True);
  end;
end;

procedure TFrmLogin.RSBLoginClick(Sender: TObject);
begin
  if not oEmpty(EDSenha.Text) then
  begin
    RECLogin.Selected := True;
    Close;
  end;
end;

procedure TFrmLogin.RSBLogoutClick(Sender: TObject);
begin
  RECLogin.Selected := False;
  Close;
end;

procedure TFrmLogin.UsuariosAfterOpen(DataSet: TDataSet);
begin
  Screen.Cursor  := crDefault;
  TTempo.Enabled := True;

  EDNome.Text := UsuariosNome.AsString;

  IEEmpresa.Enabled := (UsuariosIDEP_LOG.AsString = '99');
  IEEmpresa.Text    :=  UsuariosIDEP_UEP_D.AsString;

  EDSenha.MaxLength := Length(UsuariosTOKEN.AsString);
  EDSenha.Enabled   := True;

  if oEmpty(UsuariosNome.AsString) then
  EDUsuario.SetFocus else
  EDSenha.SetFocus
end;

procedure TFrmLogin.UsuariosBeforeOpen(DataSet: TDataSet);
begin
  Screen.Cursor  := crAppStart;
  TTempo.Enabled := False;
end;

procedure TFrmLogin.EDUsuarioValidate(Sender: TObject; var ErrorText: String;
  var Accept: Boolean);
begin
  _PSQUsuarios;
end;

procedure TFrmLogin.EDSenhaChange(Sender: TObject);
begin
  if Length(EDSenha.Text) = EDSenha.MaxLength then
     EDSenha.ValidateEdit;
end;

procedure TFrmLogin.EDSenhaValidate(Sender: TObject; var ErrorText: String;
  var Accept: Boolean);
begin
  RSBLogin.Click;
end;

procedure TFrmLogin.TTempoTimer(Sender: TObject);
begin
  SBRodape.Panels[1].Text := FormatDateTime('hh:mm:ss',Now);
end;

procedure TFrmLogin._PSQUsuarios;
begin
  with Usuarios do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PK.* FROM VW_TAB_USER AS PK');
    SQL.Add('WHERE    PK.' + IFThen(EDUsuario.Text = 'RICARDO','ID = 0','LOGIN = ''' + EDUsuario.Text + ''''));
    Open;
  end;
end;

procedure TFrmLogin.QConsultaAfterClose(DataSet: TDataSet);
begin
  QConsulta.Tag := 99;
end;

end.

