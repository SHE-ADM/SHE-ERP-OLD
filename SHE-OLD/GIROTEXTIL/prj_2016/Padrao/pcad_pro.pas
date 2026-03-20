unit pcad_pro;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, IBEvents, IBStoredProc, IBDatabase,
  ImgList, DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid,  ComCtrls, ExtCtrls, dxDBTLCl, dxGrClms, Buttons,
  DBCtrls, StdCtrls, dxPageControl, jpeg, dxExEdtr, dxEdLib, dxEditor, DateUtils,
  dxDBELib, QRCtrls, math, shellapi, Menus, rxSpeedbar, IBSQL;

type
  Tfrmcad_pro = class(Tfrmpadr2)
    cadastroID: TIntegerField;
    cadastroPRO_CART: TIBStringField;
    cadastroPRO_CPRO: TIBStringField;
    cadastroPRO_DPRO: TIBStringField;
    cadastroPRO_FOTO: TBlobField;
    cadastroPRO_CBAR: TIBStringField;
    cadastroPRO_STA: TIBStringField;
    cadastroPRO_DCOR: TIBStringField;
    cadastroPRO_DGRP: TIBStringField;
    cadastroPRO_DCOL: TIBStringField;
    cadastroPRO_OBSE: TMemoField;
    dbgConsultaPRO_CPRO: TdxDBGridMaskColumn;
    dbgConsultaPRO_DPRO: TdxDBGridMaskColumn;
    dbgConsultaPRO_DGRP: TdxDBGridMaskColumn;
    dbgConsultaPRO_PREC: TdxDBGridMaskColumn;
    cadastroPRO_DUNI: TIBStringField;
    dbgConsultaPRO_DUNI: TdxDBGridMaskColumn;
    ImageOPC2: TImageList;
    dbgConsultaPRO_DCOL: TdxDBGridMaskColumn;
    dbgConsultaPRO_DCOR: TdxDBGridMaskColumn;
    dbgConsultaPRO_CART: TdxDBGridMaskColumn;
    cadastroPRO_GRAD: TIBStringField;
    dbgConsultaPRO_GRAD: TdxDBGridMaskColumn;
    cadastroPRO_DCAD: TDateField;
    dbgConsultaPRO_DCAD: TdxDBGridDateColumn;
    cadastroPRO_DPRG: TDateField;
    cadastroPRO_DENT: TDateField;
    cadastroPRO_DULT: TDateField;
    dbgConsultaPRO_DENT: TdxDBGridDateColumn;
    dbgConsultaPRO_DULT: TdxDBGridDateColumn;
    cadastroPRO_CDFO: TIntegerField;
    cadastroPRO_DCAT: TIBStringField;
    dbgConsultaPRO_DCAT: TdxDBGridMaskColumn;
    cadastroPRO_REPR: TIBStringField;
    GroupBox1: TGroupBox;
    dtscad_pro_est: TDataSource;
    tSHEILD: TIBTransaction;
    pcEST: TdxPageControl;
    TSEST: TdxTabSheet;
    cad_pro_res: TIBQuery;
    dtscad_pro_res: TDataSource;
    cad_pro_resEST_DUSU: TIBStringField;
    cad_pro_resPRO_CPRO: TIBStringField;
    cad_pro_resPRO_DCOR: TIBStringField;
    cad_pro_ent: TIBQuery;
    dtscad_pro_ent: TDataSource;
    cad_pro_entID: TIntegerField;
    cad_pro_entEST_DUSU: TIBStringField;
    cad_pro_entPRO_CPRO: TIBStringField;
    cad_pro_entPRO_DCOR: TIBStringField;
    cad_pro_entEST_CRED: TIBBCDField;
    cad_pro_entEST_CDET: TIBStringField;
    cad_pro_sai: TIBQuery;
    dtscad_pro_sai: TDataSource;
    cad_pro_resEST_DFAV: TIBStringField;
    cad_pro_resEST_CRED: TIBBCDField;
    cad_pro_resEST_CDET: TIBStringField;
    cad_pro_resID: TIntegerField;
    cadastroPRO_PCOR: TIBStringField;
    cadastroPRO_STAV: TIBStringField;
    cadastroSTAV: TStringField;
    dbgConsultaSTAV: TdxDBGridColumn;
    cad_pro_resROM_DERO: TIBStringField;
    cad_pro_resEST_DROM: TDateField;
    cad_pro_resEST_HROM: TTimeField;
    cad_pro_entEST_CDRO: TIntegerField;
    cad_pro_entEST_DCAD: TDateField;
    cad_pro_entEST_HCAD: TTimeField;
    cad_pro_saiID: TIntegerField;
    cad_pro_saiEST_DUSU: TIBStringField;
    cad_pro_saiPRO_CPRO: TIBStringField;
    cad_pro_saiPRO_DCOR: TIBStringField;
    cad_pro_saiEST_DEBI: TIBBCDField;
    cad_pro_saiEST_CDET: TIBStringField;
    cad_pro_saiEST_CDRO: TIntegerField;
    cad_pro_saiEST_DROM: TDateField;
    cad_pro_saiEST_HROM: TTimeField;
    cad_pro_saiEST_DFAV: TIBStringField;
    dbgConsultaID: TdxDBGridMaskColumn;
    cad_pro_saiEST_FLAG: TIBStringField;
    cad_pro_saiEST_DOCU: TIBStringField;
    cad_pro_saiEST_DCAD: TDateField;
    cad_pro_saiEST_HCAD: TTimeField;
    cad_pro_saiEST_DATA: TDateField;
    cad_pro_saiEST_HORA: TTimeField;
    aux: TIBQuery;
    cadastroPRO_DUSU: TIBStringField;
    dbgConsultaPRO_DUSU: TdxDBGridMaskColumn;
    cadastroPRO_DALT: TDateField;
    dbgConsultaPRO_DALT: TdxDBGridDateColumn;
    cadastroPRO_PREC: TFloatField;
    cadastroPRO_CUST: TFloatField;
    cadastroPRO_PCOM: TFloatField;
    cad_pro_resEST_DSEP: TIBStringField;
    cad_pro_entEST_DSEP: TIBStringField;
    cad_pro_saiEST_DSEP: TIBStringField;
    cad_pro_saiEST_DMAP: TIBStringField;
    cad_pro_saiEST_CTNR: TIBStringField;
    cad_pro_entEST_DMAP: TIBStringField;
    cad_pro_entEST_CTNR: TIBStringField;
    cad_pro_resEST_DMAP: TIBStringField;
    cad_pro_resEST_CTNR: TIBStringField;
    cad_pro_resEST_LOTE: TIBStringField;
    cad_pro_entEST_LOTE: TIBStringField;
    cad_pro_saiEST_LOTE: TIBStringField;
    cadastroFOR_FANT: TIBStringField;
    dbgConsultaFOR_FANT: TdxDBGridMaskColumn;
    tsTPRC: TdxTabSheet;
    cad_pro_tab: TIBQuery;
    dtscad_pro_tab: TDataSource;
    dbgtab: TdxDBGrid;
    cad_pro_tabID: TIntegerField;
    cad_pro_tabPRO_CART: TIBStringField;
    cad_pro_tabPRO_CPRO: TIBStringField;
    cad_pro_tabPRO_DCOR: TIBStringField;
    cad_pro_tabPRO_TIPO: TIBStringField;
    cad_pro_tabPRO_PRC1: TFloatField;
    cad_pro_tabPRO_DAT1: TDateField;
    cad_pro_tabPRO_USU1: TIBStringField;
    cad_pro_tabPRO_PRC2: TFloatField;
    cad_pro_tabPRO_DAT2: TDateField;
    cad_pro_tabPRO_USU2: TIBStringField;
    dbgtabPRO_CPRO: TdxDBGridMaskColumn;
    dbgtabPRO_DCOR: TdxDBGridMaskColumn;
    dbgtabPRO_TIPO: TdxDBGridMaskColumn;
    dbgtabPRO_PRC1: TdxDBGridMaskColumn;
    dbgtabPRO_DAT1: TdxDBGridDateColumn;
    dbgtabPRO_USU1: TdxDBGridMaskColumn;
    cad_pro_sep: TIBQuery;
    dtscad_pro_sep: TDataSource;
    cad_pro_sepID: TIntegerField;
    cad_pro_sepROM_DERO: TIBStringField;
    cad_pro_sepEST_DROM: TDateField;
    cad_pro_sepEST_HROM: TTimeField;
    cad_pro_sepEST_DUSU: TIBStringField;
    cad_pro_sepEST_DFAV: TIBStringField;
    cad_pro_sepPRO_CPRO: TIBStringField;
    cad_pro_sepPRO_DCOR: TIBStringField;
    cad_pro_sepEST_CRED: TIBBCDField;
    cad_pro_sepEST_CDET: TIBStringField;
    cad_pro_sepEST_DSEP: TIBStringField;
    cad_pro_sepEST_DMAP: TIBStringField;
    cad_pro_sepEST_CTNR: TIBStringField;
    cad_pro_sepEST_LOTE: TIBStringField;
    cad_pro_sepEST_DCAD: TDateField;
    cad_pro_est: TIBQuery;
    cad_pro_estPRO_CPRO: TIBStringField;
    cad_pro_estPRO_DCOR: TIBStringField;
    cad_pro_estPRO_DUNI: TIBStringField;
    cad_pro_estPRO_METR: TIBBCDField;
    cad_pro_estPRO_PESO: TIBBCDField;
    cad_pro_estPRO_PSCN: TIBBCDField;
    cad_pro_estPRO_CCST: TIBStringField;
    cad_pro_estPRO_STAV: TIBStringField;
    cad_pro_estC_DCST: TStringField;
    cad_pro_estC_STAV: TStringField;
    cad_pro_estC_QDIS: TFloatField;
    cad_pro_estC_RDIS: TIntegerField;
    cad_pro_estC_QEST: TFloatField;
    cad_pro_estC_REST: TIntegerField;
    cad_pro_estC_QRES: TFloatField;
    cad_pro_estC_RRES: TIntegerField;
    cad_pro_estC_QSEP: TFloatField;
    cad_pro_estC_RSEP: TIntegerField;
    cad_pro_estC_QDEF: TFloatField;
    cad_pro_estC_RDEF: TIntegerField;
    cad_pro_estC_QCOM: TFloatField;
    cad_pro_estC_RCOM: TIntegerField;
    cad_pro_estC_QPRG: TFloatField;
    cad_pro_estC_RPRG: TIntegerField;
    cad_pro_estC_QSLD: TFloatField;
    cad_pro_estC_RSLD: TIntegerField;
    DBGEstoque: TdxDBGrid;
    DBGEstoquePRO_CPRO: TdxDBGridMaskColumn;
    DBGEstoquePRO_DCOR: TdxDBGridMaskColumn;
    DBGEstoqueC_QDIS: TdxDBGridColumn;
    DBGEstoqueC_QDEF: TdxDBGridColumn;
    DBGEstoqueC_QEST: TdxDBGridColumn;
    DBGEstoqueC_QRES: TdxDBGridColumn;
    DBGEstoqueC_QSEP: TdxDBGridColumn;
    DBGEstoqueC_QSLD: TdxDBGridColumn;
    DBGEstoquePRO_STAV: TdxDBGridMaskColumn;
    cad_pro_estPRO_QEST: TIBBCDField;
    cad_pro_estPRO_REST: TIntegerField;
    cad_pro_estPRO_QEST2: TIBBCDField;
    cad_pro_estPRO_REST2: TIntegerField;
    cad_pro_estPRO_QEST3: TIBBCDField;
    cad_pro_estPRO_REST3: TIntegerField;
    cad_pro_estPRO_QEST4: TIBBCDField;
    cad_pro_estPRO_REST4: TIntegerField;
    cad_pro_estPRO_QEST5: TIBBCDField;
    cad_pro_estPRO_REST5: TIntegerField;
    cad_pro_estPRO_QEST6: TIBBCDField;
    cad_pro_estPRO_REST6: TIntegerField;
    cad_pro_estPRO_QEST7: TIBBCDField;
    cad_pro_estPRO_REST7: TIntegerField;
    cad_pro_estPRO_QEST8: TIBBCDField;
    cad_pro_estPRO_REST8: TIntegerField;
    cad_pro_estPRO_QEST9: TIBBCDField;
    cad_pro_estPRO_REST9: TIntegerField;
    cad_pro_estPRO_QRES: TIBBCDField;
    cad_pro_estPRO_RRES: TIntegerField;
    cad_pro_estPRO_QRES2: TIBBCDField;
    cad_pro_estPRO_RRES2: TIntegerField;
    cad_pro_estPRO_QRES3: TIBBCDField;
    cad_pro_estPRO_RRES3: TIntegerField;
    cad_pro_estPRO_QRES4: TIBBCDField;
    cad_pro_estPRO_RRES4: TIntegerField;
    cad_pro_estPRO_QRES5: TIBBCDField;
    cad_pro_estPRO_RRES5: TIntegerField;
    cad_pro_estPRO_QRES6: TIBBCDField;
    cad_pro_estPRO_RRES6: TIntegerField;
    cad_pro_estPRO_QRES7: TIBBCDField;
    cad_pro_estPRO_RRES7: TIntegerField;
    cad_pro_estPRO_QRES8: TIBBCDField;
    cad_pro_estPRO_RRES8: TIntegerField;
    cad_pro_estPRO_QRES9: TIBBCDField;
    cad_pro_estPRO_RRES9: TIntegerField;
    cad_pro_estPRO_QSEP: TIBBCDField;
    cad_pro_estPRO_RSEP: TIntegerField;
    cad_pro_estPRO_QSEP2: TIBBCDField;
    cad_pro_estPRO_RSEP2: TIntegerField;
    cad_pro_estPRO_QSEP3: TIBBCDField;
    cad_pro_estPRO_RSEP3: TIntegerField;
    cad_pro_estPRO_QSEP4: TIBBCDField;
    cad_pro_estPRO_RSEP4: TIntegerField;
    cad_pro_estPRO_QSEP5: TIBBCDField;
    cad_pro_estPRO_RSEP5: TIntegerField;
    cad_pro_estPRO_QSEP6: TIBBCDField;
    cad_pro_estPRO_RSEP6: TIntegerField;
    cad_pro_estPRO_QSEP7: TIBBCDField;
    cad_pro_estPRO_RSEP7: TIntegerField;
    cad_pro_estPRO_QSEP8: TIBBCDField;
    cad_pro_estPRO_RSEP8: TIntegerField;
    cad_pro_estPRO_QSEP9: TIBBCDField;
    cad_pro_estPRO_RSEP9: TIntegerField;
    cad_pro_estPRO_QPRG: TIBBCDField;
    cad_pro_estPRO_RPRG: TIntegerField;
    cad_pro_estPRO_QCOM: TIBBCDField;
    cad_pro_estPRO_QPRD: TIBBCDField;
    cad_pro_estPRO_RCOM: TIntegerField;
    cad_pro_estPRO_QDEF: TIBBCDField;
    cad_pro_estPRO_RDEF: TIntegerField;
    GroupBox2: TGroupBox;
    imag: TImage;
    TSRES: TdxTabSheet;
    dbgres: TdxDBGrid;
    dbgresPRO_CPRO: TdxDBGridMaskColumn;
    dbgresPRO_DCOR: TdxDBGridMaskColumn;
    dbgresEST_CRED: TdxDBGridMaskColumn;
    dbgresROM_DERO: TdxDBGridMaskColumn;
    dbgresEST_DROM: TdxDBGridDateColumn;
    dbgresEST_DUSU: TdxDBGridMaskColumn;
    dbgresEST_DFAV: TdxDBGridMaskColumn;
    TSENT: TdxTabSheet;
    TSSAI: TdxTabSheet;
    dbgent: TdxDBGrid;
    dbgentPRO_CPRO: TdxDBGridMaskColumn;
    dbgentPRO_DCOR: TdxDBGridMaskColumn;
    dbgentEST_CRED: TdxDBGridMaskColumn;
    dbgentEST_CDET: TdxDBGridMaskColumn;
    dbgentEST_DSEP: TdxDBGridMaskColumn;
    dbgentEST_CDRO: TdxDBGridMaskColumn;
    dbgentEST_DCAD: TdxDBGridDateColumn;
    dbgentEST_DUSU: TdxDBGridMaskColumn;
    dbgentEST_DMAP: TdxDBGridMaskColumn;
    dbgentEST_CTNR: TdxDBGridMaskColumn;
    dbgentEST_LOTE: TdxDBGridMaskColumn;
    dbgsai: TdxDBGrid;
    dbgsaiPRO_CPRO: TdxDBGridMaskColumn;
    dbgsaiPRO_DCOR: TdxDBGridMaskColumn;
    dbgsaiEST_DEBI: TdxDBGridMaskColumn;
    dbgsaiEST_CDET: TdxDBGridMaskColumn;
    dbgsaiEST_DSEP: TdxDBGridMaskColumn;
    dbgsaiEST_DOCU: TdxDBGridMaskColumn;
    dbgsaiEST_DATA: TdxDBGridColumn;
    dbgsaiEST_DUSU: TdxDBGridMaskColumn;
    dbgsaiEST_DFAV: TdxDBGridMaskColumn;
    dbgsaiEST_DMAP: TdxDBGridMaskColumn;
    dbgsaiEST_CTNR: TdxDBGridMaskColumn;
    dbgsaiEST_LOTE: TdxDBGridMaskColumn;
    SQLEdicao: TIBSQL;
    procedure FormCreate(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure siINCClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure dtscadastroDataChange(Sender: TObject; Field: TField);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siPSQClick(Sender: TObject);
    procedure cad_pro_estCalcFields(DataSet: TDataSet);
    procedure cadastroCalcFields(DataSet: TDataSet);
    procedure cad_pro_saiCalcFields(DataSet: TDataSet);
    procedure imagClick(Sender: TObject);
    procedure dtscad_pro_saiDataChange(Sender: TObject; Field: TField);
    procedure dtscad_pro_entDataChange(Sender: TObject; Field: TField);
    procedure cadastroAfterOpen(DataSet: TDataSet);
    procedure dtscad_pro_resDataChange(Sender: TObject; Field: TField);
    procedure FormDestroy(Sender: TObject);
    procedure DBGEstoqueCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siRELClick(Sender: TObject);
  private
    { Private declarations }
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
  public
    { Public declarations }
  end;

var
  frmcad_pro: Tfrmcad_pro;

implementation

uses uPrincipal, pcad_pro_edi,
  ppesquisa, prelatorio_geral, pcad_pro_img;

{$R *.dfm}

procedure Tfrmcad_pro.FormCreate(Sender: TObject);
begin
  cEvent := 'CAD_PRO';
  inherited;

  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAD_PRO.ID,CAD_PRO.PRO_CART,PRO_CPRO,PRO_DPRO,PRO_FOTO,');
    SQL.Add('       PRO_CBAR,PRO_DCOR,PRO_PCOR,PRO_DGRP,PRO_DCAT,PRO_DCOL,PRO_STA ,PRO_OBSE,PRO_CUST,PRO_PCOM,PRO_PREC,');
    SQL.Add('       PRO_CDFO,PRO_DUNI,PRO_GRAD,PRO_DCAD,PRO_DPRG,PRO_DENT,PRO_DULT,PRO_REPR,PRO_STAV,PRO_DUSU,PRO_DALT,FOR_FANT');
    SQL.Add('FROM   CAD_PRO,CAD_PRO_IMG,CAD_FOR');
    SQL.Add('WHERE  CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');
    SQL.Add('AND    CAD_PRO.PRO_CDFO = CAD_FOR.ID');
    SQL.Add('AND    PRO_STA = ''0''');

    if frmprincipal.parametrosPAR_TPRO.AsString = '0' then
    SQL.Add('AND CAD_PRO.ID = 0');

    if frmprincipal.parametrosPAR_SPRO.AsString = '1' then
    SQL.Add('AND PRO_CDFO = '''+frmprincipal.parametrosID.AsString+'''');

    SQL.Add('ORDER BY CAD_PRO.ID DESC');
    Prepare;
  end;

  with cad_pro_est do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PRO_CPRO,PRO_DCOR,PRO_DUNI,PRO_METR,PRO_PESO,PRO_PSCN,PRO_STAV,PRO_STAV,PRO_CCST,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_EST     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_002 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST2,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_EST_002 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST2,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_003 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST3,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_EST_003 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST3,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_004 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST4,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_EST_004 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST4,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_005 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST5,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_EST_005 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST5,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_006 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST6,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_EST_006 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST6,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_007 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST7,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_EST_007 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST7,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_008 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST8,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_EST_008 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST8,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_009 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST9,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_EST_009 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST9,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_RES     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_002 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES2,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_RES_002 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES2,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_003 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES3,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_RES_003 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES3,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_004 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES4,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_RES_004 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES4,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_005 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES5,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_RES_005 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES5,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_006 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES6,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_RES_006 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES6,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_007 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES7,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_RES_007 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES7,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_008 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES8,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_RES_008 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES8,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_009 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES9,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_RES_009 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES9,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP     WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_SEP     WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_002 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP2,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_SEP_002 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP2,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_003 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP3,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_SEP_003 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP3,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_004 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP4,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_SEP_004 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP4,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_005 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP5,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_SEP_005 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP5,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_006 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP6,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_SEP_006 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP6,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_007 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP7,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_SEP_007 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP7,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_008 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP8,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_SEP_008 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP8,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_009 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP9,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CAD_PRO_SEP_009 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP9,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_prg']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QPRG,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM '+SLPrincipal.Values['cad_pro_prg']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RPRG,');
    SQL.Add('         (SELECT SUM(EST_CRED)          FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QCOM,');
    SQL.Add('         (SELECT SUM(EST_DEBI)          FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QPRD,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RCOM,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_def']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QDEF,');
    SQL.Add('         (SELECT CAST(COUNT(*) AS INTEGER)               FROM '+SLPrincipal.Values['cad_pro_def']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RDEF ');
    SQL.Add('FROM     CAD_PRO');
    SQL.Add('WHERE    PRO_CART = :PRO_CART');
    SQL.Add('ORDER BY PRO_CART,PRO_DCOR');
    Prepare;
  end;

  with cad_pro_res do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CAD_PRO_RES.ID,ROM_DERO,EST_DROM,EST_HROM,EST_DUSU,EST_DFAV,PRO_CPRO,PRO_DCOR,EST_CRED,EST_CDET,EST_DSEP,EST_DMAP,EST_CTNR,EST_LOTE');
    SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['cad_pro_res']+' "CAD_PRO_RES" ,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
    SQL.Add('WHERE    CAD_PRO.ID     = EST_CPRO');
    SQL.Add('AND      PED_VEN_CAB.ID = EST_CDPD');
    SQL.Add('AND      PRO_CART       = :PRO_CART');
    SQL.Add('ORDER BY PRO_DCOR,CAD_PRO_RES.ID DESC');
    Prepare;
  end;

  with cad_pro_sep do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CAD_PRO_SEP.ID,ROM_DERO,EST_DCAD,EST_DROM,EST_HROM,EST_DUSU,EST_DFAV,PRO_CPRO,PRO_DCOR,EST_CRED,EST_CDET,EST_DSEP,EST_DMAP,EST_CTNR,EST_LOTE');
    SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['cad_pro_sep']+' "CAD_PRO_SEP" ,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
    SQL.Add('WHERE    CAD_PRO.ID     = EST_CPRO');
    SQL.Add('AND      PED_VEN_CAB.ID = EST_CDPD');
    SQL.Add('AND      PRO_CART       = :PRO_CART');
    SQL.Add('AND      EST_FLAG       = ''R''');
    SQL.Add('ORDER BY PRO_DCOR,CAD_PRO_SEP.ID DESC');
    Prepare;
  end;

  with cad_pro_ent do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CAD_PRO_EST.ID,EST_DUSU,PRO_CPRO,PRO_DCOR,EST_CRED,EST_CDET,EST_CDRO,EST_DCAD,EST_HCAD,EST_DSEP,EST_DMAP,EST_CTNR,EST_LOTE');
    SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['cad_pro_est']+' "CAD_PRO_EST"');
    SQL.Add('WHERE    CAD_PRO.ID =  EST_CPRO');
    SQL.Add('AND      PRO_CART   = :PRO_CART');
    SQL.Add('AND      EST_FLAG   = ''E''');
    SQL.Add('AND      EST_CRED > 0');
    SQL.Add('AND      EST_CDPD IS NULL');
    SQL.Add('ORDER BY PRO_DCOR,CAD_PRO_EST.ID DESC');
    Prepare;
  end;

  with cad_pro_sai do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CAD_PRO_EST.ID,EST_DUSU,PRO_CPRO,PRO_DCOR,EST_DEBI,EST_CDET,EST_CDRO,EST_DOCU,EST_DCAD,EST_HCAD,EST_DROM,EST_HROM,EST_DFAV,EST_FLAG,EST_DSEP,EST_DMAP,EST_CTNR,EST_LOTE');
    SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['cad_pro_est']+' "CAD_PRO_EST"');
    SQL.Add('WHERE    CAD_PRO.ID       = EST_CPRO');
    SQL.Add('AND      PRO_CART         = :PRO_CART');
    SQL.Add('AND      EST_FLAG = ''V''');
    SQL.Add('OR       CAD_PRO.ID = EST_CPRO');
    SQL.Add('AND      CAD_PRO.PRO_CART = :PRO_CART');
    SQL.Add('AND      EST_FLAG = ''S''');
    SQL.Add('ORDER BY PRO_DCOR,CAD_PRO_EST.ID DESC');
    Prepare;
  end;
end;

procedure Tfrmcad_pro.FormDestroy(Sender: TObject);
begin
  inherited;
  frmcad_pro := Nil;
end;

procedure Tfrmcad_pro.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 1;
    if frmprincipal.parametrosPAR_PGRD.AsString = '0' then
    frmpesquisa.cbCAMPO.Text := 'Referencia' else
    if frmprincipal.parametrosPAR_PGRD.AsString = '4' then
    frmpesquisa.cbCAMPO.Text := 'Descrição' else
    frmpesquisa.cbCAMPO.Text := 'Produto';
    frmpesquisa.cbDATA.Text  := 'Cadastro';
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      if (edTXT.Text = '') and (dxdt1.Date < 0) and (cField <> 'Todos') then
         {nothing}
      else
      with cadastro do
      begin
        SQL.Clear;
        SQL.Add('SELECT CAD_PRO.ID,CAD_PRO.PRO_CART,PRO_CPRO,PRO_DPRO,PRO_FOTO,');
        SQL.Add('       PRO_CBAR,PRO_DCOR,PRO_PCOR,PRO_DGRP,PRO_DCAT,PRO_DCOL,PRO_STA ,PRO_OBSE,PRO_CUST,PRO_PCOM,PRO_PREC,');
        SQL.Add('       PRO_CDFO,PRO_DUNI,PRO_GRAD,PRO_DCAD,PRO_DPRG,PRO_DENT,PRO_DULT,PRO_REPR,PRO_STAV,PRO_DUSU,PRO_DALT,FOR_FANT');
        SQL.Add('FROM   CAD_PRO,CAD_PRO_IMG,CAD_FOR');
        SQL.Add('WHERE  CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');
        SQL.Add('AND    CAD_PRO.PRO_CDFO = CAD_FOR.ID');
        SQL.Add('AND    PRO_STA = ''0''');

        if frmprincipal.parametrosPAR_SPRO.AsString = '1' then
        SQL.Add('AND PRO_CDFO = '''+frmprincipal.parametrosID.AsString+'''');

        if cField <> 'Todos' then
        begin
          if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
          SQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

          if edtxt.Text <> '' then
          begin
            if cField = 'CAD_PRO.PRO_STAV' then
            SQL.Add('AND '+cField+' = '''+copy(edtxt.Text,1,1)+'''')
            else if cField = 'CAD_PRO.PRO_CART' then
            SQL.Add('AND '+cField+' = '''+edtxt.Text+'''') else
            SQL.Add('AND '+cField+' LIKE ''%'+edtxt.Text+'%''');
          end;
        end;
        SQL.Add('ORDER BY CAD_PRO.PRO_CART,CAD_PRO.PRO_DCOR');
        Open;
      end;
      dbgconsulta.SetFocus;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmcad_pro.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
     BlobStream := tab.CreateBlobStream(valor,bmRead);

  JPEGImage  := TJPEGImage.Create;
  try
    try
      JPEGImage.LoadFromStream(BlobStream);
    except
      ;
    end;
    imag.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmcad_pro.dbgConsultaDblClick(Sender: TObject);
begin
  if cadastroPRO_STA.AsString <> '0' then
  raise exception.Create('Produto Enviado para a Lixeira !');
  inherited;
end;

procedure Tfrmcad_pro.siINCClick(Sender: TObject);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Produtos';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  PCampo[0] := 'USU_VISU';
  PCampo[1] := 'Fornecedores';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  Application.CreateForm (Tfrmcad_pro_edi, frmcad_pro_edi);
  frmcad_pro_edi.Tag := frmcad_pro.Tag;
  try
    frmcad_pro_edi.ShowModal;
  finally
    if frmcad_pro_edi.editado then
    begin
      with cadastro do
      begin
        SQL.Clear;
        SQL.Add('SELECT   CAD_PRO.ID,CAD_PRO.PRO_CART,PRO_CPRO,PRO_DPRO,PRO_FOTO,');
        SQL.Add('         PRO_CBAR,PRO_DCOR,PRO_PCOR,PRO_DGRP,PRO_DCAT,PRO_DCOL,PRO_STA ,PRO_OBSE,PRO_CUST,PRO_PCOM,PRO_PREC,');
        SQL.Add('         PRO_CDFO,PRO_DUNI,PRO_GRAD,PRO_DCAD,PRO_DPRG,PRO_DENT,PRO_DULT,PRO_REPR,PRO_STAV,PRO_DUSU,PRO_DALT,FOR_FANT');
        SQL.Add('FROM     CAD_PRO,CAD_PRO_IMG,CAD_FOR');
        SQL.Add('WHERE    CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');
        SQL.Add('AND      CAD_PRO.PRO_CDFO = CAD_FOR.ID');
        SQL.Add('AND      PRO_STA  = ''0''');
        SQL.Add('AND      CAD_PRO.PRO_CART = '''+frmcad_pro_edi.edcart.Text+'''');
        SQL.Add('ORDER BY PRO_CPRO');
        Open;
      end;
      ExecuteEvent;
    end;

    freeAndNil(frmcad_pro_edi);
    frmcad_pro_edi.Free;
  end;
end;

procedure Tfrmcad_pro.siALTClick(Sender: TObject);
begin
  sbMSG.Panels[0].Text := 'Alteração';
  sbMSG.Update;

  if cadastro.Fields[0].IsNull then abort;

  Application.CreateForm (Tfrmcad_pro_edi, frmcad_pro_edi);
  try
    frmcad_pro_edi.Tag := 1;
    frmcad_pro_edi.ShowModal;
  finally
    if frmcad_pro_edi.editado then
    ExecuteEvent;

    freeAndNil(frmcad_pro_edi);
    frmcad_pro_edi.Free;
  end;
end;

procedure Tfrmcad_pro.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Produtos';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  if oYesNo(handle,'Confirma a exclusão do produto '+cadastroPRO_DPRO.AsString+' ?') = mrno then
     Abort;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FIRST 1 PV.ROM_DERO,PV.ROM_DROM,CC.CLI_FANT,CV.USU_DUSU');
    SQL.Add('FROM     PED_VEN_CAB AS PV');
    SQL.Add('JOIN     CAD_CLI     AS CC   ON (CC.ID         = PV.ROM_CCLI)');
    SQL.Add('JOIN     CAD_USU     AS CV   ON (CV.USU_CUSU   = PV.ROM_CVEN)');
    SQL.Add('JOIN     PED_VEN_ITE AS PVFK ON (PVFK.ROM_CCAB = PV.ID)');
    SQL.Add('JOIN     CAD_PRO     AS CP   ON (CP.ID         = PVFK.ROM_CPRO)');
    SQL.Add('WHERE    CP.ID = '''+CadastroId.AsString+'''');
    SQL.Add('ORDER BY 1 DESC');
    Prepare;
    Open;

    if not Fields[0].IsNull then
       oException(DBGConsulta,'Falha ao tentar excluir !'+#13+
                              'Produto possui venda efetuada !');
  end;

  try
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecQuery;
    end;

    IBTRA.CommitRetaining;
    frmprincipal.Log_Eve('Produtos','Cadastro de Produtos','Exclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroPRO_DPRO.AsString),'','');
  except
    on E: Exception do
    begin
      IBTRA.RollbackRetaining;
      oErro(Application.Handle,'Falha ao tentar excluir produto !'+#13+#13+
                               'Error Code: '+E.Message+'.'       +#13+
                                Caption+'.');
    end;
  end;

  ExecuteEvent;
end;

procedure Tfrmcad_pro.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[dbgConsultaSTAV.Index] <> Null then
       if ANode.Values[dbgConsultaSTAV.Index] = 'PRÉ-CADASTRO' then
       begin
         AColor      := $00BEEFF8;
         AFont.Color := clBlack;
       end else
       if ANode.Values[dbgConsultaSTAV.Index] = 'INATIVO' then
       begin
         AColor      := $000024B3;
         AFont.Color := clWhite;
       end;

    if (AColumn = dbgConsultaPRO_PREC) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure Tfrmcad_pro.cad_pro_estCalcFields(DataSet: TDataSet);
begin
  if frmprincipal.parametrosPAR_ESEG.AsString <> '1' then
  begin
    case frmprincipal.parametrosID.AsInteger of
    1: begin
         cad_pro_estC_QEST.Value := cad_pro_estPRO_QEST.AsFloat;
         cad_pro_estC_QRES.Value := cad_pro_estPRO_QRES.AsFloat;
         cad_pro_estC_QSEP.Value := cad_pro_estPRO_QSEP.AsFloat;
       end;
    2: begin
         cad_pro_estC_QEST.Value := cad_pro_estPRO_QEST2.AsFloat;
         cad_pro_estC_QRES.Value := cad_pro_estPRO_QRES2.AsFloat;
         cad_pro_estC_QSEP.Value := cad_pro_estPRO_QSEP2.AsFloat;
       end;
    3: begin
         cad_pro_estC_QEST.Value := cad_pro_estPRO_QEST3.AsFloat;
         cad_pro_estC_QRES.Value := cad_pro_estPRO_QRES3.AsFloat;
         cad_pro_estC_QSEP.Value := cad_pro_estPRO_QSEP3.AsFloat;
       end;
    4: begin
         cad_pro_estC_QEST.Value := cad_pro_estPRO_QEST4.AsFloat;
         cad_pro_estC_QRES.Value := cad_pro_estPRO_QRES4.AsFloat;
         cad_pro_estC_QSEP.Value := cad_pro_estPRO_QSEP4.AsFloat;
       end;
    5: begin
         cad_pro_estC_QEST.Value := cad_pro_estPRO_QEST5.AsFloat;
         cad_pro_estC_QRES.Value := cad_pro_estPRO_QRES5.AsFloat;
         cad_pro_estC_QSEP.Value := cad_pro_estPRO_QSEP5.AsFloat;
       end;
    6: begin
         cad_pro_estC_QEST.Value := cad_pro_estPRO_QEST6.AsFloat;
         cad_pro_estC_QRES.Value := cad_pro_estPRO_QRES6.AsFloat;
         cad_pro_estC_QSEP.Value := cad_pro_estPRO_QSEP6.AsFloat;
       end;
    7: begin
         cad_pro_estC_QEST.Value := cad_pro_estPRO_QEST7.AsFloat;
         cad_pro_estC_QRES.Value := cad_pro_estPRO_QRES7.AsFloat;
         cad_pro_estC_QSEP.Value := cad_pro_estPRO_QSEP7.AsFloat;
       end;
    8: begin
         cad_pro_estC_QEST.Value := cad_pro_estPRO_QEST8.AsFloat;
         cad_pro_estC_QRES.Value := cad_pro_estPRO_QRES8.AsFloat;
         cad_pro_estC_QSEP.Value := cad_pro_estPRO_QSEP8.AsFloat;
       end;
    9: begin
         cad_pro_estC_QEST.Value := cad_pro_estPRO_QEST9.AsFloat;
         cad_pro_estC_QRES.Value := cad_pro_estPRO_QRES9.AsFloat;
         cad_pro_estC_QSEP.Value := cad_pro_estPRO_QSEP9.AsFloat;
       end;
    end;
  end else
  begin
    cad_pro_estC_QEST.Value := cad_pro_estPRO_QEST.AsFloat + cad_pro_estPRO_QEST2.AsFloat + cad_pro_estPRO_QEST3.AsFloat + cad_pro_estPRO_QEST4.AsFloat + cad_pro_estPRO_QEST5.AsFloat + cad_pro_estPRO_QEST6.AsFloat + cad_pro_estPRO_QEST7.AsFloat + cad_pro_estPRO_QEST8.AsFloat + cad_pro_estPRO_QEST9.AsFloat;
    cad_pro_estC_QRES.Value := cad_pro_estPRO_QRES.AsFloat + cad_pro_estPRO_QRES2.AsFloat + cad_pro_estPRO_QRES3.AsFloat + cad_pro_estPRO_QRES4.AsFloat + cad_pro_estPRO_QRES5.AsFloat + cad_pro_estPRO_QRES6.AsFloat + cad_pro_estPRO_QRES7.AsFloat + cad_pro_estPRO_QRES8.AsFloat + cad_pro_estPRO_QRES9.AsFloat;
    cad_pro_estC_QSEP.Value := cad_pro_estPRO_QSEP.AsFloat + cad_pro_estPRO_QSEP2.AsFloat + cad_pro_estPRO_QSEP3.AsFloat + cad_pro_estPRO_QSEP4.AsFloat + cad_pro_estPRO_QSEP5.AsFloat + cad_pro_estPRO_QSEP6.AsFloat + cad_pro_estPRO_QSEP7.AsFloat + cad_pro_estPRO_QSEP8.AsFloat + cad_pro_estPRO_QSEP9.AsFloat;
  end;

  cad_pro_estC_QDEF.Value := cad_pro_estPRO_QDEF.AsFloat;
  cad_pro_estC_QEST.Value := cad_pro_estC_QEST.AsFloat + cad_pro_estC_QSEP.AsFloat;
  cad_pro_estC_QDIS.Value := cad_pro_estC_QEST.AsFloat - cad_pro_estC_QRES.AsFloat - cad_pro_estC_QSEP.AsFloat;
  if cad_pro_estC_QDIS.AsFloat < 0 then
  cad_pro_estC_QDIS.Value := 0;

  if cad_pro_estPRO_STAV.AsString = 'P' then
  cad_pro_estC_STAV.Value := 'PRÉ-CADASTRO' else
  if cad_pro_estPRO_STAV.AsString = 'I' then
  cad_pro_estC_STAV.Value := 'INATIVO';

  if cad_pro_estPRO_CCST.AsString = '0' then
  cad_pro_estC_DCST.Value := 'Nacional' else
  if cad_pro_estPRO_CCST.AsString = '1' then
  cad_pro_estC_DCST.Value := 'Estrangeira - Importação Direta' else
  if cad_pro_estPRO_CCST.AsString = '2' then
  cad_pro_estC_DCST.Value := 'Estrangeira - Adiquirida no Mercado Interno';
end;

procedure Tfrmcad_pro.cadastroCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cadastroPRO_STAV.AsString = 'A' then
  cadastroSTAV.Value := 'ATIVO' else
  if cadastroPRO_STAV.AsString = 'P' then
  cadastroSTAV.Value := 'PRÉ-CADASTRO' else
  if cadastroPRO_STAV.AsString = 'I' then
  cadastroSTAV.Value := 'INATIVO';
end;

procedure Tfrmcad_pro.cad_pro_saiCalcFields(DataSet: TDataSet);
begin
  cad_pro_saiEST_DATA.Value := cad_pro_saiEST_DCAD.AsDateTime;
  cad_pro_saiEST_HORA.Value := cad_pro_saiEST_HCAD.AsDateTime;

  if cad_pro_saiEST_DCAD.AsDateTime <= 0 then
  begin
    cad_pro_saiEST_DATA.Value := cad_pro_saiEST_DROM.AsDateTime;
    cad_pro_saiEST_HORA.Value := cad_pro_saiEST_HROM.AsDateTime;
  end;
end;

procedure Tfrmcad_pro.imagClick(Sender: TObject);
begin
  frmcad_pro_img := tfrmcad_pro_img.create(self);
  try
    frmcad_pro_img.carregaFoto(cadastroPRO_FOTO.BlobSize,cadastroPRO_FOTO,cadastro,frmprincipal.parametros);
    frmcad_pro_img.Caption := cadastroPRO_DPRO.AsString;
    frmcad_pro_img.showmodal;
  finally
    FreeAndNil(frmcad_pro_img);
    frmcad_pro_img.free;
  end;    
end;

procedure Tfrmcad_pro.cadastroAfterOpen(DataSet: TDataSet);
begin
  if not cad_pro_est.Active then
  cad_pro_est.Open;

  if not cad_pro_res.Active then
  cad_pro_res.Open;

  if not cad_pro_sep.Active then
  cad_pro_sep.Open;

  if not cad_pro_ent.Active then
  cad_pro_ent.Open;

  if not cad_pro_sai.Active then
  cad_pro_sai.Open;

  if not cad_pro_tab.Active then
  cad_pro_tab.Open;
end;

procedure Tfrmcad_pro.dtscadastroDataChange(Sender: TObject;
  Field: TField);
begin
  { Produtos }
  DBGConsulta.ApplyBestFit(DBGConsultaPRO_CART);
  DBGConsulta.ApplyBestFit(DBGConsultaPRO_CPRO);
  DBGConsulta.ApplyBestFit(DBGConsultaPRO_DPRO);

  carregaFoto(cadastroPRO_FOTO.BlobSize,cadastroPRO_FOTO,cadastro,frmprincipal.parametros);
end;

procedure Tfrmcad_pro.dtscad_pro_resDataChange(Sender: TObject;
  Field: TField);
begin
  dbgresPRO_DCOR.Visible := (cad_pro_resPRO_DCOR.AsString <> '');
end;

procedure Tfrmcad_pro.dtscad_pro_entDataChange(Sender: TObject;
  Field: TField);
begin
  dbgentPRO_DCOR.Visible := (cad_pro_entPRO_DCOR.AsString <> '');
  dbgentEST_DSEP.Visible := (cad_pro_entEST_DSEP.AsString <> '');
  dbgentEST_DMAP.Visible := (cad_pro_entEST_DMAP.AsString <> '');
  dbgentEST_CTNR.Visible := (cad_pro_entEST_CTNR.AsString <> '');
  dbgentEST_LOTE.Visible := (cad_pro_entEST_LOTE.AsString <> '');
  dbgentEST_CDET.Visible := (frmprincipal.parametrosPAR_PECA.AsString = '1');
end;

procedure Tfrmcad_pro.dtscad_pro_saiDataChange(Sender: TObject;
  Field: TField);
begin
  dbgsaiPRO_DCOR.Visible := (cad_pro_saiPRO_DCOR.AsString <> '');
  dbgsaiEST_DSEP.Visible := (cad_pro_saiEST_DSEP.AsString <> '');
  dbgsaiEST_DMAP.Visible := (cad_pro_saiEST_DMAP.AsString <> '');
  dbgsaiEST_CTNR.Visible := (cad_pro_saiEST_CTNR.AsString <> '');
  dbgsaiEST_LOTE.Visible := (cad_pro_saiEST_LOTE.AsString <> '');
  dbgsaiEST_CDET.Visible := (frmprincipal.parametrosPAR_PECA.AsString = '1');
end;

procedure Tfrmcad_pro.DBGEstoqueCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGEstoquePRO_STAV.Index] <> Null then
       if ANode.Values[DBGEstoquePRO_STAV.Index] = 'P' then
       begin
         AColor      := $00BEEFF8;
         AFont.Color := clBlack;
       end else
       if ANode.Values[DBGEstoquePRO_STAV.Index] = 'I' then
       begin
         AColor      := $000024B3;
         AFont.Color := clWhite;
       end;
  end;     
end;

procedure Tfrmcad_pro.siRELClick(Sender: TObject);
begin
  inherited;
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.cbCAD_PRO_DEMP.Text := frmprincipal.parametrosPAR_FANT.AsString;
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   UNI_REFE FROM TAB_UNI');
      SQL.Add('ORDER BY UNI_REFE');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_PRO_DUNI.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbCAD_PRO_DUNI.Descriptions.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   PAR_FANT FROM PAR_SIS');
      SQL.Add('ORDER BY PAR_FANT');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_PRO_DEMP.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbCAD_PRO_DEMP.Descriptions.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   CAT_DCAT FROM CAD_PRO_CAC');
      SQL.Add('WHERE    CAT_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('GROUP BY CAT_DCAT');
      SQL.Add('ORDER BY CAT_DCAT');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_PRO_DCAT.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbCAD_PRO_DCAT.Descriptions.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   GRP_DGRP FROM CAD_PRO_GRP');
//      SQL.Add('WHERE    GRP_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('GROUP BY GRP_DGRP');
      SQL.Add('ORDER BY GRP_DGRP');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_PRO_DGRP.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbCAD_PRO_DGRP.Descriptions.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   COL_DCOL FROM TAB_COL');
      SQL.Add('GROUP BY COL_DCOL');
      SQL.Add('ORDER BY COL_DCOL');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_PRO_DCOL.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbCAD_PRO_DCOL.Descriptions.Add(fields[0].AsString);
        next;
      end;
    end;

    frmrelatorio_geral.cbCAD_PRO_CART1.Text  := cadastroPRO_CART.AsString;
    frmrelatorio_geral.tsCAD_PRO.TabVisible  := true;
    frmrelatorio_geral.pcMAIN.ActivePage     := frmrelatorio_geral.tsCAD_PRO;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

end.

