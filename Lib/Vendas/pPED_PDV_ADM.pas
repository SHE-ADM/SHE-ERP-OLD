unit pPED_PDV_ADM;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, StrUtils, Math, dxExEdtr, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxEdLib, dxDBELib, dxEditor, ExtCtrls, ActnList, ImgList,
  dxBar, dxBarExtItems, dxDockControl, dxPageControl, dxDockPanel,
  cxGraphics, cxControls, dxStatusBar, IBEvents, IBStoredProc, DB,
  IBCustomDataSet, IBQuery, IBSQL, IBDatabase, rxSpeedbar,
  IDGlobal, DSiWin32, dxsbar, ComCtrls, DBCtrls, dxDBTLCl, dxGrClms, Menus;

type
  TFrmPED_PDV_ADM = class(TForm)
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
    DPPrincipal1RodapeLE2: TdxDockPanel;
    DPPrincipal1RodapeLEB: TdxDockPanel;
    TCDSPrincipal1RodapeLE: TdxTabContainerDockSite;
    VCDSPrincipal1RodapeLE: TdxVertContainerDockSite;
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
    DPPrincipal1Rodape2: TdxDockPanel;
    TCDSPrincipal1Rodape: TdxTabContainerDockSite;
    PNLDBGConsulta: TPanel;
    DBPrincipal1RodapeLEB: TdxDBMemo;
    DPPrincipal1Rodape3: TdxDockPanel;
    ILDockingManager: TImageList;
    Consulta: TIBQuery;
    DTSConsulta: TDataSource;
    PED_PDV_ITE: TIBQuery;
    PED_PDV_ITEID: TLargeintField;
    PED_PDV_ITECP_IDEP: TSmallintField;
    PED_PDV_ITECP_SGEP: TIBStringField;
    PED_PDV_ITEIDPK: TLargeintField;
    PED_PDV_ITEIDFK: TLargeintField;
    PED_PDV_ITEITEM: TIntegerField;
    PED_PDV_ITEIDCP: TIntegerField;
    PED_PDV_ITEARTIGO: TIBStringField;
    PED_PDV_ITESKU: TIBStringField;
    PED_PDV_ITECEAN: TIBStringField;
    PED_PDV_ITEDGCP: TIBStringField;
    PED_PDV_ITEDECP: TIBStringField;
    PED_PDV_ITEUCOM: TIBStringField;
    PED_PDV_ITEUCON: TIBStringField;
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
    PED_PDV_ITELGSP: TIBStringField;
    PED_PDV_ITERLSP: TIntegerField;
    PED_PDV_ITEVTSP: TIBBCDField;
    PED_PDV_ITEPPSP: TIBBCDField;
    PED_PDV_ITEC_QTDE: TStringField;
    PED_PDV_ITEC_QTSP: TStringField;
    PED_PDV_ITEC_INFADPRC: TStringField;
    DTSPED_PDV_ITE: TDataSource;
    PED_PDV_SEP: TIBQuery;
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
    DBGConsultaFIS_DSSA: TdxDBGridDateColumn;
    DBGConsultaDECD: TdxDBGridMaskColumn;
    DBGConsultaGPCD: TdxDBGridColumn;
    DBGConsultaCD_UF: TdxDBGridMaskColumn;
    DBGConsultaABCR: TdxDBGridMaskColumn;
    DBGConsultaDECV: TdxDBGridMaskColumn;
    DBGConsultaSTPD: TdxDBGridMaskColumn;
    DBGConsultaDVPD: TdxDBGridMaskColumn;
    DBGConsultaABPD: TdxDBGridMaskColumn;
    DBGConsultaFAPD: TdxDBGridMaskColumn;
    DBGConsultaLQPD: TdxDBGridMaskColumn;
    DBGConsultaD_STCO: TdxDBGridColumn;
    DBGConsultaSTFI: TdxDBGridColumn;
    DBGConsultaAPST: TdxDBGridMaskColumn;
    DBGConsultaFPST: TdxDBGridMaskColumn;
    DBGConsultaFAST: TdxDBGridMaskColumn;
    DBGConsultaLQST: TdxDBGridMaskColumn;
    DBGConsultaBQST: TdxDBGridMaskColumn;
    DBGConsultaRLPK: TdxDBGridMaskColumn;
    DBGConsultaTCDE: TdxDBGridMaskColumn;
    DBGConsultaLV_TCDE: TdxDBGridMaskColumn;
    DBGConsultaLV_RLPK: TdxDBGridMaskColumn;
    DBGConsultaVDSC: TdxDBGridMaskColumn;
    DBGConsultaPDSC: TdxDBGridMaskColumn;
    DBGConsultaDSOS: TdxDBGridColumn;
    DBGConsultaDTSP: TdxDBGridColumn;
    DBGConsultaHTSP: TdxDBGridColumn;
    DBGConsultaRLSP: TdxDBGridMaskColumn;
    DBGConsultaPPSP: TdxDBGridMaskColumn;
    DBGConsultaLV_VTSP: TdxDBGridMaskColumn;
    DBGConsultaLV_RLSP: TdxDBGridMaskColumn;
    DBGConsultaLV_PPSP: TdxDBGridMaskColumn;
    DBGConsultaVTSP: TdxDBGridMaskColumn;
    DBGConsultaVTLQ: TdxDBGridMaskColumn;
    DBGConsultaVTAP: TdxDBGridMaskColumn;
    DBGConsultaLV_VTAP: TdxDBGridMaskColumn;
    DBGConsultaVTBQ: TdxDBGridMaskColumn;
    DBGConsultaVTDV: TdxDBGridMaskColumn;
    DBGConsultaVTAB: TdxDBGridMaskColumn;
    DBGConsultaVTBX: TdxDBGridMaskColumn;
    DBGConsultaVTFP: TdxDBGridMaskColumn;
    PNLDBGPED_PDV_ITE: TPanel;
    PNLDBGPED_PDV_SEP: TPanel;
    PNLDBGPED_PDV_ROM: TPanel;
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
    DBGPED_PDV_ITEVPRC_COM: TdxDBGridMaskColumn;
    DBGPED_PDV_ITETSDE: TdxDBGridMaskColumn;
    DBGPED_PDV_ITETCDE: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEVDSC: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEPDSC: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEC_QTSP: TdxDBGridMaskColumn;
    DBGPED_PDV_ITERLSP: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEPPSP: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEVTSP: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEDSSP: TdxDBGridColumn;
    DBGPED_PDV_ITELGSP: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEFRT_VFRT: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEFRT_PSBR: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEFRT_PSLQ: TdxDBGridMaskColumn;
    DBGPED_PDV_ITERCOM: TdxDBGridColumn;
    DBGPED_PDV_ITEVCOM: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEPCOM: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEFIS_VICMS: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEFIS_PICMS: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEFIS_VIPI: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEFIS_PIPI: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEFIS_VST: TdxDBGridMaskColumn;
    DBGPED_PDV_ITEFIS_PST: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_SEP: TdxDBGrid;
    DBGCAD_PRO_EST_SEPITEM: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_SEPEST_CDET: TdxDBGridColumn;
    DBGCAD_PRO_EST_SEPCP_SGEP: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_SEPSKU: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_SEPDGCP: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_SEPDECP: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_SEPC_QTDE: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_SEPQTRL: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_SEPVPRC_COM: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_SEPTCDE: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_SEPDSSP: TdxDBGridDateColumn;
    DBGCAD_PRO_EST_SEPLGSP: TdxDBGridMaskColumn;
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
    BBPSQ_DTSP: TdxBarButton;
    BBPSQ_DTNF: TdxBarButton;
    BBPSQ_DTBX: TdxBarButton;
    BBPSQ_PER: TdxBarButton;
    DBGConsultaC_ID: TdxDBGridColumn;
    ConsultaC_ID: TLargeintField;
    PED_PDV_ITEIDEP: TSmallintField;
    PED_PDV_ITEDSSP: TDateTimeField;
    PED_PDV_ITEDCCP: TIBStringField;
    PED_PDV_ITEQTDE: TIBBCDField;
    PED_PDV_ITEQTSP: TIBBCDField;
    PED_PDV_SEPID: TLargeintField;
    PED_PDV_SEPITEM: TIntegerField;
    PED_PDV_SEPCP_SGEP: TIBStringField;
    PED_PDV_SEPIDCP: TIntegerField;
    PED_PDV_SEPARTIGO: TIBStringField;
    PED_PDV_SEPSKU: TIBStringField;
    PED_PDV_SEPDECP: TIBStringField;
    PED_PDV_SEPDGCP: TIBStringField;
    PED_PDV_SEPUCOM: TIBStringField;
    PED_PDV_SEPQTDE: TIBBCDField;
    PED_PDV_SEPQTRL: TIntegerField;
    PED_PDV_SEPVPRC_COM: TFloatField;
    PED_PDV_SEPTCDE: TIBBCDField;
    ROM_PDV_ITE: TIBQuery;
    DTSROM_PDV_ITE: TDataSource;
    ROM_PDV_ITEID: TLargeintField;
    ROM_PDV_ITEITEM: TIntegerField;
    ROM_PDV_ITECP_SGEP: TIBStringField;
    ROM_PDV_ITELGSP: TIBStringField;
    ROM_PDV_ITEDSSP: TDateTimeField;
    ROM_PDV_ITECDET: TLargeintField;
    ROM_PDV_ITECTNR: TIBStringField;
    ROM_PDV_ITELOTE: TIBStringField;
    ROM_PDV_ITEDEDF: TIBStringField;
    ROM_PDV_ITELGDF: TIBStringField;
    ROM_PDV_ITEDSDF: TDateTimeField;
    ROM_PDV_ITEIDCP: TIntegerField;
    ROM_PDV_ITEARTIGO: TIBStringField;
    ROM_PDV_ITESKU: TIBStringField;
    ROM_PDV_ITEDECP: TIBStringField;
    ROM_PDV_ITEDGCP: TIBStringField;
    ROM_PDV_ITEUCOM: TIBStringField;
    ROM_PDV_ITEQTDE: TIBBCDField;
    ROM_PDV_ITEQTRL: TIntegerField;
    ROM_PDV_ITEVPRC_COM: TFloatField;
    ROM_PDV_ITETCDE: TIBBCDField;
    PED_PDV_SEPC_ID: TLargeintField;
    PED_PDV_ITEC_ID: TLargeintField;
    DBGCAD_PRO_EST_SEPC_ID: TdxDBGridColumn;
    DBGPED_PDV_ITEC_ID: TdxDBGridColumn;
    DBGPED_PDV_ITEQTSP: TdxDBGridColumn;
    PED_PDV_ITEINFADPRC: TIBStringField;
    DBGConsultaDSBX: TdxDBGridColumn;
    DBGConsultaRECO: TdxDBGridMaskColumn;
    DBGConsultaLV_VTDV: TdxDBGridColumn;
    DBGConsultaLV_VTAB: TdxDBGridColumn;
    DBGConsultaIDCD: TdxDBGridMaskColumn;
    DBGConsultaIDCV: TdxDBGridMaskColumn;
    DBGConsultaIDCR: TdxDBGridMaskColumn;
    ACTCAD_CLI_INF: TAction;
    BLBCAD_CLI_INF: TdxBarLargeButton;
    DBGConsultaCDBX: TdxDBGridColumn;
    DBGConsultaDTNF: TdxDBGridColumn;
    DBGConsultaHTNF: TdxDBGridColumn;
    DBGConsultaCV_VCOM: TdxDBGridMaskColumn;
    DBGConsultaCV_PCOM: TdxDBGridMaskColumn;
    DBGConsultaCR_VCOM: TdxDBGridMaskColumn;
    DBGConsultaCR_PCOM: TdxDBGridMaskColumn;
    DBGConsultaDECT: TdxDBGridMaskColumn;
    DBGConsultaCT_MOTORISTA: TdxDBGridMaskColumn;
    DBGConsultaCT_AJUDANTE: TdxDBGridMaskColumn;
    DBGConsultaCT_PLACA: TdxDBGridMaskColumn;
    DBGConsultaFRT_DFRT: TdxDBGridMaskColumn;
    DBGConsultaFRT_VFRT: TdxDBGridMaskColumn;
    DBGConsultaFRT_PSBR: TdxDBGridMaskColumn;
    DBGConsultaFRT_PSLQ: TdxDBGridMaskColumn;
    ConsultaID: TLargeintField;
    ConsultaIDEP: TSmallintField;
    ConsultaDTEV: TDateTimeField;
    ConsultaDTCA: TDateTimeField;
    ConsultaSTFI: TIBStringField;
    ConsultaAPST: TSmallintField;
    ConsultaFPST: TSmallintField;
    ConsultaFAST: TSmallintField;
    ConsultaLQST: TSmallintField;
    ConsultaBQST: TSmallintField;
    ConsultaIDPK: TLargeintField;
    ConsultaDEPK: TIBStringField;
    ConsultaDTPK: TDateField;
    ConsultaHTPK: TTimeField;
    ConsultaCDCX: TLargeintField;
    ConsultaCDOS: TLargeintField;
    ConsultaDSOS: TDateTimeField;
    ConsultaCDSP: TLargeintField;
    ConsultaLGSP: TIBStringField;
    ConsultaDTSP: TDateField;
    ConsultaHTSP: TTimeField;
    ConsultaCDRO: TLargeintField;
    ConsultaDSRO: TDateTimeField;
    ConsultaCDNF: TLargeintField;
    ConsultaDTNF: TDateField;
    ConsultaHTNF: TTimeField;
    ConsultaFIS_DSSA: TDateTimeField;
    ConsultaCDBX: TLargeintField;
    ConsultaDSBX: TDateTimeField;
    ConsultaIDCD: TIntegerField;
    ConsultaDECD: TIBStringField;
    ConsultaCD_CNPJ: TIBStringField;
    ConsultaCD_UF: TIBStringField;
    ConsultaCD_CDST: TSmallintField;
    ConsultaIDCV: TSmallintField;
    ConsultaDECV: TIBStringField;
    ConsultaCV_CDST: TSmallintField;
    ConsultaCV_VCOM: TIBBCDField;
    ConsultaCV_PCOM: TIBBCDField;
    ConsultaIDCR: TSmallintField;
    ConsultaCR_CDST: TSmallintField;
    ConsultaCR_VCOM: TIBBCDField;
    ConsultaCR_PCOM: TIBBCDField;
    ConsultaIDCT: TSmallintField;
    ConsultaDECT: TIBStringField;
    ConsultaCT_CDST: TSmallintField;
    ConsultaCT_MOTORISTA: TIBStringField;
    ConsultaCT_AJUDANTE: TIBStringField;
    ConsultaCT_PLACA: TIBStringField;
    ConsultaFRT_MFRT: TSmallintField;
    ConsultaFRT_DFRT: TIBStringField;
    ConsultaFRT_VFRT: TIBBCDField;
    ConsultaFRT_PSBR: TIBBCDField;
    ConsultaFRT_PSLQ: TIBBCDField;
    ConsultaVDSC: TIBBCDField;
    ConsultaPDSC: TIBBCDField;
    ConsultaTCDE: TIBBCDField;
    ConsultaRLPK: TIntegerField;
    ConsultaLV_TCDE: TIBBCDField;
    ConsultaLV_RLPK: TIntegerField;
    ConsultaVTSP: TIBBCDField;
    ConsultaRLSP: TIntegerField;
    ConsultaPPSP: TIBBCDField;
    ConsultaLV_VTSP: TIBBCDField;
    ConsultaLV_RLSP: TIntegerField;
    ConsultaLV_PPSP: TIBBCDField;
    ConsultaVTLQ: TIBBCDField;
    ConsultaVTBQ: TIBBCDField;
    ConsultaVTAP: TIBBCDField;
    ConsultaLV_VTAP: TIBBCDField;
    ConsultaVTDV: TIBBCDField;
    ConsultaLV_VTDV: TIBBCDField;
    ConsultaVTAB: TIBBCDField;
    ConsultaLV_VTAB: TIBBCDField;
    ConsultaVTBX: TIBBCDField;
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
    ConsultaD_STCO: TIBStringField;
    ConsultaPRZ_CDPG: TSmallintField;
    ConsultaPRZ_DEPG: TIBStringField;
    ConsultaINFADCAD: TIBStringField;
    ConsultaINFADPRN: TIBStringField;
    DBGConsultaCDSP: TdxDBGridColumn;
    ConsultaGPCD: TIBStringField;
    ConsultaABCR: TIBStringField;
    PED_PDV_ITEFIS_VICMS: TIBBCDField;
    PED_PDV_ITEFIS_PICMS: TIBBCDField;
    PED_PDV_ITEFIS_VIPI: TFloatField;
    PED_PDV_ITEFIS_PIPI: TIBBCDField;
    PED_PDV_ITEFIS_VST: TIBBCDField;
    PED_PDV_ITEFIS_PST: TIBBCDField;
    PED_PDV_ITEFRT_VFRT: TIBBCDField;
    PED_PDV_ITEFRT_PSBR: TIBBCDField;
    PED_PDV_ITEFRT_PSLQ: TIBBCDField;
    PED_PDV_ITERCOM: TIBStringField;
    PED_PDV_ITECR_VCOM: TIBBCDField;
    PED_PDV_ITECR_PCOM: TIBBCDField;
    PED_PDV_ITEFIS_ORIG: TSmallintField;
    PED_PDV_ITEFIS_XORIG: TIBStringField;
    PED_PDV_SEPLGSP: TIBStringField;
    PED_PDV_SEPDSSP: TDateTimeField;
    PED_PDV_SEPEST_CDET: TLargeintField;
    PED_PDV_SEPEST_CTNR: TIBStringField;
    PED_PDV_SEPEST_LOTE: TIBStringField;
    PED_PDV_SEPEST_DEDF: TIBStringField;
    PED_PDV_SEPEST_LGDF: TIBStringField;
    PED_PDV_SEPEST_DSDF: TDateTimeField;
    PED_PDV_ITEFIS_NCM: TIBStringField;
    PED_PDV_ITEFIS_EXTIPI: TIBStringField;
    PED_PDV_ITEFIS_CEST: TIBStringField;




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
    procedure DBGPED_PDV_ITECustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure PED_PDV_SEPCalcFields(DataSet: TDataSet);
    procedure ACTCAD_CLI_INFExecute(Sender: TObject);
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
  FrmPED_PDV_ADM: TFrmPED_PDV_ADM;

  _Form: TStringList = Nil;
  _FormPesquisa: Boolean;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmPED_PDV_ADM._WM_CREATE(var Msg: TMessage);
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


  { Altura }
  _SetDockControl(DPPrincipal1RodapeLEB,DPPrincipal1RodapeLEB.Tag,lVertical); { LEB }

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


procedure TFrmPED_PDV_ADM._SW_SHOWNOACTIVATE(var Msg: TMessage);
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

procedure TFrmPED_PDV_ADM._WM_ACTIVATE(var Msg: TMessage);
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

procedure TFrmPED_PDV_ADM._WM_BEFORE_RESIZE(var Message: TMessage);
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

procedure TFrmPED_PDV_ADM._WM_AFTER_RESIZE(var Message: TMessage);
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

procedure TFrmPED_PDV_ADM._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmPED_PDV_ADM._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

Class procedure TFrmPED_PDV_ADM._ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
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

Destructor TFrmPED_PDV_ADM.Destroy;
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
end;

Constructor TFrmPED_PDV_ADM.Create(AOwner: TComponent;
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

procedure TFrmPED_PDV_ADM.FormCreate(Sender: TObject);
begin
  { ADMIN }
  DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0);
  DBGConsultaIDCD.Visible := (RECUsuarios.ID = 0);
  DBGConsultaIDCV.Visible := (RECUsuarios.ID = 0);
  DBGConsultaIDCR.Visible := (RECUsuarios.ID = 0);
  DBGConsultaDSBX.Visible := (RECUsuarios.ID = 0);
  DBGConsultaCDBX.Visible := (RECUsuarios.ID = 0);

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

procedure TFrmPED_PDV_ADM.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;

  PostMessage(Handle, SW_SHOWNOACTIVATE, 0, 0 );
end;

procedure TFrmPED_PDV_ADM.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;

  PostMessage(Handle, WM_ACTIVATE, 0, 0 );
end;

procedure TFrmPED_PDV_ADM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action  := caFree;
  OnClose := Nil;
end;

procedure TFrmPED_PDV_ADM.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmPED_PDV_ADM.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmPED_PDV_ADM.FormPaint(Sender: TObject);
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

procedure TFrmPED_PDV_ADM.FormResize(Sender: TObject);
begin
  if (not Showing) or (REC_SHE_DEF.FForceClose) then
  Exit;

  { Risize }
  PostMessage(Handle, WM_ENTERSIZEMOVE , 0, 0); { Before }
  PostMessage(Handle, WM_EXITSIZEMOVE  , 0, 0); { After }
end;

procedure TFrmPED_PDV_ADM._SetDockControl (const AValue: TdxCustomDockControl; AXYPos: Integer = 0; ADirection: TDirection = lNone; ARepeat: boolean = False; AUpdateZones: Boolean = False);
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

procedure TFrmPED_PDV_ADM.VCDSPrincipal1RodapeLEUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  i: Word;
begin
  i := 1;
  if (Showing) and (VCDSPrincipal1RodapeLE.HelpContext = 0) then
  repeat
    VCDSPrincipal1RodapeLE.HelpContext := 1;

    Sender.Width  := VCDSPrincipal1RodapeLE.Width;
    Sender.Height := VCDSPrincipal1RodapeLE.Height;
    Sender.Repaint;
  until
    i <= 1;
end;

procedure TFrmPED_PDV_ADM.TCDSPrincipal1RodapeLEUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  i: Word;
begin
  i := 1;
  if (Showing) and (TCDSPrincipal1RodapeLE.HelpContext = 0) then
  repeat
    TCDSPrincipal1RodapeLE.HelpContext := 1;

    Sender.Width  := VCDSPrincipal1RodapeLE.Width;
    Sender.Height := VCDSPrincipal1RodapeLE.Height;
    Sender.Repaint;
  until
    i <= 1;
end;

procedure TFrmPED_PDV_ADM.DPPrincipal1RodapeLEBUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  i: Word;
begin
  i := 1;
  if (Showing) and (DPPrincipal1RodapeLEB.HelpContext = 0) then
  repeat
    DPPrincipal1RodapeLEB.HelpContext := 1;

    Sender.Width  := VCDSPrincipal1RodapeLE.Width;
    Sender.Height := Sender.Tag;
    Sender.Repaint;
  until
    i <= 1;
end;

procedure TFrmPED_PDV_ADM.TCDSPrincipal1RodapeUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  I: Integer;
begin
  if (Showing) and (TCDSPrincipal1Rodape.HelpContext = 0) then
  begin
    TCDSPrincipal1Rodape.HelpContext := 1;
    I := 0;
    while I < AZones.Count do
    begin
      Sender.Width  := Sender.Width  - 1;
      Sender.Height := Sender.Height - 1;
      Sender.Repaint;

      Inc(I);
    end;

    TCDSPrincipal.Tag := 1;
  end;
end;

procedure TFrmPED_PDV_ADM.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Consulta);
end;

procedure TFrmPED_PDV_ADM.ACTMAppendExecute(Sender: TObject);
begin
  if (not ACTMAppend.Enabled) or (not ACTMAppend.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_PDV_ADM.ACTMEditExecute(Sender: TObject);
begin
  if (not ACTMEdit.Enabled) or (not ACTMEdit.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_PDV_ADM.ACTMDeleteExecute(Sender: TObject);
begin
  if (not ACTMDelete.Enabled) or (not ACTMDelete.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_PDV_ADM.ACTMPostExecute(Sender: TObject);
begin
  if (not ACTMPost.Enabled) or (not ACTMPost.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_PDV_ADM.ACTMCancelExecute(Sender: TObject);
begin
  if (not ACTMCancel.Enabled) or (not ACTMCancel.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_PDV_ADM.ACTSaidaExecute(Sender: TObject);
begin
  REC_SHE_DEF.PSQ_OK := False;
  Close;
end;

procedure TFrmPED_PDV_ADM.ACTEAppendExecute(Sender: TObject);
begin
  if (not ACTEAppend.Enabled) or (not ACTEAppend.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_PDV_ADM.ACTEEditExecute(Sender: TObject);
begin
  if (not ACTEEdit.Enabled) or (not ACTEEdit.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_PDV_ADM.ACTEDeleteExecute(Sender: TObject);
begin
  if (not ACTEDelete.Enabled) or (not ACTEDelete.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_PDV_ADM.ACTEPostExecute(Sender: TObject);
begin
  if (not ACTEPost.Enabled) or (not ACTEPost.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_PDV_ADM.ACTECancelExecute(Sender: TObject);
begin
  if (not ACTECancel.Enabled) or (not ACTECancel.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmPED_PDV_ADM.ACTPesquisaExecute(Sender: TObject);
var
  i: Integer;
begin
  { RESET TRANSACTION }
  oCTransact(TConsulta);
  oOTransact(TConsulta);

  { RESET FILTER DEFAULT }
  DBGConsulta.Filter.Clear; { Consulta }

  { DIVERSOS }
  REC_SHE_DEF.PSQ_FB_SC := False; { Sub Query }
  REC_SHE_DEF.PSQ_FB_PD := True;  { Padrão }

  { Texto Pesquisa }
  REC_SHE_DEF.PSQ_FB_FD := BLBPSQ_CAD_MENU.Description; { Campo }
  REC_SHE_DEF.PSQ_FB_VD := BEPSQ_CAD.Text;
  REC_SHE_DEF.PSQ_FB_PK := BEPSQ_CAD.Text;
  REC_SHE_DEF.PSQ_FB_FK := EmptyStr;

  { ÂNCORAS PRINCIPAIS }
  { Situações }
  REC_SHE_DEF.PSQ_FB_DEST       := EmptyStr; { Descrição }
  REC_SHE_DEF.PSQ_FB_STFI := EmptyStr; { Descrição Abreviada }

  { Empresas }
  REC_SHE_DEF.PSQ_FB_EP := EmptyStr; { Empresa }
  REC_SHE_DEF.PSQ_FB_CF := EmptyStr; { Fabricante }

  { Produtos }
  REC_SHE_DEF.PSQ_FB_CP_ARTIGO := EmptyStr; { Artigo }
  REC_SHE_DEF.PSQ_FB_CP_SKU    := EmptyStr; { SKU }
  REC_SHE_DEF.PSQ_FB_CP_NCM    := EmptyStr; { NCM }
  REC_SHE_DEF.PSQ_FB_CP_DGCP   := EmptyStr; { Grade }
  REC_SHE_DEF.PSQ_FB_CP_DECP   := EmptyStr; { Nome / Descrição }
  REC_SHE_DEF.PSQ_FB_CP_DCCP   := EmptyStr; { Composição }

  { Lista Digitada }
  if REC_SHE_DEF.PSQ_FB_SL_PK = Nil then
  REC_SHE_DEF.PSQ_FB_SL_PK := TStringList.Create else
  REC_SHE_DEF.PSQ_FB_SL_PK.Clear;

  if (REC_SHE_DEF.PSQ_FB_VD <> EmptyStr) and (REC_SHE_DEF.PSQ_FB_VD <> '0') then
  begin
    { SEARCH DEFAULT }
    REC_SHE_DEF.PSQ_FB_PD := False; { Padrão }

    { Capturar as palavras separadamente }
    While Length(REC_SHE_DEF.PSQ_FB_VD) > 0 do
    begin
      REC_SHE_DEF.PSQ_FB_FK := Trim(Fetch(REC_SHE_DEF.PSQ_FB_VD    ,' '));
      REC_SHE_DEF.PSQ_FB_FK := oStrTran(REC_SHE_DEF.PSQ_FB_FK, '+' ,' ');
      REC_SHE_DEF.PSQ_FB_SL_PK.Add(REC_SHE_DEF.PSQ_FB_FK);

      with SQLConsulta do
      begin
        { Descrição Situação }
        if (REC_SHE_DEF.PSQ_FB_DEST = EmptyStr) and (REC_SHE_DEF.PSQ_FB_FK <> EmptyStr) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT FIRST 1 FK.ID FROM TAB_STA_PED AS FK');
          SQL.Add('WHERE  FK.DESCRICAO LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.PSQ_FB_DEST := REC_SHE_DEF.PSQ_FB_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.PSQ_FB_SL_PK.Delete(REC_SHE_DEF.PSQ_FB_SL_PK.IndexOf(REC_SHE_DEF.PSQ_FB_FK)); { Array }
            REC_SHE_DEF.PSQ_FB_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;

        { Situação Abreviada }
        if (REC_SHE_DEF.PSQ_FB_DEST = EmptyStr) and (REC_SHE_DEF.PSQ_FB_STFI = EmptyStr) and (REC_SHE_DEF.PSQ_FB_FK <> EmptyStr) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT FIRST 1 FK.ID FROM TAB_STA_PED AS FK');
          SQL.Add('WHERE  FK.ABREV LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.PSQ_FB_STFI := REC_SHE_DEF.PSQ_FB_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.PSQ_FB_SL_PK.Delete(REC_SHE_DEF.PSQ_FB_SL_PK.IndexOf(REC_SHE_DEF.PSQ_FB_FK)); { Array }
            REC_SHE_DEF.PSQ_FB_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;

        { Revendedor }
        if (REC_SHE_DEF.PSQ_FB_EP = EmptyStr) and (Length(REC_SHE_DEF.PSQ_FB_FK) > 3) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT FIRST 1 FK.ID FROM TAB_PAR_SIS AS FK');
          SQL.Add('WHERE  FK.FANTASIA LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.PSQ_FB_SC := True; { Sub Query }
            REC_SHE_DEF.PSQ_FB_EP := REC_SHE_DEF.PSQ_FB_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.PSQ_FB_SL_PK.Delete(REC_SHE_DEF.PSQ_FB_SL_PK.IndexOf(REC_SHE_DEF.PSQ_FB_FK)); { Array }
            REC_SHE_DEF.PSQ_FB_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;

        { Fabricante }
        if (REC_SHE_DEF.PSQ_FB_CF = EmptyStr) and (Length(REC_SHE_DEF.PSQ_FB_FK) > 3) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT   FIRST 1 FK.ID FROM CAD_FOR AS FK');
          SQL.Add('WHERE    FK.FANTASIA LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');
          SQL.Add('ORDER BY FK.DTEV DESC');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.PSQ_FB_SC := True; { Sub Query }
            REC_SHE_DEF.PSQ_FB_CF := REC_SHE_DEF.PSQ_FB_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.PSQ_FB_SL_PK.Delete(REC_SHE_DEF.PSQ_FB_SL_PK.IndexOf(REC_SHE_DEF.PSQ_FB_FK)); { Array }
            REC_SHE_DEF.PSQ_FB_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;

        { Artigo }
        if (REC_SHE_DEF.PSQ_FB_CP_ARTIGO = EmptyStr) and (REC_SHE_DEF.PSQ_FB_FK <> EmptyStr) then
        if (Pos('.',REC_SHE_DEF.PSQ_FB_FK) > 0) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT   FIRST 1 FK.ID FROM CAD_PRO AS FK');
          SQL.Add('WHERE    FK.ARTIGO LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');
          SQL.Add('ORDER BY FK.DTEV DESC');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.PSQ_FB_SC        := True; { Sub Query }
            REC_SHE_DEF.PSQ_FB_CP_ARTIGO := REC_SHE_DEF.PSQ_FB_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.PSQ_FB_SL_PK.Delete(REC_SHE_DEF.PSQ_FB_SL_PK.IndexOf(REC_SHE_DEF.PSQ_FB_FK)); { Array }
            REC_SHE_DEF.PSQ_FB_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;

        { SKU }
        if (REC_SHE_DEF.PSQ_FB_CP_SKU = EmptyStr) and (REC_SHE_DEF.PSQ_FB_FK <> EmptyStr) then
        if (Pos('.',REC_SHE_DEF.PSQ_FB_FK) > 0) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT   FIRST 1 FK.ID FROM CAD_PRO AS FK');
          SQL.Add('WHERE    FK.SKU  LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');
          SQL.Add('ORDER BY FK.DTEV DESC');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.PSQ_FB_SC     := True; { Sub Query }
            REC_SHE_DEF.PSQ_FB_CP_SKU := REC_SHE_DEF.PSQ_FB_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.PSQ_FB_SL_PK.Delete(REC_SHE_DEF.PSQ_FB_SL_PK.IndexOf(REC_SHE_DEF.PSQ_FB_FK)); { Array }
            REC_SHE_DEF.PSQ_FB_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;

        { NCM }
        if (REC_SHE_DEF.PSQ_FB_CP_NCM = EmptyStr) and (Length(REC_SHE_DEF.PSQ_FB_FK) > 3) then
        if (Pos('.',REC_SHE_DEF.PSQ_FB_FK) > 0) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT   FIRST 1 FK.ID FROM CAD_PRO AS FK');
          SQL.Add('WHERE    FK.NCM  LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');
          SQL.Add('ORDER BY FK.DTEV DESC');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.PSQ_FB_SC     := True; { Sub Query }
            REC_SHE_DEF.PSQ_FB_CP_NCM := REC_SHE_DEF.PSQ_FB_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.PSQ_FB_SL_PK.Delete(REC_SHE_DEF.PSQ_FB_SL_PK.IndexOf(REC_SHE_DEF.PSQ_FB_FK)); { Array }
            REC_SHE_DEF.PSQ_FB_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;

        { Grade }
        if (REC_SHE_DEF.PSQ_FB_CP_DGCP = EmptyStr) and (Length(REC_SHE_DEF.PSQ_FB_FK) > 3) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT   FIRST 1 FK.ID FROM CAD_PRO AS FK');
          SQL.Add('WHERE    FK.DGCP CONTAINING ''' + REC_SHE_DEF.PSQ_FB_FK + '''');
          SQL.Add('ORDER BY FK.DTEV DESC');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.PSQ_FB_SC      := True; { Sub Query }
            REC_SHE_DEF.PSQ_FB_CP_DGCP := REC_SHE_DEF.PSQ_FB_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.PSQ_FB_SL_PK.Delete(REC_SHE_DEF.PSQ_FB_SL_PK.IndexOf(REC_SHE_DEF.PSQ_FB_FK)); { Array }
            REC_SHE_DEF.PSQ_FB_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;

        { Nome / Descrição }
        if (REC_SHE_DEF.PSQ_FB_CP_DECP = EmptyStr) and (Length(REC_SHE_DEF.PSQ_FB_FK) > 3) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT   FIRST 1 FK.ID FROM CAD_PRO AS FK');
          SQL.Add('WHERE    FK.DECP CONTAINING ''' + REC_SHE_DEF.PSQ_FB_FK + '''');
          SQL.Add('ORDER BY FK.DTEV DESC');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.PSQ_FB_SC      := True; { Sub Query }
            REC_SHE_DEF.PSQ_FB_CP_DECP := REC_SHE_DEF.PSQ_FB_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.PSQ_FB_SL_PK.Delete(REC_SHE_DEF.PSQ_FB_SL_PK.IndexOf(REC_SHE_DEF.PSQ_FB_FK)); { Array }
            REC_SHE_DEF.PSQ_FB_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;
      end;
    end;
  end;

  { Pesquisa }
  try
    oLockWindowUpdate; { Trava }

    { PED_PDV_ITE }
    with PED_PDV_ITE do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID  ,PK.IDPK  ,PK.IDFK,PK.ITEM,PK.IDEP,PK.CP_IDEP,PK.CP_SGEP,');
      SQL.Add('       PK.CDSP,PK.LGSP  ,PK.DSSP,');
      SQL.Add('       PK.IDCP,PK.ARTIGO,PK.SKU ,PK.CEAN,');
      SQL.Add('       PK.FIS_NCM,PK.FIS_EXTIPI,PK.FIS_CEST,');
      SQL.Add('       PK.DECP,PK.DCCP  ,PK.DGCP,');
      SQL.Add('       PK.UCOM,PK.UCON,');
      SQL.Add('       PK.QTDE,PK.QTRL,');
      SQL.Add('       PK.QTSP,PK.RLSP,');
      SQL.Add('       PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,');
      SQL.Add('       PK.VPRC_PAD    ,PK.VPRC_COM    ,');
      SQL.Add('       NULLIF(PK.VDSC,0) AS VDSC,NULLIF(PK.PDSC,0) AS PDSC,');
      SQL.Add('       PK.TSDE,PK.TCDE,');
      SQL.Add('       PK.VTSP,PK.PPSP,');
      SQL.Add('       PK.FIS_VICMS,PK.FIS_PICMS,PK.FIS_VIPI,PK.FIS_PIPI,PK.FIS_VST,PK.FIS_PST,');
      SQL.Add('       PK.FRT_VFRT ,PK.FRT_PSBR ,PK.FRT_PSLQ,');
      SQL.Add('       PK.RCOM     ,PK.CR_VCOM  ,PK.CR_PCOM ,');
      SQL.Add('       PK.FIS_ORIG ,PK.FIS_XORIG,');
      SQL.Add('       PK.INFADPRC');

      SQL.Add('FROM ' + oREPZero('VW_PSQ_PED_PDV_ITE','_',RECParametros.VW_IDEP,3) + ' AS PK');

      SQL.Add('WHERE    PK.IDEP = :IDEP');
      SQL.Add('AND      PK.IDPK = :IDPK');
      SQL.Add('ORDER BY PK.ITEM');

      Prepare;
    end;

    { Consulta Principal }
    with Consulta do
    begin
      Close;
      SQL.Clear;

      { RECURSIVE INI }
      SQL.Add('WITH RECURSIVE PK');
      SQL.Add('AS (');

      SQL.Add('SELECT PK.ID  ,PK.IDEP,');
      SQL.Add('       PK.DTEV,PK.DTCA,');
      SQL.Add('       PK.STFI,PK.APST,PK.FPST,PK.FAST,PK.LQST,PK.BQST,');
      SQL.Add('       PK.IDPK,PK.DEPK,PK.DTPK,PK.HTPK,PK.CDCX,');
      SQL.Add('       PK.CDOS,PK.DSOS,');
      SQL.Add('       PK.CDSP,PK.LGSP,PK.DTSP,PK.HTSP,');
      SQL.Add('       PK.CDRO,PK.DSRO,');
      SQL.Add('       PK.CDNF,PK.DTNF,PK.HTNF,PK.FIS_DSSA,');
      SQL.Add('       PK.CDBX,PK.DSBX,');
      SQL.Add('       PK.IDCD,PK.DECD,PK.CD_CDST,PK.GPCD,PK.CD_CNPJ,PK.CD_UF,');
      SQL.Add('       PK.IDCV,PK.DECV,PK.CV_CDST,PK.CV_VCOM,PK.CV_PCOM,');
      SQL.Add('       PK.IDCR,PK.ABCR,PK.CR_CDST,PK.CR_VCOM,PK.CR_PCOM,');
      SQL.Add('       PK.IDCT,PK.DECT,PK.CT_CDST,PK.CT_MOTORISTA,PK.CT_AJUDANTE,PK.CT_PLACA,');
      SQL.Add('       PK.FRT_MFRT,PK.FRT_DFRT,PK.FRT_VFRT,');
      SQL.Add('       PK.FRT_PSBR,PK.FRT_PSLQ,');
      SQL.Add('       PK.VDSC,PK.PDSC,');
      SQL.Add('       PK.TCDE,PK.RLPK,PK.LV_TCDE,PK.LV_RLPK,');
      SQL.Add('       PK.VTSP,PK.RLSP,PK.PPSP   ,PK.LV_VTSP,PK.LV_RLSP,PK.LV_PPSP,');
      SQL.Add('       PK.VTLQ,PK.VTBQ   ,');
      SQL.Add('       PK.VTAP,PK.LV_VTAP,');
      SQL.Add('       PK.VTDV,PK.LV_VTDV,');
      SQL.Add('       PK.VTAB,PK.LV_VTAB,');
      SQL.Add('       PK.VTBX,PK.VTFP   ,');
      SQL.Add('       PK.CDPD,PK.STPD,PK.DVPD,PK.ABPD,PK.FAPD  ,PK.LQPD,');
      SQL.Add('       PK.CDCO,PK.STCO,PK.TPCO,PK.RECO,PK.D_STCO,');
      SQL.Add('       PK.PRZ_CDPG,PRZ_DEPG   ,');  
      SQL.Add('       PK.INFADCAD,PK.INFADPRN ');

      SQL.Add('FROM ' + oREPZero('VW_PSQ_PED_PDV_ADM','_',RECParametros.VW_IDEP,3) + ' AS PK');

      { Inicialização }
      if REC_SHE_DEF.PSQ_FB_PD then { Padrão }
      begin
        SQL.Add('WHERE (PK.APST = 1 ');
        SQL.Add('OR     PK.DTPK BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) ');
        SQL.Add('OR     PK.DTSP BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) ');
        SQL.Add('OR     PK.DTNF BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) ');
        SQL.Add('OR     PK.DTBX BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))))');
      end;

      { Situação }
      if REC_SHE_DEF.PSQ_FB_DEST <> EmptyStr then
      begin
        SQL.Add(IFThen(Pos('WHERE',Consulta.SQL.Text) = 0,'WHERE','AND'));
        SQL.Add('PK.DEST LIKE ''' + REC_SHE_DEF.PSQ_FB_DEST + '%''');
      end;

      { Situação Abreviada }
      if REC_SHE_DEF.PSQ_FB_STFI <> EmptyStr then
      begin
        SQL.Add(IFThen(Pos('WHERE',Consulta.SQL.Text) = 0,'WHERE','AND'));
        SQL.Add('PK.STFI LIKE ''' + REC_SHE_DEF.PSQ_FB_STFI + '%''');
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

      if REC_SHE_DEF.PSQ_FB_SL_PK.Count = 0 then
         SQL.Add('SELECT PK.* FROM PK') else
      begin
        { Âncora Principal }
        { Pedido }
        SQL.Add('SELECT PK.* FROM PK');
        SQL.Add('WHERE  PK.DEPK LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[0] + '%''');

        for i := 0 to REC_SHE_DEF.PSQ_FB_SL_PK.Count - 1 do
        begin
          { Apenas Números }
          if oBSONumero(REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i]) then
          begin
            { Romaneios }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.CDRO = ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '''');

            { Nota Fiscais }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.CDNF = ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '''');

            { CNPJ Cliente }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.CD_CNPJ LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '%''');
          end else

          { Outros }
          begin
            { Cliente }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.DECD CONTAINING ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '''');

            { Grupo Comercial }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.GPCD LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '%''');

            { Vendedor }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.DECV LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '%''');

            { Representante }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.ABCR LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '%''');

            { Transportadora }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.DECT CONTAINING ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '''');

            { Separador }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.LGSP LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '%''');

            { Tipo Pedido }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.STPD LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '%''');

            { Tipo Cobrança }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.STCO LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '%''');

            { Crédito }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.RECO LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '%''');

            { Prazo }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.PRZ_DEPG CONTAINING ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '''');
          end;
        end;
      end;

      SQL.Add(')'); { CTE FIM }

      { CTE SELECT }
      SQL.Add('SELECT PK.* FROM CTE_PSQ AS PK');

      { Sub Query }
      if REC_SHE_DEF.PSQ_FB_SC then
      begin
        SQL.Add('WHERE EXISTS');
        SQL.Add('(');

        SQL.Add('SELECT FK.IDPK FROM ' + oREPZero('VW_PSQ_PED_PDV_ITE','_',RECParametros.VW_IDEP,3) + ' AS FK');
        SQL.Add('WHERE  FK.IDPK = PK.IDPK');

        { Revendedor }
        if REC_SHE_DEF.PSQ_FB_EP <> EmptyStr then
           SQL.Add('AND FK.CP_DEEP LIKE ''' + REC_SHE_DEF.PSQ_FB_EP + '%''');

        { Fabricante }
        if REC_SHE_DEF.PSQ_FB_CF <> EmptyStr then
           SQL.Add('AND FK.DECF LIKE ''' + REC_SHE_DEF.PSQ_FB_CF + '%''');

        { Artigo }
        if REC_SHE_DEF.PSQ_FB_CP_ARTIGO <> EmptyStr then
           SQL.Add('AND FK.ARTIGO LIKE ''' + REC_SHE_DEF.PSQ_FB_CP_ARTIGO + '%''');

        { SKU }
        if REC_SHE_DEF.PSQ_FB_CP_SKU <> EmptyStr then
           SQL.Add('AND FK.SKU LIKE ''' + REC_SHE_DEF.PSQ_FB_CP_SKU + '%''');

        { NCM }
        if REC_SHE_DEF.PSQ_FB_CP_NCM <> EmptyStr then
           SQL.Add('AND FK.FIS_NCM LIKE ''' + REC_SHE_DEF.PSQ_FB_CP_NCM + '%''');

        { Grade }
        if REC_SHE_DEF.PSQ_FB_CP_DGCP <> EmptyStr then
           SQL.Add('AND FK.DGCP CONTAINING ''' + REC_SHE_DEF.PSQ_FB_CP_DGCP + '''');

        { Nome / Descrição }
        if REC_SHE_DEF.PSQ_FB_CP_DECP <> EmptyStr then
           SQL.Add('AND FK.DECP CONTAINING ''' + REC_SHE_DEF.PSQ_FB_CP_DECP + '''');

        { Composição }
        if REC_SHE_DEF.PSQ_FB_CP_DCCP <> EmptyStr then
           SQL.Add('AND FK.DCCP CONTAINING ''' + REC_SHE_DEF.PSQ_FB_CP_DCCP + '''');

        SQL.Add(')');
      end;

      SQL.Add('ORDER BY PK.DTCA DESC ');
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
    DBGConsultaDEPK.Field.FocusControl; { Focused }

    { PED_PDV_ITE }
    DBGPED_PDV_ITE.Filter.Clear; { Filters }
    DBGPED_PDV_ITESKU.Field.FocusControl; { SKU }

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

procedure TFrmPED_PDV_ADM.ACTPSQ_OKExecute(Sender: TObject);
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

procedure TFrmPED_PDV_ADM.ACTPSQ_FOCUSExecute(Sender: TObject);
begin
  if (ACTPesquisa.Enabled) and (BEPSQ_CAD.Enabled) then
  BEPSQ_CAD.SetFocus(False);
end;

procedure TFrmPED_PDV_ADM.BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
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
        if (Pos('.',BEPSQ_CAD.Text) = 0) and
           (BEPSQ_CAD.Text <> 'AG'     ) and
           (BEPSQ_CAD.Text <> 'BLQ'    ) and
           (BEPSQ_CAD.Text <> 'FAT'    ) and
           (BEPSQ_CAD.Text <> 'FIM'    ) and
           (BEPSQ_CAD.Text <> 'FEC'    ) then
        begin
          if (BEPSQ_CAD.Text <> EmptyStr) and (Length(BEPSQ_CAD.Text) < 3) then
              oException(Nil,'Mínimo de 3 caracteres para prosseguir com a pesquisa !');

          if (BEPSQ_CAD.Text <> EmptyStr) and (Length(BEPSQ_CAD.Text) < 5) then
              oAviso(Application.Handle,'Pesquisas com pouco conteúdo infomado ...' + #13 +
                                        'tem impacto direto na velocidade das informações obtidas.');
        end;
        
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

procedure TFrmPED_PDV_ADM.BEPSQ_CADCurChange(Sender: TObject);
begin
  BEPSQ_CAD.Text := BEPSQ_CAD.CurText;
end;

procedure TFrmPED_PDV_ADM.BDPSQ_PER_INICurChange(Sender: TObject);
begin
  BDPSQ_PER_INI.Date := BDPSQ_PER_INI.CurDate;
end;

procedure TFrmPED_PDV_ADM.BDPSQ_PER_FIMCurChange(Sender: TObject);
begin
  BDPSQ_PER_FIM.Date := BDPSQ_PER_FIM.CurDate;
end;

procedure TFrmPED_PDV_ADM.ACTExecEventExecute(Sender: TObject);
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

procedure TFrmPED_PDV_ADM.EEventEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  oRefresh(Consulta);
end;

procedure TFrmPED_PDV_ADM.ConsultaBeforeOpen(DataSet: TDataSet);
begin
  DBGConsultaSTPD.Visible := False; { Tipos Pedidos }

  { Nota Fiscal }
  DBGConsultaDTNF.Visible := False;
  DBGConsultaHTNF.Visible := False;

  DBGConsulta.Bands[3].Visible := False; { Saídas }
  DBGConsulta.Bands[4].Visible := False; { Romaneio }

  DBGConsultaGPCD.Visible := False; { Grupo Comercial }

  DBGConsulta.Bands[6].Visible := False; { Representantes }
  DBGConsulta.Bands[7].Visible := False; { Vendedores }

  DBGConsulta.Bands[9].Visible  := False; { OS }
  DBGConsulta.Bands[10].Visible := False; { Expedição }
  DBGConsultaDTSP.Visible   := False;
  DBGConsultaHTSP.Visible   := False;

  { Faturamentos }
  DBGConsultaVTBQ.Visible := False; { Bloqueados }

  { Em Aberto }
  DBGConsultaVTAP.Visible := False;

  DBGConsulta.Bands[12].Visible := False; { Descontos   }
  DBGConsulta.Bands[13].Visible := False; { Devoluções  }
  DBGConsulta.Bands[14].Visible := False; { Abatimentos }

  { Outros }
  DBGConsulta.Bands[15].Visible := False;
  DBGConsultaVTBX.Visible   := False; { Sem Cobrança }
  DBGConsultaVTFP.Visible    := False; { Cancelados   }
end;

procedure TFrmPED_PDV_ADM.ConsultaBeforeClose(DataSet: TDataSet);
begin
  PED_PDV_ITE.Close; { Pedido }
  PED_PDV_SEP.Close; { Expedição }
end;

procedure TFrmPED_PDV_ADM.ConsultaAfterOpen(DataSet: TDataSet);
begin
  if Consulta.State <> dsInactive then
  if Consulta.RecNo  > 0 then
  begin
    { Pedido }
    if PED_PDV_ITE.State = dsInactive then
    begin
      PED_PDV_ITE.Prepare;
      PED_PDV_ITE.Open;
    end;

    { Expedição }
    if PED_PDV_SEP.State = dsInactive then
    begin
      PED_PDV_SEP.Prepare;
      PED_PDV_SEP.Open;
    end;
  end;
end;

procedure TFrmPED_PDV_ADM.ConsultaBeforeScroll(DataSet: TDataSet);
begin
  { PED_PDV_ITE  }
  DBGPED_PDV_ITE.Bands[3].Visible := False; { Expedição }
  DBGPED_PDV_ITE.Bands[4].Visible := False; { OS }
  DBGPED_PDV_ITE.Bands[5].Visible := False; { Descontos }
  DBGPED_PDV_ITE.Bands[6].Visible := False; { Comissões }

  DBGPED_PDV_ITECP_SGEP.Visible := False; { Revendedor }
  DBGPED_PDV_ITEDGCP.Visible    := False; { Grade }
  DBGPED_PDV_ITETSDE.Visible    := False; { SubTotal }
end;

procedure TFrmPED_PDV_ADM.ConsultaAfterScroll(DataSet: TDataSet);
begin
  { Vendedores }
  DBGConsulta.Bands[6].Visible := (ConsultaIDCR.AsInteger <> RECParametros.ID) and (ConsultaIDCR.AsInteger <> RECUsuarios.ID); { Representantes }
  DBGConsulta.Bands[7].Visible := (ConsultaIDCV.AsInteger <> RECParametros.ID) and (ConsultaIDCV.AsInteger <> RECUsuarios.ID); { Vendedores }

  { Clientes }
  if ConsultaGPCD.AsString <> EmptyStr then
  DBGConsultaGPCD.Visible := True; { Grupo }

  { OS }
  if ConsultaDSOS.AsDateTime > 0 then
  DBGConsulta.Bands[9].Visible := True;

  { Expedição }
  if ConsultaDTSP.AsDateTime > 0 then
  DBGConsulta.Bands[10].Visible := True;

  { Faturamentos }
  if ConsultaVTBQ.AsFloat > 0 then
  DBGConsultaVTBQ.Visible := True; { Bloqueados }

  { Em Aberto }
  if ConsultaLV_VTAP.AsFloat > 0 then
  DBGConsultaVTAP.Visible := True;

  { Descontos }
  if ConsultaVDSC.AsFloat > 0   then
  DBGConsulta.Bands[12].Visible := True;

  { Devoluções }
  if ConsultaVTDV.AsFloat > 0 then
  DBGConsulta.Bands[13].Visible := True;

  { Abatimentos }
  if ConsultaVTAB.AsFloat > 0 then
  DBGConsulta.Bands[14].Visible := True;

  { Outros }
  if (ConsultaVTFP.AsFloat > 0) or (ConsultaVTFP.AsFloat > 0) then
  DBGConsulta.Bands[15].Visible := True;

  { Sem Cobrança }
  if ConsultaVTBX.AsFloat > 0 then
  DBGConsultaVTBX.Visible := True;

  { Cancelados }
  if ConsultaVTFP.AsFloat > 0 then
  DBGConsultaVTFP.Visible := True;
end;

procedure TFrmPED_PDV_ADM.ConsultaCalcFields(DataSet: TDataSet);
begin
  ConsultaC_ID.Value := Consulta.RecNo;
end;

procedure TFrmPED_PDV_ADM.DTSConsultaDataChange(Sender: TObject;
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
    APosCount := oPosCount(''#$D'',ConsultaINFADPRN.AsString);

    { VER TAM TELA }
    { Altura }
    APosHeight :=

    IFThen((APosCount = 00) and (ConsultaINFADPRN.AsString =  EmptyStr),30,
    IFThen((APosCount = 00) and (ConsultaINFADPRN.AsString <> EmptyStr),30,
    IFThen((APosCount = 01),70,
    IFThen((APosCount = 02),85,
    IFThen((APosCount = 03),100,100)))));
    //IFThen((APosCount = 03),100,115)))));

    { DOCK MANAGER }
    if APosHeight <> DPPrincipal1INFADCAD.Tag then
    begin
      _SetDockControl(DPPrincipal1INFADCAD,APosHeight,lVertical); { Informações Adicionais }

      if (DPPrincipal1RodapeLEB.Height <> 70) and (PED_PDV_ITEC_INFADPRC.AsString <> EmptyStr) then
      _SetDockControl(DPPrincipal1RodapeLEB,70,lVertical,True);
    end;

    { FIT }
    { Pedidos }
    DBGConsulta.ApplyBestFit(DBGConsultaSTFI); { Situação }
    DBGConsultaSTFI.Width := DBGConsultaSTFI.Width + 5;

    { Cobrança }
    DBGConsulta.ApplyBestFit(DBGConsultaD_STCO);
    if DBGConsultaD_STCO.Width > 115 then
       DBGConsultaD_STCO.Width := IFThen(Screen.Width <= 1366,115,
                                  IFThen(Screen.Width <= 1536,115,115));

    { Entradas }
    DBGConsulta.ApplyBestFit(DBGConsultaTCDE); DBGConsultaTCDE.Width := DBGConsultaTCDE.Width + IFThen(DBGConsultaTCDE.SummaryFooterValue > 9999999,15,IFThen(DBGConsultaTCDE.SummaryFooterValue > 999999,12,7));
    DBGConsulta.ApplyBestFit(DBGConsultaRLPK); DBGConsultaRLPK.Width := DBGConsultaRLPK.Width + IFThen(DBGConsultaRLPK.SummaryFooterValue >   99999,10,IFThen(DBGConsultaRLPK.SummaryFooterValue >   9999, 5,0));

    { Expedição }
    DBGConsulta.ApplyBestFit(DBGConsultaVTSP); DBGConsultaVTSP.Width := DBGConsultaVTSP.Width + IFThen(DBGConsultaVTSP.SummaryFooterValue > 9999999,15,IFThen(DBGConsultaVTSP.SummaryFooterValue > 999999,12,7));
    DBGConsulta.ApplyBestFit(DBGConsultaRLSP); DBGConsultaRLSP.Width := DBGConsultaRLSP.Width + IFThen(DBGConsultaRLSP.SummaryFooterValue >   99999,10,IFThen(DBGConsultaRLSP.SummaryFooterValue >   9999, 5,0));


    DBGConsulta.ApplyBestFit(DBGConsultaVTLQ); DBGConsultaVTLQ.Width := DBGConsultaVTLQ.Width + IFThen(DBGConsultaVTLQ.SummaryFooterValue > 9999999,15,IFThen(DBGConsultaVTLQ.SummaryFooterValue > 999999,12,7)); { Faturados }
    DBGConsulta.ApplyBestFit(DBGConsultaVTBQ); DBGConsultaVTBQ.Width := DBGConsultaVTBQ.Width + IFThen(DBGConsultaVTBQ.SummaryFooterValue > 9999999,15,IFThen(DBGConsultaVTBQ.SummaryFooterValue > 999999,12,7)); { Bloqueados }
    DBGConsulta.ApplyBestFit(DBGConsultaVTAP); DBGConsultaVTAP.Width := DBGConsultaVTAP.Width + IFThen(DBGConsultaVTAP.SummaryFooterValue > 9999999,15,IFThen(DBGConsultaVTAP.SummaryFooterValue > 999999,12,7)); { Aberto }
    DBGConsulta.ApplyBestFit(DBGConsultaVDSC); DBGConsultaVDSC.Width := DBGConsultaVDSC.Width + IFThen(DBGConsultaVDSC.SummaryFooterValue > 9999999,15,IFThen(DBGConsultaVDSC.SummaryFooterValue > 999999,12,7)); { Descontos }
    DBGConsulta.ApplyBestFit(DBGConsultaVTDV); DBGConsultaVTDV.Width := DBGConsultaVTDV.Width + IFThen(DBGConsultaVTDV.SummaryFooterValue > 9999999,15,IFThen(DBGConsultaVTDV.SummaryFooterValue > 999999,12,7)); { Devoluções }
    DBGConsulta.ApplyBestFit(DBGConsultaVTBX); DBGConsultaVTBX.Width := DBGConsultaVTBX.Width + IFThen(DBGConsultaVTBX.SummaryFooterValue > 9999999,15,IFThen(DBGConsultaVTBX.SummaryFooterValue > 999999,12,7)); { Baixados }
    DBGConsulta.ApplyBestFit(DBGConsultaVTFP); DBGConsultaVTFP.Width := DBGConsultaVTFP.Width + IFThen(DBGConsultaVTFP.SummaryFooterValue > 9999999,15,IFThen(DBGConsultaVTFP.SummaryFooterValue > 999999,12,7)); { Cancelados }

    { VIEWS }
    { Tipos Pedidos }
    if ConsultaSTPD.AsString <> RECParametros.PED_STPD then
    DBGConsultaSTPD.Visible := True;

    { Nota Fiscal }
    if ConsultaCDNF.AsInteger > 0 then
    begin
      DBGConsultaDTNF.Visible := True;
      DBGConsultaHTNF.Visible := True;
    end;

    { Saídas }
    if ConsultaFIS_DSSA.AsDateTime > 0 then
    DBGConsulta.Bands[3].Visible := True;

    { Romaneios }
    if ConsultaCDRO.AsInteger > 0 then
    DBGConsulta.Bands[4].Visible := True;

    { Expedição }
    if ConsultaDTSP.AsDateTime > 0 then
    begin
      DBGConsultaDTSP.Visible := True;
      DBGConsultaHTSP.Visible := True;
    end;
  end;
end;

procedure TFrmPED_PDV_ADM.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Zebra }
    if ANode.Values[DBGConsultaC_ID.Index] <> Null then
    if ANode.Values[DBGConsultaC_ID.Index] mod 2 <> 0 then
       AColor := $00F8F8F8 else
       AColor := clHighLightText;

    { Clientes }
    if AColumn = DBGConsultaDECD then
    begin
      //AColor      := $00FAFAFA;
      AFont.Color := clGrayText;
    end;

    { Produtos }
    if (AColumn = DBGConsultaTCDE) or (AColumn = DBGConsultaRLPK) then
    begin
      AColor      := $00FFFFE1;
      AFont.Color := clGrayText;
    end;

    { Expedição }
    if (AColumn = DBGConsultaDTSP) or (AColumn = DBGConsultaHTSP) then
    if (ANode.Values[DBGConsultaVTSP.Index] <> Null) then
    if (ANode.Values[DBGConsultaVTSP.Index]  > 0   ) then
    begin
      AColor      := clWindowText;
      AFont.Color := clHighLightText;
    end;

    if (AColumn = DBGConsultaVTSP) or (AColumn = DBGConsultaRLSP) or (AColumn = DBGConsultaPPSP) then
    if (ANode.Values[DBGConsultaVTSP.Index] <> Null) then
    if (ANode.Values[DBGConsultaVTSP.Index]  > 0   ) then
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
    if (ANode.Values[DBGConsultaPPSP.Index] <> Null) then
    if (ANode.Values[DBGConsultaPPSP.Index]  > 0   ) and (ANode.Values[DBGConsultaPPSP.Index] < 95) then
    begin
      AColor      := clWindowText;
      AFont.Color := $0080FFFF; //$00002FEC $000031F4 $00C4FFC4 $00D9FFFF;
    end;

    { Faturados }
    if (AColumn = DBGConsultaVTLQ) then
    if (ANode.Values[DBGConsultaVTLQ.Index] <> Null) then
    if (ANode.Values[DBGConsultaVTLQ.Index]  > 0   ) then
    begin
      AColor      := $00DDFFE6;
      AFont.Color := clWindowText;
    end else
    begin
      AColor      := $00DDFFE6;
      AFont.Color := $00B2B2B2;
    end;

    { Bloqueados }
    if (AColumn = DBGConsultaSTFI) or (AColumn = DBGConsultaVTBQ) then
    if (ANode.Values[DBGConsultaVTBQ.Index] <> Null) then
    if (ANode.Values[DBGConsultaVTBQ.Index]  > 0   ) then
    begin
      AFont.Color := $00002EE6;
    end else
    begin
      AFont.Color := $00B2B2B2;
    end;

    { Abertos Padrão }
    if (AColumn = DBGConsultaVTAP) then
    if (ANode.Values[DBGConsultaVTAP.Index] <> Null) then
    if (ANode.Values[DBGConsultaVTAP.Index]  > 0   ) then
    begin
      AFont.Color := clGrayText;
    end else
    begin
      AFont.Color := $00B2B2B2; // clGrayText
    end;

    { Descontos }
    if (AColumn = DBGConsultaVDSC) or (AColumn = DBGConsultaPDSC) then
    if (ANode.Values[DBGConsultaVDSC.Index] <> Null) then
    if (ANode.Values[DBGConsultaVDSC.Index]  > 0   ) then
    begin
      AColor      := $0080FFFF;
      AFont.Color := clGrayText;
    end else
    begin
      AColor      := clHighLightText;
      AFont.Color := $00B2B2B2;
    end;

    { Devoluções }
    if (AColumn = DBGConsultaVTDV) then
    if (ANode.Values[DBGConsultaVTDV.Index] <> Null) then
    if (ANode.Values[DBGConsultaVTDV.Index]  > 0   ) then
    begin
      AColor      := $00C8F0F0;
      AFont.Color := clGrayText;
    end else
    begin
      AColor      := $00C8F0F0;
      AFont.Color := $00B2B2B2;
    end;

    { Abatimentos }
    if (AColumn = DBGConsultaVTAB) then
    if (ANode.Values[DBGConsultaVTAB.Index] <> Null) then
    if (ANode.Values[DBGConsultaVTAB.Index]  > 0   ) then
    begin
      AColor      := $00C8F0F0;
      AFont.Color := clGrayText;
    end else
    begin
      AColor      := $00C8F0F0;
      AFont.Color := $00B2B2B2;
    end;

    { Sem Cobrança }
    if (AColumn = DBGConsultaVTBX) then
    if (ANode.Values[DBGConsultaVTBX.Index] <> Null) then
    if (ANode.Values[DBGConsultaVTBX.Index]  > 0   ) then
    begin
      AColor      := $00E9E9E9;
      AFont.Color := clGrayText;
    end else
    begin
      AColor      := $00E9E9E9;
      AFont.Color := $00B2B2B2;
    end;

    { Cancelados }
    if (AColumn = DBGConsultaVTFP) then
    if (ANode.Values[DBGConsultaVTFP.Index] <> Null) then
    if (ANode.Values[DBGConsultaVTFP.Index]  > 0   ) then
    begin
      AColor      := $00E9E9E9;
      AFont.Color := clGrayText;
    end else
    begin
      AColor      := $00E9E9E9;
      AFont.Color := $00B2B2B2;
    end;

    { Pedido }
    if AColumn = DBGConsultaDEPK then
       AFont.Color := clWindowText;

    { Nota Fiscal }
    if (AColumn = DBGConsultaCDNF) then
    if (ANode.Values[DBGConsultaCDNF.Index] <> Null) then
    if (ANode.Values[DBGConsultaCDNF.Index]  > 0   ) then
        AFont.Color := clWindowText else
        AFont.Color := $00B2B2B2;
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
        //AFont.Style := [fsBold];
      end;
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
      AColor      := $00DDFFE6; //$00F7FEE1;
      AFont.Color := clWindowText;
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

procedure TFrmPED_PDV_ADM.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
       VK_insert: ACTEAppend.Execute;
       vk_return: ACTEEdit.Execute;
       VK_delete: ACTEDelete.Execute;
       VK_escape: ACTECancel.Execute;
  end;
end;

procedure TFrmPED_PDV_ADM.PED_PDV_ITEAfterOpen(DataSet: TDataSet);
begin
  if Consulta.State <> dsInactive then
  if Consulta.RecNo  > 0 then
  begin
    { Catálogo }
    if CAD_PRO_IMG.State = dsInactive then
    begin
      CAD_PRO_IMG.Prepare;
      CAD_PRO_IMG.Open;
    end;
  end;
end;

procedure TFrmPED_PDV_ADM.PED_PDV_ITEBeforeClose(DataSet: TDataSet);
begin
  CAD_PRO_IMG.Close; { Catálogos }
end;

procedure TFrmPED_PDV_ADM.PED_PDV_ITEAfterScroll(DataSet: TDataSet);
begin
  if Consulta.State <> dsInactive then
  if Consulta.RecNo  > 0 then
  begin
    { DOCK MANAGER }
    if (DPPrincipal1RodapeLEB.Tag <> 75) and (PED_PDV_ITEC_INFADPRC.AsString <> EmptyStr) then
        _SetDockControl(DPPrincipal1RodapeLEB,75,lVertical,True);

    { Revendedor }
    if PED_PDV_ITECP_SGEP.AsString <> RECParametros.SGEP then
    DBGPED_PDV_ITECP_SGEP.Visible := True;

    { Grade }
    if PED_PDV_ITEDGCP.AsString <> EmptyStr then
    DBGPED_PDV_ITEDGCP.Visible := True;

    { Sub Total }
    if PED_PDV_ITETSDE.AsFloat <> PED_PDV_ITETCDE.AsFloat then
    DBGPED_PDV_ITETSDE.Visible := True;

    { Separação }
    if PED_PDV_ITEVTSP.AsFloat > 0 then
    begin
      DBGPED_PDV_ITE.Bands[3].Visible := True; { Expedição }
      DBGPED_PDV_ITE.Bands[4].Visible := True; { OS }
    end;

    { Descontos }
    if PED_PDV_ITEVDSC.AsFloat > 0 then
    DBGPED_PDV_ITE.Bands[5].Visible := True;

    { Comissões }
    if PED_PDV_ITECR_VCOM.AsFloat > 0 then
    DBGPED_PDV_ITE.Bands[6].Visible := True;
  end;
end;

procedure TFrmPED_PDV_ADM.PED_PDV_ITECalcFields(DataSet: TDataSet);
begin
  PED_PDV_ITEC_ID.Value   := PED_PDV_ITE.RecNo;

  PED_PDV_ITEC_QTDE.Value := FormatFloat(',##,0.00',PED_PDV_ITEQTDE.AsFloat) + ' ' + LeftStr(PED_PDV_ITEUCOM.AsString,2); { Pedido }
  PED_PDV_ITEC_QTSP.Value := FormatFloat(',##,0.00',PED_PDV_ITEQTSP.AsFloat) + ' ' + LeftStr(PED_PDV_ITEUCOM.AsString,2); { Expedição }

  if PED_PDV_ITEINFADPRC.AsString <> EmptyStr then
  PED_PDV_ITEC_INFADPRC.Value := PED_PDV_ITEINFADPRC.AsString + #13 +
                                 PED_PDV_ITERCOM.AsString + ' - ' + FormatFloat(',##,0.00 %',PED_PDV_ITECR_PCOM.AsFloat);
end;

procedure TFrmPED_PDV_ADM.DTSPED_PDV_ITEDataChange(Sender: TObject;
  Field: TField);
begin
  if Consulta.State <> dsInactive then
  if Consulta.RecNo  > 0 then
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
    if DBGPED_PDV_ITELGSP.Width  > 100 then
       DBGPED_PDV_ITELGSP.Width := 100;

    { Grade }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEDGCP);
    if (DBGPED_PDV_ITEDGCP.Width  > 150) and (Screen.Width < 1920) then
        DBGPED_PDV_ITEDGCP.Width := IFThen   (Screen.Width < 1536,150,200);

    { Descrição }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEDECP);
    if (DBGPED_PDV_ITEDECP.Width  > 150) and (Screen.Width < 1920) then
        DBGPED_PDV_ITEDECP.Width := IFThen   (Screen.Width < 1536,150,200);

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
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEFIS_VICMS); DBGPED_PDV_ITEFIS_VICMS.Width := DBGPED_PDV_ITEFIS_VICMS.Width + 12; { Total ICMS R$ }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEFIS_VIPI ); DBGPED_PDV_ITEFIS_VIPI.Width  := DBGPED_PDV_ITEFIS_VIPI.Width  + 12; { Total IPI  R$ }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEFIS_VST  ); DBGPED_PDV_ITEFIS_VST.Width   := DBGPED_PDV_ITEFIS_VST.Width   + 12; { Total ST   R$ }

    { Frete }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEFRT_VFRT); DBGPED_PDV_ITEFRT_VFRT.Width := DBGPED_PDV_ITEFRT_VFRT.Width + 12; { Total R$     }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEFRT_PSBR); DBGPED_PDV_ITEFRT_PSBR.Width := DBGPED_PDV_ITEFRT_PSBR.Width + 12; { Peso Bruto   }
    DBGPED_PDV_ITE.ApplyBestFit(DBGPED_PDV_ITEFRT_PSLQ); DBGPED_PDV_ITEFRT_PSLQ.Width := DBGPED_PDV_ITEFRT_PSLQ.Width + 12; { Peso Líquido }
  end;
end;

procedure TFrmPED_PDV_ADM.DTSCAD_PRO_IMGDataChange(Sender: TObject;
  Field: TField);
begin
  if Consulta.State <> dsInactive then
  if Consulta.RecNo  > 0 then
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

procedure TFrmPED_PDV_ADM.DBGPED_PDV_ITECustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
BEGIN
  if not ASelected then
  begin
    { Zebra }
    if ANode.Values[DBGPED_PDV_ITEC_ID.Index] <> Null then
    if ANode.Values[DBGPED_PDV_ITEC_ID.Index] mod 2 <> 0 then
       AColor := $00F8F8F8 else
       AColor := clHighLightText;

    { Separados }
    if (AColumn = DBGPED_PDV_ITEC_QTSP) or (AColumn = DBGPED_PDV_ITERLSP) or
       (AColumn = DBGPED_PDV_ITEPPSP  ) or (AColumn = DBGPED_PDV_ITEVTSP) or
       (AColumn = DBGPED_PDV_ITEDSSP  ) or (AColumn = DBGPED_PDV_ITELGSP) then

    if ANode.Values[DBGPED_PDV_ITEQTSP.Index] > 0 then
    begin
      AColor      := clWindowText;
      AFont.Color := clHighLightText;
    end;

    { Ticket }
    if (AColumn = DBGPED_PDV_ITEPPSP) then
    if (ANode.Values[DBGPED_PDV_ITEPPSP.Index] > 0) and (ANode.Values[DBGPED_PDV_ITEPPSP.Index] < 95) then
    begin
      AColor      := clWindowText;
      AFont.Color := $0080FFFF; //$00002FEC $000031F4 $00C4FFC4 $00D9FFFF;
    end;

    { ICMS }
    if (AColumn = DBGPED_PDV_ITEFIS_VICMS) or (AColumn = DBGPED_PDV_ITEFIS_PICMS) then
    if (ANode.Values[DBGPED_PDV_ITEFIS_VICMS.Index] > 0) then
    begin
      AColor      := $0080FFFF;
      AFont.Color := clWindowText;
    end else
    begin
      AColor      := clHighLightText;
      AFont.Color := $00B2B2B2;
    end;

    { IPI }
    if (AColumn = DBGPED_PDV_ITEFIS_VIPI) or (AColumn = DBGPED_PDV_ITEFIS_PIPI) then
    if (ANode.Values[DBGPED_PDV_ITEFIS_VIPI.Index] > 0) then
    begin
      AColor      := $0080FFFF;
      AFont.Color := clWindowText;
    end else
    begin
      AColor      := clHighLightText;
      AFont.Color := $00B2B2B2;
    end;

    { ST }
    if (AColumn = DBGPED_PDV_ITEFIS_VST) or (AColumn = DBGPED_PDV_ITEFIS_PST) then
    if (ANode.Values[DBGPED_PDV_ITEFIS_VST.Index] > 0) then
    begin
      AColor      := $0080FFFF;
      AFont.Color := clWindowText;
    end else
    begin
      AColor      := clHighLightText;
      AFont.Color := $00B2B2B2;
    end;

    { Padrão }
    if (AColumn = DBGPED_PDV_ITEITEM  ) or
       (AColumn = DBGPED_PDV_ITEARTIGO) or
       (AColumn = DBGPED_PDV_ITESKU   ) or
       (AColumn = DBGPED_PDV_ITETCDE  ) then
    begin
      //AColor      := $00F5F5F5;
      AFont.Color := clWindowText;
    end;

  end;

  if ANode.Selected then
  begin
    AColor      := cl3DLight; //$00750000;//$00400000;
    AFont.Color := clWindowText; //  clHighlightText;
  end;

  if ASelected then
  begin
    AColor      := clHighlight; //$00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;

procedure TFrmPED_PDV_ADM.PED_PDV_SEPCalcFields(DataSet: TDataSet);
begin
  PED_PDV_SEPC_ID.Value := Consulta.RecNo;
end;

procedure TFrmPED_PDV_ADM.ACTCAD_CLI_INFExecute(Sender: TObject);
begin
  if Consulta.State <> dsInactive then
  if Consulta.RecNo  > 0 then

  uPSQSCORE(self,ConsultaIDCD.AsString,IFThen(ConsultaBQST.AsInteger = 1,ConsultaDEPK.AsString,'0'));
end;

end.
