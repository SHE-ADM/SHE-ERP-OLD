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
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SQLFKEdicao: TIBSQL;
    ibTRA: TIBTransaction;
    ibSP: TIBStoredProc;
    consulta: TIBQuery;
    aux: TIBQuery;
    par_pri: TIBQuery;
    par_priID: TIntegerField;
    par_priPRI_IP: TIBStringField;
    par_priPRI_CPRI: TSmallintField;
    par_priPRI_DPRI: TIBStringField;
    par_priPRI_SECA: TIBStringField;
    parametros: TIBDataSet;
    parametrosID: TIntegerField;
    parametrosPAR_CDNF: TIBStringField;
    parametrosPAR_SERI: TIBStringField;
    parametrosPAR_CCRT: TIBStringField;
    parametrosPAR_OCRT: TMemoField;
    parametrosPAR_CNA1: TIBStringField;
    parametrosPAR_CNA2: TIBStringField;
    parametrosPAR_STPD: TIBStringField;
    parametrosPAR_STCO: TIBStringField;
    parametrosPAR_CCLI: TIntegerField;
    parametrosPAR_FANT: TIBStringField;
    parametrosPAR_RAZA: TIBStringField;
    parametrosPAR_RAMO: TIBStringField;
    parametrosPAR_CNAE: TIBStringField;
    parametrosPAR_CNPJ: TIBStringField;
    parametrosPAR_INSC: TIBStringField;
    parametrosPAR_DDD: TIBStringField;
    parametrosPAR_FONE: TIBStringField;
    parametrosPAR_TLOG: TIBStringField;
    parametrosPAR_LOGR: TIBStringField;
    parametrosPAR_NUME: TIBStringField;
    parametrosPAR_COMP: TIBStringField;
    parametrosPAR_CEP: TIBStringField;
    parametrosPAR_BAI: TIBStringField;
    parametrosPAR_CID: TIBStringField;
    parametrosPAR_CCID: TIBStringField;
    parametrosPAR_UF: TIBStringField;
    parametrosPAR_CUF: TIBStringField;
    parametrosPAR_FMAI: TIBStringField;
    parametrosPAR_DOLA: TIBBCDField;
    parametrosPAR_CICM: TIBBCDField;
    parametrosPAR_DUPL: TIBStringField;
    parametrosPAR_FRET: TIBStringField;
    parametrosPAR_TCLI: TIBStringField;
    parametrosPAR_TPRO: TIBStringField;
    parametrosPAR_CAIX: TIBStringField;
    parametrosPAR_GRAD: TIBStringField;
    parametrosPAR_NVIA: TIBStringField;
    parametrosPAR_STA: TIBStringField;
    parametrosPAR_CPAG: TIntegerField;
    parametrosPAR_CTRA: TIntegerField;
    parametrosPAR_TVOL: TIBStringField;
    parametrosPAR_FOTO: TBlobField;
    parametrosPAR_FOT2: TBlobField;
    parametrosPAR_FOT3: TBlobField;
    parametrosPAR_CNSD: TIBStringField;
    parametrosPAR_CSTD: TIBStringField;
    parametrosPAR_CNSF: TIBStringField;
    parametrosPAR_CSTF: TIBStringField;
    parametrosPAR_TIPO: TIBStringField;
    parametrosPAR_PGRD: TIBStringField;
    parametrosPAR_CFOR: TIntegerField;
    parametrosPAR_CREP: TIntegerField;
    parametrosPAR_MAIL: TIBStringField;
    parametrosPAR_SITE: TIBStringField;
    parametrosPAR_LOGO: TIBStringField;
    parametrosPAR_CANH: TIBStringField;
    parametrosPAR_CEND: TIBStringField;
    parametrosPAR_SPRO: TIBStringField;
    parametrosPAR_RICM: TIBStringField;
    parametrosPAR_PECA: TIBStringField;
    parametrosPAR_LIMC: TSmallintField;
    parametrosPAR_LIMB: TSmallintField;
    parametrosPAR_ONFE: TMemoField;
    parametrosPAR_LIME: TIBStringField;
    parametrosPAR_ESEG: TIBStringField;
    parametrosPAR_OPED: TMemoField;
    parametrosPAR_DIOR: TIBStringField;
    parametrosPAR_PSEP: TIBStringField;
    parametrosPAR_RFOR: TIBStringField;
    parametrosPAR_IEST: TIBStringField;
    parametrosPAR_BPAG: TSmallintField;
    parametrosPAR_CSEQ: TIBStringField;
    parametrosPAR_PVAR: TIBBCDField;
    parametrosPAR_PREP: TIBBCDField;
    parametrosPAR_DSEP: TSmallintField;
    parametrosPAR_BCHQ: TSmallintField;
    parametrosPAR_MCRD: TIBBCDField;
    parametrosPAR_PCRD: TIBBCDField;
    parametrosPAR_PREL: TIBStringField;
    parametrosPAR_REND: TIBStringField;
    parametrosPAR_DCRD: TIBStringField;
    parametrosPAR_DMAP: TIBStringField;
    parametrosPAR_STAV: TIBStringField;
    parametrosPAR_CVEN: TSmallintField;
    parametrosPAR_UNIDADEFEDERADA: TIBStringField;
    parametrosPAR_UNIDADEFEDERADACODIGO: TSmallintField;
    parametrosPAR_NOSERIECERTIFICADO: TIBStringField;
    parametrosPAR_EMAILCONTABIL: TIBStringField;
    parametrosPAR_EMAILXMLCOFRE: TIBStringField;
    parametrosPAR_LKFACEBOOK: TIBStringField;
    parametrosPAR_LKINSTAGRAM: TIBStringField;
    parametrosPAR_LKTWITTER: TIBStringField;
    parametrosPAR_SWHASSINATURA: TIBStringField;
    parametrosCNPJSOFTWAREHOUSE: TIBStringField;
    parametrosTOKENSOFTWAREHOUSE: TIBStringField;
    parametrosPAR_QTDE: TSmallintField;
    parametrosPAR_EST_COMP: TIBStringField;
    parametrosPAR_EST_CDI: TIBStringField;
    parametrosPAR_ETIQ: TSmallintField;
    parametrosPAR_GCOR: TSmallintField;
    parametrosPAR_GPCO: TSmallintField;
    parametrosPAR_GRCO: TSmallintField;
    parametrosPAR_GTAM: TSmallintField;
    parametrosPAR_GVAR: TSmallintField;
    parametrosPAR_GPRC: TSmallintField;
    parametrosPAR_GFOR: TSmallintField;
    parametrosPAR_FBAR: TSmallintField;
    parametrosPAR_IDTP: TSmallintField;
    parametrosPAR_BAIXA_PAGO: TSmallintField;
    parametrosDIAS_SAIDA: TSmallintField;
    parametrosPAR_CBAR: TBlobField;
    parametrosPAR_FTSITE: TBlobField;
    parametrosPAR_FTFACEBOOK: TBlobField;
    parametrosPAR_FTINSTAGRAM: TBlobField;
    parametrosPAR_FTTWITTER: TBlobField;
    parametrosRAMODEATIVIDADE: TIBStringField;
    parametrosCLI_FANT: TIBStringField;
    parametrosCLI_RAZA: TIBStringField;
    parametrosCLI_CPF: TIBStringField;
    parametrosCLI_CNPJ: TIBStringField;
    parametrosCLI_OBSO: TMemoField;
    parametrosFOR_FANT: TIBStringField;
    parametrosUSU_DUSU: TIBStringField;
    parametrosREP_FANT: TIBStringField;
    parametrosTRA_FANT: TIBStringField;
    parametrosPAG_DPAG: TIBStringField;
    parametrosPAR_IE: TIBStringField;
    dtsparametros: TDataSource;
    cad_usu: TIBDataSet;
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
    cad_usuUSU_DESC: TSmallintField;
    cad_usuUSU_RELA: TIBStringField;
    TConsulta: TIBTransaction;
    psq_pro: TIBQuery;
    psq_proIDCP: TIntegerField;
    psq_proIDEP: TSmallintField;
    psq_proDEEP: TIBStringField;
    psq_proIDCA: TSmallintField;
    psq_proDTCA: TDateTimeField;
    psq_proDECA: TIBStringField;
    psq_proIDED: TSmallintField;
    psq_proDTED: TDateTimeField;
    psq_proIDST: TSmallintField;
    psq_proDTST: TDateTimeField;
    psq_proCDST: TSmallintField;
    psq_proREST: TIBStringField;
    psq_proDEST: TIBStringField;
    psq_proINFADST: TIBStringField;
    psq_proDTEK: TDateTimeField;
    psq_proDTSP: TDateTimeField;
    psq_proDTPV: TDateTimeField;
    psq_proARTIGO: TIBStringField;
    psq_proIDAK: TLargeintField;
    psq_proNCM: TIBStringField;
    psq_proPIPI: TIBBCDField;
    psq_proEXTIPI: TIBStringField;
    psq_proCEST: TIBStringField;
    psq_proSKU: TIBStringField;
    psq_proCEAN: TIBStringField;
    psq_proIDSK: TLargeintField;
    psq_proIDEK: TLargeintField;
    psq_proDECP: TIBStringField;
    psq_proDTCP: TIBStringField;
    psq_proDGCP: TIBStringField;
    psq_proCMP_PAD: TIBStringField;
    psq_proUCOM: TIBStringField;
    psq_proUPSLQ: TIBBCDField;
    psq_proUPSBR: TIBBCDField;
    psq_proUQTDE_EST_MIN: TIBBCDField;
    psq_proUQTDE_VEN_MIN: TIBBCDField;
    psq_proUQTDE_VEN_MUL: TIBBCDField;
    psq_proUQTDE: TIBBCDField;
    psq_proUCDBE: TIBStringField;
    psq_proUESP: TIBStringField;
    psq_proUQVOL: TIBBCDField;
    psq_proUTRIB: TIBStringField;
    psq_proCF_ID: TSmallintField;
    psq_proCF_NO: TIBStringField;
    psq_proCF_SKU: TIBStringField;
    psq_proCF_CEAN: TIBStringField;
    psq_proCF_VPRC_PAD_ORI: TIBStringField;
    psq_proCF_VPRC_PAD: TFloatField;
    psq_proVPRC_PAD_INI: TFloatField;
    psq_proVPRC_PAD_FIM: TFloatField;
    psq_proVPRC_PAD: TFloatField;
    psq_proVPRC_PAD_PRZ: TFloatField;
    psq_proVPRC_PAD_PRO: TFloatField;
    psq_proVPRC_VAR: TFloatField;
    psq_proVPRC_VAR_PRZ: TFloatField;
    psq_proVPRC_VAR_PRO: TFloatField;
    psq_proVPRC_REP: TFloatField;
    psq_proVPRC_REP_PRZ: TFloatField;
    psq_proVPRC_REP_PRO: TFloatField;
    psq_proPESO: TIBBCDField;
    psq_proPSCN: TIBBCDField;
    psq_proMETRO: TIBBCDField;
    psq_proREND: TIBBCDField;
    psq_proGRAM: TIBBCDField;
    psq_proLARU: TIBBCDField;
    psq_proLART: TIBBCDField;
    psq_proELAL: TIBBCDField;
    psq_proELAC: TIBBCDField;
    psq_proCOL_ID: TIntegerField;
    psq_proCOL_NO: TIBStringField;
    psq_proGRP_ID: TIntegerField;
    psq_proGRP_NO: TIBStringField;
    psq_proCAT_ID: TIntegerField;
    psq_proCAT_NO: TIBStringField;
    psq_proEPE_QTDE: TIBBCDField;
    psq_proEPE_QTRL: TIntegerField;
    psq_proEST_QTDE: TIBBCDField;
    psq_proEST_QTRL: TIntegerField;
    psq_proERS_QTDE: TIBBCDField;
    psq_proERS_QTRL: TIntegerField;
    psq_proESP_QTDE: TIBBCDField;
    psq_proESP_QTRL: TIntegerField;
    psq_proORIG: TSmallintField;
    psq_proD_ORIG: TIBStringField;
    psq_proCPAIS: TSmallintField;
    psq_proXPAIS: TIBStringField;
    psq_proXPAIS_ABREV: TIBStringField;
    psq_proFPAIS: TIBStringField;
    psq_proINFADCAD: TIBStringField;
    psq_proFT_KEY: TIBStringField;
    consulta_S: TIBQuery;
    SQLTAB_PAR_SIS: TIBSQL;
    TTAB_PAR_SIS: TIBTransaction;
    bSHEILD: TIBTransaction;

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
  private
    { Private declarations }
    procedure _Login(AIDUSER: Variant; AIDEP,ADEEP: String);

    procedure _SetHintDefault;
    procedure _SetMouseLeave(var AMessage: TMessage); message WM_MOUSELEAVE;

    function  _SetMouseTracking: Boolean;

  public
    { Public declarations }
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet);
    procedure Log_Eve(func,roti,even,ceve,codi,desc,auto,taut: string);
    procedure FazPrnAtualVirarDefault(IMPRESSORA: STRING);

    function  PESQUISA_PRODUTO(campo: string ='' ;cpro: string = '';ARefresh: boolean = true): integer;
    function  RETORNA_LOGIN : boolean;
    function  ACESSO(cusu,campo,func,roti,nome: string;proc: boolean): boolean;
  end;

  { Sheild }
  procedure uConstrucao(ACaption: String = ''); STDCall;
  procedure uSP_CAD_PRO_EST_LAN_UPD (ATHR_TBPK: String;
                                     ATHR_IDEP,
                                     ATHR_IDPK: Variant;
                                     ATHR_DEPK,
                                     FIDPK: String); STDCALL;

{ TEMPORÁRIOS }
  procedure uFrmCreate(AOwner: TComponent;AFClass: TFormClass; var AInstance); STDCall;

{ FIM TEMPORÁRIOS }

var
  FrmPrincipal: TFrmPrincipal;
  ATrackMouseEvent: TTrackMouseEvent;

  ATHR_ITEM: LongInt;
  ATHR_SYNC: String;

  PCampo        : Array of shortstring;
  APSQ_ROM_EST,
  APSQ_PED_VEN,
  APSQ_CAD_PRO  : String;
  AUTORIZACAO   : string;
  TP_AUTORIZACAO: string;
  ID_AUTORIZACAO: string;
  Campo_Pesquisa: string;
  
implementation

uses bPrincipal  ,
     pLogin      , pSenha   , pSobre,
     pImpressoras, AJBarcode;

{$R *.dfm}

{ TEMPORÁRIO }
procedure TFrmPrincipal.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet);
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam <> 0 then
  begin
    BlobStream := tab.CreateBlobStream(valor,bmRead);
    JPEGImage  := TJPEGImage.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      IPrincipal.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
  begin
    IPrincipal.Picture := nil;
    frmprincipal.Color := clBtnFace;
  end;
  IPrincipal.Update;
  IPrincipal.Refresh;  
end;

function  TFrmPrincipal.PESQUISA_PRODUTO(campo: string ='' ;cpro: string = '';ARefresh: boolean = true): integer;
var
  cField,
  cWhere: String;
begin
  if ARefresh then
     oRTransact(TConsulta);

  cField := 'PK.IDCP';
  cWhere := '=';

  if Pos('.',CPro) = Length(CPro) then
  begin
    CField := 'ARTIGO';
    CWhere := '=';
    CPro   := LeftStr(CPro,Length(CPro) - 1);
  end else

  if (campo = 'Artigo') or (campo = 'Referencia') or (campo = 'Referência') then
  begin
    cField := 'PK.ARTIGO';
    cWhere := 'LIKE';
  end else
  if (campo = 'SKU') or (campo = 'Produto') then
  begin
    cField := 'PK.SKU';
    cWhere := 'LIKE';
  end else
  if campo = 'Ref. Fornecedor' then
  begin
    cField := 'PK.CF_NO';
    cWhere := 'CONTAINING';
  end else
  if campo = 'Descrição' then
  begin
    cField := 'PK.DECP';
    cWhere := 'CONTAINING';
  end else
  if campo = 'Categoria' then
  begin
    cField := 'PK.PRO_DCAT';
    cWhere := 'CONTAINING';
  end else
  if campo = 'Grupo' then
  begin
    cField := 'PK.PRO_DGRP';
    cWhere := 'CONTAINING';
  end else
  if campo = 'Barra' then
  begin
    cField := 'PK.CEAN';
    cWhere := '=';
  end;  

  with psq_pro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.*,');
    SQL.Add('       COALESCE(FK.EPE_QTDE,0) AS EPE_QTDE,COALESCE(FK.EPE_QTRL,0) AS EPE_QTRL,');
    SQL.Add('       COALESCE(FK.EST_QTDE,0) AS EST_QTDE,COALESCE(FK.EST_QTRL,0) AS EST_QTRL,');
    SQL.Add('       COALESCE(FK.ERS_QTDE,0) AS ERS_QTDE,COALESCE(FK.ERS_QTRL,0) AS ERS_QTRL,');
    SQL.Add('       COALESCE(FK.ESP_QTDE,0) AS ESP_QTDE,COALESCE(FK.ESP_QTRL,0) AS ESP_QTRL ');

    SQL.Add('FROM      VW_CAD_PRO_PSQ  AS PK');
    SQL.Add('LEFT JOIN CAD_PRO_EST_LAN AS FK ON (FK.IDEP_LOG = ''' + RECParametros.ID + ''' AND FK.IDEK = PK.IDEK)');

    SQL.Add('WHERE ' + CField + ' ' + CWhere + ' ''' + CPro + '' + IFThen(CWhere = 'LIKE','%','') + '''');

    SQL.Add('ORDER BY PK.CDST,PK.ARTIGO,PK.DGCP');
    Prepare;
    
    Open;
    Last;
  end;

  result := psq_pro.RecNo;
end;

function TFrmPrincipal.ACESSO(cusu,campo,func,roti,nome: string;proc: boolean): boolean;
var
  BRet: boolean;
begin
  BRet := true;

  if cad_usuUSU_CUSU.AsInteger > 0 then
  begin
    ibSP.StoredProcName := 'SP_GRANT';
    ibSP.Prepare;
    ibSP.ParamByName('cusu').Value  := cusu;
    ibSP.ParamByName('campo').Value := campo;
    ibSP.ParamByName('func').Value  := func;
    ibSP.ParamByName('roti').Value  := roti;
    ibSP.ParamByName('nome').Value  := nome;
    ibSP.ExecProc;

    BRet := (ibSP.Params.ParamValues['bret'] = '1');

    if (proc) and (not BRet) then
    begin
      messageBox(handle,'ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.','Sistema de Vendas',MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;
  result := BRet;
end;

function TFrmPrincipal.RETORNA_LOGIN: boolean;
//var
//  BRet: boolean;
begin
//  BRet     := false;
{  frmlogin := TFrmlogin.Create(self);
  try
    frmlogin.Tag := 2;
    frmlogin.ShowModal;
  finally
    if frmlogin.editado then
    begin
      SLPrincipal.Values['autorizacao'] := frmlogin.cad_usuUSU_DUSU.AsString;
//    BRet        := ((frmlogin.cad_usuUSU_NIVE.AsString = 'SUPERVISOR') or (frmlogin.cad_usuUSU_NIVE.AsString = 'GERENTE') or (frmlogin.cad_usuUSU_NIVE.AsString = 'ADMINISTRADOR'));
    end;
    freeAndNil(frmlogin);
    frmlogin.Free;
  end;
  result := BRet; }

  result := True;
end;

procedure TFrmPrincipal.Log_Eve(func,roti,even,ceve,codi,desc,auto,taut: string);
begin
  ibSP.StoredProcName  := 'SP_LOG_EVE';
  ibSP.Prepare;
  ibSP.ParamByName('ID').Value   := 0;
  ibSP.ParamByName('CEVE').Value := ceve;
  ibSP.ParamByName('DEVE').Value := now;
  ibSP.ParamByName('CDEP').Value := frmprincipal.parametrosID.AsInteger;
  ibSP.ParamByName('CLOG').Value := frmprincipal.cad_usuUSU_CUSU.AsInteger;
  ibSP.ParamByName('DLOG').Value := TRIM(copy(frmprincipal.cad_usuUSU_DUSU.AsString,1,1)+LOWERCASE(copy(frmprincipal.cad_usuUSU_DUSU.AsString,2,14)));
  ibSP.ParamByName('AUT').Value  := auto;
  ibSP.ParamByName('TAUT').Value := taut;
  ibSP.ParamByName('IP').Value   := RECParametros.IP;
  ibSP.ParamByName('FUNC').Value := func;
  ibSP.ParamByName('ROTI').Value := roti;
  ibSP.ParamByName('EVEN').Value := even;
  ibSP.ParamByName('CODI').Value := codi;
  ibSP.ParamByName('DELO').Value := desc;
  ibSP.ExecProc;
  IBTra.CommitRetaining;
end;

procedure TFrmPrincipal.FazPrnAtualVirarDefault(IMPRESSORA: STRING);
var
  Res : DWord;
  Device: array[0..255] of char;
  Driver: array[0..255] of char;
  Port : array[0..255] of char;
  WindowsStr: array[0..255] of char;
  hDeviceMode: THandle;
begin
  IBTra.CommitRetaining;
  par_pri.Close;
  par_pri.Open;
  if not par_pri.Locate('PRI_SECA',IMPRESSORA,[]) then
     ShowMessage('Impressora não Cadastrada no Sistema'+#13+
                 'Favor cadastrar. Menu Utilitários - Lista de Impressoras');

  Printer.PrinterIndex := par_priPRI_CPRI.AsInteger;

  //Pega dados da impressora atual
  Printer.GetPrinter(Device,Driver,Port,hDeviceMode);
  //Monta String exigida pela API do Windows
  StrCat(Device,',');
  StrCat(Device,Driver);
  StrCat(Device,',');
  StrCat(Device,Port);
  StrPCopy(WindowsStr,'Windows');
  //Torna a impressora a atual
  WriteProfileString(WindowsStr,'device',Device);
  SendMessageTimeout(HWND_BROADCAST,WM_WININICHANGE,0,DWORD(@WindowsStr),SMTO_NORMAL,1,Res);
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

{ FIM TEMPORÁRIOS }

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

  SetLength(PCampo,4);

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
         if not FBird.DBEDIT.TestConnected then
            try
              DBEDIT.CloseDataSets;
              DBEDIT.ForceClose;

              SleepEx(100,False);
              DBEDIT.Connected := true;
            except
              ;
            end;

         if FBird.DBErp.TestConnected then
            try
              oOTransact(TFBEEdicao);
              with SQLFBEEdicao do
              begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT * FROM rdb$Database');
                ExecQuery;
              end;
              oCTransact(TFBEEdicao);
            except
              oCTransact(TFBEEdicao,ltRollback);
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

  with CAD_USU do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_USU');
    SelectSQL.Add('WHERE  USU_CUSU = ''' + AIDUSER + '''');
    Open;
  end;

  with Parametros do
  begin
    Close;
    SElectSQL.Clear;
    SelectSQL.Add('SELECT   PAR_SIS.*,');
    SelectSQL.Add('         case PAR_SIS.PAR_TIPO           ');
    SelectSQL.Add('              when 0 then ''Tecido''     ');
    SelectSQL.Add('              when 1 then ''Aviamento''  ');
    SelectSQL.Add('              when 2 then ''Confecção''  ');
    SelectSQL.Add('              when 3 then ''Fardo''      ');
    SelectSQL.Add('              when 4 then ''Plástico''   ');
    SelectSQL.Add('              when 5 then ''Calçado''    ');
    SelectSQL.Add('              when 6 then ''Oficina''    ');
    SelectSQL.Add('              when 7 then ''Tinturaria'' ');
    SelectSQL.Add('              when 8 then ''Informática''');
    SelectSQL.Add('              when 9 then ''Outros''     ');
    SelectSQL.Add('         end  as RamoDeAtividade,        ');
    SelectSQL.Add('         CAD_CLI.CLI_FANT,CAD_CLI.CLI_RAZA,CAD_CLI.CLI_CPF,CAD_CLI.CLI_CNPJ,CAD_CLI.CLI_OBSO,');
    SelectSQL.Add('         CAD_FOR.FOR_FANT,');
    SelectSQL.Add('         CAD_USU.USU_DUSU,');
    SelectSQL.Add('         CAD_REP.REP_FANT,');
    SelectSQL.Add('         CAD_TRA.TRA_FANT,');
    SelectSQL.Add('         TAB_PAG.PAG_DPAG ');
    SelectSQL.Add('FROM     PAR_SIS          ');
    SelectSQL.Add('LEFT     OUTER JOIN CAD_CLI ON CAD_CLI.ID       = PAR_SIS.PAR_CCLI');
    SelectSQL.Add('LEFT     OUTER JOIN CAD_FOR ON CAD_FOR.ID       = PAR_SIS.PAR_CFOR');
    SelectSQL.Add('LEFT     OUTER JOIN CAD_USU ON CAD_USU.USU_CUSU = PAR_SIS.PAR_CVEN');
    SelectSQL.Add('LEFT     OUTER JOIN CAD_REP ON CAD_REP.ID       = PAR_SIS.PAR_CREP');
    SelectSQL.Add('LEFT     OUTER JOIN TAB_PAG ON TAB_PAG.ID       = PAR_SIS.PAR_CPAG');
    SelectSQL.Add('LEFT     OUTER JOIN CAD_TRA ON CAD_TRA.ID       = PAR_SIS.PAR_CTRA');

    SelectSQL.Add('WHERE    PAR_SIS.ID = ''' + AIDEP + '''');
    SelectSQL.Add('ORDER BY PAR_SIS.ID');
    Open;
  end;

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

end.

