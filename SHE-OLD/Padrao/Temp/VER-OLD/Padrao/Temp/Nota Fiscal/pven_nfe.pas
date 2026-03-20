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
  XMLDom, XMLIntf, MSXMLDom, XMLDoc, XMLXForm,
  IDGlobal, IBSQL {Unit do componente Indy para usar Fetch() };

const
 dllNfe = 'nfe.dll';

type
  ArrayBi = Array of Array of shortstring;

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
    BVal: TSpeedItem;
    BTra: TSpeedItem;
    BAss: TSpeedItem;
    BVis: TSpeedItem;
    BPri: TSpeedItem;
    BEnv: TSpeedItem;
    BImp: TSpeedItem;
    PNLPrincipal: TPanel;
    TSheild: TIBTransaction;
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
    SBMain: TStatusBar;
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
    LAdhSaiEnt: TLabel;
    LAFinNFe: TLabel;
    DEdhEmi: TdxDateEdit;
    DEdhSaiEnt: TdxDateEdit;
    IEFinNFe: TdxImageEdit;
    GBDuplicatas: TGroupBox;
    LADupl: TLabel;
    LADPag: TLabel;
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
    DBGNFE: TdxDBGrid;
    DBGNFENFE_ITEMPED: TdxDBGridMaskColumn;
    DBGNFENFE_CFOP: TdxDBGridMaskColumn;
    DBGNFENFE_CPROD: TdxDBGridMaskColumn;
    DBGNFENFE_NCM: TdxDBGridMaskColumn;
    DBGNFENFE_XPROD: TdxDBGridMaskColumn;
    DBGNFENFE_ORIG: TdxDBGridPickColumn;
    DBGNFENFE_CST: TdxDBGridPickColumn;
    DBGNFENFE_UCOM: TdxDBGridPickColumn;
    DBGNFENFE_QCOM: TdxDBGridMaskColumn;
    DBGNFENFE_VUNCOM: TdxDBGridMaskColumn;
    DBGNFENFE_VPROD: TdxDBGridMaskColumn;
    DBGNFENFE_VDESC: TdxDBGridMaskColumn;
    DBGNFENFE_VNF: TdxDBGridMaskColumn;
    DBGNFENFE_VBC: TdxDBGridMaskColumn;
    DBGNFENFE_PREDBC: TdxDBGridMaskColumn;
    DBGNFENFE_PICMS: TdxDBGridMaskColumn;
    DBGNFENFE_VICMS: TdxDBGridMaskColumn;
    DBGNFENFE_CSTIPI: TdxDBGridMaskColumn;
    DBGNFENFE_CENQ: TdxDBGridMaskColumn;
    DBGNFENFE_VBCIPI: TdxDBGridMaskColumn;
    DBGNFENFE_PIPI: TdxDBGridMaskColumn;
    DBGNFENFE_VIPI: TdxDBGridMaskColumn;
    DBGNFENFE_CSTPIS: TdxDBGridMaskColumn;
    DBGNFENFE_VBCPIS: TdxDBGridMaskColumn;
    DBGNFENFE_PPIS: TdxDBGridMaskColumn;
    DBGNFENFE_VPIS: TdxDBGridMaskColumn;
    DBGNFENFE_CSTCOFINS: TdxDBGridMaskColumn;
    DBGNFENFE_VBCOFINS: TdxDBGridMaskColumn;
    DBGNFENFE_PCOFINS: TdxDBGridMaskColumn;
    DBGNFENFE_VCOFINS: TdxDBGridMaskColumn;
    GBInfoComp: TGroupBox;
    DBInfoComp: TdxDBMemo;
    DBGNFENFE_FLAG: TdxDBGridMaskColumn;
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
    DBGNFENFE_UTRIB: TdxDBGridMaskColumn;
    DBGNFENFE_QTRIB: TdxDBGridCurrencyColumn;
    DBGNFENFE_VUNTRIB: TdxDBGridMaskColumn;
    DBGNFENFE_VFRETE: TdxDBGridCurrencyColumn;
    DBGNFENFE_VSEG: TdxDBGridCurrencyColumn;
    DBGNFENFE_VOUTRO: TdxDBGridCurrencyColumn;
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
    DBGNFENFE_VBCST: TdxDBGridCurrencyColumn;
    DBGNFENFE_PICMSST: TdxDBGridCurrencyColumn;
    DBGNFENFE_VICMSST: TdxDBGridCurrencyColumn;
    DBGNFENFE_EXTIPI: TdxDBGridMaskColumn;
    DBGNFENFE_CEST: TdxDBGridMaskColumn;
    DBGNFENFE_NFCI: TdxDBGridMaskColumn;
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
    TSGFRT: TdxTabSheet;
    DBGSFrete: TdxDBGrid;
    DBGSFreteLOG_TRANSPORTADORA: TdxDBGridMaskColumn;
    DBGSFreteLOG_DESTINO: TdxDBGridMaskColumn;
    DBGSFreteLOG_PRAZO: TdxDBGridMaskColumn;
    DBGSFreteLOG_VFRETE: TdxDBGridCurrencyColumn;
    TSAVOL: TdxTabSheet;
    DBGNFENFE_PSBR: TdxDBGridMaskColumn;
    DBGNFENFE_PSLQ: TdxDBGridMaskColumn;
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
    Label27: TLabel;
    Label85: TLabel;
    PEDECT: TdxPickEdit;
    V1_EDESP: TdxEdit;
    IEModFrete: TdxImageEdit;
    CEVFRT: TdxCurrencyEdit;
    V1_CEQVOL: TdxCurrencyEdit;
    EDCFRT: TdxEdit;
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
    Label71: TLabel;
    Label72: TLabel;
    IEINDPAG: TdxImageEdit;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
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
    DBGNFENFE_XPED: TdxDBGridMaskColumn;
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
    DBGNFEUF: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
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
    procedure BValClick(Sender: TObject);
    procedure BFAVClick(Sender: TObject);
    procedure DBGNFEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTraClick(Sender: TObject);
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
    procedure DBGNFEDblClick(Sender: TObject);
    procedure DBGNFECustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure BNFeClick(Sender: TObject);
    procedure PEDECTValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure BAssClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DUP_001BeforePost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IEFinNFeChange(Sender: TObject);
    procedure IEModFreteExit(Sender: TObject);
    procedure V1_CEPSBRValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure V1_CEPSLQValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbcnatValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DEdhSaiEntDblClick(Sender: TObject);
    procedure DBGNFENFE_QCOMValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGNFENFE_VUNCOMValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure NFE_001AfterEdit(DataSet: TDataSet);
    procedure NFE_001AfterInsert(DataSet: TDataSet);
    procedure DBGNFENFE_VICMSValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGNFENFE_VBCValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DBGNFENFE_PICMSValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGNFENFE_VBCIPIValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGNFENFE_PIPIValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGNFENFE_VIPIValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure siCGEClick(Sender: TObject);
    procedure DBGNFENFE_VPRODValidate(Sender: TObject;
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
    procedure DBGNFENFE_NCMValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure BECMunButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure DUP_001AfterOpen(DataSet: TDataSet);
    procedure SBMainResize(Sender: TObject);
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
    procedure DBGNFENFE_CFOPValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
  private
    { Private declarations }
    RECDefault: TRECDefault;
    InfAd: TStringList;
    AID,
    ADIF: Integer;
    Enviado: Boolean;

    NFE_PDF: string;
    NFE_XML: string;

    procedure _CheckErrors;
    procedure _Cadastros;
    procedure _EstoqueImportados;
    procedure _Descontos;

    procedure _SP_NFE_EMI(ANATOP: String = 'NORMAL');

    procedure ATUALIZA_MENSAGENS;
    procedure _FillCP;
    procedure _NFTriangular;

    procedure SALVA_NF;
    procedure ExecEvent;

    function  GERA_LOTE: boolean;
    function  GERA_NFE: Boolean;
  public
    { Public declarations }
    RECRomaneio,
    RECNFTriangular: TRECPEdidos;
    NewCHNFE,NewCDNF,NewDTNF,NewORIG,NewNCM,NewPICMS,NewVBC,NewCSTIPI,NewPIPI,NewVBCIPI,NewVBCPIS,NewVBCCOFINS,NewCST: string;
    ClickedOK: Boolean;

    procedure ENVIA_EMAIL;
    procedure GERA_DANFE;
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

    Constructor Create(AOwner: TComponent; const AFB_Event: String = 'NFE_CAB'); reintroduce; overload;
  end;

function GeraNFe(ide, emit, dest : Array of shortstring; detProd : Arraybi;
                 total, transp, cobr, pag, infAdic, autXML : array of shortstring; assinar : boolean = false) : shortstring; StdCall; External dllNfe; far;

function AssinaArquivoXML(pathArquivo,tagURI : shortstring) : shortstring; stdcall; External dllNfe; far;

function GerarLote(idLote : integer; pathNFe : shortstring; listarArquivos : boolean = true) : integer; stdcall; External dllNfe; far;

function GeraDPEC(pathNFe : ShortString) : Integer;  stdcall; External dllNfe; far;

function GeraEPEC(pathNFe : ShortString) : Integer;  stdcall; External dllNfe; far;

function ImprimeDanfe(pathXML,pathPDF: shortstring; tipoImp : integer; formSeguranca : boolean) : boolean; stdcall; External dllNfe; far;

function ImprimeDanfeEscolheImp(pathXML,pathPDF,nomeImp: shortstring; tipoImp : integer; formSeguranca : boolean) : boolean; stdcall; External dllNfe; far;

function ImprimeDPEC(pathXML, pathPDF: ShortString; tipoImp : integer; nProtDpec: shortstring) : boolean; stdcall; External dllNfe; far;

function ImprimeEPEC(pathXML, pathPDF: ShortString; tipoImp : integer; nProtDpec: shortstring) : boolean; stdcall; External dllNfe; far;

function ImprimeCCe(pathCCe, pathPDF : shortstring; tipoImp : integer) : boolean; stdcall; External dllNfe; far;

function ValidarArquivoXML(pathArquivo : shortstring; schema : shortstring; exbForm : boolean = true) : ShortString; stdcall; External dllNfe; far;

function NfeStatusServico : shortstring; stdcall; External dllNfe; far;

function NFeRecepcao(pathLoteXML : shortstring) : shortstring; stdcall; External dllNfe; far

function NFeAutorizacao(pathLoteXML : shortstring) : WideString; stdcall; External dllNfe; far

function NfeRetAutorizacao(nRec : shortstring) : WideString; stdcall; External dllNfe; far

function RecepcaoDPEC(pathDPECXML : shortstring) : shortstring; stdcall; External dllNfe; far

function RecepcaoEPEC(pathDPECXML : shortstring) : shortstring; stdcall; External dllNfe; far

function NFeConsulta(chNFe : WideString) : WideString; stdcall; External dllNfe; far;

Function DPECConsulta(ChaveRegDPEC:ShortString):ShortString;stdcall external dllNfe; far;

function EPECConsulta(chaveRegEPEC : ShortString) : ShortString; stdcall; external dllNfe; far;

function NfeInutilizacao(ano, nNFIni, nNFFin, xJust : shortstring; serie : shortstring = '') : shortstring; stdcall; External dllNfe; far;

function NFeCancelamento(chNFe, nProt, xJust : shortstring) : shortstring; stdcall; External dllNfe; far;

function NFeCancelamentoEvento(chNFe, nProt, idLote, nSeqEvento,  xJust : shortstring) : shortstring; stdcall; External dllNfe; far;

function NfeRetRecepcao(nRec : shortstring) : boolean; stdcall; External dllNfe; far;

function ArquivoDistribuicaoNFe(chNFe : shortstring) : shortstring; stdcall; External dllNfe; far;

function EnviaEmail(emailDest, assunto, msg, pathFile : IString) : boolean; stdcall; External dllNfe; far; overload; //v6.3.2

function NFeCadastro(UF, CNPJ : shortstring) : IString; stdcall; External dllNfe; far; //v6.4.1

function GeraCCe(chnfe, seq, tpEvento, dhEvento : shortstring; xCorrecao : array of shortstring) : shortstring; stdcall; External dllNfe; far; //v6.4.1

function GeraManifestacao(chnfe, seq, tpEvento, dhEvento, xJust : ShortString) : ShortString; stdcall; External dllNfe; far; //v6.6.5

function NFeDistribuicaoDFe(DFechNFe, DFeNSU : ShortString; DFeultNSU : boolean)  : ShortString; stdcall; External dllNfe; far;

function ConsultaDest(indNFe, indEmi, ultNSU : ShortString) : ShortString; stdcall; External dllNfe; far; //v6.6.5

function DonwloadNFe(chNFe, pathNFe : ShortString) : ShortString; stdcall; External dllNfe; far; //v6.6.5

function CarregaFCI(pathXml, pathFile : shortstring) : boolean; stdcall; External dllNfe; far; //v6.6.5

function ConsultaVersao : ShortString; stdcall; external dllNfe; far;

function EventoEntrega(idLote, chNfe, seqEvento, dhEntrega, nDoc, xNome, latlongGps : shortstring) : shortstring; stdcall;  external dllNfe; far;

function EventoEntregaInsucesso(idLote, chNfe, seqEvento, dhEntregaTentativa, nTentativa, tpMotivo, xMotivo, latlongGps : shortstring) : shortstring; stdcall;  external dllNfe; far;

function VersaoDLL () : WideString; stdcall; external dllNfe; far;

function ImprimeDanfeSimplificado(pathXML : ShortString; tipoImp : integer; formSeguranca : boolean) : boolean;  stdcall;  external dllNfe; far;

function ConsultaGtin(chave : shortstring) : shortstring; stdcall; External dllNfe; far;

var
  frmven_nfe: Tfrmven_nfe;
  chNFe,cStat,protNFe: ShortString;
  BCalc: Boolean;
  IDG_NFE_CAB: Integer;

implementation

uses uPrincipal, bPrincipal,
  pemail, pctr_rom,
  pctr_nfe, pimporta_geral,
  pNFeConsultaSefaz;

{$R *.dfm}

Constructor Tfrmven_nfe.Create(AOwner: TComponent; const AFB_Event: String = 'NFE_CAB');
begin
  { Records }
  oIRECDefault(RECDefault);
  oIRECPedidos(RECRomaneio    ,laNone);
  oIRECPedidos(RECNFTriangular,laNone);

  { Inicializando variáveis públicas exceto variáveis constructor }
  NewCHNFE := EmptyStr;
  NewCDNF  := EmptyStr;
  NewDTNF  := EmptyStr;

  NewORIG := EmptyStr;
  NewCST  := EmptyStr;

  NewVBC   := EmptyStr;
  NewPICMS := EmptyStr;

  NewNCM    := EmptyStr;
  NewCSTIPI := EmptyStr;
  NewPIPI   := EmptyStr;
  NewVBCIPI := EmptyStr;

  NewVBCPIS    := EmptyStr;
  NewVBCCOFINS := EmptyStr;

  chNFe   := EmptyStr;
  protNFe := EmptyStr;
  cStat   := EmptyStr;

  IDG_NFE_CAB := 0;

  BCalc   := False;
  Enviado := False;

  { Firebird Event Alert }
  RECDefault.FB_EventAlert := True;
  RECDefault.FB_Event      := Trim(AFB_Event);

  inherited Create(AOwner);
end;

procedure Tfrmven_nfe.FormCreate(Sender: TObject);
var
  i: Word;
begin
  Randomize;

  { Habilita envio automático conforme parâmetro }
  IEEnvMail.Text    :=  RECParametros.NFE_ENV_EMAIL_AUTO;
  IEEnvMail.Enabled := (RECParametros.NFE_ENV_EMAIL_AUTO = 1);

  { Ajusta Posicionamento da Página }
           Screen.Cursor := crAppStart;
  RECDefault.FrmPosition := Self.Position;
  RECDefault.MainArea    := True;

  if (RECDefault.WorkArea) and (Screen.Height > 768) then
      RECDefault.WorkArea := False;

  if (RECDefault.MainArea) and (Screen.Height > 900) then
      RECDefault.MainArea := False;

  { Nota Fiscal }
  _SP_NFE_EMI; { Numeração }

  DEdhEmi.Date    := RECParametros.DTServer; { Emissão }
  DEdhSaiEnt.Date := RECParametros.DTServer; { Saída }

  { Destinatário }
  CEIDCD.Value   := 0; { Principal }
  CER_IDCD.Value := 0; { Remessa }

  { Pedido }
  EDCDPD.Text  := EmptyStr;
  CEVTPV.Value := 0;

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

  i := 0;
  repeat
    inc(i);
    tdxCurrencyEdit(FindComponent(Format('V%d_CEQVOL',[i]))).Value := 0;
    tdxCurrencyEdit(FindComponent(Format('V%d_CENVOL',[i]))).Value := 0;
    tdxCurrencyEdit(FindComponent(Format('V%d_CEPSBR',[i]))).Value := 0;
    tdxCurrencyEdit(FindComponent(Format('V%d_CEPSLQ',[i]))).Value := 0;
  until i = 8;

  PCFrete.ActivePage  := TSVOL;
  PCVOL.ActivePage    := TSVOL2;
  PCEdicao.ActivePage := TSProduto;

  InfAd := TStringList.Create;
  BCalc := True;

  oOTransact(TSheild);
  with consulta_S do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM NFE_ITE');
    ExecSQL;

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM NFE_DUP');
    ExecSQL;

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM NFE_CLI');
    ExecSQL;
  end;
  oRTransact(TSheild);

  oOTransact(TConsulta);
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
end;

procedure Tfrmven_nfe.FormShow(Sender: TObject);
begin
  OnShow := Nil;
end;

procedure Tfrmven_nfe.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Screen.Cursor := crDefault;

  try
    with EEvent do
    begin
      UnregisterEvents;
      Events.Add(TRIM(oREPZero(RECDefault.FB_Event,'_',RECParametros.Id,3)));
      Events.Add(TRIM(oREPZero(RECDefault.FB_Event,'_',RECParametros.ID,3) + IFThen(Pos(RECUsuarios.Grupo,'VENEXPPCPQLDCOMCRI') > 0,'_' + RECUsuarios.ID,'')));
      RegisterEvents;
    end;
  except
    on E: Exception do
    oErro(Handle,'Falha ao tentar registrar evento: Pedidos !' +#13+
                 'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                 'Erro: '+E.Message);
  end;

  TAG := 0;
  BEnv.Enabled := True;
end;

procedure Tfrmven_nfe.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
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
  Action := caFree;
end;

procedure Tfrmven_nfe.FormDestroy(Sender: TObject);
begin
  { Verifica NF Gravada }
  try
      oOTransact(TEvent);
      with SQLEvent do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.ID FROM '  + oREPZero('NFE_CAB','_',RECParametros.Id,3) + ' AS PK');
        SQL.Add('WHERE  PK.CDNF   = ''' + CECDNF.Text + '''');
        SQL.Add('AND    PK.FINNFE < 5');
        ExecQuery;

        if Eof then
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE NFE_EMI ');
          SQL.Add('SET    FLAG = ''' + IFThen(BVal.Tag = 0,'1','0') + '''');
          SQL.Add('WHERE  CDNF = ''' + CECDNF.Text + '''');
          ExecQuery;

          Close;
          SQL.Clear;
          SQL.Add('UPDATE NFE_EMI ');
          SQL.Add('SET    FLAG = ''' + IFThen(BVal.Tag = 0,'1','0') + '''');
          SQL.Add('WHERE  CDNF = ''' + CER_CDNF.Text + '''');
          ExecQuery;
        end;
      end;
      oCTransact(TEvent);
    except
      on E: Exception do
      begin
        oCTransact(TEvent,ltRollback);
        oErro(Application.Handle,'Falha ao tentar processar fila de emissão !'+#13+
                                 'Nota Fiscal ' + CECDNF.Text + #13+#13+
                                  E.Message);
      end;
    end;

  try
     Screen.Cursor := crAppStart;
     OnDestroy     := Nil;

     { Transação Principal }
     try
       oFTransact(TEdicao);
       oFTransact(TSheild);
     except
       on E: Exception do
       begin
         oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                  'Error Code: '+E.Message+'.'      +#13+
                                   Caption+'.');
       end;
     end;

     { Eventos }
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

     { record e afins }
     try
       oFRECDefault(RECDefault );
       oFRECPedidos(RECRomaneio);
       oFRECPedidos(RECNFTriangular);
     except
       on E: Exception do
       begin
         oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                  'Error Code: '+E.Message+'.'        +#13+
                                   Caption+'.');
       end;
     end;
  finally
    Screen.Cursor := crDefault;
    Frmven_nfe    := Nil;
  end;
end;

procedure Tfrmven_nfe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_return: if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TDBMemo)   and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdbGrid)   and
                      not (ActiveControl is TMemo)) then
                  SelectNext(ActiveControl, true, true);
       40       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TDBMemo)      and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TdbGrid)      and
                      not (ActiveControl is TMemo)) then
                  SelectNext (ActiveControl, true, true);
       38       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TDBMemo)      and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TdbGrid)      and
                      not (ActiveControl is TMemo)) then
                  SelectNext (ActiveControl, false, true);
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
  {[Ctrl+I]} else
  if key = #19 then
  begin
    if oYesNo(handle,'Salvar NF ?') = mrYes then
    begin
      if Pos(CECDNF.Text,chNFE) = 0 then
      begin
        Editar;
        oException(CECDNF,'Código do XML inválido !'#13+
                          'Click no botão validar para gerar corretamente.');
      end;
      SALVA_NF;
    end;
  end else
  if key = #22 then
  {[Ctrl+V]};
end;

procedure Tfrmven_nfe.FormPaint(Sender: TObject);
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
    GetWindowRect(FrmPrincipal.ClientHandle,S);
    T := S.Top;
    B := S.Bottom;
    L := S.Left;
    R := S.Right;
    H := B;

    FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
    FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

    if RECDefault.WorkArea then
    begin
      Top    := Screen.WorkAreaTop;
      Left   := Screen.WorkAreaLeft;
      Width  := Screen.WorkAreaWidth;
      Height := Screen.WorkAreaHeight;
    end else
    if RECDefault.MainArea then
    begin
      Top    := 0;
      Left   := 0;
      Width  := R - L - 5;
      Height := H - T - 5;
    end else
    if RECDefault.FrmPosition = poDefault then
    begin
      Top    := IFThen(FormStyle = fsNormal,T,0);
      Left   := IFThen(FormStyle = fsNormal,L,0);
      Width  := IFThen(RECDefault.FrmPosition = poDefault,R - L - 5,0);
      Height := IFThen(RECDefault.FrmPosition = poDefault,H - T - 5,0);
    end else
    begin
      if RECDefault.FrmPosition = poDesigned then
      begin
        if  (FHeight > 0) and (FWidth > 0) then
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
    end;

    SBMain.Panels[1].Width := Self.Width - (SBMain.Panels[0].Width + SBMain.Panels[2].Width + SBMain.Panels[3].Width + SBMain.Panels[4].Width) - 30;
    SBMain.Refresh;
  end;
end;

procedure Tfrmven_nfe.FormResize(Sender: TObject);
begin
  if frmven_nfe <> Nil then
     Paint;
end;

procedure Tfrmven_nfe.BValClick(Sender: TObject);
var
  sWarning: String;
begin
  ActiveControl := Nil;
  BVal.Tag := 1;

  SBMain.Panels[0].Text := EmptyStr;
  SBMain.Panels[1].Text := EmptyStr;
  SBMain.Panels[2].Text := EmptyStr;
  SBMain.Panels[3].Text := EmptyStr;
  SBMain.Panels[4].Text := EmptyStr;
  SBMAin.Refresh;

  chNFe   := EmptyStr;
  protNFe := EmptyStr;
  cStat   := EmptyStr;

  NFE_PDF := EmptyStr;
  NFE_XML := EmptyStr;

  if bval.ImageIndex = 0 then
  begin
    try
      Screen.Cursor := crAppStart;

      SBMain.Panels[0].Text := 'Aguarde, conectando SEFAZ ...';
      SBMain.Refresh;

    //  SBMain.Panels[1].Text :=  NfeStatusServico;
    //  SBMain.Refresh;

    //  if (SBMain.Panels[1].Text = EmptyStr) or (LeftStr(SBMain.Panels[1].Text,3) <> '107') then
    //  begin
    //    SBMain.Panels[0].Text := 'Falha na conexão com o SEFAZ';
    //    SBMain.Panels[1].Text := 'Verifique certificado, internet ou disponibilidade do SEFAZ em https://www.nfe.fazenda.gov.br/portal/disponibilidade.aspx';
    //    SBMain.Refresh;
    //
    //    Abort;
    //  end else
    //  begin
    //    SBMain.Panels[0].Text := 'Conexão estabelecida com sucesso';
    //    SBMain.Panels[1].Text := 'SEFAZ ON LINE';
    //    SBMain.Refresh;
    //  end;
    //
      SleepEx(500,False);
    finally

      Screen.Cursor := crDefault;
      Application.ProcessMessages;
    end;

    if NFE_001.State in [dsEdit,dsInsert] then
       if NFE_001NFE_VPROD.AsFloat > 0 then
          NFE_001.Post else NFE_001.Cancel;
          NFE_001.First;

    if CLI_001.State in [dsEdit,dsInsert] then
       if CLI_001NFE_CDNF.AsInteger > 0 then
          CLI_001.Post else CLI_001.Cancel;
          CLI_001.First;

    if DUP_001.State in [dsEdit,dsInsert] then
       if DUP_001NFE_VDUP.AsFloat > 0 then
          DUP_001.Post else DUP_001.Cancel;
          DUP_001.First;

    { Itens }
       NFE_001.First;
    if NFE_001Id.AsInteger = 0 then
       oException(Nil,'Itens da nota fiscal não Informados !');

    { Duplicatas }
    if cbdupl.Text = EmptyStr then
       oException(CBDUPL,'Emissão de duplicatas não informadas ou inválidas !' + #13+
                         'Use SIM ou NÃO para continuar.');

    DUP_001.First;
    if CECDRO.Value > 0 then
    begin
      if (Pos(LeftStr(RECRomaneio.STCO,3),'BANBOLDUP') > 0) and ((DUP_001ID.AsInteger = 0) or (CBDUPL.Text <> 'SIM')) then
          oException(Nil,'Boletos de cobranças não informados ou inválidos !'+#13+
                         'Emissão obrigatório para pedidos com cobrança bancária.');

      if (Pos(LeftStr(RECRomaneio.STCO,3),'BANBOLDUP') = 0) and ((DUP_001ID.AsInteger > 0)  or (CBDUPL.Text  = 'SIM')) then
          oException(Nil,'Boletos de cobranças inválidos !'+#13+
                         'Emissão não permitida para pedidos com cobrança em carteira.');
    end;

    if CBDUPL.Text = 'SIM' then
    begin
      if CBDPAG.Text <> TAB_PAGPAG_DPAG.AsString then
      begin
        TAB_PAG.Close;
        TAB_PAG.Params[0].Value := CBDUPL.Text;
        TAB_PAG.Open;
      end;

      if TAB_PAGPAG_PARC.AsInteger <> DUP_001.RecordCount then
         oException(Nil,'Número de parcelas da nota fiscal difere do número de parcelas do prazo selecionado !');
    end;

    { Consumidor Final }
    if (RECParametros.NFE_CRT = 3) and (IEIndFinal.Text = '1') and (IETPNF.Text = '1') and (PEUF.Text <> 'EX') and (PEUF.Text <> RECParametros.SGUF) then
        if oYesNo(handle,'EMISSÃO PARA CONSUMIDOR FINAL'#13+
                         'Continuar ?') = mrNo then
    begin
      Editar;
      Abort;
    end;

    { Triangular }
    if (CER_CDNF.Value = 0) and (CER_IDCD.Value > 1) then
    begin
      Editar;
      PCEdicao.ActivePage := TSNFTriangular;

      { Destinatário da Remessa }
      oException(EDR_DECD,'Destinatário da remessa informado incorretamente !');
    end;

    if (Pos(CBCNAt.Text,'5123592461236924') > 0) and ((CER_CDNF.Value = 0) or (EDR_DECD.Text = EmptyStr) or (EDR_CNPJ.Text = EDCNPJ.Text))  then
    begin
      Editar;
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

    if IEFinNFe.Text <> '2' then
    begin

      sWarning := '';
      try
        NFE_001.DisableControls;
        NFE_001.First;
        while not NFE_001.Eof do
        begin
          if NFE_001NFE_QCOM.AsFloat   = 0 then sWarning := 'Quantidade não Informada !';
          if NFE_001NFE_VUNCOM.AsFloat = 0 then sWarning := 'Valor Unitário não Informado !';


          if (NFE_001NFE_NFCI.AsString = EmptyStr) and
             (NFE_001NFE_ORIG.AsString = '5'     ) and (NFE_001NFE_CST.AsString = '00') then sWarning := 'FCI não Informado !';


          if not oEmpty(sWarning) then
          begin
            sWarning := sWarning +#13+'Item: '+NFE_001NFE_ITEMPED.AsString;
            Break;
          end;

          if IEFinNFe.Text <> '2' then
             if NFE_001NFE_NCM.AsString   = '00000000' then
             begin
               DBGNFE.FocusedAbsoluteIndex := DBGNFENFE_NCM.Index;
               oException(DBGNFE,'NCM não Informado ou Incorreto !'+#13+#13+
                                 'Item '+NFE_001NFE_ITEMPED.AsString+' - '+NFE_001NFE_CPROD.AsString+'.');
             end;

          NFE_001.Next;
        end;
      finally
        NFE_001.EnableControls;

        if not oEmpty(sWarning) then
           if (NFE_001NFE_ORIG.AsString = '5') and (NFE_001NFE_CST.AsString = '00') then
               oErro(handle,sWarning)
           else
               oException(DBGNFE,sWarning);
        NFE_001.First;
      end;

      if oEmpty(cbdnat.Text) then
      begin
        Editar;
        oException(cbcnat,'CFOP não Informado ou Incorreto !');
      end;

      if not DUP_001.Fields[0].IsNull then
         if DUP_001NFE_CDNF.AsInteger <> CECDNF.Value then
         begin
           Editar;
           oException(Nil,'Número da duplicata incorreto !'+#13+
                          'Favor refazer a duplicata.');
         end;

      if CECDRO.Value > 0 then
      with SQLConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ROM_STCO FROM '+oREPZero('ROM_CAB','_',RECParametros.IDEP,3));
        SQL.Add('WHERE  ID = '''+CECDRO.Text+'''');
        ExecQuery;

        if (fields[0].AsString = 'BANCÁRIO') and (DUP_001.Fields[0].IsNull) then
        begin
          Editar;
          oException(cbdupl,'Nota Fiscal sem Duplicata(s) Registrada(s) !');
        end;
      end;

      if IEFinNFe.Text <> '1' then
      begin
        ClickedOK := InputQuery('Entre com a chNFe de acesso da NFe Referenciada', 'chNFe', NewCHNFE);
        if (not ClickedOK) or (NewCHNFE = '') then
        begin
          Editar;
          oException(Nil,'chNFe (código de barras) nao informada !');
        end;

        if Length(trim(NewCHNFE)) < 44 then
        begin
          Editar;
          oException(Nil,'chNFe (Código de Barras) informada incorretamente !');
        end;
      end;

      if oEmpty(EDxNome.Text) then
      begin
        Editar;
        oException(EDDECD,'Favorecido não Selecionado !');
      end;

      if oEmpty(EDFone.Text) then
      begin
        PCEdicao.ActivePage := TSDestinatario;
        Editar;
        oException(EDFone,'Fone não Informado !');
      end;

      if length(TRIM(edcep.Text)) <> 8 then
      begin
        PCEdicao.ActivePage := TSDestinatario;
        Editar;
        oException(edcep,'Cep não Informado !');
      end;

      if oEmpty(EDNRO.Text) then
      begin
        PCEdicao.ActivePage := TSDestinatario;
        Editar;
        oException(EDNRO,'Número do logradouro do favorecido não informado !');
      end;

      if oEmpty(BECMun.Text) then
      begin
        PCEdicao.ActivePage := TSDestinatario;
        Editar;
        oException(BECMun,'Código Municipal não Informado !');
      end;

      if oEmpty(IExPais.Text) then
      begin
        PCEdicao.ActivePage := TSDestinatario;
        Editar;
        oException(IExPais,'País não Informado ou Incorreto !');
      end;

      if (oEmpty(EDTxNome.Text)) and ((IEFinNFe.Text <> '2') and (IEFinNFe.Text <> '3')) then
      begin
        PCEdicao.ActivePage := TSTransporte;
        Editar;
        oException(EDTxNome,'Transportadora não Cadastrada !');
      end;

      { Cep }
      if (EDCEP.Text <> EmptyStr) and (PEUF.Text <> 'EX') and (RECParametros.FIN_API) then
         with SQLConsulta do
         begin
           Close;
           SQL.Clear;
           SQL.Add('SELECT ID FROM TAB_CEP_LOG');
           SQL.Add('WHERE  CEP = '''+EDCEP.Text+'''');
           ExecQuery;

           if Current.Vars[0].AsInteger = 0 then
              if oYesNo(Self.Handle,'Cep informado pelo cliente não encontrado'+#13+
                                    'na nossa base de dados do Correio !'  +#13+#13+
                                    'Continuar ?') = mrNo then
                 Abort;
         end;

      if BCalc then
      try
        Tag := 1;
        NFE_001.DisableControls;
        NFE_001.First;
        if LeftStr(cbcnat.Text,1) = '3' then
        begin
          if (oEmpty(CEnAdicao.Text)) or (CEnAdicao.Text = '0') then
          begin
            Editar;
            oException(Nil,'Número da adição não informado !');
          end;
          while not NFE_001.Eof do
          begin
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
            NFE_001.Next;
          end;
        end else
        if LeftStr(cbcnat.Text,1) = '3' then
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
          NFE_001.Next;
        end;
      finally
        Tag := 0;
        NFE_001.EnableControls;
        oRTransact(TSheild);
      end;

      if (oTextToValor(edvst.Text) > 0) and (RECParametros.NFE_CRT <> 1) then
          if oYesNo(Handle,'Atenção !'                       +#13+
                           'NFe com substituição tributária.'+#13+
                           'É necessário a emissão e envio da guia tributária.') = mrNo then
         Abort;
    end;

    if not GERA_NFE then Abort;
           VALIDAR;
  end else EDITAR;

  Application.ProcessMessages;
end;

procedure Tfrmven_nfe.BAssClick(Sender: TObject);
var
  BRet: boolean;
begin
  BRet := False;

  SBMain.Panels[0].Text := 'Aguarde, assinando arquivo XML ...';
  SBMain.Panels[1].Text :=  EmptyStr;
  Application.ProcessMessages;

  try
    Screen.Cursor := crAppStart;
    BRet := (FileExists(PChar('C:\Sheild\NotaFiscal\NFe\arquivos\assinado\'+chNFe+'-assinado.xml')));

    if not BRet then
    SBMain.Panels[0].Text := 'Falha na assinatura' else

    if BRet then
    begin
      BRet := (ValidarArquivoXML(PChar('C:\Sheild\NotaFiscal\NFe\arquivos\assinado\'+chNFe+'-assinado.xml'),'nfe_v4.00.xsd',True) = 'OK');

      if BRet then
      begin
        SBMain.Panels[0].Text := 'Validação efetuada com sucesso';
        SBMain.Panels[1].Text := 'Nenhum erro identificado';
      end else
      begin
        SBMain.Panels[0].Text := 'Falha na validação';
        SBMain.Panels[1].Text := 'Problemas na validação da assinatura do arquivo XML. Verifique os erros encontrados';
      end;
    end;
  finally
    if BRet then
    begin
      BAss.Enabled := False;
      BTra.Enabled := True;
    end else
    Validar;

    Application.ProcessMessages;
    Screen.Cursor := crDefault;
  end;
end;

procedure Tfrmven_nfe.BTraClick(Sender: TObject);
begin
  _CheckErrors;
  if not GERA_LOTE then
  Abort;

  try
    FrmNFeConsultaSefaz := TFrmNFeConsultaSefaz.Create(Self,'Transmitindo NFe ...',RightStr(chNFe,44));
    FrmNFeConsultaSefaz.EMConsulta.Text := NfeRetAutorizacao(protNFe);

    Application.ProcessMessages;
    SleepEx(2000,False);

    FrmNFeConsultaSefaz.ShowModal;
  finally
    cStat   := FrmNFeConsultaSefaz.EDcStat.Text;
    protNFe := FrmNFeConsultaSefaz.EDprotNFe.Text;
    chNFe   := 'NFe' + FrmNFeConsultaSefaz.EDchNFe.Text;

    SBMain.Panels[3].Text := protNFe;
    SBMain.Refresh;

    FreeAndNil(FrmNFeConsultaSefaz);
  end;

  SBMain.Panels[0].Text := 'Pronto';
  SBMain.Panels[1].Text := 'Arquivo XML transmitido com sucesso';
  SBMain.Refresh;

  if (Pos(cStat,'100105110135') = 0) or (protNFe = EmptyStr) then
  begin
    SBMain.Panels[0].Text := 'Falha na transmissão';
    SBMain.Panels[1].Text := 'Verifique os erros e tente novamente';
    SBMain.Refresh;

    Editar;
    oException(Nil,'Falha na autorização da emissão !'+#13+
                   'Tente Novamente.');
  end;

  try
    SBMain.Panels[0].Text := 'Aguarde, registrando NFe ...';
    SBMain.Refresh;

    SALVA_NF;

    SBMain.Panels[0].Text := 'Pronto';
    SBMain.Panels[1].Text := 'NFe registrada com sucesso';
    SBMain.Refresh;
  except
    SBMain.Panels[0].Text := 'Falha no registro da NFe';
    SBMain.Refresh;
  end;

  try
    SBMain.Panels[0].Text := 'Aguarde, gerando danfe ...';
    SBMain.Refresh;

    GERA_DANFE;

    SBMain.Panels[0].Text := 'Pronto';
    SBMain.Panels[1].Text := 'Danfe gerada com sucesso';
    SBMain.Refresh;
  except
    SBMain.Panels[0].Text := 'Falha na geração da danfe';
    SBMain.Refresh;
  end;

  BAss.Enabled := false;
  BTra.Enabled := false;
  BVis.Enabled := True;
  BPri.Enabled := True;
  BEnv.Enabled := True;
  BFav.Enabled := False;
  BImp.Enabled := False;
  BVal.Enabled := False;

  ENVIA_EMAIL;
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
    frmemail.edtitulo.Text := RECParametros.DEEP+' - NF.: '+CECDNF.Text;
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
       FrmImporta_Geral := TFrmImporta_Geral.Create(Nil);
       FrmImporta_Geral.tsXML.Tag := LAIDCD.Tag;
  with FrmImporta_Geral do
  try
    ShowModal;
    if Editado then
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

             uPesquisa_Produto(RECParametros.Id,NFeNFE_CPROD.AsString,'SKU');
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
              SBMain.Panels[1].Text := 'Arquivo XML importado não possui informações da MODALIDADE DO FRETE !';
              SBMain.Refresh;

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

           oRTransact(frmven_nfe.TSheild);
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

             uPesquisa_Produto(RECParametros.Id,imp_iteROM_IPRO.AsString,'ID');
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

  SBMain.Refresh;

  CALCULA_FRETE;
  CALCULA_NF;

  PCEdicao.ActivePage := TSProduto;
  DBGNFE.SetFocus;
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
    SQL.Add('SELECT   FIRST 1 NFE_CNAT  FROM '+oREPZero('NFE_CAB','_',RECParametros.IDEP,3));
    SQL.Add('WHERE    NFE_CFAV = '''+CEIDCD.Text+'''');
    SQL.Add('ORDER BY CDNF DESC');
    ExecQuery;

    pesq  := IFThen(Current.Vars[0].AsString <> EmptyStr,Current.Vars[0].AsString,
             IFThen(PEUF.Text = RECParametros.SGUF,RECParametros.NFE_CFOPDUF,
             IFThen(PEUF.Text = 'EX','3102',RECParametros.NFE_CFOPFUF)));
    chave := 'C';
  end;

  if oEmpty(pesq) then
     Exit;

  with tab_nat do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM TAB_NAT');
    if chave = 'F' then
    SQL.Add('WHERE  NAT_DNAT = '''+pesq+'''') else if chave = 'C' then
    SQL.Add('WHERE  NAT_CNAT = '''+pesq+'''');
    Open;
  end;

  if tab_nat.RecNo > 0 then
  begin
    cbcnat.Text   := tab_natNAT_CNAT.AsString;
    cbdnat.Text   := tab_natNAT_DNAT.AsString;
    edtnat.Text   := tab_natNAT_TIPO.AsString;
    IETPNF.Text   := tab_natNAT_TPNF.AsString;
    IEFinNFe.Text := IFThen(tab_natNAT_TIPO.AsString = 'DEVOLUÇÃO','4','1');

    if BCalc then
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
             NFE_001.Post;
           end;
           NFE_001.Next;
         end;
       finally
         NFE_001.First;
         NFE_001.EnableControls;
         Tag := 0;

         oRTransact(TSheild);
       end;
  end;

  if Pos(CBCNAT.Text,'51236123') > 0 then
  begin
    edtnat.Text := edtnat.Text + ' TRIANGULAR';
    _SP_NFE_EMI('TRIANGULAR');
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
    SQL.Add('SELECT   FIRST 1 NFE_CTRA  FROM '+oREPZero('NFE_CAB','_',RECParametros.IDEP,3));
    SQL.Add('WHERE    NFE_CFAV = '''+CEIDCD.Text+'''');
    SQL.Add('ORDER BY CDNF DESC');
    ExecQuery;

    pesq  := IFThen(Current.Vars[0].AsInteger > 0,Current.Vars[0].AsString,RECParametros.IDCT_PAD);
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

    if not Current.Vars[0].IsNull then
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
      if Pos(IEModFrete.Text,'01') = 0 then
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
  SBMain.Panels[3].Text := EmptyStr;
  SBMain.Refresh;

  protNFe := EmptyStr;
  cStat   := EmptyStr;

  BVal.ImageIndex := 0;
  BVal.BtnCaption := 'Validar';

  PNLPrincipal.Enabled := true;

  BAss.Enabled := false;
  BTra.Enabled := false;
  BVis.Enabled := false;
  BPri.Enabled := false;
  BEnv.Enabled := false;
  BFav.Enabled := true;
  BImp.Enabled := true;
  BVal.Enabled := true;

  PCInfoA.ActivePageIndex := 0;
  Application.ProcessMessages;
end;

procedure Tfrmven_nfe.VALIDAR;
begin
  SBMain.Panels[3].Text := EmptyStr;
  SBMain.Refresh;
  
  protNFe := EmptyStr;
  cStat   := EmptyStr;

  BVal.ImageIndex := 10;
  BVal.BtnCaption := 'Editar';

  PNLPrincipal.Enabled := false;

  BAss.Enabled    := true;
  BVis.Enabled    := false;
  BPri.Enabled    := false;
  BEnv.Enabled    := false;
  BFav.Enabled    := false;
  BImp.Enabled    := false;

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

    InfAd.BeginUpdate;
    InfAd.Clear;

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

    InfAd.Clear;

    if Pos(IEFinNFe.Text,'23') > 0 then
       Exit;

    if RECParametros.NFE_CRT = 1 then
    begin
      InfAd.Add('I  - DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL.|');
      InfAd.Add('II - NAO GERA DIREITO A CREDITO FISCAL DE IPI.|');
    end else
    begin
      if (PEUF.Text = RECParametros.SGUF) and (PEUF.Text = 'SP') then
          if NFE_001.Locate('NFE_NCM;NFE_PICMS',VarArrayOf(['39181000','12']),[]) then
          begin
            InfAd.Add('Aliquota de Icms de 12% conforme determina Artigo 54, Inciso VIII 22 Item 22');
            InfAd.Add('|');
          end;
    end;

    if CEVCREDICMSSN.Value > 0 then
    begin
      InfAd.Add(Trim('Permite o aproveitamento do credito de ICMS no valor de '+FormatFloat('R$ #,0.00',oTextToValor(CEVCREDICMSSN.Value)))            +'|');
      InfAd.Add(Trim('Correspondente a aliquota de '+FormatFloat('#,0.00%',RECParametros.NFE_CREDITO_ICMS)+' nos termos do Art. 23 DA LC 123, de 2006')+'|');
    end;

    if (oTextToValor(edvst.Text) > 0) and (RECParametros.NFE_CRT <> 1) then
        InfAd.Add('ICMS calculado por substituicao tributaria conforme Artigo 313-Y'+'|');

    if EDISUF.Text <> EmptyStr then
    begin
      InfAd.Add(Trim('Suframa: '+EDISUF.Text)+'|');

      if not RECRomaneio.ZFM_CMUN then
      InfAd.Add('Isenção de ICMS conforme convenio no 65 de 1988|');
      InfAd.Add('IPI suspenso conforme Artigo no 84 do Decreto 7.212/2010|');
      InfAd.Add('PIS/COFINS aliquota zero conforme Artigo 2o da Lei 10.996/04|');

      if RECRomaneio.ZFM_CMUN then
      begin
        InfAd.Add('');
        InfAd.Add('Remessa para zona franca de manaus ou area de livre comercio|');
        InfAd.Add('ICMS Isento conforme Artigo no 84 do Anexo I do RICMS/SP. Desconto de 7% - ICMS: ' + FormatFloat('R$ #,0.00',oTextToValor(edvicmsdeson.Text)) + '|');
      end;
    end;

    if (IERegime.Text = '1') and (IECredICMS.Text = '1') and (Pos(cbcnat.Text,'51016101') > 0)  then
    begin
      InfAd.Add('Reducao da base de calculo do ICMS nos termos do anexo II artigo 52 do RICMS|');
      InfAd.Add(Trim('Decreto no 62.560/2017 (DOE de 06.05.2017) = '+FormatFloat('#,0.00%',NFE_001NFE_PREDBC.AsFloat))+'|');
    end;

    try
      CLI_001.DisableControls;
      CLI_001.First;
      if CLI_001.RecNo > 0 then
         InfAd.Add('|');
      while not CLI_001.Eof do
      begin
        if CLI_001.RecNo = 1 then
        InfAd.Add('NF de Retorno ('+RightStr(cbcnat.Text,4)+') Ref. a(s) NF(s).: |');
        InfAd.Add(CLI_001NFE_CDNF.AsString+' de '+CLI_001NFE_DCAD.AsString+' '+FormatFloat('Valor de R$ #,0.00',CLI_001NFE_VNF.AsFloat)+'  ');
        CLI_001.Next;
      end;
    finally
      CLI_001.EnableControls;
    end;

    if oTrimValor(EDvICMSUFDest.Text) > 0 then
    begin
      InfAd.Add('Valor Total ICMS Interestadual UF Destino: '+FormatFloat('Valor de R$ #,0.00',oTrimValor(EDvICMSUFDest.Text)));
      InfAd.Add('|');
    end;

    if EDidEstrangeiro.Text <> '' then
    begin
      InfAd.Add(Trim('|Passaporte '+EDidEstrangeiro.Text)+'|');
    end;

    if EDINFADNF.Lines.Count > 0 then
    begin
      for i := 0 to EDINFADNF.Lines.Count - 1 do
      InfAd.Add(oREPAcentos(oPrimeiraLetraMaiuscula(EDINFADNF.Lines[i]))+'|');
    end;

    { Retira todo o texto encontrado em TXTCFOP e move para TXTInfAd }
    TXTCFOP := oPrimeiraLetraMaiuscula(tab_natNAT_OBSE.AsString);
    if TXTCFOP <> EmptyStr then
       InfAd.Add('|');

    While Length(TXTCFOP) > 0 do
    begin
      TXTInfAd := oREPAcentos(Fetch(TXTCFOP,#$D#$A));
      if Length(TXTInfAd) > 0 then
         InfAd.Add(TXTInfAd+'|');
    end;
  finally
    InfAd.EndUpdate;
    EDInfAdFisco.Text := InfAd.Text;
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
    if uPesquisa_Produto(RECParametros.Id,ADTXT,AFTXT,'LIKE','','%') > 0 then
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
  Application.ProcessMessages;
  ActiveControl := Nil;
  
  if Length(chNFe) < 44 then
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
      SQL.Add('SELECT GEN_ID(ID_NO_'+oREPZero('NFE_CAB','_',RECParametros.IDEP,3)+',0) FROM RDB$DATABASE');
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

    SPEdicao.ParamByName('nfe').Value       := oREPZero('NFE_TRA','_',RECParametros.Id,3);
    SPEdicao.ParamByName('id').Value        := 0;
    SPEdicao.ParamByName('CCAB').Value      := AID;
    SPEdicao.ParamByName('CTRA').Value      := CEIDCT.Value;
    SPEdicao.ParamByName('CFRT').Value      := EDCFRT.Text;
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

      SPEdicao.ParamByName('nfe').Value  := oREPZero('NFE_CLI','_',RECParametros.Id,3);
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
  if protNFe <> 'D' then
  try
    DUP_001.First;
    while not DUP_001.Eof do
    begin
      SPEdicao.Close;
      SPEdicao.StoredProcName := 'SP_NFE_DUP';
      SPEdicao.Prepare;

      SPEdicao.ParamByName('nfe').Value  := oREPZero('NFE_DUP','_',RECParametros.Id,3);
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

        SPEdicao.ParamByName('nfe').Value            := oREPZero('NFE_ITE','_',RECParametros.Id,3);
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

    SPEdicao.ParamByName('nfe').Value          := oREPZero('NFE_CAB','_',RECParametros.Id,3);
    SPEdicao.ParamByName('id').Value           := 0;
    SPEdicao.ParamByName('REST').Value         := IFThen(protNFe = 'D','D','A' );
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
    SPEdicao.ParamByName('CFRT').Value         := EDCFRT.Text;
    SPEdicao.ParamByName('CNAT').Value         := cbcnat.Text;
    SPEdicao.ParamByName('INDPAG').Value       := IEINDPAG.Text;
    SPEdicao.ParamByName('TPNF').Value         := IETPNF.Text;
    SPEdicao.ParamByName('NFREF').Value        := '0';
    SPEdicao.ParamByName('REFNFE').Value       := '';
    SPEdicao.ParamByName('CUFREF').Value       := RECParametros.SGUF;
    SPEdicao.ParamByName('CNPJREF').Value      := RECParametros.Cnpj;
    SPEdicao.ParamByName('MODREF').Value       := '01';
    SPEdicao.ParamByName('SERIEREF').Value     := RECParametros.NFE_SERIE;
    SPEdicao.ParamByName('NNFREF').Value       := '0';
    SPEdicao.ParamByName('TPEMIS').Value       := '1';
    SPEdicao.ParamByName('FINNFE').Value       := IEFinNFe.Text;
    SPEdicao.ParamByName('CHAV').Value         := RightStr(chNFe,44);
    SPEdicao.ParamByName('PROT').Value         := TRIM(protNFe);
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
    oAviso(handle,IFThen(protNFe <> 'D','Nota fiscal transmitida com sucesso !','Nota Fiscal Denegada !'+#13+#13+
                                                                                'Possível problemas fiscais junto à receita federal.'+#13+
                                                                                'Favor entrar em contato com o cliente e/ou representante.'));
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

  if (protNFe <> 'D') and (CECDRO.Value > 0) then
      if  RECRomaneio.FIN_CSPD then
          bBAI_FINANCEIRO(IFThen(DUP_001Id.AsInteger > 0,Trunc(CECDNF.Value),0),IFThen(DUP_001Id.AsInteger > 0,0,RECRomaneio.IDFK)) else
      if (RECRomaneio.FAPD) and (DUP_001Id.AsInteger > 0) then
          bBAI_FINANCEIRO(Trunc(CECDNF.Value),0);

  Enviado := True;
  ExecEvent;
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
  oAppend(NFE_001,DBGNFE);
end;

procedure Tfrmven_nfe.siALTClick(Sender: TObject);
begin
  oEdit(NFE_001,DBGNFE);
end;

procedure Tfrmven_nfe.siDELClick(Sender: TObject);
begin
  if oYesNo(handle,'Excluir Item Nº '+NFE_001NFE_ITEMPED.AsString+' ?') = mrNo then
     Abort;

  NFE_001.Delete;
end;

procedure Tfrmven_nfe.siSAVClick(Sender: TObject);
begin
  oPost(NFE_001,DBGNFE);
end;

procedure Tfrmven_nfe.siCANClick(Sender: TObject);
begin
  oCancel(NFE_001,DBGNFE);
end;

procedure Tfrmven_nfe.NFE_001AfterDelete(DataSet: TDataSet);
begin
  CALCULA_NF;
end;

procedure Tfrmven_nfe.NFE_001BeforeOpen(DataSet: TDataSet);
begin
  DBGNFE.Bands[6].Visible := False; { Substituição Tributária }
  DBGNFENFE_NFCI.Visible  := False; { NFCI }
end;

procedure Tfrmven_nfe.NFE_001AfterScroll(DataSet: TDataSet);
begin
  { Substituição Tributária }
  if NFE_001NFE_PICMSST.AsCurrency > 0 then
  DBGNFE.Bands[6].Visible := True;

  { NFCI }
  if NFE_001NFE_NFCI.AsString <> EmptyStr then
  DBGNFENFE_NFCI.Visible := True;
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
  cbprz.Enabled  := (cbdupl.Text = 'SIM') or (cbdupl.Text = '');
  cbDPAG.Enabled := (cbdupl.Text = 'SIM') or (cbdupl.Text = '');

  if Tag = 0 then DUPLICATAS;
end;

procedure Tfrmven_nfe.DUP_001AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  if (Tag = 0) and (BCalc) then
  begin
    wRec := DUP_001.GetBookmark;

    TSheild.CommitRetaining;
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
  TSheild.CommitRetaining;
  DUP_001.Close;
  DUP_001.Open;
  Duplicatas;
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

procedure Tfrmven_nfe.DBGNFEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if NFE_001.State in [dsInsert,dsEdit] then
                 begin
                   if Pos(DBGNFE.FocusedField.FieldName,'NFE_CPRODNFE_NCMNFE_XPROD') > 0 then
                      try
                        oOTransact(FBird.TFBProdutos);
                        _CPPSQ(oRETCodigo(DBGNFE.EditingText),IFThen(Pos(DBGNFE.FocusedField.FieldName,'NFE_CPROD') > 0,'CP.PRO_CPRO',
                                                              IFThen(Pos(DBGNFE.FocusedField.FieldName,'NFE_NCM'  ) > 0,'CP.NCM','CP.PRO_DPRO')));
                        DBGNFENFE_QCOM.Field.FocusControl;
                      finally
                        oCTransact(FBird.TFBProdutos);
                      end else
                   if  DBGNFE.FocusedField.FieldName = 'NFE_QCOM' then
                       DBGNFENFE_VUNCOM.Field.FocusControl else
                   if (DBGNFE.FocusedField.FieldName = 'NFE_VUNCOM') and (DBGNFENFE_UTRIB.Visible) then
                       DBGNFENFE_UTRIB.Field.FocusControl else
                   if (DBGNFE.FocusedField.FieldName = 'NFE_VUNCOM') and (not DBGNFENFE_UTRIB.Visible) then
                       DBGNFENFE_VPROD.Field.FocusControl else
                       DBGNFE.FocusedAbsoluteIndex := DBGNFE.FocusedAbsoluteIndex + 1;

                   if ((DBGNFE.FocusedField.FieldName = 'NFE_QCOM') or (DBGNFE.FocusedField.FieldName = 'NFE_VUNCOM') or (DBGNFE.FocusedField.FieldName = 'NFE_VDESS')) and
                       (DBGNFENFE_VPROD.Field.AsFloat > 0) then
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

    DBGNFENFE_QCOM.Tag := 0;
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
  if DBGNFENFE_QCOM.Tag = 1 then
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

procedure Tfrmven_nfe.DBGNFEDblClick(Sender: TObject);
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

procedure Tfrmven_nfe.DBGNFECustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
     if ANode.Values[DBGNFENFE_FLAG.Index] = '1' then
     begin
       AColor      := clGrayText;
       AFont.Color := clwhite;
     end else
     begin
       if (AColumn = DBGNFENFE_ITEMPED) or (AColumn = DBGNFENFE_CPROD) then
       begin
         AColor      := clGray;
         AFont.Color := clWhite;
       end;

       if AColumn = DBGNFENFE_XPED then
       begin
         AColor      := clBtnFace;
         AFont.Color := clBlack;
       end;

       if AColumn = DBGNFENFE_VUNCOM then
       begin
         AColor      := clBtnFace;
         AFont.Color := clBlack;
         AFont.Style := [fsBold];
       end;

       if (AColumn = DBGNFENFE_VNF) then
       begin
         AColor      := $00D69F30;
         AFont.Color := clWhite;
         AFont.Style := [fsBold];
       end;

       if (AColumn = DBGNFENFE_VDESC) and (ANode.Values[DBGNFENFE_VDESC.Index] > 0) then
           AFont.Style := [fsBold];

       if (AColumn = DBGNFENFE_VICMS) and (ANode.Values[DBGNFENFE_VICMS.Index] > 0) then
       begin
         AColor      := clInfoBk;
         AFont.Color := clBlack;
         AFont.Style := [fsBold];
       end;

       if (AColumn = DBGNFENFE_PREDBC) and (ANode.Values[DBGNFENFE_PREDBC.Index] > 0) then
       begin
         AColor      := clBtnFace;
         AFont.Color := clBlack;
       end;

       if (AColumn = DBGNFENFE_VICMSST) and (ANode.Values[DBGNFENFE_VICMSST.Index] > 0) then
       begin
         AColor      := clInfoBk;
         AFont.Color := clBlack;
         AFont.Style := [fsBold];
       end;

       if (AColumn = DBGNFENFE_VIPI) and (ANode.Values[DBGNFENFE_VIPI.Index] > 0) then
       begin
         AColor      := clInfoBk;
         AFont.Color := clBlack;
         AFont.Style := [fsBold];
       end;

       if (AColumn = DBGNFENFE_EXTIPI) and (not oEmpty(ANode.Values[DBGNFENFE_EXTIPI.Index])) then
       begin
         AColor      := clBtnFace;
         AFont.Color := clBlack;
       end;

       if (AColumn = DBGNFENFE_CEST) and (not oEmpty(ANode.Values[DBGNFENFE_CEST.Index])) then
       begin
         AColor      := clBtnFace;
         AFont.Color := clBlack;
       end;

       if AColumn = DBGNFENFE_CENQ then
       begin
         AColor      := clBtnFace;
         AFont.Color := clBlack;
       end;

       if (AColumn = DBGNFENFE_VPIS) and (ANode.Values[DBGNFENFE_VPIS.Index] > 0) then
       begin
         AColor      := clInfoBk;
         AFont.Color := clBlack;
       end;

       if (AColumn = DBGNFENFE_VCOFINS) and (ANode.Values[DBGNFENFE_VCOFINS.Index] > 0) then
       begin
         AColor      := clInfoBk;
         AFont.Color := clBlack;
       end;
     end;
end;

procedure Tfrmven_nfe.DBGNFENFE_QCOMValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGNFENFE_QCOM.Tag := IFThen(Length(cbcnat.Text) > 4,1,0);
end;

procedure Tfrmven_nfe.DBGNFENFE_VUNCOMValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGNFENFE_QCOM.Tag := IFThen(Length(cbcnat.Text) > 4,1,0);
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

procedure Tfrmven_nfe.DUP_001BeforePost(DataSet: TDataSet);
begin
  DUP_001NFE_TITU.Value := Trim(DUP_001NFE_TITU.AsString);
  DUP_001NFE_DVEN.Value := DUP_001NFE_DVEN.AsDateTime;
end;

function Tfrmven_nfe.GERA_NFE: Boolean;
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

  tProd : arraybi;
  x: word;
  BRet: Boolean;
begin
  SBMain.Panels[0].Text := 'Aguarde, gerando arquivo XML ...';
  SBMain.Panels[1].Text :=  EmptyStr;
  SBMain.Refresh;
  SleepEx(1000,False);

  try
    Screen.cursor:=crAppStart;
    NFE_001.First;

    SetLength(tIde    ,44);              //ide
    SetLength(tEmit   ,15);              //emit
    SetLength(tDest   ,56);              //dest
    SetLength(tProd   ,EDTRCom.Tag,236); //prod
    SetLength(tTotal  ,48);              //total
    SetLength(tTransp ,28);              //transp
    SetLength(tCobr   ,11);              //cobr
    SetLength(tPag    ,14);              //pag
    SetLength(tInfAdic,25);              //infAdic
    SetLength(autXML  ,1);               //autXML

    {Tag do Grupo das informações de identificação da NFe }
    tIde[00] := RECParametros.SGUF;  //<cUF> Código da UF do emitente do Documento Fiscal
//  tIde[01] := IntToStr(Random(CECDNF.Value)+1); //<cNF> Código Numérico que compõe a chNFe de Acesso - Numero aleatorio: apenas 8 digitos: NF-e 2.00
    tIde[01] := oStrZero(DayOf(DEdhEmi.Date),8-Length(CECDNF.Text)) + CECDNF.Text;        //<cNF> Código Numérico que compõe a chNFe de Acesso - Numero aleatorio: apenas 8 digitos: NF-e 2.00
    tIde[02] := oREPAcentos(cbdnat.Text); //<natOp>  Descrição da Natureza da Operação
    tIde[03] := '';                       //<indPag> Indicador da forma de pagamento - Retirado na versão 4.00
    tIde[04] := '55';                     //<mod>    Código do Modelo do Documento Fiscal
    tIde[05] := RECParametros.NFE_SERIE;  //<serie>  Série do Documento Fiscal
    tIde[06] := CECDNF.Text;              //<nNF>    Número do Documento Fiscal

    tIde[07] := FormatDatetime('yyyy-mm-dd',DEdhEmi.Date)    + 'T' + FormatDateTime('hh:nn:ss',now) + RECParametros.SHEILD_TIMEZONE; //<dhEmi>  Data e hora de emissão do Documento Fiscal
    tIde[08] := FormatDatetime('yyyy-mm-dd',DEdhSaiEnt.Date) + 'T' + FormatDateTime('hh:nn:ss',now) + RECParametros.SHEILD_TIMEZONE; //<dhSaiEnt>  Data e hora de Saída ou da Entrada da Mercadoria/Produto

    tIde[09] := IETPNF.Text;        //<tpNF>   Tipo de Operação - 0=Entrada; 1=Saída
    tIde[10] := RECParametros.CMUN; //<cMunFG> Código do Município de Ocorrência do Fato Gerador - composto de 7 dígitos numéricos
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

    tIde[35] := IFThen(PEUF.Text = 'EX','3',IFThen(PEUF.Text = RECParametros.SGUF,'1','2')); //<idDest> Identificador de local de destino da operação
    tIde[36] := '9'; //<indPres> Indicador de presença do comprador no estabelecimento comercial no momento da operação
    tIde[40] := 'Sheild v4.00.5';

    tIde[41] := '0'; //indIntermed; 0 - Operação sem intermediador (em site ou plataforma própria); 1 - Operação em site ou plataforma de terceiros (intermediadores/marketplace)
    tIde[42] := '';  //CNPJ - Informar o CNPJ do Intermediador da Transação (agenciador, plataforma de delivery, marketplace e similar) de serviços e de negócios.
    tIde[43] := '';  //idCadIntTran  - Nome do usuário ou identificação do perfil do vendedor no site do intermediador (agenciador, plataforma de delivery, marketplace e similar) de serviços e de negócios.


    { Tag de Grupo de identificação do emitente da NF-e }
    tEmit[00] := RECParametros.DEEP;  //<xNome>
    tEmit[01] := RECParametros.RZEP;   //<xFant>
    tEmit[02] := RECParametros.TPLOG+' '+ //<xLgr>
                 RECParametros.NOLOG;
    tEmit[03] := RECParametros.NULOG;     //<nro>
    tEmit[04] := RECParametros.COLOG;     //<xCpl>
    tEmit[05] := RECParametros.NOBAI;     //<xBairro>
    tEmit[06] := RECParametros.CMUN;      //<cMun> composto de 7 dígitos numéricos
    tEmit[07] := RECParametros.NOCID;     //<xMun>
    tEmit[08] := RECParametros.NUCEP;     //<CEP>
    tEmit[09] := RECParametros.C_NUTEL;   //<fone>
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
    tTransp[00] := IEModFrete.Text;                                                     //<modFrete>
    tTransp[01] := oREPTxt(IFThen(Length(EDTCNPJ.Text) = 14,EDTCNPJ.Text,EDTCPF.Text)); //<CNPJ> ou <CPF>
    tTransp[02] := oREPAcentos(EDTxNome.Text);                                          //<xNome>
    tTransp[03] := IFThen(Length(EDTCNPJ.Text) = 14,PETIE.Text,'ISENTO');               //<IE>

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

    if IETPAG.Text    = '90' then
       IEINDPAG.Text := '90';

    tPag[00] := IETPAG.Text+';'; //<tPag> Forma de Pagamento
    tPag[01] := IFThen(IETPAG.Text   = '90','0.00;',oTextToValor(IFThen(cbdupl.Text = 'SIM',EDVDup.Text,EDVNF.Text),2,True)+';'); //<vPag> Valor do Pagamento
    tPag[07] := IFThen(IEINDPAG.Text = '90',EmptyStr,IEINDPAG.Text+';'); //<indPag> Indicador de pgto 0|1

    tPag[02] := ''; // '01;';            //<tpIntegra> Tipo de Integração do processo de pagamento com o sistema de automação da empresa
    tPag[03] := ''; // '9999999999999;'; //<CNPJ> CNPJ da Credenciadora do Cartão
    tPag[04] := ''; // 'visa;';          //<tBand> Bandeira da Operadora do Cartão
    tPag[05] := ''; // '1234;';          //<cAut> Numero de Autorização da Operação

    {* 1=Pagamento integrado com o sistema de automação da empresa (Ex.: equipamento TEF, Comércio Eletrônico);
     * 2= Pagamento não integrado com o sistema de automação da empresa (Ex.: equipamento POS); }

    if Pos(IETPAG.Text,'030410111213151718') > 0 then
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
      INFAD.Add('** CONTAINER No ..: ' + V1_EDMARCA.Text + '  ' + V1_CENVOL.Text);
      INFAD.Add('|');
    end;

    if InfAd.Count > 0 then
    begin
      for x := 0 to InfAd.Count - 1 do
      //if Trim(InfAd.Strings[x]) <> '|' then
      tInfAdic[x]             := Trim(InfAd.Strings[x]);
      tInfAdic[InfAd.Count-1] := LeftStr(tInfAdic[InfAd.Count-1],Length(tInfAdic[InfAd.Count-1])-1);
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

    chNFe := GeraNFe(tIde,tEmit,tDest,tProd,tTotal,tTransp,tCobr,tPag,tInfAdic,autXML,True);
   
    if Length(chNFe) >= 44 then
    begin
      BRet := True;
      SBMain.Panels[0].Text := 'Arquivo XML gerado com sucesso';
      SBMain.Panels[1].Text := 'C:\Sheild\NotaFiscal\NFe\' + chNFe + '.xml';
    end else
    begin
      BRet := False;
      SBMain.Panels[0].Text := 'Falha na geração do arquivo XML';
      SBMain.Panels[1].Text := EmptyStr;
    end;
  finally
    Screen.cursor := crDefault;
  end;

  SBMain.Panels[2].Text := chNFe;
  SBMain.Refresh;

  Application.ProcessMessages;
  result := BRet;
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
    oRTransact(TSheild);

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
    IEINDPAG.Text := '90';

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
    IEINDPAG.Text := '90';
  end;
end;

procedure Tfrmven_nfe.IEModFreteExit(Sender: TObject);
var
  Ctrl: TWinControl;
begin
  try
    DUPLICATAS;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := Nil;
    if ctrl <> Nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
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
    PEUFTerceiro.Text      := RECParametros.SGUF;
    EDcExportador.Text     := oStrZero(RECParametros.Id,4);
    EDcFabricante.Text     := oStrZero(RECParametros.Id,4);
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
    DBGNFE.SetFocus;
  end;
end;

procedure Tfrmven_nfe.NFE_001AfterInsert(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    DBGNFE.FocusedAbsoluteIndex := 2;
    if (PCEdicao.ActivePageIndex = 0) and (PNLPrincipal.Enabled) then
    DBGNFE.SetFocus;
  end;
end;

procedure Tfrmven_nfe.DBGNFENFE_VBCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (IEFinNFe.Text = '2') or (IEFinNFe.Text = '3') then
  begin
    NFE_001NFE_VBC.Value := StrToFloat(DBGNFE.EditingText);
    if NFE_001NFE_VBC.AsFloat > 0 then
    begin
      NFE_001NFE_PICMS.Value := IFThen(NFE_001NFE_PICMS.Value = 0,StrToFloat(NewPICMS),NFE_001NFE_PICMS.AsFloat);
      NFE_001NFE_VICMS.Value := RoundTO((NFE_001NFE_VBC.AsFloat*NFE_001NFE_PICMS.AsFloat)/100,-2);
    end;
  end;
end;

procedure Tfrmven_nfe.DBGNFENFE_PICMSValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (IEFinNFe.Text = '2') or (IEFinNFe.Text = '3') then
  begin
    NFE_001NFE_PICMS.Value := StrToFloat(DBGNFE.EditingText);
    if NFE_001NFE_PICMS.AsFloat > 0 then
    begin
      NFE_001NFE_VBC.Value   := IFThen(NFE_001NFE_VBC.AsFloat = 0,StrToFloat(NewVBC),NFE_001NFE_VBC.AsFloat);
      NFE_001NFE_VICMS.Value := RoundTO((NFE_001NFE_PICMS.AsFloat*NFE_001NFE_VBC.AsFloat)/100,-2);
    end;
  end;
end;

procedure Tfrmven_nfe.DBGNFENFE_VICMSValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (IEFinNFe.Text = '2') or (IEFinNFe.Text = '3') then
  begin
    NFE_001NFE_VICMS.Value := StrToFloat(DBGNFE.EditingText);
    if NFE_001NFE_VICMS.AsFloat > 0 then
    begin
      NFE_001NFE_PICMS.Value := IFThen(NFE_001NFE_PICMS.AsFloat = 0,StrToFloat(NewVBC),NFE_001NFE_PICMS.AsFloat);
      NFE_001NFE_VBC.AsFloat := RoundTO((NFE_001NFE_VICMS.AsFloat/NFE_001NFE_PICMS.AsFloat)*100,-2);
    end;
  end;
end;

procedure Tfrmven_nfe.DBGNFENFE_VBCIPIValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (IEFinNFe.Text = '2') or (IEFinNFe.Text = '3') then
  begin
    NFE_001NFE_VBCIPI.Value := StrToFloat(DBGNFE.EditingText);
    if NFE_001NFE_VBCIPI.AsFloat > 0 then
    begin
      NFE_001NFE_PIPI.Value   := IFThen(NFE_001NFE_PIPI.Value = 0,StrToFloat(NewPIPI),NFE_001NFE_PIPI.AsFloat);
      NFE_001NFE_VIPI.Value   := RoundTO((NFE_001NFE_VBCIPI.AsFloat*NFE_001NFE_PIPI.AsFloat)/100,-2);
    end;
  end;
end;

procedure Tfrmven_nfe.DBGNFENFE_PIPIValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (IEFinNFe.Text = '2') or (IEFinNFe.Text = '3') then
  begin
    NFE_001NFE_PIPI.Value   := StrToFloat(DBGNFE.EditingText);
    if NFE_001NFE_PIPI.AsFloat > 0 then
    begin
      NFE_001NFE_VBCIPI.Value := IFThen(NFE_001NFE_VBCIPI.AsFloat = 0,StrToFloat(NewVBCIPI),NFE_001NFE_VBCIPI.AsFloat);
      NFE_001NFE_VIPI.Value   := RoundTO((NFE_001NFE_PIPI.AsFloat*NFE_001NFE_VBCIPI.AsFloat)/100,-2);
    end;
  end;
end;

procedure Tfrmven_nfe.DBGNFENFE_VIPIValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (IEFinNFe.Text = '2') or (IEFinNFe.Text = '3') then
  begin
    NFE_001NFE_VIPI.Value   := StrToFloat(DBGNFE.EditingText);
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

procedure Tfrmven_nfe.DBGNFENFE_VPRODValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  NFE_001NFE_VPROD.Value := oTextToValor(DBGNFE.EditingText);
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
      SQL.Add('FROM '+oREPZero('ROM_CAB','_',RECParametros.IDEP,3)+' AS PK');
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

procedure Tfrmven_nfe.DBGNFENFE_NCMValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGNFE.EditingText := Trim(DBGNFE.EditingText);
  if (NFE_001.State in [dsInsert,dsEdit]) and (DBGNFE.EditingText <> EmptyStr) and (DBGNFE.EditingText <> NFE_001NFE_NCM.AsString) then
  begin
    NFE_001NFE_NCM.Value := DBGNFE.EditingText;

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

procedure Tfrmven_nfe._CheckErrors;
begin
  AID  := 0;
  ADIF := 0;

  { Verifica furos na numeração }
  if not uPSQNotaFiscal(CECDNF.Text) then
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
            RECDefault.ASQLEdicao := SQLEdicao;
       with RECDefault.ASQLEdicao do
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
         REC_SHE_DEF.AIDPK := '0';
         REC_SHE_DEF.AIDCP := NFE_001NFE_CPROD.AsString;

         SPEdicao.Close;
         SPEdicao.StoredProcName := 'SP_CAD_PRO';
         SPEdicao.Prepare;

         SPEdicao.ParamByName('ID').Value   := 0;
         SPEdicao.ParamByName('IDEP').Value := RECParametros.Id;

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

         SPEdicao.ParamByName('IDCF').Value   := RECParametros.Id;
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
  if (IEINDPAG.Text <> '2') and (TAB_PAG.RecNo > 0) then
      IEINDPAG.Text := IFThen(TAB_PAGPAG_PARC.AsInteger > 1,'1','0');

  if (RECParametros.ID = 2) and (IETPAG.Text = '99') then { Ricardo - E-armarinhos }
      IETPAG.Text := '18'

end;

procedure Tfrmven_nfe.SBMainResize(Sender: TObject);
begin
  SBMain.Panels[1].Width := SBMain.Panels[0].Width + SBMain.Panels[2].Width + SBMain.Panels[3].Width;
  SBMAin.Refresh;
end;

procedure TFrmven_nfe.ExecEvent;
var
  i: word;
begin
  try
    oOTransact(TEvent);

    SPEvent.Close;
    SPEvent.StoredProcName := 'SP_FB_EVENT';
    SPEvent.Prepare;

    for i := 0 to SPEvent.ParamCount - 1 do
    SPEvent.Params[i].Value := Null;

    SPEvent.ParamByName('AFB_EVENT_001').Value := oREPZero('CTR_PED','_',RECParametros.Id,3);
    SPEvent.ParamByName('AFB_EVENT_002').Value := TRIM(oREPZero('CTR_ROM','_',RECParametros.ID,3) + IFThen(Pos(RECUsuarios.Grupo,'VENEXPPCPQLDCOMCRI') > 0,'_' + RECUsuarios.ID,''));
    SPEvent.ExecProc;

    oCTransact(TEvent);
  except
    on E: Exception do
    begin
      oCTransact(TEvent,ltRollback);
      oException(Nil,'Falha ao tentar salvar evento !'+#13+
                     'Evento: '    +oREPZero('CTR_PED','_',RECParametros.Id,3)+'.'+#13+#13+
                     'Formulário: '+Self.Name+'.'     +#13+#13+
                     'Error Code: '+E.Message+'.');
    end;
  end;
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
  DBGNFE.SetFocus;
  DBGNFE.FocusedAbsoluteIndex := DBGNFENFE_VDESC.ColIndex;
end;

procedure Tfrmven_nfe.CECDNFValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if CECDNF.Value = 0 then
     oException(Nil,'Número da Nota Fiscal não Informado !');

  if (CECDNF.Tag <> CECDNF.Value) and (CECDNF.Tag > 0) then
  begin
    chNFe := EmptyStr;

    SBMain.Panels[2].Text := EmptyStr;
    SBMain.Refresh;

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

  oRTransact(TSheild);
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
        oRTransact(TSheild);
        Tag := 0;
     end;
end;

procedure Tfrmven_nfe.DUPLICATAS;
var
  i: word;
begin
  try
    EDVDup.Text := '0';
    TAG := 1;

    TAB_PAG.Close;
    TAB_PAG.Params[0].Value := CBDPAG.Text;
    TAB_PAG.Open;

    if DUP_001.RecordCount > 0 THEN
       with SQLSEdicao do
       begin
         Close;
         SQL.Clear;
         SQL.Add('DELETE FROM NFE_DUP');
         ExecQuery;

         TSheild.CommitRetaining;
         DUP_001.Close;
         DUP_001.Open;
       end;

    if (BCalc) and (cbdupl.Text = 'SIM') and (cbdpag.Text <> EmptyStr) then
    begin
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
      end;

      TSheild.CommitRetaining;
      DUP_001.Close;
      DUP_001.Open;
    end;
  except
    cbdupl.Text := 'NÃO';
    TAG := 0;
  end;

  TAG := 0;
end;

procedure Tfrmven_nfe.CEIDCDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  RECRomaneio.AWinControl := TWinControl(Sender);
  RECRomaneio.AQConsulta  := QConsulta;
  RECRomaneio.CDCD        := IntToStr(LAIDCD.Tag);

  try uPSQCAD(RECRomaneio);
  finally
    if RECRomaneio.Selected then
    begin
      CEIDCD.Value := RECRomaneio.IDCD;
      EDDECD.Text  := RECRomaneio.DECD;

      EDxNome.Text   := RECRomaneio.RZCD;
      PEEmail.Text   := RECRomaneio.EMAIL;
      IEEnvMail.Text := IFThen(RECRomaneio.ENVEMAIL,'1','0');
      edCNPJ.Text    := RECRomaneio.CNPJ;
      edCPF.Text     := RECRomaneio.CPF;
      EDISUF.Text    := RECRomaneio.ISUF;

      edDDD.Text     := RECRomaneio.DDD;
      EDFone.Text    := RECRomaneio.TEL;
      EDContato.Text := RECRomaneio.CONTATO;

      { Endereço Comercial }
      PETxLgr.Text   := RECRomaneio.TLO_TX;
      EDxLgr.Text    := RECRomaneio.LOG_NO;
      EDNRO.Text     := RECRomaneio.NRO;
      EDxCpl.Text    := RECRomaneio.XCPL;
      edCEP.Text     := RECRomaneio.CEP;
      EDxBairro.Text := RECRomaneio.BAI_NO;
      EDxMun.Text    := RECRomaneio.LOC_NO;
      BECMun.Text    := RECRomaneio.CMUN;
      PEUF.Text      := RECRomaneio.UF;

      { Endereço Entrega }
      PEETxLgr.Text   := RECRomaneio.ENT_TLO_TX;
      EDExLgr.Text    := RECRomaneio.ENT_LOG_NO;
      EDENRO.Text     := RECRomaneio.ENT_NRO;
      EDExCpl.Text    := RECRomaneio.ENT_XCPL;
      edECEP.Text     := RECRomaneio.ENT_CEP;
      EDExBairro.Text := RECRomaneio.ENT_BAI_NO;
      EDExMun.Text    := RECRomaneio.ENT_LOC_NO;
      PEECMun.Text    := RECRomaneio.ENT_CMUN;
      PEEUF.Text      := RECRomaneio.ENT_UF;

      IERegime.Text   := RECRomaneio.FIS_CRT;
      IECredICMS.Text := RECRomaneio.FIS_CREDICMS;

      if ((GBInfAdF.Height > 40) and (not oEmpty(EDInfAdF.Text))) then
           GBInfAdF.Visible := True else GBInfAdF.Visible := False;

      PEIE.Items.Clear;
      PEIE.Items.Add('');
      PEIE.Items.Add('ISENTO');
      PEIE.Items.Add(RECRomaneio.IE);
      PEIE.Text := RECRomaneio.IE;

      if (PEIE.Text = EmptyStr) or (PEIE.Text = 'ISENTO') then
      begin
        IEindIEDest.Text := '9';
        IEindFinal.Text  := '1';
      end;

      if (CECDRO.Value = 0) and (Pos(CBCNAT.Text,'59246924') = 0) then
      begin
        with SQLFKConsulta do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT   FIRST 1 PK.DTCA,PK.CFOP,PK.NFE_DTRA,FK.NFE_MODFRETE');
          SQL.Add('FROM ' + oREPZero('NFE_CAB','_',RECParametros.Id,3)+' AS PK');
          SQL.Add('JOIN ' + oREPZero('NFE_TRA','_',RECParametros.Id,3)+' AS FK ON (FK.NFE_CCAB = PK.ID)');
          SQL.Add('WHERE    PK.NFE_DFAV = ''' + RECRomaneio.DECD + '''');
          SQL.Add('ORDER BY 1 DESC');
          ExecQuery;
        end;

        PESQUISA_NATUREZA      (SQLFKConsulta.Current.Vars[1].AsString,'U');
        PESQUISA_TRANSPORTADORA(SQLFKConsulta.Current.Vars[2].AsString,'U');
      end;

      if      Tag  = 0 then
      try     Tag := 1  ; CALCULA_FRETE;
      finally CALCULA_NF;
      end;
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

       oRTransact(TSheild);
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
  if not (NFE_001.State in [dsInsert,dsEdit]) then
  begin
    DBGNFENFE_XPED.Visible  := (IEITEMPED.Text = '1');
    DBGNFE.Bands[3].Visible := (LeftStr(NFE_001NFE_CFOP.AsString,1) = '7'); { Tributação }

    { Descrição XML }
    PNLXPROX.Caption :=  NFE_001NFE_XPROX.AsString;
    PNLXPROX.Visible := (NFE_001NFE_XPROX.AsString <> EmptyStr);

    { Ajuste Colunas }
    if NFE_001.State = dsBrowse then
    begin
      DBGNFE.ApplyBestFit(DBGNFENFE_XPED );
      DBGNFE.ApplyBestFit(DBGNFENFE_CPROD);
      DBGNFE.ApplyBestFit(DBGNFENFE_XPROD);
      DBGNFE.ApplyBestFit(DBGNFENFE_NFCI );
    end;
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

  if Pos(cbcnat.Text,'5123612359246924') > 0 then
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
      SQL.Add('''' + RECParametros.ID    + ''',');
      SQL.Add('''' + RECUsuarios.ID      + ''',');
      SQL.Add('''' + RECParametros.GPEP + ''',');
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

procedure Tfrmven_nfe.GERA_DANFE;
begin
  DecodeDate(DEdhEmi.Date, Ano, Mes, Dia);
  NFE_PDF := EmptyStr;
  NFE_XML := EmptyStr;

  try
    Screen.cursor := crAppStart;
    oRegister_UPD_SizeFont(EDINFADNF.Lines.Count);

    NFE_PDF := 'C:\Sheild\NotaFiscal\PDF\'+oStrZero(Trunc(CECDNF.Value),6)+'.PDF';
    NFE_XML := 'C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\'+oStrZero(ano,4)+oStrZero(mes,2)+'\'+RightStr(chNFe,44)+'-procNFe.xml';

    if not FileExists(NFE_XML) then
    begin
      SBMain.Panels[1].Text := ArquivoDistribuicaoNFe(RightStr(chNFe,44));
      SBMain.Refresh;

      SleepEx(3000,False);
    end;

    ImprimeDanfe(NFE_XML,NFE_PDF,2,false);
    SleepEx(3000,False);
  finally
    Application.ProcessMessages;
    Screen.cursor := crDefault;
  end;
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
        SBMain.Panels[1].Text := 'Aguarde... Enviando Email.';
        SBMain.Refresh;

        Assunto  := RECParametros.DEEP+' - Nota Fiscal Eletrônica Nº '+CECDNF.Text;
        Anexo    := NFE_XML + ';' + NFE_PDF;


        Mensagem := '<p>Prezado Cliente,'+
                    '<br>Segue em anexo Nota Fiscal e XML referentes a fatura nº '+CECDNF.Text+'.</p>'+
                    '<p>Qualquer dúvida estamos à sua disposição.</p>'+
                    '<p>'+RECUsuarios.Login+' - Departamento Comercial'+
                    '<br>'+RECParametros.DEEP+'</p>';

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
        SBMain.Panels[1].Text := 'Email enviado com sucesso.' else
        SBMain.Panels[1].Text := 'Falha ao tentar enviar email';
        SBMain.Refresh;

        oAviso(handle,SBMain.Panels[1].Text);
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

      SBMain.Panels[1].Text := 'Email não enviado automaticamente por não atender aos requisitos necessários';
      SBMain.Refresh;
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
  if Pos(IETPAG.Text,'9099') > 0 then
  IEINDPAG.Text := '90';
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
                               IFThen((Pos(NFE_001NFE_ORIG.AsString,'12') > 0) and (PEUF.Text <> RECParametros.SGUF),4,
                               IFThen((PEUF.Text = RECParametros.SGUF        ) and (PEUF.Text = 'SP') and (NFE_001NFE_NCM.AsString = '39181000'),12,tab_alqALQ_ICMS.AsFloat))));
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

procedure Tfrmven_nfe.CALCULA_NF;
begin
  if (IEFinNFe.Text <> '2') and (IEFinNFe.Text <> '3') then
  begin
    if BCalc then
    begin
      oRTransact(TSheild);

      if ((cbcnat.Text = '6102') and ((IEIndFinal.Text = '1') or (IEindIEDest.Text = '9')) and (PEUF.Text <> RECParametros.SGUF) and (PEUF.Text <> 'EX')) then
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
                  if (NFE_001NFE_ORIG.AsInteger > 0) and (PEUF.Text <> RECParametros.SGUF) then
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
                  end;
                end;

                if NFE_001NFE_VBCST.AsFloat > 0 then
                begin
                  NFE_001NFE_CFOP.Value    := IFThen(IETPNF.Text = '0','2411',
                                              IFThen(RECParametros.NFE_CRT = 1,
                                              IFThen(PEUF.Text   = RECParametros.SGUF,'5401','6401'),
                                              IFThen(PEUF.Text   = RECParametros.SGUF,'5403','6404')));

                  NFE_001NFE_pICMSST.Value := tab_alqALQ_ICMI.AsFloat + tab_alqALQ_FCP.AsFloat;
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

                if (((IEIndFinal.Text = '1') or (IEindIEDest.Text = '9')) and (PEUF.Text <> RECParametros.SGUF) and (PEUF.Text <> 'EX') and (not RECRomaneio.ZFM_CMUN)) then
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

    oRTransact(TSheild);
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

      { Re-Calcula Duplicatas quando valor diferente }
      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(NFE_VDUP) AS VDUP FROM NFE_DUP');
      ExecQuery;

      if oTextToValor(edvnf.Text) <> Current.ByName('VDUP').AsCurrency then
         DUPLICATAS;
    end;
  end;
end;

procedure Tfrmven_nfe.DBGNFENFE_CFOPValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BCalc := True;
end;

function Tfrmven_nfe.GERA_LOTE: Boolean;
var
 x,y : Integer;
 BRet: Boolean;
begin
  BRet := False;
  y    := 0;

  try
    protNFe := EmptyStr;

    SBMain.Panels[0].Text := 'Aguarde, gerando lote de envio ...';
    SBMain.Panels[1].Text :=  EmptyStr;
    SBMain.Panels[3].Text :=  EmptyStr;
    Application.ProcessMessages;

    repeat
      inc(y);
      x := GerarLote(Trunc(CECDNF.Value),'',false);

      Application.ProcessMessages;
      SleepEx(500,False);

      if x = 1 then
      begin
        BRet := True;
        Break;
      end
    until y = 5;

    if (not BRet) or (not FileExists(PChar('C:\Sheild\NotaFiscal\NFe\lotes\'+oStrZero(Trunc(CECDNF.Value),12)+'-env-lot.xml'))) then
    begin
      SBMain.Panels[0].Text := 'Falha na geração do lote';

      if x = -1 then
      SBMain.Panels[1].Text := 'Falha, Erro Desconhecido !' else

      if x = 0 then
      SBMain.Panels[1].Text := 'Falha, Operação Cancelada !' else

      if x = 2 then
      SBMain.Panels[1].Text := 'Falha, Não existe(m) arquivo(s) assinado(s) !' else
    end else
    begin
      SBMain.Panels[0].Text := 'Lote gerado com sucesso';
      SBMain.Panels[1].Text := 'Enviando SEFAZ ...';
      Application.ProcessMessages;

      y := 0;
      repeat
        inc(y);
        SBMain.Panels[1].Text :=  NFeAutorizacao(PChar('C:\Sheild\NotaFiscal\NFe\lotes\'+oStrZero(Trunc(CECDNF.Value),12)+'-env-lot.xml'));

        Application.ProcessMessages;
        SleepEx(500,False);

        if (Pos('103',SBMain.Panels[1].Text) = 0) or (Trim(RightStr(SBMain.Panels[1].Text,Length(SBMain.Panels[1].Text) - Pos('#',SBMain.Panels[1].Text))) = EmptyStr) then
        begin
          BRet := False;
        end else
        begin
          BRet := True;
          Break;
        end;
      until y = 5;

      if not BRet then
      begin
        BRet := False; EDITAR;
        oException(Nil,'Falha na autorização da assinatura !'+#13+
                       'Tente Novamente.');
      end else
      begin
        protNFe := Trim(RightStr(SBMain.Panels[1].Text,Length(SBMain.Panels[1].Text) - Pos('#',SBMain.Panels[1].Text)));
        SBMain.Panels[3].Text := ProtNFe;
      end;
    end;
  finally
    Application.ProcessMessages;
    Screen.cursor := crDefault;
    result := BRet;
  end;
end;

end.
