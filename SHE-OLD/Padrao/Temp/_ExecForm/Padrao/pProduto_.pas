unit pProduto_;

interface

uses 
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBStoredProc, IBEvents, IBDatabase, DB, math, StrUtils,
  IBCustomDataSet, IBQuery, ExtCtrls, StdCtrls, ComCtrls, ImgList,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  DBCtrls, Grids, DBGrids, rxSpeedbar, IBSQL, ActnList, cxGraphics,
  cxControls, dxStatusBar, rxAnimate, rxGIFCtrl, dxsbar, dxDockControl,
  dxBar, dxBarExtItems, dxDBTLCl, dxGrClms, dxDockPanel, dxPageControl,
  IDGlobal;

type
  TFrmProduto_ = class(TForm)
    ALPrincipal: TActionList;
    ACTRefresh: TAction;
    ACTEveRegister: TAction;
    ACTEveExecute: TAction;
    ACTConsulta: TAction;
    ACTPesquisa: TAction;
    ACTRelatorios: TAction;
    ACTMEAppend: TAction;
    ACTMEEdit: TAction;
    ACTMEDelete: TAction;
    ACTMEPost: TAction;
    ACTMECancel: TAction;
    ACTMPAppend: TAction;
    ACTMPEdit: TAction;
    ACTMPDelete: TAction;
    ACTMPPost: TAction;
    ACTMPValidate: TAction;
    ACTMPCancel: TAction;
    ACTEveExpress: TAction;
    ACTProgressBar: TAction;
    ACTDashboards: TAction;
    ACTCheckConstraints: TAction;
    ACTCheckErrors: TAction;
    ACTSaida: TAction;
    ACTEdicao: TAction;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    SQLEvent: TIBSQL;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    PNLSBRodape: TPanel;
    SBRodape: TdxStatusBar;
    PNLSBRodapeSynchronize: TPanel;
    PNLSynchronize: TPanel;
    PNLGF: TPanel;
    GFSynchronize: TRxGIFAnimator;
    dxStatusBar1: TdxStatusBar;
    PCPrincipal: TdxPageControl;
    TSPrincipal: TdxTabSheet;
    PNLPrincipal: TPanel;
    DSConsulta: TdxDockSite;
    dxLayoutDockSite3: TdxLayoutDockSite;
    dxLayoutDockSite2: TdxLayoutDockSite;
    DPEdicao: TdxDockPanel;
    SBEdicao: TdxSideBar;
    DPConsulta: TdxDockPanel;
    PNLConsulta: TPanel;
    DBGConsulta: TdxDBGrid;
    DBGConsultaC_ID: TdxDBGridColumn;
    PNLConsulta_Produtos: TPanel;
    PNLEstoque: TPanel;
    GBPosicao: TGroupBox;
    DBGPosicao: TdxDBGrid;
    DBGPosicaoEA_QTDE: TdxDBGridCurrencyColumn;
    DBGPosicaoEA_QTRL: TdxDBGridMaskColumn;
    DBGPosicaoEB_QTDE: TdxDBGridCurrencyColumn;
    DBGPosicaoEB_QTRL: TdxDBGridMaskColumn;
    DBGPosicaoEC_QTDE: TdxDBGridCurrencyColumn;
    DBGPosicaoEC_QTRL: TdxDBGridMaskColumn;
    DBGPosicaoEPI_QTDE: TdxDBGridCurrencyColumn;
    DBGPosicaoEPI_QTRL: TdxDBGridMaskColumn;
    GBEstoque: TGroupBox;
    DBGProdutos: TdxDBGrid;
    DBGProdutosRGCP: TdxDBGridMaskColumn;
    DBGProdutosDGCP: TdxDBGridMaskColumn;
    DBGProdutosEPE_QTDE: TdxDBGridCurrencyColumn;
    DBGProdutosEPE_QTRL: TdxDBGridMaskColumn;
    DBGProdutosEEP_QTDE: TdxDBGridCurrencyColumn;
    DBGProdutosEEP_QTRL: TdxDBGridMaskColumn;
    DBGProdutosDTEK: TdxDBGridDateColumn;
    DBGProdutosREST: TdxDBGridMaskColumn;
    DBGProdutosDEST: TdxDBGridMaskColumn;
    DBGProdutosCEAN: TdxDBGridMaskColumn;
    DBGProdutosCDCF: TdxDBGridMaskColumn;
    DBGProdutosCEANCF: TdxDBGridMaskColumn;
    PNLMovimentos: TPanel;
    GBMovimentos: TGroupBox;
    PCMOV: TdxPageControl;
    TSLF: TdxTabSheet;
    DBGLF: TdxDBGrid;
    DBGLFSKU: TdxDBGridMaskColumn;
    DBGLFDGCP: TdxDBGridColumn;
    DBGLFQTDE: TdxDBGridColumn;
    DBGLFCDET: TdxDBGridColumn;
    DBGLFCTNR: TdxDBGridMaskColumn;
    DBGLFLOTE: TdxDBGridMaskColumn;
    DBGLFCDRO: TdxDBGridColumn;
    DBGLFDTET: TdxDBGridDateColumn;
    DBGLFD_DEOP: TdxDBGridMaskColumn;
    DBGLFDETP: TdxDBGridMaskColumn;
    DBGLFITDF: TdxDBGridMaskColumn;
    DBGLFD_DEDF: TdxDBGridMaskColumn;
    DBGLFDECE: TdxDBGridColumn;
    DBGLFLGET: TdxDBGridMaskColumn;
    DBGLFDEPD: TdxDBGridMaskColumn;
    DBGLFDTPD: TdxDBGridDateColumn;
    DBGLFCDNF: TdxDBGridColumn;
    DBGLFDTNF: TdxDBGridDateColumn;
    DBGLFCDI: TdxDBGridCheckColumn;
    PNLLF_INFADCAD: TPanel;
    DBLF_INFDCAD: TdxDBMemo;
    TSPR: TdxTabSheet;
    DBGPR: TdxDBGrid;
    DBGPRSKU: TdxDBGridMaskColumn;
    DBGPRDGCP: TdxDBGridMaskColumn;
    DBGPRQTDE: TdxDBGridCurrencyColumn;
    DBGPRQTRL: TdxDBGridMaskColumn;
    DBGPRDEPK: TdxDBGridMaskColumn;
    DBGPRD_DTCA: TdxDBGridDateColumn;
    DBGPRDECD: TdxDBGridMaskColumn;
    DBGPRDECV: TdxDBGridMaskColumn;
    DBGPRDECR: TdxDBGridMaskColumn;
    TSPS: TdxTabSheet;
    DBGPS: TdxDBGrid;
    DBGPSPRODUTO: TdxDBGridMaskColumn;
    DBGPSDGCP: TdxDBGridMaskColumn;
    DBGPSQTDE: TdxDBGridCurrencyColumn;
    DBGPSQTRL: TdxDBGridMaskColumn;
    DBGPSCDET: TdxDBGridMaskColumn;
    DBGPSDTCA: TdxDBGridDateColumn;
    DBGPSDESP: TdxDBGridMaskColumn;
    DBGPSDEPS: TdxDBGridMaskColumn;
    DBGPSDTPV: TdxDBGridDateColumn;
    DBGPSCLPS: TdxDBGridMaskColumn;
    DBGPSCVPS: TdxDBGridMaskColumn;
    DBGPSCRPS: TdxDBGridMaskColumn;
    TSPP: TdxTabSheet;
    DBGPP: TdxDBGrid;
    DBGPPSKU: TdxDBGridMaskColumn;
    DBGPPDGCP: TdxDBGridMaskColumn;
    DBGPPQTDE: TdxDBGridMaskColumn;
    DBGPPQTRL: TdxDBGridMaskColumn;
    DBGPPCTNR: TdxDBGridPickColumn;
    DBGPPCTNR_QTDE: TdxDBGridMaskColumn;
    DBGPPCTNR_QTRL: TdxDBGridMaskColumn;
    DBGPPCTNR_QTSD: TdxDBGridMaskColumn;
    DBGPPDEPK: TdxDBGridMaskColumn;
    DBGPPD_DTCA: TdxDBGridMaskColumn;
    DBGPPDECD: TdxDBGridMaskColumn;
    DBGPPUF: TdxDBGridMaskColumn;
    DBGPPDECV: TdxDBGridMaskColumn;
    DBGPPDECR: TdxDBGridMaskColumn;
    TSCO: TdxTabSheet;
    PCCO: TdxPageControl;
    TSCOA: TdxTabSheet;
    DBGPCA: TdxDBGrid;
    DBGPCAPRODUTO: TdxDBGridMaskColumn;
    DBGPCADGCP: TdxDBGridMaskColumn;
    DBGPCAQTDE: TdxDBGridCurrencyColumn;
    DBGPCAQTRL: TdxDBGridMaskColumn;
    DBGPCACTNR: TdxDBGridMaskColumn;
    DBGPCADEPC: TdxDBGridMaskColumn;
    DBGPCADTCA: TdxDBGridDateColumn;
    DBGPCADTDE: TdxDBGridDateColumn;
    DBGPCADTPR: TdxDBGridDateColumn;
    DBGPCADEEP: TdxDBGridMaskColumn;
    DBGPCAFOPC: TdxDBGridMaskColumn;
    DBGPCACCPC: TdxDBGridMaskColumn;
    DBGPCASTFI: TdxDBGridMaskColumn;
    TSCOF: TdxTabSheet;
    DBGPCF: TdxDBGrid;
    DBGPCFPRODUTO: TdxDBGridMaskColumn;
    DBGPCFDGCP: TdxDBGridMaskColumn;
    DBGPCFQTDE: TdxDBGridCurrencyColumn;
    DBGPCFQTRL: TdxDBGridMaskColumn;
    DBGPCFQTFI: TdxDBGridCurrencyColumn;
    DBGPCFRLFI: TdxDBGridMaskColumn;
    DBGPCFCTNR: TdxDBGridMaskColumn;
    DBGPCFDEPC: TdxDBGridMaskColumn;
    DBGPCFDTCA: TdxDBGridDateColumn;
    DBGPCFDTDE: TdxDBGridDateColumn;
    DBGPCFDTBX: TdxDBGridDateColumn;
    DBGPCFFOPC: TdxDBGridMaskColumn;
    DBGPCFCCPC: TdxDBGridMaskColumn;
    DBGPCFSTFI: TdxDBGridMaskColumn;
    TSRV: TdxTabSheet;
    DBGRV: TdxDBGrid;
    DBGRVSKU: TdxDBGridMaskColumn;
    DBGRVDGCP: TdxDBGridColumn;
    DBGRVROLO: TdxDBGridColumn;
    DBGRVQTDE: TdxDBGridColumn;
    DBGRVCDET: TdxDBGridColumn;
    DBGRVDETP: TdxDBGridMaskColumn;
    DBGRVDEDF: TdxDBGridColumn;
    DBGRVDECA: TdxDBGridColumn;
    DBGRVDTCA: TdxDBGridColumn;
    DBGRVDEPK: TdxDBGridColumn;
    DBGRVLOTE: TdxDBGridColumn;
    DBGRVCTNR: TdxDBGridColumn;
    DBGRVDEPV: TdxDBGridMaskColumn;
    DBGRVDTPV: TdxDBGridDateColumn;
    DBGRVDECL: TdxDBGridMaskColumn;
    DBGRVDECV: TdxDBGridMaskColumn;
    DBGRVDECR: TdxDBGridMaskColumn;
    DBGRVDEEP: TdxDBGridColumn;
    PNLINFADETQ: TPanel;
    DBINFADETQ: TdxDBMemo;
    TSLE: TdxTabSheet;
    PNLINFADETQLE: TPanel;
    DBINFADETQLE: TdxDBMemo;
    DBGLE: TdxDBGrid;
    DBGLED_SKU: TdxDBGridMaskColumn;
    DBGLEDGCP: TdxDBGridColumn;
    DBGLEQTDE: TdxDBGridColumn;
    DBGLEQTRL: TdxDBGridMaskColumn;
    DBGLECDET: TdxDBGridColumn;
    DBGLEIDPK: TdxDBGridColumn;
    DBGLECDRO: TdxDBGridColumn;
    DBGLEDTCA: TdxDBGridDateColumn;
    DBGLEDETP: TdxDBGridMaskColumn;
    DBGLEDEOP: TdxDBGridMaskColumn;
    DBGLECTNR: TdxDBGridMaskColumn;
    DBGLELOTE: TdxDBGridMaskColumn;
    DBGLEDEDF: TdxDBGridMaskColumn;
    DBGLEDECE: TdxDBGridColumn;
    DBGLELGCA: TdxDBGridMaskColumn;
    DBGLEDEPD: TdxDBGridMaskColumn;
    DBGLEDTPD: TdxDBGridDateColumn;
    DBGLECDNF: TdxDBGridColumn;
    DBGLEDTNF: TdxDBGridDateColumn;
    TSLS: TdxTabSheet;
    DBGLS: TdxDBGrid;
    DBGLSPRODUTO: TdxDBGridMaskColumn;
    DBGLSDGCP: TdxDBGridColumn;
    DBGLSQTDE: TdxDBGridMaskColumn;
    DBGLSQTRL: TdxDBGridMaskColumn;
    DBGLSCDET: TdxDBGridColumn;
    DBGLSCTNR: TdxDBGridMaskColumn;
    DBGLSLOTE: TdxDBGridMaskColumn;
    DBGLSDESP: TdxDBGridColumn;
    DBGLSDTSP: TdxDBGridColumn;
    DBGLSDERO: TdxDBGridMaskColumn;
    DBGLSDTEMI: TdxDBGridDateColumn;
    DBGLSUNIT: TdxDBGridMaskColumn;
    DBGLSFAVORECIDO: TdxDBGridMaskColumn;
    PNLINFADETQLS: TPanel;
    DBINFADETQLS: TdxDBMemo;
    PNLCabecalho: TPanel;
    PNLMAINTOP: TPanel;
    PNLCME: TPanel;
    GBArtigo: TGroupBox;
    DBGArtigos: TdxDBGrid;
    DBGArtigosARTIGO: TdxDBGridMaskColumn;
    DBGArtigosDECP: TdxDBGridMaskColumn;
    DBGArtigosDECF: TdxDBGridMaskColumn;
    DBGArtigosDEEP: TdxDBGridMaskColumn;
    DBGArtigosFIN_CAD_NO: TdxDBGridMaskColumn;
    DBGArtigosDECOL: TdxDBGridMaskColumn;
    DBGArtigosDESEG: TdxDBGridMaskColumn;
    DBGArtigosDEGRP: TdxDBGridMaskColumn;
    DBGArtigosDESGP: TdxDBGridMaskColumn;
    DBGArtigosDECAT: TdxDBGridMaskColumn;
    DBGArtigosD_DESCT: TdxDBGridMaskColumn;
    DBGArtigosFIN_EST_NO: TdxDBGridMaskColumn;
    DBGArtigosREST: TdxDBGridMaskColumn;
    PNLINFADCPL: TPanel;
    GBFicha: TGroupBox;
    DBGFicha: TdxDBGrid;
    DBGFichaNCM: TdxDBGridMaskColumn;
    DBGFichaPIPI: TdxDBGridMaskColumn;
    DBGFichaUCOM: TdxDBGridMaskColumn;
    DBGFichaUCON: TdxDBGridMaskColumn;
    DBGFichaPESO: TdxDBGridMaskColumn;
    DBGFichaPSCN: TdxDBGridMaskColumn;
    DBGFichaMETRO: TdxDBGridMaskColumn;
    DBGFichaGRAM: TdxDBGridMaskColumn;
    DBGFichaREND: TdxDBGridMaskColumn;
    DBGFichaLARU: TdxDBGridMaskColumn;
    DBGFichaLART: TdxDBGridMaskColumn;
    DBGFichaENCL: TdxDBGridMaskColumn;
    DBGFichaENCC: TdxDBGridMaskColumn;
    DBGFichaELAL: TdxDBGridMaskColumn;
    DBGFichaELAC: TdxDBGridMaskColumn;
    DBGFichaUVEN_MUL: TdxDBGridMaskColumn;
    DBGFichaUVEN_MIN: TdxDBGridMaskColumn;
    GBPRC: TGroupBox;
    DBGPRC: TdxDBGrid;
    DBGPRCVPRC_COM_NAC: TdxDBGridMaskColumn;
    DBGPRCVPRC_COM_IMP: TdxDBGridMaskColumn;
    DBGPRCVPRC_PAD: TdxDBGridMaskColumn;
    DBGPRCVPRC_PAD_PRZ: TdxDBGridMaskColumn;
    DBGPRCVPRC_PAD_PRO: TdxDBGridMaskColumn;
    DBGPRCVPRC_ATV: TdxDBGridMaskColumn;
    DBGPRCVPRC_ATV_PRZ: TdxDBGridMaskColumn;
    DBGPRCVPRC_ATV_PRO: TdxDBGridMaskColumn;
    DBGPRCVPRC_VAR: TdxDBGridMaskColumn;
    DBGPRCVPRC_VAR_PRZ: TdxDBGridMaskColumn;
    DBGPRCVPRC_VAR_PRO: TdxDBGridMaskColumn;
    DBGPRCVPRC_REP: TdxDBGridMaskColumn;
    DBGPRCVPRC_REP_PRZ: TdxDBGridMaskColumn;
    DBGPRCVPRC_REP_PRO: TdxDBGridMaskColumn;
    DBGPRCVPRC_LJV: TdxDBGridMaskColumn;
    DBGPRCPMKP_LJV: TdxDBGridMaskColumn;
    PNLINFADCAD: TPanel;
    BVInfadPed: TBevel;
    DBINFADCAD: TdxDBMemo;
    PCCatalogo: TdxPageControl;
    TSIMG_PAD: TdxTabSheet;
    PNLIMG_PIX: TPanel;
    PNLIMG_PAD: TPanel;
    PNLIMG_QRD: TPanel;
    IIMG_PAD: TImage;
    TSILA: TdxTabSheet;
    PNLIMG_ILA: TPanel;
    PNLILA_QRD: TPanel;
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
    QConsulta: TIBQuery;
    Consulta: TIBQuery;
    ConsultaC_ID: TLargeintField;
    DTSConsulta: TDataSource;
    ILEdicao: TImageList;
    ILMenu: TImageList;
    BMMain: TdxBarManager;
    BLBRefresh: TdxBarLargeButton;
    BLBPesquisa: TdxBarLargeButton;
    BLBRelatorios: TdxBarLargeButton;
    BLBSaida: TdxBarLargeButton;
    BSPesquisa: TdxBarStatic;
    BEPesquisa: TdxBarEdit;
    BLBProduto_Estoque: TdxBarLargeButton;
    BLBProduto_Estoque_Etiqueta: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    BLBAtivo: TdxBarLargeButton;
    BLBInativo: TdxBarLargeButton;
    BLBPreCadastro: TdxBarLargeButton;
    PMMain: TdxBarPopupMenu;
    DMMain: TdxDockingManager;
    SBSMain: TdxSideBarStore;
    SBSINovo: TdxStoredSideItem;
    SBSIAltera: TdxStoredSideItem;
    SBSIExclui: TdxStoredSideItem;
    Artigos: TIBQuery;
    ArtigosID: TIntegerField;
    ArtigosREST: TIBStringField;
    ArtigosIDAK: TLargeintField;
    ArtigosIDEP: TSmallintField;
    ArtigosDEEP: TIBStringField;
    ArtigosARTIGO: TIBStringField;
    ArtigosNCM: TIBStringField;
    ArtigosPIPI: TIBBCDField;
    ArtigosIDCF: TSmallintField;
    ArtigosDECP: TIBStringField;
    ArtigosDECF: TIBStringField;
    ArtigosUCOM: TIBStringField;
    ArtigosUCOM_LJV: TIBStringField;
    ArtigosUTRIB: TIBStringField;
    ArtigosUCON: TIBStringField;
    ArtigosUVEN_MIN: TSmallintField;
    ArtigosUVEN_MUL: TSmallintField;
    ArtigosPESO: TIBBCDField;
    ArtigosPSCN: TIBBCDField;
    ArtigosMETRO: TIBBCDField;
    ArtigosREND: TIBBCDField;
    ArtigosGRAM: TIBBCDField;
    ArtigosLARU: TIBBCDField;
    ArtigosLART: TIBBCDField;
    ArtigosELAL: TIBBCDField;
    ArtigosELAC: TIBBCDField;
    ArtigosENCL: TIBBCDField;
    ArtigosENCC: TIBBCDField;
    ArtigosDECOL: TIBStringField;
    ArtigosDESEG: TIBStringField;
    ArtigosDEGRP: TIBStringField;
    ArtigosDESGP: TIBStringField;
    ArtigosDECAT: TIBStringField;
    ArtigosD_DESCT: TIBStringField;
    ArtigosFIN_CAD_NO: TIBStringField;
    ArtigosFIN_EST_NO: TIBStringField;
    ArtigosD_ORIG: TIBStringField;
    ArtigosINFADCAD: TIBStringField;
    DTSArtigos: TDataSource;
    PMPesquisa: TdxBarPopupMenu;
    Produtos: TIBQuery;
    ProdutosID: TIntegerField;
    ProdutosIDCP: TIntegerField;
    ProdutosCDST: TSmallintField;
    ProdutosREST: TIBStringField;
    ProdutosDEST: TIBStringField;
    ProdutosDTEK: TDateTimeField;
    ProdutosSKU: TIBStringField;
    ProdutosCEAN: TIBStringField;
    ProdutosRGCP: TIBStringField;
    ProdutosDGCP: TIBStringField;
    ProdutosSISTEMA: TIBStringField;
    ProdutosESCALA: TIBStringField;
    ProdutosCDCF: TIBStringField;
    ProdutosCEANCF: TIBStringField;
    ProdutosVPRC_COM_NAC: TFloatField;
    ProdutosVPRC_COM_IMP: TFloatField;
    ProdutosVPRC_PAD: TFloatField;
    ProdutosVPRC_PAD_PRZ: TFloatField;
    ProdutosVPRC_PAD_PRO: TFloatField;
    ProdutosVPRC_ATV: TFloatField;
    ProdutosVPRC_ATV_PRZ: TFloatField;
    ProdutosVPRC_ATV_PRO: TFloatField;
    ProdutosVPRC_VAR: TFloatField;
    ProdutosVPRC_VAR_PRZ: TFloatField;
    ProdutosVPRC_VAR_PRO: TFloatField;
    ProdutosVPRC_REP: TFloatField;
    ProdutosVPRC_REP_PRZ: TFloatField;
    ProdutosVPRC_REP_PRO: TFloatField;
    ProdutosVPRC_LJV: TFloatField;
    ProdutosPMKP_LJV: TIBBCDField;
    ProdutosEPE_QTDE: TIBBCDField;
    ProdutosEPE_QTRL: TIntegerField;
    ProdutosEAA_QTDE: TIBBCDField;
    ProdutosEAA_QTRL: TIntegerField;
    ProdutosEA_QTDE: TIBBCDField;
    ProdutosEA_QTRL: TIntegerField;
    ProdutosEB_QTDE: TIBBCDField;
    ProdutosEB_QTRL: TIntegerField;
    ProdutosEC_QTDE: TIBBCDField;
    ProdutosEC_QTRL: TIntegerField;
    ProdutosEPI_QTDE: TIBBCDField;
    ProdutosEPI_QTRL: TIntegerField;
    ProdutosESU_QTDE: TIBBCDField;
    ProdutosESU_QTRL: TIntegerField;
    ProdutosEPP_QTDE: TIBBCDField;
    ProdutosEPP_QTRL: TIntegerField;
    ProdutosEPR_QTDE: TIBBCDField;
    ProdutosEPR_QTRL: TIntegerField;
    ProdutosEPS_QTDE: TIBBCDField;
    ProdutosEPS_QTRL: TIntegerField;
    ProdutosECO_QTDE: TIBBCDField;
    ProdutosECO_QTRL: TIntegerField;
    ProdutosEEP_QTDE: TIBBCDField;
    ProdutosEEP_QTRL: TIntegerField;
    ProdutosECO_DECO: TIBStringField;
    DTSProdutos: TDataSource;
    PS: TIBQuery;
    PSID: TIntegerField;
    PSIDAK: TLargeintField;
    PSARTIGO: TIBStringField;
    PSPRODUTO: TIBStringField;
    PSDGCP: TIBStringField;
    PSDEPS: TIBStringField;
    PSDTPV: TDateTimeField;
    PSCLPS: TIBStringField;
    PSCVPS: TIBStringField;
    PSCRPS: TIBStringField;
    PSQTDE: TIBBCDField;
    PSQTRL: TIntegerField;
    PSCDET: TIBStringField;
    PSCDSP: TLargeintField;
    PSIDSP: TSmallintField;
    PSDESP: TIBStringField;
    PSDTCA: TDateTimeField;
    DTSPS: TDataSource;
    PR: TIBQuery;
    PRID: TIntegerField;
    PRIDPK: TLargeintField;
    PRDTCA: TDateTimeField;
    PRD_DTCA: TIBStringField;
    PRDEPK: TIBStringField;
    PRDECD: TIBStringField;
    PRDECV: TIBStringField;
    PRDECR: TIBStringField;
    PRIDFK: TLargeintField;
    PRITEM: TIntegerField;
    PRIDCP: TIntegerField;
    PRSKU: TIBStringField;
    PRDGCP: TIBStringField;
    PRQTDE: TIBBCDField;
    PRQTRL: TIntegerField;
    PRVPRC_COM: TFloatField;
    PRIDAK: TLargeintField;
    DTSPR: TDataSource;
    PP: TIBQuery;
    PPID: TIntegerField;
    PPIDEP: TSmallintField;
    PPIDCA: TSmallintField;
    PPDTCA: TDateTimeField;
    PPD_DTCA: TIBStringField;
    PPARTIGO: TIBStringField;
    PPSKU: TIBStringField;
    PPDGCP: TIBStringField;
    PPIDPK: TLargeintField;
    PPDEPK: TIBStringField;
    PPDTPK: TDateField;
    PPIDCD: TIntegerField;
    PPDECD: TIBStringField;
    PPUF: TIBStringField;
    PPIDCV: TSmallintField;
    PPDECV: TIBStringField;
    PPIDCR: TSmallintField;
    PPDECR: TIBStringField;
    PPQTDE: TIBBCDField;
    PPQTRL: TIntegerField;
    PPCTNR: TIBStringField;
    PPCTNR_QTDE: TIBBCDField;
    PPCTNR_QTRL: TIntegerField;
    PPCTNR_QTSD: TIBBCDField;
    DTSPP: TDataSource;
    PCA: TIBQuery;
    PCAID: TIntegerField;
    PCAIDEP: TSmallintField;
    PCADEEP: TIBStringField;
    PCAARTIGO: TIBStringField;
    PCAPRODUTO: TIBStringField;
    PCADGCP: TIBStringField;
    PCADEPC: TIBStringField;
    PCACTNR: TIBStringField;
    PCADTCA: TDateTimeField;
    PCAFOPC: TIBStringField;
    PCACCPC: TIBStringField;
    PCAQTDE: TIBBCDField;
    PCAQTRL: TIntegerField;
    PCASTFI: TIBStringField;
    PCADTDE: TDateField;
    PCADTPR: TDateField;
    DTSPCA: TDataSource;
    LF: TIBQuery;
    LFID: TLargeintField;
    LFIDEP: TSmallintField;
    LFIDET: TSmallintField;
    LFDTET: TDateTimeField;
    LFLGET: TIBStringField;
    LFCDRO: TLargeintField;
    LFDTRO: TDateField;
    LFDEPD: TIBStringField;
    LFDTPD: TDateField;
    LFCDNF: TLargeintField;
    LFDTNF: TDateField;
    LFDECE: TIBStringField;
    LFCDET: TLargeintField;
    LFCTNR: TIBStringField;
    LFLOTE: TIBStringField;
    LFCDI: TSmallintField;
    LFD_DEOP: TIBStringField;
    LFDETP: TIBStringField;
    LFSKU: TIBStringField;
    LFDGCP: TIBStringField;
    LFQTDE: TIBBCDField;
    LFQTRL: TIntegerField;
    LFD_DEDF: TIBStringField;
    LFINFADCAD: TIBStringField;
    LFITDF: TIntegerField;
    DTSLF: TDataSource;
    DTSLS: TDataSource;
    LS: TIBQuery;
    LSID: TIntegerField;
    LSIDEP: TSmallintField;
    LSIDCA: TSmallintField;
    LSDTCA: TDateTimeField;
    LSDERO: TIBStringField;
    LSCDRO: TIntegerField;
    LSDTEMI: TDateField;
    LSCTNR: TIBStringField;
    LSLOTE: TIBStringField;
    LSFAVORECIDO: TIBStringField;
    LSIDCP: TIntegerField;
    LSIDAK: TLargeintField;
    LSARTIGO: TIBStringField;
    LSPRODUTO: TIBStringField;
    LSDGCP: TIBStringField;
    LSCDET: TLargeintField;
    LSQTDE: TIBBCDField;
    LSQTRL: TIntegerField;
    LSUNIT: TFloatField;
    LSDESP: TIBStringField;
    LSDTSP: TDateTimeField;
    LSSEPARADOR: TIBStringField;
    PCF: TIBQuery;
    PCFID: TIntegerField;
    PCFARTIGO: TIBStringField;
    PCFPRODUTO: TIBStringField;
    PCFDGCP: TIBStringField;
    PCFCTNR: TIBStringField;
    PCFDTCA: TDateTimeField;
    PCFFOPC: TIBStringField;
    PCFCCPC: TIBStringField;
    PCFQTDE: TIBBCDField;
    PCFQTRL: TIntegerField;
    PCFQTFI: TIBBCDField;
    PCFRLFI: TIntegerField;
    PCFSTFI: TIBStringField;
    PCFDTDE: TDateField;
    PCFDTBX: TDateField;
    PCFDEPC: TIBStringField;
    DTSPCF: TDataSource;
    RV: TIBQuery;
    RVID: TIntegerField;
    RVIDEP: TSmallintField;
    RVDEEP: TIBStringField;
    RVIDPK: TLargeintField;
    RVDEPK: TIBStringField;
    RVIDCA: TIntegerField;
    RVDECA: TIBStringField;
    RVDTCA: TDateTimeField;
    RVCDET: TLargeintField;
    RVCTNR: TIBStringField;
    RVLOTE: TIBStringField;
    RVIDCP: TIntegerField;
    RVARTIGO: TIBStringField;
    RVSKU: TIBStringField;
    RVDECP: TIBStringField;
    RVDGCP: TIBStringField;
    RVUCOM: TIBStringField;
    RVUCON: TIBStringField;
    RVQTDE: TIBBCDField;
    RVQTRL: TIntegerField;
    RVROLO: TIBStringField;
    RVCDOP: TSmallintField;
    RVDEOP: TIBStringField;
    RVCDTP: TSmallintField;
    RVDETP: TIBStringField;
    RVCDDF: TSmallintField;
    RVDEDF: TIBStringField;
    RVINFADETQ: TIBStringField;
    RVCDPD: TIntegerField;
    RVIDDV: TSmallintField;
    RVCDDV: TLargeintField;
    RVDTDV: TDateTimeField;
    RVPK_CDET: TLargeintField;
    RVPK_DTCA: TDateTimeField;
    RVDEPV: TIBStringField;
    RVDTPV: TDateField;
    RVDECL: TIBStringField;
    RVDECV: TIBStringField;
    RVDECR: TIBStringField;
    DTSRV: TDataSource;
    LE: TIBQuery;
    LEID: TLargeintField;
    LELGCA: TIBStringField;
    LEDTCA: TDateTimeField;
    LEIDEP: TSmallintField;
    LECDRO: TLargeintField;
    LEDTRO: TDateField;
    LEDECE: TIBStringField;
    LEDEPD: TIBStringField;
    LEDTPD: TDateField;
    LECDNF: TLargeintField;
    LEDTNF: TDateField;
    LECDET: TLargeintField;
    LECTNR: TIBStringField;
    LELOTE: TIBStringField;
    LECDI: TSmallintField;
    LEDEOP: TIBStringField;
    LEDETP: TIBStringField;
    LEIDPK: TLargeintField;
    LEDTPK: TDateTimeField;
    LEDEPK: TIBStringField;
    LED_SKU: TIBStringField;
    LEDGCP: TIBStringField;
    LEQTDE: TIBBCDField;
    LEQTRL: TIntegerField;
    LEDEDF: TIBStringField;
    LEINFADCAD: TIBStringField;
    DTSLE: TDataSource;
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
    ACTProduto_Estoque: TAction;
    ACTProduto_Estoque_Etiqueta: TAction;
    ACTProduto_Ficha_Tecnica: TAction;
    ACTAtivo: TAction;
    ACTInativo: TAction;
    ACTPreCadastro: TAction;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);

    procedure ACTRefreshExecute(Sender: TObject);
    procedure ACTEveRegisterExecute(Sender: TObject);
    procedure ACTEveExecuteExecute(Sender: TObject);
    procedure ACTConsultaExecute(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTMEAppendExecute(Sender: TObject);
    procedure ACTMEEditExecute(Sender: TObject);
    procedure ACTMEDeleteExecute(Sender: TObject);
    procedure ACTMEPostExecute(Sender: TObject);
    procedure ACTMECancelExecute(Sender: TObject);
    procedure ACTMPAppendExecute(Sender: TObject);
    procedure ACTMPEditExecute(Sender: TObject);
    procedure ACTMPDeleteExecute(Sender: TObject);
    procedure ACTMPPostExecute(Sender: TObject);
    procedure ACTMPCancelExecute(Sender: TObject);
    procedure ACTEveExpressExecute(Sender: TObject);
    procedure ACTProgressBarExecute(Sender: TObject);
    procedure ACTDashboardsExecute(Sender: TObject);
    procedure ACTCheckConstraintsExecute(Sender: TObject);
    procedure ACTCheckErrorsExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure ACTEdicaoExecute(Sender: TObject);
    procedure ACTMPValidateExecute(Sender: TObject);
    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);


    procedure BEPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ArtigosAfterOpen(DataSet: TDataSet);
    procedure DBGFichaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGPosicaoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGProdutosCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSProdutosDataChange(Sender: TObject; Field: TField);
    procedure DBGPCACustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSArtigosDataChange(Sender: TObject; Field: TField);
    procedure DBGPCFCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSPRDataChange(Sender: TObject; Field: TField);
    procedure DTSLFDataChange(Sender: TObject; Field: TField);
    procedure DTSLSDataChange(Sender: TObject; Field: TField);
    procedure DTSPSDataChange(Sender: TObject; Field: TField);
    procedure DTSPPDataChange(Sender: TObject; Field: TField);
    procedure DTSPCADataChange(Sender: TObject; Field: TField);
    procedure DTSPCFDataChange(Sender: TObject; Field: TField);
    procedure ACTProduto_EstoqueExecute(Sender: TObject);
    procedure ACTProduto_Estoque_EtiquetaExecute(Sender: TObject);
    procedure ACTProduto_Ficha_TecnicaExecute(Sender: TObject);
    procedure ACTAtivoExecute(Sender: TObject);
    procedure ACTInativoExecute(Sender: TObject);
    procedure ACTPreCadastroExecute(Sender: TObject);
    procedure DBGArtigosCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ArtigosAfterClose(DataSet: TDataSet);
    procedure TSLEShow(Sender: TObject);
    procedure DTSRVDataChange(Sender: TObject; Field: TField);
    procedure DBGRVCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ArtigosBeforeScroll(DataSet: TDataSet);
    procedure ProdutosAfterScroll(DataSet: TDataSet);
    procedure LSAfterScroll(DataSet: TDataSet);
    procedure DTSLEDataChange(Sender: TObject; Field: TField);
    procedure TSLFShow(Sender: TObject);
    procedure TSLSShow(Sender: TObject);
    procedure DBGLFCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGLECustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGPRCCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSCAD_PRO_IMGDataChange(Sender: TObject; Field: TField);
    procedure ProdutosAfterOpen(DataSet: TDataSet);
    procedure LFAfterOpen(DataSet: TDataSet);
    procedure LEAfterOpen(DataSet: TDataSet);
    procedure LSAfterOpen(DataSet: TDataSet);
    procedure PRAfterOpen(DataSet: TDataSet);
    procedure PSAfterOpen(DataSet: TDataSet);
    procedure PPAfterOpen(DataSet: TDataSet);
    procedure PCAAfterOpen(DataSet: TDataSet);
    procedure PCFAfterOpen(DataSet: TDataSet);
    procedure DBGPPCTNRCloseUp(Sender: TObject; var Value: Variant;
      var Accept: Boolean);
    procedure PPAfterScroll(DataSet: TDataSet);
    procedure DBGPPCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure LFBeforeOpen(DataSet: TDataSet);
    procedure LFAfterScroll(DataSet: TDataSet);
    procedure ProdutosBeforeClose(DataSet: TDataSet);


  private

    { Private declarations }
    FCurrentEvent,
    FCurrentAlert: String;
    FForceClose  : Boolean;

    APSQ_DG: String;

    { método para atribuição\validação de valor }
    procedure _SetCurrentEvent(const AValue: String);
    procedure _SetCurrentAlert(const AValue: String);
    procedure _SetForceClose  (const AValue: Boolean);

    procedure _Relatorios(ANome: String);
  public
    { Public declarations }
    REC_SHE_DEF: TREC_SHE_DEF;

    property _GetCurrentAlert: String  read FCurrentAlert write _SetCurrentAlert;
    property _GetCurrentEvent: String  read FCurrentEvent write _SetCurrentEvent;
    property _GetForceClose  : Boolean read FForceClose   write _SetForceClose;

    procedure _WM_CREATE(var Msg: TMessage); message WM_CREATE;
    procedure _WM_AFTER_CREATE(var Msg: TMessage); message WM_AFTER_CREATE;

    procedure _WM_ACTIVATE(var Msg: TMessage); message WM_ACTIVATE;
    procedure _SW_SHOWNOACTIVATE(var Msg: TMessage); message SW_SHOWNOACTIVATE;

    procedure _WM_SHOW(var Msg: TMessage); message WM_SHOW;
    procedure _WM_AFTER_SHOW(var Msg: TMessage); message WM_AFTER_SHOW;

    procedure _WM_RESIZE(var Message: TMessage); message WM_ENTERSIZEMOVE;
    procedure _WM_AFTER_RESIZE(var Message: TMessage); message WM_EXITSIZEMOVE;

    Constructor Create(AOwner: TComponent;
                 const AIDPK : LongInt = 0 ;
                       ADEPK : String  = '';
                       AIDEV : LongInt = 0 ;
                       ACDEV : Word    = 0 ;

                       AFB_PSQ_TB_NO_PK: String  = '';
                       AFB_PSQ_GET_SQL : String  = ''); reintroduce; overload;

    class procedure _ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                              AIDPK : LongInt = 0 ;
                              ADEPK : String  = '';
                              AIDEV : LongInt = 0 ;
                              ACDEV : Word    = 0 ;

                              AFB_PSQ_TB_NO_PK: String  = '';
                              AFB_PSQ_GET_SQL : String = '');

    Destructor  Destroy; override;
  end;

var
  FrmProduto_: TFrmProduto_;
  _Form: TStringList = Nil;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, qFicha_Tecnica, pCAD_PRO_EDI;

{$R *.dfm}

procedure TFrmProduto_._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmProduto_._SetCurrentAlert(const AValue: String);
begin
  FCurrentAlert := AValue;
end;

procedure TFrmProduto_._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

procedure TFrmProduto_._WM_CREATE(var Msg: TMessage);
begin
  { INICIALIZA }
  Screen.Cursor := crAppStart;  { Cursor }
  //SetCursorPos(500,Self.Top); { Posição Inicial }

  Randomize;
end;

procedure TFrmProduto_._WM_AFTER_CREATE(var Msg: TMessage);
begin
  { FORM }
  REC_SHE_DEF.FMainArea := (REC_SHE_DEF.FMainArea) and (Screen.Width >= 1360) and (Screen.Width <= 1366); { Aplicativo }
  REC_SHE_DEF.FWorkArea := (REC_SHE_DEF.FWorkArea) and (Screen.Width <= 1280); { Desktop }

  { CAPTION }
  if FCurrentEvent  = EmptyStr then
  _GetCurrentEvent := Self.Caption;
end;

procedure TFrmProduto_._WM_ACTIVATE(var Msg: TMessage);
begin
  { EVENTOS }
  ACTEveRegister.Execute; { Registro }
end;

procedure TFrmProduto_._SW_SHOWNOACTIVATE(var Msg: TMessage);
          procedure _ProcessPaintMessages; // << not tested, pulled out of code
          var
            Msg: TMsg;
          begin
            while PeekMessage(msg, 0, WM_PAINT, WM_PAINT, PM_REMOVE) do
                  DispatchMessage(msg);
          end;
begin
  _ProcessPaintMessages;
end;

procedure TFrmProduto_._WM_SHOW(var Msg: TMessage);
begin
  { BEFORE SHOWNING }
  Screen.Cursor := crHourGlass; { Cursor }
  REC_SHE_DEF.FResize := 0;     { Form Resize }
  ALockWindowUpdate   := True;  { Habilita SQL INJECTION }

  { INICIALIZAÇÃO DE TRANSAÇÕES }
  oOTransact(TConsulta); { Transação Principal }

  ACTConsulta.Execute; { Tabelas }
  ACTEdicao.Execute; { Ediçõe }
end;

procedure TFrmProduto_._WM_AFTER_SHOW(var Msg: TMessage);
begin
  { AFTER SHOWNING }
  ACTPesquisa.Execute; { Pesquisa Principal }
end;

procedure TFrmProduto_._WM_RESIZE(var Message: TMessage);
begin
  { BEFORE RESIZE }
  REC_SHE_DEF.FResize := REC_SHE_DEF.FResize + 1;

  { FORM }
  { APLICATIVO }
  if REC_SHE_DEF.FMainArea then
  begin
    REC_SHE_DEF.FPosition := poDefault;
    REC_SHE_DEF.FWorkArea := False;
  end else

  { DESKTOP }
  if REC_SHE_DEF.FWorkArea then
  begin
    REC_SHE_DEF.FPosition := poDefault;
    REC_SHE_DEF.FMainArea := False;
  end;

  { DIMENSÕES }
  REC_SHE_DEF.FHeight := Self.Height; { Altura  }
  REC_SHE_DEF.FWidth  := Self.Width ; { Largura }
end;

procedure TFrmProduto_._WM_AFTER_RESIZE(var Message: TMessage);
begin
  { AFTER RESIZE }
  if REC_SHE_DEF.FResize >= 2 then
     try
       //oResize(DBGConsulta); { Grid Principal }
       Paint; { Form }
     finally
       REC_SHE_DEF.FResize := 0;
     end;

  { Focused }
  if (BEPesquisa.Visible <> ivNever) then
      BEPesquisa.SetFocus(False);
end;

Constructor TFrmProduto_.Create(AOwner: TComponent;
                       const AIDPK: LongInt = 0 ;
                             ADEPK: String  = '';
                             AIDEV: LongInt = 0 ;
                             ACDEV: Word    = 0 ;

                             AFB_PSQ_TB_NO_PK: String  = '';
                             AFB_PSQ_GET_SQL : String  = '');
begin
  { INICIALIZAÇÃO DE PARÂMETROS }
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.IDPK := INTTOSTR(AIDPK);
  REC_SHE_DEF.DEPK := TRIM(ADEPK);

  REC_SHE_DEF.IDEV := INTTOSTR(AIDEV);
  REC_SHE_DEF.CDEV := INTTOSTR(ACDEV);

  REC_SHE_DEF.FB_PSQ_TB_NO_PK := TRIM(AFB_PSQ_TB_NO_PK );
  REC_SHE_DEF.FB_PSQ_GET_SQL  := TRIM(AFB_PSQ_GET_SQL);

  inherited Create(AOwner);
end;

Class procedure TFrmProduto_._ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                                    AIDPK : LongInt = 0 ;
                                    ADEPK : String  = '';
                                    AIDEV : LongInt = 0 ;
                                    ACDEV : Word    = 0 ;

                                    AFB_PSQ_TB_NO_PK: String  = '';
                                    AFB_PSQ_GET_SQL : String  = '');
var
  idxForm: Integer;
begin
  if not Assigned(_Form) then
  begin
    _Form := TStringList.Create;
    _Form.Sorted := True;
  end;

  if not _Form.Find(ClassName,idxForm) then
  idxForm := _Form.Add(ClassName);

  if TForm(AForm) = Nil then
  TForm(AForm) := Self.Create (AOwner    ,
                               AIDPK     ,
                               ADEPK     ,
                               AIDEV     ,
                               ACDEV     ,
                               AFB_PSQ_TB_NO_PK ,
                               AFB_PSQ_GET_SQL);

  _Form.Objects[idxForm] := TObject(@AForm); { Cria Objeto }

  if AFormStyle <> fsStayOnTop then
  begin
    TForm(AForm).FormStyle := AFormStyle;

    if TForm(AForm).FormStyle = fsNormal then
    begin
      TForm(AForm).Visible := False;
      TForm(AForm).ShowModal;
    end else
    begin
      TForm(AForm).Visible := True;
      TForm(AForm).Show;
    end;
  end;
end;

Destructor TFrmProduto_.Destroy;
type
  PtrForm = ^TForm;
var
  idxForm: Integer;
begin
  { FECHAMENTOS }
  if TForm(Self).Name <> EmptyStr then
  if Assigned(_Form) and _Form.Find(ClassName,idxForm) and (_Form.Objects[idxForm] <> Nil) then

  try
    Screen.Cursor := crAppStart; { Cursor }

    try
      { EVENTOS }
      try
        EEvent.UnRegisterEvents;
        EEvent.Events.Clear;
      except
        on E: Exception do
        begin
          oErro(Application.Handle,'Falha ao tentar finalizar evento !' + #13 +
                                   'Evento: ' + REC_SHE_DEF.FB_Event    + '.' + #13 + #13 +
                                  'Erro: '   + E.Message);
        end;
      end;

    finally

      try
        { TRANSAÇÕES }
        try
          oFTransact(TConsulta); { Principal }
        except
          on E: Exception do
          begin
            oErro(Application.Handle,'Falha ao tentar finalizar transações !' + #13 +
                                     'Erro: ' + E.Message);
          end;
        end;

      finally

        try
          { RECORDS }
          try
            oFREC_SHE_DEF(REC_SHE_DEF);
          except
            on E: Exception do
            begin
              oErro(Application.Handle,'Falha ao tentar esvaziar memórias !' + #13 +
                                       'Erro: ' + E.Message);
            end;
          end;

        finally

          { CLEAR POINTS }
          try
            PtrForm(_Form.Objects[idxForm])^ := Nil;
            _Form.Objects[idxForm] := Nil;

          finally

            inherited;

          end;

        end;

      end;

    end;

  finally
    Screen.Cursor := crDefault; { Cursor }
  end;
end;

procedure TFrmProduto_.FormCreate(Sender: TObject);
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

  { GRANT USER }
  if not REC_SHE_DEF.GAdmin then { Administrador }
  begin
    { EDIÇÃO DE REGISTROS }
    REC_SHE_DEF.GAppend := bPSQUSER('USU_NOVO',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra); { Incluir }
    REC_SHE_DEF.GEdit   := bPSQUSER('USU_EDIT',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra); { Alterar }
    REC_SHE_DEF.GDelete := bPSQUSER('USU_DELE',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra); { Excluir }
    REC_SHE_DEF.GPost   := (REC_SHE_DEF.GAppend or REC_SHE_DEF.GEdit); { Salvar   }
    REC_SHE_DEF.GCancel := (REC_SHE_DEF.GAppend or REC_SHE_DEF.GEdit); { Cancelar }

    { CONTEÚDO }
    REC_SHE_DEF.GView  := bPSQUSER('USU_VISU',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra); { Visualizar }
    REC_SHE_DEF.GPrint := bPSQUSER('USU_PRIN',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra); { Imprimir   }

    { GRANT MANAGER }
    REC_SHE_DEF.GAdmin := bPSQUSER('USU_AUTO',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra); { Administrado }
  end;

  { GRANT ADM }
  if REC_SHE_DEF.GAdmin then { Administrador }
  begin
    REC_SHE_DEF.GAppend := True;
    REC_SHE_DEF.GEdit   := True;
    REC_SHE_DEF.GDelete := True;
    REC_SHE_DEF.GPost   := True;
    REC_SHE_DEF.GCancel := True;
    REC_SHE_DEF.GView   := True;
    REC_SHE_DEF.GPrint  := True;
  end;

  { GRANT MANAGER }
  if not REC_SHE_DEF.GPost then
  begin
    ACTMPAppend.Enabled   := False;
    ACTMPEdit.Enabled     := False;
    ACTMPDelete.Enabled   := False;
    ACTMPPost.Enabled     := False;
    ACTMPValidate.Enabled := False;

    ACTMEAppend.Enabled   := False;
    ACTMEEdit.Enabled     := False;
    ACTMEDelete.Enabled   := False;
    ACTMEPost.Enabled     := False;
    ACTMECancel.Enabled   := False;
  end;

  if not REC_SHE_DEF.GView then _GetForceClose := False
  else

  { ACCESS DENIED }
  if (FForceClose) and (RECParametros.STCX <> 'Caixa Aberto') then
  begin
    _GetCurrentAlert := FCurrentEvent    + #13 + #13 +
                       'ACESSO NEGADO !' + #13 +
                        RECParametros.STCX ;
  end else

  if (FForceClose) and (RECParametros.STCX = 'Caixa Aberto') then
  begin
    _GetCurrentAlert := FCurrentEvent    + #13 + #13 +
                       'ACESSO NEGADO !' + #13 +
                       'Usuário não Autorizado';
  end;

  { ACCESS ABORT }
  if FForceClose then
  begin
    oErro(Application.Handle,FCurrentAlert);

    Self.Visible := False;
    Self.Height  := 0;
    Self.Width   := 0;

    PostMessage(Handle, WM_CLOSE, 0, 0);
    Exit;
  end else
  PostMessage( Handle, WM_AFTER_CREATE, 0, 0);
end;

procedure TFrmProduto_.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_ACTIVATE      , 0, 0);
  PostMessage(Handle, SW_SHOWNOACTIVATE, 0, 0);
end;

procedure TFrmProduto_.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_SHOW      , 0, 0);
  PostMessage(Handle, WM_AFTER_SHOW, 0, 0);
end;

procedure TFrmProduto_.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  { VER ANTES DE SAIR }
  if REC_SHE_DEF.Editing then
     Case messageBox(handle,'Existem Alterações Pendentes !'+#13+
                            'Deseja Salvar ?',
                             PChar(Caption)  ,
                             MB_ICONQUESTION + MB_YESNOCANCEL) of
          mrCancel: Abort;
          mrYes   : begin
                      if ACTMPPost.Enabled then
                         ACTMPPost.Execute else

                      if ACTMPValidate.Enabled then
                         ACTMPValidate.Execute;

                      if ACTMEPost.Enabled then
                         ACTMEPost.Execute;
                    end;
  end;
end;

procedure TFrmProduto_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnClose := Nil;
  Action  := caFree;
end;

procedure TFrmProduto_.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_return: if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo) and
                      not (ActiveControl is TdxBlobEdit) and
                      not (ActiveControl is TdxDBBlobEdit) and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);

       38       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo) and
                      not (ActiveControl is TdxBlobEdit) and
                      not (ActiveControl is TdxDBBlobEdit) and
                      not (ActiveControl is TListBox)) then
                      SelectNext(ActiveControl,False,True);

       40       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TdxBlobEdit) and
                      not (ActiveControl is TdxDBBlobEdit) and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);
  end;
end;

procedure TFrmProduto_.FormPaint(Sender: TObject);
var
  AMainFormScreen: TRect;
  i: Word;
begin
  if (not Showing) or (FForceClose) then
  Exit;

  { Ajusta o Form para o tamanho da area livre do MainForm }
  GetWindowRect(FrmPrincipal.ClientHandle,AMainFormScreen);

  REC_SHE_DEF.FTop    := AMainFormScreen.Top;
  REC_SHE_DEF.FBottom := AMainFormScreen.Bottom;
  REC_SHE_DEF.FLeft   := AMainFormScreen.Left;
  REC_SHE_DEF.FRight  := AMainFormScreen.Right;
  REC_SHE_DEF.FHeight := AMainFormScreen.Bottom;

  if REC_SHE_DEF.FPosition = poDesigned then
  begin
    if (HelpContext = 0) then { % da altura }
    if (AMainFormScreen.Bottom - AMainFormScreen.Top < Self.Height) then { Área livre menor que página }
    Self.HelpContext := 95; { % }

    REC_SHE_DEF.FMainHeight := IFThen(Self.HelpContext     > 0,Trunc((REC_SHE_DEF.FHeight - REC_SHE_DEF.FTop ) * (Self.HelpContext     / 100)),0);
    REC_SHE_DEF.FMainWidth  := IFThen(Self.AlphaBlendValue > 0,Trunc((REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft) * (Self.AlphaBlendValue / 100)),0);

    if (REC_SHE_DEF.FMainTop > 0) and (REC_SHE_DEF.FMainLeft > 0) then
    begin
      Self.Top  := REC_SHE_DEF.FTop + 5;
      Self.Left := REC_SHE_DEF.FLeft;

      if Self.Top + Self.Height > REC_SHE_DEF.FBottom then
      begin
        Self.Top := Self.Top - ((Self.Top + Self.Height) - REC_SHE_DEF.FBottom);
      end;

      if Self.Left + Self.Width > REC_SHE_DEF.FRight then
      begin
        Self.Left := Self.Left - ((Self.Left + Self.Width) - REC_SHE_DEF.FRight);
      end;
    end else
    begin
      if REC_SHE_DEF.FMainHeight > 0 then Self.Height := REC_SHE_DEF.FMainHeight;
      if REC_SHE_DEF.FMainWidth  > 0 then Self.Width  := REC_SHE_DEF.FMainWidth;

      if FormStyle = fsNormal then
      begin
        Self.Top  := ( REC_SHE_DEF.FTop   + (REC_SHE_DEF.FHeight - Self.Height)) div 2;
        Self.Left := ((REC_SHE_DEF.FRight +  REC_SHE_DEF.FLeft)  - Self.Width)   div 2;
      end else

      //if (FHeight > 0) or (FWidth  > 0) then
      begin                            
        Self.Top  := ((REC_SHE_DEF.FBottom - REC_SHE_DEF.FTop ) - Self.Height) div 2;
        Self.Left := ((REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft) - Self.Width ) div 2;
      end;
    end;
  end else

  if (REC_SHE_DEF.FWorkArea) and (FormStyle = fsNormal) then
  begin
    Self.Top    := Screen.WorkAreaTop;
    Self.Left   := Screen.WorkAreaLeft;
    Self.Width  := Screen.WorkAreaWidth;
    Self.Height := Screen.WorkAreaHeight;
  end else

  if (REC_SHE_DEF.FMainArea) and (FormStyle = fsNormal) then
  begin
    Self.Top    := 0;
    Self.Left   := 0;
    Self.Width  := REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft - 5;
    Self.Height := REC_SHE_DEF.FHeight - REC_SHE_DEF.FTop  - 5;
  end else

  if REC_SHE_DEF.FPosition = poDefault then
  begin
    Self.Top    := IFThen(FormStyle = fsNormal,REC_SHE_DEF.FTop ,0);
    Self.Left   := IFThen(FormStyle = fsNormal,REC_SHE_DEF.FLeft,0);
    Self.Width  := IFThen(REC_SHE_DEF.FPosition = poDefault,REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft - 5,0);
    Self.Height := IFThen(REC_SHE_DEF.FPosition = poDefault,REC_SHE_DEF.FHeight - REC_SHE_DEF.FTop  - 5,0);
  end;

  { RODAPÉ }
  REC_SHE_DEF.FMainWidth := SBRodape.Width;
  for i  := 0 to SBRodape.Panels.Count - 1 do
  if  i  <> 1 then
  REC_SHE_DEF.FMainWidth   := REC_SHE_DEF.FMainWidth - SBRodape.Panels[i].Width;
  SBRodape.Panels[1].Width := REC_SHE_DEF.FMainWidth - 5;

  { SCREEN CAPTION }
  if RECUsuarios.Id = 0 then
  Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_DEF.FMainWidth)  + ' x ' + IntToStr(REC_SHE_DEF.FMainHeight) + '. ' + Self.Caption;
end;

procedure TFrmProduto_.FormResize(Sender: TObject);
begin
  if (not Showing) or (FForceClose) then
  Exit;

  { Risize }
  PostMessage(Handle, WM_ENTERSIZEMOVE , 0, 0); { Before }
  PostMessage(Handle, WM_EXITSIZEMOVE  , 0, 0); { After }
end;

procedure TFrmProduto_.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Consulta);
end;

procedure TFrmProduto_.ACTPesquisaExecute(Sender: TObject);
var
  APSQ_SL: TStringList;
  APSQ_VL,
  APSQ_FD: String;

  i: Word;
begin
  { INICIALIZA FORM SCREEN }
  Screen.Cursor := crHourGlass; { Cursor }
  ALockWindowUpdate := True;    { Habilita SQL INJECTION }

  { REINICIA TRANSAÇÃO }
  if not REC_SHE_DEF.FB_PSQ_INI then
  begin
    oCTransact(TConsulta);
    oOTransact(TConsulta);
  end;

  { INICIALIZA PARÂMETROS DA PESQUISA }
  with REC_SHE_DEF do
  begin
    { FIREBIRD PESQUISA PRIMÁRIA }
    { PADRÃO }
    FB_PSQ_ID  := '0';      { Identificador }
    FB_PSQ_CPL := EmptyStr; { Complemento }
    FB_PSQ_SBQ := False;    { Sub Query }
    FB_PSQ_OK  := False;    { Validação }

    { TEXTO }
    FB_PSQ_FD_NO_PK := EmptyStr; { Campo  }
    FB_PSQ_FD_VD_PK := EmptyStr; { Valor  }

    { DATAS }
    FB_PSQ_DT_NO_PK := EmptyStr; { Campo  }
    FB_PSQ_DT_VD_PK := 0;        { Valor  }

    { FIREBIRD PESQUISA SECUNDÁRIA }
    { TEXTO }
    FB_PSQ_FD_NO_FK := EmptyStr; { Campo  }
    FB_PSQ_FD_VD_FK := EmptyStr; { Valor  }

    { DATAS }
    FB_PSQ_DT_NO_FK := EmptyStr; { Campo  }
    FB_PSQ_DT_VD_FK := 0;        { Valor  }

    { ÂNCORAS PRINCIPAIS }
    { Empresas }
    EP_NO := EmptyStr; { Empresa }
    CF_NO := EmptyStr; { Fabricante }

    { SITUAÇÕES }
    DEST := EmptyStr; { Descrição }
    STFI := EmptyStr; { Descrição Abreviada }

    { Produtos }
    ARTIGO     := EmptyStr; { Artigo }
    SKU        := EmptyStr; { SKU }
    NCM        := EmptyStr; { NCM }
    GRADE      := EmptyStr; { Grade }
    DESCRICAO  := EmptyStr; { Nome / Descrição }
    COMPOSICAO := EmptyStr; { Composição }

    { LISTA DE PESQUISA }
    if LISTA = Nil then
    LISTA   := TStringList.Create else
    LISTA.Clear;
  end;

  REC_SHE_DEF.FB_PSQ_FD_VD_PK  := TRIM(BEPesquisa.Text);
  REC_SHE_DEF.FB_PSQ_WHERE := 'LIKE';
  REC_SHE_DEF.FB_PSQ_LKPK  := '' ;
  REC_SHE_DEF.FB_PSQ_LKFK  := '%' ;
  REC_SHE_DEF.FB_PSQ_CPL   := 'TODOS';

  if ((Length(REC_SHE_DEF.FB_PSQ_FD_VD_PK) <= 2) or (Pos('.',REC_SHE_DEF.FB_PSQ_FD_VD_PK) > 0)) then
  REC_SHE_DEF.FB_PSQ_FD_NO_PK := 'ARTIGO' else
  REC_SHE_DEF.FB_PSQ_WHERE    := 'CONTAINING';

  { String List de Pesquisa }
  APSQ_SL := TStringList.Create;
  APSQ_SL.Clear;

  { Parâemtro de Pesquisa }
  if REC_SHE_DEF.FB_PSQ_FD_VD_PK <> EmptyStr then
  begin
    APSQ_DG := EmptyStr; { Grade }
    APSQ_FD := EmptyStr; { Campo }
    APSQ_VL := REC_SHE_DEF.FB_PSQ_FD_VD_PK; { Texto Pesquisa }

    if (APSQ_VL <> EmptyStr) and (APSQ_VL <> '0') then
    begin
      { Capturar as palavras separadamente }
      While Length(APSQ_VL) > 0 do
      begin
        APSQ_FD := Fetch(APSQ_VL,' ');

        if Length(APSQ_FD) > 0 then
           APSQ_SL.Add(Trim(APSQ_FD));
      end;

      { Captura grade indicada na segunda posição }
      if APSQ_SL.Count > 0 then
      begin
        for i := 0 to APSQ_SL.Count - 1 do
        begin
          APSQ_DG := APSQ_DG + APSQ_SL.Strings[i] + ' ';

          with SQLConsulta do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT ID FROM TAB_COR WHERE DESCRICAO CONTAINING ''' + Trim(APSQ_SL.Strings[i]) + '''');
            ExecQuery;

            if Eof then
            APSQ_DG := oStrTran(APSQ_DG,APSQ_SL.Strings[i],'') + ' ';
          end;
        end;
        APSQ_DG := Trim(APSQ_DG);

        { Retira as cores individuais da pesquisa }
        if APSQ_DG <> EmptyStr then
        begin
          for i := APSQ_SL.Count - 1 downto 0 do
              if Pos(APSQ_SL.Strings[i],APSQ_DG) > 0 then
                 APSQ_SL.Delete(i);

          APSQ_SL.Add(APSQ_DG);
        end;
      end;
    end;
  end;

  { Prepara Pesquisa Principal }
  with Artigos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT MAX(CP.ID)   AS ID  ,CP.IDEP,CP.DEEP,');
    SQL.Add('       MIN(CP.REST) AS REST,');
    SQL.Add('       CP.ARTIGO    ,CP.DECP,CP.IDAK,CP.NCM,CP.PIPI,');
    SQL.Add('       CP.IDCF      ,CP.DECF,');
    SQL.Add('       CP.UCOM      ,CP.UCOM_LJV,CP.UTRIB,CP.UCON ,CP.UVEN_MIN,CP.UVEN_MUL,');
    SQL.Add('       CP.PESO      ,CP.PSCN    ,CP.METRO,CP.REND ,CP.GRAM    ,');
    SQL.Add('       CP.LARU      ,CP.LART    ,CP.ELAL ,CP.ELAC ,CP.ENCL    ,CP.ENCC,');
    SQL.Add('       CP.DECOL     ,CP.DESEG   ,CP.DEGRP,CP.DESGP,CP.DECAT   ,CP.D_DESCT,');
    SQL.Add('       CP.FIN_CAD_NO,CP.FIN_EST_NO,');
    SQL.Add('       CP.D_ORIG || ASCII_CHAR(13) ||ASCII_CHAR(10) AS D_ORIG,');
    SQL.Add('       NULLIF(TRIM(CAST(');
    SQL.Add('       TRIM(COALESCE(CP.CMP_PAD ,'''')) || IIF(NOT FEMPTY(CP.CMP_PAD),ASCII_CHAR(13) || ASCII_CHAR(10),'''') ||');
    SQL.Add('       TRIM(COALESCE(CP.INFADCAD,'''')) AS VARCHAR(1064))),'''') AS INFADCAD');

    SQL.Add('FROM VW_CAD_PRO AS CP');

    if APSQ_SL.Count = 0 then
    begin
      SQL.Add('WHERE CP.ID = 0');
    end else
    begin
      for i := 0 to APSQ_SL.Count - 1 do
      begin
        SQL.Add(IFThen(Pos('WHERE',Artigos.SQL.Text) = 0,'WHERE','AND'));

        { Pesquisa Artigo \ SKU }
        if (i = 0) and (Pos('.',APSQ_SL.Strings[i]) > 0) then
        SQL.Add('CP.SKU  LIKE ''' + APSQ_SL.Strings[i] + '%''') else

        { Pesquisa Grade }
        if APSQ_SL.Strings[i] = APSQ_DG then
        SQL.Add('CP.DGCP LIKE '''         + APSQ_SL.Strings[i] + '%''') else

        { Pesquisa Genérica }
        SQL.Add('CP.FT_KEY CONTAINING ''' + APSQ_SL.Strings[i] + '''' );
      end;

      if ACTAtivo.Tag       = 1 then SQL.Add('AND CP.CDST = 030');
      if ACTInativo.Tag     = 1 then SQL.Add('AND CP.CDST = 085');
      if ACTPreCadastro.Tag = 1 then SQL.Add('AND CP.CDST = 123');
    end;
    
    SQL.Add('GROUP BY IDEP      ,DEEP,');
    SQL.Add('         ARTIGO    ,DECP,IDAK,NCM,PIPI,');
    SQL.Add('         IDCF      ,DECF,');
    SQL.Add('         UCOM      ,UCOM_LJV  ,UTRIB,UCON ,UVEN_MIN,UVEN_MUL,');
    SQL.Add('         PESO      ,PSCN      ,METRO,REND ,GRAM    ,');
    SQL.Add('         LARU      ,LART      ,ELAL ,ELAC ,ENCL    ,ENCC,');
    SQL.Add('         DECOL     ,DESEG     ,DEGRP,DESGP,DECAT   ,D_DESCT,');
    SQL.Add('         FIN_CAD_NO,FIN_EST_NO,');
    SQL.Add('         D_ORIG    ,INFADCAD');
    SQL.Add('ORDER BY ARTIGO');
    Prepare;
  end;

  try
    { Limpa Filtros }
    DBGArtigos.Filter.Clear;  { Artigos  }
    DBGProdutos.Filter.Clear; { Produtos }

    DBGPR.Filter.Clear; { Reservados }
    DBGPS.Filter.Clear; { Separados }
    DBGPP.Filter.Clear; { Programados }

    DBGLF.Filter.Clear; { Físico }
    DBGLE.Filter.Clear; { Entradas }
    DBGLS.Filter.Clear; { Saídas }

    DBGPCA.Filter.Clear; { Compras Aberto  }
    DBGPCF.Filter.Clear; { Compras Fechado }

    DBGRV.Filter.Clear; { Revisados }

    { Libera Objetos }
    APSQ_SL.Free;

    { SQL INJECTION }
    ALockWindowUpdate := False; { Desativa }

    { Abre Tabela Principal }
    Artigos.Open;
  finally
    { FINALIZA FORM SCREEN }
    Screen.Cursor := crDefault;

    { FOCUS CONTROL }
    if (REC_SHE_DEF.FB_PSQ_FD_VD_PK = '0') or (Artigos.RecNo = 0) then
        BEPesquisa.SetFocus(False) else

    if Produtos.RecNo > 0 then
    begin
      PostMessage(DBGProdutos.Handle, WM_SETFOCUS, 0, 0);
      DBGProdutos.SetFocus;
    end;
  end;
end;

procedure TFrmProduto_.ACTConsultaExecute(Sender: TObject);
begin
  { TABELAS }
  with Produtos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CP.ID ,CP.IDCP,CP.CDST,CP.REST,CP.DEST,CP.DTEK,');
    SQL.Add('       CP.SKU,CP.CEAN,');
    SQL.Add('       IIF(CP.RGCP IS NOT NULL,CP.RGCP,CP.SKU) AS RGCP,CP.DGCP,');
    SQL.Add('       CP.SISTEMA,CP.ESCALA,CP.CDCF,CP.CEANCF,');
    SQL.Add('       CP.VPRC_COM_NAC,CP.VPRC_COM_IMP,');
    SQL.Add('       CP.VPRC_PAD,CP.VPRC_PAD_PRZ,CP.VPRC_PAD_PRO,');
    SQL.Add('       CP.VPRC_ATV,CP.VPRC_ATV_PRZ,CP.VPRC_ATV_PRO,');
    SQL.Add('       CP.VPRC_VAR,CP.VPRC_VAR_PRZ,CP.VPRC_VAR_PRO,');
    SQL.Add('       CP.VPRC_REP,CP.VPRC_REP_PRZ,CP.VPRC_REP_PRO,');
    SQL.Add('       CP.VPRC_LJV,CP.PMKP_LJV,');

    SQL.Add('       COALESCE(E.EPE_QTDE ,0)    AS EPE_QTDE,COALESCE(E.EPE_QTRL,0) AS EPE_QTRL,');
    SQL.Add('       COALESCE(E.EAA_QTDE ,0)    AS EAA_QTDE,COALESCE(E.EAA_QTRL,0) AS EAA_QTRL,');
    SQL.Add('       COALESCE(E.EA_QTDE  ,0)    AS EA_QTDE ,COALESCE(E.EA_QTRL ,0) AS EA_QTRL ,');
    SQL.Add('       COALESCE(E.EB_QTDE  ,0)    AS EB_QTDE ,COALESCE(E.EB_QTRL ,0) AS EB_QTRL ,');
    SQL.Add('       COALESCE(E.EC_QTDE  ,0)    AS EC_QTDE ,COALESCE(E.EC_QTRL ,0) AS EC_QTRL ,');
    SQL.Add('       COALESCE(E.EPI_QTDE ,0)    AS EPI_QTDE,COALESCE(E.EPI_QTRL,0) AS EPI_QTRL,');
    SQL.Add('       COALESCE(E.ESU_QTDE ,0)    AS ESU_QTDE,COALESCE(E.ESU_QTRL,0) AS ESU_QTRL,');
    SQL.Add('       COALESCE(E.EPP_QTDE ,0)    AS EPP_QTDE,COALESCE(E.EPP_QTRL,0) AS EPP_QTRL,');
    SQL.Add('       COALESCE(E.EPR_QTDE ,0)    AS EPR_QTDE,COALESCE(E.EPR_QTRL,0) AS EPR_QTRL,');
    SQL.Add('       COALESCE(E.EPS_QTDE ,0)    AS EPS_QTDE,COALESCE(E.EPS_QTRL,0) AS EPS_QTRL,');
    SQL.Add('       COALESCE(E.ECO_QTDE ,0)    AS ECO_QTDE,COALESCE(E.ECO_QTRL,0) AS ECO_QTRL,');
    SQL.Add('       COALESCE(E.EEP_QTDE ,0)    AS EEP_QTDE,COALESCE(E.EEP_QTRL,0) AS EEP_QTRL,');
    SQL.Add('       COALESCE(E.ECO_DECO ,'''') AS ECO_DECO');

    SQL.Add('FROM VW_CAD_PRO AS CP');
    SQL.Add('JOIN SP_CAD_PRO_EST_PSQ(:IDEP,CP.IDEK) AS E ON (1 = 1)');

    SQL.Add('WHERE CP.IDAK = :IDAK');

    if ACTAtivo.Tag       = 1 then SQL.Add('AND CP.CDST = 030');
    if ACTInativo.Tag     = 1 then SQL.Add('AND CP.CDST = 085');
    if ACTPreCadastro.Tag = 1 then SQL.Add('AND CP.CDST = 123');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      CP.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY CP.DTEK DESC');

    ParamByName('IDEP').Value := RECParametros.EP_ID;
    Prepare;
  end;

  { Físico - Pronta Entrega }
  with LF do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID    ,PK.IDEP,');
    SQL.Add('       PK.IDET  ,PK.DTET,PK.LGET,');
    SQL.Add('       PK.CDRO  ,PK.DTRO,PK.DEPD,PK.DTPD,PK.CDNF,PK.DTNF,PK.DECE,');
    SQL.Add('       PK.CDET  ,PK.CTNR,PK.LOTE,PK.CDI ,');
    SQL.Add('       PK.D_DEOP,PK.DETP,');
    SQL.Add('       PK.SKU   ,PK.DGCP,PK.QTDE,PK.QTRL,');
    SQL.Add('       COALESCE(CAST(IIF(PK.CDDF > 0,1,0) AS INTEGER),0) AS ITDF,PK.D_DEDF,PK.INFADCAD');

    SQL.Add('FROM VW_CAD_PRO_EST      AS PK');
    SQL.Add('JOIN TAB_PAR_SIS_EST_EMP AS EP_EST_EMP ON (EP_EST_EMP.ID = :IDEP AND EP_EST_EMP.IDEP_LOG = PK.IDEP)');
    SQL.Add('JOIN TAB_PAR_SIS_EST     AS EP_EST     ON (EP_EST.ID     = :IDEP)');
    SQL.Add('JOIN SP_CAD_PRO_EST_PSQ(:IDEP,PK.IDEK) AS FK ON (1 = 1)');

    SQL.Add('WHERE PK.IDAK = :IDAK');
    SQL.Add('AND   PK.IDPK = 0'    );
    SQL.Add('AND   PK.REOP = ''E''');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.DTCA DESC');

    ParamByName('IDEP').Value := RECParametros.EP_ID;
    Prepare;
  end;

  { Físico - Entradas }
  with LE do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID   ,PK.LGCA,PK.DTCA,PK.IDEP,');
    SQL.Add('       PK.CDRO ,PK.DTRO,PK.DECE,PK.DEPD,PK.DTPD,PK.CDNF,PK.DTNF,');
    SQL.Add('       PK.CDET ,PK.CTNR,PK.LOTE,PK.CDI ,');
    SQL.Add('       PK.DEOP ,IIF(PK.CDTP <>  EP_EST.IDTIPO,PK.DETP,NULL) AS DETP,');
    SQL.Add('       PK.IDPK ,PK.DTPK,PK.DEPK,');
    SQL.Add('       PK.D_SKU,PK.DGCP,PK.QTDE,PK.QTRL,');
    SQL.Add('       PK.DEDF ,PK.INFADCAD');

    SQL.Add('FROM VW_CAD_PRO_EST      AS PK');
    SQL.Add('JOIN TAB_PAR_SIS_EST_EMP AS EP_EST_EMP ON (EP_EST_EMP.ID = :IDEP AND EP_EST_EMP.IDEP_LOG = PK.IDEP)');
    SQL.Add('JOIN TAB_PAR_SIS_EST     AS EP_EST     ON (EP_EST.ID     = :IDEP)');
    SQL.Add('JOIN SP_CAD_PRO_EST_PSQ(:IDEP,PK.IDEK) AS FK ON (1 = 1)');

    SQL.Add('WHERE PK.IDAK = :IDAK');
    SQL.Add('AND   PK.REOP = ''E''');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.DTCA DESC');

    ParamByName('IDEP').Value := RECParametros.EP_ID;
    Prepare;
  end;

  { Físico - Saídas }
  with LS do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.*');

    SQL.Add('FROM ' + IFThen(RECParametros.EST_QTRL,'VW_CAD_PRO_EST_LSP_TMP','VW_CAD_PRO_EST_LSQ_TMP') + ' AS PK');

    SQL.Add('WHERE PK.IDEP = :IDEP');
    SQL.Add('AND   PK.IDAK = :IDAK');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.DTCA DESC');

    ParamByName('IDEP').Value := RECParametros.EP_ID;
    Prepare;
  end;

  { Pedidos Programados }
  PP.ParamByName('IDEP').Value := RECParametros.EP_ID;
  PP.Prepare;

  { Pedidos Reservados }
  with PR do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID  ,PK.DTCA,TRIM(CAST(FTIMESTAMP(PK.DTCA)||'' ''||PK.DECV AS VARCHAR(40))) AS D_DTCA,');
    SQL.Add('       PK.IDPK,PK.DEPK,PK.DECD,PK.DECV,PK.DECR,');
    SQL.Add('       PK.IDFK,PK.ITEM,PK.IDCP,PK.IDAK,PK.SKU ,PK.DGCP,PK.QTDE,PK.QTRL,PK.VPRC_COM');

    SQL.Add('FROM VW_CAD_PRO_EST_RES AS PK');

    SQL.Add('WHERE PK.IDEP = :IDEP');
    SQL.Add('AND   PK.IDAK = :IDAK');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.DTCA DESC');

    ParamByName('IDEP').Value := RECParametros.EP_ID;
    Prepare;
  end;

  { Pedidos Separados }
  with PS do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,CP.IDAK,CP.PRO_CART AS ARTIGO,CP.PRO_CPRO AS PRODUTO,');
    SQL.Add('       TRIM(COALESCE(CP.DEGRD,'''')||'' ''||TRIM(COALESCE(CP.DECOR,'''')||'' ''||TRIM(COALESCE(CP.CDGRD,'''')||'' ''||TRIM(COALESCE(CP.REGRD,''''))))) AS DGCP,');
    SQL.Add('       PK.EST_DOCU AS DEPS,PK.EST_DTPV AS DTPV,PK.EST_DFAV AS CLPS,PK.EST_DUSU AS CVPS,PK.EST_DREP AS CRPS,');
    SQL.Add('       PK.EST_CRED AS QTDE,PK.EST_PCRE AS QTRL,');
    SQL.Add('       PK.EST_CDET AS CDET,PK.EST_CDSP AS CDSP,PK.IDCA AS IDSP,CS.USU_DUSU AS DESP,PK.EST_DTCA AS DTCA');

    SQL.Add('FROM CAD_PRO_SEP AS PK');
    SQL.Add('JOIN CAD_PRO     AS CP ON (CP.ID = PK.IDCP)');
    SQL.Add('JOIN CAD_USU     AS CS ON (CS.ID = PK.IDCA)');

    SQL.Add('WHERE PK.IDEP = :IDEP');
    SQL.Add('AND   CP.IDAK = :IDAK');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      CP.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.DTCA DESC');

    ParamByName('IDEP').Value := RECParametros.EP_ID;
    Prepare;
  end;

  { Pedidos de Compras em aberto }
  with PCA do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.IDEP,EP.FANTASIA AS DEEP,');
    SQL.Add('       CP.IDAK,CP.PRO_CART AS ARTIGO,CP.PRO_CPRO AS PRODUTO,CP.DGCP,');
    SQL.Add('       PK.EST_DOCU AS DEPC  ,PK.EST_CTNR AS CTNR,PK.EST_DTCA AS DTCA,PK.EST_DFAV AS FOPC,PK.EST_DUSU AS CCPC,');
    SQL.Add('       PK.EST_CRED AS QTDE  ,PK.EST_PCRE AS QTRL,');
    SQL.Add('       PK.EST_STFI AS STFI  ,PK.EST_RDES AS DTDE,PK.EST_DEXP AS DTPR');

    SQL.Add('FROM CAD_PRO_PRC AS PK');
    SQL.Add('JOIN CAD_PRO     AS CP ON (CP.ID = PK.IDCP)');
    SQL.Add('JOIN TAB_PAR_SIS AS EP ON (EP.ID = PK.IDEP)');

    SQL.Add('WHERE PK.IDEP = :IDEP');
    SQL.Add('AND   CP.IDAK = :IDAK');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      CP.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.EST_DEXP DESC');

    ParamByName('IDEP').Value := RECParametros.EP_ID;
    Prepare;
  end;

  { Pedidos de Compras Finalizadas }
  with PCF do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT FK.ID,CP.IDAK,CP.PRO_CART AS ARTIGO,CP.PRO_CPRO AS PRODUTO,FK.DGCP,');
    SQL.Add('       PK.ROM_DERO AS DEPC,FK.ROM_CTNR AS CTNR,PK.ROM_DTCA AS DTCA,');
    SQL.Add('       CF.FOR_FANT AS FOPC,CC.USU_DUSU AS CCPC,');
    SQL.Add('       FK.ROM_QTDE AS QTDE,FK.ROM_QTRL AS QTRL,FK.ROM_QTPD AS QTFI,FK.ROM_RLPD AS RLFI,');
    SQL.Add('       PK.ROM_STFI AS STFI,FK.ROM_RDES AS DTDE,FK.ROM_DBAI AS DTBX');

    SQL.Add('FROM ' + SLPrincipal.Values['ped_com_cab'] + ' AS PK');
    SQL.Add('JOIN     CAD_FOR AS CF ON (CF.ID = PK.IDCD)');
    SQL.Add('JOIN     CAD_USU AS CC ON (CC.ID = PK.IDCC)');
    SQL.Add('JOIN ' + SLPrincipal.Values['ped_com_ite'] + ' AS FK ON (FK.IDPK = PK.ID)');
    SQL.Add('JOIN     CAD_PRO AS CP ON (CP.ID = FK.IDCP)');

    SQL.Add('WHERE PK.IDEP = :IDEP');
    SQL.Add('AND   CP.IDAK = :IDAK');
    SQL.Add('AND   FK.ROM_DBAI IS NOT NULL');
    SQL.Add('AND   PK.DEST <> ''CANCELADO''' );

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      FK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY FK.ROM_DBAI DESC');

    ParamByName('IDEP').Value := RECParametros.EP_ID;
    Prepare;
  end;

  { Etiquetas Revisadas }
  with RV do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.*,');
    SQL.Add('       PV.ROM_DERO AS DEPV,PV.ROM_DROM AS DTPV,');
    SQL.Add('       CL.CLI_FANT AS DECL,CV.LOGIN    AS DECV,CR.REP_FANT AS DECR');

    SQL.Add('FROM VW_CAD_PRO_EST_REV AS PK');
    SQL.Add('LEFT JOIN ' + SLPrincipal.Values['ped_ven_cab']+' AS PV ON (PV.IDEP = PK.IDEP AND PV.ID = PK.CDPD)');
    SQL.Add('LEFT JOIN CAD_CLI       AS CL ON (CL.ID   = PV.IDCD)');
    SQL.Add('LEFT JOIN TAB_USER      AS CV ON (CV.ID   = PV.IDCV)');
    SQL.Add('LEFT JOIN CAD_REP       AS CR ON (CR.ID   = PV.IDCR)');

    SQL.Add('WHERE PK.IDEP = :IDEP');
    SQL.Add('AND   PK.IDAK = :IDAK');


    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.ID DESC');

    ParamByName('IDEP').Value := RECParametros.EP_ID;
    Prepare;
  end;
end;

procedure TFrmProduto_.ACTEdicaoExecute(Sender: TObject);
begin
  { EDIÇÕES }
  PCMOV.ActivePage := TSPR;
  PCCO.ActivePage  := TSCOA;

  ACTMPEdit.Enabled := True;

  DBGProdutosEPE_QTRL.Visible := (RECParametros.EST_QTRL);
  DBGProdutosEEP_QTRL.Visible := (RECParametros.EST_QTRL);

  TSLF.TabVisible := (RECParametros.EST_QTRL);

  DBGPRQTRL.Visible := (RECParametros.EST_QTRL);
  DBGPSQTRL.Visible := (RECParametros.EST_QTRL);
  DBGPPQTRL.Visible := (RECParametros.EST_QTRL);
  DBGLSQTRL.Visible := (RECParametros.EST_QTRL);
  DBGLEQTRL.Visible := (RECParametros.EST_QTRL);

  DBGLFCDET.Visible := not ((RECParametros.EP_ID = 4) and (RECUsuarios.Grupo  = 'PCP'));
  DBGLECDET.Visible := DBGLFCDET.Visible;
  DBGLSCDET.Visible := DBGLFCDET.Visible;
end;

procedure TFrmProduto_.ACTMPAppendExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmProduto_.ACTMPEditExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmProduto_.ACTMPDeleteExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmProduto_.ACTMPPostExecute(Sender: TObject);
begin
  if oYesNo(handle,'Salvar Edição ?') = mrNo then
  Abort;

  ACTCheckErrors.Execute;
  ACTCheckConstraints.Execute;
end;

procedure TFrmProduto_.ACTMPValidateExecute(Sender: TObject);
begin
  if oYesNo(handle,'Validar Edição ?') = mrNo then
  Abort;
end;

procedure TFrmProduto_.ACTMPCancelExecute(Sender: TObject);
begin
  REC_SHE_DEF.Editing := False;
  Close;
end;

procedure TFrmProduto_.ACTMEAppendExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmProduto_.ACTMEEditExecute(Sender: TObject);
begin
  if Assigned(FrmCAD_PRO_EDI) then FrmCAD_PRO_EDI.BringToFront else
  begin
    TFrmCAD_PRO_EDI._ExecForm(

    Self,           { Owner }
    FrmCAD_PRO_EDI, { Form }
    False,          { Pesquisa }
    fsMDIChild,     { Style }

    ArtigosIDAK.AsInteger,          { Código Principal }
    '',  { Descrição Principal }

    0, { Código Evento }
    1, { Tipo   Evento 0: Inclusão 1: Edição }

    '', { Tabela }
    ''  { Get }
    );
  end;
end;

procedure TFrmProduto_.ACTMEDeleteExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmProduto_.ACTMEPostExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmProduto_.ACTMECancelExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmProduto_.ACTRelatoriosExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmProduto_.ACTDashboardsExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmProduto_.ACTProgressBarExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmProduto_.ACTCheckConstraintsExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmProduto_.ACTCheckErrorsExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmProduto_.ACTSaidaExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmProduto_.ACTEveRegisterExecute(Sender: TObject);
begin
  { UNREGISTER EVENTS }
  if EEvent.Registered then
     try
       EEvent.UnregisterEvents;
       EEvent.Events.Clear;

       REC_SHE_DEF.FB_EVE_ADM := EmptyStr; { Admin  }
       REC_SHE_DEF.FB_EVE_PAD := EmptyStr; { Padrão }
       REC_SHE_DEF.FB_EVE_EDT := EmptyStr; { Edição }
     except
       on E: Exception do
       begin
         oErro(Handle,'Falha ao tentar limpar evento Padrão !' + #13 +
                      'Erro: ' + E.Message + '.');
       end;
     end;

  { REGISTER EVENTS }
  REC_SHE_DEF.FB_Event := TRIM(REC_SHE_DEF.FB_Event);
  if REC_SHE_DEF.FB_Event <> EmptyStr then
     try
       { ADMIN }
       REC_SHE_DEF.FB_EVE_ADM := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-ADM';
       EEvent.Events.Add(REC_SHE_DEF.FB_EVE_ADM);

       { PADRÃO }
       if not RECUsuarios.IS_EVE_ADM then
       begin
         REC_SHE_DEF.FB_EVE_PAD := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-' + oStrZero(RECUsuarios.ID,3);
         EEvent.Events.Add(REC_SHE_DEF.FB_EVE_PAD);
       end;

       { EDIÇÃO }
       if ACTEveRegister.Tag > 0 then
       begin
         REC_SHE_DEF.FB_EVE_EDT := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-EDT' + oStrZero(ACTEveRegister.Tag,3);
         EEvent.Events.Add(REC_SHE_DEF.FB_EVE_EDT);

         ACTEveRegister.Tag := 0;
       end;

       EEvent.RegisterEvents;
     except
       on E: Exception do
       begin
         oErro(Application.Handle,'Falha ao tentar registrar evento !' + #13 +
                                  'Erro: '   + E.Message + '.');
       end;
     end;
end;

procedure TFrmProduto_.ACTEveExecuteExecute(Sender: TObject);
var
  i: word;
begin
  if REC_SHE_DEF.FB_Event = EmptyStr then
  begin
    if not ALockWindowUpdate then { SQL Injection }
    oRefresh(Consulta);
  end else

  try
    oOTransact(TEvent);

    { ADMIN }
    SPEvent.Close;
    SPEvent.StoredProcName := 'SP_SHE_EVE';
    SPEvent.Prepare;

    for i := 0 to SPEvent.ParamCount - 1 do
    SPEvent.Params[i].Value := Null;

    SPEvent.Params[0].Value := REC_SHE_DEF.FB_EVE_ADM;
    SPEvent.Params[1].Value := REC_SHE_DEF.FB_EVE_PAD;
    SPEvent.Params[2].Value := REC_SHE_DEF.FB_EVE_EDT;
    SPEvent.ExecProc;

    oCTransact(TEvent);
  except
    on E: Exception do
    begin
      oCTransact(TEvent,ltRollback);
      oErro(Application.Handle,'Falha ao tentar executar evento !' + #13 +
                                REC_SHE_DEF.FB_Event   + '.' + #13 + #13 +
                                E.Message              + '.');
    end;
  end;
end;

procedure TFrmProduto_.ACTEveExpressExecute(Sender: TObject);
begin
  ACTEveRegister.Execute;
  ACTEveExecute.Execute;
end;

procedure TFrmProduto_.EEventEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  if ((RECUSuarios.IS_EVE_ADM    ) and (RightStr(EventName,3) = 'ADM')) or
     ((not RECUSuarios.IS_EVE_ADM) and (RightStr(EventName,3) = oStrZero(RECUsuarios.ID,3))) then

  if REC_SHE_DEF.FB_EventAlert then
  oRefresh(Consulta);
end;

procedure TFrmProduto_.BEPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  if not oEmpty(BEPesquisa.Text) then
  ACTPesquisa.Execute;
end;

procedure TFrmProduto_.DBGProdutosCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGProdutosREST.Index] = 'PRÉ' then
    begin
      AColor      := clInfoBk;
      AFont.Color := clBlack;
    end else
    if ANode.Values[DBGProdutosREST.Index] = 'I' then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end else
    begin
      if (AColumn = DBGProdutosEPE_QTDE) or (AColumn = DBGProdutosEPE_QTRL) then
      begin
        AColor      := $00B9FFB9;
        AFont.Color := clBlack;

        if ANode.Values[DBGProdutosEPE_QTDE.Index] < 0 then
        begin
          AColor      := $000024B3;
          AFont.Color := clWhite;
        end;

        if ANode.Values[DBGProdutosEPE_QTDE.Index] <> 0 then
           AFont.Style := [fsBold];
      end;

      if (AColumn = DBGProdutosEEP_QTDE) or (AColumn = DBGProdutosEEP_QTRL) then
      begin
        AColor      := $009FFF9F;
        AFont.Color := clBlack;

        if ANode.Values[DBGProdutosEEP_QTDE.Index] < 0 then
        begin
          AColor      := $000024B3;
          AFont.Color := clWhite;
        end;

        if ANode.Values[DBGProdutosEEP_QTDE.Index] <> 0 then
           AFont.Style := [fsBold];
      end;
    end;
  end;
end;

procedure TFrmProduto_.DBGPosicaoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ((AColumn = DBGPosicaoEA_QTDE) or (AColumn = DBGPosicaoEA_QTRL)) then
         if not oEmpty(ANode.Values[DBGPosicaoEA_QTDE.Index]) then
         begin
           AColor      := clInfoBk;
           AFont.Color := clBlack;
           AFont.Style := [fsBold];
         end;

    if ((AColumn = DBGPosicaoEB_QTDE) or (AColumn = DBGPosicaoEB_QTRL)) then
         if not oEmpty(ANode.Values[DBGPosicaoEB_QTDE.Index]) then
         begin
           AColor      := $000024B3;
           AFont.Color := clWhite;
           AFont.Style := [fsBold];
         end;

    if ((AColumn = DBGPosicaoEC_QTDE) or (AColumn = DBGPosicaoEC_QTRL)) then
         if not oEmpty(ANode.Values[DBGPosicaoEC_QTDE.Index]) then
         begin
           AColor      := clRed;
           AFont.Color := clWhite;
           AFont.Style := [fsBold];
         end;

    if ((AColumn = DBGPosicaoEPI_QTDE) or (AColumn = DBGPosicaoEPI_QTRL)) then
         if not oEmpty(ANode.Values[DBGPosicaoEPI_QTDE.Index]) then
         begin
           AColor      := $00E1AD40;
           AFont.Color := clWhite;
           AFont.Style := [fsBold];
         end;
  end;
end;

procedure TFrmProduto_.DTSProdutosDataChange(Sender: TObject; Field: TField);
begin
  if ALockWindowUpdate then
  Exit;

  DBGProdutos.ApplyBestFit(DBGProdutosRGCP);
  DBGProdutos.ApplyBestFit(DBGProdutosDGCP);
end;

procedure TFrmProduto_.DTSCAD_PRO_IMGDataChange(Sender: TObject;
  Field: TField);
begin
  if ALockWindowUpdate then
  Exit;

  PNLIMG_PIX.Caption := _oLoadJPG(CAD_PRO_IMGIMG_ID,CAD_PRO_IMGIMG_PAD,IIMG_PAD,True); { True - força visualização }

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

procedure TFrmProduto_.DBGPCACustomDrawCell(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ((AColumn = DBGPCAQTDE) or (AColumn = DBGPCAQTRL) or (AColumn = DBGPCACTNR)) then
    begin
      AFont.Color := clBlack;
      AColor      := $0080FFFF;
    end;
  end;
end;

procedure TFrmProduto_.DBGPCFCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ((AColumn = DBGPCFQTDE) or (AColumn = DBGPCFQTRL)) then
    begin
      AFont.Color := clBlack;
      AColor      := $0080FFFF;
    end;

    if ((AColumn = DBGPCFQTFI) or (AColumn = DBGPCFRLFI) or (AColumn = DBGPCFCTNR)) then
    begin
      AFont.Color := clBlack;
      AColor      := $00B9FFB9;
    end
  end;
end;


procedure TFrmProduto_.DTSArtigosDataChange(Sender: TObject; Field: TField);
begin
  if ALockWindowUpdate then
  Exit;

  DBGPPCTNR.Items.Clear;
  DBGPPCTNR.Items.Add('');

  if RECParametros.EP_ID = 1 then
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.CTNR,PK.SKU,FTIMESTAMP(MAX(PK.DTCA)) AS DTCA,FFMTINT(SUM(PK.QTDE)) AS QTDE,SUM(PK.QTDE)');
    SQL.Add('FROM (');
    SQL.Add('SELECT   PK.CTNR,CP.SKU,MAX(PK.DTCA) AS DTCA,SUM(PK.QTDE) AS QTDE');
    SQL.Add('FROM     CAD_PRO_ENI AS PK');
    SQL.Add('JOIN     CAD_PRO     AS CP ON (CP.ID = PK.IDCP)');
    SQL.Add('WHERE    PK.IDEP   = ''' + RECParametros.EP_ID       + '''');
    SQL.Add('AND      CP.ARTIGO = ''' + ArtigosARTIGO.AsString + '''');
    SQL.Add('AND      PK.REST   = ''E''');
    SQL.Add('GROUP BY 1,2');
    SQL.Add('UNION');
    SQL.Add('SELECT   PK.CTNR,CP.SKU,MIN(PK.DTCA) AS DTCA,SUM(PK.QTDE * -1) AS QTDE');
    SQL.Add('FROM     CAD_PRO_PRG AS PK');
    SQL.Add('JOIN     CAD_PRO     AS CP ON (CP.ID = PK.IDCP)');
    SQL.Add('WHERE    PK.IDEP   = ''' + RECParametros.EP_ID       + '''');
    SQL.Add('AND      CP.ARTIGO = ''' + ArtigosARTIGO.AsString + '''');
    SQL.Add('AND      PK.CTNR IS NOT NULL');
    SQL.Add('GROUP BY 1,2 ) AS PK');
    SQL.Add('GROUP BY 1,2');
    ExecQuery;
    
    while not SQLConsulta.Eof do
    begin
      if Current.Vars[0].AsString <> EmptyStr then
         DBGPPCTNR.Items.Add(TRIM(SQLConsulta.Current.Vars[0].AsString + ' | ' + SQLConsulta.Current.Vars[1].AsString + ' | Revisado: ' + SQLConsulta.Current.Vars[3].AsString + ' em ' + SQLConsulta.Current.Vars[2].AsString));

      SQLConsulta.Next;
    end;

  end;

  PNLINFADCAD.Height := IFThen(DBINFADCAD.Lines.Count = 0,00,
                        IFThen(DBINFADCAD.Lines.Count = 1,35,
                        IFThen(DBINFADCAD.Lines.Count = 2,40,
                        IFThen(DBINFADCAD.Lines.Count = 3,55,
                        IFThen(DBINFADCAD.Lines.Count = 4,65,75)))));
end;

procedure TFrmProduto_.DBGArtigosCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
     if ANode.Values[DBGArtigosREST.Index] = 'PRÉ' then
     begin
       AFont.Color := clBlack;
       AColor      := clInfoBk;
     end else
     if ANode.Values[DBGArtigosREST.Index] = 'I' then
     begin
       AFont.Color := clWhite;
       AColor      := $000024B3;
     end;
end;

procedure TFrmProduto_.DBGPRCCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if (AColumn = DBGPRCVPRC_COM_NAC)  and (ANode.Values[DBGPRCVPRC_COM_NAC.Index] > 0) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;  

    if (AColumn = DBGPRCVPRC_COM_IMP)  and (ANode.Values[DBGPRCVPRC_COM_IMP.Index] > 0) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;  

    if (AColumn = DBGPRCVPRC_PAD)     and (ANode.Values[DBGPRCVPRC_PAD.Index]     > 0) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;  

    if (AColumn = DBGPRCVPRC_PAD_PRZ) and (ANode.Values[DBGPRCVPRC_PAD_PRZ.Index] > 0) then
        AFont.Style := [fsBold];
    if (AColumn = DBGPRCVPRC_PAD_PRO) and (ANode.Values[DBGPRCVPRC_PAD_PRO.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGPRCVPRC_ATV)     and (ANode.Values[DBGPRCVPRC_ATV.Index]     > 0) then
        AFont.Style := [fsBold];
    if (AColumn = DBGPRCVPRC_ATV_PRZ) and (ANode.Values[DBGPRCVPRC_ATV_PRZ.Index] > 0) then
        AFont.Style := [fsBold];
    if (AColumn = DBGPRCVPRC_ATV_PRO) and (ANode.Values[DBGPRCVPRC_ATV_PRO.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGPRCVPRC_VAR)     and (ANode.Values[DBGPRCVPRC_VAR.Index]     > 0) then
        AFont.Style := [fsBold];
    if (AColumn = DBGPRCVPRC_VAR_PRZ) and (ANode.Values[DBGPRCVPRC_VAR_PRZ.Index] > 0) then
        AFont.Style := [fsBold];
    if (AColumn = DBGPRCVPRC_VAR_PRO) and (ANode.Values[DBGPRCVPRC_VAR_PRO.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGPRCVPRC_REP)     and (ANode.Values[DBGPRCVPRC_REP.Index]     > 0) then
        AFont.Style := [fsBold];
    if (AColumn = DBGPRCVPRC_REP_PRZ) and (ANode.Values[DBGPRCVPRC_REP_PRZ.Index] > 0) then
        AFont.Style := [fsBold];
    if (AColumn = DBGPRCVPRC_REP_PRO) and (ANode.Values[DBGPRCVPRC_REP_PRO.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGPRCVPRC_LJV)  and (ANode.Values[DBGPRCVPRC_LJV.Index] > 0) then
        AFont.Style := [fsBold];
    if (AColumn = DBGPRCPMKP_LJV)  and (ANode.Values[DBGPRCPMKP_LJV.Index] > 0) then
        AFont.Style := [fsBold];
  end;
end;

procedure TFrmProduto_.DBGFichaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
  if not ASelected then
  begin
    if (AColumn = DBGFichaPIPI)  and (ANode.Values[DBGFichaPIPI.Index] > 0) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;
    
    if (AColumn = DBGFichaPESO) and (ANode.Values[DBGFichaPESO.Index] > 0) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;  

    if (AColumn = DBGFichaMETRO) and (ANode.Values[DBGFichaMETRO.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGFichaGRAM) and (ANode.Values[DBGFichaGRAM.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGFichaREND) and (ANode.Values[DBGFichaREND.Index] > 0) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;  

    if (AColumn = DBGFichaLARU) and (ANode.Values[DBGFichaLARU.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGFichaLART) and (ANode.Values[DBGFichaLART.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGFichaENCL) and (ANode.Values[DBGFichaENCL.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGFichaENCC) and (ANode.Values[DBGFichaENCC.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGFichaELAL) and (ANode.Values[DBGFichaELAL.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGFichaELAC) and (ANode.Values[DBGFichaELAC.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGFichaUVEN_MUL)  and (ANode.Values[DBGFichaUVEN_MUL.Index] > 1) then
        AFont.Style := [fsBold];
        
    if (AColumn = DBGFichaUVEN_MIN)  and (ANode.Values[DBGFichaUVEN_MIN.Index] > 1) then
        AFont.Style := [fsBold];
  end;
end;

procedure TFrmProduto_._Relatorios(ANome: String);
begin
  FrmRelatorios := TFrmRelatorios.Create(Self,ANome,0);
  if ArtigosArtigo.AsString <> EmptyStr then
     FrmRelatorios.PEC1Consulta.Text := ArtigosArtigo.AsString;

  Try     FrmRelatorios.ShowModal;
  Finally FreeAndNil(FrmRelatorios);
  End;
end;

procedure TFrmProduto_.ACTProduto_EstoqueExecute(Sender: TObject);
begin
  _Relatorios('Estoque de Produtos');
end;

procedure TFrmProduto_.ACTProduto_Estoque_EtiquetaExecute(Sender: TObject);
begin
  _Relatorios('Estoque de produtos por número de etiquetas');
end;

procedure TFrmProduto_.ACTProduto_Ficha_TecnicaExecute(Sender: TObject);
var
  RECRelatorios: TRECRelatorios;
begin
  Initialize(RECRelatorios);
  FillChar(RECRelatorios,SizeOf(RECRelatorios),0);

  RECRelatorios.PrintTAG := 0;
  RECRelatorios.Handle   := Self.Handle;

  RECRelatorios.PEC1CodigoText    := 'TODOS';
  RECRelatorios.PEC2CodigoText    := 'TODOS';
  RECRelatorios.IEC1ConsultaField := 'CP.ARTIGO';
  RECRelatorios.PEC1ConsultaText  := ArtigosArtigo.AsString;
  RECRelatorios.IEC1ConsultaWhere := '=';
  RECRelatorios.PEC2ConsultaText  := 'TODOS';
  RECRelatorios.PEC3ConsultaText  := 'TODOS';
  RECRelatorios.PEC4ConsultaText  := 'TODOS';
  RECRelatorios.IEDataField       := '';

  if qrpFicha_Tecnica = Nil then
  begin
    qrpFicha_Tecnica := TqrpFicha_Tecnica.Create(Self,RECRelatorios);
    qrpFicha_Tecnica.WinControlFormCreate(qrpFicha_Tecnica);
  end;  
end;

procedure TFrmProduto_.DTSPRDataChange(Sender: TObject; Field: TField);
begin
  if ALockWindowUpdate then
  Exit;

  { Colunas }
  DBGPR.ApplyBestFit(DBGPRSKU   );
  DBGPR.ApplyBestFit(DBGPRDGCP  );
  DBGPR.ApplyBestFit(DBGPRD_DTCA);
  DBGPR.ApplyBestFit(DBGPRDEPK  );
  DBGPR.ApplyBestFit(DBGPRDECD  );
  DBGPR.ApplyBestFit(DBGPRDECR  );
end;

procedure TFrmProduto_.DTSPSDataChange(Sender: TObject; Field: TField);
begin
  if ALockWindowUpdate then
  Exit;

  { Colunas }
  DBGPS.ApplyBestFit(DBGPSPRODUTO);
  DBGPS.ApplyBestFit(DBGPSDGCP   );
  DBGPS.ApplyBestFit(DBGPSCLPS   );
  DBGPS.ApplyBestFit(DBGPSCDET   );
end;

procedure TFrmProduto_.DTSPPDataChange(Sender: TObject; Field: TField);
begin
  if ALockWindowUpdate then
  Exit;

  { Colunas }
  DBGPP.ApplyBestFit(DBGPPSKU );
  DBGPP.ApplyBestFit(DBGPPDGCP);
  DBGPP.ApplyBestFit(DBGPPDECR);
end;

procedure TFrmProduto_.DTSPCADataChange(Sender: TObject; Field: TField);
begin
  if ALockWindowUpdate then
  Exit;

  { Colunas }
  DBGPCA.ApplyBestFit(DBGPCAPRODUTO);
  DBGPCA.ApplyBestFit(DBGPCADGCP   );
end;

procedure TFrmProduto_.DTSPCFDataChange(Sender: TObject; Field: TField);
begin
  if ALockWindowUpdate then
  Exit;

  { Colunas }
  DBGPCF.ApplyBestFit(DBGPCFPRODUTO);
  DBGPCF.ApplyBestFit(DBGPCFDGCP   );
end;

procedure TFrmProduto_.LFBeforeOpen(DataSet: TDataSet);
begin
  DBGLFCTNR.Visible   := False;
  DBGLFLOTE.Visible   := False;
  DBGLFD_DEDF.Visible := False;
  DBGLFDEPD.Visible   := False;
  DBGLFDTPD.Visible   := False;
  DBGLFCDNF.Visible   := False;
  DBGLFDTNF.Visible   := False;
  DBGLFDECE.Visible   := False;
  DBGLFCDI.Visible    := False;
end;

procedure TFrmProduto_.DTSLFDataChange(Sender: TObject; Field: TField);
var
  PosCount: Word;
begin
  if ALockWindowUpdate then
  Exit;

  { Lote }
  DBGLFLOTE.Visible := (LFLOTE.AsString <> EmptyStr);

  { Pedido }
  if LFDEPD.AsString <> EmptyStr then
  begin
    DBGLFDEPD.Visible := True;
    DBGLFDTPD.Visible := True;
  end;

  { Nota Fiscal }
  if LFCDNF.AsInteger > 0 then
  begin
    DBGLFCDNF.Visible := True;
    DBGLFDTNF.Visible := True;
  end;

  { Emitente }
  if LFDECE.AsString <> EmptyStr then
     DBGLFDECE.Visible := True;

  { CDI }
  if LFCDI.AsString <> EmptyStr then
     DBGLFCDI.Visible := True;

  { Colunas }
  DBGLF.ApplyBestFit(DBGLFSKU );
  DBGLF.ApplyBestFit(DBGLFDGCP);
  DBGLF.ApplyBestFit(DBGLFDETP);

  { Informações Adicionais }
               PosCount := oPosCount(''#$D'',LFINFADCAD.AsString);
  PNLLF_INFADCAD.Height := IFThen((PosCount = 0) and (LFINFADCAD.AsString =  EmptyStr) ,00,
                           IFThen((PosCount = 0) and (LFINFADCAD.AsString <> EmptyStr) ,30,
                           IFThen((PosCount = 1),040,
                           IFThen((PosCount = 2),055,
                           IFThen((PosCount = 3),075,
                           IFThen((PosCount = 4),090,
                           IFThen((PosCount = 5),105,
                           IFThen((PosCount = 6),130,
                           IFThen((PosCount = 7),145,
                           IFThen((PosCount = 8),160,180))))))))));
end;

procedure TFrmProduto_.DTSLEDataChange(Sender: TObject; Field: TField);
begin
  if ALockWindowUpdate then
  Exit;

  { Colunas }
  DBGLE.ApplyBestFit(DBGLED_SKU);
  DBGLE.ApplyBestFit(DBGLEDGCP );
  DBGLE.ApplyBestFit(DBGLEDEDF );

  PNLINFADETQLE.Height := IFThen(DBINFADETQLE.Lines.Count = 0,00,
                          IFThen(DBINFADETQLE.Lines.Count = 1,25,
                          IFThen(DBINFADETQLE.Lines.Count = 2,40,
                          IFThen(DBINFADETQLE.Lines.Count = 3,55,
                          IFThen(DBINFADETQLE.Lines.Count = 4,65,
                          IFThen(DBINFADETQLE.Lines.Count = 5,80,
                          IFThen(DBINFADETQLE.Lines.Count = 6,90,
                          IFThen(DBINFADETQLE.Lines.Count = 7,110,130))))))));

  DBGLEDEOP.Visible := (not oEmpty(LEDEOP.AsString)) and (LEDEOP.AsString <> RECParametros.EST_DEOPERACAO);
  DBGLEDETP.Visible := (not oEmpty(LEDETP.AsString)) and (LEDETP.AsString <> RECParametros.EST_DETIPO    );
end;

procedure TFrmProduto_.DTSLSDataChange(Sender: TObject; Field: TField);
begin
  if ALockWindowUpdate then
  Exit;

  { Colunas }
  DBGLS.ApplyBestFit(DBGLSPRODUTO);
  DBGLS.ApplyBestFit(DBGLSDGCP   );
  DBGLS.ApplyBestFit(DBGLSCDET   );

  DBGLS.Bands[1].Visible := (LSCDET.AsInteger > 0);
  DBGLSLOTE.Visible      := (LSLOTE.AsString <> EmptyStr);
  DBGLSDESP.Visible      := (LSDESP.AsString <> EmptyStr);
  DBGLSDTSP.Visible      := (LSDESP.AsString <> EmptyStr);
end;

procedure TFrmProduto_.DBGLFCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if (AColumn = DBGLFDETP) or (AColumn = DBGLFLOTE) or (AColumn = DBGLFD_DEDF) then
    if ANode.Values[DBGLFDETP.Index] = '1º QUALIDADE A' then
    begin
      AColor      := clInfoBk;
      AFont.Color := clBlack;
    end else
    if ANode.Values[DBGLFDETP.Index] = '1º QUALIDADE B' then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end else
    if ANode.Values[DBGLFDETP.Index] = '2º QUALIDADE C' then
    begin
      AColor      := clRed;
      AFont.Color := clWhite;
    end else
    if ANode.Values[DBGLFDETP.Index] = 'PILOTAGEM' then
    begin
      AColor      := $00E1AD40;
      AFont.Color := clWhite;
    end;

    if (AColumn = DBGLFCDI) and (ANode.Values[DBGLFCDI.Index] = 1)  then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure TFrmProduto_.DBGLECustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if (((AColumn = DBGLEDETP) or (AColumn = DBGLELOTE)  or (AColumn = DBGLEDEDF)) and (ANode.Values[DBGLEDETP.Index] = '1º QUALIDADE A')) then
    begin
      AColor      := clInfoBk;
      AFont.Color := clBlack;
      AFont.Style := [fsBold];
    end;

    if (((AColumn = DBGLEDETP) or (AColumn = DBGLELOTE)  or (AColumn = DBGLEDEDF)) and (ANode.Values[DBGLEDETP.Index] = '1º QUALIDADE B')) then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;

    if (((AColumn = DBGLEDETP) or (AColumn = DBGLELOTE)  or (AColumn = DBGLEDEDF)) and (ANode.Values[DBGLEDETP.Index] = '2º QUALIDADE C')) then
    begin
      AColor      := clRed;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;

    if (((AColumn = DBGLEDETP) or (AColumn = DBGLELOTE)  or (AColumn = DBGLEDEDF)) and (ANode.Values[DBGLEDETP.Index] = 'PILOTAGEM')) then
    begin
      AColor      := $00E1AD40;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;
  end;
end;

procedure TFrmProduto_.ACTAtivoExecute(Sender: TObject);
begin
  ACTAtivo.Tag       := IFThen(ACTAtivo.Tag = 0,1,0);
  ACTInativo.Tag     := 0;
  ACTPreCadastro.Tag := 0;

  if BLBAtivo.AutoGrayScale then BLBAtivo.AutoGrayScale := False else BLBAtivo.AutoGrayScale := True;
  BLBInativo.AutoGrayScale     := True;
  BLBPreCadastro.AutoGrayScale := True;

  ACTPesquisa.Execute;
end;

procedure TFrmProduto_.ACTInativoExecute(Sender: TObject);
begin
  ACTAtivo.Tag       := 0;
  ACTInativo.Tag     := IFThen(ACTInativo.Tag = 0,1,0);
  ACTPreCadastro.Tag := 0;

  BLBAtivo.AutoGrayScale       := True;
  if BLBInativo.AutoGrayScale then BLBInativo.AutoGrayScale := False else BLBInativo.AutoGrayScale := True;
  BLBPreCadastro.AutoGrayScale := True;

  ACTPesquisa.Execute;
end;

procedure TFrmProduto_.ACTPreCadastroExecute(Sender: TObject);
begin
  ACTAtivo.Tag       := 0;
  ACTInativo.Tag     := 0;
  ACTPreCadastro.Tag := IFThen(ACTPreCadastro.Tag = 0,1,0);

  BLBAtivo.AutoGrayScale       := True;
  BLBInativo.AutoGrayScale     := True;
  if BLBPreCadastro.AutoGrayScale then BLBPreCadastro.AutoGrayScale := False else BLBPreCadastro.AutoGrayScale := True;

  ACTPesquisa.Execute;
end;

procedure TFrmProduto_.TSLFShow(Sender: TObject);
begin
  if LF.State = dsInactive then LF.Open;
end;

procedure TFrmProduto_.TSLEShow(Sender: TObject);
begin
  if LE.State = dsInactive then LE.Open;
end;

procedure TFrmProduto_.TSLSShow(Sender: TObject);
begin
  if LS.State = dsInactive then LS.Open;
end;

procedure TFrmProduto_.ArtigosAfterClose(DataSet: TDataSet);
begin
  if Produtos.State = dsBrowse then Produtos.Close;
  if LF.State       = dsBrowse then LF.Close;
  if LE.State       = dsBrowse then LE.Close;
  if LS.State       = dsBrowse then LS.Close;
  if RV.State       = dsBrowse then RV.Close;
  if PS.State       = dsBrowse then PS.Close;
  if PR.State       = dsBrowse then PR.Close;
  if PP.State       = dsBrowse then PP.Close;
  if PCA.State      = dsBrowse then PCA.Close;
  if PCF.State      = dsBrowse then PCF.Close;

  if (PCMOV.ActivePage  = TSLE) or (PCMOV.ActivePage = TSLS) then
      PCMOV.ActivePage := TSPR;
end;

procedure TFrmProduto_.DTSRVDataChange(Sender: TObject; Field: TField);
begin
  if ALockWindowUpdate then
  Exit;

  DBGRV.ApplyBestFit(DBGRVSKU );
  DBGRV.ApplyBestFit(DBGRVDGCP);
  DBGRV.ApplyBestFit(DBGRVCDET);
  DBGRV.ApplyBestFit(DBGRVDETP);
  DBGRV.ApplyBestFit(DBGRVDEDF);
  DBGRV.ApplyBestFit(DBGRVDECA);

  PNLINFADETQ.Height := IFThen(DBINFADETQ.Lines.Count = 0,00,
                        IFThen(DBINFADETQ.Lines.Count = 1,25,
                        IFThen(DBINFADETQ.Lines.Count = 2,40,
                        IFThen(DBINFADETQ.Lines.Count = 3,55,
                        IFThen(DBINFADETQ.Lines.Count = 4,65,
                        IFThen(DBINFADETQ.Lines.Count = 5,80,
                        IFThen(DBINFADETQ.Lines.Count = 6,90,
                        IFThen(DBINFADETQ.Lines.Count = 7,110,130))))))));
end;

procedure TFrmProduto_.DBGRVCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
     if  AColumn = DBGRVDEDF then
         if not oEmpty(ANode.Values[DBGRVDEDF.Index]) then
            if ANode.Values[DBGRVDETP.Index] = '1º QUALIDADE A' then
            begin
              AColor      := $00E1AD40;
              AFont.Color := clWhite;
            end else
            if ANode.Values[DBGRVDETP.Index] = '1º QUALIDADE B' then
            begin
              AColor      := clYellow;
              AFont.Color := clBlack;
            end else
            begin
              AColor      := $000024B3;
              AFont.Color := clWhite;
            end;
end;

procedure TFrmProduto_.ArtigosBeforeScroll(DataSet: TDataSet);
begin
  DBGProdutos.Bands[2].Visible := False;
  DBGProdutos.Bands[5].Visible := False;

  { Estoque Físico }
  DBGLFCTNR.Visible   := False;
  DBGLFLOTE.Visible   := False;
  DBGLFD_DEDF.Visible := False;
  DBGLFDEPD.Visible   := False;
  DBGLFDTPD.Visible   := False;
  DBGLFCDNF.Visible   := False;
  DBGLFDTNF.Visible   := False;
  DBGLFDECE.Visible   := False;
  DBGLFCDI.Visible    := False;

  { Pedidos }
  DBGLFDEPD.Visible := False;
  DBGLFDTPD.Visible := False;

  { Nota Fiscal }
  DBGLFCDNF.Visible := False;
  DBGLFDTNF.Visible := False;

  { Emitentes }
  DBGLFDECE.Visible := False;

  DBGLECTNR.Visible := False;
  DBGLELOTE.Visible := False;
  DBGLEDEDF.Visible := False;

  DBGLSCDET.Visible := False;

  { Programados }
  DBGPPQTRL.Visible := False; { Rolos }

  { Container }
  DBGPP.Bands[1].Visible := False;
  DBGPPCTNR_QTRL.Visible := False;
end;

procedure TFrmProduto_.ProdutosAfterScroll(DataSet: TDataSet);
begin
  if ProdutosEEP_QTDE.AsFloat > 0 then
     DBGProdutos.Bands[2].Visible := True;

  if (ProdutosCDCF.AsString <> EmptyStr) or (ProdutosCEANCF.AsString <> EmptyStr) then
      DBGProdutos.Bands[5].Visible := True;
end;

procedure TFrmProduto_.LSAfterScroll(DataSet: TDataSet);
begin
  if LSCDET.AsInteger > 0 then
     DBGLSCDET.Visible := True;
end;

procedure TFrmProduto_.ArtigosAfterOpen(DataSet: TDataSet);
begin
  if Produtos.State = dsInactive then Produtos.Open; { Produtos }

  if LF.State   = dsInactive then LF.Open; { Físico }

  if PR.State   = dsInactive then PR.Open; { Reservados  }
  if PS.State   = dsInactive then PS.Open; { Separados   }
  if PP.State   = dsInactive then PP.Open; { Programados }

  if PCA.State  = dsInactive then PCA.Open; { Compras Aberto  }
  if PCF.State  = dsInactive then PCF.Open; { Compras Fechado }

  if RV.State = dsInactive then RV.Open; { Revisados }

  if RECUsuarios.Grupo = 'PCP' then PCMOV.ActivePage := TSLF else
  if PS.RecNo > 0              then PCMOV.ActivePage := TSPS else

  if ProdutosEPP_QTDE.AsFloat > ProdutosEPR_QTDE.AsFloat then
     PCMOV.ActivePage := TSPP else

  if (ProdutosEPE_QTDE.AsFloat < 900) and (PP.RecNo > 0) then { DROPAR }
     PCMOV.ActivePage := TSPP else

  if PR.RecNo > 0 then PCMOV.ActivePage := TSPR else
  if LF.RecNo > 0 then PCMOV.ActivePage := TSLF else

  if PCA.RecNo > 0 then
  begin
    PCMOV.ActivePage := TSCO;
    PCCO.ActivePage  := TSCOA;
  end else

  if PCF.RecNo > 0 then
  begin
    PCMOV.ActivePage := TSCO;
    PCCO.ActivePage  := TSCOF;
  end;

  { FINALIZA FORM SCREEN }
  Screen.Cursor := crDefault;

  SBRodape.Panels[0].Text := 'Consulta';
  REC_SHE_DEF.FB_PSQ_INI  := False;

  if not ALockWindowUpdate then
  oSetFocus(DBGConsulta);
end;

procedure TFrmProduto_.ProdutosAfterOpen(DataSet: TDataSet);
begin
  if ProdutosDGCP.AsString <> EmptyStr then DBGProdutosDGCP.Field.FocusControl else
  DBGProdutosRGCP.Field.FocusControl;

  { Catálogo }
  if CAD_PRO_IMG.State = dsInactive then
  begin
    CAD_PRO_IMG.Prepare;
    CAD_PRO_IMG.Open;
  end;
end;

procedure TFrmProduto_.LFAfterOpen(DataSet: TDataSet);
begin
  if LFDGCP.AsString <> EmptyStr then DBGLFDGCP.Field.FocusControl else
     DBGLFSKU.Field.FocusControl;
end;

procedure TFrmProduto_.LEAfterOpen(DataSet: TDataSet);
begin
  if LEDGCP.AsString <> EmptyStr then DBGLEDGCP.Field.FocusControl else
     DBGLED_SKU.Field.FocusControl;
end;

procedure TFrmProduto_.LSAfterOpen(DataSet: TDataSet);
begin
  if LSDGCP.AsString <> EmptyStr then DBGLSDGCP.Field.FocusControl else
     DBGLSPRODUTO.Field.FocusControl;
end;

procedure TFrmProduto_.PRAfterOpen(DataSet: TDataSet);
begin
  if PRDGCP.AsString <> EmptyStr then DBGPRDGCP.Field.FocusControl else
     DBGPRSKU.Field.FocusControl;
end;

procedure TFrmProduto_.PSAfterOpen(DataSet: TDataSet);
begin
  if PSDGCP.AsString <> EmptyStr then DBGPSDGCP.Field.FocusControl else
     DBGPSPRODUTO.Field.FocusControl;
end;

procedure TFrmProduto_.PPAfterOpen(DataSet: TDataSet);
begin
  if PPDGCP.AsString <> EmptyStr then DBGPPDGCP.Field.FocusControl else
     DBGPPSKU.Field.FocusControl;
end;

procedure TFrmProduto_.PCAAfterOpen(DataSet: TDataSet);
begin
  if PCADGCP.AsString <> EmptyStr then DBGPCADGCP.Field.FocusControl else
     DBGPCAPRODUTO.Field.FocusControl;
end;

procedure TFrmProduto_.PCFAfterOpen(DataSet: TDataSet);
begin
  if PCFDGCP.AsString <> EmptyStr then DBGPCFDGCP.Field.FocusControl else
     DBGPCFPRODUTO.Field.FocusControl;
end;

procedure TFrmProduto_.DBGPPCTNRCloseUp(Sender: TObject;
  var Value: Variant; var Accept: Boolean);
  var
    AID: Integer;
begin
  AID := PPID.AsInteger;
  if Accept then
  try
    try
      oOTransact(TEdicao);
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO_PRG');
        SQL.Add('SET  CTNR = ''' + TRIM(LeftStr(Value,Pos('|',Value) - 1)) + '''');
        SQL.Add('WHERE  ID = ''' + PPID.AsString + '''');
        ExecQuery;
      end;
      oCTransact(TEdicao);
      BLBRefresh.Click;
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRollback);
        oException(Nil,'Falha ao tentar incluir container na programação !'      + #13 +
                       'Favor entrar em contato com o administrador do sistema.' + #13 + #13 +
                        E.Message);
      end;
    end;
  finally
    if (AID > 0) and (AID <> PPID.AsInteger) then
    begin
      PCMOV.ActivePage := TSPP;
      PP.Locate('ID',AID,[]);
    end;
  end;
end;

procedure TFrmProduto_.PPAfterScroll(DataSet: TDataSet);
begin
  { Rolos }
  if PPQTRL.AsInteger > 1 then
     DBGPPQTRL.Visible := True;

  { Container }
   if (PPCTNR.AsString <> EmptyStr) or (DBGPPCTNR.Items.Count > 1) then
     DBGPP.Bands[1].Visible := True;

  if PPCTNR_QTRL.AsInteger > 1 then
     DBGPPCTNR_QTRL.Visible := True;
end;

procedure TFrmProduto_.DBGPPCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ((AColumn = DBGPPCTNR) or (AColumn = DBGPPCTNR_QTDE) or (AColumn = DBGPPCTNR_QTRL)) and
        (ANode.Values[DBGPPCTNR.Index] <> NULL) then
    begin
      AColor      := $000000FD;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure TFrmProduto_.LFAfterScroll(DataSet: TDataSet);
begin
  { Container }
  if LFCTNR.AsString <> EmptyStr then
     DBGLFCTNR.Visible := True;

  { Defaitos }
  if LFD_DEDF.AsString <> EmptyStr then
     DBGLFD_DEDF.Visible := True;
end;

procedure TFrmProduto_.ProdutosBeforeClose(DataSet: TDataSet);
begin
  inherited;
  if CAD_PRO_IMG.State = dsBrowse then
     CAD_PRO_IMG.Close;
end;

end.
