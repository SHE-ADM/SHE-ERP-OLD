unit pcad_rep_edi;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, IBStoredProc, IBEvents, IBDatabase, DB, math, StrUtils,
  IBCustomDataSet, IBQuery, dxCntner, dxEditor, dxEdLib, ExtCtrls, StdCtrls,
  dxExEdtr, dxPageControl, ImgList, RxSpeedBar, ComCtrls,
  dxDBELib, Shellapi, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms,
  cxGraphics, cxControls, dxStatusBar, IBSQL, ActnList, rxAnimate,
  rxGIFCtrl;

type
  Tfrmcad_rep_edi = class(Tfrmpadr3)
    Panel1: TPanel;
    pcmain: TdxPageControl;
    tscon: TdxTabSheet;
    tsEND: TdxTabSheet;
    cad_rep: TIBDataSet;
    pccom: TdxPageControl;
    tsccom: TdxTabSheet;
    Label10: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label71: TLabel;
    Label11: TLabel;
    Bevel7: TBevel;
    edddd: TdxMaskEdit;
    edmail: TdxEdit;
    edcont: TdxEdit;
    edtel1: TdxMaskEdit;
    edtel2: TdxMaskEdit;
    edfax: TdxMaskEdit;
    edcel: TdxMaskEdit;
    edneid: TdxMaskEdit;
    edncel: TdxMaskEdit;
    edDD2: TdxMaskEdit;
    edDD3: TdxMaskEdit;
    edtel3: TdxMaskEdit;
    edDD4: TdxMaskEdit;
    edDD5: TdxMaskEdit;
    edDD6: TdxMaskEdit;
    cbtce1: TdxImageEdit;
    cbtce2: TdxImageEdit;
    tscfin: TdxTabSheet;
    Label44: TLabel;
    Label45: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label52: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Bevel8: TBevel;
    edfddd: TdxMaskEdit;
    edfmai: TdxEdit;
    edfcon: TdxEdit;
    edfte1: TdxMaskEdit;
    edfte2: TdxMaskEdit;
    edffax: TdxMaskEdit;
    edfcel: TdxMaskEdit;
    edfnid: TdxMaskEdit;
    edfnce: TdxMaskEdit;
    edfdd2: TdxMaskEdit;
    edfdd3: TdxMaskEdit;
    edfte3: TdxMaskEdit;
    edfdd4: TdxMaskEdit;
    edfdd5: TdxMaskEdit;
    edfdd6: TdxMaskEdit;
    cbftc1: TdxImageEdit;
    cbftc2: TdxImageEdit;
    tsccco: TdxTabSheet;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Bevel9: TBevel;
    edcddd: TdxMaskEdit;
    edcmai: TdxEdit;
    edccon: TdxEdit;
    edcte1: TdxMaskEdit;
    edcte2: TdxMaskEdit;
    edcfax: TdxMaskEdit;
    edccel: TdxMaskEdit;
    edcnid: TdxMaskEdit;
    edcnce: TdxMaskEdit;
    edcdd2: TdxMaskEdit;
    edcdd3: TdxMaskEdit;
    edcte3: TdxMaskEdit;
    edcdd4: TdxMaskEdit;
    edcdd5: TdxMaskEdit;
    edcdd6: TdxMaskEdit;
    cbctc1: TdxImageEdit;
    cbctc2: TdxImageEdit;
    cad_repID: TIntegerField;
    cad_repREP_RAZA: TIBStringField;
    cad_repREP_FANT: TIBStringField;
    cad_repREP_CONT: TIBStringField;
    cad_repREP_DCAD: TDateField;
    cad_repREP_STA: TIBStringField;
    cad_repREP_MAIL: TIBStringField;
    cad_repREP_DDD: TIBStringField;
    cad_repREP_TEL1: TIBStringField;
    cad_repREP_TEL2: TIBStringField;
    cad_repREP_FAX: TIBStringField;
    cad_repREP_CEL: TIBStringField;
    cad_repREP_RG: TIBStringField;
    cad_repREP_CPF: TIBStringField;
    cad_repREP_INSC: TIBStringField;
    cad_repREP_CNPJ: TIBStringField;
    cad_repREP_TLOG: TIBStringField;
    cad_repREP_LOGR: TIBStringField;
    cad_repREP_CEP: TIBStringField;
    cad_repREP_NUME: TIBStringField;
    cad_repREP_COMP: TIBStringField;
    cad_repREP_BAI: TIBStringField;
    cad_repREP_CID: TIBStringField;
    cad_repREP_ESTA: TIBStringField;
    cad_repREP_TLOC: TIBStringField;
    cad_repREP_LOGC: TIBStringField;
    cad_repREP_CEPC: TIBStringField;
    cad_repREP_NUMC: TIBStringField;
    cad_repREP_COMC: TIBStringField;
    cad_repREP_BAIC: TIBStringField;
    cad_repREP_CIDC: TIBStringField;
    cad_repREP_ESTC: TIBStringField;
    cad_repREP_OBSO: TMemoField;
    cad_repREP_STAV: TIBStringField;
    cad_repREP_VULT: TIBBCDField;
    cad_repREP_TPVE: TIBStringField;
    cad_repREP_OBSE: TMemoField;
    cad_repREP_TLOV: TIBStringField;
    cad_repREP_LOGV: TIBStringField;
    cad_repREP_CEPV: TIBStringField;
    cad_repREP_NUMV: TIBStringField;
    cad_repREP_COMV: TIBStringField;
    cad_repREP_BAIV: TIBStringField;
    cad_repREP_CIDV: TIBStringField;
    cad_repREP_ESTV: TIBStringField;
    cad_repREP_RICM: TIBStringField;
    cad_repREP_CPAG: TIBStringField;
    cad_repREP_DPAG: TIBStringField;
    cad_repREP_CMUN: TIBStringField;
    cad_repREP_DALT: TDateField;
    cad_repREP_CTRA: TIntegerField;
    cad_repREP_DTRA: TIBStringField;
    cad_repREP_DFUN: TDateField;
    cad_repREP_CICM: TIBStringField;
    cad_repREP_RAMO: TIBStringField;
    cad_repREP_CMUV: TIBStringField;
    cad_repREP_CMUC: TIBStringField;
    cad_repREP_DD2: TIBStringField;
    cad_repREP_DD3: TIBStringField;
    cad_repREP_DD4: TIBStringField;
    cad_repREP_DD5: TIBStringField;
    cad_repREP_DD6: TIBStringField;
    cad_repREP_TEL3: TIBStringField;
    cad_repREP_TCE1: TIBStringField;
    cad_repREP_TCE2: TIBStringField;
    cad_repREP_NCEL: TIBStringField;
    cad_repREP_NEID: TIBStringField;
    cad_repREP_FCON: TIBStringField;
    cad_repREP_FMAI: TIBStringField;
    cad_repREP_FDDD: TIBStringField;
    cad_repREP_FTE1: TIBStringField;
    cad_repREP_FDD2: TIBStringField;
    cad_repREP_FTE2: TIBStringField;
    cad_repREP_FDD3: TIBStringField;
    cad_repREP_FTE3: TIBStringField;
    cad_repREP_FDD4: TIBStringField;
    cad_repREP_FFAX: TIBStringField;
    cad_repREP_FDD5: TIBStringField;
    cad_repREP_FCEL: TIBStringField;
    cad_repREP_FTC1: TIBStringField;
    cad_repREP_FDD6: TIBStringField;
    cad_repREP_FNCE: TIBStringField;
    cad_repREP_FTC2: TIBStringField;
    cad_repREP_FNID: TIBStringField;
    cad_repREP_CCON: TIBStringField;
    cad_repREP_CMAI: TIBStringField;
    cad_repREP_CDDD: TIBStringField;
    cad_repREP_CTE1: TIBStringField;
    cad_repREP_CDD2: TIBStringField;
    cad_repREP_CTE2: TIBStringField;
    cad_repREP_CDD3: TIBStringField;
    cad_repREP_CTE3: TIBStringField;
    cad_repREP_CDD4: TIBStringField;
    cad_repREP_CFAX: TIBStringField;
    cad_repREP_CDD5: TIBStringField;
    cad_repREP_CCEL: TIBStringField;
    cad_repREP_CTC1: TIBStringField;
    cad_repREP_CDD6: TIBStringField;
    cad_repREP_CNCE: TIBStringField;
    cad_repREP_CTC2: TIBStringField;
    cad_repREP_CNID: TIBStringField;
    cad_repREP_VDSC: TIBBCDField;
    cad_repREP_CRED: TIBBCDField;
    cad_repREP_SITE: TIBStringField;
    cad_repREP_REVE: TIBStringField;
    cad_repREP_IMUN: TIBStringField;
    cad_repREP_CCM: TIBStringField;
    cad_repREP_DULT: TDateField;
    cad_repREP_COMI: TIBBCDField;
    pcinfo: TdxPageControl;
    tsicad: TdxTabSheet;
    Bevel4: TBevel;
    Label1: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label21: TLabel;
    Label25: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label37: TLabel;
    Label2: TLabel;
    eddalt: TdxDateEdit;
    edcrep: TdxEdit;
    edfant: TdxEdit;
    edraza: TdxEdit;
    edcnpj: TdxMaskEdit;
    edinsc: TdxEdit;
    edCCM: TdxEdit;
    edimun: TdxEdit;
    edcpf: TdxMaskEdit;
    edrg: TdxEdit;
    eddcad: TdxDateEdit;
    cbstav: TdxImageEdit;
    edcomi: TdxEdit;
    tsobs: TdxTabSheet;
    pcOBS: TdxPageControl;
    ts1: TdxTabSheet;
    Bevel10: TBevel;
    edobse: TdxMemo;
    ts2: TdxTabSheet;
    Bevel11: TBevel;
    edobso: TdxMemo;
    IEIDCV: TdxImageEdit;
    Label40: TLabel;
    cad_repDTED: TDateTimeField;
    cad_repIDEP: TSmallintField;
    cad_repIDCA: TSmallintField;
    cad_repDTCA: TDateTimeField;
    cad_repDTFU: TDateField;
    cad_repIDED: TSmallintField;
    cad_repIDST: TSmallintField;
    cad_repCDST: TSmallintField;
    cad_repREST: TIBStringField;
    cad_repFIS_CRT: TSmallintField;
    cad_repDTST: TDateTimeField;
    cad_repDTUTPP: TDateTimeField;
    cad_repDTUTPV: TDateTimeField;
    cad_repFANTASIA: TIBStringField;
    cad_repRAZAO: TIBStringField;
    cad_repGRUPO: TIBStringField;
    cad_repFIS_CREDICMS: TSmallintField;
    cad_repCNPJ: TIBStringField;
    cad_repIE: TIBStringField;
    cad_repIDCV: TSmallintField;
    cad_repFIS_INDIEDEST: TSmallintField;
    cad_repFIS_INDFINAL: TSmallintField;
    cad_repIM: TIBStringField;
    cad_repISUF: TIBStringField;
    cad_repCPF: TIBStringField;
    cad_repIDESTRANGEIRO: TIBStringField;
    cad_repIDCR: TSmallintField;
    cad_repCDPD: TSmallintField;
    cad_repCDCO: TSmallintField;
    cad_repEMAIL: TIBStringField;
    cad_repCDPG: TSmallintField;
    cad_repIDCT: TSmallintField;
    cad_repMFRT: TSmallintField;
    cad_repCONTATO: TIBStringField;
    cad_repDDD: TIBStringField;
    cad_repTEL: TIBStringField;
    cad_repENVEMAIL: TSmallintField;
    cad_repCONTATO2: TIBStringField;
    cad_repDDD2: TIBStringField;
    cad_repCEL_CONTATO: TIBStringField;
    cad_repTEL2: TIBStringField;
    cad_repEMAIL2: TIBStringField;
    cad_repCONTATO3: TIBStringField;
    cad_repDDD3: TIBStringField;
    cad_repTEL3: TIBStringField;
    cad_repEMAIL3: TIBStringField;
    cad_repCEL_DDD: TIBStringField;
    cad_repCEL_TEL: TIBStringField;
    cad_repCEL_EMAIL: TIBStringField;
    cad_repZAP_TEL: TIBStringField;
    cad_repCEL_CONTATO2: TIBStringField;
    cad_repCEL_DDD2: TIBStringField;
    cad_repCEL_TEL2: TIBStringField;
    cad_repCEL_EMAIL2: TIBStringField;
    cad_repZAP_CONTATO: TIBStringField;
    cad_repZAP_DDD: TIBStringField;
    cad_repZAP_EMAIL: TIBStringField;
    cad_repLOG_NU: TLargeintField;
    cad_repCMUN: TLargeintField;
    cad_repTLO_TX: TIBStringField;
    cad_repBAI_NO_ABREV: TIBStringField;
    cad_repLOG_NO: TIBStringField;
    cad_repLOG_NO_ABREV: TIBStringField;
    cad_repNRO: TIBStringField;
    cad_repXCPL: TIBStringField;
    cad_repCEP: TIBStringField;
    cad_repBAI_NO: TIBStringField;
    cad_repLOC_NO: TIBStringField;
    cad_repLOC_NO_ABREV: TIBStringField;
    cad_repENT_LOG_NO_ABREV: TIBStringField;
    cad_repUF: TIBStringField;
    cad_repCPAIS: TSmallintField;
    cad_repENT_CNPJ_CPF: TIBStringField;
    cad_repENT_LOG_NU: TLargeintField;
    cad_repENT_TLO_TX: TIBStringField;
    cad_repENT_LOG_NO: TIBStringField;
    cad_repENT_NRO: TIBStringField;
    cad_repENT_XCPL: TIBStringField;
    cad_repENT_CEP: TIBStringField;
    cad_repRET_LOG_NU: TLargeintField;
    cad_repENT_BAI_NO: TIBStringField;
    cad_repENT_BAI_NO_ABREV: TIBStringField;
    cad_repENT_LOC_NO: TIBStringField;
    cad_repENT_LOC_NO_ABREV: TIBStringField;
    cad_repENT_UF: TIBStringField;
    cad_repRET_CNPJ_CPF: TIBStringField;
    cad_repRET_TLO_TX: TIBStringField;
    cad_repRET_LOG_NO: TIBStringField;
    cad_repRET_LOG_NO_ABREV: TIBStringField;
    cad_repRET_LOC_NO_ABREV: TIBStringField;
    cad_repRET_NRO: TIBStringField;
    cad_repRET_XCPL: TIBStringField;
    cad_repRET_CEP: TIBStringField;
    cad_repRET_BAI_NO: TIBStringField;
    cad_repRET_BAI_NO_ABREV: TIBStringField;
    cad_repRET_LOC_NO: TIBStringField;
    cad_repRET_UF: TIBStringField;
    cad_repINFADCAD: TMemoField;
    cad_repINFADFIN: TMemoField;
    cad_repINFADFIS: TMemoField;
    cad_repINFADCNAE: TMemoField;
    cad_repAPI_B2B_COD_ENV: TSmallintField;
    cad_repAPI_B2B_DTC_ENV: TDateTimeField;
    cad_repAPI_B2B_COD_REC: TIBStringField;
    cad_repAPI_B2B_DTC_REC: TDateTimeField;
    cad_repIP: TIBStringField;
    cad_repHOST: TIBStringField;
    cad_repFLAG: TSmallintField;
    cad_repREP_IDEC: TLargeintField;
    cad_repREP_IDEF: TLargeintField;
    cad_repREP_IDEE: TLargeintField;
    cad_repREP_IDER: TLargeintField;
    cad_repREP_IDESTRANGEIRO: TIBStringField;
    cad_repREP_ISUF: TIBStringField;
    cad_repREP_IM: TIBStringField;
    cad_repREP_INDFINAL: TIBStringField;
    cad_repREP_EMAILCOM: TIBStringField;
    cad_repREP_EMAILCOB: TIBStringField;
    cad_repREP_EMAILFIN: TIBStringField;
    cad_repREP_EMAILCON: TIBStringField;
    cad_repREP_PORTE: TIBStringField;
    cad_repREP_OBSS: TMemoField;
    cad_repREP_CVEN: TIntegerField;
    cad_repREP_ENVWEB: TSmallintField;
    cad_repREP_PFRT: TIBBCDField;
    cad_repREP_CPAIS: TSmallintField;
    cad_repREP_INDIEDEST: TSmallintField;
    cad_repREP_DTPED: TDateTimeField;
    cad_repREP_MAI2: TIBStringField;
    cad_repREP_MAI3: TIBStringField;
    cad_repREP_MAI4: TIBStringField;
    cad_repREP_IDST: TSmallintField;
    cad_repREP_ENVMAIL: TSmallintField;
    cad_repPCOM: TIBBCDField;
    cad_repREP_MFRT: TSmallintField;
    cad_repDTUTPC: TDateTimeField;
    cad_repAPI_B2B_ENV_SYNC: TSmallintField;
    cad_repAPI_B2B_ENV_SYNC_DATA: TDateTimeField;
    cad_repAPI_B2B_REC_SYNC: TSmallintField;
    cad_repAPI_B2B_REC_SYNC_DATA: TDateTimeField;
    cad_repCOB_LOG_NU: TLargeintField;
    cad_repCOB_TLO_TX: TIBStringField;
    cad_repCOB_LOG_NO: TIBStringField;
    cad_repCOB_NRO: TIBStringField;
    cad_repCOB_XCPL: TIBStringField;
    cad_repCOB_CEP: TIBStringField;
    cad_repCOB_BAI_NO: TIBStringField;
    cad_repCOB_BAI_NO_ABREV: TIBStringField;
    cad_repCOB_LOC_NO: TIBStringField;
    cad_repCOB_LOC_NO_ABREV: TIBStringField;
    cad_repCOB_UF: TIBStringField;
    cad_repENT_TIPO: TSmallintField;
    cad_repENT_PRAZO: TSmallintField;
    cad_repFIS_CREGTRIB: TSmallintField;
    cad_repCOB_CMUN: TLargeintField;
    cad_repENT_CMUN: TLargeintField;
    cad_repIS_PDSC: TSmallintField;
    cad_repFOR_TIPO: TSmallintField;
    cad_repFOR_RESE: TSmallintField;
    cad_repFOR_DEGP: TIBStringField;
    cad_repNAFA: TSmallintField;
    cad_repDEST: TIBStringField;
    cad_repDTPP: TDateTimeField;
    cad_repDTPV: TDateTimeField;
    cad_repDTAB: TDateTimeField;
    cad_repDTDV: TDateTimeField;
    cad_repDTRO: TDateTimeField;
    cad_repDTNF: TDateTimeField;
    cad_repREP_DEGP: TIBStringField;
    QConsulta: TIBQuery;
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
    Bevel1: TBevel;
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
    Bevel2: TBevel;
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
    Bevel3: TBevel;
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
    LAPSQCEP: TLabel;
    procedure FormShow(Sender: TObject);
    procedure edcpfValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcnpjValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcrepValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure edtel2DblClick(Sender: TObject);
    procedure edtel1DblClick(Sender: TObject);
    procedure edfaxDblClick(Sender: TObject);
    procedure edcelDblClick(Sender: TObject);
    procedure edvdscKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbstavKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edcomiValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCOM_LOG_NOValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure BECOM_CMUNButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure LAPSQCEPClick(Sender: TObject);
    procedure ACTMPostExecute(Sender: TObject);
  private
    { Private declarations }
    RECEndereco: TRECPedidos;

    procedure NOVO_REPRESENTANTE;
  public
    { Public declarations }
    procedure _WM_AFTER_ACTIVATE(var Msg: TMessage); message WM_AFTER_ACTIVATE;
  end;

var
  frmcad_rep_edi: Tfrmcad_rep_edi;

implementation

uses uPrincipal,
     pcad_rep,bPrincipal;

{$R *.dfm}

procedure TFrmCAD_REP_EDI._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
  inherited;
end;

procedure Tfrmcad_rep_edi.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_REP_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GAdmin := True; { Grant }
  inherited;

  WITH CONSULTA DO
  BEGIN
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
  END;

  IEIDCV.Enabled := (RECUsuarios.Grupo <> 'VEN');
end;

procedure Tfrmcad_rep_edi.FormShow(Sender: TObject);
begin
  inherited;
  if tag = 1 then
  begin
    with cad_rep do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_REP');
      SelectSQL.Add('WHERE ID = '''+frmcad_rep.cadastroID.AsString+'''');
      Open;

      edcrep.Text := oStrZero(FieldByName('ID').AsInteger,5);
      edfant.Text := FieldByName('REP_FANT').AsString;
      eddcad.Date := FieldByName('REP_DCAD').AsDateTime;
      eddalt.Date := RECParametros.SHE_DATA;
      edraza.Text := FieldByName('REP_RAZA').AsString;
      IEIDCV.Text := IntToStr(FieldByName('IDCV').AsInteger);
      edcont.Text := FieldByName('REP_CONT').AsString;
      edfcon.Text := FieldByName('REP_FCON').AsString;
      edccon.Text := FieldByName('REP_CCON').AsString;
      edmail.Text := FieldByName('REP_MAIL').AsString;
      edfmai.Text := FieldByName('REP_FMAI').AsString;
      edcmai.Text := FieldByName('REP_CMAI').AsString;
      edddd.Text  := FieldByName('REP_DDD').AsString;
      eddd2.Text  := FieldByName('REP_DD2').AsString;
      eddd3.Text  := FieldByName('REP_DD3').AsString;
      eddd4.Text  := FieldByName('REP_DD4').AsString;
      eddd5.Text  := FieldByName('REP_DD5').AsString;
      eddd6.Text  := FieldByName('REP_DD6').AsString;
      edfddd.Text := FieldByName('REP_FDDD').AsString;
      edfdd2.Text := FieldByName('REP_FDD2').AsString;
      edfdd3.Text := FieldByName('REP_FDD3').AsString;
      edfdd4.Text := FieldByName('REP_FDD4').AsString;
      edfdd5.Text := FieldByName('REP_FDD5').AsString;
      edfdd6.Text := FieldByName('REP_FDD6').AsString;
      edcddd.Text := FieldByName('REP_CDDD').AsString;
      edcdd2.Text := FieldByName('REP_CDD2').AsString;
      edcdd3.Text := FieldByName('REP_CDD3').AsString;
      edcdd4.Text := FieldByName('REP_CDD4').AsString;
      edcdd5.Text := FieldByName('REP_CDD5').AsString;
      edcdd6.Text := FieldByName('REP_CDD6').AsString;
      edtel1.Text := FieldByName('REP_TEL1').AsString;
      edtel2.Text := FieldByName('REP_TEL2').AsString;
      edtel3.Text := FieldByName('REP_TEL3').AsString;
      edfax.Text  := FieldByName('REP_FAX').AsString;
      edffax.Text := FieldByName('REP_FFAX').AsString;
      edcfax.Text := FieldByName('REP_CFAX').AsString;
      edfte1.Text := FieldByName('REP_FTE1').AsString;
      edfte2.Text := FieldByName('REP_FTE2').AsString;
      edfte3.Text := FieldByName('REP_FTE3').AsString;
      edcte1.Text := FieldByName('REP_CTE1').AsString;
      edcte2.Text := FieldByName('REP_CTE2').AsString;
      edcte3.Text := FieldByName('REP_CTE3').AsString;
      edcel.Text  := FieldByName('REP_CEL').AsString;
      edfcel.Text := FieldByName('REP_FCEL').AsString;
      edccel.Text := FieldByName('REP_CCEL').AsString;
      edneid.Text := FieldByName('REP_NEID').AsString;
      edfnid.Text := FieldByName('REP_FNID').AsString;
      edcnid.Text := FieldByName('REP_CNID').AsString;
      edncel.Text := FieldByName('REP_NCEL').AsString;
      edfnce.Text := FieldByName('REP_FNCE').AsString;
      edcnce.Text := FieldByName('REP_CNCE').AsString;
      cbtce1.Text := FieldByName('REP_TCE1').AsString;
      cbtce2.Text := FieldByName('REP_TCE2').AsString;
      cbftc1.Text := FieldByName('REP_FTC1').AsString;
      cbftc2.Text := FieldByName('REP_FTC2').AsString;
      cbctc1.Text := FieldByName('REP_CTC1').AsString;
      cbctc2.Text := FieldByName('REP_CTC2').AsString;
      edccm.Text  := FieldByName('REP_CCM').AsString;
      edimun.Text := FieldByName('REP_IMUN').AsString;
      edcomi.Text := formatfloat('0.00',FieldByName('REP_COMI').AsFloat);

      if FieldByName('REP_CNPJ').AsString <> '' then
      begin
        edcnpj.Text   := FieldByName('REP_CNPJ').AsString;
        edinsc.Text   := FieldByName('REP_INSC').AsString;
      end;

      if FieldByName('REP_CPF').AsString <> '' then
      begin
        edcpf.Text     := FieldByName('REP_CPF').AsString;
        edrg.Text      := FieldByName('REP_RG').AsString;
      end;

    EDCOM_TLO_TX.Text := FieldByName('REP_TLOG').AsString;
    EDCOM_LOG_NO.Text := FieldByName('REP_LOGR').AsString;
    EDCOM_NRO.Text    := FieldByName('REP_NUME').AsString;
    BECOM_CEP.Text    := FieldByName('REP_CEP').AsString;
    EDCOM_XCPL.Text   := FieldByName('REP_COMP').AsString;
    BECOM_CMUN.Text   := FieldByName('REP_CMUN').AsString;
    EDCOM_BAI_NO.Text := FieldByName('REP_BAI').AsString;
    EDCOM_LOC_NO.Text := FieldByName('REP_CID').AsString;
    EDCOM_UF.Text     := FieldByName('REP_ESTA').AsString;

    EDCOB_TLO_TX.Text := FieldByName('REP_TLOC').AsString;
    EDCOB_LOG_NO.Text := FieldByName('REP_LOGC').AsString;
    EDCOB_NRO.Text    := FieldByName('REP_NUMC').AsString;
    BECOB_CEP.Text    := FieldByName('REP_CEPC').AsString;
    EDCOB_XCPL.Text   := FieldByName('REP_COMC').AsString;
    BECOB_CMUN.Text   := FieldByName('REP_CMUC').AsString;
    EDCOB_BAI_NO.Text := FieldByName('REP_BAIC').AsString;
    EDCOB_LOC_NO.Text := FieldByName('REP_CIDC').AsString;
    EDCOB_UF.Text     := FieldByName('REP_ESTC').AsString;

    EDENT_TLO_TX.Text := FieldByName('REP_TLOV').AsString;
    EDENT_LOG_NO.Text := FieldByName('REP_LOGV').AsString;
    EDENT_NRO.Text    := FieldByName('REP_NUMV').AsString;
    BEENT_CEP.Text    := FieldByName('REP_CEPV').AsString;
    EDENT_XCPL.Text   := FieldByName('REP_COMV').AsString;
    BEENT_CMUN.Text   := FieldByName('REP_CMUV').AsString;
    EDENT_BAI_NO.Text := FieldByName('REP_BAIV').AsString;
    EDENT_LOC_NO.Text := FieldByName('REP_CIDV').AsString;
    EDENT_UF.Text     := FieldByName('REP_ESTV').AsString;

      edobse.Text := FieldByName('REP_OBSE').Value;
      edobso.Text := FieldByName('REP_OBSO').Value;
      cbstav.Text := FieldByName('REP_STAV').AsString;
    end
  end else
  NOVO_REPRESENTANTE;
end;

procedure Tfrmcad_rep_edi.FormDestroy(Sender: TObject);
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
  frmcad_rep_edi := nil;
end;

procedure Tfrmcad_rep_edi.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not (ActiveControl is TdxButtonEdit) then
     inherited;
end;

procedure Tfrmcad_rep_edi.NOVO_REPRESENTANTE;
begin
  if RECUSuarios.Grupo = 'VEN' then
     IEIDCv.Text := RECUsuarios.Id else
     IEIDCV.Text := RECParametros.CR_ID;
      
  pcinfo.ActivePageIndex := 0;
  pcmain.ActivePageIndex := 0;

  edcrep.Text := '00000';
  edfant.Text := '';
  eddcad.Date := RECParametros.SHE_DATA;
  eddalt.Date := RECParametros.SHE_DATA;
  cbstav.Text := 'A';
  edraza.Text := '';
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
  eddd6.Text  := '11';
  edfddd.Text := '11';
  edfdd2.Text := '11';
  edfdd3.Text := '11';
  edfdd4.Text := '11';
  edfdd5.Text := '11';
  edfdd6.Text := '11';
  edcddd.Text := '11';
  edcdd2.Text := '11';
  edcdd3.Text := '11';
  edcdd4.Text := '11';
  edcdd5.Text := '11';
  edcdd6.Text := '11';
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
  edncel.Text := '';
  edfnce.Text := '';
  edcnce.Text := '';
  edneid.Text := '';
  edfnid.Text := '';
  edcnid.Text := '';
  cbtce1.Text := '';
  cbtce2.Text := '';
  cbftc1.Text := '';
  cbftc2.Text := '';
  cbctc1.Text := '';
  cbctc2.Text := '';
  edcnpj.Text := '';
  edinsc.Text := '';
  edcpf.Text  := '';
  edccm.Text  := '';
  edimun.Text := '';
  edrg.Text   := '';
  edfant.Text := '';
  edobse.Text := '';
  edobso.Text := '';
  edcomi.Text := '3,00';
  
  if pcinfo.ActivePageIndex = 0 then
     edfant.SetFocus;

  with Consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_CAD_REP,0) FROM RDB$DATABASE');
    Open;

    edcrep.Text := oStrZero(fields[0].AsInteger+1,5);
  end;
end;

procedure Tfrmcad_rep_edi.edcpfValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not oCPF(edcpf.Text) then
  raise Exception.Create('CPF Inválido !');

  if edcpf.Text <> '' then
  with Consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT REP_RAZA,REP_DCAD,ID,REP_STA FROM CAD_REP');
    SQL.Add('WHERE  REP_CPF = '''+edcpf.Text+'''');
    Open;

    if fields[3].AsString = '1' then
    begin
      edcpf.SetFocus;
      raise exception.Create('Não é possível cadastrar representante enviado à lixeira !'+#13+'Favor esvaziar a lixeira.');
    end;
    if (not fields[0].IsNull) and (edcrep.Text <> fields[2].AsString) then
    begin
      edcpf.SetFocus;
      raise exception.Create('C.P.F. já cadastrado.'+#13+'Razão Social: '+fields[0].AsString+'. '+#13+'Cadastrado em: '+fields[1].AsString);
    end;
  end;
end;

procedure Tfrmcad_rep_edi.edcnpjValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not oCNPJ(edcnpj.Text) then
  raise Exception.Create('CNPJ Inválido !');

  if edcnpj.Text <> '' then
  with Consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT REP_RAZA,REP_DCAD,ID,REP_STA FROM CAD_REP');
    SQL.Add('WHERE  REP_CNPJ = '''+edcnpj.Text+'''');
    Open;

    if fields[3].AsString = '1' then
    begin
      edcnpj.SetFocus;
      raise exception.Create('Não é possível cadastrar representante enviado à lixeira !'+#13+'Favor esvaziar a lixeira.');
    end;
    if (not fields[0].IsNull) and (edcrep.Text <> fields[2].AsString) then
    begin
      edcnpj.SetFocus;
      raise exception.Create('C.N.P.J. já cadastrado.'+#13+'Razão Social: '+fields[0].AsString+'. '+#13+'Cadastrado em: '+fields[1].AsString);
    end;
  end;
end;

procedure Tfrmcad_rep_edi.edcrepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcrep.Text = '' then
     edcrep.Text := '00000';

  edcrep.Text := oStrZero(strtoint(edcrep.Text),5);

  with Consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT REP_RAZA FROM CAD_REP');
    SQL.Add('WHERE  ID = '''+edcrep.Text+'''');
    Open;

    if not fields[0].IsNull then
    begin
      edcrep.SetFocus;
      raise exception.Create('Representante já cadastrado com o mesmo código '+#13+fields[0].AsString);
    end;
  end;
end;

procedure Tfrmcad_rep_edi.edtel2DblClick(Sender: TObject);
begin
  edtel2.Text := '';
end;

procedure Tfrmcad_rep_edi.edtel1DblClick(Sender: TObject);
begin
  edtel1.Text := '';
end;

procedure Tfrmcad_rep_edi.edfaxDblClick(Sender: TObject);
begin
  edfax.Text := '';
end;

procedure Tfrmcad_rep_edi.edcelDblClick(Sender: TObject);
begin
  edcel.Text := '';
end;

procedure Tfrmcad_rep_edi.edvdscKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    pcMAIN.ActivePageIndex := 0;
    edcont.SetFocus;
  end
end;

procedure Tfrmcad_rep_edi.cbstavKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    pcmain.ActivePageIndex := 0;
    edcont.SetFocus;
  end;
end;

procedure Tfrmcad_rep_edi.edcomiValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcomi.Text = '' then
     edcomi.Text := '0';

  edcomi.Text := formatfloat('0.00',strtofloat(edcomi.Text));
end;

procedure Tfrmcad_rep_edi.EDCOM_LOG_NOValidate(Sender: TObject;
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
       TdxButtonEdit(Sender).Modified := False else TdxEdit(Sender).Modified := False;
  end;
end;

procedure Tfrmcad_rep_edi.BECOM_CMUNButtonClick(Sender: TObject;
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

procedure Tfrmcad_rep_edi.LAPSQCEPClick(Sender: TObject);
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

procedure Tfrmcad_rep_edi.ACTMPostExecute(Sender: TObject);
begin
  inherited;
  if (Length(edcnpj.Text) >= 14) and (edinsc.Text = '') then
  begin
    pcinfo.ActivePageIndex := 0;
    edinsc.SetFocus;
    raise exception.Create('Inscrição estadual não informada !');
  end;

  if (edcrep.Text = '')  or (edcrep.Text = '00000') then
  raise exception.Create('Código do representante não informado !');

  if edfant.Text = '' then
  begin
    if pcinfo.ActivePageIndex = 0 then
    edfant.SetFocus;
    raise exception.Create('Nome Fantasia não informado !');
  end;

  if edraza.Text = '' then
  begin
    if pcinfo.ActivePageIndex = 0 then
    edraza.SetFocus;
    raise exception.Create('Razão Social não informado !');
  end;

  if IEIDCV.Text = '0' then
     oException(IEIDCV,'Vendedor não Informado !');
  
  if cbstav.Text = '' then
  begin
    if pcinfo.ActivePageIndex = 0 then
    cbstav.SetFocus;
    raise exception.Create('Situação do representante não informado !');
  end;

  try
    SPEdicao.StoredProcName := 'SP_CAD_REP';
    SPEdicao.Prepare;

    case frmcad_rep_edi.Tag of
      0: SPEdicao.Params[0].Value := null;
      1: SPEdicao.Params[0].Value := edcrep.Text;
    end;

    { Cadastro }
    SPEdicao.ParamByName('IDEP').Value := RECParametros.EP_ID;
    SPEdicao.ParamByName('IDCA').Value := RECUsuarios.Id;

    SPEdicao.ParamByName('dcad').Value := eddcad.Date;
    SPEdicao.ParamByName('dalt').Value := eddalt.Date;
    SPEdicao.ParamByName('dfun').Value := null;
    SPEdicao.ParamByName('raza').Value := edraza.Text;
    SPEdicao.ParamByName('IDCV').Value := IEIDCV.Text;
    SPEdicao.ParamByName('site').Value := null;
    SPEdicao.ParamByName('cred').Value := null;
    SPEdicao.ParamByName('vdsc').Value := null;
    SPEdicao.ParamByName('fant').Value := edfant.Text;
    SPEdicao.ParamByName('ramo').Value := null;
    SPEdicao.ParamByName('sta').Value  := '0';
    SPEdicao.ParamByName('cont').Value := edcont.Text;
    SPEdicao.ParamByName('fcon').Value := edfcon.Text;
    SPEdicao.ParamByName('ccon').Value := edccon.Text;
    SPEdicao.ParamByName('mail').Value := edmail.Text;
    SPEdicao.ParamByName('fmai').Value := edfmai.Text;
    SPEdicao.ParamByName('cmai').Value := edcmai.Text;
    SPEdicao.ParamByName('ddd').Value  := edddd.Text;
    SPEdicao.ParamByName('dd2').Value  := eddd2.Text;
    SPEdicao.ParamByName('dd3').Value  := eddd3.Text;
    SPEdicao.ParamByName('dd4').Value  := eddd4.Text;
    SPEdicao.ParamByName('dd5').Value  := eddd5.Text;
    SPEdicao.ParamByName('dd6').Value  := eddd6.Text;
    SPEdicao.ParamByName('fddd').Value  := edfddd.Text;
    SPEdicao.ParamByName('fdd2').Value  := edfdd2.Text;
    SPEdicao.ParamByName('fdd3').Value  := edfdd3.Text;
    SPEdicao.ParamByName('fdd4').Value  := edfdd4.Text;
    SPEdicao.ParamByName('fdd5').Value  := edfdd5.Text;
    SPEdicao.ParamByName('fdd6').Value  := edfdd6.Text;
    SPEdicao.ParamByName('cddd').Value  := edcddd.Text;
    SPEdicao.ParamByName('cdd2').Value  := edcdd2.Text;
    SPEdicao.ParamByName('cdd3').Value  := edcdd3.Text;
    SPEdicao.ParamByName('cdd4').Value  := edcdd4.Text;
    SPEdicao.ParamByName('cdd5').Value  := edcdd5.Text;
    SPEdicao.ParamByName('cdd6').Value  := edcdd6.Text;
    SPEdicao.ParamByName('tel1').Value  := edtel1.Text;
    SPEdicao.ParamByName('fte1').Value  := edfte1.Text;
    SPEdicao.ParamByName('cte1').Value  := edcte1.Text;
    SPEdicao.ParamByName('tel2').Value  := edtel2.Text;
    SPEdicao.ParamByName('fte2').Value  := edfte2.Text;
    SPEdicao.ParamByName('cte2').Value  := edcte2.Text;
    SPEdicao.ParamByName('tel3').Value  := edtel3.Text;
    SPEdicao.ParamByName('fte3').Value  := edfte3.Text;
    SPEdicao.ParamByName('cte3').Value  := edcte3.Text;
    SPEdicao.ParamByName('fax').Value   := edfax.Text;
    SPEdicao.ParamByName('ffax').Value  := edffax.Text;
    SPEdicao.ParamByName('cfax').Value  := edcfax.Text;
    SPEdicao.ParamByName('cel').Value   := edcel.Text;
    SPEdicao.ParamByName('fcel').Value  := edfcel.Text;
    SPEdicao.ParamByName('ccel').Value  := edccel.Text;
    SPEdicao.ParamByName('ncel').Value  := edncel.Text;
    SPEdicao.ParamByName('fnce').Value  := edfnce.Text;
    SPEdicao.ParamByName('cnce').Value  := edcnce.Text;
    SPEdicao.ParamByName('neid').Value  := edneid.Text;
    SPEdicao.ParamByName('fnid').Value  := edfnid.Text;
    SPEdicao.ParamByName('cnid').Value  := edcnid.Text;
    SPEdicao.ParamByName('tce1').Value  := cbtce1.Text;
    SPEdicao.ParamByName('tce2').Value  := cbtce2.Text;
    SPEdicao.ParamByName('ftc1').Value  := cbftc1.Text;
    SPEdicao.ParamByName('ftc2').Value  := cbftc2.Text;
    SPEdicao.ParamByName('ctc1').Value  := cbctc1.Text;
    SPEdicao.ParamByName('ctc2').Value  := cbctc2.Text;
    SPEdicao.ParamByName('rg').Value    := edrg.Text;
    SPEdicao.ParamByName('cpf').Value   := edcpf.Text;
    SPEdicao.ParamByName('insc').Value  := edinsc.Text;
    SPEdicao.ParamByName('cnpj').Value  := edcnpj.Text;
    SPEdicao.ParamByName('ccm').Value   := edccm.Text;
    SPEdicao.ParamByName('imun').Value  := edimun.Text;

    SPEdicao.ParamByName('tlog').Value := EDCOM_TLO_TX.Text;
    SPEdicao.ParamByName('logr').Value := EDCOM_LOG_NO.Text;
    SPEdicao.ParamByName('nume').Value := Trim(LeftStr(EDCOM_NRO.Text,10));
    SPEdicao.ParamByName('cep').Value  := BECOM_CEP.Text;
    SPEdicao.ParamByName('comp').Value := Trim(LeftStr(EDCOM_XCPL.Text,40));
    SPEdicao.ParamByName('bai').Value  := EDCOM_BAI_NO.Text;
    SPEdicao.ParamByName('cid').Value  := EDCOM_LOC_NO.Text;
    SPEdicao.ParamByName('cmun').Value := BECOM_CMUN.Text;
    SPEdicao.ParamByName('esta').Value := EDCOM_UF.Text;

    SPEdicao.ParamByName('tloc').Value := EDCOB_TLO_TX.Text;
    SPEdicao.ParamByName('logc').Value := EDCOB_LOG_NO.Text;
    SPEdicao.ParamByName('numc').Value := Trim(LeftStr(EDCOB_NRO.Text,10));
    SPEdicao.ParamByName('cepc').Value := BECOB_CEP.Text;
    SPEdicao.ParamByName('comc').Value := Trim(LeftStr(EDCOB_XCPL.Text,40));
    SPEdicao.ParamByName('baic').Value := EDCOB_BAI_NO.Text;
    SPEdicao.ParamByName('cidc').Value := EDCOB_LOC_NO.Text;
    SPEdicao.ParamByName('cmuc').Value := BECOB_CMUN.Text;
    SPEdicao.ParamByName('estc').Value := EDCOB_UF.Text;

    SPEdicao.ParamByName('tlov').Value := EDENT_TLO_TX.Text;
    SPEdicao.ParamByName('logv').Value := EDENT_LOG_NO.Text;
    SPEdicao.ParamByName('numv').Value := Trim(LeftStr(EDENT_NRO.Text,10));
    SPEdicao.ParamByName('cepv').Value := BEENT_CEP.Text;
    SPEdicao.ParamByName('comv').Value := Trim(LeftStr(EDENT_XCPL.Text,40));
    SPEdicao.ParamByName('baiv').Value := EDENT_BAI_NO.Text;
    SPEdicao.ParamByName('cidv').Value := EDENT_LOC_NO.Text;
    SPEdicao.ParamByName('cmuv').Value := BEENT_CMUN.Text;
    SPEdicao.ParamByName('estv').Value := EDENT_UF.Text;

    SPEdicao.ParamByName('stav').Value  := cbstav.Text;
    SPEdicao.ParamByName('tpve').Value  := 'ATACADO';
    SPEdicao.ParamByName('obso').Value  := edobso.Lines.Text;
    SPEdicao.ParamByName('obse').Value  := edobse.Lines.Text;
    SPEdicao.ParamByName('ctra').Value  := null;
    SPEdicao.ParamByName('dtra').Value  := null;
    SPEdicao.ParamByName('cpag').Value  := null;
    SPEdicao.ParamByName('dpag').Value  := null;
    SPEdicao.ParamByName('reve').Value  := null;
    SPEdicao.ParamByName('ricm').Value  := null;
    SPEdicao.ParamByName('cicm').Value  := null;
    SPEdicao.ParamByName('comi').Value  := edcomi.Text;

    { Dispositivos }
    SPEdicao.ParamByName('IP'  ).Value := RECParametros.IP;
    SPEdicao.ParamByName('HOST').Value := RECParametros.HOST;
    SPEdicao.ExecProc;

    oRTransact(TEdicao);
    REC_SHE_DEF.Edited := true;

    oAviso(Application.Handle,'Representante atualizado coom sucesso !');
    ACTEveExecute.Execute;
    Close;
  except
    oRTransact(TEdicao,ltRollbackRetaining);
    REC_SHE_DEF.Edited := false;
  end;
end;

end.
