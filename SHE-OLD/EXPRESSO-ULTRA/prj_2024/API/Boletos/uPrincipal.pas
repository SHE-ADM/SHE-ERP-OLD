unit uPrincipal;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, ToolWin, StdCtrls, 
  DateUtils, StrUtils, math, Shellapi, jpeg, dxStatusBar,
  OleCtrls, BoletoX_TLB, SyncObjs, superobject, uJSON, comobj, cxGraphics,
  cxControls;

type
  TFrmSHE_API_BOL = class(TForm)
    TTempo: TTimer;
    SBRodape: TdxStatusBar;
    IFotoFundo: TImage;
    PNLRodape: TPanel;
    PBPrincipal: TProgressBar;
    PNLCaption: TPanel;
    EMErros: TMemo;
    FBoletoX: TspdBoletoX;
    PNLProcesso: TPanel;
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
    procedure _API_LOG;

    procedure _Boletos;
    procedure _BoletosAPI;
    procedure _BoletosOCX(ANossaSituacao: String);

    function _ConsultaID(AAPI_ID: String): String;
    function _ConnectAPI: Word;
  end;

procedure _GERTXT; STDCall;

var
  FrmSHE_API_BOL: TFrmSHE_API_BOL;

  _ConsultarList: IspdRetConsultarLista;
  _ConsultarItem: IspdRetConsultarTituloItem;

  hBoleto: OleVariant;
  jBoleto: TJSONObject;
  sBoleto: TStringList;

  SLOcorrencia: TStringList;

  API_TIPO,
  API_FALHA: String;

  API_DTIN: String;

  API_DTED: TDate;
  API_MTED: String;

  API_TAXA: Double;

  ERP_ST: String;
  ERP_DT: TDate;

  DUP_VDUP,
  PAG_VACR,PAG_VDSC,PAG_VPAG: Double;

  URL: WideString;

  PBCount: Integer;

  API_TOKEN: String = 'Consolidação Otimotex';
  API_HORA : Word;
  API_CLOSE: Boolean = False;

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
               TTEmpo.Enabled := False;
               FrmSHE_API_BOL.Caption := 'Consolidação Bancária, aguardando ...';
               Application.ProcessMessages;

               _API_INI('4');
             finally
               TTEmpo.Enabled       := True;
               FrmSHE_API_BOL.Caption := 'Consolidação Bancária, aguardando ...';
               Application.ProcessMessages;

               _GERTXT;

               if API_CLOSE then
                  Application.Terminate;
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

  SLOcorrencia := TStringList.Create;

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
    if SLOcorrencia <> Nil then FreeAndNil(SLOcorrencia);
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
    XRect.Left   := IFotoFundo.Left;
    XRect.Top    := IFotoFundo.Top;
    XRect.Right  := Screen.Width;
    XRect.Bottom := Screen.Height - SBRodape.Height;

    Canvas.StretchDraw(xRect,IFotoFundo.Picture.Graphic);
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
      bExecPrinter;
      bExecCaixa;
    end;

    { Preenchendo o rodapé do Form Principal }
    SBRodape.Width          := Screen.Width + 1;
    SBRodape.Panels[0].Text := RECParametros.Fantasia;
    SBRodape.Panels[1].Text := RECParametros.ServerHost;

    { Show Foto de Fundo - Tela Principal}
    oLoadJPG(RECParametros.IMG_JPG_SPLASH,IFotoFundo.Picture);
  finally
    FrmSHE_API_BOL.Repaint;
    Application.ProcessMessages;
  end;

  if RECParametros.FIN_API then
  begin
    FBoletoX.Config.URL := 'https://cobrancabancaria.tecnospeed.com.br';
    FBoletoX.ConfigurarSoftwareHouse(RECParametros.SHEILD_CNPJ,RECParametros.FIN_API_TOKEN);
    FBoletoX.Config.CedenteCpfCnpj := RECParametros.CNPJ;
    FBoletoX.Config.SalvarLogs     := True;

    URL := 'https://cobrancabancaria.tecnospeed.com.br/api/v1/boletos?TituloNumeroDocumento=000000000';
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
      SetLength(aPesquisa[i],7);

  with FBird do
  try
    { AUTENTICAÇÃO ERP }
    oODatabase(DBErp);
    if not oEmpty(RECParametros.DataBaseError) then
       Exit;

    _Login('0',AIDEP);
    if RECParametros.ID = 0 then
       Exit;

    { EXECUTE SINCRONIZAÇÃO }
    SBRodape.Panels[2].Text := Format('Tempo Ocioso: %d',[RECParametros.SecondsIdle]);
    SBRodape.Panels[3].Text := RECParametros.STCX;
    Application.ProcessMessages;

    PBPrincipal.Max := 0;

    try     _Boletos;
    finally _API_LOG;
    end;

    API_CLOSE := (PBPrincipal.Max > 0) or ((PBPrincipal.Max = 0) and ((StrToInt(LeftStr(TimeToStr(Time),2)) > 18) or (URL = 'false')));
  finally
    if not oEmpty(RECParametros.DataBaseError) then
    begin
      EMErros.Lines.Add(RECParametros.DataBaseError);
      EMErros.Height  := 95;
      EMErros.Visible := True;
    end;

    oCDatabase(DBErp);
  end;
end;

procedure TFrmSHE_API_BOL._API_LOG;
var
  i: Word;
begin
  with FBird do
  try
    oODatabase(DBErp);
    oOTransact(TFBEdicao);

    with SQLFBEdicao do
    for i := 0 to High(aPesquisa) do
        if (not oEmpty(aPesquisa[i,00])) or (not oEmpty(aPesquisa[i,06])) then
        begin
          if oEmpty(aPesquisa[i,00]) then
                    aPesquisa[i,00] := RECParametros.Id;

          if oEmpty(aPesquisa[i,01]) then
                    aPesquisa[i,01] := FormatDateTime('mm/dd/yy',Date);

          if oEmpty(aPesquisa[i,02]) then
                    aPesquisa[i,02] := FormatDateTime('mm/dd/yy hh:mm',Now);

          if oEmpty(aPesquisa[i,03]) then
                    aPesquisa[i,03] := FormatDateTime('mm/dd/yy hh:mm',Now);

          Close;
          SQL.Clear;
          SQL.Add('UPDATE OR INSERT');
          SQL.Add('INTO TAB_API_LOG (IDEP,DTCA,DTINI,DTFIM,DESCRICAO,REGISTROS,LOG_ERRO)'); { Mudar para TB_API_BOL_LOG }
          SQL.Add('VALUES (');
          SQL.Add(''''+aPesquisa[i,00]+''',');
          SQL.Add(''''+aPesquisa[i,01]+''',');
          SQL.Add(''''+aPesquisa[i,02]+''',');
          SQL.Add(''''+aPesquisa[i,03]+''',');
          SQL.Add(''''+aPesquisa[i,04]+''',');

          if oEmpty(aPesquisa[i,05]) then
             SQL.Add('0,')
          else
             SQL.Add(''''+aPesquisa[i,05]+''',');

          SQL.Add(''''+oStrTran(aPesquisa[i,06],'''','')+'''');
          SQL.Add(')');
          SQL.Add('MATCHING (IDEP,DTCA,DESCRICAO)');
          ExecQuery;
        end;

    oCTransact(TFBEdicao);
  except
    on E: Exception do
    begin
      oCTransact(TFBEdicao,ltRollback);

      EMErros.Lines.Add('Erro ao tentar atualizar API ERP' +#13+#13+
                         Trim(E.Message)                   +#13+
                         FormatDateTime('dd/mm/yy hh:mm',Now));
      EMErros.Height  := 95;
      EMErros.Visible := True;

      Application.ProcessMessages;
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
    URL := EmptyStr;
      i := 0;

    { API }
    try     oODatabase(DBErp);

            API_FALHA := EmptyStr;
            API_TIPO  := 'API';

            repeat _BoletosAPI; inc(i);
            until (URL = 'false') or (i = 3);

    finally oCDatabase(DBErp);

      { OCX }
      API_FALHA := EmptyStr;
      API_TIPO := 'OCX';

      try     oODatabase(DBErp); _BoletosOCX('LIQUIDADO');
      finally oCDatabase(DBErp);

      try     oODatabase(DBErp); _BoletosOCX('PROTESTADO');
      finally oCDatabase(DBErp);

      try     oODatabase(DBErp); _BoletosOCX('BAIXADO');
      finally oCDatabase(DBErp);

      try     oODatabase(DBErp); _BoletosOCX('CARTÓRIO');
      finally oCDatabase(DBErp);

      try     oODatabase(DBErp); _BoletosOCX('PRORROGADO');
      finally oCDatabase(DBErp);

      try     oODatabase(DBErp); _BoletosOCX('PENDENTE'  );;
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

function TFrmSHE_API_BOL._ConnectAPI: Word;
var
  Connected: Word;
begin
  Connected := 10;
  repeat
    try
      Dec(Connected);
      Caption := 'Consolidação Bancária, tentando conexão ...  ' + IntToStr(Connected);
      Application.ProcessMessages;

      hBoleto := Createoleobject('WinHttp.WinHttpRequest.5.1');
      hBoleto.open('GET',URL,False);
      hBoleto.SetRequestHeader('cnpj-sh'     ,RECParametros.SHEILD_CNPJ  );
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
  APagamentoData: String;
  i: Integer;
  Pagina: Integer;
begin
  { Clear Matriz API }
  aPesquisa[09,00] := RecParametros.Id; {Empresa}
  aPesquisa[09,01] := FormatDateTime('mm/dd/yy',Date); {Cadastro}
  aPesquisa[09,02] := FormatDateTime('mm/dd/yy hh:mm',Now ); {Início}
  aPesquisa[09,03] := ''; {Fim}
  aPesquisa[09,04] := 'Boletos API'; {Descrição}
  aPesquisa[09,05] := '0'; {Registros}
  aPesquisa[09,06] := ''; {Erro}
  API_DTIN         := FormatDateTime('dd/mm/yy hh:mm',Now);


  { Parâmetro de Consulta }
  APagamentoData := FormatDateTime('yyyy/mm/dd',
                    IncDay(Date,IFThen(DayOfWeek(Date) = 2,-3, // Segunda
                                IFThen(DayOfWeek(Date) = 1,-2, // Domingo
                                                           -1))));

//  APagamentoData := '2025/03/13';
//  URL := 'https://cobrancabancaria.tecnospeed.com.br/api/v1/boletos?TituloNumeroDocumento=214644-A';

  DUP_VDUP := 0;
  PAG_VACR := 0;
  PAG_VDSC := 0;
  PAG_VPAG := 0;

  { Leitura paginada de 50 em 50 registros }
  URL    := 'https://cobrancabancaria.tecnospeed.com.br/api/v1/boletos?PagamentoData=>=' + APagamentoData + '&PagamentoRealizado=true&sort=TituloNumeroDocumento&limit=50';
  Pagina := 0;

  try
    oOTransact(FBird.TFBConsulta);
    while true do
    begin
      if  _ConnectAPI = 0 then
      Exit;

      URL := jBoleto.getJSONObject('_meta').getJSONObject('_paginacao').optString('_proximo');

      if URL <> 'false' then
      begin
        inc(Pagina);
        PBPrincipal.Max := jBoleto.getJSONObject('_meta').getInt('_total');

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

          { Load Matriz }
          aPesquisa[09,03] := FormatDateTime('mm/dd/yy hh:mm',Now);

          for i := 0 to jBoleto.getJSONArray('_dados').Length - 1 do
          begin
            if API_CLOSE then
            Abort;

            aPesquisa[09,03] := FormatDateTime('mm/dd/yy hh:mm',Now);
            aPesquisa[09,05] := IntToStr(StrToInt(aPesquisa[09,05]) + 1);

            PBPrincipal.Position := PBPrincipal.Position  + 1;
            Inc(PBCount);

            FrmSHE_API_BOL.Caption := 'API '    + RECParametros.FANTASIA + '  ' + IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max) + '.  Página ' + IntToStr(Pagina) + '.  Início: ' + API_DTIN + ' - ' + FormatDateTime('dd/mm/yy hh:mm',Now);
            PNLCaption.Caption     := 'Título ' + jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloNumeroDocumento');

            if jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloDataEmissao') <> 'null' then
            PNLCaption.Caption := PNLCaption.Caption + ' de ' + FormatDateTime('dd/mm/yy',StrToDate(LeftStr(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloDataEmissao'),10)));

            if jBoleto.getJSONArray('_dados').getJSONObject(i).optString('PagamentoData') <> 'null' then
            PNLCaption.Caption := PNLCaption.Caption + ' de ' + '.  Data Pagamento ' + FormatDateTime('dd/mm/yy',StrToDate(LeftStr(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('PagamentoData'),10))) + '  Total Geral ' + aPesquisa[09,05];
            Application.ProcessMessages;

            { Consulta Título no ERP }
            with FBird.SQLFBConsulta do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT   PK.IDPK,PK.TITULO,PK.API_ID');
              SQL.Add('FROM ' + oREPZero('FIN_REC_BAN_BAI','_',RECParametros.Id,3) + ' AS PK');

              SQL.Add('WHERE TITULO = ''' + jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloNumeroDocumento') + '''');
              ExecQuery;
            end;

            try
              if _ConsultaID(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('IdIntegracao')) = 'SUCESSO' then
              begin
                DUP_VDUP := StrToFloat(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloValor'));

                PAG_VACR := StrToFloat(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('PagamentoValorAcrescimos')); { valor_juros + valor_multa }
                PAG_VDSC := StrToFloat(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('PagamentoValorDesconto'));
                PAG_VPAG := StrToFloat(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('PagamentoValorPago'));

                if TRIM(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloNumeroDocumento')) = '214644-A' then
                tag := 0;

                oOTransact(FBird.TFBEdicao);
                with FBird.SQLFBEdicao do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Add('UPDATE '+oREPZero('FIN_REC_BAN_BAI','_',RECParametros.Id,3));
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

                  SQL.Add('API_MT       = ''' + API_MTED          + ''',');
                  SQL.Add('API_INFADCAD = ''' + SLOcorrencia.Text + '''' );

                  SQL.Add('WHERE TITULO = ''' + TRIM(jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloNumeroDocumento')) + '''');
                  ExecQuery;
                end;
                oCTransact(FBird.TFBEdicao);
              end;
            except
              on E: Exception do
              begin
                oCTransact(FBird.TFBEdicao,ltRollback);

                aPesquisa[09,06] := 'Erro ao tentar atualizar ' + aPesquisa[09,04] + '. Nº ' + jBoleto.getJSONArray('_dados').getJSONObject(i).optString('TituloNumeroDocumento') + ' ID ' + jBoleto.getJSONArray('_dados').getJSONObject(i).optString('IdIntegracao') + #13+#13+
                                     Trim(E.Message) +#13+
                                     FormatDateTime('dd/mm/yy hh:mm',Now);

                EMErros.Lines.Add(aPesquisa[09,06]);
                EMErros.Height  := 95;
                EMErros.Visible := True;

                Application.ProcessMessages;
              end;
            end;
          end;
        end;
      end;

      if URL = 'false' then
      Break;

    end;
  finally
    PNLRodape.Visible  := False; PNLRodape.Height  := 0;
    PNLCaption.Visible := False; PNLCaption.Height := 0;

    oCTransact(FBird.TFBConsulta);
  end;
end;

procedure TFrmSHE_API_BOL._BoletosOCX(ANossaSituacao: String);
begin
  { Clear Matriz }
  aPesquisa[10,00] := ''; {Empresa}
  aPesquisa[10,01] := ''; {Cadastro}
  aPesquisa[10,02] := ''; {Início}
  aPesquisa[10,03] := ''; {Fim}
  aPesquisa[10,04] := 'Boletos OCX'; {Descrição}
  aPesquisa[10,05] := ''; {Registros}
  aPesquisa[10,06] := ''; {Erro}
  API_DTIN         := FormatDateTime('dd/mm/yy hh:mm',Now);
  URL              := EmptyStr;

  with FBird do
  try
    oOTransact(TFBConsulta);
    with SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   PK.IDPK,PK.TITULO,CAST(PK.DTCA AS DATE) AS DTCA,PK.DTPG,PK.DTBX,PK.DEST,PK.FIN_VJUR,PK.FIN_VDES,PK.API_ID,PK.API_DTED,API_NN,API_ST,PK.API_TAXA,PK.API_MT,PK.API_INFADCAD');
      SQL.Add('FROM ' + oREPZero('FIN_REC_BAN_BAI','_',RECParametros.Id,3) + ' AS PK');

      { API }
      SQL.Add('WHERE NOT FEMPTY(PK.API_ID)' );
      SQL.Add('AND PK.DEST <> ''CANCELADO''');

      if ANossaSituacao = 'LIQUIDADO' then
      begin
        SQL.Add('AND PK.API_ST = ''' + ANossaSituacao + '''');
        SQL.Add('AND PK.DEST NOT LIKE ''PAGO%''');
      end else

      if ANossaSituacao = 'BAIXADO' then
      begin
        SQL.Add('AND PK.API_ST = ''' + ANossaSituacao + '''');
        SQL.Add('AND PK.DEST   = ''PENDENTE''');
      end else
      SQL.Add('AND PK.DEST = ''' + ANossaSituacao + '''');

      // SQL.Add('WHERE TITULO = ''221491-F''');

      // Atualizar motivos em branco sem alterar o nosso status (ERP_ST)
      // SQL.Add('AND FEMPTY(PK.API_MT)');

      // Verificar título individual
      // SQL.Add('AND PK.TITULO LIKE ''207011-B%''');

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

      SQL.Add('ORDER BY PK.API_DTCA DESC');
      ExecQuery;
    end;

    PBPrincipal.Max := oLast(SQLFBConsulta);
    oFirst(SQLFBConsulta);

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

      { Load Matriz }
      aPesquisa[10,00] := RecParametros.Id;
      aPesquisa[10,01] := FormatDateTime('mm/dd/yy'      ,Date);
      aPesquisa[10,02] := FormatDateTime('mm/dd/yy hh:mm',Now );
      aPesquisa[10,03] := FormatDateTime('mm/dd/yy hh:mm',Now);
      aPesquisa[10,05] := IntToStr(PBPrincipal.Max);

      while not SQLFBConsulta.Eof do
      begin
        if API_CLOSE then
        Abort;

        PBPrincipal.Position := PBPrincipal.Position  + 1;
        Inc(PBCount);

        FrmSHE_API_BOL.Caption := 'OCX '    + ANossaSituacao + ' - ' + RECParametros.FANTASIA + '  '   + IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max) + '.  Início: ' + API_DTIN + ' - ' + FormatDateTime('dd/mm/yy hh:mm',Now);
        PNLCaption.Caption     := 'Título ' + SQLFBConsulta.Current.ByName('TITULO').AsString + ' de ' + FormatDateTime('dd/mm/yy',SQLFBConsulta.Current.ByName('DTCA').AsDate);
        Application.ProcessMessages;

        if _ConsultaID(SQLFBConsulta.Current.ByName('API_ID').AsString) = 'SUCESSO' then
        begin
          DUP_VDUP := _ConsultarItem.TituloValor;
          PAG_VACR := _ConsultarItem.PagamentoValorAcrescimos; { valor_juros + valor_multa }
          PAG_VDSC := _ConsultarItem.PagamentoValorDesconto;
          PAG_VPAG := _ConsultarItem.PagamentoValorPago;

          if (_ConsultarItem.TituloNossoNumero     <> SQLFBConsulta.Current.ByName('API_NN').AsString) or   { Nosso Número    }
             (_ConsultarItem.Situacao              <> SQLFBConsulta.Current.ByName('API_ST').AsString) or   { Situação Boleto }

         //    ((LeftStr(_ConsultarItem.Situacao,4) = 'LIQU') and (LeftStr(SQLFBConsulta.Current.ByName('API_ST').AsString,4) <> 'PAGO')) or   { LIQUIDADO diferente de PAGO }

             ((API_MTED <> EmptyStr) and (API_MTED <> SQLFBConsulta.Current.ByName('API_MT').AsString)) or   { Motivo          }
             ((ERP_ST   <> EmptyStr) and (ERP_ST   <> SQLFBConsulta.Current.ByName('DEST'  ).AsString)) or   { Nossa Situação  }

             ((PAG_VACR > 0) and (FormatFloat('0.00',PAG_VACR) <> FormatFloat('0.00',SQLFBConsulta.Current.ByName('FIN_VJUR').AsFloat))) or { Acréscimos }
             ((PAG_VDSC > 0) and (FormatFloat('0.00',PAG_VDSC) <> FormatFloat('0.00',SQLFBConsulta.Current.ByName('FIN_VDES').AsFloat))) or { Descontos  }
             ((API_TAXA > 0) and (FormatFloat('0.00',API_TAXA) <> FormatFloat('0.00',SQLFBConsulta.Current.ByName('API_TAXA').AsFloat))) or { Taxas      }

             { Data de Edição }
             ((API_DTED > 0) and
              (FormatDateTime('dd/mm/yy',API_DTED) <> FormatDateTime('dd/mm/yy',SQLFBConsulta.Current.ByName('API_DTED').AsDateTime))) or

             { Data de Pagamento }
             ((ERP_DT > 0) and (SQLFBConsulta.Current.ByName('DTPG').AsDateTime > 0) and
              (FormatDateTime('dd/mm/yy',ERP_DT) <> FormatDateTime('dd/mm/yy',SQLFBConsulta.Current.ByName('DTPG').AsDateTime))) or

             { Data de Baixa}
             ((ERP_DT > 0) and (SQLFBConsulta.Current.ByName('DTBX').AsDateTime > 0) and
              (FormatDateTime('dd/mm/yy',ERP_DT) <> FormatDateTime('dd/mm/yy',SQLFBConsulta.Current.ByName('DTBX').AsDateTime))) then

               try
                 oOTransact(FBird.TFBEdicao);
                 with FBird.SQLFBEdicao do
                 begin
                   Close;
                   SQL.Clear;
                   SQL.Add('UPDATE '+oREPZero('FIN_REC_BAN_BAI','_',RECParametros.Id,3));
                   SQL.Add('SET');

                   { API }
                   SQL.Add('API_ID       = ''' + _ConsultarItem.IdIntegracao + ''',');
                   SQL.Add('API_ST       = ''' + _ConsultarItem.Situacao     + ''',');
                   SQL.Add('API_NN       = ''' + IFThen( (_ConsultarItem.TituloNossoNumero <> EmptyStr) and (_ConsultarItem.TituloNossoNumero <> 'null'),_ConsultarItem.TituloNossoNumero,'0') + ''',');
                   SQL.Add('API_MT       = ''' + LEFTSTR(API_MTED,120) + ''',');
                   SQL.Add('API_INFADCAD = ''' + SLOcorrencia.Text     + ''',');
                   SQL.Add('API_TAXA     = ''' + oStrTran(FloatToStr(API_TAXA),',','.') + ''',');

                   { Apenas quando houver mudança }
                   if (API_DTED > 0) and
                      (FormatDateTime('dd/mm/yy',API_DTED) <> FormatDateTime('dd/mm/yy',SQLFBConsulta.Current.ByName('API_DTED').AsDateTime)) then
                   SQL.Add('API_DTED = ''' + FormatDateTime('mm/dd/yy',API_DTED) + ' ''||CURRENT_TIME,');

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
                   if Pos(LeftStr(SQLFBConsulta.Current.ByName('DEST').AsString,4),'CARTPROT') > 0 then
                   begin
                     { Retorna PENDENTE quando situação estiver erradamente gravada como CARTÓRIO/PROTESTADO }
                     SQL.Add('FIN_STFI = ''PENDENTE'',');
                     SQL.Add('FIN_DBAI = NULL,');
                   end;

                   { Duplicata }
                   SQL.Add('FIN_VALO = ''' + oStrTran(FloatToStr(DUP_VDUP),',','.') + ''',');

                   { Acréscimos e Descontos }
                   SQL.Add('FIN_VJUR = ''' + oStrTran(FloatToStr(PAG_VACR),',','.') + ''',');
                   SQL.Add('FIN_VDES = ''' + oStrTran(FloatToStr(PAG_VDSC),',','.') + '''' );

                   SQL.Add('WHERE TITULO = ''' + _ConsultarItem.TituloNumeroDocumento   + '''' );
                   ExecQuery;
                 end;

                 oCTransact(FBird.TFBEdicao);
                 aPesquisa[10,03] := FormatDateTime('mm/dd/yy hh:mm',Now);
               except
                 on E: Exception do
                 begin
                   oCTransact(FBird.TFBEdicao,ltRollback);

                   aPesquisa[10,06] := 'Erro ao tentar atualizar LOG ' + aPesquisa[10,04] + '. Nº ' + SQLFBConsulta.Current.ByName('TITULO').AsString + ' ID ' + SQLFBConsulta.Current.ByName('API_ID').AsString + #13+#13+
                                        Trim(E.Message) +#13+
                                        FormatDateTime('dd/mm/yy hh:mm',Now);

                   EMErros.Lines.Add(aPesquisa[10,06]);
                   EMErros.Height  := 95;
                   EMErros.Visible := True;

                   Application.ProcessMessages;
                 end;
               end;
        end;
        SQLFBConsulta.Next;
      end;
    end;
  finally
    PNLRodape.Visible  := False; PNLRodape.Height  := 0;
    PNLCaption.Visible := False; PNLCaption.Height := 0;

    oCTransact(FBird.TFBConsulta);
  end;
end;

function TFrmSHE_API_BOL._ConsultaID(AAPI_ID: String): String;
var
  k,l: Integer;
begin
  SLOcorrencia.Clear;

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
        SLOcorrencia.Add('  MOVIMENTOS:');
        SLOcorrencia.Add('  Movimento Código: '  + _ConsultarItem.TituloMovimentos[k].Codigo);
        SLOcorrencia.Add('  Movimento Mensagem: '+ _ConsultarItem.TituloMovimentos[k].Mensagem);
        SLOcorrencia.Add('  Movimento Data: '    + _ConsultarItem.TituloMovimentos[k].Data);
        SLOcorrencia.Add('  Movimento Taxa: '    + FloatToStr(_ConsultarItem.TituloMovimentos[k].Taxa));

        if LeftStr(ERP_ST,4) <> 'PAGO' then
        begin
          if (API_DTED < StrToDate(LeftStr(_ConsultarItem.TituloMovimentos[k].Data,10))) then
          begin
            API_DTED := StrToDate(LeftStr(_ConsultarItem.TituloMovimentos[k].Data,10));
            API_MTED := Trim(Copy(_ConsultarItem.TituloMovimentos[k].Mensagem,Pos(':',_ConsultarItem.TituloMovimentos[k].Mensagem) + 1,Length(_ConsultarItem.TituloMovimentos[k].Mensagem)));
            API_TAXA := _ConsultarItem.TituloMovimentos[k].Taxa;
          end;


          with FBird.SQLFBFKConsulta do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT ID,ERP_ST FROM TAB_API_BOL');
            SQL.Add('WHERE  API_ST = ''' + Trim(Copy(_ConsultarItem.TituloMovimentos[k].Mensagem,Pos(':',_ConsultarItem.TituloMovimentos[k].Mensagem) + 1,Length(_ConsultarItem.TituloMovimentos[k].Mensagem))) + '''');
            ExecQuery;

            if Eof then
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT ID,ERP_ST FROM TAB_API_BOL');
              SQL.Add('WHERE  API_ST = ''' + _ConsultarItem.Situacao + '''');
              ExecQuery;
            end;

            if (Current.Vars[0].AsInteger > 0) and (StrToDate(LeftStr(_ConsultarItem.TituloMovimentos[k].Data,10)) >= API_DTED) then
            begin
              ERP_ST := Current.Vars[1].AsString;
              if ERP_ST <> EmptyStr then
              ERP_DT := StrToDate(LeftStr(_ConsultarItem.TituloMovimentos[k].Data,10));
            end;
          end;
        end;
        
        for l := 0 to _ConsultarItem.TituloMovimentos[k].CountOcorrencias - 1 do
        begin
          SLOcorrencia.Add('  OCORRÊNCIAS:');
          SLOcorrencia.Add('     Ocorrências Código: '   + _ConsultarItem.TituloMovimentos[k].Ocorrencias[l].Codigo);
          SLOcorrencia.Add('     Ocorrências Mensagem: ' + _ConsultarItem.TituloMovimentos[k].Ocorrencias[l].Mensagem);

          if LeftStr(ERP_ST,4) <> 'PAGO' then
             with FBird.SQLFBFKConsulta do
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

        SLOcorrencia.Add('');
      end;
    end;

    result := _ConsultarList.Status;

    if result <> 'SUCESSO' then
    begin
      API_FALHA := result + ' ' + API_TIPO;
      API_CLOSE := True;

      try
        oOTransact(FBird.TFBEdicao);
        with FBird.SQLFBEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('INSERT INTO FIN_REC_LOG_API (IDPK,TITULO,API_ID,API_ST,API_MT,IDEP,IP,HOST)');
          SQL.Add('VALUES (');

          SQL.Add('''' + FBird.SQLFBConsulta.Current.ByName('IDPK'  ).AsString + ''',');
          SQL.Add('''' + FBird.SQLFBConsulta.Current.ByName('TITULO').AsString + ''',');
          SQL.Add('''' + FBird.SQLFBConsulta.Current.ByName('API_ID').AsString + ''',');

          SQL.Add('''' + API_FALHA + ''',');
          SQL.Add('''' + API_MTED  + ''',');

          SQL.Add('''' + RECParametros.ID   + ''',');
          SQL.Add('''' + RECParametros.IP   + ''',');
          SQL.Add('''' + RECParametros.HOST + ''')');

          ExecQuery;
        end;
        oCTransact(FBird.TFBEdicao);
      except
        on E: Exception do
        begin
          oCTransact(FBird.TFBEdicao,ltRollback);

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
