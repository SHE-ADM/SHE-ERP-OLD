unit pven_nfd;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  ImgList, dxCntner, dxEditor, dxEdLib,
  StdCtrls, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxPageControl, IBDatabase, DB, IBCustomDataSet, IBQuery, dxDBELib,
  DBCtrls, Grids, DBGrids, math, StrUtils, dateutils, IBStoredProc, ComCtrls,
  jpeg, rxSpeedbar, IBSQL;

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
    pnlmain: TPanel;
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
    DBGEdicao: TdxDBGrid;
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
    TSheild: TIBTransaction;
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
    DBGEdicaoNFE_ITEMPED: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CPROD: TdxDBGridMaskColumn;
    DBGEdicaoNFE_XPROD: TdxDBGridMaskColumn;
    DBGEdicaoNFE_UCOM: TdxDBGridPickColumn;
    DBGEdicaoNFE_QCOM: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VUNCOM: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VPROD: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CFOP: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CST: TdxDBGridPickColumn;
    DBGEdicaoNFE_NCM: TdxDBGridMaskColumn;
    DBGEdicaoNFE_INFADPROD: TdxDBGridBlobColumn;
    DBGEdicaoNFE_ORIG: TdxDBGridPickColumn;
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
    DBGEdicaoNFE_VBC: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PICMS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VICMS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VNF: TdxDBGridMaskColumn;
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
    tsCLI: TdxTabSheet;
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
    cad_for: TIBQuery;
    dtscad_for: TDataSource;
    EDxNome: TdxMaskEdit;
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
    PETxLgr: TdxMaskEdit;
    EDXLGR: TdxMaskEdit;
    edcep: TdxMaskEdit;
    EDNRO: TdxMaskEdit;
    EDXCPL: TdxMaskEdit;
    EDXBAIRRO: TdxMaskEdit;
    edcmun: TdxMaskEdit;
    EDXMUN: TdxMaskEdit;
    PEUF: TdxMaskEdit;
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
    edpass: TdxMaskEdit;
    lapass: TLabel;
    cli_001: TIBDataSet;
    dtscli_001: TDataSource;
    cli_001ID: TIntegerField;
    cli_001NFE_CCAB: TIntegerField;
    cli_001NFE_CDNF: TIntegerField;
    cli_001NFE_DCAD: TDateField;
    cli_001NFE_VNF: TIBBCDField;
    DBGEdicaoNFE_CSTIPI: TdxDBGridMaskColumn;
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
    siEST: TSpeedItem;
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
    DBGEdicaoNFE_REPR: TdxDBGridMaskColumn;
    DBGEdicaoNFE_XLOCEMBARQ: TdxDBGridMaskColumn;
    DBGEdicaoNFE_UFEMBARQ: TdxDBGridMaskColumn;
    DBGEdicaoNFE_NDI: TdxDBGridMaskColumn;
    DBGEdicaoNFE_DDI: TdxDBGridDateColumn;
    DBGEdicaoNFE_XLOCDESEMB: TdxDBGridMaskColumn;
    DBGEdicaoNFE_UFDESEMB: TdxDBGridMaskColumn;
    DBGEdicaoNFE_DDESEMB: TdxDBGridDateColumn;
    DBGEdicaoNFE_CEXPORTADOR: TdxDBGridMaskColumn;
    DBGEdicaoNFE_NADICAO: TdxDBGridMaskColumn;
    DBGEdicaoNFE_NSEQADIC: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CFABRICANTE: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VDESCDI: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VOUTRO: TdxDBGridMaskColumn;
    nfe_001NFE_FLAG: TIBStringField;
    DBGEdicaoNFE_FLAG: TdxDBGridMaskColumn;
    aux: TIBQuery;
    nfe_001NFE_IPRO: TIntegerField;
    aux_S: TIBQuery;
    BSal: TSpeedItem;
    siDEV: TSpeedItem;
    Panel6: TPanel;
    Panel7: TPanel;
    edINF: TdxMemo;
    Shape8: TShape;
    Shape14: TShape;
    Label2: TLabel;
    nfe_001NFE_VUNCOM: TFloatField;
    nfe_001NFE_VMULTA: TIBBCDField;
    nfe_001NFE_PIMP: TIBBCDField;
    nfe_001NFE_VAFRMM: TIBBCDField;
    nfe_001NFE_CNPJ: TIBStringField;
    nfe_001NFE_UFTERCEIRO: TIBStringField;
    nfe_001NFE_VI04: TIBBCDField;
    nfe_001NFE_VI07: TIBBCDField;
    nfe_001NFE_VI12: TIBBCDField;
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
    nfe_001NFE_ITEMPED: TSmallintField;
    nfe_001NFE_NVE: TIBStringField;
    nfe_001NFE_GRAM: TIBBCDField;
    nfe_001NFE_LARG: TIBBCDField;
    nfe_001NFE_CEST: TIBStringField;
    nfe_001NFE_PSBR: TIBBCDField;
    nfe_001NFE_PSLQ: TIBBCDField;
    nfe_001NFE_PREC: TFloatField;
    psq_cli: TIBQuery;
    psq_cliID: TIntegerField;
    psq_cliCLI_FANT: TIBStringField;
    psq_cliCLI_RAZA: TIBStringField;
    psq_cliCLI_CNPJ: TIBStringField;
    psq_cliCLI_CPF: TIBStringField;
    psq_cliCLI_CRED: TIBBCDField;
    psq_cliCLI_CID: TIBStringField;
    psq_cliCLI_TLOG: TIBStringField;
    psq_cliCLI_BAI: TIBStringField;
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
    psq_cliCLI_DDD: TIBStringField;
    psq_cliCLI_TEL1: TIBStringField;
    psq_cliREP_FANT: TIBStringField;
    psq_cliUSU_DUSU: TIBStringField;
    psq_cliCLI_STPD: TSmallintField;
    psq_cliCLI_DTRA: TIBStringField;
    psq_cliCLI_VULT: TIBBCDField;
    psq_cliCLI_OBSO: TIBStringField;
    psq_cliCLI_DUSU: TIBStringField;
    psq_for: TIBQuery;
    psq_forID: TIntegerField;
    psq_forFOR_FANT: TIBStringField;
    psq_forFOR_RAZA: TIBStringField;
    psq_forFOR_CNPJ: TIBStringField;
    psq_forFOR_CPF: TIBStringField;
    psq_forFOR_CRED: TIBBCDField;
    psq_forFOR_CID: TIBStringField;
    psq_forFOR_BAI: TIBStringField;
    psq_forFOR_LOGR: TIBStringField;
    psq_forFOR_ESTA: TIBStringField;
    psq_forFOR_STA: TIBStringField;
    psq_forFOR_STAV: TIBStringField;
    psq_forFOR_DPAG: TIBStringField;
    psq_forFOR_VDSC: TIBBCDField;
    psq_forFOR_DCAD: TDateField;
    psq_forFOR_DFUN: TDateField;
    psq_forFOR_DALT: TDateField;
    psq_forFOR_DULT: TDateField;
    psq_forFOR_OBSO: TIBStringField;
    psq_forFOR_CDEP: TIntegerField;
    psq_forFOR_TLOG: TIBStringField;
    psq_forFOR_NUME: TIBStringField;
    psq_forFOR_CEP: TIBStringField;
    psq_forFOR_COMP: TIBStringField;
    psq_forFOR_VULT: TIBBCDField;
    psq_forFOR_DDD: TIBStringField;
    psq_forFOR_TEL1: TIBStringField;
    psq_forFOR_DTRA: TIBStringField;
    nfe_001NFE_INDESCALA: TIBStringField;
    nfe_001NFE_TIPI: TSmallintField;
    nfe_001NFE_CLENQ: TIBStringField;
    nfe_001NFE_CENQ: TIBStringField;
    nfe_001NFE_CBENEF: TIBStringField;
    nfe_001NFE_NFCI: TIBStringField;
    nfe_001NFE_CNPJFAB: TLargeintField;
    nfe_001NFE_CBPRODUTO: TLargeintField;
    nfe_001NFE_CBUNIDADE: TLargeintField;
    nfe_001NFE_VALIQPROD: TIBBCDField;
    nfe_001NFE_VICMSOP: TIBBCDField;
    nfe_001NFE_PDIF: TIBBCDField;
    nfe_001NFE_VICMSDIF: TIBBCDField;
    nfe_001NFE_VBCFCP: TIBBCDField;
    nfe_001NFE_PFCP: TIBBCDField;
    nfe_001NFE_VFCP: TIBBCDField;
    nfe_001NFE_PST: TIBBCDField;
    nfe_001NFE_VBCFCPST: TIBBCDField;
    nfe_001NFE_PFCPST: TIBBCDField;
    nfe_001NFE_VFCPST: TIBBCDField;
    nfe_001NFE_VBCFCPSTRET: TIBBCDField;
    nfe_001NFE_PFCPSTRET: TIBBCDField;
    nfe_001NFE_VFCPSTRET: TIBBCDField;
    nfe_001NFE_VBCFCPUFDEST: TIBBCDField;
    nfe_001NFE_VICMSDESON: TIBBCDField;
    nfe_001NFE_MOTDESICMS: TSmallintField;
    nfe_001NFE_NDRAW: TIBStringField;
    nfe_001NFE_NRE: TIBStringField;
    nfe_001NFE_NRECOPI: TIBStringField;
    nfe_001NFE_CHNFE: TIBStringField;
    nfe_001NFE_QEXPORT: TIBBCDField;
    nfe_001NFE_VTOTTRIB: TIBBCDField;
    nfe_001NFE_CNPJPROD: TIBStringField;
    nfe_001NFE_INFADPROD: TIBStringField;
    nfe_001NFE_COMP: TIBStringField;
    tab_natNAT_CFOP: TIBStringField;
    tab_natNAT_INV: TIBStringField;
    tab_natNAT_FATU: TIBStringField;
    tab_natNAT_TPNF: TIBStringField;
    tab_nat_002NAT_CFOP: TIBStringField;
    tab_nat_002NAT_INV: TIBStringField;
    tab_nat_002NAT_FATU: TIBStringField;
    tab_nat_002NAT_TPNF: TIBStringField;
    nfe_001NFE_CSTA: TIBStringField;
    nfe_001NFE_CSTS: TIBStringField;
    nfe_001NFE_XPROX: TIBStringField;
    nfe_001NFE_QVOL: TIBBCDField;
    nfe_001NFE_ESP: TIBStringField;
    nfe_001NFE_QTUN: TIBBCDField;
    nfe_001NFE_CNPJTERCEIRO: TIBStringField;
    nfe_001NFE_XLOCDESPACHO: TIBStringField;
    nfe_001NFE_UFSAIDAPAIS: TIBStringField;
    nfe_001NFE_UTRIB: TIBStringField;
    nfe_001NFE_UEXP: TIBStringField;
    nfe_001NFE_TRIBFEDNACIONAL: TIBBCDField;
    nfe_001NFE_TRIBFEDIMPORTADO: TIBBCDField;
    nfe_001NFE_TRIBESTADUAL: TIBBCDField;
    nfe_001NFE_TRIBMUNICIPAL: TIBBCDField;
    nfe_001NFE_TRIBIPI: TIBBCDField;
    nfe_001NFE_MVA: TIBBCDField;
    tab_pagPAG_D011: TIntegerField;
    tab_pagPAG_D012: TIntegerField;
    tab_pagPAG_D013: TIntegerField;
    tab_pagPAG_D014: TIntegerField;
    tab_pagPAG_D015: TIntegerField;
    tab_pagPAG_D016: TIntegerField;
    tab_pagPAG_D017: TIntegerField;
    tab_pagPAG_D018: TIntegerField;
    tab_pagPAG_PRAZ: TSmallintField;
    tab_pagPAG_ENVWEB: TSmallintField;
    nfe_001NFE_TPINTERMEDIO: TIBStringField;
    nfe_001NFE_TPVIATRANSP: TIBStringField;
    nfe_001NFE_QTRIB: TIBBCDField;
    nfe_001NFE_VUNTRIB: TFloatField;
    nfe_001NFE_STAV: TIBStringField;
    nfe_001NFE_INFADTRIB: TIBStringField;
    DBGEdicaoNFE_CART: TdxDBGridMaskColumn;
    Edicao: TIBDataSet;
    DBGEdicaoNFE_QTRIB: TdxDBGridCurrencyColumn;
    tab_natNAT_CSTI0: TIBStringField;
    tab_natNAT_REDBC: TIBBCDField;
    tab_natCENQ: TIBStringField;
    tab_nat_002NAT_CSTI0: TIBStringField;
    tab_nat_002NAT_REDBC: TIBBCDField;
    tab_nat_002CENQ: TIBStringField;
    nfe_001NFE_CDEP: TSmallintField;
    nfe_001NFE_VI18: TIBBCDField;
    DBGEdicaoNFE_NFCI: TdxDBGridMaskColumn;
    LAIDCD: TLabel;
    CEIDCD: TdxCurrencyEdit;
    EDDECD: TdxMaskEdit;
    EDRZCD: TdxMaskEdit;
    Label5: TLabel;
    SQLConsulta: TIBSQL;
    Produtos: TIBQuery;
    SQLSEdicao: TIBSQL;
    ProdutosID: TIntegerField;
    ProdutosIDEP: TSmallintField;
    ProdutosDEEP: TIBStringField;
    ProdutosPED_VPRC_PAD: TIBStringField;
    ProdutosCDST: TSmallintField;
    ProdutosREST: TIBStringField;
    ProdutosDEST: TIBStringField;
    ProdutosARTIGO: TIBStringField;
    ProdutosIDAK: TLargeintField;
    ProdutosCP_IDEP: TSmallintField;
    ProdutosCP_DEEP: TIBStringField;
    ProdutosNCM: TIBStringField;
    ProdutosPIPI: TIBBCDField;
    ProdutosSKU: TIBStringField;
    ProdutosIDEK: TLargeintField;
    ProdutosCEAN: TIBStringField;
    ProdutosDECP: TIBStringField;
    ProdutosDGCP: TIBStringField;
    ProdutosCMP_PAD: TIBStringField;
    ProdutosUCOM: TIBStringField;
    ProdutosD_UCON: TIBStringField;
    ProdutosUCDBE: TIBStringField;
    ProdutosUPSBR: TIBBCDField;
    ProdutosUPSLQ: TIBBCDField;
    ProdutosEPE_QTDE: TIBBCDField;
    ProdutosEPE_QTRL: TIntegerField;
    ProdutosEPR_QTDE: TIBBCDField;
    ProdutosEPR_QTRL: TIntegerField;
    ProdutosEPS_QTDE: TIBBCDField;
    ProdutosEPS_QTRL: TIntegerField;
    ProdutosCF_VPRC_PAD_ORI: TIBStringField;
    ProdutosCF_VPRC_PAD: TFloatField;
    ProdutosVPRC_PAD_ORI: TIBStringField;
    ProdutosVPRC_PAD_INI: TFloatField;
    ProdutosVPRC_PAD_FIM: TFloatField;
    ProdutosVPRC_PAD: TFloatField;
    ProdutosORIG: TSmallintField;
    ProdutosFPAIS: TIBStringField;
    DBGEdicaoNFE_VUNTRIB: TdxDBGridMaskColumn;
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
    Shape12: TShape;
    Label14: TLabel;
    linha2: TShape;
    Shape3: TShape;
    Label7: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    Label35: TLabel;
    Shape13: TShape;
    Label36: TLabel;
    Label37: TLabel;
    Label81: TLabel;
    Shape9: TShape;
    Shape15: TShape;
    Label4: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label25: TLabel;
    Label33: TLabel;
    edqtde: TdxMaskEdit;
    edvII: TdxMaskEdit;
    edVCREDICMSSN: TdxMaskEdit;
    edpdesc: TdxMaskEdit;
    edvprod: TdxMaskEdit;
    edvbc: TdxMaskEdit;
    edvicms: TdxMaskEdit;
    edvipi: TdxMaskEdit;
    edvpis: TdxMaskEdit;
    edvcofins: TdxMaskEdit;
    edvoutro: TdxMaskEdit;
    edvdesc: TdxMaskEdit;
    edqtrl: TdxMaskEdit;
    edvnf: TdxMaskEdit;
    edtpnf: TdxMaskEdit;
    edconc: TdxMaskEdit;
    edcdro: TdxMaskEdit;
    edcdnf: TdxMaskEdit;
    eddemi: TdxDateEdit;
    cbfinnfe: TdxImageEdit;
    edcdns: TdxMaskEdit;
    edcven: TdxMaskEdit;
    edcrep: TdxMaskEdit;
    eddven: TdxMaskEdit;
    eddrep: TdxMaskEdit;
    EDNPed: TdxMaskEdit;
    DENPed: TdxDateEdit;
    IENPedEst: TdxImageEdit;
    IENPedPag: TdxImageEdit;
    CHKCDI: TCheckBox;
    EdicaoID: TLargeintField;
    EdicaoIDEP: TSmallintField;
    EdicaoIDCA: TSmallintField;
    EdicaoITEM: TIntegerField;
    EdicaoCDET: TLargeintField;
    EdicaoMAPA: TIBStringField;
    EdicaoEST_CDOP: TSmallintField;
    EdicaoEST_REOP: TIBStringField;
    EdicaoEST_DEOP: TIBStringField;
    EdicaoEST_CDTP: TSmallintField;
    EdicaoEST_RETP: TIBStringField;
    EdicaoEST_DETP: TIBStringField;
    EdicaoIDCP: TIntegerField;
    EdicaoCP_IDEP: TSmallintField;
    EdicaoIDAK: TLargeintField;
    EdicaoIDEK: TLargeintField;
    EdicaoARTIGO: TIBStringField;
    EdicaoSKU: TIBStringField;
    EdicaoCEAN: TIBStringField;
    EdicaoDECP: TIBStringField;
    EdicaoDGCP: TIBStringField;
    EdicaoUCOM: TIBStringField;
    EdicaoUCON: TIBStringField;
    EdicaoUCDBE: TIBStringField;
    EdicaoUQTMD: TIBBCDField;
    EdicaoUPSBR: TIBBCDField;
    EdicaoUPSLQ: TIBBCDField;
    EdicaoEST_QTDE: TIBBCDField;
    EdicaoEST_QTRL: TIntegerField;
    EdicaoQTDE: TIBBCDField;
    EdicaoQTRL: TIntegerField;
    EdicaoPSBR: TIBBCDField;
    EdicaoPSLQ: TIBBCDField;
    EdicaoVPRC_PAD_ORI: TIBStringField;
    EdicaoVPRC_PAD_INI: TFloatField;
    EdicaoVPRC_PAD_FIM: TFloatField;
    EdicaoVPRC_PAD: TFloatField;
    EdicaoVPRC_COM: TFloatField;
    EdicaoCF_CDNF: TLargeintField;
    EdicaoCF_CDPD: TLargeintField;
    EdicaoCF_DEPD: TIBStringField;
    EdicaoCF_VPRC_PAD_ORI: TIBStringField;
    EdicaoCF_VPRC_PAD: TFloatField;
    EdicaoCF_VPRC_COM: TFloatField;
    EdicaoCOL_ID: TSmallintField;
    EdicaoCOL_NO: TIBStringField;
    EdicaoNCM: TIBStringField;
    EdicaoORIG: TSmallintField;
    EdicaoPIPI: TIBBCDField;
    EdicaoVIPI: TIBBCDField;
    EdicaoNFCI: TIBStringField;
    EdicaoEST_IDDF: TSmallintField;
    EdicaoEST_CDDF: TSmallintField;
    EdicaoEST_DEDF: TIBStringField;
    EdicaoINFADTEC: TMemoField;
    EdicaoIDEV: TLargeintField;
    EdicaoCDEV: TSmallintField;
    EdicaoIP: TIBStringField;
    EdicaoHOST: TIBStringField;
    EdicaoFLAG: TSmallintField;
    ProdutosUQTDE: TIBBCDField;
    procedure FormCreate(Sender: TObject);
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
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSairClick(Sender: TObject);
    procedure cbcnatExit(Sender: TObject);
    procedure latdscClick(Sender: TObject);
    procedure dup_001AfterPost(DataSet: TDataSet);
    procedure dup_001AfterDelete(DataSet: TDataSet);
    procedure dup_001AfterEdit(DataSet: TDataSet);
    procedure dup_001NewRecord(DataSet: TDataSet);
    procedure nfe_001NFE_QCOMValidate(Sender: TField);
    procedure BVisClick(Sender: TObject);
    procedure BPriClick(Sender: TObject);
    procedure edpslqExit(Sender: TObject);
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
    procedure DBGEdicaoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure BNFeClick(Sender: TObject);
    procedure BSalClick(Sender: TObject);
    procedure edcdnsValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbfinnfeChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure EDNPedValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure LAIDCDClick(Sender: TObject);
    procedure CEIDCDValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure DBGEdicaoNFE_CARTValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoNFE_CPRODValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dtsnfe_001DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    AREC_SHE_EDI: TREC_SHE_EDI;

    Pecas      : Integer;
    Quantidade : Double;
    FrmStyle   : TFormStyle;
    FrmPosition: TPosition;

    procedure SALVA_NF;
    procedure NOVO;
    procedure _PSQNOSSOCOD(AField,AValue: String);
    procedure _Estoque;
  public
    { Public declarations }
    NewNCM,NewICMS,NewCST,NewString,NewNota, NewData: string;
    procedure PESQUISA_TRANSPORTADORA(pesq,chave: string);
    procedure PESQUISA_NATUREZA(pesq,chave: string;ACampo: String = 'NAT_CNAT');
    procedure CALCULA_NF;
    procedure COMPRAS;
    procedure ESTOQUE;
    procedure PAGAMENTOS;
  end;

var
  frmven_nfd: Tfrmven_nfd;
  pathRet,chave,protocolo: shortstring;
  Ano, Mes, Dia: Word;
  BCalc: boolean;
  tsde,tcde: double;
  FB_IDG: Variant;

  ACDPD: Integer;
  ADTPD: TDate;
  ADEPD,
  AFVPD,
  AEMPD: String;

implementation

uses uPrincipal, bPrincipal,
  pimporta_geral;

{$R *.dfm}

function ImprimeDanfe(pathXML,pathPDF: shortstring; tipoImp : integer; formSeguranca : boolean) : boolean; stdcall; External dllNfe; far;
function ImprimeDanfeEscolheImp(pathXML,pathPDF,nomeImp: shortstring; tipoImp : integer; formSeguranca : boolean) : boolean; stdcall; External dllNfe; far;

procedure Tfrmven_nfd.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;

  oOTransact(IBTra);
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(IDG_IDEV_EST,1) FROM RDB$DATABASE');
    ExecQuery;
    FB_IDG := Current.Vars[0].AsString;
  end;

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

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM CAD_PRO_ENI');
    ExecSQL;

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM TAB_EDI_PRO AS PK');
    SQL.Add('WHERE  PK.IDEV = ''' + FB_IDG + '''');
    SQL.Add('AND    PK.CDEV = 8');
    ExecSQL;
  end;

  with Edicao do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   PK.ID  ,PK.IDEP,PK.IDCA,');
    SelectSQL.Add('         PK.ITEM,PK.CDET,PK.MAPA,PK.EST_CDOP,PK.EST_REOP,PK.EST_DEOP,PK.EST_CDTP,PK.EST_RETP,PK.EST_DETP,');
    SelectSQL.Add('         PK.IDCP,PK.CP_IDEP,PK.IDAK,PK.IDEK,');
    SelectSQL.Add('         PK.ARTIGO,PK.SKU ,PK.CEAN,');
    SelectSQL.Add('         PK.DECP,PK.DGCP,');
    SelectSQL.Add('         PK.UCOM,PK.UCON,PK.UCDBE,PK.UQTMD,PK.UPSBR,PK.UPSLQ,');
    SelectSQL.Add('         PK.EST_QTDE,PK.EST_QTRL,');
    SelectSQL.Add('         PK.QTDE,PK.QTRL,PK.PSBR,PK.PSLQ,');
    SelectSQL.Add('         PK.VPRC_PAD_ORI,PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,');
    SelectSQL.Add('         PK.VPRC_PAD,PK.VPRC_COM,');
    SelectSQL.Add('         PK.CF_CDNF,PK.CF_CDPD,PK.CF_DEPD,PK.CF_VPRC_PAD_ORI,PK.CF_VPRC_PAD,PK.CF_VPRC_COM,');
    SelectSQL.Add('         PK.COL_ID,PK.COL_NO,');
    SelectSQL.Add('         PK.NCM  ,PK.ORIG ,PK.PIPI,PK.VIPI,');
    SelectSQL.Add('         PK.NFCI ,PK.EST_IDDF,PK.EST_CDDF,PK.EST_DEDF,');
    SelectSQL.Add('         PK.INFADTEC,');
    SelectSQL.Add('         PK.IDEV,PK.CDEV,');
    SelectSQL.Add('         PK.IP  ,PK.HOST,');
    SelectSQL.Add('         PK.FLAG');
    SelectSQL.Add('FROM     TAB_EDI_PRO AS PK');
    SelectSQL.Add('WHERE    PK.IDEV = ''' + FB_IDG + '''');
    SelectSQL.Add('AND      PK.CDEV = 8');
    SelectSQL.Add('AND      PK.FLAG = 0');
    SelectSQL.Add('ORDER BY PK.ITEM');
    Open;
  end;
  oRTransact(TSheild);

  NOVO;

  BCalc := true;
  tag   := 1;
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   TRA_FANT FROM CAD_TRA');
    SQL.Add('WHERE    TRA_STAV = ''A''');
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

procedure Tfrmven_nfd.FormShow(Sender: TObject);
begin
  { Herança }
  FrmStyle    := FormStyle;
  FrmPosition := Position;
end;

procedure Tfrmven_nfd.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Screen.Cursor := crDefault;
  Tag := 0;

  CEIDCD.Enabled := not (edcdro.Text <> '0');
  EDDECD.Enabled := not (edcdro.Text <> '0');
  EDRZCD.Enabled := not (edcdro.Text <> '0');
end;

procedure Tfrmven_nfd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmven_nfd.FormDestroy(Sender: TObject);
begin
  OnDestroy := Nil;
  try
    Screen.Cursor := crAppStart;

    try
      oFTransact(IBTra);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                 'Error Code: '+E.Message+'.'      +#13+
                                  Self.Caption+'.');
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    Frmven_nfd    := Nil;
  end;
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

  if (((ssCtrl in Shift) and (Key in [83])) and (RECUsuarios.Login = 'RICARDO')) then
  begin
    if oYesNo(handle,'Salvar Nota Fiscal ?') = mryes then
       SALVA_NF;
  end;     
end;

procedure Tfrmven_nfd.FormPaint(Sender: TObject);
var
  R: TRect;
begin
  if (Showing) and ((HelpContext = 0) or (HelpContext = 1)) then
  begin
//    FrmPrincipal.TBPrincipal.Visible := (Screen.Height > 768);
    HelpContext := IFThen((Screen.Height > 768),0,1);

    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,R);

    if FrmPosition = poDefault then
    begin
      Top    := IFThen(FrmStyle    = fsNormal ,R.Top ,0);
      Left   := IFThen(FrmStyle    = fsNormal ,R.Left,0);
      Width  := IFThen(FrmPosition = poDefault,R.Right -R.Left-5,0);
      Height := IFThen(FrmPosition = poDefault,R.Bottom-R.Top -5,0);
    end else
    begin
      Top  := R.Top + ((R.Bottom - R.Top ) - Height) div 2;
      Left :=         ((R.Right  + R.Left) - Width ) div 2;
    end;
  end;
end;

procedure Tfrmven_nfd.FormResize(Sender: TObject);
begin
  if frmven_nfd <> Nil then
  Paint;
end;

procedure Tfrmven_nfd.CALCULA_NF;
begin
  activecontrol := nil;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(NFE_VDESC),SUM(NFE_VPROD),SUM(NFE_VBC),SUM(NFE_VICMS),SUM(NFE_VIPI),SUM(NFE_VPIS),SUM(NFE_VCOFINS),SUM(NFE_VOUTRO),SUM(NFE_VIIIMP),SUM(NFE_VNF),SUM(NFE_RCOM),SUM(NFE_VCREDICMSSN),SUM(NFE_QCOM)');
    SQL.Add('FROM   NFE_ITE');
    Open;

    edvdesc.Text       := formatfloat('#,0.00',fields[0].AsFloat);
    edvprod.Text       := formatfloat('#,0.00',fields[1].AsFloat);
    edvbc.Text         := formatfloat('#,0.00',fields[2].AsFloat);
    edvicms.Text       := formatfloat('#,0.00',fields[3].AsFloat);
    edvipi.Text        := formatfloat('#,0.00',fields[4].AsFloat);
    edvpis.Text        := formatfloat('#,0.00',fields[5].AsFloat);
    edvcofins.Text     := formatfloat('#,0.00',fields[6].AsFloat);
    edvoutro.Text      := formatfloat('#,0.00',fields[7].AsFloat);
    edvII.Text         := formatfloat('#,0.00',fields[8].AsFloat);
    edqtde.Text        := formatfloat('#,0.00',fields[12].AsFloat);
    edvcredicmssn.Text := formatfloat('#,0.00',fields[11].AsFloat);
  end;
end;

procedure Tfrmven_nfd.SALVA_NF;
var
  ccab: Integer;
  STFI: String;
begin
  ACDPD := 0;
  ADEPD := EmptyStr;
  ADTPD := 0;
  AFVPD := EmptyStr;
  AEMPD := EmptyStr;

  ActiveControl := Nil;
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
    messageBox(handle,'Data de emissão não informada !',PChar(caption),MB_ICONERROR+MB_OK);
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
      if oYesNo(handle,'Nossa Nota Fiscal não informada !'+#13+'Continuar ?') = mrno then
      begin
        edcdns.SetFocus;
        Abort;
      end;  
    end;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,NFE_CFAV,NFE_DFAV FROM '+oREPZero('NFE_CAB','_',RECParametros.EP_ID,3));
    SQL.Add('WHERE  NFE_CDNF    = '''+edcdnf.Text            +'''');
    SQL.Add('AND    NFE_CNPJREF = '''+oRETNumero(edcnpj.Text)+'''');
    Open;

    if not fields[0].IsNull then
    begin
      if oYesNo(handle,'Nota Fiscal já emitida !'                               +#13+
                      'Favorecido: '+fields[1].AsString+' - '+fields[2].AsString+#13+
                      'Continuar ?') = mrno then
      begin
        edcdnf.SetFocus;
        Abort;
      end;

      Consulta.Tag := Fields[0].AsInteger;
      SQL.Clear;
      SQL.Add('DELETE FROM '+oREPZero('NFE_CAB','_',RECParametros.EP_ID,3));
      SQL.Add('WHERE  ID = '''+IntToStr(Tag)+'''');
      ExecSQL;
      SQL.Clear;
      SQL.Add('DELETE FROM '+oREPZero('NFE_ITE','_',RECParametros.EP_ID,3));
      SQL.Add('WHERE  NFE_CCAB = '''+IntToStr(Tag)+'''');
      ExecSQL;
    end;
  end;

  try
    nfe_001.DisableControls;
    nfe_001.First;
    while not nfe_001.Eof do
    begin
      if oEmpty(nfe_001NFE_CFOP.AsString) then
      begin
        DBGEdicao.FocusedColumn := 1;
        oException(Nil,'CFOP não informado !');
      end;
      nfe_001.Next;
    end;

    tag := 1;
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_'+oREPZero('NFE_CAB','_',RECParametros.EP_ID,3)+',0) FROM RDB$DATABASE');
      Open;
      ccab := fields[0].AsInteger+1;
    end;

    ibSP.Close;
    ibSP.StoredProcName := 'SP_NFE_CAB';
    ibSP.Prepare;

    ibSP.ParamByName('nfe').Value          := oREPZero('NFE_CAB','_',RECParametros.EP_ID,3);
    ibSP.ParamByName('id').Value           := 0;
    ibSP.ParamByName('REST').Value         := 'A';
    ibSP.ParamByName('CDNF').Value         := edcdnf.Text;
    ibSP.ParamByName('R_CDNF').Value       := 0;
    ibSP.ParamByName('DEMI').Value         := eddemi.Date;
    ibSP.ParamByName('DSAI').Value         := eddemi.Date;
    ibSP.ParamByName('CDRO').Value         := 0;
    ibSP.ParamByName('DERO').Value         := EmptyStr;
    ibSP.ParamByName('CVEN').Value         := edcven.Text;
    ibSP.ParamByName('DVEN').Value         := eddven.Text;
    ibSP.ParamByName('CREP').Value         := edcrep.Text;
    ibSP.ParamByName('DREP').Value         := eddrep.Text;
    ibSP.ParamByName('CFAV').Value         := CEIDCD.Text;
    ibSP.ParamByName('DFAV').Value         := EDDECD.Text;
    ibSP.ParamByName('CTRA').Value         := edctra.Text;
    ibSP.ParamByName('DTRA').Value         := cbdtra.Text;
    ibSP.ParamByName('MFRT').Value         := '0';
    ibSP.ParamByName('CFRT').Value         := EmptyStr;
    ibSP.ParamByName('CNAT').Value         := copy(cbcnat.Text,1,4);
    ibSP.ParamByName('INDPAG').Value       := '0';
    ibSP.ParamByName('TPNF').Value         := '0';
    ibSP.ParamByName('NFREF').Value        := '0';
    ibSP.ParamByName('REFNFE').Value       := '';
    ibSP.ParamByName('CUFREF').Value       := RECParametros.LOG_UF;
    ibSP.ParamByName('CNPJREF').Value      := oRETNumero(edcnpj.Text);
    ibSP.ParamByName('MODREF').Value       := '01';
    ibSP.ParamByName('SERIEREF').Value     := RECParametros.NFE_SERIE;
    ibSP.ParamByName('NNFREF').Value       := '0';
    ibSP.ParamByName('TPEMIS').Value       := '1';
    ibSP.ParamByName('FINNFE').Value       := '6';
    ibSP.ParamByName('CHAV').Value         := '';
    ibSP.ParamByName('PROT').Value         := '';
    ibSP.ParamByName('QCOM').Value         := oTextToValor(edqtde.Text);
    ibSP.ParamByName('VBC').Value          := oTextToValor(edvbc.Text);
    ibSP.ParamByName('VICMS').Value        := oTextToValor(edvicms.Text);
    ibSP.ParamByName('VBCST').Value        := 0;
    ibSP.ParamByName('VST').Value          := 0;
    ibSP.ParamByName('VPROD').Value        := oTextToValor(edvprod.Text);
    ibSP.ParamByName('VFRETE').Value       := oTextToValor(edvfrete.Text);
    ibSP.ParamByName('VSEG').Value         := 0;
    ibSP.ParamByName('VDESC').Value        := oTextToValor(edvdesc.Text);
    ibSP.ParamByName('VII').Value          := oTextToValor(edvII.Text);
    ibSP.ParamByName('VIPI').Value         := oTextToValor(edvipi.Text);
    ibSP.ParamByName('VPIS').Value         := oTextToValor(edvpis.Text);
    ibSP.ParamByName('VCOFINS').Value      := oTextToValor(edvcofins.Text);
    ibSP.ParamByName('VOUTRO').Value       := oTextToValor(edvoutro.Text);
    ibSP.ParamByName('VNF').Value          := oTextToValor(edvnf.Text);
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
    ibSP.ParamByName('OBSE').Value         := StringReplace(oREPApostrofos(edINF.Text),Char(39),'',[rfReplaceAll]);
    ibSP.ParamByName('CLFO').Value         := LAIDCD.Tag;
    ibSP.ParamByName('ESTO').Value         := '0';
    if (siEST.Tag = 1) and (siEST.Enabled) then
    ibSP.ParamByName('ESTO').Value         := '1';
    ibSP.ExecProc;

    nfe_001.First;
    while not nfe_001.Eof do
    begin
      ibSP.Close;
      ibSP.StoredProcName := 'SP_NFE_ITE_NEW';
      ibSP.Prepare;

      ibSP.ParamByName('nfe').Value            := oREPZero('NFE_ITE','_',RECParametros.EP_ID,3);
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

      ibSP.ParamByName('QTRIB').Value          := nfe_001NFE_QTRIB.AsFloat;
      ibSP.ParamByName('RTRIB').Value          := 08;

      ibSP.ParamByName('PSCN').Value           := nfe_001NFE_PSCN.AsFloat;
      ibSP.ParamByName('PSBR').Value           := nfe_001NFE_PSBR.AsFloat;
      ibSP.ParamByName('PSLQ').Value           := nfe_001NFE_PSLQ.AsFloat;

      ibSP.ParamByName('VUNCOM').Value         := nfe_001NFE_VUNCOM.AsFloat;
      ibSP.ParamByName('VUNTRIB').Value        := nfe_001NFE_VUNTRIB.AsFloat;

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
      ibSP.ParamByName('CEST').Value           := '0';
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
      ibSP.ParamByName('NFCI').Value           := nfe_001NFE_NFCI.AsString;
      ibSP.ExecProc;

      COMPRAS;
      ESTOQUE;
      PAGAMENTOS;

      nfe_001.Next;
    end;

    with Consulta do
    begin
      if EDNPed.Tag > 0 then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.ID,PK.DEPC,CAST(PK.DTCA AS DATE) AS DTPC,CF.FOR_FANT AS FVPC,CC.LOGIN AS DECC');
        SQL.Add('FROM '+oREPZero('PED_COM_CAB','_',RECParametros.EP_ID,3)+' AS PK');
        SQL.Add('JOIN   CAD_FOR  AS CF ON (CF.ID = PK.IDCF)');
        SQL.Add('JOIN   TAB_USER AS CC ON (CC.ID = PK.IDCC)');
        SQL.Add('WHERE  PK.IDEP = '''+RECParametros.EP_ID    +'''');
        SQL.Add('AND    PK.ID   = '''+IntToStr(EDNPed.Tag)+'''');
        SQL.Add('AND    PK.IDCF = '''+CEIDCD.Text         +'''');
        Open;

        ACDPD := Fields[0].AsInteger;
        ADEPD := Fields[1].AsString;
        ADTPD := Fields[2].AsDateTime;
        AFVPD := Fields[3].AsString;
        AEMPD := Fields[4].AsString;

        Close;
        SQL.Clear;
        SQL.Add('SELECT COUNT(DISTINCT ROM_STAV)');
        SQL.Add('FROM '+oREPZero('PED_COM_ITE','_',RECParametros.EP_ID,3));
        SQL.Add('WHERE  ROM_CCAB = '''+IntToStr(EDNPed.Tag)+'''');
        Prepare;
        Open;
        if Fields[0].AsInteger = 1 then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT ROM_STAV');
          SQL.Add('FROM '+oREPZero('PED_COM_ITE','_',RECParametros.EP_ID,3));
          SQL.Add('WHERE  ROM_CCAB = '''+IntToStr(EDNPed.Tag)+'''');
          Prepare;
          Open;
          STFI := Fields[0].AsString;
        end else
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT ROM_STAV');
          SQL.Add('FROM '+oREPZero('PED_COM_ITE','_',RECParametros.EP_ID,3));
          SQL.Add('WHERE  ROM_CCAB = '''+IntToStr(EDNPed.Tag)+'''');
          SQL.Add('AND    ROM_STAV <> ''PENDENTE''');
          Prepare;
          Open;
          STFI := Fields[0].AsString+' PARCIAL'
        end;

        Close;
        SQL.Clear;
        SQL.Add('UPDATE '+oREPZero('PED_COM_CAB','_',RECParametros.EP_ID,3));
        SQL.Add('SET    ROM_STFI = '''+STFI+'''');
        SQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID    +'''');
        SQL.Add('AND    ID   = '''+IntToStr(EDNPed.Tag)+'''');
        SQL.Add('AND    IDCF = '''+CEIDCD.Text         +'''');
        ExecSQL;
      end;

      if LAIDCD.Caption = 'Fornecedor' then
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE CAD_FOR');
        SQL.Add('SET    FOR_RAZA = '''+EDxNome.Text+''',');
        SQL.Add('       FOR_INSC = '''+edinsc.Text+''',');
        SQL.Add('       FOR_CPF  = '''+edcpf.Text +''',');
        SQL.Add('       FOR_DDD  = '''+edDDD .Text+''',');
        SQL.Add('       FOR_TEL1 = '''+edTEL1.Text+''',');
        SQL.Add('       FOR_TLOG = '''+PETxLgr.Text+''',');
        SQL.Add('       FOR_LOGR = '''+EDXLgr.Text+''',');
        SQL.Add('       FOR_NUME = '''+EDNRO.Text+''',');
        SQL.Add('       FOR_COMP = '''+EDXCPL.Text+''',');
        SQL.Add('       FOR_CEP  = '''+EDCEP .Text+''',');
        SQL.Add('       FOR_BAI  = '''+EDXBAIRRO .Text+''',');
        SQL.Add('       FOR_CID  = '''+EDCMUN.Text+''',');
        SQL.Add('       FOR_ESTA = '''+PEUF.Text+''',');
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
        SQL.Add('WHERE ID = '''+CEIDCD.Text+'''');
      end;
    end;

    _Estoque;

    oRTransact(IBTra);
    BSal.Enabled := False;
    Close;
  finally
    Tag := 0;
    nfe_001.EnableControls;
    dup_001.EnableControls;
    cli_001.EnableControls;
  end;
end;

procedure Tfrmven_nfd.PESQUISA_NATUREZA(pesq,chave: string;ACampo: String = 'NAT_CNAT');
begin
  ActiveControl := nil;
  if pesq = '' then
  exit;

  with tab_nat do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM TAB_NAT');
    if chave = 'F' then
    SQL.Add('WHERE  NAT_DNAT = '''+pesq+'''') else if chave = 'C' then
    SQL.Add('WHERE '+ACampo+' = '''+copy(pesq,1,4)+'''');
    Open;
  end;

  edtpnf.Text   := tab_natNAT_OPER.AsString;
  cbcnat.Text   := tab_natNAT_CNAT.AsString;
  cbdnat.Text   := tab_natNAT_DNAT.AsString;
  cbfinnfe.Text := tab_natNAT_TIPO.AsString;
end;

procedure Tfrmven_nfd.NOVO;
begin
  activecontrol := nil;
  pcmain.ActivePageIndex := 0;

  edcdnf.Text     := '0';
  eddemi.Date     := RECParametros.SHE_DATA;
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
  CEIDCD.Value    := 0;
  EDDECD.Text     := '';
  EDRZCD.Text     := '';
  cbcnat.Text     := '';
  edtpnf.Text     := '';
  cbdnat.Text     := '';
  edctra.Text     := '';
  cbdtra.Text     := '';
  cbmodfrete.Text := '';
  edvfrete.Text   := '0,00';
  edqvol.Text     := '0';
  edpsbr.Text     := '0,00';
  edpslq.Text     := '0,00';
  edINF.Text      := '';
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
    DBGEdicao.SetFocus;
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

    DBGEdicao.FocusedColumn := 1;
    if pcmain.ActivePageIndex = 0 then
    DBGEdicao.SetFocus;
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
    DBGEdicao.SetFocus;
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
  if PEUF.Text = 'EX' then
  nfe_001NFE_PICMS.Value := 18;

  nfe_001NFE_PSCN.Value := 0;
  nfe_001NFE_PSBR.Value := 0;
  nfe_001NFE_PSLQ.Value := 0;

  nfe_001NFE_IPRO.Value    := 0;
  nfe_001NFE_CART.Value    := EmptyStr;
  nfe_001NFE_UTRIB.Value   := EmptyStr;
  nfe_001NFE_PESO.Value    := 0;
  nfe_001NFE_METR.Value    := 0;
  nfe_001NFE_QTRIB.Value   := 0;
  nfe_001NFE_VUNTRIB.Value := 0;
  nfe_001NFE_FLAG.Value    := '0';
  
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT COALESCE(MAX(NFE_ITEMPED),0) FROM NFE_ITE');
    Open;
    nfe_001nfe_ITEMPED.Value := Fields[0].AsInteger + 1;
  end;
end;

procedure Tfrmven_nfd.BSairClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmven_nfd.cbcnatExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  if cbcnat.Text = '' then
  Abort;

  try
    if CEIDCD.Value = 0 then
    oException(Nil,'Favorecido não selecionado !');

    if trim(PEUF.Text) = '' then
    oException(Nil,'Favorecido sem estado cadastrado !');

    PESQUISA_NATUREZA(cbcnat.Text,'C');
    nfe_001.First;
    while not nfe_001.Eof do
    begin
      nfe_001.Edit;
      nfe_001NFE_CFOP.Value := tab_natNAT_CNAT.AsString;
      nfe_001.Post;
      nfe_001.Next;
    end;
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
  latdsc.Caption := '$' else
  latdsc.Caption := '%';
  latdsc.Update;
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

procedure Tfrmven_nfd.BVisClick(Sender: TObject);
var
  NOME_ARQ: string;
  NOME_FIL: string;
begin
  Screen.cursor:=crAppStart;

  edcdnf.Text := oStrZero(strtoint(edcdnf.Text),6);
  NOME_ARQ    := 'C:\Sheild\NotaFiscal\PDF\'+edcdnf.Text+'.PDF';

  if protocolo <> '' then
  begin
    DecodeDate(eddemi.Date, Ano, Mes, Dia);
    NOME_FIL := 'C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\'+oStrZero(ano,4)+oStrZero(mes,2)+'\'+copy(chave,4,100)+'-procNFe.xml';

    if not fileexists(NOME_FIL) then
       oException(Nil,'Arquivo '+NOME_FIL+' não encontrado !'+#13+'Favor consultar a nota fiscal.');

    if not fileexists(NOME_ARQ) then
    oException(Nil,'Arquivo '+NOME_ARQ+' não encontrado !'+#13+'Favor consultar a nota fiscal.');

    ImprimeDanfe(NOME_FIL,NOME_ARQ,3,false);
  end;

  Screen.cursor:=crDefault;
end;

procedure Tfrmven_nfd.BPriClick(Sender: TObject);
var
  NOME_ARQ: string;
  NOME_FIL: string;
begin
  Screen.cursor:=crAppStart;

  edcdnf.Text := oStrZero(strtoint(edcdnf.Text),6);
  NOME_ARQ    := 'C:\Sheild\NotaFiscal\PDF\'+edcdnf.Text+'.PDF';

  if protocolo <> '' then
  begin
    DecodeDate(eddemi.Date, Ano, Mes, Dia);
    NOME_FIL := 'C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\'+oStrZero(ano,4)+oStrZero(mes,2)+'\'+copy(chave,4,100)+'-procNFe.xml';

    if not fileexists(NOME_FIL) then
       oException(Nil,'Arquivo '+NOME_FIL+' não encontrado !'+#13+'Favor consultar a nota fiscal.');

    if not fileexists(NOME_ARQ) then
    oException(Nil,'Arquivo '+NOME_ARQ+' não encontrado !'+#13+'Favor consultar a nota fiscal.');

    ImprimeDanfe(NOME_FIL,NOME_ARQ,1,false);
  end;

  Screen.cursor:=crDefault;
end;

procedure Tfrmven_nfd.edpslqExit(Sender: TObject);
begin
  edesp.SetFocus;
end;

procedure Tfrmven_nfd.rgtipeClick(Sender: TObject);
begin
  if PEUF.Text <> 'EX' then
  begin
    if (rgtipe.ItemIndex = 0) and (edcpf.Text = '') then
    begin
      oException(Nil,'C.P.F. não informado !');
    end;

    if (rgtipe.ItemIndex = 1) and (edcnpj.Text = '') then
    begin
      oException(Nil,'C.N.P.J. não informado !');
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

procedure Tfrmven_nfd.siESTClick(Sender: TObject);
begin
  if siEST.Tag = 0 then
  begin
    if oYesNo(handle,'Deseja que a Nota Fiscal Efetue Baixa no Estoque ?') = mrno then
       abort;

    siEST.Tag        := 1;
    siEST.Hint       := 'Essa Nota Fiscal Efetuará Baixa no Estoque';
    siEST.ImageIndex := 11;
  end
  else
  begin
    if oYesNo(handle,'Deseja que a Nota Fiscal não Efetue Baixa no Estoque ?') = mrno then
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

    edpsbr.Text := formatfloat('#,0.00#',oTextToValor(edpsbr.Text));
    edpslq.Text := formatfloat('#,0.00#',oTextToValor(edpsbr.Text) - ((oTextToValor(edpsbr.Text)*10)/100));
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

procedure Tfrmven_nfd.BNFeClick(Sender: TObject);
begin
  FrmImporta_Geral     := TFrmImporta_Geral.Create(Self);
  FrmImporta_Geral.Tag := 1;
  with FrmImporta_Geral do
  try
    tsXML.Tag := IFThen(LAIDCD.Caption = 'Fornecedor',1,0);
    ShowModal;
    if REC_SHE_DEF.Edited then
    begin
      frmven_nfd.Tag := 1;

      oRTransact(frmven_nfd.TSheild);
      nfe_001.DisableControls;
      nfe_001.First;

      if cbTIPO.Text = 'XML' then
      begin
        BCalc       := false;
        edcdnf.Text := frmimporta_geral.imp_ncaNFE_CDNF.AsString;
        eddemi.Date := frmimporta_geral.imp_ncaNFE_DEMI.AsDateTime;
        if (oRETMes(eddemi.Date) <> oRETMes(RECParametros.SHE_DATA)) and
           (oRETAno(eddemi.Date) <> oRETAno(RECParametros.SHE_DATA)) then
        begin
          eddemi.Date := 0;
          eddemi.Clear;
        end;

        CEIDCD.Value    := imp_ncaNFE_CFAV.AsInteger;
        CEIDCD.Modified := True;
        CEIDCD.ValidateEdit;

        cbcnat.Text := imp_nitNFE_CFOP.AsString;
        PESQUISA_NATUREZA(cbcnat.Text,'C','NAT_CFOP');

        edctra.Text := IntToStr(XMLIDTra);
        PESQUISA_TRANSPORTADORA(edctra.Text,'C');
        
        if (XMLModFrete = '0') or (XMLModFrete = '3') then
        cbModFrete.Text := 'REMETENTE' else
        if (XMLModFrete = '1') or (XMLModFrete = '4') then
        cbModFrete.Text := 'DESTINATÁRIO' else
        if XMLModFrete = '2' then
        cbModFrete.Text := 'TERCEIROS' else
        if XMLModFrete = '2' then
        cbModFrete.Text := 'SEM FRETE';

        edqvol.Text     := XMLQVol;
        edesp.Text      := XMLEsp;
        edpsbr.Text     := oTextToValor(XMLPSBR);
        edpslq.Text     := oTextToValor(XMLPSLQ);
        edvprod.Text    := formatfloat('#,0.00',imp_ncaNFE_VPROD.AsFloat);
        edvfrete.Text   := formatfloat('#,0.00',imp_ncaNFE_VFRETE.AsFloat);
        edvbc.Text      := formatfloat('#,0.00',imp_ncaNFE_VBC.AsFloat);
        edvicms.Text    := formatfloat('#,0.00',imp_ncaNFE_VICMS.AsFloat);
        edvipi.Text     := formatfloat('#,0.00',imp_ncaNFE_VIPI.AsFloat);
        edvpis.Text     := formatfloat('#,0.00',imp_ncaNFE_VPIS.AsFloat);
        edvcofins.Text  := formatfloat('#,0.00',imp_ncaNFE_VCOFINS.AsFloat);
        edvoutro.Text   := formatfloat('#,0.00',imp_ncaNFE_VOUTRO.AsFloat);
        edvII.Text      := formatfloat('#,0.00',imp_ncaNFE_VII.AsFloat);
        edvnf.Text      := formatfloat('#,0.00',imp_ncaNFE_VNF.AsFloat);

        edINF.Lines.Clear;
        edINF.Lines.Add(MemoINFCPL.Lines.Text);

        nfe_001.First;
        while not nfe_001.Eof do
        begin
          nfe_001.Edit;
          nfe_001NFE_CFOP.Value := tab_natNAT_CNAT.AsString;

          _PSQNOSSOCOD('CDCF',nfe_001NFE_CPROD.AsString);

             nfe_001.Post;
          if nfe_001.RecNo = 1 then PESQUISA_NATUREZA(nfe_001NFE_CFOP.AsString,'C');
             nfe_001.Next;
        end;
      end;

      if copy(cbcnat.Text,1,1) = '3' then
      begin
        siEST.Tag        := 1;
        siEST.Hint       := 'Essa Nota Fiscal Efetuará Baixa no Estoque';
        siEST.ImageIndex := 11;
      end;

      frmven_nfd.Tag := 0;
      oRTransact(frmven_nfd.TSheild);
      CALCULA_NF;
    end;
  finally
    nfe_001.EnableControls;
    FreeAndNil(FrmImporta_Geral);

    PCMain.ActivePage := TSPro;
    DBGEdicao.SetFocus;
  end;
end;

procedure Tfrmven_nfd.DBGEdicaoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ((AColumn = DBGEdicaoNFE_CART) or (AColumn = DBGEdicaoNFE_QTRIB) or (AColumn = DBGEdicaoNFE_VUNTRIB)) and (ANode.Values[DBGEdicaoNFE_CART.Index] <> EmptyStr) then
    begin
      AColor      := clBtnFace;
      AFont.Color := clBlack;
    end;

    if (AColumn = DBGEdicaoNFE_VUNTRIB) and (ANode.Values[DBGEdicaoNFE_VUNTRIB.Index] > 0) and (ANode.Values[DBGEdicaoNFE_FLAG.Index] = '1') then
        AFont.Style := [fsBold];
  end;      
end;

procedure Tfrmven_nfd.BSalClick(Sender: TObject);
begin
  if oYesNo(handle,'Salvar Nota Fiscal ?') = mryes then
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
    SQL.Add('FROM   CAD_USU,CAD_REP,'+oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3));
    SQL.Add('WHERE  ROM_CDNF = '''+edcdns.Text+'''');
    SQL.Add('AND    ROM_CVEN = CAD_USU.USU_CUSU');
    SQL.Add('AND    ROM_CREP = CAD_REP.ID');
    Open;

    edcven.Text := inttostr(fields[0].AsInteger);
    eddven.Text := fields[1].AsString;
    edcrep.Text := inttostr(fields[2].AsInteger);
    eddrep.Text := fields[3].AsString;
  end;
  EDDECD.SetFocus;
end;

procedure Tfrmven_nfd.cbfinnfeChange(Sender: TObject);
var
  cnat: string;
begin
  if cbfinnfe.Text = '' then
  Abort;

  if Tag = 0 then
  begin
    if CEIDCD.Value = 0 then
    begin
      cbfinnfe.Text := '';
      oException(Nil,'Favorecido não informado !');
    end;

    cnat := '';
    if (cbfinnfe.Text <> 'COMPRA') and (cbfinnfe.Text <> 'SERVIÇO') then
    begin
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
      end;
    end;
  end;  
end;

procedure Tfrmven_nfd.PESQUISA_TRANSPORTADORA(pesq,chave: string);
begin
  pesq := IFThen((oEmpty(pesq)) or (pesq = '0'),RECParametros.CT_ID,pesq);
  with Consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,TRA_FANT,TRA_RAZA,TRA_CNPJ,TRA_INSC,TRA_CPF,TRA_TLOG,TRA_LOGR,TRA_CEP,TRA_NUME,TRA_COMP,TRA_BAI,TRA_CID,TRA_ESTA,');
    SQL.Add('          TRA_DDD ,TRA_TEL1,TRA_CONT,TRA_MAIL,');
    SQL.Add('          TRA_VTCARRO,TRA_VTPLACA,TRA_VTUF,TRA_VTRNTC,');
    SQL.Add('          TRIM(CAST(SUBSTRING(TRA_OBSE FROM 1 FOR 512) AS VARCHAR(512))) TRA_OBSE');
    SQL.Add('FROM   CAD_TRA');
    SQL.Add('WHERE '+IFThen(chave = 'C','ID','TRA_FANT')+' = '''+pesq+'''');
    Open;
    if not Fields[0].IsNull then
    begin
      edctra.Text := Fields[00].AsString;
      cbdtra.Text := Fields[01].AsString;
    end;
  end;  
end;

procedure Tfrmven_nfd.EDNPedValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not oEmpty(EDNPed.Text) then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,ROM_DROM FROM '+oREPZero('PED_COM_CAB','_',RECParametros.EP_ID,3));
    SQL.Add('WHERE  ROM_DERO = '''+EDNPed.Text+'''');
    Prepare;
    Open;
    EDNPed.Tag := Fields[0].AsInteger;

    if Eof then
       oException(EDNPed,'Pedido de Compra não Encontrado !');

    DENPed.Date := Fields[1].AsDateTime;   
  end;
end;

procedure TFrmven_nfd.COMPRAS;
begin
  if EDNPed.Tag > 0 then
  with Consulta do
  begin
    SQL.Clear;
    SQL.Add('UPDATE '+oREPZero('PED_COM_ITE','_',RECParametros.EP_ID,3));
    SQL.Add('SET   ROM_QTPD = '''+oStrTran(nfe_001NFE_QTRIB.AsString,',','.')+''',');
    SQL.Add('      ROM_CDNF = '''+edcdnf.Text                               +''',');
    SQL.Add('      ROM_DBAI = '''+FormatDateTime('mm/dd/yy',eddemi.Date)    +''',');
    SQL.Add('      ROM_NFCI = '''+nfe_001NFE_NFCI.AsString                  +''',');
    SQL.Add('      ROM_STAV = ''FINALIZADO''');
    SQL.Add('WHERE ROM_CCAB = '''+IntToStr(EDNPed.Tag)    +'''');
    SQL.Add('AND   ROM_CPRO = '''+nfe_001NFE_IPRO.AsString+'''');
    SQL.Add('AND   ROM_DBAI IS NULL');
    ExecSQL;

    SQL.Clear;
    SQL.Add('DELETE FROM CAD_PRO_PRC');
    SQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID        +'''');
    SQL.Add('AND    IDPK = '''+IntToStr(EDNPed.Tag)    +'''');
    SQL.Add('AND    IDCP = '''+nfe_001NFE_IPRO.AsString+'''');
    ExecSQL;
  end;
end;

procedure TFrmven_nfd.ESTOQUE;
var
  nRecNo: Integer;
begin
  Pecas      := 0;
  Quantidade := 0;

  if IENPedEst.Text  = 'SIM' then
  try
    oOTransact(FBird.TFBProdutos);
    nRecNo := uPesquisa_Produto(RECParametros.EP_ID,nfe_001NFE_IPRO.AsString,'ID');

    with Produtos do
    begin
      Close;
      ParamByName('IDEP').Value := RECParametros.EP_ID;
      ParamByName('ID'  ).Value := nfe_001NFE_IPRO.AsString;
      Prepare;
      Open;
    end;

    if nRecNo > 0 then
    begin
      Pecas      := Trunc(nfe_001NFE_QTRIB.AsFloat / IFThen(FBird.FBCAD_PROUQTDE.AsFloat > 0,FBird.FBCAD_PROUQTDE.AsFloat,1));
      Quantidade := IFThen(FBird.FBCAD_PROUQTDE.AsFloat > 0,FBird.FBCAD_PROUQTDE.AsFloat,1); { RICARDO }

      for nRecNo := 1 to Pecas do
      begin
        sbMAIN.Panels[1].Text := 'Aguarde.... Gerando Etiqueta '+IntToStr(nRecNo);
        Application.ProcessMessages;

        Edicao.Append;
        EdicaoIDCP.Value    := ProdutosID.AsInteger;
        EdicaoCP_IDEP.Value := ProdutosIDEP.AsInteger;

        EdicaoIDAK.Value := ProdutosIDAK.AsInteger;
        EdicaoIDEK.Value := ProdutosIDEK.AsInteger;

        EdicaoArtigo.Value  := ProdutosArtigo.AsString;
        EdicaoSKU.Value     := ProdutosSKU.AsString;
        EdicaoCEAN.Value    := ProdutosCEAN.AsString;

        EdicaoDECP.Value := ProdutosDECP.AsString;
        EdicaoDGCP.Value := ProdutosDGCP.AsString;

        EdicaoUCOM.Value  := nfe_001NFE_UCOM.AsString;
        EdicaoUCON.Value  := ProdutosD_UCON.AsString;

        EdicaoUCDBE.Value := ProdutosUCDBE.AsString;
        EdicaoUQTMD.Value := ProdutosUQTDE.AsFloat; { RICARDO }
        EdicaoUPSBR.Value := ProdutosUPSBR.AsFloat;
        EdicaoUPSLQ.Value := ProdutosUPSLQ.AsFloat;

        EdicaoCF_VPRC_PAD_ORI.Value := ProdutosCF_VPRC_PAD_ORI.AsString;
        EdicaoCF_VPRC_PAD.Value     := nfe_001NFE_VUNCOM.AsFloat;
        EdicaoCF_VPRC_COM.Value     := nfe_001NFE_VUNTRIB.AsFloat;

        EdicaoVPRC_PAD_ORI.Value := 'R$';
        EdicaoVPRC_PAD_INI.Value := ProdutosVPRC_PAD_INI.AsFloat;
        EdicaoVPRC_PAD_FIM.Value := ProdutosVPRC_PAD_FIM.AsFloat;
        EdicaoVPRC_PAD.Value     := ProdutosVPRC_PAD.AsFloat;
        EdicaoVPRC_COM.Value     := ProdutosVPRC_PAD.AsFloat;

        EdicaoEST_QTDE.Value := ProdutosEPE_QTDE.AsFloat;
        EdicaoEST_QTRL.Value := ProdutosEPE_QTRL.AsInteger;

        EdicaoQTDE.Value := Quantidade;
        EdicaoQTRL.Value := 1;

        { Coleção }
        EdicaoCOL_ID.Value := 0;
        EdicaoCOL_NO.Value := EmptyStr;

        EdicaoNFCI.Value := nfe_001NFE_NFCI.AsString;

        { Fiscal }
        EdicaoORIG.Value := nfe_001NFE_ORIG.AsInteger;
        EdicaoNCM.Value  := nfe_001NFE_NCM.AsString;
        EdicaoPIPI.Value := nfe_001NFE_PIPI.AsFloat;

        Edicao.Post;
      end;
    end;
  finally
    oCTransact(FBird.TFBProdutos);
  end;
end;

procedure TFrmven_nfd.PAGAMENTOS;
begin
end;

procedure Tfrmven_nfd.EdicaoAfterPost(DataSet: TDataSet);
begin
  TSheild.CommitRetaining;
end;

procedure Tfrmven_nfd.LAIDCDClick(Sender: TObject);
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

  CEIDCD.Hint := 'Código do '        + LAIDCD.Caption;
  EDDECD.Hint := 'Nome Fantasia do ' + LAIDCD.Caption;

  LAIDCD.Refresh;
  EDDECD.SetFocus;
end;

procedure Tfrmven_nfd.CEIDCDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var RECRomaneio: TRECPedidos;
begin
  RECRomaneio.AWinControl := TWinControl(Sender);
  RECRomaneio.AQConsulta  := Consulta;
  RECRomaneio.CDCD        := IntToStr(LAIDCD.Tag);

  try uPSQCAD(RECRomaneio);
  finally
    if RECRomaneio.Selected then
    begin
      CEIDCD.Value := RECRomaneio.IDCD;
      EDDECD.Text  := RECRomaneio.DECD;
      EDRZCD.Text  := RECRomaneio.RZCD;

      EDxNome.Text := RECRomaneio.RZCD;
      edCNPJ.Text  := RECRomaneio.CNPJ;
      edCPF.Text   := RECRomaneio.CPF;

      edDDD.Text   := RECRomaneio.DDD;
      EDTel1.Text  := RECRomaneio.TEL;

      PETxLgr.Text   := RECRomaneio.TLO_TX;
      EDxLgr.Text    := RECRomaneio.LOG_NO;
      EDNRO.Text     := RECRomaneio.NRO;
      EDxCpl.Text    := RECRomaneio.XCPL;
      edCEP.Text     := RECRomaneio.CEP;
      EDxBairro.Text := RECRomaneio.BAI_NO;
      EDxMun.Text    := RECRomaneio.LOC_NO;
      EDCMun.Text    := RECRomaneio.CMUN;
      PEUF.Text      := RECRomaneio.UF;

      if RECRomaneio.CNPJ <> '' then
         rgtipe.ItemIndex := 1
      else
         rgtipe.ItemIndex := 0;
    end;
  end;
end;

procedure Tfrmven_nfd.EdicaoNewRecord(DataSet: TDataSet);
begin
  { Cadastro }
  EdicaoID.Value   := 0;
  EdicaoIDEP.Value := RECParametros.EP_ID;
  EdicaoIDCA.Value := RECUsuarios.ID;

  { Evento }
  EdicaoIDEV.Value := FB_IDG;
  EdicaoCDEV.Value := 8;

  { Dispositivo }
  EdicaoIP.Value   := RECParametros.IP;
  EdicaoHOST.Value := RECParametros.HOST;
  EdicaoFLAG.Value := 0;

  {Itens }
  if EdicaoITEM.Tag > 0 then
     EdicaoITEM.Value := EdicaoITEM.Tag + 1 else
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT MAX(PK.ITEM) FROM TAB_EDI_PRO AS PK');
    SQL.Add('WHERE  PK.IDEV = ''' + FB_IDG + '''');
    SQL.Add('AND    PK.CDEV = 8');
    SQL.Add('AND    PK.FLAG = 0');
    ExecQuery;
    EdicaoITEM.Value := Current.Vars[0].AsInteger + 1;
  end;
  EdicaoITEM.Tag := EdicaoITEM.AsInteger;

  { Tipos de Operações }
  EDicaoEST_CDOP.Value := RECParametros.EST_IDOPERACAO;
  EdicaoEST_REOP.Value := RECParametros.EST_REOPERACAO;
  EdicaoEST_DEOP.Value := RECParametros.EST_DEOPERACAO;

  { Tipos de Estoque }
  EdicaoEST_CDTP.Value :=  11;
  EdicaoEST_RETP.Value := 'E';
  EdicaoEST_DETP.Value := 'ANTECIPADO';

  { Tipo de Defeito }
  EdicaoEST_CDDF.Value := 0;
  EdicaoEST_DEDF.Value := EmptyStr;

  { Local de Armazanagem }
  EdicaoMAPA.Value := EmptyStr;

  { Fornecedor }
  EdicaoCF_CDNF.Value := StrToInt(EDCDNF.Text);
  EdicaoCF_CDPD.Value := 0;
  EdicaoCF_DEPD.Value := EmptyStr;

  { Etiqueta }
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_PRO_CDET,1) FROM RDB$DATABASE');
    ExecQuery;
    EdicaoCDET.Value := Current.Vars[0].AsInt64;
  end;
end;

procedure Tfrmven_nfd.DBGEdicaoNFE_CARTValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (DBGEdicao.EditingText <> EmptyStr) and (DBGEdicao.EditingText <> NFE_001NFE_CART.AsString) then
  begin
    _PSQNOSSOCOD('SKU',Trim(DBGEdicao.EditingText));
    nfe_001NFE_FLAG.Value := '1';
  end;
end;

procedure Tfrmven_nfd.DBGEdicaoNFE_CPRODValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (DBGEdicao.EditingText <> EmptyStr) and (DBGEdicao.EditingText <> NFE_001NFE_CPROD.AsString) then
  begin
    _PSQNOSSOCOD('CDCF',Trim(DBGEdicao.EditingText));
    nfe_001NFE_FLAG.Value := '1';
  end;
end;

procedure Tfrmven_nfd._PSQNOSSOCOD(AField,AValue: String);
begin
  nfe_001NFE_IPRO.Value    := 0;
  nfe_001NFE_CART.Value    := EmptyStr;
  nfe_001NFE_UTRIB.Value   := EmptyStr;
  nfe_001NFE_PESO.Value    := 0;
  nfe_001NFE_METR.Value    := 0;
  nfe_001NFE_QTRIB.Value   := 0;
  nfe_001NFE_VUNTRIB.Value := 0;

  if AValue <> EmptyStr then
     with SQLConsulta do
     begin
       Close;
       SQL.Clear;
       SQL.Add('SELECT ID,SKU,CDCF,UCOM,UCON,UQTDE'); { RICARDO }
       SQL.Add('FROM   CAD_PRO');
       SQL.Add('WHERE ' + AField + ' = '''+AValue+'''');
       ExecQuery;

       if not Eof then
       begin
         nfe_001NFE_IPRO.Value    := Current.Vars[0].AsInteger;
         nfe_001NFE_CART.Value    := Current.Vars[1].AsString;
         nfe_001NFE_CPROD.Value   := Current.Vars[2].AsString;
         nfe_001NFE_UTRIB.Value   := Current.Vars[3].AsString;
         nfe_001NFE_CFABRICANTE.Value := Current.Vars[4].AsString;

         if (LeftStr(nfe_001NFE_UCOM.AsString,1) = 'M') or (LeftStr(nfe_001NFE_UCOM.AsString,1) = 'K') or (LeftStr(nfe_001NFE_UCOM.AsString,2) = 'UN') then
         nfe_001NFE_QTRIB.Value   :=  nfe_001NFE_QCOM.AsFloat else
         nfe_001NFE_QTRIB.Value   :=  nfe_001NFE_QCOM.AsFloat   * Current.Vars[5].AsFloat;
         nfe_001NFE_VUNTRIB.Value := (nfe_001NFE_VUNCOM.AsFloat / Current.Vars[5].AsFloat) + nfe_001NFE_VIPI.AsFloat;
       end;
     end;

end;

procedure Tfrmven_nfd.dtsnfe_001DataChange(Sender: TObject; Field: TField);
begin
  if NFE_001.State = dsBrowse then
  begin
    DBGEdicao.ApplyBestFit(DBGEdicaoNFE_XPROD);
    DBGEdicao.ApplyBestFit(DBGEdicaoNFE_CFABRICANTE);
  end;
end;

procedure Tfrmven_nfd._Estoque;
var
  RECEdicao: TRECEdicao;
begin
  oIRECEdicao(RECEdicao); { Inicializa TRecord }

  { Carrega Estoque }
  Edicao.Close;
  Edicao.Open;

  if not Edicao.Eof then
  try
    with RECEdicao do
    begin
      { Inicializar Parâmetros: FLAG + campos de pesquisa (IDEP,IDPK,IDFK) }
      FLAG := 0;
      ID   := 0;

      { Cadastro }
      IDEP := RECParametros.EP_ID;
      IDCA := RECUsuarios.ID;

      { Situação }
      CDST := 72;
      REST := 'E';
      DEST := 'ESTOQUE NÃO GERADO';

      { Lançamentos }
      CTNR := EmptyStr;
      LOTE := EmptyStr;
      CDI  := IFThen(CHKCDI.Checked,1,0);

      { Operação }
      CDOP := 45;
      REOP := RECParametros.EST_REOPERACAO;
      CDTP := 11;

      { Emissor }
      IDCD := CEIDCD.Value;
      DECD := EDDECD.Text;
      TPCD := LAIDCD.Tag;

      { Pedido }
      IDPK := RECUsuarios.Id;
      DTPK := ADTPD;
      CDPK := ACDPD;
      DEPK := ADEPD;
      TPPK := 1; { Compras }

      { Nota Fiscal }
      IDNF := RECUsuarios.Id;
      DTNF := eddemi.Date;
      CDNF := edcdnf.Text;
      TPNF := IFThen(LAIDCD.Tag = 1,6,  { Terceiros }
                                    1); { Nossa Normal }

      { Informações Adicionais }
      INFADCAD := edINF.Text;

      { Registros }
      IDEV := 0;

      ASPEdicao := ibSP; { Stored Procedure }
      oSP_CAD_PRO_EST_RPK(RECEdicao); { Execute Procedure }
    end;

    if ibSP.ParamByName('rID').AsInteger = 0 then
    Abort;

    while not Edicao.Eof do
    begin
      Application.ProcessMessages;
      SBMain.Panels[1].Text := 'Aguarde.... Gravando Etiqueta ' + EdicaoCDET.AsString;
      SBMain.Refresh;

      if EdicaoFLAG.AsInteger = 0 then
         with AREC_SHE_EDI do
         begin
           { Inicializar Parâmetros: FLAG + campos de pesquisa (IDEP,IDPK,IDFK) }
           AFLAG := 0;
           ACDET := EdicaoCDET.AsInteger; { Etiqueta }

           { Romaneio }
           AITEM := EdicaoITEM.AsInteger;

           { Produtos }
           AIDCP    := EdicaoIDCP.AsInteger;
           AIDAK    := EdicaoIDAK.AsInteger;

           ACP_IDEP := EdicaoCP_IDEP.AsInteger;
           ACEAN    := EdicaoCEAN.AsString;

           { Lançamentos }
           AQTDE := EdicaoQTDE.AsFloat;
           AQTRL := EdicaoQTRL.AsInteger;

           { Custo }
           ACF_VPRC_PAD_ORI := EdicaoCF_VPRC_PAD_ORI.AsString;
           ACF_VPRC_PAD     := EdicaoCF_VPRC_PAD.AsFloat;
           ACF_VPRC_COM     := EdicaoCF_VPRC_COM.AsFloat;

           { Classificações }
           ACOL_ID := EdicaoCOL_ID.AsInteger; { Coleção - Compras }
           ANFCI   := EdicaoNFCI.AsString; { Ficha de Conteúdo de Importação }

           { Defeitos }
           AIDDF := IFThen(EdicaoEST_CDDF.AsInteger > 0,RECUsuarios.ID,0);
           ACDDF := EdicaoEST_CDDF.AsInteger;

           { Informações Adicionais }
           AINFADCAD := EdicaoINFADTEC.AsString;

           oSP_CAD_PRO_EST_RFK(AREC_SHE_EDI); { Execute Procedure }
         end;
                  
      Edicao.Next;
    end;
  except
    on E: Exception do
    begin
      oRTransact(IBTra,ltRollback);
      oException(Nil  ,'Falha ao tentar salvar estoque !' +#13+
                       'Favor entrar em contato com o administrador do sistema.' +#13+#13+
                       E.Message + '.');
    end;
  end;
end;

end.
