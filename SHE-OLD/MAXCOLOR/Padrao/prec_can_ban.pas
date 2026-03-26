unit prec_can_ban;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, ppadr3, dxDBTLCl,
  dxGrClms, math, dxExEdtr, dxPageControl, rxSpeedbar;

type
  Tfrmrec_can_ban = class(Tfrmpadr3)
    dtscadastro: TDataSource;
    tSHEILD: TIBTransaction;
    fin_rec_bai: TIBQuery;
    siPSQ: TSpeedItem;
    cadastro: TIBDataSet;
    cadastroID: TIntegerField;
    cadastroFIN_CCAB: TIntegerField;
    cadastroFIN_CDBX: TIntegerField;
    cadastroFIN_CDCX: TIntegerField;
    cadastroFIN_CCLI: TIntegerField;
    cadastroFIN_DCLI: TIBStringField;
    cadastroFIN_CVEN: TIntegerField;
    cadastroFIN_VEND: TIBStringField;
    cadastroFIN_CREP: TIntegerField;
    cadastroFIN_DREP: TIBStringField;
    cadastroFIN_PRAZ: TSmallintField;
    cadastroFIN_ATRA: TSmallintField;
    cadastroFIN_CONC: TSmallintField;
    cadastroFIN_DCAD: TDateField;
    cadastroFIN_DVEN: TDateField;
    cadastroFIN_DPAG: TDateField;
    cadastroFIN_DMED: TDateField;
    cadastroFIN_DATR: TDateField;
    cadastroFIN_STDO: TIBStringField;
    cadastroFIN_DOCT: TIBStringField;
    cadastroFIN_BANC: TIBStringField;
    cadastroFIN_DBAN: TIBStringField;
    cadastroFIN_AGEN: TIBStringField;
    cadastroFIN_CONT: TIBStringField;
    cadastroFIN_NCHQ: TIBStringField;
    cadastroFIN_MCHQ: TSmallintField;
    cadastroFIN_TIPO: TIBStringField;
    cadastroFIN_STFI: TIBStringField;
    cadastroFIN_STCO: TIBStringField;
    cadastroFIN_VALO: TIBBCDField;
    cadastroFIN_VPAG: TIBBCDField;
    cadastroFIN_VPEN: TIBBCDField;
    cadastroFIN_OBSE: TMemoField;
    cadastroFIN_STA: TIBStringField;
    cadastroFIN_COBR: TIBStringField;
    fin_rec_baiID: TIntegerField;
    fin_rec_baiFIN_CCAB: TIntegerField;
    fin_rec_baiFIN_CDBX: TIntegerField;
    fin_rec_baiFIN_CDCX: TIntegerField;
    fin_rec_baiFIN_CCLI: TIntegerField;
    fin_rec_baiFIN_CVEN: TIntegerField;
    fin_rec_baiFIN_CREP: TIntegerField;
    fin_rec_baiFIN_PRAZ: TSmallintField;
    fin_rec_baiFIN_ATRA: TSmallintField;
    fin_rec_baiFIN_CONC: TSmallintField;
    fin_rec_baiFIN_DCAD: TDateField;
    fin_rec_baiFIN_DVEN: TDateField;
    fin_rec_baiFIN_DPAG: TDateField;
    fin_rec_baiFIN_DMED: TDateField;
    fin_rec_baiFIN_DATR: TDateField;
    fin_rec_baiFIN_STDO: TIBStringField;
    fin_rec_baiFIN_DOCT: TIBStringField;
    fin_rec_baiFIN_BANC: TIBStringField;
    fin_rec_baiFIN_DBAN: TIBStringField;
    fin_rec_baiFIN_AGEN: TIBStringField;
    fin_rec_baiFIN_CONT: TIBStringField;
    fin_rec_baiFIN_NCHQ: TIBStringField;
    fin_rec_baiFIN_MCHQ: TSmallintField;
    fin_rec_baiFIN_TIPO: TIBStringField;
    fin_rec_baiFIN_STFI: TIBStringField;
    fin_rec_baiFIN_STCO: TIBStringField;
    fin_rec_baiFIN_VALO: TIBBCDField;
    fin_rec_baiFIN_VPAG: TIBBCDField;
    fin_rec_baiFIN_VPEN: TIBBCDField;
    fin_rec_baiFIN_OBSE: TMemoField;
    fin_rec_baiFIN_STA: TIBStringField;
    fin_rec_baiCLI_FANT: TIBStringField;
    fin_rec_baiREP_FANT: TIBStringField;
    fin_rec_baiCLI_RAZA: TIBStringField;
    cadastroFIN_RCLI: TIBStringField;
    cadastroFIN_RREP: TIBStringField;
    consulta_s: TIBQuery;
    SpeedBar1: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedbarSection2: TSpeedbarSection;
    SpeedbarSection3: TSpeedbarSection;
    SpeedbarSection4: TSpeedbarSection;
    finA: TSpeedItem;
    finD: TSpeedItem;
    finS: TSpeedItem;
    finC: TSpeedItem;
    finI: TSpeedItem;
    fin_rec_rec: TIBQuery;
    fin_rec_recID: TIntegerField;
    fin_rec_recFIN_CCAB: TIntegerField;
    fin_rec_recFIN_CDBX: TIntegerField;
    fin_rec_recFIN_CDCX: TIntegerField;
    fin_rec_recFIN_CCLI: TIntegerField;
    fin_rec_recFIN_CVEN: TIntegerField;
    fin_rec_recFIN_CREP: TIntegerField;
    fin_rec_recFIN_PRAZ: TSmallintField;
    fin_rec_recFIN_ATRA: TSmallintField;
    fin_rec_recFIN_CONC: TSmallintField;
    fin_rec_recFIN_DCAD: TDateField;
    fin_rec_recFIN_DVEN: TDateField;
    fin_rec_recFIN_DPAG: TDateField;
    fin_rec_recFIN_DMED: TDateField;
    fin_rec_recFIN_DATR: TDateField;
    fin_rec_recFIN_STDO: TIBStringField;
    fin_rec_recFIN_DOCT: TIBStringField;
    fin_rec_recFIN_BANC: TIBStringField;
    fin_rec_recFIN_DBAN: TIBStringField;
    fin_rec_recFIN_AGEN: TIBStringField;
    fin_rec_recFIN_CONT: TIBStringField;
    fin_rec_recFIN_NCHQ: TIBStringField;
    fin_rec_recFIN_MCHQ: TSmallintField;
    fin_rec_recFIN_TIPO: TIBStringField;
    fin_rec_recFIN_STFI: TIBStringField;
    fin_rec_recFIN_STCO: TIBStringField;
    fin_rec_recFIN_VALO: TIBBCDField;
    fin_rec_recFIN_VPAG: TIBBCDField;
    fin_rec_recFIN_VPEN: TIBBCDField;
    fin_rec_recFIN_OBSE: TMemoField;
    fin_rec_recFIN_STA: TIBStringField;
    fin_rec_recFIN_DCAN: TDateField;
    fin_rec_recFIN_CPPL: TIntegerField;
    fin_rec_recFIN_CCUS: TIntegerField;
    fin_rec_recFIN_CBCO: TIntegerField;
    fin_rec_recFIN_PORT: TIBStringField;
    fin_rec_recFIN_VMUL: TIBBCDField;
    fin_rec_recFIN_PMUL: TIBBCDField;
    fin_rec_recFIN_VJUR: TIBBCDField;
    fin_rec_recFIN_PJUR: TIBBCDField;
    fin_rec_recFIN_VDES: TIBBCDField;
    fin_rec_recFIN_PDES: TIBBCDField;
    fin_rec_recFIN_DESC: TIBStringField;
    fin_rec_recFIN_CDCO: TIntegerField;
    fin_rec_recFIN_CDBA: TIBStringField;
    fin_rec_recFIN_DEBA: TIBStringField;
    fin_rec_recCLI_FANT: TIBStringField;
    fin_rec_recCLI_RAZA: TIBStringField;
    fin_rec_recREP_FANT: TIBStringField;
    rec: TIBQuery;
    recID: TIntegerField;
    recFIN_CCAB: TIntegerField;
    recFIN_CDBX: TIntegerField;
    recFIN_CDCX: TIntegerField;
    recFIN_CCLI: TIntegerField;
    recFIN_DCLI: TIBStringField;
    recFIN_RCLI: TIBStringField;
    recFIN_CVEN: TIntegerField;
    recFIN_VEND: TIBStringField;
    recFIN_CREP: TIntegerField;
    recFIN_DREP: TIBStringField;
    recFIN_RREP: TIBStringField;
    recFIN_PRAZ: TSmallintField;
    recFIN_ATRA: TSmallintField;
    recFIN_CONC: TSmallintField;
    recFIN_DCAD: TDateField;
    recFIN_DVEN: TDateField;
    recFIN_DPAG: TDateField;
    recFIN_DMED: TDateField;
    recFIN_DATR: TDateField;
    recFIN_STDO: TIBStringField;
    recFIN_DOCT: TIBStringField;
    recFIN_BANC: TIBStringField;
    recFIN_DBAN: TIBStringField;
    recFIN_AGEN: TIBStringField;
    recFIN_CONT: TIBStringField;
    recFIN_NCHQ: TIBStringField;
    recFIN_MCHQ: TSmallintField;
    recFIN_TIPO: TIBStringField;
    recFIN_STFI: TIBStringField;
    recFIN_STCO: TIBStringField;
    recFIN_VALO: TIBBCDField;
    recFIN_VPAG: TIBBCDField;
    recFIN_VPEN: TIBBCDField;
    recFIN_OBSE: TMemoField;
    recFIN_STA: TIBStringField;
    recFIN_COBR: TIBStringField;
    fin_rec_baiFIN_DCAN: TDateField;
    fin_rec_baiFIN_CPPL: TIntegerField;
    fin_rec_baiFIN_CCUS: TIntegerField;
    fin_rec_baiFIN_CBCO: TIntegerField;
    fin_rec_baiFIN_PORT: TIBStringField;
    fin_rec_baiFIN_VMUL: TIBBCDField;
    fin_rec_baiFIN_PMUL: TIBBCDField;
    fin_rec_baiFIN_VJUR: TIBBCDField;
    fin_rec_baiFIN_PJUR: TIBBCDField;
    fin_rec_baiFIN_VDES: TIBBCDField;
    fin_rec_baiFIN_PDES: TIBBCDField;
    fin_rec_baiFIN_DESC: TIBStringField;
    fin_rec_baiFIN_CDCO: TIntegerField;
    fin_rec_baiFIN_CDBA: TIBStringField;
    fin_rec_baiFIN_DEBA: TIBStringField;
    fin_rec_baiUSU_DUSU: TIBStringField;
    fin_rec_recUSU_DUSU: TIBStringField;
    cadastroFIN_DBAI: TDateField;
    fin_rec_baiFIN_DBAI: TDateField;
    fin_rec_recFIN_DBAI: TDateField;
    cadastroFIN_VENC: TIBBCDField;
    fin_rec_baiFIN_IDBX: TIBStringField;
    fin_rec_baiFIN_VENC: TIBBCDField;
    fin_rec_recFIN_IDBX: TIBStringField;
    fin_rec_recFIN_VENC: TIBBCDField;
    aux_S: TIBQuery;
    cadastroFIN_DFIN: TIBStringField;
    cadastroFIN_CPPL: TIntegerField;
    cadastroFIN_CCUS: TIntegerField;
    cadastroFIN_CDCO: TIntegerField;
    cadastroFIN_CDBA: TIBStringField;
    cadastroFIN_DEBA: TIBStringField;
    cadastroFIN_CTNR: TIBStringField;
    fin_rec_baiFIN_CTNR: TIBStringField;
    dtslan_chq: TDataSource;
    recFIN_DBAI: TDateField;
    recFIN_VENC: TIBBCDField;
    recFIN_CPF: TIBStringField;
    lan_chq: TIBDataSet;
    lan_chqID: TIntegerField;
    lan_chqFIN_CCAB: TIntegerField;
    lan_chqFIN_CDBX: TIntegerField;
    lan_chqFIN_CDCX: TIntegerField;
    lan_chqFIN_CCLI: TIntegerField;
    lan_chqFIN_DCLI: TIBStringField;
    lan_chqFIN_RCLI: TIBStringField;
    lan_chqFIN_CVEN: TIntegerField;
    lan_chqFIN_VEND: TIBStringField;
    lan_chqFIN_CREP: TIntegerField;
    lan_chqFIN_DREP: TIBStringField;
    lan_chqFIN_RREP: TIBStringField;
    lan_chqFIN_PRAZ: TSmallintField;
    lan_chqFIN_ATRA: TSmallintField;
    lan_chqFIN_CONC: TSmallintField;
    lan_chqFIN_DCAD: TDateField;
    lan_chqFIN_DVEN: TDateField;
    lan_chqFIN_DPAG: TDateField;
    lan_chqFIN_DMED: TDateField;
    lan_chqFIN_DATR: TDateField;
    lan_chqFIN_STDO: TIBStringField;
    lan_chqFIN_DOCT: TIBStringField;
    lan_chqFIN_BANC: TIBStringField;
    lan_chqFIN_DBAN: TIBStringField;
    lan_chqFIN_AGEN: TIBStringField;
    lan_chqFIN_CONT: TIBStringField;
    lan_chqFIN_NCHQ: TIBStringField;
    lan_chqFIN_MCHQ: TSmallintField;
    lan_chqFIN_TIPO: TIBStringField;
    lan_chqFIN_STFI: TIBStringField;
    lan_chqFIN_STCO: TIBStringField;
    lan_chqFIN_VALO: TIBBCDField;
    lan_chqFIN_VPAG: TIBBCDField;
    lan_chqFIN_VPEN: TIBBCDField;
    lan_chqFIN_OBSE: TMemoField;
    lan_chqFIN_STA: TIBStringField;
    lan_chqFIN_COBR: TIBStringField;
    lan_chqFIN_DBAI: TDateField;
    lan_chqFIN_VENC: TIBBCDField;
    lan_chqFIN_CPF: TIBStringField;
    fin_rec_recFIN_BCON: TIntegerField;
    fin_rec_recFIN_DCON: TIBStringField;
    fin_rec_recFIN_LOTE: TIntegerField;
    fin_rec_recFIN_DLOT: TDateField;
    fin_rec_recFIN_CDCH: TSmallintField;
    fin_rec_baiFIN_BCON: TIntegerField;
    fin_rec_baiFIN_DCON: TIBStringField;
    fin_rec_baiFIN_LOTE: TIntegerField;
    fin_rec_baiFIN_DLOT: TDateField;
    fin_rec_baiFIN_CDCH: TSmallintField;
    fin_rec_baiFIN_CPF: TIBStringField;
    fin_rec_recFIN_CPF: TIBStringField;
    pnlbot: TPanel;
    GroupBox1: TGroupBox;
    dbgrec_rec: TdxDBGrid;
    SpeedBar3: TSpeedBar;
    SpeedbarSection9: TSpeedbarSection;
    SpeedbarSection10: TSpeedbarSection;
    SpeedbarSection11: TSpeedbarSection;
    SpeedbarSection12: TSpeedbarSection;
    siREC: TSpeedItem;
    siCRE: TSpeedItem;
    GroupBox2: TGroupBox;
    dxDBGrid1: TdxDBGrid;
    fin_rec: TIBQuery;
    dtsfin_rec: TDataSource;
    fin_recFIN_DOCT: TIBStringField;
    fin_recFIN_VALO: TIBBCDField;
    fin_recFIN_STFI: TIBStringField;
    dxDBGrid1FIN_DOCT: TdxDBGridMaskColumn;
    dxDBGrid1FIN_VALO: TdxDBGridCurrencyColumn;
    dxDBGrid1FIN_STFI: TdxDBGridMaskColumn;
    SpeedBar4: TSpeedBar;
    SpeedbarSection13: TSpeedbarSection;
    SpeedbarSection14: TSpeedbarSection;
    SpeedbarSection15: TSpeedbarSection;
    SpeedbarSection16: TSpeedbarSection;
    siVIN: TSpeedItem;
    siVITD: TSpeedItem;
    cadastroFIN_VMUL: TIBBCDField;
    cadastroFIN_PMUL: TIBBCDField;
    cadastroFIN_VJUR: TIBBCDField;
    cadastroFIN_PJUR: TIBBCDField;
    cadastroFIN_VDES: TIBBCDField;
    cadastroFIN_PDES: TIBBCDField;
    lan_chqFIN_VMUL: TIBBCDField;
    lan_chqFIN_PMUL: TIBBCDField;
    lan_chqFIN_VJUR: TIBBCDField;
    lan_chqFIN_PJUR: TIBBCDField;
    lan_chqFIN_VDES: TIBBCDField;
    lan_chqFIN_PDES: TIBBCDField;
    pcconsulta: TdxPageControl;
    tsCON: TdxTabSheet;
    tsENC: TdxTabSheet;
    dbgConsulta: TdxDBGrid;
    dbgencargos: TdxDBGrid;
    dbgConsultaFIN_STFI: TdxDBGridPickColumn;
    dbgConsultaFIN_DCLI: TdxDBGridMaskColumn;
    dbgConsultaFIN_DOCT: TdxDBGridMaskColumn;
    dbgConsultaFIN_STDO: TdxDBGridMaskColumn;
    dbgConsultaFIN_DVEN: TdxDBGridDateColumn;
    dbgConsultaFIN_VALO: TdxDBGridMaskColumn;
    dbgConsultaFIN_VDES: TdxDBGridMaskColumn;
    dbgConsultaFIN_VENC: TdxDBGridMaskColumn;
    dbgConsultaFIN_VPAG: TdxDBGridMaskColumn;
    dbgConsultaFIN_DPAG: TdxDBGridDateColumn;
    dbgConsultaFIN_VPEN: TdxDBGridMaskColumn;
    dbgConsultaFIN_RCLI: TdxDBGridMaskColumn;
    dbgConsultaFIN_DREP: TdxDBGridMaskColumn;
    dbgConsultaFIN_VEND: TdxDBGridMaskColumn;
    dbgencargosFIN_DOCT: TdxDBGridMaskColumn;
    dbgencargosFIN_VALO: TdxDBGridMaskColumn;
    dbgencargosFIN_VDES: TdxDBGridMaskColumn;
    dbgencargosFIN_PDES: TdxDBGridMaskColumn;
    dbgencargosFIN_VMUL: TdxDBGridMaskColumn;
    dbgencargosFIN_PMUL: TdxDBGridMaskColumn;
    dbgencargosFIN_VJUR: TdxDBGridMaskColumn;
    dbgencargosFIN_PJUR: TdxDBGridMaskColumn;
    dbgencargosFIN_VPEN: TdxDBGridMaskColumn;
    siTPG: TSpeedItem;
    SpeedItem1: TSpeedItem;
    dbgrec_recFIN_TIPO: TdxDBGridMaskColumn;
    dbgrec_recFIN_DVEN: TdxDBGridDateColumn;
    dbgrec_recFIN_VPAG: TdxDBGridMaskColumn;
    dbgrec_recFIN_NCHQ: TdxDBGridMaskColumn;
    cadastroFIN_CDRD: TIntegerField;
    cadastroFIN_VCHQ: TIBBCDField;
    cadastroFIN_CPF: TIBStringField;
    cadastroFIN_DERD: TIBStringField;
    cadastroFIN_DTST: TDateTimeField;
    lan_chqFIN_CDRD: TIntegerField;
    lan_chqFIN_DFIN: TIBStringField;
    lan_chqFIN_CPPL: TIntegerField;
    lan_chqFIN_CCUS: TIntegerField;
    lan_chqFIN_CDCO: TIntegerField;
    lan_chqFIN_CDBA: TIBStringField;
    lan_chqFIN_DEBA: TIBStringField;
    lan_chqFIN_CTNR: TIBStringField;
    lan_chqFIN_VCHQ: TIBBCDField;
    lan_chqFIN_DERD: TIBStringField;
    lan_chqFIN_DTST: TDateTimeField;
    fin_rec_baiFIN_VTER: TIBBCDField;
    fin_rec_baiFIN_VPRO: TIBBCDField;
    fin_rec_baiFIN_DTBX: TDateField;
    fin_rec_baiFIN_CDNF: TIntegerField;
    fin_rec_baiFIN_DTNF: TDateField;
    fin_rec_baiFIN_CDPD: TIntegerField;
    fin_rec_baiFIN_DEPD: TIBStringField;
    fin_rec_baiFIN_DTPD: TDateField;
    fin_rec_baiFIN_CDPG: TIntegerField;
    fin_rec_baiFIN_CDRD: TIntegerField;
    fin_rec_baiFIN_DERD: TIBStringField;
    fin_rec_baiFIN_DTRD: TDateField;
    fin_rec_baiFIN_DTNR: TDateField;
    fin_rec_baiFIN_VDEV: TIBBCDField;
    fin_rec_baiFIN_VABA: TIBBCDField;
    fin_rec_baiFIN_VCRD: TIBBCDField;
    fin_rec_baiFIN_TITU: TIBStringField;
    fin_rec_baiFIN_DTST: TDateTimeField;
    fin_rec_baiFIN_CDDP: TIBStringField;
    fin_rec_baiFIN_DTDP: TDateTimeField;
    fin_rec_baiFIN_CDBC: TIBStringField;
    fin_rec_baiFIN_DTBC: TDateTimeField;
    fin_rec_recFIN_VTER: TIBBCDField;
    fin_rec_recFIN_VPRO: TIBBCDField;
    fin_rec_recFIN_DTBX: TDateField;
    fin_rec_recFIN_CDNF: TIntegerField;
    fin_rec_recFIN_DTNF: TDateField;
    fin_rec_recFIN_CDPD: TIntegerField;
    fin_rec_recFIN_DEPD: TIBStringField;
    fin_rec_recFIN_DTPD: TDateField;
    fin_rec_recFIN_CDPG: TIntegerField;
    fin_rec_recFIN_CDRD: TIntegerField;
    fin_rec_recFIN_DERD: TIBStringField;
    fin_rec_recFIN_DTRD: TDateField;
    fin_rec_recFIN_DTNR: TDateField;
    fin_rec_recFIN_VDEV: TIBBCDField;
    fin_rec_recFIN_VABA: TIBBCDField;
    fin_rec_recFIN_VCRD: TIBBCDField;
    fin_rec_recFIN_TITU: TIBStringField;
    fin_rec_recFIN_DTST: TDateTimeField;
    fin_rec_recFIN_CDDP: TIBStringField;
    fin_rec_recFIN_DTDP: TDateTimeField;
    fin_rec_recFIN_CDBC: TIBStringField;
    fin_rec_recFIN_DTBC: TDateTimeField;
    recFIN_CDRD: TIntegerField;
    recFIN_DFIN: TIBStringField;
    recFIN_CPPL: TIntegerField;
    recFIN_CCUS: TIntegerField;
    recFIN_CDCO: TIntegerField;
    recFIN_CDBA: TIBStringField;
    recFIN_DEBA: TIBStringField;
    recFIN_CTNR: TIBStringField;
    recFIN_VMUL: TIBBCDField;
    recFIN_PMUL: TIBBCDField;
    recFIN_VJUR: TIBBCDField;
    recFIN_PJUR: TIBBCDField;
    recFIN_VDES: TIBBCDField;
    recFIN_PDES: TIBBCDField;
    recFIN_VCHQ: TIBBCDField;
    recFIN_DERD: TIBStringField;
    recFIN_DTST: TDateTimeField;
    procedure siPSQClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cadastroAfterCancel(DataSet: TDataSet);
    procedure cadastroAfterDelete(DataSet: TDataSet);
    procedure cadastroAfterEdit(DataSet: TDataSet);
    procedure cadastroAfterOpen(DataSet: TDataSet);
    procedure cadastroBeforeCancel(DataSet: TDataSet);
    procedure cadastroAfterPost(DataSet: TDataSet);
    procedure finAClick(Sender: TObject);
    procedure finDClick(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure finCClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure siVALClick(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure cadastroBeforePost(DataSet: TDataSet);
    procedure cadastroFIN_STFIValidate(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cadastroBeforeDelete(DataSet: TDataSet);
    procedure lan_chqAfterPost(DataSet: TDataSet);
    procedure cadastroFIN_PMULValidate(Sender: TField);
    procedure cadastroFIN_PDESValidate(Sender: TField);
    procedure cadastroFIN_VPAGValidate(Sender: TField);
    procedure dbgConsultaFIN_STFIValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure tsENCShow(Sender: TObject);
    procedure siTPGClick(Sender: TObject);
    procedure SpeedItem1Click(Sender: TObject);
    procedure lan_chqAfterDelete(DataSet: TDataSet);
    procedure dbgConsultaFIN_DPAGValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgrec_recKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure siVINClick(Sender: TObject);
    procedure siVITDClick(Sender: TObject);
  private
    { Private declarations }
    procedure PESQUISA_CONTA(BRet: boolean;txt: string);
    procedure INCLUI_CONTA;
    procedure ABRE_TABELA;
    procedure ajustaform;
    procedure ALTERA_STFI(tipo,doct: string);
  public
    { Public declarations }
  end;

var
  frmrec_can_ban: Tfrmrec_can_ban;
  Ano, Mes, Dia: Word;
  demi: TDate;
  chav,cdnf: String;

implementation

uses ppesquisa, uPrincipal;

{$R *.dfm}

procedure Tfrmrec_can_ban.ALTERA_STFI(tipo,doct: string);
begin
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(FIN_VPAG) FROM FIN_REC_REC');
    SQL.Add('WHERE  FIN_DOCT = '''+doct+'''');
    Open;
  end;

  if consulta_S.Fields[0].AsFloat > 0 then
  begin
    if cadastro.State in [dsEdit,dsInsert] then
    begin
      cadastroFIN_VPAG.Value := consulta_S.Fields[0].AsFloat;
      cadastroFIN_DPAG.Value := strtodate(SLPrincipal.Values['data_sistema']);
    end;
    exit;  
  end;

  with fin_rec_rec do
  begin
    tag := 0;
    SQL.Clear;
    SQL.Add('SELECT   FIN_REC_BAN_REC.*,CLI_FANT,CLI_RAZA,USU_DUSU,REP_FANT');
    if tipo = 'DUPLICATA' then
    SQL.Add('FROM   '+SLPrincipal.Values['fin_rec_ban_bai']+' "FIN_REC_BAN_REC"') else
    SQL.Add('FROM   '+SLPrincipal.Values['fin_rec_ban_rec']+' "FIN_REC_BAN_REC"');
    SQL.Add('LEFT     OUTER JOIN CAD_CLI ON FIN_REC_BAN_REC.FIN_CCLI = CAD_CLI.ID');
    SQL.Add('LEFT     OUTER JOIN CAD_REP ON FIN_REC_BAN_REC.FIN_CREP = CAD_REP.ID');
    SQL.Add('LEFT     OUTER JOIN CAD_USU ON FIN_REC_BAN_REC.FIN_CVEN = CAD_USU.USU_CUSU');
    if tipo = 'DUPLICATA' then
    SQL.Add('WHERE    FIN_DOCT = '''+doct+'''') else
    SQL.Add('WHERE    FIN_CDBX = '''+cadastroFIN_CDBX.AsString+'''');
    Open;
  end;

  while not fin_rec_rec.Eof do
  begin
    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM FIN_REC_REC');
      SQL.Add('WHERE  FIN_CDBX = '''+cadastroFIN_CDBX.AsString+'''');
      SQL.Add('AND    FIN_VALO = '''+oStrTran(formatFloat('0.00',fin_rec_recFIN_VPAG.AsFloat),',','.')+'''');
      SQL.Add('AND    FIN_DVEN = '''+formatDateTime('mm/dd/yy',fin_rec_recFIN_DVEN.AsDateTime)+'''');
      SQL.Add('AND    FIN_TIPO = '''+fin_rec_recFIN_TIPO.AsString+'''');
      SQL.Add('AND    FIN_NCHQ = '''+fin_rec_recFIN_NCHQ.AsString+'''');
      Open;
    end;

    if consulta_S.Fields[0].IsNull then
    begin
      lan_chq.Append;
      lan_chqID.Value       := 0;
      lan_chqFIN_CCAB.Value := fin_rec_recFIN_CCAB.Value;
      lan_chqFIN_CDBX.Value := fin_rec_recFIN_CDBX.Value;
      lan_chqFIN_CDCX.Value := fin_rec_recFIN_CDCX.Value;
      lan_chqFIN_CCLI.Value := fin_rec_recFIN_CCLI.Value;
      lan_chqFIN_CVEN.Value := fin_rec_recFIN_CVEN.Value;
      lan_chqFIN_CREP.Value := fin_rec_recFIN_CREP.Value;
      lan_chqFIN_PRAZ.Value := fin_rec_recFIN_PRAZ.Value;
      lan_chqFIN_ATRA.Value := fin_rec_recFIN_ATRA.Value;
      lan_chqFIN_CONC.Value := fin_rec_recFIN_CONC.Value;
      lan_chqFIN_DMED.Value := fin_rec_recFIN_DMED.Value;
      lan_chqFIN_DATR.Value := fin_rec_recFIN_DATR.Value;
      lan_chqFIN_STDO.Value := fin_rec_recFIN_STDO.Value;
      lan_chqFIN_DOCT.Value := fin_rec_recFIN_DOCT.Value;
      lan_chqFIN_BANC.Value := fin_rec_recFIN_BANC.Value;
      lan_chqFIN_DBAN.Value := fin_rec_recFIN_DBAN.Value;
      lan_chqFIN_AGEN.Value := fin_rec_recFIN_AGEN.Value;
      lan_chqFIN_CONT.Value := fin_rec_recFIN_CONT.Value;
      lan_chqFIN_NCHQ.Value := fin_rec_recFIN_NCHQ.Value;
      lan_chqFIN_MCHQ.Value := fin_rec_recFIN_MCHQ.Value;
      lan_chqFIN_TIPO.Value := fin_rec_recFIN_TIPO.Value;
      lan_chqFIN_STFI.Value := fin_rec_recFIN_STFI.Value;
      lan_chqFIN_STCO.Value := fin_rec_recFIN_STCO.Value;
      lan_chqFIN_OBSE.Value := fin_rec_recFIN_OBSE.Value;
      lan_chqFIN_STA.Value  := fin_rec_recFIN_STA.Value ;
      lan_chqFIN_DBAI.Value := fin_rec_recFIN_DBAI.Value;
      lan_chqFIN_VENC.Value := fin_rec_recFIN_VENC.Value;
      lan_chqFIN_CPF.Value  := fin_rec_recFIN_CPF.AsString;
      lan_chqFIN_DCAD.Value := fin_rec_recFIN_DCAD.Value;
      lan_chqFIN_DVEN.Value := fin_rec_recFIN_DVEN.Value;
      lan_chqFIN_DPAG.Value := fin_rec_recFIN_DPAG.Value;
      lan_chqFIN_VALO.Value := fin_rec_recFIN_VALO.Value;
      lan_chqFIN_VPAG.Value := fin_rec_recFIN_VPAG.Value;
      lan_chqFIN_VPEN.Value := fin_rec_recFIN_VPEN.Value;

      if tipo = 'DUPLICATA' then
      begin
        lan_chqFIN_TIPO.Value := tipo;
        lan_chqFIN_DPAG.Value := cadastroFIN_DPAG.Value;
        lan_chqFIN_VALO.Value := cadastroFIN_VALO.Value;
        lan_chqFIN_VPAG.Value := (cadastroFIN_VALO.AsFloat - cadastroFIN_VDES.AsFloat)+cadastroFIN_VENC.AsFloat;
        lan_chqFIN_VPEN.Value := cadastroFIN_VPEN.Value;
      end;

      lan_chq.Post;
    end;
    fin_rec_rec.Next;
  end;
end;

procedure Tfrmrec_can_ban.INCLUI_CONTA;
begin
  try
    tag := 1;
    while not fin_rec_bai.Eof do
    begin
      with consulta_S do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID FROM FIN_REC_BAI');
        SQL.Add('WHERE  FIN_DOCT = '''+fin_rec_baiFIN_DOCT.AsString+'''');
        Open;
      end;

      if consulta_S.Fields[0].IsNull then
      begin
        cadastro.Append;
        cadastroID.Value       := 0;
        cadastroFIN_CCAB.Value := fin_rec_baiID.AsInteger;
        cadastroFIN_CDBX.Value := fin_rec_baiFIN_CDBX.AsInteger;
        cadastroFIN_CDCX.Value := fin_rec_baiFIN_CDCX.AsInteger;
        cadastroFIN_CCLI.Value := fin_rec_baiFIN_CCLI.AsInteger;
        cadastroFIN_DCLI.Value := fin_rec_baiCLI_FANT.AsString;
        cadastroFIN_RCLI.Value := fin_rec_baiCLI_RAZA.AsString;
        cadastroFIN_STDO.Value := fin_rec_baiFIN_STDO.AsString;
        cadastroFIN_CVEN.Value := fin_rec_baiFIN_CVEN.AsInteger;
        cadastroFIN_VEND.Value := fin_rec_baiUSU_DUSU.AsString;
        cadastroFIN_CREP.Value := fin_rec_baiFIN_CREP.AsInteger;
        cadastroFIN_DREP.Value := fin_rec_baiREP_FANT.AsString;
        cadastroFIN_CONC.Value := fin_rec_baiFIN_CONC.AsInteger;
        cadastroFIN_DCAD.Value := fin_rec_baiFIN_DCAD.AsDateTime;
        cadastroFIN_DBAI.Value := fin_rec_baiFIN_DBAI.AsDateTime;
        cadastroFIN_DVEN.Value := fin_rec_baiFIN_DVEN.AsDateTime;
        cadastroFIN_STFI.Value := fin_rec_baiFIN_STFI.AsString;
        cadastroFIN_CTNR.Value := fin_rec_baiFIN_CTNR.AsString;
        if fin_rec_baiFIN_DPAG.AsDateTime > 0 then
        cadastroFIN_DPAG.Value := fin_rec_baiFIN_DPAG.AsDateTime;
        cadastroFIN_DOCT.Value := fin_rec_baiFIN_DOCT.AsString;
        cadastroFIN_VALO.Value := fin_rec_baiFIN_VALO.AsFloat;
        cadastroFIN_VENC.Value := fin_rec_baiFIN_VENC.AsFloat;
        cadastroFIN_VPAG.Value := fin_rec_baiFIN_VPAG.AsFloat;
        cadastroFIN_VPEN.Value := fin_rec_baiFIN_VPEN.AsFloat;
        cadastroFIN_OBSE.Value := fin_rec_baiFIN_OBSE.AsString;
        cadastroFIN_COBR.Value := '0';
        cadastroFIN_VJUR.Value := fin_rec_baiFIN_VJUR.AsFloat;
        cadastroFIN_PJUR.Value := fin_rec_baiFIN_PJUR.AsFloat;
        cadastroFIN_VMUL.Value := fin_rec_baiFIN_VMUL.AsFloat;
        cadastroFIN_PMUL.Value := fin_rec_baiFIN_PMUL.AsFloat;
        cadastroFIN_VDES.Value := fin_rec_baiFIN_VDES.AsFloat;
        cadastroFIN_PDES.Value := fin_rec_baiFIN_PDES.AsFloat;
        cadastro.Post;
      end;

      ALTERA_STFI('',fin_rec_baiFIN_DOCT.AsString);
      fin_rec_bai.Next;
    end;
  finally
    tag := 0;
    cadastro.Close;
    cadastro.Open;
  end;
end;

procedure Tfrmrec_can_ban.PESQUISA_CONTA(BRet: boolean;txt: string);
begin
  with fin_rec_bai do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FIN_REC_BAN_BAI.*,CLI_FANT,CLI_RAZA,USU_DUSU,REP_FANT');
    SQL.Add('FROM   '+SLPrincipal.Values['fin_rec_ban_bai']+' "FIN_REC_BAN_BAI"');
    SQL.Add('LEFT     OUTER JOIN CAD_CLI ON FIN_REC_BAN_BAI.FIN_CCLI = CAD_CLI.ID');
    SQL.Add('LEFT     OUTER JOIN CAD_REP ON FIN_REC_BAN_BAI.FIN_CREP = CAD_REP.ID');
    SQL.Add('LEFT     OUTER JOIN CAD_USU ON FIN_REC_BAN_BAI.FIN_CVEN = CAD_USU.USU_CUSU');
    SQL.Add('WHERE    FIN_REC_BAN_BAI.ID > 0');

    if BRet then
    SQL.Add('AND      FIN_DOCT =    '''+txt+'''') else
    SQL.Add('AND      FIN_DOCT LIKE '''+txt+'%''');
    SQL.Add('ORDER BY FIN_REC_BAN_BAI.ID DESC');
    Open;
  end;
end;

procedure Tfrmrec_can_ban.AjustaForm;
begin
  screen.Cursor:=crHourGlass;
  screen.Cursor:=crDefault;

  Self.Height := frmprincipal.pnCustomize.Height-4;
  Self.top    := 0;
  Self.left   := 0;
  Self.Width  := TELA_WIDTH;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
   self.Height := screen.Height;
   self.Width  :=  screen.Width;

   if frmprincipal.pnbot.Visible then
      self.Height := self.Height - frmprincipal.pnbot.Height;
  end;
end;

procedure Tfrmrec_can_ban.ABRE_TABELA;
begin
  oOTransact(TSheild);
  with consulta_s do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM FIN_REC_BAI');
    ExecSQL;

    SQL.Clear;
    SQL.Add('DELETE FROM FIN_REC_REC');
    ExecSQL;
  end;

  oRTransact(TSheild);
  with lan_chq do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_REC_REC');
    SelectSQL.Add('ORDER BY ID');
    Prepare;
  end;
  with Cadastro do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_REC_BAI');
    SelectSQL.Add('ORDER BY ID');
    Prepare;
    Open;
  end;
end;

procedure Tfrmrec_can_ban.siPSQClick(Sender: TObject);
begin
  if cadastro.State in [dsEdit,dsInsert] then
  cadastro.Post;

  frmpesquisa := Tfrmpesquisa.Create(self);

  frmpesquisa.cbCAMPO.Text    := 'Documento';
  frmpesquisa.cbCAMPO.Enabled := false;
  frmpesquisa.cbDATA.Enabled  := false;
  frmpesquisa.dxDT1.Enabled   := false;
  frmpesquisa.dxDT2.Enabled   := false;

  try
    frmpesquisa.Tag := 10;
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      if (edTXT.Text = '') and (dxdt1.Date < 0) then
         {nothing}
      else
      begin
        begin
          PESQUISA_CONTA(false,edtxt.Text);

          if fin_rec_bai.Fields[0].IsNull then
          raise exception.Create('Documento não encontrado !');

          if fin_rec_baiFIN_STFI.AsString = 'CANCELADO' then
          begin
            messageBox(handle,'Documento Cancelado !',PChar(caption),MB_ICONERROR+MB_OK);
            Abort;
          end;

          if (frmprincipal.cad_usuUSU_MENU.AsString = 'VEN') and (fin_rec_baiFIN_CVEN.AsInteger <> frmprincipal.cad_usuUSU_CUSU.AsInteger) then
          begin
            messageBox(handle,'Pesquisa não autorizada !'+#13+'Pedido encontrado refere-se à outro vendedor.',PChar(caption),MB_ICONERROR+MB_OK);
            Abort;
          end;
          INCLUI_CONTA;
        end;
      end;

      if pcconsulta.ActivePageIndex = 0 then
      dbgconsulta.SetFocus;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmrec_can_ban.FormCreate(Sender: TObject);
begin
  inherited;

  pcconsulta.ActivePageIndex := 0;
  
  with fin_rec do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FIN_DOCT,FIN_VALO,FIN_STFI FROM '+SLPrincipal.Values['fin_rec_ban_bai']);
    SQL.Add('WHERE    FIN_CDBX = :FIN_CDBX');
    SQL.Add('AND      FIN_DOCT <> :FIN_DOCT');
    SQL.Add('ORDER BY ID');
    Open;
  end;

  abre_tabela;
  ajustaform;
end;

procedure Tfrmrec_can_ban.cadastroAfterCancel(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    finA.Enabled := true;
    finD.Enabled := true;
    finS.Enabled := false;
    finC.Enabled := false;
  end;
end;

procedure Tfrmrec_can_ban.cadastroAfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
end;

procedure Tfrmrec_can_ban.cadastroAfterEdit(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    finA.Enabled := false;
    finD.Enabled := false;
    finS.Enabled := true;
    finC.Enabled := true;

    if pcconsulta.ActivePageIndex = 0 then
    dbgconsulta.SetFocus;
  end;
end;

procedure Tfrmrec_can_ban.cadastroAfterOpen(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    finA.Enabled := true;
    finD.Enabled := true;
    finS.Enabled := false;
    finC.Enabled := false;
  end;

  lan_chq.Close;
  lan_chq.Open;
end;

procedure Tfrmrec_can_ban.cadastroBeforeCancel(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    finA.Enabled := true;
    finD.Enabled := true;
    finS.Enabled := false;
    finC.Enabled := false;
  end;

  if pcconsulta.ActivePageIndex = 0 then
  dbgconsulta.SetFocus;

  if cadastro.RecordCount = 0 then
  begin
    cadastro.Close;
    cadastro.Open;
    ABORT;
  end;
end;

procedure Tfrmrec_can_ban.cadastroAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  tSHEILD.CommitRetaining;

  if tag = 0 then
  begin
    finA.Enabled := true;
    finD.Enabled := true;
    finS.Enabled := false;
    finC.Enabled := false;

    wRec := cadastro.GetBookmark;

    cadastro.Close;
    cadastro.Open;
    if (wRec = Nil) or (cadastro.Fields[0].IsNull) then cadastro.last
    else cadastro.GotoBookmark(wRec);

    cadastro.FreeBookmark(wRec);
  end;
end;

procedure Tfrmrec_can_ban.finAClick(Sender: TObject);
begin
  cadastro.Edit;
end;

procedure Tfrmrec_can_ban.finDClick(Sender: TObject);
begin
  if not cadastro.Fields[0].IsNull then
  cadastro.Delete;
end;

procedure Tfrmrec_can_ban.siSAVClick(Sender: TObject);
begin
  cadastro.Post;
end;

procedure Tfrmrec_can_ban.finCClick(Sender: TObject);
begin
  cadastro.Cancel;
end;

procedure Tfrmrec_can_ban.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_return,40: if (not (activeControl is TdxDBGrid) and
                         not (activeControl is TdxMaskEdit)) then
                        selectNext (activecontrol, true, true);
       38          : if (not (activeControl is TdxDBGrid) and
                         not (activeControl is TdxMaskEdit)) then
                       selectNext (activecontrol, false, true);
       118         : begin
                       siPSQ.Click;
                     end;     
       116         : if (not siSAV.Enabled) then
                   begin
                     cadastro.Close;
                     cadastro.Open;
                   end;
  end;
end;

procedure Tfrmrec_can_ban.dbgConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_DELETE: if cadastro.State = dsBrowse then
                  finD.Click;
    VK_ESCAPE: if cadastro.State = dsBrowse then close else cadastro.Cancel;
    VK_INSERT: if not finS.Enabled then finC.Click;
  end;
end;

procedure Tfrmrec_can_ban.siVALClick(Sender: TObject);
begin
  if cadastro.State in [dsEdit,dsInsert] then
  cadastro.Post;

  if oYesNo(handle,'Validar cancelamento bancário ?') = mrno then
  abort;

  try
    cadastro.DisableControls;

    cadastro.First;
    while not cadastro.Eof do
    begin
      with frmprincipal.sp_sql do
      begin
        ibSP.StoredProcName := 'SP_SQL';

        if cadastroFIN_STA.AsString = '0' then
        begin
          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['fin_rec_ban_bai']+' "FIN_REC_BAN_BAI"');
          SQL.Add('SET   FIN_STFI = '''+cadastroFIN_STFI.AsString+''',');
          SQL.Add('      FIN_VPAG = '''+oStrTran(cadastroFIN_VPAG.AsString,',','.')+''',');
          SQL.Add('      FIN_VPEN = '''+oStrTran(cadastroFIN_VPEN.AsString,',','.')+''',');
          SQL.Add('      FIN_DVEN = '''+formatDateTime('mm/dd/yy',cadastroFIN_DVEN.AsDateTime)+''',');
          SQL.Add('      FIN_VENC = '''+oStrTran(cadastroFIN_VENC.AsString,',','.')+''',');
          SQL.Add('      FIN_VJUR = '''+oStrTran(cadastroFIN_VJUR.AsString,',','.')+''',');
          SQL.Add('      FIN_PJUR = '''+oStrTran(cadastroFIN_PJUR.AsString,',','.')+''',');
          SQL.Add('      FIN_VMUL = '''+oStrTran(cadastroFIN_VMUL.AsString,',','.')+''',');
          SQL.Add('      FIN_PMUL = '''+oStrTran(cadastroFIN_PMUL.AsString,',','.')+''',');
          SQL.Add('      FIN_VDES = '''+oStrTran(cadastroFIN_VDES.AsString,',','.')+''',');
          SQL.Add('      FIN_PDES = '''+oStrTran(cadastroFIN_PDES.AsString,',','.')+''',');
          SQL.Add('      FIN_CDBX = '''+cadastroFIN_CDBX.AsString+''',');
          SQL.Add('      FIN_DPAG = NULL');
          SQL.Add('WHERE ID = '''+cadastroFIN_CCAB.AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;

          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
          SQL.Add('SET    ROM_STFI = ''FATURADO''');
          SQL.Add('WHERE  ROM_CDBX = '''+cadastroFIN_CDBX.AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;

          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['rom_cab']+' "ROM_CAB"');
          SQL.Add('SET    ROM_STFI = ''FATURADO''');
          SQL.Add('WHERE  ROM_CDBX = '''+cadastroFIN_CDBX.AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;
        end;

        if cadastroFIN_STFI.AsString = 'CANCELADO' then
        begin
          SQL.Clear;
          SQL.Add('DELETE FROM '+SLPrincipal.Values['fin_rec_ban_rec']);
          SQL.Add('WHERE  FIN_CDBX = '''+cadastroFIN_CDBX.AsString+'''');
          SQL.Add('AND    FIN_DOCT = '''+cadastroFIN_DOCT.AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;

          SQL.Clear;
          SQL.Add('UPDATE CAD_CHQ');
          SQL.Add('SET    CHQ_STFI = ''CANCELADO'',');
          SQL.Add('       CHQ_DCAN = '''+formatDateTime('mm/dd/yy',strtodate(SLPrincipal.Values['data_sistema']))+'''');
          SQL.Add('WHERE  CHQ_CDBX = '''+cadastroFIN_CDBX.AsString+'''');
          SQL.Add('AND    CHQ_DOCT = '''+cadastroFIN_DOCT.AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;
        end;

        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['fin_rec_ban_bai']);
        SQL.Add('SET    FIN_STFI = ''CANCELADO''');
        SQL.Add('WHERE  FIN_DOCT = '''+cadastroFIN_DOCT.AsString+'/N'+'''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;

        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['fin_rec_ban_bai']);
        SQL.Add('SET    FIN_STFI = ''CANCELADO''');
        SQL.Add('WHERE  FIN_DOCT = '''+cadastroFIN_DOCT.AsString+'/P'+'''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;
      end;
      cadastro.Next;
    end;
  finally
    IBTra.CommitRetaining;
    cadastro.EnableControls;
    abre_tabela;
  end;
end;

procedure Tfrmrec_can_ban.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  if not ASelected then
  begin
    AFont.Color := clBlack;
    AColor      := $00E2E2E2;

    Value  := ANode.Values[0];

    if (not VarIsNull(Value)) then
    begin
      if copy(Value,1,4) = 'PAGO' then
      begin
         AFont.Color := clwhite;
         AColor      := $00A4A400;
      end
      else if Value = 'CANCELADO' then
      begin
         AFont.Color := clwhite;
         AColor      := RGB(StrToInt( '$ED') ,
                            StrToInt( '$1F') ,
                            StrToInt( '$43') );
      end
      else if Value = 'PENDENTE' then
      begin
        AFont.Color := clBlack;
        AColor      := clWhite;
      end
      else if Value = 'DEVOLUÇÃO' then
      begin
         AFont.Color := clBlack;
         AColor      := $00BEEFF8;
      end
      else
      begin
         AFont.Color := clBlack;
         AColor      := $00CFF3FC;
      end
    end;
  end;
end;

procedure Tfrmrec_can_ban.cadastroBeforePost(DataSet: TDataSet);
begin
  cadastroFIN_STA.Value := inttostr(tag);

  if tag = 0 then
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('UPDATE FIN_REC_BAI');
    SQL.Add('SET    FIN_COBR = '''+cadastroFIN_COBR.AsString+'''');
    SQL.Add('WHERE  FIN_CDBX = '''+cadastroFIN_CDBX.AsString+'''');
    ExecSQL;
  end;

  tag := 1;
  cadastroFIN_PMUL.Value := (cadastroFIN_VMUL.AsFloat*100)/cadastroFIN_VALO.AsFloat;
  cadastroFIN_PJUR.Value := (cadastroFIN_VJUR.AsFloat*100)/cadastroFIN_VALO.AsFloat;
  cadastroFIN_PDES.Value := (cadastroFIN_VDES.AsFloat*100)/cadastroFIN_VALO.AsFloat;
  tag := 0;
end;

procedure Tfrmrec_can_ban.cadastroFIN_STFIValidate(Sender: TField);
begin
  if tag = 0 then
  begin
    cadastroFIN_DPAG.AsString := '';
    cadastroFIN_VPAG.Value    := 0;
  end;
end;

procedure Tfrmrec_can_ban.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if frmrec_can_ban <> nil then
  begin
    frmrec_can_ban.Release;
    frmrec_can_ban := nil;
  end;
end;

procedure Tfrmrec_can_ban.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  var
    BSal: boolean;
begin
  if cadastro.State in [dsEdit,dsInsert] then
  cadastro.Post;

  BSal := false;

  cadastro.DisableControls;
  cadastro.First;
  while not cadastro.Eof do
  begin
    if cadastroFIN_STA.AsString = '0' then
    BSal := true;
    cadastro.Next;
  end;

  if (BSal) then
  begin
    case messageBox(handle,PChar('Existem alterações pendentes.'+#13+'Deseja validar o cancelamento antes de fechar ?'),
                           PChar(caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
         mrCancel: Abort;
         mrYes   : siVAL.Click;
    end;
  end;
end;

procedure Tfrmrec_can_ban.cadastroBeforeDelete(DataSet: TDataSet);
begin
  if oYesNo(handle,'Retirar o documento '+cadastroFIN_DOCT.AsString+' da baixa de pagamento ?') = mrno then
  abort;

  with lan_chq do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM FIN_REC_REC');
    SelectSQL.Add('WHERE  FIN_DOCT = '''+cadastroFIN_DOCT.AsString+'''');
    ExecSQL;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_REC_REC');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;
end;

procedure Tfrmrec_can_ban.lan_chqAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  tSHEILD.CommitRetaining;

  wRec := lan_chq.GetBookmark;

  lan_chq.Close;
  lan_chq.Open;
  if (wRec = Nil) or (lan_chq.Fields[0].IsNull) then lan_chq.last
  else lan_chq.GotoBookmark(wRec);

  lan_chq.FreeBookmark(wRec);
end;

procedure Tfrmrec_can_ban.cadastroFIN_PMULValidate(Sender: TField);
begin
  if tag = 0 then
  begin
    cadastroFIN_VMUL.Value := (cadastroFIN_VALO.AsFloat * cadastroFIN_PMUL.AsFloat) / 100;
    cadastroFIN_VJUR.Value := (cadastroFIN_VALO.AsFloat * cadastroFIN_PJUR.AsFloat) / 100;
  end;
end;

procedure Tfrmrec_can_ban.cadastroFIN_PDESValidate(Sender: TField);
begin
  if tag = 0 then
  cadastroFIN_VDES.Value := (cadastroFIN_VALO.AsFloat * cadastroFIN_PDES.AsFloat) / 100;
end;

procedure Tfrmrec_can_ban.cadastroFIN_VPAGValidate(Sender: TField);
begin
  if tag = 0 then
  begin
    cadastroFIN_VENC.Value := (cadastroFIN_VMUL.AsFloat + cadastroFIN_VJUR.AsFloat);
    cadastroFIN_VPEN.Value := ((cadastroFIN_VALO.AsFloat - cadastroFIN_VDES.AsFloat)+cadastroFIN_VENC.AsFloat)-cadastroFIN_VPAG.AsFloat;
    if (cadastroFIN_VPEN.AsFloat < 0) and (cadastroFIN_VENC.AsFloat > 0) then
    cadastroFIN_VPEN.Value := 0;
  end;
end;

procedure Tfrmrec_can_ban.dbgConsultaFIN_STFIValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Financeiro','Contas a Receber','Status de Recebimentos',false) then
  Databaseerror('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
end;

procedure Tfrmrec_can_ban.tsENCShow(Sender: TObject);
begin
  dbgencargos.SetFocus;
  dbgencargos.FocusedColumn := 2;
end;

procedure Tfrmrec_can_ban.siTPGClick(Sender: TObject);
begin
  try
    cadastro.DisableControls;
    cadastro.First;

    while not cadastro.Eof do
    begin
      cadastro.Edit;
      cadastroFIN_STFI.Value := 'CANCELADO';
      cadastro.Post;
      cadastro.Next;
    end;
  finally
    cadastro.EnableControls;
    cadastro.Close;
    cadastro.Open;
  end;
end;

procedure Tfrmrec_can_ban.SpeedItem1Click(Sender: TObject);
begin
  try
    cadastro.DisableControls;
    cadastro.First;

    while not cadastro.Eof do
    begin
      cadastro.Edit;
      cadastroFIN_STFI.Value := 'PENDENTE';
      cadastro.Post;
      cadastro.Next;
    end;
  finally
    cadastro.EnableControls;
    cadastro.Close;
    cadastro.Open;
  end;
end;

procedure Tfrmrec_can_ban.lan_chqAfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
end;

procedure Tfrmrec_can_ban.dbgConsultaFIN_DPAGValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Financeiro','Contas a Receber','Status de Cancelamento',false) then
  Databaseerror('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
end;

procedure Tfrmrec_can_ban.dbgrec_recKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_DELETE: if lan_chq.State = dsBrowse then
                  siCRE.Click;
    VK_INSERT: if not siREC.Enabled then siREC.Click;
  end;
end;

procedure Tfrmrec_can_ban.siVINClick(Sender: TObject);
begin
  PESQUISA_CONTA(true,fin_recFIN_DOCT.AsString);
  if fin_rec_bai.Fields[0].IsNull then
  raise exception.Create('Documento não encontrado !');

  if fin_rec_baiFIN_STFI.AsString <> 'CANCELADO' then
  INCLUI_CONTA;
end;

procedure Tfrmrec_can_ban.siVITDClick(Sender: TObject);
begin
  fin_rec.First;
  while not fin_rec.Eof do
  begin
    PESQUISA_CONTA(true,fin_recFIN_DOCT.AsString);
    if fin_rec_bai.Fields[0].IsNull then
    raise exception.Create('Documento não encontrado !');

    if fin_rec_baiFIN_STFI.AsString <> 'CANCELADO' then
    INCLUI_CONTA;

    fin_rec.Next;
  end;
end;

end.

