unit uPrincipal;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ExtCtrls, Mask, math, StrUtils,
  IniFiles, Printers, DateUtils, BoletoX_TLB, DB, Registry,
  IBCustomDataSet, IBQuery, IBDatabase, IBSQL, ComCtrls, dxCntner,
  dxEditor, dxEdLib, IBEvents, IBStoredProc,
  SyncObjs, superobject, uJSON, OleCtrls, comobj, ShellAPI;

type
  TFrmBoletos = class(TForm)
    BTNImprimirBoleto: TButton;
    BTNSalvarPDFBoleto: TButton;
    lblIdIntegracao: TLabel;
    edtIdImpressao: TEdit;
    lblImpressora: TLabel;
    cbbImpressora: TComboBox;
    lblTX2: TLabel;
    mmoTX2: TMemo;
    lblRetorno: TLabel;
    lblTempoDeResposta: TLabel;
    dlgOpenArqRet: TOpenDialog;
    dlgSalvarPDF: TSaveDialog;
    btnCarregarTx2: TButton;
    dlgOpenTx2: TOpenDialog;
    RGAmbiente: TRadioGroup;
    GroupBox1: TGroupBox;
    grpImpressao: TGroupBox;
    btnGerarTx2: TButton;
    mmoResposta: TMemo;
    GroupBox2: TGroupBox;
    btnGerarRemessa: TButton;
    btnUploadRetorno: TButton;
    btnConsultarRetornoProcessamento: TButton;
    edtProtocoloRetornoProcessamento: TEdit;
    btnConsultarMovimentacao: TButton;
    lblDataInicial: TLabel;
    medtDataInicial: TMaskEdit;
    lblDataFinal: TLabel;
    medtDataFinal: TMaskEdit;
    mmoMensagens: TMemo;
    lblMensagens: TLabel;
    btnEnviarEmail: TButton;
    Label4: TLabel;
    cbbTipoImpressao: TComboBox;
    btnSolicitarImpressaoLote: TButton;
    Label5: TLabel;
    edtProtocoloRetornoImpressaoLote: TEdit;
    btnImprimirLote: TButton;
    btnSalvarPDFLote: TButton;
    Label6: TLabel;
    GroupBox4: TGroupBox;
    btnConsultarProtocoloRemessaAlteracao: TButton;
    edtProtocoloRetornoRemessaAlteracao: TEdit;
    btnGerarBaixa: TButton;
    btnConsultarRemessaBaixada: TButton;
    edtProcotoloRemessaBaixada: TEdit;
    Label7: TLabel;
    Shape1: TShape;
    btnGerarRemessaAlteracaoValor: TButton;
    cbbTipoRemessaAlteracao: TComboBox;
    BTNConfig: TButton;
    SQLEdicao: TIBSQL;
    TEdicao: TIBTransaction;
    FBoletoX: TspdBoletoX;
    Titulo: TIBQuery;
    DTSTitulo: TDataSource;
    Label1: TLabel;
    BTNGera: TButton;
    TituloID: TLargeintField;
    TituloTITULOPARCELA: TSmallintField;
    TituloTITULONUMERODOCUMENTO: TIBStringField;
    TituloTITULOEMISSAOBOLETO: TIBStringField;
    TituloTITULODATAEMISSAO: TDateField;
    TituloTITULODATAVENCIMENTO: TDateField;
    TituloTITULOVALOR: TIBBCDField;
    TituloSACADOCODIGO: TIntegerField;
    TituloSACADONOME: TIBStringField;
    TituloSACADOCPFCNPJ: TIBStringField;
    TituloSACADOEMAIL: TIBStringField;
    TituloSACADOCELULAR: TIBStringField;
    TituloSACADOTELEFONE: TIBStringField;
    TituloSACADOENDERECOLOGRADOURO: TIBStringField;
    TituloSACADOENDERECONUMERO: TIBStringField;
    TituloSACADOENDERECOCEP: TIBStringField;
    TituloSACADOENDERECOBAIRRO: TIBStringField;
    TituloSACADOENDERECOCIDADE: TIBStringField;
    TituloSACADOENDERECOUF: TIBStringField;
    TituloSACADOENDERECOPAIS: TIBStringField;
    SBRodape: TStatusBar;
    BTNEmail: TButton;
    BTNDescarte: TButton;
    edtIdIntegracao: TEdit;
    Label3: TLabel;
    BTNImprime: TButton;
    cbPesquisa: TComboBox;
    TituloSACADOENDERECOCOMPLEMENTO: TIBStringField;
    TituloTITULOOCORRENCIA: TSmallintField;
    TituloDUPLICATAOCORRENCIA: TSmallintField;
    RGBanco: TRadioGroup;
    BTNConsulta: TButton;
    edtIdIntegracaoBaixa: TEdit;
    BTNConsultaBanco: TButton;
    BTNImprime2VIA: TButton;
    TituloTITULODATAPROTESTO: TDateField;
    cbPRNDIR: TComboBox;
    Label2: TLabel;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    EDCDNF: TdxMaskEdit;
    Label8: TLabel;
    LABusca: TLabel;
    Label9: TLabel;
    CBEmail: TComboBox;
    EDEmail: TdxMaskEdit;
    Label10: TLabel;
    TituloAPI_ID: TIBStringField;
    TituloAPI_ST: TIBStringField;
    TituloAPI_MT: TIBStringField;
    TituloAPI_CA: TIBStringField;
    TituloDEST: TIBStringField;
    TituloAPI_NN: TLargeintField;
    TituloAPI_DTED: TDateTimeField;
    TituloSACADOENDERECOTLOG: TIBStringField;
    TituloSACADOENDERECOLOGR: TIBStringField;
    TituloSACADOENDERECONRO: TIBStringField;
    function  ConverteErroClasse(aErroClasse: TErroClasse): string;
    procedure IncrementarNumeroDocumento;
    procedure BTNImprimirBoletoClick(Sender: TObject);
    procedure BTNSalvarPDFBoletoClick(Sender: TObject);
    procedure btnGerarRemessaClick(Sender: TObject);
    procedure btnUploadRetornoClick(Sender: TObject);
    procedure btnConsultarMovimentacaoClick(Sender: TObject);
    procedure btnCarregarTx2Click(Sender: TObject);
    procedure BTNConfigClick(Sender: TObject);
    procedure BTNEmailClick(Sender: TObject);
    procedure btnConsultarRetornoProcessamentoClick(Sender: TObject);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure btnSolicitarImpressaoLoteClick(Sender: TObject);
    procedure btnImprimirLoteClick(Sender: TObject);
    procedure btnSalvarPDFLoteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGerarRemessaAlteracaoVencimentoClick(Sender: TObject);
    procedure btnConsultarProtocoloRemessaAlteracaoClick(Sender: TObject);
    procedure btnGerarBaixaClick(Sender: TObject);
    procedure btnConsultarRemessaBaixadaClick(Sender: TObject);
    procedure BTNDescarteClick(Sender: TObject);
    procedure btnGerarRemessaAlteracaoValorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTNGeraClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BTNImprimeClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure RGBancoClick(Sender: TObject);
    procedure BTNConsultaClick(Sender: TObject);
    procedure cbbImpressoraChange(Sender: TObject);
    procedure RGAmbienteClick(Sender: TObject);
    procedure EDCDNFChange(Sender: TObject);
    procedure BTNConsultaBancoClick(Sender: TObject);
    procedure BTNImprime2VIAClick(Sender: TObject);
    procedure EDCDNFValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EDCDNFExit(Sender: TObject);
    procedure cbPesquisaChange(Sender: TObject);
  private
    RECPrincipal: TRECPrincipal;
    SLOcorrencia: TStringList;

    { Private declarations }
    procedure _Login(AIDUSER: Variant; AIDEP,ADEEP: String);
    procedure _ITResposta;
    procedure _IFResposta;
    procedure _Clear;
    procedure _Scroll;
    procedure _Gerajs;
    procedure _Incluijs;
    procedure _Remessa;
    procedure _Imprime(AVIA: Word; AAction: TValidateAction);
    procedure _Email;
    procedure _Descarta;
    procedure _Consulta(ADefaultPSQ: String = 'CON');

    procedure _PSQAPI(ATituloNumeroDocumento: String);
    procedure _PSQERP(ADefaultPSQ: String = 'CON';ADefaultAction: TDefaultAction = laClose);
 public
    FInicioReq: TDateTime;
    { Public declarations }

    procedure DoOnBoletoException(ASender: TObject; const aExceptionMessage: WideString);
    procedure DoOnBoletoProgress(ASender: TObject; const aProgressMessage: WideString);
  end;

var
  FrmBoletos: TFrmBoletos;
  CNPJSoftwareHouse      : String = '17287123000158';
  TokenSoftwareHouse     : String = '23200c0ce01abc0c4632ffb93047956a';
  CNPJCedente            : String = '47273917000123';
  CedenteContaNumero     : String = '';
  CedenteContaNumeroDV   : String = '';
  CedenteConvenioNumero  : String = '';
  CedenteCarteira        : String = '';
  CedenteContaCodigoBanco: String = '';
  CedenteIDG_BOLETO      : String = '';

  PATH_LOCAL,
  PATH_REDE,
  PATH_JSON,
  PATH_PDF_1VIA,
  PATH_PDF_2VIA,
  PATH_LOG: String;

implementation

uses bPrincipal, pLogin;

{$R *.dfm}

function ClientWindowProc(wnd: HWND; msg: Cardinal; wparam, lparam: Integer ): Integer; STDCall;
var
  Ponteiro: Pointer;
begin
  Ponteiro := Pointer(GetWindowLong(wnd,GWL_USERDATA));
  case msg of
       WM_NCCALCSIZE: if (GetWindowLong(wnd,GWL_STYLE) and (WS_HSCROLL or WS_VSCROLL)) <> 0 then
                      SetWindowLong(wnd,GWL_STYLE,GetWindowLong(wnd,GWL_STYLE) and Not (WS_HSCROLL or WS_VSCROLL));
  end;
  Result := CallWindowProc(Ponteiro,wnd,msg,wparam,lparam);
end;

procedure TFrmBoletos.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;

  if ClientHandle <> 0 then
     if (not (GetWindowLong(ClientHandle,GWL_USERDATA) <> 0)) then
              SetWindowLong(ClientHandle,GWL_USERDATA, SetWindowLong(ClientHandle, GWL_WNDPROC, integer(@ClientWindowProc)));

  CurrencyString    := 'R$';
  ThousandSeparator := '.';
  DecimalSeparator  := ',';

  Initialize(RECPrincipal);
  FillChar(RECPrincipal,SizeOf(RECPrincipal),0);

  SLOcorrencia := TStringList.Create;

  PATH_LOCAL := 'C:';
  PATH_REDE  := '\\SERVIDOR';

  PATH_JSON := '\Sheild\Boletos\Temp';
  PATH_LOG  := '\Sheild\Boletos\Logs';

  PATH_PDF_1VIA := '\Sheild\Boletos\PDF\1VIA';
  PATH_PDF_2VIA := '\Sheild\Boletos\PDF\2VIA';

  cbbImpressora.Items.Assign(Printer.Printers);
  cbbImpressora.ItemIndex := Printer.PrinterIndex;

  if FrmLogin.RECLogin.Selected then
     _Login(FrmLogin.RECLogin.ID,FrmLogin.RECLogin.IDEP,FrmLogin.RECLogin.DEEP);
end;

procedure TFrmBoletos.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if oEmpty(RECUsuarios.Id) then
     Close;
end;

procedure TFrmBoletos.FormActivate(Sender: TObject);
begin
  OnShow  := Nil;
  Caption := 'Emissor de Boletos: Versão ' + FBoletoX.Versao + ' - ' + FormatDateTime('dd/mm/yy hh:mm',(FileDateToDateTime(FileAge(ParamStr( 0 )))));

  try
    try if not DirectoryExists(PATH_JSON) then ForceDirectories(PATH_JSON);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar criar pasta '+PATH_JSON+' !'+#13+#13+
                                 'Error Code: '+E.Message+'.'+#13+
                                  Self.Caption+'.');
      end;
    end;

    try if not DirectoryExists(PATH_PDF_1VIA) then ForceDirectories(PATH_PDF_1VIA);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar criar pasta '+PATH_PDF_1VIA+' !'+#13+#13+
                                 'Error Code: '+E.Message+'.'+#13+
                                  Self.Caption+'.');
      end;
    end;

    try if not DirectoryExists(PATH_PDF_2VIA) then ForceDirectories(PATH_PDF_2VIA);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar criar pasta '+PATH_PDF_2VIA+' !'+#13+#13+
                                 'Error Code: '+E.Message+'.'+#13+
                                  Self.Caption+'.');
      end;
    end;

    try if not DirectoryExists(PATH_LOG) then ForceDirectories(PATH_LOG);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar criar pasta '+PATH_LOG+' !'+#13+#13+
                                 'Error Code: '+E.Message+'.'+#13+
                                  Self.Caption+'.');
      end;
    end;

    _PSQAPI('000000000');
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmBoletos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmBoletos.FormDestroy(Sender: TObject);
begin
  OnDestroy := Nil;
  try
    Screen.Cursor := crAppStart;

    try
      oFTransact(TConsulta);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                 'Error Code: '+E.Message+'.'      +#13+
                                  Self.Caption+'.');
      end;
    end;

    try
      Finalize(RECPrincipal);
      FillChar(RECPrincipal,SizeOf(RECPrincipal),0);

      if SLOcorrencia <> Nil then
         SLOcorrencia.Free;
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                 'Error Code: '+E.Message+'.'        +#13+
                                  Self.Caption+'.');
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    FrmBoletos    := Nil;
  end;
end;

procedure TFrmBoletos.FormResize(Sender: TObject);
begin
  if FrmBoletos <> Nil then
     Paint;
end;

procedure TFrmBoletos._Login(AIDUSER: Variant; AIDEP,ADEEP: String);
begin
  if (not oEmpty(AIDUSER)) and (not oEmpty(AIDEP)) and (oEmpty(RECParametros.DataBaseError)) then
  try
    with FBird do
    begin
      bExecParametros(AIDEP);
      bExecUsuarios(AIDUSER);
      bExecPrinter;
      bExecCaixa;
    end;

    { Preenchendo o rodapé do Form Principal }
    SBRodape.Width          := Screen.Width + 1;
    SBRodape.Panels[0].Text := RECUsuarios.Login + ' - ' + RECParametros.ServerHost;
  Finally
    FrmBoletos.Repaint;
  end;

  if (not oEmpty(RECUSuarios.API_Banco)) and (not oEmpty(RECUSuarios.API_Ambiente)) then
  begin
    RGAmbiente.ItemIndex := RGAmbiente.Items.IndexOf(RECUSuarios.API_Ambiente);
    RGBanco.ItemIndex    := RGBanco.Items.IndexOf(RECUSuarios.API_Banco);

    RGBanco.Tag    := RGBanco.ItemIndex;
    RGAmbiente.Tag := RGAmbiente.ItemIndex;
  end;
end;

procedure TFrmBoletos.EDCDNFValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if EDCDNF.Text  = '0' then
     EDCDNF.Text := EmptyStr;

  edtIdIntegracao.Enabled := (EDCDNF.Text = EmptyStr) or (RECUsuarios.Id = 0);
  _Clear;
end;

procedure TFrmBoletos.cbPesquisaChange(Sender: TObject);
begin
  BTNGera.Enabled        := (cbPesquisa.Text <> 'Todos');
  BTNImprime.Enabled     := (cbPesquisa.Text <> 'Todos');
  BTNImprime2VIA.Enabled := (cbPesquisa.Text <> 'Todos');
  cbPRNDIR.Enabled       := (cbPesquisa.Text <> 'Todos');
  CBEmail.Enabled        := (cbPesquisa.Text <> 'Todos');
  EDEmail.Enabled        := (cbPesquisa.Text <> 'Todos');
  BTNEmail.Enabled       := (cbPesquisa.Text <> 'Todos');
  BTNDescarte.Enabled    := (cbPesquisa.Text <> 'Todos');
end;

procedure TFrmBoletos.EDCDNFChange(Sender: TObject);
begin
  { Tipo de Pesquisa - Quando Todos, trata geral, através de CECDNF }

  if cbPesquisa.Text <> 'Todos' then
  begin
    cbPesquisa.Text :=  IFThen(Pos('-',EDCDNF.Text) > 0,'Título','Documento');
    cbPesquisa.Refresh;
  end;
end;

procedure TFrmBoletos.EDCDNFExit(Sender: TObject);
begin
  EDCDNF.Modified := False;
end;

procedure TFrmBoletos.BTNGeraClick(Sender: TObject);
var
  i: Word;
begin
  ActiveControl := Nil;
  oCAdobe;

  if oYesNo(handle,'Confirma Geração do Boleto ?') = mrNo then
     Abort;
     
  if (RGBanco.Tag <> RGBanco.ItemIndex) or (RGAmbiente.Tag <> RGAmbiente.ItemIndex) then
      if oYesNo(handle,'Gerar boleto de '+RGAmbiente.Items.Strings[RGAmbiente.ItemIndex]+' no banco '+RGBanco.Items.Strings[RGBanco.ItemIndex]+' ?') = mrno then
         Abort;

  if EDCDNF.Text = EmptyStr then
     oException(EDCDNF,cbPesquisa.Text+' não informado ou incorreto !');

  try
    SQLConsulta.Tag := 0;

    { Consulta Histórico }
    LABusca.Visible := True;
    _Clear;

    oRTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   PK.TITULO FROM '   + oREPZero('FIN_REC_BAN_BAI','_',RECParametros.Id,3) + ' AS PK');
      SQL.Add('WHERE    PK.TITULO LIKE ''' + EDCDNF.Text + '%''');
      SQL.Add('GROUP BY PK.TITULO');
      ExecQuery;
    end;

    while not SQLConsulta.Eof do
    begin
      _PSQAPI(SQLConsulta.Current.ByName('TITULO').AsString);
      SQLConsulta.Next;
    end;

    oRTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID FROM FIN_REC_LOG_API AS PK');
      SQL.Add('WHERE  PK.TITULO LIKE ''' + EDCDNF.Text + '%''');
      SQL.Add('AND   (PK.API_ST = ''DESCARTADO'' OR PK.API_ST = ''BAIXADO'')');
      ExecQuery;
    end;

    if SQLConsulta.Current.Vars[0].AsInteger = 0 then
    begin
      with SQLConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT   PK.ID,PK.TITULO,PK.DEST,ST.FIN_LIQ,ST.FIN_BLQ,FK.API_ID,FK.API_ST,FK.API_CA,FK.API_NN,FK.API_MT');
        SQL.Add('FROM ' + oREPZero('FIN_REC_BAN_BAI','_',RECParametros.Id,3) + ' AS PK');
        SQL.Add('JOIN     TAB_STA         AS ST ON (ST.ID     = PK.CDST  )');
        SQL.Add('JOIN     FIN_REC_LOG_API AS FK ON (FK.TITULO = PK.TITULO)');
        SQL.Add('WHERE    PK.TITULO LIKE ''' + EDCDNF.Text + '%''');

        { Verifica baixado pelo financeiro e descarta da pesquisa }
        SQL.Add('AND NOT  EXISTS (SELECT BX.ID FROM ' + oREPZero('FIN_REC_BAN_BAI','_',RECParametros.Id,3) + ' AS BX');
        SQL.Add('                 WHERE  BX.TITULO = PK.TITULO');
        SQL.Add('                 AND    BX.DEST   = ''BAIXADO'')');

        SQL.Add('ORDER BY PK.ID');
        ExecQuery;
      end;

      while not SQLConsulta.Eof do
      begin
        if (SQLConsulta.Current.ByName('DEST').AsString = 'BAIXADO') or (Pos(SQLConsulta.Current.ByName('API_ST').AsString,'BAIXADOREJEITADOFALHA') > 0) then
            SQLConsulta.Tag := 7;

        if SQLConsulta.Current.ByName('DEST').AsString <> 'BAIXADO' then
        if (Pos(SQLConsulta.Current.ByName('API_ST' ).AsString,'REGISTRADOEMITIDOSALVO') > 0) or (Pos('LIQ',SQLConsulta.Current.ByName('API_ST').AsString)  > 0) or
               (SQLConsulta.Current.ByName('FIN_LIQ').AsInteger > 0)                          or           (SQLConsulta.Current.ByName('FIN_BLQ').AsInteger > 0) then
        begin
          SQLConsulta.Tag := 8;
          Break;
        end;

        SQLConsulta.Next;
      end;

      if SQLConsulta.Tag = 7 then
      begin
        oErro(Handle,'Título já Emitido !' +#13+#13+
                     'Número '       + SQLConsulta.Current.ByName('TITULO').AsString + ' ' + SQLConsulta.Current.ByName('API_ST').AsString +#13+
                     'Carteira '     + SQLConsulta.Current.ByName('API_CA').AsString +#13+
                     'Nosso Número ' + SQLConsulta.Current.ByName('API_NN').AsString +#13+#13+
                                       SQLConsulta.Current.ByName('API_MT').AsString);

        SQLConsulta.Tag := oYesNo(Handle,'Gerando Boleto(s)' + #13+
                                         'Continuar ?');
      end;

      if SQLConsulta.Tag >= 7 then
         if SBRodape.Panels[2].Text <> 'Título não Encontrado !' then
         begin
           EDCDNF.SetFocus;
           Abort;
         end else
         SQLConsulta.Tag := 6;
    end;  
  finally
    oCTransact(TConsulta);

    LABusca.Visible := False;
    Application.ProcessMessages;
  end;

  try
    BTNGera.Enabled     := False;
    BTNConsulta.Enabled := False;
    BTNImprime.Enabled  := False;
  
    _Gerajs; _Incluijs;

    { Forçar Ordenação dos Títulos }
    edtIdIntegracao.Text := EmptyStr;

    SQLConsulta.Tag := 0;
    _Consulta;

    for i := 1 to 5 do
    begin
      SBRodape.Panels[2].Text := 'Consultando Título(s) '+IntToStr(i)+'º tentativa ...';
      Application.ProcessMessages;

      _Consulta('RET');
      if RECPrincipal.DEEV = EmptyStr then
         Break else
      if Pos(LeftStr(RECPrincipal.DEEV,5),'SALVOPENDE') > 0 then
         SleepEx(1000,False) else
         Abort;
    end;

    _Remessa;
    _Imprime(1,lvDelete);
  finally
    oCTransact(TConsulta);

    BTNGera.Enabled     := True;
    BTNConsulta.Enabled := True;
    BTNImprime.Enabled  := True;

    SBRodape.Panels[2].Text := EmptyStr;
    SBRodape.Panels[3].Text := EmptyStr;

    Application.ProcessMessages;
    EDCDNF.SetFocus;
  end;
end;

procedure TFrmBoletos.BTNConsultaClick(Sender: TObject);
begin
  ActiveControl := Nil;
  oCAdobe;

  _Clear;
  _Consulta;
end;

procedure TFrmBoletos.BTNImprimeClick(Sender: TObject);
begin
  ActiveControl := Nil;
  oCAdobe;

  if oYesNo(handle,'Imprimir Boleto Original ?') = mrNo then
     Abort;

  if EDCDNF.Text = EmptyStr then
     oException(EDCDNF,cbPesquisa.Text+' não informado ou incorreto !');

  BTNConsulta.Click;
  _Imprime(1,lvNone);    // 1VIA NÃO DELETAR (lvNone)
end;

procedure TFrmBoletos.BTNImprime2VIAClick(Sender: TObject);
begin
  ActiveControl := Nil;
  oCAdobe;

  if oYesNo(handle,'Imprimir 2º VIA atualizada ?') = mrNo then
     Abort;

  if EDCDNF.Text = EmptyStr then
     oException(EDCDNF,cbPesquisa.Text+' não informado ou incorreto !');

  BTNConsulta.Click;
  _Imprime(2,lvDelete);
end;

procedure TFrmBoletos.BTNEmailClick(Sender: TObject);
begin
  ActiveControl := Nil;
  oCAdobe;

  if oYesNo(handle,'Enviar Email ?') = mrYes then
     _Email;
end;

procedure TFrmBoletos.BTNDescarteClick(Sender: TObject);
begin
  ActiveControl := Nil;
  oCAdobe;

  if oYesNo(handle,'Descartar Boleto ?') = mrNo then
     Abort;

  if EDCDNF.Text = EmptyStr then
     oException(EDCDNF,cbPesquisa.Text+' não informado ou incorreto !');

  if edtIdIntegracao.Text = EmptyStr then
     oException(Nil,'Id de Integração não informado ou incorreto !');

   _Descarta;
end;

procedure TFrmBoletos.BTNConsultaBancoClick(Sender: TObject);
begin
  ActiveControl := Nil;
  oCAdobe;

  if oYesNo(handle,'Confirma Consulta Bancária ?') = mrNo then
     Abort;

  if EDCDNF.Text = EmptyStr then
     oException(EDCDNF,cbPesquisa.Text+' não informado ou incorreto !');

  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;

  SLOcorrencia.Clear;
  Application.ProcessMessages;

  try
    oRTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.TITULO FROM FIN_REC_LOG_API AS PK');
      SQL.Add('WHERE  PK.TITULO ' + IFThen(cbPesquisa.Text = 'Todos',' >= ',' LIKE ') + '''' + EDCDNF.Text + IFThen(cbPesquisa.Text = 'Todos','','%') + '''');
      SQL.Add('GROUP BY PK.TITULO');
      SQL.Add('ORDER BY TITULO');
      ExecQuery;

      while not Eof do
      begin
        if cbPesquisa.Text = 'Todos' then
        begin
          EDCDNF.Text := Current.Vars[0].AsString;
          EDCDNF.Refresh;
          
          mmoResposta.Lines.Clear;
          mmoResposta.Refresh;
        end;

        _PSQAPI(Current.Vars[0].AsString);
        next;
      end;

      if RECPrincipal.CDEV <> EmptyStr then
         oException(Nil,'Atenção !' +#13+
                        'Título Nº '+RECPrincipal.CDEV+' '+RECPrincipal.DEEV+'.');
    end;
  finally
    oCTransact(TConsulta);
  end;
end;

procedure TFrmBoletos.RGBancoClick(Sender: TObject);
begin
  if RGBanco.ItemIndex = 0 then
  begin
    CedenteContaNumero      := '09570';
    CedenteContaNumeroDV    := '4';
    CedenteConvenioNumero   := '8317095704';
    CedenteCarteira         := '109';
    CedenteContaCodigoBanco := '341';
    CedenteIDG_BOLETO       := 'IDG_BOLETO_ITAU';
  end else
  if RGBanco.ItemIndex = 1 then
  begin
    CedenteContaNumero      := '426867';
    CedenteContaNumeroDV    := '5';
    CedenteConvenioNumero   := '426867';
    CedenteCarteira         := '109';
    CedenteContaCodigoBanco := '653';
    CedenteIDG_BOLETO       := 'IDG_BOLETO_VOITER';
  end else
  if RGBanco.ItemIndex = 2 then
  begin
    if RECParametros.Id = 6 then
    begin
      CedenteContaNumero      := '0102529';
      CedenteContaNumeroDV    := '5';
      CedenteConvenioNumero   := '5551462';
      CedenteCarteira         := '09';
      CedenteContaCodigoBanco := '237';
      CedenteIDG_BOLETO       := 'IDG_BOLETO_BRADESCO';
    end else
    begin
      CedenteContaNumero      := '51343';
      CedenteContaNumeroDV    := '1';
      CedenteConvenioNumero   := '0039868';
      CedenteCarteira         := '19';
      CedenteContaCodigoBanco := '237';
      CedenteIDG_BOLETO       := 'IDG_BOLETO_BRADESCO';
    end;
  end else
  if RGBanco.ItemIndex = 3 then
  begin
    CedenteContaNumero      := '202347';
    CedenteContaNumeroDV    := '4';
    CedenteConvenioNumero   := '3356883';
    CedenteCarteira         := '17';
    CedenteContaCodigoBanco := '001';
    CedenteIDG_BOLETO       := 'IDG_BOLETO_BANCO_BRASIL';
  end;

  BTNConfig.Click;
end;

procedure TFrmBoletos.RGAmbienteClick(Sender: TObject);
begin
  if (RGAmbiente.ItemIndex = 1) and (RECUsuarios.Id > 0) then
  begin
    RGAmbiente.ItemIndex := 0;
    oException(Nil,'Ambiente de emissão não autorizado para esse usuário !');
  end;
  BTNConfig.Click;
end;

procedure TFrmBoletos.btnCarregarTx2Click(Sender: TObject);
var
   arq: string;
begin
  mmoTX2.Lines.Clear;
  mmoTX2.Refresh;
  
  dlgOpenTx2.InitialDir := ExtractFilePath(ParamStr(0)+ 'INCLUIRBOLETO.tx2');
  if dlgOpenTx2.Execute then
  begin
    mmoTX2.Lines.LoadFromFile(dlgOpenTx2.FileName);
    arq:= dlgOpenTx2.FileName
  end;
end;

procedure TFrmBoletos.btnConsultarMovimentacaoClick(Sender: TObject);
var
  _ConsMovList: IspdRetConsultarMovimentacaoLista;
  _ConsMovItem: IspdRetConsultarItem;

  _DataInicial, _DataFinal: TDateTime;
  i, j: Integer;
begin
  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;

  _DataInicial := StrToDate(medtDataInicial.Text);
  _DataFinal := StrToDate(medtDataFinal.Text);
  _ITResposta;
  _ConsMovList := FBoletoX.ConsultarMovimentacao(_DataInicial, _DataFinal);
  _IFResposta;

  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;
  mmoResposta.Lines.Add('.:: CONSULTAR MOVIMENTAÇÃO ::.');
  mmoResposta.Lines.Add('Mensagem: ' + _ConsMovList.Mensagem);
  mmoResposta.Lines.Add('Status: '   + _ConsMovList.Status);
  mmoResposta.Lines.Add('');

  for i := 0 to _ConsMovList.Count - 1 do
  begin
    _ConsMovItem := _ConsMovList.Item[i];
    mmoResposta.Lines.Add('ITEM: ' + IntToStr(i+1));
    mmoResposta.Lines.Add('IdIntegracao: ' + _ConsMovItem.IdIntegracao);
    mmoResposta.Lines.Add('');
    mmoResposta.Lines.Add('CEDENTE:');
    mmoResposta.Lines.Add('Agencia: ' + _ConsMovItem.CedenteAgencia);
    mmoResposta.Lines.Add('AgenciaDV: ' + _ConsMovItem.CedenteAgenciaDV);
    mmoResposta.Lines.Add('Código Banco: ' + _ConsMovItem.CedenteCodigoBanco);
    mmoResposta.Lines.Add('Carteira: ' + _ConsMovItem.CedenteCarteira);
    mmoResposta.Lines.Add('Conta: ' + _ConsMovItem.CedenteConta);
    mmoResposta.Lines.Add('Numero Convênio: ' + _ConsMovItem.CedenteNumeroConvenio);
    mmoResposta.Lines.Add('');
    mmoResposta.Lines.Add('TÍTULO:');
    mmoResposta.Lines.Add('Nosso Numero: ' + _ConsMovItem.TituloNossoNumero);
    mmoResposta.Lines.Add('NumeroDocumento: ' + _ConsMovItem.TituloNumeroDocumento);
    mmoResposta.Lines.Add('Valor Desconto: ' + FloatToStr(_ConsMovItem.TituloValorDesconto));
    mmoResposta.Lines.Add('Valor Outros Acrescimos: ' + FloatToStr(_ConsMovItem.TituloValorOutrosAcrescimos));
    mmoResposta.Lines.Add('Valor Abatimento: ' + FloatToStr(_ConsMovItem.TituloValorAbatimento));
    mmoResposta.Lines.Add('');

    if _ConsMovItem.TituloOcorrencias <> nil then
    begin
      mmoResposta.Lines.Add('  OCORRÊNCIAS:');
      for j := 0 to _ConsMovItem.TituloOcorrencias.Count - 1 do
      begin
        mmoResposta.Lines.Add('Código: '   + IntToStr(j+1) + ': ' + _ConsMovItem.TituloOcorrencias.Item[j].Codigo);
        mmoResposta.Lines.Add('Mensagem: ' + IntToStr(j+1) + ': ' + _ConsMovItem.TituloOcorrencias.Item[j].Mensagem);
      end;
      mmoResposta.Lines.Add('');
    end;

    mmoResposta.Lines.Add('ERRO:');
    mmoResposta.Lines.Add('Mensagem: ' + _ConsMovItem.Situacao);
    mmoResposta.Lines.Add('');
  end;
end;

procedure TFrmBoletos.btnConsultarRemessaBaixadaClick(Sender: TObject);
var
  _RetornoConsultarBaixa: IspdRetConsultarRemessaBaixaLista;
  _RetornoConsultarBaixaItem: IspdRetConsultarRemessaBaixaItem;
  i, j: Integer;
begin
  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;

  _ITResposta;
  _RetornoConsultarBaixa := FBoletoX.ConsultarRemessaBaixa(edtProcotoloRemessaBaixada.Text);
  _IFResposta;

  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;
  mmoResposta.Lines.Add('.:: CONSULTA BAIXA ::.');
  mmoResposta.Lines.Add('Mensagem: ' + _RetornoConsultarBaixa.Mensagem);
  mmoResposta.Lines.Add('Status: '   + _RetornoConsultarBaixa.Status);
  mmoResposta.Lines.Add('Situação: ' + _RetornoConsultarBaixa.Situacao);
  if AnsiSameText(_RetornoConsultarBaixa.Status, 'ERRO') then
    mmoResposta.Lines.Add('ErroClasse: ' + ConverteErroClasse(_RetornoConsultarBaixa.ErroClasse));
  mmoResposta.Lines.Add('');

  for i := 0 to _RetornoConsultarBaixa.Count - 1 do
  begin
    _RetornoConsultarBaixaItem := _RetornoConsultarBaixa.Item[i];
    mmoResposta.Lines.Add('ITEM: ' + IntToStr(i+1));
    mmoResposta.Lines.Add('  Remessa: ' + _RetornoConsultarBaixaItem.Remessa);
  //  _remessa.Text := _RetornoConsultarBaixaItem.Remessa;
  //  _remessa.SaveToFile('c:\remessa.txt');
    mmoResposta.Lines.Add('  Banco: ' + _RetornoConsultarBaixaItem.Banco);
    mmoResposta.Lines.Add('  Conta: ' + _RetornoConsultarBaixaItem.Conta);
    mmoResposta.Lines.Add('  Convenio: ' + _RetornoConsultarBaixaItem.Convenio);
    mmoResposta.Lines.Add('  Erro: ' + _RetornoConsultarBaixaItem.Erro);
    mmoResposta.Lines.Add('  ErroClasse: ' + ConverteErroClasse(_RetornoConsultarBaixaItem.ErroClasse));

   for j := 0 to _RetornoConsultarBaixaItem.Titulos.Count-1 do
    begin
      mmoResposta.Lines.Add('  IdIntegracao ' + IntToStr(j+1) + ': ' + _RetornoConsultarBaixaItem.Titulos.Item[j]);
    end;

   mmoResposta.Lines.Add('');
  end;
end;

procedure TFrmBoletos.btnConsultarRetornoProcessamentoClick(Sender: TObject);
var
  _RetornoConsultarProcessamento: IspdRetConsultarRetornoProcessamento;
  _RetornoConsultarProcessamentoItem: IspdRetConsultarRetornoProcessamentoItem;
  i: Integer;
begin
  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;

  _ITResposta;
  _RetornoConsultarProcessamento := FBoletoX.ConsultaRetornoProcessamento(edtProtocoloRetornoProcessamento.Text);
  _IFResposta;

  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;
  mmoResposta.Lines.Add('### CONSULTA RETORNO PROCESSAMENTO ###');
  mmoResposta.Lines.Add('Mensagem: ' + _RetornoConsultarProcessamento.Mensagem);
  mmoResposta.Lines.Add('Status: '   + _RetornoConsultarProcessamento.Status);
  mmoResposta.Lines.Add('Situação: ' + _RetornoConsultarProcessamento.Situacao);
  
  if AnsiSameText(_RetornoConsultarProcessamento.Status, 'ERRO') then
    mmoResposta.Lines.Add('ErroClasse: ' + ConverteErroClasse(_RetornoConsultarProcessamento.ErroClasse));
  mmoResposta.Lines.Add('');

  for i := 0 to _RetornoConsultarProcessamento.Count - 1 do
  begin
    _RetornoConsultarProcessamentoItem := _RetornoConsultarProcessamento.Titulos[i];

    mmoResposta.Lines.Add('TITULO: ' + IntToStr(i+1));
    mmoResposta.Lines.Add('  idIntegracao: ' + _RetornoConsultarProcessamentoItem.IdIntegracao);
    mmoResposta.Lines.Add('');
  end;
end;

procedure TFrmBoletos.btnEnviarEmailClick(Sender: TObject);
var
  _BoletoList: IspdRetEnvioEmail;
begin
  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;

  _ITResposta;
  _BoletoList := FBoletoX.EnviarEmail(mmoTX2.Text);
  _IFResposta;

  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;
  mmoResposta.Lines.Add('.:: E-Mail Boleto ::.');
  mmoResposta.Lines.Add('');
  mmoResposta.Lines.Add('Mensagem: ' + _BoletoList.Mensagem);
  mmoResposta.Lines.Add('Status: '   + _BoletoList.Status);

  if AnsiSameText(_BoletoList.Status, 'ERRO') then
    mmoResposta.Lines.Add('ErroClasse: ' + ConverteErroClasse(_BoletoList.ErroClasse));
  mmoResposta.Lines.Add('');

  mmoResposta.SelStart  := 1;
  mmoResposta.SelLength := 1;
end;

procedure TFrmBoletos.btnGerarRemessaClick(Sender: TObject);
var
  _RemessaList: IspdRetGerarRemessaLista;
  _RemessaItem: IspdRetGerarRemessaItem;
  i, j: Integer;
  conteudoRemessa: TStringList;
begin
  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;

  conteudoRemessa := TStringList.Create;                       // ---
  try
    _ITResposta;
    _RemessaList := FBoletoX.GerarRemessa(edtIdIntegracao.Text);
    _IFResposta;

    mmoResposta.Lines.Clear;
    mmoResposta.Refresh;
    mmoResposta.Lines.Add('.:: GERAR REMESSA ::.');
    mmoResposta.Lines.Add('Mensagem: ' + _RemessaList.Mensagem);
    mmoResposta.Lines.Add('Status: '   + _RemessaList.Status);
    mmoResposta.Lines.Add('');

    for i := 0 to _RemessaList.Count - 1 do
    begin
      _RemessaItem := _RemessaList.Item[i];
      mmoResposta.Lines.Add('ITEM: ' + IntToStr(i+1));
      mmoResposta.Lines.Add('  Remessa: ' + _RemessaItem.Remessa);
      mmoResposta.Lines.Add('  Banco: ' + _RemessaItem.Banco);
      mmoResposta.Lines.Add('  Conta: ' + _RemessaItem.Conta);
      mmoResposta.Lines.Add('  Erro: ' + _RemessaItem.Erro);

      conteudoRemessa.Text := _RemessaItem.Remessa ;               //    |--> Salva o conteúdo da remessa em um arquivo texto
      conteudoRemessa.SaveToFile('C:\Temp\conteudoRemessa.txt');   // ---

      for j := 0 to _RemessaItem.Titulos.Count-1 do
      begin
        mmoResposta.Lines.Add('  IdIntegracao ' + IntToStr(j+1) + ': ' + _RemessaItem.Titulos.Item[j]);
      end;

      mmoResposta.Lines.Add('');
    end;
  finally
    conteudoRemessa.Free;
  end;
end;

procedure TFrmBoletos.btnImprimirLoteClick(Sender: TObject);
var
  _Impressao: IspdRetConsultarLoteImpressao;
begin
  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;

  _ITResposta;
  _Impressao := FBoletoX.ConsultarLoteImpressao(edtProtocoloRetornoImpressaoLote.Text, cbbImpressora.Text);
  _IFResposta;

  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;
  mmoResposta.Lines.Add('.:: CONSULTAR PROTOCOLO LOTE IMPRESSÃO ::.');
  mmoResposta.Lines.Add('Mensagem: ' + _Impressao.Mensagem);
  mmoResposta.Lines.Add('Status: '   + _Impressao.Status);
  
  if AnsiSameText(_Impressao.Status, 'ERRO') then
    mmoResposta.Lines.Add('ErroClasse: ' + ConverteErroClasse(_Impressao.ErroClasse));
  mmoResposta.Lines.Add('');
end;

procedure TFrmBoletos.btnGerarRemessaAlteracaoValorClick(Sender: TObject);
var
  _GerarResposta: IspdRetGerarRemessaAlteracao;
begin
  mmoResposta.Lines.Clear;
  Application.ProcessMessages;

  if cbbTipoRemessaAlteracao.ItemIndex = 0 then
  begin
    _GerarResposta := FBoletoX.GerarRemessaAlteracao('0', mmoTX2.Text); //Tipo "1" indica a alteração de vencimento
    mmoResposta.Lines.Add('.:: Gerar alteração de Vencimento ::.');
  end
  else
  begin
    _GerarResposta := FBoletoX.GerarRemessaAlteracao('1', mmoTX2.Text);  //Tipo "1" indica a alteração de valor
    mmoResposta.Lines.Add('.:: Gerar alteração de Valor ::.')
  end ;


  if _GerarResposta.Protocolo <> EmptyStr then
     edtProtocoloRetornoRemessaAlteracao.Text := _GerarResposta.Protocolo;

  mmoResposta.Lines.Add('Mensagem: '  + _GerarResposta.Mensagem);
  mmoResposta.Lines.Add('Status: '    + _GerarResposta.Status);
  mmoResposta.Lines.Add('Protocolo: ' + _GerarResposta.Protocolo);

  if AnsiSameText(_GerarResposta.Status, 'ERRO') then
    mmoResposta.Lines.Add('ErroClasse: ' + ConverteErroClasse(_GerarResposta.ErroClasse));
  mmoResposta.Lines.Add('');
end;

procedure TFrmBoletos.BTNConfigClick(Sender: TObject);
begin
  if (RGBanco.ItemIndex = -1) or (RGAmbiente.ItemIndex = -1) then
     Exit;
     
  mmoResposta.Lines.Clear;
  mmoTX2.Lines.Clear;

  if rgAmbiente.ItemIndex = 0 then
  begin
    FBoletoX.Config.URL     := 'https://cobrancabancaria.tecnospeed.com.br';
    SBRodape.Panels[1].Text := 'Servidor: https://cobrancabancaria.sheild.'+LOWERCASE(RGBanco.Items.Strings[RGBanco.ItemIndex])+'.com.br';
  end else
  begin
    FBoletoX.Config.URL     := 'http://homologacao.plugboleto.com.br:8080'; //'http://homologacao.cobrancabancaria.tecnospeed.com.br:8080';
    SBRodape.Panels[1].Text := 'Servidor: http://homologacao.sheild.'+LOWERCASE(RGBanco.Items.Strings[RGBanco.ItemIndex])+'.com.br:8080';
  end;

  FBoletoX.ConfigurarSoftwareHouse(CNPJSoftWareHouse,TokenSoftWareHouse);
  FBoletoX.Config.CedenteCpfCnpj := CNPJCedente;
  FBoletoX.OnException := DoOnBoletoException;
  FBoletoX.OnProgress  := DoOnBoletoProgress;
  FBoletoX.Config.SalvarLogs := True;

  BTNConfig.Tag := 1;
end;

procedure TFrmBoletos.BTNImprimirBoletoClick(Sender: TObject);
var
  _Impressao: IspdRetImprimir;
begin
  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;

  _ITResposta;
  _Impressao := FBoletoX.Imprimir(edtIdImpressao.Text, cbbImpressora.Text);
  _IFResposta;

  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;
  mmoResposta.Lines.Add('.:: IMPRIMIR BOLETO ::.');
  mmoResposta.Lines.Add('Mensagem: ' + _Impressao.Mensagem);
  mmoResposta.Lines.Add('Status: '   + _Impressao.Status);
  mmoResposta.Lines.Add('');
end;

procedure TFrmBoletos.BTNSalvarPDFBoletoClick(Sender: TObject);
var
  _SalvarPDF: IspdRetSalvarPDF;
begin
  if dlgSalvarPDF.Execute then
  begin
    mmoResposta.Lines.Clear;
    mmoResposta.Refresh;

    _ITResposta;
    _SalvarPDF := FBoletoX.SalvarPDF(edtIdImpressao.Text, dlgSalvarPDF.FileName);
    _IFResposta;

    mmoResposta.Lines.Clear;
    mmoResposta.Refresh;
    mmoResposta.Lines.Add('.:: SALVANDO PDF ::.');
    mmoResposta.Lines.Add('Mensagem: ' + _SalvarPDF.Mensagem);
    mmoResposta.Lines.Add('Status: ' + _SalvarPDF.Status);
    mmoResposta.Lines.Add('');
  end;
end;

procedure TFrmBoletos.btnSalvarPDFLoteClick(Sender: TObject);
var
  _SalvarPDFLote: IspdRetSalvarLoteImpressaoPDF;
begin
 if dlgSalvarPDF.Execute then
 begin
   mmoResposta.Lines.Clear;
   mmoResposta.Refresh;

   _ITResposta;
   _SalvarPDFLote := FBoletoX.SalvarLoteImpressaoPDF(edtProtocoloRetornoImpressaoLote.Text, dlgSalvarPDF.FileName);
   _IFResposta;

   mmoResposta.Lines.Clear;
   mmoResposta.Refresh;
   mmoResposta.Lines.Add('.:: CONSULTAR PROTOCOLO LOTE IMPRESSÃO ::.');
   mmoResposta.Lines.Add('Mensagem: ' + _SalvarPDFLote.Mensagem);
   mmoResposta.Lines.Add('Status: '   + _SalvarPDFLote.Status);

   if AnsiSameText(_SalvarPDFLote.Status, 'ERRO') then
     mmoResposta.Lines.Add('ErroClasse: ' + ConverteErroClasse(_SalvarPDFLote.ErroClasse));
   mmoResposta.Lines.Add('');
  end;
end;

procedure TFrmBoletos.btnSolicitarImpressaoLoteClick(Sender: TObject);
var
  _ImprimirLoteList: IspdRetImprimirLote;
  tipoImpressao : string;
begin
    mmoResposta.Lines.Clear;
    mmoResposta.Refresh;

    if cbbTipoImpressao.ItemIndex = 0 then        // impressão em modo normal
      tipoImpressao := '0'
    else if cbbTipoImpressao.ItemIndex = 1 then   // impressão em modo carne duplo
      tipoImpressao := '1'
    else if cbbTipoImpressao.ItemIndex = 2 then   // impressão em modo carne triplo
      tipoImpressao := '2'
    else tipoImpressao := '99';                   // impressão em modo personalizado


    _ITResposta;
    _ImprimirLoteList := FBoletoX.ImprimirLote(edtIdImpressao.Text, tipoImpressao);
    _IFResposta;

    if _ImprimirLoteList.Protocolo <> EmptyStr then
       edtProtocoloRetornoImpressaoLote.Text := _ImprimirLoteList.Protocolo;

    mmoResposta.Lines.Clear;
    mmoResposta.Refresh;

    mmoResposta.Lines.Add('.:: IMPRESSÃO EM LOTE ::.');
    mmoResposta.Lines.Add('Mensagem: '  + _ImprimirLoteList.Mensagem);
    mmoResposta.Lines.Add('Status: '    + _ImprimirLoteList.Status);
    mmoResposta.Lines.Add('Protocolo: ' + _ImprimirLoteList.Protocolo);

    if AnsiSameText(_ImprimirLoteList.Status, 'ERRO') then
    begin
      mmoResposta.Lines.Add('ErroClasse: ' + ConverteErroClasse(_ImprimirLoteList.ErroClasse));
    end;
    mmoResposta.Lines.Add('');
end;

procedure TFrmBoletos.btnUploadRetornoClick(Sender: TObject);
var
  _UploadRetornoList: IspdRetProcessarRetorno;
  _ConteudoArqRet: WideString;
begin
  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;

  _ITResposta;

  dlgOpenArqRet.InitialDir := ExtractFilePath(ParamStr(0));

  if dlgOpenArqRet.Execute then
  begin
    mmoTX2.Lines.LoadFromFile (dlgOpenArqRet.FileName);
    _ConteudoArqRet:= mmoTX2.Text;
  end;

  _UploadRetornoList := FBoletoX.ProcessarRetorno(_ConteudoArqRet); //Passar sempre o conteúdo do arquivo, e não apenas o caminho
  _IFResposta;

  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;
  mmoResposta.Lines.Add('### UPLOAD RETORNO ###');
  mmoResposta.Lines.Add('Mensagem: '  + _UploadRetornoList.Mensagem);
  mmoResposta.Lines.Add('Status: '    + _UploadRetornoList.Status);
  mmoResposta.Lines.Add('Protocolo: ' + _UploadRetornoList.Protocolo);

  if AnsiSameText(_UploadRetornoList.Status, 'ERRO') then
    mmoResposta.Lines.Add('ErroClasse: ' + ConverteErroClasse(_UploadRetornoList.ErroClasse));
  mmoResposta.Lines.Add('');
end;

procedure TFrmBoletos.btnGerarBaixaClick(Sender: TObject);
var
  _GerarResposta: IspdRetGerarRemessaBaixa;
begin
  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;

  _ITResposta;
  _GerarResposta := FBoletoX.GerarRemessaBaixa(Trim(LeftStr(edtIdIntegracaoBaixa.Text,Length(edtIdIntegracaoBaixa.Text) - IFThen(Pos(',',edtIdIntegracaoBaixa.Text) = 0,0,1))));
  _IFResposta;

  if _GerarResposta.Protocolo <> EmptyStr then
     edtProcotoloRemessaBaixada.Text := _GerarResposta.Protocolo;

  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;
  mmoResposta.Lines.Add('.:: GERAR BAIXA ::.');
  mmoResposta.Lines.Add('Mensagem: '  + _GerarResposta.Mensagem);
  mmoResposta.Lines.Add('Status: '    + _GerarResposta.Status);
  mmoResposta.Lines.Add('Protocolo: ' + _GerarResposta.Protocolo);

  if AnsiSameText(_GerarResposta.Status, 'ERRO') then
     mmoResposta.Lines.Add('ErroClasse: ' + ConverteErroClasse(_GerarResposta.ErroClasse));
  mmoResposta.Lines.Add('');
end;

procedure TFrmBoletos.btnGerarRemessaAlteracaoVencimentoClick(Sender: TObject);
var
  _GerarResposta: IspdRetGerarRemessaAlteracao;
begin
  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;

  _ITResposta;
  _GerarResposta := FBoletoX.GerarRemessaAlteracao('0', mmoTX2.Text);   //Tipo "0" indica a alteração de vencimento
  _IFResposta;

  if _GerarResposta.Protocolo <> EmptyStr then
     edtProtocoloRetornoRemessaAlteracao.Text := _GerarResposta.Protocolo;

  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;
  mmoResposta.Lines.Add('.:: Gerar alteração de vencimento ::.');
  mmoResposta.Lines.Add('Mensagem: '  + _GerarResposta.Mensagem);
  mmoResposta.Lines.Add('Status: '    + _GerarResposta.Status);
  mmoResposta.Lines.Add('Protocolo: ' + _GerarResposta.Protocolo);

  if AnsiSameText(_GerarResposta.Status, 'ERRO') then
     mmoResposta.Lines.Add('ErroClasse: ' + ConverteErroClasse(_GerarResposta.ErroClasse));
  mmoResposta.Lines.Add('');
end;

procedure TFrmBoletos.btnConsultarProtocoloRemessaAlteracaoClick(Sender: TObject);
var
  _RetornoConsultarAlteracao: IspdRetConsultarRemessaAlteracaoLista;
  _RetornoConsultarAlteracaoItem: IspdRetConsultarRemessaAlteracaoItem;
  i, j: Integer;
begin
  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;

  _ITResposta;
  _RetornoConsultarAlteracao := FBoletoX.ConsultarRemessaAlteracao(edtProtocoloRetornoRemessaAlteracao.Text);
  _IFResposta;

  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;
  mmoResposta.Lines.Add('.:: CONSULTA ALTERACAO ::.');
  mmoResposta.Lines.Add('Mensagem: ' + _RetornoConsultarAlteracao.Mensagem);
  mmoResposta.Lines.Add('Status: '   + _RetornoConsultarAlteracao.Status);
  mmoResposta.Lines.Add('Situação: ' + _RetornoConsultarAlteracao.Situacao);

  if AnsiSameText(_RetornoConsultarAlteracao.Status, 'ERRO') then
    mmoResposta.Lines.Add('ErroClasse: ' + ConverteErroClasse(_RetornoConsultarAlteracao.ErroClasse));
  mmoResposta.Lines.Add('');

  for i := 0 to _RetornoConsultarAlteracao.Count - 1 do
  begin
    _RetornoConsultarAlteracaoItem := _RetornoConsultarAlteracao.Item[i];
    mmoResposta.Lines.Add('ITEM: ' + IntToStr(i+1));
    mmoResposta.Lines.Add('  Remessa: ' + _RetornoConsultarAlteracaoItem.Remessa);
   //  _remessa.Text := _RetornoConsultarAlteracaoItem.Remessa;
   //  _remessa.SaveToFile('c:\remessa.txt');
    mmoResposta.Lines.Add('  Banco: ' + _RetornoConsultarAlteracaoItem.Banco);
    mmoResposta.Lines.Add('  Conta: ' + _RetornoConsultarAlteracaoItem.Conta);
    mmoResposta.Lines.Add('  Convenio: ' + _RetornoConsultarAlteracaoItem.Convenio);
    mmoResposta.Lines.Add('  Erro: ' + _RetornoConsultarAlteracaoItem.Erro);
    mmoResposta.Lines.Add('  ErroClasse: ' + ConverteErroClasse(_RetornoConsultarAlteracaoItem.ErroClasse));

    for j := 0 to _RetornoConsultarAlteracaoItem.Titulos.Count-1 do
    begin
      mmoResposta.Lines.Add('  IdIntegracao ' + IntToStr(j+1) + ': ' + _RetornoConsultarAlteracaoItem.Titulos.Item[j]);
    end;

    mmoResposta.Lines.Add('');
  end;
end;

procedure TFrmBoletos.DoOnBoletoException(ASender: TObject;
  const aExceptionMessage: WideString);
begin
  oErro(Application.Handle,aExceptionMessage);
end;

procedure TFrmBoletos.DoOnBoletoProgress(ASender: TObject;
  const aProgressMessage: WideString);
begin
  mmoMensagens.Lines.Add(StringReplace(aProgressMessage,'tecnospeed','sheild',[rfReplaceAll]));
end;

function TFrmBoletos.ConverteErroClasse(aErroClasse: TErroClasse): string;
begin
  case aErroClasse of
    ecValidacao: Result := 'VALIDACAO';
    ecAutenticacao: Result := 'AUTENTICACAO';
    ecNaoEncontrado: Result := 'NAOENCONTRADO';
    ecInterno: Result := 'INTERNO';
    ecParametroTamanhoExcedido: Result := 'PARAMETROTAMANHOEXCEDIDO';
    ecServidorIndisponivel: Result := 'SERVIDORINDISPONIVEL';
    ecNaoTratado: Result := 'NAOTRATADO';
    ecAcessoNegado: Result := 'ACESSONEGADO';
    ecNenhum: Result := 'NENHUM';
  end;
end;

procedure TFrmBoletos.IncrementarNumeroDocumento;
var
  _list : TStringList;
  _numeroDocumento : integer;
begin
  _list := TStringList.Create;
  try
    _list.Text := mmoTX2.Text;
    if TryStrToInt(Trim(_list.Values['TituloNumeroDocumento']), _numeroDocumento) then
    begin
      _numeroDocumento := _numeroDocumento + 1;
      _list.Values['TituloNumeroDocumento'] := IntToStr(_numeroDocumento);
      mmoTX2.Text := _list.Text;
    end;
  finally
    _list.Free;
  end;
end;

procedure TFrmBoletos.cbbImpressoraChange(Sender: TObject);
var
  Res        : DWord;
  Device     : array[0..255] of char;
  Driver     : array[0..255] of char;
  Port       : array[0..255] of char;
  WindowsStr : array[0..255] of char;
  hDeviceMode: THandle;
begin
  Try
    { Pega dados da impressora atual }
    Printer.PrinterIndex := cbbImpressora.ItemIndex;
    Printer.GetPrinter(Device,Driver,Port,hDeviceMode);

    { Monta String exigida pela API do Windows }
    StrCat(Device,',');
    StrCat(Device,Driver);
    StrCat(Device,',');
    StrCat(Device,Port);
    StrPCopy(WindowsStr,'Windows');

    { Torna a impressora a atual }
    WriteProfileString(WindowsStr,'device',Device);
    SendMessageTimeout(HWND_BROADCAST,WM_WININICHANGE,0,DWORD(@WindowsStr),SMTO_NORMAL,1,Res);
  except
    on E: Exception do
    begin
      oErro(Handle,'Erro ao tentar conexão com a impressora do Windows !'      +#13+
                   'Verifique as impressoras instaladas no Painel de Controle.'+#13+#13+
                   'Error Code: '+E.Message);
    end;
  end;
end;

procedure TFrmBoletos._ITResposta;
begin
  FInicioReq := Now;
  lblTempoDeResposta.Caption := 'Tempo de Resposta: 00:00.000';
  Application.ProcessMessages;
end;

procedure TFrmBoletos._IFResposta;
begin
  lblTempoDeResposta.Caption := 'Tempo de Resposta: ' + FormatDateTime('nn:ss.zzz', Now - FInicioReq);
  Application.ProcessMessages;
end;

procedure TFrmBoletos._Gerajs;
var
  TFJSON: TextFile;
  FJSON_LOCAL,
  FJSON_REDE: PAnsiChar;
  VLJuros: Double;
begin
  FJSON_LOCAL := '';
  FJSON_REDE  := '';

  mmoTX2.Lines.Clear;
  SBRodape.Panels[2].Text := 'Gerando arquivo JSON ...';
  SBRodape.Panels[3].Text := EmptyStr;
  Application.ProcessMessages;

  _PSQERP('GER',laNone);

  if (RightStr(TituloSacadoEnderecoCep.AsString,3) = '000') or (Length(TituloSacadoEnderecoCep.AsString) < 8) then
  begin
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID FROM CEP_LOG_LOC AS PK');
      SQL.Add('WHERE  PK.CEP = ''' + TituloSacadoEnderecoCep.AsString + '''');
      ExecQuery;

      if Eof then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.ID FROM CEP_LOG AS PK');
        SQL.Add('WHERE  PK.CEP = ''' + TituloSacadoEnderecoCep.AsString + '''');
        ExecQuery;

        if Eof then
        oException(Nil,'CEP não encontrado para esse logradouro ' + #13 +
                       'ou não consta na base de dados genérica da cidade.' + #13 + #13 +

                       'Certifique-se através do APP DOS CORREIOS.' + #13 +
                       'CEP Nº ' + TituloSacadoEnderecoCep.AsString
                       + '.' );
      end;
    end;  
  end;

  if TituloSacadoEnderecoTLOG.AsString = EmptyStr then
     oException(EDCDNF,'Tipo do Logradouro não Informado !' + #13 +
                       'Favor atualizar cadastro do cliente.');

  if TituloSacadoEnderecoLOGR.AsString = EmptyStr then
     oException(EDCDNF,'Nome do Logradouro não Informado !' + #13 +
                       'Favor atualizar cadastro do cliente.');

  if TituloSacadoEnderecoNRO.AsString = EmptyStr then
     oException(EDCDNF,'Número do Logradouro não Informado !' + #13 +
                       'Favor atualizar cadastro do cliente.');

  if Length(TituloSacadoEnderecoUF.AsString) < 2 then
     oException(EDCDNF,'Número do Logradouro não Informado !' + #13 +
                       'Favor atualizar cadastro do cliente.');


  try
    try
      FJSON_LOCAL := PAnsiChar(PATH_LOCAL+PATH_JSON+'\'+EDCDNF.Text+'.tx2');
      AssignFile(TFJSON,PAnsiChar(FJSON_LOCAL));
      Rewrite(TFJSON);

      FJSON_REDE := PAnsiChar(PATH_REDE+PATH_JSON+'\'+EDCDNF.Text+'.tx2');
    except
      on E: Exception do
      begin
        oException(EDCDNF,'Falha ao tentar criar arquivo JSON !'+#13+#13+
                          'Error Code: '+E.Message+'.'+#13+
                          'Gerando arquivo JSON.');
      end;
    end;

    try
      EDCDNF.Text  := IFThen(cbPesquisa.Text = 'Documento',TituloTituloNumeroDocumento.AsString,TituloTituloEmissaoBoleto.AsString);
      EDEMAIL.Text := TituloSacadoEmail.AsString;

      VLJuros := (TituloTituloValor.AsFloat * 3) / 100;
      VLJuros := RoundTo(VLJuros / 30,-2);

      Titulo.First;
      while not Titulo.Eof do
      begin
        WriteLN(TFJSON,'INCLUIRBOLETO');
        WriteLN(TFJSON,'CedenteContaNumero='+CedenteContaNumero);
        WriteLN(TFJSON,'CedenteContaNumeroDV='+CedenteContaNumeroDV);
        WriteLN(TFJSON,'CedenteConvenioNumero='+CedenteConvenioNumero);
        WriteLN(TFJSON,'CedenteContaCodigoBanco='+CedenteContaCodigoBanco);
        WriteLN(TFJSON,'');

        WriteLN(TFJSON,'SacadoEmail='+IFThen(oEmail(TituloSacadoEmail.AsString),TituloSacadoEmail.AsString,''));
        WriteLN(TFJSON,'SacadoNome='+oREPAcentos(TituloSacadoNome.AsString));
        WriteLN(TFJSON,'SacadoCPFCNPJ='+TituloSacadoCPFCNPJ.AsString);
        WriteLN(TFJSON,'SacadoCelular='+TituloSacadoCelular.AsString);

        WriteLN(TFJSON,'SacadoEnderecoLogradouro='+oREPAcentos(TituloSacadoEnderecoLogradouro.AsString));

       {WriteLN(TFJSON,'SacadoEnderecoNumero='+TituloSacadoEnderecoNumero.AsString);
        WriteLN(TFJSON,'SacadoEnderecoComplemento='+TituloSacadoEnderecoComplemento.AsString);}

        WriteLN(TFJSON,'SacadoEnderecoCEP='+TituloSacadoEnderecoCEP.AsString);
        WriteLN(TFJSON,'SacadoEnderecoBairro = ' + oREPAcentos(TituloSacadoEnderecoBairro.AsString));
        WriteLN(TFJSON,'SacadoEnderecoCidade='+oREPAcentos(TituloSacadoEnderecoCidade.AsString));
        WriteLN(TFJSON,'SacadoEnderecoUF='+TituloSacadoEnderecoUF.AsString);
        WriteLN(TFJSON,'SacadoEnderecoPais='+TituloSacadoEnderecoPais.AsString);
        WriteLN(TFJSON,'SacadoTelefone='+TituloSacadoTelefone.AsString);
        WriteLN(TFJSON,'');

        if (RGBanco.ItemIndex <> 2) and (RGBanco.ItemIndex <> 3) then
           with SQLConsulta do
           begin
             Close;
             SQL.Clear;
             SQL.Add('SELECT GEN_ID('+CedenteIDG_BOLETO+',1) FROM RDB$DATABASE');
             ExecQuery;
             WriteLN(TFJSON,'TituloNossoNumero=' + Current.Vars[0].AsString);
           end;

        { Empresa Logada }
        WriteLN(TFJSON,'TituloCodigoReferencia='+RECParametros.ID);

        WriteLN(TFJSON,'TituloNumeroDocumento='+TituloTituloEmissaoBoleto.AsString);
        WriteLN(TFJSON,'TituloDataVencimento='+TituloTituloDataVencimento.AsString);
        WriteLN(TFJSON,'TituloDataEmissao='+TituloTituloDataEmissao.AsString);
        WriteLN(TFJSON,'TituloValor='+FormatFloat('0.00',TituloTituloValor.AsFloat));
        WriteLN(TFJSON,'TituloAceite=N');
        WriteLN(TFJSON,'TituloDocEspecie=01');
        WriteLN(TFJSON,'TituloCategoria=2');
        WriteLN(TFJSON,'TituloPostagemBoleto=N');
        WriteLN(TFJSON,'TituloSacadorAvalistaUF='+TituloSacadoEnderecoUF.AsString);

        if RGBanco.ItemIndex = 3 then
        WriteLN(TFJSON,'TituloVariacaoCarteira=27');

        WriteLN(TFJSON,'TituloCodigoJuros='+IFThen(RGBanco.ItemIndex = 3,'2','1'));
        WriteLN(TFJSON,'TituloDataJuros='+FormatDateTime('dd/mm/yyyy',IncDay(TituloTituloDataVencimento.AsDateTime,1)));
        WriteLN(TFJSON,'TituloValorJuros='+FormatFloat('0.00',VLJuros));

       {WriteLN(TFJSON,'TituloCodProtesto  =1');
        WriteLN(TFJSON,'TituloPrazoProtesto=10');}

        if RGBanco.ItemIndex <> 2 then
        begin
          WriteLN(TFJSON,'TituloCodBaixaDevolucao=1');
          WriteLN(TFJSON,'TituloPrazoBaixa=89');
        end;
        WriteLN(TFJSON,'TituloEmissaoBoleto=B');

        if RGBanco.ItemIndex = 0 then
        WriteLN(TFJSON,'TituloLocalPagamento=Pagável Preferencialmente na Rede Itaú');
        WriteLN(TFJSON,'');

        WriteLN(TFJSON,'TituloMensagem01=*** VALORES EXPRESSOS EM REAIS ***');
        WriteLN(TFJSON,'TituloMensagem02=JUROS POR DIA DE ATRASO............'+FormatFloat('0.00',VLJuros));

        if RGBanco.ItemIndex = 0 then
        WriteLN(TFJSON,'TituloMensagem03=APOS O VENCIMENTO, PAGAR SOMENTE NAS AGENCIAS DO ITAÚ.');
        WriteLN(TFJSON,'TituloMensagem04=PROTESTO: '+FormatDateTime('dd/mm/yyyy',TituloTITULODATAPROTESTO.AsDateTime)+'. A PARTIR DESSA DATA, CONSULTE APP PARA PAGAMENTO.');

        WriteLN(TFJSON,'');
        WriteLN(TFJSON,'SALVARBOLETO');

        Titulo.Next;
      end;
    finally
      oCTransact(TConsulta);
      _Scroll;
    end;
  finally
    CloseFile(TFJSON);
  end;

  if FileExists(PAnsiChar(FJSON_LOCAL)) then
     try
       mmoTX2.Lines.LoadFromFile(PAnsiChar(FJSON_LOCAL));
       SleepEx(1000,False);

       if DirectoryExists(PATH_REDE+PATH_JSON) then
          try
            CopyFile(FJSON_LOCAL,FJSON_REDE,False);
          except
            on E: Exception do
            begin
              oException(EDCDNF,'Falha ao tentar transferir arquivo JSON para o cofre !'+#13+#13+
                                'Error Code: '+E.Message+'.'+#13+
                                'Gerando Boleto.');
            end;
          end;
     finally
       Application.ProcessMessages;
     end;  
end;

procedure TFrmBoletos._Incluijs;
var
  _BoletoList: IspdRetIncluirLista;
  i: Integer;
  listaIdsIntegracao: String;
begin
  RECPrincipal.CDEV := EmptyStr;
  RECPrincipal.DEEV := EmptyStr;
  try
    SBRodape.Panels[2].Text := 'Aguarde, Transmitindo boleto(s) ao banco ...';

    mmoResposta.Lines.Clear;
    mmoResposta.Lines.Add('.:: Incluindo Boleto(s) ::.');
    mmoResposta.Lines.Add('Mensagem: Aguarde, tentando comunicação com o banco ...');
    mmoResposta.Lines.Add('');

    Application.ProcessMessages;
    SleepEx(500,False);

    _ITResposta;
    _BoletoList := FBoletoX.Incluir(mmoTX2.Lines.Text);
    _IFResposta;

    mmoResposta.Lines.Clear;
    mmoResposta.Lines.Add('.:: Incluindo Boleto(s) ::.');
    mmoResposta.Lines.Add('Mensagem: ' + _BoletoList.Mensagem);
    mmoResposta.Lines.Add('Status: '   + _BoletoList.Status);
    mmoResposta.Lines.Add('');

    Application.ProcessMessages;
    SleepEx(1000,False);

    for i := 0 to _BoletoList.Count - 1 do
    begin
      SBRodape.Panels[3].Text := _BoletoList[i].NumeroDocumento;
      Application.ProcessMessages;

      try
        mmoResposta.Lines.BeginUpdate;
        mmoResposta.Lines.Add('Item: ' + IntToStr(i+1));
        mmoResposta.Lines.Add('  NumeroDocumento: ' + _BoletoList[i].NumeroDocumento);
        mmoResposta.Lines.Add('  IdIntegracao: ' + _BoletoList[i].IdIntegracao);
        mmoResposta.Lines.Add('  Situacao: ' + _BoletoList[i].Situacao);
        mmoResposta.Lines.Add('  NossoNumero: ' + _BoletoList[i].NossoNumero);
        mmoResposta.Lines.Add('  Banco: ' + _BoletoList[i].Banco);
        mmoResposta.Lines.Add('  Conta: ' + _BoletoList[i].Conta);
        mmoResposta.Lines.Add('  Convenio: ' + _BoletoList[i].Convenio);
        mmoResposta.Lines.Add('  Erro: ' + _BoletoList[i].Erro);
        mmoResposta.Lines.Add('  ErroClasse: ' + ConverteErroClasse(_BoletoList[i].ErroClasse));
        mmoResposta.Lines.Add('');

        if i = 0 then                                       //este if identifica se foi feito o envio de 1 boleto por tx2 ou de um lote de boletos, para alimentar os campos que recebem os idIntegracao
        listaIdsIntegracao := _BoletoList[i].IdIntegracao else
        listaIdsIntegracao := _BoletoList[i].IdIntegracao + ',' + listaIdsIntegracao;

        edtIdImpressao.Text  := _BoletoList[i].IdIntegracao; // Este edit que alimenta o método de impressão deve apenas receber 1 idIntegracao por chamada de impressão
        edtIdIntegracao.Text := listaIdsIntegracao;
      finally
        mmoResposta.Lines.EndUpdate;
      end;

      try
        oOTransact(TEdicao);
        with SQLEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE '+oREPZero('FIN_REC_BAN_BAI','_',RECParametros.Id,3));
          SQL.Add('SET');

          SQL.Add('API_ID   = ''' + _BoletoList[i].IdIntegracao + ''',');
          SQL.Add('API_NN   = ''' + IFThen( (_BoletoList[i].NossoNumero <> EmptyStr) and (_BoletoList[i].NossoNumero <> 'null'),_BoletoList[i].NossoNumero,'0') + ''',');
          SQL.Add('API_ST   = ''' + _BoletoList[i].Situacao     + ''',');
          SQL.Add('API_DTCA = CURRENT_TIMESTAMP,');
          SQL.Add('API_CA   = ''' + CedenteCarteira + ''',');
          SQL.Add('FIN_CDBC = ''' + CedenteCarteira + '''' );

          SQL.Add('WHERE TITULO = ''' + _BoletoList[i].NumeroDocumento + '''');
          ExecQuery;
        end;
        oCTransact(TEdicao);
      except
        on E: Exception do
        begin
          oCTransact(TEdicao,ltRollback);
          oException(EDCDNF,'Falha ao tentar incluir boleto !'+#13+#13+
                            'Error Code: '+E.Message+'.'+#13+
                            'Transmitindo Boleto.');
        end;
      end;

      if Pos(_BoletoList[i].Situacao,'SALVO') = 0 then
      begin
        RECPrincipal.CDEV := _BoletoList[i].NumeroDocumento;
        RECPrincipal.DEEV := _BoletoList[i].Situacao;
      end;
    end;
  finally
    if RECPrincipal.CDEV = EmptyStr then
       mmoTX2.Lines.Clear;

    _Scroll;
  end;

  if RECPrincipal.CDEV <> EmptyStr then
     oException(Nil,'Atenção !' +#13+
                    'Título Nº '+RECPrincipal.CDEV+' '+RECPrincipal.DEEV+' !') else
     SleepEx(2000,False);
end;

procedure TFrmBoletos._Consulta(ADefaultPSQ: String = 'CON');
var
  _ConsultarList: IspdRetConsultarLista;
  _ConsultarItem: IspdRetConsultarTituloItem;
  i,k,l: Integer;
  API_DTED: TDate;
begin
  RECPrincipal.CDEV := EmptyStr;
  RECPrincipal.DEEV := EmptyStr;

  if (ADefaultPSQ = 'CON') and (EDCDNF.Text <> EmptyStr) then
      _PSQERP;

  { Não permitir consulta sem API_ID }
  if edtIdIntegracao.Text = EmptyStr then
     oException(EDCDNF,'Ids de integração com o banco não encontrados !');

  try
    edtIdImpressao.Text       := edtIdIntegracao.Text;
    edtIdIntegracaoBaixa.Text := edtIdIntegracaoBaixa.Text + edtIdIntegracao.Text + ',';

    SBRodape.Panels[2].Text := 'Aguarde, Consultando Boleto(s) ...';

    mmoResposta.Lines.Clear;
    mmoResposta.Lines.Add('.:: Consultando Boleto(s) ::.');
    mmoResposta.Lines.Add('Mensagem: Aguarde, tentando comunicação com o banco ...');
    mmoResposta.Lines.Add('');

    Application.ProcessMessages;
    SleepEx(500,False);

    _ITResposta;
    _ConsultarList := FBoletoX.Consultar(edtIdIntegracao.Text);
    _IFResposta;

    mmoResposta.Lines.Clear;
    mmoResposta.Lines.Add('.:: Consultando Boleto(s) ::.');
    mmoResposta.Lines.Add('Mensagem: '  + _ConsultarList.Mensagem);
    mmoResposta.Lines.Add('Status: '    + _ConsultarList.Status  );
    mmoResposta.Lines.Add('');
    mmoResposta.Lines.Add('Recebendo dados do boleto ...');
    mmoResposta.Lines.Add('');

    Application.ProcessMessages;
    SleepEx(1000,False);

    mmoResposta.Lines.Clear;
    mmoResposta.Lines.Add('.:: Consulta Boleto(s) ::.');
    mmoResposta.Lines.Add('Mensagem: '  + _ConsultarList.Mensagem);
    mmoResposta.Lines.Add('Status: '    + _ConsultarList.Status  );
    mmoResposta.Lines.Add('');
    Application.ProcessMessages;

    if not oEmpty(_ConsultarList.ErroConexao) then
    begin
      mmoResposta.Lines.Add('Erro Conexão: '+_ConsultarList.ErroConexao);
      Abort;
    end;

    while _ConsultarList.Count <> 0 do
    begin
      for i := 0 to pred(_ConsultarList.Count) do    //o conteúdo de pred é equivalente a (_ConsultarList.Count - 1)
      begin
        _ConsultarItem := _ConsultarList.Item[i];

        SBRodape.Panels[2].Text := 'Aguarde, consultando título nº '+_ConsultarItem.TituloNumeroDocumento+' ...';
        Application.ProcessMessages;
        try
          mmoResposta.Lines.BeginUpdate;
          mmoResposta.Lines.Add('ITEM: ' + IntToStr(i+1));
          mmoResposta.Lines.Add('  IdIntegracao: ' + _ConsultarItem.IdIntegracao);
          mmoResposta.Lines.Add('  Situacao: '     + _ConsultarItem.Situacao);
          mmoResposta.Lines.Add('  Motivo: '       + _ConsultarItem.Motivo);

          mmoResposta.Lines.Add('');
          mmoResposta.Lines.Add('CEDENTE:');
          mmoResposta.Lines.Add('  Agencia: ' + _ConsultarItem.CedenteAgencia);
          mmoResposta.Lines.Add('  AgenciaDV: ' + _ConsultarItem.CedenteAgenciaDV);
          mmoResposta.Lines.Add('  Código Banco: ' + _ConsultarItem.CedenteCodigoBanco);
          mmoResposta.Lines.Add('  Carteira: ' + _ConsultarItem.CedenteCarteira);
          mmoResposta.Lines.Add('  Conta: ' + _ConsultarItem.CedenteConta);
          mmoResposta.Lines.Add('  DV da conta: ' + _ConsultarItem.CedenteContaNumeroDV);
          mmoResposta.Lines.Add('  Numero Convênio: ' + _ConsultarItem.CedenteNumeroConvenio);
          mmoResposta.Lines.Add('');

          mmoResposta.Lines.Add('SACADO:');
          mmoResposta.Lines.Add('  CPFCNPJ: ' + _ConsultarItem.SacadoCPFCNPJ);
          mmoResposta.Lines.Add('  Nome: ' + _ConsultarItem.SacadoNome);
          mmoResposta.Lines.Add('  Telefone: ' + _ConsultarItem.SacadoTelefone);
          mmoResposta.Lines.Add('  Celular: ' + _ConsultarItem.SacadoCelular);
          mmoResposta.Lines.Add('  Email: ' + _ConsultarItem.SacadoEmail);
          mmoResposta.Lines.Add('  Endereço Número: ' + _ConsultarItem.SacadoEnderecoNumero);
          mmoResposta.Lines.Add('  Endereço Bairro: ' + _ConsultarItem.SacadoEnderecoBairro);
          mmoResposta.Lines.Add('  Endereço CEP: ' + _ConsultarItem.SacadoEnderecoCEP);
          mmoResposta.Lines.Add('  Endereço Cidade: ' + _ConsultarItem.SacadoEnderecoCidade);
          mmoResposta.Lines.Add('  Endereço Complemento: ' + _ConsultarItem.SacadoEnderecoComplemento);
          mmoResposta.Lines.Add('  Endereço Logradouro: ' + _ConsultarItem.SacadoEnderecoLogradouro);
          mmoResposta.Lines.Add('  Endereço País: ' + _ConsultarItem.SacadoEnderecoPais);
          mmoResposta.Lines.Add('  Endereço UF: ' + _ConsultarItem.SacadoEnderecoUF);
          mmoResposta.Lines.Add('  Sacador Avalista: ' + _ConsultarItem.TituloSacadorAvalista);
          mmoResposta.Lines.Add('  Sacador Avalista Inscricao: ' + _ConsultarItem.TituloInscricaoSacadorAvalista);
          mmoResposta.Lines.Add('  Endereço Sacador Avalista: ' + _ConsultarItem.TituloSacadorAvalistaEndereco);
          mmoResposta.Lines.Add('  Cidade Sacador Avalista: ' + _ConsultarItem.TituloSacadorAvalistaCidade);
          mmoResposta.Lines.Add('  CEP Sacador Avalista: ' + _ConsultarItem.TituloSacadorAvalistaCEP);
          mmoResposta.Lines.Add('  UF Sacador Avalista: ' + _ConsultarItem.TituloSacadorAvalistaUF);
          mmoResposta.Lines.Add('');

          mmoResposta.Lines.Add('TÍTULO:');
          mmoResposta.Lines.Add('  Nosso Número: ' + _ConsultarItem.TituloNossoNumero);
          mmoResposta.Lines.Add('  Número Documento: ' + _ConsultarItem.TituloNumeroDocumento);
          mmoResposta.Lines.Add('  Nosso Número Impressão: ' + _ConsultarItem.TituloNossoNumeroImpressao);
          mmoResposta.Lines.Add('  Origem Documento: ' + _ConsultarItem.TituloOrigemDocumento);
          mmoResposta.Lines.Add('  Linha Digitável: ' + _ConsultarItem.TituloLinhaDigitavel);
          mmoResposta.Lines.Add('  Código de Barras: ' + _ConsultarItem.TituloCodigoBarras);
          mmoResposta.Lines.Add('  Código Emissão Bloqueto: ' + _ConsultarItem.TituloCodEmissaoBloqueto);
          mmoResposta.Lines.Add('  Titulo Aceite: ' + _ConsultarItem.TituloAceite);
          mmoResposta.Lines.Add('  Avalista: ' + _ConsultarItem.TituloInscricaoSacadorAvalista);
          mmoResposta.Lines.Add('  Doc Espécie: ' + _ConsultarItem.TituloDocEspecie);
          mmoResposta.Lines.Add('  Postagem: ' + _ConsultarItem.TituloPostagemBoleto);

          mmoResposta.Lines.Add('  Código para baixa ou devolução: ' + _ConsultarItem.TituloCodBaixaDevolucao);
          mmoResposta.Lines.Add('  Prazo para baixa ou devolução: ' + _ConsultarItem.TituloPrazoBaixa);
          mmoResposta.Lines.Add('  Data Emissão: ' + _ConsultarItem.TituloDataEmissao);
          mmoResposta.Lines.Add('  Forçar Fator Vencimento: ' + BoolToStr(_ConsultarItem.TituloForcarFatorVencimento, True));
          mmoResposta.Lines.Add('  Data Vencimento: ' + _ConsultarItem.TituloDataVencimento);
          mmoResposta.Lines.Add('  Código de Desconto: ' + _ConsultarItem.TituloCodDesconto);
          mmoResposta.Lines.Add('  Data Desconto: ' + _ConsultarItem.TituloDataDesconto);
          mmoResposta.Lines.Add('  Valor Desconto: ' + FloatToStr(_ConsultarItem.TituloValorDescontoTaxa));
          mmoResposta.Lines.Add('  Código de Desconto2: ' + _ConsultarItem.TituloCodDesconto2);
          mmoResposta.Lines.Add('  Outras Deducoes: ' + _ConsultarItem.TituloOutrasDeducoes);
          mmoResposta.Lines.Add('  Data Desconto: ' + _ConsultarItem.TituloDataDesconto2);
          mmoResposta.Lines.Add('  Valor Desconto: ' + FloatToStr(_ConsultarItem.TituloValorDescontoTaxa2));
          mmoResposta.Lines.Add('  Código de Juros: ' + _ConsultarItem.TituloCodigoJuros);
          mmoResposta.Lines.Add('  Data Juros: ' + _ConsultarItem.TituloDataJuros);
          mmoResposta.Lines.Add('  Valor Juros: ' + FloatToStr(_ConsultarItem.TituloValorJuros));
          mmoResposta.Lines.Add('  Prazo Protesto: ' + _ConsultarItem.TituloPrazoProtesto);
          mmoResposta.Lines.Add('  Instrucoes: ' + _ConsultarItem.TituloInstrucoes);
          mmoResposta.Lines.Add('  Mensagem 1: ' + _ConsultarItem.TituloMensagem01);
          mmoResposta.Lines.Add('  Mensagem 2: ' + _ConsultarItem.TituloMensagem02);
          mmoResposta.Lines.Add('  Mensagem 3: ' + _ConsultarItem.TituloMensagem03);
          mmoResposta.Lines.Add('  TítuloInstrucao 1: ' + _ConsultarItem.TituloInstrucao1);
          mmoResposta.Lines.Add('  TítuloInstrucao 2: ' + _ConsultarItem.TituloInstrucao2);
          mmoResposta.Lines.Add('  Informacoes Adicionais: ' + _ConsultarItem.TituloInformacoesAdicionais);
          mmoResposta.Lines.Add('  Local Pagamento: ' + _ConsultarItem.TituloLocalPagamento);
          mmoResposta.Lines.Add('  Parcela: ' + _ConsultarItem.TituloParcela);
          mmoResposta.Lines.Add('  Variacao Carteira: ' + _ConsultarItem.TituloVariacaoCarteira);
          mmoResposta.Lines.Add('  Categoria: ' + _ConsultarItem.TituloCategoria);
          mmoResposta.Lines.Add('  Modalidade: ' + _ConsultarItem.TituloModalidade);
          mmoResposta.Lines.Add('  Cip: ' + _ConsultarItem.TituloCip);
          mmoResposta.Lines.Add('  Ios "utilizado apenas pelo Santander": ' + _ConsultarItem.TituloIos);
          mmoResposta.Lines.Add('  Cod Cliente "exclusivo para os bancos HSBC e Safra": ' + _ConsultarItem.TituloCodCliente);
          mmoResposta.Lines.Add('  Valor: ' + FloatToStr(_ConsultarItem.TituloValor));
          mmoResposta.Lines.Add('  Pagamento Minimo: ' + FloatToStr(_ConsultarItem.TituloPagamentoMinimo));
          mmoResposta.Lines.Add('  Data Crédito: ' + _ConsultarItem.PagamentoDataCredito);
          mmoResposta.Lines.Add('  Valor Cobrado: ' + FloatToStr(_ConsultarItem.TituloValorCobrado));
          mmoResposta.Lines.Add('  Título Pago: ' + BoolToStr(_ConsultarItem.PagamentoRealizado));
          mmoResposta.Lines.Add('  Valor Crédito: ' + FloatToStr(_ConsultarItem.PagamentoValorCredito));
          mmoResposta.Lines.Add('  Valor Outros Acréscimos: ' + FloatToStr(_ConsultarItem.TituloValorOutrosAcrescimos));
          mmoResposta.Lines.Add('  Valor Pago: ' + FloatToStr(_ConsultarItem.PagamentoValorPago));
          mmoResposta.Lines.Add('  Valor Taxa Cobrança: ' + FloatToStr(_ConsultarItem.PagamentoValorTaxaCobranca));
          mmoResposta.Lines.Add('  Valor Abatimento: ' + FloatToStr(_ConsultarItem.TituloValorAbatimento));
          mmoResposta.Lines.Add('  Valor Outras Despesas: ' + FloatToStr(_ConsultarItem.PagamentoValorOutrasDespesas));
          mmoResposta.Lines.Add('  Valor IOF: ' + FloatToStr(_ConsultarItem.PagamentoValorIOF));
          mmoResposta.Lines.Add('  Código Multa: ' + _ConsultarItem.TituloCodigoMulta);
          mmoResposta.Lines.Add('  Valor Multa: ' + FloatToStr(_ConsultarItem.TituloValorMulta));
          mmoResposta.Lines.Add('  Valor Multa Taxa: ' + FloatToStr(_ConsultarItem.TituloValorMultaTaxa));
          mmoResposta.Lines.Add('  Data Multa: ' + _ConsultarItem.PagamentoData);
          mmoResposta.Lines.Add('  Data Pagamento: ' + _ConsultarItem.PagamentoData);
          mmoResposta.Lines.Add('  Valor Outros Créditos: ' + FloatToStr(_ConsultarItem.PagamentoValorOutrosCreditos));

          mmoResposta.Lines.Add('  Pagamento Valor Desconto: ' + FloatToStr(_ConsultarItem.PagamentoValorDesconto));
          mmoResposta.Lines.Add('  Pagamento Valor Acréscimos: ' + FloatToStr(_ConsultarItem.PagamentoValorAcrescimos));
          mmoResposta.Lines.Add('  Pagamento Valor Abatimento: ' + FloatToStr(_ConsultarItem.PagamentoValorAbatimento));
          mmoResposta.Lines.Add('  Impressão Visualizada: ' + BoolToStr(_ConsultarItem.ImpressaoVisualizada, True));   //Converte o retorno para "False" ou "True"
          mmoResposta.Lines.Add('  Impressão Visualizada Data: ' + (_ConsultarItem.TituloDataImpressaoVisualizada));
          mmoResposta.Lines.Add('');

          API_DTED := 0;
          SLOcorrencia.Clear;
          for k := 0 to _ConsultarItem.CountTituloMovimentos - 1 do
          begin
            mmoResposta.Lines.Add('  MOVIMENTOS:');
            mmoResposta.Lines.Add('  Movimento Código: '  + _ConsultarItem.TituloMovimentos[k].Codigo);
            mmoResposta.Lines.Add('  Movimento Mensagem: '+ _ConsultarItem.TituloMovimentos[k].Mensagem);
            mmoResposta.Lines.Add('  Movimento Data: '    + _ConsultarItem.TituloMovimentos[k].Data);
            mmoResposta.Lines.Add('  Movimento Taxa: '    + FloatToStr(_ConsultarItem.TituloMovimentos[k].Taxa));

            SLOcorrencia.Add('  MOVIMENTOS:');
            SLOcorrencia.Add('  Movimento Código: '  + _ConsultarItem.TituloMovimentos[k].Codigo);
            SLOcorrencia.Add('  Movimento Mensagem: '+ _ConsultarItem.TituloMovimentos[k].Mensagem);
            SLOcorrencia.Add('  Movimento Data: '    + _ConsultarItem.TituloMovimentos[k].Data);
            SLOcorrencia.Add('  Movimento Taxa: '    + FloatToStr(_ConsultarItem.TituloMovimentos[k].Taxa));

            if (API_DTED <  StrToDate(LeftStr(_ConsultarItem.TituloMovimentos[k].Data,10))) then
               API_DTED  := StrToDate(LeftStr(_ConsultarItem.TituloMovimentos[k].Data,10));

            for l := 0 to _ConsultarItem.TituloMovimentos[k].CountOcorrencias -1 do
            begin
              mmoResposta.Lines.Add('  OCORRÊNCIAS:');
              mmoResposta.Lines.Add('     Ocorrências Código: '   + _ConsultarItem.TituloMovimentos[k].Ocorrencias[l].Codigo);
              mmoResposta.Lines.Add('     Ocorrências Mensagem: ' + _ConsultarItem.TituloMovimentos[k].Ocorrencias[l].Mensagem);

              SLOcorrencia.Add('  OCORRÊNCIAS:');
              SLOcorrencia.Add('     Ocorrências Código: '   + _ConsultarItem.TituloMovimentos[k].Ocorrencias[l].Codigo);
              SLOcorrencia.Add('     Ocorrências Mensagem: ' + _ConsultarItem.TituloMovimentos[k].Ocorrencias[l].Mensagem);
            end;

            SLOcorrencia.Add('');
            mmoResposta.Lines.Add('');
          end;
        finally
          mmoResposta.Lines.EndUpdate;
        end;

        try
          oOTransact(TEdicao);
          with SQLEdicao do
          begin
            Close;
            SQL.Clear;
            SQL.Add('UPDATE '+oREPZero('FIN_REC_BAN_BAI','_',RECParametros.Id,3));
            SQL.Add('SET');

            SQL.Add('API_CA = ''' + _ConsultarItem.CedenteCarteira + ''',');
            SQL.Add('API_NN = ''' + IFThen( (_ConsultarItem.TituloNossoNumero <> EmptyStr) and (_ConsultarItem.TituloNossoNumero <> 'null'),_ConsultarItem.TituloNossoNumero,'0') + ''',');
           // SQL.Add('API_ST = ''' + _ConsultarItem.Situacao + ''',');

            if API_DTED > 0 then
            SQL.Add('API_DTED     = ''' + FormatDateTime('mm/dd/yy',API_DTED) + ' ''|| CURRENT_TIME,');
            SQL.Add('API_INFADCAD = ''' + SLOcorrencia.Text + '''');

            SQL.Add('WHERE TITULO = ''' + _ConsultarItem.TituloNumeroDocumento +'''');
            ExecQuery;
          end;
          oCTransact(TEdicao);

          { Armazena status de verificação }
          if Pos(_ConsultarItem.Situacao,'REGISTRADOEMITIDO') = 0 then
          begin
            RECPrincipal.CDEV := _ConsultarItem.TituloNumeroDocumento;
            RECPrincipal.DEEV := _ConsultarItem.Situacao;
          end;
        except
          on E: Exception do
          begin
            oCTransact(TEdicao,ltRollback);
            oException(EDCDNF,'Falha ao tentar atualizar boleto !'+#13+#13+
                              'Error Code: '+E.Message+'.');
          end;
        end;
      end;
      _ConsultarList.PaginaSeguinte;           //Utilize este parâmetro quando a consulta for feita com mais de 1000 idIntegracao por vez. O While fará a consulta de 20 em 20 idIntegracao, e o "PaginaSeguinte" repete a consulta enquanto houverem páginas a serem consultadas.
    end;
  finally
    Titulo.Close;
    _Scroll;
  end;

  if (RECPrincipal.DEEV <> EmptyStr) and (Pos(LeftStr(RECPrincipal.DEEV,5),'SALVOPENDE') = 0) then
      oAviso(Handle,'Atenção !' +#13+
                    'Título Nº '+RECPrincipal.CDEV+' '+RECPrincipal.DEEV+'.');
end;

procedure TFrmBoletos._Imprime(AVIA: Word; AAction: TValidateAction);
var
  i: word;

  _ImprimirLoteList: IspdRetImprimirLote;
  _SalvarPDFLote   : IspdRetSalvarLoteImpressaoPDF;

  FPDF_LOCAL,
  FPDF_REDE: PAnsiChar;
begin
  { Não permitir consulta sem API_ID }
  if edtIdIntegracao.Text = EmptyStr then
     oException(EDCDNF,'Ids de integração com o banco não encontrados !');

  FPDF_LOCAL := PAnsiChar(PATH_LOCAL+IFThen(AVIA = 1,PATH_PDF_1VIA,PATH_PDF_2VIA)+'\'+EDCDNF.Text+'.PDF');
  FPDF_REDE  := PAnsiChar(PATH_REDE +IFThen(AVIA = 1,PATH_PDF_1VIA,PATH_PDF_2VIA)+'\'+EDCDNF.Text+'.PDF');

  if AAction = lvDelete then
  begin
    try
      if FileExists(FPDF_LOCAL) then DeleteFile(FPDF_LOCAL);
    except
      on E: Exception do
      begin
        oException(EDCDNF,'Falha ao tentar excluir '+FPDF_LOCAL+' !'+#13+#13+
                          'Error Code: '+E.Message+'.'+#13+
                          'Imprimindo '+IFThen(AVIA = 1,'1º VIA do boleto','2º VIA atualizada do boleto')+'.');
      end;
    end;

    try
      if FileExists(FPDF_REDE) then DeleteFile(FPDF_REDE);
    except
      on E: Exception do
      begin
        oException(EDCDNF,'Falha ao tentar excluir '+FPDF_REDE+' !'+#13+#13+
                          'Error Code: '+E.Message+'.'+#13+
                          'Imprimir '+IFThen(AVIA = 1,'1º VIA do boleto','2º VIA atualizada do boleto')+'.');
      end;
    end;
  end;  

  if (not FileExists(FPDF_LOCAL)) and (not FileExists(FPDF_REDE)) then
  begin
    if edtProtocoloRetornoImpressaoLote.Text = EmptyStr then
       for i := 1 To 6 do
       begin
         try
           mmoTX2.Lines.Clear;
           mmoTX2.Lines.BeginUpdate;
           mmoTX2.Lines.Add('.:: CONSULTANDO LOTE DE IMPRESSÃO ::.');
           mmoTX2.Lines.Add('Mensagem: Aguarde, tentando comunicação com o banco ...');
           mmoTX2.Lines.Add('');

           Application.ProcessMessages;
           SleepEx(500,False);

           _ITResposta;
           _ImprimirLoteList := FBoletoX.ImprimirLote(edtIdIntegracao.Text,'99');
           _IFResposta;

           mmoTX2.Lines.Clear;
           mmoTX2.Lines.Add('.:: CONSULTANDO LOTE DE IMPRESSÃO ::.');
           mmoTX2.Lines.Add('Mensagem: '  + _ImprimirLoteList.Mensagem);
           mmoTX2.Lines.Add('Status: '    + _ImprimirLoteList.Status);
           mmoTX2.Lines.Add('Protocolo: ' + _ImprimirLoteList.Protocolo);
           mmoTX2.Lines.Add('');

           Application.ProcessMessages;
           if i <= 3 then
              SleepEx(500,False) else SleepEx(3000,False);

           if AnsiSameText(_ImprimirLoteList.Status,'ERRO') or AnsiSameText(_ImprimirLoteList.Status,'erro') then
           begin
             mmoTX2.Lines.Add('ErroClasse: ' +ConverteErroClasse(_ImprimirLoteList.ErroClasse));
             Application.ProcessMessages;
             Abort;
           end;

           if i > 1 then
           begin
             mmoTX2.Lines.Add('');
             mmoTX2.Lines.Add('LOTE Tentativa Nº '+IntToStr(i));
           end;
         finally
           mmoTX2.Lines.EndUpdate;
           Application.ProcessMessages;
         end;

            edtProtocoloRetornoImpressaoLote.Text := _ImprimirLoteList.Protocolo;
         if edtProtocoloRetornoImpressaoLote.Text <> EmptyStr then
            Break;
       end;

    if edtProtocoloRetornoImpressaoLote.Text = EmptyStr then
       oException(EDCDNF,'Falha ao tentar gerar protocolo de impressão !'+#13+
                         'Tente novamente clicando diretamente na opção 3) Imprimir.') else
    try
      oOTransact(TEdicao);
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE '+oREPZero('FIN_REC_BAN_BAI','_',RECParametros.Id,3));
        SQL.Add('SET');

        SQL.Add('API_ID_PRN   =    ''' + edtProtocoloRetornoImpressaoLote.Text + '''');
        SQL.Add('WHERE TITULO LIKE ''' + EDCDNF.Text + '%''');
        ExecQuery;
      end;
      oCTransact(TEdicao);
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRollback);
        oException(EDCDNF,'Falha ao tentar salvar lote de impressão !'+#13+#13+
                          'Error Code: '+E.Message+'.'+#13+
                          'Impressão de Boleto.');
      end;
    end;

    for i := 1 to 6 do
    begin
      try
        mmoTX2.Lines.Clear;
        mmoTX2.Lines.BeginUpdate;
        mmoTX2.Lines.Add('.:: CONSULTANDO LOTE DE IMPRESSÃO ::.');
        mmoTX2.Lines.Add('Mensagem: '  + _ImprimirLoteList.Mensagem);
        mmoTX2.Lines.Add('Status: '    + _ImprimirLoteList.Status);
        mmoTX2.Lines.Add('Protocolo: ' + _ImprimirLoteList.Protocolo);
        mmoTX2.Lines.Add('');

        mmoTX2.Lines.Add('.:: SALVANDO BOLETOS EM PDF ::.');
        mmoTX2.Lines.Add('Mensagem: Aguarde, tentando comunicação com o banco ...');
        mmoTX2.Lines.Add('');

        Application.ProcessMessages;
        SleepEx(500,False);

        _ITResposta;
        _SalvarPDFLote := FBoletoX.SalvarLoteImpressaoPDF(edtProtocoloRetornoImpressaoLote.Text,PAnsiChar(FPDF_LOCAL));
        _IFResposta;

        mmoTX2.Lines.Clear;
        mmoTX2.Lines.Add('.:: CONSULTANDO LOTE DE IMPRESSÃO ::.');
        mmoTX2.Lines.Add('Mensagem: '  + _ImprimirLoteList.Mensagem);
        mmoTX2.Lines.Add('Status: '    + _ImprimirLoteList.Status);
        mmoTX2.Lines.Add('Protocolo: ' + _ImprimirLoteList.Protocolo);
        mmoTX2.Lines.Add('');

        mmoTX2.Lines.Add('.:: SALVANDO BOLETOS EM PDF ::.');
        mmoTX2.Lines.Add('Mensagem: ' + _SalvarPDFLote.Mensagem);
        mmoTX2.Lines.Add('Status: '   + _SalvarPDFLote.Status);
        mmoTX2.Lines.Add('');

        Application.ProcessMessages;
        if i <= 3 then
           SleepEx(500,False) else SleepEx(3000,False);

        if (AnsiSameText(_SalvarPDFLote.Status, 'ERRO')) or (AnsiSameText(_SalvarPDFLote.Status, 'erro')) then
        begin
          mmoTX2.Lines.Add('ErroClasse: ' + ConverteErroClasse(_SalvarPDFLote.ErroClasse));
          Application.ProcessMessages;
          Abort;
        end;

        if i > 1 then
        begin
          mmoTX2.Lines.Add('');
          mmoTX2.Lines.Add('PDF Tentativa Nº '+IntToStr(i));
        end;
      finally
        mmoTX2.Lines.EndUpdate;
        Application.ProcessMessages;
      end;
        
      if FileExists(PAnsiChar(FPDF_LOCAL)) then
         Break;
    end;

    try
      oOTransact(TEdicao);
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE '+oREPZero('FIN_REC_BAN_BAI','_',RECParametros.Id,3));
        SQL.Add('SET');

        SQL.Add('API_ID_PDF   =    ''' + _SalvarPDFLote.Situacao + '''');
        SQL.Add('WHERE TITULO LIKE ''' + EDCDNF.Text + '%''');
        ExecQuery;
      end;
      oCTransact(TEdicao);
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRollback);
        oException(EDCDNF,'Falha ao tentar gerar arquivo PDF !'+#13+#13+
                          'Error Code: '+E.Message+'.'+#13+
                          'Geração de arquivo PDF.');
      end;
    end;

    if not FileExists(FPDF_LOCAL) then
       oException(EDCDNF,'Falha ao tentar gerar arquivo PDF !'+#13+
                         'Tente novamente clicando diretamente na opção 3) Imprimir.');
  end;

  if (FileExists(FPDF_LOCAL)) or (FileExists(FPDF_REDE)) then
      try
        if not FileExists(FPDF_REDE) then
           try
             CopyFile(FPDF_LOCAL,FPDF_REDE,True);
           except
             on E: Exception do
             begin
               oException(EDCDNF,'Falha ao tentar transferir PDF para o cofre !'+#13+#13+
                                 'Error Code: '+E.Message+'.'+#13+
                                  Self.Caption+'.');
             end;
           end;

        mmoTX2.Lines.Add('');
        mmoTX2.Lines.Add('.:: IMPRIMINDO PDF ::.');

        SBRodape.Panels[2].Text := 'Imprimindo ...';
        Application.ProcessMessages;

        if cbPRNDIR.Text = 'Sim' then
        begin
          if FileExists(FPDF_LOCAL) then
             ShellExecute(Handle, 'print', PAnsiChar(FPDF_LOCAL), nil, nil, SW_HIDE) else
          if FileExists(FPDF_REDE) then
             ShellExecute(Handle, 'print', PAnsiChar(FPDF_REDE) , nil, nil, SW_HIDE);
        end;

        mmoTX2.Lines.Add('');
        mmoTX2.Lines.Add('.:: PDF DO BOLETO IMPRESSO COM SUCESSO ::.');
        
        SBRodape.Panels[2].Text := 'Boleto Nº '+EDCDNF.Text+' impresso com sucesso.';
      finally
        oCAdobe;
        _Scroll;
      end;
end;

procedure TFrmBoletos._Email;
var
  _EnviarEmailLoteResposta: IspdRetEnvioEmailLote;
  _RespostaEmailLote: IspdRetConsultarEmailLote;

  configEmail : TextFile;
begin
  if EDCDNF.Text = EmptyStr then
     oException(EDCDNF,cbPesquisa.Text+' não informado ou incorreto !');

  if EDEmail.Text = EmptyStr then
     oException(Nil,'Email não Informado !');

  if not oEmail(EDEMAIL.Text) then
     oException(EDEMAIL,'Formato do email inválido !');

  _PSQERP('REG');

  try
    mmoTX2.Lines.Clear;
    mmoTX2.Refresh;

    mmoTX2.Lines.BeginUpdate;
    mmoTX2.Lines.Add('INCLUIREMAIL');
    mmoTX2.Lines.Add('IdIntegracao=' + edtIdIntegracao.Text);
    mmoTX2.Lines.Add('EmailNomeRemetente=LEBIANCO - Têxtil e Confecções Otimotex Ltda');
    mmoTX2.Lines.Add('EmailRemetente=noreply@lebianco.com.br');
    mmoTX2.Lines.Add('EmailAssunto=Boleto para pagamento');
    mmoTX2.Lines.Add('EmailMensagem=Prezado cliente, segue link para visualização e pagamento do boleto ${linkBoleto}');
    mmoTX2.Lines.Add('EmailDestinatario='+EDEMAIL.Text);
    mmoTX2.Lines.Add('tipoImpressao=99');
    mmoTX2.Lines.Add('SALVAREMAIL');
    mmoTX2.Lines.EndUpdate;

    _ITResposta;
    _EnviarEmailLoteResposta := FBoletoX.EnviarEmailLote(mmoTX2.Text);
    _IFResposta;

    mmoTX2.Lines.Clear;
    mmoTX2.Refresh;
    mmoTX2.Lines.Add('.:: E-Mail Boleto ::.');
    mmoTX2.Lines.Add('');
    mmoTX2.Lines.Add('Mensagem: ' + _EnviarEmailLoteResposta.Mensagem);
    mmoTX2.Lines.Add('Status: '   + _EnviarEmailLoteResposta.Status);

    if AnsiSameText(_EnviarEmailLoteResposta.Status, 'ERRO') then
       mmoTX2.Lines.Add('Erro! Confira os dados do email');

    if _EnviarEmailLoteResposta.ErroConexao <> '' then
       mmoResposta.Lines.Add('Erro Conexão: ' + _EnviarEmailLoteResposta.ErroConexao);

    mmoTX2.Lines.Add('');

    mmoTX2.SelStart  := 1;
    mmoTX2.SelLength := 1;
  finally
    SleepEx(1000,False);
    Application.ProcessMessages;
  end;

  _RespostaEmailLote := FBoletoX.ConsultarEmailLote(_EnviarEmailLoteResposta.Protocolo);

  mmoTX2.Lines.Add('');
  mmoTX2.Lines.Add('');
  mmoTX2.Lines.Add('.:: Consulta de emails em Lote ::.');
  mmoTX2.Lines.Add('');
  mmoTX2.Lines.Add('Mensagem: ' + _RespostaEmailLote.Mensagem);
  mmoTX2.Lines.Add('Status: '   + _RespostaEmailLote.Status);
  mmoTX2.Lines.Add('Situação: ' + _RespostaEmailLote.Situacao);

  if _RespostaEmailLote.ErroConexao <> '' then
    mmoTX2.Lines.Add('Erro Conexão: ' + _RespostaEmailLote.ErroConexao);
end;

procedure TFrmBoletos._Remessa;
var
  _RemessaList: IspdRetGerarRemessaLista;
  _RemessaItem: IspdRetGerarRemessaItem;
  i, j: Integer;
  conteudoRemessa: TStringList;
begin
  if EDCDNF.Text = EmptyStr then
     oException(EDCDNF,cbPesquisa.Text+' não informado ou incorreto !');

  ConteudoRemessa := Nil;
  if RGBanco.ItemIndex = 1 then
     try
       ConteudoRemessa := TStringList.Create;

       { Não permitir consulta sem API_ID }
       if edtIdIntegracao.Text = EmptyStr then
          Abort;

       SBRodape.Panels[2].Text := 'Gerando arquivo de remessa ...';
       Application.ProcessMessages;
       _PSQERP('REG');

       _ITResposta;
       _RemessaList := FBoletoX.GerarRemessa(edtIdIntegracao.Text);
       _IFResposta;

       mmoResposta.Lines.Clear;
       mmoResposta.Refresh;

       mmoResposta.Lines.Add('.:: GERAR REMESSA ::.');
       mmoResposta.Lines.Add('Mensagem: ' + _RemessaList.Mensagem);
       mmoResposta.Lines.Add('Status: '   + _RemessaList.Status);
       mmoResposta.Lines.Add('');
       Application.ProcessMessages;

       try
         oOTransact(TEdicao);
         for i := 0 to _RemessaList.Count - 1 do
         begin
           _RemessaItem := _RemessaList.Item[i];

           mmoResposta.Lines.Add('ITEM: ' + IntToStr(i+1));
           mmoResposta.Lines.Add('  Remessa: ' + _RemessaItem.Remessa);
           mmoResposta.Lines.Add('  Banco: '   + _RemessaItem.Banco);
           mmoResposta.Lines.Add('  Conta: '   + _RemessaItem.Conta);
           mmoResposta.Lines.Add('  Erro: '    + _RemessaItem.Erro);

           conteudoRemessa.Text := _RemessaItem.Remessa ;               //    |--> Salva o conteúdo da remessa em um arquivo texto
           conteudoRemessa.SaveToFile('C:\Temp\conteudoRemessa.txt');   // ---

           for j := 0 to _RemessaItem.Titulos.Count-1 do
           begin
             mmoResposta.Lines.Add('  IdIntegracao ' + IntToStr(j+1) + ': ' + _RemessaItem.Titulos.Item[j]);
             if uppercase(Trim(_RemessaList.Status)) = 'SUCESSO' then
                with SQLEdicao do
                begin
                 { Close;
                  SQL.Clear;
                  SQL.Add('UPDATE '+oREPZero('FIN_REC_BAN_BAI','_',RECParametros.Id,3));
                  SQL.Add('SET    STREMESSA = '''+uppercase(Trim(_RemessaList.Status))+'''');
                  SQL.Add('WHERE  API_ID    = '''+_RemessaItem.Titulos.Item[j]        +'''');
                  ExecQuery;}
                end;
           end;
           mmoResposta.Lines.Add('');
         end;
         oCTransact(TEdicao);
       except
         on E: Exception do
         begin
           oCTransact(TEdicao,ltRollback);
           oException(EDCDNF,'Falha ao tentar gerar arquivo de remessa !'+#13+#13+
                             'Error Code: '+E.Message+'.'+#13+
                             'Transmitindo Boleto.');
         end;
       end;
     finally
       SBRodape.Panels[2].Text := EmptyStr;
       Application.ProcessMessages;

       if ConteudoRemessa <> Nil then
          ConteudoRemessa.Free;
     end;
end;

procedure TFrmBoletos._Descarta;
var
  _DescarteList : IspdretDescartarLista;
  _DescarteItem : IspdRetDescartarTituloItem;

  _ConsultarList: IspdRetConsultarLista;
  _ConsultarItem: IspdRetConsultarTituloItem;

  i: Integer;
begin
  mmoResposta.Lines.Clear;
  mmoResposta.Refresh;
  try
    oOTransact(TEdicao);

    _ITResposta;
    _ConsultarList := FBoletoX.Consultar(edtIdIntegracao.Text);
    _DescarteList  := FBoletoX.Descartar(edtIdIntegracao.Text);
    _IFResposta;

    mmoResposta.Lines.Clear;
    mmoResposta.Refresh;
    mmoResposta.Lines.Add('.:: DESCARTAR ::.');
    mmoResposta.Lines.Add('Mensagem: ' + _DescarteList.Mensagem);
    mmoResposta.Lines.Add('Status: '   + _DescarteList.Status);

    if AnsiSameText(_DescarteList.Status, 'ERRO') then
      mmoResposta.Lines.Add('ErroClasse: ' + ConverteErroClasse(_DescarteList.ErroClasse));
    mmoResposta.Lines.Add('');

    for i := 0 to _DescarteList.Count - 1 do
    begin
      _ConsultarItem := _ConsultarList.Item[i];
      _DescarteItem  := _DescarteList.Item[i];

      mmoResposta.Lines.Add('ITEM: ' + IntToStr(i+1));
      mmoResposta.Lines.Add('  IdIntegracao: ' + _DescarteItem.IdIntegracao);
      mmoResposta.Lines.Add('  Erro: ' + _DescarteItem.Erro);
      mmoResposta.Lines.Add('  ErroClasse: ' + ConverteErroClasse(_DescarteItem.ErroClasse));
      mmoResposta.Lines.Add('');

      if _DescarteItem.ErroClasse <> 400 then                                                                                        
      begin
         with SQLEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('UPDATE '+oREPZero('FIN_REC_BAN_BAI','_',RECParametros.Id,3));
           SQL.Add('SET   API_ID_DST = ''' + _DescarteItem.IdIntegracao + ''',');

           SQL.Add('      API_MT = ''' + StringReplace(oREPApostrofos(_ConsultarItem.Motivo),Char(39),'',[rfReplaceAll]) + ''',');

           SQL.Add('      API_ID = NULL,');
           SQL.Add('      API_ST = NULL,');

           SQL.Add('      API_CA = NULL,');
           SQL.Add('      API_NN = NULL' );

           SQL.Add('WHERE API_ID = ''' +_DescarteItem.IdIntegracao + '''');
           ExecQuery;
         end;
      end;
    end;
  finally
    oCTransact(TEdicao);
  end;
end;

procedure TFrmBoletos._Clear;
begin
  SBRodape.Panels[2].Text := EmptyStr;
  SBRodape.Panels[3].Text := EmptyStr;

  RECPrincipal.CDEV := EmptyStr;
  RECPrincipal.DEEV := EmptyStr;

  EDEMAIL.Text := EmptyStr;

  if EDCDNF.Text <> EmptyStr then
     edtIdIntegracao.Text := EmptyStr;

  edtIdImpressao.Text       := EmptyStr;
  edtIdIntegracaoBaixa.Text := EmptyStr;

  edtProtocoloRetornoImpressaoLote.Text := EmptyStr;
  edtProtocoloRetornoProcessamento.Text := EmptyStr;

  medtDataInicial.Text := '  /  /    ';
  medtDataFinal.Text   := '  /  /    ';

  SLOcorrencia.Clear;
  mmoTX2.Lines.Clear;
  mmoMensagens.Lines.Clear;
  mmoResposta.Lines.Clear;

  Application.ProcessMessages;
end;

procedure TFrmBoletos._Scroll;
begin
  try
//    oScrollMemo(mmoTX2,SB_LINEUP);
    mmoTX2.SelStart  := 1;
    mmoTX2.SelLength := 1;

//    oScrollMemo(mmoResposta,SB_LINEUP);
    mmoResposta.SelStart  := 1;
    mmoResposta.SelLength := 1;

    SBRodape.Panels[2].Text := EmptyStr;
    SBRodape.Panels[3].Text := EmptyStr;
  finally
    Application.ProcessMessages;
    EDCDNF.SetFocus;
  end;  
end;

procedure TFrmBoletos._PSQERP(ADefaultPSQ: String = 'CON';ADefaultAction: TDefaultAction = laClose);
begin
  if BTNConfig.Tag = 0 then
     oException(EDCDNF,'Servidor do banco não concectado !');

  oRTransact(TConsulta);
  with Titulo do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SP_FIN_REC_BAN_API_BOL');
    SQL.Add('(');
    SQL.Add(''''+RECParametros.Id+''',');
    SQL.Add(''''+EDCDNF.Text     +''',');
    SQL.Add(''''+oREPAcentos(cbPesquisa.Text)+'''');
    SQL.Add(')');

    SQL.Add('WHERE DEST <> ''BAIXADO''');
    Open;
    if Eof then
       oException(EDCDNF,'Atenção !' +#13+
                         'Número da nota fiscal ou título não encontrado !');
  end;

  while not Titulo.Eof do
  begin
    { Pesquisa vindo do banco }
    if ADefaultPSQ = 'API' then
       _PSQAPI(TituloTituloEmissaoBoleto.AsString) else
    begin
      if TituloDEST.AsString = 'CANCELADO' then
         oException(EDCDNF,'Atenção !' +#13+
                           'Título Nº '+TituloTituloEmissaoBoleto.AsString+' '+TituloDEST.AsString+' !');

      { Gerando arquivo json }
      if ADefaultPSQ = 'GER' then
      begin
        if  SQLConsulta.Tag <> 6 then
        begin
          if (TituloAPI_ID.AsString <> EmptyStr) and (TituloAPI_ID.AsString <> '0') and (TituloAPI_ST.AsString <> 'BAIXADO') then
              oException(EDCDNF,'Atenção !' +#13+
                                'Título Nº '+TituloTituloEmissaoBoleto.AsString+' já Registrado !'+#13+#13+
                                 TituloDEST.AsString);

          if (Pos(TituloDEST.AsString,'PENDENTEBAIXADO') = 0) then
              oException(EDCDNF,'Atenção !' +#13+
                                'Título Nº '+TituloTituloEmissaoBoleto.AsString+' '+TituloDEST.AsString+' !');
        end;
        
        if TituloTituloDataVencimento.AsDateTime < RECParametros.DTSERVER then
           oException(EDCDNF,'Atenção !' +#13+
                             'Título Nº '+TituloTituloEmissaoBoleto.AsString+' possui data de vencimento'+#13+
                             'inferior a data atual !'+#13+#13+
                             'Data Vencimento: '+FormatDateTime('dd/mm/yyyy.',TituloTituloDataVencimento.AsDateTime));

        if TituloTituloOcorrencia.AsInteger > 1 then
           oException(EDCDNF,'Atenção !' +#13+
                             'Título Nº '+TituloTituloEmissaoBoleto.AsString + #13+
                             'Contém Duplicidade em Contas a Receber !');

        if Length(TituloSacadoEnderecoLogradouro.AsString+TituloSacadoEnderecoNumero.AsString) > 140 then
           oException(EDCDNF,'Duplicata Nº '+TituloTituloEmissaoBoleto.AsString+' Logradouro Incorreto !'+#13+'Abrevie o logradouroS e salve em endereço de cobrança.');

        if (TituloSacadoEnderecoCep.AsString = EmptyStr  ) or (TituloSacadoEnderecoCep.AsString = '00000000' ) or (Length  (TituloSacadoEnderecoCep.AsString ) < 8) or
           (TituloSacadoEnderecoCep.AsString = '00000000') or (TituloSacadoEnderecoCep.AsString = '00000-000') then
            oException(EDCDNF,'Atenção !' +#13+
                              'Título Nº '+TituloTituloEmissaoBoleto.AsString+' Cep Incorreto !'+#13+#13+
                                           TituloSacadoEnderecoCep.AsString);
      end else
      begin
        if (TituloAPI_ID.AsString = EmptyStr) or (TituloAPI_ID.AsString = '0') then
        begin
          oErro(Self.Handle,'Atenção !' +#13+
                            'Título Nº '+TituloTituloEmissaoBoleto.AsString+' não Registrado !');

          if ADefaultPSQ <> 'CON' then
             Abort;
        end;

        { Consulta Normal }
        if ADefaultPSQ = 'CON' then
           edtIdIntegracao.Text := edtIdIntegracao.Text + TituloAPI_ID.AsString;
      end;
    end;
    Titulo.Next;

    { Consulta Normal }
    if (ADefaultPSQ = 'CON') and (not Titulo.Eof) then
        edtIdIntegracao.Text := edtIdIntegracao.Text + ',';
  end;

  Titulo.First;
  if ADefaultAction = laClose then
     oCTransact(TConsulta,ltCommit,laClose);
end;

procedure TFrmBoletos._PSQAPI(ATituloNumeroDocumento: String);
var
  URL: WideString;
  hBoleto: OleVariant;
  jBoleto: TJSONObject;
  sBoleto: TStringList;
  i: Word;
begin
  if BTNConfig.Tag = 0 then
     Exit;

  if ATituloNumeroDocumento = EmptyStr then
     oException(EDCDNF,'Nº do documento ou título não informado !');

  jBoleto := Nil;
  sBoleto := Nil;
  URL     := 'https://cobrancabancaria.tecnospeed.com.br/api/v1/boletos?TituloNumeroDocumento='+ATituloNumeroDocumento;
  
  try
    _ITResposta;
    i := 0;

    repeat
      try
        inc(i);
        SBRodape.Panels[2].Text := 'Aguarde, tentando estabelecer comunicação com o banco ...';
        SBRodape.Panels[3].Text := 'Tentativa Nº '+IntToStr(i);
        Application.ProcessMessages;

        hBoleto := Createoleobject('WinHttp.WinHttpRequest.5.1');
        hBoleto.open('GET',URL,False);
        hBoleto.SetRequestHeader('cnpj-sh'     ,RECParametros.SHEILD_CNPJ  );
        hBoleto.SetRequestHeader('token-sh'    ,RECParametros.FIN_API_TOKEN);
        hBoleto.SetRequestHeader('cnpj-cedente',RECParametros.CNPJ         );
        hBoleto.Send;

        SBRodape.Panels[2].Text := 'Conexão estabelecida com sucesso';
        Application.ProcessMessages;
        Break;
      except
        SBRodape.Panels[2].Text := 'Falha na comunicação com o banco ! '+IntToStr(i)+' tentativa(s).';
        SleepEx(1000,False); Application.ProcessMessages;
      end;
    until i = 10;

    sBoleto := TStringList.Create;sBoleto.Add(hBoleto.ResponseText);
    jBoleto := TJSONObject.Create(sBoleto.Text);

    if jBoleto.getJSONArray('_dados').Length > 0 then
    begin
      for i := 0 to jBoleto.getJSONArray('_dados').Length -1 do
          if jBoleto.getJSONArray('_dados').getJSONObject(i).optString('IdIntegracao') <> EmptyStr then
          begin
            if ((    LABusca.Visible) and (Pos(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('situacao'),'REGISTRADOEMITIDOSALVOPENDENTE') > 0)) or
               ((not LABusca.Visible) and (Pos(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('situacao'),'REGISTRADOEMITIDOSALVOPENDENTE') = 0)) then
            begin
              RECPrincipal.CDEV := jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloNumeroDocumento');
              RECPrincipal.DEEV := jBoleto.getJSONArray('_dados').getJSONObject(i).optString('situacao');
            end;  

            try
              oOTransact(TEdicao);
              with SQLEdicao do
              begin
                Close;
                SQL.Clear;
                SQL.Add('UPDATE OR INSERT');
                SQL.Add('INTO   FIN_REC_LOG_API (IDEP,TITULO,API_ID,API_ST,API_CA)');
                SQL.Add('VALUES (');
                SQL.Add('''' + RECParametros.Id + ''',');
                SQL.Add('''' + jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloNumeroDocumento') + ''',');
                SQL.Add('''' + jBoleto.getJSONArray('_dados').getJSONObject(i).optString('IdIntegracao'         ) + ''',');
                SQL.Add('''' + jBoleto.getJSONArray('_dados').getJSONObject(i).optString('situacao'             ) + ''',');
                SQL.Add('''' + jBoleto.getJSONArray('_dados').getJSONObject(i).optString('CedenteCarteira'      ) + ''')');
                SQL.Add('MATCHING (API_ID,API_ST)');
                ExecQuery;


                Close;
                SQL.Clear;
                SQL.Add('UPDATE ' + oREPZero('FIN_REC_BAN_BAI','_',RECParametros.Id,3));
                SQL.Add('SET');
                SQL.Add('API_ID = ''' + jBoleto.getJSONArray('_dados').getJSONObject(i).optString('IdIntegracao'   ) + ''',');
                SQL.Add('API_ST = ''' + jBoleto.getJSONArray('_dados').getJSONObject(i).optString('situacao'       ) + ''',');
                SQL.Add('API_CA = ''' + jBoleto.getJSONArray('_dados').getJSONObject(i).optString('CedenteCarteira') + ''',');

                SQL.Add('API_NN = ''' + IFThen((jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloNossoNumero') <> EmptyStr) and
                                               (jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloNossoNumero') <> 'null'),
                                                jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloNossoNumero'),'0') + ''',');

                SQL.Add('API_DTCA = CURRENT_TIMESTAMP');

                SQL.Add('WHERE TITULO = ''' + jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloNumeroDocumento') + '''');
                SQL.Add('AND  (API_ID IS NULL OR API_ID = ''0'')');

                ExecQuery;
              end;
              oCTransact(TEdicao);
            except
              on E: Exception do
              begin
                oCTransact(TEdicao,ltRollback);
                oException(EDCDNF,'Falha ao tentar efetivar a transmissão bancária !'+#13+#13+
                                  'Error Code: '+E.Message+'.'+#13+
                                  'Transmitindo Boleto.');
              end;
            end;

            mmoResposta.Lines.Add('TÍTULO JÁ REGISTRADO NO BANCO');
            mmoResposta.Lines.Add('*****************************');
            mmoResposta.Lines.Add('Título: ' +jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloNumeroDocumento'));
            mmoResposta.Lines.Add('Emissão: '+jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloDataEmissao'    ));
            mmoResposta.Lines.Add('Sacado: ' +jBoleto.getJSONArray('_dados').getJSONObject(i).optString('SacadoNome'           ));

            mmoResposta.Lines.Add('');
            mmoResposta.Lines.Add('Situação: '+jBoleto.getJSONArray('_dados').getJSONObject(i).optString('situacao'    ));
            mmoResposta.Lines.Add('Token: '   +jBoleto.getJSONArray('_dados').getJSONObject(i).optString('IdIntegracao'));
            edtIdIntegracao.Hint := jBoleto.getJSONArray('_dados').getJSONObject(i).optString('IdIntegracao');

            mmoResposta.Lines.Add('');
            mmoResposta.Lines.Add('Código Barras: '+jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloCodigoBarras'));
            mmoResposta.Lines.Add('Nosso Número: ' +jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloNossoNumero' ));
            mmoResposta.Lines.Add('Carteira: '     +jBoleto.getJSONArray('_dados').getJSONObject(i).optString('CedenteCarteira'   ));
            mmoResposta.Lines.Add('');

            Application.ProcessMessages;
          end;

      SBRodape.Panels[2].Text := 'Consulta bancária realizada com sucesso !';
    end else
    if ATituloNumeroDocumento <> '000000000' then
       SBRodape.Panels[2].Text := 'Título não Encontrado !';
  finally
    _IFResposta;

    hBoleto := Unassigned;
    sBoleto.Free;
    jboleto.Free;

    SBRodape.Panels[3].Text := EmptyStr;
    Application.ProcessMessages;
  end;
end;


end.
