unit pven_nfd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  ImgList, dxCntner, dxEditor, dxEdLib,
  StdCtrls, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxPageControl, IBDatabase, DB, IBCustomDataSet, IBQuery, dxDBELib,
  DBCtrls, Grids, DBGrids, math, dateutils, IBStoredProc, ComCtrls,
  Registry, jpeg, rxSpeedbar;

type
  Tfrmven_nfd = class(TForm)
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
    BGer: TSpeedItem;
    BVis: TSpeedItem;
    BPri: TSpeedItem;
    BEnv: TSpeedItem;
    BImp: TSpeedItem;
    pnlesq: TPanel;
    Panel1: TPanel;
    pnlmain: TPanel;
    Label14: TLabel;
    linha2: TShape;
    Shape3: TShape;
    Label7: TLabel;
    edcdnf: TdxMaskEdit;
    Label1: TLabel;
    eddemi: TdxDateEdit;
    Label9: TLabel;
    pcMAIN: TdxPageControl;
    tsPRO: TdxTabSheet;
    Panel5: TPanel;
    sbeditu: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    siINC: TSpeedItem;
    siDEL: TSpeedItem;
    siSAV: TSpeedItem;
    siCAN: TSpeedItem;
    siALT: TSpeedItem;
    dbgnfe: TdxDBGrid;
    tsDUP: TdxTabSheet;
    dbgdup: TdxDBGrid;
    SpeedBar2: TSpeedBar;
    SpeedbarSection10: TSpeedbarSection;
    SpeedbarSection11: TSpeedbarSection;
    SpeedbarSection12: TSpeedbarSection;
    SpeedbarSection13: TSpeedbarSection;
    siIDU: TSpeedItem;
    siDDU: TSpeedItem;
    siSDU: TSpeedItem;
    siCDU: TSpeedItem;
    siADU: TSpeedItem;
    consulta: TIBQuery;
    IBTra: TIBTransaction;
    tSHEILD: TIBTransaction;
    nfe_001: TIBDataSet;
    dtsnfe_001: TDataSource;
    nfe_001ID: TIntegerField;
    nfe_001NFE_CCAB: TIntegerField;
    nfe_001NFE_CDNF: TIntegerField;
    nfe_001NFE_INDTOT: TIntegerField;
    nfe_001NFE_CFOP: TIBStringField;
    nfe_001NFE_CART: TIBStringField;
    nfe_001NFE_CPROD: TIBStringField;
    nfe_001NFE_CEAN: TIBStringField;
    nfe_001NFE_NCM: TIBStringField;
    nfe_001NFE_EXTIPI: TIBStringField;
    nfe_001NFE_DCOR: TIBStringField;
    nfe_001NFE_XPROD: TIBStringField;
    nfe_001NFE_INFADPROD: TMemoField;
    nfe_001NFE_UCOM: TIBStringField;
    nfe_001NFE_QCOM: TIBBCDField;
    nfe_001NFE_RCOM: TIntegerField;
    nfe_001NFE_VPROD: TIBBCDField;
    nfe_001NFE_VFRETE: TIBBCDField;
    nfe_001NFE_VSEG: TIBBCDField;
    nfe_001NFE_VDESC: TIBBCDField;
    nfe_001NFE_VOUTRO: TIBBCDField;
    nfe_001NFE_XLOCEMBARQ: TIBStringField;
    nfe_001NFE_UFEMBARQ: TIBStringField;
    nfe_001NFE_NDI: TIBStringField;
    nfe_001NFE_DDI: TDateField;
    nfe_001NFE_XLOCDESEMB: TIBStringField;
    nfe_001NFE_UFDESEMB: TIBStringField;
    nfe_001NFE_DDESEMB: TDateField;
    nfe_001NFE_CEXPORTADOR: TIBStringField;
    nfe_001NFE_NADICAO: TSmallintField;
    nfe_001NFE_NSEQADIC: TSmallintField;
    nfe_001NFE_CFABRICANTE: TIBStringField;
    nfe_001NFE_VDESCDI: TIBBCDField;
    nfe_001NFE_XPED: TIBStringField;
    nfe_001NFE_ITEMPED: TIBStringField;
    nfe_001NFE_ORIG: TIBStringField;
    nfe_001NFE_CST: TIBStringField;
    nfe_001NFE_MODBC: TIBStringField;
    nfe_001NFE_PREDBC: TIBBCDField;
    nfe_001NFE_VBC: TIBBCDField;
    nfe_001NFE_PICMS: TIBBCDField;
    nfe_001NFE_VICMS: TIBBCDField;
    nfe_001NFE_MODBCST: TIBStringField;
    nfe_001NFE_MVAST: TIBBCDField;
    nfe_001NFE_PREDBCST: TIBBCDField;
    nfe_001NFE_VBCST: TIBBCDField;
    nfe_001NFE_VBCSTRET: TIBBCDField;
    nfe_001NFE_VICMSSTRET: TIBBCDField;
    nfe_001NFE_PICMSST: TIBBCDField;
    nfe_001NFE_VICMSST: TIBBCDField;
    nfe_001NFE_PCREDSN: TIBBCDField;
    nfe_001NFE_VCREDICMSSN: TIBBCDField;
    nfe_001NFE_CSTIPI: TIBStringField;
    nfe_001NFE_VBCIPI: TIBBCDField;
    nfe_001NFE_PIPI: TIBBCDField;
    nfe_001NFE_VIPI: TIBBCDField;
    nfe_001NFE_VBCIMP: TIBBCDField;
    nfe_001NFE_VDESPADU: TIBBCDField;
    nfe_001NFE_VIIIMP: TIBBCDField;
    nfe_001NFE_VIOFIMP: TIBBCDField;
    nfe_001NFE_CSTPIS: TIBStringField;
    nfe_001NFE_VBCPIS: TIBBCDField;
    nfe_001NFE_PPIS: TIBBCDField;
    nfe_001NFE_VPIS: TIBBCDField;
    nfe_001NFE_VBCPISST: TIBBCDField;
    nfe_001NFE_PPISST: TIBBCDField;
    nfe_001NFE_VPISST: TIBBCDField;
    nfe_001NFE_CSTCOFINS: TIBStringField;
    nfe_001NFE_VBCOFINS: TIBBCDField;
    nfe_001NFE_PCOFINS: TIBBCDField;
    nfe_001NFE_VCOFINS: TIBBCDField;
    nfe_001NFE_VBCOFINSST: TIBBCDField;
    nfe_001NFE_PCOFINSST: TIBBCDField;
    nfe_001NFE_VCOFINSST: TIBBCDField;
    nfe_001NFE_VBCISSQN: TIBBCDField;
    nfe_001NFE_VALIQISSQN: TIBBCDField;
    nfe_001NFE_VISSQN: TIBBCDField;
    nfe_001NFE_CMUNFGISSQN: TIBStringField;
    nfe_001NFE_CLISTSERV: TIntegerField;
    dbgnfeNFE_ITEMPED: TdxDBGridMaskColumn;
    dbgnfeNFE_CPROD: TdxDBGridMaskColumn;
    dbgnfeNFE_XPROD: TdxDBGridMaskColumn;
    dbgnfeNFE_UCOM: TdxDBGridPickColumn;
    dbgnfeNFE_QCOM: TdxDBGridMaskColumn;
    dbgnfeNFE_VUNCOM: TdxDBGridMaskColumn;
    dbgnfeNFE_VPROD: TdxDBGridMaskColumn;
    dbgnfeNFE_CFOP: TdxDBGridMaskColumn;
    dbgnfeNFE_CST: TdxDBGridPickColumn;
    dbgnfeNFE_NCM: TdxDBGridMaskColumn;
    dbgnfeNFE_INFADPROD: TdxDBGridBlobColumn;
    dbgnfeNFE_ORIG: TdxDBGridPickColumn;
    tab_natID: TIntegerField;
    tab_natNAT_CNAT: TIBStringField;
    tab_natNAT_DNAT: TIBStringField;
    tab_natNAT_TIPO: TIBStringField;
    tab_natNAT_OPER: TIBStringField;
    tab_natNAT_CCST: TIBStringField;
    tab_natNAT_CSTS: TIBStringField;
    tab_natNAT_CSTA: TIBStringField;
    tab_natNAT_BIPI: TIBStringField;
    tab_natNAT_FRET: TIBStringField;
    tab_natNAT_MATE: TIBStringField;
    tab_natNAT_PENF: TIBBCDField;
    tab_natNAT_CSTI: TIBStringField;
    tab_natNAT_CSTP: TIBStringField;
    tab_natNAT_PIPP: TIBBCDField;
    tab_natNAT_CSTC: TIBStringField;
    tab_natNAT_PIPC: TIBBCDField;
    tab_natNAT_OBSE: TMemoField;
    tab_natNAT_STA: TIBStringField;
    tab_nat: TIBQuery;
    cbfinnfe: TdxImageEdit;
    edcdro: TdxMaskEdit;
    cad_cli: TIBQuery;
    consulta_S: TIBQuery;
    cad_cliID: TIntegerField;
    cad_cliCLI_FANT: TIBStringField;
    cad_cliCLI_RAZA: TIBStringField;
    cad_cliCLI_CNPJ: TIBStringField;
    cad_cliCLI_INSC: TIBStringField;
    cad_cliCLI_CPF: TIBStringField;
    cad_cliCLI_RG: TIBStringField;
    cad_cliCLI_MAIL: TIBStringField;
    cad_cliCLI_RICM: TIBStringField;
    cad_cliCLI_CICM: TIBStringField;
    cad_cliCLI_DDD: TIBStringField;
    cad_cliCLI_TEL1: TIBStringField;
    cad_cliCLI_TLOG: TIBStringField;
    cad_cliCLI_LOGR: TIBStringField;
    cad_cliCLI_NUME: TIBStringField;
    cad_cliCLI_COMP: TIBStringField;
    cad_cliCLI_CEP: TIBStringField;
    cad_cliCLI_BAI: TIBStringField;
    cad_cliCLI_CID: TIBStringField;
    cad_cliCLI_ESTA: TIBStringField;
    cad_cliCLI_CMUN: TIBStringField;
    cad_cliCLI_TLOV: TIBStringField;
    cad_cliCLI_LOGV: TIBStringField;
    cad_cliCLI_NUMV: TIBStringField;
    cad_cliCLI_COMV: TIBStringField;
    cad_cliCLI_CEPV: TIBStringField;
    cad_cliCLI_BAIV: TIBStringField;
    cad_cliCLI_CIDV: TIBStringField;
    cad_cliCLI_ESTV: TIBStringField;
    cad_cliCLI_CMUV: TIBStringField;
    tab_natNAT_INDT: TIBStringField;
    nfe_001NFE_VNF: TIBBCDField;
    tab_alq: TIBQuery;
    tab_alqID: TIntegerField;
    tab_alqALQ_ESTA: TIBStringField;
    tab_alqALQ_ICMS: TIBBCDField;
    dbgnfeNFE_VBC: TdxDBGridMaskColumn;
    dbgnfeNFE_PICMS: TdxDBGridMaskColumn;
    dbgnfeNFE_VICMS: TdxDBGridMaskColumn;
    dbgnfeNFE_VNF: TdxDBGridMaskColumn;
    dtsdup_001: TDataSource;
    dup_001: TIBDataSet;
    dup_001ID: TIntegerField;
    dup_001NFE_CDRO: TIntegerField;
    dup_001NFE_CCAB: TIntegerField;
    dup_001NFE_CFAV: TIntegerField;
    dup_001NFE_DROM: TDateField;
    dup_001NFE_CDNF: TIntegerField;
    dup_001NFE_DNFE: TDateField;
    dup_001NFE_TITU: TIBStringField;
    dup_001NFE_DVEN: TDateField;
    dup_001NFE_PARC: TIntegerField;
    dup_001NFE_VDUP: TIBBCDField;
    dup_001NFE_DPAG: TDateField;
    dup_001NFE_VPAG: TIBBCDField;
    dup_001NFE_VPEN: TIBBCDField;
    dup_001NFE_OBSE: TMemoField;
    dup_001NFE_STA: TIBStringField;
    dbgdupNFE_CDNF: TdxDBGridMaskColumn;
    dbgdupNFE_DNFE: TdxDBGridDateColumn;
    dbgdupNFE_TITU: TdxDBGridMaskColumn;
    dbgdupNFE_DVEN: TdxDBGridDateColumn;
    dbgdupNFE_VDUP: TdxDBGridMaskColumn;
    tab_pag: TIBQuery;
    tab_pagID: TIntegerField;
    tab_pagPAG_DPAG: TIBStringField;
    tab_pagPAG_D001: TIntegerField;
    tab_pagPAG_D002: TIntegerField;
    tab_pagPAG_D003: TIntegerField;
    tab_pagPAG_D004: TIntegerField;
    tab_pagPAG_D005: TIntegerField;
    tab_pagPAG_D006: TIntegerField;
    tab_pagPAG_D007: TIntegerField;
    tab_pagPAG_D008: TIntegerField;
    tab_pagPAG_D009: TIntegerField;
    tab_pagPAG_D010: TIntegerField;
    tab_pagPAG_STA: TIBStringField;
    tab_pagPAG_PARC: TSmallintField;
    tab_pagPAG_DUPL: TIBStringField;
    dup_001NFE_STPD: TIBStringField;
    dup_001NFE_STCO: TIBStringField;
    dup_001NFE_STFI: TIBStringField;
    ibSP: TIBStoredProc;
    tra_001: TIBDataSet;
    dtstra_001: TDataSource;
    tsCLI: TdxTabSheet;
    tra_001ID: TIntegerField;
    tra_001NFE_CCAB: TIntegerField;
    tra_001NFE_CTRA: TIntegerField;
    tra_001NFE_RAZA: TIBStringField;
    tra_001NFE_RG: TIBStringField;
    tra_001NFE_CPF: TIBStringField;
    tra_001NFE_INSC: TIBStringField;
    tra_001NFE_CNPJ: TIBStringField;
    tra_001NFE_MODFRETE: TIBStringField;
    tra_001NFE_RETTRANSP: TIBStringField;
    tra_001NFE_VSERV: TIBBCDField;
    tra_001NFE_VBCRET: TIBBCDField;
    tra_001NFE_PICMSRET: TIBBCDField;
    tra_001NFE_VICMSRET: TIBBCDField;
    tra_001NFE_CFOP: TIBStringField;
    tra_001NFE_CMUNFG: TIBStringField;
    tra_001NFE_PLACA: TIBStringField;
    tra_001NFE_TLOG: TIBStringField;
    tra_001NFE_LOGR: TIBStringField;
    tra_001NFE_CEP: TIBStringField;
    tra_001NFE_NUME: TIBStringField;
    tra_001NFE_COMP: TIBStringField;
    tra_001NFE_BAI: TIBStringField;
    tra_001NFE_CID: TIBStringField;
    tra_001NFE_UF: TIBStringField;
    tra_001NFE_RNTC: TIBStringField;
    tra_001NFE_QVOL: TSmallintField;
    tra_001NFE_ESP: TIBStringField;
    tra_001NFE_MARCA: TIBStringField;
    tra_001NFE_NVOL: TIBStringField;
    tra_001NFE_PSLQ: TIBBCDField;
    tra_001NFE_PSBR: TIBBCDField;
    tra_001NFE_NLACRE: TIBStringField;
    sbMAIN: TStatusBar;
    Bevel2: TBevel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label52: TLabel;
    rgtipe: TRadioGroup;
    dtscad_cli: TDataSource;
    Label65: TLabel;
    nfe_001NFE_METR: TIBBCDField;
    nfe_001NFE_PESO: TIBBCDField;
    nfe_001NFE_REND: TIBBCDField;
    nfe_001NFE_PSCN: TIBBCDField;
    nfe_001NFE_PSMR: TIBBCDField;
    Panel3: TPanel;
    Panel4: TPanel;
    Shape1: TShape;
    Label3: TLabel;
    Shape2: TShape;
    lacfav: TLabel;
    Label5: TLabel;
    Shape6: TShape;
    Label8: TLabel;
    Shape7: TShape;
    Label23: TLabel;
    Label24: TLabel;
    Label51: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Shape10: TShape;
    Label26: TLabel;
    Shape11: TShape;
    Label27: TLabel;
    Label32: TLabel;
    edcfav: TdxMaskEdit;
    cbdtra: TdxPickEdit;
    edctra: TdxMaskEdit;
    cbmodfrete: TdxPickEdit;
    edvfrete: TdxEdit;
    edesp: TdxEdit;
    edqvol: TdxEdit;
    edpsbr: TdxEdit;
    edpslq: TdxEdit;
    cbcnat: TdxPickEdit;
    cbdnat: TdxPickEdit;
    edtpnf: TdxMaskEdit;
    eddfav: TdxMaskEdit;
    edrfav: TdxMaskEdit;
    cad_for: TIBQuery;
    dtscad_for: TDataSource;
    edraza: TdxMaskEdit;
    edddd: TdxMaskEdit;
    edtel1: TdxMaskEdit;
    edcnpj: TdxMaskEdit;
    edinsc: TdxMaskEdit;
    edcpf: TdxMaskEdit;
    tsEND: TdxPageControl;
    tsCOM: TdxTabSheet;
    dxTabSheet2: TdxTabSheet;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    edtlog: TdxMaskEdit;
    edlogr: TdxMaskEdit;
    edcep: TdxMaskEdit;
    ednume: TdxMaskEdit;
    edcomp: TdxMaskEdit;
    edbai: TdxMaskEdit;
    edcmun: TdxMaskEdit;
    edcid: TdxMaskEdit;
    edesta: TdxMaskEdit;
    Label53: TLabel;
    Label54: TLabel;
    Label61: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    edtlov: TdxMaskEdit;
    edlogv: TdxMaskEdit;
    edcepv: TdxMaskEdit;
    ednumv: TdxMaskEdit;
    edcomv: TdxMaskEdit;
    edbaiv: TdxMaskEdit;
    edcmuv: TdxMaskEdit;
    edcidv: TdxMaskEdit;
    edestv: TdxMaskEdit;
    cad_forID: TIntegerField;
    cad_forFOR_FANT: TIBStringField;
    cad_forFOR_RAZA: TIBStringField;
    cad_forFOR_CNPJ: TIBStringField;
    cad_forFOR_INSC: TIBStringField;
    cad_forFOR_CPF: TIBStringField;
    cad_forFOR_RG: TIBStringField;
    cad_forFOR_MAIL: TIBStringField;
    cad_forFOR_RICM: TIBStringField;
    cad_forFOR_CICM: TIBStringField;
    cad_forFOR_DDD: TIBStringField;
    cad_forFOR_TEL1: TIBStringField;
    cad_forFOR_TLOG: TIBStringField;
    cad_forFOR_LOGR: TIBStringField;
    cad_forFOR_NUME: TIBStringField;
    cad_forFOR_COMP: TIBStringField;
    cad_forFOR_CEP: TIBStringField;
    cad_forFOR_BAI: TIBStringField;
    cad_forFOR_CID: TIBStringField;
    cad_forFOR_ESTA: TIBStringField;
    cad_forFOR_CMUN: TIBStringField;
    cad_forFOR_TLOV: TIBStringField;
    cad_forFOR_LOGV: TIBStringField;
    cad_forFOR_NUMV: TIBStringField;
    cad_forFOR_COMV: TIBStringField;
    cad_forFOR_CEPV: TIBStringField;
    cad_forFOR_BAIV: TIBStringField;
    cad_forFOR_CIDV: TIBStringField;
    cad_forFOR_ESTV: TIBStringField;
    cad_forFOR_CMUV: TIBStringField;
    edmail: TdxMaskEdit;
    Label71: TLabel;
    edpass: TdxMaskEdit;
    lapass: TLabel;
    psq_for: TIBQuery;
    cli_001: TIBDataSet;
    dtscli_001: TDataSource;
    cli_001ID: TIntegerField;
    cli_001NFE_CCAB: TIntegerField;
    cli_001NFE_CDNF: TIntegerField;
    cli_001NFE_DCAD: TDateField;
    cli_001NFE_VNF: TIBBCDField;
    edhemi: TdxTimeEdit;
    edconc: TdxMaskEdit;
    dbgnfeNFE_CSTIPI: TdxDBGridMaskColumn;
    dbgnfeNFE_VBCIPI: TdxDBGridMaskColumn;
    dbgnfeNFE_PIPI: TdxDBGridMaskColumn;
    dbgnfeNFE_VIPI: TdxDBGridMaskColumn;
    dbgnfeNFE_CSTPIS: TdxDBGridMaskColumn;
    dbgnfeNFE_VBCPIS: TdxDBGridMaskColumn;
    dbgnfeNFE_PPIS: TdxDBGridMaskColumn;
    dbgnfeNFE_VPIS: TdxDBGridMaskColumn;
    dbgnfeNFE_CSTCOFINS: TdxDBGridMaskColumn;
    dbgnfeNFE_VBCOFINS: TdxDBGridMaskColumn;
    dbgnfeNFE_PCOFINS: TdxDBGridMaskColumn;
    dbgnfeNFE_VCOFINS: TdxDBGridMaskColumn;
    siEST: TSpeedItem;
    nfe_001NFE_BIPI: TIBStringField;
    nfe_001NFE_FRET: TIBStringField;
    nfe_001NFE_TIPO: TIBStringField;
    nfe_001NFE_REPR: TIBStringField;
    tab_nat_002: TIBQuery;
    tab_nat_002ID: TIntegerField;
    tab_nat_002NAT_CNAT: TIBStringField;
    tab_nat_002NAT_DNAT: TIBStringField;
    tab_nat_002NAT_TIPO: TIBStringField;
    tab_nat_002NAT_OPER: TIBStringField;
    tab_nat_002NAT_CCST: TIBStringField;
    tab_nat_002NAT_CSTS: TIBStringField;
    tab_nat_002NAT_CSTA: TIBStringField;
    tab_nat_002NAT_BIPI: TIBStringField;
    tab_nat_002NAT_FRET: TIBStringField;
    tab_nat_002NAT_MATE: TIBStringField;
    tab_nat_002NAT_PENF: TIBBCDField;
    tab_nat_002NAT_CSTI: TIBStringField;
    tab_nat_002NAT_CSTP: TIBStringField;
    tab_nat_002NAT_PIPP: TIBBCDField;
    tab_nat_002NAT_CSTC: TIBStringField;
    tab_nat_002NAT_PIPC: TIBBCDField;
    tab_nat_002NAT_OBSE: TMemoField;
    tab_nat_002NAT_STA: TIBStringField;
    tab_nat_002NAT_INDT: TIBStringField;
    dbgnfeNFE_REPR: TdxDBGridMaskColumn;
    dbgnfeNFE_XLOCEMBARQ: TdxDBGridMaskColumn;
    dbgnfeNFE_UFEMBARQ: TdxDBGridMaskColumn;
    dbgnfeNFE_NDI: TdxDBGridMaskColumn;
    dbgnfeNFE_DDI: TdxDBGridDateColumn;
    dbgnfeNFE_XLOCDESEMB: TdxDBGridMaskColumn;
    dbgnfeNFE_UFDESEMB: TdxDBGridMaskColumn;
    dbgnfeNFE_DDESEMB: TdxDBGridDateColumn;
    dbgnfeNFE_CEXPORTADOR: TdxDBGridMaskColumn;
    dbgnfeNFE_NADICAO: TdxDBGridMaskColumn;
    dbgnfeNFE_NSEQADIC: TdxDBGridMaskColumn;
    dbgnfeNFE_CFABRICANTE: TdxDBGridMaskColumn;
    dbgnfeNFE_VDESCDI: TdxDBGridMaskColumn;
    dbgnfeNFE_VOUTRO: TdxDBGridMaskColumn;
    nfe_001NFE_FLAG: TIBStringField;
    dbgnfeNFE_FLAG: TdxDBGridMaskColumn;
    psq_cli: TIBQuery;
    nfe_001NFE_PREC: TIBBCDField;
    aux: TIBQuery;
    nfe_001NFE_IPRO: TIntegerField;
    aux_S: TIBQuery;
    BSal: TSpeedItem;
    Panel2: TPanel;
    Shape4: TShape;
    Label6: TLabel;
    Shape5: TShape;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    latdsc: TLabel;
    Label34: TLabel;
    Label13: TLabel;
    Label47: TLabel;
    edVCREDICMSSN: TdxMaskEdit;
    edpdesc: TdxMaskEdit;
    edvprod: TdxMaskEdit;
    edvbc: TdxMaskEdit;
    edvicms: TdxMaskEdit;
    edvipi: TdxMaskEdit;
    edvpis: TdxMaskEdit;
    edvcofins: TdxMaskEdit;
    edvoutro: TdxMaskEdit;
    edvnf: TdxMaskEdit;
    edvdesc: TdxMaskEdit;
    edqtrl: TdxMaskEdit;
    edqtde: TdxMaskEdit;
    edvII: TdxMaskEdit;
    Label35: TLabel;
    Shape12: TShape;
    Shape13: TShape;
    Label36: TLabel;
    edcdns: TdxMaskEdit;
    Label37: TLabel;
    edcven: TdxMaskEdit;
    Label81: TLabel;
    edcrep: TdxMaskEdit;
    eddven: TdxMaskEdit;
    eddrep: TdxMaskEdit;
    siDEV: TSpeedItem;
    Panel6: TPanel;
    Panel7: TPanel;
    edINF: TdxMemo;
    Shape8: TShape;
    Shape14: TShape;
    Label2: TLabel;
    nfe_001NFE_VUNCOM: TFloatField;
    nfe_001NFE_PSBR: TIBBCDField;
    nfe_001NFE_PSLQ: TIBBCDField;
    nfe_001NFE_VMULTA: TIBBCDField;
    nfe_001NFE_PIMP: TIBBCDField;
    cad_pro_ori: TIBDataSet;
    cad_pro_oriID: TIntegerField;
    cad_pro_oriPRO_CDEP: TIntegerField;
    cad_pro_oriPRO_CART: TIBStringField;
    cad_pro_oriPRO_ORIG: TIBStringField;
    nfe_001NFE_TPVIATRANSP: TSmallintField;
    nfe_001NFE_VAFRMM: TIBBCDField;
    nfe_001NFE_TPINTERMEDIO: TSmallintField;
    nfe_001NFE_CNPJ: TIBStringField;
    nfe_001NFE_UFTERCEIRO: TIBStringField;
    nfe_001NFE_VI04: TIBBCDField;
    nfe_001NFE_VI07: TIBBCDField;
    nfe_001NFE_VI12: TIBBCDField;
    nfe_001NFE_CEST: TSmallintField;
    nfe_001NFE_VBCSTDEST: TIBBCDField;
    nfe_001NFE_VICMSSTDEST: TIBBCDField;
    nfe_001NFE_VBCUFDEST: TIBBCDField;
    nfe_001NFE_PFCPUFDEST: TIBBCDField;
    nfe_001NFE_PICMSUFDEST: TIBBCDField;
    nfe_001NFE_PICMSINTER: TIBBCDField;
    nfe_001NFE_PICMSINTERPART: TIBBCDField;
    nfe_001NFE_VFCPUFDEST: TIBBCDField;
    nfe_001NFE_VICMSUFDEST: TIBBCDField;
    nfe_001NFE_VICMSUFREMET: TIBBCDField;
    psq_cliID: TIntegerField;
    psq_cliCLI_FANT: TIBStringField;
    psq_cliCLI_RAZA: TIBStringField;
    psq_cliCLI_CNPJ: TIBStringField;
    psq_cliCLI_CPF: TIBStringField;
    psq_cliCLI_CRED: TIBBCDField;
    psq_cliCLI_CID: TIBStringField;
    psq_cliCLI_BAI: TIBStringField;
    psq_cliCLI_TLOG: TIBStringField;
    psq_cliCLI_LOGR: TIBStringField;
    psq_cliCLI_NUME: TIBStringField;
    psq_cliCLI_CEP: TIBStringField;
    psq_cliCLI_COMP: TIBStringField;
    psq_cliCLI_ESTA: TIBStringField;
    psq_cliCLI_STA: TIBStringField;
    psq_cliCLI_STAV: TIBStringField;
    psq_cliCLI_DPAG: TIBStringField;
    psq_cliCLI_VDSC: TIBBCDField;
    psq_cliCLI_DCAD: TDateField;
    psq_cliCLI_DFUN: TDateField;
    psq_cliCLI_DALT: TDateField;
    psq_cliCLI_DULT: TDateField;
    psq_cliCLI_VULT: TIBBCDField;
    psq_cliCLI_DDD: TIBStringField;
    psq_cliCLI_TEL1: TIBStringField;
    psq_cliREP_FANT: TIBStringField;
    psq_cliUSU_DUSU: TIBStringField;
    psq_cliCLI_STPD: TSmallintField;
    psq_cliCLI_DTRA: TIBStringField;
    psq_cliCLI_DUSU: TIBStringField;
    psq_cliCLI_OBSO: TIBStringField;
    psq_forID: TIntegerField;
    psq_forFOR_FANT: TIBStringField;
    psq_forFOR_RAZA: TIBStringField;
    psq_forFOR_CNPJ: TIBStringField;
    psq_forFOR_CPF: TIBStringField;
    psq_forFOR_CRED: TIBBCDField;
    psq_forFOR_CID: TIBStringField;
    psq_forFOR_BAI: TIBStringField;
    psq_forFOR_TLOG: TIBStringField;
    psq_forFOR_LOGR: TIBStringField;
    psq_forFOR_NUME: TIBStringField;
    psq_forFOR_CEP: TIBStringField;
    psq_forFOR_COMP: TIBStringField;
    psq_forFOR_ESTA: TIBStringField;
    psq_forFOR_STA: TIBStringField;
    psq_forFOR_STAV: TIBStringField;
    psq_forFOR_DPAG: TIBStringField;
    psq_forFOR_VDSC: TIBBCDField;
    psq_forFOR_DCAD: TDateField;
    psq_forFOR_DFUN: TDateField;
    psq_forFOR_DALT: TDateField;
    psq_forFOR_DULT: TDateField;
    psq_forFOR_VULT: TIBBCDField;
    psq_forFOR_DDD: TIBStringField;
    psq_forFOR_TEL1: TIBStringField;
    psq_forFOR_DTRA: TIBStringField;
    psq_forFOR_CDEP: TIntegerField;
    psq_forFOR_OBSO: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lacfavClick(Sender: TObject);
    procedure siINCClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure siCANClick(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure nfe_001AfterCancel(DataSet: TDataSet);
    procedure nfe_001AfterDelete(DataSet: TDataSet);
    procedure nfe_001AfterEdit(DataSet: TDataSet);
    procedure nfe_001AfterInsert(DataSet: TDataSet);
    procedure nfe_001AfterOpen(DataSet: TDataSet);
    procedure nfe_001AfterPost(DataSet: TDataSet);
    procedure nfe_001BeforeCancel(DataSet: TDataSet);
    procedure nfe_001NewRecord(DataSet: TDataSet);
    procedure edcfavValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSairClick(Sender: TObject);
    procedure cad_cliAfterOpen(DataSet: TDataSet);
    procedure cbcnatExit(Sender: TObject);
    procedure latdscClick(Sender: TObject);
    procedure cbduplChange(Sender: TObject);
    procedure dup_001AfterPost(DataSet: TDataSet);
    procedure dup_001AfterDelete(DataSet: TDataSet);
    procedure dup_001AfterEdit(DataSet: TDataSet);
    procedure dup_001NewRecord(DataSet: TDataSet);
    procedure nfe_001NFE_QCOMValidate(Sender: TField);
    procedure cbdtraExit(Sender: TObject);
    procedure cbdpagExit(Sender: TObject);
    procedure BFAVClick(Sender: TObject);
    procedure dbgnfeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BEnvClick(Sender: TObject);
    procedure edpslqExit(Sender: TObject);
    procedure cad_forAfterOpen(DataSet: TDataSet);
    procedure eddfavValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edrfavValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure rgtipeClick(Sender: TObject);
    procedure edespValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure siESTClick(Sender: TObject);
    procedure edpsbrExit(Sender: TObject);
    procedure siIDUClick(Sender: TObject);
    procedure siDDUClick(Sender: TObject);
    procedure siSDUClick(Sender: TObject);
    procedure siCDUClick(Sender: TObject);
    procedure siADUClick(Sender: TObject);
    procedure dup_001BeforeCancel(DataSet: TDataSet);
    procedure nfe_001NFE_CFOPValidate(Sender: TField);
    procedure nfe_001BeforePost(DataSet: TDataSet);
    procedure dbgnfeCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure BNFeClick(Sender: TObject);
    procedure BSalClick(Sender: TObject);
    procedure edcdnsValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbfinnfeChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    BBot: boolean;
    procedure PESQUISA_PRODUTO(campo,cpro:string);
    procedure SALVA_NF;
    procedure BAIXA_ESTOQUE;
    procedure AJUSTAFORM;
    procedure ABRE_TABELA;
    procedure NOVO;
    function  RETORNA_ID_PRODUTO: integer;
  public
    { Public declarations }
    NewNCM,NewICMS,NewCST,NewString,NewNota, NewData: string;
    procedure PESQUISA_TRANSPORTADORA;
    procedure PESQUISA_CLIENTE(pesq,chave: string;cdsc: double);
    procedure PESQUISA_FORNECEDOR(pesq,chave: string;cdsc: double);
    procedure PESQUISA_NATUREZA(pesq,chave: string);
    procedure DUPLICATAS;
    procedure CALCULA_NF;
  end;

var
  frmven_nfd: Tfrmven_nfd;
  pathRet,chave,protocolo: shortstring;
  Ano, Mes, Dia: Word;
  BCalc: boolean;
  tsde,tcde: double;

implementation

uses p_funcoes, uPrincipal, pcad_cli, pcad_for, pcad_pro_con,
     pemail, pctr_nfe, pimporta_geral;

{$R *.dfm}

procedure Tfrmven_nfd.CALCULA_NF;
begin
  activecontrol := nil;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(NFE_VDESC),SUM(NFE_VPROD),SUM(NFE_VBC),SUM(NFE_VICMS),SUM(NFE_VIPI),SUM(NFE_VPIS),SUM(NFE_VCOFINS),SUM(NFE_VOUTRO),SUM(NFE_VIIIMP),SUM(NFE_VNF),SUM(NFE_RCOM),SUM(NFE_VCREDICMSSN),SUM(NFE_QCOM)');
    SQL.Add('FROM   NFE_ITE');
    Open;

    edvdesc.Text       := formatfloat('#,0.00########',fields[0].AsFloat);
    edvprod.Text       := formatfloat('#,0.00########',fields[1].AsFloat);
    edvbc.Text         := formatfloat('#,0.00########',fields[2].AsFloat);
    edvicms.Text       := formatfloat('#,0.00########',fields[3].AsFloat);
    edvipi.Text        := formatfloat('#,0.00########',fields[4].AsFloat);
    edvpis.Text        := formatfloat('#,0.00########',fields[5].AsFloat);
    edvcofins.Text     := formatfloat('#,0.00########',fields[6].AsFloat);
    edvoutro.Text      := formatfloat('#,0.00########',fields[7].AsFloat);
    edvII.Text         := formatfloat('#,0.00########',fields[8].AsFloat);
    edvnf.Text         := formatfloat('#,0.00########',fields[9].AsFloat);
    edqtde.Text        := formatfloat('#,0.00########',fields[12].AsFloat);
    edvcredicmssn.Text := formatfloat('#,0.00########',fields[11].AsFloat);
  end;
end;

function Tfrmven_nfd.RETORNA_ID_PRODUTO: integer;
var
  ID_PRODUTO: integer;
begin
  ID_PRODUTO := 0;

  while true do
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_PRO');
      SQL.Add('WHERE  PRO_CPRO = '''+nfe_001NFE_CPROD.AsString+'''');
      Open;

      ID_PRODUTO := fields[0].AsInteger;
    end;

    if (ID_PRODUTO = 0) and (siEST.Tag = 1) and (siEST.Enabled) then
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT GEN_ID(ID_NO_CAD_PRO, 0) FROM RDB$DATABASE');
        Open;
      end;

      with cad_pro_ori do
      begin
        Close;
        SelectSQL.Clear;
        SelectSQL.Add('SELECT * FROM CAD_PRO_ORI');
        SelectSQL.Add('WHERE PRO_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
        SelectSQL.Add('AND   PRO_CART = '''+nfe_001NFE_CPROD.AsString+'''');
        Open;
      end;

      if cad_pro_ori.Fields[0].IsNull then
      begin
        cad_pro_ori.Append;
        cad_pro_oriID.Value       := 0;
        cad_pro_oriPRO_CDEP.Value := frmprincipal.parametrosID.AsInteger;
        cad_pro_oriPRO_CART.Value := nfe_001NFE_CPROD.AsString;
      end else cad_pro_ori.Edit;
      cad_pro_oriPRO_ORIG.Value   := nfe_001NFE_ORIG.AsString;
      cad_pro_ori.Post;

      ibSP.StoredProcName := 'SP_CAD_PRO';
      ibSP.Prepare;

      ibSP.ParamByName('ID').Value   := 0;
      ibSP.ParamByName('DCAD').Value := eddemi.Date;
      ibSP.ParamByName('DALT').Value := eddemi.Date;
      ibSP.ParamByName('DUSU').Value := frmprincipal.cad_usuUSU_DUSU.AsString;
      ibSP.ParamByName('CART').Value := nfe_001NFE_CPROD.AsString;
      ibSP.ParamByName('CPRO').Value := nfe_001NFE_CPROD.AsString;
      ibSP.ParamByName('CFOR').Value := 1;
      ibSP.ParamByName('CBAR').Value := TRIM('5501'+strzero(consulta.Fields[0].AsInteger+1,8));
      ibSP.ParamByName('DPRO').Value := nfe_001NFE_XPROD.AsString;
      ibSP.ParamByName('DPR2').Value := null;
      ibSP.ParamByName('DPR3').Value := null;
      ibSP.ParamByName('DPR4').Value := null;
      ibSP.ParamByName('DPR5').Value := null;
      ibSP.ParamByName('APRO').Value := null;
      ibSP.ParamByName('OBSE').Value := null;
      ibSP.ParamByName('COMP').Value := null;
      ibSP.ParamByName('DUNI').Value := nfe_001NFE_UCOM.AsString;
      ibSP.ParamByName('GRAD').Value := null;
      ibSP.ParamByName('CEMB').Value := null;
      ibSP.ParamByName('DEMB').Value := null;
      ibSP.ParamByName('CGRP').Value := 3;
      ibSP.ParamByName('RGRP').Value := 'FD';
      ibSP.ParamByName('DGRP').Value := 'FARDO';
      ibSP.ParamByName('APRC').Value := '0';
      ibSP.ParamByName('LDSC').Value := 0;
      ibSP.ParamByName('CCAT').Value := null;
      ibSP.ParamByName('RCAT').Value := null;
      ibSP.ParamByName('DCAT').Value := null;
      ibSP.ParamByName('CCOR').Value := null;
      ibSP.ParamByName('RCOR').Value := null;
      ibSP.ParamByName('DCOR').Value := null;
      ibSP.ParamByName('CCOL').Value := null;
      ibSP.ParamByName('DCOL').Value := null;
      ibSP.ParamByName('CDFO').Value := frmprincipal.parametrosID.AsInteger;
      ibSP.ParamByName('DORI').Value := 'CHINA';
      ibSP.ParamByName('REPR').Value := 'R';
      ibSP.ParamByName('CCST').Value := '1';
      ibSP.ParamByName('CCLF').Value := nfe_001NFE_NCM.AsString;
      ibSP.ParamByName('METR').Value := null;
      ibSP.ParamByName('PESO').Value := null;
      ibSP.ParamByName('UTIL').Value := null;
      ibSP.ParamByName('LARG').Value := null;
      ibSP.ParamByName('GRAM').Value := null;
      ibSP.ParamByName('REND').Value := null;
      ibSP.ParamByName('PSCN').Value := null;
      ibSP.ParamByName('PSMR').Value := null;
      ibSP.ParamByName('ELAS').Value := null;
      ibSP.ParamByName('ELAC').Value := null;
      ibSP.ParamByName('STLN').Value := null;
      ibSP.ParamByName('STAL').Value := '0';
      ibSP.ParamByName('LAVA').Value := null;
      ibSP.ParamByName('STA').Value  := '0';
      ibSP.ParamByName('STAV').Value := 'A';
      ibSP.ParamByName('PCOM').Value := nfe_001NFE_VUNCOM.AsFloat;
      ibSP.ParamByName('CUST').Value := null;
      ibSP.ParamByName('CLIB').Value := null;
      ibSP.ParamByName('PPRZ').Value := null;
      ibSP.ParamByName('PPER').Value := null;
      ibSP.ParamByName('VPRZ').Value := null;
      ibSP.ParamByName('VPER').Value := null;
      ibSP.ParamByName('RPRZ').Value := null;
      ibSP.ParamByName('RPER').Value := null;
      ibSP.ParamByName('PDSC').Value := null;
      ibSP.ParamByName('PREC').Value := null;
      ibSP.ParamByName('PPRO').Value := null;
      ibSP.ParamByName('VDSC').Value := null;
      ibSP.ParamByName('VPRC').Value := null;
      ibSP.ParamByName('VPRO').Value := null;
      ibSP.ParamByName('RDSC').Value := null;
      ibSP.ParamByName('RPRC').Value := null;
      ibSP.ParamByName('RPRO').Value := null;
      ibSP.ParamByName('SPRC').Value := null;
      ibSP.ParamByName('SPRO').Value := null;
      ibSP.ParamByName('SDSC').Value := null;
      ibSP.ParamByName('SPRZ').Value := null;
      ibSP.ParamByName('SPER').Value := null;
      ibSP.ParamByName('PIPI').Value := nfe_001NFE_PIPI.AsFloat;
      ibSP.ParamByName('VOCX').Value := null;
      ibSP.ParamByName('VOSC').Value := null;
      ibSP.ParamByName('VOFD').Value := null;
      ibSP.ParamByName('CNA1').Value := null;
      ibSP.ParamByName('CNA2').Value := null;
      ibSP.ParamByName('PCOR').Value := null;
      ibSP.ParamByName('OBSF').Value := null;
      ibSP.ParamByName('DENS').Value := null;
      ibSP.ParamByName('TITF').Value := null;
      ibSP.ExecProc;

      ibSP.StoredProcName  := 'SP_CAD_PRO_IMG';
      ibSP.Prepare;

      ibSP.ParamByName('ID').Value   := 0;
      ibSP.ParamByName('CART').Value := nfe_001NFE_CPROD.AsString;
      ibSP.ParamByName('ONS1').Value := null;
      ibSP.ParamByName('ONS2').Value := null;
      ibSP.ParamByName('ONS3').Value := null;
      ibSP.ParamByName('ONS4').Value := null;
      ibSP.ParamByName('ONS5').Value := null;
      ibSP.ParamByName('ONS6').Value := null;
      ibSP.ParamByName('ONS7').Value := null;
      ibSP.ParamByName('ONS8').Value := null;
      ibSP.ParamByName('FOTO').Value := null;
      ibSP.ParamByName('FOT2').Value := null;
      ibSP.ParamByName('FOT3').Value := null;
      ibSP.ParamByName('FOT4').Value := null;
      ibSP.ParamByName('FOT5').Value := null;
      ibSP.ParamByName('FOT6').Value := null;
      ibSP.ParamByName('FOT7').Value := null;
      ibSP.ParamByName('FOT8').Value := null;
      ibSP.ParamByName('INS1').Value := null;
      ibSP.ParamByName('INS2').Value := null;
      ibSP.ParamByName('INS3').Value := null;
      ibSP.ParamByName('INS4').Value := null;
      ibSP.ParamByName('INS5').Value := null;
      ibSP.ParamByName('INS6').Value := null;
      ibSP.ParamByName('INS7').Value := null;
      ibSP.ParamByName('INS8').Value := null;
      ibSP.ExecProc;
    end else break;
  end;

  result := ID_PRODUTO;
end;

procedure Tfrmven_nfd.PESQUISA_PRODUTO(campo,cpro:string);
var
  nRecNo: integer;
begin
  if cpro = '' then
     abort;

   nRecNo := frmprincipal.PESQUISA_PRODUTO(campo,cpro);

   if nRecNo = 0 then
   begin
     messageBox(handle,PChar(campo+' não cadastrado !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
     Abort;
   end
   else if nRecNo  > 1 then
   begin
     frmcad_pro_con := Tfrmcad_pro_con.Create(self);
     with frmcad_pro_con.cadastro do
     begin
       SQL.Clear;
       SQL.Add(frmprincipal.psq_pro.Text);
       Open;
     end;
     frmcad_pro_con.ShowModal;
   end
   else if nRecNo = 1 then
   begin
     if frmprincipal.psq_proPRO_STAV.AsString <> 'A' then
     begin
       messageBox(handle,'Produto inativo !',PChar(self.Caption),MB_ICONERROR+MB_OK);
       Abort;
     end;

     if frmprincipal.psq_proPRO_STA.AsString <> '0' then
     begin
       messageBox(handle,'Produto enviado para a lixeira !',PChar(self.Caption),MB_ICONERROR+MB_OK);
       Abort;
     end;

     nfe_001NFE_IPRO.Value      := frmprincipal.psq_proID.AsInteger;
     nfe_001NFE_CPROD.Value     := frmprincipal.psq_proPRO_CPRO.AsString;
     nfe_001NFE_XPROD.Value     := frmprincipal.psq_proPRO_DPRO.AsString;
     nfe_001NFE_UCOM.Value      := frmprincipal.psq_proPRO_DUNI.AsString;
     nfe_001NFE_VUNCOM.Value    := frmprincipal.psq_proPRO_PREC.AsFloat;
     nfe_001NFE_PREC.Value      := frmprincipal.psq_proPRO_PREC.AsFloat;
     nfe_001NFE_NCM.Value       := frmprincipal.psq_proPRO_CCLF.AsString;
     nfe_001NFE_ORIG.Value      := frmprincipal.psq_proPRO_CCST.AsString;
     nfe_001NFE_REPR.Value      := frmprincipal.psq_proPRO_REPR.AsString;
     nfe_001NFE_INFADPROD.Value := frmprincipal.psq_proPRO_APRO.AsString;

     if nfe_001NFE_INFADPROD.AsString <> '' then
        nfe_001NFE_INFADPROD.Value := nfe_001NFE_INFADPROD.AsString+' ';
     nfe_001NFE_INFADPROD.Value    := nfe_001NFE_INFADPROD.AsString+TRIM(frmprincipal.psq_proPRO_COMP.AsString);

     with consulta do
     begin
       SQL.Clear;
       SQL.Add('SELECT PRO_ORIG FROM CAD_PRO_ORI');
       SQL.Add('WHERE  PRO_CART = '''+frmprincipal.psq_proPRO_CART.AsString+'''');
       SQL.Add('AND    PRO_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
       Open;

       if not fields[0].IsNull then
       nfe_001NFE_ORIG.Value := fields[0].AsString;
     end;

     if (nfe_001NFE_CFOP.AsString = '5102') and (nfe_001NFE_ORIG.AsString = '0') and (frmprincipal.parametrosPAR_FANT.AsString = 'LEBIANCO') then
     begin
       nfe_001NFE_VUNCOM.Value := nfe_001NFE_PREC.AsFloat;
       nfe_001NFE_REPR.Value   := 'L';
     end;
   end;
end;

procedure Tfrmven_nfd.PESQUISA_TRANSPORTADORA;
begin
  activecontrol := nil;
  with consulta do
  begin
    SQL.Clear;
    if (edcfav.Text = '') and (edctra.Text = '') then
    begin
      SQL.Add('SELECT ID,TRA_RAZA,TRA_RG,TRA_CPF,TRA_INSC,TRA_CNPJ,TRA_TLOG,TRA_LOGR,TRA_CEP,TRA_NUME,TRA_COMP,TRA_BAI,TRA_CID,TRA_ESTA');
      SQL.Add('FROM   CAD_TRA');
      SQL.Add('WHERE  ID = ''1''');
    end
    else
    begin
      if cbdtra.Text = 'CLIENTE RETIRA' then
      begin
        if lacfav.Caption = 'Cliente' then
        begin
          SQL.Add('SELECT ID,CLI_RAZA,CLI_RG,CLI_CPF,CLI_INSC,CLI_CNPJ,CLI_TLOG,CLI_LOGR,CLI_CEP,CLI_NUME,CLI_COMP,CLI_BAI,CLI_CID,CLI_ESTA');
          SQL.Add('FROM   CAD_CLI');
          SQL.Add('WHERE  ID = '''+edcfav.Text+'''');
        end
        else
        begin
          SQL.Add('SELECT ID,FOR_RAZA,FOR_RG,FOR_CPF,FOR_INSC,FOR_CNPJ,FOR_TLOG,FOR_LOGR,FOR_CEP,FOR_NUME,FOR_COMP,FOR_BAI,FOR_CID,FOR_ESTA');
          SQL.Add('FROM   CAD_FOR');
          SQL.Add('WHERE  ID = '''+edcfav.Text+'''');
        end;
      end
      else
      begin
        SQL.Add('SELECT ID,TRA_RAZA,TRA_RG,TRA_CPF,TRA_INSC,TRA_CNPJ,TRA_TLOG,TRA_LOGR,TRA_CEP,TRA_NUME,TRA_COMP,TRA_BAI,TRA_CID,TRA_ESTA');
        SQL.Add('FROM   CAD_TRA');
        SQL.Add('WHERE  TRA_FANT = '''+cbdtra.Text+'''');
      end;
    end;
    Open;
  end;

  if not consulta.Fields[0].IsNull then
  begin

    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('DELETE FROM NFE_TRA');
      ExecSQL;
    end;
    tSHEILD.CommitRetaining;

    tra_001.Close;
    tra_001.Open;
    
    tra_001.Append;
    tra_001ID.Value := 0;

    if consulta.Fields[0].AsInteger = frmprincipal.parametrosPAR_CTRA.AsInteger then
    begin
      cbmodfrete.Text := 'EMITENTE';
      tra_001NFE_MODFRETE.Value := '0';
    end
    else
    begin
      cbmodfrete.Text := 'DESTINATÁRIO';
      tra_001NFE_MODFRETE.Value := '1';
    end;

    if cbdtra.Text = 'CLIENTE RETIRA' then
    begin
      edctra.Text           := '2';
      tra_001NFE_CTRA.Value := 2;
    end
    else
    begin
      edctra.Text           := consulta.Fields[0].AsString;
      tra_001NFE_CTRA.Value := consulta.Fields[0].AsInteger;
    end;
    tra_001NFE_RAZA.Value := consulta.Fields[1].AsString;
    tra_001NFE_RG.Value   := consulta.Fields[2].AsString;
    tra_001NFE_CPF.Value  := consulta.Fields[3].AsString;
    tra_001NFE_INSC.Value := consulta.Fields[4].AsString;
    tra_001NFE_CNPJ.Value := consulta.Fields[5].AsString;
    tra_001NFE_TLOG.Value := consulta.Fields[6].AsString;
    tra_001NFE_LOGR.Value := consulta.Fields[7].AsString;
    tra_001NFE_CEP.Value  := consulta.Fields[8].AsString;
    tra_001NFE_NUME.Value := consulta.Fields[9].AsString;
    tra_001NFE_COMP.Value := consulta.Fields[10].AsString;
    tra_001NFE_BAI.Value  := consulta.Fields[11].AsString;
    tra_001NFE_CID.Value  := consulta.Fields[12].AsString;
    tra_001NFE_UF.Value   := consulta.Fields[13].AsString;
    tra_001.Post;

    tSHEILD.CommitRetaining;
    tra_001.Close;
    tra_001.Open;
  end;
end;

procedure Tfrmven_nfd.SALVA_NF;
var
  ccab: integer;
begin
  activecontrol := nil;
  
  if (cbcnat.Text = '') or (cbdnat.Text = '') then
  begin
    cbcnat.SetFocus;
    messageBox(handle,'C.F.O.P. não informado !',PChar(caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if (edcdnf.Text = '') or (edcdnf.Text = '0') then
  begin
    edcdnf.SetFocus;
    messageBox(handle,'Número da nota fiscal do emitente não informada !',PChar(caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if eddemi.Date <= 0  then
  begin
    eddemi.SetFocus;
    messageBox(handle,'Data de emissão da nota fiscal do emitente informada !',PChar(caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if cbfinnfe.Text = '' then
  begin
    cbfinnfe.SetFocus;
    messageBox(handle,'Tipo da nota fiscal do emitente não informada !',PChar(caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if (cbfinnfe.Text = 'DEVOLUÇÃO') then
  begin
    if (edcdns.Text = '') or (edcdns.Text = '0') then
    begin
      if yesno(handle,'Número da nota fiscal original não informada !'+#13+'Continuar ?') = mrno then
      begin
        edcdns.SetFocus;
        Abort;
      end;  
    end;
  end;  

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT NFE_CFAV,NFE_DFAV FROM '+SLPrincipal.Values['nfe_cab']);
    SQL.Add('WHERE  NFE_CDNF = '''+edcdnf.Text+'''');
    SQL.Add('AND    NFE_TPNF = ''0''');
    SQL.Add('AND    NFE_STA  = ''0''');
    Open;

    if not fields[0].IsNull then
    begin
      if yesno(handle,'Nota Fiscal já emitida !'                                +#13+
                      'Favorecido: '+fields[0].AsString+' - '+fields[1].AsString+#13+
                      'Continuar ?') = mrno then
      begin
        edcdnf.SetFocus;
        Abort;
      end;  
    end;
  end;

  try
    tag := 1;
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_'+SLPrincipal.Values['nfe_cab']+',0) FROM RDB$DATABASE');
      Open;
      ccab := fields[0].AsInteger+1;
    end;

    try
      ibSP.StoredProcName := 'SP_NFE_CAB';
      ibSP.Prepare;

      ibSP.ParamByName('nfe').Value  := 'NFE_CAB';
      if frmprincipal.parametrosID.AsInteger > 1 then
      ibSP.ParamByName('nfe').Value  := 'NFE_CAB_'+strzero(frmprincipal.parametrosID.AsInteger,3);

      ibSP.ParamByName('id').Value           := 0;
      ibSP.ParamByName('CONC').Value         := edconc.Text;
      ibSP.ParamByName('CDNF').Value         := edcdnf.Text;
      ibSP.ParamByName('AAMM').Value         := '0';
      ibSP.ParamByName('DEMI').Value         := eddemi.Date;
      ibSP.ParamByName('DSAI').Value         := eddemi.Date;
      ibSP.ParamByName('HRSE').Value         := time;
      ibSP.ParamByName('CVEN').Value         := edcven.Text;
      ibSP.ParamByName('DVEN').Value         := eddven.Text;
      ibSP.ParamByName('CREP').Value         := edcrep.Text;
      ibSP.ParamByName('DREP').Value         := eddrep.Text;
      ibSP.ParamByName('CFAV').Value         := edcfav.Text;
      ibSP.ParamByName('DFAV').Value         := eddfav.Text;
      ibSP.ParamByName('CTRA').Value         := edctra.Text;
      ibSP.ParamByName('DTRA').Value         := cbdtra.Text;
      ibSP.ParamByName('CNAT').Value         := copy(cbcnat.Text,1,4);
      ibSP.ParamByName('INDPAG').Value       := '0';
      ibSP.ParamByName('TPNF').Value         := '0';
      ibSP.ParamByName('NFREF').Value        := '0';
      ibSP.ParamByName('REFNFE').Value       := '';
      ibSP.ParamByName('CUFREF').Value       := frmprincipal.parametrosPAR_UF.AsString;
      ibSP.ParamByName('AAMMREF').Value      := '';
      ibSP.ParamByName('CNPJREF').Value      := frmprincipal.parametrosPAR_CNPJ.AsString;
      ibSP.ParamByName('MODREF').Value       := '01';
      ibSP.ParamByName('SERIEREF').Value     := frmprincipal.parametrosPAR_SERI.AsString;
      ibSP.ParamByName('NNFREF').Value       := '0';
      ibSP.ParamByName('TPEMIS').Value       := '1';
      ibSP.ParamByName('FINNFE').Value       := '0';
      ibSP.ParamByName('CHAV').Value         := '';
      ibSP.ParamByName('PROT').Value         := '';
      ibSP.ParamByName('PROCEMI').Value      := '0';
      ibSP.ParamByName('VERPROC').Value      := '3.10';
      ibSP.ParamByName('DHCONT').Value       := now;
      ibSP.ParamByName('XJUST').Value        := '';
      ibSP.ParamByName('ISUF').Value         := '';
      ibSP.ParamByName('QCOM').Value         := RETORNA_REAL(edqtde.Text);
      ibSP.ParamByName('VBC').Value          := RETORNA_REAL(edvbc.Text);
      ibSP.ParamByName('VICMS').Value        := RETORNA_REAL(edvicms.Text);
      ibSP.ParamByName('VBCST').Value        := 0;
      ibSP.ParamByName('VST').Value          := 0;
      ibSP.ParamByName('VPROD').Value        := RETORNA_REAL(edvprod.Text);
      ibSP.ParamByName('VFRETE').Value       := RETORNA_REAL(edvfrete.Text);
      ibSP.ParamByName('VSEG').Value         := 0;
      ibSP.ParamByName('VDESC').Value        := RETORNA_REAL(edvdesc.Text);
      ibSP.ParamByName('VII').Value          := RETORNA_REAL(edvII.Text);
      ibSP.ParamByName('VIPI').Value         := RETORNA_REAL(edvipi.Text);
      ibSP.ParamByName('VPIS').Value         := RETORNA_REAL(edvpis.Text);
      ibSP.ParamByName('VCOFINS').Value      := RETORNA_REAL(edvcofins.Text);
      ibSP.ParamByName('VOUTRO').Value       := RETORNA_REAL(edvoutro.Text);
      ibSP.ParamByName('VNF').Value          := RETORNA_REAL(edvnf.Text);
      ibSP.ParamByName('VSERVISSQN').Value   := 0;
      ibSP.ParamByName('VBCISSQN').Value     := 0;
      ibSP.ParamByName('VISS').Value         := 0;
      ibSP.ParamByName('VPISISSQN').Value    := 0;
      ibSP.ParamByName('VCOFINSISSQN').Value := 0;
      ibSP.ParamByName('VRETPIS').Value      := 0;
      ibSP.ParamByName('VRETCOFINS').Value   := 0;
      ibSP.ParamByName('VRETCSLL').Value     := 0;
      ibSP.ParamByName('VBCIRRF').Value      := 0;
      ibSP.ParamByName('VIRRF').Value        := 0;
      ibSP.ParamByName('VBCRETPREV').Value   := 0;
      ibSP.ParamByName('VRETPREV').Value     := 0;
      ibSP.ParamByName('VRETPREV').Value     := 0;
      ibSP.ParamByName('VRETPREV').Value     := 0;
      ibSP.ParamByName('OBSE').Value         := edINF.Text;
      ibSP.ParamByName('STA').Value          := '0';
      ibSP.ParamByName('CLFO').Value         := '0';
      if lacfav.Caption = 'Fornecedor' then
      ibSP.ParamByName('CLFO').Value         := '1';
      ibSP.ParamByName('ESTO').Value         := '0';
      if (siEST.Tag = 1) and (siEST.Enabled) then
      ibSP.ParamByName('ESTO').Value         := '1';
      ibSP.ExecProc;
      IBTra.CommitRetaining;
    except
      IBTra.RollbackRetaining;
      messageBox(handle,'Problemas na gravação do cabeçalho !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    try
      ibSP.StoredProcName := 'SP_NFE_TRA';
      ibSP.Prepare;

      ibSP.ParamByName('nfe').Value  := 'NFE_TRA';
      if frmprincipal.parametrosID.AsInteger > 1 then
      ibSP.ParamByName('nfe').Value  := 'NFE_TRA_'+strzero(frmprincipal.parametrosID.AsInteger,3);

      ibSP.ParamByName('id').Value      := 0;
      ibSP.ParamByName('CCAB').Value      := ccab;
      ibSP.ParamByName('CTRA').Value      := edctra.Text;
      ibSP.ParamByName('MODFRETE').Value  := tra_001NFE_MODFRETE.AsString;
      ibSP.ParamByName('RETTRANSP').Value := tra_001NFE_RETTRANSP.AsString;
      ibSP.ParamByName('VSERV').Value     := tra_001NFE_VSERV.AsFloat;
      ibSP.ParamByName('VBCRET').Value    := tra_001NFE_VBCRET.AsFloat;
      ibSP.ParamByName('PICMSRET').Value  := tra_001NFE_PICMSRET.AsFloat;
      ibSP.ParamByName('VICMSRET').Value  := tra_001NFE_VICMSRET.AsFloat;
      ibSP.ParamByName('CFOP').Value      := tra_001NFE_CFOP.AsString;
      ibSP.ParamByName('CMUNFG').Value    := tra_001NFE_CMUNFG.AsString;
      ibSP.ParamByName('PLACA').Value     := tra_001NFE_PLACA.AsString;
      ibSP.ParamByName('UF').Value        := tra_001NFE_UF.AsString;
      ibSP.ParamByName('RNTC').Value      := tra_001NFE_RNTC.AsString;
      ibSP.ParamByName('QVOL').Value      := edqvol.Text;
      ibSP.ParamByName('ESP').Value       := edesp.Text;
      ibSP.ParamByName('MARCA').Value     := tra_001NFE_MARCA.AsString;
      ibSP.ParamByName('NVOL').Value      := tra_001NFE_NVOL.AsString;
      ibSP.ParamByName('PSLQ').Value      := RETORNA_REAL(edpslq.Text);
      ibSP.ParamByName('PSBR').Value      := RETORNA_REAL(edpsbr.Text);
      ibSP.ParamByName('NLACRE').Value    := tra_001NFE_NLACRE.AsString;
      ibSP.ExecProc;
      IBTra.CommitRetaining;
    except
      IBTra.RollbackRetaining;
      messageBox(handle,'Problemas na gravação da transportadora !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    dup_001.DisableControls;
    dup_001.First;
    while not dup_001.Eof do
    begin
      try
        ibSP.StoredProcName := 'SP_NFE_DUP';
        ibSP.Prepare;

        ibSP.ParamByName('nfe').Value  := 'NFE_DUP';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('nfe').Value  := 'NFE_DUP_'+strzero(frmprincipal.parametrosID.AsInteger,3);

        ibSP.ParamByName('id').Value    := 0;
        ibSP.ParamByName('CCAB').Value  := ccab;
        ibSP.ParamByName('CDRO').Value  := dup_001NFE_CDRO.AsInteger;
        ibSP.ParamByName('CFAV').Value  := dup_001NFE_CFAV.AsInteger;
        ibSP.ParamByName('DROM').Value  := dup_001NFE_DROM.AsDateTime;
        ibSP.ParamByName('CDNF').Value  := dup_001NFE_CDNF.AsInteger;
        ibSP.ParamByName('DNFE').Value  := dup_001NFE_DNFE.AsDateTime;
        ibSP.ParamByName('TITU').Value  := dup_001NFE_TITU.AsString;
        ibSP.ParamByName('STPD').Value  := dup_001NFE_STPD.AsString;
        ibSP.ParamByName('STCO').Value  := dup_001NFE_STCO.AsString;
        ibSP.ParamByName('STFI').Value  := dup_001NFE_STFI.AsString;
        ibSP.ParamByName('PARC').Value  := dup_001NFE_PARC.AsInteger;
        ibSP.ParamByName('DVEN').Value  := dup_001NFE_DVEN.AsDateTime;
        ibSP.ParamByName('VDUP').Value  := dup_001NFE_VDUP.AsFloat;
        ibSP.ParamByName('DPAG').Value  := dup_001NFE_DPAG.AsDateTime;
        ibSP.ParamByName('VPAG').Value  := dup_001NFE_VPAG.AsFloat;
        ibSP.ParamByName('VPEN').Value  := dup_001NFE_VPEN.AsFloat;
        ibSP.ParamByName('OBSE').Value  := dup_001NFE_OBSE.Value;
        ibSP.ParamByName('STA').Value   := '0';
        ibSP.ExecProc;
        IBTra.CommitRetaining;
      except
        IBTra.RollbackRetaining;
        messageBox(handle,'Problemas na gravação da duplicata !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
        Abort;
      end;
      dup_001.Next;
    end;

    cli_001.DisableControls;
    cli_001.First;
    while not cli_001.Eof do
    begin
      try
        ibSP.StoredProcName := 'SP_NFE_CLI';
        ibSP.Prepare;

        ibSP.ParamByName('nfe').Value  := 'NFE_CLI';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('nfe').Value  := 'NFE_CLI_'+strzero(frmprincipal.parametrosID.AsInteger,3);

        ibSP.ParamByName('id').Value   := 0;
        ibSP.ParamByName('CCAB').Value := ccab;
        ibSP.ParamByName('CDNF').Value := cli_001NFE_CDNF.AsInteger;
        ibSP.ParamByName('DCAD').Value := cli_001NFE_DCAD.AsDateTime;
        ibSP.ParamByName('VNF').Value  := cli_001NFE_VNF.AsFloat;
        ibSP.ExecProc;
        IBTra.CommitRetaining;
      except
        IBTra.RollbackRetaining;
        messageBox(handle,'Problemas na gravação das notas de serviços !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
        Abort;
      end;
      cli_001.Next;
    end;

    nfe_001.DisableControls;
    nfe_001.First;
    while not nfe_001.Eof do
    begin
      try
        ibSP.StoredProcName := 'SP_NFE_ITE';
        ibSP.Prepare;

        ibSP.ParamByName('nfe').Value  := 'NFE_ITE';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('nfe').Value  := 'NFE_ITE_'+strzero(frmprincipal.parametrosID.AsInteger,3);

        ibSP.ParamByName('id').Value             := 0;
        ibSP.ParamByName('CCAB').Value           := ccab;
        ibSP.ParamByName('CDNF').Value           := edcdnf.Text;
        ibSP.ParamByName('INDTOT').Value         := nfe_001NFE_INDTOT.AsInteger;
        ibSP.ParamByName('CFOP').Value           := nfe_001NFE_CFOP.AsString;
        ibSP.ParamByName('CART').Value           := nfe_001NFE_CART.AsString;
        ibSP.ParamByName('CPROD').Value          := nfe_001NFE_CPROD.AsString;
        ibSP.ParamByName('CEAN').Value           := nfe_001NFE_CEAN.AsString;
        ibSP.ParamByName('NCM').Value            := nfe_001NFE_NCM.AsString;
        ibSP.ParamByName('EXTIPI').Value         := nfe_001NFE_EXTIPI.AsString;
        ibSP.ParamByName('DCOR').Value           := nfe_001NFE_DCOR.AsString;
        ibSP.ParamByName('XPROD').Value          := nfe_001NFE_XPROD.AsString;
        ibSP.ParamByName('INFADPROD').Value      := nfe_001NFE_INFADPROD.AsString;
        ibSP.ParamByName('UCOM').Value           := nfe_001NFE_UCOM.AsString;
        ibSP.ParamByName('QCOM').Value           := nfe_001NFE_QCOM.AsFloat;
        ibSP.ParamByName('RCOM').Value           := nfe_001NFE_RCOM.AsInteger;
        ibSP.ParamByName('VUNCOM').Value         := nfe_001NFE_VUNCOM.AsFloat;
        ibSP.ParamByName('VPROD').Value          := nfe_001NFE_VPROD.AsFloat;
        ibSP.ParamByName('VFRETE').Value         := nfe_001NFE_VFRETE.AsFloat;
        ibSP.ParamByName('VSEG').Value           := nfe_001NFE_VSEG.AsFloat;
        ibSP.ParamByName('VDESC').Value          := nfe_001NFE_VDESC.AsFloat;
        ibSP.ParamByName('VOUTRO').Value         := nfe_001NFE_VOUTRO.AsFloat;
        ibSP.ParamByName('XLOCEMBARQ').Value     := nfe_001NFE_XLOCEMBARQ.AsString;
        ibSP.ParamByName('UFEMBARQ').Value       := nfe_001NFE_UFEMBARQ.AsString;
        ibSP.ParamByName('NDI').Value            := nfe_001NFE_NDI.AsString;
        ibSP.ParamByName('DDI').Value            := Date;
        ibSP.ParamByName('XLOCDESEMB').Value     := nfe_001NFE_XLOCDESEMB.AsString;
        ibSP.ParamByName('UFDESEMB').Value       := nfe_001NFE_UFDESEMB.AsString;
        ibSP.ParamByName('DDESEMB').Value        := Date;
        ibSP.ParamByName('CEXPORTADOR').Value    := nfe_001NFE_CEXPORTADOR.AsString;
        ibSP.ParamByName('NADICAO').Value        := nfe_001NFE_NADICAO.AsInteger;
        ibSP.ParamByName('NSEQADIC').Value       := nfe_001NFE_NSEQADIC.AsInteger;
        ibSP.ParamByName('CFABRICANTE').Value    := nfe_001NFE_CFABRICANTE.AsString;
        ibSP.ParamByName('VDESCDI').Value        := nfe_001NFE_VDESCDI.AsFloat;
        ibSP.ParamByName('XPED').Value           := nfe_001NFE_XPED.AsString;
        ibSP.ParamByName('ITEMPED').Value        := nfe_001NFE_ITEMPED.AsString;
        ibSP.ParamByName('ORIG').Value           := nfe_001NFE_ORIG.AsString;
        ibSP.ParamByName('CST').Value            := nfe_001NFE_CST.AsString;
        ibSP.ParamByName('MODBC').Value          := nfe_001NFE_MODBC.AsString;
        ibSP.ParamByName('PREDBC').Value         := nfe_001NFE_PREDBC.AsFloat;
        ibSP.ParamByName('VBC').Value            := nfe_001NFE_VBC.AsFloat;
        ibSP.ParamByName('PICMS').Value          := nfe_001NFE_PICMS.AsFloat;
        ibSP.ParamByName('VICMS').Value          := nfe_001NFE_VICMS.AsFloat;
        ibSP.ParamByName('MODBCST').Value        := nfe_001NFE_MODBCST.AsString;
        ibSP.ParamByName('MVAST').Value          := nfe_001NFE_MVAST.AsFloat;
        ibSP.ParamByName('PREDBCST').Value       := nfe_001NFE_PREDBCST.AsFloat;
        ibSP.ParamByName('VBCST').Value          := nfe_001NFE_VBCST.AsFloat;
        ibSP.ParamByName('VBCSTRET').Value       := nfe_001NFE_VBCSTRET.AsFloat;
        ibSP.ParamByName('VICMSSTRET').Value     := nfe_001NFE_VICMSSTRET.AsFloat;
        ibSP.ParamByName('PICMSST').Value        := nfe_001NFE_PICMSST.AsFloat;
        ibSP.ParamByName('VICMSST').Value        := nfe_001NFE_VICMSST.AsFloat;
        ibSP.ParamByName('PCREDSN').Value        := nfe_001NFE_PCREDSN.AsFloat;
        ibSP.ParamByName('VCREDICMSSN').Value    := nfe_001NFE_VCREDICMSSN.AsFloat;
        ibSP.ParamByName('CSTIPI').Value         := nfe_001NFE_CSTIPI.AsString;
        ibSP.ParamByName('VBCIPI').Value         := nfe_001NFE_VBCIPI.AsFloat;
        ibSP.ParamByName('PIPI').Value           := nfe_001NFE_PIPI.AsFloat;
        ibSP.ParamByName('VIPI').Value           := nfe_001NFE_VIPI.AsFloat;
        ibSP.ParamByName('VBCIMP').Value         := nfe_001NFE_VBCIMP.AsFloat;
        ibSP.ParamByName('VDESPADU').Value       := nfe_001NFE_VDESPADU.AsFloat;
        ibSP.ParamByName('VIIIMP').Value         := nfe_001NFE_VIIIMP.AsFloat;
        ibSP.ParamByName('VIOFIMP').Value        := nfe_001NFE_VIOFIMP.AsFloat;
        ibSP.ParamByName('CSTPIS').Value         := nfe_001NFE_CSTPIS.AsString;
        ibSP.ParamByName('VBCPIS').Value         := nfe_001NFE_VBCPIS.AsFloat;
        ibSP.ParamByName('PPIS').Value           := nfe_001NFE_PPIS.AsFloat;
        ibSP.ParamByName('VPIS').Value           := nfe_001NFE_VPIS.AsFloat;
        ibSP.ParamByName('VBCPISST').Value       := nfe_001NFE_VBCPISST.AsFloat;
        ibSP.ParamByName('PPISST').Value         := nfe_001NFE_PPISST.AsFloat;
        ibSP.ParamByName('VPISST').Value         := nfe_001NFE_VPISST.AsFloat;
        ibSP.ParamByName('CSTCOFINS').Value      := nfe_001NFE_CSTCOFINS.AsString;
        ibSP.ParamByName('VBCOFINS').Value       := nfe_001NFE_VBCOFINS.AsFloat;
        ibSP.ParamByName('PCOFINS').Value        := nfe_001NFE_PCOFINS.AsFloat;
        ibSP.ParamByName('VCOFINS').Value        := nfe_001NFE_VCOFINS.AsFloat;
        ibSP.ParamByName('VBCOFINSST').Value     := nfe_001NFE_VBCOFINSST.AsFloat;
        ibSP.ParamByName('PCOFINSST').Value      := nfe_001NFE_PCOFINSST.AsFloat;
        ibSP.ParamByName('VCOFINSST').Value      := nfe_001NFE_VCOFINSST.AsFloat;
        ibSP.ParamByName('VBCISSQN').Value       := nfe_001NFE_VBCISSQN.AsFloat;
        ibSP.ParamByName('VALIQISSQN').Value     := nfe_001NFE_VALIQISSQN.AsFloat;
        ibSP.ParamByName('VISSQN').Value         := nfe_001NFE_VISSQN.AsFloat;
        ibSP.ParamByName('CMUNFGISSQN').Value    := nfe_001NFE_CMUNFGISSQN.AsString;
        ibSP.ParamByName('CLISTSERV').Value      := nfe_001NFE_CLISTSERV.AsInteger;
        ibSP.ParamByName('VNF').Value            := nfe_001NFE_VNF.AsFloat;
        ibSP.ParamByName('CEST').Value           := nfe_001NFE_CEST.AsInteger;
        ibSP.ParamByName('VBCSTDEST').Value      := nfe_001NFE_VBCSTDEST.AsFloat;
        ibSP.ParamByName('VICMSSTDEST').Value    := nfe_001NFE_VICMSSTDEST.AsFloat;
        ibSP.ParamByName('VBCUFDEST').Value      := nfe_001NFE_VBCUFDEST.AsFloat;
        ibSP.ParamByName('PFCPUFDEST').Value     := nfe_001NFE_PFCPUFDEST.AsFloat;
        ibSP.ParamByName('PICMSUFDEST').Value    := nfe_001NFE_PICMSUFDEST.AsFloat;
        ibSP.ParamByName('PICMSINTER').Value     := nfe_001NFE_PICMSINTER.AsFloat;
        ibSP.ParamByName('PICMSINTERPART').Value := nfe_001NFE_PICMSINTERPART.AsFloat;
        ibSP.ParamByName('VFCPUFDEST').Value     := nfe_001NFE_VFCPUFDEST.AsFloat;
        ibSP.ParamByName('VICMSUFDEST').Value    := nfe_001NFE_VICMSUFDEST.AsFloat;
        ibSP.ParamByName('VICMSUFREMET').Value   := nfe_001NFE_VICMSUFREMET.AsFloat;
        ibSP.ExecProc;
        IBTra.CommitRetaining;

        if nfe_001NFE_REPR.AsString = 'L' then
        begin
          with frmprincipal.sp_sql do
          begin
            SQL.Clear;
            SQL.Add('UPDATE '+SLPrincipal.Values['rom_ite']);
            SQL.Add('SET   ROM_UNIT = '''+strtran(nfe_001NFE_VUNCOM.AsString,',','.')+''',');
            SQL.Add('      ROM_TOTA = '''+strtran(nfe_001NFE_VPROD.AsString ,',','.')+'''');
            SQL.Add('WHERE ROM_CCAB = '''+edcdro.Text+'''');
            SQL.Add('AND   ROM_CPRO = '''+nfe_001NFE_IPRO.AsString+'''');

            ibSP.StoredProcName := 'SP_SQL';
            ibSP.Prepare;
            ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
            ibSP.ExecProc;
            IBTra.CommitRetaining;
          end;

          with consulta do
          begin
            SQL.Clear;
            SQL.Add('SELECT SUM(ROM_TOTA) FROM '+SLPrincipal.Values['rom_ite']);
            SQL.Add('WHERE  ROM_CCAB = '''+edcdro.Text+'''');
            Open;
            tsde := fields[0].AsFloat;
            tcde := fields[0].AsFloat;

            SQL.Clear;
            SQL.Add('SELECT ROM_TDSC,ROM_PDSC,ROM_ADSC FROM '+SLPrincipal.Values['rom_cab']);
            SQL.Add('WHERE  ID = '''+edcdro.Text+'''');
            Open;

            if fields[1].AsFloat > 0 then
            begin
              if fields[0].AsString = '%' then
                 tcde := tsde  - ((tsde * fields[1].AsFloat) / 100)
              else if fields[0].AsString = '$' then
              begin
                if tsde >= fields[1].AsFloat then
                   tcde := tsde - fields[1].AsFloat;
              end;
            end;

            if fields[2].AsFloat > 0 then
               tcde := tcde - ((tcde * fields[2].AsFloat) / 100);
          end;

          with frmprincipal.sp_sql do
          begin
            SQL.Clear;
            SQL.Add('UPDATE '+SLPrincipal.Values['rom_cab']);
            SQL.Add('SET   ROM_TSDE = '''+strtran(floattostr(tsde),',','.')+''',');
            SQL.Add('      ROM_TCDE = '''+strtran(floattostr(tcde),',','.')+'''');
            SQL.Add('WHERE ID       = '''+edcdro.Text+'''');

            ibSP.StoredProcName := 'SP_SQL';
            ibSP.Prepare;
            ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
            ibSP.ExecProc;
            IBTra.CommitRetaining;
          end;
        end;
      except
        IBTra.RollbackRetaining;
        messageBox(handle,'Problemas na gravação dos itens !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
        Abort;
      end;
      nfe_001.Next;
    end;

    if (edcdro.Text <> '0') and (edcdro.Text <> '') then
    with frmprincipal.sp_sql do
    begin
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['rom_cab']);
      SQL.Add('SET   ROM_CDNF = '''+edcdnf.Text+''',');
      SQL.Add('      ROM_TCDE = '''+strtran(floattostr(RETORNA_REAL(edvnf.Text)),',','.')+''',');
      SQL.Add('      ROM_DNFS = '''+formatDateTime('mm/dd/yy',eddemi.Date)+'''');
      SQL.Add('WHERE ID = '''+edcdro.Text+'''');

      ibSP.StoredProcName := 'SP_SQL';
      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('SET   ROM_CDNF = '''+edcdnf.Text+''',');
      SQL.Add('      ROM_DNFS = '''+formatDateTime('mm/dd/yy',eddemi.Date)+'''');
      SQL.Add('WHERE ROM_CDRO = '''+edcdro.Text+'''');

      ibSP.StoredProcName := 'SP_SQL';
      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      dup_001.First;
    end
    else
      if (siEST.Tag = 1) and (siEST.Enabled) then
         BAIXA_ESTOQUE;

    IBTra.CommitRetaining;
    try
      with frmprincipal.sp_sql do
      begin
        SQL.Clear;
        if lacfav.Caption = 'Cliente' then
        begin
          SQL.Add('UPDATE CAD_CLI');
          SQL.Add('SET    CLI_RAZA = '''+edraza.Text+''',');
          SQL.Add('       CLI_INSC = '''+edinsc.Text+''',');
          SQL.Add('       CLI_CPF  = '''+edcpf.Text +''',');
          SQL.Add('       CLI_DDD  = '''+edDDD .Text+''',');
          SQL.Add('       CLI_TEL1 = '''+edTEL1.Text+''',');
          SQL.Add('       CLI_TLOG = '''+edTLOG.Text+''',');
          SQL.Add('       CLI_LOGR = '''+edLOGR.Text+''',');
          SQL.Add('       CLI_NUME = '''+edNUME.Text+''',');
          SQL.Add('       CLI_COMP = '''+edCOMP.Text+''',');
          SQL.Add('       CLI_CEP  = '''+edCEP .Text+''',');
          SQL.Add('       CLI_BAI  = '''+edBAI .Text+''',');
          SQL.Add('       CLI_CID  = '''+edCID .Text+''',');
          SQL.Add('       CLI_ESTA = '''+edESTA.Text+''',');
          SQL.Add('       CLI_CMUN = '''+edCMUN.Text+''',');
          SQL.Add('       CLI_TLOV = '''+edTLOV.Text+''',');
          SQL.Add('       CLI_LOGV = '''+edLOGV.Text+''',');
          SQL.Add('       CLI_NUMV = '''+edNUMV.Text+''',');
          SQL.Add('       CLI_COMV = '''+edCOMV.Text+''',');
          SQL.Add('       CLI_CEPV = '''+edCEPV.Text+''',');
          SQL.Add('       CLI_BAIV = '''+edBAIV.Text+''',');
          SQL.Add('       CLI_CIDV = '''+edCIDV.Text+''',');
          SQL.Add('       CLI_ESTV = '''+edESTV.Text+''',');
          SQL.Add('       CLI_CMUV = '''+edCMUV.Text+'''');
          SQL.Add('WHERE ID = '''+edcfav.Text+'''');
        end
        else
        begin
          SQL.Add('UPDATE CAD_FOR');
          SQL.Add('SET    FOR_RAZA = '''+edraza.Text+''',');
          SQL.Add('       FOR_INSC = '''+edinsc.Text+''',');
          SQL.Add('       FOR_CPF  = '''+edcpf.Text +''',');
          SQL.Add('       FOR_DDD  = '''+edDDD .Text+''',');
          SQL.Add('       FOR_TEL1 = '''+edTEL1.Text+''',');
          SQL.Add('       FOR_TLOG = '''+edTLOG.Text+''',');
          SQL.Add('       FOR_LOGR = '''+edLOGR.Text+''',');
          SQL.Add('       FOR_NUME = '''+edNUME.Text+''',');
          SQL.Add('       FOR_COMP = '''+edCOMP.Text+''',');
          SQL.Add('       FOR_CEP  = '''+edCEP .Text+''',');
          SQL.Add('       FOR_BAI  = '''+edBAI .Text+''',');
          SQL.Add('       FOR_CID  = '''+edCID .Text+''',');
          SQL.Add('       FOR_ESTA = '''+edESTA.Text+''',');
          SQL.Add('       FOR_CMUN = '''+edCMUN.Text+''',');
          SQL.Add('       FOR_TLOV = '''+edTLOV.Text+''',');
          SQL.Add('       FOR_LOGV = '''+edLOGV.Text+''',');
          SQL.Add('       FOR_NUMV = '''+edNUMV.Text+''',');
          SQL.Add('       FOR_COMV = '''+edCOMV.Text+''',');
          SQL.Add('       FOR_CEPV = '''+edCEPV.Text+''',');
          SQL.Add('       FOR_BAIV = '''+edBAIV.Text+''',');
          SQL.Add('       FOR_CIDV = '''+edCIDV.Text+''',');
          SQL.Add('       FOR_ESTV = '''+edESTV.Text+''',');
          SQL.Add('       FOR_CMUV = '''+edCMUV.Text+'''');
          SQL.Add('WHERE ID = '''+edcfav.Text+'''');
        end;

        ibSP.StoredProcName := 'SP_SQL';
        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;
      end;
      IBTra.CommitRetaining;
    except
      ;
    end;
  finally
    Tag := 0;
    nfe_001.EnableControls;
    dup_001.EnableControls;
    close;
  end;
end;

procedure Tfrmven_nfd.DUPLICATAS;
begin
end;

procedure Tfrmven_nfd.PESQUISA_NATUREZA(pesq,chave: string);
begin
  activecontrol := nil;
  if pesq = '' then
     exit;

  with tab_nat do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM TAB_NAT');
    if chave = 'F' then
       SQL.Add('WHERE  NAT_DNAT = '''+pesq+'''')
    else if chave = 'C' then
       SQL.Add('WHERE  NAT_CNAT = '''+copy(pesq,1,4)+'''');
    Open;

    if fields[0].IsNull then
    begin
      messageBox(handle,'C.F.O.P. não cadastrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;

  if tab_natNAT_STA.AsString = '1' then
  begin
    messageBox(handle,'C.F.O.P. enviado para a lixeira !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  edtpnf.Text := tab_natNAT_OPER.AsString;
  cbcnat.Text := tab_natNAT_CNAT.AsString;
  cbdnat.Text := tab_natNAT_DNAT.AsString;

  nfe_001.Close;
  nfe_001.Open;
  while not nfe_001.Eof do
  begin
    nfe_001.Edit;
    nfe_001NFE_CFOP.Value := tab_natNAT_CNAT.AsString;
    nfe_001NFE_TIPO.Value := tab_natNAT_TIPO.AsString;

    if tag = 0 then
    begin
      nfe_001NFE_CSTIPI.Value       := tab_natNAT_CSTI.AsString;
      nfe_001NFE_CSTPIS.Value       := tab_natNAT_CSTP.AsString;
      nfe_001NFE_PPIS.Value         := tab_natNAT_PIPP.AsFloat;
      nfe_001NFE_CSTCOFINS.Value    := tab_natNAT_CSTC.AsString;
      nfe_001NFE_PCOFINS.Value      := tab_natNAT_PIPC.AsFloat;

      if frmprincipal.parametrosPAR_CCRT.AsString = '3' then
      nfe_001NFE_CST.Value := tab_natNAT_CCST.AsString else
      nfe_001NFE_CST.Value := tab_natNAT_CSTS.AsString;
    end;

    nfe_001.Post;
    nfe_001.Next;
  end;

  tSHEILD.CommitRetaining;
  nfe_001.Close;
  nfe_001.Close;
  nfe_001.Open;
end;

procedure Tfrmven_nfd.PESQUISA_CLIENTE(pesq,chave: string;cdsc: double);
begin
  activecontrol := nil;
  try
    tag := 1;

    with psq_cli do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CLI_BAI,CLI_TLOG,CLI_LOGR,CLI_NUME,CLI_CEP,CLI_COMP,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,');
      SQL.Add('       CLI_VDSC,CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,CLI_VULT,CLI_DDD,CLI_TEL1,REP_FANT,USU_DUSU,CLI_STPD,CLI_DTRA,CLI_DUSU,');
      SQL.Add('       TRIM(CAST(SUBSTRING(CLI_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) CLI_OBSO');
      SQL.Add('FROM   CAD_CLI');
      SQL.Add('LEFT   OUTER JOIN CAD_USU ON CAD_CLI.CLI_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('LEFT   OUTER JOIN CAD_REP ON CAD_CLI.CLI_CREP = CAD_REP.ID');

      if pesq = 'I' then
         SQL.Add('WHERE  CAD_CLI.ID = '''+chave+'''')
      else if pesq = 'C' then
         SQL.Add('WHERE  CLI_CNPJ LIKE ''%'+edcnpj.Text+'%''')
      else if pesq = 'F' then
         SQL.Add('WHERE  CLI_FANT LIKE ''%'+chave+'%''')
      else if pesq = 'R' then
         SQL.Add('WHERE  CLI_RAZA LIKE ''%'+chave+'%''');

      Open;
      Last;
    end;

    if psq_cli.recordcount = 0 then
    begin
      if pesq = 'I' then
      begin
        edcfav.SetFocus;
        messageBox(handle,'Código do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'C' then
      begin
        edcnpj.SetFocus;
        messageBox(handle,'C.N.P.J. do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'F' then
      begin
        eddfav.SetFocus;
        messageBox(handle,'Nome fantasia do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'R' then
      begin
        edrfav.SetFocus;
        messageBox(handle,'Razão social do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end;
      Abort;
    end
    else if psq_cli.recordcount = 1 then
    begin
      if psq_cliCLI_STA.AsString <> '0' then
      begin
        if pesq = 'I' then
           edcfav.SetFocus
        else if pesq = 'C' then
          edcnpj.SetFocus
        else if pesq = 'F' then
          eddfav.SetFocus
        else if pesq = 'R' then
          edrfav.SetFocus;

        messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if psq_cliCLI_STAV.AsString <> 'A' then
      begin
        if pesq = 'I' then
           edcfav.SetFocus
        else if pesq = 'C' then
          edcnpj.SetFocus
        else if pesq = 'F' then
          eddfav.SetFocus
        else if pesq = 'R' then
          edrfav.SetFocus;

        if psq_cliCLI_STAV.AsString = 'I' then
           messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
        else if psq_cliCLI_STAV.AsString = 'P' then
           messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' aguardando autorização de compra !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
        else if psq_cliCLI_STAV.AsString = 'S' then
           messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' suspenso !'),PChar(self.Caption),MB_ICONERROR+MB_OK);

        Abort;
      end;

      if (psq_cliCLI_ESTA.AsString <> 'EX') and (psq_cliID.AsString <> frmprincipal.parametrosPAR_CCLI.AsString) then
      begin
        if (Length(psq_cliCLI_CNPJ.AsString) < 5) and (Length(psq_cliCLI_CPF.AsString) < 5) then
        begin
          if pesq = 'I' then
             edcfav.SetFocus
          else if pesq = 'C' then
            edcnpj.SetFocus
          else if pesq = 'F' then
            eddfav.SetFocus
          else if pesq = 'R' then
            edrfav.SetFocus;

          messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' sem C.N.P.J. e C.P.F cadastrado. '+#13+'Verifique !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
          Abort;
        end;
      end;

      frmven_nfd.cad_cli.Close;
      frmven_nfd.cad_cli.Params[0].Value := psq_cliID.AsString;
      frmven_nfd.cad_cli.Open;

      cbcnat.SetFocus;
      activecontrol := nil;
    end
    else
    begin
      frmcad_cli := TFrmcad_cli.Create(self);
      with frmcad_cli.cadastro do
      begin
        SQL.Clear;
        SQL.Add('SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CLI_BAI,CLI_TLOG,CLI_LOGR,CLI_NUME,CLI_CEP,CLI_COMP,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,');
        SQL.Add('       CLI_VDSC,CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,CLI_VULT,CLI_DDD,CLI_TEL1,REP_FANT,USU_DUSU,CLI_STPD,CLI_DTRA,CLI_DUSU,');
        SQL.Add('       TRIM(CAST(SUBSTRING(CLI_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) CLI_OBSO');
        SQL.Add('FROM   CAD_CLI');
        SQL.Add('LEFT   OUTER JOIN CAD_USU ON CAD_CLI.CLI_CVEN = CAD_USU.USU_CUSU');
        SQL.Add('LEFT   OUTER JOIN CAD_REP ON CAD_CLI.CLI_CREP = CAD_REP.ID');

        if pesq = 'C' then
          SQL.Add('WHERE  CLI_CNPJ LIKE ''%'+edcnpj.Text+'%''')
        else if pesq = 'F' then
           SQL.Add('WHERE  CLI_FANT LIKE ''%'+eddfav.Text+'%''')
        else if pesq = 'R' then
           SQL.Add('WHERE  CLI_RAZA LIKE ''%'+edrfav.Text+'%''');
        SQL.Add('AND    CLI_STA  = 0');
        SQL.Add('AND    CLI_STAV = ''A''');

        if pesq = 'I' then
        begin
          SQL.Add('ORDER BY CAD_CLI.ID');
          frmcad_cli.dbgConsulta.FocusedColumn := 0;
        end
        else if pesq = 'C' then
        begin
          SQL.Add('ORDER BY CLI_CNPJ');
          frmcad_cli.dbgConsulta.FocusedColumn := 1;
        end
        else if pesq = 'F' then
        begin
          SQL.Add('ORDER BY CLI_FANT');
          frmcad_cli.dbgConsulta.FocusedColumn := 1;
        end
        else if pesq = 'R' then
        begin
          SQL.Add('ORDER BY CLI_RAZA');
          frmcad_cli.dbgConsulta.FocusedColumn := 2;
        end;
        Open;
      end;

      if (Screen.Width <= 1024) or (Screen.Width < 1280) then
      begin
        frmcad_cli.FormStyle := fsNormal;
        frmcad_cli.Visible   := false;
        frmcad_cli.ShowModal;
      end
      else
        frmcad_cli.Show;
    end;
  finally
    tag := 0;
  end;
end;

procedure Tfrmven_nfd.PESQUISA_FORNECEDOR(pesq,chave: string;cdsc: double);
begin
  activecontrol := nil;
  try
    tag := 1;

    with psq_for do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAD_FOR.ID,FOR_FANT,FOR_RAZA,FOR_CNPJ,FOR_CPF,FOR_CRED,FOR_CID,FOR_BAI,FOR_TLOG,FOR_LOGR,FOR_NUME,FOR_CEP,FOR_COMP,FOR_ESTA,FOR_STA,FOR_STAV,FOR_DPAG,');
      SQL.Add('       FOR_VDSC,FOR_DCAD,FOR_DFUN,FOR_DALT,FOR_DULT,FOR_VULT,FOR_DDD,FOR_TEL1,FOR_DTRA,FOR_CDEP,');
      SQL.Add('       TRIM(CAST(SUBSTRING(FOR_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) FOR_OBSO');
      SQL.Add('FROM   CAD_FOR');

      if pesq = 'I' then
         SQL.Add('WHERE  CAD_FOR.ID = '''+chave+'''')
      else if pesq = 'C' then
         SQL.Add('WHERE  FOR_CNPJ LIKE ''%'+edcnpj.Text+'%''')
      else if pesq = 'F' then
         SQL.Add('WHERE  FOR_FANT LIKE ''%'+chave+'%''')
      else if pesq = 'R' then
         SQL.Add('WHERE  FOR_RAZA LIKE ''%'+chave+'%''');

      Open;
      Last;
    end;

    if psq_for.recordcount = 0 then
    begin
      if pesq = 'I' then
      begin
        edcfav.SetFocus;
        messageBox(handle,'Código do fornecedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'C' then
      begin
        edcnpj.SetFocus;
        messageBox(handle,'C.N.P.J. do fornecedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'F' then
      begin
        eddfav.SetFocus;
        messageBox(handle,'Nome fantasia do fornecedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'R' then
      begin
        edrfav.SetFocus;
        messageBox(handle,'Razão social do fornecedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end;
      Abort;
    end
    else if psq_for.recordcount = 1 then
    begin
      if psq_forFOR_STA.AsString <> '0' then
      begin
        if pesq = 'I' then
           edcfav.SetFocus
        else if pesq = 'C' then
          edcnpj.SetFocus
        else if pesq = 'F' then
          eddfav.SetFocus
        else if pesq = 'R' then
          edrfav.SetFocus;

        messageBox(handle,PChar('Fornecedor '+psq_forFOR_FANT.AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if psq_forFOR_STAV.AsString <> 'A' then
      begin
        if pesq = 'I' then
           edcfav.SetFocus
        else if pesq = 'C' then
          edcnpj.SetFocus
        else if pesq = 'F' then
          eddfav.SetFocus
        else if pesq = 'R' then
          edrfav.SetFocus;

        if psq_forFOR_STAV.AsString = 'I' then
           messageBox(handle,PChar('Fornecedor '+psq_forFOR_FANT.AsString+' inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
        else if psq_forFOR_STAV.AsString = 'P' then
           messageBox(handle,PChar('Fornecedor '+psq_forFOR_FANT.AsString+' aguardando autorização de compra !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if (Length(psq_forFOR_CNPJ.AsString) < 5) and (Length(psq_forFOR_CPF.AsString) < 5) then
      begin
        if pesq = 'I' then
           edcfav.SetFocus
        else if pesq = 'C' then
          edcnpj.SetFocus
        else if pesq = 'F' then
          eddfav.SetFocus
        else if pesq = 'R' then
          edrfav.SetFocus;

        messageBox(handle,PChar('Fornecedor '+psq_forFOR_FANT.AsString+' sem C.N.P.J. e C.P.F cadastrado. '+#13+'Verifique !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      frmven_nfd.cad_for.Close;
      frmven_nfd.cad_for.Params[0].Value := psq_forID.AsString;
      frmven_nfd.cad_for.Open;

      cbcnat.SetFocus;
    end
    else
    begin
      frmcad_for := Tfrmcad_for.Create(self);
      with frmcad_for.cadastro do
      begin
        SQL.Clear;
        SQL.Add('SELECT CAD_FOR.ID,FOR_FANT,FOR_RAZA,FOR_CNPJ,FOR_CPF,FOR_CRED,FOR_CID,FOR_BAI,FOR_TLOG,FOR_LOGR,FOR_NUME,FOR_CEP,FOR_COMP,FOR_ESTA,FOR_STA,FOR_STAV,FOR_DPAG,');
        SQL.Add('       FOR_VDSC,FOR_DCAD,FOR_DFUN,FOR_DALT,FOR_DULT,FOR_VULT,FOR_DDD,FOR_TEL1,FOR_DTRA,FOR_CDEP,');
        SQL.Add('       TRIM(CAST(SUBSTRING(FOR_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) FOR_OBSO');
        SQL.Add('FROM   CAD_FOR');

        if pesq = 'C' then
          SQL.Add('WHERE  FOR_CNPJ LIKE ''%'+edcnpj.Text+'%''')
        else if pesq = 'F' then
           SQL.Add('WHERE  FOR_FANT LIKE ''%'+eddfav.Text+'%''')
        else if pesq = 'R' then
           SQL.Add('WHERE  FOR_RAZA LIKE ''%'+edrfav.Text+'%''');
        SQL.Add('AND    FOR_STA  = 0');
        SQL.Add('AND    FOR_STAV = ''A''');

        if pesq = 'I' then
        begin
          SQL.Add('ORDER BY CAD_FOR.ID');
          frmcad_for.dbgConsulta.FocusedColumn := 0;
        end
        else if pesq = 'C' then
        begin
          SQL.Add('ORDER BY FOR_CNPJ');
          frmcad_for.dbgConsulta.FocusedColumn := 1;
        end
        else if pesq = 'F' then
        begin
          SQL.Add('ORDER BY FOR_FANT');
          frmcad_for.dbgConsulta.FocusedColumn := 1;
        end
        else if pesq = 'R' then
        begin
          SQL.Add('ORDER BY FOR_RAZA');
          frmcad_for.dbgConsulta.FocusedColumn := 2;
        end;
        Open;
      end;

      if (Screen.Width <= 1024) or (Screen.Width < 1280) then
      begin
        frmcad_for.FormStyle := fsNormal;
        frmcad_for.Visible   := false;
        frmcad_for.ShowModal;
      end
      else
        frmcad_for.Show;
    end;
  finally
    tag := 0;
  end;
end;

procedure Tfrmven_nfd.NOVO;
begin
  activecontrol := nil;
  pcmain.ActivePageIndex := 0;
  
  edcdnf.Text     := '0';
  eddemi.Date     := strtodate(SLPrincipal.Values['data_sistema']);
  edhemi.Time     := time;
  edpdesc.Text    := '0,00';
  edvdesc.Text    := '0,00';
  edvprod.Text    := '0,00';
  edvbc.Text      := '0,00';
  edvicms.Text    := '0,00';
  edvipi.Text     := '0,00';
  edvpis.Text     := '0,00';
  edvcofins.Text  := '0,00';
  edvoutro.Text   := '0,00';
  edvII.Text      := '0,00';
  edvnf.Text      := '0,00';
  lacfav.Caption  := 'Cliente';
  edcfav.Text     := '';
  eddfav.Text     := '';
  edrfav.Text     := '';
  cbcnat.Text     := '';
  edtpnf.Text     := '';
  cbdnat.Text     := '';
  edctra.Text     := '';
  cbdtra.Text     := '';
  cbmodfrete.Text := '';
  edvfrete.Text   := '0,00';
  edesp.Text      := frmprincipal.parametrosPAR_TVOL.AsString;
  edqvol.Text     := '0';
  edpsbr.Text     := '0,00';
  edpslq.Text     := '0,00';
  edINF.Text      := '';
end;

procedure Tfrmven_nfd.ABRE_TABELA;
begin
  if not IBTra.Active   then IBTra.StartTransaction;
  if not tSHEILD.Active then tSHEILD.StartTransaction;

  with nfe_001 do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM NFE_ITE');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM NFE_ITE');
    SelectSQL.Add('ORDER BY NFE_ITEMPED');
    Open;
    tSHEILD.CommitRetaining;
  end;
  nfe_001.Close;
  nfe_001.Open;

  with dup_001 do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM NFE_DUP');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM NFE_DUP');
    SelectSQL.Add('ORDER BY ID');
    Open;
    tSHEILD.CommitRetaining;
  end;
  dup_001.Close;
  dup_001.Open;

  with cli_001 do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM NFE_CLI');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM NFE_CLI');
    SelectSQL.Add('ORDER BY ID');
    Open;
    tSHEILD.CommitRetaining;
  end;
end;

procedure Tfrmven_nfd.AJUSTAFORM;
begin
  Self.top    := 0;
  Self.left   := 0;
  Self.Height := frmprincipal.pnCustomize.Height-4;
  Self.Width  := TELA_WIDTH;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
   self.Height := screen.Height;
   self.Width  :=  screen.Width;

   if frmprincipal.pnbot.Visible then
      self.Height := self.Height - frmprincipal.pnbot.Height;
  end;
end;

procedure Tfrmven_nfd.FormCreate(Sender: TObject);
begin
  BBot := frmprincipal.pnbot.Visible;
  frmprincipal.pnbot.Visible := false;
  BCalc := true;
  
  ABRE_TABELA;
  AJUSTAFORM;
  NOVO;

  tag := 1;
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   TRA_FANT FROM CAD_TRA');
    SQL.Add('WHERE    TRA_STA = ''0''');
    SQL.Add('ORDER BY TRA_FANT');
    Open;

    while not eof do
    begin
      cbdtra.Items.Add(fields[0].AsString);
      next;
    end;
  end;
  tag := 0;
end;

procedure Tfrmven_nfd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IBTra.Active   := false;
  tSHEILD.Active := false;
  action         := cafree;

  
  if frmven_nfd <> nil then
  begin
    frmven_nfd.Release;
    frmven_nfd := nil;
  end;
end;

procedure Tfrmven_nfd.lacfavClick(Sender: TObject);
begin
  if lacfav.Caption = 'Fornecedor' then
  lacfav.Caption := 'Cliente'
  else
  lacfav.Caption := 'Fornecedor';
end;

procedure Tfrmven_nfd.siINCClick(Sender: TObject);
begin
  if nfe_001.State = dsBrowse then
     nfe_001.Append;
end;

procedure Tfrmven_nfd.siALTClick(Sender: TObject);
begin
  if nfe_001.State = dsBrowse then
     nfe_001.Edit;

end;

procedure Tfrmven_nfd.siDELClick(Sender: TObject);
begin
  if (nfe_001.State in [dsEdit,dsInsert]) or (nfe_001.Fields[0].IsNull) then
     abort;

  nfe_001.Delete;   
end;

procedure Tfrmven_nfd.siSAVClick(Sender: TObject);
begin
  if nfe_001.State in [dsEdit,dsInsert] then
     nfe_001.Post;
end;

procedure Tfrmven_nfd.siCANClick(Sender: TObject);
begin
  if nfe_001.State in [dsEdit,dsInsert] then
     nfe_001.Cancel;
end;

procedure Tfrmven_nfd.nfe_001AfterCancel(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := true;
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;
  end;
end;

procedure Tfrmven_nfd.nfe_001AfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
  CALCULA_NF;
end;

procedure Tfrmven_nfd.nfe_001AfterEdit(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := false;
    siALT.Enabled := false;
    siDEL.Enabled := false;
    siSAV.Enabled := true;
    siCAN.Enabled := true;

    if pcmain.ActivePageIndex = 0 then
    dbgnfe.SetFocus;
  end;
end;

procedure Tfrmven_nfd.nfe_001AfterInsert(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := false;
    siALT.Enabled := false;
    siDEL.Enabled := false;
    siSAV.Enabled := true;
    siCAN.Enabled := true;

    dbgnfe.FocusedColumn := 1;
    if pcmain.ActivePageIndex = 0 then
    dbgnfe.SetFocus;
  end;
end;

procedure Tfrmven_nfd.nfe_001AfterOpen(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := true;
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;
  end;
end;

procedure Tfrmven_nfd.nfe_001AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  tSHEILD.CommitRetaining;

  if tag = 0 then
  begin
    siINC.Enabled := true;
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;

    wRec := nfe_001.GetBookmark;

    nfe_001.Close;
    nfe_001.Open;
    if (wRec = Nil) or (nfe_001.Fields[0].IsNull) then nfe_001.last
       else nfe_001.GotoBookmark(wRec);
    nfe_001.FreeBookmark(wRec);

    CALCULA_NF;
    
    if pcmain.ActivePageIndex = 0 then
    dbgnfe.SetFocus;
  end;
end;

procedure Tfrmven_nfd.nfe_001BeforeCancel(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;
  end;
  
  if nfe_001.RecordCount = 0 then
  begin
    nfe_001.Close;
    nfe_001.Open;
    ABORT;
  end;
end;

procedure Tfrmven_nfd.nfe_001NewRecord(DataSet: TDataSet);
begin
  nfe_001ID.Value        := 0;
  nfe_001NFE_CFOP.Value  := copy(cbcnat.Text,1,4);
  nfe_001NFE_PICMS.Value := tab_alqALQ_ICMS.AsInteger;
  if edesta.Text = 'EX' then
  nfe_001NFE_PICMS.Value := 18;
  
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT MAX(NFE_ITEMPED) FROM NFE_ITE');
    Open;
    if fields[0].IsNull then
    nfe_001nfe_ITEMPED.Value := '0001'
    else
    nfe_001nfe_ITEMPED.Value := strzero(fields[0].AsInteger + 1,4);
  end;
end;

procedure Tfrmven_nfd.edcfavValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcfav.Text = '' then
  begin
    eddfav.Text := '';
    edrfav.Text := '';
    abort;
  end;

  if lacfav.Caption = 'Cliente' then
     PESQUISA_CLIENTE('I',edcfav.Text,0)
  else if lacfav.Caption = 'Fornecedor' then
     PESQUISA_FORNECEDOR('I',edcfav.Text,0);
end;


procedure Tfrmven_nfd.eddfavValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if lacfav.Caption = 'Cliente' then
     PESQUISA_CLIENTE('F',eddfav.Text,0)
  else if lacfav.Caption = 'Fornecedor' then
     PESQUISA_FORNECEDOR('F',eddfav.Text,0);
end;

procedure Tfrmven_nfd.edrfavValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if lacfav.Caption = 'Cliente' then
     PESQUISA_CLIENTE('R',edrfav.Text,0)
  else if lacfav.Caption = 'Fornecedor' then
     PESQUISA_FORNECEDOR('R',edrfav.Text,0);
end;

procedure Tfrmven_nfd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_RETURN: if (not (activeControl is TdxDBGrid) and
                      not (activeControl is TDBMemo)   and
                      not (activeControl is TdxMemo)   and
                      not (activeControl is TdxDBMemo) and
                      not (activeControl is TdbGrid)   and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       40       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       38       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, false, true);
  end;

  if (((ssCtrl in Shift) and (Key in [83])) and (frmprincipal.cad_usuUSU_DUSU.AsString = 'RICARDO')) then
  begin
    if yesno(handle,'Salvar Nota Fiscal ?') = mryes then
       SALVA_NF;
  end;     
end;

procedure Tfrmven_nfd.BSairClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmven_nfd.cad_cliAfterOpen(DataSet: TDataSet);
begin
  edcfav.Text    := cad_cliID.AsString;
  eddfav.Text    := cad_cliCLI_FANT.AsString;
  edrfav.Text    := cad_cliCLI_RAZA.AsString;
  edraza.Text    := cad_cliCLI_RAZA.AsString;
  edmail.Text    := cad_cliCLI_MAIL.AsString;
  edCNPJ.Text    := cad_cliCLI_CNPJ.AsString;
  edINSC.Text    := cad_cliCLI_INSC.AsString;
  edCPF.Text     := cad_cliCLI_CPF.AsString;
  edDDD.Text     := cad_cliCLI_DDD.AsString;
  edTEL1.Text    := cad_cliCLI_TEL1.AsString;
  edTLOG.Text    := cad_cliCLI_TLOG.AsString;
  edLOGR.Text    := cad_cliCLI_LOGR.AsString;
  edNUME.Text    := cad_cliCLI_NUME.AsString;
  edCOMP.Text    := cad_cliCLI_COMP.AsString;
  edCEP.Text     := cad_cliCLI_CEP.AsString;
  edBAI.Text     := cad_cliCLI_BAI.AsString;
  edCID.Text     := cad_cliCLI_CID.AsString;
  edESTA.Text    := cad_cliCLI_ESTA.AsString;
  edCMUN.Text    := cad_cliCLI_CMUN.AsString;
  edTLOV.Text    := cad_cliCLI_TLOV.AsString;
  edLOGV.Text    := cad_cliCLI_LOGV.AsString;
  edNUMV.Text    := cad_cliCLI_NUMV.AsString;
  edCOMV.Text    := cad_cliCLI_COMV.AsString;
  edCEPV.Text    := cad_cliCLI_CEPV.AsString;
  edBAIV.Text    := cad_cliCLI_BAIV.AsString;
  edCIDV.Text    := cad_cliCLI_CIDV.AsString;
  edESTV.Text    := cad_cliCLI_ESTV.AsString;
  edCMUV.Text    := cad_cliCLI_CMUV.AsString;

  lapass.Enabled := false;
  edpass.Enabled := false;

  if cad_cliCLI_CNPJ.AsString <> '' then
  rgtipe.ItemIndex := 1
  else
  rgtipe.ItemIndex := 0;

  if cad_cliCLI_ESTA.AsString = 'EX' then
  begin
    lapass.Enabled := true;
    edpass.Enabled := true;
    rgtipe.ItemIndex := 2;
  end;

  if edctra.Text = '2' then
     PESQUISA_TRANSPORTADORA;

  with tab_alq do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM '+SLPrincipal.Values['tab_alq']);
    SQL.Add('WHERE  ALQ_ESTA = '''+cad_cliCLI_ESTA.AsString+'''');
    Open;
  end;

  if (nfe_001NFE_CFOP.AsString = '6108') or (nfe_001NFE_CFOP.AsString = '6107') then
  with tab_alq do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM '+SLPrincipal.Values['tab_alq']);
    SQL.Add('WHERE  ALQ_ESTA = '''+frmprincipal.parametrosPAR_UF.AsString+'''');
    Open;
  end;

  nfe_001.First;
  if not nfe_001.Fields[0].IsNull then
  begin
    nfe_001.Close;
    nfe_001.Open;
    while not nfe_001.Eof do
    begin
      nfe_001.Edit;
      nfe_001NFE_PICMS.Value := tab_alqALQ_ICMS.AsInteger;
      nfe_001.Post;
      nfe_001.Next;
    end;
    tSHEILD.CommitRetaining;
    nfe_001.Close;
    nfe_001.Close;
    nfe_001.Open;
  end;
end;

procedure Tfrmven_nfd.cad_forAfterOpen(DataSet: TDataSet);
begin
  edcfav.Text    := cad_forID.AsString;
  eddfav.Text    := cad_forFOR_FANT.AsString;
  edrfav.Text    := cad_forFOR_RAZA.AsString;
  edraza.Text    := cad_forFOR_RAZA.AsString;
  edmail.Text    := cad_forFOR_MAIL.AsString;  
  edCNPJ.Text    := cad_forFOR_CNPJ.AsString;
  edINSC.Text    := cad_forFOR_INSC.AsString;
  edCPF.Text     := cad_forFOR_CPF.AsString;
  edDDD.Text     := cad_forFOR_DDD.AsString;
  edTEL1.Text    := cad_forFOR_TEL1.AsString;
  edTLOG.Text    := cad_forFOR_TLOG.AsString;
  edLOGR.Text    := cad_forFOR_LOGR.AsString;
  edNUME.Text    := cad_forFOR_NUME.AsString;
  edCOMP.Text    := cad_forFOR_COMP.AsString;
  edCEP.Text     := cad_forFOR_CEP.AsString;
  edBAI.Text     := cad_forFOR_BAI.AsString;
  edCID.Text     := cad_forFOR_CID.AsString;
  edESTA.Text    := cad_forFOR_ESTA.AsString;
  edCMUN.Text    := cad_forFOR_CMUN.AsString;
  edTLOV.Text    := cad_forFOR_TLOV.AsString;
  edLOGV.Text    := cad_forFOR_LOGV.AsString;
  edNUMV.Text    := cad_forFOR_NUMV.AsString;
  edCOMV.Text    := cad_forFOR_COMV.AsString;
  edCEPV.Text    := cad_forFOR_CEPV.AsString;
  edBAIV.Text    := cad_forFOR_BAIV.AsString;
  edCIDV.Text    := cad_forFOR_CIDV.AsString;
  edESTV.Text    := cad_forFOR_ESTV.AsString;
  edCMUV.Text    := cad_forFOR_CMUV.AsString;

  lapass.Enabled := false;
  edpass.Enabled := false;

  if cad_forFOR_CNPJ.AsString <> '' then
  rgtipe.ItemIndex := 1
  else
  rgtipe.ItemIndex := 0;

  if cad_forFOR_ESTA.AsString = 'EX' then
  begin
    lapass.Enabled := true;
    edpass.Enabled := true;
    rgtipe.ItemIndex := 2;
  end;

  if edctra.Text = '2' then
     PESQUISA_TRANSPORTADORA;

  with tab_alq do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM '+SLPrincipal.Values['tab_alq']);
    SQL.Add('WHERE  ALQ_ESTA = '''+cad_forFOR_ESTA.AsString+'''');
    Open;
  end;

  if (nfe_001NFE_CFOP.AsString = '6108') or (nfe_001NFE_CFOP.AsString = '6107') then
  with tab_alq do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM '+SLPrincipal.Values['tab_alq']);
    SQL.Add('WHERE  ALQ_ESTA = '''+frmprincipal.parametrosPAR_UF.AsString+'''');
    Open;
  end;

  try
    tag := 1;
    nfe_001.DisableControls;
    nfe_001.First;
    while not nfe_001.Eof do
    begin
      nfe_001.Edit;
      nfe_001NFE_PICMS.Value := tab_alqALQ_ICMS.AsInteger;
      nfe_001.Post;
      nfe_001.Next;
    end;
  finally
    tag := 0;
    tSHEILD.CommitRetaining;

    nfe_001.First;
    nfe_001.EnableControls;
  end;
end;

procedure Tfrmven_nfd.cbcnatExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  if cbcnat.Text = '' then
     exit;

  try
    if (trim(edcfav.Text) = '') or (edcfav.Text = '0') then
       raise exception.Create('Favorecido não selecionado !');

    if trim(edesta.Text) = '' then
       raise exception.Create('Favorecido sem estado cadastrado !');

    PESQUISA_NATUREZA(cbcnat.Text,'C');
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
    cbdtra.SetFocus;
  end;
end;

procedure Tfrmven_nfd.latdscClick(Sender: TObject);
begin
  if latdsc.Caption = '%' then
     latdsc.Caption := '$'
  else
     latdsc.Caption := '%';
  latdsc.Update;
end;

procedure Tfrmven_nfd.cbduplChange(Sender: TObject);
begin
  DUPLICATAS;
end;

procedure Tfrmven_nfd.cbdpagExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    DUPLICATAS;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmven_nfd.dup_001AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  siIDU.Enabled := true;
  siADU.Enabled := true;
  siDDU.Enabled := true;
  siSDU.Enabled := false;
  siCDU.Enabled := false;

  tSHEILD.CommitRetaining;

  wRec := dup_001.GetBookmark;

  dup_001.Close;
  dup_001.Open;
  if (wRec = Nil) or (dup_001.Fields[0].IsNull) then dup_001.last
     else dup_001.GotoBookmark(wRec);
  dup_001.FreeBookmark(wRec);
end;

procedure Tfrmven_nfd.dup_001BeforeCancel(DataSet: TDataSet);
begin
  siIDU.Enabled := true;
  siADU.Enabled := true;
  siDDU.Enabled := true;
  siSDU.Enabled := false;
  siCDU.Enabled := false;

  if dup_001.RecordCount = 0 then
  begin
    dup_001.Close;
    dup_001.Open;
    ABORT;
  end;
end;

procedure Tfrmven_nfd.dup_001AfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
end;

procedure Tfrmven_nfd.dup_001AfterEdit(DataSet: TDataSet);
begin
  siIDU.Enabled := false;
  siADU.Enabled := false;
  siDDU.Enabled := false;
  siSDU.Enabled := true;
  siCDU.Enabled := true;
end;

procedure Tfrmven_nfd.dup_001NewRecord(DataSet: TDataSet);
begin
  dup_001ID.Value := 0;
end;

procedure Tfrmven_nfd.nfe_001NFE_QCOMValidate(Sender: TField);
begin
  if BCalc then
     nfe_001NFE_VPROD.Value := nfe_001NFE_QCOM.AsFloat * nfe_001NFE_VUNCOM.AsFloat;
end;

procedure Tfrmven_nfd.cbdtraExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    PESQUISA_TRANSPORTADORA;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmven_nfd.BAIXA_ESTOQUE;
var
  ID: integer;
begin
  nfe_001.First;
  while not nfe_001.Eof do
  begin
    ID := RETORNA_ID_PRODUTO;

    if ID > 0 then
    begin
      ibSP.StoredProcName := 'SP_CAD_PRO_EST';
      ibSP.Prepare;

      ibSP.ParamByName('est').Value  := 'CAD_PRO_EST';
      if frmprincipal.parametrosID.AsInteger > 1 then
      ibSP.ParamByName('est').Value  := 'CAD_PRO_EST_'+strzero(frmprincipal.parametrosID.AsInteger,3);

      ibSP.ParamByName('id').Value   := 0;
      ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
      ibSP.ParamByName('cdro').Value := edcdnf.Text;
      ibSP.ParamByName('cdpd').Value := 0;
      ibSP.ParamByName('cdbx').Value := 0;
      ibSP.ParamByName('cpro').Value := ID;
      ibSP.ParamByName('cusu').Value := frmprincipal.cad_usuID.AsInteger;
      ibSP.ParamByName('dusu').Value := frmprincipal.cad_usuUSU_DUSU.AsString;
      ibSP.ParamByName('cfav').Value := edcfav.Text;
      ibSP.ParamByName('dfav').Value := eddfav.Text;
      ibSP.ParamByName('dcad').Value := eddemi.Date;
      ibSP.ParamByName('docu').Value := edcdnf.Text;
      ibSP.ParamByName('flag').Value := 'E';
      ibSP.ParamByName('cdet').Value := '';
      ibSP.ParamByName('dsep').Value := '';
      ibSP.ParamByName('debi').Value := 0;
      ibSP.ParamByName('cred').Value := 0;
      ibSP.ParamByName('dmap').Value := '';
      ibSP.ParamByName('ctnr').Value := '';
      ibSP.ParamByName('lote').Value := '';

      if edtpnf.Text = 'ENTRADA' then
      ibSP.ParamByName('cred').Value := nfe_001NFE_QCOM.AsFloat else
      ibSP.ParamByName('debi').Value := nfe_001NFE_QCOM.AsFloat;
      ibSP.ExecProc;
    end;
    nfe_001.Next;
  end;
end;

procedure Tfrmven_nfd.BFAVClick(Sender: TObject);
begin
  if lacfav.Caption = 'Cliente' then
  begin
    frmcad_cli := TFrmcad_cli.Create(self);
    frmcad_cli.Show;
  end
  else
  begin
    frmcad_for := TFrmcad_for.Create(self);
    frmcad_for.Show;
  end;
end;

procedure Tfrmven_nfd.dbgnfeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if pcmain.ActivePageIndex = 0 then
                 dbgnfe.SetFocus;

                 if (dbgnfe.FocusedColumn = 1) then
                 begin
                   if nfe_001.State in [dsEdit,dsInsert] then
                   begin
                     PESQUISA_PRODUTO('Referencia',dbgnfe.EditingText);
                     if nfe_001NFE_XPROD.AsString = '' then
                     dbgnfe.FocusedColumn := 2
                     else
                     dbgnfe.FocusedColumn := 4;
                   end
                 end
                 else if (dbgnfe.FocusedColumn = 2) and (nfe_001NFE_CPROD.AsString = '') then
                 begin
                   if nfe_001.State in [dsEdit,dsInsert] then
                   begin
                     PESQUISA_PRODUTO('Descrição',dbgnfe.EditingText);
                     dbgnfe.FocusedColumn := 4;
                   end
                 end
                 else if ((dbgnfe.FocusedColumn = 4) and (nfe_001NFE_VUNCOM.AsFloat > 0) or (dbgnfe.FocusedColumn = 5)) and (nfe_001NFE_NCM.AsString <> '') then
                 begin
                   nfe_001.Next;
                   if nfe_001.Eof then
                      nfe_001.Append;

                   dbgnfe.FocusedColumn := 1;
                 end
                 else
                   dbgnfe.FocusedColumn := dbgnfe.FocusedColumn + 1;
               end;
    VK_DELETE: if nfe_001.State = dsBrowse then
                  siDEL.Click;
    VK_ESCAPE: if nfe_001.State = dsBrowse then close else nfe_001.Cancel;
  end;
end;

procedure Tfrmven_nfd.BEnvClick(Sender: TObject);
var
  NOME_ARQ: string;
  NOME_FIL: string;
begin
  if cad_cli.State in [dsEdit,dsInsert] then
  begin
    cad_cli.Post;
    IbTra.CommitRetaining;
  end;

  if cad_for.State in [dsEdit,dsInsert] then
  begin
    cad_for.Post;
    IbTra.CommitRetaining;
  end;

  if protocolo = '' then
     exit;

  DecodeDate(eddemi.Date, Ano, Mes, Dia);

  edcdnf.Text := strzero(strtoint(edcdnf.Text),6);
  
  NOME_FIL := 'C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\'+strzero(ano,4)+strzero(mes,2)+'\'+copy(chave,4,100)+'-procNFe.xml';
  NOME_ARQ := 'C:\Sheild\NotaFiscal\PDF\'+edcdnf.Text+'.PDF';

  if not fileexists(NOME_FIL) then
     raise exception.Create('Arquivo '+NOME_FIL+' não encontrado !'+#13+'Favor consultar a nota fiscal.');

  if not fileexists(NOME_ARQ) then
     raise exception.Create('Arquivo '+NOME_ARQ+' não encontrado !'+#13+'Favor consultar a nota fiscal.');

  frmemail := TFrmemail.Create(self);
  try
    frmemail.cbemail.Text  := edmail.Text;
    frmemail.edtitulo.Text := frmprincipal.parametrosPAR_FANT.AsString+' - NF.: '+edcdnf.Text;
    frmemail.Memo1.Lines.Add('Segue em anexo...') ;

    frmemail.cbarqs.Items.Add(NOME_FIL);
    frmemail.cbarqs.Items.Add(NOME_ARQ);

    frmemail.ShowModal;
  finally
    freeAndNil(frmemail);
    frmemail.Free;
  end;
end;

procedure Tfrmven_nfd.edpslqExit(Sender: TObject);
begin
  edesp.SetFocus;
end;

procedure Tfrmven_nfd.rgtipeClick(Sender: TObject);
begin
  if edesta.Text <> 'EX' then
  begin
    if (rgtipe.ItemIndex = 0) and (edcpf.Text = '') then
    begin
      raise exception.Create('C.P.F. não informado !');
    end;

    if (rgtipe.ItemIndex = 1) and (edcnpj.Text = '') then
    begin
      raise exception.Create('C.N.P.J. não informado !');
    end;

    if rgtipe.ItemIndex = 2 then
    begin
      lapass.Enabled := true;
      edpass.Enabled := true;
    end;
  end;  
end;

procedure Tfrmven_nfd.edespValidate(Sender: TObject; var ErrorText: String;
  var Accept: Boolean);
begin
  activecontrol := nil;
end;

procedure Tfrmven_nfd.FormActivate(Sender: TObject);
begin
  edcfav.Enabled := not (edcdro.Text <> '0');
  eddfav.Enabled := not (edcdro.Text <> '0');
  edrfav.Enabled := not (edcdro.Text <> '0');
end;

procedure Tfrmven_nfd.siESTClick(Sender: TObject);
begin
  if siEST.Tag = 0 then
  begin
    if yesno(handle,'Deseja que a Nota Fiscal Efetue Baixa no Estoque ?') = mrno then
       abort;

    siEST.Tag        := 1;
    siEST.Hint       := 'Essa Nota Fiscal Efetuará Baixa no Estoque';
    siEST.ImageIndex := 11;
  end
  else
  begin
    if yesno(handle,'Deseja que a Nota Fiscal não Efetue Baixa no Estoque ?') = mrno then
       abort;

    siEST.Tag        := 0;
    siEST.Hint       := 'Essa Nota Fiscal não Efetuará Baixa no Estoque';
    siEST.ImageIndex := 12;
  end;
end;

procedure Tfrmven_nfd.edpsbrExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if edpsbr.Text = '' then
    begin
      edpsbr.Text := '0';
      edpslq.Text := '0';
    end;

    edpsbr.Text := formatfloat('#,0.00########',RETORNA_REAL(edpsbr.Text));
    edpslq.Text := formatfloat('#,0.00########',RETORNA_REAL(edpsbr.Text) - ((RETORNA_REAL(edpsbr.Text)*10)/100));
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmven_nfd.siIDUClick(Sender: TObject);
begin
  dup_001.Append;
end;

procedure Tfrmven_nfd.siDDUClick(Sender: TObject);
begin
  dup_001.Delete;
end;

procedure Tfrmven_nfd.siSDUClick(Sender: TObject);
begin
  dup_001.Post;
end;

procedure Tfrmven_nfd.siCDUClick(Sender: TObject);
begin
  dup_001.Cancel;
end;

procedure Tfrmven_nfd.siADUClick(Sender: TObject);
begin
  dup_001.Edit;
end;

procedure Tfrmven_nfd.nfe_001NFE_CFOPValidate(Sender: TField);
begin
  if tag = 0 then
  begin
    with frmven_nfd.tab_nat do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM TAB_NAT');
      SQL.Add('WHERE  NAT_CNAT = '''+nfe_001NFE_CFOP.AsString+'''');
      Open;

      if fields[0].IsNull then
      begin
        messageBox(handle,'Natureza de operação não cadastrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        nfe_001.Cancel;
      end;
    end;

    nfe_001NFE_CSTIPI.Value       := tab_natNAT_CSTI.AsString;
    nfe_001NFE_CSTPIS.Value       := tab_natNAT_CSTP.AsString;
    nfe_001NFE_PPIS.Value         := tab_natNAT_PIPP.AsFloat;
    nfe_001NFE_CSTCOFINS.Value    := tab_natNAT_CSTC.AsString;
    nfe_001NFE_PCOFINS.Value      := tab_natNAT_PIPC.AsFloat;
    nfe_001NFE_INDTOT.Value       := tab_natNAT_INDT.AsInteger;
    nfe_001NFE_BIPI.Value         := tab_natNAT_BIPI.AsString;
    nfe_001NFE_FRET.Value         := tab_natNAT_FRET.AsString;
    nfe_001NFE_TIPO.Value         := tab_natNAT_TIPO.AsString;

    if frmprincipal.parametrosPAR_CCRT.AsString = '3' then
    nfe_001NFE_CST.Value := tab_natNAT_CCST.AsString else
    nfe_001NFE_CST.Value := tab_natNAT_CSTS.AsString;
  end;
end;

procedure Tfrmven_nfd.nfe_001BeforePost(DataSet: TDataSet);
begin
  nfe_001NFE_VPIS.Value    := roundto((nfe_001NFE_VBCPIS.AsFloat * nfe_001NFE_PPIS.AsFloat) / 100,-2);
  nfe_001NFE_VCOFINS.Value := roundto((nfe_001NFE_VBCOFINS.AsFloat * nfe_001NFE_PCOFINS.AsFloat) / 100,-2);

  if nfe_001NFE_REPR.AsString = '' then
     nfe_001NFE_REPR.Value := 'P';
end;

procedure Tfrmven_nfd.BNFeClick(Sender: TObject);
begin
  Application.CreateForm (Tfrmimporta_geral, frmimporta_geral);

  frmimporta_geral.cbFANT.Text := frmprincipal.parametrosPAR_FANT.AsString;
  frmimporta_geral.Tag         := 1;
  frmimporta_geral.tsXML.Tag   := 0;
  if lacfav.Caption = 'Fornecedor' then
  frmimporta_geral.tsXML.Tag   := 1;
  frmimporta_geral.ShowModal;

  try
    tag := 1;
    if frmimporta_geral.editado then
    begin
      BCalc := true;
      if (copy(frmimporta_geral.cbTIPO.Text,1,3) = 'XML') or (frmimporta_geral.cbTIPO.Text = 'DESPACHANTE') then
      begin
        if frmimporta_geral.cbTIPO.Text = 'XML + CONTAS A PAGAR' then
        lacfav.Caption := 'Fornecedor';
        
        BCalc         := false;
        edctra.Text   := frmimporta_geral.imp_ntrNFE_CTRA.AsString;

        edcdnf.Text   := frmimporta_geral.imp_ncaNFE_CDNF.AsString;
        eddemi.Date   := frmimporta_geral.imp_ncaNFE_DEMI.AsDateTime;

        if lacfav.Caption = 'Fornecedor' then
        PESQUISA_FORNECEDOR('I',frmimporta_geral.imp_ncaNFE_CFAV.AsString,0) else
        PESQUISA_CLIENTE('I',frmimporta_geral.imp_ncaNFE_CFAV.AsString,0);
        PESQUISA_TRANSPORTADORA;

        if frmimporta_geral.imp_ntrNFE_MODFRETE.AsString = '0' then
        cbmodfrete.Text := 'EMITENTE' else
        cbmodfrete.Text := 'DESTINATÁRIO';

        edqvol.Text     := frmimporta_geral.imp_ntrNFE_QVOL.AsString;
        edesp.Text      := frmimporta_geral.imp_ntrNFE_ESP.AsString;
        edpsbr.Text     := formatfloat('#,0.00########',frmimporta_geral.imp_ntrNFE_PSBR.AsFloat);
        edpslq.Text     := formatfloat('#,0.00########',frmimporta_geral.imp_ntrNFE_PSLQ.AsFloat);

        edvprod.Text    := formatfloat('#,0.00########',frmimporta_geral.imp_ncaNFE_VPROD.AsFloat);
        edvfrete.Text   := formatfloat('#,0.00########',frmimporta_geral.imp_ncaNFE_VFRETE.AsFloat);
        edvbc.Text      := formatfloat('#,0.00########',frmimporta_geral.imp_ncaNFE_VBC.AsFloat);
        edvicms.Text    := formatfloat('#,0.00########',frmimporta_geral.imp_ncaNFE_VICMS.AsFloat);
        edvipi.Text     := formatfloat('#,0.00########',frmimporta_geral.imp_ncaNFE_VIPI.AsFloat);
        edvpis.Text     := formatfloat('#,0.00########',frmimporta_geral.imp_ncaNFE_VPIS.AsFloat);
        edvcofins.Text  := formatfloat('#,0.00########',frmimporta_geral.imp_ncaNFE_VCOFINS.AsFloat);
        edvoutro.Text   := formatfloat('#,0.00########',frmimporta_geral.imp_ncaNFE_VOUTRO.AsFloat);
        edvII.Text      := formatfloat('#,0.00########',frmimporta_geral.imp_ncaNFE_VII.AsFloat);
        edvnf.Text      := formatfloat('#,0.00########',frmimporta_geral.imp_ncaNFE_VNF.AsFloat);

        edINF.Lines.Clear;
        edINF.Lines.Add(frmimporta_geral.memoINFCPL.Lines.Text);

        nfe_001.Close;
        nfe_001.Open;

        dup_001.Close;
        dup_001.Open;

        activecontrol := nil;
        
        nfe_001.DisableControls;
        nfe_001.First;
        while not nfe_001.Eof do
        begin
          nfe_001.Edit;
          if nfe_001NFE_VIPI.AsFloat = 0 then
          begin
            if nfe_001NFE_VBC.AsFloat = 0 then
            nfe_001NFE_CSTIPI.AsString := '49' else
            nfe_001NFE_CSTIPI.AsString := '01';
            nfe_001NFE_PIPI.Value      := 0;
            nfe_001NFE_VIPI.Value      := 0;
            nfe_001NFE_VBCIPI.Value    := 0;
          end;
          if nfe_001NFE_VNF.AsFloat = 0 then
          nfe_001NFE_VNF.Value := nfe_001NFE_VPROD.AsFloat + nfe_001NFE_VIPI.AsFloat;
          if nfe_001NFE_VBC.AsFloat = 0 then
          nfe_001NFE_VBC.Value := nfe_001NFE_VPROD.AsFloat;
          if nfe_001NFE_PICMS.AsFloat = 0 then
          nfe_001NFE_PICMS.Value := tab_alqALQ_ICMS.AsFloat;
          if nfe_001NFE_VICMS.AsFloat = 0 then
          nfe_001NFE_VICMS.Value := roundto((nfe_001NFE_VBC.AsFloat * nfe_001NFE_PICMS.AsFloat) / 100,-2);
          if nfe_001NFE_CSTPIS.AsString = '' then
          nfe_001NFE_CSTPIS.Value := '50';
          if nfe_001NFE_VBCPIS.AsFloat = 0 then
          nfe_001NFE_VBCPIS.Value := nfe_001NFE_VPROD.AsFloat;
          if nfe_001NFE_CSTCOFINS.AsString = '' then
          nfe_001NFE_CSTCOFINS.Value := '50';
          if nfe_001NFE_VBCOFINS.AsFloat = 0 then
          nfe_001NFE_VBCOFINS.Value := nfe_001NFE_VPROD.AsFloat;
          nfe_001.Post;
          nfe_001.Next;
        end;
      end else
      begin
        if not frmimporta_geral.imp_cab.Fields[0].IsNull then
        begin
          if frmimporta_geral.imp_ntr.Active then
          begin
            cbmodfrete.Text := 'EMITENTE';
            if frmimporta_geral.imp_ntrNFE_MODFRETE.AsString = '1' then
            cbmodfrete.Text := 'DESTINATÁRIO';

            if frmimporta_geral.imp_ntrNFE_ESP.AsString <> '' then
            edesp.Text := frmimporta_geral.imp_ntrNFE_ESP.AsString;

            if frmimporta_geral.imp_ntrNFE_QVOL.AsInteger > 0 then
            edqvol.Text := frmimporta_geral.imp_ntrNFE_QVOL.AsString;

            if frmimporta_geral.imp_ntrNFE_PSBR.AsFloat > 0 then
            begin
              edpsbr.Text := formatfloat('#,0.00########',frmimporta_geral.imp_ntrNFE_PSBR.AsFloat);
              edpslq.Text := formatfloat('#,0.00########',frmimporta_geral.imp_ntrNFE_PSLQ.AsFloat);
            end;
          end;
          PESQUISA_CLIENTE('I',frmimporta_geral.imp_cabROM_CCLI.AsString,0);

          activecontrol := nil;

          frmimporta_geral.imp_ite.First;
          while not frmimporta_geral.imp_ite.Eof do
          begin
            nfe_001.Append;

            PESQUISA_PRODUTO('Código',frmimporta_geral.imp_iteROM_IPRO.AsString);

            nfe_001NFE_QCOM.Value   := frmimporta_geral.imp_iteROM_QTDE.AsFloat;
            nfe_001NFE_VUNCOM.Value := frmimporta_geral.imp_iteROM_UNIT.AsFloat;

            nfe_001.Post;

            frmimporta_geral.imp_ite.Next;
          end;

          edcdns.Text := frmimporta_geral.imp_cabROM_CDNF.AsString;
          edcven.Text := frmimporta_geral.imp_cabROM_CVEN.AsString;
          eddven.Text := frmimporta_geral.imp_cabROM_DVEN.AsString;
          edcrep.Text := frmimporta_geral.imp_cabROM_CREP.AsString;
          eddrep.Text := frmimporta_geral.imp_cabROM_DREP.AsString;
        end;
      end;
    end;
  finally
    dup_001.Close;
    dup_001.Open;

    tag := 0;
    tSHEILD.CommitRetaining;

    nfe_001.First;
    nfe_001.EnableControls;

    freeandNil(frmimporta_geral);
    frmimporta_geral.Free;

    if copy(cbcnat.Text,1,1) = '3' then
    begin
      siEST.Tag        := 1;
      siEST.Hint       := 'Essa Nota Fiscal Efetuará Baixa no Estoque';
      siEST.ImageIndex := 11;
    end;

    CALCULA_NF;
    
    pcmain.ActivePageIndex := 0;
    dbgnfe.SetFocus;
  end;
end;

procedure Tfrmven_nfd.dbgnfeCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  if not ASelected then
  begin
    AFont.Color := clBlack;
    AColor      := $00FDF9F4;
    Value       := ANode.Values[42];

    if (not VarIsNull(Value)) then
    begin
      if Value = '1' then
      begin
         AFont.Color := clwhite;
         AColor      := $00E1AD40;
      end
    end;
  end;
end;

procedure Tfrmven_nfd.BSalClick(Sender: TObject);
begin
  if yesno(handle,'Salvar Nota Fiscal ?') = mryes then
  SALVA_NF;
end;

procedure Tfrmven_nfd.edcdnsValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcdns.Text = '' then
  edcdns.Text := '0';

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT USU_CUSU,USU_DUSU,CAD_REP.ID,REP_FANT');
    SQL.Add('FROM   CAD_USU,CAD_REP,'+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE  ROM_CDNF = '''+edcdns.Text+'''');
    SQL.Add('AND    ROM_CVEN = CAD_USU.USU_CUSU');
    SQL.Add('AND    ROM_CREP = CAD_REP.ID');
    Open;

    edcven.Text := inttostr(fields[0].AsInteger);
    eddven.Text := fields[1].AsString;
    edcrep.Text := inttostr(fields[2].AsInteger);
    eddrep.Text := fields[3].AsString;
  end;
  eddfav.SetFocus;
end;

procedure Tfrmven_nfd.cbfinnfeChange(Sender: TObject);
var
  cnat: string;
begin
  if (edcfav.Text = '') or (edcfav.Text = '0') then
  begin
    cbfinnfe.Text := '';
    raise exception.Create('Favorecido não informado !');
  end;

  siDEV.Enabled := (cbfinnfe.Text = 'DEVOLUÇÃO');
  
  if cbfinnfe.Text = '' then
  exit;
  
  cnat := '';
  if (cbfinnfe.Text <> 'COMPRA') and (cbfinnfe.Text <> 'SERVIÇO') then
  begin
    if (cad_cliCLI_ESTA.AsString = frmprincipal.parametrosPAR_UF.AsString) then
    cnat := frmprincipal.parametrosPAR_CNA1.AsString else
    cnat := frmprincipal.parametrosPAR_CNA2.AsString;

    if cbfinnfe.Text = 'DEVOLUÇÃO' THEN
    begin
      if cnat = '5101' then
      cbcnat.Text := '1201 -> 5201 = Devolução de Venda' else
      if cnat = '5102' then
      cbcnat.Text := '1202 -> 5202 = Devolução de Venda' else
      if cnat = '6101' then
      cbcnat.Text := '2201 -> 6201 = Devolução de Venda' else
      if cnat = '6102' then
      cbcnat.Text := '2202 -> 6202 = Devolução de Venda';

      try
        tag := 1;

        if cbcnat.Text <> '' then
        PESQUISA_NATUREZA(cbcnat.Text,'C');

        nfe_001.DisableControls;
        nfe_001.First;
        while not nfe_001.Eof do
        begin
          nfe_001.Edit;
          nfe_001NFE_CFOP.Value    := copy(cbcnat.Text,1,4);
          nfe_001NFE_PPIS.Value    := tab_natNAT_PIPP.AsFloat;
          nfe_001NFE_PCOFINS.Value := tab_natNAT_PIPC.AsFloat;
          nfe_001.Post;
          nfe_001.Next;
        end;
      finally
        tag := 0;
        tSHEILD.CommitRetaining;

        CALCULA_NF;

        nfe_001.First;
        nfe_001.EnableControls;
      end;
    end;  
  end;
end;

procedure Tfrmven_nfd.FormDestroy(Sender: TObject);
begin
  frmprincipal.pnbot.Visible := BBot;
end;

end.
