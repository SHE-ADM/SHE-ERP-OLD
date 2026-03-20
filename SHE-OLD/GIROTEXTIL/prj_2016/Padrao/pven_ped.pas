unit pven_ped;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math, FMTBcd,
  IBEvents, rxSpeedbar;

type
  Tfrmven_ped = class(TForm)
    imageOPC: TImageList;
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    BSair: TSpeedItem;
    BSal: TSpeedItem;
    imageOPC2: TImageList;
    IBTra: TIBTransaction;
    ibSP: TIBStoredProc;
    rom_001: TIBDataSet;
    dtsrom_001: TDataSource;
    tSHEILD: TIBTransaction;
    consulta_s: TIBQuery;
    pnlconsulta: TPanel;
    imageOPC3: TImageList;
    rom_001ID: TIntegerField;
    rom_001ROM_ITEM: TIBStringField;
    rom_001ROM_CART: TIBStringField;
    rom_001ROM_CPRO: TIBStringField;
    rom_001ROM_DPRO: TIBStringField;
    rom_001ROM_CCOR: TIntegerField;
    rom_001ROM_DCOR: TIBStringField;
    rom_001ROM_DUNI: TIBStringField;
    rom_001ROM_QTDE: TIBBCDField;
    rom_001ROM_VDSC: TIBBCDField;
    rom_001ROM_TOTA: TIBBCDField;
    rom_001ROM_CDET: TIBStringField;
    rom_001ROM_CBAR: TIBStringField;
    rom_001ROM_FOTO: TBlobField;
    rom_001ROM_QDIS: TIBBCDField;
    SpeedBar4: TSpeedBar;
    SpeedbarSection17: TSpeedbarSection;
    SpeedbarSection18: TSpeedbarSection;
    SpeedbarSection19: TSpeedbarSection;
    SpeedbarSection20: TSpeedbarSection;
    siDEL: TSpeedItem;
    siSAV: TSpeedItem;
    siCAN: TSpeedItem;
    siALT: TSpeedItem;
    rom_001ROM_PPRO: TIBBCDField;
    rom_001ROM_PEMB: TIBBCDField;
    consulta: TIBQuery;
    BInf: TSpeedItem;
    rom_001ROM_CGRD: TIBStringField;
    rom_001ROM_DGRD: TIBStringField;
    rom_001ROM_FLAG: TSmallintField;
    rom_001ROM_CDOC: TIntegerField;
    rom_001ROM_RCOR: TIBStringField;
    siINC: TSpeedItem;
    aux: TIBQuery;
    aux2: TIBQuery;
    rom_001ROM_CPR2: TIBStringField;
    rom_001ROM_CCO2: TIntegerField;
    rom_001ROM_RCO2: TIBStringField;
    rom_001ROM_DCO2: TIBStringField;
    rom_001ROM_IPRO: TIntegerField;
    rom_001ROM_IPR2: TIntegerField;
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
    pnlpri: TPanel;
    dbgrom: TdxDBGrid;
    psq_cli: TIBQuery;
    rom_001ROM_CCAB: TIntegerField;
    rom_001ROM_CDPR: TIntegerField;
    rom_001ROM_CDPD: TIntegerField;
    rom_001ROM_CDRO: TIntegerField;
    rom_001ROM_CDNF: TIntegerField;
    rom_001ROM_QTSP: TIBBCDField;
    rom_001ROM_QTPD: TIBBCDField;
    rom_001ROM_QTRL: TIntegerField;
    rom_001ROM_RLSP: TIntegerField;
    rom_001ROM_RLPD: TIntegerField;
    rom_001ROM_RLDI: TIntegerField;
    rom_001ROM_METR: TIBBCDField;
    rom_001ROM_PESO: TIBBCDField;
    rom_001ROM_REND: TIBBCDField;
    rom_001ROM_PSCN: TIBBCDField;
    rom_001ROM_PSMR: TIBBCDField;
    siCLO: TSpeedItem;
    siDES: TSpeedItem;
    rom_001ROM_VBCIPI: TIBBCDField;
    rom_001ROM_PIPI: TIBBCDField;
    rom_001ROM_VIPI: TIBBCDField;
    rom_cab: TIBQuery;
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
    rom_cabCLI_FANT: TIBStringField;
    rom_cabREP_FANT: TIBStringField;
    rom_cabPAG_DPAG: TIBStringField;
    rom_ite: TIBQuery;
    ped_ven_cab: TIBQuery;
    ped_ven_cabID: TIntegerField;
    ped_ven_cabROM_CDOC: TIntegerField;
    ped_ven_cabROM_CDPR: TIntegerField;
    ped_ven_cabROM_CDPD: TIntegerField;
    ped_ven_cabROM_CDRO: TIntegerField;
    ped_ven_cabROM_CDRD: TIntegerField;
    ped_ven_cabROM_CDNF: TIntegerField;
    ped_ven_cabROM_CDBX: TIntegerField;
    ped_ven_cabROM_CDCX: TIntegerField;
    ped_ven_cabROM_DERO: TIBStringField;
    ped_ven_cabROM_STPD: TIBStringField;
    ped_ven_cabROM_STCO: TIBStringField;
    ped_ven_cabROM_STFI: TIBStringField;
    ped_ven_cabROM_DROM: TDateField;
    ped_ven_cabROM_HROM: TTimeField;
    ped_ven_cabROM_DBAI: TDateField;
    ped_ven_cabROM_DCAN: TDateField;
    ped_ven_cabROM_DNFS: TDateField;
    ped_ven_cabROM_DEXP: TDateField;
    ped_ven_cabROM_HEXP: TTimeField;
    ped_ven_cabROM_CEXP: TIntegerField;
    ped_ven_cabROM_CCLI: TIntegerField;
    ped_ven_cabROM_CVEN: TIntegerField;
    ped_ven_cabROM_CREP: TIntegerField;
    ped_ven_cabROM_CPAG: TIntegerField;
    ped_ven_cabROM_QTVE: TIBBCDField;
    ped_ven_cabROM_QTSP: TIBBCDField;
    ped_ven_cabROM_QTPD: TIBBCDField;
    ped_ven_cabROM_RLVE: TIntegerField;
    ped_ven_cabROM_TSDE: TIBBCDField;
    ped_ven_cabROM_TDSC: TIBStringField;
    ped_ven_cabROM_PDSC: TIBBCDField;
    ped_ven_cabROM_CDSC: TIBBCDField;
    ped_ven_cabROM_ADSC: TIBBCDField;
    ped_ven_cabROM_TCDE: TIBBCDField;
    ped_ven_cabROM_CONC: TSmallintField;
    ped_ven_cabROM_OBSE: TMemoField;
    ped_ven_cabROM_STA: TIBStringField;
    ped_ven_cabROM_COMI: TIBBCDField;
    ped_ven_cabCLI_FANT: TIBStringField;
    ped_ven_cabREP_FANT: TIBStringField;
    ped_ven_cabPAG_DPAG: TIBStringField;
    rom_002: TIBDataSet;
    rom_001ROM_TPRC: TIBStringField;
    rom_001ROM_PCOR: TIBStringField;
    rom_001ROM_PCO2: TIBStringField;
    rom_001ROM_ABCD: TIBStringField;
    ped_ven_cabUSU_DUSU: TIBStringField;
    rom_cabROM_COMI: TIBBCDField;
    rom_cabUSU_DUSU: TIBStringField;
    cad_pro: TIBQuery;
    cli_sta: TIBQuery;
    cli_staFIN_DOCT: TIBStringField;
    cli_staFIN_DVEN: TDateField;
    cli_staFIN_VALO: TIBBCDField;
    Panel1: TPanel;
    pnlped: TPanel;
    Shape4: TShape;
    Label3: TLabel;
    Label4: TLabel;
    linha1: TShape;
    Label9: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    linha3: TShape;
    Shape7: TShape;
    Label16: TLabel;
    Shape9: TShape;
    Label17: TLabel;
    Shape10: TShape;
    latdsc: TLabel;
    Shape29: TShape;
    Label24: TLabel;
    Shape24: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Label13: TLabel;
    Label28: TLabel;
    Label18: TLabel;
    Label29: TLabel;
    Label14: TLabel;
    linha2: TShape;
    Shape3: TShape;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label30: TLabel;
    Shape6: TShape;
    Label19: TLabel;
    Shape8: TShape;
    Label20: TLabel;
    edstpd: TdxMaskEdit;
    cbprec: TdxPickEdit;
    edrcli: TdxMaskEdit;
    edcdnf: TdxMaskEdit;
    edcdpd: TdxMaskEdit;
    edcdbx: TdxMaskEdit;
    edqtpc: TdxMaskEdit;
    edqtsp: TdxMaskEdit;
    edcdcx: TdxMaskEdit;
    edadsc: TdxMaskEdit;
    edhrom: TdxMaskEdit;
    edcdsc: TdxMaskEdit;
    edcdro: TdxMaskEdit;
    eddcad: TdxDateEdit;
    cbdven: TdxPickEdit;
    cbdrep: TdxPickEdit;
    cbstpd: TdxPickEdit;
    cbstco: TdxPickEdit;
    pcobs: TdxPageControl;
    tsobs: TdxTabSheet;
    edobse: TdxMemo;
    tsoco: TdxTabSheet;
    edobso: TdxMemo;
    edcrep: TdxMaskEdit;
    edtsde: TdxMaskEdit;
    edtcde: TdxMaskEdit;
    cbdpag: TdxPickEdit;
    edcpag: TdxMaskEdit;
    eddcli: TdxMaskEdit;
    edcven: TdxMaskEdit;
    cbcred: TdxPickEdit;
    edpdsc: TdxMaskEdit;
    edtqtrl: TdxMaskEdit;
    edcnpj: TdxMaskEdit;
    edccli: TdxMaskEdit;
    eddero: TdxMaskEdit;
    pnlfoto: TPanel;
    pro_foto: TImage;
    pEVE: TIBEvents;
    pSP: TIBStoredProc;
    pTRA: TIBTransaction;
    edodsc: TdxMaskEdit;
    aux_S: TIBQuery;
    rom_003: TIBDataSet;
    ped_prg_ite: TIBQuery;
    aux2_S: TIBQuery;
    edagrp: TdxMaskEdit;
    edbest: TdxMaskEdit;
    edfatu: TdxMaskEdit;
    rom_001ROM_UNIT: TFloatField;
    rom_001ROM_STFI: TIBStringField;
    rom_003ID: TIntegerField;
    rom_003ROM_CCAB: TIntegerField;
    rom_003ROM_CDOC: TIntegerField;
    rom_003ROM_CDPR: TIntegerField;
    rom_003ROM_CDPD: TIntegerField;
    rom_003ROM_CDRO: TIntegerField;
    rom_003ROM_CDNF: TIntegerField;
    rom_003ROM_ITEM: TIBStringField;
    rom_003ROM_CART: TIBStringField;
    rom_003ROM_IPRO: TIntegerField;
    rom_003ROM_CPRO: TIBStringField;
    rom_003ROM_IPR2: TIntegerField;
    rom_003ROM_CPR2: TIBStringField;
    rom_003ROM_DPRO: TIBStringField;
    rom_003ROM_CCOR: TIntegerField;
    rom_003ROM_RCOR: TIBStringField;
    rom_003ROM_DCOR: TIBStringField;
    rom_003ROM_PCOR: TIBStringField;
    rom_003ROM_CCO2: TIntegerField;
    rom_003ROM_RCO2: TIBStringField;
    rom_003ROM_DCO2: TIBStringField;
    rom_003ROM_PCO2: TIBStringField;
    rom_003ROM_CGRD: TIBStringField;
    rom_003ROM_DGRD: TIBStringField;
    rom_003ROM_DUNI: TIBStringField;
    rom_003ROM_QTDE: TIBBCDField;
    rom_003ROM_QTRL: TIntegerField;
    rom_003ROM_QTSP: TIBBCDField;
    rom_003ROM_RLSP: TIntegerField;
    rom_003ROM_QTPD: TIBBCDField;
    rom_003ROM_RLPD: TIntegerField;
    rom_003ROM_QDIS: TIBBCDField;
    rom_003ROM_RLDI: TIntegerField;
    rom_003ROM_PRCA: TFloatField;
    rom_003ROM_PRPA: TFloatField;
    rom_003ROM_VPRC: TFloatField;
    rom_003ROM_VPRO: TFloatField;
    rom_003ROM_RPRC: TFloatField;
    rom_003ROM_RPRO: TFloatField;
    rom_003ROM_PCOM: TFloatField;
    rom_003ROM_CUST: TFloatField;
    rom_003ROM_UNIT: TFloatField;
    rom_003ROM_PREC: TFloatField;
    rom_003ROM_VDSC: TIBBCDField;
    rom_003ROM_TOTA: TIBBCDField;
    rom_003ROM_PPRO: TIBBCDField;
    rom_003ROM_PEMB: TIBBCDField;
    rom_003ROM_METR: TIBBCDField;
    rom_003ROM_PESO: TIBBCDField;
    rom_003ROM_REND: TIBBCDField;
    rom_003ROM_PSCN: TIBBCDField;
    rom_003ROM_PSMR: TIBBCDField;
    rom_003ROM_VBCIPI: TIBBCDField;
    rom_003ROM_PIPI: TIBBCDField;
    rom_003ROM_VIPI: TIBBCDField;
    rom_003ROM_CDET: TIBStringField;
    rom_003ROM_CBAR: TIBStringField;
    rom_003ROM_TPRC: TIBStringField;
    rom_003ROM_FLAG: TSmallintField;
    rom_003ROM_FOTO: TBlobField;
    rom_003ROM_ABCD: TIBStringField;
    rom_003ROM_STFI: TIBStringField;
    rom_002ID: TIntegerField;
    rom_002ROM_CCAB: TIntegerField;
    rom_002ROM_CDOC: TIntegerField;
    rom_002ROM_CDPR: TIntegerField;
    rom_002ROM_CDPD: TIntegerField;
    rom_002ROM_CDRO: TIntegerField;
    rom_002ROM_CDNF: TIntegerField;
    rom_002ROM_ITEM: TIBStringField;
    rom_002ROM_CART: TIBStringField;
    rom_002ROM_IPRO: TIntegerField;
    rom_002ROM_CPRO: TIBStringField;
    rom_002ROM_IPR2: TIntegerField;
    rom_002ROM_CPR2: TIBStringField;
    rom_002ROM_DPRO: TIBStringField;
    rom_002ROM_CCOR: TIntegerField;
    rom_002ROM_RCOR: TIBStringField;
    rom_002ROM_DCOR: TIBStringField;
    rom_002ROM_PCOR: TIBStringField;
    rom_002ROM_CCO2: TIntegerField;
    rom_002ROM_RCO2: TIBStringField;
    rom_002ROM_DCO2: TIBStringField;
    rom_002ROM_PCO2: TIBStringField;
    rom_002ROM_CGRD: TIBStringField;
    rom_002ROM_DGRD: TIBStringField;
    rom_002ROM_DUNI: TIBStringField;
    rom_002ROM_QTDE: TIBBCDField;
    rom_002ROM_QTRL: TIntegerField;
    rom_002ROM_QTSP: TIBBCDField;
    rom_002ROM_RLSP: TIntegerField;
    rom_002ROM_QTPD: TIBBCDField;
    rom_002ROM_RLPD: TIntegerField;
    rom_002ROM_QDIS: TIBBCDField;
    rom_002ROM_RLDI: TIntegerField;
    rom_002ROM_PRCA: TFloatField;
    rom_002ROM_PRPA: TFloatField;
    rom_002ROM_VPRC: TFloatField;
    rom_002ROM_VPRO: TFloatField;
    rom_002ROM_RPRC: TFloatField;
    rom_002ROM_RPRO: TFloatField;
    rom_002ROM_PCOM: TFloatField;
    rom_002ROM_CUST: TFloatField;
    rom_002ROM_UNIT: TFloatField;
    rom_002ROM_PREC: TFloatField;
    rom_002ROM_VDSC: TIBBCDField;
    rom_002ROM_TOTA: TIBBCDField;
    rom_002ROM_PPRO: TIBBCDField;
    rom_002ROM_PEMB: TIBBCDField;
    rom_002ROM_METR: TIBBCDField;
    rom_002ROM_PESO: TIBBCDField;
    rom_002ROM_REND: TIBBCDField;
    rom_002ROM_PSCN: TIBBCDField;
    rom_002ROM_PSMR: TIBBCDField;
    rom_002ROM_VBCIPI: TIBBCDField;
    rom_002ROM_PIPI: TIBBCDField;
    rom_002ROM_VIPI: TIBBCDField;
    rom_002ROM_CDET: TIBStringField;
    rom_002ROM_CBAR: TIBStringField;
    rom_002ROM_TPRC: TIBStringField;
    rom_002ROM_FLAG: TSmallintField;
    rom_002ROM_FOTO: TBlobField;
    rom_002ROM_ABCD: TIBStringField;
    rom_002ROM_STFI: TIBStringField;
    rom_001ROM_PRCA: TFloatField;
    rom_001ROM_PRPA: TFloatField;
    rom_001ROM_VPRC: TFloatField;
    rom_001ROM_VPRO: TFloatField;
    rom_001ROM_RPRC: TFloatField;
    rom_001ROM_RPRO: TFloatField;
    rom_001ROM_PCOM: TFloatField;
    rom_001ROM_CUST: TFloatField;
    rom_001ROM_PREC: TFloatField;
    ped_prg_iteID: TIntegerField;
    ped_prg_iteROM_CCAB: TIntegerField;
    ped_prg_iteROM_CDOC: TIntegerField;
    ped_prg_iteROM_CDPR: TIntegerField;
    ped_prg_iteROM_CDPD: TIntegerField;
    ped_prg_iteROM_CDRO: TIntegerField;
    ped_prg_iteROM_CDRD: TIntegerField;
    ped_prg_iteROM_CDNF: TIntegerField;
    ped_prg_iteROM_ITEM: TIBStringField;
    ped_prg_iteROM_CPRO: TIntegerField;
    ped_prg_iteROM_CPR2: TIntegerField;
    ped_prg_iteROM_CDET: TIBStringField;
    ped_prg_iteROM_QTDE: TIBBCDField;
    ped_prg_iteROM_QTRL: TIntegerField;
    ped_prg_iteROM_QTSP: TIBBCDField;
    ped_prg_iteROM_RLSP: TIntegerField;
    ped_prg_iteROM_QTPD: TIBBCDField;
    ped_prg_iteROM_RLPD: TIntegerField;
    ped_prg_iteROM_UNIT: TFloatField;
    ped_prg_iteROM_PREC: TFloatField;
    ped_prg_iteROM_VDSC: TIBBCDField;
    ped_prg_iteROM_TOTA: TIBBCDField;
    ped_prg_iteROM_FLAG: TIBStringField;
    ped_prg_iteROM_COMI: TIBBCDField;
    ped_prg_iteROM_DPRO: TIBStringField;
    ped_prg_iteROM_TPRC: TIBStringField;
    ped_prg_iteROM_ABCD: TIBStringField;
    ped_prg_iteROM_DCOR: TIBStringField;
    ped_prg_iteROM_PCOR: TIBStringField;
    ped_prg_iteROM_DCO2: TIBStringField;
    ped_prg_iteROM_PCO2: TIBStringField;
    ped_prg_iteID1: TIntegerField;
    ped_prg_itePRO_CART: TIBStringField;
    ped_prg_itePRO_CPRO: TIBStringField;
    ped_prg_itePRO_CCOR: TIntegerField;
    ped_prg_itePRO_RCOR: TIBStringField;
    ped_prg_itePRO_DCOR: TIBStringField;
    ped_prg_itePRO_DUNI: TIBStringField;
    ped_prg_itePRO_PIPI: TSmallintField;
    ped_prg_itePRO_CBAR: TIBStringField;
    ped_prg_itePRO_PPRO: TFloatField;
    ped_prg_itePRO_CEMB: TIntegerField;
    ped_prg_itePRO_GRAD: TIBStringField;
    ped_prg_itePRO_REPR: TIBStringField;
    ped_prg_itePRO_APRO: TMemoField;
    ped_prg_itePRO_FOTO: TBlobField;
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
    rom_iteID1: TIntegerField;
    rom_itePRO_CART: TIBStringField;
    rom_itePRO_CPRO: TIBStringField;
    rom_itePRO_CCOR: TIntegerField;
    rom_itePRO_RCOR: TIBStringField;
    rom_itePRO_DCOR: TIBStringField;
    rom_itePRO_DUNI: TIBStringField;
    rom_itePRO_PIPI: TSmallintField;
    rom_itePRO_REPR: TIBStringField;
    rom_itePRO_APRO: TMemoField;
    rom_itePRO_CBAR: TIBStringField;
    rom_itePRO_PPRO: TFloatField;
    rom_itePRO_CEMB: TIntegerField;
    rom_itePRO_GRAD: TIBStringField;
    rom_itePRO_FOTO: TBlobField;
    rom_001ROM_CSEP: TIntegerField;
    rom_001ROM_DSEP: TIBStringField;
    edddsc: TdxMaskEdit;
    rom_003ROM_CSEP: TIntegerField;
    rom_003ROM_DSEP: TIBStringField;
    rom_002ROM_CSEP: TIntegerField;
    rom_002ROM_DSEP: TIBStringField;
    ped_ven_cabROM_DPRD: TDateField;
    ped_ven_cabROM_CTNR: TIBStringField;
    ped_ven_cabROM_DEMB: TDateField;
    ped_ven_cabROM_DDES: TDateField;
    ped_ven_cabROM_CBAI: TIntegerField;
    ped_ven_cabROM_TBAI: TDateTimeField;
    ped_ven_cabROM_UPRN: TIntegerField;
    ped_ven_cabROM_PPRN: TSmallintField;
    ped_ven_cabROM_TPRN: TDateTimeField;
    ped_ven_cabROM_VFRT: TIBBCDField;
    ped_ven_cabROM_DTRA: TIBStringField;
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
    rom_iteROM_DSEP: TIBStringField;
    edpacr: TdxMaskEdit;
    eddesc: TdxMaskEdit;
    edptng: TdxMaskEdit;
    rom_001ROM_APRC: TIBStringField;
    rom_001ROM_LDSC: TIBBCDField;
    rom_002ROM_APRC: TIBStringField;
    rom_002ROM_LDSC: TIBBCDField;
    rom_003ROM_APRC: TIBStringField;
    rom_003ROM_LDSC: TIBBCDField;
    tab_cor: TIBDataSet;
    tab_corID: TIntegerField;
    tab_corCOR_CCOR: TSmallintField;
    tab_corCOR_DCOR: TIBStringField;
    tab_corCOR_STA: TIBStringField;
    tab_corCOR_PREC: TIBStringField;
    tab_corCOR_REFE: TIBStringField;
    tab_corCOR_PADR: TIBStringField;
    tab_corCOR_PCOR: TIBStringField;
    rom_001ROM_TSDE: TIBBCDField;
    rom_002ROM_TSDE: TIBBCDField;
    rom_003ROM_TSDE: TIBBCDField;
    cad_proID: TIntegerField;
    cad_proPRO_DCAD: TDateField;
    cad_proPRO_DALT: TDateField;
    cad_proPRO_DENT: TDateField;
    cad_proPRO_DPRG: TDateField;
    cad_proPRO_DULT: TDateField;
    cad_proPRO_CART: TIBStringField;
    cad_proPRO_CPRO: TIBStringField;
    cad_proPRO_CFOR: TIBStringField;
    cad_proPRO_CBAR: TIBStringField;
    cad_proPRO_DPRO: TIBStringField;
    cad_proPRO_DPR2: TIBStringField;
    cad_proPRO_DPR3: TIBStringField;
    cad_proPRO_DPR4: TIBStringField;
    cad_proPRO_DPR5: TIBStringField;
    cad_proPRO_COMP: TIBStringField;
    cad_proPRO_APRO: TMemoField;
    cad_proPRO_OBSE: TMemoField;
    cad_proPRO_DUNI: TIBStringField;
    cad_proPRO_GRAD: TIBStringField;
    cad_proPRO_CEMB: TIntegerField;
    cad_proPRO_DEMB: TIBStringField;
    cad_proPRO_CGRP: TIntegerField;
    cad_proPRO_RGRP: TIBStringField;
    cad_proPRO_DGRP: TIBStringField;
    cad_proPRO_CCOR: TIntegerField;
    cad_proPRO_RCOR: TIBStringField;
    cad_proPRO_DCOR: TIBStringField;
    cad_proPRO_CCOL: TIntegerField;
    cad_proPRO_DCOL: TIBStringField;
    cad_proPRO_DORI: TIBStringField;
    cad_proPRO_CCST: TIBStringField;
    cad_proPRO_CCLF: TIBStringField;
    cad_proPRO_METR: TIBBCDField;
    cad_proPRO_PESO: TIBBCDField;
    cad_proPRO_UTIL: TIBBCDField;
    cad_proPRO_LARG: TIBBCDField;
    cad_proPRO_GRAM: TIBBCDField;
    cad_proPRO_REND: TIBBCDField;
    cad_proPRO_PSCN: TIBBCDField;
    cad_proPRO_PSMR: TIBBCDField;
    cad_proPRO_ELAS: TIBBCDField;
    cad_proPRO_ELAC: TIBBCDField;
    cad_proPRO_STLN: TIBStringField;
    cad_proPRO_STAL: TIBStringField;
    cad_proPRO_LAVA: TIBStringField;
    cad_proPRO_STA: TIBStringField;
    cad_proPRO_STAV: TIBStringField;
    cad_proPRO_PCOM: TFloatField;
    cad_proPRO_CUST: TFloatField;
    cad_proPRO_PDSC: TIBBCDField;
    cad_proPRO_PREC: TFloatField;
    cad_proPRO_PPRO: TFloatField;
    cad_proPRO_VDSC: TIBBCDField;
    cad_proPRO_VPRC: TFloatField;
    cad_proPRO_VPRO: TFloatField;
    cad_proPRO_RDSC: TIBBCDField;
    cad_proPRO_RPRC: TFloatField;
    cad_proPRO_RPRO: TFloatField;
    cad_proPRO_PIPI: TSmallintField;
    cad_proPRO_VOCX: TSmallintField;
    cad_proPRO_VOSC: TSmallintField;
    cad_proPRO_VOFD: TSmallintField;
    cad_proPRO_CDFO: TIntegerField;
    cad_proPRO_CCAT: TIntegerField;
    cad_proPRO_RCAT: TIBStringField;
    cad_proPRO_DCAT: TIBStringField;
    cad_proPRO_REPR: TIBStringField;
    cad_proPRO_DCOM: TDateField;
    cad_proPRO_CNA1: TIBStringField;
    cad_proPRO_CNA2: TIBStringField;
    cad_proPRO_PCOR: TIBStringField;
    cad_proPRO_PPRZ: TFloatField;
    cad_proPRO_PPER: TIBBCDField;
    cad_proPRO_VPRZ: TFloatField;
    cad_proPRO_VPER: TIBBCDField;
    cad_proPRO_RPRZ: TFloatField;
    cad_proPRO_RPER: TIBBCDField;
    cad_proPRO_OBSF: TMemoField;
    cad_proPRO_SPRC: TFloatField;
    cad_proPRO_SPRO: TFloatField;
    cad_proPRO_SDSC: TIBBCDField;
    cad_proPRO_SPER: TIBBCDField;
    cad_proPRO_SPRZ: TFloatField;
    cad_proPRO_CLIB: TFloatField;
    cad_proPRO_DUSU: TIBStringField;
    cad_proPRO_APRC: TIBStringField;
    cad_proPRO_LDSC: TIBBCDField;
    cad_proPRO_DMAP: TIBStringField;
    rom_001ROM_OBSE: TMemoField;
    rom_002ROM_OBSE: TMemoField;
    rom_003ROM_OBSE: TMemoField;
    dbgromROM_ITEM: TdxDBGridMaskColumn;
    dbgromROM_CPRO: TdxDBGridMaskColumn;
    dbgromROM_DCOR: TdxDBGridPickColumn;
    dbgromROM_DCO2: TdxDBGridPickColumn;
    dbgromROM_DPRO: TdxDBGridMaskColumn;
    dbgromROM_DUNI: TdxDBGridPickColumn;
    dbgromROM_QDIS: TdxDBGridMaskColumn;
    dbgromROM_RLDI: TdxDBGridMaskColumn;
    dbgromROM_QTDE: TdxDBGridCalcColumn;
    dbgromROM_QTRL: TdxDBGridMaskColumn;
    dbgromROM_UNIT: TdxDBGridButtonColumn;
    dbgromROM_VDSC: TdxDBGridMaskColumn;
    dbgromROM_TOTA: TdxDBGridMaskColumn;
    dbgromROM_OBSE: TdxDBGridBlobColumn;
    dbgromROM_PREC: TdxDBGridMaskColumn;
    dbgromROM_TSDE: TdxDBGridMaskColumn;
    dbgromROM_PIPI: TdxDBGridMaskColumn;
    dbgromROM_VIPI: TdxDBGridMaskColumn;
    dbgromROM_TPRC: TdxDBGridPickColumn;
    ped_prg_iteROM_DUNI: TIBStringField;
    ped_prg_iteROM_OBSE: TMemoField;
    eddrom: TdxDateEdit;
    cad_cli_crd: TIBDataSet;
    cad_cli_crdID: TIntegerField;
    cad_cli_crdCLI_CDEP: TIntegerField;
    cad_cli_crdCLI_CCLI: TIntegerField;
    cad_cli_crdCLI_CRED: TIBBCDField;
    pcout: TdxPageControl;
    tsHST: TdxTabSheet;
    tsTRA: TdxTabSheet;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label37: TLabel;
    edctnr: TdxMaskEdit;
    edvfrt: TdxMaskEdit;
    cbdtra: TdxImageEdit;
    Bevel2: TBevel;
    Label5: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    edCLI_DCAD: TdxMaskEdit;
    edCLI_VULT: TdxMaskEdit;
    edCLI_DULT: TdxMaskEdit;
    edcdrd: TdxMaskEdit;
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
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtsdeKeyPress(Sender: TObject; var Key: Char);
    procedure siDELClick(Sender: TObject);
    procedure siINCClick(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure siCANClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure rom_001AfterCancel(DataSet: TDataSet);
    procedure rom_001AfterEdit(DataSet: TDataSet);
    procedure rom_001AfterPost(DataSet: TDataSet);
    procedure dbgromKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edderoKeyPress(Sender: TObject; var Key: Char);
    procedure rom_001AfterInsert(DataSet: TDataSet);
    procedure rom_001BeforeCancel(DataSet: TDataSet);
    procedure edcvenValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcrepValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcpagValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbdvenChange(Sender: TObject);
    procedure cbdrepChange(Sender: TObject);
    procedure edccliValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure eddcliValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edrcliValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure rom_001AfterDelete(DataSet: TDataSet);
    procedure rom_001AfterOpen(DataSet: TDataSet);
    procedure rom_001NewRecord(DataSet: TDataSet);
    procedure dtsrom_001DataChange(Sender: TObject; Field: TField);
    procedure rom_001ROM_VDSCValidate(Sender: TField);
    procedure rom_001ROM_QTDEValidate(Sender: TField);
    procedure BSalClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BInfClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edpdscValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure dbgromROM_UNITValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure cbstpdChange(Sender: TObject);
    procedure latdscClick(Sender: TObject);
    procedure cbdpagExit(Sender: TObject);
    procedure cbdpagChange(Sender: TObject);
    procedure cbdvenExit(Sender: TObject);
    procedure cbdrepExit(Sender: TObject);
    procedure cbstpdExit(Sender: TObject);
    procedure cbcredChange(Sender: TObject);
    procedure edcnpjValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure siDESClick(Sender: TObject);
    procedure rom_002AfterPost(DataSet: TDataSet);
    procedure edderoValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure rom_001ROM_TPRCValidate(Sender: TField);
    procedure dbgromCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure rom_001BeforeDelete(DataSet: TDataSet);
    procedure siCLOClick(Sender: TObject);
    procedure edtsdeValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure dbgromROM_DCORValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgromROM_QTDEValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure cbstcoChange(Sender: TObject);
    procedure dbgromROM_CPROValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure SpeedItem1Click(Sender: TObject);
    procedure dbgromROM_DPROValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgromROM_QTRLValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure rom_003NewRecord(DataSet: TDataSet);
    procedure dbgromROM_DCO2Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure cbstcoExit(Sender: TObject);
    procedure rom_003AfterPost(DataSet: TDataSet);
    procedure rom_001BeforePost(DataSet: TDataSet);
    procedure tsoutShow(Sender: TObject);
    procedure edctnrValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvfrtValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure pro_fotoClick(Sender: TObject);
    procedure dbgromROM_VDSCValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure tab_corNewRecord(DataSet: TDataSet);
    procedure eddcadExit(Sender: TObject);
    procedure psq_cliAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    FrmStyle   : TFormStyle;
    FrmPosition: TPosition;
    procedure CADASTRA_PRODUTO(cart: string;ccor: integer);
    procedure ABRE_TABELA;
    procedure TOTAL;
    procedure SALVA;
    procedure FINALIZA;
    procedure FINALIZA_SEMBAIXA;
    procedure FINALIZA_PROGRAMACAO;
    procedure EDITAQUANTIDADE;
    procedure EDITAPECA;
    procedure BAIXA_CARTEIRA;
    procedure BAIXA_CARTEIRA_DEVOLUCAO;
    procedure BAIXA_CARTEIRA_ABATIMENTO;
    procedure BAIXA_BANCARIO;
    procedure BAIXA_BANCARIO_DEVOLUCAO;
    procedure BAIXA_BANCARIO_ABATIMENTO;
    procedure AGRUPA_PEDIDO;
    function  RETORNA_LOGIN(texto: string) : boolean;
    function  RETORNA_FOCO(campo: string): integer;
    function  PESQUISA_PEDIDO: string;
  public
    auto,limite: boolean;
    procedure PESQUISA_PRODUTO(campo,cpro:string;qtde: double);
    procedure PESQUISA_TIPO(pesq,chave: string);
    procedure DISPLAY_GRID;
    procedure PESQUISA_CLIENTE(pesq,chave: string;cdsc: double;pevr,impo: boolean);
    procedure PESQUISA_VENDEDOR(pesq,chave: string);
    procedure PESQUISA_REPRESENTANTE(pesq,chave: string);
    procedure PESQUISA_FPAGTO(pesq,chave: string);
    procedure CARREGAFOTO(tam: Integer; valor: TBlobField; tab: TIbDataSet);
  end;

var
  frmven_ped: Tfrmven_ped;
  ID: integer;
  qtde,qtrl,tsde,tcde,adsc,pdsc: double;
  referencia: string;

implementation

uses p_funcoes, uPrincipal, pcad_pro_con, pcad_cli,
  qven_ped, uFrmLogin, pctr_ped, pven_des, pimporta_geral, pcad_cli_inf, 
  pctr_ped_fin, pcad_pro_img;

{$R *.dfm}

procedure Tfrmven_ped.FormCreate(Sender: TObject);
begin
  oOTransact(IBTra);
  pcobs.ActivePageIndex := 0;
  auto   := false;
  limite := true;

  ABRE_TABELA;

  AUTORIZACAO    := '';
  TP_AUTORIZACAO := '';
  edcdrd.Hint    := '';
  edcdcx.Text    := '0';
  edcdrd.Text    := '0';
  edcdro.Text    := '0';
  edcven.Text    := '';
  cbdven.Text    := '';
  edcrep.Text    := frmprincipal.parametrosPAR_CREP.AsString;
  cbdrep.Text    := '';
  edstpd.Text    := frmprincipal.parametrosPAR_STPD.AsString;
  cbstpd.Text    := frmprincipal.parametrosPAR_STPD.AsString;
  cbstco.Text    := frmprincipal.parametrosPAR_STCO.AsString;
  edcpag.Text    := frmprincipal.parametrosPAR_CPAG.AsString;

  PESQUISA_TIPO('VEN_TIPO',cbstpd.Text);

  cbcred.Text  := '1';
  edcdnf.Text  := '0';
  edcdpd.Text  := '0';
  edcdbx.Text  := '0';

  try
    tag := 1;
    eddcad.Date := strtodate(SLPrincipal.Values['data_sistema']);
    eddrom.Date := eddcad.Date;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   TRA_FANT,ID FROM CAD_TRA');
      SQL.Add('WHERE    TRA_STA = ''0''');
      SQL.Add('ORDER BY TRA_FANT');
      Open;

      while not eof do
      begin
        if fields[1].AsInteger = frmprincipal.parametrosPAR_CTRA.AsInteger then
        cbdtra.Text := fields[0].AsString;
        
        cbdtra.Values.Add(fields[0].AsString);
        cbdtra.Descriptions.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   COR_DCOR FROM TAB_COR');
      SQL.Add('WHERE    COR_STA = ''0''');
      SQL.Add('ORDER BY COR_DCOR');
      Open;

      while not eof do
      begin
        dbgromROM_DCOR.Items.Add(fields[0].AsString);
        dbgromROM_DCO2.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   USU_DUSU FROM CAD_USU');
      SQL.Add('WHERE    USU_MENU = ''VEN''');
      SQL.Add('AND      USU_STA  = ''0''');
      SQL.Add('ORDER BY USU_DUSU');
      Open;
      while not eof do
      begin
        cbdven.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   REP_FANT FROM CAD_REP');
      SQL.Add('WHERE    REP_STA = ''0''');
      SQL.Add('ORDER BY REP_FANT');
      Open;
      while not eof do
      begin
        cbdrep.Items.Add(fields[0].AsString);
        next;
      end;

      if (edcrep.Text <> '0') and (edcrep.Text <> '') then
      begin
        SQL.Clear;
        SQL.Add('SELECT REP_FANT FROM CAD_REP');
        SQL.Add('WHERE  REP_STA = ''0''');
        SQL.Add('AND    ID = '''+edcrep.Text+'''');
        Open;

        cbdrep.Text := fields[0].AsString;
      end;                                              

      SQL.Clear;
      SQL.Add('SELECT   VEN_TIPO FROM TAB_PED');
      SQL.Add('WHERE    VEN_STA  = ''1''');
      SQL.Add('ORDER BY VEN_TIPO');
      Open;
      while not eof do
      begin
        cbstpd.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   VEN_TIPO FROM TAB_COB');
      SQL.Add('WHERE    VEN_STA  = ''1''');
      SQL.Add('ORDER BY VEN_TIPO');
      Open;
      while not eof do
      begin
        if (copy(fields[0].AsString,1,5) <> 'DEVOL') and (copy(fields[0].AsString,1,5) <> 'ABATI') then
        cbstco.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   PAG_DPAG FROM TAB_PAG');
      SQL.Add('WHERE    PAG_STA = ''0''');
      SQL.Add('ORDER BY PAG_DPAG');
      Open;
      while not eof do
      begin
        cbdpag.Items.Add(fields[0].AsString);
        next;
      end;

      if (edcpag.Text <> '0') and (edcpag.Text <> '') then
      begin
        SQL.Clear;
        SQL.Add('SELECT ID,PAG_DPAG FROM TAB_PAG');
        SQL.Add('WHERE  PAG_STA  = ''0''');
        SQL.Add('AND    ID = '''+edcpag.Text+'''');
        Open;

        edcpag.Text := inttostr(fields[0].AsInteger);
        cbdpag.Text := fields[1].AsString;
      end;
    end;
  finally
    tag := 0;
    BSal.Enabled := false;
  end;
end;

procedure Tfrmven_ped.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  { Herança }
  FrmStyle    := FormStyle;
  FrmPosition := Position;

  { Eventos }
  with pEVE do
  begin
    UnregisterEvents;
    Events.Add('CTR_PED');
    RegisterEvents;
  end;

  try
    pro_foto.Tag := 1;
    rom_001.DisableControls;

    if assigned(frmctr_ped) then
    begin
      if frmctr_ped.siARO.Tag = 1 then
      begin
        try
          edobse.Tag   := 1;

          PESQUISA_CLIENTE('I',frmctr_ped.cadastroROM_CCLI.AsString,frmctr_ped.cadastroROM_CDSC.AsFloat,false,false);
          PESQUISA_VENDEDOR('C',frmctr_ped.cadastroROM_CVEN.AsString);
          PESQUISA_REPRESENTANTE('C',frmctr_ped.cadastroROM_CREP.AsString);

          cbstpd.Text := frmctr_ped.cadastroROM_STPD.AsString;
          PESQUISA_TIPO('VEN_TIPO',cbstpd.Text);

          if frmctr_ped.Tag = 0 then
          begin
            Tag := 1;

            edccli.Text := frmctr_ped.cadastroROM_CCLI.AsString;

            edcdbx.Text := inttostr(frmctr_ped.cadastroROM_CDBX.AsInteger);
            edcdpd.Text := inttostr(frmctr_ped.cadastroROM_CDRO.AsInteger);
            edcdnf.Text := inttostr(frmctr_ped.cadastroROM_CDNF.AsInteger);
            cbcred.Text := frmctr_ped.cadastroROM_CONC.AsString;
            edcdro.Text := frmctr_ped.cadastroID.AsString;
            eddero.Text := frmctr_ped.cadastroROM_DERO.AsString;
            edctnr.Text := frmctr_ped.cadastroROM_CTNR.AsString;
            edvfrt.Text := formatfloat('#,0.00',frmctr_ped.cadastroROM_VFRT.AsFloat);
            cbdtra.Text := frmctr_ped.cadastroROM_DTRA.AsString;
            edcdcx.Text := frmctr_ped.cadastroROM_CDCX.AsString;
            edcdrd.Text := frmctr_ped.cadastroROM_CDRD.AsString;
            edcdrd.Hint := frmctr_ped.cadastroROM_DERD.AsString;
            eddcad.Date := frmctr_ped.cadastroROM_DROM.AsDateTime;
            eddrom.Date := eddcad.Date;
            edhrom.Text := timetostr(frmctr_ped.cadastroROM_HROM.AsDateTime);
            edobse.Text := frmctr_ped.cadastroROM_OBSE.AsString;

            edcven.Text := frmctr_ped.cadastroROM_CVEN.AsString;
            edcrep.Text := frmctr_ped.cadastroROM_CREP.AsString;

            cbstco.Text    := frmctr_ped.cadastroROM_STCO.AsString;
            edcpag.Text    := frmctr_ped.cadastroROM_CPAG.AsString;

            latdsc.Caption := frmctr_ped.cadastroROM_TDSC.AsString;
            edpdsc.Text    := formatfloat('#,0.00',frmctr_ped.cadastroROM_PDSC.AsFloat);
            edodsc.Text    := formatfloat('#,0.00',frmctr_ped.cadastroROM_PDSC.AsFloat);
            edcdsc.Text    := formatfloat('#,0.00',frmctr_ped.cadastroROM_CDSC.AsFloat);
            edadsc.Text    := formatfloat('#,0.00',frmctr_ped.cadastroROM_ADSC.AsFloat);
            if frmctr_ped.cadastroROM_ADSC.AsFloat > 0 then
               edddsc.Text := 'Desconto adicional: '+formatfloat('0.00% '+cbstpd.Text,frmctr_ped.cadastroROM_ADSC.AsFloat);

            PESQUISA_FPAGTO('C',frmctr_ped.cadastroROM_CPAG.AsString);

            tag := 1;
            frmctr_ped.rom_ite.First;
            while not frmctr_ped.rom_ite.Eof do
            begin
              rom_001.Append;
              PESQUISA_PRODUTO('',frmctr_ped.rom_iteROM_CPRO.AsString,0);

              rom_001ROM_IPRO.Value := frmctr_ped.rom_iteROM_CPRO.AsInteger;
              rom_001ROM_IPR2.Value := frmctr_ped.rom_iteROM_CPR2.AsInteger;
              rom_001ROM_DPRO.Value := frmctr_ped.rom_iteROM_DPRO.AsString;
              rom_001ROM_CCOR.Value := frmctr_ped.rom_itePRO_CCOR.AsInteger;
              rom_001ROM_DCOR.Value := frmctr_ped.rom_itePRO_DCOR.AsString;
              rom_001ROM_DCO2.Value := frmctr_ped.rom_iteROM_DCO2.AsString;
              rom_001ROM_DUNI.Value := frmctr_ped.rom_iteROM_DUNI.AsString;

              if frmctr_ped.rom_iteROM_TPRC.AsString = '' then
              rom_001ROM_TPRC.Value := TRIM(cbprec.Items.Strings[0]) else
              rom_001ROM_TPRC.Value := TRIM(cbprec.Items.Strings[frmctr_ped.rom_iteROM_TPRC.AsInteger]);

              rom_001ROM_QTDE.Value := frmctr_ped.rom_iteROM_QTDE.AsFloat;
              rom_001ROM_QTRL.Value := frmctr_ped.rom_iteROM_QTRL.AsInteger;
              rom_001ROM_QTPD.Value := frmctr_ped.rom_iteROM_QTPD.AsFloat;
              rom_001ROM_RLPD.Value := frmctr_ped.rom_iteROM_RLPD.AsInteger;
              rom_001ROM_CDET.Value := frmctr_ped.rom_iteROM_CDET.AsString;
              rom_001ROM_PREC.Value := frmctr_ped.rom_iteROM_PREC.AsFloat;
              rom_001ROM_UNIT.Value := frmctr_ped.rom_iteROM_UNIT.AsFloat;
              rom_001ROM_VDSC.Value := frmctr_ped.rom_iteROM_VDSC.AsFloat;
              rom_001ROM_OBSE.Value := frmctr_ped.rom_iteROM_OBSE.AsString;
              rom_001.Post;
              frmctr_ped.rom_ite.Next;
            end;
            rom_001.Close;
            rom_001.Open;
          end;
        finally
          tag          := 0;
          TOTAL;
          BSal.Enabled := false;
        end;
      end;
    end else
    begin
      PESQUISA_CLIENTE('I',frmprincipal.parametrosPAR_CCLI.AsString,0,false,false);
      PESQUISA_REPRESENTANTE('C',frmprincipal.parametrosPAR_CREP.AsString);

      cbstpd.Text := frmprincipal.parametrosPAR_STPD.AsString;
      PESQUISA_TIPO('VEN_TIPO',cbstpd.Text);
    end;
  finally
    DISPLAY_GRID;

    pro_foto.Tag := 0;
    rom_001.EnableControls;

    if not assigned(frmctr_ped) then
    eddcli.SetFocus;
  end;
end;

procedure Tfrmven_ped.FormActivate(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  OnActivate    := Nil;
  Tag := 0;
end;

procedure Tfrmven_ped.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  pro_foto.Tag := 1;

  if rom_001.State in [dsEdit,dsInsert] then
  begin
    if (rom_001ROM_DPRO.AsString = '') or (rom_001ROM_TOTA.AsFloat = 0) then
    rom_001.Cancel else
    rom_001.Post;
  end;
  rom_001.First;

  if (BSal.Enabled) and (rom_001ROM_DPRO.AsString <> '') then
  begin
    case messageBox(handle,PChar('Existem alterações pendentes. Deseja salvar antes de fechar '),
                           PChar(caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
         mrCancel: begin
                     pro_foto.Tag := 0;
                     Abort;
                   end;  
         mrYes   : Begin
                     if BSal.Enabled then
                     begin
                       try
                         pro_foto.Tag := 1;
                         SALVA;
                       finally
                         pro_foto.Tag := 0;
                         if BSal.Enabled then
                         abort;
                       end;
                     end;
                   end;
    end;
  end;
end;

procedure Tfrmven_ped.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnClose := Nil;
  Screen.Cursor := crAppStart;

  pEve.UnRegisterEvents;
  Action := caFree;
end;

procedure Tfrmven_ped.FormDestroy(Sender: TObject);
begin
  OnDestroy := Nil;
  oFTransact(IBTra);
  Screen.Cursor := crDefault;
  frmven_ped := Nil;
end;

procedure Tfrmven_ped.FormKeyDown(Sender: TObject; var Key: Word;
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
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, false, true);
       VK_INSERT: if rom_001.State = dsBrowse then siINC.Click;
       121      : if BSal.Enabled then BSal.Click;
       117      : if BInf.Enabled then BInf.Click;
  end;
end;

procedure Tfrmven_ped.FormPaint(Sender: TObject);
var
  R: TRect;
begin
  if (Showing) and ((HelpContext = 0) or (HelpContext = 1)) then
  begin
    { Definição sobre o Painel de utilitários do form principal }
    FrmPrincipal.PNBot.Visible := (Screen.Height > 768);
    HelpContext := IFThen((Screen.Height > 768),0,1);

    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,R);

    if FrmPosition = poDefault then
    begin
      if (AlphaBlendValue = 0) and (HelpContext = 0) then
      begin
        { Width padrão acima de 768 = 1032 }
        Height := Trunc((R.Bottom - R.Top) * 0.9);
        Top    := ((R.Bottom - R.Top ) - Height) div 2;
        Left   := ((R.Right  - R.Left) - Width ) div 2;
      end else
      begin
        Top    := IFThen(FrmStyle    = fsNormal ,R.Top ,0);
        Left   := IFThen(FrmStyle    = fsNormal ,R.Left,0);
        Width  := IFThen(FrmPosition = poDefault,R.Right -R.Left-5,0);
        Height := IFThen(FrmPosition = poDefault,R.Bottom-R.Top -5,0);
      end;
    end else
    begin
      if FrmStyle = fsNormal then
      begin
        Top  := R.Top + ((R.Bottom - R.Top ) - Height) div 2;
        Left :=         ((R.Right  + R.Left) - Width ) div 2;
      end else
      begin
        Top  := ((R.Bottom - R.Top ) - Height) div 2;
        Left := ((R.Right  - R.Left) - Width ) div 2;
      end;
    end;
  end;
end;

procedure Tfrmven_ped.FormResize(Sender: TObject);
begin
  if frmven_ped <> Nil then
  Paint;
end;

function Tfrmven_ped.PESQUISA_PEDIDO: string;
var
  NewString: string;
  ClickedOK: Boolean;
begin
  edcdrd.Hint := '';
  ClickedOK   := InputQuery('Vincular Devolução ao Pedido de Venda', 'Entre com o Número do Pedido de Venda', NewString);

  if (ClickedOK) and (NewString <> '') then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE  ROM_DERO = '''+NewString+'''');
    Open;

    if fields[0].IsNull then
    NewString := '0' else
    begin
      edcdrd.Hint := NewString;
      NewString := fields[0].AsString;
    end;
  end else
  NewString   := '0';
  result      := NewString;
end;

procedure Tfrmven_ped.AGRUPA_PEDIDO;
begin
  with rom_003 do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM PED_PRG_ITE');
    ExecSQL;
    tSHEILD.CommitRetaining;

    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM PED_PRG_ITE');
    SelectSQL.Add('ORDER BY ROM_ITEM');
    Open;
  end;

  try
    rom_001.DisableControls;
    with rom_001 do
    begin
       Close;
       SelectSQL.Clear;
       SelectSQL.Add('SELECT * FROM PED_VEN_ITE');
       SelectSQL.Add('ORDER BY ID');
       Open;
    end;

    rom_001.First;
    while not rom_001.Eof do
    begin
      with consulta_S do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID FROM PED_PRG_ITE');
        SQL.Add('WHERE  ROM_CPRO = '''+rom_001ROM_CPRO.AsString+'''');
        Open;

        if fields[0].IsNull then
        rom_003.Append else
        rom_003.Edit;
      end;

      rom_003ROM_CCAB.Value   := rom_001ROM_CCAB.Value;
      rom_003ROM_CDOC.Value   := rom_001ROM_CDOC.Value;
      rom_003ROM_CDPR.Value   := rom_001ROM_CDPR.Value;
      rom_003ROM_CDPD.Value   := rom_001ROM_CDPD.Value;
      rom_003ROM_CDRO.Value   := rom_001ROM_CDRO.Value;
      rom_003ROM_CDNF.Value   := rom_001ROM_CDNF.Value;
      rom_003ROM_ITEM.Value   := rom_001ROM_ITEM.Value;
      rom_003ROM_CART.Value   := rom_001ROM_CART.Value;
      rom_003ROM_IPRO.Value   := rom_001ROM_IPRO.Value;
      rom_003ROM_CPRO.Value   := rom_001ROM_CPRO.Value;
      rom_003ROM_IPR2.Value   := rom_001ROM_IPR2.Value;
      rom_003ROM_CPR2.Value   := rom_001ROM_CPR2.Value;
      rom_003ROM_DPRO.Value   := rom_001ROM_DPRO.Value;
      rom_003ROM_CCOR.Value   := rom_001ROM_CCOR.Value;
      rom_003ROM_RCOR.Value   := rom_001ROM_RCOR.Value;
      rom_003ROM_DCOR.Value   := rom_001ROM_DCOR.Value;
      rom_003ROM_PCOR.Value   := rom_001ROM_PCOR.Value;
      rom_003ROM_CCO2.Value   := rom_001ROM_CCO2.Value;
      rom_003ROM_RCO2.Value   := rom_001ROM_RCO2.Value;
      rom_003ROM_DCO2.Value   := rom_001ROM_DCO2.Value;
      rom_003ROM_PCO2.Value   := rom_001ROM_PCO2.Value;
      rom_003ROM_CGRD.Value   := rom_001ROM_CGRD.Value;
      rom_003ROM_DGRD.Value   := rom_001ROM_DGRD.Value;
      rom_003ROM_DUNI.Value   := rom_001ROM_DUNI.Value;
      rom_003ROM_QTDE.Value   := rom_003ROM_QTDE.AsFloat   + rom_001ROM_QTDE.AsFloat;
      rom_003ROM_QTRL.Value   := rom_003ROM_QTRL.AsInteger + rom_001ROM_QTRL.AsInteger;
      rom_003ROM_QTSP.Value   := rom_003ROM_QTSP.AsFloat   + rom_001ROM_QTSP.AsFloat;
      rom_003ROM_RLSP.Value   := rom_003ROM_RLSP.AsInteger + rom_001ROM_RLSP.AsInteger;
      rom_003ROM_QTPD.Value   := rom_003ROM_QTPD.AsFloat   + rom_001ROM_QTPD.AsFloat;
      rom_003ROM_RLPD.Value   := rom_003ROM_RLPD.AsInteger + rom_001ROM_RLPD.AsInteger;
      rom_003ROM_QDIS.Value   := rom_001ROM_QDIS.Value;
      rom_003ROM_RLDI.Value   := rom_001ROM_RLDI.Value;
      rom_003ROM_PRCA.Value   := rom_001ROM_PRCA.Value;
      rom_003ROM_PRPA.Value   := rom_001ROM_PRPA.Value;
      rom_003ROM_VPRC.Value   := rom_001ROM_VPRC.Value;
      rom_003ROM_VPRO.Value   := rom_001ROM_VPRO.Value;
      rom_003ROM_RPRC.Value   := rom_001ROM_RPRC.Value;
      rom_003ROM_RPRO.Value   := rom_001ROM_RPRO.Value;
      rom_003ROM_PCOM.Value   := rom_001ROM_PCOM.Value;
      rom_003ROM_CUST.Value   := rom_001ROM_CUST.Value;
      rom_003ROM_PREC.Value   := rom_001ROM_PREC.Value;
      rom_003ROM_UNIT.Value   := rom_001ROM_UNIT.Value;
      rom_003ROM_VDSC.Value   := rom_001ROM_VDSC.Value;
      rom_003ROM_PPRO.Value   := rom_001ROM_PPRO.Value;
      rom_003ROM_PEMB.Value   := rom_001ROM_PEMB.Value;
      rom_003ROM_METR.Value   := rom_001ROM_METR.Value;
      rom_003ROM_PESO.Value   := rom_001ROM_PESO.Value;
      rom_003ROM_REND.Value   := rom_001ROM_REND.Value;
      rom_003ROM_PSCN.Value   := rom_001ROM_PSCN.Value;
      rom_003ROM_PSMR.Value   := rom_001ROM_PSMR.Value;
      rom_003ROM_VBCIPI.Value := rom_001ROM_VBCIPI.Value;
      rom_003ROM_PIPI.Value   := rom_001ROM_PIPI.Value;
      rom_003ROM_VIPI.Value   := rom_001ROM_VIPI.Value;
      rom_003ROM_CDET.Value   := rom_001ROM_CDET.Value;
      rom_003ROM_CBAR.Value   := rom_001ROM_CBAR.Value;
      rom_003ROM_TPRC.Value   := rom_001ROM_TPRC.Value;
      rom_003ROM_FLAG.Value   := rom_001ROM_FLAG.Value;
      rom_003ROM_FOTO.Value   := rom_001ROM_FOTO.Value;
      rom_003ROM_ABCD.Value   := rom_001ROM_ABCD.Value;
      rom_003ROM_OBSE.Value   := rom_001ROM_OBSE.Value;
      rom_003.Post;
      rom_001.Next;
    end;
    rom_001.EnableControls;

    with rom_001 do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('DELETE FROM PED_VEN_ITE');
      ExecSQL;
      tSHEILD.CommitRetaining;

      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM PED_VEN_ITE');
      SelectSQL.Add('WHERE    ROM_FLAG = 0');
      SelectSQL.Add('ORDER BY ID');
      Open;
    end;

    rom_003.First;
    while not rom_003.Eof do
    begin
      rom_001.Append;
      rom_001ROM_CCAB.Value   := rom_003ROM_CCAB.Value;
      rom_001ROM_CDOC.Value   := rom_003ROM_CDOC.Value;
      rom_001ROM_CDPR.Value   := rom_003ROM_CDPR.Value;
      rom_001ROM_CDPD.Value   := rom_003ROM_CDPD.Value;
      rom_001ROM_CDRO.Value   := rom_003ROM_CDRO.Value;
      rom_001ROM_CDNF.Value   := rom_003ROM_CDNF.Value;
      rom_001ROM_ITEM.Value   := rom_003ROM_ITEM.Value;
      rom_001ROM_CART.Value   := rom_003ROM_CART.Value;
      rom_001ROM_IPRO.Value   := rom_003ROM_IPRO.Value;
      rom_001ROM_CPRO.Value   := rom_003ROM_CPRO.Value;
      rom_001ROM_IPR2.Value   := rom_003ROM_IPR2.Value;
      rom_001ROM_CPR2.Value   := rom_003ROM_CPR2.Value;
      rom_001ROM_DPRO.Value   := rom_003ROM_DPRO.Value;
      rom_001ROM_CCOR.Value   := rom_003ROM_CCOR.Value;
      rom_001ROM_RCOR.Value   := rom_003ROM_RCOR.Value;
      rom_001ROM_DCOR.Value   := rom_003ROM_DCOR.Value;
      rom_001ROM_PCOR.Value   := rom_003ROM_PCOR.Value;
      rom_001ROM_CCO2.Value   := rom_003ROM_CCO2.Value;
      rom_001ROM_RCO2.Value   := rom_003ROM_RCO2.Value;
      rom_001ROM_DCO2.Value   := rom_003ROM_DCO2.Value;
      rom_001ROM_PCO2.Value   := rom_003ROM_PCO2.Value;
      rom_001ROM_CGRD.Value   := rom_003ROM_CGRD.Value;
      rom_001ROM_DGRD.Value   := rom_003ROM_DGRD.Value;
      rom_001ROM_DUNI.Value   := rom_003ROM_DUNI.Value;
      rom_001ROM_QTDE.Value   := rom_003ROM_QTDE.Value;
      rom_001ROM_QTRL.Value   := rom_003ROM_QTRL.Value;
      rom_001ROM_QTSP.Value   := rom_003ROM_QTSP.Value;
      rom_001ROM_RLSP.Value   := rom_003ROM_RLSP.Value;
      rom_001ROM_QTPD.Value   := rom_003ROM_QTPD.Value;
      rom_001ROM_RLPD.Value   := rom_003ROM_RLPD.Value;
      rom_001ROM_QDIS.Value   := rom_003ROM_QDIS.Value;
      rom_001ROM_RLDI.Value   := rom_003ROM_RLDI.Value;
      rom_001ROM_PRCA.Value   := rom_003ROM_PRCA.Value;
      rom_001ROM_PRPA.Value   := rom_003ROM_PRPA.Value;
      rom_001ROM_VPRC.Value   := rom_003ROM_VPRC.Value;
      rom_001ROM_VPRO.Value   := rom_003ROM_VPRO.Value;
      rom_001ROM_RPRC.Value   := rom_003ROM_RPRC.Value;
      rom_001ROM_RPRO.Value   := rom_003ROM_RPRO.Value;
      rom_001ROM_PCOM.Value   := rom_003ROM_PCOM.Value;
      rom_001ROM_CUST.Value   := rom_003ROM_CUST.Value;
      rom_001ROM_PREC.Value   := rom_003ROM_PREC.Value;
      rom_001ROM_UNIT.Value   := rom_003ROM_UNIT.Value;
      rom_001ROM_VDSC.Value   := rom_003ROM_VDSC.Value;
      rom_001ROM_PPRO.Value   := rom_003ROM_PPRO.Value;
      rom_001ROM_PEMB.Value   := rom_003ROM_PEMB.Value;
      rom_001ROM_METR.Value   := rom_003ROM_METR.Value;
      rom_001ROM_PESO.Value   := rom_003ROM_PESO.Value;
      rom_001ROM_REND.Value   := rom_003ROM_REND.Value;
      rom_001ROM_PSCN.Value   := rom_003ROM_PSCN.Value;
      rom_001ROM_PSMR.Value   := rom_003ROM_PSMR.Value;
      rom_001ROM_VBCIPI.Value := rom_003ROM_VBCIPI.Value;
      rom_001ROM_PIPI.Value   := rom_003ROM_PIPI.Value;
      rom_001ROM_VIPI.Value   := rom_003ROM_VIPI.Value;
      rom_001ROM_CDET.Value   := rom_003ROM_CDET.Value;
      rom_001ROM_CBAR.Value   := rom_003ROM_CBAR.Value;
      rom_001ROM_TPRC.Value   := rom_003ROM_TPRC.Value;
      rom_001ROM_FLAG.Value   := rom_003ROM_FLAG.Value;
      rom_001ROM_FOTO.Value   := rom_003ROM_FOTO.Value;
      rom_001ROM_ABCD.Value   := rom_003ROM_ABCD.Value;
      rom_001ROM_OBSE.Value   := rom_003ROM_OBSE.Value;
      rom_001.Post;
      rom_003.Next;                    
    end;
  finally
    rom_001.First;
    rom_001.EnableControls;
  end;
end;

procedure Tfrmven_ped.FINALIZA_SEMBAIXA;
var
  i: word;
  valo: double;
begin
  with consulta do
  begin
    valo := RETORNA_REAL(edtcde.Text);

    SQL.Clear;
    SQL.Add('SELECT PAG_PARC,PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,PAG_D010 FROM TAB_PAG');
    SQL.Add('WHERE  ID = '''+edcpag.Text+'''');
    Open;
  end;

  for i := 1 to consulta.Fields[0].AsInteger do
  begin
    frmctr_ped_fin.fin_rec_bai.Append;
    case i of
        1: begin
             frmctr_ped_fin.fin_rec_baiFIN_PRAZ.Value := consulta.fields[1].AsInteger;
             frmctr_ped_fin.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_fin.edDBAI.Date,consulta.fields[1].Value));
             frmctr_ped_fin.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
        2: begin
             frmctr_ped_fin.fin_rec_baiFIN_PRAZ.Value := consulta.fields[2].AsInteger;
             frmctr_ped_fin.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_fin.edDBAI.Date,consulta.fields[2].Value));
             frmctr_ped_fin.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
        3: begin
             frmctr_ped_fin.fin_rec_baiFIN_PRAZ.Value := consulta.fields[3].AsInteger;
             frmctr_ped_fin.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_fin.edDBAI.Date,consulta.fields[3].Value));
             frmctr_ped_fin.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
        4: begin
             frmctr_ped_fin.fin_rec_baiFIN_PRAZ.Value := consulta.fields[4].AsInteger;
             frmctr_ped_fin.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_fin.edDBAI.Date,consulta.fields[4].Value));
             frmctr_ped_fin.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
        5: begin
             frmctr_ped_fin.fin_rec_baiFIN_PRAZ.Value := consulta.fields[5].AsInteger;
             frmctr_ped_fin.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_fin.edDBAI.Date,consulta.fields[5].Value));
             frmctr_ped_fin.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
        6: begin
             frmctr_ped_fin.fin_rec_baiFIN_PRAZ.Value := consulta.fields[6].AsInteger;
             frmctr_ped_fin.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_fin.edDBAI.Date,consulta.fields[6].Value));
             frmctr_ped_fin.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
        7: begin
             frmctr_ped_fin.fin_rec_baiFIN_PRAZ.Value := consulta.fields[7].AsInteger;
             frmctr_ped_fin.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_fin.edDBAI.Date,consulta.fields[7].Value));
             frmctr_ped_fin.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
        8: begin
             frmctr_ped_fin.fin_rec_baiFIN_PRAZ.Value := consulta.fields[8].AsInteger;
             frmctr_ped_fin.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_fin.edDBAI.Date,consulta.fields[8].Value));
             frmctr_ped_fin.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
        9: begin
             frmctr_ped_fin.fin_rec_baiFIN_PRAZ.Value := consulta.fields[9].AsInteger;
             frmctr_ped_fin.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_fin.edDBAI.Date,consulta.fields[9].Value));
             frmctr_ped_fin.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
       10: begin
             frmctr_ped_fin.fin_rec_baiFIN_PRAZ.Value := consulta.fields[10].AsInteger;
             frmctr_ped_fin.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_fin.edDBAI.Date,consulta.fields[10].Value));
             frmctr_ped_fin.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
    end;
    frmctr_ped_fin.fin_rec_bai.Post;
  end;
end;

procedure Tfrmven_ped.FINALIZA;
begin
  if not limite then                                                                                                                                            
  exit;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ROM_CDNF FROM '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE  ID = '''+edcdro.Text+'''');
    Open;
    edcdnf.Text := inttostr(fields[0].AsInteger);
  end;

  frmctr_ped_fin := Tfrmctr_ped_fin.Create(Application);
  try
    frmctr_ped_fin.siVAL.Tag   := 1;
    frmctr_ped_fin.edcdcx.Text := edcdcx.Text;
    frmctr_ped_fin.edcdcx.Hint := edqtsp.Text;
    frmctr_ped_fin.edcdrd.Text := edcdrd.Text;
    frmctr_ped_fin.edcdrd.Hint := edcdrd.Hint;
    frmctr_ped_fin.edcdbx.Text := '0';
    frmctr_ped_fin.edcdbx.Hint := cbstpd.Text;
    frmctr_ped_fin.edcdro.Text := edcdro.Text;
    frmctr_ped_fin.eddcli.Text := eddcli.Text;
    frmctr_ped_fin.eddrep.Text := cbdrep.Text;
    frmctr_ped_fin.edvend.Text := cbdven.Text;
    frmctr_ped_fin.edtotr.Text := edtcde.Text;
    frmctr_ped_fin.edqtsp.Text := edqtsp.Text;

    frmctr_ped_fin.tab_pag.Close;
    frmctr_ped_fin.tab_pag.Params[0].Value := edCPAG.Text;
    frmctr_ped_fin.tab_pag.Open;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAI_DABR,CAI_DFEC FROM CAI_LAF');
      SQL.Add('WHERE  ID = '''+edcdcx.Text+'''');
      Open;
    end;

    frmctr_ped_fin.eddbai.Date := consulta.Fields[0].AsDateTime;
    frmctr_ped_fin.edcdcx.Text := edCDCX.Text;

    if cbstco.Text <> 'BANCÁRIO' then
    begin
      frmctr_ped_fin.tscar.TabVisible := false;
      if cbstpd.Text = 'DEVOLUÇÃO' then
      BAIXA_CARTEIRA_DEVOLUCAO else
      if cbstpd.Text = 'ABATIMENTO' then
      BAIXA_CARTEIRA_ABATIMENTO else
      BAIXA_CARTEIRA;
    end
    else
    begin
      if cbcred.Text = '1' then
         frmctr_ped_fin.tscar.TabVisible := false;
      if cbstpd.Text = 'DEVOLUÇÃO' then
      BAIXA_BANCARIO_DEVOLUCAO else
      if cbstpd.Text = 'ABATIMENTO' then
      BAIXA_BANCARIO_ABATIMENTO else
      BAIXA_BANCARIO;
    end;

    if (cbstpd.Text <> 'DEVOLUÇÃO') and (cbstpd.Text <> 'ABATIMENTO') then
    FINALIZA_SEMBAIXA;
    frmctr_ped_fin.ShowModal;
  finally
    freeAndNil(frmctr_ped_fin);
    frmctr_ped_fin.Free;
  end;
end;

procedure Tfrmven_ped.BAIXA_CARTEIRA;
var
  stdo: string;
  valo: double;
  conc: word;

begin
  if (edcdnf.Text <> '0') then
     stdo := 'C '+cbcred.Text else stdo := 'C 0';

  valo := RETORNA_REAL(edtcde.Text);
  conc := strtoint(cbcred.Text);

  if edcdnf.Text <> '0' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT NFE_VNF FROM '+SLPrincipal.Values['nfe_cab']);
    SQL.Add('WHERE  NFE_CDNF = '''+edcdnf.Text+'''');
    Open;
    if fields[0].AsFloat > 0 then
       valo := fields[0].AsFloat;
  end
  else
  conc := 0;

  frmctr_ped_fin.fin_rec.Append;
  frmctr_ped_fin.fin_recID.Value       := 0;
  frmctr_ped_fin.fin_recFIN_CDPD.Value := strtoint(edcdro.Text);
  frmctr_ped_fin.fin_recFIN_CDRO.Value := strtoint(edcdpd.Text);  
  frmctr_ped_fin.fin_recFIN_STDO.Value := stdo;
  frmctr_ped_fin.fin_recFIN_DROM.Value := frmctr_ped_fin.edDBAI.Date;
  frmctr_ped_fin.fin_recFIN_CCLI.Value := strtoint(edccli.Text);
  frmctr_ped_fin.fin_recFIN_CVEN.Value := strtoint(edcven.Text);
  frmctr_ped_fin.fin_recFIN_CREP.Value := strtoint(edcrep.Text);
  frmctr_ped_fin.fin_recFIN_DCLI.Value := eddcli.Text;
  frmctr_ped_fin.fin_recFIN_STCO.Value := cbstco.Text;
  frmctr_ped_fin.fin_recFIN_STPD.Value := cbstpd.Text;
  frmctr_ped_fin.fin_recFIN_CONC.Value := conc;
  frmctr_ped_fin.fin_recFIN_VEND.Value := cbdven.Text;
  frmctr_ped_fin.fin_recFIN_DREP.Value := cbdrep.Text;
  frmctr_ped_fin.fin_recFIN_DPRA.Value := cbdpag.Text;
  frmctr_ped_fin.fin_recFIN_DOCT.Value := edcdro.Text;
  frmctr_ped_fin.fin_recFIN_VALO.Value := roundto(valo,-2);
  frmctr_ped_fin.fin_recFIN_COBR.Value := 'C';
  frmctr_ped_fin.fin_recFIN_CTNR.Value := edctnr.Text;
  frmctr_ped_fin.fin_rec.Post;
end;

procedure Tfrmven_ped.BAIXA_BANCARIO;
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT NFE_TITU,NFE_DNFE,NFE_DVEN,NFE_VDUP FROM '+SLPrincipal.Values['nfe_dup']);
    SQL.Add('WHERE  NFE_CDNF = '''+edcdnf.Text+'''');
    Open;
  end;

  if consulta.Fields[0].IsNull then
  begin
    messageBox(handle,'Tipo de cobrança "BANCÁRIO" sem duplicatas emitidas !'+#13+'Você precisa alterar o tipo de cobrança para prosseguir.',PChar(caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  while not consulta.Eof do
  begin
    frmctr_ped_fin.pclan.ActivePageIndex := 0;
    frmctr_ped_fin.fin_rec_bai.Append;
    frmctr_ped_fin.fin_rec_baiID.Value       := 0;
    frmctr_ped_fin.fin_rec_baiFIN_DOCT.Value := consulta.Fields[0].AsString;
    frmctr_ped_fin.fin_rec_baiFIN_DVEN.Value := consulta.Fields[2].AsDateTime;
    frmctr_ped_fin.fin_rec_baiFIN_TIPO.Value := 'DUPLICATA';
    frmctr_ped_fin.fin_rec_baiFIN_VALO.Value := consulta.Fields[3].AsFloat;
    frmctr_ped_fin.fin_rec_bai.Post;

    if frmctr_ped_fin.tscar.TabVisible then
    begin
      frmctr_ped_fin.pclan.ActivePageIndex := 1;
      frmctr_ped_fin.fin_rec_bai.Append;
      frmctr_ped_fin.fin_rec_baiID.Value       := 0;
      frmctr_ped_fin.fin_rec_baiFIN_DOCT.Value := consulta.Fields[0].AsString;
      frmctr_ped_fin.fin_rec_baiFIN_DVEN.Value := consulta.Fields[2].AsDateTime;
      frmctr_ped_fin.fin_rec_baiFIN_TIPO.Value := 'CARTEIRA';
      frmctr_ped_fin.fin_rec_baiFIN_VALO.Value := consulta.Fields[3].AsFloat;
      frmctr_ped_fin.fin_rec_baiFIN_COBR.Value := '1';
      frmctr_ped_fin.fin_rec_bai.Post;
    end;
    consulta.Next;
  end;
  frmctr_ped_fin.fin_rec_bai.First;
  frmctr_ped_fin.pclan.ActivePageIndex := 0;

  if not frmctr_ped_fin.fin_rec_bai.Fields[0].IsNull then
  begin
    frmctr_ped_fin.sblan.Enabled                 := false;
    frmctr_ped_fin.edDBAI.Enabled                := false;
    frmctr_ped_fin.dbgprz1FIN_TIPO.DisableEditor := true;
    frmctr_ped_fin.dbgprz1FIN_PRAZ.DisableEditor := true;
    frmctr_ped_fin.dbgprz1FIN_DVEN.DisableEditor := true;
    frmctr_ped_fin.dbgprz1FIN_VALO.DisableEditor := true;
    frmctr_ped_fin.dbgprz1FIN_BANC.DisableEditor := true;
    frmctr_ped_fin.dbgprz1FIN_AGEN.DisableEditor := true;
    frmctr_ped_fin.dbgprz1FIN_CONT.DisableEditor := true;
    frmctr_ped_fin.dbgprz1FIN_NCHQ.DisableEditor := true;
    frmctr_ped_fin.dbgprz1FIN_OBSE.DisableEditor := true;
  end;

  with consulta do
  begin
    SQL.Clear;
    if cbstpd.Text <> 'BENEFICIAMENTO' then
    SQL.Add('SELECT NFE_VNF FROM '+SLPrincipal.Values['nfe_cab'])
    else
    begin
      SQL.Add('SELECT SUM(NFE_VNF) FROM '+SLPrincipal.Values['nfe_ite']);
      SQL.Add('WHERE  NFE_CDNF = '''+edcdnf.Text+'''');
      SQL.Add('AND    NFE_CFOP = ''5124''');
      SQL.Add('OR     NFE_CDNF = '''+edcdnf.Text+'''');
      SQL.Add('AND    NFE_CFOP = ''6124''');
      Open;

      if fields[0].AsFloat = 0 then
      begin
        SQL.Clear;
        SQL.Add('SELECT SUM(NFE_VNF) FROM '+SLPrincipal.Values['nfe_ite']);
        SQL.Add('WHERE  NFE_CDNF = '''+edcdnf.Text+'''');
        SQL.Add('AND    NFE_CFOP = ''5125''');
        SQL.Add('OR     NFE_CDNF = '''+edcdnf.Text+'''');
        SQL.Add('AND    NFE_CFOP = ''5925''');
      end;
    end;
    Open;
  end;

  frmctr_ped_fin.fin_rec.Append;
  frmctr_ped_fin.fin_recID.Value       := 0;
  frmctr_ped_fin.fin_recFIN_CDPD.Value := strtoint(edcdro.Text);
  frmctr_ped_fin.fin_recFIN_CDRO.Value := strtoint(edcdpd.Text);
  frmctr_ped_fin.fin_recFIN_STDO.Value := 'B '+cbcred.Text;
  frmctr_ped_fin.fin_recFIN_DROM.Value := frmctr_ped_fin.edDBAI.Date;
  frmctr_ped_fin.fin_recFIN_CCLI.Value := strtoint(edccli.Text);
  frmctr_ped_fin.fin_recFIN_CVEN.Value := strtoint(edcven.Text);
  frmctr_ped_fin.fin_recFIN_CREP.Value := strtoint(edcrep.Text);
  frmctr_ped_fin.fin_recFIN_DCLI.Value := eddcli.Text;
  frmctr_ped_fin.fin_recFIN_STCO.Value := cbstco.Text;
  frmctr_ped_fin.fin_recFIN_STPD.Value := cbstpd.Text;
  frmctr_ped_fin.fin_recFIN_CONC.Value := strtoint(cbcred.Text);
  frmctr_ped_fin.fin_recFIN_VEND.Value := cbdven.Text;
  frmctr_ped_fin.fin_recFIN_DREP.Value := cbdrep.Text;
  frmctr_ped_fin.fin_recFIN_DPRA.Value := cbdpag.Text;
  frmctr_ped_fin.fin_recFIN_VALO.Value := consulta.Fields[0].AsFloat;
  frmctr_ped_fin.fin_recFIN_COBR.Value := 'B';
  frmctr_ped_fin.fin_recFIN_CTNR.Value := edctnr.Text;
  frmctr_ped_fin.fin_rec.Post;
end;

procedure Tfrmven_ped.BAIXA_CARTEIRA_DEVOLUCAO;
begin
  frmctr_ped_fin.pclan.ActivePageIndex := 0;

  frmctr_ped_fin.fin_rec.Append;
  frmctr_ped_fin.fin_recID.Value       := 0;
  frmctr_ped_fin.fin_recFIN_CDPD.Value := strtoint(edcdro.Text);
  frmctr_ped_fin.fin_recFIN_CDRO.Value := strtoint(edcdpd.Text);
  frmctr_ped_fin.fin_recFIN_STDO.Value := 'C '+cbcred.Text;
  frmctr_ped_fin.fin_recFIN_DROM.Value := frmctr_ped_fin.edDBAI.Date;
  frmctr_ped_fin.fin_recFIN_CCLI.Value := strtoint(edccli.Text);
  frmctr_ped_fin.fin_recFIN_CVEN.Value := strtoint(edcven.Text);
  frmctr_ped_fin.fin_recFIN_CREP.Value := strtoint(edcrep.Text);
  frmctr_ped_fin.fin_recFIN_DCLI.Value := eddcli.Text;
  frmctr_ped_fin.fin_recFIN_STCO.Value := cbstco.Text;
  frmctr_ped_fin.fin_recFIN_STPD.Value := cbstpd.Text;
  frmctr_ped_fin.fin_recFIN_CONC.Value := strtoint(cbcred.Text);
  frmctr_ped_fin.fin_recFIN_VEND.Value := cbdven.Text;
  frmctr_ped_fin.fin_recFIN_DREP.Value := cbdrep.Text;
  frmctr_ped_fin.fin_recFIN_DPRA.Value := cbdpag.Text;
  frmctr_ped_fin.fin_recFIN_VALO.Value := RETORNA_REAL(edtcde.Text);
  frmctr_ped_fin.fin_recFIN_COBR.Value := 'C';
  frmctr_ped_fin.fin_recFIN_CTNR.Value := edctnr.Text;
  frmctr_ped_fin.fin_rec.Post;

  frmctr_ped_fin.fin_rec_bai.Append;
  frmctr_ped_fin.fin_rec_baiID.Value       := 0;
  if (eddero.Text = '') or (eddero.Text = '0') then
  frmctr_ped_fin.fin_rec_baiFIN_DOCT.Value := edcdro.Text else
  frmctr_ped_fin.fin_rec_baiFIN_DOCT.Value := eddero.Text;
  frmctr_ped_fin.fin_rec_baiFIN_DVEN.Value := eddcad.Date;
  frmctr_ped_fin.fin_rec_baiFIN_TIPO.Value := 'DEVOLUÇÃO';
  frmctr_ped_fin.fin_rec_baiFIN_VALO.Value := RETORNA_REAL(edtcde.Text);
  frmctr_ped_fin.fin_rec_bai.Post;
end;

procedure Tfrmven_ped.BAIXA_BANCARIO_DEVOLUCAO;
begin
  frmctr_ped_fin.pclan.ActivePageIndex := 0;

  frmctr_ped_fin.fin_rec.Append;
  frmctr_ped_fin.fin_recID.Value       := 0;
  frmctr_ped_fin.fin_recFIN_CDPD.Value := strtoint(edcdro.Text);
  frmctr_ped_fin.fin_recFIN_CDRO.Value := strtoint(edcdpd.Text);
  frmctr_ped_fin.fin_recFIN_STDO.Value := 'B '+cbcred.Text;
  frmctr_ped_fin.fin_recFIN_DROM.Value := frmctr_ped_fin.edDBAI.Date;
  frmctr_ped_fin.fin_recFIN_CCLI.Value := strtoint(edccli.Text);
  frmctr_ped_fin.fin_recFIN_CVEN.Value := strtoint(edcven.Text);
  frmctr_ped_fin.fin_recFIN_CREP.Value := strtoint(edcrep.Text);
  frmctr_ped_fin.fin_recFIN_DCLI.Value := eddcli.Text;
  frmctr_ped_fin.fin_recFIN_STCO.Value := cbstco.Text;
  frmctr_ped_fin.fin_recFIN_STPD.Value := cbstpd.Text;
  frmctr_ped_fin.fin_recFIN_CONC.Value := strtoint(cbcred.Text);
  frmctr_ped_fin.fin_recFIN_VEND.Value := cbdven.Text;
  frmctr_ped_fin.fin_recFIN_DREP.Value := cbdrep.Text;
  frmctr_ped_fin.fin_recFIN_DPRA.Value := cbdpag.Text;
  frmctr_ped_fin.fin_recFIN_VALO.Value := RETORNA_REAL(edtcde.Text);
  frmctr_ped_fin.fin_recFIN_COBR.Value := 'B';
  frmctr_ped_fin.fin_recFIN_CTNR.Value := edctnr.Text;
  frmctr_ped_fin.fin_rec.Post;

  frmctr_ped_fin.fin_rec_bai.Append;
  frmctr_ped_fin.fin_rec_baiID.Value       := 0;
  if (eddero.Text = '') or (eddero.Text = '0') then
  frmctr_ped_fin.fin_rec_baiFIN_DOCT.Value := edcdro.Text else
  frmctr_ped_fin.fin_rec_baiFIN_DOCT.Value := eddero.Text;
  frmctr_ped_fin.fin_rec_baiFIN_DVEN.Value := eddcad.Date;
  frmctr_ped_fin.fin_rec_baiFIN_TIPO.Value := 'DEVOLUÇÃO';
  frmctr_ped_fin.fin_rec_baiFIN_VALO.Value := RETORNA_REAL(edtcde.Text);
  frmctr_ped_fin.fin_rec_bai.Post;
end;

procedure Tfrmven_ped.BAIXA_CARTEIRA_ABATIMENTO;
begin
  frmctr_ped_fin.pclan.ActivePageIndex := 0;

  frmctr_ped_fin.fin_rec.Append;
  frmctr_ped_fin.fin_recID.Value       := 0;
  frmctr_ped_fin.fin_recFIN_CDPD.Value := strtoint(edcdro.Text);
  frmctr_ped_fin.fin_recFIN_CDRO.Value := strtoint(edcdpd.Text);
  frmctr_ped_fin.fin_recFIN_STDO.Value := 'C '+cbcred.Text;
  frmctr_ped_fin.fin_recFIN_DROM.Value := frmctr_ped_fin.edDBAI.Date;
  frmctr_ped_fin.fin_recFIN_CCLI.Value := strtoint(edccli.Text);
  frmctr_ped_fin.fin_recFIN_CVEN.Value := strtoint(edcven.Text);
  frmctr_ped_fin.fin_recFIN_CREP.Value := strtoint(edcrep.Text);
  frmctr_ped_fin.fin_recFIN_DCLI.Value := eddcli.Text;
  frmctr_ped_fin.fin_recFIN_STCO.Value := cbstco.Text;
  frmctr_ped_fin.fin_recFIN_STPD.Value := cbstpd.Text;
  frmctr_ped_fin.fin_recFIN_CONC.Value := strtoint(cbcred.Text);
  frmctr_ped_fin.fin_recFIN_VEND.Value := cbdven.Text;
  frmctr_ped_fin.fin_recFIN_DREP.Value := cbdrep.Text;
  frmctr_ped_fin.fin_recFIN_DPRA.Value := cbdpag.Text;
  frmctr_ped_fin.fin_recFIN_VALO.Value := RETORNA_REAL(edtcde.Text);
  frmctr_ped_fin.fin_recFIN_COBR.Value := 'C';
  frmctr_ped_fin.fin_recFIN_CTNR.Value := edctnr.Text;
  frmctr_ped_fin.fin_rec.Post;

  frmctr_ped_fin.fin_rec_bai.Append;
  frmctr_ped_fin.fin_rec_baiID.Value       := 0;
  if (eddero.Text = '') or (eddero.Text = '0') then
  frmctr_ped_fin.fin_rec_baiFIN_DOCT.Value := edcdro.Text else
  frmctr_ped_fin.fin_rec_baiFIN_DOCT.Value := eddero.Text;
  frmctr_ped_fin.fin_rec_baiFIN_DVEN.Value := eddcad.Date;
  frmctr_ped_fin.fin_rec_baiFIN_TIPO.Value := 'ABATIMENTO';
  frmctr_ped_fin.fin_rec_baiFIN_VALO.Value := RETORNA_REAL(edtcde.Text);
  frmctr_ped_fin.fin_rec_bai.Post;
end;

procedure Tfrmven_ped.BAIXA_BANCARIO_ABATIMENTO;
begin
  frmctr_ped_fin.pclan.ActivePageIndex := 0;

  frmctr_ped_fin.fin_rec.Append;
  frmctr_ped_fin.fin_recID.Value       := 0;
  frmctr_ped_fin.fin_recFIN_CDPD.Value := strtoint(edcdro.Text);
  frmctr_ped_fin.fin_recFIN_CDRO.Value := strtoint(edcdpd.Text);
  frmctr_ped_fin.fin_recFIN_STDO.Value := 'B '+cbcred.Text;
  frmctr_ped_fin.fin_recFIN_DROM.Value := frmctr_ped_fin.edDBAI.Date;
  frmctr_ped_fin.fin_recFIN_CCLI.Value := strtoint(edccli.Text);
  frmctr_ped_fin.fin_recFIN_CVEN.Value := strtoint(edcven.Text);
  frmctr_ped_fin.fin_recFIN_CREP.Value := strtoint(edcrep.Text);
  frmctr_ped_fin.fin_recFIN_DCLI.Value := eddcli.Text;
  frmctr_ped_fin.fin_recFIN_STCO.Value := cbstco.Text;
  frmctr_ped_fin.fin_recFIN_STPD.Value := cbstpd.Text;
  frmctr_ped_fin.fin_recFIN_CONC.Value := strtoint(cbcred.Text);
  frmctr_ped_fin.fin_recFIN_VEND.Value := cbdven.Text;
  frmctr_ped_fin.fin_recFIN_DREP.Value := cbdrep.Text;
  frmctr_ped_fin.fin_recFIN_DPRA.Value := cbdpag.Text;
  frmctr_ped_fin.fin_recFIN_VALO.Value := RETORNA_REAL(edtcde.Text);
  frmctr_ped_fin.fin_recFIN_COBR.Value := 'B';
  frmctr_ped_fin.fin_recFIN_CTNR.Value := edctnr.Text;
  frmctr_ped_fin.fin_rec.Post;

  frmctr_ped_fin.fin_rec_bai.Append;
  frmctr_ped_fin.fin_rec_baiID.Value       := 0;
  if (eddero.Text = '') or (eddero.Text = '0') then
  frmctr_ped_fin.fin_rec_baiFIN_DOCT.Value := edcdro.Text else
  frmctr_ped_fin.fin_rec_baiFIN_DOCT.Value := eddero.Text;
  frmctr_ped_fin.fin_rec_baiFIN_DVEN.Value := eddcad.Date;
  frmctr_ped_fin.fin_rec_baiFIN_TIPO.Value := 'ABATIMENTO';
  frmctr_ped_fin.fin_rec_baiFIN_VALO.Value := RETORNA_REAL(edtcde.Text);
  frmctr_ped_fin.fin_rec_bai.Post;
end;

procedure Tfrmven_ped.CADASTRA_PRODUTO(cart: string;ccor: integer);
begin
  cad_pro.Close;
  cad_pro.Params[0].Value := cart;
  cad_pro.Open;

  with aux do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_CAD_PRO, 0) FROM RDB$DATABASE');
    Open;
  end;

  ibSP.StoredProcName := 'SP_CAD_PRO';
  ibSP.Prepare;

  ibSP.ParamByName('ID').Value   := 0;
  ibSP.ParamByName('DCAD').Value := eddcad.Date;
  ibSP.ParamByName('DALT').Value := eddcad.Date;
  ibSP.ParamByName('DUSU').Value := frmprincipal.cad_usuUSU_DUSU.AsString;
  ibSP.ParamByName('CART').Value := cart;
  ibSP.ParamByName('CPRO').Value := cart+'.'+strzero(ccor,4);
  ibSP.ParamByName('CFOR').Value := cad_proPRO_CFOR.Value;
  ibSP.ParamByName('CBAR').Value := TRIM('5501'+strzero(aux.Fields[0].AsInteger+1,8));
  ibSP.ParamByName('DPRO').Value := cad_proPRO_DPRO.Value;
  ibSP.ParamByName('DPR2').Value := cad_proPRO_DPR2.Value;
  ibSP.ParamByName('DPR3').Value := cad_proPRO_DPR3.Value;
  ibSP.ParamByName('DPR4').Value := cad_proPRO_DPR4.Value;
  ibSP.ParamByName('DPR5').Value := cad_proPRO_DPR5.Value;
  ibSP.ParamByName('APRO').Value := cad_proPRO_APRO.Value;
  ibSP.ParamByName('OBSE').Value := cad_proPRO_OBSE.Value;
  ibSP.ParamByName('OBSF').Value := cad_proPRO_OBSF.Value;
  ibSP.ParamByName('COMP').Value := cad_proPRO_COMP.Value;
  ibSP.ParamByName('DUNI').Value := cad_proPRO_DUNI.Value;
  ibSP.ParamByName('GRAD').Value := cad_proPRO_GRAD.Value;
  ibSP.ParamByName('CEMB').Value := cad_proPRO_CEMB.Value;
  ibSP.ParamByName('DEMB').Value := cad_proPRO_DEMB.Value;
  ibSP.ParamByName('CGRP').Value := cad_proPRO_CGRP.Value;
  ibSP.ParamByName('RGRP').Value := cad_proPRO_RGRP.Value;
  ibSP.ParamByName('DGRP').Value := cad_proPRO_DGRP.Value;
  ibSP.ParamByName('APRC').Value := cad_proPRO_APRC.Value;
  ibSP.ParamByName('LDSC').Value := cad_proPRO_LDSC.Value;
  ibSP.ParamByName('CCAT').Value := cad_proPRO_CCAT.Value;
  ibSP.ParamByName('RCAT').Value := cad_proPRO_RCAT.Value;
  ibSP.ParamByName('DCAT').Value := cad_proPRO_DCAT.Value;
  ibSP.ParamByName('CCOL').Value := cad_proPRO_CCOL.Value;
  ibSP.ParamByName('DCOL').Value := cad_proPRO_DCOL.Value;
  ibSP.ParamByName('CDFO').Value := cad_proPRO_CDFO.Value;
  ibSP.ParamByName('DORI').Value := cad_proPRO_DORI.Value;
  ibSP.ParamByName('REPR').Value := cad_proPRO_REPR.Value;
  ibSP.ParamByName('CCST').Value := cad_proPRO_CCST.Value;
  ibSP.ParamByName('CCLF').Value := cad_proPRO_CCLF.Value;
  ibSP.ParamByName('METR').Value := cad_proPRO_METR.Value;
  ibSP.ParamByName('PESO').Value := cad_proPRO_PESO.Value;
  ibSP.ParamByName('UTIL').Value := cad_proPRO_UTIL.Value;
  ibSP.ParamByName('LARG').Value := cad_proPRO_LARG.Value;
  ibSP.ParamByName('GRAM').Value := cad_proPRO_GRAM.Value;
  ibSP.ParamByName('REND').Value := cad_proPRO_REND.Value;
  ibSP.ParamByName('PSCN').Value := cad_proPRO_PSCN.Value;
  ibSP.ParamByName('PSMR').Value := cad_proPRO_PSMR.Value;
  ibSP.ParamByName('ELAS').Value := cad_proPRO_ELAS.Value;
  ibSP.ParamByName('ELAC').Value := cad_proPRO_ELAC.Value;
  ibSP.ParamByName('STLN').Value := cad_proPRO_STLN.Value;
  ibSP.ParamByName('STAL').Value := cad_proPRO_STAL.Value;
  ibSP.ParamByName('LAVA').Value := cad_proPRO_LAVA.Value;
  ibSP.ParamByName('STA').Value  := cad_proPRO_STA.Value;
  ibSP.ParamByName('STAV').Value := cad_proPRO_STAV.Value;
  ibSP.ParamByName('PCOM').Value := cad_proPRO_PCOM.Value;
  ibSP.ParamByName('CUST').Value := cad_proPRO_CUST.Value;
  ibSP.ParamByName('CLIB').Value := cad_proPRO_CLIB.Value;
  ibSP.ParamByName('PDSC').Value := cad_proPRO_PDSC.Value;
  ibSP.ParamByName('PREC').Value := cad_proPRO_PREC.Value;
  ibSP.ParamByName('PPRO').Value := cad_proPRO_PPRO.Value;
  ibSP.ParamByName('VDSC').Value := cad_proPRO_VDSC.Value;
  ibSP.ParamByName('VPRC').Value := cad_proPRO_VPRC.Value;
  ibSP.ParamByName('VPRO').Value := cad_proPRO_VPRO.Value;
  ibSP.ParamByName('RDSC').Value := cad_proPRO_RDSC.Value;
  ibSP.ParamByName('RPRC').Value := cad_proPRO_RPRC.Value;
  ibSP.ParamByName('RPRO').Value := cad_proPRO_RPRO.Value;
  ibSP.ParamByName('PPRZ').Value := cad_proPRO_PPRZ.Value;
  ibSP.ParamByName('PPER').Value := cad_proPRO_PPER.Value;
  ibSP.ParamByName('VPRZ').Value := cad_proPRO_VPRZ.Value;
  ibSP.ParamByName('VPER').Value := cad_proPRO_VPER.Value;
  ibSP.ParamByName('RPRZ').Value := cad_proPRO_RPRZ.Value;
  ibSP.ParamByName('RPER').Value := cad_proPRO_RPER.Value;
  ibSP.ParamByName('SPRC').Value := cad_proPRO_SPRC.Value;
  ibSP.ParamByName('SPRO').Value := cad_proPRO_SPRO.Value;
  ibSP.ParamByName('SDSC').Value := cad_proPRO_SDSC.Value;
  ibSP.ParamByName('SPRZ').Value := cad_proPRO_SPRZ.Value;
  ibSP.ParamByName('SPER').Value := cad_proPRO_SPER.Value;
  ibSP.ParamByName('PIPI').Value := cad_proPRO_PIPI.Value;
  ibSP.ParamByName('VOCX').Value := cad_proPRO_VOCX.Value;
  ibSP.ParamByName('VOSC').Value := cad_proPRO_VOSC.Value;
  ibSP.ParamByName('VOFD').Value := cad_proPRO_VOFD.Value;
  ibSP.ParamByName('CNA1').Value := cad_proPRO_CNA1.Value;
  ibSP.ParamByName('CNA2').Value := cad_proPRO_CNA2.Value;
  ibSP.ParamByName('CCOR').Value := tab_corCOR_CCOR.Value;
  ibSP.ParamByName('RCOR').Value := tab_corCOR_REFE.Value;
  ibSP.ParamByName('DCOR').Value := tab_corCOR_DCOR.Value;
  ibSP.ParamByName('PCOR').Value := tab_corCOR_PCOR.Value;
  ibSP.ParamByName('DENS').Value := '';
  ibSP.ParamByName('TITF').Value := '';
  ibSP.ExecProc;
  IBTra.CommitRetaining;
end;

procedure Tfrmven_ped.FINALIZA_PROGRAMACAO;
var
  drom: TDate;

function RETORNA_PROGRAMACAO: string;
var
  i: word;
  dero1,dero2: string;
begin
  dero1 := '';
  for i := 1 to length(eddero.Text) do
  begin
    if (copy(eddero.Text,i,1) = '.') or (copy(eddero.Text,i,1) = '/') then
    break;

    dero1 := dero1 + trim(copy(eddero.Text,i,1));
  end;

  i := 0;
  while true do
  begin
    inc(i);
    dero2 := dero1+'/'+inttostr(i);

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM '+SLPrincipal.Values['ped_prg_cab']);
      SQL.Add('WHERE  ROM_DERO = '''+dero2+'''');
      Open;

      if fields[0].IsNull then
      break;
    end;
  end;

  result := dero2;
end;

begin
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ROM_CDPR FROM PED_VEN_ITE');
    SQL.Add('WHERE    ROM_CDPR > 0');
    SQL.Add('GROUP BY ROM_CDPR');
    Open;
  end;

  if consulta_s.Fields[0].IsNull then
  exit;

  while not consulta_S.Eof do
  begin
    with frmprincipal.sp_sql do
    begin
      ibSP.StoredProcName := 'SP_SQL';

      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_prg_cab']);
      SQL.Add('SET    ROM_CEXP = ''0'',');
      SQL.Add('       ROM_DBAI = '''+formatDateTime('mm/dd/yy',strtodate(SLPrincipal.Values['data_sistema']))+''',');
      SQL.Add('       ROM_STFI = ''FINALIZADO''');
      SQL.Add('WHERE  ID       = '''+consulta_S.Fields[0].AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_prg']);
      SQL.Add('SET    EST_CDPD = '''+consulta_S.Fields[0].AsString+'''');
      SQL.Add('WHERE  EST_CDRO = '''+consulta_S.Fields[0].AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    with ped_prg_ite do
    begin
      SQL.Clear;
      SQL.Add('SELECT    PED_PRG_ITE.*,CAD_PRO.ID,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_CCOR,');
      SQL.Add('          CAD_PRO.PRO_RCOR,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,CAD_PRO.PRO_PIPI,CAD_PRO.PRO_REPR,CAD_PRO.PRO_APRO,');
      SQL.Add('          CAD_PRO.PRO_CBAR,CAD_PRO.PRO_PPRO,CAD_PRO.PRO_CEMB,CAD_PRO.PRO_GRAD,');
      SQL.Add('          CAD_PRO_IMG.PRO_FOTO');
      SQL.Add('FROM      CAD_PRO,CAD_PRO_IMG,'+SLPrincipal.Values['ped_prg_ite']+' "PED_PRG_ITE"');
      SQL.Add('WHERE     PED_PRG_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND       CAD_PRO.PRO_CART     = CAD_PRO_IMG.PRO_CART');
      SQL.Add('AND       PED_PRG_ITE.ROM_CCAB = '''+consulta_S.Fields[0].AsString+'''');
      SQL.Add('ORDER  BY PED_PRG_ITE.ROM_ITEM');
      Open;
    end;

    with rom_003 do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('DELETE FROM PED_PRG_ITE');
      ExecSQL;
      tSHEILD.CommitRetaining;

      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM PED_PRG_ITE');
      SelectSQL.Add('ORDER BY ROM_ITEM');
      Open;
    end;

    while not ped_prg_ite.Eof do
    begin
      with aux_S do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID FROM PED_VEN_ITE');
        SQL.Add('WHERE  ROM_IPR2 = '''+ped_prg_iteROM_CPRO.AsString+'''');
        Open;
      end;

      if aux_S.Fields[0].IsNull then
      begin
        rom_003.Append;
        rom_003ROM_CDPR.Value := consulta_S.Fields[0].AsInteger;
        rom_003ROM_IPRO.Value := ped_prg_iteROM_CPRO.AsInteger;
        rom_003ROM_IPR2.Value := ped_prg_iteROM_CPR2.AsInteger;
        rom_003ROM_CPRO.Value := ped_prg_itePRO_CPRO.AsString;
        rom_003ROM_CPR2.Value := ped_prg_itePRO_CPRO.AsString;
        rom_003ROM_DPRO.Value := ped_prg_iteROM_DPRO.AsString;
        rom_003ROM_QTDE.Value := ped_prg_iteROM_QTDE.AsFloat;
        rom_003ROM_QTRL.Value := ped_prg_iteROM_QTRL.AsInteger;
        rom_003ROM_QTPD.Value := ped_prg_iteROM_QTPD.AsFloat;
        rom_003ROM_RLPD.Value := ped_prg_iteROM_RLPD.AsInteger;
        rom_003ROM_TPRC.Value := ped_prg_iteROM_TPRC.AsString;
        rom_003ROM_PREC.Value := ped_prg_iteROM_PREC.AsFloat;
        rom_003ROM_UNIT.Value := ped_prg_iteROM_UNIT.AsFloat;
        rom_003ROM_VDSC.Value := ped_prg_iteROM_VDSC.AsFloat;
        rom_003ROM_TOTA.Value := ped_prg_iteROM_TOTA.AsFloat;
        rom_003ROM_CDET.Value := ped_prg_iteROM_CDET.AsString;
        rom_003ROM_ABCD.Value := ped_prg_iteROM_ABCD.AsString;
        rom_003ROM_OBSE.Value := ped_prg_iteROM_OBSE.AsString;
        rom_003ROM_DCOR.Value := ped_prg_iteROM_DCOR.AsString;
        rom_003ROM_PCOR.Value := ped_prg_iteROM_PCOR.AsString;
        rom_003.Post;
      end;

      ped_prg_ite.Next;
    end;
    consulta_S.Next;
  end;
  rom_003.Close;
  rom_003.Open;

  if rom_003.Fields[0].IsNull then
  exit;

  with aux_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(ROM_TOTA),SUM(ROM_QTDE),SUM(ROM_QTRL) FROM PED_PRG_ITE');
    Open;
  end;

  adsc := RETORNA_REAL(edadsc.Text);
  pdsc := RETORNA_REAL(edpdsc.Text);
  if (edpdsc.Text = '') or (RETORNA_REAL(edpdsc.Text) < 0) then
  pdsc := 0;

  qtde := aux_S.fields[1].AsFloat;
  qtrl := aux_S.fields[2].AsInteger;
  tsde := aux_S.fields[0].AsFloat;
  tcde := aux_S.fields[0].AsFloat;

  if pdsc > 0 then
  begin
    if latdsc.Caption = '%' then
       tcde := tsde - ((tsde * pdsc) / 100)
    else if latdsc.Caption = '$' then
    begin
      if tsde >= pdsc then
      tcde := tsde - pdsc;
    end;
  end;

  if adsc > 0 then
  tcde := tcde - ((tcde * adsc) / 100);

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_'+SLPrincipal.Values['ped_prg_cab']+',0) FROM RDB$DATABASE');
    Open;
    ID := fields[0].AsInteger+1;

    SQL.Clear;
    SQL.Add('SELECT ID,ROM_DROM FROM '+SLPrincipal.Values['ped_prg_cab']);
    SQL.Add('WHERE  ROM_DERO = '''+eddero.Text+'''');
    Open;
    if fields[0].IsNull then
    drom := eddcad.Date else
    drom := fields[1].AsDateTime;
  end;

  ibSP.StoredProcName := 'SP_PED_PRG_CAB';
  ibSP.Prepare;

  ibSP.ParamByName('ped').Value  := 'PED_PRG_CAB';
  if frmprincipal.parametrosID.AsInteger > 1 then
  ibSP.ParamByName('ped').Value  := 'PED_PRG_CAB_'+strzero(frmprincipal.parametrosID.AsInteger,3);

  ibSP.ParamByName('id').Value   := 0;
  ibSP.ParamByName('cdcx').Value := edcdcx.Text;
  ibSP.ParamByName('dero').Value := RETORNA_PROGRAMACAO;
  ibSP.ParamByName('stpd').Value := cbstpd.Text;
  ibSP.ParamByName('stco').Value := cbstco.Text;
  ibSP.ParamByName('stfi').Value := 'PENDENTE';
  ibSP.ParamByName('drom').Value := drom;
  ibSP.ParamByName('hrom').Value := strtotime(edhrom.Text);
  ibSP.ParamByName('dexp').Value := 0;
  ibSP.ParamByName('hexp').Value := 0;
  ibSP.ParamByName('cexp').Value := 0;
  ibSP.ParamByName('ccli').Value := edccli.Text;
  ibSP.ParamByName('cven').Value := edcven.Text;
  ibSP.ParamByName('crep').Value := edcrep.Text;
  ibSP.ParamByName('cpag').Value := edcpag.Text;
  ibSP.ParamByName('qtve').Value := qtde;
  ibSP.ParamByName('rlve').Value := qtrl;
  ibSP.ParamByName('tdsc').Value := latdsc.Caption;
  ibSP.ParamByName('pdsc').Value := edpdsc.Text;
  ibSP.ParamByName('cdsc').Value := edcdsc.Text;
  ibSP.ParamByName('adsc').Value := edadsc.Text;
  ibSP.ParamByName('tsde').Value := tsde;
  ibSP.ParamByName('tcde').Value := tcde;
  ibSP.ParamByName('conc').Value := cbcred.Text;
  ibSP.ParamByName('obse').Value := 'CONTINUADO DA PROGRAMAÇÃO No '+eddero.Text;
  ibSP.ParamByName('sta').Value  := '0';
  ibSP.ParamByName('comi').Value := '0';
  ibSP.ExecProc;

  while not rom_003.Eof do
  begin
    ibSP.StoredProcName := 'SP_PED_PRG_ITE';
    ibSP.Prepare;

    ibSP.ParamByName('ped').Value  := 'PED_PRG_ITE';
    if frmprincipal.parametrosID.AsInteger > 1 then
    ibSP.ParamByName('ped').Value  := 'PED_PRG_ITE_'+strzero(frmprincipal.parametrosID.AsInteger,3);

    ibSP.ParamByName('ID').Value   := 0;
    ibSP.ParamByName('CCAB').Value := ID;
    ibSP.ParamByName('ITEM').Value := rom_003ROM_ITEM.AsString;
    ibSP.ParamByName('CPRO').Value := rom_003ROM_IPRO.AsInteger;
    ibSP.ParamByName('CPR2').Value := rom_003ROM_IPR2.AsInteger;
    ibSP.ParamByName('DPRO').Value := rom_003ROM_DPRO.AsString;
    ibSP.ParamByName('DUNI').Value := rom_003ROM_DUNI.AsString;
    ibSP.ParamByName('QTDE').Value := rom_003ROM_QTDE.AsFloat;
    ibSP.ParamByName('QTRL').Value := qtrl;
    ibSP.ParamByName('QTPD').Value := rom_003ROM_QTDE.AsFloat;
    ibSP.ParamByName('RLPD').Value := qtrl;
    ibSP.ParamByName('PREC').Value := rom_003ROM_PREC.AsFloat;
    ibSP.ParamByName('UNIT').Value := rom_003ROM_UNIT.AsFloat;
    ibSP.ParamByName('VDSC').Value := rom_003ROM_VDSC.AsFloat;
    ibSP.ParamByName('TOTA').Value := rom_003ROM_TOTA.AsFloat;
    ibSP.ParamByName('CDET').Value := '';
    ibSP.ParamByName('COMI').Value := 0;
    ibSP.ParamByName('TPRC').Value := '0';
    ibSP.ParamByName('ABCD').Value := rom_003ROM_ABCD.AsString;
    ibSP.ParamByName('OBSE').Value := rom_003ROM_OBSE.AsString;
    ibSP.ParamByName('DCOR').Value := rom_003ROM_DCOR.AsString;
    ibSP.ParamByName('PCOR').Value := rom_003ROM_PCOR.AsString;
    ibSP.ParamByName('DCO2').Value := rom_003ROM_DCO2.AsString;
    ibSP.ParamByName('PCO2').Value := rom_003ROM_PCO2.AsString;
    ibSP.ExecProc;

    ibSP.StoredProcName := 'SP_CAD_PRO_PRG';
    ibSP.Prepare;

    ibSP.ParamByName('est').Value  := 'CAD_PRO_PRG';
    if frmprincipal.parametrosID.AsInteger > 1 then
    ibSP.ParamByName('est').Value  := 'CAD_PRO_PRG_'+strzero(frmprincipal.parametrosID.AsInteger,3);

    ibSP.ParamByName('id').Value   := 0;
    ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
    ibSP.ParamByName('cdro').Value := ID;
    ibSP.ParamByName('cdpd').Value := 0;
    ibSP.ParamByName('cdbx').Value := 0;
    ibSP.ParamByName('cpro').Value := rom_003ROM_IPR2.AsInteger;
    ibSP.ParamByName('cusu').Value := edcven.Text;
    ibSP.ParamByName('dusu').Value := cbdven.Text;
    ibSP.ParamByName('cfav').Value := edccli.Text;
    ibSP.ParamByName('dfav').Value := eddcli.Text;
    ibSP.ParamByName('dcad').Value := drom;
    ibSP.ParamByName('docu').Value := trim(copy(RETORNA_PROGRAMACAO,1,10));
    ibSP.ParamByName('flag').Value := 'P';
    ibSP.ParamByName('cdet').Value := '';
    ibSP.ParamByName('debi').Value := 0;
    ibSP.ParamByName('cred').Value := rom_003ROM_QTDE.AsFloat;
    ibSP.ParamByName('dmap').Value := '';
    ibSP.ParamByName('ctnr').Value := '';
    ibSP.ParamByName('lote').Value := '';
    ibSP.ExecProc;

    with frmprincipal.sp_sql do
    begin
      ibSP.StoredProcName := 'SP_SQL';

      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['ped_prg_ite']);
      SQL.Add('WHERE  ROM_CCAB = '''+rom_003ROM_CDPR.AsString+'''');
      SQL.Add('AND    ROM_CPRO = '''+rom_003ROM_IPR2.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_prg']);
      SQL.Add('WHERE  EST_CDRO = '''+rom_003ROM_CDPR.AsString+'''');
      SQL.Add('AND    EST_CPRO = '''+rom_003ROM_IPR2.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    rom_003.Next;
  end;

  rom_001.First;
  while not rom_001.Eof do
  begin
    with frmprincipal.sp_sql do
    begin
      ibSP.StoredProcName := 'SP_SQL';

      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_prg']);
      SQL.Add('SET    EST_CDPD = '''+rom_001ROM_CDPR.AsString+'''');
      SQL.Add('WHERE  EST_CDRO = '''+rom_001ROM_CDPR.AsString+'''');
      SQL.Add('AND    EST_CPRO = '''+rom_001ROM_IPR2.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;
    rom_001.Next;
  end;

  consulta_S.First;
  while not consulta_S.Eof do
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ROM_ADSC,ROM_PDSC FROM '+SLPrincipal.Values['ped_prg_cab']);
      SQL.Add('WHERE  ID = '''+consulta_S.Fields[0].AsString+'''');
      Open;
      adsc := fields[0].AsFloat;
      pdsc := fields[0].AsFloat;

      SQL.Clear;
      SQL.Add('SELECT SUM(ROM_TOTA),SUM(ROM_QTDE),SUM(ROM_QTRL) FROM '+SLPrincipal.Values['ped_prg_ite']);
      SQL.Add('WHERE  ROM_CCAB = '''+consulta_S.Fields[0].AsString+'''');
      Open;
    end;


    qtde := consulta.fields[1].AsFloat;
    qtrl := consulta.fields[2].AsInteger;
    tsde := consulta.fields[0].AsFloat;
    tcde := consulta.fields[0].AsFloat;

    if pdsc > 0 then
    begin
      if latdsc.Caption = '%' then
         tcde := tsde - ((tsde * pdsc) / 100)
      else if latdsc.Caption = '$' then
      begin
        if tsde >= pdsc then
        tcde := tsde - pdsc;
      end;
    end;

    if adsc > 0 then
    tcde := tcde - ((tcde * adsc) / 100);

    with frmprincipal.sp_sql do
    begin
      ibSP.StoredProcName := 'SP_SQL';

      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_prg_cab']);
      SQL.Add('SET    ROM_TSDE = '''+strtran(floattostr(tsde),',','.')+''',');
      SQL.Add('       ROM_TCDE = '''+strtran(floattostr(tcde),',','.')+''',');
      SQL.Add('       ROM_QTVE = '''+strtran(floattostr(qtde),',','.')+''',');
      SQL.Add('       ROM_RLVE = '''+strtran(floattostr(qtrl),',','.')+''',');
      SQL.Add('       ROM_QTPD = '''+strtran(floattostr(qtde),',','.')+''',');
      SQL.Add('       ROM_CEXP = ''0'',');
      SQL.Add('       ROM_DBAI = '''+formatDateTime('mm/dd/yy',strtodate(SLPrincipal.Values['data_sistema']))+''',');
      SQL.Add('       ROM_STFI = ''FINALIZADO''');
      SQL.Add('WHERE  ID       = '''+consulta_S.Fields[0].AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    consulta_S.Next;
  end;
end;

procedure Tfrmven_ped.EDITAPECA;
begin
  if rom_001ROM_QTRL.AsInteger = 0 then
  rom_001ROM_QTRL.Value := 1;

  if copy(rom_001ROM_DUNI.AsString,1,1) = 'K' then
  rom_001ROM_QTDE.Value := roundto(rom_001ROM_QTRL.AsFloat*(rom_001ROM_PESO.AsFloat+rom_001ROM_PSCN.AsFloat),-2)
  else if (copy(rom_001ROM_DUNI.AsString,1,1) = 'M') then
  rom_001ROM_QTDE.Value := roundto(rom_001ROM_QTRL.AsFloat*rom_001ROM_METR.AsFloat,-2);
end;

procedure Tfrmven_ped.EDITAQUANTIDADE;
begin
  if copy(rom_001ROM_DUNI.AsString,1,1) = 'M' then
  begin
    if edqtsp.Text = '1' then
    begin
      if rom_001ROM_METR.AsFloat > 0 then
         rom_001ROM_QTRL.Value := trunc(roundto((rom_001ROM_QTDE.AsFloat/rom_001ROM_METR.AsFloat),-2));
    end;
  end
  else if copy(rom_001ROM_DUNI.AsString,1,1) = 'K' then
  begin
    if edqtsp.Text = '1' then
    begin
      if rom_001ROM_PESO.AsFloat > 0 then
         rom_001ROM_QTRL.Value := trunc(roundto(rom_001ROM_QTDE.AsFloat/(rom_001ROM_PESO.AsFloat+rom_001ROM_PSCN.AsFloat),-2));
    end;
  end
  else if (copy(rom_001ROM_DUNI.AsString,1,1) = 'P') or (copy(rom_001ROM_DUNI.AsString,1,1) = 'C') then
  rom_001ROM_QTRL.Value := trunc(rom_001ROM_QTDE.AsFloat);

  if rom_001ROM_QTRL.AsInteger = 0 then
  rom_001ROM_QTRL.Value := 1;
end;

procedure Tfrmven_ped.PESQUISA_PRODUTO(campo,cpro:string;qtde: double);
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
     if frmprincipal.psq_proPRO_STAV.AsString = 'I' then
     begin
       messageBox(handle,'Produto inativo !',PChar(self.Caption),MB_ICONERROR+MB_OK);
       Abort;
     end;

     if frmprincipal.psq_proPRO_STAV.AsString = 'P' then
     begin
       messageBox(handle,'Produto em desenvolvimento !',PChar(self.Caption),MB_ICONERROR+MB_OK);
       Abort;
     end;

     if frmprincipal.psq_proPRO_STA.AsString <> '0' then
     begin
       messageBox(handle,'Produto enviado para a lixeira !',PChar(self.Caption),MB_ICONERROR+MB_OK);
       Abort;
     end;

     if ((frmprincipal.parametrosPAR_TIPO.AsString = '0') and (edqtsp.Text = '1')) or
        ((frmprincipal.parametrosPAR_TIPO.AsString = '4') and (edqtsp.Text = '1')) then
     begin
       if copy(frmprincipal.psq_proPRO_DUNI.AsString,1,1) = 'M' then
       begin
         if frmprincipal.psq_proPRO_METR.AsFloat <= 0 then
         begin
           messageBox(handle,'Produto sem metragem cadastrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
           Abort;
         end;
       end
       else if copy(frmprincipal.psq_proPRO_DUNI.AsString,1,1) = 'K' then
       begin
         if frmprincipal.psq_proPRO_PESO.AsFloat <= 0 then
         begin
           messageBox(handle,'Produto sem peso da peça cadastrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
           Abort;
         end;

         if frmprincipal.psq_proPRO_PSCN.AsFloat <= 0 then
         begin
           messageBox(handle,'Produto sem peso do canudo cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
           Abort;
         end;
       end;
     end;

     if rom_001.State = dsBrowse then
     begin
       if (edQTPC.Text = 'PC') or (cbstpd.Text = 'DEVOLUÇÃO') then
          rom_001.Append
       else
       begin
         rom_001.First;
         if rom_001.Locate('ROM_CPRO',frmprincipal.psq_proPRO_CPRO.AsString,[]) then
         rom_001.Edit
         else
         rom_001.Append;
       end;
     end;

     rom_001ROM_PRCA.Value := frmprincipal.psq_proPRO_PREC.AsFloat;
     rom_001ROM_PRPA.Value := frmprincipal.psq_proPRO_PPRO.AsFloat;
     rom_001ROM_VPRC.Value := frmprincipal.psq_proPRO_VPRC.AsFloat;
     rom_001ROM_VPRO.Value := frmprincipal.psq_proPRO_VPRO.AsFloat;
     rom_001ROM_RPRC.Value := frmprincipal.psq_proPRO_RPRC.AsFloat;
     rom_001ROM_RPRO.Value := frmprincipal.psq_proPRO_RPRO.AsFloat;
     rom_001ROM_PCOM.Value := frmprincipal.psq_proPRO_PCOM.AsFloat;
     rom_001ROM_CUST.Value := frmprincipal.psq_proPRO_CUST.AsFloat;
     rom_001ROM_TPRC.Value := TRIM(cbprec.Text);
     rom_001ROM_PREC.Value := rom_001ROM_UNIT.AsFloat;

     rom_001ROM_DPRO.Value := frmprincipal.psq_proPRO_DPRO.AsString;
     rom_001ROM_DUNI.Value := frmprincipal.psq_proPRO_DUNI.AsString;

     if qtde > 0 then
     rom_001ROM_QTDE.Value := qtde;

     if rom_001ROM_DPRO.AsString = '' then
     rom_001ROM_DPRO.Value := frmprincipal.psq_proPRO_DPRO.AsString;
     rom_001ROM_IPRO.Value := frmprincipal.psq_proID.AsInteger;
     rom_001ROM_IPR2.Value := frmprincipal.psq_proID.AsInteger;
     rom_001ROM_CART.Value := frmprincipal.psq_proPRO_CART.AsString;
     rom_001ROM_CPRO.Value := frmprincipal.psq_proPRO_CPRO.AsString;
     rom_001ROM_CPR2.Value := frmprincipal.psq_proPRO_CPRO.AsString;
     rom_001ROM_CCOR.Value := frmprincipal.psq_proPRO_CCOR.AsInteger;
     rom_001ROM_DCOR.Value := frmprincipal.psq_proPRO_DCOR.AsString;
     rom_001ROM_CCO2.Value := frmprincipal.psq_proPRO_CCOR.AsInteger;
     rom_001ROM_DCO2.Value := frmprincipal.psq_proPRO_DCOR.AsString;
     rom_001ROM_DUNI.Value := frmprincipal.psq_proPRO_DUNI.AsString;
     rom_001ROM_FOTO.Value := frmprincipal.psq_proPRO_FOTO.Value;
     rom_001ROM_CBAR.Value := frmprincipal.psq_proPRO_CBAR.AsString;
     rom_001ROM_PPRO.Value := frmprincipal.psq_proPRO_PPRO.AsFloat;
     rom_001ROM_METR.Value := frmprincipal.psq_proPRO_METR.AsFloat;
     rom_001ROM_PESO.Value := frmprincipal.psq_proPRO_PESO.AsFloat;
     rom_001ROM_REND.Value := frmprincipal.psq_proPRO_REND.AsFloat;
     rom_001ROM_PSCN.Value := frmprincipal.psq_proPRO_PSCN.AsFloat;
     rom_001ROM_PSMR.Value := frmprincipal.psq_proPRO_PSMR.AsFloat;
     rom_001ROM_PIPI.Value := frmprincipal.psq_proPRO_PIPI.AsFloat;
     rom_001ROM_QDIS.Value := frmprincipal.psq_proC_QDIS.AsFloat;
     rom_001ROM_RLDI.Value := frmprincipal.psq_proC_RDIS.AsInteger;
     rom_001ROM_APRC.Value := frmprincipal.psq_proPRO_APRC.AsString;
     rom_001ROM_LDSC.Value := frmprincipal.psq_proPRO_LDSC.AsFloat;
     rom_001ROM_QTRL.Value := 1;

     if (copy(rom_001ROM_DUNI.AsString,1,1) = 'P') or (copy(rom_001ROM_DUNI.AsString,1,1) = 'C') then
     rom_001ROM_QTRL.Value := trunc(rom_001ROM_QTDE.AsFloat);

     if frmprincipal.parametrosPAR_FANT.AsString = 'LEBIANCO' then
     EDITAPECA;

     aux.SQL.Clear;
     aux.SQL.Add('SELECT GRD_CGRD,GRD_DGRD FROM TAB_GRD');
     aux.SQL.Add('WHERE  GRD_CGRD = '''+frmprincipal.psq_proPRO_GRAD.AsString+'''');
     aux.Open;

     rom_001ROM_CGRD.Value := aux.Fields[0].AsString;
     rom_001ROM_DGRD.Value := aux.Fields[1].AsString;

     if rom_001.State = dsInsert then
     CARREGAFOTO(rom_001ROM_FOTO.BlobSize,rom_001ROM_FOTO,rom_001);

     if qtde > 0 then
     begin
       rom_001.Post;

       if campo = 'Barra' then
       begin
         rom_001.Append;
         dbgrom.FocusedColumn := 1;
       end;
     end;
   end;
end;

function Tfrmven_ped.RETORNA_FOCO(campo: string): integer;
var i,j: word;
begin
  i := 0;
  j := 0;
  while true do
  begin
    inc(j);
    if dbgrom.Columns[j].Visible then
    begin
      inc(i);
      if dbgrom.Columns[j].FieldName = campo then
      break;
    end;
  end;

  result := i;
end;

procedure Tfrmven_ped.DISPLAY_GRID;
var
  tam: word;
begin
  tam := dbgromROM_DPRO.Tag;

  if screen.Width >= 1360 then
     tam := tam + 85;

  if frmprincipal.parametrosPAR_PECA.AsString = '1' then
  begin
    dbgromROM_RLDI.Visible := true;
    dbgromROM_QTRL.Visible := true;
  end
  else
  begin
    dbgromROM_RLDI.Visible := false;
    dbgromROM_QTRL.Visible := false;
  end;

  if dbgromROM_RLDI.Visible then
     tam := tam - (dbgromROM_RLDI.Width + dbgromROM_QTRL.Width);

  if (frmprincipal.parametrosPAR_TIPO.AsString <> '0') and (frmprincipal.parametrosPAR_TIPO.AsString <> '1') then
  begin
    if rom_001ROM_DCOR.AsString = '' then
    dbgromROM_DCOR.Visible := false
    else
    dbgromROM_DCOR.Visible := true;
  end;

  if dbgromROM_DCO2.Visible then
  begin
    dbgromROM_DCOR.Width := 100;
    dbgromROM_DCO2.Width := 100;
    tam := (tam - dbgromROM_DCO2.Width)
  end;

  if dbgromROM_DCOR.Visible then
  tam := (tam - dbgromROM_DCOR.Width);

  dbgromROM_DPRO.Width := tam;
end;

procedure Tfrmven_ped.PESQUISA_TIPO(pesq,chave: string);
begin
  with aux do
  begin
    SQL.Clear;
    SQL.Add('SELECT VEN_FATU,VEN_PDSC,VEN_STVE,VEN_DPAG,VEN_QTPC,VEN_PREC,VEN_QTSP,VEN_BAIP,VEN_NFEP,VEN_TINT,VEN_AGRP,VEN_BEST,VEN_DESC,VEN_PACR,VEN_PTNG,VEN_TIPO FROM TAB_PED');
    SQL.Add('WHERE  '+pesq+' = '''+chave+'''');
    Open;

    edfatu.Text            := fields[0].AsString;
    cbprec.Text            := fields[5].AsString;
    edadsc.Text            := formatfloat('0.00',fields[1].AsFloat);
    edqtsp.Text            := fields[6].AsString;
    edqtpc.Text            := fields[4].AsString;
    edagrp.Text            := fields[10].AsString;
    edbest.Text            := fields[11].AsString;
    eddesc.Text            := fields[12].AsString;
    edpacr.Text            := inttostr(fields[13].AsInteger);
    edptng.Text            := fields[14].AsString;
    cbstpd.Text            := fields[15].AsString;
    cbdpag.Text            := fields[3].AsString;
    dbgromROM_DCO2.Visible := (fields[9].AsString = '1');
    edddsc.Text            := '';
    edstpd.Text            := cbstpd.Text;
    cbstco.Text            := fields[2].AsString;

    if fields[1].AsFloat > 0 then
       edddsc.Text := 'Desconto adicional: '+formatfloat('0.00% '+cbstpd.Text,fields[1].AsFloat);

    if fields[0].AsString <> '1' then
    begin
      cbdpag.Text := 'SEM COBRANÇA';
      cbstco.Text := 'SEM COBRANÇA';
    end;

    DISPLAY_GRID;

    if (cbdpag.Text <> 'SEM COBRANÇA') then
    PESQUISA_FPAGTO('F',fields[3].AsString);
  end;

  cbstco.Enabled := (edfatu.Text = '1');
  cbdpag.Enabled := (edfatu.Text = '1');
  edcpag.Enabled := (edfatu.Text = '1');
  edpdsc.Enabled := not (eddesc.Text = '0');
  latdsc.Enabled := not (eddesc.Text = '0');
end;

function Tfrmven_ped.RETORNA_LOGIN(texto: string): boolean;
var
  BRet: boolean;
begin
  AUTORIZACAO      := '';
  TP_AUTORIZACAO   := '';
  frmlogin         := TFrmlogin.Create(self);
  frmlogin.Caption := texto;
  try
    frmlogin.Tag := 2;
    frmlogin.ShowModal;
  finally
    if frmlogin.cad_usuUSU_CUSU.AsString = '' then
    BRet := false
    else
    BRet := (frmprincipal.ACESSO(frmlogin.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Autorizar Outros Usuários',false));

    if frmlogin.cad_usuUSU_ADM.AsString = '1' then
    BRet := true;

    if BRet then
    begin
      AUTORIZACAO    := frmlogin.cad_usuUSU_DUSU.AsString;
      TP_AUTORIZACAO := texto;
    end;

    freeAndNil(frmlogin);
    frmlogin.Free;
  end;

  result := BRet;
end;

procedure Tfrmven_ped.SALVA;
var
  ID: integer;
begin
  activecontrol := nil;

  if rom_001.State in [dsEdit,dsInsert] then
  begin
    if (rom_001ROM_DPRO.AsString = '') or (rom_001ROM_TOTA.AsFloat = 0) then
    rom_001.Cancel
    else
    rom_001.Post;
  end;
  rom_001.First;

  if (rom_001.Fields[0].IsNull) and (cbstpd.Text <> 'ABATIMENTO')then
  begin
    messageBox(handle,'Pedido sem itens selecionados !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if edfatu.Text <> '1' then
  begin
    if cbstco.Text <> 'SEM COBRANÇA' then
    begin
      cbstco.Enabled := true;
      cbstco.SetFocus;

      messageBox(handle,'Tipo de cobrança inválido !'+#13+'Pedido selecionado não gera cobrança financeira.',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if cbdpag.Text <> 'SEM COBRANÇA' then
    begin
      edcpag.Enabled := true;
      cbdpag.Enabled := true;
      cbdpag.SetFocus;

      messageBox(handle,'Forma de pagamento inválido !'+#13+'Pedido selecionado não gera cobrança financeira.',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end else if edfatu.Text = '1' then
  begin
    if cbstco.Text = 'SEM COBRANÇA' then
    begin
      cbstco.Enabled := true;
      cbstco.SetFocus;

      messageBox(handle,'Tipo de cobrança inválido !'+#13+'Pedido selecionado gera cobrança financeira.',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if cbdpag.Text = 'SEM COBRANÇA' then
    begin
      edcpag.Enabled := true;
      cbdpag.Enabled := true;
      cbdpag.SetFocus;

      messageBox(handle,'Forma de pagamento inválido !'+#13+'Pedido selecionado gera cobrança financeira.',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;

  if (cbcred.Text = '0') and (cbstco.Text = 'BANCÁRIO') then
  begin
    cbcred.SetFocus;
    messageBox(handle,'Opção de crédito não permitido !'+#13+'Para crédito 0 (zero) utilizar cobrança em carteira.',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if (copy(edtcde.Text,1,1) = '-') and (cbstpd.Text <> 'DEVOLUÇÃO') and (cbstpd.Text <> 'ABATIMENTO') then
  begin
    eddcli.SetFocus;
    messageBox(handle,'Pedido do cliente não pode ser negativo !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if (cbstpd.Text = 'DEVOLUÇÃO') or (cbstpd.Text = 'ABATIMENTO') then
  begin
    if RETORNA_REAL(edtcde.Text) > 0 then
    begin
      eddcli.SetFocus;
      messageBox(handle,'Valor total do pedido inválido !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;

  if cbstpd.Text = '' then
  begin
    cbstpd.SetFocus;
    messageBox(handle,'Tipo de pedido não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if cbstco.Text = '' then
  begin
    cbstco.SetFocus;
    messageBox(handle,'Tipo de cobrança não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;
  
  if edccli.Text = '' then
  begin
    edccli.SetFocus;
    messageBox(handle,'Cliente não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if edcven.Text = '' then
  begin
    edcven.SetFocus;
    messageBox(handle,'Vendedor não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if edcrep.Text = '' then
  begin
    edcrep.SetFocus;
    messageBox(handle,'Representante não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if edcpag.Text = '' then
  begin
    edcpag.SetFocus;
    messageBox(handle,'Forma de pagamento não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_PED');
    SQL.Add('WHERE  VEN_TIPO = '''+cbstpd.Text+'''');
    SQL.Add('AND    VEN_STA  = ''1''');
    Open;

    if fields[0].IsNull then
    begin
      cbstpd.SetFocus;
      messageBox(handle,'Tipo de pedido não cadastrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_COB');
    SQL.Add('WHERE  VEN_TIPO = '''+cbstco.Text+'''');
    SQL.Add('AND    VEN_STA  = ''1''');
    Open;

    if fields[0].IsNull then
    begin
      cbstco.SetFocus;
      messageBox(handle,'Tipo de cobrança não cadastrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;

  with tab_pag do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM TAB_PAG');
    SQL.Add('WHERE  PAG_DPAG = '''+cbdpag.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      if cbdpag.Enabled then
      cbdpag.SetFocus;
      messageBox(handle,'Condição de pagamento não cadastrada !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if ((cbstco.Text = 'DINHEIRO') and (tab_pagPAG_D001.AsInteger >  1)) or
       ((cbstco.Text = 'DÉBITO')   and (tab_pagPAG_D001.AsInteger <> 0)) or
       ((cbstco.Text = 'DEBITO')   and (tab_pagPAG_D001.AsInteger <> 0)) or
       ((cbstco.Text = 'CHEQUE A VISTA')   and (tab_pagPAG_D001.AsInteger <> 0)) or
       ((cbstco.Text = 'VALE')   and (tab_pagPAG_D001.AsInteger = 0)) then
    begin
      cbstco.SetFocus;
      messageBox(handle,'Tipo de cobrança inválida para essa condição de pagamento !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;

  if psq_cli.Fields[0].IsNull then
  begin
    eddcli.SetFocus;
    messageBox(handle,'Cliente não cadastrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if Pos('DEVOLU',cbstpd.Text) > 0 then
  begin
    edcdrd.Text := PESQUISA_PEDIDO;

    if edcdrd.Text = '0' then
    begin
      messageBox(handle,'Pedido de venda não informado ou não encontrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end else edcdrd.Text := '0';

  if (cbstpd.Text <> 'DEVOLUÇÃO') and (cbstpd.Text <> 'ABATIMENTO') and (cbstco.Text <> 'SEM COBRANÇA') then
  begin
    if psq_cliCLI_STAV.AsString = 'S' then
    begin
      limite := false;
      cbstpd.Hint := 'SUSPENSO';

      cli_sta.Close;
      cli_sta.ParamByName('FIN_STFI').Value := 'PROTESTADO';
      cli_sta.ParamByName('FIN_CCLI').Value := edccli.Text;
      cli_sta.Open;

      if not cli_sta.Fields[0].IsNull then
      begin
        cbstpd.Hint := 'PROTESTADO';
        messageBox(handle,PChar('Cliente possui faturas em PROTESTO !'+#13+#13+
                                'Documento '+cli_staFIN_DOCT.AsString+#13+
                                'Vencimento '+formatDateTime('dd/mm/yyyy',cli_staFIN_DVEN.AsDateTime)+#13+
                                'Valor '+formatfloat('R$ #,0.00########',cli_staFIN_VALO.AsFloat)+#13+#13+
                                'Nota: O pedido será salvo, mas ficará aguardando por liberação.'),
                          PChar('Empresa: '+frmprincipal.parametrosPAR_FANT.AsString),MB_ICONERROR+MB_OK);
      end
      else
      begin
        cli_sta.Close;
        cli_sta.ParamByName('FIN_STFI').Value := 'NÃO PAGO';
        cli_sta.ParamByName('FIN_CCLI').Value := edccli.Text;
        cli_sta.Open;

        if not cli_sta.Fields[0].IsNull then
        begin
          cbstpd.Hint := 'NÃO PAGO';
          messageBox(handle,PChar('Cliente possui faturas em NÃO PAGO !'+#13+#13+
                                  'Documento '+cli_staFIN_DOCT.AsString+#13+
                                  'Vencimento '+formatDateTime('dd/mm/yyyy',cli_staFIN_DVEN.AsDateTime)+#13+
                                  'Valor '+formatfloat('R$ #,0.00########',cli_staFIN_VALO.AsFloat)+#13+#13+
                                  'Nota: O pedido será salvo, mas ficará aguardando por liberação.'),
                            PChar('Empresa: '+frmprincipal.parametrosPAR_FANT.AsString),MB_ICONERROR+MB_OK);
        end;
      end;

      if cbstpd.Hint = 'SUSPENSO' then
      messageBox(handle,PChar('Cliente com suspensão no cadastro !'+#13+
                              'Nota: O pedido será salvo, mas ficará aguardando por liberação.'),
                        PChar('Empresa: '+frmprincipal.parametrosPAR_FANT.AsString),MB_ICONERROR+MB_OK);
    end
    else
    begin
      if frmprincipal.parametrosPAR_FANT.AsString <> 'OTIMOTEX FARDO' then
      begin
        cbstpd.Hint := frmprincipal.CALCULA_LIMITE_VENDA(limite,cbstco.Text,edfatu.Text,edccli.Text,edtcde.Text,cad_cli_crdCLI_CRED.AsString);

        if cbstpd.Hint <> '' then
        begin
          limite := false;

          dbgrom.SetFocus;
          messageBox(handle,PChar('Cliente ultrapassou o limite de crédito estabelecido no cadastro.'+#13+
                                  'Limite de Crédito Cadastrado '+formatfloat('R$ #,0.00.',cad_cli_crdCLI_CRED.AsFloat)+#13+#13+
                                  'Pendente BANCÁRIO '+formatfloat('R$ #,0.00',VALOR_BANCARIO)+#13+
                                  'Pendente CARTEIRA '+formatfloat('R$ #,0.00',VALOR_CARTEIRA)+#13+#13+
                                  'Valor Máximo Permitido para Compra '+formatfloat('R$ #,0.00.',VALOR_SALDO)+#13+#13+
                                  'Nota: O pedido será salvo, mas ficará aguardando por liberação.'),
                            PChar('Empresa: '+frmprincipal.parametrosPAR_FANT.AsString),MB_ICONERROR+MB_OK);

          with consulta do
          begin
            SQL.Clear;
            SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM '+SLPrincipal.Values['fin_rec_ban_bai']);
            SQL.Add('WHERE  FIN_CCLI = '''+edccli.Text+'''');
            SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
            SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
            SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
            SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
            SQL.Add('UNION');
            SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM '+SLPrincipal.Values['fin_rec_car_bai']);
            SQL.Add('WHERE  FIN_CCLI = '''+edccli.Text+'''');
            SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
            SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
            SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
            SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
            SQL.Add('ORDER BY 1');
            Open;
          end;
        end;
      end;

      if cbstpd.Hint = '' then
      begin
        cbstpd.Hint := frmprincipal.CALCULA_LIMITE_BANCARIO(limite,cbstco.Text,edfatu.Text,edccli.Text);
        if cbstpd.Hint <> '' then
        begin
          limite      := false;

          messageBox(handle,PChar('Cliente possui duplicata(s) pendentes acima de '+frmprincipal.parametrosPAR_LIMB.AsString+ 'dias.'+#13+
                                  'Nota: O pedido será salvo, mas ficará aguardando por liberação.'),
                            PChar(Self.Caption),MB_ICONERROR+MB_OK);
        end;
      end;

      if cbstpd.Hint = '' then
      begin
        cbstpd.Hint := frmprincipal.CALCULA_LIMITE_CARTEIRA(limite,cbstco.Text,edfatu.Text,edccli.Text);
        if cbstpd.Hint <> '' then
        begin
          limite      := false;

          messageBox(handle,PChar('Cliente possui carteira(s) pendentes acima de '+frmprincipal.parametrosPAR_LIMC.AsString+ 'dias da data média.'+#13+
                                  'Nota: O pedido será salvo, mas ficará aguardando por liberação.'+#13+#13+
                                  'Data Média '+formatDateTime('dd/mm/yy',DATA_MEDIA)),
                            PChar(Self.Caption),MB_ICONERROR+MB_OK);
        end;
      end;
    end;
  end;

  if edagrp.Text = '1' then
  AGRUPA_PEDIDO;

  with consulta do
  begin
    if (edcdro.Text = '0') or (edcdro.Text = '') or (edcdro.Text = ' ') then
    begin
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_'+SLPrincipal.Values['ped_ven_cab']+',0) FROM RDB$DATABASE');
      Open;
      edhrom.Text := timetostr(time);
      edcdro.Text := inttostr(fields[0].AsInteger+1);
               ID := 0;
    end
    else       ID := strtoint(edcdro.Text);
  end;

  if (eddero.Text = '0') or (eddero.Text = '') then
      eddero.Text := edcdro.Text;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(ROM_QTDE),SUM(ROM_QTRL) FROM PED_VEN_ITE');
    Open;
  end;

  with consulta do
  begin
    if (edcdcx.Text = '0') or (edcdcx.Text = '') then
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAI_LAF');
      SQL.Add('WHERE  CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',eddcad.Date)+'''');
      Open;

      if fields[0].IsNull then
      begin
        messageBox(handle,'Caixa não encontrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;
      edcdcx.Text := Fields[0].AsString;
    end;
  end;

  try
    try
      ibSP.StoredProcName := 'SP_PED_VEN_CAB';
      ibSP.Prepare;

      ibSP.ParamByName('ped').Value  := 'PED_VEN_CAB';
      if frmprincipal.parametrosID.AsInteger > 1 then
      ibSP.ParamByName('ped').Value  := 'PED_VEN_CAB_'+strzero(frmprincipal.parametrosID.AsInteger,3);

      ibSP.ParamByName('id').Value   := ID;
      ibSP.ParamByName('cdcx').Value := edcdcx.Text;
     // ibSP.ParamByName('cdrd').Value := edcdrd.Text;
     // ibSP.ParamByName('derd').Value := edcdrd.Hint;
      ibSP.ParamByName('dero').Value := eddero.Text;
      ibSP.ParamByName('ctnr').Value := edctnr.Text;
      ibSP.ParamByName('stpd').Value := cbstpd.Text;
      ibSP.ParamByName('stco').Value := cbstco.Text;
      if edqtsp.Text = '1' then
      ibSP.ParamByName('stfi').Value := 'SEPARAÇÃO' else
      ibSP.ParamByName('stfi').Value := 'PENDENTE';
      if edfatu.Text <> '1' then
      ibSP.ParamByName('stfi').Value := 'SEM COBRANÇA';
      ibSP.ParamByName('drom').Value := eddcad.Date;
      ibSP.ParamByName('hrom').Value := strtotime(edhrom.Text);
      ibSP.ParamByName('dexp').Value := 0;
      ibSP.ParamByName('hexp').Value := 0;
      ibSP.ParamByName('cexp').Value := 0;

      if (edqtsp.Text = '1') and (frmprincipal.parametrosPAR_DSEP.AsInteger > 0) then
      begin
        ibSP.ParamByName('dexp').Value := incDay(eddcad.Date,frmprincipal.parametrosPAR_DSEP.AsInteger);
        ibSP.ParamByName('hexp').Value := strtotime(edhrom.Text);
        ibSP.ParamByName('cexp').Value := frmprincipal.parametrosPAR_DSEP.AsInteger;
      end;
      
      ibSP.ParamByName('ccli').Value := edccli.Text;
      ibSP.ParamByName('cven').Value := edcven.Text;
      ibSP.ParamByName('crep').Value := edcrep.Text;
      ibSP.ParamByName('cpag').Value := edcpag.Text;
      ibSP.ParamByName('qtve').Value := consulta_S.Fields[0].AsFloat;
      ibSP.ParamByName('rlve').Value := consulta_S.Fields[1].AsInteger;
      ibSP.ParamByName('tdsc').Value := latdsc.Caption;
      ibSP.ParamByName('pdsc').Value := edpdsc.Text;
      ibSP.ParamByName('cdsc').Value := edcdsc.Text;
      ibSP.ParamByName('adsc').Value := edadsc.Text;
      ibSP.ParamByName('tsde').Value := RETORNA_REAL(edtsde.Text);
      ibSP.ParamByName('tcde').Value := RETORNA_REAL(edtcde.Text);

      if (cbstpd.Text = 'DEVOLUÇÃO') then
      begin
        ibSP.ParamByName('qtve').Value := 0-consulta_S.Fields[0].AsFloat;
        ibSP.ParamByName('rlve').Value := -1;
        ibSP.ParamByName('stfi').Value := 'FATURADO';
      end;

      if (cbstpd.Text = 'ABATIMENTO') and (consulta_S.Fields[0].AsFloat > 0) then
      begin
        ibSP.ParamByName('qtve').Value := 0-consulta_S.Fields[0].AsFloat;
        ibSP.ParamByName('rlve').Value := -1;
        ibSP.ParamByName('stfi').Value := 'FATURADO';
      end;

      ibSP.ParamByName('conc').Value := cbcred.Text;
      ibSP.ParamByName('vfrt').Value := RETORNA_REAL(edvfrt.Text);
      ibSP.ParamByName('dtra').Value := cbdtra.Text;
      ibSP.ParamByName('obse').Value := Limpa_TXT(edobse.Text);
      ibSP.ParamByName('sta').Value  := '0';
      ibSP.ParamByName('comi').Value := '0';

      if edfatu.Text = '1' then
      begin
        if (not limite) and (cbstpd.Hint <> '') then
        ibSP.ParamByName('stfi').Value := cbstpd.Hint;
      end;

      ibSP.ExecProc;
      IBTra.CommitRetaining;
    except
      edcdro.Text := inttostr(ID);
      IBTra.RollbackRetaining;
      messageBox(handle,'Problemas na gravação do cabeçalho !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    with frmprincipal.sp_sql do
    begin
      ibSP.StoredProcName := 'SP_SQL';

      if edbest.Text = '1' then
      begin
        SQL.Clear;
        SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_res']);
        SQL.Add('WHERE  EST_CDPD = '''+edcdro.Text+'''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;
      end;

      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['ped_ven_ite']);
      SQL.Add('WHERE  ROM_CCAB = '''+edcdro.Text+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    rom_001.DisableControls;
    rom_001.First;
    while not rom_001.Eof do
    begin
      try
        ibSP.StoredProcName := 'SP_PED_VEN_ITE';
        ibSP.Prepare;

        ibSP.ParamByName('ped').Value  := 'PED_VEN_ITE';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('ped').Value  := 'PED_VEN_ITE_'+strzero(frmprincipal.parametrosID.AsInteger,3);

        ibSP.ParamByName('ID').Value   := 0;
        ibSP.ParamByName('CCAB').Value := edcdro.Text;
        ibSP.ParamByName('ITEM').Value := rom_001ROM_ITEM.AsString;
        ibSP.ParamByName('CPRO').Value := rom_001ROM_IPRO.AsInteger;
        ibSP.ParamByName('CPR2').Value := rom_001ROM_IPR2.AsInteger;
        ibSP.ParamByName('DPRO').Value := rom_001ROM_DPRO.AsString;
        ibSP.ParamByName('DUNI').Value := rom_001ROM_DUNI.AsString;
        ibSP.ParamByName('QTDE').Value := rom_001ROM_QTDE.AsFloat;
        ibSP.ParamByName('QTRL').Value := rom_001ROM_QTRL.AsInteger;
        ibSP.ParamByName('QTPD').Value := rom_001ROM_QTPD.AsFloat;
        ibSP.ParamByName('RLPD').Value := rom_001ROM_RLPD.AsInteger;
        ibSP.ParamByName('PREC').Value := rom_001ROM_PREC.AsFloat;
        ibSP.ParamByName('UNIT').Value := rom_001ROM_UNIT.AsFloat;
        ibSP.ParamByName('VDSC').Value := rom_001ROM_VDSC.AsFloat;
        ibSP.ParamByName('TOTA').Value := rom_001ROM_TOTA.AsFloat;
        ibSP.ParamByName('CDET').Value := '';
        ibSP.ParamByName('COMI').Value := 0;
        if TRIM(rom_001ROM_TPRC.AsString) = '' then
        ibSP.ParamByName('TPRC').Value := '0' else
        ibSP.ParamByName('TPRC').Value := inttostr(cbprec.Items.IndexOf(TRIM(rom_001ROM_TPRC.AsString)));
        ibSP.ParamByName('ABCD').Value := rom_001ROM_ABCD.AsString;
        ibSP.ParamByName('OBSE').Value := rom_001ROM_OBSE.AsString;
        ibSP.ParamByName('DCOR').Value := rom_001ROM_DCOR.AsString;
        if (rom_001ROM_DCOR.AsString <> rom_001ROM_DCO2.AsString) and (rom_001ROM_DCO2.AsString <> '') then
        ibSP.ParamByName('DCOR').Value := copy(rom_001ROM_DCOR.AsString+' -> '+rom_001ROM_DCO2.AsString,1,30);
        ibSP.ParamByName('PCOR').Value := rom_001ROM_PCOR.AsString;
        ibSP.ParamByName('DCO2').Value := rom_001ROM_DCO2.AsString;
        ibSP.ParamByName('PCO2').Value := rom_001ROM_PCO2.AsString;
        ibSP.ParamByName('DSEP').Value := rom_001ROM_DSEP.AsString;
        ibSP.ExecProc;

        if edbest.Text = '1' then
        begin
          ibSP.StoredProcName := 'SP_CAD_PRO_RES';
          ibSP.Prepare;

          ibSP.ParamByName('est').Value  := 'CAD_PRO_RES';
          if frmprincipal.parametrosID.AsInteger > 1 then
          ibSP.ParamByName('est').Value  := 'CAD_PRO_RES_'+strzero(frmprincipal.parametrosID.AsInteger,3);

          ibSP.ParamByName('id').Value   := 0;
          ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
          ibSP.ParamByName('cdro').Value := 0;
          ibSP.ParamByName('cdpd').Value := edcdro.Text;
          ibSP.ParamByName('cdbx').Value := 0;
          ibSP.ParamByName('cpro').Value := rom_001ROM_IPRO.AsInteger;
          ibSP.ParamByName('cusu').Value := edcven.Text;
          ibSP.ParamByName('dusu').Value := cbdven.Text;
          ibSP.ParamByName('cfav').Value := edccli.Text;
          ibSP.ParamByName('dfav').Value := eddcli.Text;
          ibSP.ParamByName('dcad').Value := eddcad.Date;
          ibSP.ParamByName('docu').Value := trim(copy(eddero.Text,1,10));
          ibSP.ParamByName('flag').Value := 'R';
          ibSP.ParamByName('cdet').Value := rom_001ROM_CDET.AsString;
          ibSP.ParamByName('dsep').Value := rom_001ROM_DSEP.AsString;
          ibSP.ParamByName('debi').Value := 0;
          ibSP.ParamByName('cred').Value := rom_001ROM_QTDE.AsFloat;
          ibSP.ParamByName('dmap').Value := '';
          ibSP.ParamByName('lote').Value := '';
          ibSP.ParamByName('ctnr').Value := '';

          if rom_001ROM_CDET.AsString <> '' then
          begin
            frmprincipal.consulta.SQL.Clear;
            frmprincipal.consulta.SQL.Add('SELECT EST_CTNR FROM '+SLPrincipal.Values['cad_pro_est']);
            frmprincipal.consulta.SQL.Add('WHERE  EST_CDET = '''+rom_001ROM_CDET.AsString+'''');
            frmprincipal.consulta.Open;

            ibSP.ParamByName('ctnr').Value := frmprincipal.consulta.Fields[0].AsString;
          end;

          ibSP.ExecProc;
        end;
      except
        edcdro.Text := inttostr(ID);

        IBTra.RollbackRetaining;
        messageBox(handle,'Problemas na Gravação dos Itens do Pedido !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
        Abort;
      end;
      
      IBTra.CommitRetaining;
      rom_001.Next;
    end;

    with frmprincipal.sp_sql do
    begin
      ibSP.StoredProcName := 'SP_SQL';

      if rom_001ROM_CDOC.AsInteger > 0 then
      begin
        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['ped_oca_cab']);
        SQL.Add('SET    ROM_STFI = ''FINALIZADO'',');
        SQL.Add('       ROM_DBAI = '''+formatDateTime('mm/dd/yy',strtodate(SLPrincipal.Values['data_sistema']))+'''');
        SQL.Add('WHERE  ID       = '''+rom_001ROM_CDOC.AsString+'''');
      end;

      if edcdrd.Text <> '0' then
      begin
        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
        SQL.Add('SET    ROM_CDRD = '''+edcdro.Text+''',');
        SQL.Add('       ROM_DERD = '''+eddero.Text+'''');
        SQL.Add('WHERE  ID       = '''+edcdrd.Text+'''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;

        consulta.SQL.Clear;
        consulta.SQL.Add('SELECT ROM_CDBX FROM '+SLPrincipal.Values['ped_ven_cab']);
        consulta.SQL.Add('WHERE  ID = '''+edcdrd.Text+'''');
        consulta.Open;

        if consulta.Fields[0].AsInteger > 0 then
        begin
          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['fin_rec_ban_bai']);
          SQL.Add('SET   FIN_CDRD = '''+edcdro.Text+''',');
          SQL.Add('      FIN_DERD = '''+eddero.Text+'''');
          SQL.Add('WHERE FIN_CDBX = '''+consulta.Fields[0].AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;

          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['fin_rec_ban_rec']);
          SQL.Add('SET   FIN_CDRD = '''+edcdro.Text+''',');
          SQL.Add('      FIN_DERD = '''+eddero.Text+'''');
          SQL.Add('WHERE FIN_CDBX = '''+consulta.Fields[0].AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;

          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['fin_rec_car_bai']);
          SQL.Add('SET   FIN_CDRD = '''+edcdro.Text+''',');
          SQL.Add('      FIN_DERD = '''+eddero.Text+'''');
          SQL.Add('WHERE FIN_CDBX = '''+consulta.Fields[0].AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;

          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['fin_rec_car_rec']);
          SQL.Add('SET   FIN_CDRD = '''+edcdro.Text+''',');
          SQL.Add('      FIN_DERD = '''+eddero.Text+'''');
          SQL.Add('WHERE FIN_CDBX = '''+consulta.Fields[0].AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;
        end;
      end;

    end;

    FINALIZA_PROGRAMACAO;

    IBTra.CommitRetaining;

    if ID = 0 then
    edcdro.Hint := 'Inclusão'
    else
    edcdro.Hint := 'Alteração';

    frmprincipal.Log_Eve('Vendas',LOWERCASE(cbstpd.Text),edcdro.Hint,eddero.Text,eddero.Text,LOWERCASE(eddcli.Text),AUTORIZACAO,TP_AUTORIZACAO);

    IBTra.CommitRetaining;
    BSal.Enabled := false;
    BSal.Tag     := 1;

    if (cbstpd.Text = 'DEVOLUÇÃO') or (cbstpd.Text = 'ABATIMENTO') then
    begin
      try
        FINALIZA;
      finally
        frmven_ped.Close;
      end;
    end;
  finally
    pTRA.StartTransaction;

    pSP.StoredProcName := 'SP_EVENT';
    pSP.Prepare;
    pSP.Params[0].AsString := 'CTR_PED';
    pSP.ExecProc;

    pTRA.Commit;

    Tag := 0;
    rom_001.EnableControls;
  end;
end;

procedure Tfrmven_ped.PESQUISA_VENDEDOR(pesq,chave: string);
begin
  if (chave = '0') or (chave = '') then
  exit;

  try
    tag := 1;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT USU_CUSU,USU_DUSU,USU_STA,USU_MENU,USU_STAV FROM CAD_USU');

      if pesq = 'C' then
      SQL.Add('WHERE  USU_CUSU = '''+chave+'''')
      else if pesq = 'F' then
      SQL.Add('WHERE  USU_DUSU = '''+chave+'''');
      Open;

      if fields[0].IsNull then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
        begin
        edcven.SetFocus;
        messageBox(handle,'Código do vendedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end
        else if pesq = 'F' then
        begin
        cbdven.SetFocus;
        messageBox(handle,'Nome do vendedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;

        Abort;
      end;

      if fields[2].AsString <> '0' then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
           edcven.SetFocus
        else if pesq = 'F' then
           cbdven.SetFocus;

        messageBox(handle,PChar('Vendedor '+fields[1].AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if fields[3].AsString <> 'VEN' then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
           edcven.SetFocus
        else if pesq = 'F' then
           cbdven.SetFocus;

        messageBox(handle,PChar('Vendedor '+fields[1].AsString+' não está habilitado para efetuar vendas !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        abort;
      end;

      if fields[4].AsString <> 'A' then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
        edcven.SetFocus
        else if pesq = 'F' then
        cbdven.SetFocus;

        if fields[4].AsString = 'I' then
        messageBox(handle,PChar('Login do Vendedor '+fields[1].AsString+' está inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK) else
        if fields[4].AsString = 'S' then
        messageBox(handle,PChar('Login do Vendedor '+fields[1].AsString+' está suspenso !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        abort;
      end;

      edcven.Text := fields[0].AsString;
      cbdven.Text := fields[1].AsString;
    end;
  finally
    tag := 0;
    BSal.Enabled := true;
  end;
end;

procedure Tfrmven_ped.PESQUISA_REPRESENTANTE(pesq,chave: string);
begin
  if (chave = '0') or (chave = '') then
  exit;

  try
    tag := 1;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,REP_FANT,REP_STA,REP_STAV FROM CAD_REP');
      if pesq = 'C' then
         SQL.Add('WHERE  ID = '''+chave+'''')
      else if pesq = 'F' then
         SQL.Add('WHERE  REP_FANT = '''+chave+'''');
      Open;

      if fields[0].IsNull then
      begin
        edcrep.Text := '';
        cbdrep.Text := '';

        if pesq = 'C' then
        begin
          edcrep.SetFocus;
          messageBox(handle,'Código do representante não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end
        else if pesq = 'F' then
        begin
          cbdrep.SetFocus;
          messageBox(handle,'Nome do representante não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;
        Abort;
      end;

      if fields[2].AsString <> '0' then
      begin
        edcrep.Text := '';
        cbdrep.Text := '';

        if pesq = 'C' then
           edcrep.SetFocus
        else if pesq = 'F' then
           cbdrep.SetFocus;

        messageBox(handle,PChar('Representante '+fields[1].AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if fields[3].AsString <> 'A' then
      begin
        edcrep.Text := '';
        cbdrep.Text := '';

        if pesq = 'C' then
           edcrep.SetFocus
        else if pesq = 'F' then
           cbdrep.SetFocus;

        if fields[3].AsString = 'I' then
           messageBox(handle,PChar('Representante '+fields[1].AsString+' inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
        else if fields[3].AsString = 'P' then
           messageBox(handle,PChar('Representante '+fields[1].AsString+' aguardando autorização para efetuar vendas !'),PChar(self.Caption),MB_ICONERROR+MB_OK);

        Abort;
      end;
      edcrep.Text := fields[0].AsString;
      cbdrep.Text := fields[1].AsString;
    end;
  finally
    tag := 0;
    BSal.Enabled := true;
  end;
end;

procedure Tfrmven_ped.PESQUISA_FPAGTO(pesq,chave: string);
begin
  if (chave = '0') or (chave = '') then
  exit;

  try
    tag := 1;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,PAG_DPAG,PAG_STA,PAG_PARC,PAG_DUPL FROM TAB_PAG');
      if pesq = 'C' then
         SQL.Add('WHERE  ID = '''+chave+'''')
      else if pesq = 'F' then
         SQL.Add('WHERE  PAG_DPAG = '''+chave+'''');
      Open;

      if fields[0].IsNull then
      begin
        edcpag.Text := '';
        cbdpag.Text := '';

        if pesq = 'C' then
        begin
          edcpag.SetFocus;
          messageBox(handle,'Código da forma de pagamento não cadastrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end
        else if pesq = 'F' then
        begin
          cbdpag.SetFocus;
          messageBox(handle,'Nome da forma de pagamento não cadastrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;
        Abort;
      end;

      if fields[2].AsString <> '0' then
      begin
        edcpag.Text := '';
        cbdpag.Text := '';
      
        if pesq = 'C' then
           edcpag.SetFocus;

        messageBox(handle,PChar('Forma de pagamento '+fields[1].AsString+' enviada para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      edcpag.Text := fields[0].AsString;
      cbdpag.Text := fields[1].AsString;

      if fields[4].AsString = 'SIM' then
      cbstco.Text := 'BANCÁRIO';
    end;
  finally
    tag := 0;
    BSal.Enabled := true;
  end;
end;

procedure Tfrmven_ped.PESQUISA_CLIENTE(pesq,chave: string;cdsc: double;pevr,impo: boolean);
begin
  if (chave = '') or (chave = '0') then
  exit;

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
        edccli.SetFocus;
        messageBox(handle,'Código do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'C' then
      begin
        edcnpj.SetFocus;
        messageBox(handle,'C.N.P.J. do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'F' then
      begin
        eddcli.SetFocus;
        messageBox(handle,'Nome fantasia do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'R' then
      begin
        edrcli.SetFocus;
        messageBox(handle,'Razão social do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end;
      Abort;
    end
    else if psq_cli.recordcount = 1 then
    begin
      if psq_cliCLI_STA.AsString <> '0' then
      begin
        if pesq = 'I' then
           edccli.SetFocus
        else if pesq = 'C' then
          edcnpj.SetFocus
        else if pesq = 'F' then
          eddcli.SetFocus
        else if pesq = 'R' then
          edrcli.SetFocus;

        messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if (psq_cliCLI_STAV.AsString <> 'A') and (psq_cliCLI_STAV.AsString <> 'S') then
      begin      
        if pesq = 'I' then
           edccli.SetFocus
        else if pesq = 'C' then
          edcnpj.SetFocus
        else if pesq = 'F' then
          eddcli.SetFocus
        else if pesq = 'R' then
          edrcli.SetFocus;

        if psq_cliCLI_STAV.AsString = 'I' then
           messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
        else if psq_cliCLI_STAV.AsString = 'P' then
           messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' aguardando autorização de compra !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      edccli.Text := psq_cliID.AsString;
      edcnpj.Text := psq_cliCLI_CNPJ.AsString;
      eddcli.Text := psq_cliCLI_FANT.AsString;
      edrcli.Text := psq_cliCLI_RAZA.AsString;
      edcdsc.Text := formatfloat('#,0.00########',psq_cliCLI_VDSC.AsFloat);

      if frmprincipal.parametrosPAR_CEND.AsString = '1' then
      begin
        with consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT CLI_TLOV,CLI_LOGV,CLI_NUMV,CLI_COMV,CLI_CEPV,CLI_BAIV,CLI_CIDV,CLI_ESTV FROM CAD_CLI');
          SQL.Add('WHERE  ID = '''+edccli.Text+'''');
          Open;

          if (fields[0].AsString <> '') and (fields[1].AsString <> '') and (fields[2].AsString <> '') and (edobse.Tag = 0) then
          begin
            edobse.Lines.Clear;
            edobse.Tag := 1;
            edobse.Lines.Add('Entrega: '+fields[0].AsString+' '+fields[1].AsString+', '+fields[2].AsString+' '+fields[3].AsString+' Cep '+fields[4].AsString+' '+fields[5].AsString+' '+fields[6].AsString+' '+fields[7].AsString);
          end else
          begin
            if (psq_cliCLI_TLOG.AsString <> '') and (psq_cliCLI_LOGR.AsString <> '') and (psq_cliCLI_NUME.AsString <> '') and (edobse.Tag = 0) then
            begin
              edobse.Lines.Clear;
              edobse.Tag := 1;
              edobse.Lines.Add('Entrega: '+psq_cliCLI_TLOG.AsString+' '+psq_cliCLI_LOGR.AsString+', '+psq_cliCLI_NUME.AsString+' '+psq_cliCLI_COMP.AsString+' Cep '+copy(psq_cliCLI_CEP.AsString,1,5)+'-'+copy(psq_cliCLI_CEP.AsString,6,3)+' '+psq_cliCLI_BAI.AsString+' '+psq_cliCLI_CID.AsString+' '+psq_cliCLI_ESTA.AsString);
            end;
          end;
        end;
      end;

      if psq_cliCLI_DPAG.AsString <> '' then
      begin
        with consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT ID FROM TAB_PAG');
          SQL.Add('WHERE  PAG_STA  = ''0''');
          SQL.Add('AND    PAG_DPAG = '''+psq_cliCLI_DPAG.AsString+'''');
          Open;

          if not fields[0].IsNull then
          begin
            edcpag.Text := fields[0].AsString;
            cbdpag.Text := psq_cliCLI_DPAG.AsString;
          end;
        end;
      end;

      edobso.Lines.Clear;
      edobso.Lines.Text := TRIM(psq_cliCLI_OBSO.AsString);
      edobso.Update;

      if pevr then
      begin
        if frmprincipal.cad_usuUSU_MENU.AsString <> 'VEN' then
        cbdven.Text := psq_cliUSU_DUSU.AsString else
        cbdven.Text := frmprincipal.cad_usuUSU_DUSU.AsString;
        edcven.Text := '';

        cbdrep.Text := psq_cliREP_FANT.AsString;
        edcrep.Text := '';
      end;

      if cbdven.Text <> '' then
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT USU_CUSU,USU_STA,USU_MENU FROM CAD_USU');
        SQL.Add('WHERE  USU_DUSU = '''+cbdven.Text+'''');
        Open;

        if fields[0].IsNull then
        begin
          edcven.SetFocus;
          edcven.Text := '';
          cbdven.Text := '';
          messageBox(handle,PChar('Vendedor '+cbdven.Text+' não cadastrado !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;

        if fields[1].AsString <> '0' then
        begin
          edcven.SetFocus;
          edcven.Text := '';
          cbdven.Text := '';
          messageBox(handle,PChar('Vendedor '+cbdven.Text+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;

        if fields[2].AsString <> 'VEN' then
        begin
          edcven.SetFocus;
          edcven.Text := '';
          cbdven.Text := '';
          messageBox(handle,PChar('Vendedor '+cbdven.Text+' não está habilitado para efetuar vendas !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        end else
        edcven.Text := fields[0].AsString;
      end;

      if cbdrep.Text <> '' then
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID,REP_STA,REP_STAV,REP_FANT FROM CAD_REP');
        SQL.Add('WHERE  REP_FANT = '''+cbdrep.Text+'''');
        Open;

        if fields[0].IsNull then
        begin
          edcrep.SetFocus;
          edcrep.Text := '';
          cbdrep.Text := '';
          messageBox(handle,PChar('Representante '+cbdrep.Text+' não cadastrado !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;

        if fields[2].AsString <> 'A' then
        begin
          edcrep.SetFocus;
          edcrep.Text := '';
          cbdrep.Text := '';
          Showmessage('Representante '+fields[3].AsString+' inativo !');
        end;

        if fields[1].AsString <> '0' then
        begin
          edcrep.SetFocus;
          edcrep.Text := '';
          cbdrep.Text := '';
          Showmessage('Representante '+fields[3].AsString+' enviado para a lixeira !');
        end else
        edcrep.Text := fields[0].AsString;
      end;

      if (edobso.Text <> '') and (not impo) then
      begin
        pcobs.ActivePageIndex := 1;
        ShowMessage(PChar('Cliente '+eddcli.Text+' com ocorrência registrado !')+#13+'Leia com atenção.');
      end;
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
        SQL.Add('WHERE  CLI_FANT LIKE ''%'+eddcli.Text+'%''')
        else if pesq = 'R' then
        SQL.Add('WHERE  CLI_RAZA LIKE ''%'+edrcli.Text+'%''');
        SQL.Add('AND    CLI_STA  = 0');

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
    if psq_cliCLI_STPD.AsInteger > 0 then
    PESQUISA_TIPO('ID',psq_cliCLI_STPD.AsString);

    if psq_cliCLI_DTRA.AsString <> '' then
    cbdtra.Text := psq_cliCLI_DTRA.AsString;

    tag := 0;
    BSal.Enabled := true;
  end;
end;

procedure Tfrmven_ped.CARREGAFOTO(tam: Integer; valor: TBlobField; tab: TIbDataSet);
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    valor := frmprincipal.parametrosPAR_FOT2;
    tab   := frmprincipal.parametros;
  end;

  BlobStream := tab.CreateBlobStream(valor,bmRead);
  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    pro_foto.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmven_ped.ABRE_TABELA;
begin
  oOTransact(TSheild);
  with rom_001 do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM PED_VEN_ITE');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM PED_VEN_ITE');
    SelectSQL.Add('WHERE    ROM_FLAG = 0');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;
end;

procedure Tfrmven_ped.BSairClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmven_ped.edtsdeKeyPress(Sender: TObject; var Key: Char);
begin
  if cbstpd.Text <> 'ABATIMENTO' then
     key := #0;
end;

procedure Tfrmven_ped.siDELClick(Sender: TObject);
begin
  if rom_001ID.IsNull then
     abort;

  if yesno(handle,'Excluir Item ?') =   mrNo then
  abort;

  if (rom_001ROM_QTPD.AsFloat > 0) and (edqtsp.Text = '1') then
  raise exception.Create('Produto em processo de separação !');

  rom_001.Edit;
  rom_001ROM_FLAG.Value := 1;
  rom_001.Post;
end;

procedure Tfrmven_ped.siINCClick(Sender: TObject);
begin
  rom_001.Append;
end;

procedure Tfrmven_ped.siSAVClick(Sender: TObject);
begin
  if rom_001.State in [dsEdit,dsInsert] then
     rom_001.Post;
end;

procedure Tfrmven_ped.SpeedItem1Click(Sender: TObject);
begin
  if rom_001.State in [dsEdit,dsInsert] then
     abort;

  rom_001.Append;
end;

procedure Tfrmven_ped.siALTClick(Sender: TObject);
begin
  if (rom_001ID.IsNull) or (rom_001.State in [dsEdit,dsInsert]) then
     abort;

  rom_001.Edit;
end;

procedure Tfrmven_ped.siCANClick(Sender: TObject);
begin
  rom_001.Cancel;
end;

procedure Tfrmven_ped.rom_001AfterCancel(DataSet: TDataSet);
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

procedure Tfrmven_ped.rom_001AfterEdit(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := false;
    siALT.Enabled := false;
    siDEL.Enabled := false;
    siSAV.Enabled := true;
    siCAN.Enabled := true;

    dbgrom.SetFocus
  end;
end;

procedure Tfrmven_ped.rom_001AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  tSHEILD.CommitRetaining;
  try
    rom_001.DisableControls;
    if tag = 0 then
    begin
      siINC.Enabled := true;
      siALT.Enabled := true;
      siDEL.Enabled := true;
      siSAV.Enabled := false;
      siCAN.Enabled := false;

      if (rom_001ROM_DPRO.AsString <> '') then
          BSal.Enabled := true;

      wRec := rom_001.GetBookmark;

      rom_001.Close;
      rom_001.Open;
      if (wRec = Nil) or (rom_001.Fields[0].IsNull) then rom_001.last
         else rom_001.GotoBookmark(wRec);
      rom_001.FreeBookmark(wRec);

      dbgrom.SetFocus;
      TOTAL;
    end;
  finally
    rom_001.EnableControls;
  end;
end;

procedure Tfrmven_ped.TOTAL;
var
  tcde: double;
  vfrt: double;
begin
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(ROM_TSDE),SUM(ROM_TOTA),SUM(ROM_QTDE),SUM(ROM_QTRL),SUM(ROM_VIPI) FROM PED_VEN_ITE');
    SQL.Add('WHERE  ROM_FLAG = 0');
    Open;
  end;

  if (edpdsc.Text = '') or (oTextToValor(edpdsc.Text) < 0) then
  edpdsc.Text  := '0';
  edtsde.Text  := formatfloat('R$ #,0.00',consulta_S.fields[0].AsFloat);
  edtcde.Text  := formatfloat('R$ #,0.00',consulta_S.fields[1].AsFloat);
  edtqtrl.Text := formatfloat('#,0.00'   ,consulta_S.fields[2].AsFloat)+'/'+formatfloat('0'        ,consulta_S.fields[3].AsFloat);

  if oTextToValor(edpdsc.Text) > 0 then
     if latdsc.Caption = '%' then
     edtcde.Text := formatFloat('R$ #,0.00',oTextToValor(edtsde.Text)  - (oTextToValor(edtsde.Text) * oTextToValor(edpdsc.Text)) / 100) else
     if latdsc.Caption = '$' then
        edtcde.Text    := formatFloat('R$ #,0.00',oTextToValor(edtsde.Text)  - oTextToValor(edpdsc.Text));

  if (cbstpd.Text = 'DEVOLUÇÃO') or (cbstpd.Text = 'ABATIMENTO') then
  begin
    edtsde.Text := formatfloat('R$ #,0.00',0-oTextToValor(edtsde.Text));
    edtcde.Text := formatfloat('R$ #,0.00',0-oTextToValor(edtcde.Text));
  end;

  tcde := oTextToValor(edtcde.Text);
  vfrt := oTextToValor(edvfrt.Text);
  tcde := tcde + vfrt;
  edtcde.Text := FormatFloat('R$ #,0.00',tcde);

  BSal.Enabled:= true;
end;

procedure Tfrmven_ped.edderoKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmven_ped.rom_001AfterInsert(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := false;
    siALT.Enabled := false;
    siDEL.Enabled := false;
    siSAV.Enabled := true;
    siCAN.Enabled := true;
  end;

  if frmprincipal.parametrosPAR_PGRD.AsString = '4' then
  begin
    if not dbgromROM_DCOR.Visible then
    dbgrom.FocusedColumn := 2 else
    dbgrom.FocusedColumn := 3;
  end else
  dbgrom.FocusedColumn := 1;
  dbgrom.SetFocus;
end;

procedure Tfrmven_ped.rom_001BeforeCancel(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := true;
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;
  end;

  dbgrom.SetFocus;
  if rom_001.RecordCount = 0 then
  begin
    rom_001.Close;
    rom_001.Open;
    ABORT;
  end;
end;

procedure Tfrmven_ped.edcvenValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcven.Text = '' then
  begin
    cbdven.Text := '';
    abort;
  end;

  PESQUISA_VENDEDOR('C',edcven.Text);
end;

procedure Tfrmven_ped.cbdvenChange(Sender: TObject);
begin
  if tag = 0 then
     BSal.Enabled := true;
end;

procedure Tfrmven_ped.cbdvenExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    PESQUISA_VENDEDOR('F',cbdven.Text);
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

procedure Tfrmven_ped.edcrepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcrep.Text = '' then
  begin
    cbdrep.Text := '';
    abort;
  end;

  PESQUISA_REPRESENTANTE('C',edcrep.Text);
end;

procedure Tfrmven_ped.cbdrepChange(Sender: TObject);
begin
  if tag = 0 then
     BSal.Enabled := true;
end;

procedure Tfrmven_ped.cbdrepExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    PESQUISA_REPRESENTANTE('F',cbdrep.Text);
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


procedure Tfrmven_ped.edcpagValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcpag.Text = '' then
  begin
    cbdpag.Text := '';
    abort;
  end;
  
  PESQUISA_FPAGTO('C',edcpag.Text);
end;

procedure Tfrmven_ped.cbdpagExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    PESQUISA_FPAGTO('F',cbdpag.Text);
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

procedure Tfrmven_ped.cbdpagChange(Sender: TObject);
begin
  if tag = 0 then
     BSal.Enabled := true;
end;

procedure Tfrmven_ped.edccliValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var ccli: integer;
begin
  if edccli.Text = '' then
  begin
    eddcli.Text := '';
    edcnpj.Text := '';
    edrcli.Text := '';
    abort;
  end;

  try
    ccli := strtoint(edccli.Text)
  except
    edccli.SetFocus;
    raise exception.Create('Código de cliente inválido !');
  end;

  PESQUISA_CLIENTE('I',inttostr(ccli),0,true,false);
end;

procedure Tfrmven_ped.edcnpjValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcnpj.Text = '' then
  begin
    edccli.Text := '';
    eddcli.Text := '';
    edrcli.Text := '';
    abort;
  end;
  PESQUISA_CLIENTE('C',edcnpj.Text,0,true,false);
end;

procedure Tfrmven_ped.eddcliValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if eddcli.Text = '' then
  begin
    edccli.Text := '';
    edcnpj.Text := '';
    edrcli.Text := '';
    abort;
  end;
  PESQUISA_CLIENTE('F',eddcli.Text,0,true,false);
end;

procedure Tfrmven_ped.edrcliValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edrcli.Text = '' then
  begin
    edccli.Text := '';
    edcnpj.Text := '';
    eddcli.Text := '';
    abort;
  end;
  PESQUISA_CLIENTE('R',edrcli.Text,0,true,false);
end;

procedure Tfrmven_ped.rom_001AfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
  TOTAL;
end;

procedure Tfrmven_ped.rom_001AfterOpen(DataSet: TDataSet);
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

procedure Tfrmven_ped.rom_001NewRecord(DataSet: TDataSet);
begin
  rom_001ID.Value       := 0;
  rom_001ROM_FLAG.Value := 0;
  rom_001ROM_CDOC.Value := 0;
  rom_001ROM_VDSC.Value := 0;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT MAX(ROM_ITEM) FROM PED_VEN_ITE');
    SQL.Add('WHERE  ROM_FLAG = 0');
    Open;

    if fields[0].IsNull then
    rom_001ROM_ITEM.Value := '0001'
    else
    rom_001ROM_ITEM.Value := strzero(fields[0].AsInteger + 1,4);
  end;
end;

procedure Tfrmven_ped.rom_003NewRecord(DataSet: TDataSet);
begin
  rom_003ID.Value := 0;

  with aux2_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT MAX(ROM_ITEM) FROM PED_PRG_ITE');
    Open;
    if fields[0].IsNull then
    rom_003ROM_ITEM.Value := '0001'
    else
    rom_003ROM_ITEM.Value := strzero(fields[0].AsInteger + 1,4);
  end;
end;


procedure Tfrmven_ped.dtsrom_001DataChange(Sender: TObject; Field: TField);
begin
  if (rom_001.State = dsBrowse) and (rom_001.RecNo > 0) then
  begin
    if pro_foto.Tag = 0 then
    CARREGAFOTO(rom_001ROM_FOTO.BlobSize,rom_001ROM_FOTO,rom_001);
    DISPLAY_GRID;
  end;

  dbgromROM_PREC.Visible := (rom_001ROM_VDSC.AsFloat > 0);
  dbgromROM_TSDE.Visible := (rom_001ROM_VDSC.AsFloat > 0);
end;

procedure Tfrmven_ped.rom_001ROM_VDSCValidate(Sender: TField);
begin
  if Tag = 0 then
  rom_001ROM_UNIT.Value := rom_001ROM_PREC.AsFloat - ((rom_001ROM_PREC.AsFloat*rom_001ROM_VDSC.AsFloat)/100);
end;

procedure Tfrmven_ped.rom_001ROM_QTDEValidate(Sender: TField);
begin
  rom_001ROM_TSDE.Value := RoundTO(rom_001ROM_QTDE.AsFloat  * rom_001ROM_PREC.AsFloat,-2);
  rom_001ROM_TOTA.Value := RoundTO(rom_001ROM_QTDE.AsFloat  * rom_001ROM_UNIT.AsFloat,-2);
  rom_001ROM_VIPI.Value := roundto((rom_001ROM_TOTA.AsFloat * rom_001ROM_PIPI.AsFloat) /100,-2);
  rom_001ROM_TOTA.Value := RoundTO(rom_001ROM_TOTA.AsFloat  + IFThen(RECParametros.Fantasia = 'OTIMOTEX FARDO',rom_001ROM_VIPI.AsFloat,0),-2);
end;

procedure Tfrmven_ped.BSalClick(Sender: TObject);
begin
  try
    pro_foto.Tag := 1;
    SALVA;
  finally
    pro_foto.Tag := 0;
    if BSal.Enabled then
    abort;
  end;

  Close;
end;

procedure Tfrmven_ped.BInfClick(Sender: TObject);
begin
  if edccli.Text = '' then
  begin
    edccli.SetFocus;
    raise exception.Create('Cliente não selecionado !');
  end;

  frmcad_cli_inf := tfrmcad_cli_inf.create(self);
  frmcad_cli_inf.gbinfo.Caption := 'Informaçãoes Resumidas - '+eddcli.Text;
  frmcad_cli_inf.gbinfo.Hint    := eddcli.Text;
  frmcad_cli_inf.gbinfo.Tag     := strtoint(edccli.Text);
  frmcad_cli_inf.lacred.Caption := formatfloat('R$ #,0.00########',cad_cli_crdCLI_CRED.AsFloat);
  frmcad_cli_inf.ShowModal;
end;

procedure Tfrmven_ped.edpdscValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpdsc.Text = '' then
     edpdsc.Text := '0';

  if edodsc.Text = '' then
     edodsc.Text := '0';

  edpdsc.Text := formatfloat('#,0.00########',RETORNA_REAL(edpdsc.Text));
  edodsc.Text := formatfloat('#,0.00########',RETORNA_REAL(edodsc.Text));

  if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Aplicar Desconto Normal',false) then
  begin
    if not RETORNA_LOGIN('Permissão para aplicar desconto') then
    begin
      edpdsc.Text := edodsc.Text;
      ShowMessage('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
    end;
  end
  else
  begin
    if (frmprincipal.cad_usuUSU_DESC.AsFloat < RETORNA_REAL(edpdsc.Text)) and
       (frmprincipal.cad_usuUSU_DESC.AsFloat > 0) then
    begin
      ShowMessage('Valor do desconto aplicado é superior ao seu limite autorizado !'+#13+'Limite: '+formatfloat('#,0.00########%',frmprincipal.cad_usuUSU_DESC.AsFloat));
      if not RETORNA_LOGIN('Permissão para aplicar desconto') then
      begin
        edpdsc.Text := edodsc.Text;
        ShowMessage('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
      end;
    end;
  end;
  TOTAL;
end;

procedure Tfrmven_ped.dbgromROM_UNITValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if rom_001ROM_APRC.AsString <> '1' then
  begin
    if not auto then
    begin
      if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Alterar Preço da Tabela',false) then
      begin
        if not RETORNA_LOGIN('Permissão para alterar preço de tabela') then
        Databaseerror('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
      end;
      auto := true;
    end;
  end;

  if (rom_001.State in [dsEdit,dsInsert]) and (not oEmpty(dbgrom.EditingText)) then
  begin
    rom_001ROM_PREC.Value := oTextToValor(dbgrom.EditingText,9);
    rom_001ROM_UNIT.Value := rom_001ROM_PREC.AsFloat - ((rom_001ROM_PREC.AsFloat*rom_001ROM_VDSC.AsFloat)/100);
  end;
end;

procedure Tfrmven_ped.dbgromROM_VDSCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (rom_001.State in [dsEdit,dsInsert]) and (not oEmpty(dbgrom.EditingText)) then
  rom_001ROM_VDSC.Value := oTextToValor(dbgrom.EditingText);

  if (rom_001ROM_VDSC.AsFloat > rom_001ROM_LDSC.AsFloat) and (rom_001ROM_LDSC.AsFloat > 0) then
  begin
    if not auto then
    begin
      if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Desconto',false) then
      begin
        if not RETORNA_LOGIN('Permissão para ultrapassar limite de desconto') then
        Databaseerror('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
      end;
      auto := true;
    end;
  end;
end;

procedure Tfrmven_ped.cbstpdChange(Sender: TObject);
begin
  if tag = 0 then
  BSal.Enabled := true;
end;

procedure Tfrmven_ped.cbstcoChange(Sender: TObject);
begin
  if tag = 0 then
  BSal.Enabled := true;
end;

procedure Tfrmven_ped.cbstpdExit(Sender: TObject);
var Ctrl: TWinControl;
begin
  try
    if edstpd.Text <> cbstpd.Text then
    PESQUISA_TIPO('VEN_TIPO',cbstpd.Text);
    TOTAL;
    BSal.Enabled := true;
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

procedure Tfrmven_ped.latdscClick(Sender: TObject);
begin
  if latdsc.Caption = '%' then
     latdsc.Caption := '$'
  else
     latdsc.Caption := '%';
  latdsc.Update;
end;

procedure Tfrmven_ped.cbcredChange(Sender: TObject);
begin
  if tag = 0 then
  BSal.Enabled := true;
end;

procedure Tfrmven_ped.siDESClick(Sender: TObject);
begin
  try
    pro_foto.Tag := 1;
    SALVA;
  finally
    pro_foto.Tag := 0;
    if BSal.Enabled then
    abort;
  end;

  frmven_des := tfrmven_des.create(self);
  try
    frmven_des.edcdro.text := edcdro.text;
    frmven_des.showmodal;
  finally
    freeAndNil(frmven_des);
    frmven_des.Free;
  end
end;

procedure Tfrmven_ped.rom_002AfterPost(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
end;

procedure Tfrmven_ped.rom_003AfterPost(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
end;

procedure Tfrmven_ped.edderoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BSal.Enabled := true;
end;

procedure Tfrmven_ped.rom_001ROM_TPRCValidate(Sender: TField);
begin
  if tag = 1 then
  exit;

  if rom_001ROM_TPRC.AsString = 'ATACADO - NORMAL' then
  begin
    rom_001ROM_PREC.Value := rom_001ROM_PRCA.AsFloat;
    rom_001ROM_UNIT.Value := rom_001ROM_PRCA.AsFloat;
  end
  else if rom_001ROM_TPRC.AsString = 'ATACADO - PROMOÇÃO' then
  begin
    rom_001ROM_PREC.Value := rom_001ROM_PRPA.AsFloat;
    rom_001ROM_UNIT.Value := rom_001ROM_PRPA.AsFloat;
  end
  else if rom_001ROM_TPRC.AsString = 'VAREJO - NORMAL' then
  begin
    rom_001ROM_PREC.Value := rom_001ROM_VPRC.AsFloat;
    rom_001ROM_UNIT.Value := rom_001ROM_VPRC.AsFloat;
  end
  else if rom_001ROM_TPRC.AsString = 'VAREJO - PROMOÇÃO' then
  begin
    rom_001ROM_PREC.Value := rom_001ROM_VPRO.AsFloat;
    rom_001ROM_UNIT.Value := rom_001ROM_VPRO.AsFloat;
  end
  else if rom_001ROM_TPRC.AsString = 'REPRESENTAÇÃO - NORMAL' then
  begin
    rom_001ROM_PREC.Value := rom_001ROM_RPRC.AsFloat;
    rom_001ROM_UNIT.Value := rom_001ROM_RPRC.AsFloat;
  end
  else if rom_001ROM_TPRC.AsString = 'REPRESENTAÇÃO - PROMOÇÃO' then
  begin
    rom_001ROM_PREC.Value := rom_001ROM_RPRO.AsFloat;
    rom_001ROM_UNIT.Value := rom_001ROM_RPRO.AsFloat;
  end
  else if rom_001ROM_TPRC.AsString = 'COMPRA' then
  begin
    rom_001ROM_PREC.Value := rom_001ROM_PCOM.AsFloat;
    rom_001ROM_UNIT.Value := rom_001ROM_PCOM.AsFloat;
  end
  else if rom_001ROM_TPRC.AsString = 'CUSTO' then
  begin
    rom_001ROM_PREC.Value := rom_001ROM_CUST.AsFloat  ;
    rom_001ROM_UNIT.Value := rom_001ROM_CUST.AsFloat;
  end;
end;

procedure Tfrmven_ped.dbgromCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if (AColumn = dbgromROM_QDIS) or (AColumn = dbgromROM_RLDI) or (AColumn = dbgromROM_TOTA) then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure Tfrmven_ped.rom_001BeforeDelete(DataSet: TDataSet);
begin
  if (edqtsp.Text = '1') and (Length(rom_001ROM_CDET.AsString) >= 10) then
     DataBaseError('Não é possível excluir peça que já foi separada !');
end;

procedure Tfrmven_ped.siCLOClick(Sender: TObject);
function RETORNA_PEDIDO(dero:string): string;
var
  i: word;
  dero1,dero2: string;
begin
  dero1 := '';
  for i := 1 to length(dero) do
  begin
    if (copy(dero,i,1) = '.') or (copy(dero,i,1) = '/') then
    break;

    dero1 := dero1 + trim(copy(dero,i,1));
  end;

  i := 0;
  while true do
  begin
    inc(i);
    dero2 := dero1+'/'+inttostr(i);

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('WHERE  ROM_DERO = '''+dero2+'''');
      Open;

      if fields[0].IsNull then
      begin
        if i = 1 then
        dero2 := dero1;
        break;
      end;
    end;
  end;

  result := dero2;
end;

begin
  Application.CreateForm (Tfrmimporta_geral, frmimporta_geral);

  frmimporta_geral.cbFANT.Text := frmprincipal.parametrosPAR_FANT.AsString;
  frmimporta_geral.ShowModal;

  try
    if frmimporta_geral.editado then
    begin
      edobse.Text := TRIM(frmimporta_geral.imp_cabROM_OBSE.AsString)+#13+'REFERENCIA: '+frmimporta_geral.cbTIPO.Text+' No '+frmimporta_geral.edTXT.Text;
      
      if not frmimporta_geral.imp_cab.Fields[0].IsNull then
      begin
        PESQUISA_CLIENTE('I',frmimporta_geral.imp_cabROM_CCLI.AsString,0,false,true);
        PESQUISA_VENDEDOR('C',frmimporta_geral.imp_cabROM_CVEN.AsString);
        PESQUISA_REPRESENTANTE('C',frmimporta_geral.imp_cabROM_CREP.AsString);
        PESQUISA_FPAGTO('C',frmimporta_geral.imp_cabROM_CPAG.AsString);

        cbcred.Text := frmimporta_geral.imp_cabROM_CONC.AsString;
        if (cbcred.Text = '') or (cbcred.Text = '1') then
        cbcred.Text := '1';

        if frmimporta_geral.cbTIPO.Text = 'ORÇAMENTO' then
        eddero.Text := '0' else
        begin
          if (frmimporta_geral.imp_cabROM_DERO.AsString <> '') and (frmimporta_geral.imp_cabROM_DERO.AsString <> frmimporta_geral.imp_cabID.AsString) then
          eddero.Text := RETORNA_PEDIDO(frmimporta_geral.imp_cabROM_DERO.AsString);
          if eddero.Text = frmimporta_geral.imp_cabROM_DERO.AsString then
          eddero.Text := '0';
        end;

        cbdtra.Text    := frmimporta_geral.imp_cabROM_DTRA.AsString;
        edvfrt.Text    := formatfloat('#,0.00',frmimporta_geral.imp_cabROM_VFRT.AsFloat);
        latdsc.Caption := frmimporta_geral.imp_cabROM_TDSC.AsString;
        edpdsc.Text    := formatfloat('#,0.00',frmimporta_geral.imp_cabROM_PDSC.AsFloat);
        edcdsc.Text    := formatfloat('#,0.00',frmimporta_geral.imp_cabROM_CDSC.AsFloat);
        edadsc.Text    := formatfloat('#,0.00',frmimporta_geral.imp_cabROM_ADSC.AsFloat);
        if frmimporta_geral.imp_cabROM_ADSC.AsFloat > 0 then
           edddsc.Text := 'Desconto adicional: '+formatfloat('0.00% '+cbstpd.Text,frmimporta_geral.imp_cabROM_ADSC.AsFloat);
      end;

      frmimporta_geral.imp_ite.First;
      while not frmimporta_geral.imp_ite.Eof do
      begin
        rom_001.Append;
        rom_001ROM_TPRC.Value := TRIM(cbprec.Text);
        rom_001ROM_PRCA.Value := frmimporta_geral.imp_iteROM_PRCA.Value;
        rom_001ROM_PRPA.Value := frmimporta_geral.imp_iteROM_PRPA.Value;
        rom_001ROM_VPRC.Value := frmimporta_geral.imp_iteROM_VPRC.Value;
        rom_001ROM_VPRO.Value := frmimporta_geral.imp_iteROM_VPRO.Value;
        rom_001ROM_RPRC.Value := frmimporta_geral.imp_iteROM_RPRC.Value;
        rom_001ROM_RPRO.Value := frmimporta_geral.imp_iteROM_RPRO.Value;
        rom_001ROM_PCOM.Value := frmimporta_geral.imp_iteROM_PCOM.Value;
        rom_001ROM_CUST.Value := frmimporta_geral.imp_iteROM_CUST.Value;
        rom_001ROM_PREC.Value := frmimporta_geral.imp_iteROM_PREC.Value;
        rom_001ROM_UNIT.Value := frmimporta_geral.imp_iteROM_UNIT.Value;
        rom_001ROM_VDSC.Value := frmimporta_geral.imp_iteROM_VDSC.Value;
        rom_001ROM_DPRO.Value := frmimporta_geral.imp_iteROM_DPRO.Value;
        rom_001ROM_IPRO.Value := frmimporta_geral.imp_iteROM_IPRO.Value;
        rom_001ROM_IPR2.Value := frmimporta_geral.imp_iteROM_IPR2.Value;
        rom_001ROM_CART.Value := frmimporta_geral.imp_iteROM_CART.Value;
        rom_001ROM_CPRO.Value := frmimporta_geral.imp_iteROM_CPRO.Value;
        rom_001ROM_CPR2.Value := frmimporta_geral.imp_iteROM_CPR2.Value;
        rom_001ROM_CCOR.Value := frmimporta_geral.imp_iteROM_CCOR.Value;
        rom_001ROM_DCOR.Value := frmimporta_geral.imp_iteROM_DCOR.Value;
        rom_001ROM_CCO2.Value := frmimporta_geral.imp_iteROM_CCO2.Value;
        rom_001ROM_DCO2.Value := frmimporta_geral.imp_iteROM_DCO2.Value;
        rom_001ROM_DUNI.Value := frmimporta_geral.imp_iteROM_DUNI.Value;
        rom_001ROM_FOTO.Value := frmimporta_geral.imp_iteROM_FOTO.Value;
        rom_001ROM_CBAR.Value := frmimporta_geral.imp_iteROM_CBAR.Value;
        rom_001ROM_PPRO.Value := frmimporta_geral.imp_iteROM_PPRO.Value;
        rom_001ROM_METR.Value := frmimporta_geral.imp_iteROM_METR.Value;
        rom_001ROM_PESO.Value := frmimporta_geral.imp_iteROM_PESO.Value;
        rom_001ROM_REND.Value := frmimporta_geral.imp_iteROM_REND.Value;
        rom_001ROM_PSCN.Value := frmimporta_geral.imp_iteROM_PSCN.Value;
        rom_001ROM_PSMR.Value := frmimporta_geral.imp_iteROM_PSMR.Value;
        rom_001ROM_PIPI.Value := frmimporta_geral.imp_iteROM_PIPI.Value;
        rom_001ROM_QDIS.Value := frmimporta_geral.imp_iteROM_QDIS.Value;
        rom_001ROM_RLDI.Value := frmimporta_geral.imp_iteROM_RLDI.Value;
        rom_001ROM_QTDE.Value := frmimporta_geral.imp_iteROM_QTDE.Value;
        rom_001ROM_QTRL.Value := frmimporta_geral.imp_iteROM_QTRL.Value;
        rom_001ROM_QDIS.Value := frmimporta_geral.imp_iteROM_QDIS.Value;
        rom_001ROM_RLDI.Value := frmimporta_geral.imp_iteROM_RLDI.Value;

        if frmimporta_geral.cbTIPO.Text = 'PROGRAMAÇÃO DE VENDA' then
        rom_001ROM_CDPR.Value := frmimporta_geral.imp_cabROM_CDPR.AsInteger else
        if frmimporta_geral.cbTIPO.Text = 'ORÇAMENTO' then
        rom_001ROM_CDOC.Value := frmimporta_geral.imp_cabROM_CDOC.AsInteger;

        if rom_001ROM_QTRL.AsInteger = 0 then
        begin
          if (copy(rom_001ROM_DUNI.AsString,1,1) = 'P') or (copy(rom_001ROM_DUNI.AsString,1,1) = 'C') then
          rom_001ROM_QTRL.Value := trunc(rom_001ROM_QTDE.AsFloat) else
          rom_001ROM_QTRL.Value := 1;
        end;
        
        rom_001.Post;
        frmimporta_geral.imp_ite.Next;
      end;
    end;
  finally
    freeandNil(frmimporta_geral);
    frmimporta_geral.Free;
  end;
end;

procedure Tfrmven_ped.edtsdeValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if cbstpd.Text = 'ABATIMENTO' then
  begin
    if RETORNA_REAL(edtsde.Text) > 0 then
    edtsde.Text := formatfloat('R$ #,0.00',0-RETORNA_REAL(edtsde.Text)) else
    edtsde.Text := formatfloat('R$ #,0.00',RETORNA_REAL(edtsde.Text));
    edtcde.Text := edtsde.Text;
  end;
end;

procedure Tfrmven_ped.dbgromROM_DCORValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var ccor: integer;
  var dcor: string;
begin
  try
    if (not (rom_001.State in [dsInsert,dsEdit])) or (dbgrom.EditingText = '') then
    exit;

    if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Alterar Cor',false) then
    begin
      if not RETORNA_LOGIN('Permissão para alterar cor') then
      Databaseerror('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
    end;

    dcor := dbgrom.EditingText;
    if dcor = '' then
    dcor := rom_001ROM_DCOR.AsString;

    tab_cor.Close;
    tab_cor.Params[0].Value := dcor;
    tab_cor.Open;

    if tab_cor.fields[0].IsNull then
    DataBaseError('Cor não cadastrada na tabela de cores !'+#13+'Favor entrar em contato com o administrador do sistema.');

    ccor := tab_corCOR_CCOR.AsInteger;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_PRO');
      SQL.Add('WHERE  PRO_CPRO = '''+rom_001ROM_CART.AsString+'.'+strzero(ccor,4)+'''');
      Open;
    end;

    if consulta.Fields[0].IsNull  then
    begin
      if dbgromROM_DCO2.Visible then
      DataBaseError('Produto não encontrado para a cor desejada !'+#13+
                    'Referencia '+rom_001ROM_CART.AsString+#13+
                    'Cor '+dcor) else
      CADASTRA_PRODUTO(rom_001ROM_CART.AsString,ccor);
    end;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,PRO_CPRO,PRO_CCOR,PRO_RCOR,PRO_DCOR,PRO_PCOR FROM CAD_PRO');
      SQL.Add('WHERE  PRO_CPRO = '''+rom_001ROM_CART.AsString+'.'+strzero(ccor,4)+'''');
      Open;

      if not fields[0].IsNull then
      begin
        rom_001ROM_IPR2.Value := fields[0].AsInteger;
        rom_001ROM_CPR2.Value := fields[1].AsString;
        rom_001ROM_CCO2.Value := fields[2].AsInteger;
        rom_001ROM_RCO2.Value := fields[3].AsString;
        rom_001ROM_DCO2.Value := fields[4].AsString;
        rom_001ROM_PCO2.Value := fields[5].AsString;

        rom_001ROM_IPRO.Value := fields[0].AsInteger;
        rom_001ROM_CPRO.Value := fields[1].AsString;
        rom_001ROM_CCOR.Value := fields[2].AsInteger;
        rom_001ROM_RCOR.Value := fields[3].AsString;
        rom_001ROM_DCOR.Value := fields[4].AsString;
        rom_001ROM_PCOR.Value := fields[5].AsString;
      end;
    end;
  finally
    dbgrom.SetFocus;
  end;
end;

procedure Tfrmven_ped.dbgromROM_DCO2Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var ccor: integer;
  var dcor: string;
begin
  try
    if (not (rom_001.State in [dsInsert,dsEdit])) or (dbgrom.EditingText = '') then
    exit;

    if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Alterar Tingimento',false) then
    begin
      if not RETORNA_LOGIN('Permissão para alterar cor do tingimento') then
      Databaseerror('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
    end;

    dcor := dbgrom.EditingText;
    if dcor = '' then
    dcor := rom_001ROM_DCOR.AsString;

    tab_cor.Close;
    tab_cor.Params[0].Value := dcor;
    tab_cor.Open;

    if tab_cor.fields[0].IsNull then
    begin
      tab_cor.Append;
      tab_corCOR_DCOR.Value := dcor;
      tab_corCOR_REFE.Value := copy(dcor,1,3);
      tab_cor.Post;
      IBTra.CommitRetaining;
      tab_cor.Close;
      tab_cor.Open;
    end;

    ccor := tab_corCOR_CCOR.AsInteger;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_PRO');
      SQL.Add('WHERE  PRO_CPRO = '''+rom_001ROM_CART.AsString+'.'+strzero(ccor,4)+'''');
      Open;
    end;

    if consulta.Fields[0].IsNull  then
    CADASTRA_PRODUTO(rom_001ROM_CART.AsString,ccor);

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,PRO_CPRO,PRO_CCOR,PRO_RCOR,PRO_DCOR,PRO_PCOR FROM CAD_PRO');
      SQL.Add('WHERE  PRO_CPRO = '''+rom_001ROM_CART.AsString+'.'+strzero(ccor,4)+'''');
      Open;

      if not fields[0].IsNull then
      begin
        rom_001ROM_IPR2.Value := fields[0].AsInteger;
        rom_001ROM_CPR2.Value := fields[1].AsString;
        rom_001ROM_CCO2.Value := fields[2].AsInteger;
        rom_001ROM_RCO2.Value := fields[3].AsString;
        rom_001ROM_DCO2.Value := fields[4].AsString;
        rom_001ROM_PCO2.Value := fields[5].AsString;

        if (frmprincipal.parametrosPAR_TIPO.AsString = '1') and (rom_001ROM_DCOR.AsString <> rom_001ROM_DCO2.AsString) then
        begin
          SQL.Clear;
          SQL.Add('SELECT PRO_PREC,ID FROM CAD_PRO');
          SQL.Add('WHERE  PRO_CART = '''+rom_001ROM_CART.AsString+'''');
          SQL.Add('AND    PRO_DCOR = ''COLORIDO''');
          Open;

          if not fields[0].IsNull then
          begin
            rom_001ROM_PREC.Value := fields[0].AsFloat;
            rom_001ROM_UNIT.Value := fields[0].AsFloat;

            SQL.Clear;
            SQL.Add('UPDATE CAD_PRO');
            SQL.Add('SET    PRO_PREC = '''+strtran(rom_001ROM_UNIT.AsString,',','.')+'''');
            SQL.Add('WHERE  ID = '''+rom_001ROM_IPR2.AsString+'''');
            ExecSQL;
            IBTra.CommitRetaining;
          end;
        end;
      end;
    end;
  finally
    dbgrom.SetFocus;
  end;  
end;

procedure Tfrmven_ped.dbgromROM_QTDEValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (dbgrom.EditingText <> '') and (rom_001.State in [dsInsert,dsEdit]) then
  begin
    rom_001ROM_QTDE.Value := strtofloat(dbgrom.EditingText);
    EDITAQUANTIDADE;
  end;
end;

procedure Tfrmven_ped.dbgromROM_QTRLValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
//  if frmprincipal.parametrosPAR_FANT.AsString = 'LEBIANCO' then
//  begin
    if (dbgrom.EditingText <> '') and (rom_001.State in [dsInsert,dsEdit]) then
    rom_001ROM_QTRL.Value := strtoint(dbgrom.EditingText);
    EDITAPECA;
//  end;
end;

procedure Tfrmven_ped.dbgromROM_CPROValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var
    cpro: string;
begin
  cpro := dbgrom.EditingText;

  if not (rom_001.State in [dsEdit,dsInsert]) or (cpro = '') then
  exit;

  if (frmprincipal.parametrosPAR_FANT.AsString = 'MIXXON') or
     (frmprincipal.parametrosPAR_FANT.AsString = 'SQUAFF') or
     (frmprincipal.parametrosPAR_FANT.AsString = 'FOR WHY') then
  begin
    if copy (cpro,3,1) <> '-' then
    cpro := copy(cpro,1,2)+'-'+copy(cpro,3,3);
  end;

  if (frmprincipal.parametrosPAR_TIPO.AsString = '0') or (frmprincipal.parametrosPAR_TIPO.AsString = '1') or (frmprincipal.parametrosPAR_TIPO.AsString = '4') then
  cpro := RETORNA_PRODUTO(cpro);

  if (copy(cpro,1,2) = '55') and (length(cpro) = 13) then
  begin
    cpro := copy(cpro,1,12);
    PESQUISA_PRODUTO('Barra',cpro,1);
  end else
  begin
    if frmprincipal.parametrosPAR_PGRD.AsString = '0' then
    PESQUISA_PRODUTO('Referencia',cpro,0) else
    PESQUISA_PRODUTO('Produto',cpro,0);
  end;
end;

procedure Tfrmven_ped.dbgromROM_DPROValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var
    cpro: string;
begin
 cpro := dbgrom.EditingText;

  if not (rom_001.State in [dsEdit,dsInsert])then
  exit;

  if rom_001ROM_IPRO.AsInteger > 0 then
  begin
    if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Alterar Descrição',false) then
    begin
      if not RETORNA_LOGIN('Permissão para alterar a descrição do produto') then
      Databaseerror('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
    end;
  end;
  
  if rom_001ROM_IPRO.AsInteger = 0 then
  PESQUISA_PRODUTO('Descrição',cpro,0);
end;

procedure Tfrmven_ped.dbgromKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 dbgrom.SetFocus;
                 if rom_001.State = dsBrowse then
                 dbgrom.FocusedColumn := dbgrom.FocusedColumn + 1 else
                 begin
                   if rom_001ROM_CPRO.AsString <> '' then
                   begin
                     if (dbgrom.FocusedColumn = 1) or (dbgrom.FocusedColumn = 2) or (dbgrom.FocusedColumn = 3) or
                        (dbgrom.FocusedColumn = 4)  then
                     begin
                       if frmprincipal.parametrosPAR_FANT.AsString <> 'LEBIANCO' then
                       begin
                         if (frmprincipal.parametrosPAR_TIPO.AsString = '1') and (dbgromROM_DCO2.Visible) and (dbgrom.FocusedColumn <> 3) and (rom_001ROM_DCOR.AsString = 'BRANCO') or
                            (frmprincipal.parametrosPAR_TIPO.AsString = '1') and (dbgromROM_DCO2.Visible) and (dbgrom.FocusedColumn <> 3) and (rom_001ROM_DCOR.AsString = 'CRU') or
                            (frmprincipal.parametrosPAR_TIPO.AsString = '1') and (dbgromROM_DCO2.Visible) and (dbgrom.FocusedColumn <> 3) and (rom_001ROM_DCOR.AsString = 'NATURAL') then
                         dbgrom.FocusedColumn := 3 else
                         dbgrom.FocusedColumn := RETORNA_FOCO('ROM_QTDE');
                       end else
                       begin
                         if rom_001ROM_QTDE.AsFloat > 0 then
                         dbgrom.FocusedColumn   := RETORNA_FOCO('ROM_UNIT') else
                         dbgrom.FocusedColumn   := RETORNA_FOCO('ROM_QTDE');
                       end;
                     end else
                     dbgrom.FocusedColumn := dbgrom.FocusedColumn + 1;

                     if ((dbgrom.Columns[dbgrom.FocusedAbsoluteIndex-1].Name = 'dbgromROM_QTDE') and (rom_001ROM_QTDE.AsFloat > 0) and (rom_001ROM_UNIT.AsFloat > 0)) or
                        ((dbgrom.Columns[dbgrom.FocusedAbsoluteIndex-1].Name = 'dbgromROM_QTRL') and (rom_001ROM_QTDE.AsFloat > 0) and (rom_001ROM_UNIT.AsFloat > 0)) or
                        ((dbgrom.Columns[dbgrom.FocusedAbsoluteIndex-1].Name = 'dbgromROM_UNIT') and (rom_001ROM_QTDE.AsFloat > 0) and (rom_001ROM_UNIT.AsFloat > 0)) or
                        ((dbgrom.Columns[dbgrom.FocusedAbsoluteIndex-1].Name = 'dbgromROM_RLDI') and (rom_001ROM_QTDE.AsFloat > 0) and (rom_001ROM_UNIT.AsFloat > 0)) or
                        ((dbgrom.Columns[dbgrom.FocusedAbsoluteIndex-1].Name = 'dbgromROM_VDSC') and (rom_001ROM_QTDE.AsFloat > 0) and (rom_001ROM_UNIT.AsFloat > 0))
                        then
                     begin
                       referencia := rom_001ROM_CPRO.AsString;
                       rom_001.Next;
                       if rom_001.Eof then
                       begin
                         rom_001.Append;
                         if (frmprincipal.parametrosPAR_PECA.AsString = '1') and (referencia <> '') then
                         PESQUISA_PRODUTO('Produto',referencia,0);
                       end;
                     end;
                   end;
                 end;
               end;
    VK_INSERT: if rom_001.State = dsBrowse then            siINC.Click;
    VK_DELETE: if rom_001.State = dsBrowse then            siDEL.Click;
    VK_ESCAPE: if rom_001.State = dsBrowse then close else siCAN.Click;
  end;
end;

procedure Tfrmven_ped.cbstcoExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if (copy(cbstco.Text,1,5) = 'DEVOL') or (copy(cbstco.Text,1,5) = 'ABATI') then
    begin
      cbstco.Text := '';
      raise exception.Create('Tipo de cobrança inválido !'+#13+'Para devoluções ou abatimentos utilize o campo TIPO DE PEDIDO');
    end;  
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

procedure Tfrmven_ped.rom_001BeforePost(DataSet: TDataSet);
begin
  if rom_001ROM_DPRO.AsString = '' then
  DataBaseError('Descrição do produto não pode ficar em branco !');

  if (rom_001ROM_CPRO.AsString <> '') and (rom_001ROM_QTDE.AsFloat = 0) then
  begin
    dbgrom.SetFocus;
    dbgrom.FocusedColumn := 10;

    DataBaseError('Quantidade não informada !');
  end;
end;

procedure Tfrmven_ped.tsoutShow(Sender: TObject);
begin
  edctnr.SetFocus;
end;

procedure Tfrmven_ped.edctnrValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if tag = 0 then
  BSal.Enabled := true;

end;

procedure Tfrmven_ped.edvfrtValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvfrt.Text = '' then
  edvfrt.Text := '0';

  edvfrt.Text := formatfloat('#,0.00',strtofloat(edvfrt.Text));
  TOTAL;
end;

procedure Tfrmven_ped.pro_fotoClick(Sender: TObject);
begin
  frmcad_pro_img := tfrmcad_pro_img.create(self);
  try
    frmcad_pro_img.carregaFoto2(rom_001ROM_FOTO.BlobSize,rom_001ROM_FOTO,rom_001,frmprincipal.parametros);
    frmcad_pro_img.Caption := rom_001ROM_DPRO.AsString;
    frmcad_pro_img.showmodal;
  finally
    FreeAndNil(frmcad_pro_img);
    frmcad_pro_img.free;
  end;
end;

procedure Tfrmven_ped.tab_corNewRecord(DataSet: TDataSet);
begin
  tab_corID.Value       := 0;
  tab_corCOR_STA.Value := '0';
  
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT MAX(COR_CCOR) FROM TAB_COR');
    SQL.Add('WHERE  COR_CCOR <> ''999''');
    Open;

    if fields[0].IsNull then
    tab_corCOR_CCOR.Value := 1
    else
    tab_corCOR_CCOR.Value := fields[0].AsInteger+1;
  end;
end;

procedure Tfrmven_ped.eddcadExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if (tag = 0) and (eddrom.Date <> eddcad.Date) then
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAI_LAF');
      SQL.Add('WHERE  CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',eddcad.Date)+'''');
      Open;

      if fields[0].IsNull then
      begin
        messageBox(handle,'Caixa não encontrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;
      edcdcx.Text := Fields[0].AsString;
      eddrom.Date := eddcad.Date;
    end;
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

procedure Tfrmven_ped.psq_cliAfterOpen(DataSet: TDataSet);
begin
  if psq_cliID.AsInteger > 0 then
  begin
    with cad_cli_crd do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_CLI_CRD');
      SelectSQL.Add('WHERE  CLI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SelectSQL.Add('AND    CLI_CCLI = '''+psq_cliID.AsString+'''');
      Open;
    end;

    edCLI_DCAD.Text := formatDateTime('dd/mm/yyyy',psq_cliCLI_DCAD.AsDateTime);
    edCLI_DULT.Text := formatDateTime('dd/mm/yyyy',psq_cliCLI_DULT.AsDateTime);
    edCLI_VULT.Text := formatFloat('R$ #,0.00'    ,psq_cliCLI_VULT.AsFloat);
  end;  
end;


end.
