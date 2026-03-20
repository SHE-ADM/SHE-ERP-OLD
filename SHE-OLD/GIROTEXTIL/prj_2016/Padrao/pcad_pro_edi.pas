unit pcad_pro_edi;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBEvents, math,
  IBDatabase, DB, IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls,
  StdCtrls, dxExEdtr, dxEdLib, Buttons, dxPageControl, dxEditor, dxCntner,
  ExtDlgs, dxTL, dxDBCtrl, dxDBGrid, jpeg, dxDBTLCl, dxGrClms, ACBrBarCode,
  rxSpeedbar;

type
  Tfrmcad_pro_edi = class(Tfrmpadr3)
    Label1: TLabel;
    Label7: TLabel;
    eddpro: TdxEdit;
    OpenPictureDialogEdit: TOpenPictureDialog;
    ladfor: TLabel;
    Label6: TLabel;
    Label18: TLabel;
    Label33: TLabel;
    edcomp: TdxEdit;
    edcfor: TdxMaskEdit;
    dtscad_pro_com: TDataSource;
    cad_pro_com: TIBDataSet;
    cad_pro_comID: TIntegerField;
    cad_pro_comCOM_COMP: TIBStringField;
    cad_pro_comCOM_QTDE: TIBBCDField;
    cad_pro_comCOM_CART: TIBStringField;
    cad_pro_comCOM_BASE: TIBStringField;
    cbdcol: TdxImageEdit;
    cbdgrp: TdxImageEdit;
    tSHEILD: TIBTransaction;
    aux: TIBQuery;
    consulta_S: TIBQuery;
    cad_pro_grd: TIBDataSet;
    dtscad_pro_grd: TDataSource;
    cad_pro: TIBQuery;
    cad_pro_img: TIBQuery;
    sbtab_grp: TSpeedButton;
    sbtab_col: TSpeedButton;
    Label10: TLabel;
    GroupBox6: TGroupBox;
    pnlpri: TPanel;
    pcMAIN: TdxPageControl;
    tscom: TdxTabSheet;
    tstec: TdxTabSheet;
    gbfoto: TGroupBox;
    GroupBox4: TGroupBox;
    pcprc: TdxPageControl;
    tsata: TdxTabSheet;
    Label17: TLabel;
    Label19: TLabel;
    Label16: TLabel;
    Bevel11: TBevel;
    edprec: TdxMaskEdit;
    edppro: TdxMaskEdit;
    edpdsc: TdxMaskEdit;
    tsvar: TdxTabSheet;
    Label22: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    Bevel12: TBevel;
    edvprc: TdxMaskEdit;
    edvpro: TdxMaskEdit;
    edvdsc: TdxMaskEdit;
    tsrep: TdxTabSheet;
    edpeso: TdxEdit;
    Label15: TLabel;
    Label14: TLabel;
    cbdemb: TdxImageEdit;
    pcobs: TdxPageControl;
    tsobs: TdxTabSheet;
    edobse: TdxMemo;
    tsggrd: TdxTabSheet;
    tscomp: TdxTabSheet;
    Panel1: TPanel;
    dbgcom: TdxDBGrid;
    dbgcomCOM_COMP: TdxDBGridMaskColumn;
    dbgcomCOM_BASE: TdxDBGridMaskColumn;
    dbgcomCOM_QTDE: TdxDBGridMaskColumn;
    SpeedBar1: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedbarSection2: TSpeedbarSection;
    SpeedbarSection3: TSpeedbarSection;
    SpeedbarSection4: TSpeedbarSection;
    siINC: TSpeedItem;
    siALT: TSpeedItem;
    siDEL: TSpeedItem;
    siS: TSpeedItem;
    siC: TSpeedItem;
    Bevel3: TBevel;
    edrend: TdxEdit;
    Label8: TLabel;
    edlarg: TdxEdit;
    Label11: TLabel;
    edmetr: TdxEdit;
    lametr: TLabel;
    edpscn: TdxEdit;
    Label9: TLabel;
    edpsmr: TdxEdit;
    Label12: TLabel;
    edgram: TdxEdit;
    Label21: TLabel;
    edutil: TdxEdit;
    Label24: TLabel;
    edelac: TdxEdit;
    Label27: TLabel;
    edelas: TdxEdit;
    Label28: TLabel;
    cbstal: TdxImageEdit;
    Label29: TLabel;
    Label30: TLabel;
    cbdori: TdxImageEdit;
    cbstav: TdxImageEdit;
    Label37: TLabel;
    cad_pro_grdID: TIntegerField;
    cad_pro_grdGRD_IPRO: TIntegerField;
    cad_pro_grdGRD_CART: TIBStringField;
    cad_pro_grdGRD_CPRO: TIBStringField;
    cad_pro_grdGRD_CBAR: TIBStringField;
    cad_pro_grdGRD_CFOR: TIBStringField;
    cad_pro_grdGRD_DPRO: TIBStringField;
    cad_pro_grdGRD_COMP: TIBStringField;
    cad_pro_grdGRD_CGRD: TIBStringField;
    cad_pro_grdGRD_DGRD: TIBStringField;
    cad_pro_grdGRD_CCOR: TSmallintField;
    cad_pro_grdGRD_RCOR: TIBStringField;
    cad_pro_grdGRD_DCOR: TIBStringField;
    cad_pro_grdGRD_DUNI: TIBStringField;
    cad_pro_grdGRD_FOTO: TBlobField;
    cad_pro_grdGRD_EST0: TIntegerField;
    cad_pro_grdGRD_COL0: TSmallintField;
    cad_pro_grdGRD_EST1: TIntegerField;
    cad_pro_grdGRD_COL1: TSmallintField;
    cad_pro_grdGRD_EST2: TIntegerField;
    cad_pro_grdGRD_COL2: TSmallintField;
    cad_pro_grdGRD_EST3: TIntegerField;
    cad_pro_grdGRD_COL3: TSmallintField;
    cad_pro_grdGRD_EST4: TIntegerField;
    cad_pro_grdGRD_COL4: TSmallintField;
    cad_pro_grdGRD_EST5: TIntegerField;
    cad_pro_grdGRD_COL5: TSmallintField;
    cad_pro_grdGRD_EST6: TIntegerField;
    cad_pro_grdGRD_COL6: TSmallintField;
    cad_pro_grdGRD_EST7: TIntegerField;
    cad_pro_grdGRD_COL7: TSmallintField;
    cad_pro_grdGRD_EST8: TIntegerField;
    cad_pro_grdGRD_COL8: TSmallintField;
    cad_pro_grdGRD_EST9: TIntegerField;
    cad_pro_grdGRD_COL9: TSmallintField;
    cad_pro_grdGRD_TOTA: TSmallintField;
    cad_pro_grdGRD_ESTO: TSmallintField;
    cad_pro_grdGRD_STA: TIBStringField;
    tsdadi: TdxTabSheet;
    Label32: TLabel;
    eddpr2: TdxEdit;
    eddpr3: TdxEdit;
    Label35: TLabel;
    eddpr4: TdxEdit;
    Label36: TLabel;
    eddpr5: TdxEdit;
    Label38: TLabel;
    Bevel14: TBevel;
    edcart: TdxEdit;
    eddcad: TdxMaskEdit;
    Label39: TLabel;
    edvocx: TdxEdit;
    edvosc: TdxEdit;
    Label40: TLabel;
    edvofd: TdxEdit;
    Label41: TLabel;
    cad_pro_grdGRD_PDSC: TIBBCDField;
    pcgrd: TdxPageControl;
    tsgavi: TdxTabSheet;
    dbgavi: TdxDBGrid;
    SpeedBar3: TSpeedBar;
    SpeedbarSection9: TSpeedbarSection;
    SpeedbarSection10: TSpeedbarSection;
    SpeedbarSection11: TSpeedbarSection;
    SpeedbarSection12: TSpeedbarSection;
    aviI: TSpeedItem;
    aviA: TSpeedItem;
    aviE: TSpeedItem;
    aviS: TSpeedItem;
    aviC: TSpeedItem;
    tsgtec: TdxTabSheet;
    dbgtec: TdxDBGrid;
    SpeedBar4: TSpeedBar;
    SpeedbarSection13: TSpeedbarSection;
    SpeedbarSection14: TSpeedbarSection;
    SpeedbarSection15: TSpeedbarSection;
    SpeedbarSection16: TSpeedbarSection;
    tecI: TSpeedItem;
    tecA: TSpeedItem;
    tecE: TSpeedItem;
    tecS: TSpeedItem;
    tecC: TSpeedItem;
    edid: TdxEdit;
    tssite: TdxTabSheet;
    Label42: TLabel;
    edrprc: TdxMaskEdit;
    Label43: TLabel;
    edrpro: TdxMaskEdit;
    Label44: TLabel;
    edrdsc: TdxMaskEdit;
    Bevel15: TBevel;
    cbduni: TdxImageEdit;
    Label4: TLabel;
    Label45: TLabel;
    cbdcat: TdxImageEdit;
    sbtab_cat: TSpeedButton;
    pcimg: TdxPageControl;
    tsfoto: TdxTabSheet;
    imag: TImage;
    sbfoto: TSpeedButton;
    tsfot2: TdxTabSheet;
    imag2: TImage;
    sbfot2: TSpeedButton;
    tsfot3: TdxTabSheet;
    imag3: TImage;
    sbfot3: TSpeedButton;
    tsfot4: TdxTabSheet;
    imag4: TImage;
    sbfot4: TSpeedButton;
    tsfot5: TdxTabSheet;
    imag5: TImage;
    sbfot5: TSpeedButton;
    tsfot6: TdxTabSheet;
    imag6: TImage;
    sbfot6: TSpeedButton;
    tsfot7: TdxTabSheet;
    imag7: TImage;
    sbfot7: TSpeedButton;
    cad_pro_imgID: TIntegerField;
    cad_pro_imgPRO_CART: TIBStringField;
    cad_pro_imgPRO_FOTO: TBlobField;
    cad_pro_imgPRO_FOT2: TBlobField;
    cad_pro_imgPRO_FOT3: TBlobField;
    cad_pro_imgPRO_FOT4: TBlobField;
    cad_pro_imgPRO_FOT5: TBlobField;
    cad_pro_imgPRO_FOT6: TBlobField;
    cad_pro_imgPRO_FOT7: TBlobField;
    cad_pro_imgPRO_DEF1: TBlobField;
    cad_pro_imgPRO_DEF2: TBlobField;
    cad_pro_imgPRO_DEF3: TBlobField;
    cad_pro_imgPRO_DEF4: TBlobField;
    cad_pro_imgPRO_DEF5: TBlobField;
    cad_pro_imgPRO_DEF6: TBlobField;
    cad_pro_imgPRO_DEF7: TBlobField;
    cad_pro_imgPRO_INS1: TBlobField;
    cad_pro_imgPRO_INS2: TBlobField;
    cad_pro_imgPRO_INS3: TBlobField;
    cad_pro_imgPRO_INS4: TBlobField;
    cad_pro_imgPRO_INS5: TBlobField;
    cad_pro_imgPRO_INS6: TBlobField;
    cad_pro_imgPRO_INS7: TBlobField;
    tsgcon: TdxTabSheet;
    aux2: TIBQuery;
    cbrepr: TdxImageEdit;
    Label46: TLabel;
    Label50: TLabel;
    edcna1: TdxEdit;
    Label51: TLabel;
    edcna2: TdxEdit;
    cad_pro_grdGRD_PCOR: TIBStringField;
    Label47: TLabel;
    edpper: TdxMaskEdit;
    Label48: TLabel;
    edpprz: TdxMaskEdit;
    Label49: TLabel;
    edvper: TdxMaskEdit;
    Label52: TLabel;
    edvprz: TdxMaskEdit;
    Label53: TLabel;
    edrper: TdxMaskEdit;
    edrprz: TdxMaskEdit;
    Label54: TLabel;
    cad_pro_grdGRD_STAV: TIBStringField;
    cbcclf: TdxPickEdit;
    dbgaviGRD_CPRO: TdxDBGridMaskColumn;
    dbgaviGRD_DCOR: TdxDBGridPickColumn;
    dbgaviGRD_PREC: TdxDBGridMaskColumn;
    dbgaviGRD_PPRO: TdxDBGridMaskColumn;
    dbgaviGRD_PDSC: TdxDBGridMaskColumn;
    dbgaviGRD_STAV: TdxDBGridPickColumn;
    dbgtecGRD_CPRO: TdxDBGridMaskColumn;
    dbgtecGRD_DCOR: TdxDBGridPickColumn;
    dbgtecGRD_PCOR: TdxDBGridMaskColumn;
    dbgtecGRD_STAV: TdxDBGridPickColumn;
    dbgtecGRD_PREC: TdxDBGridMaskColumn;
    dbgtecGRD_PPRO: TdxDBGridMaskColumn;
    dbgtecGRD_PDSC: TdxDBGridMaskColumn;
    ped_ven_ite: TIBQuery;
    cad_pro_imgPRO_FOT8: TBlobField;
    cad_pro_imgPRO_INS8: TBlobField;
    cad_pro_imgPRO_DEF8: TBlobField;
    tsapro: TdxTabSheet;
    edapro: TdxMemo;
    tsobsf: TdxTabSheet;
    edobsf: TdxMemo;
    tsout: TdxTabSheet;
    Label2: TLabel;
    Label13: TLabel;
    edcust: TdxMaskEdit;
    edpcom: TdxMaskEdit;
    Label34: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    edsprc: TdxMaskEdit;
    edspro: TdxMaskEdit;
    edsdsc: TdxMaskEdit;
    edsper: TdxMaskEdit;
    edsprz: TdxMaskEdit;
    Bevel13: TBevel;
    Bevel17: TBevel;
    tslav: TdxTabSheet;
    cad_pro_imgPRO_ONS1: TIBStringField;
    cad_pro_imgPRO_ONS2: TIBStringField;
    cad_pro_imgPRO_ONS3: TIBStringField;
    cad_pro_imgPRO_ONS4: TIBStringField;
    cad_pro_imgPRO_ONS5: TIBStringField;
    cad_pro_imgPRO_ONS6: TIBStringField;
    cad_pro_imgPRO_ONS7: TIBStringField;
    cad_pro_imgPRO_ONS8: TIBStringField;
    cad_pro_grdGRD_CCLF: TIBStringField;
    dbgaviGRD_CCLF: TdxDBGridMaskColumn;
    Label66: TLabel;
    edclib: TdxMaskEdit;
    Panel2: TPanel;
    dbgcon: TdxDBGrid;
    dbgconGRD_CPRO: TdxDBGridMaskColumn;
    dbgconGRD_DCOR: TdxDBGridPickColumn;
    dbgconGRD_CGRD: TdxDBGridPickColumn;
    dbgconGRD_PREC: TdxDBGridMaskColumn;
    dbgconGRD_PPRO: TdxDBGridMaskColumn;
    dbgconGRD_PDSC: TdxDBGridMaskColumn;
    dbgconGRD_VPRC: TdxDBGridMaskColumn;
    dbgconGRD_RPRC: TdxDBGridMaskColumn;
    dbgconGRD_SPRC: TdxDBGridMaskColumn;
    dbgconGRD_STAV: TdxDBGridPickColumn;
    SpeedBar5: TSpeedBar;
    SpeedbarSection17: TSpeedbarSection;
    SpeedbarSection18: TSpeedbarSection;
    SpeedbarSection19: TSpeedbarSection;
    SpeedbarSection20: TSpeedbarSection;
    conI: TSpeedItem;
    conA: TSpeedItem;
    conE: TSpeedItem;
    conS: TSpeedItem;
    conC: TSpeedItem;
    GroupBox1: TGroupBox;
    edgini: TdxEdit;
    Label67: TLabel;
    edgfim: TdxEdit;
    Label68: TLabel;
    Label69: TLabel;
    cbdcor: TdxPickEdit;
    btnok: TButton;
    cbdfor: TdxPickEdit;
    edcbar: TACBrBarCode;
    cad_pro_grdGRD_ES10: TIntegerField;
    cad_pro_grdGRD_CO10: TSmallintField;
    cad_pro_grdGRD_ES11: TIntegerField;
    cad_pro_grdGRD_CO11: TSmallintField;
    cad_pro_grdGRD_ES12: TIntegerField;
    cad_pro_grdGRD_CO12: TSmallintField;
    cad_pro_grdGRD_ES13: TIntegerField;
    cad_pro_grdGRD_CO13: TSmallintField;
    cad_pro_grdGRD_ES14: TIntegerField;
    cad_pro_grdGRD_CO14: TSmallintField;
    cad_pro_grdGRD_ES15: TIntegerField;
    cad_pro_grdGRD_CO15: TSmallintField;
    cad_pro_grdGRD_ES16: TIntegerField;
    cad_pro_grdGRD_CO16: TSmallintField;
    cad_pro_grdGRD_ES17: TIntegerField;
    cad_pro_grdGRD_CO17: TSmallintField;
    cad_pro_grdGRD_ES18: TIntegerField;
    cad_pro_grdGRD_CO18: TSmallintField;
    cad_pro_grdGRD_ES19: TIntegerField;
    cad_pro_grdGRD_CO19: TSmallintField;
    cad_pro_grdGRD_VPRC: TFloatField;
    cad_pro_grdGRD_PREC: TFloatField;
    cad_pro_grdGRD_RPRC: TFloatField;
    cad_pro_grdGRD_SPRC: TFloatField;
    cad_pro_grdGRD_PPRO: TFloatField;
    dbgaviGRD_VPRC: TdxDBGridMaskColumn;
    dbgaviGRD_RPRC: TdxDBGridMaskColumn;
    dbgtecGRD_VPRC: TdxDBGridMaskColumn;
    dbgtecGRD_RPRC: TdxDBGridMaskColumn;
    dbgaviGRD_SPRC: TdxDBGridMaskColumn;
    dbgtecGRD_SPRC: TdxDBGridMaskColumn;
    pcCON: TdxPageControl;
    tsCON: TdxTabSheet;
    rgcont: TPanel;
    Label26: TLabel;
    cbccst: TdxImageEdit;
    edpipi: TdxEdit;
    Label31: TLabel;
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
    cbdens: TdxPickEdit;
    Label3: TLabel;
    Label5: TLabel;
    cbtitf: TdxPickEdit;
    cad_proPRO_DENS: TIBStringField;
    cad_proPRO_TITF: TIBStringField;
    tab_clf: TIBDataSet;
    tab_clfID: TIntegerField;
    tab_clfCLF_CCLF: TIBStringField;
    tab_clfCLF_VI04: TIBBCDField;
    tab_clfCLF_VI07: TIBBCDField;
    tab_clfCLF_VI12: TIBBCDField;
    tab_clfCLF_UF: TIBStringField;
    cad_pro_ori: TIBDataSet;
    cad_pro_oriID: TIntegerField;
    cad_pro_oriPRO_CDEP: TIntegerField;
    cad_pro_oriPRO_CART: TIBStringField;
    cad_pro_oriPRO_ORIG: TIBStringField;
    BILA_BMP: TBevel;
    BILA_BMP7: TBevel;
    BILA_BMP6: TBevel;
    BILA_BMP5: TBevel;
    BILA_BMP4: TBevel;
    BILA_BMP3: TBevel;
    BILA_BMP2: TBevel;
    BILA_BMP1: TBevel;
    ILA_BMP1: TImage;
    ILA_BMP3: TImage;
    ILA_BMP4: TImage;
    ILA_BMP5: TImage;
    ILA_BMP6: TImage;
    ILA_BMP7: TImage;
    ILA_BMP2: TImage;
    BILA_BMP8: TBevel;
    ILA_BMP8: TImage;
    LAILA_BMP1: TLabel;
    LAILA_BMP2: TLabel;
    LAILA_BMP3: TLabel;
    LAILA_BMP4: TLabel;
    LAILA_BMP5: TLabel;
    LAILA_BMP6: TLabel;
    LAILA_BMP7: TLabel;
    LAILA_BMP8: TLabel;
    EDILA_INS1: TdxEdit;
    EDILA_INS2: TdxEdit;
    EDILA_INS3: TdxEdit;
    EDILA_INS4: TdxEdit;
    EDILA_INS5: TdxEdit;
    EDILA_INS6: TdxEdit;
    EDILA_INS7: TdxEdit;
    EDILA_INS8: TdxEdit;
    procedure FormCreate(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure sbfotoClick(Sender: TObject);
    procedure imagDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edpipiValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure siINCClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure siSClick(Sender: TObject);
    procedure siCANClick(Sender: TObject);
    procedure cad_pro_comAfterCancel(DataSet: TDataSet);
    procedure cad_pro_comAfterPost(DataSet: TDataSet);
    procedure cad_pro_comBeforeCancel(DataSet: TDataSet);
    procedure cad_pro_comNewRecord(DataSet: TDataSet);
    procedure dbgcomKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cad_pro_comAfterEdit(DataSet: TDataSet);
    procedure cad_proBeforePost(DataSet: TDataSet);
    procedure grdIClick(Sender: TObject);
    procedure grdAClick(Sender: TObject);
    procedure grdEClick(Sender: TObject);
    procedure grdSClick(Sender: TObject);
    procedure grdCClick(Sender: TObject);
    procedure cad_pro_grdAfterCancel(DataSet: TDataSet);
    procedure cad_pro_grdAfterInsert(DataSet: TDataSet);
    procedure cad_pro_grdBeforeCancel(DataSet: TDataSet);
    procedure sbtab_corClick(Sender: TObject);
    procedure cad_pro_grdNewRecord(DataSet: TDataSet);
    procedure dbgaviCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure aviIClick(Sender: TObject);
    procedure aviAClick(Sender: TObject);
    procedure aviEClick(Sender: TObject);
    procedure aviSClick(Sender: TObject);
    procedure aviCClick(Sender: TObject);
    procedure cad_pro_grdAfterPost(DataSet: TDataSet);
    procedure edpproValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpdscValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvprcValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvproValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvdscValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpcomValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcustValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edrendValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edlargValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edmetrValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpscnValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpsmrValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edgramValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edutilValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edelacValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edelasValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure dbgaviKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgtecKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edrprcValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edrproValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edrdscValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure eddproKeyPress(Sender: TObject; var Key: Char);
    procedure sbfot2Click(Sender: TObject);
    procedure sbfot3Click(Sender: TObject);
    procedure sbfot4Click(Sender: TObject);
    procedure sbfot5Click(Sender: TObject);
    procedure sbfot6Click(Sender: TObject);
    procedure sbfot7Click(Sender: TObject);
    procedure imag2DblClick(Sender: TObject);
    procedure imag3DblClick(Sender: TObject);
    procedure imag4DblClick(Sender: TObject);
    procedure imag5DblClick(Sender: TObject);
    procedure imag6DblClick(Sender: TObject);
    procedure imag7DblClick(Sender: TObject);
    procedure cad_pro_grdBeforePost(DataSet: TDataSet);
    procedure dbgconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edprecValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpperValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpprzValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvperValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvprzValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edrperValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edrprzValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbstavExit(Sender: TObject);
    procedure cad_pro_comAfterDelete(DataSet: TDataSet);
    procedure cbccstExit(Sender: TObject);
    procedure cbdcatExit(Sender: TObject);
    procedure edsprcValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edsproValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edsdscValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edsperValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edsprzValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbcclfExit(Sender: TObject);
    procedure edvoscValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvofdValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvocxValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edclibValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edgfimValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure btnokClick(Sender: TObject);
    procedure edginiValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbdforExit(Sender: TObject);
    procedure tsggrdShow(Sender: TObject);
    procedure dbgaviGRD_PRECValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgaviGRD_PPROValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgaviGRD_VPRCValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgaviGRD_RPRCValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgaviGRD_SPRCValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgtecGRD_PRECValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgconGRD_PRECValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgtecGRD_PPROValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgconGRD_PPROValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgtecGRD_VPRCValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgconGRD_VPRCValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgtecGRD_RPRCValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgconGRD_RPRCValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgtecGRD_SPRCValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgconGRD_SPRCValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgaviGRD_DCORValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure edcartValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure ILA_BMP1Click(Sender: TObject);
  private
    procedure ABRE_GRADE;
    procedure MONTA_COMPOSICAO;
    procedure ABRE_COMPOSICAO;
    procedure NOVA_REFERENCIA;
    procedure ALTERA_REFERENCIA;
    procedure MUDA_REFERENCIA;
//    procedure PESQUISA_DUPLICIDADE;
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
    procedure carregaFot2(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
    procedure carregaFot3(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
    procedure carregaFot4(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
    procedure carregaFot5(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
    procedure carregaFot6(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
    procedure carregaFot7(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
    procedure tab_prc(w: word);
    { Private declarations }
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmcad_pro_edi: Tfrmcad_pro_edi;

implementation

uses uPrincipal, pcad_for_edi, pcad_pro, peti_sel, ptab_cor;

{$R *.dfm}

procedure Tfrmcad_pro_edi.tab_prc(w: word);
begin
  if cad_pro_grd.State in [dsEdit,dsInsert] then
  cad_pro_grdGRD_ESTO.Value := w;
end;


{procedure Tfrmcad_pro_edi.PESQUISA_DUPLICIDADE;
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_PRO');
    SQL.Add('WHERE  PRO_CART = '''+edcart.Text+'''');
    Open;

    if not fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_CAD_PRO,0) FROM RDB$DATABASE');
      Open;
      edcart.Text := copy(edcart.Text,1,3)+inttostr(fields[0].AsInteger+1);

      try
        cad_pro_grd.DisableControls;
        cad_pro_grd.First;

        while not cad_pro_grd.Eof do
        begin
          cad_pro_grd.Edit;
          cad_pro_grdGRD_CART.Value := edcart.Text;
          cad_pro_grd.Post;
          cad_pro_grd.Next;
        end;
      finally
        cad_pro_grd.First;
        cad_pro_grd.EnableControls;
      end;
    end;
  end;
end;}

procedure Tfrmcad_pro_edi.MUDA_REFERENCIA;
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_PRO');
    SQL.Add('WHERE  PRO_CART = '''+edcart.Text+'''');
    Open;

    if not fields[0].IsNull then
    begin
      edcart.Text := cad_proPRO_CART.AsString;
      edcart.SetFocus;

      raise exception.Create('Referencia já cadastrada !');
    end;
  end;

  ped_ven_ite.Close;
  ped_ven_ite.Params[0].Value := cad_proPRO_CART.AsString;
  ped_ven_ite.Open;

  if not ped_ven_ite.Fields[0].IsNull then
  begin
    edcart.Text := cad_proPRO_CART.AsString;
    edcart.SetFocus;

    raise exception.Create('Referencia original '+cad_proPRO_CART.AsString+' possui pedidos de vendas efetuados.');
  end else
  begin
    ped_ven_ite.Close;
    ped_ven_ite.Params[0].Value := edcart.Text;
    ped_ven_ite.Open;

    if not ped_ven_ite.Fields[0].IsNull then
    begin
      edcart.Text := cad_proPRO_CART.AsString;
      edcart.SetFocus;
      
      raise exception.Create('Referencia desejada está comprometida com alguns pedidos de vendas.');
    end;
  end;

  edcfor.Tag := 1;
  
  try
    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_COM');
      SQL.Add('SET    COM_CART = '''+edcart.Text+'''');
      ExecSQL;
      tSHEILD.CommitRetaining;
    end;
    cad_pro_com.Close;
    cad_pro_com.Open;  

    cad_pro_grd.DisableControls;
    cad_pro_grd.First;

    while not cad_pro_grd.Eof do
    begin
      cad_pro_grd.Edit;
      cad_pro_grdGRD_CART.Value := trim(edcart.Text);
      cad_pro_grdGRD_CPRO.Value := cad_pro_grdGRD_CART.AsString+'.'+oStrZero(cad_pro_grdGRD_CCOR.AsInteger,4);
      cad_pro_grd.Post;
      cad_pro_grd.Next;
    end;
  finally
    cad_pro_grd.EnableControls;
  end;
end;

procedure Tfrmcad_pro_edi.ABRE_COMPOSICAO;
begin
  if not tSHEILD.Active then
     tSHEILD.StartTransaction;

  with cad_pro_com do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM CAD_PRO_COM');
    ExecSQL;
    tSHEILD.CommitRetaining;

    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_PRO_COM');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   COM_CART,COM_BASE,COM_COMP,COM_QTDE FROM CAD_PRO_COM');
    SQL.Add('WHERE    COM_CART = '''+edcart.Text+'''');
    SQL.Add('ORDER BY ID');
    Open;

    while not eof do
    begin
      cad_pro_com.Append;
      cad_pro_comCOM_CART.Value := fields[0].AsString;
      cad_pro_comCOM_BASE.Value := fields[1].AsString;
      cad_pro_comCOM_COMP.Value := fields[2].AsString;
      cad_pro_comCOM_QTDE.Value := fields[3].AsFloat;
      cad_pro_com.Post;
      next;
    end;
  end;
  MONTA_COMPOSICAO;
end;

procedure Tfrmcad_pro_edi.ABRE_GRADE;
begin
  if not tSHEILD.Active then
  tSHEILD.StartTransaction;

  with cad_pro_grd do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM CAD_PRO_GRD');
    ExecSQL;
    tSHEILD.CommitRetaining;

    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_PRO_GRD');
    SelectSQL.Add('WHERE    GRD_STA = ''0''');
    Open;
  end;
end;

procedure Tfrmcad_pro_edi.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    imag.Tag   := 0;
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
  begin
    imag.Tag   := 1;
    BlobStream := tab.CreateBlobStream(valor,bmRead);
  end;

  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    imag.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmcad_pro_edi.carregaFot2(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    imag2.Tag  := 0;
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
  begin
    imag2.Tag  := 1;
    BlobStream := tab.CreateBlobStream(valor,bmRead);
  end;

  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    imag2.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmcad_pro_edi.carregaFot3(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    imag3.Tag  := 0;
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
  begin
    imag3.Tag  := 1;
    BlobStream := tab.CreateBlobStream(valor,bmRead);
  end;

  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    imag3.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmcad_pro_edi.carregaFot4(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    imag4.Tag  := 0;
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
  begin
    imag4.Tag  := 1;
    BlobStream := tab.CreateBlobStream(valor,bmRead);
  end;

  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    imag4.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmcad_pro_edi.carregaFot5(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    imag5.Tag  := 0;
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
  begin
    imag5.Tag  := 1;
    BlobStream := tab.CreateBlobStream(valor,bmRead);
  end;

  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    imag5.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmcad_pro_edi.carregaFot6(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    imag6.Tag  := 0;
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
  begin
    imag6.Tag  := 1;
    BlobStream := tab.CreateBlobStream(valor,bmRead);
  end;

  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    imag6.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmcad_pro_edi.carregaFot7(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    imag7.Tag  := 0;
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
  begin
    imag7.Tag  := 1;
    BlobStream := tab.CreateBlobStream(valor,bmRead);
  end;

  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    imag7.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmcad_pro_edi.FormCreate(Sender: TObject);
begin
  tsggrd.TabVisible := (frmprincipal.parametrosPAR_GRAD.AsString = '1');
  tsgavi.TabVisible := (frmprincipal.parametrosPAR_TIPO.AsString = '1');
  tsgcon.TabVisible := ((frmprincipal.parametrosPAR_TIPO.AsString = '2') or (frmprincipal.parametrosPAR_TIPO.AsString = '5'));
  tsgtec.TabVisible := ((frmprincipal.parametrosPAR_TIPO.AsString = '0') or (frmprincipal.parametrosPAR_TIPO.AsString = '4'));

  if frmprincipal.parametrosPAR_TIPO.AsString = '0' then
  begin
    dbgaviGRD_PREC.DisableEditor := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Preço de Venda Normal'  ,false);
    dbgaviGRD_PPRO.DisableEditor := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Preço de Venda Promoção',false);
    dbgaviGRD_PDSC.DisableEditor := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Desconto'               ,false);
  end
  else if frmprincipal.parametrosPAR_TIPO.AsString = '1' then
  begin
    dbgtecGRD_PREC.DisableEditor := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Preço de Venda Normal',false);
    dbgtecGRD_PPRO.DisableEditor := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Preço de Venda Promoção',false);
    dbgtecGRD_PDSC.DisableEditor := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Desconto'               ,false)
  end;
  
  ladfor.Visible := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Fornecedores','Cadastro','Permissões Gerais',false);
  cbdfor.Visible := ladfor.Visible;
  
  gbfoto.Enabled := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Foto de Catálogo',false);
  edprec.Enabled := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Preço de Venda Normal'  ,false);
  edvprc.Enabled := edprec.Enabled;
  edsprc.Enabled := edprec.Enabled;
  edrprc.Enabled := edprec.Enabled;
  edppro.Enabled := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Preço de Venda Promoção',false);
  edvpro.Enabled := edppro.Enabled;
  edspro.Enabled := edppro.Enabled;
  edrpro.Enabled := edppro.Enabled;
  edpdsc.Enabled := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Desconto'               ,false);
  edvdsc.Enabled := edpdsc.Enabled;
  edsdsc.Enabled := edpdsc.Enabled;
  edrdsc.Enabled := edpdsc.Enabled;
  edpper.Enabled := edprec.Enabled;
  edpprz.Enabled := edprec.Enabled;
  edvper.Enabled := edprec.Enabled;
  edsper.Enabled := edprec.Enabled;
  edvprz.Enabled := edprec.Enabled;
  edsprz.Enabled := edprec.Enabled;
  edrper.Enabled := edprec.Enabled;
  edrprz.Enabled := edprec.Enabled;

  tscomp.Enabled := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Composição',false);
  edpcom.Enabled := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Preço de Compra',false);
  edcust.Enabled := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Preço de Custo',false);
  edclib.Enabled := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Preço de Custo',false);
  rgcont.Enabled := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Contábil',false);

  pcMAIN.ActivePageIndex := 0;
  pcobs.ActivePageIndex  := 0;
  pcprc.ActivePageIndex  := 0;
  pcCON.ActivePageIndex  := 0;

  inherited;

  top  := 0;
  left := 0;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PRO_DENS FROM CAD_PRO');
    SQL.Add('GROUP BY PRO_DENS');
    SQL.Add('ORDER BY PRO_DENS');
    Open;

    while not eof do
    begin
      cbdens.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   PRO_TITF FROM CAD_PRO');
    SQL.Add('GROUP BY PRO_TITF');
    SQL.Add('ORDER BY PRO_TITF');
    Open;

    while not eof do
    begin
      cbtitf.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   EMB_DEMB FROM TAB_EMB');
    SQL.Add('WHERE    EMB_STA = ''0''');
    SQL.Add('ORDER BY EMB_DEMB');
    Open;
    while not eof do
    begin
      cbdemb.Values.Add(fields[0].AsString);
      cbdemb.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   COL_DCOL FROM TAB_COL');
    SQL.Add('WHERE    COL_STA = ''0''');
    SQL.Add('ORDER BY COL_DCOL');
    Open;
    while not eof do
    begin
      cbdcol.Values.Add(fields[0].AsString);
      cbdcol.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT PRO_CCLF FROM CAD_PRO');
    SQL.Add('WHERE  CHAR_LENGTH(PRO_CCLF) = 8');
    SQL.Add('GROUP  BY 1');
    SQL.Add('ORDER  BY 1');
    Open;

    while not eof do
    begin
      cbcclf.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   GRP_DGRP FROM CAD_PRO_GRP');
    SQL.Add('WHERE    GRP_STA = ''0''');
//    SQL.Add('AND      GRP_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    SQL.Add('ORDER BY GRP_DGRP');
    Open;
    while not eof do
    begin
      cbdgrp.Values.Add(fields[0].AsString);
      cbdgrp.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   CAT_DCAT FROM CAD_PRO_CAC');
    SQL.Add('WHERE    CAT_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    SQL.Add('AND      CAT_STA = ''0''');
    SQL.Add('ORDER BY CAT_DCAT');
    Open;
    while not eof do
    begin
      cbdcat.Values.Add(fields[0].AsString);
      cbdcat.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   COR_DCOR FROM TAB_COR');
    SQL.Add('WHERE    COR_STA = ''0''');

    SQL.Add('ORDER BY COR_DCOR');
    Open;
    while not eof do
    begin
      dbgaviGRD_DCOR.Items.Add(fields[0].AsString);
      dbgtecGRD_DCOR.Items.Add(fields[0].AsString);
      dbgconGRD_DCOR.Items.Add(fields[0].AsString);
      cbdcor.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   GRD_CGRD FROM TAB_GRD');
    SQL.Add('WHERE    GRD_STA = ''0''');
    SQL.Add('ORDER BY GRD_CGRD');
    Open;
    while not eof do
    begin
      dbgconGRD_CGRD.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT FOR_FANT FROM CAD_FOR');
    SQL.Add('WHERE  FOR_STA = ''0''');
    SQL.Add('ORDER  BY FOR_FANT');
    Open;

    while not eof do
    begin
      cbdfor.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   UNI_REFE FROM TAB_UNI');
    SQL.Add('WHERE    UNI_STA = ''0''');
    SQL.Add('ORDER BY UNI_REFE');
    Open;

    while not eof do
    begin
      cbduni.Values.Add(fields[0].AsString);
      cbduni.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   ORI_DORI FROM TAB_ORI');
    SQL.Add('WHERE    ORI_STA = ''0''');
    SQL.Add('ORDER BY ORI_DORI');
    Open;

    while not eof do
    begin
      cbdori.Values.Add(fields[0].AsString);
      cbdori.Descriptions.Add(fields[0].AsString);
      next;
    end;
  end;
end;

procedure Tfrmcad_pro_edi.siSAVClick(Sender: TObject);
var
  ccol,cdfo,cgrp,cemb,ccat: integer;
  aprc: string;
  ldsc: double;
  foto,fot2,fot3,fot4,fot5,fot6,fot7,fot8,pic1,pic2,pic3,pic4,pic5,pic6,pic7,pic8: TStream;
  rgrp,rcat: string;
begin
  activecontrol := nil;

  if tag = 1 then
  begin
    if frmprincipal.cad_usuUSU_ADM.AsString <> '1' then
    begin
      if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Permissões Gerais',false) then
         raise exception.Create('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
    end;
  end;

  if tag = 0 then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT PRO_DPRO,PRO_DUSU FROM CAD_PRO');
    SQL.Add('WHERE  PRO_CART = '''+edcart.Text+'''');
    Open;

    if not fields[0].IsNull then
    raise exception.Create('Código de produto já cadastrado !'+#13+'Descrição: '+fields[0].AsString+#13+'Usuário: '+fields[1].AsString);
  end;

  if edcart.Text = '' then
  begin
    edcart.SetFocus;
    raise exception.Create('Referencia não informada !');
  end;

  if cbdfor.Text = '' then
  begin
    if (cbdfor.Visible) and (cbdfor.Enabled) then
    cbdfor.SetFocus;
    raise exception.Create('Fornecedor não informado !');
  end;

  if cbdori.Text = '' then
  begin                                
    pcmain.ActivePage := tstec;
    cbdori.SetFocus;
    raise exception.Create('Origem da mercadoria não informada !');
  end;

  if cbrepr.Text = '' then
  begin
    pcmain.ActivePage := tstec;
    cbrepr.SetFocus;
    raise exception.Create('Finalidade do produto não informada !');
  end;

  if cbduni.Text = '' then
  begin
    pcmain.ActivePage := tstec;
    cbduni.SetFocus;
    raise exception.Create('Unidade de medida não informada !');
  end;

  if (cbcclf.Text = '') and (cbstav.Text = 'ATIVO') then
  begin
    cbcclf.SetFocus;
    raise exception.Create('N.C.M. não informado !');
  end;

  if ((cbccst.Text = '0') and (cbdori.Text <> 'BRASIL')) or
     ((cbccst.Text = '1') and (cbdori.Text = 'BRASIL')) then
  begin
    pcmain.ActivePage := tstec;
    cbdori.SetFocus;
    raise exception.Create('Origem da mercadoria incorreta para o tipo de C.S.T. !');
  end;

  if frmprincipal.parametrosPAR_GRAD.AsString = '1' then
  begin
    if cad_pro_grd.State in [dsEdit,dsInsert] then
    begin
      if cad_pro_grdGRD_DCOR.AsString = '' then
         cad_pro_grd.Cancel
      else
         cad_pro_grd.Post;
    end;
    cad_pro_grd.First;
  end;

  foto := TMemoryStream.Create;
  if (imag.Picture.Graphic <> nil) and (imag.Tag = 1) then
     imag.Picture.Graphic.SaveToStream(foto);

  fot2 := TMemoryStream.Create;
  if (imag2.Picture.Graphic <> nil) and (imag2.Tag = 1) then
     imag2.Picture.Graphic.SaveToStream(fot2);

  fot3 := TMemoryStream.Create;
  if (imag3.Picture.Graphic <> nil) and (imag3.Tag = 1) then
     imag3.Picture.Graphic.SaveToStream(fot3);

  fot4 := TMemoryStream.Create;
  if (imag4.Picture.Graphic <> nil) and (imag4.Tag = 1) then
     imag4.Picture.Graphic.SaveToStream(fot4);

  fot5 := TMemoryStream.Create;
  if (imag5.Picture.Graphic <> nil) and (imag5.Tag = 1) then
     imag5.Picture.Graphic.SaveToStream(fot5);

  fot6 := TMemoryStream.Create;
  if (imag6.Picture.Graphic <> nil) and (imag6.Tag = 1) then
     imag6.Picture.Graphic.SaveToStream(fot6);

  fot7 := TMemoryStream.Create;
  if (imag7.Picture.Graphic <> nil) and (imag7.Tag = 1) then
     imag7.Picture.Graphic.SaveToStream(fot7);

  pic1 := TMemoryStream.Create;
  if ILA_BMP1.Picture.Graphic <> nil then
     ILA_BMP1.Picture.Graphic.SaveToStream(pic1);
  pic2 := TMemoryStream.Create;
  if ILA_BMP2.Picture.Graphic <> nil then
     ILA_BMP2.Picture.Graphic.SaveToStream(pic2);
  pic3 := TMemoryStream.Create;
  if ILA_BMP3.Picture.Graphic <> nil then
     ILA_BMP3.Picture.Graphic.SaveToStream(pic3);
  pic4 := TMemoryStream.Create;
  if ILA_BMP4.Picture.Graphic <> nil then
     ILA_BMP4.Picture.Graphic.SaveToStream(pic4);
  pic5 := TMemoryStream.Create;
  if ILA_BMP5.Picture.Graphic <> nil then
     ILA_BMP5.Picture.Graphic.SaveToStream(pic5);
  pic6 := TMemoryStream.Create;
  if ILA_BMP6.Picture.Graphic <> nil then
     ILA_BMP6.Picture.Graphic.SaveToStream(pic6);
  pic7 := TMemoryStream.Create;
  if ILA_BMP7.Picture.Graphic <> nil then
     ILA_BMP7.Picture.Graphic.SaveToStream(pic7);
  pic8 := TMemoryStream.Create;
  if ILA_BMP8.Picture.Graphic <> nil then
     ILA_BMP8.Picture.Graphic.SaveToStream(pic8);

  with consulta do
  begin
    cemb := 0;
    if cbdemb.Text <> '' then
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM TAB_EMB');
      SQL.Add('WHERE  EMB_DEMB = '''+cbdemb.Text+'''');
      Open;
      cemb := fields[0].AsInteger;
    end;

    ccol := 0;
    if cbdcol.Text <> '' then
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM TAB_COL');
      SQL.Add('WHERE  COL_DCOL = '''+cbdcol.Text+'''');
      Open;
      ccol := fields[0].AsInteger;
    end;

    cdfo := 0;
    if cbdfor.Text <> '' then
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_FOR');
      SQL.Add('WHERE  FOR_FANT = '''+cbdfor.Text+'''');
      Open;
      cdfo := fields[0].AsInteger;
    end;

    if cdfo = 0 then
    begin
      if (cbdfor.Visible) and (cbdfor.Enabled) then
      cbdfor.SetFocus;
      raise exception.Create('Fornecedor não informado !');
    end;

    aprc := '0';
    ldsc := 0;
    cgrp := 0;
    rgrp := '';

    if cbdgrp.Text <> '' then
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,GRP_CGRP,GRP_APRC,GRP_LDSC FROM CAD_PRO_GRP');
      SQL.Add('WHERE  GRP_DGRP = '''+cbdgrp.Text+'''');
      Open;
      cgrp := fields[0].AsInteger;
      rgrp := fields[1].AsString;
      aprc := fields[2].AsString;
      ldsc := fields[3].AsFloat;
    end;

    ccat := 0;
    rcat := '';
    if cbdcat.Text <> '' then
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,CAT_CCAT FROM CAD_PRO_CAC');
      SQL.Add('WHERE  CAT_DCAT = '''+cbdcat.Text+'''');
      SQL.Add('AND    CAT_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      Open;
      ccat := fields[0].AsInteger;
      rcat := fields[1].AsString;
    end;
  end;

  with consulta do
  begin
    if (edcart.Text <> cad_proPRO_CART.AsString) and (edcfor.Tag = 1) then
    begin
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_IMG');
      SQL.Add('WHERE  PRO_CART = '''+cad_proPRO_CART.AsString+'''');
      ExecSQL;

      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_COM');
      SQL.Add('WHERE  COM_CART = '''+cad_proPRO_CART.AsString+'''');
      ExecSQL;
    end;

    SQL.Clear;
    SQL.Add('DELETE FROM CAD_PRO_COM');
    SQL.Add('WHERE  COM_CART = '''+edcart.Text+'''');
    ExecSQL;
  end;

//  if (frmprincipal.parametrosPAR_RFOR.AsString = '1') and (frmcad_pro_edi.Tag = 0) then
//  PESQUISA_DUPLICIDADE;

  try
    try
      if cad_pro_grd.State in [dsEdit,dsInsert] then
      cad_pro_grd.Post;

      cad_pro_grd.Close;
      cad_pro_grd.Open;
      if cad_pro_grd.RecordCount > 0 then
      begin
        while not cad_pro_grd.Eof do
        begin
          ibSP.StoredProcName := 'SP_CAD_PRO';
          ibSP.Prepare;

          consulta.Tag := cad_pro_grdGRD_IPRO.AsInteger;
          if cad_pro_grdGRD_IPRO.AsInteger = 0 then
          with consulta do
          begin
            SQL.Clear;
            SQL.Add('SELECT GEN_ID(ID_NO_CAD_PRO, 0) FROM RDB$DATABASE');
            Open;
            consulta.Tag := fields[0].AsInteger + 1;
          end;

          ibSP.ParamByName('CBAR').Value := oRETBarCode(IntToStr(consulta.Tag),cad_pro_grdGRD_CPRO.AsString);
          ibSP.ParamByName('ID').Value   := cad_pro_grdGRD_IPRO.AsInteger;
          ibSP.ParamByName('DCAD').Value := eddcad.Text;
          ibSP.ParamByName('DALT').Value := strtodate(SLPrincipal.Values['data_sistema']);
          ibSP.ParamByName('DUSU').Value := frmprincipal.cad_usuUSU_DUSU.AsString;
          ibSP.ParamByName('CART').Value := cad_pro_grdGRD_CART.AsString;
          ibSP.ParamByName('CPRO').Value := cad_pro_grdGRD_CPRO.AsString;;
          ibSP.ParamByName('CFOR').Value := edcfor.Text;
          ibSP.ParamByName('DPRO').Value := eddpro.Text;
          ibSP.ParamByName('DPR2').Value := eddpr2.Text;
          ibSP.ParamByName('DPR3').Value := eddpr3.Text;
          ibSP.ParamByName('DPR4').Value := eddpr4.Text;
          ibSP.ParamByName('DPR5').Value := eddpr5.Text;
          ibSP.ParamByName('APRO').Value := edapro.Text;
          ibSP.ParamByName('OBSE').Value := edobse.Text;
          ibSP.ParamByName('OBSF').Value := edobsf.Text;
          ibSP.ParamByName('COMP').Value := edcomp.Text;
          ibSP.ParamByName('DUNI').Value := cbduni.Text;
          ibSP.ParamByName('GRAD').Value := cad_pro_grdGRD_CGRD.AsString;
          ibSP.ParamByName('CEMB').Value := cemb;
          ibSP.ParamByName('DEMB').Value := cbdemb.Text;
          ibSP.ParamByName('CGRP').Value := cgrp;
          ibSP.ParamByName('RGRP').Value := rgrp;
          ibSP.ParamByName('DGRP').Value := cbdgrp.Text;
          ibSP.ParamByName('APRC').Value := aprc;
          ibSP.ParamByName('LDSC').Value := ldsc;
          ibSP.ParamByName('CCAT').Value := ccat;
          ibSP.ParamByName('RCAT').Value := rcat;
          ibSP.ParamByName('DCAT').Value := cbdcat.Text;
          ibSP.ParamByName('CCOR').Value := cad_pro_grdGRD_CCOR.AsInteger;
          ibSP.ParamByName('RCOR').Value := cad_pro_grdGRD_RCOR.AsString;
          ibSP.ParamByName('DCOR').Value := cad_pro_grdGRD_DCOR.AsString;
          ibSP.ParamByName('CCOL').Value := ccol;
          ibSP.ParamByName('DCOL').Value := cbdcol.Text;
          ibSP.ParamByName('CDFO').Value := cdfo;
          ibSP.ParamByName('DORI').Value := cbdori.Text;
          ibSP.ParamByName('REPR').Value := cbrepr.Text;
          ibSP.ParamByName('CCST').Value := cbccst.Text;
          if cad_pro_grdGRD_CCLF.AsString <> '' then
          ibSP.ParamByName('CCLF').Value := cad_pro_grdGRD_CCLF.AsString else
          ibSP.ParamByName('CCLF').Value := cbcclf.Text;
          ibSP.ParamByName('METR').Value := edmetr.Text;
          ibSP.ParamByName('PESO').Value := edpeso.Text;
          ibSP.ParamByName('UTIL').Value := edutil.Text;
          ibSP.ParamByName('LARG').Value := edlarg.Text;
          ibSP.ParamByName('GRAM').Value := edgram.Text;
          ibSP.ParamByName('REND').Value := edrend.Text;
          ibSP.ParamByName('PSCN').Value := edpscn.Text;
          ibSP.ParamByName('PSMR').Value := edpsmr.Text;
          ibSP.ParamByName('ELAS').Value := edelas.Text;
          ibSP.ParamByName('ELAC').Value := edelac.Text;
          ibSP.ParamByName('STLN').Value := 'L';
          ibSP.ParamByName('STAL').Value := cbstal.Text;
          ibSP.ParamByName('DENS').Value := cbdens.Text;
          ibSP.ParamByName('TITF').Value := cbtitf.Text;
          ibSP.ParamByName('LAVA').Value := 'N';
          ibSP.ParamByName('STA').Value  := '0';
          ibSP.ParamByName('STAV').Value := copy(cad_pro_grdGRD_STAV.AsString,1,1);
          if copy(cad_pro_grdGRD_STAV.AsString,1,1) = '' then
          ibSP.ParamByName('STAV').Value := 'A';
          ibSP.ParamByName('PCOM').Value := edpcom.Text;
          ibSP.ParamByName('CUST').Value := edcust.Text;
          ibSP.ParamByName('CLIB').Value := edclib.Text;
          ibSP.ParamByName('PDSC').Value := cad_pro_grdGRD_PDSC.AsFloat;
          ibSP.ParamByName('PREC').Value := cad_pro_grdGRD_PREC.AsFloat;
          ibSP.ParamByName('PPRO').Value := cad_pro_grdGRD_PPRO.AsFloat;
          ibSP.ParamByName('VDSC').Value := edvdsc.Text;
          ibSP.ParamByName('SDSC').Value := edsdsc.Text;
          ibSP.ParamByName('VPRC').Value := cad_pro_grdGRD_VPRC.AsFloat;
          ibSP.ParamByName('SPRC').Value := cad_pro_grdGRD_SPRC.AsFloat;
          ibSP.ParamByName('VPRO').Value := edvpro.Text;
          ibSP.ParamByName('SPRO').Value := edspro.Text;
          ibSP.ParamByName('RDSC').Value := edrdsc.Text;
          ibSP.ParamByName('RPRC').Value := cad_pro_grdGRD_RPRC.AsFloat;
          ibSP.ParamByName('RPRO').Value := edrpro.Text;
          ibSP.ParamByName('PPRZ').Value := edpprz.Text;
          ibSP.ParamByName('PPER').Value := edpper.Text;
          ibSP.ParamByName('VPRZ').Value := edvprz.Text;
          ibSP.ParamByName('SPRZ').Value := edsprz.Text;
          ibSP.ParamByName('VPER').Value := edvper.Text;
          ibSP.ParamByName('SPER').Value := edsper.Text;
          ibSP.ParamByName('RPRZ').Value := edrprz.Text;
          ibSP.ParamByName('RPER').Value := edrper.Text;
          ibSP.ParamByName('PIPI').Value := edpipi.Text;
          ibSP.ParamByName('VOCX').Value := edvocx.Text;
          ibSP.ParamByName('VOSC').Value := edvosc.Text;
          ibSP.ParamByName('VOFD').Value := edvofd.Text;
          ibSP.ParamByName('CNA1').Value := edcna1.Text;
          ibSP.ParamByName('CNA2').Value := edcna2.Text;
          ibSP.ParamByName('PCOR').Value := cad_pro_grdGRD_PCOR.AsString;
          ibSP.ExecProc;
          IBTra.CommitRetaining;

          if cad_pro_grdGRD_ESTO.AsInteger = 1 then
          frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,cad_pro_grdGRD_CART.AsString,cad_pro_grdGRD_DCOR.AsString,'ATACADO - NORMAL'      ,ibSP.ParamByName('PREC').AsFloat) else
          if cad_pro_grdGRD_ESTO.AsInteger = 11 then
          frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,cad_pro_grdGRD_CPRO.AsString,cad_pro_grdGRD_DCOR.AsString,'ATACADO - NORMAL'      ,ibSP.ParamByName('PREC').AsFloat) else
          if cad_pro_grdGRD_ESTO.AsInteger = 2 then
          frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,cad_pro_grdGRD_CART.AsString,cad_pro_grdGRD_DCOR.AsString,'ATACADO - PROMOÇÃO'    ,ibSP.ParamByName('PPRO').AsFloat) else
          if cad_pro_grdGRD_ESTO.AsInteger = 22 then
          frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,cad_pro_grdGRD_CPRO.AsString,cad_pro_grdGRD_DCOR.AsString,'ATACADO - PROMOÇÃO'    ,ibSP.ParamByName('PPRO').AsFloat) else
          if cad_pro_grdGRD_ESTO.AsInteger = 3 then
          frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,cad_pro_grdGRD_CART.AsString,cad_pro_grdGRD_DCOR.AsString,'VAREJO - NORMAL'       ,ibSP.ParamByName('VPRC').AsFloat) else
          if cad_pro_grdGRD_ESTO.AsInteger = 33 then
          frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,cad_pro_grdGRD_CPRO.AsString,cad_pro_grdGRD_DCOR.AsString,'VAREJO - NORMAL'       ,ibSP.ParamByName('VPRC').AsFloat) else
          if cad_pro_grdGRD_ESTO.AsInteger = 4 then
          frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,cad_pro_grdGRD_CART.AsString,cad_pro_grdGRD_DCOR.AsString,'REPRESENTAÇÃO - NORMAL',ibSP.ParamByName('RPRC').AsFloat) else
          if cad_pro_grdGRD_ESTO.AsInteger = 44 then
          frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,cad_pro_grdGRD_CPRO.AsString,cad_pro_grdGRD_DCOR.AsString,'REPRESENTAÇÃO - NORMAL',ibSP.ParamByName('RPRC').AsFloat) else
          if cad_pro_grdGRD_ESTO.AsInteger = 5 then
          frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,cad_pro_grdGRD_CART.AsString,cad_pro_grdGRD_DCOR.AsString,'SITE - NORMAL'         ,ibSP.ParamByName('SPRC').AsFloat) else
          if cad_pro_grdGRD_ESTO.AsInteger = 55 then
          frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,cad_pro_grdGRD_CPRO.AsString,cad_pro_grdGRD_DCOR.AsString,'SITE - NORMAL'         ,ibSP.ParamByName('SPRC').AsFloat);

          cad_pro_grd.Next;
        end;
      end
      else
      begin
        ibSP.StoredProcName := 'SP_CAD_PRO';
        ibSP.Prepare;
        ibSP.ParamByName('ID').Value   := edid.Text;

        if edid.Text = '0' then
        with consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT GEN_ID(ID_NO_CAD_PRO, 0) FROM RDB$DATABASE');
          Open;
          edid.Text := inttostr(fields[0].AsInteger+1);
        end;

        ibSP.ParamByName('DCAD').Value := eddcad.Text;
        ibSP.ParamByName('DALT').Value := strtodate(SLPrincipal.Values['data_sistema']);
        ibSP.ParamByName('DUSU').Value := frmprincipal.cad_usuUSU_DUSU.AsString;
        ibSP.ParamByName('CART').Value := edcart.Text;
        ibSP.ParamByName('CPRO').Value := edcart.Text;
        ibSP.ParamByName('CFOR').Value := edcfor.Text;
        ibSP.ParamByName('CBAR').Value := oRETBarCode(edid.Text,edcart.Text);
        ibSP.ParamByName('DPRO').Value := eddpro.Text;
        ibSP.ParamByName('DPR2').Value := eddpr2.Text;
        ibSP.ParamByName('DPR3').Value := eddpr3.Text;
        ibSP.ParamByName('DPR4').Value := eddpr4.Text;
        ibSP.ParamByName('DPR5').Value := eddpr5.Text;
        ibSP.ParamByName('APRO').Value := edapro.Text;
        ibSP.ParamByName('OBSE').Value := edobse.Text;
        ibSP.ParamByName('OBSF').Value := edobsf.Text;
        ibSP.ParamByName('COMP').Value := edcomp.Text;
        ibSP.ParamByName('DUNI').Value := cbduni.Text;
        ibSP.ParamByName('GRAD').Value := '';
        ibSP.ParamByName('CEMB').Value := cemb;
        ibSP.ParamByName('DEMB').Value := cbdemb.Text;
        ibSP.ParamByName('CGRP').Value := cgrp;
        ibSP.ParamByName('RGRP').Value := rgrp;
        ibSP.ParamByName('DGRP').Value := cbdgrp.Text;
        ibSP.ParamByName('APRC').Value := aprc;
        ibSP.ParamByName('LDSC').Value := ldsc;
        ibSP.ParamByName('CCAT').Value := ccat;
        ibSP.ParamByName('RCAT').Value := rcat;
        ibSP.ParamByName('DCAT').Value := cbdcat.Text;
        ibSP.ParamByName('CCOR').Value := null;
        ibSP.ParamByName('RCOR').Value := null;
        ibSP.ParamByName('DCOR').Value := null;
        ibSP.ParamByName('CCOL').Value := ccol;
        ibSP.ParamByName('DCOL').Value := cbdcol.Text;
        ibSP.ParamByName('CDFO').Value := cdfo;
        ibSP.ParamByName('DORI').Value := cbdori.Text;
        ibSP.ParamByName('REPR').Value := cbrepr.Text;
        ibSP.ParamByName('CCST').Value := cbccst.Text;
        ibSP.ParamByName('CCLF').Value := cbcclf.Text;
        ibSP.ParamByName('METR').Value := edmetr.Text;
        ibSP.ParamByName('PESO').Value := edpeso.Text;
        ibSP.ParamByName('UTIL').Value := edutil.Text;
        ibSP.ParamByName('LARG').Value := edlarg.Text;
        ibSP.ParamByName('GRAM').Value := edgram.Text;
        ibSP.ParamByName('REND').Value := edrend.Text;
        ibSP.ParamByName('PSCN').Value := edpscn.Text;
        ibSP.ParamByName('PSMR').Value := edpsmr.Text;
        ibSP.ParamByName('ELAS').Value := edelas.Text;
        ibSP.ParamByName('ELAC').Value := edelac.Text;
        ibSP.ParamByName('STLN').Value := 'L';
        ibSP.ParamByName('STAL').Value := cbstal.Text;
        ibSP.ParamByName('DENS').Value := cbdens.Text;
        ibSP.ParamByName('TITF').Value := cbtitf.Text;
        ibSP.ParamByName('LAVA').Value := 'N';
        ibSP.ParamByName('STA').Value  := '0';
        ibSP.ParamByName('STAV').Value := cbstav.Text;
        ibSP.ParamByName('PCOM').Value := edpcom.Text;
        ibSP.ParamByName('CUST').Value := edcust.Text;
        ibSP.ParamByName('CLIB').Value := edclib.Text;
        ibSP.ParamByName('PDSC').Value := edpdsc.Text;
        ibSP.ParamByName('PREC').Value := edprec.Text;
        ibSP.ParamByName('PPRO').Value := edppro.Text;
        ibSP.ParamByName('VDSC').Value := edvdsc.Text;
        ibSP.ParamByName('SDSC').Value := edsdsc.Text;
        ibSP.ParamByName('VPRC').Value := edvprc.Text;
        ibSP.ParamByName('SPRC').Value := edsprc.Text;
        ibSP.ParamByName('VPRO').Value := edvpro.Text;
        ibSP.ParamByName('SPRO').Value := edspro.Text;
        ibSP.ParamByName('RDSC').Value := edrdsc.Text;
        ibSP.ParamByName('RPRC').Value := edrprc.Text;
        ibSP.ParamByName('RPRO').Value := edrpro.Text;
        ibSP.ParamByName('PPRZ').Value := edpprz.Text;
        ibSP.ParamByName('PPER').Value := edpper.Text;
        ibSP.ParamByName('VPRZ').Value := edvprz.Text;
        ibSP.ParamByName('SPRZ').Value := edsprz.Text;
        ibSP.ParamByName('VPER').Value := edvper.Text;
        ibSP.ParamByName('SPER').Value := edsper.Text;
        ibSP.ParamByName('RPRZ').Value := edrprz.Text;
        ibSP.ParamByName('RPER').Value := edrper.Text;
        ibSP.ParamByName('PIPI').Value := edpipi.Text;
        ibSP.ParamByName('VOCX').Value := edvocx.Text;
        ibSP.ParamByName('VOSC').Value := edvosc.Text;
        ibSP.ParamByName('VOFD').Value := edvofd.Text;
        ibSP.ParamByName('CNA1').Value := edcna1.Text;
        ibSP.ParamByName('CNA2').Value := edcna2.Text;
        ibSP.ParamByName('PCOR').Value := null;
        ibSP.ExecProc;
        IBTra.CommitRetaining;

        if edprec.HelpContext = 1 then
        frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,edcart.Text,'','ATACADO - NORMAL',oTextToValor(edprec.Text));

        if edppro.HelpContext = 1 then
        frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,edcart.Text,'','ATACADO - PROMOÇÃO',oTextToValor(edppro.Text));

        if edvprc.HelpContext = 1 then
        frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,edcart.Text,'','VAREJO - NORMAL',oTextToValor(edvprc.Text));

        if edvpro.HelpContext = 1 then
        frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,edcart.Text,'','VAREJO - PROMOÇÃO',oTextToValor(edvpro.Text));

        if edrprc.HelpContext = 1 then
        frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,edcart.Text,'','REPRESENTAÇÃO - NORMAL',oTextToValor(edrprc.Text));

        if edrpro.HelpContext = 1 then
        frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,edcart.Text,'','REPRESENTAÇÃO - PROMOÇÃO',oTextToValor(edrpro.Text));

        if edsprc.HelpContext = 1 then
        frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,edcart.Text,'','SITE - NORMAL',oTextToValor(edsprc.Text));

        if edspro.HelpContext = 1 then
        frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,edcart.Text,'','SITE - PROMOÇÃO',oTextToValor(edspro.Text));
      end;

      if edpcom.HelpContext = 1 then
      frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,edcart.Text,'','COMPRA',oTextToValor(edpcom.Text));

      if edcust.HelpContext = 1 then
      frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,edcart.Text,'','CUSTO',oTextToValor(edcust.Text));

      if edclib.HelpContext = 1 then
      frmprincipal.ATUALIZA_TABELA_PRECO(edcart.Text,edcart.Text,'','LIBERAÇÃO',oTextToValor(edclib.Text));

      if cad_pro_com.Active then
      try
        cad_pro_com.DisableControls;
        cad_pro_com.First;

        while not cad_pro_com.Eof do
        begin
          ibSP.StoredProcName  := 'SP_CAD_PRO_COM';
          ibSP.Prepare;

          ibSP.ParamByName('ID').Value   := 0;
          ibSP.ParamByName('CART').Value := cad_pro_comCOM_CART.AsString;
          ibSP.ParamByName('BASE').Value := cad_pro_comCOM_BASE.AsString;
          ibSP.ParamByName('COMP').Value := cad_pro_comCOM_COMP.AsString;
          ibSP.ParamByName('QTDE').Value := cad_pro_comCOM_QTDE.AsString;
          ibSP.ExecProc;

          cad_pro_com.Next;
        end;
      finally
        cad_pro_com.EnableControls;
      end;
          
      ibSP.StoredProcName  := 'SP_CAD_PRO_IMG';
      ibSP.Prepare;
      ibSP.ParamByName('ID').Value   := 0;
      ibSP.ParamByName('CART').Value := edcart.Text;
      ibSP.ParamByName('ONS1').Value := EDILA_INS1.Text;
      ibSP.ParamByName('ONS2').Value := EDILA_INS2.Text;
      ibSP.ParamByName('ONS3').Value := EDILA_INS3.Text;
      ibSP.ParamByName('ONS4').Value := EDILA_INS4.Text;
      ibSP.ParamByName('ONS5').Value := EDILA_INS5.Text;
      ibSP.ParamByName('ONS6').Value := EDILA_INS6.Text;
      ibSP.ParamByName('ONS7').Value := EDILA_INS7.Text;
      ibSP.ParamByName('ONS8').Value := EDILA_INS8.Text;

      if foto.Size > 0 then
         ibSP.ParamByName('FOTO').LoadFromStream(foto ,ftBlob)
      else
         ibSP.ParamByName('FOTO').Value := null;

      if fot2.Size > 0 then
         ibSP.ParamByName('FOT2').LoadFromStream(fot2 ,ftBlob)
      else
         ibSP.ParamByName('FOT2').Value := null;

      if fot3.Size > 0 then
         ibSP.ParamByName('FOT3').LoadFromStream(fot3 ,ftBlob)
      else
         ibSP.ParamByName('FOT3').Value := null;

      if fot4.Size > 0 then
         ibSP.ParamByName('FOT4').LoadFromStream(fot4 ,ftBlob)
      else
         ibSP.ParamByName('FOT4').Value := null;

      if fot5.Size > 0 then
         ibSP.ParamByName('FOT5').LoadFromStream(fot5 ,ftBlob)
      else
         ibSP.ParamByName('FOT5').Value := null;

      if fot6.Size > 0 then
         ibSP.ParamByName('FOT6').LoadFromStream(fot6 ,ftBlob)
      else
         ibSP.ParamByName('FOT6').Value := null;

      if fot7.Size > 0 then
         ibSP.ParamByName('FOT7').LoadFromStream(fot7 ,ftBlob)
      else
         ibSP.ParamByName('FOT7').Value := null;
      ibSP.ParamByName('FOT8').Value := null;

      if pic1.Size > 0 then
         ibSP.ParamByName('INS1').LoadFromStream(pic1,ftBlob)
      else
         ibSP.ParamByName('INS1').Value := null;

      if pic2.Size > 0 then
         ibSP.ParamByName('INS2').LoadFromStream(pic2,ftBlob)
      else
         ibSP.ParamByName('INS2').Value := null;

      if pic3.Size > 0 then
         ibSP.ParamByName('INS3').LoadFromStream(pic3,ftBlob)
      else
         ibSP.ParamByName('INS3').Value := null;

      if pic4.Size > 0 then
         ibSP.ParamByName('INS4').LoadFromStream(pic4,ftBlob)
      else
         ibSP.ParamByName('INS4').Value := null;

      if pic5.Size > 0 then
         ibSP.ParamByName('INS5').LoadFromStream(pic5,ftBlob)
      else
         ibSP.ParamByName('INS5').Value := null;

      if pic6.Size > 0 then
         ibSP.ParamByName('INS6').LoadFromStream(pic6 ,ftBlob)
      else
         ibSP.ParamByName('INS6').Value := null;

      if pic7.Size > 0 then
         ibSP.ParamByName('INS7').LoadFromStream(pic7,ftBlob)
      else
         ibSP.ParamByName('INS7').Value := null;

      if pic8.Size > 0 then
         ibSP.ParamByName('INS8').LoadFromStream(pic8,ftBlob)
      else
         ibSP.ParamByName('INS8').Value := null;
      ibSP.ExecProc;

      if cbcclf.Text <> '' then
      with tab_clf do
      begin
        Close;
        SelectSQL.Clear;
        SelectSQL.Add('SELECT * FROM TAB_CLF');
        SelectSQL.Add('WHERE  CLF_CCLF = '''+cbcclf.Text+'''');
        Open;

        if fields[0].IsNull then
        begin
          tab_clf.Append;
          tab_clfID.Value       := 0;
          tab_clfCLF_CCLF.Value := cbcclf.Text;
          tab_clf.Post;
        end;
      end;

      with cad_pro_ori do
      begin
        Close;
        SelectSQL.Clear;
        SelectSQL.Add('SELECT * FROM CAD_PRO_ORI');
        SelectSQL.Add('WHERE PRO_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
        SelectSQL.Add('AND   PRO_CART = '''+edcart.Text+'''');
        Open;
      end;

      if cad_pro_ori.Fields[0].IsNull then
      begin
        cad_pro_ori.Append;
        cad_pro_oriID.Value       := 0;
        cad_pro_oriPRO_CDEP.Value := frmprincipal.parametrosID.AsInteger;
        cad_pro_oriPRO_CART.Value := edcart.Text;
      end else cad_pro_ori.Edit;
      cad_pro_oriPRO_ORIG.Value   := cbccst.Text;
      cad_pro_ori.Post;

      case frmcad_pro_edi.Tag of
        0: frmprincipal.Log_Eve('Produtos','Cadastro de Produtos','Inclusão' ,cad_pro_grdGRD_CPRO.AsString,cad_pro_grdGRD_CPRO.AsString,LOWERCASE(eddpro.Text),'','');
        1: frmprincipal.Log_Eve('Produtos','Cadastro de Produtos','Alteração',cad_pro_grdGRD_CPRO.AsString,cad_pro_grdGRD_CPRO.AsString,LOWERCASE(eddpro.Text),'','');
      end;

      if EDCART.Tag = 1 then
         with consulta do
         begin
           Close;
           SQL.Clear;
           SQL.Add('SELECT GEN_ID(IDG_CAD_PRO_SEQ,1) FROM RDB$DATABASE');
           Open;
         end;

      IBTra.CommitRetaining;
      editado := true;
    except
      editado := false;
      ibTRA.Rollback;
      IBTra.StartTransaction;
   end;
  finally
    close;
  end;
end;

procedure Tfrmcad_pro_edi.NOVA_REFERENCIA;
begin
  carregaFoto(0,cad_pro_imgPRO_FOTO,cad_pro_img,frmprincipal.parametros);
  carregaFot2(0,cad_pro_imgPRO_FOT2,cad_pro_img,frmprincipal.parametros);
  carregaFot3(0,cad_pro_imgPRO_FOT3,cad_pro_img,frmprincipal.parametros);
  carregaFot4(0,cad_pro_imgPRO_FOT4,cad_pro_img,frmprincipal.parametros);
  carregaFot5(0,cad_pro_imgPRO_FOT5,cad_pro_img,frmprincipal.parametros);
  carregaFot6(0,cad_pro_imgPRO_FOT6,cad_pro_img,frmprincipal.parametros);
  carregaFot7(0,cad_pro_imgPRO_FOT7,cad_pro_img,frmprincipal.parametros);

  EDILA_INS1.Text := '';
  EDILA_INS2.Text := '';
  EDILA_INS3.Text := '';
  EDILA_INS4.Text := '';
  EDILA_INS5.Text := '';
  EDILA_INS6.Text := '';
  EDILA_INS7.Text := '';
  EDILA_INS8.Text := '';

  ILA_BMP1.Picture.Graphic := nil;
  ILA_BMP2.Picture.Graphic := nil;
  ILA_BMP3.Picture.Graphic := nil;
  ILA_BMP4.Picture.Graphic := nil;
  ILA_BMP5.Picture.Graphic := nil;
  ILA_BMP6.Picture.Graphic := nil;
  ILA_BMP7.Picture.Graphic := nil;
  ILA_BMP8.Picture.Graphic := nil;

  edid.Text    := '0';
  eddcad.Text  := SLPrincipal.Values['data_sistema'];
  eddpr2.Text  := '';
  eddpr3.Text  := '';
  eddpr4.Text  := '';
  eddpr5.Text  := '';
  cbduni.Text  := '';
  edcomp.Text  := '';
  cbdcol.Text  := '';
  cbdgrp.Text  := '';
  cbdcat.Text  := '';
  cbcclf.Text  := '';
  cbstav.Text  := 'A';
  edcbar.Text  := '';
  edpper.Text  := '0,00';
  edpprz.Text  := '0,00';
  edvper.Text  := '0,00';
  edsper.Text  := '0,00';
  edvprz.Text  := '0,00';
  edsprz.Text  := '0,00';
  edrper.Text  := '0,00';
  edrprz.Text  := '0,00';
  edprec.Text  := '0,00';
  edppro.Text  := '0,00';
  edpdsc.Text  := '0,00';
  edvprc.Text  := '0,00';
  edsprc.Text  := '0,00';
  edvpro.Text  := '0,00';
  edspro.Text  := '0,00';
  edvdsc.Text  := '0,00';
  edsdsc.Text  := '0,00';
  edrprc.Text  := '0,00';
  edrpro.Text  := '0,00';
  edrdsc.Text  := '0,00';
  edpcom.Text  := '0,00';
  edcust.Text  := '0,00';
  edclib.Text  := '0,00';
  cbccst.Text  := '0';
  edpipi.Text  := '0';
  edobse.Text  := '';
  edobsf.Text  := '';
  edapro.Text  := '';
  cbdemb.Text  := '';
  cbstal.Text  := '';
  cbdens.Text  := '';
  cbtitf.Text  := '';
  edpeso.Text  := '0,00';
  edrend.Text  := '0,00';
  edlarg.Text  := '0,00';
  edmetr.Text  := '0,00';
  edpscn.Text  := '0,00';
  edpsmr.Text  := '0,00';
  edgram.Text  := '0,00';
  edutil.Text  := '0,00';
  edelac.Text  := '0,00';
  edelas.Text  := '0,00';
  cbdori.Text  := '';
  cbrepr.Text  := 'R';
  if frmprincipal.parametrosPAR_CNA1.AsString = '5101' then
  cbrepr.Text  := 'P';

  if cbccst.Text = '0' then
  cbdori.Text := 'BRASIL';

  {with consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(IDG_CAD_PRO_SEQ,0) FROM RDB$DATABASE');
    Open;
    EDCART.Text := IntToStr(Fields[0].AsInteger + 1);
    EDCART.Tag  := 1;
  end; }

  ABRE_COMPOSICAO;
  ABRE_GRADE;
  
  if frmprincipal.parametrosPAR_GRAD.AsString = '1' then
  begin
    if frmprincipal.parametrosPAR_TIPO.AsString = '1' then
    begin
      with aux do
      begin
        SQL.Clear;
        SQL.Add('SELECT   COR_CCOR,COR_REFE,COR_DCOR,COR_PCOR FROM TAB_COR');
        SQL.Add('WHERE    COR_PADR = ''1''');
        SQL.Add('AND      COR_STA  = ''0''');
        SQL.Add('ORDER BY COR_DCOR');
        Open;

        while not eof do
        begin
          cad_pro_grd.Append;
          cad_pro_grdGRD_CCOR.Value := fields[0].AsInteger;
          cad_pro_grdGRD_RCOR.Value := fields[1].AsString;
          cad_pro_grdGRD_DCOR.Value := fields[2].AsString;
          cad_pro_grdGRD_PCOR.Value := fields[3].AsString;
          cad_pro_GrdGRD_CART.Value := edcart.Text;
          cad_pro_grdGRD_CPRO.Value := cad_pro_grdGRD_CART.AsString+'.'+oStrZero(fields[0].AsInteger,4);
          cad_pro_grd.Post;
          next;
        end;
      end;
    end
    else if (frmprincipal.parametrosPAR_TIPO.AsString = '2') or (frmprincipal.parametrosPAR_TIPO.AsString = '5') then
    begin
      with aux2 do
      begin
        SQL.Clear;
        SQL.Add('SELECT   COR_CCOR,COR_REFE,COR_DCOR,COR_PCOR FROM TAB_COR');
        SQL.Add('WHERE    COR_PADR = ''1''');
        SQL.Add('AND      COR_STA  = ''0''');
        SQL.Add('ORDER BY COR_DCOR');
        Open;
      end;

      if not aux2.Fields[0].IsNull then
      with aux do
      begin
        SQL.Clear;
        SQL.Add('SELECT   GRD_CGRD,GRD_DGRD FROM TAB_GRD');
        SQL.Add('WHERE    GRD_PADR = ''1''');
        SQL.Add('AND      GRD_STA  = ''0''');
        SQL.Add('ORDER BY GRD_CGRD');
        Open;

        while not eof do
        begin
          cad_pro_grd.Append;
          cad_pro_grdGRD_CGRD.Value := fields[0].AsString;
          cad_pro_grdGRD_DGRD.Value := fields[1].AsString;
          cad_pro_grdGRD_CCOR.Value := aux2.fields[0].AsInteger;
          cad_pro_grdGRD_RCOR.Value := aux2.fields[1].AsString;
          cad_pro_grdGRD_DCOR.Value := aux2.fields[2].AsString;
          cad_pro_grdGRD_PCOR.Value := aux2.fields[3].AsString;
          cad_pro_GrdGRD_CART.Value := edcart.Text;
          cad_pro_grdGRD_CPRO.Value := cad_pro_grdGRD_CART.AsString+'.'+aux2.fields[1].AsString+'.'+fields[0].AsString;
          cad_pro_grd.Post;
          next;
        end;
      end;
    end;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT FOR_FANT FROM CAD_FOR');
    SQL.Add('WHERE  ID = ''' + RECParametros.ID + '''');
    Open;
    cbdfor.Text := fields[0].AsString;
  end;

  EDCART.SetFocus;
end;

procedure Tfrmcad_pro_edi.ALTERA_REFERENCIA;
var
  b:TStream;
begin
  with cad_pro do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM CAD_PRO');
    if frmprincipal.parametrosPAR_GRAD.AsString = '1' then
    SQL.Add('WHERE    PRO_CART = '''+edcart.Text+'''')
    else
    SQL.Add('WHERE    PRO_CPRO = '''+frmcad_pro.cadastroPRO_CPRO.AsString+'''');
    SQL.Add('AND      PRO_STA = '''+inttostr(frmcad_pro.dbgConsulta.Tag)+'''');
    SQL.Add('ORDER BY PRO_DCOR');
    Open;
  end;

  with cad_pro_img do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM CAD_PRO_IMG');
    SQL.Add('WHERE PRO_CART = '''+edcart.Text+'''');
    Open;
  end;
  
  cad_pro.First;
  while not cad_pro.Eof do
  begin
    if cad_proID.AsInteger = frmcad_pro.cadastroID.AsInteger then
       break;
    cad_pro.Next;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT FOR_FANT FROM CAD_FOR');
    SQL.Add('WHERE  ID = '''+cad_proPRO_CDFO.AsString+'''');
    Open;
    cbdfor.Text := fields[0].AsString;
  end;

  edcbar.Text  := cad_proPRO_CBAR.AsString;
  eddcad.Text  := cad_proPRO_DCAD.AsString;
  edcfor.Text  := cad_proPRO_CFOR.AsString;
  eddpro.Text  := cad_proPRO_DPRO.AsString;
  eddpr2.Text  := cad_proPRO_DPR2.AsString;
  eddpr3.Text  := cad_proPRO_DPR3.AsString;
  eddpr4.Text  := cad_proPRO_DPR4.AsString;
  eddpr5.Text  := cad_proPRO_DPR5.AsString;
  cbduni.Text  := cad_proPRO_DUNI.AsString;
  cbdcol.Text  := cad_proPRO_DCOL.AsString;
  cbdcat.Text  := cad_proPRO_DCAT.AsString;
  cbdgrp.Text  := cad_proPRO_DGRP.AsString;
  cbcclf.Text  := cad_proPRO_CCLF.AsString;
  cbccst.Text  := cad_proPRO_CCST.AsString;
  cbstav.Text  := cad_proPRO_STAV.AsString;
  cbstav.Hint  := cad_proPRO_STAV.AsString;
  edpper.Text  := formatfloat('#,0.00###',cad_proPRO_PPER.AsFloat);
  edpprz.Text  := formatfloat('#,0.00###',cad_proPRO_PPRZ.AsFloat);
  edvper.Text  := formatfloat('#,0.00###',cad_proPRO_VPER.AsFloat);
  edsper.Text  := formatfloat('#,0.00###',cad_proPRO_SPER.AsFloat);
  edvprz.Text  := formatfloat('#,0.00###',cad_proPRO_VPRZ.AsFloat);
  edsprz.Text  := formatfloat('#,0.00###',cad_proPRO_SPRZ.AsFloat);
  edrper.Text  := formatfloat('#,0.00###',cad_proPRO_RPER.AsFloat);
  edrprz.Text  := formatfloat('#,0.00###',cad_proPRO_RPRZ.AsFloat);
  edprec.Text  := formatfloat('#,0.00###',cad_proPRO_PREC.AsFloat);
  edppro.Text  := formatfloat('#,0.00###',cad_proPRO_PPRO.AsFloat);
  edpdsc.Text  := formatfloat('#,0.00###',cad_proPRO_PDSC.AsFloat);
  edvprc.Text  := formatfloat('#,0.00###',cad_proPRO_VPRC.AsFloat);
  edsprc.Text  := formatfloat('#,0.00###',cad_proPRO_SPRC.AsFloat);
  edvpro.Text  := formatfloat('#,0.00###',cad_proPRO_VPRO.AsFloat);
  edspro.Text  := formatfloat('#,0.00###',cad_proPRO_SPRO.AsFloat);
  edvdsc.Text  := formatfloat('#,0.00###',cad_proPRO_VDSC.AsFloat);
  edsdsc.Text  := formatfloat('#,0.00###',cad_proPRO_SDSC.AsFloat);
  edrprc.Text  := formatfloat('#,0.00###',cad_proPRO_RPRC.AsFloat);
  edrpro.Text  := formatfloat('#,0.00###',cad_proPRO_RPRO.AsFloat);
  edrdsc.Text  := formatfloat('#,0.00###',cad_proPRO_RDSC.AsFloat);
  edpcom.Text  := formatfloat('#,0.00###',cad_proPRO_PCOM.AsFloat);
  edcust.Text  := formatfloat('#,0.00###',cad_proPRO_CUST.AsFloat);
  edclib.Text  := formatfloat('#,0.00###',cad_proPRO_CLIB.AsFloat);
  edpipi.Text  := formatfloat('#,0.00###',cad_proPRO_PIPI.AsFloat);
  edobse.Text  := cad_proPRO_OBSE.AsString;
  edobsf.Text  := cad_proPRO_OBSF.AsString;
  edapro.Text  := cad_proPRO_APRO.AsString;
  cbdori.Text  := cad_proPRO_DORI.AsString;
  cbrepr.Text  := cad_proPRO_REPR.AsString;
  cbdemb.Text  := cad_proPRO_DEMB.AsString;
  cbstal.Text  := cad_proPRO_STAL.AsString;
  cbdens.Text  := cad_proPRO_DENS.AsString;
  cbtitf.Text  := cad_proPRO_TITF.AsString;
  edpeso.Text  := formatfloat('#,0.00###',cad_proPRO_PESO.AsFloat);
  edrend.Text  := formatfloat('#,0.00###',cad_proPRO_REND.AsFloat);
  edlarg.Text  := formatfloat('#,0.00###',cad_proPRO_LARG.AsFloat);
  edmetr.Text  := formatfloat('#,0.00###',cad_proPRO_METR.AsFloat);
  edpscn.Text  := formatfloat('#,0.00###',cad_proPRO_PSCN.AsFloat);
  edpsmr.Text  := formatfloat('#,0.00###',cad_proPRO_PSMR.AsFloat);
  edgram.Text  := formatfloat('#,0.00###',cad_proPRO_GRAM.AsFloat);
  edutil.Text  := formatfloat('#,0.00###',cad_proPRO_UTIL.AsFloat);
  edelac.Text  := formatfloat('#,0.00###',cad_proPRO_ELAC.AsFloat);
  edelas.Text  := formatfloat('#,0.00###',cad_proPRO_ELAS.AsFloat);

  ABRE_GRADE;

//  if ((cad_pro.RecNo >= 1) and (frmcad_pro.cadastroPRO_DCOR.AsString <> '')) then
  cad_pro.First;
  while not cad_pro.Eof do
  begin
    cad_pro_grd.Append;
    cad_pro_grdGRD_IPRO.Value := cad_proID.AsInteger;
    cad_pro_grdGRD_CART.Value := cad_proPRO_CART.AsString;
    cad_pro_grdGRD_CPRO.Value := cad_proPRO_CPRO.AsString;

    cad_pro_grdGRD_CCOR.Value := cad_proPRO_CCOR.AsInteger;
    cad_pro_grdGRD_RCOR.Value := cad_proPRO_RCOR.AsString;
    cad_pro_grdGRD_DCOR.Value := cad_proPRO_DCOR.AsString;
    cad_pro_grdGRD_PCOR.Value := cad_proPRO_PCOR.AsString;

    cad_pro_grdGRD_PREC.Value := cad_proPRO_PREC.AsFloat;
    cad_pro_grdGRD_PPRO.Value := cad_proPRO_PPRO.AsFloat;
    cad_pro_grdGRD_PDSC.Value := cad_proPRO_PDSC.AsFloat;

    cad_pro_grdGRD_VPRC.Value := cad_proPRO_VPRC.AsFloat;
    cad_pro_grdGRD_RPRC.Value := cad_proPRO_RPRC.AsFloat;
    cad_pro_grdGRD_SPRC.Value := cad_proPRO_SPRC.AsFloat;

    cad_pro_grdGRD_CGRD.Value := cad_proPRO_GRAD.AsString;
    cad_pro_grdGRD_CCLF.Value := cad_proPRO_CCLF.AsString;

    if cad_proPRO_STAV.AsString = 'P' then
    cad_pro_grdGRD_STAV.Value := 'PRÉ-CADASTRO'
    else if cad_proPRO_STAV.AsString = 'I' then
    cad_pro_grdGRD_STAV.Value := 'INATIVO'
    else if cad_proPRO_STAV.AsString = 'A' then
    cad_pro_grdGRD_STAV.Value := 'ATIVO';

    cad_pro_grd.Post;
    cad_pro.Next;
  end;
  cad_pro.First;
  edid.Text := cad_proID.AsString;

  if cbstav.Text = 'P' then
  edcart.Enabled := true;

  ABRE_COMPOSICAO;

//  if (tag = 1) and (cad_pro_grd.RecNo = 0) then
//  tsggrd.TabVisible := false;

  EDILA_INS1.Text := cad_pro_imgPRO_ONS1.AsString;
  EDILA_INS2.Text := cad_pro_imgPRO_ONS2.AsString;
  EDILA_INS3.Text := cad_pro_imgPRO_ONS3.AsString;
  EDILA_INS4.Text := cad_pro_imgPRO_ONS4.AsString;
  EDILA_INS5.Text := cad_pro_imgPRO_ONS5.AsString;
  EDILA_INS6.Text := cad_pro_imgPRO_ONS6.AsString;
  EDILA_INS7.Text := cad_pro_imgPRO_ONS7.AsString;
  EDILA_INS8.Text := cad_pro_imgPRO_ONS8.AsString;

  ILA_BMP1.Picture.Bitmap := nil;
  b :=  cad_pro_img.CreateBlobStream(cad_pro_img.FieldByName('PRO_INS1'),bmRead);
  ILA_BMP1.Picture.Bitmap.LoadFromStream(b);

  ILA_BMP2.Picture.Bitmap := nil;
  b :=  cad_pro_img.CreateBlobStream(cad_pro_img.FieldByName('PRO_INS2'),bmRead);
  ILA_BMP2.Picture.Bitmap.LoadFromStream(b);

  ILA_BMP3.Picture.Bitmap := nil;
  b :=  cad_pro_img.CreateBlobStream(cad_pro_img.FieldByName('PRO_INS3'),bmRead);
  ILA_BMP3.Picture.Bitmap.LoadFromStream(b);

  ILA_BMP4.Picture.Bitmap := nil;
  b :=  cad_pro_img.CreateBlobStream(cad_pro_img.FieldByName('PRO_INS4'),bmRead);
  ILA_BMP4.Picture.Bitmap.LoadFromStream(b);

  ILA_BMP5.Picture.Bitmap := nil;
  b :=  cad_pro_img.CreateBlobStream(cad_pro_img.FieldByName('PRO_INS5'),bmRead);
  ILA_BMP5.Picture.Bitmap.LoadFromStream(b);

  ILA_BMP6.Picture.Bitmap := nil;
  b :=  cad_pro_img.CreateBlobStream(cad_pro_img.FieldByName('PRO_INS6'),bmRead);
  ILA_BMP6.Picture.Bitmap.LoadFromStream(b);

  ILA_BMP7.Picture.Bitmap := nil;
  b :=  cad_pro_img.CreateBlobStream(cad_pro_img.FieldByName('PRO_INS7'),bmRead);
  ILA_BMP7.Picture.Bitmap.LoadFromStream(b);

  ILA_BMP8.Picture.Bitmap := nil;
  b :=  cad_pro_img.CreateBlobStream(cad_pro_img.FieldByName('PRO_INS8'),bmRead);
  ILA_BMP8.Picture.Bitmap.LoadFromStream(b);

  carregaFoto(cad_pro_imgPRO_FOTO.BlobSize,cad_pro_imgPRO_FOTO,cad_pro_img,frmprincipal.parametros);
  carregaFot2(cad_pro_imgPRO_FOT2.BlobSize,cad_pro_imgPRO_FOT2,cad_pro_img,frmprincipal.parametros);
  carregaFot3(cad_pro_imgPRO_FOT3.BlobSize,cad_pro_imgPRO_FOT3,cad_pro_img,frmprincipal.parametros);
  carregaFot4(cad_pro_imgPRO_FOT4.BlobSize,cad_pro_imgPRO_FOT4,cad_pro_img,frmprincipal.parametros);
  carregaFot5(cad_pro_imgPRO_FOT5.BlobSize,cad_pro_imgPRO_FOT5,cad_pro_img,frmprincipal.parametros);
  carregaFot6(cad_pro_imgPRO_FOT6.BlobSize,cad_pro_imgPRO_FOT6,cad_pro_img,frmprincipal.parametros);
  carregaFot7(cad_pro_imgPRO_FOT7.BlobSize,cad_pro_imgPRO_FOT7,cad_pro_img,frmprincipal.parametros);

  with cad_pro_ori do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_PRO_ORI');
    SelectSQL.Add('WHERE PRO_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    SelectSQL.Add('AND   PRO_CART = '''+edcart.Text+'''');
    Open;
  end;
  if not cad_pro_ori.Fields[0].IsNull then
  cbccst.Text := cad_pro_oriPRO_ORIG.AsString;
end;

procedure Tfrmcad_pro_edi.FormShow(Sender: TObject);
begin
  inherited;
  if tag = 1 then
  begin
    edcart.Enabled := false;
    edcart.Text    := frmcad_pro.cadastroPRO_CART.AsString;
    ALTERA_REFERENCIA;
  end else
  NOVA_REFERENCIA;
end;


procedure Tfrmcad_pro_edi.siINCClick(Sender: TObject);
begin
  cad_pro_com.Append;
end;

procedure Tfrmcad_pro_edi.siALTClick(Sender: TObject);
begin
  cad_pro_com.Edit;
end;

procedure Tfrmcad_pro_edi.siDELClick(Sender: TObject);
begin
  cad_pro_com.Delete;
end;

procedure Tfrmcad_pro_edi.siSClick(Sender: TObject);
begin
  if cad_pro_com.State in [dsInsert,dsEdit] then
  begin
    if cad_pro_comCOM_COMP.AsString = '' then
       cad_pro_com.Cancel
    else
       cad_pro_com.Post;
  end;
end;

procedure Tfrmcad_pro_edi.siCANClick(Sender: TObject);
begin
  if cad_pro_com.State in [dsInsert,dsEdit] then
     cad_pro_com.Cancel;
end;

procedure Tfrmcad_pro_edi.cad_pro_comAfterCancel(DataSet: TDataSet);
begin
  siINC.Enabled := true;
  siALT.Enabled := true;
  siDEL.Enabled := true;
  siS.Enabled   := false;
  siC.Enabled   := false;

  if pcMAIN.ActivePageIndex = 3 then
     dbgcom.SetFocus;
end;

procedure Tfrmcad_pro_edi.cad_pro_comAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  siINC.Enabled := true;
  siALT.Enabled := true;
  siDEL.Enabled := true;
  siS.Enabled   := false;
  siC.Enabled   := false;

  if pcMAIN.ActivePageIndex = 3 then
     dbgcom.SetFocus;

  wRec := cad_pro_com.GetBookmark;
  tSHEILD.CommitRetaining;

  cad_pro_com.Close;
  cad_pro_com.Open;
  MONTA_COMPOSICAO;

  if (wRec = Nil) or (cad_pro_com.Fields[0].IsNull) then cad_pro_com.last
     else cad_pro_com.GotoBookmark(wRec);
  cad_pro_com.FreeBookmark(wRec);
end;

procedure Tfrmcad_pro_edi.cad_pro_comAfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
  MONTA_COMPOSICAO;
end;

procedure Tfrmcad_pro_edi.cad_pro_comBeforeCancel(DataSet: TDataSet);
begin
  siINC.Enabled := true;
  siALT.Enabled := true;
  siDEL.Enabled := true;
  siS.Enabled   := false;
  siC.Enabled   := false;

  if pcMAIN.ActivePageIndex = 3 then
     dbgcom.SetFocus;

  if cad_pro_com.RecordCount = 0 then
  begin
    cad_pro_com.Close;
    cad_pro_com.Open;
  end;
end;

procedure Tfrmcad_pro_edi.cad_pro_comNewRecord(DataSet: TDataSet);
begin
  cad_pro_comID.Value       := 0;
  cad_pro_comCOM_QTDE.Value := 0;
  cad_pro_comCOM_CART.Value := edcart.Text;
end;

procedure Tfrmcad_pro_edi.dbgcomKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgcom.FocusedColumn = 2 then
                 begin
                   cad_pro_com.Next;
                   if cad_pro_com.Eof then
                   cad_pro_com.Append;
                   dbgcom.FocusedColumn := 0;
                 end
                 else
                 dbgcom.FocusedColumn := dbgcom.FocusedColumn + 1;
               end;
    VK_DELETE: if cad_pro_com.State = dsBrowse then
                  siDEL.Click;
    VK_ESCAPE: if cad_pro_com.State = dsBrowse then close else cad_pro_com.Cancel;
    VK_INSERT: if not siSAV.Enabled then siINC.Click;
  end;
end;

procedure Tfrmcad_pro_edi.MONTA_COMPOSICAO;
var
  base,comp: string;
begin
  base := '';
  comp := '';

  try
    cad_pro_com.DisableControls;
    cad_pro_com.First;
    while not cad_pro_com.Eof do
    begin
      if base <> cad_pro_comCOM_BASE.AsString then
      begin
        base := cad_pro_comCOM_BASE.AsString;
        if comp = '' then
           comp := comp + cad_pro_comCOM_BASE.AsString+': '
        else
           comp := comp + '   '+cad_pro_comCOM_BASE.AsString+': ';
      end;

      comp := comp +' '+formatfloat('0.00',cad_pro_comCOM_QTDE.AsFloat)+'%'+' '+cad_pro_comCOM_COMP.AsString;
      cad_pro_com.Next;
    end;
  finally
    cad_pro_com.First;
    cad_pro_com.EnableControls;
  end;

  edcomp.Text := comp;
  if copy(edcomp.Text,1,1) = ' ' then
     edcomp.Text := copy(edcomp.Text,2,length(edcomp.Text));
  edcomp.Text := TRIM(copy(edcomp.Text,1,120));
end;

procedure Tfrmcad_pro_edi.cad_pro_comAfterEdit(DataSet: TDataSet);
begin
  siINC.Enabled := false;
  siALT.Enabled := false;
  siDEL.Enabled := false;
  siS.Enabled   := true;
  siC.Enabled   := true;

  if pcMAIN.ActivePageIndex = 3 then
  dbgcom.SetFocus;
end;

procedure Tfrmcad_pro_edi.sbfotoClick(Sender: TObject);
var
   foto_stream : TMemoryStream;
begin
  foto_stream := TMemoryStream.Create;
  foto_stream.Clear;

  if OpenPictureDialogEdit.Execute then
  begin
    foto_stream.LoadFromFile(OpenPictureDialogEdit.FileName );

    if ( foto_stream.Size < 350000 ) then
    begin
      imag.Picture.LoadFromFile(OpenPictureDialogEdit.FileName);
      imag.Tag := 1;
    end
    else
       raise exception.Create('O Tamanho Máximo Permitido para uma Imagem é de 350 KB !'+#13+'Altere o Tamanho da Foto ou Diminua a Qualidade da Mesma.');
  end;
end;

procedure Tfrmcad_pro_edi.sbfot2Click(Sender: TObject);
var
   foto_stream : TMemoryStream;
begin
  foto_stream := TMemoryStream.Create;
  foto_stream.Clear;

  if OpenPictureDialogEdit.Execute then
  begin
    foto_stream.LoadFromFile(OpenPictureDialogEdit.FileName );

    if ( foto_stream.Size < 350000 ) then
    begin
      imag2.Picture.LoadFromFile(OpenPictureDialogEdit.FileName);
      imag2.Tag := 1;
    end
    else
       raise exception.Create('O Tamanho Máximo Permitido para uma Imagem é de 350 KB !'+#13+'Altere o Tamanho da Foto ou Diminua a Qualidade da Mesma.');
  end;
end;

procedure Tfrmcad_pro_edi.sbfot3Click(Sender: TObject);
var
   foto_stream : TMemoryStream;
begin
  foto_stream := TMemoryStream.Create;
  foto_stream.Clear;

  if OpenPictureDialogEdit.Execute then
  begin
    foto_stream.LoadFromFile(OpenPictureDialogEdit.FileName );

    if ( foto_stream.Size < 350000 ) then
    begin
      imag3.Picture.LoadFromFile(OpenPictureDialogEdit.FileName);
      imag3.Tag := 1;
    end
    else
       raise exception.Create('O Tamanho Máximo Permitido para uma Imagem é de 350 KB !'+#13+'Altere o Tamanho da Foto ou Diminua a Qualidade da Mesma.');
  end;
end;

procedure Tfrmcad_pro_edi.sbfot4Click(Sender: TObject);
var
   foto_stream : TMemoryStream;
begin
  foto_stream := TMemoryStream.Create;
  foto_stream.Clear;

  if OpenPictureDialogEdit.Execute then
  begin
    foto_stream.LoadFromFile(OpenPictureDialogEdit.FileName );

    if ( foto_stream.Size < 350000 ) then
    begin
      imag4.Picture.LoadFromFile(OpenPictureDialogEdit.FileName);
      imag4.Tag := 1;
    end
    else
       raise exception.Create('O Tamanho Máximo Permitido para uma Imagem é de 350 KB !'+#13+'Altere o Tamanho da Foto ou Diminua a Qualidade da Mesma.');
  end;
end;

procedure Tfrmcad_pro_edi.sbfot5Click(Sender: TObject);
var
   foto_stream : TMemoryStream;
begin
  foto_stream := TMemoryStream.Create;
  foto_stream.Clear;

  if OpenPictureDialogEdit.Execute then
  begin
    foto_stream.LoadFromFile(OpenPictureDialogEdit.FileName );

    if ( foto_stream.Size < 350000 ) then
    begin
      imag5.Picture.LoadFromFile(OpenPictureDialogEdit.FileName);
      imag5.Tag := 1;
    end
    else
       raise exception.Create('O Tamanho Máximo Permitido para uma Imagem é de 300 KB !'+#13+'Altere o Tamanho da Foto ou Diminua a Qualidade da Mesma.');
  end;
end;

procedure Tfrmcad_pro_edi.sbfot6Click(Sender: TObject);
var
   foto_stream : TMemoryStream;
begin
  foto_stream := TMemoryStream.Create;
  foto_stream.Clear;

  if OpenPictureDialogEdit.Execute then
  begin
    foto_stream.LoadFromFile(OpenPictureDialogEdit.FileName );

    if ( foto_stream.Size < 350000 ) then
    begin
      imag6.Picture.LoadFromFile(OpenPictureDialogEdit.FileName);
      imag6.Tag := 1;
    end
    else
       raise exception.Create('O Tamanho Máximo Permitido para uma Imagem é de 300 KB !'+#13+'Altere o Tamanho da Foto ou Diminua a Qualidade da Mesma.');
  end;
end;

procedure Tfrmcad_pro_edi.sbfot7Click(Sender: TObject);
var
   foto_stream : TMemoryStream;
begin
  foto_stream := TMemoryStream.Create;
  foto_stream.Clear;

  if OpenPictureDialogEdit.Execute then
  begin
    foto_stream.LoadFromFile(OpenPictureDialogEdit.FileName );

    if ( foto_stream.Size < 350000 ) then
    begin
      imag7.Picture.LoadFromFile(OpenPictureDialogEdit.FileName);
      imag7.Tag := 1;
    end
    else
       raise exception.Create('O Tamanho Máximo Permitido para uma Imagem é de 300 KB !'+#13+'Altere o Tamanho da Foto ou Diminua a Qualidade da Mesma.');
  end;
end;

procedure Tfrmcad_pro_edi.imagDblClick(Sender: TObject);
begin
  imag.Picture := nil;
  imag.Update;

  carregaFoto(0,cad_pro_imgPRO_FOTO,cad_pro_img,frmprincipal.parametros);
end;

procedure Tfrmcad_pro_edi.imag2DblClick(Sender: TObject);
begin
  imag2.Picture := nil;
  imag2.Update;

  carregaFot2(0,cad_pro_imgPRO_FOT2,cad_pro_img,frmprincipal.parametros);
end;

procedure Tfrmcad_pro_edi.imag3DblClick(Sender: TObject);
begin
  imag3.Picture := nil;
  imag3.Update;

  carregaFot3(0,cad_pro_imgPRO_FOT3,cad_pro_img,frmprincipal.parametros);
end;

procedure Tfrmcad_pro_edi.imag4DblClick(Sender: TObject);
begin
  imag4.Picture := nil;
  imag4.Update;

  carregaFot4(0,cad_pro_imgPRO_FOT4,cad_pro_img,frmprincipal.parametros);
end;

procedure Tfrmcad_pro_edi.imag5DblClick(Sender: TObject);
begin
  imag5.Picture := nil;
  imag5.Update;

  carregaFot5(0,cad_pro_imgPRO_FOT5,cad_pro_img,frmprincipal.parametros);
end;

procedure Tfrmcad_pro_edi.imag6DblClick(Sender: TObject);
begin
  imag6.Picture := nil;
  imag6.Update;

  carregaFot6(0,cad_pro_imgPRO_FOT6,cad_pro_img,frmprincipal.parametros);
end;

procedure Tfrmcad_pro_edi.imag7DblClick(Sender: TObject);
begin
  imag7.Picture := nil;
  imag7.Update;

  carregaFot7(0,cad_pro_imgPRO_FOT7,cad_pro_img,frmprincipal.parametros);
end;

procedure Tfrmcad_pro_edi.sbtab_corClick(Sender: TObject);
begin
  frmtab_cor := tfrmtab_cor.create(self);
  frmtab_cor.Hint      := '';
  frmtab_cor.FormStyle := fsNormal;
  frmtab_cor.Position  := poDesktopCenter;
  frmtab_cor.Visible   := false;
  frmtab_cor.ShowModal;
end;

procedure Tfrmcad_pro_edi.cad_proBeforePost(DataSet: TDataSet);
begin
  if cad_pro_grdGRD_CGRD.AsString = '' then
     DataBaseError('Código da Grade não Selecionada !');

  if cad_pro_grdGRD_DGRD.AsString = '' then
     DataBaseError('Descrição da Grade não Selecionada !');
end;

procedure Tfrmcad_pro_edi.grdIClick(Sender: TObject);
begin
  cad_pro_grd.Append;
end;

procedure Tfrmcad_pro_edi.grdAClick(Sender: TObject);
begin
  cad_pro_grd.Edit;
end;

procedure Tfrmcad_pro_edi.grdEClick(Sender: TObject);
begin
  cad_pro_grd.Edit;
  cad_pro_grdGRD_STA.Value := '1';
  cad_pro_grd.Post;
end;

procedure Tfrmcad_pro_edi.grdSClick(Sender: TObject);
begin
  cad_pro_grd.Post;
end;

procedure Tfrmcad_pro_edi.grdCClick(Sender: TObject);
begin
  cad_pro_grd.Cancel;
end;

procedure Tfrmcad_pro_edi.cad_pro_grdAfterCancel(DataSet: TDataSet);
begin
  if frmprincipal.parametrosPAR_TIPO.AsString = '1' then
  begin
    aviI.Enabled := true;
    aviA.Enabled := true;
    aviE.Enabled := true;
    aviS.Enabled := false;
    aviC.Enabled := false;

    if (pcgrd.ActivePage = tsgavi) and (pcmain.ActivePage = tsggrd) then
    dbgavi.SetFocus;
  end
  else if frmprincipal.parametrosPAR_TIPO.AsString = '0' then
  begin
    tecI.Enabled := true;
    tecA.Enabled := true;
    tecE.Enabled := true;
    tecS.Enabled := false;
    tecC.Enabled := false;

    if (pcgrd.ActivePage = tsgtec) and (pcmain.ActivePage = tsggrd) then
    dbgtec.SetFocus;
  end
  else if (frmprincipal.parametrosPAR_TIPO.AsString = '2') or (frmprincipal.parametrosPAR_TIPO.AsString = '5') then
  begin
    conI.Enabled := true;
    conA.Enabled := true;
    conE.Enabled := true;
    conS.Enabled := false;
    conC.Enabled := false;

    if (pcgrd.ActivePage = tsgcon) and (pcmain.ActivePage = tsggrd) then
    dbgcon.SetFocus;
  end;
end;

procedure Tfrmcad_pro_edi.cad_pro_grdAfterInsert(DataSet: TDataSet);
begin
  if frmprincipal.parametrosPAR_TIPO.AsString = '1' then
  begin
    aviI.Enabled := false;
    aviA.Enabled := false;
    aviE.Enabled := false;
    aviS.Enabled := true;
    aviC.Enabled := true;

    if (pcgrd.ActivePage = tsgavi) and (pcmain.ActivePage = tsggrd) then
       dbgavi.SetFocus;
  end
  else if frmprincipal.parametrosPAR_TIPO.AsString = '0' then
  begin
    tecI.Enabled := false;
    tecA.Enabled := false;
    tecE.Enabled := false;
    tecS.Enabled := true;
    tecC.Enabled := true;

    if (pcgrd.ActivePage = tsgtec) and (pcmain.ActivePage = tsggrd) then
       dbgtec.SetFocus;
  end
  else if (frmprincipal.parametrosPAR_TIPO.AsString = '2') or (frmprincipal.parametrosPAR_TIPO.AsString = '5') then
  begin
    conI.Enabled := false;
    conA.Enabled := false;
    conE.Enabled := false;
    conS.Enabled := true;
    conC.Enabled := true;

    if (pcgrd.ActivePage = tsgcon) and (pcmain.ActivePage = tsggrd) then
       dbgcon.SetFocus;
  end;
end;

procedure Tfrmcad_pro_edi.cad_pro_grdBeforeCancel(DataSet: TDataSet);
begin
  if frmprincipal.parametrosPAR_TIPO.AsString = '1' then
  begin
    aviI.Enabled := true;
    aviA.Enabled := true;
    aviE.Enabled := true;
    aviS.Enabled := false;
    aviC.Enabled := false;

    if (pcgrd.ActivePage = tsgavi) and (pcmain.ActivePage = tsggrd) then
       dbgavi.SetFocus;
  end
  else if frmprincipal.parametrosPAR_TIPO.AsString = '0' then
  begin
    tecI.Enabled := true;
    tecA.Enabled := true;
    tecE.Enabled := true;
    tecS.Enabled := false;
    tecC.Enabled := false;

    if (pcgrd.ActivePage = tsgtec) and (pcmain.ActivePage = tsggrd) then
       dbgtec.SetFocus;
  end
  else if (frmprincipal.parametrosPAR_TIPO.AsString = '2') or (frmprincipal.parametrosPAR_TIPO.AsString = '5') then
  begin
    conI.Enabled := true;
    conA.Enabled := true;
    conE.Enabled := true;
    conS.Enabled := false;
    conC.Enabled := false;

    if (pcgrd.ActivePage = tsgcon) and (pcmain.ActivePage = tsggrd) then
       dbgcon.SetFocus;
  end;

  if cad_pro_grd.RecordCount = 0 then
  begin
    cad_pro_grd.Close;
    cad_pro_grd.Open;
    ABORT;
  end;
end;

procedure Tfrmcad_pro_edi.cad_pro_grdNewRecord(DataSet: TDataSet);
begin
  cad_pro_grdID.Value       := 0;
  cad_pro_grdGRD_IPRO.Value := 0;
  cad_pro_grdGRD_CBAR.Value := '';
  cad_pro_grdGRD_STA.Value  := '0';
  cad_pro_grdGRD_CART.Value := edcart.Text;

  if cbSTAV.Text = 'A' then
  cad_pro_grdGRD_STAV.Value := 'ATIVO' else
  if cbSTAV.Text = 'I' then
  cad_pro_grdGRD_STAV.Value := 'INATIVO' else
  if cbSTAV.Text = 'P' then
  cad_pro_grdGRD_STAV.Value := 'PRÉ-CADASTRO';
end;

procedure Tfrmcad_pro_edi.dbgaviCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if (AColumn = dbgaviGRD_CPRO) then
    begin
      AColor      := $00E1AD40;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure Tfrmcad_pro_edi.aviIClick(Sender: TObject);
begin
  if cad_pro_grd.State = dsBrowse then
     cad_pro_grd.Append;
end;

procedure Tfrmcad_pro_edi.aviAClick(Sender: TObject);
begin
  if cad_pro_grd.State = dsBrowse then
     cad_pro_grd.Edit;
end;

procedure Tfrmcad_pro_edi.aviEClick(Sender: TObject);
begin
  if cad_pro_grd.State = dsBrowse then
     cad_pro_grd.Delete;
end;

procedure Tfrmcad_pro_edi.aviSClick(Sender: TObject);
begin
  if cad_pro_grd.State in [dsEdit,dsInsert] then
     cad_pro_grd.Post;
end;

procedure Tfrmcad_pro_edi.aviCClick(Sender: TObject);
begin
  if cad_pro_grd.State in [dsEdit,dsInsert] then
     cad_pro_grd.Cancel;
end;

procedure Tfrmcad_pro_edi.cad_pro_grdAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  wRec := cad_pro_grd.GetBookmark;

  if frmprincipal.parametrosPAR_TIPO.AsString = '1' then
  begin
    aviI.Enabled := true;
    aviA.Enabled := true;
    aviE.Enabled := true;
    aviS.Enabled := false;
    aviC.Enabled := false;

    if (pcgrd.ActivePage = tsgavi) and (pcmain.ActivePage = tsggrd) then
       dbgavi.SetFocus;
  end
  else if frmprincipal.parametrosPAR_TIPO.AsString = '0' then
  begin
    tecI.Enabled := true;
    tecA.Enabled := true;
    tecE.Enabled := true;
    tecS.Enabled := false;
    tecC.Enabled := false;

    if (pcgrd.ActivePage = tsgtec) and (pcmain.ActivePage = tsggrd) then
       dbgtec.SetFocus;
  end
  else if (frmprincipal.parametrosPAR_TIPO.AsString = '2') or (frmprincipal.parametrosPAR_TIPO.AsString = '5') then
  begin
    conI.Enabled := true;
    conA.Enabled := true;
    conE.Enabled := true;
    conS.Enabled := false;
    conC.Enabled := false;

    if (pcgrd.ActivePage = tsgcon) and (pcmain.ActivePage = tsggrd) then
       dbgcon.SetFocus;
  end;

  IBTra.CommitRetaining;

  cad_pro_grd.Close;
  cad_pro_grd.Open;
  if (wRec = Nil) or (cad_pro_grd.Fields[0].IsNull) then cad_pro_grd.last
     else cad_pro_grd.GotoBookmark(wRec);
  cad_pro_grd.FreeBookmark(wRec);
end;

procedure Tfrmcad_pro_edi.edpproValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edppro.Text = '' then
     edppro.Text := '0';

  edppro.Text := formatfloat('#,0.00###',strtofloat(edppro.Text));

  if cad_pro_grd.State = dsBrowse then
  begin
    cad_pro_grd.First;
    while not cad_pro_grd.Eof do
    begin
      cad_pro_grd.Edit;
      cad_pro_grdGRD_PPRO.Value := oTextToValor(edppro.Text);
      cad_pro_grdGRD_ESTO.Value := 2;
      cad_pro_grd.Post;
      cad_pro_grd.Next;
    end;
  end;

  edppro.HelpContext := 1;
end;

procedure Tfrmcad_pro_edi.edpdscValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpdsc.Text = '' then
     edpdsc.Text := '0';

  edpdsc.Text := formatfloat('#,0.00###',strtofloat(edpdsc.Text));

  if cad_pro_grd.State = dsBrowse then
  begin
    cad_pro_grd.First;
    while not cad_pro_grd.Eof do
    begin
      cad_pro_grd.Edit;
      cad_pro_grdGRD_PDSC.Value := oTextToValor(edpdsc.Text);
      cad_pro_grd.Post;
      cad_pro_grd.Next;
    end;
  end;
end;

procedure Tfrmcad_pro_edi.edvprcValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvprc.Text = '' then
     edvprc.Text := '0';

  edvprc.Text := formatfloat('#,0.00###',strtofloat(edvprc.Text));

  if cad_pro_grd.State = dsBrowse then
  begin
    cad_pro_grd.First;
    while not cad_pro_grd.Eof do
    begin
      cad_pro_grd.Edit;
      cad_pro_grdGRD_VPRC.Value := oTextToValor(edvprc.Text);
      cad_pro_grdGRD_ESTO.Value := 3;
      cad_pro_grd.Post;
      cad_pro_grd.Next;
    end;
  end;

  edvprc.HelpContext := 1;
end;

procedure Tfrmcad_pro_edi.edsprcValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edsprc.Text = '' then
     edsprc.Text := '0';

  edsprc.Text := formatfloat('#,0.00###',strtofloat(edsprc.Text));

  if cad_pro_grd.State = dsBrowse then
  begin
    cad_pro_grd.First;
    while not cad_pro_grd.Eof do
    begin
      cad_pro_grd.Edit;
      cad_pro_grdGRD_sprc.Value := oTextToValor(edsprc.Text);
      cad_pro_grdGRD_ESTO.Value := 5;
      cad_pro_grd.Post;
      cad_pro_grd.Next;
    end;
  end;

  edsprc.HelpContext := 1;
end;

procedure Tfrmcad_pro_edi.edrprcValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edrprc.Text = '' then
     edrprc.Text := '0';

  edrprc.Text := formatfloat('#,0.00###',strtofloat(edrprc.Text));

  if cad_pro_grd.State = dsBrowse then
  begin
    cad_pro_grd.First;
    while not cad_pro_grd.Eof do
    begin
      cad_pro_grd.Edit;
      cad_pro_grdGRD_RPRC.Value := oTextToValor(edrprc.Text);
      cad_pro_grdGRD_ESTO.Value := 4;
      cad_pro_grd.Post;
      cad_pro_grd.Next;
    end;
  end;

  edrprc.HelpContext := 1;
end;

procedure Tfrmcad_pro_edi.edvproValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvpro.Text = '' then
     edvpro.Text := '0';

  edvpro.Text := formatfloat('#,0.00###',strtofloat(edvpro.Text));
  edvpro.HelpContext := 1;
end;

procedure Tfrmcad_pro_edi.edsproValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edspro.Text = '' then
     edspro.Text := '0';

  edspro.Text := formatfloat('#,0.00###',strtofloat(edspro.Text));
  edspro.HelpContext := 1;
end;

procedure Tfrmcad_pro_edi.edrproValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edrpro.Text = '' then
     edrpro.Text := '0';

  edrpro.Text := formatfloat('#,0.00###',strtofloat(edrpro.Text));
  edrpro.HelpContext := 1;
end;

procedure Tfrmcad_pro_edi.edvdscValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvdsc.Text = '' then
     edvdsc.Text := '0';

  edvdsc.Text := formatfloat('#,0.00###',strtofloat(edvdsc.Text));
end;

procedure Tfrmcad_pro_edi.edsdscValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edsdsc.Text = '' then
     edsdsc.Text := '0';

  edsdsc.Text := formatfloat('#,0.00###',strtofloat(edsdsc.Text));
end;

procedure Tfrmcad_pro_edi.edrdscValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edrdsc.Text = '' then
     edrdsc.Text := '0';

  edrdsc.Text := formatfloat('#,0.00###',strtofloat(edrdsc.Text));
end;

procedure Tfrmcad_pro_edi.edpcomValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpcom.Text = '' then
     edpcom.Text := '0';

  edpcom.Text := formatfloat('#,0.00###',strtofloat(edpcom.Text));
  edpcom.HelpContext := 1;
end;

procedure Tfrmcad_pro_edi.edcustValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcust.Text = '' then
     edcust.Text := '0';

  edcust.Text := formatfloat('#,0.00###',strtofloat(edcust.Text));
  edcust.HelpContext := 1;
end;

procedure Tfrmcad_pro_edi.edclibValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edclib.Text = '' then
     edclib.Text := '0';

  edclib.Text := formatfloat('#,0.00###',strtofloat(edclib.Text));
  edclib.HelpContext := 1;
end;

procedure Tfrmcad_pro_edi.edpipiValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpipi.Text = '' then
     edpipi.Text := '0';

  edpipi.Text := formatfloat('0',strtofloat(edpipi.Text));
end;

procedure Tfrmcad_pro_edi.edrendValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edrend.Text = '' then
     edrend.Text := '0';

  edrend.Text := formatfloat('0.00',strtofloat(edrend.Text));
end;

procedure Tfrmcad_pro_edi.edlargValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edlarg.Text = '' then
     edlarg.Text := '0';

  edlarg.Text := formatfloat('0.00',strtofloat(edlarg.Text));

  if (copy(cbduni.Text,1,1) = 'M') or (copy(cbduni.Text,1,1) = 'K') then
  begin
    if (oTextToValor(edgram.Text) > 0) and (oTextToValor(edlarg.Text) >0) then
    begin
      edrend.Text := formatfloat('0.00',roundto(1000/oTextToValor(edgram.Text),-2));
      edrend.Text := formatfloat('0.00',roundto(oTextToValor(edrend.Text)/oTextToValor(edlarg.Text),-2));
    end;
  end;    
end;

procedure Tfrmcad_pro_edi.edmetrValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edmetr.Text = '' then
     edmetr.Text := '0';

  edmetr.Text := formatfloat('0.00',strtofloat(edmetr.Text));
end;

procedure Tfrmcad_pro_edi.edpscnValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpscn.Text = '' then
     edpscn.Text := '0';

  edpscn.Text := formatfloat('0.00',strtofloat(edpscn.Text));
end;

procedure Tfrmcad_pro_edi.edpsmrValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpsmr.Text = '' then
     edpsmr.Text := '0';

  edpsmr.Text := formatfloat('0.00',strtofloat(edpsmr.Text));
end;

procedure Tfrmcad_pro_edi.edgramValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edgram.Text = '' then
     edgram.Text := '0';

  edgram.Text := formatfloat('0.00',strtofloat(edgram.Text));
  if (copy(cbduni.Text,1,1) = 'M') or (copy(cbduni.Text,1,1) = 'K') then
  begin
    if (oTextToValor(edgram.Text) > 0) and (oTextToValor(edlarg.Text) >0) then
    begin
      edrend.Text := formatfloat('0.00',roundto(1000/oTextToValor(edgram.Text),-2));
      edrend.Text := formatfloat('0.00',roundto(oTextToValor(edrend.Text)/oTextToValor(edlarg.Text),-2));
    end;
  end;    
end;

procedure Tfrmcad_pro_edi.edutilValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edutil.Text = '' then
     edutil.Text := '0';

  edutil.Text := formatfloat('0.00',strtofloat(edutil.Text));
end;

procedure Tfrmcad_pro_edi.edelacValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edelac.Text = '' then
     edelac.Text := '0';

  edelac.Text := formatfloat('0.00',strtofloat(edelac.Text));
end;

procedure Tfrmcad_pro_edi.edelasValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edelas.Text = '' then
     edelas.Text := '0';

  edelas.Text := formatfloat('0.00',strtofloat(edelas.Text));
end;

procedure Tfrmcad_pro_edi.dbgaviKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_DELETE: if cad_pro_grd.State = dsBrowse then
                  aviE.Click;
    VK_ESCAPE: if cad_pro_grd.State = dsBrowse then close else cad_pro_grd.Cancel;
    VK_INSERT: if not aviS.Enabled then aviI.Click;
  end;
end;

procedure Tfrmcad_pro_edi.dbgtecKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgtec.FocusedColumn = 1 then
                 begin
                   cad_pro_grd.Next;
                   if cad_pro_grd.Eof then
                   cad_pro_grd.Append;

                   dbgtec.FocusedColumn := 1;
                 end else
                 dbgtec.FocusedColumn := dbgtec.FocusedColumn + 1;
               end;
    VK_DELETE: if cad_pro_grd.State = dsBrowse then
                  tecE.Click;
    VK_ESCAPE: if cad_pro_grd.State = dsBrowse then close else cad_pro_grd.Cancel;
    VK_INSERT: if not tecS.Enabled then tecI.Click;
  end;
end;

procedure Tfrmcad_pro_edi.eddproKeyPress(Sender: TObject; var Key: Char);
begin
  if key = '''' then
     key := #0;
end;

procedure Tfrmcad_pro_edi.cad_pro_grdBeforePost(DataSet: TDataSet);
begin
{  with Consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_PRO_GRD');
    SQL.Add('WHERE GRD_CPRO = '''+cad_pro_grdGRD_CPRO.AsString+'''');
    SQL.Add('AND        ID <> '''+cad_pro_grdID.AsString+'''');
    Open;
    if Fields[0].AsInteger > 0 then
       DataBaseError('Código '+cad_pro_grdGRD_CPRO.AsString+' já Cadastrado !');
  end;}
end;

procedure Tfrmcad_pro_edi.dbgconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgcon.FocusedColumn = 6 then
                 begin
                   cad_pro_grd.Next;
                   if cad_pro_grd.Eof then
                   cad_pro_grd.Append;

                   dbgcon.FocusedColumn := 1;
                 end else
                 dbgcon.FocusedColumn := dbgcon.FocusedColumn + 1;
               end;
    VK_DELETE: if cad_pro_grd.State = dsBrowse then
                  conE.Click;
    VK_ESCAPE: if cad_pro_grd.State = dsBrowse then close else cad_pro_grd.Cancel;
    VK_INSERT: if not conS.Enabled then conI.Click;
  end;
end;

procedure Tfrmcad_pro_edi.edprecValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edprec.Text = '' then
  edprec.Text := '0';

  if frmprincipal.parametrosPAR_PVAR.AsFloat > 0 then
  edvprc.Text := formatfloat('#,0.0',strtofloat(edprec.Text)+((strtofloat(edprec.Text)*frmprincipal.parametrosPAR_PVAR.AsFloat)/100));

  if frmprincipal.parametrosPAR_PREP.AsFloat > 0 then
  edrprc.Text := formatfloat('#,0.00',strtofloat(edprec.Text)+((strtofloat(edprec.Text)*frmprincipal.parametrosPAR_PREP.AsFloat)/100));

  edprec.Text := formatfloat('#,0.00',strtofloat(edprec.Text));

  if cad_pro_grd.State = dsBrowse then
  begin
    cad_pro_grd.First;
    while not cad_pro_grd.Eof do
    begin
      cad_pro_grd.Edit;
      cad_pro_grdGRD_PREC.Value := oTextToValor(edprec.Text);
      cad_pro_grdGRD_VPRC.Value := oTextToValor(edvprc.Text);
      cad_pro_grdGRD_RPRC.Value := oTextToValor(edrprc.Text);
      cad_pro_grdGRD_ESTO.Value := 1;

      if frmprincipal.parametrosPAR_PVAR.AsFloat > 0 then
         cad_pro_grdGRD_VPRC.Value := ROUNDTO(strtofloat(edprec.Text)+((strtofloat(edprec.Text)*frmprincipal.parametrosPAR_PVAR.AsFloat)/100),-2);

      if frmprincipal.parametrosPAR_PREP.AsFloat > 0 then
         cad_pro_grdGRD_RPRC.Value := ROUNDTO(strtofloat(edprec.Text)+((strtofloat(edprec.Text)*frmprincipal.parametrosPAR_PREP.AsFloat)/100),-2);
 
      cad_pro_grd.Post;
      cad_pro_grd.Next;
    end;
  end;

  edprec.HelpContext := 1;
end;

procedure Tfrmcad_pro_edi.edpperValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpper.Text = '' then
     edpper.Text := '0';

  edpper.Text := formatfloat('#,0.00###',strtofloat(edpper.Text));
end;

procedure Tfrmcad_pro_edi.edpprzValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpprz.Text = '' then
     edpprz.Text := '0';

  edpprz.Text := formatfloat('#,0.00###',strtofloat(edpprz.Text));
end;

procedure Tfrmcad_pro_edi.edvperValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvper.Text = '' then
     edvper.Text := '0';

  edvper.Text := formatfloat('#,0.00###',strtofloat(edvper.Text));
end;

procedure Tfrmcad_pro_edi.edsperValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edsper.Text = '' then
     edsper.Text := '0';

  edsper.Text := formatfloat('#,0.00###',strtofloat(edsper.Text));
end;

procedure Tfrmcad_pro_edi.edvprzValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvprz.Text = '' then
     edvprz.Text := '0';

  edvprz.Text := formatfloat('#,0.00###',strtofloat(edvprz.Text));
end;

procedure Tfrmcad_pro_edi.edsprzValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edsprz.Text = '' then
     edsprz.Text := '0';

  edsprz.Text := formatfloat('#,0.00###',strtofloat(edsprz.Text));
end;

procedure Tfrmcad_pro_edi.edrperValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edrper.Text = '' then
     edrper.Text := '0';

  edrper.Text := formatfloat('#,0.00###',strtofloat(edrper.Text));
end;

procedure Tfrmcad_pro_edi.edrprzValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edrprz.Text = '' then
     edrprz.Text := '0';

  edrprz.Text := formatfloat('#,0.00###',strtofloat(edrprz.Text));
end;

procedure Tfrmcad_pro_edi.cbstavExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    try
      cad_pro_grd.DisableControls;
      cad_pro_grd.First;

      while not cad_pro_grd.Eof do
      begin
        cad_pro_grd.Edit;

        if cbSTAV.Text = 'A' then
        cad_pro_grdGRD_STAV.Value := 'ATIVO' else
        if cbSTAV.Text = 'I' then
        cad_pro_grdGRD_STAV.Value := 'INATIVO' else
        if cbSTAV.Text = 'P' then
        cad_pro_grdGRD_STAV.Value := 'PRÉ-CADASTRO';

        cad_pro_grd.Post;
        cad_pro_grd.Next;
      end;
    finally
      cad_pro_grd.EnableControls;
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

procedure Tfrmcad_pro_edi.cbccstExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if cbccst.Text = '0' then
    cbdori.Text := 'BRASIL' else
    cbdori.Text := 'CHINA';
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

procedure Tfrmcad_pro_edi.cbdcatExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if cbdcat.Text = cad_proPRO_DCAT.AsString then
       exit;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAT_PESO,CAT_CCLF,CAT_PIPI FROM CAD_PRO_CAC');
      SQL.Add('WHERE  CAT_DCAT = '''+cbdcat.Text+'''');
      SQL.Add('AND    CAT_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      Open;

      if not fields[0].IsNull then
      begin
        edpeso.Text := formatfloat('#,0.00###',fields[0].AsFloat);
        cbcclf.Text := fields[1].AsString;
        edpipi.Text := formatfloat('#,0.00###',fields[2].AsFloat);
      end;  
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

procedure Tfrmcad_pro_edi.cbcclfExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if cbCCLF.Text = cad_proPRO_CCLF.AsString then
       exit;

    if not cad_pro_grd.Active then
    exit;

    cad_pro_grd.First;
    if not cad_pro_grd.Fields[0].IsNull then
    begin
      if oYesNo(handle,'Confirma atualização de NCM em toda a grade do produto ?') = mrno then
      exit;

      try
        cad_pro_grd.DisableControls;
        while not cad_pro_grd.Eof do
        begin
          cad_pro_grd.Edit;
          cad_pro_grdGRD_CCLF.Value := cbcclf.Text;
          cad_pro_grd.Post;
          cad_pro_grd.Next;
        end;
      finally
        cad_pro_grd.EnableControls;
      end;
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

procedure Tfrmcad_pro_edi.edvoscValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvosc.Text = '' then
     edvosc.Text := '0';

  edvosc.Text := formatfloat('0.00',strtofloat(edvosc.Text));
end;

procedure Tfrmcad_pro_edi.edvofdValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvofd.Text = '' then
     edvofd.Text := '0';

  edvofd.Text := formatfloat('0.00',strtofloat(edvofd.Text));
end;

procedure Tfrmcad_pro_edi.edvocxValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpeso.Text = '' then
     edpeso.Text := '0';

  edpeso.Text := formatfloat('0.00',strtofloat(edpeso.Text));

  if edvocx.Text = '' then
     edvocx.Text := '0';

  edvocx.Text := formatfloat('0.00',strtofloat(edvocx.Text));

  if (oTextToValor(edvocx.Text) > 0) and (oTextToValor(edpeso.Text) > 0) then
  edpsmr.Text := formatfloat('0.00',oTextToValor(edvocx.Text)/oTextToValor(edpeso.Text));
end;

procedure Tfrmcad_pro_edi.btnokClick(Sender: TObject);
  var i: word;
   ccor: integer;
   rcor: string;
   pcor: string;
begin
  if cad_pro_grd.State in [dsInsert,dsEdit] then
  cad_pro_grd.Post;

  if (edgini.Text = '') or (edgfim.Text = '') then
  exit;

  ccor := 0;
  rcor := '';
  pcor := '';

  if cbdcor.Text <> '' then
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT COR_CCOR,COR_REFE,COR_PCOR FROM TAB_COR');
      SQL.Add('WHERE  COR_DCOR = '''+cbdcor.Text+'''');
      Open;
      ccor := fields[0].AsInteger;
      rcor := fields[1].AsString;
      pcor := fields[2].AsString;

      if fields[0].IsNull then
         DataBaseError('Descrição da cor não cadastrada !');
    end;

  try
    i := strtoint(edgini.Text);
    repeat
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_GRD');
        SQL.Add('WHERE  GRD_CGRD = '''+inttostr(i)+'''');
        Open;
      end;

      if not consulta.Fields[0].IsNull then
      begin
        cad_pro_grd.Append;
        cad_pro_grdGRD_CGRD.Value := inttostr(i);
        cad_pro_grdGRD_CCOR.Value := ccor;
        cad_pro_grdGRD_RCOR.Value := rcor;
        cad_pro_grdGRD_PCOR.Value := pcor;
        cad_pro_grdGRD_DCOR.Value := cbdcor.Text;
        cad_pro_grd.Post;
      end;
      inc(i)
    until i > strtoint(edgfim.Text);
  except
    raise exception.Create('Erro na inclusão da(s) grade(s) !'+#13+'Utilize apenas para grades numéricas.');
  end;
end;

procedure Tfrmcad_pro_edi.edginiValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edgini.Text = '' then
  edgini.Text := '0';

  try
    edgini.Text := inttostr(strtoint(edgini.Text));
  except
    raise exception.Create('Grade inválida !'+#13+'Utilize apenas números.');
  end;
end;

procedure Tfrmcad_pro_edi.edgfimValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edgfim.Text = '' then
  edgfim.Text := '0';

  try
    edgfim.Text := inttostr(strtoint(edgfim.Text));
  except
    raise exception.Create('Grade inválida !'+#13+'Utilize apenas números.');
  end;
end;

procedure Tfrmcad_pro_edi.cbdforExit(Sender: TObject);
begin
  if (frmcad_pro_edi.Tag = 1) or (frmprincipal.parametrosPAR_RFOR.AsString <> '1') or (cbdfor.Text = '') or (edcart.Text <> '') then
  exit;

  if edcfor.Text = '' then
  begin
    edcfor.SetFocus;
    raise exception.Create('Referencia do fornecedor não informada !');
  end;
  
  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_FOR');
      SQL.Add('WHERE  FOR_FANT = '''+cbdfor.Text+'''');
      Open;

      if fields[0].IsNull then
      begin
        edcfor.SetFocus;
        raise exception.Create('Fornecedor não cadastrado !');
      end;
    end;

    edcart.Text := oStrZero(consulta.Fields[0].AsInteger,3)+edcfor.Text;
    if frmprincipal.parametrosPAR_TIPO.AsString = '0' then
    edcart.Text := edcfor.Text+oStrZero(consulta.Fields[0].AsInteger,3);
  finally
    ActiveControl  := nil;
    edcart.Enabled := true;
    edcart.SetFocus;
  end;
end;

procedure Tfrmcad_pro_edi.tsggrdShow(Sender: TObject);
begin
  if tsgavi.TabVisible then
  pcgrd.ActivePage := tsgavi;

  if tsgtec.TabVisible then
  pcgrd.ActivePage := tsgtec;

  if tsgcon.TabVisible then
  pcgrd.ActivePage := tsgcon;
end;

procedure Tfrmcad_pro_edi.dbgaviGRD_PRECValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  cad_pro_grdGRD_PREC.Value := oTextToValor(dbgavi.EditingText);

  if cad_pro_grdGRD_PREC.AsFloat > 0 then
  begin
    if frmprincipal.parametrosPAR_PVAR.AsFloat > 0 then
       cad_pro_grdGRD_VPRC.Value := cad_pro_grdGRD_PREC.AsFloat + ((cad_pro_grdGRD_PREC.AsFloat*frmprincipal.parametrosPAR_PVAR.AsFloat)/100);

    if frmprincipal.parametrosPAR_PREP.AsFloat > 0 then
       cad_pro_grdGRD_RPRC.Value := cad_pro_grdGRD_PREC.AsFloat + ((cad_pro_grdGRD_PREC.AsFloat*frmprincipal.parametrosPAR_PREP.AsFloat)/100);
  end;

  tab_prc(11);
end;

procedure Tfrmcad_pro_edi.dbgtecGRD_PRECValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  cad_pro_grdGRD_PREC.Value := oTextToValor(dbgavi.EditingText);

  if cad_pro_grdGRD_PREC.AsFloat > 0 then
  begin
    if frmprincipal.parametrosPAR_PVAR.AsFloat > 0 then
       cad_pro_grdGRD_VPRC.Value := cad_pro_grdGRD_PREC.AsFloat + ((cad_pro_grdGRD_PREC.AsFloat*frmprincipal.parametrosPAR_PVAR.AsFloat)/100);

    if frmprincipal.parametrosPAR_PREP.AsFloat > 0 then
       cad_pro_grdGRD_RPRC.Value := cad_pro_grdGRD_PREC.AsFloat + ((cad_pro_grdGRD_PREC.AsFloat*frmprincipal.parametrosPAR_PREP.AsFloat)/100);
  end;

  tab_prc(11);
end;

procedure Tfrmcad_pro_edi.dbgconGRD_PRECValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  cad_pro_grdGRD_PREC.Value := oTextToValor(dbgavi.EditingText);

  if cad_pro_grdGRD_PREC.AsFloat > 0 then
  begin
    if frmprincipal.parametrosPAR_PVAR.AsFloat > 0 then
       cad_pro_grdGRD_VPRC.Value := cad_pro_grdGRD_PREC.AsFloat + ((cad_pro_grdGRD_PREC.AsFloat*frmprincipal.parametrosPAR_PVAR.AsFloat)/100);

    if frmprincipal.parametrosPAR_PREP.AsFloat > 0 then
       cad_pro_grdGRD_RPRC.Value := cad_pro_grdGRD_PREC.AsFloat + ((cad_pro_grdGRD_PREC.AsFloat*frmprincipal.parametrosPAR_PREP.AsFloat)/100);
  end;

  tab_prc(11);
end;

procedure Tfrmcad_pro_edi.dbgaviGRD_PPROValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  cad_pro_grdGRD_PPRO.Value := oTextToValor(dbgavi.EditingText);
  tab_prc(22);
end;

procedure Tfrmcad_pro_edi.dbgtecGRD_PPROValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  cad_pro_grdGRD_PPRO.Value := oTextToValor(dbgtec.EditingText);
  tab_prc(22);
end;

procedure Tfrmcad_pro_edi.dbgconGRD_PPROValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  cad_pro_grdGRD_PPRO.Value := oTextToValor(dbgcon.EditingText);
  tab_prc(22);
end;

procedure Tfrmcad_pro_edi.dbgaviGRD_VPRCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  cad_pro_grdGRD_VPRC.Value := oTextToValor(dbgavi.EditingText);
  tab_prc(33);
end;

procedure Tfrmcad_pro_edi.dbgtecGRD_VPRCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  cad_pro_grdGRD_VPRC.Value := oTextToValor(dbgtec.EditingText);
  tab_prc(33);
end;

procedure Tfrmcad_pro_edi.dbgconGRD_VPRCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  cad_pro_grdGRD_VPRC.Value := oTextToValor(dbgcon.EditingText);
  tab_prc(33);
end;

procedure Tfrmcad_pro_edi.dbgaviGRD_RPRCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  cad_pro_grdGRD_RPRC.Value := oTextToValor(dbgavi.EditingText);
  tab_prc(44);
end;

procedure Tfrmcad_pro_edi.dbgtecGRD_RPRCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  cad_pro_grdGRD_RPRC.Value := oTextToValor(dbgtec.EditingText);
  tab_prc(44);
end;

procedure Tfrmcad_pro_edi.dbgconGRD_RPRCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  cad_pro_grdGRD_RPRC.Value := oTextToValor(dbgcon.EditingText);
  tab_prc(44);
end;

procedure Tfrmcad_pro_edi.dbgaviGRD_SPRCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  cad_pro_grdGRD_SPRC.Value := oTextToValor(dbgavi.EditingText);
  tab_prc(55);
end;

procedure Tfrmcad_pro_edi.dbgtecGRD_SPRCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  cad_pro_grdGRD_SPRC.Value := oTextToValor(dbgtec.EditingText);
  tab_prc(55);
end;

procedure Tfrmcad_pro_edi.dbgconGRD_SPRCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  cad_pro_grdGRD_SPRC.Value := oTextToValor(dbgcon.EditingText);
  tab_prc(55);
end;

procedure Tfrmcad_pro_edi.dbgaviGRD_DCORValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if DBGAVI.EditingText <> '' then
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT COR_CCOR,COR_REFE,COR_DCOR,COR_PCOR FROM TAB_COR');
      SQL.Add('WHERE  COR_DCOR = '''+DBGAVI.EditingText+'''');
      Open;

      if fields[0].IsNull then
         DataBaseError('Cor não Cadastrada !');

      cad_pro_grdGRD_CART.Value := edcart.Text;
      cad_pro_grdGRD_CCOR.Value := fields[0].AsInteger;
      cad_pro_grdGRD_RCOR.Value := fields[1].AsString;
      cad_pro_grdGRD_DCOR.Value := fields[2].AsString;
      cad_pro_grdGRD_PCOR.Value := fields[3].AsString;
      cad_pro_grdGRD_CPRO.Value := edcart.Text+'.'+oStrZero(cad_pro_grdGRD_CCOR.AsInteger,4);

      cad_pro_grdGRD_PREC.Value := oTextToValor(edprec.Text);
      cad_pro_grdGRD_VPRC.Value := oTextToValor(edvprc.Text);
      cad_pro_grdGRD_RPRC.Value := oTextToValor(edrprc.Text);

      if frmprincipal.parametrosPAR_PVAR.AsFloat > 0 then
         cad_pro_grdGRD_VPRC.Value := ROUNDTO(strtofloat(edprec.Text)+((strtofloat(edprec.Text)*frmprincipal.parametrosPAR_PVAR.AsFloat)/100),-2);

      if frmprincipal.parametrosPAR_PREP.AsFloat > 0 then
         cad_pro_grdGRD_RPRC.Value := ROUNDTO(strtofloat(edprec.Text)+((strtofloat(edprec.Text)*frmprincipal.parametrosPAR_PREP.AsFloat)/100),-2);

      cad_pro_grdGRD_CCLF.Value := cbcclf.Text;   
    end;
end;

procedure Tfrmcad_pro_edi.edcartValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if tag = 0 then
  begin
    with cad_pro do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM CAD_PRO');
      SQL.Add('WHERE PRO_CART = '''+edcart.Text+'''');
      Open;

      if FieldByName('ID').AsInteger > 0 then
         oException(EDCART,'Artigo já Cadastrado !' + #13+#13+
                            FieldByName('PRO_DPRO').AsString + #13 +
                            FormatDateTime('dd/mm/yy',FieldByName('PRO_DCAD').AsDateTime));
    end;
  end else
  begin
    if edcart.Text <> cad_proPRO_CART.AsString then
    begin
      if oYesNo(frmcad_pro_edi.Handle,'Confirma a mudança de referencia ?') = mrno then
         abort;

      MUDA_REFERENCIA;
    end;
  end;
end;

procedure Tfrmcad_pro_edi.ILA_BMP1Click(Sender: TObject);
begin
  try
    FrmETI_SEL := TFrmETI_SEL.Create(Self);
    FrmETI_SEL.ShowModal;
  finally
    if FrmETI_SEL.Imagem <> nil then
    begin
      TImage(Sender).Picture := FrmETI_SEL.Imagem.Picture;
      TImage(Sender).Hint    := FrmETI_SEL.Imagem.Hint;
      TImage(Sender).Tag     := FrmETI_SEL.Imagem.Tag;
            BILA_BMP.Tag     := 1;

      Case TImage(Sender).HelpContext of
        1: begin
             EDILA_INS1.Text := TImage(Sender).Hint;
             EDILA_INS1.SetFocus;
           end;
        2: begin
             EDILA_INS2.Text := TImage(Sender).Hint;
             EDILA_INS2.SetFocus;
           end;
        3: begin
             EDILA_INS3.Text := TImage(Sender).Hint;
             EDILA_INS3.SetFocus;
           end;
        4: begin
             EDILA_INS4.Text := TImage(Sender).Hint;
             EDILA_INS4.SetFocus;
           end;
        5: begin
             EDILA_INS5.Text := TImage(Sender).Hint;
             EDILA_INS5.SetFocus;
           end;
        6: begin
             EDILA_INS6.Text := TImage(Sender).Hint;
             EDILA_INS6.SetFocus;
           end;
        7: begin
             EDILA_INS7.Text := TImage(Sender).Hint;
             EDILA_INS7.SetFocus;
           end;
        8: begin
             EDILA_INS8.Text := TImage(Sender).Hint;
             EDILA_INS8.SetFocus;
           end;
      end;
    end;
  end;
end;

end.

