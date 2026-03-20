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

    TPrincipal: TTimer;
    IPrincipal: TImage;

    ACBrBarCode: TACBrBarCode;
    ACBrBarCodeV: TACBrBarCode;
    BMPrincipal: TdxBarManager;
    BSICadastros: TdxBarSubItem;
    BSIProdutos: TdxBarSubItem;
    DMPrincipal: TdxDockingManager;
    DSMenu: TdxDockSite;
    LDSPrincipal: TdxLayoutDockSite;
    DPMenu: TdxDockPanel;
    BLBUT_ETQ_PRN: TdxBarLargeButton;
    SBPrincipal: TdxSideBar;
    SBSPrincipal: TdxSideBarStore;
    BLBCAD_CLI: TdxBarLargeButton;
    BLBCAD_REP: TdxBarLargeButton;
    BLBCAD_VEN: TdxBarLargeButton;
    BLBCAD_CNI: TdxBarLargeButton;
    BLBCAD_TRA: TdxBarLargeButton;
    BLBCAD_FOR: TdxBarLargeButton;
    BLGCAD_PRO: TdxBarLargeButton;
    BLGCAD_PRO_COR: TdxBarLargeButton;
    BLGCAD_PRO_ETP: TdxBarLargeButton;
    BLGCAD_PRO_FCT: TdxBarLargeButton;
    BLGCAD_PRO_ETQ: TdxBarLargeButton;
    BLGCAD_PRO_COL: TdxBarLargeButton;
    BLGCAD_PRO_SEG: TdxBarLargeButton;
    BLGCAD_PRO_GRP: TdxBarLargeButton;
    BLGCAD_PRO_SGP: TdxBarLargeButton;
    BLGCAD_PRO_CAT: TdxBarLargeButton;
    BLGCAD_PRO_SCT: TdxBarLargeButton;
    BLBEST_EDI: TdxBarLargeButton;
    BLBEST_ADM: TdxBarLargeButton;
    BLBEST_ETQ: TdxBarLargeButton;
    BLBEST_QLD: TdxBarLargeButton;
    BLBEXP_COL: TdxBarLargeButton;
    BLBEXP_MAN: TdxBarLargeButton;
    BLBCTNR_ADM: TdxBarLargeButton;
    BLBTCTNR_CTS: TdxBarLargeButton;
    BSIEstoque: TdxBarSubItem;
    BDIExpedicao: TdxBarSubItem;
    BSIContainers: TdxBarSubItem;
    BLBPED_CNI_EDI: TdxBarLargeButton;
    BLBPED_CNI_ADM: TdxBarLargeButton;
    BLBPED_PRG_EDI: TdxBarLargeButton;
    BLBPED_PRG_ADM: TdxBarLargeButton;
    BLBPED_VEN_EDI: TdxBarLargeButton;
    BLBPED_VEN_ADM: TdxBarLargeButton;
    BLBPED_VEN_PRZ: TdxBarLargeButton;
    BLBROM_VEN_EDI: TdxBarLargeButton;
    BLBVEN_ROM_ADM: TdxBarLargeButton;
    BLBNFE_EDI: TdxBarLargeButton;
    BLBNFE_ADM: TdxBarLargeButton;
    BLBNFE_EDI_TRC: TdxBarLargeButton;
    BLBNFE_CFOP: TdxBarLargeButton;
    BLBCFE_EDI: TdxBarLargeButton;
    BLBCFE_ADM: TdxBarLargeButton;
    BLBFIN_REC_BAN_ADM: TdxBarLargeButton;
    BLBFIN_REC_BAN_BAI: TdxBarLargeButton;
    BLBFIN_REC_DUP: TdxBarLargeButton;
    BLBFIN_REC_BOL: TdxBarLargeButton;
    BLBFIN_REC_CAR_BAI: TdxBarLargeButton;
    BLBFIN_PAG_ADM: TdxBarLargeButton;
    BLBFIN_PAG_CMV: TdxBarLargeButton;
    BLBFIN_CHQ_EDI: TdxBarLargeButton;
    BLBFIN_CHQ_ADM: TdxBarLargeButton;
    BLBCAI_ABR: TdxBarLargeButton;
    BLBCAI_RAB: TdxBarLargeButton;
    BLBCAI_FCH: TdxBarLargeButton;
    BLBCAI_SSP_EDI: TdxBarLargeButton;
    BLBCAI_SSP_TAB: TdxBarLargeButton;
    BLBCAI_FLC: TdxBarLargeButton;
    BLBTAB_PRZ: TdxBarLargeButton;
    BLBTAB_COB: TdxBarLargeButton;
    BLBTAB_PED: TdxBarLargeButton;
    BLBTAB_NCM: TdxBarLargeButton;
    BLBTAB_UCOM: TdxBarLargeButton;
    BLBTAB_IBGE: TdxBarLargeButton;
    BLBTAB_CFOP: TdxBarLargeButton;
    BLBTAB_ICMS: TdxBarLargeButton;
    BLBTAB_ICMS_ST: TdxBarLargeButton;
    BLBTAB_ORIG: TdxBarLargeButton;
    BSICompras: TdxBarSubItem;
    BSIProgramados: TdxBarSubItem;
    BSIRomaneios: TdxBarSubItem;
    BSICheques: TdxBarSubItem;
    BSICaixa: TdxBarSubItem;
    BSIRelatorios: TdxBarSubItem;
    BSIConteudo: TdxBarSubItem;
    dxBarSubItem1: TdxBarSubItem;
    BLBREL_EST_EPE: TdxBarLargeButton;
    BLBREL_EST_EPP: TdxBarLargeButton;
    BLBREL_EST_ERS: TdxBarLargeButton;
    BLBREL_EST_ESP: TdxBarLargeButton;
    PMREL_EST: TdxBarPopupMenu;
    BLBREL_EST_EFI: TdxBarLargeButton;
    BLBREL_EST_ETQ: TdxBarLargeButton;
    BLBREL_EST_QLD: TdxBarLargeButton;
    BLBREL_EST_INV: TdxBarLargeButton;
    BBREL_EST: TdxBarButton;
    BBREL_EST_UCOM: TdxBarButton;
    BBREL_PRO: TdxBarButton;
    BBREL_COL: TdxBarButton;
    BBREL_SEG: TdxBarButton;
    BBREL_GRP: TdxBarButton;
    BBREL_SGP: TdxBarButton;
    BBREL_CAT: TdxBarButton;
    BBREL_SCT: TdxBarButton;
    BBREL_CLI: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    BLBSHE_ABOUT: TdxBarLargeButton;
    BLBUT_NFE_PSQ: TdxBarLargeButton;
    BLBUT_CFE_PRN: TdxBarLargeButton;
    BLBUSER_PASS: TdxBarLargeButton;
    BLBUT_SHE_PRN: TdxBarLargeButton;
    BLBSHE_PAR: TdxBarLargeButton;
    BLBSHE_BKP: TdxBarLargeButton;
    BLBSaida: TdxBarLargeButton;
    BLBMenuSaida: TdxBarSubItem;
    SSICAD_PRO_ADM: TdxStoredSideItem;
    AMPrincipal: TActionManager;
    ACTSHE_PRN: TAction;
    ACTSHE_PRN_EXE: TAction;
    ACTUSER_LOG: TAction;
    ACTUSER_PAS: TAction;
    ACTSHE_PAR: TAction;
    ACTSHE_BKP: TAction;
    ACTSHE_ABOUT: TAction;
    ACTSaida: TAction;
    ACTSHE_DENIED: TAction;
    SSIPED_VEN_ADM: TdxStoredSideItem;
    BLGCAD_PRO_TAM: TdxBarLargeButton;
    BLBNFE_PSQ: TdxBarLargeButton;
    BLBFIN_REC_CAR_ADM: TdxBarButton;
    BLBTAB_PAIS: TdxBarLargeButton;
    SSICAD_PRO_EST_EXP_MAN: TdxStoredSideItem;
    SSICAD_PRO_EST_EXP_COL: TdxStoredSideItem;
    SSICAD_PRO_EST_ADM: TdxStoredSideItem;
    SSICAD_PRO_EST_LAN: TdxStoredSideItem;
    SSICAD_PRO_EST_ETQ: TdxStoredSideItem;
    ACTPED_VEN_ADM: TAction;
    ACTCAD_PRO_ADM: TAction;
    ACTCAD_PRO_EST_ADM: TAction;
    ACTCAD_PRO_EST_LAN: TAction;
    ACTCAD_PRO_EST_EXP_COL: TAction;
    ACTCAD_PRO_EST_EXP_MAN: TAction;
    ACTCAD_PRO_EST_ETQ: TAction;
    PNLRodape: TPanel;
    SBRodape: TdxStatusBar;
    PNLRodapeTOP: TPanel;
    PNLSyncEvent: TPanel;
    GFASyncEvent: TRxGIFAnimator;
    BLBUSER_LOG: TdxBarLargeButton;
    BLBUT_NFE_SAI: TdxBarLargeButton;
    ACTNFE_SAI: TAction;
    ILPrincipal: TImageList;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);

    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);

    procedure TPrincipalTimer(Sender: TObject);
    procedure ACTSHE_PRN_EXEExecute(Sender: TObject);
    procedure ACTUSER_LOGExecute(Sender: TObject);
    procedure ACTSHE_DENIEDExecute(Sender: TObject);
    procedure ACTSHE_PARExecute(Sender: TObject);
    procedure ACTSHE_BKPExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure _DoneEvent(Sender: TObject);
    procedure ACTUSER_LOGUpdate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ACTCAD_PRO_ADMExecute(Sender: TObject);
    procedure ACTPED_VEN_ADMExecute(Sender: TObject);
  private
    { Private declarations }
    procedure _Login(AIDUSER: Variant; AIDEP,ADEEP: String);

    procedure _SetHintDefault;
    procedure _SetMouseLeave(var AMessage: TMessage); message WM_MOUSELEAVE;

    function  _SetMouseTracking: Boolean;

  public
    { Public declarations }
  end;

  { Sheild }
  procedure uConstrucao(ACaption: String = ''); STDCall;
  procedure uCAD_PRO_PSQ(var AREC_SHE_DEF: TREC_SHE_DEF); STDCALL;

  procedure uSP_CAD_PRO_EST_LAN_UPD (ATHR_TBPK: String;
                                     ATHR_IDEP,
                                     ATHR_IDPK: Variant;
                                     ATHR_DEPK,
                                     FIDPK: String); STDCALL;

  { TEMPORÁRIOS }
var
  FrmPrincipal: TFrmPrincipal;
  ATrackMouseEvent: TTrackMouseEvent;

  ATHR_ITEM: LongInt;
  ATHR_SYNC: String;

implementation

uses bPrincipal  ,
     pLogin      , pSenha   , pSobre,
     pImpressoras, AJBarcode,

     pSHE_DEF_ADM;

{$R *.dfm}

constructor TRunProcessThread.Create(const VTHR_TBPK: String; VTHR_IDEP,VTHR_IDPK: Variant; VTHR_DEPK: String; VIDPK: String = 'IDPK');
begin
  oOTransact(FBird.TTHRConsulta);
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
  oCTransact(FBird.TTHRConsulta);
  inherited;
end;

procedure TRunProcessThread._SyncEvent;
begin
  if   ATHR_ITEM > 1 then
  with Frmprincipal do
  begin
    PNLSyncEvent.Caption := ATHR_SYNC;
    GFASyncEvent.Animate := True;

    PNLRodape.Height     := 65;
    PNLRodapeTOP.Height  := 30;
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

      with SQLTHRConsulta do
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

      while not SQLTHRConsulta.Eof do
      begin
        try
          oOTransact(TTHREdicao);

          SPTHREdicao.Close;
          SPTHREdicao.StoredProcName := 'SP_CAD_PRO_EST_LAN';
          SPTHREdicao.Prepare;

          for i := 0 to SPTHREdicao.ParamCount - 1 do
          SPTHREdicao.Params[i].Value := Null;

          SPTHREdicao.ParamByName('AIDEP').Value := SQLTHRConsulta.Current.ByName('IDEP').AsInteger;
          SPTHREdicao.ParamByName('AIDCP').Value := SQLTHRConsulta.Current.ByName('IDCP').AsInteger;
          SPTHREdicao.ExecProc;

          oCTransact(TTHREdicao);
        except
          oCTransact(TTHREdicao,ltRollback);
        end;

        INC(ATHR_ITEM);
        ATHR_SYNC := 'Atualizando Estoque ...   ' +
                     'Pedido Nº: ' + ATHR_DEPK    + ' - ' +
                     'Produto: '   + oStrZero(SQLTHRConsulta.Current.ByName('ITEM').AsInteger,5) + '   ' +
                                              SQLTHRConsulta.Current.ByName('SKU' ).AsString     + '   ' +
                                              SQLTHRConsulta.Current.ByName('DGCP').AsString;
        Synchronize(_SyncEvent);
        SQLTHRConsulta.Next;
      end;
    end;
  except
    oCTransact(FBird.TTHRConsulta,ltRollback);
  end
end;

procedure uConstrucao(ACaption: String = ''); STDCall;
begin
  { nothing };
end;

procedure uSP_CAD_PRO_EST_LAN_UPD (ATHR_TBPK: String;
                                   ATHR_IDEP,
                                   ATHR_IDPK: Variant;
                                   ATHR_DEPK,
                                   FIDPK: String); STDCALL;
var
  Thread: TRunProcessThread;
begin
  if (ATHR_TBPK <> EmptyStr) and (ATHR_IDEP <> EmptyStr)  and (ATHR_IDPK <> EmptyStr) then
        with FrmPrincipal do
        begin
          Thread := TRunProcessThread.Create(ATHR_TBPK,ATHR_IDEP,ATHR_IDPK,ATHR_DEPK,FIDPK);             //Create(AnsiQuotedStr(EDDEPK.Text, #34)) - "ricardo"

          Thread.OnTerminate := _DoneEvent;
          Thread.Priority    := tpTimeCritical;
          Thread.Resume;
        end;
end;

procedure uCAD_PRO_PSQ(var AREC_SHE_DEF: TREC_SHE_DEF); STDCALL;
begin
  AREC_SHE_DEF.PSQ_OK := False;

  if AREC_SHE_DEF.FWinControl <> Nil then
  begin
    AREC_SHE_DEF.PSQ_FB_FD := EmptyStr;
    AREC_SHE_DEF.PSQ_FB_PK := EmptyStr;
    AREC_SHE_DEF.FPoint     := AREC_SHE_DEF.FWinControl.ClientToScreen(Point(0,0));

    if AREC_SHE_DEF.FWinControl.ClassType = TdxEdit then
    begin
      AREC_SHE_DEF.PSQ_FB_FD := TdxEdit(AREC_SHE_DEF.FWinControl).HelpKeyword;
      AREC_SHE_DEF.PSQ_FB_PK := TdxEdit(AREC_SHE_DEF.FWinControl).Text;
    end else

    if AREC_SHE_DEF.FWinControl.ClassType = TdxMaskEdit then
    begin
      AREC_SHE_DEF.PSQ_FB_FD := TdxMaskEdit(AREC_SHE_DEF.FWinControl).HelpKeyword;
      AREC_SHE_DEF.PSQ_FB_PK := TdxMaskEdit(AREC_SHE_DEF.FWinControl).Text;
    end else

    if AREC_SHE_DEF.FWinControl.ClassType = TdxCurrencyEdit then
    begin
      AREC_SHE_DEF.PSQ_FB_FD := TdxCurrencyEdit(AREC_SHE_DEF.FWinControl).HelpKeyword;
      AREC_SHE_DEF.PSQ_FB_PK := TdxCurrencyEdit(AREC_SHE_DEF.FWinControl).Text;
    end else

    if AREC_SHE_DEF.FWinControl.ClassType = TdxButtonEdit then
    begin
      AREC_SHE_DEF.PSQ_FB_FD := TdxButtonEdit(AREC_SHE_DEF.FWinControl).HelpKeyword;
      AREC_SHE_DEF.PSQ_FB_PK := TdxButtonEdit(AREC_SHE_DEF.FWinControl).Text;
    end else

    if AREC_SHE_DEF.FWinControl.ClassType = TdxDBGridMaskColumn then
    begin
      AREC_SHE_DEF.PSQ_FB_FD := TdxDBGridMaskColumn(AREC_SHE_DEF.FWinControl).FieldName;
      AREC_SHE_DEF.PSQ_FB_PK := TdxDBGridMaskColumn(AREC_SHE_DEF.FWinControl).Field.AsString;
    end;
  end;

  if  (AREC_SHE_DEF.PSQ_FB_PK <> EmptyStr) and (AREC_SHE_DEF.PSQ_FB_FD <> EmptyStr) then
  begin
    AREC_SHE_DEF.AException := 'Produto não Encontrado !';

    IF Pos('ID',AREC_SHE_DEF.PSQ_FB_FD) > 0 then
    begin
      AREC_SHE_DEF.PSQ_WHERE := ' = ';
      AREC_SHE_DEF.PSQ_LKINI := '''';
      AREC_SHE_DEF.PSQ_LKFIM := '''';
    end else
    begin
      AREC_SHE_DEF.PSQ_WHERE := ' LIKE ';
      AREC_SHE_DEF.PSQ_LKINI := '''' ;
      AREC_SHE_DEF.PSQ_LKFIM := '%''';
    end;

    if not AREC_SHE_DEF.FB_SQL.Transaction.InTransaction then
    oOTransact(AREC_SHE_DEF.FB_SQL.Transaction);

    with AREC_SHE_DEF.FB_SQL do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT DISTINCT CP.*,');

      SQL.Add('       MAX(EL.EF_DTEV) OVER(PARTITION BY CP.IDCP) AS EF_DTEV, -- Evento');

      SQL.Add('       -- Estoque Consolidado');
      SQL.Add('       CAST(SUM(EL.EFI_QTDE) OVER(PARTITION BY CP.IDCP) AS NUMERIC(12,2)) AS EFI_QTDE,CAST(SUM(EL.EFI_QTRL) OVER(PARTITION BY CP.IDCP) AS INTEGER) AS EFI_QTRL,');

      SQL.Add('       -- Estoque Pronta Entrega');
      SQL.Add('       CAST(SUM(EL.EPE_QTDE) OVER(PARTITION BY CP.IDCP) AS NUMERIC(12,2))  AS EPE_QTDE,CAST(SUM(EL.EPE_QTRL) OVER(PARTITION BY CP.IDCP) AS INTEGER) AS EPE_QTRL,');
      SQL.Add('       CAST(SUM(EL.EST_QTDE) OVER(PARTITION BY CP.IDCP) AS NUMERIC(12,2))  AS EST_QTDE,CAST(SUM(EL.EST_QTRL) OVER(PARTITION BY CP.IDCP) AS INTEGER) AS EST_QTRL,');
      SQL.Add('       CAST(SUM(EL.EAA_QTDE) OVER(PARTITION BY CP.IDCP) AS NUMERIC(12,2))  AS EAA_QTDE,CAST(SUM(EL.EAA_QTRL) OVER(PARTITION BY CP.IDCP) AS INTEGER) AS EAA_QTRL,');

      SQL.Add('       -- Estoque Antecipado');
      SQL.Add('       CAST(SUM(EL.EAT_QTDE) OVER(PARTITION BY CP.IDCP) AS NUMERIC(12,2))  AS EAT_QTDE,CAST(SUM(EL.EAT_QTRL) OVER(PARTITION BY CP.IDCP) AS INTEGER) AS EAT_QTRL,');

      SQL.Add('       -- Estoque Revisado');
      SQL.Add('       CAST(SUM(EL.ERV_QTDE) OVER(PARTITION BY CP.IDCP) AS NUMERIC(12,2))  AS ERV_QTDE,CAST(SUM(EL.ERV_QTRL) OVER(PARTITION BY CP.IDCP) AS INTEGER) AS ERV_QTRL,');
      SQL.Add('       CAST(SUM(EL.EA_QTDE ) OVER(PARTITION BY CP.IDCP) AS NUMERIC(12,2))  AS EA_QTDE ,CAST(SUM(EL.EA_QTRL ) OVER(PARTITION BY CP.IDCP) AS INTEGER) AS EA_QTRL ,');
      SQL.Add('       CAST(SUM(EL.EB_QTDE ) OVER(PARTITION BY CP.IDCP) AS NUMERIC(12,2))  AS EB_QTDE ,CAST(SUM(EL.EB_QTRL ) OVER(PARTITION BY CP.IDCP) AS INTEGER) AS EB_QTRL ,');
      SQL.Add('       CAST(SUM(EL.EC_QTDE ) OVER(PARTITION BY CP.IDCP) AS NUMERIC(12,2))  AS EC_QTDE ,CAST(SUM(EL.EC_QTRL ) OVER(PARTITION BY CP.IDCP) AS INTEGER) AS EC_QTRL ,');

      SQL.Add('       -- Pilotagem');
      SQL.Add('       CAST(SUM(EL.EPI_QTDE) OVER(PARTITION BY CP.IDCP) AS NUMERIC(12,2))  AS EPI_QTDE,CAST(SUM(EL.EPI_QTRL) OVER(PARTITION BY CP.IDCP) AS INTEGER) AS EPI_QTRL,');

      SQL.Add('       -- Estoque Substituto');
      SQL.Add('       CAST(SUM(EL.ESU_QTDE_ENT) OVER(PARTITION BY CP.IDCP) AS NUMERIC(12,2))  AS ESU_QTDE_ENT,CAST(SUM(EL.ESU_QTRL_ENT) OVER(PARTITION BY CP.IDCP) AS INTEGER) AS ESU_QTRL_ENT,');
      SQL.Add('       CAST(SUM(EL.ESU_QTDE_SAI) OVER(PARTITION BY CP.IDCP) AS NUMERIC(12,2))  AS ESU_QTDE_SAI,CAST(SUM(EL.ESU_QTRL_SAI) OVER(PARTITION BY CP.IDCP) AS INTEGER) AS ESU_QTRL_SAI,');

      SQL.Add('       -- Compras');
      SQL.Add('       CAST(SUM(EL.ECO_QTDE) OVER(PARTITION BY CP.IDCP) AS NUMERIC(12,2))  AS ECO_QTDE,CAST(SUM(EL.ECO_QTRL) OVER(PARTITION BY CP.IDCP) AS INTEGER) AS ECO_QTRL,');
      SQL.Add('       MAX(EL.ECO_DECO) OVER(PARTITION BY CP.IDCP)      AS ECO_DECO,');

      SQL.Add('       -- Vendas Programadas');
      SQL.Add('       CAST(SUM(EL.EPP_QTDE     ) OVER(PARTITION BY CP.IDCP) AS NUMERIC(12,2))  AS EPP_QTDE     ,CAST(SUM(EL.EPP_QTRL     ) OVER(PARTITION BY CP.IDCP) AS INTEGER) AS EPP_QTRL     ,');
      SQL.Add('       CAST(SUM(EL.EPP_QTDE_CTNR) OVER(PARTITION BY CP.IDCP) AS NUMERIC(12,2))  AS EPP_QTDE_CTNR,CAST(SUM(EL.EPP_QTRL_CTNR) OVER(PARTITION BY CP.IDCP) AS INTEGER) AS EPP_QTRL_CTNR,');
      SQL.Add('       CAST(SUM(EL.EEP_QTDE     ) OVER(PARTITION BY CP.IDCP) AS NUMERIC(12,2))  AS EEP_QTDE     ,CAST(SUM(EL.EEP_QTRL     ) OVER(PARTITION BY CP.IDCP) AS INTEGER) AS EEP_QTRL     ,');

      SQL.Add('       -- Vendas Pronta Entrega');
      SQL.Add('       CAST(SUM(EL.EPV_QTDE) OVER(PARTITION BY CP.IDCP) AS NUMERIC(12,2))  AS EPV_QTDE,CAST(SUM(EL.EPV_QTRL) OVER(PARTITION BY CP.IDCP) AS INTEGER) AS EPV_QTRL,');

      SQL.Add('       -- Vendas Separadas');
      SQL.Add('       CAST(SUM(EL.ESP_QTDE) OVER(PARTITION BY CP.IDCP) AS NUMERIC(12,2))  AS ESP_QTDE,CAST(SUM(EL.EPV_QTRL) OVER(PARTITION BY CP.IDCP) AS INTEGER) AS ESP_QTRL');

      SQL.Add('FROM      VW_CAD_PRO_PSQ         AS CP');
      SQL.Add('LEFT JOIN VW_CAD_PRO_EST_LAN_PSQ AS EL     ON (EL.EL_IDEP  = ''' + RECParametros.ID + ''' AND EL.IDCP = CP.IDCP) -- Estoque');
      SQL.Add('LEFT JOIN VW_CAD_PRO_SCT_PSQ     AS TB_SCT ON (TB_SCT.IDAK = CP.IDAK)');

      SQL.Add('WHERE ' + AREC_SHE_DEF.PSQ_FB_FD + AREC_SHE_DEF.PSQ_WHERE + AREC_SHE_DEF.PSQ_LKINI + AREC_SHE_DEF.PSQ_FB_PK + AREC_SHE_DEF.PSQ_LKFIM);

      if AREC_SHE_DEF.PSQ_CDST_30 then
      SQL.Add('AND      CP.CDST = 30');
      SQL.Add('ORDER BY CP.ARTIGO,CP.DGCP');

      Prepare;
      ExecQuery;

      if Eof then
      if AREC_SHE_DEF.FWinControl <> Nil then
      begin
        if AREC_SHE_DEF.FWinControl.ClassType = TdxDBGridMaskColumn then oException(Nil,AREC_SHE_DEF.AException) else
        if AREC_SHE_DEF.FWinControl.Showing                         then oException(AREC_SHE_DEF.FWinControl,AREC_SHE_DEF.AException);
      end else
      oErro(Application.Handle,AREC_SHE_DEF.AException);
    end;

    if oLast(AREC_SHE_DEF.FB_SQL) > 1 then
    try
//      if Assigned(FrmPesquisa) then FrmPesquisa.BringToFront else
//      begin
//        TFrmPesquisa._ExecForm(
//                    Nil, { Owner }
//                    FrmPesquisa, { Form }
//                    False, { inicia pela pesquisa }
//                    fsStayOnTop, { Style }
//                    RECParametros.ID, { Empresa }
//                    0, { Código Principal }
//                    0, { Código Evento }
//                    1, { Tipo }
//                    AREC_SHE_DEF.PSQ_FB_TB, { Tabela }
//                    'Pesquisa'); { Processo }
//
//         if AREC_SHE_DEF.FWinControl <> Nil then
//         begin
//           FrmPesquisa.REC_SHE_DEF.FTop  := AREC_SHE_DEF.FPoint.Y + AREC_SHE_DEF.FWinControl.Height;
//           FrmPesquisa.REC_SHE_DEF.FLeft := AREC_SHE_DEF.FPoint.X;
//         end;  
//
//         FrmPesquisa.Consulta.Close;
//         FrmPesquisa.Consulta.SQL.Clear;
//         FrmPesquisa.Consulta.SQL.Assign(AREC_SHE_DEF.FB_SQL.SQL);
//         FrmPesquisa.ShowModal;
//       end;
    finally
//      if FrmPesquisa.REC_SHE_DEF.PSQ_OK then
      begin
        AREC_SHE_DEF.FWinControl := Nil;
        AREC_SHE_DEF.PSQ_FB_FD   := 'CP.IDCP';
//Ricardo        AREC_SHE_DEF.PSQ_FB_PK   := IntToStr(FrmPesquisa.ConsultaIDCP.AsInteger);

        uCAD_PRO_PSQ(AREC_SHE_DEF);
      end;
    end else
    AREC_SHE_DEF.PSQ_OK := True;
  end;

  if AREC_SHE_DEF.FWinControl <> Nil then
  begin
    if not AREC_SHE_DEF.PSQ_OK then
    begin
      if AREC_SHE_DEF.FWinControl.ClassType = TdxEdit then
      TdxEdit(AREC_SHE_DEF.FWinControl).Reset else

      if AREC_SHE_DEF.FWinControl.ClassType = TdxMaskEdit then
      TdxMaskEdit(AREC_SHE_DEF.FWinControl).Reset else

      if AREC_SHE_DEF.FWinControl.ClassType = TdxCurrencyEdit then
      TdxCurrencyEdit(AREC_SHE_DEF.FWinControl).Reset else

      if AREC_SHE_DEF.FWinControl.ClassType = TdxButtonEdit then
      TdxButtonEdit(AREC_SHE_DEF.FWinControl).Reset else

      if AREC_SHE_DEF.FWinControl.ClassType = TdxMemo then
      TdxMemo(AREC_SHE_DEF.FWinControl).Reset;

      if (AREC_SHE_DEF.FWinControl.Showing) and (AREC_SHE_DEF.FWinControl.Enabled) then
      TWinControl(AREC_SHE_DEF.FWinControl).SetFocus;
    end;

    AREC_SHE_DEF.FWinControl := Nil;
  end;

{  if AREC_SHE_DEF.FB_SQL <> Nil then
  begin
    AREC_SHE_DEF.FB_SQL.Close;
    AREC_SHE_DEF.FB_SQL := Nil;
  end;}
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
  if oEmpty(RECUsuarios.Id) then
  Close;
end;

procedure TFrmPrincipal.FormActivate(Sender: TObject);
begin
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
var
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
       for WLargura := MDIChildCount - 1 downto 0 do
           if MDIChildren[WLargura] <> Nil then
              MDIChildren[WLargura].Repaint;
  end;
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
  AREC_SHE_DEF: TREC_SHE_DEF;
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

  oIREC_SHE_DEF(AREC_SHE_DEF);
  try
    { Pedidos de Vendas }
    AREC_SHE_DEF.GDescricao := 'Pedidos'; AREC_SHE_DEF.GReferencia := 'Vendas'; AREC_SHE_DEF.GRegra := 'Permissões Gerais';
    AREC_SHE_DEF.GFB_FLD    := 'VISUALIZA';

    oUSER(AREC_SHE_DEF);
    ACTPED_VEN_ADM.Enabled := AREC_SHE_DEF.GView;

    { Produtos }
    AREC_SHE_DEF.GDescricao := 'Produtos'; AREC_SHE_DEF.GReferencia := 'Cadastro'; AREC_SHE_DEF.GRegra := 'Permissões Gerais';
    AREC_SHE_DEF.GFB_FLD    := 'VISUALIZA';

    oUSER(AREC_SHE_DEF);
    ACTCAD_PRO_ADM.Enabled := AREC_SHE_DEF.GView;

    { Estoque }
    AREC_SHE_DEF.GDescricao := 'Produtos'; AREC_SHE_DEF.GReferencia := 'Estoque'; AREC_SHE_DEF.GRegra := 'Permissões Gerais';
    AREC_SHE_DEF.GFB_FLD    := 'VISUALIZA';

    oUSER(AREC_SHE_DEF);
    ACTCAD_PRO_EST_ADM.Enabled := AREC_SHE_DEF.GView;

    { Entradas }
    AREC_SHE_DEF.GDescricao := 'Produtos'; AREC_SHE_DEF.GReferencia := 'Estoque'; AREC_SHE_DEF.GRegra := 'Permissões Gerais';
    AREC_SHE_DEF.GFB_FLD    := 'INCLUI';

    oUSER(AREC_SHE_DEF);
    ACTCAD_PRO_EST_LAN.Enabled := AREC_SHE_DEF.GView;

    { Etiquetas }
    AREC_SHE_DEF.GDescricao := 'Produtos'; AREC_SHE_DEF.GReferencia := 'Estoque'; AREC_SHE_DEF.GRegra := 'Permissões Gerais';
    AREC_SHE_DEF.GFB_FLD    := 'ALTERA';

    oUSER(AREC_SHE_DEF);
    ACTCAD_PRO_EST_ETQ.Enabled := AREC_SHE_DEF.GView;

    { Expedição }
    AREC_SHE_DEF.GDescricao := 'Produtos'; AREC_SHE_DEF.GReferencia := 'Expedição'; AREC_SHE_DEF.GRegra := 'Permissões Gerais';
    AREC_SHE_DEF.GFB_FLD    := 'INCLUI';

    oUSER(AREC_SHE_DEF);
    ACTCAD_PRO_EST_EXP_MAN.Enabled := AREC_SHE_DEF.GView;  { Manual  }
    ACTCAD_PRO_EST_EXP_COL.Enabled := AREC_SHE_DEF.GView;  { Coletor }
  finally
    oFREC_SHE_DEF(AREC_SHE_DEF);
  end;

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
    Repaint;
  end;
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
  if BLBUSER_LOG.Caption <> RECUsuarios.Nome then
     BLBUSER_LOG.Caption := RECUsuarios.Nome;
end;

procedure TFrmPrincipal.ACTSHE_DENIEDExecute(Sender: TObject);
begin
  raise exception.Create(PChar(ACTSHE_DENIED.Caption) + #13 +
                         PChar(ACTSHE_DENIED.Hint));
end;

procedure TFrmPrincipal.ACTSHE_PRN_EXEExecute(Sender: TObject);
begin
  if oEmpty(ACTSHE_PRN_EXE.Hint) then
            ACTSHE_PRN_EXE.Hint := 'Relatórios';

  try
    oExecPrinter(Handle,ACTSHE_PRN_EXE.Hint);
  finally
    ACTSHE_PRN_EXE.Hint := EmptyStr;
  end;

end;

procedure TFrmPrincipal.ACTSHE_PARExecute(Sender: TObject);
begin
  ACTSHE_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTSHE_BKPExecute(Sender: TObject);
begin
  ACTSHE_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTSaidaExecute(Sender: TObject);
begin
  if ATHR_ITEM = 0 THEN
  Close;
end;

procedure TFrmPrincipal._DoneEvent(Sender: TObject);
begin
  if   ATHR_ITEM > 1 then
  with Frmprincipal do
  begin
    PNLSyncEvent.Caption := EmptyStr;
    GFASyncEvent.Animate := False;

    PNLRodape.Height     := 25;
    PNLRodapeTOP.Height  := 0;

    Repaint;
  end;  
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  oDSiTrimWorkingSet;
end;

procedure TFrmPrincipal.ACTCAD_PRO_ADMExecute(Sender: TObject);
begin
//  TFrmCAD_PRO_ADM._ExecForm(Nil,FrmCAD_PRO_ADM,True);
end;

procedure TFrmPrincipal.ACTPED_VEN_ADMExecute(Sender: TObject);
begin
//  TFrmPED_PDV_ADM._ExecForm(Nil,FrmPED_PDV_ADM,True);
end;

end.



