unit pCAD_PRO;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pSHE_DEF_PSQ, cxGraphics, dxExEdtr, dxsbar, DB, ImgList,
  IBEvents, IBStoredProc, IBCustomDataSet, IBQuery, IBSQL, IBDatabase,
  ActnList, dxBar, dxBarExtItems, dxDockControl, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDockPanel, dxPageControl, ExtCtrls, cxControls, dxStatusBar,
  dxDBTLCl, dxGrClms,
  math, StrUtils, IDGlobal, DBCtrls, dxEditor, dxEdLib, dxDBELib;

type
  TFrmCAD_PRO = class(TFrmSHE_DEF_PSQ)
    ConsultaID: TLargeintField;
    ConsultaIDEP: TSmallintField;
    ConsultaDEEP: TIBStringField;
    ConsultaREST: TIBStringField;
    ConsultaARTIGO: TIBStringField;
    ConsultaDECP: TIBStringField;
    ConsultaIDAK: TLargeintField;
    ConsultaNCM: TIBStringField;
    ConsultaPIPI: TIBBCDField;
    ConsultaIDCF: TSmallintField;
    ConsultaDECF: TIBStringField;
    ConsultaUCOM: TIBStringField;
    ConsultaLJV_UCOM: TIBStringField;
    DBGConsultaARTIGO: TdxDBGridMaskColumn;
    DBGConsultaDECP: TdxDBGridMaskColumn;
    DBGConsultaNCM: TdxDBGridMaskColumn;
    DBGConsultaPIPI: TdxDBGridMaskColumn;
    DBGConsultaUCOM: TdxDBGridMaskColumn;
    DBGConsultaUCON: TdxDBGridMaskColumn;
    BLBPSQ_ART: TdxBarLargeButton;
    ConsultaUCON: TIBStringField;
    ConsultaLJV_UCON: TIBStringField;
    ConsultaUQTDE_VEN_MIN: TSmallintField;
    ConsultaUQTDE_VEN_MUL: TSmallintField;
    DBGConsultaDEEP: TdxDBGridMaskColumn;
    DBGConsultaDECF: TdxDBGridMaskColumn;
    DBGConsultaLJV_UCOM: TdxDBGridMaskColumn;
    DBGConsultaLJV_UCON: TdxDBGridMaskColumn;
    PNLFKConsulta: TPanel;
    ConsultaINFADCAD: TIBStringField;
    ConsultaINFADTEC: TIBStringField;
    CAD_PRO_IMG_CDN: TIBQuery;
    CAD_PRO_IMG_CDNIMG_ID: TLargeintField;
    CAD_PRO_IMG_CDNIMG_NO: TIBStringField;
    CAD_PRO_IMG_CDNIMG_PAD: TBlobField;
    CAD_PRO_IMG_CDNPDF_NO: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP1: TBlobField;
    CAD_PRO_IMG_CDNILA_INS1: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS1: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP2: TBlobField;
    CAD_PRO_IMG_CDNILA_INS2: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS2: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP3: TBlobField;
    CAD_PRO_IMG_CDNILA_INS3: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS3: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP4: TBlobField;
    CAD_PRO_IMG_CDNILA_INS4: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS4: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP5: TBlobField;
    CAD_PRO_IMG_CDNILA_INS5: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS5: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP6: TBlobField;
    CAD_PRO_IMG_CDNILA_INS6: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS6: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP7: TBlobField;
    CAD_PRO_IMG_CDNILA_INS7: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS7: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP8: TBlobField;
    CAD_PRO_IMG_CDNILA_INS8: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS8: TIBStringField;
    DTSCAD_PRO_IMG_CDN: TDataSource;
    CAD_PRO_FIC: TIBQuery;
    CAD_PRO_FICIDCP: TIntegerField;
    CAD_PRO_FICMPESO: TIBBCDField;
    CAD_PRO_FICMPSCN: TIBBCDField;
    CAD_PRO_FICMMETRO: TIBBCDField;
    CAD_PRO_FICMGRAMA: TIBBCDField;
    CAD_PRO_FICMREND: TIBBCDField;
    CAD_PRO_FICMLGRU: TIBBCDField;
    CAD_PRO_FICMLGRT: TIBBCDField;
    CAD_PRO_FICMELAL: TIBBCDField;
    CAD_PRO_FICMELAC: TIBBCDField;
    CAD_PRO_FICMENCL: TIBBCDField;
    CAD_PRO_FICMENCC: TIBBCDField;
    CAD_PRO_FICINFADCAD: TIBStringField;
    DTSCAD_PRO_FIC: TDataSource;
    CAD_PRO_PRC: TIBQuery;
    CAD_PRO_PRCIDCP: TIntegerField;
    CAD_PRO_PRCCF_VPRC_PAD: TFloatField;
    CAD_PRO_PRCCF_VPRC_ORI: TIBStringField;
    CAD_PRO_PRCVPRC_PAD: TFloatField;
    CAD_PRO_PRCVPRC_PRZ: TFloatField;
    CAD_PRO_PRCVPRC_PRO: TFloatField;
    CAD_PRO_PRCATJ_VPRC_PAD: TFloatField;
    CAD_PRO_PRCATJ_VPRC_PRZ: TFloatField;
    CAD_PRO_PRCATJ_VPRC_PRO: TFloatField;
    CAD_PRO_PRCVAR_VPRC_PAD: TFloatField;
    CAD_PRO_PRCVAR_VPRC_PRZ: TFloatField;
    CAD_PRO_PRCVAR_VPRC_PRO: TFloatField;
    CAD_PRO_PRCREP_VPRC_PAD: TFloatField;
    CAD_PRO_PRCREP_VPRC_PRZ: TFloatField;
    CAD_PRO_PRCREP_VPRC_PRO: TFloatField;
    CAD_PRO_PRCLJV_VPRC_PAD: TFloatField;
    CAD_PRO_PRCLJV_VPRC_PRZ: TFloatField;
    CAD_PRO_PRCLJV_VPRC_PRO: TFloatField;
    CAD_PRO_PRCC_CF_VPRC_PAD: TStringField;
    DTSCAD_PRO_PRC: TDataSource;
    PNLCAD_PRO: TPanel;
    PNLCAD_PRO_ME: TPanel;
    PNLCAD_PRO_MD: TPanel;
    PNLCAD_PRO_CE: TPanel;
    PNLCAD_PRO_FIC: TPanel;
    DSCAD_PRO_FIC: TdxDockSite;
    LDSCAD_PRO_FIC: TdxLayoutDockSite;
    DPCAD_PRO_FIC: TdxDockPanel;
    DBGCAD_PRO_FIC: TdxDBGrid;
    DBGCAD_PRO_FICMMETRO: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMGRAMA: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMREND: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMPESO: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMLGRT: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMLGRU: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMENCC: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMENCL: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMELAC: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMELAL: TdxDBGridMaskColumn;
    PNLCAD_PRO_FIC_BOT: TPanel;
    PNLIMG: TPanel;
    DSIMG_PAD: TdxDockSite;
    LDSIMG_PAD: TdxLayoutDockSite;
    TCDSIMG_PAD: TdxTabContainerDockSite;
    DPIMG_PAD: TdxDockPanel;
    PNLIMG_PAD: TPanel;
    IMG_PAD: TImage;
    DPIMG_ILA: TdxDockPanel;
    PNLIMG_ILA: TPanel;
    BILA_BMP1: TBevel;
    BILA_BMP2: TBevel;
    BILA_BMP3: TBevel;
    BILA_BMP4: TBevel;
    BILA_BMP5: TBevel;
    BILA_BMP6: TBevel;
    BILA_BMP7: TBevel;
    BILA_BMP8: TBevel;
    DBILA_BMP1: TDBImage;
    DBILA_BMP2: TDBImage;
    DBILA_BMP3: TDBImage;
    DBILA_BMP4: TDBImage;
    DBILA_BMP5: TDBImage;
    DBILA_BMP6: TDBImage;
    DBILA_BMP7: TDBImage;
    DBILA_BMP8: TDBImage;
    PNLDSConsulta_BOT: TPanel;
    EST_EPE: TIBQuery;
    EST_EPEIDEP: TSmallintField;
    EST_EPESGEP: TIBStringField;
    EST_EPEREST: TIBStringField;
    EST_EPEDEST: TIBStringField;
    EST_EPEIDCP: TIntegerField;
    EST_EPEDTEV: TDateTimeField;
    EST_EPESKU: TIBStringField;
    EST_EPECEAN: TIBStringField;
    EST_EPEDGCP: TIBStringField;
    EST_EPECF_NCM: TIBStringField;
    EST_EPECF_SKU: TIBStringField;
    EST_EPECF_CEAN: TIBStringField;
    EST_EPEEPE_QTDE: TIBBCDField;
    EST_EPEEPE_QTRL: TIntegerField;
    EST_EPEEEP_QTDE: TIBBCDField;
    EST_EPEEEP_QTRL: TIntegerField;
    EST_EPEECO_DECO: TIBStringField;
    EST_EPEC_ID: TIntegerField;
    DTSEST_EPE: TDataSource;
    DBGConsultaREST: TdxDBGridMaskColumn;
    PNLIMG_ARQ: TPanel;
    EST_EPECDST: TSmallintField;
    EST_FIS: TIBQuery;
    EST_FISID: TLargeintField;
    EST_FISSGEP: TIBStringField;
    EST_FISLGCA: TIBStringField;
    EST_FISDTCA: TDateTimeField;
    EST_FISCDRO: TLargeintField;
    EST_FISDTRO: TDateTimeField;
    EST_FISDEPD: TIBStringField;
    EST_FISDTPD: TDateField;
    EST_FISDECE: TIBStringField;
    EST_FISCDET: TLargeintField;
    EST_FISCTNR: TIBStringField;
    EST_FISLOTE: TIBStringField;
    EST_FISSKU: TIBStringField;
    EST_FISDGCP: TIBStringField;
    EST_FISQTDE: TIBBCDField;
    EST_FISQTRL: TIntegerField;
    EST_FISCDDF: TSmallintField;
    EST_FISLGDF: TIBStringField;
    EST_FISDTDF: TDateTimeField;
    EST_FISDEDF: TIBStringField;
    EST_FISFADF: TIBStringField;
    EST_FISC_ID: TIntegerField;
    DTSEST_FIS: TDataSource;
    EST_ERV: TIBQuery;
    EST_ERVID: TLargeintField;
    EST_ERVSGEP: TIBStringField;
    EST_ERVLGCA: TIBStringField;
    EST_ERVDTCA: TDateTimeField;
    EST_ERVCDRO: TLargeintField;
    EST_ERVDTRO: TDateTimeField;
    EST_ERVDEPD: TIBStringField;
    EST_ERVDTPD: TDateField;
    EST_ERVDECE: TIBStringField;
    EST_ERVCDET: TLargeintField;
    EST_ERVCTNR: TIBStringField;
    EST_ERVLOTE: TIBStringField;
    EST_ERVSKU: TIBStringField;
    EST_ERVDGCP: TIBStringField;
    EST_ERVQTDE: TIBBCDField;
    EST_ERVQTRL: TIntegerField;
    EST_ERVCDDF: TSmallintField;
    EST_ERVLGDF: TIBStringField;
    EST_ERVDTDF: TDateTimeField;
    EST_ERVDEDF: TIBStringField;
    EST_ERVFADF: TIBStringField;
    EST_ERVC_ID: TIntegerField;
    DTSEST_ERV: TDataSource;
    PNLPKEstoque: TPanel;
    DSPKEstoque: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    TCDSPKEstoque: TdxTabContainerDockSite;
    DPEST_EPE: TdxDockPanel;
    DBGEST_EPE: TdxDBGrid;
    DBGEST_EPESKU: TdxDBGridMaskColumn;
    DBGEST_EPEDGCP: TdxDBGridMaskColumn;
    DBGEST_EPEEPE_QTDE: TdxDBGridMaskColumn;
    DBGEST_EPEEPE_QTRL: TdxDBGridMaskColumn;
    DBGEST_EPEEEP_QTDE: TdxDBGridMaskColumn;
    DBGEST_EPEEEP_QTRL: TdxDBGridColumn;
    DBGEST_EPEC_ID: TdxDBGridColumn;
    DPCAD_PRO: TdxDockPanel;
    DBGEST_EPE_CPL: TdxDBGrid;
    DBGEST_EPE_CPLEPE_QTDE: TdxDBGridMaskColumn;
    DBGEST_EPE_CPLEPE_QTRL: TdxDBGridMaskColumn;
    DBGEST_EPE_CPLEEP_QTDE: TdxDBGridMaskColumn;
    DBGEST_EPE_CPLEEP_QTRL: TdxDBGridColumn;
    DBGEST_EPE_CPLCEAN: TdxDBGridMaskColumn;
    DBGEST_EPE_CPLREST: TdxDBGridMaskColumn;
    DBGEST_EPE_CPLDEST: TdxDBGridMaskColumn;
    DBGEST_EPE_CPLCF_SKU: TdxDBGridMaskColumn;
    DBGEST_EPE_CPLCF_NCM: TdxDBGridMaskColumn;
    DBGEST_EPE_CPLCF_CEAN: TdxDBGridMaskColumn;
    DBGEST_EPE_CPLC_ID: TdxDBGridColumn;
    DBGEST_EPEREST: TdxDBGridMaskColumn;
    DBGEST_EPESGEP: TdxDBGridMaskColumn;
    EST_FISABTP: TIBStringField;
    EST_FISABOP: TIBStringField;
    EST_ERVABTP: TIBStringField;
    EST_ERVABOP: TIBStringField;
    EST_FISINFADCAD: TIBStringField;
    EST_ERVINFADCAD: TIBStringField;
    PNLFKEstoque: TPanel;
    DSFKEstoque: TdxDockSite;
    dxLayoutDockSite2: TdxLayoutDockSite;
    TCDSFKEstoque: TdxTabContainerDockSite;
    DPEST_FIS: TdxDockPanel;
    DBGEST_FIS: TdxDBGrid;
    DBGEST_FISSKU: TdxDBGridMaskColumn;
    DBGEST_FISDGCP: TdxDBGridMaskColumn;
    DBGEST_FISSGEP: TdxDBGridMaskColumn;
    DBGEST_FISQTDE: TdxDBGridMaskColumn;
    DBGEST_FISQTRL: TdxDBGridMaskColumn;
    DBGEST_FISCDET: TdxDBGridColumn;
    DBGEST_FISCTNR: TdxDBGridMaskColumn;
    DBGEST_FISLOTE: TdxDBGridMaskColumn;
    DBGEST_FISABTP: TdxDBGridColumn;
    DBGEST_FISCDRO: TdxDBGridColumn;
    DBGEST_FISDTRO: TdxDBGridDateColumn;
    DBGEST_FISDEPD: TdxDBGridMaskColumn;
    DBGEST_FISDECE: TdxDBGridMaskColumn;
    DBGEST_FISLGCA: TdxDBGridMaskColumn;
    DBGEST_FISCDDF: TdxDBGridMaskColumn;
    DBGEST_FISDEDF: TdxDBGridMaskColumn;
    DBGEST_FISFADF: TdxDBGridMaskColumn;
    DBGEST_FISLGDF: TdxDBGridMaskColumn;
    DBGEST_FISDTDF: TdxDBGridDateColumn;
    DBGEST_FISC_ID: TdxDBGridColumn;
    DPEST_ERV: TdxDockPanel;
    DBGEST_ERV: TdxDBGrid;
    DBGEST_ERVSKU: TdxDBGridMaskColumn;
    DBGEST_ERVDGCP: TdxDBGridMaskColumn;
    DBGEST_ERVSGEP: TdxDBGridMaskColumn;
    DBGEST_ERVQTDE: TdxDBGridMaskColumn;
    DBGEST_ERVQTRL: TdxDBGridMaskColumn;
    DBGEST_ERVCDET: TdxDBGridColumn;
    DBGEST_ERVCTNR: TdxDBGridMaskColumn;
    DBGEST_ERVLOTE: TdxDBGridMaskColumn;
    DBGEST_ERVABTP: TdxDBGridColumn;
    DBGEST_ERVABOP: TdxDBGridMaskColumn;
    DBGEST_ERVCDRO: TdxDBGridColumn;
    DBGEST_ERVDTRO: TdxDBGridDateColumn;
    DBGEST_ERVDEPD: TdxDBGridMaskColumn;
    DBGEST_ERVDECE: TdxDBGridMaskColumn;
    DBGEST_ERVLGCA: TdxDBGridMaskColumn;
    DBGEST_ERVCDDF: TdxDBGridMaskColumn;
    DBGEST_ERVDEDF: TdxDBGridMaskColumn;
    DBGEST_ERVFADF: TdxDBGridMaskColumn;
    DBGEST_ERVLGDF: TdxDBGridMaskColumn;
    DBGEST_ERVDTDF: TdxDBGridDateColumn;
    DBGEST_ERVC_ID: TdxDBGridColumn;
    PNLINFADFIS: TPanel;
    DSINFADFIS: TdxDockSite;
    dxLayoutDockSite3: TdxLayoutDockSite;
    DPINFADFIS: TdxDockPanel;
    DBINFADFIS: TdxDBMemo;
    PNLINFADERV: TPanel;
    DSINFADERV: TdxDockSite;
    dxLayoutDockSite5: TdxLayoutDockSite;
    DPINFADERV: TdxDockPanel;
    DBINFADERV: TdxDBMemo;
    PNLINFADEPE: TPanel;
    DSINFADEPE: TdxDockSite;
    dxLayoutDockSite6: TdxLayoutDockSite;
    DPINFADEPE: TdxDockPanel;
    DBINFADEPE: TdxDBMemo;
    EST_FISEST_PDV: TSmallintField;
    EST_FISEST_SEP: TSmallintField;
    EST_FISEST_DEV: TSmallintField;
    EST_FISEST_DEF: TSmallintField;
    EST_FISEST_EPE: TSmallintField;
    EST_FISEST_ERV: TSmallintField;
    EST_FISEST_EPI: TSmallintField;
    EST_FISEST_ESU: TSmallintField;
    EST_FISEST_EAT: TSmallintField;
    EST_ERVEST_PDV: TSmallintField;
    EST_ERVEST_SEP: TSmallintField;
    EST_ERVEST_DEV: TSmallintField;
    EST_ERVEST_DEF: TSmallintField;
    EST_ERVEST_EPE: TSmallintField;
    EST_ERVEST_ERV: TSmallintField;
    EST_ERVEST_EPI: TSmallintField;
    EST_ERVEST_ESU: TSmallintField;
    EST_ERVEST_EAT: TSmallintField;
    DBGEST_FISEST_PDV: TdxDBGridMaskColumn;
    DBGEST_FISEST_SEP: TdxDBGridMaskColumn;
    DBGEST_FISEST_DEV: TdxDBGridMaskColumn;
    DBGEST_FISEST_DEF: TdxDBGridMaskColumn;
    DBGEST_FISEST_EPE: TdxDBGridMaskColumn;
    DBGEST_FISEST_ERV: TdxDBGridMaskColumn;
    DBGEST_FISEST_EPI: TdxDBGridMaskColumn;
    DBGEST_FISEST_ESU: TdxDBGridMaskColumn;
    DBGEST_FISEST_EAT: TdxDBGridMaskColumn;
    DBGEST_ERVEST_PDV: TdxDBGridMaskColumn;
    DBGEST_ERVEST_SEP: TdxDBGridMaskColumn;
    DBGEST_ERVEST_DEV: TdxDBGridMaskColumn;
    DBGEST_ERVEST_DEF: TdxDBGridMaskColumn;
    DBGEST_ERVEST_EPE: TdxDBGridMaskColumn;
    DBGEST_ERVEST_ERV: TdxDBGridMaskColumn;
    DBGEST_ERVEST_EPI: TdxDBGridMaskColumn;
    DBGEST_ERVEST_ESU: TdxDBGridMaskColumn;
    DBGEST_ERVEST_EAT: TdxDBGridMaskColumn;
    DBGEST_FISABOP: TdxDBGridMaskColumn;
    DPEST_EPI: TdxDockPanel;
    EST_EPI: TIBQuery;
    EST_EPIID: TLargeintField;
    EST_EPISGEP: TIBStringField;
    EST_EPILGCA: TIBStringField;
    EST_EPIDTCA: TDateTimeField;
    EST_EPICDRO: TLargeintField;
    EST_EPIDTRO: TDateTimeField;
    EST_EPIDEPD: TIBStringField;
    EST_EPIDTPD: TDateField;
    EST_EPIDECE: TIBStringField;
    EST_EPICDET: TLargeintField;
    EST_EPICTNR: TIBStringField;
    EST_EPILOTE: TIBStringField;
    EST_EPIABOP: TIBStringField;
    EST_EPIABTP: TIBStringField;
    EST_EPIEST_PDV: TSmallintField;
    EST_EPIEST_SEP: TSmallintField;
    EST_EPIEST_DEV: TSmallintField;
    EST_EPIEST_DEF: TSmallintField;
    EST_EPIEST_EPE: TSmallintField;
    EST_EPIEST_ERV: TSmallintField;
    EST_EPIEST_EPI: TSmallintField;
    EST_EPIEST_ESU: TSmallintField;
    EST_EPIEST_EAT: TSmallintField;
    EST_EPIIDCP: TIntegerField;
    EST_EPISKU: TIBStringField;
    EST_EPIDGCP: TIBStringField;
    EST_EPIQTDE: TIBBCDField;
    EST_EPIQTRL: TIntegerField;
    EST_EPICDDF: TSmallintField;
    EST_EPILGDF: TIBStringField;
    EST_EPIDTDF: TDateTimeField;
    EST_EPIDEDF: TIBStringField;
    EST_EPIFADF: TIBStringField;
    EST_EPIINFADCAD: TIBStringField;
    EST_EPIC_ID: TIntegerField;
    DTSEST_EPI: TDataSource;
    DBGEST_EPI: TdxDBGrid;
    DBGEST_EPISKU: TdxDBGridMaskColumn;
    DBGEST_EPIDGCP: TdxDBGridMaskColumn;
    DBGEST_EPISGEP: TdxDBGridMaskColumn;
    DBGEST_EPIQTDE: TdxDBGridMaskColumn;
    DBGEST_EPIQTRL: TdxDBGridMaskColumn;
    DBGEST_EPICDET: TdxDBGridColumn;
    DBGEST_EPICTNR: TdxDBGridMaskColumn;
    DBGEST_EPILOTE: TdxDBGridMaskColumn;
    DBGEST_EPIABTP: TdxDBGridColumn;
    DBGEST_EPIABOP: TdxDBGridMaskColumn;
    DBGEST_EPIEST_PDV: TdxDBGridMaskColumn;
    DBGEST_EPIEST_SEP: TdxDBGridMaskColumn;
    DBGEST_EPIEST_DEV: TdxDBGridMaskColumn;
    DBGEST_EPIEST_DEF: TdxDBGridMaskColumn;
    DBGEST_EPIEST_EPE: TdxDBGridMaskColumn;
    DBGEST_EPIEST_ERV: TdxDBGridMaskColumn;
    DBGEST_EPIEST_EPI: TdxDBGridMaskColumn;
    DBGEST_EPIEST_ESU: TdxDBGridMaskColumn;
    DBGEST_EPIEST_EAT: TdxDBGridMaskColumn;
    DBGEST_EPICDRO: TdxDBGridColumn;
    DBGEST_EPIDTRO: TdxDBGridDateColumn;
    DBGEST_EPIDEPD: TdxDBGridMaskColumn;
    DBGEST_EPIDECE: TdxDBGridMaskColumn;
    DBGEST_EPILGCA: TdxDBGridMaskColumn;
    DBGEST_EPICDDF: TdxDBGridMaskColumn;
    DBGEST_EPIDEDF: TdxDBGridMaskColumn;
    DBGEST_EPIFADF: TdxDBGridMaskColumn;
    DBGEST_EPILGDF: TdxDBGridMaskColumn;
    DBGEST_EPIDTDF: TdxDBGridDateColumn;
    DBGEST_EPIC_ID: TdxDBGridColumn;
    PNLINFADEPI: TPanel;
    DSINFADEPI: TdxDockSite;
    dxLayoutDockSite7: TdxLayoutDockSite;
    DPINFADEPI: TdxDockPanel;
    DBINFADEPI: TdxDBMemo;
    DTSEST_ESU: TDataSource;
    DTSEST_EAT: TDataSource;
    DPEST_ESU: TdxDockPanel;
    DPEST_EAT: TdxDockPanel;
    DBGEST_ESU: TdxDBGrid;
    DBGEST_ESUSKU: TdxDBGridMaskColumn;
    DBGEST_ESUDGCP: TdxDBGridMaskColumn;
    DBGEST_ESUSGEP: TdxDBGridMaskColumn;
    DBGEST_ESUQTDE: TdxDBGridMaskColumn;
    DBGEST_ESUQTRL: TdxDBGridMaskColumn;
    DBGEST_ESUCDET: TdxDBGridColumn;
    DBGEST_ESUCTNR: TdxDBGridMaskColumn;
    DBGEST_ESULOTE: TdxDBGridMaskColumn;
    DBGEST_ESUABTP: TdxDBGridColumn;
    DBGEST_ESUABOP: TdxDBGridMaskColumn;
    DBGEST_ESUEST_PDV: TdxDBGridMaskColumn;
    DBGEST_ESUEST_SEP: TdxDBGridMaskColumn;
    DBGEST_ESUEST_DEV: TdxDBGridMaskColumn;
    DBGEST_ESUEST_DEF: TdxDBGridMaskColumn;
    DBGEST_ESUEST_EPE: TdxDBGridMaskColumn;
    DBGEST_ESUEST_ERV: TdxDBGridMaskColumn;
    DBGEST_ESUEST_EPI: TdxDBGridMaskColumn;
    DBGEST_ESUEST_ESU: TdxDBGridMaskColumn;
    DBGEST_ESUEST_EAT: TdxDBGridMaskColumn;
    DBGEST_ESUCDRO: TdxDBGridColumn;
    DBGEST_ESUDTRO: TdxDBGridDateColumn;
    DBGEST_ESUDEPD: TdxDBGridMaskColumn;
    DBGEST_ESUDECE: TdxDBGridMaskColumn;
    DBGEST_ESULGCA: TdxDBGridMaskColumn;
    DBGEST_ESUCDDF: TdxDBGridMaskColumn;
    DBGEST_ESUDEDF: TdxDBGridMaskColumn;
    DBGEST_ESUFADF: TdxDBGridMaskColumn;
    DBGEST_ESULGDF: TdxDBGridMaskColumn;
    DBGEST_ESUDTDF: TdxDBGridDateColumn;
    DBGEST_ESUC_ID: TdxDBGridColumn;
    DBGEST_EAT: TdxDBGrid;
    DBGEST_EATSKU: TdxDBGridMaskColumn;
    DBGEST_EATDGCP: TdxDBGridMaskColumn;
    DBGEST_EATSGEP: TdxDBGridMaskColumn;
    DBGEST_EATQTDE: TdxDBGridMaskColumn;
    DBGEST_EATQTRL: TdxDBGridMaskColumn;
    DBGEST_EATCDET: TdxDBGridColumn;
    DBGEST_EATCTNR: TdxDBGridMaskColumn;
    DBGEST_EATLOTE: TdxDBGridMaskColumn;
    DBGEST_EATABTP: TdxDBGridColumn;
    DBGEST_EATABOP: TdxDBGridMaskColumn;
    DBGEST_EATEST_PDV: TdxDBGridMaskColumn;
    DBGEST_EATEST_SEP: TdxDBGridMaskColumn;
    DBGEST_EATEST_DEV: TdxDBGridMaskColumn;
    DBGEST_EATEST_DEF: TdxDBGridMaskColumn;
    DBGEST_EATEST_EPE: TdxDBGridMaskColumn;
    DBGEST_EATEST_ERV: TdxDBGridMaskColumn;
    DBGEST_EATEST_EPI: TdxDBGridMaskColumn;
    DBGEST_EATEST_ESU: TdxDBGridMaskColumn;
    DBGEST_EATEST_EAT: TdxDBGridMaskColumn;
    DBGEST_EATCDRO: TdxDBGridColumn;
    DBGEST_EATDTRO: TdxDBGridDateColumn;
    DBGEST_EATDEPD: TdxDBGridMaskColumn;
    DBGEST_EATDECE: TdxDBGridMaskColumn;
    DBGEST_EATLGCA: TdxDBGridMaskColumn;
    DBGEST_EATCDDF: TdxDBGridMaskColumn;
    DBGEST_EATDEDF: TdxDBGridMaskColumn;
    DBGEST_EATFADF: TdxDBGridMaskColumn;
    DBGEST_EATLGDF: TdxDBGridMaskColumn;
    DBGEST_EATDTDF: TdxDBGridDateColumn;
    DBGEST_EATC_ID: TdxDBGridColumn;
    PNLINFADESU: TPanel;
    DSINFADESU: TdxDockSite;
    dxLayoutDockSite8: TdxLayoutDockSite;
    DPINFADESU: TdxDockPanel;
    DBINFADESU: TdxDBMemo;
    PNLINFADEAT: TPanel;
    DSINFADEAT: TdxDockSite;
    dxLayoutDockSite9: TdxLayoutDockSite;
    DPINFADEAT: TdxDockPanel;
    DBINFADEAT: TdxDBMemo;
    EST_ESU: TIBQuery;
    EST_ESUID: TLargeintField;
    EST_ESUSGEP: TIBStringField;
    EST_ESULGCA: TIBStringField;
    EST_ESUDTCA: TDateTimeField;
    EST_ESUCDRO: TLargeintField;
    EST_ESUDTRO: TDateTimeField;
    EST_ESUDEPD: TIBStringField;
    EST_ESUDTPD: TDateField;
    EST_ESUDECE: TIBStringField;
    EST_ESUCDET: TLargeintField;
    EST_ESUCTNR: TIBStringField;
    EST_ESULOTE: TIBStringField;
    EST_ESUABOP: TIBStringField;
    EST_ESUABTP: TIBStringField;
    EST_ESUEST_PDV: TSmallintField;
    EST_ESUEST_SEP: TSmallintField;
    EST_ESUEST_DEV: TSmallintField;
    EST_ESUEST_DEF: TSmallintField;
    EST_ESUEST_EPE: TSmallintField;
    EST_ESUEST_ERV: TSmallintField;
    EST_ESUEST_EPI: TSmallintField;
    EST_ESUEST_ESU: TSmallintField;
    EST_ESUEST_EAT: TSmallintField;
    EST_ESUIDCP: TIntegerField;
    EST_ESUSKU: TIBStringField;
    EST_ESUDGCP: TIBStringField;
    EST_ESUQTDE: TIBBCDField;
    EST_ESUQTRL: TIntegerField;
    EST_ESUCDDF: TSmallintField;
    EST_ESULGDF: TIBStringField;
    EST_ESUDTDF: TDateTimeField;
    EST_ESUDEDF: TIBStringField;
    EST_ESUFADF: TIBStringField;
    EST_ESUINFADCAD: TIBStringField;
    EST_ESUC_ID: TIntegerField;
    EST_EAT: TIBQuery;
    EST_EATC_ID: TIntegerField;
    PNLCAD_PRO_PRC: TPanel;
    DSCAD_PRO_PRC: TdxDockSite;
    LDSCAD_PRO_PRC: TdxLayoutDockSite;
    DPCAD_PRO_PRC: TdxDockPanel;
    DBGCAD_PRO_PRC: TdxDBGrid;
    DBGCAD_PRO_PRCC_CF_VPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCVPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCVPRC_PRZ: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCVPRC_PRO: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCATJ_VPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCATJ_VPRC_PRZ: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCATJ_VPRC_PRO: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCLJV_VPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCLJV_VPRC_PRZ: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCLJV_VPRC_PRO: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCVAR_VPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCVAR_VPRC_PRZ: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCVAR_VPRC_PRO: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCREP_VPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCREP_VPRC_PRZ: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCREP_VPRC_PRO: TdxDBGridMaskColumn;
    PNLINFADART: TPanel;
    DSINFADART: TdxDockSite;
    dxLayoutDockSite4: TdxLayoutDockSite;
    DPINFADART: TdxDockPanel;
    DBINFADART: TdxDBMemo;
    DBGConsultaIDAK: TdxDBGridColumn;
    DPEST_CPA: TdxDockPanel;
    EST_CPA: TIBQuery;
    EST_CPAID: TLargeintField;
    EST_CPASGEP: TIBStringField;
    EST_CPALGCA: TIBStringField;
    EST_CPADTCA: TDateTimeField;
    EST_CPADEPK: TIBStringField;
    EST_CPADTPK: TDateField;
    EST_CPADECD: TIBStringField;
    EST_CPADECV: TIBStringField;
    EST_CPASKU: TIBStringField;
    EST_CPADGCP: TIBStringField;
    EST_CPAQTPD: TIBBCDField;
    EST_CPARLPD: TIntegerField;
    EST_CPAQTSP: TIBBCDField;
    EST_CPARLSP: TIntegerField;
    EST_CPACTNR: TIBStringField;
    EST_CPACTNR_PPRD: TDateField;
    EST_CPACTNR_PEMB: TDateField;
    EST_CPACTNR_PDSB: TDateField;
    EST_CPACTNR_PCHP: TDateField;
    EST_CPAINFADCAD: TIBStringField;
    EST_CPAC_ID: TIntegerField;
    DTSEST_CPA: TDataSource;
    DTSEST_CPF: TDataSource;
    EST_CPF: TIBQuery;
    EST_CPFC_ID: TIntegerField;
    EST_PRG: TIBQuery;
    EST_PRGC_ID: TIntegerField;
    DTSEST_PRG: TDataSource;
    DBGEST_CPA: TdxDBGrid;
    DBGEST_CPASKU: TdxDBGridMaskColumn;
    DBGEST_CPADGCP: TdxDBGridColumn;
    DBGEST_CPAQTPD: TdxDBGridMaskColumn;
    DBGEST_CPARLPD: TdxDBGridMaskColumn;
    DBGEST_CPAQTSP: TdxDBGridMaskColumn;
    DBGEST_CPARLSP: TdxDBGridMaskColumn;
    DBGEST_CPACTNR: TdxDBGridMaskColumn;
    DBGEST_CPACTNR_PCHP: TdxDBGridDateColumn;
    DBGEST_CPACTNR_PDSB: TdxDBGridDateColumn;
    DBGEST_CPACTNR_PEMB: TdxDBGridDateColumn;
    DBGEST_CPACTNR_PPRD: TdxDBGridDateColumn;
    DBGEST_CPADEPK: TdxDBGridMaskColumn;
    DBGEST_CPADTPK: TdxDBGridDateColumn;
    DBGEST_CPADECD: TdxDBGridMaskColumn;
    DBGEST_CPADECV: TdxDBGridMaskColumn;
    DBGEST_CPASGEP: TdxDBGridMaskColumn;
    DBGEST_CPAC_ID: TdxDBGridColumn;
    DPEST_CPF: TdxDockPanel;
    DPEST_PRG: TdxDockPanel;
    DBGEST_PRG: TdxDBGrid;
    DBGEST_PRGSKU: TdxDBGridMaskColumn;
    DBGEST_PRGDGCP: TdxDBGridColumn;
    DBGEST_PRGQTDE: TdxDBGridMaskColumn;
    DBGEST_PRGQTRL: TdxDBGridMaskColumn;
    DBGEST_PRGDTCA: TdxDBGridDateColumn;
    DBGEST_PRGDEPK: TdxDBGridMaskColumn;
    DBGEST_PRGCTNR: TdxDBGridMaskColumn;
    DBGEST_PRGDECD: TdxDBGridMaskColumn;
    DBGEST_PRGDECR: TdxDBGridMaskColumn;
    DBGEST_PRGDECV: TdxDBGridMaskColumn;
    DBGEST_PRGVPRC_PAD_INI: TdxDBGridMaskColumn;
    DBGEST_PRGVPRC_PAD_FIM: TdxDBGridMaskColumn;
    DBGEST_PRGVPRC_PAD: TdxDBGridMaskColumn;
    DBGEST_PRGVPRC_COM: TdxDBGridMaskColumn;
    DBGEST_PRGTCDE: TdxDBGridMaskColumn;
    DBGEST_PRGC_ID: TdxDBGridColumn;
    DTSEST_RES: TDataSource;
    DTSEST_SEP: TDataSource;
    EST_SEP: TIBQuery;
    EST_SEPC_ID: TIntegerField;
    DPEST_RES: TdxDockPanel;
    DPEST_SEP: TdxDockPanel;
    DBGEST_RES: TdxDBGrid;
    DBGEST_RESSKU: TdxDBGridMaskColumn;
    DBGEST_RESDGCP: TdxDBGridColumn;
    DBGEST_RESQTDE: TdxDBGridMaskColumn;
    DBGEST_RESQTRL: TdxDBGridMaskColumn;
    DBGEST_RESDTPK: TdxDBGridDateColumn;
    DBGEST_RESDEPK: TdxDBGridMaskColumn;
    DBGEST_RESCTNR: TdxDBGridMaskColumn;
    DBGEST_RESDECD: TdxDBGridMaskColumn;
    DBGEST_RESDECR: TdxDBGridMaskColumn;
    DBGEST_RESDECV: TdxDBGridMaskColumn;
    DBGEST_RESVPRC_COM: TdxDBGridMaskColumn;
    DBGEST_RESC_ID: TdxDBGridColumn;
    PNLINFADCPA: TPanel;
    DSINFADCPA: TdxDockSite;
    dxLayoutDockSite10: TdxLayoutDockSite;
    DPINFADCPA: TdxDockPanel;
    DBINFADCPA: TdxDBMemo;
    PNLINFADCPF: TPanel;
    DSINFADCPF: TdxDockSite;
    dxLayoutDockSite11: TdxLayoutDockSite;
    DPINFADCPF: TdxDockPanel;
    DBINFADCPF: TdxDBMemo;
    PNLINFADPRG: TPanel;
    DSINFADPRG: TdxDockSite;
    dxLayoutDockSite12: TdxLayoutDockSite;
    DPINFADPRG: TdxDockPanel;
    DBINFADPRG: TdxDBMemo;
    PNLINFADRES: TPanel;
    DSINFADRES: TdxDockSite;
    dxLayoutDockSite13: TdxLayoutDockSite;
    DPINFADRES: TdxDockPanel;
    DBINFADRES: TdxDBMemo;
    PNLINFADSEP: TPanel;
    DSINFADSEP: TdxDockSite;
    dxLayoutDockSite14: TdxLayoutDockSite;
    DPINFADSEP: TdxDockPanel;
    DBINFADSEP: TdxDBMemo;
    EST_FISREST: TIBStringField;
    EST_FISSTFI: TIBStringField;
    EST_FISIDCP: TIntegerField;
    EST_ERVREST: TIBStringField;
    EST_ERVSTFI: TIBStringField;
    EST_EPIREST: TIBStringField;
    EST_EPISTFI: TIBStringField;
    EST_ERVIDCP: TIntegerField;
    EST_ESUREST: TIBStringField;
    EST_ESUSTFI: TIBStringField;
    EST_EATID: TLargeintField;
    EST_EATSGEP: TIBStringField;
    EST_EATLGCA: TIBStringField;
    EST_EATDTCA: TDateTimeField;
    EST_EATCDRO: TLargeintField;
    EST_EATDTRO: TDateTimeField;
    EST_EATDEPD: TIBStringField;
    EST_EATDTPD: TDateField;
    EST_EATDECE: TIBStringField;
    EST_EATCDET: TLargeintField;
    EST_EATCTNR: TIBStringField;
    EST_EATLOTE: TIBStringField;
    EST_EATABOP: TIBStringField;
    EST_EATABTP: TIBStringField;
    EST_EATEST_PDV: TSmallintField;
    EST_EATEST_SEP: TSmallintField;
    EST_EATEST_DEV: TSmallintField;
    EST_EATEST_DEF: TSmallintField;
    EST_EATEST_EPE: TSmallintField;
    EST_EATEST_ERV: TSmallintField;
    EST_EATEST_EPI: TSmallintField;
    EST_EATEST_ESU: TSmallintField;
    EST_EATEST_EAT: TSmallintField;
    EST_EATIDCP: TIntegerField;
    EST_EATSKU: TIBStringField;
    EST_EATDGCP: TIBStringField;
    EST_EATQTDE: TIBBCDField;
    EST_EATQTRL: TIntegerField;
    EST_EATCDDF: TSmallintField;
    EST_EATLGDF: TIBStringField;
    EST_EATDTDF: TDateTimeField;
    EST_EATDEDF: TIBStringField;
    EST_EATFADF: TIBStringField;
    EST_EATREST: TIBStringField;
    EST_EATSTFI: TIBStringField;
    EST_EATINFADCAD: TIBStringField;
    EST_CPFID: TLargeintField;
    EST_CPFSGEP: TIBStringField;
    EST_CPFLGCA: TIBStringField;
    EST_CPFDTCA: TDateTimeField;
    EST_CPFDEPK: TIBStringField;
    EST_CPFDTPK: TDateField;
    EST_CPFDECD: TIBStringField;
    EST_CPFDECV: TIBStringField;
    EST_CPFSKU: TIBStringField;
    EST_CPFDGCP: TIBStringField;
    EST_CPFQTPD: TIBBCDField;
    EST_CPFRLPD: TIntegerField;
    EST_CPFQTSP: TIBBCDField;
    EST_CPFRLSP: TIntegerField;
    EST_CPFCTNR: TIBStringField;
    EST_CPFCTNR_RPRD: TDateField;
    EST_CPFCTNR_REMB: TDateField;
    EST_CPFCTNR_RDSB: TDateField;
    EST_CPFCTNR_RCHP: TDateField;
    EST_CPFINFADCAD: TIBStringField;
    EST_RES: TIBQuery;
    EST_RESC_ID: TIntegerField;
    EST_RESID: TLargeintField;
    EST_RESSGEP: TIBStringField;
    EST_RESLGCA: TIBStringField;
    EST_RESDTCA: TDateTimeField;
    EST_RESDEPK: TIBStringField;
    EST_RESDTPK: TDateField;
    EST_RESCTNR: TIBStringField;
    EST_RESDECD: TIBStringField;
    EST_RESDECV: TIBStringField;
    EST_RESDECR: TIBStringField;
    EST_RESSKU: TIBStringField;
    EST_RESDGCP: TIBStringField;
    EST_RESQTDE: TIBBCDField;
    EST_RESQTRL: TIntegerField;
    EST_RESVPRC_PAD_INI: TFloatField;
    EST_RESVPRC_PAD_FIM: TFloatField;
    EST_RESVPRC_PAD: TFloatField;
    EST_RESVPRC_COM: TFloatField;
    EST_RESINFADCAD: TIBStringField;
    EST_PRGID: TLargeintField;
    EST_PRGSGEP: TIBStringField;
    EST_PRGLGCA: TIBStringField;
    EST_PRGDTCA: TDateTimeField;
    EST_PRGDEPK: TIBStringField;
    EST_PRGDTPK: TDateField;
    EST_PRGCTNR: TIBStringField;
    EST_PRGDECD: TIBStringField;
    EST_PRGDECV: TIBStringField;
    EST_PRGDECR: TIBStringField;
    EST_PRGSKU: TIBStringField;
    EST_PRGDGCP: TIBStringField;
    EST_PRGQTDE: TIBBCDField;
    EST_PRGQTRL: TIntegerField;
    EST_PRGVPRC_PAD_INI: TFloatField;
    EST_PRGVPRC_PAD_FIM: TFloatField;
    EST_PRGVPRC_PAD: TFloatField;
    EST_PRGVPRC_COM: TFloatField;
    EST_PRGTSDE: TIBBCDField;
    EST_PRGTCDE: TIBBCDField;
    EST_PRGVDSC: TIBBCDField;
    EST_PRGPDSC: TIBBCDField;
    EST_PRGVICMS: TIBBCDField;
    EST_PRGPICMS: TIBBCDField;
    EST_PRGVIPI: TIBBCDField;
    EST_PRGPIPI: TIBBCDField;
    EST_PRGVST: TIBBCDField;
    EST_PRGPST: TIBBCDField;
    EST_PRGINFADCAD: TIBStringField;
    EST_SEPID: TLargeintField;
    EST_SEPSGEP: TIBStringField;
    EST_SEPLGCA: TIBStringField;
    EST_SEPDTCA: TDateTimeField;
    EST_SEPCDRO: TLargeintField;
    EST_SEPDTRO: TDateTimeField;
    EST_SEPDEPK: TIBStringField;
    EST_SEPDTPK: TDateTimeField;
    EST_SEPDECD: TIBStringField;
    EST_SEPDECV: TIBStringField;
    EST_SEPDECR: TIBStringField;
    EST_SEPCDET: TLargeintField;
    EST_SEPCTNR: TIBStringField;
    EST_SEPLOTE: TIBStringField;
    EST_SEPABOP: TIBStringField;
    EST_SEPABTP: TIBStringField;
    EST_SEPEST_PDV: TSmallintField;
    EST_SEPEST_SEP: TSmallintField;
    EST_SEPEST_DEV: TSmallintField;
    EST_SEPEST_DEF: TSmallintField;
    EST_SEPEST_EPE: TSmallintField;
    EST_SEPEST_ERV: TSmallintField;
    EST_SEPEST_EPI: TSmallintField;
    EST_SEPEST_ESU: TSmallintField;
    EST_SEPEST_EAT: TSmallintField;
    EST_SEPIDCP: TIntegerField;
    EST_SEPSKU: TIBStringField;
    EST_SEPDGCP: TIBStringField;
    EST_SEPQTDE: TIBBCDField;
    EST_SEPQTRL: TIntegerField;
    EST_SEPCDDF: TSmallintField;
    EST_SEPLGDF: TIBStringField;
    EST_SEPDTDF: TDateTimeField;
    EST_SEPDEDF: TIBStringField;
    EST_SEPFADF: TIBStringField;
    EST_SEPREST: TIBStringField;
    EST_SEPSTFI: TIBStringField;
    EST_SEPINFADCAD: TIBStringField;
    DBGEST_SEP: TdxDBGrid;
    DBGEST_SEPSKU: TdxDBGridMaskColumn;
    DBGEST_SEPDGCP: TdxDBGridMaskColumn;
    DBGEST_SEPSGEP: TdxDBGridMaskColumn;
    DBGEST_SEPQTDE: TdxDBGridMaskColumn;
    DBGEST_SEPQTRL: TdxDBGridMaskColumn;
    DBGEST_SEPCDET: TdxDBGridColumn;
    DBGEST_SEPCTNR: TdxDBGridMaskColumn;
    DBGEST_SEPLOTE: TdxDBGridMaskColumn;
    DBGEST_SEPEST_PDV: TdxDBGridMaskColumn;
    DBGEST_SEPEST_SEP: TdxDBGridMaskColumn;
    DBGEST_SEPEST_DEV: TdxDBGridMaskColumn;
    DBGEST_SEPEST_DEF: TdxDBGridMaskColumn;
    DBGEST_SEPEST_EPE: TdxDBGridMaskColumn;
    DBGEST_SEPEST_ERV: TdxDBGridMaskColumn;
    DBGEST_SEPEST_EPI: TdxDBGridMaskColumn;
    DBGEST_SEPEST_ESU: TdxDBGridMaskColumn;
    DBGEST_SEPEST_EAT: TdxDBGridMaskColumn;
    DBGEST_SEPCDRO: TdxDBGridColumn;
    DBGEST_SEPCDDF: TdxDBGridMaskColumn;
    DBGEST_SEPDEDF: TdxDBGridMaskColumn;
    DBGEST_SEPFADF: TdxDBGridMaskColumn;
    DBGEST_SEPLGDF: TdxDBGridMaskColumn;
    DBGEST_SEPDTDF: TdxDBGridDateColumn;
    DBGEST_SEPC_ID: TdxDBGridColumn;
    EST_SEPCDSP: TLargeintField;
    EST_SEPIDSP: TSmallintField;
    EST_SEPDESP: TIBStringField;
    EST_SEPDTSP: TDateTimeField;
    DBGEST_SEPDESP: TdxDBGridMaskColumn;
    DBGEST_SEPDTSP: TdxDBGridDateColumn;
    DBGEST_SEPDEPK: TdxDBGridMaskColumn;
    DBGEST_SEPDTPK: TdxDBGridDateColumn;
    DBGEST_SEPDECD: TdxDBGridMaskColumn;
    DBGEST_SEPDECV: TdxDBGridMaskColumn;
    DBGEST_SEPDECR: TdxDBGridMaskColumn;
    DBGEST_SEPREST: TdxDBGridMaskColumn;
    DBGEST_SEPSTFI: TdxDBGridColumn;
    DBGEST_CPF: TdxDBGrid;
    DBGEST_CPFSKU: TdxDBGridMaskColumn;
    DBGEST_CPFDGCP: TdxDBGridColumn;
    DBGEST_CPFSGEP: TdxDBGridMaskColumn;
    DBGEST_CPFQTSP: TdxDBGridMaskColumn;
    DBGEST_CPFRLSP: TdxDBGridMaskColumn;
    DBGEST_CPFQTPD: TdxDBGridMaskColumn;
    DBGEST_CPFRLPD: TdxDBGridMaskColumn;
    DBGEST_CPFCTNR: TdxDBGridMaskColumn;
    DBGEST_CPFCTNR_RCHP: TdxDBGridDateColumn;
    DBGEST_CPFCTNR_RDSB: TdxDBGridDateColumn;
    DBGEST_CPFCTNR_REMB: TdxDBGridDateColumn;
    DBGEST_CPFCTNR_RPRD: TdxDBGridDateColumn;
    DBGEST_CPFDEPK: TdxDBGridMaskColumn;
    DBGEST_CPFDTPK: TdxDBGridDateColumn;
    DBGEST_CPFDECD: TdxDBGridMaskColumn;
    DBGEST_CPFDECV: TdxDBGridMaskColumn;
    DBGEST_CPFC_ID: TdxDBGridColumn;
    EST_RESINFADPRN: TIBStringField;
    EST_RESSTPD: TIBStringField;
    EST_RESRECO: TIBStringField;
    EST_RESSTFI: TIBStringField;
    DBGEST_RESSTPD: TdxDBGridMaskColumn;
    DBGEST_RESRECO: TdxDBGridMaskColumn;
    DBGEST_RESSTFI: TdxDBGridMaskColumn;
    PNLINFADRES_PRN: TPanel;
    EST_RESDVPD: TSmallintField;
    EST_RESBQST: TSmallintField;
    DBGEST_RESDVPD: TdxDBGridMaskColumn;
    DBGEST_RESBQST: TdxDBGridMaskColumn;
    DBGEST_RESSGEP: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSConsultaDataChange(Sender: TObject; Field: TField);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure ConsultaAfterClose(DataSet: TDataSet);
    procedure EST_EPEBeforeOpen(DataSet: TDataSet);
    procedure EST_EPEAfterOpen(DataSet: TDataSet);
    procedure EST_EPEAfterScroll(DataSet: TDataSet);
    procedure EST_EPECalcFields(DataSet: TDataSet);
    procedure DTSEST_EPEDataChange(Sender: TObject; Field: TField);
    procedure DBGEST_EPECustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject; Field: TField);
    procedure DBGCAD_PRO_FICCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure CAD_PRO_PRCCalcFields(DataSet: TDataSet);
    procedure EST_EPEAfterClose(DataSet: TDataSet);
    procedure EST_FISBeforeOpen(DataSet: TDataSet);
    procedure EST_FISAfterOpen(DataSet: TDataSet);
    procedure EST_FISAfterScroll(DataSet: TDataSet);
    procedure EST_FISCalcFields(DataSet: TDataSet);
    procedure DTSEST_FISDataChange(Sender: TObject; Field: TField);
    procedure DBGEST_FISCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure IMG_PADClick(Sender: TObject);
    procedure EST_ERVBeforeOpen(DataSet: TDataSet);
    procedure EST_ERVAfterOpen(DataSet: TDataSet);
    procedure EST_ERVAfterScroll(DataSet: TDataSet);
    procedure EST_ERVCalcFields(DataSet: TDataSet);
    procedure DTSEST_ERVDataChange(Sender: TObject; Field: TField);
    procedure DBGEST_ERVCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EST_EPIBeforeOpen(DataSet: TDataSet);
    procedure EST_EPIAfterOpen(DataSet: TDataSet);
    procedure EST_EPIAfterScroll(DataSet: TDataSet);
    procedure EST_EPICalcFields(DataSet: TDataSet);
    procedure DTSEST_EPIDataChange(Sender: TObject; Field: TField);
    procedure DBGEST_EPICustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EST_ESUBeforeOpen(DataSet: TDataSet);
    procedure EST_ESUAfterOpen(DataSet: TDataSet);
    procedure EST_ESUAfterScroll(DataSet: TDataSet);
    procedure EST_ESUCalcFields(DataSet: TDataSet);
    procedure DTSEST_ESUDataChange(Sender: TObject; Field: TField);
    procedure DBGEST_ESUCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EST_EATBeforeOpen(DataSet: TDataSet);
    procedure EST_EATAfterOpen(DataSet: TDataSet);
    procedure EST_EATAfterScroll(DataSet: TDataSet);
    procedure EST_EATCalcFields(DataSet: TDataSet);
    procedure DTSEST_EATDataChange(Sender: TObject; Field: TField);
    procedure DBGEST_EATCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGCAD_PRO_PRCCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure EST_CPABeforeOpen(DataSet: TDataSet);
    procedure EST_CPAAfterOpen(DataSet: TDataSet);
    procedure EST_CPAAfterScroll(DataSet: TDataSet);
    procedure EST_CPACalcFields(DataSet: TDataSet);
    procedure DTSEST_CPADataChange(Sender: TObject; Field: TField);
    procedure DBGEST_CPACustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EST_CPFBeforeOpen(DataSet: TDataSet);
    procedure EST_CPFAfterOpen(DataSet: TDataSet);
    procedure EST_CPFAfterScroll(DataSet: TDataSet);
    procedure EST_CPFCalcFields(DataSet: TDataSet);
    procedure DTSEST_CPFDataChange(Sender: TObject; Field: TField);
    procedure DBGEST_CPFCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EST_PRGBeforeOpen(DataSet: TDataSet);
    procedure EST_PRGAfterOpen(DataSet: TDataSet);
    procedure EST_PRGAfterScroll(DataSet: TDataSet);
    procedure EST_PRGCalcFields(DataSet: TDataSet);
    procedure DTSEST_PRGDataChange(Sender: TObject; Field: TField);
    procedure DBGEST_PRGCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EST_RESBeforeOpen(DataSet: TDataSet);
    procedure EST_RESAfterOpen(DataSet: TDataSet);
    procedure EST_RESAfterScroll(DataSet: TDataSet);
    procedure EST_RESCalcFields(DataSet: TDataSet);
    procedure DTSEST_RESDataChange(Sender: TObject; Field: TField);
    procedure DBGEST_RESCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EST_SEPBeforeOpen(DataSet: TDataSet);
    procedure EST_SEPAfterOpen(DataSet: TDataSet);
    procedure EST_SEPAfterScroll(DataSet: TDataSet);
    procedure EST_SEPCalcFields(DataSet: TDataSet);
    procedure DTSEST_SEPDataChange(Sender: TObject; Field: TField);
    procedure DBGEST_SEPCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
    APSQ_DG: String;
  public
    { Public declarations }
    procedure _WM_AFTER_CREATE  (var Msg: TMessage); message WM_AFTER_CREATE;
  end;

var
  FrmCAD_PRO: TFrmCAD_PRO;

implementation

{$R *.dfm}

procedure TFrmCAD_PRO._WM_AFTER_CREATE(var Msg: TMessage);
begin
  inherited;
  Consulta.Open;
end;

procedure TFrmCAD_PRO.FormCreate(Sender: TObject);
begin
  { SHEILD }
  DBGConsulta.Bands[3].Visible := (RECUsuarios.ID = 0);

  oIREC_SHE_DEF(REC_SHE_DEF);
  REC_SHE_DEF.FB_Event    := 'CAD_PRO'; { Eventos }
  REC_SHE_DEF.FForceCaixa := False; { Caixa }

  { Grant }
  REC_SHE_DEF.GDescricao  := 'Produtos';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;

  TCDSIMG_PAD.ActiveChildIndex   := 0; { Imagens }
  TCDSPKEstoque.ActiveChildIndex := 0; { Estoque }
  TCDSFKEstoque.ActiveChildIndex := 0; { Movimentos }

  APSQ_DG := EmptyStr;
end;

procedure TFrmCAD_PRO.ACTPesquisaExecute(Sender: TObject);
          procedure _Pesquisa;
          var
            APSQ_SL: TStringList;
            APSQ_VL,
            APSQ_FD: String;
            i: Word;
          begin
            { String List de Pesquisa }
            APSQ_SL := TStringList.Create;
            APSQ_SL.Clear;

            if REC_SHE_DEF.PSQ_FB_VA <> EmptyStr then
               try
                 APSQ_DG := EmptyStr; { Grade }
                 APSQ_FD := EmptyStr; { Campo }
                 APSQ_VL := REC_SHE_DEF.PSQ_FB_VA; { Texto Pesquisa }

                 if (APSQ_VL <> EmptyStr) and (APSQ_VL <> '0') then
                 begin
                   { Capturar as palavras separadamente }
                   While Length(APSQ_VL) > 0 do
                   begin
                     APSQ_FD := Fetch(APSQ_VL,' ');

                     if Length(APSQ_FD) > 0 then
                     APSQ_SL.Add(Trim(APSQ_FD));
                   end;

                   { Captura grade indicada na segunda posição }
                   if APSQ_SL.Count > 0 then
                   begin
                     for i := 0 to APSQ_SL.Count - 1 do
                     begin
                       APSQ_DG := APSQ_DG + APSQ_SL.Strings[i] + ' ';

                       with SQLConsulta do
                       begin
                         Close;
                         SQL.Clear;
                         SQL.Add('SELECT ID FROM TAB_COR WHERE DESCRICAO CONTAINING ''' + Trim(APSQ_SL.Strings[i]) + '''');
                         ExecQuery;

                         if Eof then
                            APSQ_DG := oStrTran(APSQ_DG,APSQ_SL.Strings[i],'') + ' ';
                       end;
                     end;
                     APSQ_DG := Trim(APSQ_DG);

                     { Retira as cores individuais da pesquisa }
                     if APSQ_DG <> EmptyStr then
                     begin
                       for i := APSQ_SL.Count - 1 downto 0 do
                           if Pos(APSQ_SL.Strings[i],APSQ_DG) > 0 then
                              APSQ_SL.Delete(i);

                       APSQ_SL.Add(APSQ_DG);
                     end;
                   end;
                 end;

                 { Artigo }
                 with Consulta do
                 begin
                   Close;
                   SQL.Clear;

                   SQL.Add('SELECT MAX(CP.ID) AS ID,CP.IDEP,CP.DEEP,MIN(CP.REST) AS REST,');

                   SQL.Add('       CP.ARTIGO,CP.DECP,CP.IDAK,CP.NCM,CP.PIPI,');
                   SQL.Add('       CP.IDCF  ,CP.DECF,');
                   SQL.Add('       CP.UCOM  ,CP.UCON,MAX(CP.LJV_UCOM) AS LJV_UCOM,MAX(CP.LJV_UCON) AS LJV_UCON,');
                   SQL.Add('       MAX(CP.UQTDE_VEN_MIN) AS UQTDE_VEN_MIN,MAX(CP.UQTDE_VEN_MUL) AS UQTDE_VEN_MUL,');

                   SQL.Add('       ASCII_CHAR(13) || ASCII_CHAR(10) ||');

                   SQL.Add('       NULLIF(TRIM(CAST(');
                   SQL.Add('       IIF(CP.D_ORIG  IS NOT NULL,CP.D_ORIG            || ASCII_CHAR(13) || ASCII_CHAR(10),'''')    || ASCII_CHAR(13)       || ASCII_CHAR(10) ||');
                   SQL.Add('       IIF (CP.COL_NO IS NOT NULL,''Coleção .....: ''  || CP.COL_NO      || ASCII_CHAR(13)          || ASCII_CHAR(10),'''') ||');
                   SQL.Add('       IIF (CP.SEG_NO IS NOT NULL,''Segmento .....: '' || CP.SEG_NO      || ASCII_CHAR(13)          || ASCII_CHAR(10),'''') ||');
                   SQL.Add('       IIF (CP.GRP_NO IS NOT NULL,''Grupo .....: ''    || CP.GRP_NO      || '', '' || CP.SGP_NO     || ASCII_CHAR(13)       || ASCII_CHAR(10),'''') ||');
                   SQL.Add('       IIF (CP.CAT_NO IS NOT NULL,''Categoria ....: '' || CP.CAT_NO      || '', '' || TB_SCT.SCT_NO || ASCII_CHAR(13)       || ASCII_CHAR(10),'''')   ');

                   SQL.Add('       AS VARCHAR(812))),'''') AS INFADCAD,');
                   SQL.Add('       CP.INFADCAD AS INFADTEC');

                   SQL.Add('FROM      VW_CAD_PRO_NEW     AS CP');
                   SQL.Add('LEFT JOIN VW_CAD_PRO_TAB_SCT AS TB_SCT ON (TB_SCT.IDAK = CP.IDAK)');

                   if APSQ_SL.Count = 0 then
                   SQL.Add('WHERE CP.IDCP = 0') else

                   for i := 0 to APSQ_SL.Count - 1 do
                   begin
                     SQL.Add(IFThen(Pos('WHERE',Consulta.SQL.Text) = 0,'WHERE','AND'));

                     { Pesquisa Artigo \ SKU }
                     if (i = 0) and (Pos('.',APSQ_SL.Strings[i]) > 0) then
                     SQL.Add('CP.SKU  LIKE ''' + APSQ_SL.Strings[i] + '%''') else

                     { Pesquisa Grade }
                     if APSQ_SL.Strings[i] = APSQ_DG then
                     SQL.Add('CP.DGCP LIKE ''' + APSQ_SL.Strings[i] + '%''') else

                     { Pesquisa Genérica }
                     SQL.Add('CP.FT_KEY CONTAINING ''' + APSQ_SL.Strings[i] + '''' );
                   end;

                   SQL.Add('GROUP BY IDEP  ,DEEP,');
                   SQL.Add('         ARTIGO,DECP,IDAK,NCM,PIPI,');
                   SQL.Add('         IDCF  ,DECF,');
                   SQL.Add('         UCOM  ,UCON,');

                   SQL.Add('         MPESO,MPSCN,MMETRO,MGRAMA,MREND,');
                   SQL.Add('         MLGRU,MLGRT,');
                   SQL.Add('         MELAL,MELAC,');
                   SQL.Add('         MENCL,MENCC,');

                   SQL.Add('         INFADCAD,INFADTEC');

                   Prepare;
                   Open;
                 end;
               finally
                 { Libera Objetos }
                 APSQ_SL.Free;

                 { Limpa Filtros }
                 DBGConsulta.Filter.Clear; { Consulta }

                 { Estoque }
                 DBGEST_EPE.Filter.Clear;  { Pronta Entrega }
                 DBGEST_EPE.Filter.Clear;  { Físico }

                 if (REC_SHE_DEF.PSQ_FB_VA = '0') or (Consulta.RecNo = 0) then
                 BEPSQ_CAD.SetFocus(False) else

                 if Showing then

                 { Pronta Entrega }
                 if (DPEST_EPE.Visible) and (TCDSPKEstoque.ActiveChild = DPEST_EPE) then
                 begin
                   PostMessage(DBGEST_EPE.Handle, WM_SETFOCUS, 0, 0);
                   TWinControl(DBGEST_EPE).SetFocus;
                 end;

                 { Físico }
                 if (DPEST_FIS.Visible) and (TCDSFKEstoque.ActiveChild = DPEST_FIS) then
                 begin
                   PostMessage(DBGEST_FIS.Handle, WM_SETFOCUS, 0, 0);
                   TWinControl(DBGEST_FIS).SetFocus;
                 end else

                 { Reservado }
                 if (DPEST_ERV.Visible) and (TCDSFKEstoque.ActiveChild = DPEST_ERV) then
                 begin
                   PostMessage(DBGEST_ERV.Handle, WM_SETFOCUS, 0, 0);
                   TWinControl(DBGEST_ERV).SetFocus;
                 end else

                 { Piloto }
                 if (DPEST_EPI.Visible) and (TCDSFKEstoque.ActiveChild = DPEST_EPI) then
                 begin
                   PostMessage(DBGEST_EPI.Handle, WM_SETFOCUS, 0, 0);
                   TWinControl(DBGEST_EPI).SetFocus;
                 end else

                 { Substituto }
                 if (DPEST_ESU.Visible) and (TCDSFKEstoque.ActiveChild = DPEST_ESU) then
                 begin
                   PostMessage(DBGEST_ESU.Handle, WM_SETFOCUS, 0, 0);
                   TWinControl(DBGEST_ESU).SetFocus;
                 end else

                 { Antecipado }
                 if (DPEST_EAT.Visible) and (TCDSFKEstoque.ActiveChild = DPEST_EAT) then
                 begin
                   PostMessage(DBGEST_EAT.Handle, WM_SETFOCUS, 0, 0);
                   TWinControl(DBGEST_EAT).SetFocus;
                 end;
               end;
          end;
begin
  BBPSQ_CAD.Hint := IFThen(BBPSQ_CAD.Caption = 'Pesquisa Rápida','Cep, Logradouro, etc',EmptyStr);
  BEPSQ_CAD.Hint := BBPSQ_CAD.Hint;
  Application.ProcessMessages;

  { Verifica integridade da pesquisa
    Evita campos alphanuméricos em campos apenas numéricos
  }
  if (Pos(BBPSQ_CAD.Caption,'Cep') > 0) and (not oBSONumero(BEPSQ_CAD.Text)) then
  Abort;

  inherited;

  try _Pesquisa;
  finally
    DPConsulta.Caption := 'Produtos(s) Encontrado(s)';

    BEPSQ_CAD.Text    := EmptyStr;
    BEPSQ_CAD.CurText := EmptyStr;

    BDPSQ_PER_INI.Text    := EmptyStr;
    BDPSQ_PER_INI.CurText := EmptyStr;

    BDPSQ_PER_FIM.Text    := EmptyStr;
    BDPSQ_PER_FIM.CurText := EmptyStr;

    Application.ProcessMessages;
  end;
end;

procedure TFrmCAD_PRO.BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
     with REC_SHE_DEF do
     begin
       PSQ_FB_VA := TRIM(BEPSQ_CAD.Text);

       PSQ_WHERE := ' LIKE ';
       PSQ_LKINI := '''' ;
       PSQ_LKFIM := '%''';

       if ((Length(PSQ_FB_VA) <= 2) or (Pos('.',PSQ_FB_VA) > 0)) then
       PSQ_FB_FD := 'ARTIGO';

       if oBSONumero(PSQ_FB_VA) then
       begin
         PSQ_WHERE := ' = ';
         PSQ_LKINI := '''' ;
         PSQ_LKFIM := '''' ;
       end;
     end;

  inherited;
end;



{ *********************** ARTIGOS *********************** }

procedure TFrmCAD_PRO.ConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  { Preços }
  CAD_PRO_PRC.Prepare;
  CAD_PRO_PRC.Open;

  { Ficha Técnica }
  CAD_PRO_FIC.Prepare;
  CAD_PRO_FIC.Open;

  { Pronta Entrega }
  with EST_EPE do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CP.IDCP,EF.IDEP,EF.SGEP,');
    SQL.Add('       CP.CDST,CP.REST,CP.DEST,');
    SQL.Add('       CP.SKU ,EF.DTEV,');
    SQL.Add('       CP.CEAN,CP.DGCP,');
    SQL.Add('       CP.CF_SKU,CP.CF_NCM,CP.CF_CEAN,');

    SQL.Add('       EF.EPE_QTDE,EF.EPE_QTRL,');
    SQL.Add('       EF.EEP_QTDE,EF.EEP_QTRL,');
    SQL.Add('       EF.ECO_DECO');

    SQL.Add('FROM   CAD_PRO AS CP');

    SQL.Add('LEFT JOIN (SELECT   EF.IDCP,EF.IDEP,EP.FANTASIA_SIGLA AS SGEP,');
    SQL.Add('                    MAX(EF.DTEV) AS DTEV,');
    SQL.Add('                    NULLIF(SUM(EF.EPE_QTDE),0) AS EPE_QTDE,CAST(NULLIF(SUM(EF.EPE_QTRL),0) AS INTEGER) AS EPE_QTRL,MAX(IIF(EF.EPE_QTDE = 0,NULL,EF.EPE_DATA)) AS EPE_DATA,');
    SQL.Add('                    NULLIF(SUM(EF.EEP_QTDE),0) AS EEP_QTDE,CAST(NULLIF(SUM(EF.EEP_QTRL),0) AS INTEGER) AS EEP_QTRL,MAX(IIF(EF.EEP_QTDE = 0,NULL,EF.EEP_DATA)) AS EEP_DATA,');
    SQL.Add('                    NULLIF(SUM(EF.ERV_QTDE),0) AS ERV_QTDE,CAST(NULLIF(SUM(EF.ERV_QTRL),0) AS INTEGER) AS ERV_QTRL,MAX(IIF(EF.ERV_QTDE = 0,NULL,EF.ERV_DATA)) AS ERV_DATA,');
    SQL.Add('                    NULLIF(SUM(EF.EPI_QTDE),0) AS EPI_QTDE,CAST(NULLIF(SUM(EF.EPI_QTRL),0) AS INTEGER) AS EPI_QTRL,MAX(IIF(EF.EPI_QTDE = 0,NULL,EF.EPI_DATA)) AS EPI_DATA,');
    SQL.Add('                    NULLIF(SUM(EF.ESU_QTDE),0) AS ESU_QTDE,CAST(NULLIF(SUM(EF.ESU_QTRL),0) AS INTEGER) AS ESU_QTRL,MAX(IIF(EF.ESU_QTDE = 0,NULL,EF.ESU_DATA)) AS ESU_DATA,');
    SQL.Add('                    NULLIF(SUM(EF.EAT_QTDE),0) AS EAT_QTDE,CAST(NULLIF(SUM(EF.EAT_QTRL),0) AS INTEGER) AS EAT_QTRL,MAX(IIF(EF.EAT_QTDE = 0,NULL,EF.EAT_DATA)) AS EAT_DATA,');
    SQL.Add('                    NULLIF(SUM(EF.ECO_QTDE),0) AS ECO_QTDE,CAST(NULLIF(SUM(EF.ECO_QTRL),0) AS INTEGER) AS ECO_QTRL,MAX(IIF(EF.ECO_QTDE = 0,NULL,EF.ECO_DATA)) AS ECO_DATA,');
    SQL.Add('                    MAX(EF.ECO_DECO) AS ECO_DECO,');
    SQL.Add('                    NULLIF(SUM(EF.EPP_QTDE),0) AS EPP_QTDE,CAST(NULLIF(SUM(EF.EPP_QTRL),0) AS INTEGER) AS EPP_QTRL,MAX(IIF(EF.EPP_QTDE = 0,NULL,EF.EPP_DATA)) AS EPP_DATA,');
    SQL.Add('                    NULLIF(SUM(EF.EPR_QTDE),0) AS EPR_QTDE,CAST(NULLIF(SUM(EF.EPR_QTRL),0) AS INTEGER) AS EPR_QTRL,MAX(IIF(EF.EPR_QTDE = 0,NULL,EF.EPR_DATA)) AS EPR_DATA,');
    SQL.Add('                    NULLIF(SUM(EF.EPS_QTDE),0) AS EPS_QTDE,CAST(NULLIF(SUM(EF.EPS_QTRL),0) AS INTEGER) AS EPS_QTRL,MAX(IIF(EF.EPS_QTDE = 0,NULL,EF.EPS_DATA)) AS EPS_DATA ');

    SQL.Add('           FROM     ESTOQUE             AS EF');
    SQL.Add('           JOIN     TAB_PAR_SIS_EST_EMP AS ES ON (ES.ID   = :IDEP AND ES.IDEP = EF.IDEP)');
    SQL.Add('           JOIN     TAB_PAR_SIS         AS EP ON (EP.ID   = EF.IDEP)');
    SQL.Add('           GROUP BY IDCP,IDEP,SGEP)     AS EF ON (EF.IDCP = CP.IDCP)');

    SQL.Add('WHERE (CP.IDAK = :IDAK)');
    SQL.Add('AND   (EF.IDEP IS NULL ');
    SQL.Add('OR     COALESCE(EF.EPE_QTDE,0) + COALESCE(EF.EEP_QTDE,0) + COALESCE(EF.ERV_QTDE,0) + COALESCE(EF.EPI_QTDE,0)  + COALESCE(EF.ESU_QTDE,0) + COALESCE(EF.EAT_QTDE,0)  + COALESCE(EF.EPR_QTDE,0) + COALESCE(EF.EPS_QTDE,0) <> 0)');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      CP.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY EF.DTEV DESC');

    ParamByName('IDEP').Value := RECParametros.ID;
    Prepare;
    Open;
  end;

  { Físico }
  with EST_FIS do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID  ,PK.SGEP,');
    SQL.Add('       PK.LGCA,PK.DTCA,');

    SQL.Add('       PK.CDRO,PK.DTRO,');
    SQL.Add('       PK.DEPD,PK.DTPD,');
    SQL.Add('       PK.DECE,');

    SQL.Add('       PK.CDET   ,PK.CTNR,PK.LOTE,');
    SQL.Add('       PK.ABOP   ,PK.ABTP,');
    SQL.Add('       PK.EST_PDV,PK.EST_SEP,PK.EST_DEV,PK.EST_DEF,');
    SQL.Add('       PK.EST_EPE,PK.EST_ERV,PK.EST_EPI,PK.EST_ESU,PK.EST_EAT,');

    SQL.Add('       PK.IDCP,PK.SKU ,PK.DGCP,');
    SQL.Add('       PK.QTDE,PK.QTRL,');

    SQL.Add('       PK.CDDF,PK.LGDF,PK.DTDF,PK.DEDF,PK.FADF,');
    SQL.Add('       PK.REST,PK.STFI,');
    SQL.Add('       PK.INFADCAD');

    SQL.Add('FROM   VW_CAD_PRO_EST_FIS_NEW AS PK');

    SQL.Add('WHERE  PK.IDAK    = :IDAK');
    SQL.Add('AND    PK.ES_IDEP = :IDEP');

    SQL.Add('AND  ((PK.EST_SEP = 0 AND PK.EST_ESU = 0) ');
    SQL.Add('OR    (PK.EST_SEP = 1 AND PK.EST_ESU = 1))');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.DTEV DESC');

    ParamByName('IDEP').Value := RECParametros.ID;
    Prepare;
    Open;
  end;

  { Revisado }
  with EST_ERV do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID  ,PK.SGEP,');
    SQL.Add('       PK.LGCA,PK.DTCA,');

    SQL.Add('       PK.CDRO,PK.DTRO,');
    SQL.Add('       PK.DEPD,PK.DTPD,');
    SQL.Add('       PK.DECE,');

    SQL.Add('       PK.CDET   ,PK.CTNR,PK.LOTE,');
    SQL.Add('       PK.ABOP   ,PK.ABTP,');
    SQL.Add('       PK.EST_PDV,PK.EST_SEP,PK.EST_DEV,PK.EST_DEF,');
    SQL.Add('       PK.EST_EPE,PK.EST_ERV,PK.EST_EPI,PK.EST_ESU,PK.EST_EAT,');

    SQL.Add('       PK.IDCP,PK.SKU ,PK.DGCP,');
    SQL.Add('       PK.QTDE,PK.QTRL,');

    SQL.Add('       PK.CDDF,PK.LGDF,PK.DTDF,PK.DEDF,PK.FADF,');
    SQL.Add('       PK.REST,PK.STFI,');
    SQL.Add('       PK.INFADCAD');

    SQL.Add('FROM   VW_CAD_PRO_EST_FIS_NEW AS PK');

    SQL.Add('WHERE  PK.IDAK    = :IDAK');
    SQL.Add('AND    PK.ES_IDEP = :IDEP');

    SQL.Add('AND    PK.IDPK    = 0');
    SQL.Add('AND    PK.EST_SEP = 0');
    SQL.Add('AND    PK.EST_ERV = 1');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.DTEV DESC');

    ParamByName('IDEP').Value := RECParametros.ID;
    Prepare;
    Open;
  end;

  { Piloto }
  with EST_EPI do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID  ,PK.SGEP,');
    SQL.Add('       PK.LGCA,PK.DTCA,');

    SQL.Add('       PK.CDRO,PK.DTRO,');
    SQL.Add('       PK.DEPD,PK.DTPD,');
    SQL.Add('       PK.DECE,');

    SQL.Add('       PK.CDET   ,PK.CTNR,PK.LOTE,');
    SQL.Add('       PK.ABOP   ,PK.ABTP,');
    SQL.Add('       PK.EST_PDV,PK.EST_SEP,PK.EST_DEV,PK.EST_DEF,');
    SQL.Add('       PK.EST_EPE,PK.EST_ERV,PK.EST_EPI,PK.EST_ESU,PK.EST_EAT,');

    SQL.Add('       PK.IDCP,PK.SKU ,PK.DGCP,');
    SQL.Add('       PK.QTDE,PK.QTRL,');

    SQL.Add('       PK.CDDF,PK.LGDF,PK.DTDF,PK.DEDF,PK.FADF,');
    SQL.Add('       PK.REST,PK.STFI,');
    SQL.Add('       PK.INFADCAD');

    SQL.Add('FROM   VW_CAD_PRO_EST_FIS_NEW AS PK');

    SQL.Add('WHERE  PK.IDAK    = :IDAK');
    SQL.Add('AND    PK.ES_IDEP = :IDEP');

    SQL.Add('AND    PK.IDPK    = 0');
    SQL.Add('AND    PK.EST_SEP = 0');
    SQL.Add('AND    PK.EST_EPI = 1');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.DTEV DESC');

    ParamByName('IDEP').Value := RECParametros.ID;
    Prepare;
    Open;
  end;

  { Substituto }
  with EST_ESU do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID  ,PK.SGEP,');
    SQL.Add('       PK.LGCA,PK.DTCA,');

    SQL.Add('       PK.CDRO,PK.DTRO,');
    SQL.Add('       PK.DEPD,PK.DTPD,');
    SQL.Add('       PK.DECE,');

    SQL.Add('       PK.CDET   ,PK.CTNR,PK.LOTE,');
    SQL.Add('       PK.ABOP   ,PK.ABTP,');
    SQL.Add('       PK.EST_PDV,PK.EST_SEP,PK.EST_DEV,PK.EST_DEF,');
    SQL.Add('       PK.EST_EPE,PK.EST_ERV,PK.EST_EPI,PK.EST_ESU,PK.EST_EAT,');

    SQL.Add('       PK.IDCP,PK.SKU ,PK.DGCP,');
    SQL.Add('       PK.QTDE,PK.QTRL,');

    SQL.Add('       PK.CDDF,PK.LGDF,PK.DTDF,PK.DEDF,PK.FADF,');
    SQL.Add('       PK.REST,PK.STFI,');
    SQL.Add('       PK.INFADCAD');

    SQL.Add('FROM   VW_CAD_PRO_EST_FIS_NEW AS PK');

    SQL.Add('WHERE  PK.IDAK    = :IDAK');
    SQL.Add('AND    PK.ES_IDEP = :IDEP');

    SQL.Add('AND    PK.IDPK    = 0');
    SQL.Add('AND    PK.EST_SEP = 0');
    SQL.Add('AND    PK.EST_ESU = 1');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.DTEV DESC');

    ParamByName('IDEP').Value := RECParametros.ID;
    Prepare;
    Open;
  end;

  { Antecipado }
  with EST_EAT do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID  ,PK.SGEP,');
    SQL.Add('       PK.LGCA,PK.DTCA,');

    SQL.Add('       PK.CDRO,PK.DTRO,');
    SQL.Add('       PK.DEPD,PK.DTPD,');
    SQL.Add('       PK.DECE,');

    SQL.Add('       PK.CDET   ,PK.CTNR,PK.LOTE,');
    SQL.Add('       PK.ABOP   ,PK.ABTP,');
    SQL.Add('       PK.EST_PDV,PK.EST_SEP,PK.EST_DEV,PK.EST_DEF,');
    SQL.Add('       PK.EST_EPE,PK.EST_ERV,PK.EST_EPI,PK.EST_ESU,PK.EST_EAT,');

    SQL.Add('       PK.IDCP,PK.SKU ,PK.DGCP,');
    SQL.Add('       PK.QTDE,PK.QTRL,');

    SQL.Add('       PK.CDDF,PK.LGDF,PK.DTDF,PK.DEDF,PK.FADF,');
    SQL.Add('       PK.REST,PK.STFI,');
    SQL.Add('       PK.INFADCAD');

    SQL.Add('FROM   VW_CAD_PRO_EST_RFK_NEW AS PK');

    SQL.Add('WHERE  PK.IDAK    = :IDAK');
    SQL.Add('AND    PK.ES_IDEP = :IDEP');

    SQL.Add('AND    PK.EST_EAT = 1');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.DTEV DESC');

    ParamByName('IDEP').Value := RECParametros.ID;
    Prepare;
    Open;
  end;

  { Compras em Aberto }
  with EST_CPA do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID  ,PK.SGEP,');
    SQL.Add('       PK.LGCA,PK.DTCA,');
    SQL.Add('       PK.DEPK,PK.DTPK,');
    SQL.Add('       PK.DECD,PK.DECV,');
    SQL.Add('       PK.SKU ,PK.DGCP,');
    SQL.Add('       PK.QTPD,PK.RLPD,');
    SQL.Add('       PK.QTSP,PK.RLSP,');
    SQL.Add('       PK.CTNR,PK.CTNR_PPRD,PK.CTNR_PEMB,PK.CTNR_PDSB,PK.CTNR_PCHP,');
    SQL.Add('       PK.INFADCAD');

    SQL.Add('FROM   VW_CAD_PRO_EST_FIS_PRC AS PK');

    SQL.Add('WHERE  PK.IDAK    = :IDAK');
    SQL.Add('AND    PK.ES_IDEP = :IDEP');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.DTEV DESC');

    ParamByName('IDEP').Value := RECParametros.ID;
    Prepare;
    Open;
  end;

  { Compras Finalizadas }
  with EST_CPF do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT FK.IDFK AS ID,EP.FANTASIA_SIGLA AS SGEP,');
    SQL.Add('       LG_CA.LOGIN AS LGCA,FK.DTCA,');

    SQL.Add('       PK.DEPK,CAST(PK.DTCA AS DATE) AS DTPK,');
    SQL.Add('       CD.FANTASIA AS DECD,CV.LOGIN  AS DECV,');

    SQL.Add('       CP.SKU,CP.DGCP,');
    SQL.Add('       CAST(FK.QTDE AS NUMERIC(12,4)) AS QTPD,PK.QTRL AS RLPD,');
    SQL.Add('       CAST(FK.QTSP AS NUMERIC(12,4)) AS QTSP,FK.RLSP,');

    SQL.Add('       FK.CTNR,FK.CTNR_RPRD,FK.CTNR_REMB,FK.CTNR_RDSB,FK.CTNR_RCHP,');

    SQL.Add('       TRIM(CAST(SUBSTRING(PK.INFADCAD FROM 1 FOR 1064) AS VARCHAR(1064))) AS INFADCAD');

    SQL.Add('FROM ' + oREPZero('PED_COM_CAB','_',RECParametros.Id,3) + ' AS PK');

    SQL.Add('JOIN   TAB_PAR_SIS_EST_EMP AS EP_ES ON (EP_ES.IDEP = PK.IDEP)');
    SQL.Add('JOIN   TAB_PAR_SIS         AS EP    ON (EP.ID      = PK.IDEP)');

    SQL.Add('JOIN   CAD_FOR  AS CD    ON (CD.IDCF    = PK.IDCD)');
    SQL.Add('JOIN   TAB_USER AS CV    ON (CV.IDLG    = PK.IDCV)');

    SQL.Add('JOIN ' + oREPZero('PED_COM_ITE','_',RECParametros.Id,3) + ' AS FK ON (FK.IDPK = PK.IDPK)');
    SQL.Add('JOIN   CAD_PRO  AS CP    ON (CP.IDCP    = FK.IDCP)');
    SQL.Add('JOIN   TAB_USER AS LG_CA ON (LG_CA.IDLG = FK.IDCA)');


    SQL.Add('WHERE  FK.IDAK    = :IDAK');
    SQL.Add('AND    EP_ES.IDEP = :IDEP');

    SQL.Add('AND    FK.REST LIKE :REST');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY FK.DTEV DESC');

    ParamByName('IDEP').Value := RECParametros.ID;
    ParamByName('REST').Value := 'FIM%';

    Prepare;
    Open;
  end;

  { Vendas Programadas }
  with EST_PRG do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID  ,PK.SGEP,');
    SQL.Add('       PK.LGCA,PK.DTCA,');
    SQL.Add('       PK.DEPK,PK.DTPK,PK.CTNR,');
    SQL.Add('       PK.DECD,PK.DECV,PK.DECR,');
    SQL.Add('       PK.SKU ,PK.DGCP,');
    SQL.Add('       PK.QTDE,PK.QTRL,');
    SQL.Add('       PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,');
    SQL.Add('       PK.VPRC_PAD,PK.VPRC_COM,');
    SQL.Add('       PK.TSDE ,PK.TCDE ,');
    SQL.Add('       PK.VDSC ,PK.PDSC ,');
    SQL.Add('       PK.VICMS,PK.PICMS,');
    SQL.Add('       PK.VIPI ,PK.PIPI ,');
    SQL.Add('       PK.VST  ,PK.PST  ,');
    SQL.Add('       PK.INFADCAD');

    SQL.Add('FROM   VW_CAD_PRO_EST_FIS_PRG AS PK');

    SQL.Add('WHERE  PK.IDAK    = :IDAK');
    SQL.Add('AND    PK.ES_IDEP = :IDEP');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.DTEV DESC');

    ParamByName('IDEP').Value := RECParametros.ID;
    Prepare;
    Open;
  end;

  { Vendas Pronta Entrega }
  with EST_RES do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID  ,PK.SGEP,');
    SQL.Add('       PK.LGCA,PK.DTCA,');
    SQL.Add('       PK.DEPK,PK.DTPK,PK.CTNR,');
    SQL.Add('       PK.DECD,PK.DECV,PK.DECR,');
    SQL.Add('       PK.STPD,PK.DVPD,PK.RECO,');
    SQL.Add('       PK.STFI,PK.BQST,');
    SQL.Add('       PK.SKU ,PK.DGCP,');
    SQL.Add('       PK.QTDE,PK.QTRL,');
    SQL.Add('       PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,');
    SQL.Add('       PK.VPRC_PAD,PK.VPRC_COM,');
    SQL.Add('       PK.INFADCAD,PK.INFADPRN ');

    SQL.Add('FROM   VW_CAD_PRO_EST_FIS_RES AS PK');

    SQL.Add('WHERE  PK.IDAK    = :IDAK');
    SQL.Add('AND    PK.ES_IDEP = :IDEP');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.DTEV DESC');

    ParamByName('IDEP').Value := RECParametros.ID;
    Prepare;
    Open;
  end;

  { Vendas Separadas }
  with EST_SEP do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID  ,PK.SGEP,');
    SQL.Add('       PK.LGCA,PK.DTCA,');

    SQL.Add('       PK.CDRO,PK.DTRO,');
    SQL.Add('       PK.DEPK,PK.DTPK,');
    SQL.Add('       PK.DECD,PK.DECV,PK.DECR,');

    SQL.Add('       PK.CDET   ,PK.CTNR,PK.LOTE,');
    SQL.Add('       PK.ABOP   ,PK.ABTP,');
    SQL.Add('       PK.EST_PDV,PK.EST_SEP,PK.EST_DEV,PK.EST_DEF,');
    SQL.Add('       PK.EST_EPE,PK.EST_ERV,PK.EST_EPI,PK.EST_ESU,PK.EST_EAT,');

    SQL.Add('       PK.IDCP,PK.SKU ,PK.DGCP,');
    SQL.Add('       PK.QTDE,PK.QTRL,');

    SQL.Add('       PK.CDSP,PK.IDSP,PK.DESP,PK.DTSP,');
    SQL.Add('       PK.CDDF,PK.LGDF,PK.DTDF,PK.DEDF,PK.FADF,');

    SQL.Add('       PK.REST,PK.STFI,');
    SQL.Add('       PK.INFADCAD');
    
    SQL.Add('FROM   VW_CAD_PRO_EST_FIS_SEP AS PK');

    SQL.Add('WHERE  PK.IDAK    = :IDAK');
    SQL.Add('AND    PK.ES_IDEP = :IDEP');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.DTEV DESC');

    ParamByName('IDEP').Value := RECParametros.ID;
    Prepare;
    Open;
  end;
end;

procedure TFrmCAD_PRO.ConsultaAfterClose(DataSet: TDataSet);
begin
  inherited;
  { Cadastro }
  CAD_PRO_PRC.Close; { Preços }
  CAD_PRO_FIC.Close; { Ficha Técnica }

  { Estoque }
  EST_EPE.Close; { Pronta Entrega }
  EST_FIS.Close; { Físico }
  EST_ERV.Close; { Revisado }
  EST_EPI.Close; { Piloto }
  EST_ESU.Close; { Substituto }
  EST_EAT.Close; { Antecipado }
end;

procedure TFrmCAD_PRO.DTSConsultaDataChange(Sender: TObject;
  Field: TField);
var
  APosCount: Word;
begin
  { Informações Adicionais }
  APosCount          := oPosCount(''#$D'',ConsultaINFADTEC.AsString);
  PNLINFADART.Height :=

  IFThen((APosCount = 00) and (ConsultaINFADTEC.AsString =  EmptyStr) ,86,
  IFThen((APosCount = 00) and (ConsultaINFADTEC.AsString <> EmptyStr) ,86,
  IFThen((APosCount = 01),086,
  IFThen((APosCount = 02),090,100))));
end;

procedure TFrmCAD_PRO.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  if ANode.Values[DBGConsultaREST.Index] = 'PRÉ' then
  begin
    AFont.Color := clBlack;
    AColor      := clInfoBk;
  end else
  if ANode.Values[DBGConsultaREST.Index] = 'I' then
  begin
    AFont.Color := clWhite;
    AColor      := $000024B3;
  end;
end;


{ ********************* TABELA DE PREÇOS ******************** }

procedure TFrmCAD_PRO.CAD_PRO_PRCCalcFields(DataSet: TDataSet);
begin
  CAD_PRO_PRCC_CF_VPRC_PAD.Value := FormatFloat(CAD_PRO_PRCCF_VPRC_ORI.AsString + ' ,##,0.00#',CAD_PRO_PRCCF_VPRC_PAD.AsFloat);
end;

procedure TFrmCAD_PRO.DBGCAD_PRO_PRCCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Zebra
    if ANode.Values[DBGCAD_PRO_PRCC_ID.Index] <> Null then
    if ANode.Values[DBGCAD_PRO_PRCC_ID.Index] mod 2 <> 0 then
    AColor := $00F7F7F7 else
    AColor := clHighLightText;}

    { Atacado }
    if (AColumn = DBGCAD_PRO_PRCVPRC_PAD) then
    if (ANode.Values[DBGCAD_PRO_PRCVPRC_PAD.Index] <> Null) then
    begin
      AColor      := $00E5E5E5;
      AFont.Color := clWindowText;
      AFont.Style := [fsBold];
    end;

    { Atacarejo }
    if (AColumn = DBGCAD_PRO_PRCATJ_VPRC_PAD) then
    if (ANode.Values[DBGCAD_PRO_PRCATJ_VPRC_PAD.Index] <> Null) then
    begin
      AColor      := $00E5E5E5;
      AFont.Color := clWindowText;
    end;

    { Varejo }
    if (AColumn = DBGCAD_PRO_PRCVAR_VPRC_PAD) then
    if (ANode.Values[DBGCAD_PRO_PRCVAR_VPRC_PAD.Index] <> Null) then
    begin
      AColor      := $00E5E5E5;
      AFont.Color := clWindowText;
    end;

    { Loja Virtual }
    if (AColumn = DBGCAD_PRO_PRCLJV_VPRC_PAD) then
    if (ANode.Values[DBGCAD_PRO_PRCLJV_VPRC_PAD.Index] <> Null) then
    begin
      AColor      := $00E5E5E5;
      AFont.Color := clWindowText;
    end;

    { Representante }
    if (AColumn = DBGCAD_PRO_PRCREP_VPRC_PAD) then
    if (ANode.Values[DBGCAD_PRO_PRCREP_VPRC_PAD.Index] <> Null) then
    begin
      AColor      := $00E5E5E5;
      AFont.Color := clWindowText;
    end;
  end;
end;



{ *********************** FICHA TÉCNICA ********************* }

procedure TFrmCAD_PRO.DBGCAD_PRO_FICCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if (AColumn = DBGCAD_PRO_FICMREND) and (ANode.Values[DBGCAD_PRO_FICMREND.Index] <> Null) then
    begin
      AFont.Color := clWindowText;
      AFont.Style := [fsBold];
    end;

    if ANode.Values[DBGCAD_PRO_FICMREND.Index] = Null then
    begin
      if (AColumn  = DBGCAD_PRO_FICMMETRO ) and (ANode.Values[DBGCAD_PRO_FICMMETRO.Index] <> Null) then
      begin
        AFont.Color := clWindowText;
        AFont.Style := [fsBold];
      end;

      if (AColumn  = DBGCAD_PRO_FICMPESO) and (ANode.Values[DBGCAD_PRO_FICMPESO.Index]  <> Null) then
      begin
        AFont.Color := clWindowText;
        AFont.Style := [fsBold];
      end;
    end;
  end;
end;



{ *************************** CATÁLOGO ************************** }

procedure TFrmCAD_PRO.DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject;
  Field: TField);
begin
  PNLIMG_ARQ.Caption := _oLoadJPG(CAD_PRO_IMG_CDNIMG_ID,CAD_PRO_IMG_CDNIMG_PAD,IMG_PAD);

  DBILA_BMP1.Hint := CAD_PRO_IMG_CDND_ILA_INS1.AsString;
  DBILA_BMP2.Hint := CAD_PRO_IMG_CDND_ILA_INS2.AsString;
  DBILA_BMP3.Hint := CAD_PRO_IMG_CDND_ILA_INS3.AsString;
  DBILA_BMP4.Hint := CAD_PRO_IMG_CDND_ILA_INS4.AsString;
  DBILA_BMP5.Hint := CAD_PRO_IMG_CDND_ILA_INS5.AsString;
  DBILA_BMP6.Hint := CAD_PRO_IMG_CDND_ILA_INS6.AsString;
  DBILA_BMP7.Hint := CAD_PRO_IMG_CDND_ILA_INS7.AsString;
  DBILA_BMP8.Hint := CAD_PRO_IMG_CDND_ILA_INS8.AsString;

  BILA_BMP1.Hint  := DBILA_BMP1.Hint;
  BILA_BMP2.Hint  := DBILA_BMP2.Hint;
  BILA_BMP3.Hint  := DBILA_BMP3.Hint;
  BILA_BMP4.Hint  := DBILA_BMP4.Hint;
  BILA_BMP5.Hint  := DBILA_BMP5.Hint;
  BILA_BMP6.Hint  := DBILA_BMP6.Hint;
  BILA_BMP7.Hint  := DBILA_BMP7.Hint;
  BILA_BMP8.Hint  := DBILA_BMP8.Hint;
end;

procedure TFrmCAD_PRO.IMG_PADClick(Sender: TObject);
begin
  {$IF DEFINED(DEF_CPA)}
  {$ELSE}

{  uLoadZoom(IMG_PAD.Picture,[ConsultaArtigo.AsString,
                             EST_EPESKU.AsString,
                             EST_EPEDGCP.AsString,
                             ConsultaDECP.AsString,
                             EmptyStr,
                             EmptyStr]);
 }
  {$IFEND} ;
end;

{ *************** ESTOQUE PRONTA ENTREGA **************** }

procedure TFrmCAD_PRO.EST_EPEBeforeOpen(DataSet: TDataSet);
begin
  if Showing then
  begin
    DBGEST_EPEDGCP.Visible := False; { Grade }
    DBGEST_EPESGEP.Visible := False; { Local }
  end;  
end;

procedure TFrmCAD_PRO.EST_EPEAfterOpen(DataSet: TDataSet);
begin
  if EST_EPEDGCP.AsString <> EmptyStr then DBGEST_EPEDGCP.Field.FocusControl else
  DBGEST_EPESKU.Field.FocusControl; { SKU }

  { Catálogo }
  CAD_PRO_IMG_CDN.Prepare;
  CAD_PRO_IMG_CDN.Open;
end;

procedure TFrmCAD_PRO.EST_EPEAfterClose(DataSet: TDataSet);
begin
  CAD_PRO_IMG_CDN.Close; { Catálogo }
end;

procedure TFrmCAD_PRO.EST_EPEAfterScroll(DataSet: TDataSet);
begin
  { Grade }
  if EST_EPEDGCP.AsString <> EmptyStr then
  DBGEST_EPEDGCP.Visible := True;

  { Local }
  if (EST_EPESGEP.AsString <> EmptyStr) and (EST_EPESGEP.AsString <> RECParametros.SGEP) then
  DBGEST_EPESGEP.Visible := True;
end;

procedure TFrmCAD_PRO.EST_EPECalcFields(DataSet: TDataSet);
begin
  EST_EPEC_ID.Value := EST_EPE.RecNo;
end;

procedure TFrmCAD_PRO.DTSEST_EPEDataChange(Sender: TObject; Field: TField);
var
  APosCount: Word;
begin
  { Informações Adicionais }
  APosCount          := oPosCount(''#$D'',EST_EPEECO_DECO.AsString);
  PNLINFADEPE.Height :=

  IFThen((APosCount = 00) and (EST_EPEECO_DECO.AsString =  EmptyStr),00,
  IFThen((APosCount = 00) and (EST_EPEECO_DECO.AsString <> EmptyStr),70,
  IFThen((APosCount = 01),085,
  IFThen((APosCount = 02),095,
  IFThen((APosCount = 03),110,120)))));

  { Produtos }
  DBGEST_EPE.ApplyBestFit(DBGEST_EPESKU );
  DBGEST_EPE.ApplyBestFit(DBGEST_EPEDGCP);

  if (DBGEST_EPESKU.Width +
      IFThen(DBGEST_EPEDGCP.Visible,DBGEST_EPEDGCP.Width,0) +
      IFThen(DBGEST_EPESGEP.Visible,DBGEST_EPESGEP.Width,0) +

      DBGEST_EPEEPE_QTDE.Width +
      DBGEST_EPEEPE_QTRL.Width +
      DBGEST_EPEEEP_QTDE.Width +
      DBGEST_EPEEEP_QTRL.Width) <> PNLPKEstoque.Width then
  begin
    PNLPKEstoque.Width := DBGEST_EPESKU.Width +
                          IFThen(DBGEST_EPEDGCP.Visible,DBGEST_EPEDGCP.Width,0) +
                          IFThen(DBGEST_EPESGEP.Visible,DBGEST_EPESGEP.Width,0) +

                          DBGEST_EPEEPE_QTDE.Width +
                          DBGEST_EPEEPE_QTRL.Width +
                          DBGEST_EPEEEP_QTDE.Width +
                          DBGEST_EPEEEP_QTRL.Width + 50;
  end;                        
end;

procedure TFrmCAD_PRO.DBGEST_EPECustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Zebra
    if ANode.Values[DBGEST_EPEC_ID.Index] <> Null then
    if ANode.Values[DBGEST_EPEC_ID.Index] mod 2 <> 0 then
    AColor := $00F7F7F7 else
    AColor := clHighLightText; }

    if (LeftStr(ANode.Values[DBGEST_EPEREST.Index],1) = 'I') then
    begin
      AColor      := $00F8F8F8;
      AFont.Color := $000024B3;
    end else

    if (LeftStr(ANode.Values[DBGEST_EPEREST.Index],1) = 'P') then
    begin
      AColor      := $00C8F0F0;
      AFont.Color := clGrayText;
    end else
    begin
      { Produtos }
      if (AColumn = DBGEST_EPESKU) or (AColumn = DBGEST_EPEDGCP) then
      begin
        AColor      := clHighLightText;
        AFont.Color := clWindowText;
      end;

      { Local }
      if AColumn = DBGEST_EPESGEP then
      begin
        AColor      := clHighLightText;
        AFont.Color := clGrayText;
      end;

      { Estoque Pronta Entrega }
      if (AColumn = DBGEST_EPEEPE_QTDE) or (AColumn = DBGEST_EPEEPE_QTRL) then
      begin
        AColor      := $00F7FEE1;
        AFont.Color := $00437C00;

        if (ANode.Values[DBGEST_EPEEPE_QTDE.Index] <> Null) then
        if (ANode.Values[DBGEST_EPEEPE_QTDE.Index] <  0) then
        AFont.Color := $000024B3;
      end;

      { Estoque Programado }
      if (AColumn = DBGEST_EPEEEP_QTDE) or (AColumn = DBGEST_EPEEEP_QTRL) then
      begin
        AColor      := $00FFFFE1;
        AFont.Color := clNavy;

        if (ANode.Values[DBGEST_EPEEEP_QTDE.Index] <> Null) then
        if (ANode.Values[DBGEST_EPEEEP_QTDE.Index] <  0) then
        AFont.Color := $000024B3;
      end;
    end;
  end;

  if ANode.Selected then
  begin
    AColor      := clHighlight;
    AFont.Color := clHighlightText;
  end;

  if ASelected then
  begin
    AColor      := $00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;

{ ******************* ESTOQUE FÍSICO ******************** }

procedure TFrmCAD_PRO.EST_FISBeforeOpen(DataSet: TDataSet);
begin
  if Showing then
  begin
    DBGEST_FISDGCP.Visible := False; { Grade }
    DBGEST_FISSGEP.Visible := False; { Local }

    DBGEST_FIS.Bands[4].Visible := False; { Qualidade }
  end;
end;

procedure TFrmCAD_PRO.EST_FISAfterOpen(DataSet: TDataSet);
begin
  if EST_FISDGCP.AsString <> EmptyStr then DBGEST_FISDGCP.Field.FocusControl else
  DBGEST_FISSKU.Field.FocusControl;
end;

procedure TFrmCAD_PRO.EST_FISAfterScroll(DataSet: TDataSet);
begin
  { Grade }
  if EST_FISDGCP.AsString <> EmptyStr then
  DBGEST_FISDGCP.Visible := True;

  { Local }
  if EST_FISSGEP.AsString <> RECParametros.SGEP then
  DBGEST_FISSGEP.Visible := True;

  { Qualidade }
  if EST_FISCDDF.AsInteger > 0 then
  DBGEST_FIS.Bands[4].Visible := True;
end;

procedure TFrmCAD_PRO.EST_FISCalcFields(DataSet: TDataSet);
begin
  EST_FISC_ID.Value := EST_FIS.RecNo;
end;

procedure TFrmCAD_PRO.DTSEST_FISDataChange(Sender: TObject; Field: TField);
var
  APosCount: Word;
begin
  { Informações Adicionais }
  APosCount          := oPosCount(''#$D'',EST_FISINFADCAD.AsString);
  PNLINFADFIS.Height :=

  IFThen((APosCount = 00) and (EST_FISINFADCAD.AsString =  EmptyStr),00,
  IFThen((APosCount = 00) and (EST_FISINFADCAD.AsString <> EmptyStr),70,
  IFThen((APosCount = 01),085,
  IFThen((APosCount = 02),095,
  IFThen((APosCount = 03),110,120)))));

  { Produtos }
  DBGEST_FIS.ApplyBestFit(DBGEST_FISSKU );
  DBGEST_FIS.ApplyBestFit(DBGEST_FISDGCP);

  DBGEST_FIS.ApplyBestFit(DBGEST_FISSKU ); { Produto }
  DBGEST_FIS.ApplyBestFit(DBGEST_FISDGCP); { Grade }
  DBGEST_FIS.ApplyBestFit(DBGEST_FISLGCA); { Responsável }
  DBGEST_FIS.ApplyBestFit(DBGEST_FISABTP); { Finalidade }

  { Emitente }
  DBGEST_FIS.ApplyBestFit(DBGEST_FISDEPD); { Documento }
  DBGEST_FIS.ApplyBestFit(DBGEST_FISDECE); { Nome Fantasia }
  if DBGEST_FISDECE.Width  > 150 then
     DBGEST_FISDECE.Width := 150; { Limita o tamanho da coluna }

  { Qualidade }
  DBGEST_FISFADF.Visible := (EST_FISCDDF.AsInteger > 0);
  DBGEST_FISLGDF.Visible := (EST_FISCDDF.AsInteger > 0);
  DBGEST_FISDTDF.Visible := (EST_FISCDDF.AsInteger > 0);

  DBGEST_FIS.ApplyBestFit(DBGEST_FISDEDF); { Descrição }
  DBGEST_FIS.ApplyBestFit(DBGEST_FISFADF); { Fase }
end;

procedure TFrmCAD_PRO.DBGEST_FISCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Zebra
    if ANode.Values[DBGEST_FISC_ID.Index] <> Null then
    if ANode.Values[DBGEST_FISC_ID.Index] mod 2 <> 0 then
    AColor := $00F7F7F7 else
    AColor := clHighLightText;}

    { Defeitos }
    if (ANode.Values[DBGEST_FISCDDF.Index] > 0) then
    begin
      AColor      := $00F8F8F8;
      AFont.Color := $000024B3;
    end else
    begin
      { Produtos }
      if (AColumn = DBGEST_FISSKU) or (AColumn = DBGEST_FISDGCP) then
      begin
        AColor      := $00DFDFDF;
        AFont.Color := clWindowText;
      end;

      { Local }
      if AColumn = DBGEST_FISSGEP then
      begin
        AColor      := $00DFDFDF;
        AFont.Color := clGrayText;
      end;

      { Lançamentos }
      if (AColumn = DBGEST_FISQTDE) or (AColumn = DBGEST_FISQTRL) then
      begin
        AColor      := $00F7FEE1;
        AFont.Color := $00437C00;
      end;

      if (AColumn = DBGEST_FISQTDE) or (AColumn = DBGEST_FISQTRL) then
      if (ANode.Values[DBGEST_FISQTDE.Index] <> Null) then
      if (ANode.Values[DBGEST_FISQTDE.Index]  < 0) then
      AFont.Color := $000024B3;

      { Etiquetas }
      if AColumn = DBGEST_FISCDET then
      begin
        AColor      := $00FFFFE1;
        AFont.Color := clNavy;
      end;

      { Container }
      if (AColumn = DBGEST_FISCTNR) then
      if (ANode.Values[DBGEST_FISCTNR.Index] <> EmptyStr) then
      AFont.Color := clWindowText;

      { Lote }
      if (AColumn = DBGEST_FISLOTE) then
      if (ANode.Values[DBGEST_FISLOTE.Index] <> EmptyStr) then
      AFont.Color := clWindowText;

      { Tipo + Finalidade }
      if AColumn = DBGEST_FISABOP then
      begin
        { Substituta }
        if ANode.Values[DBGEST_FISEST_ESU.Index] = 1 then
        AFont.Color := clWindowText;

        { Devolução }
        if ANode.Values[DBGEST_FISEST_DEV.Index] = 1 then
        AFont.Color := $0031B5B5 else

        { Defeito }
        if ANode.Values[DBGEST_FISEST_DEF.Index] = 1 then
        AFont.Color := $00002EE6;
      end;

      { Romaneios }
      if AColumn   = DBGEST_FISCDRO then
      AFont.Color := clWindowText;
    end;  
  end;

  if ANode.Selected then

  { Defeitos }
  if ANode.Values[DBGEST_FISCDDF.Index] > 0 then
  begin
    AColor      := $00002EE6;
    AFont.Color := clHighlightText;
  end else

  { Devoluções }
  if ANode.Values[DBGEST_FISEST_DEV.Index] = 1 then
  begin
    AColor      := $00C8F0F0;
    AFont.Color := clWindowText;
  end else
  begin
    AColor      := clHighlight;
    AFont.Color := clHighlightText;
  end;

  if ASelected then
  begin
    AColor      := $00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;



{ ***************** ESTOQUE REVISADO ******************** }

procedure TFrmCAD_PRO.EST_ERVBeforeOpen(DataSet: TDataSet);
begin
  if Showing then
  begin
    DBGEST_ERVDGCP.Visible := False; { Grade }
    DBGEST_ERVSGEP.Visible := False; { Local }

    DBGEST_ERV.Bands[4].Visible := False; { Qualidade }
  end;
end;

procedure TFrmCAD_PRO.EST_ERVAfterOpen(DataSet: TDataSet);
begin
  if EST_ERVDGCP.AsString <> EmptyStr then DBGEST_ERVDGCP.Field.FocusControl else
  DBGEST_ERVSKU.Field.FocusControl;
end;

procedure TFrmCAD_PRO.EST_ERVAfterScroll(DataSet: TDataSet);
begin
  { Grade }
  if EST_ERVDGCP.AsString <> EmptyStr then
  DBGEST_ERVDGCP.Visible := True;

  { Local }
  if EST_ERVSGEP.AsString <> RECParametros.SGEP then
  DBGEST_ERVSGEP.Visible := True;

  { Qualidade }
  if EST_ERVCDDF.AsInteger > 0 then
  DBGEST_ERV.Bands[4].Visible := True;
end;

procedure TFrmCAD_PRO.EST_ERVCalcFields(DataSet: TDataSet);
begin
  EST_ERVC_ID.Value := EST_ERV.RecNo;
end;

procedure TFrmCAD_PRO.DTSEST_ERVDataChange(Sender: TObject; Field: TField);
var
  APosCount: Word;
begin
  { Informações Adicionais }
  APosCount          := oPosCount(''#$D'',EST_ERVINFADCAD.AsString);
  PNLINFADERV.Height :=

  IFThen((APosCount = 00) and (EST_ERVINFADCAD.AsString =  EmptyStr),00,
  IFThen((APosCount = 00) and (EST_ERVINFADCAD.AsString <> EmptyStr),70,
  IFThen((APosCount = 01),085,
  IFThen((APosCount = 02),095,
  IFThen((APosCount = 03),110,120)))));

  { Produtos }
  DBGEST_ERV.ApplyBestFit(DBGEST_ERVSKU );
  DBGEST_ERV.ApplyBestFit(DBGEST_ERVDGCP);

  DBGEST_ERV.ApplyBestFit(DBGEST_ERVSKU ); { Produto }
  DBGEST_ERV.ApplyBestFit(DBGEST_ERVDGCP); { Grade }
  DBGEST_ERV.ApplyBestFit(DBGEST_ERVLGCA); { Responsável }
  DBGEST_ERV.ApplyBestFit(DBGEST_ERVABTP); { Finalidade }

  { Emitente }
  DBGEST_ERV.ApplyBestFit(DBGEST_ERVDEPD); { Documento }
  DBGEST_ERV.ApplyBestFit(DBGEST_ERVDECE); { Nome Fantasia }
  if DBGEST_ERVDECE.Width  > 150 then
     DBGEST_ERVDECE.Width := 150; { Limita o tamanho da coluna }

  { Qualidade }
  DBGEST_ERVFADF.Visible := (EST_ERVCDDF.AsInteger > 0);
  DBGEST_ERVLGDF.Visible := (EST_ERVCDDF.AsInteger > 0);
  DBGEST_ERVDTDF.Visible := (EST_ERVCDDF.AsInteger > 0);

  DBGEST_ERV.ApplyBestFit(DBGEST_ERVDEDF); { Descrição }
  DBGEST_ERV.ApplyBestFit(DBGEST_ERVFADF); { Fase }
end;

procedure TFrmCAD_PRO.DBGEST_ERVCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Zebra
    if ANode.Values[DBGEST_ERVC_ID.Index] <> Null then
    if ANode.Values[DBGEST_ERVC_ID.Index] mod 2 <> 0 then
    AColor := $00F7F7F7 else
    AColor := clHighLightText;}

    { Defeitos }
    if (ANode.Values[DBGEST_ERVCDDF.Index] > 0) then
    begin
      AColor      := $00F8F8F8;
      AFont.Color := $000024B3;
    end else
    begin
      { Produtos }
      if (AColumn = DBGEST_ERVSKU) or (AColumn = DBGEST_ERVDGCP) then
      begin
        AColor      := $00DFDFDF;
        AFont.Color := clWindowText;
      end;

      { Local }
      if AColumn = DBGEST_ERVSGEP then
      begin
        AColor      := $00DFDFDF;
        AFont.Color := clGrayText;
      end;

      { Lançamentos }
      if (AColumn = DBGEST_ERVQTDE) or (AColumn = DBGEST_ERVQTRL) then
      begin
        AColor      := $00F7FEE1;
        AFont.Color := $00437C00;
      end;

      if (AColumn = DBGEST_ERVQTDE) or (AColumn = DBGEST_ERVQTRL) then
      if (ANode.Values[DBGEST_ERVQTDE.Index] <> Null) then
      if (ANode.Values[DBGEST_ERVQTDE.Index]  < 0) then
      AFont.Color := $000024B3;

      { Etiquetas }
      if AColumn = DBGEST_ERVCDET then
      begin
        AColor      := $00FFFFE1;
        AFont.Color := clNavy;
      end;

      { Container }
      if (AColumn = DBGEST_ERVCTNR) then
      if (ANode.Values[DBGEST_ERVCTNR.Index] <> EmptyStr) then
      AFont.Color := clWindowText;

      { Lote }
      if (AColumn = DBGEST_ERVLOTE) then
      if (ANode.Values[DBGEST_ERVLOTE.Index] <> EmptyStr) then
      AFont.Color := clWindowText;

      { Tipo + Finalidade }
      if AColumn = DBGEST_ERVABOP then
      begin
        { Substituta }
        if ANode.Values[DBGEST_ERVEST_ESU.Index] = 1 then
        AFont.Color := clWindowText;

        { Devolução }
        if ANode.Values[DBGEST_ERVEST_DEV.Index] = 1 then
        AFont.Color := $0031B5B5 else

        { Defeito }
        if ANode.Values[DBGEST_ERVEST_DEF.Index] = 1 then
        AFont.Color := $00002EE6;
      end;

      { Romaneios }
      if AColumn   = DBGEST_ERVCDRO then
      AFont.Color := clWindowText;
    end;  
  end;

  if ANode.Selected then

  { Defeitos }
  if ANode.Values[DBGEST_ERVCDDF.Index] > 0 then
  begin
    AColor      := $00002EE6;
    AFont.Color := clHighlightText;
  end else

  { Devoluções }
  if Pos('DEV',ANode.Values[DBGEST_ERVABOP.Index]) > 0 then
  begin
    AColor      := $00C8F0F0;
    AFont.Color := clWindowText;
  end else
  begin
    AColor      := clHighlight;
    AFont.Color := clHighlightText;
  end;

  if ASelected then
  begin
    AColor      := $00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;



{ ****************** ESTOQUE PILOTO ********************* }

procedure TFrmCAD_PRO.EST_EPIBeforeOpen(DataSet: TDataSet);
begin
  if Showing then
  begin
    DBGEST_EPIDGCP.Visible := False; { Grade }
    DBGEST_EPISGEP.Visible := False; { Local }

    DBGEST_EPI.Bands[4].Visible := False; { Qualidade }
  end;
end;

procedure TFrmCAD_PRO.EST_EPIAfterOpen(DataSet: TDataSet);
begin
  if EST_EPIDGCP.AsString <> EmptyStr then DBGEST_EPIDGCP.Field.FocusControl else
  DBGEST_EPISKU.Field.FocusControl;
end;

procedure TFrmCAD_PRO.EST_EPIAfterScroll(DataSet: TDataSet);
begin
  { Grade }
  if EST_EPIDGCP.AsString <> EmptyStr then
  DBGEST_EPIDGCP.Visible := True;

  { Local }
  if EST_EPISGEP.AsString <> RECParametros.SGEP then
  DBGEST_EPISGEP.Visible := True;

  { Qualidade }
  if EST_EPICDDF.AsInteger > 0 then
  DBGEST_EPI.Bands[4].Visible := True;
end;

procedure TFrmCAD_PRO.EST_EPICalcFields(DataSet: TDataSet);
begin
  EST_EPIC_ID.Value := EST_EPI.RecNo;
end;

procedure TFrmCAD_PRO.DTSEST_EPIDataChange(Sender: TObject; Field: TField);
var
  APosCount: Word;
begin
  { Informações Adicionais }
  APosCount          := oPosCount(''#$D'',EST_EPIINFADCAD.AsString);
  PNLINFADEPI.Height :=

  IFThen((APosCount = 00) and (EST_EPIINFADCAD.AsString =  EmptyStr),00,
  IFThen((APosCount = 00) and (EST_EPIINFADCAD.AsString <> EmptyStr),70,
  IFThen((APosCount = 01),085,
  IFThen((APosCount = 02),095,
  IFThen((APosCount = 03),110,120)))));

  { Produtos }
  DBGEST_EPI.ApplyBestFit(DBGEST_EPISKU );
  DBGEST_EPI.ApplyBestFit(DBGEST_EPIDGCP);

  DBGEST_EPI.ApplyBestFit(DBGEST_EPISKU ); { Produto }
  DBGEST_EPI.ApplyBestFit(DBGEST_EPIDGCP); { Grade }
  DBGEST_EPI.ApplyBestFit(DBGEST_EPILGCA); { Responsável }
  DBGEST_EPI.ApplyBestFit(DBGEST_EPIABTP); { Finalidade }

  { Emitente }
  DBGEST_EPI.ApplyBestFit(DBGEST_EPIDEPD); { Documento }
  DBGEST_EPI.ApplyBestFit(DBGEST_EPIDECE); { Nome Fantasia }
  if DBGEST_EPIDECE.Width  > 150 then
     DBGEST_EPIDECE.Width := 150; { Limita o tamanho da coluna }

  { Qualidade }
  DBGEST_EPIFADF.Visible := (EST_EPICDDF.AsInteger > 0);
  DBGEST_EPILGDF.Visible := (EST_EPICDDF.AsInteger > 0);
  DBGEST_EPIDTDF.Visible := (EST_EPICDDF.AsInteger > 0);

  DBGEST_EPI.ApplyBestFit(DBGEST_EPIDEDF); { Descrição }
  DBGEST_EPI.ApplyBestFit(DBGEST_EPIFADF); { Fase }
end;

procedure TFrmCAD_PRO.DBGEST_EPICustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Zebra
    if ANode.Values[DBGEST_EPIC_ID.Index] <> Null then
    if ANode.Values[DBGEST_EPIC_ID.Index] mod 2 <> 0 then
    AColor := $00F7F7F7 else
    AColor := clHighLightText;}

    { Defeitos }
    if (ANode.Values[DBGEST_EPICDDF.Index] > 0) then
    begin
      AColor      := $00F8F8F8;
      AFont.Color := $000024B3;
    end else
    begin
      { Produtos }
      if (AColumn = DBGEST_EPISKU) or (AColumn = DBGEST_EPIDGCP) then
      begin
        AColor      := $00DFDFDF;
        AFont.Color := clWindowText;
      end;

      { Local }
      if AColumn = DBGEST_EPISGEP then
      begin
        AColor      := $00DFDFDF;
        AFont.Color := clGrayText;
      end;

      { Lançamentos }
      if (AColumn = DBGEST_EPIQTDE) or (AColumn = DBGEST_EPIQTRL) then
      begin
        AColor      := $00F7FEE1;
        AFont.Color := $00437C00;
      end;

      if (AColumn = DBGEST_EPIQTDE) or (AColumn = DBGEST_EPIQTRL) then
      if (ANode.Values[DBGEST_EPIQTDE.Index] <> Null) then
      if (ANode.Values[DBGEST_EPIQTDE.Index]  < 0) then
      AFont.Color := $000024B3;

      { Etiquetas }
      if AColumn = DBGEST_EPICDET then
      begin
        AColor      := $00FFFFE1;
        AFont.Color := clNavy;
      end;

      { Container }
      if (AColumn = DBGEST_EPICTNR) then
      if (ANode.Values[DBGEST_EPICTNR.Index] <> EmptyStr) then
      AFont.Color := clWindowText;

      { Lote }
      if (AColumn = DBGEST_EPILOTE) then
      if (ANode.Values[DBGEST_EPILOTE.Index] <> EmptyStr) then
      AFont.Color := clWindowText;

      { Tipo + Finalidade }
      if AColumn = DBGEST_EPIABOP then
      begin
        { Substituta }
        if ANode.Values[DBGEST_EPIEST_ESU.Index] = 1 then
        AFont.Color := clWindowText;

        { Devolução }
        if ANode.Values[DBGEST_EPIEST_DEV.Index] = 1 then
        AFont.Color := $0031B5B5 else

        { Defeito }
        if ANode.Values[DBGEST_EPIEST_DEF.Index] = 1 then
        AFont.Color := $00002EE6;
      end;

      { Romaneios }
      if AColumn   = DBGEST_EPICDRO then
      AFont.Color := clWindowText;
    end;  
  end;

  if ANode.Selected then

  { Defeitos }
  if ANode.Values[DBGEST_EPICDDF.Index] > 0 then
  begin
    AColor      := $00002EE6;
    AFont.Color := clHighlightText;
  end else

  { Devoluções }
  if Pos('DEV',ANode.Values[DBGEST_EPIABOP.Index]) > 0 then
  begin
    AColor      := $00C8F0F0;
    AFont.Color := clWindowText;
  end else
  begin
    AColor      := clHighlight;
    AFont.Color := clHighlightText;
  end;

  if ASelected then
  begin
    AColor      := $00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;



{ **************** ESTOQUE SUBSTITUTO ******************* }


procedure TFrmCAD_PRO.EST_ESUBeforeOpen(DataSet: TDataSet);
begin
  if Showing then
  begin
    DBGEST_ESUDGCP.Visible := False; { Grade }
    DBGEST_ESUSGEP.Visible := False; { Local }

    DBGEST_ESU.Bands[4].Visible := False; { Qualidade }
  end;
end;

procedure TFrmCAD_PRO.EST_ESUAfterOpen(DataSet: TDataSet);
begin
  if EST_ESUDGCP.AsString <> EmptyStr then DBGEST_ESUDGCP.Field.FocusControl else
  DBGEST_ESUSKU.Field.FocusControl;
end;

procedure TFrmCAD_PRO.EST_ESUAfterScroll(DataSet: TDataSet);
begin
  { Grade }
  if EST_ESUDGCP.AsString <> EmptyStr then
  DBGEST_ESUDGCP.Visible := True;

  { Local }
  if EST_ESUSGEP.AsString <> RECParametros.SGEP then
  DBGEST_ESUSGEP.Visible := True;

  { Qualidade }
  if EST_ESUCDDF.AsInteger > 0 then
  DBGEST_ESU.Bands[4].Visible := True;
end;

procedure TFrmCAD_PRO.EST_ESUCalcFields(DataSet: TDataSet);
begin
  EST_ESUC_ID.Value := EST_ESU.RecNo;
end;

procedure TFrmCAD_PRO.DTSEST_ESUDataChange(Sender: TObject; Field: TField);
var
  APosCount: Word;
begin
  { Informações Adicionais }
  APosCount          := oPosCount(''#$D'',EST_ESUINFADCAD.AsString);
  PNLINFADESU.Height :=

  IFThen((APosCount = 00) and (EST_ESUINFADCAD.AsString =  EmptyStr),00,
  IFThen((APosCount = 00) and (EST_ESUINFADCAD.AsString <> EmptyStr),70,
  IFThen((APosCount = 01),085,
  IFThen((APosCount = 02),095,
  IFThen((APosCount = 03),110,120)))));

  { Produtos }
  DBGEST_ESU.ApplyBestFit(DBGEST_ESUSKU );
  DBGEST_ESU.ApplyBestFit(DBGEST_ESUDGCP);

  DBGEST_ESU.ApplyBestFit(DBGEST_ESUSKU ); { Produto }
  DBGEST_ESU.ApplyBestFit(DBGEST_ESUDGCP); { Grade }
  DBGEST_ESU.ApplyBestFit(DBGEST_ESULGCA); { Responsável }
  DBGEST_ESU.ApplyBestFit(DBGEST_ESUABTP); { Finalidade }

  { Emitente }
  DBGEST_ESU.ApplyBestFit(DBGEST_ESUDEPD); { Documento }
  DBGEST_ESU.ApplyBestFit(DBGEST_ESUDECE); { Nome Fantasia }
  if DBGEST_ESUDECE.Width  > 150 then
     DBGEST_ESUDECE.Width := 150; { Limita o tamanho da coluna }

  { Qualidade }
  DBGEST_ESUFADF.Visible := (EST_ESUCDDF.AsInteger > 0);
  DBGEST_ESULGDF.Visible := (EST_ESUCDDF.AsInteger > 0);
  DBGEST_ESUDTDF.Visible := (EST_ESUCDDF.AsInteger > 0);

  DBGEST_ESU.ApplyBestFit(DBGEST_ESUDEDF); { Descrição }
  DBGEST_ESU.ApplyBestFit(DBGEST_ESUFADF); { Fase }
end;

procedure TFrmCAD_PRO.DBGEST_ESUCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Zebra
    if ANode.Values[DBGEST_ESUC_ID.Index] <> Null then
    if ANode.Values[DBGEST_ESUC_ID.Index] mod 2 <> 0 then
    AColor := $00F7F7F7 else
    AColor := clHighLightText;}

    { Defeitos }
    if (ANode.Values[DBGEST_ESUCDDF.Index] > 0) then
    begin
      AColor      := $00F8F8F8;
      AFont.Color := $000024B3;
    end else
    begin
      { Produtos }
      if (AColumn = DBGEST_ESUSKU) or (AColumn = DBGEST_ESUDGCP) then
      begin
        AColor      := $00DFDFDF;
        AFont.Color := clWindowText;
      end;

      { Local }
      if AColumn = DBGEST_ESUSGEP then
      begin
        AColor      := $00DFDFDF;
        AFont.Color := clGrayText;
      end;

      { Lançamentos }
      if (AColumn = DBGEST_ESUQTDE) or (AColumn = DBGEST_ESUQTRL) then
      begin
        AColor      := $00F7FEE1;
        AFont.Color := $00437C00;
      end;

      if (AColumn = DBGEST_ESUQTDE) or (AColumn = DBGEST_ESUQTRL) then
      if (ANode.Values[DBGEST_ESUQTDE.Index] <> Null) then
      if (ANode.Values[DBGEST_ESUQTDE.Index]  < 0) then
      AFont.Color := $000024B3;

      { Etiquetas }
      if AColumn = DBGEST_ESUCDET then
      begin
        AColor      := $00FFFFE1;
        AFont.Color := clNavy;
      end;

      { Container }
      if (AColumn = DBGEST_ESUCTNR) then
      if (ANode.Values[DBGEST_ESUCTNR.Index] <> EmptyStr) then
      AFont.Color := clWindowText;

      { Lote }
      if (AColumn = DBGEST_ESULOTE) then
      if (ANode.Values[DBGEST_ESULOTE.Index] <> EmptyStr) then
      AFont.Color := clWindowText;

      { Tipo + Finalidade }
      if AColumn = DBGEST_ESUABOP then
      begin
        { Substituta }
        if ANode.Values[DBGEST_ESUEST_ESU.Index] = 1 then
        AFont.Color := clWindowText;

        { Devolução }
        if ANode.Values[DBGEST_ESUEST_DEV.Index] = 1 then
        AFont.Color := $0031B5B5 else

        { Defeito }
        if ANode.Values[DBGEST_ESUEST_DEF.Index] = 1 then
        AFont.Color := $00002EE6;
      end;

      { Romaneios }
      if AColumn   = DBGEST_ESUCDRO then
      AFont.Color := clWindowText;
    end;  
  end;

  if ANode.Selected then

  { Defeitos }
  if ANode.Values[DBGEST_ESUCDDF.Index] > 0 then
  begin
    AColor      := $00002EE6;
    AFont.Color := clHighlightText;
  end else

  { Devoluções }
  if Pos('DEV',ANode.Values[DBGEST_ESUABOP.Index]) > 0 then
  begin
    AColor      := $00C8F0F0;
    AFont.Color := clWindowText;
  end else
  begin
    AColor      := clHighlight;
    AFont.Color := clHighlightText;
  end;

  if ASelected then
  begin
    AColor      := $00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;



{ **************** ESTOQUE ANTECIPADO ******************* }

procedure TFrmCAD_PRO.EST_EATBeforeOpen(DataSet: TDataSet);
begin
  if Showing then
  begin
    DBGEST_EATDGCP.Visible := False; { Grade }
    DBGEST_EATSGEP.Visible := False; { Local }

    DBGEST_EAT.Bands[4].Visible := False; { Qualidade }
  end;
end;

procedure TFrmCAD_PRO.EST_EATAfterOpen(DataSet: TDataSet);
begin
  if EST_EATDGCP.AsString <> EmptyStr then DBGEST_EATDGCP.Field.FocusControl else
  DBGEST_EATSKU.Field.FocusControl;
end;

procedure TFrmCAD_PRO.EST_EATAfterScroll(DataSet: TDataSet);
begin
  { Grade }
  if EST_EATDGCP.AsString <> EmptyStr then
  DBGEST_EATDGCP.Visible := True;

  { Local }
  if EST_EATSGEP.AsString <> RECParametros.SGEP then
  DBGEST_EATSGEP.Visible := True;

  { Qualidade }
  if EST_EATCDDF.AsInteger > 0 then
  DBGEST_EAT.Bands[4].Visible := True;
end;

procedure TFrmCAD_PRO.EST_EATCalcFields(DataSet: TDataSet);
begin
  EST_EATC_ID.Value := EST_EAT.RecNo;
end;

procedure TFrmCAD_PRO.DTSEST_EATDataChange(Sender: TObject; Field: TField);
var
  APosCount: Word;
begin
  { Informações Adicionais }
  APosCount          := oPosCount(''#$D'',EST_EATINFADCAD.AsString);
  PNLINFADEAT.Height :=

  IFThen((APosCount = 00) and (EST_EATINFADCAD.AsString =  EmptyStr),00,
  IFThen((APosCount = 00) and (EST_EATINFADCAD.AsString <> EmptyStr),70,
  IFThen((APosCount = 01),085,
  IFThen((APosCount = 02),095,
  IFThen((APosCount = 03),110,120)))));

  { Produtos }
  DBGEST_EAT.ApplyBestFit(DBGEST_EATSKU );
  DBGEST_EAT.ApplyBestFit(DBGEST_EATDGCP);

  DBGEST_EAT.ApplyBestFit(DBGEST_EATSKU ); { Produto }
  DBGEST_EAT.ApplyBestFit(DBGEST_EATDGCP); { Grade }
  DBGEST_EAT.ApplyBestFit(DBGEST_EATLGCA); { Responsável }
  DBGEST_EAT.ApplyBestFit(DBGEST_EATABTP); { Finalidade }

  { Emitente }
  DBGEST_EAT.ApplyBestFit(DBGEST_EATDEPD); { Documento }
  DBGEST_EAT.ApplyBestFit(DBGEST_EATDECE); { Nome Fantasia }
  if DBGEST_EATDECE.Width  > 150 then
     DBGEST_EATDECE.Width := 150; { Limita o tamanho da coluna }

  { Qualidade }
  DBGEST_EATFADF.Visible := (EST_EATCDDF.AsInteger > 0);
  DBGEST_EATLGDF.Visible := (EST_EATCDDF.AsInteger > 0);
  DBGEST_EATDTDF.Visible := (EST_EATCDDF.AsInteger > 0);

  DBGEST_EAT.ApplyBestFit(DBGEST_EATDEDF); { Descrição }
  DBGEST_EAT.ApplyBestFit(DBGEST_EATFADF); { Fase }
end;

procedure TFrmCAD_PRO.DBGEST_EATCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Zebra
    if ANode.Values[DBGEST_EATC_ID.Index] <> Null then
    if ANode.Values[DBGEST_EATC_ID.Index] mod 2 <> 0 then
    AColor := $00F7F7F7 else
    AColor := clHighLightText;}

    { Defeitos }
    if (ANode.Values[DBGEST_EATCDDF.Index] > 0) then
    begin
      AColor      := $00F8F8F8;
      AFont.Color := $000024B3;
    end else
    begin
      { Produtos }
      if (AColumn = DBGEST_EATSKU) or (AColumn = DBGEST_EATDGCP) then
      begin
        AColor      := $00DFDFDF;
        AFont.Color := clWindowText;
      end;

      { Local }
      if AColumn = DBGEST_EATSGEP then
      begin
        AColor      := $00DFDFDF;
        AFont.Color := clGrayText;
      end;

      { Lançamentos }
      if (AColumn = DBGEST_EATQTDE) or (AColumn = DBGEST_EATQTRL) then
      begin
        AColor      := $00F7FEE1;
        AFont.Color := $00437C00;
      end;

      if (AColumn = DBGEST_EATQTDE) or (AColumn = DBGEST_EATQTRL) then
      if (ANode.Values[DBGEST_EATQTDE.Index] <> Null) then
      if (ANode.Values[DBGEST_EATQTDE.Index]  < 0) then
      AFont.Color := $000024B3;

      { Etiquetas }
      if AColumn = DBGEST_EATCDET then
      begin
        AColor      := $00FFFFE1;
        AFont.Color := clNavy;
      end;

      { Container }
      if (AColumn = DBGEST_EATCTNR) then
      if (ANode.Values[DBGEST_EATCTNR.Index] <> EmptyStr) then
      AFont.Color := clWindowText;

      { Lote }
      if (AColumn = DBGEST_EATLOTE) then
      if (ANode.Values[DBGEST_EATLOTE.Index] <> EmptyStr) then
      AFont.Color := clWindowText;

      { Tipo + Finalidade }
      if AColumn = DBGEST_EATABOP then
      begin
        { Substituta }
        if ANode.Values[DBGEST_EATEST_EAT.Index] = 1 then
        AFont.Color := clWindowText;

        { Devolução }
        if ANode.Values[DBGEST_EATEST_DEV.Index] = 1 then
        AFont.Color := $0031B5B5 else

        { Defeito }
        if ANode.Values[DBGEST_EATEST_DEF.Index] = 1 then
        AFont.Color := $00002EE6;
      end;

      { Romaneios }
      if AColumn   = DBGEST_EATCDRO then
      AFont.Color := clWindowText;
    end;
  end;

  if ANode.Selected then

  { Defeitos }
  if ANode.Values[DBGEST_EATCDDF.Index] > 0 then
  begin
    AColor      := $00002EE6;
    AFont.Color := clHighlightText;
  end else

  { Devoluções }
  if Pos('DEV',ANode.Values[DBGEST_EATABOP.Index]) > 0 then
  begin
    AColor      := $00C8F0F0;
    AFont.Color := clWindowText;
  end else
  begin
    AColor      := clHighlight;
    AFont.Color := clHighlightText;
  end;

  if ASelected then
  begin
    AColor      := $00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;



{ ****************** COMPRAS ABERTAS ******************** }

procedure TFrmCAD_PRO.EST_CPABeforeOpen(DataSet: TDataSet);
begin
  if Showing then
  begin
    DBGEST_CPADGCP.Visible := False; { Grade }
    DBGEST_CPASGEP.Visible := False; { Local }
  end;
end;

procedure TFrmCAD_PRO.EST_CPAAfterOpen(DataSet: TDataSet);
begin
  if EST_CPADGCP.AsString <> EmptyStr then DBGEST_CPADGCP.Field.FocusControl else
  DBGEST_CPASKU.Field.FocusControl; { SKU }
end;

procedure TFrmCAD_PRO.EST_CPAAfterScroll(DataSet: TDataSet);
begin
  { Grade }
  if EST_CPADGCP.AsString <> EmptyStr then
  DBGEST_CPADGCP.Visible := True;

  { Local }
  if EST_CPASGEP.AsString <> RECParametros.SGEP then
  DBGEST_CPASGEP.Visible := True;
end;

procedure TFrmCAD_PRO.EST_CPACalcFields(DataSet: TDataSet);
begin
  EST_CPAC_ID.Value := EST_CPA.RecNo;
end;

procedure TFrmCAD_PRO.DTSEST_CPADataChange(Sender: TObject; Field: TField);
var
  APosCount: Word;
begin
  { Informações Adicionais }
  APosCount          := oPosCount(''#$D'',EST_CPAINFADCAD.AsString);
  PNLINFADCPA.Height :=

  IFThen((APosCount = 00) and (EST_CPAINFADCAD.AsString =  EmptyStr),00,
  IFThen((APosCount = 00) and (EST_CPAINFADCAD.AsString <> EmptyStr),70,
  IFThen((APosCount = 01),085,
  IFThen((APosCount = 02),095,
  IFThen((APosCount = 03),110,120)))));

  { Produtos }
  DBGEST_CPA.ApplyBestFit(DBGEST_CPASKU );
  DBGEST_CPA.ApplyBestFit(DBGEST_CPADGCP);

  { Pedido }
  DBGEST_CPA.ApplyBestFit(DBGEST_CPADEPK); { Número }
  DBGEST_CPA.ApplyBestFit(DBGEST_CPADECV); { Comprador }
  DBGEST_CPA.ApplyBestFit(DBGEST_CPADECD);
  if DBGEST_CPADECD.Width  > 200 then
     DBGEST_CPADECD.Width := 200; { Limita o tamanho da coluna }
end;

procedure TFrmCAD_PRO.DBGEST_CPACustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Zebra
    if ANode.Values[DBGEST_CPAC_ID.Index] <> Null then
    if ANode.Values[DBGEST_CPAC_ID.Index] mod 2 <> 0 then
    AColor := $00F7F7F7 else
    AColor := clHighLightText; }

    { Produtos }
    if (AColumn = DBGEST_CPASKU) or (AColumn = DBGEST_CPADGCP) then
    begin
      AColor      := $00DFDFDF;
      AFont.Color := clWindowText;
    end;

    { Local }
    if AColumn = DBGEST_CPASGEP then
    begin
      AColor      := $00DFDFDF;
      AFont.Color := clGrayText;
    end;

    { Confirmados }
    if (AColumn = DBGEST_CPAQTSP) or (AColumn = DBGEST_CPARLSP) then
    if (ANode.Values[DBGEST_CPAQTSP.Index] <> Null) then
    begin
      AColor      := $00F7FEE1;
      AFont.Color := $00437C00;
    end;

    if (AColumn = DBGEST_CPAQTSP) or (AColumn = DBGEST_CPARLSP) then
    if (ANode.Values[DBGEST_CPAQTSP.Index] <> Null) then
    if (ANode.Values[DBGEST_CPAQTSP.Index]  < 0) then
    AFont.Color := $000024B3;

    { Previstos }
    if (AColumn = DBGEST_CPAQTPD) or (AColumn = DBGEST_CPARLPD) then
    if (ANode.Values[DBGEST_CPAQTPD.Index] <> Null) then
    begin
      AColor      := $00FFFFE1;
      AFont.Color := clNavy;
    end;

    if (AColumn = DBGEST_CPAQTPD) or (AColumn = DBGEST_CPARLPD) then
    if (ANode.Values[DBGEST_CPAQTPD.Index] <> Null) then
    if (ANode.Values[DBGEST_CPAQTPD.Index]  < 0) then
    AFont.Color := $000024B3;

    { Container }
    if AColumn   = DBGEST_CPACTNR then
    AFont.Color :=  clWindowText;

    { Chegada }
    if (AColumn   = DBGEST_CPACTNR_PCHP) then
    if (ANode.Values[DBGEST_CPAQTSP.Index] <> Null) then
    AFont.Color :=  clWindowText;

    { Pedido }
    if AColumn   = DBGEST_CPADEPK then
    AFont.Color :=  clWindowText;
  end;

  if ANode.Selected then
  begin
    AColor      := $00F5E7D1;
    AFont.Color := clWindowText;
  end;

  if ASelected then
  begin
    AColor      := $00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;



{ **************** COMPRAS FINALIZADAS **************** }

procedure TFrmCAD_PRO.EST_CPFBeforeOpen(DataSet: TDataSet);
begin
  if Showing then
  begin
    DBGEST_CPFDGCP.Visible := False; { Grade }
    DBGEST_CPFSGEP.Visible := False; { Local }
  end;
end;

procedure TFrmCAD_PRO.EST_CPFAfterOpen(DataSet: TDataSet);
begin
  if EST_CPFDGCP.AsString <> EmptyStr then DBGEST_CPFDGCP.Field.FocusControl else
  DBGEST_CPFSKU.Field.FocusControl; { SKU }
end;

procedure TFrmCAD_PRO.EST_CPFAfterScroll(DataSet: TDataSet);
begin
  { Grade }
  if EST_CPFDGCP.AsString <> EmptyStr then
  DBGEST_CPFDGCP.Visible := True;

  { Local }
  if EST_CPFSGEP.AsString <> RECParametros.SGEP then
  DBGEST_CPFSGEP.Visible := True;
end;

procedure TFrmCAD_PRO.EST_CPFCalcFields(DataSet: TDataSet);
begin
  EST_CPFC_ID.Value := EST_CPF.RecNo;
end;

procedure TFrmCAD_PRO.DTSEST_CPFDataChange(Sender: TObject; Field: TField);
var
  APosCount: Word;
begin
  { Informações Adicionais }
  APosCount          := oPosCount(''#$D'',EST_CPFINFADCAD.AsString);
  PNLINFADCPF.Height :=

  IFThen((APosCount = 00) and (EST_CPFINFADCAD.AsString =  EmptyStr),00,
  IFThen((APosCount = 00) and (EST_CPFINFADCAD.AsString <> EmptyStr),70,
  IFThen((APosCount = 01),085,
  IFThen((APosCount = 02),095,
  IFThen((APosCount = 03),110,120)))));

  { Produtos }
  DBGEST_CPF.ApplyBestFit(DBGEST_CPFSKU );
  DBGEST_CPF.ApplyBestFit(DBGEST_CPFDGCP);

  { Pedido }
  DBGEST_CPF.ApplyBestFit(DBGEST_CPFDEPK); { Número }
  DBGEST_CPF.ApplyBestFit(DBGEST_CPFDECV); { Comprador }
  DBGEST_CPF.ApplyBestFit(DBGEST_CPFDECD);
  if DBGEST_CPFDECD.Width  > 200 then
     DBGEST_CPFDECD.Width := 200; { Limita o tamanho da coluna }
end;

procedure TFrmCAD_PRO.DBGEST_CPFCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Zebra
    if ANode.Values[DBGEST_CPFC_ID.Index] <> Null then
    if ANode.Values[DBGEST_CPFC_ID.Index] mod 2 <> 0 then
    AColor := $00F7F7F7 else
    AColor := clHighLightText; }

    { Produtos }
    if (AColumn = DBGEST_CPFSKU) or (AColumn = DBGEST_CPFDGCP) then
    begin
      AColor      := $00DFDFDF;
      AFont.Color := clWindowText;
    end;

    { Local }
    if AColumn = DBGEST_CPFSGEP then
    begin
      AColor      := $00DFDFDF;
      AFont.Color := clGrayText;
    end;

    { Confirmados }
    if (AColumn = DBGEST_CPFQTSP) or (AColumn = DBGEST_CPFRLSP) then
    if (ANode.Values[DBGEST_CPFQTSP.Index] <> Null) then
    begin
      AColor      := $00F7FEE1;
      AFont.Color := $00437C00;
    end;

    if (AColumn = DBGEST_CPFQTSP) or (AColumn = DBGEST_CPFRLSP) then
    if (ANode.Values[DBGEST_CPFQTSP.Index] <> Null) then
    if (ANode.Values[DBGEST_CPFQTSP.Index]  < 0) then
    AFont.Color := $000024B3;

    { Previstos }
    if (AColumn = DBGEST_CPFQTPD) or (AColumn = DBGEST_CPFRLPD) then
    if (ANode.Values[DBGEST_CPFQTPD.Index] <> Null) then
    begin
      AColor      := $00FFFFE1;
      AFont.Color := clNavy;
    end;

    if (AColumn = DBGEST_CPFQTPD) or (AColumn = DBGEST_CPFRLPD) then
    if (ANode.Values[DBGEST_CPFQTPD.Index] <> Null) then
    if (ANode.Values[DBGEST_CPFQTPD.Index]  < 0) then
    AFont.Color := $000024B3;

    { Container }
    if AColumn   = DBGEST_CPFCTNR then
    AFont.Color :=  clWindowText;

    { Chegada }
    if (AColumn   = DBGEST_CPFCTNR_RCHP) then
    if (ANode.Values[DBGEST_CPFQTSP.Index] <> Null) then
    AFont.Color :=  clWindowText;

    { Pedido }
    if AColumn   = DBGEST_CPFDEPK then
    AFont.Color :=  clWindowText;
  end;

  if ANode.Selected then
  begin
    AColor      := $00F5E7D1;
    AFont.Color := clWindowText;
  end;

  if ASelected then
  begin
    AColor      := $00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;

{ ****************** VENDAS PROGRAMADAS ***************** }

procedure TFrmCAD_PRO.EST_PRGBeforeOpen(DataSet: TDataSet);
begin
  if Showing then
  begin
    DBGEST_PRGDGCP.Visible := False; { Grade }
    DBGEST_PRGCTNR.Visible := False; { Container }
  end;
end;

procedure TFrmCAD_PRO.EST_PRGAfterOpen(DataSet: TDataSet);
begin
  if EST_PRGDGCP.AsString <> EmptyStr then DBGEST_PRGDGCP.Field.FocusControl else
  DBGEST_PRGSKU.Field.FocusControl; { SKU }
end;

procedure TFrmCAD_PRO.EST_PRGAfterScroll(DataSet: TDataSet);
begin
  { Grade }
  if EST_PRGDGCP.AsString <> EmptyStr then
  DBGEST_PRGDGCP.Visible := True;

  { Container }
  if EST_PRGCTNR.AsString <> EmptyStr then
  DBGEST_PRGCTNR.Visible := True;
end;

procedure TFrmCAD_PRO.EST_PRGCalcFields(DataSet: TDataSet);
begin
  EST_PRGC_ID.Value := EST_PRG.RecNo;
end;

procedure TFrmCAD_PRO.DTSEST_PRGDataChange(Sender: TObject; Field: TField);
var
  APosCount: Word;
begin
  { Informações Adicionais }
  APosCount          := oPosCount(''#$D'',EST_PRGINFADCAD.AsString);
  PNLINFADPRG.Height :=

  IFThen((APosCount = 00) and (EST_PRGINFADCAD.AsString =  EmptyStr),00,
  IFThen((APosCount = 00) and (EST_PRGINFADCAD.AsString <> EmptyStr),70,
  IFThen((APosCount = 01),085,
  IFThen((APosCount = 02),095,
  IFThen((APosCount = 03),110,120)))));

  { Produtos }
  DBGEST_PRG.ApplyBestFit(DBGEST_PRGSKU );
  DBGEST_PRG.ApplyBestFit(DBGEST_PRGDGCP);

  { Cliente }
  DBGEST_PRG.ApplyBestFit(DBGEST_PRGDECD); { Nome Fantasia }
  if DBGEST_PRGDECD.Width  > 200 then
     DBGEST_PRGDECD.Width := 200; { Limita o tamanho da coluna }

  { Representante }
  DBGEST_PRG.ApplyBestFit(DBGEST_PRGDECR); { Nome Fantasia }
  if DBGEST_PRGDECR.Width  > 130 then
     DBGEST_PRGDECR.Width := 130; { Limita o tamanho da coluna }
end;

procedure TFrmCAD_PRO.DBGEST_PRGCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Zebra
    if ANode.Values[DBGEST_FISC_ID.Index] <> Null then
    if ANode.Values[DBGEST_FISC_ID.Index] mod 2 <> 0 then
    AColor := $00F7F7F7 else
    AColor := clHighLightText;}
  end;
end;



{ **************** VENDAS PRONTA ENTREGA **************** }

procedure TFrmCAD_PRO.EST_RESBeforeOpen(DataSet: TDataSet);
begin
  if Showing then
  begin
    DBGEST_RESDGCP.Visible := False; { Grade }
    DBGEST_RESCTNR.Visible := False; { Container }
    DBGEST_RESSGEP.Visible := False; { Loja }
  end;
end;

procedure TFrmCAD_PRO.EST_RESAfterOpen(DataSet: TDataSet);
begin
  if EST_RESDGCP.AsString <> EmptyStr then DBGEST_RESDGCP.Field.FocusControl else
  DBGEST_RESSKU.Field.FocusControl; { SKU }
end;

procedure TFrmCAD_PRO.EST_RESAfterScroll(DataSet: TDataSet);
begin
  { Grade }
  if EST_RESDGCP.AsString <> EmptyStr then
  DBGEST_RESDGCP.Visible := True;

  { Container }
  if EST_RESCTNR.AsString <> EmptyStr then
  DBGEST_RESCTNR.Visible := True;

  { Local }
  if (EST_RESSGEP.AsString <> EmptyStr) and (EST_RESSGEP.AsString <> RECParametros.SGEP) then
  DBGEST_RESSGEP.Visible := True;
end;

procedure TFrmCAD_PRO.EST_RESCalcFields(DataSet: TDataSet);
begin
  EST_RESC_ID.Value := EST_RES.RecNo;
end;

procedure TFrmCAD_PRO.DTSEST_RESDataChange(Sender: TObject; Field: TField);
var
  APosCount: Word;
begin
  { Informações Adicionais }
  APosCount          := oPosCount(''#$D'',EST_RESINFADCAD.AsString);
  PNLINFADRES.Height :=

  IFThen((APosCount = 00) and (EST_RESINFADCAD.AsString =  EmptyStr),00,
  IFThen((APosCount = 00) and (EST_RESINFADCAD.AsString <> EmptyStr),50,
  IFThen((APosCount = 01),080,
  IFThen((APosCount = 02),090,
  IFThen((APosCount = 03),100,110)))));

  { Relatórios }
  PNLINFADRES_PRN.Height  := 0;
  PNLINFADRES_PRN.Caption := EST_RESINFADPRN.AsString;

  if EST_RESINFADPRN.AsString <> EmptyStr then
  begin
    PNLINFADRES_PRN.Height := 20;
    PNLINFADRES.Height     := IFThen(PNLINFADRES.Height = 0,60,PNLINFADRES.Height + PNLINFADRES_PRN.Height);
  end;

  { Produtos }
  DBGEST_RES.ApplyBestFit(DBGEST_RESSKU );
  DBGEST_RES.ApplyBestFit(DBGEST_RESDGCP);

  { Cliente }
  DBGEST_RES.ApplyBestFit(DBGEST_RESDECD); { Nome Fantasia }
  if DBGEST_RESDECD.Width  > 150 then
     DBGEST_RESDECD.Width := 150; { Limita o tamanho da coluna }

  { Representante }
  DBGEST_RES.ApplyBestFit(DBGEST_RESDECR); { Nome Fantasia }
  if DBGEST_RESDECR.Width  > 120 then
     DBGEST_RESDECR.Width := 120; { Limita o tamanho da coluna }

  { Vendedor }
  DBGEST_RES.ApplyBestFit(DBGEST_RESDECV);

  { Container }
  DBGEST_RESCTNR.Visible := (EST_RESCTNR.AsString <> EmptyStr);   
end;

procedure TFrmCAD_PRO.DBGEST_RESCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Zebra
    if ANode.Values[DBGEST_RESC_ID.Index] <> Null then
    if ANode.Values[DBGEST_RESC_ID.Index] mod 2 <> 0 then
    AColor := $00F7F7F7 else
    AColor := clHighLightText;}

    { Defeitos }
    if (ANode.Values[DBGEST_RESBQST.Index] > 0) then
    begin
      AColor      := $00F8F8F8;
      AFont.Color := $000024B3;
    end else
    begin
      { Produtos }
      if (AColumn = DBGEST_RESSKU) or (AColumn = DBGEST_RESDGCP) then
      begin
        AColor      := $00DFDFDF;
        AFont.Color := clWindowText;
      end;

      { Local }
      if AColumn = DBGEST_RESSGEP then
      begin
        AColor      := $00DFDFDF;
        AFont.Color := clGrayText;
      end;

      { Lançamentos }
      if (AColumn = DBGEST_RESQTDE) or (AColumn = DBGEST_RESQTRL) then
      begin
        AColor      := $00F7FEE1;
        AFont.Color := $00437C00;
      end;

      if (AColumn = DBGEST_RESQTDE) or (AColumn = DBGEST_RESQTRL) then
      if (ANode.Values[DBGEST_RESQTDE.Index] <> Null) then
      if (ANode.Values[DBGEST_RESQTDE.Index]  < 0) then
      AFont.Color := $000024B3;

      { Container }
      if (AColumn = DBGEST_RESCTNR) then
      if (ANode.Values[DBGEST_RESCTNR.Index] <> EmptyStr) then
      AFont.Color := clWindowText;

      { Pedidos }
      if AColumn   = DBGEST_RESDEPK then
      AFont.Color := clWindowText;
    end;  
  end;

  if ANode.Selected then

  { Bloqueios }
  if ANode.Values[DBGEST_RESBQST.Index] = 1 then
  begin
    AColor      := $00002EE6;
    AFont.Color := clHighlightText;
  end else

  { Devoluções }
  if ANode.Values[DBGEST_RESDVPD.Index] = 1 then
  begin
    AColor      := $00C8F0F0;
    AFont.Color := clWindowText;
  end else
  begin
    AColor      := clHighlight;
    AFont.Color := clHighlightText;
  end;

  if ASelected then
  begin
    AColor      := $00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;



{ ****************** VENDAS SEPARADAS ******************* }

procedure TFrmCAD_PRO.EST_SEPBeforeOpen(DataSet: TDataSet);
begin
  if Showing then
  begin
    DBGEST_SEPDGCP.Visible := False; { Grade }
    DBGEST_SEPSGEP.Visible := False; { Local }
    DBGEST_SEPCTNR.Visible := False; { Container }
    DBGEST_SEPLOTE.Visible := False; { Lote }

    DBGEST_SEP.Bands[4].Visible := False; { Qualidade }
  end;
end;

procedure TFrmCAD_PRO.EST_SEPAfterOpen(DataSet: TDataSet);
begin
  if EST_SEPDGCP.AsString <> EmptyStr then DBGEST_SEPDGCP.Field.FocusControl else
  DBGEST_SEPSKU.Field.FocusControl; { SKU }
end;

procedure TFrmCAD_PRO.EST_SEPAfterScroll(DataSet: TDataSet);
begin
  { Grade }
  if EST_SEPDGCP.AsString <> EmptyStr then
  DBGEST_SEPDGCP.Visible := True;

  { Local }
  if EST_SEPSGEP.AsString <> RECParametros.SGEP then
  DBGEST_SEPSGEP.Visible := True;

  { Container }
  if EST_SEPCTNR.AsString <> EmptyStr then
  DBGEST_SEPCTNR.Visible := True;

  { Lote }
  if EST_SEPLOTE.AsString <> EmptyStr then
  DBGEST_SEPLOTE.Visible := True;

  { Qualidade }
  if EST_SEPCDDF.AsInteger > 0 then
  DBGEST_SEP.Bands[4].Visible := True;
end;

procedure TFrmCAD_PRO.EST_SEPCalcFields(DataSet: TDataSet);
begin
  EST_SEPC_ID.Value := EST_SEP.RecNo;
end;

procedure TFrmCAD_PRO.DTSEST_SEPDataChange(Sender: TObject; Field: TField);
var
  APosCount: Word;
begin
  { Informações Adicionais }
  APosCount          := oPosCount(''#$D'',EST_SEPINFADCAD.AsString);
  PNLINFADSEP.Height :=

  IFThen((APosCount = 00) and (EST_SEPINFADCAD.AsString =  EmptyStr),00,
  IFThen((APosCount = 00) and (EST_SEPINFADCAD.AsString <> EmptyStr),70,
  IFThen((APosCount = 01),085,
  IFThen((APosCount = 02),095,
  IFThen((APosCount = 03),110,120)))));

  { Produtos }
  DBGEST_SEP.ApplyBestFit(DBGEST_SEPSKU );
  DBGEST_SEP.ApplyBestFit(DBGEST_SEPDGCP);

  { Pedido }
  DBGEST_SEP.ApplyBestFit(DBGEST_SEPDEPK);

  { Cliente }
  DBGEST_SEP.ApplyBestFit(DBGEST_SEPDECD); { Nome Fantasia }
  if DBGEST_SEPDECD.Width  > 200 then
     DBGEST_SEPDECD.Width := 200; { Limita o tamanho da coluna }

  { Representante }
  DBGEST_SEP.ApplyBestFit(DBGEST_SEPDECR); { Nome Fantasia }
  if DBGEST_SEPDECR.Width  > 130 then
     DBGEST_SEPDECR.Width := 130; { Limita o tamanho da coluna }

  { Vendedor }
  DBGEST_SEP.ApplyBestFit(DBGEST_SEPDECV);
end;

procedure TFrmCAD_PRO.DBGEST_SEPCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Zebra
    if ANode.Values[DBGEST_SEPC_ID.Index] <> Null then
    if ANode.Values[DBGEST_SEPC_ID.Index] mod 2 <> 0 then
    AColor := $00F7F7F7 else
    AColor := clHighLightText;}

    { Defeitos }
    if (LeftStr(ANode.Values[DBGEST_SEPREST.Index],3) = 'BLQ') then
    begin
      AColor      := $00F8F8F8;
      AFont.Color := $000024B3;
    end else
    begin
      { Produtos }
      if (AColumn = DBGEST_SEPSKU) or (AColumn = DBGEST_SEPDGCP) then
      begin
        AColor      := $00DFDFDF;
        AFont.Color := clWindowText;
      end;

      { Local }
      if AColumn = DBGEST_SEPSGEP then
      begin
        AColor      := $00DFDFDF;
        AFont.Color := clGrayText;
      end;

      { Lançamentos }
      if (AColumn = DBGEST_SEPQTDE) or (AColumn = DBGEST_SEPQTRL) then
      begin
        AColor      := $00F7FEE1;
        AFont.Color := $00437C00;
      end;

      if (AColumn = DBGEST_SEPQTDE) or (AColumn = DBGEST_SEPQTRL) then
      if (ANode.Values[DBGEST_SEPQTDE.Index] <> Null) then
      if (ANode.Values[DBGEST_SEPQTDE.Index]  < 0) then
      AFont.Color := $000024B3;

      { Etiquetas }
      if AColumn = DBGEST_SEPCDET then
      begin
        AColor      := $00FFFFE1;
        AFont.Color := clNavy;
      end;

      { Container }
      if (AColumn = DBGEST_SEPCTNR) then
      if (ANode.Values[DBGEST_SEPCTNR.Index] <> EmptyStr) then
      AFont.Color := clWindowText;

      { Lote }
      if (AColumn = DBGEST_SEPLOTE) then
      if (ANode.Values[DBGEST_SEPLOTE.Index] <> EmptyStr) then
      AFont.Color := clWindowText;

      { Pedidos }
      if AColumn   = DBGEST_SEPDEPK then
      AFont.Color := clWindowText;

      { Expedição }
      if AColumn   = DBGEST_SEPDESP then
      AFont.Color := clWindowText;
    end;
  end;

  if ANode.Selected then

  { Defeitos }
  if LeftStr(ANode.Values[DBGEST_SEPREST.Index],3) = 'BLQ' then
  begin
    AColor      := $00002EE6;
    AFont.Color := clHighlightText;
  end else

  { Devoluções }
  if ANode.Values[DBGEST_SEPEST_DEV.Index] = 1 then
  begin
    AColor      := $00C8F0F0;
    AFont.Color := clWindowText;
  end else
  begin
    AColor      := clHighlight;
    AFont.Color := clHighlightText;
  end;

  if ASelected then
  begin
    AColor      := $00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;

end.
