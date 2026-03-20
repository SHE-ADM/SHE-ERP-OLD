unit pven_oca;

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
  Tfrmven_oca = class(TForm)
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
    rom_002: TIBDataSet;
    rom_001ROM_TPRC: TIBStringField;
    rom_001ROM_PCOR: TIBStringField;
    rom_001ROM_PCO2: TIBStringField;
    rom_001ROM_ABCD: TIBStringField;
    cad_pro: TIBQuery;
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
    aux2_S: TIBQuery;
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
    dbgromROM_PIPI: TdxDBGridMaskColumn;
    dbgromROM_VIPI: TdxDBGridMaskColumn;
    dbgromROM_TPRC: TdxDBGridPickColumn;
    edagrp: TdxMaskEdit;
    edbest: TdxMaskEdit;
    edfatu: TdxMaskEdit;
    rom_001ROM_UNIT: TFloatField;
    rom_001ROM_STFI: TIBStringField;
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
    rom_001ROM_CSEP: TIntegerField;
    rom_001ROM_DSEP: TIBStringField;
    edddsc: TdxMaskEdit;
    Label1: TLabel;
    edctnr: TdxMaskEdit;
    Label2: TLabel;
    edvfrt: TdxMaskEdit;
    cbdtra: TdxImageEdit;
    Label37: TLabel;
    rom_002ROM_CSEP: TIntegerField;
    rom_002ROM_DSEP: TIBStringField;
    edpacr: TdxMaskEdit;
    eddesc: TdxMaskEdit;
    edptng: TdxMaskEdit;
    rom_001ROM_APRC: TIBStringField;
    rom_001ROM_LDSC: TIBBCDField;
    rom_002ROM_APRC: TIBStringField;
    rom_002ROM_LDSC: TIBBCDField;
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
    dbgromROM_PREC: TdxDBGridMaskColumn;
    dbgromROM_TSDE: TdxDBGridCurrencyColumn;
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
    rom_002ROM_OBSE: TMemoField;
    rom_001ROM_OBSE: TMemoField;
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
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    BBot: boolean;
    procedure CADASTRA_PRODUTO(cart: string;ccor: integer);
    procedure AJUSTAFORM;
    procedure ABRE_TABELA;
    procedure TOTAL;
    procedure SALVA;
    procedure EDITAQUANTIDADE;
    procedure EDITAPECA;
    function  RETORNA_LOGIN(texto: string) : boolean;
    function  RETORNA_FOCO(campo: string): integer;
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
  frmven_oca: Tfrmven_oca;
  ID: integer;
  qtde,qtrl,tsde,tcde,adsc,pdsc: double;
  referencia: string;

implementation

uses uPrincipal, pcad_pro_con, pcad_cli,
  qven_ped, uFrmLogin, pctr_oca, pimporta_geral, pcad_pro_img;

{$R *.dfm}

procedure Tfrmven_oca.CADASTRA_PRODUTO(cart: string;ccor: integer);
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
  ibSP.ParamByName('CPRO').Value := cart+'.'+oStrZero(ccor,4);
  ibSP.ParamByName('CFOR').Value := cad_proPRO_CFOR.Value;
  ibSP.ParamByName('CBAR').Value := TRIM('5501'+oStrZero(aux.Fields[0].AsInteger+1,8));
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

procedure Tfrmven_oca.EDITAPECA;
begin
  if rom_001ROM_QTRL.AsInteger = 0 then
  rom_001ROM_QTRL.Value := 1;

  if copy(rom_001ROM_DUNI.AsString,1,1) = 'K' then
  rom_001ROM_QTDE.Value := roundto(rom_001ROM_QTRL.AsFloat*(rom_001ROM_PESO.AsFloat+rom_001ROM_PSCN.AsFloat),-2)
  else if (copy(rom_001ROM_DUNI.AsString,1,1) = 'M') then
  rom_001ROM_QTDE.Value := roundto(rom_001ROM_QTRL.AsFloat*rom_001ROM_METR.AsFloat,-2);
end;

procedure Tfrmven_oca.EDITAQUANTIDADE;
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

procedure Tfrmven_oca.PESQUISA_PRODUTO(campo,cpro:string;qtde: double);
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

     aux.SQL.Clear;
     aux.SQL.Add('SELECT CLI_PDSC,CLI_VDSC FROM CAD_CLI_DSC');
     aux.SQL.Add('WHERE  CLI_CCLI = '''+edccli.Text       +'''');
     aux.SQL.Add('AND    CLI_CPRO = '''+frmprincipal.psq_proPRO_CPRO.AsString+'''');
     aux.Open;

     if aux.Fields[0].AsFloat > 0 then
     rom_001ROM_VDSC.Value := aux.fields[0].AsFloat
     else if aux.Fields[1].AsFloat > 0 then
     rom_001ROM_UNIT.Value := aux.Fields[1].AsFloat;
     rom_001ROM_DPRO.Value := frmprincipal.psq_proPRO_DPRO.AsString;
     rom_001ROM_DUNI.Value := frmprincipal.psq_proPRO_DUNI.AsString;

     if (oTextToValor(edpacr.Text) > 0) and (rom_001ROM_PREC.AsFloat > 0) then
     rom_001ROM_UNIT.Value := rom_001ROM_UNIT.AsFloat + ((rom_001ROM_UNIT.AsFloat * oTextToValor(edpacr.Text)/100));

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

function Tfrmven_oca.RETORNA_FOCO(campo: string): integer;
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

procedure Tfrmven_oca.DISPLAY_GRID;
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

procedure Tfrmven_oca.PESQUISA_TIPO(pesq,chave: string);
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

function Tfrmven_oca.RETORNA_LOGIN(texto: string): boolean;
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

procedure Tfrmven_oca.SALVA;
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
    if oTextToValor(edtcde.Text) > 0 then
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

  try
    rom_001.DisableControls;
    while not rom_001.Eof do
    begin
      if (rom_001ROM_CPRO.AsString <> '') and (rom_001ROM_UNIT.AsFloat = 0) then
      begin
        dbgrom.SetFocus;
        dbgrom.FocusedColumn := RETORNA_FOCO('ROM_UNIT');
        messageBox(handle,PChar('Preço do produto não cadastrado !'+#13+rom_001ROM_CPRO.AsString+' - '+rom_001ROM_DPRO.AsString),PChar(Self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;
    
      if (rom_001ROM_CPRO.AsString <> '') and (rom_001ROM_UNIT.AsFloat = 0) then
      begin
        dbgrom.SetFocus;
        dbgrom.FocusedColumn := RETORNA_FOCO('ROM_UNIT');
        messageBox(handle,PChar('Preço do produto não cadastrado !'+#13+rom_001ROM_CPRO.AsString+' - '+rom_001ROM_DPRO.AsString),PChar(Self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if (rom_001ROM_CPRO.AsString <> '') and (rom_001ROM_QTDE.AsFloat <= 0) then
      begin
        dbgrom.SetFocus;
        dbgrom.FocusedColumn := RETORNA_FOCO('ROM_QTDE');
        messageBox(handle,PChar('Quantidade do produto não cadastrado !'+#13+rom_001ROM_CPRO.AsString+' - '+rom_001ROM_DPRO.AsString),PChar(Self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      rom_001.Next;
    end;
  finally
    rom_001.EnableControls;
  end;

  with consulta do
  begin
    if (edcdro.Text = '0') or (edcdro.Text = '') or (edcdro.Text = ' ') then
    begin
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_'+SLPrincipal.Values['ped_oca_cab']+',0) FROM RDB$DATABASE');
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
    SQL.Add('SELECT SUM(ROM_QTDE),SUM(ROM_QTRL) FROM PED_OCA_ITE');
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
      ibSP.StoredProcName := 'SP_PED_OCA_CAB';
      ibSP.Prepare;

      ibSP.ParamByName('ped').Value  := 'PED_OCA_CAB';
      if frmprincipal.parametrosID.AsInteger > 1 then
      ibSP.ParamByName('ped').Value  := 'PED_OCA_CAB_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

      ibSP.ParamByName('id').Value   := ID;
      ibSP.ParamByName('cdcx').Value := edcdcx.Text;
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
      ibSP.ParamByName('tsde').Value := oTextToValor(edtsde.Text);
      ibSP.ParamByName('tcde').Value := oTextToValor(edtcde.Text);

      if (cbstpd.Text = 'DEVOLUÇÃO') then
      begin
        ibSP.ParamByName('qtve').Value := 0-consulta_S.Fields[0].AsFloat;
        ibSP.ParamByName('rlve').Value := -1;
      end;

      if (cbstpd.Text = 'ABATIMENTO') and (consulta_S.Fields[0].AsFloat > 0) then
      begin
        ibSP.ParamByName('qtve').Value := 0-consulta_S.Fields[0].AsFloat;
        ibSP.ParamByName('rlve').Value := -1;
      end;

      ibSP.ParamByName('conc').Value := cbcred.Text;
      ibSP.ParamByName('vfrt').Value := oTextToValor(edvfrt.Text);
      ibSP.ParamByName('dtra').Value := cbdtra.Text;
      ibSP.ParamByName('obse').Value := edobse.Text;
      ibSP.ParamByName('sta').Value  := '0';
      ibSP.ParamByName('comi').Value := '0';

      if edfatu.Text = '1' then
      begin
        if not limite then
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
      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['ped_oca_ite']);
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
        ibSP.StoredProcName := 'SP_PED_OCA_ITE';
        ibSP.Prepare;

        ibSP.ParamByName('ped').Value  := 'PED_OCA_ITE';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('ped').Value  := 'PED_OCA_ITE_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

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
        ibSP.ParamByName('UNIT').Value := rom_001ROM_UNIT.AsFloat;
        ibSP.ParamByName('PREC').Value := rom_001ROM_PREC.AsFloat;
        if (rom_001ROM_PREC.AsFloat = 0) or (frmprincipal.parametrosPAR_FANT.AsString = 'LEBIANCO') then
        ibSP.ParamByName('PREC').Value := rom_001ROM_UNIT.AsFloat;
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
        ibSP.ExecProc;
      except
        edcdro.Text := inttostr(ID);

        IBTra.RollbackRetaining;
        messageBox(handle,'Problemas na Gravação dos Itens do Pedido !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      IBTra.CommitRetaining;
      rom_001.Next;
    end;
    IBTra.CommitRetaining;

    if ID = 0 then
    edcdro.Hint := 'Inclusão'
    else
    edcdro.Hint := 'Alteração';

    frmprincipal.Log_Eve('Vendas',LOWERCASE(cbstpd.Text),edcdro.Hint,eddero.Text,eddero.Text,LOWERCASE(eddcli.Text),AUTORIZACAO,TP_AUTORIZACAO);

    IBTra.CommitRetaining;
    BSal.Enabled := false;
    BSal.Tag     := 1;
  finally
    pTRA.StartTransaction;

    pSP.StoredProcName := 'SP_EVENT';
    pSP.Prepare;
    pSP.Params[0].AsString := 'CTR_OCA';
    pSP.ExecProc;

    pTRA.Commit;

    Tag := 0;
    rom_001.EnableControls;
  end;
end;

procedure Tfrmven_oca.PESQUISA_VENDEDOR(pesq,chave: string);
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

procedure Tfrmven_oca.PESQUISA_REPRESENTANTE(pesq,chave: string);
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

procedure Tfrmven_oca.PESQUISA_FPAGTO(pesq,chave: string);
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

procedure Tfrmven_oca.PESQUISA_CLIENTE(pesq,chave: string;cdsc: double;pevr,impo: boolean);
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
          SQL.Add('SELECT CLI_TLOV,CLI_LOGV,CLI_NUMV,CLI_COMV,CLI_BAIV,CLI_CIDV,CLI_ESTV FROM CAD_CLI');
          SQL.Add('WHERE  ID = '''+edccli.Text+'''');
          Open;

          if (fields[0].AsString <> '') and (fields[1].AsString <> '') and (fields[2].AsString <> '') and (edobse.Tag = 0) then
          begin
            edobse.Lines.Clear;
            edobse.Tag := 1;
            edobse.Lines.Add('Entrega: '+fields[0].AsString+' '+fields[1].AsString+', '+fields[2].AsString+' '+fields[3].AsString+' '+fields[4].AsString+' '+fields[5].AsString+' '+fields[6].AsString);
          end else
          begin
            if (psq_cliCLI_TLOG.AsString <> '') and (psq_cliCLI_LOGR.AsString <> '') and (psq_cliCLI_NUME.AsString <> '') and (frmprincipal.parametrosPAR_FANT.AsString = 'EXPRESSO') and (edobse.Tag = 0) then
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

procedure Tfrmven_oca.CARREGAFOTO(tam: Integer; valor: TBlobField; tab: TIbDataSet);
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

procedure Tfrmven_oca.AJUSTAFORM;
begin
  frmprincipal.pnbot.Visible := false;
  Self.top         := 0;
  Self.left        := 0;
  Self.Height      := frmprincipal.pnCustomize.Height-4;
  Self.Width       := TELA_WIDTH;

  if Screen.Height > 900 then
  pnlpri.Height := 400;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
   self.Height := screen.Height;
   self.Width  :=  screen.Width;

   if frmprincipal.pnbot.Visible then
      self.Height := self.Height - frmprincipal.pnbot.Height;
  end;
end;

procedure Tfrmven_oca.ABRE_TABELA;
begin
  if not IBTra.Active   then IBTra.StartTransaction;
  if not tSHEILD.Active then tSHEILD.StartTransaction;

  rom_001.DisableControls;
  with rom_001 do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM PED_OCA_ITE');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM PED_OCA_ITE');
    SelectSQL.Add('WHERE    ROM_FLAG = 0');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;
  rom_001.EnableControls;
end;

procedure Tfrmven_oca.FormCreate(Sender: TObject);
begin
  BBot := frmprincipal.pnbot.Visible;
  pcobs.ActivePageIndex := 0;
  auto   := false;
  limite := true;

  ABRE_TABELA;

  AUTORIZACAO    := '';
  TP_AUTORIZACAO := '';
  edcdcx.Text    := '0';
  edcdro.Text    := '0';
  eddcad.Date    := strtodate(SLPrincipal.Values['data_sistema']);
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

procedure Tfrmven_oca.FormShow(Sender: TObject);
begin
  try
    pro_foto.Tag := 1;
    rom_001.DisableControls;

    if assigned(frmctr_oca) then
    begin
      if frmctr_oca.siARO.Tag = 1 then
      begin
        try
          edobse.Tag   := 1;

          PESQUISA_CLIENTE('I',frmctr_oca.cadastroROM_CCLI.AsString,frmctr_oca.cadastroROM_CDSC.AsFloat,false,false);
          PESQUISA_VENDEDOR('C',frmctr_oca.cadastroROM_CVEN.AsString);
          PESQUISA_REPRESENTANTE('C',frmctr_oca.cadastroROM_CREP.AsString);

          cbstpd.Text := frmctr_oca.cadastroROM_STPD.AsString;
          PESQUISA_TIPO('VEN_TIPO',cbstpd.Text);

          if frmctr_oca.Tag = 0 then
          begin
            Tag := 1;

            edccli.Text := frmctr_oca.cadastroROM_CCLI.AsString;

            edcdbx.Text := inttostr(frmctr_oca.cadastroROM_CDBX.AsInteger);
            edcdpd.Text := inttostr(frmctr_oca.cadastroROM_CDRO.AsInteger);
            edcdnf.Text := inttostr(frmctr_oca.cadastroROM_CDNF.AsInteger);
            cbcred.Text := frmctr_oca.cadastroROM_CONC.AsString;
            edcdro.Text := frmctr_oca.cadastroID.AsString;
            eddero.Text := frmctr_oca.cadastroROM_DERO.AsString;
            edctnr.Text := frmctr_oca.cadastroROM_CTNR.AsString;
            edvfrt.Text := formatfloat('#,0.00',frmctr_oca.cadastroROM_VFRT.AsFloat);
            cbdtra.Text := frmctr_oca.cadastroROM_DTRA.AsString;
            edcdcx.Text := frmctr_oca.cadastroROM_CDCX.AsString;
            eddcad.Date := frmctr_oca.cadastroROM_DROM.AsDateTime;
            edhrom.Text := timetostr(frmctr_oca.cadastroROM_HROM.AsDateTime);
            edobse.Text := frmctr_oca.cadastroROM_OBSE.AsString;

            edcven.Text := frmctr_oca.cadastroROM_CVEN.AsString;
            edcrep.Text := frmctr_oca.cadastroROM_CREP.AsString;

            cbstco.Text    := frmctr_oca.cadastroROM_STCO.AsString;
            edcpag.Text    := frmctr_oca.cadastroROM_CPAG.AsString;

            latdsc.Caption := frmctr_oca.cadastroROM_TDSC.AsString;
            edpdsc.Text    := formatfloat('#,0.00',frmctr_oca.cadastroROM_PDSC.AsFloat);
            edodsc.Text    := formatfloat('#,0.00',frmctr_oca.cadastroROM_PDSC.AsFloat);
            edcdsc.Text    := formatfloat('#,0.00',frmctr_oca.cadastroROM_CDSC.AsFloat);
            edadsc.Text    := formatfloat('#,0.00',frmctr_oca.cadastroROM_ADSC.AsFloat);
            if frmctr_oca.cadastroROM_ADSC.AsFloat > 0 then
               edddsc.Text := 'Desconto adicional: '+formatfloat('0.00% '+cbstpd.Text,frmctr_oca.cadastroROM_ADSC.AsFloat);

            PESQUISA_FPAGTO('C',frmctr_oca.cadastroROM_CPAG.AsString);

            tag := 1;
            frmctr_oca.rom_ite.First;
            while not frmctr_oca.rom_ite.Eof do
            begin
              rom_001.Append;
              PESQUISA_PRODUTO('',frmctr_oca.rom_iteROM_CPRO.AsString,0);

              rom_001ROM_IPRO.Value := frmctr_oca.rom_iteROM_CPRO.AsInteger;
              rom_001ROM_IPR2.Value := frmctr_oca.rom_iteROM_CPR2.AsInteger;
              rom_001ROM_DPRO.Value := frmctr_oca.rom_iteROM_DPRO.AsString;
              rom_001ROM_CCOR.Value := frmctr_oca.rom_itePRO_CCOR.AsInteger;
              rom_001ROM_DCOR.Value := frmctr_oca.rom_itePRO_DCOR.AsString;
              rom_001ROM_DCO2.Value := frmctr_oca.rom_iteROM_DCO2.AsString;
              rom_001ROM_DUNI.Value := frmctr_oca.rom_iteROM_DUNI.AsString;

              if frmctr_oca.rom_iteROM_TPRC.AsString = '' then
              rom_001ROM_TPRC.Value := TRIM(cbprec.Items.Strings[0]) else
              rom_001ROM_TPRC.Value := TRIM(cbprec.Items.Strings[frmctr_oca.rom_iteROM_TPRC.AsInteger]);

              rom_001ROM_QTDE.Value := frmctr_oca.rom_iteROM_QTDE.AsFloat;
              rom_001ROM_QTRL.Value := frmctr_oca.rom_iteROM_QTRL.AsInteger;
              rom_001ROM_QTPD.Value := frmctr_oca.rom_iteROM_QTPD.AsFloat;
              rom_001ROM_RLPD.Value := frmctr_oca.rom_iteROM_RLPD.AsInteger;
              rom_001ROM_CDET.Value := frmctr_oca.rom_iteROM_CDET.AsString;
              rom_001ROM_PREC.Value := frmctr_oca.rom_iteROM_PREC.AsFloat;
              rom_001ROM_UNIT.Value := frmctr_oca.rom_iteROM_UNIT.AsFloat;
              rom_001ROM_VDSC.Value := frmctr_oca.rom_iteROM_VDSC.AsFloat;
              rom_001ROM_OBSE.Value := frmctr_oca.rom_iteROM_OBSE.AsString;
              rom_001.Post;
              frmctr_oca.rom_ite.Next;
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
    end;
  finally
    AJUSTAFORM;
    DISPLAY_GRID;

    with pEVE do
    begin
      UnregisterEvents;
      Events.Add('CTR_OCA');
      RegisterEvents;
    end;

    pro_foto.Tag := 0;
    rom_001.EnableControls;

    if not assigned(frmctr_oca) then
    edccli.SetFocus;
  end;  
end;

procedure Tfrmven_oca.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tfrmven_oca.BSairClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmven_oca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IBTra.Active   := false;
  tSHEILD.Active := false;
  action         := cafree;

  if frmven_oca <> nil then
  begin
    frmven_oca.Release;
    frmven_oca := nil;
  end;  
end;

procedure Tfrmven_oca.edtsdeKeyPress(Sender: TObject; var Key: Char);
begin
  if cbstpd.Text <> 'ABATIMENTO' then
     key := #0;
end;

procedure Tfrmven_oca.siDELClick(Sender: TObject);
begin
  if rom_001ID.IsNull then
     abort;

  if oYesNo(handle,'Excluir Item ?') =   mrNo then
     abort;

  rom_001.Edit;
  rom_001ROM_FLAG.Value := 1;
  rom_001.Post;
end;

procedure Tfrmven_oca.siINCClick(Sender: TObject);
begin
  rom_001.Append;
end;

procedure Tfrmven_oca.siSAVClick(Sender: TObject);
begin
  if rom_001.State in [dsEdit,dsInsert] then
     rom_001.Post;
end;

procedure Tfrmven_oca.SpeedItem1Click(Sender: TObject);
begin
  if rom_001.State in [dsEdit,dsInsert] then
     abort;

  rom_001.Append;
end;

procedure Tfrmven_oca.siALTClick(Sender: TObject);
begin
  if (rom_001ID.IsNull) or (rom_001.State in [dsEdit,dsInsert]) then
     abort;

  rom_001.Edit;
end;

procedure Tfrmven_oca.siCANClick(Sender: TObject);
begin
  rom_001.Cancel;
end;

procedure Tfrmven_oca.rom_001AfterCancel(DataSet: TDataSet);
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

procedure Tfrmven_oca.rom_001AfterEdit(DataSet: TDataSet);
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

procedure Tfrmven_oca.rom_001AfterPost(DataSet: TDataSet);
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

procedure Tfrmven_oca.TOTAL;
begin
  if tag = 1 then
     exit;

  if rom_001.State in [dsEdit,dsInsert] then
  begin
    if (rom_001ROM_DPRO.AsString = '') or (rom_001ROM_TOTA.AsFloat = 0) then
    rom_001.Cancel
    else
    rom_001.Post;
  end;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(ROM_TSDE),SUM(ROM_TOTA),SUM(ROM_QTDE),SUM(ROM_QTRL) FROM PED_OCA_ITE');
    SQL.Add('WHERE  ROM_FLAG = 0');
    Open;
  end;

  if (edpdsc.Text = '') or (oTextToValor(edpdsc.Text) < 0) then
      edpdsc.Text := '0';

  edtsde.Text := formatfloat('R$ #,0.00',consulta_S.fields[0].AsFloat);
  edtcde.Text := formatfloat('R$ #,0.00',consulta_S.fields[1].AsFloat);
  edtqtrl.Text:= formatfloat('#,0.00'   ,consulta_S.fields[2].AsFloat)+'/'+
                 formatfloat('0'        ,consulta_S.fields[3].AsFloat);

  if oTextToValor(edpdsc.Text) > 0 then
  begin
    if latdsc.Caption = '%' then
       edtcde.Text := formatFloat('R$ #,0.00',oTextToValor(edtsde.Text)  - (oTextToValor(edtsde.Text) * oTextToValor(edpdsc.Text)) / 100)
    else if latdsc.Caption = '$' then
    begin
      if oTextToValor(edtsde.Text) >= oTextToValor(edpdsc.Text) then
         edtcde.Text    := formatFloat('R$ #,0.00',oTextToValor(edtsde.Text)  - oTextToValor(edpdsc.Text));
    end;
  end;

  if strtofloat(edadsc.Text) > 0 then
  edtcde.Text := formatFloat('R$ #,0.00',oTextToValor(edtcde.Text)  - (oTextToValor(edtcde.Text) * strtofloat(edadsc.Text)) / 100);

  if (cbstpd.Text = 'DEVOLUÇÃO') or (cbstpd.Text = 'ABATIMENTO') then
  begin
    edtsde.Text := formatfloat('R$ #,0.00',0-oTextToValor(edtsde.Text));
    edtcde.Text := formatfloat('R$ #,0.00',0-oTextToValor(edtcde.Text));
  end;

  if oTextToValor(edvfrt.Text) > 0 then
  edtcde.Text := formatFloat('R$ #,0.00',oTextToValor(edtcde.Text) + oTextToValor(edvfrt.Text));
  
  BSal.Enabled:= true;

  dbgrom.SetFocus;
end;

procedure Tfrmven_oca.edderoKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmven_oca.rom_001AfterInsert(DataSet: TDataSet);
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

procedure Tfrmven_oca.rom_001BeforeCancel(DataSet: TDataSet);
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

procedure Tfrmven_oca.edcvenValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcven.Text = '' then
  begin
    cbdven.Text := '';
    abort;
  end;

  PESQUISA_VENDEDOR('C',edcven.Text);
end;

procedure Tfrmven_oca.cbdvenChange(Sender: TObject);
begin
  if tag = 0 then
     BSal.Enabled := true;
end;

procedure Tfrmven_oca.cbdvenExit(Sender: TObject);
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

procedure Tfrmven_oca.edcrepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcrep.Text = '' then
  begin
    cbdrep.Text := '';
    abort;
  end;

  PESQUISA_REPRESENTANTE('C',edcrep.Text);
end;

procedure Tfrmven_oca.cbdrepChange(Sender: TObject);
begin
  if tag = 0 then
     BSal.Enabled := true;
end;

procedure Tfrmven_oca.cbdrepExit(Sender: TObject);
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


procedure Tfrmven_oca.edcpagValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcpag.Text = '' then
  begin
    cbdpag.Text := '';
    abort;
  end;
  
  PESQUISA_FPAGTO('C',edcpag.Text);
end;

procedure Tfrmven_oca.cbdpagExit(Sender: TObject);
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

procedure Tfrmven_oca.cbdpagChange(Sender: TObject);
begin
  if tag = 0 then
     BSal.Enabled := true;
end;

procedure Tfrmven_oca.edccliValidate(Sender: TObject;
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

procedure Tfrmven_oca.edcnpjValidate(Sender: TObject;
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

procedure Tfrmven_oca.eddcliValidate(Sender: TObject;
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

procedure Tfrmven_oca.edrcliValidate(Sender: TObject;
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

procedure Tfrmven_oca.rom_001AfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
  TOTAL;
end;

procedure Tfrmven_oca.rom_001AfterOpen(DataSet: TDataSet);
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

procedure Tfrmven_oca.rom_001NewRecord(DataSet: TDataSet);
begin
  rom_001ID.Value       := 0;
  rom_001ROM_FLAG.Value := 0;
  rom_001ROM_CDOC.Value := 0;
  rom_001ROM_VDSC.Value := 0;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT MAX(ROM_ITEM) FROM PED_OCA_ITE');
    SQL.Add('WHERE  ROM_FLAG = 0');
    Open;

    if fields[0].IsNull then
    rom_001ROM_ITEM.Value := '0001'
    else
    rom_001ROM_ITEM.Value := oStrZero(fields[0].AsInteger + 1,4);
  end;
end;

procedure Tfrmven_oca.dtsrom_001DataChange(Sender: TObject; Field: TField);
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

procedure Tfrmven_oca.rom_001ROM_VDSCValidate(Sender: TField);
begin
  if tag = 0 then
  begin
    if rom_001ROM_VDSC.AsFloat > 0 then
    begin
      if rom_001ROM_PREC.AsFloat = 0 then
      DataBaseError('Produto sem preço de tabela cadastrado !');
      rom_001ROM_UNIT.Value := rom_001ROM_UNIT.AsFloat - ((rom_001ROM_UNIT.AsFloat*rom_001ROM_VDSC.AsFloat)/100);
    end;
  end;
end;

procedure Tfrmven_oca.rom_001ROM_QTDEValidate(Sender: TField);
begin
  if rom_001ROM_DPRO.AsString <> '' then
  begin
    rom_001ROM_TOTA.Value := RoundTO(rom_001ROM_QTDE.AsFloat * rom_001ROM_UNIT.AsFloat,-2);
    rom_001ROM_TSDE.Value := RoundTO(rom_001ROM_QTDE.AsFloat * rom_001ROM_UNIT.AsFloat,-2);
    if rom_001ROM_VDSC.AsFloat > 0 then
    rom_001ROM_TSDE.Value := RoundTO(rom_001ROM_QTDE.AsFloat * rom_001ROM_PREC.AsFloat,-2);
  end;

  rom_001ROM_VIPI.Value := 0;
  if rom_001ROM_PIPI.AsFloat > 0 then
  rom_001ROM_VIPI.Value := roundto((rom_001ROM_TOTA.AsFloat * rom_001ROM_PIPI.AsFloat) /100,-2);
end;

procedure Tfrmven_oca.BSalClick(Sender: TObject);
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

procedure Tfrmven_oca.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  pro_foto.Tag := 1;

  if rom_001.State in [dsEdit,dsInsert] then
  begin
    if (rom_001ROM_DPRO.AsString = '') or (rom_001ROM_TOTA.AsFloat = 0) then
    rom_001.Cancel
    else
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

procedure Tfrmven_oca.edpdscValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpdsc.Text = '' then
     edpdsc.Text := '0';

  if edodsc.Text = '' then
     edodsc.Text := '0';

  edpdsc.Text := formatfloat('#,0.00########',oTextToValor(edpdsc.Text));
  edodsc.Text := formatfloat('#,0.00########',strtofloat(edodsc.Text));

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
    if (frmprincipal.cad_usuUSU_DESC.AsFloat < oTextToValor(edpdsc.Text)) and
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

procedure Tfrmven_oca.dbgromROM_UNITValidate(Sender: TObject;
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

  if (dbgrom.EditingText <> '') and (rom_001.State in [dsInsert,dsEdit]) then
  begin
    rom_001ROM_UNIT.Value := oTextToValor(dbgrom.EditingText);
    rom_001ROM_VDSC.Value := 0;
    rom_001ROM_PREC.Value := rom_001ROM_UNIT.AsFloat;
  end;
end;

procedure Tfrmven_oca.dbgromROM_VDSCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var vdsc: double;
begin
  if not (rom_001.State in [dsEdit,dsInsert]) or (dbgrom.EditingText = '') then
  exit;

  vdsc := oTextToValor(dbgrom.EditingText);

  if (rom_001ROM_PREC.AsFloat > 0) and (vdsc = 0) then
  begin
    rom_001ROM_VDSC.Value := 0;
    rom_001ROM_UNIT.Value := rom_001ROM_PREC.AsFloat;
  end;
  
  if (vdsc > rom_001ROM_LDSC.AsFloat) and (rom_001ROM_LDSC.AsFloat > 0) then
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

procedure Tfrmven_oca.cbstpdChange(Sender: TObject);
begin
  if tag = 0 then
  BSal.Enabled := true;
end;

procedure Tfrmven_oca.cbstcoChange(Sender: TObject);
begin
  if tag = 0 then
  BSal.Enabled := true;
end;

procedure Tfrmven_oca.cbstpdExit(Sender: TObject);
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

procedure Tfrmven_oca.latdscClick(Sender: TObject);
begin
  if latdsc.Caption = '%' then
     latdsc.Caption := '$'
  else
     latdsc.Caption := '%';
  latdsc.Update;
end;

procedure Tfrmven_oca.cbcredChange(Sender: TObject);
begin
  if tag = 0 then
  BSal.Enabled := true;
end;

procedure Tfrmven_oca.rom_002AfterPost(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
end;

procedure Tfrmven_oca.rom_003AfterPost(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
end;

procedure Tfrmven_oca.edderoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BSal.Enabled := true;
end;

procedure Tfrmven_oca.rom_001ROM_TPRCValidate(Sender: TField);
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

procedure Tfrmven_oca.dbgromCustomDrawCell(Sender: TObject;
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

procedure Tfrmven_oca.rom_001BeforeDelete(DataSet: TDataSet);
begin
  if (edqtsp.Text = '1') and (Length(rom_001ROM_CDET.AsString) >= 10) then
     DataBaseError('Não é possível excluir peça que já foi separada !');
end;

procedure Tfrmven_oca.siCLOClick(Sender: TObject);
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
      SQL.Add('SELECT ID FROM '+SLPrincipal.Values['ped_oca_cab']);
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
      edobse.Text := 'REFERENCIA: '+frmimporta_geral.cbTIPO.Text+' No '+frmimporta_geral.edTXT.Text;
      
      if not frmimporta_geral.imp_cab.Fields[0].IsNull then
      begin
        PESQUISA_CLIENTE('I',frmimporta_geral.imp_cabROM_CCLI.AsString,0,false,true);
        PESQUISA_VENDEDOR('C',frmimporta_geral.imp_cabROM_CVEN.AsString);
        PESQUISA_REPRESENTANTE('C',frmimporta_geral.imp_cabROM_CREP.AsString);
        PESQUISA_FPAGTO('C',frmimporta_geral.imp_cabROM_CPAG.AsString);

        cbcred.Text := frmimporta_geral.imp_cabROM_CONC.AsString;
        if (cbcred.Text = '') or (cbcred.Text = '1') then
        cbcred.Text := '1';
        eddero.Text := '0';

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
        rom_001ROM_VDSC.Value := frmimporta_geral.imp_iteROM_VDSC.Value;
        rom_001ROM_UNIT.Value := frmimporta_geral.imp_iteROM_UNIT.Value;
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

procedure Tfrmven_oca.edtsdeValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if cbstpd.Text = 'ABATIMENTO' then
  begin
    if oTextToValor(edtsde.Text) > 0 then
    edtsde.Text := formatfloat('R$ #,0.00########',0-oTextToValor(edtsde.Text)) else
    edtsde.Text := formatfloat('R$ #,0.00########',oTextToValor(edtsde.Text));
    edtcde.Text := edtsde.Text;
  end;
end;

procedure Tfrmven_oca.dbgromROM_DCORValidate(Sender: TObject;
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
      SQL.Add('WHERE  PRO_CPRO = '''+rom_001ROM_CART.AsString+'.'+oStrZero(ccor,4)+'''');
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
      SQL.Add('WHERE  PRO_CPRO = '''+rom_001ROM_CART.AsString+'.'+oStrZero(ccor,4)+'''');
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

procedure Tfrmven_oca.dbgromROM_DCO2Validate(Sender: TObject;
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
      SQL.Add('WHERE  PRO_CPRO = '''+rom_001ROM_CART.AsString+'.'+oStrZero(ccor,4)+'''');
      Open;
    end;

    if consulta.Fields[0].IsNull  then
    CADASTRA_PRODUTO(rom_001ROM_CART.AsString,ccor);

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,PRO_CPRO,PRO_CCOR,PRO_RCOR,PRO_DCOR,PRO_PCOR FROM CAD_PRO');
      SQL.Add('WHERE  PRO_CPRO = '''+rom_001ROM_CART.AsString+'.'+oStrZero(ccor,4)+'''');
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
            SQL.Add('SET    PRO_PREC = '''+oStrTran(rom_001ROM_UNIT.AsString,',','.')+'''');
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

procedure Tfrmven_oca.dbgromROM_QTDEValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (dbgrom.EditingText <> '') and (rom_001.State in [dsInsert,dsEdit]) then
  begin
    rom_001ROM_QTDE.Value := strtofloat(dbgrom.EditingText);
    EDITAQUANTIDADE;
  end;
end;

procedure Tfrmven_oca.dbgromROM_QTRLValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
//  if frmprincipal.parametrosPAR_FANT.AsString = 'LEBIANCO' then
//  begin
    if (dbgrom.EditingText <> '') and (rom_001.State in [dsInsert,dsEdit]) then
    rom_001ROM_QTRL.Value := strtoint(dbgrom.EditingText);
    EDITAPECA;
//  end;
end;

procedure Tfrmven_oca.dbgromROM_CPROValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var
    cpro: string;
begin
  cpro := dbgrom.EditingText;

  if not (rom_001.State in [dsEdit,dsInsert]) or (cpro = '') then
  exit;

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

procedure Tfrmven_oca.dbgromROM_DPROValidate(Sender: TObject;
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

procedure Tfrmven_oca.dbgromKeyDown(Sender: TObject; var Key: Word;
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
                            (frmprincipal.parametrosPAR_TIPO.AsString = '1') and (dbgromROM_DCO2.Visible) and (dbgrom.FocusedColumn <> 3) and (rom_001ROM_DCOR.AsString = 'CRU') then
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

procedure Tfrmven_oca.cbstcoExit(Sender: TObject);
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

procedure Tfrmven_oca.rom_001BeforePost(DataSet: TDataSet);
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

procedure Tfrmven_oca.tsoutShow(Sender: TObject);
begin
  edctnr.SetFocus;
end;

procedure Tfrmven_oca.edctnrValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if tag = 0 then
  BSal.Enabled := true;

end;

procedure Tfrmven_oca.edvfrtValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvfrt.Text = '' then
  edvfrt.Text := '0';

  edvfrt.Text := formatfloat('#,0.00',strtofloat(edvfrt.Text));
  TOTAL;
end;

procedure Tfrmven_oca.pro_fotoClick(Sender: TObject);
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

procedure Tfrmven_oca.tab_corNewRecord(DataSet: TDataSet);
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

procedure Tfrmven_oca.FormDestroy(Sender: TObject);
begin
  frmprincipal.pnbot.Visible := BBot;
end;

end.











