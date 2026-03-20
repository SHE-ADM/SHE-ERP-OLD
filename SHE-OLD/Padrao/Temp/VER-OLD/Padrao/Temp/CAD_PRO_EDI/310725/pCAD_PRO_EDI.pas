unit pCAD_PRO_EDI;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBEvents, math, StrUtils,
  IBDatabase, DB, IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls,
  StdCtrls, dxExEdtr, dxEdLib, Buttons, dxPageControl, dxEditor, dxCntner,
  ExtDlgs, dxTL, dxDBCtrl, dxDBGrid, jpeg, dxDBTLCl, dxGrClms, ACBrBarCode,
  rxSpeedbar, IBSQL, ActnList;

type
  TFrmCAD_PRO_EDI = class(TFrmPadr3)
    OPDIMG: TOpenPictureDialog;
    DTSCAD_PRO_CMP: TDataSource;
    CAD_PRO_CMP: TIBDataSet;
    CAD_PRO_GRD: TIBDataSet;
    DTSCAD_PRO_GRD: TDataSource;
    PNLPrincipal: TPanel;
    PCPrincipal: TdxPageControl;
    TSPrecos: TdxTabSheet;
    TSMedidas: TdxTabSheet;
    TSGrade: TdxTabSheet;
    TSComposicoes: TdxTabSheet;
    pcgrd: TdxPageControl;
    TSILA_BMP: TdxTabSheet;
    BILA_BMP: TBevel;
    BILA_BMP7: TBevel;
    BILA_BMP6: TBevel;
    BILA_BMP5: TBevel;
    BILA_BMP4: TBevel;
    BILA_BMP3: TBevel;
    BILA_BMP2: TBevel;
    BILA_BMP1: TBevel;
    ILA_BMP1: TImage;
    ILA_BMP3: TImage;
    ILA_BMP4: TImage;
    ILA_BMP5: TImage;
    ILA_BMP6: TImage;
    ILA_BMP7: TImage;
    ILA_BMP2: TImage;
    BILA_BMP8: TBevel;
    ILA_BMP8: TImage;
    LAILA_BMP1: TLabel;
    LAILA_BMP2: TLabel;
    LAILA_BMP3: TLabel;
    LAILA_BMP4: TLabel;
    LAILA_BMP5: TLabel;
    LAILA_BMP6: TLabel;
    LAILA_BMP7: TLabel;
    LAILA_BMP8: TLabel;
    EDILA_INS1: TdxEdit;
    EDILA_INS2: TdxEdit;
    EDILA_INS3: TdxEdit;
    EDILA_INS4: TdxEdit;
    EDILA_INS5: TdxEdit;
    EDILA_INS6: TdxEdit;
    EDILA_INS7: TdxEdit;
    EDILA_INS8: TdxEdit;
    SBCMP: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedbarSection2: TSpeedbarSection;
    SpeedbarSection3: TSpeedbarSection;
    SpeedbarSection4: TSpeedbarSection;
    SICMP_INS: TSpeedItem;
    SICMP_ALT: TSpeedItem;
    SICMP_DEL: TSpeedItem;
    SICMP_SAV: TSpeedItem;
    SICMP_CAN: TSpeedItem;
    DBGCMP: TdxDBGrid;
    DBGGrade: TdxDBGrid;
    SBGrade: TSpeedBar;
    SSGrade: TSpeedbarSection;
    tecI: TSpeedItem;
    tecA: TSpeedItem;
    tecE: TSpeedItem;
    tecS: TSpeedItem;
    tecC: TSpeedItem;
    SQLFKConsulta: TIBSQL;
    PNLMEDBOT: TPanel;
    DBGGradeSKU: TdxDBGridMaskColumn;
    DBGGradeCOR_NO: TdxDBGridPickColumn;
    DBGGradeCOR_ESCALA: TdxDBGridPickColumn;
    DBGGradeDEST: TdxDBGridPickColumn;
    DBGGradeVAR_NO: TdxDBGridMaskColumn;
    DBGGradeVAR_CD: TdxDBGridMaskColumn;
    DBGGradeVAR_RF: TdxDBGridMaskColumn;
    DBGGradeVPRC_PAD: TdxDBGridMaskColumn;
    DBGGradeVPRC_PRZ: TdxDBGridMaskColumn;
    DBGGradeCF_SKU: TdxDBGridMaskColumn;
    DBGGradeCF_CEAN: TdxDBGridMaskColumn;
    DBGGradeSCT_NO: TdxDBGridPickColumn;
    DBGGradeDTCP: TdxDBGridMaskColumn;
    DBGGradeSCT_ID: TdxDBGridMaskColumn;
    DBGGradeCDST: TdxDBGridMaskColumn;
    DBGGradeREST: TdxDBGridMaskColumn;
    GBMEDPRI: TGroupBox;
    TSINFADCPL: TdxTabSheet;
    PCINFADTEC: TdxPageControl;
    TSINFADTEC: TdxTabSheet;
    EMINFADTEC: TdxMemo;
    PCINFADCAD: TdxPageControl;
    TSINFADCAD: TdxTabSheet;
    EMINFADCAD: TdxMemo;
    TSIMG_ART: TdxTabSheet;
    BIMG_ART: TBevel;
    SBIMG_ART: TSpeedButton;
    IMG_ART: TImage;
    TSIMG_SKU: TdxTabSheet;
    PNLMEDTOP: TPanel;
    GBMEDVEN: TGroupBox;
    LAUCOM: TLabel;
    LAUESP: TLabel;
    LAUQVOL: TLabel;
    LAUQTDE_VEN_MIN: TLabel;
    IEUCOM: TdxImageEdit;
    EDUESP: TdxEdit;
    CEUQVOL: TdxCurrencyEdit;
    CEUQTDE_VEN_MIN: TdxCurrencyEdit;
    GBMEDEST: TGroupBox;
    GBMEDOUT: TGroupBox;
    LAMLGRT: TLabel;
    LAMLGRU: TLabel;
    LAMELAC: TLabel;
    LAMELAL: TLabel;
    LAMENCL: TLabel;
    LAMENCC: TLabel;
    PEMENC_NO: TdxPickEdit;
    LAMGRAMA: TLabel;
    LAMMetro: TLabel;
    LARendimento: TLabel;
    PEMGRAMA_NO: TdxPickEdit;
    LAMPeso: TLabel;
    PCTAB_PRC: TdxPageControl;
    TSPRC_PAD: TdxTabSheet;
    BPRC_PAD: TBevel;
    LAVPRC_PAD: TLabel;
    LAVPRC_PRO: TLabel;
    LAVPRC_DSC: TLabel;
    LAVPRC_MKP: TLabel;
    LAVPRC_PRZ: TLabel;
    TSPRC_ATV: TdxTabSheet;
    BPRC_ATV: TBevel;
    LAATJ_VPRC_DSC: TLabel;
    TSPRC_VAR: TdxTabSheet;
    BPRC_VAR: TBevel;
    TSPRC_REP: TdxTabSheet;
    BPRC_REP: TBevel;
    TSPRC_LV: TdxTabSheet;
    BPRC_LV: TBevel;
    LALJV_VPRC_PAD: TLabel;
    LALJV_VPRC_MKP: TLabel;
    TSPRC_COM: TdxTabSheet;
    BPRC_COM: TBevel;
    LAATJ_VPRC_PAD: TLabel;
    LAATJ_VPRC_PRZ: TLabel;
    LAATJ_VPRC_PRO: TLabel;
    LAVAR_VPRC_PAD: TLabel;
    LAVAR_VPRC_PRZ: TLabel;
    LAVAR_VPRC_PRO: TLabel;
    LAREP_VPRC_PAD: TLabel;
    LAREP_VPRC_PRZ: TLabel;
    LAREP_VPRC_PRO: TLabel;
    CELJV_UQTDE_EST_MIN: TdxCurrencyEdit;
    IELJV_UCDBE: TdxImageEdit;
    CELJV_UQTDE: TdxCurrencyEdit;
    CELJV_UQTDE_VEN_MUL: TdxCurrencyEdit;
    TSMarketingPlace: TdxTabSheet;
    BMKP: TBevel;
    CEVPRC_PAD: TdxCurrencyEdit;
    CEVPRC_PRZ: TdxCurrencyEdit;
    CEVPRC_PRO: TdxCurrencyEdit;
    CEVPRC_DSC: TdxCurrencyEdit;
    CEVPRC_MKP: TdxCurrencyEdit;
    CEATJ_VPRC_PAD: TdxCurrencyEdit;
    CEATJ_VPRC_PRZ: TdxCurrencyEdit;
    CEATJ_VPRC_PRO: TdxCurrencyEdit;
    CEATJ_VPRC_DSC: TdxCurrencyEdit;
    CEVAR_VPRC_PAD: TdxCurrencyEdit;
    CEVAR_VPRC_PRZ: TdxCurrencyEdit;
    CEVAR_VPRC_PRO: TdxCurrencyEdit;
    CEREP_VPRC_PAD: TdxCurrencyEdit;
    CEREP_VPRC_PRZ: TdxCurrencyEdit;
    CEREP_VPRC_PRO: TdxCurrencyEdit;
    CELJV_VPRC_MKP: TdxCurrencyEdit;
    CELJV_VPRC_PAD: TdxCurrencyEdit;
    DBGGradeVPRC_PRO: TdxDBGridMaskColumn;
    CEMPeso: TdxCurrencyEdit;
    CEUPSCN: TdxCurrencyEdit;
    CEMGRAMA: TdxCurrencyEdit;
    CEMMetro: TdxCurrencyEdit;
    CEMREND: TdxCurrencyEdit;
    CEMLGRU: TdxCurrencyEdit;
    CEMLGRT: TdxCurrencyEdit;
    CEMENCL: TdxCurrencyEdit;
    CEMENCC: TdxCurrencyEdit;
    CEMELAL: TdxCurrencyEdit;
    CEMELAC: TdxCurrencyEdit;
    PNLCF: TPanel;
    GBORIG: TGroupBox;
    BORIG: TBevel;
    GBFiscal: TGroupBox;
    BCF: TBevel;
    Label2: TLabel;
    LATRIBIPI: TLabel;
    CEPIPI: TdxCurrencyEdit;
    PENCM: TdxPickEdit;
    IEORIG: TdxImageEdit;
    IECPAIS: TdxImageEdit;
    LACPAIS: TLabel;
    LAORIG: TLabel;
    BMEDVEN: TBevel;
    BMEDEST: TBevel;
    BMEDPRI: TBevel;
    BMEDOUT: TBevel;
    BIMG_ART_PNL: TBevel;
    BIMG_SKU: TBevel;
    IMG_SKU: TImage;
    SBIMG_SKU: TSpeedButton;
    DBGIMG_SKU: TdxDBGrid;
    DBGIMG_SKUSKU: TdxDBGridMaskColumn;
    DBGIMG_SKUGRD_NO: TdxDBGridMaskColumn;
    PNLEDI_CAD: TPanel;
    GBCadastro: TGroupBox;
    Label1: TLabel;
    Label7: TLabel;
    LADECF: TLabel;
    LAIDGRP: TLabel;
    LAIDCOL: TLabel;
    LACDCF: TLabel;
    LAIDCAT: TLabel;
    LAIDSGP: TLabel;
    LAIDSCT: TLabel;
    Label40: TLabel;
    LAIDSEG: TLabel;
    EDCDCF: TdxMaskEdit;
    EDCMP_PAD: TdxEdit;
    EDDescricao: TdxEdit;
    IEGRP_ID: TdxImageEdit;
    GroupBox6: TGroupBox;
    EDCEAN: TACBrBarCode;
    Label12: TLabel;
    Label32: TLabel;
    EDCEANCF: TdxEdit;
    EDArtigo: TdxEdit;
    IECAT_ID: TdxImageEdit;
    PEDECF: TdxPickEdit;
    GroupBox1: TGroupBox;
    Label18: TLabel;
    Label41: TLabel;
    Label68: TLabel;
    IECDST: TdxImageEdit;
    IEFIN_CAD_ID: TdxImageEdit;
    IEFIN_EST_ID: TdxImageEdit;
    IESGP_ID: TdxImageEdit;
    IESCT_ID: TdxImageEdit;
    IEIDEP: TdxImageEdit;
    EDTitulo: TdxEdit;
    IESEG_ID: TdxImageEdit;
    DBGCMPREFERENCIA: TdxDBGridPickColumn;
    DBGCMPDESCRICAO: TdxDBGridPickColumn;
    DBGCMPQTDE: TdxDBGridMaskColumn;
    PECEST: TdxPickEdit;
    LACEST: TLabel;
    LAEXTIPI: TLabel;
    PEEXTIPI: TdxPickEdit;
    EDUCON: TdxEdit;
    Consulta: TIBQuery;
    IELJV_UCOM: TdxImageEdit;
    CELJV_UQVOL: TdxCurrencyEdit;
    EDLJV_UESP: TdxMaskEdit;
    EDLJV_UCON: TdxMaskEdit;
    CELJV_UQTDE_VEN_MIN: TdxCurrencyEdit;
    LAUCDBE: TLabel;
    IEUCDBE: TdxImageEdit;
    CEUQTDE: TdxCurrencyEdit;
    LAUQTDE: TLabel;
    LAUQTDE_VEN_MUL: TLabel;
    CEUQTDE_VEN_MUL: TdxCurrencyEdit;
    CEUQTDE_EST_MIN: TdxCurrencyEdit;
    LAUQTDE_EST_MIN: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    CELJV_VPRC_PRZ: TdxCurrencyEdit;
    LALJV_VPRC_PRZ: TLabel;
    LALJV_VPRC_PRO: TLabel;
    CELJV_VPRC_PRO: TdxCurrencyEdit;
    CELJV_VPRC_DSC: TdxCurrencyEdit;
    LALJV_VPRC_DSC: TLabel;
    LAREP_VPRC_DSC: TLabel;
    CEREP_VPRC_DSC: TdxCurrencyEdit;
    CEREP_VPRC_MKP: TdxCurrencyEdit;
    LAREP_VPRC_MKP: TLabel;
    LAVAR_VPRC_DSC: TLabel;
    CEVAR_VPRC_DSC: TdxCurrencyEdit;
    CEVAR_VPRC_MKP: TdxCurrencyEdit;
    LAVAR_VPRC_MKP: TLabel;
    CEATJ_VPRC_MKP: TdxCurrencyEdit;
    LAATJ_VPRC_MKP: TLabel;
    GBINFADCLA: TGroupBox;
    LADNS_NO: TLabel;
    PEDNS_NO: TdxPickEdit;
    PETFI_NO: TdxPickEdit;
    LATFI_NO: TLabel;
    LAACB_NO: TLabel;
    IEACB_NO: TdxImageEdit;
    BINFADCLA: TBevel;
    IEMESP_NO: TdxImageEdit;
    CEMESP: TdxCurrencyEdit;
    LAEspessura: TLabel;
    CAD_PRO_GRDID: TLargeintField;
    CAD_PRO_GRDIDEP: TSmallintField;
    CAD_PRO_GRDCP_IDEP: TSmallintField;
    CAD_PRO_GRDIDCF: TIntegerField;
    CAD_PRO_GRDIDEV: TLargeintField;
    CAD_PRO_GRDCDEV: TSmallintField;
    CAD_PRO_GRDCDST: TSmallintField;
    CAD_PRO_GRDREST: TIBStringField;
    CAD_PRO_GRDDEST: TIBStringField;
    CAD_PRO_GRDIDAK: TLargeintField;
    CAD_PRO_GRDIDSK: TLargeintField;
    CAD_PRO_GRDARTIGO: TIBStringField;
    CAD_PRO_GRDSKU: TIBStringField;
    CAD_PRO_GRDCEAN: TIBStringField;
    CAD_PRO_GRDCF_SKU: TIBStringField;
    CAD_PRO_GRDCF_CEAN: TIBStringField;
    CAD_PRO_GRDDTCP: TIBStringField;
    CAD_PRO_GRDGRD_ID: TLargeintField;
    CAD_PRO_GRDGRD_NO: TIBStringField;
    CAD_PRO_GRDCOR_ID: TSmallintField;
    CAD_PRO_GRDCOR_CD: TIBStringField;
    CAD_PRO_GRDCOR_RF: TIBStringField;
    CAD_PRO_GRDCOR_SG: TIBStringField;
    CAD_PRO_GRDCOR_NO: TIBStringField;
    CAD_PRO_GRDCOR_SISTEMA: TIBStringField;
    CAD_PRO_GRDCOR_ESCALA: TIBStringField;
    CAD_PRO_GRDVAR_ID: TSmallintField;
    CAD_PRO_GRDVAR_CD: TIBStringField;
    CAD_PRO_GRDVAR_RF: TIBStringField;
    CAD_PRO_GRDVAR_SG: TIBStringField;
    CAD_PRO_GRDVAR_NO: TIBStringField;
    CAD_PRO_GRDVPRC_PAD: TFloatField;
    CAD_PRO_GRDVPRC_PRZ: TFloatField;
    CAD_PRO_GRDVPRC_PRO: TFloatField;
    CAD_PRO_GRDSCT_ID: TSmallintField;
    CAD_PRO_GRDSCT_NO: TIBStringField;
    CAD_PRO_GRDFLAG: TSmallintField;
    CAD_PRO_CMPID: TLargeintField;
    CAD_PRO_CMPIDEV: TLargeintField;
    CAD_PRO_CMPCDEV: TSmallintField;
    CAD_PRO_CMPDESCRICAO: TIBStringField;
    CAD_PRO_CMPREFERENCIA: TIBStringField;
    CAD_PRO_CMPQTDE: TIBBCDField;
    CAD_PRO_CMPFLAG: TSmallintField;
    CAD_PRO_GRDMKP_ID: TSmallintField;
    CAD_PRO_GRDMKP_NO: TIBStringField;
    CAD_PRO_CMPIDPK: TLargeintField;
    CAD_PRO_GRDIMG_SKU_ID: TLargeintField;
    CAD_PRO_GRDIMG_SKU: TBlobField;
    IECOL_ID: TdxImageEdit;
    IBQuery1: TIBQuery;
    CAD_PRO_GRDIDCP: TIntegerField;
    LAUPSCN: TLabel;
    IECF_VPRC_ORI: TdxImageEdit;
    LACF_VPRC_ORI: TLabel;
    CECF_VPRC_PAD: TdxCurrencyEdit;
    LACF_VPRC_PAD: TLabel;
    GBMKP1: TGroupBox;
    LAMKP_MLV_ID: TLabel;
    IEMKP_MLV_ID: TdxImageEdit;
    LAMKP_SHP_ID: TLabel;
    IEMKP_SHP_ID: TdxImageEdit;
    LAMKP_AMZ_ID: TLabel;
    IEMKP_AMZ_ID: TdxImageEdit;
    IEMKP_MPG_ID: TdxImageEdit;
    LAMKP_MPG_ID: TLabel;
    IEMKP_MSP_ID: TdxImageEdit;
    LAMKP_MSP_ID: TLabel;
    GroupBox2: TGroupBox;
    LAMKP_BLG_ID: TLabel;
    LAMKP_TRY_ID: TLabel;
    IEMKP_BLG_ID: TdxImageEdit;
    IEMKP_TRY_ID: TdxImageEdit;
    procedure FormCreate(Sender: TObject);
    procedure SBIMG_ARTClick(Sender: TObject);
    procedure IMG_ARTDblClick(Sender: TObject);
    procedure SICMP_INSClick(Sender: TObject);
    procedure SICMP_ALTClick(Sender: TObject);
    procedure SICMP_DELClick(Sender: TObject);
    procedure SICMP_SAVClick(Sender: TObject);
    procedure CAD_PRO_CMPAfterPost(DataSet: TDataSet);
    procedure CAD_PRO_CMPBeforeCancel(DataSet: TDataSet);
    procedure CAD_PRO_CMPNewRecord(DataSet: TDataSet);
    procedure DBGCMPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ILA_BMP1Click(Sender: TObject);
    procedure CAD_PRO_GRDAfterCancel(DataSet: TDataSet);
    procedure CAD_PRO_GRDAfterInsert(DataSet: TDataSet);
    procedure CAD_PRO_GRDBeforeCancel(DataSet: TDataSet);
    procedure CAD_PRO_GRDNewRecord(DataSet: TDataSet);
    procedure CAD_PRO_GRDAfterPost(DataSet: TDataSet);
    procedure DBGGradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CAD_PRO_GRDBeforePost(DataSet: TDataSet);
    procedure IECDSTExit(Sender: TObject);
    procedure CAD_PRO_CMPAfterDelete(DataSet: TDataSet);
    procedure dxMaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure CAD_PRO_GRDAfterOpen(DataSet: TDataSet);
    procedure DBGGradeCOR_NOValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGGradeCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure IESCT_IDExit(Sender: TObject);
    procedure tecEClick(Sender: TObject);
    procedure PEDECFExit(Sender: TObject);
    procedure EDDescricaoExit(Sender: TObject);
    procedure CAD_PRO_GRDAfterDelete(DataSet: TDataSet);
    procedure PENCMExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure siSAIRClick(Sender: TObject);
    procedure SICMP_CANClick(Sender: TObject);
    procedure tecSClick(Sender: TObject);
    procedure tecCClick(Sender: TObject);
    procedure tecIClick(Sender: TObject);
    procedure tecAClick(Sender: TObject);
    procedure EDCDCFExit(Sender: TObject);
    procedure EDCEANCFExit(Sender: TObject);
    procedure CAD_PRO_GRDBeforeInsert(DataSet: TDataSet);
    procedure CAD_PRO_CMPBeforeInsert(DataSet: TDataSet);
    procedure DTSCAD_PRO_GRDDataChange(Sender: TObject; Field: TField);
    procedure DBGGradeDESTValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGGradeSCT_NOValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure CEUQTDEValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEVPRC_PADValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CELJV_VPRC_MKPValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEVPRC_PRZValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure CEVPRC_PROValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure TSMedidasShow(Sender: TObject);
    procedure TSPRC_PADShow(Sender: TObject);
    procedure TSPrecosShow(Sender: TObject);
    procedure TSPRC_ATVShow(Sender: TObject);
    procedure TSPRC_VARShow(Sender: TObject);
    procedure TSPRC_REPShow(Sender: TObject);
    procedure TSPRC_LVShow(Sender: TObject);
    procedure TSPRC_COMShow(Sender: TObject);
    procedure CEMPesoValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure CEMMetroValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure CEMGRAMAValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure IEUCOMValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EDTituloValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DBGGradeDTCPValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DTSCAD_PRO_GRDStateChange(Sender: TObject);
    procedure DTSCAD_PRO_CMPStateChange(Sender: TObject);
    procedure CEMRENDValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CAD_PRO_CMPAfterInsert(DataSet: TDataSet);
    procedure CAD_PRO_CMPBeforeOpen(DataSet: TDataSet);
    procedure EDArtigoValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEPIPIValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure PENCMKeyPress(Sender: TObject; var Key: Char);
    procedure CEPIPIChange(Sender: TObject);
    procedure IECDSTChange(Sender: TObject);
    procedure EDUCONChange(Sender: TObject);
    procedure CEUQVOLValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EDUCONValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure ACTMPostExecute(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
  private
    { Private declarations }
    ARendimento: Double;

    procedure _WM_ACTIVATE(var Msg: TMessage); message WM_ACTIVATE;

    procedure _SHE_CMP(AFlag: Integer = 0);
    procedure _SHE_GRD(AFlag: Integer = 0);
    procedure _POST_IMG_SKU(AIMG_NOME: String);
    procedure _PUMKP;
    procedure _UCON;
    procedure _PSQNCM(ASender: TwinControl);
  public
    { Public declarations }
  end;

var
  FrmCAD_PRO_EDI: TFrmCAD_PRO_EDI;

implementation

uses uPrincipal, bPrincipal,
     pProduto_Instrucao_Lavagem;

{$R *.dfm}

procedure TFrmCAD_PRO_EDI._WM_ACTIVATE(var Msg: TMessage);
begin
  inherited;
//Resize;
end;

procedure TFrmCAD_PRO_EDI.FormCreate(Sender: TObject);
begin
  { FORM MANAGER }
  REC_SHE_DEF.FrmPosition := Self.Position;

  { USERS }
  REC_SHE_DEF.FB_Event    := 'CAD_PRO';
  REC_SHE_DEF.GDescricao  := 'Produtos';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;

  PCPrincipal.ActivePageIndex := 0;
  PCTAB_PRC.ActivePageIndex   := 0;
end;

procedure TFrmCAD_PRO_EDI.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if SIMPost.Enabled then
  begin
    if CAD_PRO_GRD.State in [dsInsert,dsEdit] then
       if (oEmpty(CAD_PRO_GRDCOR_NO.AsString)) and (oEmpty(CAD_PRO_GRDVAR_NO.AsString)) and (oEmpty(CAD_PRO_GRDVAR_CD.AsString)) and (oEmpty(CAD_PRO_GRDVAR_RF.AsString)) then
           CAD_PRO_GRD.Cancel
       else
           CAD_PRO_GRD.Post;

    if CAD_PRO_GRD.RecNo > 0 then
    inherited;
  end;
end;

procedure TFrmCAD_PRO_EDI.SBIMG_ARTClick(Sender: TObject);
begin
  if OPDIMG.Execute then
  begin
    TImage(FindComponent(RIGHTSTR(TSpeedButton(Sender).Name,7))).Picture.LoadFromFile(OPDIMG.FileName);
    _POST_IMG_SKU(TImage(FindComponent(RIGHTSTR(TSpeedButton(Sender).Name,7))).Name);
  end;
end;

procedure TFrmCAD_PRO_EDI.IMG_ARTDblClick(Sender: TObject);
begin
  TImage(Sender).Picture.Assign(Nil);
  _POST_IMG_SKU(TImage(Sender).Name);
end;

procedure TFrmCAD_PRO_EDI._POST_IMG_SKU(AIMG_NOME: String);
begin
  if Pos('ART',AIMG_NOME) > 0 then
     BIMG_ART.Tag := 1 else
  if (Pos('SKU',AIMG_NOME) > 0) and (CAD_PRO_GRDID.AsInteger > 0) then
  begin
    CAD_PRO_GRD.Edit;
    CAD_PRO_GRDIMG_SKU.LoadFromFile(OPDIMG.FileName);
    CAD_PRO_GRDIMG_SKU_ID.Value := 1;
    CAD_PRO_GRD.Post;
  end;
end;

procedure TFrmCAD_PRO_EDI.ILA_BMP1Click(Sender: TObject);
begin
  try
    TFrmProduto_Instrucao_Lavagem.ExecForm(Nil,FrmProduto_Instrucao_Lavagem,fsNormal);
  finally
    if FrmProduto_Instrucao_Lavagem.Imagem <> nil then
    begin
      TImage(Sender).Picture := FrmProduto_Instrucao_Lavagem.Imagem.Picture;
      TImage(Sender).Hint    := FrmProduto_Instrucao_Lavagem.Imagem.Hint;
      TImage(Sender).Tag     := FrmProduto_Instrucao_Lavagem.Imagem.Tag;
            BILA_BMP.Tag     := 1;

      Case TImage(Sender).HelpContext of
        1: begin
             EDILA_INS1.Text := TImage(Sender).Hint;
             EDILA_INS1.SetFocus;
           end;
        2: begin
             EDILA_INS2.Text := TImage(Sender).Hint;
             EDILA_INS2.SetFocus;
           end;
        3: begin
             EDILA_INS3.Text := TImage(Sender).Hint;
             EDILA_INS3.SetFocus;
           end;
        4: begin
             EDILA_INS4.Text := TImage(Sender).Hint;
             EDILA_INS4.SetFocus;
           end;
        5: begin
             EDILA_INS5.Text := TImage(Sender).Hint;
             EDILA_INS5.SetFocus;
           end;
        6: begin
             EDILA_INS6.Text := TImage(Sender).Hint;
             EDILA_INS6.SetFocus;
           end;
        7: begin
             EDILA_INS7.Text := TImage(Sender).Hint;
             EDILA_INS7.SetFocus;
           end;
        8: begin
             EDILA_INS8.Text := TImage(Sender).Hint;
             EDILA_INS8.SetFocus;
           end;
      end;
    end;
  end;
end;

procedure TFrmCAD_PRO_EDI.DBGGradeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if DBGGrade.FocusedColumn = 2 then
                 begin
                   CAD_PRO_GRD.Next;
                   if CAD_PRO_GRD.Eof then CAD_PRO_GRD.Append;
                 end else
                 DBGGrade.FocusedColumn := DBGGrade.FocusedColumn + 1;
               end;
    VK_DELETE: if CAD_PRO_GRD.State = dsBrowse then tecE.Click;
    VK_ESCAPE: if CAD_PRO_GRD.State = dsBrowse then close else CAD_PRO_GRD.Cancel;
    VK_INSERT: if not tecS.Enabled then tecI.Click;
  end;
end;

procedure TFrmCAD_PRO_EDI.EDArtigoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  EDArtigo.Text := Trim(EDArtigo.Text);

  if oEmpty(EDArtigo.Text) then
     oException(EDArtigo,'Artigo não Informado ou Incorreto !');

  with SQLFKConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   CP.IDEP,CP.DEEP,CP.IDCA,CP.DECA,CP.DECP,MAX(CP.DTCA) AS DTCA,MAX(CP.DTEK) AS DTEK,MAX(CP.DTPC) AS DTPC,MAX(CP.DTPP) AS DTPP,MAX(CP.DTPV) AS DTPV');
    SQL.Add('FROM (');
    SQL.Add('SELECT   CP.IDEP,EP.FANTASIA AS DEEP,CP.IDCA,LG.LOGIN AS DECA,CP.DECP,CP.DTCA,CP.DTEK,CP.DTPC,CP.DTPP,CP.DTPV');
    SQL.Add('FROM     CAD_PRO     AS CP');
    SQL.Add('JOIN     TAB_PAR_SIS AS EP ON (EP.ID = CP.IDEP)');
    SQL.Add('JOIN     TAB_USER    AS LG ON (LG.ID = CP.IDCA)');
    SQL.Add('WHERE    CP.ARTIGO  = ''' + EDArtigo.Text + '''');
    SQL.Add(') AS CP');
    SQL.Add('GROUP BY 1,2,3,4,5');
    ExecQuery;

    if not Eof then
       oException(EDArtigo,'Artigo informado já está cadastrado !' +#13 +#13 +

                  Current.ByName('DECP').AsString + #13 +
                  Current.ByName('DECA').AsString + ' ' + FormatDateTime('dd/mm/yy hh:mm',Current.ByName('DTCA').AsDateTime) + #13 + #13 +

                  'ÚLTIMOS REGISTROS'                   + #13 +
                  '=================================='  + #13 + #13 +

                  'Estoque: '      + IFThen(Current.ByName('DTEK').AsDateTime > 0,FormatDateTime('dd/mm/yy hh:mm',Current.ByName('DTEK').AsDateTime),EmptyStr) + #13 +
                  'Compras: '      + IFThen(Current.ByName('DTPC').AsDateTime > 0,FormatDateTime('dd/mm/yy hh:mm',Current.ByName('DTPC').AsDateTime),EmptyStr) + #13 +
                  'Programações: ' + IFThen(Current.ByName('DTPP').AsDateTime > 0,FormatDateTime('dd/mm/yy hh:mm',Current.ByName('DTPP').AsDateTime),EmptyStr) + #13 +
                  'Vendas: '       + IFThen(Current.ByName('DTPV').AsDateTime > 0,FormatDateTime('dd/mm/yy hh:mm',Current.ByName('DTPV').AsDateTime),EmptyStr));
  end;

  try
    if CAD_PRO_GRD.RecNo > 0 then
    begin
      CAD_PRO_GRD.First;
      while not CAD_PRO_GRD.Eof do
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRD.Post;
        CAD_PRO_GRD.Next;
      end;
    end else
    begin
      if RECParametros.PRO_GRD_PAD = 1 then
         with SQLFKConsulta do
         begin
           Close;
           SQL.Clear;
           SQL.Add('SELECT REFERENCIA,DESCRICAO FROM TAB_GRD WHERE PADRAO = '''+RECParametros.PRO_GRD_PAD+''' ORDER BY ID');
           ExecQuery;

           while not Eof do
           begin
             CAD_PRO_GRD.Append;
             CAD_PRO_GRDVAR_RF.Value := Current.Vars[0].AsString;
             CAD_PRO_GRDVAR_NO.Value := Current.Vars[1].AsString;
             CAD_PRO_GRD.Post;
             Next;
           end;
         end else
         begin
           CAD_PRO_GRD.Append;
           CAD_PRO_GRD.Post;
         end;

      EDArtigo.Enabled := False;
    end;
  except
    on E: Exception do
    begin
      oRTransact(TEdicao,ltRollback);
      oErro(Handle,'Erro ao tentar registrar artigo !'+#13+
                    E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
    end;
  end;
end;

procedure TFrmCAD_PRO_EDI.IECDSTExit(Sender: TObject);
var
  WinControl: TWinControl;
begin
  if IECDST.Modified then
  try
    IECDST.OnExit := Nil;

    try
      oRTransact(TEdicao,ltRead_Only);
      while not CAD_PRO_GRD.Eof do
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRDCDST.Value := StrToInt(IECDST.Text);
        CAD_PRO_GRDREST.Value := LeftStr(IECDST.Descriptions[IECDST.Values.IndexOf(IECDST.Text)],1);
        CAD_PRO_GRDDEST.Value := IECDST.Descriptions[IECDST.Values.IndexOf(IECDST.Text)];
        CAD_PRO_GRD.Post;
        CAD_PRO_GRD.Next;
      end;
      oRTransact(TEdicao,ltRead_Only_Release_Commit);
      IECDST.Modified := False;
    except
      on E: Exception do
      begin
        oRTransact(TEdicao,ltRead_Only_Release_Rollback);
        oErro(Handle,'Erro ao tentar registrar preço !'+#13+
                      E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
      end;
    end;
  finally
    WinControl := ActiveControl;                   
    ActiveControl := Nil;
    if WinControl <> Nil then
    begin
      PostMessage(TWinControl(WinControl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(WinControl).SetFocus;
    end;
    IECDST.OnExit := IECDSTExit;
  end;
end;

procedure TFrmCAD_PRO_EDI.EDDescricaoExit(Sender: TObject);
var
  WinControl: TWinControl;
begin
  if EDDescricao.Modified then
  try
    EDDescricao.OnExit := Nil;
    EDDescricao.Text   := Trim(EDDescricao.Text);

    if oEmpty(EDDescricao.Text) then
       oException(EDDescricao,'Descrição não Informada ou Incorreto !');

    oRTransact(TConsulta);
    with SQLFKConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   PRO_CART,MAX(DTCA) FROM CAD_PRO');
      SQL.Add('WHERE    PRO_DPRO  = '''+EDDescricao.Text+'''');
      SQL.Add('AND      PRO_CART <> '''+EDArtigo.Text     +'''');
      SQL.Add('GROUP BY 1');
      ExecQuery;

      if not Eof then
         oException(EDDescricao,'Descrição já cadastrada em outro artigo !'+#13+
                                Current.Vars[0].AsString+'. Criado em '+FormatDateTime('dd/mm/yy hh:mm.',Current.Vars[1].AsDateTime));
    end;

    EDDescricao.Modified := False;
  finally
    WinControl := ActiveControl;
    ActiveControl := Nil;
    if WinControl <> Nil then
    begin
      PostMessage(TWinControl(WinControl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(WinControl).SetFocus;
    end;
    EDDescricao.OnExit := EDDescricaoExit;
  end;
end;

procedure TFrmCAD_PRO_EDI.PEDECFExit(Sender: TObject);
var
  WinControl: TWinControl;
begin
  if PEDECF.Modified then
  try
    PEDECF.OnExit := Nil;
    PEDECF.Text   := Trim(PEDECF.Text);

    if oEmpty(PEDECF.Text) then
       oException(PEDECF,'Fornecedor não Informado ou Incorreto !');

    oRTransact(TConsulta);
    with SQLFKConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_FOR');
      SQL.Add('WHERE  FOR_FANT = '''+PEDECF.Text+'''');
      ExecQuery;
      PEDECF.Tag := Current.Vars[0].AsInteger;

      if Eof then
         oException(PEDECF,'Fornecedor não Cadastrado ou Incorreto !');
    end;

    PEDECF.Modified := False;
  finally
    WinControl := ActiveControl;
    ActiveControl := Nil;
    if WinControl <> Nil then
    begin
      PostMessage(TWinControl(WinControl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(WinControl).SetFocus;
    end;
    PEDECF.OnExit := PEDECFExit;
  end;
end;

procedure TFrmCAD_PRO_EDI.EDCDCFExit(Sender: TObject);
var
  WinControl: TWinControl;
begin
  if EDCDCF.Modified then
  try
    EDCDCF.OnExit := Nil;

    try
      oRTransact(TEdicao,ltRead_Only);
      while not CAD_PRO_GRD.Eof do
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRDCF_SKU.Value := EDCDCF.Text;
        CAD_PRO_GRD.Post;
        CAD_PRO_GRD.Next;
      end;
      oRTransact(TEdicao,ltRead_Only_Release_Commit);
      EDCDCF.Modified := False;
    except
      on E: Exception do
      begin
        oRTransact(TEdicao,ltRead_Only_Release_Rollback);
        oErro(Handle,'Erro ao tentar registrar preço !'+#13+
                      E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
      end;
    end;
  finally
    WinControl := ActiveControl;
    ActiveControl := Nil;
    if WinControl <> Nil then
    begin
      PostMessage(TWinControl(WinControl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(WinControl).SetFocus;
    end;
    EDCDCF.OnExit := EDCDCFExit;
  end;
end;

procedure TFrmCAD_PRO_EDI.EDCEANCFExit(Sender: TObject);
var
  WinControl: TWinControl;
begin
  if EDCEANCF.Modified then
  try
    EDCEANCF.OnExit := Nil;

    try
      oRTransact(TEdicao,ltRead_Only);
      while not CAD_PRO_GRD.Eof do
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRDCF_CEAN.Value := EDCEANCF.Text;
        CAD_PRO_GRD.Post;
        CAD_PRO_GRD.Next;
      end;
      oRTransact(TEdicao,ltRead_Only_Release_Commit);
      EDCEANCF.Modified := False;
    except
      on E: Exception do
      begin
        oRTransact(TEdicao,ltRead_Only_Release_Rollback);
        oErro(Handle,'Erro ao tentar registrar preço !'+#13+
                      E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
      end;
    end;
  finally
    WinControl := ActiveControl;
    ActiveControl := Nil;
    if WinControl <> Nil then
    begin
      PostMessage(TWinControl(WinControl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(WinControl).SetFocus;
    end;
    EDCEANCF.OnExit := EDCEANCFExit;
  end;
end;

procedure TFrmCAD_PRO_EDI.dxMaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  key := #0;
end;

procedure TFrmCAD_PRO_EDI.DBGGradeCOR_NOValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGGrade.EditingText := Trim(DBGGrade.EditingText);
  if (CAD_PRO_GRD.State in [dsInsert,dsEdit]) and (not oEmpty(DBGGrade.EditingText))then
      with SQLFKConsulta do
      begin
        oRTransact(TConsulta);

        Close;
        SQL.Clear;
        SQL.Add('SELECT ID,ESCALA,DESCRICAO FROM TAB_COR');
        SQL.Add('WHERE  DESCRICAO = '''+DBGGrade.EditingText+'''');
        ExecQuery;

        CAD_PRO_GRDCOR_ID.Value := Current.ByName('ID').AsInteger;
        CAD_PRO_GRDCOR_ESCALA.Value := Current.ByName('ESCALA').AsString;
        CAD_PRO_GRDCOR_NO.Value := Current.ByName('DESCRICAO').AsString;

        if Eof then
           DataBaseError('Cor não cadastrada ou incorreta !');
      end;
end;

procedure TFrmCAD_PRO_EDI.DBGGradeDESTValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGGrade.EditingText := Trim(DBGGrade.EditingText);
  if (CAD_PRO_GRD.State in [dsInsert,dsEdit]) and (not oEmpty(DBGGrade.EditingText))then
      with SQLFKConsulta do
      begin
        oRTransact(TConsulta);

        Close;
        SQL.Clear;
        SQL.Add('SELECT ID,REFERENCIA,DESCRICAO FROM TAB_STA_CAD WHERE DESCRICAO = '''+DBGGrade.EditingText+'''');
        ExecQuery;

        CAD_PRO_GRDCDST.Value := Current.Vars[0].AsInteger;
        CAD_PRO_GRDREST.Value := Current.Vars[1].AsString;
        CAD_PRO_GRDDEST.Value := Current.Vars[2].AsString;

        if Eof then
           DataBaseError('Status não cadastro ou incorreto !');
      end;
end;

procedure TFrmCAD_PRO_EDI.DBGGradeSCT_NOValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGGrade.EditingText := Trim(DBGGrade.EditingText);
  if (CAD_PRO_GRD.State in [dsInsert,dsEdit]) and (not oEmpty(DBGGrade.EditingText))then
      with SQLFKConsulta do
      begin
        oRTransact(TConsulta);

        Close;
        SQL.Clear;
        SQL.Add('SELECT TAB_SCT.ID,TAB_SCT.DESCRICAO,TAB_SCT.NCM,TRIBIPI,VUPRC_PAD,VUPRC_PRZ,VUPRC_PRO,PESO,PSCN,METRO,GRAMATURA,RENDIMENTO,LARG_U,LARG_T');
        SQL.Add('FROM   TAB_SCT');
        SQL.Add('LEFT JOIN TAB_NCM ON (TAB_NCM.NCM = TAB_SCT.NCM)');
        SQL.Add('WHERE  TAB_SCT.DESCRICAO = '''+DBGGrade.EditingText+'''');
        ExecQuery;

        CAD_PRO_GRDSCT_ID.Value := Current.Vars[0].AsShort;
        if Eof then
           DataBaseError('Sub Categoria não cadastrada ou incorreta !');

        if Current.Vars[1].AsString <> EmptyStr then
        CAD_PRO_GRDSCT_NO.Value := Current.Vars[1].AsString;

        if Current.Vars[4].AsCurrency > 0 then
        CAD_PRO_GRDVPRC_PAD.Value := Current.Vars[4].AsCurrency;

        { Fiscal }
        if (Current.ByName('NCM').AsString <> EmptyStr) and (Current.ByName('NCM').AsString <> '00000000') then
        begin
          PENCM.Text   := Current.ByName('NCM').AsString;
          CEPIPI.Value := Current.ByName('TRIBIPI').AsCurrency;
        end;

        { Preços }
        if Current.ByName('VUPRC_PAD').AsCurrency > 0 then
        CEVPRC_PAD.Value := Current.ByName('VUPRC_PAD').AsCurrency;

        if Current.ByName('VUPRC_PRZ').AsCurrency > 0 then
        CEVPRC_PRZ.Value := Current.ByName('VUPRC_PRZ').AsCurrency;

        if Current.ByName('VUPRC_PRO').AsCurrency > 0 then
        CEVPRC_PRO.Value := Current.ByName('VUPRC_PRO').AsCurrency;

        { Medidas Principais }
        if Current.ByName('PESO').AsCurrency > 0 then
        CEMPESO.Value := Current.ByName('PESO').AsCurrency;

        if Current.ByName('PSCN').AsCurrency > 0 then
        CEUPSCN.Value := Current.ByName('PSCN').AsCurrency;

        if Current.ByName('METRO').AsCurrency > 0 then
        CEMMETRO.Value := Current.ByName('METRO').AsCurrency;

        if Current.ByName('GRAMATURA').AsCurrency > 0 then
        CEMGRAMA.Value := Current.ByName('GRAMATURA').AsCurrency;

        if Current.ByName('RENDIMENTO').AsCurrency > 0 then
        CEMREND.Value := Current.ByName('RENDIMENTO').AsCurrency;

        { Outras Medidas }
        if Current.ByName('LARG_U').AsCurrency > 0 then
        CEMLGRU.Value := Current.ByName('LARG_U').AsCurrency;

        if Current.ByName('LARG_T').AsCurrency > 0 then
        CEMLGRT.Value := Current.ByName('LARG_T').AsCurrency;
      end;
end;

procedure TFrmCAD_PRO_EDI.DBGGradeCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if LeftStr(ANode.Values[DBGGradeREST.Index],1) = 'A' then
    begin
      AColor      := $00B9FFB9;
      AFont.Color := clBlack;
    end else
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure TFrmCAD_PRO_EDI.IESCT_IDExit(Sender: TObject);
var
  WinControl: TWinControl;
begin
  if IESCT_ID.Modified then
  try
    IESCT_ID.OnExit := Nil;

    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT TAB_SCT.ID,TAB_SCT.DESCRICAO,TAB_SCT.NCM,TRIBIPI,VUPRC_PAD,VUPRC_PRZ,VUPRC_PRO,PESO,PSCN,METRO,GRAMATURA,RENDIMENTO,LARG_U,LARG_T');
      SQL.Add('FROM   TAB_SCT');
      SQL.Add('LEFT   JOIN TAB_NCM ON (TAB_NCM.NCM = TAB_SCT.NCM)');
      SQL.Add('WHERE  TAB_SCT.ID = '''+IESCT_ID.Text+'''');
      ExecQuery;
    end;

    if SQLConsulta.Current.Vars[0].AsInteger > 0 then
    try
      { Fiscal }
      if (SQLConsulta.Current.ByName('NCM').AsString <> EmptyStr) and (SQLConsulta.Current.ByName('NCM').AsString <> '00000000') then
      begin
        PENCM.Text := SQLConsulta.Current.ByName('NCM').AsString;
        CEPIPI.Value := SQLConsulta.Current.ByName('TRIBIPI').AsCurrency;
      end;

      { Preços }
      if SQLConsulta.Current.ByName('VUPRC_PAD').AsCurrency > 0 then
      CEVPRC_PAD.Value := SQLConsulta.Current.ByName('VUPRC_PAD').AsCurrency;

      if SQLConsulta.Current.ByName('VUPRC_PRZ').AsCurrency > 0 then
      CEVPRC_PRZ.Value := SQLConsulta.Current.ByName('VUPRC_PRZ').AsCurrency;

      if SQLConsulta.Current.ByName('VUPRC_PRO').AsCurrency > 0 then
      CEVPRC_PRO.Value := SQLConsulta.Current.ByName('VUPRC_PRO').AsCurrency;

      { Medidas Principais }
      if SQLConsulta.Current.ByName('PESO').AsCurrency > 0 then
      CEMPESO.Value := SQLConsulta.Current.ByName('PESO').AsCurrency;

      if SQLConsulta.Current.ByName('PSCN').AsCurrency > 0 then
      CEUPSCN.Value := SQLConsulta.Current.ByName('PSCN').AsCurrency;

      if SQLConsulta.Current.ByName('METRO').AsCurrency > 0 then
      CEMMETRO.Value := SQLConsulta.Current.ByName('METRO').AsCurrency;

      if SQLConsulta.Current.ByName('GRAMATURA').AsCurrency > 0 then
      CEMGRAMA.Value := SQLConsulta.Current.ByName('GRAMATURA').AsCurrency;

      if SQLConsulta.Current.ByName('RENDIMENTO').AsCurrency > 0 then
      CEMREND.Value := SQLConsulta.Current.ByName('RENDIMENTO').AsCurrency;

      { Outras Medidas }
      if SQLConsulta.Current.ByName('LARG_U').AsCurrency > 0 then
      CEMLGRU.Value := SQLConsulta.Current.ByName('LARG_U').AsCurrency;

      if SQLConsulta.Current.ByName('LARG_T').AsCurrency > 0 then
      CEMLGRT.Value := SQLConsulta.Current.ByName('LARG_T').AsCurrency;

      oRTransact(TEdicao,ltRead_Only);
      while not CAD_PRO_GRD.Eof do
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRDSCT_ID.Value := SQLConsulta.Current.Vars[0].AsInteger;
        CAD_PRO_GRDSCT_NO.Value := SQLConsulta.Current.Vars[1].AsString;

        if SQLConsulta.Current.Vars[4].AsCurrency > 0 then
        CAD_PRO_GRDVPRC_PAD.Value := SQLConsulta.Current.Vars[4].AsCurrency;
        CAD_PRO_GRD.Post;
        CAD_PRO_GRD.Next;
      end;
      oRTransact(TEdicao,ltRead_Only_Release_Commit);
      _PUMKP;

      IESCT_ID.Modified := False;
    except
      on E: Exception do
      begin
        oRTransact(TEdicao,ltRead_Only_Release_Rollback);
        oErro(Handle,'Erro ao tentar registrar sub categoria !'+#13+
                      E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
      end;
    end;
  finally
    WinControl := ActiveControl;
    ActiveControl := Nil;
    if WinControl <> Nil then
    begin
      PostMessage(TWinControl(WinControl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(WinControl).SetFocus;
    end;
    IESCT_ID.OnExit := IESCT_IDExit;
  end;
end;

procedure TFrmCAD_PRO_EDI.tecIClick(Sender: TObject);
begin
  if CAD_PRO_GRD.State = dsBrowse then
     CAD_PRO_GRD.Append;
end;

procedure TFrmCAD_PRO_EDI.tecAClick(Sender: TObject);
begin
  if ((CAD_PRO_GRDId.AsInteger > 0) and (CAD_PRO_GRD.State = dsBrowse)) then
       CAD_PRO_GRD.Edit;
end;

procedure TFrmCAD_PRO_EDI.tecEClick(Sender: TObject);
begin
  if (CAD_PRO_GRDId.AsInteger > 0) and (CAD_PRO_GRD.State = dsBrowse) then
  begin
    if oYesNo(handle,'Produto '+CAD_PRO_GRDSKU.AsString+'.'+#13+
                     'Confirma Exclusão ?') = mrNo then
       Abort;

    oRTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID,DTCA,DTEK,DTPC,DTPP,DTPV');
      SQL.Add('FROM   CAD_PRO');
      SQL.Add('WHERE  PRO_CPRO = '''+CAD_PRO_GRDSKU.AsString+'''');
      ExecQuery;
    end;
    if SQLConsulta.Current.ByName('ID').AsInteger > 0 then
    begin
      if (SQLConsulta.Current.ByName('DTEK').AsDateTime > 0) or (SQLConsulta.Current.ByName('DTPC').AsDateTime > 0) or
         (SQLConsulta.Current.ByName('DTPP').AsDateTime > 0) or (SQLConsulta.Current.ByName('DTPV').AsDateTime > 0) then
          DataBaseError('Produto '+CAD_PRO_GRDSKU.AsString+'.'+#13+
                        'Exclusão não Permitida !'+#13+#13+
                        'Produto possui histórico(s) de registro(s) em aberto.'+#13+
                        'Compras: '     +IFThen(SQLConsulta.Current.ByName('DTPC').AsDateTime > 0,FormatDateTime('dd/mm/yy hh:mm.',SQLConsulta.Current.ByName('DTPC').AsDateTime),'')+#13+
                        'Programações: '+IFThen(SQLConsulta.Current.ByName('DTPP').AsDateTime > 0,FormatDateTime('dd/mm/yy hh:mm.',SQLConsulta.Current.ByName('DTPP').AsDateTime),'')+#13+
                        'Vendas: '      +IFThen(SQLConsulta.Current.ByName('DTPV').AsDateTime > 0,FormatDateTime('dd/mm/yy hh:mm.',SQLConsulta.Current.ByName('DTPV').AsDateTime),'')+#13+
                        'Estoque: '     +IFThen(SQLConsulta.Current.ByName('DTEK').AsDateTime > 0,FormatDateTime('dd/mm/yy hh:mm.',SQLConsulta.Current.ByName('DTEK').AsDateTime),'')) else
      if oYesNo(handle,'Produto '+CAD_PRO_GRDSKU.AsString+' criado em '+FormatDateTime('dd/mm/yy hh:mm.',SQLConsulta.Current.Vars[1].AsDateTime)+#13+
                       'Deseja realmente excluir ?') = mrYes then
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRDFLAG.Value := 1;
        CAD_PRO_GRD.Post;
      end;
    end else
    CAD_PRO_GRD.Delete;
  end;
end;

procedure TFrmCAD_PRO_EDI.tecSClick(Sender: TObject);
begin
  if CAD_PRO_GRD.State in [dsEdit,dsInsert] then
     CAD_PRO_GRD.Post;
end;

procedure TFrmCAD_PRO_EDI.tecCClick(Sender: TObject);
begin
  if CAD_PRO_GRD.State in [dsEdit,dsInsert] then
     CAD_PRO_GRD.Cancel;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_GRDAfterCancel(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    tecI.Enabled := true;
    tecA.Enabled := true;
    tecE.Enabled := true;
    tecS.Enabled := false;
    tecC.Enabled := false;

    if (PCPrincipal.ActivePage = TSGrade) and (TSGrade.Enabled) then
        DBGGrade.SetFocus;
  end;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_GRDAfterDelete(DataSet: TDataSet);
begin
  TEdicao.CommitRetaining;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_GRDAfterInsert(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    tecI.Enabled := false;
    tecA.Enabled := false;
    tecE.Enabled := false;
    tecS.Enabled := true;
    tecC.Enabled := true;

    if (PCPrincipal.ActivePage = TSGrade) and (TSGrade.Enabled) then
        DBGGrade.SetFocus;

    if CAD_PRO_GRD.State = dsInsert then
       DBGGrade.FocusedColumn := 2;
  end;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_GRDAfterOpen(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    tecI.Enabled := true;
    tecA.Enabled := true;
    tecE.Enabled := true;
    tecS.Enabled := false;
    tecC.Enabled := false;
  end;  
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_GRDAfterPost(DataSet: TDataSet);
var
  BMRecord: TBookMark;
begin
  if not ALockWindowUpdate then
  begin
    BMRecord := Nil;
    if CAD_PRO_GRD.RecNo > 0 then
    BMRecord := CAD_PRO_GRD.GetBookmark;

    oRTransact(TEdicao);

    if (BMRecord <> Nil) and (CAD_PRO_GRD.RecNo > 0) then
    begin
      CAD_PRO_GRD.GotoBookmark(BMRecord);
      CAD_PRO_GRD.FreeBookmark(BMRecord);
    end else CAD_PRO_GRD.Last;
  end;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_GRDBeforeCancel(DataSet: TDataSet);
begin
  if CAD_PRO_GRDId.Tag = 0 then
  begin
    CAD_PRO_GRD.Close;
    CAD_PRO_GRD.Open;
    ABORT;
  end;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_GRDBeforePost(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    CAD_PRO_GRDCOR_NO.Value := Trim(CAD_PRO_GRDCOR_NO.AsString);
    if (CAD_PRO_GRDCOR_NO.AsString <> EmptyStr) and (CAD_PRO_GRDCOR_ID.AsInteger = 0) then
        DataBaseError('Cor não Encontrada ou Incorreta !');

    CAD_PRO_GRDARTIGO.Value := EDArtigo.Text;
    CAD_PRO_GRDSKU.Value := EDArtigo.Text;

    if not oEmpty(CAD_PRO_GRDVAR_CD.AsString) then
       CAD_PRO_GRDSKU.Value := CAD_PRO_GRDSKU.AsString+'.'+CAD_PRO_GRDVAR_CD.AsString;

    if not oEmpty(CAD_PRO_GRDCOR_NO.AsString) then
       CAD_PRO_GRDSKU.Value := CAD_PRO_GRDSKU.AsString+'.'+oStrZero(CAD_PRO_GRDCOR_ID.AsInteger,4);

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_PRO_GRD');
      SQL.Add('WHERE  SKU = '''+CAD_PRO_GRDSKU.AsString+'''');
      SQL.Add('AND         ID <> '''+CAD_PRO_GRDID.AsString      +'''');
      ExecQuery;
      
      if not Eof then
         DataBaseError('Grade já Cadastrada !');
    end;
                             
    CAD_PRO_GRDGRD_NO.Value := TRIM(CAD_PRO_GRDVAR_NO.AsString+' '+TRIM(CAD_PRO_GRDCOR_NO.AsString+' '+TRIM(CAD_PRO_GRDVAR_CD.AsString+' '+TRIM(CAD_PRO_GRDVAR_RF.AsString))));
  end;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_GRDBeforeInsert(DataSet: TDataSet);
begin
  CAD_PRO_GRDId.Tag := CAD_PRO_GRDId.AsInteger;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_GRDNewRecord(DataSet: TDataSet);
begin
  CAD_PRO_GRDID.Value       := 0;
  CAD_PRO_GRDIMG_SKU_ID.Value    := 0;
  CAD_PRO_GRDIDCP.Value := 0;
  CAD_PRO_GRDFLAG.Value     := 0;

  CAD_PRO_GRDDTCP.Value := EDTITULO.Text;

  CAD_PRO_GRDCF_SKU.Value := EDCDCF.Text;
  CAD_PRO_GRDCF_CEAN.Value := EDCEANCF.Text;

  CAD_PRO_GRDVPRC_PAD.Value := CEVPRC_PAD.Value;
  CAD_PRO_GRDVPRC_PRZ.Value := CEVPRC_PRZ.Value;
  CAD_PRO_GRDVPRC_PRO.Value := CEVPRC_PRO.Value;

  CAD_PRO_GRDSCT_ID.Value := StrToInt(IESCT_ID.Text);
  CAD_PRO_GRDSCT_NO.Value := IESCT_ID.Descriptions[IESCT_ID.Values.IndexOf(IESCT_ID.Text)];

  CAD_PRO_GRDCDST.Value := StrToInt(IECDST.Text);
  CAD_PRO_GRDREST.Value := LeftStr(IECDST.Descriptions[IECDST.Values.IndexOf(IECDST.Text)],1);
  CAD_PRO_GRDDEST.Value := IECDST.Descriptions[IECDST.Values.IndexOf(IECDST.Text)];
end;

procedure TFrmCAD_PRO_EDI.siSAIRClick(Sender: TObject);
begin
  try
    SIMPost.Enabled := False;
    if CAD_PRO_GRD.State in [dsInsert,dsEdit] then
       CAD_PRO_GRD.Cancel;
  finally
    inherited;
  end;  
end;

procedure TFrmCAD_PRO_EDI.DTSCAD_PRO_GRDDataChange(Sender: TObject;
  Field: TField);
begin
  if CAD_PRO_GRD.State = dsBrowse then
  begin
    DBGGrade.ApplyBestFit(DBGGradeSKU);
    DBGGrade.ApplyBestFit(DBGGradeDEST);
    DBGGrade.ApplyBestFit(DBGGradeCOR_NO);
    DBGGrade.ApplyBestFit(DBGGradeVAR_NO);
    DBGGrade.ApplyBestFit(DBGGradeSCT_NO);
    DBGGrade.ApplyBestFit(DBGGradeDTCP);

    oLoadJPG(CAD_PRO_GRD.FieldByName('IMG_SKU'),IMG_SKU.Picture,False);
  end;  
end;

procedure TFrmCAD_PRO_EDI.DTSCAD_PRO_GRDStateChange(Sender: TObject);
begin
  oState(CAD_PRO_GRD,SBGrade);
end;

procedure TFrmCAD_PRO_EDI.CEVPRC_PADValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  try
    try
      oOTransact(TEdicao,ltRead_Only);
      CAD_PRO_GRD.First;
      while not CAD_PRO_GRD.Eof do
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRDVPRC_PAD.Value := CEVPRC_PAD.Value;
        CAD_PRO_GRD.Post;
        CAD_PRO_GRD.Next;
      end;
      oCTransact(TEdicao,ltRead_Only_Release_Commit);

      if RECParametros.PRO_AJU_PRC_VAR > 0 then
         CEVAR_VPRC_PAD.Value := CEVPRC_PAD.Value +((CEVPRC_PAD.Value * RECParametros.PRO_AJU_PRC_VAR) / 100);

      if RECParametros.PRO_AJU_PRC_REP > 0 then
         CEREP_VPRC_PAD.Value := CEVPRC_PAD.Value +((CEVPRC_PAD.Value * RECParametros.PRO_AJU_PRC_REP) / 100);

      _PUMKP;
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRead_Only_Release_Rollback);
        oErro(Handle,'Erro ao tentar registrar preço !'+#13+
                      E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
      end;
    end;
  finally
    oRTransact(TEdicao);
  end;
end;

procedure TFrmCAD_PRO_EDI.CEVPRC_PRZValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  try
    try
      oOTransact(TEdicao,ltRead_Only);
      CAD_PRO_GRD.First;
      while not CAD_PRO_GRD.Eof do
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRDVPRC_PRZ.Value := CEVPRC_PRZ.Value;
        CAD_PRO_GRD.Post;
        CAD_PRO_GRD.Next;
      end;
      oCTransact(TEdicao,ltRead_Only_Release_Commit);
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRead_Only_Release_Rollback);
        oErro(Handle,'Erro ao tentar registrar preço !'+#13+
                      E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
      end;
    end;
  finally
    oRTransact(TEdicao);
  end;
end;

procedure TFrmCAD_PRO_EDI.CEVPRC_PROValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  try
    try
      oOTransact(TEdicao,ltRead_Only);
      CAD_PRO_GRD.First;
      while not CAD_PRO_GRD.Eof do
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRDVPRC_PRO.Value := CEVPRC_PRO.Value;
        CAD_PRO_GRD.Post;
        CAD_PRO_GRD.Next;
      end;
      oCTransact(TEdicao,ltRead_Only_Release_Commit);
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRead_Only_Release_Rollback);
        oErro(Handle,'Erro ao tentar registrar preço !'+#13+
                      E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
      end;
    end;
  finally
    oRTransact(TEdicao);
  end;
end;

procedure TFrmCAD_PRO_EDI.CELJV_VPRC_MKPValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  _PUMKP;
end;

procedure TFrmCAD_PRO_EDI._PUMKP;
var
  ASPRC: Double;
begin
  ASPRC := 0;
  if ((CEVPRC_PAD.Value > 0) and (CELJV_UQVOL.Value > 0) and (CELJV_VPRC_MKP.Value > 0)) then
  begin
    ASPRC := CEVPRC_PAD.Value / CELJV_UQVOL.Value;
    ASPRC := ASPRC + ((ASPRC * CELJV_VPRC_MKP.Value) / 100);

    with Consulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT NVALOR FROM SP_CAD_PRO_ROUND(');
      SQL.Add(''''+oStrTran(FloatToStr(ASPRC),',','.')+''')');
      Open;
      ASPRC := Fields[0].AsCurrency;
    end;
  end;
  CELJV_VPRC_PAD.Value := ASPRC;
end;

procedure TFrmCAD_PRO_EDI.TSMedidasShow(Sender: TObject);
begin
  if (Showing) and (IEUCOM.Enabled) and (TSMedidas.Enabled) then
      IEUCOM.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.TSPrecosShow(Sender: TObject);
begin
  if (Showing) and (TSPrecos.Enabled  ) and (TSPRC_PAD.Enabled ) then
  if (PCTAB_PRC.ActivePage = TSPRC_PAD) and (CEVPRC_PAD.Enabled) then
  CEVPRC_PAD.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.TSPRC_PADShow(Sender: TObject);
begin
  if (Showing) and (TSPrecos.Enabled  ) and (TSPRC_PAD.Enabled ) then
  if (PCTAB_PRC.ActivePage = TSPRC_PAD) and (CEVPRC_PAD.Enabled) then
  CEVPRC_PAD.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.TSPRC_ATVShow(Sender: TObject);
begin
  if (Showing) and (TSPrecos.Enabled  ) and (TSPRC_ATV.Enabled ) then
  if (PCTAB_PRC.ActivePage = TSPRC_ATV) and (CEATJ_VPRC_PAD.Enabled) then
  CEATJ_VPRC_PAD.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.TSPRC_VARShow(Sender: TObject);
begin
  if (Showing) and (TSPrecos.Enabled  ) and (TSPRC_VAR.Enabled ) then
  if (PCTAB_PRC.ActivePage = TSPRC_VAR) and (CEVAR_VPRC_PAD.Enabled) then
  CEVAR_VPRC_PAD.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.TSPRC_REPShow(Sender: TObject);
begin
  if (Showing) and (TSPrecos.Enabled  ) and (TSPRC_REP.Enabled ) then
  if (PCTAB_PRC.ActivePage = TSPRC_REP) and (CEREP_VPRC_PAD.Enabled) then
  CEREP_VPRC_PAD.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.TSPRC_LVShow(Sender: TObject);
begin
  if (Showing) and (TSPrecos.Enabled ) and (TSPRC_LV.Enabled ) then
  if (PCTAB_PRC.ActivePage = TSPRC_LV) and (CELJV_VPRC_PAD.Enabled) then
  CELJV_VPRC_PAD.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.TSPRC_COMShow(Sender: TObject);
begin
  if (Showing) and (TSPrecos.Enabled  ) and (TSPRC_COM.Enabled ) then
  if (PCTAB_PRC.ActivePage = TSPRC_COM) and (CECF_VPRC_PAD.Enabled) then
  CECF_VPRC_PAD.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.CEMPesoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (CEMPESO.Value > 0) and (IEUCOM.Text = 'KG') then
  begin
    CEUQTDE.Value := CEMPESO.Value;
    CEUQTDE.Color := clGray;
    CEUQTDE.Font.Color := clWhite;
    CEUQTDE.Refresh;
  end;
end;

procedure TFrmCAD_PRO_EDI.CEMMetroValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (CEMMETRO.Value > 0) and (IEUCOM.Text = 'M') then
  begin
    CEUQTDE.Value := CEMMETRO.Value;
    CEUQTDE.Color := clGray;
    CEUQTDE.Font.Color := clWhite;

    CEUQTDE.Modified := True;
    CEUQTDE.ValidateEdit;
  end;
end;

procedure TFrmCAD_PRO_EDI.CEMGRAMAValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (LeftStr(IEUCOM.Text,1) = 'M') or (LeftStr(IEUCOM.Text,1) = 'K') then
  begin
    ARendimento := 0;

    if (CEMGRAMA.Value > 0) and (CEMLGRT.Value > 0) then
    begin
      ARendimento := RoundTO(1000 / CEMGRAMA.Value,-2);
      ARendimento := RoundTO(ARendimento / CEMLGRT.Value,-2);
    end;

    if ARendimento > 0 then
    begin
      CEMREND.Value := ARendimento;

      if (LeftStr(IEUCOM.Text,1) = 'K') and (CEMPESO.Value > 0) then
          CEMMETRO.Value := RoundTO(CEMREND.Value * CEMPESO.Value,-2);
    end;
  end;
end;

procedure TFrmCAD_PRO_EDI.EDTituloValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  oRTransact(TConsulta);
  with SQLFKConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PRO_CART,MAX(DTCA) FROM CAD_PRO');
    SQL.Add('WHERE    PRO_TITU  = '''+EDTitulo.Text+'''');
    SQL.Add('AND      PRO_CART <> '''+EDArtigo.Text     +'''');
    SQL.Add('GROUP BY 1');
    ExecQuery;

    if not Eof then
       oException(EDTitulo,'Título já cadastrado em outro artigo !'+#13+
                            Current.Vars[0].AsString+'. Criado em '+FormatDateTime('dd/mm/yy hh:mm.',Current.Vars[1].AsDateTime));
  end;

  try
    try
      oOTransact(TEdicao,ltRead_Only);
      CAD_PRO_GRD.First;
      while not CAD_PRO_GRD.Eof do
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRDDTCP.Value := EDTITULO.Text;
        CAD_PRO_GRD.Post;
        CAD_PRO_GRD.Next;
      end;
      oCTransact(TEdicao,ltRead_Only_Release_Commit);
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRead_Only_Release_Rollback);
        oErro(Handle,'Erro ao tentar registrar preço !'+#13+
                      E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
      end;
    end;
  finally
    oRTransact(TEdicao);

    DBGGradeDTCP.Field.FocusControl;
    Application.ProcessMessages;
  end;

  PEDECF.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.DBGGradeDTCPValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGGrade.EditingText := Trim(DBGGrade.EditingText);
  if (CAD_PRO_GRD.State in [dsInsert,dsEdit]) and (DBGGrade.EditingText <> EmptyStr) and (DBGGrade.EditingText <> CAD_PRO_GRDDTCP.AsString) then
      CAD_PRO_GRDDTCP.Value := DBGGrade.EditingText;
end;

procedure TFrmCAD_PRO_EDI.CEMRENDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (LeftStr(IEUCOM.Text,1) = 'K') and (CEMREND.Value > 0) and (CEMPESO.Value > 0) then
      CEMMETRO.Value := RoundTO(CEMREND.Value * CEMPESO.Value,-2);
end;

procedure TFrmCAD_PRO_EDI.SICMP_INSClick(Sender: TObject);
begin
  if CAD_PRO_CMP.State = dsBrowse then
     CAD_PRO_CMP.Append;
end;

procedure TFrmCAD_PRO_EDI.SICMP_ALTClick(Sender: TObject);
begin
  if (CAD_PRO_CMP.State = dsBrowse) and (CAD_PRO_CMPId.AsInteger > 0) then
      CAD_PRO_CMP.Edit;
end;

procedure TFrmCAD_PRO_EDI.SICMP_DELClick(Sender: TObject);
begin
  if (CAD_PRO_CMP.State = dsBrowse) and (CAD_PRO_CMPId.AsInteger > 0) then
      if oYesNo(handle,'Excluir Composição ?') = mrYes then
      begin
        CAD_PRO_CMP.Edit;
        CAD_PRO_CMPFLAG.Value := 1;
        CAD_PRO_CMP.Post;
      end;
end;

procedure TFrmCAD_PRO_EDI.SICMP_SAVClick(Sender: TObject);
begin
  if CAD_PRO_CMP.State in [dsEdit,dsInsert] then
     CAD_PRO_CMP.Post;
end;

procedure TFrmCAD_PRO_EDI.SICMP_CANClick(Sender: TObject);
begin
  if CAD_PRO_CMP.State in [dsEdit,dsInsert] then
     CAD_PRO_CMP.Cancel;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPNewRecord(DataSet: TDataSet);
begin
  { Cadastro }
  CAD_PRO_CMPID.Value := 0;

  { Evento }
  CAD_PRO_CMPIDEV.Value := REC_SHE_DEF.AIDEV;
  CAD_PRO_CMPCDEV.Value := 2; { Composição }

  { Composição }
  CAD_PRO_CMPIDPK.Value := 0; { CAD_PRO_CMP }
  CAD_PRO_CMPQTDE.Value := 0; { % }

  { Flags }
  CAD_PRO_CMPFLAG.Value := 0;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPBeforeOpen(DataSet: TDataSet);
begin
  CAD_PRO_CMP.EnableControls;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPBeforeInsert(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
     CAD_PRO_CMPId.Tag := CAD_PRO_CMPId.AsInteger;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPBeforeCancel(DataSet: TDataSet);
begin
  if CAD_PRO_CMPId.Tag = 0 then
  begin
    CAD_PRO_CMP.Close;
    CAD_PRO_CMP.Open;
    ABORT;
  end;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPAfterInsert(DataSet: TDataSet);
begin
  DBGCMPDESCRICAO.Field.FocusControl;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPAfterDelete(DataSet: TDataSet);
begin
  oRefresh(CAD_PRO_CMP);
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPAfterPost(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
     oRefresh(CAD_PRO_CMP);
end;

procedure TFrmCAD_PRO_EDI.DTSCAD_PRO_CMPStateChange(Sender: TObject);
begin
  oState(CAD_PRO_CMP,SBCMP);
end;

procedure TFrmCAD_PRO_EDI.DBGCMPKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
       vk_insert: SICMP_INS.Click;
       vk_return: if CAD_PRO_CMP.State = dsBrowse then SICMP_ALT.Click else
                     if DBGCMP.FocusedField.FieldName = 'DESCRICAO' then
                        DBGCMPQTDE.Field.FocusControl else
                     if DBGCMP.FocusedField.FieldName = 'QTDE' then
                     begin
                       if CAD_PRO_CMPQTDE.AsCurrency > 0 then
                          CAD_PRO_CMP.Next;
                       if CAD_PRO_CMP.Eof then
                          CAD_PRO_CMP.Append;
                     end else
                     DBGCMP.FocusedColumn := DBGCMP.FocusedColumn + 1;
       vk_delete: SICMP_DEL.Click;
  end;
end;

procedure TFrmCAD_PRO_EDI.PENCMExit(Sender: TObject);
var
  WinControl: TWinControl;
begin
  if PENCM.Modified then
     try
       PENCM.OnExit := Nil;
       PENCM.Text   := Trim(PENCM.Text);

       _PSQNCM(PENCM);
     finally
          WinControl := ActiveControl;
       ActiveControl := Nil;
       if WinControl <> Nil then
       begin
         PostMessage(TWinControl(WinControl).Handle, WM_SETFOCUS, 0, 0);
         TWinControl(WinControl).SetFocus;
       end;

       PENCM.OnExit := PENCMExit;
     end;
end;

procedure TFrmCAD_PRO_EDI.CEPIPIValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  _PSQNCM(TWinControl(Sender));
end;

procedure TFrmCAD_PRO_EDI._PSQNCM(ASender: TwinControl);
begin
  try
    Self.Cursor := crSQLWait;

    try
      PENCM.Text := oCoalesce(PENCM.Text,'00000000');

      oOTransact(TEdicao);
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('EXECUTE BLOCK');
        SQL.Add('RETURNS (RNCM VARCHAR(8),RTRIBIPI NUMERIC(5,2),REXTIPI VARCHAR(3),RCEST VARCHAR(7))');
        SQL.Add('AS');
        SQL.Add('BEGIN');

        SQL.Add('UPDATE OR INSERT');
        SQL.Add('INTO TAB_NCM (IDEP,IDCA,NCM,TRIBIPI,IP,HOST)');
        SQL.Add('VALUES (');

        SQL.Add('''' + RECParametros.ID              + ''',');
        SQL.Add('''' + RECUsuarios.ID                + ''',');
        SQL.Add('''' + PENCM.Text                    + ''',');
        SQL.Add('''' + oStrTran(CEPIPI.Text,',','.') + ''',');
        SQL.Add('''' + RECParametros.IP              + ''',');
        SQL.Add('''' + RECParametros.HOST            + ''')');

        SQL.Add('MATCHING (NCM)');
        SQL.Add('RETURNING NCM,TRIBIPI,EXTIPI,CEST INTO :RNCM,:RTRIBIPI,:REXTIPI,:RCEST;');

        SQL.Add('SUSPEND;');
        SQL.Add('END;');

        ParamCheck := False;
        Prepare;
        ExecQuery;

        PENCM.Text    := Current.Vars[0].AsString;
        CEPIPI.Value  := Current.Vars[1].AsFloat;
        PEEXTIPI.Text := Current.Vars[2].AsString;
        PECEST.Text   := Current.Vars[3].AsString;

        ParamCheck := True;
        Close;
      end;
      oCTransact(TEdicao);

      if ASender.ClassType = TdxPickEdit     then TdxPickEdit    (ASender).Modified := False;
      if ASender.ClassType = TdxCurrencyEdit then TdxCurrencyEdit(ASender).Modified := False;
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRollback);

        if ASender.ClassType = TdxPickEdit     then TdxPickEdit    (ASender).Modified := True;
        if ASender.ClassType = TdxCurrencyEdit then TdxCurrencyEdit(ASender).Modified := True;

        oException(Nil,'Falha ao tentar atualizar ncm !' +#13+
                       'Favor entrar em contato com o administrador do sistema.' +#13 +#13+
                        E.Message);
      end;
    end;
    
  finally
    Self.Cursor := crDefault;
    Application.ProcessMessages;
  end;  
end;

procedure TFrmCAD_PRO_EDI.PENCMKeyPress(Sender: TObject; var Key: Char);
begin
  key := oEditNumero(Key);
end;

procedure TFrmCAD_PRO_EDI.CEPIPIChange(Sender: TObject);
begin
  if CEPIPI.Value > 0 then
     CEPIPI.Font.Style := [fsBold] else
     CEPIPI.Font.Style := [];
end;

procedure TFrmCAD_PRO_EDI.IECDSTChange(Sender: TObject);
begin
  if LeftStr(IECDST.Descriptions[IECDST.Values.IndexOf(IECDST.Text)],1) = 'A' then
  begin
    IECDST.Color      := $00B9FFB9;
    IECDST.Font.Color := clBlack;
  end else

  if LeftStr(IECDST.Descriptions[IECDST.Values.IndexOf(IECDST.Text)],1) = 'P' then
  begin
    IECDST.Color      := clInfoBk;
    IECDST.Font.Color := clBlack;
  end else
  begin
    IECDST.Color      := $000024B3;
    IECDST.Font.Color := clWhite;
  end;
end;

procedure TFrmCAD_PRO_EDI.IEUCOMValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CEUPSCN.Value := IFThen((IEUCOM.Text <> 'M') and (IEUCOM.Text <> 'KG') and (IEUCOM.Text <> 'PC'),0,0.3);
  _UCON;
end;

procedure TFrmCAD_PRO_EDI.CEUQTDEValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CEUQTDE.Color      := clWhite;
  CEUQTDE.Font.Color := clBlack;

  _UCON;
end;

procedure TFrmCAD_PRO_EDI.CEUQVOLValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  _UCON;
end;

procedure TFrmCAD_PRO_EDI._UCON;
begin
{ RICARDO
  quando terminar aqui, retirar a trigger +
  UPDATE CAD_PRO
  SET    UCON  = NULL
  WHERE  UQTDE = 1
  AND    UQVOL = 0 }

  EDUCON.Text := EmptyStr;
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT REFERENCIA,DESCRICAO,CONTEUDO');
    SQL.Add('FROM   TAB_UCOM ');
    SQL.Add('WHERE  REFERENCIA = ''' + IEUCOM.Text + '''');
    ExecQuery;

    if not Eof then
    begin
      if (EDUESP.Text = EmptyStr ) and (CEUQTDE.Value = 1) and (LeftStr(IEUCOM.Text,2) = 'CX') and (Length(IEUCOM.Text) > 2) then
      EDUCON.Text := Current.ByName('CONTEUDO').AsString else

      if (EDUESP.Text = EmptyStr ) and (CEUQTDE.Value > 1) then
      EDUCON.Text := oStrTran(Current.ByName('CONTEUDO').AsString,'*',FormatFloat('0.##',CEUQTDE.Value)) else

      if (EDUESP.Text <> EmptyStr) and (CEUQVOL.Value > 0) and (LeftStr(IEUCOM.Text,2) = 'UN') and (Pos('UN',EDUESP.Text) > 0) then
      EDUCON.Text := 'CAIXA COM ' + FormatFloat('0.##',CEUQVOL.Value) + ' ' + EDUESP.Text else

      if (EDUESP.Text <> EmptyStr) and (CEUQVOL.Value > 0) then
      EDUCON.Text := IFThen(Pos(IEUCOM.Text,'MKG') > 0,'ROLO',Current.ByName('CONTEUDO').AsString) + ' COM ' + FormatFloat('0.##',CEUQVOL.Value) + ' ' + EDUESP.Text;
    end;
  end;
end;

procedure TFrmCAD_PRO_EDI.EDUCONChange(Sender: TObject);
begin
  if not ALockWindowUpdate then
  begin
    EDUCON.Color      := clGray;
    EDUCON.Font.Color := clWhite;
    EDUCON.Refresh;
  end;
end;

procedure TFrmCAD_PRO_EDI.EDUCONValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if oYesNo(handle,'Confirma edição do conteúdo ?') = mrNo then
     EDUCON.Reset;
end;

procedure TFrmCAD_PRO_EDI.ACTMPostExecute(Sender: TObject);
begin
  inherited;

  try
    oOTransact(TEdicao,ltRead_Only);

    oSP_INI('SP_CAD_PRO_NEW',SPEdicao);

    SPEdicao.ParamByName('PIDEP').Value := RECParametros.ID;
    SPEdicao.ParamByName('PIDCA').Value := RECUsuarios.ID;
    SPEdicao.ParamByName('PIDEV').Value := REC_SHE_DEF.AIDEV;
    SPEdicao.ParamByName('PIP  ').Value := RECParametros.IP;
    SPEdicao.ParamByName('PHOST').Value := RECParametros.HOST;
    SPEdicao.ParamByName('PFLAG').Value := CAD_PRO_GRDFLAG.AsInteger;

    SPEdicao.ParamByName('AIDCF').Value := PEDECF.Tag;
    SPEdicao.ParamByName('ACDST').Value := CAD_PRO_GRDCDST.AsInteger;

    SPEdicao.ParamByName('AIDCP'  ).Value := CAD_PRO_GRDIDCP.AsInteger;
    SPEdicao.ParamByName('AIDAK'  ).Value := REC_SHE_DEF.AIDAK;
    SPEdicao.ParamByName('AARTIGO').Value := CAD_PRO_GRDARTIGO.AsString;

    SPEdicao.ParamByName('ASKU'    ).Value := CAD_PRO_GRDSKU.AsString;
    SPEdicao.ParamByName('ACEAN'   ).Value := CAD_PRO_GRDCEAN.AsString;
    SPEdicao.ParamByName('ACF_SKU' ).Value := CAD_PRO_GRDCF_SKU.AsString;
    SPEdicao.ParamByName('ACF_CEAN').Value := CAD_PRO_GRDCF_CEAN.AsString;

    SPEdicao.ParamByName('ANCM' ).Value := PENCM.Text;
    SPEdicao.ParamByName('APIPI').Value := CEPIPI.Value;

    SPEdicao.ParamByName('ADECP').Value := EDDESCRICAO.Text;
    SPEdicao.ParamByName('ADTCP').Value := EDTITULO.Text;
    SPEdicao.ParamByName('ADCCP').Value := '';

    SPEdicao.ParamByName('AGRD_ID').Value := CAD_PRO_GRDGRD_ID.AsInteger;
    SPEdicao.ParamByName('AGRD_NO').Value := CAD_PRO_GRDGRD_NO.AsString;
    SPEdicao.ParamByName('AGRD_SG').Value := '';

    SPEdicao.ParamByName('ACOR_ID').Value := CAD_PRO_GRDCOR_ID.AsInteger;
    SPEdicao.ParamByName('ACOR_CD').Value := CAD_PRO_GRDCOR_CD.AsString;
    SPEdicao.ParamByName('ACOR_RF').Value := CAD_PRO_GRDCOR_RF.AsString;
    SPEdicao.ParamByName('ACOR_SG').Value := CAD_PRO_GRDCOR_SG.AsString;
    SPEdicao.ParamByName('ACOR_NO').Value := CAD_PRO_GRDCOR_NO.AsString;

    SPEdicao.ParamByName('AVAR_ID').Value := CAD_PRO_GRDVAR_ID.AsInteger;
    SPEdicao.ParamByName('AVAR_CD').Value := CAD_PRO_GRDVAR_CD.AsString;
    SPEdicao.ParamByName('AVAR_RF').Value := CAD_PRO_GRDVAR_RF.AsString;
    SPEdicao.ParamByName('AVAR_SG').Value := CAD_PRO_GRDVAR_SG.AsString;
    SPEdicao.ParamByName('AVAR_NO').Value := CAD_PRO_GRDVAR_NO.AsString;

    SPEdicao.ParamByName('AUCOM' ).Value := IEUCOM.Text;
    SPEdicao.ParamByName('AUCDBE').Value := IEUCDBE.Text;
    SPEdicao.ParamByName('AUQTDE').Value := CEUQTDE.Value;

    SPEdicao.ParamByName('AUQTDE_EST_MIN').Value := CEUQTDE_EST_MIN.Value;
    SPEdicao.ParamByName('AUQTDE_VEN_MIN').Value := CEUQTDE_VEN_MIN.Value;
    SPEdicao.ParamByName('AUQTDE_VEN_MUL').Value := CEUQTDE_VEN_MUL.Value;

    SPEdicao.ParamByName('AUQVOL').Value := CEUQVOL.Value;
    SPEdicao.ParamByName('AUESP' ).Value := EDUESP.Text;
    SPEdicao.ParamByName('AUPSCN').Value := CEUPSCN.Value;

    SPEdicao.ParamByName('ALJV_UCOM' ).Value := IELJV_UCOM.Text;
    SPEdicao.ParamByName('ALJV_UCDBE').Value := IELJV_UCDBE.Text;
    SPEdicao.ParamByName('ALJV_UQTDE').Value := CELJV_UQTDE.Value;

    SPEdicao.ParamByName('ALJV_UQTDE_EST_MIN').Value := CELJV_UQTDE_EST_MIN.Value;
    SPEdicao.ParamByName('ALJV_UQTDE_VEN_MIN').Value := CELJV_UQTDE_VEN_MIN.Value;
    SPEdicao.ParamByName('ALJV_UQTDE_VEN_MUL').Value := CELJV_UQTDE_VEN_MUL.Value;

    SPEdicao.ParamByName('ALJV_UQVOL').Value := CELJV_UQVOL.Value;
    SPEdicao.ParamByName('ALJV_UESP' ).Value := EDLJV_UESP.Text;
                                                
    SPEdicao.ParamByName('AMPESO'  ).Value := CEMPESO.Value;
    SPEdicao.ParamByName('AMMETRO' ).Value := CEMMETRO.Value;
    SPEdicao.ParamByName('AMMETRO2').Value := 0;
    SPEdicao.ParamByName('AMMETRO3').Value := 0;

    SPEdicao.ParamByName('AMGRAMA'   ).Value := CEMGRAMA.Value;
    SPEdicao.ParamByName('AMGRAMA_NO').Value := PEMGRAMA_NO.Text;
    SPEdicao.ParamByName('AMREND'    ).Value := CEMREND.Value;

    SPEdicao.ParamByName('AMLGRU').Value := CEMLGRU.Value;
    SPEdicao.ParamByName('AMLGRT').Value := CEMLGRT.Value;

    SPEdicao.ParamByName('AMELAL'  ).Value := CEMELAL.Value;
    SPEdicao.ParamByName('AMELAC'  ).Value := CEMELAC.Value;
    SPEdicao.ParamByName('AMELA_NO').Value := '';

    SPEdicao.ParamByName('AMENCL'  ).Value := CEMENCL.Value;
    SPEdicao.ParamByName('AMENCC'  ).Value := CEMENCC.Value;
    SPEdicao.ParamByName('AMENC_NO').Value := PEMENC_NO.Text;

    SPEdicao.ParamByName('AMABNT_NO').Value := '';

    SPEdicao.ParamByName('AMESP'   ).Value := CEMESP.Value;
    SPEdicao.ParamByName('AMESP_NO').Value := IEMESP_NO.Text;

    SPEdicao.ParamByName('AMCALT').Value := 0;
    SPEdicao.ParamByName('AMCLGR').Value := 0;
    SPEdicao.ParamByName('AMCCTO').Value := 0;
    SPEdicao.ParamByName('AMCPVM').Value := 0;

    SPEdicao.ParamByName('ALJV_MPESO'  ).Value := 0;
    SPEdicao.ParamByName('ALJV_MMETRO' ).Value := 0;
    SPEdicao.ParamByName('ALJV_MMETRO2').Value := 0;
    SPEdicao.ParamByName('ALJV_MMETRO3').Value := 0;

    SPEdicao.ParamByName('ALJV_MGRAMA'   ).Value := 0;
    SPEdicao.ParamByName('ALJV_MGRAMA_NO').Value := '';
    SPEdicao.ParamByName('ALJV_MREND'    ).Value := 0;

    SPEdicao.ParamByName('ALJV_MLGRU').Value := 0;
    SPEdicao.ParamByName('ALJV_MLGRT').Value := 0;

    SPEdicao.ParamByName('ALJV_MELAL'  ).Value := 0;
    SPEdicao.ParamByName('ALJV_MELAC'  ).Value := 0;
    SPEdicao.ParamByName('ALJV_MELA_NO').Value := '';

    SPEdicao.ParamByName('ALJV_MENCL'  ).Value := 0;
    SPEdicao.ParamByName('ALJV_MENCC'  ).Value := 0;
    SPEdicao.ParamByName('ALJV_MENC_NO').Value := '';

    SPEdicao.ParamByName('ALJV_MABNT_NO').Value := '';

    SPEdicao.ParamByName('ALJV_MESP'   ).Value := 0;
    SPEdicao.ParamByName('ALJV_MESP_NO').Value := '';

    SPEdicao.ParamByName('ALJV_MCALT').Value := 0;
    SPEdicao.ParamByName('ALJV_MCLGR').Value := 0;
    SPEdicao.ParamByName('ALJV_MCCTO').Value := 0;
    SPEdicao.ParamByName('ALJV_MCPVM').Value := 0;

    SPEdicao.ParamByName('AVPRC_PAD').Value := CEVPRC_PAD.Value;
    SPEdicao.ParamByName('AVPRC_PRZ').Value := CEVPRC_PRZ.Value;
    SPEdicao.ParamByName('AVPRC_PRO').Value := CEVPRC_PRO.Value;
    SPEdicao.ParamByName('AVPRC_MKP').Value := CEVPRC_MKP.Value;
    SPEdicao.ParamByName('AVPRC_DSC').Value := CEVPRC_DSC.Value;

    SPEdicao.ParamByName('AATJ_VPRC_PAD').Value := CEATJ_VPRC_PAD.Value;
    SPEdicao.ParamByName('AATJ_VPRC_PRZ').Value := CEATJ_VPRC_PRZ.Value;
    SPEdicao.ParamByName('AATJ_VPRC_PRO').Value := CEATJ_VPRC_PRO.Value;
    SPEdicao.ParamByName('AATJ_VPRC_MKP').Value := CEATJ_VPRC_MKP.Value;
    SPEdicao.ParamByName('AATJ_VPRC_DSC').Value := CEATJ_VPRC_DSC.Value;

    SPEdicao.ParamByName('ALJV_VPRC_PAD').Value := CELJV_VPRC_PAD.Value;
    SPEdicao.ParamByName('ALJV_VPRC_PRZ').Value := CELJV_VPRC_PRZ.Value;
    SPEdicao.ParamByName('ALJV_VPRC_PRO').Value := CELJV_VPRC_PRO.Value;
    SPEdicao.ParamByName('ALJV_VPRC_MKP').Value := CELJV_VPRC_MKP.Value;
    SPEdicao.ParamByName('ALJV_VPRC_DSC').Value := CELJV_VPRC_DSC.Value;

    SPEdicao.ParamByName('AVAR_VPRC_PAD').Value := CEVAR_VPRC_PAD.Value;
    SPEdicao.ParamByName('AVAR_VPRC_PRZ').Value := CEVAR_VPRC_PRZ.Value;
    SPEdicao.ParamByName('AVAR_VPRC_PRO').Value := CEVAR_VPRC_PRO.Value;
    SPEdicao.ParamByName('AVAR_VPRC_MKP').Value := CEVAR_VPRC_MKP.Value;
    SPEdicao.ParamByName('AVAR_VPRC_DSC').Value := CEVAR_VPRC_DSC.Value;

    SPEdicao.ParamByName('AREP_VPRC_PAD').Value := CEREP_VPRC_PAD.Value;
    SPEdicao.ParamByName('AREP_VPRC_PRZ').Value := CEREP_VPRC_PRZ.Value;
    SPEdicao.ParamByName('AREP_VPRC_PRO').Value := CEREP_VPRC_PRO.Value;
    SPEdicao.ParamByName('AREP_VPRC_MKP').Value := CEREP_VPRC_MKP.Value;
    SPEdicao.ParamByName('AREP_VPRC_DSC').Value := CEREP_VPRC_DSC.Value;

    SPEdicao.ParamByName('ACF_VPRC_ORI').Value := IECF_VPRC_ORI.Descriptions[IECF_VPRC_ORI.Values.IndexOf(IECF_VPRC_ORI.Text)];
    SPEdicao.ParamByName('ACF_VPRC_PAD').Value := CECF_VPRC_PAD.Value;
    SPEdicao.ParamByName('ACF_VPRC_MKP').Value := 0;

    SPEdicao.ParamByName('ACOL_ID').Text  := IECOL_ID.Text;
    SPEdicao.ParamByName('ASEG_ID').Value := IESEG_ID.Text;
    SPEdicao.ParamByName('AGRP_ID').Value := IEGRP_ID.Text;
    SPEdicao.ParamByName('ASGP_ID').Value := IESGP_ID.Text;
    SPEdicao.ParamByName('ACAT_ID').Value := IECAT_ID.Text;
    SPEdicao.ParamByName('ASCT_ID').Value := IESCT_ID.Text;

    SPEdicao.ParamByName('AMKP_MLV_ID').Value := IEMKP_MLV_ID.Text;
    SPEdicao.ParamByName('AMKP_MPG_ID').Value := IEMKP_MPG_ID.Text;
    SPEdicao.ParamByName('AMKP_MSP_ID').Value := IEMKP_MSP_ID.Text;
    SPEdicao.ParamByName('AMKP_SHP_ID').Value := IEMKP_SHP_ID.Text;
    SPEdicao.ParamByName('AMKP_AMZ_ID').Value := IEMKP_AMZ_ID.Text;

    SPEdicao.ParamByName('AMKP_BLG_ID').Value := IEMKP_BLG_ID.Text;
    SPEdicao.ParamByName('AMKP_TRY_ID').Value := IEMKP_TRY_ID.Text;

    SPEdicao.ParamByName('ADNS_NO').Value := PEDNS_NO.Text;
    SPEdicao.ParamByName('ATFI_NO').Value := PETFI_NO.Text;
    SPEdicao.ParamByName('AACB_NO').Value := IEACB_NO.Text;

    SPEdicao.ParamByName('AFIN_CAD_ID').Value := IEFIN_CAD_ID.Text;
    SPEdicao.ParamByName('AFIN_EST_ID').Value := IEFIN_EST_ID.Text;

    SPEdicao.ParamByName('AORIG' ).Value := IEORIG.Text;
    SPEdicao.ParamByName('ACPAIS').Value := IECPAIS.Text;

    SPEdicao.ParamByName('AINFADCAD').Value := EMINFADCAD.Text;
    SPEdicao.ParamByName('AINFADTEC').Value := EMINFADTEC.Text;


  finally
    oRTransact(TEdicao,ltRead_Only_Release_Commit);
  end;
end;

procedure TFrmCAD_PRO_EDI._SHE_CMP(AFlag: Integer = 0);
begin
  with CAD_PRO_CMP do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   PK.ID  ,PK.IDEV,PK.CDEV,');
    SelectSQL.Add('         PK.IDPK,PK.DESCRICAO,PK.REFERENCIA,PK.QTDE,');
    SelectSQL.Add('         PK.FLAG');

    SelectSQL.Add('FROM     SHE_CMP AS PK');
    SelectSQL.Add('WHERE    PK.IDEV = ''' + REC_SHE_DEF.AIDEV + '''');
    SelectSQL.Add('AND      PK.CDEV = 2');

    if AFlag >= 0 then
    SelectSQL.Add('AND      PK.FLAG = ''' + IntToStr(AFlag)    + '''');
    SelectSQL.Add('AND      PK.HOST = ''' + RECParametros.HOST + '''');
    SelectSQL.Add('ORDER BY PK.ID');

    Prepare;
    Open;
  end;

  if AFlag = -1 then
  begin
    CAD_PRO_CMP.DisableControls;
    CAD_PRO_CMP.First;
  end;
end;

procedure TFrmCAD_PRO_EDI._SHE_GRD(AFlag: Integer = 0);
begin
  with CAD_PRO_GRD do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   PK.ID  ,PK.IDEP,PK.CP_IDEP,PK.IDCF,');
    SelectSQL.Add('         PK.IDEV,PK.CDEV,');
    SelectSQL.Add('         PK.CDST,PK.REST,PK.DEST ,');
    SelectSQL.Add('         PK.IDCP,PK.IDAK,PK.IDSK ,');
    SelectSQL.Add('         PK.ARTIGO,PK.SKU,PK.CEAN,PK.CF_SKU,PK.CF_CEAN,PK.DTCP,');
    SelectSQL.Add('         PK.GRD_ID,PK.GRD_NO,');
    SelectSQL.Add('         PK.COR_ID,PK.COR_CD,PK.COR_RF,PK.COR_SG,PK.COR_NO,PK.COR_SISTEMA,PK.COR_ESCALA,');
    SelectSQL.Add('         PK.VAR_ID,PK.VAR_CD,PK.VAR_RF,PK.VAR_SG,PK.VAR_NO,');
    SelectSQL.Add('         PK.VPRC_PAD,PK.VPRC_PRZ,PK.VPRC_PRO,');
    SelectSQL.Add('         PK.SCT_ID,PK.SCT_NO,PK.MKP_ID,PK.MKP_NO,');
    SelectSQL.Add('         PK.IMG_SKU_ID,PK.IMG_SKU,');
    SelectSQL.Add('         PK.FLAG');

    SelectSQL.Add('FROM     SHE_GRD AS PK');
    SelectSQL.Add('WHERE    PK.IDEV = ''' + REC_SHE_DEF.AIDEV + '''');
    SelectSQL.Add('AND      PK.CDEV = 1');

    if AFlag >= 0 then
    SelectSQL.Add('AND      PK.FLAG = ''' + IntToStr(AFlag)    + '''');
    SelectSQL.Add('AND      PK.HOST = ''' + RECParametros.HOST + '''');
    SelectSQL.Add('ORDER BY PK.ID');

    Prepare;
    Open;
  end;

  if AFlag = -1 then
  begin
    CAD_PRO_CMP.DisableControls;
    CAD_PRO_CMP.First;
  end;
end;

procedure TFrmCAD_PRO_EDI.ACTPesquisaExecute(Sender: TObject);
begin
  inherited;

  try
    oLockWindowUpdate; { Trava }

    { TABELAS }
    with SQLConsulta do
    begin
      { Empresas }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.FANTASIA FROM TAB_PAR_SIS AS PK WHERE PK.CDST = 30 ORDER BY PK.ID');
      ExecQuery;
      
      while not eof do
      begin
        IEIDEP.Values.Add(Current.Vars[0].AsString);
        IEIDEP.Descriptions.Add(Current.Vars[1].AsString);
        Next;
      end;

      { Fabriantes }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.FANTASIA FROM CAD_FOR AS PK WHERE PK.CDST = 30 ORDER BY PK.FANTASIA');
      ExecQuery;

      while not eof do
      begin
        PEDECF.Items.Add(Current.Vars[0].AsString);
        Next;
      end;

      { Situações }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_STA_CAD AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        IECDST.Values.Add(Current.Vars[0].AsString);
        IECDST.Descriptions.Add   (Current.Vars[1].AsString);
        DBGGradeDEST.Items.Add(Current.Vars[1].AsString);

        next;
      end;

      { Composições }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.DESCRICAO FROM TAB_CMP AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        DBGCMPDESCRICAO.Items.Add(Current.Vars[0].AsString);
        next;
      end;

      { Estoque Vendável }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO_EVD AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        IEFIN_EST_ID.Values.Add(Current.Vars[0].AsString);
        IEFIN_EST_ID.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;

      { Finalidade de Estoque }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO_EFN AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        IEFIN_CAD_ID.Values.Add(Current.Vars[0].AsString);
        IEFIN_CAD_ID.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;

      { Coleções }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_COL AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        IECOL_ID.Values.Add(Current.Vars[0].AsString);
        IECOL_ID.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;

      { Segmentos }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_SEG AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        IESEG_ID.Values.Add(Current.Vars[0].AsString);
        IESEG_ID.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;

      { Grupos }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_GRP AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        IEGRP_ID.Values.Add(Current.Vars[0].AsString);
        IEGRP_ID.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;

      { Sub Grupos }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_SGP AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        IESGP_ID.Values.Add(Current.Vars[0].AsString);
        IESGP_ID.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;

      { Categorias }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_CAT AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        IECAT_ID.Values.Add(Current.Vars[0].AsString);
        IECAT_ID.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;

      { Sub Categorias }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_SCT AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        IESCT_ID.Values.Add(Current.Vars[0].AsString);
        IESCT_ID.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;

      { Origem }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO_ORI AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        IEORIG.Values.Add(Current.Vars[0].AsString);
        IEORIG.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;

      { País }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.CPAIS,PK.XPAIS FROM TAB_PAIS AS PK ORDER BY PK.XPAIS');
      ExecQuery;

      while not Eof do
      begin
        IECPAIS.Values.Add(Current.Vars[0].AsString);
        IECPAIS.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;
    end;

    IEIDEP.Text  := RECParametros.Id;
    IECPAIS.Text := '1058';
    IEORIG.Text  := '0';
    IECDST.Text  := '30';

    IEFIN_CAD_ID.Text := RECParametros.PRO_IDFIN_CAD;
    IEFIN_EST_ID.Text := RECParametros.PRO_IDFIN_EST;

//  EDArtigo.Tag     := VARTOINT(REC_SHE_DEF.AIDPK );
//  EDArtigo.Text    :=  DECadastro;
//  EDArtigo.Enabled := (DECadastro = EmptyStr);

    { Generators }
    with SQLConsulta do
    begin
      { Artigo }
      REC_SHE_DEF.AIDAK := REC_SHE_DEF.AIDPK;
      if REC_SHE_DEF.AIDAK = 0 then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT GEN_ID(IDG_IDAK,1) FROM RDB$DATABASE');
        ExecQuery;
        REC_SHE_DEF.AIDAK := Current.Vars[0].AsString;
      end;

      { Eventos }
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(IDG_SHE_GRD,1) FROM RDB$DATABASE');
      ExecQuery;
      REC_SHE_DEF.AIDEV := Current.Vars[0].AsString;
    end;

    { Pesquisa Artigo }
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   CP.* FROM VW_PSQ_CAD_PRO AS CP');
      SQL.Add('WHERE    CP.IDAK = ''' + REC_SHE_DEF.AIDAK + '''');
      SQL.Add('ORDER BY CP.DTEV DESC');
      ExecQuery;

      if not Eof then
      begin
        IEIDEP.Text  := Current.ByName('IDEP' ).AsString;
        IECPAIS.Text := Current.ByName('CPAIS').AsString;
        IEORIG.Text  := Current.ByName('ORIG' ).AsString;
        IECDST.Text  := Current.ByName('CDST' ).AsString;

        IEFIN_CAD_ID.Text := Current.ByName('FIN_CAD_ID').AsString;
        IEFIN_EST_ID.Text := Current.ByName('FIN_EST_ID').AsString;

        EDARTIGO.Text := Current.ByName('ARTIGO').AsString;
        EDCEAN.Text   := Current.ByName('CEAN'  ).AsString;

        REC_SHE_DEF.ACEAN := EDCEAN.Text;

        EDDESCRICAO.Text := Current.ByName('DECP').AsString;
        EDTITULO.Text    := Current.ByName('DTCP').AsString;
        EDCMP_PAD.Text   := Current.ByName('DCCP').AsString;

        PEDECF.Tag    := Current.ByName('IDCF').AsInteger;
        PEDECF.Text   := Current.ByName('DECF').AsString;

        EDCDCF.Text   := Current.ByName('CF_SKU' ).AsString;
        EDCEANCF.Text := Current.ByName('CF_CEAN').AsString;

        { Controle de Vendas }
        { Loja Física }
        IEUCOM.Text   := Current.ByName('UCOM' ).AsString;
        CEUQVOL.Value := Current.ByName('UQVOL').AsCurrency;
        EDUESP.Text   := Current.ByName('UESP' ).AsString;
        EDUCON.Text   := Current.ByName('UCON' ).AsString;
        CEUQTDE_VEN_MIN.Value := Current.ByName('UQTDE_VEN_MIN').AsCurrency;

        { Loja Virtual }
        IELJV_UCOM.Text   := Current.ByName('LJV_UCOM' ).AsString;
        CELJV_UQVOL.Value := Current.ByName('LJV_UQVOL').AsCurrency;
        EDLJV_UESP.Text   := Current.ByName('LJV_UESP' ).AsString;
        CELJV_UQTDE_VEN_MIN.Value := 1;

        { Controle de Estoque }
        { Loja Física }
        IEUCDBE.Text  := Current.ByName('UCDBE').AsString;
        CEUQTDE.Value := Current.ByName('UQTDE').AsFloat;
        CEUQTDE_VEN_MUL.Value := Current.ByName('UQTDE_VEN_MUL').AsCurrency;
        CEUQTDE_EST_MIN.Value := Current.ByName('UQTDE_EST_MIN').AsCurrency;

        { Loja Virtual }
        IELJV_UCDBE.Text  := 'Quantidade';
        CELJV_UQTDE.Value := 1;
        CELJV_UQTDE_VEN_MUL.Value := 1;
//      CEUQTDE_EST_MIN_LV.Value := Current.ByName('UQTDE_EST_MIN_SITE').AsCurrency;

        { Medidas Principais }
        CEMPESO.Value := Current.ByName('MPESO').AsCurrency;
        CEUPSCN.Value := Current.ByName('UPSCN').AsCurrency;

        CEMMETRO.Value     := Current.ByName('MMETRO').AsCurrency;
        CEMGRAMA.Value  := Current.ByName('MGRAMA').AsCurrency;
        PEMGRAMA_NO.Text  := Current.ByName('MGRAMA_NO').AsString;
        CEMREND.Value := Current.ByName('MREND').AsCurrency;

        { Outras Medidas }
        CEMLGRU.Value := Current.ByName('MLGRU').AsCurrency;
        CEMLGRT.Value := Current.ByName('MLGRT').AsCurrency;

        CEMENCL.Value := Current.ByName('MENCL').AsCurrency;
        CEMENCC.Value := Current.ByName('MENCC').AsCurrency;
        PEMENC_NO.Text   := Current.ByName('MENC_NO').AsString;

        CEMELAL.Value := Current.ByName('MELAL').AsCurrency;
        CEMELAC.Value := Current.ByName('MELAC').AsCurrency;

        CEMESP.Value := Current.ByName('MESP').AsCurrency;
        IEMESP_NO.Text  := Current.ByName('MESP_NO').AsString;

        { Tabela de Preços }
        { Atacado }
        CEVPRC_PAD.Value := Current.ByName('VPRC_PAD').AsCurrency;
        CEVPRC_PRZ.Value := Current.ByName('VPRC_PRZ').AsCurrency;
        CEVPRC_PRO.Value := Current.ByName('VPRC_PRO').AsCurrency;

        { Atacarejo }
        CEATJ_VPRC_PAD.Value     := Current.ByName('ATJ_VPRC_PAD').AsCurrency;
        CEATJ_VPRC_PRZ.Value := Current.ByName('ATJ_VPRC_PRZ').AsCurrency;
        CEATJ_VPRC_PRO.Value := Current.ByName('ATJ_VPRC_PRO').AsCurrency;

        { Varejo }
        CEVAR_VPRC_PAD.Value     := Current.ByName('VAR_VPRC_PAD').AsCurrency;
        CEVAR_VPRC_PRZ.Value := Current.ByName('VAR_VPRC_PRZ').AsCurrency;
        CEVAR_VPRC_PRO.Value := Current.ByName('VAR_VPRC_PRO').AsCurrency;

        { Representante }
        CEREP_VPRC_PAD.Value     := Current.ByName('REP_VPRC_PAD').AsCurrency;
        CEREP_VPRC_PRZ.Value := Current.ByName('REP_VPRC_PRZ').AsCurrency;
        CEREP_VPRC_PRO.Value := Current.ByName('REP_VPRC_PRO').AsCurrency;

        { Loja Virtual }
        CELJV_VPRC_PAD.Value := Current.ByName('LJV_VPRC_PAD').AsCurrency;
        CELJV_VPRC_MKP.Value    := Current.ByName('LJV_VPRC_MKP').AsCurrency;

        { Compras }

        IECF_VPRC_ORI.Text     := Current.ByName('CF_VPRC_ORI').AsString;
        CECF_VPRC_PAD.Value     := Current.ByName('CF_VPRC_PAD').AsCurrency;

        IECOL_ID.Text  := IntToStr(Current.ByName('COL_ID').AsInteger);
        IESEG_ID.Text  := IntToStr(Current.ByName('SEG_ID').AsInteger);
        IEGRP_ID.Text  := IntToStr(Current.ByName('GRP_ID').AsInteger);
        IESGP_ID.Text  := IntToStr(Current.ByName('SGP_ID').AsInteger);
        IECAT_ID.Text  := IntToStr(Current.ByName('CAT_ID').AsInteger);
        IESCT_ID.Text  := IntToStr(Current.ByName('SCT_ID').AsInteger);

        IEMKP_MLV_ID.Text := Current.ByName('MKP_MLV_ID').AsString;
        IEMKP_MPG_ID.Text := Current.ByName('MKP_MPG_ID').AsString;
        IEMKP_MSP_ID.Text := Current.ByName('MKP_MSP_ID').AsString;
        IEMKP_SHP_ID.Text := Current.ByName('MKP_SHP_ID').AsString;
        IEMKP_AMZ_ID.Text := Current.ByName('MKP_AMZ_ID').AsString;

        IEMKP_BLG_ID.Text := Current.ByName('MKP_BLG_ID').AsString;
        IEMKP_TRY_ID.Text := Current.ByName('MKP_TRY_ID').AsString;




        PENCM.Text   := Current.ByName('NCM' ).AsString;
        CEPIPI.Value := Current.ByName('PIPI').AsCurrency;

        PEDNS_NO.Text := Current.ByName('DNS_NO').AsString;
        PETFI_NO.Text := Current.ByName('TFI_NO').AsString;
        IEACB_NO.Text := Current.ByName('ACB_NO').AsString;

        EMINFADCAD.Text := Current.ByName('INFADCAD').AsString;
        EMINFADTEC.Text := Current.ByName('INFADTEC').AsString;
      end;  
    end;

    try
      oOTransact(TEdicao);

      { Pesquisa Grade }
      SPEdicao.Close;
      SPEdicao.StoredProcName := 'SP_SHE_GRD_EDI';
      SPEdicao.Prepare;

      { Parâmetros }
      SPEdicao.ParamByName('PIDEV').Value := REC_SHE_DEF.AIDEV;
      SPEdicao.ParamByName('PCDEV').Value := 1;
      SPEdicao.ParamByName('PFLAG').Value := 0;

      SPEdicao.ParamByName('PIDEP').Value := RECParametros.ID;
      SPEdicao.ParamByName('PIDCA').Value := RECUsuarios.ID;

      SPEdicao.ParamByName('PIP'  ).Value := RECParametros.IP;
      SPEdicao.ParamByName('PHOST').Value := RECParametros.HOST;

      { Edição }
      SPEdicao.ParamByName('AIDAK').Value := REC_SHE_DEF.AIDAK;
      SPEdicao.ExecProc;

      { Pesquisa Composição }
      { Parâmetros }
      SPEdicao.ParamByName('PIDEV').Value := REC_SHE_DEF.AIDEV;
      SPEdicao.ParamByName('PCDEV').Value := 1;
      SPEdicao.ParamByName('PFLAG').Value := 0;

      SPEdicao.ParamByName('PIDEP').Value := RECParametros.ID;
      SPEdicao.ParamByName('PIDCA').Value := RECUsuarios.ID;

      SPEdicao.ParamByName('PIP'  ).Value := RECParametros.IP;
      SPEdicao.ParamByName('PHOST').Value := RECParametros.HOST;

      { Edição }
      SPEdicao.ParamByName('AIDAK').Value := REC_SHE_DEF.AIDAK;
      SPEdicao.ExecProc;

      oCTransact(TEdicao);
    except
      oCTransact(TEdicao,ltRollback);
    end;

    oOTransact(TEdicao);
    _SHE_GRD; { Grade }
    _SHE_CMP; { Composição }

    REC_SHE_DEF.AIDCP := INTTOSTR(CAD_PRO_GRDIDCP.AsInteger);
    REC_SHE_DEF.ACEAN := CAD_PRO_GRDCEAN.AsString;
  finally
    oUnLockWindowUpdate; { Destrava }
  end;
end;

end.
