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
  dxDockControl, dxBar, dxBarExtItems;

type
  TFrmPrincipal = class(TForm)
    SBRodape: TdxStatusBar;

    TPrincipal: TTimer;
    IPrincipal: TImage;
    ILPrincipal: TImageList;

    ACBrBarCode: TACBrBarCode;
    ACBrBarCodeV: TACBrBarCode;
    BMPrincipal: TdxBarManager;
    BSICadastros: TdxBarSubItem;
    BSIProdutos: TdxBarSubItem;
    DMPrincipal: TdxDockingManager;
    DSMenu: TdxDockSite;
    LDSPrincipal: TdxLayoutDockSite;
    DPMenu: TdxDockPanel;
    BLBSM_LOG_LAN: TdxBarLargeButton;
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
    BLBSM_LOG_ADM: TdxBarLargeButton;
    BLBSM_NFE_PSQ: TdxBarLargeButton;
    BLBSM_CFE_LAN: TdxBarLargeButton;
    BLBSM_C1: TdxBarLargeButton;
    BLBSM_C2: TdxBarLargeButton;
    BLSHE_LOG: TdxBarLargeButton;
    BLBSHE_LOG_PAS: TdxBarLargeButton;
    BLBSM_C3: TdxBarLargeButton;
    BLBSHE_PRN: TdxBarLargeButton;
    BLBSHE_PAR: TdxBarLargeButton;
    BLBSHE_BKP: TdxBarLargeButton;
    BLBSM_C4: TdxBarLargeButton;
    BLBSM_C5: TdxBarLargeButton;
    BLBSaida: TdxBarLargeButton;
    BLBMenuSaida: TdxBarSubItem;
    BLBSM_C6: TdxBarLargeButton;
    BLBSM_C7: TdxBarLargeButton;
    BLBSM_C8: TdxBarLargeButton;
    BLBSM_ETQ_PRO: TdxBarLargeButton;
    BLBSM_PRO_FCT: TdxBarLargeButton;
    BLBSM_PED_COM_LAN: TdxBarLargeButton;
    BLBSM_PED_PRG_LAN: TdxBarLargeButton;
    BLBSM_PED_VEN_LAN: TdxBarLargeButton;
    BLBSM_ROM_LAN: TdxBarLargeButton;
    BLBSM_C9: TdxBarLargeButton;
    SSICAD_PRO: TdxStoredSideItem;
    AMPrincipal: TActionManager;
    ACTSHE_PRN: TAction;
    ACTSHE_PRN_EXE: TAction;
    ACTSHE_LOG: TAction;
    ACTSHE_LOG_PAS: TAction;
    ACTSHE_PAR: TAction;
    ACTSHE_BKP: TAction;
    ACTSHE_ABOUT: TAction;
    ACTSaida: TAction;
    ACTSHE_DENIED: TAction;
    ACTCAD_PRO: TAction;
    ACTPED_VEN_EDI: TAction;
    SSIPED_VEN_ADM: TdxStoredSideItem;
    ACTCAD_CLI: TAction;
    ACTCAD_REP: TAction;
    ACTCAD_VEN: TAction;
    ACTCAD_FOR: TAction;
    ACTCAD_CNI: TAction;
    ACTCAD_TRA: TAction;
    ACTCAD_PRO_ETQ: TAction;
    ACTCAD_PRO_COR: TAction;
    ACTCAD_PRO_ETP: TAction;
    ACTCAD_PRO_FCT: TAction;
    ACTCAD_PRO_TAM: TAction;
    ACTCAD_PRO_COL: TAction;
    ACTCAD_PRO_SEG: TAction;
    ACTCAD_PRO_GRP: TAction;
    ACTCAD_PRO_SGP: TAction;
    ACTCAD_PRO_CAT: TAction;
    ACTCAD_PRO_SCT: TAction;
    BLGCAD_PRO_TAM: TdxBarLargeButton;
    ACTEST_EDI: TAction;
    ACTEST_ADM: TAction;
    ACTEST_ETQ: TAction;
    ACTEST_QLD: TAction;
    ACTEST_EXP_COL: TAction;
    ACTEST_EXP_MAN: TAction;
    ACTCTNR_ADM: TAction;
    ACTCTNR_CTS: TAction;
    ACTPED_CNI_EDI: TAction;
    ACTPED_CNI_ADM: TAction;
    ACTPED_PRG_EDI: TAction;
    ACTPED_PRG_ADM: TAction;
    ACTPED_VEN_ADM: TAction;
    ACTROM_VEN_EDI: TAction;
    ACTROM_VEN_ADM: TAction;
    ACTPED_VEN_PRZ: TAction;
    ACTNFE_EDI: TAction;
    ACTNFE_EDI_TRC: TAction;
    ACTNFE_ADM: TAction;
    ACTNFE_CFOP: TAction;
    ACTCFE_EDI: TAction;
    ACTCFE_ADM: TAction;
    ACTFIN_CHQ_EDI: TAction;
    ACTFIN_CHQ_ADM: TAction;
    ACTFIN_REC_BAN_ADM: TAction;
    ACTFIN_REC_BAN_BAI: TAction;
    ACTFIN_REC_CAR_ADM: TAction;
    ACTFIN_REC_CAR_BAI: TAction;
    ACTFIN_REC_DUP: TAction;
    ACTFIN_REC_BOL: TAction;
    ACTFIN_PAG_ADM: TAction;
    ACTFIN_PAG_CMV: TAction;
    ACTCAI_ABR: TAction;
    ACTCAI_RAB: TAction;
    ACTCAI_FCH: TAction;
    ACTCAI_SSP_EDI: TAction;
    ACTCAI_SSP_TAB: TAction;
    ACTCAI_FLC: TAction;
    ACTTAB_PRZ: TAction;
    ACTTAB_PED: TAction;
    ACTTAB_COB: TAction;
    ACTTAB_UCOM: TAction;
    ACTTAB_NCM: TAction;
    ACTTAB_ICMS: TAction;
    ACTTAB_ICMS_ST: TAction;
    ACTTAB_CFOP: TAction;
    ACTTAB_ORIG: TAction;
    ACTTAB_PAIS: TAction;
    ACTTAB_IBGE: TAction;
    ACTNFE_PSQ: TAction;
    BLBNFE_PSQ: TdxBarLargeButton;
    BLBFIN_REC_CAR_ADM: TdxBarButton;
    BLBTAB_PAIS: TdxBarLargeButton;
    SSIEST_EXP_MAN: TdxStoredSideItem;
    SSIEST_EXP_COL: TdxStoredSideItem;
    SSIEST_ADM: TdxStoredSideItem;
    SSIEST_EDI: TdxStoredSideItem;
    SSIEST_ETQ: TdxStoredSideItem;

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

    procedure TPrincipalTimer(Sender: TObject);
    procedure ACTSHE_PRNExecute(Sender: TObject);
    procedure ACTSHE_PRN_EXEExecute(Sender: TObject);
    procedure ACTSHE_LOGExecute(Sender: TObject);
    procedure ACTSHE_LOG_PASExecute(Sender: TObject);
    procedure ACTSHE_DENIEDExecute(Sender: TObject);
    procedure ACTSHE_PARExecute(Sender: TObject);
    procedure ACTSHE_BKPExecute(Sender: TObject);
    procedure ACTSHE_ABOUTExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure ACTCAD_PROExecute(Sender: TObject);
    procedure ACTPED_VEN_ADMExecute(Sender: TObject);
    procedure ACTEST_EXP_MANExecute(Sender: TObject);
    procedure ACTEST_EXP_COLExecute(Sender: TObject);
    procedure ACTEST_EDIExecute(Sender: TObject);
    procedure ACTEST_ADMExecute(Sender: TObject);
    procedure ACTEST_ETQExecute(Sender: TObject);
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
  procedure uFrmCreate(AOwner: TComponent;AFClass: TFormClass; var AInstance); STDCall;

  procedure uPSQPD (var ARECEdicao: TRECEdicao); STDCall;
  procedure uPSQNF (var ARECPSQNF : TRECEdicao;ASQLConsulta: TIBSQL;AWinControl: TWinControl); STDCall;

  function uFIN_BLQ(ASTCobranca,ASTFatura,AIDCliente: String): String; STDCall;
  function uLimiteVenda(ASTCobranca,ASTFatura,AIDCliente: String;ATotal: Double): string; STDCall;

  function uPesquisa_Produto(AIDEP: Integer = 0;ADTXT: String = '';AFTXT: String = 'ARTIGO';AWHERE: String = '=';ALIKE1: String = '';ALIKE2: String = '';ADDT1: TDate = 0;ADDT2: TDate = 0;AFDT: String = ''): Integer; STDCall;

var
  FrmPrincipal: TFrmPrincipal;
  ATrackMouseEvent: TTrackMouseEvent;

  DATA_MEDIA    : TDate;
  ITENS_PEDIDO,
  ITENS_BANCARIO,
  ITENS_CARTEIRA: Integer;
  VALOR_PEDIDO,
  VALOR_SALDO,
  VALOR_BANCARIO,
  VALOR_CARTEIRA: Double;



  APSQ_PED_PRG,APSQ_PED_VEN,APSQ_ROM_CAB: String;

implementation

uses bPrincipal,
     pLogin, pSenha, pSobre,
     AJBarcode, pImpressoras, pConstrucao, pProduto, pctr_ped,
  pProduto_Pesquisa, pEXP_SEP_MAN, pEXP_SEP_COL, pent_pro, pEstoque,
  peti_pro;

{$R *.dfm}

procedure uConstrucao(ACaption: String = ''); STDCall;
begin
  uFrmCreate(Nil,TFrmConstrucao,FrmConstrucao);
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

function uFIN_BLQ(ASTCobranca,ASTFatura,AIDCliente: String): String;
begin
  result := EmptyStr;
  if (RECParametros.FIN_LIMITE_CARTEIRA > 0) and (ASTCobranca <> 'SEM COBRANÇA') and (ASTFatura = '1') and (AIDCliente <> RECParametros.IDCL_PAD) then
  try
    oOTransact(FBird.TFBConsulta);
    with FBird.SQLFBConsulta do
    begin
      { Carteira Logada }
      Close;
      SQL.Clear;
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM ' + oREPZero('VW_FIN_REC_CAR','_',RECParametros.Id,3) + ' AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');

      { Bancários }
      SQL.Add('UNION');
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');
      SQL.Add('UNION');
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_002 AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');
      SQL.Add('UNION');
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_003 AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');
      SQL.Add('UNION');
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_004 AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');
      SQL.Add('UNION');
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_005 AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');
      SQL.Add('UNION');
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_006 AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');
      SQL.Add('UNION');
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_007 AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');
      SQL.Add('UNION');
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_008 AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');
      SQL.Add('UNION');
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_009 AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');

      ParamByName('IDCD').Value := AIDCliente;
      Prepare;
      ExecQuery;

      result := Trim(Current.Vars[0].AsString);
    end;
  finally
    oCTransact(FBird.TFBConsulta);
  end;
end;

function uLimiteVenda(ASTCobranca,ASTFatura,AIDCliente: String;ATotal: Double): string; STDCall;
var
  AVCRD: Double;
begin
  result := '';

  if (RECParametros.FIN_LIMITE_CREDITO) and (ASTCobranca <> 'SEM COBRANÇA') and (ASTFatura = '1') then
  try
    oRTransact(FBird.TFBConsulta);
    with FBird.SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT VCRD FROM CAD_CLI_CRD');
      SQL.Add('WHERE  IDEP = ''' + RECParametros.ID + '''');
      SQL.Add('AND    IDCD = ''' + AIDCLIENTE       + '''');
      ExecQuery;
      AVCRD := Current.Vars[0].AsCurrency;

      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(FIN_VPEN),COUNT(*) FROM '+SLPrincipal.Values['fin_rec_ban_bai']);
      SQL.Add('WHERE  FIN_CCLI = '''+AIDCliente+'''');
      SQL.Add('AND    FIN_STFI NOT CONTAINING ''CANCELADO''');
      SQL.Add('AND    FIN_STFI NOT CONTAINING ''BAIXADO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''PAGO%''');
      ExecQuery;
      VALOR_BANCARIO := Current.Vars[0].AsFloat;
      ITENS_BANCARIO := Current.Vars[1].AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(FIN_VPEN*IIF(FIN_CONC > 0,FIN_CONC,1)),COUNT(*) FROM '+SLPrincipal.Values['fin_rec_car_bai']);
      SQL.Add('WHERE  FIN_CCLI = '''+AIDCliente+'''');
      SQL.Add('AND    FIN_STFI NOT CONTAINING ''CANCELADO''');
      SQL.Add('AND    FIN_STFI NOT CONTAINING ''BAIXADO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''PAGO%''');
      ExecQuery;
      VALOR_CARTEIRA := Current.Vars[0].AsFloat;
      ITENS_CARTEIRA := Current.Vars[1].AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(PK.TCDE),COUNT(*)');
      SQL.Add('FROM '+oREPZero('VW_PED_VEN_CAB_NEW','_',RECParametros.Id,3)+' AS PK');
      SQL.Add('WHERE  PK.IDEP = '''+RECParametros.Id+'''');
      SQL.Add('AND    PK.IDCD = '''+AIDCliente      +'''');
      SQL.Add('AND    PK.LQPD = 1'); // Tipo   Faturamento
      SQL.Add('AND    PK.BQPD = 1'); // Tipo   Bloqueável Financeiramente
      SQL.Add('AND    PK.APST = 1'); // Status Pendente
      SQL.Add('AND    PK.CSCD = 0'); // Status Pendente
      ExecQuery;
      VALOR_PEDIDO := Current.Vars[0].AsFloat;
      ITENS_PEDIDO := Current.Vars[1].AsInteger;
    end;

    VALOR_SALDO := AVCRD - (VALOR_BANCARIO+VALOR_CARTEIRA);
    if VALOR_SALDO < 0 then
    VALOR_SALDO := 0;

    if ATotal > VALOR_SALDO then
    result := 'AGUARDANDO CRÉDITO';
  finally
    if not oEmpty(result) then
    with FBird.SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT COUNT(*)');
      SQL.Add('FROM   CAD_CLI');
      SQL.Add('WHERE  ID = '''+AIDCliente+'''');
      SQL.Add('AND    EXISTS (SELECT EP.ID FROM TAB_PAR_SIS AS EP WHERE EP.CNPJ = CLI_CNPJ)');
      ExecQuery;
      if Current.Vars[0].AsInteger > 0 then
         result := EmptyStr;
    end;
    oCTransact(FBird.TFBConsulta);
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
  OnClose := Nil;
  Action  := caFree;
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  OnDestroy    := Nil;
  FrmPrincipal := Nil;
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
    if Screen.Height <= 768 then
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

{       ACTCAI_ABR.Enabled := (((RECParametros.STCX = 'Caixa Fechado') or (RECParametros.STCX = 'Caixa não aberto')) and (RECUsuarios.Caixa));
       ACTCAI_RAB.Enabled := (ACTCAI_ABR.Enabled);
       ACTCAI_FEC.Enabled := ((not ACTCAI_ABR.Enabled) and (RECUsuarios.Caixa));}

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

  { ACESSOS }
  { Pedidos }
  try
    oIREC_SHE_DEF(AREC_SHE_DEF);
    AREC_SHE_DEF.GDescricao := 'Pedidos'; AREC_SHE_DEF.GReferencia := 'Vendas'; AREC_SHE_DEF.GRegra := 'Permissões Gerais';
    AREC_SHE_DEF.GFB_FD     := 'VISUALIZA';

    oUSER(AREC_SHE_DEF);
    ACTPED_VEN_ADM.Enabled := AREC_SHE_DEF.GView;
  finally
    oFREC_SHE_DEF(AREC_SHE_DEF);
  end;

  { Produtos }
  try
    oIREC_SHE_DEF(AREC_SHE_DEF);
    AREC_SHE_DEF.GDescricao := 'Produtos'; AREC_SHE_DEF.GReferencia := 'Cadastro'; AREC_SHE_DEF.GRegra := 'Permissões Gerais';
    AREC_SHE_DEF.GFB_FD     := 'VISUALIZA';

    oUSER(AREC_SHE_DEF);
    ACTCAD_PRO.Enabled := AREC_SHE_DEF.GView;
  finally
    oFREC_SHE_DEF(AREC_SHE_DEF);
  end;

  { Estoque }
  try
    oIREC_SHE_DEF(AREC_SHE_DEF);

    AREC_SHE_DEF.GDescricao := 'Estoque'; AREC_SHE_DEF.GReferencia := 'Produtos'; AREC_SHE_DEF.GRegra := 'Permissões Gerais';
    oUSER(AREC_SHE_DEF);
    
    ACTEST_ADM.Enabled := AREC_SHE_DEF.GView;

    AREC_SHE_DEF.GDescricao := 'Estoque'; AREC_SHE_DEF.GReferencia := 'Expedição'; AREC_SHE_DEF.GRegra := 'Permissões Gerais';
    oUSER(AREC_SHE_DEF);

    ACTEST_EXP_COL.Enabled  := AREC_SHE_DEF.GView;;
    ACTEST_EXP_MAN.Enabled := AREC_SHE_DEF.GView;;
  finally
    oFREC_SHE_DEF(AREC_SHE_DEF);
  end;



  bResumo_Pedido;
end;

procedure TFrmPrincipal.ACTSHE_LOGExecute(Sender: TObject);
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

procedure TFrmPrincipal.ACTSHE_LOG_PASExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmSenha,FrmSenha);
end;

procedure TFrmPrincipal.ACTSHE_DENIEDExecute(Sender: TObject);
begin
  raise exception.Create(PChar(ACTSHE_DENIED.Caption) + #13 +
                         PChar(ACTSHE_DENIED.Hint));
end;

procedure TFrmPrincipal.ACTSHE_PRNExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmImpressoras,FrmImpressoras);
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

procedure TFrmPrincipal.ACTSHE_ABOUTExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmsobre,Frmsobre);
end;

procedure TFrmPrincipal.ACTSaidaExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.ACTCAD_PROExecute(Sender: TObject);
begin
  TFrmProduto.ExecForm(Nil,FrmProduto);
end;

procedure TFrmPrincipal.ACTPED_VEN_ADMExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmctr_ped,Frmctr_ped);
end;

procedure TFrmPrincipal.ACTEST_EXP_MANExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmEXP_SEP_MAN,FrmEXP_SEP_MAN);
end;

procedure TFrmPrincipal.ACTEST_EXP_COLExecute(Sender: TObject);
begin
  TFrmEXP_SEP_COL.ExecForm(Nil,FrmEXP_SEP_COL);
end;

procedure TFrmPrincipal.ACTEST_EDIExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrment_pro,Frment_pro);
end;

procedure TFrmPrincipal.ACTEST_ADMExecute(Sender: TObject);
begin
  TFrmEstoque.ExecForm(Nil,FrmEstoque);
end;

procedure TFrmPrincipal.ACTEST_ETQExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmeti_pro,frmeti_pro);
end;

end.
