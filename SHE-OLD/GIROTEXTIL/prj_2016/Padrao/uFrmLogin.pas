unit uFrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,  DB, dxCntner, dxEditor, dxEdLib,
  IBCustomDataSet, IBQuery, IBDatabase, dxExEdtr;

type
  TFrmLogin = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    eddlog: TdxEdit;
    ednome: TdxEdit;
    edsenha: TdxEdit;
    btnLogin: TBitBtn;
    btnSair: TBitBtn;
    pnlTitulo: TPanel;
    Image2: TImage;
    cad_usu: TIBDataSet;
    IBTra: TIBTransaction;
    cbPES: TdxImageEdit;
    Label4: TLabel;
    consulta: TIBQuery;
    Label5: TLabel;
    cad_usuID: TIntegerField;
    cad_usuUSU_DCAD: TDateField;
    cad_usuUSU_DULT: TDateTimeField;
    cad_usuUSU_CUSU: TIntegerField;
    cad_usuUSU_DUSU: TIBStringField;
    cad_usuUSU_NOME: TIBStringField;
    cad_usuUSU_CDEP: TIntegerField;
    cad_usuUSU_DIAS: TSmallintField;
    cad_usuUSU_PASS: TIBStringField;
    cad_usuUSU_ADM: TIBStringField;
    cad_usuUSU_STA: TIBStringField;
    cad_usuUSU_PPRI: TIBStringField;
    cad_usuUSU_PSEC: TIBStringField;
    cad_usuUSU_MENU: TIBStringField;
    cad_usuUSU_TUSU: TSmallintField;
    cad_usuUSU_STAV: TIBStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure eddlogValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edsenhaValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    function verificasenha: boolean;
  public
    { Public declarations }
    editado: boolean;
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses psenha;

{$R *.dfm}

function TFrmLogin.verificasenha: boolean;
var
  bRet: boolean;
begin
  bRet := true;
  if (edsenha.Text <> cad_usuUSU_PASS.AsString) or (edsenha.Text = '') then
  begin
    edsenha.Text := '';
    edsenha.SetFocus;

    MessageBox(handle,PChar('Por favor, verifique seu usuário e senha.'   +#13+
                           'Atenção com as teclas "Caps Lock" e "Shift",pois o'+#13+
                           'SISTEMA diferencia letras maiúsculas e minúsculas'),'Aviso do Sistema',MB_ICONERROR+MB_OK);
    abort;
    bRet := false;
  end;
  result := bRet;
end;

procedure TFrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    try
        case key of
            VK_return : selectNext (activecontrol, true, true);
            VK_UP     : selectNext (activecontrol, False, true);
            VK_Escape : btnSair.Click;  // Fecha Tela
        end;
    except
        ;
    end;
end;

procedure TFrmLogin.btnSairClick(Sender: TObject);
begin
  if tag = 0 then
     Application.Terminate
  else if tag = 1 then
  begin
    if (verificasenha) then
       close
    else
       abort;
  end
  else if tag = 2 then
    close;
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  if not IBTRA.InTransaction then
  IBTra.StartTransaction;
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT PAR_FANT FROM PAR_SIS');
    Open;

    while not eof do
    begin
      cbPES.Values.Add(fields[0].AsString);
      cbPES.Descriptions.Add(fields[0].AsString);
      next;
    end;
  end;
  editado := false;
end;

procedure TFrmLogin.eddlogValidate(Sender: TObject; var ErrorText: String;
  var Accept: Boolean);
begin
  with cad_usu do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_USU');
    SelectSQL.Add('WHERE  USU_DUSU = '''+eddlog.Text+'''');
    Open;
  end;

  if cad_usu.Fields[0].IsNull then
  begin
    eddlog.SetFocus;
    MessageBox(handle,PChar('Login não cadastrado !'),'Aviso do Sistema',MB_ICONERROR+MB_OK);
    abort;
  end;
  if cad_usuUSU_STA.AsString = '1' then
  begin
    eddlog.SetFocus;
    MessageBox(handle,PChar('Login cancelado !'),'Aviso do Sistema',MB_ICONERROR+MB_OK);
    abort;
  end;

  if cad_usuUSU_STAV.AsString <> 'A' then
  begin
    eddlog.SetFocus;
    if cad_usuUSU_STAV.AsString = 'I' then
       MessageBox(handle,PChar('Login inativo !'),'Aviso do Sistema',MB_ICONERROR+MB_OK)
    else if cad_usuUSU_STAV.AsString = 'S' then
       MessageBox(handle,PChar('Login suspenso !'),'Aviso do Sistema',MB_ICONERROR+MB_OK);
    abort;
  end;
  ednome.Text := cad_usuUSU_NOME.AsString;

  if cad_usuUSU_CDEP.AsInteger <> 99 then
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PAR_FANT FROM PAR_SIS');
      SQL.Add('WHERE  ID = '''+cad_usuUSU_CDEP.AsString+'''');
      Open;
    end;
    cbPES.Text    := consulta.Fields[0].AsString;
    cbPES.Enabled := false;
    edsenha.SetFocus;
  end;

  if cad_usuUSU_PASS.AsString = '' then
  begin
    frmsenha := TFrmsenha.Create(self);
    try
      frmsenha.dusu := eddlog.Text;
      frmsenha.ShowModal;
    finally
      if frmsenha.editado then
      begin
        cad_usu.Edit;
        cad_usuUSU_PASS.Value := frmsenha.edpassN.Text;
        cad_usu.Post;

        ibTRA.Commit;
        ibTRA.StartTransaction;
        with cad_usu do
        begin
          Close;
          SelectSQL.Clear;
          SelectSQL.Add('SELECT * FROM CAD_USU');
          SelectSQL.Add('WHERE  USU_DUSU = '''+eddlog.Text+'''');
          Open;
        end;
      end;
      freeAndNil(frmsenha);
      frmsenha.Free;
    end;
  end;
end;

procedure TFrmLogin.edsenhaValidate(Sender: TObject; var ErrorText: String;
  var Accept: Boolean);
begin
  if verificasenha then
  begin
    editado := true;
    close;
  end;
end;

procedure TFrmLogin.BitBtn1Click(Sender: TObject);
begin
  if eddlog.Text = '' then
  begin
    MessageBox(handle,PChar('Usuário não Digitado !'),'Aviso do Sistema',MB_ICONERROR+MB_OK);
    abort;
  end;

  if verificasenha then
  begin
    editado := true;
    close;
  end;
end;

procedure TFrmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (cbpes.Text = '') and (eddlog.Text <> '') then
  begin
    MessageBox(handle,PChar('Empresa não Informada !'),'Aviso do Sistema',MB_ICONERROR+MB_OK);
    abort;
  end;

  if edsenha.Text = '' then
  cad_usu.Close;
end;

procedure TFrmLogin.FormDestroy(Sender: TObject);
begin
  frmlogin := nil;
  freeandnil(frmlogin);
end;

end.

