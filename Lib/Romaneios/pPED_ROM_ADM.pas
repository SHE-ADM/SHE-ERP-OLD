unit pPED_ROM_ADM;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, StrUtils, Math, dxExEdtr, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxEdLib, dxDBELib, dxEditor, ExtCtrls, ActnList, ImgList,
  dxBar, dxBarExtItems, dxDockControl, dxPageControl, dxDockPanel,
  cxGraphics, cxControls, dxStatusBar, IBEvents, IBStoredProc, DB,
  IBCustomDataSet, IBQuery, IBSQL, IBDatabase, rxSpeedbar,
  IDGlobal, DSiWin32, dxsbar, ComCtrls, DBCtrls, dxDBTLCl, dxGrClms;

type
  TFrmPED_ROM_ADM = class(TForm)
    BMPrincipal: TdxBarManager;

    BLBRefresh: TdxBarLargeButton;
    BLBRelatorios: TdxBarLargeButton;
    BLBPSQ_CAD: TdxBarLargeButton;
    BEPSQ_CAD: TdxBarEdit;
    BBPSQ_PER_MENU: TdxBarButton;
    BDPSQ_PER_INI: TdxBarDateCombo;
    BDPSQ_PER_FIM: TdxBarDateCombo;
    BLBMAppend: TdxBarLargeButton;
    BLBMEdit: TdxBarLargeButton;
    BLBMCancel: TdxBarLargeButton;
    BLBConfirma: TdxBarLargeButton;
    BLBSaida: TdxBarLargeButton;
    BLBMDelete: TdxBarLargeButton;
    BLBPesquisa: TdxBarLargeButton;
    BSProgresso: TdxBarStatic;
    BPProcesso: TdxBarProgressItem;
    BLBPSQ_CAD_MENU: TdxBarLargeButton;
    SBSMenu: TdxSideBarStore;
    SSIEAppend: TdxStoredSideItem;
    SSIEEdit: TdxStoredSideItem;
    SSIEDelete: TdxStoredSideItem;
    SSIEPost: TdxStoredSideItem;
    SSIECancel: TdxStoredSideItem;
    SSIMAppend: TdxStoredSideItem;
    SSIMEdit: TdxStoredSideItem;
    SSIMDelete: TdxStoredSideItem;
    PMPSQ_CAD: TdxBarPopupMenu;
    PMPSQ_PER: TdxBarPopupMenu;
    ALPrincipal: TActionList;
    ACTRefresh: TAction;
    ACTExecEvent: TAction;
    ACTPesquisa: TAction;
    ACTRelatorios: TAction;
    ACTEAppend: TAction;
    ACTEEdit: TAction;
    ACTEDelete: TAction;
    ACTEPost: TAction;
    ACTECancel: TAction;
    ACTMAppend: TAction;
    ACTMEdit: TAction;
    ACTMDelete: TAction;
    ACTMPost: TAction;
    ACTMCancel: TAction;
    ACTSaida: TAction;
    ACTPSQ_OK: TAction;
    ACTPSQ_FOCUS: TAction;
    ILMenu: TImageList;
    ILEdicao: TImageList;
    StyleController: TdxEditStyleController;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TEvent: TIBTransaction;
    SQLEvent: TIBSQL;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    DMPrincipal: TdxDockingManager;
    DSPrincipal: TdxDockSite;
    DPMenu: TdxDockPanel;
    LDSMenu: TdxLayoutDockSite;
    SBPrincipal: TdxSideBar;
    DPSubMenu5: TdxDockPanel;
    LDSSubMenu5: TdxLayoutDockSite;
    DPSubMenu4: TdxDockPanel;
    DPSubMenu3: TdxDockPanel;
    DPSubMenu2: TdxDockPanel;
    DPSubMenu1: TdxDockPanel;
    LDSSubMenu4: TdxLayoutDockSite;
    LDSSubMenu3: TdxLayoutDockSite;
    LDSSubMenu2: TdxLayoutDockSite;
    LDSSubMenu1: TdxLayoutDockSite;
    DPPrincipal1: TdxDockPanel;
    LDSPrincipal1: TdxLayoutDockSite;
    DPPrincipal2: TdxDockPanel;
    TCDSPrincipal: TdxTabContainerDockSite;
    PNLPrincipal1: TPanel;
    DSPrincipal1: TdxDockSite;
    LDSPrincipal1ConsultaINFADCAD: TdxLayoutDockSite;
    DPPrincipal1Consulta1: TdxDockPanel;
    DPPrincipal1RodapeLE1: TdxDockPanel;
    LDSPrincipal1Rodape1: TdxLayoutDockSite;
    DPPrincipal1RodapeLD1: TdxDockPanel;
    LDSPrincipal1RodapeLD: TdxLayoutDockSite;
    DPPrincipal1RodapeLE2: TdxDockPanel;
    DPPrincipal1RodapeLEB: TdxDockPanel;
    TCDSPrincipal1RodapeLE: TdxTabContainerDockSite;
    VCDSPrincipal1RodapeLE: TdxVertContainerDockSite;
    DPPrincipal1RodapeLD2: TdxDockPanel;
    TCDSPrincipal1RodapeLD: TdxTabContainerDockSite;
    DPPrincipal1RodapeLDB: TdxDockPanel;
    VCDSPrincipal1RodapeLD: TdxVertContainerDockSite;
    DPPrincipal1LE: TdxDockPanel;
    LDSPrincipal1LE: TdxLayoutDockSite;
    DPPrincipal1LD: TdxDockPanel;
    LDSPrincipal1LD: TdxLayoutDockSite;
    DPPrincipal1Titulo: TdxDockPanel;
    LDSPrincipal1Titulo: TdxLayoutDockSite;
    DPPrincipal1INFADCAD: TdxDockPanel;
    LDSPrincipal1INFADCAD: TdxLayoutDockSite;
    DPPrincipal1INFADCPL: TdxDockPanel;
    LDSPrincipal1INFADCPL: TdxLayoutDockSite;
    HCDSPrincipal1Consulta: TdxHorizContainerDockSite;
    DPPrincipal1ConsultaLD1: TdxDockPanel;
    DPPrincipal1ConsultaLD2: TdxDockPanel;
    TCDSPrincipal1ConsultaLD: TdxTabContainerDockSite;
    DPPrincipal1Consulta2: TdxDockPanel;
    TCDSPrincipal1Consulta: TdxTabContainerDockSite;
    DPPrincipal1RodapeTitulo: TdxDockPanel;
    LDSPrincipal1RodapeTitulo: TdxLayoutDockSite;
    DPPrincipal1Rodape: TdxDockPanel;
    LDSPrincipal1RodapeLE: TdxLayoutDockSite;
    DPPrincipal1Rodape1: TdxDockPanel;
    LDSPrincipal1Rodape2: TdxLayoutDockSite;
    PNLDBGConsulta: TPanel;
    DBPrincipal1RodapeLEB: TdxDBMemo;
    ILDockingManager: TImageList;
    Consulta: TIBQuery;
    DTSConsulta: TDataSource;
    PED_PDV_ITE: TIBQuery;
    PED_PDV_ITEID: TLargeintField;
    PED_PDV_ITEIDEP: TSmallintField;
    PED_PDV_ITECP_IDEP: TSmallintField;
    PED_PDV_ITECP_SGEP: TIBStringField;
    PED_PDV_ITEIDPK: TLargeintField;
    PED_PDV_ITEIDFK: TLargeintField;
    PED_PDV_ITEITEM: TIntegerField;
    PED_PDV_ITEIDCP: TIntegerField;
    PED_PDV_ITEARTIGO: TIBStringField;
    PED_PDV_ITENCM: TIBStringField;
    PED_PDV_ITESKU: TIBStringField;
    PED_PDV_ITECEAN: TIBStringField;
    PED_PDV_ITEDGCP: TIBStringField;
    PED_PDV_ITEDECP: TIBStringField;
    PED_PDV_ITEUCOM: TIBStringField;
    PED_PDV_ITEUCON: TIBStringField;
    PED_PDV_ITEQTDE: TIBBCDField;
    PED_PDV_ITEQTRL: TIntegerField;
    PED_PDV_ITEVPRC_PAD_INI: TFloatField;
    PED_PDV_ITEVPRC_PAD_FIM: TFloatField;
    PED_PDV_ITEVPRC_PAD: TFloatField;
    PED_PDV_ITEVPRC_COM: TFloatField;
    PED_PDV_ITEVDSC: TFloatField;
    PED_PDV_ITEPDSC: TIBBCDField;
    PED_PDV_ITETSDE: TIBBCDField;
    PED_PDV_ITETCDE: TIBBCDField;
    PED_PDV_ITECDSP: TLargeintField;
    PED_PDV_ITEIDSP: TSmallintField;
    PED_PDV_ITEDTSP: TDateTimeField;
    PED_PDV_ITELGSP: TIBStringField;
    PED_PDV_ITEQTSP: TIBBCDField;
    PED_PDV_ITERLSP: TIntegerField;
    PED_PDV_ITEVTSP: TIBBCDField;
    PED_PDV_ITEPPSP: TIBBCDField;
    PED_PDV_ITEVICMS: TIBBCDField;
    PED_PDV_ITEPICMS: TIBBCDField;
    PED_PDV_ITEVIPI: TFloatField;
    PED_PDV_ITEPIPI: TIBBCDField;
    PED_PDV_ITEVST: TIBBCDField;
    PED_PDV_ITEPST: TIBBCDField;
    PED_PDV_ITERCOM: TIBStringField;
    PED_PDV_ITEVCOM: TFloatField;
    PED_PDV_ITEPCOM: TIBBCDField;
    PED_PDV_ITEVFRT: TIBBCDField;
    PED_PDV_ITEPSBR: TIBBCDField;
    PED_PDV_ITEPSLQ: TIBBCDField;
    PED_PDV_ITEORIG: TSmallintField;
    PED_PDV_ITEXORIG: TIBStringField;
    PED_PDV_ITEINFADPRC: TIBStringField;
    PED_PDV_ITEC_QTDE: TStringField;
    PED_PDV_ITEC_QTSP: TStringField;
    PED_PDV_ITEC_INFADPRC: TStringField;
    DTSPED_PDV_ITE: TDataSource;
    PED_PDV_SEP: TIBQuery;
    PED_PDV_SEPID: TLargeintField;
    PED_PDV_SEPIDEP: TSmallintField;
    PED_PDV_SEPITEM: TIntegerField;
    PED_PDV_SEPCDET: TLargeintField;
    PED_PDV_SEPCP_SGEP: TIBStringField;
    PED_PDV_SEPSKU: TIBStringField;
    PED_PDV_SEPDGCP: TIBStringField;
    PED_PDV_SEPDECP: TIBStringField;
    PED_PDV_SEPQTDE: TIBBCDField;
    PED_PDV_SEPQTRL: TIntegerField;
    PED_PDV_SEPUCOM: TIBStringField;
    PED_PDV_SEPVPRC_COM: TFloatField;
    PED_PDV_SEPTCDE: TIBBCDField;
    PED_PDV_SEPDTSP: TDateTimeField;
    PED_PDV_SEPLGSP: TIBStringField;
    PED_PDV_SEPC_QTDE: TStringField;
    DTSPED_PDV_SEP: TDataSource;
    CAD_PRO_IMG: TIBQuery;
    CAD_PRO_IMGIMG_ID: TLargeintField;
    CAD_PRO_IMGIMG_NO: TIBStringField;
    CAD_PRO_IMGIMG_PAD: TBlobField;
    CAD_PRO_IMGPDF_NO: TIBStringField;
    CAD_PRO_IMGILA_BMP1: TBlobField;
    CAD_PRO_IMGILA_INS1: TIBStringField;
    CAD_PRO_IMGD_ILA_INS1: TIBStringField;
    CAD_PRO_IMGILA_BMP2: TBlobField;
    CAD_PRO_IMGILA_INS2: TIBStringField;
    CAD_PRO_IMGD_ILA_INS2: TIBStringField;
    CAD_PRO_IMGILA_BMP3: TBlobField;
    CAD_PRO_IMGILA_INS3: TIBStringField;
    CAD_PRO_IMGD_ILA_INS3: TIBStringField;
    CAD_PRO_IMGILA_BMP4: TBlobField;
    CAD_PRO_IMGILA_INS4: TIBStringField;
    CAD_PRO_IMGD_ILA_INS4: TIBStringField;
    CAD_PRO_IMGILA_BMP5: TBlobField;
    CAD_PRO_IMGILA_INS5: TIBStringField;
    CAD_PRO_IMGD_ILA_INS5: TIBStringField;
    CAD_PRO_IMGILA_BMP6: TBlobField;
    CAD_PRO_IMGILA_INS6: TIBStringField;
    CAD_PRO_IMGD_ILA_INS6: TIBStringField;
    CAD_PRO_IMGILA_BMP7: TBlobField;
    CAD_PRO_IMGILA_INS7: TIBStringField;
    CAD_PRO_IMGD_ILA_INS7: TIBStringField;
    CAD_PRO_IMGILA_BMP8: TBlobField;
    CAD_PRO_IMGILA_INS8: TIBStringField;
    CAD_PRO_IMGD_ILA_INS8: TIBStringField;
    DTSCAD_PRO_IMG: TDataSource;
    DBGConsulta: TdxDBGrid;
    DBGConsultaIDEP: TdxDBGridMaskColumn;
    DBGConsultaIDPK: TdxDBGridColumn;
    DBGConsultaDEPK: TdxDBGridMaskColumn;
    DBGConsultaDTPK: TdxDBGridColumn;
    DBGConsultaHTPK: TdxDBGridColumn;
    DBGConsultaCDRO: TdxDBGridColumn;
    DBGConsultaCDNF: TdxDBGridColumn;
    DBGConsultaDTNF: TdxDBGridColumn;
    DBGConsultaDTSA: TdxDBGridDateColumn;
    DBGConsultaDECD: TdxDBGridMaskColumn;
    DBGConsultaGPCD: TdxDBGridColumn;
    DBGConsultaUFCD: TdxDBGridMaskColumn;
    DBGConsultaABCR: TdxDBGridMaskColumn;
    DBGConsultaDECV: TdxDBGridMaskColumn;
    DBGConsultaSTPD: TdxDBGridMaskColumn;
    DBGConsultaDVPD: TdxDBGridMaskColumn;
    DBGConsultaABPD: TdxDBGridMaskColumn;
    DBGConsultaFAPD: TdxDBGridMaskColumn;
    DBGConsultaLQPD: TdxDBGridMaskColumn;
    DBGConsultaDECO: TdxDBGridColumn;
    DBGConsultaSTFI: TdxDBGridColumn;
    DBGConsultaAPST: TdxDBGridMaskColumn;
    DBGConsultaFPST: TdxDBGridMaskColumn;
    DBGConsultaFAST: TdxDBGridMaskColumn;
    DBGConsultaLQST: TdxDBGridMaskColumn;
    DBGConsultaBQST: TdxDBGridMaskColumn;
    DBGConsultaQTRL: TdxDBGridMaskColumn;
    DBGConsultaTCDE: TdxDBGridMaskColumn;
    DBGConsultaLQ_TCDE: TdxDBGridMaskColumn;
    DBGConsultaLQ_QTRL: TdxDBGridMaskColumn;
    DBGConsultaVDSC: TdxDBGridMaskColumn;
    DBGConsultaPDSC: TdxDBGridMaskColumn;
    DBGConsultaDTOS: TdxDBGridColumn;
    DBGConsultaDTSP: TdxDBGridColumn;
    DBGConsultaHTSP: TdxDBGridColumn;
    DBGConsultaCDSP: TdxDBGridColumn;
    DBGConsultaRLSP: TdxDBGridMaskColumn;
    DBGConsultaPPSP: TdxDBGridMaskColumn;
    DBGConsultaLQ_VTSP: TdxDBGridMaskColumn;
    DBGConsultaLQ_RLSP: TdxDBGridMaskColumn;
    DBGConsultaLQ_PPSP: TdxDBGridMaskColumn;
    DBGConsultaVTSP: TdxDBGridMaskColumn;
    DBGConsultaVTLQ: TdxDBGridMaskColumn;
    DBGConsultaVTAP: TdxDBGridMaskColumn;
    DBGConsultaLQ_VTAP: TdxDBGridMaskColumn;
    DBGConsultaVTBQ: TdxDBGridMaskColumn;
    DBGConsultaVTDV: TdxDBGridMaskColumn;
    DBGConsultaVTAB: TdxDBGridMaskColumn;
    DBGConsultaVTSC: TdxDBGridMaskColumn;
    DBGConsultaVTFP: TdxDBGridMaskColumn;
    PNLDBGPED_PDV_ITE: TPanel;
    DBGPED_PDV_ITE: TdxDBGrid;
    DBGPED_PDV_ITEIDCP: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEITEM: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEARTIGO: TdxDBGridMaskColumn;
    DBGPED_PDV_ITECP_SGEP: TdxDBGridMaskColumn;
    DBGPED_PDV_ITESKU: TdxDBGridMaskColumn;
    DBGPED_PDV_ITENCM: TdxDBGridMaskColumn;
    DBGPED_PDV_ITECEAN: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEDGCP: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEDECP: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEC_QTDE: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEQTRL: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEVPRC_PAD_INI: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEVPRC_PAD_FIM: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEVPRC_PAD: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEVPRC_COM: TdxDBGridMaskColumn;
    DBGPED_PDV_ITETSDE: TdxDBGridMaskColumn;
    DBGPED_PDV_ITETCDE: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEVDSC: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEPDSC: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEC_QTSP: TdxDBGridMaskColumn;
    DBGPED_PDV_ITERLSP: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEPPSP: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEVTSP: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEDTSP: TdxDBGridColumn;
    DBGPED_PDV_ITELGSP: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEVFRT: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEPSBR: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEPSLQ: TdxDBGridMaskColumn;
    DBGPED_PDV_ITERCOM: TdxDBGridColumn;
    DBGPED_PDV_ITEVCOM: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEPCOM: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEVICMS: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEPICMS: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEVIPI: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEPIPI: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEVST: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEPST: TdxDBGridMaskColumn;
    PNLCAD_PRO_IMG_PIX: TPanel;
    PNLCAD_PRO_IMG_PAD: TPanel;
    IMGCAD_PRO_IMG_PAD: TImage;
    BVCAD_PRO_IMG_ILA1: TBevel;
    BVCAD_PRO_IMG_ILA2: TBevel;
    BVCAD_PRO_IMG_ILA4: TBevel;
    BVCAD_PRO_IMG_ILA5: TBevel;
    BVCAD_PRO_IMG_ILA6: TBevel;
    BVCAD_PRO_IMG_ILA7: TBevel;
    BVCAD_PRO_IMG_ILA8: TBevel;
    BVCAD_PRO_IMG_ILA3: TBevel;
    DBCAD_PRO_IMG_ILA1: TDBImage;
    DBCAD_PRO_IMG_ILA2: TDBImage;
    DBCAD_PRO_IMG_ILA3: TDBImage;
    DBCAD_PRO_IMG_ILA4: TDBImage;
    DBCAD_PRO_IMG_ILA5: TDBImage;
    DBCAD_PRO_IMG_ILA6: TDBImage;
    DBCAD_PRO_IMG_ILA7: TDBImage;
    DBCAD_PRO_IMG_ILA8: TDBImage;
    DBPrincipal1INFADCAD: TdxDBMemo;
    DBGConsultaCDOS: TdxDBGridColumn;
    ConsultaID: TLargeintField;
    ConsultaIDEP: TSmallintField;
    ConsultaDTCA: TDateTimeField;
    ConsultaCDCX: TLargeintField;
    ConsultaIDPK: TLargeintField;
    ConsultaDEPK: TIBStringField;
    ConsultaDTPK: TDateField;
    ConsultaHTPK: TTimeField;
    ConsultaCDRO: TLargeintField;
    ConsultaDTRO: TDateTimeField;
    ConsultaQPRO: TIntegerField;
    ConsultaFA_QPRO: TIntegerField;
    ConsultaLQ_QPRO: TIntegerField;
    ConsultaCDNF: TLargeintField;
    ConsultaDTNF: TDateTimeField;
    ConsultaQPNF: TIntegerField;
    ConsultaFA_QPNF: TIntegerField;
    ConsultaLQ_QPNF: TIntegerField;
    ConsultaIDSA: TSmallintField;
    ConsultaDTSA: TDateTimeField;
    ConsultaQPSA: TIntegerField;
    ConsultaFA_QPSA: TIntegerField;
    ConsultaLQ_QPSA: TIntegerField;
    ConsultaIDCD: TIntegerField;
    ConsultaDTCD: TDateField;
    ConsultaDECD: TIBStringField;
    ConsultaRZCD: TIBStringField;
    ConsultaPJCD: TIBStringField;
    ConsultaGPCD: TIBStringField;
    ConsultaUFCD: TIBStringField;
    ConsultaRSCD: TIBStringField;
    ConsultaIDCR: TSmallintField;
    ConsultaDTCR: TDateField;
    ConsultaDECR: TIBStringField;
    ConsultaRZCR: TIBStringField;
    ConsultaPJCR: TIBStringField;
    ConsultaGPCR: TIBStringField;
    ConsultaRSCR: TIBStringField;
    ConsultaIDCV: TSmallintField;
    ConsultaDTCV: TDateField;
    ConsultaDECV: TIBStringField;
    ConsultaRSCV: TIBStringField;
    ConsultaIDCT: TSmallintField;
    ConsultaDTCT: TDateField;
    ConsultaDECT: TIBStringField;
    ConsultaRZCT: TIBStringField;
    ConsultaPJCT: TIBStringField;
    ConsultaGPCT: TIBStringField;
    ConsultaRSCT: TIBStringField;
    ConsultaTCDE: TIBBCDField;
    ConsultaQTRL: TIntegerField;
    ConsultaFA_TCDE: TIBBCDField;
    ConsultaFA_QTRL: TIntegerField;
    ConsultaLQ_TCDE: TIBBCDField;
    ConsultaLQ_QTRL: TIntegerField;
    ConsultaVDSC: TIBBCDField;
    ConsultaPDSC: TIBBCDField;
    ConsultaCDOS: TLargeintField;
    ConsultaDTOS: TDateTimeField;
    ConsultaCDSP: TLargeintField;
    ConsultaDTSP: TDateField;
    ConsultaHTSP: TTimeField;
    ConsultaVTSP: TIBBCDField;
    ConsultaRLSP: TIntegerField;
    ConsultaPPSP: TIBBCDField;
    ConsultaFA_VTSP: TIBBCDField;
    ConsultaFA_RLSP: TIntegerField;
    ConsultaFA_PPSP: TIBBCDField;
    ConsultaLQ_VTSP: TIBBCDField;
    ConsultaLQ_RLSP: TIntegerField;
    ConsultaLQ_PPSP: TIBBCDField;
    ConsultaVTFA: TIBBCDField;
    ConsultaVTLQ: TIBBCDField;
    ConsultaVTBQ: TIBBCDField;
    ConsultaVTAP: TIBBCDField;
    ConsultaRLAP: TIntegerField;
    ConsultaFA_VTAP: TIBBCDField;
    ConsultaFA_RLAP: TIntegerField;
    ConsultaLQ_VTAP: TIBBCDField;
    ConsultaLQ_RLAP: TIntegerField;
    ConsultaVTDV: TIBBCDField;
    ConsultaFA_VTDV: TIBBCDField;
    ConsultaLQ_VTDV: TIBBCDField;
    ConsultaVTAB: TIBBCDField;
    ConsultaFA_VTAB: TIBBCDField;
    ConsultaLQ_VTAB: TIBBCDField;
    ConsultaVTSC: TIBBCDField;
    ConsultaVTFP: TIBBCDField;
    ConsultaCDPD: TSmallintField;
    ConsultaSTPD: TIBStringField;
    ConsultaDVPD: TSmallintField;
    ConsultaABPD: TSmallintField;
    ConsultaFAPD: TSmallintField;
    ConsultaLQPD: TSmallintField;
    ConsultaCDCO: TSmallintField;
    ConsultaSTCO: TIBStringField;
    ConsultaTPCO: TSmallintField;
    ConsultaRECO: TIBStringField;
    ConsultaDECO: TIBStringField;
    ConsultaCDST: TSmallintField;
    ConsultaSTFI: TIBStringField;
    ConsultaAPST: TSmallintField;
    ConsultaFPST: TSmallintField;
    ConsultaFAST: TSmallintField;
    ConsultaLQST: TSmallintField;
    ConsultaBQST: TSmallintField;
    ConsultaCDBX: TLargeintField;
    ConsultaDTBX: TDateField;
    ConsultaINFADPED: TIBStringField;
    ConsultaC_ID: TIntegerField;
    BBPSQ_DTSP: TdxBarButton;
    BBPSQ_DTNF: TdxBarButton;
    BBPSQ_DTBX: TdxBarButton;
    BBPSQ_PER: TdxBarButton;
    ConsultaABCR: TIBStringField;




    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ACTMAppendExecute(Sender: TObject);
    procedure ACTMEditExecute(Sender: TObject);
    procedure ACTMDeleteExecute(Sender: TObject);
    procedure ACTMPostExecute(Sender: TObject);
    procedure ACTMCancelExecute(Sender: TObject);
    procedure ACTEAppendExecute(Sender: TObject);
    procedure ACTEEditExecute(Sender: TObject);
    procedure ACTEDeleteExecute(Sender: TObject);
    procedure ACTEPostExecute(Sender: TObject);
    procedure ACTECancelExecute(Sender: TObject);
    procedure ACTPSQ_OKExecute(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACTPSQ_FOCUSExecute(Sender: TObject);
    procedure BEPSQ_CADCurChange(Sender: TObject);
    procedure BDPSQ_PER_INICurChange(Sender: TObject);
    procedure BDPSQ_PER_FIMCurChange(Sender: TObject);
    procedure ACTExecEventExecute(Sender: TObject);
    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure DTSConsultaDataChange(Sender: TObject; Field: TField);
    procedure DPPrincipal1RodapeLEBUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
    procedure TCDSPrincipal1RodapeLEUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
    procedure ACTRefreshExecute(Sender: TObject);
    procedure ConsultaAfterScroll(DataSet: TDataSet);
    procedure ConsultaBeforeOpen(DataSet: TDataSet);
    procedure ConsultaBeforeClose(DataSet: TDataSet);
    procedure VCDSPrincipal1RodapeLEUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
    procedure TCDSPrincipal1RodapeUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
    procedure ConsultaBeforeScroll(DataSet: TDataSet);
    procedure PED_PDV_ITEAfterOpen(DataSet: TDataSet);
    procedure PED_PDV_ITEAfterScroll(DataSet: TDataSet);
    procedure PED_PDV_ITECalcFields(DataSet: TDataSet);
    procedure DTSPED_PDV_ITEDataChange(Sender: TObject; Field: TField);
    procedure DTSCAD_PRO_IMGDataChange(Sender: TObject; Field: TField);
    procedure PED_PDV_ITEBeforeClose(DataSet: TDataSet);
    procedure ConsultaCalcFields(DataSet: TDataSet);
  private
  private
    { Private declarations }
    REC_SHE_DEF : TREC_SHE_DEF;
    FDockControl: TdxCustomDockControl;
    FDockControlPrincipal1RodapeLE: Integer;

    FCurrentEvent: String;
    FForceClose  : Boolean;
    { Definindo uma propriedade no form
      Criado um atributo FMSGCaption e um método SetMSGCaption para trabalhar com a propriedade
      FMSGCaption   - Encapsula a informação
      SetMSGCaption - Método de acesso que recebe a atualização da informação MSGCaption
      Não usarei o método SetMSGCaption para atribuir informação a FMSGRodpae,
      vou apenas utilizar a propriedade }

    { método para atribuição\validação de valor }
    procedure _SetCurrentEvent(const AValue: String);
    procedure _SetForceClose  (const AValue: Boolean);
    procedure _SetDockControl (const AValue: TdxCustomDockControl; AXYPos: Integer = 0; ADirection: TDirection = lNone; ARepeat: boolean = False; AUpdateZones: Boolean = False);
  public
    { Public declarations }
    property CurrentEvent: String  read FCurrentEvent write _SetCurrentEvent;
    property ForceClose  : Boolean read FForceClose   write _SetForceClose;

    procedure _WM_CREATE(var Msg: TMessage); message WM_CREATE;
    procedure _SW_SHOWNOACTIVATE(var Msg: TMessage); message SW_SHOWNOACTIVATE;
    procedure _WM_ACTIVATE(var Msg: TMessage); message WM_ACTIVATE;
    procedure _WM_BEFORE_RESIZE(var Message: TMessage); message WM_ENTERSIZEMOVE;
    procedure _WM_AFTER_RESIZE(var Message: TMessage); message WM_EXITSIZEMOVE;

    Constructor Create(AOwner: TComponent;
                  const AIDEP: Integer;
                        AIDPK: LongInt;
                        AIDEV: LongInt;
                        ACDEV: Word;
                        AFBEV: String;
                        ATPEV: String); reintroduce; overload;

    Destructor  Destroy; override;

    class procedure _ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                              AIDEP    : Integer = 0;
                              AIDPK    : LongInt = 0;
                              AIDEV    : LongInt = 0;
                              ACDEV    : Word    = 0;
                              AFBEV    : String  = '';
                              ATPEV    : String  = '');

  end;

var
  FrmPED_ROM_ADM: TFrmPED_ROM_ADM;

  _Form: TStringList = Nil;
  _FormPesquisa: Boolean;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmPED_ROM_ADM._WM_CREATE(var Msg: TMessage);
begin
  DPSUBMENU1.Visible := False;
  DPSUBMENU1.Width   := 0;

  DPSUBMENU2.Visible := False;
  DPSUBMENU2.Width   := 0;


  { PRINCIPAL DOCK MANAGER }
  { Largura }
  _SetDockControl(DPPrincipal1LE,DPPrincipal1LE.Tag,lHorizontal); { LE }
  _SetDockControl(DPPrincipal1LD,DPPrincipal1LD.Tag,lHorizontal); { LD }

  { Altura }
  _SetDockControl(DPPrincipal1Titulo  ,DPPrincipal1Titulo.Tag  ,lVertical); { Título }
  _SetDockControl(DPPrincipal1INFADCAD,DPPrincipal1INFADCAD.Tag,lVertical); { Informações Adicionais }
  _SetDockControl(DPPrincipal1INFADCPL,DPPrincipal1INFADCPL.Tag,lVertical); { Informações Complementares }

  { CONSULTA DOCK MANAGER }
  { Largura LE }
//_SetDockControl(TCDSPrincipal1ConsultaLE,TCDSPrincipal1ConsultaLE.Tag,lHorizontal);
//  _SetDockControl(DPPrincipal1ConsultaLE1 ,DPPrincipal1ConsultaLE1.Tag ,lHorizontal);
//_SetDockControl(DPPrincipal1ConsultaLE2 ,DPPrincipal1ConsultaLE2.Tag ,lHorizontal);

  { Largura LD }
  _SetDockControl(TCDSPrincipal1ConsultaLD,TCDSPrincipal1ConsultaLD.Tag,lHorizontal);
  _SetDockControl(DPPrincipal1ConsultaLD1 ,DPPrincipal1ConsultaLD1.Tag ,lHorizontal);
  _SetDockControl(DPPrincipal1ConsultaLD2 ,DPPrincipal1ConsultaLD2.Tag ,lHorizontal);

  { RODAPÉ DOCK MANAGER }
  { Largura LE }
  _SetDockControl(VCDSPrincipal1RodapeLE,VCDSPrincipal1RodapeLE.Tag,lHorizontal);
  _SetDockControl(TCDSPrincipal1RodapeLE,TCDSPrincipal1RodapeLE.Tag,lHorizontal);
  _SetDockControl(DPPrincipal1RodapeLE1 ,DPPrincipal1RodapeLE1.Tag ,lHorizontal);
  _SetDockControl(DPPrincipal1RodapeLE2 ,DPPrincipal1RodapeLE2.Tag ,lHorizontal);

  { Largura LD }
  _SetDockControl(VCDSPrincipal1RodapeLD,VCDSPrincipal1RodapeLD.Tag,lHorizontal);
  _SetDockControl(TCDSPrincipal1RodapeLD,TCDSPrincipal1RodapeLD.Tag,lHorizontal);
  _SetDockControl(DPPrincipal1RodapeLD1 ,DPPrincipal1RodapeLD1.Tag ,lHorizontal);
  _SetDockControl(DPPrincipal1RodapeLD2 ,DPPrincipal1RodapeLD2.Tag ,lHorizontal);

  { Altura }
  _SetDockControl(DPPrincipal1RodapeLEB,DPPrincipal1RodapeLEB.Tag,lVertical); { LEB }
  _SetDockControl(DPPrincipal1RodapeLDB,DPPrincipal1RodapeLDB.Tag,lVertical); { LDB }

  _SetDockControl(DPPrincipal1RodapeTitulo,DPPrincipal1RodapeTitulo.Tag,lVertical);
  _SetDockControl(DPPrincipal1Rodape      ,DPPrincipal1Rodape.Tag      ,lVertical);

  { CONSULTAS DOCK MANAGER }
  DPPrincipal1Consulta2.Visible := (DPPrincipal1Consulta2.Tag > 0); { Principal }
  DPPrincipal1Rodape2.Visible   := (DPPrincipal1Rodape2.Tag   > 0); { Rodapé }
  DPPrincipal1Rodape3.Visible   := (DPPrincipal1Rodape3.Tag   > 0); { Rodapé }

  { CONTAINERS MANAGER }
  { Consulta }
//TCDSPrincipal1ConsultaLE.ActiveChildIndex := 0;
  TCDSPrincipal1ConsultaLD.ActiveChildIndex := 0;
  TCDSPrincipal1Consulta.ActiveChildIndex   := 0;

  { Rodapé Principal }
  TCDSPrincipal1RodapeLE.ActiveChildIndex := 0;
  TCDSPrincipal1RodapeLD.ActiveChildIndex := 0;
  TCDSPrincipal1Rodape.ActiveChildIndex   := 0;

  { CONTAINERS MANAGER }
  { Altura }
  if HCDSPrincipal1Consulta.Tag = 0 then
  begin
    HCDSPrincipal1Consulta.Tag    := DSPrincipal1.Height - DPPrincipal1Titulo.Height - DPPrincipal1INFADCPL.Height;
    HCDSPrincipal1Consulta.Height := HCDSPrincipal1Consulta.Tag;

    TCDSPrincipal1Rodape.Visible  := False;
    TCDSPrincipal1Rodape.Tag      := 0;
    TCDSPrincipal1Rodape.Width    := 0;
    TCDSPrincipal1Rodape.Height   := 0;

    TCDSPrincipal1Rodape.Repaint;
  end else
  begin
    HCDSPrincipal1Consulta.Tag    := IFThen(Screen.Height > 864,315,315) + DPPrincipal1Titulo.Height;
    HCDSPrincipal1Consulta.Height := HCDSPrincipal1Consulta.Tag;

    TCDSPrincipal1Rodape.Visible  := True;
    TCDSPrincipal1Rodape.Tag      := 1;
    TCDSPrincipal1Rodape.Width    := DSPrincipal1.Width  - HCDSPrincipal1Consulta.Tag;
    TCDSPrincipal1Rodape.Height   := DSPrincipal1.Height - HCDSPrincipal1Consulta.Height - DPPrincipal1INFADCAD.Height;

    TCDSPrincipal1Rodape.Repaint;
  end;
end;


procedure TFrmPED_ROM_ADM._SW_SHOWNOACTIVATE(var Msg: TMessage);
          procedure _ProcessPaintMessages; // << not tested, pulled out of code
          var
            Msg: TMsg;
          begin
            while PeekMessage(msg, 0, WM_PAINT, WM_PAINT, PM_REMOVE) do
                  DispatchMessage(msg);
          end;
begin
  _ProcessPaintMessages;
end;

procedure TFrmPED_ROM_ADM._WM_ACTIVATE(var Msg: TMessage);
begin
  if REC_SHE_DEF.FB_Event <> EmptyStr then
     with EEvent do
     try
       UnregisterEvents;

       Events.Add(TRIM(oREPZero(REC_SHE_DEF.FB_Event,'_',RECParametros.ID,3))); { Padrão }
       Events.Add(TRIM(oREPZero(REC_SHE_DEF.FB_Event,'_',RECUsuarios.ID  ,3))); { Login }

       if (ACTExecEvent.Tag > 0) and (ACTExecEvent.Tag <> RECUsuarios.ID) then
       Events.Add(TRIM(oREPZero(REC_SHE_DEF.FB_Event,'_',ACTExecEvent.Tag,3))); { Responsável }

       RegisterEvents;
     except
       on E: Exception do
       begin
         oErro(Application.Handle,'Falha ao tentar executar evento !' + #13 +
                                   REC_SHE_DEF.FB_Event   + '.' + #13 + #13 +
                                   E.Message              + '.' + #13 + #13 +
                                  'Favor entrar em contato com o administrador do sistema.');
       end;
     end;
end;

procedure TFrmPED_ROM_ADM._WM_BEFORE_RESIZE(var Message: TMessage);
begin
  { Before Resize }
  DSPrincipal.Tag := DSPrincipal.Tag + 1;

  { VER TAM TELA }
  REC_SHE_DEF.FWorkArea := not ((REC_SHE_DEF.FWorkArea) and (Screen.Width > 1024));
  REC_SHE_DEF.FMainArea := not ((REC_SHE_DEF.FMainArea) and (Screen.Width > 1366));

  if (REC_SHE_DEF.FWorkArea) or (REC_SHE_DEF.FMainArea) then
  begin
    HelpKeyword := '3';
    REC_SHE_DEF.FrmPosition := poDefault;
  end else

  { Posição Padrão }
  if (HelpKeyword = '5') and (Screen.Width >= 1360) and (Screen.Width <= 1366) then {MainArea, mas sem desabilitar botões }
  begin
    REC_SHE_DEF.FrmPosition := poDefault;
  end;

  { VER DIM TELA }
  REC_SHE_DEF.FHeight := Self.Height;
  REC_SHE_DEF.FWidth  := Self.Width ;

  if RECUsuarios.Id = 0 then
  if Pos('APP',Self.Caption) = 0 then
  Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_DEF.FWidth)  + ' x ' + IntToStr(REC_SHE_DEF.FHeight) + '. ' + Self.Caption;
end;

procedure TFrmPED_ROM_ADM._WM_AFTER_RESIZE(var Message: TMessage);
begin
  { After Resize }
  if DSPrincipal.Tag >= 2 then
     try
       TCDSPrincipal.Height := DPPrincipal1.Height - 1;
       TCDSPrincipal.Width  := DPPrincipal1.Width  - 1;
       TCDSPrincipal.Repaint;

       { DOCK CONSULTA MANAGER }
       if HCDSPrincipal1Consulta.Tag = 0 then
       begin
         HCDSPrincipal1Consulta.Tag    := DSPrincipal1.Height - DPPrincipal1Titulo.Height - DPPrincipal1INFADCPL.Height;
         HCDSPrincipal1Consulta.Height := HCDSPrincipal1Consulta.Tag;

         TCDSPrincipal1Rodape.Visible  := False;
         TCDSPrincipal1Rodape.Tag      := 0;
         TCDSPrincipal1Rodape.Width    := 0;
         TCDSPrincipal1Rodape.Height   := 0;

         TCDSPrincipal1Rodape.Repaint;
       end else
       begin
         HCDSPrincipal1Consulta.Tag    := IFThen(Screen.Height > 864,315,315) + DPPrincipal1Titulo.Height;
         HCDSPrincipal1Consulta.Height := HCDSPrincipal1Consulta.Tag;

         TCDSPrincipal1Rodape.Visible  := True;
         TCDSPrincipal1Rodape.Tag      := 1;
         TCDSPrincipal1Rodape.Width    := DSPrincipal1.Width  - HCDSPrincipal1Consulta.Tag;
         TCDSPrincipal1Rodape.Height   := DSPrincipal1.Height - HCDSPrincipal1Consulta.Height - DPPrincipal1INFADCAD.Height;

         TCDSPrincipal1Rodape.Repaint;
       end;

       oResize(DBGConsulta);
       Paint;
     finally
       DSPrincipal.Tag := 0; { zera controle }

       { Focused }
       if (BEPSQ_CAD.Visible <> ivNever) and (_FormPesquisa) then
           BEPSQ_CAD.SetFocus(False);

       { Pesquisa }
       ACTPesquisa.Execute;
     end;
end;

procedure TFrmPED_ROM_ADM._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmPED_ROM_ADM._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

Class procedure TFrmPED_ROM_ADM._ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                                          AIDEP : Integer = 0;
                                          AIDPK : LongInt = 0;
                                          AIDEV : LongInt = 0;
                                          ACDEV : Word    = 0;
                                          AFBEV : String  = '';
                                          ATPEV : String  = '');
var
  idxForm: Integer;
begin
  oLockWindowUpdate;
  
  if not Assigned(_Form) then
  begin
    _Form := TStringList.Create;
    _Form.Sorted := True;
  end;

  { Inicia pela pesquisa }
  _FormPesquisa := AFormPesquisa;

  if not _Form.Find(ClassName,idxForm) then
  idxForm := _Form.Add(ClassName);

  if ((TForm(AForm) = Nil) or (ACDEV = 1)) then
  TForm(AForm) := Self.Create (AOwner,
                               AIDEP ,
                               AIDPK ,
                               AIDEV ,
                               ACDEV ,
                               AFBEV ,
                               ATPEV);

  _Form.Objects[idxForm] := TObject(@AForm);

  TForm(AForm).FormStyle   := AFormStyle;
  if TForm(AForm).FormStyle = fsNormal then
  begin
    TForm(AForm).Visible := False;
    TForm(AForm).ShowModal;
  end else
  begin
    TForm(AForm).Visible := True;
    TForm(AForm).Show;
  end;
end;

Destructor TFrmPED_ROM_ADM.Destroy;
type
  PtrForm = ^TForm;
var
  idxForm: Integer;
begin
  try
    if TForm(Self).Name <> EmptyStr then
    if Assigned(_Form) and _Form.Find(ClassName,idxForm) and (_Form.Objects[idxForm] <> Nil) then
       try
         { Eventos }
         try
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

         finally
           try
             { Transação Principal }
             try
               oFTransact(TConsulta);
             except
               on E: Exception do
               begin
                 oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                          'Error Code: '+E.Message+'.'      +#13+
                                           Caption+'.');
               end;
             end;

           finally
             { record e afins }
             try
               Finalize(REC_SHE_DEF);
               FillChar(REC_SHE_DEF,SizeOf(REC_SHE_DEF),0);
             except
               on E: Exception do
               begin
                oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                         'Error Code: '+E.Message+'.'        +#13+
                                          Caption+'.');
               end;
             end;
           end;
         end;

       finally
         PtrForm(_Form.Objects[idxForm])^ := Nil;
         _Form.Objects[idxForm] := Nil;
       end;
  finally
    inherited;
  end;

  oDSiTrimWorkingSet;
end;

Constructor TFrmPED_ROM_ADM.Create(AOwner: TComponent;
                              const AIDEP: Integer;
                                    AIDPK: LongInt;
                                    AIDEV: LongInt;
                                    ACDEV: Word;
                                    AFBEV: String;
                                    ATPEV: String);
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.AIDEP := INTTOSTR(AIDEP);
  REC_SHE_DEF.AIDPK := INTTOSTR(AIDPK);

  REC_SHE_DEF.AIDEV := INTTOSTR(AIDEV);
  REC_SHE_DEF.ACDEV := INTTOSTR(ACDEV);

  REC_SHE_DEF.AFBEV := Trim(AFBEV);
  REC_SHE_DEF.ATPEV := Trim(ATPEV);

  REC_SHE_DEF.FForceCaixa := False; { Caixa }

  inherited Create(AOwner);
end;

procedure TFrmPED_ROM_ADM.FormCreate(Sender: TObject);
begin
  { FORM MANAGER }
  REC_SHE_DEF.FrmPosition := Self.Position; { Página }
  SetCursorPos(500,Self.Top); { Cursor }

  { BAR MANAGER }
  BMPrincipal.Bars[1].BorderStyle := bbsNone; { Sistema }
  BMPrincipal.Bars[4].BorderStyle := bbsNone; { Pesquisa Período }

  { USERS }
  REC_SHE_DEF.FB_Event    := 'CAD_PRO';
  REC_SHE_DEF.GDescricao  := 'Produtos';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';

  if ((REC_SHE_DEF.GDescricao = EmptyStr) and (REC_SHE_DEF.GReferencia = EmptyStr) and (REC_SHE_DEF.GRegra = EmptyStr)) or
      (REC_SHE_DEF.GAdmin) then
  begin
    REC_SHE_DEF.GAppend := True;
    REC_SHE_DEF.GEdit   := True;
    REC_SHE_DEF.GDelete := True;
    REC_SHE_DEF.GView   := True;
    REC_SHE_DEF.GPrint  := True;
  end else
  begin
    oUSER(REC_SHE_DEF);
  end;

  { VER FEC }
  if not ForceClose then
  ForceClose := (not REC_SHE_DEF.GView); { Apenas quando parâmetro não setado }

  REC_SHE_DEF.FForceClose := ForceClose;
  REC_SHE_DEF.FAlert      := 'Usuário não Autorizado.' + #13 +
                             'Favor entrar em contato com o administrador do sistema.';

  { DEF FEC }
  if (not REC_SHE_DEF.FForceClose) and (REC_SHE_DEF.FForceCaixa) and (REC_SHE_DEF.AIDEV = 0) and
     (RECParametros.STCX <> 'Caixa Aberto') then
  begin
    ForceClose := True;
    REC_SHE_DEF.FForceClose := ForceClose;
    REC_SHE_DEF.FAlert      := 'Caixa não Aberto.' + #13 +
                               'Favor entrar em contato com o administrador do sistema.';
  end;

  if not REC_SHE_DEF.FForceClose then
         PostMessage( Handle, WM_CREATE, 0, 0 ) else
  begin
    oErro(Application.Handle,'ACESSO NEGADO !' + #13 + #13 +
                              REC_SHE_DEF.FAlert);

    Self.Visible := False;
    Self.Height  := 0;
    Self.Width   := 0;

    PostMessage(Handle, WM_CLOSE, 0, 0);
  end;
end;

procedure TFrmPED_ROM_ADM.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;

  PostMessage(Handle, SW_SHOWNOACTIVATE, 0, 0 );
end;

procedure TFrmPED_ROM_ADM.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;

  PostMessage(Handle, WM_ACTIVATE, 0, 0 );
end;

procedure TFrmPED_ROM_ADM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action  := caFree;
  OnClose := Nil;
end;

procedure TFrmPED_ROM_ADM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: Close; //ACTCancela.Execute;
       vk_return: if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);

       38       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext(ActiveControl,False,True);

       40       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);
  end;
end;

procedure TFrmPED_ROM_ADM.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #5 then
  {[Ctrl+E]} else
  if key = #8 then
  {[Ctrl+H]} else
  if key = #9 then
  {[Ctrl+I]} else
  if key = #16 then
  ACTRelatorios.Execute else
  if key = #19 then
  {[Ctrl+S]} else
  if key = #22 then
  {[Ctrl+V]};
end;

procedure TFrmPED_ROM_ADM.FormPaint(Sender: TObject);
var
  AMainFormScreen: TRect;
  FHeight,
  FWidth ,
  H,
  T,
  B,
  L,R: Word;
begin
  if (not Showing) or (REC_SHE_DEF.FForceClose) then
  Exit;

  { Ajusta o Form para o tamanho da area livre do MainForm }
  GetWindowRect(FrmPrincipal.ClientHandle,AMainFormScreen);

  T := AMainFormScreen.Top;
  B := AMainFormScreen.Bottom;
  L := AMainFormScreen.Left;
  R := AMainFormScreen.Right;
  H := B;

  if REC_SHE_DEF.FrmPosition = poDesigned then
  begin
    if (HelpContext = 0) then { % da altura }
    if (AMainFormScreen.Bottom - AMainFormScreen.Top < Self.Height) then { Área livre menor que página }
    HelpContext := 95; { % }

    FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
    FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

    if (REC_SHE_DEF.FTop > 0) and (REC_SHE_DEF.FLeft > 0) then
    begin
      Top    := REC_SHE_DEF.FTop;
      Left   := REC_SHE_DEF.FLeft;

      if Top + Height > B then
      begin
        Top := Top - ((Top + Height) - B);
      end;

      if Left + Width > R then
      begin
        Left := Left - ((Left + Width) - R);
      end;

    end else
    begin
      if FHeight > 0 then Height := FHeight;
      if FWidth  > 0 then Width  := FWidth;

      if FormStyle = fsNormal then
      begin
        //if FHeight > 0 then
        Top := (T  + (H - Height)) div 2;

        //if FWidth > 0 then
        Left := ((R + L) - Width )  div 2;
      end else
      //if (FHeight > 0) or (FWidth  > 0) then
      begin
        Top  := ((B - T ) - Height) div 2;
        Left := ((R - L)  - Width ) div 2;
      end;
    end;
  end else
  if (REC_SHE_DEF.FWorkArea) and (FormStyle = fsNormal) then
  begin
    Top    := Screen.WorkAreaTop;
    Left   := Screen.WorkAreaLeft;
    Width  := Screen.WorkAreaWidth;
    Height := Screen.WorkAreaHeight;
  end else
  if (REC_SHE_DEF.FMainArea) and (FormStyle = fsNormal) then
  begin
    Top    := 0;
    Left   := 0;
    Width  := R - L - 5;
    Height := H - T - 5;
  end else
  if REC_SHE_DEF.FrmPosition = poDefault then
  begin
    Top    := IFThen(FormStyle = fsNormal,T,0);
    Left   := IFThen(FormStyle = fsNormal,L,0);
    Width  := IFThen(REC_SHE_DEF.FrmPosition = poDefault,R - L - 5,0);
    Height := IFThen(REC_SHE_DEF.FrmPosition = poDefault,H - T - 5,0);
  end;
end;

procedure TFrmPED_ROM_ADM.FormResize(Sender: TObject);
begin
  if (not Showing) or (REC_SHE_DEF.FForceClose) then
  Exit;

  { Risize }
  PostMessage(Handle, WM_ENTERSIZEMOVE , 0, 0); { Before }
  PostMessage(Handle, WM_EXITSIZEMOVE  , 0, 0); { After }
end;

procedure TFrmPED_ROM_ADM._SetDockControl (const AValue: TdxCustomDockControl; AXYPos: Integer = 0; ADirection: TDirection = lNone; ARepeat: boolean = False; AUpdateZones: Boolean = False);
var
  FUpdateZones: Boolean;
begin
  FUpdateZones := AUpdateZones;
  
  if AValue <> Nil then
  begin
    if FDockControl <> AValue then
       FDockControl := AValue;

    TdxCustomDockControl(AValue).Tag     := AXYPOS;
    TdxCustomDockControl(AValue).Visible := not (TdxCustomDockControl(AValue).Tag = 0);

    if ADirection = lVertical then
    begin
      //if AUpdateZones then
      //   FUpdateZones := (TdxCustomDockControl(AValue).Height <> TdxCustomDockControl(AValue).Tag);

      if ARepeat then
      begin
        repeat  TdxCustomDockControl(AValue).Height := TdxCustomDockControl(AValue).Tag;
        until   TdxCustomDockControl(AValue).Tag     = TdxCustomDockControl(AValue).Height;
      end else
      begin
        TdxCustomDockControl(AValue).Height := TdxCustomDockControl(AValue).Tag;
      end;
    end else

    if ADirection = lHorizontal then
    begin
      //if AUpdateZones then
      //   FUpdateZones := (TdxCustomDockControl(AValue).Width <> TdxCustomDockControl(AValue).Tag);

      if ARepeat then
      begin
        repeat  TdxCustomDockControl(AValue).Width := TdxCustomDockControl(AValue).Tag;
        until   TdxCustomDockControl(AValue).Tag    = TdxCustomDockControl(AValue).Width;
      end else
      begin
        TdxCustomDockControl(AValue).Width := TdxCustomDockControl(AValue).Tag;
      end;
    end;
    
    if FUpdateZones then
    AValue.OnUpdateDockZones(AValue,Avalue.DockZones);
    AValue.Repaint;
  end;
end;

procedure TFrmPED_ROM_ADM.VCDSPrincipal1RodapeLEUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  i: Word;
begin
  i := 1;
  if Showing then
     repeat
       Sender.Width  := VCDSPrincipal1RodapeLE.Width;
       Sender.Height := VCDSPrincipal1RodapeLE.Height;
       Sender.Repaint;
     until
       i <= 1;
end;

procedure TFrmPED_ROM_ADM.TCDSPrincipal1RodapeLEUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  i: Word;
begin
  i := 1;
  if Showing then
     repeat
       Sender.Width  := VCDSPrincipal1RodapeLE.Width;
       Sender.Height := VCDSPrincipal1RodapeLE.Height;
       Sender.Repaint;
     until
       i <= 1;
end;

procedure TFrmPED_ROM_ADM.DPPrincipal1RodapeLEBUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  i: Word;
begin
  i := 1;
  if Showing then
     repeat
       Sender.Width  := VCDSPrincipal1RodapeLE.Width;
       Sender.Height := Sender.Tag;
       Sender.Repaint;
     until
       i <= 1;
end;

procedure TFrmPED_ROM_ADM.TCDSPrincipal1RodapeUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  I: Integer;
begin
  if Showing then
  begin
    I := 0;
    while I < AZones.Count do
    begin
//      caption := INTTOSTR(I) + ' - ' + TdxCustomDockControl(TdxZone(AZones.Items[I]).Owner).Name;

      Sender.Width  := Sender.Width  - 1;
      Sender.Height := Sender.Height - 1;
      Sender.Repaint;

      Inc(I);
    end;

    TCDSPrincipal.Tag := 1;
  end;
end;

procedure TFrmPED_ROM_ADM.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Consulta);
end;

procedure TFrmPED_ROM_ADM.ACTMAppendExecute(Sender: TObject);
begin
  if (not ACTMAppend.Enabled) or (not ACTMAppend.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_ROM_ADM.ACTMEditExecute(Sender: TObject);
begin
  if (not ACTMEdit.Enabled) or (not ACTMEdit.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_ROM_ADM.ACTMDeleteExecute(Sender: TObject);
begin
  if (not ACTMDelete.Enabled) or (not ACTMDelete.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_ROM_ADM.ACTMPostExecute(Sender: TObject);
begin
  if (not ACTMPost.Enabled) or (not ACTMPost.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_ROM_ADM.ACTMCancelExecute(Sender: TObject);
begin
  if (not ACTMCancel.Enabled) or (not ACTMCancel.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_ROM_ADM.ACTSaidaExecute(Sender: TObject);
begin
  REC_SHE_DEF.PSQ_OK := False;
  Close;
end;

procedure TFrmPED_ROM_ADM.ACTEAppendExecute(Sender: TObject);
begin
  if (not ACTEAppend.Enabled) or (not ACTEAppend.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_ROM_ADM.ACTEEditExecute(Sender: TObject);
begin
  if (not ACTEEdit.Enabled) or (not ACTEEdit.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_ROM_ADM.ACTEDeleteExecute(Sender: TObject);
begin
  if (not ACTEDelete.Enabled) or (not ACTEDelete.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_ROM_ADM.ACTEPostExecute(Sender: TObject);
begin
  if (not ACTEPost.Enabled) or (not ACTEPost.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_ROM_ADM.ACTECancelExecute(Sender: TObject);
begin
  if (not ACTECancel.Enabled) or (not ACTECancel.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_ROM_ADM.ACTPesquisaExecute(Sender: TObject);
var
  i: Integer;
begin
  { RESET TRANSACTION }
  oCTransact(TConsulta);
  oOTransact(TConsulta);

  { SEARCH DEFAULT }
  REC_SHE_DEF.PSQ_FB_PD := EmptyStr;

  { RESET FILTER DEFAULT }
  DBGConsulta.Filter.Clear; { Consulta }

  { Texto Pesquisa }
  REC_SHE_DEF.PSQ_FB_FD := BLBPSQ_CAD_MENU.Description; { Campo }
  REC_SHE_DEF.PSQ_FB_VD := BEPSQ_CAD.Text;
  REC_SHE_DEF.PSQ_FB_PK := BEPSQ_CAD.Text;
  REC_SHE_DEF.PSQ_FB_FK := EmptyStr;

  { Campos Coringas }
  REC_SHE_DEF.PSQ_FB_EP := EmptyStr; { Empresa }
  REC_SHE_DEF.PSQ_FB_CF := EmptyStr; { Fornecedor }
  REC_SHE_DEF.PSQ_FB_CP := EmptyStr; { Artigo }
  REC_SHE_DEF.PSQ_FB_CD := EmptyStr; { Código }
  REC_SHE_DEF.PSQ_FB_BC := EmptyStr; { Barcode }
  REC_SHE_DEF.PSQ_FB_NU := EmptyStr; { NCM }
  REC_SHE_DEF.PSQ_FB_NO := EmptyStr; { Descrição }
  REC_SHE_DEF.PSQ_FB_GD := EmptyStr; { Grade }

  { Lista Digitada }
  if REC_SHE_DEF.PSQ_FB_SL = Nil then
  REC_SHE_DEF.PSQ_FB_SL := TStringList.Create else
  REC_SHE_DEF.PSQ_FB_SL.Clear;

  if (REC_SHE_DEF.PSQ_FB_VD <> EmptyStr) and (REC_SHE_DEF.PSQ_FB_VD <> '0') then
  begin
    { Capturar as palavras separadamente }
    While Length(REC_SHE_DEF.PSQ_FB_VD) > 0 do
    begin
      REC_SHE_DEF.PSQ_FB_FK := Trim(Fetch(REC_SHE_DEF.PSQ_FB_VD  ,' '));
      REC_SHE_DEF.PSQ_FB_FK := oStrTran(REC_SHE_DEF.PSQ_FB_FK,'+',' ');
      REC_SHE_DEF.PSQ_FB_SL.Add(REC_SHE_DEF.PSQ_FB_FK);

      with SQLConsulta do
      begin
        { Âncora de Artigos }
        if (Pos(REC_SHE_DEF.PSQ_FB_PD,'ProdutosPedidos') > 0) then
        if (REC_SHE_DEF.PSQ_FB_CP = EmptyStr) and (Pos('.',REC_SHE_DEF.PSQ_FB_SL.Strings[0]) > 0) then { somente na primeira palavra }
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT   FIRST 1 PK.ID FROM CAD_PRO AS PK');
          SQL.Add('WHERE    PK.ARTIGO LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');
          SQL.Add('ORDER BY 1');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.PSQ_FB_CP := REC_SHE_DEF.PSQ_FB_FK;
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,''); { Retira conteúdo da pesquisa principal }
          end;
        end else
        begin
          { Âncora de Revendedores }
          if (Pos(REC_SHE_DEF.PSQ_FB_PD,'ProdutosPedidos') > 0) then
          if (REC_SHE_DEF.PSQ_FB_EP = EmptyStr) and (Length(REC_SHE_DEF.PSQ_FB_PK) > 2)  then
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT   FIRST 1 PK.ID FROM TAB_PAR_SIS AS PK');
            SQL.Add('WHERE    PK.FANTASIA LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');
            SQL.Add('ORDER BY 1');
            ExecQuery;

            if not Eof then
            begin
              REC_SHE_DEF.PSQ_FB_EP := REC_SHE_DEF.PSQ_FB_FK;
              REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,''); { Retira conteúdo da pesquisa principal }
            end
          end;

          { Âncora de Fabricantes }
          if (Pos(REC_SHE_DEF.PSQ_FB_PD,'ProdutosPedidos') > 0) then
          if (REC_SHE_DEF.PSQ_FB_CF = EmptyStr) and (Length(REC_SHE_DEF.PSQ_FB_PK) > 2)  then
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT   FIRST 1 PK.ID FROM CAD_FOR AS PK');
            SQL.Add('WHERE    PK.FANTASIA LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');
            SQL.Add('ORDER BY 1');
            ExecQuery;

            if not Eof then
            begin
              REC_SHE_DEF.PSQ_FB_CF := REC_SHE_DEF.PSQ_FB_FK;
              REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,''); { Retira conteúdo da pesquisa principal }
            end;
          end;

          { Âncora de Situações }
          if (REC_SHE_DEF.PSQ_FB_ST = EmptyStr) and (Length(REC_SHE_DEF.PSQ_FB_PK) > 2)  then
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT FIRST 1 PK.ID FROM TAB_STA_API AS PK');
            SQL.Add('WHERE  PK.DESCRICAO  LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');

            SQL.Add('UNION');
            SQL.Add('SELECT FIRST 1 PK.ID FROM TAB_STA_CAD AS PK');
            SQL.Add('WHERE  PK.DESCRICAO  LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');

            SQL.Add('UNION');
            SQL.Add('SELECT FIRST 1 PK.ID FROM TAB_STA_EST AS PK');
            SQL.Add('WHERE  PK.DESCRICAO  LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');

            SQL.Add('UNION');
            SQL.Add('SELECT FIRST 1 PK.ID FROM TAB_STA_FIN AS PK');
            SQL.Add('WHERE  PK.DESCRICAO  LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');

            SQL.Add('UNION');
            SQL.Add('SELECT FIRST 1 PK.ID FROM TAB_STA_FIS AS PK');
            SQL.Add('WHERE  PK.DESCRICAO  LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');

            SQL.Add('UNION');
            SQL.Add('SELECT FIRST 1 PK.ID FROM TAB_STA_PED AS PK');
            SQL.Add('WHERE  PK.DESCRICAO  LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');

            SQL.Add('UNION');
            SQL.Add('SELECT FIRST 1 PK.ID FROM TAB_STA_PRO AS PK');
            SQL.Add('WHERE  PK.DESCRICAO  LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');
            ExecQuery;

            if not Eof then
            begin
              REC_SHE_DEF.PSQ_FB_ST := REC_SHE_DEF.PSQ_FB_FK;
              REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,''); { Retira conteúdo da pesquisa principal }
            end;
          end;
        end;
      end;
    end;

    { Âncora de grade de produtos }
    if (Pos(REC_SHE_DEF.PSQ_FB_PD,'ProdutosPedidos') > 0) then
    if (REC_SHE_DEF.psq_FB_PK <> EmptyStr) then { somente quando último }
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   FIRST 1 PK.ID FROM CAD_PRO AS PK');
      SQL.Add('WHERE    PK.GRD_NO CONTAINING ''' + REC_SHE_DEF.PSQ_FB_PK + '''');
      SQL.Add('ORDER BY 1');
      ExecQuery;

      if not Eof then
      begin
        REC_SHE_DEF.PSQ_FB_GD := REC_SHE_DEF.PSQ_FB_FK;
        REC_SHE_DEF.PSQ_FB_PK := oStrTran(oStrTran(REC_SHE_DEF.PSQ_FB_PK,'+',' '),REC_SHE_DEF.PSQ_FB_FK,''); { Retira conteúdo da pesquisa principal }
      end;
    end;
  end;

  try
    { Pesquisa Padrão }
    REC_SHE_DEF.PSQ_FB_PD := 'Produtos'; { Cadastro }
    oLockWindowUpdate; { Trava }

    { Consulta Principal }
    with Consulta do
    begin
      Close;
      SQL.Clear;

      { RECURSIVE INI }
      SQL.Add('WITH RECURSIVE PK');
      SQL.Add('AS (');

      SQL.Add('SELECT PK.ID  ,PK.IDEP,PK.DTCA,PK.CDCX,');
      SQL.Add('       PK.IDPK,PK.DEPK,PK.DTPK,PK.HTPK,');

      SQL.Add('       PK.CDRO,PK.DTRO,PK.HTRO,PK.QPRO,PK.FA_QPRO,PK.LQ_QPRO,');
      SQL.Add('       PK.CDNF,PK.DTNF,PK.HTNF,PK.QPNF,PK.FA_QPNF,PK.LQ_QPNF,');
      SQL.Add('       PK.IDSA,PK.DTSA,PK.HTSA,PK.QPSA,PK.FA_QPSA,PK.LQ_QPSA,');

      SQL.Add('       PK.IDCD,PK.DTCD,PK.DECD,PK.RZCD,PK.PJCD,PK.GPCD,PK.UFCD,PK.RSCD,');
      SQL.Add('       PK.IDCR,PK.DTCR,PK.DECR,PK.ABCR,PK.RZCR,PK.PJCR,PK.GPCR,PK.RSCR,');
      SQL.Add('       PK.IDCV,PK.DTCV,PK.DECV,PK.RSCV,');
      SQL.Add('       PK.IDCT,PK.DTCT,PK.DECT,PK.RZCT,PK.PJCT,PK.GPCT,PK.RSCT,');

      SQL.Add('       PK.TCDE,PK.QTRL,PK.FA_TCDE,PK.FA_QTRL,PK.LQ_TCDE,PK.LQ_QTRL,');
      SQL.Add('       PK.VDSC,PK.PDSC,');

      SQL.Add('       PK.CDOS,PK.DTOS,PK.HTOS,');
      SQL.Add('       PK.CDSP,PK.DTSP,PK.HTSP,');

      SQL.Add('       PK.VTSP,PK.RLSP,PK.PPSP,PK.FA_VTSP,PK.FA_RLSP,PK.FA_PPSP,PK.LQ_VTSP,PK.LQ_RLSP,PK.LQ_PPSP,');
      SQL.Add('       PK.VTFA,PK.VTLQ,PK.VTBQ,');
      SQL.Add('       PK.VTAP,PK.RLAP,PK.FA_VTAP,PK.FA_RLAP,PK.LQ_VTAP,PK.LQ_RLAP,');
      SQL.Add('       PK.VTDV,PK.FA_VTDV,PK.LQ_VTDV,');
      SQL.Add('       PK.VTAB,PK.FA_VTAB,PK.LQ_VTAB,');
      SQL.Add('       PK.VTSC,PK.VTFP,');

      SQL.Add('       PK.CDPD,PK.STPD,PK.DVPD,PK.ABPD,PK.FAPD,PK.LQPD,        ');
      SQL.Add('       PK.CDCO,PK.STCO,PK.TPCO,PK.RECO,PK.DECO,                ');
      SQL.Add('       PK.CDST,PK.STFI,PK.APST,PK.FPST,PK.FAST,PK.LQST,PK.BQST,');
      SQL.Add('       PK.CDBX,PK.DTBX,');
      SQL.Add('       PK.INFADPED     ');

      SQL.Add('FROM ' + oREPZero('VW_PSQ_PED_PDV_ADM','_',RECParametros.Id,3) + ' AS PK');

      { Inicialização }
      if ((REC_SHE_DEF.PSQ_FB_SL.Count = 0) and ((BDPSQ_PER_INI.Date <= 0) or (BDPSQ_PER_FIM.Date <= 0))) then
      begin
        SQL.Add('WHERE (PK.APST = 1 ');
        SQL.Add('OR     PK.DTPK BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) ');
        SQL.Add('OR     PK.DTSP BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) ');
        SQL.Add('OR     PK.DTNF BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) ');
        SQL.Add('OR     PK.DTBX BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))))');
      end;

      { Artigos }
      if REC_SHE_DEF.PSQ_FB_CP <> EmptyStr then
      begin
        SQL.Add(IFThen(Pos('WHERE',Consulta.SQL.Text) = 0,'WHERE','AND'));
        SQL.Add('PK.ARTIGO LIKE ''' + REC_SHE_DEF.PSQ_FB_CP + '%''');
      end;

      { Situação }
      if REC_SHE_DEF.PSQ_FB_ST <> EmptyStr then
      begin
        SQL.Add(IFThen(Pos('WHERE',Consulta.SQL.Text) = 0,'WHERE','AND'));
        SQL.Add('PK.DEST LIKE ''' + REC_SHE_DEF.PSQ_FB_ST + '%''');
      end;

      { Período }
      if (BDPSQ_PER_INI.Date > 0) and (BDPSQ_PER_FIM.Date > 0) then
      begin
        SQL.Add(IFThen(Pos('WHERE',Consulta.SQL.Text) = 0,'WHERE','AND'));
        SQL.Add(BBPSQ_PER_MENU.Description + ' BETWEEN ''' + FormatDateTime('mm/dd/yy',BDPSQ_PER_INI.Date) +  ''' AND ''' + FormatDateTime('mm/dd/yy',BDPSQ_PER_FIM.Date) + '''');
      end;

      SQL.Add('),'); { RECURSIVE FIM }

      { CTE INI }
      SQL.Add('CTE_PSQ');
      SQL.Add('AS    (');

      if REC_SHE_DEF.PSQ_FB_PK = EmptyStr then
      SQL.Add('SELECT PK.* FROM PK') else { Apenas Âncoras }

      { Diversos }
      if REC_SHE_DEF.PSQ_FB_SL.Count > 0 then
      begin
        { Âncora Principal }
        { Pedido }
        if Pos('WHERE',Consulta.SQL.Text) = 0 then
        begin
          SQL.Add('SELECT PK.* FROM PK');
          SQL.Add('WHERE  PK.DEPK LIKE ''' + REC_SHE_DEF.PSQ_FB_SL.Strings[0] + '%''');
        end;

        for i := 0 to REC_SHE_DEF.PSQ_FB_SL.Count - 1 do
        begin
          { Apenas Números }
          if oBSONumero(REC_SHE_DEF.PSQ_FB_SL.Strings[i]) then
          begin
            { Nota Fiscais }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.CDNF = ''' + REC_SHE_DEF.PSQ_FB_SL.Strings[i] + '''');

            { Romaneios }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.CDRO = ''' + REC_SHE_DEF.PSQ_FB_SL.Strings[i] + '''');

            { CNPJ }
            { Cliente }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.PJCD LIKE ''' + REC_SHE_DEF.PSQ_FB_SL.Strings[i] + '%''');

            { Representante }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.PJCR LIKE ''' + REC_SHE_DEF.PSQ_FB_SL.Strings[i] + '%''');

            { Transportadora }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.PJCT LIKE ''' + REC_SHE_DEF.PSQ_FB_SL.Strings[i] + '%''');
          end else

          { Outros }
          begin
            { CLIENTE }
            { Fantasia }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.DECD LIKE ''' + REC_SHE_DEF.PSQ_FB_SL.Strings[i] + '%''');

            { Razão }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.RZCD LIKE ''' + REC_SHE_DEF.PSQ_FB_SL.Strings[i] + '%''');

            { REPRESENTANTE }
            { Fantasia }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.DECR LIKE ''' + REC_SHE_DEF.PSQ_FB_SL.Strings[i] + '%''');

            { Razão }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.RZCR LIKE ''' + REC_SHE_DEF.PSQ_FB_SL.Strings[i] + '%''');

            { TRANSPORTADORA }
            { Fantasia }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.DECT LIKE ''' + REC_SHE_DEF.PSQ_FB_SL.Strings[i] + '%''');

            { Razão }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.RZCT LIKE ''' + REC_SHE_DEF.PSQ_FB_SL.Strings[i] + '%''');

            { PEDIDO }
            { Tipo }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.STPD LIKE ''' + REC_SHE_DEF.PSQ_FB_SL.Strings[i] + '%''');

            { Cobrança }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.STCO LIKE ''' + REC_SHE_DEF.PSQ_FB_SL.Strings[i] + '%''');

            { Situação }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.DEST LIKE ''' + REC_SHE_DEF.PSQ_FB_SL.Strings[i] + '%''');
          end;
        end;
      end;
      SQL.Add(')'); { CTE FIM }

      { CTE SELECT }
      SQL.Add('SELECT   PK.ID  ,PK.IDEP,PK.DTCA,PK.CDCX,');
      SQL.Add('         PK.IDPK,PK.DEPK,PK.DTPK,PK.HTPK,');

      SQL.Add('         NULLIF(PK.CDRO,0) AS CDRO,CAST(PK.DTRO || '' '' || PK.HTRO AS TIMESTAMP) AS DTRO,PK.QPRO,PK.FA_QPRO,PK.LQ_QPRO,');
      SQL.Add('         NULLIF(PK.CDNF,0) AS CDNF,CAST(PK.DTNF || '' '' || PK.HTNF AS TIMESTAMP) AS DTNF,PK.QPNF,PK.FA_QPNF,PK.LQ_QPNF,');
      SQL.Add('         NULLIF(PK.IDSA,0) AS IDSA,CAST(PK.DTSA || '' '' || PK.HTSA AS TIMESTAMP) AS DTSA,PK.QPSA,PK.FA_QPSA,PK.LQ_QPSA,');


      SQL.Add('         PK.IDCD,PK.DTCD,PK.DECD,PK.RZCD,PK.PJCD,PK.GPCD,PK.UFCD,PK.RSCD,');
      SQL.Add('         PK.IDCR,PK.DTCR,PK.DECR,PK.ABCR,PK.RZCR,PK.PJCR,PK.GPCR,PK.RSCR,        ');
      SQL.Add('         PK.IDCV,PK.DTCV,PK.DECV,PK.RSCV,                                ');
      SQL.Add('         PK.IDCT,PK.DTCT,PK.DECT,PK.RZCT,PK.PJCT,PK.GPCT ,PK.RSCT,       ');

      SQL.Add('         PK.TCDE,PK.QTRL,PK.FA_TCDE,PK.FA_QTRL,PK.LQ_TCDE,PK.LQ_QTRL,');
      SQL.Add('         PK.VDSC,PK.PDSC,');

      SQL.Add('         NULLIF(PK.CDOS,0) AS CDOS ,CAST(PK.DTOS || '' '' || PK.HTOS AS TIMESTAMP) AS DTOS,');
      SQL.Add('         NULLIF(PK.CDSP,0) AS CDSP ,PK.DTSP,PK.HTSP,');

      SQL.Add('         PK.VTSP,PK.RLSP,PK.PPSP,PK.FA_VTSP,PK.FA_RLSP,PK.FA_PPSP,PK.LQ_VTSP,PK.LQ_RLSP,PK.LQ_PPSP,');
      SQL.Add('         PK.VTFA,PK.VTLQ,PK.VTBQ,');
      SQL.Add('         PK.VTAP,PK.RLAP,PK.FA_VTAP,PK.FA_RLAP,PK.LQ_VTAP,PK.LQ_RLAP,');
      SQL.Add('         PK.VTDV,PK.FA_VTDV,PK.LQ_VTDV,');
      SQL.Add('         PK.VTAB,PK.FA_VTAB,PK.LQ_VTAB,');
      SQL.Add('         PK.VTSC,PK.VTFP,');

      SQL.Add('         PK.CDPD,PK.STPD,PK.DVPD,PK.ABPD,PK.FAPD,PK.LQPD,        ');
      SQL.Add('         PK.CDCO,PK.STCO,PK.TPCO,PK.RECO,PK.DECO,                ');
      SQL.Add('         PK.CDST,PK.STFI,PK.APST,PK.FPST,PK.FAST,PK.LQST,PK.BQST,');
      SQL.Add('         PK.CDBX,PK.DTBX,');
      SQL.Add('         PK.INFADPED');

      SQL.Add('FROM     CTE_PSQ AS PK');
      SQL.Add('ORDER BY PK.DTCA DESC');

      Prepare;
      Open;
    end;
  finally
    { DOCK MANAGER }
    { Rodapé }
    FDockControlPrincipal1RodapeLE := VCDSPrincipal1RodapeLE.Tag; { EST_EPE }
    VCDSPrincipal1RodapeLE.Tag     := IFThen(VCDSPrincipal1RodapeLE.Tag < 400,400,VCDSPrincipal1RodapeLE.Tag);

    if FDockControlPrincipal1RodapeLE <> VCDSPrincipal1RodapeLE.Tag then
    begin
      _SetDockControl(VCDSPrincipal1RodapeLE,VCDSPrincipal1RodapeLE.Tag,lHorizontal,True ,True);
      _SetDockControl(TCDSPrincipal1RodapeLE,VCDSPrincipal1RodapeLE.Tag,lHorizontal,False,True);
    end;

    { DOCK MANAGER }
    if (DPPrincipal1RodapeLEB.Height <> 75) and (PED_PDV_ITEC_INFADPRC.AsString <> EmptyStr) then
     _SetDockControl(DPPrincipal1RodapeLEB,75,lVertical,True,True) else

     if PED_PDV_ITEC_INFADPRC.AsString <> EmptyStr then

    _SetDockControl(DPPrincipal1RodapeLEB,30,lVertical,True,True);

    { CONSULTA }
    DBGConsulta.Filter.Clear; { Filters }
//    DBGConsultaDECP.Field.FocusControl; { Focused }

    { EST_EPE }
//    DBGEST_EPE.Filter.Clear; { Filters }

//    if EST_EPEGRD_NO.AsString <> EmptyStr then { Focused }
//    DBGEST_EPEGRD_NO.Field.FocusControl else { Grade }
//    DBGEST_EPESKU.Field.FocusControl; { SKU }


    if Consulta.RecNo > 0 then
    begin
      { DBGConsulta }
      PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(DBGConsulta).SetFocus;
    end else
    begin
      { Pesquisa }
      DPPrincipal1Consulta1.Caption := 'Registro(s) não Encontrado(s)';
      BEPSQ_CAD.SetFocus(False);
    end;

    if TCDSPrincipal.Tag = 0 then
    _SetDockControl(TCDSPrincipal1Rodape,DSPrincipal1.Width - VCDSPrincipal1RodapeLE.Tag,lHorizontal,False,True);

    oUnLockWindowUpdate; { Destrava }
  end;
end;

procedure TFrmPED_ROM_ADM.ACTPSQ_OKExecute(Sender: TObject);
begin
  if ACTPesquisa.Enabled then
  begin
    if Sender.ClassType = TdxBarLargeButton then
    begin
      BLBPSQ_CAD_MENU.Description := TdxBarLargeButton(Sender).Description;
      BLBPSQ_CAD_MENU.Caption     := TdxBarLargeButton(Sender).Caption;
      BLBPSQ_CAD_MENU.Hint        := TdxBarLargeButton(Sender).Hint;
      BLBPSQ_CAD_MENU.Tag         := TdxBarLargeButton(Sender).Tag;

      BEPSQ_CAD.SetFocus(False);
    end;

    if Sender.ClassType = TdxBarButton then
    begin
      BBPSQ_PER_MENU.Description := TdxBarButton(Sender).Description;
      BBPSQ_PER_MENU.Caption     := TdxBarButton(Sender).Caption;
      BBPSQ_PER_MENU.Hint        := TdxBarButton(Sender).Hint;
      BBPSQ_PER_MENU.Tag         := TdxBarButton(Sender).Tag;
    end;

    if ((BEPSQ_CAD.Text = EmptyStr) and
       ((BDPSQ_PER_INI.Date <= 0  ) or (BDPSQ_PER_FIM.Date <= 0))) then
    Abort;

    if BDPSQ_PER_FIM.Date > 0 then
    if BDPSQ_PER_INI.Date > BDPSQ_PER_FIM.Date then
       oException(Nil,'DATA INICIAL não pode ser maior que DATA FINAL !');

    ACTPesquisa.Execute;
  end;
end;

procedure TFrmPED_ROM_ADM.ACTPSQ_FOCUSExecute(Sender: TObject);
begin
  if (ACTPesquisa.Enabled) and (BEPSQ_CAD.Enabled) then
  BEPSQ_CAD.SetFocus(False);
end;

procedure TFrmPED_ROM_ADM.BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    BEPSQ_CAD.Text := Trim(BEPSQ_CAD.Text);
    with REC_SHE_DEF do
    begin
      if oBSONumero(BEPSQ_CAD.Text) then
      begin
        PSQ_WHERE := ' = ';
        PSQ_LKINI := '''' ;
        PSQ_LKFIM := '''' ;
      end else
      begin
        PSQ_WHERE := ' LIKE ';
        PSQ_LKINI := '''' ;
        PSQ_LKFIM := '%''';
      end;
    end;

    ACTPSQ_OK.Execute;
  end else

  if key = VK_DOWN then
  begin
    if (ACTPesquisa.Enabled) and (BEPSQ_CAD.Enabled) and (DBGConsulta.Enabled) then
    begin
      PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(DBGConsulta).SetFocus;
    end;
  end else

  if key = vk_escape then
  ACTSaida.Execute;
end;

procedure TFrmPED_ROM_ADM.BEPSQ_CADCurChange(Sender: TObject);
begin
  BEPSQ_CAD.Text := BEPSQ_CAD.CurText;
end;

procedure TFrmPED_ROM_ADM.BDPSQ_PER_INICurChange(Sender: TObject);
begin
  BDPSQ_PER_INI.Date := BDPSQ_PER_INI.CurDate;
end;

procedure TFrmPED_ROM_ADM.BDPSQ_PER_FIMCurChange(Sender: TObject);
begin
  BDPSQ_PER_FIM.Date := BDPSQ_PER_FIM.CurDate;
end;

procedure TFrmPED_ROM_ADM.ACTExecEventExecute(Sender: TObject);
var
  i: word;
begin
  if REC_SHE_DEF.FB_Event <> EmptyStr then
     try
       oOTransact(TEvent);

       SPEvent.Close;
       SPEvent.StoredProcName := 'SP_FB_EVENT';
       SPEvent.Prepare;

       for i := 0 to SPEvent.ParamCount - 1 do
       SPEvent.Params[i].Value := Null;

       for i := 0 to EEvent.Events.Count - 1 do
       SPEvent.Params[i].Value := EEvent.Events.Strings[i];
       SPEvent.ExecProc;

       oCTransact(TEvent);
     except
       on E: Exception do
       begin
         oCTransact(TEvent,ltRollback);
         oErro(Application.Handle,'Falha ao tentar executar evento !' + #13 +
                                   REC_SHE_DEF.FB_Event   + '.' + #13 + #13 +
                                   E.Message              + '.' + #13 + #13 + #13 +
                                  'Favor entrar em contato com o administrador do sistema.');
       end;
     end;
end;

procedure TFrmPED_ROM_ADM.EEventEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  oRefresh(Consulta);
end;

procedure TFrmPED_ROM_ADM.ConsultaBeforeOpen(DataSet: TDataSet);
begin
  DBGConsultaSTPD.Visible := False; { Tipos Pedidos }

  { Nota Fiscal }
  DBGConsultaDTNF.Visible := False;

  { Saídas }
  DBGConsulta.Bands[02].Visible := False;
  DBGConsultaCDRO.Visible       := False; { Romaneio }
  DBGConsultaDTSA.Visible       := False; { Entrega  }

  { Clientes }
  DBGConsultaGPCD.Visible := False; { Grupo }

  DBGConsulta.Bands[05].Visible := False; { Representantes }
  DBGConsulta.Bands[06].Visible := False; { Vendedores }

  DBGConsulta.Bands[08].Visible := False; { OS }
  DBGConsulta.Bands[09].Visible := False; { Expedição }
  DBGConsultaDTSP.Visible       := False;
  DBGConsultaHTSP.Visible       := False;

  DBGConsulta.Bands[11].Visible := False; { Descontos }
  DBGConsulta.Bands[12].Visible := False; { Outros }

  DBGConsultaVTLQ.Visible := False; { Liquidados   }
  DBGConsultaVTAP.Visible := False; { Em Aberto    }
  DBGConsultaVTBQ.Visible := False; { Bloqueados   }
  DBGConsultaVTDV.Visible := False; { Devoluções   }
  DBGConsultaVTAB.Visible := False; { Abatimentos  }
  DBGConsultaVTSC.Visible := False; { Sem Cobrança }
  DBGConsultaVTFP.Visible := False; { Cancelados   }
end;

procedure TFrmPED_ROM_ADM.ConsultaBeforeClose(DataSet: TDataSet);
begin
  PED_PDV_ITE.Close; { Pedido }
  PED_PDV_SEP.Close; { Expedição }
end;

procedure TFrmPED_ROM_ADM.ConsultaAfterOpen(DataSet: TDataSet);
begin
  if Consulta.State <> dsInactive then
  if Consulta.RecNo  > 0 then
  begin
    { TABELAS }
    { Pedido }
    if PED_PDV_ITE.State = dsInactive then
    begin
      PED_PDV_ITE.Prepare;
      PED_PDV_ITE.Open;
    end;

    { Expedição
    if PED_PDV_SEP.State = dsInactive then
    begin
      PED_PDV_SEP.Prepare;
      PED_PDV_SEP.Open;
    end; }
  end;
end;

procedure TFrmPED_ROM_ADM.ConsultaBeforeScroll(DataSet: TDataSet);
begin
  { PED_PDV_ITE  }
  DBGPED_PDV_ITE.Bands[03].Visible := False; { Descontos }
  DBGPED_PDV_ITE.Bands[04].Visible := False; { OS }
  DBGPED_PDV_ITE.Bands[05].Visible := False; { Expedição }

  DBGPED_PDV_ITECP_SGEP.Visible := False; { Revendedor }
  DBGPED_PDV_ITEDGCP.Visible    := False; { Grade }
  DBGPED_PDV_ITETSDE.Visible    := False; { SubTotal }
end;

procedure TFrmPED_ROM_ADM.ConsultaAfterScroll(DataSet: TDataSet);
begin
  { OS }
  if ConsultaDTOS.AsDateTime > 0 then
  DBGConsulta.Bands[08].Visible := True;

  { Expedição }
  if ConsultaDTSP.AsDateTime > 0 then
  DBGConsulta.Bands[09].Visible := True;

  if RECUsuarios.Grupo <> 'VEN'  then
  if ConsultaDTSP.AsDateTime > 0 then
  begin
    DBGConsultaDTSP.Visible := True;
    DBGConsultaHTSP.Visible := True;
  end;

  { Liquidados }
  if ConsultaVTLQ.AsFloat > 0 then
  DBGConsultaVTLQ.Visible := True;

  { Em Aberto }
  if ConsultaVTAP.AsFloat > 0 then
  DBGConsultaVTAP.Visible := True;

  { Bloqueados }
  if ConsultaVTBQ.AsFloat > 0 then
  DBGConsultaVTBQ.Visible := True;

  { Devoluções }
  if ConsultaVTDV.AsFloat > 0 then
  DBGConsultaVTDV.Visible := True;

  { Abatimentos }
  if ConsultaVTAB.AsFloat > 0 then
  DBGConsultaVTAB.Visible := True;

  { Descontos }
  if RECUsuarios.Grupo <> 'VEN' then
  if ConsultaVDSC.AsFloat > 0   then
  DBGConsulta.Bands[11].Visible := True;

  { Outros }
  { Sem Cobrança }
  if (ConsultaVTSC.AsFloat > 0) or (ConsultaVTFP.AsFloat > 0) then
  DBGConsulta.Bands[12].Visible := True;

  if ConsultaVTSC.AsFloat > 0 then
  DBGConsultaVTSC.Visible := True;

  { Cancelados }
  if ConsultaVTFP.AsFloat > 0 then
  DBGConsultaVTFP.Visible := True;
end;

procedure TFrmPED_ROM_ADM.ConsultaCalcFields(DataSet: TDataSet);
begin
  ConsultaC_ID.Value := Consulta.RecNo;
end;

procedure TFrmPED_ROM_ADM.DTSConsultaDataChange(Sender: TObject;
  Field: TField);
var
  APosCount,
  APosHeight: Word;
begin
  if Consulta.State <> dsInactive then
  if Consulta.RecNo  > 0 then
  begin
    { PANELS }
    { Informações Adicionais }
    APosCount := oPosCount(''#$D'',ConsultaINFADPED.AsString);

    { VER TAM TELA }
    { Altura }
    APosHeight :=

    IFThen((APosCount = 00) and (ConsultaINFADPED.AsString =  EmptyStr),30,
    IFThen((APosCount = 00) and (ConsultaINFADPED.AsString <> EmptyStr),30,
    IFThen((APosCount = 01),70,
    IFThen((APosCount = 02),85,
    IFThen((APosCount = 03),100,115)))));

    { DOCK MANAGER }
    if APosHeight <> DPPrincipal1INFADCAD.Tag then
    begin
      _SetDockControl(DPPrincipal1INFADCAD,APosHeight,lVertical); { Informações Adicionais }

      if (DPPrincipal1RodapeLEB.Height <> 75) and (PED_PDV_ITEC_INFADPRC.AsString <> EmptyStr) then
          _SetDockControl(DPPrincipal1RodapeLEB,75,lVertical,True);
    end;

    { FIT }
    { Pedidos }
    DBGConsulta.ApplyBestFit(DBGConsultaDEPK); { Número   }
    DBGConsulta.ApplyBestFit(DBGConsultaDECV); { Vendedor }
    DBGConsulta.ApplyBestFit(DBGConsultaSTFI); { Situação }

    { Tipos }
    DBGConsulta.ApplyBestFit(DBGConsultaSTPD); { Tipo }
    if DBGConsultaSTPD.Width  > 80 then
       DBGConsultaSTPD.Width := 80;

    { Clientes }
    DBGConsulta.ApplyBestFit(DBGConsultaGPCD);
    DBGConsulta.ApplyBestFit(DBGConsultaDECD);
    if DBGConsultaDECD.Width  > 200 then
       DBGConsultaDECD.Width := 200;

    { Representantes }
    DBGConsulta.ApplyBestFit(DBGConsultaABCR);
    if DBGConsultaABCR.Width  > 130 then
       DBGConsultaABCR.Width := 130;

    { Cobrança }
    DBGConsulta.ApplyBestFit(DBGConsultaDECO);
    if DBGConsultaDECO.Width  > 155 then
       DBGConsultaDECO.Width := 155;

    { Totais }
    DBGConsulta.ApplyBestFit(DBGConsultaTCDE); DBGConsultaTCDE.Width := DBGConsultaTCDE.Width + 12; { Produtos   }
    DBGConsulta.ApplyBestFit(DBGConsultaVTSP); DBGConsultaVTSP.Width := DBGConsultaVTSP.Width + 12; { Separados  }
    DBGConsulta.ApplyBestFit(DBGConsultaVTLQ); DBGConsultaVTLQ.Width := DBGConsultaVTLQ.Width + 12; { Liquidados }

    { Descontos }
    DBGConsulta.ApplyBestFit(DBGConsultaVDSC); DBGConsultaVDSC.Width := DBGConsultaVDSC.Width + 5;
    DBGConsulta.ApplyBestFit(DBGConsultaPDSC); DBGConsultaPDSC.Width := DBGConsultaPDSC.Width + 10;

    { VIEWS }
    { Nota Fiscal }
    if ConsultaCDNF.AsInteger > 0 then
    DBGConsultaDTNF.Visible := True;

    { Saídas }
    if (ConsultaCDRO.AsInteger  > 0) or (ConsultaDTSA.AsDateTime > 0) then
    DBGConsulta.Bands[02].Visible := True;

    if ConsultaCDRO.AsInteger > 0 then
    DBGConsultaCDRO.Visible := True; { Romaneio }

    if ConsultaDTSA.AsDateTime > 0 then
    DBGConsultaDTSA.Visible := True; { Saídas }

    { Tipos Pedidos }
    if ConsultaSTPD.AsString <> RECParametros.PED_STPD then
    DBGConsultaSTPD.Visible := True;

    { Clientes }
    if ConsultaGPCD.AsString <> EmptyStr then
    DBGConsultaGPCD.Visible := True; { Grupo }

    { Vendedores }
    DBGConsulta.Bands[05].Visible := (ConsultaIDCR.AsInteger <> RECParametros.ID) and (ConsultaIDCR.AsInteger <> RECUsuarios.ID); { Representantes }
    DBGConsulta.Bands[06].Visible := (ConsultaIDCV.AsInteger <> RECParametros.ID) and (ConsultaIDCV.AsInteger <> RECUsuarios.ID); { Vendedores }

    { Descontos }
    if ConsultaVDSC.AsFloat > 0 then
    DBGConsulta.Bands[09].Visible := True; { Descontos }

    { Expedição }
    if ConsultaDTSP.AsDateTime > 0 then
    begin
      DBGConsultaDTSP.Visible := True;
      DBGConsultaHTSP.Visible := True;
    end;
  end;
end;

procedure TFrmPED_ROM_ADM.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  DBGConsulta.PreviewFont.Color := clGrayText;
  DBGConsulta.PreviewFont.Name  := 'Segoe UI';
  DBGConsulta.PreviewFont.Size  := 9;

  if not ASelected then
  begin
    { Bloquados }
    if (ANode.Values[DBGConsultaBQST.Index] = 1) then
        AFont.Color := $00002EE6 else

    { Produtos }
    if (AColumn = DBGConsultaTCDE) or (AColumn = DBGConsultaQTRL) then
    begin
      AColor := $00FAFAFA;

      if ANode.Values[DBGConsultaTCDE.Index] > 0 then
         AFont.Color := clWindowText else

      if ANode.Values[DBGConsultaTCDE.Index] = 0 then
         AFont.Color := clGrayText else

      if ANode.Values[DBGConsultaTCDE.Index] < 0 then
         AFont.Color := $000024B3;
    end;

    { Expedição }
    if (AColumn = DBGConsultaDTSP) or (AColumn = DBGConsultaHTSP) then
    if (ANode.Values[DBGConsultaDTSP.Index] <> Null) then
    begin
      AColor      := clWindowText;
      AFont.Color := clHighLightText;
    end;

    if (AColumn = DBGConsultaVTSP) or (AColumn = DBGConsultaRLSP) or (AColumn = DBGConsultaPPSP) then
    if (ANode.Values[DBGConsultaVTSP.Index] > 0) then
    begin
      AColor      := clWindowText;
      AFont.Color := clHighLightText;
    end else
    begin
      AColor      := clWindowText;
      AFont.Color := $00B2B2B2; // clGrayText
    end;

    { Ticket }
    if (AColumn = DBGConsultaPPSP) then
    if (ANode.Values[DBGConsultaPPSP.Index] > 0) and (ANode.Values[DBGConsultaPPSP.Index] < 95) then
    begin
      AColor      := clWindowText;
      AFont.Color := $0080FFFF; //$00002FEC $000031F4 $00C4FFC4 $00D9FFFF;
    end;

    { Faturados }
    if AColumn = DBGConsultaVTLQ then
    begin
      AColor := $00FAFEE9;

      if ANode.Values[DBGConsultaVTLQ.Index] > 0 then
         AFont.Color := clWindowText else

      if ANode.Values[DBGConsultaVTLQ.Index] = 0 then
         AFont.Color := clGrayText else

      if ANode.Values[DBGConsultaVTLQ.Index] < 0 then
         AFont.Color := $000024B3;
    end;

    { Abertos }
    if AColumn = DBGConsultaVTAP then
    begin
      AColor := clInfoBk; //$00FCFEF1; //$00FFFFD2; //$00FFFFE1;

      if ANode.Values[DBGConsultaVTAP.Index] > 0 then
         AFont.Color := clWindowText else

      if ANode.Values[DBGConsultaVTAP.Index] = 0 then
         AFont.Color := clGrayText else

      if ANode.Values[DBGConsultaVTAP.Index] < 0 then
         AFont.Color := $000024B3;
    end;

    { Bloqueados }
    if (AColumn = DBGConsultaVTBQ) then
    if (ANode.Values[DBGConsultaVTBQ.Index] = 0) then
    begin
      AColor      := clHighLightText;
      AFont.Color := clGrayText; //$00B2B2B2;
    end else
    begin
      AColor      := clHighLightText;
      AFont.Color := $00002EE6;
    end;

    { Devoluções }
    if (AColumn = DBGConsultaVTDV) then
    if (ANode.Values[DBGConsultaVTDV.Index] = 0) then
    begin
      AColor      := $00C8F0F0;
      AFont.Color := clGrayText;
    end else
    begin
      AColor      := $00C8F0F0;
      AFont.Color := clWindowText;
    end;

    { Abatimentos }
    if (AColumn = DBGConsultaVTAB) then
    if (ANode.Values[DBGConsultaVTAB.Index] = 0) then
    begin
      AColor      := $00C8F0F0;
      AFont.Color := clGrayText;
    end else
    begin
      AColor      := $00C8F0F0;
      AFont.Color := clWindowText;
    end;

    { Descontos }
    if (AColumn = DBGConsultaVDSC) or (AColumn = DBGConsultaPDSC) then
    begin
      AColor := clHighLightText;

      if ANode.Values[DBGConsultaVDSC.Index] > 0 then
         AFont.Color := $0080FFFF else //$00E8FFFF; //$0080FFFF;
         AFont.Color := clGrayText;
    end;

    { Sem Cobrança }
    if (AColumn = DBGConsultaVTSC) then
    begin
      AColor := $00E9E9E9;

      if ANode.Values[DBGConsultaVTSC.Index] > 0 then
         AFont.Color := clWindowText else
         AFont.Color := clGrayText;
    end;

    { Cancelados }
    if (AColumn = DBGConsultaVTFP) then
    begin
      AColor := $00E9E9E9;

      if ANode.Values[DBGConsultaVTFP.Index] > 0 then
         AFont.Color := clWindowText else
         AFont.Color := clGrayText;
    end;

    { Pedido }
    if (AColumn = DBGConsultaDEPK) or (AColumn = DBGConsultaDTPK) or (AColumn = DBGConsultaHTPK) then
        AColor := $00FAFAFA;
  end;

  if ANode.Selected then
  begin
    { Cancelados }
    if ANode.Values[DBGConsultaFPST.Index] = 1 then
    begin
      AColor      := $000024B3;
      AFont.Color := clHighlightText;
    end else

    { Bloqueados }
    if ANode.Values[DBGConsultaBQST.Index] = 1 then
    begin
      AColor      := $00002EE6;
      AFont.Color := clHighlightText;

      if AColumn = DBGConsultaSTFI then
      begin
        AColor      := clHighlightText;
        AFont.Color := $00002EE6;
        AFont.Style := [fsBold];
      end;  
    end else

    { Devoluções }
    if ANode.Values[DBGConsultaDVPD.Index] = 1 then
    begin
      AColor      := $00C8F0F0;
      AFont.Color := clWindowText;
    end else

    { Abatimentos }
    if ANode.Values[DBGConsultaABPD.Index] = 1 then
    begin
      AColor      := $00C8F0F0;
      AFont.Color := clWindowText;
    end else

    { Sem Cobrança }
    if (ANode.Values[DBGConsultaFAPD.Index] = 0) and
       (ANode.Values[DBGConsultaLQPD.Index] = 0) then
    begin
      AColor      := clBtnFace;
      AFont.Color := clGray;
    end else

    { Faturados }
    if ANode.Values[DBGConsultaLQST.Index] = 1 then
    begin
      AColor      := $00F7FEE1;
      AFont.Color := clGray;
    end else

    { Separados }
    if ANode.Values[DBGConsultaCDSP.Index] > 0 then
    begin
      AColor      := clWindowText;
      AFont.Color := clHighlightText;
    end else
    begin
      AColor      := $00750000;//$00400000;
      AFont.Color := clHighlightText;
    end;
  end;

  if ASelected then
  begin
    AColor      := clHighlight; //$00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;

procedure TFrmPED_ROM_ADM.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
       VK_insert: ACTEAppend.Execute;
       vk_return: ACTEEdit.Execute;
       VK_delete: ACTEDelete.Execute;
       VK_escape: ACTECancel.Execute;
  end;
end;

procedure TFrmPED_ROM_ADM.PED_PDV_ITEAfterOpen(DataSet: TDataSet);
begin
  if Consulta.State    <> dsInactive then
  if PED_PDV_ITE.State <> dsInactive then
  if PED_PDV_ITE.RecNo  > 0 then
  begin
    { Catálogo }
    if CAD_PRO_IMG.State = dsInactive then
    begin
      CAD_PRO_IMG.Prepare;
      CAD_PRO_IMG.Open;
    end;
  end;
end;

procedure TFrmPED_ROM_ADM.PED_PDV_ITEBeforeClose(DataSet: TDataSet);
begin
  CAD_PRO_IMG.Close; { Catálogos }
end;

procedure TFrmPED_ROM_ADM.PED_PDV_ITEAfterScroll(DataSet: TDataSet);
begin
  { DOCK MANAGER }
  if (DPPrincipal1RodapeLEB.Tag <> 75) and (PED_PDV_ITEC_INFADPRC.AsString <> EmptyStr) then
  _SetDockControl(DPPrincipal1RodapeLEB,75,lVertical,True);

  if Consulta.State    <> dsInactive then
  if PED_PDV_ITE.State <> dsInactive then
  if PED_PDV_ITE.RecNo  > 0 then
  begin
    { Descontos }
    if PED_PDV_ITEVDSC.AsFloat > 0 then
    DBGPED_PDV_ITE.Bands[03].Visible := True;

    { Separação }
    if PED_PDV_ITEVTSP.AsFloat > 0 then
    begin
      DBGPED_PDV_ITE.Bands[04].Visible := True; { OS }
      DBGPED_PDV_ITE.Bands[05].Visible := True; { Expedição }
    end;

    { Revendedor }
    if PED_PDV_ITECP_SGEP.AsString <> RECParametros.SGEP then
    DBGPED_PDV_ITECP_SGEP.Visible := True;

    { Grade }
    if PED_PDV_ITEDGCP.AsString <> EmptyStr then
    DBGPED_PDV_ITEDGCP.Visible := True;

    { Sub Total }
    if PED_PDV_ITETSDE.AsFloat <> PED_PDV_ITETCDE.AsFloat then
    DBGPED_PDV_ITETSDE.Visible := True;
  end;
end;

procedure TFrmPED_ROM_ADM.PED_PDV_ITECalcFields(DataSet: TDataSet);
begin
  PED_PDV_ITEC_QTDE.Value := FormatFloat(',##,0.00',PED_PDV_ITEQTDE.AsFloat) + ' ' + LeftStr(PED_PDV_ITEUCOM.AsString,2); { Pedido }
  PED_PDV_ITEC_QTSP.Value := FormatFloat(',##,0.00',PED_PDV_ITEQTSP.AsFloat) + ' ' + LeftStr(PED_PDV_ITEUCOM.AsString,2); { Expedição }

  if PED_PDV_ITEINFADPRC.AsString <> EmptyStr then
  PED_PDV_ITEC_INFADPRC.Value := PED_PDV_ITEINFADPRC.AsString + #13 +
                                 PED_PDV_ITERCOM.AsString + ' - ' + FormatFloat(',##,0.00 %',PED_PDV_ITEPCOM.AsFloat);
end;

procedure TFrmPED_ROM_ADM.DTSPED_PDV_ITEDataChange(Sender: TObject;
  Field: TField);
begin
  if Consulta.State    <> dsInactive then
  if PED_PDV_ITE.State <> dsInactive then
  if PED_PDV_ITE.RecNo  > 0 then
  begin
    { Tabela de Preços }
    if PED_PDV_ITEVPRC_COM.AsFloat < PED_PDV_ITEVPRC_PAD_INI.AsFloat then
    begin
      DBPrincipal1RodapeLEB.Color      := $00002EE6;
      DBPrincipal1RodapeLEB.Font.Color := clHighLightText;
    end else

    if PED_PDV_ITEVPRC_COM.AsFloat > PED_PDV_ITEVPRC_PAD_INI.AsFloat then
    begin
      DBPrincipal1RodapeLEB.Color      := $00F7FEE1;
      DBPrincipal1RodapeLEB.Font.Color := $00437C00;
    end else

    if PED_PDV_ITEVPRC_COM.AsFloat = PED_PDV_ITEVPRC_PAD_INI.AsFloat then
    begin
      DBPrincipal1RodapeLEB.Color      := clHighLightText;
      DBPrincipal1RodapeLEB.Font.Color := clWindowText;
    end;

    {FIT }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITESKU ); {SKU }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITELGSP); {Separador }

    { Grade }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEDGCP);
    if DBGPED_PDV_ITEDGCP.Width  > 150 then
       DBGPED_PDV_ITEDGCP.Width := 150;

    { Descrição }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEDECP);
    if DBGPED_PDV_ITEDECP.Width  > 250 then
       DBGPED_PDV_ITEDECP.Width := 250;

    { Totais }
    { Produtos }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITETCDE); DBGPED_PDV_ITETCDE.Width := DBGPED_PDV_ITETCDE.Width + 12; { Total R$ }

    { Pedido }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEVPRC_COM); DBGPED_PDV_ITEVPRC_COM.Width := DBGPED_PDV_ITEVPRC_COM.Width + 05; { Preços }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITETSDE); DBGPED_PDV_ITETSDE.Width := DBGPED_PDV_ITETSDE.Width + 12; { Sub Total R$ }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITETCDE); DBGPED_PDV_ITETCDE.Width := DBGPED_PDV_ITETCDE.Width + 12; { Total R$ }

    { Descontos }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEVDSC); DBGPED_PDV_ITEVDSC.Width := DBGPED_PDV_ITEVDSC.Width + 12; { Total R$ }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEPDSC); DBGPED_PDV_ITEPDSC.Width := DBGPED_PDV_ITEPDSC.Width + 12; { % }

    { Expedição }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEVTSP); DBGPED_PDV_ITEVTSP.Width := DBGPED_PDV_ITEVTSP.Width + 12; { Total R$ }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEPPSP); { Performance }

    { Comissões }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEVCOM); DBGPED_PDV_ITEVCOM.Width := DBGPED_PDV_ITEVCOM.Width + 12; { Total R$ }

    { Impostos }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEVICMS); DBGPED_PDV_ITEVICMS.Width := DBGPED_PDV_ITEVICMS.Width + 12; { Total ICMS R$ }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEVIPI ); DBGPED_PDV_ITEVIPI.Width  := DBGPED_PDV_ITEVIPI.Width  + 12; { Total IPI  R$ }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEVST  ); DBGPED_PDV_ITEVST.Width   := DBGPED_PDV_ITEVST.Width   + 12; { Total ST   R$ }

    { Frete }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEVFRT); DBGPED_PDV_ITEVFRT.Width := DBGPED_PDV_ITEVFRT.Width + 12; { Total R$     }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEPSBR); DBGPED_PDV_ITEPSBR.Width := DBGPED_PDV_ITEPSBR.Width + 12; { Peso Bruto   }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEPSLQ); DBGPED_PDV_ITEPSLQ.Width := DBGPED_PDV_ITEPSLQ.Width + 12; { Peso Líquido }
  end;  
end;

procedure TFrmPED_ROM_ADM.DTSCAD_PRO_IMGDataChange(Sender: TObject;
  Field: TField);
begin
  if Consulta.State    <> dsInactive then
  if PED_PDV_ITE.State <> dsInactive then
  if PED_PDV_ITE.RecNo  > 0 then
  begin
    PNLCAD_PRO_IMG_PIX.Caption := _oLoadJPG(CAD_PRO_IMGIMG_ID,CAD_PRO_IMGIMG_PAD,IMGCAD_PRO_IMG_PAD,True); { True - força visualização }

    DBCAD_PRO_IMG_ILA1.Hint := CAD_PRO_IMGD_ILA_INS1.AsString;
    DBCAD_PRO_IMG_ILA2.Hint := CAD_PRO_IMGD_ILA_INS2.AsString;
    DBCAD_PRO_IMG_ILA3.Hint := CAD_PRO_IMGD_ILA_INS3.AsString;
    DBCAD_PRO_IMG_ILA4.Hint := CAD_PRO_IMGD_ILA_INS4.AsString;
    DBCAD_PRO_IMG_ILA5.Hint := CAD_PRO_IMGD_ILA_INS5.AsString;
    DBCAD_PRO_IMG_ILA6.Hint := CAD_PRO_IMGD_ILA_INS6.AsString;
    DBCAD_PRO_IMG_ILA7.Hint := CAD_PRO_IMGD_ILA_INS7.AsString;
    DBCAD_PRO_IMG_ILA8.Hint := CAD_PRO_IMGD_ILA_INS8.AsString;

    BVCAD_PRO_IMG_ILA1.Hint := DBCAD_PRO_IMG_ILA1.Hint;
    BVCAD_PRO_IMG_ILA2.Hint := DBCAD_PRO_IMG_ILA2.Hint;
    BVCAD_PRO_IMG_ILA3.Hint := DBCAD_PRO_IMG_ILA3.Hint;
    BVCAD_PRO_IMG_ILA4.Hint := DBCAD_PRO_IMG_ILA4.Hint;
    BVCAD_PRO_IMG_ILA5.Hint := DBCAD_PRO_IMG_ILA5.Hint;
    BVCAD_PRO_IMG_ILA6.Hint := DBCAD_PRO_IMG_ILA6.Hint;
    BVCAD_PRO_IMG_ILA7.Hint := DBCAD_PRO_IMG_ILA7.Hint;
    BVCAD_PRO_IMG_ILA8.Hint := DBCAD_PRO_IMG_ILA8.Hint;
  end;
end;

end.
