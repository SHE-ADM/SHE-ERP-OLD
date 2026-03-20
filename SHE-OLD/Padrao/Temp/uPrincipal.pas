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
    BLBCAI_ABR_DIN: TdxBarLargeButton;
    BLBCAI_RAB: TdxBarLargeButton;
    BLBCAI_FEC: TdxBarLargeButton;
    BLBCAI_LSS: TdxBarLargeButton;
    BLBCAI_TSS: TdxBarLargeButton;
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
    PMREL_EST: TdxBarPopupMenu;
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
    SSIPCP_CAD_PRO_ADM: TdxStoredSideItem;
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
    SSIPCP_PED_PDV_ADM: TdxStoredSideItem;
    BLGCAD_PRO_TAM: TdxBarLargeButton;
    BLBNFE_PSQ: TdxBarLargeButton;
    BLBFIN_REC_CAR_ADM: TdxBarButton;
    BLBTAB_PAIS: TdxBarLargeButton;
    SSIPCP_CAD_PRO_EST_EXP_MAN: TdxStoredSideItem;
    SSIPCP_CAD_PRO_EST_EXP_COL: TdxStoredSideItem;
    SSIPCP_CAD_PRO_EST_ADM: TdxStoredSideItem;
    SSIPCP_CAD_PRO_EST_ETQ: TdxStoredSideItem;
    ACTPED_PDV_ADM: TAction;
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
    ACTComissoes: TAction;
    BLBComissoes: TdxBarLargeButton;
    BSIAdmin: TdxBarSubItem;
    ACTPED_PDC_ADM: TAction;
    ACTCAI_ABR_PAD: TAction;
    ACTCAI_ABR_DIN: TAction;
    ACTCAI_RAB: TAction;
    ACTCAI_FEC: TAction;
    ACTCAI_LSS: TAction;
    ACTCAI_TSS: TAction;
    ACTCAI_FLC: TAction;
    BLBCAI_ABR_PAD: TdxBarButton;
    ACTCAD_PRO_SCT: TAction;
    SSIPED_PDC_ADM: TdxStoredSideItem;
    SSIPED_PDV_ADM: TdxStoredSideItem;
    SSIPDC_CAD_PRO_ADM: TdxStoredSideItem;
    SSIPDC_CAD_PRO_EST_ADM: TdxStoredSideItem;
    SSIPDC_CAD_PRO_EST_ETQ: TdxStoredSideItem;
    SSIPDC_CAD_PRO_EST_EXP_MAN: TdxStoredSideItem;
    SSIPDC_CAD_PRO_EST_EXP_COL: TdxStoredSideItem;
    SSIPDC_CAD_PRO_SCT: TdxStoredSideItem;
    ACTFIS_NFE_ADM: TAction;
    ACTROM_PDV_ADM: TAction;
    SSIROM_PDV_ADM: TdxStoredSideItem;
    SSIFIS_NFE_ADM: TdxStoredSideItem;
    BLBPED_PDC_CLD: TdxBarLargeButton;
    ACTPED_PDC_CLD: TAction;
    ODExplorer: TOpenDialog;
    ACTREL_GER_EST_UCOM: TAction;
    ACTRelatorios: TAction;
    BBREL_GER_EST_UCOM: TdxBarButton;
    BBREL_EST: TdxBarButton;
    BBREL_EST_PDV: TdxBarButton;
    BBREL_EST_EFI: TdxBarButton;
    BBREL_EST_PRG: TdxBarButton;
    BBREL_EST_CPA: TdxBarButton;
    BBREL_EST_ESP: TdxBarButton;
    SSIFIN_PED_PDV_ADM: TdxStoredSideItem;
    SSIFIN_ROM_PDV_ADM: TdxStoredSideItem;
    SSIFIN_FIS_NFE_ADM: TdxStoredSideItem;

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
    procedure ACTCAD_PRO_ADMExecute(Sender: TObject);
    procedure ACTPED_PDV_ADMExecute(Sender: TObject);
    procedure ACTCAD_PRO_EST_ADMExecute(Sender: TObject);
    procedure ACTCAD_PRO_EST_LANExecute(Sender: TObject);
    procedure ACTCAD_PRO_EST_EXP_COLExecute(Sender: TObject);
    procedure ACTCAD_PRO_EST_EXP_MANExecute(Sender: TObject);
    procedure ACTCAD_PRO_EST_ETQExecute(Sender: TObject);
    procedure ACTComissoesExecute(Sender: TObject);
    procedure ACTPED_PDC_ADMExecute(Sender: TObject);
    procedure ACTCAI_ABR_PADExecute(Sender: TObject);
    procedure ACTCAI_ABR_DINExecute(Sender: TObject);
    procedure ACTCAI_RABExecute(Sender: TObject);
    procedure ACTCAI_FECExecute(Sender: TObject);
    procedure ACTCAI_LSSExecute(Sender: TObject);
    procedure ACTCAI_TSSExecute(Sender: TObject);
    procedure ACTCAI_FLCExecute(Sender: TObject);
    procedure ACTCAD_PRO_SCTExecute(Sender: TObject);
    procedure ACTFIS_NFE_ADMExecute(Sender: TObject);
    procedure ACTROM_PDV_ADMExecute(Sender: TObject);
    procedure ACTPED_PDC_CLDExecute(Sender: TObject);
    procedure ACTRelatoriosExecute(Sender: TObject);
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
  procedure uPSQ_CAD_PRO(var AREC_SHE_DEF: TREC_SHE_DEF); STDCALL;

  procedure uSP_CAD_PRO_EST_LAN_UPD (ATHR_TBPK: String;
                                     ATHR_IDEP,
                                     ATHR_IDPK: Variant;
                                     ATHR_DEPK,
                                     FIDPK: String); STDCALL;

{ TEMPORÁRIOS }

  procedure uPSQNF (var ARECPSQNF : TRECEdicao;ASQLConsulta: TIBSQL;AWinControl: TWinControl); STDCall;
  procedure uPSQPD (var ARECEdicao: TRECEdicao); STDCall;
  procedure uFrmCreate(AOwner: TComponent;AFClass: TFormClass; var AInstance); STDCall;
  procedure uPSQSCORE(ATForm: TForm;AIDCadastro,ADECadastro: Variant); STDCall;
  procedure uPSQCAD(var ARECPedido : TRECPedidos); STDCall; { Cadastros: Clientes, Fornecedores, Transportadoras, Compradores, Vendedores, Representantes e Agenda; }
  procedure uFKPesquisa(ATabela: String;AValue: Variant); STDCall;

  function  uPesquisa_Produto(AIDEP: Integer = 0;ADTXT: String = '';AFTXT: String = 'ARTIGO';AWHERE: String = '=';ALIKE1: String = '';ALIKE2: String = '';ADDT1: TDate = 0;ADDT2: TDate = 0;AFDT: String = ''): Integer; STDCall;
  function  uPSQNotaFiscal(ACDNF: Variant;Mostrar: Boolean = True): Boolean; STDCall;

  { FIM TEMPORÁRIOS }

var
  FrmPrincipal: TFrmPrincipal;
  ATrackMouseEvent: TTrackMouseEvent;

  ATHR_ITEM: LongInt;
  ATHR_SYNC: String;

  DATA_MEDIA    : TDate;
  ITENS_PEDIDO,
  ITENS_BANCARIO,
  ITENS_CARTEIRA: Integer;
  VALOR_PEDIDO,
  VALOR_SALDO,
  VALOR_BANCARIO,
  VALOR_CARTEIRA: Double;
  APSQ_PED_PRG,
  APSQ_PED_VEN,
  APSQ_ROM_CAB,
  APSQ_NFE: String;

implementation

uses bPrincipal  ,
     pLogin      , pSenha   , pSobre,
     pImpressoras, AJBarcode,

     pCAD_PRO_ADM, pSHE_DEF_PSQ, pent_pro, pCAD_PRO_PSQ,
  pPED_PDV_ADM, pEstoque, pEXP_SEP_COL, pEXP_SEP_MAN, peti_pro,
  pCAD_PRO_EDI, pcad_cli_inf, pPSQCAD, pctr_prc,
  pcai_abr, pcai_fec, pcai_sar, pcai_mov, pProduto_SubCategoria,
  pProduto_Pesquisa, pctr_nfe, pctr_rom, pRelatorios;

{$R *.dfm}

{ TEMPORÁRIO }
procedure uPSQNF (var ARECPSQNF : TRECEdicao;ASQLConsulta: TIBSQL;AWinControl: TWinControl); STDCall;
var
  lPoint: TPoint;
begin
  ARECPSQNF.Selected := False;
  lPoint := AWinControl.ClientToScreen(Point(0,0));

  if (ARECPSQNF.AValue = '0') or (ARECPSQNF.AValue = EmptyStr) then
  begin
    ARECPSQNF.ID   := '0';
    ARECPSQNF.IDCV := '0';
    ARECPSQNF.DECV := '0';
    ARECPSQNF.CDNF := '0';
    ARECPSQNF.DTNF := 0;
    ARECPSQNF.IDCD := '0';
    ARECPSQNF.DECD := EmptyStr;

    ARECPSQNF.Selected := True;
  end;

  if (ARECPSQNF.AValue <> '0') and (ARECPSQNF.AValue <> EmptyStr) and (ARECPSQNF.AFIELD <> EmptyStr) then
  begin
    oOTransact(ASQLConsulta.Transaction);
    with ASQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM SP_NFE_CAB_PSQ (');
      SQL.Add(''''+ARECPSQNF.IDEP    +''',');
      SQL.Add(''''+ARECPSQNF.AValue  +''',');
      SQL.Add(''''+ARECPSQNF.FKAValue+''')');
      ExecQuery;

      if Eof then
         oException(AWinControl,'Nota Fiscal não Encontrada !');

      if oLast(ASQLConsulta) = 1 then
      begin
        ARECPSQNF.ID   := IntToStr(ASQLConsulta.Current.ByName('rID').AsInteger);

        ARECPSQNF.IDCD := IntToStr(ASQLConsulta.Current.ByName('rIDFV').AsInteger);
        ARECPSQNF.DECD := ASQLConsulta.Current.ByName('rDEFV').AsString;

        ARECPSQNF.IDCV := IntToStr(ASQLConsulta.Current.ByName('rIDCV').AsInteger);
        ARECPSQNF.DECV := ASQLConsulta.Current.ByName('rDECV').AsString;

        ARECPSQNF.IDCR := IntToStr(ASQLConsulta.Current.ByName('rIDCR').AsInteger);
        ARECPSQNF.DECR := ASQLConsulta.Current.ByName('rDECR').AsString;

        ARECPSQNF.CDNF := IntToStr(ASQLConsulta.Current.ByName('rCDNF').AsInteger);
        ARECPSQNF.DTNF := ASQLConsulta.Current.ByName('rDTNF').AsDateTime;

        ARECPSQNF.Selected := True;
      end;
    end;
  end;
end;

procedure uPSQPD(var ARECEdicao: TRECEdicao); STDCall;
begin
  if ARECEdicao.AWinControl <> Nil then
     if ARECEdicao.AWinControl.ClassType = TdxEdit then
     begin
       ARECEdicao.AValue := TdxEdit(ARECEdicao.AWinControl).Text;
       ARECEdicao.AField := TdxEdit(ARECEdicao.AWinControl).HelpKeyword;
     end else
     if ARECEdicao.AWinControl.ClassType = TdxMaskEdit then
     begin
       ARECEdicao.AValue := TdxMaskEdit(ARECEdicao.AWinControl).Text;
       ARECEdicao.AField := TdxMaskEdit(ARECEdicao.AWinControl).HelpKeyword;
     end else
     if ARECEdicao.AWinControl.ClassType = TdxCurrencyEdit then
     begin
       ARECEdicao.AValue := TdxCurrencyEdit(ARECEdicao.AWinControl).Text;
       ARECEdicao.AField := TdxCurrencyEdit(ARECEdicao.AWinControl).HelpKeyword;
     end else
     if ARECEdicao.AWinControl.ClassType = TdxButtonEdit then
     begin
       ARECEdicao.AValue := TdxButtonEdit(ARECEdicao.AWinControl).Text;
       ARECEdicao.AField := TdxButtonEdit(ARECEdicao.AWinControl).HelpKeyword;
     end else
     if ARECEdicao.AWinControl.ClassType = TdxImageEdit then
     begin
       ARECEdicao.AValue := TdxImageEdit(ARECEdicao.AWinControl).Text;
       ARECEdicao.AField := TdxImageEdit(ARECEdicao.AWinControl).HelpKeyword;
     end else
     if ARECEdicao.AWinControl.ClassType = TdxPickEdit then
     begin
       ARECEdicao.AValue := TdxPickEdit(ARECEdicao.AWinControl).Text;
       ARECEdicao.AField := TdxPickEdit(ARECEdicao.AWinControl).HelpKeyword;
     end else
     if ARECEdicao.AWinControl.ClassType = TdxDBGridMaskColumn then
     begin
       ARECEdicao.AValue := TdxDBGridMaskColumn(ARECEdicao.AWinControl).Field.AsString;
       ARECEdicao.AField := TdxDBGridMaskColumn(ARECEdicao.AWinControl).FieldName;
     end;

  { DEU RUIM! }
  ARECEdicao.Selected := False;

  if (ARECEdicao.AValue = '0') or (ARECEdicao.AValue = EmptyStr) then
  begin
    ARECEdicao.IDPK := '0';
    ARECEdicao.DTPK :=  0 ;
    ARECEdicao.CDPK := '0';
    ARECEdicao.DEFK := EmptyStr;

    ARECEdicao.IDCD := '0';
    ARECEdicao.DECD := EmptyStr;
    ARECEdicao.IDCV := '0';
    ARECEdicao.DECV := EmptyStr;
    ARECEdicao.IDCC := '0';
    ARECEdicao.DECC := EmptyStr;
    ARECEdicao.IDCR := '0';
    ARECEdicao.DECR := EmptyStr;

    ARECEdicao.Selected := True;
  end else
  if   ARECEdicao.AFIELD <> EmptyStr then
  with ARECEdicao.AQConsulta do
  begin
    Close;
    SQL.Clear;

    SQL.Add('SELECT PK.ID  ,PK.IDEP,EP.FANTASIA AS DEEP,');
    SQL.Add('       PK.IDCA,PK.DTCA,PK.CDST,PK.REST,PK.DEST,');
    SQL.Add('       PK.IDPK,CAST(PK.DTCA AS DATE) AS DTPK,LG_PK.LOGIN AS LGPK,PK.CDPK,PK.DEPK,');
    SQL.Add('       PK.IDCD,CD.FANTASIA  AS DECD,PK.IDCR ,CR.REP_FANT AS DECR');
    SQL.Add('FROM ' + oREPZero(ARECEdicao.TBPK,'_',RECParametros.Id,3) + ' AS PK');

    if ARECEdicao.TPPK = 1 then { Compras }
    SQL.Add('JOIN  CAD_FOR     AS CD    ON (CD.ID    = PK.IDCD)');
    SQL.Add('JOIN  TAB_PAR_SIS AS EP    ON (EP.ID    = PK.IDEP)');
    SQL.Add('JOIN  CAD_REP     AS CR    ON (CR.ID    = PK.IDCR)');
    SQL.Add('JOIN  TAB_USER    AS LG_PK ON (LG_PK.ID = PK.IDPK)');

    SQL.Add('WHERE PK.IDEP = ''' + ARECEdicao.IDEP + '''');
    SQL.Add('AND ' + ARECEdicao.AField + ' = ''' + ARECEdicao.AValue + '''');
    Open;

    if Eof then
       oException(ARECEdicao.AWinControl,'Pedido não Encontrado !');

    ARECEdicao.IDPK := FieldByName('IDPK').AsString;
    ARECEdicao.DTPK := FieldByName('DTPK').AsDateTime;
    ARECEdicao.CDPK := FieldByName('CDPK').AsString;
    ARECEdicao.DEPK := FieldByName('DEPK').AsString;

    ARECEdicao.IDCD := FieldByName('IDCD').AsString;
    ARECEdicao.DECD := FieldByName('DECD').AsString;

    ARECEdicao.Selected := True;
  end;
end;

procedure uFrmCreate(AOwner: TComponent;AFClass: TFormClass; var AInstance); STDCall;
begin
  with FrmPrincipal do
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

procedure uPSQSCORE(ATForm: TForm;AIDCadastro,ADECadastro: Variant); STDCall;
begin
  if Assigned(frmcad_cli_inf) then
  begin
    frmcad_cli_inf._Pedidos(AIDCadastro,ADECadastro);
    frmcad_cli_inf.BringToFront;
    frmcad_cli_inf.SetFocus;
  end else
  begin
    frmcad_cli_inf := Tfrmcad_cli_inf.Create(Nil,RECParametros.ID,
                                                 AIDCadastro,
                                                 0,
                                                 0,
                                                 ADECadastro,
                                                 EmptyStr);
    frmcad_cli_inf.Show;
  end;
end;

function uPSQNotaFiscal(ACDNF: Variant;Mostrar: Boolean = True): Boolean; STDCall;
var
  i: Word;
begin
  result := True;
  if ACDNF = 0 then
  begin
    oErro(Application.Handle,'Número não informado ou incorreto !');
    result := False;
    Abort;
  end;  

  try
    oRTransact(Fbird.TFBConsulta);
    with FBird.SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
      for i := 1 to 9 do
      begin
        SQL.Add('SELECT NFE_CDNF,NFE_DEMI,NFE_DFAV,NFE_DTRA,NFE_DVEN,NFE_DREP,EP.FANTASIA');
        SQL.Add('FROM   TAB_PAR_SIS AS EP,'+oREPZero('nfe_cab','_',i,3)+ ' "NFE_CAB"');
        SQL.Add('WHERE  EP.ID     = '''+IntToStr(i)+'''');
        SQL.Add('AND    EP.CNPJ   = '''+RECParametros.CNPJ+'''');
        SQL.Add('AND    NFE_CAB.NFE_CDNF   = '''+ACDNF             +'''');
        SQL.Add('AND    NFE_CAB.NFE_FINNFE < 5');
        SQL.Add('AND    CHAR_LENGTH(NFE_CAB.NFE_CHAV) = 44');
        if i < 9 then
        SQL.Add('UNION');
      end;
      ExecQuery;

      if Current.Vars[0].AsInteger > 0 then
      begin
        result := False;
        if Mostrar then
           oErro(Application.Handle,'Número de Nota Fiscal já Emitida !' + #13 + #13  +
                                    'Empresa: '            + Current.Vars[6].AsString + #13 +
                                    'Favorecido: '         + Current.Vars[2].AsString + IFThen((Current.Vars[4].AsString <> '') and (Current.Vars[5].AsString <> ''),#13 +
                                    'Vendedores: '         + Current.Vars[4].AsString + ' / ' + Current.Vars[5].AsString,'') + #13 + #13+
                                    'Emitido em: '         + FormatDateTime('dd/mm/yy hh:mm', Current.Vars[1].AsDateTime )   + #13 +
                                    'Frete por conta de: ' + Current.Vars[3].AsString);
      end;
    end;  
  finally
    oCTransact(FBird.TFBConsulta);
  end;
end;

function uPesquisa_Produto(AIDEP: Integer = 0;ADTXT: String = '';AFTXT: String = 'ARTIGO';AWHERE: String = '=';ALIKE1: String = '';ALIKE2: String = '';ADDT1: TDate = 0;ADDT2: TDate = 0;AFDT: String = ''): Integer; STDCall;
begin
  { ATipo
    0 - Apenas Atacado
    1 - Atacado
    2 - Atacarejo
    3 - Compras
  }
  with FrmPrincipal,FBird do
  try
    with FBCAD_PRO do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM SP_CAD_PRO_PSQ');
      SQL.Add('(');

      SQL.Add(''''+IntToStr(AIDEP)+''',');
      SQL.Add(''''+ADTXT +''',');
      SQL.Add(''''+AFTXT +''',');
      SQL.Add('NULL,');
      SQL.Add('NULL,');
      SQL.Add(''''+AWHERE+''',');
      SQL.Add(''''+ALIKE1+''',');
      SQL.Add(''''+ALIKE2+''',');
      SQL.Add(''''+AFDT  +''',');
      SQL.Add(''''+FormatDateTime('mm/dd/yy',ADDT1)+''',');
      SQL.Add(''''+FormatDateTime('mm/dd/yy',ADDT2)+''',');
      SQL.Add('''ARTIGO,DGCP''');
      SQL.Add(')');
      Open;
    end;
  finally
    result := 0;
    if FBCAD_PRO.State = dsBrowse then
    begin
      FBCAD_PRO.Last;
      result := FBCAD_PROId.AsInteger;
      if FBCAD_PRO.RecNo > 1 then
      try
        FrmProduto_Pesquisa := TFrmProduto_Pesquisa.Create(Nil);
        FrmProduto_Pesquisa.DBGConsulta.FocusedAbsoluteIndex := IFThen((Pos('NCM',AFTXT) > 0) or (oEmpty(FBCAD_PRODGCP.AsString)),FrmProduto_Pesquisa.DBGConsultaDECP.Index,FrmProduto_Pesquisa.DBGConsultaDGCP.Index);
        FrmProduto_Pesquisa.ShowModal;
      finally
        result := IFThen(FrmProduto_Pesquisa.Editado,FBCAD_PROId.AsInteger,0);
        FreeAndNil(FrmProduto_Pesquisa);
      end;
    end;
  end;
end;

procedure uPSQCAD(var ARECPedido: TRECPedidos); STDCall;
begin
  ARECPedido.Selected := False;
  ARECPedido.VWCD     := 'VW_CAD_' +
                           IFThen(ARECPedido.CDCD = 0,'CLI',
                           IFThen(ARECPedido.CDCD = 1,'FOR',
                           IFThen(ARECPedido.CDCD = 2,'REP',
                           IFThen(ARECPedido.CDCD = 3,'TRA'))));

  ARECPedido.AException := IFThen(ARECPedido.CDCD = 0,'Cliente',
                           IFThen(ARECPedido.CDCD = 1,'Fornecedor',
                           IFThen(ARECPedido.CDCD = 2,'Representante',
                           IFThen(ARECPedido.CDCD = 3,'Transportadora')))) + ' não Encontrado !';

  if ARECPedido.AWinControl <> Nil then
  begin
    ARECPedido.APoint := ARECPedido.AWinControl.ClientToScreen(Point(0,0));

    if ARECPedido.AWinControl.ClassType = TdxEdit then
    begin
      ARECPedido.Value := TdxEdit(ARECPedido.AWinControl).Text;
      ARECPedido.Field := TdxEdit(ARECPedido.AWinControl).HelpKeyword;
    end else
    if ARECPedido.AWinControl.ClassType = TdxMaskEdit then
    begin
      ARECPedido.Value := TdxMaskEdit(ARECPedido.AWinControl).Text;
      ARECPedido.Field := TdxMaskEdit(ARECPedido.AWinControl).HelpKeyword;
    end else
    if ARECPedido.AWinControl.ClassType = TdxCurrencyEdit then
    begin
      ARECPedido.Value := TdxCurrencyEdit(ARECPedido.AWinControl).Text;
      ARECPedido.Field := TdxCurrencyEdit(ARECPedido.AWinControl).HelpKeyword;
    end else
    if ARECPedido.AWinControl.ClassType = TdxButtonEdit then
    begin
      ARECPedido.Value := TdxButtonEdit(ARECPedido.AWinControl).Text;
      ARECPedido.Field := TdxButtonEdit(ARECPedido.AWinControl).HelpKeyword;
    end else
    if ARECPedido.AWinControl.ClassType = TdxDBGridMaskColumn then
    begin
      ARECPedido.Value := TdxDBGridMaskColumn(ARECPedido.AWinControl).Field.AsString;
      ARECPedido.Field := TdxDBGridMaskColumn(ARECPedido.AWinControl).FieldName;
    end;
  end;

  if (ARECPedido.VALUE <> EmptyStr) and (ARECPedido.FIELD <> EmptyStr) then
      with ARECPedido.AQConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.IDCD,PK.CDCD,PK.DECD,PK.RZCD,PK.GPCD,');

        { CAD_CLI_CRD }
        SQL.Add('COALESCE(FK.IDEP    ,0) AS FIN_IDEP    ,COALESCE(FK.VCRD        ,0) AS FIN_VCRD        ,COALESCE(FK.CSCD        ,0   ) AS FIN_CSPD,');
        SQL.Add('COALESCE(FK.PDSC    ,0) AS FIN_PDSC    ,COALESCE(FK.VDSC        ,0) AS FIN_VDSC        ,NULLIF(FK.INFADCAD_L1   ,'''') AS FIN_INFADCAD_L1 ,NULLIF(FK.INFADCAD_L2    ,'''') AS FIN_INFADCAD_L2,');
        SQL.Add('COALESCE(FK.PDSC_001,0) AS FIN_PDSC_001,COALESCE(FK.VDSC_INI_001,0) AS FIN_VDSC_INI_001,COALESCE(FK.VDSC_FIM_001,0   ) AS FIN_VDSC_FIM_001,NULLIF(FK.INFADCAD_L1_001,'''') AS FIN_INFADCAD_L1_001,NULLIF(FK.INFADCAD_L2_001,'''') AS FIN_INFADCAD_L2_001,');
        SQL.Add('COALESCE(FK.PDSC_002,0) AS FIN_PDSC_002,COALESCE(FK.VDSC_INI_002,0) AS FIN_VDSC_INI_002,COALESCE(FK.VDSC_FIM_002,0   ) AS FIN_VDSC_FIM_002,NULLIF(FK.INFADCAD_L1_002,'''') AS FIN_INFADCAD_L1_002,NULLIF(FK.INFADCAD_L2_002,'''') AS FIN_INFADCAD_L2_002,');
        SQL.Add('COALESCE(FK.PDSC_003,0) AS FIN_PDSC_003,COALESCE(FK.VDSC_INI_003,0) AS FIN_VDSC_INI_003,COALESCE(FK.VDSC_FIM_003,0   ) AS FIN_VDSC_FIM_003,NULLIF(FK.INFADCAD_L1_003,'''') AS FIN_INFADCAD_L1_003,NULLIF(FK.INFADCAD_L2_003,'''') AS FIN_INFADCAD_L2_003,');

        SQL.Add('PK.DTCA,PK.DTFU,PK.DTPC,PK.DTPP,PK.DTPV,');
        SQL.Add('PK.CDST,PK.REST,PK.DEST  ,');
        SQL.Add('PK.CNPJ,PK.FIS_CRT,PK.FIS_CREDICMS,');
        SQL.Add('PK.IE  ,PK.FIS_INDIEDEST,PK.FIS_INDFINAL,');
        SQL.Add('PK.ISUF,PK.IM,');
        SQL.Add('PK.CPF ,PK.IDESTRANGEIRO,');
        SQL.Add('PK.IDCV,PK.DECV,PK.IDCR,PK.DECR,PK.IDCC,PK.DECC,');
        SQL.Add('PK.CDPD,PK.CDCO,PK.CDPG,PK.DEPG,');
        SQL.Add('PK.IDCT,PK.DECT,PK.MFRT,');
        SQL.Add('PK.CONTATO,PK.DDD,PK.TEL,PK.EMAIL,PK.ENVEMAIL,PK.D_FONE,PK.D_CONTATO,PK.D_CONTATO2,PK.D_CONTATO3,PK.D_CEL_CONTATO,PK.D_CEL_CONTATO2,PK.D_ZAP_CONTATO,');
        SQL.Add('PK.LOG_NU ,PK.TLO_TX,PK.LOG_NO,PK.NRO,PK.XCPL,PK.CEP,PK.BAI_NO,PK.LOC_NO,PK.CMUN,ZFM_CMUN,ZFM_CENQ,PK.UF,PK.CPAIS,PK.XPAIS,PK.D_LOG,');
        SQL.Add('PK.ENT_LOG_NU,PK.ENT_TLO_TX,PK.ENT_LOG_NO,PK.ENT_NRO,PK.ENT_XCPL,PK.ENT_CEP,PK.ENT_BAI_NO,PK.ENT_LOC_NO,PK.ENT_CMUN,PK.ENT_UF,');
        SQL.Add('PK.INFADCAD,PK.INFADFIN');

        SQL.Add('FROM ' + ARECPedido.VWCD + ' AS PK');
        SQL.Add('LEFT JOIN CAD_CLI_CRD AS FK ON (FK.IDCD = PK.IDCD AND FK.IDEP = '''+IFThen(ARECPedido.CDCD = 0,RECParametros.Id,'99')+''')');

        SQL.Add('WHERE ' + ARECPedido.FIELD + ' ' + IFThen(Pos('ID',ARECPedido.FIELD) > 0,'=','CONTAINING')+' '''+ARECPedido.VALUE+'''');
        SQL.Add('ORDER BY PK.DECD,PK.REST');
        
        Open;
        Last;

        if Current.Vars[0].AsInteger = 0 then
           if ARECPedido.AWinControl.ClassType = TdxDBGridMaskColumn then oException(Nil,ARECPedido.AException) else
              if ARECPedido.AWinControl.Showing then oException(ARECPedido.AWinControl  ,ARECPedido.AException) else
                                                     oErro     (Application.Handle      ,ARECPedido.AException);

        if RecNo = 1 then
        begin
          ARECPedido.Selected := True;

          { Destinatário }
          ARECPedido.IDCD := IntToStr(Current.ByName('IDCD').AsInteger);
          ARECPedido.DECD := StringReplace(oREPApostrofos(Current.ByName('DECD').AsString),Char(39),'',[rfReplaceAll]);
          ARECPedido.RZCD := StringReplace(oREPApostrofos(Current.ByName('RZCD').AsString),Char(39),'',[rfReplaceAll]);

          { Cadastro }
          ARECPedido.CONTATO := Current.ByName('CONTATO').AsString;
          ARECPedido.DDD     := Current.ByName('DDD'    ).AsString;
          ARECPedido.TEL     := Current.ByName('TEL'    ).AsString;
          ARECPedido.D_FONE  := Current.ByName('D_FONE' ).AsString;

          ARECPedido.EMAIL    :=  Current.ByName('EMAIL'   ).AsString;
          ARECPedido.ENVEMAIL := (Current.ByName('ENVEMAIL').AsInteger = 1);

          ARECPedido.CNPJ          := Current.ByName('CNPJ'         ).AsString;
          ARECPedido.IE            := Current.ByName('IE'           ).AsString;
          ARECPedido.ISUF          := Current.ByName('ISUF'         ).AsString;
          ARECPedido.IM            := Current.ByName('IM'           ).AsString;
          ARECPedido.CPF           := Current.ByName('CPF'          ).AsString;
          ARECPedido.IDESTRANGEIRO := Current.ByName('IDESTRANGEIRO').AsString;

          { Endereço Comercial }
          ARECPedido.LOG_NU   :=  Current.ByName('LOG_NU'  ).AsString;
          ARECPedido.TLO_TX   :=  Current.ByName('TLO_TX'  ).AsString;
          ARECPedido.LOG_NO   :=  Current.ByName('LOG_NO'  ).AsString;
          ARECPedido.NRO      :=  Current.ByName('NRO'     ).AsString;
          ARECPedido.XCPL     :=  Current.ByName('XCPL'    ).AsString;
          ARECPedido.CEP      :=  Current.ByName('CEP'     ).AsString;
          ARECPedido.BAI_NO   :=  Current.ByName('BAI_NO'  ).AsString;
          ARECPedido.LOC_NO   :=  Current.ByName('LOC_NO'  ).AsString;
          ARECPedido.CMUN     :=  Current.ByName('CMUN'    ).AsString;
          ARECPedido.ZFM_CMUN := (Current.ByName('ZFM_CMUN').AsInteger > 0);
          ARECPedido.ZFM_CENQ :=  Current.ByName('ZFM_CENQ').AsString;
          ARECPedido.UF       :=  Current.ByName('UF'      ).AsString;

          { Zona Franca }
          if oEmpty(ARECPedido.ISUF) then
             ARECPedido.ZFM_CMUN := False;

          if not ARECPedido.ZFM_CMUN then
             ARECPedido.ZFM_CENQ := EmptyStr;

          ARECPedido.CPAIS := IntToStr(Current.ByName('CPAIS').AsInteger);
          ARECPedido.XPAIS :=          Current.ByName('XPAIS').AsString;

          { Endereço Entrega }
          ARECPedido.ENT_LOG_NU :=  Current.ByName('ENT_LOG_NU').AsString;
          ARECPedido.ENT_TLO_TX :=  Current.ByName('ENT_TLO_TX').AsString;
          ARECPedido.ENT_LOG_NO :=  Current.ByName('ENT_LOG_NO').AsString;
          ARECPedido.ENT_NRO    :=  Current.ByName('ENT_NRO'   ).AsString;
          ARECPedido.ENT_XCPL   :=  Current.ByName('ENT_XCPL'  ).AsString;
          ARECPedido.ENT_CEP    :=  Current.ByName('ENT_CEP'   ).AsString;
          ARECPedido.ENT_BAI_NO :=  Current.ByName('ENT_BAI_NO').AsString;
          ARECPedido.ENT_LOC_NO :=  Current.ByName('ENT_LOC_NO').AsString;
          ARECPedido.ENT_CMUN   :=  Current.ByName('ENT_CMUN'  ).AsString;
          ARECPedido.ENT_UF     :=  Current.ByName('ENT_UF'    ).AsString;

          { Vendedor / Representante }
          ARECPedido.IDCV := Current.ByName('IDCV').AsString;
          ARECPedido.DECV := Current.ByName('DECV').AsString;
          ARECPedido.IDCR := Current.ByName('IDCR').AsString;
          ARECPedido.DECR := Current.ByName('DECR').AsString;

          { Transportadora / Frete }
          ARECPedido.IDCT := Current.ByName('IDCT').AsString;
          ARECPedido.DECT := Current.ByName('DECT').AsString;
          ARECPedido.MFRT := Current.ByName('MFRT').AsString;

          { Financeiro }
          ARECPedido.FIN_IDEP :=  Current.ByName('FIN_IDEP').AsString;
          ARECPedido.FIN_VCRD :=  Current.ByName('FIN_VCRD').AsFloat;
          ARECPedido.FIN_CSPD := (Current.ByName('FIN_CSPD').AsInteger = 1);

          { Desconto Geral }
          ARECPedido.FIN_PDSC        := Current.ByName('FIN_PDSC').AsFloat;
          ARECPedido.FIN_VDSC        := Current.ByName('FIN_VDSC').AsFloat;
          ARECPedido.FIN_INFADCAD_L1 := Current.ByName('FIN_INFADCAD_L1').AsString;
          ARECPedido.FIN_INFADCAD_L2 := Current.ByName('FIN_INFADCAD_L2').AsString;

          { Desconto Especial }
          ARECPedido.FIN_PDSC_001        := Current.ByName('FIN_PDSC_001').AsFloat;
          ARECPedido.FIN_VDSC_INI_001    := Current.ByName('FIN_VDSC_INI_001').AsFloat;
          ARECPedido.FIN_VDSC_FIM_001    := Current.ByName('FIN_VDSC_FIM_001').AsFloat;
          ARECPedido.FIN_INFADCAD_L1_001 := Current.ByName('FIN_INFADCAD_L1_001').AsString;
          ARECPedido.FIN_INFADCAD_L2_001 := Current.ByName('FIN_INFADCAD_L2_001').AsString;

          ARECPedido.FIN_PDSC_002        := Current.ByName('FIN_PDSC_002').AsFloat;
          ARECPedido.FIN_VDSC_INI_002    := Current.ByName('FIN_VDSC_INI_002').AsFloat;
          ARECPedido.FIN_VDSC_FIM_002    := Current.ByName('FIN_VDSC_FIM_002').AsFloat;
          ARECPedido.FIN_INFADCAD_L1_002 := Current.ByName('FIN_INFADCAD_L1_002').AsString;
          ARECPedido.FIN_INFADCAD_L2_002 := Current.ByName('FIN_INFADCAD_L2_002').AsString;

          ARECPedido.FIN_PDSC_003        := Current.ByName('FIN_PDSC_003').AsFloat;
          ARECPedido.FIN_VDSC_INI_003    := Current.ByName('FIN_VDSC_INI_003').AsFloat;
          ARECPedido.FIN_VDSC_FIM_003    := Current.ByName('FIN_VDSC_FIM_003').AsFloat;
          ARECPedido.FIN_INFADCAD_L1_003 := Current.ByName('FIN_INFADCAD_L1_003').AsString;
          ARECPedido.FIN_INFADCAD_L2_003 := Current.ByName('FIN_INFADCAD_L2_003').AsString;

          { Prazos }
          ARECPedido.CDPG := IntToStr(Current.ByName('CDPG').AsInteger); { Código }
          ARECPedido.DEPG := Current.ByName('DEPG').AsString;            { Descrição }

          { Fiscal }
          ARECPedido.FIS_INDIEDEST  := Current.ByName('FIS_INDIEDEST').AsString;
          ARECPedido.FIS_INDFINAL   := Current.ByName('FIS_INDFINAL' ).AsString;
          ARECPedido.FIS_CRT        := Current.ByName('FIS_CRT'      ).AsString;
          ARECPedido.FIS_CREDICMS   := Current.ByName('FIS_CREDICMS' ).AsString;

          { Status }
          ARECPedido.RSCD := Current.ByName('REST').AsString;

          { Informações Adicionais }
          ARECPedido.INFADCAD := Current.ByName('INFADCAD').AsString;
          ARECPedido.INFADCPL := Current.ByName('INFADFIN').AsString;
        end else
        if RecNo > 1 then
           try
             TFrmPSQCAD._ExecForm(Nil,FrmPSQCAD,fsStayOnTop,-3,'Consulta',ARECPedido.CDCD,ARECPedido.FIELD+' '+IFThen(Pos('ID',ARECPedido.FIELD) > 0,'=','CONTAINING')+' '''+ARECPedido.VALUE+'''');
              FrmPSQCAD.RECDefault.Top  := ARECPedido.APoint.Y + ARECPedido.AWinControl.Height;
              FrmPSQCAD.RECDefault.Left := ARECPedido.APoint.X;
              FrmPSQCAD.Consulta.SQL.Clear;
              FrmPSQCAD.Consulta.SQL.Assign(ARECPedido.AQConsulta.SQL);
              FrmPSQCAD.ShowModal;
           finally
             if FrmPSQCAD.RECDefault.Selected then
             begin
               ARECPedido.AWinControl := Nil;
               ARECPedido.Value := IntToStr(FrmPSQCAD.ConsultaIDCD.AsInteger);
               ARECPedido.Field := 'PK.IDCD';

               uPSQCAD(ARECPedido);
             end;
           end;
      end;

  if ARECPedido.AWinControl <> Nil then
  begin
    if not ARECPedido.Selected then
    begin
      if ARECPedido.AWinControl.ClassType = TdxEdit then
         TdxEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxMaskEdit then
         TdxMaskEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxCurrencyEdit then
         TdxCurrencyEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxButtonEdit then
         TdxButtonEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxMemo then
         TdxMemo(ARECPedido.AWinControl).Reset;

      if (ARECPedido.AWinControl.Showing) and (ARECPedido.AWinControl.Enabled) then
          TWinControl(ARECPedido.AWinControl).SetFocus;
    end;

    ARECPedido.AWinControl := Nil;
  end;

  if ARECPedido.AQConsulta <> Nil then
  begin
    ARECPedido.AQConsulta.Close;
    ARECPedido.AQConsulta := Nil;
  end;
end;

procedure uFKPesquisa(ATabela: String;AValue: Variant); STDCall;
begin
  ATabela := UpperCase(ATabela);
  if ((not oEmpty(ATabela)) and (not oEmpty(AValue)) and (AValue <> '0')) then
  with FrmPrincipal,FBird do
  try
    oOTransact(TFBConsulta);
    with SQLFBConsulta do
    begin
      Close;
      SQL.Clear;

      if (ATabela = 'TAB_CAT') or (ATabela = 'TAB_SCT') then
         SQL.Add('SELECT PRO_CPRO,PRO_DPRO FROM CAD_PRO WHERE IDSCT = '''+AValue+'''');

      Prepare;
      ExecQuery;

      if not Eof then
         oException(Nil,'Acesso Negado !'+#13+
                        'Sub Categoria registrada no cadastro de produtos.'+#13+#13+
                         Current.Vars[0].AsString+#13+
                         Current.Vars[1].AsString);

    end
  finally
    oCTransact(TFBConsulta);
  end;
end;

{ FIM TEMPORÁRIOS }

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

procedure uPSQ_CAD_PRO(var AREC_SHE_DEF: TREC_SHE_DEF); STDCALL;
begin
  AREC_SHE_DEF.PSQ_OK := False;

  if AREC_SHE_DEF.FWinControl <> Nil then
  begin
    AREC_SHE_DEF.PSQ_FB_FD := EmptyStr;
    AREC_SHE_DEF.PSQ_FB_VD := EmptyStr;
    AREC_SHE_DEF.FPoint    := AREC_SHE_DEF.FWinControl.ClientToScreen(Point(0,0));

    if AREC_SHE_DEF.FWinControl.ClassType = TdxEdit then
    begin
      AREC_SHE_DEF.PSQ_FB_FD := TdxEdit(AREC_SHE_DEF.FWinControl).HelpKeyword;
      AREC_SHE_DEF.PSQ_FB_VD := TdxEdit(AREC_SHE_DEF.FWinControl).Text;
    end else

    if AREC_SHE_DEF.FWinControl.ClassType = TdxMaskEdit then
    begin
      AREC_SHE_DEF.PSQ_FB_FD := TdxMaskEdit(AREC_SHE_DEF.FWinControl).HelpKeyword;
      AREC_SHE_DEF.PSQ_FB_VD := TdxMaskEdit(AREC_SHE_DEF.FWinControl).Text;
    end else

    if AREC_SHE_DEF.FWinControl.ClassType = TdxCurrencyEdit then
    begin
      AREC_SHE_DEF.PSQ_FB_FD := TdxCurrencyEdit(AREC_SHE_DEF.FWinControl).HelpKeyword;
      AREC_SHE_DEF.PSQ_FB_VD := TdxCurrencyEdit(AREC_SHE_DEF.FWinControl).Text;
    end else

    if AREC_SHE_DEF.FWinControl.ClassType = TdxButtonEdit then
    begin
      AREC_SHE_DEF.PSQ_FB_FD := TdxButtonEdit(AREC_SHE_DEF.FWinControl).HelpKeyword;
      AREC_SHE_DEF.PSQ_FB_VD := TdxButtonEdit(AREC_SHE_DEF.FWinControl).Text;
    end else

    if AREC_SHE_DEF.FWinControl.ClassType = TdxDBGridMaskColumn then
    begin
      AREC_SHE_DEF.PSQ_FB_FD := TdxDBGridMaskColumn(AREC_SHE_DEF.FWinControl).FieldName;
      AREC_SHE_DEF.PSQ_FB_VD := TdxDBGridMaskColumn(AREC_SHE_DEF.FWinControl).Field.AsString;
    end;
  end;

  if  (AREC_SHE_DEF.PSQ_FB_VD <> EmptyStr) and (AREC_SHE_DEF.PSQ_FB_FD <> EmptyStr) then
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
      Close;
      SQL.Clear;
      SQL.Add('SELECT     DISTINCT');
      SQL.Add('           PK.ID,PK.CP_IDEP,PK.CP_DEEP,');

      SQL.Add('           PK.IDCA,PK.DTCA,');
      SQL.Add('           PK.IDED,PK.DTED,');
      SQL.Add('           PK.IDEV,PK.DTEV,');
      SQL.Add('           PK.IDST,PK.DTST,PK.CDST,PK.REST,PK.DEST,');

      SQL.Add('           PK.IDCP  ,PK.IDAK,PK.IDGK,PK.IDEK,PK.IDSK,');
      SQL.Add('           PK.ARTIGO,PK.SKU ,PK.CEAN,                ');
      SQL.Add('           PK.NCM   ,PK.CEST,PK.PIPI,PK.EXTIPI,      ');
      SQL.Add('           PK.DECP  ,PK.DCCP,PK.DGCP,PK.GRD_SG,      ');

      SQL.Add('           PK.IDCF,PK.DECF,PK.CF_SKU,PK.CF_CEAN,');

      SQL.Add('           PK.UCOM,PK.UTRIB,');
      SQL.Add('           PK.UCON,         ');
      SQL.Add('           PK.UCDBE,PK.UQTDE,PK.UQTDE_VEN_MIN,PK.UQTDE_VEN_MUL,');
      SQL.Add('           PK.LJV_UCOM,PK.LJV_UCON,PK.LJV_UQTDE,               ');

      SQL.Add('           PK.UPSBR,PK.UPSLQ ,PK.UPSCN,          ');
      SQL.Add('           PK.MPESO,PK.MMETRO,PK.MGRAMA,PK.MREND,');

      SQL.Add('           PK.VPRC_PAD,PK.VPRC_PRZ,PK.VPRC_PRO,            ');
      SQL.Add('           PK.LJV_VPRC_PAD,PK.LJV_VPRC_PRZ,PK.LJV_VPRC_PRO,');
      SQL.Add('           PK.ATJ_VPRC_PAD,PK.ATJ_VPRC_PRZ,PK.ATJ_VPRC_PRO,');
      SQL.Add('           PK.REP_VPRC_PAD,PK.REP_VPRC_PRZ,PK.REP_VPRC_PRO,');
      SQL.Add('           PK.VAR_VPRC_PAD,PK.VAR_VPRC_PRZ,PK.VAR_VPRC_PRO,');
      SQL.Add('           PK.CF_VPRC_ORI,PK.CF_VPRC_PAD,                  ');

      SQL.Add('           PK.COL_ID,PK.COL_NO,PK.SEG_ID,PK.SEG_NO,');
      SQL.Add('           PK.GRP_ID,PK.GRP_NO,PK.SGP_ID,PK.SGP_NO,');
      SQL.Add('           PK.CAT_ID,PK.CAT_NO,PK.SCT_ID,PK.SCT_NO,');

      SQL.Add('           PK.ORIG ,PK.XORIG,         ');
      SQL.Add('           PK.CPAIS,PK.XPAIS,PK.FPAIS,');

      SQL.Add('           PK.INFADCAD,');

      SQL.Add('           MAX(E.EF_DTEV) OVER(PARTITION BY PK.IDCP) AS EF_DTEV, -- Evento');

      SQL.Add('           -- Estoque Consolidado');
      SQL.Add('           CAST(SUM(E.EFI_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2)) AS EFI_QTDE,CAST(SUM(E.EFI_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EFI_QTRL,');

      SQL.Add('           -- Estoque Pronta Entrega');
      SQL.Add('           CAST(SUM(E.EPE_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EPE_QTDE,CAST(SUM(E.EPE_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EPE_QTRL,');
      SQL.Add('           CAST(SUM(E.EST_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EST_QTDE,CAST(SUM(E.EST_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EST_QTRL,');
      SQL.Add('           CAST(SUM(E.EAA_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EAA_QTDE,CAST(SUM(E.EAA_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EAA_QTRL,');

      SQL.Add('           -- Estoque Antecipado');
      SQL.Add('           CAST(SUM(E.EAT_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EAT_QTDE,CAST(SUM(E.EAT_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EAT_QTRL,');

      SQL.Add('           -- Estoque Revisado');
      SQL.Add('           CAST(SUM(E.ERV_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS ERV_QTDE,CAST(SUM(E.ERV_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS ERV_QTRL,');
      SQL.Add('           CAST(SUM(E.EA_QTDE ) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EA_QTDE ,CAST(SUM(E.EA_QTRL ) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EA_QTRL ,');
      SQL.Add('           CAST(SUM(E.EB_QTDE ) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EB_QTDE ,CAST(SUM(E.EB_QTRL ) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EB_QTRL ,');
      SQL.Add('           CAST(SUM(E.EC_QTDE ) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EC_QTDE ,CAST(SUM(E.EC_QTRL ) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EC_QTRL ,');

      SQL.Add('           -- Pilotagem');
      SQL.Add('           CAST(SUM(E.EPI_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EPI_QTDE,CAST(SUM(E.EPI_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EPI_QTRL,');

      SQL.Add('           -- Estoque Substituto');
      SQL.Add('           CAST(SUM(E.ESU_QTDE_ENT) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS ESU_QTDE_ENT,CAST(SUM(E.ESU_QTRL_ENT) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS ESU_QTRL_ENT,');
      SQL.Add('           CAST(SUM(E.ESU_QTDE_SAI) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS ESU_QTDE_SAI,CAST(SUM(E.ESU_QTRL_SAI) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS ESU_QTRL_SAI,');

      SQL.Add('           -- Compras');
      SQL.Add('           CAST(SUM(E.EPC_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EPC_QTDE,CAST(SUM(E.EPC_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EPC_QTRL,');
      SQL.Add('           MAX(E.EPC_CTNR) OVER(PARTITION BY PK.IDCP) AS EPC_CTNR,');

      SQL.Add('           -- Vendas Programadas');
      SQL.Add('           CAST(SUM(E.EPP_QTDE     ) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EPP_QTDE     ,CAST(SUM(E.EPP_QTRL     ) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EPP_QTRL     ,');
      SQL.Add('           CAST(SUM(E.EPP_QTDE_CTNR) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EPP_QTDE_CTNR,CAST(SUM(E.EPP_QTRL_CTNR) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EPP_QTRL_CTNR,');
      SQL.Add('           CAST(SUM(E.EEP_QTDE     ) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EEP_QTDE     ,CAST(SUM(E.EEP_QTRL     ) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EEP_QTRL     ,');

      SQL.Add('           -- Vendas Pronta Entrega');
      SQL.Add('           CAST(SUM(E.EPV_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EPV_QTDE,CAST(SUM(E.EPV_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EPV_QTRL,');

      SQL.Add('           -- Vendas Separadas');
      SQL.Add('           CAST(SUM(E.ESP_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS ESP_QTDE,CAST(SUM(E.EPV_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS ESP_QTRL');

      SQL.Add('FROM      VW_PSQ_CAD_PRO     AS PK -- Cadastro');
      SQL.Add('LEFT JOIN VW_PSQ_CAD_PRO_SCT AS TB_SCT ON (TB_SCT.IDAK = PK.IDAK) -- Categorias');
      SQL.Add('LEFT JOIN VW_PSQ_CAD_PRO_EST_SLD AS E  ON (E.IDCP      = PK.IDCP AND E.LG_IDEP = ''' + RECParametros.ID + ''') -- Estoque');

      SQL.Add('WHERE ' + AREC_SHE_DEF.PSQ_FB_FD + AREC_SHE_DEF.PSQ_WHERE + AREC_SHE_DEF.PSQ_LKINI + AREC_SHE_DEF.PSQ_FB_VD + AREC_SHE_DEF.PSQ_LKFIM);

      { Situações }
      SQL.Add('AND PK.CDST <> 43');
      SQL.Add('AND PK.CDST <> 85');

      { Apenas Ativos
      if AREC_SHE_DEF.PSQ_CDST_30 then
      SQL.Add('AND      PK.CDST = 30'); }
      SQL.Add('ORDER BY PK.ARTIGO,PK.DGCP');

//      ParamByName('LG_IDEP').Value := RECParametros.ID;
      Prepare;
      ExecQuery;

      if Eof then
      if AREC_SHE_DEF.FWinControl.ClassType = TdxDBGridMaskColumn then oException(Nil,AREC_SHE_DEF.AException) else
      if AREC_SHE_DEF.FWinControl.Showing                         then oException(AREC_SHE_DEF.FWinControl,AREC_SHE_DEF.AException) else
                                                                       oErro     (Application.Handle,AREC_SHE_DEF.AException);
    end;

    if oLast(AREC_SHE_DEF.FB_SQL) > 1 then
    try
      if Assigned(FrmCAD_PRO_PSQ) then FrmCAD_PRO_PSQ.BringToFront else
      begin
        TFrmCAD_PRO_PSQ._ExecForm(
                    Nil, { Owner }
                    FrmCAD_PRO_PSQ, { Form }
                    True, { inicia pela pesquisa }
                    fsStayOnTop, { Style }
                    RECParametros.ID, { Empresa }
                    0, { Código Principal }
                    0, { Código Evento }
                    1, { Tipo }
                    AREC_SHE_DEF.PSQ_FB_TB, { Tabela }
                    'Pesquisa'); { Processo }

         if AREC_SHE_DEF.FWinControl <> Nil then
         begin
           FrmCAD_PRO_PSQ.REC_SHE_DEF.FTop  := AREC_SHE_DEF.FPoint.Y + AREC_SHE_DEF.FWinControl.Height;
           FrmCAD_PRO_PSQ.REC_SHE_DEF.FLeft := AREC_SHE_DEF.FPoint.X;
         end;  

         FrmCAD_PRO_PSQ.Consulta.Close;
         FrmCAD_PRO_PSQ.Consulta.SQL.Clear;
         FrmCAD_PRO_PSQ.Consulta.SQL.Assign(AREC_SHE_DEF.FB_SQL.SQL);
         FrmCAD_PRO_PSQ.ShowModal;
       end;
    finally
      if FrmCAD_PRO_PSQ.REC_SHE_DEF.PSQ_OK then
      begin
        AREC_SHE_DEF.FWinControl := Nil;
        AREC_SHE_DEF.PSQ_FB_FD   := 'PK.IDCP';
        AREC_SHE_DEF.PSQ_FB_VD   := IntToStr(FrmCAD_PRO_PSQ.ConsultaIDCP.AsInteger);

        uPSQ_CAD_PRO(AREC_SHE_DEF);
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
    PNLSyncEvent.Caption := EmptyStr;
    GFASyncEvent.Animate := False;

    PNLRodape.Height     := 25;
    PNLRodapeTOP.Height  := 0;

    Repaint;
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
    ODExplorer.InitialDir := RECParametros.SHE_PATH_DESKTOP;

    if ODExplorer.InitialDir  = EmptyStr then
       ODExplorer.InitialDir := 'C:\Sheild\Coletor';
  except
    { nothing }
  end;

  oIREC_SHE_DEF(AREC_SHE_DEF);
  try
    { Notas Fiscais }
    AREC_SHE_DEF.GDescricao := 'Fiscal'; AREC_SHE_DEF.GReferencia := 'NFe'; AREC_SHE_DEF.GRegra := 'Permissões Gerais';
    AREC_SHE_DEF.GFB_FLD    := 'VISUALIZA';

    oUSER(AREC_SHE_DEF);
    ACTFIS_NFE_ADM.Enabled := AREC_SHE_DEF.GView;

    { Pedidos de Vendas }
    AREC_SHE_DEF.GDescricao := 'Pedidos'; AREC_SHE_DEF.GReferencia := 'Vendas'; AREC_SHE_DEF.GRegra := 'Permissões Gerais';
    AREC_SHE_DEF.GFB_FLD    := 'VISUALIZA';

    oUSER(AREC_SHE_DEF);
    ACTPED_PDV_ADM.Enabled := AREC_SHE_DEF.GView;

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

  { DOCK MENU LATERAL }
  SBPrincipal.ActiveGroupIndex := IFThen(RECUsuarios.Grupo = 'PCP',0,
                                  IFThen(RECUsuarios.Grupo = 'FIN',2,1));

  with FrmPrincipal do
  begin
    { Admin }
    if RECUsuarios.ID > 0 then
       BSIAdmin.Visible := ivNever else
       BSIAdmin.Visible := ivAlways;

    { Preenchendo o rodapé do Form Principal }
    SBRodape.Width          := Screen.Width + 1;
    SBRodape.Panels[0].Text := RECParametros.DEEP;
    SBRodape.Panels[1].Text := RECUsuarios.Login + ' - ' + RECUsuarios.Cargo;
    SBRodape.Panels[3].Text := RECParametros.ServerHost;
    SBRodape.Panels[6].Text := 'Copyright © ' + oStrZero(YearOf(Date),4) + ' Sheild';

    _oLoadJPG(Nil,Nil,IPrincipal,True,'JPG_SPLASH');
    Repaint;
  end;

  { Impressoras }
  oExecPrinter(Application.Handle,'Relatórios');
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

procedure TFrmPrincipal.ACTComissoesExecute(Sender: TObject);
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
              { Abre os cabeçalhos das Vendas - PED_PDV_CAB }
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
                SQL.Add('WHERE    CAST(PK.DTBX AS DATE) >= ''08/01/25''');
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

                { Abre os itens do cabeçalho - PED_PDV_ITE }
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
                  SBRodape.Panels[1].Text := 'OTMPed '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' de '+FormatDateTime('dd/mm/yy',FBird.SQLFBConsulta.Current.Vars[25].AsDateTime)+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
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

                    SBRodape.Panels[1].Text := 'OTMErro Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
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

                  SBRodape.Panels[1].Text := 'OTM Erro Cabec Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                  SBRodape.Refresh;

                  Abort;
                end;
                FBird.SQLFBConsulta.Next;
              end;
            finally
              oCTransact(FBird.TFBConsulta);

              SBRodape.Panels[1].Text := 'Otimotex Fim';
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
                SQL.Add('WHERE    CAST(PK.DTBX AS DATE) >= ''08/01/25''');
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
                    SBRodape.Panels[2].Text := 'LEBPed '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' de '+FormatDateTime('dd/mm/yy',FBird.SQLFBConsulta.Current.Vars[4].AsDateTime)+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
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

                      SBRodape.Panels[2].Text := 'LEBErro Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
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

                  SBRodape.Panels[2].Text := 'LEBErro Cabec Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                  SBRodape.Refresh;

                  Abort;
                end;
                FBird.SQLFBConsulta.Next;
              end;
            finally
              oCTransact(FBird.TFBConsulta);

              SBRodape.Panels[2].Text := 'Lebianco Fim';
              SBRodape.Refresh;
            end;
          end;
begin
  OTMComissoes;
  LEBComissoes;
end;

procedure TFrmPrincipal.ACTCAD_PRO_ADMExecute(Sender: TObject);
begin
  TFrmCAD_PRO_ADM._ExecForm(Nil,FrmCAD_PRO_ADM,True);
end;

procedure TFrmPrincipal.ACTPED_PDV_ADMExecute(Sender: TObject);
begin
  TFrmPED_PDV_ADM._ExecForm(Nil,FrmPED_PDV_ADM);
end;

procedure TFrmPrincipal.ACTPED_PDC_ADMExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmctr_prc,Frmctr_prc);
end;

procedure TFrmPrincipal.ACTCAD_PRO_EST_ADMExecute(Sender: TObject);
begin
  TFrmEstoque._ExecForm(Nil,FrmEstoque);
end;

procedure TFrmPrincipal.ACTCAD_PRO_EST_LANExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrment_pro,Frment_pro);
end;

procedure TFrmPrincipal.ACTCAD_PRO_EST_EXP_COLExecute(Sender: TObject);
begin
  TFrmEXP_SEP_COL._ExecForm(Nil,FrmEXP_SEP_COL);
end;

procedure TFrmPrincipal.ACTCAD_PRO_EST_EXP_MANExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmEXP_SEP_MAN,FrmEXP_SEP_MAN);
end;

procedure TFrmPrincipal.ACTCAD_PRO_EST_ETQExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFRMETI_PRO,FRMETI_PRO);
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
      SQL.Add('AND    CAI_CDEP         = ''' + RECParametros.Id + '''');
      SQL.Add('AND    CAI_DABR         = ''' + formatDateTime('mm/dd/yy',RECParametros.DTServer) +'''');
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
      SQL.Add('AND    CAI_CDEP         = ''' + RECParametros.Id + '''');
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
      SQL.Add('AND    CAI_CDEP = ''' + RECParametros.ID + '''');
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
    SPFBEdicao.ParamByName('CDEP').Value := RECParametros.Id;
    SPFBEdicao.ParamByName('CDCX').Value := '1';
    SPFBEdicao.ParamByName('DECX').Value := '1 - CAIXA';
    SPFBEdicao.ParamByName('DABR').Value := RECParametros.DTServer;
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
    SPFBEdicao.ParamByName('DCAD').Value := RECParametros.DTServer;
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
  uFrmCreate(Nil,Tfrmcai_abr,Frmcai_abr);
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
  uFrmCreate(Nil,Tfrmcai_fec,Frmcai_fec);
end;

procedure TFrmPrincipal.ACTCAI_LSSExecute(Sender: TObject);
begin
  Tfrmcai_sar._ExecForm(Nil,frmcai_sar);
end;

procedure TFrmPrincipal.ACTCAI_TSSExecute(Sender: TObject);
begin
//  FrmCreate(Nil,Tfrmcai_tsr,Frmcai_tsr);
end;

procedure TFrmPrincipal.ACTCAI_FLCExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmcai_mov,frmcai_mov);
end;

procedure TFrmPrincipal.ACTCAD_PRO_SCTExecute(Sender: TObject);
begin
  TFrmProduto_SubCategoria._ExecForm(Nil,FrmProduto_SubCategoria);
end;

procedure TFrmPrincipal.ACTFIS_NFE_ADMExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmctr_nfe,Frmctr_nfe);
end;

procedure TFrmPrincipal.ACTROM_PDV_ADMExecute(Sender: TObject);
begin
 uFrmCreate(Nil,TFrmctr_rom,Frmctr_rom);
end;

procedure TFrmPrincipal.ACTPED_PDC_CLDExecute(Sender: TObject);
var
  TFArquivo: TextFile;
  SLTexto  : TStringList;

  AFileName,
  ALinha,
  ACDET: String;

  AEtiquetas: Array of String;
  i: integer;

  AIDG_IDEV_PDV: Variant;
begin
  if RECParametros.CDCX = 0 then
     oException(Nil,RECParametros.STCX + ' !' + #13 +
                    'Favor efetuar os procedimentos para a abertura do caixa.');

  if not ODExplorer.Execute then
  Abort;

  AFileName := ExtractFileName(ODExplorer.FileName);
  AFileName := LeftStr(AFileName,Length(AFileName) - 4);

  AssignFile(TFArquivo,ODExplorer.FileName);
  Reset(TFArquivo);

  SLTexto := TStringList.Create;
  SLTexto.LoadFromFile(ODExplorer.FileName);

  SetLength(AEtiquetas,SLTexto.Count);

  AIDG_IDEV_PDV := '0';
  i:= 0;

  try
    if SLTexto.Count = 0 then
    oException(Nil,'Nenhuma Etiqueta Coletada !' + #13 +
                   'Verifique o conteúdo do arquivo selecionado.');

    try
      While not Eof(TFArquivo) do
      Begin
        Readln(TFArquivo,ALinha);
        Delimitador := 0;
        ALinha      := oUTF8ToStr(ALinha);

        ACDET := Trim(oGetLinha(ALinha,','));
        ACDET := IFThen(Length(ACDET)  >= 13,Copy(ACDET,5,8),ACDET);
        ACDET := IFThen(Length(ACDET)   = 00,'0',ACDET);
        ACDET := oStrZero(StrToInt(ACDET),10);

        if ACDET <> EmptyStr then
        AEtiquetas[i] := ACDET;
        inc(i);

        Next;
      end;
    except
      on E: Exception do
      begin
        oException(Nil,'Falha ao tentar coletar informações !' + #13 + #13 +
                       'Registro: ' + ALinha);
      end;
    end;
  finally
    CloseFile(TFArquivo);
    SLTexto.Free;
  end;

  with FBird do
  try
    { VER ETIQUETAS }
    oOTransact(TFBETQConsulta);
    for  i := LOW(AEtiquetas) to HIGH(AEtiquetas) do
    begin
      with SQLFBETQConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.IDPK,PK.DEPK,PK.DTPK,');

        SQL.Add('       PK.IDCD,CD.FANTASIA AS DECD,');
        SQL.Add('       PK.IDCR,CR.FANTASIA AS DECR,');
        SQL.Add('       PK.IDCV,CV.LOGIN    AS DECV,');
        SQL.Add('       LG_SP.LOGIN AS LGSP,PK.DTSP ');

        SQL.Add('FROM   CAD_PRO_EST AS PK');
        SQL.Add('JOIN   CAD_CLI     AS CD    ON (CD.IDCD    = PK.IDCD)');
        SQL.Add('JOIN   CAD_REP     AS CR    ON (CR.IDCR    = PK.IDCR)');
        SQL.Add('JOIN   TAB_USER    AS CV    ON (CV.IDLG    = PK.IDCV)');
        SQL.Add('JOIN   TAB_USER    AS LG_SP ON (LG_SP.IDLG = PK.IDSP)');

        SQL.Add('WHERE  PK.CDET = ''' + AEtiquetas[i] + '''');
        ExecQuery;

        if Eof then
        oErro(Application.Handle,'Etiqueta Nº ' + AEtiquetas[i] + ' não Encontrada.');

     {   if Current.ByName('IDPK').AsInteger > 0 then
        oException(Nil,'Etiqueta Nº ' + AEtiquetas[i] + ' já Separada !' + #13 +
                       Current.ByName('LGSP').AsString  + ' - ' + FormatDateTime('dd/mm/yy',Current.ByName('DTSP').AsDateTime) + #13 + #13 +

                       'Pedido Nº '   + Current.ByName('DEPK').AsString  + ' - ' + FormatDateTime('dd/mm/yy',Current.ByName('DTPK').AsDateTime) + #13 +
                       Current.ByName('DECD').AsString + #13 +
                       Current.ByName('DECV').AsString);
      }
      end;
    end;
    oCTransact(TFBETQConsulta);

    try
      oOTransact(TFBETQEdicao);

      { GERAR PEDIDO }
      with SQLFBETQEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT GEN_ID(IDG_IDEV_PDV,1) FROM RDB$DATABASE');
        ExecQuery;

        AIDG_IDEV_PDV := Current.Vars[0].AsString;
      end;

      for  i := LOW(AEtiquetas) to HIGH(AEtiquetas) do
      begin
        with SQLFBETQEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE CAD_PRO_EST');
          SQL.Add('SET    IDEV = ''' + AIDG_IDEV_PDV + ''',');
          SQL.Add('       CDEV = 28');
          SQL.Add('WHERE  CDET = ''' + AEtiquetas[i] + '''' );
          ExecQuery;
        end;
      end;

      oCTransact(TFBETQEdicao);
    except
      on E: Exception do
      begin
        oCTransact(TFBETQEdicao,ltRollback);
        oException(Nil,'Falha ao tentar salvar eventos de estoque !' + #13 + #13 +
                       'Evento: ' + AIDG_IDEV_PDV + '.' + #13 +
                        E.Message);
      end;
    end;

    try
      oOTransact(TFBETQEdicao);

      with SPFBETQEdicao do
      begin
        Close;
        StoredProcName := 'SP_PED_PDV_CLD';
        Prepare;

        ParamByName('AEP_ID').Value := RECParametros.EP_ID;
        ParamByName('AIDEV' ).Value := AIDG_IDEV_PDV;
        ParamByName('AIDCA' ).Value := RECUsuarios.ID;
        ParamByName('ACDCX' ).Value := RECParametros.CDCX;
        ParamByName('AFILE' ).Value := AFileName;
        ExecProc;
      end;

      oCTransact(TFBETQEdicao);
      oAviso(Application.Handle,'Pedido Gerado com Sucesso !');
    except
      on E: Exception do
      begin
        oCTransact(TFBETQEdicao,ltRollback);
        oException(Nil,'Falha ao tentar salvar cabeçalho !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    oCTransact(TFBETQConsulta);
  end;

  { Renomeia e move para a basta de backup }
  oFileRename(ODExplorer.FileName,ExtractFilePath(ODExplorer.FileName) + '\Backup\' + AFileName + ' - ' + FormatDateTime('dd-mm-yy hh-mm',Now) + '.txt');
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

end.

