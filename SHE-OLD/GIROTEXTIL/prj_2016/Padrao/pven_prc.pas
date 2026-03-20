unit pven_prc;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math,
  IBEvents, rxSpeedbar;

type
  Tfrmven_prc = class(TForm)
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
    rom_001: TIBDataSet;
    dtsrom_001: TDataSource;
    BVis: TSpeedItem;
    tSHEILD: TIBTransaction;
    consulta_s: TIBQuery;
    imageOPC3: TImageList;
    rom_001ID: TIntegerField;
    rom_001ROM_ITEM: TIBStringField;
    rom_001ROM_CART: TIBStringField;
    rom_001ROM_CPRO: TIBStringField;
    rom_001ROM_DPRO: TIBStringField;
    rom_001ROM_CCOR: TIntegerField;
    rom_001ROM_DCOR: TIBStringField;
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
    consulta: TIBQuery;
    BPri: TSpeedItem;
    rom_001ROM_CGRD: TIBStringField;
    rom_001ROM_DGRD: TIBStringField;
    rom_001ROM_FLAG: TSmallintField;
    rom_001ROM_CDOC: TIntegerField;
    rom_001ROM_RCOR: TIBStringField;
    aux: TIBQuery;
    aux2: TIBQuery;
    rom_001ROM_CPR2: TIBStringField;
    rom_001ROM_CCO2: TIntegerField;
    rom_001ROM_RCO2: TIBStringField;
    rom_001ROM_DCO2: TIBStringField;
    rom_001ROM_IPRO: TIntegerField;
    rom_001ROM_IPR2: TIntegerField;
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
    psq_for: TIBQuery;
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
    rom_002: TIBDataSet;
    rom_001ROM_TPRC: TIBStringField;
    rom_001ROM_PCOR: TIBStringField;
    rom_001ROM_PCO2: TIBStringField;
    rom_001ROM_ABCD: TIBStringField;
    rom_001ROM_DROM: TDateField;
    pnlconsulta: TPanel;
    pnlpedido: TPanel;
    Panel1: TPanel;
    SpeedBar4: TSpeedBar;
    SpeedbarSection17: TSpeedbarSection;
    SpeedbarSection18: TSpeedbarSection;
    SpeedbarSection19: TSpeedbarSection;
    SpeedbarSection20: TSpeedbarSection;
    siDEL: TSpeedItem;
    siSAV: TSpeedItem;
    siCAN: TSpeedItem;
    siALT: TSpeedItem;
    siINC: TSpeedItem;
    Panel2: TPanel;
    sbPED: TStatusBar;
    dbgrom: TdxDBGrid;
    rom_001ROM_QPRD: TSmallintField;
    rom_001ROM_DPRD: TDateField;
    rom_001ROM_QEMB: TSmallintField;
    rom_001ROM_DEMB: TDateField;
    rom_001ROM_QDES: TSmallintField;
    rom_001ROM_DDES: TDateField;
    rom_001ROM_QEXP: TSmallintField;
    rom_001ROM_DEXP: TDateField;
    rom_001ROM_CTNR: TIBStringField;
    rom_001ROM_OBSE: TMemoField;
    rom_001ROM_DBAI: TDateField;
    rom_001ROM_RPRD: TDateField;
    rom_001ROM_REMB: TDateField;
    rom_001ROM_RDES: TDateField;
    Panel3: TPanel;
    pnlped: TPanel;
    Shape4: TShape;
    Label3: TLabel;
    Label4: TLabel;
    linha1: TShape;
    Label9: TLabel;
    Label6: TLabel;
    linha3: TShape;
    Shape7: TShape;
    Label16: TLabel;
    Shape9: TShape;
    Label17: TLabel;
    Shape10: TShape;
    latdsc: TLabel;
    Shape29: TShape;
    Label24: TLabel;
    Shape24: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Label28: TLabel;
    Label18: TLabel;
    Label29: TLabel;
    Label14: TLabel;
    linha2: TShape;
    Shape3: TShape;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label30: TLabel;
    Shape6: TShape;
    Label19: TLabel;
    Shape8: TShape;
    Label20: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edhexp: TdxMaskEdit;
    cbcred: TdxPickEdit;
    cbprec: TdxPickEdit;
    edrfor: TdxMaskEdit;
    edcdnf: TdxMaskEdit;
    edcdpd: TdxMaskEdit;
    edcdbx: TdxMaskEdit;
    edqtpc: TdxMaskEdit;
    edqtsp: TdxMaskEdit;
    edcdcx: TdxMaskEdit;
    edadsc: TdxMaskEdit;
    edhrom: TdxMaskEdit;
    edcdsc: TdxMaskEdit;
    edcdro: TdxMaskEdit;
    eddcad: TdxDateEdit;
    cbdcom: TdxPickEdit;
    cbstpd: TdxPickEdit;
    cbstco: TdxPickEdit;
    pcobs: TdxPageControl;
    tsobs: TdxTabSheet;
    edobse: TdxMemo;
    tsoco: TdxTabSheet;
    edobso: TdxMemo;
    edtsde: TdxMaskEdit;
    edtcde: TdxMaskEdit;
    cbdpag: TdxPickEdit;
    edcpag: TdxMaskEdit;
    eddfor: TdxMaskEdit;
    edccom: TdxMaskEdit;
    edpdsc: TdxMaskEdit;
    edtqtrl: TdxMaskEdit;
    edcnpj: TdxMaskEdit;
    edcfor: TdxMaskEdit;
    eddero: TdxMaskEdit;
    edDEXP: TdxDateEdit;
    edctnr: TdxMaskEdit;
    edcrep: TdxMaskEdit;
    cbdrep: TdxPickEdit;
    eddemb: TdxDateEdit;
    edddes: TdxDateEdit;
    eddprd: TdxDateEdit;
    edrprd: TdxDateEdit;
    edremb: TdxDateEdit;
    edrdes: TdxDateEdit;
    eddbai: TdxDateEdit;
    pnlfoto: TPanel;
    pro_foto: TImage;
    dbgromROM_ITEM: TdxDBGridMaskColumn;
    dbgromROM_CPRO: TdxDBGridMaskColumn;
    dbgromROM_DPRO: TdxDBGridMaskColumn;
    dbgromROM_ABCD: TdxDBGridMaskColumn;
    dbgromROM_DCOR: TdxDBGridMaskColumn;
    dbgromROM_PCOR: TdxDBGridMaskColumn;
    dbgromROM_OBSE: TdxDBGridBlobColumn;
    dbgromROM_DUNI: TdxDBGridPickColumn;
    dbgromROM_CDRO: TdxDBGridCheckColumn;
    dbgromROM_CDPD: TdxDBGridMaskColumn;
    dbgromROM_QTDE: TdxDBGridCalcColumn;
    dbgromROM_UNIT: TdxDBGridButtonColumn;
    dbgromROM_TOTA: TdxDBGridMaskColumn;
    dbgromROM_DROM: TdxDBGridDateColumn;
    dbgromROM_QTPD: TdxDBGridMaskColumn;
    dbgromROM_QPRD: TdxDBGridMaskColumn;
    dbgromROM_DPRD: TdxDBGridDateColumn;
    dbgromROM_RPRD: TdxDBGridMaskColumn;
    dbgromROM_QEMB: TdxDBGridMaskColumn;
    dbgromROM_DEMB: TdxDBGridDateColumn;
    dbgromROM_REMB: TdxDBGridMaskColumn;
    dbgromROM_CTNR: TdxDBGridMaskColumn;
    dbgromROM_QDES: TdxDBGridMaskColumn;
    dbgromROM_DDES: TdxDBGridDateColumn;
    dbgromROM_RDES: TdxDBGridMaskColumn;
    dbgromROM_QEXP: TdxDBGridMaskColumn;
    dbgromROM_DEXP: TdxDBGridDateColumn;
    dbgromROM_DBAI: TdxDBGridMaskColumn;
    pEVE: TIBEvents;
    pSP: TIBStoredProc;
    pTRA: TIBTransaction;
    rom_002ID: TIntegerField;
    rom_002ROM_CCAB: TIntegerField;
    rom_002ROM_CDOC: TIntegerField;
    rom_002ROM_CDPR: TIntegerField;
    rom_002ROM_CDPD: TIntegerField;
    rom_002ROM_CDRO: TIntegerField;
    rom_002ROM_CDNF: TIntegerField;
    rom_002ROM_ITEM: TIBStringField;
    rom_002ROM_CART: TIBStringField;
    rom_002ROM_IPRO: TIntegerField;
    rom_002ROM_CPRO: TIBStringField;
    rom_002ROM_IPR2: TIntegerField;
    rom_002ROM_CPR2: TIBStringField;
    rom_002ROM_DPRO: TIBStringField;
    rom_002ROM_CCOR: TIntegerField;
    rom_002ROM_RCOR: TIBStringField;
    rom_002ROM_DCOR: TIBStringField;
    rom_002ROM_PCOR: TIBStringField;
    rom_002ROM_CCO2: TIntegerField;
    rom_002ROM_RCO2: TIBStringField;
    rom_002ROM_DCO2: TIBStringField;
    rom_002ROM_PCO2: TIBStringField;
    rom_002ROM_CGRD: TIBStringField;
    rom_002ROM_DGRD: TIBStringField;
    rom_002ROM_DUNI: TIBStringField;
    rom_002ROM_QTDE: TIBBCDField;
    rom_002ROM_QTRL: TIntegerField;
    rom_002ROM_QTSP: TIBBCDField;
    rom_002ROM_RLSP: TIntegerField;
    rom_002ROM_QTPD: TIBBCDField;
    rom_002ROM_RLPD: TIntegerField;
    rom_002ROM_QDIS: TIBBCDField;
    rom_002ROM_RLDI: TIntegerField;
    rom_002ROM_PRCA: TFloatField;
    rom_002ROM_PRPA: TFloatField;
    rom_002ROM_VPRC: TFloatField;
    rom_002ROM_VPRO: TFloatField;
    rom_002ROM_RPRC: TFloatField;
    rom_002ROM_RPRO: TFloatField;
    rom_002ROM_PCOM: TFloatField;
    rom_002ROM_CUST: TFloatField;
    rom_002ROM_UNIT: TFloatField;
    rom_002ROM_PREC: TFloatField;
    rom_002ROM_VDSC: TIBBCDField;
    rom_002ROM_TOTA: TIBBCDField;
    rom_002ROM_PPRO: TIBBCDField;
    rom_002ROM_PEMB: TIBBCDField;
    rom_002ROM_METR: TIBBCDField;
    rom_002ROM_PESO: TIBBCDField;
    rom_002ROM_REND: TIBBCDField;
    rom_002ROM_PSCN: TIBBCDField;
    rom_002ROM_PSMR: TIBBCDField;
    rom_002ROM_VBCIPI: TIBBCDField;
    rom_002ROM_PIPI: TIBBCDField;
    rom_002ROM_VIPI: TIBBCDField;
    rom_002ROM_CDET: TIBStringField;
    rom_002ROM_CBAR: TIBStringField;
    rom_002ROM_TPRC: TIBStringField;
    rom_002ROM_FLAG: TSmallintField;
    rom_002ROM_FOTO: TBlobField;
    rom_002ROM_ABCD: TIBStringField;
    rom_002ROM_DROM: TDateField;
    rom_002ROM_DBAI: TDateField;
    rom_002ROM_QPRD: TSmallintField;
    rom_002ROM_DPRD: TDateField;
    rom_002ROM_RPRD: TDateField;
    rom_002ROM_QEMB: TSmallintField;
    rom_002ROM_DEMB: TDateField;
    rom_002ROM_REMB: TDateField;
    rom_002ROM_QDES: TSmallintField;
    rom_002ROM_DDES: TDateField;
    rom_002ROM_RDES: TDateField;
    rom_002ROM_QEXP: TSmallintField;
    rom_002ROM_DEXP: TDateField;
    rom_002ROM_CTNR: TIBStringField;
    rom_002ROM_OBSE: TMemoField;
    rom_002ROM_STFI: TIBStringField;
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
    BImp: TSpeedItem;
    psq_forID: TIntegerField;
    psq_forFOR_FANT: TIBStringField;
    psq_forFOR_RAZA: TIBStringField;
    psq_forFOR_CNPJ: TIBStringField;
    psq_forFOR_CPF: TIBStringField;
    psq_forFOR_CRED: TIBBCDField;
    psq_forFOR_CID: TIBStringField;
    psq_forFOR_BAI: TIBStringField;
    psq_forFOR_TLOG: TIBStringField;
    psq_forFOR_LOGR: TIBStringField;
    psq_forFOR_NUME: TIBStringField;
    psq_forFOR_CEP: TIBStringField;
    psq_forFOR_COMP: TIBStringField;
    psq_forFOR_ESTA: TIBStringField;
    psq_forFOR_STA: TIBStringField;
    psq_forFOR_STAV: TIBStringField;
    psq_forFOR_DPAG: TIBStringField;
    psq_forFOR_VDSC: TIBBCDField;
    psq_forFOR_DCAD: TDateField;
    psq_forFOR_DFUN: TDateField;
    psq_forFOR_DALT: TDateField;
    psq_forFOR_DULT: TDateField;
    psq_forFOR_VULT: TIBBCDField;
    psq_forFOR_DDD: TIBStringField;
    psq_forFOR_TEL1: TIBStringField;
    psq_forFOR_DTRA: TIBStringField;
    psq_forFOR_CDEP: TIntegerField;
    psq_forFOR_OBSO: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtsdeKeyPress(Sender: TObject; var Key: Char);
    procedure siDELClick(Sender: TObject);
    procedure siINCClick(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure siCANClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure rom_001AfterCancel(DataSet: TDataSet);
    procedure rom_001AfterEdit(DataSet: TDataSet);
    procedure rom_001AfterPost(DataSet: TDataSet);
    procedure dbgromKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edderoKeyPress(Sender: TObject; var Key: Char);
    procedure rom_001AfterInsert(DataSet: TDataSet);
    procedure rom_001BeforeCancel(DataSet: TDataSet);
    procedure edccomValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcrepValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcpagValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbdcomChange(Sender: TObject);
    procedure cbdrepChange(Sender: TObject);
    procedure edcforValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure eddforValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edrforValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure rom_001AfterDelete(DataSet: TDataSet);
    procedure rom_001AfterOpen(DataSet: TDataSet);
    procedure rom_001NewRecord(DataSet: TDataSet);
    procedure dtsrom_001DataChange(Sender: TObject; Field: TField);
    procedure FormActivate(Sender: TObject);
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
    procedure cbdcomExit(Sender: TObject);
    procedure cbdrepExit(Sender: TObject);
    procedure cbstpdExit(Sender: TObject);
    procedure cbcredChange(Sender: TObject);
    procedure edcnpjValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure BVisClick(Sender: TObject);
    procedure BPriClick(Sender: TObject);
    procedure rom_002AfterPost(DataSet: TDataSet);
    procedure edderoValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure rom_001ROM_TPRCValidate(Sender: TField);
    procedure edctnrValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure rom_001ROM_QPRDValidate(Sender: TField);
    procedure rom_001ROM_QEMBValidate(Sender: TField);
    procedure rom_001ROM_QDESValidate(Sender: TField);
    procedure rom_001ROM_QEXPValidate(Sender: TField);
    procedure rom_001ROM_QTPDValidate(Sender: TField);
    procedure dbgromROM_QTDEValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgromCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dbgromROM_CPROValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgromROM_DPROValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgromROM_CDROValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure rom_001BeforePost(DataSet: TDataSet);
    procedure BImpClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    BBot: boolean;
    procedure EDITAQUANTIDADE;
    procedure AJUSTAFORM;
    procedure ABRE_TABELA;
    procedure TOTAL;
    procedure SALVA;
    procedure PESQUISA_PRODUTO(campo,cpro:string);
    procedure IMPRIME_PEDIDO(visu: boolean);
    function  RETORNA_LOGIN : boolean;
    function  RETORNA_FOCO(campo: string): integer;
  public
    auto: boolean;
    procedure PESQUISA_TIPO;
    procedure DISPLAY_GRID;
    procedure PESQUISA_FORNECEDOR(pesq,chave: string;cdsc: double);
    procedure PESQUISA_COMPRADOR(pesq,chave: string);
    procedure PESQUISA_REPRESENTANTE(pesq,chave: string);
    procedure PESQUISA_FPAGTO(pesq,chave: string);
    procedure CARREGAFOTO(tam: Integer; valor: TBlobField; tab: TIbDataSet);
  end;

var
  frmven_prc: Tfrmven_prc;

implementation

uses uPrincipal, pcad_pro_con, pcad_for, 
  qven_prc, uFrmLogin, pctr_prc, pimporta_geral;

{$R *.dfm}

procedure Tfrmven_prc.EDITAQUANTIDADE;
begin
  if copy(rom_001ROM_DUNI.AsString,1,1) = 'M' then
  begin
    if edqtsp.Text = '1' then
    begin
      if rom_001ROM_METR.AsFloat > 0 then
         rom_001ROM_QTRL.Value := trunc(roundto((rom_001ROM_QTDE.AsFloat/rom_001ROM_METR.AsFloat),-2));
    end;
  end
  else if copy(rom_001ROM_DUNI.AsString,1,1) = 'K' then
  begin
    if edqtsp.Text = '1' then
    begin
      if rom_001ROM_PESO.AsFloat > 0 then
         rom_001ROM_QTRL.Value := trunc(roundto(rom_001ROM_QTDE.AsFloat/(rom_001ROM_PESO.AsFloat+rom_001ROM_PSCN.AsFloat),-2));
    end;
  end
  else if (copy(rom_001ROM_DUNI.AsString,1,1) = 'P') or (copy(rom_001ROM_DUNI.AsString,1,1) = 'C') then
  rom_001ROM_QTRL.Value := trunc(rom_001ROM_QTDE.AsFloat);

  if rom_001ROM_QTRL.AsInteger = 0 then
  rom_001ROM_QTRL.Value := 1;
end;

function Tfrmven_prc.RETORNA_FOCO(campo: string): integer;
var i: word;
begin
  for i := 1 to 10 do
  begin
    if dbgrom.Columns[i].FieldName = campo then
       break;
  end;

  if not dbgromROM_DCOR.Visible then
     i := i - 1;

  result := i;
end;

procedure Tfrmven_prc.IMPRIME_PEDIDO(visu: boolean);
begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Pedidos');

  if qrpven_prc = nil then
     qrpven_prc := Tqrpven_prc.Create(self);
  try

    with qrpven_prc.roman do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_COM_CAB.*,CAD_FOR.FOR_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
      SQL.Add('FROM     CAD_FOR,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_com_cab']+' "PED_COM_CAB"');
      SQL.Add('WHERE    PED_COM_CAB.ROM_CFOR = CAD_FOR.ID');
      SQL.Add('AND      PED_COM_CAB.ROM_CCOM = CAD_USU.USU_CUSU');
      SQL.Add('AND      PED_COM_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      PED_COM_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND      PED_COM_CAB.ID = '''+edcdro.Text+'''');
      SQL.Add('ORDER BY PED_COM_CAB.ID DESC');
      Open;
    end;

    with qrpven_prc.ven_efe do
    begin
      SQL.Clear;
      SQL.Add('SELECT   CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_PCOR,CAD_PRO.PRO_DUNI,CAD_PRO.PRO_COMP,CAD_PRO.PRO_LARG,CAD_PRO.PRO_PESO,CAD_PRO.PRO_CFOR,');
      SQL.Add('         PED_COM_ITE.ID,PED_COM_ITE.ROM_ITEM,PED_COM_ITE.ROM_DPRO,PED_COM_ITE.ROM_QTDE,PED_COM_ITE.ROM_UNIT,PED_COM_ITE.ROM_TOTA');
      SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['ped_com_ite']+' "PED_COM_ITE"');
      SQL.Add('WHERE    PED_COM_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND      PED_COM_ITE.ROM_CCAB = '''+edcdro.Text+'''');
      SQL.Add('ORDER BY PED_COM_ITE.ROM_ITEM');
      Open;
    end;

    qrpven_prc.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);

    qrpven_prc.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;

    qrpven_prc.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpven_prc.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;

    qrpven_prc.qrlemai_site.Caption  := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;

    qrpven_prc.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpven_prc.ReportTitle          := 'Pedido de Compra';
    qrpven_prc.qrltitulo.Caption    := 'Pedido de Compra';

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpven_prc.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpven_prc.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpven_prc.Prepare;

    if visu then
    qrpven_prc.Preview
    else
    qrpven_prc.Print;
  finally
    freeAndNil(qrpven_prc);
    qrpven_prc.Free;
  end;
end;

procedure Tfrmven_prc.DISPLAY_GRID;
var
  tam: word;
begin
  tam := dbgromROM_DPRO.Tag;

  if screen.Width >= 1360 then
     tam := tam + 85;

  if (frmprincipal.parametrosPAR_TIPO.AsString <> '0') and (frmprincipal.parametrosPAR_TIPO.AsString <> '1') then
  begin
    if rom_001ROM_DCOR.AsString = '' then
    begin
      dbgromROM_DCOR.Visible := false;
      dbgromROM_PCOR.Visible := false;
    end
    else
    begin
      dbgromROM_DCOR.Visible := true;
      dbgromROM_PCOR.Visible := true;
    end;
  end;

  if dbgromROM_DCOR.Visible then
     tam := (tam - (dbgromROM_DCOR.Width+dbgromROM_PCOR.Width));

  dbgromROM_DPRO.Width := tam;
end;

procedure Tfrmven_prc.PESQUISA_TIPO;
begin
  cbprec.Text := 'COMPRA';
  edadsc.Text := '0,00';
  edqtsp.Text := '0';
  edqtpc.Text := 'QT';
  cbdpag.Text := 'SEM COBRANÇA';
  cbstco.Text := 'SEM COBRANÇA';

  PESQUISA_FPAGTO('F',cbdpag.Text);  
end;

function Tfrmven_prc.RETORNA_LOGIN: boolean;
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

procedure Tfrmven_prc.SALVA;
var
  ID,cdpd: integer;
  stfi: string;
  BRet: boolean;
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

  if eddexp.Date <= 0 then
  begin
    eddexp.SetFocus;
    messageBox(handle,'Data prevista de chegada não informada !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  try
    rom_001.DisableControls;
    while not rom_001.Eof do
    begin
      if (rom_001ROM_CPRO.AsString <> '') and (rom_001ROM_UNIT.AsFloat = 0) then
      begin
        dbgrom.SetFocus;
        dbgrom.FocusedColumn := RETORNA_FOCO('ROM_UNIT');
        messageBox(handle,PChar('Preço do produto não cadastrado !'+#13+rom_001ROM_CPRO.AsString+' - '+rom_001ROM_DPRO.AsString),PChar(Self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if (rom_001ROM_CPRO.AsString <> '') and (rom_001ROM_QTDE.AsFloat <= 0) then
      begin
        dbgrom.SetFocus;
        dbgrom.FocusedColumn := RETORNA_FOCO('ROM_QTDE');
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
    eddfor.SetFocus;
    messageBox(handle,'Pedido do cliente não pode ser negativo !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if cbstpd.Text = '' then
  begin
    cbstpd.SetFocus;
    messageBox(handle,'Tipo de pedido não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if cbstco.Text = '' then
  begin
    cbstco.SetFocus;
    messageBox(handle,'Tipo de cobrança não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;
  
  if edcfor.Text = '' then
  begin
    edcfor.SetFocus;
    messageBox(handle,'Cliente não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if edccom.Text = '' then
  begin
    edccom.SetFocus;
    messageBox(handle,'Comprador não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if edcrep.Text = '' then
  begin
    edcrep.SetFocus;
    messageBox(handle,'Representante não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if edcpag.Text = '' then
  begin
    edcpag.SetFocus;
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
      cbdpag.SetFocus;
      messageBox(handle,'Condição de pagamento não cadastrada !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if ((cbstco.Text = 'DINHEIRO') and (tab_pagPAG_D001.AsInteger >  1)) or
       ((cbstco.Text = 'DÉBITO')   and (tab_pagPAG_D001.AsInteger <> 0)) or
       ((cbstco.Text = 'DEBITO')   and (tab_pagPAG_D001.AsInteger <> 0)) or
       ((cbstco.Text = 'CHEQUE A VISTA')   and (tab_pagPAG_D001.AsInteger <> 0)) or
       ((cbstco.Text = 'VALE')   and (tab_pagPAG_D001.AsInteger <> 0)) then
    begin
      cbstco.SetFocus;
      messageBox(handle,'Tipo de cobrança inválida para essa condição de pagamento !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;

  if psq_for.Fields[0].IsNull then
  begin
    eddfor.SetFocus;
    messageBox(handle,'Fornecedor não cadastrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  with consulta do
  begin
    if (edcdro.Text = '0') or (edcdro.Text = '') or (edcdro.Text = ' ') then
    begin
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_'+SLPrincipal.Values['ped_com_cab']+',0) FROM RDB$DATABASE');
      Open;
      edhrom.Text := timetostr(time);
      edcdro.Text := inttostr(fields[0].AsInteger+1);
               ID := 0;
    end
    else       ID := strtoint(edcdro.Text);
  end;

  if (eddero.Text = '0') or (eddero.Text = '') then
      eddero.Text := edcdro.Text;

  BRet := true;
  rom_001.First;
  while not rom_001.Eof do
  begin
    if rom_001ROM_DBAI.AsDateTime <= 0 then
    BRet := false;

    rom_001.Next;
  end;

  if BRet then
  stfi := 'FINALIZADO' else
  begin
    BRet := false;
    rom_001.First;
    while not rom_001.Eof do
    begin
      if rom_001ROM_DBAI.AsDateTime > 0 then
      BRet := true;

      rom_001.Next;
    end;

    if BRet then
    stfi := 'FINALIZADO PARCIAL' else
    stfi := 'PENDENTE';
  end;
    
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(ROM_QTDE),SUM(ROM_QTRL) FROM PED_COM_ITE');
    Open;
  end;

  rom_001.First;

  if eddprd.Date < 0 then
  eddprd.Date := rom_001ROM_DPRD.AsDateTime;

  if eddbai.Date < 0 then
  eddbai.Date := rom_001ROM_DBAI.AsDateTime;

  if edrprd.Date < 0 then
  edrprd.Date := rom_001ROM_RPRD.AsDateTime;

  if eddemb.Date < 0 then
  eddemb.Date := rom_001ROM_DEMB.AsDateTime;

  if edremb.Date < 0 then
  edremb.Date := rom_001ROM_REMB.AsDateTime;

  if edddes.Date < 0 then
  edddes.Date := rom_001ROM_DDES.AsDateTime;

  if edrdes.Date < 0 then
  edrdes.Date := rom_001ROM_RDES.AsDateTime;

  try
    try
      ibSP.StoredProcName := 'SP_PED_COM_CAB';
      ibSP.Prepare;

      ibSP.ParamByName('ped').Value  := 'PED_COM_CAB';
      if frmprincipal.parametrosID.AsInteger > 1 then
      ibSP.ParamByName('ped').Value  := 'PED_COM_CAB_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

      ibSP.ParamByName('id').Value   := ID;
      ibSP.ParamByName('cdcx').Value := edcdcx.Text;
      ibSP.ParamByName('dero').Value := eddero.Text;
      ibSP.ParamByName('stpd').Value := cbstpd.Text;
      ibSP.ParamByName('stco').Value := cbstco.Text;
      ibSP.ParamByName('stfi').Value := stfi;
      ibSP.ParamByName('drom').Value := eddcad.Date;
      ibSP.ParamByName('dbai').Value := eddbai.Date;
      ibSP.ParamByName('hrom').Value := strtotime(edhrom.Text);
      ibSP.ParamByName('dexp').Value := eddexp.Date;
      ibSP.ParamByName('dprd').Value := eddprd.Date;
      ibSP.ParamByName('rprd').Value := edrprd.Date;
      ibSP.ParamByName('demb').Value := eddemb.Date;
      ibSP.ParamByName('remb').Value := edremb.Date;
      ibSP.ParamByName('ddes').Value := edddes.Date;
      ibSP.ParamByName('rdes').Value := edrdes.Date;
      ibSP.ParamByName('ctnr').Value := edctnr.Text;
      ibSP.ParamByName('hexp').Value := time;
      ibSP.ParamByName('cexp').Value := 0;
      ibSP.ParamByName('cfor').Value := edcfor.Text;
      ibSP.ParamByName('ccom').Value := edccom.Text;
      ibSP.ParamByName('crep').Value := edcrep.Text;
      ibSP.ParamByName('cpag').Value := edcpag.Text;
      ibSP.ParamByName('qtve').Value := consulta_S.Fields[0].AsFloat;
      ibSP.ParamByName('rlve').Value := consulta_S.Fields[1].AsInteger;
      ibSP.ParamByName('tdsc').Value := latdsc.Caption;
      ibSP.ParamByName('pdsc').Value := edpdsc.Text;
      ibSP.ParamByName('cdsc').Value := edcdsc.Text;
      ibSP.ParamByName('adsc').Value := edadsc.Text;
      ibSP.ParamByName('tsde').Value := oTextToValor(edtsde.Text);
      ibSP.ParamByName('tcde').Value := oTextToValor(edtcde.Text);

      if cbstco.Text = 'DEVOLUÇÃO' then
      begin
        ibSP.ParamByName('qtve').Value := 0-consulta_S.Fields[0].AsFloat;
        ibSP.ParamByName('rlve').Value := 0-consulta_S.Fields[1].AsInteger;
        ibSP.ParamByName('tsde').Value := 0-oTextToValor(edtsde.Text);
        ibSP.ParamByName('tcde').Value := 0-oTextToValor(edtcde.Text);
      end;

      ibSP.ParamByName('conc').Value := cbcred.Text;
      ibSP.ParamByName('obse').Value := edobse.Text;
      ibSP.ParamByName('sta').Value  := '0';
      ibSP.ParamByName('comi').Value := '0';
      ibSP.ExecProc;

      IBTra.CommitRetaining;
    except
      edcdro.Text := inttostr(ID);
      IBTra.RollbackRetaining;
      messageBox(handle,'Problemas na gravação do cabeçalho !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    with frmprincipal.sp_sql do
    begin
      ibSP.StoredProcName := 'SP_SQL';
      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_prc']);
      SQL.Add('WHERE  EST_CDRO = '''+edcdro.Text+'''');
      SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['ped_com_ite']);
      SQL.Add('WHERE  ROM_CCAB = '''+edcdro.Text+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    rom_001.DisableControls;
    rom_001.First;
    while not rom_001.Eof do
    begin
      cdpd := 0;
      if rom_001ROM_DBAI.AsDateTime > 0 then
      cdpd := ID;
      if rom_001ROM_CDPD.AsInteger > 0 then
      cdpd := strtoint(edcdro.Text);

      try
        ibSP.StoredProcName := 'SP_PED_COM_ITE';
        ibSP.Prepare;

        ibSP.ParamByName('ped').Value  := 'PED_COM_ITE';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('ped').Value  := 'PED_COM_ITE_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

        ibSP.ParamByName('ID').Value   := 0;
        ibSP.ParamByName('CCAB').Value := edcdro.Text;
        ibSP.ParamByName('CDPD').Value := rom_001ROM_CDPD.AsInteger;
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
        ibSP.ParamByName('DBAI').Value := rom_001ROM_DBAI.AsDateTime;
        ibSP.ParamByName('DROM').Value := rom_001ROM_DROM.AsDateTime;
        ibSP.ParamByName('QPRD').Value := rom_001ROM_QPRD.AsInteger;
        ibSP.ParamByName('DPRD').Value := rom_001ROM_DPRD.AsDateTime;
        ibSP.ParamByName('RPRD').Value := rom_001ROM_RPRD.AsDateTime;
        ibSP.ParamByName('QEMB').Value := rom_001ROM_QEMB.AsInteger;
        ibSP.ParamByName('DEMB').Value := rom_001ROM_DEMB.AsDateTime;
        ibSP.ParamByName('REMB').Value := rom_001ROM_REMB.AsDateTime;
        ibSP.ParamByName('QDES').Value := rom_001ROM_QDES.AsInteger;
        ibSP.ParamByName('DDES').Value := rom_001ROM_DDES.AsDateTime;
        ibSP.ParamByName('RDES').Value := rom_001ROM_RDES.AsDateTime;
        ibSP.ParamByName('QEXP').Value := rom_001ROM_QEXP.AsInteger;
        ibSP.ParamByName('DEXP').Value := rom_001ROM_DEXP.AsDateTime;
        ibSP.ParamByName('CTNR').Value := rom_001ROM_CTNR.AsString;
        ibSP.ParamByName('OBSE').Value := rom_001ROM_OBSE.AsString;
        ibSP.ParamByName('CDET').Value := '';
        ibSP.ParamByName('COMI').Value := 0;
        ibSP.ParamByName('TPRC').Value := inttostr(cbprec.Items.IndexOf(TRIM(rom_001ROM_TPRC.AsString)));
        ibSP.ParamByName('ABCD').Value := rom_001ROM_ABCD.AsString;
        ibSP.ParamByName('DCOR').Value := rom_001ROM_DCOR.AsString;
        ibSP.ParamByName('PCOR').Value := rom_001ROM_PCOR.AsString;
        ibSP.ParamByName('DCO2').Value := rom_001ROM_DCO2.AsString;
        ibSP.ParamByName('PCO2').Value := rom_001ROM_PCO2.AsString;
        ibSP.ExecProc;

        ibSP.StoredProcName := 'SP_CAD_PRO_PRC';
        ibSP.Prepare;

        ibSP.ParamByName('est').Value  := 'CAD_PRO_PRC';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('est').Value  := 'CAD_PRO_PRC_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

        ibSP.ParamByName('id').Value   := 0;
        ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
        ibSP.ParamByName('cdro').Value := edcdro.Text;
        ibSP.ParamByName('cdpd').Value := cdpd;
        ibSP.ParamByName('cdbx').Value := 0;
        ibSP.ParamByName('cpro').Value := rom_001ROM_IPR2.AsInteger;
        ibSP.ParamByName('cusu').Value := edccom.Text;
        ibSP.ParamByName('dusu').Value := cbdcom.Text;
        ibSP.ParamByName('cfav').Value := edcfor.Text;
        ibSP.ParamByName('dfav').Value := eddfor.Text;
        ibSP.ParamByName('dcad').Value := eddcad.Date;
        ibSP.ParamByName('docu').Value := trim(copy(eddero.Text,1,10));
        ibSP.ParamByName('flag').Value := 'P';
        if rom_001ROM_CDPD.AsInteger > 0 then
        ibSP.ParamByName('flag').Value := 'E';
        ibSP.ParamByName('cdet').Value := '';
        ibSP.ParamByName('debi').Value := 0;
        if rom_001ROM_QTPD.AsFloat > 0 then
        ibSP.ParamByName('cred').Value := rom_001ROM_QTPD.AsFloat else
        ibSP.ParamByName('cred').Value := rom_001ROM_QTDE.AsFloat;
        ibSP.ParamByName('dmap').Value := '';
        ibSP.ParamByName('ctnr').Value := rom_001ROM_CTNR.AsString;
        ibSP.ParamByName('lote').Value := '';
        ibSP.ExecProc;

        if cdpd > 0 then
        begin
          ibSP.StoredProcName := 'SP_CAD_PRO_PRC';
          ibSP.Prepare;

          ibSP.ParamByName('est').Value  := 'CAD_PRO_PRC';
          if frmprincipal.parametrosID.AsInteger > 1 then
          ibSP.ParamByName('est').Value  := 'CAD_PRO_PRC_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

          ibSP.ParamByName('id').Value   := 0;
          ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
          ibSP.ParamByName('cdro').Value := edcdro.Text;
          ibSP.ParamByName('cdpd').Value := cdpd;
          ibSP.ParamByName('cdbx').Value := 0;
          ibSP.ParamByName('cpro').Value := rom_001ROM_IPR2.AsInteger;
          ibSP.ParamByName('cusu').Value := edccom.Text;
          ibSP.ParamByName('dusu').Value := cbdcom.Text;
          ibSP.ParamByName('cfav').Value := edcfor.Text;
          ibSP.ParamByName('dfav').Value := eddfor.Text;
          ibSP.ParamByName('dcad').Value := rom_001ROM_DBAI.AsDateTime;
          ibSP.ParamByName('docu').Value := trim(copy(eddero.Text,1,10));
          ibSP.ParamByName('flag').Value := 'P';
          if rom_001ROM_CDPD.AsInteger > 0 then
          ibSP.ParamByName('flag').Value := 'E';
          ibSP.ParamByName('cdet').Value := '';
          if rom_001ROM_QTPD.AsFloat > 0 then
          ibSP.ParamByName('debi').Value := rom_001ROM_QTPD.AsFloat else
          ibSP.ParamByName('debi').Value := rom_001ROM_QTDE.AsFloat;
          ibSP.ParamByName('cred').Value := 0;
          ibSP.ParamByName('dmap').Value := '';
          ibSP.ParamByName('ctnr').Value := rom_001ROM_CTNR.AsString;
          ibSP.ParamByName('lote').Value := '';
          ibSP.ExecProc;
        end;
      except
        edcdro.Text := inttostr(ID);

        IBTra.RollbackRetaining;
        messageBox(handle,'Problemas na Gravação dos Itens do Pedido !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
        Abort;
      end;
      
      IBTra.CommitRetaining;
      rom_001.Next;
    end;

    if ID = 0 then
       edcdro.Hint := 'Inclusão'
    else
       edcdro.Hint := 'Alteração';

    frmprincipal.Log_Eve('Programação','Pedido de Compra',edcdro.Hint,edcdro.Text,edcfor.Text,LOWERCASE(eddfor.Text),'','');

    IBTra.CommitRetaining;
    BSal.Enabled := false;
    BSal.Tag     := 1;
  finally
    pTRA.StartTransaction;

    pSP.StoredProcName := 'SP_EVENT';
    pSP.Prepare;
    pSP.Params[0].AsString := 'CTR_PRC';
    pSP.ExecProc;

    pTRA.Commit;

    Tag := 0;
    rom_001.EnableControls;
  end;
end;

procedure Tfrmven_prc.PESQUISA_PRODUTO(campo,cpro:string);
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
     if frmprincipal.psq_proPRO_STAV.AsString = 'I' then
     begin
       messageBox(handle,'Produto inativo !',PChar(self.Caption),MB_ICONERROR+MB_OK);
       Abort;
     end;

     if frmprincipal.psq_proPRO_STA.AsString <> '0' then
     begin
       messageBox(handle,'Produto enviado para a lixeira !',PChar(self.Caption),MB_ICONERROR+MB_OK);
       Abort;
     end;

     if ((frmprincipal.parametrosPAR_TIPO.AsString = '0') and (edqtsp.Text = '1')) or
        ((frmprincipal.parametrosPAR_TIPO.AsString = '4') and (edqtsp.Text = '1')) then
     begin
       if copy(frmprincipal.psq_proPRO_DUNI.AsString,1,1) = 'M' then
       begin
         if frmprincipal.psq_proPRO_METR.AsFloat <= 0 then
         begin
           messageBox(handle,'Produto sem metragem cadastrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
           Abort;
         end;
       end
       else if copy(rom_001ROM_DUNI.AsString,1,1) = 'K' then
       begin
         if frmprincipal.psq_proPRO_METR.AsFloat <= 0 then
         begin
           messageBox(handle,'Produto sem metragem cadastrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
           Abort;
         end;

         if frmprincipal.psq_proPRO_PESO.AsFloat <= 0 then
         begin
           messageBox(handle,'Produto sem peso da peça cadastrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
           Abort;
         end;

         if frmprincipal.psq_proPRO_PSCN.AsFloat <= 0 then
         begin
           messageBox(handle,'Produto sem peso do canudo cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
           Abort;
         end;
       end;
     end;

     if rom_001.State = dsBrowse then
     begin
       if (edQTPC.Text = 'PC') or (cbstpd.Text = 'DEVOLUÇÃO') then
          rom_001.Append
       else
       begin
         rom_001.First;
         if rom_001.Locate('ROM_CPRO',frmprincipal.psq_proPRO_CPRO.AsString,[]) then
         rom_001.Edit
         else
         rom_001.Append;
       end;
     end;

     if rom_001.State = dsInsert then
     begin
       rom_001ROM_PRCA.Value := frmprincipal.psq_proPRO_PREC.AsFloat;
       rom_001ROM_PRPA.Value := frmprincipal.psq_proPRO_PPRO.AsFloat;
       rom_001ROM_VPRC.Value := frmprincipal.psq_proPRO_VPRC.AsFloat;
       rom_001ROM_VPRO.Value := frmprincipal.psq_proPRO_VPRO.AsFloat;
       rom_001ROM_RPRC.Value := frmprincipal.psq_proPRO_RPRC.AsFloat;
       rom_001ROM_RPRO.Value := frmprincipal.psq_proPRO_RPRO.AsFloat;
       rom_001ROM_PCOM.Value := frmprincipal.psq_proPRO_PCOM.AsFloat;
       rom_001ROM_CUST.Value := frmprincipal.psq_proPRO_CUST.AsFloat;
       rom_001ROM_TPRC.Value := TRIM(cbprec.Text);
       rom_001ROM_PREC.Value := rom_001ROM_UNIT.AsFloat;
       rom_001ROM_DPRO.Value := frmprincipal.psq_proPRO_DPRO.AsString;
       rom_001ROM_DUNI.Value := frmprincipal.psq_proPRO_DUNI.AsString;
     end;

     rom_001ROM_IPRO.Value := frmprincipal.psq_proID.AsInteger;
     rom_001ROM_IPR2.Value := frmprincipal.psq_proID.AsInteger;
     rom_001ROM_CART.Value := frmprincipal.psq_proPRO_CART.AsString;
     rom_001ROM_CPRO.Value := frmprincipal.psq_proPRO_CPRO.AsString;
     rom_001ROM_CPR2.Value := frmprincipal.psq_proPRO_CPRO.AsString;
     rom_001ROM_CCOR.Value := frmprincipal.psq_proPRO_CCOR.AsInteger;
     rom_001ROM_DCOR.Value := frmprincipal.psq_proPRO_DCOR.AsString;
     rom_001ROM_CCO2.Value := frmprincipal.psq_proPRO_CCOR.AsInteger;
     rom_001ROM_DCO2.Value := frmprincipal.psq_proPRO_DCOR.AsString;
     rom_001ROM_DUNI.Value := frmprincipal.psq_proPRO_DUNI.AsString;
     rom_001ROM_FOTO.Value := frmprincipal.psq_proPRO_FOTO.Value;
     rom_001ROM_CBAR.Value := frmprincipal.psq_proPRO_CBAR.AsString;
     rom_001ROM_PPRO.Value := frmprincipal.psq_proPRO_PPRO.AsFloat;
     rom_001ROM_METR.Value := frmprincipal.psq_proPRO_METR.AsFloat;
     rom_001ROM_PESO.Value := frmprincipal.psq_proPRO_PESO.AsFloat;
     rom_001ROM_REND.Value := frmprincipal.psq_proPRO_REND.AsFloat;
     rom_001ROM_PSCN.Value := frmprincipal.psq_proPRO_PSCN.AsFloat;
     rom_001ROM_PSMR.Value := frmprincipal.psq_proPRO_PSMR.AsFloat;
     rom_001ROM_PIPI.Value := frmprincipal.psq_proPRO_PIPI.AsFloat;
     rom_001ROM_QDIS.Value := frmprincipal.psq_proC_QDIS.AsFloat;
     rom_001ROM_RLDI.Value := frmprincipal.psq_proC_RDIS.AsInteger;
     rom_001ROM_QTRL.Value := 1;

     if (copy(rom_001ROM_DUNI.AsString,1,1) = 'P') or (copy(rom_001ROM_DUNI.AsString,1,1) = 'C') then
     rom_001ROM_QTRL.Value := trunc(rom_001ROM_QTDE.AsFloat);

     aux.SQL.Clear;
     aux.SQL.Add('SELECT GRD_CGRD,GRD_DGRD FROM TAB_GRD');
     aux.SQL.Add('WHERE  GRD_CGRD = '''+frmprincipal.psq_proPRO_GRAD.AsString+'''');
     aux.Open;

     rom_001ROM_CGRD.Value := aux.Fields[0].AsString;
     rom_001ROM_DGRD.Value := aux.Fields[1].AsString;

     if rom_001.State = dsInsert then
     CARREGAFOTO(rom_001ROM_FOTO.BlobSize,rom_001ROM_FOTO,rom_001);
   end;
end;

procedure Tfrmven_prc.PESQUISA_COMPRADOR(pesq,chave: string);
begin
  if (chave = '0') or (chave = '') then
  exit;

  try
    tag := 1;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,FUN_APEL,FUN_CDEP,FUN_STA FROM CAD_FUN');
      if pesq = 'C' then
         SQL.Add('WHERE  ID = '''+chave+'''')
      else if pesq = 'F' then
         SQL.Add('WHERE  FUN_APEL = '''+chave+'''');
      Open;

      if fields[0].IsNull then
      begin
        edccom.Text := '';
        cbdcom.Text := '';

        if pesq = 'C' then
        begin
          edccom.SetFocus;
          messageBox(handle,'Código do comprador não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end
        else if pesq = 'F' then
        begin
          cbdcom.SetFocus;
          messageBox(handle,'Nome do comprador não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;
        Abort;
      end;

      if fields[3].AsString = '1' then
      begin
        edccom.Text := '';
        cbdcom.Text := '';

        if pesq = 'C' then
           edccom.SetFocus
        else if pesq = 'F' then
           cbdcom.SetFocus;

        messageBox(handle,PChar('Comprador '+fields[1].AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if (fields[2].AsInteger <> 1) and (fields[2].AsInteger <> 10) and (fields[2].AsInteger <> 11) and (fields[2].AsInteger <> 12) then
      begin
        edccom.Text := '';
        cbdcom.Text := '';

        if pesq = 'C' then
           edccom.SetFocus
        else if pesq = 'F' then
           cbdcom.SetFocus;

        messageBox(handle,PChar('Funcionário '+fields[1].AsString+' não está habilitado para efetuar compras !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;
      edccom.Text := fields[0].AsString;
      cbdcom.Text := fields[1].AsString;
    end;
  finally
    tag := 0;
    BSal.Enabled := true;
  end;
end;

procedure Tfrmven_prc.PESQUISA_REPRESENTANTE(pesq,chave: string);
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
          edcrep.SetFocus;
          messageBox(handle,'Código do representante não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end
        else if pesq = 'F' then
        begin
          cbdrep.SetFocus;
          messageBox(handle,'Nome do representante não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;
        Abort;
      end;

      if fields[2].AsString = '1' then
      begin
        edcrep.Text := '';
        cbdrep.Text := '';

        if pesq = 'C' then
           edcrep.SetFocus
        else if pesq = 'F' then
           cbdrep.SetFocus;

        messageBox(handle,PChar('Representante '+fields[1].AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if fields[3].AsString <> 'A' then
      begin
        edcrep.Text := '';
        cbdrep.Text := '';

        if pesq = 'C' then
           edcrep.SetFocus
        else if pesq = 'F' then
           cbdrep.SetFocus;

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

procedure Tfrmven_prc.PESQUISA_FPAGTO(pesq,chave: string);
begin
  if (chave = '0') or (chave = '') then
  exit;

  try
    tag := 1;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,PAG_DPAG,PAG_STA,PAG_PARC,PAG_DUPL FROM TAB_PAG');
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

procedure Tfrmven_prc.PESQUISA_FORNECEDOR(pesq,chave: string;cdsc: double);
begin
  if (chave = '0') or (chave = '') then
  exit;

  try
    tag := 1;

    with psq_for do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAD_FOR.ID,FOR_FANT,FOR_RAZA,FOR_CNPJ,FOR_CPF,FOR_CRED,FOR_CID,FOR_BAI,FOR_TLOG,FOR_LOGR,FOR_NUME,FOR_CEP,FOR_COMP,FOR_ESTA,FOR_STA,FOR_STAV,FOR_DPAG,');
      SQL.Add('       FOR_VDSC,FOR_DCAD,FOR_DFUN,FOR_DALT,FOR_DULT,FOR_VULT,FOR_DDD,FOR_TEL1,FOR_DTRA,FOR_CDEP,');
      SQL.Add('       TRIM(CAST(SUBSTRING(FOR_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) FOR_OBSO');
      SQL.Add('FROM   CAD_FOR');

      if pesq = 'I' then
         SQL.Add('WHERE  CAD_FOR.ID = '''+chave+'''')
      else if pesq = 'C' then
         SQL.Add('WHERE  FOR_CNPJ LIKE ''%'+edcnpj.Text+'%''')
      else if pesq = 'F' then
         SQL.Add('WHERE  FOR_FANT LIKE ''%'+chave+'%''')
      else if pesq = 'R' then
         SQL.Add('WHERE  FOR_RAZA LIKE ''%'+chave+'%''');

      Open;
      Last;
    end;

    if psq_for.recordcount = 0 then
    begin
      if pesq = 'I' then
      begin
        edcfor.SetFocus;
        messageBox(handle,'Código do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'C' then
      begin
        edcnpj.SetFocus;
        messageBox(handle,'C.N.P.J. do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'F' then
      begin
        eddfor.SetFocus;
        messageBox(handle,'Nome fantasia do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'R' then
      begin
        edrfor.SetFocus;
        messageBox(handle,'Razão social do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end;
      Abort;
    end
    else if psq_for.recordcount = 1 then
    begin
      if psq_forFOR_STA.AsString <> '0' then
      begin
        if pesq = 'I' then
           edcfor.SetFocus
        else if pesq = 'C' then
          edcnpj.SetFocus
        else if pesq = 'F' then
          eddfor.SetFocus
        else if pesq = 'R' then
          edrfor.SetFocus;

        messageBox(handle,PChar('Cliente '+psq_forFOR_FANT.AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if psq_forFOR_STAV.AsString <> 'A' then
      begin
        if pesq = 'I' then
           edcfor.SetFocus
        else if pesq = 'C' then
          edcnpj.SetFocus
        else if pesq = 'F' then
          eddfor.SetFocus
        else if pesq = 'R' then
          edrfor.SetFocus;

        if psq_forFOR_STAV.AsString = 'I' then
           messageBox(handle,PChar('Cliente '+psq_forFOR_FANT.AsString+' inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
        else if psq_forFOR_STAV.AsString = 'P' then
           messageBox(handle,PChar('Cliente '+psq_forFOR_FANT.AsString+' aguardando autorização de compra !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      edcfor.Text := psq_forID.AsString;
      edcnpj.Text := psq_forFOR_CNPJ.AsString;
      eddfor.Text := psq_forFOR_FANT.AsString;
      edrfor.Text := psq_forFOR_RAZA.AsString;
      edcdsc.Text := formatfloat('#,0.00########',psq_forFOR_VDSC.AsFloat);

      if frmprincipal.parametrosPAR_CEND.AsString = '1' then
      begin
        with consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT FOR_TLOV,FOR_LOGV,FOR_NUMV,FOR_COMV,FOR_BAIV,FOR_CIDV,FOR_ESTV FROM CAD_FOR');
          SQL.Add('WHERE  ID = '''+edcfor.Text+'''');
          Open;

          if (fields[0].AsString <> '') and (fields[1].AsString <> '') and (fields[2].AsString <> '') and (edobse.Tag = 0) then
          begin
            edobse.Lines.Clear;
            edobse.Tag := 1;
            edobse.Lines.Add('Entrega: '+fields[0].AsString+' '+fields[1].AsString+', '+fields[2].AsString+' '+fields[3].AsString+fields[4].AsString+' '+fields[5].AsString+' '+fields[6].AsString);
          end;  
        end;
      end;

      if psq_forFOR_DPAG.AsString <> '' then
      begin
        with consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT ID FROM TAB_PAG');
          SQL.Add('WHERE  PAG_STA  = ''0''');
          SQL.Add('AND    PAG_DPAG = '''+psq_forFOR_DPAG.AsString+'''');
          Open;

          if not fields[0].IsNull then
          begin
            edcpag.Text := fields[0].AsString;
            cbdpag.Text := psq_forFOR_DPAG.AsString;
          end;
        end;
      end;

      edobso.Lines.Clear;
      edobso.Lines.Text := TRIM(psq_forFOR_OBSO.AsString);
      edobso.Update;

      eddero.SetFocus;
      if edobso.Text <> '' then
      begin
        pcobs.ActivePageIndex := 1;
        ShowMessage(PChar('Cliente '+eddfor.Text+' com ocorrência registrado !')+#13+'Leia com atenção.');
      end;
      BSal.Enabled := true;
    end
    else
    begin
      frmcad_for := Tfrmcad_for.Create(self);
      with frmcad_for.cadastro do
      begin
        SQL.Clear;
        SQL.Add('SELECT CAD_FOR.ID,FOR_FANT,FOR_RAZA,FOR_CNPJ,FOR_CPF,FOR_CRED,FOR_CID,FOR_BAI,FOR_TLOG,FOR_LOGR,FOR_NUME,FOR_CEP,FOR_COMP,FOR_ESTA,FOR_STA,FOR_STAV,FOR_DPAG,');
        SQL.Add('       FOR_VDSC,FOR_DCAD,FOR_DFUN,FOR_DALT,FOR_DULT,FOR_VULT,FOR_DDD,FOR_TEL1,FOR_DTRA,FOR_CDEP,');
        SQL.Add('       TRIM(CAST(SUBSTRING(FOR_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) FOR_OBSO');
        SQL.Add('FROM   CAD_FOR');

        if pesq = 'C' then
          SQL.Add('WHERE  FOR_CNPJ LIKE ''%'+edcnpj.Text+'%''')
        else if pesq = 'F' then
           SQL.Add('WHERE  FOR_FANT LIKE ''%'+eddfor.Text+'%''')
        else if pesq = 'R' then
           SQL.Add('WHERE  FOR_RAZA LIKE ''%'+edrfor.Text+'%''');
        SQL.Add('AND    FOR_STA  = 0');
        SQL.Add('AND    FOR_STAV = ''A''');

        if pesq = 'I' then
        begin
          SQL.Add('ORDER BY CAD_FOR.ID');
          frmcad_for.dbgConsulta.FocusedColumn := 0;
        end
        else if pesq = 'C' then
        begin
          SQL.Add('ORDER BY FOR_CNPJ');
          frmcad_for.dbgConsulta.FocusedColumn := 1;
        end
        else if pesq = 'F' then
        begin
          SQL.Add('ORDER BY FOR_FANT');
          frmcad_for.dbgConsulta.FocusedColumn := 1;
        end
        else if pesq = 'R' then
        begin
          SQL.Add('ORDER BY FOR_RAZA');
          frmcad_for.dbgConsulta.FocusedColumn := 2;
        end;
        Open;
      end;

      frmcad_for.dbgConsulta.SetFocus;
      if (Screen.Width <= 1024) or (Screen.Width < 1280) then
      begin
        frmcad_for.FormStyle := fsNormal;
        frmcad_for.Visible   := false;
        frmcad_for.ShowModal;
      end
      else
        frmcad_for.Show;
    end;
  finally
    tag := 0;
    BSal.Enabled := true;
  end;
end;

procedure Tfrmven_prc.CARREGAFOTO(tam: Integer; valor: TBlobField; tab: TIbDataSet);
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

procedure Tfrmven_prc.AJUSTAFORM;
begin
  frmprincipal.pnbot.Visible := false;

  Self.top    := 0;
  Self.left   := 0;
  Self.Height := frmprincipal.pnCustomize.Height-4;
  Self.Width  := TELA_WIDTH;

  if Screen.Height > 900 then
  pnlpri.Height := 400;
  
  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
   self.Height := screen.Height;
   self.Width  :=  screen.Width;

   if frmprincipal.pnbot.Visible then
      self.Height := self.Height - frmprincipal.pnbot.Height;
  end;
end;

procedure Tfrmven_prc.ABRE_TABELA;
begin
  if not IBTra.Active   then IBTra.StartTransaction;
  if not tSHEILD.Active then tSHEILD.StartTransaction;

  with rom_001 do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM PED_COM_ITE');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM PED_COM_ITE');
    SelectSQL.Add('WHERE    ROM_FLAG = 0');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;
end;

procedure Tfrmven_prc.FormCreate(Sender: TObject);
begin
  BBot := frmprincipal.pnbot.Visible;
  
  pcobs.ActivePageIndex := 0;
  auto := false;
  ABRE_TABELA;

  edcdcx.Text  := '0';
  edcdro.Text  := '0';
  eddcad.Date  := strtodate(SLPrincipal.Values['data_sistema']);
  edccom.Text  := frmprincipal.cad_usuUSU_CUSU.AsString;
  cbdcom.Text  := frmprincipal.cad_usuUSU_DUSU.AsString;
  edcrep.Text  := frmprincipal.parametrosPAR_CREP.AsString;
  cbdrep.Text  := '';
  cbstpd.Text  := frmprincipal.parametrosPAR_STPD.AsString;
  cbstco.Text  := 'SEM COBRANÇA';
  PESQUISA_TIPO;

  cbcred.Text  := '1';
  edcdnf.Text  := '0';
  edcdpd.Text  := '0';
  edcdbx.Text  := '0';

  try
    tag := 1;
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   FUN_APEL FROM CAD_FUN');
      SQL.Add('WHERE    FUN_CDEP = 1');
      SQL.Add('AND      FUN_STA  = ''0''');
      SQL.Add('ORDER BY FUN_APEL');
      Open;
      while not eof do
      begin
        cbdcom.Items.Add(fields[0].AsString);
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
        if fields[0].AsString <> 'DEVOLUÇÃO' then
           cbstpd.Items.Add(fields[0].AsString);
        next;
      end;

      cbstco.Items.Add('CARTEIRA');
      cbstco.Items.Add('BANCÁRIO');

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
        SQL.Add('WHERE  PAG_STA  = ''0''');
        SQL.Add('AND    ID = '''+edcpag.Text+'''');
        Open;

        edcpag.Text := inttostr(fields[0].AsInteger);
        cbdpag.Text := fields[1].AsString;
      end;
    end;
  finally
    tag := 0;
    BSal.Enabled := false;
  end;

  with pEVE do
  begin
    UnregisterEvents;
    Events.Add('CTR_PRC');
    RegisterEvents;
  end;
end;

procedure Tfrmven_prc.FormShow(Sender: TObject);
begin
  try
    if assigned(frmctr_prc) then
    begin
      cbstpd.Text := frmctr_prc.cadastroROM_STPD.AsString;
      PESQUISA_TIPO;
      
      if frmctr_prc.siARO.Tag = 1 then
      begin
        try
          edobse.Tag := 1;

          PESQUISA_FORNECEDOR('I',frmctr_prc.cadastroROM_CFOR.AsString,frmctr_prc.cadastroROM_CDSC.AsFloat);
          PESQUISA_COMPRADOR('C',frmctr_prc.cadastroROM_CCOM.AsString);
          PESQUISA_REPRESENTANTE('C',frmctr_prc.cadastroROM_CREP.AsString);

          if frmctr_prc.Tag = 0 then
          begin
            Tag := 1;

            ABRE_TABELA;

            edcfor.Text := frmctr_prc.cadastroROM_CFOR.AsString;

            edcdbx.Text := inttostr(frmctr_prc.cadastroROM_CDBX.AsInteger);
            edcdpd.Text := inttostr(frmctr_prc.cadastroROM_CDRO.AsInteger);
            edcdnf.Text := inttostr(frmctr_prc.cadastroROM_CDNF.AsInteger);
            cbcred.Text := frmctr_prc.cadastroROM_CONC.AsString;
            edcdro.Text := frmctr_prc.cadastroID.AsString;
            eddero.Text := frmctr_prc.cadastroROM_DERO.AsString;
            edcdcx.Text := inttostr(frmctr_prc.cadastroROM_CDCX.AsInteger);
            eddcad.Date := frmctr_prc.cadastroROM_DROM.AsDateTime;
            eddexp.Date := frmctr_prc.cadastroROM_DEXP.AsDateTime;
            eddbai.Date := frmctr_prc.cadastroROM_DBAI.AsDateTime;
            eddprd.Date := frmctr_prc.cadastroROM_DPRD.AsDateTime;
            edrprd.Date := frmctr_prc.cadastroROM_RPRD.AsDateTime;
            eddemb.Date := frmctr_prc.cadastroROM_DEMB.AsDateTime;
            edremb.Date := frmctr_prc.cadastroROM_REMB.AsDateTime;
            edddes.Date := frmctr_prc.cadastroROM_DDES.AsDateTime;
            edrdes.Date := frmctr_prc.cadastroROM_RDES.AsDateTime;
            edhrom.Text := timetostr(frmctr_prc.cadastroROM_HROM.AsDateTime);
            edhexp.Text := timetostr(frmctr_prc.cadastroROM_HEXP.AsDateTime);
            edctnr.Text := frmctr_prc.cadastroROM_CTNR.AsString;

            edobse.Text := frmctr_prc.cadastroROM_OBSE.AsString;
            edobso.Text := '';

            edccom.Text := frmctr_prc.cadastroROM_CCOM.AsString;
            edcrep.Text := frmctr_prc.cadastroROM_CREP.AsString;


            cbstco.Text    := frmctr_prc.cadastroROM_STCO.AsString;
            edcpag.Text    := frmctr_prc.cadastroROM_CPAG.AsString;

            latdsc.Caption := frmctr_prc.cadastroROM_TDSC.AsString;
            edpdsc.Text    := formatfloat('#,0.00########',frmctr_prc.cadastroROM_PDSC.AsFloat);
            edcdsc.Text    := formatfloat('#,0.00########',frmctr_prc.cadastroROM_CDSC.AsFloat);
            edadsc.Text    := formatfloat('#,0.00########',frmctr_prc.cadastroROM_ADSC.AsFloat);

            PESQUISA_FPAGTO('C',frmctr_prc.cadastroROM_CPAG.AsString);

            tag := 1;
            frmctr_prc.rom_ite.First;
            while not frmctr_prc.rom_ite.Eof do
            begin
              rom_001.Append;
              PESQUISA_PRODUTO('',frmctr_prc.rom_iteROM_CPRO.AsString);

              rom_001ROM_IPRO.Value := frmctr_prc.rom_iteROM_CPRO.AsInteger;
              rom_001ROM_IPR2.Value := frmctr_prc.rom_iteROM_CPR2.AsInteger;
              rom_001ROM_DPRO.Value := frmctr_prc.rom_iteROM_DPRO.AsString;
              rom_001ROM_CCOR.Value := frmctr_prc.rom_itePRO_CCOR.AsInteger;
              rom_001ROM_DCOR.Value := frmctr_prc.rom_itePRO_DCOR.AsString;
              rom_001ROM_DCO2.Value := frmctr_prc.rom_iteROM_DCO2.AsString;
              rom_001ROM_DUNI.Value := frmctr_prc.rom_iteROM_DUNI.AsString;
              rom_001ROM_PCOR.Value := frmctr_prc.rom_iteROM_PCOR.AsString;
              rom_001ROM_ABCD.Value := frmctr_prc.rom_iteROM_ABCD.AsString;
              rom_001ROM_CTNR.Value := frmctr_prc.rom_iteROM_CTNR.AsString;
              rom_001ROM_OBSE.Value := frmctr_prc.rom_iteROM_OBSE.AsString;

              rom_001ROM_CDPD.Value := frmctr_prc.rom_iteROM_CDPD.AsInteger;
              if rom_001ROM_CDPD.AsInteger > 0 then
              rom_001ROM_CDRO.Value := 1 else
              rom_001ROM_CDRO.Value := 0;

              if frmctr_prc.rom_iteROM_TPRC.AsString = '' then
              rom_001ROM_TPRC.Value := TRIM(cbprec.Items.Strings[0]) else
              rom_001ROM_TPRC.Value := TRIM(cbprec.Items.Strings[frmctr_prc.rom_iteROM_TPRC.AsInteger]);

              rom_001ROM_QTDE.Value := frmctr_prc.rom_iteROM_QTDE.AsFloat;
              rom_001ROM_QTRL.Value := frmctr_prc.rom_iteROM_QTRL.AsInteger;
              rom_001ROM_QTPD.Value := frmctr_prc.rom_iteROM_QTPD.AsFloat;
              rom_001ROM_RLPD.Value := frmctr_prc.rom_iteROM_RLPD.AsInteger;
              rom_001ROM_UNIT.Value := frmctr_prc.rom_iteROM_UNIT.AsFloat;
              rom_001ROM_PREC.Value := frmctr_prc.rom_iteROM_PREC.AsFloat;

              rom_001ROM_QPRD.Value := frmctr_prc.rom_iteROM_QPRD.AsInteger;
              rom_001ROM_QEMB.Value := frmctr_prc.rom_iteROM_QEMB.AsInteger;
              rom_001ROM_QEXP.Value := frmctr_prc.rom_iteROM_QEXP.AsInteger;
              rom_001ROM_QDES.Value := frmctr_prc.rom_iteROM_QDES.AsInteger;

              rom_001ROM_DROM.Value := frmctr_prc.rom_iteROM_DROM.AsDateTime;
              rom_001ROM_DPRD.Value := frmctr_prc.rom_iteROM_DPRD.AsDateTime;
              rom_001ROM_RPRD.Value := frmctr_prc.rom_iteROM_RPRD.AsDateTime;
              rom_001ROM_DEMB.Value := frmctr_prc.rom_iteROM_DEMB.AsDateTime;
              rom_001ROM_REMB.Value := frmctr_prc.rom_iteROM_REMB.AsDateTime;
              rom_001ROM_DDES.Value := frmctr_prc.rom_iteROM_DDES.AsDateTime;
              rom_001ROM_RDES.Value := frmctr_prc.rom_iteROM_RDES.AsDateTime;
              rom_001ROM_DEXP.Value := frmctr_prc.rom_iteROM_DEXP.AsDateTime;
              rom_001ROM_DBAI.Value := frmctr_prc.rom_iteROM_DBAI.AsDateTime;
              rom_001.Post;
              frmctr_prc.rom_ite.Next;
            end;
            rom_001.Close;
            rom_001.Open;
          end;
        finally
          tag := 0;
          TOTAL;

          BSal.Enabled := false;
        end;
      end;
    end;
  finally
    AJUSTAFORM;
    DISPLAY_GRID;
  end;
end;

procedure Tfrmven_prc.FormKeyDown(Sender: TObject; var Key: Word;
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
       VK_INSERT: if rom_001.State = dsBrowse then siINC.Click;               
       121      : if BSal.Enabled then BSal.Click;
  end;
end;

procedure Tfrmven_prc.BSairClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmven_prc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IBTra.Active   := false;
  tSHEILD.Active := false;
  action         := cafree;

  if frmven_prc <> nil then
  begin
    frmven_prc.Release;
    frmven_prc := nil;
  end;  
end;

procedure Tfrmven_prc.edtsdeKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmven_prc.siDELClick(Sender: TObject);
begin
  if rom_001ID.IsNull then
     abort;

  if yesno(handle,'Excluir Item ?') =   mrNo then
     abort;

  if (rom_001ROM_CDOC.AsInteger = 0) then
     rom_001.Delete
  else
  begin
    rom_001.Edit;
    rom_001ROM_FLAG.Value := 1;
    rom_001.Post;
  end;
end;

procedure Tfrmven_prc.siINCClick(Sender: TObject);
begin
  if rom_001.State in [dsEdit,dsInsert] then
     abort;

  rom_001.Append;
end;

procedure Tfrmven_prc.siSAVClick(Sender: TObject);
begin
  if rom_001.State in [dsEdit,dsInsert] then
     rom_001.Post;
end;

procedure Tfrmven_prc.siCANClick(Sender: TObject);
begin
  rom_001.Cancel;
end;

procedure Tfrmven_prc.siALTClick(Sender: TObject);
begin
  if (rom_001ID.IsNull) or (rom_001.State in [dsEdit,dsInsert]) then
     abort;

  rom_001.Edit;
end;

procedure Tfrmven_prc.rom_001AfterCancel(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := true;
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;
  end;  
end;

procedure Tfrmven_prc.rom_001AfterEdit(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := false;
    siALT.Enabled := false;
    siDEL.Enabled := false;
    siSAV.Enabled := true;
    siCAN.Enabled := true;

    dbgrom.SetFocus
  end;
end;

procedure Tfrmven_prc.rom_001AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  tSHEILD.CommitRetaining;

  if tag = 0 then
  begin
    siINC.Enabled := true;
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;

    if (rom_001ROM_DPRO.AsString <> '') then
        BSal.Enabled := true;

    wRec := rom_001.GetBookmark;
    
    rom_001.Close;
    rom_001.Open;
    if (wRec = Nil) or (rom_001.Fields[0].IsNull) then rom_001.last
       else rom_001.GotoBookmark(wRec);
    rom_001.FreeBookmark(wRec);

    dbgrom.SetFocus;
    TOTAL;
  end;
end;

procedure Tfrmven_prc.TOTAL;
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
    SQL.Add('SELECT SUM(ROM_TOTA),SUM(ROM_QTDE),SUM(ROM_QTRL) FROM PED_COM_ITE');
    SQL.Add('WHERE  ROM_FLAG = 0');
    Open;
  end;

  if (edpdsc.Text = '') or (oTextToValor(edpdsc.Text) < 0) then
      edpdsc.Text := '0';

  edtsde.Text := formatfloat('R$ #,0.00########',consulta_S.fields[0].AsFloat);
  edtcde.Text := formatfloat('R$ #,0.00########',consulta_S.fields[0].AsFloat);
  edtqtrl.Text:= formatfloat('#,0.00########'   ,consulta_S.fields[1].AsFloat)+'/'+
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

procedure Tfrmven_prc.edderoKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmven_prc.rom_001AfterInsert(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := false;
    siALT.Enabled := false;
    siDEL.Enabled := false;
    siSAV.Enabled := true;
    siCAN.Enabled := true;
  end;

  if frmprincipal.parametrosPAR_PGRD.AsString = '4' then
  begin
    if not dbgromROM_DCOR.Visible then
    dbgrom.FocusedColumn := 2 else
    dbgrom.FocusedColumn := 3;
  end else  
  dbgrom.FocusedColumn := 1;
  dbgrom.SetFocus;
end;

procedure Tfrmven_prc.rom_001BeforeCancel(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := true;
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;
  end;

  if rom_001.RecordCount = 0 then
  begin
    rom_001.Close;
    rom_001.Open;
    ABORT;
  end;
end;

procedure Tfrmven_prc.edccomValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edccom.Text = '' then
  begin
    cbdcom.Text := '';
    abort;
  end;

  PESQUISA_COMPRADOR('C',edccom.Text);
end;

procedure Tfrmven_prc.cbdcomChange(Sender: TObject);
begin
  if tag = 0 then
     BSal.Enabled := true;
end;

procedure Tfrmven_prc.cbdcomExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    PESQUISA_COMPRADOR('F',cbdcom.Text);
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

procedure Tfrmven_prc.edcrepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcrep.Text = '' then
  begin
    cbdrep.Text := '';
    abort;
  end;

  PESQUISA_REPRESENTANTE('C',edcrep.Text);
end;

procedure Tfrmven_prc.cbdrepChange(Sender: TObject);
begin
  if tag = 0 then
     BSal.Enabled := true;
end;

procedure Tfrmven_prc.cbdrepExit(Sender: TObject);
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


procedure Tfrmven_prc.edcpagValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcpag.Text = '' then
  begin
    cbdpag.Text := '';
    abort;
  end;
  
  PESQUISA_FPAGTO('C',edcpag.Text);
end;

procedure Tfrmven_prc.cbdpagExit(Sender: TObject);
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

procedure Tfrmven_prc.cbdpagChange(Sender: TObject);
begin
  if tag = 0 then
     BSal.Enabled := true;
end;

procedure Tfrmven_prc.edcforValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var cfor: integer;
begin
  if edcfor.Text = '' then
  begin
    eddfor.Text := '';
    edcnpj.Text := '';
    edrfor.Text := '';
    abort;
  end;

  try
    cfor := strtoint(edcfor.Text)
  except
    edcfor.SetFocus;
    raise exception.Create('Código de cliente inválido !');
  end;

  PESQUISA_FORNECEDOR('I',inttostr(cfor),0);
end;

procedure Tfrmven_prc.edcnpjValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcnpj.Text = '' then
  begin
    edcfor.Text := '';
    eddfor.Text := '';
    edrfor.Text := '';
    abort;
  end;
  PESQUISA_FORNECEDOR('C',edcnpj.Text,0);
end;

procedure Tfrmven_prc.eddforValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if eddfor.Text = '' then
  begin
    edcfor.Text := '';
    edcnpj.Text := '';
    edrfor.Text := '';
    abort;
  end;
  PESQUISA_FORNECEDOR('F',eddfor.Text,0);
end;

procedure Tfrmven_prc.edrforValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edrfor.Text = '' then
  begin
    edcfor.Text := '';
    edcnpj.Text := '';
    eddfor.Text := '';
    abort;
  end;
  PESQUISA_FORNECEDOR('R',edrfor.Text,0);
end;

procedure Tfrmven_prc.rom_001AfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
  TOTAL;
end;

procedure Tfrmven_prc.rom_001AfterOpen(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := true;
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;
  end;
end;

procedure Tfrmven_prc.rom_001NewRecord(DataSet: TDataSet);
begin
  rom_001ID.Value       := 0;
  rom_001ROM_FLAG.Value := 0;
  rom_001ROM_CDOC.Value := 0;
  rom_001ROM_VDSC.Value := 0;
  rom_001ROM_CTNR.Value := edctnr.Text;
  if edDCAD.Date > 0 then
  rom_001ROM_DROM.Value := edDCAD.Date;
  if edDEXP.Date > 0 then
  rom_001ROM_DEXP.Value := edDEXP.Date;
  
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT MAX(ROM_ITEM) FROM PED_COM_ITE');
    SQL.Add('WHERE  ROM_FLAG = 0');
    Open;
    if fields[0].IsNull then
       rom_001ROM_ITEM.Value := '0001'
    else
       rom_001ROM_ITEM.Value := oStrZero(fields[0].AsInteger + 1,4);
  end;
end;

procedure Tfrmven_prc.dtsrom_001DataChange(Sender: TObject; Field: TField);
begin
  CARREGAFOTO(rom_001ROM_FOTO.BlobSize,rom_001ROM_FOTO,rom_001);
  if rom_001.State = dsBrowse then
  DISPLAY_GRID;
  sbPED.Panels[0].Text := rom_001ROM_OBSE.AsString;
end;

procedure Tfrmven_prc.FormActivate(Sender: TObject);
begin
  if not assigned(frmctr_prc) then
     edcfor.SetFocus;
end;

procedure Tfrmven_prc.rom_001ROM_VDSCValidate(Sender: TField);
begin
  if rom_001ROM_VDSC.AsFloat = 0 then
  rom_001ROM_UNIT.Value := rom_001ROM_PREC.Value
  else
  rom_001ROM_UNIT.Value := rom_001ROM_PREC.AsFloat - ((rom_001ROM_PREC.AsFloat*rom_001ROM_VDSC.AsFloat)/100);
end;

procedure Tfrmven_prc.rom_001ROM_QTDEValidate(Sender: TField);
begin
  if rom_001ROM_DPRO.AsString <> '' then
     rom_001ROM_TOTA.Value := RoundTO(rom_001ROM_QTDE.AsFloat * rom_001ROM_UNIT.AsFloat,-2);

  rom_001ROM_VIPI.Value := 0;
  if rom_001ROM_PIPI.AsFloat > 0 then
  rom_001ROM_VIPI.Value := roundto((rom_001ROM_TOTA.AsFloat * rom_001ROM_PIPI.AsFloat) /100,-2);
end;

procedure Tfrmven_prc.BSalClick(Sender: TObject);
begin
  try
    SALVA;
  finally
    if BSal.Enabled then
       abort;
  end;

  Close;
end;

procedure Tfrmven_prc.FormCloseQuery(Sender: TObject;
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

procedure Tfrmven_prc.edpdscValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpdsc.Text = '' then
     edpdsc.Text := '0';

  edpdsc.Text := formatfloat('#,0.00########',oTextToValor(edpdsc.Text));
  TOTAL;
end;

procedure Tfrmven_prc.dbgromROM_UNITValidate(Sender: TObject;
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

procedure Tfrmven_prc.cbstpdChange(Sender: TObject);
begin
  if tag = 0 then
     BSal.Enabled := true;
end;

procedure Tfrmven_prc.cbstpdExit(Sender: TObject);
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

procedure Tfrmven_prc.latdscClick(Sender: TObject);
begin
  if latdsc.Caption = '%' then
     latdsc.Caption := '$'
  else
     latdsc.Caption := '%';
  latdsc.Update;
end;

procedure Tfrmven_prc.cbcredChange(Sender: TObject);
begin
  if tag = 0 then
     BSal.Enabled := true;
end;

procedure Tfrmven_prc.BVisClick(Sender: TObject);
begin
  try
    SALVA;
  finally
    if BSal.Enabled then
       abort;
  end;

  IMPRIME_PEDIDO(TRUE);
end;

procedure Tfrmven_prc.BPriClick(Sender: TObject);
begin
  try
    SALVA;
  finally
    if BSal.Enabled then
       abort;
  end;

  IMPRIME_PEDIDO(FALSE);
end;

procedure Tfrmven_prc.rom_002AfterPost(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
end;

procedure Tfrmven_prc.edderoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BSal.Enabled := true;
end;

procedure Tfrmven_prc.rom_001ROM_TPRCValidate(Sender: TField);
begin
  if tag = 1 then
     exit;

  if rom_001ROM_TPRC.AsString = 'ATACADO - NORMAL' then
  begin
    rom_001ROM_PREC.Value := rom_001ROM_PRCA.AsFloat;
    rom_001ROM_UNIT.Value := rom_001ROM_PRCA.AsFloat;
  end
  else if rom_001ROM_TPRC.AsString = 'ATACADO - PROMOÇÃO' then
  begin
    rom_001ROM_PREC.Value := rom_001ROM_PRPA.AsFloat;
    rom_001ROM_UNIT.Value := rom_001ROM_PRPA.AsFloat;
  end
  else if rom_001ROM_TPRC.AsString = 'VAREJO - NORMAL' then
  begin
    rom_001ROM_PREC.Value := rom_001ROM_VPRC.AsFloat;
    rom_001ROM_UNIT.Value := rom_001ROM_VPRC.AsFloat;
  end
  else if rom_001ROM_TPRC.AsString = 'VAREJO - PROMOÇÃO' then
  begin
    rom_001ROM_PREC.Value := rom_001ROM_VPRO.AsFloat;
    rom_001ROM_UNIT.Value := rom_001ROM_VPRO.AsFloat;
  end
  else if rom_001ROM_TPRC.AsString = 'REPRESENTAÇÃO - NORMAL' then
  begin
    rom_001ROM_PREC.Value := rom_001ROM_RPRC.AsFloat;
    rom_001ROM_UNIT.Value := rom_001ROM_RPRC.AsFloat;
  end
  else if rom_001ROM_TPRC.AsString = 'REPRESENTAÇÃO - PROMOÇÃO' then
  begin
    rom_001ROM_PREC.Value := rom_001ROM_RPRO.AsFloat;
    rom_001ROM_UNIT.Value := rom_001ROM_RPRO.AsFloat;
  end
  else if rom_001ROM_TPRC.AsString = 'COMPRA' then
  begin
    rom_001ROM_PREC.Value := rom_001ROM_PCOM.AsFloat;
    rom_001ROM_UNIT.Value := rom_001ROM_PCOM.AsFloat;
  end
  else if rom_001ROM_TPRC.AsString = 'CUSTO' then
  begin
    rom_001ROM_PREC.Value := rom_001ROM_CUST.AsFloat;
    rom_001ROM_UNIT.Value := rom_001ROM_CUST.AsFloat;
  end;
end;

function RETORNA_DATA(old: string) : TDate;
var
  data: TDate;
  BRet: boolean;
begin
  data := 0;

  try
    data := strtodate(old);
    BRet := true;
  except
    Bret := false;
  end;

  if not BRet then
  begin
    try
      data := strtodate(copy(old,1,2)+'/'+copy(old,3,2)+'/'+copy(old,5,2));
      BRet := true;
    except
      Bret := false;
    end;
  end;

  if (not BRet) or (old = '') then
  result := 0 else
  result := data;
end;

procedure Tfrmven_prc.dbgromKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if rom_001.State = dsBrowse then
                 dbgrom.FocusedColumn := dbgrom.FocusedColumn + 1 else
                 begin
                   if (dbgrom.FocusedColumn = 1) or (dbgrom.FocusedColumn = 2) or (dbgrom.FocusedColumn = 3) then
                   dbgrom.FocusedColumn := RETORNA_FOCO('ROM_QTDE') else
                   dbgrom.FocusedColumn := dbgrom.FocusedColumn + 1;

                   if ((dbgrom.Columns[dbgrom.FocusedAbsoluteIndex-1].Name = 'dbgromROM_QTDE') and (rom_001ROM_QTDE.AsFloat > 0) and (rom_001ROM_UNIT.AsFloat > 0)) or
                      ((dbgrom.Columns[dbgrom.FocusedAbsoluteIndex-1].Name = 'dbgromROM_QTRL') and (rom_001ROM_QTDE.AsFloat > 0) and (rom_001ROM_UNIT.AsFloat > 0)) or
                      ((dbgrom.Columns[dbgrom.FocusedAbsoluteIndex-1].Name = 'dbgromROM_UNIT') and (rom_001ROM_QTDE.AsFloat > 0) and (rom_001ROM_UNIT.AsFloat > 0)) then
                   begin
                     rom_001.Next;
                     if rom_001.Eof then
                     rom_001.Append;
                   end;
                 end;  
               end;
    VK_INSERT: if rom_001.State = dsBrowse then            siINC.Click;
    VK_DELETE: if rom_001.State = dsBrowse then            siDEL.Click;
    VK_ESCAPE: if rom_001.State = dsBrowse then close else siCAN.Click;
  end;
end;

procedure Tfrmven_prc.edctnrValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  try
    Tag := 1;
    rom_001.DisableControls;
    rom_001.First;
    while not rom_001.Eof do
    begin
      rom_001.Edit;
      rom_001ROM_CTNR.Value := edctnr.Text;
      rom_001.Post;
      rom_001.Next;
    end;
  finally
    Tag := 0;
    rom_001.EnableControls;
  end;
end;

procedure Tfrmven_prc.rom_001ROM_QPRDValidate(Sender: TField);
begin
  if rom_001ROM_QPRD.AsInteger = 0 then
  begin
    rom_001ROM_DPRD.AsString := '';
    rom_001ROM_QEMB.Value    := 0;
    rom_001ROM_QDES.Value    := 0;
    rom_001ROM_QEXP.Value    := 0;
  end
  else
  begin
    rom_001ROM_DPRD.Value := incDay(rom_001ROM_DROM.AsDateTime,rom_001ROM_QPRD.AsInteger);
    rom_001ROM_QEMB.Value := 7;
    rom_001ROM_QDES.Value := 42;
    rom_001ROM_QEXP.Value := 15;
  end;
end;

procedure Tfrmven_prc.rom_001ROM_QEMBValidate(Sender: TField);
begin
  if rom_001ROM_QEMB.AsInteger = 0 then
  rom_001ROM_DEMB.AsString := '' else
  rom_001ROM_DEMB.Value    := incDay(rom_001ROM_DPRD.AsDateTime,rom_001ROM_QEMB.AsInteger);
end;

procedure Tfrmven_prc.rom_001ROM_QDESValidate(Sender: TField);
begin
  if rom_001ROM_QDES.AsInteger = 0 then
  rom_001ROM_DDES.AsString := '' else
  rom_001ROM_DDES.Value    := incDay(rom_001ROM_DEMB.AsDateTime,rom_001ROM_QDES.AsInteger);
end;

procedure Tfrmven_prc.rom_001ROM_QEXPValidate(Sender: TField);
begin
  if rom_001ROM_QEXP.AsInteger = 0 then
  rom_001ROM_DEXP.AsString := '' else
  rom_001ROM_DEXP.Value    := incDay(rom_001ROM_DDES.AsDateTime,rom_001ROM_QEXP.AsInteger);
end;

procedure Tfrmven_prc.rom_001ROM_QTPDValidate(Sender: TField);
begin
  if rom_001ROM_QTPD.AsInteger = 0 then
  begin
    rom_001ROM_DBAI.AsString := '';
    rom_001ROM_RPRD.AsString := '';
    rom_001ROM_REMB.AsString := '';
    rom_001ROM_RDES.AsString := '';
  end;


  {else
  begin
    if rom_001ROM_DEXP.AsDateTime > 0 then
    begin
      rom_001ROM_DBAI.Value := rom_001ROM_DEXP.AsDateTime;
      rom_001ROM_RPRD.Value := rom_001ROM_DPRD.AsDateTime;
      rom_001ROM_REMB.Value := rom_001ROM_DEMB.AsDateTime;
      rom_001ROM_RDES.Value := rom_001ROM_DDES.AsDateTime;
    end
    else
    begin
      rom_001ROM_DBAI.Value := strtodate(SLPrincipal.Values['data_sistema']);
      rom_001ROM_RPRD.Value := strtodate(SLPrincipal.Values['data_sistema']);
      rom_001ROM_REMB.Value := strtodate(SLPrincipal.Values['data_sistema']);
      rom_001ROM_RDES.Value := strtodate(SLPrincipal.Values['data_sistema']);
    end;
  end;}
end;

procedure Tfrmven_prc.dbgromROM_QTDEValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if dbgrom.EditingText <> '' then
  begin
    rom_001ROM_QTDE.Value := strtofloat(dbgrom.EditingText);
    EDITAQUANTIDADE;
  end;  
end;

procedure Tfrmven_prc.dbgromCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if AColumn = dbgromROM_TOTA then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure Tfrmven_prc.dbgromROM_CPROValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var
    cpro: string;
begin
  cpro := dbgrom.EditingText;

  if not (rom_001.State in [dsEdit,dsInsert]) or (cpro = '') then
  exit;

  if (frmprincipal.parametrosPAR_FANT.AsString = 'MIXXON') or
     (frmprincipal.parametrosPAR_FANT.AsString = 'SQUAFF') or
     (frmprincipal.parametrosPAR_FANT.AsString = 'FOR WHY') then
  begin
    if copy (cpro,3,1) <> '-' then
    cpro := copy(cpro,1,2)+'-'+copy(cpro,3,3);
  end;

  if (frmprincipal.parametrosPAR_TIPO.AsString = '0') or (frmprincipal.parametrosPAR_TIPO.AsString = '1') or (frmprincipal.parametrosPAR_TIPO.AsString = '4') then
  cpro := RETORNA_PRODUTO(cpro);

  if frmprincipal.parametrosPAR_PGRD.AsString = '0' then
  PESQUISA_PRODUTO('Referencia',cpro) else
  PESQUISA_PRODUTO('Produto',cpro);
end;

procedure Tfrmven_prc.dbgromROM_DPROValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var
    cpro: string;
begin
  cpro := dbgrom.EditingText;

  if not (rom_001.State in [dsEdit,dsInsert]) or (cpro = '') then
  exit;

  PESQUISA_PRODUTO('Descrição',cpro);
end;

procedure Tfrmven_prc.dbgromROM_CDROValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
var
  NewString: string;
  ClickedOK: Boolean;
begin
  if rom_001.State in [dsEdit,dsInsert] then
  begin
    rom_001ROM_CDRO.Value := 1;
    rom_001ROM_CDPD.Value := 1;
    ClickedOK := InputQuery('Pedido de Venda Exclusivo', 'Número', NewString);

    if ClickedOK then
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PED_PRG_CAB.ID,PED_PRG_CAB.ROM_DROM,CLI_FANT,USU_DUSU');
      SQL.Add('FROM   CAD_CLI,CAD_USU,'+SLPrincipal.Values['ped_prg_cab']+' "PED_PRG_CAB"');
      SQL.Add('WHERE  PED_PRG_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND    PED_PRG_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND    PED_PRG_CAB.ROM_DERO = '''+NewString+'''');
      Open;

      if not fields[0].IsNull then
      begin
        rom_001ROM_CDRO.Value := 1;
        rom_001ROM_CDPD.Value := fields[0].AsInteger;
        messageBox(handle,PChar('Pedido Número: '+NewString+' Encontrado !'+#13+
                                'Data Pedido '+formatDateTime('dd/mm/yy',fields[1].AsDateTime)+#13+
                                'Cliente '+fields[2].AsString+#13+
                                'Vendedor '+fields[3].AsString),
                          PChar(Self.Caption),MB_ICONINFORMATION+MB_OK);
      end;
    end;
  end;
end;

procedure Tfrmven_prc.rom_001BeforePost(DataSet: TDataSet);
begin
  if (rom_001ROM_CDRO.AsInteger = 1) and (rom_001ROM_CDPD.AsInteger = 0) then
  DataBaseError('Para produtos com exclusividade é obrigatório ter programação de venda !');
end;

procedure Tfrmven_prc.BImpClick(Sender: TObject);
function RETORNA_PEDIDO(dero:string): string;
var
  i: word;
  dero1,dero2: string;
begin
  dero1 := '';
  for i := 1 to length(dero) do
  begin
    if (copy(dero,i,1) = '.') or (copy(dero,i,1) = '/') then
    break;

    dero1 := dero1 + trim(copy(dero,i,1));
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
      begin
        if i = 1 then
        dero2 := dero1;
        break;
      end;
    end;
  end;

  result := dero2;
end;

begin
  Application.CreateForm (Tfrmimporta_geral, frmimporta_geral);

  frmimporta_geral.cbFANT.Text := frmprincipal.parametrosPAR_FANT.AsString;
  frmimporta_geral.ShowModal;

  try
    if frmimporta_geral.editado then
    begin
      edobse.Text := TRIM(frmimporta_geral.imp_cabROM_OBSE.AsString)+#13+'REFERENCIA: '+frmimporta_geral.cbTIPO.Text+' No '+frmimporta_geral.edTXT.Text;
      
      if not frmimporta_geral.imp_cab.Fields[0].IsNull then
      begin
        PESQUISA_FORNECEDOR('I',frmimporta_geral.imp_cabROM_CCLI.AsString,0);
        PESQUISA_COMPRADOR('C',frmimporta_geral.imp_cabROM_CVEN.AsString);
        PESQUISA_REPRESENTANTE('C',frmimporta_geral.imp_cabROM_CREP.AsString);
        PESQUISA_FPAGTO('C',frmimporta_geral.imp_cabROM_CPAG.AsString);

        cbcred.Text := frmimporta_geral.imp_cabROM_CONC.AsString;
        if (cbcred.Text = '') or (cbcred.Text = '1') then
        cbcred.Text := '1';

        if frmimporta_geral.cbTIPO.Text = 'ORÇAMENTO' then
        eddero.Text := '0' else
        begin
          if (frmimporta_geral.imp_cabROM_DERO.AsString <> '') and (frmimporta_geral.imp_cabROM_DERO.AsString <> frmimporta_geral.imp_cabID.AsString) then
          eddero.Text := RETORNA_PEDIDO(frmimporta_geral.imp_cabROM_DERO.AsString);
        end;  

        latdsc.Caption := frmimporta_geral.imp_cabROM_TDSC.AsString;
        edpdsc.Text    := formatfloat('#,0.00',frmimporta_geral.imp_cabROM_PDSC.AsFloat);
        edcdsc.Text    := formatfloat('#,0.00',frmimporta_geral.imp_cabROM_CDSC.AsFloat);
        edadsc.Text    := formatfloat('#,0.00',frmimporta_geral.imp_cabROM_ADSC.AsFloat);
      end;

      frmimporta_geral.imp_ite.First;
      while not frmimporta_geral.imp_ite.Eof do
      begin
        rom_001.Append;
        rom_001ROM_TPRC.Value := TRIM(cbprec.Text);
        rom_001ROM_PRCA.Value := frmimporta_geral.imp_iteROM_PRCA.Value;
        rom_001ROM_PRPA.Value := frmimporta_geral.imp_iteROM_PRPA.Value;
        rom_001ROM_VPRC.Value := frmimporta_geral.imp_iteROM_VPRC.Value;
        rom_001ROM_VPRO.Value := frmimporta_geral.imp_iteROM_VPRO.Value;
        rom_001ROM_RPRC.Value := frmimporta_geral.imp_iteROM_RPRC.Value;
        rom_001ROM_RPRO.Value := frmimporta_geral.imp_iteROM_RPRO.Value;
        rom_001ROM_PCOM.Value := frmimporta_geral.imp_iteROM_PCOM.Value;
        rom_001ROM_CUST.Value := frmimporta_geral.imp_iteROM_CUST.Value;
        rom_001ROM_PREC.Value := frmimporta_geral.imp_iteROM_PREC.Value;
        rom_001ROM_VDSC.Value := frmimporta_geral.imp_iteROM_VDSC.Value;
        rom_001ROM_UNIT.Value := frmimporta_geral.imp_iteROM_UNIT.Value;
        rom_001ROM_DPRO.Value := frmimporta_geral.imp_iteROM_DPRO.Value;
        rom_001ROM_IPRO.Value := frmimporta_geral.imp_iteROM_IPRO.Value;
        rom_001ROM_IPR2.Value := frmimporta_geral.imp_iteROM_IPR2.Value;
        rom_001ROM_CART.Value := frmimporta_geral.imp_iteROM_CART.Value;
        rom_001ROM_CPRO.Value := frmimporta_geral.imp_iteROM_CPRO.Value;
        rom_001ROM_CPR2.Value := frmimporta_geral.imp_iteROM_CPR2.Value;
        rom_001ROM_CCOR.Value := frmimporta_geral.imp_iteROM_CCOR.Value;
        rom_001ROM_DCOR.Value := frmimporta_geral.imp_iteROM_DCOR.Value;
        rom_001ROM_CCO2.Value := frmimporta_geral.imp_iteROM_CCO2.Value;
        rom_001ROM_DCO2.Value := frmimporta_geral.imp_iteROM_DCO2.Value;
        rom_001ROM_DUNI.Value := frmimporta_geral.imp_iteROM_DUNI.Value;
        rom_001ROM_FOTO.Value := frmimporta_geral.imp_iteROM_FOTO.Value;
        rom_001ROM_CBAR.Value := frmimporta_geral.imp_iteROM_CBAR.Value;
        rom_001ROM_PPRO.Value := frmimporta_geral.imp_iteROM_PPRO.Value;
        rom_001ROM_METR.Value := frmimporta_geral.imp_iteROM_METR.Value;
        rom_001ROM_PESO.Value := frmimporta_geral.imp_iteROM_PESO.Value;
        rom_001ROM_REND.Value := frmimporta_geral.imp_iteROM_REND.Value;
        rom_001ROM_PSCN.Value := frmimporta_geral.imp_iteROM_PSCN.Value;
        rom_001ROM_PSMR.Value := frmimporta_geral.imp_iteROM_PSMR.Value;
        rom_001ROM_PIPI.Value := frmimporta_geral.imp_iteROM_PIPI.Value;
        rom_001ROM_QDIS.Value := frmimporta_geral.imp_iteROM_QDIS.Value;
        rom_001ROM_RLDI.Value := frmimporta_geral.imp_iteROM_RLDI.Value;
        rom_001ROM_QTDE.Value := frmimporta_geral.imp_iteROM_QTDE.Value;
        rom_001ROM_QTRL.Value := frmimporta_geral.imp_iteROM_QTRL.Value;
        rom_001ROM_QDIS.Value := frmimporta_geral.imp_iteROM_QDIS.Value;
        rom_001ROM_RLDI.Value := frmimporta_geral.imp_iteROM_RLDI.Value;

        if frmimporta_geral.cbTIPO.Text = 'PROGRAMAÇÃO DE VENDA' then
        rom_001ROM_CDPR.Value := frmimporta_geral.imp_cabROM_CDPR.AsInteger else
        if frmimporta_geral.cbTIPO.Text = 'ORÇAMENTO' then
        rom_001ROM_CDOC.Value := frmimporta_geral.imp_cabROM_CDOC.AsInteger;

        if rom_001ROM_QTRL.AsInteger = 0 then
        begin
          if (copy(rom_001ROM_DUNI.AsString,1,1) = 'P') or (copy(rom_001ROM_DUNI.AsString,1,1) = 'C') then
          rom_001ROM_QTRL.Value := trunc(rom_001ROM_QTDE.AsFloat) else
          rom_001ROM_QTRL.Value := 1;
        end;
        
        rom_001.Post;
        frmimporta_geral.imp_ite.Next;
      end;
    end;
  finally
    freeandNil(frmimporta_geral);
    frmimporta_geral.Free;
  end;
end;

procedure Tfrmven_prc.FormDestroy(Sender: TObject);
begin
  frmprincipal.pnbot.Visible := BBot;
end;

end.

