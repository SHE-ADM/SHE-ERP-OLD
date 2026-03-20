unit pPED_VEN_EDI;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pSHE_DEF_PED, cxGraphics, dxExEdtr, DB, IBCustomDataSet,
  ImgList, IBEvents, IBStoredProc, IBQuery, IBSQL, IBDatabase, ActnList,
  dxBar, dxBarExtItems, dxDockControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  rxSpeedbar, StdCtrls, dxDockPanel, dxPageControl, ExtCtrls, cxControls,
  dxStatusBar, dxDBTLCl, dxGrClms, dxEditor, dxEdLib, DBCtrls, dxDBELib,
  math, StrUtils;

type
  TFrmPED_VEN_EDI = class(TFrmSHE_DEF_PED)
    EdicaoID: TLargeintField;
    EdicaoIDEP: TSmallintField;
    EdicaoIDCA: TSmallintField;
    EdicaoCDST: TSmallintField;
    EdicaoREST: TIBStringField;
    EdicaoDEST: TIBStringField;
    EdicaoIDEV: TLargeintField;
    EdicaoCDEV: TSmallintField;
    EdicaoIDPK: TLargeintField;
    EdicaoDTPK: TDateTimeField;
    EdicaoDEPK: TIBStringField;
    EdicaoIDFK: TLargeintField;
    EdicaoITEM: TIntegerField;
    EdicaoIDCP: TIntegerField;
    EdicaoCP_IDEP: TSmallintField;
    EdicaoCP_DEEP: TIBStringField;
    EdicaoIDAK: TLargeintField;
    EdicaoARTIGO: TIBStringField;
    EdicaoNCM: TIBStringField;
    EdicaoPIPI: TIBBCDField;
    EdicaoIDSK: TLargeintField;
    EdicaoSKU: TIBStringField;
    EdicaoCEAN: TIBStringField;
    EdicaoDECP: TIBStringField;
    EdicaoDGCP: TIBStringField;
    EdicaoIDCF: TSmallintField;
    EdicaoCF_SKU: TIBStringField;
    EdicaoCF_CEAN: TIBStringField;
    EdicaoUCOM: TIBStringField;
    EdicaoUCON: TIBStringField;
    EdicaoUQTDE: TIBBCDField;
    EdicaoUPSBR: TIBBCDField;
    EdicaoUPSLQ: TIBBCDField;
    EdicaoCF_VPRC_PAD: TFloatField;
    EdicaoVPRC_PAD_INI: TFloatField;
    EdicaoVPRC_PAD_FIM: TFloatField;
    EdicaoVPRC_PAD: TFloatField;
    EdicaoVPRC_COM: TFloatField;
    EdicaoPDSC: TIBBCDField;
    EdicaoVDSC: TIBBCDField;
    EdicaoTSDE: TIBBCDField;
    EdicaoTCDE: TIBBCDField;
    EdicaoVTSP: TIBBCDField;
    EdicaoPPSP: TIBBCDField;
    EdicaoVIPI: TIBBCDField;
    EdicaoPSBR: TIBBCDField;
    EdicaoPSLQ: TIBBCDField;
    EdicaoORIG: TSmallintField;
    EdicaoFLAG: TSmallintField;
    EdicaoQTRL: TIntegerField;
    EdicaoRLSP: TIntegerField;
    DBGConsultaITEM: TdxDBGridMaskColumn;
    DBGConsultaNCM: TdxDBGridMaskColumn;
    DBGConsultaSKU: TdxDBGridMaskColumn;
    DBGConsultaDECP: TdxDBGridMaskColumn;
    DBGConsultaDGCP: TdxDBGridMaskColumn;
    DBGConsultaUCOM: TdxDBGridMaskColumn;
    DBGConsultaQTDE: TdxDBGridMaskColumn;
    DBGConsultaQTRL: TdxDBGridMaskColumn;
    DBGConsultaVPRC_COM: TdxDBGridMaskColumn;
    DBGConsultaPDSC: TdxDBGridMaskColumn;
    DBGConsultaVDSC: TdxDBGridMaskColumn;
    DBGConsultaTSDE: TdxDBGridMaskColumn;
    DBGConsultaTCDE: TdxDBGridMaskColumn;
    DBGConsultaVIPI: TdxDBGridMaskColumn;
    DBGConsultaPSBR: TdxDBGridMaskColumn;
    DBGConsultaPSLQ: TdxDBGridMaskColumn;
    DBGConsultaPIPI: TdxDBGridMaskColumn;
    EdicaoDEEP: TIBStringField;
    EdicaoLGCA: TIBStringField;
    EdicaoINFADCAD: TIBStringField;
    EdicaoC_ID: TLargeintField;
    DBGConsultaFLAG: TdxDBGridMaskColumn;
    DBGConsultaC_ID: TdxDBGridColumn;
    EdicaoEPE_QTDE: TIBBCDField;
    EdicaoEPE_QTRL: TIntegerField;
    DBGConsultaEPE_QTDE: TdxDBGridMaskColumn;
    PNLTOP_SUM: TPanel;
    StyleController: TdxEditStyleController;
    PNLTOP_PED: TPanel;
    PNLPED_ME: TPanel;
    PNLPED_FRT: TPanel;
    Shape1: TShape;
    LAPED_FRT: TLabel;
    LAIDCT: TLabel;
    LAMFRT: TLabel;
    PNLPED_CLI: TPanel;
    SHPED_CLI: TShape;
    LAPED_CLI: TLabel;
    LAIDCD: TLabel;
    LADECD: TLabel;
    LACNPJ: TLabel;
    CEIDCD: TdxCurrencyEdit;
    EDDECD: TdxMaskEdit;
    EDCNPJ: TdxMaskEdit;
    IEMFRT: TdxImageEdit;
    PEIDCT: TdxPickEdit;
    PNLPED_TPO: TPanel;
    SHPED_TPO: TShape;
    LAPED_TPO: TLabel;
    LADEPK: TLabel;
    LATPCO: TLabel;
    LAIDCV: TLabel;
    LAIDCR: TLabel;
    EDDEPK: TdxMaskEdit;
    IECDPD: TdxImageEdit;
    IEEVPD: TdxImageEdit;
    IETPCO: TdxImageEdit;
    IEIDCV: TdxImageEdit;
    IEIDCR: TdxImageEdit;
    PNLPED_COB: TPanel;
    SHPED_COB: TShape;
    LAPED_COB: TLabel;
    LACDCO: TLabel;
    LACDPG: TLabel;
    LAPDCO: TLabel;
    IECDCO: TdxImageEdit;
    PECDPG: TdxPickEdit;
    IEPDCO: TdxImageEdit;
    CEVFRT: TdxCurrencyEdit;
    LAVFRT: TLabel;
    LACTNR: TLabel;
    PNLPED_MC: TPanel;
    PNLPED_MD: TPanel;
    PNLPED_IMG: TPanel;
    PNLPED_INF: TPanel;
    PNLPED_INF_TOP: TPanel;
    SHPED_INF: TShape;
    LAPED_INF: TLabel;
    PNLPED_HST: TPanel;
    PNLPED_HST_TOP: TPanel;
    SHPED_HST: TShape;
    LAPED_HST: TLabel;
    PNLPED_MC_DIV: TPanel;
    DSPED_HST: TdxDockSite;
    LDSPED_HST: TdxLayoutDockSite;
    DPPED_HST: TdxDockPanel;
    DBGPED_HST: TdxDBGrid;
    DBGPED_HSTITEM: TdxDBGridMaskColumn;
    DBGPED_HSTSKU: TdxDBGridMaskColumn;
    DBGPED_HSTDGCP: TdxDBGridMaskColumn;
    DBGPED_HSTD_QTDE: TdxDBGridMaskColumn;
    DBGPED_HSTQTRL: TdxDBGridMaskColumn;
    DBGPED_HSTVPRC_COM: TdxDBGridMaskColumn;
    DBGPED_HSTPDSC: TdxDBGridMaskColumn;
    DBGPED_HSTPPSP: TdxDBGridMaskColumn;
    DBGPED_HSTDEST: TdxDBGridMaskColumn;
    DBGPED_HSTDEPK: TdxDBGridMaskColumn;
    DBGPED_HSTDTPK: TdxDBGridDateColumn;
    DBGPED_HSTDECR: TdxDBGridMaskColumn;
    DBGPED_HSTDECV: TdxDBGridMaskColumn;
    DBGPED_HSTNCM: TdxDBGridMaskColumn;
    DBGPED_HSTPIPI: TdxDBGridMaskColumn;
    DBGPED_HSTPST: TdxDBGridMaskColumn;
    DBGPED_HSTCP_DEEP: TdxDBGridMaskColumn;
    PNLPED_HST_BOT: TPanel;
    DBPED_HST: TdxDBMemo;
    TPED_HST: TIBTransaction;
    PED_HST: TIBQuery;
    PED_HSTIDPK: TLargeintField;
    PED_HSTDEPK: TIBStringField;
    PED_HSTDTPK: TDateTimeField;
    PED_HSTIDCV: TSmallintField;
    PED_HSTDECV: TIBStringField;
    PED_HSTIDCR: TSmallintField;
    PED_HSTDECR: TIBStringField;
    PED_HSTITEM: TIntegerField;
    PED_HSTIDFK: TLargeintField;
    PED_HSTIDCP: TIntegerField;
    PED_HSTCP_IDEP: TSmallintField;
    PED_HSTCP_DEEP: TIBStringField;
    PED_HSTIDAK: TLargeintField;
    PED_HSTARTIGO: TIBStringField;
    PED_HSTNCM: TIBStringField;
    PED_HSTPIPI: TIBBCDField;
    PED_HSTPST: TIBBCDField;
    PED_HSTSKU: TIBStringField;
    PED_HSTDGCP: TIBStringField;
    PED_HSTDECP: TIBStringField;
    PED_HSTUCOM: TIBStringField;
    PED_HSTUCON: TIBStringField;
    PED_HSTQTRL: TIntegerField;
    PED_HSTRLSP: TIntegerField;
    PED_HSTVPRC_PAD: TFloatField;
    PED_HSTVPRC_COM: TFloatField;
    PED_HSTVPRC_PAD_INI: TFloatField;
    PED_HSTVPRC_PAD_FIM: TFloatField;
    PED_HSTPDSC: TIBBCDField;
    PED_HSTVDSC: TFloatField;
    PED_HSTTSDE: TIBBCDField;
    PED_HSTTCDE: TIBBCDField;
    PED_HSTVIPI: TFloatField;
    PED_HSTVST: TIBBCDField;
    PED_HSTIDSP: TSmallintField;
    PED_HSTDESP: TIBStringField;
    PED_HSTCDSP: TLargeintField;
    PED_HSTDTSP: TDateTimeField;
    PED_HSTVTSP: TIBBCDField;
    PED_HSTPPSP: TIBBCDField;
    PED_HSTDEST: TIBStringField;
    DTSPED_HST: TDataSource;
    DSPED_INF: TdxDockSite;
    LDSPED_INF: TdxLayoutDockSite;
    TCDSPED_INF: TdxTabContainerDockSite;
    DPPED_INF_CAD: TdxDockPanel;
    EMPED_INF_CAD: TdxMemo;
    DPPED_INF_FIN: TdxDockPanel;
    EMPED_INF_FIN: TdxMemo;
    PNLPED_IMG_TOP: TPanel;
    SHPED_IMG_TOP: TShape;
    LAPED_IMG_TOP: TLabel;
    DSPED_IMG: TdxDockSite;
    DPPED_IMG_ILA: TdxDockPanel;
    LDSPED_IMG: TdxLayoutDockSite;
    DPPED_IMG_PAD: TdxDockPanel;
    TCDSPED_IMG: TdxTabContainerDockSite;
    BVIMG_ILA_BMP1: TBevel;
    BVIMG_ILA_BMP2: TBevel;
    BVIMG_ILA_BMP3: TBevel;
    BVIMG_ILA_BMP4: TBevel;
    BVIMG_ILA_BMP5: TBevel;
    BVIMG_ILA_BMP6: TBevel;
    BVIMG_ILA_BMP7: TBevel;
    BVIMG_ILA_BMP8: TBevel;
    DBIMG_ILA_BMP1: TDBImage;
    DBIMG_ILA_BMP2: TDBImage;
    DBIMG_ILA_BMP3: TDBImage;
    DBIMG_ILA_BMP4: TDBImage;
    DBIMG_ILA_BMP5: TDBImage;
    DBIMG_ILA_BMP6: TDBImage;
    DBIMG_ILA_BMP7: TDBImage;
    DBIMG_ILA_BMP8: TDBImage;
    PECTNR: TdxPickEdit;
    IMG_PAD: TImage;
    PED_HSTINFADPRO: TIBStringField;
    DBGPED_SUM: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxDBGridMaskColumn3: TdxDBGridMaskColumn;
    dxDBGridMaskColumn4: TdxDBGridMaskColumn;
    dxDBGridMaskColumn5: TdxDBGridMaskColumn;
    dxDBGridMaskColumn6: TdxDBGridMaskColumn;
    dxDBGridMaskColumn7: TdxDBGridMaskColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridMaskColumn8: TdxDBGridMaskColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridDateColumn1: TdxDBGridDateColumn;
    dxDBGridMaskColumn9: TdxDBGridMaskColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    dxDBGridMaskColumn10: TdxDBGridMaskColumn;
    dxDBGridMaskColumn11: TdxDBGridMaskColumn;
    dxDBGridMaskColumn12: TdxDBGridMaskColumn;
    dxDBGridMaskColumn13: TdxDBGridMaskColumn;
    dxDBGridColumn5: TdxDBGridColumn;
    dxDBGridMaskColumn14: TdxDBGridMaskColumn;
    dxDBGridMaskColumn15: TdxDBGridMaskColumn;
    dxDBGridCurrencyColumn1: TdxDBGridCurrencyColumn;
    dxDBGridMaskColumn16: TdxDBGridMaskColumn;
    dxDBGridColumn6: TdxDBGridColumn;
    dxDBGridMaskColumn17: TdxDBGridMaskColumn;
    dxDBGridMaskColumn18: TdxDBGridMaskColumn;
    dxDBGridMaskColumn19: TdxDBGridMaskColumn;
    dxDBGridMaskColumn20: TdxDBGridMaskColumn;
    dxDBGridMaskColumn21: TdxDBGridMaskColumn;
    dxDBGridMaskColumn22: TdxDBGridMaskColumn;
    dxDBGridMaskColumn23: TdxDBGridMaskColumn;
    dxDBGridCurrencyColumn2: TdxDBGridCurrencyColumn;
    dxDBGridMaskColumn24: TdxDBGridMaskColumn;
    dxDBGridMaskColumn25: TdxDBGridMaskColumn;
    dxDBGridCurrencyColumn3: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn4: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn5: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn6: TdxDBGridCurrencyColumn;
    dxDBGridMaskColumn26: TdxDBGridMaskColumn;
    dxDBGridCurrencyColumn7: TdxDBGridCurrencyColumn;
    dxDBGridMaskColumn27: TdxDBGridMaskColumn;
    dxDBGridCurrencyColumn8: TdxDBGridCurrencyColumn;
    dxDBGridMaskColumn28: TdxDBGridMaskColumn;
    dxDBGridMaskColumn29: TdxDBGridMaskColumn;
    dxDBGridMaskColumn30: TdxDBGridMaskColumn;
    dxDBGridMaskColumn31: TdxDBGridMaskColumn;
    dxDBGridMaskColumn32: TdxDBGridMaskColumn;
    dxDBGridMaskColumn33: TdxDBGridMaskColumn;
    dxDBGridCurrencyColumn9: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn10: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn11: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn12: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn13: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn14: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn15: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn16: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn17: TdxDBGridCurrencyColumn;
    dxDBGridMaskColumn34: TdxDBGridMaskColumn;
    dxDBGridMaskColumn35: TdxDBGridMaskColumn;
    dxDBGridColumn7: TdxDBGridColumn;
    DBGPED_HSTARTIGO: TdxDBGridMaskColumn;
    DBGPED_HSTDECP: TdxDBGridMaskColumn;
    PED_HSTD_QTDE: TIBStringField;
    PED_HSTCP_ABEP: TIBStringField;
    DBGPED_HSTDESP: TdxDBGridMaskColumn;
    EdicaoPST: TIBBCDField;
    EdicaoCF_UQTDE: TIBBCDField;
    EdicaoQTDE: TIBBCDField;
    EdicaoQTSP: TIBBCDField;
    EdicaoVST: TIBBCDField;
    DBGConsultaPST: TdxDBGridMaskColumn;
    DBGConsultaVST: TdxDBGridMaskColumn;
    PED_HSTQTDE: TIBBCDField;
    PED_HSTQTSP: TIBBCDField;
    QConsulta: TIBQuery;
    ACTPSQ_CAD_CLI: TAction;
    CAD_PRO_IMG_CDN: TIBQuery;
    CAD_PRO_IMG_CDNIMG_ID: TLargeintField;
    CAD_PRO_IMG_CDNIMG_NO: TIBStringField;
    CAD_PRO_IMG_CDNIMG_PAD: TBlobField;
    CAD_PRO_IMG_CDNPDF_NO: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP1: TBlobField;
    CAD_PRO_IMG_CDNILA_INS1: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS1: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP2: TBlobField;
    CAD_PRO_IMG_CDNILA_INS2: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS2: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP3: TBlobField;
    CAD_PRO_IMG_CDNILA_INS3: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS3: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP4: TBlobField;
    CAD_PRO_IMG_CDNILA_INS4: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS4: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP5: TBlobField;
    CAD_PRO_IMG_CDNILA_INS5: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS5: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP6: TBlobField;
    CAD_PRO_IMG_CDNILA_INS6: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS6: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP7: TBlobField;
    CAD_PRO_IMG_CDNILA_INS7: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS7: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP8: TBlobField;
    CAD_PRO_IMG_CDNILA_INS8: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS8: TIBStringField;
    DTSCAD_PRO_IMG_CDN: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EdicaoCalcFields(DataSet: TDataSet);
    procedure DTSPED_HSTDataChange(Sender: TObject; Field: TField);
    procedure CEIDCDValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure ACTPSQ_CAD_CLIExecute(Sender: TObject);
    procedure DBGPED_HSTCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure PED_HSTAfterOpen(DataSet: TDataSet);
    procedure DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject; Field: TField);
    procedure DBGConsultaSKUValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
  private
    { Private declarations }
    procedure _OEdicao(AFlag: Word = 0);
  public
    { Public declarations }
    procedure _WM_AFTER_CREATE  (var Msg: TMessage); message WM_AFTER_CREATE;
  end;

var
  FrmPED_VEN_EDI: TFrmPED_VEN_EDI;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TFrmPED_VEN_EDI._WM_AFTER_CREATE(var Msg: TMessage);
begin
  inherited;
  { Tabelas }
  with SQLConsulta do
  begin
    { Tipo Pedido }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO AS PK WHERE PK.ID > 0 AND PK.CDST = 30 AND PK.PED_VEN = 1 ORDER BY PK.DESCRICAO');
    ExecQuery;
    while not Eof do
    begin
      IECDPD.Values.Add(Current.Vars[0].AsString);
      IECDPD.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    { Tipo Estoque Vendável }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO AS PK WHERE PK.ID > 0 AND PK.CDST = 30 AND PK.PED_VEN_EST = 1 ORDER BY 2');
    ExecQuery;
    while not Eof do
    begin
      IEEVPD.Values.Add(Current.Vars[0].AsString);
      IEEVPD.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    { Tipo Cobrança }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO AS PK WHERE PK.ID > 0 AND PK.CDST = 30 AND PK.PED_COB = 1 ORDER BY 2');
    ExecQuery;
    while not Eof do
    begin
      IECDCO.Values.Add(Current.Vars[0].AsString);
      IECDCO.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    { Tipo Desconto Especial }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO AS PK WHERE PK.ID > 0 AND PK.CDST = 30 AND PK.PED_COB_DSC = 1 ORDER BY 2');
    ExecQuery;
    while not Eof do
    begin
      IEPDCO.Values.Add(Current.Vars[0].AsString);
      IEPDCO.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    { Prazos }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.DESCRICAO FROM TAB_PAG AS PK WHERE PK.ID > 0 AND PK.CDST = 30 ORDER BY 1');
    ExecQuery;
    while not Eof do
    begin
      PECDPG.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    { Cadastros }
    { Vendedores }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.LOGIN FROM TAB_USER AS PK WHERE PK.ID > 0 AND PK.CDST = 30 AND PK.GRUPO = ''VEN'' ORDER BY 2');
    ExecQuery;
    while not Eof do
    begin
      IEIDCV.Values.Add(Current.Vars[0].AsString);
      IEIDCV.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    { Representantes }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.FANTASIA FROM CAD_REP AS PK WHERE PK.ID > 0 AND PK.CDST = 30 ORDER BY 2');
    ExecQuery;
    while not Eof do
    begin
      IEIDCR.Values.Add(Current.Vars[0].AsString);
      IEIDCR.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    { Transportadoras }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.FANTASIA FROM CAD_TRA AS PK WHERE PK.ID > 0 AND PK.CDST = 30 ORDER BY 1');
    ExecQuery;
    while not Eof do
    begin
      PEIDCT.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    { Frete }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.FIS_MFRT,PK.DESCRICAO FROM TAB_TPO AS PK WHERE PK.FIS_MFRT IS NOT NULL AND PK.CDST = 30 ORDER BY 1');
    ExecQuery;
    while not Eof do
    begin
      IEMFRT.Values.Add(Current.Vars[0].AsString);
      IEMFRT.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    { Containers }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.CTNR FROM CAD_CON AS PK WHERE PK.ID > 0 AND PK.CDST = 30 ORDER BY 1');
    ExecQuery;
    while not Eof do
    begin
      PECTNR.Items.Add(Current.Vars[0].AsString);
      next;
    end;
  end;

  { Parâmetros do Sistema }
  { Destinatário }
  CEIDCD.Value    := RECParametros.IDCD_PAD;
  CEIDCD.Modified := True;
  CEIDCD.ValidateEdit;

  { Cadastros }
  IEIDCV.Text  := IntToStr(IFThen(RECUsuarios.Grupo = 'VEN',RECUsuarios.ID,RECParametros.IDCV_PAD));
  IEIDCR.Text  := RECParametros.IDCR_PAD;

  PEIDCT.Text  := RECParametros.DECT_PAD;
  IEMFRT.Text  := '3'; { Frete }

  { Tipos }
  IECDPD.Text  := RECParametros.PED_CDPD;
  IEEVPD.Text  := IFThen(REC_SHE_DEF.ACDEV = 6,'78','77');

  { Cobranças }
  IECDCO.Text  := RECParametros.PED_CDCO;
  PECDPG.Text  := RECParametros.PED_DEPG;

  { Edição }
  oOTransact(TEdicao);
  if REC_SHE_DEF.AIDPK > 0 then
  with SPEdicao do
  begin
    Close;
    StoredProcName := 'SP_SHE_PED_VEN';
    Prepare;

    ParamByName('AIDEP').Value := REC_SHE_DEF.AIDEP;
    ParamByName('AIDEV').Value := REC_SHE_DEF.AIDEV;
    ParamByName('ACDEV').Value := REC_SHE_DEF.ACDEV;
    ParamByName('AIDPK').Value := REC_SHE_DEF.AIDPK;
    ExecProc;

    REC_SHE_DEF.AIDEV := ParamByName('rIDEV').AsString;
    oRTransact(TEdicao);
  end;

  _OEdicao;
end;

procedure TFrmPED_VEN_EDI.FormCreate(Sender: TObject);
begin
  { Eventos }
  REC_SHE_DEF.FB_Event := 'PED_VEN';

  { Posição Página }
  REC_SHE_DEF.FrmPosition := Self.Position;

  { Grant }
  REC_SHE_DEF.GAdmin      := False;
  REC_SHE_DEF.GDescricao  := 'Vendas';
  REC_SHE_DEF.GReferencia := 'Pedidos';
  REC_SHE_DEF.GRegra      := 'Controlar';

  { Caixa }
  REC_SHE_DEF.FForceCaixa := True;

  { Pesquisa }
  REC_SHE_DEF.PSQ_FB_TB := 'Cliente';
  REC_SHE_DEF.PSQ_FB_VW := 'VW_PSQ_CAD_CLI';
  
  inherited;
end;

procedure TFrmPED_VEN_EDI._OEdicao(AFlag: Word = 0);
begin
  with Edicao do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT PK.ID  ,PK.IDEP,PK.DEEP,');
    SelectSQL.Add('       PK.IDCA,PK.LGCA,PK.CDST,PK.REST,PK.DEST,');
    SelectSQL.Add('       PK.IDEV,PK.CDEV,');
    SelectSQL.Add('       PK.IDPK,PK.DTPK,PK.DEPK,');
    SelectSQL.Add('       PK.IDFK,PK.ITEM,');
    SelectSQL.Add('       PK.IDCP,PK.CP_IDEP,PK.CP_DEEP,PK.ORIG,');
    SelectSQL.Add('       PK.IDAK,PK.ARTIGO ,PK.NCM    ,PK.PIPI,PK.PST ,');
    SelectSQL.Add('       PK.IDSK,PK.SKU    ,PK.CEAN   ,PK.DECP,PK.DGCP,');
    SelectSQL.Add('       PK.IDCF,PK.CF_SKU ,PK.CF_CEAN,PK.CF_UQTDE,');
    SelectSQL.Add('       PK.UCOM,PK.UCON   ,PK.UQTDE  ,PK.UPSBR,PK.UPSLQ,');
    SelectSQL.Add('       PK.QTDE,PK.QTRL   ,PK.QTSP   ,PK.RLSP ,');
    SelectSQL.Add('       PK.EPE_QTDE,PK.EPE_QTRL,');
    SelectSQL.Add('       PK.CF_VPRC_PAD,');
    SelectSQL.Add('       PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,');
    SelectSQL.Add('       PK.VPRC_PAD ,PK.VPRC_COM,');
    SelectSQL.Add('       PK.PDSC,VDSC,');
    SelectSQL.Add('       PK.TSDE,TCDE,PK.VTSP,PK.PPSP,PK.VIPI,PK.VST,');
    SelectSQL.Add('       PK.PSBR,PSLQ,');
    SelectSQL.Add('       TRIM(CAST(SUBSTRING(PK.INFADCAD FROM 1 FOR 1064) AS VARCHAR(1064))) AS INFADCAD,');
    SelectSQL.Add('       PK.FLAG');

    SelectSQL.Add('FROM   SHE_PED_VEN AS PK');

    SelectSQL.Add('WHERE  PK.IDEV = ''' + REC_SHE_DEF.AIDEV + '''');
    SelectSQL.Add('AND    PK.CDEV = ''' + REC_SHE_DEF.ACDEV + '''');
    SelectSQL.Add('AND    PK.IDEP = ''' + REC_SHE_DEF.AIDEP + '''');
    SelectSQL.Add('AND    PK.FLAG = ''' + INTTOSTR(AFLAG)   + '''');

    SelectSQL.Add('ORDER BY PK.ITEM');

    Prepare;
    Open;
  end;
end;

procedure TFrmPED_VEN_EDI.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGConsultaC_ID.Index] <> Null then
    if ANode.Values[DBGConsultaC_ID.Index] mod 2 <> 0 then
    AColor := $00FAFAFA else
    AColor := clHighLightText;
  end;
  inherited;
end;

procedure TFrmPED_VEN_EDI.EdicaoCalcFields(DataSet: TDataSet);
begin
  inherited;
  EdicaoC_ID.Value := Edicao.RecNo;
end;

procedure TFrmPED_VEN_EDI.DTSPED_HSTDataChange(Sender: TObject;
  Field: TField);
var
  PosCount: Word;
begin
  { Informações Adicionais }
  PosCount := oPosCount(''#$D'',PED_HSTINFADPRO.AsString);
  PNLPED_HST_BOT.Height :=

  IFThen((PosCount = 00) and (PED_HSTINFADPRO.AsString =  EmptyStr) ,00,
  IFThen((PosCount = 00) and (PED_HSTINFADPRO.AsString <> EmptyStr) ,20,
  IFThen((PosCount = 01),030,
  IFThen((PosCount = 02),040))));
end;

procedure TFrmPED_VEN_EDI.CEIDCDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  REC_SHE_DEF.FWinControl := TWinControl(Sender);
  REC_SHE_DEF.FB_QRY      := QConsulta;

  ACTPSQ_CAD_CLI.Execute;
end;

procedure TFrmPED_VEN_EDI.ACTPSQ_CAD_CLIExecute(Sender: TObject);
begin
  try uPSQ_CAD(REC_SHE_DEF);
  finally
    if REC_SHE_DEF.PSQ_OK then
    begin
      REC_SHE_DEF.Edited := (not ALockWindowUpdate);

      CEIDCD.Value := REC_SHE_DEF.PSQ_ID;
      EDDECD.Text  := REC_SHE_DEF.PSQ_FANTASIA;
      EDCNPJ.Text  := REC_SHE_DEF.PSQ_CNPJ;

      { Histórico }
      oRTransact(TPED_HST);
      with PED_HST do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ' + IFThen(INT(CEIDCD.Value) = RECParametros.IDCD_PAD,'First 500',''));
        SQL.Add('       PK.IDPK  ,PK.DTCA     AS DTPK,PK.DEPK,');
        SQL.Add('       PK.IDCV  ,CV.LOGIN    AS DECV,');
        SQL.Add('       PK.IDCR  ,CR.FANTASIA AS DECR,');
        SQL.Add('       FK.ITEM  ,FK.IDFK,');
        SQL.Add('       FK.IDCP  ,FK.CP_IDEP,EP_CP.FANTASIA AS CP_DEEP,EP_CP.FANTASIA_ABREV AS CP_ABEP,');
        SQL.Add('       CP.ARTIGO,FK.IDAK,FK.NCM ,NULLIF(FK.PIPI,0) AS PIPI,NULLIF(FK.PST,0) AS PST,');
        SQL.Add('       CP.SKU   ,FK.DGCP,FK.DECP,');
        SQL.Add('       FK.UCOM  ,FK.UCON,');
        SQL.Add('       CAST(FK.QTDE AS NUMERIC(12,4)) AS QTDE,NULLIF(FK.QTRL,0) AS QTRL,TRIM(CAST(FFMTFLOAT(FK.QTDE) || '' '' || LEFT(FK.UCOM,2) AS VARCHAR(15))) AS D_QTDE,');
        SQL.Add('       NULLIF(CAST(FK.QTSP AS NUMERIC(12,4)),0) AS QTSP,NULLIF(FK.RLSP,0) AS RLSP,');
        SQL.Add('       FK.VPRC_PAD_INI  ,FK.VPRC_PAD_FIM,');
        SQL.Add('       FK.VPRC_PAD,FK.VPRC_COM,');
        SQL.Add('       NULLIF(FK.PDSC,0) AS PDSC,NULLIF(FK.VDSC,0) AS VDSC,');
        SQL.Add('       FK.TSDE,FK.TCDE,');
        SQL.Add('       NULLIF(FK.VIPI,0) AS VIPI,NULLIF(FK.VST,0) AS VST,');
        SQL.Add('       FK.IDSP,SP.LOGIN AS DESP,');
        SQL.Add('       FK.CDSP,FK.DTSP,NULLIF(FK.VTSP,0) AS VTSP,NULLIF(FK.PPSP,0)  AS PPSP,');
        SQL.Add('       FK.DEST,');


        SQL.Add('       NULLIF(TRIM(CAST(TRIM(FK.DECP ||');
        
        SQL.Add('       TRIM(IIF(TB_GRP.DESCRICAO IS NOT NULL,'' - '' || TB_GRP.DESCRICAO,''''))  ||');
        SQL.Add('       TRIM(IIF(TB_SCT.DESCRICAO IS NOT NULL,'' - '' || TB_SCT.DESCRICAO,''''))) || ASCII_CHAR(13) || ASCII_CHAR(10) ||');
      
        SQL.Add('       TRIM(''Conteúdo: '' || COALESCE(IIF(FK.UCON IS NOT NULL,FK.UCON,FK.UCOM),'''') ||');

        SQL.Add('       IIF(CP.PRO_GRAM > 0       ,'' - Gramatura: ''   || CP.PRO_GRAM,'''') ||');
        SQL.Add('       IIF(CP.PRO_REND > 0       ,'' - Rendimento: ''  || CP.PRO_REND,'''') ||');
        SQL.Add('       IIF(CP.PRO_UTIL > 0       ,'' - Larg. Útil: ''  || CP.PRO_UTIL,'''') ||');
        SQL.Add('       IIF(CP.PRO_LARG > 0       ,'' - Larg. Total: '' || CP.PRO_LARG,'''') ||');
        SQL.Add('       IIF(NOT FEMPTY(CP.CMP_PAD),'' - Composição: ''  || CP.CMP_PAD ,'''')) AS VARCHAR(512) CHARACTER SET WIN1252) collate win_ptbr),'''') AS INFADPRO');

        SQL.Add('FROM ' + oREPZero('PED_VEN_CAB','_',RECParametros.Id,3) + ' AS PK');
        SQL.Add('JOIN     TAB_USER AS CV ON (CV.ID = PK.IDCV)');
        SQL.Add('JOIN     CAD_REP  AS CR ON (CR.ID = PK.IDCR)');

        SQL.Add('JOIN ' + oREPZero('PED_VEN_ITE','_',RECParametros.Id,3) + ' AS FK ON (FK.IDPK = PK.IDPK )');
        SQL.Add('JOIN     CAD_PRO     AS CP    ON (CP.ID      = FK.IDCP )');
        SQL.Add('JOIN     TAB_PAR_SIS AS EP_CP ON (FK.CP_IDEP = EP_CP.ID)');
        SQL.Add('JOIN     TAB_USER    AS SP    ON (SP.ID      = PK.IDSP )');

        SQL.Add('JOIN     TAB_GRP AS TB_GRP ON (TB_GRP.ID = CP.GRP_ID)');
        SQL.Add('JOIN     TAB_SCT AS TB_SCT ON (TB_SCT.ID = CP.SCT_ID)');

        SQL.Add('WHERE    PK.IDCD = ''' + CEIDCD.Text + '''');
        SQL.Add('ORDER BY PK.DTCA DESC');

        Prepare;
        Open;
      end;

      { Amostras }
      CAD_PRO_IMG_CDN.Close;
      CAD_PRO_IMG_CDN.Open;

      if not ALockWindowUpdate then
      try
        with SQLConsulta do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT FIRST 1');
          SQL.Add('       CD.IDCV,CD.PED_FIM_IDCV,');
          SQL.Add('       CD.PED_FIM_IDCT,CD.PED_FIM_MFRT,');
          SQL.Add('       CD.PED_FIM_CDPD,CD.PED_FIM_CDCO,CD.PED_FIM_CDPG');

          SQL.Add('FROM   CAD_CLI_CRD_VEN AS CD');
          SQL.Add('WHERE  CD.IDCD = ''' + CEIDCD.Text      + '''');
          SQL.Add('AND    CD.IDEP = ''' + RECParametros.ID + '''');

          if RECUsuarios.Grupo = 'VEN' then
          SQL.Add('AND      CD.IDCV = ''' + RECUsuarios.ID + '''');
          SQL.Add('ORDER BY CD.PED_FIM_DTPK DESC');
          ExecQuery;
        end;

        oRefresh(Edicao);
      finally
        if (Showing) and (PECDPG.Enabled) then
        PECDPG.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmPED_VEN_EDI.PED_HSTAfterOpen(DataSet: TDataSet);
begin
  DBGPED_HSTSKU.Field.FocusControl;
end;

procedure TFrmPED_VEN_EDI.DBGPED_HSTCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ANode.Selected then
  begin
    AColor      := $00FCF2EB;
    AFont.Color := clWindowText;
  end;

  if ASelected then
  begin
    AColor      := clHighlight;
    AFont.Color := clHighlightText;
  end;
end;

procedure TFrmPED_VEN_EDI.DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject;
  Field: TField);
begin
  LAPED_IMG_TOP.Caption := _oLoadJPG(CAD_PRO_IMG_CDNIMG_ID,CAD_PRO_IMG_CDNIMG_PAD,IMG_PAD);
  
  DBIMG_ILA_BMP1.Hint := CAD_PRO_IMG_CDND_ILA_INS1.AsString;
  DBIMG_ILA_BMP2.Hint := CAD_PRO_IMG_CDND_ILA_INS2.AsString;
  DBIMG_ILA_BMP3.Hint := CAD_PRO_IMG_CDND_ILA_INS3.AsString;
  DBIMG_ILA_BMP4.Hint := CAD_PRO_IMG_CDND_ILA_INS4.AsString;
  DBIMG_ILA_BMP5.Hint := CAD_PRO_IMG_CDND_ILA_INS5.AsString;
  DBIMG_ILA_BMP6.Hint := CAD_PRO_IMG_CDND_ILA_INS6.AsString;
  DBIMG_ILA_BMP7.Hint := CAD_PRO_IMG_CDND_ILA_INS7.AsString;
  DBIMG_ILA_BMP8.Hint := CAD_PRO_IMG_CDND_ILA_INS8.AsString;

  BvIMG_ILA_BMP1.Hint  := DBIMG_ILA_BMP1.Hint;
  BvIMG_ILA_BMP2.Hint  := DBIMG_ILA_BMP2.Hint;
  BvIMG_ILA_BMP3.Hint  := DBIMG_ILA_BMP3.Hint;
  BvIMG_ILA_BMP4.Hint  := DBIMG_ILA_BMP4.Hint;
  BvIMG_ILA_BMP5.Hint  := DBIMG_ILA_BMP5.Hint;
  BvIMG_ILA_BMP6.Hint  := DBIMG_ILA_BMP6.Hint;
  BvIMG_ILA_BMP7.Hint  := DBIMG_ILA_BMP7.Hint;
  BvIMG_ILA_BMP8.Hint  := DBIMG_ILA_BMP8.Hint;
end;

procedure TFrmPED_VEN_EDI.DBGConsultaSKUValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  {}
end;

end.
