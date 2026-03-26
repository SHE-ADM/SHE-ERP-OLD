unit pimporta_geral;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB, FMTBcd, StrUtils,
  IBCustomDataSet, IBQuery, RxSpeedBar, ComCtrls, ExtCtrls, StdCtrls, XMLDoc, XMLIntf,
  dxExEdtr, dxEdLib, dxCntner, dxEditor, dxPageControl, dxTL, dxDBCtrl,
  dxDBGrid, DBCtrls, DBTables, math, dxDBTLCl, dxGrClms, dxDBELib, IBEvents;

type
  Tfrmimporta_geral = class(Tfrmpadr3)
    GroupBox1: TGroupBox;
    Label8: TLabel;
    edTXT: TdxMaskEdit;
    cbFANT: TdxImageEdit;
    clCAD_PRO_TREL: TLabel;
    cbTIPO: TdxImageEdit;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    pcSUM: TdxPageControl;
    tsSUM: TdxTabSheet;
    ped_cab: TIBQuery;
    ped_ite: TIBQuery;
    dtsped_ite: TDataSource;
    ped_cabID: TIntegerField;
    ped_cabROM_CDOC: TIntegerField;
    ped_cabROM_CDPR: TIntegerField;
    ped_cabROM_CDPD: TIntegerField;
    ped_cabROM_CDRO: TIntegerField;
    ped_cabROM_CDRD: TIntegerField;
    ped_cabROM_CDNF: TIntegerField;
    ped_cabROM_CDBX: TIntegerField;
    ped_cabROM_CDCX: TIntegerField;
    ped_cabROM_DERO: TIBStringField;
    ped_cabROM_STPD: TIBStringField;
    ped_cabROM_STCO: TIBStringField;
    ped_cabROM_STFI: TIBStringField;
    ped_cabROM_DROM: TDateField;
    ped_cabROM_HROM: TTimeField;
    ped_cabROM_DBAI: TDateField;
    ped_cabROM_DCAN: TDateField;
    ped_cabROM_DNFS: TDateField;
    ped_cabROM_DEXP: TDateField;
    ped_cabROM_HEXP: TTimeField;
    ped_cabROM_CEXP: TIntegerField;
    ped_cabROM_CCLI: TIntegerField;
    ped_cabROM_CVEN: TIntegerField;
    ped_cabROM_CREP: TIntegerField;
    ped_cabROM_CPAG: TIntegerField;
    ped_cabROM_QTVE: TIBBCDField;
    ped_cabROM_QTSP: TIBBCDField;
    ped_cabROM_QTPD: TIBBCDField;
    ped_cabROM_RLVE: TIntegerField;
    ped_cabROM_TSDE: TIBBCDField;
    ped_cabROM_TDSC: TIBStringField;
    ped_cabROM_PDSC: TIBBCDField;
    ped_cabROM_CDSC: TIBBCDField;
    ped_cabROM_ADSC: TIBBCDField;
    ped_cabROM_TCDE: TIBBCDField;
    ped_cabROM_CONC: TSmallintField;
    ped_cabROM_OBSE: TMemoField;
    ped_cabROM_STA: TIBStringField;
    ped_cabROM_COMI: TIBBCDField;
    rom_cab: TIBQuery;
    rom_ite: TIBQuery;
    dtsrom_ite: TDataSource;
    rom_cabID: TIntegerField;
    rom_cabROM_CDOC: TIntegerField;
    rom_cabROM_CDPR: TIntegerField;
    rom_cabROM_CDPD: TIntegerField;
    rom_cabROM_CDRO: TIntegerField;
    rom_cabROM_CDRD: TIntegerField;
    rom_cabROM_CDNF: TIntegerField;
    rom_cabROM_CDBX: TIntegerField;
    rom_cabROM_CDCX: TIntegerField;
    rom_cabROM_DERO: TIBStringField;
    rom_cabROM_STPD: TIBStringField;
    rom_cabROM_STCO: TIBStringField;
    rom_cabROM_STFI: TIBStringField;
    rom_cabROM_DROM: TDateField;
    rom_cabROM_HROM: TTimeField;
    rom_cabROM_DBAI: TDateField;
    rom_cabROM_DCAN: TDateField;
    rom_cabROM_DNFS: TDateField;
    rom_cabROM_DEXP: TDateField;
    rom_cabROM_HEXP: TTimeField;
    rom_cabROM_CEXP: TIntegerField;
    rom_cabROM_CCLI: TIntegerField;
    rom_cabROM_CVEN: TIntegerField;
    rom_cabROM_CREP: TIntegerField;
    rom_cabROM_CPAG: TIntegerField;
    rom_cabROM_QTVE: TIBBCDField;
    rom_cabROM_QTSP: TIBBCDField;
    rom_cabROM_QTPD: TIBBCDField;
    rom_cabROM_RLVE: TIntegerField;
    rom_cabROM_TSDE: TIBBCDField;
    rom_cabROM_TDSC: TIBStringField;
    rom_cabROM_PDSC: TIBBCDField;
    rom_cabROM_CDSC: TIBBCDField;
    rom_cabROM_ADSC: TIBBCDField;
    rom_cabROM_TCDE: TIBBCDField;
    rom_cabROM_CONC: TSmallintField;
    rom_cabROM_OBSE: TMemoField;
    rom_cabROM_STA: TIBStringField;
    rom_cabROM_COMI: TIBBCDField;
    prg_cab: TIBQuery;
    prg_ite: TIBQuery;
    dtsprg_ite: TDataSource;
    ped_cabCLI_FANT: TIBStringField;
    ped_cabUSU_DUSU: TIBStringField;
    ped_cabREP_FANT: TIBStringField;
    ped_cabPAG_DPAG: TIBStringField;
    dtsped_cab: TDataSource;
    dtsrom_cab: TDataSource;
    rom_cabCLI_FANT: TIBStringField;
    rom_cabUSU_DUSU: TIBStringField;
    rom_cabREP_FANT: TIBStringField;
    rom_cabPAG_DPAG: TIBStringField;
    prg_cabID: TIntegerField;
    prg_cabROM_CDOC: TIntegerField;
    prg_cabROM_CDPR: TIntegerField;
    prg_cabROM_CDPD: TIntegerField;
    prg_cabROM_CDRO: TIntegerField;
    prg_cabROM_CDRD: TIntegerField;
    prg_cabROM_CDNF: TIntegerField;
    prg_cabROM_CDBX: TIntegerField;
    prg_cabROM_CDCX: TIntegerField;
    prg_cabROM_DERO: TIBStringField;
    prg_cabROM_STPD: TIBStringField;
    prg_cabROM_STCO: TIBStringField;
    prg_cabROM_STFI: TIBStringField;
    prg_cabROM_DROM: TDateField;
    prg_cabROM_HROM: TTimeField;
    prg_cabROM_DBAI: TDateField;
    prg_cabROM_DCAN: TDateField;
    prg_cabROM_DNFS: TDateField;
    prg_cabROM_DEXP: TDateField;
    prg_cabROM_HEXP: TTimeField;
    prg_cabROM_CEXP: TIntegerField;
    prg_cabROM_CCLI: TIntegerField;
    prg_cabROM_CVEN: TIntegerField;
    prg_cabROM_CREP: TIntegerField;
    prg_cabROM_CPAG: TIntegerField;
    prg_cabROM_QTVE: TIBBCDField;
    prg_cabROM_QTSP: TIBBCDField;
    prg_cabROM_QTPD: TIBBCDField;
    prg_cabROM_RLVE: TIntegerField;
    prg_cabROM_TSDE: TIBBCDField;
    prg_cabROM_TDSC: TIBStringField;
    prg_cabROM_PDSC: TIBBCDField;
    prg_cabROM_CDSC: TIBBCDField;
    prg_cabROM_ADSC: TIBBCDField;
    prg_cabROM_TCDE: TIBBCDField;
    prg_cabROM_CONC: TSmallintField;
    prg_cabROM_OBSE: TMemoField;
    prg_cabROM_STA: TIBStringField;
    prg_cabROM_COMI: TIBBCDField;
    prg_cabCLI_FANT: TIBStringField;
    prg_cabUSU_DUSU: TIBStringField;
    prg_cabREP_FANT: TIBStringField;
    prg_cabPAG_DPAG: TIBStringField;
    dtsprg_cab: TDataSource;
    tSHEILD: TIBTransaction;
    imp_ite: TIBDataSet;
    imp_iteID: TIntegerField;
    imp_iteROM_ITEM: TIBStringField;
    imp_iteROM_CART: TIBStringField;
    imp_iteROM_IPRO: TIntegerField;
    imp_iteROM_CPRO: TIBStringField;
    imp_iteROM_IPR2: TIntegerField;
    imp_iteROM_CPR2: TIBStringField;
    imp_iteROM_DPRO: TIBStringField;
    imp_iteROM_CCOR: TIntegerField;
    imp_iteROM_RCOR: TIBStringField;
    imp_iteROM_DCOR: TIBStringField;
    imp_iteROM_CCO2: TIntegerField;
    imp_iteROM_RCO2: TIBStringField;
    imp_iteROM_DCO2: TIBStringField;
    imp_iteROM_DUNI: TIBStringField;
    imp_iteROM_QTDE: TIBBCDField;
    imp_iteROM_VDSC: TIBBCDField;
    imp_iteROM_TOTA: TIBBCDField;
    imp_iteROM_CDET: TIBStringField;
    imp_iteROM_CBAR: TIBStringField;
    imp_iteROM_FOTO: TBlobField;
    imp_iteROM_QDIS: TIBBCDField;
    imp_iteROM_PPRO: TIBBCDField;
    imp_iteROM_PEMB: TIBBCDField;
    imp_iteROM_CGRD: TIBStringField;
    imp_iteROM_DGRD: TIBStringField;
    imp_iteROM_FLAG: TSmallintField;
    imp_iteROM_CDOC: TIntegerField;
    imp_iteROM_CCAB: TIntegerField;
    imp_iteROM_CDPR: TIntegerField;
    imp_iteROM_CDPD: TIntegerField;
    imp_iteROM_CDRO: TIntegerField;
    imp_iteROM_CDNF: TIntegerField;
    imp_iteROM_QTSP: TIBBCDField;
    imp_iteROM_QTPD: TIBBCDField;
    imp_iteROM_QTRL: TIntegerField;
    imp_iteROM_RLSP: TIntegerField;
    imp_iteROM_RLPD: TIntegerField;
    imp_iteROM_RLDI: TIntegerField;
    imp_iteROM_METR: TIBBCDField;
    imp_iteROM_PESO: TIBBCDField;
    imp_iteROM_REND: TIBBCDField;
    imp_iteROM_PSCN: TIBBCDField;
    imp_iteROM_PSMR: TIBBCDField;
    imp_iteROM_VBCIPI: TIBBCDField;
    imp_iteROM_PIPI: TIBBCDField;
    imp_iteROM_VIPI: TIBBCDField;
    imp_iteROM_TPRC: TIBStringField;
    imp_iteROM_PCOR: TIBStringField;
    imp_iteROM_PCO2: TIBStringField;
    imp_iteROM_ABCD: TIBStringField;
    consulta_s: TIBQuery;
    pro_cab: TIBQuery;
    pro_ite: TIBQuery;
    dtspro_ite: TDataSource;
    dtspro_cab: TDataSource;
    pro_cabID: TIntegerField;
    pro_cabPRO_CDEP: TIntegerField;
    pro_cabPRO_CFOR: TIntegerField;
    pro_cabPRO_CUSU: TIntegerField;
    pro_cabPRO_DCAD: TDateField;
    pro_cabPRO_DNFS: TDateField;
    pro_cabPRO_CDNF: TIBStringField;
    pro_cabPRO_OPER: TIBStringField;
    pro_cabPRO_PECA: TIntegerField;
    pro_cabPRO_QTDE: TIBBCDField;
    pro_cabPRO_OBSE: TMemoField;
    pro_cabPRO_STA: TIBStringField;
    pro_cabPRO_DUSU: TIBStringField;
    pro_iteID: TIntegerField;
    pro_itePRO_CDEP: TIntegerField;
    pro_itePRO_CDRO: TIntegerField;
    pro_itePRO_ITEM: TIBStringField;
    pro_itePRO_CPRO: TIntegerField;
    pro_itePRO_CPR2: TIntegerField;
    pro_itePRO_CDET: TIBStringField;
    pro_itePRO_QTDE: TIBBCDField;
    imp_cab: TIBDataSet;
    imp_cabID: TIntegerField;
    imp_cabROM_CDOC: TIntegerField;
    imp_cabROM_CDPR: TIntegerField;
    imp_cabROM_CDPD: TIntegerField;
    imp_cabROM_CDRO: TIntegerField;
    imp_cabROM_CDRD: TIntegerField;
    imp_cabROM_CDNF: TIntegerField;
    imp_cabROM_CDBX: TIntegerField;
    imp_cabROM_CDCX: TSmallintField;
    imp_cabROM_DERO: TIBStringField;
    imp_cabROM_STPD: TIBStringField;
    imp_cabROM_STCO: TIBStringField;
    imp_cabROM_STFI: TIBStringField;
    imp_cabROM_DROM: TDateField;
    imp_cabROM_HROM: TTimeField;
    imp_cabROM_DBAI: TDateField;
    imp_cabROM_DCAN: TDateField;
    imp_cabROM_DNFS: TDateField;
    imp_cabROM_DEXP: TDateField;
    imp_cabROM_HEXP: TTimeField;
    imp_cabROM_CEXP: TIntegerField;
    imp_cabROM_CCLI: TIntegerField;
    imp_cabROM_DCLI: TIBStringField;
    imp_cabROM_CVEN: TIntegerField;
    imp_cabROM_DVEN: TIBStringField;
    imp_cabROM_CREP: TIntegerField;
    imp_cabROM_DREP: TIBStringField;
    imp_cabROM_CPAG: TIntegerField;
    imp_cabROM_DPAG: TIBStringField;
    imp_cabROM_QTVE: TIBBCDField;
    imp_cabROM_QTSP: TIBBCDField;
    imp_cabROM_QTPD: TIBBCDField;
    imp_cabROM_RLVE: TIntegerField;
    imp_cabROM_TSDE: TIBBCDField;
    imp_cabROM_TDSC: TIBStringField;
    imp_cabROM_PDSC: TIBBCDField;
    imp_cabROM_CDSC: TIBBCDField;
    imp_cabROM_ADSC: TIBBCDField;
    imp_cabROM_TCDE: TIBBCDField;
    imp_cabROM_CONC: TSmallintField;
    imp_cabROM_OBSE: TMemoField;
    imp_cabROM_STA: TIBStringField;
    dbgSUM: TdxDBGrid;
    dtsimp_cab: TDataSource;
    openARQ: TOpenDialog;
    tsXML: TdxTabSheet;
    pcXML: TdxPageControl;
    tsITEM: TdxTabSheet;
    tsFAV: TdxTabSheet;
    tsTRA: TdxTabSheet;
    tsINF: TdxTabSheet;
    dbgNFE_ITE: TdxDBGrid;
    dxDBGrid2: TdxDBGrid;
    imp_ntr: TIBDataSet;
    dtsimp_ntr: TDataSource;
    imp_ntrID: TIntegerField;
    imp_ntrNFE_CCAB: TIntegerField;
    imp_ntrNFE_CTRA: TIntegerField;
    imp_ntrNFE_RAZA: TIBStringField;
    imp_ntrNFE_RG: TIBStringField;
    imp_ntrNFE_CPF: TIBStringField;
    imp_ntrNFE_INSC: TIBStringField;
    imp_ntrNFE_CNPJ: TIBStringField;
    imp_ntrNFE_MODFRETE: TIBStringField;
    imp_ntrNFE_RETTRANSP: TIBStringField;
    imp_ntrNFE_VSERV: TIBBCDField;
    imp_ntrNFE_VBCRET: TIBBCDField;
    imp_ntrNFE_PICMSRET: TIBBCDField;
    imp_ntrNFE_VICMSRET: TIBBCDField;
    imp_ntrNFE_CFOP: TIBStringField;
    imp_ntrNFE_CMUNFG: TIBStringField;
    imp_ntrNFE_PLACA: TIBStringField;
    imp_ntrNFE_TLOG: TIBStringField;
    imp_ntrNFE_LOGR: TIBStringField;
    imp_ntrNFE_CEP: TIBStringField;
    imp_ntrNFE_NUME: TIBStringField;
    imp_ntrNFE_COMP: TIBStringField;
    imp_ntrNFE_BAI: TIBStringField;
    imp_ntrNFE_CID: TIBStringField;
    imp_ntrNFE_UF: TIBStringField;
    imp_ntrNFE_RNTC: TIBStringField;
    imp_ntrNFE_QVOL: TSmallintField;
    imp_ntrNFE_ESP: TIBStringField;
    imp_ntrNFE_MARCA: TIBStringField;
    imp_ntrNFE_NVOL: TIBStringField;
    imp_ntrNFE_PSLQ: TIBBCDField;
    imp_ntrNFE_PSBR: TIBBCDField;
    imp_ntrNFE_NLACRE: TIBStringField;
    imp_nit: TIBDataSet;
    dtsimp_nit: TDataSource;
    dbgNFE_ITENFE_CFOP: TdxDBGridMaskColumn;
    dbgNFE_ITENFE_CPROD: TdxDBGridMaskColumn;
    dbgNFE_ITENFE_NCM: TdxDBGridMaskColumn;
    dbgNFE_ITENFE_XPROD: TdxDBGridMaskColumn;
    dbgNFE_ITENFE_UCOM: TdxDBGridMaskColumn;
    dbgNFE_ITENFE_QCOM: TdxDBGridMaskColumn;
    dbgNFE_ITENFE_VUNCOM: TdxDBGridColumn;
    dbgNFE_ITENFE_VPROD: TdxDBGridMaskColumn;
    dxDBGrid3: TdxDBGrid;
    dbgNFE_TRA: TdxDBGrid;
    dbgNFE_TRANFE_RAZA: TdxDBGridMaskColumn;
    dbgNFE_TRANFE_QVOL: TdxDBGridMaskColumn;
    dbgNFE_TRANFE_ESP: TdxDBGridMaskColumn;
    dbgNFE_TRANFE_PSLQ: TdxDBGridMaskColumn;
    dbgNFE_TRANFE_PSBR: TdxDBGridMaskColumn;
    imp_nca: TIBDataSet;
    dtsimp_nca: TDataSource;
    memoINFCPL: TdxDBMemo;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1NFE_CDNF: TdxDBGridMaskColumn;
    dxDBGrid1NFE_DEMI: TdxDBGridDateColumn;
    dxDBGrid1NFE_DSAI: TdxDBGridDateColumn;
    dxDBGrid1NFE_VBC: TdxDBGridMaskColumn;
    dxDBGrid1NFE_VICMS: TdxDBGridMaskColumn;
    dxDBGrid1NFE_VPROD: TdxDBGridMaskColumn;
    dxDBGrid1NFE_VFRETE: TdxDBGridMaskColumn;
    dxDBGrid1NFE_VII: TdxDBGridMaskColumn;
    dxDBGrid1NFE_VIPI: TdxDBGridMaskColumn;
    dxDBGrid1NFE_VPIS: TdxDBGridMaskColumn;
    dxDBGrid1NFE_VCOFINS: TdxDBGridMaskColumn;
    dxDBGrid1NFE_VOUTRO: TdxDBGridMaskColumn;
    dxDBGrid1NFE_VNF: TdxDBGridMaskColumn;
    dbgNFE_ITENFE_ITEMPED: TdxDBGridMaskColumn;
    dtsimp_ite: TDataSource;
    dtsimp_ndu: TDataSource;
    imp_ndu: TIBDataSet;
    imp_nduID: TIntegerField;
    imp_nduNFE_CDRO: TIntegerField;
    imp_nduNFE_CCAB: TIntegerField;
    imp_nduNFE_CFAV: TIntegerField;
    imp_nduNFE_DROM: TDateField;
    imp_nduNFE_CDNF: TIntegerField;
    imp_nduNFE_DNFE: TDateField;
    imp_nduNFE_TITU: TIBStringField;
    imp_nduNFE_STPD: TIBStringField;
    imp_nduNFE_STCO: TIBStringField;
    imp_nduNFE_STFI: TIBStringField;
    imp_nduNFE_PARC: TIntegerField;
    imp_nduNFE_DVEN: TDateField;
    imp_nduNFE_VDUP: TIBBCDField;
    imp_nduNFE_DPAG: TDateField;
    imp_nduNFE_VPAG: TIBBCDField;
    imp_nduNFE_VPEN: TIBBCDField;
    imp_nduNFE_OBSE: TMemoField;
    imp_nduNFE_STA: TIBStringField;
    tsDUP: TdxTabSheet;
    dxDBGrid4: TdxDBGrid;
    dxDBGrid4NFE_TITU: TdxDBGridMaskColumn;
    dxDBGrid4NFE_DVEN: TdxDBGridDateColumn;
    dxDBGrid4NFE_VDUP: TdxDBGridCurrencyColumn;
    ped_iteID: TIntegerField;
    ped_iteROM_CCAB: TIntegerField;
    ped_iteROM_CDOC: TIntegerField;
    ped_iteROM_CDPR: TIntegerField;
    ped_iteROM_CDPD: TIntegerField;
    ped_iteROM_CDRO: TIntegerField;
    ped_iteROM_CDRD: TIntegerField;
    ped_iteROM_CDNF: TIntegerField;
    ped_iteROM_ITEM: TIBStringField;
    ped_iteROM_CPRO: TIntegerField;
    ped_iteROM_CPR2: TIntegerField;
    ped_iteROM_CDET: TIBStringField;
    ped_iteROM_QTDE: TIBBCDField;
    ped_iteROM_QTRL: TIntegerField;
    ped_iteROM_QTSP: TIBBCDField;
    ped_iteROM_RLSP: TIntegerField;
    ped_iteROM_QTPD: TIBBCDField;
    ped_iteROM_RLPD: TIntegerField;
    ped_iteROM_UNIT: TFloatField;
    ped_iteROM_PREC: TFloatField;
    ped_iteROM_VDSC: TIBBCDField;
    ped_iteROM_TOTA: TIBBCDField;
    ped_iteROM_FLAG: TIBStringField;
    ped_iteROM_COMI: TIBBCDField;
    ped_iteROM_DPRO: TIBStringField;
    ped_iteROM_TPRC: TIBStringField;
    ped_iteROM_ABCD: TIBStringField;
    ped_iteROM_DCOR: TIBStringField;
    ped_iteROM_PCOR: TIBStringField;
    ped_iteROM_DCO2: TIBStringField;
    ped_iteROM_PCO2: TIBStringField;
    rom_iteID: TIntegerField;
    rom_iteROM_CCAB: TIntegerField;
    rom_iteROM_CDOC: TIntegerField;
    rom_iteROM_CDPR: TIntegerField;
    rom_iteROM_CDPD: TIntegerField;
    rom_iteROM_CDRO: TIntegerField;
    rom_iteROM_CDRD: TIntegerField;
    rom_iteROM_CDNF: TIntegerField;
    rom_iteROM_ITEM: TIBStringField;
    rom_iteROM_CPRO: TIntegerField;
    rom_iteROM_CPR2: TIntegerField;
    rom_iteROM_CDET: TIBStringField;
    rom_iteROM_QTDE: TIBBCDField;
    rom_iteROM_QTRL: TIntegerField;
    rom_iteROM_QTSP: TIBBCDField;
    rom_iteROM_RLSP: TIntegerField;
    rom_iteROM_QTPD: TIBBCDField;
    rom_iteROM_RLPD: TIntegerField;
    rom_iteROM_UNIT: TFloatField;
    rom_iteROM_PREC: TFloatField;
    rom_iteROM_VDSC: TIBBCDField;
    rom_iteROM_TOTA: TIBBCDField;
    rom_iteROM_FLAG: TIBStringField;
    rom_iteROM_DPRO: TIBStringField;
    rom_iteROM_COMI: TIBBCDField;
    rom_iteROM_TPRC: TIBStringField;
    rom_iteROM_ABCD: TIBStringField;
    rom_iteROM_DCOR: TIBStringField;
    rom_iteROM_PCOR: TIBStringField;
    rom_iteROM_DCO2: TIBStringField;
    rom_iteROM_PCO2: TIBStringField;
    prg_iteID: TIntegerField;
    prg_iteROM_CCAB: TIntegerField;
    prg_iteROM_CDOC: TIntegerField;
    prg_iteROM_CDPR: TIntegerField;
    prg_iteROM_CDPD: TIntegerField;
    prg_iteROM_CDRO: TIntegerField;
    prg_iteROM_CDRD: TIntegerField;
    prg_iteROM_CDNF: TIntegerField;
    prg_iteROM_ITEM: TIBStringField;
    prg_iteROM_CPRO: TIntegerField;
    prg_iteROM_CPR2: TIntegerField;
    prg_iteROM_CDET: TIBStringField;
    prg_iteROM_QTDE: TIBBCDField;
    prg_iteROM_QTRL: TIntegerField;
    prg_iteROM_QTSP: TIBBCDField;
    prg_iteROM_RLSP: TIntegerField;
    prg_iteROM_QTPD: TIBBCDField;
    prg_iteROM_RLPD: TIntegerField;
    prg_iteROM_UNIT: TFloatField;
    prg_iteROM_PREC: TFloatField;
    prg_iteROM_VDSC: TIBBCDField;
    prg_iteROM_TOTA: TIBBCDField;
    prg_iteROM_FLAG: TIBStringField;
    prg_iteROM_COMI: TIBBCDField;
    prg_iteROM_DPRO: TIBStringField;
    prg_iteROM_TPRC: TIBStringField;
    prg_iteROM_ABCD: TIBStringField;
    prg_iteROM_DCOR: TIBStringField;
    prg_iteROM_PCOR: TIBStringField;
    prg_iteROM_DCO2: TIBStringField;
    prg_iteROM_PCO2: TIBStringField;
    imp_iteROM_PRCA: TFloatField;
    imp_iteROM_PRPA: TFloatField;
    imp_iteROM_VPRC: TFloatField;
    imp_iteROM_VPRO: TFloatField;
    imp_iteROM_RPRC: TFloatField;
    imp_iteROM_RPRO: TFloatField;
    imp_iteROM_PCOM: TFloatField;
    imp_iteROM_CUST: TFloatField;
    imp_iteROM_UNIT: TFloatField;
    imp_iteROM_PREC: TFloatField;
    cad_tra: TIBDataSet;
    cad_traID: TIntegerField;
    cad_traTRA_RAZA: TIBStringField;
    cad_traTRA_FANT: TIBStringField;
    cad_traTRA_CONT: TIBStringField;
    cad_traTRA_DCAD: TDateField;
    cad_traTRA_STA: TIBStringField;
    cad_traTRA_MAIL: TIBStringField;
    cad_traTRA_DDD: TIBStringField;
    cad_traTRA_TEL1: TIBStringField;
    cad_traTRA_TEL2: TIBStringField;
    cad_traTRA_FAX: TIBStringField;
    cad_traTRA_CEL: TIBStringField;
    cad_traTRA_RG: TIBStringField;
    cad_traTRA_CPF: TIBStringField;
    cad_traTRA_INSC: TIBStringField;
    cad_traTRA_CNPJ: TIBStringField;
    cad_traTRA_TLOG: TIBStringField;
    cad_traTRA_LOGR: TIBStringField;
    cad_traTRA_CEP: TIBStringField;
    cad_traTRA_NUME: TIBStringField;
    cad_traTRA_COMP: TIBStringField;
    cad_traTRA_BAI: TIBStringField;
    cad_traTRA_CID: TIBStringField;
    cad_traTRA_ESTA: TIBStringField;
    cad_traTRA_TLOC: TIBStringField;
    cad_traTRA_LOGC: TIBStringField;
    cad_traTRA_CEPC: TIBStringField;
    cad_traTRA_NUMC: TIBStringField;
    cad_traTRA_COMC: TIBStringField;
    cad_traTRA_BAIC: TIBStringField;
    cad_traTRA_CIDC: TIBStringField;
    cad_traTRA_ESTC: TIBStringField;
    cad_traTRA_OBSO: TMemoField;
    cad_traTRA_STAV: TIBStringField;
    cad_traTRA_VULT: TIBBCDField;
    cad_traTRA_TPVE: TIBStringField;
    cad_traTRA_OBSE: TMemoField;
    cad_traTRA_TLOV: TIBStringField;
    cad_traTRA_LOGV: TIBStringField;
    cad_traTRA_CEPV: TIBStringField;
    cad_traTRA_NUMV: TIBStringField;
    cad_traTRA_COMV: TIBStringField;
    cad_traTRA_BAIV: TIBStringField;
    cad_traTRA_CIDV: TIBStringField;
    cad_traTRA_ESTV: TIBStringField;
    cad_traTRA_RICM: TIBStringField;
    cad_traTRA_CPAG: TIBStringField;
    cad_traTRA_DPAG: TIBStringField;
    cad_traTRA_CMUN: TIBStringField;
    cad_traTRA_DALT: TDateField;
    cad_traTRA_CTRA: TIntegerField;
    cad_traTRA_DTRA: TIBStringField;
    cad_traTRA_DFUN: TDateField;
    cad_traTRA_CICM: TIBStringField;
    cad_traTRA_RAMO: TIBStringField;
    cad_traTRA_CMUV: TIBStringField;
    cad_traTRA_CMUC: TIBStringField;
    cad_traTRA_DD2: TIBStringField;
    cad_traTRA_DD3: TIBStringField;
    cad_traTRA_DD4: TIBStringField;
    cad_traTRA_DD5: TIBStringField;
    cad_traTRA_DD6: TIBStringField;
    cad_traTRA_TEL3: TIBStringField;
    cad_traTRA_TCE1: TIBStringField;
    cad_traTRA_TCE2: TIBStringField;
    cad_traTRA_NCEL: TIBStringField;
    cad_traTRA_NEID: TIBStringField;
    cad_traTRA_FCON: TIBStringField;
    cad_traTRA_FMAI: TIBStringField;
    cad_traTRA_FDDD: TIBStringField;
    cad_traTRA_FTE1: TIBStringField;
    cad_traTRA_FDD2: TIBStringField;
    cad_traTRA_FTE2: TIBStringField;
    cad_traTRA_FDD3: TIBStringField;
    cad_traTRA_FTE3: TIBStringField;
    cad_traTRA_FDD4: TIBStringField;
    cad_traTRA_FFAX: TIBStringField;
    cad_traTRA_FDD5: TIBStringField;
    cad_traTRA_FCEL: TIBStringField;
    cad_traTRA_FTC1: TIBStringField;
    cad_traTRA_FDD6: TIBStringField;
    cad_traTRA_FNCE: TIBStringField;
    cad_traTRA_FTC2: TIBStringField;
    cad_traTRA_FNID: TIBStringField;
    cad_traTRA_CCON: TIBStringField;
    cad_traTRA_CMAI: TIBStringField;
    cad_traTRA_CDDD: TIBStringField;
    cad_traTRA_CTE1: TIBStringField;
    cad_traTRA_CDD2: TIBStringField;
    cad_traTRA_CTE2: TIBStringField;
    cad_traTRA_CDD3: TIBStringField;
    cad_traTRA_CTE3: TIBStringField;
    cad_traTRA_CDD4: TIBStringField;
    cad_traTRA_CFAX: TIBStringField;
    cad_traTRA_CDD5: TIBStringField;
    cad_traTRA_CCEL: TIBStringField;
    cad_traTRA_CTC1: TIBStringField;
    cad_traTRA_CDD6: TIBStringField;
    cad_traTRA_CNCE: TIBStringField;
    cad_traTRA_CTC2: TIBStringField;
    cad_traTRA_CNID: TIBStringField;
    cad_traTRA_VDSC: TIBBCDField;
    cad_traTRA_CRED: TIBBCDField;
    cad_traTRA_SITE: TIBStringField;
    cad_traTRA_REVE: TIBStringField;
    cad_traTRA_IMUN: TIBStringField;
    cad_traTRA_CCM: TIBStringField;
    cad_traTRA_DULT: TDateField;
    cad_traTRA_REGI: TIBStringField;
    imp_ntrNFE_FANT: TIBStringField;
    imp_iteROM_STFI: TIBStringField;
    imp_iteROM_CSEP: TIntegerField;
    imp_iteROM_DSEP: TIBStringField;
    imp_iteROM_APRC: TIBStringField;
    imp_iteROM_LDSC: TIBBCDField;
    dbgSUMROM_ITEM: TdxDBGridMaskColumn;
    dbgSUMROM_CPRO: TdxDBGridMaskColumn;
    dbgSUMROM_DCOR: TdxDBGridMaskColumn;
    dbgSUMROM_DPRO: TdxDBGridMaskColumn;
    dbgSUMROM_DUNI: TdxDBGridMaskColumn;
    dbgSUMROM_QTDE: TdxDBGridMaskColumn;
    dbgSUMROM_UNIT: TdxDBGridMaskColumn;
    dbgSUMROM_VDSC: TdxDBGridMaskColumn;
    dbgSUMROM_TOTA: TdxDBGridMaskColumn;
    imp_cabROM_VFRT: TIBBCDField;
    imp_cabROM_DTRA: TIBStringField;
    ped_cabROM_DPRD: TDateField;
    ped_cabROM_CTNR: TIBStringField;
    ped_cabROM_DEMB: TDateField;
    ped_cabROM_DDES: TDateField;
    ped_cabROM_CBAI: TIntegerField;
    ped_cabROM_TBAI: TDateTimeField;
    ped_cabROM_UPRN: TIntegerField;
    ped_cabROM_PPRN: TSmallintField;
    ped_cabROM_TPRN: TDateTimeField;
    ped_cabROM_VFRT: TIBBCDField;
    ped_cabROM_DTRA: TIBStringField;
    rom_cabROM_DPRD: TDateField;
    rom_cabROM_CTNR: TIBStringField;
    rom_cabROM_DEMB: TDateField;
    rom_cabROM_DDES: TDateField;
    rom_cabROM_CBAI: TIntegerField;
    rom_cabROM_TBAI: TDateTimeField;
    rom_cabROM_UPRN: TIntegerField;
    rom_cabROM_PPRN: TSmallintField;
    rom_cabROM_TPRN: TDateTimeField;
    rom_cabROM_VFRT: TIBBCDField;
    rom_cabROM_DTRA: TIBStringField;
    prg_cabROM_DPRD: TDateField;
    prg_cabROM_CTNR: TIBStringField;
    prg_cabROM_DEMB: TDateField;
    prg_cabROM_DDES: TDateField;
    prg_cabROM_CBAI: TIntegerField;
    prg_cabROM_TBAI: TDateTimeField;
    prg_cabROM_UPRN: TIntegerField;
    prg_cabROM_PPRN: TSmallintField;
    prg_cabROM_TPRN: TDateTimeField;
    pro_cabPRO_TIPO: TIBStringField;
    pro_cabPRO_DMAP: TIBStringField;
    pro_cabPRO_CTNR: TIBStringField;
    pro_itePRO_DMAP: TIBStringField;
    pro_itePRO_CTNR: TIBStringField;
    ped_iteROM_DUNI: TIBStringField;
    ped_iteROM_OBSE: TMemoField;
    rom_iteROM_DUNI: TIBStringField;
    rom_iteROM_OBSE: TMemoField;
    prg_iteROM_DUNI: TIBStringField;
    prg_iteROM_OBSE: TMemoField;
    pro_itePRO_LOTE: TIBStringField;
    imp_iteROM_OBSE: TMemoField;
    imp_nitID: TIntegerField;
    imp_nitNFE_CDEP: TSmallintField;
    imp_nitNFE_CCAB: TIntegerField;
    imp_nitNFE_CDNF: TIntegerField;
    imp_nitNFE_INDTOT: TIntegerField;
    imp_nitNFE_IPRO: TIntegerField;
    imp_nitNFE_ITEMPED: TSmallintField;
    imp_nitNFE_XPED: TIBStringField;
    imp_nitNFE_CFOP: TIBStringField;
    imp_nitNFE_CART: TIBStringField;
    imp_nitNFE_CPROD: TIBStringField;
    imp_nitNFE_CEAN: TIBStringField;
    imp_nitNFE_NCM: TIBStringField;
    imp_nitNFE_NVE: TIBStringField;
    imp_nitNFE_ORIG: TIBStringField;
    imp_nitNFE_CST: TIBStringField;
    imp_nitNFE_CEST: TIBStringField;
    imp_nitNFE_DCOR: TIBStringField;
    imp_nitNFE_XPROD: TIBStringField;
    imp_nitNFE_XPROX: TIBStringField;
    imp_nitNFE_UCOM: TIBStringField;
    imp_nitNFE_RCOM: TIntegerField;
    imp_nitNFE_QCOM: TIBBCDField;
    imp_nitNFE_PSBR: TIBBCDField;
    imp_nitNFE_PSLQ: TIBBCDField;
    imp_nitNFE_VUNCOM: TFloatField;
    imp_nitNFE_PREC: TFloatField;
    imp_nitNFE_VPROD: TIBBCDField;
    imp_nitNFE_VNF: TIBBCDField;
    imp_nitNFE_VDESC: TIBBCDField;
    imp_nitNFE_MODBC: TIBStringField;
    imp_nitNFE_PREDBC: TIBBCDField;
    imp_nitNFE_VBC: TIBBCDField;
    imp_nitNFE_PICMS: TIBBCDField;
    imp_nitNFE_VICMS: TIBBCDField;
    imp_nitNFE_PCREDSN: TIBBCDField;
    imp_nitNFE_VCREDICMSSN: TIBBCDField;
    imp_nitNFE_CLISTSERV: TIntegerField;
    imp_nitNFE_MODBCST: TIBStringField;
    imp_nitNFE_MVAST: TIBBCDField;
    imp_nitNFE_PREDBCST: TIBBCDField;
    imp_nitNFE_VBCST: TIBBCDField;
    imp_nitNFE_PICMSST: TIBBCDField;
    imp_nitNFE_VICMSST: TIBBCDField;
    imp_nitNFE_VBCSTRET: TIBBCDField;
    imp_nitNFE_VBCSTDEST: TIBBCDField;
    imp_nitNFE_VICMSSTDEST: TIBBCDField;
    imp_nitNFE_VBCUFDEST: TIBBCDField;
    imp_nitNFE_PFCPUFDEST: TIBBCDField;
    imp_nitNFE_PICMSUFDEST: TIBBCDField;
    imp_nitNFE_CMUNFGISSQN: TIBStringField;
    imp_nitNFE_VBCISSQN: TIBBCDField;
    imp_nitNFE_VALIQISSQN: TIBBCDField;
    imp_nitNFE_VISSQN: TIBBCDField;
    imp_nitNFE_PICMSINTER: TIBBCDField;
    imp_nitNFE_PICMSINTERPART: TIBBCDField;
    imp_nitNFE_VFCPUFDEST: TIBBCDField;
    imp_nitNFE_VICMSUFDEST: TIBBCDField;
    imp_nitNFE_VICMSUFREMET: TIBBCDField;
    imp_nitNFE_VICMSSTRET: TIBBCDField;
    imp_nitNFE_VFRETE: TIBBCDField;
    imp_nitNFE_VSEG: TIBBCDField;
    imp_nitNFE_VOUTRO: TIBBCDField;
    imp_nitNFE_EXTIPI: TIBStringField;
    imp_nitNFE_CSTIPI: TIBStringField;
    imp_nitNFE_VBCIPI: TIBBCDField;
    imp_nitNFE_PIPI: TIBBCDField;
    imp_nitNFE_VIPI: TIBBCDField;
    imp_nitNFE_CSTPIS: TIBStringField;
    imp_nitNFE_VBCPIS: TIBBCDField;
    imp_nitNFE_PPIS: TIBBCDField;
    imp_nitNFE_VPIS: TIBBCDField;
    imp_nitNFE_VBCPISST: TIBBCDField;
    imp_nitNFE_PPISST: TIBBCDField;
    imp_nitNFE_VPISST: TIBBCDField;
    imp_nitNFE_CSTCOFINS: TIBStringField;
    imp_nitNFE_VBCOFINS: TIBBCDField;
    imp_nitNFE_PCOFINS: TIBBCDField;
    imp_nitNFE_VCOFINS: TIBBCDField;
    imp_nitNFE_VBCOFINSST: TIBBCDField;
    imp_nitNFE_PCOFINSST: TIBBCDField;
    imp_nitNFE_VCOFINSST: TIBBCDField;
    imp_nitNFE_VBCIMP: TIBBCDField;
    imp_nitNFE_VDESCDI: TIBBCDField;
    imp_nitNFE_VDESPADU: TIBBCDField;
    imp_nitNFE_VIIIMP: TIBBCDField;
    imp_nitNFE_VIOFIMP: TIBBCDField;
    imp_nitNFE_VMULTA: TIBBCDField;
    imp_nitNFE_VAFRMM: TIBBCDField;
    imp_nitNFE_NDI: TIBStringField;
    imp_nitNFE_DDI: TDateField;
    imp_nitNFE_NADICAO: TSmallintField;
    imp_nitNFE_NSEQADIC: TSmallintField;
    imp_nitNFE_XLOCEMBARQ: TIBStringField;
    imp_nitNFE_UFEMBARQ: TIBStringField;
    imp_nitNFE_XLOCDESEMB: TIBStringField;
    imp_nitNFE_UFDESEMB: TIBStringField;
    imp_nitNFE_DDESEMB: TDateField;
    imp_nitNFE_CEXPORTADOR: TIBStringField;
    imp_nitNFE_CFABRICANTE: TIBStringField;
    imp_nitNFE_UFTERCEIRO: TIBStringField;
    imp_nitNFE_CNPJ: TIBStringField;
    imp_nitNFE_TIPO: TIBStringField;
    imp_nitNFE_METR: TIBBCDField;
    imp_nitNFE_PESO: TIBBCDField;
    imp_nitNFE_REND: TIBBCDField;
    imp_nitNFE_PSCN: TIBBCDField;
    imp_nitNFE_PSMR: TIBBCDField;
    imp_nitNFE_GRAM: TIBBCDField;
    imp_nitNFE_LARG: TIBBCDField;
    imp_nitNFE_PIMP: TIBBCDField;
    imp_nitNFE_VI04: TIBBCDField;
    imp_nitNFE_VI07: TIBBCDField;
    imp_nitNFE_VI12: TIBBCDField;
    imp_nitNFE_VI18: TIBBCDField;
    imp_nitNFE_FRET: TIBStringField;
    imp_nitNFE_REPR: TIBStringField;
    imp_nitNFE_FLAG: TIBStringField;
    imp_nitNFE_INDESCALA: TIBStringField;
    imp_nitNFE_TIPI: TSmallintField;
    imp_nitNFE_CLENQ: TIBStringField;
    imp_nitNFE_CENQ: TIBStringField;
    imp_nitNFE_CBENEF: TIBStringField;
    imp_nitNFE_NFCI: TIBStringField;
    imp_nitNFE_CNPJFAB: TLargeintField;
    imp_nitNFE_CBPRODUTO: TLargeintField;
    imp_nitNFE_CBUNIDADE: TLargeintField;
    imp_nitNFE_VALIQPROD: TIBBCDField;
    imp_nitNFE_VICMSOP: TIBBCDField;
    imp_nitNFE_PDIF: TIBBCDField;
    imp_nitNFE_VICMSDIF: TIBBCDField;
    imp_nitNFE_VBCFCP: TIBBCDField;
    imp_nitNFE_PFCP: TIBBCDField;
    imp_nitNFE_VFCP: TIBBCDField;
    imp_nitNFE_PST: TIBBCDField;
    imp_nitNFE_VBCFCPST: TIBBCDField;
    imp_nitNFE_PFCPST: TIBBCDField;
    imp_nitNFE_VFCPST: TIBBCDField;
    imp_nitNFE_VBCFCPSTRET: TIBBCDField;
    imp_nitNFE_PFCPSTRET: TIBBCDField;
    imp_nitNFE_VFCPSTRET: TIBBCDField;
    imp_nitNFE_VBCFCPUFDEST: TIBBCDField;
    imp_nitNFE_VICMSDESON: TIBBCDField;
    imp_nitNFE_MOTDESICMS: TSmallintField;
    imp_nitNFE_NDRAW: TIBStringField;
    imp_nitNFE_NRE: TIBStringField;
    imp_nitNFE_NRECOPI: TIBStringField;
    imp_nitNFE_CHNFE: TIBStringField;
    imp_nitNFE_QEXPORT: TIBBCDField;
    imp_nitNFE_VTOTTRIB: TIBBCDField;
    imp_nitNFE_CNPJPROD: TIBStringField;
    imp_nitNFE_INFADPROD: TIBStringField;
    imp_nitNFE_COMP: TIBStringField;
    imp_nitNFE_CSTA: TIBStringField;
    imp_nitNFE_CSTS: TIBStringField;
    imp_nitNFE_QVOL: TIBBCDField;
    imp_nitNFE_ESP: TIBStringField;
    imp_nitNFE_QTUN: TIBBCDField;
    imp_nitNFE_CNPJTERCEIRO: TIBStringField;
    imp_nitNFE_TPINTERMEDIO: TIBStringField;
    imp_nitNFE_TPVIATRANSP: TIBStringField;
    imp_nitNFE_XLOCDESPACHO: TIBStringField;
    imp_nitNFE_UFSAIDAPAIS: TIBStringField;
    imp_nitNFE_UTRIB: TIBStringField;
    imp_nitNFE_UEXP: TIBStringField;
    imp_nitNFE_TRIBFEDNACIONAL: TIBBCDField;
    imp_nitNFE_TRIBFEDIMPORTADO: TIBBCDField;
    imp_nitNFE_TRIBESTADUAL: TIBBCDField;
    imp_nitNFE_TRIBMUNICIPAL: TIBBCDField;
    imp_nitNFE_TRIBIPI: TIBBCDField;
    imp_nitNFE_MVA: TIBBCDField;
    imp_nitNFE_QTRIB: TIBBCDField;
    imp_nitNFE_VUNTRIB: TFloatField;
    imp_nitNFE_STAV: TIBStringField;
    imp_nitNFE_INFADTRIB: TIBStringField;
    imp_ncaID: TIntegerField;
    imp_ncaNFE_CDNF: TIntegerField;
    imp_ncaNFE_AAMM: TIBStringField;
    imp_ncaNFE_DEMI: TDateField;
    imp_ncaNFE_DSAI: TDateField;
    imp_ncaNFE_HRSE: TTimeField;
    imp_ncaNFE_CFAV: TIntegerField;
    imp_ncaNFE_CNAT: TIntegerField;
    imp_ncaNFE_INDPAG: TSmallintField;
    imp_ncaNFE_TPNF: TSmallintField;
    imp_ncaNFE_NFREF: TSmallintField;
    imp_ncaNFE_REFNFE: TIBStringField;
    imp_ncaNFE_CUFREF: TIBStringField;
    imp_ncaNFE_AAMMREF: TIBStringField;
    imp_ncaNFE_CNPJREF: TIBStringField;
    imp_ncaNFE_MODREF: TIBStringField;
    imp_ncaNFE_SERIEREF: TIBStringField;
    imp_ncaNFE_NNFREF: TIntegerField;
    imp_ncaNFE_TPEMIS: TSmallintField;
    imp_ncaNFE_FINNFE: TSmallintField;
    imp_ncaNFE_PROCEMI: TIBStringField;
    imp_ncaNFE_VERPROC: TIBStringField;
    imp_ncaNFE_DHCONT: TDateTimeField;
    imp_ncaNFE_ISUF: TIBStringField;
    imp_ncaNFE_VBC: TIBBCDField;
    imp_ncaNFE_VICMS: TIBBCDField;
    imp_ncaNFE_VBCST: TIBBCDField;
    imp_ncaNFE_VST: TIBBCDField;
    imp_ncaNFE_VPROD: TIBBCDField;
    imp_ncaNFE_VFRETE: TIBBCDField;
    imp_ncaNFE_VSEG: TIBBCDField;
    imp_ncaNFE_VDESC: TIBBCDField;
    imp_ncaNFE_VII: TIBBCDField;
    imp_ncaNFE_VIPI: TIBBCDField;
    imp_ncaNFE_VPIS: TIBBCDField;
    imp_ncaNFE_VCOFINS: TIBBCDField;
    imp_ncaNFE_VOUTRO: TIBBCDField;
    imp_ncaNFE_VNF: TIBBCDField;
    imp_ncaNFE_VSERVISSQN: TIBBCDField;
    imp_ncaNFE_VBCISSQN: TIBBCDField;
    imp_ncaNFE_VISS: TIBBCDField;
    imp_ncaNFE_VPISISSQN: TIBBCDField;
    imp_ncaNFE_VCOFINSISSQN: TIBBCDField;
    imp_ncaNFE_VRETPIS: TIBBCDField;
    imp_ncaNFE_VRETCOFINS: TIBBCDField;
    imp_ncaNFE_VRETCSLL: TIBBCDField;
    imp_ncaNFE_VBCIRRF: TIBBCDField;
    imp_ncaNFE_VIRRF: TIBBCDField;
    imp_ncaNFE_VBCRETPREV: TIBBCDField;
    imp_ncaNFE_VRETPREV: TIBBCDField;
    imp_ncaNFE_CUF: TIBStringField;
    imp_ncaNFE_NATOP: TIBStringField;
    imp_ncaNFE_MOD: TIBStringField;
    imp_ncaNFE_SERIE: TIBStringField;
    imp_ncaNFE_CMUNFG: TIBStringField;
    imp_ncaNFE_TPIMP: TIBStringField;
    imp_ncaNFE_VICMSDESON: TIBBCDField;
    imp_ncaNFE_VTOTTRIB: TIBBCDField;
    imp_ncaNFE_CPAIS: TSmallintField;
    imp_ncaNFE_XPAIS: TIBStringField;
    imp_ncaNFE_XJUST: TMemoField;
    imp_ncaNFE_INFCPL: TMemoField;
    procedure FormCreate(Sender: TObject);
    procedure edTXTValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbTIPOChange(Sender: TObject);
    procedure dtsped_iteDataChange(Sender: TObject; Field: TField);
    procedure siVALClick(Sender: TObject);
    procedure imp_iteNewRecord(DataSet: TDataSet);
    procedure dtsimp_iteDataChange(Sender: TObject; Field: TField);
    procedure imp_cabNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure imp_nitNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    CDEP: integer;
    TABELA: string;
    procedure CADASTRA_FAVORECIDO(NodeSec,NodeEnd: IXMLNode);
    procedure PESQUISA_PEDIDO_VENDA;
    procedure PESQUISA_ROMANEIO_VENDA;
    procedure PESQUISA_PROGRAMACAO_VENDA;
    procedure PESQUISA_LANCAMENTO_ESTOQUE;
    procedure PESQUISA_XML;
    procedure PESQUISA_TXT;
    procedure IMPORTA_TXT;
    procedure IMPORTA_CABECARIO;
    procedure IMPORTA_TRANSPORTADORA;
    procedure IMPORTA_ITENS;
    function  VERIFICA_EMPRESA: boolean;
    function  PESQUISA_PRODUTO(campo,cpro: string): boolean;
  public
    { Public declarations }
    Editado: Boolean;
    Documento,
    XMLNF,
    XMLIDTra,    
    XMLcPais,
    XMLModFrete,
    XMLEsp,
    XMLMarca,
    XMLNVol,
    XMLQVol: String;
    XMLPSLQ,
    XMLPSBR: Double;
  end;

var
  frmimporta_geral: Tfrmimporta_geral;

implementation

uses uPrincipal, bDados, pimporta_geral_favorecido;

{$R *.dfm}

procedure Tfrmimporta_geral.FormCreate(Sender: TObject);
begin
  inherited;
  XMLcPais := '1058';

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT    PAR_FANT FROM PAR_SIS');
    SQL.Add('ORDER BY ID');
    Open;
    while not eof do
    begin
      cbfant.Values.Add(fields[0].AsString);
      cbfant.Descriptions.Add(fields[0].AsString);
      next;
    end;
  end;

  oOTransact(TSheild);
  with Consulta_S do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM IMP_CAB');
    ExecSQL;
    
    SQL.Clear;
    SQL.Add('DELETE FROM IMP_ITE');
    ExecSQL;
  end;

  oRTransact(TSheild);
  imp_cab.Open;
  imp_ite.Open;
end;

procedure Tfrmimporta_geral.FormShow(Sender: TObject);
begin
  inherited;
  tsSUM.TabVisible := false;
  tsXML.TabVisible := false;
end;

procedure Tfrmimporta_geral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Screen.Cursor := crAppStart;
  Action := caFree;
end;

procedure Tfrmimporta_geral.FormDestroy(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  oFTransact(IBTra);
  frmimporta_geral := Nil;
end;

procedure Tfrmimporta_geral.siVALClick(Sender: TObject);
begin
  IBTra.CommitRetaining;
  TSheild.CommitRetaining;

  if cbTIPO.Text = '' then
  raise exception.Create('Importação sem origem selecionada !');

  if (copy(cbTIPO.Text,1,3) <> 'XML') and (cbTIPO.Text <> 'DESPACHANTE') then
  begin
    imp_ite.First;
    if imp_ite.Fields[0].IsNull then
    raise exception.Create('Importação sem itens relacionados !');
  end else
  begin
    imp_nit.First;
    if imp_nit.Fields[0].IsNull then
    raise exception.Create('Importação sem itens relacionados !');
  end;

  Editado := true;
  Close;
end;

procedure Tfrmimporta_geral.edTXTValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (edTXT.Text = '') or (edTXT.Text = '0') then
  Exit;

  if not VERIFICA_EMPRESA then
  Abort;

  if cbTIPO.Text = '' then
  raise exception.Create('Origem não selecionada !');

  try
    if cbTIPO.Text = 'PEDIDO DE VENDA' then
    PESQUISA_PEDIDO_VENDA else
    if cbTIPO.Text = 'ROMANEIO DE VENDA' then
    PESQUISA_ROMANEIO_VENDA else
    if cbTIPO.Text = 'PROGRAMAÇÃO DE VENDA' then
    PESQUISA_PROGRAMACAO_VENDA else
    if cbTIPO.Text = 'LANÇAMENTO DE ESTOQUE' then
    PESQUISA_LANCAMENTO_ESTOQUE;
  finally
    pcSUM.ActivePageIndex := 0;
    pcSUM.SetFocus;
  end;
end;

procedure Tfrmimporta_geral.cbTIPOChange(Sender: TObject);
begin
  if cbTIPO.Text = 'PEDIDO DE VENDA' then
  tsSUM.ImageIndex := 0 else
  if cbTIPO.Text = 'ROMANEIO DE VENDA' then
  tsSUM.ImageIndex := 1 else
  if cbTIPO.Text = 'PROGRAMAÇÃO DE VENDA' then
  tsSUM.ImageIndex := 4 else
  if cbTIPO.Text = 'LANÇAMENTO DE ESTOQUE' then
  tsSUM.ImageIndex := 7 else
  if copy(cbTIPO.Text,1,3) = 'XML' then
  begin
    if cbTIPO.Text = 'XML + CONTAS A PAGAR' then
    tsXML.Tag        := 1;
    tsSUM.TabVisible := false;
    tsXML.Caption    := 'XML';
    pcSUM.ActivePage := tsXML;
    tsXML.TabVisible := true;
    pcXML.ActivePage := tsITEM;

    PESQUISA_XML;
  end else
  if cbTIPO.Text = 'TXT' then
  begin
    tsSUM.ImageIndex := 8;
    PESQUISA_TXT;
  end;

  if copy(cbTIPO.Text,1,3) <> 'XML' then
  begin
    tsXML.TabVisible := false;
    tsSUM.Caption    := cbTIPO.Text;
    tsSUM.TabVisible := true;
    pcSUM.ActivePage := tsSUM;
  end;
end;

procedure Tfrmimporta_geral.CADASTRA_FAVORECIDO(NodeSec,NodeEnd: IXMLNode);
          procedure PROCESSA_REGIAO(uf: string);
          begin
            if uf = '' then
            frmimporta_geral_favorecido.cbregi.Text := '' else
            begin
              if (uf = 'AM') or (uf = 'AC') or (uf = 'RO') or (uf = 'RR') or (uf = 'PA') or (uf = 'AP') or (uf = 'TO') then
              frmimporta_geral_favorecido.cbregi.Text := 'REGIÃO NORTE' else
              if (uf = 'MT') or (uf = 'MS') or (uf = 'DF') or (uf = 'GO') then
              frmimporta_geral_favorecido.cbregi.Text := 'REGIÃO CENTRO-OESTE' else
              if (uf = 'MA') or (uf = 'PI') or (uf = 'CE') or (uf = 'RN') or (uf = 'PB') or (uf = 'PE') or (uf = 'AL') or (uf = 'SE') or (uf = 'BA') then
              frmimporta_geral_favorecido.cbregi.Text := 'REGIÃO NORDESTE' else
              if (uf = 'SP') or (uf = 'RJ') or (uf = 'MG') or (uf = 'ES') then
              frmimporta_geral_favorecido.cbregi.Text := 'REGIÃO SUDESTE' else
              if (uf = 'PR') or (uf = 'SC') or (uf = 'RS') then
              frmimporta_geral_favorecido.cbregi.Text := 'REGIÃO SUL';
            end;

            if length(trim(frmimporta_geral_favorecido.edcep.Text)) >= 8 then
            try
              if (StrToInt(copy(frmimporta_geral_favorecido.edcep.Text,1,5)) >= 01000) and (StrToInt(copy(frmimporta_geral_favorecido.edcep.Text,1,5)) <= 09999) then
              frmimporta_geral_favorecido.cbregi.Text := 'CAPITAL DE SÃO PAULO';

              if (StrToInt(copy(frmimporta_geral_favorecido.edcep.Text,1,5)) >= 12000) and (StrToInt(copy(frmimporta_geral_favorecido.edcep.Text,1,5)) <= 19999) then
              frmimporta_geral_favorecido.cbregi.Text := 'INTERIOR DE SÃO PAULO';
            except
              raise exception.Create('Cep Inválido !');
            end;
          end;
var
  IDCliente: String;
begin
  frmimporta_geral_favorecido     := tfrmimporta_geral_favorecido.create(self);
  frmimporta_geral_favorecido.Tag := tsXML.Tag;
  try
    with frmimporta_geral_favorecido do
    begin
      edfant.Text := copy(trim(NodeSec.ChildNodes['xFant'].Text),1,40);
      edraza.Text := trim(NodeSec.ChildNodes['xNome'].Text);
      edcnpj.Text := trim(NodeSec.ChildNodes['CNPJ'].Text);
      edinsc.Text := trim(NodeSec.ChildNodes['IE'].Text);

      edlogr.Text := trim(NodeEnd.ChildNodes['xLgr'].Text);
      ednume.Text := trim(NodeEnd.ChildNodes['nro'].Text);
      edbai.Text  := trim(NodeEnd.ChildNodes['xBairro'].Text);
      edcmun.Text := trim(NodeEnd.ChildNodes['cMun'].Text);
      edcid.Text  := trim(NodeEnd.ChildNodes['xMun'].Text);
      eduf.Text   := trim(NodeEnd.ChildNodes['UF'].Text);
      edcep.Text  := trim(NodeEnd.ChildNodes['CEP'].Text);
      eduf.Text   := trim(NodeEnd.ChildNodes['UF'].Text);

      if Length(trim(NodeEnd.ChildNodes['fone'].Text)) >= 10 then
      begin
        edddd.Text  := copy(trim(NodeEnd.ChildNodes['fone'].Text),1,2);
        edtel1.Text := copy(trim(NodeEnd.ChildNodes['fone'].Text),3,8);
      end else
      begin
        if trim(NodeEnd.ChildNodes['UF'].Text) = 'SP' then
        edddd.Text  := '11';
        edtel1.Text := trim(NodeEnd.ChildNodes['fone'].Text);
      end;
      PROCESSA_REGIAO(eduf.Text);
      frmimporta_geral_favorecido.ShowModal;
    end;
  finally
    IDCliente := IntToStr(frmimporta_geral_favorecido.edfant.Tag);
    FreeAndNil(frmimporta_geral_favorecido);
  end;

  with consulta do
  begin
    SQL.Clear;
    if tsXML.Tag = 0 then
    SQL.Add('SELECT ID FROM CAD_CLI') else
    SQL.Add('SELECT ID FROM CAD_FOR');
    SQL.Add('WHERE  ID = '''+IDCliente+'''');
    Open;
  end;
end;

function Tfrmimporta_geral.PESQUISA_PRODUTO(campo,cpro: string): boolean;
var
  BRet: boolean;
  nRecNo: integer;
begin
  if cpro = '' then
  Abort;

  nRecNo := bPSQProdutos(campo,cpro);
  BRet   := (nRecNo >= 1);
  result := BRet;
end;

function RETORNA_DATA(old: string): TDate;
begin
  if Length(old) < 6 then
  result := RECParametros.DTServidor else
  result := strtodate(copy(old,9,2)+'/'+copy(old,6,2)+'/'+copy(old,1,4));
end;

function RETORNA_VALOR(old: string): double;
begin
  if old = '' then
  old    := '0';
  old    := oStrTran(old,'.',',');
  result := StrToFloat(old);
end;

procedure Tfrmimporta_geral.IMPORTA_TXT;
var
  cNomearq,Linha: string;
             arq: TextFile;
begin
  cNomearq := openARQ.FileName;

  AssignFile ( arq, cNomearq );
  Reset ( arq );

  ReadLn ( arq, linha );
  try
    oOTransact(DMDados.TFBConsulta);
    while not Eof ( arq ) do
    begin
      ReadLn ( arq, linha );
      if PESQUISA_PRODUTO('Produto',linha) then
      begin
        if DMDados.FBProdutosC_QDIS.AsFloat < 0 then
        begin
          imp_ite.Append;
          imp_iteROM_PRCA.Value := DMDados.FBProdutosPRO_PREC.AsFloat;
          imp_iteROM_PRPA.Value := DMDados.FBProdutosPRO_PPRO.AsFloat;
          imp_iteROM_VPRC.Value := DMDados.FBProdutosPRO_VPRC.AsFloat;
          imp_iteROM_VPRO.Value := DMDados.FBProdutosPRO_VPRO.AsFloat;
          imp_iteROM_RPRC.Value := DMDados.FBProdutosPRO_RPRC.AsFloat;
          imp_iteROM_RPRO.Value := DMDados.FBProdutosPRO_RPRO.AsFloat;
          imp_iteROM_PCOM.Value := DMDados.FBProdutosPRO_PCOM.AsFloat;
          imp_iteROM_CUST.Value := DMDados.FBProdutosPRO_CUST.AsFloat;
          imp_iteROM_UNIT.Value := DMDados.FBProdutosPRO_PREC.AsFloat;
          imp_iteROM_DPRO.Value := DMDados.FBProdutosPRO_DPRO.AsString;
          imp_iteROM_IPRO.Value := DMDados.FBProdutosID.AsInteger;
          imp_iteROM_IPR2.Value := DMDados.FBProdutosID.AsInteger;
          imp_iteROM_CART.Value := DMDados.FBProdutosPRO_CART.AsString;
          imp_iteROM_CPRO.Value := DMDados.FBProdutosPRO_CPRO.AsString;
          imp_iteROM_CPR2.Value := DMDados.FBProdutosPRO_CPRO.AsString;
          imp_iteROM_CCOR.Value := DMDados.FBProdutosPRO_CCOR.AsInteger;
          imp_iteROM_DCOR.Value := DMDados.FBProdutosPRO_DCOR.AsString;
          imp_iteROM_CCO2.Value := DMDados.FBProdutosPRO_CCOR.AsInteger;
          imp_iteROM_DCO2.Value := DMDados.FBProdutosPRO_DCOR.AsString;
          imp_iteROM_DUNI.Value := DMDados.FBProdutosPRO_DUNI.AsString;
          imp_iteROM_FOTO.Value := DMDados.FBProdutosPRO_FOTO.Value;
          imp_iteROM_CBAR.Value := DMDados.FBProdutosPRO_CBAR.AsString;
          imp_iteROM_PPRO.Value := DMDados.FBProdutosPRO_PPRO.AsFloat;
          imp_iteROM_METR.Value := DMDados.FBProdutosPRO_METR.AsFloat;
          imp_iteROM_PESO.Value := DMDados.FBProdutosPRO_PESO.AsFloat;
          imp_iteROM_REND.Value := DMDados.FBProdutosPRO_REND.AsFloat;
          imp_iteROM_PSCN.Value := DMDados.FBProdutosPRO_PSCN.AsFloat;
          imp_iteROM_PSMR.Value := DMDados.FBProdutosPRO_PSMR.AsFloat;
          imp_iteROM_PIPI.Value := DMDados.FBProdutosPRO_PIPI.AsFloat;
          imp_iteROM_FOTO.Value := DMDados.FBProdutosPRO_FOTO.Value;
          imp_iteROM_QTDE.Value := DMDados.FBProdutosC_QDIS.AsFloat;
          imp_iteROM_QDIS.Value := DMDados.FBProdutosC_QDIS.AsFloat;
          imp_iteROM_QTRL.Value := DMDados.FBProdutosC_RDIS.AsInteger;
          if imp_iteROM_QTDE.AsFloat < 0 then
          begin
            imp_iteROM_QTDE.Value := ABS(imp_iteROM_QTDE.AsFloat);
            imp_iteROM_QTRL.Value := ABS(imp_iteROM_QTRL.AsInteger);
          end;
          imp_ite.Post;
        end;
      end;
    end;
  finally
    CloseFile ( arq );
    oCTransact(DMDados.TFBConsulta);
  end;
end;

procedure Tfrmimporta_geral.IMPORTA_ITENS;
var vXMLDoc: TXMLDocument;
    NodePai,NodeSec,NodeTmp,NodeImp,NodeImposto, NodeAdi, NodeDI: IXMLNode;
    cNomearq: string;
    i: word;
begin
  // Cria a variável baseada no TXMLDocument
  vXMLDoc  := TXMLDocument.Create(self);
  cNomearq := openARQ.FileName;

  // Le conteúdo do arquivo XML informado
  vXMLDoc.LoadFromFile(cNomearq);

  // Aqui eu peço para encontrar a primeira ocorrencia da Tag <det>>
  NodePai := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('det');
  if NodePai = nil then
  begin
    NodePai := vXMLDoc.DocumentElement.ChildNodes.FindNode('NFe');
    NodePai := NodePai.ChildNodes.FindNode('infNFe');
    NodePai := NodePai.ChildNodes['det'];
  end;

  // Esse nó vai ser usado no LOOP
  NodeSec := NodePai;
  // Posiciona o primeiro elemento encontrado
  NodeSec.ChildNodes.First;
  repeat
    // referencia a tag <prod> dentro de <det>
    NodeTmp  := NodeSec.ChildNodes['prod'];
    // da pra ver que é um XML resumido da NFe (so temos uma tag <prod> para cada <det> então não precisaria da linha abaixo
    // agora se tivéssemos mais de uma seria o caso de posicionar também na primeira ocorrencia.
    NodeTmp.ChildNodes.First;
    repeat
      if NodeTmp.ChildNodes['cProd'].text <> '' then
      begin
        imp_nit.Append;
        imp_nitID.Value            := 0;
        imp_nitNFE_CPROD.Value     := trim(NodeTmp.ChildNodes['cProd'].Text);
        imp_nitNFE_CEAN.Value      := trim(NodeTmp.ChildNodes['cEAN'].Text);
        imp_nitNFE_XPROD.Value     := trim(NodeTmp.ChildNodes['xProd'].Text);
        imp_nitNFE_XPROX.Value     := trim(NodeTmp.ChildNodes['xProd'].Text);
        imp_nitNFE_NCM.Value       := trim(NodeTmp.ChildNodes['NCM'].Text);
        imp_nitNFE_CFOP.Value      := trim(NodeTmp.ChildNodes['CFOP'].Text);
        imp_nitNFE_UCOM.Value      := trim(NodeTmp.ChildNodes['uCom'].Text);
        imp_nitNFE_QCOM.Value      := RETORNA_VALOR(trim(NodeTmp.ChildNodes['qCom'].Text));
        imp_nitNFE_VUNCOM.Value    := RETORNA_VALOR(trim(NodeTmp.ChildNodes['vUnCom'].Text));
        imp_nitNFE_UTRIB.Value     := trim(NodeTmp.ChildNodes['uTrib'].Text);
        imp_nitNFE_QTRIB.Value     := RETORNA_VALOR(trim(NodeTmp.ChildNodes['qTrib'].Text));
        imp_nitNFE_VUNTRIB.Value   := RETORNA_VALOR(trim(NodeTmp.ChildNodes['vUnTrib'].Text));
        imp_nitNFE_PREC.Value      := imp_nitNFE_VUNCOM.AsFloat;
        imp_nitNFE_VDESC.Value     := RETORNA_VALOR(trim(NodeTmp.ChildNodes['vDesc'].Text));
        imp_nitNFE_VPROD.Value     := RETORNA_VALOR(trim(NodeTmp.ChildNodes['vProd'].Text));
        imp_nitNFE_VFRETE.Value    := RETORNA_VALOR(trim(NodeTmp.ChildNodes['vFrete'].Text));
        imp_nitNFE_VSEG.Value      := RETORNA_VALOR(trim(NodeTmp.ChildNodes['vSeg'].Text));
        imp_nitNFE_VOUTRO.Value    := RETORNA_VALOR(trim(NodeTmp.ChildNodes['vOutro'].Text));
        imp_nitNFE_INDTOT.AsString := trim(NodeTmp.ChildNodes['indTot'].Text);
        imp_nitNFE_XPED.Value      := trim(NodeTmp.ChildNodes['xPed'].Text);
        imp_nitNFE_NFCI.Value      := trim(NodeTmp.ChildNodes['nFCI'].Text);

        if  trim(NodeTmp.ChildNodes['nItemPed'].Text) <> '' then
        imp_nitNFE_ITEMPED.Value   := StrToInt(trim(NodeTmp.ChildNodes['nItemPed'].Text));

        with Consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT REFERENCIA FROM TAB_UCOM');
          SQL.Add('WHERE  REFERENCIA = '''+imp_nitNFE_UCOM.AsString+'''');
          Open;
          if Fields[0].IsNull then
          begin
            SQL.Clear;
            SQL.Add('SELECT REFERENCIA FROM TAB_UCOM');
            SQL.Add('WHERE  DESCRICAO LIKE '''+LeftStr(imp_nitNFE_UCOM.AsString,5)+'%''');
            Open;
            if not Fields[0].IsNull then
            imp_nitNFE_UCOM.Value := Fields[0].AsString;
          end;

          SQL.Clear;
          SQL.Add('SELECT REFERENCIA FROM TAB_UCOM');
          SQL.Add('WHERE  REFERENCIA = '''+imp_nitNFE_UTRIB.AsString+'''');
          Open;
          if Fields[0].IsNull then
          begin
            SQL.Clear;
            SQL.Add('SELECT REFERENCIA FROM TAB_UCOM');
            SQL.Add('WHERE  DESCRICAO LIKE '''+imp_nitNFE_UTRIB.AsString+'%''');
            Open;
            if not Fields[0].IsNull then
            imp_nitNFE_UTRIB.Value := Fields[0].AsString;
          end;
        end;

        // Lendo o nó da DI
        NodeDI := NodeTmp.ChildNodes['DI'];
        NodeDI.ChildNodes.First;

        if trim(NodeDI.ChildNodes['nDI'].Text) <> '' then
        begin
          if Pos(',',imp_nitNFE_XPROD.AsString) > 0 then
          imp_nitNFE_XPROD.Value        := Trim(LeftStr(imp_nitNFE_XPROX.AsString,Pos(',',imp_nitNFE_XPROD.AsString) - 1));
          imp_nitNFE_NDI.Value          := trim(NodeDI.ChildNodes['nDI'].Text);
          imp_nitNFE_DDI.Value          := strtodate(copy(NodeDI.ChildNodes['dDI'].Text,9,2)+'/'+copy(NodeDI.ChildNodes['dDI'].Text,6,2)+'/'+copy(NodeDI.ChildNodes['dDI'].Text,1,4));
          imp_nitNFE_XLOCDESEMB.Value   := trim(NodeDI.ChildNodes['xLocDesemb'].Text);
          imp_nitNFE_UFDESEMB.Value     := trim(NodeDI.ChildNodes['UFDesemb'].Text);
          imp_nitNFE_DDESEMB.Value      := RETORNA_DATA(trim(NodeDI.ChildNodes['dDesemb'].Text));
          imp_nitNFE_CEXPORTADOR.Value  := trim(NodeDI.ChildNodes['cExportador'].Text);
          if trim(NodeDI.ChildNodes['tpViaTransp'].Text) <> '' then
          imp_nitNFE_TPVIATRANSP.Value  := Trim(NodeDI.ChildNodes['tpViaTransp'].Text);
          if trim(NodeDI.ChildNodes['vAFRMM'].Text) <> '' then
          imp_nitNFE_VAFRMM.Value       := oTextToValor(trim(NodeDI.ChildNodes['vAFRMM'].Text));
          if trim(NodeDI.ChildNodes['tpIntermedio'].Text) <> '' then
          imp_nitNFE_TPINTERMEDIO.Value := Trim(NodeDI.ChildNodes['tpIntermedio'].Text);
          imp_nitNFE_CNPJTERCEIRO.Value := trim(NodeDI.ChildNodes['CNPJ'].Text);
          imp_nitNFE_UFTERCEIRO.Value   := trim(NodeDI.ChildNodes['UFTerceiro'].Text);

          // Lendo o nó da Adicao
          NodeADI := NodeDI.ChildNodes['adi'];
          NodeADI.ChildNodes.First;

          for i := 1 to length(trim(NodeADI.ChildNodes['nAdicao'].Text)) do
              if copy(trim(NodeADI.ChildNodes['nAdicao'].Text),i,1) <> '|' then
              imp_nitNFE_NADICAO.AsString := imp_nitNFE_NADICAO.AsString + copy(trim(NodeADI.ChildNodes['nAdicao'].Text),i,1);

          for i := 1 to length(trim(NodeADI.ChildNodes['nSeqAdic'].Text)) do
              if copy(trim(NodeADI.ChildNodes['nSeqAdic'].Text),i,1) <> '|' then
              imp_nitNFE_NSEQADIC.AsString := imp_nitNFE_NSEQADIC.AsString + copy(trim(NodeADI.ChildNodes['nSeqAdic'].Text),i,1);

          for i := 1 to length(trim(NodeADI.ChildNodes['cFabricante'].Text)) do
              if copy(trim(NodeADI.ChildNodes['cFabricante'].Text),i,1) <> '|' then
              imp_nitNFE_CFABRICANTE.Value := imp_nitNFE_CFABRICANTE.AsString + copy(trim(NodeADI.ChildNodes['cFabricante'].Text),i,1);
        end;

        NodeTmp  := NodeSec.ChildNodes['imposto'];
        NodeTmp.ChildNodes.First;

        NodeImp := NodeTmp.ChildNodes['ICMS'];
        NodeImp.ChildNodes.First;

        cnomearq := NodeImp.ChildNodes[0].NodeName;

        if NodeImp.ChildNodes[0].NodeName = 'ICMS00' then
        begin
          // Lendo o nó dos ICMS
          NodeIMPOSTO := NodeImp.ChildNodes['ICMS00'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_ORIG.Value   := trim(NodeIMPOSTO.ChildNodes['orig'].Text);
          imp_nitNFE_CST.Value    := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
          imp_nitNFE_MODBC.Value  := trim(NodeIMPOSTO.ChildNodes['modBC'].Text);

          imp_nitNFE_PREDBC.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pRedBC'].Text));

          imp_nitNFE_VBC.Value    := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          imp_nitNFE_PICMS.Value  := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pICMS'].Text));
          imp_nitNFE_VICMS.Value  := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vICMS'].Text));
          imp_nitNFE_VNF.Value    := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
        end;

        if NodeImp.ChildNodes[0].NodeName = 'ICMS10' then
        begin
          // Lendo o nó dos ICMS
          NodeIMPOSTO := NodeImp.ChildNodes['ICMS10'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_ORIG.Value := trim(NodeIMPOSTO.ChildNodes['orig'].Text);
          imp_nitNFE_CST.Value  := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
          imp_nitNFE_MODBC.Value := trim(NodeIMPOSTO.ChildNodes['modBC'].Text);
          imp_nitNFE_VBC.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          imp_nitNFE_PICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pICMS'].Text));
          imp_nitNFE_VICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vICMS'].Text));
          imp_nitNFE_VNF.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
        end;

        if NodeImp.ChildNodes[0].NodeName = 'ICMS20' then
        begin
          // Lendo o nó dos ICMS
          NodeIMPOSTO := NodeImp.ChildNodes['ICMS20'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_ORIG.Value   := trim(NodeIMPOSTO.ChildNodes['orig'].Text);
          imp_nitNFE_CST.Value    := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
          imp_nitNFE_MODBC.Value  := trim(NodeIMPOSTO.ChildNodes['modBC'].Text);
          imp_nitNFE_PREDBC.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pRedBC'].Text));
          imp_nitNFE_VBC.Value    := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          imp_nitNFE_PICMS.Value  := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pICMS'].Text));
          imp_nitNFE_VICMS.Value  := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vICMS'].Text));
          imp_nitNFE_VNF.Value    := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
        end;

        if NodeImp.ChildNodes[0].NodeName = 'ICMS40' then
        begin
          // Lendo o nó dos ICMS
          NodeIMPOSTO := NodeImp.ChildNodes['ICMS40'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_ORIG.Value   := trim(NodeIMPOSTO.ChildNodes['orig'].Text);
          imp_nitNFE_CST.Value    := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
          imp_nitNFE_MODBC.Value  := trim(NodeIMPOSTO.ChildNodes['modBC'].Text);
          imp_nitNFE_PREDBC.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pRedBC'].Text));
          imp_nitNFE_VBC.Value    := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          imp_nitNFE_PICMS.Value  := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pICMS'].Text));
          imp_nitNFE_VICMS.Value  := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vICMS'].Text));
          imp_nitNFE_VNF.Value    := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
        end;

        if NodeImp.ChildNodes[0].NodeName = 'ICMS60' then
        begin
          // Lendo o nó dos ICMS
          NodeIMPOSTO := NodeImp.ChildNodes['ICMS60'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_ORIG.Value   := trim(NodeIMPOSTO.ChildNodes['orig'].Text);
          imp_nitNFE_CST.Value    := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
          imp_nitNFE_MODBC.Value  := trim(NodeIMPOSTO.ChildNodes['modBC'].Text);
          imp_nitNFE_PREDBC.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pRedBC'].Text));
          imp_nitNFE_VBC.Value    := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          imp_nitNFE_PICMS.Value  := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pICMS'].Text));
          imp_nitNFE_VICMS.Value  := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vICMS'].Text));
          imp_nitNFE_VNF.Value    := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
        end;

        if NodeImp.ChildNodes[0].NodeName = 'ICMS70' then
        begin
          // Lendo o nó dos ICMS
          NodeIMPOSTO := NodeImp.ChildNodes['ICMS70'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_ORIG.Value   := trim(NodeIMPOSTO.ChildNodes['orig'].Text);
          imp_nitNFE_CST.Value    := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
          imp_nitNFE_MODBC.Value  := trim(NodeIMPOSTO.ChildNodes['modBC'].Text);
          imp_nitNFE_PREDBC.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pRedBC'].Text));
          imp_nitNFE_VBC.Value    := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          imp_nitNFE_PICMS.Value  := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pICMS'].Text));
          imp_nitNFE_VICMS.Value  := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vICMS'].Text));
          imp_nitNFE_VNF.Value    := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
        end;

        if NodeImp.ChildNodes[0].NodeName = 'ICMS90' then
        begin
          // Lendo o nó dos ICMS
          NodeIMPOSTO := NodeImp.ChildNodes['ICMS90'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_ORIG.Value   := trim(NodeIMPOSTO.ChildNodes['orig'].Text);
          imp_nitNFE_CST.Value    := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
          imp_nitNFE_MODBC.Value  := trim(NodeIMPOSTO.ChildNodes['modBC'].Text);
          imp_nitNFE_PREDBC.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pRedBC'].Text));
          imp_nitNFE_VBC.Value    := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          imp_nitNFE_PICMS.Value  := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pICMS'].Text));
          imp_nitNFE_VICMS.Value  := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vICMS'].Text));
          imp_nitNFE_VNF.Value    := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
        end;


        if (NodeImp.ChildNodes[0].NodeName = 'ICMS101') or (NodeImp.ChildNodes[0].NodeName = 'ICMSSN101') then
        begin
          // Lendo o nó dos ICMS
          if (NodeImp.ChildNodes[0].NodeName = 'ICMS101') then
          NodeIMPOSTO := NodeImp.ChildNodes['ICMS101'] else
          NodeIMPOSTO := NodeImp.ChildNodes['ICMSSN101'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_ORIG.Value  := trim(NodeIMPOSTO.ChildNodes['orig'].Text);
          imp_nitNFE_MODBC.Value := trim(NodeIMPOSTO.ChildNodes['modBC'].Text);

          if trim(NodeIMPOSTO.ChildNodes['CSOSN'].Text) <> '' then
          imp_nitNFE_CST.Value  := trim(NodeIMPOSTO.ChildNodes['CSOSN'].Text) else
          begin
            imp_nitNFE_CST.Value   := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
            imp_nitNFE_VBC.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
            imp_nitNFE_PICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pICMS'].Text));
            imp_nitNFE_VICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vICMS'].Text));
            imp_nitNFE_VNF.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          end;
        end;

        if (NodeImp.ChildNodes[0].NodeName = 'ICMS102') or (NodeImp.ChildNodes[0].NodeName = 'ICMSSN102') then
        begin
          // Lendo o nó dos ICMS
          if (NodeImp.ChildNodes[0].NodeName = 'ICMS102') then
          NodeIMPOSTO := NodeImp.ChildNodes['ICMS102'] else
          NodeIMPOSTO := NodeImp.ChildNodes['ICMSSN102'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_ORIG.Value  := trim(NodeIMPOSTO.ChildNodes['orig'].Text);
          imp_nitNFE_MODBC.Value := trim(NodeIMPOSTO.ChildNodes['modBC'].Text);

          if trim(NodeIMPOSTO.ChildNodes['CSOSN'].Text) <> '' then
          imp_nitNFE_CST.Value  := trim(NodeIMPOSTO.ChildNodes['CSOSN'].Text) else
          begin
            imp_nitNFE_CST.Value   := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
            imp_nitNFE_VBC.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
            imp_nitNFE_PICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pICMS'].Text));
            imp_nitNFE_VICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vICMS'].Text));
            imp_nitNFE_VNF.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          end;
        end;

        if (NodeImp.ChildNodes[0].NodeName = 'ICMS103') or (NodeImp.ChildNodes[0].NodeName = 'ICMSSN103') then
        begin
          // Lendo o nó dos ICMS
          if (NodeImp.ChildNodes[0].NodeName = 'ICMS103') then
          NodeIMPOSTO := NodeImp.ChildNodes['ICMS103'] else
          NodeIMPOSTO := NodeImp.ChildNodes['ICMSSN103'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_ORIG.Value  := trim(NodeIMPOSTO.ChildNodes['orig'].Text);
          imp_nitNFE_MODBC.Value := trim(NodeIMPOSTO.ChildNodes['modBC'].Text);

          if trim(NodeIMPOSTO.ChildNodes['CSOSN'].Text) <> '' then
          imp_nitNFE_CST.Value  := trim(NodeIMPOSTO.ChildNodes['CSOSN'].Text) else
          begin
            imp_nitNFE_CST.Value   := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
            imp_nitNFE_VBC.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
            imp_nitNFE_PICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pICMS'].Text));
            imp_nitNFE_VICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vICMS'].Text));
            imp_nitNFE_VNF.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          end;
        end;

        if (NodeImp.ChildNodes[0].NodeName = 'ICMS201') or (NodeImp.ChildNodes[0].NodeName = 'ICMSSN201') then
        begin
          // Lendo o nó dos ICMS
          if (NodeImp.ChildNodes[0].NodeName = 'ICMS201') then
          NodeIMPOSTO := NodeImp.ChildNodes['ICMS201'] else
          NodeIMPOSTO := NodeImp.ChildNodes['ICMSSN201'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_ORIG.Value  := trim(NodeIMPOSTO.ChildNodes['orig'].Text);
          imp_nitNFE_MODBC.Value := trim(NodeIMPOSTO.ChildNodes['modBC'].Text);

          if trim(NodeIMPOSTO.ChildNodes['CSOSN'].Text) <> '' then
          imp_nitNFE_CST.Value  := trim(NodeIMPOSTO.ChildNodes['CSOSN'].Text) else
          begin
            imp_nitNFE_CST.Value   := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
            imp_nitNFE_VBC.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
            imp_nitNFE_PICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pICMS'].Text));
            imp_nitNFE_VICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vICMS'].Text));
            imp_nitNFE_VNF.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          end;
        end;

        if (NodeImp.ChildNodes[0].NodeName = 'ICMS202') or (NodeImp.ChildNodes[0].NodeName = 'ICMSSN202') then
        begin
          // Lendo o nó dos ICMS
          if (NodeImp.ChildNodes[0].NodeName = 'ICMS202') then
          NodeIMPOSTO := NodeImp.ChildNodes['ICMS202'] else
          NodeIMPOSTO := NodeImp.ChildNodes['ICMSSN202'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_ORIG.Value  := trim(NodeIMPOSTO.ChildNodes['orig'].Text);
          imp_nitNFE_MODBC.Value := trim(NodeIMPOSTO.ChildNodes['modBC'].Text);

          if trim(NodeIMPOSTO.ChildNodes['CSOSN'].Text) <> '' then
          imp_nitNFE_CST.Value  := trim(NodeIMPOSTO.ChildNodes['CSOSN'].Text) else
          begin
            imp_nitNFE_CST.Value   := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
            imp_nitNFE_VBC.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
            imp_nitNFE_PICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pICMS'].Text));
            imp_nitNFE_VICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vICMS'].Text));
            imp_nitNFE_VNF.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          end;
        end;

        if (NodeImp.ChildNodes[0].NodeName = 'ICMS203') or (NodeImp.ChildNodes[0].NodeName = 'ICMSSN203') then
        begin
          // Lendo o nó dos ICMS
          if (NodeImp.ChildNodes[0].NodeName = 'ICMS203') then
          NodeIMPOSTO := NodeImp.ChildNodes['ICMS203'] else
          NodeIMPOSTO := NodeImp.ChildNodes['ICMSSN203'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_ORIG.Value  := trim(NodeIMPOSTO.ChildNodes['orig'].Text);
          imp_nitNFE_MODBC.Value := trim(NodeIMPOSTO.ChildNodes['modBC'].Text);

          if trim(NodeIMPOSTO.ChildNodes['CSOSN'].Text) <> '' then
          imp_nitNFE_CST.Value  := trim(NodeIMPOSTO.ChildNodes['CSOSN'].Text) else
          begin
            imp_nitNFE_CST.Value   := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
            imp_nitNFE_VBC.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
            imp_nitNFE_PICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pICMS'].Text));
            imp_nitNFE_VICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vICMS'].Text));
            imp_nitNFE_VNF.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          end;
        end;

        if (NodeImp.ChildNodes[0].NodeName = 'ICMS300') or (NodeImp.ChildNodes[0].NodeName = 'ICMSSN300') then
        begin
          // Lendo o nó dos ICMS
          if (NodeImp.ChildNodes[0].NodeName = 'ICMS300') then
          NodeIMPOSTO := NodeImp.ChildNodes['ICMS300'] else
          NodeIMPOSTO := NodeImp.ChildNodes['ICMSSN300'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_ORIG.Value  := trim(NodeIMPOSTO.ChildNodes['orig'].Text);
          imp_nitNFE_MODBC.Value := trim(NodeIMPOSTO.ChildNodes['modBC'].Text);

          if trim(NodeIMPOSTO.ChildNodes['CSOSN'].Text) <> '' then
          imp_nitNFE_CST.Value  := trim(NodeIMPOSTO.ChildNodes['CSOSN'].Text) else
          begin
            imp_nitNFE_CST.Value   := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
            imp_nitNFE_VBC.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
            imp_nitNFE_PICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pICMS'].Text));
            imp_nitNFE_VICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vICMS'].Text));
            imp_nitNFE_VNF.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          end;
        end;

        if (NodeImp.ChildNodes[0].NodeName = 'ICMS400') or (NodeImp.ChildNodes[0].NodeName = 'ICMSSN400') then
        begin
          // Lendo o nó dos ICMS
          if (NodeImp.ChildNodes[0].NodeName = 'ICMS400') then
          NodeIMPOSTO := NodeImp.ChildNodes['ICMS400'] else
          NodeIMPOSTO := NodeImp.ChildNodes['ICMSSN400'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_ORIG.Value  := trim(NodeIMPOSTO.ChildNodes['orig'].Text);
          imp_nitNFE_MODBC.Value := trim(NodeIMPOSTO.ChildNodes['modBC'].Text);

          if trim(NodeIMPOSTO.ChildNodes['CSOSN'].Text) <> '' then
          imp_nitNFE_CST.Value  := trim(NodeIMPOSTO.ChildNodes['CSOSN'].Text) else
          begin
            imp_nitNFE_CST.Value   := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
            imp_nitNFE_VBC.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
            imp_nitNFE_PICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pICMS'].Text));
            imp_nitNFE_VICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vICMS'].Text));
            imp_nitNFE_VNF.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          end;
        end;

        if (NodeImp.ChildNodes[0].NodeName = 'ICMS500') or (NodeImp.ChildNodes[0].NodeName = 'ICMSSN500') then
        begin
          // Lendo o nó dos ICMS
          if (NodeImp.ChildNodes[0].NodeName = 'ICMS500') then
          NodeIMPOSTO := NodeImp.ChildNodes['ICMS500'] else
          NodeIMPOSTO := NodeImp.ChildNodes['ICMSSN500'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_ORIG.Value  := trim(NodeIMPOSTO.ChildNodes['orig'].Text);
          imp_nitNFE_MODBC.Value := trim(NodeIMPOSTO.ChildNodes['modBC'].Text);

          if trim(NodeIMPOSTO.ChildNodes['CSOSN'].Text) <> '' then
          imp_nitNFE_CST.Value  := trim(NodeIMPOSTO.ChildNodes['CSOSN'].Text) else
          begin
            imp_nitNFE_CST.Value   := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
            imp_nitNFE_VBC.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
            imp_nitNFE_PICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pICMS'].Text));
            imp_nitNFE_VICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vICMS'].Text));
            imp_nitNFE_VNF.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          end;
        end;

        if (NodeImp.ChildNodes[0].NodeName = 'ICMS900') or (NodeImp.ChildNodes[0].NodeName = 'ICMSSN900') then
        begin
          // Lendo o nó dos ICMS
          if (NodeImp.ChildNodes[0].NodeName = 'ICMS900') then
          NodeIMPOSTO := NodeImp.ChildNodes['ICMS900'] else
          NodeIMPOSTO := NodeImp.ChildNodes['ICMSSN900'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_ORIG.Value  := trim(NodeIMPOSTO.ChildNodes['orig'].Text);
          imp_nitNFE_MODBC.Value := trim(NodeIMPOSTO.ChildNodes['modBC'].Text);

          imp_nitNFE_CST.Value   := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
          imp_nitNFE_VBC.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          imp_nitNFE_PICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pICMS'].Text));
          imp_nitNFE_VICMS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vICMS'].Text));
          imp_nitNFE_VNF.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
        end;

        // Lendo o nó dos IPI
        NodeImp := NodeTmp.ChildNodes['IPI'];
        NodeImp.ChildNodes.First;

        if trim(NodeImp.ChildNodes['cEnq'].Text) <> '' then
        begin
          imp_nitNFE_CENQ.Value := trim(NodeImp.ChildNodes['cEnq'].Text);

          NodeIMPOSTO := NodeImp.ChildNodes['IPITrib'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_CSTIPI.Value := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
          imp_nitNFE_VBCIPI.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          imp_nitNFE_PIPI.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pIPI'].Text));
          imp_nitNFE_VIPI.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vIPI'].Text));

          if (imp_nitNFE_VIPI.AsFloat = 0) or (imp_nitNFE_PIPI.AsFloat = 0) then
          begin
            NodeIMPOSTO := NodeImp.ChildNodes['IPINT'];
            NodeIMPOSTO.ChildNodes.First;

            if trim(NodeIMPOSTO.ChildNodes['CST'].Text) <> '' then
            imp_nitNFE_CSTIPI.Value := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
          end;
        end;

        // Lendo o nó II
        NodeImp := NodeTmp.ChildNodes['II'];
        NodeImp.ChildNodes.First;

        if NodeImp.ChildNodes['vBC'].text <> '' then
        begin
          imp_nitNFE_VBCIMP.Value   := RETORNA_VALOR(trim(NodeImp.ChildNodes['vBC'].Text));
          imp_nitNFE_VDESPADU.Value := RETORNA_VALOR(trim(NodeImp.ChildNodes['vDespAdu'].Text));
          imp_nitNFE_VIIIMP.Value   := RETORNA_VALOR(trim(NodeImp.ChildNodes['vII'].Text));
          imp_nitNFE_VIOFIMP.Value  := RETORNA_VALOR(trim(NodeImp.ChildNodes['vIOF'].Text));
        end;

        // Lendo o nó dos PIS
        NodeImp := NodeTmp.ChildNodes['PIS'];
        NodeImp.ChildNodes.First;

        if NodeImp.ChildNodes[0].NodeName = 'PISOutr' then
        begin
          NodeIMPOSTO := NodeImp.ChildNodes['PISOutr'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_CSTPIS.Value := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
          imp_nitNFE_VBCPIS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          imp_nitNFE_PPIS.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pPIS'].Text));
          imp_nitNFE_VPIS.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vPIS'].Text));
        end else
        if NodeImp.ChildNodes[0].NodeName = 'PISAliq' then
        begin
          NodeIMPOSTO := NodeImp.ChildNodes['PISAliq'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_CSTPIS.Value := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
          imp_nitNFE_VBCPIS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          imp_nitNFE_PPIS.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pPIS'].Text));
          imp_nitNFE_VPIS.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vPIS'].Text));
        end else
        if NodeImp.ChildNodes[0].NodeName = 'PISNT' then
        begin
          NodeIMPOSTO := NodeImp.ChildNodes['PISNT'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_CSTPIS.Value := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
          imp_nitNFE_VBCPIS.Value := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          imp_nitNFE_PPIS.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pPIS'].Text));
          imp_nitNFE_VPIS.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vPIS'].Text));
        end;

        // Lendo o nó dos COFINS
        NodeImp := NodeTmp.ChildNodes['COFINS'];
        NodeImp.ChildNodes.First;

        if NodeImp.ChildNodes[0].NodeName = 'COFINSOutr' then
        begin
          NodeIMPOSTO := NodeImp.ChildNodes['COFINSOutr'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_CSTCOFINS.Value := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
          imp_nitNFE_VBCOFINS.Value  := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          imp_nitNFE_PCOFINS.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pCOFINS'].Text));
          imp_nitNFE_VCOFINS.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vCOFINS'].Text));
        end else
        if NodeImp.ChildNodes[0].NodeName = 'COFINSAliq' then
        begin
          NodeIMPOSTO := NodeImp.ChildNodes['COFINSAliq'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_CSTCOFINS.Value := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
          imp_nitNFE_VBCOFINS.Value  := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          imp_nitNFE_PCOFINS.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pCOFINS'].Text));
          imp_nitNFE_VCOFINS.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vCOFINS'].Text));
        end else
        if NodeImp.ChildNodes[0].NodeName = 'COFINSNT' then
        begin
          NodeIMPOSTO := NodeImp.ChildNodes['COFINSNT'];
          NodeIMPOSTO.ChildNodes.First;

          imp_nitNFE_CSTCOFINS.Value := trim(NodeIMPOSTO.ChildNodes['CST'].Text);
          imp_nitNFE_VBCOFINS.Value  := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vBC'].Text));
          imp_nitNFE_PCOFINS.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['pCOFINS'].Text));
          imp_nitNFE_VCOFINS.Value   := RETORNA_VALOR(trim(NodeIMPOSTO.ChildNodes['vCOFINS'].Text));
        end;

        if NodeSec.ChildNodes['infAdProd'].text <> '' then
        imp_nitNFE_INFADPROD.Value := trim(NodeSec.ChildNodes['infAdProd'].text);

        if copy(imp_nitNFE_CFOP.AsString,1,1) = '3' then
        begin
          imp_nitNFE_CCAB.Value := 99999;
          if imp_nitNFE_ORIG.AsString = '' then
          imp_nitNFE_ORIG.Value := '1';

          if RECParametros.RegimeTributario = '1' then
          imp_nitNFE_CST.Value := '900';
          
          if imp_nitNFE_CSTIPI.AsString = '' then
          imp_nitNFE_CSTIPI.Value := '49';
        end;
        imp_nit.Post;
      end;
      // vai para a proxima ocorrência <prod> (se houvesse)
      NodeTmp := NodeTmp.NextSibling;
    until NodeTmp = nil;
    // vai para a proxima ocorrência <det>
    NodeSec := NodeSec.NextSibling;
  until NodeSec = nil;
end;

procedure Tfrmimporta_geral.IMPORTA_CABECARIO;
var vXMLDoc: TXMLDocument;
    NodePai,NodeSec,NodeEnd: IXMLNode;
    cNomearq: String;
    i: word;
begin
  i := 1;

  // Cria a variável baseada no TXMLDocument
  vXMLDoc  := TXMLDocument.Create(self);
  cNomearq := openARQ.FileName;

  // Le conteúdo do arquivo XML informado
  vXMLDoc.LoadFromFile(cNomearq);
  vXMLDoc.Active;

  // Aqui eu peço para encontrar a primeira ocorrencia da Tag <det>>
  if tag = 0 then
  NodePai := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('dest') else
  NodePai := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('emit');

  if NodePai = nil then
  begin
    NodePai := vXMLDoc.DocumentElement.ChildNodes.FindNode('NFe');
    NodePai := NodePai.ChildNodes.FindNode('infNFe');
    if tag = 0 then
    NodePai := NodePai.ChildNodes['dest'] else
    NodePai := NodePai.ChildNodes['emit'];
  end;

  if Tag = 0 then
  NodeEnd  := NodePai.ChildNodes['enderDest'] else NodeEnd := NodePai.ChildNodes['enderEmit'];
  XMLcPais := IFThen(oEmpty(Trim(NodeEnd.ChildNodes['cPais'].Text)),'1058',Trim(NodeEnd.ChildNodes['cPais'].Text));

  // Esse nó vai ser usado no LOOP
  NodeSec := NodePai;
  // Posiciona o primeiro elemento encontrado
  NodeSec.ChildNodes.First;

  if tsXML.Tag = 0 then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_CLI');
    if trim(NodeSec.ChildNodes['CNPJ'].Text) <> '' then
    SQL.Add('WHERE CLI_CNPJ = '''+trim(NodeSec.ChildNodes['CNPJ'].Text)+'''') else
    SQL.Add('WHERE CLI_RAZA LIKE ''%'+copy(trim(NodeSec.ChildNodes['xNome'].Text),1,10)+'%''');
    Open;

    if fields[0].IsNull then
    begin
      if trim(NodeSec.ChildNodes['CNPJ'].Text) <> '' then
      MessageBox(handle,'Cliente não cadastrado !','Importação de XML',MB_ICONWARNING+MB_OK) else
      MessageBox(handle,'Cliente não cadastrado !','Importação de XML',MB_ICONWARNING+MB_OK);
      CADASTRA_FAVORECIDO(NodeSec,NodeEnd);
    end;
  end else
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FOR');
    if trim(NodeSec.ChildNodes['CNPJ'].Text) <> '' then
    SQL.Add('WHERE FOR_CNPJ = '''+trim(NodeSec.ChildNodes['CNPJ'].Text)+'''') else
    SQL.Add('WHERE FOR_RAZA LIKE ''%'+copy(trim(NodeSec.ChildNodes['xNome'].Text),1,10)+'%''');
    Open;

    if fields[0].IsNull then
    begin
      if trim(NodeSec.ChildNodes['CNPJ'].Text) <> '' then
      MessageBox(handle,'Fornecedor não cadastrado !','Importação de XML',MB_ICONWARNING+MB_OK) else
      MessageBox(handle,'Fornecedor não cadastrado !','Importação de XML',MB_ICONWARNING+MB_OK);
      CADASTRA_FAVORECIDO(NodeSec,NodeEnd);
    end;
  end;

  // Aqui eu peço para encontrar a primeira ocorrencia da Tag <det>>
  NodePai := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('ide');
  if NodePai = nil then
  begin
    NodePai := vXMLDoc.DocumentElement.ChildNodes.FindNode('NFe');
    NodePai := NodePai.ChildNodes.FindNode('infNFe');
    NodePai := NodePai.ChildNodes['ide'];
  end;

  // Esse nó vai ser usado no LOOP
  NodeSec := NodePai;
  // Posiciona o primeiro elemento encontrado
  NodeSec.ChildNodes.First;

  imp_nca.Append;
  imp_ncaID.Value            := 0;
  imp_ncaNFE_CFAV.Value      := consulta.Fields[0].AsInteger;
  imp_ncaNFE_CUF.Value       := trim(NodeSec.ChildNodes['cUF'].Text);
  imp_ncaNFE_CDNF.AsString   := trim(NodeSec.ChildNodes['nNF'].Text);
  imp_ncaNFE_NATOP.Value     := trim(NodeSec.ChildNodes['natOp'].Text);
  imp_ncaNFE_INDPAG.AsString := trim(NodeSec.ChildNodes['indPag'].Text);
  imp_ncaNFE_MOD.Value       := trim(NodeSec.ChildNodes['mod'].Text);
  imp_ncaNFE_SERIE.Value     := trim(NodeSec.ChildNodes['serie'].Text);

  sbMSG.Hint := copy(NodeSec.ChildNodes['dEmi'].Text ,9,2)+'/'+copy(NodeSec.ChildNodes['dEmi'].Text, 6,2)+'/'+copy(NodeSec.ChildNodes['dEmi'].Text,1,4);
  if Length(sbMSG.Hint) < 8 then
  sbMSG.Hint := copy(NodeSec.ChildNodes['dhEmi'].Text,9,2)+'/'+copy(NodeSec.ChildNodes['dhEmi'].Text,6,2)+'/'+copy(NodeSec.ChildNodes['dhEmi'].Text,1,4);

  imp_ncaNFE_DEMI.Value := strtodate(sbMSG.Hint);
  imp_ncaNFE_DSAI.Value := imp_ncaNFE_DEMI.AsDateTime;
  
  if trim(NodeSec.ChildNodes['dSaiEnt'].Text) <> '' then
  imp_ncaNFE_DSAI.Value      := strtodate(copy(NodeSec.ChildNodes['dSaiEnt'].Text,9,2)+'/'+copy(NodeSec.ChildNodes['dSaiEnt'].Text,6,2)+'/'+copy(NodeSec.ChildNodes['dSaiEnt'].Text,1,4));
  
  imp_ncaNFE_TPNF.AsString   := trim(NodeSec.ChildNodes['tpNF'].Text);
  imp_ncaNFE_cMunFG.Value    := trim(NodeSec.ChildNodes['cMunFG'].Text);
  imp_ncaNFE_TPIMP.Value     := trim(NodeSec.ChildNodes['tpImp'].Text);
  imp_ncaNFE_TPEMIS.AsString := trim(NodeSec.ChildNodes['tpEmis'].Text);
  imp_ncaNFE_FINNFE.AsString := trim(NodeSec.ChildNodes['finNFe'].Text);
  imp_ncaNFE_PROCEMI.Value   := trim(NodeSec.ChildNodes['procEmi'].Text);
  if (imp_ncaNFE_PROCEMI.AsString = '')  or (imp_ncaNFE_PROCEMI.AsString = '0') then
  imp_ncaNFE_PROCEMI.Value := '3.10';

  // Lendo o nó dos totais
  NodePai := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('total');
  if NodePai = nil then
  begin
    NodePai := vXMLDoc.DocumentElement.ChildNodes.FindNode('NFe');
    NodePai := NodePai.ChildNodes.FindNode('infNFe');
    NodePai := NodePai.ChildNodes['total'];
  end;
  NodePai.ChildNodes.First;

  // Lendo o nó dos produtos
  NodeSec := NodePai.ChildNodes['ICMSTot'];
  NodeSec.ChildNodes.First;

  imp_ncaNFE_VBC.Value        := RETORNA_VALOR(trim(NodeSec.ChildNodes['vBC'].Text));
  imp_ncaNFE_VICMS.Value      := RETORNA_VALOR(trim(NodeSec.ChildNodes['vICMS'].Text));
  imp_ncaNFE_VICMSDESON.Value := RETORNA_VALOR(trim(NodeSec.ChildNodes['vICMSDeson'].Text));
  imp_ncaNFE_VBCST.Value      := RETORNA_VALOR(trim(NodeSec.ChildNodes['vBCST'].Text));
  imp_ncaNFE_VST.Value        := RETORNA_VALOR(trim(NodeSec.ChildNodes['vST'].Text));
  imp_ncaNFE_VPROD.Value      := RETORNA_VALOR(trim(NodeSec.ChildNodes['vProd'].Text));
  imp_ncaNFE_VFRETE.Value     := RETORNA_VALOR(trim(NodeSec.ChildNodes['vFrete'].Text));
  imp_ncaNFE_VSEG.Value       := RETORNA_VALOR(trim(NodeSec.ChildNodes['vSeg'].Text));
  imp_ncaNFE_VDESC.Value      := RETORNA_VALOR(trim(NodeSec.ChildNodes['vDesc'].Text));
  imp_ncaNFE_VII.Value        := RETORNA_VALOR(trim(NodeSec.ChildNodes['vII'].Text));
  imp_ncaNFE_VIPI.Value       := RETORNA_VALOR(trim(NodeSec.ChildNodes['vIPI'].Text));
  imp_ncaNFE_VPIS.Value       := RETORNA_VALOR(trim(NodeSec.ChildNodes['vPIS'].Text));
  imp_ncaNFE_VCOFINS.Value    := RETORNA_VALOR(trim(NodeSec.ChildNodes['vCOFINS'].Text));
  imp_ncaNFE_VOUTRO.Value     := RETORNA_VALOR(trim(NodeSec.ChildNodes['vOutro'].Text));
  imp_ncaNFE_VNF.Value        := RETORNA_VALOR(trim(NodeSec.ChildNodes['vNF'].Text));
  imp_ncaNFE_VTOTTRIB.Value   := RETORNA_VALOR(trim(NodeSec.ChildNodes['vTotTrib'].Text));

  // Lendo o nó das informações adicionais

  NodePai := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('infAdic');
  if NodePai = Nil then
  begin
    NodePai := vXMLDoc.DocumentElement.ChildNodes.FindNode('NFe');
    if NodePai <> Nil then
    NodePai := NodePai.ChildNodes.FindNode('infNFe');
    if NodePai <> Nil then
    NodePai := NodePai.ChildNodes['infAdic'];
  end;

  if NodePai <> nil then
  imp_ncaNFE_INFCPL.Value := StringReplace(Trim(NodePai.ChildNodes['infCpl'].Text),'|','',[rfReplaceAll]);
  imp_nca.Post;

  if cbTIPO.Text = 'XML + CONTAS A PAGAR' then
  begin
    NodePai := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('cobr');
    if NodePai = nil then
    begin
      NodePai := vXMLDoc.DocumentElement.ChildNodes.FindNode('NFe');
      NodePai := NodePai.ChildNodes.FindNode('infNFe');
      NodePai := NodePai.ChildNodes['cobr'];
    end;

    if NodePai <> nil then
    begin
      NodeSec := NodePai.ChildNodes['dup'];
      NodeSec.ChildNodes.First;

      repeat
        imp_ndu.Append;
        imp_nduID.Value       := 0;
        imp_nduNFE_CDRO.Value := 0;
        imp_nduNFE_CFAV.Value := imp_ncaNFE_CFAV.AsInteger;
        imp_nduNFE_DROM.Value := imp_ncaNFE_DEMI.AsDateTime;
        imp_nduNFE_CDNF.Value := imp_ncaNFE_CDNF.AsInteger;
        imp_nduNFE_DNFE.Value := imp_ncaNFE_DEMI.AsDateTime;
        imp_nduNFE_TITU.Value := trim(NodeSec.ChildNodes['nDup'].Text);
        imp_nduNFE_PARC.Value := i;
        imp_nduNFE_DVEN.Value := strtodate(copy(NodeSec.ChildNodes['dVenc'].Text,9,2)   +'/'+copy(NodeSec.ChildNodes['dVenc'].Text,6,2)   +'/'+copy(NodeSec.ChildNodes['dVenc'].Text,1,4));
        imp_nduNFE_VDUP.Value := RETORNA_VALOR(trim(NodeSec.ChildNodes['vDup'].Text));
        imp_ndu.Post;

        NodeSec := NodeSec.NextSibling;
      until NodeSec = nil;
    end else
    begin
      imp_ndu.Append;
      imp_nduID.Value       := 0;
      imp_nduNFE_CDRO.Value := 0;
      imp_nduNFE_CFAV.Value := imp_ncaNFE_CFAV.AsInteger;
      imp_nduNFE_DROM.Value := imp_ncaNFE_DEMI.AsDateTime;
      imp_nduNFE_CDNF.Value := imp_ncaNFE_CDNF.AsInteger;
      imp_nduNFE_DNFE.Value := imp_ncaNFE_DEMI.AsDateTime;
      imp_nduNFE_TITU.Value := imp_ncaNFE_CDNF.AsString;
      imp_nduNFE_PARC.Value := 1;
      imp_nduNFE_DVEN.Value := imp_ncaNFE_DEMI.AsDateTime;
      imp_nduNFE_VDUP.Value := imp_ncaNFE_VNF.AsFloat;
      imp_ndu.Post;
    end;
  end;
end;

procedure tfrmimporta_geral.IMPORTA_TRANSPORTADORA;
var vXMLDoc: TXMLDocument;
    NodePai,NodeSec, NodeTmp: IXMLNode;
    cNomearq: string;
begin
  // Cria a variável baseada no TXMLDocument
  vXMLDoc  := TXMLDocument.Create(self);
  cNomearq := openARQ.FileName;

  // Le conteúdo do arquivo XML informado
  vXMLDoc.LoadFromFile(cNomearq);

  // Aqui eu peço para encontrar a primeira ocorrencia da Tag <det>>
  NodePai := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('transp');
  if NodePai = nil then
  begin
    NodePai := vXMLDoc.DocumentElement.ChildNodes.FindNode('NFe');
    NodePai := NodePai.ChildNodes.FindNode('infNFe');
    NodePai := NodePai.ChildNodes['transp'];
  end;
  // Esse nó vai ser usado no LOOP
  NodeSec := NodePai;
  // Posiciona o primeiro elemento encontrado
  NodeSec.ChildNodes.First;

  NodeTmp  := NodeSec.ChildNodes['transporta'];
  NodeTmp.ChildNodes.First;

  with cad_tra do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_TRA');
    if trim(copy(trim(NodeTmp.ChildNodes['xNome'].Text),1,10)) <> '' then
    SelectSQL.Add('WHERE TRA_FANT LIKE ''%'+UPPERCASE(trim(copy(trim(NodeTmp.ChildNodes['xNome'].Text),1,10)))+'%''') else
    SelectSQL.Add('WHERE ID = 1');
    Open;
    if fields[0].IsNull then
    begin
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_TRA');
      SelectSQL.Add('WHERE  TRA_RAZA LIKE ''%'+UPPERCASE(trim(copy(trim(NodeTmp.ChildNodes['xNome'].Text),1,10)))+'%''');
      Open;
    end;
  end;

  if cad_tra.Fields[0].IsNull then
  begin
    ShowMessage('Transportadora '+trim(NodeTmp.ChildNodes['xNome'].Text)+' não cadastrado !'+#13+'O sistema fará o cadastro automáticamente.');

    cad_tra.Append;
    cad_traID.Value       := 0;
    cad_traTRA_CNPJ.Value := UPPERCASE(trim(NodeTmp.ChildNodes['CNPJ'].Text));
    cad_traTRA_FANT.Value := UPPERCASE(trim(copy(trim(NodeTmp.ChildNodes['xNome'].Text),1,60)));
    cad_traTRA_RAZA.Value := UPPERCASE(trim(copy(trim(NodeTmp.ChildNodes['xNome'].Text),1,60)));
    cad_traTRA_INSC.Value := UPPERCASE(trim(NodeTmp.ChildNodes['IE'].Text));
    cad_traTRA_TLOG.Value := '.';
    cad_traTRA_LOGR.Value := UPPERCASE(trim(NodeTmp.ChildNodes['xEnder'].Text));
    cad_traTRA_NUME.Value := '.';
    cad_traTRA_CID.Value  := UPPERCASE(trim(NodeTmp.ChildNodes['xMun'].Text));
    cad_traTRA_ESTA.Value := UPPERCASE(trim(NodeTmp.ChildNodes['UF'].Text));
    cad_tra.Post;
    cad_tra.Close;
    cad_tra.Open;
  end;
  XMLIDTra    := IntToStr(cad_traID.AsInteger);
  XMLModFrete := Trim(NodeSec.ChildNodes['modFrete'].Text);

  NodeTmp  := NodeSec.ChildNodes['vol'];
  NodeTmp.ChildNodes.First;

  if Trim(NodeTmp.ChildNodes['qVol'].Text) <> '' then
  XMLQVol  := Trim(NodeTmp.ChildNodes['qVol'].Text);
  XMLEsp   := trim(NodeTmp.ChildNodes['esp'].Text);
  XMLMarca := trim(NodeTmp.ChildNodes['marca'].Text);
  XMLNVol  := trim(NodeTmp.ChildNodes['nVol'].Text);
  if (Trim(NodeTmp.ChildNodes['pesoL'].Text) <> '') and (trim(NodeTmp.ChildNodes['pesoL'].Text) <> '') then
  XMLPSLQ  := RETORNA_VALOR(trim(NodeTmp.ChildNodes['pesoL'].Text));
  XMLPSBR  := RETORNA_VALOR(trim(NodeTmp.ChildNodes['pesoB'].Text));
end;

procedure Tfrmimporta_geral.PESQUISA_TXT;
begin
  openARQ.Filter := 'Arquivos TXT (*.txt)|*.TXT';
  if not openARQ.Execute then
  Abort;

  IMPORTA_TXT;
end;

procedure Tfrmimporta_geral.PESQUISA_XML;
begin
  openARQ.Filter := 'Arquivos XML (*.xml)|*.XML';
  if not openARQ.Execute then
  Abort;

  try
    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('DELETE FROM NFE_CAB');
      ExecSQL;

      SQL.Clear;
      SQL.Add('DELETE FROM NFE_DUP');
      ExecSQL;

      SQL.Clear;
      SQL.Add('DELETE FROM NFE_TRA');
      ExecSQL;

      SQL.Clear;
      SQL.Add('DELETE FROM NFE_CLI');
      ExecSQL;
    end;

    oRTransact(TSheild);
    imp_nca.Open;
    imp_nit.Open;
    imp_ndu.Open;
    imp_ntr.Open;
  finally
    IMPORTA_TRANSPORTADORA;
    IMPORTA_ITENS;
    IMPORTA_CABECARIO;
  end;
end;

function Tfrmimporta_geral.VERIFICA_EMPRESA: Boolean;
begin
  if cbFANT.Text = '' then
  begin
    cbFANT.SetFocus;
    raise exception.Create('Empresa não Informada !');
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM PAR_SIS');
    SQL.Add('WHERE  PAR_FANT = '''+cbFANT.Text+'''');
    Open;
    if fields[0].IsNull then
    begin
      cbFANT.SetFocus;
      raise exception.Create('Empresa não Cadastrada !');
    end;

    CDEP := Fields[0].AsInteger;
  end;

  result := (CDEP > 0);
end;

procedure Tfrmimporta_geral.PESQUISA_LANCAMENTO_ESTOQUE;
begin
  pro_ite.Close;
  pro_ite.ParamByName('CDRO').Value := edTXT.Text;
  pro_ite.Open;

  if pro_ite.Fields[0].IsNull then
  raise exception.Create('Lançamento de Estoque não Encontrado !');

  try
    oOTransact(DMDados.TFBConsulta);
    while not pro_ite.Eof do
    begin
      if PESQUISA_PRODUTO('CAD_PRO.ID',pro_itePRO_CPRO.AsString) then
      begin
        imp_ite.Append;
        imp_iteROM_QTDE.Value := pro_itePRO_QTDE.AsFloat;
        imp_ite.Post;
      end;
      pro_ite.Next;
    end;
  finally
    oCTransact(DMDados.TFBConsulta);
  end;
end;

procedure Tfrmimporta_geral.PESQUISA_PROGRAMACAO_VENDA;
begin
  if CDEP = 1 then
  TABELA := 'PED_PRG_CAB' else TABELA := 'PED_PRG_CAB_'+oStrZero(CDEP,3);
  with prg_cab do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PED_PRG_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
    SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+TABELA+' "PED_PRG_CAB"');
    SQL.Add('WHERE    PED_PRG_CAB.ROM_CCLI = CAD_CLI.ID');
    SQL.Add('AND      PED_PRG_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
    SQL.Add('AND      PED_PRG_CAB.ROM_CREP = CAD_REP.ID');
    SQL.Add('AND      PED_PRG_CAB.ROM_CPAG = TAB_PAG.ID');
    SQL.Add('AND      PED_PRG_CAB.ROM_DERO = '''+edTXT.Text+'''');
    Open;
  end;

  if prg_cab.Fields[0].IsNull then
  raise exception.Create('Pedido não Encontrado !');

  if CDEP = 1 then
  TABELA := 'PED_PRG_ITE' else TABELA := 'PED_PRG_ITE_'+oStrZero(CDEP,3);
  with prg_ite do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM '+TABELA);
    SQL.Add('WHERE    ROM_CCAB = '''+prg_cabID.AsString+'''');
    SQL.Add('ORDER BY ROM_ITEM');
    Open;
  end;

  if (prg_cab.Fields[0].IsNull) or (prg_ite.Fields[0].IsNull) then
  raise exception.Create('Pedido não Encontrado !');

  imp_cab.Append;
  imp_cabID.Value       := 0;
  imp_cabROM_CDOC.Value := prg_cabROM_CDOC.Value;
  imp_cabROM_CDPR.Value := prg_cabID.Value;
  imp_cabROM_CDPD.Value := prg_cabROM_CDPD.Value;
  imp_cabROM_CDRO.Value := prg_cabROM_CDRO.Value;
  imp_cabROM_CDRD.Value := prg_cabROM_CDRD.Value;
  imp_cabROM_CDNF.Value := prg_cabROM_CDNF.Value;
  imp_cabROM_CDBX.Value := prg_cabROM_CDBX.Value;
  imp_cabROM_CDCX.Value := prg_cabROM_CDCX.Value;
  imp_cabROM_DERO.Value := prg_cabROM_DERO.Value;
  imp_cabROM_STPD.Value := prg_cabROM_STPD.Value;
  imp_cabROM_STCO.Value := prg_cabROM_STCO.Value;
  imp_cabROM_STFI.Value := prg_cabROM_STFI.Value;
  imp_cabROM_DROM.Value := prg_cabROM_DROM.Value;
  imp_cabROM_HROM.Value := prg_cabROM_HROM.Value;
  imp_cabROM_DBAI.Value := prg_cabROM_DBAI.Value;
  imp_cabROM_DCAN.Value := prg_cabROM_DCAN.Value;
  imp_cabROM_DNFS.Value := prg_cabROM_DNFS.Value;
  imp_cabROM_DEXP.Value := prg_cabROM_DEXP.Value;
  imp_cabROM_HEXP.Value := prg_cabROM_HEXP.Value;
  imp_cabROM_CEXP.Value := prg_cabROM_CEXP.Value;
  imp_cabROM_CCLI.Value := prg_cabROM_CCLI.Value;
  imp_cabROM_DCLI.Value := prg_cabCLI_FANT.Value;
  imp_cabROM_CVEN.Value := prg_cabROM_CVEN.Value;
  imp_cabROM_DVEN.Value := prg_cabUSU_DUSU.Value;
  imp_cabROM_CREP.Value := prg_cabROM_CREP.Value;
  imp_cabROM_DREP.Value := prg_cabREP_FANT.Value;
  imp_cabROM_CPAG.Value := prg_cabROM_CPAG.Value;
  imp_cabROM_DPAG.Value := prg_cabPAG_DPAG.Value;
  imp_cabROM_QTVE.Value := prg_cabROM_QTVE.Value;
  imp_cabROM_QTSP.Value := prg_cabROM_QTSP.Value;
  imp_cabROM_QTPD.Value := prg_cabROM_QTPD.Value;
  imp_cabROM_RLVE.Value := prg_cabROM_RLVE.Value;
  imp_cabROM_TSDE.Value := prg_cabROM_TSDE.Value;
  imp_cabROM_TDSC.Value := prg_cabROM_TDSC.Value;
  imp_cabROM_PDSC.Value := prg_cabROM_PDSC.Value;
  imp_cabROM_CDSC.Value := prg_cabROM_CDSC.Value;
  imp_cabROM_ADSC.Value := prg_cabROM_ADSC.Value;
  imp_cabROM_TCDE.Value := prg_cabROM_TCDE.Value;
  imp_cabROM_CONC.Value := prg_cabROM_CONC.Value;
  imp_cabROM_OBSE.Value := prg_cabROM_OBSE.Value;
  imp_cabROM_STA.Value  := prg_cabROM_STA.Value ;
  imp_cab.Post;

  try
    oOTransact(DMDados.TFBConsulta);
    while not prg_ite.Eof do
    begin
      if PESQUISA_PRODUTO('CAD_PRO.ID',prg_iteROM_CPRO.AsString) then
      begin
        imp_ite.Append;
        imp_iteROM_ITEM.Value := prg_iteROM_ITEM.AsString;
        imp_iteROM_DPRO.Value := prg_iteROM_DPRO.AsString;
        imp_iteROM_DCOR.Value := prg_iteROM_DCOR.AsString;
        imp_iteROM_PCOR.Value := prg_iteROM_PCOR.AsString;
        imp_iteROM_OBSE.Value := prg_iteROM_OBSE.AsString;
        imp_iteROM_QTRL.Value := prg_iteROM_QTRL.AsInteger;
        imp_iteROM_QTDE.Value := prg_iteROM_QTDE.AsFloat;
        imp_iteROM_UNIT.Value := prg_iteROM_UNIT.AsFloat;
        imp_iteROM_PREC.Value := prg_iteROM_PREC.AsFloat;
        imp_iteROM_TOTA.Value := prg_iteROM_TOTA.AsFloat;
        imp_ite.Post;
      end;
      prg_ite.Next;
    end;
  finally
    oCTransact(DMDados.TFBConsulta);
  end;
end;

procedure Tfrmimporta_geral.PESQUISA_PEDIDO_VENDA;
begin
  if CDEP = 1 then
  TABELA := 'PED_VEN_CAB' else TABELA := 'PED_VEN_CAB_'+oStrZero(CDEP,3);
  with ped_cab do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
    SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+TABELA+' "PED_VEN_CAB"');
    SQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
    SQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
    SQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
    SQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');
    SQL.Add('AND      PED_VEN_CAB.ROM_DERO = '''+edTXT.Text+'''');
    Open;
  end;

  if ped_cab.Fields[0].IsNull then
  raise exception.Create('Pedido não Encontrado !');

  if CDEP = 1 then
  TABELA := 'PED_VEN_ITE' else TABELA := 'PED_VEN_ITE_'+oStrZero(CDEP,3);
  with ped_ite do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM '+TABELA);
    SQL.Add('WHERE    ROM_CCAB = '''+ped_cabID.AsString+'''');
    SQL.Add('ORDER BY ROM_ITEM');
    Open;
  end;

  if (ped_cab.Fields[0].IsNull) or (ped_ite.Fields[0].IsNull) then
  raise exception.Create('Pedido não Encontrado !');

  imp_cab.Append;
  imp_cabID.Value       := 0;
  imp_cabROM_CDOC.Value := ped_cabROM_CDOC.Value;
  imp_cabROM_CDPR.Value := ped_cabROM_CDPR.Value;
  imp_cabROM_CDPD.Value := ped_cabID.Value;
  imp_cabROM_CDRO.Value := ped_cabROM_CDRO.Value;
  imp_cabROM_CDRD.Value := ped_cabROM_CDRD.Value;
  imp_cabROM_CDNF.Value := ped_cabROM_CDNF.Value;
  imp_cabROM_CDBX.Value := ped_cabROM_CDBX.Value;
  imp_cabROM_CDCX.Value := ped_cabROM_CDCX.Value;
  imp_cabROM_DERO.Value := ped_cabROM_DERO.Value;
  imp_cabROM_STPD.Value := ped_cabROM_STPD.Value;
  imp_cabROM_STCO.Value := ped_cabROM_STCO.Value;
  imp_cabROM_STFI.Value := ped_cabROM_STFI.Value;
  imp_cabROM_DROM.Value := ped_cabROM_DROM.Value;
  imp_cabROM_HROM.Value := ped_cabROM_HROM.Value;
  imp_cabROM_DBAI.Value := ped_cabROM_DBAI.Value;
  imp_cabROM_DCAN.Value := ped_cabROM_DCAN.Value;
  imp_cabROM_DNFS.Value := ped_cabROM_DNFS.Value;
  imp_cabROM_DEXP.Value := ped_cabROM_DEXP.Value;
  imp_cabROM_HEXP.Value := ped_cabROM_HEXP.Value;
  imp_cabROM_CEXP.Value := ped_cabROM_CEXP.Value;
  imp_cabROM_CCLI.Value := ped_cabROM_CCLI.Value;
  imp_cabROM_DCLI.Value := ped_cabCLI_FANT.Value;
  imp_cabROM_CVEN.Value := ped_cabROM_CVEN.Value;
  imp_cabROM_DVEN.Value := ped_cabUSU_DUSU.Value;
  imp_cabROM_CREP.Value := ped_cabROM_CREP.Value;
  imp_cabROM_DREP.Value := ped_cabREP_FANT.Value;
  imp_cabROM_CPAG.Value := ped_cabROM_CPAG.Value;
  imp_cabROM_DPAG.Value := ped_cabPAG_DPAG.Value;
  imp_cabROM_QTVE.Value := ped_cabROM_QTVE.Value;
  imp_cabROM_QTSP.Value := ped_cabROM_QTSP.Value;
  imp_cabROM_QTPD.Value := ped_cabROM_QTPD.Value;
  imp_cabROM_RLVE.Value := ped_cabROM_RLVE.Value;
  imp_cabROM_TSDE.Value := ped_cabROM_TSDE.Value;
  imp_cabROM_TDSC.Value := ped_cabROM_TDSC.Value;
  imp_cabROM_PDSC.Value := ped_cabROM_PDSC.Value;
  imp_cabROM_CDSC.Value := ped_cabROM_CDSC.Value;
  imp_cabROM_ADSC.Value := ped_cabROM_ADSC.Value;
  imp_cabROM_TCDE.Value := ped_cabROM_TCDE.Value;
  imp_cabROM_CONC.Value := ped_cabROM_CONC.Value;
  imp_cabROM_OBSE.Value := ped_cabROM_OBSE.Value;
  imp_cabROM_STA.Value  := ped_cabROM_STA.Value ;
  imp_cab.Post;

  try
    oOTransact(DMDados.TFBConsulta);
    while not ped_ite.Eof do
    begin
      if PESQUISA_PRODUTO('CAD_PRO.ID',ped_iteROM_CPRO.AsString) then
      begin
        imp_ite.Append;
        imp_iteROM_ITEM.Value := ped_iteROM_ITEM.AsString;
        imp_iteROM_DPRO.Value := ped_iteROM_DPRO.AsString;
        imp_iteROM_DCOR.Value := ped_iteROM_DCOR.AsString;
        imp_iteROM_PCOR.Value := ped_iteROM_PCOR.AsString;
        imp_iteROM_OBSE.Value := ped_iteROM_OBSE.AsString;
        imp_iteROM_QTRL.Value := ped_iteROM_QTRL.AsInteger;
        imp_iteROM_QTDE.Value := ped_iteROM_QTDE.AsFloat;
        imp_iteROM_UNIT.Value := ped_iteROM_UNIT.AsFloat;
        imp_iteROM_PREC.Value := ped_iteROM_PREC.AsFloat;
        imp_iteROM_TOTA.Value := ped_iteROM_TOTA.AsFloat;
        imp_ite.Post;
      end;
      ped_ite.Next;
    end;
  finally
    oCTransact(DMDados.TFBConsulta);
  end;
end;

procedure Tfrmimporta_geral.PESQUISA_ROMANEIO_VENDA;
begin
  if (CDEP = 1) then
  TABELA := 'ROM_CAB' else TABELA := 'ROM_CAB_'+oStrZero(CDEP,3);
  with rom_cab do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ROM_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
    SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+TABELA+' "ROM_CAB"');
    SQL.Add('WHERE    ROM_CAB.ROM_CCLI = CAD_CLI.ID');
    SQL.Add('AND      ROM_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
    SQL.Add('AND      ROM_CAB.ROM_CREP = CAD_REP.ID');
    SQL.Add('AND      ROM_CAB.ROM_CPAG = TAB_PAG.ID');
    SQL.Add('AND      ROM_CAB.ID       = '''+edTXT.Text+'''');
    Open;
  end;

  if rom_cab.Fields[0].IsNull then
  raise exception.Create('Romaneio não Encontrado !');

  if CDEP = 1 then
  TABELA := 'ROM_ITE' else TABELA := 'ROM_ITE_'+oStrZero(CDEP,3);
  with rom_ite do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ROM_ITE.*,CAD_PRO.ID,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_CCOR,');
    SQL.Add('         CAD_PRO.PRO_RCOR,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
    SQL.Add('         CAD_PRO.PRO_CBAR,CAD_PRO.PRO_PPRO,CAD_PRO.PRO_CEMB,CAD_PRO.PRO_GRAD,');
    SQL.Add('         CAD_PRO.PRO_PIPI,CAD_PRO.PRO_REPR,CAD_PRO_IMG.PRO_FOTO');
    SQL.Add('FROM     CAD_PRO_IMG,CAD_PRO,'+TABELA+' "ROM_ITE"');
    SQL.Add('WHERE    ROM_ITE.ROM_CPRO = CAD_PRO.ID');
    SQL.Add('AND      CAD_PRO_IMG.PRO_CART = CAD_PRO.PRO_CART');
    SQL.Add('AND      ROM_ITE.ROM_CCAB = '''+rom_cabID.AsString+'''');
    SQL.Add('ORDER BY ROM_ITE.ROM_ITEM');
    Open;
  end;

  if (rom_cab.Fields[0].IsNull) or (rom_ite.Fields[0].IsNull) then
  raise exception.Create('Romaneio não Encontrado !');

  imp_cab.Append;
  imp_cabID.Value       := 0;
  imp_cabROM_CDOC.Value := rom_cabROM_CDOC.Value;
  imp_cabROM_CDPR.Value := rom_cabROM_CDPR.Value;
  imp_cabROM_CDPD.Value := rom_cabROM_CDPD.Value;
  imp_cabROM_CDRO.Value := rom_cabROM_CDRO.Value;
  imp_cabROM_CDRD.Value := rom_cabROM_CDRD.Value;
  imp_cabROM_CDNF.Value := rom_cabROM_CDNF.Value;
  imp_cabROM_CDBX.Value := rom_cabROM_CDBX.Value;
  imp_cabROM_CDCX.Value := rom_cabROM_CDCX.Value;
  imp_cabROM_DERO.Value := rom_cabROM_DERO.Value;
  imp_cabROM_STPD.Value := rom_cabROM_STPD.Value;
  imp_cabROM_STCO.Value := rom_cabROM_STCO.Value;
  imp_cabROM_STFI.Value := rom_cabROM_STFI.Value;
  imp_cabROM_DROM.Value := rom_cabROM_DROM.Value;
  imp_cabROM_HROM.Value := rom_cabROM_HROM.Value;
  imp_cabROM_DBAI.Value := rom_cabROM_DBAI.Value;
  imp_cabROM_DCAN.Value := rom_cabROM_DCAN.Value;
  imp_cabROM_DNFS.Value := rom_cabROM_DNFS.Value;
  imp_cabROM_DEXP.Value := rom_cabROM_DEXP.Value;
  imp_cabROM_HEXP.Value := rom_cabROM_HEXP.Value;
  imp_cabROM_CEXP.Value := rom_cabROM_CEXP.Value;
  imp_cabROM_CCLI.Value := rom_cabROM_CCLI.Value;
  imp_cabROM_DCLI.Value := rom_cabCLI_FANT.Value;
  imp_cabROM_CVEN.Value := rom_cabROM_CVEN.Value;
  imp_cabROM_DVEN.Value := rom_cabUSU_DUSU.Value;
  imp_cabROM_CREP.Value := rom_cabROM_CREP.Value;
  imp_cabROM_DREP.Value := rom_cabREP_FANT.Value;
  imp_cabROM_CPAG.Value := rom_cabROM_CPAG.Value;
  imp_cabROM_DPAG.Value := rom_cabPAG_DPAG.Value;
  imp_cabROM_QTVE.Value := rom_cabROM_QTVE.Value;
  imp_cabROM_QTSP.Value := rom_cabROM_QTSP.Value;
  imp_cabROM_QTPD.Value := rom_cabROM_QTPD.Value;
  imp_cabROM_RLVE.Value := rom_cabROM_RLVE.Value;
  imp_cabROM_TSDE.Value := rom_cabROM_TSDE.Value;
  imp_cabROM_TDSC.Value := rom_cabROM_TDSC.Value;
  imp_cabROM_PDSC.Value := rom_cabROM_PDSC.Value;
  imp_cabROM_CDSC.Value := rom_cabROM_CDSC.Value;
  imp_cabROM_ADSC.Value := rom_cabROM_ADSC.Value;
  imp_cabROM_TCDE.Value := rom_cabROM_TCDE.Value;
  imp_cabROM_CONC.Value := rom_cabROM_CONC.Value;
  imp_cabROM_OBSE.Value := rom_cabROM_OBSE.Value;
  imp_cabROM_STA.Value  := rom_cabROM_STA.Value ;
  imp_cab.Post;

  try
    oOTransact(DMDados.TFBConsulta);
    while not rom_ite.Eof do
    begin
      if PESQUISA_PRODUTO('CAD_PRO.ID',rom_iteROM_CPRO.AsString) then
      begin
        imp_ite.Append;
        imp_iteROM_ITEM.Value := rom_iteROM_ITEM.AsString;
        imp_iteROM_DPRO.Value := rom_iteROM_DPRO.AsString;
        imp_iteROM_DCOR.Value := rom_iteROM_DCOR.AsString;
        imp_iteROM_PCOR.Value := rom_iteROM_PCOR.AsString;
        imp_iteROM_OBSE.Value := rom_iteROM_OBSE.AsString;
        imp_iteROM_QTRL.Value := rom_iteROM_QTRL.AsInteger;
        imp_iteROM_QTDE.Value := rom_iteROM_QTDE.AsFloat;
        imp_iteROM_UNIT.Value := rom_iteROM_UNIT.AsFloat;
        imp_iteROM_PREC.Value := rom_iteROM_PREC.AsFloat;
        imp_iteROM_TOTA.Value := rom_iteROM_TOTA.AsFloat;
        imp_ite.Post;
      end;
      rom_ite.Next;
    end;
  finally
    oCTransact(DMDados.TFBConsulta);
  end;
end;

procedure Tfrmimporta_geral.dtsped_iteDataChange(Sender: TObject;
  Field: TField);
begin
  dbgSUMROM_DCOR.Visible := (ped_iteROM_DCOR.AsString <> '');
  dbgSUMROM_DPRO.Width := dbgSUMROM_DPRO.Tag;
  if not dbgSUMROM_DCOR.Visible then
  dbgSUMROM_DPRO.Width := dbgSUMROM_DPRO.Width+dbgSUMROM_DCOR.Width;
end;

procedure Tfrmimporta_geral.imp_cabNewRecord(DataSet: TDataSet);
begin
  imp_cabID.Value := 0;
end;

procedure Tfrmimporta_geral.imp_iteNewRecord(DataSet: TDataSet);
begin
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT MAX(ROM_ITEM) FROM PED_VEN_ITE');
    SQL.Add('WHERE  ROM_FLAG = 0');
    Open;
    if Fields[0].IsNull then
    imp_iteROM_ITEM.Value := '0001' else
    imp_iteROM_ITEM.Value := oStrZero(Fields[0].AsInteger + 1,4);
  end;

  imp_iteID.Value       := 0;
  imp_iteROM_FLAG.Value := 0;
  imp_iteROM_QTRL.Value := 1;
  imp_iteROM_TPRC.Value := '0';
  imp_iteROM_PRCA.Value := DMDados.FBProdutosPRO_PREC.AsFloat;
  imp_iteROM_PRPA.Value := DMDados.FBProdutosPRO_PPRO.AsFloat;
  imp_iteROM_VPRC.Value := DMDados.FBProdutosPRO_VPRC.AsFloat;
  imp_iteROM_VPRO.Value := DMDados.FBProdutosPRO_VPRO.AsFloat;
  imp_iteROM_RPRC.Value := DMDados.FBProdutosPRO_RPRC.AsFloat;
  imp_iteROM_RPRO.Value := DMDados.FBProdutosPRO_RPRO.AsFloat;
  imp_iteROM_PCOM.Value := DMDados.FBProdutosPRO_PCOM.AsFloat;
  imp_iteROM_CUST.Value := DMDados.FBProdutosPRO_CUST.AsFloat;
  imp_iteROM_UNIT.Value := DMDados.FBProdutosPRO_PREC.AsFloat;
  imp_iteROM_DPRO.Value := DMDados.FBProdutosPRO_DPRO.AsString;
  imp_iteROM_IPRO.Value := DMDados.FBProdutosID.AsInteger;
  imp_iteROM_IPR2.Value := DMDados.FBProdutosID.AsInteger;
  imp_iteROM_CART.Value := DMDados.FBProdutosPRO_CART.AsString;
  imp_iteROM_CPRO.Value := DMDados.FBProdutosPRO_CPRO.AsString;
  imp_iteROM_CPR2.Value := DMDados.FBProdutosPRO_CPRO.AsString;
  imp_iteROM_CCOR.Value := DMDados.FBProdutosPRO_CCOR.AsInteger;
  imp_iteROM_DCOR.Value := DMDados.FBProdutosPRO_DCOR.AsString;
  imp_iteROM_CCO2.Value := DMDados.FBProdutosPRO_CCOR.AsInteger;
  imp_iteROM_DCO2.Value := DMDados.FBProdutosPRO_DCOR.AsString;
  imp_iteROM_DUNI.Value := DMDados.FBProdutosPRO_DUNI.AsString;
  imp_iteROM_FOTO.Value := DMDados.FBProdutosPRO_FOTO.Value;
  imp_iteROM_CBAR.Value := DMDados.FBProdutosPRO_CBAR.AsString;
  imp_iteROM_PPRO.Value := DMDados.FBProdutosPRO_PPRO.AsFloat;
  imp_iteROM_METR.Value := DMDados.FBProdutosPRO_METR.AsFloat;
  imp_iteROM_PESO.Value := DMDados.FBProdutosPRO_PESO.AsFloat;
  imp_iteROM_REND.Value := DMDados.FBProdutosPRO_REND.AsFloat;
  imp_iteROM_PSCN.Value := DMDados.FBProdutosPRO_PSCN.AsFloat;
  imp_iteROM_PSMR.Value := DMDados.FBProdutosPRO_PSMR.AsFloat;
  imp_iteROM_PIPI.Value := DMDados.FBProdutosPRO_PIPI.AsFloat;
  imp_iteROM_FOTO.Value := DMDados.FBProdutosPRO_FOTO.Value;
  imp_iteROM_QDIS.Value := DMDados.FBProdutosC_QDIS.AsFloat;
  imp_iteROM_RLDI.Value := DMDados.FBProdutosC_RDIS.AsInteger;
  imp_iteROM_APRC.Value := DMDados.FBProdutosPRO_APRC.AsString;
  imp_iteROM_LDSC.Value := DMDados.FBProdutosPRO_LDSC.AsFloat;
end;

procedure Tfrmimporta_geral.dtsimp_iteDataChange(Sender: TObject;
  Field: TField);
begin
  dbgSUMROM_UNIT.Visible := (imp_iteROM_UNIT.AsFloat > 0);
  dbgSUMROM_TOTA.Visible := (imp_iteROM_UNIT.AsFloat > 0);
end;

procedure Tfrmimporta_geral.imp_nitNewRecord(DataSet: TDataSet);
begin
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT MAX(NFE_ITEMPED) FROM NFE_ITE');
    Open;
    imp_nitnfe_ITEMPED.Value := Fields[0].AsInteger + 1;
  end;
  imp_nitID.Value := 0;
end;

end.
