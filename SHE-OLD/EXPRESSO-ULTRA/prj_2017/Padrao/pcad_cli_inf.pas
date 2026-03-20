unit pcad_cli_inf;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, StdCtrls, math, StrUtils,
  dxPageControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TeEngine, Series,
  TeeProcs, Chart, DbChart, dxDBTLCl, dxGrClms, DateUtils, dxEditor,
  dxExEdtr, dxEdLib, Buttons, dxDBELib, rxSpeedbar, IBEvents, IBSQL;

type
  Tfrmcad_cli_inf = class(Tfrmpadr3)
    dtsven_ped: TDataSource;
    ven_ped: TIBQuery;
    pnlpri: TPanel;
    pnlbot: TPanel;
    gbinfo: TGroupBox;
    Panel1: TPanel;
    pcinfr: TdxPageControl;
    tsVEN: TdxTabSheet;
    tSHEILD: TIBTransaction;
    ven_pro: TIBQuery;
    dtsven_pro: TDataSource;
    ven_proID: TIntegerField;
    ven_proROM_CCAB: TIntegerField;
    ven_proROM_CDOC: TIntegerField;
    ven_proROM_CDPR: TIntegerField;
    ven_proROM_CDPD: TIntegerField;
    ven_proROM_CDRO: TIntegerField;
    ven_proROM_CDRD: TIntegerField;
    ven_proROM_CDNF: TIntegerField;
    ven_proROM_ITEM: TIBStringField;
    ven_proROM_CPRO: TIntegerField;
    ven_proROM_CPR2: TIntegerField;
    ven_proROM_CDET: TIBStringField;
    ven_proROM_QTDE: TIBBCDField;
    ven_proROM_QTRL: TIntegerField;
    ven_proROM_QTSP: TIBBCDField;
    ven_proROM_RLSP: TIntegerField;
    ven_proROM_QTPD: TIBBCDField;
    ven_proROM_RLPD: TIntegerField;
    ven_proROM_VDSC: TIBBCDField;
    ven_proROM_TOTA: TIBBCDField;
    ven_proROM_FLAG: TIBStringField;
    ven_proROM_COMI: TIBBCDField;
    ven_proID1: TIntegerField;
    ven_proPRO_CART: TIBStringField;
    ven_proPRO_CPRO: TIBStringField;
    ven_proPRO_CCOR: TIntegerField;
    ven_proPRO_RCOR: TIBStringField;
    ven_proPRO_DCOR: TIBStringField;
    ven_proPRO_DPRO: TIBStringField;
    ven_proPRO_DUNI: TIBStringField;
    ven_proPRO_PIPI: TSmallintField;
    ven_proPRO_CBAR: TIBStringField;
    ven_proPRO_CEMB: TIntegerField;
    ven_proPRO_GRAD: TIBStringField;
    ven_proPRO_FOTO: TBlobField;
    ven_proROM_DERO: TIBStringField;
    ven_proROM_DROM: TDateField;
    ImageList1: TImageList;
    cad_cli_ref: TIBQuery;
    dtscad_cli_ref: TDataSource;
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
    ven_proROM_DPRO: TIBStringField;
    ven_proPRO_REPR: TIBStringField;
    ven_proPRO_APRO: TMemoField;
    cad_cli_inf: TIBDataSet;
    dtscad_cli_inf: TDataSource;
    consulta_s: TIBQuery;
    cad_cli_infID: TIntegerField;
    cad_cli_infCLI_DESC: TIBStringField;
    cad_cli_infCLI_ME01: TIBBCDField;
    cad_cli_infCLI_QT01: TSmallintField;
    cad_cli_infCLI_ME02: TIBBCDField;
    cad_cli_infCLI_QT02: TSmallintField;
    cad_cli_infCLI_ME03: TIBBCDField;
    cad_cli_infCLI_QT03: TSmallintField;
    cad_cli_infCLI_ME04: TIBBCDField;
    cad_cli_infCLI_QT04: TSmallintField;
    cad_cli_infCLI_ME05: TIBBCDField;
    cad_cli_infCLI_QT05: TSmallintField;
    cad_cli_infCLI_ME06: TIBBCDField;
    cad_cli_infCLI_QT06: TSmallintField;
    cad_cli_infCLI_ME07: TIBBCDField;
    cad_cli_infCLI_QT07: TSmallintField;
    cad_cli_infCLI_ME08: TIBBCDField;
    cad_cli_infCLI_QT08: TSmallintField;
    cad_cli_infCLI_ME09: TIBBCDField;
    cad_cli_infCLI_QT09: TSmallintField;
    cad_cli_infCLI_ME10: TIBBCDField;
    cad_cli_infCLI_QT10: TSmallintField;
    cad_cli_infCLI_ME11: TIBBCDField;
    cad_cli_infCLI_QT11: TSmallintField;
    cad_cli_infCLI_ME12: TIBBCDField;
    cad_cli_infCLI_QT12: TSmallintField;
    cad_cli_infCLI_DES1: TStringField;
    cad_cli_infCLI_DES2: TStringField;
    cad_cli_infCLI_DES3: TStringField;
    cad_cli_infCLI_DES4: TStringField;
    cad_cli_infCLI_DES5: TStringField;
    cad_cli_infCLI_DES6: TStringField;
    cad_cli_infCLI_DES7: TStringField;
    cad_cli_infCLI_DES8: TStringField;
    cad_cli_infCLI_DES9: TStringField;
    cad_cli_infCLI_DE10: TStringField;
    cad_cli_infCLI_DE11: TStringField;
    cad_cli_infCLI_DE12: TStringField;
    ven_proROM_TPRC: TIBStringField;
    ven_proROM_ABCD: TIBStringField;
    ven_proROM_DCOR: TIBStringField;
    ven_proROM_PCOR: TIBStringField;
    ven_prc: TIBQuery;
    dtsven_prc: TDataSource;
    ven_prcPRO_CART: TIBStringField;
    tsNFS: TdxTabSheet;
    nfe_cab: TIBQuery;
    dtsnfe_cab: TDataSource;
    nfe_cabNFE_CDNF: TIntegerField;
    nfe_cabNFE_DEMI: TDateField;
    nfe_cabNFE_CFOP: TIBStringField;
    nfe_cabNAT_DNAT: TIBStringField;
    nfe_cabNAT_TIPO: TIBStringField;
    nfe_cabNFE_DFAV: TIBStringField;
    nfe_cabNFE_DVEN: TIBStringField;
    nfe_cabNFE_DREP: TIBStringField;
    nfe_cabSUM: TIBBCDField;
    nfe_cabNFE_DTRA: TIBStringField;
    nfe_cabCOUNT: TIntegerField;
    nfe_ite: TIBQuery;
    dtsnfe_ite: TDataSource;
    nfe_iteID: TIntegerField;
    nfe_iteNFE_ITEMPED: TIBStringField;
    nfe_iteNFE_CPROD: TIBStringField;
    nfe_iteNFE_XPROD: TIBStringField;
    nfe_iteNFE_UCOM: TIBStringField;
    nfe_iteNFE_QCOM: TIBBCDField;
    nfe_iteNFE_VPROD: TIBBCDField;
    nfe_iteNFE_VNF: TIBBCDField;
    Panel7: TPanel;
    pcnfe: TdxPageControl;
    tsNFE: TdxTabSheet;
    Panel9: TPanel;
    dbgnfs_nfe: TdxDBGrid;
    dbgnfs_nfeNFE_CDNF: TdxDBGridMaskColumn;
    dbgnfs_nfeNFE_DEMI: TdxDBGridDateColumn;
    dbgnfs_nfeNFE_CFOP: TdxDBGridMaskColumn;
    dbgnfs_nfeNAT_TIPO: TdxDBGridMaskColumn;
    dbgnfs_nfeNFE_DVEN: TdxDBGridMaskColumn;
    dbgnfs_nfeNFE_DREP: TdxDBGridMaskColumn;
    dbgnfs_nfeNFE_DTRA: TdxDBGridMaskColumn;
    dbgnfs_nfeCOUNT: TdxDBGridMaskColumn;
    dbgnfs_nfeSUM: TdxDBGridMaskColumn;
    tsNFC: TdxTabSheet;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2NFE_CDNF: TdxDBGridMaskColumn;
    dxDBGrid2NFE_DEMI: TdxDBGridDateColumn;
    dxDBGrid2NFE_CFOP: TdxDBGridMaskColumn;
    dxDBGrid2NAT_TIPO: TdxDBGridMaskColumn;
    dxDBGrid2NFE_DFAV: TdxDBGridMaskColumn;
    dxDBGrid2NFE_DVEN: TdxDBGridMaskColumn;
    dxDBGrid2NFE_DREP: TdxDBGridMaskColumn;
    dxDBGrid2NFE_DTRA: TdxDBGridMaskColumn;
    dxDBGrid2COUNT: TdxDBGridMaskColumn;
    dxDBGrid2SUM: TdxDBGridMaskColumn;
    tsNFD: TdxTabSheet;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid3NFE_CDNF: TdxDBGridMaskColumn;
    dxDBGrid3NFE_DEMI: TdxDBGridDateColumn;
    dxDBGrid3NFE_CFOP: TdxDBGridMaskColumn;
    dxDBGrid3NAT_TIPO: TdxDBGridMaskColumn;
    dxDBGrid3NFE_DFAV: TdxDBGridMaskColumn;
    dxDBGrid3NFE_DVEN: TdxDBGridMaskColumn;
    dxDBGrid3NFE_DREP: TdxDBGridMaskColumn;
    dxDBGrid3NFE_DTRA: TdxDBGridMaskColumn;
    dxDBGrid3COUNT: TdxDBGridMaskColumn;
    dxDBGrid3SUM: TdxDBGridMaskColumn;
    pcmain: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    dbgite: TdxDBGrid;
    dbgiteNFE_ITEMPED: TdxDBGridMaskColumn;
    dbgiteNFE_CPROD: TdxDBGridMaskColumn;
    dbgiteNFE_UCOM: TdxDBGridMaskColumn;
    dbgiteNFE_XPROD: TdxDBGridMaskColumn;
    dbgiteNFE_QCOM: TdxDBGridMaskColumn;
    dbgiteNFE_VUNCOM: TdxDBGridMaskColumn;
    dbgiteNFE_VPROD: TdxDBGridMaskColumn;
    dbgiteNFE_VNF: TdxDBGridMaskColumn;
    pcped: TdxPageControl;
    tsPED: TdxTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    dbgven_ped: TdxDBGrid;
    dbgven_pedROM_DERO: TdxDBGridMaskColumn;
    dbgven_pedROM_DROM: TdxDBGridDateColumn;
    dbgven_pedROM_CDNF: TdxDBGridMaskColumn;
    dbgven_pedROM_STPD: TdxDBGridMaskColumn;
    dbgven_pedROM_STCO: TdxDBGridMaskColumn;
    dbgven_pedROM_STFI: TdxDBGridMaskColumn;
    dbgven_pedREP_FANT: TdxDBGridMaskColumn;
    GroupBox3: TGroupBox;
    dbgper: TdxDBGrid;
    dbgperCLI_DESC: TdxDBGridMaskColumn;
    dbgperCLI_DES1: TdxDBGridColumn;
    dbgperCLI_DES2: TdxDBGridColumn;
    dbgperCLI_DES3: TdxDBGridColumn;
    dbgperCLI_DES4: TdxDBGridColumn;
    dbgperCLI_DES5: TdxDBGridColumn;
    dbgperCLI_DES6: TdxDBGridColumn;
    dbgperCLI_DES7: TdxDBGridColumn;
    dbgperCLI_DES8: TdxDBGridColumn;
    dbgperCLI_DES9: TdxDBGridColumn;
    dbgperCLI_DE10: TdxDBGridColumn;
    dbgperCLI_DE11: TdxDBGridColumn;
    dbgperCLI_DE12: TdxDBGridColumn;
    gbref: TGroupBox;
    dbgcad_cli_ref: TdxDBGrid;
    dbgcad_cli_refCLI_LOJA: TdxDBGridMaskColumn;
    dbgcad_cli_refCLI_DDD: TdxDBGridMaskColumn;
    dbgcad_cli_refCLI_TEL1: TdxDBGridMaskColumn;
    dbgcad_cli_refCLI_TEL2: TdxDBGridMaskColumn;
    dbgcad_cli_refCLI_CONT: TdxDBGridMaskColumn;
    dbgcad_cli_refCLI_DCAD: TdxDBGridDateColumn;
    dbgcad_cli_refCLI_DULT: TdxDBGridDateColumn;
    dbgcad_cli_refCLI_DMAI: TdxDBGridDateColumn;
    dbgcad_cli_refCLI_VULT: TdxDBGridMaskColumn;
    dbgcad_cli_refCLI_VMAI: TdxDBGridMaskColumn;
    dbgcad_cli_refCLI_ACUM: TdxDBGridMaskColumn;
    dbgcad_cli_refCLI_DPAG: TdxDBGridMaskColumn;
    dbgcad_cli_refCLI_CONC: TdxDBGridMaskColumn;
    dbgcad_cli_refCLI_OBSE: TdxDBGridMemoColumn;
    tsPRO: TdxTabSheet;
    dbgven_pedUSU_DUSU: TdxDBGridMaskColumn;
    ven_001: TIBQuery;
    ven_001ROM_DERO: TIBStringField;
    ven_001ROM_DROM: TDateField;
    ven_001ROM_QTVE: TIBBCDField;
    ven_001ROM_TCDE: TIBBCDField;
    ven_002: TIBQuery;
    ven_002ROM_DERO: TIBStringField;
    ven_002ROM_DROM: TDateField;
    ven_002ROM_QTVE: TIBBCDField;
    ven_002ROM_TCDE: TIBBCDField;
    tab_pag: TIBQuery;
    tab_pagPAG_PRAZ: TLargeintField;
    dbgven_pedPAG_DPAG: TdxDBGridMaskColumn;
    pcPRO: TdxPageControl;
    tsITE: TdxTabSheet;
    Panel2: TPanel;
    dbgven_pro: TdxDBGrid;
    dbgven_proROM_DROM: TdxDBGridDateColumn;
    dbgven_proPRO_CPRO: TdxDBGridMaskColumn;
    dbgven_proPRO_DCOR: TdxDBGridMaskColumn;
    dbgven_proPRO_DPRO: TdxDBGridMaskColumn;
    dbgven_proROM_QTDE: TdxDBGridMaskColumn;
    dbgven_proROM_UNIT: TdxDBGridMaskColumn;
    dbgven_proROM_TOTA: TdxDBGridMaskColumn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    sbPRO: TSpeedButton;
    dxDT1: TdxDateEdit;
    dxDT2: TdxDateEdit;
    tsPRV: TdxTabSheet;
    dbgven_prc: TdxDBGrid;
    dbgven_prcPRO_CART: TdxDBGridMaskColumn;
    dbgven_prcPRO_PREC: TdxDBGridMaskColumn;
    dbgven_prcAVG: TdxDBGridMaskColumn;
    siFCO: TSpeedItem;
    aux: TIBQuery;
    tsPRC: TdxTabSheet;
    dxDBGrid1: TdxDBGrid;
    cad_cli_prc: TIBQuery;
    dtscad_cli_prc: TDataSource;
    cad_cli_prcID: TIntegerField;
    cad_cli_prcCLI_CCLI: TIntegerField;
    cad_cli_prcCLI_DCAD: TDateField;
    cad_cli_prcCLI_MANO: TIBStringField;
    cad_cli_prcCLI_CPRO: TIBStringField;
    cad_cli_prcCLI_DPRO: TIBStringField;
    cad_cli_prcCLI_DPAG: TIBStringField;
    dxDBGrid1CLI_DCAD: TdxDBGridDateColumn;
    dxDBGrid1CLI_MANO: TdxDBGridMaskColumn;
    dxDBGrid1CLI_CPRO: TdxDBGridMaskColumn;
    dxDBGrid1CLI_DPRO: TdxDBGridMaskColumn;
    dxDBGrid1CLI_PREC: TdxDBGridMaskColumn;
    dxDBGrid1CLI_DPAG: TdxDBGridMaskColumn;
    ven_prcUSU_DUSU: TIBStringField;
    dbgven_prcUSU_DUSU: TdxDBGridMaskColumn;
    nfe_iteNFE_VUNCOM: TFloatField;
    ven_proROM_UNIT: TFloatField;
    ven_proROM_PREC: TFloatField;
    ven_proROM_DCO2: TIBStringField;
    ven_proROM_PCO2: TIBStringField;
    ven_proPRO_PPRO: TFloatField;
    ven_prcPRO_PREC: TFloatField;
    ven_prcAVG: TFloatField;
    cad_cli_prcCLI_PREC: TFloatField;
    Panel5: TPanel;
    GroupBox7: TGroupBox;
    Label27: TLabel;
    lavmai: TLabel;
    Label29: TLabel;
    lanmai: TLabel;
    Label31: TLabel;
    ladmai: TLabel;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    lavmen: TLabel;
    Label10: TLabel;
    lanmen: TLabel;
    Label12: TLabel;
    ladmen: TLabel;
    GroupBox5: TGroupBox;
    Label15: TLabel;
    lavult: TLabel;
    Label17: TLabel;
    lanult: TLabel;
    Label19: TLabel;
    ladult: TLabel;
    GroupBox6: TGroupBox;
    Label21: TLabel;
    lavpri: TLabel;
    Label23: TLabel;
    lanpri: TLabel;
    Label25: TLabel;
    ladpri: TLabel;
    ven_pedID: TIntegerField;
    ven_pedROM_DERO: TIBStringField;
    ven_pedROM_DROM: TDateField;
    ven_pedROM_CDNF: TIntegerField;
    ven_pedROM_DNFS: TDateField;
    ven_pedROM_CDBX: TIntegerField;
    ven_pedROM_DBAI: TDateField;
    ven_pedROM_CVEN: TIntegerField;
    ven_pedUSU_DUSU: TIBStringField;
    ven_pedROM_CREP: TIntegerField;
    ven_pedREP_FANT: TIBStringField;
    ven_pedROM_TCDE: TIBBCDField;
    ven_pedROM_STPD: TIBStringField;
    ven_pedROM_STCO: TIBStringField;
    ven_pedROM_CONC: TSmallintField;
    ven_pedROM_CPAG: TIntegerField;
    ven_pedPAG_DPAG: TIBStringField;
    ven_pedROM_STFI: TIBStringField;
    dbgven_pedROM_DNFS: TdxDBGridDateColumn;
    dbgven_pedROM_CONC: TdxDBGridMaskColumn;
    ven_pedROM_TSDE: TIBBCDField;
    dbgven_pedROM_TSDE: TdxDBGridMaskColumn;
    dbgven_pedROM_TCDE: TdxDBGridMaskColumn;
    dbgven_pedROM_CDBX: TdxDBGridMaskColumn;
    ven_pedROM_CTRA: TIntegerField;
    ven_pedROM_DTRA: TIBStringField;
    dbgven_pedROM_DTRA: TdxDBGridMaskColumn;
    procedure cad_cli_infNewRecord(DataSet: TDataSet);
    procedure cad_cli_infCalcFields(DataSet: TDataSet);
    procedure tsPROShow(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbPROClick(Sender: TObject);
    procedure tsNFEShow(Sender: TObject);
    procedure tsNFCShow(Sender: TObject);
    procedure tsNFDShow(Sender: TObject);
    procedure siPSQClick(Sender: TObject);
    procedure nfe_cabAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dbgven_pedCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure tsPRVShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ven_pedBeforeOpen(DataSet: TDataSet);
    procedure ven_pedAfterScroll(DataSet: TDataSet);
    procedure dtscad_cli_infDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure PESQUISA_INFORMACAO_COMERCIAL;
    procedure PESQUISA_PRODUTO(BData: boolean);
    procedure PESQUISA_PRECO;
    procedure PESQUISA_NOTA_FISCAL(sta: string);
  public
    { Public declarations }
    NewString: string;
  end;

var
  frmcad_cli_inf: Tfrmcad_cli_inf;

implementation

uses uprincipal, ppesquisa;

{$R *.dfm}

procedure Tfrmcad_cli_inf.PESQUISA_NOTA_FISCAL(sta: string);
begin
  with nfe_cab do
  begin
    SQL.Clear;
    SQL.Add('SELECT   NFE_CAB.NFE_CDNF,NFE_DEMI,NFE_CFOP,NAT_DNAT,NAT_TIPO,NFE_DFAV,NFE_DVEN,NFE_DREP,NFE_DTRA,COUNT(NFE_ITE.ID),SUM(NFE_ITE.NFE_VNF)');
    SQL.Add('FROM     TAB_NAT,NFE_CAB "NFE_CAB",NFE_ITE "NFE_ITE"');
    SQL.Add('WHERE    NFE_CAB.ID       = NFE_ITE.NFE_CCAB');
    SQL.Add('AND      NFE_ITE.NFE_CFOP = TAB_NAT.NAT_CNAT');
    SQL.Add('AND      NFE_CAB.NFE_STA  = '''+sta+'''');
    SQL.Add('AND      NFE_CAB.NFE_CFAV = '''+inttostr(gbinfo.Tag)+'''');
    SQL.Add('GROUP BY NFE_CAB.NFE_CDNF,NFE_DEMI,NFE_CFOP,NAT_DNAT,NAT_TIPO,NFE_DFAV,NFE_DVEN,NFE_DREP,NFE_DTRA');
    SQL.Add('UNION');
    SQL.Add('SELECT   NFE_CAB.NFE_CDNF,NFE_DEMI,NFE_CFOP,NAT_DNAT,NAT_TIPO,NFE_DFAV,NFE_DVEN,NFE_DREP,NFE_DTRA,COUNT(NFE_ITE.ID),SUM(NFE_ITE.NFE_VNF)');
    SQL.Add('FROM     TAB_NAT,NFE_CAB_002 "NFE_CAB",NFE_ITE_002 "NFE_ITE"');
    SQL.Add('WHERE    NFE_CAB.ID       = NFE_ITE.NFE_CCAB');
    SQL.Add('AND      NFE_ITE.NFE_CFOP = TAB_NAT.NAT_CNAT');
    SQL.Add('AND      NFE_CAB.NFE_STA  = '''+sta+'''');
    SQL.Add('AND      NFE_CAB.NFE_CFAV = '''+inttostr(gbinfo.Tag)+'''');
    SQL.Add('GROUP BY NFE_CAB.NFE_CDNF,NFE_DEMI,NFE_CFOP,NAT_DNAT,NAT_TIPO,NFE_DFAV,NFE_DVEN,NFE_DREP,NFE_DTRA');
    SQL.Add('UNION');
    SQL.Add('SELECT   NFE_CAB.NFE_CDNF,NFE_DEMI,NFE_CFOP,NAT_DNAT,NAT_TIPO,NFE_DFAV,NFE_DVEN,NFE_DREP,NFE_DTRA,COUNT(NFE_ITE.ID),SUM(NFE_ITE.NFE_VNF)');
    SQL.Add('FROM     TAB_NAT,NFE_CAB_003 "NFE_CAB",NFE_ITE_003 "NFE_ITE"');
    SQL.Add('WHERE    NFE_CAB.ID       = NFE_ITE.NFE_CCAB');
    SQL.Add('AND      NFE_ITE.NFE_CFOP = TAB_NAT.NAT_CNAT');
    SQL.Add('AND      NFE_CAB.NFE_STA  = '''+sta+'''');
    SQL.Add('AND      NFE_CAB.NFE_CFAV = '''+inttostr(gbinfo.Tag)+'''');
    SQL.Add('GROUP BY NFE_CAB.NFE_CDNF,NFE_DEMI,NFE_CFOP,NAT_DNAT,NAT_TIPO,NFE_DFAV,NFE_DVEN,NFE_DREP,NFE_DTRA');
    SQL.Add('UNION');
    SQL.Add('SELECT   NFE_CAB.NFE_CDNF,NFE_DEMI,NFE_CFOP,NAT_DNAT,NAT_TIPO,NFE_DFAV,NFE_DVEN,NFE_DREP,NFE_DTRA,COUNT(NFE_ITE.ID),SUM(NFE_ITE.NFE_VNF)');
    SQL.Add('FROM     TAB_NAT,NFE_CAB_004 "NFE_CAB",NFE_ITE_004 "NFE_ITE"');
    SQL.Add('WHERE    NFE_CAB.ID       = NFE_ITE.NFE_CCAB');
    SQL.Add('AND      NFE_ITE.NFE_CFOP = TAB_NAT.NAT_CNAT');
    SQL.Add('AND      NFE_CAB.NFE_STA  = '''+sta+'''');
    SQL.Add('AND      NFE_CAB.NFE_CFAV = '''+inttostr(gbinfo.Tag)+'''');
    SQL.Add('GROUP BY NFE_CAB.NFE_CDNF,NFE_DEMI,NFE_CFOP,NAT_DNAT,NAT_TIPO,NFE_DFAV,NFE_DVEN,NFE_DREP,NFE_DTRA');
    SQL.Add('UNION');
    SQL.Add('SELECT   NFE_CAB.NFE_CDNF,NFE_DEMI,NFE_CFOP,NAT_DNAT,NAT_TIPO,NFE_DFAV,NFE_DVEN,NFE_DREP,NFE_DTRA,COUNT(NFE_ITE.ID),SUM(NFE_ITE.NFE_VNF)');
    SQL.Add('FROM     TAB_NAT,NFE_CAB_005 "NFE_CAB",NFE_ITE_005 "NFE_ITE"');
    SQL.Add('WHERE    NFE_CAB.ID       = NFE_ITE.NFE_CCAB');
    SQL.Add('AND      NFE_ITE.NFE_CFOP = TAB_NAT.NAT_CNAT');
    SQL.Add('AND      NFE_CAB.NFE_STA  = '''+sta+'''');
    SQL.Add('AND      NFE_CAB.NFE_CFAV = '''+inttostr(gbinfo.Tag)+'''');
    SQL.Add('GROUP BY NFE_CAB.NFE_CDNF,NFE_DEMI,NFE_CFOP,NAT_DNAT,NAT_TIPO,NFE_DFAV,NFE_DVEN,NFE_DREP,NFE_DTRA');
    SQL.Add('UNION');
    SQL.Add('SELECT   NFE_CAB.NFE_CDNF,NFE_DEMI,NFE_CFOP,NAT_DNAT,NAT_TIPO,NFE_DFAV,NFE_DVEN,NFE_DREP,NFE_DTRA,COUNT(NFE_ITE.ID),SUM(NFE_ITE.NFE_VNF)');
    SQL.Add('FROM     TAB_NAT,NFE_CAB_006 "NFE_CAB",NFE_ITE_006 "NFE_ITE"');
    SQL.Add('WHERE    NFE_CAB.ID       = NFE_ITE.NFE_CCAB');
    SQL.Add('AND      NFE_ITE.NFE_CFOP = TAB_NAT.NAT_CNAT');
    SQL.Add('AND      NFE_CAB.NFE_STA  = '''+sta+'''');
    SQL.Add('AND      NFE_CAB.NFE_CFAV = '''+inttostr(gbinfo.Tag)+'''');
    SQL.Add('GROUP BY NFE_CAB.NFE_CDNF,NFE_DEMI,NFE_CFOP,NAT_DNAT,NAT_TIPO,NFE_DFAV,NFE_DVEN,NFE_DREP,NFE_DTRA');
    SQL.Add('ORDER BY 1 DESC');
    Open;
  end;
end;

procedure Tfrmcad_cli_inf.PESQUISA_PRECO;
begin
  try
    with ven_prc do
    begin
      SQL.Clear;
      SQL.Add('SELECT    USU_DUSU,CAD_PRO.PRO_CART,CAD_PRO.PRO_PREC,AVG(ROM_UNIT)');
      SQL.Add('FROM      CAD_PRO,CAD_PRO_IMG,CAD_USU,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE" ,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE     PED_VEN_CAB.ID       = PED_VEN_ITE.ROM_CCAB');
      SQL.Add('AND       PED_VEN_CAB.ROM_CDBX > 0');
      SQL.Add('AND       PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND       PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND       CAD_PRO.PRO_CART     = CAD_PRO_IMG.PRO_CART');
      SQL.Add('AND       PED_VEN_CAB.ROM_CCLI = '''+inttostr(gbinfo.Tag)+'''');
      SQL.Add('GROUP BY  USU_DUSU,CAD_PRO.PRO_CART,CAD_PRO.PRO_PREC');
      SQL.Add('ORDER BY  USU_DUSU,CAD_PRO.PRO_CART');
      Open;
    end;
  finally
  end;
end;

procedure Tfrmcad_cli_inf.PESQUISA_PRODUTO(BData: boolean);
begin
  try
    with ven_pro do
    begin
      SQL.Clear;
      SQL.Add('SELECT    PED_VEN_CAB.ROM_DERO,PED_VEN_CAB.ROM_DROM,PED_VEN_ITE.*,CAD_PRO.ID,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_CCOR,');
      SQL.Add('          CAD_PRO.PRO_RCOR,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DPRO,CAD_PRO.PRO_DUNI,CAD_PRO.PRO_PIPI,CAD_PRO.PRO_REPR,CAD_PRO.PRO_APRO,');
      SQL.Add('          CAD_PRO.PRO_CBAR,CAD_PRO.PRO_PPRO,CAD_PRO.PRO_CEMB,CAD_PRO.PRO_GRAD,CAD_PRO_IMG.PRO_FOTO');
      SQL.Add('FROM      CAD_PRO,CAD_PRO_IMG,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE" ,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE     PED_VEN_CAB.ID       = PED_VEN_ITE.ROM_CCAB');
      SQL.Add('AND       PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND       CAD_PRO.PRO_CART     = CAD_PRO_IMG.PRO_CART');
      SQL.Add('AND       PED_VEN_CAB.ROM_CCLI = '''+inttostr(gbinfo.Tag)+'''');
      if BData then
      SQL.Add('AND       ROM_DROM BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');
      SQL.Add('ORDER  BY CAD_PRO.PRO_CPRO');
      Open;
    end;
  finally
  end;
end;

procedure Tfrmcad_cli_inf.PESQUISA_INFORMACAO_COMERCIAL;
begin
  with cad_cli_inf do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM CAD_CLI_INF');
    ExecSQL;

    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_CLI_INF');
    Open;
  end;

  dbgperCLI_DES1.Caption := copy(oRETMesExtenso(IncMonth(Date,-11)),1,3)+'/'+oStrZero(YearOf(IncMonth(Date,-11)),4);
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ROM_STCO,SUM(ROM_TCDE),COUNT(*) FROM '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    ROM_CCLI = '''+inttostr(gbinfo.Tag)+'''');
    SQL.Add('AND      ROM_DROM BETWEEN '''+formatDateTime('mm/dd/yy',StartOfTheMonth(IncMonth(Date,-11)))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(IncMonth(Date,-11)))+'''');
    SQL.Add('AND      ROM_CDBX > 0');
    SQL.Add('GROUP BY ROM_STCO');
    Open;
  end;

  while not consulta.Eof do
  begin
    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_CLI_INF');
      SQL.Add('WHERE  CLI_DESC = '''+consulta.Fields[0].AsString+'''');
      Open;
    end;

    if consulta_S.Fields[0].IsNull then
    cad_cli_inf.Append else
    cad_cli_inf.Edit;

    cad_cli_infCLI_DESC.Value := consulta.Fields[0].AsString;
    cad_cli_infCLI_ME01.Value := consulta.Fields[1].AsFloat;
    cad_cli_infCLI_QT01.Value := consulta.Fields[2].AsInteger;
    cad_cli_inf.Post;

    consulta.Next;
  end;
  tSHEILD.CommitRetaining;
  
  dbgperCLI_DES2.Caption := copy(oRETMesExtenso(IncMonth(Date,-10)),1,3)+'/'+oStrZero(YearOf(IncMonth(Date,-10)),4);
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ROM_STCO,SUM(ROM_TCDE),COUNT(*) FROM '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    ROM_CCLI = '''+inttostr(gbinfo.Tag)+'''');
    SQL.Add('AND      ROM_DROM BETWEEN '''+formatDateTime('mm/dd/yy',StartOfTheMonth(IncMonth(Date,-10)))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(IncMonth(Date,-10)))+'''');
    SQL.Add('AND      ROM_CDBX > 0');
    SQL.Add('GROUP BY ROM_STCO');
    Open;
  end;

  while not consulta.Eof do
  begin
    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_CLI_INF');
      SQL.Add('WHERE  CLI_DESC = '''+consulta.Fields[0].AsString+'''');
      Open;
    end;

    if consulta_S.Fields[0].IsNull then
    cad_cli_inf.Append else
    cad_cli_inf.Edit;

    cad_cli_infCLI_DESC.Value := consulta.Fields[0].AsString;
    cad_cli_infCLI_ME02.Value := cad_cli_infCLI_ME02.AsFloat   + consulta.Fields[1].AsFloat;
    cad_cli_infCLI_QT02.Value := cad_cli_infCLI_QT02.AsInteger + consulta.Fields[2].AsInteger;
    cad_cli_inf.Post;

    consulta.Next;
  end;
  tSHEILD.CommitRetaining;

  dbgperCLI_DES3.Caption := copy(oRETMesExtenso(IncMonth(Date,-09)),1,3)+'/'+oStrZero(YearOf(IncMonth(Date,-09)),4);
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ROM_STCO,SUM(ROM_TCDE),COUNT(*) FROM '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    ROM_CCLI = '''+inttostr(gbinfo.Tag)+'''');
    SQL.Add('AND      ROM_DROM BETWEEN '''+formatDateTime('mm/dd/yy',StartOfTheMonth(IncMonth(Date,-09)))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(IncMonth(Date,-09)))+'''');
    SQL.Add('AND      ROM_CDBX > 0');
    SQL.Add('GROUP BY ROM_STCO');
    Open;
  end;

  while not consulta.Eof do
  begin
    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_CLI_INF');
      SQL.Add('WHERE  CLI_DESC = '''+consulta.Fields[0].AsString+'''');
      Open;
    end;

    if consulta_S.Fields[0].IsNull then
    cad_cli_inf.Append else
    cad_cli_inf.Edit;

    cad_cli_infCLI_DESC.Value := consulta.Fields[0].AsString;
    cad_cli_infCLI_ME03.Value := cad_cli_infCLI_ME03.AsFloat   + consulta.Fields[1].AsFloat;
    cad_cli_infCLI_QT03.Value := cad_cli_infCLI_QT03.AsInteger + consulta.Fields[2].AsInteger;
    cad_cli_inf.Post;

    consulta.Next;
  end;
  tSHEILD.CommitRetaining;

  dbgperCLI_DES4.Caption := copy(oRETMesExtenso(IncMonth(Date,-08)),1,3)+'/'+oStrZero(YearOf(IncMonth(Date,-08)),4);
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ROM_STCO,SUM(ROM_TCDE),COUNT(*) FROM '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    ROM_CCLI = '''+inttostr(gbinfo.Tag)+'''');
    SQL.Add('AND      ROM_DROM BETWEEN '''+formatDateTime('mm/dd/yy',StartOfTheMonth(IncMonth(Date,-08)))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(IncMonth(Date,-08)))+'''');
    SQL.Add('AND      ROM_CDBX > 0');
    SQL.Add('GROUP BY ROM_STCO');
    Open;
  end;

  while not consulta.Eof do
  begin
    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_CLI_INF');
      SQL.Add('WHERE  CLI_DESC = '''+consulta.Fields[0].AsString+'''');
      Open;
    end;

    if consulta_S.Fields[0].IsNull then
    cad_cli_inf.Append else
    cad_cli_inf.Edit;

    cad_cli_infCLI_DESC.Value := consulta.Fields[0].AsString;
    cad_cli_infCLI_ME04.Value := cad_cli_infCLI_ME04.AsFloat   + consulta.Fields[1].AsFloat;
    cad_cli_infCLI_QT04.Value := cad_cli_infCLI_QT04.AsInteger + consulta.Fields[2].AsInteger;
    cad_cli_inf.Post;

    consulta.Next;
  end;
  tSHEILD.CommitRetaining;

  dbgperCLI_DES5.Caption := copy(oRETMesExtenso(IncMonth(Date,-07)),1,3)+'/'+oStrZero(YearOf(IncMonth(Date,-07)),4);
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ROM_STCO,SUM(ROM_TCDE),COUNT(*) FROM '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    ROM_CCLI = '''+inttostr(gbinfo.Tag)+'''');
    SQL.Add('AND      ROM_DROM BETWEEN '''+formatDateTime('mm/dd/yy',StartOfTheMonth(IncMonth(Date,-07)))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(IncMonth(Date,-07)))+'''');
    SQL.Add('AND      ROM_CDBX > 0');
    SQL.Add('GROUP BY ROM_STCO');
    Open;
  end;

  while not consulta.Eof do
  begin
    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_CLI_INF');
      SQL.Add('WHERE  CLI_DESC = '''+consulta.Fields[0].AsString+'''');
      Open;
    end;

    if consulta_S.Fields[0].IsNull then
    cad_cli_inf.Append else
    cad_cli_inf.Edit;

    cad_cli_infCLI_DESC.Value := consulta.Fields[0].AsString;
    cad_cli_infCLI_ME05.Value := cad_cli_infCLI_ME05.AsFloat   + consulta.Fields[1].AsFloat;
    cad_cli_infCLI_QT05.Value := cad_cli_infCLI_QT05.AsInteger + consulta.Fields[2].AsInteger;
    cad_cli_inf.Post;

    consulta.Next;
  end;
  tSHEILD.CommitRetaining;

  dbgperCLI_DES6.Caption := copy(oRETMesExtenso(IncMonth(Date,-06)),1,3)+'/'+oStrZero(YearOf(IncMonth(Date,-06)),4);
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ROM_STCO,SUM(ROM_TCDE),COUNT(*) FROM '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    ROM_CCLI = '''+inttostr(gbinfo.Tag)+'''');
    SQL.Add('AND      ROM_DROM BETWEEN '''+formatDateTime('mm/dd/yy',StartOfTheMonth(IncMonth(Date,-06)))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(IncMonth(Date,-06)))+'''');
    SQL.Add('AND      ROM_CDBX > 0');
    SQL.Add('GROUP BY ROM_STCO');
    Open;
  end;

  while not consulta.Eof do
  begin
    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_CLI_INF');
      SQL.Add('WHERE  CLI_DESC = '''+consulta.Fields[0].AsString+'''');
      Open;
    end;

    if consulta_S.Fields[0].IsNull then
    cad_cli_inf.Append else
    cad_cli_inf.Edit;

    cad_cli_infCLI_DESC.Value := consulta.Fields[0].AsString;
    cad_cli_infCLI_ME06.Value := cad_cli_infCLI_ME06.AsFloat   + consulta.Fields[1].AsFloat;
    cad_cli_infCLI_QT06.Value := cad_cli_infCLI_QT06.AsInteger + consulta.Fields[2].AsInteger;
    cad_cli_inf.Post;

    consulta.Next;
  end;
  tSHEILD.CommitRetaining;

  dbgperCLI_DES7.Caption := copy(oRETMesExtenso(IncMonth(Date,-05)),1,3)+'/'+oStrZero(YearOf(IncMonth(Date,-05)),4);
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ROM_STCO,SUM(ROM_TCDE),COUNT(*) FROM '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    ROM_CCLI = '''+inttostr(gbinfo.Tag)+'''');
    SQL.Add('AND      ROM_DROM BETWEEN '''+formatDateTime('mm/dd/yy',StartOfTheMonth(IncMonth(Date,-05)))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(IncMonth(Date,-05)))+'''');
    SQL.Add('AND      ROM_CDBX > 0');
    SQL.Add('GROUP BY ROM_STCO');
    Open;
  end;

  while not consulta.Eof do
  begin
    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_CLI_INF');
      SQL.Add('WHERE  CLI_DESC = '''+consulta.Fields[0].AsString+'''');
      Open;
    end;

    if consulta_S.Fields[0].IsNull then
    cad_cli_inf.Append else
    cad_cli_inf.Edit;

    cad_cli_infCLI_DESC.Value := consulta.Fields[0].AsString;
    cad_cli_infCLI_ME07.Value := cad_cli_infCLI_ME07.AsFloat   + consulta.Fields[1].AsFloat;
    cad_cli_infCLI_QT07.Value := cad_cli_infCLI_QT07.AsInteger + consulta.Fields[2].AsInteger;
    cad_cli_inf.Post;

    consulta.Next;
  end;
  tSHEILD.CommitRetaining;

  dbgperCLI_DES8.Caption := copy(oRETMesExtenso(IncMonth(Date,-04)),1,3)+'/'+oStrZero(YearOf(IncMonth(Date,-04)),4);
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ROM_STCO,SUM(ROM_TCDE),COUNT(*) FROM '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    ROM_CCLI = '''+inttostr(gbinfo.Tag)+'''');
    SQL.Add('AND      ROM_DROM BETWEEN '''+formatDateTime('mm/dd/yy',StartOfTheMonth(IncMonth(Date,-04)))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(IncMonth(Date,-04)))+'''');
    SQL.Add('AND      ROM_CDBX > 0');
    SQL.Add('GROUP BY ROM_STCO');
    Open;
  end;

  while not consulta.Eof do
  begin
    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_CLI_INF');
      SQL.Add('WHERE  CLI_DESC = '''+consulta.Fields[0].AsString+'''');
      Open;
    end;

    if consulta_S.Fields[0].IsNull then
    cad_cli_inf.Append else
    cad_cli_inf.Edit;

    cad_cli_infCLI_DESC.Value := consulta.Fields[0].AsString;
    cad_cli_infCLI_ME08.Value := cad_cli_infCLI_ME08.AsFloat   + consulta.Fields[1].AsFloat;
    cad_cli_infCLI_QT08.Value := cad_cli_infCLI_QT08.AsInteger + consulta.Fields[2].AsInteger;
    cad_cli_inf.Post;

    consulta.Next;
  end;
  tSHEILD.CommitRetaining;

  dbgperCLI_DES9.Caption := copy(oRETMesExtenso(IncMonth(Date,-03)),1,3)+'/'+oStrZero(YearOf(IncMonth(Date,-03)),4);
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ROM_STCO,SUM(ROM_TCDE),COUNT(*) FROM '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    ROM_CCLI = '''+inttostr(gbinfo.Tag)+'''');
    SQL.Add('AND      ROM_DROM BETWEEN '''+formatDateTime('mm/dd/yy',StartOfTheMonth(IncMonth(Date,-03)))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(IncMonth(Date,-03)))+'''');
    SQL.Add('AND      ROM_CDBX > 0');
    SQL.Add('GROUP BY ROM_STCO');
    Open;
  end;

  while not consulta.Eof do
  begin
    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_CLI_INF');
      SQL.Add('WHERE  CLI_DESC = '''+consulta.Fields[0].AsString+'''');
      Open;
    end;

    if consulta_S.Fields[0].IsNull then
    cad_cli_inf.Append else
    cad_cli_inf.Edit;

    cad_cli_infCLI_DESC.Value := consulta.Fields[0].AsString;
    cad_cli_infCLI_ME09.Value := cad_cli_infCLI_ME09.AsFloat   + consulta.Fields[1].AsFloat;
    cad_cli_infCLI_QT09.Value := cad_cli_infCLI_QT09.AsInteger + consulta.Fields[2].AsInteger;
    cad_cli_inf.Post;

    consulta.Next;
  end;
  tSHEILD.CommitRetaining;

  dbgperCLI_DE10.Caption := copy(oRETMesExtenso(IncMonth(Date,-02)),1,3)+'/'+oStrZero(YearOf(IncMonth(Date,-02)),4);
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ROM_STCO,SUM(ROM_TCDE),COUNT(*) FROM '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    ROM_CCLI = '''+inttostr(gbinfo.Tag)+'''');
    SQL.Add('AND      ROM_DROM BETWEEN '''+formatDateTime('mm/dd/yy',StartOfTheMonth(IncMonth(Date,-02)))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(IncMonth(Date,-02)))+'''');
    SQL.Add('AND      ROM_CDBX > 0');
    SQL.Add('GROUP BY ROM_STCO');
    Open;
  end;

  while not consulta.Eof do
  begin
    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_CLI_INF');
      SQL.Add('WHERE  CLI_DESC = '''+consulta.Fields[0].AsString+'''');
      Open;
    end;

    if consulta_S.Fields[0].IsNull then
    cad_cli_inf.Append else
    cad_cli_inf.Edit;

    cad_cli_infCLI_DESC.Value := consulta.Fields[0].AsString;
    cad_cli_infCLI_ME10.Value := cad_cli_infCLI_ME10.AsFloat   + consulta.Fields[1].AsFloat;
    cad_cli_infCLI_QT10.Value := cad_cli_infCLI_QT10.AsInteger + consulta.Fields[2].AsInteger;
    cad_cli_inf.Post;

    consulta.Next;
  end;
  tSHEILD.CommitRetaining;

  dbgperCLI_DE11.Caption := copy(oRETMesExtenso(IncMonth(Date,-01)),1,3)+'/'+oStrZero(YearOf(IncMonth(Date,-01)),4);
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ROM_STCO,SUM(ROM_TCDE),COUNT(*) FROM '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    ROM_CCLI = '''+inttostr(gbinfo.Tag)+'''');
    SQL.Add('AND      ROM_DROM BETWEEN '''+formatDateTime('mm/dd/yy',StartOfTheMonth(IncMonth(Date,-01)))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(IncMonth(Date,-01)))+'''');
    SQL.Add('AND      ROM_CDBX > 0');
    SQL.Add('GROUP BY ROM_STCO');
    Open;
  end;

  while not consulta.Eof do
  begin
    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_CLI_INF');
      SQL.Add('WHERE  CLI_DESC = '''+consulta.Fields[0].AsString+'''');
      Open;
    end;

    if consulta_S.Fields[0].IsNull then
    cad_cli_inf.Append else
    cad_cli_inf.Edit;

    cad_cli_infCLI_DESC.Value := consulta.Fields[0].AsString;
    cad_cli_infCLI_ME11.Value := cad_cli_infCLI_ME11.AsFloat   + consulta.Fields[1].AsFloat;
    cad_cli_infCLI_QT11.Value := cad_cli_infCLI_QT11.AsInteger + consulta.Fields[2].AsInteger;
    cad_cli_inf.Post;

    consulta.Next;
  end;
  tSHEILD.CommitRetaining;

  dbgperCLI_DE12.Caption := copy(oRETMesExtenso(Date),1,3)+'/'+oStrZero(YearOf(Date),4);
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ROM_STCO,SUM(ROM_TCDE),COUNT(*) FROM '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    ROM_CCLI = '''+inttostr(gbinfo.Tag)+'''');
    SQL.Add('AND      ROM_DROM BETWEEN '''+formatDateTime('mm/dd/yy',StartOfTheMonth(Date))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(Date))+'''');
    SQL.Add('AND      ROM_CDBX > 0');
    SQL.Add('GROUP BY ROM_STCO');
    Open;
  end;

  while not consulta.Eof do
  begin
    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_CLI_INF');
      SQL.Add('WHERE  CLI_DESC = '''+consulta.Fields[0].AsString+'''');
      Open;
    end;

    if consulta_S.Fields[0].IsNull then
    cad_cli_inf.Append else
    cad_cli_inf.Edit;

    cad_cli_infCLI_DESC.Value := consulta.Fields[0].AsString;
    cad_cli_infCLI_ME12.Value := cad_cli_infCLI_ME12.AsFloat   + consulta.Fields[1].AsFloat;
    cad_cli_infCLI_QT12.Value := cad_cli_infCLI_QT12.AsInteger + consulta.Fields[2].AsInteger;
    cad_cli_inf.Post;

    consulta.Next;
  end;

  tSHEILD.CommitRetaining;
  cad_cli_inf.Close;
  cad_cli_inf.Open;
end;

procedure Tfrmcad_cli_inf.FormShow(Sender: TObject);
begin
  if not tSHEILD.Active then
     tSHEILD.StartTransaction;

  if not IBTra.Active then
     IBTra.StartTransaction;

  with VEN_PED do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PK.ID,PK.ROM_DERO,PK.ROM_DROM,');
    SQL.Add('         COALESCE(PK.ROM_CDNF,0) AS ROM_CDNF,PK.ROM_DNFS,COALESCE(PK.ROM_CDBX,0) AS ROM_CDBX,PK.ROM_DBAI,');
    SQL.Add('         PK.ROM_CVEN,CV.USU_DUSU,PK.ROM_CREP,CR.REP_FANT,');
    SQL.Add('         PK.ROM_TSDE,PK.ROM_TCDE,');
    SQL.Add('         PK.ROM_STPD,PK.ROM_STCO,PK.ROM_CONC,PK.ROM_CPAG,PG.PAG_DPAG,PK.ROM_STFI,');
    SQL.Add('         COALESCE(PK.ROM_CTRA,0) AS ROM_CTRA,PK.ROM_DTRA');
    SQL.Add('FROM ' + SLPrincipal.Values['ped_ven_cab'] + ' AS PK');
    SQL.Add('JOIN     CAD_USU      AS CV ON (CV.ID = PK.ROM_CVEN)');
    SQL.Add('JOIN     CAD_REP      AS CR ON (CR.ID = PK.ROM_CREP)');
    SQL.Add('JOIN     TAB_PAG      AS PG ON (PG.ID = PK.ROM_CPAG)');
    SQL.Add('WHERE    PK.ROM_CCLI = ''' + IntToStr(GBINFO.Tag) + '''');

    if (GBINFO.Tag = 1) then
    SQL.Add('AND      PK.ROM_DROM >= ''' + FormatDateTime('mm/dd/yy',StrToDate('01/01/' + oStrZero(YearOf(Date),4))) + '''');
    SQL.Add('ORDER BY PK.ID DESC');

    Prepare;
    Open;
  end;

  with frmcad_cli_inf.cad_cli_ref do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM CAD_CLI_REF');
    SQL.Add('WHERE    CLI_CCLI = '''+inttostr(gbinfo.tag)+'''');
    SQL.Add('ORDER BY CLI_DULT');
    Open;
  end;

  with frmcad_cli_inf.cad_cli_prc do
  begin
    SQL.Clear;
    SQL.Add('SELECT   * FROM CAD_CLI_PRC');
    SQL.Add('WHERE    CLI_CCLI = '''+inttostr(gbinfo.tag)+'''');
    SQL.Add('ORDER BY CLI_DPRO,CLI_PREC');
    Open;
  end;

  ven_001.Close;
  ven_001.Params[0].Value := gbinfo.Tag;
  ven_001.Open;

  lavmen.Caption := formatfloat('#,0.00###',ven_001ROM_TCDE.AsFloat);
  lanmen.Caption := ven_001ROM_DERO.AsString;
  ladmen.Caption := formatDateTime('dd/mm/yyyy',ven_001ROM_DROM.AsDateTime);

  ven_001.Last;
  lavmai.Caption := formatfloat('#,0.00###',ven_001ROM_TCDE.AsFloat);
  lanmai.Caption := ven_001ROM_DERO.AsString;
  ladmai.Caption := formatDateTime('dd/mm/yyyy',ven_001ROM_DROM.AsDateTime);
  ven_001.First;

  ven_002.Close;
  ven_002.Params[0].Value := gbinfo.Tag;
  ven_002.Open;

  lavpri.Caption := formatfloat('#,0.00###',ven_002ROM_TCDE.AsFloat);
  lanpri.Caption := ven_002ROM_DERO.AsString;
  ladpri.Caption := formatDateTime('dd/mm/yyyy',ven_002ROM_DROM.AsDateTime);

  ven_002.Last;
  lavult.Caption := formatfloat('#,0.00###',ven_002ROM_TCDE.AsFloat);
  lanult.Caption := ven_002ROM_DERO.AsString;
  ladult.Caption := formatDateTime('dd/mm/yyyy',ven_002ROM_DROM.AsDateTime);
  ven_002.First;

  PESQUISA_INFORMACAO_COMERCIAL;
end;

procedure Tfrmcad_cli_inf.cad_cli_infNewRecord(DataSet: TDataSet);
begin
  cad_cli_infID.Value := 0;
end;

procedure Tfrmcad_cli_inf.cad_cli_infCalcFields(DataSet: TDataSet);
begin
  if cad_cli_infCLI_ME01.AsFloat > 0 then
     cad_cli_infCLI_DES1.Value := TRIM(formatfloat('#,0.00###',cad_cli_infCLI_ME01.AsFloat))+'/'+oStrZero(cad_cli_infCLI_QT01.AsInteger,2);

  if cad_cli_infCLI_ME02.AsFloat > 0 then
     cad_cli_infCLI_DES2.Value := TRIM(formatfloat('#,0.00###',cad_cli_infCLI_ME02.AsFloat))+'/'+oStrZero(cad_cli_infCLI_QT02.AsInteger,2);

  if cad_cli_infCLI_ME03.AsFloat > 0 then
     cad_cli_infCLI_DES3.Value := TRIM(formatfloat('#,0.00###',cad_cli_infCLI_ME03.AsFloat))+'/'+oStrZero(cad_cli_infCLI_QT03.AsInteger,2);

  if cad_cli_infCLI_ME04.AsFloat > 0 then
     cad_cli_infCLI_DES4.Value := TRIM(formatfloat('#,0.00###',cad_cli_infCLI_ME04.AsFloat))+'/'+oStrZero(cad_cli_infCLI_QT04.AsInteger,2);

  if cad_cli_infCLI_ME05.AsFloat > 0 then
     cad_cli_infCLI_DES5.Value := TRIM(formatfloat('#,0.00###',cad_cli_infCLI_ME05.AsFloat))+'/'+oStrZero(cad_cli_infCLI_QT05.AsInteger,2);

  if cad_cli_infCLI_ME06.AsFloat > 0 then
     cad_cli_infCLI_DES6.Value := TRIM(formatfloat('#,0.00###',cad_cli_infCLI_ME06.AsFloat))+'/'+oStrZero(cad_cli_infCLI_QT06.AsInteger,2);

  if cad_cli_infCLI_ME07.AsFloat > 0 then
     cad_cli_infCLI_DES7.Value := TRIM(formatfloat('#,0.00###',cad_cli_infCLI_ME07.AsFloat))+'/'+oStrZero(cad_cli_infCLI_QT07.AsInteger,2);

  if cad_cli_infCLI_ME08.AsFloat > 0 then
     cad_cli_infCLI_DES8.Value := TRIM(formatfloat('#,0.00###',cad_cli_infCLI_ME08.AsFloat))+'/'+oStrZero(cad_cli_infCLI_QT08.AsInteger,2);

  if cad_cli_infCLI_ME09.AsFloat > 0 then
     cad_cli_infCLI_DES9.Value := TRIM(formatfloat('#,0.00###',cad_cli_infCLI_ME09.AsFloat))+'/'+oStrZero(cad_cli_infCLI_QT09.AsInteger,2);

  if cad_cli_infCLI_ME10.AsFloat > 0 then
     cad_cli_infCLI_DE10.Value := TRIM(formatfloat('#,0.00###',cad_cli_infCLI_ME10.AsFloat))+'/'+oStrZero(cad_cli_infCLI_QT10.AsInteger,2);

  if cad_cli_infCLI_ME11.AsFloat > 0 then
     cad_cli_infCLI_DE11.Value := TRIM(formatfloat('#,0.00###',cad_cli_infCLI_ME11.AsFloat))+'/'+oStrZero(cad_cli_infCLI_QT11.AsInteger,2);

  if cad_cli_infCLI_ME12.AsFloat > 0 then
     cad_cli_infCLI_DE12.Value := TRIM(formatfloat('#,0.00###',cad_cli_infCLI_ME12.AsFloat))+'/'+oStrZero(cad_cli_infCLI_QT12.AsInteger,2);
end;

procedure Tfrmcad_cli_inf.sbPROClick(Sender: TObject);
begin
  if dxDT1.Date <= 0 then
     raise exception.Create('Data inicial não informada !');

  if dxDT2.Date <= 0 then
     raise exception.Create('Data final não informada !');

  if dxDT2.Date < dxDT1.Date then
     raise exception.Create('Data final não pode ser menor que data inicial !');

  PESQUISA_PRODUTO(true);
end;

procedure Tfrmcad_cli_inf.tsPROShow(Sender: TObject);
begin
  PESQUISA_PRODUTO(false);
end;

procedure Tfrmcad_cli_inf.tsPRVShow(Sender: TObject);
begin
  if ven_prc.Active then exit;
  PESQUISA_PRECO;
end;

procedure Tfrmcad_cli_inf.tsNFEShow(Sender: TObject);
begin
  PESQUISA_NOTA_FISCAL('0');
end;

procedure Tfrmcad_cli_inf.tsNFCShow(Sender: TObject);
begin
  PESQUISA_NOTA_FISCAL('1');
end;

procedure Tfrmcad_cli_inf.tsNFDShow(Sender: TObject);
begin
  PESQUISA_NOTA_FISCAL('2');
end;

procedure Tfrmcad_cli_inf.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 12;
    frmpesquisa.cbCAMPO.Text := campo_pesquisa;
    frmpesquisa.cbDATA.Text  := 'Última Compra';
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      if (edTXT.Text = '') and (dxdt1.Date < 0) then
         {nothing}
      else
      begin
        with consulta do
        begin
          SQL.Clear;
          if cbCAMPO.Text = 'NFE_CDNF'then
          begin
            SQL.Add('SELECT   NFE_CAB.NFE_CFAV FROM NFE_CAB "NFE_CAB"');
            SQL.Add('WHERE    NFE_CAB.NFE_CDNF = '''+edTXT.Text+'''');
            SQL.Add('UNION');
            SQL.Add('SELECT   NFE_CAB.NFE_CFAV FROM NFE_CAB_002 "NFE_CAB"');
            SQL.Add('WHERE    NFE_CAB.NFE_CDNF = '''+edTXT.Text+'''');
            SQL.Add('UNION');
            SQL.Add('SELECT   NFE_CAB.NFE_CFAV FROM NFE_CAB_003 "NFE_CAB"');
            SQL.Add('WHERE    NFE_CAB.NFE_CDNF = '''+edTXT.Text+'''');
            SQL.Add('UNION');
            SQL.Add('SELECT   NFE_CAB.NFE_CFAV FROM NFE_CAB_004 "NFE_CAB"');
            SQL.Add('WHERE    NFE_CAB.NFE_CDNF = '''+edTXT.Text+'''');
            SQL.Add('UNION');
            SQL.Add('SELECT   NFE_CAB.NFE_CFAV FROM NFE_CAB_005 "NFE_CAB"');
            SQL.Add('WHERE    NFE_CAB.NFE_CDNF = '''+edTXT.Text+'''');
            Open;

            if fields[0].IsNull then
               raise exception.Create('Número da nota fiscal não encontrada !');
          end;
          gbinfo.Tag := fields[0].AsInteger;
        end;

        PESQUISA_NOTA_FISCAL('0');
        if edTXT.Text = 'NFE_CDNF' then
        begin
          pcinfr.ActivePageIndex := 1;
          pcnfe.ActivePageIndex  := 0;
        end;  
      end;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmcad_cli_inf.nfe_cabAfterOpen(DataSet: TDataSet);
begin
  nfe_ite.Close;
  nfe_ite.Open;
end;

procedure Tfrmcad_cli_inf.FormCreate(Sender: TObject);
begin
  inherited;
  pcinfr.ActivePageIndex := 0;
  pcped.ActivePageIndex  := 0;
  pcnfe.ActivePageIndex  := 0;
  pcpro.ActivePageIndex  := 0;
end;

procedure Tfrmcad_cli_inf.dbgven_pedCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if Pos('CAN',ANode.Values[DBGVEN_PEDROM_STFI.Index]) > 0 then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end else
    if Pos('BAI',ANode.Values[DBGVEN_PEDROM_STFI.Index]) > 0 then
    begin
      AColor      := clBtnFace;
      AFont.Color := clBlack;
    end else
    if Pos('FIN',ANode.Values[DBGVEN_PEDROM_STFI.Index]) > 0 then
    begin
      AColor      := clBtnFace;
      AFont.Color := clBlack;
    end else
    if Pos(LeftStr(ANode.Values[DBGVEN_PEDROM_STPD.Index],3),'DEVABA') > 0 then
    begin
      AColor      := clInfoBk;  //$0080FFFF; $00E8FFE8;
      AFont.Color := clBlack;
    end else
    if Pos('FAT',ANode.Values[DBGVEN_PEDROM_STFI.Index]) > 0 then
    begin
      AColor      := $00C4FFC4;
      AFont.Color := clBlack;
    end else
    if Pos('PAG',ANode.Values[DBGVEN_PEDROM_STFI.Index]) > 0 then
    begin
      AColor      := $00B3FFB3;
      AFont.Color := clBlack;
    end else
    if Pos('SEP',ANode.Values[DBGVEN_PEDROM_STFI.Index]) > 0 then
    begin
      AColor      := clBlack;
      AFont.Color := clWhite;
    end else
    begin
      AColor      := clWhite;
      AFont.Color := clBlack;
    end;

    if (AColumn = DBGVEN_PEDROM_CDNF) and (ANode.Values[DBGVEN_PEDROM_CDNF.Index] > 0) then
        AFont.Style := [fsBold];

    if AColumn = DBGVEN_PEDROM_TSDE then
    begin
      AColor      := clBtnFace;
      AFont.Color := clBlack;
    end;

    if AColumn = DBGVEN_PEDROM_TCDE then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;

      if ANode.Values[DBGVEN_PEDROM_TCDE.Index] < 0 then
      begin
        AColor      := clInfoBk;
        AFont.Color := clBlack;
      end;

      AFont.Style := [fsBold];
    end;

    if AColumn = DBGVEN_PEDROM_STCO then
    begin
      AColor      := clBtnFace;
      AFont.Color := clBlack;
    end;

    if AColumn = DBGVEN_PEDROM_DTRA then
    begin
      AColor      := clBtnFace;
      AFont.Color := clBlack;
    end;
  end;
end;

procedure Tfrmcad_cli_inf.FormDestroy(Sender: TObject);
begin
//  inherited;
end;

procedure Tfrmcad_cli_inf.ven_pedBeforeOpen(DataSet: TDataSet);
begin
  DBGVEN_PEDROM_CONC.Visible := False;
end;

procedure Tfrmcad_cli_inf.ven_pedAfterScroll(DataSet: TDataSet);
begin
  if ven_pedROM_CONC.AsInteger > 0 then
     DBGVEN_PEDROM_CONC.Visible := True;
end;

procedure Tfrmcad_cli_inf.dtscad_cli_infDataChange(Sender: TObject;
  Field: TField);
begin
  if VEN_PED.State = dsBrowse then
  begin
    { Ajuste largura das colunas }
    DBGVEN_PED.ApplyBestFit(DBGVEN_PEDUSU_DUSU);
    DBGVEN_PED.ApplyBestFit(DBGVEN_PEDREP_FANT);
    DBGVEN_PED.ApplyBestFit(DBGVEN_PEDROM_STCO);
    DBGVEN_PED.ApplyBestFit(DBGVEN_PEDPAG_DPAG);
    DBGVEN_PED.ApplyBestFit(DBGVEN_PEDROM_STFI);
    DBGVEN_PED.ApplyBestFit(DBGVEN_PEDROM_STPD);
    DBGVEN_PED.ApplyBestFit(DBGVEN_PEDROM_DTRA);
  end;
end;

end.


