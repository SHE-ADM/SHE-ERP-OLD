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
  IBSQL, dxDBGrid, dxTL, dxDBCtrl, TypInfo, dxsbar, dxDockPanel,
  dxDockControl, dxBar, dxBarExtItems, rxAnimate, rxGIFCtrl;

type
  TRunProcessThread = class(TThread)
  protected
    procedure Execute; override;
    procedure _SyncEvent;

  public
    ATHR_TBPK: String;
    ATHR_IDEP,
    ATHR_IDPK: Variant;
    ATHR_DEPK: String;
    FIDPK: String;

    constructor Create(const VTHR_TBPK: String; VTHR_IDEP,VTHR_IDPK: Variant; VTHR_DEPK: String; VIDPK: String = 'IDPK');
    destructor  Destroy; override;
  end;

type
  TFrmPrincipal = class(TForm)
    ILPrincipal: TImageList;
    TPrincipal: TTimer;
    ODPrincipal: TOpenDialog;
    SBRodape: TdxStatusBar;
    PNLRodape: TPanel;
    PNLSBRodapeSynchronize: TPanel;
    PNLSynchronize: TPanel;
    PNLGF: TPanel;
    GFSynchronize: TRxGIFAnimator;
    AMPrincipal: TActionManager;
    ACTSHE_DENIED: TAction;
    ACTUSER_LOG: TAction;
    ACTUSER_PAS: TAction;
    ACTSHE_PRN_ADM: TAction;
    ACTSHE_PRN_EXE: TAction;
    ACTSHE_PAR_ADM: TAction;
    ACTSHE_BKP_ADM: TAction;
    ACTSHE_ABOUT: TAction;
    ACTSHE_SAIDA: TAction;
    ACTPED_PDV_ADM: TAction;
    ACTCAD_PRO_ADM: TAction;
    ACTCAD_PRO_EST_ADM: TAction;
    ACTCAD_PRO_EST_LAN: TAction;
    ACTCAD_PRO_EST_EXP_COL: TAction;
    ACTCAD_PRO_EST_EXP_MAN: TAction;
    ACTCAD_PRO_EST_ETQ: TAction;
    ACTNFE_SAI: TAction;
    ACTPED_PDC_ADM: TAction;
    ACTCAI_ABR_PAD: TAction;
    ACTCAI_ABR_DIN: TAction;
    ACTCAI_RAB: TAction;
    ACTCAI_FEC: TAction;
    ACTCAI_LSS: TAction;
    ACTCAI_TSS: TAction;
    ACTCAI_FLC: TAction;
    ACTCAD_PRO_SCT: TAction;
    ACTFIS_NFE_ADM: TAction;
    ACTROM_PDV_ADM: TAction;
    ACTPED_PDC_CLD: TAction;
    ACTRelatorios: TAction;
    ACTREL_GER_EST_UCOM: TAction;
    IPrincipal: TImage;
    ACBrBarCode: TACBrBarCode;
    ACBrBarCodeV: TACBrBarCode;
    DSMenu: TdxDockSite;
    LDSPrincipal: TdxLayoutDockSite;
    DPMenu: TdxDockPanel;
    SBPrincipal: TdxSideBar;
    Timer1: TTimer;
    BMPrincipal: TdxBarManager;
    BSICadastros: TdxBarSubItem;
    BSIProdutos: TdxBarSubItem;
    BSIEstoque: TdxBarSubItem;
    BDIExpedicao: TdxBarSubItem;
    BSIContainers: TdxBarSubItem;
    BSICompras: TdxBarSubItem;
    BLBCAD_CLI: TdxBarLargeButton;
    BLBCAD_REP: TdxBarLargeButton;
    BLBCAD_VEN: TdxBarLargeButton;
    BLBCAD_FOR: TdxBarLargeButton;
    BLBCAD_CNI: TdxBarLargeButton;
    BLBCAD_TRA: TdxBarLargeButton;
    BLGCAD_PRO: TdxBarLargeButton;
    BLGCAD_PRO_FCT: TdxBarLargeButton;
    BLGCAD_PRO_ETQ: TdxBarLargeButton;
    BLGCAD_PRO_COR: TdxBarLargeButton;
    BLGCAD_PRO_ETP: TdxBarLargeButton;
    BLGCAD_PRO_TAM: TdxBarLargeButton;
    BLGCAD_PRO_COL: TdxBarLargeButton;
    BLGCAD_PRO_SEG: TdxBarLargeButton;
    BLGCAD_PRO_GRP: TdxBarLargeButton;
    BLGCAD_PRO_SGP: TdxBarLargeButton;
    BLGCAD_PRO_CAT: TdxBarLargeButton;
    BLBEST_EDI: TdxBarLargeButton;
    BLBEST_ADM: TdxBarLargeButton;
    BLBEST_ETQ: TdxBarLargeButton;
    BLBEST_QLD: TdxBarLargeButton;
    BLBEXP_COL: TdxBarLargeButton;
    BLBEXP_MAN: TdxBarLargeButton;
    BLBCTNR_ADM: TdxBarLargeButton;
    BLBTCTNR_CTS: TdxBarLargeButton;
    BSIProgramados: TdxBarSubItem;
    BSIPedidos: TdxBarSubItem;
    BSIRomaneios: TdxBarSubItem;
    BLBPED_PDC_EDI: TdxBarLargeButton;
    BLBPED_PDC_ADM: TdxBarLargeButton;
    BLBPED_PDP_EDI: TdxBarLargeButton;
    BLBPED_PDP_ADM: TdxBarLargeButton;
    BLBPED_PDV_EDI: TdxBarLargeButton;
    BLBPED_PDV_ADM: TdxBarLargeButton;
    BLBPED_PDV_PRZ: TdxBarLargeButton;
    BLBROM_VEN_EDI: TdxBarLargeButton;
    BLBVEN_ROM_ADM: TdxBarLargeButton;
    BLBNFE_EDI: TdxBarLargeButton;
    BLBNFE_EDI_TRC: TdxBarLargeButton;
    BLBNFE_ADM: TdxBarLargeButton;
    BLBCFE_EDI: TdxBarLargeButton;
    BLBCFE_ADM: TdxBarLargeButton;
    BLBFIN_REC_BAN_ADM: TdxBarLargeButton;
    BLBFIN_REC_BAN_BAI: TdxBarLargeButton;
    BLBFIN_REC_CAR_ADM: TdxBarButton;
    BLBFIN_REC_CAR_BAI: TdxBarLargeButton;
    BLBFIN_REC_DUP: TdxBarLargeButton;
    BLBFIN_PAG_ADM: TdxBarLargeButton;
    BLBFIN_PAG_CMV: TdxBarLargeButton;
    BLBFIN_CHQ_EDI: TdxBarLargeButton;
    BLBFIN_CHQ_ADM: TdxBarLargeButton;
    BLBCAI_ABR_PAD: TdxBarButton;
    BLBCAI_ABR_DIN: TdxBarLargeButton;
    BLBCAI_RAB: TdxBarLargeButton;
    BLBCAI_FEC: TdxBarLargeButton;
    BLBCAI_LSS: TdxBarLargeButton;
    BLBCAI_TSS: TdxBarLargeButton;
    BLBTAB_PRZ: TdxBarLargeButton;
    BLBTAB_PED: TdxBarLargeButton;
    BLBTAB_COB: TdxBarLargeButton;
    BLBTAB_UCOM: TdxBarLargeButton;
    BLBTAB_CFOP: TdxBarLargeButton;
    BLBTAB_NCM: TdxBarLargeButton;
    BLBTAB_ICMS: TdxBarLargeButton;
    BLBTAB_ICMS_ST: TdxBarLargeButton;
    BLBTAB_IBGE: TdxBarLargeButton;
    BLBTAB_ORIG: TdxBarLargeButton;
    BSINFe: TdxBarSubItem;
    BSICFe: TdxBarSubItem;
    BSITabelas: TdxBarSubItem;
    BSICheques: TdxBarSubItem;
    BSICaixa: TdxBarSubItem;
    dxBarSubItem1: TdxBarSubItem;
    BSIRelatorios: TdxBarSubItem;
    BSIConteudo: TdxBarSubItem;
    BBREL_EST: TdxBarButton;
    BLBNFE_CFOP: TdxBarLargeButton;
    BLBUT_NFE_PSQ: TdxBarLargeButton;
    BLBUT_NFE_SAI: TdxBarLargeButton;
    BLBUT_CFE_PRN: TdxBarLargeButton;
    BLBMenuSaida: TdxBarSubItem;
    BLBUSER_LOG: TdxBarLargeButton;
    BLBUT_ETQ_PRN: TdxBarLargeButton;
    BLBUT_SHE_PRN: TdxBarLargeButton;
    BLBSHE_PAR: TdxBarLargeButton;
    BLBSHE_BKP: TdxBarLargeButton;
    BLBSHE_ABOUT: TdxBarLargeButton;
    BLGCAD_PRO_SCT: TdxBarLargeButton;
    BLBNFE_PSQ: TdxBarLargeButton;
    BLBFIN_REC_BOL: TdxBarLargeButton;
    BLBTAB_PAIS: TdxBarLargeButton;
    BLBUSER_PASS: TdxBarLargeButton;
    BLBSaida: TdxBarLargeButton;
    BLBComissoes: TdxBarLargeButton;
    BSIAdmin: TdxBarSubItem;
    BLBCAI_FLC: TdxBarLargeButton;
    BLBPED_PDC_CLD: TdxBarLargeButton;
    BBREL_GER_EST_UCOM: TdxBarButton;
    BBREL_GER: TdxBarButton;
    BBREL_EST_PDV: TdxBarButton;
    BBREL_EST_EFI: TdxBarButton;
    BBREL_EST_ESP: TdxBarButton;
    BBREL_EST_PRG: TdxBarButton;
    BBREL_EST_CPA: TdxBarButton;
    DMPrincipal: TdxDockingManager;
    SBSPrincipal: TdxSideBarStore;
    SSIPCP_CAD_PRO_EST_ADM: TdxStoredSideItem;
    SSIPED_PDC_ADM: TdxStoredSideItem;
    SSIPED_PDV_ADM: TdxStoredSideItem;
    SSIROM_PDV_ADM: TdxStoredSideItem;
    SSIFIS_NFE_ADM: TdxStoredSideItem;
    SSIPDC_CAD_PRO_EST_ETQ: TdxStoredSideItem;
    SSIPDC_CAD_PRO_EST_EXP_MAN: TdxStoredSideItem;
    SSIPDC_CAD_PRO_EST_EXP_COL: TdxStoredSideItem;
    SSIPDC_CAD_PRO_EST_ADM: TdxStoredSideItem;
    SSIPDC_CAD_PRO_ADM: TdxStoredSideItem;
    SSIPDC_CAD_PRO_SCT: TdxStoredSideItem;
    SSIFIN_PED_PDV_ADM: TdxStoredSideItem;
    SSIFIN_ROM_PDV_ADM: TdxStoredSideItem;
    SSIFIN_FIS_NFE_ADM: TdxStoredSideItem;
    PMREL_EST: TdxBarPopupMenu;
    ACTREL_GER_EST_CRED: TAction;
    BBREL_GER_EST_CRED: TdxBarButton;
    PMREL_GER: TdxBarPopupMenu;
    ACTComissao: TAction;
    procedure _DoneEvent(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TPrincipalTimer(Sender: TObject);

    procedure ACTUSER_LOGExecute(Sender: TObject);
    procedure ACTUSER_LOGUpdate(Sender: TObject);
    procedure ACTUSER_PASExecute(Sender: TObject);
    procedure ACTSHE_DENIEDExecute(Sender: TObject);
    procedure ACTSHE_PRN_ADMExecute(Sender: TObject);
    procedure ACTSHE_PRN_EXEExecute(Sender: TObject);
    procedure ACTSHE_PAR_ADMExecute(Sender: TObject);
    procedure ACTSHE_BKP_ADMExecute(Sender: TObject);
    procedure ACTSHE_ABOUTExecute(Sender: TObject);
    procedure ACTSHE_SAIDAExecute(Sender: TObject);
    procedure ACTCAI_ABR_PADExecute(Sender: TObject);
    procedure ACTCAI_ABR_DINExecute(Sender: TObject);
    procedure ACTCAI_RABExecute(Sender: TObject);
    procedure ACTCAI_FECExecute(Sender: TObject);
    procedure ACTCAI_LSSExecute(Sender: TObject);
    procedure ACTCAI_TSSExecute(Sender: TObject);
    procedure ACTCAI_FLCExecute(Sender: TObject);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTComissaoExecute(Sender: TObject);
    procedure ACTCAD_PRO_EST_ADMExecute(Sender: TObject);

  private
    { Private declarations }
    procedure _Login(AIDUSER: Variant; AIDEP,ADEEP: String);

    procedure _SetHintDefault;
    procedure _SetMouseLeave(var AMessage: TMessage); message WM_MOUSELEAVE;
    function  _SetMouseTracking: Boolean;
 public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

  ATrackMouseEvent: TTrackMouseEvent;
  ATHR_ITEM: LongInt;
  ATHR_SYNC: String;

implementation

uses pLogin, bPrincipal, pRelatorios, pEstoque_;

{$R *.dfm}

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

constructor TRunProcessThread.Create(const VTHR_TBPK: String; VTHR_IDEP,VTHR_IDPK: Variant; VTHR_DEPK: String; VIDPK: String = 'IDPK');
begin
  oOTransact(FBird.TFBConsulta);
  inherited Create(True);

  FreeOnTerminate := True;

  ATHR_TBPK := VTHR_TBPK;
  ATHR_IDEP := VTHR_IDEP;
  ATHR_IDPK := VTHR_IDPK;
  ATHR_DEPK := VTHR_DEPK;

  FIDPK := VIDPK;
end;

destructor TRunProcessThread.Destroy;
begin
  oCTransact(FBird.TFBConsulta);
  inherited;
end;

procedure TRunProcessThread._SyncEvent;
begin
  if   ATHR_ITEM > 1 then
  with Frmprincipal do
  begin
    PNLSynchronize.Caption := ATHR_SYNC;
    GFSynchronize.Animate  := True;

    PNLRodape.Height := 75;
  end
end;

procedure TRunProcessThread.Execute;
var
  i: Word;
begin
  inherited;
  try
    with FrmPrincipal,
         FBird do
    begin
      ATHR_ITEM := 0;
      ATHR_SYNC := EmptyStr;

      with SQLFBConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT   PK.IDEP,PK.IDCP,PK.SKU,PK.DGCP,MAX(PK.ITEM) AS ITEM');
        SQL.Add('FROM ' + ATHR_TBPK + ' AS PK');

        SQL.Add('WHERE    PK.IDEP  = ''' + ATHR_IDEP + '''');
        SQL.Add('AND '  + FIDPK + '= ''' + ATHR_IDPK + '''');

        SQL.Add('GROUP BY 1,2,3,4');
        SQL.Add('ORDER BY 5');
        ExecQuery;
      end;

      while not SQLFBConsulta.Eof do
      begin
        try
          oOTransact(TFBEdicao);

          SPFBEdicao.Close;
          SPFBEdicao.StoredProcName := 'SP_CAD_PRO_EST_LAN';
          SPFBEdicao.Prepare;

          for i := 0 to SPFBEdicao.ParamCount - 1 do
          SPFBEdicao.Params[i].Value := Null;

          SPFBEdicao.ParamByName('AIDEP').Value := SQLFBConsulta.Current.ByName('IDEP').AsInteger;
          SPFBEdicao.ParamByName('AIDCP').Value := SQLFBConsulta.Current.ByName('IDCP').AsInteger;
          SPFBEdicao.ExecProc;

          oCTransact(TFBEdicao);
        except
          oCTransact(TFBEdicao,ltRollback);
        end;

        INC(ATHR_ITEM);
        ATHR_SYNC := 'Atualizando Estoque ...   ' +
                     'Pedido Nº: ' + ATHR_DEPK    + ' - ' +
                     'Produto: '   + oStrZero(SQLFBConsulta.Current.ByName('ITEM').AsInteger,5) + '   ' +
                                              SQLFBConsulta.Current.ByName('SKU' ).AsString     + '   ' +
                                              SQLFBConsulta.Current.ByName('DGCP').AsString;
        Synchronize(_SyncEvent);
        SQLFBConsulta.Next;
      end;
    end;
  except
    oCTransact(FBird.TFBConsulta,ltRollback);
  end
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  Randomize;

  if ClientHandle <> 0 then
  if not(GetWindowLong(ClientHandle, GWL_USERDATA) <> 0)  then
  SetWindowLong(ClientHandle, GWL_USERDATA, SetWindowLong(ClientHandle, GWL_WNDPROC, integer(@ClientWindowProc)));

  CurrencyString    := 'R$';
  ThousandSeparator := '.';
  DecimalSeparator  := ',';

  try TPrincipal.Enabled := False;

  _SetHintDefault;
  _Login(FrmLogin.RECLogin.ID,FrmLogin.RECLogin.IDEP,FrmLogin.RECLogin.DEEP);

  finally TPrincipal.Enabled := True;
  end;
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

procedure TFrmPrincipal.FormPaint(Sender: TObject);
begin
  SBRodape.Panels[4].Width := SBRodape.Width - 20 - (SBRodape.Panels[0].Width + SBRodape.Panels[1].Width + SBRodape.Panels[2].Width + SBRodape.Panels[3].Width + SBRodape.Panels[5].Width + SBRodape.Panels[6].Width);
  SBRodape.Repaint;
end;

procedure TFrmPrincipal.FormResize(Sender: TObject);
var
  XRect: TRect;
begin
  if FrmPrincipal <> Nil then
  begin
    GetWindowRect(Application.MainForm.ClientHandle,XRect);
    XRect.Top := IPrincipal.Top;

    Canvas.FillRect(XRect);
    Canvas.StretchDraw(xRect,IPrincipal.Picture.Graphic);

    Paint;
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

       { RODAPÉ }
       SBRodape.Panels[2].Text := RECParametros.STCX; { Caixa }
       SBRodape.Panels[5].Text := Format('Tempo Ocioso: %d',[RECParametros.SecondsIdle]); { Tempo }

       if RECParametros.SecondsIdle > 0 then
       if RECParametros.SecondsIdle mod 180 = 0  then
       begin
         { MAIN DB }
         if not FBird.DBErp.TestConnected then
            try
              DBErp.CloseDataSets;
              DBErp.ForceClose;

              SleepEx(100,False);
              DBErp.Connected := True;
            except
              ;
            end;

         { VER CAIXA }
         if RECParametros.CDCX = 0 then
         bExecEvent('Caixa');
       end;

       { EXEC CAIXA }
       ACTCAI_ABR_PAD.Enabled := (((RECParametros.STCX = 'Caixa Fechado') or (RECParametros.STCX = 'Caixa não aberto')) and (RECUsuarios.Caixa));
       ACTCAI_RAB.Enabled     := (ACTCAI_ABR_PAD.Enabled);
       ACTCAI_FEC.Enabled     := ((not ACTCAI_ABR_PAD.Enabled) and (RECUsuarios.Caixa));
     end;
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

procedure TFrmPrincipal._DoneEvent(Sender: TObject);
begin
  if   ATHR_ITEM > 1 then
  with Frmprincipal do
  begin
    { SINCRONIA }
    PNLRodape.Height := 25;
    PNLRodape.Refresh;

    PNLSynchronize.Caption := EmptyStr;
    PNLSynchronize.Refresh;

    GFSynchronize.Animate := False;
    GFSynchronize.Refresh;

    Repaint;
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
  AREC_SHE_DEF: TREC_SHE_DEF;
begin
  if oEmpty(AIDUSER) then
  Exit;

  with FBird do
  try
    oOTransact(TFBEdicao);
    with SQLFBEdicao do
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
    bExecCaixa;

    { PATH - Área de Trabalho }
    ODPrincipal.InitialDir := RECParametros.SHE_PATH_DESKTOP;

    if ODPrincipal.InitialDir  = EmptyStr then
       ODPrincipal.InitialDir := 'C:\Sheild\Coletor';
  except
    { nothing }
  end;

  { GRANT USER }
  oIREC_SHE_DEF(AREC_SHE_DEF);
  try
  finally
    oFREC_SHE_DEF(AREC_SHE_DEF);
  end;

  { DOCK MENU LATERAL }
  SBPrincipal.ActiveGroupIndex := IFThen(RECUsuarios.Grupo = 'PCP',0,
                                  IFThen(RECUsuarios.Grupo = 'FIN',2,1));

  with FrmPrincipal do
  begin
    { RODAPÉ }
    SBRodape.Width := Screen.Width + 1;

    { EMPRESA }
    SBRodape.Panels[0].Text  := RECParametros.EP_NO;
    SBRodape.Panels[0].Width := Length(SBRodape.Panels[0].Text) * IFThen(Length(SBRodape.Panels[0].Text) > 15,7,10);

    { USUÁRIO }
    SBRodape.Panels[1].Text  := RECUsuarios.Login + ' ' + RECUsuarios.Cargo;
    SBRodape.Panels[1].Width := Length(SBRodape.Panels[1].Text) * IFThen(Length(SBRodape.Panels[1].Text) > 15,7,10);

    { HOST }
    SBRodape.Panels[3].Text  := RECParametros.ServerHost;
    SBRodape.Panels[3].Width := Length(SBRodape.Panels[3].Text) * IFThen(Length(SBRodape.Panels[3].Text) > 15,6,10);

    { SHEILD }
    SBRodape.Panels[4].Text := EmptyStr;
    SBRodape.Panels[6].Text := 'Copyright © ' + oStrZero(YearOf(Date),4) + ' Sheild';
    SBRodape.Refresh;

    _oLoadJPG(Nil,Nil,IPrincipal,True,'JPG_SPLASH');
    Repaint;
  end;

  { Impressoras }
  oExecPrinter(Application.Handle,'Relatórios');

  { ADMIN }
  if RECUsuarios.ID > 0 then
  BSIAdmin.Visible := ivNever;
end;

procedure TFrmPrincipal.ACTUSER_LOGExecute(Sender: TObject);
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

procedure TFrmPrincipal.ACTUSER_LOGUpdate(Sender: TObject);
begin
  BLBUSER_LOG.Caption := RECUsuarios.Nome;
end;

procedure TFrmPrincipal.ACTUSER_PASExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmPrincipal.ACTSHE_DENIEDExecute(Sender: TObject);
begin
  raise exception.Create(PChar(ACTSHE_DENIED.Caption) + #13 +
                         PChar(ACTSHE_DENIED.Hint));
end;

procedure TFrmPrincipal.ACTSHE_PRN_ADMExecute(Sender: TObject);
begin
  if oEmpty(ACTSHE_PRN_EXE.Hint) then
            ACTSHE_PRN_EXE.Hint := 'Relatórios';

  try
    oExecPrinter(Handle,ACTSHE_PRN_EXE.Hint);
  finally
    ACTSHE_PRN_EXE.Hint := EmptyStr;
  end;
end;

procedure TFrmPrincipal.ACTSHE_PRN_EXEExecute(Sender: TObject);
begin
  ACTSHE_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTSHE_PAR_ADMExecute(Sender: TObject);
begin
  ACTSHE_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTSHE_BKP_ADMExecute(Sender: TObject);
begin
  ACTSHE_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTSHE_ABOUTExecute(Sender: TObject);
begin
  ACTSHE_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTSHE_SAIDAExecute(Sender: TObject);
begin
  if ATHR_ITEM = 0 THEN
  Close;
end;

procedure TFrmPrincipal.ACTCAI_ABR_PADExecute(Sender: TObject);
var
  ACAI_LAF_ID,
  ACAI_TSR_ID: Variant;
begin
  if oYesNo(handle,'Confirma abertura do caixa ?') = mrno then
     Abort;

  with FBird do
  try
    oOTransact(TFBEdicao);

    with SQLFBEdicao do
    begin
      { VER CAIXA INICIAL }
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAI_TSR');
      SQL.Add('WHERE  CAI_DESC = ''CAIXA INICIAL''');
      ExecQuery;
      ACAI_TSR_ID := Current.Vars[0].AsString;

      if Eof then
      oException(Nil,'CAIXA INICIAL não encontrado !');

      { VER TERMINAIS }
      Close;
      SQL.Clear;
      SQL.Add('SELECT EP.FANTASIA,CAI_IP,CAI_DABR,CAI_HABR,USU_DUSU,CAI_DECX,CAI_DFEC,CAI_HFEC');
      SQL.Add('FROM   CAI_LAF,CAD_USU,TAB_PAR_SIS AS EP');

      SQL.Add('WHERE  CAD_USU.USU_CUSU = CAI_CUSU');
      SQL.Add('AND    EP.ID            = CAI_CDEP');
      SQL.Add('AND    CAI_CDEP         = ''' + RECParametros.EP_ID + '''');
      SQL.Add('AND    CAI_DABR         = ''' + formatDateTime('mm/dd/yy',RECParametros.SHE_DATA) +'''');
      SQL.Add('AND    CAI_DFEC IS NOT NULL');
      ExecQuery;

      if Eof then
      oException(Nil,'Caixa '       + Current.Vars[5].AsString + ' selecionado já está registrado !' + #13 + #13 +
                     'Empresa: '    + Current.Vars[0].AsString + #13 +

                     'Abertura: '   + FormatDateTime('dd/mm/yy',Current.Vars[2].AsDateTime) + ' '   +
                                      FormatDateTime('hh:mm:ss',Current.Vars[3].AsDateTime) + ' - ' +
                                      'Terminal: ' + Current.Vars[1].AsString + #13 +

                     'Fechamento: ' + FormatDateTime('dd/mm/yy',Current.Vars[6].AsDateTime) + ' '   +
                                      FormatDateTime('hh:mm:ss',Current.Vars[7].AsDateTime) + ' - ' +
                                      'Terminal: ' + Current.Vars[1].AsString + #13 +

                     'Usuário  : '  + Current.Vars[4].AsString);

      { VER CAIXA ABERTO }               
      Close;
      SQL.Clear;
      SQL.Add('SELECT FANTASIA,CAI_IP,CAI_DABR,CAI_HABR,USU_DUSU,CAI_DECX');
      SQL.Add('FROM   CAI_LAF,CAD_USU,TAB_PAR_SIS AS EP');

      SQL.Add('WHERE  CAD_USU.USU_CUSU = CAI_CUSU');
      SQL.Add('AND    EP.ID            = CAI_CDEP');
      SQL.Add('AND    CAI_CDEP         = ''' + RECParametros.EP_ID + '''');
      SQL.Add('AND    CAI_DFEC IS NULL');
      ExecQuery;

      if not Eof then
      oException(Nil,'Caixa '      + Current.Vars[5].AsString + ' selecionado já está aberto !' + #13 + #13 +
                     'Empresa: '   + Current.Vars[0].AsString + #13 +

                     'Abertura: '  + FormatDateTime('dd/mm/yy',Current.Vars[2].AsDateTime) + '  '  +
                                     FormatDateTime('hh:mm:ss',Current.Vars[3].AsDateTime) + ' - ' +
                                     'Terminal: '+ Current.Vars[1].AsString + #13  +

                     'Usuário  : ' + Current.Vars[4].AsString);

      { VER TERMINAL }
      Close;
      SQL.Clear;
      SQL.Add('SELECT FANTASIA,CAI_DECX,CAI_DABR,CAI_HABR,USU_DUSU');
      SQL.Add('FROM   CAI_LAF,CAD_USU,TAB_PAR_SIS AS EP');
      SQL.Add('WHERE  CAD_USU.USU_CUSU = CAI_CUSU');
      
      SQL.Add('AND    EP.ID    = CAI_CDEP');
      SQL.Add('AND    CAI_IP   = ''' + RECParametros.IP + '''');
      SQL.Add('AND    CAI_CDEP = ''' + RECParametros.EP_ID + '''');
      SQL.Add('AND    CAI_DFEC IS NULL');
      ExecQuery;

      if not Current.Vars[0].IsNull then
      oException(Nil,'Terminal já possui caixa aberto !'      + #13   + #13 +
                     'Empresa: '   + Current.Vars[0].AsString + #13   +
                     'Caixa:'      + Current.Vars[1].AsString + ' - ' +

                     'Abertura: '  + FormatDateTime('dd/mm/yy',Current.Vars[2].AsDateTime) + ' ' +
                                     FormatDateTime('hh:mm:ss',Current.Vars[3].AsDateTime) + #13 +

                     'Usuário  : ' + Current.Vars[4].AsString);

      { ID CAI_LAF }
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_CAI_LAF,1) FROM RDB$DATABASE');
      ExecQuery;
      ACAI_LAF_ID := Current.Vars[0].AsString;
    end;

    SPFBEdicao.Close;
    SPFBEdicao.StoredProcName := 'SP_CAI_LAF';
    SPFBEdicao.Prepare;

    SPFBEdicao.ParamByName('ID' ).Value  := 0;
    SPFBEdicao.ParamByName('CDEP').Value := RECParametros.EP_ID;
    SPFBEdicao.ParamByName('CDCX').Value := '1';
    SPFBEdicao.ParamByName('DECX').Value := '1 - CAIXA';
    SPFBEdicao.ParamByName('DABR').Value := RECParametros.SHE_DATA;
    SPFBEdicao.ParamByName('HABR').Value := FormatDateTime('hh:mm',Now);
    SPFBEdicao.ParamByName('VABR').Value := 0;
    SPFBEdicao.ParamByName('DFEC').Value := null;
    SPFBEdicao.ParamByName('HFEC').Value := null;
    SPFBEdicao.ParamByName('VFEC').Value := 0;
    SPFBEdicao.ParamByName('CUSU').Value := RECUsuarios.Id;
    SPFBEdicao.ParamByName('IP'  ).Value := RECParametros.IP;
    SPFBEdicao.ParamByName('DETE').Value := RECParametros.HOST;
    SPFBEdicao.ExecProc;

    SPFBEdicao.Close;
    SPFBEdicao.StoredProcName := 'SP_CAI_MOV';
    SPFBEdicao.Prepare;

    SPFBEdicao.ParamByName('ID'  ).Value := 0;
    SPFBEdicao.ParamByName('CCAB').Value := ACAI_LAF_ID;
    SPFBEdicao.ParamByName('CTSR').Value := ACAI_TSR_ID;
    SPFBEdicao.ParamByName('CONC').Value := 1;
    SPFBEdicao.ParamByName('DOCT').Value := ACAI_LAF_ID + oStrZero(ACAI_LAF_ID,20 - Length(ACAI_LAF_ID));
    SPFBEdicao.ParamByName('DEMV').Value := 'CAIXA INICIAL';
    SPFBEdicao.ParamByName('DCAD').Value := RECParametros.SHE_DATA;
    SPFBEdicao.ParamByName('CRED').Value := 0;
    SPFBEdicao.ParamByName('DEBI').Value := 0;
    SPFBEdicao.ExecProc;

    oCTransact(TFBEdicao);
    oAviso(Application.Handle,'Abertura de caixa efetuada com sucesso !');
  except
    on E: Exception do
    begin
      oCTransact(TFBEdicao,ltRollback);
      oException(Nil,'Falha ao tentar abrir caixa !' + #13 + #13 +
                     'Código do Erro: ' + E.Message  + '.' + #13);
    end;
  end;

  bExecEvent('Caixa');
end;

procedure TFrmPrincipal.ACTCAI_ABR_DINExecute(Sender: TObject);
begin
//  uFrmCreate(Nil,Tfrmcai_abr,Frmcai_abr);
end;

procedure TFrmPrincipal.ACTCAI_RABExecute(Sender: TObject);
begin
  if oYesNo(handle,'Confirma re-abertura do caixa ?') = mrno then
     Abort;

  if RECParametros.STCX = 'Caixa Aberto' then
     oException(Nil,'Falha ao tentar re-abrir caixa.' + #13 +
                    'Caixa já está aberto !');

  if RECParametros.DTCX <> Date then
     oException(Nil,'Falha ao tentar re-abrir caixa.' + #13 +
                    'Não há registro de caixa para o dia de hoje !');

  try
    oOTransact(FBird.TFBEdicao);
    with FBird.SQLFBEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAI_LAF');
      SQL.Add('SET    CAI_DFEC = NULL,');
      SQL.Add('       CAI_HFEC = NULL' );
      SQL.Add('WHERE  ID = ''' + RECParametros.CDCX + '''');
      SQL.Add('AND    CAI_DABR = CURRENT_DATE');
      ExecQuery;
    end;
  finally
    oCTransact(FBird.TFBEdicao);
  end;

  oAviso(Handle,'Re-Abertura do caixa registrado com sucesso !');
  bExecEvent('Caixa');
end;

procedure TFrmPrincipal.ACTCAI_FECExecute(Sender: TObject);
begin
//  uFrmCreate(Nil,Tfrmcai_fec,Frmcai_fec);
end;

procedure TFrmPrincipal.ACTCAI_LSSExecute(Sender: TObject);
begin
//  Tfrmcai_sar._ExecForm(Nil,frmcai_sar);
end;

procedure TFrmPrincipal.ACTCAI_TSSExecute(Sender: TObject);
begin
//  FrmCreate(Nil,Tfrmcai_tsr,Frmcai_tsr);
end;

procedure TFrmPrincipal.ACTCAI_FLCExecute(Sender: TObject);
begin
//  uFrmCreate(Nil,Tfrmcai_mov,frmcai_mov);
end;

procedure TFrmPrincipal.ACTRelatoriosExecute(Sender: TObject);
begin
  try
    FrmRelatorios := TFrmRelatorios.Create(Application,TAction(Sender));
    FrmRelatorios.ShowModal;

  finally
    FreeAndNil(FrmRelatorios);
  end;
end;

procedure TFrmPrincipal.ACTComissaoExecute(Sender: TObject);
          procedure OTMComissoes;
          var
            DtMedia: Integer;
            v1,v2,
            PrecoTabelaMais5,
            PrecoTabelaMenos5,
            ComissaoPedido,
            ComissaoItem: double;
          begin
            try
              oOTransact(FBird.TFBConsulta);
              { Abre os cabeçalhos das Vendas - PED_VEN_CAB }
              with FBird.SQLFBConsulta do
              begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT   PK.ID,ROM_STPD,REP_COMI,PAG_PARC,PAG_PRAZ,PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,');
                SQL.Add('         PAG_D010,PAG_D011,PAG_D012,PAG_D013,PAG_D014,PAG_D015,PAG_D016,PAG_D017,PAG_D018,PAG_D019,PAG_D020,PK.ROM_DBAI');
                SQL.Add('FROM     PED_VEN_CAB AS PK');
                SQL.Add('JOIN     CAD_REP     AS CR ON (CR.ID = PK.IDCR)');
                SQL.Add('JOIN     TAB_PAG     AS PG ON (PG.ID = PK.CDPG)');
               // SQL.Add('WHERE    CAST(PK.DTBX AS DATE) >= DATEADD(MONTH,-1,DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE))');
                SQL.Add('WHERE    CAST(PK.DTBX AS DATE) >= ''11/01/25''');
              //SQL.Add('AND      PK.DEPD = ''109506''');
                SQL.Add('ORDER BY PK.DTBX');
                ExecQuery;
              end;

              while not FBird.SQLFBConsulta.Eof do
              begin
                DtMedia := Trunc((FBird.SQLFBConsulta.Current.Vars[05].AsInteger+FBird.SQLFBConsulta.Current.Vars[06].AsInteger+FBird.SQLFBConsulta.Current.Vars[07].AsInteger+FBird.SQLFBConsulta.Current.Vars[08].AsInteger+FBird.SQLFBConsulta.Current.Vars[09].AsInteger+
                                  FBird.SQLFBConsulta.Current.Vars[10].AsInteger+FBird.SQLFBConsulta.Current.Vars[11].AsInteger+FBird.SQLFBConsulta.Current.Vars[12].AsInteger+FBird.SQLFBConsulta.Current.Vars[13].AsInteger+FBird.SQLFBConsulta.Current.Vars[14].AsInteger+
                                  FBird.SQLFBConsulta.Current.Vars[15].AsInteger+FBird.SQLFBConsulta.Current.Vars[16].AsInteger+FBird.SQLFBConsulta.Current.Vars[17].AsInteger+FBird.SQLFBConsulta.Current.Vars[18].AsInteger+FBird.SQLFBConsulta.Current.Vars[19].AsInteger+
                                  FBird.SQLFBConsulta.Current.Vars[20].AsInteger+FBird.SQLFBConsulta.Current.Vars[21].AsInteger+FBird.SQLFBConsulta.Current.Vars[22].AsInteger+FBird.SQLFBConsulta.Current.Vars[23].AsInteger+FBird.SQLFBConsulta.Current.Vars[24].AsInteger)/
                                  FBird.SQLFBConsulta.Current.Vars[03].AsInteger);

                { Abre os itens do cabeçalho - PED_VEN_ITE }
                with FBird.SQLFBFKConsulta do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Add('SELECT   PK.ITEM,PK.IDCP,ROM_UNIT,PRO_PREC,PRO_PPRZ');
                  SQL.Add('FROM     PED_VEN_ITE AS PK');
                  SQL.Add('JOIN     CAD_PRO     AS CP ON (CP.ID = PK.IDCP)');
                  SQL.Add('WHERE    PK.IDPK = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString+'''');
                  SQL.Add('ORDER BY PK.ITEM');
                  ExecQuery;
                end;

                while not FBird.SQLFBFKConsulta.Eof do
                begin
                  Application.ProcessMessages;
                  SBRodape.Panels[0].Text := 'OTMPed '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' de '+FormatDateTime('dd/mm/yy',FBird.SQLFBConsulta.Current.Vars[25].AsDateTime)+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                  SBRodape.Refresh;

                  { Subtraindo 5% do Preco de Tabela }
                  PrecoTabelaMenos5 := FBird.SQLFBFKConsulta.Current.Vars[3].AsFloat - ((FBird.SQLFBFKConsulta.Current.Vars[3].AsFloat*5)/100);

                  { Adicionando 5% do Preco de Tabela }
                  PrecoTabelaMais5  := FBird.SQLFBFKConsulta.Current.Vars[3].AsFloat + ((FBird.SQLFBFKConsulta.Current.Vars[3].AsFloat*5)/100);

                  { Iniciando ComissaoItem com o valor da comissao do Consulta de representantes }
                  ComissaoItem := FBird.SQLFBConsulta.Current.Vars[2].AsFloat;

                  { Descartar o cálculo para os representantes cadastrados com comissão default superior à 3%
                    Descartar Abatimentos Devoluções }
                  if (ComissaoItem = 3) and
                     (FBird.SQLFBConsulta.Current.Vars[1].AsString <> 'ABATIMENTO') and (FBird.SQLFBConsulta.Current.Vars[1].AsString <> 'DEVOLUÇÃO') then
                  begin
                    if ((FBird.SQLFBConsulta.Current.Vars[4].AsInteger <= 21) and (FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat >= PrecoTabelaMenos5)) or
                       ((DtMedia <= 75 )                                      and (FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat  = FBird.SQLFBFKConsulta.Current.Vars[3].AsFloat)) or
                       ((DtMedia >  75 )                                      and (FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat >= PrecoTabelaMais5 )) then
                    ComissaoItem := 4;
                  end;

                  try
                    oOTransact(FBird.TFBEdicao);
                    with FBird.SQLFBEdicao do
                    begin
                      Close;
                      SQL.Clear;
                      SQL.Add('UPDATE PED_VEN_ITE');
                      SQL.Add('SET    ROM_COMI = '''+OStrTran(FloatToStr(ComissaoItem),',','.')+'''');
                      SQL.Add('WHERE  IDPK = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString  +'''');
                      SQL.Add('AND    ITEM = '''+FBird.SQLFBFKConsulta.Current.Vars[0].AsString+'''');
                      SQL.Add('AND    IDCP = '''+FBird.SQLFBFKConsulta.Current.Vars[1].AsString+'''');
                      ExecQuery;
                    end;
                    FBird.TFBEdicao.Commit;
                  except
                    FBird.TFBEdicao.Rollback;

                    SBRodape.Panels[0].Text := 'OTMErro Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                    SBRodape.Refresh;
          
                    Abort;
                  end;
                  FBird.SQLFBFKConsulta.Next;
                end;
          
                { Utiliza a formula da média ponderada para calcular comissão total do pedido de venda
                  Ignora caso Algum item esteja sem comissao }

                with FBird.SQLFBPKConsulta do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Add('SELECT SUM(ROM_UNIT*ROM_COMI),SUM(ROM_UNIT)');
                  SQL.Add('FROM   PED_VEN_ITE');
                  SQL.Add('WHERE  IDPK = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString+'''');
                  SQL.Add('AND    ROM_COMI > 0');
                  ExecQuery;

                  v1 := Current.Vars[0].AsFloat;
                  v2 := Current.Vars[1].AsFloat;
                  ComissaoPedido := 0;
                  if (v1 > 0) and (v2 > 0) then
                  ComissaoPedido := RoundTO(v1/v2,-2);
                end;

                try
                  oOTransact(FBird.TFBEdicao);
                  with FBird.SQLFBEdicao do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add('UPDATE PED_VEN_CAB');
                    SQL.Add('SET    ROM_COMI = '''+OStrTran(FloatToStr(ComissaoPedido),',','.')+'''');
                    SQL.Add('WHERE        ID = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString+'''');
                    ExecQuery;
                  end;
                  FBird.TFBEdicao.Commit;
                except
                  FBird.TFBEdicao.Rollback;

                  SBRodape.Panels[0].Text := 'OTM Erro Cabec Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                  SBRodape.Refresh;

                  Abort;
                end;
                FBird.SQLFBConsulta.Next;
              end;
            finally
              oCTransact(FBird.TFBConsulta);

              SBRodape.Panels[0].Text := 'Otimotex Fim';
              SBRodape.Refresh;
            end;
          end;

          procedure LEBComissoes;
          var
            v1,v2,
            ComissaoPedido,ComissaoItem: double;
          begin
            try
              oOTransact(FBird.TFBConsulta);
              { Abre os cabeçalhos das Vendas - ROM_CAB }
              with FBird.SQLFBConsulta do
              begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT   PK.ID,PK.IDCR,ROM_COMI,ROM_TCDE,ROM_DNFS,ROM_STPD');
                SQL.Add('FROM     PED_VEN_CAB_004 AS PK');
                SQL.Add('JOIN     CAD_REP         AS CR ON (CR.ID = PK.IDCR)');
                SQL.Add('JOIN     TAB_PAG         AS PG ON (PG.ID = PK.CDPG)');
                //SQL.Add('WHERE    CAST(PK.DTBX AS DATE) >= DATEADD(MONTH,-1,DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE))');
                SQL.Add('WHERE    CAST(PK.DTBX AS DATE) >= ''11/01/25''');
              //SQL.Add('AND      PK.DEPD = ''99669''');
                SQL.Add('ORDER BY PK.DTBX');
                ExecQuery;
              end;

              while not FBird.SQLFBConsulta.Eof do
              begin
                if FBird.SQLFBConsulta.Current.Vars[5].AsString <> 'ABATIMENTO' then
                begin
                  { Abre os itens do cabeçalho - ROM_ITE }
                  with FBird.SQLFBFKConsulta do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add('SELECT   ITEM,IDCP,ROM_UNIT,ROM_COMI');
                    SQL.Add('FROM     PED_VEN_ITE_004');
                    SQL.Add('WHERE    IDPK = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString+'''');
                    SQL.Add('ORDER BY ITEM');
                    ExecQuery;
                  end;

                  ComissaoItem := 0;
                  while not FBird.SQLFBFKConsulta.Eof do
                  begin
                    Application.ProcessMessages;
                    SBRodape.Panels[1].Text := 'LEBPed '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' de '+FormatDateTime('dd/mm/yy',FBird.SQLFBConsulta.Current.Vars[4].AsDateTime)+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                    SBRodape.Refresh;

                    { Procura na tabela de categorias a faixa de preço correspondente }
                    with FBird.SQLFBPKConsulta do
                    begin
                      Close;
                      SQL.Clear;
                      SQL.Add('SELECT   CP.SKU,FK.SEQUENCIA,FK.VUPRC_INI,FK.VUPRC_FIM,FK.PUCOM_PAD');
                      SQL.Add('FROM     CAD_PRO     AS CP');
                      SQL.Add('JOIN     TAB_SCT     AS PK ON (PK.ID = CP.IDSCT)');
                      SQL.Add('JOIN     TAB_SCT_PRC AS FK ON (FK.ID = PK.ID)');
                      SQL.Add('WHERE    CP.ID = '''+FBird.SQLFBFKConsulta.Current.Vars[1].AsString+'''');
                      SQL.Add('ORDER BY FK.SEQUENCIA');
                      ExecQuery;
                    end;

                    { Começa pegando a comissão mais baixa na faixa de preços }
                    ComissaoItem := FBird.SQLFBPKConsulta.Current.Vars[4].AsFloat;
                    if (ComissaoItem = 0) then
                       Tag := 0;
                    while not FBird.SQLFBPKConsulta.Eof do
                    begin
                      { Atualiza a comissão mínima }
                      if FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat >= FBird.SQLFBPKConsulta.Current.Vars[2].AsFloat then
                      ComissaoItem := FBird.SQLFBPKConsulta.Current.Vars[4].AsFloat;

                      { Atualiza a comissão conforme a faixa de preço }
                      if (FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat >= FBird.SQLFBPKConsulta.Current.Vars[2].AsFloat) and
                         (FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat <= FBird.SQLFBPKConsulta.Current.Vars[3].AsFloat) then
                      begin
                        ComissaoItem := FBird.SQLFBPKConsulta.Current.Vars[4].AsFloat;
                        Break;
                      end;

                      FBird.SQLFBPKConsulta.Next;
                    end;

                    try
                      oOTransact(FBird.TFBEdicao);
                      with FBird.SQLFBEdicao do
                      begin
                        Close;
                        SQL.Clear;
                        SQL.Add('UPDATE PED_VEN_ITE_004');
                        SQL.Add('SET    ROM_COMI = '''+OStrTran(FloatToStr(ComissaoItem),',','.')+'''');
                        SQL.Add('WHERE  IDPK = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString  +'''');
                        SQL.Add('AND    ITEM = '''+FBird.SQLFBFKConsulta.Current.Vars[0].AsString+'''');
                        SQL.Add('AND    IDCP = '''+FBird.SQLFBFKConsulta.Current.Vars[1].AsString+'''');
                        ExecQuery;
                      end;
                      FBird.TFBEdicao.Commit;
                    except
                      FBird.TFBEdicao.Rollback;

                      SBRodape.Panels[1].Text := 'LEBErro Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                      SBRodape.Refresh;

                      Abort;
                    end;
                    FBird.SQLFBFKConsulta.Next;
                  end;

                  { Utiliza a formula da média ponderada para calcular comissão total do pedido de venda
                    Ignora caso Algum item esteja sem comissao }

                  if ComissaoItem > 0 then
                  with FBird.SQLFBPKConsulta do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add('SELECT SUM(ROM_UNIT*ROM_COMI),SUM(ROM_UNIT)');
                    SQL.Add('FROM   PED_VEN_ITE_004');
                    SQL.Add('WHERE  IDPK = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString+'''');
                    SQL.Add('AND    ROM_COMI > 0');
                    ExecQuery;

                    v1 := Current.Vars[0].AsFloat;
                    v2 := Current.Vars[1].AsFloat;
                    ComissaoPedido := RoundTO(v1/v2,-2);
                  end else
                  ComissaoPedido := 0;
                end else
                ComissaoPedido   := 4;

                try
                  oOTransact(FBird.TFBEdicao);
                  with FBird.SQLFBEdicao do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add('UPDATE PED_VEN_CAB_004');
                    SQL.Add('SET    ROM_COMI = '''+OStrTran(FloatToStr(ComissaoPedido),',','.')+'''');
                    SQL.Add('WHERE        ID = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString+'''');
                    ExecQuery;
                  end;
                  FBird.TFBEdicao.Commit;
                except
                  FBird.TFBEdicao.Rollback;

                  SBRodape.Panels[1].Text := 'LEBErro Cabec Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                  SBRodape.Refresh;

                  Abort;
                end;
                FBird.SQLFBConsulta.Next;
              end;
            finally
              oCTransact(FBird.TFBConsulta);

              SBRodape.Panels[1].Text := 'Lebianco Fim';
              SBRodape.Refresh;
            end;
          end;
begin
  try
    IPrincipal.Enabled := False;
  OTMComissoes;
  LEBComissoes;

  finally
    IPrincipal.Enabled := True;
  end;
end;

procedure TFrmPrincipal.ACTCAD_PRO_EST_ADMExecute(Sender: TObject);
begin
  TFrmEstoque_._ExecForm(

  Application, { Owner    }
  FrmEstoque_, { Form     }
  False,       { Pesquisa }
  fsMDIChild,  { Style    }

  0 , { Código    Principal }
  '', { Descrição Principal }

  0 , { Código Evento }
  0 , { Tipo   Evento }

  '', { Tabela }
  ''  { Get }
  );

end;

end.
