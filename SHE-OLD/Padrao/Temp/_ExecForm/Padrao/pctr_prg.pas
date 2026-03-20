unit pctr_prg;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, DB, IBStoredProc, IBEvents,
  IBDatabase, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ComCtrls, ExtCtrls, DBCtrls, dxPageControl, dxEditor, dxEdLib,
  StdCtrls, dxDBTLCl, dxGrClms, DateUtils, dxExEdtr, jpeg, Menus, Shellapi,
  Math, StrUtils, dxDBELib, rxSpeedbar, IBSQL, pPadr2, dxBar,
  dxDockControl, dxDockPanel, ActnList, cxGraphics, cxControls, dxStatusBar;

type
  Tfrmctr_prg = class(TFrmPadr2)
    siARO: TSpeedItem;
    siCRO: TSpeedItem;
    FKCadastro: TIBQuery;
    DTSFKCadastro: TDataSource;
    SIFIM: TSpeedItem;
    SIPED: TSpeedItem;
    cli_sta: TIBQuery;
    cli_staFIN_TITU: TIBStringField;
    cli_staFIN_DVEN: TDateField;
    cli_staFIN_VALO: TIBBCDField;
    cad_cli_crd: TIBDataSet;
    SINovo: TSpeedItem;
    SIClientes: TSpeedItem;
    SQLFKConsulta: TIBSQL;
    GBFKCadastro: TGroupBox;
    DBGFKCadastro: TdxDBGrid;
    DBGFKCadastroITEM: TdxDBGridMaskColumn;
    DBGFKCadastroSKU: TdxDBGridMaskColumn;
    DBGFKCadastroDECP: TdxDBGridMaskColumn;
    DBGFKCadastroDGCP: TdxDBGridMaskColumn;
    DBGFKCadastroUCOM: TdxDBGridMaskColumn;
    DBGFKCadastroQTDE: TdxDBGridMaskColumn;
    DBGFKCadastroQTRL: TdxDBGridMaskColumn;
    DBGFKCadastroVPRC_COM: TdxDBGridMaskColumn;
    DBGFKCadastroVPRC_PAD_INI: TdxDBGridMaskColumn;
    DBGFKCadastroVPRC_PAD_FIM: TdxDBGridMaskColumn;
    DBGFKCadastroVDSC: TdxDBGridMaskColumn;
    DBGFKCadastroTCDE: TdxDBGridMaskColumn;
    DBGFKCadastroSKU_DEEP: TdxDBGridMaskColumn;
    DBGFKCadastroSTFI: TdxDBGridMaskColumn;
    PNLAmostra: TPanel;
    PCAmostra: TdxPageControl;
    TSIMG_PAD: TdxTabSheet;
    TSILA: TdxTabSheet;
    PNLILA_BMP: TPanel;
    FKCadastroID: TIntegerField;
    FKCadastroIDEP: TSmallintField;
    FKCadastroIDPK: TLargeintField;
    FKCadastroITEM: TIntegerField;
    FKCadastroIDCP: TIntegerField;
    FKCadastroSKU_IDEP: TSmallintField;
    FKCadastroSKU_DEEP: TIBStringField;
    FKCadastroARTIGO: TIBStringField;
    FKCadastroSKU: TIBStringField;
    FKCadastroCEAN: TIBStringField;
    FKCadastroDECP: TIBStringField;
    FKCadastroDGCP: TIBStringField;
    FKCadastroUCOM: TIBStringField;
    FKCadastroUCON: TIBStringField;
    FKCadastroQTDE: TIBBCDField;
    FKCadastroQTRL: TIntegerField;
    FKCadastroVPRC_PAD_INI: TFloatField;
    FKCadastroVPRC_PAD_FIM: TFloatField;
    FKCadastroVPRC_PAD: TFloatField;
    FKCadastroPDSC: TIBBCDField;
    FKCadastroVDSC: TFloatField;
    FKCadastroVPRC_COM: TFloatField;
    FKCadastroNCM: TIBStringField;
    FKCadastroPIPI: TIBBCDField;
    FKCadastroVIPI: TFloatField;
    FKCadastroTSDE: TIBBCDField;
    FKCadastroTCDE: TIBBCDField;
    FKCadastroPSBR: TIBBCDField;
    FKCadastroPSLQ: TIBBCDField;
    FKCadastroIMG_ID: TLargeintField;
    FKCadastroIMG_PAD: TBlobField;
    FKCadastroSTFI: TIBStringField;
    PNLTAB_PRC: TPanel;
    LALPRC_TAB_ABAIXO: TLabel;
    LALPRC_TAB_ACIMA_MIN: TLabel;
    LALPRC_TAB_ACIMA_MAX: TLabel;
    LAPRC_TAB_ACIMA_MIN: TLabel;
    LAPRC_TAB_ACIMA_MAX: TLabel;
    PNLTAB_PRC_ABAIXO: TPanel;
    PNLTAB_PRC_ACIMA_MIN: TPanel;
    PNLTAB_PRC_ACIMA_MAX: TPanel;
    PNLINFADCAD: TPanel;
    DBINFADCAD: TdxDBMemo;
    FKCadastroCTNR: TIBStringField;
    cad_cli_crdID: TIntegerField;
    cad_cli_crdIDEP: TSmallintField;
    cad_cli_crdIDCA: TSmallintField;
    cad_cli_crdDTCA: TDateTimeField;
    cad_cli_crdIDED: TSmallintField;
    cad_cli_crdDTED: TDateTimeField;
    cad_cli_crdIDST: TSmallintField;
    cad_cli_crdDTST: TDateTimeField;
    cad_cli_crdCDST: TSmallintField;
    cad_cli_crdREST: TIBStringField;
    cad_cli_crdDEST: TIBStringField;
    cad_cli_crdIDCD: TIntegerField;
    cad_cli_crdNAFA: TSmallintField;
    cad_cli_crdVCRD: TIBBCDField;
    cad_cli_crdSCRD: TIBBCDField;
    cad_cli_crdPDSC: TIBBCDField;
    cad_cli_crdVDSC: TIBBCDField;
    cad_cli_crdINFADCAD_L1: TIBStringField;
    cad_cli_crdINFADCAD_L2: TIBStringField;
    cad_cli_crdPDSC_001: TIBBCDField;
    cad_cli_crdVDSC_INI_001: TIBBCDField;
    cad_cli_crdVDSC_FIM_001: TIBBCDField;
    cad_cli_crdINFADCAD_L1_001: TIBStringField;
    cad_cli_crdINFADCAD_L2_001: TIBStringField;
    cad_cli_crdPDSC_002: TIBBCDField;
    cad_cli_crdVDSC_INI_002: TIBBCDField;
    cad_cli_crdVDSC_FIM_002: TIBBCDField;
    cad_cli_crdINFADCAD_L1_002: TIBStringField;
    cad_cli_crdINFADCAD_L2_002: TIBStringField;
    cad_cli_crdPDSC_003: TIBBCDField;
    cad_cli_crdVDSC_INI_003: TIBBCDField;
    cad_cli_crdVDSC_FIM_003: TIBBCDField;
    cad_cli_crdINFADCAD_L1_003: TIBStringField;
    cad_cli_crdINFADCAD_L2_003: TIBStringField;
    cad_cli_crdFLAG: TSmallintField;
    cad_cli_crdVDUP: TIBBCDField;
    cad_cli_crdVCAR: TIBBCDField;
    cad_cli_crdVPED: TIBBCDField;
    cad_cli_crdPED_TCDE: TIBBCDField;
    cad_cli_crdPED_VTFA: TIBBCDField;
    cad_cli_crdPED_QTDE: TIntegerField;
    cad_cli_crdPED_QTRL: TLargeintField;
    cad_cli_crdPED_DTIN: TDateField;
    cad_cli_crdPED_DTFN: TDateField;
    cad_cli_crdPED_PEN_TCDE: TIBBCDField;
    cad_cli_crdPED_PEN_QTDE: TIntegerField;
    cad_cli_crdPED_PEN_QTRL: TLargeintField;
    cad_cli_crdPED_PEN_PERC: TIBBCDField;
    cad_cli_crdPED_TKT_TCDE: TIBBCDField;
    cad_cli_crdPED_TKT_VTFA: TIBBCDField;
    cad_cli_crdBAN_VDUP: TIBBCDField;
    cad_cli_crdBAN_QTDE: TIntegerField;
    cad_cli_crdBAN_PERC: TIBBCDField;
    cad_cli_crdBAN_PEN_VDUP: TIBBCDField;
    cad_cli_crdBAN_PEN_QTDE: TIntegerField;
    cad_cli_crdBAN_PEN_PERC: TIBBCDField;
    cad_cli_crdBAN_PAG_VDUP: TIBBCDField;
    cad_cli_crdBAN_PAG_QTDE: TIntegerField;
    cad_cli_crdBAN_PAG_PERC: TIBBCDField;
    cad_cli_crdBAN_AVC_VDUP: TIBBCDField;
    cad_cli_crdBAN_AVC_QTDE: TIntegerField;
    cad_cli_crdBAN_AVC_PERC: TIBBCDField;
    cad_cli_crdBAN_NVC_VDUP: TIBBCDField;
    cad_cli_crdBAN_NVC_QTDE: TIntegerField;
    cad_cli_crdBAN_NVC_PERC: TIBBCDField;
    cad_cli_crdBAN_DVC_VDUP: TIBBCDField;
    cad_cli_crdBAN_DVC_QTDE: TIntegerField;
    cad_cli_crdBAN_DVC_PERC: TIBBCDField;
    cad_cli_crdCAR_VDUP: TIBBCDField;
    cad_cli_crdCAR_QTDE: TIntegerField;
    cad_cli_crdCAR_PERC: TIBBCDField;
    cad_cli_crdCAR_PEN_VDUP: TIBBCDField;
    cad_cli_crdCAR_PEN_QTDE: TIntegerField;
    cad_cli_crdCAR_PEN_PERC: TIBBCDField;
    cad_cli_crdCAR_PAG_VDUP: TIBBCDField;
    cad_cli_crdCAR_PAG_QTDE: TIntegerField;
    cad_cli_crdCAR_PAG_PERC: TIBBCDField;
    cad_cli_crdCAR_AVC_VDUP: TIBBCDField;
    cad_cli_crdCAR_AVC_QTDE: TIntegerField;
    cad_cli_crdCAR_AVC_PERC: TIBBCDField;
    cad_cli_crdCAR_NVC_VDUP: TIBBCDField;
    cad_cli_crdCAR_NVC_QTDE: TIntegerField;
    cad_cli_crdCAR_NVC_PERC: TIBBCDField;
    cad_cli_crdCAR_DVC_VDUP: TIBBCDField;
    cad_cli_crdCAR_DVC_QTDE: TIntegerField;
    cad_cli_crdCAR_DVC_PERC: TIBBCDField;
    CadastroID: TLargeintField;
    CadastroEP_ID: TSmallintField;
    CadastroIDPK: TLargeintField;
    CadastroDEPK: TIBStringField;
    CadastroDTPK: TDateField;
    CadastroCTNR: TIBStringField;
    CadastroCDCX: TLargeintField;
    CadastroCD_ID: TIntegerField;
    CadastroCD_NO: TIBStringField;
    CadastroCD_CNPJ: TIBStringField;
    CadastroCR_ID: TSmallintField;
    CadastroCR_NO: TIBStringField;
    CadastroCV_ID: TSmallintField;
    CadastroCV_NO: TIBStringField;
    CadastroTSDE: TIBBCDField;
    CadastroTCDE: TIBBCDField;
    CadastroTDSC: TIBStringField;
    CadastroVDSC: TIBBCDField;
    CadastroPDSC: TIBBCDField;
    CadastroCT_ID: TSmallintField;
    CadastroCT_NO: TIBStringField;
    CadastroFRT_MODELO: TSmallintField;
    CadastroFRT_NO: TIBStringField;
    CadastroFRT_VFRT: TIBBCDField;
    CadastroFRT_PSBR: TIBBCDField;
    CadastroFRT_PSLQ: TIBBCDField;
    CadastroTPD_ID: TSmallintField;
    CadastroTPD_NO: TIBStringField;
    CadastroTCO_ID: TSmallintField;
    CadastroTCO_NO: TIBStringField;
    CadastroTCO_NO_PRZ: TIBStringField;
    CadastroPRZ_ID: TSmallintField;
    CadastroCDST: TSmallintField;
    CadastroREST: TIBStringField;
    CadastroDEST: TIBStringField;
    CadastroBXD_IDPK: TLargeintField;
    CadastroBXD_DTPK: TDateField;
    CadastroINFADCAD: TIBStringField;
    CadastroAPI_B2B_IDPK: TLargeintField;
    CadastroAPI_B2B_DEPK: TIBStringField;
    DBGConsultaIDPK: TdxDBGridColumn;
    DBGConsultaDEPK: TdxDBGridMaskColumn;
    DBGConsultaDTPK: TdxDBGridColumn;
    DBGConsultaAPI_B2B_DEPK: TdxDBGridMaskColumn;
    DBGConsultaAPI_B2B_DTPK: TdxDBGridDateColumn;
    DBGConsultaCD_NO: TdxDBGridMaskColumn;
    DBGConsultaCV_NO: TdxDBGridMaskColumn;
    DBGConsultaCT_NO: TdxDBGridMaskColumn;
    DBGConsultaFRT_NO: TdxDBGridMaskColumn;
    DBGConsultaTPD_NO: TdxDBGridMaskColumn;
    DBGConsultaTCO_NO_PRZ: TdxDBGridColumn;
    DBGConsultaSTA_NO_ABREV: TdxDBGridMaskColumn;
    CadastroHTPK: TTimeField;
    DBGConsultaHTPK: TdxDBGridColumn;
    DBGConsultaTSDE: TdxDBGridMaskColumn;
    DBGConsultaTCDE: TdxDBGridMaskColumn;
    DBGConsultaVDSC: TdxDBGridMaskColumn;
    DBGConsultaCR_NO: TdxDBGridMaskColumn;
    DBGConsultaFRT_VFRT: TdxDBGridMaskColumn;
    DBGConsultaFRT_PSBR: TdxDBGridMaskColumn;
    DBGConsultaFRT_PSLQ: TdxDBGridMaskColumn;
    CadastroSTA_NO_ABREV: TIBStringField;
    DBGConsultaQTRL: TdxDBGridColumn;
    DBGConsultaDEST: TdxDBGridMaskColumn;
    CadastroQTDE: TIBBCDField;
    CadastroQTRL: TIntegerField;
    CadastroCD_NO_RZ: TIBStringField;
    CadastroAPI_B2B_DTPK: TDateField;
    CadastroAPI_B2B_HTPK: TTimeField;
    DBGConsultaAPI_B2B_HTPK: TdxDBGridColumn;
    CAD_PRO_IMG: TIBQuery;
    CAD_PRO_IMGIMG_ID: TLargeintField;
    CAD_PRO_IMGIMG_NO: TIBStringField;
    CAD_PRO_IMGIMG_PAD: TBlobField;
    CAD_PRO_IMGILA_BMP1: TBlobField;
    CAD_PRO_IMGILA_INS1: TIBStringField;
    CAD_PRO_IMGD_ILA_INS1: TIBStringField;
    CAD_PRO_IMGILA_BMP2: TBlobField;
    CAD_PRO_IMGILA_INS2: TIBStringField;
    CAD_PRO_IMGD_ILA_INS2: TIBStringField;
    CAD_PRO_IMGILA_BMP3: TBlobField;
    CAD_PRO_IMGILA_INS3: TIBStringField;
    CAD_PRO_IMGD_ILA_INS3: TIBStringField;
    CAD_PRO_IMGILA_BMP4: TBlobField;
    CAD_PRO_IMGILA_INS4: TIBStringField;
    CAD_PRO_IMGD_ILA_INS4: TIBStringField;
    CAD_PRO_IMGILA_BMP5: TBlobField;
    CAD_PRO_IMGILA_INS5: TIBStringField;
    CAD_PRO_IMGD_ILA_INS5: TIBStringField;
    CAD_PRO_IMGILA_BMP6: TBlobField;
    CAD_PRO_IMGILA_INS6: TIBStringField;
    CAD_PRO_IMGD_ILA_INS6: TIBStringField;
    CAD_PRO_IMGILA_BMP7: TBlobField;
    CAD_PRO_IMGILA_INS7: TIBStringField;
    CAD_PRO_IMGD_ILA_INS7: TIBStringField;
    CAD_PRO_IMGILA_BMP8: TBlobField;
    CAD_PRO_IMGILA_INS8: TIBStringField;
    CAD_PRO_IMGD_ILA_INS8: TIBStringField;
    DTSCAD_PRO_IMG: TDataSource;
    BVCAD_PRO_IMG_ILA1: TBevel;
    BVCAD_PRO_IMG_ILA2: TBevel;
    BVCAD_PRO_IMG_ILA4: TBevel;
    BVCAD_PRO_IMG_ILA5: TBevel;
    BVCAD_PRO_IMG_ILA6: TBevel;
    BVCAD_PRO_IMG_ILA7: TBevel;
    BVCAD_PRO_IMG_ILA8: TBevel;
    BVCAD_PRO_IMG_ILA3: TBevel;
    DBCAD_PRO_IMG_ILA1: TDBImage;
    DBCAD_PRO_IMG_ILA2: TDBImage;
    DBCAD_PRO_IMG_ILA3: TDBImage;
    DBCAD_PRO_IMG_ILA4: TDBImage;
    DBCAD_PRO_IMG_ILA5: TDBImage;
    DBCAD_PRO_IMG_ILA6: TDBImage;
    DBCAD_PRO_IMG_ILA7: TDBImage;
    DBCAD_PRO_IMG_ILA8: TDBImage;
    PNLCAD_PRO_IMG_PIX: TPanel;
    PNLCAD_PRO_IMG_PAD: TPanel;
    IMGCAD_PRO_IMG_PAD: TImage;
    CadastroIDEV: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure siAROClick(Sender: TObject);
    procedure dtscadastroDataChange(Sender: TObject; Field: TField);
    procedure siPSQClick(Sender: TObject);
    procedure siCROClick(Sender: TObject);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure SIFIMClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGFKCadastroCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure SIPEDClick(Sender: TObject);
    procedure FKCadastroAfterOpen(DataSet: TDataSet);
    procedure SINovoClick(Sender: TObject);
    procedure SIClientesClick(Sender: TObject);
    procedure DTSFKCadastroDataChange(Sender: TObject; Field: TField);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeOpen(DataSet: TDataSet);
    procedure CadastroAfterScroll(DataSet: TDataSet);
    procedure DTSCAD_PRO_IMGDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
     function RETORNA_STFI: string;
  public
    { Public declarations }
    procedure _WM_AFTER_CREATE  (var Msg: TMessage); message WM_AFTER_CREATE;
  end;

var
  frmctr_prg: Tfrmctr_prg;

implementation

uses uPrincipal, bPrincipal,
  pven_prg, pProduto_Devolucao_Cancelamento, ppesquisa_geral,
  pcad_cli_edi;

{$R *.dfm}

procedure Tfrmctr_prg._WM_AFTER_CREATE(var Msg: TMessage);
begin
  inherited;
  with FKCadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT    PK.ID      ,PK.IDEP,');
    SQL.Add('          PK.IDPK    ,PK.ITEM,PK.CTNR,');
    SQL.Add('          PK.IDCP    ,CP.IDEP AS SKU_IDEP,EP.FANTASIA AS SKU_DEEP,');
    SQL.Add('          CP.ARTIGO  ,CP.SKU ,CP.CEAN,');
    SQL.Add('          PK.DECP    ,PK.DGCP,');
    SQL.Add('          PK.UCOM    ,PK.UCON,PK.QTDE,PK.QTRL,');
    SQL.Add('          PK.VPRC_PAD,PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,PK.PDSC,PK.VDSC,PK.VPRC_COM,PK.TSDE,PK.TCDE,');
    SQL.Add('          PK.NCM     ,PK.PIPI,PK.VIPI,');
    SQL.Add('          PK.PSBR    ,PK.PSLQ,');
    SQL.Add('          PK.STFI,');
    SQL.Add('          CAST(IIF(SKU.IMG_PAD IS NULL,ART.ID,SKU.ID) AS BIGINT) AS IMG_ID,IIF(SKU.IMG_PAD IS NULL,ART.IMG_PAD,SKU.IMG_PAD) AS IMG_PAD');
    SQL.Add('FROM   '+SLPrincipal.Values['ped_prg_ite']+' AS PK');
    SQL.Add('JOIN      CAD_PRO         AS CP  ON (CP.ID  = PK.IDCP)');
    SQL.Add('JOIN      TAB_PAR_SIS     AS EP  ON (EP.ID  = CP.IDEP)');
    SQL.Add('LEFT JOIN CAD_PRO_IMG_ART AS ART ON (ART.ID = CP.IDAK)');
    SQL.Add('LEFT JOIN CAD_PRO_IMG_SKU AS SKU ON (SKU.ID = CP.ID  )');
    SQL.Add('WHERE     PK.IDPK = :ID');
    SQL.Add('ORDER BY  PK.ITEM');
    Prepare;
  end;

  with cadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PK.ID  ,PK.EP_ID,PK.IDEV,');
    SQL.Add('         PK.IDPK,PK.DEPK ,PK.DTPK,PK.HTPK,PK.API_B2B_IDPK,PK.API_B2B_DEPK,PK.API_B2B_DTPK,PK.API_B2B_HTPK,');
    SQL.Add('         PK.CTNR,PK.CDCX ,');

    SQL.Add('         PK.CD_ID,PK.CD_NO,PK.CD_NO_RZ,PK.CD_CNPJ,');
    SQL.Add('         PK.CR_ID,PK.CR_NO,');
    SQL.Add('         PK.CV_ID,PK.CV_NO,');

    SQL.Add('         PK.QTDE,PK.QTRL,');
    SQL.Add('         PK.TSDE,PK.TCDE,');
    SQL.Add('         PK.TDSC,PK.VDSC,PK.PDSC,');

    SQL.Add('         PK.CT_ID,PK.CT_NO,');
    SQL.Add('         PK.FRT_MODELO,PK.FRT_NO,PK.FRT_VFRT,PK.FRT_PSBR,PK.FRT_PSLQ,');

    SQL.Add('         PK.TPD_ID,PK.TPD_NO,');
    SQL.Add('         PK.TCO_ID,PK.TCO_NO,PK.TCO_NO_PRZ,PK.PRZ_ID,');
    SQL.Add('         PK.CDST,PK.REST,PK.DEST,PK.STA_NO_ABREV,');
    SQL.Add('         PK.BXD_IDPK,PK.BXD_DTPK,');

    SQL.Add('         PK.INFADCAD');

    SQL.Add('FROM ' + oREPZero('VW_PSQ_PED_PDP_ADM','_',RECParametros.EP_ID,3) + ' AS PK');

    SQL.Add('WHERE (PK.CDST = 116');
    SQL.Add('OR     PK.DTPK BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))))');

    Prepare;
    Open;
  end;
end;

procedure Tfrmctr_prg.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'PED_PRG_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Clientes';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmctr_prg.FormDestroy(Sender: TObject);
begin
  inherited;
  frmctr_prg := Nil;
end;

procedure Tfrmctr_prg.siPSQClick(Sender: TObject);
begin
   inherited;
  FrmPesquisa_Geral     := TFrmPesquisa_Geral.Create(self);
  FrmPesquisa_Geral.Tag := 17;

  with FrmPesquisa_Geral do
  try
    cbCAMPO.Text := 'Nº Pedido';
    cbDATA.Text  := 'Emissão';
    ShowModal;

    if Editado then
    begin
      oCTransact(TConsulta);
      oOTransact(TConsulta);

      with Cadastro do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT   PK.ID  ,PK.EP_ID,PK.IDEV,');
        SQL.Add('         PK.IDPK,PK.DEPK ,PK.DTPK,PK.HTPK,PK.API_B2B_IDPK,PK.API_B2B_DEPK,PK.API_B2B_DTPK,PK.API_B2B_HTPK,');
        SQL.Add('         PK.CTNR,PK.CDCX ,');

        SQL.Add('         PK.CD_ID,PK.CD_NO,PK.CD_NO_RZ,PK.CD_CNPJ,');
        SQL.Add('         PK.CR_ID,PK.CR_NO,');
        SQL.Add('         PK.CV_ID,PK.CV_NO,');

        SQL.Add('         PK.QTDE,PK.QTRL,');
        SQL.Add('         PK.TSDE,PK.TCDE,');
        SQL.Add('         PK.TDSC,PK.VDSC,PK.PDSC,');

        SQL.Add('         PK.CT_ID,PK.CT_NO,');
        SQL.Add('         PK.FRT_MODELO,PK.FRT_NO,PK.FRT_VFRT,PK.FRT_PSBR,PK.FRT_PSLQ,');

        SQL.Add('         PK.TPD_ID,PK.TPD_NO,');
        SQL.Add('         PK.TCO_ID,PK.TCO_NO,PK.TCO_NO_PRZ,PK.PRZ_ID,');
        SQL.Add('         PK.CDST,PK.REST,PK.DEST,PK.STA_NO_ABREV,');
        SQL.Add('         PK.BXD_IDPK,PK.BXD_DTPK,');

        SQL.Add('         PK.INFADCAD');

        SQL.Add('FROM ' + oREPZero('VW_PSQ_PED_PDP_ADM','_',RECParametros.EP_ID,3) + ' AS PK');
        SQL.Add('WHERE    PK.EP_ID = ''' + RECParametros.EP_ID + '''');

        if EDTXT.Text <> EmptyStr then
        SQL.Add('AND ' + CField + ' LIKE ''' + EDTXT.Text + '%''');

        if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
        SQL.Add('AND ' + cData + ' BETWEEN ''' + formatDateTime('mm/dd/yy',dxDT1.Date) + ''' AND ''' + formatDateTime('mm/dd/yy',dxDT2.Date) + '''');

        SQL.Add('ORDER BY PK.ID DESC');
        Prepare;
        Open;
      end;
    end;
  finally
    freeAndNil(FrmPesquisa_Geral);
  end;

  if Showing then
  DBGConsulta.SetFocus;
end;

procedure Tfrmctr_prg.SINovoClick(Sender: TObject);
begin
  siARO.Tag  := 0;
  frmven_prg := tfrmven_prg.Create(Self);
  frmven_prg.Show;
end;

procedure Tfrmctr_prg.siAROClick(Sender: TObject);
begin
  siARO.Tag  := 1;
  frmven_prg := tfrmven_prg.Create(Self,CadastroIDPK.AsInteger,CadastroDEPK.AsString,CadastroIDEV.AsInteger,1);
  frmven_prg.Show;
end;

procedure Tfrmctr_prg.siCROClick(Sender: TObject);
begin
  if oYesNo(handle,'Cancelar Programação No.: '+CadastroDEPK.AsString+' ?') = mrno then
     Abort;

  try
    TFrmProduto_Devolucao_Cancelamento._ExecForm(Self,FrmProduto_Devolucao_Cancelamento,false,fsNormal);
  finally
    if not FrmProduto_Devolucao_Cancelamento.Editado then
       Abort;

    if oEmpty(FrmProduto_Devolucao_Cancelamento.IEMotivo.Text) then
       oException(DBGConsulta,'Motivo de cancelamento Incorreto ou não Informado !');

    try
      oOTransact(TEdicao);
      FKCadastro.First;
      while not FKCadastro.Eof do
      begin
        SPEdicao.StoredProcName := 'SP_PED_VEN_CAN';
        SPEdicao.Prepare;
        SPEdicao.ParamByName('AIDEP').Value      := RECParametros.EP_ID;
        SPEdicao.ParamByName('AIDCA').Value      := RECUsuarios.Id;
        SPEdicao.ParamByName('AIDED').Value      := RECUsuarios.Id;
        SPEdicao.ParamByName('AIDPK').Value      := CadastroId.AsInteger;
        SPEdicao.ParamByName('ACDPK').Value      := CadastroDEPK.AsString;
        SPEdicao.ParamByName('ADTPK').Value      := RECParametros.SHE_DATA;
        SPEdicao.ParamByName('ADTFK').Value      := CadastroDTPK.AsDateTime;
        SPEdicao.ParamByName('AIDCL').Value      := CadastroCD_ID.AsInteger;
        SPEdicao.ParamByName('AIDCV').Value      := CadastroCV_ID.AsInteger;
        SPEdicao.ParamByName('AIDCR').Value      := CadastroCR_ID.AsInteger;
        SPEdicao.ParamByName('AIDCP').Value      := FKCadastroIDCP.AsInteger;
        SPEdicao.ParamByName('AARTIGO').Value    := FKCadastroARTIGO.AsString;
        SPEdicao.ParamByName('APRODUTO').Value   := FKCadastroSKU.AsString;
        SPEdicao.ParamByName('ADESCRICAO').Value := FKCadastroDECP.AsString;
        SPEdicao.ParamByName('ACOR').Value       := Trim(LeftStr(FKCadastroDGCP.AsString,30));
        SPEdicao.ParamByName('AUCOM').Value      := FKCadastroUCOM.AsString;
        SPEdicao.ParamByName('AQUANTIDADE').Value      := FKCadastroQTDE.AsFloat;
        SPEdicao.ParamByName('AROLO').Value      := FKCadastroQTRL.AsInteger;
        SPEdicao.ParamByName('AVUPV').Value  := FKCadastroVPRC_COM.AsFloat;
        SPEdicao.ParamByName('AMOTIVO').Value    := FrmProduto_Devolucao_Cancelamento.IEMotivo.Text;
        SPEdicao.ParamByName('AINFADCAD').Value  := FrmProduto_Devolucao_Cancelamento.EMINFADCAD.Text;
        SPEdicao.ExecProc;

        FKCadastro.Next;
      end;

      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['ped_prg_cab']);
        SQL.Add('SET   ROM_STA  = 1,');
        SQL.Add('      ROM_STFI = ''CANCELADO'',');
        SQL.Add('      ROM_DCAN = ''' + FormatDateTime('mm/dd/yy',RECParametros.SHE_DATA) + ''',');
        SQL.Add('      ROM_TCAN = ''' + FrmProduto_Devolucao_Cancelamento.IEMotivo.Text   + ''',');
        SQL.Add('      ROM_OBSC = ''' + FrmProduto_Devolucao_Cancelamento.EMINFADCAD.Text + '''' );
        SQL.Add('WHERE ID = '''+CadastroId.AsString+'''');
        ExecQuery;
      end;

      oCTransact(TEdicao);
      oAviso(handle,'Programação Cancelada com Sucesso !');
    except
      on E: Exception do
      begin
        TEdicao.Rollback;
        oException(Nil,'Falha ao tentar cancelar programação !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  end;
end;

procedure Tfrmctr_prg.SIFIMClick(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
  inherited;
  if oYesNo(handle,'Finalizar Programação No '+CadastroDEPK.AsString+' ?') = mrno then
     Abort;

  ClickedOK := InputQuery('Finalização de Programação', 'Motivo', NewString);
  if not ClickedOK then
     Abort;

  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_prg_cab']);
      SQL.Add('SET   ROM_DBAI = CURRENT_DATE, ');
      SQL.Add('      ROM_STFI = ''FINALIZADO''');
      SQL.Add('WHERE ID       = '''+CadastroId.AsString+'''');
      ExecQuery;
    end;

    oCTransact(TEdicao);
    oAviso(handle,'Programação Finalizada com Sucesso !');
  except
    on E: Exception do
    begin
      TEdicao.Rollback;
      oException(Nil,'Falha ao tentar finalizar programação !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;
end;

procedure Tfrmctr_prg.dtscadastroDataChange(Sender: TObject;
  Field: TField);
var
  PosCount: Word;
begin
  SIARO.Enabled := (CadastroDEST.AsString = 'PENDENTE') and  ((RECUsuarios.Grupo <> 'VEN') or ((RECUsuarios.Grupo = 'VEN') and (RECUSuarios.ID = CadastroCV_ID.AsInteger)) or ((RECUsuarios.Grupo = 'VEN') and (RECUSuarios.ID <> CadastroCV_ID.AsInteger) ));
  SICRO.Enabled := (CadastroDEST.AsString = 'PENDENTE') and  ((RECUsuarios.Grupo <> 'VEN') or ((RECUsuarios.Grupo = 'VEN') and (RECUSuarios.ID = CadastroCV_ID.AsInteger)) or ((RECUsuarios.Grupo = 'VEN') and (RECUSuarios.ID <> CadastroCV_ID.AsInteger) ));
  SIPED.Enabled := (CadastroDEST.AsString = 'PENDENTE') and  ((RECUsuarios.Grupo <> 'VEN') or ((RECUsuarios.Grupo = 'VEN') and (RECUSuarios.ID = CadastroCV_ID.AsInteger)) or ((RECUsuarios.Grupo = 'VEN') and (RECUSuarios.ID <> CadastroCV_ID.AsInteger) ));
  SIFIM.Enabled := (CadastroDEST.AsString = 'PENDENTE') and  ((RECUsuarios.Grupo <> 'VEN') or ((RECUsuarios.Grupo = 'VEN') and (RECUSuarios.ID = CadastroCV_ID.AsInteger)) or ((RECUsuarios.Grupo = 'VEN') and (RECUSuarios.ID <> CadastroCV_ID.AsInteger) ));

  { Informações Adicionais }
            PosCount := oPosCount(''#$D'',CadastroINFADCAD.AsString);
  PNLINFADCAD.Height := IFThen((PosCount = 00) and (CadastroINFADCAD.AsString =  EmptyStr) ,00,
                        IFThen((PosCount = 00) and (CadastroINFADCAD.AsString <> EmptyStr) ,30,
                        IFThen((PosCount = 01),040,
                        IFThen((PosCount = 02),055,
                        IFThen((PosCount = 03),070,
                        IFThen((PosCount = 04),080,
                        IFThen((PosCount = 05),090,
                        IFThen((PosCount = 06),100,
                        IFThen((PosCount = 07),110,
                        IFThen((PosCount = 08),120,
                        IFThen((PosCount = 09),130,
                        IFThen((PosCount = 10),140,140))))))))))));
end;


procedure Tfrmctr_prg.DTSFKCadastroDataChange(Sender: TObject; Field: TField);
begin
  { Tabela de Preços }
  LAPRC_TAB_ACIMA_MIN.Caption := FormatFloat('R$ #,0.00',FKCadastroVPRC_PAD_INI.AsFloat);
  LAPRC_TAB_ACIMA_MAX.Caption := FormatFloat('R$ #,0.00',FKCadastroVPRC_PAD_FIM.AsFloat);
  if (FKCadastroVPRC_COM.AsFloat <> FKCadastroVPRC_PAD_INI.AsFloat) or (FKCadastroVPRC_COM.AsFloat <> FKCadastroVPRC_PAD_FIM.AsFloat) or (FKCadastroVPRC_PAD_INI.AsFloat <> FKCadastroVPRC_PAD_FIM.AsFloat) then
      PNLTAB_PRC.Height := 22 else
      PNLTAB_PRC.Height := 0;

  { Conteúdo }
  if Pos('COM',FKCadastroUCON.AsString) > 0 then
  begin
    PNLTAB_PRC.Caption := 'Contém '+FKCadastroUCON.AsString+'  ';
    PNLTAB_PRC.Height  := 22;
  end else
    PNLTAB_PRC.Caption := EmptyStr;

  { Fit Colunas }
  DBGFKCadastro.ApplyBestFit(DBGFKCadastroSKU);
end;

procedure Tfrmctr_prg.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGConsultaDEST.Index] = 'FINALIZADO' then
    begin
      AColor      := $00C4FFC4;
      AFont.Color := clWindowText;
    end else
    if ANode.Values[DBGConsultaDEST.Index] = 'FINALIZADO PARCIAL' then
    begin
      AColor      := $0071FF71;
      AFont.Color := clWindowText;
    end else
    if ANode.Values[DBGConsultaDEST.Index] = 'CANCELADO' then
    begin
      AFont.Color := clHighlightText;
      AColor      := $000024B3;
    end;

    { Pedido }
    if (AColumn = DBGConsultaDEPK) or (AColumn = DBGConsultaDTPK) or (AColumn = DBGConsultaHTPK) then
    begin
      AColor      := clGrayText;
      AFont.Color := clHighlightText;
    end;

    { B2B }
    if (AColumn = DBGConsultaAPI_B2B_DEPK) or (AColumn = DBGConsultaAPI_B2B_DTPK) or (AColumn = DBGConsultaAPI_B2B_HTPK) then
    begin
      AColor      := clGray;
      AFont.Color := clHighlightText;
    end;




    if AColumn = DBGConsultaSTA_NO_ABREV then
    begin
      AColor      := $00F4F4F4;
      AFont.Color := clWindowText;
    end;
  end;
end;

procedure Tfrmctr_prg.DBGFKCadastroCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if AColumn = DBGFKCadastroTCDE then
    begin
      AFont.Color := clWhite;
      AColor      := $00E1AD40;
    end;

    if ANode.Values[DBGFKCadastroSTFI.Index] <> Null then
    if POS('FIN',ANode.Values[DBGFKCadastroSTFI.Index]) > 0 then
    begin
      AFont.Color := clWindowText;
      AColor      := $00C4FFC4;
    end;
  end;

  if AColumn = DBGFKCadastroVPRC_COM then
     if ANode.Values[DBGFKCadastroVPRC_COM.Index] < ANode.Values[DBGFKCadastroVPRC_PAD_INI.Index] then
     begin
       AFont.Style := [fsBold];
       AFont.Color := clWhite;
       AColor      := $000024B3;
     end else
     if ANode.Values[DBGFKCadastroVPRC_COM.Index] > ANode.Values[DBGFKCadastroVPRC_PAD_FIM.Index] then
     begin
       AFont.Style := [fsBold];
       AFont.Color := clWhite;
       AColor      := $00E1AD40
     end else
     if ANode.Values[DBGFKCadastroVPRC_COM.Index] > ANode.Values[DBGFKCadastroVPRC_PAD_INI.Index] then
     begin
       AFont.Style := [fsBold];
       AFont.Color := clBlack;
       AColor      := $00C4FFC4;
     end;
end;

procedure Tfrmctr_prg.SIPEDClick(Sender: TObject);
          procedure _Pedido;
          var
            RECSP_PED_VEN_CAB: TRECPedidos;
            RECSP_PED_VEN_ITE: TRECPedidos;
            RECSP_CAD_PRO_EST: TRECPedidos;

            i: word;

            AQTDE,
            ATSDE,
            ATCDE: Double;
            AQTRL: Integer;
          begin
            oIRECPedidos(RECSP_PED_VEN_CAB); RECSP_PED_VEN_CAB.ASPEdicao := SPEdicao;
            oIRECPedidos(RECSP_PED_VEN_ITE); RECSP_PED_VEN_ITE.ASPEdicao := SPEdicao;
            oIRECPedidos(RECSP_CAD_PRO_EST); RECSP_CAD_PRO_EST.ASPEdicao := SPEdicao;

            AQTDE := 0;
            AQTRL := 0;
            ATSDE := 0;
            ATCDE := 0;

            i := 0;

            { Sumário }
            try
              FKCadastro.DisableControls;
              FKCadastro.First;
              while not FKCadastro.Eof do
              begin
                if DBGFKCadastro.SelectedCount > 0 then
                begin
                  if i > PRED(DBGFKCadastro.SelectedCount) then
                         Break;

                  FKCadastro.GotoBookmark(Pointer(DBGFKCadastro.SelectedRows[i]));
                  inc(i);
                end;

                if FKCadastroQTDE.AsFloat = 0 then
                   oException(Nil,'Quantidade não Informada !'+#13+
                                  'Item '+FKCadastroITEM.AsString+' - '+FKCadastroSKU.AsString+'.');

                if FKCadastroVPRC_COM.AsFloat = 0 then
                   oException(Nil,'Preço Unitário não Informado !'+#13+
                                  'Item '+FKCadastroITEM.AsString+' - '+FKCadastroSKU.AsString+'.');

                AQTDE := AQTDE + FKCadastroQTDE.AsFloat;
                AQTRL := AQTRL + FKCadastroQTRL.AsInteger;

                ATSDE := ATSDE + FKCadastroTCDE.AsFloat;
                ATCDE := ATCDE + FKCadastroTCDE.AsFloat;

                FKCadastro.Next;
              end;
              FKCadastro.First;
              i := 0;

              if AQTDE = 0 then
                 oException(DBGConsulta,'Itens do Pedido não Selecionados !');

              if AQTDE < CadastroQTDE.AsFloat then
                 if oYesNo(Handle,'Total do pedido menor que o programado !' + #13 +
                                  'Gerar Parcial ?') = mrNo then
                    Abort;

              { Desconto Especial }
              with cad_cli_crd do
              begin
                Close;
                SelectSQL.Clear;
                SelectSQL.Add('SELECT * FROM CAD_CLI_CRD');
                SelectSQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID         +'''');
                SelectSQL.Add('AND    IDCD = '''+CadastroCD_ID.AsString+'''');
                Open;
              end;

              { Pedido }
              with RECSP_PED_VEN_CAB do
              begin
                IDPK := 0;
                DEPK := CadastroDEPK.AsString;
                DTPK := RECSP_PED_VEN_CAB.DTPK;

                CTNR := CadastroCTNR.AsString;
                CDCX := RECParametros.CDCX;

                IDCD := CadastroCD_ID.AsInteger;
                IDCV := CadastroCV_ID.AsInteger;
                IDCR := CadastroCR_ID.AsInteger;

                PK_QTDE := AQTDE;
                PK_QTRL := AQTRL;

                PK_TSDE := ATSDE;
                PK_PDSC := CadastroPDSC.AsFloat;
                PK_TCDE := PK_TSDE - (PK_TSDE * (CadastroPDSC.AsFloat/100)) - cad_cli_crdVDSC.AsFloat;
                PK_VDSC := PK_TSDE -  PK_TCDE;
                PK_VIPI := 0;

                if (PK_PDSC = 0) and (PK_VDSC > 0) then
                    PK_PDSC := RoundTO((PK_VDSC * 100) / PK_TCDE,-2);

                IDCT := CadastroCT_ID.AsInteger;
                MFRT := CadastroFRT_MODELO.AsInteger;
                CFRT := EmptyStr;
                VFRT := CadastroFRT_VFRT.AsFloat;
                PK_PSBR := CadastroFRT_PSBR.AsFloat;
                PK_PSLQ := CadastroFRT_PSLQ.AsFloat;

                IDFK := 0;
                DEFK := EmptyStr;
                DTFK := 0;

                PED_CDPD := 0;
                STPD := CadastroTPD_NO.AsString;

                CDCO := 0;
                STCO := CadastroTCO_NO.AsString;
                TPCO := 1;
                CDPG := CadastroPRZ_ID.AsInteger;

                PK_CDST := 0;
                PK_DEST := RETORNA_STFI;

                INFADCAD := CadastroINFADCAD.AsString;

                if cad_cli_crdVDSC.AsFloat > 0 then
                begin
                  INFADCAD := INFADCAD + #13 + 'CAMPANHA CUPOM 50' + #13 + 'DESCONTO PROMOCIONAL NO VALOR DE R$ 50,00 !!!';

                  cad_cli_crd.Edit;
                  cad_cli_crdVDSC.Value := 0;
                  cad_cli_crd.Post;
                end;

                oSP_PED_VEN_CAB(RECSP_PED_VEN_CAB);
              end;

              { Itens da Programação }
              while not FKCadastro.Eof do
              begin
                if DBGFKCadastro.SelectedCount > 0 then
                begin
                  if i > PRED(DBGFKCadastro.SelectedCount) then
                         Break;

                  FKCadastro.GotoBookmark(Pointer(DBGFKCadastro.SelectedRows[i]));
                  inc(i);
                end;

                with RECSP_PED_VEN_ITE do
                begin
                  IDFK := 0;

                  IDPK := RECSP_PED_VEN_CAB.IDPK;
                  ITEM := FKCadastroITEM.AsInteger;

                  IDCP := FKCadastroIDCP.AsInteger;
                  CEAN := FKCadastroCEAN.AsString;

                  DECP := FKCadastroDECP.AsString;
                  DGCP := FKCadastroDGCP.AsString;

                  UCOM := FKCadastroUCOM.AsString;
                  UCON := FKCadastroUCON.AsString;

                  QTDE := FKCadastroQTDE.AsFloat;
                  QTRL := FKCadastroQTRL.AsInteger;

                  VPRC_PAD_INI := FKCadastroVPRC_PAD_INI.AsFloat;
                  VPRC_PAD_FIM := FKCadastroVPRC_PAD_FIM.AsFloat;

                  VPRC_PAD := FKCadastroVPRC_PAD.AsFloat;
                  PDSC     := FKCadastroPDSC.AsFloat;
                  VDSC     := FKCadastroVDSC.AsFloat;
                  VPRC_COM := FKCadastroVPRC_COM.AsFloat;

                  TSDE := FKCadastroTSDE.AsFloat;
                  TCDE := FKCadastroTCDE.AsFloat;

                  NCM  := FKCadastroNCM.AsString;
                  PIPI := FKCadastroPIPI.AsFloat;
                  VIPI := FKCadastroVIPI.AsFloat;

                  PSBR := FKCadastroPSBR.AsFloat;
                  PSLQ := FKCadastroPSLQ.AsFloat;

                  oSP_PED_VEN_ITE(RECSP_PED_VEN_ITE);
                end;

                with RECSP_CAD_PRO_EST do
                begin
                  FLAG := 0;
                  IDEP := RECParametros.EP_ID;
                  IDPK := RECSP_PED_VEN_CAB.IDPK;  // Id Cabeçalho
                  IDFK := RECSP_PED_VEN_ITE.IDFK;  // Id Item

                  DEPK := RECSP_PED_VEN_CAB.DEPK;
                  DTPK := RECSP_PED_VEN_CAB.DTPK;
                  CTNR := RECSP_PED_VEN_CAB.CTNR;

                  IDCD := RECSP_PED_VEN_CAB.IDCD;
                  IDCV := RECSP_PED_VEN_CAB.IDCV;
                  IDCR := RECSP_PED_VEN_CAB.IDCR;

                  ITEM := RECSP_PED_VEN_ITE.ITEM;
                  IDCP := RECSP_PED_VEN_ITE.IDCP;
                  CEAN := RECSP_PED_VEN_ITE.CEAN;

                  DECP := RECSP_PED_VEN_ITE.DECP;
                  DGCP := RECSP_PED_VEN_ITE.DGCP;
                  
                  UCOM := RECSP_PED_VEN_ITE.UCOM;
                  UCON := RECSP_PED_VEN_ITE.UCON;

                  QTDE := RECSP_PED_VEN_ITE.QTDE;
                  QTRL := RECSP_PED_VEN_ITE.QTRL;

                  VPRC_PAD_INI := RECSP_PED_VEN_ITE.VPRC_PAD_INI;
                  VPRC_PAD_FIM := RECSP_PED_VEN_ITE.VPRC_PAD_FIM;

                  VPRC_PAD := RECSP_PED_VEN_ITE.VPRC_PAD;
                  PDSC     := RECSP_PED_VEN_ITE.PDSC;
                  VDSC     := RECSP_PED_VEN_ITE.VDSC;
                  VPRC_COM := RECSP_PED_VEN_ITE.VPRC_COM;

                  TSDE := RECSP_PED_VEN_ITE.TSDE;
                  TCDE := RECSP_PED_VEN_ITE.TCDE;

                  NCM  := RECSP_PED_VEN_ITE.NCM ;
                  PIPI := RECSP_PED_VEN_ITE.PIPI;
                  VIPI := RECSP_PED_VEN_ITE.VIPI;

                  PSBR := RECSP_PED_VEN_ITE.PSBR;
                  PSLQ := RECSP_PED_VEN_ITE.PSLQ;

                  INFADCAD := RECSP_PED_VEN_CAB.INFADCAD;

                  oSP_CAD_PRO_EST_RES(RECSP_CAD_PRO_EST);
                end;

                with SQLEdicao do
                begin
                  if FKCadastroCTNR.AsString <> EmptyStr then
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add('DELETE FROM CAD_PRO_RES');
                    SQL.Add('WHERE  IDEP = ''' + RECParametros.EP_ID        + '''');
                    SQL.Add('AND    IDPK = ''' + RECSP_PED_VEN_CAB.IDPK  + '''');
                    SQL.Add('AND    IDCP = ''' + FKCadastroIDCP.AsString + '''');
                    ExecQuery;
                  end;
                  
                  Close;
                  SQL.Clear;
                  SQL.Add('UPDATE '+SLPrincipal.Values['ped_prg_ite']);
                  SQL.Add('SET   REST = ''FIM''');
                  SQL.Add('WHERE IDEP = ''' + FKCadastroIDEP.AsString + '''');
                  SQL.Add('AND   ID   = ''' + FKCadastroID.AsString   + '''');
                  ExecQuery;
                end;

                FKCadastro.Next;
              end;
            finally
              FKCadastro.EnableControls;
            end;

            with SQLEdicao do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT ID FROM ' + SLPrincipal.Values['ped_ven_cab']);
              SQL.Add('WHERE  ID = ''' + RECSP_PED_VEN_CAB.IDPK + '''');
              ExecQuery;
              if Current.Vars[0].AsInteger = 0 then
                 oException(DBGConsulta,'Falha ao tentar gerar pedido da programação nº ' + CadastroDEPK.AsString + ' !');

              Close;
              SQL.Clear;
              SQL.Add('SELECT ID FROM '  + SLPrincipal.Values['ped_ven_ite']);
              SQL.Add('WHERE  IDPK = ''' + RECSP_PED_VEN_CAB.IDPK + '''');
              ExecQuery;
              if Current.Vars[0].AsInteger = 0 then
                 oException(DBGConsulta,'Falha ao tentar gerar os itens de vendas da programação nº ' + CadastroDEPK.AsString + ' !');

              Close;
              SQL.Clear;
              SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
              SQL.Add('SET     ROM_CDPR     = '''+CadastroId.AsString       +''',');
              SQL.Add('        API_B2B_DEPK = '''+CadastroAPI_B2B_DEPK.AsString+''',');
              SQL.Add('        API_B2B_DTPK = '''+FormatDateTime('mm/dd/yy hh:mm',CadastroAPI_B2B_DTPK.AsDateTime)+'''');
              SQL.Add('WHERE   ID           = '''+RECSP_PED_VEN_CAB.IDPK+'''');
              ExecQuery;

              Close;
              SQL.Clear;
              SQL.Add('UPDATE '+SLPrincipal.Values['ped_prg_cab']);
              SQL.Add('SET     ROM_STFI = '''+IFThen(AQTDE  >= CadastroQTDE.AsFloat,'FINALIZADO','FINALIZADO PARCIAL')+'''');
              SQL.Add('WHERE   ID = '''+CadastroId.AsString+'''');
              ExecQuery;
            end;
          end;
var
  i: Word;
begin
  if oYesNo(handle,'Gerar Venda(s) ?') = mrNo then
     Abort;

  try

    if DBGConsulta.SelectedCount > 0 then
       try
         oOTransact(TEdicao);

         for i := 0 to PRED(DBGConsulta.SelectedCount) do
         begin
           Cadastro.GotoBookmark(Pointer(DBGConsulta.SelectedRows[i]));
           _Pedido;
         end;

         oCTransact(TEdicao);
         oAviso(handle,'Pedido(s) de Vendas Gerado(s) com Sucesso !');
       except
         on E: Exception do
         begin
           oCTransact(TEdicao,ltRollback);

           oException(Nil,'Falha ao tentar gerar pedido de venda !' + #13 + #13+

                          'Programação Nº ' + CadastroDEPK.AsString + #13 +
                                              CadastroCD_NO.AsString + #13 +
                                              CadastroCR_NO.AsString + #13 + #13+

                          IFThen(Pos('aborted',E.Message) > 0,'Abortado pelo Usuário',E.Message) + '.');
         end;
       end;
  finally
    DBGFKCadastro.ClearSelection;
    DBGFKCadastro.FullRefresh;
  end;
end;

function Tfrmctr_prg.RETORNA_STFI: string;
var
  stfi: string;
begin
  stfi := uFIN_BLQ(CadastroTCO_NO.AsString,'1',CadastroCD_ID.AsString);

  if stfi  = EmptyStr then
     stfi := uLimiteVenda(CadastroTCO_NO.AsString,'1',CadastroCD_ID.AsString,CadastroTCDE.AsFloat);
     stfi := IFThen(stfi = EmptyStr,'SEPARANDO',stfi);

  result  := stfi;
end;

procedure Tfrmctr_prg.CadastroAfterOpen(DataSet: TDataSet);
begin
  if FKCadastro.State = dsInactive then FKCadastro.Open;

  if Showing then
  begin
    DBGConsulta.SetFocus;
    DBGConsultaDEPK.Field.FocusControl;
  end;
end;

procedure Tfrmctr_prg.FKCadastroAfterOpen(DataSet: TDataSet);
begin
  { Catálogo }
  if CAD_PRO_IMG.State = dsInactive then
  begin
    CAD_PRO_IMG.Prepare;
    CAD_PRO_IMG.Open;
  end;
end;

procedure Tfrmctr_prg.SIClientesClick(Sender: TObject);
begin
  frmcad_cli_edi     := TFrmcad_cli_edi.Create(Self);
  frmcad_cli_edi.Tag := 1;
  frmcad_cli_edi.IDCliente := IntToStr(CadastroCD_ID.AsInteger);
  try frmcad_cli_edi.ShowModal;
  finally
    if frmcad_cli_edi.REC_SHE_DEF.Edited then
    begin
      Cadastro.Edit;
      CadastroCV_ID.Value := StrToInt(frmcad_cli_edi.IEIDCV.Text);
      CadastroCR_ID.Value := StrToInt(frmcad_cli_edi.IEIDCR.Text);
      Cadastro.Post;
    end;
    FreeAndNil(frmcad_cli_edi);
  end;
end;

procedure Tfrmctr_prg.CadastroBeforeOpen(DataSet: TDataSet);
begin
  DBGConsultaTPD_NO.Visible     := False;
  DBGConsultaTCO_NO_PRZ.Visible := False;
  DBGConsultaCR_NO.Visible      := False;
  DBGConsultaTSDE.Visible       := False;
  DBGConsultaVDSC.Visible       := False;
end;

procedure Tfrmctr_prg.CadastroAfterScroll(DataSet: TDataSet);
begin
  if CadastroTPD_NO.AsString <> RECParametros.PED_TPD_NO then
  DBGConsultaTPD_NO.Visible := True;

  if (Pos('SEM',CadastroTCO_NO_PRZ.AsString) = 0) and (Pos('VISTA',CadastroTCO_NO_PRZ.AsString) = 0) then
  DBGConsultaTCO_NO_PRZ.Visible := True;

  if CadastroCR_NO.AsString <> RECParametros.CR_NO then
  DBGConsultaCR_NO.Visible := True;

  if CadastroTSDE.AsFloat <> CadastroTCDE.AsFloat then
  begin
    DBGConsultaTSDE.Visible := True;
    DBGConsultaVDSC.Visible := True;
  end;
end;

procedure Tfrmctr_prg.DTSCAD_PRO_IMGDataChange(Sender: TObject;
  Field: TField);
begin
  if Cadastro.State <> dsInactive then
  begin
    PNLCAD_PRO_IMG_PIX.Caption := _oLoadJPG(CAD_PRO_IMGIMG_ID,CAD_PRO_IMGIMG_PAD,IMGCAD_PRO_IMG_PAD,True); { True - força visualização }

    DBCAD_PRO_IMG_ILA1.Hint := CAD_PRO_IMGD_ILA_INS1.AsString;
    DBCAD_PRO_IMG_ILA2.Hint := CAD_PRO_IMGD_ILA_INS2.AsString;
    DBCAD_PRO_IMG_ILA3.Hint := CAD_PRO_IMGD_ILA_INS3.AsString;
    DBCAD_PRO_IMG_ILA4.Hint := CAD_PRO_IMGD_ILA_INS4.AsString;
    DBCAD_PRO_IMG_ILA5.Hint := CAD_PRO_IMGD_ILA_INS5.AsString;
    DBCAD_PRO_IMG_ILA6.Hint := CAD_PRO_IMGD_ILA_INS6.AsString;
    DBCAD_PRO_IMG_ILA7.Hint := CAD_PRO_IMGD_ILA_INS7.AsString;
    DBCAD_PRO_IMG_ILA8.Hint := CAD_PRO_IMGD_ILA_INS8.AsString;

    BVCAD_PRO_IMG_ILA1.Hint := DBCAD_PRO_IMG_ILA1.Hint;
    BVCAD_PRO_IMG_ILA2.Hint := DBCAD_PRO_IMG_ILA2.Hint;
    BVCAD_PRO_IMG_ILA3.Hint := DBCAD_PRO_IMG_ILA3.Hint;
    BVCAD_PRO_IMG_ILA4.Hint := DBCAD_PRO_IMG_ILA4.Hint;
    BVCAD_PRO_IMG_ILA5.Hint := DBCAD_PRO_IMG_ILA5.Hint;
    BVCAD_PRO_IMG_ILA6.Hint := DBCAD_PRO_IMG_ILA6.Hint;
    BVCAD_PRO_IMG_ILA7.Hint := DBCAD_PRO_IMG_ILA7.Hint;
    BVCAD_PRO_IMG_ILA8.Hint := DBCAD_PRO_IMG_ILA8.Hint;
  end;
end;

end.
