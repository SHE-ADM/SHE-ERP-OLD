unit pcad_cli_inf_new;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB, math, StrUtils,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, StdCtrls,
  dxPageControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TeEngine, Series,
  TeeProcs, Chart, DbChart, dxDBTLCl, dxGrClms, DateUtils, dxEditor,
  dxExEdtr, dxEdLib, Buttons, dxDBELib, rxSpeedbar, IBEvents, IBSQL;

type
  Tfrmcad_cli_inf_new = class(TFrmPadr3)
    DTSPedidos: TDataSource;
    Pedidos: TIBQuery;
    pnlpri: TPanel;
    dtscad_cli_inf: TDataSource;
    NF: TIBQuery;
    DTSNF: TDataSource;
    FB: TIBQuery;
    DTSFB: TDataSource;
    Prazo: TIBQuery;
    PrazoPAG_PRAZ: TLargeintField;
    SIFAT: TSpeedItem;
    SIEXP: TSpeedItem;
    GBFinanceiro: TGroupBox;
    FKPedidos: TIBQuery;
    DTSFKPedidos: TDataSource;
    PNLCabecalho: TPanel;
    SQLConsulta: TIBSQL;
    FBC_ID: TIntegerField;
    PedidosC_ID: TIntegerField;
    NFC_ID: TIntegerField;
    FKPedidosC_ID: TSmallintField;
    PNLCliente: TPanel;
    PNLCliente_CRD: TPanel;
    PNLCliente_ID: TPanel;
    FBID: TIntegerField;
    FBIDEP: TSmallintField;
    FBDEEP: TIBStringField;
    FBDTFA: TDateField;
    FBVDUP: TIBBCDField;
    FBDECV: TIBStringField;
    FBDECR: TIBStringField;
    FBVJUR: TIBBCDField;
    FBVMUL: TIBBCDField;
    FBVDSC: TIBBCDField;
    FBDTPG: TDateField;
    FBVPAG: TIBBCDField;
    FBVPEN: TIBBCDField;
    FBSTFI: TIBStringField;
    FBTIPO: TIBStringField;
    FBRECO: TIBStringField;
    PedidosID: TIntegerField;
    PedidosIDEP: TSmallintField;
    PedidosCDNF: TLargeintField;
    PedidosVIPI: TIBBCDField;
    PedidosVST: TIBBCDField;
    PedidosDTSA: TDateTimeField;
    PedidosDECV: TIBStringField;
    PedidosDECR: TIBStringField;
    PedidosQTDE: TIBBCDField;
    PedidosQTRL: TIntegerField;
    PedidosTCDE: TIBBCDField;
    PedidosSTPD: TIBStringField;
    PedidosDECT: TIBStringField;
    PedidosPSBR: TIBBCDField;
    PedidosPSLQ: TIBBCDField;
    PedidosINFADPED: TIBStringField;
    FKPedidosID: TIntegerField;
    FKPedidosIDEP: TSmallintField;
    FKPedidosIDCA: TSmallintField;
    FKPedidosDTCA: TDateTimeField;
    FKPedidosIDPK: TLargeintField;
    FKPedidosITEM: TIntegerField;
    FKPedidosIDCP: TIntegerField;
    FKPedidosCP_IDEP: TSmallintField;
    FKPedidosCP_DEEP: TIBStringField;
    FKPedidosARTIGO: TIBStringField;
    FKPedidosSKU: TIBStringField;
    FKPedidosCEAN: TIBStringField;
    FKPedidosDECP: TIBStringField;
    FKPedidosDGCP: TIBStringField;
    FKPedidosUCOM: TIBStringField;
    FKPedidosUCON: TIBStringField;
    FKPedidosQTDE: TIBBCDField;
    FKPedidosQTRL: TIntegerField;
    FKPedidosQTSP: TIBBCDField;
    FKPedidosRLSP: TIntegerField;
    FKPedidosVPRC_PAD: TFloatField;
    FKPedidosVPRC_PAD_INI: TFloatField;
    FKPedidosVPRC_PAD_FIM: TFloatField;
    FKPedidosPDSC: TIBBCDField;
    FKPedidosVPRC_COM: TFloatField;
    FKPedidosTSDE: TIBBCDField;
    FKPedidosTCDE: TIBBCDField;
    FKPedidosNCM: TIBStringField;
    FKPedidosPIPI: TIBBCDField;
    FKPedidosCEST: TIBStringField;
    FKPedidosEXTIPI: TIBStringField;
    FKPedidosRCOM: TIBStringField;
    FKPedidosPCOM: TIBBCDField;
    FKPedidosPSBR: TIBBCDField;
    FKPedidosPSLQ: TIBBCDField;
    FKPedidosORIG: TSmallintField;
    FKPedidosCPAIS: TSmallintField;
    FKPedidosIP: TIBStringField;
    FKPedidosHOST: TIBStringField;
    PedidosDEEP: TIBStringField;
    PCFinanceiro: TdxPageControl;
    TSFB: TdxTabSheet;
    DBGFB: TdxDBGrid;
    DBGFBC_ID: TdxDBGridColumn;
    DBGFBTITULO: TdxDBGridColumn;
    DBGFBDTFA: TdxDBGridColumn;
    DBGFBDTVC: TdxDBGridColumn;
    DBGFBVDUP: TdxDBGridColumn;
    DBGFBD_TIPO: TdxDBGridMaskColumn;
    DBGFBRECO: TdxDBGridMaskColumn;
    DBGFBVJUR: TdxDBGridColumn;
    DBGFBVMUL: TdxDBGridColumn;
    DBGFBVDSC: TdxDBGridColumn;
    DBGFBDTPG: TdxDBGridColumn;
    DBGFBVPAG: TdxDBGridColumn;
    DBGFBVPEN: TdxDBGridColumn;
    DBGFBSTFI: TdxDBGridColumn;
    DBGFBDECV: TdxDBGridMaskColumn;
    DBGFBDECR: TdxDBGridMaskColumn;
    DBGFBDEEP: TdxDBGridMaskColumn;
    TSFC: TdxTabSheet;
    DBGFC: TdxDBGrid;
    DBGFCC_ID: TdxDBGridColumn;
    DBGFCTITULO: TdxDBGridColumn;
    DBGFCDTFA: TdxDBGridColumn;
    DBGFCDTVC: TdxDBGridColumn;
    DBGFCVDUP: TdxDBGridColumn;
    DBGFCD_TIPO: TdxDBGridMaskColumn;
    DBGFCRECO: TdxDBGridMaskColumn;
    DBGFCVJUR: TdxDBGridColumn;
    DBGFCVMUL: TdxDBGridColumn;
    DBGFCVDSC: TdxDBGridColumn;
    DBGFCDTPG: TdxDBGridColumn;
    DBGFCVPAG: TdxDBGridColumn;
    DBGFCVPEN: TdxDBGridColumn;
    DBGFCSTFI: TdxDBGridColumn;
    DBGFCDECV: TdxDBGridMaskColumn;
    DBGFCDECR: TdxDBGridMaskColumn;
    DBGFCDEEP: TdxDBGridMaskColumn;
    FC: TIBQuery;
    FCC_ID: TIntegerField;
    DTSFC: TDataSource;
    FCID: TIntegerField;
    FCIDEP: TSmallintField;
    FCDEEP: TIBStringField;
    FCDTFA: TDateField;
    FCVDUP: TIBBCDField;
    FCTIPO: TIBStringField;
    FCRECO: TIBStringField;
    FCVJUR: TIBBCDField;
    FCVMUL: TIBBCDField;
    FCVDSC: TIBBCDField;
    FCDTPG: TDateField;
    FCVPAG: TIBBCDField;
    FCVPEN: TIBBCDField;
    FCSTFI: TIBStringField;
    FCDECV: TIBStringField;
    FCDECR: TIBStringField;
    NFID: TIntegerField;
    NFIDEP: TSmallintField;
    NFDEEP: TIBStringField;
    NFCDNF: TLargeintField;
    NFDTNF: TDateField;
    NFDTSA: TDateTimeField;
    NFDESA: TIBStringField;
    NFCFOP: TIBStringField;
    NFVNF: TIBBCDField;
    NFVIPI: TIBBCDField;
    NFVST: TIBBCDField;
    NFDECT: TIBStringField;
    NFVFRT: TIBBCDField;
    NFPSBR: TIBBCDField;
    NFPSLQ: TIBBCDField;
    NFDEST: TIBStringField;
    NFMOTORISTA: TIBStringField;
    NFPLACA: TIBStringField;
    NFAJUDANTES: TIBStringField;
    NFDVOL: TIBStringField;
    NFD_CFOP: TIBStringField;
    NFTPNF: TIBStringField;
    NFD_FINNFE: TIBStringField;
    NFD_FRT: TIBStringField;
    FBAPI_NN: TLargeintField;
    FBAPI_ST: TIBStringField;
    FBAPI_DTED: TDateTimeField;
    FBAPI_MT: TIBStringField;
    FCAPI_NN: TLargeintField;
    FCAPI_ST: TIBStringField;
    FCAPI_DTED: TDateTimeField;
    FCAPI_MT: TIBStringField;
    DBGFBAPI_CA: TdxDBGridColumn;
    DBGFBAPI_NN: TdxDBGridColumn;
    DBGFBAPI_ST: TdxDBGridColumn;
    DBGFBAPI_MT: TdxDBGridColumn;
    DBGFBAPI_DTED: TdxDBGridColumn;
    FCDTBX: TDateField;
    DBGFCDTBX: TdxDBGridColumn;
    FBDTBX: TDateField;
    DBGFBDTBX: TdxDBGridColumn;
    PNLFBINFADCAD: TPanel;
    Bevel2: TBevel;
    DBFBINFADCAD: TdxDBMemo;
    PNLFCINFADCAD: TPanel;
    Bevel1: TBevel;
    DBFCINFADCAD: TdxDBMemo;
    FBAPI_ID: TIBStringField;
    FBAPI_DTCA: TDateTimeField;
    FBAPI_CA: TSmallintField;
    FCAPI_ID: TIBStringField;
    FCAPI_DTCA: TDateTimeField;
    FCAPI_CA: TSmallintField;
    FBCTNR: TIBStringField;
    FCCTNR: TIBStringField;
    DBGFBCTNR: TdxDBGridColumn;
    DBGFCCTNR: TdxDBGridColumn;
    DBGFBAPI_DTCA: TdxDBGridColumn;
    FBDOCUMENTO: TIBStringField;
    FBTITULO: TIBStringField;
    FBDTVC: TDateField;
    FCDOCUMENTO: TIBStringField;
    FCTITULO: TIBStringField;
    FCDTVC: TDateField;
    FBINFADCAD: TIBStringField;
    FCINFADCAD: TIBStringField;
    FBDEST: TIBStringField;
    DBGFBDEST: TdxDBGridColumn;
    FCDEST: TIBStringField;
    DBGFCDEST: TdxDBGridColumn;
    DBGFBAPI_INFADCAD: TdxDBGridBlobColumn;
    FBAPI_INFADCAD: TMemoField;
    FCAPI_INFADCAD: TMemoField;
    PedidosIDPK: TLargeintField;
    PedidosIDCD: TIntegerField;
    PedidosDECD: TIBStringField;
    PedidosRZCD: TIBStringField;
    FBD_TIPO: TIBStringField;
    FCD_TIPO: TIBStringField;
    FBFIN_PEN: TSmallintField;
    FBFIN_LIQ: TSmallintField;
    FBFIN_BLQ: TSmallintField;
    FCFIN_PEN: TSmallintField;
    FCFIN_LIQ: TSmallintField;
    FCFIN_BLQ: TSmallintField;
    DBGFBFIN_PEN: TdxDBGridMaskColumn;
    DBGFBFIN_LIQ: TdxDBGridMaskColumn;
    DBGFBFIN_BLQ: TdxDBGridMaskColumn;
    DBGFCFIN_PEN: TdxDBGridMaskColumn;
    DBGFCFIN_LIQ: TdxDBGridMaskColumn;
    DBGFCFIN_BLQ: TdxDBGridMaskColumn;
    DBGFBDOCUMENTO: TdxDBGridColumn;
    DBGFCDOCUMENTO: TdxDBGridColumn;
    PedidosD_STCO: TIBStringField;
    PedidosPDSC: TIBBCDField;
    PedidosVDSC: TIBBCDField;
    PedidosDTNF: TDateTimeField;
    PCPedidos: TdxPageControl;
    TSPedidos: TdxTabSheet;
    DBGPedidos: TdxDBGrid;
    DBGPedidosDEPK: TdxDBGridMaskColumn;
    DBGPedidosDTCA: TdxDBGridDateColumn;
    DBGPedidosDEST: TdxDBGridMaskColumn;
    DBGPedidosTCDE: TdxDBGridMaskColumn;
    DBGPedidosVDSC: TdxDBGridMaskColumn;
    DBGPedidosD_STCO: TdxDBGridMaskColumn;
    DBGPedidosD_MFRT: TdxDBGridColumn;
    DBGPedidosSTPD: TdxDBGridMaskColumn;
    DBGPedidosDECV: TdxDBGridMaskColumn;
    DBGPedidosDECR: TdxDBGridMaskColumn;
    DBGPedidosCDNF: TdxDBGridColumn;
    DBGPedidosDTNF: TdxDBGridColumn;
    DBGPedidosDTSA: TdxDBGridDateColumn;
    DBGPedidosDECT: TdxDBGridMaskColumn;
    DBGPedidosVIPI: TdxDBGridCurrencyColumn;
    DBGPedidosVST: TdxDBGridCurrencyColumn;
    PNLINFADCAD: TPanel;
    DBINFADCAD: TdxDBMemo;
    TSFKPedidos: TdxTabSheet;
    DBGFKPedidos: TdxDBGrid;
    DBGFKPedidosITEM: TdxDBGridColumn;
    DBGFKPedidosSKU: TdxDBGridMaskColumn;
    DBGFKPedidosDECP: TdxDBGridColumn;
    DBGFKPedidosDGCP: TdxDBGridColumn;
    DBGFKPedidosUCOM: TdxDBGridColumn;
    DBGFKPedidosUCON: TdxDBGridColumn;
    DBGFKPedidosQTDE: TdxDBGridColumn;
    DBGFKPedidosQTRL: TdxDBGridColumn;
    DBGFKPedidosVPRC_COM: TdxDBGridColumn;
    DBGFKPedidosPDSC: TdxDBGridColumn;
    DBGFKPedidosTCDE: TdxDBGridColumn;
    DBGFKPedidosC_ID: TdxDBGridColumn;
    TSNotasFiscais: TdxTabSheet;
    DBGNF: TdxDBGrid;
    DBGNFCDNF: TdxDBGridColumn;
    DBGNFDTNF: TdxDBGridColumn;
    DBGNFDTSA: TdxDBGridDateColumn;
    DBGNFDESA: TdxDBGridMaskColumn;
    DBGNFVNF: TdxDBGridColumn;
    DBGNFVIPI: TdxDBGridColumn;
    DBGNFVST: TdxDBGridColumn;
    DBGNFECFOP: TdxDBGridColumn;
    DBGNFD_CFOP: TdxDBGridMaskColumn;
    DBGNFD_FINNFE: TdxDBGridColumn;
    DBGNFDECT: TdxDBGridColumn;
    DBGNFDVOL: TdxDBGridColumn;
    DBGNFPSBR: TdxDBGridColumn;
    DBGNFPSLQ: TdxDBGridColumn;
    DBGNFMOTORISTA: TdxDBGridMaskColumn;
    DBGNFPLACA: TdxDBGridMaskColumn;
    DBGNFAJUDANTES: TdxDBGridMaskColumn;
    DBGNFDEST: TdxDBGridColumn;
    DBGNFDEEP: TdxDBGridColumn;
    DBGNFC_ID: TdxDBGridColumn;
    PedidosIDCA: TSmallintField;
    PedidosDTCA: TDateTimeField;
    PedidosIDST: TSmallintField;
    PedidosDTST: TDateField;
    PedidosCDST: TSmallintField;
    PedidosREST: TIBStringField;
    PedidosDEST: TIBStringField;
    PedidosDTPK: TDateField;
    PedidosDEPK: TIBStringField;
    PedidosCDBX: TLargeintField;
    PedidosDTBX: TDateField;
    PedidosMFRT: TSmallintField;
    PedidosD_MFRT: TIBStringField;
    PedidosVFRT: TIBBCDField;
    DBGPedidosVFRT: TdxDBGridMaskColumn;
    DBGPedidosPSBR: TdxDBGridMaskColumn;
    DBGPedidosPSLQ: TdxDBGridMaskColumn;
    PedidosVNF: TIBBCDField;
    DBGPedidosVNF: TdxDBGridMaskColumn;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    PedidosQTSP: TIBBCDField;
    PedidosRLSP: TIntegerField;
    CEVCRD: TdxCurrencyEdit;
    PNLCliente_NO: TPanel;
    PNLCliente_RZ: TPanel;
    Shape8: TShape;
    Label4: TLabel;
    Shape7: TShape;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label2: TLabel;
    Shape4: TShape;
    DBSCRD: TdxDBEdit;
    PedidosVCRD: TIBBCDField;
    DBPED_TKT_TCDE: TdxDBEdit;
    PedidosC_PED_PEN_TCDE: TStringField;
    Shape5: TShape;
    Label3: TLabel;
    Shape6: TShape;
    DBPED_PEN_TCDE: TdxDBEdit;
    PedidosSCRD: TIBBCDField;
    Shape9: TShape;
    LAQPFB: TLabel;
    Shape10: TShape;
    DBBAN_PAG_PERC: TdxDBEdit;
    PedidosC_BAN_PAG_PERC: TStringField;
    Shape11: TShape;
    LAQPFC: TLabel;
    Shape12: TShape;
    DBCAR_PAG_PERC: TdxDBEdit;
    PedidosC_CAR_PAG_PERC: TStringField;
    FBFIN_VEN: TIntegerField;
    DBGFBFIN_VEN: TdxDBGridMaskColumn;
    FCFIN_VEN: TIntegerField;
    DBGFCFIN_VEN: TdxDBGridMaskColumn;
    FBIDCV: TSmallintField;
    FBIDCR: TSmallintField;
    FCIDCV: TSmallintField;
    FCIDCR: TSmallintField;
    PedidosIDCV: TSmallintField;
    PedidosIDCR: TSmallintField;
    PedidosPED_TCDE: TIBBCDField;
    PedidosPED_QTDE: TIntegerField;
    PedidosPED_QTRL: TLargeintField;
    PedidosPED_PEN_TCDE: TIBBCDField;
    PedidosPED_PEN_QTDE: TIntegerField;
    PedidosPED_PEN_QTRL: TLargeintField;
    PedidosPED_PEN_PERC: TIBBCDField;
    PedidosPED_TKT_TCDE: TIBBCDField;
    PedidosBAN_VDUP: TIBBCDField;
    PedidosBAN_QTDE: TIntegerField;
    PedidosBAN_PERC: TIBBCDField;
    PedidosBAN_PEN_VDUP: TIBBCDField;
    PedidosBAN_PEN_QTDE: TIntegerField;
    PedidosBAN_PEN_PERC: TIBBCDField;
    PedidosBAN_PAG_VDUP: TIBBCDField;
    PedidosBAN_PAG_QTDE: TIntegerField;
    PedidosBAN_PAG_PERC: TIBBCDField;
    PedidosBAN_AVC_VDUP: TIBBCDField;
    PedidosBAN_AVC_QTDE: TIntegerField;
    PedidosBAN_AVC_PERC: TIBBCDField;
    PedidosBAN_NVC_VDUP: TIBBCDField;
    PedidosBAN_NVC_QTDE: TIntegerField;
    PedidosBAN_NVC_PERC: TIBBCDField;
    PedidosBAN_DVC_VDUP: TIBBCDField;
    PedidosBAN_DVC_QTDE: TIntegerField;
    PedidosBAN_DVC_PERC: TIBBCDField;
    PedidosCAR_VDUP: TIBBCDField;
    PedidosCAR_QTDE: TIntegerField;
    PedidosCAR_PERC: TIBBCDField;
    PedidosCAR_PEN_VDUP: TIBBCDField;
    PedidosCAR_PEN_QTDE: TIntegerField;
    PedidosCAR_PEN_PERC: TIBBCDField;
    PedidosCAR_PAG_VDUP: TIBBCDField;
    PedidosCAR_PAG_QTDE: TIntegerField;
    PedidosCAR_PAG_PERC: TIBBCDField;
    PedidosCAR_AVC_VDUP: TIBBCDField;
    PedidosCAR_AVC_QTDE: TIntegerField;
    PedidosCAR_AVC_PERC: TIBBCDField;
    PedidosCAR_NVC_VDUP: TIBBCDField;
    PedidosCAR_NVC_QTDE: TIntegerField;
    PedidosCAR_NVC_PERC: TIBBCDField;
    PedidosCAR_DVC_VDUP: TIBBCDField;
    PedidosCAR_DVC_QTDE: TIntegerField;
    PedidosCAR_DVC_PERC: TIBBCDField;
    procedure SIFATClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SIEXPClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PedidosAfterOpen(DataSet: TDataSet);
    procedure FormPaint(Sender: TObject);
    procedure FBCalcFields(DataSet: TDataSet);
    procedure NFCalcFields(DataSet: TDataSet);
    procedure PedidosCalcFields(DataSet: TDataSet);
    procedure DBGPedidosCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGFBCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FKPedidosCalcFields(DataSet: TDataSet);
    procedure DBGNFCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGFKPedidosCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure PedidosAfterScroll(DataSet: TDataSet);
    procedure NFAfterScroll(DataSet: TDataSet);
    procedure DTSPedidosDataChange(Sender: TObject; Field: TField);
    procedure FCAfterScroll(DataSet: TDataSet);
    procedure FCCalcFields(DataSet: TDataSet);
    procedure DBGFCCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure PedidosBeforeOpen(DataSet: TDataSet);
    procedure DTSFCDataChange(Sender: TObject; Field: TField);
    procedure DTSFBDataChange(Sender: TObject; Field: TField);
    procedure FBAfterScroll(DataSet: TDataSet);
    procedure FCAfterOpen(DataSet: TDataSet);
    procedure FBAfterOpen(DataSet: TDataSet);
    procedure FBBeforeOpen(DataSet: TDataSet);
    procedure FCBeforeOpen(DataSet: TDataSet);
    procedure PedidosAfterClose(DataSet: TDataSet);
    procedure CEVCRDValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
  private
    { Private declarations }
    function _Login  (AFuncao,ARotina,ANome: String): Boolean;
    function _PSQUSER(AIDCA: Variant; AFuncao,ARotina,ANome: String): Boolean;

    procedure WmAfterCreate(var Msg: TMessage); message WM_AFTER_CREATE;
    procedure WmAfterShow(var Msg: TMessage); message WM_AFTER_SHOW;
    procedure ProcessPaintMessages;
    procedure AfterShow;
  public
    { Public declarations }
    RECPrincipal: TRECPrincipal;
  end;

var
  frmcad_cli_inf_new: Tfrmcad_cli_inf_new;

implementation

uses uPrincipal, pLogin, bPrincipal;

{$R *.dfm}

procedure Tfrmcad_cli_inf_new.WmAfterCreate(var Msg: TMessage);
begin
  Initialize(RECPrincipal);
  FillChar(RECPrincipal,SizeOf(RECPrincipal),0);
end;

procedure Tfrmcad_cli_inf_new.WmAfterShow(var Msg: TMessage);
begin
  ProcessPaintMessages;
  AfterShow;
end;

procedure Tfrmcad_cli_inf_new.ProcessPaintMessages; // << not tested, pulled out of code
var
  msg: TMsg;
begin
  while PeekMessage(msg, 0, WM_PAINT, WM_PAINT, PM_REMOVE) do
        DispatchMessage(msg);
end;

procedure Tfrmcad_cli_inf_new.AfterShow;
begin
  inherited;
  with Pedidos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID  ,PK.IDEP,PK.DEEP,');
    SQL.Add('       PK.IDCA,PK.DTCA,');
    SQL.Add('       PK.IDST,PK.DTST,PK.CDST,PK.REST,PK.DEST,');
    SQL.Add('       PK.IDPK,PK.DTPK,PK.DEPK,');
    SQL.Add('       PK.IDCD,PK.DECD,PK.RZCD,');

    SQL.Add('       PK.VCRD,PK.SCRD,');

    SQL.Add('       PK.PED_TCDE,PK.PED_QTDE,PK.PED_QTRL,PK.PED_PEN_TCDE,PK.PED_PEN_QTDE,PK.PED_PEN_QTRL,PK.PED_PEN_PERC,PK.PED_TKT_TCDE,');
    SQL.Add('       PK.BAN_VDUP,PK.BAN_QTDE,PK.BAN_PERC,');
    SQL.Add('       PK.BAN_PEN_VDUP,PK.BAN_PEN_QTDE,PK.BAN_PEN_PERC,PK.BAN_PAG_VDUP,PK.BAN_PAG_QTDE,PK.BAN_PAG_PERC,');
    SQL.Add('       PK.BAN_AVC_VDUP,PK.BAN_AVC_QTDE,PK.BAN_AVC_PERC,PK.BAN_NVC_VDUP,PK.BAN_NVC_QTDE,PK.BAN_NVC_PERC,PK.BAN_DVC_VDUP,PK.BAN_DVC_QTDE,PK.BAN_DVC_PERC,');

    SQL.Add('       PK.CAR_VDUP,PK.CAR_QTDE,PK.CAR_PERC,');
    SQL.Add('       PK.CAR_PEN_VDUP,PK.CAR_PEN_QTDE,PK.CAR_PEN_PERC,PK.CAR_PAG_VDUP,PK.CAR_PAG_QTDE,PK.CAR_PAG_PERC,');
    SQL.Add('       PK.CAR_AVC_VDUP,PK.CAR_AVC_QTDE,PK.CAR_AVC_PERC,PK.CAR_NVC_VDUP,PK.CAR_NVC_QTDE,PK.CAR_NVC_PERC,PK.CAR_DVC_VDUP,PK.CAR_DVC_QTDE,PK.CAR_DVC_PERC,');
    SQL.Add('       PK.QTDE,PK.QTRL,PK.QTSP,PK.RLSP,PK.PDSC,PK.VDSC,PK.TCDE,');

    SQL.Add('       PK.IDCV,PK.DECV,PK.IDCR  ,PK.DECR,');
    SQL.Add('       PK.QTDE,PK.QTRL,PK.QTSP  ,PK.RLSP,PK.PDSC,PK.VDSC,PK.TCDE,');
    SQL.Add('       PK.CDNF,PK.D_DTNF AS DTNF,PK.DTSA,PK.VNF ,PK.VIPI,PK.VST ,');
    SQL.Add('       PK.CDBX,PK.DTBX,');
    SQL.Add('       PK.DECT,PK.MFRT,PK.DFRT AS D_MFRT,PK.VFRT,PK.PSBR,PK.PSLQ,');
    SQL.Add('       PK.STPD,PK.RECO || '' - '' || PK.DECO AS D_STCO,');
    SQL.Add('       PK.INFADPED');

    SQL.Add('FROM ' + oREPZero('VW_PED_VEN_CAB','_',RECParametros.Id,3)+' AS PK');

    SQL.Add('WHERE PK.IDEP = ''' + RECParametros.ID + '''');
    SQL.Add('AND   PK.IDCD = ''' + IDCadastro       + '''');
    SQL.Add('AND   PK.FAPD = 1');

    SQL.Add('ORDER BY PK.DTCA DESC');
    Prepare;
    Open;

    Next;
    Prior;
  end;

  Screen.Cursor := crDefault;
END;

procedure Tfrmcad_cli_inf_new.FormCreate(Sender: TObject);
begin
  cEvent := 'CTR_PED';
  Screen.Cursor := crAppStart;

  PCPedidos.ActivePageIndex    := 0;
  PCFinanceiro.ActivePageIndex := 0;

  inherited;
  PostMessage( handle, WM_AFTER_CREATE, 0, 0 );
end;

procedure Tfrmcad_cli_inf_new.FormShow(Sender: TObject);
begin
  inherited;
  PostMessage( handle, WM_AFTER_SHOW, 0, 0 );
end;

procedure Tfrmcad_cli_inf_new.FormPaint(Sender: TObject);
var
  S: TRect;
  H,
  T,
  B,
  L,
  R,
  FHeight,
  FWidth: Word;
begin
  if Showing then
  begin

    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(Application.MainForm.ClientHandle,S);
    T := S.Top;
    B := S.Bottom;
    L := S.Left;
    R := S.Right;
    H := B;

    FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
    FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

    if RECPrincipal.WorkArea then
    begin
      Top    := Screen.WorkAreaTop;
      Left   := Screen.WorkAreaLeft;
      Width  := Screen.WorkAreaWidth;
      Height := Screen.WorkAreaHeight;
    end else
    if RECPrincipal.MainArea then
    begin
      Top    := 0;
      Left   := 0;
      Width  := R - L - 5;
      Height := H - T - 5;
    end else
    if RECPrincipal.FrmPosition = poDefault then
    begin
      Top    := IFThen(FormStyle = fsNormal,T,0);
      Left   := IFThen(FormStyle = fsNormal,L,0);
      Width  := IFThen(RECPrincipal.FrmPosition = poDefault,R - L - 5,0);
      Height := IFThen(RECPrincipal.FrmPosition = poDefault,H - T - 5,0);
    end else
    begin
      if (RECPrincipal.FrmPosition = poDesigned) and (FHeight > 0) and (FWidth > 0) then
      begin
        Height := FHeight;
        Width  := FWidth;
      end;

      if FormStyle = fsNormal then
      begin
        Top  := (T  + (H - Height)) div 2;
        Left := ((R + L) - Width )  div 2;
      end else
      begin
        Top  := ((B - T ) - Height) div 2;
        Left := ((R - L)  - Width ) div 2;
      end;
    end;

    if RECUsuarios.Id = 0 then
       Caption := 'DIMENSÕES: Monitor: Altura = '+IntToStr(Screen.Height)+' Largura: '+IntToStr(Screen.Width)+' / '+
                  'Tela: Altura = '              +IntToStr(Self.Height  )+' Largura: '+IntToStr(Self.Width  );

    { Ajusta Posicionamento da Página }
    RECPrincipal.FrmPosition := Self.Position;
    RECPrincipal.MainArea    := True;

    if RECPrincipal.MainArea then
       uDisabledMainForm;

    RECPrincipal.IDPK := 0;
    RECPrincipal.CDPK := EmptyStr;
    RECPrincipal.IDFK := 0;
    RECPrincipal.CDFK := EmptyStr;

    RECPrincipal.PED_FATURA   := True;
    RECPrincipal.PED_CREDITO  := 1;
    RECPrincipal.PED_COBRANCA := EmptyStr;
    RECPrincipal.PED_TIPO     := EmptyStr;
    RECPrincipal.PED_STATUS   := EmptyStr;
  end;
end;

procedure Tfrmcad_cli_inf_new.FormDestroy(Sender: TObject);
begin
  inherited;

  try
    if RECPrincipal.MainArea then
       with Application.MainForm do
       begin
         if FindComponent('PNLUtil') as TPanel <> Nil then
            TPanel(FindComponent('PNLUtil') as TPanel).Visible := True;

         if FindComponent('PNLPrincipal') as TPanel <> Nil then
            TPanel(FindComponent('PNLPrincipal') as TPanel).Visible := True;
       end;
  finally frmcad_cli_inf_new := Nil;
  end;
end;

procedure Tfrmcad_cli_inf_new.SIFATClick(Sender: TObject);
begin
  if oYesNo(handle,'Liberar Faturamento ?' + #13 + #13 +

                   'Pedido Nº ' + PedidosDEPK.AsString + ' de ' + FormatDateTime('dd/mm/yy hh:mm',PedidosDTCA.AsDateTime) + #13 +

                   'Vendedor '      + PedidosDECV.AsString + #13 +
                   'Representante ' + PedidosDECR.AsString + #13 + #13 +

                   'Total ' + FormatFloat('R$ ,##,0.00',PedidosTCDE.AsFloat) + #13 +
                   'Itens ' + PedidosQTRL.AsString) = mrNo then
     Abort;

  if PedidosIDPK.AsInteger = 0 then
     oException(DBGPedidos,'Pedido não Informado !');

  if Pos('AGUA',PedidosDEST.AsString) = 0 then
     oException(DBGPedidos,'Pedido já Liberado !');

  if _Login('Financeiro','Contas a Receber','Permissões Gerais') then
     try
       oOTransact(TEdicao);
       with SQLEdicao do
       begin
         Close;
         SQL.Clear;
         SQL.Add('UPDATE ' + oREPZero('PED_VEN_CAB','_',RECParametros.Id,3)+' AS PK');
         SQL.Add('SET   ROM_STFI = ''' + IFThen(PedidosQTSP.AsFloat = 0,'PENDENTE','SEPARANDO') + '''');
         SQL.Add('WHERE PK.IDPK  = ''' + PedidosIDPK.AsString + '''');
         ExecQuery;
       end;
       oCTransact(TEdicao);
       oAviso(Handle,'Pedido Nº ' + PedidosDEPK.AsString + ' liberado com sucesso !');

       oRefresh(Pedidos);
       ExecEvent;
     except
       on E: Exception do
       begin
         oCTransact(TEdicao,ltRollback);
         oException(DBGPedidos,'Falha ao tentar liberar o pedido !' + #13 +
                               'Pedido Nº ' + PedidosDEPK.AsString  + #13 + #13 +
                               'Favor entrar em contato com o administrador do sistema.' +#13 +
                                E.Message);
       end;
     end;
end;

procedure Tfrmcad_cli_inf_new.SIEXPClick(Sender: TObject);
begin
  if oYesNo(handle,'Liberar separação dos produtos ?' + #13 + #13 +
                   'Pedido Nº ' + PedidosDEPK.AsString + ' de ' + FormatDateTime('dd/mm/yy hh:mm',PedidosDTCA.AsDateTime) + #13 +
                   'Total R$ '  + FormatFloat('R$ ,##,0.00',PedidosTCDE.AsFloat) + #13 +
                   'Itens '     + PedidosQTRL.AsString) = mrNo then
     Abort;
end;

procedure Tfrmcad_cli_inf_new.PedidosBeforeOpen(DataSet: TDataSet);
begin
  DBGPedidosDTSA.Visible := False;
  DBGPedidosVDSC.Visible := False;
  DBGPedidosSTPD.Visible := False;
  DBGPedidosVNF.Visible  := False;
  DBGPedidosVIPI.Visible := False;
  DBGPedidosVST.Visible  := False;
  DBGPedidosVFRT.Visible := False;

  { Itens }
  with FKPedidos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT    PK.*');
    SQL.Add('FROM  ' + oREPZero('VW_PED_VEN_ITE','_',RECParametros.Id,3)+' AS PK');

    SQL.Add('WHERE    PK.IDEP = :IDEP');
    SQL.Add('AND      PK.IDPK = :IDPK');
    SQL.Add('ORDER BY PK.ITEM');
    Prepare;
  end;
end;

procedure Tfrmcad_cli_inf_new.PedidosAfterOpen(DataSet: TDataSet);
begin
  DBGPedidosDEST.Field.FocusControl;

  PNLCliente_NO.Caption := 'Nº ' + PedidosIDCD.AsString + ' ' + PedidosDECD.AsString;
  PNLCliente_RZ.Caption :=  PedidosRZCD.AsString;

  CEVCRD.Value := PedidosVCRD.AsFloat;

  LAQPFB.Caption := IFThen((PedidosBAN_PAG_PERC.AsFloat = 0) and (PedidosBAN_PEN_PERC.AsFloat = 0),'Pagos Bancário','Bancário - ' +
                    IFThen(PedidosBAN_PAG_QTDE.AsInteger > 0,'PAG: ' + FormatFloat('0.##% ',PedidosBAN_PAG_PERC.AsFloat),'') +
                    IFThen(PedidosBAN_PEN_QTDE.AsInteger > 0,'PEN: ' + FormatFloat('0.##% ',PedidosBAN_PEN_PERC.AsFloat),''));


  { Saldo Disponível }
  if PedidosSCRD.AsFloat = 0 then
  begin
    DBSCRD.Color      := clWhite;
    DBSCRD.Font.Color := clWindowFrame;
  end else
  if PedidosSCRD.AsFloat <= 0 then
  begin
    DBSCRD.Color      := $000024B3;
    DBSCRD.Font.Color := clWhite;
  end else
  begin
    DBSCRD.Color      := $00C4FFC4;
    DBSCRD.Font.Color := clBlack;
  end;

  { Em Aberto }
  if PedidosPED_PEN_TCDE.AsFloat > 0 then
  begin
    DBPED_PEN_TCDE.Color      := clYellow;
    DBPED_PEN_TCDE.Font.Color := clBlack;
  end;

  { Ticket Médio }
  if PedidosPED_TKT_TCDE.AsFloat > 0 then
  begin
    DBPED_TKT_TCDE.Color      := clBlack;
    DBPED_TKT_TCDE.Font.Color := clWhite;
  end;

  PNLINFADCAD.Height := IFThen((DBINFADCAD.Lines.Count = 0) and (PedidosINFADPED.AsString = EmptyStr),0,45);


  if FKPedidos.State = dsInactive then FKPedidos.Open;

  { Notas Fiscais }
  with NF do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID  ,PK.IDPK  ,PK.IDEP ,PK.DEEP,');
    SQL.Add('       PK.CDST,PK.REST  ,PK.DEST ,PK.CDNF,PK.DTNF,PK.IDSA,PK.DTSA,PK.DESA,');
    SQL.Add('       PK.CFOP,PK.D_CFOP,PK.TPNF ,PK.D_FINNFE,');
    SQL.Add('       PK.VNF ,PK.VIPI  ,PK.VST  ,');
    SQL.Add('       PK.IDCT,PK.DECT  ,PK.D_FRT,PK.VFRT,PK.DVOL,PK.PSBR,PK.PSLQ,');
    SQL.Add('       PK.MOTORISTA     ,PK.PLACA,PK.AJUDANTES,');
    SQL.Add('       PK.INFADCAD');

    SQL.Add('FROM ' + oREPZero('VW_NFE_CAB','_',RECParametros.Id,3)+' AS PK');

    SQL.Add('WHERE PK.IDEP  = ''' + RECParametros.ID + '''');
    SQL.Add('AND   PK.CDST  = 30 -- Ativos');
    SQL.Add('AND   PK.TPCHV = 44 -- Tipo Chave (44 = nosso xml)');
    SQL.Add('AND   PK.IDCD  = ''' + IntToStr(PedidosIDCD.AsInteger) + '''');

    SQL.Add('ORDER BY PK.DTCA DESC');
    Prepare;
    Open;
  end;

  { Bancário }
  with FB do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.IDEP,PK.DEEP,');
    SQL.Add('       PK.DOCUMENTO,PK.CTNR,PK.TITULO,PK.DTFA,PK.DTVC,');
    SQL.Add('       IIF(PK.REST = ''C'' OR (PK.REST = ''B'' AND POSITION(LEFT(PK.TIPO,3) IN ''ABADEV'') = 0),0,PK.VDUP * IIF(PK.TPCO > 0,PK.TPCO,1)) AS VDUP,');
    SQL.Add('       PK.IDCV,PK.DECV,PK.IDCR,PK.DECR,');
    SQL.Add('       PK.TIPO,LEFT(PK.TIPO,3) AS D_TIPO,PK.RECO,');
    SQL.Add('       PK.VJUR,PK.VMUL,PK.VDSC,');
    SQL.Add('       PK.DTPG,PK.VPAG,PK.VPEN,PK.DEST,PK.STFI,PK.DTBX,');
    SQL.Add('       PK.FIN_PEN,PK.FIN_LIQ,PK.FIN_BLQ ,IIF(PK.STFI = ''VENCIDO'',1,0) AS FIN_VEN,');
    SQL.Add('       PK.API_ID,PK.API_DTCA,PK.API_DTED,PK.API_NN,PK.API_CA,PK.API_ST,PK.API_MT,PK.API_INFADCAD,');
    SQL.Add('       PK.INFADCAD');

    SQL.Add('FROM ' + oREPZero('VW_FIN_REC_BAN','_',RECParametros.Id,3)+' AS PK');

    SQL.Add('WHERE PK.IDEP  = ''' + RECParametros.ID + '''');
    SQL.Add('AND   PK.CDST <> 46 -- Cancelado');
    SQL.Add('AND   PK.IDCD  = ''' + IntToStr(PedidosIDCD.AsInteger) + '''');

    SQL.Add('ORDER BY PK.DTCA DESC');
    Prepare;
    Open;
  end;

  { Carteira }
  with FC do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.IDEP,PK.DEEP,');
    SQL.Add('       PK.DOCUMENTO,PK.CTNR,PK.TITULO,PK.DTFA,PK.DTVC,');
    SQL.Add('       IIF(PK.REST = ''C'' OR (PK.REST = ''B'' AND POSITION(LEFT(PK.TIPO,3) IN ''ABADEV'') = 0),0,PK.VDUP * IIF(PK.TPCO > 0,PK.TPCO,1)) AS VDUP,');
    SQL.Add('       PK.IDCV,PK.DECV,PK.IDCR,PK.DECR,');
    SQL.Add('       PK.TIPO,LEFT(PK.TIPO,3) AS D_TIPO,PK.RECO,');
    SQL.Add('       PK.VJUR,PK.VMUL,PK.VDSC,');
    SQL.Add('       PK.DTPG,PK.VPAG,PK.VPEN,PK.DEST,PK.STFI,PK.DTBX,');
    SQL.Add('       PK.FIN_PEN,PK.FIN_LIQ,PK.FIN_BLQ ,IIF(PK.STFI = ''VENCIDO'',1,0) AS FIN_VEN,');
    SQL.Add('       PK.API_ID,PK.API_DTCA,PK.API_DTED,PK.API_NN,PK.API_CA,PK.API_ST,PK.API_MT,PK.API_INFADCAD,');
    SQL.Add('       PK.INFADCAD');

    SQL.Add('FROM ' + oREPZero('VW_FIN_REC_CAR','_',RECParametros.Id,3)+' AS PK');

    SQL.Add('WHERE PK.IDEP  = ''' + RECParametros.ID + '''');
    SQL.Add('AND   PK.CDST <> 46 -- Cancelado');
    SQL.Add('AND   PK.IDCD  = ''' + IntToStr(PedidosIDCD.AsInteger) + '''');

    SQL.Add('ORDER BY PK.DTCA DESC');
    Prepare;
    Open;
  end;
end;

procedure Tfrmcad_cli_inf_new.PedidosAfterClose(DataSet: TDataSet);
begin
  FKPedidos.Close;
  NF.Close;
  FB.Close;
  FC.Close;
end;

procedure Tfrmcad_cli_inf_new.PedidosAfterScroll(DataSet: TDataSet);
begin
  if PedidosDTSA.AsDateTime > 0 then DBGPedidosDTSA.Visible := True;
  if PedidosVDSC.AsFloat    > 0 then DBGPedidosVDSC.Visible := True;

  if Pos(LeftStr(PedidosSTPD.AsString,3),'ABADEV') > 0 then DBGPedidosSTPD.Visible := True;

  if PedidosVNF.AsFloat  > 0 then DBGPedidosVNF.Visible  := True;
  if PedidosVIPI.AsFloat > 0 then DBGPedidosVIPI.Visible := True;
  if PedidosVST.AsFloat  > 0 then DBGPedidosVST.Visible  := True;
  if PedidosVFRT.AsFloat > 0 then DBGPedidosVFRT.Visible := True;
end;

procedure Tfrmcad_cli_inf_new.PedidosCalcFields(DataSet: TDataSet);
begin
  PedidosC_ID.Value := Pedidos.RecNo;

  if PedidosPED_PEN_QTDE.AsFloat > 0 then
     PedidosC_PED_PEN_TCDE.Value := TRIM(FormatFloat('R$ ,##,0.00',PedidosPED_PEN_TCDE.AsFloat) + ' / ' + PedidosPED_PEN_QTDE.AsString + FormatFloat(' [0 pc]',PedidosPED_PEN_QTRL.AsFloat));

  { Bancário }
  if PedidosBAN_PAG_QTDE.AsFloat > 0 then
     PedidosC_BAN_PAG_PERC.Value := TRIM(FormatFloat('0.##% ',PedidosBAN_AVC_PERC.AsFloat + PedidosBAN_NVC_PERC.AsFloat) + 'dentro do prazo');

  { Bancário }
  if PedidosCAR_PAG_QTDE.AsFloat > 0 then
     PedidosC_CAR_PAG_PERC.Value := TRIM(FormatFloat('0.##% ',PedidosCAR_AVC_PERC.AsFloat + PedidosCAR_NVC_PERC.AsFloat) + 'dentro do prazo');
end;

procedure Tfrmcad_cli_inf_new.FKPedidosCalcFields(DataSet: TDataSet);
begin
  FKPedidosC_ID.Value := FKPedidos.RecNo;
end;

procedure Tfrmcad_cli_inf_new.DBGFKPedidosCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGFKPedidosC_ID.Index] <> Null then
    begin
      if ANode.Values[DBGFKPedidosC_ID.Index] mod 2 <> 0 then
         AColor := $00EFF0F1;

      if ((AColor = $00EFF0F1) and (AFont.Color = clWhite)) then
           AFont.Color := clBlack;
    end;
  end;
end;

procedure Tfrmcad_cli_inf_new.NFAfterScroll(DataSet: TDataSet);
begin
  if NFVIPI.AsFloat > 0 then DBGNFVIPI.Visible := True;
  if NFVST.AsFloat  > 0 then DBGNFVST.Visible  := True;
end;

procedure Tfrmcad_cli_inf_new.DTSPedidosDataChange(Sender: TObject;
  Field: TField);
var
  PosCount: Word;
begin
  if Pos('AGUA',PedidosDEST.AsString) = 0 then
  begin
    SIFAT.Enabled  := False;
    SIEXP.Enabled  := False;
    CEVCRD.Enabled := False;
  end else
  begin
    SIFAT.Enabled  := False;
    SIEXP.Enabled  := (bPSQUSER('USU_AUTO','Vendas','Pedidos','Liberar Expedição'));
    CEVCRD.Enabled := (bPSQUSER('USU_AUTO','Vendas','Pedidos','Liberar Limite de Crédito'));

    if bPSQUSER('USU_AUTO','Financeiro','Contas a Receber','Permissões Gerais') then
    begin
      SIFAT.Enabled  := True;
      SIEXP.Enabled  := True;
      CEVCRD.Enabled := True;
    end;
  end;

  DBGPedidos.ApplyBestFit(DBGPedidosDEPK);
  DBGPedidos.ApplyBestFit(DBGPedidosSTPD);
  DBGPedidos.ApplyBestFit(DBGPedidosDEST);
  DBGPedidos.ApplyBestFit(DBGPedidosD_STCO);

  DBGPedidos.ApplyBestFit(DBGPedidosTCDE  ); DBGPedidosTCDE.Width   := DBGPedidosTCDE.Width   + 20;
  DBGPedidos.ApplyBestFit(DBGPedidosD_MFRT); DBGPedidosD_MFRT.Width := DBGPedidosD_MFRT.Width + 10;
  DBGPedidos.ApplyBestFit(DBGPedidosVNF   ); DBGPedidosVNF.Width    := DBGPedidosVNF.Width    + 20;

  { Informações Adicionais }
            PosCount := oPosCount(''#$D'',PedidosINFADPED.AsString);
  PNLINFADCAD.Height := IFThen((PosCount = 00) and (PedidosINFADPED.AsString =  EmptyStr) ,00,
                        IFThen((PosCount = 00) and (PedidosINFADPED.AsString <> EmptyStr) ,30,
                        IFThen((PosCount = 01),040,
                        IFThen((PosCount = 02),055,
                        IFThen((PosCount = 03),070,
                        IFThen((PosCount = 04),080,
                        IFThen((PosCount = 05),090,
                        IFThen((PosCount = 06),100,
                        IFThen((PosCount = 07),110,
                        IFThen((PosCount = 08),120,
                        IFThen((PosCount = 09),130,
                        IFThen((PosCount = 10),140,
                        IFThen((PosCount = 11),150,
                        IFThen((PosCount = 12),160,
                        IFThen((PosCount = 13),170,
                        IFThen((PosCount = 14),180,
                        IFThen((PosCount = 15),190,200)))))))))))))))));
end;

procedure Tfrmcad_cli_inf_new.NFCalcFields(DataSet: TDataSet);
begin
  NFC_ID.Value := NF.RecNo;
end;

procedure Tfrmcad_cli_inf_new.DBGNFCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGNFC_ID.Index] <> Null then
       if ANode.Values[DBGNFC_ID.Index] mod 2 <> 0 then
          AColor := $00EFF0F1;

    if ((AColor = $00EFF0F1) and (AFont.Color = clWhite)) then
         AFont.Color := clBlack;

    if Pos(ANode.Values[DBGNFDEST.Index],'AUTORIZADOATIVO') = 0 then
    begin
      AFont.Color := clWhite;
      AColor      := $000024B3;
    end else
    begin
      if (AColumn = DBGNFCDNF) or (AColumn = DBGNFVNF) then
      begin
        AFont.Color := clWhite;
        AColor      := clGray;
      end;
    end;
  end;
end;

procedure Tfrmcad_cli_inf_new.FBBeforeOpen(DataSet: TDataSet);
begin
  DBGFB.Bands[1].Visible := False; { Encargos   }
  DBGFB.Bands[2].Visible := False; { Descontos  }
  DBGFB.Bands[5].Visible := False; { API BOL    }
  DBGFB.Bands[6].Visible := False; { Vendedores }
  DBGFB.Bands[7].Visible := False; { Empresa    }

  DBGFBDTBX.Visible       := False;
  PCFinanceiro.ActivePage := TSFB;
end;

procedure Tfrmcad_cli_inf_new.FBAfterOpen(DataSet: TDataSet);
begin
  FB.Next;
end;

procedure Tfrmcad_cli_inf_new.FBCalcFields(DataSet: TDataSet);
begin
  FBC_ID.Value := FB.RecNo;
end;

procedure Tfrmcad_cli_inf_new.FBAfterScroll(DataSet: TDataSet);
begin
  if (FBVJUR.AsFloat > 0) or (FBVMUL.AsFloat > 0) then
      DBGFB.Bands[1].Visible := True;

  if  FBVDSC.AsFloat > 0 then
      DBGFB.Bands[2].Visible := True;

  if  (FBAPI_ID.AsString <> EmptyStr) or ((FBAPI_CA.AsString <> EmptyStr) and (FBAPI_CA.AsString <> '0')) then
       DBGFB.Bands[5].Visible := True;

  if  FBDTBX.AsDateTime > 0 then
      DBGFBDTBX.Visible := True;

  if (FBIDCV.AsInteger <> PedidosIDCV.AsInteger) or (FBIDCR.AsInteger <> PedidosIDCR.AsInteger) then
      DBGFB.Bands[6].Visible := True; { Vendedores }

  if  FBIDEP.AsInteger <> RECParametros.ID then
      DBGFB.Bands[7].Visible := (FBIDEP.AsInteger <> RECParametros.ID); { Empresa }
end;

procedure Tfrmcad_cli_inf_new.DTSFBDataChange(Sender: TObject; Field: TField);
begin
  DBGFBCTNR.Visible := (FBCTNR.AsString <> EmptyStr);
  DBGFBSTFI.Visible := (FBDEST.AsString <> FBSTFI.AsString);

  DBGFBAPI_ST.Visible := (FBAPI_ST.AsString <> EmptyStr);
  DBGFBAPI_NN.Visible := (FBAPI_NN.AsString <> EmptyStr);
  DBGFBAPI_MT.Visible := (FBAPI_MT.AsString <> EmptyStr);

  DBGFBAPI_DTED.Visible     := (FBAPI_DTED.AsDateTime > 0);
  DBGFBAPI_INFADCAD.Visible := (FBAPI_INFADCAD.AsString <> EmptyStr);

  DBGFB.ApplyBestFit(DBGFBTITULO);
  DBGFB.ApplyBestFit(DBGFBDEST  );
  DBGFB.ApplyBestFit(DBGFBSTFI  );
  DBGFB.ApplyBestFit(DBGFBAPI_ST);
  DBGFB.ApplyBestFit(DBGFBAPI_MT);
  DBGFB.ApplyBestFit(DBGFBDECR  );
  DBGFB.ApplyBestFit(DBGFBDEEP  );
end;

procedure Tfrmcad_cli_inf_new.DBGFBCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGFBDEST.Index] = 'CANCELADO' then
    begin
      AColor      := $000000F0;
      AFont.Color := clWhite;
    end else
    begin
      if (AColumn = DBGFBDOCUMENTO) or (AColumn = DBGFBTITULO) or (AColumn = DBGFBDTFA) or (AColumn = DBGFBD_TIPO) or (AColumn = DBGFBRECO) then
      begin
        AColor      := clGray;
        AFont.Color := clWhite;
      end;

      if (AColumn = DBGFBDTVC) or (AColumn = DBGFBVDUP) then
      begin
        AColor      := clBtnFace;
        AFont.Color := clBlack;
      end;

      if (AColumn = DBGFBRECO) and (RightStr(ANode.Values[DBGFBRECO.Index],1) <> '1') then
      begin
        AColor      := clBtnFace;
        AFont.Color := clBlack;
        AFont.Style := [fsBold];
      end;

      if (AColumn = DBGFBVJUR) and (ANode.Values[DBGFBVJUR.Index] > 0) then
          AFont.Style := [fsBold];

      if (AColumn = DBGFBVMUL) and (ANode.Values[DBGFBVMUL.Index] > 0) then
          AFont.Style := [fsBold];

      if (AColumn = DBGFBVDSC) and (ANode.Values[DBGFBVDSC.Index] > 0) then
          AFont.Style := [fsBold];

      { Situações }
      if (AColumn = DBGFBDTPG) or (AColumn = DBGFBVPAG) or (AColumn = DBGFBVPEN) or (AColumn = DBGFBDEST) or (AColumn = DBGFBSTFI) or (AColumn = DBGFBDTBX) then
         if ANode.Values[DBGFBFIN_LIQ.Index] = 1 then
         begin
          AColor      := $00C4FFC4;
          AFont.Color := clBlack;
         end else
         begin
           AColor      := clInfoBk;
           AFont.Color := clBlack;
         end;

      { Vencidos }
      if (AColumn = DBGFBSTFI) and (ANode.Values[DBGFBFIN_VEN.Index] = 1) then
      begin
        AColor      := $000024B3;
        AFont.Color := clWhite;
        AFont.Style := [fsBold];
      end;

      if (AColumn = DBGFBVPAG) and (ANode.Values[DBGFBVPAG.Index] > 0) then
          AFont.Style := [fsBold];

      if (AColumn = DBGFBAPI_ST) and (ANode.Values[DBGFBAPI_ST.Index] <> Null) then
          if (UPPERCASE(LeftStr(ANode.Values[DBGFBAPI_ST.Index],5)) = 'LIQUI') or (UPPERCASE(LeftStr(ANode.Values[DBGFBAPI_ST.Index],4)) = 'PAGO') then
          begin
            AColor      := $00C4FFC4;
            AFont.Color := clBlack;
          end;

      if (AColumn = DBGFBAPI_INFADCAD) and (ANode.Values[DBGFBAPI_INFADCAD.Index] <> Null) then
          if ANode.Values[DBGFBAPI_INFADCAD.Index] <> EmptyStr then
          begin
            AColor      := clInfobk;
            AFont.Color := clBlack;
            AFont.Style := [fsBold];
          end;

      if (AColumn = DBGFBDTBX) and (ANode.Values[DBGFBDTBX.Index] <> Null) then
      begin
        AColor      := clBlack;
        AFont.Color := clWhite;
      end;

      if ((AColumn = DBGFBD_TIPO) or (AColumn = DBGFBVJUR) or (AColumn = DBGFBVMUL) or (AColumn = DBGFBVDSC) or (AColumn = DBGFBVDUP) or (AColumn = DBGFBVPEN) or (AColumn = DBGFBDEST) or (AColumn = DBGFBSTFI)) and
         ((Pos(ANode.Values[DBGFBD_TIPO.Index],'ABADEV') > 0)) then
      begin
        AColor      := clYellow;
        AFont.Color := clBlack;
        AFont.Style := [fsBold];
      end;

      if ((AColumn = DBGFBD_TIPO) or (AColumn = DBGFBVJUR) or (AColumn = DBGFBVMUL) or (AColumn = DBGFBVDSC) or (AColumn = DBGFBVDUP) or (AColumn = DBGFBVPEN) or (AColumn = DBGFBDEST) or (AColumn = DBGFBSTFI)) and
         ((ANode.Values[DBGFBDEST.Index] = 'BAIXADO') and (Pos(ANode.Values[DBGFBD_TIPO.Index],'ABADEV') = 0)) then
      begin
        AColor      := clInfoBk;
        AFont.Color := clBlack;
        AFont.Style := [fsBold];
      end;

      if ((AColumn = DBGFBAPI_CA) or (AColumn = DBGFBAPI_DTCA)) and ((ANode.Values[DBGFBVPEN.Index] <> Null) and (ANode.Values[DBGFBVPEN.Index] <> '0')) then
           AFont.Style := [fsBold];
    end;
  end;
end;

procedure Tfrmcad_cli_inf_new.FCBeforeOpen(DataSet: TDataSet);
begin
  DBGFC.Bands[1].Visible := False; { Encargos  }
  DBGFC.Bands[2].Visible := False; { Descontos }
  DBGFC.Bands[5].Visible := False; { Vendedores }
  DBGFC.Bands[6].Visible := False; { Empresa    }

  DBGFCDTBX.Visible := False;
  TSFC.TabVisible   := False;
end;

procedure Tfrmcad_cli_inf_new.FCAfterOpen(DataSet: TDataSet);
begin
  FC.Next;
  if FC.RecNo > 0 then
     TSFC.TabVisible := True;
end;

procedure Tfrmcad_cli_inf_new.FCCalcFields(DataSet: TDataSet);
begin
  FCC_ID.Value := FC.RecNo;
end;

procedure Tfrmcad_cli_inf_new.FCAfterScroll(DataSet: TDataSet);
begin
  if (FCVJUR.AsFloat > 0) or (FCVMUL.AsFloat > 0) then
      DBGFC.Bands[1].Visible := True;

  if  FCVDSC.AsFloat > 0 then
      DBGFC.Bands[2].Visible := True;

  if  FCDTBX.AsDateTime > 0 then
      DBGFCDTBX.Visible := True;

  if (FCIDCV.AsInteger <> PedidosIDCV.AsInteger) or (FCIDCR.AsInteger <> PedidosIDCR.AsInteger) then
      DBGFC.Bands[5].Visible := True; { Vendedores }

  if  FCIDEP.AsInteger <> RECParametros.ID then
      DBGFC.Bands[6].Visible := (FCIDEP.AsInteger <> RECParametros.ID); { Empresa }
end;

procedure Tfrmcad_cli_inf_new.DTSFCDataChange(Sender: TObject; Field: TField);
begin
  DBGFCCTNR.Visible := (FCCTNR.AsString <> EmptyStr);
  DBGFCSTFI.Visible := (FCDEST.AsString <> FCSTFI.AsString);

  DBGFC.ApplyBestFit(DBGFCTITULO);
  DBGFC.ApplyBestFit(DBGFCDEST  );
  DBGFC.ApplyBestFit(DBGFCSTFI  );
  DBGFC.ApplyBestFit(DBGFCDECR  );
  DBGFC.ApplyBestFit(DBGFCDEEP  );
end;

procedure Tfrmcad_cli_inf_new.DBGFCCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGFCDEST.Index] = 'CANCELADO' then
    begin
      AColor      := $000000F0;
      AFont.Color := clWhite;
    end else
    begin
      if (AColumn = DBGFCDOCUMENTO) or (AColumn = DBGFCTITULO) or (AColumn = DBGFCDTFA) or (AColumn = DBGFCD_TIPO) or (AColumn = DBGFCRECO) then
      begin
        AColor      := clGray;
        AFont.Color := clWhite;
      end;

      if (AColumn = DBGFCDTVC) or (AColumn = DBGFCVDUP) then
      begin
        AColor      := clBtnFace;
        AFont.Color := clBlack;
      end;

      if (AColumn = DBGFCRECO) and (RightStr(ANode.Values[DBGFCRECO.Index],1) <> '1') then
      begin
        AColor      := clBtnFace;
        AFont.Color := clBlack;
        AFont.Style := [fsBold];
      end;

      if (AColumn = DBGFCVJUR) and (ANode.Values[DBGFCVJUR.Index] > 0) then
          AFont.Style := [fsBold];

      if (AColumn = DBGFCVMUL) and (ANode.Values[DBGFCVMUL.Index] > 0) then
          AFont.Style := [fsBold];

      if (AColumn = DBGFCVDSC) and (ANode.Values[DBGFCVDSC.Index] > 0) then
          AFont.Style := [fsBold];

      { Situações }
      if (AColumn = DBGFCDTPG) or (AColumn = DBGFCVPAG) or (AColumn = DBGFCVPEN) or (AColumn = DBGFCDEST) or (AColumn = DBGFCSTFI) or (AColumn = DBGFCDTBX) then
         if ANode.Values[DBGFCFIN_LIQ.Index] = 1 then
         begin
          AColor      := $00C4FFC4;
          AFont.Color := clBlack;
         end else
         begin
           AColor      := clInfoBk;
           AFont.Color := clBlack;
         end;

      { Vencidos }
      if (AColumn = DBGFCSTFI) and (ANode.Values[DBGFCFIN_VEN.Index] = 1) then
      begin
        AColor      := $000024B3;
        AFont.Color := clWhite;
        AFont.Style := [fsBold];
      end;

      if (AColumn = DBGFCVPAG) and (ANode.Values[DBGFCVPAG.Index] > 0) then
          AFont.Style := [fsBold];

      if (AColumn = DBGFCDTBX) and (ANode.Values[DBGFCDTBX.Index] <> Null) then
      begin
        AColor      := clBlack;
        AFont.Color := clWhite;
      end;

      if ((AColumn = DBGFCD_TIPO) or (AColumn = DBGFCVJUR) or (AColumn = DBGFCVMUL) or (AColumn = DBGFCVDSC) or (AColumn = DBGFCVDUP) or (AColumn = DBGFCVPEN) or (AColumn = DBGFCDEST) or (AColumn = DBGFCSTFI)) and
         ((Pos(ANode.Values[DBGFCD_TIPO.Index],'ABADEV') > 0)) then
      begin
        AColor      := clYellow;
        AFont.Color := clBlack;
        AFont.Style := [fsBold];
      end;

      if ((AColumn = DBGFCD_TIPO) or (AColumn = DBGFCVJUR) or (AColumn = DBGFCVMUL) or (AColumn = DBGFCVDSC) or (AColumn = DBGFCVDUP) or (AColumn = DBGFCVPEN) or (AColumn = DBGFCDEST) or (AColumn = DBGFCSTFI)) and
         ((ANode.Values[DBGFCDEST.Index] = 'BAIXADO') and (Pos(ANode.Values[DBGFCD_TIPO.Index],'ABADEV') = 0)) then
      begin
        AColor      := clInfoBk;
        AFont.Color := clBlack;
        AFont.Style := [fsBold];
      end;
    end;
  end;
end;

function Tfrmcad_cli_inf_new._Login(AFuncao,ARotina,ANome: String): Boolean;
begin
  result := False;
  try
    FrmLogin := TFrmLogin.create(Nil);
    FrmLogin.Caption := 'Autorização ...';
    FrmLogin.Tag     := 2;
    FrmLogin.ShowModal;
  finally
    if FrmLogin.RECLogin.Selected then
       result := ((_PSQUSER(FrmLogin.RECLogin.ID,AFuncao,ARotina,ANome)) or (_PSQUSER(FrmLogin.RECLogin.ID,'Financeiro','Contas a Receber','Permissões Gerais')));

    FreeAndNil(FrmLogin);
  end;
end;

function Tfrmcad_cli_inf_new._PSQUSER(AIDCA: Variant; AFuncao,ARotina,ANome: String): Boolean;
begin
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT USU_AUTO FROM CAD_USU_ADM');
    SQL.Add('WHERE  USU_CUSU = ''' + AIDCA   + '''');
    SQL.Add('AND    USU_FUNC = ''' + AFuncao + '''');
    SQL.Add('AND    USU_ROTI = ''' + ARotina + '''');
    SQL.Add('AND    USU_NOME = ''' + ANome   + '''');
    ExecQuery;

    result := ((Current.Vars[0].AsString = '1') or (RECUsuarios.ID = 0));
  end;

  if not result then
     oException(Nil,'ACESSO NEGAGO !' + #13 +
                    'Contate o admnistrador do sistema.');
end;

procedure Tfrmcad_cli_inf_new.DBGPedidosCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Padrão }
    if (AColumn = DBGPedidosDEPK) or (AColumn = DBGPedidosDTCA) or (AColumn = DBGPedidosDTSA) or
       (AColumn = DBGPedidosTCDE) or (AColumn = DBGPedidosVDSC) or (AColumn = DBGPedidosSTPD) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
    end;

    { Entrega }
    if (AColumn = DBGPedidosDTSA) and (ANode.Values[DBGPedidosDTSA.Index] <> Null) then
    begin
      AColor      := clWhite;
      AFont.Color := clBlack;
    end;

    if AColumn = DBGPedidosTCDE then
       AFont.Style := [fsBold]; { Total Pedido }

    if (AColumn = DBGPedidosVDSC) and (ANode.Values[DBGPedidosVdsc.Index] > 0) then
        AFont.Style := [fsBold]; { Total Desconto }

    { Abatimentos / Devoluções }
    if ((AColumn = DBGPedidosTCDE) or (AColumn = DBGPedidosVDSC) or (AColumn = DBGPedidosSTPD) or (AColumn = DBGPedidosDEST)) and (Pos(LeftStr(ANode.Values[DBGPedidosSTPD.Index],3),'ABADEV') > 0) then
    begin
      AColor      := clYellow;
      AFont.Color := clBlack;
    end;

    { Bloqueados }
    if ((AColumn = DBGPedidosTCDE) or (AColumn = DBGPedidosVDSC) or (AColumn = DBGPedidosSTPD) or (AColumn = DBGPedidosDEST)) and (Pos('AGUA',ANode.Values[DBGPedidosDEST.Index]) > 0) then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end;

    { Faturados }
    if (AColumn = DBGPedidosDEST) and (Pos('FAT',ANode.Values[DBGPedidosDEST.Index]) > 0) then
    begin
      AColor      := $00C4FFC4;
      AFont.Color := clBlack;
    end;

    { Frete }
    if (AColumn = DBGPedidosD_MFRT) and ((Pos('CIF',ANode.Values[DBGPedidosD_MFRT.Index]) > 0) or (Pos('FOB',ANode.Values[DBGPedidosD_MFRT.Index]) > 0)) then
        AFont.Style := [fsBold]; { Modelo }

    if (AColumn = DBGPedidosVFRT) and (ANode.Values[DBGPedidosVFRT.Index] > 0) then
        AFont.Style := [fsBold]; { Valor }

    { Nota Fiscal }
    if ((AColumn = DBGPedidosCDNF) or (AColumn = DBGPedidosVNF)) and (ANode.Values[DBGPedidosCDNF.Index] > 0) then
         AFont.Style := [fsBold];

    { IPI }
    if (AColumn = DBGPedidosVIPI) and (ANode.Values[DBGPedidosVIPI.Index] > 0) then
    begin
      AColor      := clInfoBk;
      AFont.Color := clBlack;
    end;

    { ST }
    if (AColumn = DBGPedidosVST) and (ANode.Values[DBGPedidosVST.Index] > 0) then
    begin
      AColor      := clInfoBk;
      AFont.Color := clBlack;
    end;
  end;
end;

procedure Tfrmcad_cli_inf_new.CEVCRDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if _Login('Vendas','Pedidos','Liberar Limite de Crédito') then
  begin
    try
      oOTransact(TEdicao);
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE CAD_CLI_CRD');
        SQL.Add('SET    CLI_CRED = ''' + oStrTran(CEVCRD.Text,',','.') + '''');
        SQL.Add('WHERE  IDEP     = ''' + RECParametros.ID              + '''');
        SQL.Add('AND    IDCD     = ''' + PedidosIDCD.AsString          + '''');
        ExecQuery;
      end;
      oCTransact(TEdicao);
      oAviso(Handle,'Limite de crédito atualizado com sucesso !');
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRollback);
        oException(DBGPedidos,'Falha ao tentar atualizar limite de crédito !' + #13 +
                              'Favor entrar em contato com o administrador do sistema.' +#13 +
                               E.Message);
      end;
    end;


    try
      oRTransact(IBTra,ltRead_Only);

      Pedidos.First;
      while not Pedidos.Eof do
      begin
        Pedidos.Next;
      end;

      oRTransact(IBTra);
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRollback);
        oException(DBGPedidos,'Falha ao tentar atualizar limite de crédito !' + #13 +
                              'Favor entrar em contato com o administrador do sistema.' +#13 +
                               E.Message);
      end;
    end;
  end;
end;

end.
