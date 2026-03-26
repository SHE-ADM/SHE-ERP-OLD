unit prec_car;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls,  ComCtrls, dxDBTLCl, dxGrClms, dxEditor, dxExEdtr,
  dxEdLib, dxDBELib, DBCtrls, StdCtrls, dxPageControl, DateUtils, math,
  Registry,StrInt, StrIntImp, IBEvents, rxSpeedbar;

type
  Tfrmrec_car = class(Tfrmpadr1)
    dbgConsultaFIN_DCAD: TdxDBGridDateColumn;
    dbgConsultaFIN_DVEN: TdxDBGridDateColumn;
    dbgConsultaFIN_DPAG: TdxDBGridDateColumn;
    dbgConsultaFIN_STDO: TdxDBGridMaskColumn;
    dbgConsultaFIN_DOCT: TdxDBGridMaskColumn;
    dbgConsultaFIN_STFI: TdxDBGridMaskColumn;
    dbgConsultaFIN_VALO: TdxDBGridMaskColumn;
    dbgConsultaFIN_VPAG: TdxDBGridMaskColumn;
    dbgConsultaFIN_VPEN: TdxDBGridMaskColumn;
    dbgConsultaFIN_STA: TdxDBGridMaskColumn;
    cadastroID: TIntegerField;
    cadastroFIN_CDBX: TIntegerField;
    cadastroFIN_CDCX: TIntegerField;
    cadastroFIN_CCLI: TIntegerField;
    cadastroFIN_CVEN: TIntegerField;
    cadastroFIN_CREP: TIntegerField;
    cadastroFIN_CPPL: TIntegerField;
    cadastroFIN_CCUS: TIntegerField;
    cadastroFIN_CBCO: TIntegerField;
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
    cadastroFIN_PORT: TIBStringField;
    cadastroFIN_STFI: TIBStringField;
    cadastroFIN_VALO: TIBBCDField;
    cadastroFIN_VPAG: TIBBCDField;
    cadastroFIN_VPEN: TIBBCDField;
    cadastroFIN_VMUL: TIBBCDField;
    cadastroFIN_PMUL: TIBBCDField;
    cadastroFIN_VJUR: TIBBCDField;
    cadastroFIN_PJUR: TIBBCDField;
    cadastroFIN_VDES: TIBBCDField;
    cadastroFIN_PDES: TIBBCDField;
    cadastroFIN_OBSE: TMemoField;
    cadastroFIN_STA: TIBStringField;
    cadastroCLI_FANT: TIBStringField;
    cadastroREP_FANT: TIBStringField;
    dbgConsultaCLI_FANT: TdxDBGridMaskColumn;
    dbgConsultaREP_FANT: TdxDBGridMaskColumn;
    cadastroCLI_RAZA: TIBStringField;
    cadastroFIN_CCAB: TIntegerField;
    cadastroFIN_BANC: TIBStringField;
    cadastroFIN_DBAN: TIBStringField;
    cadastroFIN_AGEN: TIBStringField;
    cadastroFIN_CONT: TIBStringField;
    cadastroFIN_NCHQ: TIBStringField;
    cadastroFIN_MCHQ: TSmallintField;
    cadastroFIN_TIPO: TIBStringField;
    cadastroFIN_STCO: TIBStringField;
    cadastroFIN_DCAN: TDateField;
    dbgConsultaCLI_RAZA: TdxDBGridMaskColumn;
    fin_rec_rec: TIBQuery;
    dtsfin_rec_rec: TDataSource;
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
    fin_rec_ban: TIBQuery;
    dtsfin_rec_car: TDataSource;
    fin_rec_banID: TIntegerField;
    fin_rec_banFIN_CCAB: TIntegerField;
    fin_rec_banFIN_CDBX: TIntegerField;
    fin_rec_banFIN_CDCX: TIntegerField;
    fin_rec_banFIN_CCLI: TIntegerField;
    fin_rec_banFIN_CVEN: TIntegerField;
    fin_rec_banFIN_CREP: TIntegerField;
    fin_rec_banFIN_PRAZ: TSmallintField;
    fin_rec_banFIN_ATRA: TSmallintField;
    fin_rec_banFIN_CONC: TSmallintField;
    fin_rec_banFIN_DCAD: TDateField;
    fin_rec_banFIN_DVEN: TDateField;
    fin_rec_banFIN_DPAG: TDateField;
    fin_rec_banFIN_DMED: TDateField;
    fin_rec_banFIN_DATR: TDateField;
    fin_rec_banFIN_STDO: TIBStringField;
    fin_rec_banFIN_DOCT: TIBStringField;
    fin_rec_banFIN_BANC: TIBStringField;
    fin_rec_banFIN_DBAN: TIBStringField;
    fin_rec_banFIN_AGEN: TIBStringField;
    fin_rec_banFIN_CONT: TIBStringField;
    fin_rec_banFIN_NCHQ: TIBStringField;
    fin_rec_banFIN_MCHQ: TSmallintField;
    fin_rec_banFIN_TIPO: TIBStringField;
    fin_rec_banFIN_STFI: TIBStringField;
    fin_rec_banFIN_STCO: TIBStringField;
    fin_rec_banFIN_VALO: TIBBCDField;
    fin_rec_banFIN_VPAG: TIBBCDField;
    fin_rec_banFIN_VPEN: TIBBCDField;
    fin_rec_banFIN_OBSE: TMemoField;
    fin_rec_banFIN_STA: TIBStringField;
    fin_rec_banFIN_DCAN: TDateField;
    fin_rec_banFIN_CPPL: TIntegerField;
    fin_rec_banFIN_CCUS: TIntegerField;
    fin_rec_banFIN_CBCO: TIntegerField;
    fin_rec_banFIN_PORT: TIBStringField;
    fin_rec_banFIN_VMUL: TIBBCDField;
    fin_rec_banFIN_PMUL: TIBBCDField;
    fin_rec_banFIN_VJUR: TIBBCDField;
    fin_rec_banFIN_PJUR: TIBBCDField;
    fin_rec_banFIN_VDES: TIBBCDField;
    fin_rec_banFIN_PDES: TIBBCDField;
    fin_rec_banFIN_DESC: TIBStringField;
    fin_rec_banFIN_CDCO: TIntegerField;
    fin_rec_banFIN_CDBA: TIBStringField;
    fin_rec_banFIN_DEBA: TIBStringField;
    pndir: TPanel;
    pclan: TdxPageControl;
    tslan: TdxTabSheet;
    dbgrec_rec: TdxDBGrid;
    dbgrec_recFIN_TIPO: TdxDBGridMaskColumn;
    dbgrec_recFIN_NCHQ: TdxDBGridMaskColumn;
    dbgrec_recFIN_VPAG: TdxDBGridMaskColumn;
    pnpri: TPanel;
    pcdet: TdxPageControl;
    tsdet: TdxTabSheet;
    pnlfic: TPanel;
    Shape3: TShape;
    Label7: TLabel;
    linha2: TShape;
    Label48: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    Shape4: TShape;
    Label5: TLabel;
    Shape5: TShape;
    lacli: TLabel;
    Panel2: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    DBText11: TDBText;
    Label14: TLabel;
    Label15: TLabel;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    dxTabSheet1: TdxTabSheet;
    dbgcar: TdxDBGrid;
    dbgcarFIN_DOCT: TdxDBGridMaskColumn;
    dbgcarFIN_STDO: TdxDBGridMaskColumn;
    dbgcarFIN_STFI: TdxDBGridMaskColumn;
    dbgcarFIN_DPAG: TdxDBGridDateColumn;
    dxPageControl1: TdxPageControl;
    dxTabSheet2: TdxTabSheet;
    dxDBMemo1: TdxDBMemo;
    dbgcarFIN_DVEN: TdxDBGridDateColumn;
    cadastroFIN_DESC: TIBStringField;
    cadastroFIN_CDCO: TIntegerField;
    cadastroFIN_CDBA: TIBStringField;
    cadastroFIN_DEBA: TIBStringField;
    cadastroUSU_DUSU: TIBStringField;
    dbgConsultaUSU_DUSU: TdxDBGridMaskColumn;
    dbgConsultaFIN_TIPO: TdxDBGridMaskColumn;
    dbgcarFIN_VALO: TdxDBGridMaskColumn;
    dbgcarFIN_VPAG: TdxDBGridMaskColumn;
    dbgcarFIN_VPEN: TdxDBGridMaskColumn;
    cadastroFIN_DBAI: TDateField;
    siVPED: TSpeedItem;
    siVROM: TSpeedItem;
    siVNFE: TSpeedItem;
    cadastroFIN_IDBX: TIBStringField;
    cadastroFIN_VENC: TIBBCDField;
    fin_rec_banFIN_DBAI: TDateField;
    fin_rec_banFIN_IDBX: TIBStringField;
    fin_rec_banFIN_VENC: TIBBCDField;
    fin_rec_recFIN_DBAI: TDateField;
    fin_rec_recFIN_IDBX: TIBStringField;
    fin_rec_recFIN_VENC: TIBBCDField;
    dbgConsultaFIN_VENC: TdxDBGridMaskColumn;
    siEDI: TSpeedItem;
    dbgConsultaFIN_DBAI: TdxDBGridDateColumn;
    dbgrec_recFIN_STFI: TdxDBGridMaskColumn;
    cadastroFIN_CTNR: TIBStringField;
    dbgrec_recFIN_DVEN: TdxDBGridDateColumn;
    fin_rec_recFIN_BCON: TIntegerField;
    fin_rec_recFIN_DCON: TIBStringField;
    fin_rec_recBCON: TStringField;
    dbgrec_recFIN_DOCT: TdxDBGridMaskColumn;
    cadastroFIN_BCON: TIntegerField;
    cadastroFIN_DCON: TIBStringField;
    cadastroFIN_LOTE: TIntegerField;
    cadastroFIN_DLOT: TDateField;
    cadastroFIN_CDCH: TSmallintField;
    cadastroFIN_CPF: TIBStringField;
    cadastroFIN_VTER: TIBBCDField;
    cadastroFIN_VPRO: TIBBCDField;
    cadastroFIN_CDRD: TIntegerField;
    cadastroFIN_DEVO: TStringField;
    cadastroFIN_DERD: TIBStringField;
    CadastroFIN_DTBX: TDateField;
    CadastroFIN_CDNF: TIntegerField;
    CadastroFIN_DTNF: TDateField;
    CadastroFIN_CDPD: TIntegerField;
    CadastroFIN_DEPD: TIBStringField;
    CadastroFIN_DTPD: TDateField;
    CadastroFIN_CDPG: TIntegerField;
    CadastroFIN_DTRD: TDateField;
    CadastroFIN_DTNR: TDateField;
    CadastroFIN_VDEV: TIBBCDField;
    CadastroFIN_VABA: TIBBCDField;
    CadastroFIN_VCRD: TIBBCDField;
    CadastroFIN_TITU: TIBStringField;
    CadastroFIN_DTST: TDateTimeField;
    CadastroFIN_CDDP: TIBStringField;
    CadastroFIN_DTDP: TDateTimeField;
    CadastroFIN_CDBC: TIBStringField;
    CadastroFIN_DTBC: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure dtscadastroDataChange(Sender: TObject; Field: TField);
    procedure siPSQClick(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dbgcarCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siRELClick(Sender: TObject);
    procedure dbgdupCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure siVPEDClick(Sender: TObject);
    procedure siVROMClick(Sender: TObject);
    procedure cadastroCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure VEN_PED_COBRANCA_COMBAIXA;
    procedure ROM_CAB_ROMANEIO_COBRANCA_BANCARIO;
    procedure ROM_CAB_ROMANEIO_COBRANCA_COMBAIXA;
    procedure abre_tabela;
    procedure ajustaform;
  public
    { Public declarations }
    wRec: TBookMark;
  end;

var
  frmrec_car: Tfrmrec_car;
  Ano, Mes, Dia: Word;
  demi: TDate;
  chav,cdnf: String;

implementation

uses uPrincipal, ppesquisa, prelatorio_geral, qcob_ped, pven_npr,
  qcob_rom;

{$R *.dfm}

procedure Tfrmrec_car.abre_tabela;
begin
  with cadastro do
  begin
    DeleteSQL.Clear;
    DeleteSQL.Add('delete from '+SLPrincipal.Values['fin_rec_car_bai']);
    DeleteSQL.Add('where');
    DeleteSQL.Add('ID = :OLD_ID');

    InsertSQL.Clear;
    InsertSQL.Add('insert into '+SLPrincipal.Values['fin_rec_car_bai']);
    InsertSQL.Add('  (FIN_AGEN, FIN_ATRA, FIN_BANC, FIN_BCON, FIN_CBCO,');
    InsertSQL.Add('   FIN_CCAB, FIN_CCLI, FIN_CCUS, FIN_CDBA, FIN_CDBC, FIN_CDBX, FIN_CDCH,');
    InsertSQL.Add('   FIN_CDCO, FIN_CDCX, FIN_CDDP, FIN_CDNF, FIN_CDPD, FIN_CDPG, FIN_CDRD,');
    InsertSQL.Add('   FIN_CONC, FIN_CONT, FIN_CPF , FIN_CPPL, FIN_CREP, FIN_CTNR, FIN_CVEN,');
    InsertSQL.Add('   FIN_DATR, FIN_DBAI, FIN_DBAN, FIN_DCAD, FIN_DCAN, FIN_DCON, FIN_DEBA,');
    InsertSQL.Add('   FIN_DEPD, FIN_DERD, FIN_DESC, FIN_DLOT, FIN_DMED, FIN_DOCT, FIN_DPAG,');
    InsertSQL.Add('   FIN_DTBC, FIN_DTBX, FIN_DTDP, FIN_DTNF, FIN_DTNR, FIN_DTPD, FIN_DTRD,');
    InsertSQL.Add('   FIN_DTST, FIN_DVEN, FIN_IDBX, FIN_LOTE, FIN_MCHQ, FIN_NCHQ, FIN_OBSE,');
    InsertSQL.Add('   FIN_PDES, FIN_PJUR, FIN_PMUL, FIN_PORT, FIN_PRAZ, FIN_STA , FIN_STCO,');
    InsertSQL.Add('   FIN_STDO, FIN_STFI, FIN_TIPO, FIN_TITU, FIN_VABA, FIN_VALO, FIN_VCRD,'); 
    InsertSQL.Add('   FIN_VDES, FIN_VDEV, FIN_VENC, FIN_VJUR, FIN_VMUL, FIN_VPAG, FIN_VPEN,'); 
    InsertSQL.Add('   FIN_VPRO, FIN_VTER, ID)');
    InsertSQL.Add('values');
    InsertSQL.Add('  (:FIN_AGEN, :FIN_ATRA, :FIN_BANC, :FIN_BCON, :FIN_CBCO,');
    InsertSQL.Add('   :FIN_CCAB, :FIN_CCLI, :FIN_CCUS, :FIN_CDBA, :FIN_CDBC, :FIN_CDBX, :FIN_CDCH,');
    InsertSQL.Add('   :FIN_CDCO, :FIN_CDCX, :FIN_CDDP, :FIN_CDNF, :FIN_CDPD, :FIN_CDPG, :FIN_CDRD,');
    InsertSQL.Add('   :FIN_CONC, :FIN_CONT, :FIN_CPF , :FIN_CPPL, :FIN_CREP, :FIN_CTNR, :FIN_CVEN,');
    InsertSQL.Add('   :FIN_DATR, :FIN_DBAI, :FIN_DBAN, :FIN_DCAD, :FIN_DCAN, :FIN_DCON, :FIN_DEBA,');
    InsertSQL.Add('   :FIN_DEPD, :FIN_DERD, :FIN_DESC, :FIN_DLOT, :FIN_DMED, :FIN_DOCT, :FIN_DPAG,');
    InsertSQL.Add('   :FIN_DTBC, :FIN_DTBX, :FIN_DTDP, :FIN_DTNF, :FIN_DTNR, :FIN_DTPD, :FIN_DTRD,');
    InsertSQL.Add('   :FIN_DTST, :FIN_DVEN, :FIN_IDBX, :FIN_LOTE, :FIN_MCHQ, :FIN_NCHQ, :FIN_OBSE,');
    InsertSQL.Add('   :FIN_PDES, :FIN_PJUR, :FIN_PMUL, :FIN_PORT, :FIN_PRAZ, :FIN_STA , :FIN_STCO,');
    InsertSQL.Add('   :FIN_STDO, :FIN_STFI, :FIN_TIPO, :FIN_TITU, :FIN_VABA, :FIN_VALO, :FIN_VCRD,'); 
    InsertSQL.Add('   :FIN_VDES, :FIN_VDEV, :FIN_VENC, :FIN_VJUR, :FIN_VMUL, :FIN_VPAG, :FIN_VPEN,'); 
    InsertSQL.Add('   :FIN_VPRO, :FIN_VTER, :ID)');

    ModifySQL.Clear;
    ModifySQL.Add('update '+SLPrincipal.Values['fin_rec_car_bai']);
    ModifySQL.Add('set');
    ModifySQL.Add('  FIN_AGEN = :FIN_AGEN,');
    ModifySQL.Add('  FIN_ATRA = :FIN_ATRA,');
    ModifySQL.Add('  FIN_BANC = :FIN_BANC,');
    ModifySQL.Add('  FIN_BCON = :FIN_BCON,');
    ModifySQL.Add('  FIN_CBCO = :FIN_CBCO,');
    ModifySQL.Add('  FIN_CCAB = :FIN_CCAB,');
    ModifySQL.Add('  FIN_CCLI = :FIN_CCLI,');
    ModifySQL.Add('  FIN_CCUS = :FIN_CCUS,');
    ModifySQL.Add('  FIN_CDBA = :FIN_CDBA,');
    ModifySQL.Add('  FIN_CDBC = :FIN_CDBC,');
    ModifySQL.Add('  FIN_CDBX = :FIN_CDBX,');
    ModifySQL.Add('  FIN_CDCH = :FIN_CDCH,');
    ModifySQL.Add('  FIN_CDCO = :FIN_CDCO,');
    ModifySQL.Add('  FIN_CDCX = :FIN_CDCX,');
    ModifySQL.Add('  FIN_CDDP = :FIN_CDDP,');
    ModifySQL.Add('  FIN_CDNF = :FIN_CDNF,');
    ModifySQL.Add('  FIN_CDPD = :FIN_CDPD,');
    ModifySQL.Add('  FIN_CDPG = :FIN_CDPG,');
    ModifySQL.Add('  FIN_CDRD = :FIN_CDRD,');
    ModifySQL.Add('  FIN_CONC = :FIN_CONC,');
    ModifySQL.Add('  FIN_CONT = :FIN_CONT,');
    ModifySQL.Add('  FIN_CPF  = :FIN_CPF, ');
    ModifySQL.Add('  FIN_CPPL = :FIN_CPPL,');
    ModifySQL.Add('  FIN_CREP = :FIN_CREP,');
    ModifySQL.Add('  FIN_CTNR = :FIN_CTNR,');
    ModifySQL.Add('  FIN_CVEN = :FIN_CVEN,');
    ModifySQL.Add('  FIN_DATR = :FIN_DATR,');
    ModifySQL.Add('  FIN_DBAI = :FIN_DBAI,');
    ModifySQL.Add('  FIN_DBAN = :FIN_DBAN,');
    ModifySQL.Add('  FIN_DCAD = :FIN_DCAD,');
    ModifySQL.Add('  FIN_DCAN = :FIN_DCAN,');
    ModifySQL.Add('  FIN_DCON = :FIN_DCON,');
    ModifySQL.Add('  FIN_DEBA = :FIN_DEBA,');
    ModifySQL.Add('  FIN_DEPD = :FIN_DEPD,');
    ModifySQL.Add('  FIN_DERD = :FIN_DERD,');
    ModifySQL.Add('  FIN_DESC = :FIN_DESC,');
    ModifySQL.Add('  FIN_DLOT = :FIN_DLOT,');
    ModifySQL.Add('  FIN_DMED = :FIN_DMED,');
    ModifySQL.Add('  FIN_DOCT = :FIN_DOCT,');
    ModifySQL.Add('  FIN_DPAG = :FIN_DPAG,');
    ModifySQL.Add('  FIN_DTBC = :FIN_DTBC,');
    ModifySQL.Add('  FIN_DTBX = :FIN_DTBX,');
    ModifySQL.Add('  FIN_DTDP = :FIN_DTDP,');
    ModifySQL.Add('  FIN_DTNF = :FIN_DTNF,');
    ModifySQL.Add('  FIN_DTNR = :FIN_DTNR,');
    ModifySQL.Add('  FIN_DTPD = :FIN_DTPD,');
    ModifySQL.Add('  FIN_DTRD = :FIN_DTRD,');
    ModifySQL.Add('  FIN_DTST = :FIN_DTST,');
    ModifySQL.Add('  FIN_DVEN = :FIN_DVEN,');
    ModifySQL.Add('  FIN_IDBX = :FIN_IDBX,');
    ModifySQL.Add('  FIN_LOTE = :FIN_LOTE,');
    ModifySQL.Add('  FIN_MCHQ = :FIN_MCHQ,');
    ModifySQL.Add('  FIN_NCHQ = :FIN_NCHQ,');
    ModifySQL.Add('  FIN_OBSE = :FIN_OBSE,');
    ModifySQL.Add('  FIN_PDES = :FIN_PDES,');
    ModifySQL.Add('  FIN_PJUR = :FIN_PJUR,');
    ModifySQL.Add('  FIN_PMUL = :FIN_PMUL,');
    ModifySQL.Add('  FIN_PORT = :FIN_PORT,');
    ModifySQL.Add('  FIN_PRAZ = :FIN_PRAZ,');
    ModifySQL.Add('  FIN_STA  = :FIN_STA, ');
    ModifySQL.Add('  FIN_STCO = :FIN_STCO,');
    ModifySQL.Add('  FIN_STDO = :FIN_STDO,');
    ModifySQL.Add('  FIN_STFI = :FIN_STFI,');
    ModifySQL.Add('  FIN_TIPO = :FIN_TIPO,');
    ModifySQL.Add('  FIN_TITU = :FIN_TITU,');
    ModifySQL.Add('  FIN_VABA = :FIN_VABA,');
    ModifySQL.Add('  FIN_VALO = :FIN_VALO,');
    ModifySQL.Add('  FIN_VCRD = :FIN_VCRD,');
    ModifySQL.Add('  FIN_VDES = :FIN_VDES,');
    ModifySQL.Add('  FIN_VDEV = :FIN_VDEV,');
    ModifySQL.Add('  FIN_VENC = :FIN_VENC,');
    ModifySQL.Add('  FIN_VJUR = :FIN_VJUR,');
    ModifySQL.Add('  FIN_VMUL = :FIN_VMUL,');
    ModifySQL.Add('  FIN_VPAG = :FIN_VPAG,');
    ModifySQL.Add('  FIN_VPEN = :FIN_VPEN,');
    ModifySQL.Add('  FIN_VPRO = :FIN_VPRO,');
    ModifySQL.Add('  FIN_VTER = :FIN_VTER,');
    ModifySQL.Add('  ID = :ID             ');
    ModifySQL.Add('where');               
    ModifySQL.Add('  ID = :OLD_ID');
  end;
end;

procedure Tfrmrec_car.AjustaForm;
begin
  screen.Cursor:=crHourGlass;
  screen.Cursor:=crDefault;

  Self.Height := frmprincipal.pnCustomize.Height-4;
  Self.top    := 0;
  Self.left   := 0;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
   self.Height := screen.Height;
   self.Width  :=  screen.Width;

   if frmprincipal.pnbot.Visible then
      self.Height := self.Height - frmprincipal.pnbot.Height;
  end;
end;

procedure Tfrmrec_car.FormCreate(Sender: TObject);
begin
  cEvent := 'REC_BAN';

  ABRE_TABELA;
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   FIN_REC_CAR_BAI.*,CLI_FANT,CLI_RAZA,USU_DUSU,REP_FANT');
    SelectSQL.Add('FROM   '+SLPrincipal.Values['fin_rec_car_bai']+' "FIN_REC_CAR_BAI"');
    SelectSQL.Add('LEFT     OUTER JOIN CAD_CLI ON FIN_REC_CAR_BAI.FIN_CCLI = CAD_CLI.ID');
    SelectSQL.Add('LEFT     OUTER JOIN CAD_REP ON FIN_REC_CAR_BAI.FIN_CREP = CAD_REP.ID');
    SelectSQL.Add('LEFT     OUTER JOIN CAD_USU ON FIN_REC_CAR_BAI.FIN_CVEN = CAD_USU.USU_CUSU');
    SelectSQL.Add('WHERE    FIN_REC_CAR_BAI.ID = 0');
    SelectSQL.Add('ORDER BY FIN_REC_CAR_BAI.FIN_DVEN');
  end;

  with fin_rec_ban do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM '+SLPrincipal.Values['fin_rec_ban_bai']);
    SQL.Add('WHERE  FIN_CDBX = :FIN_CDBX');
    Open;
  end;

  inherited;
  Ajustaform;
end;

procedure Tfrmrec_car.dtscadastroDataChange(Sender: TObject;
  Field: TField);
begin
  lacli.Caption := cadastroCLI_FANT.AsString+' - '+cadastroCLI_RAZA.AsString;
  with fin_rec_rec do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM '+SLPrincipal.Values['fin_rec_car_rec']+' "FIN_REC_CAR_REC"');
    if cadastroFIN_CDBX.AsInteger > 0 then
    SQL.Add('WHERE    FIN_CDBX = '''+cadastroFIN_CDBX.AsString+'''')
    else
    SQL.Add('WHERE    ID = 0');
    SQL.Add('ORDER BY ID');
    Open;
  end;

  sbMSG.Panels[1].Text := '';
  if cadastroFIN_CTNR.AsString <> '' then
  sbMSG.Panels[1].Text := 'Container No: '+cadastroFIN_CTNR.AsString;
end;

procedure Tfrmrec_car.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  if campo_pesquisa = '' then
  frmpesquisa.cbCAMPO.Text := 'Documento' else
  frmpesquisa.cbCAMPO.Text := campo_pesquisa;
  
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
        if cField = 'FIN_NCHQ' then
        begin
          with consulta do
          begin
            SQL.Clear;
            SQL.Add('SELECT FIN_DOCT FROM '+SLPrincipal.Values['fin_rec_car_rec']+' "FIN_REC_CAR_REC"');
            SQL.Add('WHERE  FIN_NCHQ LIKE ''%'+edtxt.Text+'%''');
            Open;
          end;
          with cadastro do
          begin
            Close;
            SelectSQL.Clear;
            SelectSQL.Add('SELECT   FIN_REC_CAR_BAI.*,CLI_FANT,CLI_RAZA,USU_DUSU,REP_FANT');
            SelectSQL.Add('FROM   '+SLPrincipal.Values['fin_rec_car_bai']+' "FIN_REC_CAR_BAI"');
            SelectSQL.Add('LEFT     OUTER JOIN CAD_CLI ON FIN_REC_CAR_BAI.FIN_CCLI = CAD_CLI.ID');
            SelectSQL.Add('LEFT     OUTER JOIN CAD_REP ON FIN_REC_CAR_BAI.FIN_CREP = CAD_REP.ID');
            SelectSQL.Add('LEFT     OUTER JOIN CAD_USU ON FIN_REC_CAR_BAI.FIN_CVEN = CAD_USU.USU_CUSU');
            SelectSQL.Add('WHERE    FIN_REC_CAR_BAI.ID > 0');
            SelectSQL.Add('AND      FIN_DOCT = '''+consulta.Fields[0].AsString+'''');

            consulta.Next;
            while not consulta.Eof do
            begin
              SelectSQL.Add('OR     FIN_DOCT = '''+consulta.Fields[0].AsString+'''');
              consulta.Next;
            end;

            SelectSQL.Add('ORDER BY FIN_DVEN');
            Open;
          end;
        end else
        begin
          with cadastro do
          begin
            Close;
            SelectSQL.Clear;
            SelectSQL.Add('SELECT   FIN_REC_CAR_BAI.*,CLI_FANT,CLI_RAZA,USU_DUSU,REP_FANT');
            SelectSQL.Add('FROM   '+SLPrincipal.Values['fin_rec_car_bai']+' "FIN_REC_CAR_BAI"');
            SelectSQL.Add('LEFT     OUTER JOIN CAD_CLI ON FIN_REC_CAR_BAI.FIN_CCLI = CAD_CLI.ID');
            SelectSQL.Add('LEFT     OUTER JOIN CAD_REP ON FIN_REC_CAR_BAI.FIN_CREP = CAD_REP.ID');
            SelectSQL.Add('LEFT     OUTER JOIN CAD_USU ON FIN_REC_CAR_BAI.FIN_CVEN = CAD_USU.USU_CUSU');
            SelectSQL.Add('WHERE    FIN_REC_CAR_BAI.ID > 0');

            if edtxt.Text <> '' then
            begin
              if cField = 'CAD_CLI.ID' then
              SelectSQL.Add('AND '+cField+' = '''+edtxt.Text+'''')
              else
              SelectSQL.Add('AND '+cField+' LIKE ''%'+edtxt.Text+'%''');
            end;

            if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
               SelectSQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

            SelectSQL.Add('ORDER BY FIN_DVEN');
            Open;
          end;
        end;
      end;
      dbgconsulta.SetFocus;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmrec_car.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value,Value2: Variant;
begin
  if not ASelected then
  begin
    AFont.Color := clBlack;
    AColor      := clWhite;

    Value := ANode.Values[4];
    if (not VarIsNull(Value)) then
    begin
      if copy(Value,1,4) = 'PAGO' then
      begin
         AFont.Color := clwhite;
         AColor      := $00A4A400;
      end
      else if (Value = 'PROTESTADO') or (Value = 'NÃO PAGO') then
      begin
         AFont.Color := clwhite;
         AColor      := $000024B3;
      end
      else if Value = 'CANCELADO' then
      begin
         AFont.Color := clwhite;
         AColor      := RGB(StrToInt( '$ED') ,
                            StrToInt( '$1F') ,
                            StrToInt( '$43') );
      end;
    end;

    Value := ANode.Values[2];
    if (not VarIsNull(Value)) then
    begin
      if copy(Value,1,1) = 'T' then
      begin
         AFont.Color := clWhite;
         AColor      := clBlack;
      end
    end;

    if (AColumn = dbgConsultaFIN_VPEN) then
    begin
      AColor      := $00BEEFF8;
      AFont.Color := clBlack;
    end;

    if (AColumn = dbgConsultaFIN_VPAG) or (AColumn = dbgConsultaFIN_DPAG) then
    begin
      AColor      := $00A4A400;
      AFont.Color := clWhite;
    end;

    Value2 := ANode.Values[3];
    if (not VarIsNull(Value2)) then
    begin
      if Value2 = 'DEVOLUÇÃO' then
      begin
        AFont.Color := clBlack;
        AColor      := $00BEEFF8;
      end
      else if Value2 = 'ABATIMENTO' then
      begin
        AFont.Color := clBlack;
        AColor      := $00A5EAF5;
      end
    end;
  end;
end;

procedure Tfrmrec_car.dbgcarCustomDrawCell(Sender: TObject;
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
    AColor      := $00F0E8D9;

    Value  := ANode.Values[2];

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
      end;
    end;
  end;
end;

procedure Tfrmrec_car.dbgdupCustomDrawCell(Sender: TObject;
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
    AColor      := clWhite;

    Value  := ANode.Values[3];

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
      end;
    end;
  end;
end;

procedure Tfrmrec_car.siRELClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.tsFIN_REC.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsFIN_REC;
    frmrelatorio_geral.cbFIN_REC_TREL.Text  := 'LISTAGEM GERAL DE CONTAS A RECEBER';
    frmrelatorio_geral.cbFIN_REC_TREL.Tag   := 1;
    frmrelatorio_geral.cbFIN_REC_DATA.Text  := 'DATA VENCIMENTO';

    with frmrelatorio_geral.consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   FIN_REC_CAR_BAI.FIN_CCLI,CAD_CLI.CLI_FANT,CAD_CLI.CLI_RAZA');
      SQL.Add('FROM     CAD_CLI,'+SLPrincipal.Values['fin_rec_car_bai']+' "FIN_REC_CAR_BAI"');
      SQL.Add('WHERE    CAD_CLI.ID = FIN_REC_CAR_BAI.FIN_CCLI');
      SQL.Add('GROUP BY FIN_REC_CAR_BAI.FIN_CCLI,CAD_CLI.CLI_FANT,CAD_CLI.CLI_RAZA');
      SQL.Add('ORDER BY CAD_CLI.CLI_FANT');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbFIN_REC_DCLI.Items.Add(fields[1].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   FIN_REC_CAR_BAI.FIN_CCLI,CAD_CLI.CLI_FANT,CAD_CLI.CLI_RAZA');
      SQL.Add('FROM     CAD_CLI,'+SLPrincipal.Values['fin_rec_car_bai']+' "FIN_REC_CAR_BAI"');
      SQL.Add('WHERE    CAD_CLI.ID = FIN_REC_CAR_BAI.FIN_CCLI');
      SQL.Add('GROUP BY FIN_REC_CAR_BAI.FIN_CCLI,CAD_CLI.CLI_FANT,CAD_CLI.CLI_RAZA');
      SQL.Add('ORDER BY CAD_CLI.CLI_RAZA');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbFIN_REC_RCLI.Items.Add(fields[2].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   FIN_REC_CAR_BAI.FIN_CVEN,CAD_USU.USU_DUSU');
      SQL.Add('FROM     CAD_USU,'+SLPrincipal.Values['fin_rec_car_bai']+' "FIN_REC_CAR_BAI"');
      SQL.Add('WHERE    CAD_USU.USU_CUSU = FIN_REC_CAR_BAI.FIN_CVEN');
      SQL.Add('GROUP BY FIN_REC_CAR_BAI.FIN_CVEN,CAD_USU.USU_DUSU');
      SQL.Add('ORDER BY CAD_USU.USU_DUSU');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbFIN_REC_DVEN.Items.Add(fields[1].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   FIN_REC_CAR_BAI.FIN_CREP,CAD_REP.REP_FANT');
      SQL.Add('FROM     CAD_REP,'+SLPrincipal.Values['fin_rec_car_bai']+' "FIN_REC_CAR_BAI"');
      SQL.Add('WHERE    CAD_REP.ID = FIN_REC_CAR_BAI.FIN_CREP');
      SQL.Add('GROUP BY FIN_REC_CAR_BAI.FIN_CREP,CAD_REP.REP_FANT');
      SQL.Add('ORDER BY CAD_REP.REP_FANT');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbFIN_REC_DREP.Items.Add(fields[1].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   VEN_TIPO FROM TAB_PED');
      SQL.Add('ORDER BY VEN_TIPO');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbFIN_REC_STPD.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbFIN_REC_STPD.Descriptions.Add(fields[0].AsString);
        next;
      end;
    end;

    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmrec_car.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmrec_car <> nil then
  begin
    frmrec_car.Release;
    frmrec_car := nil;
  end;
end;

procedure Tfrmrec_car.siVPEDClick(Sender: TObject);
var
  cdpd: string;
begin
  if cadastroID.IsNull then
     abort;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE  ROM_CDBX = '''+cadastroFIN_CDBX.AsString+'''');
    Open;
    cdpd := fields[0].AsString;
  end;

  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Pedidos');

  if qrpcob_ped = nil then
     qrpcob_ped := Tqrpcob_ped.Create(self);

  try
    with qrpcob_ped.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG,');
      SQL.Add('         CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
      SQL.Add('         PED_VEN_ITE.ID,PED_VEN_ITE.ROM_ITEM,PED_VEN_ITE.ROM_DCOR,PED_VEN_ITE.ROM_DPRO,PED_VEN_ITE.ROM_QTDE,PED_VEN_ITE.ROM_UNIT,PED_VEN_ITE.ROM_TOTA');
      SQL.Add('FROM     CAD_PRO,CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE" ,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND      PED_VEN_CAB.ID       = PED_VEN_ITE.ROM_CCAB');
      SQL.Add('AND      CAD_PRO.ID           = PED_VEN_ITE.ROM_CPRO');
      SQL.Add('AND      PED_VEN_CAB.ID = '''+cdpd+'''');
      SQL.Add('ORDER BY CAD_PRO.PRO_CPRO');
      Open;
    end;

    qrpcob_ped.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);

    qrpcob_ped.qrlraza.Caption       := frmprincipal.parametrosPAR_RAZA.AsString;

    qrpcob_ped.qrlend1.Caption       := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpcob_ped.qrlend2.Caption       := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;

    qrpcob_ped.qrlemai_site.Caption  := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;

    qrpcob_ped.qrlfone.Caption       := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpcob_ped.ReportTitle           := 'Pedido de Venda de Cobrança';
    qrpcob_ped.qrltitulo.Caption     := 'Pedido de Venda de Cobrança';

    if qrpcob_ped.relatorioROM_STPD.AsString = 'DEVOLUÇÃO' then
    begin
      qrpcob_ped.ReportTitle           := 'Pedido de Devolução';
      qrpcob_ped.qrltitulo.Caption     := 'Pedido de Devolução';
    end
    else if qrpcob_ped.relatorioROM_STPD.AsString = 'ABATIMENTO' then
    begin
      qrpcob_ped.ReportTitle           := 'Pedido de Abatimento';
      qrpcob_ped.qrltitulo.Caption     := 'Pedido de Abatimento';
    end
    else if qrpcob_ped.relatorioROM_STPD.AsString = 'SERVIÇO' then
    begin
      qrpcob_ped.ReportTitle           := 'Pedido de Serviço';
      qrpcob_ped.qrltitulo.Caption     := 'Pedido de Serviço';
    end;

    qrpcob_ped.qrlrodape.Caption     := frmprincipal.cad_usuUSU_DUSU.AsString;
    qrpcob_ped.qrlrodape2.Caption    := qrpcob_ped.qrlrodape.Caption;

    qrpcob_ped.qrlcli.Caption        := qrpcob_ped.relatorioROM_CCLI.AsString+' - '+qrpcob_ped.relatorioCLI_FANT.AsString;
    qrpcob_ped.qrlcli2.Caption       := qrpcob_ped.qrlcli.Caption;

    qrpcob_ped.qrlven.Caption        := qrpcob_ped.relatorioROM_CVEN.AsString+' - '+qrpcob_ped.relatorioUSU_DUSU.AsString;
    qrpcob_ped.qrlven2.Caption       := qrpcob_ped.qrlven.Caption;

    qrpcob_ped.qrlrep.Caption        := qrpcob_ped.relatorioROM_CREP.AsString+' - '+qrpcob_ped.relatorioREP_FANT.AsString;
    qrpcob_ped.qrlrep2.Caption       := qrpcob_ped.qrlrep.Caption;

    if qrpcob_ped.relatorioROM_TDSC.AsString = '%' then
    qrpcob_ped.qrldesc.Caption := 'Desconto (%)'
    else
    qrpcob_ped.qrldesc.Caption  := 'Desconto ($)';
    qrpcob_ped.qrldesc2.Caption := qrpcob_ped.qrldesc.Caption;

    qrpcob_ped.qrlpagina.Caption  := 'Página: '+qrpcob_ped.relatorioROM_CONC.AsString;
    qrpcob_ped.qrlpagina2.Caption := qrpcob_ped.qrlpagina.Caption;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PAG_PARC,PAG_DPAG FROM TAB_PAG');
      SQL.Add('WHERE  ID = '''+qrpcob_ped.relatorioROM_CPAG.AsString+'''');
      Open;

      qrpcob_ped.qrlparc.Caption  := '('+oStrZero(fields[0].AsInteger,2)+')';
//      qrpcob_ped.qrlparc2.Caption := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpcob_ped.qrlpag.Caption   := fields[1].AsString;
//      qrpcob_ped.qrlpag2.Caption  := fields[1].AsString;

      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpcob_ped.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpcob_ped.lanpa1.Caption  := '';
    qrpcob_ped.ladpa1.Caption  := '';
    qrpcob_ped.lavpa1.Caption  := '';
    qrpcob_ped.lanpa2.Caption  := '';
    qrpcob_ped.ladpa2.Caption  := '';
    qrpcob_ped.lavpa2.Caption  := '';
    qrpcob_ped.lanpa3.Caption  := '';
    qrpcob_ped.ladpa3.Caption  := '';
    qrpcob_ped.lavpa3.Caption  := '';
    qrpcob_ped.lanpa4.Caption  := '';
    qrpcob_ped.ladpa4.Caption  := '';
    qrpcob_ped.lavpa4.Caption  := '';
    qrpcob_ped.lanpa5.Caption  := '';
    qrpcob_ped.ladpa5.Caption  := '';
    qrpcob_ped.lavpa5.Caption  := '';
    qrpcob_ped.lanpa6.Caption  := '';
    qrpcob_ped.ladpa6.Caption  := '';
    qrpcob_ped.lavpa6.Caption  := '';
    qrpcob_ped.lanpa7.Caption  := '';
    qrpcob_ped.ladpa7.Caption  := '';
    qrpcob_ped.lavpa7.Caption  := '';
    qrpcob_ped.lanpa8.Caption  := '';
    qrpcob_ped.ladpa8.Caption  := '';
    qrpcob_ped.lavpa8.Caption  := '';
    qrpcob_ped.lanpa9.Caption  := '';
    qrpcob_ped.ladpa9.Caption  := '';
    qrpcob_ped.lavpa9.Caption  := '';
    qrpcob_ped.lanpa10.Caption := '';
    qrpcob_ped.ladpa10.Caption := '';
    qrpcob_ped.lavpa10.Caption := '';

    VEN_PED_COBRANCA_COMBAIXA;

{    qrpcob_ped.lanpa21.Caption  := qrpcob_ped.lanpa1.Caption ;
    qrpcob_ped.ladpa21.Caption  := qrpcob_ped.ladpa1.Caption ;
    qrpcob_ped.lavpa21.Caption  := qrpcob_ped.lavpa1.Caption ;
    qrpcob_ped.lanpa22.Caption  := qrpcob_ped.lanpa2.Caption ;
    qrpcob_ped.ladpa22.Caption  := qrpcob_ped.ladpa2.Caption ;
    qrpcob_ped.lavpa22.Caption  := qrpcob_ped.lavpa2.Caption ;
    qrpcob_ped.lanpa23.Caption  := qrpcob_ped.lanpa3.Caption ;
    qrpcob_ped.ladpa23.Caption  := qrpcob_ped.ladpa3.Caption ;
    qrpcob_ped.lavpa23.Caption  := qrpcob_ped.lavpa3.Caption ;
    qrpcob_ped.lanpa24.Caption  := qrpcob_ped.lanpa4.Caption ;
    qrpcob_ped.ladpa24.Caption  := qrpcob_ped.ladpa4.Caption ;
    qrpcob_ped.lavpa24.Caption  := qrpcob_ped.lavpa4.Caption ;
    qrpcob_ped.lanpa25.Caption  := qrpcob_ped.lanpa5.Caption ;
    qrpcob_ped.ladpa25.Caption  := qrpcob_ped.ladpa5.Caption ;
    qrpcob_ped.lavpa25.Caption  := qrpcob_ped.lavpa5.Caption ;
    qrpcob_ped.lanpa26.Caption  := qrpcob_ped.lanpa6.Caption ;
    qrpcob_ped.ladpa26.Caption  := qrpcob_ped.ladpa6.Caption ;
    qrpcob_ped.lavpa26.Caption  := qrpcob_ped.lavpa6.Caption ;
    qrpcob_ped.lanpa27.Caption  := qrpcob_ped.lanpa7.Caption ;
    qrpcob_ped.ladpa27.Caption  := qrpcob_ped.ladpa7.Caption ;
    qrpcob_ped.lavpa27.Caption  := qrpcob_ped.lavpa7.Caption ;
    qrpcob_ped.lanpa28.Caption  := qrpcob_ped.lanpa8.Caption ;
    qrpcob_ped.ladpa28.Caption  := qrpcob_ped.ladpa8.Caption ;
    qrpcob_ped.lavpa28.Caption  := qrpcob_ped.lavpa8.Caption ;
    qrpcob_ped.lanpa29.Caption  := qrpcob_ped.lanpa9.Caption ;
    qrpcob_ped.ladpa29.Caption  := qrpcob_ped.ladpa9.Caption ;
    qrpcob_ped.lavpa29.Caption  := qrpcob_ped.lavpa9.Caption ;
    qrpcob_ped.lanpa210.Caption := qrpcob_ped.lanpa10.Caption;
    qrpcob_ped.ladpa210.Caption := qrpcob_ped.ladpa10.Caption;
    qrpcob_ped.lavpa210.Caption := qrpcob_ped.lavpa10.Caption;
 }
    qrpcob_ped.Prepare;
    qrpcob_ped.Preview;
  finally
    freeAndNil(qrpcob_ped);
    qrpcob_ped.Free;
  end;
end;

procedure Tfrmrec_car.VEN_PED_COBRANCA_COMBAIXA;
var
  i,p: word;
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FIN_NCHQ,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_car_bai']);
    SQL.Add('WHERE    FIN_CDBX = '''+cadastroFIN_CDBX.AsString+'''');
    SQL.Add('ORDER BY FIN_DVEN');
    Open;
  end;

  consulta.Last;
  p := consulta.recno;
  consulta.First;

  for i := 1 to p do
  begin
    case i of
        1: begin
             qrpcob_ped.lanpa1.Caption  := '01) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa1.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa1.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        2: begin
             qrpcob_ped.lanpa2.Caption  := '02) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa2.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa2.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        3: begin
             qrpcob_ped.lanpa3.Caption  := '03) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa3.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa3.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        4: begin
             qrpcob_ped.lanpa4.Caption  := '04) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa4.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa4.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        5: begin
             qrpcob_ped.lanpa5.Caption  := '05) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa5.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa5.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        6: begin
             qrpcob_ped.lanpa6.Caption  := '06) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa6.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa6.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        7: begin
             qrpcob_ped.lanpa7.Caption  := '07) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa7.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa7.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        8: begin
             qrpcob_ped.lanpa8.Caption  := '08) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa8.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa8.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        9: begin
             qrpcob_ped.lanpa9.Caption  := '09) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa9.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa9.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
       10: begin
             qrpcob_ped.lanpa10.Caption := '10) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa10.Caption := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa10.Caption := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
           end;

    end;
  end;
end;

procedure Tfrmrec_car.siVROMClick(Sender: TObject);
var
  cdro: string;
begin
  if cadastroID.IsNull then
     abort;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM '+SLPrincipal.Values['rom_cab']);
    SQL.Add('WHERE  ROM_CDBX = '''+cadastroFIN_CDBX.AsString+'''');
    Open;
    cdro := fields[0].AsString;
  end;

  if cdro = '' then
     raise exception.Create('Romaneio não encontrado !');
  
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Romaneios');

  if qrpcob_rom = nil then
     qrpcob_rom := Tqrpcob_rom.Create(self);

  try
    with qrpcob_rom.roman do
    begin
      SQL.Clear;
      SQL.Add('SELECT   ROM_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
      SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['rom_cab']+' "ROM_CAB"');
      SQL.Add('WHERE    ROM_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND      ROM_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND      ROM_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      ROM_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND      ROM_CAB.ID = '''+cdro+'''');
      SQL.Add('ORDER BY ROM_CAB.ID DESC');
      Open;
    end;

    with qrpcob_rom.ven_efe do
    begin
      SQL.Clear;
      SQL.Add('SELECT   CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
      SQL.Add('         ROM_ITE.ID,ROM_ITE.ROM_ITEM,ROM_ITE.ROM_DCOR,ROM_ITE.ROM_DPRO,ROM_ITE.ROM_QTDE,ROM_ITE.ROM_UNIT,ROM_ITE.ROM_TOTA');
      SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['rom_ite']+' "ROM_ITE"');
      SQL.Add('WHERE    ROM_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND      ROM_ITE.ROM_CCAB = '''+cdro+'''');
      SQL.Add('ORDER BY CAD_PRO.PRO_CPRO');
      Open;
    end;

    qrpcob_rom.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);

    qrpcob_rom.qrlraza.Caption       := frmprincipal.parametrosPAR_RAZA.AsString;

    qrpcob_rom.qrlend1.Caption       := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpcob_rom.qrlend2.Caption       := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;

    qrpcob_rom.qrlemai_site.Caption  := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;

    qrpcob_rom.qrlfone.Caption       := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpcob_rom.ReportTitle           := 'Romaneio de Cobrança';
    qrpcob_rom.qrltitulo.Caption     := 'Romaneio de Cobrança';

    if qrpcob_rom.romanROM_STPD.AsString = 'DEVOLUÇÃO' then
    begin
      qrpcob_rom.ReportTitle           := 'Romaneio de Devolução';
      qrpcob_rom.qrltitulo.Caption     := 'Romaneio de Devolução';
    end
    else if qrpcob_rom.romanROM_STPD.AsString = 'ABATIMENTO' then
    begin
      qrpcob_rom.ReportTitle           := 'Romaneio de Abatimento';
      qrpcob_rom.qrltitulo.Caption     := 'Romaneio de Abatimento';
    end
    else if qrpcob_rom.romanROM_STPD.AsString = 'SERVIÇO' then
    begin
      qrpcob_rom.ReportTitle           := 'Romaneio de Serviço';
      qrpcob_rom.qrltitulo.Caption     := 'Romaneio de Serviço';
    end;

    qrpcob_rom.qrlrodape.Caption     := frmprincipal.cad_usuUSU_DUSU.AsString;
    qrpcob_rom.qrlrodape2.Caption    := qrpcob_rom.qrlrodape.Caption;

    qrpcob_rom.qrlcli.Caption        := qrpcob_rom.romanROM_CCLI.AsString+' - '+qrpcob_rom.romanCLI_FANT.AsString;
    qrpcob_rom.qrlcli2.Caption       := qrpcob_rom.qrlcli.Caption;

    qrpcob_rom.qrlven.Caption        := qrpcob_rom.romanROM_CVEN.AsString+' - '+qrpcob_rom.romanUSU_DUSU.AsString;
    qrpcob_rom.qrlven2.Caption       := qrpcob_rom.qrlven.Caption;

    qrpcob_rom.qrlrep.Caption        := qrpcob_rom.romanROM_CREP.AsString+' - '+qrpcob_rom.romanREP_FANT.AsString;
    qrpcob_rom.qrlrep2.Caption       := qrpcob_rom.qrlrep.Caption;

    if qrpcob_rom.romanROM_TDSC.AsString = '%' then
    qrpcob_rom.qrldesc.Caption := 'Desconto (%)'
    else
    qrpcob_rom.qrldesc.Caption  := 'Desconto ($)';
    qrpcob_rom.qrldesc2.Caption := qrpcob_rom.qrldesc.Caption;

    qrpcob_rom.qrlpagina.Caption  := 'Página: '+qrpcob_rom.romanROM_CONC.AsString;
    qrpcob_rom.qrlpagina2.Caption := qrpcob_rom.qrlpagina.Caption;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PAG_PARC,PAG_DPAG FROM TAB_PAG');
      SQL.Add('WHERE  ID = '''+qrpcob_rom.romanROM_CPAG.AsString+'''');
      Open;

      qrpcob_rom.qrlparc.Caption  := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpcob_rom.qrlparc2.Caption := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpcob_rom.qrlpag.Caption   := fields[1].AsString;
      qrpcob_rom.qrlpag2.Caption  := fields[1].AsString;

      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpcob_rom.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpcob_rom.lanpa1.Caption  := '';
    qrpcob_rom.ladpa1.Caption  := '';
    qrpcob_rom.lavpa1.Caption  := '';
    qrpcob_rom.lanpa2.Caption  := '';
    qrpcob_rom.ladpa2.Caption  := '';
    qrpcob_rom.lavpa2.Caption  := '';
    qrpcob_rom.lanpa3.Caption  := '';
    qrpcob_rom.ladpa3.Caption  := '';
    qrpcob_rom.lavpa3.Caption  := '';
    qrpcob_rom.lanpa4.Caption  := '';
    qrpcob_rom.ladpa4.Caption  := '';
    qrpcob_rom.lavpa4.Caption  := '';
    qrpcob_rom.lanpa5.Caption  := '';
    qrpcob_rom.ladpa5.Caption  := '';
    qrpcob_rom.lavpa5.Caption  := '';
    qrpcob_rom.lanpa6.Caption  := '';
    qrpcob_rom.ladpa6.Caption  := '';
    qrpcob_rom.lavpa6.Caption  := '';
    qrpcob_rom.lanpa7.Caption  := '';
    qrpcob_rom.ladpa7.Caption  := '';
    qrpcob_rom.lavpa7.Caption  := '';
    qrpcob_rom.lanpa8.Caption  := '';
    qrpcob_rom.ladpa8.Caption  := '';
    qrpcob_rom.lavpa8.Caption  := '';
    qrpcob_rom.lanpa9.Caption  := '';
    qrpcob_rom.ladpa9.Caption  := '';
    qrpcob_rom.lavpa9.Caption  := '';
    qrpcob_rom.lanpa10.Caption := '';
    qrpcob_rom.ladpa10.Caption := '';
    qrpcob_rom.lavpa10.Caption := '';

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   NFE_TITU,NFE_DNFE,NFE_DVEN,NFE_VDUP FROM '+SLPrincipal.Values['nfe_dup']);
      SQL.Add('WHERE    NFE_CDNF = '''+qrpcob_rom.romanROM_CDNF.AsString+'''');
      SQL.Add('ORDER BY NFE_TITU');
      Open;
    end;

    if not consulta.Fields[0].IsNull then
    ROM_CAB_ROMANEIO_COBRANCA_BANCARIO else
    ROM_CAB_ROMANEIO_COBRANCA_COMBAIXA;

    qrpcob_rom.lanpa21.Caption  := qrpcob_rom.lanpa1.Caption ;
    qrpcob_rom.ladpa21.Caption  := qrpcob_rom.ladpa1.Caption ;
    qrpcob_rom.lavpa21.Caption  := qrpcob_rom.lavpa1.Caption ;
    qrpcob_rom.lanpa22.Caption  := qrpcob_rom.lanpa2.Caption ;
    qrpcob_rom.ladpa22.Caption  := qrpcob_rom.ladpa2.Caption ;
    qrpcob_rom.lavpa22.Caption  := qrpcob_rom.lavpa2.Caption ;
    qrpcob_rom.lanpa23.Caption  := qrpcob_rom.lanpa3.Caption ;
    qrpcob_rom.ladpa23.Caption  := qrpcob_rom.ladpa3.Caption ;
    qrpcob_rom.lavpa23.Caption  := qrpcob_rom.lavpa3.Caption ;
    qrpcob_rom.lanpa24.Caption  := qrpcob_rom.lanpa4.Caption ;
    qrpcob_rom.ladpa24.Caption  := qrpcob_rom.ladpa4.Caption ;
    qrpcob_rom.lavpa24.Caption  := qrpcob_rom.lavpa4.Caption ;
    qrpcob_rom.lanpa25.Caption  := qrpcob_rom.lanpa5.Caption ;
    qrpcob_rom.ladpa25.Caption  := qrpcob_rom.ladpa5.Caption ;
    qrpcob_rom.lavpa25.Caption  := qrpcob_rom.lavpa5.Caption ;
    qrpcob_rom.lanpa26.Caption  := qrpcob_rom.lanpa6.Caption ;
    qrpcob_rom.ladpa26.Caption  := qrpcob_rom.ladpa6.Caption ;
    qrpcob_rom.lavpa26.Caption  := qrpcob_rom.lavpa6.Caption ;
    qrpcob_rom.lanpa27.Caption  := qrpcob_rom.lanpa7.Caption ;
    qrpcob_rom.ladpa27.Caption  := qrpcob_rom.ladpa7.Caption ;
    qrpcob_rom.lavpa27.Caption  := qrpcob_rom.lavpa7.Caption ;
    qrpcob_rom.lanpa28.Caption  := qrpcob_rom.lanpa8.Caption ;
    qrpcob_rom.ladpa28.Caption  := qrpcob_rom.ladpa8.Caption ;
    qrpcob_rom.lavpa28.Caption  := qrpcob_rom.lavpa8.Caption ;
    qrpcob_rom.lanpa29.Caption  := qrpcob_rom.lanpa9.Caption ;
    qrpcob_rom.ladpa29.Caption  := qrpcob_rom.ladpa9.Caption ;
    qrpcob_rom.lavpa29.Caption  := qrpcob_rom.lavpa9.Caption ;
    qrpcob_rom.lanpa210.Caption := qrpcob_rom.lanpa10.Caption;
    qrpcob_rom.ladpa210.Caption := qrpcob_rom.ladpa10.Caption;
    qrpcob_rom.lavpa210.Caption := qrpcob_rom.lavpa10.Caption;

    qrpcob_rom.Prepare;
    qrpcob_rom.Preview;
  finally
    freeAndNil(qrpcob_rom);
    qrpcob_rom.Free;
  end;
end;

procedure Tfrmrec_car.ROM_CAB_ROMANEIO_COBRANCA_BANCARIO;
var
  i,p: word;
begin
  consulta.Last;
  p := consulta.recno;
  consulta.First;

  for i := 1 to p do
  begin
    case i of
        1: begin
             qrpcob_rom.lanpa1.Caption  := '01) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa1.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa1.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        2: begin
             qrpcob_rom.lanpa2.Caption  := '02) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa2.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa2.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        3: begin
             qrpcob_rom.lanpa3.Caption  := '03) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa3.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa3.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        4: begin
             qrpcob_rom.lanpa4.Caption  := '04) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa4.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa4.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        5: begin
             qrpcob_rom.lanpa5.Caption  := '05) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa5.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa5.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        6: begin
             qrpcob_rom.lanpa6.Caption  := '06) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa6.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa6.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        7: begin
             qrpcob_rom.lanpa7.Caption  := '07) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa7.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa7.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        8: begin
             qrpcob_rom.lanpa8.Caption  := '08) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa8.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa8.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        9: begin
             qrpcob_rom.lanpa9.Caption  := '09) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa9.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa9.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
       10: begin
             qrpcob_rom.lanpa10.Caption := '10) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa10.Caption := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa10.Caption := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
           end;

    end;
  end;
end;

procedure Tfrmrec_car.ROM_CAB_ROMANEIO_COBRANCA_COMBAIXA;
var
  i,p: word;
begin
  with consulta do
  begin
    SQL.Clear;
    if qrpcob_rom.romanROM_STCO.AsString = 'BANCÁRIO' then
    SQL.Add('SELECT   FIN_DOCT,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_ban_bai'])
    else
    SQL.Add('SELECT   FIN_NCHQ,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_car_bai']);
    SQL.Add('WHERE    FIN_CDBX = '''+cadastroFIN_CDBX.AsString+'''');
    SQL.Add('ORDER BY FIN_DVEN');
    Open;
  end;

  consulta.Last;
  p := consulta.recno;
  consulta.First;

  for i := 1 to p do
  begin
    case i of
        1: begin
             qrpcob_rom.lanpa1.Caption  := '01) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa1.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa1.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        2: begin
             qrpcob_rom.lanpa2.Caption  := '02) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa2.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa2.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        3: begin
             qrpcob_rom.lanpa3.Caption  := '03) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa3.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa3.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        4: begin
             qrpcob_rom.lanpa4.Caption  := '04) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa4.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa4.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        5: begin
             qrpcob_rom.lanpa5.Caption  := '05) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa5.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa5.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        6: begin
             qrpcob_rom.lanpa6.Caption  := '06) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa6.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa6.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        7: begin
             qrpcob_rom.lanpa7.Caption  := '07) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa7.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa7.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        8: begin
             qrpcob_rom.lanpa8.Caption  := '08) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa8.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa8.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        9: begin
             qrpcob_rom.lanpa9.Caption  := '09) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa9.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa9.Caption  := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
       10: begin
             qrpcob_rom.lanpa10.Caption := '10) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa10.Caption := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa10.Caption := formatFloat('R$ #,0.00########',consulta.Fields[3].AsFloat);
           end;

    end;
  end;
end;

procedure Tfrmrec_car.cadastroCalcFields(DataSet: TDataSet);
begin
  if cadastroFIN_CDRD.AsInteger > 0 then
  begin
    if Pos('DEVOLU',cadastroFIN_TIPO.Value) > 0 then
    cadastroFIN_DEVO.Value := 'Pedido de Venda No. '+cadastroFIN_DERD.AsString else
    cadastroFIN_DEVO.Value := 'Devolução No. '      +cadastroFIN_DERD.AsString;
  end;
end;

end.

