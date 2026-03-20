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
    cad_usu: TIBDataSet;
    ibTRA: TIBTransaction;
    consulta: TIBQuery;
    par_pri: TIBQuery;
    par_priID: TIntegerField;
    par_priPRI_IP: TIBStringField;
    par_priPRI_CPRI: TSmallintField;
    par_priPRI_DPRI: TIBStringField;
    par_priPRI_SECA: TIBStringField;
    parametros: TIBDataSet;
    PNLUtil: TPanel;
    TBPrincipal: TToolBar;
    rsbLOG: TRxSpeedButton;
    rsbsen: TRxSpeedButton;
    rsbusu: TRxSpeedButton;
    rsbbak: TRxSpeedButton;
    rsbpri: TRxSpeedButton;
    rsbsis: TRxSpeedButton;
    rsbSOB: TRxSpeedButton;
    ToolButton26: TToolButton;
    rsbSAI: TRxSpeedButton;
    PNLPrincipal: TPanel;
    Bevel8: TBevel;
    dtsparametros: TDataSource;
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
    rsbAGE: TRxSpeedButton;
    psq_pro: TIBQuery;
    cad_usuUSU_DESC: TSmallintField;
    IFotoFundo: TImage;
    IP: TIdIPWatch;
    aux: TIBQuery;
    cad_usuUSU_RELA: TIBStringField;
    consulta_S: TIBQuery;
    bSHEILD: TIBTransaction;
    SBRodape: TdxStatusBar;
    RSBCupom: TRxSpeedButton;
    ToolButton5: TToolButton;
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
    ToolButton9: TToolButton;
    ToolButton11: TToolButton;
    TTempo: TTimer;
    TConsulta: TIBTransaction;
    SBCAD_CLI: TRxSpeedButton;
    SBCAD_PRO: TRxSpeedButton;
    SBCAD_PRO_EST_LAN: TRxSpeedButton;
    SBCAD_PRO_EST_EXP_MAN: TRxSpeedButton;
    SBROM_VEN_LAN: TRxSpeedButton;
    SBPED_VEN_LAN: TRxSpeedButton;
    SBNFE_LAN: TRxSpeedButton;
    SBNFE_ADM: TRxSpeedButton;
    SBCAD_TRA: TRxSpeedButton;
    AMPrincipal: TActionManager;
    ACTCAD_CLI: TAction;
    ILPrincipal: TImageList;
    ACTCAD_TRA: TAction;
    SBCAD_PRO_GRD: TRxSpeedButton;
    ACTCAD_PRO: TAction;
    ACTCAD_PRO_COR: TAction;
    SBCAD_PRO_EST_ADM: TRxSpeedButton;
    ACTCAD_PRO_EST_LAN: TAction;
    ACTCAD_PRO_EST_ADM: TAction;
    SBCAD_PRO_EST_EXP_COL: TRxSpeedButton;
    ACTCAD_PRO_EST_EXP_MAN: TAction;
    ACTCAD_PRO_EST_EXP_COL: TAction;
    ACTPED_VEN_LAN: TAction;
    ACTPED_VEN_ADM: TAction;
    ACTROM_VEN_LAN: TAction;
    ACTROM_VEN_ADM: TAction;
    SBPED_VEN_ADM: TRxSpeedButton;
    SBROM_VEN_ADM: TRxSpeedButton;
    ACTNFE_LAN: TAction;
    ACTNFE_ADM: TAction;
    ACTCFE_LAN: TAction;
    ToolButton12: TToolButton;
    ToolButton1: TToolButton;
    ToolButton14: TToolButton;
    ACTLogin: TAction;
    ACTCAD_PRO_FIC: TAction;
    ACTSenha: TAction;
    ACTImpressoras: TAction;
    ACTSobre: TAction;
    ACTESC: TAction;
    ACTCAD_REP: TAction;
    ACTCAD_FOR: TAction;
    ACTCAI_ABR: TAction;
    ACTCAI_FEC: TAction;
    ACTCAI_REA: TAction;
    ACTCAI_SSP_LAN: TAction;
    ACTCAI_SSP_ADM: TAction;
    ACTCAI_ADM: TAction;
    MMPrincipal: TMainMenu;
    MPCadastros: TMenuItem;
    MICAD_CLI: TMenuItem;
    MICAD_REP: TMenuItem;
    MICAD_N2: TMenuItem;
    MICAD_FOR: TMenuItem;
    MICAD_TRA: TMenuItem;
    MPTabelas: TMenuItem;
    MPEstoque: TMenuItem;
    MICAD_PRO_EST_LAN: TMenuItem;
    MIEST_N1: TMenuItem;
    MICAD_PRO_EST_EXP_MAN: TMenuItem;
    MICAD_PRO_EST_ADM: TMenuItem;
    MIEST_N2: TMenuItem;
    MICAD_PRO_EST_EXP_COL: TMenuItem;
    MICAD_PRO_EST_ETQ: TMenuItem;
    MPCompras: TMenuItem;
    MIPED_COM_LAN: TMenuItem;
    MIPED_COM_ADM: TMenuItem;
    MPPedidos: TMenuItem;
    MIPED_VEN_LAN: TMenuItem;
    MPNFE: TMenuItem;
    MINFE_LAN: TMenuItem;
    MINFE_FOR: TMenuItem;
    MPFinanceiro: TMenuItem;
    MIFIN_REC_ADM: TMenuItem;
    MIFIN_REC_DUP: TMenuItem;
    MIFIN_N1: TMenuItem;
    MIFIN_PAG_ADM: TMenuItem;
    MIFIN_N2: TMenuItem;
    MIFIN_ERB: TMenuItem;
    MIFIN_VAL: TMenuItem;
    MPCaixa: TMenuItem;
    MICAI_ABR: TMenuItem;
    MICAI_REA: TMenuItem;
    MICAI_N1: TMenuItem;
    MICAI_FEC: TMenuItem;
    MICAI_N2: TMenuItem;
    MICAI_SSP_ADM: TMenuItem;
    MICAI_SSP_LAN: TMenuItem;
    MICAI_N3: TMenuItem;
    MPRelatorios: TMenuItem;
    MIREL_PRO: TMenuItem;
    MIREL_CLI: TMenuItem;
    MIREL_FOR: TMenuItem;
    MIREL_VEN: TMenuItem;
    MIREL_REP: TMenuItem;
    MIREL_N4: TMenuItem;
    MIREL_FIN_PAG: TMenuItem;
    MIREL_N5: TMenuItem;
    MIREL_GER: TMenuItem;
    MIREL_N6: TMenuItem;
    MIREL_NFE: TMenuItem;
    MIREL_CFE: TMenuItem;
    MPSheild: TMenuItem;
    MPSobre: TMenuItem;
    MISobre: TMenuItem;
    MPProdutos: TMenuItem;
    MICAD_PRO: TMenuItem;
    MICAD_PRO_GRD: TMenuItem;
    MIPRO_N2: TMenuItem;
    MICAD_PRO_FIC: TMenuItem;
    MIPRO_N3: TMenuItem;
    MICAD_PRO_COL: TMenuItem;
    MICAD_PRO_SEG: TMenuItem;
    MIPRO_N4: TMenuItem;
    MICAD_PRO_GRP: TMenuItem;
    MICAD_PRO_SGP: TMenuItem;
    MIPRO_N5: TMenuItem;
    MICAD_PRO_CAT: TMenuItem;
    MICAD_PRO_SCT: TMenuItem;
    MICAD_PRO_EST_DEF: TMenuItem;
    MICAD_CTNR: TMenuItem;
    MICAD_VEN: TMenuItem;
    MIPED_VEN_ADM: TMenuItem;
    MICOM_N1: TMenuItem;
    MICUSTO_IMP: TMenuItem;
    MPRomaneios: TMenuItem;
    MIROM_VEN_LAN: TMenuItem;
    MIROM_VEN_ADM: TMenuItem;
    MINFE_ADM: TMenuItem;
    MINFE_N1: TMenuItem;
    MIFIN_PAG_COM: TMenuItem;
    MICAD_COM: TMenuItem;
    MICAD_N1: TMenuItem;
    MICAD_N3: TMenuItem;
    MPProgramados: TMenuItem;
    MIPED_PRG_LAN: TMenuItem;
    MIPED_PRG_ADM: TMenuItem;
    MIREL_N1: TMenuItem;
    MIREL_COM: TMenuItem;
    MPCFE: TMenuItem;
    MICFE_LAN: TMenuItem;
    MICFE_ADM: TMenuItem;
    MICAI_ADM: TMenuItem;
    MITAB_NCM: TMenuItem;
    MITAB_N1: TMenuItem;
    MITAB_PAG: TMenuItem;
    MITAB_N2: TMenuItem;
    MITAB_ICMS: TMenuItem;
    MITAB_ICMS_ST: TMenuItem;
    MITAB_N4: TMenuItem;
    MITAB_PED: TMenuItem;
    MITAB_COB: TMenuItem;
    ACTEmConstrucao: TAction;
    MITAB_UCOM: TMenuItem;
    MITAB_IBGE: TMenuItem;
    MITAB_CFOP: TMenuItem;
    MITAB_N3: TMenuItem;
    MIREL_N2: TMenuItem;
    MIREL_FIN_REC: TMenuItem;
    MINFE_SAI_ADM: TMenuItem;
    MICAD_PRO_COR: TMenuItem;
    MIPRO_N1: TMenuItem;
    MICAD_PRO_ETQ: TMenuItem;
    MIREL_N3: TMenuItem;
    MIREL_TRA: TMenuItem;
    ACTCAD_COM: TAction;
    ACTCAD_VEN: TAction;
    ACTCAD_CTNR: TAction;
    ACTCusto_CTNR: TAction;
    ACTCAD_PRO_GRD: TAction;
    ACTCAD_PRO_ETQ: TAction;
    ACTCAD_PRO_SEG: TAction;
    ACTCAD_PRO_COL: TAction;
    ACTCAD_PRO_GRP: TAction;
    ACTCAD_PRO_SGP: TAction;
    ACTCAD_PRO_CAT: TAction;
    ACTCAD_PRO_SCT: TAction;
    ACTCAD_PRO_EST_ETQ: TAction;
    ACTCAD_PRO_EST_DEF: TAction;
    ACTTAB_PAG: TAction;
    ACTTAB_COB: TAction;
    ACTTAB_PED: TAction;
    ACTTAB_NCM: TAction;
    ACTTAB_UCOM: TAction;
    ACTTAB_MUN: TAction;
    ACTTAB_CFOP: TAction;
    ACTTAB_ICMS: TAction;
    ACTTAB_ICMS_ST: TAction;
    MITAB_N5: TMenuItem;
    MITAB_ORI: TMenuItem;
    ACTTAB_ORI: TAction;
    ACTNFE_FOR: TAction;
    ACTNFE_SAI_ADM: TAction;
    MINFE_N2: TMenuItem;
    ACTNFE_SAI_LAN: TAction;
    ACTCFE_ADM: TAction;
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
    psq_proDTEK: TDateTimeField;
    psq_proDTSP: TDateTimeField;
    psq_proDTPV: TDateTimeField;
    psq_proARTIGO: TIBStringField;
    psq_proIDAK: TLargeintField;
    psq_proNCM: TIBStringField;
    psq_proPIPI: TIBBCDField;
    psq_proSKU: TIBStringField;
    psq_proCEAN: TIBStringField;
    psq_proIDEK: TLargeintField;
    psq_proDECP: TIBStringField;
    psq_proDGCP: TIBStringField;
    psq_proCMP_PAD: TIBStringField;
    psq_proUCOM: TIBStringField;
    psq_proCF_ID: TSmallintField;
    psq_proCF_NO: TIBStringField;
    psq_proCF_SKU: TIBStringField;
    psq_proCF_CEAN: TIBStringField;
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
    psq_proORIG: TSmallintField;
    psq_proD_ORIG: TIBStringField;
    psq_proCPAIS: TSmallintField;
    psq_proXPAIS: TIBStringField;
    psq_proFPAIS: TIBStringField;
    psq_proINFADCAD: TIBStringField;
    psq_proEPE_QTDE: TIBBCDField;
    psq_proEPE_QTRL: TIntegerField;
    psq_proERS_QTDE: TIBBCDField;
    psq_proERS_QTRL: TIntegerField;
    psq_proESP_QTDE: TIBBCDField;
    psq_proESP_QTRL: TIntegerField;
    psq_proEST_QTDE: TIBBCDField;
    psq_proEST_QTRL: TIntegerField;
    psq_proCF_VPRC_PAD_ORI: TIBStringField;
    psq_proCF_VPRC_PAD: TFloatField;
    CEAN1: TMenuItem;
    ibSP: TIBStoredProc;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SQLFKEdicao: TIBSQL;
    psq_proIDSK: TLargeintField;
    psq_proCAT_ID: TIntegerField;
    psq_proCAT_NO: TIBStringField;
    psq_proXPAIS_ABREV: TIBStringField;
    psq_proFT_KEY: TIBStringField;
    RSBEstoque: TRxSpeedButton;
    psq_proINFADST: TIBStringField;
    psq_proEXTIPI: TIBStringField;
    psq_proCEST: TIBStringField;
    psq_proDTCP: TIBStringField;
    psq_proUTRIB: TIBStringField;
    psq_proUQVOL: TIBBCDField;
    psq_proUESP: TIBStringField;
    psq_proUCDBE: TIBStringField;
    psq_proUQTDE: TIBBCDField;
    psq_proUQTDE_VEN_MUL: TIBBCDField;
    psq_proUQTDE_VEN_MIN: TIBBCDField;
    psq_proUQTDE_EST_MIN: TIBBCDField;
    psq_proUPSBR: TIBBCDField;
    psq_proUPSLQ: TIBBCDField;
    RSBNFE_CRED_ICMS: TRxSpeedButton;
    ACTNFE_CRED_ICMS: TAction;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton13: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton4: TToolButton;
    ACTFIN_PAG_COM: TAction;
    TTAB_PAR_SIS: TIBTransaction;
    SQLTAB_PAR_SIS: TIBSQL;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cad_usuAfterOpen(DataSet: TDataSet);
    procedure parametrosAfterOpen(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure TTempoTimer(Sender: TObject);
    procedure ACTCAD_CLIExecute(Sender: TObject);
    procedure ACTCAD_TRAExecute(Sender: TObject);
    procedure ACTCAD_PRO_EST_LANExecute(Sender: TObject);
    procedure ACTCAD_PRO_EST_ADMExecute(Sender: TObject);
    procedure ACTCAD_PROExecute(Sender: TObject);
    procedure ACTCAD_PRO_CORExecute(Sender: TObject);
    procedure ACTCAD_PRO_EST_EXP_MANExecute(Sender: TObject);
    procedure ACTCAD_PRO_EST_EXP_COLExecute(Sender: TObject);
    procedure ACTPED_VEN_LANExecute(Sender: TObject);
    procedure ACTPED_VEN_ADMExecute(Sender: TObject);
    procedure ACTROM_VEN_ADMExecute(Sender: TObject);
    procedure ACTNFE_LANExecute(Sender: TObject);
    procedure ACTNFE_ADMExecute(Sender: TObject);
    procedure ACTCFE_LANExecute(Sender: TObject);
    procedure ACTLoginExecute(Sender: TObject);
    procedure ACTSenhaExecute(Sender: TObject);
    procedure ACTImpressorasExecute(Sender: TObject);
    procedure ACTSobreExecute(Sender: TObject);
    procedure ACTESCExecute(Sender: TObject);
    procedure ACTCAD_REPExecute(Sender: TObject);
    procedure ACTCAD_FORExecute(Sender: TObject);
    procedure ACTCAI_ABRExecute(Sender: TObject);
    procedure ACTCAI_FECExecute(Sender: TObject);
    procedure ACTCAI_SSP_ADMExecute(Sender: TObject);
    procedure ACTCAI_SSP_LANExecute(Sender: TObject);
    procedure ACTCAI_ADMExecute(Sender: TObject);
    procedure ACTCAI_REAExecute(Sender: TObject);
    procedure ACTEmConstrucaoExecute(Sender: TObject);
    procedure rsbLOGClick(Sender: TObject);
    procedure CEAN1Click(Sender: TObject);
    procedure ACTNFE_CRED_ICMSExecute(Sender: TObject);
    procedure ACTFIN_PAG_COMExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure _TrimAppMemorySize;
  public
   PAR_DEMP: String;

    { Public declarations }
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet);
    procedure Log_Eve(func,roti,even,ceve,codi,desc,auto,taut: string);
    procedure FazPrnAtualVirarDefault(IMPRESSORA: STRING);

    function  PESQUISA_PRODUTO(campo: string ='' ;cpro: string = '';ARefresh: boolean = true): integer;
    function  RETORNA_LOGIN : boolean;
    function  ACESSO(cusu,campo,func,roti,nome: string;proc: boolean): boolean;
  end;

procedure uFrmCreate(AOwner: TComponent;AFClass: TFormClass; var AInstance); STDCall;
procedure uRepaintMainForm(AForm: TForm); STDCall;
procedure uDisabledMainForm; STDCall;
procedure uJPEGStream(Campo: TField; Imagem: TPicture); STDCall;
procedure uEmConstrucao(ACaption: String = ''); STDCall;

procedure uPSQCAD(var ARECPedido : TRECPedidos); STDCall; { Cadastros: Clientes, Fornecedores, Transportadoras, Compradores, Vendedores, Representantes e Agenda; }

function  uPSQNotaFiscal(Texto: String;Mostrar: Boolean = True): Boolean; STDCall;

var
  FrmPrincipal  : TFrmPrincipal;
  PCampo        : Array of shortstring;
  APSQ_ROM_EST,
  APSQ_PED_VEN,
  APSQ_CAD_PRO  : String;
  AUTORIZACAO   : string;
  TP_AUTORIZACAO: string;
  ID_AUTORIZACAO: string;
  Campo_Pesquisa: string;

implementation

uses bDados, uFrmLogin, pSobre,
  pcad_cli, ppar_pri,
  pcad_pro, pcad_rep, pcad_tra, pcad_for, ptab_cor,
  ptab_nat, ptab_pag, ptab_mun,
  pent_pro, pctr_pro,
  psenha,
  pcad_pro_con,
  pcai_abr, pcai_mov, pcai_tsr,
  pven_ped, pctr_ped,
  pven_nfe, pctr_ped_sep, pctr_rom, pctr_nfe,
  pcai_sar, pcai_fec, 
  pcai_sar_edi, pCFeSat, pEmConstrucao, pPSQCAD, pFIN_PAG_COM;


{$R *.dfm}

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
        SQL.Add('SELECT PK.* FROM ' + ARECPedido.VWCD + ' AS PK');
        SQL.Add('WHERE ' + ARECPedido.FIELD + ' ' + IFThen(Pos('ID',ARECPedido.FIELD) > 0,'=','CONTAINING') + ' ''' + ARECPedido.VALUE + '''');
        SQL.Add('ORDER BY PK.DEST,PK.DECD');

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
          ARECPedido.IDESTRANGEIRO := Current.ByName('IDESTRANGEIRO').AsString;

          { Endereço Comercial }
          ARECPedido.LOG_NU :=  Current.ByName('LOG_NU').AsString;
          ARECPedido.TLO_TX :=  Current.ByName('TLO_TX').AsString;
          ARECPedido.LOG_NO :=  Current.ByName('LOG_NO').AsString;
          ARECPedido.NRO    :=  Current.ByName('NRO'   ).AsString;
          ARECPedido.XCPL   :=  Current.ByName('XCPL'  ).AsString;
          ARECPedido.CEP    :=  Current.ByName('CEP'   ).AsString;
          ARECPedido.BAI_NO :=  Current.ByName('BAI_NO').AsString;
          ARECPedido.LOC_NO :=  Current.ByName('LOC_NO').AsString;
          ARECPedido.CMUN   :=  Current.ByName('CMUN'  ).AsString;
          ARECPedido.UF     :=  Current.ByName('UF'    ).AsString;

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
             TFrmPSQCAD.ExecForm(Nil,FrmPSQCAD,fsStayOnTop,-3,'Consulta',ARECPedido.CDCD,ARECPedido.FIELD + ' ' + IFThen(Pos('ID',ARECPedido.FIELD) > 0,'=','CONTAINING') + ' ''' + ARECPedido.VALUE + '''');
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

procedure uRepaintMainForm(AForm: TForm); STDCall;
var
  BPNLPrincipal,BPNLUtil: Boolean;
  PNLPrincipal ,PNLUtil : TPanel;
  i: Word;
begin
  if (Application.MainForm <> Nil) and (AForm <> Nil) then
      with Application.MainForm do
      begin
        AForm.HelpKeyword := '4';

        PNLPrincipal := FindComponent('PNLPrincipal') as TPanel;
        PNLUtil      := FindComponent('PNLUtil')      as TPanel;

        if (PNLPrincipal <> Nil) and (PNLUtil <> Nil) then
            if (not PNLPrincipal.Visible) or (not PNLUtil.Visible) then
            begin
              BPNLPrincipal := True;
              BPNLUtil      := True;

              if MDIChildCount > 0 then
                 for I := MDIChildCount-1 downto 0 do
                     if MDIChildren[I].Name <> AForm.Name then
                        if MDIChildren[I].HelpKeyword = '1' then
                           BPNLUtil := False
                        else
                           if MDIChildren[I].HelpKeyword = '2' then
                              BPNLPrincipal := False
                           else
                              if MDIChildren[I].HelpKeyword = '3' then
                              begin
                                BPNLPrincipal := False;
                                BPNLUtil      := False;
                              end;

              PNLPrincipal.Visible := BPNLPrincipal;
              PNLPrincipal.Refresh;

              PNLUtil.Visible := BPNLUtil;
              PNLUtil.Refresh;
            end;
      end;
end;

procedure uDisabledMainForm; STDCall;
var
  PNLPrincipal,
  PNLUtil: TPanel;
begin
  if  Application.MainForm <> Nil then
      with Application.MainForm do
      begin
        PNLPrincipal := FindComponent('PNLPrincipal') as TPanel;
        PNLUtil      := FindComponent('PNLUtil')      as TPanel;

        if (PNLPrincipal <> Nil) and (PNLUtil <> Nil) then
        begin
          PNLPrincipal.Visible := False;
          PNLPrincipal.Refresh;

          PNLUtil.Visible := False;
          PNLUtil.Refresh;

          Repaint;
        end;
      end;
end;

procedure uJPEGStream(Campo: TField; Imagem: TPicture); STDCall;
var
  JPEGImagem: TJPEGImage;
  BlobStream: TMemoryStream;
begin
  JPEGImagem := TJPEGImage.Create;
  BlobStream := TMemoryStream.Create;

  try
    if not oEmpty(RECParametros.ID) then
    with FrmPrincipal do
    begin
      { Cria objeto do tipo TJPEG, e objeto do tipo MemoryStream }
      { Trata o campo como do tipo BLOB e salva o seu conteudo na memória. }
      if Not Campo.IsNull then
      TBlobField(Campo).SaveToStream(BlobStream) else
      TBlobField(RECParametros.IMG_JPG_BLANK).SaveToStream(BlobStream);
      { Ajusta a posicao inicial de leitura da memória }
       BlobStream.Position := 0;
      { Carrega da memoria os dados, para uma estrutura do tipo TJPEG }
      { A partir da posicao 0}
      JPEGImagem.LoadFromStream(BlobStream);
      { Exibe o jpeg no Timage. }
      Imagem.Assign(JPEGImagem);
    end;
  finally
    { Libera a memoria utilizada pelos componentes de conversão }
    JPEGImagem.Free;
    BlobStream.Free;
  end;
end;

procedure uEmConstrucao(ACaption: String = ''); STDCall;
begin
  uFrmCreate(Nil,TFrmEmConstrucao,FrmEmConstrucao);
end;

function uPSQNotaFiscal(Texto: String;Mostrar: Boolean = True): Boolean; STDCall;
var
  i: Word;
begin
  result := True;
  Texto  := IntToStr(StrToInt(Trim(Texto)));
  with DMDados,QFBCadastro do
  if oBSONumero(Texto) then
  try
    oRTransact(TFBCadastro);
    SQL.Clear;
    for i := 1 to 9 do
    begin
      SQL.Add('SELECT NFE_CDNF,NFE_DEMI,NFE_DFAV,NFE_DTRA,NFE_DVEN,NFE_DREP');
      SQL.Add('FROM   PAR_SIS,'+oREPZero('nfe_cab','_',i,3)+ ' "NFE_CAB"');
      SQL.Add('WHERE  PAR_SIS.ID       = '''+IntToStr(i)+'''');
      SQL.Add('AND    PAR_SIS.PAR_CNPJ = '''+FrmPrincipal.ParametrosPAR_CNPJ.AsString+'''');
      SQL.Add('AND    NFE_CAB.NFE_CDNF = '''+Texto+'''');
      SQL.Add('AND    NFE_CAB.NFE_CHAV <> '' ''');
      if i < 9 then
      SQL.Add('UNION');
    end;
    Open;
    if Fields[0].AsInteger > 0 then
    begin
      result := False;
      if Mostrar then
      oErro(FrmPrincipal.Handle,'Número de Nota Fiscal já Emitida !'+#13+#13+
              'Favorecido..: '+Fields[2].AsString+IFThen((Fields[4].AsString <> '') and (Fields[5].AsString <> ''),#13+
              'Vendedores.: ' +Fields[4].AsString+' / '+Fields[5].AsString,'')+#13+#13+
              'Emitido em..............: '+FormatDateTime('dd/mm/yy hh:mm',Fields[1].AsDateTime)+#13+
              'Frete por conta de..: '    +Fields[3].AsString);
    end;
  finally
    oCTransact(TFBCadastro);
  end;
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

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  if ClientHandle <> 0 then
  begin
    if (not (GetWindowLong(ClientHandle, GWL_USERDATA) <> 0)) then
    SetWindowLong(ClientHandle, GWL_USERDATA, SetWindowLong(ClientHandle, GWL_WNDPROC, integer(@ClientWindowProc)));
  end;

  SetLength(PCampo,4);

  CurrencyString    := 'R$';
  ThousandSeparator := '.';
  DecimalSeparator  := ',';

  if frmlogin.editado then
  begin
    oOTransact(IBTra);

    cad_usu.Close;
    cad_usu.ParamByName('USU_CUSU').AsString := frmlogin.cad_usuUSU_CUSU.AsString;
    cad_usu.Open;

    frmlogin.cad_usu.Edit;
    frmlogin.cad_usuUSU_DULT.Value := now;
    frmlogin.cad_usu.Post;

    frmlogin.IBTra.Commit;
  end;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  if SLPrincipal = nil then
  Exit;

  with par_pri do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM '+SLPrincipal.Values['par_pri']);
    SQL.Add('WHERE PRI_IP = ''' + RECParametros.IP + '''');
    Open;
  end;
  tag := 0;
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  var i: Word;
begin
  if   Application.MainForm <> Nil then
  with Application.MainForm do
  try
    for i := MDIChildCount - 1 downto 0 do
          if MDIChildren[i] <> Nil then
             MDIChildren[i].Free;
  except
    on E: Exception do
       oException(Nil,'Falha ao tentar fechar automaticamente as páginas !'+#13+
                      'Favor fechá-los manualmente.'+#13+#13+
                      'Error Code: '+E.Message);
  end;

  if RECParametros.ID > 0 then
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
  _TrimAppMemorySize
end;

procedure TFrmPrincipal.FormPaint(Sender: TObject);
var
  XRect   : TRect;
  WLargura: Word;
begin
  if Showing then
  begin
    { SBRodape.Tag = 27 }
    { Painel Conexão }
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
    31..35: WLargura := 220;
    36..40: WLargura := 250;
    41..45: WLargura := 280;
    46..50: WLargura := 310;
    51..55: WLargura := 360;
    56..60: WLargura := 390;
    61..65: WLargura := 420;
    66..70: WLargura := 450;
    end;
    SBRodape.Panels[1].Width := WLargura;
    SBRodape.Panels[0].Width := SBRodape.Width - 20 - (SBRodape.Panels[1].Width+SBRodape.Panels[2].Width+SBRodape.Panels[3].Width+
                                                       SBRodape.Panels[4].Width+SBRodape.Panels[5].Width+SBRodape.Panels[6].Width);
    XRect.Left   := IFotoFundo.Left;
    XRect.Top    := IFotoFundo.Top - (IFThen(PNLUtil.Visible,0,PNLUtil.Height));
    XRect.Right  := Screen.Width;
    XRect.Bottom := Screen.Height  - (IFThen(PNLUtil.Visible,PNLUtil.Height,0) + SBRodape.Height);

    Canvas.StretchDraw(xRect,IFotoFundo.Picture.Graphic);

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

procedure TFrmPrincipal._TrimAppMemorySize;
var
  MainHandle: THandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, False, GetCurrentProcessID);
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF);
    CloseHandle(MainHandle);
  except
    ;
  end;
end;

procedure TFrmPrincipal.TTempoTimer(Sender: TObject);
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
     with FrmPrincipal, DMDados do
     begin
       RECParametros.SecondsIdle := SecondsIdle;

       SBRodape.Panels[2].Text := RECParametros.STCX;
       SBRodape.Panels[4].Text := Format('Tempo Ocioso: %d',[RECParametros.SecondsIdle]);

       if RECParametros.SecondsIdle > 0 then
          if RECParametros.SecondsIdle mod 300 = 0  then
          begin
            { Main DB }
            if not DMDados.IBDB.TestConnected then
               try
                 IBDB.CloseDataSets;
                 IBDB.ForceClose;

                 SleepEx(100,False);
                 IBDB.Connected := True;
               except
                 ;
               end;

            if DMDados.IBDB.TestConnected then
               try
                 oRTransact(TFBEdicao);
                 with SQLFBEdicao do
                 begin
                   Close;
                   SQL.Clear;
                   SQL.Add('SELECT * FROM rdb$Database');
                   ExecQuery;
                 end;
                 oCTransact(TFBEdicao);
               except
                 oCTransact(TFBEdicao,ltRollback);
               end;

            if RECParametros.CDCX = 0 then
               bExecEvent('Caixa');
          end;
     end;     
end;

procedure TFrmPrincipal.ACTLoginExecute(Sender: TObject);
var
  i: integer;
begin
  if frmlogin = nil then
  begin
    for I := MDIChildCount-1 downto 0 do
        if MDIChildren[I] <> nil then
           MDIChildren[I].Close;

    frmlogin     := Tfrmlogin.create(Application);
    frmlogin.Tag := frmprincipal.Tag;
    frmlogin.Update;
    try
      frmlogin.ShowModal;
    finally
      if frmlogin.editado then
      begin
        cad_usu.Close;
        cad_usu.ParamByName('USU_CUSU').AsString := frmlogin.cad_usuUSU_CUSU.AsString;
        cad_usu.Open;
      end;
      paint;
    end;
  end;
end;

procedure TFrmPrincipal.ACTSenhaExecute(Sender: TObject);
begin
    Application.CreateForm (Tfrmsenha, frmsenha);
    try
      frmsenha.dusu := cad_usuUSU_DUSU.AsString;
      frmsenha.ShowModal;
    finally
      if frmsenha.editado then
      begin
        cad_usu.Edit;
        cad_usuUSU_PASS.Value := frmsenha.edpassN.Text;
        cad_usu.Post;
        IBTra.CommitRetaining;
      end;
      freeAndnil(frmsenha);
      frmsenha.Free;
    end;

    cad_usu.Close;
    cad_usu.Open;
end;

procedure TFrmPrincipal.ACTImpressorasExecute(Sender: TObject);
begin
  if frmpar_pri = nil then
  begin
    if not ACESSO(RECUsuarios.ID,'USU_VISU','Utilitários','Parametros de Impressão','Permissões Gerais',false) then
       raise exception.Create('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');

    Application.CreateForm (TfrmPar_Pri, frmPar_Pri);
    try
      frmPar_Pri.ShowModal;
    finally
      par_pri.Close;
      par_pri.Open;

      freeAndnil(frmpar_pri);
    end;
  end;
end;

procedure TFrmPrincipal.ACTSobreExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmSobre,FrmSobre);
end;

procedure TFrmPrincipal.ACTESCExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.ACTEmConstrucaoExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

{ *************** CADASTROS *************** }
procedure TFrmPrincipal.ACTCAD_CLIExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmcad_cli,frmcad_cli);
end;

procedure TFrmPrincipal.ACTCAD_REPExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmcad_rep,frmcad_rep);
end;

procedure TFrmPrincipal.ACTCAD_FORExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmcad_for,frmcad_for);
end;

procedure TFrmPrincipal.ACTCAD_TRAExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmcad_tra,frmcad_tra);
end;

{ *************** PRODUTOS *************** }
procedure TFrmPrincipal.ACTCAD_PROExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmcad_pro,frmcad_pro);
end;

procedure TFrmPrincipal.ACTCAD_PRO_CORExecute(Sender: TObject);
begin
  Application.CreateForm (Tfrmtab_cor, frmtab_cor);
  frmtab_cor.Show;
end;

{ *************** ESTOQUE *************** }
procedure TFrmPrincipal.ACTCAD_PRO_EST_LANExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrment_pro,frment_pro);
end;

procedure TFrmPrincipal.ACTCAD_PRO_EST_ADMExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmctr_pro,frmctr_pro);
end;

procedure TFrmPrincipal.ACTCAD_PRO_EST_EXP_MANExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmctr_ped_sep,frmctr_ped_sep);
end;

procedure TFrmPrincipal.ACTCAD_PRO_EST_EXP_COLExecute(Sender: TObject);
begin
  {}
end;

{ *************** PEDIDOS *************** }
procedure TFrmPrincipal.ACTPED_VEN_LANExecute(Sender: TObject);
begin
  if Assigned(FRMVEN_PED) then FRMVEN_PED.BringToFront else
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   ID,CAI_DECX,CAI_DABR,CAI_DFEC FROM CAI_LAF');
      SQL.Add('WHERE    CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('ORDER BY CAI_DABR DESC');
      Open;

      if strtodate(SLPrincipal.Values['data_caixa']) > fields[2].AsDateTime  then
      raise exception.Create('Caixa não aberto !');

      if not fields[3].IsNull then
      raise exception.Create('Caixa já fechado !');
    end;

    uFrmCreate(Nil,Tfrmven_ped,frmven_ped);
  end;
end;

procedure TFrmPrincipal.ACTPED_VEN_ADMExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmctr_ped,frmctr_ped);
end;

{ *************** ROMANEIOS *************** }
procedure TFrmPrincipal.ACTROM_VEN_ADMExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmctr_rom,frmctr_rom);
end;

{ *************** FISCAL *************** }
procedure TFrmPrincipal.ACTNFE_LANExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmven_nfe,frmven_nfe);
end;

procedure TFrmPrincipal.ACTNFE_ADMExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmctr_nfe,frmctr_nfe);
end;

procedure TFrmPrincipal.ACTCFE_LANExecute(Sender: TObject);
var
  Numero: String;
begin
  if oEmpty(RECParametros.CFE_API_TOKEN) then
  oException(Nil,'Emissor de CFeSat não Disponível !');

  if Assigned(frmctr_ped) then
  Numero := frmctr_ped.cadastroDEPK.AsString else
  Numero := '0';

  FrmCFeSat := TFrmCFeSat.Create(Nil,Numero);
  try FrmCFeSat.ShowModal;
  finally FreeAndNil(FrmCFeSat);
  end;
end;

{ *************** CAIXA *************** }
procedure TFrmPrincipal.ACTCAI_ABRExecute(Sender: TObject);
begin
  if frmcai_abr = nil then
  begin
    Application.CreateForm (Tfrmcai_abr, frmcai_abr);
    frmcai_abr.ShowModal;
  end;
end;

procedure TFrmPrincipal.ACTCAI_REAExecute(Sender: TObject);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ID,CAI_DECX,CAI_DABR,CAI_DFEC FROM CAI_LAF');
    SQL.Add('WHERE    CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    SQL.Add('ORDER BY CAI_DABR DESC');
    Open;

    if fields[3].IsNull then
       raise exception.Create('Caixa não fechado para re-abertura !');
  end;

  if oYesNo(handle,'Confirma re-abertura do caixa '+consulta.fields[1].AsString+' ('+consulta.fields[0].AsString+') '+formatDateTime('dd/mm/yy',consulta.fields[2].AsDateTime)) = mrno then
     abort;

  with aux do
  begin
    SQL.Clear;
    SQL.Add('UPDATE CAI_LAF');
    SQL.Add('SET    CAI_DFEC = NULL,');
    SQL.Add('       CAI_HFEC = NULL' );
    SQL.Add('WHERE  ID = '''+consulta.Fields[0].AsString+'''');
    ExecSQL;
    IBTra.CommitRetaining;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CAI_DABR FROM CAI_LAF');
    SQL.Add('WHERE    CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    SQL.Add('ORDER BY CAI_DABR DESC');
    Open;

    if not fields[0].IsNull then
       SLPrincipal.Values['data_caixa'] := formatDateTime('dd/mm/yy',Fields[0].AsDateTime);
  end;

  messageBox(handle,'Caixa Re-Aberto com Sucesso !','Sistema de Vendas',MB_ICONINFORMATION+MB_OK);
end;

procedure TFrmPrincipal.ACTCAI_FECExecute(Sender: TObject);
begin
  if frmcai_fec = nil then
  begin
    Application.CreateForm (Tfrmcai_fec, frmcai_fec);
    frmcai_fec.ShowModal;
  end;
end;

procedure TFrmPrincipal.ACTCAI_SSP_ADMExecute(Sender: TObject);
begin
  if frmcai_sar = nil then
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   ID,CAI_DECX,CAI_DABR,CAI_DFEC FROM CAI_LAF');
      SQL.Add('WHERE    CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('ORDER BY CAI_DABR DESC');
      Open;

      if strtodate(SLPrincipal.Values['data_caixa']) > fields[2].AsDateTime  then
         raise exception.Create('Caixa não aberto !');

      if not fields[3].IsNull then
         raise exception.Create('Caixa já fechado !');
    end;

    Application.CreateForm (Tfrmcai_sar, frmcai_sar);
    frmcai_sar.cadastro.Tag := consulta.Fields[0].AsInteger;
    frmcai_sar.Show;
  end;
end;

procedure TFrmPrincipal.ACTCAI_SSP_LANExecute(Sender: TObject);
begin
  if frmcai_tsr = nil then
  begin
    Application.CreateForm (Tfrmcai_tsr, frmcai_tsr);
    frmcai_tsr.Show;
  end;
end;

procedure TFrmPrincipal.ACTCAI_ADMExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmcai_mov,frmcai_mov);
end;

{ *********************** PAGAMENTOS *********************** }
procedure TFrmPrincipal.ACTFIN_PAG_COMExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmFIN_PAG_COM,FrmFIN_PAG_COM);
end;

procedure TFrmPrincipal.cad_usuAfterOpen(DataSet: TDataSet);
begin
  RECUsuarios.ID       := FrmPrincipal.cad_usuUSU_CUSU.AsString;
  RECUsuarios.Login    := FrmPrincipal.cad_usuUSU_DUSU.AsString;
  RECUsuarios.Nome     := FrmPrincipal.cad_usuUSU_Nome.AsString;
  RECUsuarios.Grupo    := FrmPrincipal.cad_usuUSU_Menu.AsString;
  RECUsuarios.DTAcesso := dATE;
  RECUsuarios.CurrentPrinter := '';

  if Assigned(frmlogin) then
     PAR_DEMP := frmlogin.cbpes.Text;

  Parametros.Close;
  Parametros.Params[0].Value := PAR_DEMP;
  Parametros.Open;

  SLPrincipal                           := TStringList.Create;
  SLPrincipal.Values['cad_pro_prc']     := 'cad_pro_prc';
  SLPrincipal.Values['cad_pro_prg']     := 'cad_pro_prg';
  SLPrincipal.Values['fin_pag']         := 'fin_pag';
  SLPrincipal.Values['fin_pag_rec']     := 'fin_pag_rec';
  SLPrincipal.Values['fin_pag_bai']     := 'fin_pag_bai';
  SLPrincipal.Values['fin_pag_coc']     := 'fin_pag_coc';
  SLPrincipal.Values['fin_pag_coi']     := 'fin_pag_coi';
  SLPrincipal.Values['fin_pag_dup']     := 'fin_pag_dup';
  SLPrincipal.Values['fin_pag_obs']     := 'fin_pag_obs';
  SLPrincipal.Values['fin_rec']         := 'fin_rec';
  SLPrincipal.Values['fin_rec_dup']     := 'fin_rec_dup';
  SLPrincipal.Values['fin_rec_obs']     := 'fin_rec_obs';
  SLPrincipal.Values['fin_rec_ban_bai'] := 'fin_rec_ban_bai';
  SLPrincipal.Values['fin_rec_car_bai'] := 'fin_rec_car_bai';
  SLPrincipal.Values['fin_rec_car_rec'] := 'fin_rec_car_rec';
  SLPrincipal.Values['fin_rec_ban_rec'] := 'fin_rec_ban_rec';
  SLPrincipal.Values['log_eve']         := 'log_eve';
  SLPrincipal.Values['log_wor']         := 'log_wor';
  SLPrincipal.Values['nfe_cab']         := 'nfe_cab';
  SLPrincipal.Values['nfe_dup']         := 'nfe_dup';
  SLPrincipal.Values['nfe_ite']         := 'nfe_ite';
  SLPrincipal.Values['nfe_tra']         := 'nfe_tra';
  SLPrincipal.Values['par_pri']         := 'par_pri';
  SLPrincipal.Values['ped_avi_cab']     := 'ped_avi_cab';
  SLPrincipal.Values['ped_avi_ite']     := 'ped_avi_ite';
  SLPrincipal.Values['ped_oca_cab']     := 'ped_oca_cab';
  SLPrincipal.Values['ped_oca_ite']     := 'ped_oca_ite';
  SLPrincipal.Values['ped_com_cab']     := 'ped_com_cab';
  SLPrincipal.Values['ped_com_ite']     := 'ped_com_ite';
  SLPrincipal.Values['ped_prg_cab']     := 'ped_prg_cab';
  SLPrincipal.Values['ped_prg_ite']     := 'ped_prg_ite';
  SLPrincipal.Values['ped_tec_cab']     := 'ped_tec_cab';
  SLPrincipal.Values['ped_tec_ite']     := 'ped_tec_ite';
  SLPrincipal.Values['ped_ven_cab']     := 'ped_ven_cab';
  SLPrincipal.Values['ped_ven_ite']     := 'ped_ven_ite';
  SLPrincipal.Values['rom_cab']         := 'rom_cab';
  SLPrincipal.Values['rom_ite']         := 'rom_ite';
  SLPrincipal.Values['rom_des']         := 'rom_des';
  SLPrincipal.Values['tab_alq']         := 'tab_alq';
  SLPrincipal.Values['tab_ban']         := 'tab_ban';

  SLPrincipal.Values['autorizacao']     := '';
  SLPrincipal.Values['data_limite']     := formatDateTime('dd/mm/yy',incDay(consulta.Fields[0].AsDateTime,strtoint(formatfloat('-0',cad_usuUSU_DIAS.AsInteger))));
  SLPrincipal.Values['data_sistema']    := formatDateTime('dd/mm/yy',consulta.Fields[0].AsDateTime);
  SLPrincipal.Values['data_caixa']      := formatDateTime('dd/mm/yy',consulta.Fields[0].AsDateTime);
  SLPrincipal.Values['departamento']    := cad_usuUSU_MENU.AsString;

  { *************** CADASTROS *************** }
  ACTCAD_CLI.Enabled  := ACESSO(RECUsuarios.ID,'USU_VISU','Clientes'      ,'Cadastro','Permissões Gerais',false);
  ACTCAD_REP.Enabled  := ACESSO(RECUsuarios.ID,'USU_VISU','Representantes','Cadastro','Permissões Gerais',false);
  ACTCAD_VEN.Enabled  := False;

  ACTCAD_FOR.Enabled  := ACESSO(RECUsuarios.ID,'USU_VISU','Fornecedores'   ,'Cadastro','Permissões Gerais',false);
  ACTCAD_COM.Enabled  := False;

  ACTCAD_TRA.Enabled  := ACESSO(RECUsuarios.ID,'USU_VISU','Transportadoras','Cadastro','Permissões Gerais',false);
  ACTCAD_CTNR.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Containers'     ,'Cadastro','Permissões Gerais',false);

  { *************** PRODUTOS *************** }
  ACTCAD_PRO.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Produtos','Cadastro','Permissões Gerais',false);

  ACTCAD_PRO_COR.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas','Cores','Permissões Gerais',false);
  ACTCAD_PRO_GRD.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas','Grade','Permissões Gerais',false);

  ACTCAD_PRO_ETQ.Enabled := True;
  ACTCAD_PRO_FIC.Enabled := True;

  ACTCAD_PRO_SEG.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas','Segmentos','Permissões Gerais',false);
  ACTCAD_PRO_COL.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas','Coleções' ,'Permissões Gerais',false);

  ACTCAD_PRO_GRP.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas','Grupos','Permissões Gerais',false);
  ACTCAD_PRO_SGP.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas','Grupos','Permissões Gerais',false);

  ACTCAD_PRO_CAT.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas','Categorias','Permissões Gerais',false);
  ACTCAD_PRO_SCT.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas','Categorias','Permissões Gerais',false);

  { *************** ESTOQUE *************** }
  ACTCAD_PRO_EST_LAN.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Produtos','Estoque','Lançamentos',false);
  ACTCAD_PRO_EST_ADM.Enabled := ACTCAD_PRO_EST_LAN.Enabled;
  ACTCAD_PRO_EST_ETQ.Enabled := ACTCAD_PRO_EST_LAN.Enabled;

  ACTCAD_PRO_EST_EXP_MAN.Enabled := ACESSO(RECUsuarios.ID,'USU_AUTO','Vendas','Pedidos','Separar',false);
  ACTCAD_PRO_EST_EXP_COL.Enabled := False;

  ACTCAD_PRO_EST_DEF.Enabled := False;

  { *************** TABELA *************** }
  ACTTAB_PAG.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas','Condições de Pagamentos','Permissões Gerais',false);

  ACTTAB_COB.Enabled := False;
  ACTTAB_PED.Enabled := False;

  ACTTAB_NCM.Enabled  := False;
  ACTTAB_UCOM.Enabled := False;

  ACTTAB_MUN.Enabled  := False;
  ACTTAB_CFOP.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas','Naturezas de Operações','Permissões Gerais',false);

  ACTTAB_ICMS.Enabled    := False;
  ACTTAB_ICMS_ST.Enabled := False;

  ACTTAB_ORI.Enabled := False;

  { *************** CAIXA *************** }
  ACTCAI_ABR.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro','Caixa','Abertura'  ,false);
  ACTCAI_ABR.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro','Caixa','Abertura'  ,false);
  ACTCAI_FEC.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro','Caixa','Fechamento',false);
  ACTCAI_ADM.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro','Caixa','Movimentos',false);

  MPCaixa.Visible := (ACTCAI_ABR.Enabled) or (ACTCAI_FEC.Enabled) or (ACTCAI_ADM.Enabled);

  ACTCAI_SSP_ADM.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro','Caixa','Sangria \ Reforço'         ,false);
  ACTCAI_SSP_LAN.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro','Caixa','Tipos de Sangria \ Reforço',false);

  { *************** VENDAS *************** }
  ACTPED_VEN_LAN.Enabled := ACESSO(RECUsuarios.ID,'USU_AUTO','Vendas','Pedidos','Incluir'  ,false);
  ACTPED_VEN_ADM.Enabled := ACESSO(RECUsuarios.ID,'USU_AUTO','Vendas','Pedidos','Controlar',false);

  { *************** ROMANEIOS *************** }
  ACTROM_VEN_LAN.Enabled := False;
  ACTROM_VEN_ADM.Enabled := ACESSO(RECUsuarios.ID,'USU_AUTO','Vendas','Romaneios','Incluir',false);

  { *************** NOTAS FISCAIS *************** }
  ACTNFE_LAN.Enabled := ACESSO(RECUsuarios.ID,'USU_AUTO','Nota Fiscal','Vendas','Incluir'   ,false);
  ACTNFE_ADM.Enabled := ACESSO(RECUsuarios.ID,'USU_AUTO','Nota Fiscal','Vendas','Visualizar',false);
  ACTNFE_FOR.Enabled := False;

  ACTNFE_SAI_LAN.Enabled := False;
  ACTNFE_SAI_ADM.Enabled := False;

  { *************** CUPONS FISCAIS *************** }
  ACTCFE_LAN.Enabled := True;
  ACTCFE_ADM.Enabled := True;

  MPSheild.Visible := (RECUsuarios.Id = 0);

  { *************** PAGAMENTOS *************** }
  ACTFIN_PAG_COM.Enabled := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro','Pagamentos','Comissões',False);
  MPFinanceiro.Visible   := ACTFIN_PAG_COM.Enabled;


  {
  ACTCTR_PED.Enabled := ACESSO(RECUsuarios.ID,'USU_AUTO','Vendas','Pedidos'  ,'Incluir',false);



  mcad_cli_cad.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Clientes'        ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  mcad_for_cad.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Fornecedores'    ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  mcad_rep.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Representantes'  ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  mcad_com.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Compradores'     ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  mcad_fun.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Funcionários'    ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  mcad_fun_cad.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Funcionários'    ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  mcad_fun_dep.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Funcionários'    ,'Departamentos'             ,'Permissões Gerais'                  ,false);
  mcad_fun_sec.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Funcionários'    ,'Seções'                    ,'Permissões Gerais'                  ,false);
  mcad_fun_car.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Funcionários'    ,'Cargos'                    ,'Permissões Gerais'                  ,false);
  mcad_fun_vin.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Funcionários'    ,'Vínculos'                  ,'Permissões Gerais'                  ,false);
  mcad_tra.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Transportadoras' ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  mcad_pro_cad.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Produtos'        ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  mcad_pro_lan.Enabled       :=
  SBCAD_PRO_EST.Enabled      := mcad_pro_lan.Enabled;
  mcad_pro_ctr.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Produtos'        ,'Estoque'                   ,'Controle de Lançamentos'            ,false);
  mcad_pro_con.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Produtos'        ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  mcad_tab_epo.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Local de Estoque','Cadastro'                  ,'Permissões Gerais'                  ,false);

  mtab_ibx.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Contas a Receber'          ,'Cadastro de Contas'                 ,false);
  mtab_icm.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas'         ,'I.C.M.S.'                  ,'Permissões Gerais'                  ,false);
  mtab_nat.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas'         ,'Naturezas de Operações'    ,'Permissões Gerais'                  ,false);
  mtab_pag.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas'         ,'Condições de Pagamentos'   ,'Permissões Gerais'                  ,false);
  mtab_cob.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas'         ,'Tipos de Cobranças'        ,'Permissões Gerais'                  ,false);
  mtab_ped.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas'         ,'Tipos de Pedidos'          ,'Permissões Gerais'                  ,false);
  mtab_uni.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas'         ,'Unidades de Medidas'       ,'Permissões Gerais'                  ,false);
  mtab_emb.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas'         ,'Embalagens'                ,'Permissões Gerais'                  ,false);
  mtab_cor.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas'         ,'Cores'                     ,'Permissões Gerais'                  ,false);
  mtab_cat.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas'         ,'Categorias'                ,'Permissões Gerais'                  ,false);
  mtab_grp.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas'         ,'Grupos'                    ,'Permissões Gerais'                  ,false);
  mtab_lan.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas'         ,'Lançamentos de Estoque'    ,'Permissões Gerais'                  ,false);
  mtab_col.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas'         ,'Coleções'                  ,'Permissões Gerais'                  ,false);
  mtab_ncm.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas'         ,'Classificação Fiscal'      ,'Permissões Gerais'                  ,false);
  mtab_ncm.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas'         ,'Centro de Custo'           ,'Permissões Gerais'                  ,false);
  mtab_pla.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas'         ,'Plano de Contas'           ,'Permissões Gerais'                  ,false);
  mtab_cus.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas'         ,'Centro de Custo'           ,'Permissões Gerais'                  ,false);
  mtab_tpl.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas'         ,'Tipos de Planos de Contas' ,'Permissões Gerais'                  ,false);
  mtab_grd.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Produtos'        ,'Cadastro'                  ,'Grade'                              ,false);
  mtab_ori.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Tabelas'         ,'Origem de Mercadorias'     ,'Permissões Gerais'                  ,false);

  mcom_prc.Enabled           := ACESSO(RECUsuarios.ID,'USU_AUTO','Compras'         ,'Programações'              ,'Incluir'                            ,false);
  mcom_ctr_prc.Enabled       := ACESSO(RECUsuarios.ID,'USU_AUTO','Compras'         ,'Programações'              ,'Controlar'                          ,false);

  mNF_EMI.Enabled            := ACESSO(RECUsuarios.ID,'USU_AUTO','Nota Fiscal'     ,'Vendas'                    ,'Incluir'                            ,false);
  mNF_CTR.Enabled            := ACESSO(RECUsuarios.ID,'USU_AUTO','Nota Fiscal'     ,'Vendas'                    ,'Visualizar'                         ,false);
  mNF_LOG.Enabled            := ACESSO(RECUsuarios.ID,'USU_AUTO','Nota Fiscal'     ,'Vendas'                    ,'Logística'                          ,false);
  mNF_TAR_TAB.Enabled        := ACESSO(RECUsuarios.ID,'USU_AUTO','Tabelas'         ,'Tarefas'                   ,'Descrição'                          ,false);
  mNF_TAR_LAN.Enabled        := mNF_TAR_TAB.Enabled;
  mNF_TAR.Enabled            := mNF_TAR_TAB.Enabled;

  if (not mNF_TAR.Enabled) and (not mNF_LOG.Enabled) then
  mLOG.Enabled := false;

  mven_ped_oca.Enabled       := false; //ACESSO(RECUsuarios.ID,'USU_AUTO','Vendas'          ,'Orçamentos'                ,'Incluir'                            ,false);
  mven_ctr_oca.Enabled       := false; //ACESSO(RECUsuarios.ID,'USU_AUTO','Vendas'          ,'Orçamentos'                ,'Controlar'                          ,false);
  mven_ped_prg.Enabled       := false; //ACESSO(RECUsuarios.ID,'USU_AUTO','Vendas'          ,'Programações'              ,'Incluir'                            ,false);
  mven_ctr_prg.Enabled       := false; //ACESSO(RECUsuarios.ID,'USU_AUTO','Vendas'          ,'Programações'              ,'Controlar'                          ,false);
  mven_ped.Enabled           := 
  mven_ctr_ped.Enabled       :=
  mven_ctr_ped_sep.Enabled   :=
  SBCAD_PRO_SEP.Enabled      := mven_ctr_ped_sep.Enabled;
  mven_rom.Enabled           := ACESSO(RECUsuarios.ID,'USU_AUTO','Vendas'          ,'Romaneios'                 ,'Incluir'                            ,false);
  mven_ctr_rom.Enabled       := ACESSO(RECUsuarios.ID,'USU_AUTO','Vendas'          ,'Romaneios'                 ,'Controlar'                          ,false);

  mfin_ban.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Bancos'                    ,'Cadastro de Bancos'                 ,false);
  mfin_ban_cad.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Bancos'                    ,'Cadastro de Bancos'                 ,false);
  mfin_ban_con.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Bancos'                    ,'Cadastro de Bancos'                 ,false);
  mfin_ban_cad.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Bancos'                    ,'Contas Bancárias'                   ,false);
  mfin_ctr.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Controle Bancário'         ,'Duplicatas'                         ,false);
  mfin_ctr_dup.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Controle Bancário'         ,'Duplicatas'                         ,false);
  mfin_ctr_bol.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Controle Bancário'         ,'Boletos'                            ,false);
  mtab_dch.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Controle Bancário'         ,'Motivos de Devoluções de Cheques'   ,false);

  mfin_rec.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Contas a Receber'          ,'Cadastro de Contas'                 ,false);
  mfin_rec_cad_con.Enabled   := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Contas a Receber'          ,'Cadastro de Contas'                 ,false);
  mfin_rec_dup_con.Enabled   := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Contas a Receber'          ,'Duplicação de Contas'               ,false);
  mfin_rec_rec_con.Enabled   := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Contas a Receber'          ,'Recebimento de Contas'              ,false);
  mfin_rec_can_rec.Enabled   := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Contas a Receber'          ,'Cancelamento de Recebimentos'       ,false);
  mfin_rec_con.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Contas a Receber'          ,'Consultas'                          ,false);
  mfin_rec_cfn.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Contas a Receber'          ,'Calculadora Financeira'             ,false);
  mfin_pag.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Contas a Pagar'            ,'Cadastro de Contas'                 ,false);
  mfin_pag_cad_con.Enabled   := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Contas a Pagar'            ,'Cadastro de Contas'                 ,false);
  mfin_pag_dup_con.Enabled   := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Contas a Pagar'            ,'Duplicação de Contas'               ,false);
  mfin_pag_pag_con.Enabled   := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Contas a Pagar'            ,'Pagamento de Contas'                ,false);
  mfin_pag_can_pag.Enabled   := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Contas a Pagar'            ,'Cancelamento de Pagamentos'         ,false);
  mfin_pag_pag_com.Enabled   := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Contas a Pagar'            ,'Pagamento de Comissões'             ,false);
  mfin_pag_con.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Contas a Pagar'            ,'Consultas'                          ,false);
  mfin_cco.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Cartões e Convênios'       ,'Manutenção de Lançamentos'          ,false);
  mfin_cco_man.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Cartões e Convênios'       ,'Manutenção de Lançamentos'          ,false);
  mfin_cco_lan.Enabled       := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Cartões e Convênios'       ,'Baixa de Lançamentos'               ,false);
  mfin_emr.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Emissão de Recibos'        ,'Permissões Gerais'                  ,false);
  mfin_spc.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Situação do Cliente no SPC','Permissões Gerais'                  ,false);
  mfin_val.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Financeiro'      ,'Vales de Funcionários'     ,'Permissões Gerais'                  ,false);


  muti_age.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Utilitários'     ,'Agenda'                    ,'Permissões Gerais'                  ,false);
  muti_log.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Utilitários'     ,'Login'                     ,'Permissões Gerais'                  ,false);
  muti_sen.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Utilitários'     ,'Senha'                     ,'Permissões Gerais'                  ,false);
  muti_wor.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Utilitários'     ,'Estação de Trabalho'       ,'Permissões Gerais'                  ,false);
  muti_bak.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Utilitários'     ,'Backup'                    ,'Permissões Gerais'                  ,false);
  muti_pri.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Utilitários'     ,'Parametros de Impressão'   ,'Permissões Gerais'                  ,false);
  muti_sis.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Utilitários'     ,'Parametros do Sistema'     ,'Permissões Gerais'                  ,false);
  muti_usu.Enabled           := ACESSO(RECUsuarios.ID,'USU_VISU','Utilitários'     ,'Usuários'                   ,'Permissões Gerais'                  ,false);

  mREL.Visible               := (cad_usuUSU_RELA.AsString = '1');    }

  with par_pri do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM '+SLPrincipal.Values['par_pri']);
    SQL.Add('WHERE PRI_IP = ''' + RECParametros.IP + '''');
    Open;
  end;
end;

procedure TFrmPrincipal.parametrosAfterOpen(DataSet: TDataSet);
begin
  try
    oOTransact(TTAB_PAR_SIS);
    with SQLTAB_PAR_SIS do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM VW_TAB_PAR_SIS');
      SQL.Add('WHERE  ID = ''' + ParametrosID.AsString + '''');
      ExecQuery;

      RECParametros.ID :=  Current.ByName('ID').AsString;

      RECParametros.DTSERVER      := Current.ByName('DTSERVER').AsDateTime;
      RECParametros.DTMES_INI     := Current.ByName('DTMES_INI').AsDateTime;
      RECParametros.DTMES_FIM     := Current.ByName('DTMES_FIM').AsDateTime;
      RECParametros.DTMES_INI_FMT := FormatDateTime('mm/dd/yy',RECParametros.DTMES_INI);
      RECParametros.DTMES_FIM_FMT := FormatDateTime('mm/dd/yy',RECParametros.DTMES_FIM);

      RECParametros.FANTASIA := Current.ByName('FANTASIA').AsString;
      RECParametros.RAZAO    := Current.ByName('RAZAO'   ).AsString;
      RECParametros.GRUPO    := Current.ByName('GRUPO'   ).AsString;

      RECParametros.REGIME   := Current.ByName('REGIME'  ).AsString;
      RECParametros.DTFU     := Current.ByName('DTFU'    ).AsDateTime;
      RECParametros.CNPJ   := Current.ByName('CNPJ').AsString;
      RECParametros.C_CNPJ := oCNPJ_Mask(RECParametros.CNPJ);
      RECParametros.IE     := Current.ByName('IE'  ).AsString;
      RECParametros.ISUF   := Current.ByName('ISUF').AsString;
      RECParametros.IM     := Current.ByName('IM'  ).AsString;

      RECParametros.NUDDD   := Current.ByName('NUDDD').AsString;
      RECParametros.NUTEL   := Current.ByName('NUTEL').AsString;
      RECParametros.C_NUTEL := oDDD_Mask(RECParametros.NUDDD) + ' ' + oTEL_Mask(RECParametros.NUTEL);
      RECParametros.EMAIL   := Current.ByName('EMAIL').AsString;
      RECParametros.SITE    := Current.ByName('SITE' ).AsString;

      RECParametros.IDLOG := Current.ByName('IDLOG').AsString;
      RECParametros.TPLOG := Current.ByName('TPLOG').AsString;
      RECParametros.NOLOG := Current.ByName('NOLOG').AsString;
      RECParametros.NULOG := Current.ByName('NULOG').AsString;
      RECParametros.COLOG := Current.ByName('COLOG').AsString;
      RECParametros.NUCEP := Current.ByName('NUCEP').AsString;
      RECParametros.NOBAI := Current.ByName('NOBAI').AsString;
      RECParametros.NOCID := Current.ByName('NOCID').AsString;
      RECParametros.CMUN  := Current.ByName('CMUN' ).AsString;
      RECParametros.CDUF  := Current.ByName('CDUF' ).AsInteger;
      RECParametros.SGUF  := Current.ByName('SGUF' ).AsString;

      RECParametros.EMP_CNAE      := Current.ByName('EMP_CNAE'     ).AsString;
      RECParametros.EMP_CNAE_DESC := Current.ByName('EMP_CNAE_DESC').AsString;
      RECParametros.EMP_IDIND_FIM := Current.ByName('EMP_IDIND_FIM').AsString;
      RECParametros.EMP_REIND_FIM := Current.ByName('EMP_REIND_FIM').AsString;
      RECParametros.EMP_DEIND_FIM := Current.ByName('EMP_DEIND_FIM').AsString;

      RECParametros.IDCL_PAD     := Current.ByName('IDCL_PAD'    ).AsString;
      RECParametros.DECL_PAD     := Current.ByName('DECL_PAD'    ).AsString;
      RECParametros.RZCL_PAD     := Current.ByName('RZCL_PAD'    ).AsString;
      RECParametros.CNPJCL_PAD   := Current.ByName('CNPJCL_PAD'  ).AsString;

      RECParametros.IDCV_PAD     := Current.ByName('IDCV_PAD'    ).AsString;
      RECParametros.DECV_PAD     := Current.ByName('DECV_PAD'    ).AsString;
      RECParametros.IDCR_PAD     := Current.ByName('IDCR_PAD'    ).AsString;
      RECParametros.DECR_PAD     := Current.ByName('DECR_PAD'    ).AsString;
      RECParametros.IDCF_PAD     := Current.ByName('IDCF_PAD'    ).AsString;
      RECParametros.DECF_PAD     := Current.ByName('DECF_PAD'    ).AsString;
      RECParametros.RZCF_PAD     := Current.ByName('RZCF_PAD'    ).AsString;
      RECParametros.CNPJCF_PAD   := Current.ByName('CNPJCF_PAD'  ).AsString;
      RECParametros.IDCT_PAD     := Current.ByName('IDCT_PAD'    ).AsString;
      RECParametros.DECT_PAD     := Current.ByName('DECT_PAD'    ).AsString;
      RECParametros.IDCT_RET_PAD := Current.ByName('IDCT_RET_PAD').AsString;
      RECParametros.DECT_RET_PAD := Current.ByName('DECT_RET_PAD').AsString;
      RECParametros.IDCT_SEM_PAD := Current.ByName('IDCT_SEM_PAD').AsString;
      RECParametros.DECT_SEM_PAD := Current.ByName('DECT_SEM_PAD').AsString;

      { SHEILD }
      RECParametros.SHEILD_CNPJ        := Current.ByName('SHEILD_CNPJ'       ).AsString;
      RECParametros.SHEILD_RESPONSAVEL := Current.ByName('SHEILD_RESPONSAVEL').AsString;
      RECParametros.SHEILD_EMAIL       := Current.ByName('SHEILD_EMAIL'      ).AsString;
      RECParametros.SHEILD_NUTEL       := Current.ByName('SHEILD_NUTEL'      ).AsString;
      RECParametros.SHEILD_TIMEZONE    := Current.ByName('SHEILD_TIMEZONE'   ).AsString;

      RECParametros.SHEILD_LICENCA_VENCIMENTO := Current.ByName('SHEILD_LICENCA_VENCIMENTO').AsDateTime;
      RECParametros.SHEILD_LICENCA_VENCIDO    := Current.ByName('SHEILD_LICENCA_VENCIDO'   ).AsInteger;
      RECParametros.SHEILD_LICENCA_AVISAR     := Current.ByName('SHEILD_LICENCA_AVISAR'    ).AsInteger;
      RECParametros.SHEILD_LICENCA_SUSPENDER  := Current.ByName('SHEILD_LICENCA_SUSPENDER' ).AsInteger;

      RECParametros.SHEILD_PATH_PRINCIPAL     := Current.ByName('SHEILD_PATH_PRINCIPAL'    ).AsString;
      RECParametros.SHEILD_PATH_PRINCIPAL_BKP := Current.ByName('SHEILD_PATH_PRINCIPAL_BKP').AsString;
      RECParametros.SHEILD_PATH_IMAGENS       := Current.ByName('SHEILD_PATH_IMAGENS'      ).AsString;
      RECParametros.SHEILD_PATH_DOCUMENTOS    := Current.ByName('SHEILD_PATH_DOCUMENTOS'   ).AsString;

      { PRODUTOS }
      RECParametros.PRO_COD_NUM     := (Current.ByName('PRO_COD_NUM').AsInteger = 1);
      RECParametros.PRO_COD_GRD     := (Current.ByName('PRO_COD_GRD').AsInteger = 1);
      RECParametros.PRO_COD_COR     := (Current.ByName('PRO_COD_COR').AsInteger = 1);
      RECParametros.PRO_COD_ORD     :=  Current.ByName('PRO_COD_ORD').AsString;
      RECParametros.PRO_GRD_PAD     :=  Current.ByName('PRO_GRD_PAD').AsInteger;
      RECParametros.PRO_COR_PAD     :=  Current.ByName('PRO_COR_PAD').AsInteger;
      RECParametros.PRO_COR_SIS     :=  Current.ByName('PRO_COR_SIS').AsString;
      RECParametros.PRO_COR_PED_PRC :=  Current.ByName('PRO_COR_PED_PRC').AsInteger;
      RECParametros.PRO_COR_PED_TIN :=  Current.ByName('PRO_COR_PED_TIN').AsInteger;
      RECParametros.PRO_AJU_PRC_VAR :=  Current.ByName('PRO_AJU_PRC_VAR').AsFloat;
      RECParametros.PRO_AJU_PRC_REP :=  Current.ByName('PRO_AJU_PRC_REP').AsFloat;
      RECParametros.PRO_UCOM        :=  Current.ByName('PRO_UCOM').AsString;
      RECParametros.PRO_QTRL        := (Current.ByName('PRO_QTRL').AsInteger = 1);
      RECParametros.PRO_PSCN        :=  Current.ByName('PRO_PSCN').AsFloat;
      RECParametros.PRO_IDFIN_CAD   :=  Current.ByName('PRO_IDFIN_CAD').AsString;
      RECParametros.PRO_REFIN_CAD   :=  Current.ByName('PRO_REFIN_CAD').AsString;
      RECParametros.PRO_DEFIN_CAD   :=  Current.ByName('PRO_DEFIN_CAD').AsString;
      RECParametros.PRO_IDFIN_EST   :=  Current.ByName('PRO_IDFIN_EST').AsString;
      RECParametros.PRO_REFIN_EST   :=  Current.ByName('PRO_REFIN_EST').AsString;
      RECParametros.PRO_DEFIN_EST   :=  Current.ByName('PRO_DEFIN_EST').AsString;
      RECParametros.PRO_ABNT_SIL    :=  Current.ByName('PRO_ABNT_SIL' ).AsString;
      RECParametros.PRO_ABNT_DIM    :=  Current.ByName('PRO_ABNT_DIM' ).AsString;

      { ESTOQUE }
      RECParametros.EST_CONTROLE     := (Current.ByName('EST_CONTROLE'    ).AsInteger = 1);
      RECParametros.EST_UNIFICADO    := (Current.ByName('EST_UNIFICADO'   ).AsInteger = 1);
      RECParametros.EST_CDI          :=  Current.ByName('EST_CDI'         ).AsString;
      RECParametros.EST_DEVOLUCAO    := (Current.ByName('EST_DEVOLUCAO'   ).AsInteger = 1);
      RECParametros.EST_QTRL         := (Current.ByName('EST_QTRL'        ).AsInteger = 1);
      RECParametros.EST_IDTIPO       :=  Current.ByName('EST_IDTIPO'      ).AsString;
      RECParametros.EST_IDOPERACAO   :=  Current.ByName('EST_IDOPERACAO'  ).AsString;
      RECParametros.EST_IDFINALIDADE :=  Current.ByName('EST_IDFINALIDADE').AsString;
      RECParametros.EST_IDFILTRO     :=  Current.ByName('EST_IDFILTRO'    ).AsString;
      RECParametros.EST_CDBE         :=  Current.ByName('EST_CDBE'        ).AsString;
      RECParametros.EST_RETIPO       :=  Current.ByName('EST_RETIPO'      ).AsString;
      RECParametros.EST_REOPERACAO   :=  Current.ByName('EST_REOPERACAO'  ).AsString;
      RECParametros.EST_REFINALIDADE :=  Current.ByName('EST_REFINALIDADE').AsString;
      RECParametros.EST_REFILTRO     :=  Current.ByName('EST_REFILTRO'    ).AsString;
      RECParametros.EST_DETIPO       :=  Current.ByName('EST_DETIPO'      ).AsString;
      RECParametros.EST_DEOPERACAO   :=  Current.ByName('EST_DEOPERACAO'  ).AsString;
      RECParametros.EST_DEFINALIDADE :=  Current.ByName('EST_DEFINALIDADE').AsString;
      RECParametros.EST_DEFILTRO     :=  Current.ByName('EST_DEFILTRO'    ).AsString;

      { PEDIDOS }
      RECParametros.PED_CUPOM      := (Current.ByName('PED_CUPOM'     ).AsInteger = 1);
      RECParametros.PED_CANHOTO    := (Current.ByName('PED_CANHOTO'   ).AsInteger = 1);
      RECParametros.PED_BX_A_VISTA := (Current.ByName('PED_BX_A_VISTA').AsInteger = 1);
      RECParametros.PED_DESCONTO   := (Current.ByName('PED_DESCONTO'  ).AsInteger = 1);
      RECParametros.PED_EXPEDICAO  := (Current.ByName('PED_EXPEDICAO' ).AsInteger = 1);
      RECParametros.PED_DELIVERY   := (Current.ByName('PED_DELIVERY'  ).AsInteger = 1);
      RECParametros.PED_IPI        := (Current.ByName('PED_IPI'       ).AsInteger = 1);
      RECParametros.PED_NUVIA      :=  Current.ByName('PED_NUVIA'     ).AsInteger;

      RECParametros.PED_DESCONTO_LIMITE  := Current.ByName('PED_DESCONTO_LIMITE' ).AsInteger;
      RECParametros.PED_EXPEDICAO_LIMITE := Current.ByName('PED_EXPEDICAO_LIMITE').AsInteger;

      RECParametros.PED_CDPD := Current.ByName('PED_CDPD').AsString;
      RECParametros.PED_STPD := Current.ByName('PED_STPD').AsString;
      RECParametros.PED_CDCO := Current.ByName('PED_CDCO').AsString;
      RECParametros.PED_STCO := Current.ByName('PED_STCO').AsString;
      RECParametros.PED_CDPG := Current.ByName('PED_CDPG').AsString;
      RECParametros.PED_DEPG := Current.ByName('PED_DEPG').AsString;
      RECParametros.PED_NUPG := Current.ByName('PED_NUPG').AsInteger;
      RECParametros.PED_CDST := Current.ByName('PED_CDFI').AsString;
      RECParametros.PED_REST := Current.ByName('PED_REST').AsString;
      RECParametros.PED_STFI := Current.ByName('PED_STFI').AsString;

      RECParametros.PED_VPRC_PAD := Current.ByName('PED_VPRC_PAD').AsString;

      RECParametros.PED_PCOM_VEN := Current.ByName('PED_PCOM_VEN').AsFloat;
      RECParametros.PED_PCOM_REP := Current.ByName('PED_PCOM_REP').AsFloat;

      RECParametros.PED_PRECO := 'ATACADO - NORMAL';

      { FINANCEIRO }
      RECParametros.FIN_API             := (Current.ByName('FIN_API'            ).AsInteger = 1);
      RECParametros.FIN_API_TOKEN       :=  Current.ByName('FIN_API_TOKEN'      ).AsString;
      RECParametros.FIN_VER_PROC        :=  Current.ByName('FIN_VER_PROC'       ).AsString;
      RECParametros.FIN_VER_PROC_EDICAO :=  Current.ByName('FIN_VER_PROC_EDICAO').AsDateTime;

      RECParametros.FIN_CONTROLE          := (Current.ByName('FIN_CONTROLE'         ).AsInteger = 1);
      RECParametros.FIN_PED_BAIXA         := (Current.ByName('FIN_PED_BAIXA'        ).AsInteger = 1);
      RECParametros.FIN_PED_BAIXA_CANCELA := (Current.ByName('FIN_PED_BAIXA_CANCELA').AsInteger = 1);
      RECParametros.FIN_PAG_AUTO          := (Current.ByName('FIN_PAG_AUTO'         ).AsInteger = 1);

      RECParametros.FIN_LIMITE_CREDITO      := (Current.ByName('FIN_LIMITE_CREDITO'     ).AsInteger = 1);
      RECParametros.FIN_LIMITE_CREDITO_VMAX :=  Current.ByName('FIN_LIMITE_CREDITO_VMAX').AsFloat;
      RECParametros.FIN_LIMITE_CREDITO_PMAX :=  Current.ByName('FIN_LIMITE_CREDITO_PMAX').AsInteger;

      RECParametros.FIN_LIMITE_BANCARIO := Current.ByName('FIN_LIMITE_BANCARIO').AsInteger;
      RECParametros.FIN_LIMITE_CARTEIRA := Current.ByName('FIN_LIMITE_CARTEIRA').AsInteger;

      { FINANCEIRO PATH PRINCIPAL }
      RECParametros.FIN_PATH_PRINCIPAL := Current.ByName('FIN_PATH_PRINCIPAL').AsString;
      RECParametros.FIN_PATH_BOLETO    := Current.ByName('FIN_PATH_BOLETO'   ).AsString;
      RECParametros.FIN_PATH_JSON      := Current.ByName('FIN_PATH_JSON'     ).AsString;

      if not oEmpty(RECParametros.FIN_PATH_PRINCIPAL) then
      begin
        RECParametros.FIN_PATH_BOLETO := RECParametros.FIN_PATH_PRINCIPAL + '\' + RECParametros.FIN_PATH_BOLETO;
        RECParametros.FIN_PATH_JSON   := RECParametros.FIN_PATH_PRINCIPAL + '\' + RECParametros.FIN_PATH_JSON;
      end;  

      { FINANCEIRO PATH BACKUP }
      RECParametros.FIN_PATH_PRINCIPAL_BKP := Current.ByName('FIN_PATH_PRINCIPAL_BKP').AsString;
      RECParametros.FIN_PATH_BOLETO_BKP    := Current.ByName('FIN_PATH_BOLETO_BKP'   ).AsString;
      RECParametros.FIN_PATH_JSON_BKP      := Current.ByName('FIN_PATH_JSON_BKP'     ).AsString;

      if not oEmpty(RECParametros.FIN_PATH_PRINCIPAL_BKP) then
      begin
        RECParametros.FIN_PATH_BOLETO_BKP := RECParametros.FIN_PATH_PRINCIPAL_BKP + '\' + RECParametros.FIN_PATH_BOLETO_BKP;
        RECParametros.FIN_PATH_JSON_BKP   := RECParametros.FIN_PATH_PRINCIPAL_BKP + '\' + RECParametros.FIN_PATH_JSON_BKP  ;
      end;

      { NFE }
      RECParametros.NFE_API             := (Current.ByName('NFE_API'            ).AsInteger = 1);
      RECParametros.NFE_API_TOKEN       :=  Current.ByName('NFE_API_TOKEN'      ).AsString;
      RECParametros.NFE_VER_PROC        :=  Current.ByName('NFE_VER_PROC'       ).AsString;
      RECParametros.NFE_VER_PROC_EDICAO :=  Current.ByName('NFE_VER_PROC_EDICAO').AsDateTime;

      RECParametros.NFE_CRT    := Current.ByName('NFE_CRT'   ).AsString;
      RECParametros.NFE_MODELO := Current.ByName('NFE_MODELO').AsString;
      RECParametros.NFE_SERIE  := Current.ByName('NFE_SERIE' ).AsString;

      RECParametros.NFE_CFOP_IDFIN := Current.ByName('NFE_CFOP_IDFIN').AsString;
      RECParametros.NFE_CFOP_REFIN := Current.ByName('NFE_CFOP_REFIN').AsString;
      RECParametros.NFE_CFOP_DEFIN := Current.ByName('NFE_CFOP_DEFIN').AsString;
      RECParametros.NFE_CFOPDUF    := Current.ByName('NFE_CFOPDUF'   ).AsString;
      RECParametros.NFE_CFOPFUF    := Current.ByName('NFE_CFOPFUF'   ).AsString;

      RECParametros.NFE_MODFRETE      := Current.ByName('NFE_MODFRETE'     ).AsString;
      RECParametros.NFE_MODFRETE_REF  := Current.ByName('NFE_MODFRETE_REF' ).AsString;
      RECParametros.NFE_MODFRETE_DESC := Current.ByName('NFE_MODFRETE_DESC').AsString;

      RECParametros.NFE_ICMS              :=  Current.ByName('NFE_ICMS'             ).AsInteger;
      RECParametros.NFE_CREDITO_ICMS      :=  Current.ByName('NFE_CREDITO_ICMS'     ).AsFloat;
      RECParametros.NFE_REDUCAO_PISCOFINS := (Current.ByName('NFE_REDUCAO_PISCOFINS').AsInteger = 1);

      RECParametros.NFE_CABECALHO          := Current.ByName('NFE_CABECALHO'         ).AsString;
      RECParametros.NFE_CANHOTO            := Current.ByName('NFE_CANHOTO'           ).AsString;
      RECParametros.NFE_FONT_SIZE_ITEM     := Current.ByName('NFE_FONT_SIZE_ITEM'    ).AsString;
      RECParametros.NFE_FONT_SIZE_INFADCAD := Current.ByName('NFE_FONT_SIZE_INFADCAD').AsString;
      RECParametros.NFE_TIPO_DESCONTO      := Current.ByName('NFE_TIPO_DESCONTO'     ).AsString;
      RECParametros.NFE_FORMAT_QTDE        := Current.ByName('NFE_FORMAT_QTDE'       ).AsString;
      RECParametros.NFE_FORMAT_VUNIT       := Current.ByName('NFE_FORMAT_VUNIT'      ).AsString;
      RECParametros.NFE_TOTAL_PISCOFINS    := Current.ByName('NFE_TOTAL_PISCOFINS'   ).AsString;
      RECParametros.NFE_TOTAL_CFOP         := Current.ByName('NFE_TOTAL_CFOP'        ).AsString;

      { NFE PATH PRINCIPAL }
      RECParametros.NFE_PATH_PRINCIPAL := Current.ByName('NFE_PATH_PRINCIPAL').AsString;
      RECParametros.NFE_PATH_XML       := Current.ByName('NFE_PATH_XML'      ).AsString;
      RECParametros.NFE_PATH_DANFE     := Current.ByName('NFE_PATH_DANFE'    ).AsString;
      RECParametros.NFE_PATH_CCE       := Current.ByName('NFE_PATH_CCE'      ).AsString;

      if not oEmpty(RECParametros.NFE_PATH_PRINCIPAL) then
      begin
        RECParametros.NFE_PATH_XML   := RECParametros.NFE_PATH_PRINCIPAL + '\' + RECParametros.NFE_PATH_XML;
        RECParametros.NFE_PATH_DANFE := RECParametros.NFE_PATH_PRINCIPAL + '\' + RECParametros.NFE_PATH_DANFE;
        RECParametros.NFE_PATH_CCE   := RECParametros.NFE_PATH_PRINCIPAL + '\' + RECParametros.NFE_PATH_CCE;
      end;

      { NFE PATH BACKUP }
      RECParametros.NFE_PATH_PRINCIPAL_BKP := Current.ByName('NFE_PATH_PRINCIPAL_BKP').AsString;
      RECParametros.NFE_PATH_XML_BKP       := Current.ByName('NFE_PATH_XML_BKP'      ).AsString;
      RECParametros.NFE_PATH_DANFE_BKP     := Current.ByName('NFE_PATH_DANFE_BKP'    ).AsString;
      RECParametros.NFE_PATH_CCE_BKP       := Current.ByName('NFE_PATH_CCE_BKP'      ).AsString;

      if not oEmpty(RECParametros.NFE_PATH_PRINCIPAL_BKP) then
      begin
        RECParametros.NFE_PATH_XML_BKP   := RECParametros.NFE_PATH_PRINCIPAL_BKP + '\' + RECParametros.NFE_PATH_XML_BKP;
        RECParametros.NFE_PATH_DANFE_BKP := RECParametros.NFE_PATH_PRINCIPAL_BKP + '\' + RECParametros.NFE_PATH_DANFE_BKP;
        RECParametros.NFE_PATH_CCE_BKP   := RECParametros.NFE_PATH_PRINCIPAL_BKP + '\' + RECParametros.NFE_PATH_CCE_BKP;
      end;

      RECParametros.NFE_PATH_SCHEMAS         := RECParametros.NFE_PATH_PRINCIPAL + '\' + Current.ByName('NFE_PATH_SCHEMAS'        ).AsString;
      RECParametros.NFE_DATA_PACKET          := RECParametros.NFE_PATH_PRINCIPAL + '\' + Current.ByName('NFE_DATA_PACKET'         ).AsString;
      RECParametros.NFE_DATA_PACKET_CCE      := RECParametros.NFE_PATH_PRINCIPAL + '\' + Current.ByName('NFE_DATA_PACKET_CCE'     ).AsString;
      RECParametros.NFE_DATA_PACKET_FORM_SEG := RECParametros.NFE_PATH_PRINCIPAL + '\' + Current.ByName('NFE_DATA_PACKET_FORM_SEG').AsString;
      RECParametros.NFE_DATA_PACKET_FS       := RECParametros.NFE_PATH_PRINCIPAL + '\' + Current.ByName('NFE_DATA_PACKET_FS'      ).AsString;

      RECParametros.NFE_CAD_PRO_DI     := (Current.ByName('NFE_CAD_PRO_DI'    ).AsInteger = 1);
      RECParametros.NFE_LOGO           :=  Current.ByName('NFE_LOGO'          ).AsString;

      { Envio automático de emaisl }
      RECParametros.NFE_ENV_EMAIL_AUTO := IntToStr(Current.ByName('NFE_ENV_EMAIL_AUTO').AsInteger);

      { CFE }
      RECParametros.CFE_API             := (Current.ByName('CFE_API'            ).AsInteger = 1);
      RECParametros.CFE_API_TOKEN       :=  Current.ByName('CFE_API_TOKEN'      ).AsString;
      RECParametros.CFE_CNPJ            :=  Current.ByName('CFE_CNPJ'           ).AsString;
      RECParametros.CFE_VER_PROC        :=  Current.ByName('CFE_VER_PROC'       ).AsString;
      RECParametros.CFE_VER_PROC_EDICAO :=  Current.ByName('CFE_VER_PROC_EDICAO').AsDateTime;

      { PATH PRINCIPAL }
      RECParametros.CFE_PATH_PRINCIPAL := Current.ByName('CFE_PATH_PRINCIPAL').AsString;
      RECParametros.CFE_PATH_XML       := Current.ByName('CFE_PATH_XML'      ).AsString;
      RECParametros.CFE_PATH_CUPOM     := Current.ByName('CFE_PATH_CUPOM'    ).AsString;

      if not oEmpty(RECParametros.CFE_PATH_PRINCIPAL) then
      begin
        RECParametros.CFE_PATH_XML   := RECParametros.CFE_PATH_PRINCIPAL + '\' + RECParametros.CFE_PATH_XML;
        RECParametros.CFE_PATH_CUPOM := RECParametros.CFE_PATH_PRINCIPAL + '\' + RECParametros.CFE_PATH_CUPOM;
      end;
      
      { PATH BACKUP }
      RECParametros.CFE_PATH_PRINCIPAL_BKP := Current.ByName('CFE_PATH_PRINCIPAL_BKP').AsString;
      RECParametros.CFE_PATH_XML_BKP       := Current.ByName('CFE_PATH_XML_BKP'      ).AsString;
      RECParametros.CFE_PATH_CUPOM_BKP     := Current.ByName('CFE_PATH_CUPOM_BKP'    ).AsString;

      if not oEmpty(RECParametros.CFE_PATH_PRINCIPAL_BKP) then
      begin
        RECParametros.CFE_PATH_XML_BKP   := RECParametros.CFE_PATH_PRINCIPAL_BKP + '\' + RECParametros.CFE_PATH_XML_BKP;
        RECParametros.CFE_PATH_CUPOM_BKP := RECParametros.CFE_PATH_PRINCIPAL_BKP + '\' + RECParametros.CFE_PATH_CUPOM_BKP;
      end;

      RECParametros.CFE_LOGO := Current.ByName('CFE_LOGO').AsString;

      { CONTÁBIL }
      RECParametros.CONTABIL_NUDDD := Current.ByName('CONTABIL_NUDDD').AsString;
      RECParametros.CONTABIL_NUTEL := Current.ByName('CONTABIL_NUTEL').AsString;
      RECParametros.CONTABIL_EMAIL := Current.ByName('CONTABIL_EMAIL').AsString;

      { API }
      RECParametros.API_B2B := Current.ByName('API_B2B').AsString;
      RECParametros.API_B2C := Current.ByName('API_B2C').AsString;
      RECParametros.API_MKP := Current.ByName('API_MKP').AsString;

      { STATUS }
      RECParametros.STA_IDCAD :=  Current.ByName('STA_IDCAD').AsString;
      RECParametros.STA_RECAD :=  Current.ByName('STA_RECAD').AsString;
      RECParametros.STA_DECAD :=  Current.ByName('STA_DECAD').AsString;

      { CDI }
      RECParametros.EMP_CDI := (RECParametros.Id = RECParametros.EST_CDI);
    end;

    oRegister_Export;
  finally
    oCTransact(TTAB_PAR_SIS);
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAST (''NOW'' AS TIMESTAMP) as DATA FROM RDB$DATABASE');
    Open;
  end;
  
  RECParametros.REL_PAD := ParametrosPAR_PREL.AsString;
  RECParametros.IP      := IP.LocalIP;
  RECParametros.Host    := oGetPCNome;

  RECParametros.IMG_JPG_SPLASH  := ParametrosPAR_FOTO;
  RECParametros.IMG_JPG_BLANK   := ParametrosPAR_FOT2;
  RECParametros.IMG_JPG_REL     := ParametrosPAR_FOT3;
  carregaFoto(parametrosPAR_FOTO.BlobSize,parametrosPAR_FOTO,parametros);

  bExecEvent('Caixa');
  SBRodape.Panels[0].Text := ParametrosPAR_FANT.AsString;
  SBRodape.Panels[1].Text := cad_usuUSU_DUSU.AsString;
  SBRodape.Panels[3].Text := LAN;
  SBRodape.Update;
end;

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
      IFotoFundo.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
  begin
    IFotoFundo.Picture := nil;
    frmprincipal.Color := clBtnFace;
  end;
  IFotoFundo.Update;
  IFotoFundo.Refresh;  
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

  if cad_usuUSU_CUSU.AsString <> '0' then
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
var
  BRet: boolean;
begin
  BRet     := false;
  frmlogin := TFrmlogin.Create(self);
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
  result := BRet;
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

procedure TFrmPrincipal.rsbLOGClick(Sender: TObject);
var
  i: integer;
begin
  for i := MDIChildCount - 1 downto 0 do
  if MDIChildren[i] <> Nil then
     MDIChildren[i].Close;

  FrmLogin := TFrmLogin.create(Nil);
  FrmLogin.Caption := 'Alternando usuário';
  try
    FrmLogin.ShowModal;
  finally
    if frmlogin.editado then
    begin
      oOTransact(IBTra);

      cad_usu.Close;
      cad_usu.ParamByName('USU_CUSU').AsString := frmlogin.cad_usuUSU_CUSU.AsString;
      cad_usu.Open;

      frmlogin.cad_usu.Edit;
      frmlogin.cad_usuUSU_DULT.Value := now;
      frmlogin.cad_usu.Post;

      frmlogin.IBTra.Commit;
    end;

    FreeAndNil(FrmLogin);
  end;
end;

procedure TFrmPrincipal.CEAN1Click(Sender: TObject);
begin
{  oOTransact(TEdicao);
  with SQLEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   ID,SKU FROM CAD_PRO');
    SQL.Add('WHERE    LEFT(CEAN,3) <> ''789''');
    SQL.Add('ORDER BY ID');
    ExecQuery;
  end;

  while not SQLEdicao.Eof do
  begin
    with SQLFKEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_CBAR = ''' + oRETBarCode(SQLEdicao.Current.Vars[0].AsString,SQLEdicao.Current.Vars[1].AsString) + '''');
      SQL.Add('WHERE  ID       = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
      ExecQuery;
    end;

    SQLEdicao.Next;
  end;
  oCTransact(TEdicao);
  oAviso(handle,'Códigos de barras atualizados com sucesso !');    }
end;

procedure TFrmPrincipal.ACTNFE_CRED_ICMSExecute(Sender: TObject);
var
  ClickedOK: Boolean;
  NewValue : String ;
begin
  if not ACESSO(RECUsuarios.ID,'USU_EDIT','Nota Fiscal','Vendas','Crédito de ICMS',True) then
     oException(Nil,'ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');

  NewValue  := FormatFloat('0.00',RECParametros.NFE_CREDITO_ICMS);
  ClickedOK := InputQuery('Crédito de ICMS', 'Digite aqui o valor da nova alíquota',NewValue);

  if (ClickedOK) and (NewValue <> EmptyStr) then
      try
        oOTransact(IBTra);
        with Consulta do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE PAR_SIS');
          SQL.Add('SET    PAR_CICM = ''' + oStrTran(NewValue,',','.') + '''');
          SQL.Add('WHERE  ID       = ''' + RECParametros.ID           + '''');
          ExecSQL;
        end;
        oRTransact(IBTra);
        oAviso(handle,'Crédito de ICMS atualizado com sucesso !');
      except
        on E: Exception do
        begin
          oRTransact(IBTra,ltRollback);
          oErro(Handle,'Falha ao tentar registrar novo valor !'+#13+
                        E.Message);
        end;
      end;
end;

end.
