unit pCAD_PRO_EDI;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBEvents, math, StrUtils,
  IBDatabase, DB, IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls,
  StdCtrls, dxExEdtr, dxEdLib, Buttons, dxPageControl, dxEditor, dxCntner,
  ExtDlgs, dxTL, dxDBCtrl, dxDBGrid, jpeg, dxDBTLCl, dxGrClms, ACBrBarCode,
  rxSpeedbar, IBSQL, ActnList, cxGraphics, cxControls, dxStatusBar,
  rxAnimate, rxGIFCtrl;

type
  TFrmCAD_PRO_EDI = class(TFrmPadr3)
    OPDIMG: TOpenPictureDialog;
    DTSCAD_PRO_CMP: TDataSource;
    CAD_PRO_CMP: TIBDataSet;
    TSEdicao: TIBTransaction;
    Edicao: TIBDataSet;
    DSTEdicao: TDataSource;
    PNLPrincipal: TPanel;
    PCPrincipal: TdxPageControl;
    TSPrecos: TdxTabSheet;
    TSMedidas: TdxTabSheet;
    TSGrade: TdxTabSheet;
    TSComposicoes: TdxTabSheet;
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
    SSEdicaoComposicao: TSpeedbarSection;
    SICMP_INS: TSpeedItem;
    SICMP_ALT: TSpeedItem;
    SICMP_DEL: TSpeedItem;
    SICMP_SAV: TSpeedItem;
    SICMP_CAN: TSpeedItem;
    DBGCMP: TdxDBGrid;
    SQLFKConsulta: TIBSQL;
    SQLSConsulta: TIBSQL;
    PNLMEDBOT: TPanel;
    EdicaoID: TIntegerField;
    EdicaoGRD_IPRO: TIntegerField;
    EdicaoGRD_CART: TIBStringField;
    EdicaoGRD_CPRO: TIBStringField;
    EdicaoGRD_CBAR: TIBStringField;
    EdicaoGRD_CFOR: TIBStringField;
    EdicaoGRD_FBAR: TIBStringField;
    EdicaoGRD_DPRO: TIBStringField;
    EdicaoGRD_TITU: TIBStringField;
    EdicaoGRD_COMP: TIBStringField;
    EdicaoGRD_CGRD: TIBStringField;
    EdicaoGRD_RGRD: TIBStringField;
    EdicaoGRD_DGRD: TIBStringField;
    EdicaoGRD_CCOR: TIntegerField;
    EdicaoGRD_PCOR: TIBStringField;
    EdicaoGRD_DCOR: TIBStringField;
    EdicaoGRD_DUNI: TIBStringField;
    EdicaoGRD_UCON: TIBStringField;
    EdicaoGRD_PDSC: TIBBCDField;
    EdicaoGRD_PREC: TFloatField;
    EdicaoGRD_PPRO: TFloatField;
    EdicaoGRD_VPRC: TFloatField;
    EdicaoGRD_RPRC: TFloatField;
    EdicaoGRD_SPRC: TFloatField;
    EdicaoGRD_PSBR: TIBBCDField;
    EdicaoGRD_PSLQ: TIBBCDField;
    EdicaoGRD_IMKP: TSmallintField;
    EdicaoGRD_DMKP: TIBStringField;
    EdicaoGRD_IMK2: TSmallintField;
    EdicaoGRD_DMK2: TIBStringField;
    EdicaoGRD_IMK3: TSmallintField;
    EdicaoGRD_DMK3: TIBStringField;
    EdicaoGRD_ISCT: TSmallintField;
    EdicaoGRD_DSCT: TIBStringField;
    EdicaoGRD_CDST: TSmallintField;
    EdicaoGRD_REST: TIBStringField;
    EdicaoGRD_DEST: TIBStringField;
    EdicaoGRD_FOTO: TBlobField;
    EdicaoGRD_PPRZ: TFloatField;
    EdicaoFLAG: TIntegerField;
    SQLSEdicao: TIBSQL;
    GBMEDPRI: TGroupBox;
    TSINFADCPL: TdxTabSheet;
    PCINFADTEC: TdxPageControl;
    TSINFADTEC: TdxTabSheet;
    EMINFADTEC: TdxMemo;
    PCINFADCAD: TdxPageControl;
    TSINFADCAD: TdxTabSheet;
    EMINFADCAD: TdxMemo;
    TSIMG_ART: TdxTabSheet;
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
    LAUQTDE: TLabel;
    LAUQTDE_VEN_MUL: TLabel;
    LAUQTDE_EST_MIN: TLabel;
    IEUCDBE: TdxImageEdit;
    CEUQTDE: TdxCurrencyEdit;
    CEUQTDE_VEN_MUL: TdxCurrencyEdit;
    CEUQTDE_EST_MIN: TdxCurrencyEdit;
    GBMEDOUT: TGroupBox;
    LALARG_T: TLabel;
    LALARG_U: TLabel;
    LAELAS_T: TLabel;
    LAELAS_U: TLabel;
    LAENCO_U: TLabel;
    LAENCO_T: TLabel;
    LAEspessura: TLabel;
    IEEspessura: TdxImageEdit;
    PEDENCO: TdxPickEdit;
    Label71: TLabel;
    LAGramatura: TLabel;
    LAMetros: TLabel;
    LARendimento: TLabel;
    PEDGramatura: TdxPickEdit;
    LAPESO: TLabel;
    LAPSCN: TLabel;
    PCTAB_PRC: TdxPageControl;
    TSPRC_PAD: TdxTabSheet;
    BPRC_PAD: TBevel;
    LAVPRC_PAD: TLabel;
    LAVPRC_PAD_PRO: TLabel;
    LAPPRC_PAD_DSC: TLabel;
    LAPPRC_PAD_AJU: TLabel;
    LAVPRC_PAD_PRZ: TLabel;
    TSPRC_ATV: TdxTabSheet;
    BPRC_ATV: TBevel;
    LAPPRC_ATV_DSC: TLabel;
    LAPPRC_ATV_AJU: TLabel;
    TSPRC_VAR: TdxTabSheet;
    BPRC_VAR: TBevel;
    TSPRC_REP: TdxTabSheet;
    BPRC_REP: TBevel;
    TSPRC_LV: TdxTabSheet;
    BPRC_LV: TBevel;
    LAVPRC_LV: TLabel;
    LAPMKP: TLabel;
    TSPRC_COM: TdxTabSheet;
    LAVPRC_COM: TLabel;
    LAVPRC_COM_IMP: TLabel;
    BPRC_COM: TBevel;
    LAVPRC_ATV: TLabel;
    LAVPRC_ATV_PRZ: TLabel;
    LAVPRC_ATV_PRO: TLabel;
    LAVPRC_VAR: TLabel;
    LAVPRC_VAR_PRZ: TLabel;
    LAVPRC_VAR_PRO: TLabel;
    LAVPRC_REP: TLabel;
    LAVPRC_REP_PRZ: TLabel;
    LAVPRC_REP_PRO: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    IEUCOM_LV: TdxImageEdit;
    EDUESP_LV: TdxMaskEdit;
    CEUQTDE_VEN_MIN_LV: TdxCurrencyEdit;
    CEUQTDE_EST_MIN_LV: TdxCurrencyEdit;
    Label74: TLabel;
    Label75: TLabel;
    IEUCDBE_LV: TdxImageEdit;
    CEUQTDE_LV: TdxCurrencyEdit;
    CEUQTDE_VEN_MUL_LV: TdxCurrencyEdit;
    CEVPRC_PAD: TdxCurrencyEdit;
    CEVPRC_PAD_PRZ: TdxCurrencyEdit;
    CEVPRC_PAD_PRO: TdxCurrencyEdit;
    CEPPRC_PAD_DSC: TdxCurrencyEdit;
    CEPPRC_PAD_AJU: TdxCurrencyEdit;
    CEVPRC_ATV: TdxCurrencyEdit;
    CEVPRC_ATV_PRZ: TdxCurrencyEdit;
    CEVPRC_ATV_PRO: TdxCurrencyEdit;
    CEPPRC_ATV_DSC: TdxCurrencyEdit;
    CEPPRC_ATV_AJU: TdxCurrencyEdit;
    CEVPRC_VAR: TdxCurrencyEdit;
    CEVPRC_VAR_PRZ: TdxCurrencyEdit;
    CEVPRC_VAR_PRO: TdxCurrencyEdit;
    CEVPRC_REP: TdxCurrencyEdit;
    CEVPRC_REP_PRZ: TdxCurrencyEdit;
    CEVPRC_REP_PRO: TdxCurrencyEdit;
    CEPMKP: TdxCurrencyEdit;
    CEVPRC_LV: TdxCurrencyEdit;
    CEVPRC_COM: TdxCurrencyEdit;
    CEVPRC_COM_IMP: TdxCurrencyEdit;
    CEPESO: TdxCurrencyEdit;
    CEPSCN: TdxCurrencyEdit;
    CEGramatura: TdxCurrencyEdit;
    CEMetros: TdxCurrencyEdit;
    CEREND: TdxCurrencyEdit;
    CELARG_U: TdxCurrencyEdit;
    CELARG_T: TdxCurrencyEdit;
    CEENCO_L: TdxCurrencyEdit;
    CEENCO_C: TdxCurrencyEdit;
    CEELAS_L: TdxCurrencyEdit;
    CEELAS_C: TdxCurrencyEdit;
    CEEspessura: TdxCurrencyEdit;
    CEUQVOL_LV: TdxCurrencyEdit;
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
    IMG_SKU: TImage;
    SBIMG_SKU: TSpeedButton;
    EdicaoDGCP: TIBStringField;
    DBGIMG_SKU: TdxDBGrid;
    DBGIMG_SKUGRD_CPRO: TdxDBGridMaskColumn;
    DBGIMG_SKUDGCP: TdxDBGridMaskColumn;
    EdicaoIDIMG: TIntegerField;
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
    IEIDGRP: TdxImageEdit;
    GroupBox6: TGroupBox;
    EDCEAN: TACBrBarCode;
    Label12: TLabel;
    Label32: TLabel;
    EDCEANCF: TdxEdit;
    EDArtigo: TdxEdit;
    IEIDCAT: TdxImageEdit;
    GroupBox1: TGroupBox;
    Label18: TLabel;
    Label41: TLabel;
    Label68: TLabel;
    IECDST: TdxImageEdit;
    IEIDFIN: TdxImageEdit;
    IEIDTPV: TdxImageEdit;
    IEIDSGP: TdxImageEdit;
    IEIDSCT: TdxImageEdit;
    EDTitulo: TdxEdit;
    IEIDSEG: TdxImageEdit;
    PEDECOL: TdxPickEdit;
    CAD_PRO_CMPID: TLargeintField;
    CAD_PRO_CMPIDEP: TSmallintField;
    CAD_PRO_CMPIDAK: TLargeintField;
    CAD_PRO_CMPIDCA: TSmallintField;
    CAD_PRO_CMPCMP_IDPK: TSmallintField;
    CAD_PRO_CMPCMP_REPK: TIBStringField;
    CAD_PRO_CMPCMP_DEPK: TIBStringField;
    CAD_PRO_CMPCMP_QTDE: TIBBCDField;
    CAD_PRO_CMPIDEV: TLargeintField;
    CAD_PRO_CMPCDEV: TSmallintField;
    CAD_PRO_CMPIP: TIBStringField;
    CAD_PRO_CMPHOST: TIBStringField;
    CAD_PRO_CMPFLAG: TSmallintField;
    DBGCMPCMP_REPK: TdxDBGridPickColumn;
    DBGCMPCMP_DEPK: TdxDBGridPickColumn;
    DBGCMPCMP_QTDE: TdxDBGridMaskColumn;
    CAD_PRO_CMPCMP_IDFK: TLargeintField;
    PECEST: TdxPickEdit;
    LACEST: TLabel;
    LAEXTIPI: TLabel;
    PEEXTIPI: TdxPickEdit;
    EDUCON: TdxEdit;
    EDLJ_UCON: TdxMaskEdit;
    Bevel1: TBevel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    GBOutro: TGroupBox;
    IEIDEP: TdxImageEdit;
    Bevel2: TBevel;
    Label3: TLabel;
    cbdens: TdxPickEdit;
    cbstal: TdxImageEdit;
    Label5: TLabel;
    Label29: TLabel;
    cbtitf: TdxPickEdit;
    GBMKP: TGroupBox;
    Bevel3: TBevel;
    Bevel4: TBevel;
    LAMKP_IDML: TLabel;
    LAMKP_IDSP: TLabel;
    LAMKP_IDAM: TLabel;
    IEMKP_IDAM: TdxImageEdit;
    IEMKP_IDSP: TdxImageEdit;
    IEMKP_IDML: TdxImageEdit;
    Label10: TLabel;
    dxImageEdit1: TdxImageEdit;
    dxImageEdit2: TdxImageEdit;
    Label11: TLabel;
    dxImageEdit3: TdxImageEdit;
    Label13: TLabel;
    dxImageEdit4: TdxImageEdit;
    Label14: TLabel;
    ACTImagemArtigo: TAction;
    ACTImagemArtigoDelete: TAction;
    GBEdicao: TGroupBox;
    SBEdicao: TSpeedBar;
    SSEdicao: TSpeedbarSection;
    SIMEAppend: TSpeedItem;
    SIMEEdit: TSpeedItem;
    SIMEDelete: TSpeedItem;
    SIMEPost: TSpeedItem;
    SIMECancel: TSpeedItem;
    GBConsulta: TGroupBox;
    DBGEdicao: TdxDBGrid;
    DBGEdicaoGRD_CPRO: TdxDBGridMaskColumn;
    DBGEdicaoGRD_CDST: TdxDBGridMaskColumn;
    DBGEdicaoGRD_REST: TdxDBGridMaskColumn;
    DBGEdicaoGRD_DEST: TdxDBGridPickColumn;
    DBGEdicaoGRD_DCOR: TdxDBGridPickColumn;
    DBGEdicaoGRD_PCOR: TdxDBGridPickColumn;
    DBGEdicaoGRD_DGRD: TdxDBGridMaskColumn;
    DBGEdicaoGRD_CGRD: TdxDBGridMaskColumn;
    DBGEdicaoGRD_RGRD: TdxDBGridMaskColumn;
    DBGEdicaoGRD_CFOR: TdxDBGridMaskColumn;
    DBGEdicaoGRD_FBAR: TdxDBGridMaskColumn;
    DBGEdicaoGRD_ISCT: TdxDBGridMaskColumn;
    DBGEdicaoGRD_DSCT: TdxDBGridPickColumn;
    DBGEdicaoGRD_PREC: TdxDBGridMaskColumn;
    DBGEdicaoGRD_PPRZ: TdxDBGridMaskColumn;
    DBGEdicaoGRD_PPRO: TdxDBGridMaskColumn;
    DBGEdicaoGRD_TITU: TdxDBGridMaskColumn;
    SQLPKConsulta: TIBSQL;
    Label4: TLabel;
    IECF_ID: TdxImageEdit;
    ACTPesquisaNCM: TAction;
    ACTPesquisaInstLavagem: TAction;
    EdicaoC_ID: TLargeintField;
    DBGEdicaoC_ID: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure SICMP_DELClick(Sender: TObject);
    procedure CAD_PRO_CMPAfterPost(DataSet: TDataSet);
    procedure CAD_PRO_CMPBeforeCancel(DataSet: TDataSet);
    procedure CAD_PRO_CMPNewRecord(DataSet: TDataSet);
    procedure EdicaoBeforeCancel(DataSet: TDataSet);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure CAD_PRO_CMPAfterDelete(DataSet: TDataSet);
    procedure DBGEdicaoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EdicaoAfterDelete(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure EdicaoBeforeInsert(DataSet: TDataSet);
    procedure CAD_PRO_CMPBeforeInsert(DataSet: TDataSet);
    procedure DSTEdicaoDataChange(Sender: TObject; Field: TField);
    procedure DBGEdicaoGRD_DSCTValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure CEUQTDEValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEVPRC_PADValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEPMKPValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEVPRC_PAD_PRZValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure CEVPRC_PAD_PROValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure TSMedidasShow(Sender: TObject);
    procedure TSPRC_PADShow(Sender: TObject);
    procedure TSPrecosShow(Sender: TObject);
    procedure TSPRC_ATVShow(Sender: TObject);
    procedure TSPRC_VARShow(Sender: TObject);
    procedure TSPRC_REPShow(Sender: TObject);
    procedure TSPRC_LVShow(Sender: TObject);
    procedure TSPRC_COMShow(Sender: TObject);
    procedure CEPESOValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure CEMetrosValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure CEGramaturaValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure IEUCOMValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EDTituloValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DBGEdicaoGRD_TITUValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DSTEdicaoStateChange(Sender: TObject);
    procedure DTSCAD_PRO_CMPStateChange(Sender: TObject);
    procedure CERENDValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CAD_PRO_CMPAfterInsert(DataSet: TDataSet);
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
    procedure ACTConsultaExecute(Sender: TObject);
    procedure ACTEdicaoExecute(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure ACTMPPostExecute(Sender: TObject);
    procedure ACTImagemArtigoExecute(Sender: TObject);
    procedure ACTImagemArtigoDeleteExecute(Sender: TObject);
    procedure ACTMEDeleteExecute(Sender: TObject);
    procedure ACTMEAppendExecute(Sender: TObject);
    procedure ACTMEEditExecute(Sender: TObject);
    procedure ACTMEPostExecute(Sender: TObject);
    procedure ACTMECancelExecute(Sender: TObject);
    procedure EdicaoBeforeEdit(DataSet: TDataSet);
    procedure EdicaoAfterInsert(DataSet: TDataSet);
    procedure CAD_PRO_CMPBeforeEdit(DataSet: TDataSet);
    procedure SICMP_INSClick(Sender: TObject);
    procedure SICMP_ALTClick(Sender: TObject);
    procedure SICMP_SAVClick(Sender: TObject);
    procedure SICMP_CANClick(Sender: TObject);
    procedure DBGEdicaoGRD_CFORValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoGRD_DCORValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoGRD_DESTValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure ACTCheckConstraintsExecute(Sender: TObject);
    procedure EDDescricaoValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure ACTCheckErrorsExecute(Sender: TObject);
    procedure IECDSTValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure IEIDSCTValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure PENCMValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure ACTPesquisaNCMExecute(Sender: TObject);
    procedure ACTPesquisaInstLavagemExecute(Sender: TObject);
    procedure EdicaoBeforeOpen(DataSet: TDataSet);
    procedure EdicaoAfterOpen(DataSet: TDataSet);
    procedure EdicaoAfterEdit(DataSet: TDataSet);
    procedure EdicaoBeforeDelete(DataSet: TDataSet);
    procedure EdicaoAfterCancel(DataSet: TDataSet);
    procedure EdicaoBeforeClose(DataSet: TDataSet);
    procedure EdicaoAfterClose(DataSet: TDataSet);
    procedure EdicaoBeforeScroll(DataSet: TDataSet);
    procedure EdicaoAfterScroll(DataSet: TDataSet);
    procedure EdicaoCalcFields(DataSet: TDataSet);
    procedure DBGEdicaoBackgroundDrawEvent(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect);
    procedure DBGEdicaoDblClick(Sender: TObject);
    procedure DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdicaoUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure EdicaoEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EdicaoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EdicaoDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
    ARendimento  : Double;
    AIDG_IDEV_CMP: Variant;

    procedure _CAD_PRO_CMP(AFlag: Integer = 0);
    procedure _POST_IMG_SKU(AIMG_NOME: String);
    procedure _PUMKP;
    procedure _UCON;
  public
    { Public declarations }
  end;

var
  FrmCAD_PRO_EDI: TFrmCAD_PRO_EDI;

implementation

uses uPrincipal, bPrincipal,
     pProduto_Instrucao_Lavagem;

{$R *.dfm}

procedure TFrmCAD_PRO_EDI.FormCreate(Sender: TObject);
begin
  { FORM }
  REC_SHE_DEF.FPosition := Self.Position; { Posição Inicial }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Desktop    }

  { EVENTOS }
  REC_SHE_DEF.FB_Event := 'CAD_PRO_ADM'; { Nome }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Produtos';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';

  inherited;
end;

procedure TFrmCAD_PRO_EDI.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  { VER ANTES DE SAIR }
  { PRODUTOS }
  if (Edicao.State in [dsInsert,dsEdit] ) then
  if (EdicaoGRD_DGRD.AsString = EmptyStr) and (EdicaoGRD_DCOR.AsString = EmptyStr) then Edicao.Cancel else
  Edicao.Post;

  { COMPOSIÇÕES }
  if (CAD_PRO_CMP.State in [dsInsert,dsEdit] ) then
  if (CAD_PRO_CMPCMP_DEPK.AsString = EmptyStr) or (CAD_PRO_CMPCMP_QTDE.AsFloat = 0) then CAD_PRO_CMP.Cancel else
  CAD_PRO_CMP.Post;

  inherited;
end;

procedure TFrmCAD_PRO_EDI.ACTPesquisaExecute(Sender: TObject);
begin
  inherited;

  try
    { SINCRONIA }
    PNLSynchronize.Caption := 'Incluindo registro(s) .... ' ;
    PNLSynchronize.Refresh;

    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   CP.* FROM VW_PSQ_CAD_PRO AS CP');
      SQL.Add('WHERE    CP.AK_ID = ''' + REC_SHE_DEF.IDPK + '''');
      SQL.Add('ORDER BY CP.DTEV DESC');
      ExecQuery;

      if not Eof then
      begin
        IEIDEP.Text  := Current.ByName('EP_ID').AsString;
        IECF_ID.Text := Current.ByName('CF_ID').AsString;

        IEIDFIN.Text := Current.ByName('FIN_CAD_ID').AsString;
        IEIDTPV.Text := Current.ByName('FIN_EST_ID').AsString;

        EDARTIGO.Text := Current.ByName('ARTIGO').AsString;
        EDCEAN.Text   := Current.ByName('CEAN'  ).AsString;

        EDDESCRICAO.Text := Current.ByName('CP_NO').AsString;
        EDTITULO.Text    := Current.ByName('CP_NO_TLO').AsString;
        EDCMP_PAD.Text   := Current.ByName('CP_NO_CMP').AsString;

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
        IEUCOM_LV.Text   := Current.ByName('LJV_UCOM' ).AsString;
        CEUQVOL_LV.Value := Current.ByName('LJV_UQVOL').AsCurrency;
        EDUESP_LV.Text   := Current.ByName('LJV_UESP' ).AsString;
        CEUQTDE_VEN_MIN_LV.Value := 1;

        { Controle de Estoque }
        { Loja Física }
        IEUCDBE.Text  := Current.ByName('UCDBE').AsString;
        CEUQTDE.Value := Current.ByName('UQTDE').AsFloat;
        CEUQTDE_VEN_MUL.Value := Current.ByName('UQTDE_VEN_MUL').AsCurrency;
        CEUQTDE_EST_MIN.Value := Current.ByName('UQTDE_EST_MIN').AsCurrency;

        { Loja Virtual }
        IEUCDBE_LV.Text  := 'Quantidade';
        CEUQTDE_LV.Value := 1;
        CEUQTDE_VEN_MUL_LV.Value := 1;
      //CEUQTDE_EST_MIN_LV.Value := Current.ByName('UQTDE_EST_MIN_SITE').AsCurrency;

        { Medidas Principais }
        CEPESO.Value := Current.ByName('MPESO').AsCurrency;
        CEPSCN.Value := Current.ByName('UPSCN').AsCurrency;

        CEMetros.Value     := Current.ByName('MMETRO').AsCurrency;
        CEGramatura.Value  := Current.ByName('MGRAMA').AsCurrency;
        PEDGramatura.Text  := Current.ByName('MGRAMA_NO').AsString;
        CERend.Value := Current.ByName('MREND').AsCurrency;

        { Outras Medidas }
        CELARG_U.Value := Current.ByName('MLGRU').AsCurrency;
        CELARG_T.Value := Current.ByName('MLGRT').AsCurrency;

        CEENCO_L.Value := Current.ByName('MENCL').AsCurrency;
        CEENCO_C.Value := Current.ByName('MENCC').AsCurrency;
        PEDENCO.Text   := Current.ByName('MENC_NO').AsString;

        CEELAS_L.Value := Current.ByName('MELAL').AsCurrency;
        CEELAS_C.Value := Current.ByName('MELAC').AsCurrency;

        CEEspessura.Value := Current.ByName('MESP').AsCurrency;
        IEEspessura.Text  := Current.ByName('MESP_NO').AsString;

        { Tabela de Preços }
        { Atacado }
        CEVPRC_PAD.Value     := Current.ByName('VPRC_PAD').AsCurrency;
        CEVPRC_PAD_PRZ.Value := Current.ByName('VPRC_PRZ').AsCurrency;
        CEVPRC_PAD_PRO.Value := Current.ByName('VPRC_PRO').AsCurrency;

        { Atacarejo }
        CEVPRC_ATV.Value     := Current.ByName('ATJ_VPRC_PAD').AsCurrency;
        CEVPRC_ATV_PRZ.Value := Current.ByName('ATJ_VPRC_PRZ').AsCurrency;
        CEVPRC_ATV_PRO.Value := Current.ByName('ATJ_VPRC_PRO').AsCurrency;

        { Varejo }
        CEVPRC_VAR.Value     := Current.ByName('VAR_VPRC_PAD').AsCurrency;
        CEVPRC_VAR_PRZ.Value := Current.ByName('VAR_VPRC_PRZ').AsCurrency;
        CEVPRC_VAR_PRO.Value := Current.ByName('VAR_VPRC_PRO').AsCurrency;

        { Representante }
        CEVPRC_REP.Value     := Current.ByName('REP_VPRC_PAD').AsCurrency;
        CEVPRC_REP_PRZ.Value := Current.ByName('REP_VPRC_PRZ').AsCurrency;
        CEVPRC_REP_PRO.Value := Current.ByName('REP_VPRC_PRO').AsCurrency;

        { Loja Virtual }
        CEVPRC_LV.Value := Current.ByName('LJV_VPRC_PAD').AsCurrency;
        CEPMKP.Value    := Current.ByName('LJV_VPRC_MKP').AsCurrency;

        { Compras }
        CEVPRC_COM.Value     := Current.ByName('CF_VPRC_PAD').AsCurrency;
        CEVPRC_COM_IMP.Value := Current.ByName('CF_VPRC_PAD').AsCurrency;

        PEDECOL.Text  := IntToStr(Current.ByName('COL_ID').AsInteger);
        IEIDSEG.Text  := IntToStr(Current.ByName('SEG_ID').AsInteger);
        IEIDGRP.Text  := IntToStr(Current.ByName('GRP_ID').AsInteger);
        IEIDSGP.Text  := IntToStr(Current.ByName('SGP_ID').AsInteger);
        IEIDCAT.Text  := IntToStr(Current.ByName('CAT_ID').AsInteger);
        IEIDSCT.Text  := IntToStr(Current.ByName('SCT_ID').AsInteger);

        IEMKP_IDML.Text := IntToStr(Current.ByName('MKP_MLV_ID').AsInteger);
        IEMKP_IDSP.Text := IntToStr(Current.ByName('MKP_MPG_ID').AsInteger);

        cbdens.Text := Current.ByName('DNS_NO').AsString;
        cbtitf.Text := Current.ByName('TFI_NO').AsString;
        cbstal.Text := Current.ByName('ACB_NO').AsString;

        PENCM.Text   := Current.ByName('FIS_NCM' ).AsString;
        CEPIPI.Value := Current.ByName('FIS_PIPI').AsCurrency;

        IECPAIS.Text := Current.ByName('FIS_CPAIS').AsString;
        IEORIG.Text  := Current.ByName('FIS_ORIG' ).AsString;

        IECDST.Text  := Current.ByName('CDST').AsString;

        EMINFADCAD.Text := Current.ByName('INFADCAD').AsString;
        EMINFADTEC.Text := Current.ByName('INFADTEC').AsString;
      end;

      { Artigo = Código numérico sequencial }
      if (Eof) and (RECParametros.PRO_COD_NUM) then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT GEN_ID(IDG_ARTIGO_SEQUENCIAL,1) FROM RDB$DATABASE');
        ExecQuery;
        EDArtigo.Text := Current.Vars[0].AsString;

        Edicao.Append;
        Edicao.Post;
      end;

      if not Eof then
      begin
        IEIDEP.Text  := Current.ByName('EP_ID').AsString;
        IECDST.Text  := Current.ByName('CDST' ).AsString;

        IEIDFIN.Text := Current.ByName('FIN_CAD_ID').AsString;
        IEIDTPV.Text := Current.ByName('FIN_EST_ID').AsString;

        IEORIG.Text  := Current.ByName('FIS_ORIG' ).AsString;
        IECPAIS.Text := Current.ByName('FIS_CPAIS').AsString;

        try
          Edicao.DisableControls;
          while not Eof do
          begin
            PNLSynchronize.Caption := 'Incluindo produtos(s) .... ' +  Current.ByName('SKU').AsString + ' ' + Current.ByName('CP_NO_GRD').AsString;
            Application.ProcessMessages;

            { Grade }
            Edicao.Append;
            EdicaoGRD_IPRO.Value := Current.ByName('CP_ID').AsInteger;

            EdicaoGRD_CART.Value := Current.ByName('ARTIGO').AsString;
            EdicaoGRD_CPRO.Value := Current.ByName('SKU'   ).AsString;

            EdicaoDGCP.Value     := Current.ByName('CP_NO_GRD').AsString;
            EdicaoGRD_TITU.Value := Current.ByName('CP_NO_TLO').AsString;

            EdicaoGRD_DGRD.Value := Current.ByName('VAR_NO').AsString;
            EdicaoGRD_CGRD.Value := Current.ByName('VAR_CD').AsString;
            EdicaoGRD_RGRD.Value := Current.ByName('VAR_NO_RF').AsString;

            EdicaoGRD_CCOR.Value := Current.ByName('COR_ID').AsInteger;
            EdicaoGRD_PCOR.Value := Current.ByName('COR_ESCALA').AsString;
            EdicaoGRD_DCOR.Value := Current.ByName('COR_NO').AsString;

            EdicaoGRD_CFOR.Value := Current.ByName('CF_SKU' ).AsString;
            EdicaoGRD_FBAR.Value := Current.ByName('CF_CEAN').AsString;

            EdicaoGRD_PREC.Value := Current.ByName('VPRC_PAD').AsCurrency;
            EdicaoGRD_PPRZ.Value := Current.ByName('VPRC_PRZ').AsCurrency;
            EdicaoGRD_PPRO.Value := Current.ByName('VPRC_PRO').AsCurrency;

            EdicaoGRD_ISCT.Value := Current.ByName('SCT_ID').AsInteger;
            EdicaoGRD_DSCT.Value := Current.ByName('SCT_NO').AsString;

            EdicaoGRD_IMKP.Value := Current.ByName('MKP_MLV_ID').AsInteger;
            EdicaoGRD_DMKP.Value := Current.ByName('MKP_MLV_NO').AsString;

            EdicaoGRD_IMK2.Value := Current.ByName('MKP_SHP_ID').AsInteger;
            EdicaoGRD_DMK2.Value := Current.ByName('MKP_SHP_NO').AsString;

            EdicaoGRD_CDST.Value := Current.ByName('CDST').AsInteger;
            EdicaoGRD_REST.Value := Current.ByName('REST').AsString;
            EdicaoGRD_DEST.Value := Current.ByName('DEST').AsString;

            { Imagem do Produto }
            Consulta.Close;
            Consulta.SQL.Clear;
            Consulta.SQL.Add('SELECT PK.IMG_PAD FROM CAD_PRO_IMG_SKU AS PK');
            Consulta.SQL.Add('WHERE  PK.IMG_ID = '''+Current.ByName('IMG_ID').AsString+'''');
            Consulta.Open;
            EdicaoGRD_FOTO.Value := Consulta.Fields[0].Value;

            Edicao.Post;
            Next;
          end;
        finally
          Edicao.EnableControls;
        end;
        
        { Composição }
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.ID,PK.IDPK,PK.REFERENCIA,PK.DESCRICAO,PK.QTDE FROM CAD_PRO_CMP AS PK');
        SQL.Add('WHERE  PK.AK_ID = ''' + REC_SHE_DEF.IDPK + '''');
        ExecQuery;

        try
          CAD_PRO_CMP.DisableControls;
          while not Eof do
          begin
            PNLSynchronize.Caption := 'Incluindo composições .... ' +  FormatFloat('0.00%',Current.ByName('QTDE').AsFloat) + ' ' + Current.ByName('DESCRICAO').AsString;
            Application.ProcessMessages;

            CAD_PRO_CMP.Append;
            CAD_PRO_CMPCMP_IDFK.Value := Current.Vars[0].AsInteger;
            CAD_PRO_CMPCMP_IDPK.Value := Current.Vars[1].AsInteger;
            CAD_PRO_CMPCMP_REPK.Value := Current.Vars[2].AsString;
            CAD_PRO_CMPCMP_DEPK.Value := Current.Vars[3].AsString;
            CAD_PRO_CMPCMP_QTDE.Value := Current.Vars[4].AsInteger;
            CAD_PRO_CMP.Post;
            next;
          end;
        finally
          CAD_PRO_CMP.EnableControls;
        end;
      end;
    end;

    with Consulta do
    begin
      { INSTRUÇÕES DE LAVAGENS }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.* FROM VW_CAD_PRO_ILA AS PK');
      SQL.Add('WHERE  PK.ID = ''' + REC_SHE_DEF.IDPK + '''');
      Open;

      {ILA 1}
      ILA_BMP1.Tag    := FieldByName('IDILA1'    ).AsInteger;
      EDILA_INS1.Text := FieldByName('ILA_INS1').AsString;
      oLoadBMP(FieldByName('ILA_BMP1'),ILA_BMP1.Picture);

      {ILA 2}
      ILA_BMP2.Tag    := FieldByName('IDILA2'    ).AsInteger;
      EDILA_INS2.Text := FieldByName('ILA_INS2').AsString;
      oLoadBMP(FieldByName('ILA_BMP2'),ILA_BMP2.Picture);

      {ILA 3}
      ILA_BMP3.Tag    := FieldByName('IDILA3'    ).AsInteger;
      EDILA_INS3.Text := FieldByName('ILA_INS3').AsString;
      oLoadBMP(FieldByName('ILA_BMP3'),ILA_BMP3.Picture);

      {ILA 4}
      ILA_BMP4.Tag    := FieldByName('IDILA4'    ).AsInteger;
      EDILA_INS4.Text := FieldByName('ILA_INS4').AsString;
      oLoadBMP(FieldByName('ILA_BMP4'),ILA_BMP4.Picture);

      {ILA 5}
      ILA_BMP5.Tag    := FieldByName('IDILA5'    ).AsInteger;
      EDILA_INS5.Text := FieldByName('ILA_INS5').AsString;
      oLoadBMP(FieldByName('ILA_BMP5'),ILA_BMP5.Picture);

      {ILA 6}
      ILA_BMP6.Tag    := FieldByName('IDILA6'    ).AsInteger;
      EDILA_INS6.Text := FieldByName('ILA_INS6').AsString;
      oLoadBMP(FieldByName('ILA_BMP6'),ILA_BMP6.Picture);

      {ILA 7}
      ILA_BMP7.Tag    := FieldByName('IDILA7'    ).AsInteger;
      EDILA_INS7.Text := FieldByName('ILA_INS7').AsString;
      oLoadBMP(FieldByName('ILA_BMP7'),ILA_BMP7.Picture);

      {ILA 8}
      ILA_BMP8.Tag    := FieldByName('IDILA8'    ).AsInteger;
      EDILA_INS8.Text := FieldByName('ILA_INS8').AsString;
      oLoadBMP(FieldByName('ILA_BMP8'),ILA_BMP8.Picture);

      { CATÁLOGO DO ARTIGO }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.IMG_PAD FROM CAD_PRO_IMG_ART AS PK');
      SQL.Add('WHERE  PK.ID = ''' + REC_SHE_DEF.IDPK + '''');
      Open;
      _oLoadJPG(EdicaoGRD_IPRO,FieldByName('IMG_PAD'),IMG_ART,True); { True - força visualização }
    end;

    { FINALIZA INSERÇÕES }
    ALockWindowUpdate   := False; { Desabilita SQL INJECTION }
    REC_SHE_DEF.Editing := False; { Desabilita Modified }
    oRTransact(TSEdicao);

  finally
    Screen.Cursor := crDefault; { Cursor }

    { SINCRONIA }
    PNLSBRodape.Height := 25;
    PNLSBRodape.Refresh;

    PNLSynchronize.Caption := EmptyStr;
    PNLSynchronize.Refresh;

    GFSynchronize.Animate := False;
    GFSynchronize.Refresh;

    { GRADE }
    DBGEdicaoGRD_DCOR.Field.FocusControl;
    Edicao.Last;

    { COMPOSIÇÃO }
    DBGCMPCMP_DEPK.Field.FocusControl;
    CAD_PRO_CMP.Last;

    { FOCUS CONTROL}
    if (Showing) then
    if (Edicao.RecNo > 0) then
    begin
      PostMessage(TWinControl(DBGEdicao).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(DBGEdicao).SetFocus;
    end else

    if EDArtigo.Enabled then
    begin
      PostMessage(TWinControl(EDArtigo).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(EDArtigo).SetFocus;
    end
  end;
end;

procedure TFrmCAD_PRO_EDI.ACTConsultaExecute(Sender: TObject);
begin
  inherited;

  { SINCRONIA }
  PNLSBRodape.Height := 70;
  PNLSBRodape.Refresh;

  PNLSynchronize.Caption := 'Carregando tabelas ....';
  PNLSynchronize.Refresh;

  GFSynchronize.Animate := True;
  GFSynchronize.Refresh;

  with SQLConsulta do
  begin
    { REVENDEDORES }
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,FANTASIA FROM TAB_PAR_SIS ORDER BY FANTASIA');
    ExecQuery;
    while not eof do
    begin
      IEIDEP.Values.Add(Current.Vars[0].AsString);
      IEIDEP.Descriptions.Add(Current.Vars[1].AsString);
      Next;
    end;

    { FORNECEDORES }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.CF_ID,PK.FANTASIA FROM CAD_FOR AS PK WHERE PK.CDST = 30 ORDER BY PK.FANTASIA');
    ExecQuery;
    while not eof do
    begin
      IECF_ID.Descriptions.Add(Current.Vars[1].AsString);
      IECF_ID.Values.Add(Current.Vars[0].AsString);
      next;
    end;

    { SITUAÇÕES }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_STA_CAD AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
    ExecQuery;

    while not Eof do
    begin
      IECDST.Descriptions.Add(Current.Vars[1].AsString);
      IECDST.Values.Add(Current.Vars[0].AsString);

      DBGEdicaoGRD_DEST.Items.Add(Current.Vars[1].AsString);
      next;
    end;

    { FINALIDADES }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO AS PK WHERE PK.PRO_TIPO_FIN_VEN = 1 AND PK.REST = ''A'' ORDER BY PK.DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IEIDFIN.Values.Add(Current.Vars[0].AsString);
      IEIDFIN.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    { ESTOQUE VENDÁVEL }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO AS PK WHERE PK.PRO_TIPO_EST_VEN = 1 AND PK.REST = ''A'' ORDER BY PK.DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IEIDTPV.Values.Add(Current.Vars[0].AsString);
      IEIDTPV.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    { COLEÇÕES }
    Close;
    SQL.Clear;
    SQL.Add('SELECT DESCRICAO FROM TAB_COL ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      PEDECOL.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    { SEGMENTOS }
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_SEG WHERE ID > 0 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IEIDSEG.Values.Add(Current.Vars[0].AsString);
      IEIDSEG.Descriptions.Add(Current.Vars[1].AsString);
      Next;
    end;

    { GRUPOS }
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_GRP WHERE ID > 0 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IEIDGRP.Values.Add(Current.Vars[0].AsString);
      IEIDGRP.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    { SUB GRUPOS }
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_SGP WHERE ID > 0 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IEIDSGP.Values.Add(Current.Vars[0].AsString);
      IEIDSGP.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    { CATEGORIAS }
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_CAT WHERE ID > 0 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IEIDCAT.Values.Add(Current.Vars[0].AsString);
      IEIDCAT.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    { SUB CATEGORIAS }
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_SCT WHERE ID > 0 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IEIDSCT.Values.Add(Current.Vars[0].AsString);
      IEIDSCT.Descriptions.Add(Current.Vars[1].AsString);

      DBGEdicaoGRD_DSCT.Items.Add(Current.Vars[1].AsString);
      next;
    end;

    { ORIGEM }
    Close;
    SQL.Clear;
    SQL.Add('SELECT CPAIS,XPAIS FROM TAB_PAIS ORDER BY XPAIS');
    ExecQuery;
    while not eof do
    begin
      IECPAIS.Values.Add(Current.Vars[0].AsString);
      IECPAIS.Descriptions.Add(Current.Vars[1].AsString);
      Next;
    end;

    { GRADE }
    Close;
    SQL.Clear;
    SQL.Add('SELECT DESCRICAO FROM TAB_COR WHERE ID > 0 ORDER BY 1');
    ExecQuery;
    while not eof do
    begin
      DBGEdicaoGRD_DCOR.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    { UNIDADE COMERCIAL }
    Close;
    SQL.Clear;
    SQL.Add('SELECT   REFERENCIA FROM TAB_UCOM');
    SQL.Add('ORDER BY REFERENCIA');
    ExecQuery;
    while not eof do
    begin
      IEUCOM.Values.Add(Current.Vars[0].AsString);
      IEUCOM.Descriptions.Add(Current.Vars[0].AsString);
      IEUCOM_LV.Values.Add(Current.Vars[0].AsString);
      IEUCOM_LV.Descriptions.Add(Current.Vars[0].AsString);
      next;
    end;

    { MARKET PLACES }
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_MKP ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IEMKP_IDML.Values.Add(Current.Vars[0].AsString);
      IEMKP_IDML.Descriptions.Add(Current.Vars[1].AsString);

      IEMKP_IDSP.Values.Add(Current.Vars[0].AsString);
      IEMKP_IDSP.Descriptions.Add(Current.Vars[1].AsString);

      next;
    end;

    { COMPOSIÇÕES }
    Close;
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(IDG_IDEV_PRO,1) FROM RDB$DATABASE');
    ExecQuery;
    AIDG_IDEV_CMP := Current.Vars[0].AsString;

  end;
end;

procedure TFrmCAD_PRO_EDI.ACTEdicaoExecute(Sender: TObject);
begin
  inherited;

  { SINCRONIA }
  PNLSynchronize.Caption := 'Preparando edição ....';
  PNLSynchronize.Refresh;

  { EDIÇÕES }
  oOTransact(TSEdicao);
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM CAD_PRO_GRD');
    ExecQuery;

    { Exclui lançamentos de composição anteriores }
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM TAB_EDI_PRO');
    SQL.Add('WHERE  CDEV = 3');
    SQL.Add('AND    HOST = ''' + RECParametros.HOST + '''');
    ExecQuery;
  end;
  oRTransact(TSEdicao);

  { COMPONENTES }
  EDArtigo.Enabled := (REC_SHE_DEF.IDPK = 0);

  IEIDEP.Text  := RECParametros.EP_ID;
  IEIDFIN.Text := RECParametros.PRO_IDFIN_CAD;
  IEIDTPV.Text := RECParametros.PRO_IDFIN_EST;

  IECDST.Text  := '30';
  _CAD_PRO_CMP;

  { PAGE CONTROL }
  PCPrincipal.ActivePageIndex := 0; { Principal }
  PCTAB_PRC.ActivePageIndex   := 0; { Tabela de Preços }
end;

procedure TFrmCAD_PRO_EDI.ACTMPPostExecute(Sender: TObject);
begin
  inherited;

  try
    oRTransact(TSEdicao,ltRead_Only);
    oOTransact(TEdicao ,ltRead_Only);

    if oEmpty(PEDECOL.Text) then
    PEDECOL.Tag := 0 else

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('EXECUTE BLOCK');
      SQL.Add('RETURNS (ID smallint)');
      SQL.Add('AS');
      SQL.Add('BEGIN');
      SQL.Add('UPDATE OR INSERT');
      SQL.Add('INTO TAB_COL (DESCRICAO)');
      SQL.Add('VALUES (');
      SQL.Add(''''+PEDECOL.Text+''')');
      SQL.Add('MATCHING (DESCRICAO)');
      SQL.Add('RETURNING ID INTO :ID;');
      SQL.Add('SUSPEND;');
      SQL.Add('END;');

      ParamCheck := False;
      Prepare;
      ExecQuery;
      PEDECOL.Tag := Current.Vars[0].AsInteger;
    end;

    with SQLSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT GRD_IPRO FROM CAD_PRO_GRD WHERE FLAG = 1');
      ExecQuery;
    end;

    while not SQLSEdicao.Eof do
    begin
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM CAD_PRO WHERE CP_ID = '''+SQLSEdicao.Current.Vars[0].AsString+'''');
        ExecQuery;

        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM ESTOQUE WHERE CP_ID = '''+SQLSEdicao.Current.Vars[0].AsString+'''');
        ExecQuery;
      end;

      SQLSEdicao.Next;
    end;

    while not Edicao.Eof do
    begin
      REC_SHE_DEF.ID     := IntToStr(EdicaoGRD_IPRO.AsInteger);
      REC_SHE_DEF.CODIGO := EdicaoGRD_CPRO.AsString;

      SPEdicao.Close;
      SPEdicao.StoredProcName := 'SP_CAD_PRO_TMP';
      SPEdicao.Prepare;

      SPEdicao.ParamByName('ID'  ).Value := EdicaoGRD_IPRO.AsInteger;
      SPEdicao.ParamByName('IDEP').Value := IEIDEP.Text;
      SPEdicao.ParamByName('IDCA').Value := RECUsuarios.Id;

      SPEdicao.ParamByName('CDST').Value := EdicaoGRD_CDST.AsInteger;
      SPEdicao.ParamByName('REST').Value := EdicaoGRD_REST.AsString;
      SPEdicao.ParamByName('DEST').Value := EdicaoGRD_DEST.AsString;

      SPEdicao.ParamByName('ARTIGO').Value := EDArtigo.Text;
      SPEdicao.ParamByName('NCM' ).Value := PENCM.Text;
      SPEdicao.ParamByName('PIPI').Value := CEPIPI.Value;

      SPEdicao.ParamByName('SKU' ).Value := EdicaoGRD_CPRO.AsString;
      SPEdicao.ParamByName('CEAN').Value := oBarCode(REC_SHE_DEF);

      SPEdicao.ParamByName('DESCRICAO').Value := EDDescricao.Text;
      SPEdicao.ParamByName('TITULO'   ).Value := EdicaoGRD_TITU.AsString;
      SPEdicao.ParamByName('CMP_PAD'  ).Value := EDCMP_PAD.Text;

      SPEdicao.ParamByName('IDCOR').Value := EdicaoGRD_CCOR.AsInteger;
      SPEdicao.ParamByName('DECOR').Value := EdicaoGRD_DCOR.AsString;

      SPEdicao.ParamByName('DEGRD').Value := EdicaoGRD_DGRD.AsString;
      SPEdicao.ParamByName('CDGRD').Value := EdicaoGRD_CGRD.AsString;
      SPEdicao.ParamByName('REGRD').Value := EdicaoGRD_RGRD.AsString;

      SPEdicao.ParamByName('IDCF'  ).Value := IECF_ID.Text;
      SPEdicao.ParamByName('CDCF'  ).Value := EdicaoGRD_CFOR.AsString;
      SPEdicao.ParamByName('CEANCF').Value := EdicaoGRD_FBAR.AsString;

      SPEdicao.ParamByName('UCOM' ).Value := IEUCOM.Text;
      SPEdicao.ParamByName('UQVOL').Value := CEUQVOL.Value;
      SPEdicao.ParamByName('UESP' ).Value := EDUESP.Text;
      SPEdicao.ParamByName('UCON' ).Value := EDUCON.Text;
      SPEdicao.ParamByName('UCDBE').Value := IEUCDBE.Text;
      SPEdicao.ParamByName('UQTDE').Value := CEUQTDE.Value;

      SPEdicao.ParamByName('UQTDE_VEN_MUL').Value := CEUQTDE_VEN_MUL.Value;
      SPEdicao.ParamByName('UQTDE_VEN_MIN').Value := CEUQTDE_VEN_MIN.Value;
      SPEdicao.ParamByName('UQTDE_EST_MIN').Value := CEUQTDE_EST_MIN.Value;

      SPEdicao.ParamByName('PESO').Value := CEPESO.Value;
      SPEdicao.ParamByName('PSCN').Value := CEPSCN.Value;

      SPEdicao.ParamByName('METRO'     ).Value := CEMetros.Value;
      SPEdicao.ParamByName('RENDIMENTO').Value := CERend.Value;

      SPEdicao.ParamByName('GRAMATURA').Value := CEGramatura.Value;
      SPEdicao.ParamByName('GRAT_T'   ).Value := PEDGramatura.Text;

      SPEdicao.ParamByName('LARG_U').Value := CELARG_U.Value;
      SPEdicao.ParamByName('LARG_T').Value := CELARG_T.Value;

      SPEdicao.ParamByName('ELAS_L').Value := CEELAS_L.Value;
      SPEdicao.ParamByName('ELAS_C').Value := CEELAS_C.Value;

      SPEdicao.ParamByName('ENCO_L').Value := CEENCO_L.Value;
      SPEdicao.ParamByName('ENCO_C').Value := CEENCO_C.Value;
      SPEdicao.ParamByName('ENCO_T').Value := PEDENCO.Text;

      SPEdicao.ParamByName('ESPESSURA'     ).Value := CEESPESSURA.Value;
      SPEdicao.ParamByName('ESPESSURA_TIPO').Value := IEESPESSURA.Text;

      SPEdicao.ParamByName('VPRC_COMPRA'    ).Value := CEVPRC_COM.Value;
      SPEdicao.ParamByName('VPRC_COMPRA_IMP').Value := CEVPRC_COM_IMP.Value;

      SPEdicao.ParamByName('VPRC_PAD'    ).Value := EdicaoGRD_PREC.AsCurrency;
      SPEdicao.ParamByName('VPRC_PAD_PRZ').Value := EdicaoGRD_PPRZ.AsCurrency;
      SPEdicao.ParamByName('VPRC_PAD_PRO').Value := EdicaoGRD_PPRO.AsCurrency;
      SPEdicao.ParamByName('PPRC_PAD_DSC').Value := CEPPRC_PAD_DSC.Value;
      SPEdicao.ParamByName('PPRC_PAD_AJU').Value := CEPPRC_PAD_AJU.Value;

      SPEdicao.ParamByName('VPRC_ATV'    ).Value := CEVPRC_ATV.Value;
      SPEdicao.ParamByName('VPRC_ATV_PRZ').Value := CEVPRC_ATV_PRZ.Value;
      SPEdicao.ParamByName('VPRC_ATV_PRO').Value := CEVPRC_ATV_PRO.Value;
      SPEdicao.ParamByName('PPRC_ATV_DSC').Value := CEPPRC_ATV_DSC.Value;
      SPEdicao.ParamByName('PPRC_ATV_AJU').Value := CEPPRC_ATV_AJU.Value;

      SPEdicao.ParamByName('VPRC_VAR'    ).Value := CEVPRC_VAR.Value;
      SPEdicao.ParamByName('VPRC_VAR_PRZ').Value := CEVPRC_VAR_PRZ.Value;
      SPEdicao.ParamByName('VPRC_VAR_PRO').Value := CEVPRC_VAR_PRO.Value;

      SPEdicao.ParamByName('VPRC_REP'    ).Value := CEVPRC_REP.Value;
      SPEdicao.ParamByName('VPRC_REP_PRZ').Value := CEVPRC_REP_PRZ.Value;
      SPEdicao.ParamByName('VPRC_REP_PRO').Value := CEVPRC_REP_PRO.Value;

      SPEdicao.ParamByName('PMKP_SITE').Value := CEPMKP.Value;
      SPEdicao.ParamByName('VPRC_SITE').Value := CEVPRC_LV.Value;

      SPEdicao.ParamByName('IDCOL').Value := PEDECOL.Tag;
      SPEdicao.ParamByName('IDSEG').Value := IEIDSEG.Text;
      SPEdicao.ParamByName('IDGRP').Value := IEIDGRP.Text;
      SPEdicao.ParamByName('IDSGP').Value := IEIDSGP.Text;
      SPEdicao.ParamByName('IDCAT').Value := IEIDCAT.Text;
      SPEdicao.ParamByName('IDSCT').Value := EdicaoGRD_ISCT.AsInteger;

      SPEdicao.ParamByName('MKP_IDML').Value := EdicaoGRD_IMKP.AsInteger;;
      SPEdicao.ParamByName('MKP_IDSP').Value := EdicaoGRD_IMK2.AsInteger;;
      SPEdicao.ParamByName('MKP_IDAM').Value := 0;

      SPEdicao.ParamByName('IDFIN').Value := IEIDFIN.Text;
      SPEdicao.ParamByName('IDTPV').Value := IEIDTPV.Text;

      SPEdicao.ParamByName('IDTPA').Value := CBSTAL.Text;
      SPEdicao.ParamByName('IDTPD').Value := CBDENS.Text;
      SPEdicao.ParamByName('IDTPF').Value := CBTITF.Text;
      SPEdicao.ParamByName('IDTPL').Value := 'L';

      SPEdicao.ParamByName('ORIG' ).Value := IEORIG.Text;
      SPEdicao.ParamByName('CPAIS').Value := IECPAIS.Text;

      SPEdicao.ParamByName('INFADCAD').Value := EMINFADCAD.Text;
      SPEdicao.ParamByName('INFADTEC').Value := EMINFADTEC.Text;

      SPEdicao.ParamByName('IP'  ).Value := RECParametros.IP;
      SPEdicao.ParamByName('HOST').Value := RECParametros.Host;

      SPEdicao.ExecProc;
      REC_SHE_DEF.ID   := IntToStr(SPEdicao.ParamByName('rID'  ).AsInteger);
      REC_SHE_DEF.IDPK := IntToStr(SPEdicao.ParamByName('rIDAK').AsInteger);

      { Imagem Produto }
      if EdicaoIDIMG.AsInteger = 1 then
      begin
        SPEdicao.Close;
        SPEdicao.StoredProcName := 'SP_CAD_PRO_IMG_SKU';
        SPEdicao.Prepare;

        SPEdicao.ParamByName('AID'  ).Value := REC_SHE_DEF.ID; // ID do Produto (SKU) para imagens individuais
        SPEdicao.ParamByName('AIDCA').Value := RECUsuarios.Id;

        SPEdicao.ParamByName('AIMG_PAD').Value := EdicaoGRD_FOTO.Value;

        SPEdicao.ParamByName('AIP'  ).Value := RECParametros.IP;
        SPEdicao.ParamByName('AHOST').Value := RECParametros.HOST;
        SPEdicao.ExecProc;
      end;

      Edicao.Next;
    end;

    { Instruções de Lavagem }
    if BILA_BMP.Tag = 1 then
    begin
      SPEdicao.Close;
      SPEdicao.StoredProcName  := 'SP_CAD_PRO_ILA';
      SPEdicao.Prepare;

      SPEdicao.ParamByName('AID'    ).Value := REC_SHE_DEF.IDPK;
      SPEdicao.ParamByName('AIDILA1').Value := ILA_BMP1.Tag;
      SPEdicao.ParamByName('AIDILA2').Value := ILA_BMP2.Tag;
      SPEdicao.ParamByName('AIDILA3').Value := ILA_BMP3.Tag;
      SPEdicao.ParamByName('AIDILA4').Value := ILA_BMP4.Tag;
      SPEdicao.ParamByName('AIDILA5').Value := ILA_BMP5.Tag;
      SPEdicao.ParamByName('AIDILA6').Value := ILA_BMP6.Tag;
      SPEdicao.ParamByName('AIDILA7').Value := ILA_BMP7.Tag;
      SPEdicao.ParamByName('AIDILA8').Value := ILA_BMP8.Tag;
      SPEdicao.ExecProc;
    end;

    { Imagem Artigo }
    if SBIMG_ART.Tag = 1 then
    begin
      SPEdicao.Close;
      SPEdicao.StoredProcName := 'SP_CAD_PRO_IMG_ART';
      SPEdicao.Prepare;

      SPEdicao.ParamByName('AID'  ).Value := REC_SHE_DEF.IDPK; // ID do Artigo para imagem única
      SPEdicao.ParamByName('AIDCA').Value := RECUsuarios.Id;

      SPEdicao.ParamByName('AIMG_PAD').LoadFromStream(oLoadStream(IMG_ART.Picture),ftBlob);

      SPEdicao.ParamByName('AIP'  ).Value := RECParametros.IP;
      SPEdicao.ParamByName('AHOST').Value := RECParametros.HOST;
      SPEdicao.ExecProc;
    end;

    { Composição }
    _CAD_PRO_CMP(-1);
    while not CAD_PRO_CMP.Eof do
    begin
      SPEdicao.Close;
      SPEdicao.StoredProcName := 'SP_CAD_PRO_CMP';
      SPEdicao.Prepare;

      { Inicializar Parâmetros: FLAG (0 = Incluir/Alterar | 1 = Excluir) + pesquisa (ID) }
      SPEdicao.ParamByName('AFLAG').Value := CAD_PRO_CMPFLAG.AsInteger;

      { Cadastro }
      SPEdicao.ParamByName('AID'  ).Value := CAD_PRO_CMPCMP_IDFK.AsInteger;
      SPEdicao.ParamByName('AIDEP').Value := RECParametros.EP_ID;
      SPEdicao.ParamByName('AIDCA').Value := RECUsuarios.Id;

      SPEdicao.ParamByName('AIDAK').Value := REC_SHE_DEF.IDPK; { CAD_PRO }
      SPEdicao.ParamByName('AIDPK').Value := CAD_PRO_CMPCMP_IDPK.AsInteger; { TAB_CMP }

      { Composição }
      SPEdicao.ParamByName('AREFERENCIA').Value := CAD_PRO_CMPCMP_REPK.AsString;
      SPEdicao.ParamByName('ADESCRICAO' ).Value := CAD_PRO_CMPCMP_DEPK.AsString;
      SPEdicao.ParamByName('AQTDE').Value       := CAD_PRO_CMPCMP_QTDE.AsCurrency;

      { Evento }
      SPEdicao.ParamByName('AIDEV').Value := AIDG_IDEV_CMP;

      { Dispositivo }
      SPEdicao.ParamByName('AIP'  ).Value := RECParametros.IP;
      SPEdicao.ParamByName('AHOST').Value := RECParametros.HOST;
      SPEdicao.ExecProc;

      CAD_PRO_CMP.Next;
    end;
    _CAD_PRO_CMP;

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_COMP = NULL');
      SQL.Add('WHERE  AK_ID    = ''' + REC_SHE_DEF.IDPK + '''');
      ExecQuery;
    end;

    oRTransact(TSEdicao,ltRead_Only_Release_Commit);
    oCTransact(TEdicao ,ltRead_Only_Release_Commit);

    oAviso(handle,'Registro(s) atualizado(s) com sucesso !');
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(Nil,'Falha ao tentar salvar cadastro !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;

  REC_SHE_DEF.Editing := False;
  ACTEveExecute.Execute;
  Close;
end;

procedure TFrmCAD_PRO_EDI._POST_IMG_SKU(AIMG_NOME: String);
begin
  if Pos('ART',AIMG_NOME) > 0 then
  SBIMG_ART.Tag := 1 else
     
  if (Pos('SKU',AIMG_NOME) > 0) and (EdicaoID.AsInteger > 0) then
  begin
    Edicao.Edit;
    EdicaoGRD_FOTO.LoadFromFile(OPDIMG.FileName);
    EdicaoIDIMG.Value := 1;
    Edicao.Post;
  end;
end;

procedure TFrmCAD_PRO_EDI.DBGEdicaoGRD_DSCTValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGEdicao.EditingText := Trim(DBGEdicao.EditingText);
  if (Edicao.State in [dsInsert,dsEdit]) and (not oEmpty(DBGEdicao.EditingText))then
  begin
    oRTransact(TConsulta);

    with SQLFKConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT TAB_SCT.ID,TAB_SCT.DESCRICAO,TAB_SCT.NCM,TRIBIPI,VUPRC_PAD,VUPRC_PRZ,VUPRC_PRO,PESO,PSCN,METRO,GRAMATURA,RENDIMENTO,LARG_U,LARG_T');
      SQL.Add('FROM   TAB_SCT');
      SQL.Add('LEFT JOIN TAB_NCM ON (TAB_NCM.NCM = TAB_SCT.NCM)');
      SQL.Add('WHERE  TAB_SCT.DESCRICAO = '''+DBGEdicao.EditingText+'''');
      ExecQuery;

      EdicaoGRD_ISCT.Value := Current.Vars[0].AsShort;
      if Eof then
         DataBaseError('Sub Categoria não cadastrada ou incorreta !');

      if Current.Vars[1].AsString <> EmptyStr then
      EdicaoGRD_DSCT.Value := Current.Vars[1].AsString;

      if Current.Vars[4].AsCurrency > 0 then
      EdicaoGRD_PREC.Value := Current.Vars[4].AsCurrency;

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
      CEVPRC_PAD_PRZ.Value := Current.ByName('VUPRC_PRZ').AsCurrency;

      if Current.ByName('VUPRC_PRO').AsCurrency > 0 then
      CEVPRC_PAD_PRO.Value := Current.ByName('VUPRC_PRO').AsCurrency;

      { Medidas Principais }
      if Current.ByName('PESO').AsCurrency > 0 then
      CEPESO.Value := Current.ByName('PESO').AsCurrency;

      if Current.ByName('PSCN').AsCurrency > 0 then
      CEPSCN.Value := Current.ByName('PSCN').AsCurrency;

      if Current.ByName('METRO').AsCurrency > 0 then
      CEMetros.Value := Current.ByName('METRO').AsCurrency;

      if Current.ByName('GRAMATURA').AsCurrency > 0 then
      CEGramatura.Value := Current.ByName('GRAMATURA').AsCurrency;

      if Current.ByName('RENDIMENTO').AsCurrency > 0 then
      CERend.Value := Current.ByName('RENDIMENTO').AsCurrency;

      { Outras Medidas }
      if Current.ByName('LARG_U').AsCurrency > 0 then
      CELARG_U.Value := Current.ByName('LARG_U').AsCurrency;

      if Current.ByName('LARG_T').AsCurrency > 0 then
      CELARG_T.Value := Current.ByName('LARG_T').AsCurrency;
    end;
  end;  
end;

procedure TFrmCAD_PRO_EDI.CEVPRC_PADValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not ALockWindowUpdate then
     try
       oOTransact(TSEdicao,ltRead_Only);

       Edicao.First;
       while not Edicao.Eof do
       begin
         Edicao.Edit;
         EdicaoGRD_PREC.Value := CEVPRC_PAD.Value;
         Edicao.Post;
         Edicao.Next;
       end;
       oRTransact(TSEdicao,ltRead_Only_Release_Commit);

       if RECParametros.PRO_AJU_PRC_VAR > 0 then
       CEVPRC_VAR.Value := CEVPRC_PAD.Value +((CEVPRC_PAD.Value * RECParametros.PRO_AJU_PRC_VAR) / 100);

       if RECParametros.PRO_AJU_PRC_REP > 0 then
       CEVPRC_REP.Value := CEVPRC_PAD.Value +((CEVPRC_PAD.Value * RECParametros.PRO_AJU_PRC_REP) / 100);

       _PUMKP;

     except
       on E: Exception do
       begin
         oCTransact(TSEdicao,ltRead_Only_Release_Rollback);
         oErro(Handle,'Erro ao tentar registrar preço !' + #13 +
                       E.Message + '.');
       end;
     end;
end;

procedure TFrmCAD_PRO_EDI.CEVPRC_PAD_PRZValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not ALockWindowUpdate then
     try
       oRTransact(TSEdicao,ltRead_Only);

       Edicao.First;
       while not Edicao.Eof do
       begin
         Edicao.Edit;
         EdicaoGRD_PPRZ.Value := CEVPRC_PAD_PRZ.Value;
         Edicao.Post;
         Edicao.Next;
       end;

       oRTransact(TSEdicao,ltRead_Only_Release_Commit);
     except
       on E: Exception do
       begin
         oCTransact(TSEdicao,ltRead_Only_Release_Rollback);
         oErro(Handle,'Erro ao tentar registrar preço !'+#13+
                       E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
       end;
     end;
end;

procedure TFrmCAD_PRO_EDI.CEVPRC_PAD_PROValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  try
    oRTransact(TSEdicao,ltRead_Only);
    Edicao.First;
    while not Edicao.Eof do
    begin
      Edicao.Edit;
      EdicaoGRD_PPRO.Value := CEVPRC_PAD_PRO.Value;
      Edicao.Post;
      Edicao.Next;
    end;
    oRTransact(TSEdicao,ltRead_Only_Release_Commit);
  except
    on E: Exception do
    begin
      oCTransact(TSEdicao,ltRead_Only_Release_Rollback);
      oErro(Handle,'Erro ao tentar registrar preço !'+#13+
                    E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
    end;
  end;
end;

procedure TFrmCAD_PRO_EDI.CEPMKPValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  _PUMKP;
end;

procedure TFrmCAD_PRO_EDI._PUMKP;
var
  ASPRC: Double;
begin
  ASPRC := 0;
  if ((CEVPRC_PAD.Value > 0) and (CEUQVOL_LV.Value > 0) and (CEPMKP.Value > 0)) then
  begin
    ASPRC := CEVPRC_PAD.Value / CEUQVOL_LV.Value;
    ASPRC := ASPRC + ((ASPRC * CEPMKP.Value) / 100);

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
  CEVPRC_LV.Value := ASPRC;
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
  if (PCTAB_PRC.ActivePage = TSPRC_ATV) and (CEVPRC_ATV.Enabled) then
  CEVPRC_ATV.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.TSPRC_VARShow(Sender: TObject);
begin
  if (Showing) and (TSPrecos.Enabled  ) and (TSPRC_VAR.Enabled ) then
  if (PCTAB_PRC.ActivePage = TSPRC_VAR) and (CEVPRC_VAR.Enabled) then
  CEVPRC_VAR.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.TSPRC_REPShow(Sender: TObject);
begin
  if (Showing) and (TSPrecos.Enabled  ) and (TSPRC_REP.Enabled ) then
  if (PCTAB_PRC.ActivePage = TSPRC_REP) and (CEVPRC_REP.Enabled) then
  CEVPRC_REP.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.TSPRC_LVShow(Sender: TObject);
begin
  if (Showing) and (TSPrecos.Enabled ) and (TSPRC_LV.Enabled ) then
  if (PCTAB_PRC.ActivePage = TSPRC_LV) and (CEVPRC_LV.Enabled) then
  CEVPRC_LV.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.TSPRC_COMShow(Sender: TObject);
begin
  if (Showing) and (TSPrecos.Enabled  ) and (TSPRC_COM.Enabled ) then
  if (PCTAB_PRC.ActivePage = TSPRC_COM) and (CEVPRC_COM.Enabled) then
  CEVPRC_COM.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.CEPESOValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (CEPESO.Value > 0) and (IEUCOM.Text = 'KG') then
  begin
    CEUQTDE.Value := CEPESO.Value;
    CEUQTDE.Color := clGray;
    CEUQTDE.Font.Color := clWhite;
    CEUQTDE.Refresh;
  end;
end;

procedure TFrmCAD_PRO_EDI.CEMetrosValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (CEMetros.Value > 0) and (IEUCOM.Text = 'M') then
  begin
    CEUQTDE.Value := CEMetros.Value;
    CEUQTDE.Color := clGray;
    CEUQTDE.Font.Color := clWhite;

    CEUQTDE.Modified := True;
    CEUQTDE.ValidateEdit;
  end;
end;

procedure TFrmCAD_PRO_EDI.CEGramaturaValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (LeftStr(IEUCOM.Text,1) = 'M') or (LeftStr(IEUCOM.Text,1) = 'K') then
  begin
    ARendimento := 0;

    if (CEGramatura.Value > 0) and (CELARG_T.Value > 0) then
    begin
      ARendimento := RoundTO(1000 / CEGramatura.Value,-2);
      ARendimento := RoundTO(ARendimento / CELARG_T.Value,-2);
    end;

    if ARendimento > 0 then
    begin
      CERend.Value := ARendimento;

      if (LeftStr(IEUCOM.Text,1) = 'K') and (CEPeso.Value > 0) then
          CEMetros.Value := RoundTO(CERend.Value * CEPeso.Value,-2);
    end;
  end;
end;

procedure TFrmCAD_PRO_EDI.DBGEdicaoGRD_TITUValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGEdicao.EditingText := Trim(DBGEdicao.EditingText);
  if (Edicao.State in [dsInsert,dsEdit]) and (DBGEdicao.EditingText <> EmptyStr) and (DBGEdicao.EditingText <> EdicaoGRD_TITU.AsString) then
      EdicaoGRD_TITU.Value := DBGEdicao.EditingText;
end;

procedure TFrmCAD_PRO_EDI.CERENDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (LeftStr(IEUCOM.Text,1) = 'K') and (CERend.Value > 0) and (CEPeso.Value > 0) then
      CEMetros.Value := RoundTO(CERend.Value * CEPeso.Value,-2);
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPNewRecord(DataSet: TDataSet);
begin
  { Cadastro }
  CAD_PRO_CMPID.Value   := 0;
  CAD_PRO_CMPIDEP.Value := RECParametros.EP_ID;
  CAD_PRO_CMPIDCA.Value := RECUsuarios.Id;

  { Evento }
  CAD_PRO_CMPIDEV.Value := AIDG_IDEV_CMP;
  CAD_PRO_CMPCDEV.Value := 3;

  { Composição }
  CAD_PRO_CMPIDAK.Value := REC_SHE_DEF.IDPK; { Artigo }
  CAD_PRO_CMPCMP_IDFK.Value := 0; { CAD_PRO_CMP }
  CAD_PRO_CMPCMP_IDPK.Value := 0; { TAB_CMP }
  CAD_PRO_CMPCMP_QTDE.Value := 0; { % }

  { Padrão }
  CAD_PRO_CMPIP.Value   := RECParametros.IP;
  CAD_PRO_CMPHOST.Value := RECParametros.HOST;
  CAD_PRO_CMPFLAG.Value := 0;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPBeforeInsert(DataSet: TDataSet);
begin
  CAD_PRO_CMPId.Tag := CAD_PRO_CMPId.AsInteger;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPBeforeEdit(DataSet: TDataSet);
begin
  CAD_PRO_CMPId.Tag := CAD_PRO_CMPId.AsInteger;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPBeforeCancel(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  if CAD_PRO_CMPId.Tag = 0 then
  begin
    CAD_PRO_CMP.Close;
    CAD_PRO_CMP.Open;
    ABORT;
  end;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPAfterInsert(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  DBGCMPCMP_DEPK.Field.FocusControl;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPAfterDelete(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  oRefresh(CAD_PRO_CMP);
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPAfterPost(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    REC_SHE_DEF.Editing := True;
    oRefresh(CAD_PRO_CMP);
  end;  
end;

procedure TFrmCAD_PRO_EDI.DTSCAD_PRO_CMPStateChange(Sender: TObject);
begin
  if not ALockWindowUpdate then
  oState(CAD_PRO_CMP,SBCMP);
end;

procedure TFrmCAD_PRO_EDI._CAD_PRO_CMP(AFlag: Integer = 0);
begin
  with CAD_PRO_CMP do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT PK.ID,PK.IDEP,PK.IDCA,PK.IDAK,PK.CMP_IDFK,PK.CMP_IDPK,PK.CMP_REPK,PK.CMP_DEPK,PK.CMP_QTDE,PK.IDEV,PK.CDEV,PK.IP,PK.HOST,PK.FLAG');
    SelectSQL.Add('FROM   TAB_EDI_PRO AS PK');
    SelectSQL.Add('WHERE  PK.IDEV = ''' + AIDG_IDEV_CMP + '''');
    SelectSQL.Add('AND    PK.CDEV = 3');

    if AFlag >= 0 then
    SelectSQL.Add('AND      PK.FLAG = '+IntToStr(AFlag));
    SelectSQL.Add('ORDER BY PK.ID');

    Prepare;
    Open;
  end;

  if AFlag = -1 then
  CAD_PRO_CMP.First;
end;

procedure TFrmCAD_PRO_EDI.CEPIPIValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  ACTPesquisaNCM.Execute;
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
  REC_SHE_DEF.Editing := True;

  oOTransact(TConsulta);
  with SQLPKConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.REFERENCIA FROM TAB_STA_CAD AS PK ');
    SQL.Add('WHERE  PK.ID = ''' + IECDST.Text + '''');
    Prepare;
    ExecQuery;

    IECDST.HelpKeyword := Current.Vars[0].AsString;
  end;

  if LeftStr(IECDST.HelpKeyword,1) = 'A' then
  begin
    IECDST.Color      := $00B9FFB9;
    IECDST.Font.Color := clBlack;
  end else

  if LeftSTr(IECDST.HelpKeyword,1) = 'P' then
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
  CEPSCN.Value := IFThen((IEUCOM.Text <> 'M') and (IEUCOM.Text <> 'KG') and (IEUCOM.Text <> 'PC'),0,0.3);
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

procedure TFrmCAD_PRO_EDI.ACTImagemArtigoExecute(Sender: TObject);
begin
  if OPDIMG.Execute then
  begin
    TImage(FindComponent(RIGHTSTR(TSpeedButton(Sender).Name,7))).Picture.LoadFromFile(OPDIMG.FileName);
    _POST_IMG_SKU(TImage(FindComponent(RIGHTSTR(TSpeedButton(Sender).Name,7))).Name);
  end;
end;

procedure TFrmCAD_PRO_EDI.ACTImagemArtigoDeleteExecute(Sender: TObject);
begin
  TImage(Sender).Picture.Assign(Nil);
  _POST_IMG_SKU(TImage(Sender).Name);
end;

procedure TFrmCAD_PRO_EDI.ACTMEAppendExecute(Sender: TObject);
begin
  if ((ActiveControl is TdxDBGrid) or (ActiveControl is TSpeedBar)) and { Focus Control }
      (SBEdicao.Enabled) and { Habilitado }
      (Edicao.State = dsBrowse) and { DataSet }
      (not ALockWindowUpdate) then { SQL Injection }

  oAppend(Edicao);
end;

procedure TFrmCAD_PRO_EDI.ACTMEEditExecute(Sender: TObject);
begin
  if (SBEdicao.Enabled) and { Habilitado }
     (Edicao.RecNo > 0) and { Registro }
     (Edicao.State = dsBrowse) and { DataSet }
     (not ALockWindowUpdate) then { SQL Injection }

  oEdit(Edicao);
end;

procedure TFrmCAD_PRO_EDI.ACTMEDeleteExecute(Sender: TObject);
begin
  if ((ActiveControl is TdxDBGrid) or (ActiveControl is TSpeedBar)) and { Focus Control }
      (SBEdicao.Enabled) and { Habilitado }
      (Edicao.RecNo > 0) and { Registro }
      (Edicao.State = dsBrowse) and { DataSet }
      (not ALockWindowUpdate) then { SQL Injection }

  if oYesNo(handle,'Produto ' + EdicaoDGCP.AsString + '.' + #13 +
                   'Confirma Exclusão ?') = mrYes then
  begin
    oRTransact(TConsulta);

    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT IS_DEL FROM CAD_PRO');
      SQL.Add('WHERE  CP_ID= ''' + EdicaoGRD_IPRO.AsString + '''');
      ExecQuery;

      if Current.Vars[0].AsInteger = 0 then
         oException(Nil,'Falha ao tentar excluir registro !'  + #13 +
                        'Produto ' + EdicaoDGCP.AsString + ' possui registro(s) movimentados(s).' + #13 + #13 +
                        'Tente inativar ao invés de excluir.');
    end;

    Edicao.Edit;
    EdicaoFLAG.Value := 1;
    Edicao.Post;
  end;
end;

procedure TFrmCAD_PRO_EDI.ACTMEPostExecute(Sender: TObject);
begin
  if (SBEdicao.Enabled) and { Habilitado }
     (Edicao.State in [dsInsert,dsEdit]) and { DataSet }
     (not ALockWindowUpdate) then { SQL Injection }

  oPost(Edicao);
end;

procedure TFrmCAD_PRO_EDI.ACTMECancelExecute(Sender: TObject);
begin
  if (SBEdicao.Enabled) and { Habilitado }
     (Edicao.State in [dsInsert,dsEdit]) and { DataSet }
     (not ALockWindowUpdate) then { SQL Injection }

  oCancel(Edicao);
end;

procedure TFrmCAD_PRO_EDI.SICMP_DELClick(Sender: TObject);
begin
  if (CAD_PRO_CMP.State = dsBrowse) and (CAD_PRO_CMPId.AsInteger > 0) then
      if oYesNo(handle,'Excluir Composição ?') = mrYes then
         if CAD_PRO_CMPCMP_IDFK.AsInteger > 0 then
         begin
           CAD_PRO_CMP.Edit;
           CAD_PRO_CMPFLAG.Value := 1;
           CAD_PRO_CMP.Post;
         end else
         CAD_PRO_CMP.Delete;
end;

procedure TFrmCAD_PRO_EDI.SICMP_INSClick(Sender: TObject);
begin
  if ((ActiveControl is TdxDBGrid) or (ActiveControl is TSpeedBar)) and { Focus Control }
      (SBEdicao.Enabled) and { Habilitado }
      (CAD_PRO_CMP.State = dsBrowse) and { DataSet }
      (not ALockWindowUpdate) then { SQL Injection }

  oAppend(CAD_PRO_CMP);
end;

procedure TFrmCAD_PRO_EDI.SICMP_ALTClick(Sender: TObject);
begin
  if (SBEdicao.Enabled) and { Habilitado }
     (CAD_PRO_CMP.RecNo > 0) and { Registro }
     (CAD_PRO_CMP.State = dsBrowse) and { DataSet }
     (not ALockWindowUpdate) then { SQL Injection }

  oEdit(CAD_PRO_CMP);
end;

procedure TFrmCAD_PRO_EDI.SICMP_SAVClick(Sender: TObject);
begin
  if (SBEdicao.Enabled) and { Habilitado }
     (CAD_PRO_CMP.State in [dsInsert,dsEdit]) and { DataSet }
     (not ALockWindowUpdate) then { SQL Injection }

  oPost(CAD_PRO_CMP);
end;

procedure TFrmCAD_PRO_EDI.SICMP_CANClick(Sender: TObject);
begin
  if (SBEdicao.Enabled) and { Habilitado }
     (CAD_PRO_CMP.State in [dsInsert,dsEdit]) and { DataSet }
     (not ALockWindowUpdate) then { SQL Injection }

  oCancel(CAD_PRO_CMP);
end;

procedure TFrmCAD_PRO_EDI.DBGEdicaoGRD_CFORValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGEdicao.EditingText := Trim(DBGEdicao.EditingText);
  if (Edicao.State in [dsInsert,dsEdit]) and (not oEmpty(DBGEdicao.EditingText))then
      EdicaoGRD_CFOR.Value := DBGEdicao.EditingText;
end;

procedure TFrmCAD_PRO_EDI.DBGEdicaoGRD_DCORValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGEdicao.EditingText := Trim(DBGEdicao.EditingText);
  if (Edicao.State in [dsInsert,dsEdit]) and (not oEmpty(DBGEdicao.EditingText))then
  begin
    oRTransact(TConsulta);

    with SQLFKConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID,ESCALA,DESCRICAO FROM TAB_COR');
      SQL.Add('WHERE  DESCRICAO = '''+DBGEdicao.EditingText+'''');
      ExecQuery;

      EdicaoGRD_CCOR.Value := Current.ByName('ID').AsInteger;
      EdicaoGRD_PCOR.Value := Current.ByName('ESCALA').AsString;
      EdicaoGRD_DCOR.Value := Current.ByName('DESCRICAO').AsString;

      if Eof then
      DataBaseError('Cor não cadastrada ou incorreta !');
    end;
  end;
end;

procedure TFrmCAD_PRO_EDI.DBGEdicaoGRD_DESTValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGEdicao.EditingText := Trim(DBGEdicao.EditingText);
  if (Edicao.State in [dsInsert,dsEdit]) and (not oEmpty(DBGEdicao.EditingText))then
  begin
    oRTransact(TConsulta);

    with SQLFKConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID,REFERENCIA,DESCRICAO FROM TAB_STA_CAD WHERE DESCRICAO = '''+DBGEdicao.EditingText+'''');
      ExecQuery;

      EdicaoGRD_CDST.Value := Current.Vars[0].AsInteger;
      EdicaoGRD_REST.Value := Current.Vars[1].AsString;
      EdicaoGRD_DEST.Value := Current.Vars[2].AsString;

      if Eof then
         DataBaseError('Status não cadastro ou incorreto !');
    end;
  end;
end;

procedure TFrmCAD_PRO_EDI.ACTCheckConstraintsExecute(Sender: TObject);
begin
  inherited;

  { ARTIGOS }
  if EDArtigo.Text = EmptyStr then
  oException(EDArtigo,'Código do artigo não informado !');

  { DESCRIÇÃO }
  if EDDescricao.Text = EmptyStr then
  oException(EDDescricao,'Descrição do artigo não informado !');

  { UNIDADE }
  if IEUCOM.Text = EmptyStr then
  begin
    PCPrincipal.ActivePage := TSMedidas;
    oException(IEUCOM,'Unidade de medida não informada !');
  end;

  { ORIGEM }
  if (Pos(IEORIG.Text,'1267') > 0) and ((IECPAIS.Text =  '1058') or (Pos(IEORIG.Text,'1267') = 0) and (IECPAIS.Text <> '1058')) then
  begin
    PCPrincipal.ActivePage := TSMedidas;
    oException(IECPAIS,'Origem da mercadoria em desacordo com o país fabricante !');
  end;

  { NCM }
  if (PENCM.Text <> EmptyStr) and (Length(PENCM.Text) < 8) then
  begin
    PCPrincipal.ActivePage := TSMedidas;
    oException(PENCM,'NCM informado de forma incorreta !');
  end;

  { PRODUTOS }
  if (Edicao.State in [dsInsert,dsEdit] ) then
  if (EdicaoGRD_DGRD.AsString = EmptyStr) and (EdicaoGRD_DCOR.AsString = EmptyStr) then Edicao.Cancel else
  Edicao.Post;

  { COMPOSIÇÕES }
  if (CAD_PRO_CMP.State in [dsInsert,dsEdit] ) then
  if (CAD_PRO_CMPCMP_DEPK.AsString = EmptyStr) or (CAD_PRO_CMPCMP_QTDE.AsFloat = 0) then CAD_PRO_CMP.Cancel else
  CAD_PRO_CMP.Post;

  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT FIRST 1 FCMP(' + AIDG_IDEV_CMP + ') AS CMP_PAD FROM RDB$DATABASE');
    ExecQuery;
    EDCMP_PAD.Text := Current.Vars[0].AsString;
  end;
end;

procedure TFrmCAD_PRO_EDI.ACTCheckErrorsExecute(Sender: TObject);
begin
  inherited;

  EDTitulo.ValidateEdit;
  EDDescricao.ValidateEdit;
end;

procedure TFrmCAD_PRO_EDI.EDArtigoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  EDArtigo.Text := Trim(EDArtigo.Text);

  if EDArtigo.Text = EmptyStr then
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
    if Edicao.RecNo > 0 then
    begin
      Edicao.First;
      while not Edicao.Eof do
      begin
        Edicao.Edit;
        Edicao.Post;
        Edicao.Next;
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
             Edicao.Append;
             EdicaoGRD_RGRD.Value := Current.Vars[0].AsString;
             EdicaoGRD_DGRD.Value := Current.Vars[1].AsString;
             Edicao.Post;
             Next;
           end;
         end else
         begin
           Edicao.Append;
           Edicao.Post;
         end;

      EDArtigo.Enabled := False;
    end;
  except
    on E: Exception do
    begin
      oRTransact(TSEdicao,ltRollback);
      oErro(Handle,'Erro ao tentar registrar artigo !'+#13+
                    E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
    end;
  end;
end;

procedure TFrmCAD_PRO_EDI.EDDescricaoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if EDDescricao.Text <> EmptyStr then
     try
       oOTransact(TConsulta);
       with SQLPKConsulta do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT   FIRST 1 PK.ARTIGO,PK.DTCA');
         SQL.Add('FROM     CAD_PRO AS PK');

         SQL.Add('WHERE    PK.DECP   =  ''' + EDDescricao.Text + '''');
         SQL.Add('AND      PK.ARTIGO <> ''' + EDArtigo.Text    + '''');

         SQL.Add('AND      PK.CDST   <> 43'); { Cancelado }
         SQL.Add('AND      PK.CDST   <> 85'); { Inativo }

         SQL.Add('ORDER BY PK.DTCA DESC');
         ExecQuery;

         if not Eof then
         oException(EDDescricao,'Falha ao tentar modificar a descrição do artigo !' + #13   +
                                'Descrição já cadastrada em outro artigo !'         + #13   + #13 +
                                'Artigo: ' + Current.ByName('ARTIGO').AsString + '. Desde ' + FormatDateTime('dd/mm/yy',Current.ByName('DTCA').AsDateTime));

         REC_SHE_DEF.Editing := True;
       end;
     finally
       oCTransact(TConsulta);
     end;
end;

procedure TFrmCAD_PRO_EDI.EDTituloValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if EDTitulo.Text <> EmptyStr then
     try
       oOTransact(TConsulta);
       with SQLPKConsulta do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT   FIRST 1 PK.ARTIGO,PK.DTCA');
         SQL.Add('FROM     CAD_PRO AS PK');

         SQL.Add('WHERE    PK.DTCP   =  ''' + EDTitulo.Text + '''');
         SQL.Add('AND      PK.ARTIGO <> ''' + EDArtigo.Text + '''');

         SQL.Add('AND      PK.CDST   <> 43'); { Cancelado }
         SQL.Add('AND      PK.CDST   <> 85'); { Inativo }

         SQL.Add('ORDER BY PK.DTCA DESC');
         ExecQuery;

         if not Eof then
         oException(EDDescricao,'Falha ao tentar modificar o título do artigo !'    + #13   +
                                'Título já cadastrada em outro artigo !'            + #13   + #13 +
                                'Artigo: ' + Current.ByName('ARTIGO').AsString + '. Desde ' + FormatDateTime('dd/mm/yy.',Current.ByName('DTCA').AsDateTime));

         REC_SHE_DEF.Editing := True;
       end;
     finally
       oCTransact(TConsulta);
     end;
end;

procedure TFrmCAD_PRO_EDI.IECDSTValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not ALockWindowUpdate then
     try
       with SQLSEdicao do
       begin
         Close;
         SQL.Clear;
         SQL.Add('UPDATE CAD_PRO_GRD');
         SQL.Add('SET');

         SQL.Add('GRD_CDST = ''' + IECDST.Text + ''',');
         SQL.Add('GRD_REST = ''' + IECDST.HelpKeyword + ''',');
         SQL.Add('GRD_DEST = ''' + IECDST.Descriptions[IECDST.Values.IndexOf(IECDST.Text)] + '''');
         ExecQuery;
       end;
       oRTransact(TSEdicao);
       REC_SHE_DEF.Editing := True;
     except
       on E: Exception do
       begin
         oRTransact(TSEdicao);
         oException(IECDST,'Falha ao tentar modificar a situação do artigo !' + #13 +
                           'Erro: ' + E.Message);
       end;
     end;
end;

procedure TFrmCAD_PRO_EDI.IEIDSCTValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT TAB_SCT.ID,TAB_SCT.DESCRICAO,TAB_SCT.NCM,TRIBIPI,VUPRC_PAD,VUPRC_PRZ,VUPRC_PRO,PESO,PSCN,METRO,GRAMATURA,RENDIMENTO,LARG_U,LARG_T');
      SQL.Add('FROM   TAB_SCT');
      SQL.Add('LEFT   JOIN TAB_NCM ON (TAB_NCM.NCM = TAB_SCT.NCM)');
      SQL.Add('WHERE  TAB_SCT.ID = '''+IEIDSCT.Text+'''');
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
      CEVPRC_PAD_PRZ.Value := SQLConsulta.Current.ByName('VUPRC_PRZ').AsCurrency;

      if SQLConsulta.Current.ByName('VUPRC_PRO').AsCurrency > 0 then
      CEVPRC_PAD_PRO.Value := SQLConsulta.Current.ByName('VUPRC_PRO').AsCurrency;

      { Medidas Principais }
      if SQLConsulta.Current.ByName('PESO').AsCurrency > 0 then
      CEPESO.Value := SQLConsulta.Current.ByName('PESO').AsCurrency;

      if SQLConsulta.Current.ByName('PSCN').AsCurrency > 0 then
      CEPSCN.Value := SQLConsulta.Current.ByName('PSCN').AsCurrency;

      if SQLConsulta.Current.ByName('METRO').AsCurrency > 0 then
      CEMetros.Value := SQLConsulta.Current.ByName('METRO').AsCurrency;

      if SQLConsulta.Current.ByName('GRAMATURA').AsCurrency > 0 then
      CEGramatura.Value := SQLConsulta.Current.ByName('GRAMATURA').AsCurrency;

      if SQLConsulta.Current.ByName('RENDIMENTO').AsCurrency > 0 then
      CERend.Value := SQLConsulta.Current.ByName('RENDIMENTO').AsCurrency;

      { Outras Medidas }
      if SQLConsulta.Current.ByName('LARG_U').AsCurrency > 0 then
      CELARG_U.Value := SQLConsulta.Current.ByName('LARG_U').AsCurrency;

      if SQLConsulta.Current.ByName('LARG_T').AsCurrency > 0 then
      CELARG_T.Value := SQLConsulta.Current.ByName('LARG_T').AsCurrency;

      oRTransact(TSEdicao,ltRead_Only);
      while not Edicao.Eof do
      begin
        Edicao.Edit;
        EdicaoGRD_ISCT.Value := SQLConsulta.Current.Vars[0].AsInteger;
        EdicaoGRD_DSCT.Value := SQLConsulta.Current.Vars[1].AsString;

        if SQLConsulta.Current.Vars[4].AsCurrency > 0 then
        EdicaoGRD_PREC.Value := SQLConsulta.Current.Vars[4].AsCurrency;
        Edicao.Post;
        Edicao.Next;
      end;
      oRTransact(TSEdicao,ltRead_Only_Release_Commit);
      _PUMKP;

      IEIDSCT.Modified := False;
    except
      on E: Exception do
      begin
        oRTransact(TSEdicao,ltRead_Only_Release_Rollback);
        oErro(Handle,'Erro ao tentar registrar sub categoria !'+#13+
                      E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
      end;
    end;
end;

procedure TFrmCAD_PRO_EDI.PENCMValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  ACTPesquisaNCM.Execute;
end;

procedure TFrmCAD_PRO_EDI.ACTPesquisaNCMExecute(Sender: TObject);
begin
  PENCM.Text := oCoalesce(PENCM.Text,'00000000');

  try
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

      SQL.Add('''' + RECParametros.EP_ID           + ''',');
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

  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);

      oException(Nil,'Falha ao tentar atualizar ncm !' +#13+
                     'Favor entrar em contato com o administrador do sistema.' +#13 +#13+
                      E.Message);
    end;
  end;
end;

procedure TFrmCAD_PRO_EDI.ACTPesquisaInstLavagemExecute(Sender: TObject);
begin
  try
    TFrmProduto_Instrucao_Lavagem._ExecForm(Nil,FrmProduto_Instrucao_Lavagem,False,fsNormal);
  finally
    if FrmProduto_Instrucao_Lavagem.Imagem <> nil then
    begin
      TImage(Sender).Picture := FrmProduto_Instrucao_Lavagem.Imagem.Picture;
      TImage(Sender).Hint    := FrmProduto_Instrucao_Lavagem.Imagem.Hint;
      TImage(Sender).Tag     := FrmProduto_Instrucao_Lavagem.Imagem.Tag;

      BILA_BMP.Tag := 1;

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

procedure TFrmCAD_PRO_EDI.EdicaoBeforeOpen(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmCAD_PRO_EDI.EdicaoAfterOpen(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmCAD_PRO_EDI.EdicaoBeforeInsert(DataSet: TDataSet);
begin
  Edicao.Fields[0].Tag := Edicao.RecNo;
end;

procedure TFrmCAD_PRO_EDI.EdicaoAfterInsert(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  DBGEdicaoGRD_DCOR.Field.FocusControl;
end;

procedure TFrmCAD_PRO_EDI.EdicaoNewRecord(DataSet: TDataSet);
begin
  Edicao.FieldByName('ID').Value := 0;

  EdicaoGRD_IPRO.Value := 0;
  EdicaoGRD_CART.Value := EDArtigo.Text;
  EdicaoGRD_TITU.Value := EDTITULO.Text;

  EdicaoGRD_CFOR.Value := EDCDCF.Text;
  EdicaoGRD_FBAR.Value := EDCEANCF.Text;

  EdicaoGRD_PREC.Value := CEVPRC_PAD.Value;
  EdicaoGRD_PPRZ.Value := CEVPRC_PAD_PRZ.Value;
  EdicaoGRD_PPRO.Value := CEVPRC_PAD_PRO.Value;

  EdicaoGRD_ISCT.Value := StrToInt(IEIDSCT.Text);
  EdicaoGRD_DSCT.Value := IEIDSCT.Descriptions[IEIDSCT.Values.IndexOf(IEIDSCT.Text)];

  EdicaoGRD_IMKP.Value := StrToInt(IEMKP_IDML.Text);
  EdicaoGRD_DMKP.Value := IEMKP_IDML.Descriptions[IEMKP_IDML.Values.IndexOf(IEMKP_IDML.Text)];

  EdicaoGRD_IMK2.Value := StrToInt(IEMKP_IDSP.Text);
  EdicaoGRD_DMK2.Value := IEMKP_IDSP.Descriptions[IEMKP_IDSP.Values.IndexOf(IEMKP_IDSP.Text)];

  EdicaoGRD_CDST.Value := StrToInt(IECDST.Text);
  EdicaoGRD_REST.Value := IECDST.HelpKeyword;
  EdicaoGRD_DEST.Value := IECDST.Descriptions[IECDST.Values.IndexOf(IECDST.Text)];

  EdicaoFLAG.Value  := 0;
  EdicaoIDIMG.Value := 0;

  if not ALockWindowUpdate then
  REC_SHE_DEF.Editing := True;
end;

procedure TFrmCAD_PRO_EDI.EdicaoBeforeEdit(DataSet: TDataSet);
begin
  Edicao.Fields[0].Tag := Edicao.RecNo;
end;

procedure TFrmCAD_PRO_EDI.EdicaoAfterEdit(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmCAD_PRO_EDI.EdicaoBeforeDelete(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmCAD_PRO_EDI.EdicaoAfterDelete(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  oRefresh(Edicao);
end;

procedure TFrmCAD_PRO_EDI.EdicaoBeforePost(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    EdicaoGRD_DCOR.Value := Trim(EdicaoGRD_DCOR.AsString);
    if (EdicaoGRD_DCOR.AsString <> EmptyStr) and (EdicaoGRD_CCOR.AsInteger = 0) then
        DataBaseError('Cor não Encontrada ou Incorreta !');

    EdicaoGRD_CART.Value := EDArtigo.Text;
    EdicaoGRD_CPRO.Value := EDArtigo.Text;

    if not oEmpty(EdicaoGRD_CGRD.AsString) then
       EdicaoGRD_CPRO.Value := EdicaoGRD_CPRO.AsString+'.'+EdicaoGRD_CGRD.AsString;

    if not oEmpty(EdicaoGRD_DCOR.AsString) then
       EdicaoGRD_CPRO.Value := EdicaoGRD_CPRO.AsString+'.'+oStrZero(EdicaoGRD_CCOR.AsInteger,4);

    with SQLSConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_PRO_GRD');
      SQL.Add('WHERE  GRD_CPRO = '''+EdicaoGRD_CPRO.AsString+'''');
      SQL.Add('AND         ID <> '''+EdicaoID.AsString      +'''');
      ExecQuery;
      
      if not Eof then
         DataBaseError('Grade já Cadastrada !');
    end;
                             
    EdicaoDGCP.Value := TRIM(EdicaoGRD_DGRD.AsString+' '+TRIM(EdicaoGRD_DCOR.AsString+' '+TRIM(EdicaoGRD_CGRD.AsString+' '+TRIM(EdicaoGRD_RGRD.AsString))));
  end;
end;

procedure TFrmCAD_PRO_EDI.EdicaoAfterPost(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    REC_SHE_DEF.Editing := True;
    oRefresh(CAD_PRO_CMP);
  end;
end;

procedure TFrmCAD_PRO_EDI.EdicaoBeforeCancel(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  if Edicao.Fields[0].Tag = 0 then
  begin
    Edicao.Close;
    Edicao.Open;

    ABORT;
  end;
end;

procedure TFrmCAD_PRO_EDI.EdicaoAfterCancel(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmCAD_PRO_EDI.EdicaoBeforeClose(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmCAD_PRO_EDI.EdicaoAfterClose(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmCAD_PRO_EDI.EdicaoBeforeScroll(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmCAD_PRO_EDI.EdicaoAfterScroll(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmCAD_PRO_EDI.EdicaoCalcFields(DataSet: TDataSet);
begin
  EdicaoC_ID.Value := Edicao.RecNo;
end;

procedure TFrmCAD_PRO_EDI.EdicaoUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmCAD_PRO_EDI.EdicaoEditError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmCAD_PRO_EDI.EdicaoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmCAD_PRO_EDI.EdicaoDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmCAD_PRO_EDI.DSTEdicaoDataChange(Sender: TObject;
  Field: TField);
begin
  if not ALockWindowUpdate then
  begin
    { COLUMN FIT }
    DBGEdicao.ApplyBestFit(DBGEdicaoGRD_CPRO);
    DBGEdicao.ApplyBestFit(DBGEdicaoGRD_DEST);
    DBGEdicao.ApplyBestFit(DBGEdicaoGRD_DCOR);
    DBGEdicao.ApplyBestFit(DBGEdicaoGRD_DGRD);
    DBGEdicao.ApplyBestFit(DBGEdicaoGRD_DSCT);
    DBGEdicao.ApplyBestFit(DBGEdicaoGRD_TITU);

    _oLoadJPG(EdicaoGRD_IPRO,EdicaoGRD_FOTO,IMG_SKU,True); { True - força visualização }
  end;   
end;

procedure TFrmCAD_PRO_EDI.DSTEdicaoStateChange(Sender: TObject);
begin
  if not ALockWindowUpdate then
  begin
    { MENU PRINCIPAL }
    ACTRefresh.Enabled    := False;
    ACTPesquisa.Enabled   := False;
    ACTRelatorios.Enabled := False;
    ACTSaida.Enabled      := not (Edicao.State in [dsInsert,dsEdit]);

    { MENU DE EDIÇÕES }
    oState(Edicao,SBEdicao);

    { GRID }
    if Edicao.State = dsBrowse then
    begin
      DBGEdicao.OptionsBehavior := ([edgoAutoSearch,edgoAutoSort,edgoCaseInsensitive,edgoCollapsedReload,edgoDragCollapse,edgoDragExpand,edgoDragScroll,edgoEnterShowEditor,edgoImmediateEditor,edgoSeekDetail,edgoShowHourGlass,edgoTabThrough,edgoVertThrough]);
      DBGEdicao.OptionsView     := ([edgoAutoCalcPreviewLines,edgoBandHeaderWidth,edgoInvertSelect,edgoHotTrack,edgoPreview,edgoUseBitmap]);
    end else
    begin
      DBGEdicao.OptionsBehavior := ([edgoAutoSort,edgoCaseInsensitive,edgoCollapsedReload,edgoDragCollapse,edgoDragExpand,edgoDragScroll,edgoEditing,edgoEnterShowEditor,edgoImmediateEditor,edgoSeekDetail,edgoShowHourGlass,edgoTabThrough,edgoVertThrough]);
      DBGEdicao.OptionsView     := ([edgoAutoCalcPreviewLines,edgoBandHeaderWidth,edgoInvertSelect,edgoHotTrack,edgoPreview,edgoUseBitmap]);
    end;
  end;

  { RODATÉ }
  SBRodape.Panels[0].Text := IFThen(Edicao.State = dsInsert  ,'Incluindo ...',
                             IFThen(Edicao.State = dsEdit    ,'Editando ...' ,
                             IFThen(Edicao.State = dsInactive,'Inativo','Consulta')));
end;

procedure TFrmCAD_PRO_EDI.DBGEdicaoBackgroundDrawEvent(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect);
var
  Text : String;
begin
  with ACanvas do
  begin
    Brush.Color := clBtnShadow;
    FillRect(ARect);

    if (Sender as TdxDBGrid).GroupColumnCount = 0 then
    begin
      Font.Color := clMenu;
      Text := 'Arraste as colunas para poder agrupá-las.';
      TextOut(ARect.Left, ARect.Top, Text);
    end;
  end;
end;

procedure TFrmCAD_PRO_EDI.DBGEdicaoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Zebra }
    if ANode.Values[DBGEdicaoC_ID.Index] <> Null then
    if ANode.Values[DBGEdicaoC_ID.Index] mod 2 <> 0 then
       AColor := $00F8F8F8 else
       AColor := clHighLightText;

    if LeftStr(ANode.Values[DBGEdicaoGRD_REST.Index],1) = 'A' then
    begin
      AColor      := $00B9FFB9;
      AFont.Color := clBlack;
    end else

    if LeftStr(ANode.Values[DBGEdicaoGRD_REST.Index],1) = 'P' then
    begin
      AColor      := clInfoBk;
      AFont.Color := clBlack;
    end else
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end;
  end;

  if ANode.Selected then
  if Edicao.State in [dsInsert,dsEdit] then
  begin
    AColor      := clInfoBk;
    AFont.Color := clWindowText;
  end;

  if ASelected then
  if Edicao.State in [dsInsert,dsEdit] then
  begin
    AColor      := $00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;

procedure TFrmCAD_PRO_EDI.DBGEdicaoDblClick(Sender: TObject);
begin
  if Edicao.State = dsBrowse then
  begin
    if ACTMPEdit.Enabled then
       ACTMPEdit.Execute else

    if ACTMEEdit.Enabled then
       ACTMEEdit.Execute;
  end;
end;

procedure TFrmCAD_PRO_EDI.DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_return: if Edicao.State in [dsInsert,dsEdit] then
                  begin
                    DBGEdicao.FocusedColumn   := DBGEdicao.FocusedColumn + 1;
                    if DBGEdicao.FocusedColumn > DBGEdicao.ColumnCount   - 1 then
                    begin
                      Edicao.Next;

                      if Edicao.Eof then
                         Edicao.Append else

                      DBGEdicao.FocusedColumn := DBGEdicao.FocusedColumn + 1;
                    end;
                  end else
                  ACTMEEdit.Execute;
  end;
end;

end.
