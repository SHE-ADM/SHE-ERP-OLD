unit uPrincipal;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, ToolWin, StdCtrls, 
  DateUtils, StrUtils, math, Shellapi, jpeg, dxStatusBar,
  OleCtrls, BoletoX_TLB, SyncObjs, superobject, uJSON, comobj, cxGraphics,
  cxControls, IBDatabase, IBSQL;

type
  TFrmSHE_API_BOL = class(TForm)
    TTempo: TTimer;
    SBRodape: TdxStatusBar;
    IPrincipal: TImage;
    PNLRodape: TPanel;
    PBPrincipal: TProgressBar;
    PNLCaption: TPanel;
    EMErros: TMemo;
    FBoletoX: TspdBoletoX;
    PNLProcesso: TPanel;
    SQLAPIConsulta: TIBSQL;
    TAPIConsulta: TIBTransaction;
    TAPIEdicao: TIBTransaction;
    SQLAPIEdicao: TIBSQL;
    SQLAPIFKConsulta: TIBSQL;
    procedure TTempoTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure _TrimAppMemorySize;
    procedure _Login(AIDUSER: Variant; AIDEP: Variant);

    procedure _API_INI(AIDEP: Variant);

    procedure _Boletos;
    procedure _BoletosAPI;
    procedure _BoletosOCX(ANossaSituacao: String);

    function _ConsultaID(AAPI_ID: String): String;
    function _ConnectAPI: Word;
  end;

procedure _GERTXT; STDCall;

var
  FrmSHE_API_BOL: TFrmSHE_API_BOL;

  API_TOKEN: String = 'Consolidação Otimotex';
  API_HORA : Word;

  API_URL: WideString;

  API_CONNECTION,
  API_MTED,
  ERP_ST: String;

  API_DTED,
  ERP_DT: TDate;

  API_TAXA: Double;

  DUP_VDUP,
  PAG_VACR,PAG_VDSC,PAG_VPAG: Double;

  PBCount: Integer;

  _ConsultarList: IspdRetConsultarLista;
  _ConsultarItem: IspdRetConsultarTituloItem;

  hBoleto: OleVariant;
  jBoleto: TJSONObject;
  sBoleto: TStringList;

  SOcorrencia: TStringList;

  CNPJSoftwareHouse      : String = '17287123000158';
  TokenSoftwareHouse     : String = '608363d7bf322e4b52286140d00245a6';
  CNPJCedente            : String = '47273917000123';
  CedenteContaNumero     : String = '09570';
  CedenteContaNumeroDV   : String = '4';
  CedenteConvenioNumero  : String = '8317095704';
  CedenteContaCodigoBanco: String = '341';
  CedenteIDG_BOLETO      : String = 'IDG_BOLETO_ITAU';

implementation

uses bPrincipal;

{$R *.dfm}

procedure _GERTXT; STDCall;
//var
//  TFTxt : TextFile;
//  ARQTxt: String;
begin
{  ARQTxt := PAnsiChar(ExtractFileDir(GetCurrentDir)+'\Exec\B2B '+FormatDateTime('dd-mm-yy hhmmss',Now)+'.txt');
  try
    AssignFile(TFTxt,PChar(ARQTxt));
    Rewrite(TFTxt);
    WriteLN(TFTxt,'Transferências de Dados B2B | ERP => B2B');
    WriteLN(TFTxt,'========================================');
    WriteLN(TFTxt,'');
    WriteLN(TFTxt,'OTIMOTEX');
    WriteLN(TFTxt,'Estoque........: '+oStrZero(nRecNoOE,5));
    WriteLN(TFTxt,'Clientes.......: '+oStrZero(nRecNoOC,5));
    WriteLN(TFTxt,'Transportadoras: '+oStrZero(nRecNoOT,5));
    WriteLN(TFTxt,'Representantes.: '+oStrZero(nRecNoOR,5));
    WriteLN(TFTxt,'Vendedores.....: '+oStrZero(nRecNoOV,5));
    WriteLN(TFTxt,'');
    WriteLN(TFTxt,'LEBIANCO');
    WriteLN(TFTxt,'Estoque........: '+oStrZero(nRecNoLE,5));
    WriteLN(TFTxt,'Clientes.......: '+oStrZero(nRecNoLC,5));
    WriteLN(TFTxt,'Transportadoras: '+oStrZero(nRecNoLT,5));
    WriteLN(TFTxt,'Representantes.: '+oStrZero(nRecNoLR,5));
    WriteLN(TFTxt,'Vendedores.....: '+oStrZero(nRecNoLV,5));
    WriteLN(TFTxt,'');
  finally
    CloseFile(TFTxt);
  end; }
  FrmSHE_API_BOL._TrimAppMemorySize;
end;

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

procedure TFrmSHE_API_BOL.TTempoTimer(Sender: TObject);
          function SecondsIdle: DWord;
          var
            liInfo: TLastInputInfo;
          begin
            liInfo.cbSize := SizeOf(TLastInputInfo);
            GetLastInputInfo(liInfo);

            Result := (GetTickCount - liinfo.dwTime) DIV 1000;
          end;
begin
  if FrmSHE_API_BOL <> Nil then
     with FrmSHE_API_BOL do
     begin
       SBRodape.Panels[2].Text   := Format('Tempo Ocioso: %d',[RECParametros.SecondsIdle]);
       RECParametros.SecondsIdle := SecondsIdle;

       if RECParametros.SecondsIdle > 0 then
          if RECParametros.SecondsIdle mod 5 = 0 then
             try
               try
                 TTEmpo.Enabled := False;
                 FrmSHE_API_BOL.Caption := RECParametros.EP_ID + ' - Consolidação Bancária, aguardando ...';
                 Application.ProcessMessages;

                 _API_INI('1');
                 _API_INI('4');
               finally
                 TTEmpo.Enabled       := True;
                 FrmSHE_API_BOL.Caption := RECParametros.EP_ID + ' - Consolidação Bancária, aguardando ...';
                 Application.ProcessMessages;

                 _GERTXT;
               end;
             finally
                Self.Close;
             end;
             
       SBRodape.Panels[3].Text := RECParametros.STCX;
     end;
end;

procedure TFrmSHE_API_BOL.FormCreate(Sender: TObject);
begin
  if ClientHandle <> 0 then
     if (not (GetWindowLong(ClientHandle, GWL_USERDATA) <> 0)) then
              SetWindowLong(ClientHandle, GWL_USERDATA, SetWindowLong(ClientHandle, GWL_WNDPROC, integer(@ClientWindowProc)));

  CurrencyString    := 'R$';
  ThousandSeparator := '.';
  DecimalSeparator  := ',';

  SOcorrencia := TStringList.Create;

  { GET Json }
  hBoleto := Unassigned;
  sBoleto := Nil;
  jBoleto := Nil;
end;

procedure TFrmSHE_API_BOL.FormShow(Sender: TObject);
begin
  OnShow := Nil;
end;

procedure TFrmSHE_API_BOL.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
end;

procedure TFrmSHE_API_BOL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmSHE_API_BOL.FormDestroy(Sender: TObject);
begin
  try
    hBoleto := Unassigned;
    if sBoleto      <> Nil then FreeAndNil(sBoleto);
    if jBoleto      <> Nil then FreeAndNil(jboleto);
    if SOcorrencia <> Nil then FreeAndNil(SOcorrencia);
  finally
    try
      oCDatabase(FBird.DBErp);
    finally
      FrmSHE_API_BOL := Nil;
    end;  
  end;
end;

procedure TFrmSHE_API_BOL.FormPaint(Sender: TObject);
var
  XRect: TRect;
begin
  if Showing then
  begin
    XRect.Left   := IPrincipal.Left;
    XRect.Top    := IPrincipal.Top;
    XRect.Right  := Screen.Width;
    XRect.Bottom := Screen.Height - SBRodape.Height;

    Canvas.StretchDraw(xRect,IPrincipal.Picture.Graphic);
  end;
end;

procedure TFrmSHE_API_BOL.FormResize(Sender: TObject);
begin
  if FrmSHE_API_BOL <> Nil then
     Paint;
end;

procedure TFrmSHE_API_BOL._TrimAppMemorySize;
var
  MainHandle: THandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID);
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF);
    CloseHandle(MainHandle);
  except
    ;
  end;
  Application.ProcessMessages;
end;

procedure TFrmSHE_API_BOL._Login(AIDUSER: Variant; AIDEP: Variant);
begin
  if (not oEmpty(AIDUSER)) and (not oEmpty(AIDEP)) and (oEmpty(RECParametros.DataBaseError)) then
  try
    with FBird do
    begin
      bExecParametros(AIDEP);
      bExecUsuarios(AIDUSER);
      bExecCaixa;
    end;

    { Preenchendo o rodapé do Form Principal }
    SBRodape.Width          := Screen.Width + 1;
    SBRodape.Panels[0].Text := RECParametros.EP_NO;
    SBRodape.Panels[1].Text := RECParametros.ServerHost;

    { Show Foto de Fundo - Tela Principal}
    _oLoadJPG(Nil,Nil,IPrincipal,True,'JPG_SPLASH');
  finally
    FrmSHE_API_BOL.Repaint;
    Application.ProcessMessages;
  end;

  if RECParametros.FIN_API then
  begin
    FBoletoX.Config.URL := 'https://cobrancabancaria.tecnospeed.com.br';
    FBoletoX.ConfigurarSoftwareHouse(RECParametros.SHE_CNPJ,RECParametros.FIN_API_TOKEN);
    FBoletoX.Config.CedenteCpfCnpj := RECParametros.CNPJ;
    FBoletoX.Config.SalvarLogs     := True;

    API_URL := 'https://cobrancabancaria.tecnospeed.com.br/api/v1/boletos?TituloNumeroDocumento=000000000';
    _ConnectAPI;
  end;
end;

procedure TFrmSHE_API_BOL._API_INI(AIDEP: Variant);
var
  i: Word;
begin
  {
   aPesquisa[1]  = 'Representantes'
   aPesquisa[2]  = 'Clientes'
   aPesquisa[3]  = 'Pedidos Verificados'
   aPesquisa[4]  = 'Pedidos Recebidos'
   aPesquisa[5]  = 'Pedidos Enviados'
   aPesquisa[6]  = 'Preços B2B'
   aPesquisa[7]  = 'Estoque B2B'
   aPesquisa[8]  = 'Estoque B2C'
   aPesquisa[9]  = 'API Boletos'
   aPesquisa[10] = 'OCX Boletos Cartório'
  }

  aPesquisa := Nil; SetLength(aPesquisa,11);
  for i := 0 to High(aPesquisa) do
      SetLength(aPesquisa[i],8);

  with FBird do
  try
    { AUTENTICAÇÃO ERP }
    oODatabase(DBErp);
    if not oEmpty(RECParametros.DataBaseError) then
       Exit;

    _Login('0',AIDEP);
    if RECParametros.EP_ID = 0 then
       Exit;

    { EXECUTE SINCRONIZAÇÃO }
    SBRodape.Panels[2].Text := Format('Tempo Ocioso: %d',[RECParametros.SecondsIdle]);
    SBRodape.Panels[3].Text := RECParametros.STCX;
    Application.ProcessMessages;

    PBPrincipal.Max := 0;

    _Boletos;
  finally
    if not oEmpty(RECParametros.DataBaseError) then
    begin
      EMErros.Lines.Add(RECParametros.DataBaseError);
      EMErros.Height  := 95;
      EMErros.Visible := True;
    end;
  end;
end;

procedure TFrmSHE_API_BOL._Boletos;
var
  i: Word;
begin
  if RECParametros.FIN_API then
  with FBird do
  begin
    API_URL := EmptyStr;
    i := 0;

    try oODatabase(DBErp);

      { API }
      repeat
        _BoletosAPI;
        inc(i);
      until
        (API_URL = 'false') or
        (i = 5);

    finally oCDatabase(DBErp);

      { OCX }
      try     oODatabase(DBErp); _BoletosOCX('SALVO');
      finally oCDatabase(DBErp);

      try     oODatabase(DBErp); _BoletosOCX('REJEITADO');
      finally oCDatabase(DBErp);

      try     oODatabase(DBErp); _BoletosOCX('REGISTRADO');
      finally oCDatabase(DBErp);

      try     oODatabase(DBErp); _BoletosOCX('BAIXADO');
      finally oCDatabase(DBErp);

      try     oODatabase(DBErp); _BoletosOCX('ABERTO');
      finally oCDatabase(DBErp);

      try     oODatabase(DBErp); _BoletosOCX('CARTÓRIO');
      finally oCDatabase(DBErp);

      try     oODatabase(DBErp); _BoletosOCX('PROTESTADO');
      finally oCDatabase(DBErp);

      try     oODatabase(DBErp); _BoletosOCX('PRORROGADO');
      finally oCDatabase(DBErp);

      try     oODatabase(DBErp); _BoletosOCX('LIQUIDADO');
      finally oCDatabase(DBErp);

      try     oODatabase(DBErp); _BoletosOCX('VENCIDO');
      finally oCDatabase(DBErp);

      end;
      end;
      end;
      end;
      end;
      end;
      end;
      end;
      end;
      end;
    end;
  end;
end;

function TFrmSHE_API_BOL._ConnectAPI: Word;
var
  Connected: Word;
begin
  Connected := 10;
  repeat
    try
      Dec(Connected);
      Caption := RECParametros.EP_ID + ' - Consolidação Bancária, tentando conexão ...  ' + IntToStr(Connected);
      Application.ProcessMessages;

      hBoleto := Createoleobject('WinHttp.WinHttpRequest.5.1');
      hBoleto.open('GET',API_URL,False);
      hBoleto.SetRequestHeader('cnpj-sh'     ,RECParametros.SHE_CNPJ  );
      hBoleto.SetRequestHeader('token-sh'    ,RECParametros.FIN_API_TOKEN);
      hBoleto.SetRequestHeader('cnpj-cedente',RECParametros.CNPJ         );
      hBoleto.Send;
      Break;
    except
      SleepEx(5000,False);
    end;
  until Connected = 0;

  if Connected > 0 then
  begin
    sBoleto := TStringList.Create;sBoleto.Add(hBoleto.ResponseText);
    jBoleto := TJSONObject.Create(sBoleto.Text);
  end;

  result := Connected;
end;

procedure TFrmSHE_API_BOL._BoletosAPI;
var
  APagamentoData,
  AConsultaID: String;

  i: Integer;
  Pagina: Integer;
begin
  { Clear Matriz API }
  aPesquisa[9,00] := RECParametros.EP_ID; { Empresa }
  aPesquisa[9,01] := FormatDateTime('mm/dd/yy'      ,Date); { Cadastro }
  aPesquisa[9,02] := FormatDateTime('mm/dd/yy hh:mm',Now ); { Início }
  aPesquisa[9,03] := FormatDateTime('mm/dd/yy hh:mm',Now ); { Fim }

  aPesquisa[9,04] := 'API BOLETOS'; { Descrição }

  aPesquisa[9,05] := '0'; { Registros }
  aPesquisa[9,06] := '0'; { Total }
  aPesquisa[9,07] := '' ; { Erro }

  { Parâmetro de Consulta }
  APagamentoData := FormatDateTime('yyyy/mm/dd',
                    IncDay(Date,IFThen(DayOfWeek(Date) = 2,-3, // Segunda
                                IFThen(DayOfWeek(Date) = 1,-2, // Domingo
                                                           -1))));

//  APagamentoData := '2025/03/13';
//  API_URL := 'https://cobrancabancaria.tecnospeed.com.br/api/v1/boletos?TituloNumeroDocumento=214644-A';

  DUP_VDUP := 0;
  PAG_VACR := 0;
  PAG_VDSC := 0;
  PAG_VPAG := 0;

  { Leitura paginada de 50 em 50 registros }
  API_URL := 'https://cobrancabancaria.tecnospeed.com.br/api/v1/boletos?PagamentoData=>=' + APagamentoData + '&PagamentoRealizado=true&sort=TituloNumeroDocumento&limit=50';
  Pagina  := 0;

  try
    oOTransact(TAPIConsulta);
    while true do
    begin
      if  _ConnectAPI = 0 then
      Exit;

         API_URL := jBoleto.getJSONObject('_meta').getJSONObject('_paginacao').optString('_proximo');
      if API_URL <> 'false' then
      begin
        inc(Pagina);
        PBPrincipal.Max  := jBoleto.getJSONObject('_meta').getInt('_total');
        aPesquisa[09,06] := INTTOSTR(PBPrincipal.Max); { Total }

        if PBPrincipal.Max > 0 then
        begin
          { Caption }
          PNLCaption.Height  := 35;
          PNLCaption.Visible := True;

          { Gauge }
          PBCount              := 0;
          PBPrincipal.Position := 0;

          { Rodapé }
          PNLRodape.Height  := 20;
          PNLRodape.Visible := True;

          for i := 0 to jBoleto.getJSONArray('_dados').Length - 1 do
          begin
            aPesquisa[09,03] := FormatDateTime('mm/dd/yy hh:mm',Now);
            aPesquisa[09,05] := IntToStr(StrToInt(aPesquisa[09,05]) + 1);

            PBPrincipal.Position := PBPrincipal.Position  + 1;
            Inc(PBCount);

            if jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloNumeroDocumento') <> 'null' then
            PNLCaption.Caption := 'Nº Título: ' + jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloNumeroDocumento') + '. ';

            if jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloDataEmissao') <> 'null' then
            PNLCaption.Caption := PNLCaption.Caption + ' Emissão: ' + FormatDateTime('dd/mm/yy',StrToDate(LeftStr(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloDataEmissao'),10))) + '. ';

            if jBoleto.getJSONArray('_dados').getJSONObject(i).optString('PagamentoData') <> 'null' then
            PNLCaption.Caption := PNLCaption.Caption + 'Pagamento: ' + FormatDateTime('dd/mm/yy',StrToDate(LeftStr(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('PagamentoData'),10))) + '.';

            FrmSHE_API_BOL.Caption := RECParametros.EP_ID + ' - API: PAGOS - ' + IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max) + '. ' + aPesquisa[09,05] + ' Registro(s) Lido(s). Página ' + INTTOSTR(Pagina);
            Application.ProcessMessages;

            { Consulta Título no ERP }
            with SQLAPIConsulta do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT   PK.IDPK,PK.TITULO,PK.API_ID');
              SQL.Add('FROM ' + oREPZero('FIN_REC_BAN_BAI','_',RECParametros.EP_ID,3) + ' AS PK');

              SQL.Add('WHERE TITULO = ''' + jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloNumeroDocumento') + '''');
              ExecQuery;
            end;

            try
                 AConsultaID := _ConsultaID(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('IdIntegracao'));
              if AConsultaID  = 'SUCESSO' then
              begin
                DUP_VDUP := StrToFloat(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloValor'));

                PAG_VACR := StrToFloat(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('PagamentoValorAcrescimos')); { valor_juros + valor_multa }
                PAG_VDSC := StrToFloat(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('PagamentoValorDesconto'));
                PAG_VPAG := StrToFloat(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('PagamentoValorPago'));

                oOTransact(TAPIEdicao);
                with SQLAPIEdicao do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Add('UPDATE '+oREPZero('FIN_REC_BAN_BAI','_',RECParametros.EP_ID,3));
                  SQL.Add('SET');

                  SQL.Add('API_ID = ''' + jBoleto.getJSONArray('_dados').getJSONObject(i).optString('IdIntegracao') + ''',');
                  SQL.Add('API_ST = ''' + jBoleto.getJSONArray('_dados').getJSONObject(i).optString('situacao')     + ''',');

                  SQL.Add('FIN_VALO = ''' + oStrTran(FloatToStr(DUP_VDUP),',','.') + ''',');
                  SQL.Add('FIN_VJUR = ''' + oStrTran(FloatToStr(PAG_VACR),',','.') + ''',');
                  SQL.Add('FIN_VDES = ''' + oStrTran(FloatToStr(PAG_VDSC),',','.') + ''',');
                  SQL.Add('FIN_VPAG = ''' + oStrTran(FloatToStr(PAG_VPAG),',','.') + ''',');

                  SQL.Add('FIN_STFI = ''' + ERP_ST + ''',');
                  SQL.Add('FIN_DPAG = ''' + FormatDateTime('mm/dd/yy',StrToDate(LeftStr(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('PagamentoData'),10))) + ''',');
                  SQL.Add('FIN_DBAI = ''' + FormatDateTime('mm/dd/yy',StrToDate(LeftStr(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('PagamentoData'),10))) + ''',');
                  SQL.Add('API_DTED = CURRENT_TIMESTAMP,');

                  SQL.Add('API_MT       = ''' + RIGHTSTR(Trim(API_MTED),120) + ''',');
                  SQL.Add('API_INFADCAD = ''' + SOcorrencia.Text + ''',');

                  SQL.Add('API_CDEV = 200,');              { API Atualizada }
                  SQL.Add('API_DTEV = CURRENT_TIMESTAMP'); { API Evento }

                  SQL.Add('WHERE TITULO = ''' + TRIM(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloNumeroDocumento')) + '''');
                  ExecQuery;
                end;
                oCTransact(TAPIEdicao);
              end else
              Abort;

            except
              on E: Exception do
              begin
                oCTransact(TAPIEdicao,ltRollback);

                aPesquisa[09,07] := 'Falha ao tentar atualizar via API ' + aPesquisa[09,04] + '. Nº ' + jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloNumeroDocumento') + ' ID ' + jBoleto.getJSONArray('_dados').getJSONObject(i).optString('IdIntegracao') + #13+#13+
                                     Trim(E.Message) + #13 +
                                     FormatDateTime('dd/mm/yy hh:mm',Now);

                EMErros.Lines.Add(aPesquisa[09,07]);
                EMErros.Height  := 95;
                EMErros.Visible := True;
                Application.ProcessMessages;

                if SQLAPIConsulta.Current.ByName('TITULO').AsString <> EmptyStr then
                begin
                  oOTransact(TAPIEdicao);
                  with SQLAPIEdicao do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add('UPDATE '+oREPZero('FIN_REC_BAN_BAI','_',RECParametros.EP_ID,3));
                    SQL.Add('SET');

                    SQL.Add('API_CDEV = 199,'); { API Falha na consolidação }
                    SQL.Add('API_DTEV = CURRENT_TIMESTAMP');

                    SQL.Add('WHERE TITULO = ''' + SQLAPIConsulta.Current.ByName('TITULO').AsString + '''');
                    ExecQuery;
                  end;
                  oCTransact(TAPIEdicao);
                end;
              end;
            end;
          end;
        end;
      end;

      if API_URL = 'false' then
      Break;

    end;
  finally
    PNLRodape.Visible  := False; PNLRodape.Height  := 0;
    PNLCaption.Visible := False; PNLCaption.Height := 0;

    try
      oCTransact(TAPIConsulta);
      oOTransact(TAPIEdicao  );
      with SQLAPIEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE OR INSERT');
        SQL.Add('INTO   TAB_API_LOG (IDEP,DTCA,DTINI,DTFIM,DESCRICAO,REGISTROS,TOTAL,LOG_ERRO)'); { Mudar para TB_API_BOL_LOG }

        SQL.Add('VALUES (');
        SQL.Add('''' + aPesquisa[9,00] + ''',');
        SQL.Add('''' + aPesquisa[9,01] + ''',');
        SQL.Add('''' + aPesquisa[9,02] + ''',');
        SQL.Add('''' + aPesquisa[9,03] + ''',');
        SQL.Add('''' + aPesquisa[9,04] + ''',');
        SQL.Add('''' + aPesquisa[9,05] + ''',');
        SQL.Add('''' + aPesquisa[9,06] + ''',');
        SQL.Add('''' + oStrTran(aPesquisa[9,07],'''','') + '''');
        SQL.Add(')');

        SQL.Add('MATCHING (IDEP,DTCA,DESCRICAO)');
        ExecQuery;
      end;
      oCTransact(TAPIEdicao);
    except
      on E: Exception do
      begin
        oCTransact(TAPIEdicao,ltRollback);

        aPesquisa[09,07] := 'Falha ao tentar atualizar LOG API DE PAGAMENTOS' + #13 + #13 +
                             Trim(E.Message) + #13 +
                             FormatDateTime('dd/mm/yy hh:mm',Now);

        EMErros.Lines.Add(aPesquisa[09,07]);
        EMErros.Height  := 95;
        EMErros.Visible := True;
        Application.ProcessMessages;
      end;
    end;
  end;
end;

procedure TFrmSHE_API_BOL._BoletosOCX(ANossaSituacao: String);
var
  AConsultaID: String;
begin
  { Clear Matriz }
  aPesquisa[9,00] := RECParametros.EP_ID; { Empresa }
  aPesquisa[9,01] := FormatDateTime('mm/dd/yy'      ,Date); { Cadastro }
  aPesquisa[9,02] := FormatDateTime('mm/dd/yy hh:mm',Now ); { Início }
  aPesquisa[9,03] := FormatDateTime('mm/dd/yy hh:mm',Now ); { Fim }

  aPesquisa[9,04] := 'OCX BOLETOS ' + ANossaSituacao; { Descrição }

  aPesquisa[9,05] := '0'; { Registros }
  aPesquisa[9,06] := '0'; { Total }
  aPesquisa[9,07] := '' ; { Erro }

//if ANossaSituacao <> 'SALVO' then
//Exit;

  with FBird do
  try
    oOTransact(TAPIConsulta);
    with SQLAPIConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   PK.IDPK,PK.TITULO,CAST(PK.DTCA AS DATE) AS DTCA,PK.DTVC,PK.DTPG,PK.DTBX,PK.DEST,PK.FIN_VJUR,PK.FIN_VDES,PK.API_ID,PK.API_DTED,API_NN,API_ST,PK.API_TAXA,PK.API_MT,PK.API_INFADCAD');
      SQL.Add('FROM ' + oREPZero('FIN_REC_BAN_BAI','_',RECParametros.EP_ID,3) + ' AS PK');

      { API }
      SQL.Add('WHERE NOT FEMPTY(PK.API_ID)' );
      SQL.Add('AND PK.DEST <> ''CANCELADO''');

      if ANossaSituacao = 'REJEITADO' then
      begin
        SQL.Add('AND PK.API_ST LIKE ''REJEITADO%''');
      end else

      if ANossaSituacao = 'SALVO' then
      begin
        SQL.Add('AND PK.API_ST LIKE ''SALVO%''');
      end else

      if ANossaSituacao = 'LIQUIDADO' then
      begin
        SQL.Add('AND PK.API_ST   LIKE ''LIQU%''');
        SQL.Add('AND PK.DEST NOT LIKE ''PAGO%''');
      end else

      if ANossaSituacao = 'BAIXADO' then
      begin
        SQL.Add('AND PK.API_ST = ''' + ANossaSituacao + '''');
        SQL.Add('AND PK.DEST   = ''PENDENTE''');
      end else

      if ANossaSituacao = 'REGISTRADO' then
      begin
        SQL.Add('AND PK.API_ST = ''' + ANossaSituacao + '''');
        SQL.Add('AND PK.DEST   = ''BAIXADO''');
      end else
      SQL.Add('AND PK.DEST LIKE ''' + IFThen(Pos(ANossaSituacao,'ABERTOVENCIDO') > 0,'PENDENTE',ANossaSituacao) + '%''');

      if ANossaSituacao = 'ABERTO' then
      SQL.Add('AND PK.DTVC < CURRENT_DATE + 4') else

      if ANossaSituacao = 'VENCIDO' then
      SQL.Add('AND PK.DTVC > CURRENT_DATE + 4');

      // SQL.Add('AND TITULO = ''227471''');

      // Atualizar motivos em branco sem alterar o nosso status (ERP_ST)
      // SQL.Add('AND FEMPTY(PK.API_MT)');

      // Verificar título individual
      //SQL.Add('AND PK.TITULO LIKE ''217891-D%''');

      { Atualizar datas do protesto e/ou cartório
          SQL.Add('AND  PK.API_ST NOT CONTAINING   ''LIQUI''');
          SQL.Add('AND  PK.API_MT NOT CONTAINING   ''LIQUI''');
          SQL.Add('AND (PK.API_INFADCAD CONTAINING ''PROTESTADO'' OR PK.API_INFADCAD CONTAINING ''CARTÓRIO'')');
          SQL.Add('AND  PK.DEST <> ''BAIXADO'''  );
          SQL.Add('AND  PK.DEST <> ''NÃO PAGO''' );
          SQL.Add('AND  PK.DEST <> ''PROTESTADO COM ADVOGADO''');
          SQL.Add('AND  PK.DEST <> ''PROTESTADO COM INSTRUMENTO''');

          SQL.Add('AND  PK.DEST NOT LIKE ''PAGO%''');
      }


      { Carteiras Indefinidas }
      //SQL.Add('AND PK.API_CA = 0');

      SQL.Add('ORDER BY PK.DTVC DESC');
      ExecQuery;
    end;

    PBPrincipal.Max := oLast(SQLAPIConsulta);
    oFirst(SQLAPIConsulta);

    if PBPrincipal.Max > 0 then
    begin
      { Caption }
      PNLCaption.Height  := 35;
      PNLCaption.Visible := True;

      { Gauge }
      PBCount              := 0;
      PBPrincipal.Position := 0;

      { Rodapé }
      PNLRodape.Height  := 20;
      PNLRodape.Visible := True;

      { Início }
      aPesquisa[9,06] := IntToStr(PBPrincipal.Max);

      while not SQLAPIConsulta.Eof do
      begin
        try
          PBPrincipal.Position := PBPrincipal.Position  + 1;
          aPesquisa[9,05]      := INTTOSTR(PBPrincipal.Position);
          Inc(PBCount);

          PNLCaption.Caption := 'Nº Título: '  + SQLAPIConsulta.Current.ByName('TITULO').AsString + '. ' +
                                'Emissão: '    + FormatDateTime('dd/mm/yy',SQLAPIConsulta.Current.ByName('DTCA').AsDate) + '. ' +
                                'Vencimento: ' + FormatDateTime('dd/mm/yy',SQLAPIConsulta.Current.ByName('DTVC').AsDate) + '.';

          FrmSHE_API_BOL.Caption := RECParametros.EP_ID + ' - OCX: ' + ANossaSituacao + ' - ' + IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max) + '.';
          Application.ProcessMessages;

             AConsultaID := _ConsultaID(SQLAPIConsulta.Current.ByName('API_ID').AsString);
          if AConsultaID  = 'SUCESSO' then
          begin
            DUP_VDUP := _ConsultarItem.TituloValor;
            PAG_VACR := _ConsultarItem.PagamentoValorAcrescimos; { valor_juros + valor_multa }
            PAG_VDSC := _ConsultarItem.PagamentoValorDesconto;
            PAG_VPAG := _ConsultarItem.PagamentoValorPago;

            if (_ConsultarItem.TituloNossoNumero     <> SQLAPIConsulta.Current.ByName('API_NN').AsString) or   { Nosso Número    }
               (_ConsultarItem.Situacao              <> SQLAPIConsulta.Current.ByName('API_ST').AsString) or   { Situação Boleto }

                //    ((LeftStr(_ConsultarItem.Situacao,4) = 'LIQU') and (LeftStr(SQLAPIConsulta.Current.ByName('API_ST').AsString,4) <> 'PAGO')) or   { LIQUIDADO diferente de PAGO }

               ((API_MTED <> EmptyStr) and (API_MTED <> SQLAPIConsulta.Current.ByName('API_MT').AsString)) or   { Motivo          }
               ((ERP_ST   <> EmptyStr) and (ERP_ST   <> SQLAPIConsulta.Current.ByName('DEST'  ).AsString)) or   { Nossa Situação  }

               ((PAG_VACR > 0) and (FormatFloat('0.00',PAG_VACR) <> FormatFloat('0.00',SQLAPIConsulta.Current.ByName('FIN_VJUR').AsFloat))) or { Acréscimos }
               ((PAG_VDSC > 0) and (FormatFloat('0.00',PAG_VDSC) <> FormatFloat('0.00',SQLAPIConsulta.Current.ByName('FIN_VDES').AsFloat))) or { Descontos  }
               ((API_TAXA > 0) and (FormatFloat('0.00',API_TAXA) <> FormatFloat('0.00',SQLAPIConsulta.Current.ByName('API_TAXA').AsFloat))) or { Taxas      }

               { Data de Edição }
               ((API_DTED > 0) and
                (FormatDateTime('dd/mm/yy',API_DTED) <> FormatDateTime('dd/mm/yy',SQLAPIConsulta.Current.ByName('API_DTED').AsDateTime))) or

               { Data de Pagamento }
               ((ERP_DT > 0) and (SQLAPIConsulta.Current.ByName('DTPG').AsDateTime > 0) and
                (FormatDateTime('dd/mm/yy',ERP_DT) <> FormatDateTime('dd/mm/yy',SQLAPIConsulta.Current.ByName('DTPG').AsDateTime))) or

               { Data de Baixa}
               ((ERP_DT > 0) and (SQLAPIConsulta.Current.ByName('DTBX').AsDateTime > 0) and
                (FormatDateTime('dd/mm/yy',ERP_DT) <> FormatDateTime('dd/mm/yy',SQLAPIConsulta.Current.ByName('DTBX').AsDateTime))) then
            begin
              oOTransact(TAPIEdicao);
              with SQLAPIEdicao do
              begin
                Close;
                SQL.Clear;
                SQL.Add('UPDATE '+oREPZero('FIN_REC_BAN_BAI','_',RECParametros.EP_ID,3));
                SQL.Add('SET');

                { API }
                SQL.Add('API_ID       = ''' + _ConsultarItem.IdIntegracao    + ''',');
                SQL.Add('API_ST       = ''' + _ConsultarItem.Situacao        + ''',');

                SQL.Add('API_CA       = ''' + _ConsultarItem.CedenteCarteira + ''',');
                SQL.Add('API_NN       = ''' + IFThen( (_ConsultarItem.TituloNossoNumero <> EmptyStr) and (_ConsultarItem.TituloNossoNumero <> 'null'),_ConsultarItem.TituloNossoNumero,'0') + ''',');

                SQL.Add('API_MT       = ''' + RIGHTSTR(TRIM(API_MTED),120) + ''',');
                SQL.Add('API_INFADCAD = ''' + SOcorrencia.Text     + ''',');
                SQL.Add('API_TAXA     = ''' + oStrTran(FloatToStr(API_TAXA),',','.') + ''',');

                { Apenas quando houver mudança }
                if (API_DTED > 0) and
                   (FormatDateTime('dd/mm/yy',API_DTED) <> FormatDateTime('dd/mm/yy',SQLAPIConsulta.Current.ByName('API_DTED').AsDateTime)) then
                SQL.Add('API_DTED = ''' + FormatDateTime('mm/dd/yy',API_DTED) + ' '' || CURRENT_TIME,');

                {
                  Redundancia até eu fechar regra

                  obs: 1) CARTÓRIO SEMPRE SERÁ A PRIMEIRA SITUAÇÃO DE FALTA DE PAGAMENTO
                       2) APÓS ENVIO DO TÍTULO AO CARTÓRIO, O MESMO PODERÁ SER LIQUIDADO (PAGO CARTÓRIO) OU PROTESTADO
                       3) PROTESTO ENCERRA O CICLO DA CONSOLIDAÇÃO
                       4) POR ÚLTIMO:
                          CARTÓRIO / PROTESTO SÃO DUAS SITUAÇÕES INSERIDAS EXCLUSIVAMENTE PELA API.
                          FINANCEIRO NÃO ALTERA MANUAL
                }

                { Nosso Status }
                if (ERP_ST <> EmptyStr) then
                begin
                  SQL.Add('FIN_STFI = ''' + ERP_ST + ''',');
                  SQL.Add('FIN_DBAI = ''' + FormatDateTime('mm/dd/yy',ERP_DT) + ''',');

                  if LeftStr(ERP_ST,4) = 'PAGO' then
                  begin
                    SQL.Add('FIN_VPAG = ''' + oStrTran(FloatToStr(PAG_VPAG),',','.') + ''',');
                    SQL.Add('FIN_DPAG = ''' + FormatDateTime('mm/dd/yy',ERP_DT)      + ''',');
                  end;
                end else
                if Pos(LeftStr(SQLAPIConsulta.Current.ByName('DEST').AsString,4),'CARTPROT') > 0 then
                begin
                  { Retorna PENDENTE quando situação estiver erradamente gravada como CARTÓRIO/PROTESTADO }
                  SQL.Add('FIN_STFI = ''PENDENTE'',');
                  SQL.Add('FIN_DBAI = NULL,');
                end;

                { Duplicata }
                SQL.Add('FIN_VALO = ''' + oStrTran(FloatToStr(DUP_VDUP),',','.') + ''',');

                { Acréscimos e Descontos }
                SQL.Add('FIN_VJUR = ''' + oStrTran(FloatToStr(PAG_VACR),',','.') + ''',');
                SQL.Add('FIN_VDES = ''' + oStrTran(FloatToStr(PAG_VDSC),',','.') + ''',');

                SQL.Add('API_CDEV = 200,');              { API Atualizada }
                SQL.Add('API_DTEV = CURRENT_TIMESTAMP'); { API Evento }

                SQL.Add('WHERE TITULO = ''' + _ConsultarItem.TituloNumeroDocumento   + '''' );
                ExecQuery;
              end;

              oCTransact(TAPIEdicao);
              aPesquisa[9,03] := FormatDateTime('mm/dd/yy hh:mm',Now);
            end else
            begin
              oOTransact(TAPIEdicao);
              with SQLAPIEdicao do
              begin
                Close;
                SQL.Clear;
                SQL.Add('UPDATE ' + oREPZero('FIN_REC_BAN_BAI','_',RECParametros.EP_ID,3));
                SQL.Add('SET');

                SQL.Add('API_CDEV = 201,');              { API Consolidada }
                SQL.Add('API_DTEV = CURRENT_TIMESTAMP'); { API Evento }

                SQL.Add('WHERE TITULO = ''' + _ConsultarItem.TituloNumeroDocumento   + '''' );
                ExecQuery;
              end;
              oCTransact(TAPIEdicao);
            end;
          end else
          Abort;

        except
          on E: Exception do
          begin
            aPesquisa[9,07] := 'Falha ao tentar atualizar via OCX ' + SQLAPIConsulta.Current.ByName('TITULO').AsString + #13 + #13 +
                                 Trim(E.Message) + #13 +
                                 FormatDateTime('dd/mm/yy hh:mm',Now);

            EMErros.Lines.Add(aPesquisa[9,07]);
            EMErros.Height  := 95;
            EMErros.Visible := True;
            Application.ProcessMessages;

            oCTransact(TAPIEdicao,ltRollback);
            if SQLAPIConsulta.Current.ByName('TITULO').AsString <> EmptyStr then
            begin
              oOTransact(TAPIEdicao);
              with SQLAPIEdicao do
              begin
                Close;
                SQL.Clear;
                SQL.Add('UPDATE '+oREPZero('FIN_REC_BAN_BAI','_',RECParametros.EP_ID,3));
                SQL.Add('SET');

                SQL.Add('API_CDEV = 199,'); { API Falha na consolidação }
                SQL.Add('API_DTEV = CURRENT_TIMESTAMP');

                SQL.Add('WHERE TITULO = ''' + SQLAPIConsulta.Current.ByName('TITULO').AsString + '''');
                ExecQuery;
              end;
              oCTransact(TAPIEdicao);
            end;
          end;
        end;

      SQLAPIConsulta.Next;
      end;
    end;
  finally
    PNLRodape.Visible  := False; PNLRodape.Height  := 0;
    PNLCaption.Visible := False; PNLCaption.Height := 0;

    try
      oCTransact(TAPIConsulta);
      oOTransact(TAPIEdicao  );
      with SQLAPIEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE OR INSERT');
        SQL.Add('INTO   TAB_API_LOG (IDEP,DTCA,DTINI,DTFIM,DESCRICAO,REGISTROS,TOTAL,LOG_ERRO)'); { Mudar para TB_API_BOL_LOG }

        SQL.Add('VALUES (');
        SQL.Add('''' + aPesquisa[9,00] + ''',');
        SQL.Add('''' + aPesquisa[9,01] + ''',');
        SQL.Add('''' + aPesquisa[9,02] + ''',');
        SQL.Add('''' + aPesquisa[9,03] + ''',');
        SQL.Add('''' + aPesquisa[9,04] + ''',');
        SQL.Add('''' + aPesquisa[9,05] + ''',');
        SQL.Add('''' + aPesquisa[9,06] + ''',');
        SQL.Add('''' + oStrTran(aPesquisa[9,07],'''','') + '''');
        SQL.Add(')');

        SQL.Add('MATCHING (IDEP,DTCA,DESCRICAO)');
        ExecQuery;
      end;
      oCTransact(TAPIEdicao);
    except
      on E: Exception do
      begin
        oCTransact(TAPIEdicao,ltRollback);

        aPesquisa[09,07] := 'Falha ao tentar atualizar LOG OCX ' + ANossaSituacao + #13 + #13 +
                             Trim(E.Message) + #13 +
                             FormatDateTime('dd/mm/yy hh:mm',Now);

        EMErros.Lines.Add(aPesquisa[09,07]);
        EMErros.Height  := 95;
        EMErros.Visible := True;
        Application.ProcessMessages;
      end;
    end;
  end;
end;

function TFrmSHE_API_BOL._ConsultaID(AAPI_ID: String): String;
var
  k,l: Integer;
begin
  SOcorrencia.Clear;

  API_DTED := 0;
  API_MTED := EmptyStr;
  API_TAXA := 0;

  ERP_DT := 0;
  ERP_ST := EmptyStr;
  Result := EmptyStr;

  _ConsultarList := Nil;
  _ConsultarItem := Nil;

  if AAPI_ID <> EmptyStr then
  begin
    _ConsultarList := FBoletoX.Consultar(TRIM(AAPI_ID));

    if (_ConsultarList.Status = 'SUCESSO') and (_ConsultarList.Count > 0) then
    begin
      _ConsultarItem := _ConsultarList.Item[0];
            API_MTED := _ConsultarItem.Motivo;

      for k  := 0 to _ConsultarItem.CountTituloMovimentos - 1 do
      begin
        SOcorrencia.Add('  MOVIMENTOS:');
        SOcorrencia.Add('  Movimento Código: '  + _ConsultarItem.TituloMovimentos[k].Codigo);
        SOcorrencia.Add('  Movimento Mensagem: '+ _ConsultarItem.TituloMovimentos[k].Mensagem);
        SOcorrencia.Add('  Movimento Data: '    + _ConsultarItem.TituloMovimentos[k].Data);
        SOcorrencia.Add('  Movimento Taxa: '    + FloatToStr(_ConsultarItem.TituloMovimentos[k].Taxa));

        if (LeftStr(ERP_ST,4) <> 'PAGO') and (API_DTED <= StrToDate(LeftStr(_ConsultarItem.TituloMovimentos[k].Data,10))) then
        begin
          API_DTED := StrToDate(LeftStr(_ConsultarItem.TituloMovimentos[k].Data,10));
          API_MTED := Trim(Copy(_ConsultarItem.TituloMovimentos[k].Mensagem,Pos(':',_ConsultarItem.TituloMovimentos[k].Mensagem) + 1,Length(_ConsultarItem.TituloMovimentos[k].Mensagem)));
          API_TAXA := _ConsultarItem.TituloMovimentos[k].Taxa;

          with SQLAPIFKConsulta do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT ID,ERP_ST FROM TAB_API_BOL');
            SQL.Add('WHERE  API_ST = ''' + Trim(Copy(_ConsultarItem.TituloMovimentos[k].Mensagem,Pos(':',_ConsultarItem.TituloMovimentos[k].Mensagem) + 1,Length(_ConsultarItem.TituloMovimentos[k].Mensagem))) + '''');
            ExecQuery;

            if not Eof then
            begin
              ERP_ST := Current.Vars[1].AsString;
              if ERP_ST <> EmptyStr then
              ERP_DT := StrToDate(LeftStr(_ConsultarItem.TituloMovimentos[k].Data,10));
            end else
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT ID,ERP_ST FROM TAB_API_BOL');
              SQL.Add('WHERE  API_ST = ''' + _ConsultarItem.Situacao + '''');
              ExecQuery;

              if (Current.Vars[0].AsInteger > 0) and (StrToDate(LeftStr(_ConsultarItem.TituloMovimentos[k].Data,10)) >= API_DTED) then
              begin
                ERP_ST := Current.Vars[1].AsString;
                if ERP_ST <> EmptyStr then
                ERP_DT := API_DTED;
              end;
            end;
          end;
        end;

        for l := 0 to _ConsultarItem.TituloMovimentos[k].CountOcorrencias - 1 do
        begin
          SOcorrencia.Add('  OCORRÊNCIAS:');
          SOcorrencia.Add('     Ocorrências Código: '   + _ConsultarItem.TituloMovimentos[k].Ocorrencias[l].Codigo);
          SOcorrencia.Add('     Ocorrências Mensagem: ' + _ConsultarItem.TituloMovimentos[k].Ocorrencias[l].Mensagem);

          if (LeftStr(ERP_ST,4) <> 'PAGO') and (API_DTED <= StrToDate(LeftStr(_ConsultarItem.TituloMovimentos[k].Data,10))) then
          begin
            with SQLAPIFKConsulta do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT ID,ERP_ST FROM TAB_API_BOL');
              SQL.Add('WHERE  API_ST = ''' + Trim(Copy(_ConsultarItem.TituloMovimentos[k].Ocorrencias[l].Mensagem,Pos(':',_ConsultarItem.TituloMovimentos[k].Ocorrencias[l].Mensagem) + 1,Length(_ConsultarItem.TituloMovimentos[k].Ocorrencias[l].Mensagem))) + '''');
              ExecQuery;

              if (Current.Vars[0].AsInteger > 0) and (StrToDate(LeftStr(_ConsultarItem.TituloMovimentos[k].Data,10)) >= API_DTED) then
              begin
                ERP_ST := Current.Vars[1].AsString;
                if ERP_ST <> EmptyStr then
                ERP_DT := StrToDate(LeftStr(_ConsultarItem.TituloMovimentos[k].Data,10));
              end;
            end;
          end;  
        end;

        SOcorrencia.Add('');
      end;
    end;

    result := _ConsultarList.Status;

    if result <> 'SUCESSO' then
    begin

      try
        oOTransact(TAPIEdicao);
        with SQLAPIEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('INSERT INTO FIN_REC_LOG_API (IDPK,TITULO,API_ID,API_ST,API_MT,IDEP,IP,HOST)');
          SQL.Add('VALUES (');

          SQL.Add('''' + SQLAPIConsulta.Current.ByName('IDPK'  ).AsString + ''',');
          SQL.Add('''' + SQLAPIConsulta.Current.ByName('TITULO').AsString + ''',');
          SQL.Add('''' + SQLAPIConsulta.Current.ByName('API_ID').AsString + ''',');

          SQL.Add('''API_FALHA'',');
          SQL.Add('''' + RIGHTSTR(Trim(API_MTED),120) + ''',');

          SQL.Add('''' + RECParametros.EP_ID+ ''',');
          SQL.Add('''' + RECParametros.IP   + ''',');
          SQL.Add('''' + RECParametros.HOST + ''')');

          ExecQuery;
        end;
        oCTransact(TAPIEdicao);
      except
        on E: Exception do
        begin
          oCTransact(TAPIEdicao,ltRollback);

          EMErros.Lines.Add('Erro ao tentar atualizar API ERP' +#13+#13+
                             Trim(E.Message)                   +#13+
                             FormatDateTime('dd/mm/yy hh:mm',Now));
          EMErros.Height  := 95;
          EMErros.Visible := True;

          Application.ProcessMessages;
        end;
      end;
    end;
  end;
end;

end.
