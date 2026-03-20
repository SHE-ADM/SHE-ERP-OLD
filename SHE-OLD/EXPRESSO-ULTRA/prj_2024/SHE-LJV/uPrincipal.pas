
unit uPrincipal;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, RXCtrls, ToolWin, StdCtrls, Buttons,
  DB, IBCustomDataSet, IBQuery, IBDatabase, IBTable, ActnList, ActnMan,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, DateUtils, Printers, StrUtils,
  Grids, DBGrids, IBStoredProc, ImgList, Shellapi, DBTables, jpeg, math,
  XPStyleActnCtrls, IdBaseComponent, IdComponent, qrPrev,
  IdIPWatch, Provider, cxGraphics, cxControls, dxStatusBar, ACBrBarCode,
  IBSQL, dxDBGrid, dxTL, dxDBCtrl, TypInfo;

type
  TFrmPrincipal = class(TForm)
    SBRodape: TdxStatusBar;

    TPrincipal: TTimer;
    IPrincipal: TImage;
    ILPrincipal: TImageList;

    ACBrBarCode: TACBrBarCode;
    ACBrBarCodeV: TACBrBarCode;

    PNLMainMenu: TPanel;

    RSBClientes: TRxSpeedButton;
    RSBRepresentantes: TRxSpeedButton;
    RSBTransportadoras: TRxSpeedButton;
    RSBFornecedores: TRxSpeedButton;

    RSBContainers: TRxSpeedButton;
    RSBCustos: TRxSpeedButton;

    RSBProdutos: TRxSpeedButton;
    RSBGrade: TRxSpeedButton;

    RSBEST_LAN: TRxSpeedButton;
    RSBEstoque: TRxSpeedButton;
    RSBEST_ETQ: TRxSpeedButton;
    RSBEST_QUA: TRxSpeedButton;

    RSBEXP_COL: TRxSpeedButton;
    RSBEXP_MAN: TRxSpeedButton;

    RSBCOM_LAN: TRxSpeedButton;
    RSBCompras: TRxSpeedButton;

    RSBPRG_LAN: TRxSpeedButton;
    RSBProgramados: TRxSpeedButton;

    RSBVEN_LAN: TRxSpeedButton;
    RSBPedidos: TRxSpeedButton;

    RSBRomaneios: TRxSpeedButton;
    RSBTAB_PRZ: TRxSpeedButton;

    RSBNotaFiscal: TRxSpeedButton;
    RSBNFE_LAN: TRxSpeedButton;
    RSBNFE_LAN_TER: TRxSpeedButton;
    RSBTAB_NAT: TRxSpeedButton;

    PNLSubMenu: TPanel;
    TBSubMenu: TToolBar;

    RTBNFE_PSQ: TRxSpeedButton;
    RTBNFE_SAI: TRxSpeedButton;
    RTBCFE_LAN: TRxSpeedButton;
    TBSB_N1: TToolButton;

    RTBPRO_ETQ: TRxSpeedButton;
    RTBPrinters: TRxSpeedButton;
    TBSB_N2: TToolButton;

    RTBLogin: TRxSpeedButton;
    RTBLOG_PASSWORD: TRxSpeedButton;
    TBSB_N3: TToolButton;

    RTBSistema: TRxSpeedButton;
    RTBBackup: TRxSpeedButton;
    TBSB_N4: TToolButton;

    RTBAbout: TRxSpeedButton;
    TBSB_N5: TToolButton;

    RTBSaida: TRxSpeedButton;
    AMPrincipal: TActionManager;
    ACTClientes: TAction;
    ACTProdutos: TAction;
    ACTTransportadoras: TAction;
    ACTRepresentantes: TAction;
    ACTCAD_VEN: TAction;
    ACTFornecedores: TAction;
    ACTPED_LAN: TAction;
    ACTROM_LAN: TAction;
    ACTRomaneios: TAction;
    ACTTAB_PRZ: TAction;
    ACTTAB_GRD_COR: TAction;
    ACTTAB_GRD_EST: TAction;
    ACTPRO_FCT: TAction;
    ACTPRO_ETQ: TAction;
    ACTTAB_COL: TAction;
    ACTEST_LAN: TAction;
    ACTEstoque: TAction;
    ACTCOM_LAN: TAction;
    ACTCAD_CTNR: TAction;
    ACTDSP_CTNR: TAction;
    ACTPRG_LAN: TAction;
    ACTAgenda: TAction;
    ACTLogin: TAction;
    ACTLOG_PASSWORD: TAction;
    ACTPrinters: TAction;
    ACTExecPrinter: TAction;
    ACTSistema: TAction;
    ACTAbout: TAction;
    ACTCAI_ABR: TAction;
    ACTCAI_RAB: TAction;
    ACTCAI_FEC: TAction;
    ACTCAI_SSP: TAction;
    ACTTAB_SSP: TAction;
    ACTCAI_FLC: TAction;
    ACTEXP_COL: TAction;
    ACTEXP_MAN: TAction;
    ACTEST_ETQ: TAction;
    ACTRelatorios: TAction;
    ACTProduto_Venda: TAction;
    ACTProduto_Ranking: TAction;
    ACTProduto_Compra_Planejamento: TAction;
    ACTGProduto_Tabela_Preco: TAction;
    ACTProduto_Estoque: TAction;
    ACTRPROSPEDFiscal: TAction;
    ACTRPROKardex: TAction;
    ACTRGERNF: TAction;
    ACTEmConstrucao: TAction;
    ACTFIN_REC_BAN: TAction;
    ACTFIN_REC_CAR: TAction;
    ACTFIN_REC_DUP: TAction;
    ACTFIN_PAG_CMV: TAction;
    ACTPAGPROComissao: TAction;
    ACTCFE_LAN: TAction;
    ACTNFE_LAN: TAction;
    ACTRCLVEN: TAction;
    ACTCliente_Ranking: TAction;
    ACTRCLABC: TAction;
    ACTRepresentante_Venda_Produto: TAction;
    ACTRepresentante_Ranking: TAction;
    ACTRCRABC: TAction;
    ACTTAB_SEG: TAction;
    ACTTAB_GRP: TAction;
    ACTTAB_SGP: TAction;
    ACTTAB_CAT: TAction;
    ACTTAB_SCT: TAction;
    ACTProduto_Devolucao_Cancelamento: TAction;
    ACTProduto_Venda_Inativo: TAction;
    ACTFinanceiro_Abatimento: TAction;
    ACTCliente_Venda_Produto: TAction;
    ACTCliente_Grupo_Venda_Produto: TAction;
    ACTCliente_Produto_Atendido: TAction;
    ACTCliente_Produto_Nao_Atendido: TAction;
    ACTCliente_Cadastro_Listagem: TAction;
    ACTFinanceiro_Cadastros_Duplicata: TAction;
    ACTRepresentante_Cadastro_Listagem: TAction;
    ACTProduto_Tabela_Preco: TAction;
    ACTGerencial_Tipo_Credito: TAction;
    ACTGerencial_Tipo_Venda: TAction;
    ACTGerencial_Estoque_Unidade_Medida: TAction;
    ACTGerencial_NF_Tipo_Operacao: TAction;
    ACTGerencial_NF_Peso: TAction;
    ACTGerencial_Performance_Venda: TAction;
    ACTProduto_Venda_Mensal: TAction;
    ACTProduto_Venda_Regiao_UF: TAction;
    ACTProduto_Venda_Regiao_Nacional: TAction;
    ACTGFornecedoresProdutosCadastrados: TAction;
    ACTEST_QUA: TAction;
    ACTNotaFiscal: TAction;
    ACTNFE_LAN_TER: TAction;
    ACTNFE_PSQ: TAction;
    ACTTAB_NAT: TAction;
    ACTPagamentos: TAction;
    ACTSaida: TAction;
    ACTCompras: TAction;
    ACTProgramados: TAction;
    ACTCupomFiscal: TAction;
    ACTPedidos: TAction;
    ACTFIN_REC_BOL: TAction;
    ACTCHQ_LAN: TAction;
    ACTCheques: TAction;
    ACTCAD_COM: TAction;
    ACTNFE_SAI_LAN: TAction;
    ACTNFE_SAI: TAction;
    ACTFIN_REC_IBB: TAction;
    ACTFIN_CAL_VCT: TAction;
    ACTFIN_EMI_REC: TAction;
    ACTFIN_EMI_VFU: TAction;
    ACTTAB_COB: TAction;
    ACTTAB_PED: TAction;
    ACTTAB_NCM: TAction;
    ACTTAB_UCOM: TAction;
    ACTTAB_CMUN: TAction;
    ACTTAB_ICMS: TAction;
    ACTTAB_ICMS_ST: TAction;
    ACTTAB_ORI: TAction;
    ACTLOG_DENIED: TAction;
    ACTBackup: TAction;


    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);

    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);

    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ACTLoginExecute(Sender: TObject);
    procedure ACTLOG_PASSWORDExecute(Sender: TObject);
    procedure ACTPrintersExecute(Sender: TObject);
    procedure ACTExecPrinterExecute(Sender: TObject);
    procedure ACTLOG_DENIEDExecute(Sender: TObject);
    procedure ACTSistemaExecute(Sender: TObject);
    procedure ACTBackupExecute(Sender: TObject);
    procedure ACTAboutExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure ACTEmConstrucaoExecute(Sender: TObject);
    procedure TPrincipalTimer(Sender: TObject);
  private
    { Private declarations }

    procedure _Login(AIDUSER: Variant; AIDEP,ADEEP: String);

    procedure _SetHintDefault;
    procedure _SetMouseLeave(var AMessage: TMessage); message WM_MOUSELEAVE;
    function  _SetMouseTracking: Boolean;
  public
    { Public declarations }
  end;

{ Sistema }
procedure uEmConstrucao(ACaption: String = ''); STDCall;
procedure uFrmCreate(AOwner: TComponent;AFClass: TFormClass; var AInstance); STDCall;

var
  FrmPrincipal: TFrmPrincipal;
  ATrackMouseEvent: TTrackMouseEvent;

implementation

uses bPrincipal,
     pLogin, pSenha, pSobre,
     AJBarcode, pImpressoras,
     pEmConstrucao;

{$R *.dfm}

procedure uEmConstrucao(ACaption: String = ''); STDCall;
begin
  uFrmCreate(Nil,TFrmEmConstrucao,FrmEmConstrucao);
end;

procedure uFrmCreate(AOwner: TComponent;AFClass: TFormClass; var AInstance); STDCall;
begin
  with FrmPrincipal do
  begin
    if Assigned(TForm(AInstance)) then
    begin
      TForm(AInstance).WindowState := wsNormal;
      TForm(AInstance).BringToFront;
      TForm(AInstance).SetFocus;
    end else
    begin
      TForm(AInstance) := AFClass.Create(AOwner);
      if TForm(AInstance).FormStyle = fsNormal then
         try
           TForm(AInstance).BorderIcons := [];
           TForm(AInstance).Visible     := False;
           TForm(AInstance).ShowModal;
         finally
           FreeAndNil(TForm(AInstance));
         end;
    end;
  end;  
end;

function ClientWindowProc(wnd: HWND; msg: Cardinal; wparam, lparam: Integer ): Integer; STDCall;
var
  Ponteiro: Pointer;
begin
  Ponteiro := Nil;
  Result   := 0;
  try
    Ponteiro := Pointer(GetWindowLong(wnd,GWL_USERDATA));
    case msg of
         WM_NCCALCSIZE: if (GetWindowLong(wnd,GWL_STYLE) and (WS_HSCROLL or WS_VSCROLL)) <> 0 then
                            SetWindowLong(wnd,GWL_STYLE,GetWindowLong(wnd,GWL_STYLE) and Not (WS_HSCROLL or WS_VSCROLL or WS_CAPTION));
    end;
    Result := CallWindowProc(Ponteiro,wnd,msg,wparam,lparam);
  except
    ;
  end;    
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  if ClientHandle <> 0 then
     if (not(GetWindowLong(ClientHandle, GWL_USERDATA) <> 0))  then
         SetWindowLong(ClientHandle, GWL_USERDATA, SetWindowLong(ClientHandle, GWL_WNDPROC, integer(@ClientWindowProc)));

  CurrencyString    := 'R$';
  ThousandSeparator := '.';
  DecimalSeparator  := ',';

  _SetHintDefault;
  _Login(FrmLogin.RECLogin.ID,FrmLogin.RECLogin.IDEP,FrmLogin.RECLogin.DEEP);
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if oEmpty(RECUsuarios.Id) then
     Close;
end;

procedure TFrmPrincipal.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if oEmpty(RECUsuarios.Id) then
     Exit;
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  var i: Word;
begin
  if oEmpty(RECUsuarios.Id) then
     Exit;

  try
    for i := MDIChildCount - 1 downto 0 do
        if   MDIChildren[i] <> Nil then
             MDIChildren[i].Free;
  except
    on E: Exception do
       oException(Nil,'Falha ao tentar fechar automaticamente as páginas do sistema !' +#13+
                      'Favor fechar manualmente.' +#13 +#13+
                       E.Message + '.');
  end;

  if oYesNo(Handle,'Sair do Sistema ?') = mrNo then
     Abort;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  FrmPrincipal := Nil;
end;

procedure TFrmPrincipal.FormPaint(Sender: TObject);
var
  XRect   : TRect;
  WLargura: Word;
begin
  if Showing then
  begin
    WLargura := SBRodape.Panels[3].MinWidth;
    Case Length(SBRodape.Panels[3].Text) of
      25..30: WLargura := 185;
          31: WLargura := 190;
          32: WLargura := 195;
      33..40: WLargura := 210;
    end;
    SBRodape.Panels[3].Width := WLargura;

    { Painel Usuário }
    WLargura := SBRodape.Panels[1].MinWidth;
    Case Length(SBRodape.Panels[1].Text) of
      31..35: WLargura := 250;
      36..40: WLargura := 300;
      41..45: WLargura := 350;
      46..50: WLargura := 400;
      51..55: WLargura := 450;
      56..60: WLargura := 500;
      61..65: WLargura := 550;
      66..70: WLargura := 600;
    end;
    SBRodape.Panels[1].Width := WLargura;
    SBRodape.Panels[0].Width := SBRodape.Width - 20 - (SBRodape.Panels[1].Width+SBRodape.Panels[2].Width+SBRodape.Panels[3].Width+
                                                       SBRodape.Panels[4].Width+SBRodape.Panels[5].Width+SBRodape.Panels[6].Width);
    XRect.Left   := 0;
    XRect.Right  := Screen.Width;
    XRect.Top    := 0;
    XRect.Bottom := Screen.Height;

    Canvas.StretchDraw(xRect,IPrincipal.Picture.Graphic);

    if Screen.Height <= 768 then
       for WLargura := MDIChildCount - 1 downto 0 do
           if MDIChildren[WLargura] <> Nil then
              MDIChildren[WLargura].Repaint;
  end;
end;

procedure TFrmPrincipal.FormResize(Sender: TObject);
begin
  if FrmPrincipal <> Nil then
     Paint;
end;

procedure TFrmPrincipal._SetMouseLeave(var AMessage: TMessage);
begin
  inherited;
  AMessage.Result := 1;
end;

function TFrmPrincipal._SetMouseTracking: Boolean;
begin
  with ATrackMouseEvent do
  begin
    cbSize      := sizeof(ATrackMouseEvent);
    dwFlags     := TME_LEAVE;
    hwndTrack   := Self.Handle;
    dwHoverTime := HOVER_DEFAULT;
  end;

  result := TrackMouseEvent(ATrackMouseEvent);
end;

procedure TFrmPrincipal._SetHintDefault;
var
  AhintBK: String;
  AHintPI,
  AHelpPI: PPropInfo;
  i: Word;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i].ClassType = TPanel then
       tag := 0;

    AHelpPI := GetPropInfo(Components[i].ClassInfo,'HelpKeyword');
    AHintPI := GetPropInfo(Components[i].ClassInfo,'Hint');

    if (AHintPI <> Nil) and (AHelpPI <> Nil) then
    begin
       AHintBK := GetStrProp(Components[i] , AHintPI);
       SetStrProp(Components[i], AHelpPI   , AHintBK);
    end;
  end;
end;

procedure TFrmPrincipal.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  APoint  : TPoint;
  AControl: TControl;
begin
  if _SetMouseTracking then
  begin
    GetCursorPos(APoint);
    AControl := FindDragTarget(APoint, True);  { Mouse.CursorPos }

    if (AControl = Nil) or (AControl <> Sender) then
        Perform(WM_MOUSELEAVE, 0, 0) else
        AControl.Hint := IFThen(Self.Hint <> EmptyStr,Self.Hint + 'SAIU',AControl.HelpKeyword);
  end;
end;

procedure TFrmPrincipal.TPrincipalTimer(Sender: TObject);
          function SecondsIdle: DWord;
          var
            liInfo: TLastInputInfo;
          begin
            liInfo.cbSize := SizeOf(TLastInputInfo);
            GetLastInputInfo(liInfo);

            Result := (GetTickCount - liinfo.dwTime) DIV 1000;
          end;
begin
  if FrmPrincipal <> Nil then
     with FrmPrincipal, FBird do
     begin
       RECParametros.SecondsIdle := SecondsIdle;

       ACTCAI_ABR.Enabled := (((RECParametros.STCX = 'Caixa Fechado') or (RECParametros.STCX = 'Caixa não aberto')) and (RECUsuarios.Caixa));
       ACTCAI_RAB.Enabled := (ACTCAI_ABR.Enabled);
       ACTCAI_FEC.Enabled := ((not ACTCAI_ABR.Enabled) and (RECUsuarios.Caixa));

       SBRodape.Panels[2].Text := RECParametros.STCX;
       SBRodape.Panels[4].Text := Format('Tempo Ocioso: %d',[RECParametros.SecondsIdle]);

       if RECParametros.SecondsIdle > 0 then
       if RECParametros.SecondsIdle mod 180 = 0  then
       begin
         { Main DB }
         if not FBird.DBErp.TestConnected then
            try
              DBErp.CloseDataSets;
              DBErp.ForceClose;

              SleepEx(100,False);
              DBErp.Connected := True;
            except
              ;
            end;

         if FBird.DBErp.TestConnected then
            bResumo_Pedido;
            
         { Edição }
         if not FBird.DBEdicao.TestConnected then
            try
              DBEdicao.CloseDataSets;
              DBEdicao.ForceClose;

              SleepEx(100,False);
              DBEdicao.Connected := true;
            except
              ;
            end;

         if FBird.DBErp.TestConnected then
            try
              oOTransact(TFBSEdicao);
              with SQLFBSEdicao do
              begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT * FROM rdb$Database');
                ExecQuery;
              end;
              oCTransact(TFBSEdicao);
            except
              oCTransact(TFBSEdicao,ltRollback);
            end;

         if RECParametros.CDCX = 0 then
            bExecEvent('Caixa');
       end;
     end;
end;

procedure TFrmPrincipal._Login(AIDUSER: Variant; AIDEP,ADEEP: String);
          procedure _RSBAction(AAction: TAction; ARxSpeedButton: TRxSpeedButton; ARxSpeedCaption: String = '');
          begin
            ARxSpeedButton.Glyph   := Nil;
            ARxSpeedButton.Action  := Nil;

            AAction.ImageIndex := AAction.Tag + IFThen(AAction.Enabled,0,1);

            ARxSpeedButton.Action  := AAction;
            ARxSpeedButton.Enabled := True;
            ARxSpeedButton.Cursor  := IFThen(AAction.Enabled,crHandPoint,crNo);
            ARxSpeedButton.Caption := IFThen(ARxSpeedCaption = EmptyStr ,ARXSpeedButton.Caption,ARxSpeedCaption);
          end;
var
  i: Word;
begin
  if oEmpty(AIDUSER) then
     Exit;

  with FBird do
  try
    oOTransact(TFBEdicao);
    with SQLFBFKEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE TAB_USER');
      SQL.Add('SET    IDEP_UEP = ''' + AIDEP + ''',');
      SQL.Add('       IDEP_UDT = CURRENT_TIMESTAMP,');

      SQL.Add('       IP   = ''' + RECParametros.IP   + ''',');
      SQL.Add('       HOST = ''' + RECParametros.HOST + '''' );
      SQL.Add('WHERE  ID   = ''' + AIDUSER + '''');
      ExecQuery;
    end;
    oCTransact(TFBEdicao);

    bExecParametros(AIDEP);
    bExecUsuarios(AIDUSER);
    bExecPrinter;
    bExecCaixa;
  except
    { nothing }
  end;

  { Parâmetros de Aberturas de Querys }
  FreeAndNil(SLPrincipal);
  SLPrincipal := TStringList.Create;

  { Array de Pesquisas }
  aPesquisa := Nil;
  SetLength(aPesquisa,Length(aPerfilPesquisa));
  for i := Low(aPerfilPesquisa) to High(aPerfilPesquisa) do
  begin
    SetLength(aPesquisa[i],13);
    aPesquisa[i,00] := aPerfilPesquisa[i,00];
    aPesquisa[i,01] := aPerfilPesquisa[i,01];
    aPesquisa[i,02] := aPerfilPesquisa[i,02];
    aPesquisa[i,03] := aPerfilPesquisa[i,03];
    aPesquisa[i,04] := aPerfilPesquisa[i,04];
    aPesquisa[i,05] := aPerfilPesquisa[i,05];
    aPesquisa[i,06] := '';
    aPesquisa[i,07] := '';
    aPesquisa[i,08] := '';
    aPesquisa[i,09] := '';
    aPesquisa[i,10] := '';
    aPesquisa[i,11] := '';
    aPesquisa[i,12] := '';
  end;

  { OBJ Tabelas }
  SLPrincipal.Values['fin_rec_ban_bai'] := oREPZero('fin_rec_ban_bai','_',RECParametros.Id,3);
  SLPrincipal.Values['fin_rec_car_bai'] := oREPZero('fin_rec_car_bai','_',RECParametros.Id,3);
  SLPrincipal.Values['nfe_cab']         := oREPZero('nfe_cab'        ,'_',RECParametros.Id,3);
  SLPrincipal.Values['nfe_dup']         := oREPZero('nfe_dup'        ,'_',RECParametros.Id,3);
  SLPrincipal.Values['nfe_ite']         := oREPZero('nfe_ite'        ,'_',RECParametros.Id,3);
  SLPrincipal.Values['nfe_tra']         := oREPZero('nfe_tra'        ,'_',RECParametros.Id,3);
  SLPrincipal.Values['ped_com_cab']     := oREPZero('ped_com_cab'    ,'_',RECParametros.Id,3);
  SLPrincipal.Values['ped_com_ite']     := oREPZero('ped_com_ite'    ,'_',RECParametros.Id,3);
  SLPrincipal.Values['ped_prg_cab']     := oREPZero('ped_prg_cab'    ,'_',RECParametros.Id,3);
  SLPrincipal.Values['ped_prg_ite']     := oREPZero('ped_prg_ite'    ,'_',RECParametros.Id,3);
  SLPrincipal.Values['ped_ven_cab']     := oREPZero('ped_ven_cab'    ,'_',RECParametros.Id,3);
  SLPrincipal.Values['ped_ven_ite']     := oREPZero('ped_ven_ite'    ,'_',RECParametros.Id,3);
  SLPrincipal.Values['rom_cab']         := oREPZero('rom_cab'        ,'_',RECParametros.Id,3);
  SLPrincipal.Values['rom_ite']         := oREPZero('rom_ite'        ,'_',RECParametros.Id,3);
  SLPrincipal.Values['fin_caption']     := 'Consultas em Carteira';
  SLPrincipal.Values['fin_hint']        := '';
  SLPrincipal.Values['fin_baixa']       := '';
  SLPrincipal.Values['fin_consulta']    := '';

  with FrmPrincipal do
  begin
    { Preenchendo o rodapé do Form Principal }
    SBRodape.Width          := Screen.Width + 1;
    SBRodape.Panels[0].Text := RECParametros.Fantasia;
    SBRodape.Panels[1].Text := RECUsuarios.Login+' - '+RECUsuarios.Cargo;
    SBRodape.Panels[3].Text := RECParametros.ServerHost;
    SBRodape.Panels[6].Text := 'Copyright © '+oStrZero(YearOf(Date),4)+' Sheild';

    { Foto de Fundo da Tela Principal}
    oLoadJPG(RECParametros.IMG_JPG_SPLASH,IPrincipal.Picture);
    Application.ProcessMessages;
    Repaint;
  end;
end;

procedure TFrmPrincipal.ACTLoginExecute(Sender: TObject);
var
  i: integer;
begin
  try
    for i := MDIChildCount - 1 downto 0 do
        if   MDIChildren[i] <> Nil then
             MDIChildren[i].Free;
  except
    on E: Exception do
       oException(Nil,'Falha ao tentar fechar automaticamente as páginas do sistema !' +#13+
                      'Favor fechar manualmente.' +#13 +#13+
                       E.Message + '.');
  end;

  FrmLogin         := TFrmLogin.create(Nil);
  FrmLogin.Caption := 'Login de Usuário';

  try
    FrmLogin.ShowModal;
  finally
    try
      if (FBird.DBErp.TestConnected) and (FrmLogin.RECLogin.Selected) then
          _Login(FrmLogin.RECLogin.ID,FrmLogin.RECLogin.IDEP,FrmLogin.RECLogin.DEEP) else
      begin
        RECUsuarios.Id := 0;
        Close;
      end;
    finally
      FreeAndNil(FrmLogin);
    end;  
  end;
end;

procedure TFrmPrincipal.ACTLOG_PASSWORDExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmSenha,FrmSenha);
end;

procedure TFrmPrincipal.ACTPrintersExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmImpressoras,FrmImpressoras);
end;

procedure TFrmPrincipal.ACTExecPrinterExecute(Sender: TObject);
begin
  if oEmpty(ACTExecPrinter.Hint) then
            ACTExecPrinter.Hint := 'Relatórios';

  try
    oExecPrinter(Handle,ACTExecPrinter.Hint);
  finally
    ACTExecPrinter.Hint := EmptyStr;
  end;
end;

procedure TFrmPrincipal.ACTLOG_DENIEDExecute(Sender: TObject);
begin
  raise exception.Create(PChar(ACTLOG_DENIED.Caption) + #13 +
                         PChar(ACTLOG_DENIED.Hint));
end;

procedure TFrmPrincipal.ACTSistemaExecute(Sender: TObject);
begin
  ACTLOG_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTBackupExecute(Sender: TObject);
begin
  ACTLOG_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTAboutExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmsobre,Frmsobre);
end;

procedure TFrmPrincipal.ACTEmConstrucaoExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure TFrmPrincipal.ACTSaidaExecute(Sender: TObject);
begin
  Close;
end;

end.
