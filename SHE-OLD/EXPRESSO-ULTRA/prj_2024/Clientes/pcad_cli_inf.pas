unit pcad_cli_inf;

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
  Tfrmcad_cli_inf = class(Tfrmpadr3)
    DTSPedidos: TDataSource;
    Pedidos: TIBQuery;
    pnlpri: TPanel;
    pnlbot: TPanel;
    dtscad_cli_inf: TDataSource;
    NF: TIBQuery;
    DTSNF: TDataSource;
    FB: TIBQuery;
    DTSFB: TDataSource;
    Prazo: TIBQuery;
    PrazoPAG_PRAZ: TLargeintField;
    siLIB: TSpeedItem;
    siSEP: TSpeedItem;
    GBFinanceiro: TGroupBox;
    GBSumario: TGroupBox;
    LAVCRD: TLabel;
    LDVCRD: TLabel;
    LAPrazo: TLabel;
    LDPrazo: TLabel;
    FKPedidos: TIBQuery;
    DTSFKPedidos: TDataSource;
    PNLCabecalho: TPanel;
    GBVendas: TGroupBox;
    PCPedidos: TdxPageControl;
    TSFKPedidos: TdxTabSheet;
    SQLConsulta: TIBSQL;
    FBC_ID: TIntegerField;
    PedidosC_ID: TIntegerField;
    DBGFKPedidos: TdxDBGrid;
    NFC_ID: TIntegerField;
    FKPedidosC_ID: TSmallintField;
    PNLCliente: TPanel;
    DBGFKPedidosITEM: TdxDBGridColumn;
    DBGFKPedidosDECP: TdxDBGridColumn;
    DBGFKPedidosDGCP: TdxDBGridColumn;
    DBGFKPedidosUCOM: TdxDBGridColumn;
    DBGFKPedidosQTDE: TdxDBGridColumn;
    DBGFKPedidosQTRL: TdxDBGridColumn;
    DBGFKPedidosVPRC_COM: TdxDBGridColumn;
    DBGFKPedidosPDSC: TdxDBGridColumn;
    DBGFKPedidosTCDE: TdxDBGridColumn;
    DBGFKPedidosC_ID: TdxDBGridColumn;
    DBGFKPedidosSKU: TdxDBGridMaskColumn;
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
    LDSCRD: TLabel;
    LASCRD: TLabel;
    PedidosID: TIntegerField;
    PedidosIDEP: TSmallintField;
    PedidosCDPV: TIntegerField;
    PedidosDEPV: TIBStringField;
    PedidosDTPV: TDateField;
    PedidosCDNF: TLargeintField;
    PedidosDTNF: TDateField;
    PedidosVIPI: TIBBCDField;
    PedidosVST: TIBBCDField;
    PedidosDTSA: TDateTimeField;
    PedidosFIN_VCRD: TIBBCDField;
    PedidosDECV: TIBStringField;
    PedidosDECR: TIBStringField;
    PedidosQTDE: TIBBCDField;
    PedidosQTRL: TIntegerField;
    PedidosTCDE: TIBBCDField;
    PedidosVTFA: TIBBCDField;
    PedidosSTCO: TIBStringField;
    PedidosRECO: TIBStringField;
    PedidosDEPG: TIBStringField;
    PedidosSTFI: TIBStringField;
    PedidosSTPD: TIBStringField;
    PedidosDECT: TIBStringField;
    PedidosPSBR: TIBBCDField;
    PedidosPSLQ: TIBBCDField;
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
    TSNotasFiscais: TdxTabSheet;
    DBGNF: TdxDBGrid;
    DBGNFCDNF: TdxDBGridColumn;
    DBGNFDTNF: TdxDBGridColumn;
    DBGNFDTSA: TdxDBGridDateColumn;
    DBGNFDESA: TdxDBGridMaskColumn;
    DBGNFMOTORISTA: TdxDBGridMaskColumn;
    DBGNFPLACA: TdxDBGridMaskColumn;
    DBGNFVNF: TdxDBGridColumn;
    DBGNFDEST: TdxDBGridColumn;
    DBGNFD_CFOP: TdxDBGridMaskColumn;
    DBGNFAJUDANTES: TdxDBGridMaskColumn;
    DBGNFDECT: TdxDBGridColumn;
    DBGNFDVOL: TdxDBGridColumn;
    DBGNFPSBR: TdxDBGridColumn;
    DBGNFPSLQ: TdxDBGridColumn;
    DBGNFC_ID: TdxDBGridColumn;
    PedidosDEEP: TIBStringField;
    DBGNFVIPI: TdxDBGridColumn;
    DBGNFVST: TdxDBGridColumn;
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
    DBGNFECFOP: TdxDBGridColumn;
    DBGNFD_FINNFE: TdxDBGridColumn;
    DBGNFDEEP: TdxDBGridColumn;
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
    TSPedidos: TdxTabSheet;
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
    DBGFKPedidosUCON: TdxDBGridColumn;
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
    PedidosINFADCAD: TIBStringField;
    SQLEdicao: TIBSQL;
    PedidosLOG_PRN_CDEV: TSmallintField;
    PedidosLOG_PRN_QTEV: TSmallintField;
    PNLPedidos: TPanel;
    DBGPedidos: TdxDBGrid;
    DBGPedidosDEPV: TdxDBGridMaskColumn;
    DBGPedidosLOG_PRN_CDEV: TdxDBGridMaskColumn;
    DBGPedidosLOG_PRN_QTEV: TdxDBGridMaskColumn;
    DBGPedidosDTPV: TdxDBGridColumn;
    DBGPedidosDECV: TdxDBGridMaskColumn;
    DBGPedidosDECR: TdxDBGridMaskColumn;
    DBGPedidosCDNF: TdxDBGridColumn;
    DBGPedidosDTNF: TdxDBGridColumn;
    DBGPedidosDTSA: TdxDBGridDateColumn;
    DBGPedidosQTRL: TdxDBGridMaskColumn;
    DBGPedidosTCDE: TdxDBGridCurrencyColumn;
    DBGPedidosVTFA: TdxDBGridColumn;
    DBGPedidosVIPI: TdxDBGridCurrencyColumn;
    DBGPedidosVST: TdxDBGridCurrencyColumn;
    DBGPedidosSTFI: TdxDBGridMaskColumn;
    DBGPedidosRECO: TdxDBGridMaskColumn;
    DBGPedidosSTPD: TdxDBGridMaskColumn;
    DBGPedidosDECT: TdxDBGridMaskColumn;
    DBGPedidosPSBR: TdxDBGridCurrencyColumn;
    DBGPedidosPSLQ: TdxDBGridCurrencyColumn;
    DBGPedidosC_ID: TdxDBGridColumn;
    PNLINFADCAD: TPanel;
    DBINFADCAD: TdxDBMemo;
    PNLLOG_PRN_DEEV: TPanel;
    Bevel3: TBevel;
    DBLOG_PRN_DEEV: TdxDBMemo;
    PedidosLOG_PRN_DEEV: TIBStringField;
    PedidosVTSP: TIBBCDField;
    PedidosDECO: TIBStringField;
    DBGPedidosDECO: TdxDBGridColumn;
    DBGPedidosVTSP: TdxDBGridMaskColumn;
    PedidosPDSC: TIBBCDField;
    PedidosVDSC: TIBBCDField;
    DBGPedidosVDSC: TdxDBGridMaskColumn;
    PedidosD_TCDE: TIBBCDField;
    DBGPedidosD_TCDE: TdxDBGridColumn;
    PedidosTPCO: TSmallintField;
    DBGPedidosTPCO: TdxDBGridMaskColumn;
    PedidosIDCV: TSmallintField;
    PedidosIDCR: TSmallintField;
    PedidosVNF: TIBBCDField;
    DBGPedidosVNF: TdxDBGridMaskColumn;
    PedidosIDCT: TSmallintField;
    PedidosMFRT: TSmallintField;
    PedidosD_MFRT: TIBStringField;
    PedidosVFRT: TIBBCDField;
    DBGPedidosVFRT: TdxDBGridMaskColumn;
    procedure siLIBClick(Sender: TObject);
    procedure LAVCRDClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure siSEPClick(Sender: TObject);
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
  private
    { Private declarations }
    FACadastro,
    RSCadastro,
    AUTORIZACAO,
    TP_AUTORIZACAO,
    ID_AUTORIZACAO: String;

    function _Retorna_STFI(AId: String): String;
    function ACESSO(cusu,campo,func,roti,nome: string;proc: boolean): boolean;
    function RETORNA_LOGIN(texto: string): boolean;

    procedure WmAfterCreate(var Msg: TMessage); message WM_AFTER_CREATE;
    procedure WmAfterShow(var Msg: TMessage); message WM_AFTER_SHOW;
    procedure ProcessPaintMessages;
    procedure AfterShow;
  public
    { Public declarations }
    RECPrincipal: TRECPrincipal;
  end;

var
  frmcad_cli_inf: Tfrmcad_cli_inf;

implementation

uses uPrincipal, pLogin, bPrincipal;

{$R *.dfm}

procedure Tfrmcad_cli_inf.WmAfterCreate(var Msg: TMessage);
begin
  Initialize(RECPrincipal);
  FillChar(RECPrincipal,SizeOf(RECPrincipal),0);
end;

procedure Tfrmcad_cli_inf.WmAfterShow(var Msg: TMessage);
begin
  ProcessPaintMessages;
  AfterShow;
end;

procedure Tfrmcad_cli_inf.ProcessPaintMessages; // << not tested, pulled out of code
var
  msg: TMsg;
begin
  while PeekMessage(msg, 0, WM_PAINT, WM_PAINT, PM_REMOVE) do
        DispatchMessage(msg);
end;

procedure Tfrmcad_cli_inf.AfterShow;
begin
  inherited;

  with Pedidos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID  ,PK.IDPK,PK.IDEP,PK.DEEP,');
    SQL.Add('       PK.CDPV,PK.DEPV,PK.DTPV,');
    SQL.Add('       PK.CDNF,PK.DTNF,PK.DTSA,');
    SQL.Add('       PK.IDCD,PK.DECD,PK.RZCD,PK.FIN_VCRD,');
    SQL.Add('       PK.IDCV,PK.DECV,PK.IDCR,PK.DECR,');
    SQL.Add('       PK.QTDE,PK.QTRL,');
    SQL.Add('       PK.PDSC,PK.VDSC,PK.TCDE,PK.D_TCDE,PK.VTSP,PK.VTFA,');
    SQL.Add('       PK.VNF ,PK.VIPI,PK.VST ,');
    SQL.Add('       PK.STPD,PK.STCO,PK.TPCO,PK.RECO  ,PK.DECO,PK.DEPG,PK.STFI,');
    SQL.Add('       PK.IDCT,PK.DECT,PK.MFRT,PK.D_MFRT,PK.VFRT,PK.PSBR,PK.PSLQ,');
    SQL.Add('       PK.LOG_PRN_CDEV,PK.LOG_PRN_DEEV,PK.LOG_PRN_QTEV,');
    SQL.Add('       PK.INFADCAD');

    SQL.Add('FROM ' + oREPZero('VW_PED_VEN_CAB','_',RECParametros.Id,3) + ' AS PK');

    SQL.Add('WHERE PK.IDEP = ''' + RECParametros.ID + '''');
    SQL.Add('AND   PK.IDCD = ''' + IDCadastro       + '''');

    SQL.Add('ORDER BY PK.DTCA DESC');
    Prepare;
    Open;
  end;

  if (DECadastro <> EmptyStr) and (DECadastro <> '0') then
      Pedidos.Locate('DEPV',DECadastro,[]);

  Screen.Cursor := crDefault;
END;

procedure Tfrmcad_cli_inf.FormCreate(Sender: TObject);
begin
  cEvent := 'CTR_PED';
  Screen.Cursor := crAppStart;

  PCPedidos.ActivePageIndex    := 0;
  PCFinanceiro.ActivePageIndex := 0;

  inherited;
  PostMessage( handle, WM_AFTER_CREATE, 0, 0 );
end;

procedure Tfrmcad_cli_inf.FormShow(Sender: TObject);
begin
  inherited;
  PostMessage( handle, WM_AFTER_SHOW, 0, 0 );
end;

procedure Tfrmcad_cli_inf.FormPaint(Sender: TObject);
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

procedure Tfrmcad_cli_inf.FormDestroy(Sender: TObject);
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
  finally frmcad_cli_inf := Nil;
  end;
end;

procedure Tfrmcad_cli_inf.siLIBClick(Sender: TObject);
function PERMITE_LIBERACAO: boolean;
var
  BRet: boolean;
  VALOR_PERMITIDO: double;
  vban,vcar: double;
begin
  VALOR_PERMITIDO := 0;
  
  with ConsultaAux do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(FIN_VPEN) FROM '+SLPrincipal.Values['fin_rec_ban_bai']);
    SQL.Add('WHERE  IDCD = '''+consulta.Fields[1].AsString+'''');
    SQL.Add('AND    DEST NOT LIKE ''PAGO%'''    );
    SQL.Add('AND    DEST NOT LIKE ''BAIXADO'''  );
    SQL.Add('AND    DEST NOT LIKE ''CANCELADO''');
    Open;
    vban := fields[0].AsFloat;

    SQL.Clear;
    SQL.Add('SELECT SUM(FIN_VPEN*FIN_CONC) FROM '+SLPrincipal.Values['fin_rec_car_bai']);
    SQL.Add('WHERE  IDCD = '''+consulta.Fields[1].AsString+'''');
    SQL.Add('AND    DEST NOT LIKE ''PAGO%'''    );
    SQL.Add('AND    DEST NOT LIKE ''BAIXADO'''  );
    SQL.Add('AND    DEST NOT LIKE ''CANCELADO''');
    Open;
    vcar := fields[0].AsFloat;
  end;

  BRet := true;
  if RECParametros.FIN_LIMITE_CREDITO_PMAX > 0 then
  begin
    VALOR_PERMITIDO := oTextToValor(LDVCRD.Caption) + ((oTextToValor(LDVCRD.Caption)*RECParametros.FIN_LIMITE_CREDITO_PMAX)/100);
    BRet := ((vcar+vban+consulta.Fields[4].AsFloat) < VALOR_PERMITIDO);
  end;

  if not BRet then
     oErro(handle,'LIBERAÇÃO NEGADA !' +#13+
                  'Valores em aberto estão acima de ' + FormatFloat('#,0.00%',RECParametros.FIN_LIMITE_CREDITO_PMAX) + ' do valor de limite de crédito cadastrado.' +#13+#13+

                  'EM ABERTO' +#13+
                  'Pedido '   + FormatFloat('R$ #,0.00',Consulta.Fields[4].AsFloat) +#13+
                  'Bancário ' + FormatFloat('R$ #,0.00',VBAN) +#13+
                  'Carteira ' + FormatFloat('R$ #,0.00',VCAR) +#13+#13+

                  'LIMITE CADASTRADO' +#13+
                   FormatFloat('R$ #,0.00',oTextToValor(LDVCRD.Caption)) + ' (Máximo Permitido ' + FormatFloat('R$ #,0.00',VALOR_PERMITIDO) + ')');

  result := BRet;
end;

begin
  if PedidosID.AsInteger = 0 then
     oException(Nil,'Pedido não Informado !');

  if Pos('AGUA',PedidosSTFI.AsString) = 0 then
     oException(Nil,'Pedido Nº ' + PedidosDEPV.AsString + ' já Liberado !' + #13 + #13 +
                    'Click no pedido que deseja liberar.');

  if not RETORNA_LOGIN('Liberar Faturamento') then
  if not Acesso(ID_AUTORIZACAO,'USU_AUTO','Financeiro','Contas a Receber','Permissões Gerais',false) then
         oException(Nil,'ACESSO NEGADO !' + #13 +
                        'Você não possui permissão para executar esse procedimento.');

  if trim(AUTORIZACAO) <> '' then
  try
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('SET   ROM_STFI = ''' + _Retorna_STFI(PedidosIDPK.AsString) + '''');
      SQL.Add('WHERE     IDPK = ''' + PedidosIDPK.AsString + '''');
      ExecQuery;
    end;

    oRTransact(IBTra);
    oAviso(frmcad_cli_inf.handle,'Pedido No '+DECadastro+' liberado com sucesso.');
  except
    on E: Exception do
    begin
      oRTransact(IBTra,ltRollback);
      raise exception.Create('Falha na liberação do pedido No '+DECadastro+'.'+#13+
                             'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                             'Erro: '+E.Message);
    end;
  end;

  ExecEvent;
end;

procedure Tfrmcad_cli_inf.LAVCRDClick(Sender: TObject);
var
  ClickedOK: Boolean;
  VALOR_LIMITE: string;
  VALOR: double;
begin
  VALOR_LIMITE := FloatToStr(oTextToValor(LDVCRD.Caption));
  ClickedOK := InputQuery('Entre com o valor para o limite de crédito','Valor', VALOR_LIMITE);
  if (not ClickedOK) then
  Abort;

  if VALOR_LIMITE  = '' then
     VALOR_LIMITE := '0';

  if PedidosID.AsInteger = 0 then
     oException(Nil,'Pedido não Informado !');

  if Pos('AGUA',PedidosSTFI.AsString) = 0 then
     oException(Nil,'Pedido Nº ' + PedidosDEPV.AsString + ' já Liberado !' + #13 + #13 +
                    'Click no pedido que deseja liberar.');

  if not RETORNA_LOGIN('Alterar Limite de Crédito') then
  if not Acesso(ID_AUTORIZACAO,'USU_AUTO','Financeiro','Contas a Receber','Permissões Gerais',false) then
     oException(Nil,'ACESSO NEGADO !' + #13 +
                   'Você não possui permissão para executar esse procedimento.');

  if (oTextToValor(VALOR_LIMITE) > RECParametros.FIN_LIMITE_CREDITO_VMAX) and (RECParametros.FIN_LIMITE_CREDITO_VMAX > 0) then
  if not Acesso(ID_AUTORIZACAO,'USU_AUTO','Financeiro','Contas a Receber','Permissões Gerais',false) then
     oException(Nil,'ACESSO NEGADO !' + #13 +
                   'Você não possui permissão para executar esse procedimento.' + #13 + #13 +
                   'Limite Máximo Permitido: ' + FormatFloat('R$ ,##,0.00',RECParametros.FIN_LIMITE_CREDITO_VMAX));

  VALOR := oTextToValor(VALOR_LIMITE);
  if trim(AUTORIZACAO) <> '' then
  try
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_CLI_CRD');
      SQL.Add('SET    VCRD = ''' + oStrTran(FloatToStr(VALOR),',','.') + '''');
      SQL.Add('WHERE  IDEP = ''' + RECParametros.ID     + '''');
      SQL.Add('AND    IDCD = ''' + PedidosIDCD.AsString + '''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('SET   ROM_STFI = ''' + _Retorna_STFI(PedidosIDPK.AsString) + '''');
      SQL.Add('WHERE IDCD     = ''' + PedidosIDCD.AsString                + '''');
      SQL.Add('AND   DEST     = ''AGUARDANDO CRÉDITO''');
      ExecQuery;
    end;  

    oRTransact(IBTra);
    oAviso(frmcad_cli_inf.handle,'Valor do limite de crédito alterado com sucesso.');

    LDVCRD.Font.Style := [fsBold];
  except
    on E: Exception do
    begin
      oRTransact(IBTra,ltRollback);
      raise exception.Create('Falha na manutenção do limite de crédito.'+#13+
                             'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                             'Erro: '+E.Message);
    end;
  end;

  ExecEvent;
end;

procedure Tfrmcad_cli_inf.siSEPClick(Sender: TObject);
begin
  if PedidosID.AsInteger = 0 then
     oException(Nil,'Pedido não Informado !');

  if Pos('AGUA',PedidosSTFI.AsString) = 0 then
     oException(Nil,'Pedido Nº ' + PedidosDEPV.AsString + ' já Liberado !' + #13 + #13 +
                    'Click no pedido que deseja liberar.');

  if not RETORNA_LOGIN('Liberar Separação') then
     if not Acesso(ID_AUTORIZACAO,'USU_AUTO','Financeiro','Contas a Receber','Permissões Gerais',false) then
        Databaseerror('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');

  if trim(AUTORIZACAO) <> '' then
  try
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('SET   ROM_STFI = ''' + _Retorna_STFI(PedidosIDPK.AsString) + '''');
      SQL.Add('WHERE     IDPK = ''' + PedidosIDPK.AsString                + '''');
      ExecQuery;
    end;

    oRTransact(IBTra);
    oAviso(frmcad_cli_inf.handle,'Pedido No '+DECadastro+' liberado com sucesso.');
  except
    on E: Exception do
    begin
      oRTransact(IBTra,ltRollback);
      raise exception.Create('Falha na liberação do pedido No '+DECadastro+'.'+#13+
                             'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                             'Erro: '+E.Message);
    end;
  end;

  ExecEvent;
end;

procedure Tfrmcad_cli_inf.PedidosBeforeOpen(DataSet: TDataSet);
begin
  DBGPedidosDTSA.Visible := False;
  DBGPedidosVDSC.Visible := False;
  DBGPedidosVTSP.Visible := False;
  DBGPedidosVNF.Visible  := False;
  DBGPedidosVTFA.Visible := False;

  DBGPedidos.Bands[5].Visible := False;

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

  LDVCRD.Caption := 'R$ 0.00';
  LDVCRD.Refresh;
end;

procedure Tfrmcad_cli_inf.PedidosAfterOpen(DataSet: TDataSet);
begin
  FACadastro := PedidosDECD.AsString;
  RSCadastro := PedidosRZCD.AsString;

  PNLCliente.Caption := '     ' + PedidosIDCD.AsString + ' - ' + PedidosDECD.AsString;

  LDVCRD.Caption := FormatFloat('R$ ,##,0.00',PedidosFIN_VCRD.AsFloat);
  LDVCRD.Refresh;

  PNLINFADCAD.Height := IFThen((DBINFADCAD.Lines.Count = 0) and (PedidosINFADCAD.AsString = EmptyStr),0,45);


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

    SQL.Add('ORDER BY PK.ID DESC');
    Prepare;
    Open;
  end;

  { Bancário }
  with FB do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.IDEP,PK.DEEP,');
    SQL.Add('       PK.DOCUMENTO,PK.CTNR,PK.TITULO,PK.DTFA,PK.DTVC,PK.VDUP,PK.DECV,PK.DECR,');
    SQL.Add('       PK.TIPO,LEFT(PK.TIPO,3) AS D_TIPO,PK.RECO,');
    SQL.Add('       PK.VJUR,PK.VMUL,PK.VDSC,');
    SQL.Add('       PK.DTPG,PK.VPAG,PK.VPEN,PK.DEST,PK.STFI,PK.DTBX,');
    SQL.Add('       PK.FIN_PEN,PK.FIN_LIQ,PK.FIN_BLQ,');
    SQL.Add('       PK.API_ID,PK.API_DTCA,PK.API_DTED,PK.API_NN,PK.API_CA,PK.API_ST,PK.API_MT,PK.API_INFADCAD,');
    SQL.Add('       PK.INFADCAD');

    SQL.Add('FROM ' + oREPZero('VW_FIN_REC_BAN','_',RECParametros.Id,3)+' AS PK');

    SQL.Add('WHERE PK.IDEP  = ''' + RECParametros.ID + '''');
    SQL.Add('AND   PK.CDST <> 43 -- Cancelado');
    SQL.Add('AND   PK.IDCD  = ''' + IntToStr(PedidosIDCD.AsInteger) + '''');

    SQL.Add('ORDER BY PK.ID DESC');
    Prepare;
    Open;
  end;

  { Carteira }
  with FC do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.IDEP,PK.DEEP,');
    SQL.Add('       PK.DOCUMENTO,PK.CTNR,PK.TITULO,PK.DTFA,PK.DTVC,PK.VDUP,PK.DECV,PK.DECR,');
    SQL.Add('       PK.TIPO,LEFT(PK.TIPO,3) AS D_TIPO,PK.RECO,');
    SQL.Add('       PK.VJUR,PK.VMUL,PK.VDSC,');
    SQL.Add('       PK.DTPG,PK.VPAG,PK.VPEN,PK.DEST,PK.STFI,PK.DTBX,');
    SQL.Add('       PK.FIN_PEN,PK.FIN_LIQ,PK.FIN_BLQ,');
    SQL.Add('       PK.API_ID,PK.API_DTCA,PK.API_DTED,PK.API_NN,PK.API_CA,PK.API_ST,PK.API_MT,PK.API_INFADCAD,');
    SQL.Add('       PK.INFADCAD');

    SQL.Add('FROM ' + oREPZero('VW_FIN_REC_CAR','_',RECParametros.Id,3)+' AS PK');

    SQL.Add('WHERE PK.IDEP  = ''' + RECParametros.ID + '''');
    SQL.Add('AND   PK.CDST <> 43 -- Cancelado');
    SQL.Add('AND   PK.IDCD  = ''' + IntToStr(PedidosIDCD.AsInteger) + '''');

    SQL.Add('ORDER BY PK.ID DESC');
    Prepare;
    Open;
  end;

  PCFinanceiro.ActivePageIndex := IFThen((FB.RecNo = 0) and (FC.RecNo > 0),1,0);
end;

procedure Tfrmcad_cli_inf.PedidosAfterClose(DataSet: TDataSet);
begin
  FKPedidos.Close;
  NF.Close;
  FB.Close;
  FC.Close;
end;

procedure Tfrmcad_cli_inf.PedidosAfterScroll(DataSet: TDataSet);
begin
  if PedidosDTSA.AsDateTime > 0 then
     DBGPedidosDTSA.Visible := True;

  if PedidosVDSC.AsFloat > 0 then
     DBGPedidosVDSC.Visible := True;

  if PedidosVTSP.AsFloat > 0 then
     DBGPedidosVTSP.Visible := True;

  if PedidosVNF.AsFloat > 0 then
     DBGPedidosVNF.Visible := True;

  if PedidosVTFA.AsFloat <> 0 then
     DBGPedidosVTFA.Visible := True;

  if (PedidosVIPI.AsFloat > 0) or (PedidosVST.AsFloat > 0) then
      DBGPedidos.Bands[5].Visible := True;
end;

function Tfrmcad_cli_inf.ACESSO(cusu,campo,func,roti,nome: string;proc: boolean): boolean;
var
  BRet: boolean;
begin
  BRet := true;
  if (RECUsuarios.Id <> '0') and
     (not oEmpty(cusu)) and (not oEmpty(campo)) and (not oEmpty(func)) and (not oEmpty(roti)) and (not oEmpty(nome)) then
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

procedure Tfrmcad_cli_inf.PedidosCalcFields(DataSet: TDataSet);
begin
  PedidosC_ID.Value := Pedidos.RecNo;
end;

procedure Tfrmcad_cli_inf.FKPedidosCalcFields(DataSet: TDataSet);
begin
  FKPedidosC_ID.Value := FKPedidos.RecNo;
end;

procedure Tfrmcad_cli_inf.DBGPedidosCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    AColor      := clHighLightText;
    AFont.Color := clWindowText;

    if ANode.Values[DBGPedidosSTFI.Index] = 'CANCELADO' then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end else
    if Pos('BAI',ANode.Values[DBGPedidosSTFI.Index]) > 0 then
    begin
      AColor      := clBtnFace;
      AFont.Color := clBlack;
    end else
    if Pos('SEM',ANode.Values[DBGPedidosDECO.Index]) > 0 then
    begin
      AColor      := clSilver;
      AFont.Color := clBlack;
    end else
    if Pos(LeftStr(ANode.Values[DBGPedidosSTPD.Index],3),'DEVABA') > 0 then
    begin
      AColor      := clInfoBk;   //$0080FFFF; //$00E8FFE8;
      AFont.Color := clBlack;
    end else
    if Pos('AGU',ANode.Values[DBGPedidosSTFI.Index]) > 0 then
    begin
      AColor      := $0080FFFF; //$00002FEC;
      AFont.Color := clBlack;

      if AColumn = DBGPedidosSTFI then
      begin
        AColor      := $00C1FFFF;
        AFont.Color := clBlack;
      end;
    end else
    if Pos('FIN',ANode.Values[DBGPedidosSTFI.Index]) > 0 then
    begin
      AColor      := clBtnFace;
      AFont.Color := clBlack;
    end else
    begin
      if Pos('FAT',ANode.Values[DBGPedidosSTFI.Index]) > 0 then
      begin
        AColor      := $00C4FFC4;
        AFont.Color := clBlack;
      end else
      if Pos('PAG',ANode.Values[DBGPedidosSTFI.Index]) > 0 then
      begin
        AColor      := $00B3FFB3;
        AFont.Color := clBlack;
      end else
      if Pos('SEP',ANode.Values[DBGPedidosSTFI.Index]) > 0 then
      begin
        AColor      := clBlack;
        AFont.Color := clWhite;
      end;

      if (AColumn = DBGPedidosDEPV) or (AColumn = DBGPedidosDTPV) or (AColumn = DBGPedidosSTPD) then
      begin
        AFont.Color := clWhite;
        AColor      := clGray;
      end;

      if (AColumn = DBGPedidosCDNF) and (ANode.Values[DBGPedidosCDNF.Index] > 0) then
          AFont.Style := [fsBold];

      if (AColumn = DBGPedidosDTSA) and (ANode.Values[DBGPedidosDTSA.Index] > 0) then
      begin
        AColor      := clBtnFace;
        AFont.Color := clBlack;
      end;
    end;

    if (AColumn = DBGPedidosVDSC) and (ANode.Values[DBGPedidosVDSC.Index] > 0) then
        AColor := clInfoBk;

    if (AColumn = DBGPedidosQTRL) or (AColumn = DBGPedidosTCDE) then
    begin
      AColor      := $00C7911F;
      AFont.Color := clWhite;
    end;

    if AColumn = DBGPedidosVTSP then
    begin
      AColor      := clBlack;
      AFont.Color := clWhite;

     { if ANode.Values[DBGPedidosVTSP.Index] > 0 then
         AFont.Style := [fsBold]; }
    end;

    if AColumn = DBGPedidosVNF then
    begin
      AColor      := clHighLightText;   //$009FFF9F;
      AFont.Color := clWindowText;

     { if ANode.Values[DBGPedidosVNF.Index] <> 0 then
         AFont.Style := [fsBold]; }
    end;

    if AColumn = DBGPedidosVTFA then
    begin
      AColor      := $00C4FFC4;
      AFont.Color := clBlack;

      if ANode.Values[DBGPedidosVTFA.Index] <> 0 then
         AFont.Style := [fsBold];
    end;

    if AColumn = DBGPedidosVIPI then
    begin
      AColor      := $0080FFFF;
      AFont.Color := clBlack;

      if ANode.Values[DBGPedidosVIPI.Index] > 0 then
         AFont.Style := [fsBold];
    end;

    if AColumn = DBGPedidosVST then
    begin
      AColor      := $0080FFFF;
      AFont.Color := clBlack;

      if ANode.Values[DBGPedidosVST.Index] > 0 then
         AFont.Style := [fsBold];
    end;

    if (AColumn = DBGPedidosRECO) and (ANode.Values[DBGPedidosTPCO.Index] > 1) then
    begin
      AColor      := clGray;
      AFont.Color := clBlack;
      AFont.Style := [fsBold];
    end;

    if (AColumn = DBGPedidosDEPV) and (ANode.Values[DBGPedidosLOG_PRN_QTEV.Index] > 0) then
    if ANode.Values[DBGPedidosLOG_PRN_CDEV.Index] = 4 then
       AFont.Style := [fsBold,fsStrikeOut] else
       AFont.Style := [fsBold,fsUnderline];
  end;
end;

procedure Tfrmcad_cli_inf.DBGFKPedidosCustomDrawCell(Sender: TObject;
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

procedure Tfrmcad_cli_inf.NFAfterScroll(DataSet: TDataSet);
begin
  if NFVIPI.AsFloat > 0 then DBGNFVIPI.Visible := True;
  if NFVST.AsFloat  > 0 then DBGNFVST.Visible  := True;
end;

procedure Tfrmcad_cli_inf.DTSPedidosDataChange(Sender: TObject;
  Field: TField);
var
  PosCount: Word;
begin
  DBGPedidosDECV.Visible      := (PedidosIDCV.AsInteger <> RECUsuarios.ID);
  DBGPedidos.Bands[1].Visible := (PedidosDECV.AsString  <> PedidosDECR.AsString);

  DBGPedidos.ApplyBestFit(DBGPedidosDEPV); DBGPEdidosDEPV.Width := DBGPEdidosDEPV.Width + 5;
  DBGPedidos.ApplyBestFit(DBGPedidosSTPD);

  { Informações Adicionais }
            PosCount := oPosCount(''#$D'',PedidosINFADCAD.AsString);
  PNLINFADCAD.Height := IFThen((PosCount = 00) and (PedidosINFADCAD.AsString =  EmptyStr) ,00,
                        IFThen((PosCount = 00) and (PedidosINFADCAD.AsString <> EmptyStr) ,30,
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

  PNLLOG_PRN_DEEV.Height := IFThen(PedidosLOG_PRN_DEEV.AsString = EmptyStr,0,25);
end;

procedure Tfrmcad_cli_inf.NFCalcFields(DataSet: TDataSet);
begin
  NFC_ID.Value := NF.RecNo;
end;

procedure Tfrmcad_cli_inf.DBGNFCustomDrawCell(Sender: TObject;
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

procedure Tfrmcad_cli_inf.FBBeforeOpen(DataSet: TDataSet);
begin
  DBGFB.Bands[1].Visible := False; { Encargos  }
  DBGFB.Bands[2].Visible := False; { Descontos }
  DBGFB.Bands[5].Visible := False; { API BOL   }

  DBGFBDTBX.Visible       := False;
  PCFinanceiro.ActivePage := TSFB;
end;

procedure Tfrmcad_cli_inf.FBAfterOpen(DataSet: TDataSet);
begin
  FB.Next;
end;

procedure Tfrmcad_cli_inf.FBCalcFields(DataSet: TDataSet);
begin
  FBC_ID.Value := FB.RecNo;
end;

procedure Tfrmcad_cli_inf.FBAfterScroll(DataSet: TDataSet);
begin
  if (FBVJUR.AsFloat > 0) or (FBVMUL.AsFloat > 0) then
      DBGFB.Bands[1].Visible := True;

  if  FBVDSC.AsFloat > 0 then
      DBGFB.Bands[2].Visible := True;

  if  (FBAPI_ID.AsString <> EmptyStr) or (FBAPI_CA.AsString <> EmptyStr) then
       DBGFB.Bands[5].Visible := True;

  if  FBDTBX.AsDateTime > 0 then
      DBGFBDTBX.Visible := True;
end;

procedure Tfrmcad_cli_inf.DTSFBDataChange(Sender: TObject; Field: TField);
begin
  DBGFBCTNR.Visible := (FBCTNR.AsString <> EmptyStr);
//  DBGFBSTFI.Visible := (FBDEST.AsString <> FBSTFI.AsString);

  DBGFBAPI_ST.Visible := (FBAPI_ST.AsString <> EmptyStr);
  DBGFBAPI_NN.Visible := (FBAPI_NN.AsString <> EmptyStr);
  DBGFBAPI_MT.Visible := (FBAPI_MT.AsString <> EmptyStr);

  DBGFBAPI_DTED.Visible     := (FBAPI_DTED.AsDateTime > 0);
  DBGFBAPI_INFADCAD.Visible := (FBAPI_INFADCAD.AsString <> EmptyStr);

//  DBGFB.Bands[7].Visible := (FBIDEP.AsInteger <> RECParametros.ID);

  DBGFB.ApplyBestFit(DBGFBTITULO);
  DBGFB.ApplyBestFit(DBGFBDEST  );
  DBGFB.ApplyBestFit(DBGFBSTFI  );
  DBGFB.ApplyBestFit(DBGFBAPI_ST);
  DBGFB.ApplyBestFit(DBGFBAPI_MT);
  DBGFB.ApplyBestFit(DBGFBDECR  );
  DBGFB.ApplyBestFit(DBGFBDEEP  );
end;

procedure Tfrmcad_cli_inf.DBGFBCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
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

    if (AColumn = DBGFBVDUP) and (ANode.Values[DBGFBVDUP.Index] < 0) then
    begin
      AColor      := clYellow;
      AFont.Color := clBlack;
    end;

    if (AColumn = DBGFBVPEN) and (ANode.Values[DBGFBVPEN.Index] > 0) then
    begin
      AColor      := clYellow;
      AFont.Color := clBlack;
      AFont.Style := [fsBold];
    end;

    if ((AColumn = DBGFBAPI_CA) or (AColumn = DBGFBAPI_DTCA)) and ((ANode.Values[DBGFBVPEN.Index] <> Null) and (ANode.Values[DBGFBVPEN.Index] <> '0')) then
         AFont.Style := [fsBold];


    if AColumn = DBGFBSTFI then
       if ANode.Values[DBGFBFIN_BLQ.Index] = 1 then
       begin
         AColor      := $000024B3;
         AFont.Color := clWhite;
         AFont.Style := [fsBold];
       end;
  end;
end;

procedure Tfrmcad_cli_inf.FCBeforeOpen(DataSet: TDataSet);
begin
  DBGFC.Bands[1].Visible := False; { Encargos  }
  DBGFC.Bands[2].Visible := False; { Descontos }

  DBGFCDTBX.Visible := False;
  TSFC.TabVisible   := False;
end;

procedure Tfrmcad_cli_inf.FCAfterOpen(DataSet: TDataSet);
begin
  FC.Next;
  if FC.RecNo > 0 then
     TSFC.TabVisible := True;
end;

procedure Tfrmcad_cli_inf.FCCalcFields(DataSet: TDataSet);
begin
  FCC_ID.Value := FC.RecNo;
end;

procedure Tfrmcad_cli_inf.FCAfterScroll(DataSet: TDataSet);
begin
  if (FCVJUR.AsFloat > 0) or (FCVMUL.AsFloat > 0) then
      DBGFC.Bands[1].Visible := True;

  if  FCVDSC.AsFloat > 0 then
      DBGFC.Bands[2].Visible := True;

  if  FCDTBX.AsDateTime > 0 then
      DBGFCDTBX.Visible := True;
end;

procedure Tfrmcad_cli_inf.DTSFCDataChange(Sender: TObject; Field: TField);
begin
  DBGFCCTNR.Visible := (FCCTNR.AsString <> EmptyStr);
//  DBGFCSTFI.Visible := (FCDEST.AsString <> FCSTFI.AsString);

//  DBGFC.Bands[7].Visible := (FCIDEP.AsInteger <> RECParametros.ID);

  DBGFC.ApplyBestFit(DBGFCTITULO);
  DBGFC.ApplyBestFit(DBGFCDEST  );
  DBGFC.ApplyBestFit(DBGFCSTFI  );
  DBGFC.ApplyBestFit(DBGFCDECR  );
  DBGFC.ApplyBestFit(DBGFCDEEP  );
end;

procedure Tfrmcad_cli_inf.DBGFCCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
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

    if (AColumn = DBGFCVPAG) and (ANode.Values[DBGFCVPAG.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGFCDTBX) and (ANode.Values[DBGFCDTBX.Index] <> Null) then
    begin
      AColor      := clBlack;
      AFont.Color := clWhite;
    end;


    if (AColumn = DBGFCVDUP) and (ANode.Values[DBGFCVDUP.Index] < 0) then
    begin
      AColor      := clYellow;
      AFont.Color := clBlack;
    end;

    if (AColumn = DBGFCVPEN) and (ANode.Values[DBGFCVPEN.Index] > 0) then
    begin
      AColor      := clYellow;
      AFont.Color := clBlack;
      AFont.Style := [fsBold];
    end;

    if AColumn = DBGFCSTFI then
       if ANode.Values[DBGFCFIN_BLQ.Index] = 1 then
       begin
         AColor      := $000024B3;
         AFont.Color := clWhite;
         AFont.Style := [fsBold];
       end;
  end;
end;

function Tfrmcad_cli_inf.RETORNA_LOGIN(texto: string): boolean;
var
  BRet: boolean;
begin
  BRet := False;

  AUTORIZACAO    := '';
  ID_AUTORIZACAO := '999';
  TP_AUTORIZACAO := '';

  FrmLogin         := TFrmlogin.Create(self);
  FrmLogin.Caption := texto;
  try
    FrmLogin.Tag := 2;
    FrmLogin.ShowModal;
  finally
    if FrmLogin.RECLogin.Selected then
    begin
      BRet := (Acesso(FrmLogin.RECLogin.Id,'USU_AUTO','Vendas','Pedidos',Texto,false));

      AUTORIZACAO    := FrmLogin.RECLogin.Login;
      ID_AUTORIZACAO := FrmLogin.RECLogin.Id;
      TP_AUTORIZACAO := texto;
    end;
    FreeAndNil(FrmLogin);
  end;

  result := BRet;
end;

function  Tfrmcad_cli_inf._Retorna_STFI(AId: String): String;
begin
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_PRO_SEP');
    SQL.Add('WHERE  IDEP = ''' + RECParametros.ID + '''');
    SQL.Add('AND    IDPK = ''' + AId + '''');
    ExecQuery;
  end;
  result := IFThen(SQLConsulta.Current.Vars[0].AsInteger > 0,'PENDENTE','SEPARANDO');
end;

end.
