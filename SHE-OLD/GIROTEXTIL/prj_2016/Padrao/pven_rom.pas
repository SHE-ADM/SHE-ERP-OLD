unit pven_rom;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr, StrUtils,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math, FMTBcd,
  IBEvents, rxSpeedbar, IBSQL;

type
  Tfrmven_rom = class(TForm)
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
    dtsrom_001: TDataSource;
    consulta_s: TIBQuery;
    pnlconsulta: TPanel;
    imageOPC3: TImageList;
    consulta: TIBQuery;
    aux: TIBQuery;
    aux2: TIBQuery;
    cad_pro: TIBQuery;
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
    psq_cli: TIBQuery;
    SIMNFe: TSpeedItem;
    cad_pro_est: TIBQuery;
    SpeedBar4: TSpeedBar;
    SpeedbarSection17: TSpeedbarSection;
    SpeedbarSection18: TSpeedbarSection;
    SpeedbarSection19: TSpeedbarSection;
    SpeedbarSection20: TSpeedbarSection;
    siDEL: TSpeedItem;
    siSAV: TSpeedItem;
    siCAN: TSpeedItem;
    siALT: TSpeedItem;
    SpeedItem1: TSpeedItem;
    tSHEILD: TIBTransaction;
    dbgrom: TdxDBGrid;
    dbgromROM_CPRO: TdxDBGridMaskColumn;
    dbgromROM_DCOR: TdxDBGridPickColumn;
    dbgromROM_DPRO: TdxDBGridMaskColumn;
    dbgromROM_DUNI: TdxDBGridPickColumn;
    dbgromROM_QTDE: TdxDBGridCalcColumn;
    dbgromROM_UNIT: TdxDBGridButtonColumn;
    dbgromROM_VDSC: TdxDBGridMaskColumn;
    dbgromROM_TOTA: TdxDBGridMaskColumn;
    dbgromROM_CDET: TdxDBGridMaskColumn;
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
    Label13: TLabel;
    Label28: TLabel;
    linha2: TShape;
    Shape3: TShape;
    Label7: TLabel;
    Label30: TLabel;
    Shape9: TShape;
    Label17: TLabel;
    Shape10: TShape;
    latdsc: TLabel;
    Shape29: TShape;
    Label24: TLabel;
    Shape24: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Label18: TLabel;
    Label29: TLabel;
    Shape6: TShape;
    Label19: TLabel;
    Shape8: TShape;
    cbstfi: TdxPickEdit;
    edcdro: TdxMaskEdit;
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
    cbdpag: TdxPickEdit;
    edcpag: TdxMaskEdit;
    edcven: TdxMaskEdit;
    cbcred: TdxPickEdit;
    edqtsp: TdxMaskEdit;
    edadsc: TdxMaskEdit;
    edcdsc: TdxMaskEdit;
    edtsde: TdxMaskEdit;
    edtcde: TdxMaskEdit;
    edpdsc: TdxMaskEdit;
    edqtrl: TdxMaskEdit;
    eddero: TdxMaskEdit;
    edcdpd: TdxMaskEdit;
    Label14: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label20: TLabel;
    dxPickEdit1: TdxPickEdit;
    edrcli: TdxMaskEdit;
    edqtpc: TdxMaskEdit;
    dxMaskEdit1: TdxMaskEdit;
    edcdcx: TdxMaskEdit;
    edhrom: TdxMaskEdit;
    eddcad: TdxDateEdit;
    eddcli: TdxMaskEdit;
    edcnpj: TdxMaskEdit;
    edccli: TdxMaskEdit;
    rom_001: TIBDataSet;
    rom_001ID: TIntegerField;
    rom_001ROM_ITEM: TIBStringField;
    rom_001ROM_CART: TIBStringField;
    rom_001ROM_IPRO: TIntegerField;
    rom_001ROM_CPRO: TIBStringField;
    rom_001ROM_IPR2: TIntegerField;
    rom_001ROM_CPR2: TIBStringField;
    rom_001ROM_DPRO: TIBStringField;
    rom_001ROM_CCOR: TIntegerField;
    rom_001ROM_RCOR: TIBStringField;
    rom_001ROM_DCOR: TIBStringField;
    rom_001ROM_CCO2: TIntegerField;
    rom_001ROM_RCO2: TIBStringField;
    rom_001ROM_DCO2: TIBStringField;
    rom_001ROM_DUNI: TIBStringField;
    rom_001ROM_QTDE: TIBBCDField;
    rom_001ROM_VDSC: TIBBCDField;
    rom_001ROM_TOTA: TIBBCDField;
    rom_001ROM_CDET: TIBStringField;
    rom_001ROM_CBAR: TIBStringField;
    rom_001ROM_FOTO: TBlobField;
    rom_001ROM_QDIS: TIBBCDField;
    rom_001ROM_PPRO: TIBBCDField;
    rom_001ROM_PEMB: TIBBCDField;
    rom_001ROM_CGRD: TIBStringField;
    rom_001ROM_DGRD: TIBStringField;
    rom_001ROM_FLAG: TSmallintField;
    rom_001ROM_CDOC: TIntegerField;
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
    rom_001ROM_VBCIPI: TIBBCDField;
    rom_001ROM_PIPI: TIBBCDField;
    rom_001ROM_VIPI: TIBBCDField;
    rom_001ROM_TPRC: TIBStringField;
    rom_001ROM_PCOR: TIBStringField;
    rom_001ROM_PCO2: TIBStringField;
    rom_001ROM_ABCD: TIBStringField;
    rom_002: TIBQuery;
    siCLO: TSpeedItem;
    pTRA: TIBTransaction;
    pSP: TIBStoredProc;
    pEVE: TIBEvents;
    edtest: TdxMaskEdit;
    rom_002ROM_CDRO: TIntegerField;
    rom_002ROM_IPRO: TIntegerField;
    rom_002ROM_IPR2: TIntegerField;
    rom_002ROM_DCOR: TIBStringField;
    rom_002ROM_PCOR: TIBStringField;
    rom_002ROM_DCO2: TIBStringField;
    rom_002ROM_PCO2: TIBStringField;
    rom_002ROM_DPRO: TIBStringField;
    rom_002ROM_DUNI: TIBStringField;
    rom_002ROM_TPRC: TIBStringField;
    rom_002ROM_ABCD: TIBStringField;
    rom_002ROM_METR: TIBBCDField;
    rom_002ROM_PESO: TIBBCDField;
    rom_002ROM_PSCN: TIBBCDField;
    rom_002ROM_PSMR: TIBBCDField;
    rom_002ROM_REND: TIBBCDField;
    rom_002ROM_QTDE: TIBBCDField;
    rom_002ROM_VDSC: TIBBCDField;
    rom_002ROM_PREC: TFloatField;
    rom_002ROM_UNIT: TFloatField;
    rom_001ROM_PRCA: TFloatField;
    rom_001ROM_PRPA: TFloatField;
    rom_001ROM_VPRC: TFloatField;
    rom_001ROM_VPRO: TFloatField;
    rom_001ROM_RPRC: TFloatField;
    rom_001ROM_RPRO: TFloatField;
    rom_001ROM_PCOM: TFloatField;
    rom_001ROM_CUST: TFloatField;
    rom_001ROM_UNIT: TFloatField;
    rom_001ROM_PREC: TFloatField;
    rom_001ROM_STFI: TIBStringField;
    rom_001ROM_CSEP: TIntegerField;
    rom_001ROM_DSEP: TIBStringField;
    rom_002ROM_DSEP: TIBStringField;
    cbprec: TdxPickEdit;
    edddsc: TdxMaskEdit;
    pnlfoto: TPanel;
    pro_foto: TImage;
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
    rom_001ROM_APRC: TIBStringField;
    rom_001ROM_LDSC: TIBBCDField;
    rom_001ROM_TSDE: TIBBCDField;
    rom_001ROM_OBSE: TMemoField;
    rom_002ROM_OBSE: TMemoField;
    psq_ite: TIBQuery;
    psq_iteID: TIntegerField;
    psq_iteROM_CCAB: TIntegerField;
    psq_iteROM_CDOC: TIntegerField;
    psq_iteROM_CDPR: TIntegerField;
    psq_iteROM_CDPD: TIntegerField;
    psq_iteROM_CDRO: TIntegerField;
    psq_iteROM_CDRD: TIntegerField;
    psq_iteROM_CDNF: TIntegerField;
    psq_iteROM_ITEM: TIBStringField;
    psq_iteROM_CPRO: TIntegerField;
    psq_iteROM_CPR2: TIntegerField;
    psq_iteROM_CDET: TIBStringField;
    psq_iteROM_QTDE: TIBBCDField;
    psq_iteROM_QTRL: TIntegerField;
    psq_iteROM_QTSP: TIBBCDField;
    psq_iteROM_RLSP: TIntegerField;
    psq_iteROM_QTPD: TIBBCDField;
    psq_iteROM_RLPD: TIntegerField;
    psq_iteROM_UNIT: TFloatField;
    psq_iteROM_PREC: TFloatField;
    psq_iteROM_VDSC: TIBBCDField;
    psq_iteROM_TOTA: TIBBCDField;
    psq_iteROM_FLAG: TIBStringField;
    psq_iteROM_COMI: TIBBCDField;
    psq_iteROM_DPRO: TIBStringField;
    psq_iteROM_TPRC: TIBStringField;
    psq_iteROM_ABCD: TIBStringField;
    psq_iteROM_DCOR: TIBStringField;
    psq_iteROM_PCOR: TIBStringField;
    psq_iteROM_DCO2: TIBStringField;
    psq_iteROM_PCO2: TIBStringField;
    psq_iteROM_DSEP: TIBStringField;
    psq_iteROM_DUNI: TIBStringField;
    psq_iteROM_OBSE: TMemoField;
    psq_iteROM_PESO: TIBBCDField;
    psq_itePRO_CART: TIBStringField;
    psq_itePRO_CPRO: TIBStringField;
    psq_itePRO_DPR2: TIBStringField;
    psq_itePRO_DPR3: TIBStringField;
    psq_itePRO_DPR4: TIBStringField;
    psq_itePRO_DPR5: TIBStringField;
    psq_itePRO_PPRO: TFloatField;
    psq_itePRO_METR: TIBBCDField;
    psq_itePRO_PESO: TIBBCDField;
    psq_itePRO_REND: TIBBCDField;
    psq_itePRO_PSCN: TIBBCDField;
    psq_itePRO_PSMR: TIBBCDField;
    psq_itePRO_CBAR: TIBStringField;
    psq_itePRO_FOTO: TBlobField;
    psq_itePRO_PIPI: TSmallintField;
    cad_pro_estEST_CPRO: TIntegerField;
    cad_pro_estEST_CDET: TIBStringField;
    cad_pro_estEST_CRED: TIBBCDField;
    dbgromROM_ITEM: TdxDBGridMaskColumn;
    rom_001ROM_DERO: TIBStringField;
    cad_pro_estEST_ITEM: TLargeintField;
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
    rom_001ROM_CCLF: TIBStringField;
    rom_001ROM_CFOR: TIBStringField;
    rom_001ROM_CCST: TIBStringField;
    rom_001ROM_COMP: TIBStringField;
    rom_001ROM_APRO: TIBStringField;
    SQLConsulta: TIBSQL;
    edfatu: TdxMaskEdit;
    Label37: TLabel;
    cbdtra: TdxImageEdit;
    edvfrt: TdxMaskEdit;
    Label2: TLabel;
    Label1: TLabel;
    edctnr: TdxMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtsdeKeyPress(Sender: TObject; var Key: Char);
    procedure siINCClick(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure siCANClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure rom_001AfterPost(DataSet: TDataSet);
    procedure edderoKeyPress(Sender: TObject; var Key: Char);
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
    procedure siDELClick(Sender: TObject);
    procedure dbgromKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure siCLOClick(Sender: TObject);
    procedure rom_001BeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SIMNFeClick(Sender: TObject);
  private
    { Private declarations }
    FrmStyle   : TFormStyle;
    FrmPosition: TPosition;
    procedure CALCULA_COMISSAO_CAB(id: integer);
    procedure ROMANEIO;
    procedure ABRE_TABELA;
    procedure TOTAL;
    procedure SALVA;
    procedure ITE_COMSEPARACAO(cdpd,dero: string);
    procedure ITE_SEMSEPARACAO(cdpd,dero: string);
    function  CALCULA_COMISSAO_ITE(prec: double): double;
    function  RETORNA_LOGIN : boolean;
  public
    auto: boolean;
    procedure PESQUISA_TIPO;
    procedure PESQUISA_CLIENTE(pesq,chave: string;cdsc: double);
    procedure PESQUISA_VENDEDOR(pesq,chave: string);
    procedure PESQUISA_REPRESENTANTE(pesq,chave: string);
    procedure PESQUISA_FPAGTO(pesq,chave: string);
    procedure CARREGAFOTO(tam: Integer; valor: TBlobField; tab: TIbDataSet);
  end;

var
  frmven_rom: Tfrmven_rom;
  ID: integer;
  qtde,qtrl,tsde,tcde,adsc,pdsc: double;

implementation

uses uPrincipal, pcad_pro_con, pcad_cli, uFrmLogin, pven_nfe, pctr_ped,
  pimporta_geral;

{$R *.dfm}

procedure Tfrmven_rom.FormCreate(Sender: TObject);
begin
  oOTransact(IBTra);
  auto := false;
  ABRE_TABELA;

  edcdcx.Text := '0';
  edcdro.Text := '0';
  eddcad.Date := strtodate(SLPrincipal.Values['data_sistema']);
  edcven.Text := '';
  cbdven.Text := '';
  edcrep.Text := frmprincipal.parametrosPAR_CREP.AsString;
  cbdrep.Text := '';
  cbstpd.Text := frmprincipal.cad_usuUSU_PPRI.AsString;
  cbstco.Text := frmprincipal.parametrosPAR_STCO.AsString;
  edcpag.Text := frmprincipal.parametrosPAR_CPAG.AsString;
  cbcred.Text := '1';

  try
    tag := 1;
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   COR_DCOR FROM TAB_COR');
      SQL.Add('WHERE    COR_STA = ''0''');
      SQL.Add('ORDER BY COR_DCOR');
      Open;
      while not eof do
      begin
        dbgromROM_DCOR.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   FUN_APEL FROM CAD_FUN');
      SQL.Add('WHERE    FUN_CDEP = 1');
      SQL.Add('AND      FUN_STA  = ''0''');
      SQL.Add('ORDER BY FUN_APEL');
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
        SQL.Add('WHERE  PAG_STA = ''0''');
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

procedure Tfrmven_rom.FormShow(Sender: TObject);
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
    if assigned(frmctr_ped) then
    begin
      try
        PESQUISA_CLIENTE('C',frmctr_ped.cadastroROM_CCLI.AsString,frmctr_ped.cadastroROM_CDSC.AsFloat);
        PESQUISA_VENDEDOR('C',frmctr_ped.cadastroROM_CVEN.AsString);
        PESQUISA_REPRESENTANTE('C',frmctr_ped.cadastroROM_CREP.AsString);

        if frmctr_ped.Tag = 0 then
        begin
          Tag := 1;

          ABRE_TABELA;

          edctnr.Text := frmctr_ped.cadastroROM_CTNR.AsString;
          edccli.Text := frmctr_ped.cadastroROM_CCLI.AsString;
          edcdpd.Text := frmctr_ped.cadastroID.AsString;
          eddero.Text := frmctr_ped.cadastroROM_DERO.AsString;
          cbcred.Text := frmctr_ped.cadastroROM_CONC.AsString;
          cbcred.Tag  := frmctr_ped.cadastroROM_CONC.AsInteger;
          if frmctr_ped.cadastroROM_CONC.AsInteger = 0 then
          cbcred.Tag  := 1;
          edcdcx.Text := frmctr_ped.cadastroROM_CDCX.AsString;
          eddcad.Date := strtodate(SLPrincipal.Values['data_sistema']);
          edhrom.Text := timetostr(frmctr_ped.cadastroROM_HROM.AsDateTime);
          edobse.Text := frmctr_ped.cadastroROM_OBSE.AsString;

          edcven.Text := frmctr_ped.cadastroROM_CVEN.AsString;
          edcrep.Text := frmctr_ped.cadastroROM_CREP.AsString;

          cbstpd.Text := frmctr_ped.cadastroROM_STPD.AsString;
          PESQUISA_TIPO;

          cbstfi.Text := frmctr_ped.cadastroROM_STFI.AsString;
          cbstco.Text := frmctr_ped.cadastroROM_STCO.AsString;
          edcpag.Text := frmctr_ped.cadastroROM_CPAG.AsString;

          cbdtra.Text := frmctr_ped.cadastroROM_DTRA.AsString;
          edvfrt.Text := formatfloat('#,0.00',frmctr_ped.cadastroROM_VFRT.AsFloat);

          latdsc.Caption := frmctr_ped.cadastroROM_TDSC.AsString;
          edpdsc.Text    := formatfloat('#,0.00########',frmctr_ped.cadastroROM_PDSC.AsFloat);
          edcdsc.Text    := formatfloat('#,0.00########',frmctr_ped.cadastroROM_CDSC.AsFloat);
          edadsc.Text    := formatfloat('#,0.00########',frmctr_ped.cadastroROM_ADSC.AsFloat);
          if frmctr_ped.cadastroROM_ADSC.AsFloat > 0 then
             edddsc.Text := 'Desconto adicional: '+formatfloat('0.00% '+cbstpd.Text,frmctr_ped.cadastroROM_ADSC.AsFloat);

          PESQUISA_FPAGTO('C',frmctr_ped.cadastroROM_CPAG.AsString);

          tag := 1;
          if (frmprincipal.parametrosPAR_TIPO.AsString = '0') and (edqtsp.Text = '1') then
          ITE_COMSEPARACAO(edcdpd.Text,eddero.Text) else
          ITE_SEMSEPARACAO(edcdpd.Text,eddero.Text);
        end;
      finally
        tag := 0;

        TOTAL;
        BSal.Enabled := true;
      end;
    end;
  finally
    rom_001.Close;
    rom_001.Open;
    dbgrom.SetFocus
  end;
end;

procedure Tfrmven_rom.FormActivate(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  OnActivate    := Nil;
  Tag := 0;
end;

procedure Tfrmven_rom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnClose := Nil;
  Screen.Cursor := crAppStart;

  pEve.UnRegisterEvents;
  Action := caFree;
end;

procedure Tfrmven_rom.FormDestroy(Sender: TObject);
begin
  OnDestroy := Nil;
  oFTransact(IBTra);
  Screen.Cursor := crDefault;
  frmven_rom := Nil;
end;

procedure Tfrmven_rom.FormKeyDown(Sender: TObject; var Key: Word;
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
       121      : if BSal.Enabled then BSal.Click;
  end;
end;

procedure Tfrmven_rom.FormPaint(Sender: TObject);
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

procedure Tfrmven_rom.FormResize(Sender: TObject);
begin
  if frmven_rom <> Nil then
  Paint;
end;

procedure Tfrmven_rom.ITE_COMSEPARACAO(cdpd,dero: string);
begin
  with cad_pro_est do
  begin
    SQL.Clear;
    SQL.Add('SELECT EST_CPRO,EST_CDET,EST_CRED,COUNT(*) "EST_ITEM"');
    if edtest.Text = 'DEFEITO' then
    SQL.Add('FROM  '+SLPrincipal.Values['cad_pro_def']+' "CAD_PRO_EST"') else
    SQL.Add('FROM  '+SLPrincipal.Values['cad_pro_est']+' "CAD_PRO_EST"');
    SQL.Add('WHERE EST_CDPD = '''+cdpd+'''');
    SQL.Add('AND   EST_FLAG <> ''V''');
    SQL.Add('GROUP BY EST_CPRO,EST_CDET,EST_CRED');
    Open;
  end;

  while not cad_pro_est.Eof do
  begin
    if cad_pro_estEST_ITEM.AsInteger = 1 then
    begin
      with psq_ite do
      begin
        SQL.Clear;
        SQL.Add('SELECT   PED_VEN_ITE.*,CAD_PRO.PRO_CART,PRO_CPRO,PRO_DPR2,PRO_DPR3,PRO_DPR4,PRO_DPR5,PRO_PPRO,PRO_METR,PRO_PESO,PRO_REND,PRO_PSCN,PRO_PSMR,PRO_FOTO,PRO_PIPI,PRO_CBAR');
        SQL.Add('FROM     CAD_PRO,CAD_PRO_IMG,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
        SQL.Add('WHERE    PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
        SQL.Add('AND      CAD_PRO_IMG.PRO_CART = CAD_PRO.PRO_CART');
        SQL.Add('AND      PED_VEN_ITE.ROM_CCAB = '''+cdpd+'''');
        SQL.Add('AND      PED_VEN_ITE.ROM_CPRO = '''+cad_pro_estEST_CPRO.AsString+'''');
        SQL.Add('ORDER BY PED_VEN_ITE.ROM_ITEM');
        Open;
      end;

      rom_001.Append;

      with consulta_S do
      begin
        SQL.Clear;
        SQL.Add('SELECT MAX(ROM_ITEM) FROM ROM_ITE');
        Open;

        if fields[0].IsNull then
        rom_001ROM_ITEM.Value := '0001'
        else
        rom_001ROM_ITEM.Value := oStrZero(fields[0].AsInteger + 1,4);
      end;

      rom_001ROM_DERO.Value := dero;
      rom_001ROM_CDRO.Value := psq_iteROM_CCAB.AsInteger;
      rom_001ROM_CDPD.Value := psq_iteID.AsInteger;
      rom_001ROM_IPRO.Value := psq_iteROM_CPRO.AsInteger;
      rom_001ROM_IPR2.Value := psq_iteROM_CPR2.AsInteger;
      rom_001ROM_CART.Value := psq_itePRO_CART.AsString;
      rom_001ROM_CPRO.Value := psq_itePRO_CPRO.AsString;
      rom_001ROM_DPRO.Value := psq_iteROM_DPRO.AsString;
      rom_001ROM_DCOR.Value := psq_iteROM_DCOR.AsString;
      rom_001ROM_DUNI.Value := psq_iteROM_DUNI.AsString;
      rom_001ROM_FOTO.Value := psq_itePRO_FOTO.Value;
      rom_001ROM_CBAR.Value := psq_itePRO_CBAR.AsString;
      rom_001ROM_PIPI.Value := psq_itePRO_PIPI.AsFloat;
      rom_001ROM_CDET.Value := cad_pro_estEST_CDET.AsString;
      rom_001ROM_PPRO.Value := psq_itePRO_PPRO.AsFloat;
      rom_001ROM_METR.Value := psq_itePRO_METR.AsFloat;
      rom_001ROM_PESO.Value := psq_itePRO_PESO.AsFloat;
      rom_001ROM_REND.Value := psq_itePRO_REND.AsFloat;
      rom_001ROM_PSCN.Value := psq_itePRO_PSCN.AsFloat;
      rom_001ROM_PSMR.Value := psq_itePRO_PSMR.AsFloat;
      rom_001ROM_DSEP.Value := psq_iteROM_DSEP.AsString;
      rom_001ROM_TPRC.Value := TRIM(cbprec.Text);
      rom_001ROM_QTDE.Value := cad_pro_estEST_CRED.AsFloat;
      rom_001ROM_QTPD.Value := cad_pro_estEST_CRED.AsFloat;
      rom_001ROM_QTRL.Value := 1;

      if (copy(rom_001ROM_DUNI.AsString,1,1) = 'P') or (copy(rom_001ROM_DUNI.AsString,1,1) = 'C') then
      rom_001ROM_QTRL.Value := trunc(rom_001ROM_QTDE.AsFloat);

      rom_001ROM_PREC.Value := psq_iteROM_PREC.AsFloat;
      rom_001ROM_UNIT.Value := psq_iteROM_UNIT.AsFloat;

      if copy(rom_001ROM_CPRO.AsString,1,2) <> 'EX' then
      begin
        if cbcred.Text <> '0' then
        begin
          if (rom_001ROM_PIPI.AsFloat > 0) and (frmprincipal.parametrosPAR_FANT.AsString = 'LEBIANCO') then
          begin
            rom_001ROM_PREC.Value := rom_001ROM_UNIT.AsFloat/cbcred.Tag;
            rom_001ROM_UNIT.Value := rom_001ROM_UNIT.AsFloat/((rom_001ROM_PIPI.AsFloat/100)+1);
          end;
          rom_001ROM_UNIT.Value   := rom_001ROM_UNIT.AsFloat/cbcred.Tag;
        end;
      end;

      rom_001ROM_UNIT.AsString := oTextToValor(rom_001ROM_UNIT.AsString);
      rom_001ROM_PREC.AsString := oTextToValor(rom_001ROM_PREC.AsString);

      if (cbcred.Tag >= 2) and (cbcred.Tag <= 5) and (frmprincipal.parametrosPAR_DCRD.AsString = '1') then
      begin
        case cbcred.Tag of
          2: rom_001ROM_DPRO.Value := psq_itePRO_DPR2.AsString;
          3: rom_001ROM_DPRO.Value := psq_itePRO_DPR3.AsString;
          4: rom_001ROM_DPRO.Value := psq_itePRO_DPR4.AsString;
          5: rom_001ROM_DPRO.Value := psq_itePRO_DPR5.AsString;
        end;
      end;

      rom_001.Post;
    end;
    cad_pro_est.Next;
  end;
end;

procedure Tfrmven_rom.ITE_SEMSEPARACAO(cdpd,dero: string);
var
  BRet: boolean;
begin
  with psq_ite do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PED_VEN_ITE.*,CAD_PRO.PRO_CART,PRO_CPRO,PRO_DPR2,PRO_DPR3,PRO_DPR4,PRO_DPR5,PRO_PPRO,PRO_METR,PRO_PESO,PRO_REND,PRO_PSCN,PRO_PSMR,PRO_FOTO,PRO_PIPI,PRO_CBAR');
    SQL.Add('FROM     CAD_PRO,CAD_PRO_IMG,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
    SQL.Add('WHERE    PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
    SQL.Add('AND      CAD_PRO_IMG.PRO_CART = CAD_PRO.PRO_CART');
    SQL.Add('AND      PED_VEN_ITE.ROM_CCAB = '''+cdpd+'''');
    SQL.Add('ORDER BY PED_VEN_ITE.ROM_ITEM');
    Open;
  end;

  while not psq_ite.Eof do
  begin
    BRet := true;
    if  (edqtsp.Text = '1') and (psq_iteROM_QTPD.AsFloat <= 0) then
    BRet := false;

    if BRet then
    begin
      rom_001.Append;
      rom_001ROM_DERO.Value := dero;
      rom_001ROM_ITEM.Value := psq_iteROM_ITEM.Value;
      rom_001ROM_CDRO.Value := psq_iteROM_CCAB.AsInteger;
      rom_001ROM_CDPD.Value := psq_iteID.AsInteger;
      rom_001ROM_IPRO.Value := psq_iteROM_CPRO.Value;
      rom_001ROM_IPR2.Value := psq_iteROM_CPR2.Value;
      rom_001ROM_CART.Value := psq_itePRO_CART.Value;
      rom_001ROM_CPRO.Value := psq_itePRO_CPRO.Value;
      rom_001ROM_DPRO.Value := psq_iteROM_DPRO.Value;
      rom_001ROM_DCOR.Value := psq_iteROM_DCOR.Value;
      rom_001ROM_DUNI.Value := psq_iteROM_DUNI.Value;
      rom_001ROM_FOTO.Value := psq_itePRO_FOTO.Value;
      rom_001ROM_CBAR.Value := psq_itePRO_CBAR.Value;
      rom_001ROM_PIPI.Value := psq_itePRO_PIPI.Value;
      rom_001ROM_CDET.Value := psq_iteROM_CDET.Value;
      rom_001ROM_PPRO.Value := psq_itePRO_PPRO.Value;
      rom_001ROM_METR.Value := psq_itePRO_METR.Value;
      rom_001ROM_PESO.Value := psq_itePRO_PESO.Value;
      rom_001ROM_REND.Value := psq_itePRO_REND.Value;
      rom_001ROM_PSCN.Value := psq_itePRO_PSCN.Value;
      rom_001ROM_PSMR.Value := psq_itePRO_PSMR.Value;
      rom_001ROM_DSEP.Value := psq_iteROM_DSEP.Value;
      rom_001ROM_TPRC.Value := TRIM(cbprec.Text);
      rom_001ROM_QTDE.Value := psq_iteROM_QTDE.Value;
      rom_001ROM_QTPD.Value := psq_iteROM_QTPD.Value;
      rom_001ROM_QTRL.Value := psq_iteROM_QTRL.Value;

      if rom_001ROM_QTPD.AsFloat > 0 then
      begin
        rom_001ROM_QTDE.Value := psq_iteROM_QTPD.Value;
        rom_001ROM_QTRL.Value := psq_iteROM_RLPD.Value;
      end;

      rom_001ROM_PREC.Value := psq_iteROM_PREC.AsFloat;
      rom_001ROM_UNIT.Value := psq_iteROM_UNIT.AsFloat;

      if Pos(cbcred.Text,'01') = 0 then
         rom_001ROM_UNIT.Value   := rom_001ROM_UNIT.AsFloat/cbcred.Tag;

      if (cbcred.Tag >= 2) and (cbcred.Tag <= 5) and (frmprincipal.parametrosPAR_DCRD.AsString = '1') then
      begin
        case cbcred.Tag of
          2: rom_001ROM_DPRO.Value := psq_itePRO_DPR2.AsString;
          3: rom_001ROM_DPRO.Value := psq_itePRO_DPR3.AsString;
          4: rom_001ROM_DPRO.Value := psq_itePRO_DPR4.AsString;
          5: rom_001ROM_DPRO.Value := psq_itePRO_DPR5.AsString;
        end;
      end;
      rom_001.Post;
    end;
    psq_ite.Next;
  end;
end;

procedure Tfrmven_rom.CALCULA_COMISSAO_CAB(id: integer);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(ROM_UNIT*ROM_COMI)/SUM(ROM_UNIT)');
    SQL.Add('FROM '+SLPrincipal.Values['ped_ven_ite']);
    SQL.Add('WHERE  ROM_CCAB = '''+inttostr(id)+'''');
    SQL.Add('AND    ROM_COMI > 0');
    Open;
  end;

  with aux do
  begin
    SQL.Clear;
    SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('SET  ROM_COMI = '''+oStrTran(formatfloat('0.00',roundto(consulta.Fields[0].AsFloat,-2)),',','.')+'''');
    SQL.Add('WHERE ID = '''+inttostr(id)+'''');
    ExecSQL;
  end;
end;

function Tfrmven_rom.CALCULA_COMISSAO_ITE(prec: double): double;
var
  comi: double;
begin
  comi := 0;
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT PRO_CPRO,CAT_PRCI,CAT_PRCF,CAT_COMI');
    SQL.Add('FROM   CAD_PRO,CAD_PRO_CAC,CAD_PRO_CAI');
    SQL.Add('WHERE  CAD_PRO_CAC.ID       = CAD_PRO_CAI.CAT_CCAB');
    SQL.Add('AND    CAD_PRO.PRO_CCAT     = CAD_PRO_CAC.ID');
    SQL.Add('AND    CAD_PRO_CAC.CAT_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    SQL.Add('AND    CAD_PRO.ID           = '''+rom_001ROM_IPRO.AsString+'''');
    Open;

    while not eof do
    begin
      if (prec >= fields[1].AsFloat) and
         (prec <= fields[2].AsFloat) then
      begin
        comi := fields[3].AsFloat;
        break;
      end;
      next;
    end;

    if comi = 0 then
    begin
      Last;
      if prec > fields[2].AsFloat then
      comi := fields[3].AsFloat;
    end;

    if copy(fields[0].AsString,1,2) = 'EX' then
    comi := 0;

    if (comi = 0) and (copy(fields[0].AsString,1,2) <> 'EX') then
    begin
      SQL.Clear;
      SQL.Add('SELECT REP_COMI FROM CAD_REP');
      SQL.Add('WHERE  ID = '''+edcrep.Text+'''');
      Open;
      comi := fields[0].AsFloat;
    end;
  end;
  result := comi;
end;

procedure Tfrmven_rom.ROMANEIO;
function RETORNA_ITEM(ID: integer): string;
var
  item: string;
begin
  item := '0001';

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT MAX(ROM_ITEM) FROM '+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
    SQL.Add('WHERE  ROM_CCAB = '''+inttostr(ID)+'''');
    Open;

    if not fields[0].IsNull then
    item := oStrZero(fields[0].AsInteger + 1,4);
  end;

  result := item;
end;

function RETORNA_PEDIDO: string;
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
      SQL.Add('SELECT ID FROM '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('WHERE  ROM_DERO = '''+dero2+'''');
      Open;

      if fields[0].IsNull then
      break;
    end;
  end;

  result := dero2;
end;

begin
  with rom_001 do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM ROM_ITE');
    SelectSQL.Add('WHERE    ROM_FLAG = 1');
    SelectSQL.Add('ORDER BY ROM_CPRO');
    Open;

    while not rom_001.Eof do
    begin
      rom_001.Edit;
      rom_001ROM_UNIT.Value := rom_001ROM_UNIT.AsFloat*strtoint(cbcred.Text);
      rom_001.Post;
      rom_001.Next;
    end;
  end;

  if rom_001.Fields[0].IsNull then
  exit;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(ROM_TOTA),SUM(ROM_QTPD),SUM(ROM_QTRL) FROM ROM_ITE');
    SQL.Add('WHERE  ROM_FLAG = 1');
    Open;
  end;

  adsc := oTextToValor(edadsc.Text);
  pdsc := oTextToValor(edpdsc.Text);
  if (edpdsc.Text = '') or (oTextToValor(edpdsc.Text) < 0) then
  pdsc := 0;

  qtde := consulta_S.fields[1].AsFloat;
  qtrl := consulta_S.fields[2].AsInteger;
  tsde := consulta_S.fields[0].AsFloat;
  tcde := consulta_S.fields[0].AsFloat;

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
    SQL.Add('SELECT GEN_ID(ID_NO_'+SLPrincipal.Values['ped_ven_cab']+',0) FROM RDB$DATABASE');
    Open;
    ID := fields[0].AsInteger+1;
  end;

  ibSP.StoredProcName := 'SP_PED_VEN_CAB';
  ibSP.Prepare;

  ibSP.ParamByName('ped').Value  := 'PED_VEN_CAB';
  if frmprincipal.parametrosID.AsInteger > 1 then
  ibSP.ParamByName('ped').Value  := 'PED_VEN_CAB_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

  ibSP.ParamByName('id').Value   := 0;
  ibSP.ParamByName('cdcx').Value := edcdcx.Text;
//  ibSP.ParamByName('cdrd').Value := 0;
//  ibSP.ParamByName('derd').Value := '';
  ibSP.ParamByName('dero').Value := RETORNA_PEDIDO;
  ibSP.ParamByName('ctnr').Value := edctnr.Text;
  ibSP.ParamByName('stpd').Value := cbstpd.Text;
  ibSP.ParamByName('stco').Value := cbstco.Text;
  ibSP.ParamByName('stfi').Value := 'PENDENTE';
  ibSP.ParamByName('drom').Value := eddcad.Date;
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
  ibSP.ParamByName('vfrt').Value := oTextToValor(edvfrt.Text);
  ibSP.ParamByName('dtra').Value := cbdtra.Text;
  ibSP.ParamByName('obse').Value := 'CONTINUADO DO ROMANEIO No '+eddero.Text;
  ibSP.ParamByName('sta').Value  := '0';
  ibSP.ParamByName('comi').Value := '0';
  ibSP.ExecProc;

  rom_002.Close;
  rom_002.Open;
  while not rom_002.Eof do
  begin
    ibSP.StoredProcName := 'SP_PED_VEN_ITE';
    ibSP.Prepare;

    ibSP.ParamByName('ped').Value  := 'PED_VEN_ITE';
    if frmprincipal.parametrosID.AsInteger > 1 then
    ibSP.ParamByName('ped').Value  := 'PED_VEN_ITE_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

    ibSP.ParamByName('ID').Value   := 0;
    ibSP.ParamByName('CCAB').Value := ID;
    ibSP.ParamByName('ITEM').Value := RETORNA_ITEM(ID);
    ibSP.ParamByName('CPRO').Value := rom_002ROM_IPRO.AsInteger;
    ibSP.ParamByName('CPR2').Value := rom_002ROM_IPR2.AsInteger;
    ibSP.ParamByName('DPRO').Value := rom_002ROM_DPRO.AsString;
    ibSP.ParamByName('DUNI').Value := rom_002ROM_DUNI.AsString;
    ibSP.ParamByName('QTDE').Value := rom_002ROM_QTDE.AsFloat;
    ibSP.ParamByName('QTRL').Value := qtrl;
    ibSP.ParamByName('QTPD').Value := 0;
    ibSP.ParamByName('RLPD').Value := 0;
    ibSP.ParamByName('UNIT').Value := rom_002ROM_UNIT.AsFloat;
    ibSP.ParamByName('PREC').Value := rom_002ROM_PREC.AsFloat;
    ibSP.ParamByName('VDSC').Value := rom_002ROM_VDSC.AsFloat;
    ibSP.ParamByName('TOTA').Value := ROUNDTO(rom_002ROM_QTDE.AsFloat*rom_002ROM_UNIT.AsFloat,-2);
    ibSP.ParamByName('CDET').Value := '';
    ibSP.ParamByName('DSEP').Value := rom_002ROM_DSEP.AsString;
    ibSP.ParamByName('COMI').Value := CALCULA_COMISSAO_ITE(rom_002ROM_UNIT.AsFloat);
    ibSP.ParamByName('TPRC').Value := inttostr(cbprec.Items.IndexOf(TRIM(rom_002ROM_TPRC.AsString)));
    ibSP.ParamByName('ABCD').Value := rom_002ROM_ABCD.AsString;
    ibSP.ParamByName('OBSE').Value := rom_002ROM_OBSE.AsString;
    ibSP.ParamByName('DCOR').Value := rom_002ROM_DCOR.AsString;
    ibSP.ParamByName('PCOR').Value := rom_002ROM_PCOR.AsString;
    ibSP.ParamByName('DCO2').Value := rom_002ROM_DCO2.AsString;
    ibSP.ParamByName('PCO2').Value := rom_002ROM_PCO2.AsString;
    ibSP.ExecProc;

    with frmprincipal.sp_sql do
    begin
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_ite']);
      SQL.Add('SET    ROM_QTPD = 0,');
      SQL.Add('       ROM_RLPD = 0');
      SQL.Add('WHERE  ROM_CCAB = '''+rom_002ROM_CDRO.AsString+'''');
      SQL.Add('AND    ROM_CPRO = '''+rom_002ROM_IPRO.AsString+'''');

      ibSP.StoredProcName := 'SP_SQL';
      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    rom_002.Next;
  end;

  rom_001.First;
  while not rom_001.Eof do
  begin
    with frmprincipal.sp_sql do
    begin
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_est']);
      SQL.Add('SET    EST_CDPD = '''+inttostr(ID)+'''');
      SQL.Add('WHERE  EST_CDET = '''+rom_001ROM_CDET.AsString+'''');
      SQL.Add('AND    EST_CRED > 0 AND EST_FLAG = ''E''');

      ibSP.StoredProcName := 'SP_SQL';
      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_res']);
      SQL.Add('WHERE  EST_CDPD = '''+edcdpd.Text+'''');
      SQL.Add('AND    EST_CPRO = '''+rom_001ROM_IPRO.AsString+'''');

      ibSP.StoredProcName := 'SP_SQL';
      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    rom_001.Next;
  end;

  CALCULA_COMISSAO_CAB(id);
  IBTra.CommitRetaining;

  frmprincipal.Log_Eve('Vendas','Pedidos','Inclusão',RETORNA_PEDIDO,RETORNA_PEDIDO,LOWERCASE(eddcli.Text),'','');
  IBTra.CommitRetaining;
end;

procedure Tfrmven_rom.PESQUISA_TIPO;
begin
  with aux do
  begin
    SQL.Clear;
    SQL.Add('SELECT VEN_FATU,VEN_PDSC,VEN_STVE,VEN_DPAG,VEN_QTPC,VEN_PREC,VEN_QTSP,VEN_TEST FROM TAB_PED');
    SQL.Add('WHERE  VEN_TIPO = '''+cbstpd.Text+'''');
    Open;

    edfatu.Text := fields[0].AsString;
    edtest.Text := fields[7].AsString;
    cbprec.Text := fields[5].AsString;
    edqtsp.Text := fields[6].AsString;
    edadsc.Text := formatfloat('0.00',fields[1].AsFloat);
    edddsc.Text := '';

    if fields[1].AsFloat > 0 then
       edddsc.Text := 'Desconto adicional: '+formatfloat('0.00% '+cbstpd.Text,fields[1].AsFloat);

    if fields[0].AsString = '0' then
    begin
      cbdpag.Text := 'SEM COBRANÇA';
      cbstco.Text := 'SEM COBRANÇA';
    end
    else
    begin
      PESQUISA_FPAGTO('F',fields[3].AsString);
      cbstco.Text := fields[2].AsString;
    end;
  end;
end;

function Tfrmven_rom.RETORNA_LOGIN: boolean;
var
  BRet: boolean;
begin
  frmlogin := TFrmlogin.Create(self);
  frmlogin.Caption := 'Permissão para alterar preço';
  try
    frmlogin.Tag := 2;
    frmlogin.ShowModal;
  finally
    if frmlogin.cad_usuUSU_CUSU.AsString = '' then
    BRet := false
    else
    BRet := (frmprincipal.ACESSO(frmlogin.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Programações','Autorizar Outros Usuários',false));

    if frmlogin.cad_usuUSU_ADM.AsString = '1' then
       BRet := true;

    freeAndNil(frmlogin);
    frmlogin.Free;
  end;

  result := BRet;
end;

procedure Tfrmven_rom.SALVA;
var
  rlve,ID: integer;
  qtve: double;
  best: boolean;
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

  if rom_001.Fields[0].IsNull then
  begin
    messageBox(handle,'Pedido sem itens selecionados !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  try
    rom_001.DisableControls;
    while not rom_001.Eof do
    begin
      if copy(rom_001ROM_DPRO.AsString,1,9) = 'DESCRIÇÂO' then
      begin
        dbgrom.FocusedColumn := 3;
        messageBox(handle,PChar('Descrição do produto não informado para o tipo de crédito selecionado'+#13+'Item: '+rom_001ROM_ITEM.AsString+' - Referencia: '+rom_001ROM_CPRO.AsString),PChar(Self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if (rom_001ROM_CPRO.AsString <> '') and (rom_001ROM_UNIT.AsFloat = 0) then
      begin
        dbgrom.FocusedColumn := 7;
        messageBox(handle,PChar('Preço do produto não cadastrado !'+#13+rom_001ROM_CPRO.AsString+' - '+rom_001ROM_DPRO.AsString),PChar(Self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if (rom_001ROM_CPRO.AsString <> '') and (rom_001ROM_QTDE.AsFloat <= 0) then
      begin
        dbgrom.FocusedColumn := 6;
        messageBox(handle,PChar('Quantidade do produto não cadastrado !'+#13+rom_001ROM_CPRO.AsString+' - '+rom_001ROM_DPRO.AsString),PChar(Self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;
      rom_001.Next;
    end;
  finally
    rom_001.EnableControls;
  end;

  if copy(edtcde.Text,1,1) = '-' then
  begin
    messageBox(handle,'Pedido do cliente não pode ser negativo !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if cbstpd.Text = '' then
  begin
    messageBox(handle,'Tipo de pedido não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if cbstco.Text = '' then
  begin
    messageBox(handle,'Tipo de cobrança não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;
  
  if edccli.Text = '' then
  begin
    messageBox(handle,'Cliente não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if edcven.Text = '' then
  begin
    messageBox(handle,'Vendedor não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if edcrep.Text = '' then
  begin
    messageBox(handle,'Representante não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if edcpag.Text = '' then
  begin
    messageBox(handle,'Forma de pagamento não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  with tab_pag do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM TAB_PAG');
    SQL.Add('WHERE  PAG_DPAG = '''+cbdpag.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      messageBox(handle,'Condição de pagamento não cadastrada !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if (cbstco.Text = 'VALE') then
    begin
      if (tab_pagPAG_D001.AsInteger = 0) and (tab_pagPAG_D002.AsInteger = 0) then
      begin
        messageBox(handle,'Condição de pagamento inválida para esse tipo de cobrança !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;
    end;

    if ((cbstco.Text = 'DINHEIRO') and (tab_pagPAG_D001.AsInteger >  1)) or
       ((cbstco.Text = 'DÉBITO')   and (tab_pagPAG_D001.AsInteger <> 0)) or
       ((cbstco.Text = 'DEBITO')   and (tab_pagPAG_D001.AsInteger <> 0)) or
       ((cbstco.Text = 'CHEQUE A VISTA')   and (tab_pagPAG_D001.AsInteger <> 0)) or
       ((cbstco.Text = 'VALE')   and (tab_pagPAG_D001.AsInteger = 0)) then
    begin
      messageBox(handle,'Tipo de cobrança inválida para essa condição de pagamento !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;

  if psq_cli.Fields[0].IsNull then
  begin
    messageBox(handle,'Cliente não cadastrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT VEN_BEST FROM TAB_PED');
    SQL.Add('WHERE  VEN_TIPO = '''+cbstpd.Text+'''');
    Open;
    best := (fields[0].AsString = '1');

    if (edcdro.Text = '0') or (edcdro.Text = '') or (edcdro.Text = ' ') then
    begin
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_'+SLPrincipal.Values['rom_cab']+',0) FROM RDB$DATABASE');
      Open;
      edhrom.Text := timetostr(time);
      edcdro.Text := inttostr(fields[0].AsInteger+1);
               ID := 0;
    end
    else       ID := strtoint(edcdro.Text);
  end;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(ROM_QTDE),SUM(ROM_QTRL) FROM ROM_ITE');
    SQL.Add('WHERE  ROM_FLAG = ''0''');
    Open;
    qtve := fields[0].AsFloat;
    rlve := fields[1].AsInteger;
  end;

  try
    try
      ibSP.StoredProcName := 'SP_ROM_CAB';
      ibSP.Prepare;

      ibSP.ParamByName('ped').Value  := 'ROM_CAB';
      if frmprincipal.parametrosID.AsInteger > 1 then
      ibSP.ParamByName('ped').Value  := 'ROM_CAB_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

      ibSP.ParamByName('id').Value   := ID;
      ibSP.ParamByName('cdcx').Value := edcdcx.Text;
      ibSP.ParamByName('dero').Value := eddero.Text;
      ibSP.ParamByName('stpd').Value := cbstpd.Text;
      ibSP.ParamByName('stco').Value := cbstco.Text;
      ibSP.ParamByName('stfi').Value := 'PENDENTE';
      ibSP.ParamByName('drom').Value := eddcad.Date;
      ibSP.ParamByName('hrom').Value := strtotime(edhrom.Text);
      ibSP.ParamByName('dexp').Value := 0;
      ibSP.ParamByName('hexp').Value := 0;
      ibSP.ParamByName('cexp').Value := 0;
      ibSP.ParamByName('ccli').Value := edccli.Text;
      ibSP.ParamByName('cven').Value := edcven.Text;
      ibSP.ParamByName('crep').Value := edcrep.Text;
      ibSP.ParamByName('cpag').Value := edcpag.Text;
      ibSP.ParamByName('qtve').Value := qtve;
      ibSP.ParamByName('rlve').Value := rlve;
      ibSP.ParamByName('tsde').Value := oTextToValor(edtsde.Text);
      ibSP.ParamByName('tdsc').Value := latdsc.Caption;
      ibSP.ParamByName('pdsc').Value := edpdsc.Text;
      ibSP.ParamByName('cdsc').Value := edcdsc.Text;
      ibSP.ParamByName('adsc').Value := edadsc.Text;
      ibSP.ParamByName('tcde').Value := oTextToValor(edtcde.Text);
      ibSP.ParamByName('conc').Value := cbcred.Text;
      ibSP.ParamByName('obse').Value := edobse.Text;
      ibSP.ParamByName('sta').Value  := '0';
      ibSP.ParamByName('comi').Value := '0';
      ibSP.ParamByName('ctnr').Value := edctnr.Text;
      ibSP.ParamByName('vfrt').Value := oTextToValor(edvfrt.Text);
      ibSP.ParamByName('dtra').Value := cbdtra.Text;
      ibSP.ExecProc;
    except
      edcdro.Text := inttostr(ID);
      IBTra.RollbackRetaining;
      messageBox(handle,'Problemas na gravação do cabeçalho !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    try
      with consulta_S do
      begin
        SQL.Clear;
        SQL.Add('SELECT    ROM_CDRO,SUM(ROM_QTDE),SUM(ROM_QTRL) FROM ROM_ITE');
        SQL.Add('WHERE     ROM_CDRO > 0');
        SQL.Add('GROUP  BY ROM_CDRO');
        Open;
      end;

      while not consulta_S.Eof do
      begin
        with frmprincipal.sp_sql do
        begin
          ibSP.StoredProcName := 'SP_SQL';

          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
          SQL.Add('SET    ROM_CDRO = '''+edcdro.Text+''',');
          SQL.Add('       ROM_CREP = '''+edcrep.Text+''',');
          SQL.Add('       ROM_QTVE = '''+oStrTran(consulta_S.Fields[1].AsString,',','.')+''',');
          SQL.Add('       ROM_RLVE = '''+consulta_S.Fields[2].AsString+''',');
          SQL.Add('       ROM_CPAG = '''+edcpag.Text+'''');
          SQL.Add('WHERE  ID = '''+consulta_S.Fields[0].AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;

          SQL.Clear;
          SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_res']);
          SQL.Add('WHERE  EST_CDPD = '''+consulta_S.Fields[0].AsString+'''');
          SQL.Add('AND    EST_FLAG = ''R''');
          SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;

          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_sep']);
          SQL.Add('SET    EST_FLAG = ''V''');
          SQL.Add('WHERE  EST_CDPD = '''+consulta_S.Fields[0].AsString+'''');
          SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;

          SQL.Clear;
          if edtest.Text = 'DEFEITO' then
          SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_def']+' "CAD_PRO_EST"') else
          SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_est']+' "CAD_PRO_EST"');
          SQL.Add('WHERE  EST_CDRO = '''+consulta_S.Fields[0].AsString+'''');
          SQL.Add('AND    EST_FLAG = ''V''');
          SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;
        end;

        consulta_S.Next;
      end;
    except
      edcdro.Text := inttostr(ID);
      IBTra.RollbackRetaining;
      messageBox(handle,'Problemas na gravação das baixas de estoque !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    try
      with frmprincipal.sp_sql do
      begin
        SQL.Clear;
        SQL.Add('DELETE FROM '+SLPrincipal.Values['rom_ite']);
        SQL.Add('WHERE  ROM_CCAB = '''+edcdro.Text+'''');

        ibSP.StoredProcName := 'SP_SQL';
        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;
      end;

      rom_001.DisableControls;
      rom_001.First;
      while not rom_001.Eof do
      begin
        ibSP.StoredProcName := 'SP_ROM_ITE';
        ibSP.Prepare;

        ibSP.ParamByName('ped').Value  := 'ROM_ITE';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('ped').Value  := 'ROM_ITE_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

        ibSP.ParamByName('ID').Value   := 0;
        ibSP.ParamByName('CCAB').Value := edcdro.Text;
        ibSP.ParamByName('CDPD').Value := rom_001ROM_CDRO.AsInteger;
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
        ibSP.ParamByName('VDSC').Value := rom_001ROM_VDSC.AsFloat;
        ibSP.ParamByName('TOTA').Value := rom_001ROM_TOTA.AsFloat;
        ibSP.ParamByName('CDET').Value := rom_001ROM_CDET.AsString;
        ibSP.ParamByName('DSEP').Value := rom_001ROM_DSEP.AsString;
        ibSP.ParamByName('COMI').Value := 0;
        ibSP.ParamByName('TPRC').Value := '';
        ibSP.ParamByName('ABCD').Value := rom_001ROM_ABCD.AsString;
        ibSP.ParamByName('OBSE').Value := rom_001ROM_OBSE.AsString;
        ibSP.ParamByName('DCOR').Value := rom_001ROM_DCOR.AsString;
        ibSP.ParamByName('PCOR').Value := rom_001ROM_PCOR.AsString;
        ibSP.ParamByName('DCO2').Value := rom_001ROM_DCO2.AsString;
        ibSP.ParamByName('PCO2').Value := rom_001ROM_PCO2.AsString;
        ibSP.ExecProc;

        if rom_001ROM_CDRO.AsInteger > 0 then
        with frmprincipal.sp_sql do
        begin
          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_ite']);
          SQL.Add('SET    ROM_CDRO = '''+edcdro.Text+'''');
          SQL.Add('WHERE  ID = '''+rom_001ROM_CDRO.AsString+'''');

          ibSP.StoredProcName := 'SP_SQL';
          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;
        end;

        if best then
        begin
          if edtest.Text = 'DEFEITO' then
          begin
            ibSP.StoredProcName := 'SP_CAD_PRO_DEF';
            ibSP.Prepare;

            ibSP.ParamByName('est').Value  := 'CAD_PRO_DEF';
            if frmprincipal.parametrosID.AsInteger > 1 then
            ibSP.ParamByName('est').Value  := 'CAD_PRO_DEF_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
          end
          else
          begin
            ibSP.StoredProcName := 'SP_CAD_PRO_EST';
            ibSP.Prepare;

            ibSP.ParamByName('est').Value  := 'CAD_PRO_EST';
            if frmprincipal.parametrosID.AsInteger > 1 then
            ibSP.ParamByName('est').Value  := 'CAD_PRO_EST_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
          end;

          ibSP.ParamByName('dmap').Value := '';
          ibSP.ParamByName('ctnr').Value := '';
          ibSP.ParamByName('lote').Value := '';

          if rom_001ROM_CDET.AsString <> '' then
          with consulta do
          begin
            SQL.Clear;
            SQL.Add('SELECT EST_DMAP,EST_CTNR,EST_LOTE FROM '+ibSP.ParamByName('est').AsString);
            SQL.Add('WHERE  EST_CDET = '''+rom_001ROM_CDET.AsString+'''');
            Open;

            ibSP.ParamByName('dmap').Value := fields[0].AsString;
            ibSP.ParamByName('ctnr').Value := fields[1].AsString;
            ibSP.ParamByName('lote').Value := fields[2].AsString;
          end;

          ibSP.ParamByName('id').Value   := 0;
          ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
          ibSP.ParamByName('cdro').Value := rom_001ROM_CDRO.AsInteger;
          ibSP.ParamByName('cdpd').Value := 0;
          ibSP.ParamByName('cdbx').Value := 0;
          ibSP.ParamByName('cpro').Value := rom_001ROM_IPR2.AsInteger;
          ibSP.ParamByName('cusu').Value := edcven.Text;
          ibSP.ParamByName('dusu').Value := cbdven.Text;
          ibSP.ParamByName('cfav').Value := edccli.Text;
          ibSP.ParamByName('dfav').Value := eddcli.Text;
          ibSP.ParamByName('dcad').Value := eddcad.Date;
          ibSP.ParamByName('docu').Value := trim(copy(rom_001ROM_DERO.AsString,1,10));
          ibSP.ParamByName('flag').Value := 'V';
          ibSP.ParamByName('cdet').Value := rom_001ROM_CDET.AsString;
          ibSP.ParamByName('dsep').Value := rom_001ROM_DSEP.AsString;
          ibSP.ParamByName('debi').Value := rom_001ROM_QTDE.AsFloat;
          if rom_001ROM_QTPD.AsFloat > 0 then
          ibSP.ParamByName('debi').Value := rom_001ROM_QTPD.AsFloat;
          ibSP.ParamByName('cred').Value := 0;
          ibSP.ExecProc;
        end;

        rom_001.Next;
      end;
    except
      edcdro.Text := inttostr(ID);

      IBTra.RollbackRetaining;
      messageBox(handle,'Problemas na Gravação dos Itens do Pedido !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if ID = 0 then
    edcdro.Hint := 'Inclusão' else
    edcdro.Hint := 'Alteração';

    IBTra.CommitRetaining;
    pTRA.StartTransaction;

    pSP.StoredProcName := 'SP_EVENT';
    pSP.Prepare;
    pSP.Params[0].AsString := 'CTR_PED';
    pSP.ExecProc;

    pTRA.Commit;

    frmprincipal.Log_Eve('Vendas','Pedidos',edcdro.Hint,eddero.Text,eddero.Text,LOWERCASE(eddcli.Text),'','');

    ROMANEIO;
    BSal.Enabled := false;
  finally
    with rom_001 do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM ROM_ITE');
      SelectSQL.Add('WHERE    ROM_FLAG = 0');
      SelectSQL.Add('ORDER BY ROM_ITEM');
      Open;
    end;

    Tag := 0;
    rom_001.EnableControls;
  end;
end;

procedure Tfrmven_rom.PESQUISA_VENDEDOR(pesq,chave: string);
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

procedure Tfrmven_rom.PESQUISA_REPRESENTANTE(pesq,chave: string);
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
          messageBox(handle,'Código do representante não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end
        else if pesq = 'F' then
        begin
          messageBox(handle,'Nome do representante não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;
        Abort;
      end;

      if fields[2].AsString = '1' then
      begin
        edcrep.Text := '';
        cbdrep.Text := '';

        if pesq = 'C' then
        else if pesq = 'F' then

        messageBox(handle,PChar('Representante '+fields[1].AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if fields[3].AsString <> 'A' then
      begin
        edcrep.Text := '';
        cbdrep.Text := '';

        if pesq = 'C' then
        else if pesq = 'F' then

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

procedure Tfrmven_rom.PESQUISA_FPAGTO(pesq,chave: string);
begin
  if (chave = '0') or (chave = '') then
  exit;

  try
    tag := 1;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,PAG_DPAG,PAG_STA,PAG_PARC FROM TAB_PAG');
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
          messageBox(handle,'Código da forma de pagamento não cadastrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end
        else if pesq = 'F' then
        begin
          messageBox(handle,'Nome da forma de pagamento não cadastrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;
        Abort;
      end;

      if fields[2].AsString = '1' then
      begin
        edcpag.Text := '';
        cbdpag.Text := '';
      
        if pesq = 'C' then

        messageBox(handle,PChar('Forma de pagamento '+fields[1].AsString+' enviada para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      edcpag.Text := fields[0].AsString;
      cbdpag.Text := fields[1].AsString;
    end;
  finally
    tag := 0;
    BSal.Enabled := true;
  end;
end;

procedure Tfrmven_rom.PESQUISA_CLIENTE(pesq,chave: string;cdsc: double);
begin
  if (chave = '0') or (chave = '') then
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
      if pesq = 'C' then
         SQL.Add('WHERE  CAD_CLI.ID = '''+chave+'''')
      else if pesq = 'F' then
         SQL.Add('WHERE  CLI_FANT LIKE ''%'+chave+'%''')
      else if pesq = 'R' then
         SQL.Add('WHERE  CLI_FANT LIKE ''%'+chave+'%''');
      Open;
      Last;
    end;

    if psq_cli.recordcount = 0 then
    begin
      if pesq = 'C' then
      begin
        messageBox(handle,'Código do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'F' then
      begin
        messageBox(handle,'Nome fantasia do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'R' then
      begin
        messageBox(handle,'Razão social do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end;
      Abort;
    end
    else if psq_cli.recordcount = 1 then
    begin
      if psq_cliCLI_STA.AsString <> '0' then
      begin
        if pesq = 'C' then
        else if pesq = 'F' then
        else if pesq = 'R' then

        messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if psq_cliCLI_STAV.AsString <> 'A' then
      begin
        if psq_cliCLI_STAV.AsString = 'I' then
           messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
        else if psq_cliCLI_STAV.AsString = 'P' then
           messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' aguardando autorização de compra !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
        else if psq_cliCLI_STAV.AsString = 'S' then
           messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' sem autorização de compra !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if (psq_cliCLI_ESTA.AsString <> 'EX') and (psq_cliID.AsString <> frmprincipal.parametrosPAR_CCLI.AsString) then
      begin
        if (Length(psq_cliCLI_CNPJ.AsString) < 5) and (Length(psq_cliCLI_CPF.AsString) < 5) then
        begin
          messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' sem C.N.P.J. e C.P.F cadastrado. '+#13+'Verifique !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
          Abort;
        end;
      end;

      edccli.Text := psq_cliID.AsString;
      eddcli.Text := psq_cliCLI_FANT.AsString;
      edrcli.Text := psq_cliCLI_RAZA.AsString;
      edcnpj.Text := psq_cliCLI_CNPJ.AsString;
      edcdsc.Text := formatfloat('#,0.00########',psq_cliCLI_VDSC.AsFloat);

      if psq_cliCLI_DPAG.AsString <> '' then
         cbdpag.Text := psq_cliCLI_DPAG.AsString;

      edobso.Lines.Clear;
      edobso.Lines.Text := TRIM(psq_cliCLI_OBSO.AsString);
      edobso.Update;

      BSal.Enabled := true;

      if edobso.Text <> '' then
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
          SQL.Add('WHERE  CLI_FANT LIKE ''%'+eddcli.Text+'%''')
        else if pesq = 'F' then
           SQL.Add('WHERE  CLI_FANT LIKE ''%'+eddcli.Text+'%''')
        else if pesq = 'R' then
           SQL.Add('WHERE  CLI_RAZA LIKE ''%'+edrcli.Text+'%''');
        SQL.Add('AND    CLI_STA  = 0');
        SQL.Add('AND    CLI_STAV = ''A''');

        if pesq = 'C' then
        begin
          SQL.Add('ORDER BY ID');
          frmcad_cli.dbgConsulta.FocusedColumn := 0;
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
      frmcad_cli.Show;
    end;
  finally
    tag := 0;
    BSal.Enabled := true;
  end;
end;

procedure Tfrmven_rom.CARREGAFOTO(tam: Integer; valor: TBlobField; tab: TIbDataSet);
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

procedure Tfrmven_rom.ABRE_TABELA;
begin
  oOTransact(TSheild);
  with rom_001 do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM ROM_ITE');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM ROM_ITE');
    SelectSQL.Add('WHERE    ROM_FLAG = 0');
    SelectSQL.Add('ORDER BY ROM_ITEM');
    Open;
  end;
end;

procedure Tfrmven_rom.BSairClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmven_rom.edtsdeKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmven_rom.siINCClick(Sender: TObject);
begin
  rom_001.Append;
end;

procedure Tfrmven_rom.siSAVClick(Sender: TObject);
begin
  rom_001.Post;
end;

procedure Tfrmven_rom.siCANClick(Sender: TObject);
begin
  rom_001.Cancel;
end;

procedure Tfrmven_rom.siALTClick(Sender: TObject);
begin
  rom_001.Edit;
end;

procedure Tfrmven_rom.rom_001AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  tSHEILD.CommitRetaining;

  if tag = 0 then
  begin
    if (rom_001ROM_DPRO.AsString <> '') then
        BSal.Enabled := true;

    wRec := rom_001.GetBookmark;

    rom_001.Close;
    rom_001.Open;
    if (wRec = Nil) or (rom_001.Fields[0].IsNull) then rom_001.last
       else rom_001.GotoBookmark(wRec);
    rom_001.FreeBookmark(wRec);

    TOTAL;
  end;
  dbgrom.SetFocus;
end;

procedure Tfrmven_rom.TOTAL;
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
    SQL.Add('SELECT SUM(ROM_TOTA),SUM(ROM_QTDE),SUM(ROM_QTRL) FROM ROM_ITE');
    SQL.Add('WHERE  ROM_FLAG = 0');
    Open;
  end;

  if (edpdsc.Text = '') or (oTextToValor(edpdsc.Text) < 0) then
      edpdsc.Text := '0';

  edtsde.Text := formatfloat('R$ #,0.00########',consulta_S.fields[0].AsFloat);
  edtcde.Text := formatfloat('R$ #,0.00########',consulta_S.fields[0].AsFloat);
  edqtrl.Text := formatfloat('#,0.00########'   ,consulta_S.fields[1].AsFloat)+'/'+
                 formatfloat('0'        ,consulta_S.fields[2].AsFloat);

  if oTextToValor(edpdsc.Text) > 0 then
  begin
    if latdsc.Caption = '%' then
       edtcde.Text := formatFloat('R$ #,0.00########',oTextToValor(edtsde.Text)  - (oTextToValor(edtsde.Text) * oTextToValor(edpdsc.Text)) / 100)
    else if latdsc.Caption = '$' then
    begin
      if oTextToValor(edtsde.Text) >= oTextToValor(edpdsc.Text) then
         edtcde.Text    := formatFloat('R$ #,0.00########',oTextToValor(edtsde.Text)  - oTextToValor(edpdsc.Text));
    end;
  end;

  if strtofloat(edadsc.Text) > 0 then
     edtcde.Text := formatFloat('R$ #,0.00########',oTextToValor(edtcde.Text)  - (oTextToValor(edtcde.Text) * strtofloat(edadsc.Text)) / 100);

  BSal.Enabled:= true;
end;

procedure Tfrmven_rom.edderoKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmven_rom.edcvenValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcven.Text = '' then
  begin
    cbdven.Text := '';
    abort;
  end;

  PESQUISA_VENDEDOR('C',edcven.Text);
end;

procedure Tfrmven_rom.cbdvenChange(Sender: TObject);
begin
  if tag = 0 then
     BSal.Enabled := true;
end;

procedure Tfrmven_rom.cbdvenExit(Sender: TObject);
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


procedure Tfrmven_rom.edcrepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcrep.Text = '' then
  begin
    cbdrep.Text := '';
    abort;
  end;

  PESQUISA_REPRESENTANTE('C',edcrep.Text);
end;

procedure Tfrmven_rom.cbdrepChange(Sender: TObject);
begin
  if tag = 0 then
     BSal.Enabled := true;
end;

procedure Tfrmven_rom.cbdrepExit(Sender: TObject);
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


procedure Tfrmven_rom.edcpagValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcpag.Text = '' then
  begin
    cbdpag.Text := '';
    abort;
  end;
  
  PESQUISA_FPAGTO('C',edcpag.Text);
end;

procedure Tfrmven_rom.cbdpagExit(Sender: TObject);
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

procedure Tfrmven_rom.cbdpagChange(Sender: TObject);
begin
  if tag = 0 then
     BSal.Enabled := true;
end;

procedure Tfrmven_rom.edccliValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var ccli: integer;
begin
  if edccli.Text = '' then
  begin
    eddcli.Text := '';
    edrcli.Text := '';
    abort;
  end;

  try
    ccli := strtoint(edccli.Text)
  except
    raise exception.Create('Código de cliente inválido !');
  end;

  PESQUISA_CLIENTE('C',inttostr(ccli),0);
end;

procedure Tfrmven_rom.eddcliValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if eddcli.Text = '' then
  begin
    edccli.Text := '';
    edrcli.Text := '';
    abort;
  end;
  PESQUISA_CLIENTE('F',eddcli.Text,0);
end;

procedure Tfrmven_rom.edrcliValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edrcli.Text = '' then
  begin
    edccli.Text := '';
    eddcli.Text := '';
    abort;
  end;    
  PESQUISA_CLIENTE('R',edrcli.Text,0);
end;

procedure Tfrmven_rom.rom_001NewRecord(DataSet: TDataSet);
begin
  rom_001ID.Value       := 0;
  rom_001ROM_FLAG.Value := 0;
  rom_001ROM_CDOC.Value := 0;
  rom_001ROM_VDSC.Value := 0;
end;

procedure Tfrmven_rom.dtsrom_001DataChange(Sender: TObject; Field: TField);
begin
  CARREGAFOTO(rom_001ROM_FOTO.BlobSize,rom_001ROM_FOTO,rom_001);
end;

procedure Tfrmven_rom.rom_001ROM_VDSCValidate(Sender: TField);
begin
  if rom_001ROM_VDSC.AsFloat = 0 then
     rom_001ROM_UNIT.Value := rom_001ROM_PREC.Value
  else
     rom_001ROM_UNIT.Value := rom_001ROM_PREC.AsFloat - ((rom_001ROM_PREC.AsFloat*rom_001ROM_VDSC.AsFloat)/100);
end;

procedure Tfrmven_rom.rom_001ROM_QTDEValidate(Sender: TField);
begin
  if rom_001ROM_DPRO.AsString <> '' then
  rom_001ROM_TOTA.Value := RoundTO(rom_001ROM_QTDE.AsFloat * rom_001ROM_UNIT.AsFloat,-2);

  rom_001ROM_VIPI.Value := 0;
  if rom_001ROM_PIPI.AsFloat > 0 then
  rom_001ROM_VIPI.Value := roundto((rom_001ROM_TOTA.AsFloat * rom_001ROM_PIPI.AsFloat) /100,-2);
end;

procedure Tfrmven_rom.BSalClick(Sender: TObject);
begin
  try
    SALVA;
  finally
    if BSal.Enabled then
       abort;
  end;

  Close;
end;

procedure Tfrmven_rom.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
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
         mrCancel: Abort;
         mrYes   : Begin
                     if BSal.Enabled then
                     begin
                       try
                         SALVA;
                       finally
                         if BSal.Enabled then
                            abort;
                       end;
                     end;
                   end;
    end;
  end;
end;

procedure Tfrmven_rom.edpdscValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpdsc.Text = '' then
     edpdsc.Text := '0';

  edpdsc.Text := formatfloat('#,0.00########',oTextToValor(edpdsc.Text));
  TOTAL;
end;

procedure Tfrmven_rom.dbgromROM_UNITValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not auto then
  begin
    if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Programações','Alterar Preço da Tabela',false) then
    begin
      if not RETORNA_LOGIN then
         Databaseerror('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
    end;
  end;  
end;

procedure Tfrmven_rom.cbstpdChange(Sender: TObject);
begin
  if tag = 0 then
     BSal.Enabled := true;
end;

procedure Tfrmven_rom.cbstpdExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    PESQUISA_TIPO;
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

procedure Tfrmven_rom.latdscClick(Sender: TObject);
begin
  if latdsc.Caption = '%' then
     latdsc.Caption := '$'
  else
     latdsc.Caption := '%';
  latdsc.Update;
end;

procedure Tfrmven_rom.siDELClick(Sender: TObject);
var
  wRec: TBookMark;
begin
  wRec := rom_001.GetBookmark;
  
  if rom_001ID.IsNull then
     abort;

  if oYesNo(handle,'Excluir Item ?') =   mrNo then
     abort;

  try
    BSal.Enabled := true;

    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('UPDATE ROM_ITE');
      SQL.Add('SET    ROM_FLAG = ''1''');
      SQL.Add('WHERE  ROM_ITEM = '''+rom_001ROM_ITEM.Asstring+'''');
      ExecSQL;
      tSHEILD.CommitRetaining;
    end;
  finally
    rom_001.Close;
    rom_001.Open;

    TOTAL;

    if (wRec = Nil) or (rom_001.Fields[0].IsNull) then rom_001.last
       else rom_001.GotoBookmark(wRec);
    rom_001.FreeBookmark(wRec);
  end;
end;

procedure Tfrmven_rom.dbgromKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_DELETE: if rom_001.State = dsBrowse then            siDEL.Click;
    VK_ESCAPE: if rom_001.State = dsBrowse then close else siCAN.Click;
  end;
end;

procedure Tfrmven_rom.siCLOClick(Sender: TObject);
begin
  Application.CreateForm (Tfrmimporta_geral, frmimporta_geral);

  frmimporta_geral.cbTIPO.Enabled := false;
  frmimporta_geral.cbTIPO.Text    := 'PEDIDO DE VENDA';
  frmimporta_geral.cbFANT.Text    := frmprincipal.parametrosPAR_FANT.AsString;
  frmimporta_geral.ShowModal;

  try
    if frmimporta_geral.editado then
    begin
      if cbcred.Text <> frmimporta_geral.imp_cabROM_CONC.AsString then
      raise exception.Create('Diferença de créditos entre os pedidos.'+#13+'Verifique !');

      edobse.Text := 'REFERENCIA: '+frmimporta_geral.cbTIPO.Text+' No '+frmimporta_geral.edTXT.Text;

      if (frmprincipal.parametrosPAR_TIPO.AsString = '0') and (edqtsp.Text = '1') then
      ITE_COMSEPARACAO(frmimporta_geral.imp_cabROM_CDPD.AsString,frmimporta_geral.imp_cabROM_DERO.AsString) else
      ITE_SEMSEPARACAO(frmimporta_geral.imp_cabROM_CDPD.AsString,frmimporta_geral.imp_cabROM_DERO.AsString);
    end;
  finally
    freeandNil(frmimporta_geral);
    frmimporta_geral.Free;
  end;
end;

procedure Tfrmven_rom.rom_001BeforePost(DataSet: TDataSet);
begin
  if rom_001ROM_DPRO.AsString = '' then
  rom_001ROM_DPRO.Value := 'DESCRIÇÂO '+cbcred.Text+' NÃO CADASTRADO ! OBRIGATÓRIO CADASTRAR DESCRIÇÃO '+cbcred.Text;
end;

procedure Tfrmven_rom.SIMNFeClick(Sender: TObject);
begin
  try
    SALVA;
  finally
    if BSal.Enabled then
    Abort;
  end;
  SIMNFe.Enabled := False;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT VEN_CNA1,VEN_CNA2 FROM TAB_PED');
    SQL.Add('WHERE  VEN_TIPO = '''+cbstpd.Text+'''');
    Open;
  end;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(ROM_QTRL) FROM ROM_ITE');
    SQL.Add('WHERE  ROM_FLAG = ''0''');
    Open;
  end;

  frmven_nfe     := tfrmven_nfe.create(Application);
  frmven_nfe.Tag := 1;

  Application.ProcessMessages;
  SleepEx(10,False);
  try
    frmven_nfe.IEModFrete.Text := '1';
    frmven_nfe.edcna1.Text     := consulta.Fields[0].AsString;
    frmven_nfe.edcna2.Text     := consulta.Fields[1].AsString;
    frmven_nfe.edcdro.Text     := edcdro.Text;
    frmven_nfe.EDXPed.Text     := oStrZero(StrToInt(edcdro.Text),6);
    frmven_nfe.edconc.Text     := cbcred.Text;
    frmven_nfe.edcfav.Text     := edccli.Text;
    frmven_nfe.edcven.Text     := edcven.Text;
    frmven_nfe.eddven.Text     := cbdven.Text;
    frmven_nfe.edcrep.Text     := edcrep.Text;
    frmven_nfe.eddrep.Text     := cbdrep.Text;
    frmven_nfe.cbdtra.Text     := cbdtra.Text;
    frmven_nfe.EDInfAdPed.Text := edobse.Text;
    frmven_nfe.edqvol.Text     := consulta_S.Fields[0].AsString;
    frmven_nfe.EDTDesc.Text    := Formatfloat('#,0.00',oTextToValor(edpdsc.Text));
    frmven_nfe.LATDesc.Caption := latdsc.Caption;
    frmven_nfe.LATDesc.Tag     := IFThen(oTextToValor(frmven_nfe.EDTDesc.Text) > 0,1,0);
    frmven_nfe.edfatu.Text     := edfatu.Text;

    frmven_nfe.PESQUISA_CLIENTE('I',edccli.Text,0);
    frmven_nfe.Tag := 1;

    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   FK.ID AS IDCP,FK.PRO_CPRO AS CPROD,PK.ROM_DPRO||'' ''||COALESCE(PK.ROM_DCOR,'''') AS XPROD,PK.ROM_DUNI AS UCOM,');
      SQL.Add('         FK.PRO_CBAR AS CEAN,FK.PRO_CCLF AS NCM,FK.PRO_PIPI AS TRIBIPI,FK.PRO_CCST AS ORIG,');
      SQL.Add('         FK.PRO_PESO AS PESO,FK.PRO_PSCN AS PSCN,FK.PRO_METR AS METR,FK.PRO_REND AS REND,');
      SQL.Add('         FK.PRO_COMP AS COMPBASE,LEFT(FK.PRO_STAV,1) AS DECAST,');
      SQL.Add('         0 AS UQVOL,NULL AS UESP,');
      SQL.Add('         PK.ROM_PREC,PK.ROM_UNIT AS VUNCOM,PK.ROM_NFCI,');
      SQL.Add('         SUM(PK.ROM_QTDE) AS ROM_QTDE,SUM(PK.ROM_QTRL) AS ROM_QTRL');
      SQL.Add('FROM   '+SLPrincipal.Values['rom_ite']+' AS PK');
      SQL.Add('JOIN     CAD_PRO AS FK ON (FK.ID = PK.ROM_CPRO)');
      SQL.Add('WHERE    ROM_CCAB = '''+edcdro.Text+'''');
      SQL.Add('GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19');
      ExecQuery;
    end;
    while not SQLConsulta.Eof do
    begin
      frmven_nfe.nfe_001.Append;
      frmven_nfe.nfe_001NFE_IPRO.Value      := SQLConsulta.Current.ByName('IDCP').AsInteger;
      frmven_nfe.nfe_001NFE_CPROD.Value     := SQLConsulta.Current.ByName('CPROD').AsString;
      frmven_nfe.nfe_001NFE_XPROD.Value     := SQLConsulta.Current.ByName('XPROD').AsString;
      frmven_nfe.nfe_001NFE_UCOM.Value      := SQLConsulta.Current.ByName('UCOM').AsString;
      frmven_nfe.nfe_001NFE_CEAN.Value      := SQLConsulta.Current.ByName('CEAN').AsString;
      frmven_nfe.nfe_001NFE_NCM.Value       := SQLConsulta.Current.ByName('NCM').AsString;
      frmven_nfe.nfe_001NFE_PIPI.Value      := SQLConsulta.Current.ByName('TRIBIPI').AsFloat;
      frmven_nfe.nfe_001NFE_ORIG.Value      := SQLConsulta.Current.ByName('ORIG').AsString;
      frmven_nfe.nfe_001NFE_PESO.Value      := SQLConsulta.Current.ByName('PESO').AsFloat;
      frmven_nfe.nfe_001NFE_PSCN.Value      := SQLConsulta.Current.ByName('PSCN').AsFloat;
      frmven_nfe.nfe_001NFE_METR.Value      := SQLConsulta.Current.ByName('METR').AsFloat;
      frmven_nfe.nfe_001NFE_REND.Value      := SQLConsulta.Current.ByName('REND').AsFloat;
      frmven_nfe.nfe_001NFE_VUNCOM.Value    := SQLConsulta.Current.ByName('VUNCOM').AsFloat;
      frmven_nfe.nfe_001NFE_PREC.Value      := SQLConsulta.Current.ByName('VUNCOM').AsFloat;
      frmven_nfe.nfe_001NFE_QCOM.Value      := SQLConsulta.Current.ByName('ROM_QTDE').AsFloat;
      frmven_nfe.nfe_001NFE_RCOM.Value      := SQLConsulta.Current.ByName('ROM_QTRL').AsInteger;
      frmven_nfe.nfe_001NFE_STAV.Value      := SQLConsulta.Current.ByName('DECAST').AsString;
      frmven_nfe.nfe_001NFE_COMP.Value      := SQLConsulta.Current.ByName('COMPBASE').AsString;
      frmven_nfe.nfe_001NFE_INFADPROD.Value := SQLConsulta.Current.ByName('COMPBASE').AsString;
      frmven_nfe.nfe_001NFE_NFCI.Value      := SQLConsulta.Current.ByName('ROM_NFCI').AsString;

      if not oEmpty(frmven_nfe.nfe_001NFE_INFADPROD.AsString) then
         frmven_nfe.nfe_001NFE_INFADPROD.Value := 'COMPOSICAO: '+frmven_nfe.nfe_001NFE_INFADPROD.AsString;

      if ((SQLConsulta.Current.ByName('UQVOL').AsFloat > 0) and (not oEmpty(SQLConsulta.Current.ByName('UESP').AsString))) then
           frmven_nfe.nfe_001NFE_INFADPROD.Value := frmven_nfe.nfe_001NFE_INFADPROD.AsString+#13+'CONTEUDO: '+SQLConsulta.Current.ByName('UQVOL').AsString+' '+SQLConsulta.Current.ByName('UESP').AsString
      else
           if Pos(LeftStr(frmven_nfe.nfe_001NFE_UCOM.AsString,1),'KMY') = 0 then
              if  frmven_nfe.nfe_001NFE_METR.AsFloat > 0 then
                  frmven_nfe.nfe_001NFE_INFADPROD.Value := frmven_nfe.nfe_001NFE_INFADPROD.AsString+#13+'CONTEUDO: '+FormatFloat('0.00M',frmven_nfe.nfe_001NFE_METR.AsFloat);

      frmven_nfe.nfe_001NFE_INFADPROD.Value := Trim(frmven_nfe.nfe_001NFE_INFADPROD.AsString);
      frmven_nfe.nfe_001NFE_REPR.Value      := 'R';//FBird.FBCAD_PROPRO_REPR.AsString;
      frmven_nfe.nfe_001.Post;
      SQLConsulta.Next;
    end;
  finally
    rom_001.EnableControls;

    if (cbstco.Text = 'BANCÁRIO') or (cbstco.Text = 'DUPLICATA') then
    frmven_nfe.cbdupl.Text    := 'SIM';
    frmven_nfe.cbdpag.Text    := cbdpag.Text;
    frmven_nfe.cbdupl.Enabled := (frmven_nfe.cbdupl.Text = 'SIM');
    frmven_nfe.cbdpag.Enabled := (frmven_nfe.cbdupl.Text = 'SIM');
    frmven_nfe.cbprz.Enabled  := (frmven_nfe.cbdupl.Text = 'SIM');
    frmven_nfe.cbdtra.SetFocus;

    if oTextToValor(edvfrt.Text) > 0 then
    begin
      oRTransact(frmven_nfe.TSheild);
      frmven_nfe.CEVFrete.Value := oTextToValor(edvfrt.Text);
      frmven_nfe.CALCULA_FRETE;
    end;
    
    oRTransact(frmven_nfe.TSheild);
    frmven_nfe.CALCULA_NF;
    if (Screen.Width <= 1024) or (Screen.Width < 1280) then
    begin
      frmven_nfe.FormStyle := fsnormal;
      frmven_nfe.Visible   := false;
      frmven_nfe.ShowModal;
    end else
    frmven_nfe.Show;
  end;
end;

end.

