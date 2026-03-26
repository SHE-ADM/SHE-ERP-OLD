unit prelatorio_geral;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, ImgList, StdCtrls,
  ComCtrls, ExtCtrls,  dxDBGrid, dxDBCtrl, dxEditor, dxExEdtr, dxEdLib,
  QRCtrls, QuickRpt, IBDatabase, DateUtils, dxPageControl, dxCntner,
  Math, StrUtils, QRExport, QRPDFFilt, rxSpeedbar;

type
  Tfrmrelatorio_geral = class(TForm)
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    BSai: TSpeedItem;
    BVis: TSpeedItem;
    BPri: TSpeedItem;
    BSav: TSpeedItem;
    BGra: TSpeedItem;
    PNLPrincipal: TPanel;
    consulta: TIBQuery;
    imageOPC: TImageList;
    ImageList1: TImageList;
    ibTRA: TIBTransaction;
    expXLS: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    tSHEILD: TIBTransaction;
    consulta_s: TIBQuery;
    PDF: TQRPDFFilter;
    pcMAIN: TdxPageControl;
    tsCAD_CLI: TdxTabSheet;
    Shape53: TShape;
    Shape54: TShape;
    clCAD_CLI_DATA: TLabel;
    Shape55: TShape;
    Shape56: TShape;
    clCAD_CLI_TREL: TLabel;
    Shape69: TShape;
    Shape70: TShape;
    clCAD_CLI_DCLI: TLabel;
    Shape75: TShape;
    clCAD_CLI_DCID: TLabel;
    Shape76: TShape;
    Shape77: TShape;
    clCAD_CLI_ESTA: TLabel;
    Shape78: TShape;
    Shape139: TShape;
    clCAD_CLI_REGI: TLabel;
    Shape140: TShape;
    Shape31: TShape;
    clCAD_CLI_DREP: TLabel;
    Shape32: TShape;
    Shape33: TShape;
    clCAD_CLI_DVEN: TLabel;
    Shape34: TShape;
    Shape189: TShape;
    clCAD_CLI_CDEP: TLabel;
    Shape190: TShape;
    cbCAD_CLI_TREL: TdxImageEdit;
    cbCAD_CLI_DATA: TdxImageEdit;
    cbCAD_CLI_ESTA: TdxImageEdit;
    cbCAD_CLI_REGI: TdxImageEdit;
    cbCAD_CLI_DCLI: TdxPickEdit;
    cbCAD_CLI_DCID: TdxPickEdit;
    cbCAD_CLI_DREP: TdxPickEdit;
    cbCAD_CLI_DVEN: TdxPickEdit;
    cbCAD_CLI_CDEP: TdxImageEdit;
    tsCAD_TRA: TdxTabSheet;
    tsCAD_REP: TdxTabSheet;
    Bevel1: TBevel;
    Shape23: TShape;
    Shape24: TShape;
    clCAD_REP_DATA: TLabel;
    Shape25: TShape;
    Shape26: TShape;
    clCAD_REP_TREL: TLabel;
    Shape29: TShape;
    Shape30: TShape;
    clCAD_REP_DREP: TLabel;
    Shape27: TShape;
    Shape28: TShape;
    clCAD_REP_REGI: TLabel;
    Shape197: TShape;
    Shape198: TShape;
    clCAD_REP_CID: TLabel;
    cbCAD_REP_TREL: TdxImageEdit;
    cbCAD_REP_DATA: TdxImageEdit;
    cbCAD_REP_DREP: TdxImageEdit;
    cbCAD_REP_REGI: TdxImageEdit;
    cbCAD_REP_CID: TdxPickEdit;
    tsCAD_PRO: TdxTabSheet;
    Bevel3: TBevel;
    Shape47: TShape;
    Shape48: TShape;
    clCAD_PRO_TREL: TLabel;
    Shape57: TShape;
    Shape58: TShape;
    clCAD_PRO_CART1: TLabel;
    Shape59: TShape;
    Shape60: TShape;
    clCAD_PRO_DGRP: TLabel;
    Shape65: TShape;
    Shape66: TShape;
    clCAD_PRO_DCOL: TLabel;
    Shape45: TShape;
    Shape46: TShape;
    clCAD_PRO_DATA: TLabel;
    Shape61: TShape;
    Shape62: TShape;
    clCAD_PRO_DCAT: TLabel;
    Shape63: TShape;
    Shape64: TShape;
    clCAD_PRO_DPRO: TLabel;
    Shape107: TShape;
    Shape108: TShape;
    clCAD_PRO_TEST: TLabel;
    Shape49: TShape;
    Shape50: TShape;
    clCAD_PRO_DEMP: TLabel;
    Shape109: TShape;
    Shape110: TShape;
    Label14: TLabel;
    Shape168: TShape;
    Shape170: TShape;
    clCAD_PRO_DUNI: TLabel;
    Shape239: TShape;
    Shape240: TShape;
    clCAD_PRO_CART2: TLabel;
    cbCAD_PRO_TREL: TdxImageEdit;
    cbCAD_PRO_DGRP: TdxImageEdit;
    cbCAD_PRO_DCOL: TdxImageEdit;
    cbCAD_PRO_DATA: TdxImageEdit;
    cbCAD_PRO_DCAT: TdxImageEdit;
    cbCAD_PRO_CART1: TdxPickEdit;
    cbCAD_PRO_DPRO: TdxPickEdit;
    cbCAD_PRO_TEST: TdxImageEdit;
    cbCAD_PRO_DEMP: TdxImageEdit;
    cbCAD_PRO_OBSE: TdxMemo;
    cbCAD_PRO_DUNI: TdxImageEdit;
    cbCAD_PRO_CART2: TdxPickEdit;
    tsVEN_OCA: TdxTabSheet;
    Bevel4: TBevel;
    Shape81: TShape;
    Shape82: TShape;
    clVEN_OCA_TREL: TLabel;
    Shape83: TShape;
    Shape84: TShape;
    clVEN_OCA_DATA: TLabel;
    cbVEN_OCA_TREL: TdxImageEdit;
    cbVEN_OCA_DATA: TdxImageEdit;
    tsVEN_PRG: TdxTabSheet;
    Bevel5: TBevel;
    Shape93: TShape;
    Shape94: TShape;
    clVEN_PRG_TREL: TLabel;
    Shape103: TShape;
    Shape104: TShape;
    clVEN_PRG_DATA: TLabel;
    cbVEN_PRG_TREL: TdxImageEdit;
    cbVEN_PRG_DATA: TdxImageEdit;
    tsVEN_PED: TdxTabSheet;
    Bevel2: TBevel;
    Shape1: TShape;
    Shape2: TShape;
    clVEN_PED_TREL: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    clVEN_PED_DATA: TLabel;
    cbVEN_PED_TREL: TdxImageEdit;
    cbVEN_PED_DATA: TdxImageEdit;
    tsNFE_CAB: TdxTabSheet;
    Shape35: TShape;
    Bevel6: TBevel;
    Shape21: TShape;
    Shape22: TShape;
    clNFE_CAB_TREL: TLabel;
    Shape51: TShape;
    Shape52: TShape;
    clNFE_CAB_TNFE: TLabel;
    Shape121: TShape;
    Shape122: TShape;
    clNFE_CAB_STA: TLabel;
    Shape123: TShape;
    Shape124: TShape;
    clNFE_CAB_DFAV: TLabel;
    Shape125: TShape;
    Shape126: TShape;
    clNFE_CAB_DATA: TLabel;
    Shape127: TShape;
    Shape128: TShape;
    clNFE_CAB_DVEN: TLabel;
    Shape129: TShape;
    Shape130: TShape;
    clNFE_CAB_DREP: TLabel;
    Shape131: TShape;
    Shape132: TShape;
    clNFE_CAB_DTRA: TLabel;
    Shape133: TShape;
    Shape134: TShape;
    clNFE_CAB_CPRO: TLabel;
    Shape101: TShape;
    Shape102: TShape;
    clNFE_CAB_DEMP: TLabel;
    Label1: TLabel;
    Shape36: TShape;
    Shape187: TShape;
    Shape188: TShape;
    clNFE_CAB_DUNI: TLabel;
    cbNFE_CAB_TREL: TdxImageEdit;
    cbNFE_CAB_STA: TdxImageEdit;
    cbNFE_CAB_DATA: TdxImageEdit;
    cbNFE_CAB_DFAV: TdxPickEdit;
    cbNFE_CAB_DVEN: TdxPickEdit;
    cbNFE_CAB_DREP: TdxPickEdit;
    cbNFE_CAB_DTRA: TdxPickEdit;
    cbNFE_CAB_CPRO: TdxPickEdit;
    cbNFE_CAB_TNFE: TdxPickEdit;
    cbNFE_CAB_DEMP: TdxImageEdit;
    edqrkg: TdxMaskEdit;
    cbrkg1: TdxPickEdit;
    cbrkg2: TdxPickEdit;
    cbNFE_CAB_DUNI: TdxPickEdit;
    tsCAI_MOV: TdxTabSheet;
    Bevel7: TBevel;
    Shape135: TShape;
    Shape136: TShape;
    clCAI_MOV_TREL: TLabel;
    Shape137: TShape;
    Shape138: TShape;
    clCAI_MOV_CDCX: TLabel;
    Shape141: TShape;
    Shape142: TShape;
    clCAI_MOV_DCLI: TLabel;
    Shape143: TShape;
    Shape144: TShape;
    clCAI_MOV_DATA: TLabel;
    Shape145: TShape;
    Shape146: TShape;
    clCAI_MOV_DVEN: TLabel;
    Shape147: TShape;
    Shape148: TShape;
    clCAI_MOV_DREP: TLabel;
    Shape151: TShape;
    Shape152: TShape;
    clCAI_MOV_CPRO: TLabel;
    Shape7: TShape;
    Shape8: TShape;
    clCAI_MOV_STFI: TLabel;
    Shape11: TShape;
    Shape12: TShape;
    clCAI_MOV_DFOR: TLabel;
    Shape13: TShape;
    Shape14: TShape;
    clCAI_MOV_STCO: TLabel;
    Shape15: TShape;
    Shape16: TShape;
    clCAI_MOV_TIPO: TLabel;
    cbCAI_MOV_TREL: TdxImageEdit;
    cbCAI_MOV_DATA: TdxImageEdit;
    cbCAI_MOV_DCLI: TdxPickEdit;
    cbCAI_MOV_CDCX: TdxImageEdit;
    cbCAI_MOV_DVEN: TdxPickEdit;
    cbCAI_MOV_DREP: TdxPickEdit;
    cbCAI_MOV_CPRO: TdxPickEdit;
    cbCAI_MOV_STFI: TdxImageEdit;
    cbCAI_MOV_DFOR: TdxPickEdit;
    cbCAI_MOV_STCO: TdxImageEdit;
    cbCAI_MOV_TIPO: TdxPickEdit;
    tsFIN_DUP: TdxTabSheet;
    Bevel8: TBevel;
    Shape3: TShape;
    Shape4: TShape;
    clFIN_DUP_TREL: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    clFIN_DUP_DATA: TLabel;
    Shape17: TShape;
    Shape18: TShape;
    clFIN_DUP_STFI: TLabel;
    Shape243: TShape;
    Shape244: TShape;
    clFIN_DUP_IDBX: TLabel;
    cbFIN_DUP_TREL: TdxImageEdit;
    cbFIN_DUP_DATA: TdxImageEdit;
    cbFIN_DUP_STFI: TdxImageEdit;
    cbFIN_DUP_IDBX: TdxImageEdit;
    tsPAG_COM: TdxTabSheet;
    Bevel9: TBevel;
    Shape19: TShape;
    Shape20: TShape;
    clPAG_COM_TREL: TLabel;
    Shape155: TShape;
    Shape156: TShape;
    clPAG_COM_DATA: TLabel;
    Shape149: TShape;
    Shape150: TShape;
    clPAG_COM_DESC: TLabel;
    cbPAG_COM_TREL: TdxImageEdit;
    cbPAG_COM_DATA: TdxImageEdit;
    cbPAG_COM_DESC: TdxMaskEdit;
    tsCAD_FUN: TdxTabSheet;
    Bevel10: TBevel;
    Shape67: TShape;
    Shape68: TShape;
    clCAD_FUN_TREL: TLabel;
    Shape71: TShape;
    Shape72: TShape;
    clCAD_FUN_DATA: TLabel;
    Shape73: TShape;
    Shape74: TShape;
    clCAD_FUN_DCAR: TLabel;
    Shape79: TShape;
    Shape80: TShape;
    clCAD_FUN_APEL: TLabel;
    Shape153: TShape;
    Shape154: TShape;
    clCAD_FUN_MES: TLabel;
    Shape157: TShape;
    Shape158: TShape;
    clCAD_FUN_ANO: TLabel;
    cbCAD_FUN_TREL: TdxImageEdit;
    cbCAD_FUN_DATA: TdxImageEdit;
    cbCAD_FUN_DCAR: TdxImageEdit;
    cbCAD_FUN_APEL: TdxPickEdit;
    cbCAD_FUN_MES: TdxPickEdit;
    cbCAD_FUN_ANO: TdxPickEdit;
    tsVEN_PRC: TdxTabSheet;
    Bevel11: TBevel;
    Shape159: TShape;
    Shape160: TShape;
    clVEN_PRC_TREL: TLabel;
    Shape161: TShape;
    Shape162: TShape;
    clVEN_PRC_DATA: TLabel;
    Shape199: TShape;
    clVEN_PRC_CART: TLabel;
    Shape200: TShape;
    Shape201: TShape;
    clVEN_PRC_STFI: TLabel;
    Shape202: TShape;
    Shape203: TShape;
    clVEN_PRC_DFOR: TLabel;
    Shape204: TShape;
    Shape205: TShape;
    clVEN_PRC_DUSU: TLabel;
    Shape206: TShape;
    cbVEN_PRC_TREL: TdxImageEdit;
    cbVEN_PRC_DATA: TdxImageEdit;
    cbVEN_PRC_CART: TdxPickEdit;
    cbVEN_PRC_STFI: TdxImageEdit;
    cbVEN_PRC_DFOR: TdxPickEdit;
    cbVEN_PRC_DUSU: TdxPickEdit;
    tsFIN_REC: TdxTabSheet;
    Bevel12: TBevel;
    Shape85: TShape;
    Shape86: TShape;
    clFIN_REC_TREL: TLabel;
    Shape87: TShape;
    Shape88: TShape;
    clFIN_REC_DATA: TLabel;
    Shape89: TShape;
    Shape90: TShape;
    clFIN_REC_STFI: TLabel;
    Shape91: TShape;
    Shape92: TShape;
    clFIN_REC_DCLI: TLabel;
    Shape95: TShape;
    Shape96: TShape;
    clFIN_REC_DREP: TLabel;
    Shape97: TShape;
    Shape98: TShape;
    clFIN_REC_DVEN: TLabel;
    Shape99: TShape;
    Shape100: TShape;
    clFIN_REC_RCLI: TLabel;
    Shape117: TShape;
    Shape118: TShape;
    clFIN_REC_STPD: TLabel;
    Shape163: TShape;
    Shape164: TShape;
    clFIN_REC_CTNR: TLabel;
    cbFIN_REC_TREL: TdxImageEdit;
    cbFIN_REC_DATA: TdxImageEdit;
    cbFIN_REC_DCLI: TdxPickEdit;
    cbFIN_REC_DREP: TdxPickEdit;
    cbFIN_REC_DVEN: TdxPickEdit;
    cbFIN_REC_RCLI: TdxPickEdit;
    cbFIN_REC_STPD: TdxImageEdit;
    cbFIN_REC_STFI: TdxImageEdit;
    cbFIN_REC_CTNR: TdxPickEdit;
    tsENT_PRO: TdxTabSheet;
    Bevel13: TBevel;
    Shape105: TShape;
    Shape106: TShape;
    clENT_PRO_TREL: TLabel;
    Shape113: TShape;
    Shape114: TShape;
    clENT_PRO_DATA: TLabel;
    Shape165: TShape;
    Shape166: TShape;
    clENT_PRO_CDRO: TLabel;
    Shape191: TShape;
    Shape192: TShape;
    clENT_PRO_CPRO: TLabel;
    Shape193: TShape;
    Shape194: TShape;
    clENT_PRO_OPER: TLabel;
    Shape195: TShape;
    Shape196: TShape;
    clENT_PRO_DEMP: TLabel;
    cbENT_PRO_TREL: TdxImageEdit;
    cbENT_PRO_DATA: TdxImageEdit;
    cbENT_PRO_OPER: TdxImageEdit;
    cbENT_PRO_DEMP: TdxImageEdit;
    cbENT_PRO_CDRO: TdxPickEdit;
    cbENT_PRO_CPRO: TdxPickEdit;
    tsROM_CAB: TdxTabSheet;
    Bevel14: TBevel;
    Shape111: TShape;
    Shape112: TShape;
    clROM_CAB_TREL: TLabel;
    Shape115: TShape;
    Shape116: TShape;
    clROM_CAB_DATA: TLabel;
    cbROM_CAB_TREL: TdxImageEdit;
    cbROM_CAB_DATA: TdxImageEdit;
    tsGER: TdxTabSheet;
    Shape119: TShape;
    clGER_TREL: TLabel;
    slGER_DFAV: TShape;
    clGER_DFAV: TLabel;
    Shape171: TShape;
    Shape172: TShape;
    clGER_DATA: TLabel;
    sbGER_DFAV: TShape;
    Shape167: TShape;
    clGER_TVIS: TLabel;
    Shape169: TShape;
    slGER_DVEN: TShape;
    clGER_DVEN: TLabel;
    sbGER_DVEN: TShape;
    Shape120: TShape;
    slGER_DREP: TShape;
    clGER_DREP: TLabel;
    sbGER_DREP: TShape;
    slGER_FIL1: TShape;
    clGER_FIL1: TLabel;
    sbGER_FIL1: TShape;
    slGER_STPD: TShape;
    clGER_STPD: TLabel;
    sbGER_STPD: TShape;
    slGER_FIL2: TShape;
    clGER_FIL2: TLabel;
    sbGER_FIL2: TShape;
    slGER_FIL3: TShape;
    clGER_FIL3: TLabel;
    sbGER_FIL3: TShape;
    slGER_FIL4: TShape;
    clGER_FIL4: TLabel;
    sbGER_FIL4: TShape;
    slGER_STCO: TShape;
    clGER_STCO: TLabel;
    sbGER_STCO: TShape;
    slGER_STFI: TShape;
    clGER_STFI: TLabel;
    sbGER_STFI: TShape;
    cbGER_TREL: TdxImageEdit;
    cbGER_DATA: TdxImageEdit;
    cbGER_DFAV: TdxPickEdit;
    cbGER_TVIS: TdxImageEdit;
    cbGER_DVEN: TdxPickEdit;
    cbGER_DREP: TdxPickEdit;
    cbGER_FIL1: TdxPickEdit;
    cbGER_STPD: TdxImageEdit;
    cbGER_FIL2: TdxPickEdit;
    cbGER_FIL3: TdxPickEdit;
    cbGER_FIL4: TdxPickEdit;
    cbprkg1: TdxPickEdit;
    cbprkg2: TdxPickEdit;
    cbGER_STCO: TdxImageEdit;
    cbGER_STFI: TdxImageEdit;
    tsCAD_CON: TdxTabSheet;
    Bevel15: TBevel;
    Shape37: TShape;
    Shape38: TShape;
    clCAD_CON_TREL: TLabel;
    Shape39: TShape;
    Shape40: TShape;
    clCAD_CON_DATA: TLabel;
    Shape179: TShape;
    Shape180: TShape;
    clCAD_CON_CDEP: TLabel;
    cbCAD_CON_TREL: TdxImageEdit;
    cbCAD_CON_DATA: TdxImageEdit;
    cbCAD_CON_CDEP: TdxImageEdit;
    tsFIN_PAG: TdxTabSheet;
    Bevel16: TBevel;
    Shape41: TShape;
    Shape42: TShape;
    clFIN_PAG_TREL: TLabel;
    Shape43: TShape;
    Shape44: TShape;
    clFIN_PAG_DATA: TLabel;
    Shape173: TShape;
    Shape174: TShape;
    clFIN_PAG_STFI: TLabel;
    Shape175: TShape;
    Shape176: TShape;
    clFIN_PAG_DFOR: TLabel;
    Shape177: TShape;
    Shape178: TShape;
    clFIN_PAG_DFIN: TLabel;
    Shape181: TShape;
    Shape182: TShape;
    clFIN_PAG_DCUS: TLabel;
    Shape183: TShape;
    Shape184: TShape;
    clFIN_PAG_RFOR: TLabel;
    Shape185: TShape;
    Shape186: TShape;
    clFIN_PAG_DOCT: TLabel;
    Shape241: TShape;
    Shape242: TShape;
    clFIN_PAG_DUPL: TLabel;
    cbFIN_PAG_TREL: TdxImageEdit;
    cbFIN_PAG_DATA: TdxImageEdit;
    cbFIN_PAG_STFI: TdxImageEdit;
    cbFIN_PAG_DFOR: TdxPickEdit;
    cbFIN_PAG_DFIN: TdxPickEdit;
    cbFIN_PAG_DCUS: TdxPickEdit;
    cbFIN_PAG_RFOR: TdxPickEdit;
    cbFIN_PAG_DOCT: TdxPickEdit;
    cbFIN_PAG_DUPL: TdxImageEdit;
    tsNFE_LOG: TdxTabSheet;
    Shape207: TShape;
    Shape208: TShape;
    clNFE_LOG_DATA: TLabel;
    Shape209: TShape;
    Shape210: TShape;
    clNFE_LOG_TREL: TLabel;
    Shape211: TShape;
    Shape212: TShape;
    clNFE_LOGI_DEMP: TLabel;
    Shape217: TShape;
    clNFE_LOG_DFAV: TLabel;
    Shape218: TShape;
    Shape219: TShape;
    clNFE_LOG_TIPO: TLabel;
    Shape220: TShape;
    Shape221: TShape;
    clNFE_LOG_OPER: TLabel;
    Shape222: TShape;
    Shape213: TShape;
    clNFE_LOG_DVEN: TLabel;
    Shape215: TShape;
    clNFE_LOG_DTRA: TLabel;
    Shape214: TShape;
    Shape216: TShape;
    cbNFE_LOG_TREL: TdxImageEdit;
    cbNFE_LOG_DATA: TdxImageEdit;
    cbNFE_LOG_DEMP: TdxPickEdit;
    cbNFE_LOG_TIPO: TdxPickEdit;
    cbNFE_LOG_OPER: TdxPickEdit;
    cbNFE_LOG_DFAV: TdxPickEdit;
    cbNFE_LOG_DVEN: TdxPickEdit;
    cbNFE_LOG_DTRA: TdxPickEdit;
    tsTAB_TAR: TdxTabSheet;
    Shape223: TShape;
    Shape224: TShape;
    Label2: TLabel;
    Shape225: TShape;
    Shape226: TShape;
    Label3: TLabel;
    Shape227: TShape;
    Shape228: TShape;
    Label4: TLabel;
    Shape229: TShape;
    Label5: TLabel;
    Shape230: TShape;
    Shape231: TShape;
    Label6: TLabel;
    Shape232: TShape;
    Shape233: TShape;
    Label7: TLabel;
    Shape234: TShape;
    Shape235: TShape;
    Label8: TLabel;
    Shape236: TShape;
    Label9: TLabel;
    Shape237: TShape;
    Shape238: TShape;
    dxImageEdit1: TdxImageEdit;
    dxImageEdit3: TdxImageEdit;
    dxImageEdit4: TdxImageEdit;
    dxPickEdit1: TdxPickEdit;
    dxPickEdit2: TdxPickEdit;
    dxPickEdit3: TdxPickEdit;
    dxImageEdit5: TdxImageEdit;
    dxImageEdit6: TdxImageEdit;
    GBDT1: TGroupBox;
    GBDT2: TGroupBox;
    dxDT2: TMonthCalendar;
    dxDT1: TMonthCalendar;
    Shape245: TShape;
    Shape246: TShape;
    clVEN_PED_VIA: TLabel;
    cbVEN_PED_VIA: TdxImageEdit;
    aux: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSaiClick(Sender: TObject);
    procedure BVisClick(Sender: TObject);
    procedure dxDT1Click(Sender: TObject);
    procedure BSavClick(Sender: TObject);
    procedure cbCAD_CLI_TRELChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbCAI_MOV_TRELChange(Sender: TObject);
    procedure cbNFE_CAB_TRELChange(Sender: TObject);
    procedure cbPAG_COM_DESCValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure cbCAD_PRO_DEMPChange(Sender: TObject);
    procedure cbCAD_PRO_TRELChange(Sender: TObject);
    procedure cbENT_PRO_TRELChange(Sender: TObject);
    procedure cbVEN_PRC_TRELChange(Sender: TObject);
    procedure cbFIN_REC_TRELChange(Sender: TObject);
    procedure cbCAD_PRO_CART1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BPriClick(Sender: TObject);
  private
    { Private declarations }

    procedure PED_CUP_VEN;
    procedure VEN_PED_PEDIDO_VENDA;
    procedure VEN_PED_PEDIDO_VENDA_SEM_BAIXA;
    procedure VEN_PED_PEDIDO_VENDA_COM_BAIXA(stco: string);

    procedure PED_CUP_SCO;
    procedure VEN_PED_PEDIDO_VENDA_CONFERENCIA;

    procedure CAI_MOV_GERAL_SINTETICO;
    procedure CAI_MOV_GERAL_ANALITICO;
    procedure CAI_MOV_CAIXA_SINTETICO;
    procedure CAI_MOV_CAIXA_ANALITICO;
    procedure CAI_MOV_FLUXO_CAIXA_CARTEIRA;
    procedure CAI_MOV_FLUXO_CAIXA_BANCARIO;

  public
    { Public declarations }
    NOME_TABELA_RELATORIO: string;
    CDPD,CDRO,CDBX,CDNF: string;
    Data1,Data2: TDate;
    cDATA: string;

    procedure DEFINE_RELATORIO;
    procedure ENVIA_RELATORIO(WTag: Word);
  end;

var
  frmrelatorio_geral: Tfrmrelatorio_geral;
                BRet: boolean;
implementation

uses uPrincipal, parquivo_geral,
  qPED_CUP_VEN, qPED_CUP_SCO,

  { OLD }
  qven_ped,
  qven_con, qcai_mov_flx_car, qcai_mov_flx_ban,
  qcai_mov_cai_ana, qcai_mov_cai_sin, qcai_mov_ger, qcai_mov_ger_ana;

{$R *.dfm}

procedure Tfrmrelatorio_geral.FormCreate(Sender: TObject);
begin
  tsCAD_CLI.TabVisible     := false;
  tsCAD_PRO.TabVisible     := false;
  tsCAD_REP.TabVisible     := false;
  tsCAD_TRA.TabVisible     := false;
  tsVEN_OCA.TabVisible     := false;
  tsVEN_PRG.TabVisible     := false;
  tsVEN_PRC.TabVisible     := false;
  tsVEN_PED.TabVisible     := false;
  tsROM_CAB.TabVisible     := false;
  tsNFE_CAB.TabVisible     := false;
  tsCAI_MOV.TabVisible     := false;
  tsCAD_FUN.TabVisible     := false;
  tsFIN_DUP.TabVisible     := false;
  tsFIN_REC.TabVisible     := false;
  tsGER.TabVisible         := false;
end;

procedure Tfrmrelatorio_geral.FormShow(Sender: TObject);
begin
  dxDT1.Date := StartOfTheMonth(strtodate(SLPrincipal.Values['data_sistema']));
  dxDT2.Date := endOfTheMonth(strtodate(SLPrincipal.Values['data_sistema']));

  if tsGER.TabVisible then
  DEFINE_RELATORIO;
end;

procedure Tfrmrelatorio_geral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oFTransact(IBTra);
  Action := caFree;
end;

procedure Tfrmrelatorio_geral.FormDestroy(Sender: TObject);
begin
  FrmRelatorio_Geral := Nil;
end;

procedure Tfrmrelatorio_geral.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_ESCAPE: BSai.Click;
       VK_RETURN: if (not (activeControl is TdxDBGrid) and
                      not (activeControl is TdxMemo)   and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       40       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       38       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, false, true);
  end;
end;

procedure Tfrmrelatorio_geral.BVisClick(Sender: TObject);
begin
  ENVIA_RELATORIO(0);
end;

procedure Tfrmrelatorio_geral.BPriClick(Sender: TObject);
begin
  ENVIA_RELATORIO(1);
end;

procedure Tfrmrelatorio_geral.BSavClick(Sender: TObject);
begin
  frmarquivo_geral := Tfrmarquivo_geral.Create(self);
  frmarquivo_geral.Position          := poDesigned;
  frmarquivo_geral.Top               := 0;
  frmarquivo_geral.Left              := 0;

  if tsCAD_PRO.TabVisible then
     frmarquivo_geral.edfile.Text := cbCAD_PRO_TREL.Text
  else if tsVEN_OCA.TabVisible then
     frmarquivo_geral.edfile.Text := cbVEN_OCA_TREL.Text
  else if tsENT_PRO.TabVisible then
     frmarquivo_geral.edfile.Text := cbENT_PRO_TREL.Text
  else if tsGER.TabVisible then
     frmarquivo_geral.edfile.Text := cbGER_TREL.Text
  else if tsVEN_PRC.TabVisible then
     frmarquivo_geral.edfile.Text := cbVEN_PRC_TREL.Text
  else if tsVEN_PRG.TabVisible then
     frmarquivo_geral.edfile.Text := cbVEN_PRG_TREL.Text
  else if tsVEN_PED.TabVisible then
     frmarquivo_geral.edfile.Text := cbVEN_PED_TREL.Text
  else if tsROM_CAB.TabVisible then
     frmarquivo_geral.edfile.Text := cbROM_CAB_TREL.Text
  else if tsCAI_MOV.TabVisible then
     frmarquivo_geral.edfile.Text := cbCAI_MOV_TREL.Text
  else if tsCAD_FUN.TabVisible then
     frmarquivo_geral.edfile.Text := cbCAD_FUN_TREL.Text
  else if tsFIN_REC.TabVisible then
     frmarquivo_geral.edfile.Text := cbFIN_REC_TREL.Text
  else if tsNFE_CAB.TabVisible then
     frmarquivo_geral.edfile.Text := cbNFE_CAB_TREL.Text
  else if tsCAD_CLI.TabVisible then
     frmarquivo_geral.edfile.Text := cbCAD_CLI_TREL.Text
  else if tsCAD_CON.TabVisible then
     frmarquivo_geral.edfile.Text := cbCAD_CON_TREL.Text;


  try
    frmarquivo_geral.ShowModal;
  finally
    freeAndNil(frmarquivo_geral);
    frmarquivo_geral.Free;
  end;
end;

procedure Tfrmrelatorio_geral.BSaiClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmRelatorio_Geral.ENVIA_RELATORIO(WTag: Word);
begin
  try
    Tag := WTag;

    if tsVEN_PED.TabVisible then
    begin
      if cbVEN_PED_TREL.Text = '' then
      raise exception.Create('Tipo de relatório não selecionado !');

      if cdpd = '' then
         raise exception.Create('Número do pedido não selecionado !');

      if cbVEN_PED_TREL.Text = 'PEDIDO DE VENDA (CUPOM)' then
         PED_CUP_VEN else
      if cbVEN_PED_TREL.Text = 'SIMPLES CONFERENCIA (CUPOM)' then
         PED_CUP_SCO else
      if cbVEN_PED_TREL.Text = 'PEDIDO DE VENDA' then
         VEN_PED_PEDIDO_VENDA else
      if cbVEN_PED_TREL.Text = 'SIMPLES CONFERENCIA' then
         VEN_PED_PEDIDO_VENDA_CONFERENCIA;
    end else
    if tsCAI_MOV.TabVisible then
    begin
      if cbCAI_MOV_TREL.Text = '' then
      raise exception.Create('Tipo de relatório não selecionado !');

      if cbCAI_MOV_TREL.Text = 'FLUXO GERAL DE VENDAS - SINTÉTICO' then
         CAI_MOV_GERAL_SINTETICO
      else if cbCAI_MOV_TREL.Text = 'FLUXO GERAL DE VENDAS - ANALÍTICO' then
         CAI_MOV_GERAL_ANALITICO
      else if cbCAI_MOV_TREL.Text = 'FLUXO DE CAIXA - SINTÉTICO' then
         CAI_MOV_CAIXA_SINTETICO
      else if cbCAI_MOV_TREL.Text = 'FLUXO DE CAIXA - ANALÍTICO' then
         CAI_MOV_CAIXA_ANALITICO
      else if cbCAI_MOV_TREL.Text = 'FLUXO DE CAIXA DE CARTEIRA' then
         CAI_MOV_FLUXO_CAIXA_CARTEIRA
      else if cbCAI_MOV_TREL.Text = 'FLUXO DE CAIXA BANCÁRIO' then
         CAI_MOV_FLUXO_CAIXA_BANCARIO;
    end;
  finally
    Tag := 0;
  end;
end;

procedure Tfrmrelatorio_geral.DEFINE_RELATORIO;
begin
  cbGER_FIL1.Text := 'TODOS';
  cbGER_FIL2.Text := 'TODOS';
  cbGER_FIL3.Text := 'TODOS';
  cbGER_FIL4.Text := 'TODOS';

  cbGER_STFI.Values.Clear;
  cbGER_STFI.Descriptions.Clear;
  cbGER_STFI.Values.Add('VENCIDO');
  cbGER_STFI.Descriptions.Add('VENCIDO');
  cbGER_STFI.Values.Add('A VENCER');
  cbGER_STFI.Descriptions.Add('A VENCER');
  cbGER_STFI.Values.Add('TODOS');
  cbGER_STFI.Descriptions.Add('TODOS');
  cbGER_STFI.Text := 'TODOS';

  cbGER_STPD.Values.Clear;
  cbGER_STPD.Descriptions.Clear;
  cbGER_STPD.Values.Add('TODOS');
  cbGER_STPD.Descriptions.Add('TODOS');
  cbGER_STPD.Text := 'TODOS';

  cbGER_STCO.Values.Clear;
  cbGER_STCO.Descriptions.Clear;
  cbGER_STCO.Values.Add('TODOS');
  cbGER_STCO.Descriptions.Add('TODOS');
  cbGER_STCO.Text := 'TODOS';

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ROM_STFI FROM PED_VEN_CAB');
    SQL.Add('UNION');
    SQL.Add('SELECT ROM_STFI FROM PED_VEN_CAB_002');
    SQL.Add('UNION');
    SQL.Add('SELECT ROM_STFI FROM PED_VEN_CAB_003');
    SQL.Add('UNION');
    SQL.Add('SELECT ROM_STFI FROM PED_VEN_CAB_004');
    SQL.Add('UNION');
    SQL.Add('SELECT ROM_STFI FROM PED_VEN_CAB_005');
    SQL.Add('UNION');
    SQL.Add('SELECT ROM_STFI FROM PED_VEN_CAB_006');
    SQL.Add('UNION');
    SQL.Add('SELECT ROM_STFI FROM PED_VEN_CAB_007');
    SQL.Add('UNION');
    SQL.Add('SELECT ROM_STFI FROM PED_VEN_CAB_008');
    SQL.Add('UNION');
    SQL.Add('SELECT ROM_STFI FROM PED_VEN_CAB_009');
    SQL.Add('GROUP  BY ROM_STFI');
    SQL.Add('ORDER  BY 1');
    Open;

    while not eof do
    begin
      cbGER_STFI.Values.Add(fields[0].AsString);
      cbGER_STFI.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   VEN_TIPO FROM TAB_PED');
    SQL.Add('WHERE    VEN_STA = ''1''');
    SQL.Add('ORDER BY VEN_TIPO');
    Open;

    while not eof do
    begin
      cbGER_STPD.Values.Add(fields[0].AsString);
      cbGER_STPD.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   VEN_TIPO FROM TAB_COB');
    SQL.Add('WHERE    VEN_STA = ''1''');
    SQL.Add('ORDER BY VEN_TIPO');
    Open;

    while not eof do
    begin
      cbGER_STCO.Values.Add(fields[0].AsString);
      cbGER_STCO.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   CLI_FANT FROM CAD_CLI,'+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    CAD_CLI.ID = ROM_CCLI');
    SQL.Add('GROUP BY CLI_FANT');
    SQL.Add('ORDER BY CLI_FANT');
    Open;

    cbGER_DFAV.Text := 'TODOS';
    cbGER_DFAV.Items.Add('TODOS');
    while not eof do
    begin
      cbGER_DFAV.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   USU_DUSU FROM CAD_USU,'+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    CAD_USU.USU_CUSU = ROM_CVEN');
    SQL.Add('GROUP BY USU_DUSU');
    SQL.Add('ORDER BY USU_DUSU');
    Open;

    cbGER_DVEN.Text := 'TODOS';
    cbGER_DVEN.Items.Add('TODOS');
    while not eof do
    begin
      cbGER_DVEN.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   REP_FANT FROM CAD_REP,'+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    CAD_REP.ID = ROM_CREP');
    SQL.Add('GROUP BY REP_FANT');
    SQL.Add('ORDER BY REP_FANT');
    Open;

    cbGER_DREP.Text := 'TODOS';
    cbGER_DREP.Items.Add('TODOS');
    while not eof do
    begin
      cbGER_DREP.Items.Add(fields[0].AsString);
      next;
    end;
  end;

  if cbGER_TREL.Text = 'VENDAS FATURADAS POR CATEGORIAS' then
  begin
    cbGER_DATA.Values.Clear;
    cbGER_DATA.Values.Add('');
    cbGER_DATA.Values.Add('DATA VENDA');
    cbGER_DATA.Values.Add('DATA BAIXA');
    cbGER_DATA.Values.Add('DATA VENCIMENTO');
    cbGER_DATA.Values.Add('DATA DEVOLUÇÃO');
    cbGER_DATA.Values.Add('DATA CANCELAMENTO');

    cbGER_DATA.Descriptions.Clear;
    cbGER_DATA.Descriptions.Add('');
    cbGER_DATA.Descriptions.Add('DATA VENDA');
    cbGER_DATA.Descriptions.Add('DATA BAIXA');
    cbGER_DATA.Descriptions.Add('DATA VENCIMENTO');
    cbGER_DATA.Descriptions.Add('DATA DEVOLUÇÃO');
    cbGER_DATA.Descriptions.Add('DATA CANCELAMENTO');
    cbGER_DATA.Text := 'DATA VENDA';
  end else
  begin
    cbGER_DATA.Values.Clear;
    cbGER_DATA.Values.Add('');
    cbGER_DATA.Values.Add('DATA PEDIDO');
    cbGER_DATA.Values.Add('DATA FATURA');
    cbGER_DATA.Values.Add('DATA VENCIMENTO');
    cbGER_DATA.Values.Add('DATA PAGAMENTO');
    cbGER_DATA.Values.Add('DATA NOTA FISCAL');
    cbGER_DATA.Values.Add('DATA CANCELAMENTO');

    cbGER_DATA.Descriptions.Clear;
    cbGER_DATA.Descriptions.Add('');
    cbGER_DATA.Descriptions.Add('DATA PEDIDO');
    cbGER_DATA.Descriptions.Add('DATA FATURA');
    cbGER_DATA.Descriptions.Add('DATA VENCIMENTO');
    cbGER_DATA.Descriptions.Add('DATA PAGAMENTO');
    cbGER_DATA.Descriptions.Add('DATA NOTA FISCAL');
    cbGER_DATA.Descriptions.Add('DATA CANCELAMENTO');
    cbGER_DATA.Text := 'DATA PEDIDO';
  end;

  cbGER_TVIS.Values.Clear;
  cbGER_TVIS.Descriptions.Clear;
  cbGER_TVIS.Values.Add('PEDIDO');
  cbGER_TVIS.Descriptions.Add('PEDIDO');
  cbGER_TVIS.Values.Add('FATURADO');
  cbGER_TVIS.Descriptions.Add('FATURADO');
  cbGER_TVIS.Text := 'PEDIDO';

  if (cbGER_TREL.Text = 'VENDAS DE PRODUTOS POR CATEGORIA') or (cbGER_TREL.Text = 'KARDEX DE PRODUTOS POR CATEGORIA') or
     (cbGER_TREL.Text = 'PEDIDOS DE VENDAS POR CATEGORIAS') or (cbGER_TREL.Text = 'VENDAS FATURADAS POR CATEGORIAS') then
  begin
    if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
    begin
      clGER_DVEN.Enabled := false;
      cbGER_DVEN.Enabled := false;
      cbGER_DVEN.Text    := frmprincipal.cad_usuUSU_DUSU.AsString;
    end;

    cbGER_TVIS.Enabled := false;
    if cbGER_TREL.Text = 'PEDIDOS DE VENDAS POR CATEGORIAS' then
    cbGER_TVIS.Text := 'PEDIDO' else
    if cbGER_TREL.Text = 'VENDAS FATURADAS POR CATEGORIAS' then
    cbGER_TVIS.Text := 'FATURADO';

    clGER_FIL1.Caption := 'Categoria';
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   CAT_DCAT FROM CAD_PRO_CAC');
      SQL.Add('WHERE    CAT_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('GROUP BY CAT_DCAT');
      SQL.Add('ORDER BY CAT_DCAT');
      Open;

      cbGER_FIL1.Text := 'TODOS';
      cbGER_FIL1.Items.Add('TODOS');
      while not eof do
      begin
        cbGER_FIL1.Items.Add(fields[0].AsString);
        next;
      end;
    end;
  end else
  if (cbGER_TREL.Text = 'VENDAS DE PRODUTOS - GERAL')                 or (cbGER_TREL.Text = 'VENDAS DE PRODUTOS - RANKING')          or
     (cbGER_TREL.Text = 'VENDAS DE PRODUTOS - RANKING POR CATEGORIA') or (cbGER_TREL.Text = 'VENDAS DE PRODUTOS POR CLIENTES')       or
     (cbGER_TREL.Text = 'VENDAS DE PRODUTOS POR VENDEDORES')          or (cbGER_TREL.Text = 'VENDAS DE PRODUTOS POR REPRESENTANTES') or
     (cbGER_TREL.Text = 'VENDAS DE PRODUTOS - DEVOLUÇÃO') then
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   GRP_DGRP FROM CAD_PRO_GRP');
//      SQL.Add('WHERE    GRP_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('GROUP BY GRP_DGRP');
      SQL.Add('ORDER BY GRP_DGRP');
      Open;

      cbGER_FIL2.Text := 'TODOS';
      cbGER_FIL2.Items.Add('TODOS');
      while not eof do
      begin
        cbGER_FIL2.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   CAT_DCAT FROM CAD_PRO_CAC');
      SQL.Add('WHERE    CAT_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('GROUP BY CAT_DCAT');
      SQL.Add('ORDER BY CAT_DCAT');
      Open;

      cbGER_FIL3.Text := 'TODOS';
      cbGER_FIL3.Items.Add('TODOS');
      while not eof do
      begin
        cbGER_FIL3.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   COL_DCOL FROM TAB_COL');
      SQL.Add('GROUP BY COL_DCOL');
      SQL.Add('ORDER BY COL_DCOL');
      Open;

      cbGER_FIL4.Text := 'TODOS';
      cbGER_FIL4.Items.Add('TODOS');
      while not eof do
      begin
        cbGER_FIL4.Items.Add(fields[0].AsString);
        next;
      end;

      if cbGER_TREL.Text = 'VENDAS - GERAL' then
      begin
        dxDT1.Date      := strtodate(SLPrincipal.Values['data_sistema']);
        dxDT2.Date      := strtodate(SLPrincipal.Values['data_sistema']);
        cbGER_STFI.Text := 'TODOS';
      end;
    end;

    clGER_FIL1.Caption := 'Referencia';

    clGER_FIL2.Caption := 'Grupo';
    clGER_FIL2.Visible := true;
    cbGER_FIL2.Visible := true;
    slGER_FIL2.Visible := true;
    sbGER_FIL2.Visible := true;
    clGER_FIL3.Caption := 'Categoria';
    clGER_FIL3.Visible := true;
    cbGER_FIL3.Visible := true;
    slGER_FIL3.Visible := true;
    sbGER_FIL3.Visible := true;
    clGER_FIL4.Caption := 'Coleção';
    clGER_FIL4.Visible := true;
    cbGER_FIL4.Visible := true;
    slGER_FIL4.Visible := true;
    sbGER_FIL4.Visible := true;

    if (cbGER_TREL.Text = 'VENDAS DE PRODUTOS - DEVOLUÇÃO') then
    cbGER_STPD.Text := 'DEVOLUÇÃO';

    if (cbGER_TREL.Text = 'VENDAS DE PRODUTOS - RANKING') then
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT   COL_DCOL FROM TAB_COL');
        SQL.Add('GROUP BY COL_DCOL');
        SQL.Add('ORDER BY COL_DCOL');
        Open;

        cbGER_FIL1.Items.Clear;
        cbGER_FIL1.Text := 'TODOS';
        cbGER_FIL1.Items.Add('TODOS');
        while not eof do
        begin
          cbGER_FIL1.Items.Add(fields[0].AsString);
          next;
        end;
      end;
      
      cbGER_TVIS.Enabled := false;
      clGER_TVIS.Enabled := false;
      clGER_FIL1.Caption := 'Coleção';
      clGER_FIL1.Visible := true;
      cbGER_FIL1.Visible := true;
      slGER_FIL1.Visible := true;
      sbGER_FIL1.Visible := true;

      clGER_FIL4.Caption := 'Ranking';
      cbGER_FIL4.Items.Clear;
      cbGER_FIL4.Text    := '15';
      
      cbprkg1.Visible    := true;
      cbprkg2.Visible    := true;
    end;

    if (cbGER_TREL.Text = 'VENDAS DE PRODUTOS - RANKING POR CATEGORIA') then
    begin
      clGER_FIL3.Caption := 'Ranking';
      cbGER_FIL3.Text    := '15';
      clGER_FIL3.Visible := true;
      cbGER_FIL3.Visible := true;
      slGER_FIL3.Visible := true;
      sbGER_FIL3.Visible := true;

      cbprkg1.Visible    := true;
      cbprkg2.Visible    := true;
    end;
  end else
  if (cbGER_TREL.Text = 'RESUMO DE NOTAS FISCAIS')           or (cbGER_TREL.Text = 'FATURAMENTO POR NÚMERO DE CONTAINER') or
     (cbGER_TREL.Text = 'FATURAMENTO POR TIPOS DE CRÉDITOS') or (cbGER_TREL.Text = 'FATURAMENTO POR TIPOS DE PEDIDOS')    then
  begin
    cbGER_DATA.Text    := 'DATA VENDA';
    clGER_FIL1.Caption := 'Empresa';

    if cbGER_TREL.Text = 'FATURAMENTO POR NÚMERO DE CONTAINER' then
    cbGER_DATA.Text    := 'DATA PEDIDO';

    if cbGER_TREL.Text = 'RESUMO DE NOTAS FISCAIS' then
    begin
      clGER_FIL2.Caption := 'Tipo de NF';
      clGER_FIL2.Visible := true;
      cbGER_FIL2.Visible := true;
      slGER_FIL2.Visible := true;
      sbGER_FIL2.Visible := true;
    end;
    
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PAR_FANT FROM PAR_SIS');
      SQL.Add('ORDER BY PAR_FANT');
      Open;

      cbGER_FIL1.Text := 'TODOS';
      cbGER_FIL1.Items.Add('TODOS');
      while not eof do
      begin
        cbGER_FIL1.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   NAT_TIPO FROM TAB_NAT');
      SQL.Add('GROUP BY NAT_TIPO');
      SQL.Add('ORDER BY NAT_TIPO');
      Open;

      cbGER_FIL2.Text := 'TODOS';
      cbGER_FIL2.Items.Add('TODOS');
      while not eof do
      begin
        cbGER_FIL2.Items.Add(fields[0].AsString);
        next;
      end;
    end;
    if frmprincipal.cad_usuUSU_ADM.AsString <> '1' then
    begin
      cbGER_FIL1.Text    := frmprincipal.parametrosPAR_FANT.AsString;
      cbGER_FIL1.Enabled := false;
    end;
  end else
  if (cbGER_TREL.Text = 'COMPRAS - GERAL')      or (cbGER_TREL.Text = 'COMPRAS POR FORNECEDORES') or
     (cbGER_TREL.Text = 'COMPRAS POR PRODUTOS') or (cbGER_TREL.Text = 'COMPRAS POR CONTAINER') then
  begin
    cbGER_STFI.Values.Clear;
    cbGER_STFI.Values.Add('TODOS');
    cbGER_STFI.Values.Add('PENDENTE');
    cbGER_STFI.Values.Add('FINALIZADO');
    cbGER_STFI.Values.Add('CANCELADO');

    cbGER_STFI.Descriptions.Clear;
    cbGER_STFI.Descriptions.Add('TODOS');
    cbGER_STFI.Descriptions.Add('PENDENTE');
    cbGER_STFI.Descriptions.Add('FINALIZADO');
    cbGER_STFI.Descriptions.Add('CANCELADO');

    cbGER_STFI.DropDownRows := 4;
    cbGER_STFI.Text := 'TODOS';

    cbGER_DATA.Values.Clear;
    cbGER_DATA.Values.Add('');
    cbGER_DATA.Values.Add('DATA LANÇAMENTO');
    cbGER_DATA.Values.Add('DATA CHEGADA - PREVISÃO');
    cbGER_DATA.Values.Add('DATA CHEGADA - REAL');
    cbGER_DATA.Values.Add('DATA EMBARQUE - PREVISÃO');
    cbGER_DATA.Values.Add('DATA EMBARQUE - REAL');
    cbGER_DATA.Values.Add('DATA DESEMBARQUE - PREVISÃO');
    cbGER_DATA.Values.Add('DATA DESEMBARQUE - REAL');
    cbGER_DATA.Values.Add('DATA PRODUÇÃO - PREVISÃO');
    cbGER_DATA.Values.Add('DATA PRODUÇÃO - REAL');

    cbGER_DATA.Descriptions.Clear;
    cbGER_DATA.Descriptions.Add('');
    cbGER_DATA.Descriptions.Add('DATA LANÇAMENTO');
    cbGER_DATA.Descriptions.Add('DATA CHEGADA - PREVISÃO');
    cbGER_DATA.Descriptions.Add('DATA CHEGADA - REAL');
    cbGER_DATA.Descriptions.Add('DATA EMBARQUE - PREVISÃO');
    cbGER_DATA.Descriptions.Add('DATA EMBARQUE - REAL');
    cbGER_DATA.Descriptions.Add('DATA DESEMBARQUE - PREVISÃO');
    cbGER_DATA.Descriptions.Add('DATA DESEMBARQUE - REAL');
    cbGER_DATA.Descriptions.Add('DATA PRODUÇÃO - PREVISÃO');
    cbGER_DATA.Descriptions.Add('DATA PRODUÇÃO - REAL');
    cbGER_DATA.Text    := 'DATA LANÇAMENTO';
    clGER_FIL1.Caption := 'Referencia';

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PRO_CART');
      SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['ped_com_ite']);
      SQL.Add('WHERE    ROM_CPRO = CAD_PRO.ID');
      SQL.Add('GROUP BY PRO_CART');
      SQL.Add('ORDER BY PRO_CART');
      Open;

      cbGER_FIL1.Text := 'TODOS';
      cbGER_FIL1.Items.Add('TODOS');
      while not eof do
      begin
        cbGER_FIL1.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   FOR_FANT FROM CAD_FOR');
      SQL.Add('ORDER BY FOR_FANT');
      Open;

      cbGER_FIL2.Text := 'TODOS';
      cbGER_FIL2.Items.Add('TODOS');
      while not eof do
      begin
        cbGER_FIL2.Items.Add(fields[0].AsString);
        next;
      end;
    end;
  end else
  if (cbGER_TREL.Text = 'PROGRAMAÇÃO DE VENDAS POR CLIENTES') then
  begin
    cbGER_DATA.Values.Clear;
    cbGER_DATA.Values.Add('');
    cbGER_DATA.Values.Add('DATA PROGRAMAÇÃO');

    cbGER_DATA.Descriptions.Clear;
    cbGER_DATA.Descriptions.Add('');
    cbGER_DATA.Descriptions.Add('DATA PROGRAMAÇÃO');

    cbGER_TVIS.Enabled := false;
    cbGER_STFI.Enabled := false;
    clGER_FIL1.Caption := 'Referencia';

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   EST_DFAV');
      SQL.Add('FROM '   +SLPrincipal.Values['cad_pro_prg']);
      SQL.Add('GROUP BY EST_DFAV');
      SQL.Add('ORDER BY EST_DFAV');
      Open;

      cbGER_DFAV.Items.Clear;
      cbGER_DFAV.Text := 'TODOS';
      cbGER_DFAV.Items.Add('TODOS');
      while not eof do
      begin
        cbGER_DFAV.Items.Add(fields[0].AsString);
        next;
      end;
    end;
  end else
  if (cbGER_TREL.Text = 'PROGRAMAÇÃO DE VENDAS POR PRODUTOS') then
  begin
    cbGER_DATA.Values.Clear;
    cbGER_DATA.Values.Add('');
    cbGER_DATA.Values.Add('DATA PROGRAMAÇÃO');

    cbGER_DATA.Descriptions.Clear;
    cbGER_DATA.Descriptions.Add('');
    cbGER_DATA.Descriptions.Add('DATA PROGRAMAÇÃO');

    cbGER_TVIS.Text    := 'ANALÍTICO';
    cbGER_TVIS.Enabled := false;
    cbGER_STFI.Enabled := false;

    clGER_FIL1.Caption := 'Referencia';
  end else
  if (cbGER_TREL.Text = 'KARDEX DE VENDAS POR PRODUTOS') then
  begin
    cbGER_DATA.Values.Clear;
    cbGER_DATA.Values.Add('');
    cbGER_DATA.Values.Add('DATA VENDA+DATA PREVISTA DE CHEGADA');
    cbGER_DATA.Values.Add('DATA VENDA+DATA REAL DE CHEGADA');

    cbGER_DATA.Descriptions.Clear;
    cbGER_DATA.Descriptions.Add('');
    cbGER_DATA.Descriptions.Add('DATA VENDA+DATA PREVISTA DE CHEGADA');
    cbGER_DATA.Descriptions.Add('DATA VENDA+DATA REAL DE CHEGADA');

    cbGER_TVIS.Text    := 'ANALÍTICO';
    cbGER_TVIS.Enabled := false;
    cbGER_STFI.Enabled := false;

    clGER_FIL1.Caption := 'Referencia';
  end else
  if (cbGER_TREL.Text = 'PEDIDOS POR CLIENTES')       or
     (cbGER_TREL.Text = 'PEDIDOS POR VENDEDORES')     or
     (cbGER_TREL.Text = 'PEDIDOS POR REPRESENTANTES') or
     (cbGER_TREL.Text = 'PEDIDOS - GERAL')            then
  begin
    if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
    begin
      clGER_DVEN.Enabled := false;
      cbGER_DVEN.Enabled := false;
      cbGER_DVEN.Text    := frmprincipal.cad_usuUSU_DUSU.AsString;
    end;
  
    clGER_TVIS.Enabled := false;
    cbGER_TVIS.Enabled := false;

    dxDT1.Date := StartOfTheMonth(dxDT1.Date);
    dxDT2.Date := EndOFTheMonth(dxDT2.Date);

    cbGER_DATA.Values.Clear;
    cbGER_DATA.Values.Add('');
    cbGER_DATA.Values.Add('DATA PEDIDO');

    cbGER_DATA.Descriptions.Clear;
    cbGER_DATA.Descriptions.Add('');
    cbGER_DATA.Descriptions.Add('DATA PEDIDO');
    cbGER_DATA.Text := 'DATA PEDIDO';

    clGER_FIL1.Visible := false;
    cbGER_FIL1.Visible := false;
    slGER_FIL1.Visible := false;
    sbGER_FIL1.Visible := false;
  end else
  if (cbGER_TREL.Text = 'VENDAS FATURADAS POR CLIENTES')       or
     (cbGER_TREL.Text = 'VENDAS FATURADAS POR VENDEDORES')     or
     (cbGER_TREL.Text = 'VENDAS FATURADAS POR REPRESENTANTES') or
     (cbGER_TREL.Text = 'VENDAS FATURADAS - GERAL')            then
  begin
    if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
    begin
      clGER_DVEN.Enabled := false;
      cbGER_DVEN.Enabled := false;
      cbGER_DVEN.Text    := frmprincipal.cad_usuUSU_DUSU.AsString;
    end;

    clGER_TVIS.Enabled := true;
    cbGER_TVIS.Enabled := true;

    cbGER_TVIS.Values.Clear;
    cbGER_TVIS.Descriptions.Clear;
    cbGER_TVIS.Values.Add('ANALÍTICO');
    cbGER_TVIS.Descriptions.Add('ANALÍTICO');
    cbGER_TVIS.Values.Add('SINTÉTICO');
    cbGER_TVIS.Descriptions.Add('SINTÉTICO');
    cbGER_TVIS.Text := 'ANALÍTICO';

    dxDT1.Date := StartOfTheMonth(dxDT1.Date);
    dxDT2.Date := EndOFTheMonth(dxDT2.Date);

    cbGER_DATA.Values.Clear;
    cbGER_DATA.Values.Add('');
    cbGER_DATA.Values.Add('DATA VENDA');

    cbGER_DATA.Descriptions.Clear;
    cbGER_DATA.Descriptions.Add('');
    cbGER_DATA.Descriptions.Add('DATA VENDA');
    cbGER_DATA.Text := 'DATA VENDA';

    clGER_FIL1.Visible := false;
    cbGER_FIL1.Visible := false;
    slGER_FIL1.Visible := false;
    sbGER_FIL1.Visible := false;
  end;
end;

procedure Tfrmrelatorio_geral.cbCAD_PRO_TRELChange(Sender: TObject);
begin
  cbCAD_PRO_TEST.Descriptions.Clear;
  cbCAD_PRO_TEST.Values.Clear;
  if cbCAD_PRO_TREL.Text = 'TABELA DE PREÇOS' then
  begin
    cbCAD_PRO_TEST.Descriptions.Add('ATACADO');
    cbCAD_PRO_TEST.Descriptions.Add('VAREJO');
    cbCAD_PRO_TEST.Descriptions.Add('REPRESENTANTE');
    cbCAD_PRO_TEST.Descriptions.Add('TODOS');
    cbCAD_PRO_TEST.Values.Add('ATACADO');
    cbCAD_PRO_TEST.Values.Add('VAREJO');
    cbCAD_PRO_TEST.Values.Add('REPRESENTANTE');
    cbCAD_PRO_TEST.Values.Add('TODOS');
    cbCAD_PRO_TEST.Text := 'ATACADO';
  end else
  begin
    cbCAD_PRO_TEST.Descriptions.Add('DISPONÍVEL');
    cbCAD_PRO_TEST.Descriptions.Add('NEGATIVO');
    cbCAD_PRO_TEST.Descriptions.Add('ZERADO');
    cbCAD_PRO_TEST.Descriptions.Add('NORMAL');
    cbCAD_PRO_TEST.Values.Add('DISPONÍVEL');
    cbCAD_PRO_TEST.Values.Add('NEGATIVO');
    cbCAD_PRO_TEST.Values.Add('ZERADO');
    cbCAD_PRO_TEST.Values.Add('NORMAL');
    cbCAD_PRO_TEST.Text := 'DISPONÍVEL';

    if (cbCAD_PRO_TREL.Text = 'ESTOQUE DE PRODUTOS') then
    cbCAD_PRO_TEST.Text := 'DISPONÍVEL' else
    if (cbCAD_PRO_TREL.Text = 'CATÁLOGO DE PRODUTOS') then
    cbCAD_PRO_TEST.Text := '';
  end;
end;

procedure Tfrmrelatorio_geral.cbENT_PRO_TRELChange(Sender: TObject);
begin
  cbENT_PRO_CDRO.Enabled := not (cbENT_PRO_TREL.Text = 'ROMANEIO DE ENTRADA POR PRODUTOS');
  if not cbENT_PRO_CDRO.Enabled then
  cbENT_PRO_CDRO.Text := '';
end;

procedure Tfrmrelatorio_geral.cbVEN_PRC_TRELChange(Sender: TObject);
begin
  cbVEN_PRC_DATA.Enabled := (cbVEN_PRC_TREL.Text = 'SITUAÇÃO DE PROGRAMAÇÃO DE COMPRA');

  cbVEN_PRC_DATA.Text    := '';
  if cbVEN_PRC_DATa.Enabled then
  cbVEN_PRC_DATA.Text    := 'DATA PREVISÃO CHEGADA';
end;

procedure Tfrmrelatorio_geral.cbFIN_REC_TRELChange(Sender: TObject);
begin
  cbFIN_REC_STFI.Text    := 'TODOS';
  cbFIN_REC_STFI.Enabled := true;

  if cbFIN_REC_TREL.Text = 'LISTAGEM DE CONTAS A RECEBER VENCIDOS \ A VENCER' then
  begin
    cbFIN_REC_DATA.Text    := 'DATA VENCIMENTO';
    cbFIN_REC_STFI.Text    := 'PENDENTE';
    cbFIN_REC_STFI.Enabled := false;
  end;
end;

procedure Tfrmrelatorio_geral.cbCAD_PRO_CART1Change(Sender: TObject);
begin
  cbCAD_PRO_CART2.Text := cbCAD_PRO_CART1.Text;
end;

procedure Tfrmrelatorio_geral.dxDT1Click(Sender: TObject);
begin
  if tsCAD_PRO.TabVisible then
  begin
    if (cbCAD_PRO_DATA.Enabled) and (cbCAD_PRO_DATA.Text = '') then
    begin
      if cbCAD_PRO_TREL.Text = 'ESTOQUE DE PRODUTOS' then
      cbCAD_PRO_DATA.Text := 'DATA ENTRADA' else
      cbCAD_PRO_DATA.Text := 'DATA LANÇAMENTO';
    end;
  end
  else if tsCAD_REP.TabVisible then
  begin
    if (cbCAD_REP_DATA.Enabled) and (cbCAD_REP_DATA.Text = '') then
        cbCAD_REP_DATA.Text := 'DATA VENDA';
  end
  else if tsCAD_CLI.TabVisible then
  begin
    if (cbCAD_CLI_DATA.Enabled) and (cbCAD_CLI_DATA.Text = '') then
        cbCAD_CLI_DATA.Text := 'DATA VENDA';
  end
  else if tsGER.TabVisible then
  begin
    if (cbGER_DATA.Enabled) and (cbGER_DATA.Text = '') then
    begin
      if copy(cbGER_TREL.Text,1,7) = 'COMPRAS' then
      cbGER_DATA.Text := 'DATA CHEGADA - PREVISÃO' else
      if cbGER_TREL.Text = 'KARDEX DE VENDAS POR PRODUTOS' then
      cbGER_DATA.Text := 'DATA VENDA+DATA PREVISTA DE CHEGADA' else
      cbGER_DATA.Text := 'DATA VENDA';
    end;
  end
  else if tsVEN_PRC.TabVisible then
  begin
    if (cbVEN_PRC_DATA.Enabled) and (cbVEN_PRC_DATA.Text = '') then
    begin
      if cbVEN_PRC_TREL.Text = 'SITUAÇÃO DE PROGRAMAÇÃO DE COMPRA' then
      cbVEN_PRC_DATA.Text := 'DATA PREVISÃO CHEGADA';
    end;  
  end
  else if tsCAD_CON.TabVisible then
  begin
    if (cbCAD_CON_DATA.Enabled) and (cbCAD_CON_DATA.Text = '') then
    cbCAD_CON_DATA.Text := 'DATA LANÇAMENTO';
  end
  else if tsCAI_MOV.TabVisible then
  begin
    if (cbCAI_MOV_DATA.Enabled) and (cbCAI_MOV_DATA.Text = '') then
    begin
      cbCAI_MOV_DATA.SetFocus;
      raise exception.Create('Tipo de Data de Pesquisa não Selecionado !');
    end;

    cbCAI_MOV_CDCX.Text := 'TODOS';
  end
  else if tsCAD_FUN.TabVisible then
  begin
    if (cbCAD_FUN_DATA.Enabled) and (cbCAD_FUN_DATA.Text = '') then
    begin
      cbCAD_FUN_DATA.SetFocus;
      raise exception.Create('Tipo de Data de Pesquisa não Selecionado !');
    end;
  end
  else if tsNFE_CAB.TabVisible then
  begin
    if (cbNFE_CAB_DATA.Enabled) and (cbNFE_CAB_DATA.Text = '') then
    begin
      cbNFE_CAB_DATA.SetFocus;
      raise exception.Create('Tipo de Data de Pesquisa não Selecionado !');
    end;
  end
  else if tsFIN_REC.TabVisible then
  begin
    if cbFIN_REC_DATA.Text = '' then
    cbFIN_REC_DATA.Text := 'DATA VENCIMENTO'
  end
  else if tsFIN_PAG.TabVisible then
  begin
    if cbFIN_PAG_DATA.Text = '' then
    cbFIN_PAG_DATA.Text := 'DATA VENCIMENTO';
  end
  else if tsNFE_LOG.TabVisible then
  begin
    if cbNFE_LOG_DATA.Text = '' then
    cbNFE_LOG_DATA.Text := 'DATA LANÇAMENTO';
  end
  else if tsFIN_DUP.TabVisible then
  begin
    if cbFIN_DUP_DATA.Text = '' then
    cbFIN_DUP_TREL.Text := 'DATA VENCIMENTO';
  end;
end;

procedure Tfrmrelatorio_geral.cbCAD_CLI_TRELChange(Sender: TObject);
begin
  if (cbCAD_CLI_TREL.Text = 'ETIQUETA DE MALA DIRETA') then
  begin
    cbCAD_CLI_DATA.Enabled := false;
    clCAD_CLI_DATA.Enabled := false;
    cbCAD_CLI_DCLI.Enabled := false;
    clCAD_CLI_DCLI.Enabled := false;
    cbCAD_CLI_DCID.Enabled := false;
    clCAD_CLI_DCID.Enabled := false;
    cbCAD_CLI_ESTA.Enabled := false;
    clCAD_CLI_ESTA.Enabled := false;
  end
end;

procedure Tfrmrelatorio_geral.cbCAI_MOV_TRELChange(Sender: TObject);
begin
  cbCAI_MOV_TIPO.Enabled := ((cbCAI_MOV_TREL.Text =  'FLUXO DE CAIXA - ANALÍTICO'));
  cbCAI_MOV_STCO.Enabled := ((cbCAI_MOV_TREL.Text <> 'FLUXO DE CAIXA - SINTÉTICO')  and (cbCAI_MOV_TREL.Text <> 'FLUXO DE CAIXA - ANALÍTICO'));

  if cbCAI_MOV_TREL.Text = 'FLUXO DE CAIXA - SINTÉTICO' then
  begin
    cbCAI_MOV_STFI.Enabled := false;
    cbCAI_MOV_DCLI.Enabled := false;
    cbCAI_MOV_DFOR.Enabled := false;
    cbCAI_MOV_DVEN.Enabled := false;
    cbCAI_MOV_DREP.Enabled := false;
  end
  else if cbCAI_MOV_TREL.Text = 'FLUXO DE CAIXA - ANALÍTICO' then
  begin
    cbCAI_MOV_STFI.Enabled := true;
    cbCAI_MOV_DCLI.Enabled := true;
    cbCAI_MOV_DFOR.Enabled := true;
    cbCAI_MOV_DVEN.Enabled := true;
    cbCAI_MOV_DREP.Enabled := true;
  end;
end;

procedure Tfrmrelatorio_geral.cbNFE_CAB_TRELChange(Sender: TObject);
begin
  if cbNFE_CAB_TREL.Text = 'RESUMO DE NOTAS FISCAIS' then
  begin
    cbNFE_CAB_TNFE.Text    := 'VENDA';
    cbNFE_CAB_DVEN.Enabled := false;
    cbNFE_CAB_DREP.Enabled := false;
    cbNFE_CAB_DTRA.Enabled := false;
    cbNFE_CAB_CPRO.Enabled := false;
  end
  else
  cbNFE_CAB_TNFE.Text := 'TODOS';
end;

procedure Tfrmrelatorio_geral.cbPAG_COM_DESCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if cbPAG_COM_DESC.Text = '' then
     cbPAG_COM_DESC.Text := '0';

  cbPAG_COM_DESC.Text := formatfloat('0.00',strtofloat(cbPAG_COM_DESC.Text));
end;

procedure Tfrmrelatorio_geral.cbCAD_PRO_DEMPChange(Sender: TObject);
begin
  if cbCAD_PRO_DEMP.Text <> 'TODOS' then
  begin
    with aux do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM PAR_SIS');
      SQL.Add('WHERE  PAR_FANT = '''+cbCAD_PRO_DEMP.Text+'''');
      Open;
      cbCAD_PRO_DEMP.Tag := fields[0].AsInteger;
    end;
  end
  else
    cbCAD_PRO_DEMP.Tag := 0;
end;

procedure Tfrmrelatorio_geral.VEN_PED_PEDIDO_VENDA;
begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Pedidos');

  if qrpven_ped = nil then
  qrpven_ped:= Tqrpven_ped.Create(self);

  try

    with qrpven_ped.roman do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
      SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND      PED_VEN_CAB.ID = '''+cdpd+'''');
      SQL.Add('ORDER BY PED_VEN_CAB.ID DESC');
      Open;
    end;

    with qrpven_ped.ven_efe do
    begin
      SQL.Clear;
      SQL.Add('SELECT   CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
      SQL.Add('         PED_VEN_ITE.ROM_DUNI,PED_VEN_ITE.ID,PED_VEN_ITE.ROM_ITEM,PED_VEN_ITE.ROM_DCOR,PED_VEN_ITE.ROM_DPRO,PED_VEN_ITE.ROM_QTDE,PED_VEN_ITE.ROM_UNIT,PED_VEN_ITE.ROM_PREC,PED_VEN_ITE.ROM_VDSC,PED_VEN_ITE.ROM_TOTA,PED_VEN_ITE.ROM_OBSE');
      SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
      SQL.Add('WHERE    PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND      PED_VEN_ITE.ROM_CCAB = '''+cdpd+'''');
      SQL.Add('ORDER BY PED_VEN_ITE.ROM_ITEM');
      Open;
    end;

    qrpven_ped.qrmemo1.Lines.Add(TRIM(frmprincipal.parametrosPAR_OPED.AsString));
    qrpven_ped.qrmemo2.Lines.Add(TRIM(frmprincipal.parametrosPAR_OPED.AsString));

    qrpven_ped.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpven_ped.carregaFoto2(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);

    qrpven_ped.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpven_ped.qrlraza2.Caption     := qrpven_ped.qrlraza.Caption;

    qrpven_ped.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpven_ped.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpven_ped.qrlend3.Caption      := qrpven_ped.qrlend1.Caption;
    qrpven_ped.qrlend4.Caption      := qrpven_ped.qrlend2.Caption;

    qrpven_ped.qrlemai_site.Caption  := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpven_ped.qrlemai_site2.Caption := qrpven_ped.qrlemai_site.Caption;

    qrpven_ped.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpven_ped.qrlfone2.Caption     := qrpven_ped.qrlfone.Caption;

    qrpven_ped.ReportTitle          := 'Pedido de Venda';
    qrpven_ped.qrltitulo.Caption    := 'Pedido de Venda';

    if qrpven_ped.romanROM_STPD.AsString = 'DEVOLUÇÃO' then
    begin
      qrpven_ped.ReportTitle           := 'Pedido de Devolução';
      qrpven_ped.qrltitulo.Caption     := 'Pedido de Devolução';
    end
    else if qrpven_ped.romanROM_STPD.AsString = 'ABATIMENTO' then
    begin
      qrpven_ped.ReportTitle           := 'Pedido de Abatimento';
      qrpven_ped.qrltitulo.Caption     := 'Pedido de Abatimento';
    end
    else if qrpven_ped.romanROM_STPD.AsString = 'SERVIÇO' then
    begin
      qrpven_ped.ReportTitle           := 'Pedido de Serviço';
      qrpven_ped.qrltitulo.Caption     := 'Pedido de Serviço';
    end;

    qrpven_ped.qrltitulo2.Caption := qrpven_ped.qrltitulo.Caption;
    qrpven_ped.qrlrodape.Caption  := frmprincipal.cad_usuUSU_DUSU.AsString;

    qrpven_ped.qrlrodape3.Caption := '';
    if qrpven_ped.romanROM_CBAI.AsInteger > 0 then
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT USU_DUSU FROM CAD_USU');
      SQL.Add('WHERE  USU_CUSU = '''+qrpven_ped.romanROM_CBAI.AsString+'''');
      Open;
      qrpven_ped.qrlrodape3.Caption := fields[0].AsString+' '+formatDateTime('dd/mm/yy hh:mm:ss',qrpven_ped.romanROM_TBAI.AsDateTime);
    end;

    qrpven_ped.qrlrodape2.Caption   := qrpven_ped.qrlrodape.Caption;
    qrpven_ped.qrlrodape4.Caption   := qrpven_ped.qrlrodape3.Caption;

    qrpven_ped.qrlcli.Caption  := oStrZero(qrpven_ped.romanROM_CCLI.AsInteger,5)+' - '+qrpven_ped.romanCLI_FANT.AsString;
    qrpven_ped.qrlcli2.Caption := qrpven_ped.qrlcli.Caption;

    qrpven_ped.qrlven.Caption  := oStrZero(qrpven_ped.romanROM_CVEN.AsInteger,5)+' - '+qrpven_ped.romanUSU_DUSU.AsString;
    qrpven_ped.qrlven2.Caption := qrpven_ped.qrlven.Caption;

    qrpven_ped.qrlrep.Caption  := oStrZero(qrpven_ped.romanROM_CREP.AsInteger,5)+' - '+qrpven_ped.romanREP_FANT.AsString;
    qrpven_ped.qrlrep2.Caption := qrpven_ped.qrlrep.Caption;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+RECUsuarios.ID+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpven_ped.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    if frmprincipal.parametrosPAR_NVIA.AsString = '1' then
    begin
      qrpven_ped.qtitulo2.Height    := 0;
      qrpven_ped.qsubtitulo2.Height := 0;
      qrpven_ped.qdetalhe2.Height   := 0;
      qrpven_ped.qsumario2.Height   := 0;
    end;

    qrpven_ped.qrldesc.Caption := '';
    if (qrpven_ped.romanROM_TDSC.AsString = '%') and (qrpven_ped.romanROM_PDSC.AsFloat > 0) then
    qrpven_ped.qrldesc.Caption := 'Desc (%)' else
    if (qrpven_ped.romanROM_TDSC.AsString = '$') and (qrpven_ped.romanROM_PDSC.AsFloat > 0) then
    qrpven_ped.qrldesc.Caption  := 'Desc ($)';
    qrpven_ped.qrldesc2.Caption := qrpven_ped.qrldesc.Caption;

    if qrpven_ped.qrldesc.Caption = '' then
    begin
      qrpven_ped.qrdbROM_PDSC.DataField := '';
      qrpven_ped.qrdbROM_PDSC.DataSet   := nil;
    end;  

    qrpven_ped.qrlpagina.Caption  := 'Página: '+qrpven_ped.romanROM_CONC.AsString;
    if (qrpven_ped.romanROM_PPRN.AsInteger) >= 1 then
    qrpven_ped.qrlpagina.Caption  := 'Página: '+qrpven_ped.romanROM_CONC.AsString+'/'+inttostr(qrpven_ped.romanROM_PPRN.AsInteger + 1);
    qrpven_ped.qrlpagina2.Caption := qrpven_ped.qrlpagina.Caption;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PAG_PARC,PAG_DPAG FROM TAB_PAG');
      SQL.Add('WHERE  ID = '''+qrpven_ped.romanROM_CPAG.AsString+'''');
      Open;

      qrpven_ped.qrlparc.Caption  := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpven_ped.qrlparc2.Caption := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpven_ped.qrlpag.Caption   := fields[1].AsString;
      qrpven_ped.qrlpag2.Caption  := fields[1].AsString;

      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+RECUsuarios.ID+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpven_ped.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpven_ped.lanpa1.Caption  := '';
    qrpven_ped.ladpa1.Caption  := '';
    qrpven_ped.lavpa1.Caption  := '';
    qrpven_ped.lanpa2.Caption  := '';
    qrpven_ped.ladpa2.Caption  := '';
    qrpven_ped.lavpa2.Caption  := '';
    qrpven_ped.lanpa3.Caption  := '';
    qrpven_ped.ladpa3.Caption  := '';
    qrpven_ped.lavpa3.Caption  := '';
    qrpven_ped.lanpa4.Caption  := '';
    qrpven_ped.ladpa4.Caption  := '';
    qrpven_ped.lavpa4.Caption  := '';
    qrpven_ped.lanpa5.Caption  := '';
    qrpven_ped.ladpa5.Caption  := '';
    qrpven_ped.lavpa5.Caption  := '';
    qrpven_ped.lanpa6.Caption  := '';
    qrpven_ped.ladpa6.Caption  := '';
    qrpven_ped.lavpa6.Caption  := '';
    qrpven_ped.lanpa7.Caption  := '';
    qrpven_ped.ladpa7.Caption  := '';
    qrpven_ped.lavpa7.Caption  := '';
    qrpven_ped.lanpa8.Caption  := '';
    qrpven_ped.ladpa8.Caption  := '';
    qrpven_ped.lavpa8.Caption  := '';
    qrpven_ped.lanpa9.Caption  := '';
    qrpven_ped.ladpa9.Caption  := '';
    qrpven_ped.lavpa9.Caption  := '';
    qrpven_ped.lanpa10.Caption := '';
    qrpven_ped.ladpa10.Caption := '';
    qrpven_ped.lavpa10.Caption := '';

    if cdbx = '' then
    VEN_PED_PEDIDO_VENDA_SEM_BAIXA
    else
    VEN_PED_PEDIDO_VENDA_COM_BAIXA(qrpven_ped.romanROM_STCO.AsString);

    qrpven_ped.lanpa21.Caption  := qrpven_ped.lanpa1.Caption ;
    qrpven_ped.ladpa21.Caption  := qrpven_ped.ladpa1.Caption ;
    qrpven_ped.lavpa21.Caption  := qrpven_ped.lavpa1.Caption ;
    qrpven_ped.lanpa22.Caption  := qrpven_ped.lanpa2.Caption ;
    qrpven_ped.ladpa22.Caption  := qrpven_ped.ladpa2.Caption ;
    qrpven_ped.lavpa22.Caption  := qrpven_ped.lavpa2.Caption ;
    qrpven_ped.lanpa23.Caption  := qrpven_ped.lanpa3.Caption ;
    qrpven_ped.ladpa23.Caption  := qrpven_ped.ladpa3.Caption ;
    qrpven_ped.lavpa23.Caption  := qrpven_ped.lavpa3.Caption ;
    qrpven_ped.lanpa24.Caption  := qrpven_ped.lanpa4.Caption ;
    qrpven_ped.ladpa24.Caption  := qrpven_ped.ladpa4.Caption ;
    qrpven_ped.lavpa24.Caption  := qrpven_ped.lavpa4.Caption ;
    qrpven_ped.lanpa25.Caption  := qrpven_ped.lanpa5.Caption ;
    qrpven_ped.ladpa25.Caption  := qrpven_ped.ladpa5.Caption ;
    qrpven_ped.lavpa25.Caption  := qrpven_ped.lavpa5.Caption ;
    qrpven_ped.lanpa26.Caption  := qrpven_ped.lanpa6.Caption ;
    qrpven_ped.ladpa26.Caption  := qrpven_ped.ladpa6.Caption ;
    qrpven_ped.lavpa26.Caption  := qrpven_ped.lavpa6.Caption ;
    qrpven_ped.lanpa27.Caption  := qrpven_ped.lanpa7.Caption ;
    qrpven_ped.ladpa27.Caption  := qrpven_ped.ladpa7.Caption ;
    qrpven_ped.lavpa27.Caption  := qrpven_ped.lavpa7.Caption ;
    qrpven_ped.lanpa28.Caption  := qrpven_ped.lanpa8.Caption ;
    qrpven_ped.ladpa28.Caption  := qrpven_ped.ladpa8.Caption ;
    qrpven_ped.lavpa28.Caption  := qrpven_ped.lavpa8.Caption ;
    qrpven_ped.lanpa29.Caption  := qrpven_ped.lanpa9.Caption ;
    qrpven_ped.ladpa29.Caption  := qrpven_ped.ladpa9.Caption ;
    qrpven_ped.lavpa29.Caption  := qrpven_ped.lavpa9.Caption ;
    qrpven_ped.lanpa210.Caption := qrpven_ped.lanpa10.Caption;
    qrpven_ped.ladpa210.Caption := qrpven_ped.ladpa10.Caption;
    qrpven_ped.lavpa210.Caption := qrpven_ped.lavpa10.Caption;

    qrpven_ped.Prepare;

    if tag = 0 then
       qrpven_ped.Preview
    else if tag = 1 then
       qrpven_ped.Print
    else if tag = 2 then
    begin
      qrpven_ped.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpven_ped.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpven_ped.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpven_ped);
    qrpven_ped.Free;
  end;
end;

procedure Tfrmrelatorio_geral.VEN_PED_PEDIDO_VENDA_SEM_BAIXA;
var
  i: word;
  valo: double;
begin
  with consulta do
  begin
    valo := qrpven_ped.romanROM_TCDE.AsFloat;

    SQL.Clear;
    SQL.Add('SELECT PAG_PARC,PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,PAG_D010 FROM TAB_PAG');
    SQL.Add('WHERE  ID = '''+qrpven_ped.romanROM_CPAG.AsString+'''');
    Open;
  end;

  for i := 1 to consulta.Fields[0].AsInteger do
  begin
    case i of
        1: begin
             qrpven_ped.lanpa1.Caption  := '01)';
             qrpven_ped.ladpa1.Caption  := formatDateTime('dd/mm/yy',incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[1].Value));
             qrpven_ped.lavpa1.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        2: begin
             qrpven_ped.lanpa2.Caption  := '02)';
             qrpven_ped.ladpa2.Caption  := formatDateTime('dd/mm/yy',incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[2].Value));
             qrpven_ped.lavpa2.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        3: begin
             qrpven_ped.lanpa3.Caption  := '03)';
             qrpven_ped.ladpa3.Caption  := formatDateTime('dd/mm/yy',incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[3].Value));
             qrpven_ped.lavpa3.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        4: begin
             qrpven_ped.lanpa4.Caption  := '04)';
             qrpven_ped.ladpa4.Caption  := formatDateTime('dd/mm/yy',incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[4].Value));
             qrpven_ped.lavpa4.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        5: begin
             qrpven_ped.lanpa5.Caption  := '05)';
             qrpven_ped.ladpa5.Caption  := formatDateTime('dd/mm/yy',incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[5].Value));
             qrpven_ped.lavpa5.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        6: begin
             qrpven_ped.lanpa6.Caption  := '06)';
             qrpven_ped.ladpa6.Caption  := formatDateTime('dd/mm/yy',incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[6].Value));
             qrpven_ped.lavpa6.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        7: begin
             qrpven_ped.lanpa7.Caption  := '07)';
             qrpven_ped.ladpa7.Caption  := formatDateTime('dd/mm/yy',incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[7].Value));
             qrpven_ped.lavpa7.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        8: begin
             qrpven_ped.lanpa8.Caption  := '08)';
             qrpven_ped.ladpa8.Caption  := formatDateTime('dd/mm/yy',incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[8].Value));
             qrpven_ped.lavpa8.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        9: begin
             qrpven_ped.lanpa9.Caption  := '09)';
             qrpven_ped.ladpa9.Caption  := formatDateTime('dd/mm/yy',incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[9].Value));
             qrpven_ped.lavpa9.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
       10: begin
             qrpven_ped.lanpa10.Caption  := '10)';
             qrpven_ped.ladpa10.Caption  := formatDateTime('dd/mm/yy',incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[10].Value));
             qrpven_ped.lavpa10.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
    end;
  end;
end;

procedure Tfrmrelatorio_geral.VEN_PED_PEDIDO_VENDA_COM_BAIXA(stco: string);
var
  i,p: word;
begin
  with consulta do
  begin
    SQL.Clear;
    if stco = 'BANCÁRIO' then
    SQL.Add('SELECT   FIN_DOCT,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_ban_rec']) else
    SQL.Add('SELECT   FIN_NCHQ,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_car_rec']);
    SQL.Add('WHERE    FIN_CDBX = '''+cdbx+'''');
    SQL.Add('ORDER BY FIN_DVEN');
    Open;

    if fields[3].IsNull then
    begin
      SQL.Clear;
      if stco = 'BANCÁRIO' then
      SQL.Add('SELECT   FIN_DOCT,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_ban_bai']) else
      SQL.Add('SELECT   FIN_NCHQ,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_car_bai']);
      SQL.Add('WHERE    FIN_CDBX = '''+cdbx+'''');
      SQL.Add('ORDER BY FIN_DVEN');
      Open;
    end
  end;

  consulta.Last;
  p := consulta.recno;
  consulta.First;

  for i := 1 to p do
  begin
    case i of
        1: begin
             qrpven_ped.lanpa1.Caption  := '01) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa1.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa1.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        2: begin
             qrpven_ped.lanpa2.Caption  := '02) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa2.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa2.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        3: begin
             qrpven_ped.lanpa3.Caption  := '03) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa3.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa3.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        4: begin
             qrpven_ped.lanpa4.Caption  := '04) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa4.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa4.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        5: begin
             qrpven_ped.lanpa5.Caption  := '05) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa5.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa5.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        6: begin
             qrpven_ped.lanpa6.Caption  := '06) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa6.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa6.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        7: begin
             qrpven_ped.lanpa7.Caption  := '07) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa7.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa7.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        8: begin
             qrpven_ped.lanpa8.Caption  := '08) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa8.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa8.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        9: begin
             qrpven_ped.lanpa9.Caption  := '09) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa9.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa9.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
       10: begin
             qrpven_ped.lanpa10.Caption := '10) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa10.Caption := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa10.Caption := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
           end;

    end;
  end;
end;

procedure Tfrmrelatorio_geral.VEN_PED_PEDIDO_VENDA_CONFERENCIA;
begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Pedidos');

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT VEN_QTSP,VEN_QTPC');
    SQL.Add('FROM   TAB_PED,'+SLPrincipal.Values['ped_ven_cab']+' "ROM_CAB"');
    SQL.Add('WHERE  ROM_STPD   = VEN_TIPO');
    SQL.Add('AND    ROM_CAB.ID = '''+cdpd+'''');
    Open;

    if (fields[0].AsString = '1') and (fields[1].AsString = 'PC') then
    frmprincipal.consulta.tag := 1;
  end;


  if qrpven_con = nil then
  qrpven_con := Tqrpven_con.Create(self);

  try
    with qrpven_con.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT ROM_CAB.ROM_CDRO,ROM_CAB.ROM_DERO,ROM_CAB.ROM_CDNF,ROM_CAB.ROM_DROM,ROM_CAB.ROM_DNFS,ROM_CAB.ROM_CONC,ROM_CAB.ROM_TCDE,ROM_CAB.ROM_TSDE,ROM_CAB.ROM_STCO,ROM_CAB.ROM_CPAG,TAB_PAG.PAG_DPAG,ROM_CAB.ROM_CVEN,ROM_CAB.ROM_OBSE,');
      SQL.Add('       CAD_USU.USU_DUSU,ROM_CAB.ROM_CREP,CAD_REP.REP_FANT,ROM_CAB.ROM_CCLI,CAD_CLI.CLI_FANT,CAD_CLI.CLI_RAZA,');
      SQL.Add('       ROM_ITE.ROM_CDET,ROM_ITE.ROM_ITEM,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_COMP,ROM_ITE.ROM_DCOR,ROM_ITE.ROM_DPRO,ROM_ITE.ROM_DUNI,TAB_UNI.UNI_DUNI,ROM_ITE.ROM_QTDE,ROM_ITE.ROM_QTRL,ROM_ITE.ROM_UNIT,ROM_ITE.ROM_TOTA,');
      SQL.Add('       CAD_PRO_IMG.PRO_INS1,CAD_PRO_IMG.PRO_INS2,CAD_PRO_IMG.PRO_INS3,CAD_PRO_IMG.PRO_INS4,CAD_PRO_IMG.PRO_INS5,CAD_PRO_IMG.PRO_INS6,CAD_PRO_IMG.PRO_INS7,CAD_PRO_IMG.PRO_INS8');
      SQL.Add('FROM   TAB_UNI,CAD_PRO,CAD_PRO_IMG,TAB_PAG,CAD_USU,CAD_REP,CAD_CLI,'+SLPrincipal.Values['ped_ven_cab']+' "ROM_CAB" ,'+SLPrincipal.Values['ped_ven_ite']+' "ROM_ITE"');
      SQL.Add('WHERE  ROM_CAB.ID       = ROM_ITE.ROM_CCAB');
      SQL.Add('AND    ROM_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND    CAD_PRO.PRO_DUNI = TAB_UNI.UNI_REFE');
      SQL.Add('AND    CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');
      SQL.Add('AND    ROM_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND    ROM_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND    ROM_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND    ROM_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND    ROM_CAB.ID = '''+cdpd+'''');
      SQL.Add('ORDER BY ROM_ITE.ROM_ITEM');
      Open;
    end;

    qrpven_con.qrmemo1.Lines.Add(TRIM(frmprincipal.parametrosPAR_OPED.AsString));
    
    qrpven_con.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpven_con.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpven_con.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpven_con.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpven_con.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpven_con.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpven_con.qrltitulo.Caption    := 'Pedido para Simples Conferencia';
    qrpven_con.ReportTitle          := 'Pedido para Simples Conferencia';
    qrpven_con.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+RECUsuarios.ID+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpven_con.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpven_con.Prepare;

    if tag = 0 then
       qrpven_con.Preview
    else if tag = 1 then
       qrpven_con.Print
    else if tag = 2 then
    begin
      qrpven_con.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpven_con.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpven_con.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpven_con);
    qrpven_con.Free;
  end;
end;

procedure Tfrmrelatorio_geral.CAI_MOV_FLUXO_CAIXA_CARTEIRA;
function RETORNA_CDCX(old: string) : string;
var
  i,j: word;
  cdcx: string;
begin
  cdcx := '';
  for j := 1 to Length(old) do
  begin
    if copy(old,j,1) = '(' then
       break;
  end;

  inc(j);

  for i := j to Length(old) do
  begin
    if copy(old,i,1) = ')' then
       break;

    cdcx := trim(cdcx + copy(old,i,1));
  end;

  result := cdcx;
end;

begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  if qrpcai_mov_flx_car = nil then
     qrpcai_mov_flx_car := Tqrpcai_mov_flx_car.Create(self);

  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';

  if cbCAI_MOV_DATA.Text = 'DATA LANÇAMENTO' then
     cDATA := 'FIN_DCAD';

  try
    with qrpcai_mov_flx_car.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT    CLI_FANT,USU_DUSU,REP_FANT,FIN_CDBX,FIN_STDO,FIN_TIPO,FIN_STFI,FIN_CONC,FIN_DOCT,FIN_DCAD,FIN_DPAG,');
      SQL.Add('          SUM(FIN_VALO) "FIN_VALO",SUM(FIN_VPEN) "FIN_VPEN",SUM(FIN_VPAG) "FIN_VPAG"');
      SQL.Add('FROM      CAD_CLI,CAD_USU,CAD_REP,'+SLPrincipal.Values['fin_rec_car_bai']+' "FIN_REC_CAR_BAI"');
      SQL.Add('WHERE     CAD_CLI.ID       = FIN_CCLI');
      SQL.Add('AND       CAD_USU.USU_CUSU = FIN_CVEN');
      SQL.Add('AND       CAD_REP.ID       = FIN_CREP');
//      SQL.Add('AND       FIN_CREP <> '''+frmprincipal.parametrosPAR_CREP.AsString+'''');
      SQL.Add('AND       FIN_TIPO = ''CARTEIRA''');

      if cDATA <> '' then
         SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');

      if cbCAI_MOV_CDCX.Text <> 'TODOS' then
         SQL.Add('AND FIN_CDCX = '''+RETORNA_CDCX(cbCAI_MOV_CDCX.Text)+'''');

      if cbCAI_MOV_STFI.Text <> 'TODOS' then
      begin
        if cbCAI_MOV_STFI.Text = 'PENDENTE' then
        begin
          SQL.Add('AND FIN_STFI <> ''CANCELADO''');
          SQL.Add('AND FIN_STFI <> ''DEVOLUÇÃO''');
          SQL.Add('AND FIN_STFI <> ''ABATIMENTO''');
          SQL.Add('AND FIN_STFI NOT LIKE ''PAGO%''');
        end else
        SQL.Add('AND FIN_STFI = '''+cbCAI_MOV_STFI.Text+'''');
      end else
      SQL.Add('AND FIN_STFI <> ''CANCELADO''');

      if cbCAI_MOV_DCLI.Text <> 'TODOS' then
         SQL.Add('AND CAD_CLI.CLI_FANT LIKE ''%'+cbCAI_MOV_DCLI.Text+'%''');

      if cbCAI_MOV_DVEN.Text <> 'TODOS' then
         SQL.Add('AND CAD_USU.USU_DUSU LIKE ''%'+cbCAI_MOV_DVEN.Text+'%''');

      if cbCAI_MOV_DREP.Text <> 'TODOS' then
         SQL.Add('AND CAD_REP.REP_FANT LIKE ''%'+cbCAI_MOV_DREP.Text+'%''');

      SQL.Add('GROUP BY  CLI_FANT,USU_DUSU,REP_FANT,FIN_CDBX,FIN_STDO,FIN_TIPO,FIN_STFI,FIN_CONC,FIN_DOCT,FIN_DCAD,FIN_DPAG');
      SQL.Add('ORDER BY  7,10,9');
      Open;
    end;

    qrpcai_mov_flx_car.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpcai_mov_flx_car.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpcai_mov_flx_car.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpcai_mov_flx_car.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpcai_mov_flx_car.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpcai_mov_flx_car.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpcai_mov_flx_car.qrltitulo.Caption    := 'Fluxo de Caixa de Carteira';
    qrpcai_mov_flx_car.ReportTitle          := 'Fluxo de Caixa de Carteira';
    qrpcai_mov_flx_car.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+RECUsuarios.ID+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpcai_mov_flx_car.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpcai_mov_flx_car.Prepare;
    if tag = 0 then
       qrpcai_mov_flx_car.Preview
    else if tag = 1 then
       qrpcai_mov_flx_car.Print
    else if tag = 2 then
    begin
      qrpcai_mov_flx_car.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpcai_mov_flx_car.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpcai_mov_flx_car.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpcai_mov_flx_car);
    qrpcai_mov_flx_car.Free;
  end;
end;

procedure Tfrmrelatorio_geral.CAI_MOV_FLUXO_CAIXA_BANCARIO;
function RETORNA_CDCX(old: string) : string;
var
  i,j: word;
  cdcx: string;
begin
  cdcx := '';
  for j := 1 to Length(old) do
  begin
    if copy(old,j,1) = '(' then
       break;
  end;

  inc(j);

  for i := j to Length(old) do
  begin
    if copy(old,i,1) = ')' then
       break;

    cdcx := trim(cdcx + copy(old,i,1));
  end;

  result := cdcx;
end;

begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  if qrpcai_mov_flx_ban = nil then
     qrpcai_mov_flx_ban := Tqrpcai_mov_flx_ban.Create(self);

  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';

  if cbCAI_MOV_DATA.Text = 'DATA LANÇAMENTO' then
     cDATA := 'FIN_DCAD';

  try
    with qrpcai_mov_flx_ban.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT    CLI_FANT,USU_DUSU,REP_FANT,FIN_CDBX,FIN_STDO,FIN_TIPO,FIN_STFI,FIN_CONC,FIN_DOCT,FIN_DCAD,FIN_DPAG,');
      SQL.Add('          SUM(FIN_VALO) "FIN_VALO",SUM(FIN_VPEN) "FIN_VPEN",SUM(FIN_VPAG) "FIN_VPAG"');
      SQL.Add('FROM      CAD_CLI,CAD_USU,CAD_REP,'+SLPrincipal.Values['fin_rec_ban_bai']+' "FIN_REC_BAN_BAI"');
      SQL.Add('WHERE     CAD_CLI.ID       = FIN_CCLI');
      SQL.Add('AND       CAD_USU.USU_CUSU = FIN_CVEN');
      SQL.Add('AND       CAD_REP.ID       = FIN_CREP');

      if cDATA <> '' then
         SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');

      if cbCAI_MOV_CDCX.Text <> 'TODOS' then
         SQL.Add('AND FIN_CDCX = '''+RETORNA_CDCX(cbCAI_MOV_CDCX.Text)+'''');

      if cbCAI_MOV_STFI.Text <> 'TODOS' then
      begin
        if cbCAI_MOV_STFI.Text = 'PENDENTE' then
        begin
          SQL.Add('AND FIN_STFI <> ''CANCELADO''');
          SQL.Add('AND FIN_STFI <> ''DEVOLUÇÃO''');
          SQL.Add('AND FIN_STFI <> ''ABATIMENTO''');
          SQL.Add('AND FIN_STFI NOT LIKE ''PAGO%''');
        end else
        SQL.Add('AND FIN_STFI = '''+cbCAI_MOV_STFI.Text+'''');
      end else
      SQL.Add('AND FIN_STFI <> ''CANCELADO''');

      if cbCAI_MOV_DCLI.Text <> 'TODOS' then
         SQL.Add('AND CAD_CLI.CLI_FANT LIKE ''%'+cbCAI_MOV_DCLI.Text+'%''');

      if cbCAI_MOV_DVEN.Text <> 'TODOS' then
         SQL.Add('AND CAD_USU.USU_DUSU LIKE ''%'+cbCAI_MOV_DVEN.Text+'%''');

      if cbCAI_MOV_DREP.Text <> 'TODOS' then
         SQL.Add('AND CAD_REP.REP_FANT LIKE ''%'+cbCAI_MOV_DREP.Text+'%''');

      SQL.Add('GROUP BY  CLI_FANT,USU_DUSU,REP_FANT,FIN_CDBX,FIN_STDO,FIN_TIPO,FIN_STFI,FIN_CONC,FIN_DOCT,FIN_DCAD,FIN_DPAG');
      SQL.Add('ORDER BY  7,10,9');
      Open;
    end;

    qrpcai_mov_flx_ban.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpcai_mov_flx_ban.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpcai_mov_flx_ban.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpcai_mov_flx_ban.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpcai_mov_flx_ban.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpcai_mov_flx_ban.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpcai_mov_flx_ban.qrltitulo.Caption    := 'Fluxo de Caixa Bancário';
    qrpcai_mov_flx_ban.ReportTitle          := 'Fluxo de Caixa Bancário';
    qrpcai_mov_flx_ban.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+RECUsuarios.ID+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpcai_mov_flx_ban.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpcai_mov_flx_ban.Prepare;
    if tag = 0 then
       qrpcai_mov_flx_ban.Preview
    else if tag = 1 then
       qrpcai_mov_flx_ban.Print
    else if tag = 2 then
    begin
      qrpcai_mov_flx_ban.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpcai_mov_flx_ban.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpcai_mov_flx_ban.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpcai_mov_flx_ban);
    qrpcai_mov_flx_ban.Free;
  end;
end;

procedure Tfrmrelatorio_geral.CAI_MOV_CAIXA_ANALITICO;
function RETORNA_CDCX(old: string) : string;
var
  i,j: word;
  cdcx: string;
begin
  cdcx := '';
  for j := 1 to Length(old) do
  begin
    if copy(old,j,1) = '(' then
       break;
  end;

  inc(j);

  for i := j to Length(old) do
  begin
    if copy(old,i,1) = ')' then
       break;

    cdcx := trim(cdcx + copy(old,i,1));
  end;

  result := cdcx;
end;

begin
  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';

  if cbCAI_MOV_DATA.Text = 'DATA LANÇAMENTO' then
     cDATA := 'FIN_DCAD';

  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  if qrpcai_mov_cai_ana = nil then
     qrpcai_mov_cai_ana := Tqrpcai_mov_cai_ana.Create(self);

  try
    with qrpcai_mov_cai_ana.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT    ROM_DERO,PED_VEN_CAB.ID,CLI_FANT,USU_DUSU,REP_FANT,FIN_CDBX,FIN_STDO,FIN_CONC,FIN_TIPO,FIN_DCAD,FIN_DOCT,SUM(FIN_VALO) "FIN_VALO"');
      SQL.Add('FROM      CAD_REP,CAD_USU,CAD_CLI,'+SLPrincipal.Values['fin_rec_ban_bai']+' "FIN_REC_BAN_BAI" ,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE     CAD_CLI.ID = FIN_CCLI');
      SQL.Add('AND       CAD_REP.ID = FIN_CREP');
      SQL.Add('AND       ROM_CDBX   = FIN_CDBX');
      SQL.Add('AND       USU_CUSU   = FIN_CVEN');
      SQL.Add('AND       FIN_STFI <> ''CANCELADO''');

      if cDATA <> '' then
         SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');

      if cbCAI_MOV_CDCX.Text <> 'TODOS' then
         SQL.Add('AND FIN_CDCX = '''+RETORNA_CDCX(cbCAI_MOV_CDCX.Text)+'''');

      if cbCAI_MOV_STFI.Text <> 'TODOS' then
      begin
        if cbCAI_MOV_STFI.Text = 'PENDENTE' then
        begin
          SQL.Add('AND FIN_STFI <> ''CANCELADO''');
          SQL.Add('AND FIN_STFI <> ''DEVOLUÇÃO''');
          SQL.Add('AND FIN_STFI <> ''ABATIMENTO''');
          SQL.Add('AND FIN_STFI NOT LIKE ''PAGO%''');
        end else
        SQL.Add('AND FIN_STFI = '''+cbCAI_MOV_STFI.Text+'''');
      end else
      SQL.Add('AND FIN_STFI <> ''CANCELADO''');

      if cbCAI_MOV_DCLI.Text <> 'TODOS' then
         SQL.Add('AND CAD_CLI.CLI_FANT LIKE ''%'+cbCAI_MOV_DCLI.Text+'%''');

      if cbCAI_MOV_DVEN.Text <> 'TODOS' then
         SQL.Add('AND CAD_USU.USU_DUSU LIKE ''%'+cbCAI_MOV_DVEN.Text+'%''');

      if cbCAI_MOV_DREP.Text <> 'TODOS' then
         SQL.Add('AND CAD_REP.REP_FANT LIKE ''%'+cbCAI_MOV_DREP.Text+'%''');

      if cbCAI_MOV_TIPO.Text <> 'TODOS' then
         SQL.Add('AND FIN_TIPO LIKE ''%'+cbCAI_MOV_TIPO.Text+'%''');

      SQL.Add('GROUP BY  ROM_DERO,PED_VEN_CAB.ID,CLI_FANT,USU_DUSU,REP_FANT,FIN_CDBX,FIN_STDO,FIN_CONC,FIN_TIPO,FIN_DCAD,FIN_DOCT');
      SQL.Add('UNION');

      SQL.Add('SELECT    ROM_DERO,PED_VEN_CAB.ID,CLI_FANT,USU_DUSU,REP_FANT,FIN_CDBX,FIN_STDO,FIN_CONC,FIN_TIPO,FIN_DCAD,FIN_DOCT,SUM(FIN_VALO) "FIN_VALO"');
      SQL.Add('FROM      CAD_REP,CAD_USU,CAD_CLI,'+SLPrincipal.Values['fin_rec_car_bai']+' "FIN_REC_CAR_BAI" ,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE     CAD_CLI.ID = FIN_CCLI');
      SQL.Add('AND       CAD_REP.ID = FIN_CREP');
      SQL.Add('AND       ROM_CDBX   = FIN_CDBX');
      SQL.Add('AND       USU_CUSU   = FIN_CVEN');
      SQL.Add('AND       FIN_STFI <> ''CANCELADO''');

      if cDATA <> '' then
         SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');

      if cbCAI_MOV_CDCX.Text <> 'TODOS' then
         SQL.Add('AND FIN_CDCX = '''+RETORNA_CDCX(cbCAI_MOV_CDCX.Text)+'''');

      if cbCAI_MOV_STFI.Text <> 'TODOS' then
      begin
        if cbCAI_MOV_STFI.Text = 'PENDENTE' then
        begin
          SQL.Add('AND FIN_STFI <> ''CANCELADO''');
          SQL.Add('AND FIN_STFI <> ''DEVOLUÇÃO''');
          SQL.Add('AND FIN_STFI <> ''ABATIMENTO''');
          SQL.Add('AND FIN_STFI NOT LIKE ''PAGO%''');
        end else
        SQL.Add('AND FIN_STFI = '''+cbCAI_MOV_STFI.Text+'''');
      end else
      SQL.Add('AND FIN_STFI <> ''CANCELADO''');

      if cbCAI_MOV_DCLI.Text <> 'TODOS' then
         SQL.Add('AND CAD_CLI.CLI_FANT LIKE ''%'+cbCAI_MOV_DCLI.Text+'%''');

      if cbCAI_MOV_DVEN.Text <> 'TODOS' then
         SQL.Add('AND CAD_USU.USU_DUSU LIKE ''%'+cbCAI_MOV_DVEN.Text+'%''');

      if cbCAI_MOV_DREP.Text <> 'TODOS' then
         SQL.Add('AND CAD_REP.REP_FANT LIKE ''%'+cbCAI_MOV_DREP.Text+'%''');

      if cbCAI_MOV_TIPO.Text <> 'TODOS' then
         SQL.Add('AND FIN_TIPO LIKE ''%'+cbCAI_MOV_TIPO.Text+'%''');

      SQL.Add('GROUP BY  ROM_DERO,PED_VEN_CAB.ID,CLI_FANT,USU_DUSU,REP_FANT,FIN_CDBX,FIN_STDO,FIN_CONC,FIN_TIPO,FIN_DCAD,FIN_DOCT');
      SQL.Add('ORDER BY  9,2');
      Open;
    end;

    qrpcai_mov_cai_ana.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpcai_mov_cai_ana.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpcai_mov_cai_ana.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpcai_mov_cai_ana.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpcai_mov_cai_ana.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpcai_mov_cai_ana.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpcai_mov_cai_ana.qrltitulo.Caption    := 'Fluxo de Caixa - Analítico';
    qrpcai_mov_cai_ana.ReportTitle          := 'Fluxo de Caixa - Analítico';
    qrpcai_mov_cai_ana.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+RECUsuarios.ID+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpcai_mov_cai_ana.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpcai_mov_cai_ana.Prepare;
    if tag = 0 then
       qrpcai_mov_cai_ana.Preview
    else if tag = 1 then
       qrpcai_mov_cai_ana.Print
    else if tag = 2 then
    begin
      qrpcai_mov_cai_ana.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpcai_mov_cai_ana.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpcai_mov_cai_ana.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpcai_mov_cai_ana);
    qrpcai_mov_cai_ana.Free;
  end;
end;

procedure Tfrmrelatorio_geral.CAI_MOV_CAIXA_SINTETICO;
var
  vcred,vdebi: double;

function RETORNA_CDCX(old: string) : string;
var
  i,j: word;
  cdcx: string;
begin
  cdcx := '';
  for j := 1 to Length(old) do
  begin
    if copy(old,j,1) = '(' then
       break;
  end;

  inc(j);

  for i := j to Length(old) do
  begin
    if copy(old,i,1) = ')' then
       break;

    cdcx := trim(cdcx + copy(old,i,1));
  end;

  result := cdcx;
end;

begin
  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';
  vcred := 0;
  vdebi := 0;

  if cbCAI_MOV_DATA.Text = 'DATA LANÇAMENTO' then
     cDATA := 'CAI_DCAD';

  if (tag = 0) or (tag = 1) then
  frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  if qrpcai_mov_cai_sin = nil then
  qrpcai_mov_cai_sin := Tqrpcai_mov_cai_sin.Create(self);

  try
    with qrpcai_mov_cai_sin.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM CAI_MOV');
      SQL.Add('WHERE ID > 0');

      if cDATA <> '' then
      SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');

      if cbCAI_MOV_CDCX.Text <> 'TODOS' then
      SQL.Add('AND CAI_CCAB = '''+RETORNA_CDCX(cbCAI_MOV_CDCX.Text)+'''');

      if cDATA = '' then
      SQL.Add('ORDER BY CAI_DESC,CAI_CONC')
      else
      SQL.Add('ORDER BY ID');
      Open;

      while not eof do
      begin
        consulta.SQL.Clear;
        consulta.SQL.Add('SELECT ID FROM TAB_COB');
        consulta.SQL.Add('WHERE  VEN_TIPO = '''+qrpcai_mov_cai_sin.relatorioCAI_DESC.AsString+'''');
        consulta.SQL.Add('AND    VEN_TIPO <> ''DINHEIRO''');
        consulta.Open;

        if consulta.Fields[0].IsNull then
        begin
          vcred := vcred + qrpcai_mov_cai_sin.relatorioCAI_CRED.AsFloat;

          if qrpcai_mov_cai_sin.relatorioCAI_DEBI.AsFloat > 0 then
          vdebi := vdebi + qrpcai_mov_cai_sin.relatorioCAI_DEBI.AsFloat;
        end;
        next;
      end;
    end;
    qrpcai_mov_cai_sin.qrlcaixa.Caption := formatFloat('#,0.00',vcred-vdebi);

    qrpcai_mov_cai_sin.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpcai_mov_cai_sin.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpcai_mov_cai_sin.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpcai_mov_cai_sin.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpcai_mov_cai_sin.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpcai_mov_cai_sin.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpcai_mov_cai_sin.qrltitulo.Caption    := 'Fluxo de Caixa - Sintético';
    qrpcai_mov_cai_sin.ReportTitle          := 'Fluxo de Caixa - Sintético';
    qrpcai_mov_cai_sin.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+RECUsuarios.ID+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpcai_mov_cai_sin.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpcai_mov_cai_sin.Prepare;
    if tag = 0 then
       qrpcai_mov_cai_sin.Preview
    else if tag = 1 then
       qrpcai_mov_cai_sin.Print
    else if tag = 2 then
    begin
      qrpcai_mov_cai_sin.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpcai_mov_cai_sin.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpcai_mov_cai_sin.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpcai_mov_cai_sin);
    qrpcai_mov_cai_sin.Free;
  end;
end;

procedure Tfrmrelatorio_geral.CAI_MOV_GERAL_SINTETICO;
function RETORNA_CDCX(old: string) : string;
var
  i,j: word;
  cdcx: string;
begin
  cdcx := '';
  for j := 1 to Length(old) do
  begin
    if copy(old,j,1) = '(' then
       break;
  end;

  inc(j);

  for i := j to Length(old) do
  begin
    if copy(old,i,1) = ')' then
       break;

    cdcx := trim(cdcx + copy(old,i,1));
  end;

  result := cdcx;
end;

begin
  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';

  if cbCAI_MOV_DATA.Text = 'DATA LANÇAMENTO' then
     cDATA := 'ROM_DROM';

  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  if qrpcai_mov_ger = nil then
     qrpcai_mov_ger := Tqrpcai_mov_ger.Create(self);

  try
    with qrpcai_mov_ger.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
      SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');

      if (cDATA <> '') and (cbCAI_MOV_CDCX.Text = 'TODOS') then
         SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');

      if cbCAI_MOV_CDCX.Text <> 'TODOS' then
         SQL.Add('AND PED_VEN_CAB.ROM_CDCX = '''+RETORNA_CDCX(cbCAI_MOV_CDCX.Text)+'''');

      if cbCAI_MOV_STFI.Text <> 'TODOS' then
         SQL.Add('AND PED_VEN_CAB.ROM_STFI = '''+cbCAI_MOV_STFI.Text+'''');

      if cbCAI_MOV_STCO.Text <> 'TODOS' then
         SQL.Add('AND PED_VEN_CAB.ROM_STCO = '''+cbCAI_MOV_STCO.Text+'''');

      if cbCAI_MOV_DVEN.Text <> 'TODOS' then
         SQL.Add('AND CAD_USU.USU_DUSU LIKE ''%'+cbCAI_MOV_DVEN.Text+'%''');

      if cbCAI_MOV_DCLI.Text <> 'TODOS' then
         SQL.Add('AND CAD_CLI.CLI_FANT LIKE ''%'+cbCAI_MOV_DCLI.Text+'%''');

      if cbCAI_MOV_DVEN.Text <> 'TODOS' then
         SQL.Add('AND CAD_USU.USU_DUSU LIKE ''%'+cbCAI_MOV_DVEN.Text+'%''');

      if cbCAI_MOV_DREP.Text <> 'TODOS' then
         SQL.Add('AND CAD_REP.REP_FANT LIKE ''%'+cbCAI_MOV_DREP.Text+'%''');

      SQL.Add('ORDER BY PED_VEN_CAB.ID');
      Open;
    end;

    qrpcai_mov_ger.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpcai_mov_ger.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpcai_mov_ger.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpcai_mov_ger.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpcai_mov_ger.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpcai_mov_ger.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpcai_mov_ger.qrltitulo.Caption    := 'Fluxo Geral de Vendas - Sintético';
    qrpcai_mov_ger.ReportTitle          := 'Fluxo Geral de Vendas - Analítico';
    qrpcai_mov_ger.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+RECUsuarios.ID+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpcai_mov_ger.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpcai_mov_ger.Prepare;
    if tag = 0 then
       qrpcai_mov_ger.Preview
    else if tag = 1 then
       qrpcai_mov_ger.Print
    else if tag = 2 then
    begin
      qrpcai_mov_ger.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpcai_mov_ger.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpcai_mov_ger.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpcai_mov_ger);
    qrpcai_mov_ger.Free;
  end;
end;

procedure Tfrmrelatorio_geral.CAI_MOV_GERAL_ANALITICO;
function RETORNA_CDCX(old: string) : string;
var
  i,j: word;
  cdcx: string;
begin
  cdcx := '';
  for j := 1 to Length(old) do
  begin
    if copy(old,j,1) = '(' then
       break;
  end;

  inc(j);

  for i := j to Length(old) do
  begin
    if copy(old,i,1) = ')' then
       break;

    cdcx := trim(cdcx + copy(old,i,1));
  end;

  result := cdcx;
end;

begin
  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';

  if cbCAI_MOV_DATA.Text = 'DATA LANÇAMENTO' then
     cDATA := 'ROM_DROM';

  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  if qrpcai_mov_ger_ana = nil then
     qrpcai_mov_ger_ana := Tqrpcai_mov_ger_ana.Create(self);

  try
    with qrpcai_mov_ger_ana.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT    ROM_DERO,ROM_DROM,ROM_CONC,ROM_STCO,ROM_STPD,ROM_STFI,CLI_FANT,USU_DUSU,REP_FANT,SUM(ROM_TCDE) "ROM_VALO"');
      SQL.Add('FROM      CAD_REP,CAD_USU,CAD_CLI,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE     CAD_CLI.ID = ROM_CCLI');
      SQL.Add('AND       CAD_REP.ID = ROM_CREP');
      SQL.Add('AND       USU_CUSU   = ROM_CVEN');
      SQL.Add('AND       ROM_STFI <> ''CANCELADO''');

      if cDATA <> '' then
         SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');

      if cbCAI_MOV_CDCX.Text <> 'TODOS' then
         SQL.Add('AND ROM_CDCX = '''+RETORNA_CDCX(cbCAI_MOV_CDCX.Text)+'''');

      if cbCAI_MOV_STFI.Text <> 'TODOS' then
         SQL.Add('AND ROM_STFI = '''+cbCAI_MOV_STFI.Text+'''');

      if cbCAI_MOV_DCLI.Text <> 'TODOS' then
         SQL.Add('AND CAD_CLI.CLI_FANT LIKE ''%'+cbCAI_MOV_DCLI.Text+'%''');

      if cbCAI_MOV_DVEN.Text <> 'TODOS' then
         SQL.Add('AND CAD_USU.USU_DUSU LIKE ''%'+cbCAI_MOV_DVEN.Text+'%''');

      if cbCAI_MOV_DREP.Text <> 'TODOS' then
         SQL.Add('AND CAD_REP.REP_FANT LIKE ''%'+cbCAI_MOV_DREP.Text+'%''');

      if cbCAI_MOV_TIPO.Text <> 'TODOS' then
         SQL.Add('AND ROM_STCO LIKE ''%'+cbCAI_MOV_TIPO.Text+'%''');

      SQL.Add('GROUP BY  ROM_DERO,ROM_DROM,ROM_CONC,ROM_STCO,ROM_STPD,ROM_STFI,CLI_FANT,USU_DUSU,REP_FANT');
      SQL.Add('ORDER BY  4,1');
      Open;
    end;

    qrpcai_mov_ger_ana.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpcai_mov_ger_ana.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpcai_mov_ger_ana.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpcai_mov_ger_ana.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpcai_mov_ger_ana.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpcai_mov_ger_ana.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpcai_mov_ger_ana.qrltitulo.Caption    := 'Fluxo Geral de Vendas - Analítico';
    qrpcai_mov_ger_ana.ReportTitle          := 'Fluxo Geral de Vendas - Analítico';
    qrpcai_mov_ger_ana.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+RECUsuarios.ID+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpcai_mov_ger_ana.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpcai_mov_ger_ana.Prepare;
    if tag = 0 then
       qrpcai_mov_ger_ana.Preview
    else if tag = 1 then
       qrpcai_mov_ger_ana.Print
    else if tag = 2 then
    begin
      qrpcai_mov_ger_ana.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpcai_mov_ger_ana.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpcai_mov_ger_ana.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpcai_mov_ger_ana);
    qrpcai_mov_ger_ana.Free;
  end;
end;

procedure Tfrmrelatorio_geral.PED_CUP_VEN;
begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Pedidos (Cupom)');

  if QRPPED_CUP_VEN = nil then
     QRPPED_CUP_VEN := TQRPPED_CUP_VEN.Create(self);

  try
    with QRPPED_CUP_VEN.roman do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_CLI.CLI_RAZA,CAD_CLI.CLI_ESTA,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG,');
      SQL.Add('         TRIM(IIF(POSITION(''VISTA'' IN PED_VEN_CAB.ROM_STCO) = 0,PED_VEN_CAB.ROM_STCO,'''') || '' '' || IIF(TAB_PAG.ID > 1 ,TAB_PAG.PAG_PARC||''x''||'' [''||TAB_PAG.PAG_DPAG||'']'',''A VISTA'')) AS DECO,');
      SQL.Add('         TB_SP.LOGIN AS DESP');

      SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,TAB_USER AS TB_SP,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND      PED_VEN_CAB.IDSP     = TB_SP.ID');

      SQL.Add('AND      PED_VEN_CAB.ID = '''+cdpd+'''');
      SQL.Add('ORDER BY PED_VEN_CAB.ID DESC');
      Open;
    end;

    with QRPPED_CUP_VEN.ven_efe do
    begin
      SQL.Clear;
      SQL.Add('SELECT   CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
      SQL.Add('         PED_VEN_ITE.ROM_DUNI,PED_VEN_ITE.ID,PED_VEN_ITE.ROM_ITEM,PED_VEN_ITE.ITEM,PED_VEN_ITE.ROM_DCOR,PED_VEN_ITE.ROM_DPRO,PED_VEN_ITE.ROM_QTDE,PED_VEN_ITE.ROM_UNIT,PED_VEN_ITE.ROM_VDSC,PED_VEN_ITE.ROM_PREC,PED_VEN_ITE.ROM_TOTA');
      SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
      SQL.Add('WHERE    PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND      PED_VEN_ITE.ROM_CCAB = '''+cdpd+'''');
      SQL.Add('ORDER BY PED_VEN_ITE.ROM_ITEM');
      Open;
    end;

    QRPPED_CUP_VEN.ReportTitle          := QRPPED_CUP_VEN.romanROM_STPD.AsString;
    QRPPED_CUP_VEN.QRLTitulo.Caption    := QRPPED_CUP_VEN.romanROM_STPD.AsString;
    QRPPED_CUP_VEN.QRLSubTitulo.Caption := QRPPED_CUP_VEN.romanROM_STCO.AsString;

    QRPPED_CUP_VEN.qrlpagina.Caption  := 'Pág: ' +  QRPPED_CUP_VEN.romanROM_CONC.AsString;
    if (QRPPED_CUP_VEN.romanROM_PPRN.AsInteger) >= 1 then
    QRPPED_CUP_VEN.qrlpagina.Caption  := 'Pág: '+QRPPED_CUP_VEN.romanROM_CONC.AsString+'/'+inttostr(QRPPED_CUP_VEN.romanROM_PPRN.AsInteger + 1);
    QRPPED_CUP_VEN.Prepare;

    if tag = 0 then
       QRPPED_CUP_VEN.Preview
    else if tag = 1 then
       QRPPED_CUP_VEN.Print
    else if tag = 2 then
    begin
      QRPPED_CUP_VEN.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      QRPPED_CUP_VEN.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      QRPPED_CUP_VEN.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    FreeAndNil(QRPPED_CUP_VEN);
  end;
end;

procedure Tfrmrelatorio_geral.PED_CUP_SCO;
begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Pedidos (Cupom)');

  if QRPPED_CUP_SCO = nil then
     QRPPED_CUP_SCO := TQRPPED_CUP_SCO.Create(self);

  try
    with QRPPED_CUP_SCO.roman do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_CLI.CLI_RAZA,CAD_CLI.CLI_ESTA,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG,');
      SQL.Add('         TRIM(IIF(POSITION(''VISTA'' IN PED_VEN_CAB.ROM_STCO) = 0,PED_VEN_CAB.ROM_STCO,'''') || '' '' || IIF(TAB_PAG.ID > 1 ,TAB_PAG.PAG_PARC||''x''||'' [''||TAB_PAG.PAG_DPAG||'']'',''A VISTA'')) AS DECO,');
      SQL.Add('         TB_SP.LOGIN AS DESP');

      SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,TAB_USER AS TB_SP,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND      PED_VEN_CAB.IDSP     = TB_SP.ID');

      SQL.Add('AND      PED_VEN_CAB.ID = '''+cdpd+'''');
      SQL.Add('ORDER BY PED_VEN_CAB.ID DESC');
      Open;
    end;

    with QRPPED_CUP_SCO.ven_efe do
    begin
      SQL.Clear;
      SQL.Add('SELECT   CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
      SQL.Add('         PED_VEN_ITE.ROM_DUNI,PED_VEN_ITE.ID,PED_VEN_ITE.ROM_ITEM,PED_VEN_ITE.ROM_DCOR,PED_VEN_ITE.ROM_DPRO,PED_VEN_ITE.ROM_QTDE,PED_VEN_ITE.ROM_UNIT,PED_VEN_ITE.ROM_VDSC,PED_VEN_ITE.ROM_PREC,PED_VEN_ITE.ROM_TOTA');
      SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
      SQL.Add('WHERE    PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND      PED_VEN_ITE.ROM_CCAB = '''+cdpd+'''');
      SQL.Add('ORDER BY PED_VEN_ITE.ROM_ITEM');
      Open;
    end;

    QRPPED_CUP_SCO.ReportTitle := 'SIMPLES CONFERÊNCIA Nº ' + QRPPED_CUP_SCO.romanROM_DERO.AsString;
    QRPPED_CUP_SCO.Prepare;

    if tag = 0 then
       QRPPED_CUP_SCO.Preview
    else if tag = 1 then
       QRPPED_CUP_SCO.Print
    else if tag = 2 then
    begin
      QRPPED_CUP_SCO.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      QRPPED_CUP_SCO.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      QRPPED_CUP_SCO.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    FreeAndNil(QRPPED_CUP_SCO);
  end;
end;

end.
