unit pcad_cli_edi;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, IBStoredProc, IBEvents, IBDatabase, DB, math, StrUtils,
  IBCustomDataSet, IBQuery, dxCntner, dxEditor, dxEdLib, ExtCtrls, StdCtrls,
  dxExEdtr, dxPageControl, ImgList, RxSpeedBar, ComCtrls,
  dxDBELib, Shellapi, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, DateUtils,
  cxGraphics, cxControls, dxStatusBar, IBSQL, ActnList, rxAnimate,
  rxGIFCtrl;

type
  Tfrmcad_cli_edi = class(TFrmPadr3)
    Panel1: TPanel;
    PCINFADCPL: TdxPageControl;
    tscon: TdxTabSheet;
    tsend: TdxTabSheet;
    PCPrincipal: TdxPageControl;
    TSCadastro: TdxTabSheet;
    Label1: TLabel;
    edccli: TdxEdit;
    edfant: TdxEdit;
    Label5: TLabel;
    edraza: TdxEdit;
    Label4: TLabel;
    edcnpj: TdxMaskEdit;
    edinsc: TdxEdit;
    Label13: TLabel;
    Label14: TLabel;
    edCCM: TdxEdit;
    Label21: TLabel;
    edimun: TdxEdit;
    Label25: TLabel;
    edcpf: TdxMaskEdit;
    Label15: TLabel;
    eddcad: TdxDateEdit;
    TSINFADCPL: TdxTabSheet;
    BINFADCPL: TBevel;
    IEREST: TdxImageEdit;
    Label37: TLabel;
    Label67: TLabel;
    cbreve: TdxImageEdit;
    Label40: TLabel;
    IEIDCV: TdxImageEdit;
    Label42: TLabel;
    IEIDCR: TdxImageEdit;
    Label46: TLabel;
    cbcicm: TdxImageEdit;
    PCContatos: TdxPageControl;
    tsccom: TdxTabSheet;
    Label10: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label50: TLabel;
    Label71: TLabel;
    Label11: TLabel;
    edddd: TdxMaskEdit;
    edmail: TdxEdit;
    edcont: TdxEdit;
    edtel1: TdxMaskEdit;
    edtel2: TdxMaskEdit;
    edcel: TdxMaskEdit;
    edneid: TdxMaskEdit;
    edDD2: TdxMaskEdit;
    edDD3: TdxMaskEdit;
    edtel3: TdxMaskEdit;
    edDD5: TdxMaskEdit;
    cbtce1: TdxImageEdit;
    tscfin: TdxTabSheet;
    Label44: TLabel;
    Label45: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label52: TLabel;
    Label69: TLabel;
    Label72: TLabel;
    edfddd: TdxMaskEdit;
    edfmai: TdxEdit;
    edfcon: TdxEdit;
    edfte1: TdxMaskEdit;
    edfte2: TdxMaskEdit;
    edffax: TdxMaskEdit;
    edfcel: TdxMaskEdit;
    edfdd2: TdxMaskEdit;
    edfdd3: TdxMaskEdit;
    edfte3: TdxMaskEdit;
    edfdd4: TdxMaskEdit;
    edfdd5: TdxMaskEdit;
    cbftc1: TdxImageEdit;
    tsccco: TdxTabSheet;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label110: TLabel;
    edcddd: TdxMaskEdit;
    edcmai: TdxEdit;
    edccon: TdxEdit;
    edcte1: TdxMaskEdit;
    edcte2: TdxMaskEdit;
    edcfax: TdxMaskEdit;
    edccel: TdxMaskEdit;
    edcdd2: TdxMaskEdit;
    edcdd3: TdxMaskEdit;
    edcte3: TdxMaskEdit;
    edcdd4: TdxMaskEdit;
    edcdd5: TdxMaskEdit;
    cbctc1: TdxImageEdit;
    eddalt: TdxDateEdit;
    BCadastro: TBevel;
    PCEnderecos: TdxPageControl;
    tsCEP_COM: TdxTabSheet;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label53: TLabel;
    Label66: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    EDCOM_TLO_TX: TdxEdit;
    EDCOM_LOG_NO: TdxEdit;
    BECOM_CEP: TdxButtonEdit;
    EDCOM_NRO: TdxEdit;
    EDCOM_XCPL: TdxEdit;
    BECOM_CMUN: TdxButtonEdit;
    EDCOM_BAI_NO: TdxEdit;
    EDCOM_UF: TdxEdit;
    EDCOM_LOC_NO: TdxEdit;
    tsCEP_COB: TdxTabSheet;
    Label3: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    EDCOB_TLO_TX: TdxEdit;
    EDCOB_LOG_NO: TdxEdit;
    BECOB_CEP: TdxButtonEdit;
    EDCOB_NRO: TdxEdit;
    EDCOB_XCPL: TdxEdit;
    BECOB_CMUN: TdxButtonEdit;
    EDCOB_BAI_NO: TdxEdit;
    EDCOB_UF: TdxEdit;
    EDCOB_LOC_NO: TdxEdit;
    tsCEP_ENT: TdxTabSheet;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    EDENT_LOC_NO: TdxEdit;
    EDENT_TLO_TX: TdxEdit;
    EDENT_LOG_NO: TdxEdit;
    BEENT_CEP: TdxButtonEdit;
    EDENT_NRO: TdxEdit;
    EDENT_XCPL: TdxEdit;
    BEENT_CMUN: TdxButtonEdit;
    EDENT_BAI_NO: TdxEdit;
    EDENT_UF: TdxEdit;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel9: TBevel;
    Bevel3: TBevel;
    Label58: TLabel;
    cad_cli: TIBQuery;
    eddfun: TdxDateEdit;
    Label55: TLabel;
    CBRICM: TdxImageEdit;
    Label59: TLabel;
    cbramo: TComboBox;
    Label56: TLabel;
    PEDEGP: TdxPickEdit;
    IETPRE: TdxImageEdit;
    Label2: TLabel;
    Label16: TLabel;
    IEAVRE: TdxImageEdit;
    IENAFA: TdxImageEdit;
    Label41: TLabel;
    GBINFADCAD: TGroupBox;
    PCINFADCAD: TdxPageControl;
    TSINFADCAD: TdxTabSheet;
    Bevel10: TBevel;
    EMINFADCAD: TdxMemo;
    TSINFADFIN: TdxTabSheet;
    Bevel11: TBevel;
    EMINFADFIN: TdxMemo;
    edfax: TdxMaskEdit;
    edDD4: TdxMaskEdit;
    Label9: TLabel;
    cad_cliID: TIntegerField;
    cad_cliIDEP: TSmallintField;
    cad_cliIDCA: TSmallintField;
    cad_cliDTCA: TDateTimeField;
    cad_cliDTFU: TDateField;
    cad_cliIDED: TSmallintField;
    cad_cliDTED: TDateTimeField;
    cad_cliIDST: TSmallintField;
    cad_cliCDST: TSmallintField;
    cad_cliREST: TIBStringField;
    cad_cliDTST: TDateTimeField;
    cad_cliDTUTPP: TDateTimeField;
    cad_cliDTUTPV: TDateTimeField;
    cad_cliFANTASIA: TIBStringField;
    cad_cliRAZAO: TIBStringField;
    cad_cliGRUPO: TIBStringField;
    cad_cliFIS_CRT: TSmallintField;
    cad_cliFIS_CREDICMS: TSmallintField;
    cad_cliCNPJ: TIBStringField;
    cad_cliIE: TIBStringField;
    cad_cliFIS_INDIEDEST: TSmallintField;
    cad_cliFIS_INDFINAL: TSmallintField;
    cad_cliIM: TIBStringField;
    cad_cliISUF: TIBStringField;
    cad_cliCPF: TIBStringField;
    cad_cliIDESTRANGEIRO: TIBStringField;
    cad_cliIDCV: TSmallintField;
    cad_cliIDCR: TSmallintField;
    cad_cliCDPD: TSmallintField;
    cad_cliCDCO: TSmallintField;
    cad_cliCDPG: TSmallintField;
    cad_cliIDCT: TSmallintField;
    cad_cliMFRT: TSmallintField;
    cad_cliCONTATO: TIBStringField;
    cad_cliDDD: TIBStringField;
    cad_cliTEL: TIBStringField;
    cad_cliEMAIL: TIBStringField;
    cad_cliENVEMAIL: TSmallintField;
    cad_cliCONTATO2: TIBStringField;
    cad_cliDDD2: TIBStringField;
    cad_cliCEL_CONTATO: TIBStringField;
    cad_cliTEL2: TIBStringField;
    cad_cliEMAIL2: TIBStringField;
    cad_cliCONTATO3: TIBStringField;
    cad_cliDDD3: TIBStringField;
    cad_cliTEL3: TIBStringField;
    cad_cliEMAIL3: TIBStringField;
    cad_cliCEL_DDD: TIBStringField;
    cad_cliCEL_TEL: TIBStringField;
    cad_cliCEL_EMAIL: TIBStringField;
    cad_cliZAP_TEL: TIBStringField;
    cad_cliCEL_CONTATO2: TIBStringField;
    cad_cliCEL_DDD2: TIBStringField;
    cad_cliCEL_TEL2: TIBStringField;
    cad_cliCEL_EMAIL2: TIBStringField;
    cad_cliZAP_CONTATO: TIBStringField;
    cad_cliZAP_DDD: TIBStringField;
    cad_cliZAP_EMAIL: TIBStringField;
    cad_cliLOG_NU: TLargeintField;
    cad_cliCMUN: TLargeintField;
    cad_cliTLO_TX: TIBStringField;
    cad_cliBAI_NO_ABREV: TIBStringField;
    cad_cliLOG_NO: TIBStringField;
    cad_cliLOG_NO_ABREV: TIBStringField;
    cad_cliNRO: TIBStringField;
    cad_cliXCPL: TIBStringField;
    cad_cliCEP: TIBStringField;
    cad_cliBAI_NO: TIBStringField;
    cad_cliLOC_NO: TIBStringField;
    cad_cliLOC_NO_ABREV: TIBStringField;
    cad_cliENT_LOG_NO_ABREV: TIBStringField;
    cad_cliUF: TIBStringField;
    cad_cliCPAIS: TSmallintField;
    cad_cliENT_CNPJ_CPF: TIBStringField;
    cad_cliENT_LOG_NU: TLargeintField;
    cad_cliENT_TLO_TX: TIBStringField;
    cad_cliENT_LOG_NO: TIBStringField;
    cad_cliENT_NRO: TIBStringField;
    cad_cliENT_XCPL: TIBStringField;
    cad_cliENT_CEP: TIBStringField;
    cad_cliRET_LOG_NU: TLargeintField;
    cad_cliENT_BAI_NO: TIBStringField;
    cad_cliENT_BAI_NO_ABREV: TIBStringField;
    cad_cliENT_LOC_NO: TIBStringField;
    cad_cliENT_LOC_NO_ABREV: TIBStringField;
    cad_cliENT_UF: TIBStringField;
    cad_cliRET_CNPJ_CPF: TIBStringField;
    cad_cliRET_TLO_TX: TIBStringField;
    cad_cliRET_LOG_NO: TIBStringField;
    cad_cliRET_LOG_NO_ABREV: TIBStringField;
    cad_cliRET_LOC_NO_ABREV: TIBStringField;
    cad_cliRET_NRO: TIBStringField;
    cad_cliRET_XCPL: TIBStringField;
    cad_cliRET_CEP: TIBStringField;
    cad_cliRET_BAI_NO: TIBStringField;
    cad_cliRET_BAI_NO_ABREV: TIBStringField;
    cad_cliRET_LOC_NO: TIBStringField;
    cad_cliRET_UF: TIBStringField;
    cad_cliINFADCAD: TMemoField;
    cad_cliINFADFIN: TMemoField;
    cad_cliINFADFIS: TMemoField;
    cad_cliINFADCNAE: TMemoField;
    cad_cliAPI_B2B_COD_ENV: TSmallintField;
    cad_cliAPI_B2B_DTC_ENV: TDateTimeField;
    cad_cliAPI_B2B_COD_REC: TIBStringField;
    cad_cliAPI_B2B_DTC_REC: TDateTimeField;
    cad_cliIP: TIBStringField;
    cad_cliHOST: TIBStringField;
    cad_cliFLAG: TSmallintField;
    cad_cliCLI_BAI: TIBStringField;
    cad_cliCLI_CID: TIBStringField;
    cad_cliCLI_ESTA: TIBStringField;
    cad_cliCLI_CONT: TIBStringField;
    cad_cliCLI_MAIL: TIBStringField;
    cad_cliCLI_DDD: TIBStringField;
    cad_cliCLI_TEL1: TIBStringField;
    cad_cliCLI_TEL2: TIBStringField;
    cad_cliCLI_DCAD: TDateField;
    cad_cliCLI_STA: TIBStringField;
    cad_cliCLI_FAX: TIBStringField;
    cad_cliCLI_CEL: TIBStringField;
    cad_cliCLI_COMP: TIBStringField;
    cad_cliCLI_RG: TIBStringField;
    cad_cliCLI_CPF: TIBStringField;
    cad_cliCLI_TLOC: TIBStringField;
    cad_cliCLI_LOGC: TIBStringField;
    cad_cliCLI_INSC: TIBStringField;
    cad_cliCLI_CEPC: TIBStringField;
    cad_cliCLI_CDEP: TSmallintField;
    cad_cliCLI_NUME: TIBStringField;
    cad_cliCLI_NUMC: TIBStringField;
    cad_cliCLI_CEP: TIBStringField;
    cad_cliCLI_FANT: TIBStringField;
    cad_cliCLI_RAZA: TIBStringField;
    cad_cliCLI_TLOG: TIBStringField;
    cad_cliCLI_CNPJ: TIBStringField;
    cad_cliCLI_COMC: TIBStringField;
    cad_cliCLI_LOGR: TIBStringField;
    cad_cliCLI_BAIC: TIBStringField;
    cad_cliCLI_CIDC: TIBStringField;
    cad_cliCLI_ESTC: TIBStringField;
    cad_cliCLI_STAV: TIBStringField;
    cad_cliCLI_VULT: TIBBCDField;
    cad_cliCLI_TPVE: TIBStringField;
    cad_cliCLI_TLOV: TIBStringField;
    cad_cliCLI_LOGV: TIBStringField;
    cad_cliCLI_RAZC: TIBStringField;
    cad_cliCLI_CEPV: TIBStringField;
    cad_cliCLI_NUMV: TIBStringField;
    cad_cliCLI_COMV: TIBStringField;
    cad_cliCLI_BAIV: TIBStringField;
    cad_cliCLI_CIDV: TIBStringField;
    cad_cliCLI_ESTV: TIBStringField;
    cad_cliCLI_RICM: TIBStringField;
    cad_cliCLI_CPAG: TIBStringField;
    cad_cliCLI_DPAG: TIBStringField;
    cad_cliCLI_CMUN: TIBStringField;
    cad_cliCLI_DALT: TDateField;
    cad_cliCLI_CTRA: TIntegerField;
    cad_cliCLI_DTRA: TIBStringField;
    cad_cliCLI_DFUN: TDateField;
    cad_cliCLI_CICM: TIBStringField;
    cad_cliCLI_RAMO: TIBStringField;
    cad_cliCLI_CMUV: TIBStringField;
    cad_cliCLI_CMUC: TIBStringField;
    cad_cliCLI_DD2: TIBStringField;
    cad_cliCLI_DD3: TIBStringField;
    cad_cliCLI_DD4: TIBStringField;
    cad_cliCLI_DD5: TIBStringField;
    cad_cliCLI_DD6: TIBStringField;
    cad_cliCLI_TEL3: TIBStringField;
    cad_cliCLI_TCE1: TIBStringField;
    cad_cliCLI_TCE2: TIBStringField;
    cad_cliCLI_NCEL: TIBStringField;
    cad_cliCLI_NEID: TIBStringField;
    cad_cliCLI_FCON: TIBStringField;
    cad_cliCLI_FMAI: TIBStringField;
    cad_cliCLI_FDDD: TIBStringField;
    cad_cliCLI_FTE1: TIBStringField;
    cad_cliCLI_FDD2: TIBStringField;
    cad_cliCLI_FTE2: TIBStringField;
    cad_cliCLI_FDD3: TIBStringField;
    cad_cliCLI_FTE3: TIBStringField;
    cad_cliCLI_FDD4: TIBStringField;
    cad_cliCLI_FFAX: TIBStringField;
    cad_cliCLI_FDD5: TIBStringField;
    cad_cliCLI_FCEL: TIBStringField;
    cad_cliCLI_FTC1: TIBStringField;
    cad_cliCLI_FDD6: TIBStringField;
    cad_cliCLI_FNCE: TIBStringField;
    cad_cliCLI_FTC2: TIBStringField;
    cad_cliCLI_FNID: TIBStringField;
    cad_cliCLI_CCON: TIBStringField;
    cad_cliCLI_CMAI: TIBStringField;
    cad_cliCLI_CDDD: TIBStringField;
    cad_cliCLI_CTE1: TIBStringField;
    cad_cliCLI_CDD2: TIBStringField;
    cad_cliCLI_CTE2: TIBStringField;
    cad_cliCLI_CDD3: TIBStringField;
    cad_cliCLI_CTE3: TIBStringField;
    cad_cliCLI_CDD4: TIBStringField;
    cad_cliCLI_CFAX: TIBStringField;
    cad_cliCLI_CDD5: TIBStringField;
    cad_cliCLI_CCEL: TIBStringField;
    cad_cliCLI_CTC1: TIBStringField;
    cad_cliCLI_CDD6: TIBStringField;
    cad_cliCLI_CNCE: TIBStringField;
    cad_cliCLI_CTC2: TIBStringField;
    cad_cliCLI_CNID: TIBStringField;
    cad_cliCLI_VDSC: TIBBCDField;
    cad_cliCLI_CRED: TIBBCDField;
    cad_cliCLI_SITE: TIBStringField;
    cad_cliCLI_REVE: TIBStringField;
    cad_cliCLI_IMUN: TIBStringField;
    cad_cliCLI_CCM: TIBStringField;
    cad_cliCLI_DULT: TDateField;
    cad_cliCLI_REGI: TIBStringField;
    cad_cliCLI_CVEN: TIntegerField;
    cad_cliCLI_CREP: TIntegerField;
    cad_cliCLI_DUSU: TIBStringField;
    cad_cliCLI_STPD: TSmallintField;
    cad_cliCLI_STCO: TSmallintField;
    cad_cliCLI_ISUF: TIBStringField;
    cad_cliCLI_IM: TIBStringField;
    cad_cliCLI_TLOR: TIBStringField;
    cad_cliCLI_LORE: TIBStringField;
    cad_cliCLI_CEPR: TIBStringField;
    cad_cliCLI_NUMR: TIBStringField;
    cad_cliCLI_COMR: TIBStringField;
    cad_cliCLI_BAIR: TIBStringField;
    cad_cliCLI_CMUR: TIBStringField;
    cad_cliCLI_CIDR: TIBStringField;
    cad_cliCLI_ESTR: TIBStringField;
    cad_cliCLI_IDESTRANGEIRO: TIBStringField;
    cad_cliCLI_IDEC: TLargeintField;
    cad_cliCLI_IDEF: TLargeintField;
    cad_cliCLI_IDEE: TLargeintField;
    cad_cliCLI_IDER: TLargeintField;
    cad_cliCLI_OBSO: TMemoField;
    cad_cliCLI_OBSE: TMemoField;
    cad_cliCLI_OBSS: TMemoField;
    cad_cliCLI_ENVWEB: TSmallintField;
    cad_cliCLI_CPAIS: TSmallintField;
    cad_cliCLI_INDIEDEST: TSmallintField;
    cad_cliCLI_DTPED: TDateTimeField;
    cad_cliCLI_MAI2: TIBStringField;
    cad_cliCLI_MAI3: TIBStringField;
    cad_cliCLI_MAI4: TIBStringField;
    cad_cliCLI_IDST: TSmallintField;
    cad_cliCLI_IDGP: TSmallintField;
    cad_cliCLI_DEGP: TIBStringField;
    cad_cliCLI_ENVMAIL: TSmallintField;
    cad_cliCLI_TIPO: TSmallintField;
    cad_cliCLI_RESE: TSmallintField;
    cad_cliUPLOAD: TSmallintField;
    cad_cliCLI_IDCNAE: TSmallintField;
    cad_cliCLI_IDTPE: TSmallintField;
    cad_cliCLI_IDFIN: TSmallintField;
    cad_cliCLI_IDAVR: TSmallintField;
    cad_cliCDSTA: TSmallintField;
    cad_cliRESTA: TIBStringField;
    cad_cliEVENTO: TIBStringField;
    cad_cliCLI_MFRT: TSmallintField;
    cad_cliDTPD: TDateTimeField;
    cad_cliCLI_INDFINAL: TSmallintField;
    cad_cliAPI_B2B_ENV_SYNC: TSmallintField;
    cad_cliAPI_B2B_ENV_SYNC_DATA: TDateTimeField;
    cad_cliAPI_B2B_REC_SYNC: TSmallintField;
    cad_cliAPI_B2B_REC_SYNC_DATA: TDateTimeField;
    cad_cliCOB_LOG_NU: TLargeintField;
    cad_cliCOB_TLO_TX: TIBStringField;
    cad_cliCOB_LOG_NO: TIBStringField;
    cad_cliCOB_NRO: TIBStringField;
    cad_cliCOB_XCPL: TIBStringField;
    cad_cliCOB_CEP: TIBStringField;
    cad_cliCOB_BAI_NO: TIBStringField;
    cad_cliCOB_BAI_NO_ABREV: TIBStringField;
    cad_cliCOB_LOC_NO: TIBStringField;
    cad_cliCOB_LOC_NO_ABREV: TIBStringField;
    cad_cliCOB_UF: TIBStringField;
    cad_cliENT_TIPO: TSmallintField;
    cad_cliENT_PRAZO: TSmallintField;
    cad_cliFIS_CREGTRIB: TSmallintField;
    cad_cliCOB_CMUN: TLargeintField;
    cad_cliENT_CMUN: TLargeintField;
    cad_cliIS_PDSC: TSmallintField;
    cad_cliDEST: TIBStringField;
    cad_cliDTPP: TDateTimeField;
    cad_cliDTPV: TDateTimeField;
    cad_cliDTAB: TDateTimeField;
    cad_cliDTDV: TDateTimeField;
    cad_cliDTRO: TDateTimeField;
    cad_cliDTNF: TDateTimeField;
    cad_cliNAFA: TSmallintField;
    QConsulta: TIBQuery;
    LAPSQCEP: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure edccliValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure edtel2DblClick(Sender: TObject);
    procedure edtel1DblClick(Sender: TObject);
    procedure edfaxDblClick(Sender: TObject);
    procedure edcelDblClick(Sender: TObject);
    procedure edinscExit(Sender: TObject);
    procedure SIMPSQCadastroFiscalClick(Sender: TObject);
    procedure edcnpjExit(Sender: TObject);
    procedure edcpfExit(Sender: TObject);
    procedure edmailChange(Sender: TObject);
    procedure EDCOM_LOG_NOValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure BEENT_CMUNButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LAPSQCEPClick(Sender: TObject);
    procedure ACTMPostExecute(Sender: TObject);
  private
    { Private declarations }
    RECEndereco: TRECPEdidos;

    procedure NOVO_CLIENTE;
    procedure PESQUISA_CLIENTE(var ASender: TdxMaskEdit);
  public
    { Public declarations }
    IDCliente: Variant;

    procedure _WM_AFTER_ACTIVATE(var Msg: TMessage); message WM_AFTER_ACTIVATE;
  end;

var
  frmcad_cli_edi: Tfrmcad_cli_edi;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmCAD_CLI_EDI._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
  inherited;
  with Consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CLI_DEGP FROM CAD_CLI');
    SQL.Add('WHERE    NOT FEMPTY(CLI_DEGP)');
    SQL.Add('GROUP BY CLI_DEGP');
    SQL.Add('ORDER BY CLI_DEGP');
    Open;
    while not eof do
    begin
      PEDEGP.Items.Add(fields[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.FANTASIA FROM CAD_REP AS PK WHERE PK.REST = ''A'' ORDER BY PK.FANTASIA');
    Open;
    while not eof do
    begin
      IEIDCR.Values.Add(fields[0].AsString);
      IEIDCR.Descriptions.Add(fields[1].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.LOGIN FROM TAB_USER AS PK WHERE PK.REST = ''A'' AND PK.GRUPO = ''VEN'' ORDER BY PK.LOGIN');
    Open;
    while not eof do
    begin
      IEIDCV.Values.Add(fields[0].AsString);
      IEIDCV.Descriptions.Add(fields[1].AsString);
      next;
    end;
  end;

  NOVO_CLIENTE;

  if Tag = 99 then
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.IDCD,PK.DECD,PK.RZCD,PK.GPCD,');

    { CAD_CLI_CRD }
    SQL.Add('COALESCE(FK.IDEP    ,0) AS FIN_IDEP    ,COALESCE(FK.VCRD        ,0) AS FIN_VCRD        ,COALESCE(FK.NAFA        ,0   ) AS FIN_CSPD,');
    SQL.Add('COALESCE(FK.PDSC    ,0) AS FIN_PDSC    ,COALESCE(FK.VDSC        ,0) AS FIN_VDSC        ,NULLIF(FK.INFADCAD_L1   ,'''') AS FIN_INFADCAD_L1 ,NULLIF(FK.INFADCAD_L2    ,'''') AS FIN_INFADCAD_L2,');
    SQL.Add('COALESCE(FK.PDSC_001,0) AS FIN_PDSC_001,COALESCE(FK.VDSC_INI_001,0) AS FIN_VDSC_INI_001,COALESCE(FK.VDSC_FIM_001,0   ) AS FIN_VDSC_FIM_001,NULLIF(FK.INFADCAD_L1_001,'''') AS FIN_INFADCAD_L1_001,NULLIF(FK.INFADCAD_L2_001,'''') AS FIN_INFADCAD_L2_001,');
    SQL.Add('COALESCE(FK.PDSC_002,0) AS FIN_PDSC_002,COALESCE(FK.VDSC_INI_002,0) AS FIN_VDSC_INI_002,COALESCE(FK.VDSC_FIM_002,0   ) AS FIN_VDSC_FIM_002,NULLIF(FK.INFADCAD_L1_002,'''') AS FIN_INFADCAD_L1_002,NULLIF(FK.INFADCAD_L2_002,'''') AS FIN_INFADCAD_L2_002,');
    SQL.Add('COALESCE(FK.PDSC_003,0) AS FIN_PDSC_003,COALESCE(FK.VDSC_INI_003,0) AS FIN_VDSC_INI_003,COALESCE(FK.VDSC_FIM_003,0   ) AS FIN_VDSC_FIM_003,NULLIF(FK.INFADCAD_L1_003,'''') AS FIN_INFADCAD_L1_003,NULLIF(FK.INFADCAD_L2_003,'''') AS FIN_INFADCAD_L2_003,');

    SQL.Add('PK.DTCA,PK.DTFU,PK.DTUTPC,PK.DTUTPP,PK.DTUTPV,');
    SQL.Add('PK.CDST,PK.REST,PK.DEST  ,');
    SQL.Add('PK.CNPJ,PK.FIS_CRT,PK.FIS_CREDICMS,');
    SQL.Add('PK.IE  ,PK.FIS_INDIEDEST,PK.FIS_INDFINAL,');
    SQL.Add('PK.ISUF,PK.IM,');
    SQL.Add('PK.CPF ,PK.IDESTRANGEIRO,');
    SQL.Add('PK.IDCV,PK.DECV,PK.IDCR,PK.DECR,PK.IDCC,PK.DECC,');
    SQL.Add('PK.CDPD,PK.CDCO,PK.CDPG,PK.DEPG,');
    SQL.Add('PK.IDCT,PK.DECT,PK.MFRT,');
    SQL.Add('PK.CONTATO,PK.DDD,PK.TEL,PK.EMAIL,PK.ENVEMAIL,PK.D_FONE,PK.D_CONTATO,PK.D_CONTATO2,PK.D_CONTATO3,PK.D_CEL_CONTATO,PK.D_CEL_CONTATO2,PK.D_ZAP_CONTATO,');
    SQL.Add('PK.LOG_NU,PK.TLO_TX,PK.LOG_NO,PK.NRO,PK.XCPL,PK.CEP,PK.BAI_NO,PK.LOC_NO,PK.CMUN,ZFM_CMUN,ZFM_CENQ,PK.UF,PK.CPAIS,PK.XPAIS,PK.D_LOG,');
    SQL.Add('PK.ENT_LOG_NU,PK.ENT_TLO_TX,PK.ENT_LOG_NO,PK.ENT_NRO,PK.ENT_XCPL,PK.ENT_CEP,PK.ENT_BAI_NO,PK.ENT_LOC_NO,PK.ENT_CMUN,PK.ENT_UF,');
    SQL.Add('PK.INFADCAD,PK.INFADFIN');

    SQL.Add('FROM      VW_CAD_CLI  AS PK');
    SQL.Add('LEFT JOIN CAD_CLI_CRD AS FK ON (FK.IDCD = PK.IDCD AND FK.IDEP = '''+ RECParametros.EP_ID +''')');

    SQL.Add('WHERE PK.IDCD = ''' + IDCLIENTE + '''');
    ExecQuery;

    if Current.Vars[0].AsInteger > 0 then
    begin
      edccli.Text := oStrZero(Current.ByName('IDCD').AsInteger,5);

      edfant.Text := Current.ByName('DECD').AsString;
      edraza.Text := Current.ByName('RZCD').AsString;
      PEDEGP.Text := Current.ByName('GPCD').AsString;

      if Current.ByName('CLI_DFUN').AsDateTime > 0 then
         eddfun.Date := Current.ByName('CLI_DFUN').AsDateTime;

    //cbramo.Text := Current.ByName('CLI_RAMO').AsString;

      { Fone Principal }
      edcont.Text := Current.ByName('CONTATO').AsString;
      edddd.Text  := Current.ByName('DDD').AsString;
      edtel1.Text := oRETNumero(Current.ByName('TEL').AsString);
      edmail.Text := Current.ByName('EMAIL').AsString;

      { Fone 2 }
      eddd2.Text  := Current.ByName('DDD2').AsString;
      edtel2.Text := oRETNumero(Current.ByName('TEL2').AsString);

      { Fone 3 }
      eddd3.Text  := Current.ByName('DDD3').AsString;
      edtel3.Text := Current.ByName('TEL3').AsString;

      { Celular }
      eddd5.Text  := Current.ByName('CEL_DDD').AsString;
      edcel.Text  := oRETNumero(Current.ByName('CEL_TEL').AsString);
      edneid.Text := Current.ByName('CLI_NEID').AsString;
    end;
  end;

  with cad_cli do
  begin
    cad_cli.Close;
    cad_cli.Params[0].Value := IDCliente;
    cad_cli.Open;

    edccli.Text := oStrZero(FieldByName('ID').AsInteger,5);
    edfant.Text := FieldByName('CLI_FANT').AsString;
    eddcad.Date := FieldByName('CLI_DCAD').AsDateTime;
    eddalt.Date := RECParametros.SHE_DATA;
    if FieldByName('CLI_DFUN').AsDateTime > 0 then
    eddfun.Date := FieldByName('CLI_DFUN').AsDateTime;
    edraza.Text := FieldByName('CLI_RAZA').AsString;
    PEDEGP.Text := FieldByName('CLI_DEGP').AsString;

    IEIDCV.Text := IFThen(RECUsuarios.Grupo = 'VEN'             ,RECUsuarios.Id       ,IntToStr(FieldByName('CLI_CVEN').AsInteger));
    IEIDCR.Text := IFThen(FieldByName('CLI_CREP').AsInteger = 0,RECParametros.CR_ID,IntToStr(FieldByName('CLI_CREP').AsInteger));

    cbramo.Text := FieldByName('CLI_RAMO').AsString;
    edcont.Text := FieldByName('CLI_CONT').AsString;
    edfcon.Text := FieldByName('CLI_FCON').AsString;
    edccon.Text := FieldByName('CLI_CCON').AsString;
    edmail.Text := FieldByName('CLI_MAIL').AsString;
    edfmai.Text := FieldByName('CLI_FMAI').AsString;
    edcmai.Text := FieldByName('CLI_CMAI').AsString;
    edddd.Text  := FieldByName('CLI_DDD').AsString;
    eddd2.Text  := FieldByName('CLI_DD2').AsString;
    eddd3.Text  := FieldByName('CLI_DD3').AsString;
    eddd4.Text  := FieldByName('CLI_DD4').AsString;
    eddd5.Text  := FieldByName('CLI_DD5').AsString;
    edfddd.Text := FieldByName('CLI_FDDD').AsString;
    edfdd2.Text := FieldByName('CLI_FDD2').AsString;
    edfdd3.Text := FieldByName('CLI_FDD3').AsString;
    edfdd4.Text := FieldByName('CLI_FDD4').AsString;
    edfdd5.Text := FieldByName('CLI_FDD5').AsString;
    edcddd.Text := FieldByName('CLI_CDDD').AsString;
    edcdd2.Text := FieldByName('CLI_CDD2').AsString;
    edcdd3.Text := FieldByName('CLI_CDD3').AsString;
    edcdd4.Text := FieldByName('CLI_CDD4').AsString;
    edcdd5.Text := FieldByName('CLI_CDD5').AsString;
    edtel1.Text := oRETNumero(FieldByName('CLI_TEL1').AsString);
    edtel2.Text := oRETNumero(FieldByName('CLI_TEL2').AsString);
    edtel3.Text := FieldByName('CLI_TEL3').AsString;
    edfax.Text  := FieldByName('CLI_FAX').AsString;
    edffax.Text := FieldByName('CLI_FFAX').AsString;
    edcfax.Text := FieldByName('CLI_CFAX').AsString;
    edfte1.Text := FieldByName('CLI_FTE1').AsString;
    edfte2.Text := FieldByName('CLI_FTE2').AsString;
    edfte3.Text := FieldByName('CLI_FTE3').AsString;
    edcte1.Text := FieldByName('CLI_CTE1').AsString;
    edcte2.Text := FieldByName('CLI_CTE2').AsString;
    edcte3.Text := FieldByName('CLI_CTE3').AsString;
    edcel.Text  := oRETNumero(FieldByName('CLI_CEL').AsString);
    edfcel.Text := FieldByName('CLI_FCEL').AsString;
    edccel.Text := FieldByName('CLI_CCEL').AsString;
    edneid.Text := FieldByName('CLI_NEID').AsString;
    cbtce1.Text := FieldByName('CLI_TCE1').AsString;
    cbftc1.Text := FieldByName('CLI_FTC1').AsString;
    cbctc1.Text := FieldByName('CLI_CTC1').AsString;
    edccm.Text  := FieldByName('CLI_CCM').AsString;
    edimun.Text := FieldByName('CLI_IMUN').AsString;
    edcnpj.Text := FieldByName('CLI_CNPJ').AsString;
    edinsc.Text := FieldByName('CLI_INSC').AsString;
    edcpf.Text  := FieldByName('CLI_CPF').AsString;

    EDCOM_TLO_TX.Text := FieldByName('CLI_TLOG').AsString;
    EDCOM_LOG_NO.Text := FieldByName('CLI_LOGR').AsString;
    EDCOM_NRO.Text    := FieldByName('CLI_NUME').AsString;
    BECOM_CEP.Text    := FieldByName('CLI_CEP').AsString;
    EDCOM_XCPL.Text   := FieldByName('CLI_COMP').AsString;
    BECOM_CMUN.Text   := FieldByName('CLI_CMUN').AsString;
    EDCOM_BAI_NO.Text := FieldByName('CLI_BAI').AsString;
    EDCOM_LOC_NO.Text := FieldByName('CLI_CID').AsString;
    EDCOM_UF.Text     := FieldByName('CLI_ESTA').AsString;

    EDCOB_TLO_TX.Text := FieldByName('CLI_TLOC').AsString;
    EDCOB_LOG_NO.Text := FieldByName('CLI_LOGC').AsString;
    EDCOB_NRO.Text    := FieldByName('CLI_NUMC').AsString;
    BECOB_CEP.Text    := FieldByName('CLI_CEPC').AsString;
    EDCOB_XCPL.Text   := FieldByName('CLI_COMC').AsString;
    BECOB_CMUN.Text   := FieldByName('CLI_CMUC').AsString;
    EDCOB_BAI_NO.Text := FieldByName('CLI_BAIC').AsString;
    EDCOB_LOC_NO.Text := FieldByName('CLI_CIDC').AsString;
    EDCOB_UF.Text     := FieldByName('CLI_ESTC').AsString;

    EDENT_TLO_TX.Text := FieldByName('CLI_TLOV').AsString;
    EDENT_LOG_NO.Text := FieldByName('CLI_LOGV').AsString;
    EDENT_NRO.Text    := FieldByName('CLI_NUMV').AsString;
    BEENT_CEP.Text    := FieldByName('CLI_CEPV').AsString;
    EDENT_XCPL.Text   := FieldByName('CLI_COMV').AsString;
    BEENT_CMUN.Text   := FieldByName('CLI_CMUV').AsString;
    EDENT_BAI_NO.Text := FieldByName('CLI_BAIV').AsString;
    EDENT_LOC_NO.Text := FieldByName('CLI_CIDV').AsString;
    EDENT_UF.Text     := FieldByName('CLI_ESTV').AsString;

    cbreve.Text := FieldByName('CLI_REVE').AsString;
    cbricm.Text := FieldByName('CLI_RICM').AsString;
    cbcicm.Text := FieldByName('CLI_CICM').AsString;

    EMINFADCAD.Text := FieldByName('CLI_OBSE').AsString;
    EMINFADFIN.Text := FieldByName('CLI_OBSO').AsString;

    IEREST.Text := FieldByName('CLI_STAV').AsString;
    IENAFA.Text := FieldByName('NAFA').AsString;

    IETPRE.Text := FieldByName('CLI_TIPO').AsString;
    IEAVRE.Text := FieldByName('CLI_RESE').AsString;
  end;
end;

procedure Tfrmcad_cli_edi.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_CLI_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GAdmin := True; { Grant }
  inherited;

  { Grant }
  REC_SHE_DEF.GDescricao  := 'Representantes';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;

  IDCliente   := '0';
  IEIDCR.Text := RECParametros.CR_ID;

  EMINFADFIN.ReadOnly := NOT (bPSQUSER('USU_AUTO','Financeiro','Contas a Receber' ,'Permissões Gerais',false));
  IEIDCV.Enabled      := (RECUsuarios.Grupo <> 'VEN');
end;

procedure Tfrmcad_cli_edi.FormDestroy(Sender: TObject);
begin
  inherited;
  { record e afins }
  try
    oFRECPedidos(RECEndereco);
  except
    on E: Exception do
    begin
      oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                               'Error Code: '+E.Message+'.'        +#13+
                                Caption+'.');
    end;
  end;

  frmcad_cli_edi := Nil;
end;

procedure Tfrmcad_cli_edi.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not (ActiveControl is TdxButtonEdit) then
     inherited;
end;

procedure Tfrmcad_cli_edi.NOVO_CLIENTE;
begin
  PCPrincipal.ActivePageIndex := 0;
  PCINFADCAD.ActivePageIndex  := 0;
  
  PCINFADCPL.ActivePageIndex  := 0;
  PCContatos.ActivePageIndex  := 0;
  PCEnderecos.ActivePageIndex := 0;

  PEDEGP.Text := '';
  edccli.Text := '00000';
  edfant.Text := '';
  eddfun.Date := RECParametros.SHE_DATA;
  edraza.Text := '';
  cbramo.Text := '';
  edcont.Text := '';
  edfcon.Text := '';
  edccon.Text := '';
  edmail.Text := '';
  edfmai.Text := '';
  edcmai.Text := '';
  edfant.Text := '';
  edddd.Text  := '11';
  eddd2.Text  := '11';
  eddd3.Text  := '11';
  eddd4.Text  := '11';
  eddd5.Text  := '11';
  edfddd.Text := '11';
  edfdd2.Text := '11';
  edfdd3.Text := '11';
  edfdd4.Text := '11';
  edfdd5.Text := '11';
  edcddd.Text := '11';
  edcdd2.Text := '11';
  edcdd3.Text := '11';
  edcdd4.Text := '11';
  edcdd5.Text := '11';
  edtel1.Text := '';
  edtel2.Text := '';
  edtel3.Text := '';
  edfte1.Text := '';
  edfte2.Text := '';
  edfte3.Text := '';
  edcte1.Text := '';
  edcte2.Text := '';
  edcte3.Text := '';
  edfax.Text  := '';
  edffax.Text := '';
  edcfax.Text := '';
  edcel.Text  := '';
  edfcel.Text := '';
  edccel.Text := '';
  edneid.Text := '';
  cbtce1.Text := '';
  cbftc1.Text := '';
  cbctc1.Text := '';
  edcnpj.Text := '';
  edinsc.Text := '';
  edcpf.Text  := '';
  edccm.Text  := '';
  edimun.Text := '';
  edfant.Text := '';

  EMINFADCAD.Text := '';
  EMINFADFIN.Text := '';

  IEREST.Text := 'A';
  IENAFA.Text := '0';

  IETPRE.Text := '0';
  IEAVRE.Text := '0';
  if RECParametros.EP_ID = 1 then
  IEAVRE.Text := '7';

  if RECUSuarios.Grupo = 'VEN' then
     IEIDCv.Text := RECUsuarios.Id else
     IEIDCV.Text := RECParametros.CR_ID;
end;

procedure Tfrmcad_cli_edi.edccliValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edccli.Text = '' then
  edccli.Text := '00000';

  edccli.Text := oStrZero(strtoint(edccli.Text),5);

  with Consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT CLI_RAZA FROM CAD_CLI');
    SQL.Add('WHERE  ID = '''+edccli.Text+'''');
    Open;

    if not fields[0].IsNull then
    begin
      raise exception.Create('Cliente já Cadastrado com o mesmo código '+#13+fields[0].AsString);
    end;
  end;
end;

procedure Tfrmcad_cli_edi.edtel2DblClick(Sender: TObject);
begin
  edtel2.Text := '';
end;

procedure Tfrmcad_cli_edi.edtel1DblClick(Sender: TObject);
begin
  edtel1.Text := '';
end;

procedure Tfrmcad_cli_edi.edfaxDblClick(Sender: TObject);
begin
  edfax.Text := '';
end;

procedure Tfrmcad_cli_edi.edcelDblClick(Sender: TObject);
begin
  edcel.Text := '';
end;

procedure Tfrmcad_cli_edi.edinscExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if copy(edinsc.Text,1,3) = 'ISE' then
    begin
      if edinsc.Text <> 'ISENTO' then
         edinsc.Text := 'ISENTO';
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmcad_cli_edi.SIMPSQCadastroFiscalClick(Sender: TObject);
var
  RECCadastro: TRECCadastros;
begin
  try ActiveControl := Nil;
  finally if ActiveControl <> Nil then Abort;
  end;

  RECCadastro := uPSQCadastroFiscal(EDCNPJ.Text);
  if RECCadastro.Selected then
  begin
    PESQUISA_CLIENTE(edcnpj);

    if RECCadastro.DTFU > 0 then
    eddfun.Text := DateToStr(RECCadastro.DTFU);
    edfant.Text := RECCadastro.DECD;
    edraza.Text := RECCadastro.RZCD;
    edcnpj.Text := RECCadastro.CNPJ;
    edinsc.Text := RECCadastro.IE;
    edcpf.Text  := RECCadastro.CPF;
    edmail.Text := RECCadastro.Email;
    edDDD.Text  := RECCadastro.DDD;
    edTel1.Text := RECCadastro.TEL;

    EDCOM_TLO_TX.Text := RECCadastro.TLO_TX;
    EDCOM_LOG_NO.Text := RECCadastro.LOG_NO;
    EDCOM_NRO.Text    := RECCadastro.NRO;
    EDCOM_XCPL.Text   := RECCadastro.XCPL;
    BECOM_CEP.Text    := RECCadastro.CEP;
    EDCOM_BAI_NO.Text := RECCadastro.BAI_NO;
    EDCOM_LOC_NO.Text := RECCadastro.LOC_NO;
    BECOM_CMUN.Text   := RECCadastro.CMUN;
    EDCOM_UF.Text     := RECCadastro.UF;
    EMINFADCAD.Text   := RECCadastro.INFADCAD;
  end;
end;

procedure Tfrmcad_cli_edi.PESQUISA_CLIENTE(var ASender: TdxMaskEdit);
begin
  if (not oEmpty(ASender.Text)) and (not oEmpty(edccli.Text)) then
  begin
    if ASender.Name = 'edcnpj' then
       if not oCNPJ(ASender.Text) then
       oException(ASender,'CNPJ Inválido !');

    if ASender.Name = 'edcpf' then
       if not oCPF(ASender.Text) then
       oException(ASender,'CPF Inválido !');

    with Consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,CLI_RAZA FROM CAD_CLI');
      SQL.Add('WHERE  CLI_CNPJ = '''+ASender.Text+'''');
      SQL.Add('AND    ID <> '''+edccli.Text+'''');
      SQL.Add('OR    (CLI_CNPJ = '''+ASender.Text+'''');
      SQL.Add('AND    ID <> '''+edccli.Text+''')');
      Open;
      if not Fields[0].IsNull then
      oException(ASender,ASender.Hint+' já Cadastrado !'+#13+
                'Cliente: ( '+oStrZero(Fields[0].AsInteger,5)+' ) '+Fields[1].AsString);
    end;
  end;
  ASender.Modified := False;
end;

procedure Tfrmcad_cli_edi.edcnpjExit(Sender: TObject);
var
  WinControl: TWinControl;
begin
  if edcnpj.Modified then
  try
    edcnpj.OnExit := Nil;
    PESQUISA_CLIENTE(edcnpj);
  finally
    WinControl := ActiveControl;
    ActiveControl := Nil;
    if WinControl <> Nil then
    begin
      PostMessage(TWinControl(WinControl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(WinControl).SetFocus;
    end;
    edcnpj.OnExit := edcnpjExit;
  end;
end;

procedure Tfrmcad_cli_edi.edcpfExit(Sender: TObject);
var
  WinControl: TWinControl;
begin
  if edcpf.Modified then
  try
    edcpf.OnExit := Nil;
    PESQUISA_CLIENTE(edcpf);
  finally
    WinControl := ActiveControl;
    ActiveControl := Nil;
    if WinControl <> Nil then
    begin
      PostMessage(TWinControl(WinControl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(WinControl).SetFocus;
    end;
    edcpf.OnExit := edcpfExit;
  end;
end;

procedure Tfrmcad_cli_edi.edmailChange(Sender: TObject);
begin
  edmail.Tag := 0;
end;

procedure Tfrmcad_cli_edi.EDCOM_LOG_NOValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var
    SenderName: String;
begin
 if LAPSQCEP.Tag = 1 then
    Exit;

  oIRECPedidos(RECEndereco);
  RECEndereco.AWinControl := TWinControl(Sender);
  RECEndereco.AQConsulta  := QConsulta;

  try
    if Sender.ClassType = TdxButtonEdit then
       SenderName := Copy(TdxButtonEdit(Sender).Name,3,4) else SenderName := Copy(TdxEdit(Sender).Name,3,4);

    uPSQEND(RECEndereco);
  finally
    if RECEndereco.Selected then
    begin
      REC_SHE_DEF.Edited := (not ALockWindowUpdate);

      TdxEdit(FindComponent(Format('ED%sTLO_TX',[SenderName]))).Text := RECEndereco.TLO_TX;
      TdxEdit(FindComponent(Format('ED%sLOG_NO',[SenderName]))).Tag  := RECEndereco.LOG_NU;
      TdxEdit(FindComponent(Format('ED%sLOG_NO',[SenderName]))).Text := RECEndereco.LOG_NO;
      TdxEdit(FindComponent(Format('ED%sXCPL'  ,[SenderName]))).Text := RECEndereco.XCPL;
      TdxEdit(FindComponent(Format('ED%sBAI_NO',[SenderName]))).Text := RECEndereco.BAI_NO;
      TdxEdit(FindComponent(Format('ED%sLOC_NO',[SenderName]))).Text := RECEndereco.LOC_NO;
      TdxEdit(FindComponent(Format('ED%sCMUN'  ,[SenderName]))).Text := RECEndereco.LOC_NO;
      TdxEdit(FindComponent(Format('ED%sUF'    ,[SenderName]))).Text := RECEndereco.UF;

      TdxButtonEdit(FindComponent(Format('BE%sCEP' ,[SenderName]))).Text := RECEndereco.CEP;
      TdxButtonEdit(FindComponent(Format('BE%sCMUN',[SenderName]))).Text := RECEndereco.CMUN;

      TdxEdit(FindComponent(Format('ED%sNRO',[SenderName]))).SetFocus;
    end;

    if Sender.ClassType = TdxButtonEdit then
       TdxButtonEdit(Sender).Modified := False else TdxButtonEdit(Sender).Modified := False;
  end;
end;

procedure Tfrmcad_cli_edi.BEENT_CMUNButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  RECEndereco.UF := TdxEdit(FindComponent(Format('ED%sUF',[Copy(TdxButtonEdit(Sender).Name,3,4)]))).Text;

  if Length(RECEndereco.UF) < 2 then
     oException(TdxEdit(FindComponent(Format('ED%sUF',[Copy(TdxButtonEdit(Sender).Name,3,4)]))),'UF não informada ou incorreta !');

  try
    RECEndereco.CMUN := TdxButtonEdit(Sender).Text;
    uPSQCMUN(RECEndereco);
  finally TdxButtonEdit(Sender).Text := RECEndereco.CMUN;
  end;
end;

procedure Tfrmcad_cli_edi.LAPSQCEPClick(Sender: TObject);
begin
  if LAPSQCEP.Tag = 0 then
  begin
    LAPSQCEP.Tag := 1;
    LAPSQCEP.Font.Color := clRed;
  end else
  begin
    LAPSQCEP.Tag := 0;
    LAPSQCEP.Font.Color := $00D69F30;
  end;
  Application.ProcessMessages;
end;

procedure Tfrmcad_cli_edi.ACTMPostExecute(Sender: TObject);
begin
  inherited;
  if IEIDCV.Text = '0' then
     oException(IEIDCV,'Vendedor não Informado !');

  if (IEIDCR.Text = '0') then
      oException(IEIDCR,'Representante não Informado !');

  if edfant.Text = '' then
     oException(edfant,'Nome Fantasia não Informado !');

  if edraza.Text = '' then
     oException(edraza,'Razão Social não Informado !');

  if (edccli.Text = '') or (edccli.Text = '00000') then
  with Consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_CAD_CLI,0) FROM RDB$DATABASE');
    Open;
    edccli.Text := oStrZero(fields[0].AsInteger+1,5);
  end;
  
  try
    SPEdicao.Close;
    SPEdicao.StoredProcName := 'SP_CAD_CLI';
    SPEdicao.Prepare;

    { Cadastro }
    SPEdicao.ParamByName('ID'  ).Value := IDCliente;
    SPEdicao.ParamByName('IDEP').Value := RECParametros.EP_ID;
    SPEdicao.ParamByName('IDCA').Value := RECUsuarios.Id;

    SPEdicao.ParamByName('dfun').Value := IFThen(eddfun.Date > 0,eddfun.Date,0);
    SPEdicao.ParamByName('NAFA').Value := IENAFA.Text;

    { Sintegra }
    SPEdicao.ParamByName('fant').Value := edfant.Text;
    SPEdicao.ParamByName('raza').Value := edraza.Text;
    SPEdicao.ParamByName('DEGP').Value := PEDEGP.Text;
    SPEdicao.ParamByName('ramo').Value := cbramo.Text;

    SPEdicao.ParamByName('cnpj').Value := edcnpj.Text;
    SPEdicao.ParamByName('insc').Value := edinsc.Text;
    SPEdicao.ParamByName('imun').Value := edimun.Text;
    SPEdicao.ParamByName('ccm' ).Value := edccm.Text;
    SPEdicao.ParamByName('cpf' ).Value := edcpf.Text;

    { Fiscal }
    SPEdicao.ParamByName('reve').Value := cbreve.Text;
    SPEdicao.ParamByName('ricm').Value := cbricm.Text;
    SPEdicao.ParamByName('cicm').Value := cbcicm.Text;

    { Programações }
    SPEdicao.ParamByName('tipo'   ).Value := IETPRE.Text;
    SPEdicao.ParamByName('reserva').Value := IEAVRE.Text;

    { Vendedores }
    SPEdicao.ParamByName('cven').Value := IEIDCV.Text; { Interno }
    SPEdicao.ParamByName('crep').Value := IEIDCR.Text; { Externo }

    { Comercial }
    SPEdicao.ParamByName('cont').Value := edcont.Text;
    SPEdicao.ParamByName('mail').Value := edmail.Text;

    { Fone }
    SPEdicao.ParamByName('ddd' ).Value := edddd.Text;
    SPEdicao.ParamByName('tel1').Value := edtel1.Text;
    SPEdicao.ParamByName('dd2' ).Value := eddd2.Text;
    SPEdicao.ParamByName('tel2').Value := edtel2.Text;
    SPEdicao.ParamByName('dd3' ).Value := eddd3.Text;
    SPEdicao.ParamByName('tel3').Value := edtel3.Text;

    { Celular }
    SPEdicao.ParamByName('dd5' ).Value := eddd5.Text;
    SPEdicao.ParamByName('cel' ).Value := edcel.Text;
    SPEdicao.ParamByName('neid').Value := edneid.Text;

    { Endereço }
    SPEdicao.ParamByName('tlog').Value := EDCOM_TLO_TX.Text;
    SPEdicao.ParamByName('logr').Value := EDCOM_LOG_NO.Text;
    SPEdicao.ParamByName('nume').Value := Trim(LeftStr(EDCOM_NRO.Text,10));
    SPEdicao.ParamByName('cep').Value  := BECOM_CEP.Text;
    SPEdicao.ParamByName('comp').Value := Trim(LeftStr(EDCOM_XCPL.Text,40));
    SPEdicao.ParamByName('bai').Value  := EDCOM_BAI_NO.Text;
    SPEdicao.ParamByName('cid').Value  := EDCOM_LOC_NO.Text;
    SPEdicao.ParamByName('cmun').Value := BECOM_CMUN.Text;
    SPEdicao.ParamByName('esta').Value := EDCOM_UF.Text;

    { Financeiro }
    SPEdicao.ParamByName('fcon').Value := edfcon.Text;
    SPEdicao.ParamByName('fmai').Value := edfmai.Text;

    { Fone }
    SPEdicao.ParamByName('fddd').Value := edfddd.Text;
    SPEdicao.ParamByName('fte1').Value := edfte1.Text;
    SPEdicao.ParamByName('fdd2').Value := edfdd2.Text;
    SPEdicao.ParamByName('fte2').Value := edfte2.Text;
    SPEdicao.ParamByName('fdd3').Value := edfdd3.Text;
    SPEdicao.ParamByName('fte3').Value := edfte3.Text;

    { Celular }
    SPEdicao.ParamByName('fdd5').Value := edfdd5.Text;
    SPEdicao.ParamByName('fcel').Value := edfcel.Text;
    SPEdicao.ParamByName('fnid').Value := EmptyStr;

    { Endereço }
    SPEdicao.ParamByName('tloc').Value := EDCOB_TLO_TX.Text;
    SPEdicao.ParamByName('logc').Value := EDCOB_LOG_NO.Text;
    SPEdicao.ParamByName('numc').Value := Trim(LeftStr(EDCOB_NRO.Text,10));
    SPEdicao.ParamByName('cepc').Value := BECOB_CEP.Text;
    SPEdicao.ParamByName('comc').Value := Trim(LeftStr(EDCOB_XCPL.Text,40));
    SPEdicao.ParamByName('baic').Value := EDCOB_BAI_NO.Text;
    SPEdicao.ParamByName('cidc').Value := EDCOB_LOC_NO.Text;
    SPEdicao.ParamByName('cmuc').Value := BECOB_CMUN.Text;
    SPEdicao.ParamByName('estc').Value := EDCOB_UF.Text;

    { Compras }
    SPEdicao.ParamByName('ccon').Value := edccon.Text;
    SPEdicao.ParamByName('cmai').Value := edcmai.Text;

    { Fone }
    SPEdicao.ParamByName('cddd').Value := edcddd.Text;
    SPEdicao.ParamByName('cte1').Value := edcte1.Text;
    SPEdicao.ParamByName('cdd2').Value := edcdd2.Text;
    SPEdicao.ParamByName('cte2').Value := edcte2.Text;
    SPEdicao.ParamByName('cdd3').Value := edcdd3.Text;
    SPEdicao.ParamByName('cte3').Value := edcte3.Text;

    { Celular }
    SPEdicao.ParamByName('cdd5').Value := edcdd5.Text;
    SPEdicao.ParamByName('ccel').Value := edccel.Text;
    SPEdicao.ParamByName('cnid').Value := EmptyStr;

    { Endereço }
    SPEdicao.ParamByName('tlov').Value := EDENT_TLO_TX.Text;
    SPEdicao.ParamByName('logv').Value := EDENT_LOG_NO.Text;
    SPEdicao.ParamByName('numv').Value := Trim(LeftStr(EDENT_NRO.Text,10));
    SPEdicao.ParamByName('cepv').Value := BEENT_CEP.Text;
    SPEdicao.ParamByName('comv').Value := Trim(LeftStr(EDENT_XCPL.Text,40));
    SPEdicao.ParamByName('baiv').Value := EDENT_BAI_NO.Text;
    SPEdicao.ParamByName('cidv').Value := EDENT_LOC_NO.Text;
    SPEdicao.ParamByName('cmuv').Value := BEENT_CMUN.Text;
    SPEdicao.ParamByName('estv').Value := EDENT_UF.Text;

    { Informações Adicionais }
    SPEdicao.ParamByName('obse').Value := EMINFADCAD.Text;
    SPEdicao.ParamByName('obso').Value := EMINFADFIN.Text;

    { Usuário }
    SPEdicao.ParamByName('dusu').Value := RECUsuarios.Login;

    { Status }
    SPEdicao.ParamByName('stav').Value := IEREST.Text;

    { Dispositivos }
    SPEdicao.ParamByName('IP'  ).Value := RECParametros.IP;
    SPEdicao.ParamByName('HOST').Value := RECParametros.HOST;

    { Dropar }
    SPEdicao.ParamByName('dd4').Value  := EmptyStr;
    SPEdicao.ParamByName('dd6').Value  := EmptyStr;
    SPEdicao.ParamByName('fdd4').Value := EmptyStr;
    SPEdicao.ParamByName('cdd4').Value := EmptyStr;
    SPEdicao.ParamByName('fdd6').Value := EmptyStr;
    SPEdicao.ParamByName('cdd6').Value := EmptyStr;
    SPEdicao.ParamByName('tce1').Value := EmptyStr;
    SPEdicao.ParamByName('ftc1').Value := EmptyStr;
    SPEdicao.ParamByName('fnce').Value := EmptyStr;
    SPEdicao.ParamByName('ftc2').Value := EmptyStr;
    SPEdicao.ParamByName('ncel').Value := EmptyStr;
    SPEdicao.ParamByName('cnce').Value := EmptyStr;
    SPEdicao.ParamByName('tce2').Value := EmptyStr;
    SPEdicao.ParamByName('ctc1').Value := EmptyStr;
    SPEdicao.ParamByName('ctc2').Value := EmptyStr;
    SPEdicao.ExecProc;

    oRTransact(TEdicao);

    oAviso(Application.Handle,'Cliente atualizado coom sucesso !');
    ACTEveExecute.Execute;

    REC_SHE_DEF.Edited := True;
    Close;
  except
    on E: Exception do
    begin
      oRTransact(TEdicao,ltRollback);
      REC_SHE_DEF.Edited := False;

      raise exception.Create('Falha ao tentar salvar cadastro !'+#13+
                             'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                             'Erro: '+E.Message);
    end;
  end;
end;

end.
