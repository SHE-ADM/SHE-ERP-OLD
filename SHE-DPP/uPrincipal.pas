unit uPrincipal;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxEdLib, dxCntner, dxEditor, StdCtrls, ExtCtrls, Menus,
  IBSQL, DB, ADODB, IBDatabase, cxGraphics, cxControls, dxStatusBar,
  ActnList, IBCustomDataSet, IBStoredProc, IBTable;

type
  TFrmPrincipal = class(TForm)
    PNLPrincipal: TPanel;
    GBOrigem: TGroupBox;
    LAVersao: TLabel;
    LAOrigem: TLabel;
    LAODEST: TLabel;
    BTNOFECHA: TButton;
    BTNOABRE: TButton;
    BEOrigem: TdxButtonEdit;
    IEVersao: TdxImageEdit;
    GBDestino: TGroupBox;
    LADestino: TLabel;
    LADDEST: TLabel;
    BTNDABRE: TButton;
    BTNDFECHA: TButton;
    BEDestino: TdxButtonEdit;
    GBOPC: TGroupBox;
    BTNLimpaTabelas: TButton;
    BTNAtivaTriggers: TButton;
    BTNDesativaTriggers: TButton;
    MMPrincipal: TMainMenu;
    MPCadastros: TMenuItem;
    MICAD_CLI: TMenuItem;
    DBOrigem: TIBDatabase;
    TConsulta: TIBTransaction;
    TEdicao: TIBTransaction;
    DBDestino: TIBDatabase;
    DBAccess: TADOConnection;
    TAccess: TADOTable;
    TAccessIdentificao: TIntegerField;
    TAccessPRO_CART: TWideStringField;
    TAccessPRO_PREC: TFloatField;
    TAccessPRO_PPRZ: TFloatField;
    SQLConsulta: TIBSQL;
    SQLPKConsulta: TIBSQL;
    SQLFKConsulta: TIBSQL;
    SQLEdicao: TIBSQL;
    SQLPKEdicao: TIBSQL;
    SQLFKEdicao: TIBSQL;
    SBRodape: TdxStatusBar;
    ACTPrincipal: TActionList;
    ACTAtivaTriggers: TAction;
    ACTDesativaTriggers: TAction;
    ACTLimpaTabelas: TAction;
    ACTLimpaGenerators: TAction;
    BTNLimpaGenerators: TButton;
    ACTCAD_CLI: TAction;
    FOpen: TOpenDialog;
    FOpenCSV: TOpenDialog;
    SPEdicao: TIBStoredProc;
    ACTCAD_REP: TAction;
    MICAD_REP: TMenuItem;
    ACTCAD_FOR: TAction;
    ACTCAD_TRA: TAction;
    MICAD_FOR: TMenuItem;
    MICAD_TRA: TMenuItem;
    MPTabelas: TMenuItem;
    ACTTAB_PAG: TAction;
    MITAB_PAG: TMenuItem;
    TDEdicao: TIBTable;
    ACTTAB_NAT: TAction;
    MITAB_NAT: TMenuItem;
    ACTTAB_COR: TAction;
    MITAB_COR: TMenuItem;
    ACTTAB_PAR: TAction;
    MPParametros: TMenuItem;
    MITAB_PAR: TMenuItem;
    Preos1: TMenuItem;
    Access1: TMenuItem;
    ImportarTabela1: TMenuItem;
    GerarTabela1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBOrigemAfterConnect(Sender: TObject);
    procedure DBOrigemAfterDisconnect(Sender: TObject);
    procedure DBDestinoAfterConnect(Sender: TObject);
    procedure DBDestinoAfterDisconnect(Sender: TObject);
    procedure ACTAtivaTriggersExecute(Sender: TObject);
    procedure ACTDesativaTriggersExecute(Sender: TObject);
    procedure ACTLimpaTabelasExecute(Sender: TObject);
    procedure ACTLimpaGeneratorsExecute(Sender: TObject);
    procedure ACTCAD_CLIExecute(Sender: TObject);
    procedure BTNOABREClick(Sender: TObject);
    procedure BTNOFECHAClick(Sender: TObject);
    procedure BTNDABREClick(Sender: TObject);
    procedure BTNDFECHAClick(Sender: TObject);
    procedure ACTCAD_REPExecute(Sender: TObject);
    procedure ACTCAD_FORExecute(Sender: TObject);
    procedure ACTCAD_TRAExecute(Sender: TObject);
    procedure ACTTAB_PAGExecute(Sender: TObject);
    procedure ACTTAB_NATExecute(Sender: TObject);
    procedure ACTTAB_CORExecute(Sender: TObject);
    procedure ACTTAB_PARExecute(Sender: TObject);
    procedure ImportarTabela1Click(Sender: TObject);
    procedure GerarTabela1Click(Sender: TObject);
  private
    { Private declarations }
    procedure _DesativaTriggers(ATabela: String; ATrigger: String = '');
    procedure _AtivaTriggers(ATabela: String; ATrigger: String = '');
    procedure _AtualizaGenerators(ATabela: String; AGenerator: String = ''; ARestart: Boolean = False);
    procedure _AtutalizaTabelas(ATabela: String);
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  oCDatabase(DBOrigem );
  oCDatabase(DBDestino);
end;

procedure TFrmPrincipal.BTNOABREClick(Sender: TObject);
begin
  if DBOrigem.TestConnected then
     oException(Nil,'Banco de dados de origem já está aberto !');

  if oEmpty(IEVersao.Text) then
     oException(IEVersao,'Versão do banco de dados de origem não seleciondo !');

  DBOrigem.DatabaseName := BEOrigem.Text;     
  if oEmpty(DBOrigem.DatabaseName) then
     oException(BEOrigem,'Banco de dados de origem não selecionado !');

  try
    DBOrigem.Connected := True;
  except
    raise exception.Create('Falha ao tentar abrir o banco de dados de origem.'+#13+
                            FOpen.FileName);
  end;
end;

procedure TFrmPrincipal.BTNOFECHAClick(Sender: TObject);
begin
  if DBOrigem.TestConnected then
  try
    DBOrigem.Connected := False;
    DBOrigem.ForceClose;
  except
    raise exception.Create('Falha ao tentar fechar o banco de dados de origem.'+#13+
                            FOpen.FileName);
  end;
end;

procedure TFrmPrincipal.BTNDABREClick(Sender: TObject);
begin
  if DBDestino.TestConnected then
     oException(Nil,'Banco de dados de destino já está aberto !');

  DBDestino.DatabaseName := BEDestino.Text;
  if oEmpty(DBDestino.DatabaseName) then
     oException(BEDestino,'Banco de dados de destino não selecionado !');

  try
    DBDestino.Connected := True;
  except
    raise exception.Create('Falha ao tentar abrir o banco de dados de destino.'+#13+
                            FOpen.FileName);
  end;
end;

procedure TFrmPrincipal.BTNDFECHAClick(Sender: TObject);
begin
  if DBDestino.TestConnected then
  try
    DBDestino.Connected := False;
    DBDestino.ForceClose;
  except
    raise exception.Create('Falha ao tentar fechar o banco de dados de destino.'+#13+
                            FOpen.FileName);
  end;
end;

procedure TFrmPrincipal.DBOrigemAfterConnect(Sender: TObject);
begin
  IEVersao.Enabled   := False;
  BEOrigem.Enabled   := False;

  BTNOABRE.Enabled   := False;
  BTNOFECHA.Enabled  := True;

  LAODEST.Caption    := '( CONECTADO )';
  LAODEST.Font.Color := clGreen;
  LAODEST.Refresh;

  BTNLimpaTabelas.Enabled := ((Pos('192.168.0.199',DBDestino.DatabaseName) = 0) and (Pos('192.168.0.199',DBOrigem.DatabaseName) = 0));

  Application.ProcessMessages;
end;

procedure TFrmPrincipal.DBOrigemAfterDisconnect(Sender: TObject);
begin
  IEVersao.Enabled   := True;
  BEOrigem.Enabled   := True;
  BEOrigem.Text      := EmptyStr;

  BTNOABRE.Enabled   := True;
  BTNOFECHA.Enabled  := False;

  LAODEST.Caption    := '( DES-CONECTADO )';
  LAODEST.Font.Color := clRed;
  LAODEST.Refresh;
end;

procedure TFrmPrincipal.DBDestinoAfterConnect(Sender: TObject);
begin
  BEDestino.Enabled := False;
  BTNDABRE.Enabled  := False;
  BTNDFECHA.Enabled := True;
  BTNLimpaTabelas.Enabled  := True;

  LADDEST.Caption    := '( CONECTADO )';
  LADDEST.Font.Color := clGreen;
  LADDEST.Refresh;

  BTNLimpaTabelas.Enabled := ((Pos('192.168.0.199',DBDestino.DatabaseName) = 0) and (Pos('192.168.0.199',DBOrigem.DatabaseName) = 0));
end;

procedure TFrmPrincipal.DBDestinoAfterDisconnect(Sender: TObject);
begin
  BEDestino.Enabled := True;
  BEDestino.Text    := EmptyStr;
  BTNDABRE.Enabled  := True;
  BTNDFECHA.Enabled := False;
  BTNLimpaTabelas.Enabled  := False;

  LADDEST.Caption    := '( DES-CONECTADO )';
  LADDEST.Font.Color := clRed;
  LADDEST.Refresh;
end;

procedure TFrmPrincipal.ACTCAD_CLIExecute(Sender: TObject);
var
  i: Word;
begin
  if Pos('192.168.0.199',BEDestino.Text) > 0 then
  oException(Nil,'Não é possível limpeza em banco conectado à rede !');

  if not DBDestino.TestConnected then
  oException(Nil,'Banco de dados de destino não está aberto !');

  if not DBOrigem.TestConnected then
  oException(Nil,'Banco de dados de origem não está aberto !');

  if oYesNo(handle,'Transferir Clientes ?') = mrNo then
  Abort;

  { Ativa trigger temporário }
  Try
    oOTransact(TEdicao);

    _DesativaTriggers('CAD_CLI');
    _AtivaTriggers('CAD_CLI','TA_CAD_CLI');
    _AtivaTriggers('CAD_CLI','TB_CAD_CLI_TMP');
    _AtivaTriggers('CAD_CLI','TB_CAD_CLI_UPD');
    _AtivaTriggers('CAD_CLI','TB_CAD_CLI_CEP');
    _AtivaTriggers('CAD_CLI_CRD');

    _AtualizaGenerators('CAD_CLI'    ,'ID_NO_CAD_CLI'  );
    _AtualizaGenerators('CAD_CLI_CRD','IDG_CAD_CLI_CRD');

    oOTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   PK.* FROM CAD_CLI AS PK');
      SQL.Add('ORDER BY PK.ID');
      ExecQuery;
    end;

    with SQLEdicao do
    begin
      { INSERT ID 0 }
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_CLI WHERE ID = 0');
      ExecQuery;

      if Eof then
      begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO CAD_CLI (ID)');
        SQL.Add('VALUES (0)');
        ExecQuery;
      end;  
   end;

   while not SQLConsulta.Eof do
   begin
     { Transferindo ... }
     SBRodape.Panels[0].Text := 'Transferindo cliente código ...: ' + SQLConsulta.Current.ByName('ID').AsString;
     Application.ProcessMessages;

     SPEdicao.Close;
     SPEdicao.StoredProcName := 'SP_CAD_CLI';
     SPEdicao.Prepare;

     for i := 0 to SPEdicao.ParamCount - 1 do
     SPEdicao.Params[i].Value := Null;

     SPEdicao.ParamByName('ID'  ).Value := SQLConsulta.Current.ByName('ID').Value;
     SPEdicao.ParamByName('IDCD').Value := SQLConsulta.Current.ByName('ID').Value;

     SPEdicao.ParamByName('IDEP').Value := 1;
     SPEdicao.ParamByName('IDCA').Value := 0;
     SPEdicao.ParamByName('NAFA').Value := 0;

     SPEdicao.ParamByName('RAZA').Value := SQLConsulta.Current.ByName('CLI_RAZA').Value;
     SPEdicao.ParamByName('FANT').Value := SQLConsulta.Current.ByName('CLI_FANT').Value;
     SPEdicao.ParamByName('CONT').Value := SQLConsulta.Current.ByName('CLI_CONT').Value;
     SPEdicao.ParamByName('MAIL').Value := SQLConsulta.Current.ByName('CLI_MAIL').Value;
     SPEdicao.ParamByName('DDD' ).Value := SQLConsulta.Current.ByName('CLI_DDD ').Value;
     SPEdicao.ParamByName('TEL1').Value := SQLConsulta.Current.ByName('CLI_TEL1').Value;
     SPEdicao.ParamByName('DD2' ).Value := SQLConsulta.Current.ByName('CLI_DD2 ').Value;
     SPEdicao.ParamByName('TEL2').Value := SQLConsulta.Current.ByName('CLI_TEL2').Value;
     SPEdicao.ParamByName('DD3' ).Value := SQLConsulta.Current.ByName('CLI_DD3 ').Value;
     SPEdicao.ParamByName('TEL3').Value := SQLConsulta.Current.ByName('CLI_TEL3').Value;
     SPEdicao.ParamByName('DD4' ).Value := SQLConsulta.Current.ByName('CLI_DD4 ').Value;
     SPEdicao.ParamByName('DD5' ).Value := SQLConsulta.Current.ByName('CLI_DD5 ').Value;
     SPEdicao.ParamByName('CEL' ).Value := SQLConsulta.Current.ByName('CLI_CEL ').Value;
     SPEdicao.ParamByName('TCE1').Value := SQLConsulta.Current.ByName('CLI_TCE1').Value;
     SPEdicao.ParamByName('DD6' ).Value := SQLConsulta.Current.ByName('CLI_DD6 ').Value;
     SPEdicao.ParamByName('NCEL').Value := SQLConsulta.Current.ByName('CLI_NCEL').Value;
     SPEdicao.ParamByName('TCE2').Value := SQLConsulta.Current.ByName('CLI_TCE2').Value;
     SPEdicao.ParamByName('NEID').Value := SQLConsulta.Current.ByName('CLI_NEID').Value;
     SPEdicao.ParamByName('FCON').Value := SQLConsulta.Current.ByName('CLI_FCON').Value;
     SPEdicao.ParamByName('FMAI').Value := SQLConsulta.Current.ByName('CLI_FMAI').Value;
     SPEdicao.ParamByName('FDDD').Value := SQLConsulta.Current.ByName('CLI_FDDD').Value;
     SPEdicao.ParamByName('FTE1').Value := SQLConsulta.Current.ByName('CLI_FTE1').Value;
     SPEdicao.ParamByName('FDD2').Value := SQLConsulta.Current.ByName('CLI_FDD2').Value;
     SPEdicao.ParamByName('FTE2').Value := SQLConsulta.Current.ByName('CLI_FTE2').Value;
     SPEdicao.ParamByName('FDD3').Value := SQLConsulta.Current.ByName('CLI_FDD3').Value;
     SPEdicao.ParamByName('FTE3').Value := SQLConsulta.Current.ByName('CLI_FTE3').Value;
     SPEdicao.ParamByName('FDD4').Value := SQLConsulta.Current.ByName('CLI_FDD4').Value;
     SPEdicao.ParamByName('FDD5').Value := SQLConsulta.Current.ByName('CLI_FDD5').Value;
     SPEdicao.ParamByName('FCEL').Value := SQLConsulta.Current.ByName('CLI_FCEL').Value;
     SPEdicao.ParamByName('FTC1').Value := SQLConsulta.Current.ByName('CLI_FTC1').Value;
     SPEdicao.ParamByName('FDD6').Value := SQLConsulta.Current.ByName('CLI_FDD6').Value;
     SPEdicao.ParamByName('FNCE').Value := SQLConsulta.Current.ByName('CLI_FNCE').Value;
     SPEdicao.ParamByName('FTC2').Value := SQLConsulta.Current.ByName('CLI_FTC2').Value;
     SPEdicao.ParamByName('FNID').Value := SQLConsulta.Current.ByName('CLI_FNID').Value;
     SPEdicao.ParamByName('CCON').Value := SQLConsulta.Current.ByName('CLI_CCON').Value;
     SPEdicao.ParamByName('CMAI').Value := SQLConsulta.Current.ByName('CLI_CMAI').Value;
     SPEdicao.ParamByName('CDDD').Value := SQLConsulta.Current.ByName('CLI_CDDD').Value;
     SPEdicao.ParamByName('CTE1').Value := SQLConsulta.Current.ByName('CLI_CTE1').Value;
     SPEdicao.ParamByName('CDD2').Value := SQLConsulta.Current.ByName('CLI_CDD2').Value;
     SPEdicao.ParamByName('CTE2').Value := SQLConsulta.Current.ByName('CLI_CTE2').Value;
     SPEdicao.ParamByName('CDD3').Value := SQLConsulta.Current.ByName('CLI_CDD3').Value;
     SPEdicao.ParamByName('CTE3').Value := SQLConsulta.Current.ByName('CLI_CTE3').Value;
     SPEdicao.ParamByName('CDD4').Value := SQLConsulta.Current.ByName('CLI_CDD4').Value;
     SPEdicao.ParamByName('CDD5').Value := SQLConsulta.Current.ByName('CLI_CDD5').Value;
     SPEdicao.ParamByName('CCEL').Value := SQLConsulta.Current.ByName('CLI_CCEL').Value;
     SPEdicao.ParamByName('CTC1').Value := SQLConsulta.Current.ByName('CLI_CTC1').Value;
     SPEdicao.ParamByName('CDD6').Value := SQLConsulta.Current.ByName('CLI_CDD6').Value;
     SPEdicao.ParamByName('CNCE').Value := SQLConsulta.Current.ByName('CLI_CNCE').Value;
     SPEdicao.ParamByName('CTC2').Value := SQLConsulta.Current.ByName('CLI_CTC2').Value;
     SPEdicao.ParamByName('CNID').Value := SQLConsulta.Current.ByName('CLI_CNID').Value;
     SPEdicao.ParamByName('CPF' ).Value := SQLConsulta.Current.ByName('CLI_CPF ').Value;
     SPEdicao.ParamByName('INSC').Value := SQLConsulta.Current.ByName('CLI_INSC').Value;
     SPEdicao.ParamByName('CNPJ').Value := SQLConsulta.Current.ByName('CLI_CNPJ').Value;
     SPEdicao.ParamByName('TLOG').Value := SQLConsulta.Current.ByName('CLI_TLOG').Value;
     SPEdicao.ParamByName('LOGR').Value := SQLConsulta.Current.ByName('CLI_LOGR').Value;
     SPEdicao.ParamByName('CEP' ).Value := SQLConsulta.Current.ByName('CLI_CEP ').Value;
     SPEdicao.ParamByName('NUME').Value := SQLConsulta.Current.ByName('CLI_NUME').Value;
     SPEdicao.ParamByName('COMP').Value := SQLConsulta.Current.ByName('CLI_COMP').Value;
     SPEdicao.ParamByName('BAI' ).Value := SQLConsulta.Current.ByName('CLI_BAI ').Value;
     SPEdicao.ParamByName('CID' ).Value := SQLConsulta.Current.ByName('CLI_CID ').Value;
     SPEdicao.ParamByName('ESTA').Value := SQLConsulta.Current.ByName('CLI_ESTA').Value;
     SPEdicao.ParamByName('TLOC').Value := SQLConsulta.Current.ByName('CLI_TLOC').Value;
     SPEdicao.ParamByName('LOGC').Value := SQLConsulta.Current.ByName('CLI_LOGC').Value;
     SPEdicao.ParamByName('CEPC').Value := SQLConsulta.Current.ByName('CLI_CEPC').Value;
     SPEdicao.ParamByName('NUMC').Value := SQLConsulta.Current.ByName('CLI_NUMC').Value;
     SPEdicao.ParamByName('COMC').Value := SQLConsulta.Current.ByName('CLI_COMC').Value;
     SPEdicao.ParamByName('BAIC').Value := SQLConsulta.Current.ByName('CLI_BAIC').Value;
     SPEdicao.ParamByName('CIDC').Value := SQLConsulta.Current.ByName('CLI_CIDC').Value;
     SPEdicao.ParamByName('ESTC').Value := SQLConsulta.Current.ByName('CLI_ESTC').Value;
     SPEdicao.ParamByName('TLOV').Value := SQLConsulta.Current.ByName('CLI_TLOV').Value;
     SPEdicao.ParamByName('LOGV').Value := SQLConsulta.Current.ByName('CLI_LOGV').Value;
     SPEdicao.ParamByName('CEPV').Value := SQLConsulta.Current.ByName('CLI_CEPV').Value;
     SPEdicao.ParamByName('NUMV').Value := SQLConsulta.Current.ByName('CLI_NUMV').Value;
     SPEdicao.ParamByName('COMV').Value := SQLConsulta.Current.ByName('CLI_COMV').Value;
     SPEdicao.ParamByName('BAIV').Value := SQLConsulta.Current.ByName('CLI_BAIV').Value;
     SPEdicao.ParamByName('CIDV').Value := SQLConsulta.Current.ByName('CLI_CIDV').Value;
     SPEdicao.ParamByName('ESTV').Value := SQLConsulta.Current.ByName('CLI_ESTV').Value;
     SPEdicao.ParamByName('STAV').Value := SQLConsulta.Current.ByName('CLI_STAV').Value;
     SPEdicao.ParamByName('DEGP').Value := EmptyStr;
     SPEdicao.ParamByName('RICM').Value := SQLConsulta.Current.ByName('CLI_RICM').Value;
     SPEdicao.ParamByName('CMUN').Value := SQLConsulta.Current.ByName('CLI_CMUN').Value;
     SPEdicao.ParamByName('DUSU').Value := SQLConsulta.Current.ByName('CLI_DUSU').Value;
     SPEdicao.ParamByName('DFUN').Value := SQLConsulta.Current.ByName('CLI_DFUN').Value;
     SPEdicao.ParamByName('CICM').Value := SQLConsulta.Current.ByName('CLI_CICM').Value;
     SPEdicao.ParamByName('RAMO').Value := SQLConsulta.Current.ByName('CLI_RAMO').Value;
     SPEdicao.ParamByName('OBSE').Value := SQLConsulta.Current.ByName('CLI_OBSE').Value;
     SPEdicao.ParamByName('OBSO').Value := SQLConsulta.Current.ByName('CLI_OBSO').Value;
     SPEdicao.ParamByName('CMUV').Value := SQLConsulta.Current.ByName('CLI_CMUV').Value;
     SPEdicao.ParamByName('CMUC').Value := SQLConsulta.Current.ByName('CLI_CMUC').Value;
     SPEdicao.ParamByName('REVE').Value := SQLConsulta.Current.ByName('CLI_REVE').Value;
     SPEdicao.ParamByName('IMUN').Value := SQLConsulta.Current.ByName('CLI_IMUN').Value;
     SPEdicao.ParamByName('CCM' ).Value := SQLConsulta.Current.ByName('CLI_CCM' ).Value;
     SPEdicao.ParamByName('CVEN').Value := SQLConsulta.Current.ByName('CLI_CVEN').Value;
     SPEdicao.ParamByName('CREP').Value := SQLConsulta.Current.ByName('CLI_CREP').Value;
     SPEdicao.ParamByName('COMI').Value := 0;

     SPEdicao.ParamByName('TIPO'   ).Value := 0;
     SPEdicao.ParamByName('RESERVA').Value := 0;

     SPEdicao.ParamByName('IP'  ).Value := EmptyStr;
     SPEdicao.ParamByName('HOST').Value := EmptyStr;
     SPEdicao.ExecProc;

     SQLConsulta.Next;
    end;
    _AtivaTriggers('CAD_CLI');

    oCTransact(TEdicao);
    oCTransact(TConsulta );
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oCTransact(TConsulta ,ltRollback);
      oException(Nil,'Falha ao tentar atualizar CAD_CLI !' + #13 + #13 +
                      E.Message);
    end;
  end;

  oAviso(handle,'Transferência realizada com sucesso !');
end;

procedure TFrmPrincipal.ACTCAD_REPExecute(Sender: TObject);
var
  i: Word;
begin
  if Pos('192.168.0.199',BEDestino.Text) > 0 then
  oException(Nil,'Não é possível limpeza em banco conectado à rede !');

  if not DBDestino.TestConnected then
  oException(Nil,'Banco de dados de destino não está aberto !');

  if not DBOrigem.TestConnected then
  oException(Nil,'Banco de dados de origem não está aberto !');

  if oYesNo(handle,'Transferir Representantes ?') = mrNo then
  Abort;

  { Ativa trigger temporário }
  Try
    oOTransact(TEdicao);

    _DesativaTriggers('CAD_REP');
    _AtivaTriggers('CAD_REP','TA_CAD_REP');
    _AtivaTriggers('CAD_REP','TB_CAD_REP_TMP');
    _AtivaTriggers('CAD_REP','TB_CAD_REP_UPD');
    _AtivaTriggers('CAD_REP','TB_CAD_REP_CEP');

    _AtualizaGenerators('CAD_REP','ID_NO_CAD_REP');

    oOTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   PK.* FROM CAD_REP AS PK');
      SQL.Add('ORDER BY PK.ID');
      ExecQuery;
    end;

    with SQLEdicao do
    begin
      { INSERT ID 0 }
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_REP WHERE ID = 0');
      ExecQuery;

      if Eof then
      begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO CAD_REP (ID)');
        SQL.Add('VALUES (0)');
        ExecQuery;
      end;  
   end;

   while not SQLConsulta.Eof do
   begin
     { Transferindo ... }
     SBRodape.Panels[0].Text := 'Transferindo representante código ...: ' + SQLConsulta.Current.ByName('ID').AsString;
     Application.ProcessMessages;

     SPEdicao.Close;
     SPEdicao.StoredProcName := 'SP_CAD_REP';
     SPEdicao.Prepare;

     for i := 0 to SPEdicao.ParamCount - 1 do
     SPEdicao.Params[i].Value := Null;

     SPEdicao.ParamByName('ID'  ).Value := SQLConsulta.Current.ByName('ID').Value;
     SPEdicao.ParamByName('IDCR').Value := SQLConsulta.Current.ByName('ID').Value;

     SPEdicao.ParamByName('IDEP').Value := 1;
     SPEdicao.ParamByName('IDCA').Value := 0;
     SPEdicao.ParamByName('NAFA').Value := 0;

     SPEdicao.ParamByName('RAZA').Value := SQLConsulta.Current.ByName('REP_RAZA').Value;
     SPEdicao.ParamByName('FANT').Value := SQLConsulta.Current.ByName('REP_FANT').Value;
     SPEdicao.ParamByName('CONT').Value := SQLConsulta.Current.ByName('REP_CONT').Value;
     SPEdicao.ParamByName('MAIL').Value := SQLConsulta.Current.ByName('REP_MAIL').Value;
     SPEdicao.ParamByName('DDD' ).Value := SQLConsulta.Current.ByName('REP_DDD ').Value;
     SPEdicao.ParamByName('TEL1').Value := SQLConsulta.Current.ByName('REP_TEL1').Value;
     SPEdicao.ParamByName('DD2' ).Value := SQLConsulta.Current.ByName('REP_DD2 ').Value;
     SPEdicao.ParamByName('TEL2').Value := SQLConsulta.Current.ByName('REP_TEL2').Value;
     SPEdicao.ParamByName('DD3' ).Value := SQLConsulta.Current.ByName('REP_DD3 ').Value;
     SPEdicao.ParamByName('TEL3').Value := SQLConsulta.Current.ByName('REP_TEL3').Value;
     SPEdicao.ParamByName('DD4' ).Value := SQLConsulta.Current.ByName('REP_DD4 ').Value;
     SPEdicao.ParamByName('DD5' ).Value := SQLConsulta.Current.ByName('REP_DD5 ').Value;
     SPEdicao.ParamByName('CEL' ).Value := SQLConsulta.Current.ByName('REP_CEL ').Value;
     SPEdicao.ParamByName('TCE1').Value := SQLConsulta.Current.ByName('REP_TCE1').Value;
     SPEdicao.ParamByName('DD6' ).Value := SQLConsulta.Current.ByName('REP_DD6 ').Value;
     SPEdicao.ParamByName('NCEL').Value := SQLConsulta.Current.ByName('REP_NCEL').Value;
     SPEdicao.ParamByName('TCE2').Value := SQLConsulta.Current.ByName('REP_TCE2').Value;
     SPEdicao.ParamByName('NEID').Value := SQLConsulta.Current.ByName('REP_NEID').Value;
     SPEdicao.ParamByName('FCON').Value := SQLConsulta.Current.ByName('REP_FCON').Value;
     SPEdicao.ParamByName('FMAI').Value := SQLConsulta.Current.ByName('REP_FMAI').Value;
     SPEdicao.ParamByName('FDDD').Value := SQLConsulta.Current.ByName('REP_FDDD').Value;
     SPEdicao.ParamByName('FTE1').Value := SQLConsulta.Current.ByName('REP_FTE1').Value;
     SPEdicao.ParamByName('FDD2').Value := SQLConsulta.Current.ByName('REP_FDD2').Value;
     SPEdicao.ParamByName('FTE2').Value := SQLConsulta.Current.ByName('REP_FTE2').Value;
     SPEdicao.ParamByName('FDD3').Value := SQLConsulta.Current.ByName('REP_FDD3').Value;
     SPEdicao.ParamByName('FTE3').Value := SQLConsulta.Current.ByName('REP_FTE3').Value;
     SPEdicao.ParamByName('FDD4').Value := SQLConsulta.Current.ByName('REP_FDD4').Value;
     SPEdicao.ParamByName('FDD5').Value := SQLConsulta.Current.ByName('REP_FDD5').Value;
     SPEdicao.ParamByName('FCEL').Value := SQLConsulta.Current.ByName('REP_FCEL').Value;
     SPEdicao.ParamByName('FTC1').Value := SQLConsulta.Current.ByName('REP_FTC1').Value;
     SPEdicao.ParamByName('FDD6').Value := SQLConsulta.Current.ByName('REP_FDD6').Value;
     SPEdicao.ParamByName('FNCE').Value := SQLConsulta.Current.ByName('REP_FNCE').Value;
     SPEdicao.ParamByName('FTC2').Value := SQLConsulta.Current.ByName('REP_FTC2').Value;
     SPEdicao.ParamByName('FNID').Value := SQLConsulta.Current.ByName('REP_FNID').Value;
     SPEdicao.ParamByName('CCON').Value := SQLConsulta.Current.ByName('REP_CCON').Value;
     SPEdicao.ParamByName('CMAI').Value := SQLConsulta.Current.ByName('REP_CMAI').Value;
     SPEdicao.ParamByName('CDDD').Value := SQLConsulta.Current.ByName('REP_CDDD').Value;
     SPEdicao.ParamByName('CTE1').Value := SQLConsulta.Current.ByName('REP_CTE1').Value;
     SPEdicao.ParamByName('CDD2').Value := SQLConsulta.Current.ByName('REP_CDD2').Value;
     SPEdicao.ParamByName('CTE2').Value := SQLConsulta.Current.ByName('REP_CTE2').Value;
     SPEdicao.ParamByName('CDD3').Value := SQLConsulta.Current.ByName('REP_CDD3').Value;
     SPEdicao.ParamByName('CTE3').Value := SQLConsulta.Current.ByName('REP_CTE3').Value;
     SPEdicao.ParamByName('CDD4').Value := SQLConsulta.Current.ByName('REP_CDD4').Value;
     SPEdicao.ParamByName('CDD5').Value := SQLConsulta.Current.ByName('REP_CDD5').Value;
     SPEdicao.ParamByName('CCEL').Value := SQLConsulta.Current.ByName('REP_CCEL').Value;
     SPEdicao.ParamByName('CTC1').Value := SQLConsulta.Current.ByName('REP_CTC1').Value;
     SPEdicao.ParamByName('CDD6').Value := SQLConsulta.Current.ByName('REP_CDD6').Value;
     SPEdicao.ParamByName('CNCE').Value := SQLConsulta.Current.ByName('REP_CNCE').Value;
     SPEdicao.ParamByName('CTC2').Value := SQLConsulta.Current.ByName('REP_CTC2').Value;
     SPEdicao.ParamByName('CNID').Value := SQLConsulta.Current.ByName('REP_CNID').Value;
     SPEdicao.ParamByName('CPF' ).Value := SQLConsulta.Current.ByName('REP_CPF ').Value;
     SPEdicao.ParamByName('INSC').Value := SQLConsulta.Current.ByName('REP_INSC').Value;
     SPEdicao.ParamByName('CNPJ').Value := SQLConsulta.Current.ByName('REP_CNPJ').Value;
     SPEdicao.ParamByName('TLOG').Value := SQLConsulta.Current.ByName('REP_TLOG').Value;
     SPEdicao.ParamByName('LOGR').Value := SQLConsulta.Current.ByName('REP_LOGR').Value;
     SPEdicao.ParamByName('CEP' ).Value := SQLConsulta.Current.ByName('REP_CEP ').Value;
     SPEdicao.ParamByName('NUME').Value := SQLConsulta.Current.ByName('REP_NUME').Value;
     SPEdicao.ParamByName('COMP').Value := SQLConsulta.Current.ByName('REP_COMP').Value;
     SPEdicao.ParamByName('BAI' ).Value := SQLConsulta.Current.ByName('REP_BAI ').Value;
     SPEdicao.ParamByName('CID' ).Value := SQLConsulta.Current.ByName('REP_CID ').Value;
     SPEdicao.ParamByName('ESTA').Value := SQLConsulta.Current.ByName('REP_ESTA').Value;
     SPEdicao.ParamByName('TLOC').Value := SQLConsulta.Current.ByName('REP_TLOC').Value;
     SPEdicao.ParamByName('LOGC').Value := SQLConsulta.Current.ByName('REP_LOGC').Value;
     SPEdicao.ParamByName('CEPC').Value := SQLConsulta.Current.ByName('REP_CEPC').Value;
     SPEdicao.ParamByName('NUMC').Value := SQLConsulta.Current.ByName('REP_NUMC').Value;
     SPEdicao.ParamByName('COMC').Value := SQLConsulta.Current.ByName('REP_COMC').Value;
     SPEdicao.ParamByName('BAIC').Value := SQLConsulta.Current.ByName('REP_BAIC').Value;
     SPEdicao.ParamByName('CIDC').Value := SQLConsulta.Current.ByName('REP_CIDC').Value;
     SPEdicao.ParamByName('ESTC').Value := SQLConsulta.Current.ByName('REP_ESTC').Value;
     SPEdicao.ParamByName('TLOV').Value := SQLConsulta.Current.ByName('REP_TLOV').Value;
     SPEdicao.ParamByName('LOGV').Value := SQLConsulta.Current.ByName('REP_LOGV').Value;
     SPEdicao.ParamByName('CEPV').Value := SQLConsulta.Current.ByName('REP_CEPV').Value;
     SPEdicao.ParamByName('NUMV').Value := SQLConsulta.Current.ByName('REP_NUMV').Value;
     SPEdicao.ParamByName('COMV').Value := SQLConsulta.Current.ByName('REP_COMV').Value;
     SPEdicao.ParamByName('BAIV').Value := SQLConsulta.Current.ByName('REP_BAIV').Value;
     SPEdicao.ParamByName('CIDV').Value := SQLConsulta.Current.ByName('REP_CIDV').Value;
     SPEdicao.ParamByName('ESTV').Value := SQLConsulta.Current.ByName('REP_ESTV').Value;
     SPEdicao.ParamByName('STAV').Value := SQLConsulta.Current.ByName('REP_STAV').Value;
     SPEdicao.ParamByName('DEGP').Value := EmptyStr;
     SPEdicao.ParamByName('RICM').Value := SQLConsulta.Current.ByName('REP_RICM').Value;
     SPEdicao.ParamByName('CMUN').Value := SQLConsulta.Current.ByName('REP_CMUN').Value;
     SPEdicao.ParamByName('DUSU').Value := EmptyStr;
     SPEdicao.ParamByName('DFUN').Value := SQLConsulta.Current.ByName('REP_DFUN').Value;
     SPEdicao.ParamByName('CICM').Value := SQLConsulta.Current.ByName('REP_CICM').Value;
     SPEdicao.ParamByName('RAMO').Value := SQLConsulta.Current.ByName('REP_RAMO').Value;
     SPEdicao.ParamByName('OBSE').Value := SQLConsulta.Current.ByName('REP_OBSE').Value;
     SPEdicao.ParamByName('OBSO').Value := SQLConsulta.Current.ByName('REP_OBSO').Value;
     SPEdicao.ParamByName('CMUV').Value := SQLConsulta.Current.ByName('REP_CMUV').Value;
     SPEdicao.ParamByName('CMUC').Value := SQLConsulta.Current.ByName('REP_CMUC').Value;
     SPEdicao.ParamByName('REVE').Value := SQLConsulta.Current.ByName('REP_REVE').Value;
     SPEdicao.ParamByName('IMUN').Value := SQLConsulta.Current.ByName('REP_IMUN').Value;
     SPEdicao.ParamByName('CCM' ).Value := SQLConsulta.Current.ByName('REP_CCM' ).Value;
     SPEdicao.ParamByName('CVEN').Value := 1;
     SPEdicao.ParamByName('COMI').Value := SQLConsulta.Current.ByName('REP_COMI').Value;

     SPEdicao.ParamByName('TIPO'   ).Value := 0;
     SPEdicao.ParamByName('RESERVA').Value := 0;

     SPEdicao.ParamByName('IP'  ).Value := EmptyStr;
     SPEdicao.ParamByName('HOST').Value := EmptyStr;
     SPEdicao.ExecProc;

     SQLConsulta.Next;
    end;
    _AtivaTriggers('CAD_REP');

    oCTransact(TEdicao);
    oCTransact(TConsulta );
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oCTransact(TConsulta ,ltRollback);
      oException(Nil,'Falha ao tentar atualizar CAD_REP !' + #13 + #13 +
                      E.Message);
    end;
  end;

  oAviso(handle,'Transferência realizada com sucesso !');
end;

procedure TFrmPrincipal.ACTCAD_FORExecute(Sender: TObject);
var
  i: Word;
begin
  if Pos('192.168.0.199',BEDestino.Text) > 0 then
  oException(Nil,'Não é possível limpeza em banco conectado à rede !');

  if not DBDestino.TestConnected then
  oException(Nil,'Banco de dados de destino não está aberto !');

  if not DBOrigem.TestConnected then
  oException(Nil,'Banco de dados de origem não está aberto !');

  if oYesNo(handle,'Transferir Fornecedores ?') = mrNo then
  Abort;

  Try
    oOTransact(TEdicao);

    _DesativaTriggers('CAD_FOR');
    _AtivaTriggers('CAD_FOR','TA_CAD_FOR');
    _AtivaTriggers('CAD_FOR','TB_CAD_FOR_TMP');
    _AtivaTriggers('CAD_FOR','TB_CAD_FOR_UPD');
    _AtivaTriggers('CAD_FOR','TB_CAD_FOR_CEP');

    _AtualizaGenerators('CAD_FOR','ID_NO_CAD_FOR');

    oOTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   PK.* FROM CAD_FOR AS PK');
      SQL.Add('ORDER BY PK.ID');
      ExecQuery;
    end;

    with SQLEdicao do
    begin
      { INSERT ID 0 }
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_FOR WHERE ID = 0');
      ExecQuery;

      if Eof then
      begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO CAD_FOR (ID)');
        SQL.Add('VALUES (0)');
        ExecQuery;
      end;  
   end;

   while not SQLConsulta.Eof do
   begin
     { Transferindo ... }
     SBRodape.Panels[0].Text := 'Transferindo fornecedor código ...: ' + SQLConsulta.Current.ByName('ID').AsString;
     Application.ProcessMessages;

     SPEdicao.Close;
     SPEdicao.StoredProcName := 'SP_CAD_FOR';
     SPEdicao.Prepare;

     for i := 0 to SPEdicao.ParamCount - 1 do
     SPEdicao.Params[i].Value := Null;

     SPEdicao.ParamByName('ID'  ).Value := SQLConsulta.Current.ByName('ID').Value;
     SPEdicao.ParamByName('IDCF').Value := SQLConsulta.Current.ByName('ID').Value;

     SPEdicao.ParamByName('IDEP').Value := 1;
     SPEdicao.ParamByName('IDCA').Value := 0;
     SPEdicao.ParamByName('NAFA').Value := 0;

     SPEdicao.ParamByName('RAZA').Value := SQLConsulta.Current.ByName('FOR_RAZA').Value;
     SPEdicao.ParamByName('FANT').Value := SQLConsulta.Current.ByName('FOR_FANT').Value;
     SPEdicao.ParamByName('CONT').Value := SQLConsulta.Current.ByName('FOR_CONT').Value;
     SPEdicao.ParamByName('MAIL').Value := SQLConsulta.Current.ByName('FOR_MAIL').Value;
     SPEdicao.ParamByName('DDD' ).Value := SQLConsulta.Current.ByName('FOR_DDD ').Value;
     SPEdicao.ParamByName('TEL1').Value := SQLConsulta.Current.ByName('FOR_TEL1').Value;
     SPEdicao.ParamByName('DD2' ).Value := SQLConsulta.Current.ByName('FOR_DD2 ').Value;
     SPEdicao.ParamByName('TEL2').Value := SQLConsulta.Current.ByName('FOR_TEL2').Value;
     SPEdicao.ParamByName('DD3' ).Value := SQLConsulta.Current.ByName('FOR_DD3 ').Value;
     SPEdicao.ParamByName('TEL3').Value := SQLConsulta.Current.ByName('FOR_TEL3').Value;
     SPEdicao.ParamByName('DD4' ).Value := SQLConsulta.Current.ByName('FOR_DD4 ').Value;
     SPEdicao.ParamByName('DD5' ).Value := SQLConsulta.Current.ByName('FOR_DD5 ').Value;
     SPEdicao.ParamByName('CEL' ).Value := SQLConsulta.Current.ByName('FOR_CEL ').Value;
     SPEdicao.ParamByName('TCE1').Value := SQLConsulta.Current.ByName('FOR_TCE1').Value;
     SPEdicao.ParamByName('DD6' ).Value := SQLConsulta.Current.ByName('FOR_DD6 ').Value;
     SPEdicao.ParamByName('NCEL').Value := SQLConsulta.Current.ByName('FOR_NCEL').Value;
     SPEdicao.ParamByName('TCE2').Value := SQLConsulta.Current.ByName('FOR_TCE2').Value;
     SPEdicao.ParamByName('NEID').Value := SQLConsulta.Current.ByName('FOR_NEID').Value;
     SPEdicao.ParamByName('FCON').Value := SQLConsulta.Current.ByName('FOR_FCON').Value;
     SPEdicao.ParamByName('FMAI').Value := SQLConsulta.Current.ByName('FOR_FMAI').Value;
     SPEdicao.ParamByName('FDDD').Value := SQLConsulta.Current.ByName('FOR_FDDD').Value;
     SPEdicao.ParamByName('FTE1').Value := SQLConsulta.Current.ByName('FOR_FTE1').Value;
     SPEdicao.ParamByName('FDD2').Value := SQLConsulta.Current.ByName('FOR_FDD2').Value;
     SPEdicao.ParamByName('FTE2').Value := SQLConsulta.Current.ByName('FOR_FTE2').Value;
     SPEdicao.ParamByName('FDD3').Value := SQLConsulta.Current.ByName('FOR_FDD3').Value;
     SPEdicao.ParamByName('FTE3').Value := SQLConsulta.Current.ByName('FOR_FTE3').Value;
     SPEdicao.ParamByName('FDD4').Value := SQLConsulta.Current.ByName('FOR_FDD4').Value;
     SPEdicao.ParamByName('FDD5').Value := SQLConsulta.Current.ByName('FOR_FDD5').Value;
     SPEdicao.ParamByName('FCEL').Value := SQLConsulta.Current.ByName('FOR_FCEL').Value;
     SPEdicao.ParamByName('FTC1').Value := SQLConsulta.Current.ByName('FOR_FTC1').Value;
     SPEdicao.ParamByName('FDD6').Value := SQLConsulta.Current.ByName('FOR_FDD6').Value;
     SPEdicao.ParamByName('FNCE').Value := SQLConsulta.Current.ByName('FOR_FNCE').Value;
     SPEdicao.ParamByName('FTC2').Value := SQLConsulta.Current.ByName('FOR_FTC2').Value;
     SPEdicao.ParamByName('FNID').Value := SQLConsulta.Current.ByName('FOR_FNID').Value;
     SPEdicao.ParamByName('CCON').Value := SQLConsulta.Current.ByName('FOR_CCON').Value;
     SPEdicao.ParamByName('CMAI').Value := SQLConsulta.Current.ByName('FOR_CMAI').Value;
     SPEdicao.ParamByName('CDDD').Value := SQLConsulta.Current.ByName('FOR_CDDD').Value;
     SPEdicao.ParamByName('CTE1').Value := SQLConsulta.Current.ByName('FOR_CTE1').Value;
     SPEdicao.ParamByName('CDD2').Value := SQLConsulta.Current.ByName('FOR_CDD2').Value;
     SPEdicao.ParamByName('CTE2').Value := SQLConsulta.Current.ByName('FOR_CTE2').Value;
     SPEdicao.ParamByName('CDD3').Value := SQLConsulta.Current.ByName('FOR_CDD3').Value;
     SPEdicao.ParamByName('CTE3').Value := SQLConsulta.Current.ByName('FOR_CTE3').Value;
     SPEdicao.ParamByName('CDD4').Value := SQLConsulta.Current.ByName('FOR_CDD4').Value;
     SPEdicao.ParamByName('CDD5').Value := SQLConsulta.Current.ByName('FOR_CDD5').Value;
     SPEdicao.ParamByName('CCEL').Value := SQLConsulta.Current.ByName('FOR_CCEL').Value;
     SPEdicao.ParamByName('CTC1').Value := SQLConsulta.Current.ByName('FOR_CTC1').Value;
     SPEdicao.ParamByName('CDD6').Value := SQLConsulta.Current.ByName('FOR_CDD6').Value;
     SPEdicao.ParamByName('CNCE').Value := SQLConsulta.Current.ByName('FOR_CNCE').Value;
     SPEdicao.ParamByName('CTC2').Value := SQLConsulta.Current.ByName('FOR_CTC2').Value;
     SPEdicao.ParamByName('CNID').Value := SQLConsulta.Current.ByName('FOR_CNID').Value;
     SPEdicao.ParamByName('CPF' ).Value := SQLConsulta.Current.ByName('FOR_CPF ').Value;
     SPEdicao.ParamByName('INSC').Value := SQLConsulta.Current.ByName('FOR_INSC').Value;
     SPEdicao.ParamByName('CNPJ').Value := SQLConsulta.Current.ByName('FOR_CNPJ').Value;
     SPEdicao.ParamByName('TLOG').Value := SQLConsulta.Current.ByName('FOR_TLOG').Value;
     SPEdicao.ParamByName('LOGR').Value := SQLConsulta.Current.ByName('FOR_LOGR').Value;
     SPEdicao.ParamByName('CEP' ).Value := SQLConsulta.Current.ByName('FOR_CEP ').Value;
     SPEdicao.ParamByName('NUME').Value := SQLConsulta.Current.ByName('FOR_NUME').Value;
     SPEdicao.ParamByName('COMP').Value := SQLConsulta.Current.ByName('FOR_COMP').Value;
     SPEdicao.ParamByName('BAI' ).Value := SQLConsulta.Current.ByName('FOR_BAI ').Value;
     SPEdicao.ParamByName('CID' ).Value := SQLConsulta.Current.ByName('FOR_CID ').Value;
     SPEdicao.ParamByName('ESTA').Value := SQLConsulta.Current.ByName('FOR_ESTA').Value;
     SPEdicao.ParamByName('TLOC').Value := SQLConsulta.Current.ByName('FOR_TLOC').Value;
     SPEdicao.ParamByName('LOGC').Value := SQLConsulta.Current.ByName('FOR_LOGC').Value;
     SPEdicao.ParamByName('CEPC').Value := SQLConsulta.Current.ByName('FOR_CEPC').Value;
     SPEdicao.ParamByName('NUMC').Value := SQLConsulta.Current.ByName('FOR_NUMC').Value;
     SPEdicao.ParamByName('COMC').Value := SQLConsulta.Current.ByName('FOR_COMC').Value;
     SPEdicao.ParamByName('BAIC').Value := SQLConsulta.Current.ByName('FOR_BAIC').Value;
     SPEdicao.ParamByName('CIDC').Value := SQLConsulta.Current.ByName('FOR_CIDC').Value;
     SPEdicao.ParamByName('ESTC').Value := SQLConsulta.Current.ByName('FOR_ESTC').Value;
     SPEdicao.ParamByName('TLOV').Value := SQLConsulta.Current.ByName('FOR_TLOV').Value;
     SPEdicao.ParamByName('LOGV').Value := SQLConsulta.Current.ByName('FOR_LOGV').Value;
     SPEdicao.ParamByName('CEPV').Value := SQLConsulta.Current.ByName('FOR_CEPV').Value;
     SPEdicao.ParamByName('NUMV').Value := SQLConsulta.Current.ByName('FOR_NUMV').Value;
     SPEdicao.ParamByName('COMV').Value := SQLConsulta.Current.ByName('FOR_COMV').Value;
     SPEdicao.ParamByName('BAIV').Value := SQLConsulta.Current.ByName('FOR_BAIV').Value;
     SPEdicao.ParamByName('CIDV').Value := SQLConsulta.Current.ByName('FOR_CIDV').Value;
     SPEdicao.ParamByName('ESTV').Value := SQLConsulta.Current.ByName('FOR_ESTV').Value;
     SPEdicao.ParamByName('STAV').Value := SQLConsulta.Current.ByName('FOR_STAV').Value;
     SPEdicao.ParamByName('DEGP').Value := EmptyStr;
     SPEdicao.ParamByName('RICM').Value := SQLConsulta.Current.ByName('FOR_RICM').Value;
     SPEdicao.ParamByName('CMUN').Value := SQLConsulta.Current.ByName('FOR_CMUN').Value;
     SPEdicao.ParamByName('DUSU').Value := SQLConsulta.Current.ByName('FOR_DUSU').Value;
     SPEdicao.ParamByName('DFUN').Value := SQLConsulta.Current.ByName('FOR_DFUN').Value;
     SPEdicao.ParamByName('CICM').Value := SQLConsulta.Current.ByName('FOR_CICM').Value;
     SPEdicao.ParamByName('RAMO').Value := SQLConsulta.Current.ByName('FOR_RAMO').Value;
     SPEdicao.ParamByName('OBSE').Value := SQLConsulta.Current.ByName('FOR_OBSE').Value;
     SPEdicao.ParamByName('OBSO').Value := SQLConsulta.Current.ByName('FOR_OBSO').Value;
     SPEdicao.ParamByName('CMUV').Value := SQLConsulta.Current.ByName('FOR_CMUV').Value;
     SPEdicao.ParamByName('CMUC').Value := SQLConsulta.Current.ByName('FOR_CMUC').Value;
     SPEdicao.ParamByName('REVE').Value := SQLConsulta.Current.ByName('FOR_REVE').Value;
     SPEdicao.ParamByName('IMUN').Value := SQLConsulta.Current.ByName('FOR_IMUN').Value;
     SPEdicao.ParamByName('CCM' ).Value := SQLConsulta.Current.ByName('FOR_CCM' ).Value;
     SPEdicao.ParamByName('CVEN').Value := 1;
     SPEdicao.ParamByName('CREP').Value := 1;
     SPEdicao.ParamByName('COMI').Value := 0;

     SPEdicao.ParamByName('TIPO'   ).Value := 0;
     SPEdicao.ParamByName('RESERVA').Value := 0;

     SPEdicao.ParamByName('IP'  ).Value := EmptyStr;
     SPEdicao.ParamByName('HOST').Value := EmptyStr;
     SPEdicao.ExecProc;

     SQLConsulta.Next;
    end;
    _AtivaTriggers('CAD_FOR');

    oCTransact(TEdicao);
    oCTransact(TConsulta );
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oCTransact(TConsulta ,ltRollback);
      oException(Nil,'Falha ao tentar atualizar CAD_FOR !' + #13 + #13 +
                      E.Message);
    end;
  end;

  oAviso(handle,'Transferência realizada com sucesso !');
end;

procedure TFrmPrincipal.ACTCAD_TRAExecute(Sender: TObject);
var
  i: Word;
begin
  if Pos('192.168.0.199',BEDestino.Text) > 0 then
  oException(Nil,'Não é possível limpeza em banco conectado à rede !');

  if not DBDestino.TestConnected then
  oException(Nil,'Banco de dados de destino não está aberto !');

  if not DBOrigem.TestConnected then
  oException(Nil,'Banco de dados de origem não está aberto !');

  if oYesNo(handle,'Transferir Transportadoras ?') = mrNo then
  Abort;

  { Ativa trigger temporário }
  Try
    oOTransact(TEdicao);

    _DesativaTriggers('CAD_TRA');
    _AtivaTriggers('CAD_TRA','TA_CAD_TRA');
    _AtivaTriggers('CAD_TRA','TB_CAD_TRA_TMP');
    _AtivaTriggers('CAD_TRA','TB_CAD_TRA_UPD');
    _AtivaTriggers('CAD_TRA','TB_CAD_TRA_CEP');

    _AtualizaGenerators('CAD_TRA','ID_NO_CAD_TRA');

    oOTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   PK.* FROM CAD_TRA AS PK');
      SQL.Add('ORDER BY PK.ID');
      ExecQuery;
    end;

    with SQLEdicao do
    begin
      { INSERT ID 0 }
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_TRA WHERE ID = 0');
      ExecQuery;

      if Eof then
      begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO CAD_TRA (ID)');
        SQL.Add('VALUES (0)');
        ExecQuery;
      end;  
   end;

   while not SQLConsulta.Eof do
   begin
     { Transferindo ... }
     SBRodape.Panels[0].Text := 'Transferindo transportadora código ...: ' + SQLConsulta.Current.ByName('ID').AsString;
     Application.ProcessMessages;

     SPEdicao.Close;
     SPEdicao.StoredProcName := 'SP_CAD_TRA';
     SPEdicao.Prepare;

     for i := 0 to SPEdicao.ParamCount - 1 do
     SPEdicao.Params[i].Value := Null;

     SPEdicao.ParamByName('ID'  ).Value := SQLConsulta.Current.ByName('ID').Value;
     SPEdicao.ParamByName('IDCT').Value := SQLConsulta.Current.ByName('ID').Value;

     SPEdicao.ParamByName('IDEP').Value := 1;
     SPEdicao.ParamByName('IDCA').Value := 0;
     SPEdicao.ParamByName('NAFA').Value := 0;

     SPEdicao.ParamByName('RAZA').Value := SQLConsulta.Current.ByName('TRA_RAZA').Value;
     SPEdicao.ParamByName('FANT').Value := SQLConsulta.Current.ByName('TRA_FANT').Value;
     SPEdicao.ParamByName('CONT').Value := SQLConsulta.Current.ByName('TRA_CONT').Value;
     SPEdicao.ParamByName('MAIL').Value := SQLConsulta.Current.ByName('TRA_MAIL').Value;
     SPEdicao.ParamByName('DDD' ).Value := SQLConsulta.Current.ByName('TRA_DDD ').Value;
     SPEdicao.ParamByName('TEL1').Value := SQLConsulta.Current.ByName('TRA_TEL1').Value;
     SPEdicao.ParamByName('DD2' ).Value := SQLConsulta.Current.ByName('TRA_DD2 ').Value;
     SPEdicao.ParamByName('TEL2').Value := SQLConsulta.Current.ByName('TRA_TEL2').Value;
     SPEdicao.ParamByName('DD3' ).Value := SQLConsulta.Current.ByName('TRA_DD3 ').Value;
     SPEdicao.ParamByName('TEL3').Value := SQLConsulta.Current.ByName('TRA_TEL3').Value;
     SPEdicao.ParamByName('DD4' ).Value := SQLConsulta.Current.ByName('TRA_DD4 ').Value;
     SPEdicao.ParamByName('DD5' ).Value := SQLConsulta.Current.ByName('TRA_DD5 ').Value;
     SPEdicao.ParamByName('CEL' ).Value := SQLConsulta.Current.ByName('TRA_CEL ').Value;
     SPEdicao.ParamByName('TCE1').Value := SQLConsulta.Current.ByName('TRA_TCE1').Value;
     SPEdicao.ParamByName('DD6' ).Value := SQLConsulta.Current.ByName('TRA_DD6 ').Value;
     SPEdicao.ParamByName('NCEL').Value := SQLConsulta.Current.ByName('TRA_NCEL').Value;
     SPEdicao.ParamByName('TCE2').Value := SQLConsulta.Current.ByName('TRA_TCE2').Value;
     SPEdicao.ParamByName('NEID').Value := SQLConsulta.Current.ByName('TRA_NEID').Value;
     SPEdicao.ParamByName('FCON').Value := SQLConsulta.Current.ByName('TRA_FCON').Value;
     SPEdicao.ParamByName('FMAI').Value := SQLConsulta.Current.ByName('TRA_FMAI').Value;
     SPEdicao.ParamByName('FDDD').Value := SQLConsulta.Current.ByName('TRA_FDDD').Value;
     SPEdicao.ParamByName('FTE1').Value := SQLConsulta.Current.ByName('TRA_FTE1').Value;
     SPEdicao.ParamByName('FDD2').Value := SQLConsulta.Current.ByName('TRA_FDD2').Value;
     SPEdicao.ParamByName('FTE2').Value := SQLConsulta.Current.ByName('TRA_FTE2').Value;
     SPEdicao.ParamByName('FDD3').Value := SQLConsulta.Current.ByName('TRA_FDD3').Value;
     SPEdicao.ParamByName('FTE3').Value := SQLConsulta.Current.ByName('TRA_FTE3').Value;
     SPEdicao.ParamByName('FDD4').Value := SQLConsulta.Current.ByName('TRA_FDD4').Value;
     SPEdicao.ParamByName('FDD5').Value := SQLConsulta.Current.ByName('TRA_FDD5').Value;
     SPEdicao.ParamByName('FCEL').Value := SQLConsulta.Current.ByName('TRA_FCEL').Value;
     SPEdicao.ParamByName('FTC1').Value := SQLConsulta.Current.ByName('TRA_FTC1').Value;
     SPEdicao.ParamByName('FDD6').Value := SQLConsulta.Current.ByName('TRA_FDD6').Value;
     SPEdicao.ParamByName('FNCE').Value := SQLConsulta.Current.ByName('TRA_FNCE').Value;
     SPEdicao.ParamByName('FTC2').Value := SQLConsulta.Current.ByName('TRA_FTC2').Value;
     SPEdicao.ParamByName('FNID').Value := SQLConsulta.Current.ByName('TRA_FNID').Value;
     SPEdicao.ParamByName('CCON').Value := SQLConsulta.Current.ByName('TRA_CCON').Value;
     SPEdicao.ParamByName('CMAI').Value := SQLConsulta.Current.ByName('TRA_CMAI').Value;
     SPEdicao.ParamByName('CDDD').Value := SQLConsulta.Current.ByName('TRA_CDDD').Value;
     SPEdicao.ParamByName('CTE1').Value := SQLConsulta.Current.ByName('TRA_CTE1').Value;
     SPEdicao.ParamByName('CDD2').Value := SQLConsulta.Current.ByName('TRA_CDD2').Value;
     SPEdicao.ParamByName('CTE2').Value := SQLConsulta.Current.ByName('TRA_CTE2').Value;
     SPEdicao.ParamByName('CDD3').Value := SQLConsulta.Current.ByName('TRA_CDD3').Value;
     SPEdicao.ParamByName('CTE3').Value := SQLConsulta.Current.ByName('TRA_CTE3').Value;
     SPEdicao.ParamByName('CDD4').Value := SQLConsulta.Current.ByName('TRA_CDD4').Value;
     SPEdicao.ParamByName('CDD5').Value := SQLConsulta.Current.ByName('TRA_CDD5').Value;
     SPEdicao.ParamByName('CCEL').Value := SQLConsulta.Current.ByName('TRA_CCEL').Value;
     SPEdicao.ParamByName('CTC1').Value := SQLConsulta.Current.ByName('TRA_CTC1').Value;
     SPEdicao.ParamByName('CDD6').Value := SQLConsulta.Current.ByName('TRA_CDD6').Value;
     SPEdicao.ParamByName('CNCE').Value := SQLConsulta.Current.ByName('TRA_CNCE').Value;
     SPEdicao.ParamByName('CTC2').Value := SQLConsulta.Current.ByName('TRA_CTC2').Value;
     SPEdicao.ParamByName('CNID').Value := SQLConsulta.Current.ByName('TRA_CNID').Value;
     SPEdicao.ParamByName('CPF' ).Value := SQLConsulta.Current.ByName('TRA_CPF ').Value;
     SPEdicao.ParamByName('INSC').Value := SQLConsulta.Current.ByName('TRA_INSC').Value;
     SPEdicao.ParamByName('CNPJ').Value := SQLConsulta.Current.ByName('TRA_CNPJ').Value;
     SPEdicao.ParamByName('TLOG').Value := SQLConsulta.Current.ByName('TRA_TLOG').Value;
     SPEdicao.ParamByName('LOGR').Value := SQLConsulta.Current.ByName('TRA_LOGR').Value;
     SPEdicao.ParamByName('CEP' ).Value := SQLConsulta.Current.ByName('TRA_CEP ').Value;
     SPEdicao.ParamByName('NUME').Value := SQLConsulta.Current.ByName('TRA_NUME').Value;
     SPEdicao.ParamByName('COMP').Value := SQLConsulta.Current.ByName('TRA_COMP').Value;
     SPEdicao.ParamByName('BAI' ).Value := SQLConsulta.Current.ByName('TRA_BAI ').Value;
     SPEdicao.ParamByName('CID' ).Value := SQLConsulta.Current.ByName('TRA_CID ').Value;
     SPEdicao.ParamByName('ESTA').Value := SQLConsulta.Current.ByName('TRA_ESTA').Value;
     SPEdicao.ParamByName('TLOC').Value := SQLConsulta.Current.ByName('TRA_TLOC').Value;
     SPEdicao.ParamByName('LOGC').Value := SQLConsulta.Current.ByName('TRA_LOGC').Value;
     SPEdicao.ParamByName('CEPC').Value := SQLConsulta.Current.ByName('TRA_CEPC').Value;
     SPEdicao.ParamByName('NUMC').Value := SQLConsulta.Current.ByName('TRA_NUMC').Value;
     SPEdicao.ParamByName('COMC').Value := SQLConsulta.Current.ByName('TRA_COMC').Value;
     SPEdicao.ParamByName('BAIC').Value := SQLConsulta.Current.ByName('TRA_BAIC').Value;
     SPEdicao.ParamByName('CIDC').Value := SQLConsulta.Current.ByName('TRA_CIDC').Value;
     SPEdicao.ParamByName('ESTC').Value := SQLConsulta.Current.ByName('TRA_ESTC').Value;
     SPEdicao.ParamByName('TLOV').Value := SQLConsulta.Current.ByName('TRA_TLOV').Value;
     SPEdicao.ParamByName('LOGV').Value := SQLConsulta.Current.ByName('TRA_LOGV').Value;
     SPEdicao.ParamByName('CEPV').Value := SQLConsulta.Current.ByName('TRA_CEPV').Value;
     SPEdicao.ParamByName('NUMV').Value := SQLConsulta.Current.ByName('TRA_NUMV').Value;
     SPEdicao.ParamByName('COMV').Value := SQLConsulta.Current.ByName('TRA_COMV').Value;
     SPEdicao.ParamByName('BAIV').Value := SQLConsulta.Current.ByName('TRA_BAIV').Value;
     SPEdicao.ParamByName('CIDV').Value := SQLConsulta.Current.ByName('TRA_CIDV').Value;
     SPEdicao.ParamByName('ESTV').Value := SQLConsulta.Current.ByName('TRA_ESTV').Value;
     SPEdicao.ParamByName('STAV').Value := SQLConsulta.Current.ByName('TRA_STAV').Value;
     SPEdicao.ParamByName('DEGP').Value := EmptyStr;
     SPEdicao.ParamByName('RICM').Value := SQLConsulta.Current.ByName('TRA_RICM').Value;
     SPEdicao.ParamByName('CMUN').Value := SQLConsulta.Current.ByName('TRA_CMUN').Value;
     SPEdicao.ParamByName('DUSU').Value := EmptyStr;
     SPEdicao.ParamByName('DFUN').Value := SQLConsulta.Current.ByName('TRA_DFUN').Value;
     SPEdicao.ParamByName('CICM').Value := SQLConsulta.Current.ByName('TRA_CICM').Value;
     SPEdicao.ParamByName('RAMO').Value := SQLConsulta.Current.ByName('TRA_RAMO').Value;
     SPEdicao.ParamByName('OBSE').Value := SQLConsulta.Current.ByName('TRA_OBSE').Value;
     SPEdicao.ParamByName('OBSO').Value := SQLConsulta.Current.ByName('TRA_OBSO').Value;
     SPEdicao.ParamByName('CMUV').Value := SQLConsulta.Current.ByName('TRA_CMUV').Value;
     SPEdicao.ParamByName('CMUC').Value := SQLConsulta.Current.ByName('TRA_CMUC').Value;
     SPEdicao.ParamByName('REVE').Value := SQLConsulta.Current.ByName('TRA_REVE').Value;
     SPEdicao.ParamByName('IMUN').Value := SQLConsulta.Current.ByName('TRA_IMUN').Value;
     SPEdicao.ParamByName('CCM' ).Value := SQLConsulta.Current.ByName('TRA_CCM' ).Value;
     SPEdicao.ParamByName('CVEN').Value := 1;
     SPEdicao.ParamByName('CREP').Value := 1;
     SPEdicao.ParamByName('COMI').Value := 0;

     SPEdicao.ParamByName('TIPO'   ).Value := 0;
     SPEdicao.ParamByName('RESERVA').Value := 0;

     SPEdicao.ParamByName('IP'  ).Value := EmptyStr;
     SPEdicao.ParamByName('HOST').Value := EmptyStr;
     SPEdicao.ExecProc;

     SQLConsulta.Next;
    end;
    _AtivaTriggers('CAD_TRA');

    oCTransact(TEdicao);
    oCTransact(TConsulta );
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oCTransact(TConsulta ,ltRollback);
      oException(Nil,'Falha ao tentar atualizar CAD_TRA !' + #13 + #13 +
                      E.Message);
    end;
  end;

  oAviso(handle,'Transferência realizada com sucesso !');
end;

procedure TFrmPrincipal.ACTTAB_PAGExecute(Sender: TObject);
begin
  if oYesNo(handle,'Transferir Prazos de Pagamentos ?') = mrNo then
  Abort;

  Try
    oOTransact(TEdicao);

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM TAB_PAG');

      ExecQuery;
    end;

    _DesativaTriggers('TAB_PAG','TB_TAB_PAG');
    _AtualizaGenerators('TAB_PAG','ID_NO_TAB_PAG');
    _AtutalizaTabelas('TAB_PAG');
    _AtivaTriggers('TAB_PAG');

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE TAB_PAG');
      SQL.Add('SET    FLAG = NULL');
      ExecQuery;
    end;

    oCTransact(TEdicao);
    oCTransact(TConsulta );
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oCTransact(TConsulta ,ltRollback);
      oException(Nil,'Falha ao tentar atualizar TAB_PAG !' + #13 + #13 +
                      E.Message);
    end;
  end;

  oAviso(handle,'Transferência realizada com sucesso !');
end;

procedure TFrmPrincipal.ACTTAB_NATExecute(Sender: TObject);
begin
  if oYesNo(handle,'Transferir CFOP ?') = mrNo then
  Abort;

  Try
    oOTransact(TEdicao);

    _AtualizaGenerators('TAB_NAT','ID_NO_TAB_NAT',True);
    _AtutalizaTabelas('TAB_NAT');
    _AtivaTriggers('TAB_NAT');

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE TAB_NAT');
      SQL.Add('SET    FLAG = NULL');
      ExecQuery;
    end;

    oCTransact(TEdicao);
    oCTransact(TConsulta );
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oCTransact(TConsulta ,ltRollback);
      oException(Nil,'Falha ao tentar atualizar TAB_NAT !' + #13 + #13 +
                      E.Message);
    end;
  end;

  oAviso(handle,'Transferência realizada com sucesso !');
end;

procedure TFrmPrincipal.ACTTAB_CORExecute(Sender: TObject);
begin
//ALTER TABLE TAB_COR ADD CONSTRAINT "[CODIGO NAO INFORMADO]" CHECK (NOT ID IS NULL);
//ALTER TABLE TAB_COR ADD CONSTRAINT "[COR NAO INFORMADA]" CHECK (NOT DESCRICAO IS NULL);

  if oYesNo(handle,'Transferir Grade de Cor ?') = mrNo then
  Abort;

  Try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM TAB_COR');
      ExecQuery;
    end;
    oRTransact(TEdicao);

    _AtivaTriggers('TAB_COR');
    _AtualizaGenerators('TAB_COR','IDG_TAB_COR', true);
    _AtutalizaTabelas('TAB_COR');
    _AtivaTriggers('TAB_COR');

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE TAB_COR');
      SQL.Add('SET    FLAG = NULL');
      ExecQuery;
    end;

    oCTransact(TEdicao);
    oCTransact(TConsulta );
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oCTransact(TConsulta ,ltRollback);
      oException(Nil,'Falha ao tentar atualizar TAB_COR !' + #13 + #13 +
                      E.Message);
    end;
  end;

  oAviso(handle,'Transferência realizada com sucesso !');
end;

procedure TFrmPrincipal.ACTTAB_PARExecute(Sender: TObject);
begin
  if oYesNo(handle,'Transferir TAB_PAR_SIS ?') = mrNo then
  Abort;

  Try
    oOTransact(TEdicao);

    _DesativaTriggers('TAB_PAR_SIS');
    _AtualizaGenerators('TAB_PAR_SIS','IDG_TAB_PAR_SIS',True);

    _AtutalizaTabelas('TAB_PAR_SIS');
    _AtivaTriggers('TAB_PAR_SIS');

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM TAB_PAR_SIS');
      ExecQuery;
    end;

    while not SQLEdicao.Eof do
    begin
      { API }
      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAR_SIS_API');
        SQL.Add('WHERE ID = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
        ExecQuery;
      end;

      if SQLPKEdicao.Eof then
         with SQLFKEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('INSERT INTO TAB_PAR_SIS_API (ID)');
           SQL.Add('VALUES (');
           SQL.Add('''' + SQLEdicao.Current.Vars[0].AsString + ''')');
           ExecQuery;
         end;

      { CAD }
      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAR_SIS_CAD');
        SQL.Add('WHERE ID = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
        ExecQuery;
      end;

      if SQLPKEdicao.Eof then
         with SQLFKEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('INSERT INTO TAB_PAR_SIS_CAD (ID)');
           SQL.Add('VALUES (');
           SQL.Add('''' + SQLEdicao.Current.Vars[0].AsString + ''')');
           ExecQuery;
         end;

      { CFE }
      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAR_SIS_CFE');
        SQL.Add('WHERE ID = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
        ExecQuery;
      end;

      if SQLPKEdicao.Eof then
         with SQLFKEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('INSERT INTO TAB_PAR_SIS_CFE (ID)');
           SQL.Add('VALUES (');
           SQL.Add('''' + SQLEdicao.Current.Vars[0].AsString + ''')');
           ExecQuery;
         end;

      { CONTABIL }
      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAR_SIS_CONTABIL');
        SQL.Add('WHERE ID = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
        ExecQuery;
      end;

      if SQLPKEdicao.Eof then
         with SQLFKEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('INSERT INTO TAB_PAR_SIS_CONTABIL (ID)');
           SQL.Add('VALUES (');
           SQL.Add('''' + SQLEdicao.Current.Vars[0].AsString + ''')');
           ExecQuery;
         end;

      { EMP }
      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAR_SIS_EMP');
        SQL.Add('WHERE ID = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
        ExecQuery;
      end;

      if SQLPKEdicao.Eof then
         with SQLFKEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('INSERT INTO TAB_PAR_SIS_EMP (ID)');
           SQL.Add('VALUES (');
           SQL.Add('''' + SQLEdicao.Current.Vars[0].AsString + ''')');
           ExecQuery;
         end;

      { EST }
      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAR_SIS_EST');
        SQL.Add('WHERE ID = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
        ExecQuery;
      end;

      if SQLPKEdicao.Eof then
         with SQLFKEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('INSERT INTO TAB_PAR_SIS_EST (ID)');
           SQL.Add('VALUES (');
           SQL.Add('''' + SQLEdicao.Current.Vars[0].AsString + ''')');
           ExecQuery;
         end;

      { EST_EMP }
      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAR_SIS_EST_EMP');
        SQL.Add('WHERE ID = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
        ExecQuery;
      end;

      if SQLPKEdicao.Eof then
         with SQLFKEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('INSERT INTO TAB_PAR_SIS_EST_EMP (ID)');
           SQL.Add('VALUES (');
           SQL.Add('''' + SQLEdicao.Current.Vars[0].AsString + ''')');
           ExecQuery;
         end;

      { EST_SEP }
      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAR_SIS_EST_SEP');
        SQL.Add('WHERE ID = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
        ExecQuery;
      end;

      if SQLPKEdicao.Eof then
         with SQLFKEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('INSERT INTO TAB_PAR_SIS_EST_SEP (ID)');
           SQL.Add('VALUES (');
           SQL.Add('''' + SQLEdicao.Current.Vars[0].AsString + ''')');
           ExecQuery;
         end;

      { FIN }
      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAR_SIS_FIN');
        SQL.Add('WHERE ID = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
        ExecQuery;
      end;

      if SQLPKEdicao.Eof then
         with SQLFKEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('INSERT INTO TAB_PAR_SIS_FIN (ID)');
           SQL.Add('VALUES (');
           SQL.Add('''' + SQLEdicao.Current.Vars[0].AsString + ''')');
           ExecQuery;
         end;

      { FIS_CFE }
      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAR_SIS_FIS_CFE');
        SQL.Add('WHERE ID = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
        ExecQuery;
      end;

      if SQLPKEdicao.Eof then
         with SQLFKEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('INSERT INTO TAB_PAR_SIS_FIS_CFE (ID)');
           SQL.Add('VALUES (');
           SQL.Add('''' + SQLEdicao.Current.Vars[0].AsString + ''')');
           ExecQuery;
         end;

      { FIS_DEP }
      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAR_SIS_FIS_DEP');
        SQL.Add('WHERE ID = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
        ExecQuery;
      end;

      if SQLPKEdicao.Eof then
         with SQLFKEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('INSERT INTO TAB_PAR_SIS_FIS_DEP (ID)');
           SQL.Add('VALUES (');
           SQL.Add('''' + SQLEdicao.Current.Vars[0].AsString + ''')');
           ExecQuery;
         end;

      { NFE }
      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAR_SIS_NFE');
        SQL.Add('WHERE ID = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
        ExecQuery;
      end;

      if SQLPKEdicao.Eof then
         with SQLFKEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('INSERT INTO TAB_PAR_SIS_NFE (ID)');
           SQL.Add('VALUES (');
           SQL.Add('''' + SQLEdicao.Current.Vars[0].AsString + ''')');
           ExecQuery;
         end;

      { IMG }
      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAR_SIS_IMG');
        SQL.Add('WHERE ID = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
        ExecQuery;
      end;

      if SQLPKEdicao.Eof then
         with SQLFKEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('INSERT INTO TAB_PAR_SIS_IMG (ID)');
           SQL.Add('VALUES (');
           SQL.Add('''' + SQLEdicao.Current.Vars[0].AsString + ''')');
           ExecQuery;
         end;

      { PED }
      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAR_SIS_PED');
        SQL.Add('WHERE ID = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
        ExecQuery;
      end;

      if SQLPKEdicao.Eof then
         with SQLFKEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('INSERT INTO TAB_PAR_SIS_PED (ID)');
           SQL.Add('VALUES (');
           SQL.Add('''' + SQLEdicao.Current.Vars[0].AsString + ''')');
           ExecQuery;
         end;

      { PRO }
      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAR_SIS_PRO');
        SQL.Add('WHERE ID = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
        ExecQuery;
      end;

      if SQLPKEdicao.Eof then
         with SQLFKEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('INSERT INTO TAB_PAR_SIS_PRO (ID)');
           SQL.Add('VALUES (');
           SQL.Add('''' + SQLEdicao.Current.Vars[0].AsString + ''')');
           ExecQuery;
         end;

      { SHE }
      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAR_SIS_SHE');
        SQL.Add('WHERE ID = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
        ExecQuery;
      end;

      if SQLPKEdicao.Eof then
         with SQLFKEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('INSERT INTO TAB_PAR_SIS_SHE (ID)');
           SQL.Add('VALUES (');
           SQL.Add('''' + SQLEdicao.Current.Vars[0].AsString + ''')');
           ExecQuery;
         end;

      { SHEILD }
      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAR_SIS_SHEILD');
        SQL.Add('WHERE ID = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
        ExecQuery;
      end;

      if SQLPKEdicao.Eof then
         with SQLFKEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('INSERT INTO TAB_PAR_SIS_SHEILD (ID)');
           SQL.Add('VALUES (');
           SQL.Add('''' + SQLEdicao.Current.Vars[0].AsString + ''')');
           ExecQuery;
         end;

      { STA }
      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAR_SIS_STA');
        SQL.Add('WHERE ID = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
        ExecQuery;
      end;

      if SQLPKEdicao.Eof then
         with SQLFKEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('INSERT INTO TAB_PAR_SIS_STA (ID)');
           SQL.Add('VALUES (');
           SQL.Add('''' + SQLEdicao.Current.Vars[0].AsString + ''')');
           ExecQuery;
         end;

      SQLEdicao.Next;
    end;

    oCTransact(TEdicao);
    oCTransact(TConsulta );
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oCTransact(TConsulta ,ltRollback);
      oException(Nil,'Falha ao tentar atualizar TAB_PAR_SIS !' + #13 + #13 +
                      E.Message);
    end;
  end;

  oAviso(handle,'Transferência realizada com sucesso !');
end;

procedure TFrmPrincipal.ACTLimpaTabelasExecute(Sender: TObject);
begin
  if Pos('192.168.0.199',BEDestino.Text) > 0 then
  oException(Nil,'Não é possível limpeza em banco conectado à rede !');

  if not DBDestino.TestConnected then
  oException(Nil,'Banco de dados de destino não está aberto !');

  if oYesNo(handle,'Executar Limpeza Geral ?') = mrNo then
  Abort;

  Try
    oOTransact(TEdicao);

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select   rdb$relation_name from rdb$relations');
      SQL.Add('where    rdb$system_flag = 0');

      SQL.Add('and rdb$relation_name not like ''TAB_USE%'''); { Usuários }
      SQL.Add('and rdb$relation_name not like ''CEP%'''); { CEP }
      SQL.Add('and rdb$relation_name not like ''TAB_IMG%'''); { Catálogo }
      SQL.Add('and rdb$relation_name not like ''TAB_FER%'''); { Feriado }
      SQL.Add('and rdb$relation_name not like ''TAB_MKP%'''); { Marketing Place }
      SQL.Add('and rdb$relation_name not like ''TAB_UCO%'''); { Unidades }

      { Parâmetros }
    //  SQL.Add('and rdb$relation_name not like ''TAB_PAR%''');
      SQL.Add('and rdb$relation_name not like ''TAB_REL%''');
      SQL.Add('and rdb$relation_name not like ''TAB_STA%''');
      SQL.Add('and rdb$relation_name not like ''TAB_TPO%''');

      { Fiscal }
      SQL.Add('and rdb$relation_name not like ''TAB_ALQ%''');
      SQL.Add('and rdb$relation_name not like ''TAB_NCM%''');
      SQL.Add('and rdb$relation_name not like ''TAB_CNA%''');

      SQL.Add('and rdb$relation_name not like ''TAB_GRD%''');
      SQL.Add('and rdb$relation_name not like ''TAB_NFE%''');
      SQL.Add('and rdb$relation_name not like ''TAB_PAI%''');

      SQL.Add('and rdb$relation_name not like ''VW%''' );
      SQL.Add('and rdb$relation_name not like ''IBE%''');

      SQL.Add('order by rdb$relation_name');
      ExecQuery;
    end;

    while not SQLEdicao.Eof do
    begin
      { Desativa Triggers }
      _DesativaTriggers(Trim(SQLEdicao.Current.Vars[0].AsString));

      { Limpa Tabelas }
      SBRodape.Panels[0].Text := 'Limpando Tabela... '+Trim(SQLEdicao.Current.Vars[0].AsString);
      Application.ProcessMessages;

      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM ' + Trim(SQLEdicao.Current.Vars[0].AsString));
        ExecQuery;
      end;
      TEdicao.CommitRetaining;

      { Ativa Triggers }
      _AtivaTriggers(Trim(SQLEdicao.Current.Vars[0].AsString));

      SQLEdicao.Next;
    end;

    oCTransact(TEdicao);
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(Nil,'Falha ao tentar gravar procedimento na tabela '+Trim(SQLEdicao.Current.Vars[0].AsString) + ' !' + #13 + #13 +
                      E.Message);
    end;
  end;

  oAviso(handle,'Tabelas excluídas com sucesso !');
end;

procedure TFrmPrincipal.ACTLimpaGeneratorsExecute(Sender: TObject);
begin
  if Pos('192.168.0.199',BEDestino.Text) > 0 then
  oException(Nil,'Não é possível limpeza em banco conectado à rede !');

  if not DBDestino.TestConnected then
  oException(Nil,'Banco de dados de destino não está aberto !');

  if oYesNo(handle,'Excluir Generators ?') = mrNo then
  Abort;

  Try
    oOTransact(TEdicao);

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select   rdb$relation_name from rdb$relations');
      SQL.Add('where    rdb$system_flag = 0');

      SQL.Add('and rdb$relation_name not like ''TAB_USE%'''); { Usuários }
      SQL.Add('and rdb$relation_name not like ''CEP%'''); { CEP }
      SQL.Add('and rdb$relation_name not like ''TAB_IMG%'''); { Catálogo }
      SQL.Add('and rdb$relation_name not like ''TAB_FER%'''); { Feriado }
      SQL.Add('and rdb$relation_name not like ''TAB_MKP%'''); { Marketing Place }
      SQL.Add('and rdb$relation_name not like ''TAB_UCO%'''); { Unidades }

      { Parâmetros }
      SQL.Add('and rdb$relation_name not like ''TAB_PAR%''');
      SQL.Add('and rdb$relation_name not like ''TAB_REL%''');
      SQL.Add('and rdb$relation_name not like ''TAB_STA%''');
      SQL.Add('and rdb$relation_name not like ''TAB_TPO%''');

      { Fiscal }
      SQL.Add('and rdb$relation_name not like ''TAB_ALQ%''');
      SQL.Add('and rdb$relation_name not like ''TAB_NCM%''');
      SQL.Add('and rdb$relation_name not like ''TAB_CNA%''');

      SQL.Add('and rdb$relation_name not like ''TAB_GRD%''');
      SQL.Add('and rdb$relation_name not like ''TAB_NFE%''');
      SQL.Add('and rdb$relation_name not like ''TAB_PAI%''');

      SQL.Add('and rdb$relation_name not like ''VW%''' );
      SQL.Add('and rdb$relation_name not like ''IBE%''');

      SQL.Add('order by rdb$relation_name');
      ExecQuery;
    end;

    while not SQLEdicao.Eof do
    begin
      { Reinicia Generators }
      SBRodape.Panels[0].Text := 'Reiniciando Generators da tabela... '+Trim(SQLEdicao.Current.Vars[0].AsString);
      Application.ProcessMessages;

      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select rdb$generator_name');
        SQL.Add('from   rdb$generators');
        SQL.Add('where  rdb$system_flag = 0');
        SQL.Add('and    rdb$generator_name containing '''+Trim(SQLEdicao.Current.Vars[0].AsString)+'''');
        ExecQuery;
      end;
      if not oEmpty(Trim(SQLPKEdicao.Current.Vars[0].AsString)) then
         with SQLFKEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('SET GENERATOR '+Trim(SQLPKEdicao.Current.Vars[0].AsString)+' TO 0');
           ExecQuery;
         end;
      SQLEdicao.Next;
    end;

    oCTransact(TEdicao);
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(Nil,'Falha ao tentar gravar procedimento na tabela '+Trim(SQLEdicao.Current.Vars[0].AsString) + ' !' + #13 + #13 +
                      E.Message);
    end;
  end;

  oAviso(handle,'Generators excluídos com sucesso !');
end;

procedure TFrmPrincipal.ACTAtivaTriggersExecute(Sender: TObject);
begin
  if Pos('192.168.0.199',BEDestino.Text) > 0 then
  oException(Nil,'Não é possível limpeza em banco conectado à rede !');

  if not DBDestino.TestConnected then
  oException(Nil,'Banco de dados de destino não está aberto !');

  if oYesNo(handle,'Ativar Triggers ?') = mrNo then
  Abort;

  Try
    oOTransact(TEdicao);

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select   rdb$relation_name from rdb$relations');
      SQL.Add('where    rdb$system_flag = 0');

      SQL.Add('and rdb$relation_name not like ''TAB_USE%'''); { Usuários }
      SQL.Add('and rdb$relation_name not like ''CEP%'''); { CEP }
      SQL.Add('and rdb$relation_name not like ''TAB_IMG%'''); { Catálogo }
      SQL.Add('and rdb$relation_name not like ''TAB_FER%'''); { Feriado }
      SQL.Add('and rdb$relation_name not like ''TAB_MKP%'''); { Marketing Place }
      SQL.Add('and rdb$relation_name not like ''TAB_UCO%'''); { Unidades }

      { Parâmetros }
      SQL.Add('and rdb$relation_name not like ''TAB_PAR%''');
      SQL.Add('and rdb$relation_name not like ''TAB_REL%''');
      SQL.Add('and rdb$relation_name not like ''TAB_STA%''');
      SQL.Add('and rdb$relation_name not like ''TAB_TPO%''');

      { Fiscal }
      SQL.Add('and rdb$relation_name not like ''TAB_ALQ%''');
      SQL.Add('and rdb$relation_name not like ''TAB_NCM%''');
      SQL.Add('and rdb$relation_name not like ''TAB_CNA%''');

      SQL.Add('and rdb$relation_name not like ''TAB_GRD%''');
      SQL.Add('and rdb$relation_name not like ''TAB_NFE%''');
      SQL.Add('and rdb$relation_name not like ''TAB_PAI%''');

      SQL.Add('and rdb$relation_name not like ''VW%''' );
      SQL.Add('and rdb$relation_name not like ''IBE%''');

      SQL.Add('order by rdb$relation_name');
      ExecQuery;
    end;

    while not SQLEdicao.Eof do
    begin
      { Desativa Triggers }
      SBRodape.Panels[0].Text := 'Ativando Triggers da Tabela... '+Trim(SQLEdicao.Current.Vars[0].AsString);
      Application.ProcessMessages;

      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select rdb$trigger_name');
        SQL.Add('from   rdb$triggers');
        SQL.Add('where  rdb$relation_name = '''+Trim(SQLEdicao.Current.Vars[0].AsString)+'''');
        ExecQuery;
      end;
      while not SQLPKEdicao.Eof do
      begin
        if Pos('CHECK',Trim(SQLPKEdicao.Current.Vars[0].AsString)) = 0 then
           with SQLFKEdicao do
           begin
             Close;
             SQL.Clear;
             SQL.Add('ALTER TRIGGER '+Trim(SQLPKEdicao.Current.Vars[0].AsString)+' ACTIVE');
             ExecQuery;
           end;

        SQLPKEdicao.Next;
      end;

      SQLEdicao.Next;
    end;

    oCTransact(TEdicao);
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(Nil,'Falha ao tentar gravar procedimento na tabela '+Trim(SQLEdicao.Current.Vars[0].AsString) + ' !' + #13 + #13 +
                      E.Message);
    end;
  end;

  oAviso(handle,'Triggers ativadas com sucesso !');
end;

procedure TFrmPrincipal.ACTDesativaTriggersExecute(Sender: TObject);
begin
  if Pos('192.168.0.199',BEDestino.Text) > 0 then
  oException(Nil,'Não é possível limpeza em banco conectado à rede !');

  if not DBDestino.TestConnected then
  oException(Nil,'Banco de dados de destino não está aberto !');

  if oYesNo(handle,'Desativar Triggers ?') = mrNo then
  Abort;

  Try
    oOTransact(TEdicao);

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select   rdb$relation_name from rdb$relations');
      SQL.Add('where    rdb$system_flag = 0');

      SQL.Add('and rdb$relation_name not like ''TAB_USE%'''); { Usuários }
      SQL.Add('and rdb$relation_name not like ''CEP%'''); { CEP }
      SQL.Add('and rdb$relation_name not like ''TAB_IMG%'''); { Catálogo }
      SQL.Add('and rdb$relation_name not like ''TAB_FER%'''); { Feriado }
      SQL.Add('and rdb$relation_name not like ''TAB_MKP%'''); { Marketing Place }
      SQL.Add('and rdb$relation_name not like ''TAB_UCO%'''); { Unidades }

      { Parâmetros }
      SQL.Add('and rdb$relation_name not like ''TAB_PAR%''');
      SQL.Add('and rdb$relation_name not like ''TAB_REL%''');
      SQL.Add('and rdb$relation_name not like ''TAB_STA%''');
      SQL.Add('and rdb$relation_name not like ''TAB_TPO%''');

      { Fiscal }
      SQL.Add('and rdb$relation_name not like ''TAB_ALQ%''');
      SQL.Add('and rdb$relation_name not like ''TAB_NCM%''');
      SQL.Add('and rdb$relation_name not like ''TAB_CNA%''');

      SQL.Add('and rdb$relation_name not like ''TAB_GRD%''');
      SQL.Add('and rdb$relation_name not like ''TAB_NFE%''');
      SQL.Add('and rdb$relation_name not like ''TAB_PAI%''');

      SQL.Add('and rdb$relation_name not like ''VW%''' );
      SQL.Add('and rdb$relation_name not like ''IBE%''');

      SQL.Add('order by rdb$relation_name');
      ExecQuery;
    end;

    while not SQLEdicao.Eof do
    begin
      { Desativa Triggers }
      SBRodape.Panels[0].Text := 'Desativando Triggers da Tabela... '+Trim(SQLEdicao.Current.Vars[0].AsString);
      Application.ProcessMessages;

      with SQLPKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select rdb$trigger_name');
        SQL.Add('from   rdb$triggers');
        SQL.Add('where  rdb$relation_name = '''+Trim(SQLEdicao.Current.Vars[0].AsString)+'''');
        ExecQuery;
      end;
      while not SQLPKEdicao.Eof do
      begin
        if Pos('CHECK',Trim(SQLPKEdicao.Current.Vars[0].AsString)) = 0 then
           with SQLFKEdicao do
           begin
             Close;
             SQL.Clear;
             SQL.Add('ALTER TRIGGER '+Trim(SQLPKEdicao.Current.Vars[0].AsString)+' INACTIVE');
             ExecQuery;
           end;

        SQLPKEdicao.Next;
      end;

      SQLEdicao.Next;
    end;

    oCTransact(TEdicao);
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(Nil,'Falha ao tentar gravar procedimento na tabela '+Trim(SQLEdicao.Current.Vars[0].AsString) + ' !' + #13 + #13 +
                      E.Message);
    end;
  end;

  oAviso(handle,'Triggers desativadas com sucesso !');
end;

procedure TFrmPrincipal._AtualizaGenerators(ATabela: String; AGenerator: String = ''; ARestart: Boolean = False);
var
  AGEN_ID: Integer;
begin
  if not oEmpty(ATabela) then
     try
       AGEN_ID := 0;
       
       oOTransact(TConsulta);
       if not ARestart then
          with SQLConsulta do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT GEN_ID(' + AGenerator + ',0) FROM ' + ATabela);
            ExecQuery;

            AGEN_ID := Current.Vars[0].AsInteger;
          end;

       with SQLPKEdicao do
       begin
         Close;
         SQL.Clear;
         SQL.Add('ALTER SEQUENCE ' + AGenerator + ' RESTART WITH ' + IntToStr(AGEN_ID));
         ExecQuery;
       end;

       TEdicao.CommitRetaining;
     except
       {nothing}
     end;
end;

procedure TFrmPrincipal._AtivaTriggers(ATabela: String; ATrigger: String = '');
begin
  if not oEmpty(ATabela) then
     try
       with SQLPKEdicao do
       begin
         Close;
         SQL.Clear;
         SQL.Add('select rdb$trigger_name');
         SQL.Add('from   rdb$triggers');
         SQL.Add('where  rdb$relation_name = ''' + ATabela + '''');
         ExecQuery;
       end;

       while not SQLPKEdicao.Eof do
       begin
         if Pos('CHECK',Trim(SQLPKEdicao.Current.Vars[0].AsString)) = 0 then
         if (ATrigger = EmptyStr) or (ATrigger = Trim(SQLPKEdicao.Current.Vars[0].AsString)) then
             with SQLFKEdicao do
             begin
               Close;
               SQL.Clear;
               SQL.Add('ALTER TRIGGER ' + Trim(SQLPKEdicao.Current.Vars[0].AsString) + ' ACTIVE');
               ExecQuery;
             end;

         SQLPKEdicao.Next;
       end;

       TEdicao.CommitRetaining;
     except
       on E: Exception do
       begin
         oCTransact(TEdicao,ltRollback);
         oException(Nil,'Falha ao tentar ativar trigger ' + ATrigger + ' !' + #13 + #13 +
                         E.Message);
       end;
     end;
end;

procedure TFrmPrincipal._DesativaTriggers(ATabela: String; ATrigger: String = '');
begin
  if not oEmpty(ATabela) then
     try
       with SQLPKEdicao do
       begin
         Close;
         SQL.Clear;
         SQL.Add('select rdb$trigger_name');
         SQL.Add('from   rdb$triggers');
         SQL.Add('where  rdb$relation_name = ''' + ATabela + '''');
         ExecQuery;
       end;

       while not SQLPKEdicao.Eof do
       begin
         if Pos('CHECK',Trim(SQLPKEdicao.Current.Vars[0].AsString)) = 0 then
         if (ATrigger = EmptyStr) or (ATrigger = Trim(SQLPKEdicao.Current.Vars[0].AsString)) then
             with SQLFKEdicao do
             begin
               Close;
               SQL.Clear;
               SQL.Add('ALTER TRIGGER ' + Trim(SQLPKEdicao.Current.Vars[0].AsString) + ' INACTIVE');
               ExecQuery;
             end;

         SQLPKEdicao.Next;
       end;

       TEdicao.CommitRetaining;
     except
       on E: Exception do
       begin
         oCTransact(TEdicao,ltRollback);
         oException(Nil,'Falha ao tentar ativar trigger ' + ATrigger + ' !' + #13 + #13 +
                         E.Message);
       end;
     end;
end;

procedure TFrmPrincipal._AtutalizaTabelas(ATabela: String);
var
  d,o: word;
begin
  if Pos('192.168.0.199',BEDestino.Text) > 0 then
  oException(Nil,'Não é possível limpeza em banco conectado à rede !');

  if not DBDestino.TestConnected then
  oException(Nil,'Banco de dados de destino não está aberto !');

  if not DBOrigem.TestConnected then
  oException(Nil,'Banco de dados de origem não está aberto !');

  TDEdicao.Close;
  TDEdicao.TableName       := ATabela;
  TDEdicao.IndexFieldNames := 'ID';
  TDEdicao.Open;

  oOTransact(TConsulta );
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;

    if ATabela = 'TAB_PAR_SIS' then
    begin
      SQL.Add('SELECT PK.ID,PK.PAR_FANT AS FANTASIA,PK.PAR_FANT AS FANTASIA_ABREV,LEFT(PK.PAR_FANT,3) AS FANTASIA_SIGLA,PK.PAR_RAZA AS RAZAO,PK.PAR_FANT AS GRUPO,');
      SQL.Add('       1 AS GRP_CPA,1 AS GRP_PDV,1 AS GRP_FIN,1 AS GRP_FIS,');
      SQL.Add('       CURRENT_DATE AS DTFU,PK.PAR_CNPJ AS CNPJ ,PK.PAR_INSC AS IE,');
      SQL.Add('       PK.PAR_DDD   AS NUDD,PK.PAR_FONE AS NUTEL,PK.PAR_MAIL AS EMAIL,PK.PAR_SITE AS SITE,');
      SQL.Add('       0 AS IDLOG,PK.PAR_TLOG AS TPLOG,PK.PAR_LOGR AS NOLOG,PK.PAR_NUME AS NULOG,PK.PAR_COMP AS COLOG,');
      SQL.Add('       PK.PAR_CEP AS NUCEP,PK.PAR_BAI AS NOBAI,PK.PAR_CID AS NOCID,PK.PAR_CCID AS CMUN,PK.PAR_CUF AS CDUF,PK.PAR_UF AS SGUF');
      SQL.Add('FROM   PAR_SIS AS PK');
    end else

    if ATabela = 'TAB_COR' then
    begin
      SQL.Add('SELECT   PK.ID,COR_CCOR AS COR_ID,COR_DCOR AS DESCRICAO,COR_PREC AS PRECO');
      SQL.Add('FROM     TAB_COR AS PK');
    end else

    begin
      SQL.Add('SELECT   PK.*');
      SQL.Add('FROM ' + ATabela + ' AS PK');
    end;

    SQL.Add('ORDER BY PK.ID');
    ExecQuery;
  end;
  while not SQLConsulta.Eof do
  begin
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM ' + ATABELA);
      SQL.Add('WHERE  ID  = ''' + SQLConsulta.Current.ByName('ID').AsString + '''');
      ExecQuery;
    end;

    SBRodape.Panels[0].Text := 'Transferindo tabela de pagamentos código ...: ' + SQLConsulta.Current.ByName('ID').AsString;
    Application.ProcessMessages;

    if SQLEdicao.Eof then
    begin
      TDEdicao.Append;
      for d := 0 to TDEdicao.FieldCount - 1 do
      begin
        if TDEdicao.Fields[d].Required then
           TDEdicao.Fields[d].Value := 0;

        if (TDEdicao.Fields[d].DisplayName = 'IDEP') and (TDEdicao.Fields[d].Value = null) then
            TDEdicao.Fields[d].Value := 1 else

        if (TDEdicao.Fields[d].DisplayName = 'IDCA') and (TDEdicao.Fields[d].Value = null) then
            TDEdicao.Fields[d].Value := 0 else

        if (TDEdicao.Fields[d].DisplayName = 'DTCA') and (TDEdicao.Fields[d].Value = null) then
            TDEdicao.Fields[d].Value := NOW else

        if (TDEdicao.Fields[d].DisplayName = 'IDED') and (TDEdicao.Fields[d].Value = null) then
            TDEdicao.Fields[d].Value := 0 else

        if (TDEdicao.Fields[d].DisplayName = 'IDST') and (TDEdicao.Fields[d].Value = null) then
            TDEdicao.Fields[d].Value := 0 else

        if (TDEdicao.Fields[d].DisplayName = 'CDST') and (TDEdicao.Fields[d].Value = null) then
            TDEdicao.Fields[d].Value := 30 else

        if (TDEdicao.Fields[d].DisplayName = 'REST') and (TDEdicao.Fields[d].Value = null) then
            TDEdicao.Fields[d].Value := 'A' else

        if (TDEdicao.Fields[d].DisplayName = 'DEST') and (TDEdicao.Fields[d].Value = null) then
            TDEdicao.Fields[d].Value := 'ATIVO' else

        for o := 0 to SQLConsulta.FieldCount - 1 do
        { atualiza quando campos correspondem }

        if SQLConsulta.Current.Vars[o].Name = TDEdicao.Fields[d].DisplayName then
        begin
          if (SQLConsulta.Current.Vars[o].Name = 'ID') and (ATabela = 'TAB_PAG') then
          TDEdicao.FieldByName('CDPG').Value := SQLConsulta.Current.Vars[o].Value;

          if not SQLConsulta.Current.Vars[o].IsNull then
          TDEdicao.Fields[d].Value := SQLConsulta.Current.Vars[o].Value;

          Break;
        end;
      end;
      TDEdicao.Post;
    end;

    SQLConsulta.Next;
  end;
end;

procedure TFrmPrincipal.ImportarTabela1Click(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
  NewString := UPPERCASE(oRETMesExtenso(Date));
  ClickedOK := InputQuery('Tabela de Preços', 'Entre com o nome da tabela', NewString);
  NewString := Trim(NewString);

  if ((not ClickedOK) or (oEmpty(NewString))) then
       Abort;

  if oYesNo(handle,'Confirma atualização da tabela '+NewString+' ?') = mrNo then
     Abort;

  try
    try
      DBAccess.Connected := True;
    except
      raise exception.Create('Falha ao tentar abrir banco de dados !');
    end;

    try
      TAccess.Close;
      TAccess.TableName := NewString;
      TAccess.Open;
    except
      raise exception.Create('Falha ao tentar abrir a tabela '+NewString+' !');
    end;

    try
      oOTransact(TEdicao);
      while not TAccess.Eof do
      begin
        SBRodape.Panels[0].Text := 'Atualizando Artigo '+TAccessPRO_CART.AsString+' ...';
        Application.ProcessMessages;

        with SQLEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE CAD_PRO');
          SQL.Add('SET    PRO_PREC = '''+oStrTran(FloatToStr(TAccessPRO_PREC.AsFloat),',','.')+''',');
          SQL.Add('       PRO_PPRZ = '''+oStrTran(FloatToStr(TAccessPRO_PPRZ.AsFloat),',','.')+'''' );
          SQL.Add('WHERE  PRO_CART = '''+TAccessPRO_CART.AsString+'''');
          ExecQuery;
        end;

        TAccess.Next;
      end;
      oCTransact(TEdicao);
    except
      on E: Exception do
      begin
        oRTransact(TEdicao,ltRollback);
        oException(Nil,'Falha ao tentar importar tabela '+NewString+' !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    if TAccess.Active then
       TAccess.Close;
       
    if DBAccess.Connected then
       DBAccess.Connected := False;
  end;

  SBRodape.Panels[0].Text := EmptyStr;
  oAviso(handle,'Tabela '+NewString+' importada com sucesso !');
end;

procedure TFrmPrincipal.GerarTabela1Click(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
  NewString := oRETMesExtenso(Date);
  ClickedOK := InputQuery('Tabela de Preços', 'Entre com o nome da tabela', NewString);
  NewString := Trim(NewString);

  if ((not ClickedOK) or (oEmpty(NewString))) then
       Abort;

  if oYesNo(handle,'Gerar tabela TAB_PRC_ART ?') = mrNo then
     Abort;

  try
    SBRodape.Panels[0].Text := 'Aguarde, Gerando Tabela TAB_PRC_ART ...';
    Application.ProcessMessages;

    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM TAB_PRC_ART');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR IDG_TAB_PRC_ART TO 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('INSERT   INTO TAB_PRC_ART');
      SQL.Add('SELECT   0,CP.PRO_CDEP,'''+NewString+'''||');
      SQL.Add('         IIF(CP.PRO_PPRO > 0,''-PROMOÇÃO'',''''),''FOB'',');
      SQL.Add('         CP.PRO_CART,CP.PRO_PREC,CP.PRO_PPRZ,CP.PRO_PPRO,CP.PRO_DUNI,CP.PRO_UTIL,CP.PRO_LARG,CP.PRO_GRAM,CP.PRO_REND,');
      SQL.Add('         IIF(POSITION(CP.PRO_CCST IN ''1267'') > 0,''PRODUTO IMPORTADO'',''PRODUTO NACIONAL''),FLAG');
      SQL.Add('FROM     CAD_PRO AS CP');
      SQL.Add('WHERE    CP.PRO_CDEP = ''1''');
      SQL.Add('AND      CP.PRO_STAV = ''A''');
      SQL.Add('GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15');
      SQL.Add('ORDER BY CP.PRO_CART');
      ExecQuery;
    end;
    oCTransact(TEdicao);
  except
    on E: Exception do
    begin
      oRTransact(TEdicao,ltRollback);
      oException(Nil,'Falha ao tentar gerar tabela TAB_PRC_ART !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;

  SBRodape.Panels[0].Text := EmptyStr;
  oAviso(handle,'Tabela TAB_PRC_ART gerada com sucesso !');
end;

end.
