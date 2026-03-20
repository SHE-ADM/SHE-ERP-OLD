unit pven_nfe;

interface

uses
  oPrincipal, StrInt, StrIntImp,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  ImgList, dxCntner, dxEditor, dxEdLib, StrUtils,
  StdCtrls, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxPageControl, IBDatabase, DB, IBCustomDataSet, IBQuery, dxDBELib,
  DBCtrls, Grids, DBGrids, math, dateutils, IBStoredProc, ComCtrls,
  Registry, jpeg, rxSpeedbar, IBEvents,
  XMLDom, XMLIntf, MSXMLDom, XMLDoc, XMLXForm, Clipbrd,
  IDGlobal, IBSQL, ActnList, cxGraphics, cxControls, dxStatusBar {Unit do componente Indy para usar Fetch() };

type
  Tfrmven_nfe = class(TForm)
    imageOPC: TImageList;
    imageITEM: TImageList;
    SpeedBar1: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedbarSection2: TSpeedbarSection;
    SpeedbarSection3: TSpeedbarSection;
    SpeedbarSection4: TSpeedbarSection;
    SpeedbarSection9: TSpeedbarSection;
    BSair: TSpeedItem;
    BFAV: TSpeedItem;
    SIGerarNFeXML: TSpeedItem;
    SIEnviaXML: TSpeedItem;
    SIValidaXML: TSpeedItem;
    BVis: TSpeedItem;
    BPri: TSpeedItem;
    BEnv: TSpeedItem;
    BImp: TSpeedItem;
    PNLPrincipal: TPanel;
    TSEdicao: TIBTransaction;
    NFE_001: TIBDataSet;
    dtsNFE_001: TDataSource;
    NFE_001ID: TIntegerField;
    NFE_001NFE_CCAB: TIntegerField;
    NFE_001NFE_CDNF: TIntegerField;
    NFE_001NFE_INDTOT: TIntegerField;
    NFE_001NFE_CFOP: TIBStringField;
    NFE_001NFE_CART: TIBStringField;
    NFE_001NFE_CPROD: TIBStringField;
    NFE_001NFE_CEAN: TIBStringField;
    NFE_001NFE_NCM: TIBStringField;
    NFE_001NFE_EXTIPI: TIBStringField;
    NFE_001NFE_DCOR: TIBStringField;
    NFE_001NFE_XPROD: TIBStringField;
    NFE_001NFE_UCOM: TIBStringField;
    NFE_001NFE_QCOM: TIBBCDField;
    NFE_001NFE_RCOM: TIntegerField;
    NFE_001NFE_VPROD: TIBBCDField;
    NFE_001NFE_VFRETE: TIBBCDField;
    NFE_001NFE_VSEG: TIBBCDField;
    NFE_001NFE_VDESC: TIBBCDField;
    NFE_001NFE_VOUTRO: TIBBCDField;
    NFE_001NFE_XLOCEMBARQ: TIBStringField;
    NFE_001NFE_UFEMBARQ: TIBStringField;
    NFE_001NFE_NDI: TIBStringField;
    NFE_001NFE_DDI: TDateField;
    NFE_001NFE_XLOCDESEMB: TIBStringField;
    NFE_001NFE_UFDESEMB: TIBStringField;
    NFE_001NFE_DDESEMB: TDateField;
    NFE_001NFE_CEXPORTADOR: TIBStringField;
    NFE_001NFE_NADICAO: TSmallintField;
    NFE_001NFE_NSEQADIC: TSmallintField;
    NFE_001NFE_CFABRICANTE: TIBStringField;
    NFE_001NFE_VDESCDI: TIBBCDField;
    NFE_001NFE_XPED: TIBStringField;
    NFE_001NFE_ORIG: TIBStringField;
    NFE_001NFE_CST: TIBStringField;
    NFE_001NFE_MODBC: TIBStringField;
    NFE_001NFE_PREDBC: TIBBCDField;
    NFE_001NFE_VBC: TIBBCDField;
    NFE_001NFE_PICMS: TIBBCDField;
    NFE_001NFE_VICMS: TIBBCDField;
    NFE_001NFE_MODBCST: TIBStringField;
    NFE_001NFE_MVAST: TIBBCDField;
    NFE_001NFE_PREDBCST: TIBBCDField;
    NFE_001NFE_VBCST: TIBBCDField;
    NFE_001NFE_VBCSTRET: TIBBCDField;
    NFE_001NFE_VICMSSTRET: TIBBCDField;
    NFE_001NFE_PICMSST: TIBBCDField;
    NFE_001NFE_VICMSST: TIBBCDField;
    NFE_001NFE_PCREDSN: TIBBCDField;
    NFE_001NFE_VCREDICMSSN: TIBBCDField;
    NFE_001NFE_CSTIPI: TIBStringField;
    NFE_001NFE_VBCIPI: TIBBCDField;
    NFE_001NFE_PIPI: TIBBCDField;
    NFE_001NFE_VIPI: TIBBCDField;
    NFE_001NFE_VBCIMP: TIBBCDField;
    NFE_001NFE_VDESPADU: TIBBCDField;
    NFE_001NFE_VIIIMP: TIBBCDField;
    NFE_001NFE_VIOFIMP: TIBBCDField;
    NFE_001NFE_CSTPIS: TIBStringField;
    NFE_001NFE_VBCPIS: TIBBCDField;
    NFE_001NFE_PPIS: TIBBCDField;
    NFE_001NFE_VPIS: TIBBCDField;
    NFE_001NFE_VBCPISST: TIBBCDField;
    NFE_001NFE_PPISST: TIBBCDField;
    NFE_001NFE_VPISST: TIBBCDField;
    NFE_001NFE_CSTCOFINS: TIBStringField;
    NFE_001NFE_VBCOFINS: TIBBCDField;
    NFE_001NFE_PCOFINS: TIBBCDField;
    NFE_001NFE_VCOFINS: TIBBCDField;
    NFE_001NFE_VBCOFINSST: TIBBCDField;
    NFE_001NFE_PCOFINSST: TIBBCDField;
    NFE_001NFE_VCOFINSST: TIBBCDField;
    NFE_001NFE_VBCISSQN: TIBBCDField;
    NFE_001NFE_VALIQISSQN: TIBBCDField;
    NFE_001NFE_VISSQN: TIBBCDField;
    NFE_001NFE_CMUNFGISSQN: TIBStringField;
    NFE_001NFE_CLISTSERV: TIntegerField;
    TAB_NAT: TIBQuery;
    consulta_S: TIBQuery;
    NFE_001NFE_VNF: TIBBCDField;
    tab_alq: TIBQuery;
    tab_alqID: TIntegerField;
    tab_alqALQ_ESTA: TIBStringField;
    tab_alqALQ_ICMS: TIBBCDField;
    dtsDUP_001: TDataSource;
    DUP_001: TIBDataSet;
    DUP_001ID: TIntegerField;
    DUP_001NFE_CDRO: TIntegerField;
    DUP_001NFE_CCAB: TIntegerField;
    DUP_001NFE_CFAV: TIntegerField;
    DUP_001NFE_DROM: TDateField;
    DUP_001NFE_CDNF: TIntegerField;
    DUP_001NFE_DNFE: TDateField;
    DUP_001NFE_TITU: TIBStringField;
    DUP_001NFE_DVEN: TDateField;
    DUP_001NFE_PARC: TIntegerField;
    DUP_001NFE_VDUP: TIBBCDField;
    DUP_001NFE_DPAG: TDateField;
    DUP_001NFE_VPAG: TIBBCDField;
    DUP_001NFE_VPEN: TIBBCDField;
    DUP_001NFE_OBSE: TMemoField;
    DUP_001NFE_STA: TIBStringField;
    TAB_PAG: TIBQuery;
    DUP_001NFE_STPD: TIBStringField;
    DUP_001NFE_STCO: TIBStringField;
    DUP_001NFE_STFI: TIBStringField;
    NFE_001NFE_METR: TIBBCDField;
    NFE_001NFE_PESO: TIBBCDField;
    NFE_001NFE_REND: TIBBCDField;
    NFE_001NFE_PSCN: TIBBCDField;
    NFE_001NFE_PSMR: TIBBCDField;
    CLI_001: TIBDataSet;
    dtsCLI_001: TDataSource;
    CLI_001ID: TIntegerField;
    CLI_001NFE_CCAB: TIntegerField;
    CLI_001NFE_CDNF: TIntegerField;
    CLI_001NFE_DCAD: TDateField;
    CLI_001NFE_VNF: TIBBCDField;
    NFE_001NFE_FRET: TIBStringField;
    NFE_001NFE_TIPO: TIBStringField;
    NFE_001NFE_REPR: TIBStringField;
    NFE_001NFE_FLAG: TIBStringField;
    NFE_001NFE_IPRO: TIntegerField;
    aux_S: TIBQuery;
    NFE_001NFE_VUNCOM: TFloatField;
    NFE_001NFE_VMULTA: TIBBCDField;
    NFE_001NFE_PIMP: TIBBCDField;
    NFE_001NFE_VAFRMM: TIBBCDField;
    NFE_001NFE_CNPJ: TIBStringField;
    NFE_001NFE_UFTERCEIRO: TIBStringField;
    NFE_001NFE_VI04: TIBBCDField;
    NFE_001NFE_VI07: TIBBCDField;
    NFE_001NFE_VI12: TIBBCDField;
    tab_alqALQ_ICME: TIBBCDField;
    NFE_001NFE_VBCSTDEST: TIBBCDField;
    NFE_001NFE_VICMSSTDEST: TIBBCDField;
    NFE_001NFE_VBCUFDEST: TIBBCDField;
    NFE_001NFE_PFCPUFDEST: TIBBCDField;
    NFE_001NFE_PICMSUFDEST: TIBBCDField;
    NFE_001NFE_PICMSINTER: TIBBCDField;
    NFE_001NFE_PICMSINTERPART: TIBBCDField;
    NFE_001NFE_VFCPUFDEST: TIBBCDField;
    NFE_001NFE_VICMSUFDEST: TIBBCDField;
    NFE_001NFE_VICMSUFREMET: TIBBCDField;
    NFE_001NFE_PREC: TFloatField;
    NFE_001NFE_GRAM: TIBBCDField;
    NFE_001NFE_LARG: TIBBCDField;
    PNLMargemE: TPanel;
    PNLMargemD: TPanel;
    PNLDestinatario: TPanel;
    PNLDestinatarioMargemE: TPanel;
    GBDestinatario: TGroupBox;
    LAIDCD: TLabel;
    GBCFOP: TGroupBox;
    LACFOP: TLabel;
    edtnat: TdxMaskEdit;
    cbcnat: TdxPickEdit;
    cbdnat: TdxPickEdit;
    PNLDestinatarioMargemD: TPanel;
    PNLRodape: TPanel;
    GBEdicao: TGroupBox;
    PCEdicao: TdxPageControl;
    TSProduto: TdxTabSheet;
    TSDuplicata: TdxTabSheet;
    DBGDUP: TdxDBGrid;
    DBGDUPNFE_CDNF: TdxDBGridMaskColumn;
    DBGDUPNFE_DNFE: TdxDBGridDateColumn;
    DBGDUPNFE_TITU: TdxDBGridMaskColumn;
    DBGDUPNFE_DVEN: TdxDBGridDateColumn;
    DBGDUPNFE_VDUP: TdxDBGridMaskColumn;
    SpeedBar2: TSpeedBar;
    SpeedbarSection10: TSpeedbarSection;
    siIDU: TSpeedItem;
    siDDU: TSpeedItem;
    siSDU: TSpeedItem;
    siCDU: TSpeedItem;
    siADU: TSpeedItem;
    TSServico: TdxTabSheet;
    DBGCLI: TdxDBGrid;
    DBGCLINFE_CDNF: TdxDBGridMaskColumn;
    DBGCLINFE_DCAD: TdxDBGridDateColumn;
    DBGCLINFE_VNF: TdxDBGridMaskColumn;
    SpeedBar3: TSpeedBar;
    SpeedbarSection14: TSpeedbarSection;
    siICL: TSpeedItem;
    siDCL: TSpeedItem;
    siSCL: TSpeedItem;
    siCCL: TSpeedItem;
    siACL: TSpeedItem;
    TSDestinatario: TdxTabSheet;
    TSTransporte: TdxTabSheet;
    TSEXImporta: TdxTabSheet;
    BVEXImporta: TBevel;
    LAnDI: TLabel;
    LAdDI: TLabel;
    LAdDesemb: TLabel;
    LAcFabricante: TLabel;
    LAnAdicao: TLabel;
    LAnSeqAdic: TLabel;
    EDnDI: TdxEdit;
    DEdDI: TdxDateEdit;
    DEdDesemb: TdxDateEdit;
    EDcFabricante: TdxEdit;
    SBEdicao: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    siINC: TSpeedItem;
    siDEL: TSpeedItem;
    siSAV: TSpeedItem;
    siCAN: TSpeedItem;
    siALT: TSpeedItem;
    NFE_001NFE_ITEMPED: TSmallintField;
    NFE_001NFE_NVE: TIBStringField;
    NFE_001NFE_CEST: TIBStringField;
    NFE_001NFE_PSBR: TIBBCDField;
    NFE_001NFE_PSLQ: TIBBCDField;
    NFE_001NFE_INDESCALA: TIBStringField;
    NFE_001NFE_TIPI: TSmallintField;
    NFE_001NFE_CLENQ: TIBStringField;
    NFE_001NFE_CENQ: TIBStringField;
    NFE_001NFE_CBENEF: TIBStringField;
    NFE_001NFE_NFCI: TIBStringField;
    NFE_001NFE_CNPJFAB: TLargeintField;
    NFE_001NFE_CBPRODUTO: TLargeintField;
    NFE_001NFE_CBUNIDADE: TLargeintField;
    NFE_001NFE_VALIQPROD: TIBBCDField;
    NFE_001NFE_VICMSOP: TIBBCDField;
    NFE_001NFE_PDIF: TIBBCDField;
    NFE_001NFE_VICMSDIF: TIBBCDField;
    NFE_001NFE_VBCFCP: TIBBCDField;
    NFE_001NFE_PFCP: TIBBCDField;
    NFE_001NFE_VFCP: TIBBCDField;
    NFE_001NFE_PST: TIBBCDField;
    NFE_001NFE_VBCFCPST: TIBBCDField;
    NFE_001NFE_PFCPST: TIBBCDField;
    NFE_001NFE_VFCPST: TIBBCDField;
    NFE_001NFE_VBCFCPSTRET: TIBBCDField;
    NFE_001NFE_PFCPSTRET: TIBBCDField;
    NFE_001NFE_VFCPSTRET: TIBBCDField;
    NFE_001NFE_VBCFCPUFDEST: TIBBCDField;
    NFE_001NFE_VICMSDESON: TIBBCDField;
    NFE_001NFE_MOTDESICMS: TSmallintField;
    NFE_001NFE_NDRAW: TIBStringField;
    NFE_001NFE_NRE: TIBStringField;
    NFE_001NFE_NRECOPI: TIBStringField;
    NFE_001NFE_CHNFE: TIBStringField;
    NFE_001NFE_QEXPORT: TIBBCDField;
    NFE_001NFE_VTOTTRIB: TIBBCDField;
    NFE_001NFE_CNPJPROD: TIBStringField;
    NFE_001NFE_INFADPROD: TIBStringField;
    NFE_001NFE_COMP: TIBStringField;
    NFE_001NFE_CSTA: TIBStringField;
    NFE_001NFE_CSTS: TIBStringField;
    GBNF: TGroupBox;
    LANotaFiscal: TLabel;
    LAFinNFe: TLabel;
    DEdhEmi: TdxDateEdit;
    DEdhSaiEnt: TdxDateEdit;
    IEFinNFe: TdxImageEdit;
    GBDuplicatas: TGroupBox;
    LADupl: TLabel;
    LAPrz: TLabel;
    cbdupl: TdxPickEdit;
    cbdpag: TdxImageEdit;
    cbprz: TdxPickEdit;
    GBInfCplNF: TGroupBox;
    PCInfoA: TdxPageControl;
    TSInfoNF: TdxTabSheet;
    EDINFADNF: TdxMemo;
    TSInfoFisco: TdxTabSheet;
    EDInfAdFisco: TdxMemo;
    GBInfoPedido: TGroupBox;
    EDInfAdPed: TdxMemo;
    PNLConsulta: TPanel;
    DBGEdicao: TdxDBGrid;
    DBGEdicaoNFE_ITEMPED: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CFOP: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CPROD: TdxDBGridMaskColumn;
    DBGEdicaoNFE_NCM: TdxDBGridMaskColumn;
    DBGEdicaoNFE_XPROD: TdxDBGridMaskColumn;
    DBGEdicaoNFE_ORIG: TdxDBGridPickColumn;
    DBGEdicaoNFE_CST: TdxDBGridPickColumn;
    DBGEdicaoNFE_UCOM: TdxDBGridPickColumn;
    DBGEdicaoNFE_QCOM: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VUNCOM: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VPROD: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VDESC: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VNF: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VBC: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PREDBC: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PICMS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VICMS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CSTIPI: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CENQ: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VBCIPI: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PIPI: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VIPI: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CSTPIS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VBCPIS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PPIS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VPIS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CSTCOFINS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VBCOFINS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PCOFINS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VCOFINS: TdxDBGridMaskColumn;
    GBInfoComp: TGroupBox;
    DBInfoComp: TdxDBMemo;
    DBGEdicaoNFE_FLAG: TdxDBGridMaskColumn;
    siCGE: TSpeedItem;
    TSEXExporta: TdxTabSheet;
    LAxLocDespacho: TLabel;
    EDxLocDespacho: TdxEdit;
    LAxLocExporta: TLabel;
    EDxLocExporta: TdxEdit;
    LAUFSaidaPais: TLabel;
    EDUFSaidaPais: TdxEdit;
    BVEXExporta: TBevel;
    EDCNPJProd: TdxMaskEdit;
    LACNPJProd: TLabel;
    LAnDraw: TLabel;
    LAnRE: TLabel;
    LAqExport: TLabel;
    LAchNFe: TLabel;
    CEqExport: TdxCurrencyEdit;
    EDxLocDesemb: TdxEdit;
    LAxLocDesemb: TLabel;
    LAUFDesemb: TLabel;
    EDCNPJTerceiro: TdxMaskEdit;
    LACNPJAdq: TLabel;
    IEtpIntermedio: TdxImageEdit;
    LAtpIntermedio: TLabel;
    IETpViaTransp: TdxImageEdit;
    LATpViaTransp: TLabel;
    LAUFTerceiro: TLabel;
    EDcExportador: TdxEdit;
    LAcExportador: TLabel;
    CEvAFRMM: TdxCurrencyEdit;
    LAvAFRMM: TLabel;
    CEnAdicao: TdxCurrencyEdit;
    CEnSeqAdic: TdxCurrencyEdit;
    EDchNFe: TdxEdit;
    EDnDraw: TdxEdit;
    EDnRE: TdxEdit;
    PNLFavorecido: TPanel;
    PEUFDesemb: TdxPickEdit;
    PEUFTerceiro: TdxPickEdit;
    NFE_001NFE_XPROX: TIBStringField;
    NFE_001NFE_QVOL: TIBBCDField;
    NFE_001NFE_ESP: TIBStringField;
    NFE_001NFE_QTUN: TIBBCDField;
    NFE_001NFE_CNPJTERCEIRO: TIBStringField;
    NFE_001NFE_TPINTERMEDIO: TIBStringField;
    NFE_001NFE_TPVIATRANSP: TIBStringField;
    NFE_001NFE_XLOCDESPACHO: TIBStringField;
    NFE_001NFE_UFSAIDAPAIS: TIBStringField;
    NFE_001NFE_UTRIB: TIBStringField;
    NFE_001NFE_UEXP: TIBStringField;
    NFE_001NFE_TRIBFEDNACIONAL: TIBBCDField;
    NFE_001NFE_TRIBFEDIMPORTADO: TIBBCDField;
    NFE_001NFE_TRIBESTADUAL: TIBBCDField;
    NFE_001NFE_TRIBMUNICIPAL: TIBBCDField;
    NFE_001NFE_TRIBIPI: TIBBCDField;
    NFE_001NFE_MVA: TIBBCDField;
    NFE_001NFE_QTRIB: TIBBCDField;
    NFE_001NFE_VUNTRIB: TFloatField;
    DBGEdicaoNFE_UTRIB: TdxDBGridMaskColumn;
    DBGEdicaoNFE_QTRIB: TdxDBGridCurrencyColumn;
    DBGEdicaoNFE_VUNTRIB: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VFRETE: TdxDBGridCurrencyColumn;
    DBGEdicaoNFE_VSEG: TdxDBGridCurrencyColumn;
    DBGEdicaoNFE_VOUTRO: TdxDBGridCurrencyColumn;
    GBFavEnd: TGroupBox;
    PCEndereco: TdxPageControl;
    TSEC: TdxTabSheet;
    BVEC: TBevel;
    LAxLgr: TLabel;
    LACep: TLabel;
    LAcMun: TLabel;
    LANRO: TLabel;
    LAxMun: TLabel;
    LAxBairro: TLabel;
    LAUF: TLabel;
    PETxLgr: TdxPickEdit;
    EDxLgr: TdxMaskEdit;
    EDCep: TdxMaskEdit;
    EDNRO: TdxMaskEdit;
    EDxCpl: TdxMaskEdit;
    EDxMun: TdxMaskEdit;
    EDxBairro: TdxMaskEdit;
    PEUF: TdxPickEdit;
    IExPais: TdxImageEdit;
    TSEE: TdxTabSheet;
    BVEE: TBevel;
    TSER: TdxTabSheet;
    BVER: TBevel;
    LAxCpl: TLabel;
    PNLFavFicha: TPanel;
    GBFicha: TGroupBox;
    LAxNome: TLabel;
    LACNPJ: TLabel;
    Label5: TLabel;
    LARegime: TLabel;
    LAindFinal: TLabel;
    LACredICMS: TLabel;
    LAIE: TLabel;
    LACPF: TLabel;
    LAISUF: TLabel;
    LAidEstrangeiro: TLabel;
    EDxNome: TdxMaskEdit;
    EDCNPJ: TdxMaskEdit;
    PEIE: TdxPickEdit;
    IEindIEDest: TdxImageEdit;
    IERegime: TdxImageEdit;
    IEindFinal: TdxImageEdit;
    IECredICMS: TdxImageEdit;
    EDCPF: TdxMaskEdit;
    EDISUF: TdxMaskEdit;
    EDidEstrangeiro: TdxMaskEdit;
    LAExLgr: TLabel;
    PEETxLgr: TdxPickEdit;
    EDExLgr: TdxMaskEdit;
    LAENRO: TLabel;
    EDENRO: TdxMaskEdit;
    LAExCpl: TLabel;
    EDExCpl: TdxMaskEdit;
    LAECep: TLabel;
    EDECep: TdxMaskEdit;
    LAEcMun: TLabel;
    PEEcMun: TdxPickEdit;
    LAExBairro: TLabel;
    EDExBairro: TdxMaskEdit;
    LAExMun: TLabel;
    EDExMun: TdxMaskEdit;
    LAEUF: TLabel;
    PEEUF: TdxPickEdit;
    IEExPais: TdxImageEdit;
    LARxLgr: TLabel;
    PERTxLgr: TdxPickEdit;
    EDRxLgr: TdxMaskEdit;
    LARNRO: TLabel;
    EDRNRO: TdxMaskEdit;
    LARxCpl: TLabel;
    EDRxCpl: TdxMaskEdit;
    LARCep: TLabel;
    EDRCep: TdxMaskEdit;
    LARcMun: TLabel;
    PERcMun: TdxPickEdit;
    LARxBairro: TLabel;
    EDRxBairro: TdxMaskEdit;
    LARxMun: TLabel;
    EDRxMun: TdxMaskEdit;
    LARUF: TLabel;
    PERUF: TdxPickEdit;
    IERxPais: TdxImageEdit;
    EDRCNPJOUCPF: TdxMaskEdit;
    LARCNPJOUCPF: TLabel;
    EDECNPJOUCPF: TdxMaskEdit;
    LAECNPJOUCPF: TLabel;
    PNLTFicha: TPanel;
    GBTravEnd: TGroupBox;
    Label17: TLabel;
    PETTxLgr: TdxPickEdit;
    EDTxLgr: TdxMaskEdit;
    Label20: TLabel;
    EDTNRO: TdxMaskEdit;
    Label26: TLabel;
    EDTxCpl: TdxMaskEdit;
    Label18: TLabel;
    EDTCep: TdxMaskEdit;
    Label22: TLabel;
    EDTxBairro: TdxMaskEdit;
    Label21: TLabel;
    EDTxMun: TdxMaskEdit;
    Label25: TLabel;
    PETUF: TdxPickEdit;
    GBTFicha: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    EDTxNome: TdxMaskEdit;
    EDTCNPJ: TdxMaskEdit;
    PETIE: TdxPickEdit;
    EDTCPF: TdxMaskEdit;
    EDTRG: TdxMaskEdit;
    GBTInfAd: TGroupBox;
    GBContatos: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    EDFone: TdxMaskEdit;
    EDDDD: TdxMaskEdit;
    PEEmail: TdxPickEdit;
    EDContato: TdxMaskEdit;
    GBTContatos: TGroupBox;
    Label7: TLabel;
    Label13: TLabel;
    EDTFone: TdxMaskEdit;
    EDTDDD: TdxMaskEdit;
    PETEmail: TdxPickEdit;
    EDTContato: TdxMaskEdit;
    EDTInfAd: TdxMemo;
    GBTVeiculo: TGroupBox;
    PETCarro: TdxPickEdit;
    Label8: TLabel;
    EDTRNTC: TdxMaskEdit;
    LARNTC: TLabel;
    PETPlaca: TdxPickEdit;
    Label39: TLabel;
    LAUFPlaca: TLabel;
    PETUFPlaca: TdxPickEdit;
    EDTFantasia: TdxMaskEdit;
    Label15: TLabel;
    GBInfAdC: TGroupBox;
    EDInfAdC: TdxMemo;
    GBInfAdF: TGroupBox;
    EDInfAdF: TdxMemo;
    tab_alqALQ_DESC: TIBStringField;
    tab_alqALQ_UFORIGEM: TIBStringField;
    tab_alqALQ_UFDESTINO: TIBStringField;
    tab_alqALQ_ICMO: TIBBCDField;
    tab_alqALQ_ICMD: TIBBCDField;
    tab_alqALQ_ICMI: TIBBCDField;
    tab_alqALQ_STMENSAGEM: TIBStringField;
    tab_alqALQ_STARTIGO: TIBStringField;
    tab_alqALQ_STPROTOCOLO: TIBStringField;
    tab_alqALQ_FCP: TIBBCDField;
    NFE_001NFE_STAV: TIBStringField;
    NFE_001NFE_INFADTRIB: TIBStringField;
    IEEnvMail: TdxImageEdit;
    Label19: TLabel;
    TAB_PAGID: TIntegerField;
    TAB_PAGPAG_DPAG: TIBStringField;
    TAB_PAGPAG_D001: TIntegerField;
    TAB_PAGPAG_D002: TIntegerField;
    TAB_PAGPAG_D003: TIntegerField;
    TAB_PAGPAG_D004: TIntegerField;
    TAB_PAGPAG_D005: TIntegerField;
    TAB_PAGPAG_D006: TIntegerField;
    TAB_PAGPAG_D007: TIntegerField;
    TAB_PAGPAG_D008: TIntegerField;
    TAB_PAGPAG_D009: TIntegerField;
    TAB_PAGPAG_D010: TIntegerField;
    TAB_PAGPAG_D011: TIntegerField;
    TAB_PAGPAG_D012: TIntegerField;
    TAB_PAGPAG_D013: TIntegerField;
    TAB_PAGPAG_D014: TIntegerField;
    TAB_PAGPAG_D015: TIntegerField;
    TAB_PAGPAG_D016: TIntegerField;
    TAB_PAGPAG_D017: TIntegerField;
    TAB_PAGPAG_D018: TIntegerField;
    TAB_PAGPAG_D019: TIntegerField;
    TAB_PAGPAG_D020: TIntegerField;
    TAB_PAGPAG_PARC: TSmallintField;
    TAB_PAGPAG_PRAZ: TSmallintField;
    TAB_PAGPAG_DUPL: TIBStringField;
    TAB_PAGPAG_STA: TIBStringField;
    TAB_PAGPAG_ENVWEB: TSmallintField;
    NFE_001NFE_CDEP: TSmallintField;
    NFE_001NFE_VI18: TIBBCDField;
    DBGEdicaoNFE_VBCST: TdxDBGridCurrencyColumn;
    DBGEdicaoNFE_PICMSST: TdxDBGridCurrencyColumn;
    DBGEdicaoNFE_VICMSST: TdxDBGridCurrencyColumn;
    DBGEdicaoNFE_EXTIPI: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CEST: TdxDBGridMaskColumn;
    DBGEdicaoNFE_NFCI: TdxDBGridMaskColumn;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    SQLFKConsulta: TIBSQL;
    BECMun: TdxButtonEdit;
    TAB_NATID: TIntegerField;
    TAB_NATNAT_CNAT: TIBStringField;
    TAB_NATNAT_CFOP: TIBStringField;
    TAB_NATNAT_DNAT: TIBStringField;
    TAB_NATNAT_TIPO: TIBStringField;
    TAB_NATNAT_FATU: TIBStringField;
    TAB_NATNAT_OPER: TIBStringField;
    TAB_NATNAT_TPNF: TIBStringField;
    TAB_NATNAT_CCST: TIBStringField;
    TAB_NATNAT_CSTS: TIBStringField;
    TAB_NATNAT_CSTA: TIBStringField;
    TAB_NATNAT_BIPI: TIBStringField;
    TAB_NATNAT_FRET: TIBStringField;
    TAB_NATNAT_MATE: TIBStringField;
    TAB_NATNAT_PENF: TIBBCDField;
    TAB_NATNAT_CSTI: TIBStringField;
    TAB_NATNAT_CSTI0: TIBStringField;
    TAB_NATNAT_CSTP: TIBStringField;
    TAB_NATNAT_PIPP: TIBBCDField;
    TAB_NATNAT_PIPP_SIM: TIBBCDField;
    TAB_NATNAT_CSTC: TIBStringField;
    TAB_NATNAT_PIPC: TIBBCDField;
    TAB_NATNAT_PIPC_SIM: TIBBCDField;
    TAB_NATNAT_STA: TIBStringField;
    TAB_NATNAT_INDT: TIBStringField;
    TAB_NATNAT_INV: TIBStringField;
    TAB_NATNAT_REDBC: TIBBCDField;
    TAB_NATNAT_OBSE: TMemoField;
    TAB_NATCENQ: TIBStringField;
    TAB_NATNAT_PIPP_REAL: TIBBCDField;
    TAB_NATNAT_PIPC_REAL: TIBBCDField;
    SQLSEdicao: TIBSQL;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    CECDNF: TdxCurrencyEdit;
    GBPED: TGroupBox;
    EDCDPD: TdxMaskEdit;
    LACDPV: TLabel;
    CECDRO: TdxCurrencyEdit;
    LACDRO: TLabel;
    CEVTRO: TdxCurrencyEdit;
    CEVTPV: TdxCurrencyEdit;
    GroupBox1: TGroupBox;
    LAPDSC: TLabel;
    CEVDSC: TdxCurrencyEdit;
    CEPDSC: TdxCurrencyEdit;
    CEIDCD: TdxCurrencyEdit;
    EDDECD: TdxMaskEdit;
    GBTotais: TGroupBox;
    LAVBC: TLabel;
    LAVICMS: TLabel;
    LAVIPI: TLabel;
    LAVPIS: TLabel;
    LAVCOFINS: TLabel;
    LAVNF: TLabel;
    LAVST: TLabel;
    LAVCREDICMSSN: TLabel;
    LAVICMSDeson: TLabel;
    LAVTotTrib: TLabel;
    Label1: TLabel;
    edvFCPUFDest: TdxMaskEdit;
    EDvICMSUFDest: TdxMaskEdit;
    EDVDup: TdxMaskEdit;
    EDVII: TdxMaskEdit;
    EDTRCom: TdxMaskEdit;
    EDVOutro: TdxMaskEdit;
    EDVST: TdxMaskEdit;
    EDVBCST: TdxMaskEdit;
    EDVProd: TdxMaskEdit;
    EDVBC: TdxMaskEdit;
    EDVICMS: TdxMaskEdit;
    EDVIPI: TdxMaskEdit;
    EDVPIS: TdxMaskEdit;
    EDVCOFINS: TdxMaskEdit;
    EDVNF: TdxMaskEdit;
    EDTQCom: TdxMaskEdit;
    EDVICMSDeson: TdxMaskEdit;
    EDVTotTrib: TdxMaskEdit;
    GBTranslado: TGroupBox;
    PCFrete: TdxPageControl;
    TSVOL: TdxTabSheet;
    TSAVOL: TdxTabSheet;
    DBGEdicaoNFE_PSBR: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PSLQ: TdxDBGridMaskColumn;
    PNLXPROX: TPanel;
    TSOVOL: TdxTabSheet;
    PCVOL: TdxPageControl;
    TSVOL2: TdxTabSheet;
    TSVOL3: TdxTabSheet;
    TSVOL4: TdxTabSheet;
    TSVOL5: TdxTabSheet;
    TSVOL6: TdxTabSheet;
    TSVOL7: TdxTabSheet;
    TSVOL8: TdxTabSheet;
    BVOL2: TBevel;
    BVOL3: TBevel;
    BVOL4: TBevel;
    BVOL5: TBevel;
    BVOL6: TBevel;
    BVOL7: TBevel;
    BVOL8: TBevel;
    BOVOL: TBevel;
    EDNLacres2: TdxEdit;
    EDNLacres1: TdxEdit;
    Label3: TLabel;
    Label2: TLabel;
    BVOL: TBevel;
    Label23: TLabel;
    Label24: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label51: TLabel;
    Label85: TLabel;
    PEDECT: TdxPickEdit;
    V1_EDESP: TdxEdit;
    IEModFrete: TdxImageEdit;
    CEVFRT: TdxCurrencyEdit;
    V1_CEQVOL: TdxCurrencyEdit;
    V1_CEPSBR: TdxCurrencyEdit;
    V1_CEPSLQ: TdxCurrencyEdit;
    CEVSEG: TdxCurrencyEdit;
    V2_EDESP: TdxEdit;
    V2_CEQVOL: TdxCurrencyEdit;
    V2_CEPSBR: TdxCurrencyEdit;
    V2_CEPSLQ: TdxCurrencyEdit;
    Label32: TLabel;
    Label28: TLabel;
    Label16: TLabel;
    V3_EDESP: TdxEdit;
    V3_CEQVOL: TdxCurrencyEdit;
    V3_CEPSBR: TdxCurrencyEdit;
    V3_CEPSLQ: TdxCurrencyEdit;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    V4_EDESP: TdxEdit;
    V4_CEQVOL: TdxCurrencyEdit;
    V4_CEPSBR: TdxCurrencyEdit;
    V4_CEPSLQ: TdxCurrencyEdit;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    V5_EDESP: TdxEdit;
    V5_CEQVOL: TdxCurrencyEdit;
    V5_CEPSBR: TdxCurrencyEdit;
    V5_CEPSLQ: TdxCurrencyEdit;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    V6_EDESP: TdxEdit;
    V6_CEQVOL: TdxCurrencyEdit;
    V6_CEPSBR: TdxCurrencyEdit;
    V6_CEPSLQ: TdxCurrencyEdit;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    V7_EDESP: TdxEdit;
    V7_CEQVOL: TdxCurrencyEdit;
    V7_CEPSBR: TdxCurrencyEdit;
    V7_CEPSLQ: TdxCurrencyEdit;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    V8_EDESP: TdxEdit;
    V8_CEQVOL: TdxCurrencyEdit;
    V8_CEPSBR: TdxCurrencyEdit;
    V8_CEPSLQ: TdxCurrencyEdit;
    Label49: TLabel;
    Label50: TLabel;
    Label52: TLabel;
    V1_CENVOL: TdxCurrencyEdit;
    Label53: TLabel;
    Label54: TLabel;
    V1_EDMarca: TdxEdit;
    Label55: TLabel;
    V2_CENVOL: TdxCurrencyEdit;
    Label56: TLabel;
    V2_EDMarca: TdxEdit;
    Label57: TLabel;
    V3_CENVOL: TdxCurrencyEdit;
    Label58: TLabel;
    V3_EDMarca: TdxEdit;
    Label59: TLabel;
    V4_CENVOL: TdxCurrencyEdit;
    Label60: TLabel;
    V4_EDMarca: TdxEdit;
    Label61: TLabel;
    V5_CENVOL: TdxCurrencyEdit;
    Label62: TLabel;
    V5_EDMarca: TdxEdit;
    Label63: TLabel;
    V6_CENVOL: TdxCurrencyEdit;
    Label64: TLabel;
    V6_EDMarca: TdxEdit;
    Label65: TLabel;
    V7_CENVOL: TdxCurrencyEdit;
    Label66: TLabel;
    V7_EDMarca: TdxEdit;
    Label67: TLabel;
    V8_CENVOL: TdxCurrencyEdit;
    Label68: TLabel;
    V8_EDMarca: TdxEdit;
    IETPAG: TdxImageEdit;
    Label69: TLabel;
    IETPNF: TdxImageEdit;
    Label70: TLabel;
    IEINDPAG: TdxImageEdit;
    Label73: TLabel;
    CETSDE: TdxCurrencyEdit;
    QConsulta: TIBQuery;
    TSNFTriangular: TdxTabSheet;
    EDR_DECD: TdxMaskEdit;
    Label76: TLabel;
    BRemessa: TBevel;
    Label77: TLabel;
    PER_TXLGR: TdxPickEdit;
    EDR_XLGR: TdxMaskEdit;
    Label78: TLabel;
    EDR_NRO: TdxMaskEdit;
    EDR_XCPL: TdxMaskEdit;
    EDR_CEP: TdxMaskEdit;
    Label79: TLabel;
    Label80: TLabel;
    EDR_xBAIRRO: TdxMaskEdit;
    EDR_XMUN: TdxMaskEdit;
    Label81: TLabel;
    Label82: TLabel;
    PER_UF: TdxPickEdit;
    Label83: TLabel;
    CER_CDNF: TdxCurrencyEdit;
    Label84: TLabel;
    Label86: TLabel;
    EDR_CNPJ: TdxMaskEdit;
    Label87: TLabel;
    PER_IE: TdxPickEdit;
    SQLEvent: TIBSQL;
    NFE_001NFE_CDRO: TLargeintField;
    NFE_001NFE_DERO: TIBStringField;
    NFE_001NFE_CDBX: TLargeintField;
    CER_IDCD: TdxCurrencyEdit;
    Label88: TLabel;
    IEITEMPED: TdxImageEdit;
    DBGEdicaoNFE_XPED: TdxDBGridMaskColumn;
    CEIDCT: TdxCurrencyEdit;
    CEVBCCREDICMSSN: TdxCurrencyEdit;
    CEVCREDICMSSN: TdxCurrencyEdit;
    NFE_001NFE_VBCCREDICMSSN: TIBBCDField;
    IEICMS_ST: TdxImageEdit;
    Label89: TLabel;
    Label90: TLabel;
    CHK_XML: TdxCheckEdit;
    NFE_001NFE_INDDEDUZDESON: TIBStringField;
    NFE_001CP_IDEP: TSmallintField;
    NFE_001IDAK: TLargeintField;
    NFE_001IDEK: TLargeintField;
    NFE_001UCDBE: TIBStringField;
    NFE_001UQTRL: TSmallintField;
    NFE_001UQTMD: TIBBCDField;
    NFE_001UPSBR: TIBBCDField;
    NFE_001UPSLQ: TIBBCDField;
    NFE_001IDEV: TLargeintField;
    NFE_001CDEV: TSmallintField;
    NFE_001IP: TIBStringField;
    NFE_001HOST: TIBStringField;
    NFE_001FLAG: TIntegerField;
    NFE_001COL_ID: TSmallintField;
    NFE_001COL_DESC: TIBStringField;
    NFE_001CAT_ID: TSmallintField;
    NFE_001CAT_DESC: TIBStringField;
    NFE_001CF_ID: TSmallintField;
    NFE_001CF_FANTASIA: TIBStringField;
    NFE_001CF_RAZAO: TIBStringField;
    NFE_001CF_CNPJ: TIBStringField;
    NFE_001CF_CDPD: TLargeintField;
    NFE_001CF_DEPD: TIBStringField;
    NFE_001CF_CDNF: TLargeintField;
    NFE_001CF_SKU: TIBStringField;
    NFE_001CF_CEAN: TIBStringField;
    NFE_001CF_DECP: TIBStringField;
    NFE_001CF_UCOM: TIBStringField;
    NFE_001CF_UESP_RF: TIBStringField;
    NFE_001CF_UESP_QT: TIBBCDField;
    NFE_001CF_VPRC_PAD_ORI: TIBStringField;
    NFE_001CF_VPRC_PAD: TFloatField;
    NFE_001CF_VPRC_COM: TFloatField;
    NFE_001CF_PIPI: TIBBCDField;
    NFE_001IS_PDSC: TSmallintField;
    NFE_001PBCOP: TIBBCDField;
    NFE_001UFST: TIBStringField;
    NFE_001UF: TIBStringField;
    DBGEdicaoUF: TdxDBGridMaskColumn;
    CEVNF: TdxCurrencyEdit;
    CEVDUP: TdxCurrencyEdit;
    ALPrincipal: TActionList;
    ACTExecEvent: TAction;
    ACTGeraNFeXML: TAction;
    ACTValidaXML: TAction;
    ACTGeraLote: TAction;
    ACTEnviaXML: TAction;
    ACTConsultaXML: TAction;
    ACTCheckConstraints: TAction;
    ACTCheckErrors: TAction;
    ACTCheckNum: TAction;
    EEventAdmin: TIBEvents;
    SBRodape: TdxStatusBar;
    SQLPKConsulta: TIBSQL;
    SpeedItem1: TSpeedItem;
    ACTGeraDanfe: TAction;
    ACTExecNotaFiscal: TAction;
    ACTExecRomaneio: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LAIDCDClick(Sender: TObject);
    procedure siINCClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure siCANClick(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure NFE_001AfterDelete(DataSet: TDataSet);
    procedure NFE_001AfterOpen(DataSet: TDataSet);
    procedure NFE_001AfterPost(DataSet: TDataSet);
    procedure NFE_001BeforeCancel(DataSet: TDataSet);
    procedure NFE_001NewRecord(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSairClick(Sender: TObject);
    procedure cbduplChange(Sender: TObject);
    procedure DUP_001AfterPost(DataSet: TDataSet);
    procedure DUP_001AfterDelete(DataSet: TDataSet);
    procedure DUP_001AfterEdit(DataSet: TDataSet);
    procedure DUP_001NewRecord(DataSet: TDataSet);
    procedure BFAVClick(Sender: TObject);
    procedure DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BVisClick(Sender: TObject);
    procedure BPriClick(Sender: TObject);
    procedure BEnvClick(Sender: TObject);
    procedure EDidEstrangeiroValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CLI_001AfterCancel(DataSet: TDataSet);
    procedure CLI_001AfterDelete(DataSet: TDataSet);
    procedure CLI_001AfterEdit(DataSet: TDataSet);
    procedure CLI_001AfterInsert(DataSet: TDataSet);
    procedure CLI_001AfterOpen(DataSet: TDataSet);
    procedure CLI_001AfterPost(DataSet: TDataSet);
    procedure CLI_001BeforeCancel(DataSet: TDataSet);
    procedure CLI_001NewRecord(DataSet: TDataSet);
    procedure CLI_001BeforePost(DataSet: TDataSet);
    procedure siICLClick(Sender: TObject);
    procedure siDCLClick(Sender: TObject);
    procedure siSCLClick(Sender: TObject);
    procedure siCCLClick(Sender: TObject);
    procedure siACLClick(Sender: TObject);
    procedure siIDUClick(Sender: TObject);
    procedure siDDUClick(Sender: TObject);
    procedure siSDUClick(Sender: TObject);
    procedure siCDUClick(Sender: TObject);
    procedure siADUClick(Sender: TObject);
    procedure DUP_001BeforeCancel(DataSet: TDataSet);
    procedure NFE_001NFE_CFOPValidate(Sender: TField);
    procedure NFE_001BeforePost(DataSet: TDataSet);
    procedure DBGEdicaoDblClick(Sender: TObject);
    procedure DBGEdicaoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure BNFeClick(Sender: TObject);
    procedure PEDECTValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure DUP_001BeforePost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IEFinNFeChange(Sender: TObject);
    procedure V1_CEPSBRValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure V1_CEPSLQValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbcnatValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DEdhSaiEntDblClick(Sender: TObject);
    procedure DBGEdicaoNFE_QCOMValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoNFE_VUNCOMValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure NFE_001AfterEdit(DataSet: TDataSet);
    procedure NFE_001AfterInsert(DataSet: TDataSet);
    procedure DBGEdicaoNFE_VICMSValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoNFE_VBCValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DBGEdicaoNFE_PICMSValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoNFE_VBCIPIValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoNFE_PIPIValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoNFE_VIPIValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure siCGEClick(Sender: TObject);
    procedure DBGEdicaoNFE_VPRODValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure IEindIEDestChange(Sender: TObject);
    procedure cbcnatChange(Sender: TObject);
    procedure NFE_001NFE_UCOMValidate(Sender: TField);
    procedure NFE_001NFE_VPRODValidate(Sender: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CEVFRTValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEVSEGValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EDInfAdFKeyPress(Sender: TObject; var Key: Char);
    procedure EDTQComKeyPress(Sender: TObject; var Key: Char);
    procedure IEindFinalChange(Sender: TObject);
    procedure NFE_001NFE_PIPIValidate(Sender: TField);
    procedure DBGEdicaoNFE_NCMValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure BECMunButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure DUP_001AfterOpen(DataSet: TDataSet);
    procedure TAB_PAGAfterOpen(DataSet: TDataSet);
    procedure CEPDSCValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CECDNFValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure CEIDCDValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure PEUFChange(Sender: TObject);
    procedure dtsNFE_001DataChange(Sender: TObject; Field: TField);
    procedure NFE_001BeforeInsert(DataSet: TDataSet);
    procedure V1_CEQVOLChange(Sender: TObject);
    procedure dtsNFE_001StateChange(Sender: TObject);
    procedure EDR_DECDValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure IEEnvMailChange(Sender: TObject);
    procedure IEITEMPEDChange(Sender: TObject);
    procedure EDCDPDValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure NFE_001NFE_CSTValidate(Sender: TField);
    procedure NFE_001NFE_CSTIPIValidate(Sender: TField);
    procedure EDISUFValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure BECMunValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure IEICMS_STChange(Sender: TObject);
    procedure PER_UFChange(Sender: TObject);
    procedure PEEUFChange(Sender: TObject);
    procedure PERUFChange(Sender: TObject);
    procedure PETUFChange(Sender: TObject);
    procedure IETPAGChange(Sender: TObject);
    procedure NFE_001NFE_NCMValidate(Sender: TField);
    procedure NFE_001NFE_ORIGValidate(Sender: TField);
    procedure NFE_001BeforeOpen(DataSet: TDataSet);
    procedure NFE_001AfterScroll(DataSet: TDataSet);
    procedure NFE_001UFValidate(Sender: TField);
    procedure DBGEdicaoNFE_CFOPValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure ACTGeraNFeXMLExecute(Sender: TObject);
    procedure ACTValidaXMLExecute(Sender: TObject);
    procedure ACTGeraLoteExecute(Sender: TObject);
    procedure ACTEnviaXMLExecute(Sender: TObject);
    procedure ACTConsultaXMLExecute(Sender: TObject);
    procedure ACTCheckConstraintsExecute(Sender: TObject);
    procedure ACTCheckErrorsExecute(Sender: TObject);
    procedure ACTCheckNumExecute(Sender: TObject);
    procedure IEModFreteValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure SpeedItem1Click(Sender: TObject);
    procedure ACTGeraDanfeExecute(Sender: TObject);
    procedure DEdhSaiEntChange(Sender: TObject);
    procedure ACTExecNotaFiscalExecute(Sender: TObject);
    procedure ACTExecRomaneioExecute(Sender: TObject);
  private
    { Private declarations }
    FCurrentEvent,
    FCurrentAlert: String;
    FForceClose  : Boolean;

    { método para atribuição\validação de valor }
    procedure _SetCurrentEvent(const AValue: String);
    procedure _SetCurrentAlert(const AValue: String);
    procedure _SetForceClose  (const AValue: Boolean);

    procedure _Cadastros;
    procedure _EstoqueImportados;
    procedure _Descontos;

    procedure _SP_NFE_EMI(ANATOP: String = 'NORMAL');

    procedure ATUALIZA_MENSAGENS;
    procedure _FillCP;
    procedure _NFTriangular;

    procedure SALVA_NF;
  public
    { Public declarations }
    REC_SHE_DEF: TREC_SHE_DEF;
    REC_SHE_FIS: TREC_SHE_FIS;

    RECRomaneio,
    RECNFTriangular: TRECPEdidos;

    NewCHNFE,NewCDNF,NewDTNF,NewORIG,NewNCM,NewPICMS,NewVBC,NewCSTIPI,NewPIPI,NewVBCIPI,
    NewVBCPIS,NewVBCCOFINS,NewCST: string;

    ClickedOK,
    BCalc: Boolean;

    IDG_NFE_CAB: Integer;

    AINFADCAD: TStringList;
    AID,
    ADIF: Integer;
    Enviado: Boolean;

    NFE_PDF: string;
    NFE_XML: string;


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

    Constructor Create(AOwner    : TComponent;
                 const AIDPK     : LongInt = 0 ;
                       ADEPK     : String  = '';
                       AIDEV     : LongInt = 0 ;
                       ACDEV     : Word    = 0 ;
                       AFB_TB_PK : String  = '';
                       AFB_GETSQL: String  = ''); reintroduce; overload;

    class procedure _ExecForm(AOwner    : TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                              AIDPK     : LongInt = 0 ;
                              ADEPK     : String  = '';
                              AIDEV     : LongInt = 0 ;
                              ACDEV     : Word    = 0 ;
                              AFB_TB_PK : String  = '';
                              AFB_GETSQL: String = '');

    Destructor  Destroy; override;



    procedure ENVIA_EMAIL;
    procedure PESQUISA_TRANSPORTADORA(pesq,chave: string);
    procedure PESQUISA_NATUREZA(pesq,chave: string);
    procedure CALCULA_NF;
    procedure CALCULA_CST;
    procedure CALCULA_PICMS;
    procedure CALCULA_FRETE;
    procedure CALCULA_SEGURO;
    procedure DUPLICATAS;
    procedure EDITAR;
    procedure VALIDAR;
    procedure _CPPSQ(ADTXT: String;AFTXT: String);
    procedure _ImprimeRomaneio(AEnvio: Word = 0);

    function  RETORNA_TITULO: string;
  end;

var
  frmven_nfe: Tfrmven_nfe;


  _Form: TStringList = Nil;
  _FormPesquisa: Boolean;

implementation

uses uPrincipal, bPrincipal,
  pemail, pctr_rom,
  pctr_nfe, pimporta_geral,
  pNFeConsultaSefaz;

{$R *.dfm}

procedure TFrmVEN_NFE._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmVEN_NFE._SetCurrentAlert(const AValue: String);
begin
  FCurrentAlert := AValue;
end;

procedure TFrmVEN_NFE._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

procedure TFrmVEN_NFE._WM_CREATE(var Msg: TMessage);
begin
  { FORM SCREEN }
  Screen.Cursor := crAppStart;
  Randomize;

  { INICIALIZAÇÃO DOS OBJETOS DECLARADOS }
  oIRECPedidos(RECRomaneio    ,laNone);
  oIRECPedidos(RECNFTriangular,laNone);

  { Numeração }
  IDG_NFE_CAB  := 0; { Nota Fiscal }

  { Pega dados de origem }
  NewCHNFE     := EmptyStr;
  NewCDNF      := EmptyStr;
  NewDTNF      := EmptyStr;

  NewORIG      := EmptyStr;
  NewCST       := EmptyStr;

  NewVBC       := EmptyStr;
  NewPICMS     := EmptyStr;

  NewNCM       := EmptyStr;
  NewCSTIPI    := EmptyStr;
  NewPIPI      := EmptyStr;
  NewVBCIPI    := EmptyStr;

  NewVBCPIS    := EmptyStr;
  NewVBCCOFINS := EmptyStr;

end;

procedure TFrmVEN_NFE._WM_AFTER_CREATE(var Msg: TMessage);
var
  i: word;
begin
  { FORM SCREEN }
  SetCursorPos(500,Self.Top);

  { FORM CAPTION }
  if FCurrentEvent  = EmptyStr then
  _GetCurrentEvent := Self.Caption;

  { FORM AREA }
  REC_SHE_DEF.FMainArea := (REC_SHE_DEF.FMainArea) and (Screen.Width >= 1360) and (Screen.Width <= 1366); { Aplicação }
  REC_SHE_DEF.FWorkArea := (REC_SHE_DEF.FWorkArea) and (Screen.Width <= 1280); { Windows }

  { PAGE CONTROL }
  PCFrete.ActivePage  := TSVOL;
  PCVOL.ActivePage    := TSVOL2;
  PCEdicao.ActivePage := TSProduto;

  { INICIALIZAÇÃO PADRÃO }
  DEdhEmi.Date    := RECParametros.SHE_DATA; { Emissão }
  DEdhSaiEnt.Date := RECParametros.SHE_DATA; { Saída }

  { Destinatário }
  CEIDCD.Value   := 0; { Principal }
  CER_IDCD.Value := 0; { Remessa }

  { Pedido }
  EDCDPD.Text  := EmptyStr;
  CEVTPV.Value := 0;

   { Prazos }
  cbdpag.Text := 'A VISTA';
  cbdupl.Text := 'NÃO';

  { Romaneio }
  CECDRO.Value := 0;
  CEVTRO.Value := 0;

  { Descontos }
  CEPDSC.Value := 0;
  CEVDSC.Value := 0;

  { Transportadora }
  CEIDCT.Value := 0;
  CEVFRT.Value := 0;
  CEVSEG.Value := 0;

  { Frete }
  i := 0;
  repeat
    inc(i);
    tdxCurrencyEdit(FindComponent(Format('V%d_CEQVOL',[i]))).Value := 0;
    tdxCurrencyEdit(FindComponent(Format('V%d_CENVOL',[i]))).Value := 0;
    tdxCurrencyEdit(FindComponent(Format('V%d_CEPSBR',[i]))).Value := 0;
    tdxCurrencyEdit(FindComponent(Format('V%d_CEPSLQ',[i]))).Value := 0;
  until i = 8;

  IEModFrete.Text := '9';
  V1_CEQVOL.Text  := '0';

  { TOTAIS }
  CEVNF.Value  := 0; { NFe }
  CEVDUP.Value := 0; { Duplicatas }

  AINFADCAD := TStringList.Create; { Informações Adicionais }

  { Habilita envio automático conforme parâmetro }
  IEEnvMail.Text    :=  RECParametros.NFE_ENV_EMAIL_AUTO;
  IEEnvMail.Enabled := (RECParametros.NFE_ENV_EMAIL_AUTO = 1);
end;

procedure TFrmVEN_NFE._WM_ACTIVATE(var Msg: TMessage);
begin
  { EVENTOS }
  { Limpa Eventos }
  REC_SHE_DEF.FB_EVE_ADM := EmptyStr; { Admin    }
  REC_SHE_DEF.FB_EVE_CTR := EmptyStr; { Controle }
  REC_SHE_DEF.FB_EVE_PAD := EmptyStr; { Login    }

  try
    { Addmin }
    EEventAdmin.UnregisterEvents;
    EEventAdmin.Events.Clear;

    { Padrão }
    EEvent.UnregisterEvents;
    EEvent.Events.Clear;

    { Registra Eventos }
    if REC_SHE_DEF.FB_Event <> EmptyStr then
    begin
      { Admin }
      REC_SHE_DEF.FB_EVE_ADM := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-ADM';
      EEventAdmin.Events.Add(REC_SHE_DEF.FB_EVE_ADM);
      EEventAdmin.RegisterEvents;

      if not RECUsuarios.IS_EVE_ADM then
      begin
        { Padrão }
        REC_SHE_DEF.FB_EVE_PAD := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-' + oStrZero(RECUsuarios.ID,3);
        EEvent.Events.Add(REC_SHE_DEF.FB_EVE_PAD);
        EEvent.RegisterEvents;
      end;
    end;
  except
    on E: Exception do
    begin
      { Limpa Eventos }
      REC_SHE_DEF.FB_EVE_ADM := EmptyStr; { Admin    }
      REC_SHE_DEF.FB_EVE_CTR := EmptyStr; { Controle }
      REC_SHE_DEF.FB_EVE_PAD := EmptyStr; { Login    }

      oErro(Application.Handle,'Falha ao tentar executar evento !' + #13 +
                                REC_SHE_DEF.FB_Event   + '.' + #13 + #13 +
                                E.Message              + '.' + #13 + #13 +
                               'Favor entrar em contato com o administrador do sistema.');
    end;
  end;
end;

procedure TFrmVEN_NFE._SW_SHOWNOACTIVATE(var Msg: TMessage);
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

procedure TFrmVEN_NFE._WM_SHOW(var Msg: TMessage);
begin
  { FORM SHOW }
  Screen.Cursor := crHourGlass;
  REC_SHE_DEF.FResize := 0; { FORM RESIZE }

  { INICIALIZAÇÃO DE TRANSAÇÕES }
  oOTransact(TConsulta); { Consultas }
  oOTransact(TSEdicao);   { Edições Temporárias }

  { TABELAS }
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   CPAIS,XPAIS FROM TAB_PAIS');
    SQL.Add('ORDER BY 2');
    ExecQuery;
    while not eof do
    begin
      IExPais.Values.Add(Current.Vars[0].AsString);
      IExPais.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;
    IExPais.Text := '1058';

    Close;
    SQL.Clear;
    SQL.Add('SELECT   NAT_CNAT FROM TAB_NAT');
    SQL.Add('ORDER BY NAT_CNAT');
    ExecQuery;
    while not eof do
    begin
      cbcnat.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT   TRA_FANT FROM CAD_TRA');
    SQL.Add('WHERE    TRA_STAV = ''A''');
    SQL.Add('ORDER BY TRA_FANT');
    ExecQuery;
    while not eof do
    begin
      PEDECT.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT   PAG_DPAG FROM TAB_PAG');
    SQL.Add('ORDER BY PAG_DPAG');
    ExecQuery;
    while not eof do
    begin
      cbdpag.Descriptions.Add(Current.Vars[0].AsString);
      cbdpag.Values.Add(Current.Vars[0].AsString);
      next;
    end;
  end;

  { EDIÇÕES }
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM NFE_ITE');
    ExecQuery;

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM NFE_DUP');
    ExecQuery;

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM NFE_CLI');
    ExecQuery;
  end;
  oRTransact(TSEdicao);
end;

procedure TFrmVEN_NFE._WM_AFTER_SHOW(var Msg: TMessage);
begin
  { INICIALIZAÇÃO DOS COMPONENTES }
  try
    oOTransact(TSEdicao,ltRead_Only);

    { PEGA NÚMERO DISPONÍVEL }
    _SP_NFE_EMI; { Nota Fiscal }

    BCalc := True;
    Tag   := 1;

    if REC_SHE_DEF.CDEV = 0 then
    ACTExecNotaFiscal.Execute else

    if REC_SHE_DEF.CDEV = 2 then
    ACTExecRomaneio.Execute;

    if SQLPKConsulta.Current.ByName('NFE_VFRETE').AsFloat > 0 then
    begin
      CEVFRT.Value := SQLPKConsulta.Current.ByName('NFE_VFRETE').AsFloat;
      CALCULA_FRETE;
    end;

    CALCULA_NF;
  finally
    Screen.Cursor := crDefault;
    Tag := 0;

    oRTransact(TSEdicao,ltRead_Only_Release_Commit);
  end;

  if Showing then
  if CEIDCD.Value > 0 then
  begin
    PostMessage(TWinControl(V1_CEQVOL).Handle, WM_SETFOCUS, 0, 0);
    TWinControl(V1_CEQVOL).SetFocus;
  end else
  begin
    PostMessage(TWinControl(EDDECD).Handle, WM_SETFOCUS, 0, 0);
    TWinControl(EDDECD).SetFocus;
  end;
end;

procedure TFrmVEN_NFE._WM_RESIZE(var Message: TMessage);
begin
  { Before Resize }
  REC_SHE_DEF.FResize := REC_SHE_DEF.FResize + 1;

  { FORM SCREEN }
  if REC_SHE_DEF.FMainArea then {MainArea, mas sem desabilitar botões }
  begin
    REC_SHE_DEF.FPosition := poDefault;
    REC_SHE_DEF.FWorkArea := False;
  end else

  if REC_SHE_DEF.FWorkArea then
  begin
    REC_SHE_DEF.FPosition := poDefault;
    REC_SHE_DEF.FMainArea := False;
  end;

  { VER DIM TELA }
  REC_SHE_DEF.FHeight := Self.Height;
  REC_SHE_DEF.FWidth  := Self.Width ;
end;

procedure TFrmVEN_NFE._WM_AFTER_RESIZE(var Message: TMessage);
begin
  { After Resize }
  if REC_SHE_DEF.FResize >= 2 then
     try
       oResize(DBGEdicao);
       Paint;
     finally
       Screen.Cursor := crDefault;
       REC_SHE_DEF.FResize := 0;
     end;
end;

Constructor TFrmVEN_NFE.Create(AOwner: TComponent;
                     const AIDPK     : LongInt = 0 ;
                           ADEPK     : String  = '';
                           AIDEV     : LongInt = 0 ;
                           ACDEV     : Word    = 0 ;
                           AFB_TB_PK : String  = '';
                           AFB_GETSQL: String  = '');
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.IDPK := INTTOSTR(AIDPK);
  REC_SHE_DEF.DEPK := TRIM(ADEPK);

  REC_SHE_DEF.IDEV := INTTOSTR(AIDEV);
  REC_SHE_DEF.CDEV := INTTOSTR(ACDEV);

  REC_SHE_DEF.FB_PSQ_TB_NO_PK := TRIM(AFB_TB_PK );
  REC_SHE_DEF.FB_PSQ_GET_SQL  := TRIM(AFB_GETSQL);

  inherited Create(AOwner);
end;

Class procedure TFrmVEN_NFE._ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                                  AIDPK     : LongInt = 0 ;
                                  ADEPK     : String  = '';
                                  AIDEV     : LongInt = 0 ;
                                  ACDEV     : Word    = 0 ;
                                  AFB_TB_PK : String  = '';
                                  AFB_GETSQL: String  = '');
var
  idxForm: Integer;
begin
  if not Assigned(_Form) then
  begin
    _Form := TStringList.Create;
    _Form.Sorted := True;
  end;

  { Inicia pela pesquisa }
  _FormPesquisa := AFormPesquisa;

  if not _Form.Find(ClassName,idxForm) then
  idxForm := _Form.Add(ClassName);

  if ((TForm(AForm) = Nil) or (ACDEV = 1)) then
  TForm(AForm) := Self.Create (AOwner    ,
                               AIDPK     ,
                               ADEPK     ,
                               AIDEV     ,
                               ACDEV     ,
                               AFB_TB_PK ,
                               AFB_GETSQL);

  _Form.Objects[idxForm] := TObject(@AForm);

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

Destructor TFrmVEN_NFE.Destroy;
type
  PtrForm = ^TForm;
var
  idxForm: Integer;
begin
  Screen.Cursor := crAppStart;
  try
    if TForm(Self).Name <> EmptyStr then
    if Assigned(_Form) and _Form.Find(ClassName,idxForm) and (_Form.Objects[idxForm] <> Nil) then

    try
      { Eventos }
      try
        try
          EEvent.UnRegisterEvents;
        except
          on E: Exception do
          begin
            oErro(Application.Handle,'Falha ao tentar fechar eventos !'+#13+#13+
                                     'Error Code: '+E.Message+'.'      +#13+
                                      Caption+'.');
          end;
        end;

      finally
        try
          { Transação Principal }
          try
            oFTransact(TConsulta);
            oFTransact(TSEdicao );
          except
            on E: Exception do
            begin
              oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                       'Error Code: '+E.Message+'.'      +#13+
                                        Caption+'.');
            end;
          end;

        finally
          { record e afins }
          try
            Finalize(REC_SHE_DEF);
            FillChar(REC_SHE_DEF,SizeOf(REC_SHE_DEF),0);
          except
            on E: Exception do
            begin
             oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                      'Error Code: '+E.Message+'.'        +#13+
                                       Caption+'.');
            end;
          end;

          { record e afins }
          try
            oFREC_SHE_DEF(REC_SHE_DEF);
          except
            on E: Exception do
            begin
             oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                      'Error Code: '+E.Message+'.'        +#13+
                                       Caption+'.');
            end;
          end;

        end;
      end;

    finally
      PtrForm(_Form.Objects[idxForm])^ := Nil;
      _Form.Objects[idxForm] := Nil;
    end;
  finally
    Screen.Cursor := crDefault;
    inherited;
  end;
end;

procedure Tfrmven_nfe.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'FIS_ADM'; { Eventos    }
  REC_SHE_DEF.GAdmin   := True;      { Grant User }

  { GRANT USER }
  if REC_SHE_DEF.GAdmin then
  begin
    REC_SHE_DEF.GAppend := True;
    REC_SHE_DEF.GEdit   := True;
    REC_SHE_DEF.GDelete := True;
    REC_SHE_DEF.GView   := True;
    REC_SHE_DEF.GPrint  := True;
  end else
  if ((not REC_SHE_DEF.GView) and (not REC_SHE_DEF.GPrint)) then
  begin
    REC_SHE_DEF.GAppend := bPSQUSER('USU_NOVO',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GEdit   := bPSQUSER('USU_EDIT',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GDelete := bPSQUSER('USU_DELE',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GView   := bPSQUSER('USU_VISU',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GPrint  := bPSQUSER('USU_PRIN',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GAdmin  := bPSQUSER('USU_AUTO',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
  end;

  { ACCESS MANAGER }
  if not REC_SHE_DEF.GView then
  _GetForceClose := False;

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

procedure Tfrmven_nfe.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_ACTIVATE      , 0, 0);
  PostMessage(Handle, SW_SHOWNOACTIVATE, 0, 0);
end;

procedure Tfrmven_nfe.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_SHOW      , 0, 0);
  PostMessage(Handle, WM_AFTER_SHOW, 0, 0);
end;

procedure Tfrmven_nfe.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  { VER ANTES DE SAIR }
  if (CECDRO.Value = 0) and (not Enviado) then
  begin
    if (NFE_001.State in [dsInsert,dsEdit]) and (not oEmpty(NFE_001NFE_VPROD.AsFloat)) then
        NFE_001.Post;

    if NFE_001.RecNo > 0 then
    case messageBox(handle,'Existem Alterações Pendentes !'+#13+
                           'Confirma Saída ?',
                           PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
         mrCancel: Abort;
         mrNo    : Abort;
    end;
  end;
end;

procedure Tfrmven_nfe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action  := caFree;
  OnClose := Nil;
end;

procedure Tfrmven_nfe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: Close; //ACTCancela.Execute;
       vk_return: if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);

       38       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext(ActiveControl,False,True);

       40       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);
       118      : { nothing };
       116      : { nothing };
  end;
end;

procedure Tfrmven_nfe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #5 then
  {[Ctrl+E]} else
  if key = #8 then
  {[Ctrl+H]} else
  if key = #9 then
  {[Ctrl+I]} else
  if key = #16 then
  {[Ctrl+P]} else
  if key = #19 then
  begin
    {[Ctrl+S]}

    if oYesNo(handle,'Salvar NF ?') = mrYes then
    begin
      if Pos(CECDNF.Text,SBRodape.Panels[3].Text) = 0 then
      begin
        Editar;
        oException(CECDNF,'Código do XML inválido !'#13+
                          'Click no botão validar para gerar corretamente.');
      end;
      Clipboard.AsText := SBRodape.Panels[3].Text;
      SBRodape.Panels[5].Text := '100';
      SALVA_NF;
    end;
  end else
  if key = #22 then
  {[Ctrl+V]};
end;

procedure Tfrmven_nfe.FormPaint(Sender: TObject);
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

  { ricardo RODAPÉ }
  REC_SHE_DEF.FMainWidth := SBRodape.Width;
  for i  := 0 to SBRodape.Panels.Count - 1 do
  if  i  <> 1 then
  REC_SHE_DEF.FMainWidth   := REC_SHE_DEF.FMainWidth - SBRodape.Panels[i].Width;
  SBRodape.Panels[1].Width := REC_SHE_DEF.FMainWidth - 30;

  { SCREEN CAPTION }
  if RECUsuarios.Id = 0 then
  Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_DEF.FMainWidth)  + ' x ' + IntToStr(REC_SHE_DEF.FMainHeight) + '. ' + Self.Caption;
end;

procedure Tfrmven_nfe.FormResize(Sender: TObject);
begin
  if (not Showing) or (FForceClose) then
  Exit;

  { Risize }
  PostMessage(Handle, WM_ENTERSIZEMOVE , 0, 0); { Before }
  PostMessage(Handle, WM_EXITSIZEMOVE  , 0, 0); { After }
end;

procedure Tfrmven_nfe.BVisClick(Sender: TObject);
begin
  if (FileExists(NFE_PDF)) and (FileExists(NFE_XML)) then
      try
        ImprimeDanfe(NFE_XML,NFE_PDF,3,false);
      finally
        _ImprimeRomaneio(0);
      end;
end;

procedure Tfrmven_nfe.BPriClick(Sender: TObject);
begin
  if (FileExists(NFE_PDF)) and (FileExists(NFE_XML)) then
      try
        ImprimeDanfe(NFE_XML,NFE_PDF,1,false);
      finally
        _ImprimeRomaneio(1);
      end;
end;

procedure Tfrmven_nfe.BEnvClick(Sender: TObject);
begin
  if (FileExists(NFE_PDF)) and (FileExists(NFE_XML)) then
  try
    frmemail := TFrmemail.Create(self);
    frmemail.cbemail.Text  := PEEmail.Text;
    frmemail.edtitulo.Text := RECParametros.EP_NO+' - NF.: '+CECDNF.Text;
    frmemail.Memo1.Lines.Add('Segue em anexo...') ;

    frmemail.cbarqs.Items.Add(NFE_PDF);
    frmemail.cbarqs.Items.Add(NFE_XML);

    frmemail.ShowModal;
  finally
    freeAndNil(frmemail);
  end;
end;

procedure Tfrmven_nfe.BFAVClick(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure Tfrmven_nfe.BNFeClick(Sender: TObject);
var
  i: Word;
begin
  SBRodape.Panels[1].Text := EmptyStr; { Processos   }
  SBRodape.Panels[2].Text := EmptyStr; { Ocorrências }
  SBRodape.Panels[3].Text := EmptyStr; { Chave       }
  SBRodape.Panels[4].Text := EmptyStr; { Protocolo   }
  SBRodape.Panels[5].Text := EmptyStr; { CSTAT       }
  SBRodape.Refresh;

  FrmImporta_Geral := TFrmImporta_Geral.Create(Nil);
  FrmImporta_Geral.tsXML.Tag := LAIDCD.Tag;
  with FrmImporta_Geral do
  try
    ShowModal;
    if REC_SHE_DEF.Edited then
       try
         oOTransact(FBird.TFBProdutos );
         frmven_nfe.Tag := 1;
         BCalc := False;

         if cbTIPO.Text = 'NOTAS FISCAIS' then
         begin
           CEIDCD.Value    := NFeNFE_CFAV.AsInteger;
           CEIDCD.Modified := True;
           CEIDCD.ValidateEdit;

           CEIDCT.Value := NFeNFE_CTRA.AsInteger;
           PEDECT.Text  := NFeNFE_DTRA.AsString;
           PESQUISA_TRANSPORTADORA(PEDECT.Text,'F');

           while not NFe.Eof do
           begin
             NFE_001.Append;

             uPesquisa_Produto(RECParametros.EP_ID,NFeNFE_CPROD.AsString,'SKU');
             _FillCP;

             NFE_001NFE_ITEMPED.Value  := NFeNFE_ITEMPED.AsInteger;
             NFE_001NFE_CFOP.Value     := NFeNFE_CFOP.AsString;
             NFE_001NFE_CPROD.Value    := NFeNFE_CPROD.AsString;
             NFE_001NFE_NCM.Value      := NFeNFE_NCM.AsString;
             NFE_001NFE_CEST.Value     := NFeNFE_CEST.AsString;
             NFE_001NFE_EXTIPI.Value   := NFeNFE_EXTIPI.AsString;
             NFE_001NFE_XPROD.Value    := NFeNFE_XPROD.AsString;
             NFE_001NFE_ORIG.Value     := NFeNFE_ORIG.AsString;
             NFE_001NFE_CST.Value      := NFeNFE_CST.AsString;
             NFE_001NFE_UCOM.Value     := NFeNFE_UCOM.AsString;
             NFE_001NFE_QCOM.Value     := NFeNFE_QCOM.AsFloat;
             NFE_001NFE_VUNCOM.AsFloat := NFeNFE_VUNCOM.AsFloat;
             NFE_001NFE_VPROD.Value    := NFeNFE_VPROD.AsFloat;
             NFE_001NFE_VFRETE.Value   := NFeNFE_VFRETE.AsFloat;
             NFE_001NFE_VDESC.Value    := NFeNFE_VDESC.AsFloat;
             NFE_001NFE_NFCI.Value     := NFeNFE_NFCI.AsString;
             NFE_001.Post;
             NFe.Next;
           end;
         end else
         if cbTIPO.Text = 'XML' then
         begin
           NewCHNFE := XMLCHNFE;
           NewCDNF  := XMLCDNF;
           NewDTNF  := XMLDTNF;

           CEIDCD.Value    := imp_ncaNFE_CFAV.AsInteger;
           CEIDCD.Modified := True;
           CEIDCD.ValidateEdit;

           cbcnat.Text := imp_nitNFE_CFOP.AsString;
           PESQUISA_NATUREZA(cbcnat.Text,'C');

           CEIDCT.Value := XMLIDTra;
           PESQUISA_TRANSPORTADORA(CEIDCT.Text,'C');

           if XMLModFrete <> EmptyStr then
              IEModFrete.Text := IFThen(LeftStr(CBCNAT.Text,1) = '3',XMLModFrete,'4') else

              SBRodape.Panels[1].Text := 'Arquivo XML importado não possui informações da MODALIDADE DO FRETE !';
              SBRodape.Refresh;

           with frmven_nfe do
           for i := Low(aVol) to High(aVol) do
           begin
             if aVol[i,0] = EmptyStr then
                Break;

             if aVol[i,0] <> EmptyStr then
             begin
               tdxCurrencyEdit(FindComponent(Format('V%d_CEQVOL',[i + 1]))).Text := aVol[i,0];
               tdxCurrencyEdit(FindComponent(Format('V%d_CEQVOL',[i + 1]))).Tag  := 1;
             end;

             if aVol[i,1] <> EmptyStr then
             begin
               tdxEdit(FindComponent(Format('V%d_EDESP',[i + 1]))).Text := aVol[i,1];
               tdxEdit(FindComponent(Format('V%d_EDESP',[i + 1]))).Tag  := 1;
             end;

             if aVol[i,2] <> EmptyStr then
             begin
               tdxEdit(FindComponent(Format('V%d_EDMARCA',[i + 1]))).Text := aVol[i,2];
               tdxEdit(FindComponent(Format('V%d_EDMARCA',[i + 1]))).Tag  := 1;
             end;

             if aVol[i,3] <> EmptyStr then
             begin
               tdxCurrencyEdit(FindComponent(Format('V%d_CENVOL',[i + 1]))).Text := aVol[i,3];
               tdxCurrencyEdit(FindComponent(Format('V%d_CENVOL',[i + 1]))).Tag  := 1;
             end;

             if aVol[i,4] <> EmptyStr then
             begin
               tdxCurrencyEdit(FindComponent(Format('V%d_CEPSBR',[i + 1]))).Text := aVol[i,4];
               tdxCurrencyEdit(FindComponent(Format('V%d_CEPSBR',[i + 1]))).Tag  := 1;
             end;

             if aVol[i,5] <> EmptyStr then
             begin
               tdxCurrencyEdit(FindComponent(Format('V%d_CEPSLQ',[i + 1]))).Text := aVol[i,5];
               tdxCurrencyEdit(FindComponent(Format('V%d_CEPSLQ',[i + 1]))).Tag  := 1;
             end;
           end;

           CEVDSC.Value   := imp_ncaNFE_VDESC.AsFloat;
           edvprod.Text   := formatfloat('#,0.00',imp_ncaNFE_VPROD.AsFloat);
           CEVFRT.Value   := imp_ncaNFE_VFRETE.AsFloat;
           CEVSEG.Value   := imp_ncaNFE_VSEG.AsFloat;
           edvbc.Text     := formatfloat('#,0.00',imp_ncaNFE_VBC.AsFloat);
           edvicms.Text   := formatfloat('#,0.00',imp_ncaNFE_VICMS.AsFloat);
           edvipi.Text    := formatfloat('#,0.00',imp_ncaNFE_VIPI.AsFloat);
           edvpis.Text    := formatfloat('#,0.00',imp_ncaNFE_VPIS.AsFloat);
           edvcofins.Text := formatfloat('#,0.00',imp_ncaNFE_VCOFINS.AsFloat);
           edvoutro.Text  := formatfloat('#,0.00',imp_ncaNFE_VOUTRO.AsFloat);
           edvII.Text     := formatfloat('#,0.00',imp_ncaNFE_VII.AsFloat);
           edvnf.Text     := formatfloat('#,0.00',imp_ncaNFE_VNF.AsFloat);
           IExPais.Text   := XMLcPais;

           EDINFADNF.Lines.Clear;
           if LeftStr(CBCNAT.Text,1) = '3' then
           EDINFADNF.Lines.Add(imp_ncaNFE_INFCPL.AsString);
           EDINFADNF.Refresh;

           oRTransact(frmven_nfe.TSEdicao);
           if NFE_001NFE_CCAB.AsInteger = 99999 then
              while not NFE_001.Eof do
              begin
                NFE_001.Edit;
                NFE_001NFE_CPROD.Value    := CECDNF.Text+'/'+NFE_001NFE_ITEMPED.AsString;
                NFE_001NFE_VUNCOM.AsFloat := IFThen(NFE_001NFE_VUNCOM.AsFloat <> NFE_001NFE_VPROD.AsFloat / NFE_001NFE_QCOM.AsFloat,NFE_001NFE_VPROD.AsFloat / NFE_001NFE_QCOM.AsFloat,NFE_001NFE_VUNCOM.AsFloat);
                NFE_001.Post;
                NFE_001.Next;
              end;
         end else
         begin
           BImp.Tag := IFThen(cbTIPO.Text = 'CDI',1,0);
           if imp_cabROM_CCLI.AsInteger > 0 then
           begin
             CEIDCD.Value    := imp_cabROM_CCLI.AsInteger;
             CEIDCD.Modified := True;
             CEIDCD.ValidateEdit;
           end;
           PESQUISA_NATUREZA(cbcnat.Text,'C');

           imp_ite.First;
           while not imp_ite.Eof do
           begin
             NFE_001.Append;

             uPesquisa_Produto(RECParametros.EP_ID,imp_iteROM_IPRO.AsString,'ID');
             _FillCP;

             NFE_001NFE_QCOM.Value     := imp_iteROM_QTDE.AsFloat;
             NFE_001NFE_VUNCOM.AsFloat := imp_iteROM_UNIT.AsFloat;
             NFE_001.Post;
             imp_ite.Next;
           end;
         end;
       finally
         oCTransact(FBird.TFBProdutos);
       end;
  Finally
    FreeAndNil(frmimporta_geral);
  end;

  CALCULA_FRETE;
  CALCULA_NF;

  PCEdicao.ActivePage := TSProduto;
  DBGEdicao.SetFocus;
end;

procedure Tfrmven_nfe.BSairClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmven_nfe.PESQUISA_NATUREZA(pesq,chave: string);
begin
  if (pesq <> EmptyStr) and (chave = 'U') then
      chave := 'F';

  if chave = 'U' then
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   FIRST 1 NFE_CNAT  FROM '+oREPZero('NFE_CAB','_',RECParametros.EP_ID,3));
    SQL.Add('WHERE    NFE_CFAV = '''+CEIDCD.Text+'''');
    SQL.Add('ORDER BY CDNF DESC');
    ExecQuery;

    pesq  := IFThen(Current.Vars[0].AsString <> EmptyStr,Current.Vars[0].AsString,
             IFThen(PEUF.Text = RECParametros.LOG_UF,RECParametros.NFE_CFOPDUF,
             IFThen(PEUF.Text = 'EX','3102',RECParametros.NFE_CFOPFUF)));
    chave := 'C';
  end;

  if oEmpty(pesq) then
  Exit;

  if (oBSoNumero(pesq)) and (chave <> 'C') then
  Chave := 'C';

  if (CBCNAT.Text <> TAB_NATNAT_CNAT.AsString) or
     (CBCNAT.Text = EmptyStr) then
  with tab_nat do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM TAB_NAT');
    if chave = 'F' then
    SQL.Add('WHERE  NAT_DNAT = '''+pesq+'''') else if chave = 'C' then
    SQL.Add('WHERE  NAT_CNAT = '''+pesq+'''');
    Open;

    cbcnat.Text   := tab_natNAT_CNAT.AsString;
    cbdnat.Text   := tab_natNAT_DNAT.AsString;
    edtnat.Text   := tab_natNAT_TIPO.AsString;
    IETPNF.Text   := tab_natNAT_TPNF.AsString;
    IEFinNFe.Text := IFThen(tab_natNAT_TIPO.AsString = 'DEVOLUÇÃO','4','1');
  end;

  if CBCNAT.Text = '6108' then
  begin
    IEindFinal.Text := '1'; { Consumidor Final }
  end;

  if tab_nat.RecNo > 0 then
  if BCalc then
  begin
    try
      Tag := 1;
      NFE_001.DisableControls;
      NFE_001.First;
      while not NFE_001.Eof do
      begin
        if tab_natNAT_CNAT.AsString <> NFE_001NFE_CFOP.AsString then
        begin
          NFE_001.Edit;
          NFE_001NFE_CFOP.Value := tab_natNAT_CNAT.AsString;
          CALCULA_PICMS;
          NFE_001.Post;
        end;
        NFE_001.Next;
      end;
    finally
      NFE_001.First;
      NFE_001.EnableControls;
      Tag := 0;

      oRTransact(TSEdicao);
    end;

    if Pos(CBCNAT.Text,'51236123') > 0 then
    begin
      edtnat.Text := edtnat.Text + ' TRIANGULAR';
      _SP_NFE_EMI('TRIANGULAR');
    end;
  end;  
end;

procedure Tfrmven_nfe.PESQUISA_TRANSPORTADORA(pesq,chave: string);
begin
  if (pesq <> EmptyStr) and (chave = 'U') then
      chave := 'F';

  if chave = 'U' then
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   FIRST 1 NFE_CTRA  FROM '+oREPZero('NFE_CAB','_',RECParametros.EP_ID,3));
    SQL.Add('WHERE    NFE_CFAV = '''+CEIDCD.Text+'''');
    SQL.Add('ORDER BY CDNF DESC');
    ExecQuery;

    pesq  := IFThen(Current.Vars[0].AsInteger > 0,Current.Vars[0].AsString,RECParametros.CT_ID);
    chave := 'C';
  end;

  if oEmpty(pesq) then
     Exit;

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,TRA_FANT,TRA_RAZA,TRA_CNPJ,TRA_INSC,TRA_CPF,TRA_TLOG,TRA_LOGR,TRA_CEP,TRA_NUME,TRA_COMP,TRA_BAI,TRA_CID,TRA_ESTA,');
    SQL.Add('          TRA_DDD ,TRA_TEL1,TRA_CONT,TRA_MAIL,');
    SQL.Add('          TRA_VTCARRO,TRA_VTPLACA,TRA_VTUF,TRA_VTRNTC,');
    SQL.Add('          TRIM(CAST(SUBSTRING(TRA_OBSE FROM 1 FOR 512) AS VARCHAR(512))) TRA_OBSE');
    SQL.Add('FROM   CAD_TRA');
    SQL.Add('WHERE '+IFThen(chave = 'C','ID','TRA_FANT')+' = '''+pesq+'''');
    ExecQuery;
    PEDECT.Text := Current.Vars[01].AsString;

 //   if not Current.Vars[0].IsNull then
    begin
      CEIDCT.Value     := Current.Vars[00].AsInteger;
      PEDECT.Text      := Current.Vars[01].AsString;
      EDTFantasia.Text := Current.Vars[01].AsString;

      EdTxNome.Text    := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EdxNome.Text  ,Current.Vars[02].AsString);
      EdTCNPJ.Text     := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EdCNPJ.Text   ,Current.Vars[03].AsString);
      PETIE.Text       := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,PEIE.Text     ,Current.Vars[04].AsString);
      EdTCPF.Text      := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EdCPF.Text    ,Current.Vars[05].AsString);
      PETTxLgr.Text    := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,PETxLgr.Text  ,Current.Vars[06].AsString);
      EdTxLgr.Text     := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EdxLgr.Text   ,Current.Vars[07].AsString);
      EdTCep.Text      := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EdCep.Text    ,Current.Vars[08].AsString);
      EdTNRO.Text      := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EdNRO.Text    ,Current.Vars[09].AsString);
      EdTxCpl.Text     := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EdxCpl.Text   ,Current.Vars[10].AsString);
      EdTxBairro.Text  := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EdxBairro.Text,Current.Vars[11].AsString);
      EdTxMun.Text     := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EdxMun.Text   ,Current.Vars[12].AsString);
      PETUF.Text       := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,PEUF.Text     ,Current.Vars[13].AsString);
      EDTDDD.Text      := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EDDDD.Text    ,Current.Vars[14].AsString);
      EDTFone.Text     := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EDFone.Text   ,Current.Vars[15].AsString);
      EDTContato.Text  := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EDContato.Text,Current.Vars[16].AsString);
      PETEmail.Text    := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,PEEmail.Text  ,Current.Vars[17].AsString);
      PETCarro.Text    := Current.Vars[18].AsString;
      PETPlaca.Text    := Current.Vars[19].AsString;
      PETUFPlaca.Text  := Current.Vars[20].AsString;
      EDTRNTC.Text     := Current.Vars[21].AsString;
      EDTInfAd.Text    := Current.Vars[22].AsString;

      if ((Length(EDTCNPJ.Text) < 14) or (Length(PETIE.Text) < 7)) then
      begin
        EDTCNPJ.Text := '';
        PETIE.Text   := '';
      end;

      if Pos('SEM FRETE',PEDECT.Text) > 0 then
         IEModFrete.Text := '9' else
      if (Pos('CLIENTE RETIRA',PEDECT.Text) > 0) or (Pos('O PRÓPRIO',PEDECT.Text) > 0) then
         IEModFrete.Text := '4' else
      if Pos('NOSSO CARRO (' ,PEDECT.Text) > 0 then
         IEModFrete.Text := '3' else
      if Pos('CARRETOS'    ,PEDECT.Text) > 0 then
         IEModFrete.Text := '2' else
      if Pos(IEModFrete.Text,'01') > 0 then
         IEModFrete.Text := '0';
    end;
  end;
end;

function Tfrmven_nfe.RETORNA_TITULO: string;
var i:word;
    titu: string;
begin
  titu := DUP_001NFE_CDNF.AsString;
  for i := 1 to length(titu) do
  begin
    if copy(DUP_001NFE_TITU.AsString,i,1) = '-' then
       break;
  end;
  titu := titu + copy(DUP_001NFE_TITU.AsString,i,3);

  result := titu;
end;

procedure Tfrmven_nfe.EDITAR;
begin
  ACTGeraNFeXML.Enabled    := True;
  ACTGeraNFeXML.ImageIndex := 0;
  ACTGeraNFeXML.Caption    := 'Gerar e Assinar';

  ACTValidaXML.Enabled := False;
  ACTEnviaXML.Enabled  := False;

  BVis.Enabled := false;
  BPri.Enabled := false;
  BEnv.Enabled := false;
  BFav.Enabled := true;
  BImp.Enabled := true;

  PNLPrincipal.Enabled    := True;
  PCInfoA.ActivePageIndex := 0;
  Application.ProcessMessages;
end;

procedure Tfrmven_nfe.VALIDAR;
begin
  ACTGeraNFeXML.ImageIndex := 10;
  ACTGeraNFeXML.Caption    := 'Editar';

  PNLPrincipal.Enabled := false;

  ACTValidaXML.Enabled := true;
  BVis.Enabled := false;
  BPri.Enabled := false;
  BEnv.Enabled := false;
  BFav.Enabled := false;
  BImp.Enabled := false;

  Application.ProcessMessages;
end;

procedure Tfrmven_nfe.ATUALIZA_MENSAGENS;
var
  i: Word;
  TXTCFOP,
  TXTInfad: String;
begin
  try
    EDInfAdFisco.Lines.BeginUpdate;
    EDInfAdFisco.Lines.Clear;

    AINFADCAD.BeginUpdate;
    AINFADCAD.Clear;

    if EDINFADNF.Lines.Count > 0 then
    for i := 0 to EDINFADNF.Lines.Count - 1 do
        if Length(EDINFADNF.Lines[i]) > 160 then
        begin
          TXTInfAd := EDINFADNF.Text;
          EDINFADNF.Lines.Clear;
        end;

    while Length(TXTInfAd) > 0 do
    begin
      EDINFADNF.Lines.Add(Trim(LeftStr(TXTInfAd,160)));
      TXTInfAd := Trim(Copy(TXTInfAd,161,2000));
    end;

    AINFADCAD.Clear;

    if Pos(IEFinNFe.Text,'23') > 0 then
       Exit;

    if RECParametros.NFE_CRT = 1 then
    begin
      AINFADCAD.Add('I  - DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL.|');
      AINFADCAD.Add('II - NAO GERA DIREITO A CREDITO FISCAL DE IPI.|');
    end else
    begin
      if (PEUF.Text = RECParametros.LOG_UF) and (PEUF.Text = 'SP') then
          if NFE_001.Locate('NFE_NCM;NFE_PICMS',VarArrayOf(['39181000','12']),[]) then
          begin
            AINFADCAD.Add('Aliquota de Icms de 12% conforme determina Artigo 54, Inciso VIII 22 Item 22');
            AINFADCAD.Add('|');
          end;
    end;

    if CEVCREDICMSSN.Value > 0 then
    begin
      AINFADCAD.Add(Trim('Permite o aproveitamento do credito de ICMS no valor de '+FormatFloat('R$ #,0.00',oTextToValor(CEVCREDICMSSN.Value)))            +'|');
      AINFADCAD.Add(Trim('Correspondente a aliquota de '+FormatFloat('#,0.00%',RECParametros.NFE_CREDITO_ICMS)+' nos termos do Art. 23 DA LC 123, de 2006')+'|');
    end;

    if (oTextToValor(edvst.Text) > 0) and (RECParametros.NFE_CRT <> 1) then
        AINFADCAD.Add('ICMS calculado por substituicao tributaria conforme Artigo 313-Y'+'|');

    if EDISUF.Text <> EmptyStr then
    begin
      AINFADCAD.Add(Trim('Suframa: '+EDISUF.Text)+'|');

      if not RECRomaneio.ZFM_CMUN then
      AINFADCAD.Add('Isenção de ICMS conforme convenio no 65 de 1988|');
      AINFADCAD.Add('IPI suspenso conforme Artigo no 84 do Decreto 7.212/2010|');
      AINFADCAD.Add('PIS/COFINS aliquota zero conforme Artigo 2o da Lei 10.996/04|');

      if RECRomaneio.ZFM_CMUN then
      begin
        AINFADCAD.Add('');
        AINFADCAD.Add('Remessa para zona franca de manaus ou area de livre comercio|');
        AINFADCAD.Add('ICMS Isento conforme Artigo no 84 do Anexo I do RICMS/SP. Desconto de 7% - ICMS: ' + FormatFloat('R$ #,0.00',oTextToValor(edvicmsdeson.Text)) + '|');
      end;
    end;

    if (IERegime.Text = '1') and (IECredICMS.Text = '1') and (Pos(cbcnat.Text,'51016101') > 0)  then
    begin
      AINFADCAD.Add('Reducao da base de calculo do ICMS nos termos do anexo II artigo 52 do RICMS|');
      AINFADCAD.Add(Trim('Decreto no 62.560/2017 (DOE de 06.05.2017) = '+FormatFloat('#,0.00%',NFE_001NFE_PREDBC.AsFloat))+'|');
    end;

    try
      CLI_001.DisableControls;
      CLI_001.First;
      if CLI_001.RecNo > 0 then
         AINFADCAD.Add('|');
      while not CLI_001.Eof do
      begin
        if CLI_001.RecNo = 1 then
        AINFADCAD.Add('NF de Retorno ('+RightStr(cbcnat.Text,4)+') Ref. a(s) NF(s).: |');
        AINFADCAD.Add(CLI_001NFE_CDNF.AsString+' de '+CLI_001NFE_DCAD.AsString+' '+FormatFloat('Valor de R$ #,0.00',CLI_001NFE_VNF.AsFloat)+'  ');
        CLI_001.Next;
      end;
    finally
      CLI_001.EnableControls;
    end;

    if oTrimValor(EDvICMSUFDest.Text) > 0 then
    begin
      AINFADCAD.Add('Valor Total ICMS Interestadual UF Destino: '+FormatFloat('Valor de R$ #,0.00',oTrimValor(EDvICMSUFDest.Text)));
      AINFADCAD.Add('|');
    end;

    if EDidEstrangeiro.Text <> '' then
    begin
      AINFADCAD.Add(Trim('|Passaporte '+EDidEstrangeiro.Text)+'|');
    end;

    if EDINFADNF.Lines.Count > 0 then
    begin
      for i := 0 to EDINFADNF.Lines.Count - 1 do
      AINFADCAD.Add(oREPAcentos(oPrimeiraLetraMaiuscula(EDINFADNF.Lines[i]))+'|');
    end;

    { Retira todo o texto encontrado em TXTCFOP e move para TXTInfAd }
    TXTCFOP := oPrimeiraLetraMaiuscula(tab_natNAT_OBSE.AsString);
    if TXTCFOP <> EmptyStr then
       AINFADCAD.Add('|');

    While Length(TXTCFOP) > 0 do
    begin
      TXTInfAd := oREPAcentos(Fetch(TXTCFOP,#$D#$A));
      if Length(TXTInfAd) > 0 then
         AINFADCAD.Add(TXTInfAd+'|');
    end;
  finally
    AINFADCAD.EndUpdate;
    EDInfAdFisco.Text := AINFADCAD.Text;
    EDInfAdFisco.Lines.EndUpdate;
  end;
end;

function RetornaString(pathArquivo : ShortString) : TStrings;
var
 r : TextFile;
 linha : string;
 reta : TStrings;
begin
  try
   AssignFile(r,pathArquivo);
   Reset(r);
   reta:=TStringList.Create;

   while not Eof(r) do
   begin
    ReadLn(r,linha);
    reta.Add(linha);
   end;
  finally
   CloseFile(r);
  end;

  result:=reta;
end;

procedure Tfrmven_nfe._CPPSQ(ADTXT: String;AFTXT: String);
begin
  if not oEmpty(ADTXT) then
  try
    oOTransact(FBird.TFBProdutos);
    if uPesquisa_Produto(RECParametros.EP_ID,ADTXT,AFTXT,'LIKE','','%') > 0 then
       _FillCP;
  finally
    oCTransact(FBird.TFBProdutos);
  end;
end;

procedure Tfrmven_nfe._FillCP;
begin
  if NFE_001.State = dsBrowse then
     NFE_001.Append;

  NFE_001NFE_VUNCOM.AsFloat := FBird.FBCAD_PROVPRC_PAD.AsFloat;
  NFE_001NFE_PREC.AsFloat   := FBird.FBCAD_PROVPRC_PAD.AsFloat;

  NFE_001NFE_IPRO.Value   := FBird.FBCAD_PROId.AsInteger;
  NFE_001NFE_CPROD.Value  := FBird.FBCAD_PROSKU.AsString;
  NFE_001NFE_XPROD.Value  := TRIM(FBird.FBCAD_PRODECP.AsString+' '+FBird.FBCAD_PRODGCP.AsString);
  NFE_001NFE_UCOM.Value   := FBird.FBCAD_PROUCOM.AsString;
  NFE_001NFE_NCM.Value    := FBird.FBCAD_PRONCM.AsString;
  NFE_001NFE_PIPI.Value   := FBird.FBCAD_PROPIPI.AsFloat;
  NFE_001NFE_CEST.Value   := FBird.FBCAD_PROCEST.AsString;
  NFE_001NFE_EXTIPI.Value := FBird.FBCAD_PROEXTIPI.AsString;

  if LeftStr(NFE_001NFE_CFOP.AsString,1) = '7' then
  NFE_001NFE_UTRIB.Value := FBird.FBCAD_PROUTRIB.AsString;
  NFE_001NFE_ORIG.Value  := FBird.FBCAD_PROORIG.AsString;

  NFE_001NFE_REPR.Value   := 'R';//FBird.FBCAD_PROPRO_REPR.AsString;
  NFE_001NFE_CEAN.Value   := FBird.FBCAD_PROCEAN.AsString;
  NFE_001NFE_STAV.Value   := FBird.FBCAD_PROREST.AsString;

  NFE_001NFE_PESO.Value := FBird.FBCAD_PROPESO.AsFloat;
  NFE_001NFE_PSCN.Value := FBird.FBCAD_PROPSCN.AsFloat;
  NFE_001NFE_METR.Value := FBird.FBCAD_PROMETRO.AsFloat;
  NFE_001NFE_REND.Value := FBird.FBCAD_PROREND.AsFloat;
  NFE_001NFE_QTUN.Value := FBird.FBCAD_PROUQTDE.AsInteger; { RICARDO }

  NFE_001NFE_COMP.Value      := Trim(FBird.FBCAD_PROCMP_PAD.AsString);
  NFE_001NFE_INFADPROD.Value := Trim(FBird.FBCAD_PROCMP_PAD.AsString);
  if not oEmpty(NFE_001NFE_INFADPROD.AsString) then
     NFE_001NFE_INFADPROD.Value := 'COMPOSICAO: '+NFE_001NFE_INFADPROD.AsString;

  if ((FBird.FBCAD_PROUQVOL.AsFloat > 0) and (not oEmpty(FBird.FBCAD_PROUESP.AsString))) then
       NFE_001NFE_INFADPROD.Value := NFE_001NFE_INFADPROD.AsString+#13+'CONTEUDO: '+FBird.FBCAD_PROUQVOL.AsString+FBird.FBCAD_PROUESP.AsString
  else
     if Pos(LeftStr(FBird.FBCAD_PROUCOM.AsString,1),'KMY') = 0 then
        if FBird.FBCAD_PROMETRO.AsFloat > 0 then
           NFE_001NFE_INFADPROD.Value := NFE_001NFE_INFADPROD.AsString+#13+'CONTEUDO: '+FormatFloat('0.00M',FBird.FBCAD_PROMETRO.AsFloat);

  NFE_001NFE_INFADPROD.Value := Trim(NFE_001NFE_INFADPROD.AsString);
end;

procedure Tfrmven_nfe.SALVA_NF;
begin
  if (Pos(CECDNF.Text,SBRodape.Panels[3].Text) = 0) or (Length(SBRodape.Panels[3].Text) < 44) then
  oException(Nil,'Código de Barras da Nota Fiscal não Informado !');

  { Cadastros dos Destinatários }
  oOTransact(TEdicao);
  _Cadastros;

  { Auto Increment }
  try
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_'+oREPZero('NFE_CAB','_',RECParametros.EP_ID,3)+',0) FROM RDB$DATABASE');
      ExecQuery;
      AID := Current.Vars[0].AsInteger + 1;
    end;
  except
    on E: Exception do
    begin
      Enviado := False;

      oCTransact(TEdicao,ltRollback);
      oException(Nil    ,'Falha ao tentar atribuir ID de Identificação !'         +#13+
                         'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                         'Erro: '+E.Message);
    end;
  end;

  { Transportadora }
  try
    SPEdicao.Close;
    SPEdicao.StoredProcName := 'SP_NFE_TRA';
    SPEdicao.Prepare;

    SPEdicao.ParamByName('nfe').Value       := oREPZero('NFE_TRA','_',RECParametros.EP_ID,3);
    SPEdicao.ParamByName('id').Value        := 0;
    SPEdicao.ParamByName('CCAB').Value      := AID;
    SPEdicao.ParamByName('CTRA').Value      := CEIDCT.Value;
    SPEdicao.ParamByName('CFRT').Value      := '';
    SPEdicao.ParamByName('MODFRETE').Value  := IEModFrete.Text;
    SPEdicao.ParamByName('RETTRANSP').Value := '';
    SPEdicao.ParamByName('VSERV').Value     := 0;
    SPEdicao.ParamByName('VBCRET').Value    := 0;
    SPEdicao.ParamByName('PICMSRET').Value  := 0;
    SPEdicao.ParamByName('VICMSRET').Value  := 0;
    SPEdicao.ParamByName('CFOP').Value      := 0;
    SPEdicao.ParamByName('CMUNFG').Value    := 0;
    SPEdicao.ParamByName('PLACA').Value     := PETPlaca.Text ;
    SPEdicao.ParamByName('UF').Value        := PETUFPlaca.Text;
    SPEdicao.ParamByName('RNTC').Value      := EDTRNTC.Text;
    SPEdicao.ParamByName('QVOL').Value      := V1_CEQVOL.Value;
    SPEdicao.ParamByName('ESP').Value       := V1_EDESP.Text;
    SPEdicao.ParamByName('MARCA').Value     := V1_EDMARCA.Text;
    SPEdicao.ParamByName('NVOL').Value      := V1_CENVOL.Text;
    SPEdicao.ParamByName('PSBR').Value      := V1_CEPSBR.Value;
    SPEdicao.ParamByName('PSLQ').Value      := V1_CEPSLQ.Value;
    SPEdicao.ParamByName('NLACRE').Value    := EDNLacres1.Text + EDNLacres2.Text;
    SPEdicao.ExecProc;
  except
    on E: Exception do
    begin
     Enviado := False;

     oCTransact(TEdicao,ltRollback);
     oException(Nil    ,'Falha ao tentar atualizar transportadora !'             +#13+
                        'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                        'Erro: '+E.Message);
    end;
  end;

  { NF Serviços }
  try
    CLI_001.First;
    while not CLI_001.Eof do
    begin
      SPEdicao.Close;
      SPEdicao.StoredProcName := 'SP_NFE_CLI';
      SPEdicao.Prepare;

      SPEdicao.ParamByName('nfe').Value  := oREPZero('NFE_CLI','_',RECParametros.EP_ID,3);
      SPEdicao.ParamByName('id').Value   := 0;
      SPEdicao.ParamByName('CCAB').Value := AID;
      SPEdicao.ParamByName('CDNF').Value := CLI_001NFE_CDNF.AsInteger;
      SPEdicao.ParamByName('DCAD').Value := CLI_001NFE_DCAD.AsDateTime;
      SPEdicao.ParamByName('VNF').Value  := CLI_001NFE_VNF.AsFloat;
      SPEdicao.ExecProc;

      CLI_001.Next;
    end;
  except
    on E: Exception do
    begin
     Enviado := False;

     oCTransact(TEdicao,ltRollback);
     oException(Nil    ,'Falha ao tentar registrar notas de serviços !'          +#13+
                        'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                        'Erro: '+E.Message);
    end;
  end;

  { Duplicatas }
  if Pos(SBRodape.Panels[5].Text,'100150') > 0 then
  try
    DUP_001.First;
    while not DUP_001.Eof do
    begin
      SPEdicao.Close;
      SPEdicao.StoredProcName := 'SP_NFE_DUP';
      SPEdicao.Prepare;

      SPEdicao.ParamByName('nfe').Value  := oREPZero('NFE_DUP','_',RECParametros.EP_ID,3);
      SPEdicao.ParamByName('id').Value   := 0;
      SPEdicao.ParamByName('CCAB').Value := AID;
      SPEdicao.ParamByName('CDRO').Value := DUP_001NFE_CDRO.AsInteger;
      SPEdicao.ParamByName('CFAV').Value := DUP_001NFE_CFAV.AsInteger;
      SPEdicao.ParamByName('DROM').Value := DUP_001NFE_DROM.AsDateTime;
      SPEdicao.ParamByName('CDNF').Value := DUP_001NFE_CDNF.AsInteger;
      SPEdicao.ParamByName('DNFE').Value := DUP_001NFE_DNFE.AsDateTime;
      SPEdicao.ParamByName('TITU').Value := DUP_001NFE_TITU.AsString;
      SPEdicao.ParamByName('STPD').Value := DUP_001NFE_STPD.AsString;
      SPEdicao.ParamByName('STCO').Value := DUP_001NFE_STCO.AsString;
      SPEdicao.ParamByName('STFI').Value := DUP_001NFE_STFI.AsString;
      SPEdicao.ParamByName('PARC').Value := DUP_001NFE_PARC.AsInteger;
      SPEdicao.ParamByName('DVEN').Value := DUP_001NFE_DVEN.AsDateTime;
      SPEdicao.ParamByName('VDUP').Value := DUP_001NFE_VDUP.AsFloat;
      SPEdicao.ParamByName('DPAG').Value := DUP_001NFE_DPAG.AsDateTime;
      SPEdicao.ParamByName('VPAG').Value := DUP_001NFE_VPAG.AsFloat;
      SPEdicao.ParamByName('VPEN').Value := DUP_001NFE_VPEN.AsFloat;
      SPEdicao.ParamByName('OBSE').Value := DUP_001NFE_OBSE.Value;
      SPEdicao.ParamByName('STA').Value  := '0';
      SPEdicao.ExecProc;

      DUP_001.Next;
    end;
  except
    on E: Exception do
    begin
      Enviado := False;

      oCTransact(TEdicao,ltRollback);
      oException(Nil    ,'Falha ao tentar registrar duplicatas !'                 +#13+
                         'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                         'Erro: '+E.Message);
    end;
  end;

  { Itens }
  try
    NFE_001.DisableControls;
    NFE_001.First;
    try
      while not NFE_001.Eof do
      begin
        SPEdicao.Close;
        SPEdicao.StoredProcName := 'SP_NFE_ITE';
        SPEdicao.Prepare;

        SPEdicao.ParamByName('nfe').Value            := oREPZero('NFE_ITE','_',RECParametros.EP_ID,3);
        SPEdicao.ParamByName('id').Value             := 0;
        SPEdicao.ParamByName('CCAB').Value           := AID;
        SPEdicao.ParamByName('CDNF').Value           := CECDNF.Value;
        SPEdicao.ParamByName('INDTOT').Value         := NFE_001NFE_INDTOT.AsInteger;
        SPEdicao.ParamByName('CFOP').Value           := NFE_001NFE_CFOP.AsString;
        SPEdicao.ParamByName('CART').Value           := NFE_001NFE_CART.AsString;
        SPEdicao.ParamByName('CPROD').Value          := NFE_001NFE_CPROD.AsString;
        SPEdicao.ParamByName('CEAN').Value           := NFE_001NFE_CEAN.AsString;
        SPEdicao.ParamByName('NCM').Value            := NFE_001NFE_NCM.AsString;
        SPEdicao.ParamByName('EXTIPI').Value         := NFE_001NFE_EXTIPI.AsString;
        SPEdicao.ParamByName('DCOR').Value           := NFE_001NFE_DCOR.AsString;
        SPEdicao.ParamByName('XPROD').Value          := NFE_001NFE_XPROD.AsString;
        SPEdicao.ParamByName('INFADPROD').Value      := NFE_001NFE_INFADPROD.AsString;
        SPEdicao.ParamByName('UCOM').Value           := NFE_001NFE_UCOM.AsString;
        SPEdicao.ParamByName('QCOM').Value           := NFE_001NFE_QCOM.AsFloat;
        SPEdicao.ParamByName('RCOM').Value           := NFE_001NFE_RCOM.AsInteger;

        SPEdicao.ParamByName('PSCN').Value           := NFE_001NFE_PSCN.AsFloat;
        SPEdicao.ParamByName('PSBR').Value           := NFE_001NFE_PSBR.AsFloat;
        SPEdicao.ParamByName('PSLQ').Value           := NFE_001NFE_PSLQ.AsFloat;

        SPEdicao.ParamByName('VUNCOM').Value         := NFE_001NFE_VUNCOM.AsFloat;
        SPEdicao.ParamByName('VPROD').Value          := NFE_001NFE_VPROD.AsFloat;
        SPEdicao.ParamByName('VFRETE').Value         := NFE_001NFE_VFRETE.AsFloat;
        SPEdicao.ParamByName('VSEG').Value           := NFE_001NFE_VSEG.AsFloat;
        SPEdicao.ParamByName('VDESC').Value          := NFE_001NFE_VDESC.AsFloat;
        SPEdicao.ParamByName('VOUTRO').Value         := NFE_001NFE_VOUTRO.AsFloat;
        SPEdicao.ParamByName('XLOCEMBARQ').Value     := NFE_001NFE_XLOCEMBARQ.AsString;
        SPEdicao.ParamByName('UFEMBARQ').Value       := NFE_001NFE_UFEMBARQ.AsString;
        SPEdicao.ParamByName('NDI').Value            := NFE_001NFE_NDI.AsString;
        SPEdicao.ParamByName('DDI').Value            := Date;
        SPEdicao.ParamByName('XLOCDESEMB').Value     := NFE_001NFE_XLOCDESEMB.AsString;
        SPEdicao.ParamByName('UFDESEMB').Value       := NFE_001NFE_UFDESEMB.AsString;
        SPEdicao.ParamByName('DDESEMB').Value        := Date;
        SPEdicao.ParamByName('CEXPORTADOR').Value    := NFE_001NFE_CEXPORTADOR.AsString;
        SPEdicao.ParamByName('NADICAO').Value        := NFE_001NFE_NADICAO.AsInteger;
        SPEdicao.ParamByName('NSEQADIC').Value       := NFE_001NFE_NSEQADIC.AsInteger;
        SPEdicao.ParamByName('CFABRICANTE').Value    := NFE_001NFE_CFABRICANTE.AsString;
        SPEdicao.ParamByName('VDESCDI').Value        := NFE_001NFE_VDESCDI.AsFloat;
        SPEdicao.ParamByName('XPED').Value           := NFE_001NFE_XPED.AsString;
        SPEdicao.ParamByName('ITEMPED').Value        := NFE_001NFE_ITEMPED.AsString;
        SPEdicao.ParamByName('ORIG').Value           := NFE_001NFE_ORIG.AsString;
        SPEdicao.ParamByName('CST').Value            := NFE_001NFE_CST.AsString;
        SPEdicao.ParamByName('MODBC').Value          := NFE_001NFE_MODBC.AsString;
        SPEdicao.ParamByName('PREDBC').Value         := NFE_001NFE_PREDBC.AsFloat;
        SPEdicao.ParamByName('VBC').Value            := NFE_001NFE_VBC.AsFloat;
        SPEdicao.ParamByName('PICMS').Value          := NFE_001NFE_PICMS.AsFloat;
        SPEdicao.ParamByName('VICMS').Value          := NFE_001NFE_VICMS.AsFloat;
        SPEdicao.ParamByName('MODBCST').Value        := NFE_001NFE_MODBCST.AsString;
        SPEdicao.ParamByName('MVAST').Value          := NFE_001NFE_MVAST.AsFloat;
        SPEdicao.ParamByName('PREDBCST').Value       := NFE_001NFE_PREDBCST.AsFloat;
        SPEdicao.ParamByName('VBCST').Value          := NFE_001NFE_VBCST.AsFloat;
        SPEdicao.ParamByName('VBCSTRET').Value       := NFE_001NFE_VBCSTRET.AsFloat;
        SPEdicao.ParamByName('VICMSSTRET').Value     := NFE_001NFE_VICMSSTRET.AsFloat;
        SPEdicao.ParamByName('PICMSST').Value        := NFE_001NFE_PICMSST.AsFloat;
        SPEdicao.ParamByName('VICMSST').Value        := NFE_001NFE_VICMSST.AsFloat;
        SPEdicao.ParamByName('PCREDSN').Value        := NFE_001NFE_PCREDSN.AsFloat;
        SPEdicao.ParamByName('VCREDICMSSN').Value    := NFE_001NFE_VCREDICMSSN.AsFloat;
        SPEdicao.ParamByName('CSTIPI').Value         := NFE_001NFE_CSTIPI.AsString;
        SPEdicao.ParamByName('VBCIPI').Value         := NFE_001NFE_VBCIPI.AsFloat;
        SPEdicao.ParamByName('PIPI').Value           := NFE_001NFE_PIPI.AsFloat;
        SPEdicao.ParamByName('VIPI').Value           := NFE_001NFE_VIPI.AsFloat;
        SPEdicao.ParamByName('VBCIMP').Value         := NFE_001NFE_VBCIMP.AsFloat;
        SPEdicao.ParamByName('VDESPADU').Value       := NFE_001NFE_VDESPADU.AsFloat;
        SPEdicao.ParamByName('VIIIMP').Value         := NFE_001NFE_VIIIMP.AsFloat;
        SPEdicao.ParamByName('VIOFIMP').Value        := NFE_001NFE_VIOFIMP.AsFloat;
        SPEdicao.ParamByName('CSTPIS').Value         := NFE_001NFE_CSTPIS.AsString;
        SPEdicao.ParamByName('VBCPIS').Value         := NFE_001NFE_VBCPIS.AsFloat;
        SPEdicao.ParamByName('PPIS').Value           := NFE_001NFE_PPIS.AsFloat;
        SPEdicao.ParamByName('VPIS').Value           := NFE_001NFE_VPIS.AsFloat;
        SPEdicao.ParamByName('VBCPISST').Value       := NFE_001NFE_VBCPISST.AsFloat;
        SPEdicao.ParamByName('PPISST').Value         := NFE_001NFE_PPISST.AsFloat;
        SPEdicao.ParamByName('VPISST').Value         := NFE_001NFE_VPISST.AsFloat;
        SPEdicao.ParamByName('CSTCOFINS').Value      := NFE_001NFE_CSTCOFINS.AsString;
        SPEdicao.ParamByName('VBCOFINS').Value       := NFE_001NFE_VBCOFINS.AsFloat;
        SPEdicao.ParamByName('PCOFINS').Value        := NFE_001NFE_PCOFINS.AsFloat;
        SPEdicao.ParamByName('VCOFINS').Value        := NFE_001NFE_VCOFINS.AsFloat;
        SPEdicao.ParamByName('VBCOFINSST').Value     := NFE_001NFE_VBCOFINSST.AsFloat;
        SPEdicao.ParamByName('PCOFINSST').Value      := NFE_001NFE_PCOFINSST.AsFloat;
        SPEdicao.ParamByName('VCOFINSST').Value      := NFE_001NFE_VCOFINSST.AsFloat;
        SPEdicao.ParamByName('VBCISSQN').Value       := NFE_001NFE_VBCISSQN.AsFloat;
        SPEdicao.ParamByName('VALIQISSQN').Value     := NFE_001NFE_VALIQISSQN.AsFloat;
        SPEdicao.ParamByName('VISSQN').Value         := NFE_001NFE_VISSQN.AsFloat;
        SPEdicao.ParamByName('CMUNFGISSQN').Value    := NFE_001NFE_CMUNFGISSQN.AsString;
        SPEdicao.ParamByName('CLISTSERV').Value      := NFE_001NFE_CLISTSERV.AsInteger;
        SPEdicao.ParamByName('VNF').Value            := NFE_001NFE_VNF.AsFloat;
        SPEdicao.ParamByName('CEST').Value           := NFE_001NFE_CEST.AsString;
        SPEdicao.ParamByName('VBCSTDEST').Value      := NFE_001NFE_VBCSTDEST.AsFloat;
        SPEdicao.ParamByName('VICMSSTDEST').Value    := NFE_001NFE_VICMSSTDEST.AsFloat;
        SPEdicao.ParamByName('VBCUFDEST').Value      := NFE_001NFE_VBCUFDEST.AsFloat;
        SPEdicao.ParamByName('PFCPUFDEST').Value     := NFE_001NFE_PFCPUFDEST.AsFloat;
        SPEdicao.ParamByName('PICMSUFDEST').Value    := NFE_001NFE_PICMSUFDEST.AsFloat;
        SPEdicao.ParamByName('PICMSINTER').Value     := NFE_001NFE_PICMSINTER.AsFloat;
        SPEdicao.ParamByName('PICMSINTERPART').Value := NFE_001NFE_PICMSINTERPART.AsFloat;
        SPEdicao.ParamByName('VFCPUFDEST').Value     := NFE_001NFE_VFCPUFDEST.AsFloat;
        SPEdicao.ParamByName('VICMSUFDEST').Value    := NFE_001NFE_VICMSUFDEST.AsFloat;
        SPEdicao.ParamByName('VICMSUFREMET').Value   := NFE_001NFE_VICMSUFREMET.AsFloat;
        SPEdicao.ParamByName('NFCI').Value           := NFE_001NFE_NFCI.AsString;
        SPEdicao.ExecProc;

        NFE_001.Next;
      end;
    except
      on E: Exception do
      begin
        Enviado := False;

        oCTransact(TEdicao,ltRollback);
        oException(Nil    ,'Falha ao tentar registrar os itens da nota !'           +#13+
                           'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                           'Erro: '+E.Message);
      end;
    end;
  finally
    NFE_001.First;
    NFE_001.EnableControls;
  end;

  { Nota Fiscal }
  try
    SPEdicao.Close;
    SPEdicao.StoredProcName := 'SP_NFE_CAB';
    SPEdicao.Prepare;

    SPEdicao.ParamByName('nfe').Value          := oREPZero('NFE_CAB','_',RECParametros.EP_ID,3);
    SPEdicao.ParamByName('id').Value           := 0;
    SPEdicao.ParamByName('REST').Value         := IFThen(Pos(SBRodape.Panels[5].Text,'100150') > 0,'A','D');
    SPEdicao.ParamByName('CDNF').Value         := CECDNF.Value;
    SPEdicao.ParamByName('R_CDNF').Value       := CER_CDNF.Value;
    SPEdicao.ParamByName('DEMI').Value         := DEdhEmi.Date;
    SPEdicao.ParamByName('DSAI').Value         := IFThen(DEdhSaiEnt.Date < 0,DEdhEmi.Date,DEdhSaiEnt.Date);
    SPEdicao.ParamByName('CDRO').Value         := CECDRO.Value;
    SPEdicao.ParamByName('DERO').Value         := EDCDPD.Text;
    SPEdicao.ParamByName('CVEN').Value         := RECRomaneio.IDCV;
    SPEdicao.ParamByName('DVEN').Value         := RECRomaneio.DECV;
    SPEdicao.ParamByName('CREP').Value         := RECRomaneio.IDCR;
    SPEdicao.ParamByName('DREP').Value         := RECRomaneio.DECR;
    SPEdicao.ParamByName('CFAV').Value         := CEIDCD.Text;
    SPEdicao.ParamByName('DFAV').Value         := EDDECD.Text;
    SPEdicao.ParamByName('CTRA').Value         := CEIDCT.Value;
    SPEdicao.ParamByName('DTRA').Value         := PEDECT.Text;
    SPEdicao.ParamByName('MFRT').Value         := IEModFrete.Text;
    SPEdicao.ParamByName('CFRT').Value         := '';
    SPEdicao.ParamByName('CNAT').Value         := cbcnat.Text;
    SPEdicao.ParamByName('INDPAG').Value       := IEINDPAG.Text;
    SPEdicao.ParamByName('TPNF').Value         := IETPNF.Text;
    SPEdicao.ParamByName('NFREF').Value        := '0';
    SPEdicao.ParamByName('REFNFE').Value       := '';
    SPEdicao.ParamByName('CUFREF').Value       := RECParametros.LOG_UF;
    SPEdicao.ParamByName('CNPJREF').Value      := RECParametros.Cnpj;
    SPEdicao.ParamByName('MODREF').Value       := '01';
    SPEdicao.ParamByName('SERIEREF').Value     := RECParametros.NFE_SERIE;
    SPEdicao.ParamByName('NNFREF').Value       := '0';
    SPEdicao.ParamByName('TPEMIS').Value       := '1';
    SPEdicao.ParamByName('FINNFE').Value       := IEFinNFe.Text;
    SPEdicao.ParamByName('CHAV').Value         := SBRodape.Panels[3].Text;
    SPEdicao.ParamByName('PROT').Value         := SBRodape.Panels[4].Text;
    SPEdicao.ParamByName('QCOM').Value         := oTextToValor(EDTQCom.Text);
    SPEdicao.ParamByName('VBC').Value          := oTextToValor(edvbc.Text);
    SPEdicao.ParamByName('VICMS').Value        := oTextToValor(edvicms.Text);
    SPEdicao.ParamByName('VBCST').Value        := 0;
    SPEdicao.ParamByName('VST').Value          := oTextToValor(edvst.Text);
    SPEdicao.ParamByName('VPROD').Value        := oTextToValor(edvprod.Text);
    SPEdicao.ParamByName('VFRETE').Value       := CEVFRT.Value;
    SPEdicao.ParamByName('VSEG').Value         := CEVSEG.Value;
    SPEdicao.ParamByName('VDESC').Value        := CEVDSC.Value;
    SPEdicao.ParamByName('VII').Value          := oTextToValor(edvII.Text);
    SPEdicao.ParamByName('VIPI').Value         := oTextToValor(edvipi.Text);
    SPEdicao.ParamByName('VPIS').Value         := oTextToValor(edvpis.Text);
    SPEdicao.ParamByName('VCOFINS').Value      := oTextToValor(edvcofins.Text);
    SPEdicao.ParamByName('VOUTRO').Value       := oTextToValor(edvoutro.Text);
    SPEdicao.ParamByName('VNF').Value          := oTextToValor(edvnf.Text);
    SPEdicao.ParamByName('VSERVISSQN').Value   := 0;
    SPEdicao.ParamByName('VBCISSQN').Value     := 0;
    SPEdicao.ParamByName('VISS').Value         := 0;
    SPEdicao.ParamByName('VPISISSQN').Value    := 0;
    SPEdicao.ParamByName('VCOFINSISSQN').Value := 0;
    SPEdicao.ParamByName('VRETPIS').Value      := 0;
    SPEdicao.ParamByName('VRETCOFINS').Value   := 0;
    SPEdicao.ParamByName('VRETCSLL').Value     := 0;
    SPEdicao.ParamByName('VBCIRRF').Value      := 0;
    SPEdicao.ParamByName('VIRRF').Value        := 0;
    SPEdicao.ParamByName('VBCRETPREV').Value   := 0;
    SPEdicao.ParamByName('VRETPREV').Value     := 0;
    SPEdicao.ParamByName('VRETPREV').Value     := 0;
    SPEdicao.ParamByName('VRETPREV').Value     := 0;
    SPEdicao.ParamByName('OBSE').Value         := StringReplace(oREPApostrofos(EDINFADNF.Text),Char(39),'',[rfReplaceAll]);
    SPEdicao.ParamByName('CLFO').Value         := LAIDCD.Tag;
    SPEdicao.ParamByName('ESTO').Value         := IFThen((LeftStr(cbcnat.Text,1) = '3') and (RECParametros.EST_QTRL),'1','0');
    SPEdicao.ExecProc;

    { Estoque de Importados }
    _EstoqueImportados;

    oCTransact(TEdicao);
    oAviso(handle,IFThen(Pos(SBRodape.Panels[5].Text,'100150') > 0,
                  'Nota fiscal transmitida e registrada com sucesso !',

                  'Nota Fiscal Denegada !' + #13 +
                  'Possíveis problemas fiscais desse destinatário na receita federal.' + #13 + #13 +
                  'Favor entrar em contato com o cliente e/ou representante.'));

    if RECRomaneio.FIN_CSPD then
    bBAI_FINANCEIRO(IFThen(DUP_001Id.AsInteger > 0,Trunc(CECDNF.Value),0),IFThen(DUP_001Id.AsInteger > 0,0,RECRomaneio.IDFK)) else

    if (RECRomaneio.FAPD) and (DUP_001Id.AsInteger > 0) then
    bBAI_FINANCEIRO(Trunc(CECDNF.Value),0);

    ACTExecEvent.Execute;
    Enviado := True;
  except
    on E: Exception do
    begin
      Enviado := False;

      oCTransact(TEdicao,ltRollback);
      oException(Nil    ,'Falha ao tentar registrar nota fiscal !'                +#13+
                         'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                         'Erro: '+E.Message);
    end;
  end;
end;

procedure Tfrmven_nfe.LAIDCDClick(Sender: TObject);
begin
  if LAIDCD.Caption = 'Cliente' then
  begin
    LAIDCD.Caption := 'Fornecedor';
    LAIDCD.Tag     := 1;
  end else
  if LAIDCD.Caption = 'Fornecedor' then
  begin
    LAIDCD.Caption := 'Representante';
    LAIDCD.Tag     := 2;
  end else
  if LAIDCD.Caption = 'Representante' then
  begin
    LAIDCD.Caption := 'Transportadora';
    LAIDCD.Tag     := 3;
  end else
  if LAIDCD.Caption = 'Transportadora' then
  begin
    LAIDCD.Caption := 'Cliente';
    LAIDCD.Tag     := 0;
  end;

  CEIDCD.Hint := 'Código do ' + LAIDCD.Caption;
  EDDECD.Hint := 'Nome Fantasia do ' + LAIDCD.Caption;

  LAIDCD.Refresh;
  EDDECD.SetFocus;
end;

procedure Tfrmven_nfe.siINCClick(Sender: TObject);
begin
  oAppend(NFE_001,True);
end;

procedure Tfrmven_nfe.siALTClick(Sender: TObject);
begin
  oEdit(NFE_001,True);
end;

procedure Tfrmven_nfe.siDELClick(Sender: TObject);
begin
  if oYesNo(handle,'Excluir Item Nº '+NFE_001NFE_ITEMPED.AsString+' ?') = mrNo then
     Abort;

  NFE_001.Delete;
end;

procedure Tfrmven_nfe.siSAVClick(Sender: TObject);
begin
  oPost(NFE_001,True);
end;

procedure Tfrmven_nfe.siCANClick(Sender: TObject);
begin
  oCancel(NFE_001,True);
end;

procedure Tfrmven_nfe.NFE_001AfterDelete(DataSet: TDataSet);
begin
  CALCULA_NF;
end;

procedure Tfrmven_nfe.NFE_001BeforeOpen(DataSet: TDataSet);
begin
  DBGEdicao.Bands[6].Visible := False; { Substituição Tributária }
  DBGEdicaoNFE_NFCI.Visible  := False; { NFCI }
end;

procedure Tfrmven_nfe.NFE_001AfterScroll(DataSet: TDataSet);
begin
  { Substituição Tributária }
  if NFE_001NFE_PICMSST.AsCurrency > 0 then
  DBGEdicao.Bands[6].Visible := True;

  { NFCI }
  if NFE_001NFE_NFCI.AsString <> EmptyStr then
  DBGEdicaoNFE_NFCI.Visible := True;
end;

procedure Tfrmven_nfe.NFE_001AfterOpen(DataSet: TDataSet);
begin
  if DUP_001.State = dsInactive then
     DUP_001.Open;

  if CLI_001.State = dsInactive then
     CLI_001.Open;

  ATUALIZA_MENSAGENS;
end;

procedure Tfrmven_nfe.NFE_001AfterPost(DataSet: TDataSet);
var
  BMRecord: TBookMark;
begin
  if (Tag = 0) and (BCalc) then
  begin
    BMRecord := NFE_001.GetBookmark;
    CALCULA_NF;

    if (BMRecord = Nil) or (NFE_001.Fields[0].IsNull) then NFE_001.last else
    NFE_001.GotoBookmark(BMRecord);
    NFE_001.FreeBookmark(BMRecord);
  end;
end;

procedure Tfrmven_nfe.NFE_001BeforeInsert(DataSet: TDataSet);
begin
  if Tag = 0 then
     NFE_001Id.Tag := NFE_001Id.AsInteger;
end;

procedure Tfrmven_nfe.NFE_001BeforeCancel(DataSet: TDataSet);
begin
  if NFE_001Id.Tag = 0 then
  begin
    NFE_001.Close;
    NFE_001.Open;
    ABORT;
  end;
end;

procedure Tfrmven_nfe.NFE_001NewRecord(DataSet: TDataSet);
begin
  with Aux_S do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COALESCE(MAX(NFE_ITEMPED),0) FROM NFE_ITE');
    Open;
  end;

  NFE_001ID.Value          := 0;
  NFE_001NFE_IPRO.Value    := 0;
  NFE_001NFE_ITEMPED.Value := Aux_S.Fields[0].AsInteger + 1;

  NFE_001NFE_QCOM.Value      := 0;
  NFE_001NFE_VUNCOM.Value    := 0;

  NFE_001NFE_QTRIB.Value     := 0;
  NFE_001NFE_VUNTRIB.Value   := 0;

  NFE_001NFE_VPROD.Value     := 0;
  NFE_001NFE_VDESC.Value     := 0;
  NFE_001NFE_VNF.Value       := 0;

  NFE_001UF.Value            := PEUF.Text;

  NFE_001NFE_VICMS.Value     := 0;
  NFE_001NFE_VBC.Value       := 0;
  NFE_001NFE_PREDBC.Value    := 0;
  NFE_001NFE_MODBC.Value     := '3';

  NFE_001NFE_VI04.Value      := 0;
  NFE_001NFE_VI07.Value      := 0;
  NFE_001NFE_VI12.Value      := 0;
  NFE_001NFE_VI18.Value      := 0;
  NFE_001NFE_VBCST.Value     := 0;
  NFE_001NFE_PICMSST.Value   := 0;
  NFE_001NFE_VICMSST.Value   := 0;

  NFE_001NFE_PIPI.Value      := 0;
  NFE_001NFE_VIPI.Value      := 0;
  NFE_001NFE_VBCIPI.Value    := 0;
  NFE_001NFE_EXTIPI.Value    := EmptyStr;
  NFE_001NFE_CEST.Value      := EmptyStr;
  NFE_001NFE_CENQ.Value      := EmptyStr;

  NFE_001NFE_PPIS.Value      := 0;
  NFE_001NFE_VPIS.Value      := 0;
  NFE_001NFE_VBCPIS.Value    := 0;

  NFE_001NFE_PCOFINS.Value   := 0;
  NFE_001NFE_VCOFINS.Value   := 0;
  NFE_001NFE_VBCOFINS.Value  := 0;

  NFE_001NFE_VFRETE.Value    := 0;
  NFE_001NFE_VSEG.Value      := 0;
  NFE_001NFE_VOUTRO.Value    := 0;

  NFE_001NFE_QVOL.Value      := 0;
  NFE_001NFE_PSCN.Value      := 0;
  NFE_001NFE_PSBR.Value      := 0;
  NFE_001NFE_PSLQ.Value      := 0;

  NFE_001NFE_CDNF.Value      := Trunc(CECDNF.Value);
  NFE_001NFE_CFOP.Value      := LeftStr(cbcnat.Text,4);
  NFE_001NFE_REPR.Value      := 'R';

  NFE_001IDEV.Value := 0;
  NFE_001CDEV.Value := 19;

  NFE_001IP.Value   := RECParametros.IP;
  NFE_001HOST.Value := RECParametros.HOST;
end;

procedure Tfrmven_nfe.cbduplChange(Sender: TObject);
begin
  if (Tag = 0) and (CBDUPL.Tag = 0) then
  DUPLICATAS;
end;

procedure Tfrmven_nfe.DUP_001AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  if (Tag = 0) and (BCalc) then
  begin
    wRec := DUP_001.GetBookmark;

    TSEdicao.CommitRetaining;
    DUP_001.Close;
    DUP_001.Open;

    if (wRec = Nil) or (DUP_001.Fields[0].IsNull) then DUP_001.last else
    DUP_001.GotoBookmark(wRec);
    DUP_001.FreeBookmark(wRec);
  end;
end;

procedure Tfrmven_nfe.DUP_001BeforeCancel(DataSet: TDataSet);
begin
  if DUP_001.RecordCount = 0 then
  begin
    DUP_001.Close;
    DUP_001.Open;
    ABORT;
  end;
end;

procedure Tfrmven_nfe.DUP_001AfterDelete(DataSet: TDataSet);
begin
  TSEdicao.CommitRetaining;
  DUP_001.Close;
  DUP_001.Open;
end;

procedure Tfrmven_nfe.DUP_001AfterEdit(DataSet: TDataSet);
begin
  if Tag = 0 then
  begin
    siIDU.Enabled := false;
    siADU.Enabled := false;
    siDDU.Enabled := false;
    siSDU.Enabled := true;
    siCDU.Enabled := true;
  end;
end;

procedure Tfrmven_nfe.DUP_001AfterOpen(DataSet: TDataSet);
begin
  if Tag = 0 then
  begin
    siIDU.Enabled := true;
    siADU.Enabled := true;
    siDDU.Enabled := true;
    siSDU.Enabled := false;
    siCDU.Enabled := false;
  end;
end;

procedure Tfrmven_nfe.DUP_001NewRecord(DataSet: TDataSet);
begin
  DUP_001ID.Value := 0;
  DUP_001NFE_CDRO.Value := Trunc(CECDRO.Value);
  DUP_001NFE_DROM.Value := DEdhEmi.Date;

  DUP_001NFE_CFAV.Value := Trunc(CEIDCD.Value);
  DUP_001NFE_CDNF.Value := Trunc(CECDNF.Value);
end;

procedure Tfrmven_nfe.DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if NFE_001.State in [dsInsert,dsEdit] then
                 begin
                   if Pos(DBGEdicao.FocusedField.FieldName,'NFE_CPRODNFE_NCMNFE_XPROD') > 0 then
                      try
                        oOTransact(FBird.TFBProdutos);
                        _CPPSQ(oRETCodigo(DBGEdicao.EditingText),IFThen(Pos(DBGEdicao.FocusedField.FieldName,'NFE_CPROD') > 0,'CP.PRO_CPRO',
                                                              IFThen(Pos(DBGEdicao.FocusedField.FieldName,'NFE_NCM'  ) > 0,'CP.NCM','CP.PRO_DPRO')));
                        DBGEdicaoNFE_QCOM.Field.FocusControl;
                      finally
                        oCTransact(FBird.TFBProdutos);
                      end else
                   if  DBGEdicao.FocusedField.FieldName = 'NFE_QCOM' then
                       DBGEdicaoNFE_VUNCOM.Field.FocusControl else
                   if (DBGEdicao.FocusedField.FieldName = 'NFE_VUNCOM') and (DBGEdicaoNFE_UTRIB.Visible) then
                       DBGEdicaoNFE_UTRIB.Field.FocusControl else
                   if (DBGEdicao.FocusedField.FieldName = 'NFE_VUNCOM') and (not DBGEdicaoNFE_UTRIB.Visible) then
                       DBGEdicaoNFE_VPROD.Field.FocusControl else
                       DBGEdicao.FocusedAbsoluteIndex := DBGEdicao.FocusedAbsoluteIndex + 1;

                   if ((DBGEdicao.FocusedField.FieldName = 'NFE_QCOM') or (DBGEdicao.FocusedField.FieldName = 'NFE_VUNCOM') or (DBGEdicao.FocusedField.FieldName = 'NFE_VDESS')) and
                       (DBGEdicaoNFE_VPROD.Field.AsFloat > 0) then
                   begin
                     NFE_001.Next;
                     if NFE_001.Eof then
                     NFE_001.Append;
                   end;
                 end else
                 NFE_001.Edit;
               end;
    VK_DELETE: if NFE_001.State = dsBrowse then siDEL.Click;
    VK_ESCAPE: if NFE_001.State = dsBrowse then close else NFE_001.Cancel;
  end;
end;

procedure Tfrmven_nfe.EDidEstrangeiroValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  EDINFADNF.Text := trim(EDINFADNF.Text)+EDidEstrangeiro.Text;
end;

procedure Tfrmven_nfe.CLI_001AfterCancel(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siICL.Enabled := true;
    siACL.Enabled := true;
    siDCL.Enabled := true;
    siSCL.Enabled := false;
    siCCL.Enabled := false;
  end;
end;

procedure Tfrmven_nfe.CLI_001AfterDelete(DataSet: TDataSet);
begin
  try     Tag := 1; CALCULA_FRETE;
  finally CALCULA_NF;
  end;
end;

procedure Tfrmven_nfe.CLI_001AfterEdit(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siICL.Enabled := false;
    siACL.Enabled := false;
    siDCL.Enabled := false;
    siSCL.Enabled := true;
    siCCL.Enabled := true;
  end;
end;

procedure Tfrmven_nfe.CLI_001AfterInsert(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siICL.Enabled := false;
    siACL.Enabled := false;
    siDCL.Enabled := false;
    siSCL.Enabled := true;
    siCCL.Enabled := true;

    DBGCLI.FocusedAbsoluteIndex := 0;
  end;
end;

procedure Tfrmven_nfe.CLI_001AfterOpen(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siICL.Enabled := true;
    siACL.Enabled := true;
    siDCL.Enabled := true;
    siSCL.Enabled := false;
    siCCL.Enabled := false;
  end;
end;

procedure Tfrmven_nfe.CLI_001AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  if (Tag = 0) and (BCalc) then
  begin
    siICL.Enabled := true;
    siACL.Enabled := true;
    siDCL.Enabled := true;
    siSCL.Enabled := false;
    siCCL.Enabled := false;

    DBGEdicaoNFE_QCOM.Tag := 0;
    wRec := CLI_001.GetBookmark;
    try     Tag := 1  ; CALCULA_FRETE;
    finally CALCULA_NF;
    end;

    if (wRec = Nil) or (CLI_001.Fields[0].IsNull) then CLI_001.last else
    CLI_001.GotoBookmark(wRec);
    CLI_001.FreeBookmark(wRec);
  end;
end;

procedure Tfrmven_nfe.CLI_001BeforeCancel(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siACL.Enabled := true;
    siDCL.Enabled := true;
    siSCL.Enabled := false;
    siCCL.Enabled := false;
  end;

  if CLI_001.RecordCount = 0 then
  begin
    CLI_001.Close;
    CLI_001.Open;
    ABORT;
  end;
end;

procedure Tfrmven_nfe.CLI_001NewRecord(DataSet: TDataSet);
begin
  CLI_001ID.Value       := 0;
  CLI_001NFE_DCAD.Value := DEdhEmi.Date;
end;

procedure Tfrmven_nfe.CLI_001BeforePost(DataSet: TDataSet);
begin
  if CLI_001NFE_CDNF.AsInteger = 0 then
     DataBaseError('Número da nota fiscal de serviço não informado !');

  if CLI_001NFE_DCAD.IsNull then
     DataBaseError('Data de emissão da nota fiscal de serviço não informado !');

  if CLI_001NFE_VNF.AsFloat = 0 then
     DataBaseError('Valor total da nota fiscal de serviço não informado !');
end;

procedure Tfrmven_nfe.siICLClick(Sender: TObject);
begin
  CLI_001.Append;
end;

procedure Tfrmven_nfe.siACLClick(Sender: TObject);
begin
  CLI_001.Edit;
end;

procedure Tfrmven_nfe.siDCLClick(Sender: TObject);
begin
  CLI_001.Delete;
end;

procedure Tfrmven_nfe.siSCLClick(Sender: TObject);
begin
  CLI_001.Post;
end;

procedure Tfrmven_nfe.siCCLClick(Sender: TObject);
begin
  CLI_001.Cancel;
end;

procedure Tfrmven_nfe.siIDUClick(Sender: TObject);
begin
  DUP_001.Append;
end;

procedure Tfrmven_nfe.siDDUClick(Sender: TObject);
begin
  DUP_001.Delete;
end;

procedure Tfrmven_nfe.siSDUClick(Sender: TObject);
begin
  DUP_001.Post;
end;

procedure Tfrmven_nfe.siCDUClick(Sender: TObject);
begin
  DUP_001.Cancel;
end;

procedure Tfrmven_nfe.siADUClick(Sender: TObject);
begin
  DUP_001.Edit;
end;

procedure Tfrmven_nfe.NFE_001NFE_UCOMValidate(Sender: TField);
begin
  if ((BCalc) and (IEFinNFe.Text <> '2')) then
  begin
    if (LeftStr(NFE_001NFE_CFOP.AsString,1) <> '7') or (NFE_001NFE_QTRIB.AsFloat = 0) then
    begin
      NFE_001NFE_UTRIB.Value   := NFE_001NFE_UCOM.AsString;
      NFE_001NFE_QTRIB.Value   := NFE_001NFE_QCOM.AsFloat;
      NFE_001NFE_VUNTRIB.Value := NFE_001NFE_VUNCOM.AsFloat;
    end;

    NFE_001NFE_VPROD.Value := oTextToValor(NFE_001NFE_QCOM.AsFloat * NFE_001NFE_VUNCOM.AsFloat);
  end;
  if DBGEdicaoNFE_QCOM.Tag = 1 then
     BCalc := False;
end;

procedure Tfrmven_nfe.NFE_001NFE_PIPIValidate(Sender: TField);
begin
  if (IEFinNFe.Text <> '2') and (EDISUF.Text = EmptyStr) then
     NFE_001NFE_CSTIPI.Value := IFThen(NFE_001NFE_PIPI.AsFloat > 0,tab_natNAT_CSTI.AsString,tab_natNAT_CSTI0.AsString);
end;

procedure Tfrmven_nfe.NFE_001NFE_VPRODValidate(Sender: TField);
begin
  if (IEFinNFe.Text <> '2') and (EDISUF.Text = EmptyStr) then
     if ((NFE_001NFE_QTRIB.AsFloat > 0) and (NFE_001NFE_VPROD.AsFloat > 0) and (NFE_001NFE_QTRIB.AsFloat <> NFE_001NFE_QCOM.AsFloat)) then
          NFE_001NFE_VUNTRIB.Value := NFE_001NFE_VPROD.AsFloat / NFE_001NFE_QTRIB.AsFloat;
end;

procedure Tfrmven_nfe.NFE_001BeforePost(DataSet: TDataSet);
begin
  if IEFinNFe.Text <> '2' then
  begin
    if Length(NFE_001NFE_NCM.AsString) < 8 then
       NFE_001NFE_NCM.Value := '00000000';

    if (RightStr(NFE_001NFE_CFOP.AsString,1) = '2') and (NFE_001NFE_ORIG.AsString <> '1') then
        NFE_001NFE_PIPI.Value := 0;

    if LeftStr(NFE_001NFE_CEAN.AsString,3) <> '789' then
               NFE_001NFE_CEAN.Value := '';

    { Peso Líquido}
    if  LeftStr(NFE_001NFE_UCOM.AsString,1) = 'K' then NFE_001NFE_PSLQ.Value := NFE_001NFE_QCOM.AsFloat else
    if (LeftStr(NFE_001NFE_UCOM.AsString,1) = 'M') and (NFE_001NFE_REND.AsFloat > 0) then
        NFE_001NFE_PSLQ.Value := NFE_001NFE_QCOM.AsFloat / NFE_001NFE_REND.AsFloat else
    if (LeftStr(NFE_001NFE_UCOM.AsString,1) = 'M') and (NFE_001NFE_METR.AsFloat > 0) and (NFE_001NFE_PESO.AsFloat > 0) then
        NFE_001NFE_PSLQ.Value := (NFE_001NFE_QCOM.AsFloat * NFE_001NFE_PESO.AsFloat) / NFE_001NFE_METR.AsFloat else
    if  NFE_001NFE_PESO.AsFloat > 0 then
        NFE_001NFE_PSLQ.Value := (NFE_001NFE_PESO.AsFloat * NFE_001NFE_QCOM.AsFloat) / IFThen(NFE_001NFE_QTUN.AsFloat > 0,NFE_001NFE_QTUN.AsFloat,1);

    { Peso Bruto }
    NFE_001NFE_PSBR.Value := NFE_001NFE_PSLQ.AsFloat + (NFE_001NFE_RCOM.AsInteger * IFThen(NFE_001NFE_PSCN.AsFloat > 0,NFE_001NFE_PSCN.AsFloat,0.02));

    NFE_001NFE_UTRIB.Value   := IFThen(LeftStr(NFE_001NFE_CFOP.AsString,1) <> '7',NFE_001NFE_UCOM.AsString,NFE_001NFE_UTRIB.AsString);
    NFE_001NFE_QTRIB.Value   := IFThen(NFE_001NFE_QTRIB.AsFloat   = 0,NFE_001NFE_QCOM.AsFloat  ,NFE_001NFE_QTRIB.AsFloat  );
    NFE_001NFE_VUNTRIB.Value := IFThen(NFE_001NFE_VUNTRIB.AsFloat = 0,NFE_001NFE_VUNCOM.AsFloat,NFE_001NFE_VUNTRIB.AsFloat);
  end else
  begin
    NFE_001NFE_CSTIPI.Value := NewCSTIPI;
    NFE_001NFE_VNF.Value    := NFE_001NFE_VIPI.AsFloat;
  end;

  { Limpa CEST Incorreto ! }
  if NFE_001NFE_CEST.Value  = '0' then NFE_001NFE_CEST.Value := EmptyStr;
end;

procedure Tfrmven_nfe.CALCULA_FRETE;
var
  i: Word;
begin
  if CEVFRT.Value = 0 then
     Exit;

  with Consulta_S do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(*) FROM NFE_ITE');
    Open;
    i := Consulta_S.Fields[0].AsInteger;
  end;

  NFE_001.First;
  while not NFE_001.Eof do
  begin
    NFE_001.Edit;
    NFE_001NFE_VFRETE.Value := RoundTO(CEVFRT.Value / i,-2);
    NFE_001.Post;
    NFE_001.Next;
  end;
  NFE_001.Last;

  if (RoundTO(NFE_001NFE_VFRETE.AsFloat,-2)*i) <> (CEVFRT.Value) then
  begin
    NFE_001.Edit;
    if (RoundTO(NFE_001NFE_VFRETE.AsFloat,-2)*i) > (CEVFRT.Value) then
       NFE_001NFE_VFRETE.Value := NFE_001NFE_VFRETE.AsFloat - ((RoundTO(NFE_001NFE_VFRETE.AsFloat,-2)*i)-CEVFRT.Value)
    else
       NFE_001NFE_VFRETE.Value := NFE_001NFE_VFRETE.AsFloat + (CEVFRT.Value-(RoundTO(NFE_001NFE_VFRETE.AsFloat,-2)*i));
    NFE_001.Post;
  end;
end;

procedure Tfrmven_nfe.CALCULA_SEGURO;
var
  i: Word;
begin
  if CEVSEG.Value = 0 then
     Exit;

  with Consulta_S do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(*) FROM NFE_ITE');
    Open;
    i := Consulta_S.Fields[0].AsInteger;
  end;
  NFE_001.First;
  while not NFE_001.Eof do
  begin
    NFE_001.Edit;
    NFE_001NFE_VSEG.Value := RoundTO(CEVSEG.Value / i,-2);
    NFE_001.Post;
    NFE_001.Next;
  end;
  NFE_001.Last;

  if (RoundTO(NFE_001NFE_VSEG.AsFloat,-2)*i) <> (CEVSEG.Value) then
  begin
    NFE_001.Edit;
    if (RoundTO(NFE_001NFE_VSEG.AsFloat,-2)*i) > (CEVSEG.Value) then
      NFE_001NFE_VSEG.Value := NFE_001NFE_VSEG.AsFloat - ((RoundTO(NFE_001NFE_VSEG.AsFloat,-2)*i)-CEVSEG.Value)
    else
      NFE_001NFE_VSEG.Value := NFE_001NFE_VSEG.AsFloat + (CEVSEG.Value-(RoundTO(NFE_001NFE_VSEG.AsFloat,-2)*i));
    NFE_001.Post;
  end;
end;

procedure Tfrmven_nfe.DBGEdicaoDblClick(Sender: TObject);
begin
  if not NFE_001.Fields[0].IsNull then
  begin
    if NFE_001NFE_FLAG.AsString = '1' then
    begin
      if oYesNo(handle,'Desejar [des]marcar esse registro como livre de apuração fiscal ?') = mrno then
         abort;

      NFE_001.Edit;
      NFE_001NFE_FLAG.Value := '0';
      NFE_001.Post;
    end
    else
    begin
      if oYesNo(handle,'Desejar marcar esse registro como livre de apuração fiscal ?') = mrno then
         abort;

      NFE_001.Edit;
      NFE_001NFE_FLAG.Value := '1';
      NFE_001.Post;
    end;
  end;
end;

procedure Tfrmven_nfe.DBGEdicaoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
     if ANode.Values[DBGEdicaoNFE_FLAG.Index] = '1' then
     begin
       AColor      := clGrayText;
       AFont.Color := clwhite;
     end else
     begin
       if (AColumn = DBGEdicaoNFE_ITEMPED) or (AColumn = DBGEdicaoNFE_CPROD) then
       begin
         AColor      := clGray;
         AFont.Color := clWhite;
       end;

       if AColumn = DBGEdicaoNFE_XPED then
       begin
         AColor      := clBtnFace;
         AFont.Color := clBlack;
       end;

       if AColumn = DBGEdicaoNFE_VUNCOM then
       begin
         AColor      := clBtnFace;
         AFont.Color := clBlack;
         AFont.Style := [fsBold];
       end;

       if (AColumn = DBGEdicaoNFE_VNF) then
       begin
         AColor      := $00D69F30;
         AFont.Color := clWhite;
         AFont.Style := [fsBold];
       end;

       if (AColumn = DBGEdicaoNFE_VDESC) and (ANode.Values[DBGEdicaoNFE_VDESC.Index] > 0) then
           AFont.Style := [fsBold];

       if (AColumn = DBGEdicaoNFE_VICMS) and (ANode.Values[DBGEdicaoNFE_VICMS.Index] > 0) then
       begin
         AColor      := clInfoBk;
         AFont.Color := clBlack;
         AFont.Style := [fsBold];
       end;

       if (AColumn = DBGEdicaoNFE_PREDBC) and (ANode.Values[DBGEdicaoNFE_PREDBC.Index] > 0) then
       begin
         AColor      := clBtnFace;
         AFont.Color := clBlack;
       end;

       if (AColumn = DBGEdicaoNFE_VICMSST) and (ANode.Values[DBGEdicaoNFE_VICMSST.Index] > 0) then
       begin
         AColor      := clInfoBk;
         AFont.Color := clBlack;
         AFont.Style := [fsBold];
       end;

       if (AColumn = DBGEdicaoNFE_VIPI) and (ANode.Values[DBGEdicaoNFE_VIPI.Index] > 0) then
       begin
         AColor      := clInfoBk;
         AFont.Color := clBlack;
         AFont.Style := [fsBold];
       end;

       if (AColumn = DBGEdicaoNFE_EXTIPI) and (not oEmpty(ANode.Values[DBGEdicaoNFE_EXTIPI.Index])) then
       begin
         AColor      := clBtnFace;
         AFont.Color := clBlack;
       end;

       if (AColumn = DBGEdicaoNFE_CEST) and (not oEmpty(ANode.Values[DBGEdicaoNFE_CEST.Index])) then
       begin
         AColor      := clBtnFace;
         AFont.Color := clBlack;
       end;

       if AColumn = DBGEdicaoNFE_CENQ then
       begin
         AColor      := clBtnFace;
         AFont.Color := clBlack;
       end;

       if (AColumn = DBGEdicaoNFE_VPIS) and (ANode.Values[DBGEdicaoNFE_VPIS.Index] > 0) then
       begin
         AColor      := clInfoBk;
         AFont.Color := clBlack;
       end;

       if (AColumn = DBGEdicaoNFE_VCOFINS) and (ANode.Values[DBGEdicaoNFE_VCOFINS.Index] > 0) then
       begin
         AColor      := clInfoBk;
         AFont.Color := clBlack;
       end;
     end;
end;

procedure Tfrmven_nfe.DBGEdicaoNFE_QCOMValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGEdicaoNFE_QCOM.Tag := IFThen(Length(cbcnat.Text) > 4,1,0);
end;

procedure Tfrmven_nfe.DBGEdicaoNFE_VUNCOMValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGEdicaoNFE_QCOM.Tag := IFThen(Length(cbcnat.Text) > 4,1,0);
end;

procedure Tfrmven_nfe.PEDECTValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if PEDECT.Text <> '' then
  try
    PESQUISA_TRANSPORTADORA(PEDECT.Text,'F');
  finally
    if PEDECT.Text = '' then
       oException(PEDECT,'Transportadora não Encontrada !');

    V1_CEQVOL.SetFocus;
  end;
end;

procedure Tfrmven_nfe.IEModFreteValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  IEModFrete.Modified := False;
  if IEModFrete.Text   = '9' then
  PESQUISA_TRANSPORTADORA('0','C');
end;

procedure Tfrmven_nfe.DUP_001BeforePost(DataSet: TDataSet);
begin
  DUP_001NFE_TITU.Value := Trim(DUP_001NFE_TITU.AsString);
  DUP_001NFE_DVEN.Value := DUP_001NFE_DVEN.AsDateTime;
end;

procedure Tfrmven_nfe.IEFinNFeChange(Sender: TObject);
begin
  if Pos(IEFinNFe.Text,'23') > 0 then
  begin
    with consulta_S do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM NFE_DUP');
      ExecSQL;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM NFE_CLI');
      ExecSQL;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM NFE_ITE WHERE NFE_PIPI = 0');
      ExecSQL;
    end;
    oRTransact(TSEdicao);

    NFE_001.First;
    while not NFE_001.Eof do
    begin
      NFE_001.Edit;
      NFE_001NFE_XPROD.Value     := 'NOTA FISCAL COMPLEMENTAR';
      NFE_001NFE_INFADPROD.Value := EmptyStr;
      NFE_001NFE_COMP.Value      := EmptyStr;
      NFE_001NFE_QCOM.Value      := 0;
      NFE_001NFE_VUNCOM.Value    := 0;
      NFE_001NFE_QTRIB.Value     := 0;
      NFE_001NFE_VUNTRIB.Value   := 0;
      NFE_001NFE_VPROD.Value     := 0;
      NFE_001NFE_VDESC.Value     := 0;

    { NFE_001NFE_VBC.Value   := 0;
      NFE_001NFE_PICMS.Value := 0;
      NFE_001NFE_VICMS.Value := 0;

      NFE_001NFE_VBCIPI.Value := 0;
      NFE_001NFE_PIPI.Value   := 0;
      NFE_001NFE_VIPI.Value   := 0; }

      NFE_001NFE_VBCPIS.Value := 0;
      NFE_001NFE_PPIS.Value   := 0;
      NFE_001NFE_VPIS.Value   := 0;

      NFE_001NFE_VBCOFINS.Value := 0;
      NFE_001NFE_PCOFINS.Value  := 0;
      NFE_001NFE_VCOFINS.Value  := 0;

      NFE_001NFE_VFRETE.Value := 0;

      NFE_001.Post;
      NFE_001.Next;
    end;

    IEModFrete.Text := '9';
    CEIDCT.Value    :=  0 ;
    PEDECT.Text     := EmptyStr;
    PESQUISA_TRANSPORTADORA(CEIDCT.Text,'C');

    V1_EDESP.Text   := EmptyStr;
    V1_CEQVOL.Value := 0;
    V1_CEPSBR.Value := 0;
    V1_CEPSLQ.Value := 0;

    CBDUPL.Text := 'NÃO';
    CBDPAG.Text := EmptyStr;

    IETPAG.Text   := '99';
    IEINDPAG.Text := '1';

    EDINFADNF.Lines.Clear;
    EDINFADNF.Lines.Add('NOTA FISCAL COMPLEMENTAR DE (ICMS OU IPI), REFERENTE A NOSSA NF-E DE No: ' + NewCDNF + ' EMITIDA EM ' + NewDTNF);
    EDINFADNF.Refresh;
  end else
  if (Pos(IEFinNFe.Text,'4') > 0) and (NewCHNFE <> EmptyStr) and (NewCDNF <> EmptyStr) and (NewDTNF <> EmptyStr) then
  begin
    if Pos(CBCNAT.Text,'12011202220122025101610151026102') > 0 then
    begin
      if Pos(CBCNAT.Text,'12015101') > 0 then CBCNAT.Text := '5201' else
      if Pos(CBCNAT.Text,'12025102') > 0 then CBCNAT.Text := '5202' else
      if Pos(CBCNAT.Text,'22016101') >0  then CBCNAT.Text := '6201' else
      if Pos(CBCNAT.Text,'22026102') > 0 then CBCNAT.Text := '6202';
      PESQUISA_NATUREZA(CBCNAT.Text,'C');
    end;

    EDINFADNF.Lines.Clear;
    EDINFADNF.Lines.Add('DEVOLUÇÃO TOTAL DE MERCADORIA - REFERENTE NOTA FISCAL ' + NewCDNF + ' DE ' + NewDTNF);
    EDINFADNF.Refresh;

    CBDUPL.Text := 'NÃO';
    CBDPAG.Text := EmptyStr;

    IETPAG.Text   := '99';
    IEINDPAG.Text := '1';
  end;
end;

procedure Tfrmven_nfe.V1_CEPSBRValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  V1_CEPSBR.Tag := 1;
end;

procedure Tfrmven_nfe.V1_CEPSLQValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  V1_CEPSLQ.Tag := 1;
end;

procedure Tfrmven_nfe.cbcnatChange(Sender: TObject);
begin
  if LeftStr(cbcnat.Text,1) = '3' then
  begin
    EDCNPJTerceiro.Text    := RECParametros.Cnpj;
    PEUFTerceiro.Text      := RECParametros.LOG_UF;
    EDcExportador.Text     := oStrZero(RECParametros.EP_ID,4);
    EDcFabricante.Text     := oStrZero(RECParametros.EP_ID,4);
    TSEXImporta.TabVisible := True;
    TSEXExporta.TabVisible := False;
  end else
  if LeftStr(cbcnat.Text,1) = '7' then
  begin
    EDCNPJProd.Text := RECParametros.Cnpj;
    TSEXImporta.TabVisible := False;
    TSEXExporta.TabVisible := True;
  end else
  begin
    EDnDI.Text          := '';
    DEdDI.Text          := '';
    EDxLocDesemb.Text   := '';
    PEUFDesemb.Text     := '';
    DEdDesemb.Text      := '';
    IETpViaTransp.Text  := '';
    CEvAFRMM.Text       := '';
    CEnAdicao.Text      := '';
    CEnSeqAdic.Text     := '';
    EDCNPJTerceiro.Text := '';
    PEUFTerceiro.Text   := '';
    IEtpIntermedio.Text := '';
    EDcExportador.Text  := '';
    EDcFabricante.Text  := '';
    EDCNPJProd.Text     := '';
    EDnDraw.Text        := '';
    EDnRE.Text          := '';
    EDxLocDespacho.Text := '';
    EDxLocExporta.Text  := '';
    EDUFSaidaPais.Text  := '';
    EDchNFe.Text        := '';
    CEqExport.Text      := '';
  end;

  _NFTriangular;
end;

procedure Tfrmven_nfe.cbcnatValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  try
    Tag   := 1;
    BCalc := True;
    PESQUISA_NATUREZA(cbcnat.Text,'C');
  finally
    CALCULA_FRETE;
    CALCULA_NF;
  end;
end;

procedure Tfrmven_nfe.DEdhSaiEntDblClick(Sender: TObject);
begin
  if RECUsuarios.Id = 0 then
  DEdhEmi.Date := DEdhSaiEnt.Date;
end;

procedure Tfrmven_nfe.NFE_001AfterEdit(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    if (PCEdicao.ActivePageIndex = 0)    and (PNLPrincipal.Enabled) and
       (ActiveControl <> DBInfoComp) then
    DBGEdicao.SetFocus;
  end;
end;

procedure Tfrmven_nfe.NFE_001AfterInsert(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    DBGEdicao.FocusedAbsoluteIndex := 2;
    if (PCEdicao.ActivePageIndex = 0) and (PNLPrincipal.Enabled) then
    DBGEdicao.SetFocus;
  end;
end;

procedure Tfrmven_nfe.DBGEdicaoNFE_VBCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (IEFinNFe.Text = '2') or (IEFinNFe.Text = '3') then
  begin
    NFE_001NFE_VBC.Value := StrToFloat(DBGEdicao.EditingText);
    if NFE_001NFE_VBC.AsFloat > 0 then
    begin
      NFE_001NFE_PICMS.Value := IFThen(NFE_001NFE_PICMS.Value = 0,StrToFloat(NewPICMS),NFE_001NFE_PICMS.AsFloat);
      NFE_001NFE_VICMS.Value := RoundTO((NFE_001NFE_VBC.AsFloat*NFE_001NFE_PICMS.AsFloat)/100,-2);
    end;
  end;
end;

procedure Tfrmven_nfe.DBGEdicaoNFE_PICMSValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (IEFinNFe.Text = '2') or (IEFinNFe.Text = '3') then
  begin
    NFE_001NFE_PICMS.Value := StrToFloat(DBGEdicao.EditingText);
    if NFE_001NFE_PICMS.AsFloat > 0 then
    begin
      NFE_001NFE_VBC.Value   := IFThen(NFE_001NFE_VBC.AsFloat = 0,StrToFloat(NewVBC),NFE_001NFE_VBC.AsFloat);
      NFE_001NFE_VICMS.Value := RoundTO((NFE_001NFE_PICMS.AsFloat*NFE_001NFE_VBC.AsFloat)/100,-2);
    end;
  end;
end;

procedure Tfrmven_nfe.DBGEdicaoNFE_VICMSValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (IEFinNFe.Text = '2') or (IEFinNFe.Text = '3') then
  begin
    NFE_001NFE_VICMS.Value := StrToFloat(DBGEdicao.EditingText);
    if NFE_001NFE_VICMS.AsFloat > 0 then
    begin
      NFE_001NFE_PICMS.Value := IFThen(NFE_001NFE_PICMS.AsFloat = 0,StrToFloat(NewVBC),NFE_001NFE_PICMS.AsFloat);
      NFE_001NFE_VBC.AsFloat := RoundTO((NFE_001NFE_VICMS.AsFloat/NFE_001NFE_PICMS.AsFloat)*100,-2);
    end;
  end;
end;

procedure Tfrmven_nfe.DBGEdicaoNFE_VBCIPIValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (IEFinNFe.Text = '2') or (IEFinNFe.Text = '3') then
  begin
    NFE_001NFE_VBCIPI.Value := StrToFloat(DBGEdicao.EditingText);
    if NFE_001NFE_VBCIPI.AsFloat > 0 then
    begin
      NFE_001NFE_PIPI.Value   := IFThen(NFE_001NFE_PIPI.Value = 0,StrToFloat(NewPIPI),NFE_001NFE_PIPI.AsFloat);
      NFE_001NFE_VIPI.Value   := RoundTO((NFE_001NFE_VBCIPI.AsFloat*NFE_001NFE_PIPI.AsFloat)/100,-2);
    end;
  end;
end;

procedure Tfrmven_nfe.DBGEdicaoNFE_PIPIValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (IEFinNFe.Text = '2') or (IEFinNFe.Text = '3') then
  begin
    NFE_001NFE_PIPI.Value   := StrToFloat(DBGEdicao.EditingText);
    if NFE_001NFE_PIPI.AsFloat > 0 then
    begin
      NFE_001NFE_VBCIPI.Value := IFThen(NFE_001NFE_VBCIPI.AsFloat = 0,StrToFloat(NewVBCIPI),NFE_001NFE_VBCIPI.AsFloat);
      NFE_001NFE_VIPI.Value   := RoundTO((NFE_001NFE_PIPI.AsFloat*NFE_001NFE_VBCIPI.AsFloat)/100,-2);
    end;
  end;
end;

procedure Tfrmven_nfe.DBGEdicaoNFE_VIPIValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (IEFinNFe.Text = '2') or (IEFinNFe.Text = '3') then
  begin
    NFE_001NFE_VIPI.Value   := StrToFloat(DBGEdicao.EditingText);
    if NFE_001NFE_VIPI.AsFloat > 0 then
    begin
      NFE_001NFE_PIPI.Value     := IFThen(NFE_001NFE_PIPI.AsFloat = 0,StrToFloat(NewVBCIPI),NFE_001NFE_PIPI.AsFloat);
      NFE_001NFE_VBCIPI.AsFloat := RoundTO((NFE_001NFE_VIPI.AsFloat/NFE_001NFE_PIPI.AsFloat)*100,-2);
    end;
  end;
end;

procedure Tfrmven_nfe.siCGEClick(Sender: TObject);
begin
  if siCGE.ImageIndex = 7 then
  begin
    siCGE.Hint       := 'Destravar Cálculo Automático';
    siCGE.ImageIndex := 8;
    BCalc     := False;
    siCGE.Tag := 1;
  end else
  begin
    siCGE.Hint       := 'Travar Cálculo Automático';
    siCGE.ImageIndex := 7;
    BCalc     := True;
    siCGE.Tag := 0;
  end;
end;

procedure Tfrmven_nfe.DBGEdicaoNFE_VPRODValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  NFE_001NFE_VPROD.Value := oTextToValor(DBGEdicao.EditingText);
end;

procedure Tfrmven_nfe.IEindIEDestChange(Sender: TObject);
begin
  if IEindIEDest.Text = '1' then
  IEindIEDest.Hint := 'Contribuinte de ICMS (obrigatório informar a IE do destinatário).' else
  if IEindIEDest.Text = '2' then
  IEindIEDest.Hint := 'Contribuinte isento de IE no cadastro de contribuintes do ICMS.' else
  if IEindIEDest.Text = '9' then
  IEindIEDest.Hint := 'Não Contribuinte, que pode ou não possuir IE no cadastro de contribuintes do ICMS.' else
  IEindIEDest.Hint := 'Indicador da IE do destinatário';

  if Tag = 0 then CALCULA_NF;
end;

procedure Tfrmven_nfe.IEindFinalChange(Sender: TObject);
begin
  if Tag = 0 then CALCULA_NF;
end;

procedure Tfrmven_nfe.CEVFRTValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  try     Tag := 1; CALCULA_FRETE;
  finally CALCULA_NF;
  end;
end;

procedure Tfrmven_nfe.CEVSEGValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  try     Tag := 1; CALCULA_SEGURO;
  finally CALCULA_NF;
  end;
end;

procedure Tfrmven_nfe.EDInfAdFKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure Tfrmven_nfe.EDTQComKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmven_nfe._ImprimeRomaneio(AEnvio: Word = 0);
var
  RECRelatorios: TRECRelatorios;
begin
  try
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,VEN_NFRO');
      SQL.Add('FROM '+oREPZero('ROM_CAB','_',RECParametros.EP_ID,3)+' AS PK');
      SQL.Add('JOIN   TAB_PED ON VEN_TIPO = PK.ROM_STPD');
      SQL.Add('WHERE  PK.CDNF = '''+CECDNF.Text+'''');
      ExecQuery;
    end;

    if SQLConsulta.Current.Vars[1].AsString = '1' then
    begin
      Initialize(RECRelatorios);
      FillChar(RECRelatorios,SizeOf(RECRelatorios),0);

      RECRelatorios.PrintTAG := AEnvio;
      RECRelatorios.Handle   := Self.Handle;

      RECRelatorios.ID   := SQLConsulta.Current.Vars[0].AsString;
      RECRelatorios.Titulo := 'Romaneio para simples conferência';

{      qrprom_con_001 := Tqrprom_con_001.Create(Nil,RECRelatorios);
      qrprom_con_001.WinControlFormCreate(qrprom_con_001);}
    end;
  finally
    Finalize(RECRelatorios);
    FillChar(RECRelatorios,SizeOf(RECRelatorios),0);

    SQLConsulta.Close;
  end;
end;

procedure Tfrmven_nfe.DBGEdicaoNFE_NCMValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGEdicao.EditingText := Trim(DBGEdicao.EditingText);
  if (NFE_001.State in [dsInsert,dsEdit]) and (DBGEdicao.EditingText <> EmptyStr) and (DBGEdicao.EditingText <> NFE_001NFE_NCM.AsString) then
  begin
    NFE_001NFE_NCM.Value := DBGEdicao.EditingText;

    with SQLFKConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT UTRIB,CEST FROM TAB_NCM');
      SQL.Add('WHERE  NCM = ''' + NFE_001NFE_NCM.AsString + '''');
      ExecQuery;

      NFE_001NFE_UTRIB.Value := IFThen(LeftStr(NFE_001NFE_CFOP.AsString,1) = '7',Current.Vars[0].AsString,NFE_001NFE_UCOM.AsString);
      NFE_001NFE_CEST.Value  := Current.Vars[1].AsString;

      if Eof then
         DataBaseError('NCM não cadastro ou inválido !');
    end;
  end;
end;

procedure Tfrmven_nfe._Cadastros;
begin
  try
    with SQLEdicao do
    begin
      if LAIDCD.Caption = 'Cliente' then
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE CAD_CLI');
        SQL.Add('SET    CLI_RAZA = '''+EDxNome.Text+''',');
        SQL.Add('       CLI_INSC = '''+PEIE.Text+''',');
        SQL.Add('       CLI_CPF  = '''+edcpf.Text +''',');
        SQL.Add('       CLI_RICM = '''+IERegime.Text+''',');
        SQL.Add('       CLI_DDD  = '''+edDDD .Text+''',');
        SQL.Add('       CLI_TEL1 = '''+oRetNumero(EDFone.Text)+''',');
        SQL.Add('       CLI_TLOG = '''+PETxLgr.Text+''',');
        SQL.Add('       CLI_LOGR = '''+EDxLgr.Text+''',');
        SQL.Add('       CLI_NUME = '''+EDNRO.Text+''',');
        SQL.Add('       CLI_COMP = '''+EDxCpl.Text+''',');
        SQL.Add('       CLI_CEP  = '''+edCEP .Text+''',');
        SQL.Add('       CLI_BAI  = '''+EDxBairro.Text+''',');
        SQL.Add('       CLI_CID  = '''+oDELCharEsp(EDxMun.Text)+''',');
        SQL.Add('       CLI_ESTA = '''+PEUF.Text+''',');
        SQL.Add('       CLI_CMUN = '''+BECMun.Text+''',');
        SQL.Add('       CLI_TLOV = '''+PEETxLgr.Text+''',');
        SQL.Add('       CLI_LOGV = '''+EDExLgr.Text+''',');
        SQL.Add('       CLI_NUMV = '''+EDENRO.Text+''',');
        SQL.Add('       CLI_COMV = '''+EDExCpl.Text+''',');
        SQL.Add('       CLI_CEPV = '''+EDECep.Text+''',');
        SQL.Add('       CLI_BAIV = '''+EDExBairro.Text+''',');
        SQL.Add('       CLI_CIDV = '''+oDELCharEsp(EDExMun.Text)+''',');
        SQL.Add('       CLI_ESTV = '''+PEEUF.Text+''',');
        SQL.Add('       CLI_CMUV = '''+PEEcMun.Text+''',');
        SQL.Add('       IDCT     = '''+CEIDCT.Text +''',');
        SQL.Add('       CLI_MAIL = '''+IFThen(oEmail(PEEmail.Text),PEEmail.Text,EmptyStr)+''',');
        SQL.Add('       CLI_ENVMAIL = '''+IEEnvMail.Text+''',');
        SQL.Add('       CLI_DTRA = '''+PEDECT.Text+'''');
        SQL.Add('WHERE  ID = '''+CEIDCD.Text+'''');
        ExecQuery;
      end else
      if LAIDCD.Caption = 'Fornecedor' then
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE CAD_FOR');
        SQL.Add('SET    FOR_RAZA = '''+EDxNome.Text+''',');
        SQL.Add('       FOR_INSC = '''+PEIE.Text+''',');
        SQL.Add('       FOR_CPF  = '''+edcpf.Text +''',');
        SQL.Add('       FOR_RICM = '''+IERegime.Text+''',');
        SQL.Add('       FOR_DDD  = '''+edDDD .Text+''',');
        SQL.Add('       FOR_TEL1 = '''+oRetNumero(EDFone.Text)+''',');
        SQL.Add('       FOR_TLOG = '''+PETxLgr.Text+''',');
        SQL.Add('       FOR_LOGR = '''+EDxLgr.Text+''',');
        SQL.Add('       FOR_NUME = '''+EDNRO.Text+''',');
        SQL.Add('       FOR_COMP = '''+EDxCpl.Text+''',');
        SQL.Add('       FOR_CEP  = '''+edCEP .Text+''',');
        SQL.Add('       FOR_BAI  = '''+EDxBairro.Text+''',');
        SQL.Add('       FOR_CID  = '''+oDELCharEsp(EDxMun .Text)+''',');
        SQL.Add('       FOR_ESTA = '''+PEUF.Text+''',');
        SQL.Add('       FOR_CMUN = '''+BECMun.Text+''',');
        SQL.Add('       FOR_TLOV = '''+PEETxLgr.Text+''',');
        SQL.Add('       FOR_LOGV = '''+EDExLgr.Text+''',');
        SQL.Add('       FOR_NUMV = '''+EDENRO.Text+''',');
        SQL.Add('       FOR_COMV = '''+EDExCpl.Text+''',');
        SQL.Add('       FOR_CEPV = '''+EDECep.Text+''',');
        SQL.Add('       FOR_BAIV = '''+EDExBairro.Text+''',');
        SQL.Add('       FOR_CIDV = '''+oDELCharEsp(EDExMun.Text)+''',');
        SQL.Add('       FOR_ESTV = '''+PEEUF.Text+''',');
        SQL.Add('       FOR_MAIL = '''+IFThen(oEmail(PEEmail.Text),PEEmail.Text,EmptyStr)+''',');
        SQL.Add('       FOR_ENVMAIL = '''+IEEnvMail.Text+''',');
        SQL.Add('       FOR_CMUV = '''+PEEcMun.Text+'''');
        SQL.Add('WHERE ID = '''+CEIDCD.Text+'''');
        ExecQuery;
      end;
    end;
  except
    ;
  end;
end;

procedure Tfrmven_nfe._EstoqueImportados;
var
  REC_SHE_DEF: TREC_SHE_DEF;
begin
  if LeftStr(cbcnat.Text,1) = '3' then
     try
            REC_SHE_DEF.FB_SQL := SQLEdicao;
       with REC_SHE_DEF.FB_SQL do
       begin
         Close;
         SQL.Clear;
         SQL.Add('DELETE FROM CAD_PRO');
         SQL.Add('WHERE  ARTIGO = '''+CECDNF.Text+'''');
         ExecQuery;
       end;

       NFE_001.First;
       while not NFE_001.Eof do
       begin
         REC_SHE_DEF.IDPK := '0';
         REC_SHE_DEF.ID   := NFE_001NFE_CPROD.AsString;

         SPEdicao.Close;
         SPEdicao.StoredProcName := 'SP_CAD_PRO';
         SPEdicao.Prepare;

         SPEdicao.ParamByName('ID').Value   := 0;
         SPEdicao.ParamByName('IDEP').Value := RECParametros.EP_ID;

         SPEdicao.ParamByName('IDCA').Value := RECUsuarios.Id;
         SPEdicao.ParamByName('CDST').Value := 30;

         SPEdicao.ParamByName('ARTIGO').Value := CECDNF.Value;
         SPEdicao.ParamByName('NCM').Value    := NFE_001NFE_NCM.AsString;
         SPEdicao.ParamByName('PIPI').Value   := NFE_001NFE_PIPI.AsFloat;

         SPEdicao.ParamByName('SKU' ).Value := NFE_001NFE_CPROD.AsString;
         SPEdicao.ParamByName('CEAN').Value := oBarCode(REC_SHE_DEF);

         SPEdicao.ParamByName('DESCRICAO').Value := NFE_001NFE_XPROD.AsString;
         SPEdicao.ParamByName('TITULO').Value    := NULL;
         SPEdicao.ParamByName('CMP_PAD').Value   := NULL;

         SPEdicao.ParamByName('IDCOR').Value := 0;
         SPEdicao.ParamByName('DECOR').Value := NULL;

         SPEdicao.ParamByName('CDGRD').Value := NULL;
         SPEdicao.ParamByName('REGRD').Value := NULL;
         SPEdicao.ParamByName('DEGRD').Value := NULL;

         SPEdicao.ParamByName('IDCF').Value   := RECParametros.EP_ID;
         SPEdicao.ParamByName('CDCF').Value   := NULL;
         SPEdicao.ParamByName('CEANCF').Value := NULL;

         SPEdicao.ParamByName('UCOM').Value  := NFE_001NFE_UCOM.AsString;
         SPEdicao.ParamByName('UQVOL').Value := NULL;
         SPEdicao.ParamByName('UESP').Value  := NULL;
         SPEdicao.ParamByName('UCON' ).Value := NULL;
         SPEdicao.ParamByName('UCDBE').Value := 'QT';
         SPEdicao.ParamByName('UQTDE').Value := 1;

         SPEdicao.ParamByName('UQTDE_VEN_MUL').Value := 1;
         SPEdicao.ParamByName('UQTDE_VEN_MIN').Value := 1;
         SPEdicao.ParamByName('UQTDE_EST_MIN').Value := 0;

         SPEdicao.ParamByName('PESO').Value := NULL;
         SPEdicao.ParamByName('PSCN').Value := NULL;

         SPEdicao.ParamByName('METRO').Value      := NULL;
         SPEdicao.ParamByName('RENDIMENTO').Value := NULL;

         SPEdicao.ParamByName('GRAMATURA').Value := NULL;
         SPEdicao.ParamByName('GRAT_T'   ).Value := NULL;

         SPEdicao.ParamByName('LARG_U').Value := NULL;
         SPEdicao.ParamByName('LARG_T').Value := NULL;

         SPEdicao.ParamByName('ELAS_L').Value := NULL;
         SPEdicao.ParamByName('ELAS_C').Value := NULL;

         SPEdicao.ParamByName('ENCO_L').Value := NULL;
         SPEdicao.ParamByName('ENCO_C').Value := NULL;
         SPEdicao.ParamByName('ENCO_T').Value := NULL;

         SPEdicao.ParamByName('ESPESSURA'     ).Value := NULL;
         SPEdicao.ParamByName('ESPESSURA_TIPO').Value := NULL;

         SPEdicao.ParamByName('VPRC_COMPRA').Value     := NULL;
         SPEdicao.ParamByName('VPRC_COMPRA_IMP').Value := NFE_001NFE_VUNCOM.AsFloat;

         SPEdicao.ParamByName('VPRC_PAD'    ).Value := NFE_001NFE_VUNCOM.AsFloat;
         SPEdicao.ParamByName('VPRC_PAD_PRZ').Value := NULL;
         SPEdicao.ParamByName('VPRC_PAD_PRO').Value := NULL;
         SPEdicao.ParamByName('PPRC_PAD_DSC').Value := NULL;
         SPEdicao.ParamByName('PPRC_PAD_AJU').Value := NULL;

         SPEdicao.ParamByName('VPRC_ATV'    ).Value := NULL;
         SPEdicao.ParamByName('VPRC_ATV_PRZ').Value := NULL;
         SPEdicao.ParamByName('VPRC_ATV_PRO').Value := NULL;
         SPEdicao.ParamByName('PPRC_ATV_DSC').Value := NULL;
         SPEdicao.ParamByName('PPRC_ATV_AJU').Value := NULL;

         SPEdicao.ParamByName('VPRC_VAR'    ).Value := NULL;
         SPEdicao.ParamByName('VPRC_VAR_PRZ').Value := NULL;
         SPEdicao.ParamByName('VPRC_VAR_PRO').Value := NULL;

         SPEdicao.ParamByName('VPRC_REP'    ).Value := NULL;
         SPEdicao.ParamByName('VPRC_REP_PRZ').Value := NULL;
         SPEdicao.ParamByName('VPRC_REP_PRO').Value := NULL;

         SPEdicao.ParamByName('VPRC_SITE').Value := NULL;
         SPEdicao.ParamByName('PMKP_SITE').Value := NULL;

         SPEdicao.ParamByName('IDCOL').Value := 0;
         SPEdicao.ParamByName('IDSEG').Value := NULL;
         SPEdicao.ParamByName('IDGRP').Value := NULL;
         SPEdicao.ParamByName('IDSGP').Value := NULL;
         SPEdicao.ParamByName('IDCAT').Value := NULL;
         SPEdicao.ParamByName('IDSCT').Value := NULL;

         SPEdicao.ParamByName('MKP_IDML').Value := NULL;
         SPEdicao.ParamByName('MKP_IDSP').Value := NULL;
         SPEdicao.ParamByName('MKP_IDAM').Value := NULL;

         SPEdicao.ParamByName('IDFIN').Value := RECParametros.PRO_IDFIN_CAD;
         SPEdicao.ParamByName('IDTPV').Value := RECParametros.PRO_IDFIN_EST;

         SPEdicao.ParamByName('IDTPA').Value := NULL;
         SPEdicao.ParamByName('IDTPD').Value := NULL;
         SPEdicao.ParamByName('IDTPF').Value := NULL;
         SPEdicao.ParamByName('IDTPL').Value := NULL;

         SPEdicao.ParamByName('ORIG' ).Value := NFE_001NFE_ORIG.AsString;
         SPEdicao.ParamByName('CPAIS').Value := IExPais.Text;

         SPEdicao.ParamByName('INFADCAD').Value := NULL;
         SPEdicao.ParamByName('INFADTEC').Value := NFE_001NFE_XPROX.AsString;

         SPEdicao.ParamByName('IP').Value   := RECParametros.IP;
         SPEdicao.ParamByName('HOST').Value := RECParametros.Host;
         SPEdicao.ExecProc;
         
         NFE_001.Next;
       end;
     except
       on E: Exception do
       begin
        oCTransact(TEdicao,ltRollback);
        oException(Nil    ,'Falha ao tentar atualizar estoque !'                    +#13+
                           'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                           'Erro: '+E.Message);
       end;
     end;
end;

procedure Tfrmven_nfe.TAB_PAGAfterOpen(DataSet: TDataSet);
begin
  RECRomaneio.CDPG := IntToStr(TAB_PAGID.AsInteger);
  RECRomaneio.DEPG := TAB_PAGPAG_DPAG.AsString;

  { Tipo de Pagamento }
  if cbdupl.Text  = 'SIM' then
     IETPAG.Text := '15' else
     if Pos('DIN',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '01' else
     if Pos('CHE',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '02' else
     if Pos('CRÉ',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '03' else
     if Pos('DÉB',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '04' else
     if Pos('DEP',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '16' else
     if Pos('PIX',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '17' else
     if Pos('TED',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '18' else
     if Pos('SEM',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '90' else
     if Pos('SER',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '90';

  { Forma de Pagamento }
  if (IETPAG.Text <> '2') and (TAB_PAG.RecNo > 0) then
      IEINDPAG.Text := IFThen(TAB_PAGPAG_PARC.AsInteger > 1,'1','0');

  if (RECParametros.EP_ID = 2) and (IETPAG.Text = '99') then { Ricardo - E-armarinhos }
      IETPAG.Text := '18'
end;

procedure Tfrmven_nfe.CEPDSCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  LAPDSC.Tag   := 1;
  CEVDSC.Value := RoundTO((CEPDSC.Value / 100) * oTextToValor(edvprod.Text),-2);

  try     Tag := 1  ; CALCULA_FRETE;
  finally CALCULA_NF;
  end;

  PCEdicao.ActivePageIndex := 0;
  DBGEdicao.SetFocus;
  DBGEdicao.FocusedAbsoluteIndex := DBGEdicaoNFE_VDESC.ColIndex;
end;

procedure Tfrmven_nfe.CECDNFValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if CECDNF.Value = 0 then
     oException(Nil,'Número da Nota Fiscal não Informado !');

  if (CECDNF.Tag <> CECDNF.Value) and (CECDNF.Tag > 0) then
  begin
    SBRodape.Panels[1].Text := EmptyStr; { Processos   }
    SBRodape.Panels[2].Text := EmptyStr; { Ocorrências }
    SBRodape.Panels[3].Text := EmptyStr; { Chave       }
    SBRodape.Panels[4].Text := EmptyStr; { Protocolo   }
    SBRodape.Panels[5].Text := EmptyStr; { CSTAT       }
    SBRodape.Refresh;

    DUP_001.First;
    while not DUP_001.Eof do
    begin
      DUP_001.Edit;
      DUP_001NFE_CDNF.Value := Trunc(CECDNF.Value);
      DUP_001NFE_TITU.Value := RETORNA_TITULO;
      DUP_001.Post;
      DUP_001.Next;
    end;

    if (LeftStr(cbcnat.Text,1) = '3') and (RECParametros.NFE_CAD_PRO_DI) then
    begin
      NFE_001.First;
      while not NFE_001.Eof do
      begin
        NFE_001.Edit;
        NFE_001NFE_CPROD.AsString := CECDNF.Text+'/'+NFE_001NFE_ITEMPED.AsString;
        NFE_001.Post;
        NFE_001.Next;
      end;
    end;
  end;

  CECDNF.Tag := Trunc(CECDNF.Value);
  CECDNF.Modified := False;
  CECDNF.Enabled  := (RECUsuarios.ID = 0);
end;

procedure Tfrmven_nfe.EDCDPDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if EDCDPD.Text  = '0' then
     EDCDPD.Text := EmptyStr;
end;

procedure Tfrmven_nfe.IEITEMPEDChange(Sender: TObject);
begin
  if IEITEMPED.Text = '1' then
     with SQLSEdicao do
     begin
       Close;
       SQL.Clear;
       SQL.Add('UPDATE NFE_ITE');
       SQL.Add('SET  NFE_XPED = ''' + EDCDPD.Text + '''');
       ExecQuery;
     end;

  oRTransact(TSEdicao);
end;

procedure Tfrmven_nfe._Descontos;
var
  RVDUP,RVSLD: Double;
  nRecNo: Integer;
begin
  if NFE_001.RecNo > 0 then
     try
       Tag := 1;
       with SQLSEdicao do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT COUNT(*) AS RECNO FROM NFE_ITE AS PK');
         SQL.Add('WHERE  PK.NFE_VPROD >= (SELECT CAST(' + oStrTran(CEVDSC.Text,',','.') + ' / COUNT(*) AS NUMERIC(15,2)) FROM NFE_ITE AS FK)');
         ExecQuery;
         
         nRecNo := Current.Vars[0].AsInteger;
       end;

       with SQLConsulta do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT FIRST 1 RVDUP,RVSLD FROM SP_RATEIO_NEW (''' + oStrTran(CEVDSC.Text,',','.') + ''' , ''' + IntToStr(nRecNo) + ''') ORDER BY RVSLD DESC');
         ExecQuery;

         RVDUP := Current.Vars[0].AsCurrency;
         RVSLD := Current.Vars[1].AsCurrency;
       end;
       CEVDSC.Value := 0;

       NFE_001.DisableControls;
       NFE_001.First;
       while not NFE_001.Eof do
       begin
         if NFE_001NFE_VPROD.AsFloat >= RVDUP then
         begin
           NFE_001.Edit;
           NFE_001NFE_VDESC.Value := IFThen(nRecNo > NFE_001.RecNo,RVDUP,RVSLD);
           NFE_001.Post;

           CEVDSC.Value := CEVDSC.Value + NFE_001NFE_VDESC.AsFloat;
         end;

         NFE_001.Next;
       end;
     finally
        NFE_001.EnableControls;
        oRTransact(TSEdicao);
        Tag := 0;
     end;
end;

procedure Tfrmven_nfe.CEIDCDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  REC_SHE_DEF.FWinControl := TWinControl(Sender);
  REC_SHE_DEF.FForm       := Self;
  REC_SHE_DEF.FB_SQL      := SQLFKConsulta;
  REC_SHE_DEF.FB_PSQ_TB_NO_PK    := IFThen(LAIDCD.Tag = 1,'VW_PSQ_CAD_FOR',
                             IFThen(LAIDCD.Tag = 2,'VW_PSQ_CAD_REP',
                             IFThen(LAIDCD.Tag = 3,'VW_PSQ_CAD_TRA',
                                                   'VW_PSQ_CAD_CLI')));

  try uPSQ_CAD_PAD(REC_SHE_DEF);
  finally
    if   REC_SHE_DEF.FB_PSQ_OK then
    with REC_SHE_DEF.FB_SQL do
    begin
      CEIDCD.Value   := Current.ByName('ID').AsInteger;
      EDDECD.Text    := Current.ByName('FANTASIA').AsString;

      EDxNome.Text   := Current.ByName('RAZAO').AsString;
      PEEmail.Text   := Current.ByName('EMAIL').AsString;
      IEEnvMail.Text := Current.ByName('ENVEMAIL').AsString;
      edCNPJ.Text    := Current.ByName('CNPJ').AsString;
      edCPF.Text     := Current.ByName('CPF' ).AsString;
      EDISUF.Text    := Current.ByName('ISUF').AsString;

      EDContato.Text := Current.ByName('CONTATO_NO').AsString;
      EDDDD.Text     := Current.ByName('DDD_NU').AsString;
      EDFone.Text    := Current.ByName('TEL_NU').AsString;

      { Endereço Comercial }
      PETxLgr.Text   := Current.ByName('TLO_TX').AsString;
      EDxLgr.Text    := Current.ByName('LOG_NO').AsString;
      EDNRO.Text     := Current.ByName('NRO'   ).AsString;
      EDxCpl.Text    := Current.ByName('XCPL'  ).AsString;
      edCEP.Text     := Current.ByName('CEP '  ).AsString;
      EDxBairro.Text := Current.ByName('BAI_NO').AsString;
      EDxMun.Text    := Current.ByName('LOC_NO').AsString;
      BECMun.Text    := Current.ByName('CMUN'  ).AsString;
      PEUF.Text      := Current.ByName('UF'    ).AsString;

      { Endereço Entrega }
      PEETxLgr.Text   := Current.ByName('ENT_TLO_TX').AsString;
      EDExLgr.Text    := Current.ByName('ENT_LOG_NO').AsString;
      EDENRO.Text     := Current.ByName('ENT_NRO'   ).AsString;
      EDExCpl.Text    := Current.ByName('ENT_XCPL'  ).AsString;
      edECEP.Text     := Current.ByName('ENT_CEP '  ).AsString;
      EDExBairro.Text := Current.ByName('ENT_BAI_NO').AsString;
      EDExMun.Text    := Current.ByName('ENT_LOC_NO').AsString;
      PEECMun.Text    := Current.ByName('ENT_CMUN'  ).AsString;
      PEEUF.Text      := Current.ByName('ENT_UF'    ).AsString;

      IERegime.Text   := Current.ByName('FIS_CRT').AsString;
      IECredICMS.Text := Current.ByName('FIS_CREDICMS').AsString;

      if ((GBInfAdF.Height > 40) and (not oEmpty(EDInfAdF.Text))) then
           GBInfAdF.Visible := True else GBInfAdF.Visible := False;

      PEIE.Items.Clear;
      PEIE.Items.Add('');
      PEIE.Items.Add('ISENTO');
      PEIE.Items.Add(Current.ByName('IE').AsString);
      PEIE.Text := Current.ByName('IE').AsString;

      if (PEIE.Text = EmptyStr) or (PEIE.Text = 'ISENTO') then
      begin
        IEindIEDest.Text := '9';
        IEindFinal.Text  := '1';
      end else

      if (EDCNPJ.Text <> EmptyStr) and (PEIE.Text <> EmptyStr) and (PEIE.Text <> 'ISENTO') then
      begin
        IEindIEDest.Text := '1';
      end;  

      if (CECDRO.Value = 0) and (Pos(CBCNAT.Text,'59246924') = 0) then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT   FIRST 1 PK.DTCA,PK.CFOP,PK.NFE_DTRA,FK.NFE_MODFRETE');
        SQL.Add('FROM ' + oREPZero('NFE_CAB','_',RECParametros.EP_ID,3)+' AS PK');
        SQL.Add('JOIN ' + oREPZero('NFE_TRA','_',RECParametros.EP_ID,3)+' AS FK ON (FK.NFE_CCAB = PK.ID)');
        SQL.Add('WHERE    PK.NFE_DFAV = ''' + EDDECD.Text + '''');
        SQL.Add('ORDER BY 1 DESC');
        ExecQuery;

        PESQUISA_NATUREZA      (SQLFKConsulta.Current.Vars[1].AsString,'U');
        PESQUISA_TRANSPORTADORA(SQLFKConsulta.Current.Vars[2].AsString,'U');
      end;

      if      Tag  = 0 then
      try     Tag := 1  ; CALCULA_FRETE;
      finally CALCULA_NF;
      end;
    end;

    if REC_SHE_DEF.FB_SQL <> Nil then
    begin
      REC_SHE_DEF.FB_SQL.Close;
      REC_SHE_DEF.FB_SQL := Nil;
    end;
  end;
end;

procedure Tfrmven_nfe.PEUFChange(Sender: TObject);
begin
  with tab_alq do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM TAB_ALQ');
    SQL.Add('WHERE  ALQ_ESTA = '''+PEUF.Text+'''');
    Open;
  end;

  if PEUF.Text  = 'XX' then
     PEUF.Text := EmptyStr;

// if NFE_001.RecNo > 0 then
     with SQLSEdicao do
     begin
       Close;
       SQL.Clear;
       SQL.Add('UPDATE NFE_ITE');
       SQL.Add('SET    UF = ''' + PEUF.Text + '''');
       ExecQuery;

       oRTransact(TSEdicao);
     end;
end;

procedure Tfrmven_nfe.PER_UFChange(Sender: TObject);
begin
  if PER_UF.Text  = 'XX' then
     PER_UF.Text := EmptyStr;
end;

procedure Tfrmven_nfe.PEEUFChange(Sender: TObject);
begin
  if PEEUF.Text  = 'XX' then
     PEEUF.Text := EmptyStr;
end;

procedure Tfrmven_nfe.PERUFChange(Sender: TObject);
begin
  if PERUF.Text  = 'XX' then
     PERUF.Text := EmptyStr;
end;

procedure Tfrmven_nfe.PETUFChange(Sender: TObject);
begin
  if PETUF.Text  = 'XX' then
     PETUF.Text := EmptyStr;
end;

procedure Tfrmven_nfe.dtsNFE_001DataChange(Sender: TObject; Field: TField);
begin
  DBGEdicaoNFE_XPED.Visible  := (IEITEMPED.Text = '1');
  DBGEdicao.Bands[3].Visible := (LeftStr(NFE_001NFE_CFOP.AsString,1) = '7'); { Tributação }

  { Descrição XML }
  PNLXPROX.Caption :=  NFE_001NFE_XPROX.AsString;
  PNLXPROX.Visible := (NFE_001NFE_XPROX.AsString <> EmptyStr);

  { Ajuste Colunas }
  if NFE_001.State = dsBrowse then
  begin
    DBGEdicao.ApplyBestFit(DBGEdicaoNFE_XPED );
    DBGEdicao.ApplyBestFit(DBGEdicaoNFE_CPROD);
    DBGEdicao.ApplyBestFit(DBGEdicaoNFE_XPROD);
    DBGEdicao.ApplyBestFit(DBGEdicaoNFE_NFCI );
  end;  
end;

procedure Tfrmven_nfe.dtsNFE_001StateChange(Sender: TObject);
begin
  oState(NFE_001,SBEdicao);
end;

procedure Tfrmven_nfe.V1_CEQVOLChange(Sender: TObject);
begin
  if TdxCurrencyEdit(Sender).TAG > 1 then
  begin
    tdxCurrencyEdit(FindComponent(Format('V%d_CENVOL',[TdxCurrencyEdit(Sender).TAG]))).Value := V1_CENVOL.Value;
    tdxEdit(FindComponent(Format('V%d_EDMARCA',[TdxEdit(Sender).TAG]))).Text := V1_EDMARCA.Text;
  end;
end;

procedure Tfrmven_nfe.EDR_DECDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  RECNFTriangular.AWinControl := TWinControl(Sender);
  RECNFTriangular.AQConsulta  := QConsulta;
  RECNFTriangular.CDCD        := IntToStr(LAIDCD.Tag);
  RECNFTriangular.Selected    := False;

  if (CER_IDCD.Value > 0) or (EDR_DECD.Text <> EmptyStr) then
      uPSQCAD(RECNFTriangular);

   _NFTriangular;
end;

procedure Tfrmven_nfe._NFTriangular;
begin
  CER_IDCD.Value   := IFThen(RECNFTriangular.Selected,RECNFTriangular.IDCD  ,0);
  EDR_DECD.Text    := IFThen(RECNFTriangular.Selected,RECNFTriangular.RZCD  ,EmptyStr);
  EDR_CNPJ.Text    := IFThen(RECNFTriangular.Selected,RECNFTriangular.CNPJ  ,EmptyStr);
  PER_IE.Text      := IFThen(RECNFTriangular.Selected,RECNFTriangular.IE    ,EmptyStr);
  PER_TXLGR.Text   := IFThen(RECNFTriangular.Selected,RECNFTriangular.TLO_TX,EmptyStr);
  EDR_XLGR.Text    := IFThen(RECNFTriangular.Selected,RECNFTriangular.LOG_NO,EmptyStr);
  EDR_NRO.Text     := IFThen(RECNFTriangular.Selected,RECNFTriangular.NRO   ,EmptyStr);
  EDR_XCPL.Text    := IFThen(RECNFTriangular.Selected,RECNFTriangular.XCPL  ,EmptyStr);
  EDR_CEP.Text     := IFThen(RECNFTriangular.Selected,RECNFTriangular.CEP   ,EmptyStr);
  EDR_xBAIRRO.Text := IFThen(RECNFTriangular.Selected,RECNFTriangular.BAI_NO,EmptyStr);
  EDR_XMUN.Text    := IFThen(RECNFTriangular.Selected,RECNFTriangular.LOC_NO,EmptyStr);
  PER_UF.Text      := IFThen(RECNFTriangular.Selected,RECNFTriangular.UF    ,EmptyStr);

  if Pos(cbcnat.Text,'51236123') > 0 then
  begin
    EDINFADNF.Lines.Clear;
    EDINFADNF.Lines.Add('VENDA DE MERCADORIA PARA ENTREGA NA INDUSTRIA, POR CONTA E ORDEM DO ADQUIRENTE, CONFORME ARTIGO 406 DO RICMS-SP');
    EDINFADNF.Lines.Add('');

    EDINFADNF.Lines.Add('Dados do adquirente da mercadoria: ' + EDxNOME.Text   + ' CNPJ: ' + oCNPJ_Mask(EDCNPJ.Text) + ' IE: ' + PEIE.Text );
    EDINFADNF.Lines.Add('Endereco do adquirente: '            + PETXLGR.Text   + ' '       + EDXLGR.Text             + ', '    + EDNRO.Text + ' ' + EDXCPL.Text + ' CEP: ' + EDCEP.Text + ' ' +
                                                                EDXBAIRRO.Text + ' '       + EDXMUN.Text             + ' '     + PEUF.Text);

    if RECNFTriangular.Selected then
    begin
      EDINFADNF.Lines.Add('Mercadoria a ser entregue através da nota fiscal ' + CER_CDNF.Text + ' para: ' + EDR_DECD.Text + ' CNPJ: ' + oCNPJ_Mask(EDR_CNPJ.Text) + ' IE: ' + PER_IE.Text );
      EDINFADNF.Lines.Add(PER_TXLGR.Text + ' ' + EDR_XLGR.Text    + ', '      + EDR_NRO.Text  + ' '       + EDR_XCPL.Text + ' CEP: '  + EDR_CEP.Text + ' ' +
                                                 EDR_XBAIRRO.Text + ' '       + EDR_XMUN.Text + ' '       + PER_UF.Text);
    end;
  end else
  if Pos(cbcnat.Text,'59246924') > 0 then
  begin
    EDINFADNF.Lines.Clear;
    EDINFADNF.Lines.Add('REMESSA DE MERCADORIA QUE SEGUE PARA INDUSTRIALIZACAO POR CONTA E ORDEM DO ADQUIRENTE, CONFORME ARTIGO 406 DO RICMS-SP');
    EDINFADNF.Lines.Add('');
    
    EDINFADNF.Lines.Add('Dados do adquirente da mercadoria: ' + EDR_DECD.Text    + ' CNPJ: ' + oCNPJ_Mask(EDR_CNPJ.Text) + ' IE: ' + PER_IE.Text );
    EDINFADNF.Lines.Add('Endereco do adquirente: '            + PER_TXLGR.Text   + ' '       + EDR_XLGR.Text             + ', '    + EDR_NRO.Text + ' ' + EDR_XCPL.Text + ' CEP: ' + EDR_CEP.Text + ' ' +
                                                                EDR_XBAIRRO.Text + ' '       + EDR_XMUN.Text             + ' '     + PER_UF.Text);
    EDINFADNF.Lines.Add('Mercadoria adquirida e impostos recolhidos atraves da nota fiscal ' + CER_CDNF.Text);
  end;

  if (Length(CBCNAT.Text) = 4) and (Pos(cbcnat.Text,'5123612359246924') > 0) then
  begin
    PCEdicao.ActivePage := TSNFTriangular;
    ATUALIZA_MENSAGENS;
  end;
end;

procedure Tfrmven_nfe.IEEnvMailChange(Sender: TObject);
begin
  if IEEnvMail.Text = '0' then
     oRegister_DEL_Email;
end;

procedure Tfrmven_nfe.NFE_001NFE_CSTIPIValidate(Sender: TField);
begin
  { *** CORRETO VIR PRONTO DA TABELA DE CFOP *** }

  { Se o CST de IPI for de Imunidade (“04” de Entrada ou “54” de Saída), o Código de Enquadramento deve ser de "001” a “099” }
  if ((NFE_001NFE_CSTIPI.AsString = '04') and (IETPNF.Text = '0')) or ((NFE_001NFE_CSTIPI.AsString = '54') and (IETPNF.Text = '1')) then
       NFE_001NFE_CENQ.Value := '001' else

  { Se o CST de IPI for de Suspensão (“05” de Entrada ou “55” de Saída), o Código de Enquadramento deve ser de "101” a “199” }
  if ((NFE_001NFE_CSTIPI.AsString = '05') and (IETPNF.Text = '0')) or ((NFE_001NFE_CSTIPI.AsString = '55') and (IETPNF.Text = '1')) then
       NFE_001NFE_CENQ.Value := '101' else

  { Se o CST de IPI for de Isenção (“02” de Entrada ou “52” de Saída), o Código de Enquadramento deve ser de "301” a “399” }
  if ((NFE_001NFE_CSTIPI.AsString = '02') and (IETPNF.Text = '0')) or ((NFE_001NFE_CSTIPI.AsString = '52') and (IETPNF.Text = '1')) then
       NFE_001NFE_CENQ.Value := '301' else

  { Se o CST de IPI for de Redução (“49” de Entrada ou “99” de Saída), o Código de Enquadramento deve ser de "601” a “608” }
  if ((NFE_001NFE_CSTIPI.AsString = '49') and (IETPNF.Text = '0')) or ((NFE_001NFE_CSTIPI.AsString = '99') and (IETPNF.Text = '1')) then
       NFE_001NFE_CENQ.Value := '601' else
       NFE_001NFE_CENQ.Value := '999';
end;

procedure Tfrmven_nfe.BECMunButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  if Length(PEUF.Text) < 2 then
     oException(PEUF,'UF não informada ou incorreta !');
end;

procedure Tfrmven_nfe.BECMunValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BECMUN.Modified := False;
  BECMUN.Text     := oRETNumero(BECMUN.Text);

  EDISUF.Modified := True;
  EDISUF.ValidateEdit;
end;

procedure Tfrmven_nfe.EDISUFValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  EDISUF.Modified := False;
  EDISUF.Text     := oRETNumero(EDISUF.Text);

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.CENQ_IMP FROM TAB_CEP_LOC_ZFM AS PK');
    SQL.Add('WHERE  PK.ID = ''' + IFThen(BECMUN.Text <> EmptyStr,BECMUN.Text,'0') + '''');
    ExecQuery;

    RECRomaneio.ZFM_CMUN := (Current.Vars[0].AsInteger > 0) and (EDISUF.Text <>   EmptyStr);
    RECRomaneio.ZFM_CENQ :=  IFThen(RECRomaneio.ZFM_CMUN,Current.Vars[1].AsString,EmptyStr);
  end;

  CALCULA_NF;
end;

procedure Tfrmven_nfe._SP_NFE_EMI(ANATOP: String = 'NORMAL');
begin
  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT RCDNF,TCDNF FROM SP_NFE_EMI (');
      SQL.Add('''' + RECParametros.EP_ID    + ''',');
      SQL.Add('''' + RECUsuarios.ID      + ''',');
      SQL.Add('''' + RECParametros.EP_NO_GP + ''',');
      SQL.Add('''' + ANATOP              + ''',');
      SQL.Add('''' + RECParametros.IP    + ''',');
      SQL.Add('''' + RECParametros.HOST  + ''')');
      ExecQuery;
    end;
    CECDNF.Value   := SQLEdicao.Current.Vars[0].AsInteger; { Normal }
    CER_CDNF.Value := SQLEdicao.Current.Vars[1].AsInteger; { Triangular }

    oCTransact(TEdicao);

    if CECDNF.Tag <> Trunc(CECDNF.Value) then
    begin
      CECDNF.Modified := True;
      CECDNF.ValidateEdit;
    end;
  except
    oCTransact(TEdicao,ltRollback);

    CECDNF.Value   := 0;
    CER_CDNF.Value := 0;
  end;
end;

procedure Tfrmven_nfe.IEICMS_STChange(Sender: TObject);
begin
  if IEICMS_ST.Text = '1' then
  begin
    CBCNAT.Modified := True;
    CBCNAT.ValidateEdit;
  end else
  CALCULA_NF;
end;

procedure Tfrmven_nfe.ENVIA_EMAIL;
var
  TSEmail, TSAssunto, TSMensagem, TSPath: TStringList;
  ISEmail, ISAssunto, ISMensagem, ISPath: IString;
  Assunto,Mensagem,Anexo: String;
begin
  Screen.Cursor := crAppStart;

  TSEmail    := TStringList.Create;
  TSAssunto  := TStringList.Create;
  TSMensagem := TStringList.Create;
  TSPath     := TStringList.Create;

  PEEmail.Text := Trim(PEEmail.Text);
  try
    if (IEEnvMail.Text = '1') and (PEEmail.Text <> EmptyStr) and (FileExists(NFE_PDF)) and (FileExists(NFE_XML)) then
    begin
      try
        SBRodape.Panels[1].Text := 'Aguarde... Enviando Email.';
        SBRodape.Refresh;

        Assunto  := RECParametros.EP_NO+' - Nota Fiscal Eletrônica Nº '+CECDNF.Text;
        Anexo    := NFE_XML + ';' + NFE_PDF;


        Mensagem := '<p>Prezado Cliente,'+
                    '<br>Segue em anexo Nota Fiscal e XML referentes a fatura nº '+CECDNF.Text+'.</p>'+
                    '<p>Qualquer dúvida estamos à sua disposição.</p>'+
                    '<p>'+RECUsuarios.Login+' - Departamento Comercial'+
                    '<br>'+RECParametros.EP_NO+'</p>';

        TSEmail.Append(PEEmail.Text);
        TSAssunto.Append(Assunto);
        TSMensagem.Append(Mensagem);
        TSPath.Append(Anexo);

        ISEmail    := TString.Create(TSEMail.Text);
        ISAssunto  := TString.Create(TSAssunto.Text);
        ISMensagem := TString.Create(TSMensagem.Text);
        ISPath     := TString.Create(TSPath.Text);

        {obs.: para enviar mais de 1 anexo, concatenar separados por ";" no parâmetro caminhoText }
        if EnviaEmail(ISEmail,ISAssunto,ISMensagem,ISPath) then
        SBRodape.Panels[1].Text := 'Email enviado com sucesso.' else
        SBRodape.Panels[1].Text := 'Falha ao tentar enviar email';
        SBRodape.Refresh;

        oAviso(handle,SBRodape.Panels[1].Text);
      except
        on E: Exception do
        begin
          oErro(Self.Handle,
               'Falha ao tentar fechar automaticamente as páginas !'+#13+
               'Favor fechá-los manualmente.'+#13+#13+
               'Error Code: '+E.Message);
        end;
      end;
    end else

    if (IEEnvMail.Text = '1') and (FileExists(NFE_PDF)) and (FileExists(NFE_XML)) then
    begin

      SBRodape.Panels[1].Text := 'Email não enviado automaticamente por não atender aos requisitos necessários';
      SBRodape.Refresh;
    end;
  finally
    Screen.Cursor := crDefault;

    TSEmail.Free;
    TSAssunto.Free;
    TSMensagem.Free;
    TSPath.Free;
  end;
end;

procedure Tfrmven_nfe.IETPAGChange(Sender: TObject);
begin
  if Pos(IETPAG.Text,'99') > 0 then
  IEINDPAG.Text := '1';
end;

procedure Tfrmven_nfe.NFE_001NFE_CFOPValidate(Sender: TField);
begin
  CALCULA_CST;
end;

procedure Tfrmven_nfe.NFE_001NFE_NCMValidate(Sender: TField);
begin
  CALCULA_CST;
end;

procedure Tfrmven_nfe.NFE_001NFE_CSTValidate(Sender: TField);
begin
  NFE_001NFE_PREDBC.Value := IFThen(NFE_001NFE_CST.AsString = '20',33.33,0);
  CALCULA_PICMS;
end;

procedure Tfrmven_nfe.NFE_001NFE_ORIGValidate(Sender: TField);
begin
  CALCULA_PICMS;
end;

procedure Tfrmven_nfe.NFE_001UFValidate(Sender: TField);
begin
  CALCULA_PICMS;
end;

procedure Tfrmven_nfe.CALCULA_PICMS;
begin
  if NFE_001NFE_CCAB.AsInteger <> 99999 then
     NFE_001NFE_PICMS.Value := IFThen((Pos(NFE_001NFE_CST.AsString,'201202500900') = 0) and (RECParametros.NFE_CRT = 1),0,
                               IFThen(PEUF.Text = 'EX',RECParametros.NFE_ICMS,
                               IFThen((Pos(NFE_001NFE_ORIG.AsString,'12') > 0) and (PEUF.Text <> RECParametros.LOG_UF),4,
                               IFThen((PEUF.Text = RECParametros.LOG_UF        ) and (PEUF.Text = 'SP') and (NFE_001NFE_NCM.AsString = '39181000'),12,tab_alqALQ_ICMS.AsFloat))));
end;

procedure Tfrmven_nfe.CALCULA_CST;
begin
  with tab_nat do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM TAB_NAT');
    SQL.Add('WHERE  NAT_CNAT = ''' + NFE_001NFE_CFOP.AsString + '''');
    Open;
  end;

  NFE_001NFE_CSTIPI.Value    := IFThen(NFE_001NFE_PIPI.AsFloat > 0,tab_natNAT_CSTI.AsString,tab_natNAT_CSTI0.AsString);
  NFE_001NFE_CSTPIS.Value    := tab_natNAT_CSTP.AsString;
  NFE_001NFE_PPIS.Value      := IFThen(RECParametros.REGIME = 'LR',tab_natNAT_PIPP_REAL.AsFloat,
                                IFThen(RECParametros.REGIME = 'SN',tab_natNAT_PIPP_SIM.AsFloat ,tab_natNAT_PIPP.AsFloat));
  NFE_001NFE_CSTCOFINS.Value := tab_natNAT_CSTC.AsString;
  NFE_001NFE_PCOFINS.Value   := IFThen(RECParametros.REGIME = 'LR',tab_natNAT_PIPC_REAL.AsFloat,
                                IFThen(RECParametros.REGIME = 'SN',tab_natNAT_PIPC_SIM.AsFloat ,tab_natNAT_PIPC.AsFloat));
  NFE_001NFE_INDTOT.Value    := tab_natNAT_INDT.AsInteger;
  NFE_001NFE_FRET.Value      := tab_natNAT_FRET.AsString;
  NFE_001NFE_TIPO.Value      := tab_natNAT_TIPO.AsString;

  if RECParametros.NFE_CRT = 3 then
  begin
    NFE_001NFE_CST.Value := TAB_NATNAT_CCST.AsString;

    { REDUÇÕES }
    if (NFE_001NFE_CFOP.AsString = '5101')            and (edcnpj.Text <> '') and
       (LeftStr(NFE_001NFE_NCM.AsString,4) <> '5402') and
       (LeftStr(NFE_001NFE_NCM.AsString,4) <> '5404') and (LeftStr(NFE_001NFE_NCM.AsString,4) <> '5405') and
       (LeftStr(NFE_001NFE_NCM.AsString,4) <> '5406') and
       (LeftStr(NFE_001NFE_NCM.AsString,4) <> '5501') and (LeftStr(NFE_001NFE_NCM.AsString,4) <> '5502') and
       (LeftStr(NFE_001NFE_NCM.AsString,4) <> '5503') and (LeftStr(NFE_001NFE_NCM.AsString,4) <> '5504') and
       (LeftStr(NFE_001NFE_NCM.AsString,4) <> '5505') and (LeftStr(NFE_001NFE_NCM.AsString,4) <> '5506') and
       (LeftStr(NFE_001NFE_NCM.AsString,4) <> '5507') and
       (LeftStr(NFE_001NFE_NCM.AsString,4) <> '5601') and (LeftStr(NFE_001NFE_NCM.AsString,4) <> '6309') and
       (NFE_001NFE_NCM.AsString <> '59011000') then

    if (LeftStr(NFE_001NFE_NCM.AsString,2) = '50')     or (LeftStr(NFE_001NFE_NCM.AsString,2) = '51') or
       (LeftStr(NFE_001NFE_NCM.AsString,2) = '52')     or (LeftStr(NFE_001NFE_NCM.AsString,2) = '53') or
       (LeftStr(NFE_001NFE_NCM.AsString,2) = '54')     or (LeftStr(NFE_001NFE_NCM.AsString,2) = '55') or
       (LeftStr(NFE_001NFE_NCM.AsString,2) = '56')     or (LeftStr(NFE_001NFE_NCM.AsString,2) = '57') or
       (LeftStr(NFE_001NFE_NCM.AsString,2) = '58')     or
       (LeftStr(NFE_001NFE_NCM.AsString,2) = '60')     or (LeftStr(NFE_001NFE_NCM.AsString,2) = '61') or
       (LeftStr(NFE_001NFE_NCM.AsString,2) = '62')     or (LeftStr(NFE_001NFE_NCM.AsString,2) = '63') or
       (LeftStr(NFE_001NFE_NCM.AsString,4) = '5901')   or
       (LeftStr(NFE_001NFE_NCM.AsString,5) = '96071')  or
       (LeftStr(NFE_001NFE_NCM.AsString,6) = '560130') or
       (copy(NFE_001NFE_NCM.AsString,1,7) = '6505001') or
       (copy(NFE_001NFE_NCM.AsString,1,7) = '6505002') or
       (copy(NFE_001NFE_NCM.AsString,1,7) = '6505003') or
       (NFE_001NFE_NCM.AsString = '94049000') then
    begin
      NFE_001NFE_CST.Value    := '20';
      NFE_001NFE_PREDBC.Value := 33.33;
    end;
  end else
  begin
    { SIMPLES NACIONAL }
    NFE_001NFE_CST.Value := tab_natNAT_CSTS.AsString;
    if (IECredICMS.Text   = '1') and (RECParametros.NFE_CREDITO_ICMS > 0) then

    if (LeftStr(NFE_001NFE_CFOP.AsString,4) = '5101') or (LeftStr(NFE_001NFE_CFOP.AsString,4) = '5102') or
       (LeftStr(NFE_001NFE_CFOP.AsString,4) = '6101') or (LeftStr(NFE_001NFE_CFOP.AsString,4) = '6102') or
       (LeftStr(NFE_001NFE_CFOP.AsString,4) = '5124') or (LeftStr(NFE_001NFE_CFOP.AsString,4) = '6124') or
       (LeftStr(NFE_001NFE_CFOP.AsString,4) = '5125') or (LeftStr(NFE_001NFE_CFOP.AsString,4) = '5925') then

    NFE_001NFE_CST.Value := tab_natNAT_CSTA.AsString;
  end;

  { EXPORTAÇÃO }
  if (LeftStr(NFE_001NFE_CFOP.AsString,1) <> '7') or (NFE_001NFE_QTRIB.AsFloat = 0) then
  begin
    NFE_001NFE_UTRIB.Value   := NFE_001NFE_UCOM.AsString;
    NFE_001NFE_QTRIB.Value   := NFE_001NFE_QCOM.AsFloat;
    NFE_001NFE_VUNTRIB.Value := NFE_001NFE_VUNCOM.AsFloat;
  end;
end;

procedure Tfrmven_nfe.DUPLICATAS;
var
  i: word;
begin
  if CEVNF.Value <> CEVDUP.Value then
  try
    EDVDup.Text := '0';
    CBDUPL.TAG  := 1;

    DUP_001.DisableControls;
    if   CEVDUP.Value > 0 then
    with SQLSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM NFE_DUP');
      ExecQuery;

      TSEdicao.CommitRetaining;
      DUP_001.Close;
      DUP_001.Open;
    end;

    if (BCalc) and (cbdupl.Text = 'SIM') and (cbdpag.Text <> EmptyStr) then
    begin
      TAB_PAG.Close;
      TAB_PAG.Params[0].Value := CBDPAG.Text;
      TAB_PAG.Open;

      with SQLSEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT SUM(NFE_VNF) FROM NFE_ITE');
        ExecQuery;
        EDVDUP.Text := IFThen(Current.Vars[0].AsFloat > 0,Current.Vars[0].AsString,oTrimValor(EDVNF.Text));
      end;

      with SQLConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT FIRST 1 RVDUP,RVSLD FROM SP_RATEIO_NEW (''' + oStrTran(EDVDUP.Text,',','.') + ''' , ''' + TAB_PAGPAG_PARC.AsString + ''') ORDER BY RVSLD DESC');
        ExecQuery;
      end;

      for i := 1 to TAB_PAGPAG_PARC.AsInteger do
      begin
        DUP_001.Append;
        DUP_001NFE_TITU.Value := DUP_001NFE_CDNF.AsString + IFThen(TAB_PAGPAG_PARC.AsInteger > 1,'-' + aDUP[i],EmptyStr);

        if cbprz.Text = 'EMISSÃO NF' then
        begin
          DUP_001NFE_DNFE.Value := DEdhEmi.Date;
          DUP_001NFE_DVEN.Value := incDay(DEdhEmi.Date,TAB_PAG.Fields[i + 1].Value);
        end else
        begin
          DUP_001NFE_DNFE.Value := DEdhEmi.Date;
          DUP_001NFE_DVEN.Value := incDay(DEdhSaiEnt.Date,TAB_PAG.Fields[i + 1].Value);
        end;

        DUP_001NFE_STPD.Value := RECRomaneio.STPD;
        DUP_001NFE_STCO.Value := RECRomaneio.STCO;
        DUP_001NFE_STFI.Value := RECRomaneio.PK_DEST;
        DUP_001NFE_PARC.Value := i;
        DUP_001NFE_VDUP.Value := SQLConsulta.Current.Vars[ IFThen(i = TAB_PAGPAG_PARC.AsInteger,1,0) ].AsCurrency;
        DUP_001.Post;
        TSEdicao.CommitRetaining;
      end;

      DUP_001.Close;
      DUP_001.Open;
    end;
  finally
    DUP_001.EnableControls;

    with SQLSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(NFE_VDUP) AS VDUP FROM NFE_DUP');
      ExecQuery;

      CEVDUP.Value := Current.ByName('VDUP').AsCurrency;
    end;

    if CEVDUP.Value > 0 then
    CBDUPL.Text := 'SIM' else
    CBDUPL.Text := 'NÃO';
    CBDUPL.Tag  := 0;

    cbprz.Enabled  := (cbdupl.Text = 'SIM') or (cbdupl.Text = '');
    cbDPAG.Enabled := (cbdupl.Text = 'SIM') or (cbdupl.Text = '');
  end;
end;

procedure Tfrmven_nfe.DBGEdicaoNFE_CFOPValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BCalc := True;
end;

procedure Tfrmven_nfe.ACTGeraNFeXMLExecute(Sender: TObject);
var
  tIde,
  tEmit,
  tDest,
  tTotal,
  tTransp,
  tCobr,
  tPag,
  tInfAdic,
  autXML: array of ShortString;

  tProd : ANFe;
  x: word;
begin
  if (IEINDPAG.Text = EmptyStr) and (IETPAG.Text <> '90') then
  oException(IEINDPAG,'Forma de pagamento não informada !');

  if EDDDD.Text  = EmptyStr then
     EDDDD.Text := '00';

  if EDFone.Text = EmptyStr then
     EDFone.Text := '00000000';

  ACTGeraNFeXML.Tag := 1;

  NFE_PDF  := EmptyStr;
  NFE_XML  := EmptyStr;

  SBRodape.Panels[0].Text := EmptyStr; { SEFAZ       }
  SBRodape.Panels[1].Text := EmptyStr; { Processos   }
  SBRodape.Panels[2].Text := EmptyStr; { Ocorrências }
  SBRodape.Panels[3].Text := EmptyStr; { Chave       }
  SBRodape.Panels[4].Text := EmptyStr; { Protocolo   }
  SBRodape.Panels[5].Text := EmptyStr; { CSTAT       }
  SBRodape.Refresh;

  PCEdicao.ActivePage := TSProduto;
  if ACTGeraNFeXML.ImageIndex = 10 then
  begin
    EDITAR;
    Exit;
  end;

  { CHECK }
  ACTCheckConstraints.Execute;
  ACTCheckErrors.Execute;
  ACTCheckNum.Execute;

  try
    Screen.cursor := crAppStart;

    { VER DISPONIBILIDADE }
    SBRodape.Panels[0].Text := 'Aguarde, conectando sefaz ...';
    SBRodape.Refresh;

    SBRodape.Panels[0].Text := oNFE_API_SEFAZ;
    SBRodape.Refresh;

    if LeftStr(RECParametros.NFE_API_SEFAZ,3) <> '107' then
    oException(Nil,'Falha ao tentar conectar com o sefaz !' + #13 +
                   'Motivo: ' + SBRodape.Panels[0].Text     + #13 + #13 +
                   'Favor entrar em contato com o administrador do sistema.');

    SBRodape.Panels[1].Text := 'Aguarde, gerando arquivo XML ...';
    SBRodape.Refresh;

    SetLength(tIde    ,44);              //ide
    SetLength(tEmit   ,15);              //emit
    SetLength(tDest   ,56);              //dest
    SetLength(tProd   ,NFE_001.RecordCount,236); //prod
    SetLength(tTotal  ,48);              //total
    SetLength(tTransp ,28);              //transp
    SetLength(tCobr   ,11);              //cobr
    SetLength(tPag    ,14);              //pag
    SetLength(tInfAdic,25);              //infAdic
    SetLength(autXML  ,1);               //autXML

    {Tag do Grupo das informações de identificação da NFe }
    tIde[00] := RECParametros.LOG_UF;  //<cUF> Código da UF do emitente do Documento Fiscal
//  tIde[01] := IntToStr(Random(CECDNF.Value)+1); //<cNF> Código Numérico que compõe a chNFe de Acesso - Numero aleatorio: apenas 8 digitos: NF-e 2.00
    tIde[01] := oStrZero(DayOf(DEdhEmi.Date),8-Length(CECDNF.Text)) + CECDNF.Text;        //<cNF> Código Numérico que compõe a chNFe de Acesso - Numero aleatorio: apenas 8 digitos: NF-e 2.00
    tIde[02] := oREPAcentos(cbdnat.Text); //<natOp>  Descrição da Natureza da Operação
    tIde[03] := '';                       //<indPag> Indicador da forma de pagamento - Retirado na versão 4.00
    tIde[04] := '55';                     //<mod>    Código do Modelo do Documento Fiscal
    tIde[05] := RECParametros.NFE_SERIE;  //<serie>  Série do Documento Fiscal
    tIde[06] := CECDNF.Text;              //<nNF>    Número do Documento Fiscal

    tIde[07] := FormatDatetime('yyyy-mm-dd',DEdhEmi.Date)    + 'T' + FormatDateTime('hh:nn:ss',now) + RECParametros.SHE_TIMEZONE; //<dhEmi>  Data e hora de emissão do Documento Fiscal
    tIde[08] := FormatDatetime('yyyy-mm-dd',DEdhSaiEnt.Date) + 'T' + FormatDateTime('hh:nn:ss',now) + RECParametros.SHE_TIMEZONE; //<dhSaiEnt>  Data e hora de Saída ou da Entrada da Mercadoria/Produto

    tIde[09] := IETPNF.Text;        //<tpNF>   Tipo de Operação - 0=Entrada; 1=Saída
    tIde[10] := RECParametros.LOG_CMUN; //<cMunFG> Código do Município de Ocorrência do Fato Gerador - composto de 7 dígitos numéricos
    tIde[11] := '1';                //<tpEmis> Tipo de Emissão da NF-e
    tIde[12] := IEFinNFe.Text;      //<finNFe> Finalidade de emissão da NF-e - 1=NF-e Normal; 2=NF-e Complementar; 3=NF-e Ajuste; 4=Devolução de mercadoria

    { Tag Grupo de informação das NF-e´s referenciadas. Informar ";" no final de cada ocorrência do grupo.}
    tIde[13] := ''; //<refNFe>  - chNFe da nfe referenciada  (Grupo 1/5: até 5 chNFes de NF-e)
    tIde[34] := ''; //<refNFe>  - chNFe da nfe referenciada  (Grupo 2/5: até 5 chNFes de NF-e)
    tIde[37] := ''; //<refNFe>  - chNFe da nfe referenciada  (Grupo 3/5: até 5 chNFes de NF-e)
    tIde[38] := ''; //<refNFe>  - chNFe da nfe referenciada  (Grupo 4/5: até 5 chNFes de NF-e)
    tIde[39] := ''; //<refNFe>  - chNFe da nfe referenciada  (Grupo 5/5: até 5 chNFes de NF-e)

    if IEFinNFe.Text <> '1' then
       tIde[13] := NewCHNFE;

    { Grupo de informação de NF´s modelo 1/1A referenciadas. Se for informar, informar todos os dados pois todas as tags são obrigatórias(1-1).  Informar ";" no final de cada ocorrência do grupo.}
    tIde[19] := ''; //cUF    --> Utilizar a Tabela do IBGE
    tIde[20] := ''; //AAMM   --> AAMM da emissão da NF
    tIde[21] := ''; //CNPJ   --> CNPJ do emitente da NF
    tIde[22] := ''; //mod    --> Informar o código do modelo do Documento fiscal: 01 – modelo 01
    tIde[23] := ''; //serie  --> nformar a série do documento fiscal
    tIde[24] := CECDNF.Text; //nNF    --> 1 – 999999999

     { Grupo de informação de cupons fiscais referenciados.  Informar ";" no final de cada ocorrência do grupo.}
    tIde[17] := ''; //<mod>  (2 dígitos. Valores possíveis: 2B - para cupom fiscal emitido por máquina registradora, 2C - para cupom PDV ou 2D - para cupom emitido por ECF)
    tIde[18] := ''; //<nECF> (1-3 dígitos)
    tIde[25] := ''; //<nCOO>

    { Tag Grupo de informação de NF´S de produtor rural referenciada. Se for informar, informar todos os dados pois todas as tags são obrigatórias(1-1)}
    tIde[26] := ''; //cUF   --> Utilizar a Tabela do IBGE
    tIde[27] := ''; //AAMM  --> AAMM da emissão da NF
    tIde[28] := ''; //CNPJ OU CPF do Produtor Rural emitente da NF. Se for informado CNPJ (14 dígitos) será gerada tag <CNPJ> e se for informado cpf (11 dígitos) será gerada tag <CPF>
    tIde[29] := ''; //IE
    tIde[30] := ''; //mod   2 dígitos, valores: 04 - para nf de produtor ou 01 - para nf avulsa.
    tIde[31] := ''; //serie   1-3 caracteres
    tIde[32] := ''; //nNF da nota fiscal - Informar para gerar esse grupo de tags.

    { Grupo de informação de CTe´S referenciadas.  Informar ";" no final de cada ocorrência do grupo.}
    tide[33] := '';  // refCTe informar aqui a chNFe de acesso do CT-e referenciado. Para não informar nenhuma Cte referenciada, deixar vazio.

    tIde[14] := IEIndFinal.Text; //<indFinal> Indica operação com Consumidor final - 0=Normal; 1=Consumidor final; -> A Tag hSaiEnt foi removida, por isso, em sua posição, foi adicionada a tag indFinal
    tIde[15] := '';              //<dhCont> Data da entrada em contingência - Formado -> AAAA-MM-DDTHH:MM:SSTZD
    tIde[16] := '';              //<xJust> Justificativa da entrada em contingência

    tIde[35] := IFThen(PEUF.Text = 'EX','3',IFThen(PEUF.Text = RECParametros.LOG_UF,'1','2')); //<idDest> Identificador de local de destino da operação
    tIde[36] := '9'; //<indPres> Indicador de presença do comprador no estabelecimento comercial no momento da operação
    tIde[40] := 'Sheild v4.00.5';

    tIde[41] := '0'; //indIntermed; 0 - Operação sem intermediador (em site ou plataforma própria); 1 - Operação em site ou plataforma de terceiros (intermediadores/marketplace)
    tIde[42] := '';  //CNPJ - Informar o CNPJ do Intermediador da Transação (agenciador, plataforma de delivery, marketplace e similar) de serviços e de negócios.
    tIde[43] := '';  //idCadIntTran  - Nome do usuário ou identificação do perfil do vendedor no site do intermediador (agenciador, plataforma de delivery, marketplace e similar) de serviços e de negócios.


    { Tag de Grupo de identificação do emitente da NF-e }
    tEmit[00] := RECParametros.EP_NO;  //<xNome>
    tEmit[01] := RECParametros.EP_NO_RZ;   //<xFant>
    tEmit[02] := RECParametros.LOG_TIPO+' '+ //<xLgr>
                 RECParametros.LOG_NO;
    tEmit[03] := RECParametros.LOG_NU;     //<nro>
    tEmit[04] := RECParametros.LOG_NU_CPL;     //<xCpl>
    tEmit[05] := RECParametros.LOG_BAI_NO;     //<xBairro>
    tEmit[06] := RECParametros.LOG_CMUN;      //<cMun> composto de 7 dígitos numéricos
    tEmit[07] := RECParametros.LOG_CID_NO;     //<xMun>
    tEmit[08] := RECParametros.LOG_CEP;     //<CEP>
    tEmit[09] := RECParametros.C_TEL_NU;   //<fone>
    tEmit[10] := RECParametros.IE;        //<IE>
    tEmit[11] := RECParametros.IM;        //<IM> Inscrição Municipal do Prestador de Serviço
    tEmit[12] := oRETNumero(RECParametros.EMP_CNAE);      //<CNAE> CNAE fiscal
    tEmit[13] := '';                      //<IEST> IE do Substituto Tributário
    tEmit[14] := RECParametros.NFE_CRT;   //<CRT> Código de Regime Tributário -> 1 – Simples Nacional; 2 – Simples Nacional – excesso de sublimite de receita bruta; 3 – Regime Normal

    { Tag de grupo de identificação do Destinatário da NF-e }
    tDest[00] := IFThen(not oEmpty(edcnpj.Text),edcnpj.Text,edcpf.Text);     //<CNPJ> ou <CPF>
    tDest[41] := EDDECD.Text;                                                //<xFant>
    tDest[01] := oREPAcentos(EDxNome.Text);                                  //<xNome>
    tDest[02] := oREPAcentos(PETxLgr.Text+' '+EDxLgr.Text);                   //<xLgr>
    tDest[03] := oREPAcentos(EDNRO.Text);                                    //<nro>
    tDest[04] := oREPAcentos(EDxCpl.Text);                                   //<xCpl>
    tDest[05] := oREPAcentos(EDxBairro.Text);                                //<xBairro>
    tDest[06] := oREPAcentos(BECMun.Text);                                   //<cMun>
    tDest[07] := oREPAcentos(EDxMun.Text);                                   //<xMun>
    tDest[08] := oREPAcentos(PEUF.Text);                                     //<UF>
    tDest[09] := oREPAcentos(edcep.Text);                                    //<CEP>
    tDest[10] := IExPais.Text;                                               //<cPais>
    tDest[11] := IExPais.Descriptions[IExPais.Values.IndexOf(IExPais.Text)]; //<xPais>
    tDest[12] := Trim(edDDD.Text+oRETNumero(EDFone.Text));                   //<fone>
    tDest[13] := PEIE.Text;                                                  //<IE>
    tDest[14] := EDISUF.Text;                                                //<ISUF>
    tDest[40] := '';                                                         //<IM>

    { Tag Exporta }
    tDest[15] := EDUFSaidaPais.Text;  //<UFSaidaPais>  Sigla da UF de Embarque ou de transposição de fronteira
    tDest[16] := EDxLocExporta.Text;  //<xLocExporta>  Descrição do Local de Embarque ou de transposição de fronteira
    tDest[39] := EDxLocDespacho.Text; //<xLocDespacho> Descrição do local de despacho

    { Tag Compras }
    tDest[17] := ''; //<xNEmp> Nota de Empenho
    tDest[18] := ''; //<xPed> Pedido
    tDest[19] := ''; //<xCont> Contrato
    tDest[20] := ''; //<email> Email do Emitente

    { Tag Grupo de identificação do Local de RETIRADA
      Informar apenas quando for diferente do endereço do remetente. }
    tDest[21] := ''; //RETIRADA <CNPJ> ou <CPF>
    tDest[22] := ''; //RETIRADA <xLgr>
    tDest[23] := ''; //RETIRADA <nro>
    tDest[24] := ''; //RETIRADA <xCpl>
    tDest[25] := ''; //RETIRADA <xBairro>
    tDest[26] := ''; //RETIRADA <cMun>
    tDest[27] := ''; //RETIRADA <xMun>
    tDest[28] := ''; //RETIRADA <UF>

    tDest[42] := ''; //RETIRADA <xNome>
    tDest[43] := ''; //RETIRADA <CEP>
    tDest[44] := ''; //RETIRADA <cPais>
    tDest[45] := ''; //RETIRADA <xPais>
    tDest[46] := ''; //RETIRADA <fone>
    tDest[47] := ''; //RETIRADA <email>
    tDest[48] := ''; //RETIRADA <IE>


    { Tag Grupo de identificação do Local de ENTREGA
      Informar apenas quando for diferente do endereço do destinatário. }
    if (PEETxLgr.Text <> '')         and (EDExLgr.Text <> '') and (EDENRO.Text <> '') and (Length(EDECep.Text) = 8) and
       (EDExBairro.Text <> '')       and (EDExMun.Text <> '') and (PEEUF.Text <> '')  and (PEEcMun.Text <> '') and
       (EDxLgr.Text <> EDExLgr.Text) and (EDNRO.Text <> EDENRO.Text) then
    begin
      tDest[29] := '';                                          //ENTREGA <CNPJ> ou <CPF>
      tDest[30] := oREPAcentos(PEETxLgr.Text+' '+EDExLgr.Text); //ENTREGA <xLgr>
      tDest[31] := oREPAcentos(EDENRO.Text);                    //ENTREGA <nro>
      tDest[32] := oREPAcentos(EDExCpl.Text);                   //ENTREGA <xCpl>
      tDest[33] := oREPAcentos(EDExBairro.Text);                //ENTREGA <xBairro>
      tDest[34] := oREPAcentos(PEEcMun.Text);                   //ENTREGA <cMun>
      tDest[35] := oREPAcentos(EDExMun.Text);                   //ENTREGA <xMun>
      tDest[36] := oREPAcentos(PEEUF.Text);                     //ENTREGA <UF>

      tDest[49] := ''; //ENTREGA <xNome>
      tDest[50] := ''; //ENTREGA <CEP>
      tDest[51] := ''; //ENTREGA <cPais>
      tDest[52] := ''; //ENTREGA <xPais>
      tDest[53] := ''; //ENTREGA <fone>
      tDest[54] := PEEmail.Text; //ENTREGA <email>
      tDest[55] := ''; //ENTREGA <IE>
    end;

    tDest[37] := IEindIEDest.Text;     //<indIEDest> Indicador da IE do Destinatário -> 1=Contribuinte ICMS (informar a IE do destinatário);2=Contribuinte isento de Inscrição no cadastro de Contribuintes do ICMS; 9=Não Contribuinte, que pode ou não possuir Inscrição
    tDest[38] := EDidEstrangeiro.Text; //<idEstrangeiro>

    autXML[0] := ''; //<autXML>  Pessoas autorizadas a acessar o XML da NF-e CNPJ ou CPF

    { Tag de grupo do detalhamento de Produtos e Serviços da NFe }
    x := 0;
    NFE_001.First;
    while not NFE_001.Eof do
    begin
      tProd[x,000] := oREPAcentos(NFE_001NFE_CPROD.AsString); //<cProd> Código do produto ou serviço
      tProd[x,001] := oREPTxt(IFThen(not oEmpty(NFE_001NFE_CEAN.AsString),NFE_001NFE_CEAN.AsString,'SEM GTIN'));      //<cEAN> GTIN (Global Trade Item Number) do produto, antigo código EAN ou código de barras
      tProd[x,002] := oREPAcentos(NFE_001NFE_XPROD.AsString); //<xProd> Descrição do produto ou serviço
      tProd[x,003] := oREPAcentos(NFE_001NFE_NCM.AsString);   //<NCM> Código NCM com 8 dígitos
      tProd[x,109] := oREPAcentos(NFE_001NFE_NVE.AsString);   //<NVE> Codificação NVE - Nomenclatura de Valor Aduaneiro e Estatística
      tProd[x,146] := oREPAcentos(NFE_001NFE_CEST.AsString);  //<CEST>
      tProd[x,156] := '';                                     //<indEscala> Indicador de Escala Relevante - S - Produzido em Escala Relevante; N – Produzido em Escala NÃO Relevante. -> Campo Novo Obrigatorio NFE 4.0
      tProd[x,157] := '';                                     //<CNPJFab> CNPJ do Fabricante da Mercadoria, obrigatório para produto em escala NÃO relevante -> Campo Novo NFE 4.0
      tProd[x,158] := '';                                     //<cBenef> Código de Benefício Fiscal utilizado pela UF, aplicado ao item. -> Campo Novo NFE 4.0
      tProd[x,004] := NFE_001NFE_EXTIPI.AsString;                                                                      //<EXTIPI>
      tProd[x,005] := NFE_001NFE_CFOP.AsString;                                                                        //<CFOP> Código Fiscal de Operações e Prestações
      tProd[x,006] := NFE_001NFE_UCOM.AsString;                                                                        //<uCom> Uniade Comercial
      tProd[x,007] := oTextToValor(NFE_001NFE_QCOM.AsFloat  ,2,True);                                                  //<qCom> Quantidade Comercial
      tProd[x,007] := oTextToValor(NFE_001NFE_QCOM.AsFloat  ,2,True);                                                  //<qCom> Quantidade Comercial
      tProd[x,008] := oTextToValor(NFE_001NFE_VUNCOM.AsFloat,9,True);                                                  //<vUnCom> Valor Unitário de Comercialização
      tProd[x,009] := oTextToValor(NFE_001NFE_VPROD.AsFloat ,2,True);                                                  //<vProd> Valor Total Bruto do Produto ou Serviço
      tProd[x,010] := oREPTxt(NFE_001NFE_CEAN.AsString);                                                               //<cEANTrib> GTIN (Global Trade Item Number) da unidade tributável, antigo código EAN ou código de barras
      tProd[x,011] := NFE_001NFE_UTRIB.AsString;                                                                       //<uTrib> Unidade Tributável
      tProd[x,012] := oTextToValor(NFE_001NFE_QTRIB.AsFloat  ,2,True);                                                 //<qTrib#,0.00> Quantidade Tributável
      tProd[x,013] := oTextToValor(NFE_001NFE_VUNTRIB.AsFloat,9,True);                                                 //<vUnTrib> Valor Unitário de tributação
      tProd[x,014] := IFThen(not oEmpty(NFE_001NFE_VFRETE.AsFloat),oTextToValor(NFE_001NFE_VFRETE.AsFloat,2,True),''); //<vFrete> Valor Total do Frete
      tProd[x,015] := IFThen(not oEmpty(NFE_001NFE_VSEG.AsFloat  ),oTextToValor(NFE_001NFE_VSEG.AsFloat  ,2,True),''); //<vSeg> Valor Total do Seguro
      tProd[x,016] := IFThen(not oEmpty(NFE_001NFE_VDESC.AsFloat ),oTextToValor(NFE_001NFE_VDESC.AsFloat ,2,True),''); //<vDesc> Valor do Desconto
      tProd[x,086] := IFThen(not oEmpty(NFE_001NFE_VOUTRO.AsFloat),oTextToValor(NFE_001NFE_VOUTRO.AsFloat,2,True),''); //<voutro> Outras despesas acessórias

      { Tag Grupo do ISSQN
        Se ISSQN for informado os grupos ICMS, IPI e II não serão informados e vice-versa (NF-e v2.0) }
      tProd[x,039] := ''; //ISSQN <vBC> Valor da Base de Cálculo ISSQN
      tProd[x,040] := ''; //ISSQN <vAliq> Valor da Aliquota ISSQN
      tProd[x,041] := ''; //ISSQN <vISSQN> Valor do ISSQN
      tProd[x,042] := ''; //ISSQN <cMunFG> Código do município de ocorrência do fato gerador do ISSQN
      tProd[x,043] := ''; //ISSQN <cListServ>  Item da Lista de Serviços
      tProd[x,070] := ''; //ISSQN <cSitTrib> Código da tributação do ISSQN: N – NORMAL; R – RETIDA; S –SUBSTITUTA; I – ISENTA. (v.2.0)

      //NF-e 3.10
      tprod[x,119] := ''; //ISSQN <vDeducao> Valor dedução para redução da Base de Cálculo
      tprod[x,120] := ''; //ISSQN <vOutro> Valor outras retenções
      tprod[x,121] := ''; //ISSQN <vDescIncond> Valor desconto incondicionado
      tprod[x,122] := ''; //ISSQN <vDescCond> Valor desconto condicionado
      tprod[x,123] := ''; //ISSQN <vISSRet> Valor retenção ISS
      tprod[x,124] := ''; //ISSQN <indISS> Indicador da exigibilidade do ISS
      tprod[x,125] := ''; //ISSQN <cMun> Código do Município de incidência do imposto
      tprod[x,126] := ''; //ISSQN <cPais> Código do País onde o serviço foi prestado
      tprod[x,127] := ''; //ISSQN <nProcesso> Número do processo judicial ou administrativo de suspensão da exigibilidade
      tprod[x,128] := ''; //ISSQN <indIncentivo> Indicador de incentivo Fiscal
      tprod[x,136] := ''; //ISSQN <cServico> Código do serviço prestado dentro do município

      { Tag ICMS e CSOSN }
      tProd[x,017] := NFE_001NFE_ORIG.AsString;                      //<orig> Origem da mercadoria
      tProd[x,018] := NFE_001NFE_CST.AsString;                       //<CST> ou <CSOSN> Tributação do ICMS
      tProd[x,019] := NFE_001NFE_MODBC.AsString;                     //<modBC> Modalidade de determinação da BC do ICMS
      tProd[x,020] := oTextToValor(NFE_001NFE_VBC.AsFloat  ,2,True); //<vBC> Valor da BC do ICMS
      tProd[x,021] := oTextToValor(NFE_001NFE_PICMS.AsFloat,2,True); //<pICMS> Alíquota do imposto ICMS
      tProd[x,022] := oTextToValor(NFE_001NFE_VICMS.AsFloat,2,True); //<vICMS> Valor do ICMS

      { Tag ICMS 51 }
      tProd[x,137] := oTextToValor(NFE_001NFE_VICMSOP.AsFloat ,2,True); //<vICMSOp> Valor do ICMS da Operação
      tProd[x,138] := oTextToValor(NFE_001NFE_PDif.AsFloat    ,2,True); //<pDif> Percentual do diferimento
      tProd[x,139] := oTextToValor(NFE_001NFE_VICMSDIF.AsFloat,2,True); //<vICMSDif> Valor do ICMS diferido

      { Tag ICMSST para gerar o ICMSST todos os indices do vetor devem conter dados }
      tProd[x,140] := oTextToValor(NFE_001NFE_VBCSTRET.AsFloat,2,True);    //<vBCSTRet> Valor da BC do ICMS Retido Anteriormente
      tProd[x,141] := oTextToValor(NFE_001NFE_VICMSSTRET.AsFloat,2,True);  //<vICMSSTRet> Valor do ICMS Retido Anteriormente
      tProd[x,142] := oTextToValor(NFE_001NFE_VBCSTDEST.AsFloat,2,True);   //<vBCSTDest> Valor da BC do ICMS ST da UF destino
      tProd[x,143] := oTextToValor(NFE_001NFE_VICMSSTDEST.AsFloat,2,True); //<vICMSSTDest> Valor do ICMS ST da UF destino

      //ICMSUFDest
      // Para gerar o ICMSUFDest todos os indices do vetor devem conter dados
      if oTrimValor(EDvICMSUFDest.Text) > 0 then
      begin
        tProd[x,147] := oTextToValor(NFE_001NFE_vBCUFDest.AsFloat,2,True);      //<vBCUFDest> Valor da BC do ICMS na UF de destino
        tProd[x,148] := oTextToValor(NFE_001NFE_pFCPUFDest.AsFloat,2,True);     //<pFCPUFDest> Percentual do ICMS relativo ao Fundo de Combate à Pobreza (FCP) na UF de destino
        tProd[x,149] := oTextToValor(NFE_001NFE_pICMSUFDest.AsFloat,2,True);    //<pICMSUFDest> Alíquota interna da UF de destino
        tProd[x,150] := oTextToValor(NFE_001NFE_pICMSInter.AsFloat,2,True);     //<pICMSInter> Alíquota interestadual das UF envolvidas
        tProd[x,151] := oTextToValor(NFE_001NFE_pICMSInterPart.AsFloat,2,True); //<pICMSInterPart> Percentual provisório de partilha do ICMS Interestadual
        tprod[x,152] := oTextToValor(NFE_001NFE_vFCPUFDest.AsFloat,2,True);     //<vFCPUFDest> alor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) da UF de destino
        tProd[x,153] := oTextToValor(NFE_001NFE_vICMSUFDest.AsFloat,2,True);    //<vICMSUFDest> Valor do ICMS Interestadual para a UF de destino
        tProd[x,154] := oTextToValor(NFE_001NFE_vICMSUFRemet.AsFloat,2,True);   //<vICMSUFRemet> Valor do ICMS Interestadual para a UF do remetente
        tProd[x,176] := oTextToValor(NFE_001NFE_vBCFCPUFDest.AsFloat,2,True);   //<vBCFCPUFDest> Valor da BC FCP na UF de destino
      end;

    	{ NT 2016.002 v1.60 - Jun/2018}
    	tProd[x, 200] := ''; //pRedBCEfet
    	tProd[x, 201] := ''; //vBCEfet
    	tProd[x, 202] := ''; //pICMSEfet
    	tProd[x, 203] := ''; //vICMSEfet

      { NT 2018_005 v1.20 mar/2019}
    	tProd[x, 204] := ''; //vICMSSubstituto NT 2018_005 v1.20
    	tProd[x, 205] := ''; //<xMotivoIsencao> CMotivo da isenção da ANVISA   NT 2018_005 v1.20

      tProd[x, 206] := ''; //<cBarra> Código de barras diferente do padrão GTIN NT 2017_001 v1.40
      tProd[x, 207] := ''; //<cBarraTrib> Código de Barras da unidade tributável que seja diferente do padrão GTIN. NT 2017_001 v1.40
      tProd[x, 208] := ''; //<indSomaPISST> Indica se o valor do PISST compõe o valor total da NF-e. NT 2017_001 v1.40
      tProd[x, 209] := ''; //<indSomaCOFINSST> Indica se o valor da COFINS ST compõe o valor total da NFe. NT 2017_001 v1.40

      tProd[x, 210] := ''; //<pFCPDif> Percentual do diferimento do ICMS relativo ao FCP
      tProd[x, 211] := ''; //<vFCPDif> Valor do ICMS relativo ao FCP
      tProd[x, 212] := ''; //<vFCPEfet> Valor efetivo do ICMS relativo ao FCP

      tProd[x, 213] := ''; //<vICMSSTDeson> Valor do ICMS- ST desonerado
      tProd[x, 214] := ''; //<motDesICMSST> Motivo da desoneração do ICMS-ST

      tProd[x, 215] := ''; //pBCOp
      tProd[x, 216] := ''; //UFST

      { Combustíveis Ticket #515270 }

      tProd[x, 217] := '';         //pBio
      tProd[x, 218] := '';         //indImport
      tProd[x, 219] := '';         //cUFOrig
      tProd[x, 220] := '';         //pOrig

      tProd[x, 221] := '';         //adRemICMS
      tProd[x, 222] := '';         //adRemICMSReten
      tProd[x, 223] := '';         //adRemICMSRet

      tProd[x, 224] := '';         //vICMSMono
      tProd[x, 225] := '';         //vICMSMonoOp
      tProd[x, 226] := '';         //vICMSMonoDif
      tProd[x, 227] := '';         //vICMSMonoReten
      tProd[x, 228] := '';         //vICMSMonoRet

      tProd[x, 229] := '';         //qBCMono
      tProd[x, 230] := '';         //qBCMonoReten
      tProd[x, 231] := '';         //qBCMonoRet

      tProd[x, 232] := '';         //pRedAdRem
      tProd[x, 233] := '';         //pDif
      tProd[x, 234] := '';         //motRedAdRem
      tProd[x, 235] := '';         //indDeduzDeson

      if (EDISUF.Text <> EmptyStr) and (RECRomaneio.ZFM_CMUN) and (NFE_001NFE_MOTDESICMS.AsInteger = 7) then
      tProd[x, 235] := '1';

      {Tags NFE4.00}
      tProd[x,166] := ''; //<pFCP> Percentual do Fundo de Combate à Pobreza (FCP)
      tProd[x,167] := ''; //<vFCP> Valor do Fundo de Combate à Pobreza (FCP)
      tProd[x,168] := ''; //<vBCFCP> Valor da Base de Cálculo do FCP
      tProd[x,169] := ''; //<vBCFCPST> Valor da Base de Cálculo do FCP retido por Substituição Tributária
      tProd[x,170] := ''; //<pFCPST> Percentual do FCP retido por Substituição Tributária
      tProd[x,171] := ''; //<vFCPST> Valor do FCP retido por Substituição Tributária
      tProd[x,172] := ''; //<pST> Alíquota suportada pelo Consumidor Final
      tProd[x,173] := ''; //<vBCFCPSTRet> Valor da Base de Cálculo do FCP retido anteriormente
      tProd[x,174] := ''; //<pFCPSTRet> Percentual do FCP retido anteriormente por Substituição Tributária
      tProd[x,175] := ''; //<vFCPSTRet> Valor do FCP retido anteriormente por Substituição Tributária

      tProd[x,046] := '0';
      tProd[x,047] := '0';
      tProd[x,048] := '0';
      tProd[x,049] := '0';
      tProd[x,050] := '0';
      tProd[x,051] := '0';
      tProd[x,052] := '0';

      if NFE_001NFE_MODBCST.AsString <> EmptyStr then
      begin
        tProd[x,046] := NFE_001NFE_MODBCST.AsString;          //<modBCST> Modalidade de determinação da BC do ICMS ST
        tProd[x,047] := oTextToValor(NFE_001NFE_MVAST.AsFloat   ,4,True); //<pMVAST> Percentual da margem de valor Adicionado do ICMS ST
        tProd[x,048] := oTextToValor(NFE_001NFE_PREDBCST.AsFloat,4,True); //<pRedBCST> Percentual da Redução de BC do ICMS ST
        tProd[x,049] := oTextToValor(NFE_001NFE_VBCST.AsFloat   ,2,True); //<vBCST>    //icms60, icmspart, ICMSSN500: <vBCSTRet>
        tProd[x,050] := oTextToValor(NFE_001NFE_pICMSST.AsFloat ,2,True); //<pICMSST>
        tProd[x,051] := oTextToValor(NFE_001NFE_VICMSST.AsFloat ,2,True); //<vICMSST>  //icms60,ICMSSN500: <vICMSSTRet>
        tProd[x,052] := oTextToValor(NFE_001NFE_PREDBC.AsFloat  ,2,True); //<pRedBC>
      end;

      tProd[x,080] := IFThen(NFE_001NFE_PCREDSN.AsFloat     > 0,oTextToValor(NFE_001NFE_PCREDSN.AsFloat    ,2,True),''); //<pCredSN> Alíquota aplicável de cálculo do crédito (Simples Nacional).
      tProd[x,081] := IFThen(NFE_001NFE_VCREDICMSSN.AsFloat > 0,oTextToValor(NFE_001NFE_VCREDICMSSN.AsFloat,2,True),''); //<vCredICMSSN> Valor crédito do ICMS que pode ser aproveitado nos termos do art. 23 da LC 123 (Simples Nacional)

      if IEITEMPED.Text = '1' then
      begin
        tProd[x,83] := NFE_001NFE_XPED.AsString;    //<xPed>     Número do Pedido de Compra (0-1)
        tProd[x,84] := NFE_001NFE_ITEMPED.AsString; //<nItemPed> Item do Pedido de Compra (0-1)
      end;

      { Tag Desoneração }
      tProd[x,085] := NFE_001NFE_MOTDESICMS.AsString; //<motDesICMS> Informar o motivo da desoneração: 0 a 9, ver tabela no manual do contribuinte NF-e.
      tProd[x,096] := '';                             //<pBCOp> informar apenas para gerar o grupo ICMSPART - Grupo de partilha do ICMS entre a UF de origem e UF de destino ou a UF definida na legislação.
      tProd[x,097] := '';                             //<UFST> informar apenas para o grupo ICMSPAR

      { Tag IPI }
      tProd[x,023] := NFE_001NFE_CSTIPI.AsString;                                                                          //IPI <CST> Código da situação tributária do IPI
      tProd[x,078] := '';                                                                                                  //IPI <qUnid> Quantidade total na unidade padrão para tributação (somente para os produtos tributados por unidade)
      tProd[x,079] := '';                                                                                                  //IPI <vUnid> Valor por Unidade Tributável
      tProd[x,024] := IFThen(not oEmpty(NFE_001NFE_VBCIPI.AsFloat),oTextToValor(NFE_001NFE_VBCIPI.AsFloat,2,True),'0,00'); //IPI <vBC> Valor da BC do IPI
      tProd[x,025] := IFThen(not oEmpty(NFE_001NFE_PIPI.AsFloat)  ,oTextToValor(NFE_001NFE_PIPI.AsFloat  ,2,True),'0,00'); //IPI <pIPI> Alíquota do IPI
      tProd[x,026] := IFThen(not oEmpty(NFE_001NFE_VIPI.AsFloat)  ,oTextToValor(NFE_001NFE_VIPI.AsFloat  ,2,True),'0.00'); //IPI <vIPI> Valor do IPI
      tProd[x,087] := NFE_001NFE_CLENQ.AsString;                                                                           //IPI <clEnq> Classe de enquadramento do IPI para Cigarros e Bebidas
      tProd[x,088] := NFE_001NFE_CNPJPROD.AsString;                                                                        //IPI <CNPJProd> CNPJ do produtor da mercadoria, quando diferente do emitente. Somente para os casos de exportação direta ou indireta.
      tProd[x,089] := '';                                                                                                  //IPI <cSelo> Código do selo de controle IPI
      tProd[x,090] := '';                                                                                                  //IPI <qSelo> Quantidade de selo de controle
      tProd[x,091] := NFE_001NFE_CENQ.AsString;                                                                            //IPI <cEnq> Código de Enquadramento Legal do IPI

      { Tag PIS }
      tProd[x,031] := NFE_001NFE_CSTPIS.AsString;                                                                      //<CST> Código de Situação Tributária do PIS
      tProd[x,032] := IFThen(not oEmpty(NFE_001NFE_VBCPIS.AsFloat),oTextToValor(NFE_001NFE_VBCPIS.AsFloat,2,True),''); //<vBC> Valor da Base de Cálculo do PIS
      tProd[x,033] := IFThen(not oEmpty(NFE_001NFE_PPIS.AsFloat)  ,oTextToValor(NFE_001NFE_PPIS.AsFloat  ,2,True),''); //<pPIS> Alíquota do PIS (em percentual)
      tProd[x,034] := IFThen(not oEmpty(NFE_001NFE_VPIS.AsFloat)  ,oTextToValor(NFE_001NFE_VPIS.AsFloat  ,2,True),''); //<vPis> Valor do PIS
      tProd[x,045] := '';                                                                                              //<vAliqProd> Alíquota do PIS (em reais)

      { Tag PISST }
      tProd[x,054] := IFThen(not oEmpty(NFE_001NFE_VBCPISST.AsFloat),oTextToValor(NFE_001NFE_VBCPISST.AsFloat,2,True),''); //<vBC>  Valor da Base de Cálculo do PIS
      tProd[x,055] := IFThen(not oEmpty(NFE_001NFE_PPISST.AsFloat)  ,oTextToValor(NFE_001NFE_PPISST.AsFloat  ,2,True),''); //<pPIS> Alíquota do PIS (em percentual)
      tProd[x,056] := IFThen(not oEmpty(NFE_001NFE_VPISST.AsFloat)  ,oTextToValor(NFE_001NFE_VPISST.AsFloat  ,2,True),''); //<vPIS> Valor do PIS

      { Tag COFINS }
      tProd[x,035] := NFE_001NFE_CSTCOFINS.AsString;                                                                        //<CST>       Código de Situação Tributária do Cofins
      tProd[x,036] := IFThen(not oEmpty(NFE_001NFE_VBCOFINS.AsFloat ),oTextToValor(NFE_001NFE_VBCOFINS.AsFloat,2,True),''); //<vBC>       Valor da Base de Cálculo da COFINS
      tProd[x,037] := IFThen(not oEmpty(NFE_001NFE_PCOFINS.AsFloat ) ,oTextToValor(NFE_001NFE_PCOFINS.AsFloat ,2,True),''); //<pCOFINS>   Alíquota da COFINS (em percentual)
      tProd[x,038] := IFThen(not oEmpty(NFE_001NFE_VCOFINS.AsFloat ) ,oTextToValor(NFE_001NFE_VCOFINS.AsFloat ,2,True),''); //<vCOFINS>   Valor da COFINS
      tProd[x,044] := '';                                                                                                   //<vAliqProd> Alíquota da COFINS (em reais)

      { Tag COFINSST }
      tProd[x,057] := IFThen(not oEmpty(NFE_001NFE_VBCOFINSST.AsFloat),oTextToValor(NFE_001NFE_VBCOFINSST.AsFloat,2,True),''); //<vBC>     Valor da Base de Cálculo da COFINS
      tProd[x,058] := IFThen(not oEmpty(NFE_001NFE_PCOFINSST.AsFloat ),oTextToValor(NFE_001NFE_PCOFINSST.AsFloat ,2,True),''); //<pCOFINS> Alíquota da COFINS (em percentual)
      tProd[x,059] := IFThen(not oEmpty(NFE_001NFE_VCOFINSST.AsFloat ),oTextToValor(NFE_001NFE_VCOFINSST.AsFloat ,2,True),''); //<vCOFINS> Valor da COFINS

      { Tag da Declaração de Importação }
      tProd[x,027] := IFThen(LeftStr(NFE_001NFE_CFOP.AsString,1) = '3',oTextToValor(NFE_001NFE_VBCIMP.AsFloat  ,2,True),'');     //II   <vBC>         Valor BC do Imposto de Importação
      tProd[x,028] := IFThen(LeftStr(NFE_001NFE_CFOP.AsString,1) = '3',oTextToValor(NFE_001NFE_VDESPADU.AsFloat,2,True),'');     //II   <vDespAdu>    Valor despesas aduaneiras
      tProd[x,029] := IFThen(LeftStr(NFE_001NFE_CFOP.AsString,1) = '3',oTextToValor(NFE_001NFE_VIIIMP.AsFloat  ,2,True),'');     //II   <vII>         Valor Imposto de Importação
      tProd[x,030] := IFThen(LeftStr(NFE_001NFE_CFOP.AsString,1) = '3',oTextToValor(NFE_001NFE_VIOFIMP.AsFloat ,2,True),'');     //II   <vIOF>        Valor Imposto sobre Operações Financeiras
      tProd[x,060] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',NFE_001NFE_NDI.AsString+';');                                    //     <nDI>         Número do Documento de Importação (DI, DSI, DIRE, ...)
      tProd[x,061] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',FormatDateTime('yyyy-mm-dd',NFE_001NFE_DDI.AsDateTime)+';');     //     <dDI>         Data de RegEdit do documento - Formato: “AAAA-MM-DD”
      tProd[x,062] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',NFE_001NFE_XLOCDESEMB.AsString+';');                             //     <xLocDesemb>  Local de desembaraço
      tProd[x,063] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',NFE_001NFE_UFDESEMB.AsString+';');                               //     <UFDesemb>    Sigla da UF onde ocorreu o Desembaraço Aduaneiro
      tProd[x,064] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',FormatDateTime('yyyy-mm-dd',NFE_001NFE_DDESEMB.AsDateTime)+';'); //     <dDesemb>     Data do Desembaraço Aduaneiro
      tProd[x,065] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',NFE_001NFE_CEXPORTADOR.Value+';');                               //     <cExportador> Código do Exportador
      tProd[x,066] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',NFE_001NFE_NADICAO.AsString +';');                               //adi: <nAdicao>     Numero da Adição (1-1)
      tProd[x,067] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',NFE_001NFE_NSEQADIC.AsString+';');                               //adi: <nSeqAdic>    Numero sequencial do item dentro da Adição (1-1)
      tProd[x,068] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',NFE_001NFE_CFABRICANTE.AsString+';');                            //adi: <cFabricante> Código do fabricante estrangeiro (1-1)
      tProd[x,069] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',                                                                 //adi: <vDescDI>     Valor do desconto do item da DI – Adição (0-1)
                      IFThen(oEmpty(NFE_001NFE_VDESCDI.AsFloat),'',oTextToValor(NFE_001NFE_VDESCDI.AsFloat,2,True))+';');
      tProd[x,155] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',NFE_001NFE_NDRAW.AsString+';');                                  //adi: <nDraw>        Número do ato concessório de Drawback
      tProd[x,106] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',NFE_001NFE_TPVIATRANSP.AsString +';');                           //     <tpViaTransp>  NT 2013.005 1=Marítima; 2=Fluvial; 3=Lacustre; 4=Aérea; 5=Postal 6=Ferroviária; 7=Rodoviária;  8=Conduto / Rede Transmissão; 9=Meios Próprios; 10=Entrada / Saída ficta
      tProd[x,107] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',NFE_001NFE_TPINTERMEDIO.AsString+';');                           //     <tpIntermedio> 1=Importação por conta própria; 2=Importação por conta e ordem; 3=Importação por encomenda;
      tprod[x,133] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',oTextToValor(NFE_001NFE_VAFRMM.AsFloat,2,True)+';');             //     <vAFRMM>       Valor da AFRMM - Adicional ao Frete para Renovação da Marinha Mercante
      tprod[x,134] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',NFE_001NFE_CNPJTERCEIRO.AsString+';');                           //     <CNPJ>         CNPJ do adquirente ou do encomendante
      tprod[x,135] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',NFE_001NFE_UFTERCEIRO.AsString+';');                             //     <UFTerceiro>   Sigla da UF do adquirente ou do encomendante

      { Grupo do detalhamento de Medicamentos e de matérias primas farmacêuticas.
      Atenção! Separe por ";" para informar mais de 1 grupo de Medicamentos.
      Neste exemplo abaixo temos 3 grupos por produto. Deve-se inserir ; no final de cada RegEdit, inclusive no final do último, como no exemplo}
      tProd[x,071] := ''; //<nLote> Número do Lote do produto. Ex: [x,71]:='123' ou [x,71]:='123;124;125;'
      tProd[x,072] := ''; //<qLote> Quantidade de produto no Lote. Ex: [x,72]:='1.000' ou [x,72]:='1.000;1.200;1.300;'
      tProd[x,073] := ''; //<dFab> Data de fabricação/ Produção. Ex: [x,73]:='2018-06-01' ou [x,73]:='2018-06-01;2018-06-01;2018-06-01;'
      tProd[x,074] := ''; //<dVal> Data de validade. Ex: [x,74]:='2019-06-01' ou [x,74]:='2019-06-01;2019-06-01;2019-06-01;'
      tProd[x,075] := ''; //<vPMC> Preço máximo consumidor
      tProd[x,160] := ''; //<cProdANVISA> Código de Produto da ANVISA -> Novo campo da versão 4.0

      //NOTA: Caso este item nao possua dados de meedicamentos, informe: tProd[x,71]:='';
      tProd[x,159] := ''; //<cAgreg> Código de Agregação

      { Tag Grupo do detalhamento de Combustíveis. Informar apenas para operações com combustíveis líquidos e lubrificantes }
      //NOTA: Caso este item nao possua dados de combustíveis ou lubrificantes, informe: tProd[x,92]:='';
      tProd[x,092] := ''; //<cProdANP> Código de produto da ANP (ocorrência 1-1) --> Nota: se não for informada essa posição, não será gerado o grupo <comb>
      tProd[x,093] := ''; //<CODIF> Código de autorização / RegEdit do CODIF    (ocorrência 0-1)
      tProd[x,094] := ''; //<qTemp> Quantidade de combustível faturada à temperatura ambiente.   (ocorrência 0-1)
      tProd[x,095] := ''; //<UFCons> Sigla da UF de consumo  (ocorrência 1-1)
      tProd[x,132] := ''; //<pMixGN> Percentual de Gás Natural para o produto GLP (cProdANP=210203001)
      tProd[x,161] := ''; //<descANP> Descrição do Produto v4.00
      tProd[x,162] := ''; //<pGLP> Percentual do GLP derivado do petróleo v4.00
      tProd[x,163] := ''; //<pGNn> Percentual do Gás Natural Nacional v4.00
      tProd[x,164] := ''; //<pGNi> Percentual de Gás Natural Importado v4.00
      tProd[x,165] := ''; //<vPart> Valor de Partida v4.00

      { Tag <infAdProd - 2 posicoes p/ completar 500 caracteres }
      tProd[x,053] := '';//'REFERÊNCIA index primeiro '+IntToStr(x+1);
      tProd[x,077] := '';//oREPAcentos(RightStr(NFE_001NFE_INFADPROD.AsString,250)); //'REFERÊNCIA index segundo '+IntToStr(x+1);
      if (not oEmpty(NFE_001NFE_COMP.AsString)) or (not oEmpty(oREPMemoEsp(NFE_001NFE_INFADProd.AsString))) then
         if oEmpty(NFE_001NFE_COMP.AsString) then
         tProd[x,053] := LeftStr(oREPAcentos(oREPMemoEsp(NFE_001NFE_INFADPROD.AsString)),250) else
         begin
           tProd[x,053] := LeftStr(oREPAcentos(oREPMemoEsp(NFE_001NFE_COMP.AsString)),250);
           tProd[x,077] := LeftStr(oREPAcentos(oREPMemoEsp(NFE_001NFE_INFADPROD.AsString)),250);
         end;

      if not oEmpty(Trim(NFE_001NFE_INFADTRIB.AsString)) then
         if oEmpty(tProd[x,053]) then
            tProd[x,053] := Trim(NFE_001NFE_INFADTRIB.AsString)
         else
            tProd[x,077] := Trim(NFE_001NFE_INFADTRIB.AsString);

      tProd[x,076] := NFE_001NFE_INDTOT.AsString; //<indTot> Indica se valor do Item (vProd) entra no valor total da NF-e (vProd) - 0 = Valor do item (vProd) não compõe o valor total da NF-e; 1 = Valor do item (vProd) compõe o valor total da NF-e (vProd) (v2.0);
      { Grupo do detalhamento de Veículos novos }
      { Informar apenas quando se tratar de veículos novos
        ATENCAO! Informe sempre o delimitador ";" para este grupo }
      tProd[x,082] := ''; {'1'         +';'+ //<tpOp> Tipo da operação - 1=Venda concessionária; 2=Faturamento direto para consumidor final; 3=Venda direta para grandes consumidores (frotista, governo, ...); 0=Outros
                   '12345678901234567' +';'+ //<chassi> Chassi do veículo
                   '123'               +';'+ //<cCor> Cor - Código de cada montadora
                   'PRETO'             +';'+ //<xCor> Descrição da Cor
                   '220'               +';'+ //<pot> Potência Motor (CV)
                   '220'               +';'+ //<cilin> Cilindradas
                   '2'                 +';'+ //<pesoL> Peso Líquido
                   '2'                 +';'+ //<pesoB> Peso Bruto
                   '21311213'          +';'+ //<nSerie> Serial (série)
                   '02'                +';'+ //<tpComb> Tipo de combustível - Utilizar Tabela RENAVAM (v2.0); 01=Álcool, 02=Gasolina, 03=Diesel, (...); 16=Álcool/Gasolina; 17=Gasolina/Álcool/GNV; 18=Gasolina/Elétrico
                   '123'               +';'+ //<nMotor> Número de Motor
                   '500'               +';'+ //<CMT> Capacidade Máxima de Tração
                   '15'                +';'+ //<dist> Distância entre eixos
                   '2011'              +';'+ //<anoMod> Ano Modelo de Fabricação
                   '2010'              +';'+ //<anoFab> Ano de Fabricação
                   '1'                 +';'+ //<tpPint> Tipo de Pintura
                   '06'                +';'+ //<tpVeic> Tipo de Veículo
                   '1'                 +';'+ //<espVeic> Espécie de Veículo - 1=PASSAGEIRO; 2=CARGA; 3=MISTO; 4 = CORRIDA; 5 = TRAÇÃO; 6 = ESPECIAL;
                   'N'                 +';'+ //<VIN> Condição do VIN(chassi) - R=Remarcado; N=Normal
                   '1'                 +';'+ //<condVeic> Condição do Veículo - 1=Acabado; 2=Inacabado; 3=Semiacabado
                   '1234'              +';'+ //<cMod> Código Marca Modelo
                   '11'                +';'+ //<cCorDENATRAN> Código da Cor - 01=AMARELO, 02=AZUL, 03=BEGE, 04=BRANCA, 05=CINZA, 06=-DOURADA, 07=GRENÁ, 08=LARANJA, 09=MARROM, 10=PRATA, 11=PRETA, 12=ROSA, 13=ROXA, 14=VERDE, 15=VERMELHA, 16=FANTASIA
                   '5'                 +';'+ //<lota> Capacidade máxima de lotação
                   '0'                 +';'; //<tpRest> Restrição - 0=Não há; 1=Alienação Fiduciária; 2=Arrendamento Mercantil; 3=Reserva de Domínio; 4=Penhor de Veículos; 9=Outras. (v2.0)
                     }

      tProd[x,099] := IFThen(not oEmpty(NFE_001NFE_VTOTTRIB.AsFloat  ),oTextToValor(NFE_001NFE_VTOTTRIB.AsFloat  ),''); //<vtotTrib>    NT 2013 003 tag opcional ref. ao valor aproximado dos tributos do produto
      tProd[x,105] := NFE_001NFE_NFCI.AsString;                                                                         //<nFCI>  Número de controle da FCI - Ficha de Conteúdo de Importação
      tProd[x,108] := IFThen(not oEmpty(NFE_001NFE_VICMSDESON.AsFloat),oTextToValor(NFE_001NFE_VICMSDESON.AsFloat),''); //<vICMSDeson> (ocorrência 1-1) Nota:2013/005 Informar apenas nos motivos de desoneração documentados abaixo.

      //<detExport> - Tag destinada a Exportação
      tprod[x,110] := ''; //<nDraw> Número do ato concessório de Drawback - Tag destinada a Exportação
      tprod[x,111] := ''; //<chNFe> chNFe de Acesso da NF-e recebida para exportação - Tag destinada a Exportação
      tprod[x,112] := ''; //<nRE> Número do RegEdit de Exportação - Tag destinada a Exportação
      tprod[x,113] := ''; //<qExport> Quantidade do item realmente exportado - Tag destinada a Exportação
      tprod[x,114] := ''; //<nRECOPI> Número do RECOPI - Tag para operações com Papel Imune.

      //Grupo do detalhamento de Armas */
      tprod[x,115] := ''; //<tpArma> Indicador do tipo de arma de fogo - 0=Uso permitido; 1=Uso restrito;
      tprod[x,116] := ''; //<nSerie> Número de série da arma
      tprod[x,117] := ''; //<nCano> Número de série do cano
      tprod[x,118] := ''; //<desc> Descrição completa da arma, compreendendo: calibre, marca, capacidade, tipo de funcionamento, comprimento e demais elementos que permitam a sua perfeita identificação

      //Gruno para detalhamento de Devolução. <finNFe> igual a 4.
      tprod[x,129] := ''; //<pDevol> Percentual da mercadoria devolvida
      tprod[x,130] := ''; //<IPI> Informação do IPI devolvido
      tprod[x,131] := ''; //<vIPIDevol> Valor do IPI devolvido
      tProd[x,132] := ''; //<pMixGN> Percentual de Gás Natural para o produto GLP (cProdANP=210203001)

      inc(x);
      NFE_001.Next;
    end;

    { Tag de Informações do Transporte da NF-e }
    tTransp[00] := IEModFrete.Text; //<modFrete>

    if IEModFrete.Text <> '9' then
    begin
      tTransp[01] := oREPTxt(IFThen(Length(EDTCNPJ.Text) = 14,EDTCNPJ.Text,EDTCPF.Text)); //<CNPJ> ou <CPF>
      tTransp[02] := oREPAcentos(EDTxNome.Text);                                          //<xNome>
      tTransp[03] := IFThen(Length(EDTCNPJ.Text) = 14,PETIE.Text,'');                     //<IE>

      if ((not oEmpty(PETTxLgr.Text)) and  (not oEmpty(EDTxLgr.Text)) and (not oEmpty(EDTNRO.Text))) then
      tTransp[04] := Trim(LeftStr(IFThen(oEmpty(PETTxLgr.Text),'.',oREPAcentos(PETTxLgr.Text  ))+' '  +
                                  IFThen(oEmpty(EDTxLgr.Text ),'.',oREPAcentos(EDTxLgr.Text   ) +', ')+
                                  IFThen(oEmpty(EDTNRO.Text  ),'.',oREPAcentos(EDTNRO.Text    ))+' '  +
                                  IFThen(oEmpty(EDTxCpl.Text ),'.',oREPAcentos(EDTxCpl.Text   ))+' '  +
                                  IFThen(oEmpty(EDTCep.Text  ),'.','Cep: '+oREPTxt(EDTCep.Text)),60));

      tTransp[05] := oREPAcentos(EDTxMun.Text); //<xMun>
      tTransp[06] := PETUF.Text;                //<UF>
      tTransp[07] := PETPlaca.Text;             //<placa>
      tTransp[08] := PETUFPlaca.Text;           //<UFPlaca>

      { Tag do Grupo Volumes
        Atenção! Separe por ";" para informar mais de 1 grupo de volume.
        Neste exemplo abaixo temos 3 grupos de volumes. }

      { Soma número de volumes diversos }
      V1_CENVOL.Tag  := IFThen(V1_CENVOL.Value > 0,1,0) + IFThen(V2_CENVOL.Value > 0,1,0) + IFThen(V3_CENVOL.Value > 0,1,0) + IFThen(V4_CENVOL.Value > 0,1,0) +
                        IFThen(V5_CENVOL.Value > 0,1,0) + IFThen(V6_CENVOL.Value > 0,1,0) + IFThen(V7_CENVOL.Value > 0,1,0) + IFThen(V8_CENVOL.Value > 0,1,0);

      { Volume 1}
      tTransp[09] := V1_CEQVOL.Text;  //<qVol>
      tTransp[10] := V1_EDESP.Text;      //<esp>
      tTransp[11] := V1_EDMARCA.Text; //<marca>
      tTransp[12] := V1_CENVOL.Text;  //<nVol>
      tTransp[13] := oTextToValor(V1_CEPSLQ.Value,3,True); //<pesoL>
      tTransp[14] := oTextToValor(V1_CEPSBR.Value,3,True); //<pesoB>

      { Volumes. 2 em diante }
      for x := 2 to V1_CENVOL.Tag do
      begin
        if tdxCurrencyEdit(FindComponent(Format('V%d_CENVOL',[x]))).Value > 0 then
        begin
          tTransp[09] := tTransp[09] + ';' + tdxCurrencyEdit(FindComponent(Format('V%d_CEQVOL',[x]))).Text; // + ';';
          tTransp[10] := tTransp[10] + ';' + tdxEdit(FindComponent(Format('V%d_EDESP' ,[x]))).Text; // + ';';

          if tdxEdit(FindComponent(Format('V%d_EDMarca',[x]))).Text <> EmptyStr Then
          tTransp[11] := tTransp[11] + ';' + tdxEdit(FindComponent(Format('V%d_EDMarca',[x]))).Text; // + ';';

          tTransp[12] := tTransp[12] + ';' + V1_CENVOL.Text;
          tTransp[13] := tTransp[13] + ';' + oTextToValor(tdxCurrencyEdit(FindComponent(Format('V%d_CEPSLQ',[x]))).Value,3,True); // + ';';
          tTransp[14] := tTransp[14] + ';' + oTextToValor(tdxCurrencyEdit(FindComponent(Format('V%d_CEPSBR',[x]))).Value,3,True); // + ';';
        end;
      end;

      { Finaliza Volumes }
      if Pos(';',tTransp[09]) > 0 then
      begin
        tTransp[09] := tTransp[09] + ';';
        tTransp[10] := tTransp[10] + ';';
        tTransp[11] := IFThen(tTransp[11] = EmptyStr,EmptyStr,tTransp[11] + ';');
        tTransp[12] := tTransp[12] + ';';
        tTransp[13] := tTransp[13] + ';';
        tTransp[14] := tTransp[14] + ';';
      end;

      { Retira Acentos e/ou caracteres inválidos }
      tTransp[09] := oREPAcentos(tTransp[09]);
      tTransp[10] := oREPAcentos(tTransp[10]);
      tTransp[11] := oREPAcentos(tTransp[11]);
      tTransp[12] := oREPAcentos(tTransp[12]);
      tTransp[13] := oREPAcentos(tTransp[13]);
      tTransp[14] := oREPAcentos(tTransp[14]);

      tTransp[15] := ''; //<RNTC>
      tTransp[16] := ''; //vServ
      tTransp[17] := ''; //vBCRet
      tTransp[18] := ''; //pICMSRet
      tTransp[19] := ''; //vICMSRet
      tTransp[20] := ''; //CFOP
      tTransp[21] := ''; //cMunFG
      tTransp[25] := ''; //<Vagao>
      tTransp[26] := ''; //<Balsa>
      tTransp[27] := ''; //<nLacre>
    end;

    { Tag cobrança }
    if cbdupl.Text = 'SIM' then
    try
      tCobr[00] := CECDNF.Text;                      //fat <nFat>
      tCobr[01] := oTextToValor(EDVDup.Text,2,True); //fat <vOrig>
      tCobr[02] := oTextToValor(EDVDup.Text,2,True); //fat <vLiq>

      x := 0;
      DUP_001.DisableControls;
      DUP_001.First;
      while not DUP_001.Eof do
      begin
        inc(x);
        tCobr[03] := tCobr[03] + oStrZero(x,3)+';';                                           //dup <nDup>
        tCobr[04] := tCobr[04] + FormatDateTime('yyyy-mm-dd',DUP_001NFE_DVEN.AsDateTime)+';'; //dup <dVenc>
        tCobr[05] := tCobr[05] + oTextToValor(DUP_001NFE_VDUP.AsFloat,2,True)+';';            //dup <vDup>
        DUP_001.Next;
      end;

      //Posições 6,7 e 8 para atender a parcelas grandes, maiores que 24. Sol.: 1071 - Em: 11/11/2014
      //Só preencher caso as posições 3,4 e 5 não sejam suficientes.
      //Atentar para, se tiverem 24 nDups (na posição tCobr[3]) terão que ter 24 datas e 24 valores, para então preencher as posições abaixo.
      //Lembrar de finalizar cada posição [6], [7] e [8] com um ponto e vírgula (;).
      tCobr[06] := ''; //dup <nDup>
      tCobr[07] := ''; //dup <dVenc>
      tCobr[08] := ''; //dup <vDup>
      tCobr[09] := ''; //dup <vDup>
      tCobr[10] := '0.00'; //<vDesc>
    finally
      DUP_001.EnableControls;
    end;

    {Grupo de Informações de Pagamento}
    {*01=Dinheiro
     *02=Cheque
     *03=Cartão de Crédito
     *04=Cartão de Débito
     *05=Crédito Loja
     *10=Vale Alimentação
     *11=Vale Refeição
     *12=Vale Presente
     *13=Vale Combustível
     *15=Boleto Bancário
     *16=Depósito Bancário
     *17=Pagamento Instantâneo (PIX)
     *18=Transferência bancária, Carteira Digital
     *19=Programa de fidelidade, Cashback, Crédito Virtual
     *90=Sem pagamento
     *99=Outros *}

    tPag[00] := IETPAG.Text+';'; //<tPag> Forma de Pagamento
    tPag[01] := IFThen(IETPAG.Text   = '90','0.00;',oTextToValor(IFThen(cbdupl.Text = 'SIM',EDVDup.Text,EDVNF.Text),2,True)+';'); //<vPag> Valor do Pagamento

    if IETPAG.Text = '90' then
    tPag[07] := '' else
    tPag[07] := IEINDPAG.Text + ';'; //<indPag> Indicador de pgto 0|1

    tPag[02] := ''; // '01;';            //<tpIntegra> Tipo de Integração do processo de pagamento com o sistema de automação da empresa
    tPag[03] := ''; // '9999999999999;'; //<CNPJ> CNPJ da Credenciadora do Cartão
    tPag[04] := ''; // 'visa;';          //<tBand> Bandeira da Operadora do Cartão
    tPag[05] := ''; // '1234;';          //<cAut> Numero de Autorização da Operação

    {* 1=Pagamento integrado com o sistema de automação da empresa (Ex.: equipamento TEF, Comércio Eletrônico);
     * 2=Pagamento não integrado com o sistema de automação da empresa (Ex.: equipamento POS); }

    if (IEINDPAG.Text <> EmptyStr) then
    if (IETPAG.Text = '03') or
       (IETPAG.Text = '04') or
       (IETPAG.Text = '10') or
       (IETPAG.Text = '11') or
       (IETPAG.Text = '12') or
       (IETPAG.Text = '13') or
       (IETPAG.Text = '15') or
       (IETPAG.Text = '17') or
       (IETPAG.Text = '18') then
    begin
      tPag[02] := '2;'; // '01;';            //<tpIntegra> Tipo de Integração do processo de pagamento com o sistema de automação da empresa
      tPag[03] := '';   // '9999999999999;'; //<CNPJ> CNPJ da Credenciadora do Cartão
      tPag[04] := '';   // 'visa;';          //<tBand> Bandeira da Operadora do Cartão
      tPag[05] := '';   // '1234;';          //<cAut> Numero de Autorização da Operação
    end;

    tPag[06] := ''; //'0.00';           //<vTroco> Valor do Troco
    tPag[08] := IFThen(IETPAG.Text = '99',oREPAcentos(IETPAG.Descriptions[IETPAG.Values.IndexOf(IETPAG.Text)])+';',''); //<xPag> 'descrição do meio de pagamento' (xPag) - NT 2020.006 v1.20
    tPag[09] := ''; //<dPag> Data do Pagamento
    tPag[10] := ''; //<CNPJPag> CNPJ transacional do pagamento
    tPag[11] := ''; //<UFPag> UF do CNPJ do estabelecimento
    tPag[12] := ''; //<CNPJReceb> CNPJ do beneficiário do pagamento
    tPag[13] := ''; //<idTermPag> Identificador do terminal de pagamento

    { Tag de grupo de Valores Totais da NFe }
    tTotal[00] := oTextToValor(edvbc.Text  ,2,True); //<vBC>
    tTotal[01] := oTextToValor(edvicms.Text,2,True); //<vICMS>

    if CEVCREDICMSSN.Value > 0 then
    begin
      tTotal[00] := oTextToValor(CEVBCCREDICMSSN.Value,2,True); //<vBC>
      tTotal[01] := oTextToValor(CEVCREDICMSSN.Value  ,2,True); //<vICMS>
    end;

    tTotal[02] := oTextToValor(edvbcst.Text  ,2,True); //<vBCST>
    tTotal[03] := oTextToValor(edvst.Text    ,2,True); //<vST>
    tTotal[04] := oTextToValor(edvprod.Text  ,2,True); //<vProd>
    tTotal[05] := oTextToValor(CEVFRT.Value  ,2,True); //<vFrete>
    tTotal[06] := oTextToValor(CEVSEG.Value  ,2,True); //<vSeg>
    tTotal[07] := oTextToValor(CEVDSC.Value  ,2,True); //<vDesc>
    tTotal[08] := oTextToValor(edvII.Text    ,2,True); //<vII>
    tTotal[09] := oTextToValor(edvipi.Text   ,2,True); //<vIPI>
    tTotal[10] := oTextToValor(edvpis.Text   ,2,True); //<vPIS>
    tTotal[11] := oTextToValor(edvcofins.Text,2,True); //<vCOFINS>
    tTotal[12] := oTextToValor(edvoutro.Text ,2,True); //<vOutro>
    tTotal[13] := oTextToValor(edvnf.Text    ,2,True); //<vNF>

    tTotal[14] := ''; //ISSQNtot <vServ>
    tTotal[15] := ''; //ISSQNtot <vBC>
    tTotal[16] := ''; //ISSQNtot <vISS>
    tTotal[17] := ''; //ISSQNtot <vPIS>
    tTotal[18] := ''; //ISSQNtot <vCOFINS>
    tTotal[19] := ''; //retTrib  <vRetPIS>
    tTotal[20] := ''; //retTrib  <vRetCOFINS>
    tTotal[21] := ''; //retTrib  <vRetCSLL>
    tTotal[22] := ''; //retTrib  <vBCIRRF>
    tTotal[23] := ''; //retTrib  <vIRRF>
    tTotal[24] := ''; //retTrib  <vBCRetPrev>
    tTotal[25] := ''; //retTrib  <vRetPrev>

    tTotal[26] := '0.00'; // <vTotTrib>
    tTotal[27] := edvicmsdeson.Text; //ICMSTot  <vICMSDeson>
    tTotal[28] := FormatDateTime('yyyy-mm-dd',DEdhEmi.Date); //ISSQNtot <dCompet>

    tTotal[29] := ''; //ISSQNtot <vDeducao>
    tTotal[30] := ''; //ISSQNtot <vOutro>
    tTotal[31] := ''; //ISSQNtot <vDescIncond>
    tTotal[32] := ''; //ISSQNtot <vDescCond>
    tTotal[33] := ''; //ISSQNtot <vISSRet>
    tTotal[34] := ''; //ISSQNtot <cRegTrib>
    tTotal[35] := ''; //ICMSTot <vICMSUFDest>

    if oTrimValor(EDvICMSUFDest.Text) > 0 then
    tTotal[35] := oTextToValor(EDvICMSUFDest.Text,2,True);

    tTotal[36] := '0.00'; //ICMSTot <vICMSUFRemet>
    tTotal[37] := oTextToValor(edvFCPUFDest.Text,2,True);  //ICMSTot <vFCPUFDest>
    tTotal[38] := '0.00'; //ICMSTot <vFCP> Valor Total do FCP (Fundo de Combate à Pobreza)
    tTotal[39] := '0.00'; //ICMSTot <vFCPST> Valor Total do FCP (Fundo de Combate à Pobreza) retido por substituição tributária
    tTotal[40] := '0.00'; //ICMSTot <vFCPSTRet> Valor Total do FCP retido anteriormente por Substituição Tributária
    tTotal[41] := '0.00'; //ICMSTot <vIPIDevol> Valor Total do IPI devolvido

    { <ICMSTot> Tributacao ICMS monofásico. Ticket #515270 }
    tTotal[42] := ''; //qBCMono
    tTotal[43] := ''; //vICMSMono
    tTotal[44] := ''; //qBCMonoReten
    tTotal[45] := ''; //vICMSMonoReten
    tTotal[46] := ''; //qBCMonoRet
    tTotal[47] := ''; //vICMSMonoRet

    { Tag de informações adicionais da NFe }
    ATUALIZA_MENSAGENS;

    if (Pos(V1_EDMARCA.Text,EDINFADNF.Text) = 0) and (V1_EDMARCA.Text <> EmptyStr) then
    begin
      AINFADCAD.Add('** CONTAINER No ..: ' + V1_EDMARCA.Text + '  ' + V1_CENVOL.Text);
      AINFADCAD.Add('|');
    end;

    if AINFADCAD.Count > 0 then
    begin
      for x := 0 to AINFADCAD.Count - 1 do
      //if Trim(AINFADCAD.Strings[x]) <> '|' then
      tInfAdic[x]             := Trim(AINFADCAD.Strings[x]);
      tInfAdic[AINFADCAD.Count-1] := LeftStr(tInfAdic[AINFADCAD.Count-1],Length(tInfAdic[AINFADCAD.Count-1])-1);
    end;

    if EDCDPD.Text <> EmptyStr then
       if CECDRO.Value > 0 then
       begin
         tInfAdic[21] := 'Nosso Pedido;Vendedor;Representante';
         tInfAdic[22] :=  oREPAcentos('No ' + EDCDPD.Text) + ';' + oREPAcentos(RECRomaneio.DECV) + ';' + oREPAcentos(RECRomaneio.DECR);
       end else
       begin
         tInfAdic[21] := 'Pedido';
         tInfAdic[22] :=  oREPAcentos('No ' + EDCDPD.Text);
       end;

    if ((RECRomaneio.IDCV <> 0) and (StrToInt(RECRomaneio.IDCV) <> RECUsuarios.Id)) then
    begin
      tInfAdic[21] := oREPAcentos(tInfAdic[21] + IFThen(not oEmpty(tInfAdic[21]),';','') + 'Operador');
      tInfAdic[22] := oREPAcentos(tInfAdic[22] + IFThen(not oEmpty(tInfAdic[22]),';','') + RECUsuarios.Login);
    end;

    tInfAdic[23] := ''; //ProcRef <nProc>
    tInfAdic[24] := ''; //ProcRef <indProc>

    SBRodape.Panels[3].Text := Trim(RightStr(GeraNFe(tIde,tEmit,tDest,tProd,tTotal,tTransp,tCobr,tPag,tInfAdic,autXML,True),44));
    SBRodape.Refresh;
    
    if Length(SBRodape.Panels[3].Text) = 44 then { Chave NFe }
    begin
      SBRodape.Panels[1].Text := 'Arquivo XML gerado com sucesso';
      SBRodape.Refresh;
      VALIDAR;
    end else
    begin
      SBRodape.Panels[1].Text := 'Falha na geração do arquivo XML';
      SBRodape.Refresh;
      Abort;
    end;
  finally
    Screen.cursor := crDefault;

    NFE_001.First;
    NFE_001.EnableControls;

    DUP_001.First;
    DUP_001.EnableControls;

    CLI_001.First;
    CLI_001.EnableControls;
  end;
end;

procedure Tfrmven_nfe.ACTValidaXMLExecute(Sender: TObject);
begin
  { CHECK }
  ACTCheckConstraints.Execute;
  ACTCheckErrors.Execute;
  ACTCheckNum.Execute;

  try
    Screen.Cursor := crAppStart;

    SBRodape.Panels[1].Text := 'Aguarde, assinando arquivo XML ...';
    SBRodape.Panels[2].Text := EmptyStr;
    SBRodape.Panels[4].Text := EmptyStr; { Protocolo }
    SBRodape.Panels[5].Text := EmptyStr; { CSTAT     }
    SBRodape.Refresh;

    if not FileExists(PChar('C:\Sheild\NotaFiscal\NFe\arquivos\assinado\NFe' + SBRodape.Panels[3].Text + '-assinado.xml')) then
    begin
      SBRodape.Panels[1].Text := 'Falha na assinatura da nota fiscal';
      SBRodape.Panels[2].Text := 'Arquivo XML não encontrado em ..\assinado';
      SBRodape.Refresh;

      Editar;
    end;

    if ValidarArquivoXML(PChar('C:\Sheild\NotaFiscal\NFe\arquivos\assinado\NFe' + SBRodape.Panels[3].Text + '-assinado.xml'),'nfe_v4.00.xsd',True) = 'OK' then
    begin
      SBRodape.Panels[1].Text := 'Validação efetuada com sucesso';
      SBRodape.Panels[2].Text := 'Nenhum erro identificado';
      SBRodape.Refresh;

      ACTValidaXML.Enabled := False;
      ACTEnviaXML.Enabled  := True;
    end else
    begin
      SBRodape.Panels[1].Text := 'Falha na validação';
      SBRodape.Panels[2].Text := 'Problemas na validação da assinatura do arquivo XML. Verifique os erros encontrados';
      SBRodape.Refresh;

      Editar;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure Tfrmven_nfe.ACTGeraLoteExecute(Sender: TObject);
var
  x,y : Integer;
begin
  y := 0;

  try
    Screen.Cursor := crAppStart;

    SBRodape.Panels[1].Text := 'Aguarde, gerando lote para envio para o sefaz ...';
    SBRodape.Panels[2].Text := EmptyStr;
    SBRodape.Panels[4].Text := EmptyStr; { Protocolo }
    SBRodape.Panels[5].Text := EmptyStr; { CSTAT     }
    SBRodape.Refresh;

    repeat
      inc(y);
      x := GerarLote(Trunc(CECDNF.Value),'',false);

      if x = 1 then
      Break;

      SleepEx(2000,False);
    until y = 5;

    if x = 1 then
    begin
      SBRodape.Panels[1].Text := 'Lote gerado com sucesso ! Aguardando autorização do sefaz ...';
      SBRodape.Refresh;

      y := 0;
      repeat
        inc(y);
        SBRodape.Panels[1].Text :=  NFeAutorizacao(PChar('C:\Sheild\NotaFiscal\NFe\lotes\'+oStrZero(Trunc(CECDNF.Value),12) + '-env-lot.xml'));
        SBRodape.Refresh;

        if LeftStr(SBRodape.Panels[1].Text,3) = '103' then { Lote recebido com sucesso }
        begin
          SBRodape.Panels[4].Text := Trim(RightStr(SBRodape.Panels[1].Text,Length(SBRodape.Panels[1].Text) - Pos('#',SBRodape.Panels[1].Text)));
          SBRodape.Refresh;
          Break;
        end;

        SleepEx(2000,False);
      until y = 5;
    end else

    if x = -1 then
    SBRodape.Panels[1].Text := 'Falha na geração do lote' else

    if x = 0 then
    SBRodape.Panels[1].Text := 'Operação Cancelada' else

    if x = 2 then
    SBRodape.Panels[1].Text := 'Não existe(m) arquivo(s) assinado(s)';
  finally
    Screen.cursor := crDefault;

    if SBRodape.Panels[4].Text = EmptyStr then { PROTOCOLO }
    begin
      EDITAR;
      oException(Nil,'Falha na autorização do lote enviado !' + #13 +
                     'Tente novamente clicando no botão validar.');
    end;
  end;
end;

procedure Tfrmven_nfe.ACTConsultaXMLExecute(Sender: TObject);
var
  y: Word;
begin
  y := 0;

  try
    Screen.Cursor := crAppStart;

    SBRodape.Panels[1].Text := 'Aguardando resposta do sefaz ...';
    SBRodape.Panels[2].Text := 'Autorização em andamento';
    SBRodape.Panels[5].Text := '135'; { CSTAT REJEIÇÃO }
    SBRodape.Refresh;

    repeat
      inc(y);
      SBRodape.Panels[1].Text := NfeRetAutorizacao(SBRodape.Panels[4].Text);
      SBRodape.Refresh;

      if Pos('AUTORIZADO',UPPERCASE(SBRodape.Panels[1].Text)) > 0 then
      begin
        SBRodape.Panels[1].Text := 'Autorizado uso de NFe';
        SBRodape.Panels[2].Text := EmptyStr;
        SBRodape.Panels[5].Text := '100'; { CSTAT AUTORIZAÇÃO }
        SBRodape.Refresh;

        Break;
      end;

      if (Pos(LeftStr(SBRodape.Panels[1].Text,3),'100105110135') = 0) then
      begin
        if Pos('DEN',UPPERCASE(SBRodape.Panels[1].Text)) > 0 then
        begin
          SBRodape.Panels[2].Text := Trim(Copy(SBRodape.Panels[1].Text  ,Pos('REJ',UPPERCASE(SBRodape.Panels[1].Text)),Length(SBRodape.Panels[1].Text)));
          SBRodape.Panels[1].Text := 'Autorização Negada, nota fiscal denegada';
          SBRodape.Refresh;
        end else

        if Pos('REJ',UPPERCASE(SBRodape.Panels[1].Text)) > 0 then
        begin
          SBRodape.Panels[2].Text := Trim(Copy(SBRodape.Panels[1].Text  ,Pos('REJ',UPPERCASE(SBRodape.Panels[1].Text)),Length(SBRodape.Panels[1].Text)));
          SBRodape.Panels[1].Text := 'Autorização Negada';
          SBRodape.Refresh;
        end else

        if Pos('DUP',UPPERCASE(SBRodape.Panels[2].Text)) > 0 then
        begin
          SBRodape.Panels[2].Text := Trim(Copy(SBRodape.Panels[1].Text  ,Pos('DUP',UPPERCASE(SBRodape.Panels[1].Text)),Length(SBRodape.Panels[1].Text)));
          SBRodape.Panels[1].Text := 'Autorização Negada';
          SBRodape.Refresh;

          if Pos('CHNFE',UPPERCASE(SBRodape.Panels[2].Text)) > 0 then
          begin
            if Length(Copy(SBRodape.Panels[2].Text,Pos('CHNFE',UPPERCASE(SBRodape.Panels[2].Text)) + 6,44)) = 44 then
            if not uPSQNotaFiscal(CECDNF.Text,True) then
               Abort;
          end;
        end else
        begin
          SBRodape.Panels[2].Text := Trim(Copy(SBRodape.Panels[1].Text  ,Pos('DUP',UPPERCASE(SBRodape.Panels[1].Text)),Length(SBRodape.Panels[1].Text)));
          SBRodape.Panels[1].Text := 'Autorização Negada';
          SBRodape.Refresh;
        end;

        Abort;
      end;

      SBRodape.Panels[2].Text := 'Tentativa(s): ' + INTTOSTR(Y);
      SBRodape.Refresh;

      SleepEx(2000,False);
    until y = 5;
  finally
    Screen.cursor := crDefault;

    if SBRodape.Panels[2].Text <> EmptyStr then
    begin
      EDITAR;
      oException(Nil,SBRodape.Panels[2].Text + #13 +
                     SBRodape.Panels[1].Text);
    end;
 end;
end;

procedure Tfrmven_nfe.ACTEnviaXMLExecute(Sender: TObject);
begin
  EXIT;
  ACTGeraLote.Execute;
  ACTConsultaXML.Execute;

  if (Pos(LeftStr(SBRodape.Panels[1].Text,3),'100101150110135') > 0) then
  try
    FrmNFeConsultaSefaz := TFrmNFeConsultaSefaz.Create(Self,'Transmitindo NFe ...',SBRodape.Panels[3].Text);
    FrmNFeConsultaSefaz.EMConsulta.Lines.Add('');
    FrmNFeConsultaSefaz.EMConsulta.Lines.Add(SBRodape.Panels[2].Text);
    FrmNFeConsultaSefaz.ShowModal;
  finally
    if SBRodape.Panels[2].Text = EmptyStr then
    SBRodape.Panels[5].Text := FrmNFeConsultaSefaz.EDcStat.Text;
    SBRodape.Refresh;

    FreeAndNil(FrmNFeConsultaSefaz);
  end;





  if Pos(SBRodape.Panels[5].Text,'100110150') = 0 then
  begin
    Editar;
    oException(Nil,'Falha na autorização da emissão !'+#13+
                   'Tente Novamente.');
  end;

  try
    SBRodape.Panels[1].Text := 'Aguarde, registrando NFe ...';
    SBRodape.Refresh;

    SALVA_NF;

    SBRodape.Panels[1].Text := 'Pronto';
    SBRodape.Panels[2].Text := 'NFe registrada com sucesso';
    SBRodape.Refresh;
  except
    SBRodape.Panels[1].Text := 'Falha no registro da NFe';
    SBRodape.Refresh;
  end;

  try
    SBRodape.Panels[1].Text := 'Aguarde, gerando danfe ...';
    SBRodape.Refresh;

    ACTGeraDanfe.Execute;

    SBRodape.Panels[1].Text := 'Pronto';
    SBRodape.Panels[2].Text := 'Danfe gerada com sucesso';
    SBRodape.Refresh;
  except
    SBRodape.Panels[1].Text := 'Falha na geração da danfe';
    SBRodape.Refresh;
  end;

  ACTGeraNFeXML.Enabled := False;
  ACTValidaXML.Enabled  := False;
  ACTEnviaXML.Enabled   := False;

  BVis.Enabled := True;
  BPri.Enabled := True;
  BEnv.Enabled := True;
  BFav.Enabled := False;
  BImp.Enabled := False;

  ENVIA_EMAIL;
end;

procedure Tfrmven_nfe.ACTCheckConstraintsExecute(Sender: TObject);
begin
  try
    { Finalidade NFe }
    if IEFinNFe.Text <> '1' then
    begin
      ClickedOK := InputQuery('Entre com a chNFe de acesso da NFe Referenciada', 'chNFe', NewCHNFE);
      if (not ClickedOK) or (NewCHNFE = '') then
      oException(Nil,'chNFe (código de barras) nao informada !');

      if Length(trim(NewCHNFE)) < 44 then
      oException(Nil,'chNFe (Código de Barras) informada incorretamente !');
    end;

    { Natureza de Operações }
    if oEmpty(cbdnat.Text) then
       oException(cbcnat,'CFOP não Informado ou Incorreto !');

    { Romaneios }
    if CECDRO.Value > 0 then
       with SQLConsulta do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT ROM_STCO FROM '+oREPZero('ROM_CAB','_',RECParametros.EP_ID,3));
         SQL.Add('WHERE  ID = '''+CECDRO.Text+'''');
         ExecQuery;

         if (fields[0].AsString = 'BANCÁRIO') and (DUP_001.Fields[0].IsNull) then
         oException(cbdupl,'Nota Fiscal sem Duplicata(s) Registrada(s) !');
       end;

    { Prazos }
    if (CBDUPL.Text = 'SIM') and (CBDPAG.Text <> TAB_PAGPAG_DPAG.AsString) then
    begin
      TAB_PAG.Close;
      TAB_PAG.Params[0].Value := CBDUPL.Text;
      TAB_PAG.Open;
    end;

    if TAB_PAGPAG_PARC.AsInteger <> DUP_001.RecordCount then
       oException(CBDPAG,'Número de parcelas da nota fiscal difere do número de parcelas do prazo selecionado !');

    { Triangular }
    if (CER_CDNF.Value = 0) and (CER_IDCD.Value > 1) then
    begin
      PCEdicao.ActivePage := TSNFTriangular;

      { Destinatário da Remessa }
      oException(EDR_DECD,'Destinatário da remessa informado incorretamente !');
    end;

    if (Pos(CBCNAt.Text,'5123592461236924') > 0) and ((CER_CDNF.Value = 0) or (EDR_DECD.Text = EmptyStr) or (EDR_CNPJ.Text = EDCNPJ.Text))  then
    begin
      PCEdicao.ActivePage := TSNFTriangular;

      { Destinatário da Remessa }
       if EDR_DECD.Text = EmptyStr then
          oException(EDR_DECD,'Falha ao tentar validar nota fiscal !' +#13+#13+
                              'Para operações triangulares (CFOP: 5123/5924/6123/6924)' +#13+
                              'é obrigatório informar o destinatário da remessa.');

       if EDR_CNPJ.Text = EDCNPJ.Text then
          oException(EDR_DECD,'Falha ao tentar validar nota fiscal !' +#13+#13+
                              'Adquirente não pode ser igual ao destinatário da remessa.');

       { NF da Remessa }
       if CER_CDNF.Value = 0 then
          oException(CER_CDNF,'Falha ao tentar validar nota fiscal !' +#13+#13+
                              'Para operações triangulares (CFOP: 5123/5924/6123/6924)' +#13+
                              'é obrigatório informar o número da NF de remessa.');
    end;

    { Favorecido }
    if oEmpty(EDxNome.Text) then
    begin
      oException(EDDECD,'Favorecido não Selecionado !');
    end;

    if oEmpty(EDFone.Text) then
    begin
      PCEdicao.ActivePage := TSDestinatario;
      oException(EDFone,'Fone não Informado !');
    end;

    if length(TRIM(edcep.Text)) <> 8 then
    begin
      PCEdicao.ActivePage := TSDestinatario;
      oException(edcep,'Cep não Informado !');
    end;

    if oEmpty(EDNRO.Text) then
    begin
      PCEdicao.ActivePage := TSDestinatario;
      oException(EDNRO,'Número do logradouro do favorecido não informado !');
    end;

    if oEmpty(BECMun.Text) then
    begin
      PCEdicao.ActivePage := TSDestinatario;
      oException(BECMun,'Código Municipal não Informado !');
    end;

    if oEmpty(IExPais.Text) then
    begin
      PCEdicao.ActivePage := TSDestinatario;
      oException(IExPais,'País não Informado ou Incorreto !');
    end;

    if (IEModFrete.Text <> '9') and (oEmpty(EDTxNome.Text)) and ((IEFinNFe.Text <> '2') and (IEFinNFe.Text <> '3')) then
    begin
      PCEdicao.ActivePage := TSTransporte;
      oException(EDTxNome,'Transportadora não Cadastrada !');
    end;

    { Cep }
    if (EDCEP.Text <> EmptyStr) and (PEUF.Text <> 'EX') and (RECParametros.FIN_API) then
    begin
      with SQLConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_CEP_LOG');
        SQL.Add('WHERE  CEP = '''+EDCEP.Text+'''');
        ExecQuery;

        if Current.Vars[0].AsInteger = 0 then
        begin
          PCEdicao.ActivePage := TSDestinatario;

          if oYesNo(Self.Handle,'Cep informado pelo cliente não encontrado'+#13+
                                'na nossa base de dados do Correio !'  +#13+#13+
                                'Continuar ?') = mrNo then
          Abort;
        end;  
      end;
    end;
  except
    EDITAR;
    Abort;
  end;
end;

procedure Tfrmven_nfe.ACTCheckErrorsExecute(Sender: TObject);
begin
  { Duplicatas }
  DUP_001.DisableControls;
  if DUP_001.State in [dsEdit,dsInsert] then
  if DUP_001NFE_VDUP.AsFloat > 0 then
     DUP_001.Post else DUP_001.Cancel;
     DUP_001.First;

  if cbdupl.Text = EmptyStr then
  oException(CBDUPL,'Emissão de duplicatas não informadas ou inválidas !' + #13 +
                    'Use SIM ou NÃO para continuar.');

  if CECDRO.Value > 0 then
  begin
    if (Pos(LeftStr(RECRomaneio.STCO,3),'BANBOLDUP') > 0) and ((DUP_001ID.AsInteger = 0) or (CBDUPL.Text <> 'SIM')) then
        oException(Nil,'Boletos de cobranças não informados ou inválidos !'+#13+
                       'Emissão obrigatório para pedidos com cobrança bancária.');

    if (Pos(LeftStr(RECRomaneio.STCO,3),'BANBOLDUP') = 0) and ((DUP_001ID.AsInteger > 0)  or (CBDUPL.Text  = 'SIM')) then
        oException(Nil,'Boletos de cobranças inválidos !'+#13+
                       'Emissão não permitida para pedidos com cobrança em carteira.');
  end;

  { Clientes }
  CLI_001.DisableControls;
  if CLI_001.State in [dsEdit,dsInsert] then
  if CLI_001NFE_CDNF.AsInteger > 0 then
     CLI_001.Post else CLI_001.Cancel;
     CLI_001.First;

  if (oTextToValor(edvst.Text) > 0) and (RECParametros.NFE_CRT <> 1) then
  if (oYesNo(Handle,'Atenção !'          + #13 +
      'NFe com substituição tributária.' + #13 + #13 +
      'É necessário a emissão e envio da guia tributária.')) = mrNo then
  Abort;

  { Itens }
  NFE_001.DisableControls;
  if NFE_001.State in [dsEdit,dsInsert] then
  if NFE_001NFE_VPROD.AsFloat > 0 then
     NFE_001.Post else NFE_001.Cancel;
     NFE_001.First;

  if NFE_001Id.AsInteger = 0 then
  begin
    PCEdicao.ActivePage := TSProduto;
    oException(DBGEdicao,'Itens da nota fiscal não Informados !');
  end;

  try
    ACTCheckConstraints.Hint := EmptyStr;
    TAG := 1;

    while not NFE_001.Eof do
    begin
      if IEFinNFe.Text <> '2' then { Complementar }
      begin
        if NFE_001NFE_QCOM.AsFloat   = 0 then
        begin
          DBGEdicao.FocusedAbsoluteIndex := DBGEdicaoNFE_QCOM.Index;
          ACTCheckConstraints.Hint    := 'Quantidade não Informada !';
        end;

        if NFE_001NFE_VUNCOM.AsFloat = 0 then
        begin
          DBGEdicao.FocusedAbsoluteIndex := DBGEdicaoNFE_VUNCOM.Index;
          ACTCheckConstraints.Hint    := 'Valor Unitário não Informado !';
        end;

        if Length(NFE_001NFE_NCM.AsString) < 8 then
        begin
          DBGEdicao.FocusedAbsoluteIndex := DBGEdicaoNFE_NCM.Index;
          ACTCheckConstraints.Hint    := 'Obrigatório informar pelo menos 8 dígitos para o número de NCM !';
        end;

        if NFE_001NFE_NCM.AsString = '00000000' then
        begin
          DBGEdicao.FocusedAbsoluteIndex := DBGEdicaoNFE_NCM.Index;
          oException(DBGEdicao,'NCM não Informado ou Incorreto !'+#13+#13+
                            'Nº Item: ' + NFE_001NFE_ITEMPED.AsString + ' - ' + NFE_001NFE_CPROD.AsString + '.');
        end;

        if ACTCheckConstraints.Hint <> EmptyStr then
        begin
          PCEdicao.ActivePage := TSProduto;
          oException(DBGEdicao,ACTCheckConstraints.Hint + #13 +
                            'Nº Item: ' + NFE_001NFE_ITEMPED.AsString);
        end;
      end;

      if IEFinNFe.Text = '1' then { Normal }
      begin
        { NFCI }
        if (NFE_001NFE_ORIG.AsString = '5' ) and
           (NFE_001NFE_CST.AsString  = '00') and
           (NFE_001NFE_NFCI.AsString = EmptyStr) then
        begin
          DBGEdicao.FocusedAbsoluteIndex := DBGEdicaoNFE_VUNCOM.Index;
          PCEdicao.ActivePage := TSProduto;

          oErro(handle,'Número da ficha de importação (NFCI) não informada !');
          Break;
        end;

        if BCalc then
        if LeftStr(cbcnat.Text,1) = '3' then
        begin
          if (oEmpty(CEnAdicao.Text)) or (CEnAdicao.Text = '0') then
              oException(Nil,'Número da adição não informado !');

          NFE_001.Edit;
          NFE_001NFE_NDI.Value          := oRETNumero(EDnDI.Text);
          NFE_001NFE_DDI.Value          := IFThen(not oEmpty(DEdDI.Date),DEdDI.Date,varNull);
          NFE_001NFE_XLOCDESEMB.Value   := edxLocDesemb.Text;
          NFE_001NFE_UFDESEMB.Value     := PEUFDesemb.Text;
          NFE_001NFE_DDESEMB.Value      := IFThen(not oEmpty(DEdDesemb.Date),DEdDesemb.Date,varNull);
          NFE_001NFE_TPVIATRANSP.Value  := IETpViaTransp.Text;
          NFE_001NFE_NADICAO.Value      := StrToInt(CEnAdicao.Text);
          NFE_001NFE_NSEQADIC.Value     := StrToInt(CEnSeqAdic.Text);
          NFE_001NFE_CNPJTerceiro.Value := EDCNPJTerceiro.Text;
          NFE_001NFE_UFTerceiro.Value   := PEUFTerceiro.Text;
          NFE_001NFE_TPIntermedio.Value := IETPIntermedio.Text;
          NFE_001NFE_CEXPORTADOR.Value  := EDcExportador.Text;
          NFE_001NFE_CFABRICANTE.Value  := EDcFabricante.Text;
          NFE_001.Post;
        end else

        if LeftStr(cbcnat.Text,1) = '7' then
        while not NFE_001.Eof do
        begin
          NFE_001.Edit;
          NFE_001NFE_CNPJProd.Value     := EDCNPJProd.Text;
          NFE_001NFE_NDRAW.Value        := EDnDraw.Text;
          NFE_001NFE_NRE.Value          := EDnRE.Text;
          NFE_001NFE_XLOCDESPACHO.Value := EDxLocDespacho.Text;
          NFE_001NFE_UFSAIDAPAIS.Value  := EDUFSaidaPais.Text;
          NFE_001NFE_CHNFE.Value        := EDChNFE.Text;
          NFE_001NFE_QExport.Value      := CEQExport.Value;
          NFE_001.Post;
        end;
      end;

      NFE_001.Next;
    end;
  finally
    TAG := 0;

    if (BCALC) then
    if (LeftStr(cbcnat.Text,1) = '3') or (LeftStr(cbcnat.Text,1) = '7') then
    oRTransact(TSEdicao);
  end;    
end;

procedure Tfrmven_nfe.ACTCheckNumExecute(Sender: TObject);
begin
  AID  := 0;
  ADIF := 0;

  { Verifica furos na numeração }
  if not uPSQNotaFiscal
  (CECDNF.Text) then
  begin
    Editar;
    oException(Nil,'Novo Número Selecionado !'+#13+
                   'Nota Fiscal: '+IntToStr(bNFE_Emissao));
  end;

  { Verifica se o furo é muito grande }
     ADIF := CECDNF.Value - bNFE_Emissao;
  if ADIF < 0 then
     ADIF := ADIF * -1;
  if ADIF > 100 then
  begin
    if RECUsuarios.Id > 0 then
    begin
      Editar;
      oException(CECDNF,'Número informado é muito maior que o número da'#13+
                        'última nota fiscal emitida ('+IntToStr(bNFE_Emissao)+').'+#13+#13+
                        'Verifique !');
    end;
  end;
end;

procedure Tfrmven_nfe.CALCULA_NF;
begin
  if (IEFinNFe.Text <> '2') and (IEFinNFe.Text <> '3') then
  begin
    if BCalc then
    begin
      oRTransact(TSEdicao);

      if ((cbcnat.Text = '6102') and ((IEIndFinal.Text = '1') or (IEindIEDest.Text = '9')) and (PEUF.Text <> RECParametros.LOG_UF) and (PEUF.Text <> 'EX')) then
           PESQUISA_NATUREZA('6108','C');

      if (CEPDSC.Value > 0) or (LAPDSC.Tag = 1) then
          _Descontos;

      try
        Tag := 1;

        NFE_001.DisableControls;
        NFE_001.First;
        while not NFE_001.Eof do
        begin
          NFE_001.Edit;

          if NFE_001NFE_CFOP.AsString <> tab_natNAT_CNAT.AsString then
          with tab_nat do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT * FROM TAB_NAT');
            SQL.Add('WHERE  NAT_CNAT = '''+NFE_001NFE_CFOP.AsString+'''');
            Open;
          end;

          if NFE_001NFE_FLAG.AsString <> '1' then
          begin
            NFE_001NFE_VBC.Value            := 0;
            NFE_001NFE_VICMS.Value          := 0;
            NFE_001NFE_VICMSDESON.Value     := 0;
            NFE_001NFE_VBCIPI.Value         := 0;
            NFE_001NFE_VIPI.Value           := 0;
            NFE_001NFE_VBCPIS.Value         := 0;
            NFE_001NFE_VPIS.Value           := 0;
            NFE_001NFE_VBCOFINS.Value       := 0;
            NFE_001NFE_VCOFINS.Value        := 0;
            NFE_001NFE_VBCCREDICMSSN.Value  := 0;
            NFE_001NFE_PCREDSN.Value        := 0;
            NFE_001NFE_VCREDICMSSN.Value    := 0;
            NFE_001NFE_VICMSST.Value        := 0;
            NFE_001NFE_PICMSST.Value        := 0;
            NFE_001NFE_VBCST.Value          := 0;
            NFE_001NFE_MVAST.Value          := 0;
            NFE_001NFE_VI04.Value           := 0;
            NFE_001NFE_VI07.Value           := 0;
            NFE_001NFE_VI12.Value           := 0;
            NFE_001NFE_VI18.Value           := 0;
            NFE_001NFE_MODBCST.Value        := '';
            NFE_001NFE_vBCUFDest.Value      := 0;
            NFE_001NFE_vBCFCPUFDest.Value   := 0;
            NFE_001NFE_pFCPUFDest.Value     := 0;
            NFE_001NFE_pICMSUFDest.Value    := 0;
            NFE_001NFE_pICMSInter.Value     := 0;
            NFE_001NFE_pICMSInterPart.Value := 0;
            NFE_001NFE_vFCPUFDest.Value     := 0;
            NFE_001NFE_vICMSUFDest.Value    := 0;
            NFE_001NFE_vICMSUFRemet.Value   := 0;
            NFE_001NFE_INFADTRIB.Value      := '';



            if NFE_001NFE_INDTOT.AsString = '1' then
            begin
              IF POS(CBCNAT.Text,'5924692') = 0 then { TRIANGULAR }
              begin
                { BASE DE CÁLCULO }
                NFE_001NFE_VBC.Value      := (NFE_001NFE_VPROD.AsFloat - NFE_001NFE_VDESC.AsFloat) + (NFE_001NFE_VFRETE.AsFloat + NFE_001NFE_VSEG.AsFloat);
                NFE_001NFE_VBCIPI.Value   := IFThen(NFE_001NFE_PIPI.AsFloat > 0,NFE_001NFE_VBC.AsFloat,0);
                NFE_001NFE_VBCPIS.Value   := IFThen(Pos(NFE_001NFE_CST.AsString,'49201202203') > 0,0,NFE_001NFE_VBC.AsFloat);
                NFE_001NFE_VBCOFINS.Value := IFThen(Pos(NFE_001NFE_CST.AsString,'49201202203') > 0,0,NFE_001NFE_VBC.AsFloat);
              end else
              begin
                NFE_001NFE_PPIS.Value    := 0;
                NFE_001NFE_PCOFINS.Value := 0;
              end;

              { Somar IPI na base quando CONSUMIDOR FINAL }
              if IEindFinal.Text    = '1' then
              NFE_001NFE_VBC.Value := NFE_001NFE_VBC.AsFloat + NFE_001NFE_VIPI.AsFloat;

              { IMPOSTOS }
              NFE_001NFE_VIPI.Value    := RoundTO((NFE_001NFE_VBCIPI.AsFloat   * NFE_001NFE_PIPI.AsFloat   ) / 100,-2);
              NFE_001NFE_VPIS.Value    := RoundTO((NFE_001NFE_VBCPIS.AsFloat   * NFE_001NFE_PPIS.AsFloat   ) / 100,-2);
              NFE_001NFE_VCOFINS.Value := RoundTO((NFE_001NFE_VBCOFINS.AsFloat * NFE_001NFE_PCOFINS.AsFloat) / 100,-2);

              { IMPORTAÇÃO }
              if NFE_001NFE_VBCIMP.AsFloat > 0then
              begin
                NFE_001NFE_VBCIPI.Value   := IFThen(NFE_001NFE_PIPI.AsFloat > 0,NFE_001NFE_VBCIMP.AsFloat,0);
                NFE_001NFE_VBCPIS.Value   := NFE_001NFE_VBCIMP.AsFloat;
                NFE_001NFE_VBCOFINS.Value := NFE_001NFE_VBCIMP.AsFloat;
              end;

              if LeftStr(NFE_001NFE_CFOP.AsString,1) = '3' then
              begin
                NFE_001NFE_VBC.Value := RoundTO((NFE_001NFE_VBC.AsFloat + NFE_001NFE_VIPI.AsFloat + NFE_001NFE_VPIS.AsFloat + NFE_001NFE_VCOFINS.AsFloat) / 0.82,-2);
                NFE_001NFE_VNF.Value := NFE_001NFE_VBC.AsFloat;
              end else
              begin
                { SUFRAMA }
                if EDISUF.Text <> Emptystr then
                begin
                  if (NFE_001NFE_ORIG.AsInteger > 0) and (PEUF.Text <> RECParametros.LOG_UF) then
                      NFE_001NFE_PICMS.Value := 4;

                  if EDISUF.Text <> EmptyStr then
                  begin
                    NFE_001NFE_CFOP.Value   := IFThen((nfe_001NFE_ORIG.AsInteger > 0) or (not RECRomaneio.ZFM_CMUN),'6102','6110');

                    NFE_001NFE_CSTIPI.Value := '55';
                    NFE_001NFE_VBCIPI.Value := 0;
                    NFE_001NFE_PIPI.Value   := 0;
                    NFE_001NFE_VIPI.Value   := 0;

                    NFE_001NFE_CSTPIS.Value := '06';
                    NFE_001NFE_VBCPIS.Value := 0;
                    NFE_001NFE_PPIS.Value   := 0;
                    NFE_001NFE_VPIS.Value   := 0;

                    NFE_001NFE_CSTCOFINS.Value := '06';
                    NFE_001NFE_VBCOFINS.Value  := 0;
                    NFE_001NFE_PCOFINS.Value   := 0;
                    NFE_001NFE_VCOFINS.Value   := 0;

                    if (NFE_001NFE_ORIG.AsInteger > 0) and (RECRomaneio.ZFM_CENQ <> EmptyStr) then
                    NFE_001NFE_CENQ.Value := RECRomaneio.ZFM_CENQ;

                    if (NFE_001NFE_ORIG.AsInteger = 0) and (RECRomaneio.ZFM_CMUN) then
                    if NFE_001NFE_VBC.AsFloat * 0.07 > 0.01 then
                    begin
                      NFE_001NFE_VICMSDESON.Value := NFE_001NFE_VBC.AsFloat * 0.07;
                      NFE_001NFE_MOTDESICMS.Value := 7;
                    end;
                  end;
                end;

                { SUBSTITUIÇÃO TRIBUTÁRIA }
                if (Pos(cbcnat.Text,'51016101610859246924') = 0) and
                   (IEIndFinal.Text <> '1' ) and
                   (PEUF.Text       <> 'EX') and
                   (EDISUF.Text = EmptyStr ) then
                begin
                  with SQLConsulta do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add('SELECT CLF_VI04,CLF_VI07,CLF_VI12,CLF_VISP,CLF_PROT FROM TAB_CLF');
                    SQL.Add('WHERE  CLF_CCLF = ''' + NFE_001NFE_NCM.AsString + '''');
                    SQL.Add('AND    CLF_UF   = ''' + PEUF.Text               + '''');
                    ExecQuery;

                    NFE_001NFE_VI04.Value := Current.Vars[0].AsFloat;
                    NFE_001NFE_VI07.Value := Current.Vars[1].AsFloat;
                    NFE_001NFE_VI12.Value := Current.Vars[2].AsFloat;
                    NFE_001NFE_VI18.Value := Current.Vars[3].AsFloat;
                  end;

                  if (NFE_001NFE_PICMS.AsFloat = 4)  and (NFE_001NFE_VI04.AsFloat > 0) then
                  begin
                    NFE_001NFE_MVAST.Value := NFE_001NFE_VI04.AsFloat;
                    NFE_001NFE_VBCST.Value := NFE_001NFE_VPROD.AsFloat + NFE_001NFE_VIPI.AsFloat    + NFE_001NFE_VFRETE.AsFloat + NFE_001NFE_VSEG.AsFloat;
                    NFE_001NFE_VBCST.Value := NFE_001NFE_VBCST.AsFloat + ((NFE_001NFE_VBCST.AsFloat * NFE_001NFE_VI04.AsFloat)/100);
                  end else
                  if (NFE_001NFE_PICMS.AsFloat = 7) and (NFE_001NFE_VI07.AsFloat > 0) then
                  begin
                    NFE_001NFE_MVAST.Value := NFE_001NFE_VI07.AsFloat;
                    NFE_001NFE_VBCST.Value := NFE_001NFE_VPROD.AsFloat + NFE_001NFE_VIPI.AsFloat    + NFE_001NFE_VFRETE.AsFloat + NFE_001NFE_VSEG.AsFloat;
                    NFE_001NFE_VBCST.Value := NFE_001NFE_VBCST.AsFloat + ((NFE_001NFE_VBCST.AsFloat * NFE_001NFE_VI07.AsFloat)/100);
                  end else
                  if (NFE_001NFE_PICMS.AsFloat = 12) and (NFE_001NFE_VI12.AsFloat > 0) then
                  begin
                    NFE_001NFE_MVAST.Value := NFE_001NFE_VI12.AsFloat;
                    NFE_001NFE_VBCST.Value := NFE_001NFE_VPROD.AsFloat + NFE_001NFE_VIPI.AsFloat    + NFE_001NFE_VFRETE.AsFloat + NFE_001NFE_VSEG.AsFloat;
                    NFE_001NFE_VBCST.Value := NFE_001NFE_VBCST.AsFloat + ((NFE_001NFE_VBCST.AsFloat * NFE_001NFE_VI12.AsFloat)/100);
                  end else
                  if (NFE_001NFE_PICMS.AsFloat = 18) and (NFE_001NFE_VI18.AsFloat > 0) then
                  begin
                    NFE_001NFE_MVAST.Value := NFE_001NFE_VI18.AsFloat;
                    NFE_001NFE_VBCST.Value := NFE_001NFE_VPROD.AsFloat + NFE_001NFE_VIPI.AsFloat    + NFE_001NFE_VFRETE.AsFloat + NFE_001NFE_VSEG.AsFloat;
                    NFE_001NFE_VBCST.Value := NFE_001NFE_VBCST.AsFloat + ((NFE_001NFE_VBCST.AsFloat * NFE_001NFE_VI18.AsFloat)/100);
                  end else

                  if not SQLConsulta.Eof then
                  begin
                    NFE_001NFE_MVAST.Value := 0;
                    NFE_001NFE_VBCST.Value := NFE_001NFE_VBC.AsFloat;
                  end;
                end;

                if NFE_001NFE_VBCST.AsFloat > 0 then
                begin
                  NFE_001NFE_CFOP.Value    := IFThen(IETPNF.Text = '0','2411',
                                              IFThen(RECParametros.NFE_CRT = 1,
                                              IFThen(PEUF.Text   = RECParametros.LOG_UF,'5401','6401'),
                                              IFThen(PEUF.Text   = RECParametros.LOG_UF,'5403','6404')));

                  if (NFE_001NFE_CFOP.AsString = '6404') and (CBCNAT.Text = '6403') then
                      NFE_001NFE_CFOP.Value := CBCNAT.Text;

                  NFE_001NFE_pICMSST.Value := tab_alqALQ_ICMI.AsFloat + tab_alqALQ_FCP.AsFloat;

                  if NFE_001NFE_MVAST.AsFloat  = 0 then
                     NFE_001NFE_pICMSST.Value := NFE_001NFE_pICMSST.AsFloat - tab_alqALQ_ICMD.AsFloat;


                  NFE_001NFE_VICMSST.Value := ((NFE_001NFE_VBCST.AsFloat*NFE_001NFE_pICMSST.AsFloat)/100) - NFE_001NFE_VICMS.AsFloat;
                  NFE_001NFE_MODBCST.Value := '4';
                  NFE_001NFE_CST.Value     := IFThen(RECParametros.NFE_CRT = 1,'201','10');
                end;

                { IMPOSTO ICMS }
                NFE_001NFE_VBC.Value   := NFE_001NFE_VBC.AsFloat - ((NFE_001NFE_VBC.AsFloat * NFE_001NFE_PREDBC.AsFloat)/100); { Calculo Final VBC }
                NFE_001NFE_VICMS.Value := RoundTO((NFE_001NFE_VBC.AsFloat * NFE_001NFE_PICMS.AsFloat) / 100,-2); { Calulo VICMS }

                if NFE_001NFE_CST.AsString = '60' then
                begin
                  NFE_001NFE_VBC.Value    := 0;
                  NFE_001NFE_PREDBC.Value := 0;
                  NFE_001NFE_VICMS.Value  := 0;
                  NFE_001NFE_PICMS.Value  := 0;
                end else

                if (NFE_001NFE_CST.AsString = '40') or (NFE_001NFE_CST.AsString = '41') or (NFE_001NFE_CST.AsString = '50') then
                begin
                  NFE_001NFE_VBCIPI.Value   := 0;
                  NFE_001NFE_VIPI.Value     := 0;
                  NFE_001NFE_PIPI.Value     := 0;
                  NFE_001NFE_VBCPIS.Value   := 0;
                  NFE_001NFE_VPIS.Value     := 0;
                  NFE_001NFE_PPIS.Value     := 0;
                  NFE_001NFE_VBCOFINS.Value := 0;
                  NFE_001NFE_VCOFINS.Value  := 0;
                  NFE_001NFE_PCOFINS.Value  := 0;
                  NFE_001NFE_VBC.Value      := 0;
                  NFE_001NFE_PREDBC.Value   := 0;
                  NFE_001NFE_VICMS.Value    := 0;
                  NFE_001NFE_PICMS.Value    := 0;
                end else

                if NFE_001NFE_CST.AsString = '51' then
                begin
                  NFE_001NFE_VBC.Value      := 0;
                  NFE_001NFE_PREDBC.Value   := 0;
                  NFE_001NFE_VICMS.Value    := 0;
                  NFE_001NFE_PICMS.Value    := 0;
                  NFE_001NFE_PDIF.Value     := 100.00;
                  NFE_001NFE_VICMSOP.Value  := 0;
                  NFE_001NFE_VICMSDIF.Value := 0;

                  { Ricardo - Calculo para diferimento <> 100% - Criar/Colocar no grid o campo PDIF - Fazer o mesmo para Cadastro de Produtos
                    NFE_001NFE_PDIF.Value     := 33.33;
                    NFE_001NFE_VICMSOP.Value  := oTextToValor((NFE_001NFE_VBC.AsFloat *NFE_001NFE_PICMS.AsFloat)   / 100);
                    NFE_001NFE_VICMSDIF.Value := oTextToValor((NFE_001NFE_PDIF.AsFloat*NFE_001NFE_VICMSOP.AsFloat) / 100);
                    NFE_001NFE_VICMS.Value    := NFE_001NFE_VICMS.AsFloat - NFE_001NFE_VICMSDIF.AsFloat; }
                end;

                if (((IEIndFinal.Text = '1') or (IEindIEDest.Text = '9')) and (PEUF.Text <> RECParametros.LOG_UF) and (PEUF.Text <> 'EX') and (not RECRomaneio.ZFM_CMUN)) then
                begin
                  NFE_001NFE_vBCUFDest.Value      := NFE_001NFE_VBC.AsFloat;
                  NFE_001NFE_vBCFCPUFDest.Value   := IFThen(tab_alqALQ_FCP.AsFloat = 0,0,NFE_001NFE_VBC.AsFloat);
                  NFE_001NFE_pFCPUFDest.Value     := tab_alqALQ_FCP.AsFloat;
                  NFE_001NFE_pICMSUFDest.Value    := tab_alqALQ_ICMI.AsFloat + tab_alqALQ_FCP.AsFloat;
                  NFE_001NFE_pICMSInter.Value     := NFE_001NFE_PICMS.AsInteger;
                  NFE_001NFE_pICMSInterPart.Value := 100;
                  NFE_001NFE_vFCPUFDest.Value     := IFThen(tab_alqALQ_FCP.AsFloat = 0,0,(NFE_001NFE_vBCFCPUFDest.AsFloat*NFE_001NFE_pFCPUFDest.AsFloat)/100);
                  NFE_001NFE_vICMSUFDest.Value    := RoundTo((NFE_001NFE_vBCUFDest.AsFloat * (NFE_001NFE_pICMSUFDest.AsFloat - NFE_001NFE_pICMSInter.AsFloat)) / 100,-2);
                  NFE_001NFE_vICMSUFRemet.Value   := 0;
                  NFE_001NFE_INFADTRIB.Value      := Trim('% Partilha UF Dest.: '     +FormatFloat(',##,0.00',NFE_001NFE_pICMSInterPart.AsFloat)+' - '+
                                                          '% ICMS Inter. UF Dest.: '  +FormatFloat(',##,0.00',NFE_001NFE_pICMSUFDest.AsFloat)   +' - '+
                                                          'Vlr.ICMS Inter. UF Dest.: '+FormatFloat(',##,0.00',NFE_001NFE_vICMSUFDest.AsFloat)   +' - '+
                                                          '% ICMS Part. UF Remet.: '  +FormatFloat(',##,0.00',0.00)                             +' - '+
                                                          'Vlr.ICMS Part. UF Remet.: '+FormatFloat(',##,0.00',NFE_001NFE_vICMSUFRemet.AsFloat));
                end;

                if RECParametros.NFE_REDUCAO_PISCOFINS then
                   if ((IETPNF.Text = '1') or (Pos(cbcnat.Text,'1201120222012202') > 0)) and (NFE_001NFE_VBCPIS.AsFloat > 0) and (NFE_001NFE_VBCOFINS.AsFloat > 0) and (NFE_001NFE_VICMS.AsFloat > 0) then
                   begin
                     { REDUÇÃO PIS}
                     NFE_001NFE_VBCPIS.Value  := NFE_001NFE_VBCPIS.AsFloat - NFE_001NFE_VICMS.AsFloat;
                     NFE_001NFE_VPIS.Value    := RoundTO((NFE_001NFE_VBCPIS.AsFloat * NFE_001NFE_PPIS.AsFloat)    / 100,-2);

                     { REDUÇÃO COFINS }
                     NFE_001NFE_VBCOFINS.Value:= NFE_001NFE_VBCOFINS.AsFloat - NFE_001NFE_VICMS.AsFloat;
                     NFE_001NFE_VCOFINS.Value := RoundTO((NFE_001NFE_VBCOFINS.AsFloat * NFE_001NFE_PCOFINS.AsFloat) / 100,-2);
                   end;
              end;

              { Ricardo - Como a planilha do renato, já está embutido o valor do frete, tive q isolar o VNF para importações }
              if LeftStr(NFE_001NFE_CFOP.AsString,1) <> '3' then
                 NFE_001NFE_VNF.Value := (NFE_001NFE_VPROD.AsFloat  - NFE_001NFE_VDESC.AsFloat  - NFE_001NFE_VICMSDeson.AsFloat) +
                                         (NFE_001NFE_VIPI.AsFloat   + NFE_001NFE_VFRETE.AsFloat + NFE_001NFE_VSEG.AsFloat +
                                          NFE_001NFE_VOUTRO.AsFloat + NFE_001NFE_VICMSST.AsFloat);

              if RECParametros.NFE_CRT = 1 then
              begin
                NFE_001NFE_CSTIPI.Value    := '99';
                NFE_001NFE_VBCIPI.Value    := 0;
                NFE_001NFE_PIPI.Value      := 0;
                NFE_001NFE_VIPI.Value      := 0;
                NFE_001NFE_VBCPIS.Value    := 0;
                NFE_001NFE_PPIS.Value      := 0;
                NFE_001NFE_VPIS.Value      := 0;
                NFE_001NFE_VBCOFINS.Value  := 0;
                NFE_001NFE_PCOFINS.Value   := 0;
                NFE_001NFE_VCOFINS.Value   := 0;

                if Pos(NFE_001NFE_CST.AsString,'201202203') > 0 then
                begin
                  NFE_001NFE_PICMS.Value := 0;
                  NFE_001NFE_VICMS.Value := 0;
                  NFE_001NFE_VBC.Value   := 0;
                  NFE_001NFE_CSTPIS.Value    := '99';
                  NFE_001NFE_CSTCOFINS.Value := '99';
                end else
                begin
                  NFE_001NFE_CST.Value := tab_natNAT_CSTS.AsString;
                  NFE_001NFE_CSTPIS.Value    := '49';
                  NFE_001NFE_CSTCOFINS.Value := '49';

                  if (RECParametros.NFE_CREDITO_ICMS > 0) and (IECredICMS.Text = '1') then
                     if (LeftStr(NFE_001NFE_CFOP.AsString,4) = '5101') or (LeftStr(NFE_001NFE_CFOP.AsString,4) = '5102') or
                        (LeftStr(NFE_001NFE_CFOP.AsString,4) = '6101') or (LeftStr(NFE_001NFE_CFOP.AsString,4) = '6102') or
                        (LeftStr(NFE_001NFE_CFOP.AsString,4) = '5124') or (LeftStr(NFE_001NFE_CFOP.AsString,4) = '6124') or
                        (LeftStr(NFE_001NFE_CFOP.AsString,4) = '5125') or (LeftStr(NFE_001NFE_CFOP.AsString,4) = '5925') or
                        (LeftStr(NFE_001NFE_CFOP.AsString,4) = '6107') or (LeftStr(NFE_001NFE_CFOP.AsString,4) = '6108') then
                     begin
                       NFE_001NFE_CST.Value           := tab_natNAT_CSTA.AsString;
                       NFE_001NFE_VBCCREDICMSSN.Value := NFE_001NFE_VNF.AsFloat;
                       NFE_001NFE_PCREDSN.Value       := RECParametros.NFE_CREDITO_ICMS;
                       NFE_001NFE_VCREDICMSSN.Value   := RoundTO((NFE_001NFE_PCREDSN.AsFloat * NFE_001NFE_VNF.AsFloat) / 100,-2);
                     end;

                     if LeftStr(NFE_001NFE_CFOP.AsString,1) = '3' then
                                NFE_001NFE_CST.Value := '900';
                end;

                if NFE_001NFE_CST.Value = '900' then
                begin
                  NFE_001NFE_VBCCREDICMSSN.Value := 0;
                  NFE_001NFE_PCREDSN.Value       := 0;
                  NFE_001NFE_VCREDICMSSN.Value   := 0;
                end;
              end;
            end;
          end;

          NFE_001.Post;
          NFE_001.Next;
        end;
      finally
        NFE_001.First;
        NFE_001.EnableControls;

        Tag := 0;
      end;
    end;

    oRTransact(TSEdicao);
    with SQLSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(NFE_QCOM         ) AS QTDE         ,SUM(NFE_RCOM   ) AS QTRL    ,COUNT(*) AS ITEM,');
      SQL.Add('       SUM(NFE_PSBR         ) AS PSBR         ,SUM(NFE_PSLQ   ) AS PSLQ    ,');
      SQL.Add('       SUM(NFE_VPROD        ) AS VPROD        ,SUM(NFE_VDESC  ) AS VDSC    ,SUM(NFE_VBC        ) AS VBC        ,SUM(NFE_VICMS) AS VICMS,');
      SQL.Add('       SUM(NFE_VBCCREDICMSSN) AS VBCCREDICMSSN,AVG(NFE_PCREDSN) AS PPCREDSN,SUM(NFE_VCREDICMSSN) AS VCREDICMSSN,');
      SQL.Add('       SUM(NFE_VICMSDESON   ) AS VICMSDESON   ,');
      SQL.Add('       SUM(NFE_vICMSUFDest  ) AS VICMSUFDest  ,SUM(NFE_vFCPUFDest) AS VFCPUFDEST,');
      SQL.Add('       SUM(NFE_VBCST        ) AS VBCST        ,SUM(NFE_VICMSST   ) AS VICMSST   ,');
      SQL.Add('       SUM(NFE_VIPI         ) AS VIPI         ,SUM(NFE_VPIS      ) AS VPIS      ,');
      SQL.Add('       SUM(NFE_VCOFINS      ) AS VCOFINS      ,SUM(NFE_VIIIMP    ) AS VIIIMP    ,');
      SQL.Add('       SUM(NFE_VFRETE       ) AS VFRETE       ,SUM(NFE_VSEG      ) AS VSEG      ,');
      SQL.Add('       SUM(NFE_VOUTRO       ) AS VOUTRO       ,');
      SQL.Add('       SUM(NFE_VNF          ) AS VNF          ,');
      SQL.Add('       SUM(NFE_VTOTTRIB     ) AS VTOTTRIB      ');
      SQL.Add('FROM   NFE_ITE');
      ExecQuery;

      { Volume }
      EDTQCom.Text := FormatFloat('#,0.00',Current.ByName('QTDE').AsCurrency);
      EDTRCom.Text := FormatFloat('0'     ,Current.ByName('QTRL').AsInteger );
      EDTRCom.Tag  := Current.ByName('ITEM').AsInteger;

      if V1_CEQVOL.Tag = 0 then
         V1_CEQVOL.Value := IFThen(Current.ByName('QTRL').AsInteger <> Current.ByName('ITEM').AsInteger,
                                   Current.ByName('QTRL').AsInteger,   Current.ByName('ITEM').AsInteger);

      { Peso }
      if NFE_001NFE_PSBR.Tag = 0 then
      begin
        if V1_CEPSBR.Tag = 0 then V1_CEPSBR.Value := Current.ByName('PSBR').AsCurrency;
        if V1_CEPSLQ.Tag = 0 then V1_CEPSLQ.Value := Current.ByName('PSLQ').AsCurrency;
      end;

      edvprod.Text       := FormatFloat('#,0.00' ,Current.ByName('VPROD').AsCurrency);
      CEVDSC.Value       := Current.ByName('VDSC').AsCurrency;

      CEVFRT.Value       := Current.ByName('VFRETE').AsCurrency;
      CEVSEG.Value       := Current.ByName('VSEG'  ).AsCurrency;

      edvbc.Text         := FormatFloat('#,0.00',Current.ByName('VBC'  ).AsCurrency);
      edvicms.Text       := FormatFloat('#,0.00',Current.ByName('VICMS').AsCurrency);

      EDvICMSUFDest.Text := FormatFloat('#,0.00',Current.ByName('VICMSUFDest').AsCurrency);
      edvFCPUFDest.Text  := FormatFloat('#,0.00',Current.ByName('VFCPUFDest' ).AsCurrency);

      CEVBCCREDICMSSN.Value := Current.ByName('VBCCREDICMSSN').AsCurrency;
      CEVCREDICMSSN.Value   := Current.ByName('VCREDICMSSN'  ).AsCurrency;

      edvicmsdeson.Text  := FormatFloat('#,0.00',Current.ByName('VICMSDESON' ).AsCurrency);

      edvbcst.Text       := FormatFloat('#,0.00',Current.ByName('VBCST'  ).AsCurrency);
      edvst.Text         := FormatFloat('#,0.00',Current.ByName('VICMSST').AsCurrency);

      edvipi.Text        := FormatFloat('#,0.00',Current.ByName('VIPI'   ).AsCurrency);
      edvpis.Text        := FormatFloat('#,0.00',Current.ByName('VPIS'   ).AsCurrency);
      edvcofins.Text     := FormatFloat('#,0.00',Current.ByName('VCOFINS').AsCurrency);

      edvII.Text         := FormatFloat('#,0.00',Current.ByName('VIIIMP').AsCurrency);
      edvoutro.Text      := FormatFloat('#,0.00',Current.ByName('VOUTRO').AsCurrency);

      edvnf.Text         := FormatFloat('#,0.00',Current.ByName('VNF').AsCurrency);
      edvtottrib.Text    := FormatFloat('#,0.00',Current.ByName('VTOTTRIB').AsCurrency);


      CEVNF.Value := Current.ByName('VNF').AsCurrency;
      DUPLICATAS;
    end;
  end;
end;

procedure Tfrmven_nfe.SpeedItem1Click(Sender: TObject);
begin
  ACTGeraLote.Execute;
  ACTConsultaXML.Execute;

  SBRodape.Panels[1].Text := NFeConsulta(SBRodape.Panels[3].Text);
  SBRodape.Panels[4].Text := Trim(RightStr(SBRodape.Panels[1].Text,Length(SBRodape.Panels[1].Text) - Pos('#',SBRodape.Panels[1].Text)));
  SBRodape.Panels[5].Text := LeftStr(SBRodape.Panels[1].Text,3);

  SBRodape.Panels[1].Text := EmptyStr;
  SBRodape.Refresh;

  { CONSULTA SITUAÇÃO SEFAZ
    100,150 - Autorizada
    101     - Cancelada
    110     - Denegada
  }

  if (Pos(LeftStr(SBRodape.Panels[1].Text,3),'100110150') > 0) then
  begin
    try
      SBRodape.Panels[1].Text := 'Aguarde, registrando NFe ...';
      SBRodape.Refresh;

      SALVA_NF;

      SBRodape.Panels[1].Text := 'Pronto';
      SBRodape.Panels[2].Text := 'NFe registrada com sucesso';
      SBRodape.Refresh;
    except
      SBRodape.Panels[1].Text := 'Falha no registro da NFe';
      SBRodape.Refresh;

      Editar;
      Abort;
    end;

    try
      SBRodape.Panels[1].Text := 'Aguarde, gerando danfe ...';
      SBRodape.Refresh;

      ACTGeraDanfe.Execute;

      if (FileExists(NFE_XML)) and  (FileExists(NFE_PDF)) then
      ImprimeDanfe(NFE_XML,NFE_PDF,1,False);

      SBRodape.Panels[1].Text := 'Pronto';
      SBRodape.Panels[2].Text := 'Danfe gerada com sucesso';
      SBRodape.Refresh;
    except
      SBRodape.Panels[1].Text := 'Falha na geração da danfe';
      SBRodape.Refresh;

      Editar;
      Abort;
    end;
  end;

  if (Pos(LeftStr(SBRodape.Panels[1].Text,3),'100150') = 0) then
  try
    FrmNFeConsultaSefaz := TFrmNFeConsultaSefaz.Create(Self,'Transmitindo NFe ...',SBRodape.Panels[3].Text);
    FrmNFeConsultaSefaz.EMConsulta.Lines.Add('');
    FrmNFeConsultaSefaz.EMConsulta.Lines.Add(SBRodape.Panels[3].Text);
    FrmNFeConsultaSefaz.ShowModal;
  finally
    FreeAndNil(FrmNFeConsultaSefaz);
  end;

  ACTGeraNFeXML.Enabled := False;
  ACTValidaXML.Enabled  := False;
  ACTEnviaXML.Enabled   := False;

  BVis.Enabled := True;
  BPri.Enabled := True;
  BEnv.Enabled := True;
  BFav.Enabled := False;
  BImp.Enabled := False;

  ENVIA_EMAIL;
end;

procedure Tfrmven_nfe.ACTGeraDanfeExecute(Sender: TObject);
var
  i: word;
begin
  NFE_PDF := EmptyStr;
  NFE_XML := EmptyStr;

  if (Pos(CECDNF.Text,SBRodape.Panels[3].Text) = 0) or (Length(SBRodape.Panels[3].Text) < 44) then
  oException(Nil,'Código de Barras da Nota Fiscal não Informado !');

  try
    Screen.cursor := crAppStart;
    oRegister_UPD_SizeFont(EDINFADNF.Lines.Count);

    NFE_PDF := 'C:\Sheild\NotaFiscal\PDF\'+oStrZero(Trunc(CECDNF.Value),6)+'.pdf';
    NFE_XML := 'C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\'+oStrZero(RECParametros.SHE_DATA_ANO,4)+oStrZero(RECParametros.SHE_DATA_MES,2)+'\'+SBRodape.Panels[3].Text+'-procNFe.xml';

    if not FileExists(NFE_XML) then
    begin
      SBRodape.Panels[1].Text := EmptyStr;
      SBRodape.Refresh;

      i := 0;
      repeat
        SBRodape.Panels[1].Text := ArquivoDistribuicaoNFe(SBRodape.Panels[3].Text);
        SBRodape.Refresh;

        if FileExists(NFE_XML) then
        begin
          SBRodape.Panels[1].Text := NFE_XML;
          Break;
        end;

        SleepEx(2000,False);
        inc(i);
      until i = 5;
    end;

    if (FileExists(NFE_XML)) and (not FileExists(NFE_PDF)) then
    begin
      SBRodape.Panels[1].Text := EmptyStr;
      SBRodape.Refresh;

      i := 0;
      repeat
        ImprimeDanfe(NFE_XML,NFE_PDF,2,false);

        if FileExists(NFE_PDF) then
        begin
          SBRodape.Panels[1].Text := NFE_PDF;
          Break;
        end;

        SleepEx(2000,False);
        inc(i);
      until i = 5;
    end;
  finally
    Screen.cursor := crDefault;
    SBRodape.Refresh;
  end;
end;

procedure Tfrmven_nfe.DEdhSaiEntChange(Sender: TObject);
begin
  DecodeDate(DEdhEmi.Date, RECParametros.SHE_DATA_ANO, RECParametros.SHE_DATA_MES, RECParametros.SHE_DATA_DIA);
  with REC_SHE_FIS do
  begin
    PATH_XML         := PAnsiChar(RECParametros.PATH_SHE + '\' + RECParametros.PATH_NFE_XML         + '\' + RECParametros.CNPJ + '\' + oStrZero(RECParametros.SHE_DATA_ANO,4) + oStrZero(RECParametros.SHE_DATA_MES,2));
    PATH_XML_PROCNFE := PAnsiChar(RECParametros.PATH_SHE + '\' + RECParametros.PATH_NFE_XML_PROCNFE + '\' + oStrZero(RECParametros.SHE_DATA_ANO,4) + oStrZero(RECParametros.SHE_DATA_MES,2));

    if PATH_XML_LAN <> EmptyStr then
       PATH_XML_LAN := PAnsiChar(RECParametros.PATH_SHE_LAN + '\' + RECParametros.PATH_NFE_XML + '\' + RECParametros.CNPJ + '\' + oStrZero(RECParametros.SHE_DATA_ANO,4) + oStrZero(RECParametros.SHE_DATA_MES,2));

    if not DirectoryExists(PATH_XML) then
       try
         ForceDirectories(PATH_XML);
       except
         on E: Exception do
         begin
           oAviso(Application.Handle,'Falha ao tentar criar pasta local de arquivos XML !' + #13 +
                                      PATH_XML + #13 + #13 +
                                     'Favor entrar em contado com o administrador do sistema.');
         end;
       end;

    if PATH_XML_LAN <> EmptyStr then
    if not DirectoryExists(PATH_XML_LAN) then
       try
         ForceDirectories(PATH_XML_LAN);
       except
         on E: Exception do
         begin
           oAviso(Application.Handle,'Falha ao tentar criar pasta de arquivos XML na rede !' + #13 +
                                      PATH_XML_LAN + #13 + #13 +
                                     'Favor entrar em contado com o administrador do sistema.');
         end;
       end;
  end;



  DecodeDate(DEdhEmi.Date, Ano, Mes, Dia);

end;


procedure Tfrmven_nfe.ACTExecNotaFiscalExecute(Sender: TObject);
begin
  { VER REGISTROS }
  with SQLPKConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.NFE_CDNF,PK.NFE_DEMI,PK.NFE_CNAT,PK.NFE_CHAV,');
    SQL.Add('       PK.NFE_CLFO AS CLFO_NU,');
    SQL.Add('       IIF(PK.NFE_CLFO = 1,''Fornecedor''    ,IIF(PK.NFE_CLFO = 2,''Representante'',');
    SQL.Add('       IIF(PK.NFE_CLFO = 3,''Transportadora'',''Cliente''))) AS CLFO_NO,');

    SQL.Add('       PK.NFE_CFAV,PK.NFE_DFAV,PK.NFE_CVEN,PK.NFE_DVEN,PK.NFE_CREP,PK.NFE_DREP,');
    SQL.Add('       PK.NFE_CTRA,PK.NFE_DTRA,TK.NFE_MODFRETE,TK.NFE_QVOL,TK.NFE_ESP,TK.NFE_PSBR,TK.NFE_PSLQ,');

    SQL.Add('       FK.NFE_ITEMPED,FK.NFE_CFOP,');

    SQL.Add('       FK.IDCP,FK.NFE_CPROD,FK.NFE_CEAN,FK.NFE_NCM,');
    SQL.Add('       FK.NFE_XPROD,');

    SQL.Add('       FK.NFE_UCOM  ,FK.NFE_QCOM,FK.NFE_RCOM,');
    SQL.Add('       FK.NFE_VUNCOM,');

    SQL.Add('       FK.NFE_PIPI  ,FK.NFE_CEST,FK.NFE_EXTIPI  ,');
    SQL.Add('       FK.NFE_VFRETE,FK.PSCN    ,FK.PSBR,FK.PSLQ,');
    SQL.Add('       FK.NFE_ORIG  ,FK.NFE_NFCI,');

    SQL.Add('       PK.NFE_VFRETE,');
    SQL.Add('       PK.NFE_VNF');

    SQL.Add('FROM ' + oREPZero('NFE_CAB','_',RECParametros.EP_ID,3) + ' AS PK');
    SQL.Add('JOIN ' + oREPZero('NFE_TRA','_',RECParametros.EP_ID,3) + ' AS TK ON TK.IDPK = PK.IDPK');
    SQL.Add('JOIN ' + oREPZero('NFE_ITE','_',RECParametros.EP_ID,3) + ' AS FK ON FK.IDPK = PK.IDPK');

    SQL.Add('WHERE PK.IDPK = ''' + REC_SHE_DEF.IDPK + '''');
    ExecQuery;
  end;

  if not SQLPKConsulta.Eof then
  begin
    LAIDCD.Caption  := Trim(SQLPKConsulta.Current.ByName('CLFO_NO').AsString);
    LAIDCD.Tag      := SQLPKConsulta.Current.ByName('CLFO_NU').AsInteger;

    CEIDCD.Value    := SQLPKConsulta.Current.ByName('NFE_CFAV').AsInteger;
    CEIDCD.Modified := True;
    CEIDCD.ValidateEdit;

    if (Pos(SQLPKConsulta.Current.ByName('NFE_CNAT').AsString,'5102610251236123') > 0) and (REC_SHE_DEF.IDEV = 0) then
    begin
      PCEdicao.ActivePage := TSNFTriangular;
      CER_CDNF.Value      := SQLPKConsulta.Current.ByName('NFE_CDNF').AsInteger;
      CER_IDCD.Value      := SQLPKConsulta.Current.ByName('NFE_CFAV').AsInteger;
      EDR_DECD.Text       := SQLPKConsulta.Current.ByName('NFE_DFAV').AsString;
      EDR_DECD.Enabled    := False;
      CER_IDCD.Modified   := True;
      CER_IDCD.ValidateEdit;
    end;

    RECRomaneio.IDCV := SQLPKConsulta.Current.ByName('NFE_CVEN').AsInteger;
    RECRomaneio.DECV := Trim(SQLPKConsulta.Current.ByName('NFE_DVEN').AsString);

    RECRomaneio.IDCR := SQLPKConsulta.Current.ByName('NFE_CREP').AsInteger;
    RECRomaneio.DECR := Trim(SQLPKConsulta.Current.ByName('NFE_DREP').AsString);

    PESQUISA_NATUREZA(IFThen(REC_SHE_DEF.IDEV = 0,SQLPKConsulta.Current.ByName('NFE_CNAT').AsString,
                            IFThen(Pos(SQLPKConsulta.Current.ByName('NFE_CNAT').AsString,'51025123') > 0,'5924',
                            IFThen(Pos(SQLPKConsulta.Current.ByName('NFE_CNAT').AsString,'61026123') > 0,'6924',
                                       SQLPKConsulta.Current.ByName('NFE_CNAT').AsString))),'C');

    CEIDCT.Value := SQLPKConsulta.Current.ByName('NFE_CTRA').AsInteger;
    PEDECT.Text  := SQLPKConsulta.Current.ByName('NFE_DTRA').AsString;

    V1_CEPSBR.Value := SQLPKConsulta.Current.ByName('NFE_PSBR').AsFloat;
    V1_CEPSLQ.Value := SQLPKConsulta.Current.ByName('NFE_PSLQ').AsFloat;

    PESQUISA_TRANSPORTADORA(PEDECT.Text,'F');

    IEModFrete.Text := SQLPKConsulta.Current.ByName('NFE_MODFRETE').AsString;
    V1_CEQVOL.Text  := SQLPKConsulta.Current.ByName('NFE_QVOL'    ).AsString;
    V1_EDESP.Text   := SQLPKConsulta.Current.ByName('NFE_ESP'     ).AsString;

    NewCHNFE := SQLPKConsulta.Current.ByName('NFE_CHAV').AsString;
    NewCDNF  := SQLPKConsulta.Current.ByName('NFE_CDNF').AsString;
    NewDTNF  := SQLPKConsulta.Current.ByName('NFE_DEMI').AsString;
    NewVBC   := SQLPKConsulta.Current.ByName('NFE_VNF' ).AsString;

    nfe_001NFE_PSBR.Tag := 1; { Desabilita Cálculo Automático do Peso }
    while not SQLPKConsulta.Eof do
    begin
      nfe_001.Append;
      nfe_001NFE_ITEMPED.Value := SQLPKConsulta.Current.ByName('NFE_ITEMPED').AsInteger;
      nfe_001NFE_CFOP.Value    := IFThen(REC_SHE_DEF.IDEV = 0,SQLPKConsulta.Current.ByName('NFE_CFOP').AsString,
                                        IFThen(Pos(SQLPKConsulta.Current.ByName('NFE_CFOP').AsString,'51025123') > 0,'5924',
                                        IFThen(Pos(SQLPKConsulta.Current.ByName('NFE_CFOP').AsString,'61026123') > 0,'6924',
                                                   SQLPKConsulta.Current.ByName('NFE_CFOP').AsString)));

      nfe_001NFE_CPROD.Value  := SQLPKConsulta.Current.ByName('NFE_CPROD').AsString;
      nfe_001NFE_CEAN.Value   := SQLPKConsulta.Current.ByName('NFE_CEAN' ).AsString;
      nfe_001NFE_XPROD.Value  := SQLPKConsulta.Current.ByName('NFE_XPROD').AsString;
      nfe_001NFE_UCOM.Value   := SQLPKConsulta.Current.ByName('NFE_UCOM' ).AsString;

      nfe_001NFE_NCM.Value    := SQLPKConsulta.Current.ByName('NFE_NCM'   ).AsString;
      nfe_001NFE_PIPI.Value   := SQLPKConsulta.Current.ByName('NFE_PIPI'  ).AsFloat;
      nfe_001NFE_CEST.Value   := SQLPKConsulta.Current.ByName('NFE_CEST'  ).AsString;
      nfe_001NFE_EXTIPI.Value := SQLPKConsulta.Current.ByName('NFE_EXTIPI').AsString;

      nfe_001NFE_ORIG.Value   := SQLPKConsulta.Current.ByName('NFE_ORIG').AsString;

      nfe_001NFE_QCOM.AsFloat := SQLPKConsulta.Current.ByName('NFE_QCOM').AsFloat;
      nfe_001NFE_RCOM.Value   := SQLPKConsulta.Current.ByName('NFE_RCOM').AsInteger;

      nfe_001NFE_PREC.Value   := SQLPKConsulta.Current.ByName('NFE_VUNCOM').AsFloat;
      nfe_001NFE_VUNCOM.Value := SQLPKConsulta.Current.ByName('NFE_VUNCOM').AsFloat;

      nfe_001NFE_NFCI.Value   := SQLPKConsulta.Current.ByName('NFE_NFCI').AsString;

      nfe_001NFE_PSCN.Value   := SQLPKConsulta.Current.ByName('PSCN').AsFloat;
      nfe_001NFE_PSBR.Value   := SQLPKConsulta.Current.ByName('PSBR').AsFloat;
      nfe_001NFE_PSLQ.Value   := SQLPKConsulta.Current.ByName('PSLQ').AsFloat;
      nfe_001.Post;

      SQLPKConsulta.Next;
    end;
  end;
end;

procedure Tfrmven_nfe.ACTExecRomaneioExecute(Sender: TObject);
begin
  { VER REGISTROS }
  with SQLPKConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT');
    SQL.Add('       PK.EP_ID,FK.CP_EP_ID,');
    SQL.Add('       PK.CDRO ,PV.IDPK,PK.DEPK,');
    SQL.Add('       PK.CD_ID,CD.UF,IIF(CD.UF = EP_EF.SGUF OR FEMPTY(CD.UF),TB_PED.CFOP_DUF,TB_PED.CFOP_FUF) AS CFOP,');
    SQL.Add('       PK.CR_ID,PK.CV_ID,');
    SQL.Add('       PK.CT_ID,PK.MFRT AS FRT_MODELO,FK.QTRL,PK.VFRT AS FRT_VFRT,FK.PSBR,FK.PSLQ,');
    SQL.Add('       PK.VDSC,PK.PDSC,PK.TSDE,PK.TCDE,PV.TCDE AS PV_TCDE,');

    SQL.Add('       FK.ITEM,FK.CP_ID,CP.REST,FK.SKU AS CPROD,CP.CEAN,CP.NCM,CP.PIPI,CP.CEST,CP.EXTIPI,');
    SQL.Add('       FK.DECP || '' '' || COALESCE(FK.DGCP,'''') AS XPROD,CP.CMP_PAD,');

    SQL.Add('       FK.UCOM,CP.UTRIB,CP.UQTDE,CP.UQVOL,CP.UESP,');
    SQL.Add('       CP.MPESO,CP.UPSCN,CP.MMETRO,CP.MREND,');

    SQL.Add('       FK.VPRC_PAD,FK.VPRC_COM,');
    SQL.Add('       FK.NFCI,FK.INFADCAD,');

    SQL.Add('       SUM(FK.QTDE) OVER(PARTITION BY FK.CP_ID) AS FK_QTDE,SUM(FK.QTRL) OVER(PARTITION BY FK.CP_ID) AS FK_QTRL,');
    SQL.Add('       CAST(SUM(FK.QTDE * FK.VPRC_COM) OVER(PARTITION BY FK.CP_ID) AS NUMERIC(15,2)) AS FK_TCDE');

    SQL.Add('FROM ' + oREPZero('ROM_CAB'    ,'_',RECParametros.EP_ID,3) + ' AS PK');
    SQL.Add('JOIN ' + oREPZero('ROM_ITE'    ,'_',RECParametros.EP_ID,3) + ' AS FK ON (FK.CDRO = PK.CDRO)');
    SQL.Add('JOIN ' + oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3) + ' AS PV ON (PV.CDRO = PK.CDRO)');

    SQL.Add('JOIN TAB_PAR_SIS AS EP_EF  ON (EP_EF.ID  = PK.IDEP )');
    SQL.Add('JOIN TAB_TPO_PED AS TB_PED ON (TB_PED.ID = PK.CDPD )');
    SQL.Add('JOIN CAD_CLI     AS CD     ON (CD.CD_ID  = PK.CD_ID)');
    SQL.Add('JOIN CAD_PRO     AS CP     ON (CP.CP_ID  = FK.CP_ID)');

    SQL.Add('WHERE PK.CDRO = ''' + REC_SHE_DEF.IDPK + '''');
    ExecQuery;

    if Eof then
    Exit;

    EDCDPD.Text     := Current.ByName('DEPK').AsString;
    EDCDPD.ReadOnly := True;

    CECDRO.Value    := Current.ByName('CDRO').AsInteger;
    CECDRO.ReadOnly := True;
    CETSDE.Value    := Current.ByName('TSDE').AsFloat;
    CEVTRO.Value    := Current.ByName('TCDE').AsFloat;

    CEPDSC.Value    := Current.ByName('PDSC').AsFloat;
    CEPDSC.ReadOnly := True;
    CEVDSC.Value    := Current.ByName('VDSC').AsFloat;
    LAPDSC.Tag      := IFThen(Current.ByName('PDSC').AsFloat > 0,1,0);

    { DESTINATÁRIO }
    CEIDCD.Value    := Current.ByName('CD_ID').AsInteger;
    CEIDCD.Modified := True;
    CEIDCD.ValidateEdit;

    { NATUREZA DE OPERAÇÃO }
    PESQUISA_NATUREZA(Current.ByName('CFOP').AsString,'C'); { Transportadora }

    { FRETE }
    PESQUISA_TRANSPORTADORA(Current.ByName('CT_ID').AsString,'C'); { CFOP }

    IEModFrete.Text := Current.ByName('FRT_MFRT').AsString;
    IEModFrete.Modified := True;
    IEModFrete.ValidateEdit;

    CEVFRT.Value   := Current.ByName('FRT_VFRT').AsFloat;
    V1_CEQVOL.Text := Current.ByName('QTRL').AsString;

    { INFORMAÇÕES ADICIONAIS }
    EDInfAdPed.Text := Current.ByName('INFADCAD').AsString; { Pedido }

    { ITENS }
//    while not SQLFKConsulta.Eof do
//    begin
//      nfe_001.Append;
//      nfe_001NFE_ITEMPED.Value   := SQLFKConsulta.Current.ByName('ITEM').AsInteger;
//      nfe_001NFE_IPRO.Value      := SQLFKConsulta.Current.ByName('IDCP').AsInteger;
//      nfe_001NFE_CPROD.Value     := SQLFKConsulta.Current.ByName('CPROD').AsString;
//      nfe_001NFE_XPROD.Value     := SQLFKConsulta.Current.ByName('XPROD').AsString;
//      nfe_001NFE_UCOM.Value      := SQLFKConsulta.Current.ByName('UCOM').AsString;
//      nfe_001NFE_CEAN.Value      := SQLFKConsulta.Current.ByName('CEAN').AsString;
//
//      if LeftStr(nfe_001NFE_CFOP.AsString,1) = '7' then
//      nfe_001NFE_UTRIB.Value := SQLFKConsulta.Current.ByName('UTRIB').AsString;
//      nfe_001NFE_ORIG.Value  := SQLFKConsulta.Current.ByName('ORIG').AsString;
//
//      nfe_001NFE_NCM.Value    := SQLFKConsulta.Current.ByName('NCM').AsString;
//      nfe_001NFE_PIPI.Value   := SQLFKConsulta.Current.ByName('PIPI').AsFloat;
//      nfe_001NFE_CEST.Value   := SQLFKConsulta.Current.ByName('CEST').AsString;
//      nfe_001NFE_EXTIPI.Value := SQLFKConsulta.Current.ByName('EXTIPI').AsString;
//
//      nfe_001NFE_PESO.Value := SQLFKConsulta.Current.ByName('PESO').AsFloat;
//      nfe_001NFE_PSCN.Value := SQLFKConsulta.Current.ByName('PSCN').AsFloat;
//      nfe_001NFE_METR.Value := SQLFKConsulta.Current.ByName('METRO').AsFloat;
//      nfe_001NFE_REND.Value := SQLFKConsulta.Current.ByName('REND').AsFloat;
//      nfe_001NFE_QTUN.Value := SQLFKConsulta.Current.ByName('UQTDE').AsFloat; { RICARDO }
//
//      nfe_001NFE_QCOM.Value := SQLFKConsulta.Current.ByName('ROM_QTDE').AsCurrency;
//      nfe_001NFE_RCOM.Value := SQLFKConsulta.Current.ByName('ROM_QTRL').AsInteger;
//
//      nfe_001NFE_PREC.Value   := SQLFKConsulta.Current.ByName('VUNCOM').AsFloat;
//      nfe_001NFE_VDESC.Value  := SQLFKConsulta.Current.ByName('VDSC').Value;
//      nfe_001NFE_VUNCOM.Value := SQLFKConsulta.Current.ByName('VUNCOM').AsFloat;
//
//      nfe_001NFE_VPROD.Value := SQLFKConsulta.Current.ByName('TCDE').AsCurrency;
//
//      nfe_001NFE_STAV.Value      := SQLFKConsulta.Current.ByName('REST').AsString;
//      nfe_001NFE_COMP.Value      := SQLFKConsulta.Current.ByName('CMP_PAD').AsString;
//      nfe_001NFE_INFADPROD.Value := SQLFKConsulta.Current.ByName('CMP_PAD').AsString;
//      nfe_001NFE_NFCI.Value      := SQLFKConsulta.Current.ByName('ROM_NFCI').AsString;
//
//      if not oEmpty(nfe_001NFE_INFADPROD.AsString) then
//         nfe_001NFE_INFADPROD.Value := 'COMPOSICAO: '+nfe_001NFE_INFADPROD.AsString;
//
//      if ((SQLFKConsulta.Current.ByName('UQVOL').AsFloat > 0) and (not oEmpty(SQLFKConsulta.Current.ByName('UESP').AsString))) then
//           nfe_001NFE_INFADPROD.Value := nfe_001NFE_INFADPROD.AsString+#13+'CONTEUDO: '+SQLFKConsulta.Current.ByName('UQVOL').AsString+' '+SQLFKConsulta.Current.ByName('UESP').AsString
//      else
//           if Pos(LeftStr(nfe_001NFE_UCOM.AsString,1),'KMY') = 0 then
//              if  nfe_001NFE_METR.AsFloat > 0 then
//                  nfe_001NFE_INFADPROD.Value := nfe_001NFE_INFADPROD.AsString+#13+'CONTEUDO: '+FormatFloat('0.00M',nfe_001NFE_METR.AsFloat);
//
//      nfe_001NFE_INFADPROD.Value := Trim(nfe_001NFE_INFADPROD.AsString);
//      nfe_001NFE_REPR.Value      := 'R';//FBird.FBCAD_PROPRO_REPR.AsString;
//      nfe_001.Post;
//
//      SQLFKConsulta.Next;
//    end;
//
//    RECRomaneio.FIN_CSPD := (CadastroFIN_CSPD.AsInteger = 1);
//
//    RECRomaneio.CDRO := CECDRO.Value;
//    RECRomaneio.IDCV := CadastroIDCV.AsInteger;
//    RECRomaneio.DECV := CadastroDECV.AsString;
//    RECRomaneio.IDCR := CadastroIDCR.AsInteger;
//    RECRomaneio.DECR := CadastroDECR.AsString;
//
//    RECRomaneio.FAPD := (CadastroVEN_FATU.AsString = '1');
//    RECRomaneio.TPCO :=  CadastroROM_CONC.AsInteger;
//    RECRomaneio.STCO :=  CadastroROM_STCO.AsString;
//    RECRomaneio.STPD :=  CadastroROM_STPD.AsString;
//    RECRomaneio.PK_DEST :=  CadastroROM_STFI.AsString;
//
//    RECRomaneio.CDPG := cadastroCDPG.AsString;
//    RECRomaneio.DEPG := CadastroPAG_DPAG.AsString;
//
//    cbdpag.Text    := RECRomaneio.DEPG;
//    cbdupl.Text    := IFThen((RECRomaneio.FAPD) and (Pos(LeftStr(RECRomaneio.STCO,3),'BANBOLDUP') > 0),'SIM','NÃO');
//    cbdupl.Enabled := (RECRomaneio.FAPD) and (Pos(LeftStr(RECRomaneio.STCO,3),'BANBOLDUP') > 0);
//
//    LAIDCD.Enabled := False;
//    CEIDCD.Enabled := False;
//    EDDECD.Enabled := False;
//
//    CALCULA_FRETE;
//    CALCULA_NF;
//
//         Show;
//       end;
//
//       if Showing then
//       if (frmven_nfe.CER_CDNF.Value > 0) and (frmven_nfe.PCEdicao.ActivePage = frmven_nfe.TSNFTriangular) then
//       begin
//         PostMessage(TWinControl(frmven_nfe.EDR_DECD).Handle, WM_SETFOCUS, 0, 0);
//         TWinControl(frmven_nfe.EDR_DECD).SetFocus;
//       end else
//       begin
//         PostMessage(TWinControl(frmven_nfe.V1_CEQVOL).Handle, WM_SETFOCUS, 0, 0);
//         TWinControl(frmven_nfe.V1_CEQVOL).SetFocus;
//       end;
//     end;
//
//

  end;
end;

end.
