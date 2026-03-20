unit bPrincipal;

interface

uses
  oPrincipal, HkHints,
  SysUtils, Classes, DB, IBCustomDataSet, IBStoredProc, IBDatabase, Shellapi,
  Windows, Messages, Variants,  Graphics, Controls, Forms, Dialogs,
  IBEvents, IBQuery, DBClient, Provider, StrUtils, Math, dxStatusBar, DateUtils,
  IBSQL, IB, IdBaseComponent, IdComponent, IdIPWatch, Registry, StdCtrls,
  IBTable, ADODB, Printers,
  ActiveX, ComObj, ShlObj, ExtCtrls;

type
  TFBird = class(TDataModule)
    DBErp: TIBDatabase;
    DBEdicao: TIBDatabase;
    TFBSEdicao: TIBTransaction;
    DBB2B: TIBDatabase;
    TFBEdicao: TIBTransaction;
    SQLFBEdicao: TIBSQL;
    SPFBEdicao: TIBStoredProc;
    TB2BEdicao: TIBTransaction;
    QB2BEdicao: TIBQuery;
    QPrinter: TIBQuery;
    DSPPrinter: TDataSetProvider;
    CDSPrinter: TClientDataSet;
    CDSPrinterID: TIntegerField;
    CDSPrinterPRI_IP: TStringField;
    CDSPrinterPRI_CPRI: TSmallintField;
    CDSPrinterPRI_DPRI: TStringField;
    CDSPrinterPRI_SECA: TStringField;
    CDSPrinterPRI_CUSU: TIntegerField;
    DSTPrinter: TDataSource;
    QFBUsuarios: TIBQuery;
    DSPFBUsuarios: TDataSetProvider;
    CDSFBUsuarios: TClientDataSet;
    DTSFBUsuarios: TDataSource;
    DBEvent: TIBEvents;
    SPFBEvent: TIBStoredProc;
    TFBEvent: TIBTransaction;
    TFBConsulta: TIBTransaction;
    SQLFBConsulta: TIBSQL;
    LocalHost: TIdIPWatch;
    SQLB2BEdicao: TIBSQL;
    FBCAD_PRO: TIBQuery;
    TB2BConsulta: TIBTransaction;
    SQLB2BConsulta: TIBSQL;
    B2BClientes: TIBQuery;
    B2BClientesID: TIntegerField;
    B2BClientesCLI_FANT: TIBStringField;
    B2BClientesCLI_RAZA: TIBStringField;
    B2BClientesCLI_CNPJ: TIBStringField;
    B2BClientesCLI_INSC: TIBStringField;
    B2BClientesCLI_CPF: TIBStringField;
    B2BClientesCLI_DDD: TIBStringField;
    B2BClientesCLI_FONE: TIBStringField;
    B2BClientesCLI_MAIL: TIBStringField;
    B2BClientesCLI_CREP: TIntegerField;
    B2BClientesCLI_TLOG: TIBStringField;
    B2BClientesCLI_LOGR: TIBStringField;
    B2BClientesCLI_CEP: TIBStringField;
    B2BClientesCLI_NUME: TIBStringField;
    B2BClientesCLI_COMP: TIBStringField;
    B2BClientesCLI_BAI: TIBStringField;
    B2BClientesCLI_CID: TIBStringField;
    B2BClientesCLI_ESTA: TIBStringField;
    B2BClientesCLI_CTRA: TIntegerField;
    B2BClientesCLI_DTRA: TIBStringField;
    B2BClientesCLI_MODFRETE: TIBStringField;
    B2BClientesCLI_CPAG: TIntegerField;
    B2BClientesCLI_DPAG: TIBStringField;
    B2BClientesCLI_RAMO: TIBStringField;
    B2BClientesCLI_DCAD: TDateField;
    B2BClientesCLI_DATA: TDateTimeField;
    B2BPedidos: TIBQuery;
    B2BFKPedidos: TIBQuery;
    B2BPedidosID: TIntegerField;
    B2BPedidosROM_DERO: TIBStringField;
    B2BPedidosROM_DCAD: TDateTimeField;
    B2BPedidosROM_DBAI: TDateTimeField;
    B2BPedidosROM_DTNF: TDateTimeField;
    B2BPedidosROM_CDNF: TIntegerField;
    B2BPedidosROM_CCLI: TIntegerField;
    B2BPedidosROM_DCLI: TIBStringField;
    B2BPedidosROM_RCLI: TIBStringField;
    B2BPedidosROM_CVEN: TIntegerField;
    B2BPedidosROM_DVEN: TIBStringField;
    B2BPedidosROM_CREP: TIntegerField;
    B2BPedidosROM_DREP: TIBStringField;
    B2BPedidosROM_CPAG: TIntegerField;
    B2BPedidosROM_DPAG: TIBStringField;
    B2BPedidosROM_CTRA: TIntegerField;
    B2BPedidosROM_DTRA: TIBStringField;
    B2BPedidosROM_MODFRETE: TIBStringField;
    B2BPedidosROM_QTDE: TIBBCDField;
    B2BPedidosROM_QTRL: TIntegerField;
    B2BPedidosROM_QCOM: TIBBCDField;
    B2BPedidosROM_RCOM: TIntegerField;
    B2BPedidosROM_TSDE: TIBBCDField;
    B2BPedidosROM_DESC: TIBBCDField;
    B2BPedidosROM_TCDE: TIBBCDField;
    B2BPedidosROM_VNF: TIBBCDField;
    B2BPedidosROM_VCOM: TIBBCDField;
    B2BPedidosROM_STFI: TSmallintField;
    B2BPedidosROM_IMPO: TIBStringField;
    B2BPedidosROM_OBSE: TMemoField;
    B2BPedidosROM_OBSV: TMemoField;
    B2BFKPedidosID: TIntegerField;
    B2BFKPedidosROM_ITEM: TIntegerField;
    B2BFKPedidosROM_CPRO: TIBStringField;
    B2BFKPedidosROM_DCOR: TIBStringField;
    B2BFKPedidosROM_DPRO: TIBStringField;
    B2BFKPedidosROM_DUNI: TIBStringField;
    B2BFKPedidosROM_QTDE: TIBBCDField;
    B2BFKPedidosROM_QTRL: TIntegerField;
    B2BFKPedidosROM_UNIT: TIBBCDField;
    B2BFKPedidosROM_TOTA: TIBBCDField;
    DTSFBCAD_PRO: TDataSource;
    SQLFBSEdicao: TIBSQL;
    FBCAD_PROC_COMP1: TStringField;
    FBCAD_PROC_COMP2: TStringField;
    DTSFBBAI_FINANCEIRO: TDataSource;
    FBBAI_FINANCEIRO: TIBQuery;
    DTSFBBAI_CAIXA: TDataSource;
    FBBAI_CAIXA: TIBQuery;
    FBBAI_CAIXACDCX: TIntegerField;
    FBBAI_CAIXACREDITO: TSmallintField;
    FBBAI_CAIXADOCUMENTO: TIBStringField;
    FBBAI_CAIXATIPO: TIBStringField;
    FBBAI_CAIXAVT: TIBBCDField;
    FBBAI_CAIXACDCXINI: TIntegerField;
    FBBAI_CAIXADTCX: TDateField;
    SQLFBFKEdicao: TIBSQL;
    QFBResumo_Mensal: TIBQuery;
    TFBResumo: TIBTransaction;
    SQLFBPKConsulta: TIBSQL;
    TFBEndereco: TIBTransaction;
    SQLFBEndereco: TIBSQL;
    QFBIMG_PAD: TIBQuery;
    B2BPedidosROM_VCRD: TIBBCDField;
    B2BPedidosROM_FLAG: TSmallintField;
    TFBBaixas: TIBTransaction;
    TFBProdutos: TIBTransaction;
    DTSFBIMG_PAD: TDataSource;
    CDSFBIMG_PAD: TClientDataSet;
    DSPFBIMG_PAD: TDataSetProvider;
    TFBCaixa: TIBTransaction;
    SQLFBCaixa: TIBSQL;
    CDSFBIMG_PADID: TSmallintField;
    CDSFBIMG_PADJPG_SPLASH: TBlobField;
    CDSFBIMG_PADJPG_REL: TBlobField;
    CDSFBIMG_PADJPG_ETQ: TBlobField;
    CDSFBIMG_PADJPG_BLANK: TBlobField;
    CDSFBIMG_PADBMP_ETQ: TBlobField;
    CDSFBIMG_PADBMP_ETQ_MONO: TBlobField;
    CDSFBIMG_PADBMP_BLANK: TBlobField;
    CDSFBIMG_PADBMP_BLANK_MONO: TBlobField;
    SQLFBBaixas: TIBSQL;
    QFBFKConsulta: TIBQuery;
    QFBFKConsulta2: TIBQuery;
    FBBAI_FINANCEIROCDPV: TLargeintField;
    FBBAI_FINANCEIRODEPV: TIBStringField;
    FBBAI_FINANCEIROCDRO: TLargeintField;
    FBBAI_FINANCEIROPV_CDNF: TLargeintField;
    FBBAI_FINANCEIROCDCX: TLargeintField;
    FBBAI_FINANCEIRODTCX: TDateField;
    FBBAI_FINANCEIROVPED: TIBBCDField;
    FBBAI_FINANCEIROTPCO: TSmallintField;
    FBBAI_FINANCEIROIDCL: TIntegerField;
    FBBAI_FINANCEIROIDCV: TSmallintField;
    FBBAI_FINANCEIROIDCR: TSmallintField;
    FBBAI_FINANCEIROSTPD: TIBStringField;
    FBBAI_FINANCEIROSTCO: TIBStringField;
    FBBAI_FINANCEIROCDPG: TSmallintField;
    FBBAI_FINANCEIROCDNF: TIntegerField;
    FBBAI_FINANCEIROTITULO: TIBStringField;
    FBBAI_FINANCEIRODTNF: TDateField;
    FBBAI_FINANCEIRODTVE: TDateField;
    FBBAI_FINANCEIROVDUP: TIBBCDField;
    FBBAI_FINANCEIROCONSIGNADO: TSmallintField;
    FBBAI_FINANCEIROFATURAR: TSmallintField;
    B2BTransportadoras: TIBQuery;
    B2BTransportadorasID: TIntegerField;
    B2BTransportadorasTRA_FANT: TIBStringField;
    B2BTransportadorasTRA_RAZA: TIBStringField;
    B2BTransportadorasTRA_CNPJ: TIBStringField;
    B2BTransportadorasTRA_INSC: TIBStringField;
    B2BTransportadorasTRA_CPF: TIBStringField;
    B2BTransportadorasTRA_DDD: TIBStringField;
    B2BTransportadorasTRA_FONE: TIBStringField;
    B2BTransportadorasTRA_CONT: TIBStringField;
    B2BTransportadorasTRA_MAIL: TIBStringField;
    B2BTransportadorasTRA_TLOG: TIBStringField;
    B2BTransportadorasTRA_LOGR: TIBStringField;
    B2BTransportadorasTRA_CEP: TIBStringField;
    B2BTransportadorasTRA_NUME: TIBStringField;
    B2BTransportadorasTRA_COMP: TIBStringField;
    B2BTransportadorasTRA_BAI: TIBStringField;
    B2BTransportadorasTRA_CID: TIBStringField;
    B2BTransportadorasTRA_ESTA: TIBStringField;
    B2BTransportadorasTRA_DATA: TDateTimeField;
    B2BTransportadorasFLAG: TSmallintField;
    SQLFBFKConsulta: TIBSQL;
    FBBAI_FINANCEIROCTNR: TIBStringField;
    FBBAI_FINANCEIROINFADPED: TIBStringField;
    FBCAD_PROC_EST_QTDE: TFloatField;
    FBCAD_PROC_EST_QTRL: TIntegerField;
    FBCAD_PROC_VPRC_PAD: TFloatField;
    FBCAD_PROC_VPRC_PRZ: TFloatField;
    FBCAD_PROC_VPRC_PRO: TFloatField;
    FBCAD_PROID: TIntegerField;
    FBCAD_PROIDAK: TLargeintField;
    FBCAD_PROIDEK: TLargeintField;
    FBCAD_PROIDEP: TSmallintField;
    FBCAD_PRODEEP: TIBStringField;
    FBCAD_PROIDCA: TSmallintField;
    FBCAD_PRODTCA: TDateTimeField;
    FBCAD_PROIDED: TSmallintField;
    FBCAD_PRODTED: TDateTimeField;
    FBCAD_PROIDST: TSmallintField;
    FBCAD_PRODTST: TDateTimeField;
    FBCAD_PROCDST: TSmallintField;
    FBCAD_PROREST: TIBStringField;
    FBCAD_PROARTIGO: TIBStringField;
    FBCAD_PRONCM: TIBStringField;
    FBCAD_PROCEST: TIBStringField;
    FBCAD_PROPIPI: TIBBCDField;
    FBCAD_PROEXTIPI: TIBStringField;
    FBCAD_PROSKU: TIBStringField;
    FBCAD_PROCEAN: TIBStringField;
    FBCAD_PRODECP: TIBStringField;
    FBCAD_PRODTCP: TIBStringField;
    FBCAD_PROCDGRD: TIBStringField;
    FBCAD_PROREGRD: TIBStringField;
    FBCAD_PRODEGRD: TIBStringField;
    FBCAD_PROIDCOR: TSmallintField;
    FBCAD_PRORECOR: TIBStringField;
    FBCAD_PRODECOR: TIBStringField;
    FBCAD_PROSISTEMA: TIBStringField;
    FBCAD_PROESCALA: TIBStringField;
    FBCAD_PRODGCP: TIBStringField;
    FBCAD_PROIDCF: TSmallintField;
    FBCAD_PROCDCF: TIBStringField;
    FBCAD_PROCEANCF: TIBStringField;
    FBCAD_PRODECF: TIBStringField;
    FBCAD_PROUCOM: TIBStringField;
    FBCAD_PRODCOM: TIBStringField;
    FBCAD_PROUTRIB: TIBStringField;
    FBCAD_PROUQVOL: TSmallintField;
    FBCAD_PROUESP: TIBStringField;
    FBCAD_PROUCON: TIBStringField;
    FBCAD_PROUCDBE: TIBStringField;
    FBCAD_PROUQTRL: TSmallintField;
    FBCAD_PROUPSBR: TIBBCDField;
    FBCAD_PROUPSLQ: TIBBCDField;
    FBCAD_PROUEST_MIN: TSmallintField;
    FBCAD_PROUPED_MIN: TSmallintField;
    FBCAD_PROUPED_MUL: TSmallintField;
    FBCAD_PROPESO: TIBBCDField;
    FBCAD_PROPSCN: TIBBCDField;
    FBCAD_PROMETRO: TIBBCDField;
    FBCAD_PROREND: TIBBCDField;
    FBCAD_PROGRAM: TIBBCDField;
    FBCAD_PROD_GRAM: TIBStringField;
    FBCAD_PROLARU: TIBBCDField;
    FBCAD_PROLART: TIBBCDField;
    FBCAD_PROELAL: TIBBCDField;
    FBCAD_PROELAC: TIBBCDField;
    FBCAD_PROENCL: TIBBCDField;
    FBCAD_PROENCC: TIBBCDField;
    FBCAD_PROD_ENCO: TIBStringField;
    FBCAD_PROD_ABNT: TIBStringField;
    FBCAD_PROVPRC_PAD_INI: TFloatField;
    FBCAD_PROVPRC_PAD_FIM: TFloatField;
    FBCAD_PROVPRC_PAD: TFloatField;
    FBCAD_PROVPRC_PAD_PRZ: TFloatField;
    FBCAD_PROVPRC_PAD_PRO: TFloatField;
    FBCAD_PROPPRC_PAD_DSC: TIBBCDField;
    FBCAD_PROPPRC_PAD_AJU: TIBBCDField;
    FBCAD_PROVPRC_ATV: TFloatField;
    FBCAD_PROVPRC_ATV_PRZ: TFloatField;
    FBCAD_PROVPRC_ATV_PRO: TFloatField;
    FBCAD_PROPPRC_ATV_DSC: TIBBCDField;
    FBCAD_PROPPRC_ATV_AJU: TIBBCDField;
    FBCAD_PROVPRC_VAR: TFloatField;
    FBCAD_PROVPRC_REP: TFloatField;
    FBCAD_PROPMKU_LJV: TIBBCDField;
    FBCAD_PROVPRC_LJV: TFloatField;
    FBCAD_PROVPRC_COM_PAD: TFloatField;
    FBCAD_PROVPRC_COM_NAC: TFloatField;
    FBCAD_PROVPRC_COM_IMP: TFloatField;
    FBCAD_PROIDCOL: TSmallintField;
    FBCAD_PRODECOL: TIBStringField;
    FBCAD_PROIDSEG: TSmallintField;
    FBCAD_PRODESEG: TIBStringField;
    FBCAD_PROIDGRP: TSmallintField;
    FBCAD_PRODEGRP: TIBStringField;
    FBCAD_PROIDSGP: TSmallintField;
    FBCAD_PRODESGP: TIBStringField;
    FBCAD_PROIDCAT: TSmallintField;
    FBCAD_PRODECAT: TIBStringField;
    FBCAD_PROIDSCT: TSmallintField;
    FBCAD_PRODESCT: TIBStringField;
    FBCAD_PROMKP_IDML: TSmallintField;
    FBCAD_PROMKP_DEML: TIBStringField;
    FBCAD_PROMKP_IDSP: TSmallintField;
    FBCAD_PROMKP_DESP: TIBStringField;
    FBCAD_PROMKP_IDAM: TSmallintField;
    FBCAD_PROMKP_DEAM: TIBStringField;
    FBCAD_PROFIN_CAD_ID: TSmallintField;
    FBCAD_PROFIN_CAD_REF: TIBStringField;
    FBCAD_PROFIN_CAD_DES: TIBStringField;
    FBCAD_PROFIN_EST_ID: TSmallintField;
    FBCAD_PROFIN_EST_REF: TIBStringField;
    FBCAD_PROFIN_EST_DES: TIBStringField;
    FBCAD_PROORIG: TSmallintField;
    FBCAD_PROD_ORIG: TIBStringField;
    FBCAD_PROCPAIS: TSmallintField;
    FBCAD_PROXPAIS: TIBStringField;
    FBCAD_PROFPAIS: TIBStringField;
    FBCAD_PROINFADCAD: TMemoField;
    FBCAD_PROINFADCAT: TMemoField;
    FBCAD_PROEPE_QTDE: TIBBCDField;
    FBCAD_PROEPE_QTRL: TIntegerField;
    FBCAD_PROEEP_QTDE: TIBBCDField;
    FBCAD_PROEEP_QTRL: TIntegerField;
    FBCAD_PROEPP_QTDE: TIBBCDField;
    FBCAD_PROEPP_QTRL: TIntegerField;
    FBCAD_PROEPR_QTDE: TIBBCDField;
    FBCAD_PROEPR_QTRL: TIntegerField;
    FBCAD_PROEPS_QTDE: TIBBCDField;
    FBCAD_PROEPS_QTRL: TIntegerField;
    FBCAD_PROEAA_QTDE: TIBBCDField;
    FBCAD_PROEAA_QTRL: TIntegerField;
    FBCAD_PROEA_QTDE: TIBBCDField;
    FBCAD_PROEA_QTRL: TIntegerField;
    FBCAD_PROEB_QTDE: TIBBCDField;
    FBCAD_PROEB_QTRL: TIntegerField;
    FBCAD_PROEC_QTDE: TIBBCDField;
    FBCAD_PROEC_QTRL: TIntegerField;
    FBCAD_PROEPI_QTDE: TIBBCDField;
    FBCAD_PROEPI_QTRL: TIntegerField;
    FBCAD_PROESU_QTDE: TIBBCDField;
    FBCAD_PROESU_QTRL: TIntegerField;
    FBCAD_PROECO_QTDE: TIBBCDField;
    FBCAD_PROECO_QTRL: TIntegerField;
    FBCAD_PROECO_DECO: TIBStringField;
    FBCAD_PROILA_BMP1: TBlobField;
    FBCAD_PROILA_INS1: TIBStringField;
    FBCAD_PROILA_BMP2: TBlobField;
    FBCAD_PROILA_INS2: TIBStringField;
    FBCAD_PROILA_BMP3: TBlobField;
    FBCAD_PROILA_INS3: TIBStringField;
    FBCAD_PROILA_BMP4: TBlobField;
    FBCAD_PROILA_INS4: TIBStringField;
    FBCAD_PROILA_BMP5: TBlobField;
    FBCAD_PROILA_INS5: TIBStringField;
    FBCAD_PROILA_BMP6: TBlobField;
    FBCAD_PROILA_INS6: TIBStringField;
    FBCAD_PROILA_BMP7: TBlobField;
    FBCAD_PROILA_INS7: TIBStringField;
    FBCAD_PROILA_BMP8: TBlobField;
    FBCAD_PROILA_INS8: TIBStringField;
    FBCAD_PROIMG_ID: TLargeintField;
    FBCAD_PROIMG_PAD: TBlobField;
    FBCAD_PROIMG_NO: TIBStringField;
    FBCAD_PROPDF_NO: TIBStringField;
    FBCAD_PROD_UESP: TIBStringField;
    FBCAD_PROD_UCON: TIBStringField;
    FBCAD_PROCMP_PAD: TIBStringField;
    FBCAD_PROCF_VPRC_PAD_ORI: TIBStringField;
    FBCAD_PROCF_VPRC_COM: TFloatField;
    FBCAD_PROEST_QTDE: TIBBCDField;
    FBCAD_PROEST_QTRL: TIntegerField;
    FBCAD_PROUQTDE: TIBBCDField;
    THintHidePause: TTimer;
    FBCAD_PRODEST: TIBStringField;
    FBCAD_PROIMG_ART: TLargeintField;
    FBCAD_PROIMG_SKU: TLargeintField;
    FBCAD_PROEPP_CTNR_QTDE: TIBBCDField;
    FBCAD_PROEPP_CTNR_QTRL: TIntegerField;
    FBCAD_PROB2B_ENV_SYNC: TSmallintField;
    FBCAD_PROB2B_ENV_SYNC_DATA: TDateTimeField;
    FBCAD_PROB2B_REC_SYNC: TSmallintField;
    FBCAD_PROB2B_REC_SYNC_DATA: TDateTimeField;
    QFBTAB_USER_ADM: TIBQuery;
    DTSFBTAB_USER_ADM: TDataSource;
    CDSTAB_USER_ADM: TClientDataSet;
    DSPTAB_USER_ADM: TDataSetProvider;
    CDSTAB_USER_ADMID: TLargeintField;
    CDSTAB_USER_ADMLOG_ID: TSmallintField;
    CDSTAB_USER_ADMDESCRICAO: TStringField;
    CDSTAB_USER_ADMREFERENCIA: TStringField;
    CDSTAB_USER_ADMREGRA: TStringField;
    CDSTAB_USER_ADMINCLUI: TSmallintField;
    CDSTAB_USER_ADMALTERA: TSmallintField;
    CDSTAB_USER_ADMEXCLUI: TSmallintField;
    CDSTAB_USER_ADMVISUALIZA: TSmallintField;
    CDSTAB_USER_ADMIMPRIME: TSmallintField;
    CDSTAB_USER_ADMDESCONTOS: TSmallintField;
    CDSTAB_USER_ADMDSC_PMX: TSmallintField;
    CDSTAB_USER_ADMACRESCIMOS: TSmallintField;
    CDSTAB_USER_ADMACR_PMX: TSmallintField;
    CDSTAB_USER_ADMLIB_EXP: TSmallintField;
    CDSTAB_USER_ADMLIB_FAT: TSmallintField;
    CDSTAB_USER_ADMLIB_FAT_PMX: TBCDField;
    CDSTAB_USER_ADMLIB_FAT_VMX: TBCDField;
    CDSTAB_USER_ADMCONTROLE: TSmallintField;
    CDSTAB_USER_ADMADM: TSmallintField;
    QFBUsuariosLOG_ID: TSmallintField;
    QFBUsuariosDESCRICAO: TIBStringField;
    QFBUsuariosREFERENCIA: TIBStringField;
    QFBUsuariosREGRA: TIBStringField;
    QFBUsuariosINCLUI: TIBStringField;
    QFBUsuariosALTERA: TIBStringField;
    QFBUsuariosEXCLUI: TIBStringField;
    QFBUsuariosVISUALIZA: TIBStringField;
    QFBUsuariosIMPRIME: TIBStringField;
    QFBUsuariosCONTROLE: TIBStringField;
    QFBUsuariosADM: TIntegerField;
    CDSFBUsuariosLOG_ID: TSmallintField;
    CDSFBUsuariosDESCRICAO: TStringField;
    CDSFBUsuariosREFERENCIA: TStringField;
    CDSFBUsuariosREGRA: TStringField;
    CDSFBUsuariosINCLUI: TStringField;
    CDSFBUsuariosALTERA: TStringField;
    CDSFBUsuariosEXCLUI: TStringField;
    CDSFBUsuariosVISUALIZA: TStringField;
    CDSFBUsuariosIMPRIME: TStringField;
    CDSFBUsuariosCONTROLE: TStringField;
    CDSFBUsuariosADM: TIntegerField;
    TPSQ_PRO: TIBTransaction;
    PSQ_PRO: TIBQuery;
    DTSPSQ_PRO: TDataSource;
    SPB2BEdicao: TIBStoredProc;
    QFBResumo_Diario: TIBQuery;
    QFBResumo_DiarioDTPK: TDateField;
    QFBResumo_DiarioCP_IDEP: TSmallintField;
    QFBResumo_DiarioCP_ABEP: TIBStringField;
    QFBResumo_DiarioCLI_ITCD: TIntegerField;
    QFBResumo_DiarioPED_VLPK: TIBBCDField;
    QFBResumo_DiarioPED_ILPK: TIntegerField;
    QFBResumo_DiarioPED_VLSP: TIBBCDField;
    QFBResumo_DiarioPED_ILSP: TIntegerField;
    QFBResumo_DiarioPED_PLSP: TIBBCDField;
    QFBResumo_DiarioPED_VTLQ: TIBBCDField;
    QFBResumo_DiarioPED_ITLQ: TIntegerField;
    QFBResumo_DiarioCLI_INCD: TIntegerField;
    QFBResumo_MensalCP_IDEP: TSmallintField;
    QFBResumo_MensalCP_ABEP: TIBStringField;
    QFBResumo_MensalDMPK: TIBStringField;
    QFBResumo_MensalAMPK: TLargeintField;
    QFBResumo_MensalPED_VLPK: TIBBCDField;
    QFBResumo_MensalPED_ILPK: TLargeintField;
    QFBResumo_MensalCLI_ITCD: TLargeintField;
    QFBResumo_MensalCLI_INCD: TLargeintField;
    QFBResumo_MensalPED_VLSP: TIBBCDField;
    QFBResumo_MensalPED_ILSP: TLargeintField;
    QFBResumo_MensalPED_PLSP: TIBBCDField;
    QFBResumo_MensalPED_VTLQ: TIBBCDField;
    QFBResumo_MensalPED_ITLQ: TLargeintField;
    TTHRConsulta: TIBTransaction;
    SQLTHRConsulta: TIBSQL;
    TTHREdicao: TIBTransaction;
    SPTHREdicao: TIBStoredProc;
    SQLTHREdicao: TIBSQL;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure DBEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure FBCAD_PROCalcFields(DataSet: TDataSet);
    procedure DBErpAfterConnect(Sender: TObject);
    procedure DBErpBeforeDisconnect(Sender: TObject);
    procedure THintHidePauseTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

{ Parâmetros }
procedure bExecParametros(AIDEP: Variant); STDCall;
procedure bExecUsuarios(AIDUSER: Variant); STDCall;
procedure bExecCaixa; STDCall;
procedure bExecPrinter; STDCall;

{ Execuções Diversas }
procedure bExecEvent(AEvent: String;AWarning: TWarning = lwNone); STDCall;

{ Pesquisas }
function bPSQUSER(AField,ADescricao,AReferencia,ARegra: String; AWarning: Boolean = False; ALOG_ID: Word = 0): Boolean; STDCall;

procedure bPesquisaEnderecos(var RECEndereco: TRECEnderecos); STDCall;
function  bPesquisaNotasFiscais(ANFe: Variant;ACLFO: Word=0): Variant; STDCall;

procedure bResumo_Pedido; STDCall;
procedure bBAI_ESTOQUE(AaIDCP: array of String); STDCall;
procedure bBAI_CAIXA(ACDBX: Variant); STDCall;
procedure bBAI_FINANCEIRO(ANFe,APedido: Integer); STDCall;

procedure bSP_CAD_PRO_PCI_RPK(ASenderSP: TIBStoredProc;
                              AID,AIDEP,AIDCA:Integer;ACDTP: Variant;ADescricao: String;AINFADCAD:WideString); STDCall;
procedure bSP_CAD_PRO_PCI_RFK(ASenderSP: TIBStoredProc;
                              ACDFK: Variant;AITEM: Integer;ADTEN: TDate;ACTNR,ACPTP,ADETP: String;ADetalhe: String;
                              ACPKG,ACLKG,ACMKG: Double;AQTRL: Integer;APesoB,ACMDTOT,AVUCOTA,AVUTAXA,ACMRTOT,AQTUCOM,ACMUCOM: Double); STDCall;

function bRET_QUANTIDADE(AQTPeca: Integer;AQTUnidade: Double): Double; STDCall;
function bRET_PECA(AQuantidade,AQTUnidade: Double): Integer; STDCall;
function bRET_PESO(APesoUnit,AQuantidade,AQTUnidade: Double): Double; STDCall;
function bNFE_Emissao: Variant; STDCall;

var
  FBird: TFBird;

implementation

{$R *.dfm}

procedure bExecParametros(AIDEP: Variant); STDCall;
begin
  if AIDEP > 0 then
  with FBird do
  try
    RECParametros.FANTASIA_GERAL := EmptyStr;

    oOTransact(TFBConsulta);
    with SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM VW_TAB_PAR_SIS');
      ExecQuery;

      while not Eof do
      begin
        if AIDEP = Current.ByName('ID').AsInteger then
        begin
          RECParametros.Id := IntToStr(Current.ByName('ID').AsInteger);

          RECParametros.DTSERVER      := Current.ByName('DTSERVER').AsDateTime;
          RECParametros.DTMES_INI     := Current.ByName('DTMES_INI').AsDateTime;
          RECParametros.DTMES_FIM     := Current.ByName('DTMES_FIM').AsDateTime;
          RECParametros.DTMES_INI_FMT := FormatDateTime('mm/dd/yy',RECParametros.DTMES_INI);
          RECParametros.DTMES_FIM_FMT := FormatDateTime('mm/dd/yy',RECParametros.DTMES_FIM);

          RECParametros.FANTASIA := Current.ByName('FANTASIA').AsString;
          RECParametros.RAZAO    := Current.ByName('RAZAO'   ).AsString;
          RECParametros.ABEP     := Current.ByName('ABEP').AsString;
          RECParametros.SGEP     := Current.ByName('SGEP').AsString;

          RECParametros.GRUPO    := Current.ByName('GRUPO'   ).AsString;
          RECParametros.GRP_EST  := Current.ByName('GRP_EST' ).AsString;
          RECParametros.GRP_PRO  := Current.ByName('GRP_PRO' ).AsString;

          RECParametros.GCEP := Current.ByName('GCEP').AsString;
          RECParametros.GVEP := Current.ByName('GVEP').AsString;
          RECParametros.GREP := Current.ByName('GREP').AsString;
          RECParametros.GFEP := Current.ByName('GFEP').AsString;

          RECParametros.REGIME   := Current.ByName('REGIME'  ).AsString;
          RECParametros.DTFU     := Current.ByName('DTFU'    ).AsDateTime;
          RECParametros.CNPJ   := Current.ByName('CNPJ').AsString;
          RECParametros.C_CNPJ := oCNPJ_Mask(RECParametros.CNPJ);
          RECParametros.IE     := Current.ByName('IE'  ).AsString;
          RECParametros.ISUF   := Current.ByName('ISUF').AsString;
          RECParametros.IM     := Current.ByName('IM'  ).AsString;

          RECParametros.NUDDD   := Current.ByName('NUDDD').AsString;
          RECParametros.NUTEL   := Current.ByName('NUTEL').AsString;
          RECParametros.C_NUTEL := oDDD_Mask(RECParametros.NUDDD) + ' ' + oTEL_Mask(RECParametros.NUTEL);
          RECParametros.EMAIL   := Current.ByName('EMAIL').AsString;
          RECParametros.SITE    := Current.ByName('SITE' ).AsString;

          RECParametros.IDLOG := Current.ByName('IDLOG').AsString;
          RECParametros.TPLOG := Current.ByName('TPLOG').AsString;
          RECParametros.NOLOG := Current.ByName('NOLOG').AsString;
          RECParametros.NULOG := Current.ByName('NULOG').AsString;
          RECParametros.COLOG := Current.ByName('COLOG').AsString;
          RECParametros.NUCEP := Current.ByName('NUCEP').AsString;
          RECParametros.NOBAI := Current.ByName('NOBAI').AsString;
          RECParametros.NOCID := Current.ByName('NOCID').AsString;
          RECParametros.CMUN  := Current.ByName('CMUN' ).AsString;
          RECParametros.CDUF  := Current.ByName('CDUF' ).AsInteger;
          RECParametros.SGUF  := Current.ByName('SGUF' ).AsString;

          RECParametros.EMP_CNAE      := Current.ByName('EMP_CNAE'     ).AsString;
          RECParametros.EMP_CNAE_DESC := Current.ByName('EMP_CNAE_DESC').AsString;
          RECParametros.EMP_IDIND_FIM := Current.ByName('EMP_IDIND_FIM').AsString;
          RECParametros.EMP_REIND_FIM := Current.ByName('EMP_REIND_FIM').AsString;
          RECParametros.EMP_DEIND_FIM := Current.ByName('EMP_DEIND_FIM').AsString;

          RECParametros.IDCD_PAD := Current.ByName('IDCL_PAD'  ).AsString;
          RECParametros.DECD_PAD := Current.ByName('DECL_PAD'  ).AsString;
          RECParametros.RZCD_PAD := Current.ByName('RZCL_PAD'  ).AsString;
          RECParametros.CNPJ_PAD := Current.ByName('CNPJCL_PAD').AsString;

          RECParametros.IDCL_PAD     := Current.ByName('IDCL_PAD'    ).AsString;
          RECParametros.DECL_PAD     := Current.ByName('DECL_PAD'    ).AsString;
          RECParametros.RZCL_PAD     := Current.ByName('RZCL_PAD'    ).AsString;
          RECParametros.CNPJCL_PAD   := Current.ByName('CNPJCL_PAD'  ).AsString;

          RECParametros.IDCV_PAD     := Current.ByName('IDCV_PAD'    ).AsString;
          RECParametros.DECV_PAD     := Current.ByName('DECV_PAD'    ).AsString;
          RECParametros.IDCR_PAD     := Current.ByName('IDCR_PAD'    ).AsString;
          RECParametros.DECR_PAD     := Current.ByName('DECR_PAD'    ).AsString;
          RECParametros.IDCF_PAD     := Current.ByName('IDCF_PAD'    ).AsString;
          RECParametros.DECF_PAD     := Current.ByName('DECF_PAD'    ).AsString;
          RECParametros.RZCF_PAD     := Current.ByName('RZCF_PAD'    ).AsString;
          RECParametros.CNPJCF_PAD   := Current.ByName('CNPJCF_PAD'  ).AsString;
          RECParametros.IDCT_PAD     := Current.ByName('IDCT_PAD'    ).AsString;
          RECParametros.DECT_PAD     := Current.ByName('DECT_PAD'    ).AsString;
          RECParametros.IDCT_RET_PAD := Current.ByName('IDCT_RET_PAD').AsString;
          RECParametros.DECT_RET_PAD := Current.ByName('DECT_RET_PAD').AsString;
          RECParametros.IDCT_SEM_PAD := Current.ByName('IDCT_SEM_PAD').AsString;
          RECParametros.DECT_SEM_PAD := Current.ByName('DECT_SEM_PAD').AsString;

          { SHEILD }
          RECParametros.SHEILD_CNPJ        := Current.ByName('SHEILD_CNPJ'       ).AsString;
          RECParametros.SHEILD_RESPONSAVEL := Current.ByName('SHEILD_RESPONSAVEL').AsString;
          RECParametros.SHEILD_EMAIL       := Current.ByName('SHEILD_EMAIL'      ).AsString;
          RECParametros.SHEILD_NUTEL       := Current.ByName('SHEILD_NUTEL'      ).AsString;
          RECParametros.SHEILD_TIMEZONE    := Current.ByName('SHEILD_TIMEZONE'   ).AsString;

          RECParametros.SHEILD_LICENCA_VENCIMENTO := Current.ByName('SHEILD_LICENCA_VENCIMENTO').AsDateTime;
          RECParametros.SHEILD_LICENCA_VENCIDO    := Current.ByName('SHEILD_LICENCA_VENCIDO'   ).AsInteger;
          RECParametros.SHEILD_LICENCA_AVISAR     := Current.ByName('SHEILD_LICENCA_AVISAR'    ).AsInteger;
          RECParametros.SHEILD_LICENCA_SUSPENDER  := Current.ByName('SHEILD_LICENCA_SUSPENDER' ).AsInteger;

          RECParametros.SHEILD_PATH_PRINCIPAL     := Current.ByName('SHEILD_PATH_PRINCIPAL'    ).AsString;
          RECParametros.SHEILD_PATH_PRINCIPAL_BKP := Current.ByName('SHEILD_PATH_PRINCIPAL_BKP').AsString;
          RECParametros.SHEILD_PATH_IMAGENS       := Current.ByName('SHEILD_PATH_IMAGENS'      ).AsString;
          RECParametros.SHEILD_PATH_DOCUMENTOS    := Current.ByName('SHEILD_PATH_DOCUMENTOS'   ).AsString;

          { PRODUTOS }
          RECParametros.PRO_COD_NUM     := (Current.ByName('PRO_COD_NUM').AsInteger = 1);
          RECParametros.PRO_COD_GRD     := (Current.ByName('PRO_COD_GRD').AsInteger = 1);
          RECParametros.PRO_COD_COR     := (Current.ByName('PRO_COD_COR').AsInteger = 1);
          RECParametros.PRO_COD_ORD     :=  Current.ByName('PRO_COD_ORD').AsString;
          RECParametros.PRO_GRD_PAD     :=  Current.ByName('PRO_GRD_PAD').AsInteger;
          RECParametros.PRO_COR_PAD     :=  Current.ByName('PRO_COR_PAD').AsInteger;
          RECParametros.PRO_COR_SIS     :=  Current.ByName('PRO_COR_SIS').AsString;
          RECParametros.PRO_COR_PED_PRC :=  Current.ByName('PRO_COR_PED_PRC').AsInteger;
          RECParametros.PRO_COR_PED_TIN :=  Current.ByName('PRO_COR_PED_TIN').AsInteger;
          RECParametros.PRO_AJU_PRC_VAR :=  Current.ByName('PRO_AJU_PRC_VAR').AsFloat;
          RECParametros.PRO_AJU_PRC_REP :=  Current.ByName('PRO_AJU_PRC_REP').AsFloat;
          RECParametros.PRO_UCOM        :=  Current.ByName('PRO_UCOM').AsString;
          RECParametros.PRO_QTRL        := (Current.ByName('PRO_QTRL').AsInteger = 1);
          RECParametros.PRO_PSCN        :=  Current.ByName('PRO_PSCN').AsFloat;
          RECParametros.PRO_IDFIN_CAD   :=  Current.ByName('PRO_IDFIN_CAD').AsString;
          RECParametros.PRO_REFIN_CAD   :=  Current.ByName('PRO_REFIN_CAD').AsString;
          RECParametros.PRO_DEFIN_CAD   :=  Current.ByName('PRO_DEFIN_CAD').AsString;
          RECParametros.PRO_IDFIN_EST   :=  Current.ByName('PRO_IDFIN_EST').AsString;
          RECParametros.PRO_REFIN_EST   :=  Current.ByName('PRO_REFIN_EST').AsString;
          RECParametros.PRO_DEFIN_EST   :=  Current.ByName('PRO_DEFIN_EST').AsString;
          RECParametros.PRO_ABNT_SIL    :=  Current.ByName('PRO_ABNT_SIL' ).AsString;
          RECParametros.PRO_ABNT_DIM    :=  Current.ByName('PRO_ABNT_DIM' ).AsString;

          { ESTOQUE }
          RECParametros.EST_CONTROLE     := (Current.ByName('EST_CONTROLE'    ).AsInteger = 1);
          RECParametros.EST_UNIFICADO    := (Current.ByName('EST_UNIFICADO'   ).AsInteger = 1);
          RECParametros.EST_CDI          :=  Current.ByName('EST_CDI'         ).AsString;
          RECParametros.EST_DEVOLUCAO    := (Current.ByName('EST_DEVOLUCAO'   ).AsInteger = 1);
          RECParametros.EST_QTRL         := (Current.ByName('EST_QTRL'        ).AsInteger = 1);
          RECParametros.EST_IDTIPO       :=  Current.ByName('EST_IDTIPO'      ).AsString;
          RECParametros.EST_IDOPERACAO   :=  Current.ByName('EST_IDOPERACAO'  ).AsString;
          RECParametros.EST_IDFINALIDADE :=  Current.ByName('EST_IDFINALIDADE').AsString;
          RECParametros.EST_IDFILTRO     :=  Current.ByName('EST_IDFILTRO'    ).AsString;
          RECParametros.EST_CDBE         :=  Current.ByName('EST_CDBE'        ).AsString;
          RECParametros.EST_RETIPO       :=  Current.ByName('EST_RETIPO'      ).AsString;
          RECParametros.EST_REOPERACAO   :=  Current.ByName('EST_REOPERACAO'  ).AsString;
          RECParametros.EST_REFINALIDADE :=  Current.ByName('EST_REFINALIDADE').AsString;
          RECParametros.EST_REFILTRO     :=  Current.ByName('EST_REFILTRO'    ).AsString;
          RECParametros.EST_DETIPO       :=  Current.ByName('EST_DETIPO'      ).AsString;
          RECParametros.EST_DEOPERACAO   :=  Current.ByName('EST_DEOPERACAO'  ).AsString;
          RECParametros.EST_DEFINALIDADE :=  Current.ByName('EST_DEFINALIDADE').AsString;
          RECParametros.EST_DEFILTRO     :=  Current.ByName('EST_DEFILTRO'    ).AsString;

          { PEDIDOS }
          RECParametros.PED_CUPOM      := (Current.ByName('PED_CUPOM'     ).AsInteger = 1);
          RECParametros.PED_CANHOTO    := (Current.ByName('PED_CANHOTO'   ).AsInteger = 1);
          RECParametros.PED_BX_A_VISTA := (Current.ByName('PED_BX_A_VISTA').AsInteger = 1);
          RECParametros.PED_DESCONTO   := (Current.ByName('PED_DESCONTO'  ).AsInteger = 1);
          RECParametros.PED_EXPEDICAO  := (Current.ByName('PED_EXPEDICAO' ).AsInteger = 1);
          RECParametros.PED_DELIVERY   := (Current.ByName('PED_DELIVERY'  ).AsInteger = 1);
          RECParametros.PED_IPI        := (Current.ByName('PED_IPI'       ).AsInteger = 1);
          RECParametros.PED_NUVIA      :=  Current.ByName('PED_NUVIA'     ).AsInteger;

          RECParametros.PED_DESCONTO_LIMITE  := Current.ByName('PED_DESCONTO_LIMITE' ).AsInteger;
          RECParametros.PED_EXPEDICAO_LIMITE := Current.ByName('PED_EXPEDICAO_LIMITE').AsInteger;

          RECParametros.PED_CDPD := Current.ByName('PED_CDPD').AsString;
          RECParametros.PED_STPD := Current.ByName('PED_STPD').AsString;
          RECParametros.PED_CDCO := Current.ByName('PED_CDCO').AsString;
          RECParametros.PED_STCO := Current.ByName('PED_STCO').AsString;
          RECParametros.PED_CDPG := Current.ByName('PED_CDPG').AsString;
          RECParametros.PED_DEPG := Current.ByName('PED_DEPG').AsString;
          RECParametros.PED_NUPG := Current.ByName('PED_NUPG').AsInteger;
          RECParametros.PED_CDST := Current.ByName('PED_CDFI').AsString;
          RECParametros.PED_REST := Current.ByName('PED_REST').AsString;
          RECParametros.PED_STFI := Current.ByName('PED_STFI').AsString;

          RECParametros.PED_VPRC_PAD := Current.ByName('PED_VPRC_PAD').AsString;

          RECParametros.PED_PCOM_VEN := Current.ByName('PED_PCOM_VEN').AsFloat;
          RECParametros.PED_PCOM_REP := Current.ByName('PED_PCOM_REP').AsFloat;

          RECParametros.PED_PRECO := 'ATACADO - NORMAL';

          { FINANCEIRO }
          RECParametros.FIN_API             := (Current.ByName('FIN_API'            ).AsInteger = 1);
          RECParametros.FIN_API_TOKEN       :=  Current.ByName('FIN_API_TOKEN'      ).AsString;
          RECParametros.FIN_VER_PROC        :=  Current.ByName('FIN_VER_PROC'       ).AsString;
          RECParametros.FIN_VER_PROC_EDICAO :=  Current.ByName('FIN_VER_PROC_EDICAO').AsDateTime;

          RECParametros.FIN_CONTROLE          := (Current.ByName('FIN_CONTROLE'         ).AsInteger = 1);
          RECParametros.FIN_PED_BAIXA         := (Current.ByName('FIN_PED_BAIXA'        ).AsInteger = 1);
          RECParametros.FIN_PED_BAIXA_CANCELA := (Current.ByName('FIN_PED_BAIXA_CANCELA').AsInteger = 1);
          RECParametros.FIN_PAG_AUTO          := (Current.ByName('FIN_PAG_AUTO'         ).AsInteger = 1);

          RECParametros.FIN_LIMITE_CREDITO      := (Current.ByName('FIN_LIMITE_CREDITO'     ).AsInteger = 1);
          RECParametros.FIN_LIMITE_CREDITO_VMAX :=  Current.ByName('FIN_LIMITE_CREDITO_VMAX').AsFloat;
          RECParametros.FIN_LIMITE_CREDITO_PMAX :=  Current.ByName('FIN_LIMITE_CREDITO_PMAX').AsInteger;

          RECParametros.FIN_LIMITE_BANCARIO := Current.ByName('FIN_LIMITE_BANCARIO').AsInteger;
          RECParametros.FIN_LIMITE_CARTEIRA := Current.ByName('FIN_LIMITE_CARTEIRA').AsInteger;

          { FINANCEIRO PATH PRINCIPAL }
          RECParametros.FIN_PATH_PRINCIPAL := Current.ByName('FIN_PATH_PRINCIPAL').AsString;
          RECParametros.FIN_PATH_BOLETO    := Current.ByName('FIN_PATH_BOLETO'   ).AsString;
          RECParametros.FIN_PATH_JSON      := Current.ByName('FIN_PATH_JSON'     ).AsString;

          if not oEmpty(RECParametros.FIN_PATH_PRINCIPAL) then
          begin
            RECParametros.FIN_PATH_BOLETO := RECParametros.FIN_PATH_PRINCIPAL + '\' + RECParametros.FIN_PATH_BOLETO;
            RECParametros.FIN_PATH_JSON   := RECParametros.FIN_PATH_PRINCIPAL + '\' + RECParametros.FIN_PATH_JSON;
          end;  

          { FINANCEIRO PATH BACKUP }
          RECParametros.FIN_PATH_PRINCIPAL_BKP := Current.ByName('FIN_PATH_PRINCIPAL_BKP').AsString;
          RECParametros.FIN_PATH_BOLETO_BKP    := Current.ByName('FIN_PATH_BOLETO_BKP'   ).AsString;
          RECParametros.FIN_PATH_JSON_BKP      := Current.ByName('FIN_PATH_JSON_BKP'     ).AsString;

          if not oEmpty(RECParametros.FIN_PATH_PRINCIPAL_BKP) then
          begin
            RECParametros.FIN_PATH_BOLETO_BKP := RECParametros.FIN_PATH_PRINCIPAL_BKP + '\' + RECParametros.FIN_PATH_BOLETO_BKP;
            RECParametros.FIN_PATH_JSON_BKP   := RECParametros.FIN_PATH_PRINCIPAL_BKP + '\' + RECParametros.FIN_PATH_JSON_BKP  ;
          end;

          { NFE }
          RECParametros.NFE_API             := (Current.ByName('NFE_API'            ).AsInteger = 1);
          RECParametros.NFE_API_TOKEN       :=  Current.ByName('NFE_API_TOKEN'      ).AsString;
          RECParametros.NFE_VER_PROC        :=  Current.ByName('NFE_VER_PROC'       ).AsString;
          RECParametros.NFE_VER_PROC_EDICAO :=  Current.ByName('NFE_VER_PROC_EDICAO').AsDateTime;

          RECParametros.NFE_CRT    := Current.ByName('NFE_CRT'   ).AsString;
          RECParametros.NFE_MODELO := Current.ByName('NFE_MODELO').AsString;
          RECParametros.NFE_SERIE  := Current.ByName('NFE_SERIE' ).AsString;

          RECParametros.NFE_CFOP_IDFIN := Current.ByName('NFE_CFOP_IDFIN').AsString;
          RECParametros.NFE_CFOP_REFIN := Current.ByName('NFE_CFOP_REFIN').AsString;
          RECParametros.NFE_CFOP_DEFIN := Current.ByName('NFE_CFOP_DEFIN').AsString;
          RECParametros.NFE_CFOPDUF    := Current.ByName('NFE_CFOPDUF'   ).AsString;
          RECParametros.NFE_CFOPFUF    := Current.ByName('NFE_CFOPFUF'   ).AsString;

          RECParametros.NFE_MODFRETE      := Current.ByName('NFE_MODFRETE'     ).AsString;
          RECParametros.NFE_MODFRETE_REF  := Current.ByName('NFE_MODFRETE_REF' ).AsString;
          RECParametros.NFE_MODFRETE_DESC := Current.ByName('NFE_MODFRETE_DESC').AsString;

          RECParametros.NFE_ICMS              :=  Current.ByName('NFE_ICMS'             ).AsInteger;
          RECParametros.NFE_CREDITO_ICMS      :=  Current.ByName('NFE_CREDITO_ICMS'     ).AsFloat;
          RECParametros.NFE_REDUCAO_PISCOFINS := (Current.ByName('NFE_REDUCAO_PISCOFINS').AsInteger = 1);

          RECParametros.NFE_CABECALHO          := Current.ByName('NFE_CABECALHO'         ).AsString;
          RECParametros.NFE_CANHOTO            := Current.ByName('NFE_CANHOTO'           ).AsString;
          RECParametros.NFE_FONT_SIZE_ITEM     := Current.ByName('NFE_FONT_SIZE_ITEM'    ).AsString;
          RECParametros.NFE_FONT_SIZE_INFADCAD := Current.ByName('NFE_FONT_SIZE_INFADCAD').AsString;
          RECParametros.NFE_TIPO_DESCONTO      := Current.ByName('NFE_TIPO_DESCONTO'     ).AsString;
          RECParametros.NFE_FORMAT_QTDE        := Current.ByName('NFE_FORMAT_QTDE'       ).AsString;
          RECParametros.NFE_FORMAT_VUNIT       := Current.ByName('NFE_FORMAT_VUNIT'      ).AsString;
          RECParametros.NFE_TOTAL_PISCOFINS    := Current.ByName('NFE_TOTAL_PISCOFINS'   ).AsString;
          RECParametros.NFE_TOTAL_CFOP         := Current.ByName('NFE_TOTAL_CFOP'        ).AsString;

          { NFE PATH PRINCIPAL }
          RECParametros.NFE_PATH_PRINCIPAL := Current.ByName('NFE_PATH_PRINCIPAL').AsString;
          RECParametros.NFE_PATH_XML       := Current.ByName('NFE_PATH_XML'      ).AsString;
          RECParametros.NFE_PATH_DANFE     := Current.ByName('NFE_PATH_DANFE'    ).AsString;
          RECParametros.NFE_PATH_CCE       := Current.ByName('NFE_PATH_CCE'      ).AsString;

          if not oEmpty(RECParametros.NFE_PATH_PRINCIPAL) then
          begin
            RECParametros.NFE_PATH_XML   := RECParametros.NFE_PATH_PRINCIPAL + '\' + RECParametros.NFE_PATH_XML;
            RECParametros.NFE_PATH_DANFE := RECParametros.NFE_PATH_PRINCIPAL + '\' + RECParametros.NFE_PATH_DANFE;
            RECParametros.NFE_PATH_CCE   := RECParametros.NFE_PATH_PRINCIPAL + '\' + RECParametros.NFE_PATH_CCE;
          end;

          { NFE PATH BACKUP }
          RECParametros.NFE_PATH_PRINCIPAL_BKP := Current.ByName('NFE_PATH_PRINCIPAL_BKP').AsString;
          RECParametros.NFE_PATH_XML_BKP       := Current.ByName('NFE_PATH_XML_BKP'      ).AsString;
          RECParametros.NFE_PATH_DANFE_BKP     := Current.ByName('NFE_PATH_DANFE_BKP'    ).AsString;
          RECParametros.NFE_PATH_CCE_BKP       := Current.ByName('NFE_PATH_CCE_BKP'      ).AsString;

          if not oEmpty(RECParametros.NFE_PATH_PRINCIPAL_BKP) then
          begin
            RECParametros.NFE_PATH_XML_BKP   := RECParametros.NFE_PATH_PRINCIPAL_BKP + '\' + RECParametros.NFE_PATH_XML_BKP;
            RECParametros.NFE_PATH_DANFE_BKP := RECParametros.NFE_PATH_PRINCIPAL_BKP + '\' + RECParametros.NFE_PATH_DANFE_BKP;
            RECParametros.NFE_PATH_CCE_BKP   := RECParametros.NFE_PATH_PRINCIPAL_BKP + '\' + RECParametros.NFE_PATH_CCE_BKP;
          end;

          RECParametros.NFE_PATH_SCHEMAS         := RECParametros.NFE_PATH_PRINCIPAL + '\' + Current.ByName('NFE_PATH_SCHEMAS'        ).AsString;
          RECParametros.NFE_DATA_PACKET          := RECParametros.NFE_PATH_PRINCIPAL + '\' + Current.ByName('NFE_DATA_PACKET'         ).AsString;
          RECParametros.NFE_DATA_PACKET_CCE      := RECParametros.NFE_PATH_PRINCIPAL + '\' + Current.ByName('NFE_DATA_PACKET_CCE'     ).AsString;
          RECParametros.NFE_DATA_PACKET_FORM_SEG := RECParametros.NFE_PATH_PRINCIPAL + '\' + Current.ByName('NFE_DATA_PACKET_FORM_SEG').AsString;
          RECParametros.NFE_DATA_PACKET_FS       := RECParametros.NFE_PATH_PRINCIPAL + '\' + Current.ByName('NFE_DATA_PACKET_FS'      ).AsString;

          RECParametros.NFE_CAD_PRO_DI     := (Current.ByName('NFE_CAD_PRO_DI'    ).AsInteger = 1);
          RECParametros.NFE_LOGO           :=  Current.ByName('NFE_LOGO'          ).AsString;

          { Envio automático de emaisl }
          RECParametros.NFE_ENV_EMAIL_AUTO := IntToStr(Current.ByName('NFE_ENV_EMAIL_AUTO').AsInteger);

          { CFE }
          RECParametros.CFE_API             := (Current.ByName('CFE_API'            ).AsInteger = 1);
          RECParametros.CFE_API_TOKEN       :=  Current.ByName('CFE_API_TOKEN'      ).AsString;
          RECParametros.CFE_CNPJ            :=  Current.ByName('CFE_CNPJ'           ).AsString;
          RECParametros.CFE_VER_PROC        :=  Current.ByName('CFE_VER_PROC'       ).AsString;
          RECParametros.CFE_VER_PROC_EDICAO :=  Current.ByName('CFE_VER_PROC_EDICAO').AsDateTime;

          { PATH PRINCIPAL }
          RECParametros.CFE_PATH_PRINCIPAL := Current.ByName('CFE_PATH_PRINCIPAL').AsString;
          RECParametros.CFE_PATH_XML       := Current.ByName('CFE_PATH_XML'      ).AsString;
          RECParametros.CFE_PATH_CUPOM     := Current.ByName('CFE_PATH_CUPOM'    ).AsString;

          if not oEmpty(RECParametros.CFE_PATH_PRINCIPAL) then
          begin
            RECParametros.CFE_PATH_XML   := RECParametros.CFE_PATH_PRINCIPAL + '\' + RECParametros.CFE_PATH_XML;
            RECParametros.CFE_PATH_CUPOM := RECParametros.CFE_PATH_PRINCIPAL + '\' + RECParametros.CFE_PATH_CUPOM;
          end;
          
          { PATH BACKUP }
          RECParametros.CFE_PATH_PRINCIPAL_BKP := Current.ByName('CFE_PATH_PRINCIPAL_BKP').AsString;
          RECParametros.CFE_PATH_XML_BKP       := Current.ByName('CFE_PATH_XML_BKP'      ).AsString;
          RECParametros.CFE_PATH_CUPOM_BKP     := Current.ByName('CFE_PATH_CUPOM_BKP'    ).AsString;

          if not oEmpty(RECParametros.CFE_PATH_PRINCIPAL_BKP) then
          begin
            RECParametros.CFE_PATH_XML_BKP   := RECParametros.CFE_PATH_PRINCIPAL_BKP + '\' + RECParametros.CFE_PATH_XML_BKP;
            RECParametros.CFE_PATH_CUPOM_BKP := RECParametros.CFE_PATH_PRINCIPAL_BKP + '\' + RECParametros.CFE_PATH_CUPOM_BKP;
          end;

          RECParametros.CFE_LOGO := Current.ByName('CFE_LOGO').AsString;

          { CONTÁBIL }
          RECParametros.CONTABIL_NUDDD := Current.ByName('CONTABIL_NUDDD').AsString;
          RECParametros.CONTABIL_NUTEL := Current.ByName('CONTABIL_NUTEL').AsString;
          RECParametros.CONTABIL_EMAIL := Current.ByName('CONTABIL_EMAIL').AsString;

          { API }
          RECParametros.API_B2B := Current.ByName('API_B2B').AsString;
          RECParametros.API_B2C := Current.ByName('API_B2C').AsString;
          RECParametros.API_MKP := Current.ByName('API_MKP').AsString;

          { STATUS }
          RECParametros.STA_IDCAD :=  Current.ByName('STA_IDCAD').AsString;
          RECParametros.STA_RECAD :=  Current.ByName('STA_RECAD').AsString;
          RECParametros.STA_DECAD :=  Current.ByName('STA_DECAD').AsString;

          { CDI }
          RECParametros.EMP_CDI := (RECParametros.Id = RECParametros.EST_CDI);
        end else

        RECParametros.FANTASIA_GERAL := TRIM(RECParametros.FANTASIA_GERAL + Current.ByName('FANTASIA').AsString);
        Next;
      end;  
    end;

    CDSFBIMG_PAD.Close;
    QFBIMG_PAD.Params[0].Value := RECParametros.ID;
    CDSFBIMG_PAD.Open;

    RECParametros.IMG_JPG_SPLASH     := CDSFBIMG_PADJPG_SPLASH;
    RECParametros.IMG_JPG_REL        := CDSFBIMG_PADJPG_REL;
    RECParametros.IMG_JPG_ETQ        := CDSFBIMG_PADJPG_ETQ;
    RECParametros.IMG_JPG_BLANK      := CDSFBIMG_PADJPG_BLANK;
    RECParametros.IMG_BMP_ETQ        := CDSFBIMG_PADBMP_ETQ;
    RECParametros.IMG_BMP_ETQ_MONO   := CDSFBIMG_PADBMP_ETQ_MONO;
    RECParametros.IMG_BMP_BLANK      := CDSFBIMG_PADBMP_BLANK;
    RECParametros.IMG_BMP_BLANK_MONO := CDSFBIMG_PADBMP_BLANK_MONO;
  finally
    oCTransact(TFBConsulta);
  end;

  oRegister_Export;
end;

procedure bExecUsuarios(AIDUSER: Variant); STDCall;
begin
  if RECParametros.ID > 0 then
  with FBird do
  try
    oOTransact(TFBConsulta);
    with SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM VW_PSQ_TAB_USER');
      SQL.Add('WHERE    ID = ''' + AIDUSER + '''');
      ExecQuery;

      RECUsuarios.Id       := IntToStr(Current.ByName('Id').AsInteger);
      RECUsuarios.DTAcesso := Current.ByName('IDEP_UDT').AsDateTime;

      RECUsuarios.Login := Current.ByName('Login').AsString;
      RECUsuarios.Nome  := oPrimeiraLetraMaiuscula(Current.ByName('Nome').AsString);

      RECUsuarios.Departamento := Current.ByName('DEP_NO').AsString;
      RECUsuarios.Cargo        := Current.ByName('CGO_NO').AsString;

      RECUsuarios.Grupo     :=  Current.ByName('Grupo'    ).AsString;
      RECUsuarios.Comprador := (Current.ByName('Comprador').AsInteger = 1);
      RECUsuarios.Caixa     := (Current.ByName('Caixa'    ).AsInteger = 1);

      RECUsuarios.PED_DESCONTO        := (Current.ByName('PED_DESCONTO'       ).AsInteger = 1);
      RECUsuarios.PED_TOTALIZADOR     := (Current.ByName('PED_TOTALIZADOR'    ).AsInteger = 1);
      RECUsuarios.PED_RELATORIOS      := (Current.ByName('PED_RELATORIO'      ).AsInteger = 1);
      RECUsuarios.PED_DESCONTO_LIMITE :=  Current.ByName('PED_DESCONTO_LIMITE').AsFloat;
      RECUsuarios.PED_GRID_FOCUSED    :=  Current.ByName('PED_GRID_FOCUSED'   ).AsInteger;

      RECUsuarios.FIN_LIMITE_CREDITO      := (Current.ByName('FIN_LIMITE_CREDITO'     ).AsInteger = 1);
      RECUsuarios.FIN_LIMITE_CREDITO_VMAX :=  Current.ByName('FIN_LIMITE_CREDITO_VMAX').AsFloat;

      RECUsuarios.API_BOLETO   := (Current.ByName('FIN_API_BOLETO'  ).AsInteger = 1);
      RECUsuarios.API_BANCO    :=  Current.ByName('FIN_API_BANCO'   ).AsString;
      RECUsuarios.API_AMBIENTE :=  Current.ByName('FIN_API_AMBIENTE').AsString;

      RECUsuarios.API_B2B := (Current.ByName('EMP_API_B2B').AsInteger = 1);
      RECUsuarios.API_B2C := (Current.ByName('EMP_API_B2C').AsInteger = 1);
      RECUsuarios.API_B2C := (Current.ByName('EMP_API_MKP').AsInteger = 1);

      { Email Padrão }
      RECUsuarios.EMAIL       := Current.ByName('EMAIL'     ).AsString;
      RECUsuarios.EMAIL_NOME  := Current.ByName('EMAIL_NOME').AsString;
      RECUsuarios.EMAIL_SMTP  := Current.ByName('EMAIL_SMTP').AsString;

      RECUsuarios.EMAIL_PORTA := Current.ByName('EMAIL_PORTA').AsString;
      RECUsuarios.EMAIL_SSL   := Current.ByName('EMAIL_SSL'  ).AsString;
      RECUsuarios.EMAIL_TOKEN := Current.ByName('EMAIL_TOKEN').AsString;

      { Desabilita envio automático quando email do usuário não está 100% }
      if (RECUsuarios.EMAIL       = EmptyStr) or (RECUsuarios.EMAIL_NOME = EmptyStr) or (RECUsuarios.EMAIL_PORTA = EmptyStr) or
         (RECUsuarios.EMAIL_TOKEN = EmptyStr) or (RECUsuarios.EMAIL_SMTP = EmptyStr) or (RECUsuarios.EMAIL_SSL   = EmptyStr) then
          RECParametros.NFE_ENV_EMAIL_AUTO := '0';

      RECUsuarios.NUDDD := Current.ByName('NUDDD').AsString;
      RECUsuarios.NUTEL := Current.ByName('NUTEL').AsString;

      RECUsuarios.NUDDDCEL := Current.ByName('NUDDDCEL').AsString;
      RECUsuarios.NUCEL    := Current.ByName('NUCEL'   ).AsString;

      RECUsuarios.CurrentPrinter := EmptyStr;
      RECUsuarios.Relatorio      := EmptyStr;

      RECUsuarios.AIS_Event := (Current.ByName('IS_EVENT').AsInteger > 0);
    end;

    CDSFBUsuarios.Close;
    QFBUsuarios.Params[0].Value := RECUsuarios.Id;
    CDSFBUsuarios.Open;
  finally
    oCTransact(TFBConsulta);
  end;

  oRegister_Export_Usuario;
end;

function bPSQUSER(AField,ADescricao,AReferencia,ARegra: String;AWarning: Boolean = False; ALOG_ID: Word = 0): Boolean; STDCall;
begin
  Result := (RECUsuarios.ID = 0);

  if not Result then
     with FBird  do
          if ALOG_ID = 0 then
          begin
            CDSFBUsuarios.First;
            if CDSFBUsuarios.Locate('DESCRICAO;REFERENCIA;REGRA',VarArrayOf([ADescricao,AReferencia,ARegra]),[]) then
            Result := (CDSFBUsuarios.FieldByName(AField).AsInteger = 1);
          end else

          try
            oOTransact(TFBConsulta);
            with SQLFBConsulta do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT PK.* FROM CAD_USU_ADM AS PK');
              SQL.Add('WHERE  PK.DESCRICAO  = ''' + ADescricao        + '''');
              SQL.Add('AND    PK.REFERENCIA = ''' + AReferencia       + '''');
              SQL.Add('AND    PK.REGRA      = ''' + ARegra            + '''');
              SQL.Add('AND    PK.LOG_ID     = ''' + IntToStr(ALOG_ID) + '''');
              ExecQuery;

              result := (Current.ByName(AField).AsInteger = 1);
            end;
          finally
            oCTransact(TFBConsulta);
          end;

  if (not Result) and (AWarning) then
  oException(Nil,'Acesso Negado !'+#13+
                 'Favor entrar em contato com o administrador do sistema.');
end;

procedure bExecCaixa; STDCall;
begin
     RECParametros.STCX := 'Fechado';
  if RECParametros.ID > 0 then
     with FBird do
     try
       { Delete Temporários }
       try
         oOTransact(TFBSEdicao);
         with SQLFBSEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('DELETE FROM TAB_EDI_PRO');
           SQL.Add('WHERE  CAST(DTCA AS DATE) <= DATEADD( - 10 DAY TO CURRENT_DATE )');
           SQL.Add('AND    HOST = ''' + RECParametros.HOST + '''');
           ExecQuery;
         end;
         oCTransact(TFBSEdicao);
       except
         oCTransact(TFBSEdicao,ltRollback);
       end;

       { VER CAIXA }
       oOTransact(TFBCaixa);
       with SQLFBCaixa do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT FIRST 1 PK.* FROM VW_CAI_LAF AS PK');
         SQL.Add('WHERE  PK.IDEP = '''+RECParametros.ID+'''');
         ExecQuery;

         RECParametros.STCX := 'Caixa '+ IFThen(Current.ByName('DTABE').AsDateTime < Int(RECUsuarios.DTAcesso),
                                         IFThen(oEmpty(Current.ByName('DTFEC').AsDateTime),'anterior aberto','não aberto'),
                                         IFThen(oEmpty(Current.ByName('DTFEC').AsDateTime),'Aberto','Fechado'));

         RECParametros.CDCX := IntToStr(Current.ByName('CDCX' ).AsInteger );
         RECParametros.DTCX := Current.ByName('DTABE').AsDateTime;

         RECParametros.IPCX := Current.ByName('IP').AsString + Trim(IFThen(not oEmpty(Current.ByName('HOST').AsString),' ( '+Current.ByName('HOST').AsString+' )',''));
       end;
     finally
       oCTransact(TFBCaixa);
     end;
end;

procedure bExecPrinter; STDCall;
begin
  if not oEmpty(RECParametros.Id) then
     with FBird do
     try
       oOTransact(TFBConsulta);
       QPrinter.Params[0].Value := RECParametros.Host;
       CDSPrinter.Close;
       CDSPrinter.Open;
     finally
       oCTransact(TFBConsulta);
     end;
end;

procedure bExecEvent(AEvent: String;AWarning: TWarning = lwNone); STDCall;
begin
  with FBird do
  Try
    oOTransact(TFBEvent);
    SPFBEvent.Close;
    SPFBEvent.StoredProcName := 'SP_EVENT';
    SPFBEvent.Prepare;

    SPFBEvent.Params[0].AsString := AEvent;
    SPFBEvent.ExecProc;
  Finally
    oCTransact(TFBEvent);
  end;

  if (RECParametros.STCX <> 'Caixa Aberto') and (AWarning = lwShowWarning) then
      oException(Nil,RECParametros.STCX);
end;

procedure bPesquisaEnderecos(var RECEndereco: TRECEnderecos); STDCall;
begin
  with FBird,SQLFBEndereco do
  try
    RECEndereco.Field := TRIM(IFThen(Pos('LOG',UPPERCASE(RECEndereco.Field)) > 0,'LOGRADOURO','CEP'));

    oOTransact(TFBEndereco);
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SP_PSQ_TAB_CEP (');
    SQL.Add(''''+RECEndereco.Value+''',');
    SQL.Add(''''+RECEndereco.Field+''')');
    ExecQuery;
  finally
    RECEndereco.Selected := (not oEmpty(Current.ByName('CEP').AsString));

    if RECEndereco.Selected then
    begin
      RECEndereco.Id               := Current.ByName('Id').AsInt64;
      RECEndereco.Tipo             := Current.ByName('Tipo').AsString;
      RECEndereco.Logradouro       := Current.ByName('Logradouro').AsString;
      RECEndereco.Logradouro_Abrev := Current.ByName('Logradouro_Abrev').AsString;
      RECEndereco.Complemento      := Current.ByName('Complemento').AsString;
      RECEndereco.Cep              := Current.ByName('Cep').AsString;
      RECEndereco.Bairro           := Current.ByName('Bairro').AsString;
      RECEndereco.Bairro_Abrev     := Current.ByName('Bairro_Abrev').AsString;
      RECEndereco.Cidade           := Current.ByName('Cidade').AsString;
      RECEndereco.Cidade_Abrev     := Current.ByName('Cidade_Abrev').AsString;
      RECEndereco.CMUN             := Current.ByName('CMUN').AsString;
      RECEndereco.UF               := Current.ByName('UF').AsString;
    end;

    oCTransact(TFBEndereco);
  end;
end;

procedure bResumo_Pedido;
begin
  if  not RECUsuarios.PED_TOTALIZADOR then
      Exit;

  with FBird do
  begin
    oRTransact(TFBResumo);
    with QFBResumo_Mensal do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.CP_IDEP,PK.CP_ABEP,PK.DMPK,PK.AMPK,');
      SQL.Add('       SUM(PK.PED_VLPK) AS PED_VLPK,SUM(PK.PED_ILPK) AS PED_ILPK,');
      SQL.Add('       SUM(PK.CLI_ITCD) AS CLI_ITCD,SUM(PK.CLI_INCD) AS CLI_INCD,');
      SQL.Add('       SUM(PK.PED_VLSP) AS PED_VLSP,SUM(PK.PED_ILSP) AS PED_ILSP,AVG(PK.PED_PLSP) AS PED_PLSP,');
      SQL.Add('       SUM(PK.PED_VTLQ) AS PED_VTLQ,SUM(PK.PED_ITLQ) AS PED_ITLQ');

      SQL.Add('FROM SP_PED_VEN_REL_FCV (');

      SQL.Add('''' + RECParametros.ID + ''',');
      SQL.Add('''' + RECParametros.ID + ''',');

      SQL.Add('''' + FormatDateTime('mm/dd/yy',StartOfTheYear(RECParametros.DTMES_INI)) + ''',');
      SQL.Add('''' + FormatDateTime('mm/dd/yy',EndOfTheYear  (RECParametros.DTMES_FIM)) + ''')');
      SQL.Add('AS PK');

      SQL.Add('GROUP BY DMPK,AMPK,CP_IDEP,CP_ABEP');
      SQL.Add('ORDER BY AMPK DESC');

      Prepare;
      Open;
    end;

    with QFBResumo_Diario do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.DTPK,PK.CP_IDEP,PK.CP_ABEP,');
      SQL.Add('       PK.PED_VLPK,PK.PED_ILPK,');
      SQL.Add('       PK.CLI_ITCD,PK.CLI_INCD,');
      SQL.Add('       PK.PED_VLSP,PK.PED_ILSP,PK.PED_PLSP,');
      SQL.Add('       PK.PED_VTLQ,PK.PED_ITLQ');

      SQL.Add('FROM SP_PED_VEN_REL_FCV (');

      SQL.Add('''' + RECParametros.ID + ''',');
      SQL.Add('''' + RECParametros.ID + ''',');

      SQL.Add('''' + FormatDateTime('mm/dd/yy',RECParametros.DTMES_INI) + ''',');
      SQL.Add('''' + FormatDateTime('mm/dd/yy',RECParametros.DTMES_FIM) + ''')');
      SQL.Add('AS PK');

      SQL.Add('ORDER BY PK.DTPK DESC');

      Prepare;
      Open;

      tag := 0;
    end;
  end;
end;

procedure bCDataBase; STDCall;
var
  i: Word;
begin
  with FBird do
  begin
    if   DBB2B.TestConnected then
    with DBB2B do
    try
      CloseDataSets;
      for i := 0 to Pred(TransactionCount) do
          if Transactions[i].InTransaction then
             Transactions[i].Commit;
      Connected := False;
      ForceClose;
    except
      raise exception.Create('Lebianco: Erro ao tentar fechar ! '+FormatDateTime('dd/mm/yy hh:mm:ss',Now));
    end;

    if   DBEdicao.TestConnected then
    with DBEdicao do
    try
      CloseDataSets;
      for i := 0 to Pred(TransactionCount) do
          if Transactions[i].InTransaction then
             Transactions[i].Commit;
      Connected := False;
      ForceClose;
    except
      raise exception.Create('Sheild: Erro ao tentar fechar !'+FormatDateTime('dd/mm/yy hh:mm:ss',Now));
    end;

    if   DBERP.TestConnected then
    with DBERP do
    try
      CloseDataSets;
      for i := 0 to Pred(TransactionCount) do
          if Transactions[i].InTransaction then
             Transactions[i].Commit;
      Connected := False;
      ForceClose;
    except
      raise exception.Create('ERP: Erro ao tentar fechar ! '+FormatDateTime('dd/mm/yy hh:mm:ss',Now));
    end;
  end;
end;

function bRET_QUANTIDADE(AQTPeca: Integer;AQTUnidade: Double): Double; STDCall;
begin
  result := IFThen(AQTUnidade > 0,AQTPeca * AQTUnidade,AQTUnidade);
  if result <= 0 then
  result := AQTUnidade;
end;

function bRET_PECA(AQuantidade,AQTUnidade: Double): Integer; STDCall;
begin
  result := 0;
  if ((not oEmpty(AQuantidade)) and (not oEmpty(AQTUnidade))) then
  begin
    result := Trunc(AQuantidade / AQTUnidade);
    if ((result < 1) or (result = AQuantidade)) then
    result := 1;
  end;
end;

function bRET_PESO(APesoUnit,AQuantidade,AQTUnidade: Double): Double; STDCall;
begin
  result := 0;
  if (not oEmpty(APesoUnit)) and (not oEmpty(AQTUnidade)) and (not oEmpty(AQuantidade)) then
  result := (APesoUnit * AQuantidade) /AQTUnidade;
end;

function bNFE_Emissao: Variant; STDCall;
begin
  with FBird do
  try
    oRTransact(TFBConsulta);
    with SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM SP_NFE_CAB_PSQ_EOF ('''+RECParametros.GRUPO+''')');
      ExecQuery;
      result := Current.Vars[0].AsInteger + 1;
    end;
  finally
    oCTransact(TFBConsulta);
  end;
end;

function bPesquisaNotasFiscais(ANFe: Variant;ACLFO: Word=0): Variant; STDCall;
var
  i: Word;
begin
  result := '0';
  with FBird,SQLFBConsulta do
  try
    oRTransact(TFBConsulta);
    SQL.Clear;
    SQL.Add('SELECT NFE_CFAV FROM (');
    for i := 1 to 9 do
    begin
      SQL.Add('SELECT NFE_CFAV "NFE_CFAV"');
      SQL.Add('FROM '+oREPZero('nfe_cab','_',i,3)+ ' "NFE_CAB"');
      SQL.Add('WHERE  CDNF = '''+ANFe+'''');
      SQL.Add('AND    TPCD = '''+IntToStr(ACLFO)+'''');
      SQL.Add('AND    FINNFE <> 5');
      SQL.Add('AND    FINNFE <> 6');
      SQL.Add('AND    CHAR_LENGTH(CHNFE) = 44');

      if i < 9 then SQL.Add('UNION');
    end;
    SQL.Add(')');
    Prepare;
    ExecQuery;
    result := IntToStr(Fields[0].AsInteger);
  finally
    oCTransact(TFBConsulta);
  end;
end;

procedure bBAI_FINANCEIRO(ANFe,APedido: Integer); STDCall;
var
  TPCO,
  ACDBX: Integer;
  STFI,
  STCO,
  RECO: String;
begin
  { Ricardo - Tratar C 0 corretamente. Não mais tratar C 0 como C 1}
  if (ANFe = 0) and (APedido = 0) then
      Exit;

  with FBird do
  try
    oOTransact(TFBEdicao);
    with FBBAI_FINANCEIRO do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.CDPV,PK.DEPV,PK.CTNR,PK.CDRO,PK.CDNF AS  PV_CDNF,PK.CDCX,CAST(IIF(PK.CDNF > 0,PK.DTNF,PK.DTCA) AS DATE) AS DTCX,');
      SQL.Add('       ABS(IIF(PK.VNF > 0,PK.VNF,PK.TCDE)) AS VPED,PK.TPCO,');
      SQL.Add('       PK.IDCL,PK.IDCV,PK.IDCR,');
      SQL.Add('       PK.STPD,PK.STCO,PK.CDPG,');
      SQL.Add('       FK.NFE_CDNF AS CDNF,FK.NFE_TITU AS TITULO,FK.NFE_DNFE AS DTNF,FK.NFE_DVEN AS DTVE,FK.NFE_VDUP AS VDUP,');
      SQL.Add('       PK.CSCD     AS CONSIGNADO,');
      SQL.Add('       PK.FAPD     AS FATURAR,'   );
      SQL.Add('       COALESCE(TRIM(CAST(SUBSTRING(PK.INFADPED FROM 1 FOR 812) AS VARCHAR(812))),'''')||ASCII_CHAR(13)||ASCII_CHAR(10)||COALESCE(TRIM(CAST(SUBSTRING(NC.NFE_OBSE FROM 1 FOR 812) AS VARCHAR(812))),'''') AS INFADPED');
      
      SQL.Add('FROM '     +SLPrincipal.Values['ped_ven_cab']+' AS PK ');
      SQL.Add('LEFT JOIN '+SLPrincipal.Values['nfe_cab']    +' AS NC ON (NC.NFE_CDNF = PK.CDNF)');
      SQL.Add('LEFT JOIN '+SLPrincipal.Values['nfe_dup']    +' AS FK ON (FK.NFE_CDNF = PK.CDNF)');

      if ANFe = 0 then
         SQL.Add('WHERE PK.ID   = '''+IntToStr(APedido)+'''') else
         SQL.Add('WHERE PK.CDNF = '''+IntToStr(ANFe   )+'''');

      SQL.Add('ORDER BY FK.NFE_TITU');
      Open;

      if not oEmpty(ANFe) then
      begin
        if  oEmpty(FBBAI_FINANCEIROPV_CDNF.AsInteger) then
        begin
          oErro(Application.Handle,'Nota Fiscal No '+IntToStr(ANFe)+' não Encontrada !');
          Exit;
        end;

        if Pos(LeftStr(FBBAI_FINANCEIROSTCO.AsString,3),'BANBOLDUP') > 0 then
        if oEmpty(FBBAI_FINANCEIROTITULO.AsString) then
        begin
          oErro(Application.Handle,'Duplicata(s) da Nota Fiscal Nº '+IntToStr(ANFe)+' não Gerada(s) !' +#13+
                                   'Favor entrar em contato com o departamento financeiro.');
          Exit;
        end;
      end;  

      if not oEmpty(APedido) then
         if oEmpty(FBBAI_FINANCEIROCDPV.AsInteger) then
         begin
           oErro(Application.Handle,'Pedido No '+IntToStr(ANFe)+' não Encontrado !');
           Exit;
         end;

      if oEmpty(FBBAI_FINANCEIROCDCX.AsInteger) then
      begin
        oErro(Application.Handle,'DEPV No '+FBBAI_FINANCEIRODEPV.AsString+' não possui número de caixa registrado !');
        Exit;
      end;

      if (FBBAI_FINANCEIROFaturar.AsInteger = 0) and (FBBAI_FINANCEIROConsignado.AsInteger = 0) then
      Exit;
    end;

    try
      with SQLFBEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM ' + oREPZero('FIN_REC_BAN_BAI','_',RECParametros.Id,3));
        SQL.Add('WHERE  DOCUMENTO = ''' + IFThen(FBBAI_FINANCEIROCDNF.AsInteger    > 0,FBBAI_FINANCEIROCDNF.AsString,
                                          IFThen(FBBAI_FINANCEIROPV_CDNF.AsInteger > 0,FBBAI_FINANCEIROPV_CDNF.AsString,FBBAI_FINANCEIRODEPV.AsString))+'''');
        SQL.Add('AND    IDCD      = ''' + FBBAI_FINANCEIROIDCL.AsString+'''');
        SQL.Add('AND    DEST <> ''CANCELADO''');
        SQL.Add('AND    DEST <> ''BAIXADO'''  );
        ExecQuery;

        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM ' + oREPZero('FIN_REC_CAR_BAI','_',RECParametros.Id,3));
        SQL.Add('WHERE  DOCUMENTO = ''' + IFThen(FBBAI_FINANCEIROCDNF.AsInteger    > 0,FBBAI_FINANCEIROCDNF.AsString,
                                          IFThen(FBBAI_FINANCEIROPV_CDNF.AsInteger > 0,FBBAI_FINANCEIROPV_CDNF.AsString,FBBAI_FINANCEIRODEPV.AsString))+'''');
        SQL.Add('AND    IDCD      = ''' + FBBAI_FINANCEIROIDCL.AsString+'''');
        SQL.Add('AND    DEST <> ''CANCELADO''');
        SQL.Add('AND    DEST <> ''BAIXADO'''  );
        ExecQuery;

        Close;
        SQL.Clear;
        SQL.Add('SELECT GEN_ID(ID_NO_BAI_REC,1) FROM RDB$DATABASE');
        ExecQuery;
        ACDBX := Current.Vars[0].AsInteger;
      end;

      STFI  := IFThen(Pos(LeftStr(FBBAI_FINANCEIROSTPD.AsString,3),'ABADEV') > 0,'BAIXADO','PENDENTE');
      while not FBBAI_FINANCEIRO.Eof do
      begin
        TPCO := FBBAI_FINANCEIROTPCO.AsInteger;
        RECO := IFThen(Pos(LeftStr(FBBAI_FINANCEIROSTCO.AsString,3),'BANBOLDUP') > 0,'B','C')+' '+IntToStr(TPCO);
        STCO := IFThen(Pos(LeftStr(FBBAI_FINANCEIROSTPD.AsString,3),'ABADEV'   ) > 0,FBBAI_FINANCEIROSTPD.AsString,
                IFThen(Pos(LeftStr(FBBAI_FINANCEIROSTCO.AsString,3),'BANBOLDUP') > 0,'DUPLICATA',FBBAI_FINANCEIROSTCO.AsString));

        if Pos(LeftStr(FBBAI_FINANCEIROSTCO.AsString,3),'BANBOLDUP') > 0 then
        begin
          SPFBEdicao.Close;
          SPFBEdicao.StoredProcName := 'SP_FIN_REC_BAI';
          SPFBEdicao.Prepare;

          SPFBEdicao.ParamByName('fin').Value  := oREPZero('FIN_REC_BAN_BAI','_',RECParametros.Id,3);
          SPFBEdicao.ParamByName('ID').Value   := 0;
          SPFBEdicao.ParamByName('CDBX').Value := ACDBX;
          SPFBEdicao.ParamByName('CDCX').Value := FBBAI_FINANCEIROCDCX.AsInteger;
          SPFBEdicao.ParamByName('TIPO').Value := STCO;
          SPFBEdicao.ParamByName('STDO').Value := RECO;
          SPFBEdicao.ParamByName('CONC').Value := 1;
          SPFBEdicao.ParamByName('DOCT').Value := IFThen(FBBAI_FINANCEIROCDNF.AsInteger    > 0,FBBAI_FINANCEIROCDNF.AsString  ,
                                                  IFThen(FBBAI_FINANCEIROPV_CDNF.AsInteger > 0,FBBAI_FINANCEIROPV_CDNF.AsString,FBBAI_FINANCEIRODEPV.AsString));
          SPFBEdicao.ParamByName('TITU').Value := IFThen(FBBAI_FINANCEIROCDNF.AsInteger    > 0,FBBAI_FINANCEIROTITULO.AsString,
                                                  IFThen(FBBAI_FINANCEIROPV_CDNF.AsInteger > 0,FBBAI_FINANCEIROPV_CDNF.AsString,FBBAI_FINANCEIRODEPV.AsString));
          SPFBEdicao.ParamByName('DCAD').Value := IFThen(FBBAI_FINANCEIROCDNF.AsInteger    > 0,FBBAI_FINANCEIRODTNF.AsDateTime,FBBAI_FINANCEIRODTCX.AsDateTime);
          SPFBEdicao.ParamByName('DBAI').Value := FBBAI_FINANCEIRODTCX.AsDateTime;
          SPFBEdicao.ParamByName('DVEN').Value := IFThen(FBBAI_FINANCEIROCDNF.AsInteger > 0,FBBAI_FINANCEIRODTVE.AsDateTime,FBBAI_FINANCEIRODTCX.AsDateTime);
          SPFBEdicao.ParamByName('VALO').Value := IFThen(FBBAI_FINANCEIROCDNF.AsInteger > 0,FBBAI_FINANCEIROVDUP.AsFloat   ,FBBAI_FINANCEIROVPED.AsFloat);
          SPFBEdicao.ParamByName('VPAG').Value := 0;
          SPFBEdicao.ParamByName('DPAG').Value := 0;
          SPFBEdicao.ParamByName('VPEN').Value := IFThen(Pos(LeftStr(FBBAI_FINANCEIROSTPD.AsString,3),'ABADEV') = 0,
                                                  IFThen(FBBAI_FINANCEIROCDNF.AsInteger > 0,FBBAI_FINANCEIROVDUP.AsFloat,FBBAI_FINANCEIROVPED.AsFloat));
          SPFBEdicao.ParamByName('STFI').Value := STFI;
          SPFBEdicao.ParamByName('CCLI').Value := FBBAI_FINANCEIROIDCL.AsInteger;
          SPFBEdicao.ParamByName('CVEN').Value := FBBAI_FINANCEIROIDCV.AsInteger;
          SPFBEdicao.ParamByName('CREP').Value := FBBAI_FINANCEIROIDCR.AsInteger;
          SPFBEdicao.ParamByName('CDPG').Value := FBBAI_FINANCEIROCDPG.AsInteger;
          SPFBEdicao.ParamByName('CTNR').Value := FBBAI_FINANCEIROCTNR.AsString;
          SPFBEdicao.ParamByName('OBSE').Value := FBBAI_FINANCEIROINFADPED.AsString;
          SPFBEdicao.ExecProc;

          Dec(TPCO);
          STCO := IFThen(Pos(LeftStr(FBBAI_FINANCEIROSTPD.AsString,3),'ABADEV') = 0,'CARTEIRA',FBBAI_FINANCEIROSTPD.AsString);
        end;

        if TPCO > 0 then
        begin
          SPFBEdicao.Close;
          SPFBEdicao.StoredProcName := 'SP_FIN_REC_BAI';
          SPFBEdicao.Prepare;

          SPFBEdicao.ParamByName('fin').Value  := oREPZero('FIN_REC_CAR_BAI','_',RECParametros.Id,3);
          SPFBEdicao.ParamByName('ID').Value   := 0;
          SPFBEdicao.ParamByName('CDBX').Value := ACDBX;
          SPFBEdicao.ParamByName('CDCX').Value := FBBAI_FINANCEIROCDCX.AsInteger;
          SPFBEdicao.ParamByName('TIPO').Value := STCO;
          SPFBEdicao.ParamByName('STDO').Value := RECO;
          SPFBEdicao.ParamByName('CONC').Value := TPCO;

          SPFBEdicao.ParamByName('DOCT').Value := IFThen(FBBAI_FINANCEIROCDNF.AsInteger    > 0,FBBAI_FINANCEIROCDNF.AsString  ,
                                                  IFThen(FBBAI_FINANCEIROPV_CDNF.AsInteger > 0,FBBAI_FINANCEIROPV_CDNF.AsString,FBBAI_FINANCEIRODEPV.AsString));
          SPFBEdicao.ParamByName('TITU').Value := IFThen(FBBAI_FINANCEIROCDNF.AsInteger    > 0,FBBAI_FINANCEIROTITULO.AsString,
                                                  IFThen(FBBAI_FINANCEIROPV_CDNF.AsInteger > 0,FBBAI_FINANCEIROPV_CDNF.AsString,FBBAI_FINANCEIRODEPV.AsString));
          SPFBEdicao.ParamByName('DCAD').Value := IFThen(FBBAI_FINANCEIROCDNF.AsInteger    > 0,FBBAI_FINANCEIRODTNF.AsDateTime,FBBAI_FINANCEIRODTCX.AsDateTime);
          SPFBEdicao.ParamByName('DBAI').Value := FBBAI_FINANCEIRODTCX.AsDateTime;
          SPFBEdicao.ParamByName('DVEN').Value := IFThen(FBBAI_FINANCEIROCDNF.AsInteger > 0,FBBAI_FINANCEIRODTVE.AsDateTime,FBBAI_FINANCEIRODTCX.AsDateTime);
          SPFBEdicao.ParamByName('VALO').Value := IFThen(FBBAI_FINANCEIROCDNF.AsInteger > 0,FBBAI_FINANCEIROVDUP.AsFloat   ,FBBAI_FINANCEIROVPED.AsFloat);
          SPFBEdicao.ParamByName('VPAG').Value := 0;
          SPFBEdicao.ParamByName('DPAG').Value := 0;
          SPFBEdicao.ParamByName('VPEN').Value := IFThen(Pos(LeftStr(FBBAI_FINANCEIROSTPD.AsString,3),'ABADEV') = 0,
                                                  IFThen(FBBAI_FINANCEIROCDNF.AsInteger > 0,FBBAI_FINANCEIROVDUP.AsFloat,FBBAI_FINANCEIROVPED.AsFloat));
          SPFBEdicao.ParamByName('STFI').Value := STFI;
          SPFBEdicao.ParamByName('CCLI').Value := FBBAI_FINANCEIROIDCL.AsInteger;
          SPFBEdicao.ParamByName('CVEN').Value := FBBAI_FINANCEIROIDCV.AsInteger;
          SPFBEdicao.ParamByName('CREP').Value := FBBAI_FINANCEIROIDCR.AsInteger;
          SPFBEdicao.ParamByName('CDPG').Value := FBBAI_FINANCEIROCDPG.AsInteger;
          SPFBEdicao.ParamByName('CTNR').Value := FBBAI_FINANCEIROCTNR.AsString;
          SPFBEdicao.ParamByName('OBSE').Value := FBBAI_FINANCEIROINFADPED.AsString;
          SPFBEdicao.ExecProc;
        end;
        FBBAI_FINANCEIRO.Next;
      end;

      FBBAI_FINANCEIRO.First;
      bBAI_CAIXA(ACDBX);

      with SQLFBEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
        SQL.Add('SET   ROM_CDBX = '''+IntToStr(ACDBX)+''',');

        SQL.Add('ROM_DBAI = '''+FormatDateTime('mm/dd/yy',FBBAI_FINANCEIRODTCX.AsDateTime     )+''',');
        SQL.Add('DTBX     = '''+FormatDateTime('mm/dd/yy',FBBAI_FINANCEIRODTCX.AsDateTime+Time)+''',');

        SQL.Add('ROM_STFI = '''+IFThen(FBBAI_FINANCEIROFaturar.AsInteger    > 0,'FATURADO'  ,
                                IFThen(FBBAI_FINANCEIROConsignado.AsInteger > 0,'FINALIZADO','BAIXADO'))+'''');

        if ANFe > 0 then
           SQL.Add('WHERE CDNF = '''+IntToStr(ANFe   )+'''') else
           SQL.Add('WHERE ID   = '''+IntToStr(APedido)+'''');

        ExecQuery;
      end;

      oCTransact(TFBEdicao);
    except
      on E: Exception do
      begin
        oRTransact(TFBEdicao,ltRollback);
        oException(Nil,'Falha ao tentar finalizar venda !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    oCTransact(FBird.TFBEdicao);
  end;
end;

procedure bBAI_CAIXA(ACDBX: Variant); STDCall;
begin
  if oEmpty(ACDBX) then
     Exit;

  with FBird do
  begin
    with FBBAI_CAIXA do
    begin
      Close;
      SQL.Text        := oStrTran(SQL.Text,'FIN_REC_BAN_BAI',SLPrincipal.Values['fin_rec_ban_bai']);
      SQL.Text        := oStrTran(SQL.Text,'FIN_REC_CAR_BAI',SLPrincipal.Values['fin_rec_car_bai']);
      Params[0].Value := ACDBX;
      Prepare;
      Open;
    end;

    if FBBAI_CAIXACDCX.AsInteger > 0 then
    begin
      while not FBBAI_CAIXA.Eof do
      begin
        with SQLFBEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('DELETE FROM CAI_MOV');
          SQL.Add('WHERE  CAI_CCAB = '''+FBBAI_CAIXACDCX.AsString     +'''');
          SQL.Add('AND    CAI_DESC = '''+FBBAI_CAIXATipo.AsString     +'''');
          SQL.Add('AND    CAI_DOCT = '''+FBBAI_CAIXADocumento.AsString+'''');
          SQL.Add('AND    CAI_CONC = '''+FBBAI_CAIXACredito.AsString  +'''');
          ExecQuery;
        end;

        SPFBEdicao.Close;
        SPFBEdicao.StoredProcName := 'SP_CAI_MOV';
        SPFBEdicao.Prepare;

        SPFBEdicao.ParamByName('ID').Value   := 0;
        SPFBEdicao.ParamByName('CCAB').Value := FBBAI_CAIXACDCX.AsInteger;
        SPFBEdicao.ParamByName('CTSR').Value := FBBAI_CAIXACDCXINI.AsInteger;
        SPFBEdicao.ParamByName('CONC').Value := FBBAI_CAIXACredito.AsInteger;
        SPFBEdicao.ParamByName('DOCT').Value := FBBAI_CAIXADocumento.AsString;
        SPFBEdicao.ParamByName('DEMV').Value := FBBAI_CAIXATipo.AsString;
        SPFBEdicao.ParamByName('DCAD').Value := FBBAI_CAIXADTCX.AsDateTime;
        SPFBEdicao.ParamByName('CRED').Value := FBBAI_CAIXAVT.AsFloat;
        SPFBEdicao.ParamByName('DEBI').Value := 0;
        SPFBEdicao.ExecProc;
        FBBAI_CAIXA.Next;
      end;
    end;
  end;
end;

procedure bSP_CAD_PRO_PCI_RPK(ASenderSP: TIBStoredProc;
                              AID,AIDEP,AIDCA:Integer;ACDTP: Variant;ADescricao: String;AINFADCAD:WideString); STDCall;
begin
  ASenderSP.StoredProcName := 'SP_CAD_PRO_PCI_RPK';
  ASenderSP.Prepare;
  ASenderSP.ParamByName('AID').Value        := AID;
  ASenderSP.ParamByName('AIDEP').Value      := AIDEP;
  ASenderSP.ParamByName('AIDCA').Value      := IFThen(oEmpty(AIDCA),RECUsuarios.Id,AIDCA);
  ASenderSP.ParamByName('AIDED').Value      := IFThen(oEmpty(AIDCA),0,RECUsuarios.Id);
  ASenderSP.ParamByName('AIDST').Value      := RECUsuarios.Id;
  ASenderSP.ParamByName('ACDST').Value      := RECParametros.STA_IDCAD;
  ASenderSP.ParamByName('AIP').Value        := RECParametros.IP;
  ASenderSP.ParamByName('AHOST').Value      := RECParametros.Host;
  ASenderSP.ParamByName('ACDTP').Value      := ACDTP;
  ASenderSP.ParamByName('ADESCRICAO').Value := ADescricao;
  if oEmpty(AINFADCAD) then
     ASenderSP.ParamByName('AINFADCAD').Value  := NULL
  else
     ASenderSP.ParamByName('AINFADCAD').Value  := AINFADCAD;
  ASenderSP.ExecProc;
end;

procedure bSP_CAD_PRO_PCI_RFK(ASenderSP: TIBStoredProc;
                              ACDFK: Variant;AITEM: Integer;ADTEN: TDate;ACTNR,ACPTP,ADETP: String;ADetalhe: String;
                              ACPKG,ACLKG,ACMKG: Double;AQTRL: Integer;APesoB,ACMDTOT,AVUCOTA,AVUTAXA,ACMRTOT,AQTUCOM,ACMUCOM: Double); STDCall;
begin
  ASenderSP.StoredProcName := 'SP_CAD_PRO_PCI_RFK';
  ASenderSP.Prepare;
  ASenderSP.ParamByName('AFLAG').Value    := ASenderSP.Tag; //Define o tipo de evento. 1-Exclusão 0-Inclusão/Alteração
  ASenderSP.ParamByName('ACDFK').Value    := ACDFK;
  ASenderSP.ParamByName('AITEM').Value    := AITEM;
  ASenderSP.ParamByName('ADTEN').Value    := ADTEN;
  ASenderSP.ParamByName('ACTNR').Value    := ACTNR;
  ASenderSP.ParamByName('ACPTP').Value    := ACPTP;
  ASenderSP.ParamByName('ADETP').Value    := ADETP;
  ASenderSP.ParamByName('ADetalhe').Value := ADetalhe;
  ASenderSP.ParamByName('ACPKG').Value    := ACPKG;
  ASenderSP.ParamByName('ACLKG').Value    := ACLKG;
  ASenderSP.ParamByName('ACMKG').Value    := ACMKG;
  ASenderSP.ParamByName('AQTRL').Value    := AQTRL;
  ASenderSP.ParamByName('APesoB').Value   := APesoB;
  ASenderSP.ParamByName('ACMDTOT').Value  := ACMDTOT;
  ASenderSP.ParamByName('AVUTAXA').Value  := AVUTAXA;
  ASenderSP.ParamByName('AVUCOTA').Value  := AVUCOTA;
  ASenderSP.ParamByName('ACMRTOT').Value  := ACMRTOT;
  ASenderSP.ParamByName('AQTUCOM').Value  := AQTUCOM;
  ASenderSP.ParamByName('ACMUCOM').Value  := ACMUCOM;
  ASenderSP.ExecProc;                    
end;

procedure bBAI_ESTOQUE(AaIDCP: array of String); STDCall;
var
  i: Word;
begin
  if High(AaIDCP) > 0 then
     if AaIDCP[0] <> EmptyStr then
     with FBird do
     try
       oOTransact(TFBEdicao);
       for i := 0 To (High(AaIDCP)) do
       begin
         if AaIDCP[i] = EmptyStr then
            Break;

         with SQLFBEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('EXECUTE PROCEDURE SP_CAD_PRO_EST_LAN(');
           SQL.Add(''''+RECParametros.ID            +''',');
           SQL.Add(''''+AaIDCP[i]                   +''')');
           ExecQuery;
         end;
       end;
       oCTransact(TFBEdicao);
     except
       oCTransact(TFBEdicao,ltRollback);
     end;
end;

procedure TFBird.DataModuleCreate(Sender: TObject);
          function GetEnv(Variable: string): string;
          var
            Buffer: Integer;
          begin
            result := '';
            Buffer := GetEnvironmentVariable(PChar(Variable), nil, 0);
            if Buffer > 0 then
            begin
              SetLength(Result, Buffer - 1);
              GetEnvironmentVariable(PChar(Variable), PChar(Result), Buffer);
            end;
          end;

          function IsRemoteSession: Boolean;
          const
            SM_REMOTECONTROL = $2001; // de WinUser.h
            SM_REMOTESESSION = $1000;
          begin
            result := ((GetSystemMetrics (SM_REMOTESESSION) <> 0) or (GetSystemMetrics (SM_REMOTECONTROL) <> 0));
          end;
var
  ItemIDList: PItemIDList;
  RegEdit,
  RegConsulta: TRegistry;
  lParam: Integer;
  Buf : Array[0..10] of Char;
  //aResult : cardinal;
begin
  Buf    := 'Environment';
  lParam := Integer(@Buf[0]);

  RECParametros.DEFHintWindowClass := HintWindowClass;

  SetLength(RECParametros.SHEILD_PATH_DESKTOP,MAX_PATH);

  SHGetSpecialFolderLocation(Application.Handle,
  CSIDL_DESKTOPDIRECTORY,ItemIDList);
  SHGetPathFromIDList(ItemIdList,PChar(RECParametros.SHEILD_PATH_DESKTOP));
  SetLength(RECParametros.SHEILD_PATH_DESKTOP,StrLen(PChar(RECParametros.SHEILD_PATH_DESKTOP)));

  {
  {IP_FIXO OTIMOTEX    = '200.232.176.73';}
  {IP_FIXO DONA AMELIA = '177.68.148.249';}
  {IP_FiXO TRIMS21     = '201.27.148.155';}
  {IP_FiXO ABC         = '177.103.176.111';
   IP_FiXO EXPRESSO    = '189.111.104.110';

  *** Rotina para recupar o UserName/ClientName/UserProfile ***
  RECParametros.ServerIP := GetEnv('USERNAME');
  RECParametros.ServerIP := GetEnv('CLIENTNAME');
  RECParametros.ServerIP := GetEnv('USERPROFILE');
  ***  Rotina para detectar rede ***
  if IsRemoteSession then
  RECParametros.ServerIP := 'Remoto' else
  RECParametros.ServerIP := 'Local';
  }

  RECParametros.IP   := LocalHost.LocalIP;
  RECParametros.Host := oGetPCNome;

  { Consulta }
  RegConsulta         := TRegistry.Create(KEY_READ OR KEY_WOW64_64KEY);
  RegConsulta.Access  := KEY_READ;
  RegConsulta.RootKey := HKEY_CURRENT_USER;

  { Edição }
  RegEdit := Nil;

  try
    if not RegConsulta.KeyExists('NFe\FBird\') then
       oException(Nil,'IP Server não Encontrado !' + #13 +
                      'Favor entrar em contato com o administrador do sistema.');

    if not RegConsulta.OpenKeyReadOnly('NFe\FBird\') then
       oException(Nil,'Falha ao tentar conectar com IP Server !' + #13 +
                      'Favor entrar em contato com o administrador do sistema.');

    { ***** ERP ***** }
    { PATH }
    if oEmpty(RegConsulta.ReadString('Path')) then
       try
         RegEdit := TRegistry.Create(KEY_WRITE OR KEY_WOW64_64KEY);
         RegEdit.Access  := KEY_WRITE;
         RegEdit.RootKey := HKEY_CURRENT_USER;

         RegEdit.OpenKey('NFe\FBird\',False);
         RegEdit.WriteString('Path','C:\Sheild\FBird');

         RegEdit.CloseKey;
         Regedit.Free;

         SendNotifyMessage(HWND_BROADCAST, WM_SETTINGCHANGE,0,lParam);
       except
         on E: Exception do
         begin
           oErro(Application.Handle,'Falha ao tentar acessar banco de dados !' + #13 +
                        'Verifique a sua conexão de internet.'     + #13 + #13 +
                         E.Message);

           RegEdit.CloseKey;
           RegEdit.Free;

           Application.Terminate;
         end;
       end;

    { IP (LAN / WAN) }
    RECParametros.ServerIP   := RegConsulta.ReadString('IP');
    RECParametros.ServerHost := IFThen(UPPERCASE(RECParametros.ServerIP) = 'LOCALHOST','Rede LocalHost','Rede Intranet ' + RECParametros.ServerIP + ':TCP 3050');

    { CONNECT }
    DBERP.Connected    := False;
    DBERP.DataBaseName := EmptyStr;
    DBERP.DataBaseName := RegConsulta.ReadString('IP') + '/3050:' + RegConsulta.ReadString('Path') + '\' + RegConsulta.ReadString('DataBaseName');
    oODatabase(DBErp);

    if not DBERP.TestConnected then
       oException(Nil,'Falha ao tentar conectar banco de dados !' + #13 +
                      'DB ERP: ' + DBERP.DatabaseName       + #13 + #13 +
                      'Verifique as conexões da rede local e internet');

    { ***** EDIT ***** }
    { PATH }
    if oEmpty(RegConsulta.ReadString('PathEdit')) then
       try
         RegEdit := TRegistry.Create(KEY_WRITE OR KEY_WOW64_64KEY);
         RegEdit.Access  := KEY_WRITE;
         RegEdit.RootKey := HKEY_CURRENT_USER;

         RegEdit.OpenKey('NFe\FBird\',False);
         RegEdit.WriteString('PathEdit','C:\Sheild\FBird');

         RegEdit.CloseKey;
         Regedit.Free;

         SendNotifyMessage(HWND_BROADCAST, WM_SETTINGCHANGE,0,lParam);
       except
         on E: Exception do
         begin
           oErro(Application.Handle,'Falha ao tentar acessar banco de dados !' + #13 +
                        'Verifique a sua conexão de internet.'     + #13 + #13 +
                         E.Message);

           RegEdit.CloseKey;
           RegEdit.Free;

           Application.Terminate;
         end;
       end;

    { IP (LAN / WAN) }
    if oEmpty(RegConsulta.ReadString('IPEdit')) then
       try
         RegEdit := TRegistry.Create(KEY_WRITE OR KEY_WOW64_64KEY);
         RegEdit.Access  := KEY_WRITE;
         RegEdit.RootKey := HKEY_CURRENT_USER;

         RegEdit.OpenKey('NFe\FBird\',False);
         RegEdit.WriteString('IPEdit','localhost');

         RegEdit.CloseKey;
         Regedit.Free;

         SendNotifyMessage(HWND_BROADCAST, WM_SETTINGCHANGE,0,lParam);
       except
         on E: Exception do
         begin
           oErro(Application.Handle,'Falha ao tentar acessar banco de dados !' + #13 +
                        'Verifique a sua conexão de internet.'     + #13 + #13 +
                         E.Message);

           RegEdit.CloseKey;
           RegEdit.Free;

           Application.Terminate;
         end;
       end;

    { CONNECT }
    DBEdicao.Connected    := False;
    DBEdicao.DataBaseName := EmptyStr;
    DBEdicao.DataBaseName := RegConsulta.ReadString('IPEdit') + '/3050:' + RegConsulta.ReadString('PathEdit') + '\' + RegConsulta.ReadString('DataEditName');
    oODatabase(DBEdicao);

    if not DBEdicao.TestConnected then
       oException(Nil,'Falha ao tentar conectar banco de dados !' + #13 +
                      'DB Edit: ' + DBEdicao.DatabaseName   + #13 + #13 +
                      'Verifique as conexões da rede local e internet');
  finally
    RegConsulta.CloseKey;
    RegConsulta.Free;

    if (not DBERP.TestConnected) or (not DBEdicao.TestConnected) then
        Application.Terminate;
  end;
end;

procedure TFBird.DataModuleDestroy(Sender: TObject);
begin
  try
    oCDatabase(DBErp);
    oCDatabase(DBEdicao);
    oCDatabase(DBB2B);
  except
    on E: Exception do
    begin
      raise exception.Create('Erro ao tentar finalizar banco de dados !');
    end;
  end;  
end;

procedure TFBird.DBErpAfterConnect(Sender: TObject);
begin
  with DBEvent do
  begin
    UnregisterEvents;

    Events.Add('Caixa');
    Events.Add('Pedido Chegou !');

    RegisterEvents;
  end;
end;

procedure TFBird.DBErpBeforeDisconnect(Sender: TObject);
begin
  DBEvent.UnRegisterEvents;
  DBEvent.Events.Clear;
end;

procedure TFBird.DBEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  if not ALockWindowUpdate then
  begin
    bExecCaixa;
    
    if Application.MainForm <> Nil then
       with Application.MainForm do
       begin
         Application.HintHidePause := 5000;
         Hint := 'Nº: 998589 de 25/01/24 07:17 - Valor Total: R$ 999,999.99 - Nº Itens: 76' + #13 +
                 'CENTER PANO LOJA DE PLÁSTICOS LTDA' + #13 +
                 'MÁRCIO - EDUARDO BATISTA';

         SetHkHintStyle(htAzul);
         SetHintParams(EventName,'Sistema B2B',True, htInforma);

         THintHidePause.Interval := Application.HintHidePause;
         THintHidePause.Enabled  := True;
       end;
  end;
end;

procedure TFBird.THintHidePauseTimer(Sender: TObject);
begin
  if Application.MainForm <> Nil then
     with Application.MainForm do
     begin
       Hint := EmptyStr;
     end;

  with Application do
  begin
    HintWindowClass := RECParametros.DEFHintWindowClass;
    HintHidePause   := 2500;

    ShowHint := False;
    ShowHint := True;
  end;

  THintHidePause.Enabled := False;
end;

procedure TFBird.FBCAD_PROCalcFields(DataSet: TDataSet);
var
  BRet: Boolean;
  i,j : Integer;
begin
  FBCAD_PROC_COMP1.Value     := '';
  FBCAD_PROC_COMP2.Value     := '';

  BRet := false;
  for i := 1 to length(FBCAD_PROCMP_PAD.AsString) do
  begin
    if copy(FBCAD_PROCMP_PAD.AsString,i,1) = ':' then
    begin
      BRet := true;
      break;
    end;
  end;

  if not BRet then
  begin
    if length(FBCAD_PROCMP_PAD.AsString) > 40 then
    begin
      j := 0;
      for i := 1 to length(FBCAD_PROCMP_PAD.AsString) do
      begin
        if copy(FBCAD_PROCMP_PAD.AsString,i,1) = ' ' then
        begin
          inc(j);
        end;

        if j = 4 then
           break;

        FBCAD_PROC_COMP1.Value := FBCAD_PROC_COMP1.Value + copy(FBCAD_PROCMP_PAD.AsString,i,1);
      end;
      FBCAD_PROC_COMP2.Value := trim(copy(FBCAD_PROCMP_PAD.AsString,i,40));
    end else
    FBCAD_PROC_COMP1.Value := FBCAD_PROCMP_PAD.AsString;
  end else
  begin
    inc(i);
    for j := i to length(FBCAD_PROCMP_PAD.AsString) do
    begin
      if copy(FBCAD_PROCMP_PAD.AsString,j,1) = ':' then
      begin
        for i := j downto 1 do
        begin
          if copy(FBCAD_PROCMP_PAD.AsString,i,1) = ' ' then
          begin
            FBCAD_PROC_COMP1.Value := TRIM(copy(FBCAD_PROCMP_PAD.AsString,1,i));
            FBCAD_PROC_COMP2.Value := TRIM(copy(FBCAD_PROCMP_PAD.AsString,i,120));
            break;
          end;
        end;
        break;
      end;
    end;
  end;

  { Estoque }
  FBCAD_PROC_EST_QTDE.Value := FBCAD_PROEPE_QTDE.AsFloat;
  FBCAD_PROC_EST_QTRL.Value := FBCAD_PROEPE_QTRL.AsInteger;

  { Preços }
  if RECParametros.PED_PRECO   = 'ATACAREJO' then
  begin
    FBCAD_PROC_VPRC_PAD.Value := FBCAD_PROVPRC_ATV.AsFloat;
    FBCAD_PROC_VPRC_PRZ.Value := FBCAD_PROVPRC_ATV_PRZ.AsFloat;
    FBCAD_PROC_VPRC_PRO.Value := FBCAD_PROVPRC_ATV_PRO.AsFloat;
    FBCAD_PROC_VPRC_PAD.Tag   := 1;
  end else
  if RECParametros.PED_PRECO   = 'COMPRAS' then
  begin
    FBCAD_PROC_VPRC_PAD.Value := 0;
    FBCAD_PROC_VPRC_PRZ.Value := 0;
    FBCAD_PROC_VPRC_PRO.Value := 0;
    FBCAD_PROC_VPRC_PAD.Tag   := 2;

    { Estoque Compras }
    FBCAD_PROC_EST_QTDE.Value := FBCAD_PROECO_QTDE.AsFloat;
    FBCAD_PROC_EST_QTRL.Value := FBCAD_PROECO_QTRL.AsInteger;
  end else
  if RECParametros.PED_PRECO   = 'LOJA VIRTUAL' then
  begin
    FBCAD_PROC_VPRC_PAD.Value := FBird.FBCAD_PROVPRC_LJV.AsFloat;
    FBCAD_PROC_VPRC_PRZ.Value := 0;
    FBCAD_PROC_VPRC_PRO.Value := 0;
    FBCAD_PROC_VPRC_PAD.Tag   := 3;
  end else
  if RECParametros.PED_PRECO   = 'REPRESENTANTE' then
  begin
    FBCAD_PROC_VPRC_PAD.Value := 0;
    FBCAD_PROC_VPRC_PRZ.Value := 0;
    FBCAD_PROC_VPRC_PRO.Value := 0;
    FBCAD_PROC_VPRC_PAD.Tag   := 4;
  end else
  if RECParametros.PED_PRECO   = 'VAREJO' then
  begin
    FBCAD_PROC_VPRC_PAD.Value := 0;
    FBCAD_PROC_VPRC_PRZ.Value := 0;
    FBCAD_PROC_VPRC_PRO.Value := 0;
    FBCAD_PROC_VPRC_PAD.Tag   := 5;
  end else
  begin
    FBCAD_PROC_VPRC_PAD.Value := FBCAD_PROVPRC_PAD.AsFloat;
    FBCAD_PROC_VPRC_PRZ.Value := FBCAD_PROVPRC_PAD_PRZ.AsFloat;
    FBCAD_PROC_VPRC_PRO.Value := FBCAD_PROVPRC_PAD_PRO.AsFloat;
    FBCAD_PROC_VPRC_PAD.Tag   := 0;
  end;
end;

end.
