unit pcad_cli_edi;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, IBStoredProc, IBEvents, IBDatabase, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxEditor, dxEdLib, ExtCtrls, StdCtrls,
  dxExEdtr, dxPageControl, ImgList,  ComCtrls, math, StrUtils,
  dxDBELib, Shellapi, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, DateUtils,
  rxSpeedbar, IBSQL;

type
  Tfrmcad_cli_edi = class(Tfrmpadr3)
    cep_log: TIBQuery;
    cep_logID: TIntegerField;
    cep_logLOG_TIT: TIBStringField;
    cep_logLOG_NO: TIBStringField;
    cep_logLOG_CEP: TIBStringField;
    cep_logBAI_NO: TIBStringField;
    cep_logLOC_NO: TIBStringField;
    cep_logLOG_UF: TIBStringField;
    siCON: TSpeedItem;
    cad_cli_ram: TIBDataSet;
    cad_cli_ramID: TIntegerField;
    cad_cli_ramCLI_RAMO: TIBStringField;
    Panel1: TPanel;
    pcmain: TdxPageControl;
    tscon: TdxTabSheet;
    tsend: TdxTabSheet;
    tssoc: TdxTabSheet;
    tsBAN: TdxTabSheet;
    dbgban: TdxDBGrid;
    SpeedBar6: TSpeedBar;
    SpeedbarSection21: TSpeedbarSection;
    SpeedbarSection22: TSpeedbarSection;
    SpeedbarSection23: TSpeedbarSection;
    SpeedbarSection24: TSpeedbarSection;
    banI: TSpeedItem;
    banE: TSpeedItem;
    banS: TSpeedItem;
    banC: TSpeedItem;
    banA: TSpeedItem;
    cad_cli_ban: TIBDataSet;
    cad_cli_banID: TIntegerField;
    cad_cli_banCLI_CCLI: TIntegerField;
    cad_cli_banCLI_DCAD: TDateField;
    cad_cli_banCLI_BANC: TIBStringField;
    cad_cli_banCLI_DESC: TIBStringField;
    cad_cli_banCLI_AGEN: TIBStringField;
    cad_cli_banCLI_CONT: TIBStringField;
    cad_cli_banCLI_OBSE: TMemoField;
    cad_cli_banCLI_TIPO: TIBStringField;
    cad_cli_banCLI_DOCU: TIBStringField;
    dtscad_cli_ban: TDataSource;
    cad_cli_ref: TIBDataSet;
    dtscad_cli_ref: TDataSource;
    cad_cli_obs: TIBDataSet;
    cad_cli_obsID: TIntegerField;
    cad_cli_obsOBS_CCLI: TIntegerField;
    cad_cli_obsOBS_DCAD: TDateField;
    dtscad_cli_obs: TDataSource;
    cad_cli_soc: TIBDataSet;
    dtscad_cli_soc: TDataSource;
    cad_cli_socID: TIntegerField;
    cad_cli_socSOC_CCLI: TIntegerField;
    cad_cli_socSOC_NOME: TIBStringField;
    cad_cli_socSOC_CPF: TIBStringField;
    cad_cli_socSOC_RG: TIBStringField;
    cad_cli_socSOC_PSOC: TIBBCDField;
    cad_cli_socSOC_OBSE: TMemoField;
    cad_cli_socSOC_DCAD: TDateField;
    cad_cli_obsOBS_OBSE: TMemoField;
    dbgbanCLI_DCAD: TdxDBGridDateColumn;
    dbgbanCLI_BANC: TdxDBGridMaskColumn;
    dbgbanCLI_DESC: TdxDBGridPickColumn;
    dbgbanCLI_AGEN: TdxDBGridMaskColumn;
    dbgbanCLI_CONT: TdxDBGridMaskColumn;
    dbgbanCLI_TIPO: TdxDBGridPickColumn;
    dbgbanCLI_DOCU: TdxDBGridMaskColumn;
    dbgbanCLI_OBSE: TdxDBGridBlobColumn;
    cad_cli_dsc: TIBDataSet;
    cad_cli_dscID: TIntegerField;
    cad_cli_dscCLI_CCLI: TIntegerField;
    cad_cli_dscCLI_CPRO: TIBStringField;
    cad_cli_dscCLI_DPRO: TIBStringField;
    cad_cli_dscCLI_VDSC: TIBBCDField;
    cad_cli_dscCLI_DUSU: TIBStringField;
    cad_cli_dscCLI_DCAD: TDateTimeField;
    dtscad_cli_dsc: TDataSource;
    ImageOPC2: TImageList;
    cad_cli_grp: TIBDataSet;
    dtscad_cli_grp: TDataSource;
    cad_cli_grpID: TIntegerField;
    cad_cli_grpCLI_CCLI: TIntegerField;
    cad_cli_grpCLI_CGRP: TIntegerField;
    cad_cli_grpCLI_RGRP: TIBStringField;
    cad_cli_grpCLI_DGRP: TIBStringField;
    cad_cli_grpCLI_CCOL: TIntegerField;
    cad_cli_grpCLI_DCOL: TIBStringField;
    cad_cli_grpCLI_VDSC: TIBBCDField;
    cad_cli_grpCLI_PDSC: TIBBCDField;
    cad_cli_grpCLI_DUSU: TIBStringField;
    cad_cli_grpCLI_DCAD: TDateTimeField;
    cad_cli_grpCLI_PREC: TIBBCDField;
    cad_cli: TIBDataSet;
    cad_cliID: TIntegerField;
    cad_cliCLI_RAZA: TIBStringField;
    cad_cliCLI_FANT: TIBStringField;
    cad_cliCLI_CONT: TIBStringField;
    cad_cliCLI_DCAD: TDateField;
    cad_cliCLI_STA: TIBStringField;
    cad_cliCLI_MAIL: TIBStringField;
    cad_cliCLI_DDD: TIBStringField;
    cad_cliCLI_TEL1: TIBStringField;
    cad_cliCLI_TEL2: TIBStringField;
    cad_cliCLI_FAX: TIBStringField;
    cad_cliCLI_CEL: TIBStringField;
    cad_cliCLI_RG: TIBStringField;
    cad_cliCLI_CPF: TIBStringField;
    cad_cliCLI_INSC: TIBStringField;
    cad_cliCLI_CNPJ: TIBStringField;
    cad_cliCLI_TLOG: TIBStringField;
    cad_cliCLI_LOGR: TIBStringField;
    cad_cliCLI_CEP: TIBStringField;
    cad_cliCLI_NUME: TIBStringField;
    cad_cliCLI_COMP: TIBStringField;
    cad_cliCLI_BAI: TIBStringField;
    cad_cliCLI_CID: TIBStringField;
    cad_cliCLI_ESTA: TIBStringField;
    cad_cliCLI_TLOC: TIBStringField;
    cad_cliCLI_LOGC: TIBStringField;
    cad_cliCLI_CEPC: TIBStringField;
    cad_cliCLI_NUMC: TIBStringField;
    cad_cliCLI_COMC: TIBStringField;
    cad_cliCLI_BAIC: TIBStringField;
    cad_cliCLI_CIDC: TIBStringField;
    cad_cliCLI_ESTC: TIBStringField;
    cad_cliCLI_OBSO: TMemoField;
    cad_cliCLI_STAV: TIBStringField;
    cad_cliCLI_TPVE: TIBStringField;
    cad_cliCLI_OBSE: TMemoField;
    cad_cliCLI_TLOV: TIBStringField;
    cad_cliCLI_LOGV: TIBStringField;
    cad_cliCLI_CEPV: TIBStringField;
    cad_cliCLI_NUMV: TIBStringField;
    cad_cliCLI_COMV: TIBStringField;
    cad_cliCLI_BAIV: TIBStringField;
    cad_cliCLI_CIDV: TIBStringField;
    cad_cliCLI_ESTV: TIBStringField;
    cad_cliCLI_RICM: TIBStringField;
    cad_cliCLI_CPAG: TIBStringField;
    cad_cliCLI_DPAG: TIBStringField;
    cad_cliCLI_CMUN: TIBStringField;
    cad_cliCLI_DALT: TDateField;
    cad_cliCLI_CTRA: TIntegerField;
    cad_cliCLI_DTRA: TIBStringField;
    cad_cliCLI_DFUN: TDateField;
    cad_cliCLI_CICM: TIBStringField;
    cad_cliCLI_RAMO: TIBStringField;
    cad_cliCLI_CMUV: TIBStringField;
    cad_cliCLI_CMUC: TIBStringField;
    cad_cliCLI_DD2: TIBStringField;
    cad_cliCLI_DD3: TIBStringField;
    cad_cliCLI_DD4: TIBStringField;
    cad_cliCLI_DD5: TIBStringField;
    cad_cliCLI_DD6: TIBStringField;
    cad_cliCLI_TEL3: TIBStringField;
    cad_cliCLI_TCE1: TIBStringField;
    cad_cliCLI_TCE2: TIBStringField;
    cad_cliCLI_NCEL: TIBStringField;
    cad_cliCLI_NEID: TIBStringField;
    cad_cliCLI_FCON: TIBStringField;
    cad_cliCLI_FMAI: TIBStringField;
    cad_cliCLI_FDDD: TIBStringField;
    cad_cliCLI_FTE1: TIBStringField;
    cad_cliCLI_FDD2: TIBStringField;
    cad_cliCLI_FTE2: TIBStringField;
    cad_cliCLI_FDD3: TIBStringField;
    cad_cliCLI_FTE3: TIBStringField;
    cad_cliCLI_FDD4: TIBStringField;
    cad_cliCLI_FFAX: TIBStringField;
    cad_cliCLI_FDD5: TIBStringField;
    cad_cliCLI_FCEL: TIBStringField;
    cad_cliCLI_FTC1: TIBStringField;
    cad_cliCLI_FDD6: TIBStringField;
    cad_cliCLI_FNCE: TIBStringField;
    cad_cliCLI_FTC2: TIBStringField;
    cad_cliCLI_FNID: TIBStringField;
    cad_cliCLI_CCON: TIBStringField;
    cad_cliCLI_CMAI: TIBStringField;
    cad_cliCLI_CDDD: TIBStringField;
    cad_cliCLI_CTE1: TIBStringField;
    cad_cliCLI_CDD2: TIBStringField;
    cad_cliCLI_CTE2: TIBStringField;
    cad_cliCLI_CDD3: TIBStringField;
    cad_cliCLI_CTE3: TIBStringField;
    cad_cliCLI_CDD4: TIBStringField;
    cad_cliCLI_CFAX: TIBStringField;
    cad_cliCLI_CDD5: TIBStringField;
    cad_cliCLI_CCEL: TIBStringField;
    cad_cliCLI_CTC1: TIBStringField;
    cad_cliCLI_CDD6: TIBStringField;
    cad_cliCLI_CNCE: TIBStringField;
    cad_cliCLI_CTC2: TIBStringField;
    cad_cliCLI_CNID: TIBStringField;
    cad_cliCLI_VDSC: TIBBCDField;
    cad_cliCLI_CRED: TIBBCDField;
    cad_cliCLI_SITE: TIBStringField;
    cad_cliCLI_REVE: TIBStringField;
    cad_cliCLI_IMUN: TIBStringField;
    cad_cliCLI_CCM: TIBStringField;
    tsdsc: TdxTabSheet;
    pcinfo: TdxPageControl;
    tsicad: TdxTabSheet;
    Label1: TLabel;
    edccli: TdxEdit;
    edfant: TdxEdit;
    Label5: TLabel;
    edraza: TdxEdit;
    Label4: TLabel;
    edcnpj: TdxMaskEdit;
    edinsc: TdxEdit;
    Label13: TLabel;
    Label14: TLabel;
    edCCM: TdxEdit;
    Label21: TLabel;
    edimun: TdxEdit;
    Label25: TLabel;
    edcpf: TdxMaskEdit;
    Label15: TLabel;
    edrg: TdxEdit;
    Label16: TLabel;
    eddcad: TdxDateEdit;
    Label41: TLabel;
    dxTabSheet2: TdxTabSheet;
    Label55: TLabel;
    eddfun: TdxDateEdit;
    Bevel6: TBevel;
    cbstav: TdxImageEdit;
    Label37: TLabel;
    Label67: TLabel;
    cbreve: TdxImageEdit;
    Label54: TLabel;
    cbdtra: TdxImageEdit;
    Label40: TLabel;
    cbdven: TdxImageEdit;
    Label42: TLabel;
    cbdrep: TdxImageEdit;
    Label47: TLabel;
    cbdpag: TdxImageEdit;
    Label46: TLabel;
    cbcicm: TdxImageEdit;
    Label18: TLabel;
    Label43: TLabel;
    edvdsc: TdxEdit;
    edcred: TdxEdit;
    Label68: TLabel;
    tsicom: TdxTabSheet;
    tsPRC: TdxTabSheet;
    pccom: TdxPageControl;
    tsccom: TdxTabSheet;
    Label10: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label71: TLabel;
    Label11: TLabel;
    edddd: TdxMaskEdit;
    edmail: TdxEdit;
    edcont: TdxEdit;
    edtel1: TdxMaskEdit;
    edtel2: TdxMaskEdit;
    edfax: TdxMaskEdit;
    edcel: TdxMaskEdit;
    edneid: TdxMaskEdit;
    edncel: TdxMaskEdit;
    edDD2: TdxMaskEdit;
    edDD3: TdxMaskEdit;
    edtel3: TdxMaskEdit;
    edDD4: TdxMaskEdit;
    edDD5: TdxMaskEdit;
    edDD6: TdxMaskEdit;
    cbtce1: TdxImageEdit;
    cbtce2: TdxImageEdit;
    tscfin: TdxTabSheet;
    Label44: TLabel;
    Label45: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label52: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    edfddd: TdxMaskEdit;
    edfmai: TdxEdit;
    edfcon: TdxEdit;
    edfte1: TdxMaskEdit;
    edfte2: TdxMaskEdit;
    edffax: TdxMaskEdit;
    edfcel: TdxMaskEdit;
    edfnid: TdxMaskEdit;
    edfnce: TdxMaskEdit;
    edfdd2: TdxMaskEdit;
    edfdd3: TdxMaskEdit;
    edfte3: TdxMaskEdit;
    edfdd4: TdxMaskEdit;
    edfdd5: TdxMaskEdit;
    edfdd6: TdxMaskEdit;
    cbftc1: TdxImageEdit;
    cbftc2: TdxImageEdit;
    tsccco: TdxTabSheet;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    edcddd: TdxMaskEdit;
    edcmai: TdxEdit;
    edccon: TdxEdit;
    edcte1: TdxMaskEdit;
    edcte2: TdxMaskEdit;
    edcfax: TdxMaskEdit;
    edccel: TdxMaskEdit;
    edcnid: TdxMaskEdit;
    edcnce: TdxMaskEdit;
    edcdd2: TdxMaskEdit;
    edcdd3: TdxMaskEdit;
    edcte3: TdxMaskEdit;
    edcdd4: TdxMaskEdit;
    edcdd5: TdxMaskEdit;
    edcdd6: TdxMaskEdit;
    cbctc1: TdxImageEdit;
    cbctc2: TdxImageEdit;
    Label56: TLabel;
    Label2: TLabel;
    edsite: TdxEdit;
    cbramo: TComboBox;
    eddalt: TdxDateEdit;
    dbgref: TdxDBGrid;
    SpeedBar5: TSpeedBar;
    SpeedbarSection17: TSpeedbarSection;
    SpeedbarSection18: TSpeedbarSection;
    SpeedbarSection19: TSpeedbarSection;
    SpeedbarSection20: TSpeedbarSection;
    refI: TSpeedItem;
    refE: TSpeedItem;
    refS: TSpeedItem;
    refC: TSpeedItem;
    refA: TSpeedItem;
    Bevel4: TBevel;
    dbgsoc: TdxDBGrid;
    dbgsocSOC_DCAD: TdxDBGridDateColumn;
    dbgsocSOC_NOME: TdxDBGridMaskColumn;
    dbgsocSOC_CPF: TdxDBGridMaskColumn;
    dbgsocSOC_RG: TdxDBGridMaskColumn;
    dbgsocSOC_PSOC: TdxDBGridMaskColumn;
    dbgsocSOC_OBSE: TdxDBGridBlobColumn;
    SpeedBar4: TSpeedBar;
    SpeedbarSection9: TSpeedbarSection;
    SpeedbarSection10: TSpeedbarSection;
    SpeedbarSection11: TSpeedbarSection;
    SpeedbarSection12: TSpeedbarSection;
    socI: TSpeedItem;
    socE: TSpeedItem;
    socS: TSpeedItem;
    socC: TSpeedItem;
    socA: TSpeedItem;
    pcEND: TdxPageControl;
    tsCEP_COM: TdxTabSheet;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label53: TLabel;
    Label66: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    edtlog: TdxEdit;
    edlogr: TdxEdit;
    edcep: TdxButtonEdit;
    ednume: TdxEdit;
    edcomp: TdxEdit;
    edcmun: TdxButtonEdit;
    edbai: TdxEdit;
    eduf: TdxEdit;
    edcid: TdxEdit;
    tsCEP_COB: TdxTabSheet;
    Label3: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    edtloc: TdxEdit;
    edlogc: TdxEdit;
    edcepc: TdxButtonEdit;
    ednumc: TdxEdit;
    edcomc: TdxEdit;
    edcmuc: TdxButtonEdit;
    edbaic: TdxEdit;
    edufc: TdxEdit;
    edcidc: TdxEdit;
    tsCEP_ENT: TdxTabSheet;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    edcidv: TdxEdit;
    edtlov: TdxEdit;
    edlogv: TdxEdit;
    edcepv: TdxButtonEdit;
    ednumv: TdxEdit;
    edcomv: TdxEdit;
    edcmuv: TdxButtonEdit;
    edbaiv: TdxEdit;
    edufv: TdxEdit;
    Bevel7: TBevel;
    Bevel8: TBevel;
    pcdsc: TdxPageControl;
    tsdpro: TdxTabSheet;
    dbgdsc: TdxDBGrid;
    dbgdscCLI_DCAD: TdxDBGridDateColumn;
    dbgdscCLI_CPRO: TdxDBGridButtonColumn;
    dbgdscCLI_PTAB: TdxDBGridMaskColumn;
    dbgdscCLI_PDSC: TdxDBGridMaskColumn;
    dbgdscCLI_VDSC: TdxDBGridMaskColumn;
    dbgdscCLI_DPRO: TdxDBGridMaskColumn;
    dbgdscCLI_DUSU: TdxDBGridMaskColumn;
    SpeedBar7: TSpeedBar;
    SpeedbarSection25: TSpeedbarSection;
    SpeedbarSection26: TSpeedbarSection;
    SpeedbarSection27: TSpeedbarSection;
    SpeedbarSection28: TSpeedbarSection;
    dscI: TSpeedItem;
    dscE: TSpeedItem;
    dscS: TSpeedItem;
    dscC: TSpeedItem;
    dscA: TSpeedItem;
    tsdgrp: TdxTabSheet;
    dbggrp: TdxDBGrid;
    dbggrpCLI_DCAD: TdxDBGridDateColumn;
    dbggrpCLI_RGRP: TdxDBGridMaskColumn;
    dbggrpCLI_VDSC: TdxDBGridMaskColumn;
    dbggrpCLI_PDSC: TdxDBGridMaskColumn;
    dbggrpCLI_PREC: TdxDBGridMaskColumn;
    dbggrpCLI_DGRP: TdxDBGridPickColumn;
    dbggrpCLI_DCOL: TdxDBGridPickColumn;
    dbggrpCLI_DUSU: TdxDBGridMaskColumn;
    SpeedBar8: TSpeedBar;
    SpeedbarSection29: TSpeedbarSection;
    SpeedbarSection30: TSpeedbarSection;
    SpeedbarSection31: TSpeedbarSection;
    SpeedbarSection32: TSpeedbarSection;
    grpI: TSpeedItem;
    grpE: TSpeedItem;
    grpS: TSpeedItem;
    grpC: TSpeedItem;
    grpA: TSpeedItem;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel9: TBevel;
    Bevel3: TBevel;
    cbregi: TdxPickEdit;
    Label57: TLabel;
    cad_cliCLI_VULT: TIBBCDField;
    cad_cliCLI_DULT: TDateField;
    cad_cliCLI_REGI: TIBStringField;
    cad_cli_refID: TIntegerField;
    cad_cli_refCLI_CCLI: TIntegerField;
    cad_cli_refCLI_LOJA: TIBStringField;
    cad_cli_refCLI_CONT: TIBStringField;
    cad_cli_refCLI_DCAD: TDateField;
    cad_cli_refCLI_DULT: TDateField;
    cad_cli_refCLI_DMAI: TDateField;
    cad_cli_refCLI_VULT: TIBBCDField;
    cad_cli_refCLI_VMAI: TIBBCDField;
    cad_cli_refCLI_AVEN: TIBBCDField;
    cad_cli_refCLI_ACUM: TIBBCDField;
    cad_cli_refCLI_DPAG: TIBStringField;
    cad_cli_refCLI_CONC: TIBStringField;
    cad_cli_refCLI_DDD: TIBStringField;
    cad_cli_refCLI_TEL1: TIBStringField;
    cad_cli_refCLI_TEL2: TIBStringField;
    cad_cli_refCLI_OBSE: TMemoField;
    dbgrefCLI_LOJA: TdxDBGridMaskColumn;
    dbgrefCLI_CONT: TdxDBGridMaskColumn;
    dbgrefCLI_DCAD: TdxDBGridDateColumn;
    dbgrefCLI_DULT: TdxDBGridDateColumn;
    dbgrefCLI_DMAI: TdxDBGridDateColumn;
    dbgrefCLI_VULT: TdxDBGridMaskColumn;
    dbgrefCLI_VMAI: TdxDBGridMaskColumn;
    dbgrefCLI_ACUM: TdxDBGridMaskColumn;
    dbgrefCLI_DPAG: TdxDBGridMaskColumn;
    dbgrefCLI_CONC: TdxDBGridPickColumn;
    dbgrefCLI_DDD: TdxDBGridMaskColumn;
    dbgrefCLI_TEL1: TdxDBGridMaskColumn;
    dbgrefCLI_TEL2: TdxDBGridMaskColumn;
    dbgrefCLI_OBSE: TdxDBGridBlobColumn;
    tsOBS: TdxTabSheet;
    pcOBS: TdxPageControl;
    ts1: TdxTabSheet;
    Bevel10: TBevel;
    edobse: TdxMemo;
    ts2: TdxTabSheet;
    Bevel11: TBevel;
    edobso: TdxMemo;
    dxTabSheet3: TdxTabSheet;
    dbgobs: TdxDBGrid;
    dbgobsOBS_DCAD: TdxDBGridDateColumn;
    dbgobsOBS_OBSE: TdxDBGridBlobColumn;
    SpeedBar1: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedbarSection2: TSpeedbarSection;
    SpeedbarSection3: TSpeedbarSection;
    SpeedbarSection4: TSpeedbarSection;
    obsI: TSpeedItem;
    obsE: TSpeedItem;
    obsS: TSpeedItem;
    obsC: TSpeedItem;
    obsA: TSpeedItem;
    SpeedBar3: TSpeedBar;
    SpeedbarSection13: TSpeedbarSection;
    SpeedbarSection14: TSpeedbarSection;
    SpeedbarSection15: TSpeedbarSection;
    SpeedbarSection16: TSpeedbarSection;
    prcI: TSpeedItem;
    prcE: TSpeedItem;
    prcS: TSpeedItem;
    prcC: TSpeedItem;
    prcA: TSpeedItem;
    dbgprc: TdxDBGrid;
    cad_cli_prc: TIBDataSet;
    dtscad_cli_prc: TDataSource;
    cad_cli_prcID: TIntegerField;
    cad_cli_prcCLI_CCLI: TIntegerField;
    cad_cli_prcCLI_DCAD: TDateField;
    cad_cli_prcCLI_MANO: TIBStringField;
    cad_cli_prcCLI_CPRO: TIBStringField;
    cad_cli_prcCLI_DPRO: TIBStringField;
    cad_cli_prcCLI_DPAG: TIBStringField;
    dbgprcCLI_CPRO: TdxDBGridMaskColumn;
    dbgprcCLI_DPRO: TdxDBGridMaskColumn;
    dbgprcCLI_PREC: TdxDBGridMaskColumn;
    dbgprcCLI_DPAG: TdxDBGridPickColumn;
    dbgprcCLI_MANO: TdxDBGridMaskColumn;
    dbgprcCLI_DCAD: TdxDBGridDateColumn;
    cad_cliCLI_CVEN: TIntegerField;
    cad_cliCLI_CREP: TIntegerField;
    cad_cli_dscCLI_PTAB: TFloatField;
    cad_cli_dscCLI_PDSC: TFloatField;
    cad_cli_prcCLI_PREC: TFloatField;
    Label58: TLabel;
    cbstpd: TdxImageEdit;
    cad_cliCLI_DUSU: TIBStringField;
    cad_cliCLI_STPD: TSmallintField;
    cad_cli_crd: TIBDataSet;
    cad_cli_crdID: TIntegerField;
    cad_cli_crdCLI_CDEP: TIntegerField;
    cad_cli_crdCLI_CCLI: TIntegerField;
    cad_cli_crdCLI_CRED: TIBBCDField;
    cbricm: TdxImageEdit;
    procedure FormCreate(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure edcepButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edcepcButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edcepcValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure edcepvButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edcepvValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcpfValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcnpjValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edccliValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcmunValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcmunButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure edcepClick(Sender: TObject);
    procedure edcepEnter(Sender: TObject);
    procedure edtel2DblClick(Sender: TObject);
    procedure edtel1DblClick(Sender: TObject);
    procedure edfaxDblClick(Sender: TObject);
    procedure edcelDblClick(Sender: TObject);
    procedure siCONClick(Sender: TObject);
    procedure edcmucValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcmuvValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcmucButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edcmuvButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edcepValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcredValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvdscKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure banIClick(Sender: TObject);
    procedure banEClick(Sender: TObject);
    procedure banSClick(Sender: TObject);
    procedure banCClick(Sender: TObject);
    procedure banAClick(Sender: TObject);
    procedure cad_cli_banAfterCancel(DataSet: TDataSet);
    procedure cad_cli_banAfterDelete(DataSet: TDataSet);
    procedure cad_cli_banAfterEdit(DataSet: TDataSet);
    procedure cad_cli_banAfterPost(DataSet: TDataSet);
    procedure cad_cli_banNewRecord(DataSet: TDataSet);
    procedure cad_cli_banBeforeCancel(DataSet: TDataSet);
    procedure cad_cli_banBeforeDelete(DataSet: TDataSet);
    procedure dbgbanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure refIClick(Sender: TObject);
    procedure refEClick(Sender: TObject);
    procedure refSClick(Sender: TObject);
    procedure refCClick(Sender: TObject);
    procedure refAClick(Sender: TObject);
    procedure cad_cli_refAfterCancel(DataSet: TDataSet);
    procedure cad_cli_refAfterDelete(DataSet: TDataSet);
    procedure cad_cli_refAfterEdit(DataSet: TDataSet);
    procedure cad_cli_refAfterInsert(DataSet: TDataSet);
    procedure cad_cli_refAfterPost(DataSet: TDataSet);
    procedure cad_cli_refBeforeCancel(DataSet: TDataSet);
    procedure cad_cli_refBeforeDelete(DataSet: TDataSet);
    procedure cad_cli_refNewRecord(DataSet: TDataSet);
    procedure dbgrefKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure obsIClick(Sender: TObject);
    procedure obsEClick(Sender: TObject);
    procedure obsSClick(Sender: TObject);
    procedure obsCClick(Sender: TObject);
    procedure obsAClick(Sender: TObject);
    procedure cad_cli_obsAfterCancel(DataSet: TDataSet);
    procedure cad_cli_obsAfterDelete(DataSet: TDataSet);
    procedure cad_cli_obsAfterEdit(DataSet: TDataSet);
    procedure cad_cli_obsAfterPost(DataSet: TDataSet);
    procedure cad_cli_obsBeforeCancel(DataSet: TDataSet);
    procedure cad_cli_obsBeforeDelete(DataSet: TDataSet);
    procedure cad_cli_obsNewRecord(DataSet: TDataSet);
    procedure socIClick(Sender: TObject);
    procedure socEClick(Sender: TObject);
    procedure socSClick(Sender: TObject);
    procedure socCClick(Sender: TObject);
    procedure socAClick(Sender: TObject);
    procedure cad_cli_socAfterCancel(DataSet: TDataSet);
    procedure cad_cli_socAfterDelete(DataSet: TDataSet);
    procedure cad_cli_socAfterEdit(DataSet: TDataSet);
    procedure cad_cli_socAfterPost(DataSet: TDataSet);
    procedure cad_cli_socBeforeCancel(DataSet: TDataSet);
    procedure cad_cli_socBeforeDelete(DataSet: TDataSet);
    procedure cad_cli_socNewRecord(DataSet: TDataSet);
    procedure dbgsocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edvdscValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcepcClick(Sender: TObject);
    procedure edcepcEnter(Sender: TObject);
    procedure edcepvClick(Sender: TObject);
    procedure edcepvEnter(Sender: TObject);
    procedure cad_cli_banCLI_DESCValidate(Sender: TField);
    procedure cad_cli_dscNewRecord(DataSet: TDataSet);
    procedure dbgdscKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgdscCLI_CPROButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure cad_cli_dscAfterCancel(DataSet: TDataSet);
    procedure cad_cli_dscAfterDelete(DataSet: TDataSet);
    procedure cad_cli_dscAfterEdit(DataSet: TDataSet);
    procedure cad_cli_dscAfterPost(DataSet: TDataSet);
    procedure cad_cli_dscBeforeCancel(DataSet: TDataSet);
    procedure cad_cli_dscBeforeDelete(DataSet: TDataSet);
    procedure dscIClick(Sender: TObject);
    procedure dscEClick(Sender: TObject);
    procedure dscSClick(Sender: TObject);
    procedure dscCClick(Sender: TObject);
    procedure dscAClick(Sender: TObject);
    procedure cad_cli_dscBeforePost(DataSet: TDataSet);
    procedure grpIClick(Sender: TObject);
    procedure grpAClick(Sender: TObject);
    procedure grpEClick(Sender: TObject);
    procedure grpSClick(Sender: TObject);
    procedure grpCClick(Sender: TObject);
    procedure cad_cli_grpAfterCancel(DataSet: TDataSet);
    procedure cad_cli_grpAfterDelete(DataSet: TDataSet);
    procedure cad_cli_grpAfterEdit(DataSet: TDataSet);
    procedure cad_cli_grpAfterPost(DataSet: TDataSet);
    procedure cad_cli_grpBeforeCancel(DataSet: TDataSet);
    procedure cad_cli_grpBeforeDelete(DataSet: TDataSet);
    procedure cad_cli_grpBeforePost(DataSet: TDataSet);
    procedure cad_cli_grpNewRecord(DataSet: TDataSet);
    procedure dbggrpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edufValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edinscExit(Sender: TObject);
    procedure prcIClick(Sender: TObject);
    procedure prcAClick(Sender: TObject);
    procedure prcEClick(Sender: TObject);
    procedure prcSClick(Sender: TObject);
    procedure prcCClick(Sender: TObject);
    procedure cad_cli_prcAfterCancel(DataSet: TDataSet);
    procedure cad_cli_prcAfterDelete(DataSet: TDataSet);
    procedure cad_cli_prcAfterEdit(DataSet: TDataSet);
    procedure cad_cli_prcAfterInsert(DataSet: TDataSet);
    procedure cad_cli_prcAfterPost(DataSet: TDataSet);
    procedure cad_cli_prcBeforeCancel(DataSet: TDataSet);
    procedure cad_cli_prcBeforeDelete(DataSet: TDataSet);
    procedure cad_cli_prcNewRecord(DataSet: TDataSet);
    procedure dbgprcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsBANShow(Sender: TObject);
    procedure tsicomShow(Sender: TObject);
    procedure tsPRCShow(Sender: TObject);
    procedure dxTabSheet3Show(Sender: TObject);
    procedure tssocShow(Sender: TObject);
    procedure tsdscShow(Sender: TObject);
  private
    { Private declarations }
    procedure PESQUISA_PRODUTO(campo,cpro:string);
    procedure PESQUISA_GRUPO(cgrp,dgrp: string);
    procedure NOVO_CLIENTE;
    procedure BUSCA_CEP_COM;
    procedure BUSCA_CEP_COB;
    procedure BUSCA_CEP_ENT;
    procedure PROCESSA_REGIAO(uf: string);
    function  PESQUISA_CLIENTE(pesq,chave: string): boolean;
  public
    { Public declarations }
    editado: boolean;
    IDCliente: Variant;
  end;

var
  frmcad_cli_edi: Tfrmcad_cli_edi;

implementation

uses bDados, pcad_cli, uPrincipal, unLocaliza_Cep, ptab_mun, psintegra, pcad_pro_con,
     pven_nfe;

{$R *.dfm}

procedure Tfrmcad_cli_edi.PROCESSA_REGIAO(uf: string);
begin
  if uf = '' then
     cbregi.Text := ''
  else
  begin
    if (uf = 'AM') or (uf = 'AC') or (uf = 'RO') or (uf = 'RR') or (uf = 'PA') or (uf = 'AP') or (uf = 'TO') then
       cbregi.Text := 'REGIÃO NORTE'
    else if (uf = 'MT') or (uf = 'MS') or (uf = 'DF') or (uf = 'GO') then
       cbregi.Text := 'REGIÃO CENTRO-OESTE'
    else if (uf = 'MA') or (uf = 'PI') or (uf = 'CE') or (uf = 'RN') or (uf = 'PB') or (uf = 'PE') or (uf = 'AL') or (uf = 'SE') or (uf = 'BA') then
       cbregi.Text := 'REGIÃO NORDESTE'
    else if (uf = 'SP') or (uf = 'RJ') or (uf = 'MG') or (uf = 'ES') then
       cbregi.Text := 'REGIÃO SUDESTE'
    else if (uf = 'PR') or (uf = 'SC') or (uf = 'RS') then
       cbregi.Text := 'REGIÃO SUL';
  end;

  if length(trim(edcep.Text)) >= 8 then
  begin
    try
      if (strtoint(copy(edcep.Text,1,5)) >= 01000) and (strtoint(copy(edcep.Text,1,5)) <= 09999) then
      cbregi.Text := 'CAPITAL DE SÃO PAULO';

      if (strtoint(copy(edcep.Text,1,5)) >= 12000) and (strtoint(copy(edcep.Text,1,5)) <= 19999) then
      cbregi.Text := 'INTERIOR DE SÃO PAULO';
    except
      raise exception.Create('Cep Inválido !');
    end;    
  end;
end;

function Tfrmcad_cli_edi.PESQUISA_CLIENTE(pesq,chave: string): boolean;
var
  bret: boolean;
begin
  bret := false;
  try
    if Length(chave) > 10 then
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT CLI_RAZA,CLI_DCAD,ID,CLI_STA FROM CAD_CLI');
        SQL.Add('WHERE '+pesq+' = '''+chave +'''');
        SQL.Add('AND   ID <> '''+edccli.Text+'''');
        Open;

        if fields[3].AsString = '1' then
        begin
          edcnpj.SetFocus;
          messageBox(handle,'Não é possível cadastrar cliente enviado à lixeira !','Pré-Cadastro de Clientes',MB_ICONERROR+MB_OK);
          abort;
        end;

        if (not fields[0].IsNull) then
        begin
          if pesq = 'CLI_CNPJ' then
          begin
            edcnpj.Text := '';
            edcnpj.SetFocus;
            messageBox(handle,PChar('C.N.P.J. já cadastrado.'+#13+
                                    fields[2].AsString+' - '+fields[0].AsString),'Pré-Cadastro de Clientes',MB_ICONERROR+MB_OK);
          end
          else
          begin
            edcpf.Text := '';
            edcpf.SetFocus;
            messageBox(handle,PChar('C.P.F. já cadastrado.'+#13+
                                    fields[2].AsString+' - '+fields[0].AsString),'Pré-Cadastro de Clientes',MB_ICONERROR+MB_OK);
          end;
          abort;
        end;

        bret := true;
      end;
    end;
  finally
    result := bret;
  end;
end;

procedure Tfrmcad_cli_edi.PESQUISA_PRODUTO(campo,cpro:string);
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
     if cad_cli_dsc.Active then
     begin
       if cad_cli_dsc.State = dsBrowse then
       begin
         if cad_cli_dsc.State = dsBrowse then
         begin
           if cad_cli_dsc.Locate('CLI_CPRO',frmprincipal.psq_proARTIGO.AsString,[]) then
              cad_cli_dsc.Edit
           else
             cad_cli_dsc.Append;
         end;

         cad_cli_dscCLI_PTAB.Value := frmprincipal.psq_proVPRC_PAD.AsFloat;
         cad_cli_dscCLI_CPRO.Value := frmprincipal.psq_proSKU.AsString;
         cad_cli_dscCLI_DPRO.Value := frmprincipal.psq_proDECP.AsString;
       end;
     end;  
   end;
end;
procedure Tfrmcad_cli_edi.PESQUISA_GRUPO(cgrp,dgrp: string);
var
  texto, cField: string;
begin
  cField := '';
  texto  := '';

  if cgrp <> '' then
  begin
    cField := 'GRP_REFE';
    texto  := cgrp;
  end
  else if dgrp <> '' then
  begin
    cField := 'GRP_DGRP';
    texto  := dgrp;
  end;

  if cField = '' then
     Abort;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,GRP_REFE,GRP_DGRP FROM CAD_PRO_GRP');
    if cgrp <> '' then
    SQL.Add('WHERE '+cField+' = '''+texto+'''');
//    SQL.Add('AND     GRP_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    Open;

    if fields[0].IsNull then
       DataBaseError('Grade não Cadastrada !');
  end;
end;

procedure Tfrmcad_cli_edi.FormCreate(Sender: TObject);
begin
  inherited;
  IDCliente := '0';

  pcinfo.ActivePageIndex := 0;
  pcmain.ActivePageIndex := 0;
  pccom.ActivePageIndex  := 0;
  pcobs.ActivePageIndex  := 0;
  pcend.ActivePageIndex  := 0;
  pcdsc.ActivePageIndex  := 0;

  if frmprincipal.cad_usuUSU_ADM.AsString <> '1' then
  begin
    tsccom.Enabled := frmprincipal.ACESSO(RECUsuarios.ID,'USU_EDIT','Clientes','Cadastro','Comercial'                  ,false);
    tscfin.Enabled := frmprincipal.ACESSO(RECUsuarios.ID,'USU_EDIT','Clientes','Cadastro','Financeiro'                 ,false);
    tsccco.Enabled := frmprincipal.ACESSO(RECUsuarios.ID,'USU_EDIT','Clientes','Cadastro','Compras'                    ,false);
    edvdsc.Enabled := frmprincipal.ACESSO(RECUsuarios.ID,'USU_EDIT','Clientes','Cadastro','Desconto Pedido'            ,false);
    tsdsc.Enabled  := frmprincipal.ACESSO(RECUsuarios.ID,'USU_EDIT','Clientes','Cadastro','Desconto Produto'           ,false);
    tsban.Enabled  := frmprincipal.ACESSO(RECUsuarios.ID,'USU_EDIT','Clientes','Cadastro','Informações Bancárias'      ,false);
    tsicom.Enabled := frmprincipal.ACESSO(RECUsuarios.ID,'USU_EDIT','Clientes','Cadastro','Informações Comerciais'     ,false);
    edcred.Enabled := frmprincipal.ACESSO(RECUsuarios.ID,'USU_EDIT','Clientes','Cadastro','Limite de Crédito'          ,false);
    ts2.Enabled    := frmprincipal.ACESSO(RECUsuarios.ID,'USU_EDIT','Clientes','Cadastro','Ocorrências'                ,false);
    cbramo.Enabled := frmprincipal.ACESSO(RECUsuarios.ID,'USU_EDIT','Clientes','Cadastro','Ramo de Atividades'         ,false);
    cbdven.Enabled := frmprincipal.ACESSO(RECUsuarios.ID,'USU_EDIT','Clientes','Cadastro','Vendedores / Representantes',false);
    cbdrep.Enabled := frmprincipal.ACESSO(RECUsuarios.ID,'USU_EDIT','Clientes','Cadastro','Vendedores / Representantes',false);
    cbstav.Enabled := frmprincipal.ACESSO(RECUsuarios.ID,'USU_EDIT','Clientes','Cadastro','Status'                     ,false);

    tscep_com.Enabled := tsccom.Enabled;
    tscep_ent.Enabled := tsccom.Enabled;
    tscep_cob.Enabled := tscfin.Enabled;
  end;
  
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   BAN_DESC FROM TAB_BAN');
    SQL.Add('GROUP BY BAN_DESC');
    SQL.Add('ORDER BY BAN_DESC');
    Open;

    while not eof do
    begin
      dbgbanCLI_DESC.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   CLI_RAMO FROM CAD_CLI_RAM');
    SQL.Add('ORDER BY CLI_RAMO');
    Open;

    while not eof do
    begin
      cbramo.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   TRA_FANT FROM CAD_TRA');
    SQL.Add('WHERE    TRA_STA  = 0');
    SQL.Add('ORDER BY TRA_FANT');
    Open;

    while not eof do
    begin
      cbdtra.Values.Add(fields[0].AsString);
      cbdtra.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   PAG_DPAG FROM TAB_PAG');
    SQL.Add('WHERE    PAG_STA = 0');
    SQL.Add('ORDER BY PAG_DPAG');
    Open;

    while not eof do
    begin
      cbdpag.Values.Add(fields[0].AsString);
      cbdpag.Descriptions.Add(fields[0].AsString);

      dbgprcCLI_DPAG.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   VEN_TIPO,ID FROM TAB_PED');
    SQL.Add('WHERE    VEN_STA = 1');
    SQL.Add('ORDER BY VEN_TIPO');
    Open;

    while not eof do
    begin
      cbstpd.Values.Add(fields[1].AsString);
      cbstpd.Descriptions.Add(fields[0].AsString);

      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   REP_FANT FROM CAD_REP');
    SQL.Add('WHERE    REP_STA  = ''0''');
    SQL.Add('ORDER BY REP_FANT');
    Open;
    while not eof do
    begin
      cbdrep.Values.Add(fields[0].AsString);
      cbdrep.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   USU_DUSU FROM CAD_USU');
    SQL.Add('WHERE    USU_MENU = ''VEN''');
    SQL.Add('ORDER BY USU_DUSU');
    Open;
    while not eof do
    begin
      cbdven.Values.Add(fields[0].AsString);
      cbdven.Descriptions.Add(fields[0].AsString);
      next;
    end;
  end;
end;

procedure Tfrmcad_cli_edi.siSAVClick(Sender: TObject);
var
  cven,crep: integer;
begin
  activecontrol := nil;

  if tag = 1 then
  begin
    if frmprincipal.cad_usuUSU_ADM.AsString <> '1' then
    begin
      if not frmprincipal.ACESSO(RECUsuarios.ID,'USU_EDIT','Clientes','Cadastro','Permissões Gerais',false) then
         raise exception.Create('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
    end;
  end;

  if (oTextToValor(edcred.Text) > frmprincipal.parametrosPAR_MCRD.AsFloat) and (frmprincipal.parametrosPAR_MCRD.AsFloat > 0) then
  begin
    messageBox(handle,PChar('Valor informado é maior que Limite estipulado'+#13+'Limite Máximo: '+formatfloat('#,0.00',frmprincipal.parametrosPAR_MCRD.AsFloat)),PChar(self.Caption),MB_ICONERROR+MB_OK);

    if not frmprincipal.ACESSO(RECUsuarios.ID,'USU_AUTO','Financeiro','Contas a Receber','Liberar Limite de Crédito Excedido',false) then
    raise exception.Create('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
  end;

  if (eduf.Text <> 'EX') and (length(edcep.Text) >= 8) then
  begin
    PROCESSA_REGIAO(eduf.Text);

    if cbregi.Text = '' then
    begin
      pcmain.ActivePage := tsend;
      cbregi.SetFocus;

      raise exception.Create('Região do endereço do cliente não informado !');
    end;
  end;
  
  if (cbdven.Text = '') then
  begin
    pcinfo.ActivePage := tsicad;
    cbdven.SetFocus;
    raise exception.Create('Vendedor não informado !');
  end;

  if (edccli.Text = '')  or (edccli.Text = '00000') then
  raise exception.Create('Código do cliente não informado !');

  if edfant.Text = '' then                                  
  begin
    if (pcinfo.ActivePageIndex = 0) and (edfant.Enabled) then
       edfant.SetFocus;
    raise exception.Create('Nome Fantasia não informado !');
  end;

  if edraza.Text = '' then
  begin
    if (pcinfo.ActivePageIndex = 0) and (edraza.Enabled) then
       edraza.SetFocus;
    raise exception.Create('Razão Social não informado !');
  end;

  if cbstav.Text = '' then
  begin
    if (pcinfo.ActivePageIndex = 0) and (cbstav.Enabled) then
       cbstav.SetFocus;
    raise exception.Create('Situação do cliente não informado !');
  end;

  if (edlogr.Text <> '') and (copy(ednume.Text,1,1) = ' ') then
  begin
    if (pcmain.ActivePage = tsEND) and (pcEND.ActivePage = tsCEP_COM) then
        ednume.SetFocus;
    raise exception.Create('Número do logradouro do endereço não cadastrado !');
  end;

  if (edlogr.Text <> '') and (edtlog.Text = '') then
  begin
    if (pcmain.ActivePage = tsEND) and (pcEND.ActivePage = tsCEP_COM) then
        edtlog.SetFocus;
    raise exception.Create('Título do logradouro do endereço não cadastrado !');
  end;

  if (length(edcep.Text) < 8) and (edlogr.Text <> '') then
  begin
    if (pcmain.ActivePage = tsEND) and (pcEND.ActivePage = tsCEP_COM) then
        edcep.SetFocus;
    raise exception.Create('Cep não informado ou digitado incorretamente !');
  end;

  if eddfun.Date <= 0 then
  eddfun.Date := eddcad.Date;

  if (Length(edcnpj.Text) >= 14) and (edinsc.Text = '') then
  begin
    pcinfo.ActivePageIndex := 0;
    edinsc.SetFocus;
    raise exception.Create('Inscrição estadual não informada !');
  end;

  try
    if cbramo.Text <> '' then
    with cad_cli_ram do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_CLI_RAM');
      SelectSQL.Add('WHERE CLI_RAMO = '''+cbramo.Text+'''');
      Open;

      if fields[0].IsNull then
      begin
        Append;
        fields[0].Value := 0;
        fields[1].Value := cbramo.Text;
        Post;
      end;
    end;

    if cbreve.Text = 'SIM' then
    cbreve.Text := '1'
    else
    cbreve.Text := '0';

    if cbcicm.Text = 'SIM' then
    cbcicm.Text := '1'
    else
    cbcicm.Text := '0';

    cven := 0;
    if cbdven.Text <> '' then
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT USU_CUSU FROM CAD_USU');
      SQL.Add('WHERE  USU_DUSU = '''+cbdven.Text+'''');
      SQL.Add('AND    USU_MENU = ''VEN''');
      Open;
      cven := fields[0].AsInteger;
    end;

    crep := 0;
    if cbdrep.Text <> '' then
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_REP');
      SQL.Add('WHERE  REP_FANT = '''+cbdrep.Text+'''');
      Open;
      crep := fields[0].AsInteger;
    end;

    try
      ibSP.StoredProcName := 'SP_CAD_CLI';
      ibSP.Prepare;

      case frmcad_cli_edi.Tag of
        0: ibSP.Params[0].Value := null;
        1: ibSP.Params[0].Value := edccli.Text;
      end;

      ibSP.ParamByName('stpd').Value := cbstpd.Text;
      ibSP.ParamByName('dcad').Value := eddcad.Date;
      ibSP.ParamByName('dalt').Value := eddalt.Date;
      ibSP.ParamByName('dusu').Value := frmprincipal.cad_usuUSU_DUSU.AsString;
      ibSP.ParamByName('dfun').Value := eddfun.Text;
      ibSP.ParamByName('raza').Value := edraza.Text;
      ibSP.ParamByName('site').Value := edsite.Text;
      ibSP.ParamByName('cred').Value := oTextToValor(edcred.Text);
      ibSP.ParamByName('vdsc').Value := oTextToValor(edvdsc.Text);
      ibSP.ParamByName('fant').Value := edfant.Text;
      ibSP.ParamByName('ramo').Value := cbramo.Text;
      ibSP.ParamByName('sta').Value  := '0';
      ibSP.ParamByName('cont').Value := edcont.Text;
      ibSP.ParamByName('fcon').Value := edfcon.Text;
      ibSP.ParamByName('ccon').Value := edccon.Text;
      ibSP.ParamByName('mail').Value := edmail.Text;
      ibSP.ParamByName('fmai').Value := edfmai.Text;
      ibSP.ParamByName('cmai').Value := edcmai.Text;
      ibSP.ParamByName('ddd').Value  := edddd.Text;
      ibSP.ParamByName('dd2').Value  := eddd2.Text;
      ibSP.ParamByName('dd3').Value  := eddd3.Text;
      ibSP.ParamByName('dd4').Value  := eddd4.Text;
      ibSP.ParamByName('dd5').Value  := eddd5.Text;
      ibSP.ParamByName('dd6').Value  := eddd6.Text;
      ibSP.ParamByName('fddd').Value  := edfddd.Text;
      ibSP.ParamByName('fdd2').Value  := edfdd2.Text;
      ibSP.ParamByName('fdd3').Value  := edfdd3.Text;
      ibSP.ParamByName('fdd4').Value  := edfdd4.Text;
      ibSP.ParamByName('fdd5').Value  := edfdd5.Text;
      ibSP.ParamByName('fdd6').Value  := edfdd6.Text;
      ibSP.ParamByName('cddd').Value  := edcddd.Text;
      ibSP.ParamByName('cdd2').Value  := edcdd2.Text;
      ibSP.ParamByName('cdd3').Value  := edcdd3.Text;
      ibSP.ParamByName('cdd4').Value  := edcdd4.Text;
      ibSP.ParamByName('cdd5').Value  := edcdd5.Text;
      ibSP.ParamByName('cdd6').Value  := edcdd6.Text;
      ibSP.ParamByName('tel1').Value  := edtel1.Text;
      ibSP.ParamByName('fte1').Value  := edfte1.Text;
      ibSP.ParamByName('cte1').Value  := edcte1.Text;
      ibSP.ParamByName('tel2').Value  := edtel2.Text;
      ibSP.ParamByName('fte2').Value  := edfte2.Text;
      ibSP.ParamByName('cte2').Value  := edcte2.Text;
      ibSP.ParamByName('tel3').Value  := edtel3.Text;
      ibSP.ParamByName('fte3').Value  := edfte3.Text;
      ibSP.ParamByName('cte3').Value  := edcte3.Text;
      ibSP.ParamByName('fax').Value   := edfax.Text;
      ibSP.ParamByName('ffax').Value  := edffax.Text;
      ibSP.ParamByName('cfax').Value  := edcfax.Text;
      ibSP.ParamByName('cel').Value   := edcel.Text;
      ibSP.ParamByName('fcel').Value  := edfcel.Text;
      ibSP.ParamByName('ccel').Value  := edccel.Text;
      ibSP.ParamByName('ncel').Value  := edncel.Text;
      ibSP.ParamByName('fnce').Value  := edfnce.Text;
      ibSP.ParamByName('cnce').Value  := edcnce.Text;
      ibSP.ParamByName('neid').Value  := edneid.Text;
      ibSP.ParamByName('fnid').Value  := edfnid.Text;
      ibSP.ParamByName('cnid').Value  := edcnid.Text;
      ibSP.ParamByName('tce1').Value  := cbtce1.Text;
      ibSP.ParamByName('tce2').Value  := cbtce2.Text;
      ibSP.ParamByName('ftc1').Value  := cbftc1.Text;
      ibSP.ParamByName('ftc2').Value  := cbftc2.Text;
      ibSP.ParamByName('ctc1').Value  := cbctc1.Text;
      ibSP.ParamByName('ctc2').Value  := cbctc2.Text;
      ibSP.ParamByName('rg').Value    := edrg.Text;
      ibSP.ParamByName('cpf').Value   := edcpf.Text;
      ibSP.ParamByName('insc').Value  := edinsc.Text;
      ibSP.ParamByName('cnpj').Value  := edcnpj.Text;
      ibSP.ParamByName('ccm').Value   := edccm.Text;
      ibSP.ParamByName('imun').Value  := edimun.Text;
      ibSP.ParamByName('tlog').Value  := edtlog.Text;
      ibSP.ParamByName('logr').Value  := edlogr.Text;
      ibSP.ParamByName('cep').Value   := edcep.Text;
      ibSP.ParamByName('cmun').Value  := edcmun.Text;
      ibSP.ParamByName('cmuv').Value  := edcmuv.Text;
      ibSP.ParamByName('cmuc').Value  := edcmuc.Text;
      ibSP.ParamByName('nume').Value  := ednume.Text;
      ibSP.ParamByName('comp').Value  := trim(copy(edcomp.Text,1,40));
      ibSP.ParamByName('bai').Value   := edbai.Text;
      ibSP.ParamByName('cid').Value   := edcid.Text;
      ibSP.ParamByName('esta').Value  := eduf.Text;
      ibSP.ParamByName('regi').Value  := cbregi.Text;
      ibSP.ParamByName('tloc').Value  := edtloc.Text;
      ibSP.ParamByName('logc').Value  := edlogc.Text;
      ibSP.ParamByName('cepc').Value  := edcepc.Text;
      ibSP.ParamByName('numc').Value  := ednumc.Text;
      ibSP.ParamByName('comc').Value  := trim(copy(edcomc.Text,1,40));
      ibSP.ParamByName('baic').Value  := edbaic.Text;
      ibSP.ParamByName('cidc').Value  := edcidc.Text;
      ibSP.ParamByName('estc').Value  := edufc.Text;
      ibSP.ParamByName('tlov').Value  := edtlov.Text;
      ibSP.ParamByName('logv').Value  := edlogv.Text;
      ibSP.ParamByName('cepv').Value  := edcepv.Text;
      ibSP.ParamByName('numv').Value  := ednumv.Text;
      ibSP.ParamByName('comv').Value  := trim(copy(edcomv.Text,1,40));
      ibSP.ParamByName('baiv').Value  := edbaiv.Text;
      ibSP.ParamByName('cidv').Value  := edcidv.Text;
      ibSP.ParamByName('estv').Value  := edufv.Text;
      ibSP.ParamByName('stav').Value  := cbstav.Text;
      ibSP.ParamByName('cven').Value  := cven;
      ibSP.ParamByName('crep').Value  := crep;
      ibSP.ParamByName('tpve').Value  := 'ATACADO';
      ibSP.ParamByName('obso').Value  := edobso.Lines.Text;
      ibSP.ParamByName('obse').Value  := edobse.Lines.Text;

      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID FROM CAD_TRA');
        SQL.Add('WHERE  TRA_FANT = '''+cbdtra.Text+'''');
        Open;
        ibSP.ParamByName('ctra').Value := fields[0].AsInteger;
        ibSP.ParamByName('dtra').Value := cbdtra.Text;

        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAG');
        SQL.Add('WHERE  PAG_DPAG = '''+cbdpag.Text+'''');
        Open;
        ibSP.ParamByName('cpag').Value := oStrZero(fields[0].AsInteger,2);
        ibSP.ParamByName('dpag').Value := cbdpag.Text;
      end;

      ibSP.ParamByName('reve').Value := cbreve.Text;
      ibSP.ParamByName('ricm').Value := cbricm.Text;
      ibSP.ParamByName('cicm').Value := cbcicm.Text;
      ibSP.ExecProc;

      case frmcad_cli_edi.Tag of
        0: frmprincipal.Log_Eve('Clientes','Cadastro de Clientes','Inclusão' ,edccli.Text,edccli.Text,LOWERCASE(edfant.Text),'','');
        1: frmprincipal.Log_Eve('Clientes','Cadastro de Clientes','Alteração',edccli.Text,edccli.Text,LOWERCASE(edfant.Text),'','');
      end;

      with cad_cli_crd do
      begin
        Close;
        SelectSQL.Clear;
        SelectSQL.Add('SELECT * FROM CAD_CLI_CRD');
        SelectSQL.Add('WHERE  CLI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
        SelectSQL.Add('AND    CLI_CCLI = '''+edccli.Text+'''');
        Open;
      end;

      if cad_cli_crd.Fields[0].IsNull then
      begin
        cad_cli_crd.Append;
        cad_cli_crdID.Value := 0;
      end else cad_cli_crd.Edit;

      cad_cli_crdCLI_CDEP.Value := frmprincipal.parametrosID.AsInteger;
      cad_cli_crdCLI_CCLI.Value := strtoint(edccli.Text);
      cad_cli_crdCLI_CRED.Value := oTextToValor(edcred.Text);
      cad_cli_crd.Post;
        
      editado := true;
      IBTra.Commit;
      IBTra.StartTransaction;

      if (frmcad_cli_edi.Tag = 0) then
         NOVO_CLIENTE
      else
      begin
        if assigned(frmven_nfe) then
        begin
          frmven_nfe.cad_cli.Close;
          frmven_nfe.cad_cli.Params[0].Value := edccli.Text;
          frmven_nfe.cad_cli.Open;
        end;
        Close;
      end;  
    except
      editado := false;
      IBTRA.Rollback;
      IBTra.StartTransaction;
    end;
  finally
  end;
end;

procedure Tfrmcad_cli_edi.edcepButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  cCEP: string;
  i: word;
begin
  frmLocaliza_cep := TFrmLocaliza_cep.Create(self);
  try
    frmLocaliza_cep.ShowModal;
  finally
    if frmLocaliza_cep.editado then
    begin
      for i := 1 to length(frmLocaliza_Cep.caCep.Caption) do
      if copy(frmLocaliza_Cep.caCep.Caption,i,1) <> '-' then
         cCEP := cCEP+copy(frmLocaliza_Cep.caCep.Caption,i,1);

      if edtloc.Text = '' then
      begin
        edtloc.Text := frmLocaliza_Cep.caTipo.Caption;
        edlogc.Text := frmLocaliza_Cep.caLogradouro.Caption;
        edcepc.Text := cCEP;
        edbaic.Text := copy(frmLocaliza_Cep.caBairro.Caption,1,40);
        edcidc.Text := copy(frmLocaliza_Cep.caCidade.Caption,1,40);
        edufc.Text  := frmLocaliza_Cep.caUf.Caption;

        with consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT MUN_CMUN FROM TAB_MUN');
          SQL.Add('WHERE  MUN_DMUN = '''+edcidc.Text+'''');
          Open;
          edcmuc.Text := fields[0].AsString;
        end;
      end;

      if edtlov.Text = '' then
      begin
        edtlov.Text := frmLocaliza_Cep.caTipo.Caption;
        edlogv.Text := frmLocaliza_Cep.caLogradouro.Caption;
        edcepv.Text := cCEP;
        edbaiv.Text := copy(frmLocaliza_Cep.caBairro.Caption,1,40);
        edcidv.Text := copy(frmLocaliza_Cep.caCidade.Caption,1,40);
        edufv.Text  := frmLocaliza_Cep.caUf.Caption;

        with consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT MUN_CMUN FROM TAB_MUN');
          SQL.Add('WHERE  MUN_DMUN = '''+edcidv.Text+'''');
          Open;
          edcmuv.Text := fields[0].AsString;
        end;
      end;

      edtlog.Text := frmLocaliza_Cep.caTipo.Caption;
      edlogr.Text := frmLocaliza_Cep.caLogradouro.Caption;
      edbai.Text  := copy(frmLocaliza_Cep.caBairro.Caption,1,40);
      edcid.Text  := copy(frmLocaliza_Cep.caCidade.Caption,1,40);
      eduf.Text   := frmLocaliza_Cep.caUf.Caption;
      edcep.Text  := cCEP;

      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT MUN_CMUN FROM TAB_MUN');
        SQL.Add('WHERE  MUN_DMUN = '''+edcid.Text+'''');
        Open;
        edcmun.Text := fields[0].AsString;
      end;
    end;
    freeAndNil(frmLocaliza_cep);    
    frmLocaliza_cep.Free;
  end;
end;

procedure Tfrmcad_cli_edi.edcepcButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmLocaliza_cep := TFrmLocaliza_cep.Create(self);
  try
    frmLocaliza_cep.ShowModal;
  finally
    if frmLocaliza_cep.editado then
    begin
      edtloc.Text := frmLocaliza_Cep.caTipo.Caption;
      edlogc.Text := frmLocaliza_Cep.caLogradouro.Caption;
      edcepc.Text := frmLocaliza_Cep.caCep.Caption;
      edbaic.Text := copy(cep_logBAI_NO.AsString,1,40);
      edcidc.Text := copy(cep_logLOC_NO.AsString,1,40);
      edufc.Text  := frmLocaliza_Cep.caUf.Caption;
    end;
    freeAndNil(frmLocaliza_cep);
    frmLocaliza_cep.Free;
    
    if (pcmain.ActivePage = tsEND) and (pcend.ActivePage = tsCEP_COB) then
       ednumc.SetFocus;
  end;
end;

procedure Tfrmcad_cli_edi.edcepcValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BUSCA_CEP_COB;
end;

procedure Tfrmcad_cli_edi.FormShow(Sender: TObject);
begin
  inherited;
  if tag = 1 then
  begin
    with cad_cli do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_CLI');
      SelectSQL.Add('WHERE ID = '''+IDCliente+'''');
      Open;

      cbstpd.Text := inttostr(FieldByName('CLI_STPD').AsInteger);
      edccli.Text := oStrZero(FieldByName('ID').AsInteger,5);
      edfant.Text := FieldByName('CLI_FANT').AsString;
      eddcad.Date := FieldByName('CLI_DCAD').AsDateTime;
      eddalt.Date := strtodate(SLPrincipal.Values['data_sistema']);
      eddfun.Date := FieldByName('CLI_DFUN').AsDateTime;
      edraza.Text := FieldByName('CLI_RAZA').AsString;
      edsite.Text := FieldByName('CLI_SITE').AsString;
      edvdsc.Text := formatfloat('#,0.00',FieldByName('CLI_VDSC').AsFloat);
      cbramo.Text := FieldByName('CLI_RAMO').AsString;
      edcont.Text := FieldByName('CLI_CONT').AsString;
      edfcon.Text := FieldByName('CLI_FCON').AsString;
      edccon.Text := FieldByName('CLI_CCON').AsString;
      edmail.Text := FieldByName('CLI_MAIL').AsString;
      edfmai.Text := FieldByName('CLI_FMAI').AsString;
      edcmai.Text := FieldByName('CLI_CMAI').AsString;
      edddd.Text  := FieldByName('CLI_DDD').AsString;
      eddd2.Text  := FieldByName('CLI_DD2').AsString;
      eddd3.Text  := FieldByName('CLI_DD3').AsString;
      eddd4.Text  := FieldByName('CLI_DD4').AsString;
      eddd5.Text  := FieldByName('CLI_DD5').AsString;
      eddd6.Text  := FieldByName('CLI_DD6').AsString;
      edfddd.Text := FieldByName('CLI_FDDD').AsString;
      edfdd2.Text := FieldByName('CLI_FDD2').AsString;
      edfdd3.Text := FieldByName('CLI_FDD3').AsString;
      edfdd4.Text := FieldByName('CLI_FDD4').AsString;
      edfdd5.Text := FieldByName('CLI_FDD5').AsString;
      edfdd6.Text := FieldByName('CLI_FDD6').AsString;
      edcddd.Text := FieldByName('CLI_CDDD').AsString;
      edcdd2.Text := FieldByName('CLI_CDD2').AsString;
      edcdd3.Text := FieldByName('CLI_CDD3').AsString;
      edcdd4.Text := FieldByName('CLI_CDD4').AsString;
      edcdd5.Text := FieldByName('CLI_CDD5').AsString;
      edcdd6.Text := FieldByName('CLI_CDD6').AsString;
      edtel1.Text := oRETNumero(FieldByName('CLI_TEL1').AsString);
      edtel2.Text := FieldByName('CLI_TEL2').AsString;
      edtel3.Text := FieldByName('CLI_TEL3').AsString;
      edfax.Text  := FieldByName('CLI_FAX').AsString;
      edffax.Text := FieldByName('CLI_FFAX').AsString;
      edcfax.Text := FieldByName('CLI_CFAX').AsString;
      edfte1.Text := FieldByName('CLI_FTE1').AsString;
      edfte2.Text := FieldByName('CLI_FTE2').AsString;
      edfte3.Text := FieldByName('CLI_FTE3').AsString;
      edcte1.Text := FieldByName('CLI_CTE1').AsString;
      edcte2.Text := FieldByName('CLI_CTE2').AsString;
      edcte3.Text := FieldByName('CLI_CTE3').AsString;
      edcel.Text  := oRETNumero(FieldByName('CLI_CEL').AsString);
      edfcel.Text := FieldByName('CLI_FCEL').AsString;
      edccel.Text := FieldByName('CLI_CCEL').AsString;
      edneid.Text := FieldByName('CLI_NEID').AsString;
      edfnid.Text := FieldByName('CLI_FNID').AsString;
      edcnid.Text := FieldByName('CLI_CNID').AsString;
      edncel.Text := FieldByName('CLI_NCEL').AsString;
      edfnce.Text := FieldByName('CLI_FNCE').AsString;
      edcnce.Text := FieldByName('CLI_CNCE').AsString;
      cbtce1.Text := FieldByName('CLI_TCE1').AsString;
      cbtce2.Text := FieldByName('CLI_TCE2').AsString;
      cbftc1.Text := FieldByName('CLI_FTC1').AsString;
      cbftc2.Text := FieldByName('CLI_FTC2').AsString;
      cbctc1.Text := FieldByName('CLI_CTC1').AsString;
      cbctc2.Text := FieldByName('CLI_CTC2').AsString;
      edccm.Text  := FieldByName('CLI_CCM').AsString;
      edimun.Text := FieldByName('CLI_IMUN').AsString;

      if FieldByName('CLI_CNPJ').AsString <> '' then
      begin
        edcnpj.Text   := FieldByName('CLI_CNPJ').AsString;
        edinsc.Text   := FieldByName('CLI_INSC').AsString;
      end;

      if FieldByName('CLI_CPF').AsString <> '' then
      begin
        edcpf.Text     := FieldByName('CLI_CPF').AsString;
        edrg.Text      := FieldByName('CLI_RG').AsString;
      end;

      edtlog.Text := FieldByName('CLI_TLOG').AsString;
      edlogr.Text := FieldByName('CLI_LOGR').AsString;
      edcep.Text  := FieldByName('CLI_CEP').AsString;
      edcmun.Text := FieldByName('CLI_CMUN').AsString;
      edcmuv.Text := FieldByName('CLI_CMUV').AsString;
      edcmuc.Text := FieldByName('CLI_CMUC').AsString;
      ednume.Text := FieldByName('CLI_NUME').AsString;
      edcomp.Text := FieldByName('CLI_COMP').AsString;
      edbai.Text  := FieldByName('CLI_BAI').AsString;
      edcid.Text  := FieldByName('CLI_CID').AsString;
      eduf.Text   := FieldByName('CLI_ESTA').AsString;
      cbregi.Text := FieldByName('CLI_REGI').AsString;
      edtloc.Text := FieldByName('CLI_TLOC').AsString;
      edlogc.Text := FieldByName('CLI_LOGC').AsString;
      edcepc.Text := FieldByName('CLI_CEPC').AsString;
      ednumc.Text := FieldByName('CLI_NUMC').AsString;
      edcomc.Text := FieldByName('CLI_COMC').AsString;
      edbaic.Text := FieldByName('CLI_BAIC').AsString;
      edcidc.Text := FieldByName('CLI_CIDC').AsString;
      edufc.Text  := FieldByName('CLI_ESTC').AsString;
      edtlov.Text := FieldByName('CLI_TLOV').AsString;
      edlogv.Text := FieldByName('CLI_LOGV').AsString;
      edcepv.Text := FieldByName('CLI_CEPV').AsString;
      ednumv.Text := FieldByName('CLI_NUMV').AsString;
      edcomv.Text := FieldByName('CLI_COMV').AsString;
      edbaiv.Text := FieldByName('CLI_BAIV').AsString;
      edcidv.Text := FieldByName('CLI_CIDV').AsString;
      edufv.Text  := FieldByName('CLI_ESTV').AsString;
      cbdtra.Text := FieldByName('CLI_DTRA').AsString;
      edobse.Text := FieldByName('CLI_OBSE').Value;
      edobso.Text := FieldByName('CLI_OBSO').Value;
      cbdpag.Text := FieldByName('CLI_DPAG').AsString;

      if FieldByName('CLI_REVE').AsString <> '1' then
      cbreve.Text := 'NÃO'
      else
      cbreve.Text := 'SIM';

      cbricm.Text := IFThen(Pos(FieldByName('CLI_RICM').AsString,'123') = 0,'1',FieldByName('CLI_RICM').AsString);

      if FieldByName('CLI_CICM').AsString <> '1' then
      cbcicm.Text := 'NÃO'
      else
      cbcicm.Text := 'SIM';

      if FieldByName('CLI_STAV').AsString = 'P' then
         cbstav.Text := 'A'
      else
         cbstav.Text := FieldByName('CLI_STAV').AsString;
    end;

    with consulta do
    begin
      if cad_cliCLI_CVEN.AsInteger > 0 then
      begin
        SQL.Clear;
        SQL.Add('SELECT USU_DUSU FROM CAD_USU');
        SQL.Add('WHERE  USU_CUSU = '''+cad_cliCLI_CVEN.AsString+'''');
        SQL.Add('AND    USU_MENU = ''VEN''');
        Open;
        cbdven.Text := fields[0].AsString;
      end;

      if cad_cliCLI_CREP.AsInteger > 0 then
      begin
        SQL.Clear;
        SQL.Add('SELECT REP_FANT FROM CAD_REP');
        SQL.Add('WHERE  ID = '''+cad_cliCLI_CREP.AsString+'''');
        Open;
        cbdrep.Text := fields[0].AsString;
      end;
    end;

    with cad_cli_crd do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_CLI_CRD');
      SelectSQL.Add('WHERE  CLI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SelectSQL.Add('AND    CLI_CCLI = '''+edccli.Text+'''');
      Open;
      edcred.Text := formatfloat('#,0.00',FieldByName('CLI_CRED').AsFloat);
    end;
  end
  else
    NOVO_CLIENTE;

  edfant.SetFocus;
end;

procedure Tfrmcad_cli_edi.NOVO_CLIENTE;
begin
  pcinfo.ActivePageIndex := 0;
  pcmain.ActivePageIndex := 0;

  cbstpd.Text := '0';
  edccli.Text := '00000';
  edfant.Text := '';
  eddcad.Date := strtodate(SLPrincipal.Values['data_sistema']);
  eddalt.Date := strtodate(SLPrincipal.Values['data_sistema']);
  eddfun.Date := strtodate(SLPrincipal.Values['data_sistema']);
  cbstav.Text := 'A';
  edraza.Text := '';
  edsite.Text := '';
  edcred.Text := '0,00';
  cbramo.Text := '';
  edcont.Text := '';
  edfcon.Text := '';
  edccon.Text := '';
  edmail.Text := '';
  edfmai.Text := '';
  edcmai.Text := '';
  edfant.Text := '';
  edddd.Text  := '11';
  eddd2.Text  := '11';
  eddd3.Text  := '11';
  eddd4.Text  := '11';
  eddd5.Text  := '11';
  eddd6.Text  := '11';
  edfddd.Text := '11';
  edfdd2.Text := '11';
  edfdd3.Text := '11';
  edfdd4.Text := '11';
  edfdd5.Text := '11';
  edfdd6.Text := '11';
  edcddd.Text := '11';
  edcdd2.Text := '11';
  edcdd3.Text := '11';
  edcdd4.Text := '11';
  edcdd5.Text := '11';
  edcdd6.Text := '11';
  edtel1.Text := '';
  edtel2.Text := '';
  edtel3.Text := '';
  edfte1.Text := '';
  edfte2.Text := '';
  edfte3.Text := '';
  edcte1.Text := '';
  edcte2.Text := '';
  edcte3.Text := '';
  edfax.Text  := '';
  edffax.Text := '';
  edcfax.Text := '';
  edcel.Text  := '';
  edfcel.Text := '';
  edccel.Text := '';
  edncel.Text := '';
  edfnce.Text := '';
  edcnce.Text := '';
  edneid.Text := '';
  edfnid.Text := '';
  edcnid.Text := '';
  cbtce1.Text := '';
  cbtce2.Text := '';
  cbftc1.Text := '';
  cbftc2.Text := '';
  cbctc1.Text := '';
  cbctc2.Text := '';
  edcnpj.Text := '';
  edinsc.Text := '';
  edcpf.Text  := '';
  edccm.Text  := '';
  edimun.Text := '';
  edrg.Text   := '';
  edfant.Text := '';
  edtlog.Text := '';
  edlogr.Text := '';
  edcep.Text  := '';
  edcmun.Text := '';
  edcmuv.Text := '';
  edcmuc.Text := '';
  ednume.Text := '';
  edcomp.Text := '';
  edbai.Text  := '';
  edcid.Text  := '';
  eduf.Text   := '';
  cbregi.Text := '';
  edtloc.Text := '';
  edlogc.Text := '';
  edcepc.Text := '';
  ednumc.Text := '';
  edcomc.Text := '';
  edbaic.Text := '';
  edcidc.Text := '';
  edufc.Text  := '';
  edtlov.Text := '';
  edlogv.Text := '';
  edcepv.Text := '';
  ednumv.Text := '';
  edcomv.Text := '';
  edbaiv.Text := '';
  edcidv.Text := '';
  edufv.Text  := '';
  edobse.Text := '';
  edobso.Text := '';
  cbdtra.Text := 'CLIENTE RETIRA';
  
  if pcinfo.ActivePageIndex = 0 then
     edfant.SetFocus;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_CAD_CLI,0) FROM RDB$DATABASE');
    Open;

    edccli.Text := oStrZero(fields[0].AsInteger+1,5);

    SQL.Clear;
    SQL.Add('SELECT REP_FANT FROM CAD_REP');
    SQL.Add('WHERE  REP_STA = ''0''');
    SQL.Add('AND    ID = '''+frmprincipal.parametrosPAR_CREP.AsString+'''');
    Open;
    cbdrep.Text := fields[0].AsString;
  end;

  if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
     cbdven.Text := frmprincipal.cad_usuUSU_DUSU.AsString;
end;

procedure Tfrmcad_cli_edi.edcepvButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmLocaliza_cep := TFrmLocaliza_cep.Create(self);
  try
    frmLocaliza_cep.ShowModal;
  finally
    if frmLocaliza_cep.editado then
    begin
      edtlov.Text := frmLocaliza_Cep.caTipo.Caption;
      edlogv.Text := frmLocaliza_Cep.caLogradouro.Caption;
      edcepv.Text := frmLocaliza_Cep.caCep.Caption;
      edbaiv.Text := copy(cep_logBAI_NO.AsString,1,40);
      edcidv.Text := copy(cep_logLOC_NO.AsString,1,40);
      edufv.Text  := frmLocaliza_Cep.caUf.Caption;
    end;
    freeAndNil(frmLocaliza_cep);
    frmLocaliza_cep.Free;

    if (pcmain.ActivePage = tsEND) and (pcend.ActivePage = tsCEP_ENT) then
        ednumv.SetFocus;
  end;
end;

procedure Tfrmcad_cli_edi.edcepvValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BUSCA_CEP_ENT;
end;

procedure Tfrmcad_cli_edi.edcpfValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcpf.Text <> '' then
  begin
    if (not oCPF(edcpf.Text)) then
    begin
      edcpf.Text := '';
      edcpf.SetFocus;
      messageBox(handle,'C.P.F. inválido !','Cadastro de Clientes',MB_ICONERROR+MB_OK);
      Abort;
    end;
    PESQUISA_CLIENTE('CLI_CPF',edcpf.Text);
  end;
end;

procedure Tfrmcad_cli_edi.edcnpjValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcnpj.Text <> '' then
  begin
    if (not oCNPJ(edcnpj.Text)) then
    begin
      edcnpj.Text := '';
      edcnpj.SetFocus;
      messageBox(handle,'C.N.P.J. inválido !','Cadastro de Clientes',MB_ICONERROR+MB_OK);
      Abort;
    end;
    PESQUISA_CLIENTE('CLI_CNPJ',edcnpj.Text);
  end;
end;

procedure Tfrmcad_cli_edi.edccliValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edccli.Text = '' then
     edccli.Text := '00000';

  edccli.Text := oStrZero(strtoint(edccli.Text),5);
  
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT CLI_RAZA FROM CAD_CLI');
    SQL.Add('WHERE  ID = '''+edccli.Text+'''');
    Open;

    if not fields[0].IsNull then
    begin
      edccli.SetFocus;
      raise exception.Create('Cliente já Cadastrado com o mesmo código '+#13+fields[0].AsString);
    end;
  end;
end;

procedure Tfrmcad_cli_edi.edcmunValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcmun.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_MUN');
    SQL.Add('WHERE  MUN_CMUN = '''+edcmun.Text+'''');
    Open;

    if fields[0].IsNull then
       raise exception.Create('Código Municipal Inválido !');
  end;
end;

procedure Tfrmcad_cli_edi.edcmunButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmtab_mun := TFrmtab_mun.Create(self);
  try
    frmtab_mun.FormStyle := fsNormal;
    frmtab_mun.Visible   := false;
    frmtab_mun.Position  := poDesktopCenter;
    frmtab_mun.ShowModal;
  finally
    if frmtab_mun.editado then
       edcmun.Text := frmtab_mun.cadastroMUN_CMUN.AsString;
    freeAndnil(frmtab_mun);
    frmtab_mun.Free;
  end;
end;

procedure Tfrmcad_cli_edi.FormDestroy(Sender: TObject);
begin
  frmcad_cli_edi := nil;
end;

procedure Tfrmcad_cli_edi.edcepClick(Sender: TObject);
begin
  if length(edcep.Text) > 9 then
     edcep.Text := '';
end;

procedure Tfrmcad_cli_edi.edcepEnter(Sender: TObject);
begin
  if length(edcep.Text) > 9 then
     edcep.Text := '';
end;

procedure Tfrmcad_cli_edi.edtel2DblClick(Sender: TObject);
begin
  edtel2.Text := '';
end;

procedure Tfrmcad_cli_edi.edtel1DblClick(Sender: TObject);
begin
  edtel1.Text := '';
end;

procedure Tfrmcad_cli_edi.edfaxDblClick(Sender: TObject);
begin
  edfax.Text := '';
end;

procedure Tfrmcad_cli_edi.edcelDblClick(Sender: TObject);
begin
  edcel.Text := '';
end;

procedure Tfrmcad_cli_edi.siCONClick(Sender: TObject);
function RETORNA_LOGR(endereco: string) : string;
var
  i: word;
begin
  for i := 1 to length(endereco) do
  begin
    if copy(endereco,i,1) = ' ' then
    break;
  end;

  if copy(endereco,1,1) = 'R' then
  edtlog.Text := 'RUA' else
  if copy(endereco,1,1) = 'A' then
  edtlog.Text := 'AVENIDA' else
  if copy(endereco,1,2) = 'AL' then
  edtlog.Text := 'ALAMEDA' else
  if copy(endereco,1,1) = 'P' then
  edtlog.Text := 'PRAÇA' else
  if copy(endereco,1,2) = 'PQ' then
  edtlog.Text := 'PARQUE' else
  if copy(endereco,1,2) = 'PÇ' then
  edtlog.Text := 'PRAÇA' else
  if copy(endereco,1,2) = 'RO' then
  edtlog.Text := 'RODOVIA' else
  if copy(endereco,1,1) = 'T' then
  edtlog.Text := 'TRAVESSA';

  if edtlog.Text = '' then
  edtlog.Text := TRIM(copy(endereco,1,i));

  result := TRIM(copy(endereco,i+1,Length(endereco)));
end;

begin
  frmsintegra := tfrmsintegra.create(self);
  frmsintegra.EditCNPJ.Text := trim(edcnpj.Text);
  try
    frmsintegra.ShowModal;
  finally
    if (frmsintegra.EditUF.Text <> '') and (copy(frmsintegra.EditUF.Text,1,1) <> '*') then
    begin
      if PESQUISA_CLIENTE('CLI_CNPJ',frmsintegra.EditCNPJ.Text) then
      begin
        edcnpj.Text := frmsintegra.EditCNPJ.Text;
        EdRaza.Text := frmsintegra.EditRazaoSocial.Text;
        edlogr.Text := RETORNA_LOGR(frmsintegra.EditEndereco.Text);
        EdComp.Text := frmsintegra.EditComplemento.Text;
        edbai.Text  := frmsintegra.EditBairro.Text;
        edcid.Text  := frmsintegra.EditCidade.Text;
        eduf.Text   := frmsintegra.EditUF.Text;
        ednume.Text := frmsintegra.EditNumero.Text;
        edcep.Text  := copy(frmsintegra.EditCEP.Text,1,5)+copy(frmsintegra.EditCEP.Text,7,3);
        cbramo.Text := frmsintegra.EditCNAE1.Text;
        edobse.Text := frmsintegra.ListCNAE2.Items.Text;

        eddfun.Clear;
        if frmsintegra.EditAbertura.Text <> '' then
        eddfun.Date := strtodate(frmsintegra.EditAbertura.Text);
        edddd.Text  := frmsintegra.EditDDD.Text;
        edtel1.Text := oRETNumero(frmsintegra.EditFone.Text);
        eddd2.Text  := frmsintegra.EditDDD2.Text;
        edtel2.Text := oRETNumero(frmsintegra.EditFone2.Text);
        edInsc.Text := frmsintegra.EDIE.Text;

        if copy(frmsintegra.EditEmail.Text,1,1) <> '*' then
        edmail.Text := LOWERCASE(frmsintegra.EditEmail.Text);

        if copy(frmsintegra.EditFantasia.Text,1,1) <> '*' then
        edfant.Text := frmsintegra.EditFantasia.Text;

        with consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT MUN_CMUN FROM TAB_MUN');
          SQL.Add('WHERE  MUN_DMUN = '''+edcid.Text+'''');
          Open;
          edcmun.Text := fields[0].AsString;
        end;

        PROCESSA_REGIAO(frmsintegra.EditUF.Text);
      end;  
    end;
    freeAndNil(frmsintegra);
    frmsintegra.Free;
  end;
end;

procedure Tfrmcad_cli_edi.edcmucValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
 if edcmuc.Text <> '' then
 with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_MUN');
    SQL.Add('WHERE  MUN_CMUN = '''+edcmuc.Text+'''');
    Open;

    if fields[0].IsNull then
       raise exception.Create('Código Municipal do local de cobrança Inválido !');
  end;
end;

procedure Tfrmcad_cli_edi.edcmuvValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcmuv.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_MUN');
    SQL.Add('WHERE  MUN_CMUN = '''+edcmuv.Text+'''');
    Open;

    if fields[0].IsNull then
       raise exception.Create('Código Municipal do local de entrega Inválido !');
  end;
end;

procedure Tfrmcad_cli_edi.edcmucButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmtab_mun := TFrmtab_mun.Create(self);
  try
    frmtab_mun.FormStyle := fsNormal;
    frmtab_mun.Visible   := false;
    frmtab_mun.Position  := poDesktopCenter;
    frmtab_mun.ShowModal;
  finally
    if frmtab_mun.editado then
       edcmuc.Text := frmtab_mun.cadastroMUN_CMUN.AsString;

    freeAndnil(frmtab_mun);
    frmtab_mun.Free;
  end;
end;

procedure Tfrmcad_cli_edi.edcmuvButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmtab_mun := TFrmtab_mun.Create(self);
  try
    frmtab_mun.FormStyle := fsNormal;
    frmtab_mun.Visible   := false;
    frmtab_mun.Position  := poDesktopCenter;
    frmtab_mun.ShowModal;
  finally
    if frmtab_mun.editado then
       edcmuv.Text := frmtab_mun.cadastroMUN_CMUN.AsString;

    freeAndnil(frmtab_mun);
    frmtab_mun.Free;
  end;
end;

procedure Tfrmcad_cli_edi.BUSCA_CEP_COM;
var
  cCEP: string;
  i: word;
begin
  for i := 1 to length(edcep.Text) do
    if copy(edcep.Text,i,1) <> '-' then
       cCEP := cCEP+copy(edcep.Text,i,1);

  cep_log.Close;
  cep_log.Params[0].Value := cCEP;
  cep_log.Open;

  if not cep_log.Fields[0].IsNull then
  begin
    edtlog.Text := cep_logLOG_TIT.AsString;
    edlogr.Text := cep_logLOG_NO.AsString;
    edcep.Text  := cep_logLOG_CEP.AsString;
    edbai.Text  := copy(cep_logBAI_NO.AsString,1,40);
    edcid.Text  := copy(cep_logLOC_NO.AsString,1,40);
    eduf.Text   := cep_logLOG_UF.AsString;

    PROCESSA_REGIAO(eduf.Text);

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT MUN_CMUN FROM TAB_MUN');
      SQL.Add('WHERE  MUN_DMUN = '''+edcid.Text+'''');
      Open;
      edcmun.Text := fields[0].AsString;
    end;
  end;
  if (pcmain.ActivePage = tsEND) and (pcend.ActivePage = tsCEP_COM) then
      ednume.SetFocus;
end;

procedure Tfrmcad_cli_edi.BUSCA_CEP_COB;
var
  cCEP: string;
  i: word;
begin
  for i := 1 to length(edcepc.Text) do
    if copy(edcepc.Text,i,1) <> '-' then
       cCEP := cCEP+copy(edcepc.Text,i,1);

  cep_log.Close;
  cep_log.Params[0].Value := cCEP;
  cep_log.Open;

  if not cep_log.Fields[0].IsNull then
  begin
    edtloc.Text := cep_logLOG_TIT.AsString;
    edlogc.Text := cep_logLOG_NO.AsString;
    edbaic.Text := copy(cep_logBAI_NO.AsString,1,40);
    edcidc.Text := copy(cep_logLOC_NO.AsString,1,40);
    edufc.Text  := cep_logLOG_UF.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT MUN_CMUN FROM TAB_MUN');
      SQL.Add('WHERE  MUN_DMUN = '''+edcidc.Text+'''');
      Open;
      edcmuc.Text := fields[0].AsString;
    end;
  end;
  
  if (pcmain.ActivePage = tsEND) and (pcend.ActivePage = tsCEP_COB) then
      ednumc.SetFocus;
end;

procedure Tfrmcad_cli_edi.BUSCA_CEP_ENT;
var
  cCEP: string;
  i: word;
begin
  for i := 1 to length(edcepv.Text) do
    if copy(edcepv.Text,i,1) <> '-' then
       cCEP := cCEP+copy(edcepv.Text,i,1);

  cep_log.Close;
  cep_log.Params[0].Value := cCEP;
  cep_log.Open;

  if not cep_log.Fields[0].IsNull then
  begin
    edtlov.Text := cep_logLOG_TIT.AsString;
    edlogv.Text := cep_logLOG_NO.AsString;
    edbaiv.Text := copy(cep_logBAI_NO.AsString,1,40);
    edcidv.Text := copy(cep_logLOC_NO.AsString,1,40);
    edufv.Text  := cep_logLOG_UF.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT MUN_CMUN FROM TAB_MUN');
      SQL.Add('WHERE  MUN_DMUN = '''+edcidv.Text+'''');
      Open;
      edcmuv.Text := fields[0].AsString;
    end;
  end;
  
  if (pcmain.ActivePage = tsEND) and (pcend.ActivePage = tsCEP_ENT) then
      ednumv.SetFocus;
end;


procedure Tfrmcad_cli_edi.edcepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BUSCA_CEP_COM;
end;

procedure Tfrmcad_cli_edi.edcredValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcred.Text = '' then
     edcred.Text := '0';

  edcred.Text := formatfloat('#,0.00',oTextToValor(edcred.Text));
end;

procedure Tfrmcad_cli_edi.edvdscKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    pcMAIN.ActivePageIndex := 0;
    edcont.SetFocus;
  end
end;

procedure Tfrmcad_cli_edi.banIClick(Sender: TObject);
begin
  cad_cli_ban.Append;
end;

procedure Tfrmcad_cli_edi.banAClick(Sender: TObject);
begin
  cad_cli_ban.Edit;
end;

procedure Tfrmcad_cli_edi.banEClick(Sender: TObject);
begin
  cad_cli_ban.Delete;
end;

procedure Tfrmcad_cli_edi.banCClick(Sender: TObject);
begin
  cad_cli_ban.Cancel;
end;

procedure Tfrmcad_cli_edi.banSClick(Sender: TObject);
begin
  cad_cli_ban.Post;
end;

procedure Tfrmcad_cli_edi.cad_cli_banAfterCancel(DataSet: TDataSet);
begin
  banI.Enabled := true;
  banA.Enabled := true;
  banE.Enabled := true;
  banS.Enabled := false;
  banC.Enabled := false;
end;

procedure Tfrmcad_cli_edi.cad_cli_banAfterDelete(DataSet: TDataSet);
begin
  IBtra.CommitRetaining;
  banI.Enabled := true;
  banA.Enabled := true;
  banE.Enabled := true;
  banS.Enabled := false;
  banC.Enabled := false;
end;

procedure Tfrmcad_cli_edi.cad_cli_banAfterEdit(DataSet: TDataSet);
begin
  banI.Enabled := false;
  banA.Enabled := false;
  banE.Enabled := false;
  banS.Enabled := true;
  banC.Enabled := true;

  if pcMAIN.ActivePage = tsBAN then
     dbgban.SetFocus;
end;

procedure Tfrmcad_cli_edi.cad_cli_banAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  banI.Enabled := true;
  banA.Enabled := true;
  banE.Enabled := true;
  banS.Enabled := false;
  banC.Enabled := false;

  wRec := cad_cli_ban.GetBookmark;
  IBTra.CommitRetaining;

  cad_cli_ban.Close;
  cad_cli_ban.Open;
  if (wRec = Nil) or (cad_cli_ban.Fields[0].IsNull) then cad_cli_ban.last
     else cad_cli_ban.GotoBookmark(wRec);
  cad_cli_ban.FreeBookmark(wRec);

  if pcMAIN.ActivePage = tsban then
     dbgban.SetFocus;
end;

procedure Tfrmcad_cli_edi.cad_cli_banBeforeCancel(DataSet: TDataSet);
begin
  if cad_cli_ban.RecordCount = 0 then
  begin
    banI.Enabled := true;
    banA.Enabled := true;
    banE.Enabled := true;
    banS.Enabled := false;
    banC.Enabled := false;

    cad_cli_ban.Close;
    cad_cli_ban.Open;
    ABORT;
  end;
end;

procedure Tfrmcad_cli_edi.cad_cli_banBeforeDelete(DataSet: TDataSet);
begin
  if not cad_cli_ban.Fields[0].IsNull then
  begin
    if oYesNo(handle,'Excluir Registro ?') = mrno then
       abort;
  end;
end;

procedure Tfrmcad_cli_edi.cad_cli_banNewRecord(DataSet: TDataSet);
begin
  cad_cli_banID.Value       := 0;
  cad_cli_banCLI_CCLI.Value := strtoint(edccli.Text);
  cad_cli_banCLI_DCAD.Value := StrToDate(SLPrincipal.Values['data_sistema']);
end;

procedure Tfrmcad_cli_edi.dbgbanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgban.FocusedColumn = 1 then
                 begin
                   if dbgban.EditingText <> '' then
                   with consulta do
                   begin
                     SQL.Clear;
                     SQL.Add('SELECT BAN_BANC,BAN_DESC FROM TAB_BAN');
                     SQL.Add('WHERE  BAN_BANC = '''+dbgban.EditingText+'''');
                     Open;

                     if fields[0].IsNull then
                        DataBaseError('Banco não cadastrado !');

                     cad_cli_banCLI_BANC.Value := fields[0].AsString;
                     cad_cli_banCLI_DESC.Value := fields[1].AsString;
                   end
                   else
                   begin
                     cad_cli_banCLI_BANC.Value := '';
                     cad_cli_banCLI_DESC.Value := '';
                   end;
                   dbgban.FocusedColumn := 3;
                 end
                 else if dbgban.FocusedColumn = 6 then
                 begin
                   cad_cli_ban.Next;
                   if cad_cli_ban.Eof then
                      cad_cli_ban.Append;

                   dbgban.FocusedColumn := 1
                 end
                 else
                    dbgban.FocusedColumn := dbgban.FocusedColumn + 1;
               end;
    VK_INSERT: if cad_cli_ban.State = dsBrowse then banI.Click;
    VK_DELETE: if cad_cli_ban.State = dsBrowse then banE.Click;
    VK_ESCAPE: if cad_cli_ban.State = dsBrowse then {nothing} else banC.Click;
  end;
end;

procedure Tfrmcad_cli_edi.refIClick(Sender: TObject);
begin
  cad_cli_ref.Append;
end;

procedure Tfrmcad_cli_edi.refAClick(Sender: TObject);
begin
  cad_cli_ref.Edit;
end;

procedure Tfrmcad_cli_edi.refEClick(Sender: TObject);
begin
  cad_cli_ref.Delete;
end;

procedure Tfrmcad_cli_edi.refSClick(Sender: TObject);
begin
  cad_cli_ref.Post;
end;

procedure Tfrmcad_cli_edi.refCClick(Sender: TObject);
begin
  cad_cli_ref.Cancel;
end;

procedure Tfrmcad_cli_edi.cad_cli_refAfterCancel(DataSet: TDataSet);
begin
  refI.Enabled := true;
  refA.Enabled := true;
  refE.Enabled := true;
  refS.Enabled := false;
  refC.Enabled := false;
end;

procedure Tfrmcad_cli_edi.cad_cli_refAfterDelete(DataSet: TDataSet);
begin
  IBtra.CommitRetaining;
  refI.Enabled := true;
  refA.Enabled := true;
  refE.Enabled := true;
  refS.Enabled := false;
  refC.Enabled := false;
end;

procedure Tfrmcad_cli_edi.cad_cli_refAfterEdit(DataSet: TDataSet);
begin
  refI.Enabled := false;
  refA.Enabled := false;
  refE.Enabled := false;
  refS.Enabled := true;
  refC.Enabled := true;

  if pcMAIN.ActivePage = tsicom then
     dbgref.SetFocus;
end;

procedure Tfrmcad_cli_edi.cad_cli_refAfterInsert(DataSet: TDataSet);
begin
  refI.Enabled := false;
  refA.Enabled := false;
  refE.Enabled := false;
  refS.Enabled := true;
  refC.Enabled := true;

  if pcMAIN.ActivePage = tsicom then
     dbgref.SetFocus;
end;

procedure Tfrmcad_cli_edi.cad_cli_refAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  refI.Enabled := true;
  refA.Enabled := true;
  refE.Enabled := true;
  refS.Enabled := false;
  refC.Enabled := false;

  wRec := cad_cli_ref.GetBookmark;
  IBTra.CommitRetaining;

  cad_cli_ref.Close;
  cad_cli_ref.Open;
  if (wRec = Nil) or (cad_cli_ref.Fields[0].IsNull) then cad_cli_ref.last
     else cad_cli_ref.GotoBookmark(wRec);
  cad_cli_ref.FreeBookmark(wRec);

  if pcMAIN.ActivePage = tsicom then
     dbgref.SetFocus;
end;

procedure Tfrmcad_cli_edi.cad_cli_refBeforeCancel(DataSet: TDataSet);
begin
  if cad_cli_ref.RecordCount = 0 then
  begin
    refI.Enabled := true;
    refA.Enabled := true;
    refE.Enabled := true;
    refS.Enabled := false;
    refC.Enabled := false;

    cad_cli_ref.Close;
    cad_cli_ref.Open;
    ABORT;
  end;
end;

procedure Tfrmcad_cli_edi.cad_cli_refBeforeDelete(DataSet: TDataSet);
begin
  if not cad_cli_ref.Fields[0].IsNull then
  begin
    if oYesNo(handle,'Excluir Registro ?') = mrno then
       abort;
  end;
end;

procedure Tfrmcad_cli_edi.cad_cli_refNewRecord(DataSet: TDataSet);
begin
  cad_cli_refID.Value       := 0;
  cad_cli_refCLI_CCLI.Value := strtoint(edccli.Text);
  cad_cli_refCLI_DDD.Value  := '11';
  cad_cli_refCLI_DCAD.Value := StrToDate(SLPrincipal.Values['data_sistema']);
  cad_cli_refCLI_DULT.Value := StrToDate(SLPrincipal.Values['data_sistema']);
  cad_cli_refCLI_DMAI.Value := StrToDate(SLPrincipal.Values['data_sistema']);
end;

procedure Tfrmcad_cli_edi.dbgrefKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgref.FocusedColumn = 12 then
                 begin
                   cad_cli_ref.Next;
                   if cad_cli_ref.Eof then
                      cad_cli_ref.Append;

                   dbgref.FocusedColumn := 1
                 end
                 else
                    dbgref.FocusedColumn := dbgref.FocusedColumn + 1;
               end;
    VK_INSERT: if cad_cli_ref.State = dsBrowse then refI.Click;
    VK_DELETE: if cad_cli_ref.State = dsBrowse then refE.Click;
    VK_ESCAPE: if cad_cli_ref.State = dsBrowse then {nothing} else refC.Click;
  end;
end;

procedure Tfrmcad_cli_edi.obsIClick(Sender: TObject);
begin
  cad_cli_obs.Append;
end;

procedure Tfrmcad_cli_edi.obsEClick(Sender: TObject);
begin
  cad_cli_obs.Delete;
end;

procedure Tfrmcad_cli_edi.obsSClick(Sender: TObject);
begin
  cad_cli_obs.Post;
end;

procedure Tfrmcad_cli_edi.obsCClick(Sender: TObject);
begin
  cad_cli_obs.Cancel;
end;

procedure Tfrmcad_cli_edi.obsAClick(Sender: TObject);
begin
  cad_cli_obs.Edit;
end;

procedure Tfrmcad_cli_edi.cad_cli_obsAfterCancel(DataSet: TDataSet);
begin
  obsI.Enabled := true;
  obsA.Enabled := true;
  obsE.Enabled := true;
  obsS.Enabled := false;
  obsC.Enabled := false;
end;

procedure Tfrmcad_cli_edi.cad_cli_obsAfterDelete(DataSet: TDataSet);
begin
  IBtra.CommitRetaining;
  obsI.Enabled := true;
  obsA.Enabled := true;
  obsE.Enabled := true;
  obsS.Enabled := false;
  obsC.Enabled := false;
end;

procedure Tfrmcad_cli_edi.cad_cli_obsAfterEdit(DataSet: TDataSet);
begin
  obsI.Enabled := false;
  obsA.Enabled := false;
  obsE.Enabled := false;
  obsS.Enabled := true;
  obsC.Enabled := true;

  if pcMAIN.ActivePage = tsobs then
     dbgobs.SetFocus;
end;

procedure Tfrmcad_cli_edi.cad_cli_obsAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  obsI.Enabled := true;
  obsA.Enabled := true;
  obsE.Enabled := true;
  obsS.Enabled := false;
  obsC.Enabled := false;

  wRec := cad_cli_obs.GetBookmark;
  IBTra.CommitRetaining;

  cad_cli_obs.Close;
  cad_cli_obs.Open;
  if (wRec = Nil) or (cad_cli_obs.Fields[0].IsNull) then cad_cli_obs.last
     else cad_cli_obs.GotoBookmark(wRec);
  cad_cli_obs.FreeBookmark(wRec);

  if pcMAIN.ActivePage = tsobs then
     dbgobs.SetFocus;
end;

procedure Tfrmcad_cli_edi.cad_cli_obsBeforeCancel(DataSet: TDataSet);
begin
  if cad_cli_obs.RecordCount = 0 then
  begin
    obsI.Enabled := true;
    obsA.Enabled := true;
    obsE.Enabled := true;
    obsS.Enabled := false;
    obsC.Enabled := false;

    cad_cli_obs.Close;
    cad_cli_obs.Open;
    ABORT;
  end;
end;

procedure Tfrmcad_cli_edi.cad_cli_obsBeforeDelete(DataSet: TDataSet);
begin
  if not cad_cli_obs.Fields[0].IsNull then
  begin
    if oYesNo(handle,'Excluir Registro ?') = mrno then
       abort;
  end;
end;

procedure Tfrmcad_cli_edi.cad_cli_obsNewRecord(DataSet: TDataSet);
begin
  cad_cli_obsID.Value       := 0;
  cad_cli_obsobs_CCLI.Value := strtoint(edccli.Text);
  cad_cli_obsobs_DCAD.Value := StrToDate(SLPrincipal.Values['data_sistema']);
end;

procedure Tfrmcad_cli_edi.socIClick(Sender: TObject);
begin
  cad_cli_soc.Append;
end;

procedure Tfrmcad_cli_edi.socEClick(Sender: TObject);
begin
  cad_cli_soc.Delete;
end;

procedure Tfrmcad_cli_edi.socSClick(Sender: TObject);
begin
  cad_cli_soc.Post;
end;

procedure Tfrmcad_cli_edi.socCClick(Sender: TObject);
begin
  cad_cli_soc.Cancel;
end;

procedure Tfrmcad_cli_edi.socAClick(Sender: TObject);
begin
  cad_cli_soc.Edit;
end;

procedure Tfrmcad_cli_edi.cad_cli_socAfterCancel(DataSet: TDataSet);
begin
  socI.Enabled := true;
  socA.Enabled := true;
  socE.Enabled := true;
  socS.Enabled := false;
  socC.Enabled := false;
end;

procedure Tfrmcad_cli_edi.cad_cli_socAfterDelete(DataSet: TDataSet);
begin
  IBtra.CommitRetaining;
  socI.Enabled := true;
  socA.Enabled := true;
  socE.Enabled := true;
  socS.Enabled := false;
  socC.Enabled := false;
end;

procedure Tfrmcad_cli_edi.cad_cli_socAfterEdit(DataSet: TDataSet);
begin
  socI.Enabled := false;
  socA.Enabled := false;
  socE.Enabled := false;
  socS.Enabled := true;
  socC.Enabled := true;

  if pcMAIN.ActivePage = tssoc then
     dbgsoc.SetFocus;
end;

procedure Tfrmcad_cli_edi.cad_cli_socAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  socI.Enabled := true;
  socA.Enabled := true;
  socE.Enabled := true;
  socS.Enabled := false;
  socC.Enabled := false;

  wRec := cad_cli_soc.GetBookmark;
  IBTra.CommitRetaining;

  cad_cli_soc.Close;
  cad_cli_soc.Open;
  if (wRec = Nil) or (cad_cli_soc.Fields[0].IsNull) then cad_cli_soc.last
     else cad_cli_soc.GotoBookmark(wRec);
  cad_cli_soc.FreeBookmark(wRec);

  if pcMAIN.ActivePage = tssoc then
     dbgsoc.SetFocus;
end;

procedure Tfrmcad_cli_edi.cad_cli_socBeforeCancel(DataSet: TDataSet);
begin
  if cad_cli_soc.RecordCount = 0 then
  begin
    socI.Enabled := true;
    socA.Enabled := true;
    socE.Enabled := true;
    socS.Enabled := false;
    socC.Enabled := false;

    cad_cli_soc.Close;
    cad_cli_soc.Open;
    ABORT;
  end;
end;

procedure Tfrmcad_cli_edi.cad_cli_socBeforeDelete(DataSet: TDataSet);
begin
  if not cad_cli_soc.Fields[0].IsNull then
  begin
    if oYesNo(handle,'Excluir Registro ?') = mrno then
       abort;
  end;
end;

procedure Tfrmcad_cli_edi.cad_cli_socNewRecord(DataSet: TDataSet);
begin
  cad_cli_socID.Value       := 0;
  cad_cli_socsoc_CCLI.Value := strtoint(edccli.Text);
  cad_cli_socsoc_DCAD.Value := StrToDate(SLPrincipal.Values['data_sistema']);
end;

procedure Tfrmcad_cli_edi.dbgsocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgsoc.FocusedColumn = 3 then
                 begin
                   cad_cli_soc.Next;
                   if cad_cli_soc.Eof then
                      cad_cli_soc.Append;

                   dbgsoc.FocusedColumn := 1
                 end
                 else
                    dbgsoc.FocusedColumn := dbgsoc.FocusedColumn + 1;
               end;
    VK_INSERT: if cad_cli_soc.State = dsBrowse then socI.Click;
    VK_DELETE: if cad_cli_soc.State = dsBrowse then socE.Click;
    VK_ESCAPE: if cad_cli_soc.State = dsBrowse then {nothing} else socC.Click;
  end;
end;

procedure Tfrmcad_cli_edi.edvdscValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvdsc.Text = '' then
     edvdsc.Text := '0';

  edvdsc.Text := formatfloat('#,0.00',oTextToValor(edvdsc.Text));
end;

procedure Tfrmcad_cli_edi.edcepcClick(Sender: TObject);
begin
  if length(edcepc.Text) > 9 then
     edcepc.Text := '';
end;

procedure Tfrmcad_cli_edi.edcepcEnter(Sender: TObject);
begin
  if length(edcepc.Text) > 9 then
     edcepc.Text := '';
end;

procedure Tfrmcad_cli_edi.edcepvClick(Sender: TObject);
begin
  if length(edcepv.Text) > 9 then
     edcepv.Text := '';
end;

procedure Tfrmcad_cli_edi.edcepvEnter(Sender: TObject);
begin
  if length(edcepv.Text) > 9 then
     edcepv.Text := '';
end;

procedure Tfrmcad_cli_edi.cad_cli_banCLI_DESCValidate(Sender: TField);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT BAN_BANC FROM TAB_BAN');
    SQL.Add('WHERE  BAN_DESC = '''+cad_cli_banCLI_DESC.AsString+'''');
    Open;

    if fields[0].IsNull then
       DataBaseError('Banco não cadastrado !');

    cad_cli_banCLI_BANC.Value := fields[0].AsString;
  end
end;

procedure Tfrmcad_cli_edi.cad_cli_dscNewRecord(DataSet: TDataSet);
begin
  cad_cli_dscID.Value       := 0;
  cad_cli_dscCLI_CCLI.Value := strtoint(edccli.Text);
  cad_cli_dscCLI_DCAD.Value := NOW;
  cad_cli_dscCLI_DUSU.Value := frmprincipal.cad_usuUSU_DUSU.AsString;
end;

procedure Tfrmcad_cli_edi.dbgdscKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgdsc.FocusedColumn = 1 then
                 begin
                   PESQUISA_PRODUTO('Produto',dbgdsc.EditingText);
                   dbgdsc.FocusedColumn := 4;
                 end
                 else if dbgdsc.FocusedColumn = 5 then
                 begin
                   PESQUISA_PRODUTO('Descrição',dbgdsc.EditingText);
                   dbgdsc.FocusedColumn := 4;
                 end
                 else if dbgdsc.FocusedColumn = 4 then
                 begin
                   if (dbgdsc.EditingText = '') or (dbgdsc.EditingText = '0') then
                   begin
                     cad_cli_dscCLI_VDSC.Value := 0;
                     cad_cli_dscCLI_PDSC.Value := 0;
                   end
                   else
                   begin
                     cad_cli_dscCLI_PDSC.Value := oTextToValor(dbgdsc.EditingText);
                     if cad_cli_dscCLI_PDSC.AsFloat < 0 then
                        cad_cli_dscCLI_PDSC.AsFloat := 0;
                     cad_cli_dscCLI_VDSC.Value := cad_cli_dscCLI_PTAB.AsFloat - ((cad_cli_dscCLI_PTAB.AsFloat*cad_cli_dscCLI_PDSC.AsFloat)/100);
                   end;
                 end
                 else if dbgdsc.FocusedColumn = 5 then
                 begin
                   if (dbgdsc.EditingText = '') or (dbgdsc.EditingText = '0') then
                   begin
                     cad_cli_dscCLI_VDSC.Value := 0;
                     cad_cli_dscCLI_PDSC.Value := 0;
                   end
                   else
                   begin
                     cad_cli_dscCLI_VDSC.Value := oTextToValor(dbgdsc.EditingText);
                     if cad_cli_dscCLI_VDSC.AsFloat > cad_cli_dscCLI_PTAB.AsFloat then
                        cad_cli_dscCLI_PDSC.Value := 0
                     else
                        cad_cli_dscCLI_PDSC.Value := ((cad_cli_dscCLI_VDSC.AsFloat*100)/cad_cli_dscCLI_PTAB.AsFloat);
                   end;
                 end
                 else
                    dbgdsc.FocusedColumn := dbgdsc.FocusedColumn + 1;
               end;
    VK_INSERT: if cad_cli_dsc.State = dsBrowse then dscI.Click;
    VK_DELETE: if cad_cli_dsc.State = dsBrowse then dscE.Click;
    VK_ESCAPE: if cad_cli_dsc.State = dsBrowse then {nothing} else dscC.Click;
  end;
end;

procedure Tfrmcad_cli_edi.dbgdscCLI_CPROButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmcad_pro_con := TFrmcad_pro_con.Create(self);
  with frmcad_pro_con.cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAD_PRO.ID      ,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DPRO,CAD_PRO.PRO_CCOR,CAD_PRO.PRO_DCOR,');
    SQL.Add('       CAD_PRO.PRO_DUNI,CAD_PRO.PRO_PREC,CAD_PRO_IMG.PRO_FOTO,CAD_PRO.PRO_CBAR,CAD_PRO.PRO_STA,CAD_PRO.PRO_OBSE,CAD_PRO.PRO_PESO,');
    SQL.Add('       CAD_PRO.PRO_CEMB,CAD_PRO.PRO_GRAD,CAD_PRO.PRO_CCLF,CAD_PRO.PRO_CCST,CAD_PRO.PRO_DGRP,CAD_PRO.PRO_CFOR,');
    SQL.Add('       (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST WHERE CAD_PRO_EST.EST_CPRO = CAD_PRO.PRO_CPRO ) AS PRO_QDIS');
    SQL.Add('FROM   CAD_PRO,CAD_PRO_IMG');
    SQL.Add('WHERE  CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');
    SQL.Add('AND      CAD_PRO.ID = 0');
    SQL.Add('AND      PRO_STA = ''0''');
    SQL.Add('GROUP BY CAD_PRO.ID      ,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DPRO,CAD_PRO.PRO_CCOR,CAD_PRO.PRO_DCOR,');
    SQL.Add('         CAD_PRO.PRO_DUNI,CAD_PRO.PRO_PREC,CAD_PRO_IMG.PRO_FOTO,CAD_PRO.PRO_CBAR,CAD_PRO.PRO_STA,CAD_PRO.PRO_OBSE,CAD_PRO.PRO_PESO,');
    SQL.Add('         CAD_PRO.PRO_CEMB,CAD_PRO.PRO_GRAD,CAD_PRO.PRO_CCLF,CAD_PRO.PRO_CCST,CAD_PRO.PRO_DGRP,CAD_PRO.PRO_CFOR ');
    SQL.Add('ORDER BY CAD_PRO.PRO_CART');
    Open;
  end;
  frmcad_pro_con.ShowModal;
end;

procedure Tfrmcad_cli_edi.cad_cli_dscAfterCancel(DataSet: TDataSet);
begin
  dscI.Enabled := true;
  dscA.Enabled := true;
  dscE.Enabled := true;
  dscS.Enabled := false;
  dscC.Enabled := false;
end;

procedure Tfrmcad_cli_edi.cad_cli_dscAfterDelete(DataSet: TDataSet);
begin
  IBtra.CommitRetaining;
  dscI.Enabled := true;
  dscA.Enabled := true;
  dscE.Enabled := true;
  dscS.Enabled := false;
  dscC.Enabled := false;
end;

procedure Tfrmcad_cli_edi.cad_cli_dscAfterEdit(DataSet: TDataSet);
begin
  dscI.Enabled := false;
  dscA.Enabled := false;
  dscE.Enabled := false;
  dscS.Enabled := true;
  dscC.Enabled := true;

  dbgdsc.FocusedColumn := 1;
  if pcMAIN.ActivePage = tsdsc then
     dbgdsc.SetFocus;
end;

procedure Tfrmcad_cli_edi.cad_cli_dscAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  dscI.Enabled := true;
  dscA.Enabled := true;
  dscE.Enabled := true;
  dscS.Enabled := false;
  dscC.Enabled := false;

  wRec := cad_cli_dsc.GetBookmark;
  IBTra.CommitRetaining;

  cad_cli_dsc.Close;
  cad_cli_dsc.Open;
  if (wRec = Nil) or (cad_cli_dsc.Fields[0].IsNull) then cad_cli_dsc.last
     else cad_cli_dsc.GotoBookmark(wRec);
  cad_cli_dsc.FreeBookmark(wRec);

  if pcMAIN.ActivePage = tsdsc then
     dbgdsc.SetFocus;
end;

procedure Tfrmcad_cli_edi.cad_cli_dscBeforeCancel(DataSet: TDataSet);
begin
  if cad_cli_dsc.RecordCount = 0 then
  begin
    dscI.Enabled := true;
    dscA.Enabled := true;
    dscE.Enabled := true;
    dscS.Enabled := false;
    dscC.Enabled := false;

    cad_cli_dsc.Close;
    cad_cli_dsc.Open;
    ABORT;
  end;
end;

procedure Tfrmcad_cli_edi.cad_cli_dscBeforeDelete(DataSet: TDataSet);
begin
  if not cad_cli_dsc.Fields[0].IsNull then
  begin
    if oYesNo(handle,'Excluir Registro ?') = mrno then
       abort;
  end;
end;

procedure Tfrmcad_cli_edi.dscIClick(Sender: TObject);
begin
  cad_cli_dsc.Append;
end;

procedure Tfrmcad_cli_edi.dscEClick(Sender: TObject);
begin
  cad_cli_dsc.Delete;
end;

procedure Tfrmcad_cli_edi.dscSClick(Sender: TObject);
begin
  cad_cli_dsc.Post;
end;

procedure Tfrmcad_cli_edi.dscCClick(Sender: TObject);
begin
  cad_cli_dsc.Cancel;
end;

procedure Tfrmcad_cli_edi.dscAClick(Sender: TObject);
begin
  cad_cli_dsc.Edit;
end;

procedure Tfrmcad_cli_edi.cad_cli_dscBeforePost(DataSet: TDataSet);
begin
  if cad_cli_dscCLI_PTAB.AsFloat <= 0 then
  DataBaseError('Produto sem Preço de Tabela Definido !');
end;

procedure Tfrmcad_cli_edi.grpIClick(Sender: TObject);
begin
  cad_cli_grp.Append;
end;

procedure Tfrmcad_cli_edi.grpAClick(Sender: TObject);
begin
  cad_cli_grp.Edit;
end;

procedure Tfrmcad_cli_edi.grpEClick(Sender: TObject);
begin
  cad_cli_grp.Delete;
end;

procedure Tfrmcad_cli_edi.grpSClick(Sender: TObject);
begin
  cad_cli_grp.Post;
end;

procedure Tfrmcad_cli_edi.grpCClick(Sender: TObject);
begin
  cad_cli_grp.Cancel;
end;

procedure Tfrmcad_cli_edi.cad_cli_grpAfterCancel(DataSet: TDataSet);
begin
  grpI.Enabled := true;
  grpA.Enabled := true;
  grpE.Enabled := true;
  grpS.Enabled := false;
  grpC.Enabled := false;
end;

procedure Tfrmcad_cli_edi.cad_cli_grpAfterDelete(DataSet: TDataSet);
begin
  IBtra.CommitRetaining;
  grpI.Enabled := true;
  grpA.Enabled := true;
  grpE.Enabled := true;
  grpS.Enabled := false;
  grpC.Enabled := false;
end;

procedure Tfrmcad_cli_edi.cad_cli_grpAfterEdit(DataSet: TDataSet);
begin
  grpI.Enabled := false;
  grpA.Enabled := false;
  grpE.Enabled := false;
  grpS.Enabled := true;
  grpC.Enabled := true;

  dbggrp.FocusedColumn := 1;
  if pcMAIN.ActivePage = tsdpro then
     dbggrp.SetFocus;
end;

procedure Tfrmcad_cli_edi.cad_cli_grpAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  grpI.Enabled := true;
  grpA.Enabled := true;
  grpE.Enabled := true;
  grpS.Enabled := false;
  grpC.Enabled := false;

  wRec := cad_cli_grp.GetBookmark;
  IBTra.CommitRetaining;

  cad_cli_grp.Close;
  cad_cli_grp.Open;
  if (wRec = Nil) or (cad_cli_grp.Fields[0].IsNull) then cad_cli_grp.last
     else cad_cli_grp.GotoBookmark(wRec);
  cad_cli_grp.FreeBookmark(wRec);

  if pcMAIN.ActivePage = tsdgrp then
     dbggrp.SetFocus;
end;

procedure Tfrmcad_cli_edi.cad_cli_grpBeforeCancel(DataSet: TDataSet);
begin
  if cad_cli_grp.RecordCount = 0 then
  begin
    grpI.Enabled := true;
    grpA.Enabled := true;
    grpE.Enabled := true;
    grpS.Enabled := false;
    grpC.Enabled := false;

    cad_cli_grp.Close;
    cad_cli_grp.Open;
    ABORT;
  end;
end;

procedure Tfrmcad_cli_edi.cad_cli_grpBeforeDelete(DataSet: TDataSet);
begin
  if not cad_cli_grp.Fields[0].IsNull then
  begin
    if oYesNo(handle,'Excluir Registro ?') = mrno then
       abort;
  end;
end;

procedure Tfrmcad_cli_edi.cad_cli_grpBeforePost(DataSet: TDataSet);
begin
  if cad_cli_grpCLI_PDSC.AsFloat <= 0 then
     DataBaseError('Produto sem Preço de Tabela Definido !');
end;

procedure Tfrmcad_cli_edi.cad_cli_grpNewRecord(DataSet: TDataSet);
begin
  cad_cli_grpID.Value       := 0;
  cad_cli_grpCLI_CCLI.Value := strtoint(edccli.Text);
  cad_cli_grpCLI_DCAD.Value := NOW;
  cad_cli_grpCLI_DUSU.Value := frmprincipal.cad_usuUSU_DUSU.AsString;
end;

procedure Tfrmcad_cli_edi.dbggrpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbggrp.FocusedColumn = 1 then
                 begin
                   PESQUISA_GRUPO(dbggrp.EditingText,'');
                   dbggrp.FocusedColumn := 4;
                 end
                 else if dbggrp.FocusedColumn = 2 then
                 begin
                   PESQUISA_GRUPO('',dbggrp.EditingText);
                   dbggrp.FocusedColumn := 4;
                 end
                 else
                    dbggrp.FocusedColumn := dbggrp.FocusedColumn + 1;
               end;
    VK_INSERT: if cad_cli_grp.State = dsBrowse then grpI.Click;
    VK_DELETE: if cad_cli_grp.State = dsBrowse then grpE.Click;
    VK_ESCAPE: if cad_cli_grp.State = dsBrowse then {nothing} else grpC.Click;
  end;
end;

procedure Tfrmcad_cli_edi.edufValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  PROCESSA_REGIAO(eduf.Text);
end;

procedure Tfrmcad_cli_edi.edinscExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if copy(edinsc.Text,1,3) = 'ISE' then
    begin
      if edinsc.Text <> 'ISENTO' then
         edinsc.Text := 'ISENTO';
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

procedure Tfrmcad_cli_edi.prcIClick(Sender: TObject);
begin
  cad_cli_prc.Append;
end;

procedure Tfrmcad_cli_edi.prcAClick(Sender: TObject);
begin
  cad_cli_prc.Edit;
end;

procedure Tfrmcad_cli_edi.prcEClick(Sender: TObject);
begin
  cad_cli_prc.Delete;
end;

procedure Tfrmcad_cli_edi.prcSClick(Sender: TObject);
begin
  cad_cli_prc.Post;
end;

procedure Tfrmcad_cli_edi.prcCClick(Sender: TObject);
begin
  cad_cli_prc.Cancel;
end;

procedure Tfrmcad_cli_edi.cad_cli_prcAfterCancel(DataSet: TDataSet);
begin
  prcI.Enabled := true;
  prcA.Enabled := true;
  prcE.Enabled := true;
  prcS.Enabled := false;
  prcC.Enabled := false;
end;

procedure Tfrmcad_cli_edi.cad_cli_prcAfterDelete(DataSet: TDataSet);
begin
  IBtra.CommitRetaining;
  prcI.Enabled := true;
  prcA.Enabled := true;
  prcE.Enabled := true;
  prcS.Enabled := false;
  prcC.Enabled := false;
end;

procedure Tfrmcad_cli_edi.cad_cli_prcAfterEdit(DataSet: TDataSet);
begin
  prcI.Enabled := false;
  prcA.Enabled := false;
  prcE.Enabled := false;
  prcS.Enabled := true;
  prcC.Enabled := true;

  if pcMAIN.ActivePage = tsicom then
     dbgref.SetFocus;
end;

procedure Tfrmcad_cli_edi.cad_cli_prcAfterInsert(DataSet: TDataSet);
begin
  prcI.Enabled := false;
  prcA.Enabled := false;
  prcE.Enabled := false;
  prcS.Enabled := true;
  prcC.Enabled := true;

  if pcMAIN.ActivePage = tsicom then
     dbgref.SetFocus;
end;

procedure Tfrmcad_cli_edi.cad_cli_prcAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  prcI.Enabled := true;
  prcA.Enabled := true;
  prcE.Enabled := true;
  prcS.Enabled := false;
  prcC.Enabled := false;

  wRec := cad_cli_prc.GetBookmark;
  IBTra.CommitRetaining;

  cad_cli_prc.Close;
  cad_cli_prc.Open;
  if (wRec = Nil) or (cad_cli_prc.Fields[0].IsNull) then cad_cli_prc.last
     else cad_cli_prc.GotoBookmark(wRec);
  cad_cli_prc.FreeBookmark(wRec);

  if pcMAIN.ActivePage = tsicom then
     dbgref.SetFocus;
end;

procedure Tfrmcad_cli_edi.cad_cli_prcBeforeCancel(DataSet: TDataSet);
begin
  if cad_cli_prc.RecordCount = 0 then
  begin
    prcI.Enabled := true;
    prcA.Enabled := true;
    prcE.Enabled := true;
    prcS.Enabled := false;
    prcC.Enabled := false;

    cad_cli_prc.Close;
    cad_cli_prc.Open;
    ABORT;
  end;
end;

procedure Tfrmcad_cli_edi.cad_cli_prcBeforeDelete(DataSet: TDataSet);
begin
  if not cad_cli_prc.Fields[0].IsNull then
  begin
    if oYesNo(handle,'Excluir Registro ?') = mrno then
       abort;
  end;
end;

procedure Tfrmcad_cli_edi.cad_cli_prcNewRecord(DataSet: TDataSet);
begin
  cad_cli_prcID.Value       := 0;
  cad_cli_prcCLI_CCLI.Value := strtoint(edccli.Text);
  cad_cli_prcCLI_DCAD.Value := strtodate(SLPrincipal.Values['data_sistema']);
  cad_cli_prcCLI_MANO.Value := oStrZero(monthof(cad_cli_prcCLI_DCAD.AsDateTime),2)+'/'+oStrZero(yearof(cad_cli_prcCLI_DCAD.AsDateTime),4);
end;

procedure Tfrmcad_cli_edi.dbgprcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgprc.FocusedColumn = 3 then
                 begin
                   cad_cli_prc.Next;
                   if cad_cli_prc.Eof then
                      cad_cli_prc.Append;

                   dbgprc.FocusedColumn := 1
                 end
                 else
                    dbgprc.FocusedColumn := dbgprc.FocusedColumn + 1;
               end;
    VK_INSERT: if cad_cli_prc.State = dsBrowse then prcI.Click;
    VK_DELETE: if cad_cli_prc.State = dsBrowse then prcE.Click;
    VK_ESCAPE: if cad_cli_prc.State = dsBrowse then {nothing} else prcC.Click;
  end;
end;

procedure Tfrmcad_cli_edi.tsBANShow(Sender: TObject);
begin
  if not cad_cli_ban.Active then
  with cad_cli_ban do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_CLI_BAN');
    SelectSQL.Add('WHERE CLI_CCLI = '''+edccli.Text+'''');
    Open;
  end;
end;

procedure Tfrmcad_cli_edi.tsicomShow(Sender: TObject);
begin
  if not cad_cli_ref.Active then
  with cad_cli_ref do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_CLI_REF');
    SelectSQL.Add('WHERE CLI_CCLI = '''+edccli.Text+'''');
    Open;
  end;
end;

procedure Tfrmcad_cli_edi.tsPRCShow(Sender: TObject);
begin
  if not cad_cli_prc.Active then
  with cad_cli_prc do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_CLI_PRC');
    SelectSQL.Add('WHERE CLI_CCLI = '''+edccli.Text+'''');
    Open;
  end;
end;

procedure Tfrmcad_cli_edi.dxTabSheet3Show(Sender: TObject);
begin
  if not cad_cli_obs.Active then
  with cad_cli_obs do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_CLI_OBS');
    SelectSQL.Add('WHERE OBS_CCLI = '''+edccli.Text+'''');
    Open;
  end;
end;

procedure Tfrmcad_cli_edi.tssocShow(Sender: TObject);
begin
  if not cad_cli_soc.Active then
  with cad_cli_soc do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_CLI_SOC');
    SelectSQL.Add('WHERE SOC_CCLI = '''+edccli.Text+'''');
    Open;
  end;
end;

procedure Tfrmcad_cli_edi.tsdscShow(Sender: TObject);
begin
  if not cad_cli_dsc.Active then
  with cad_cli_dsc do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_CLI_DSC');
    SelectSQL.Add('WHERE CLI_CCLI = '''+edccli.Text+'''');
    Open;
  end;
end;

end.



