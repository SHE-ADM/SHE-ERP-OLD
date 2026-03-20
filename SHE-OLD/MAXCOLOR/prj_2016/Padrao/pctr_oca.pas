unit pctr_oca;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, DB, IBStoredProc, IBEvents,
  IBDatabase, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
   ComCtrls, ExtCtrls, DBCtrls, dxPageControl, dxEditor, dxEdLib,
  StdCtrls, dxDBTLCl, dxGrClms, DateUtils, dxExEdtr, jpeg, Menus, Shellapi,
  Math, dxDBELib, rxSpeedbar;

type
  Tfrmctr_oca = class(Tfrmpadr1)
    siARO: TSpeedItem;
    siCRO: TSpeedItem;
    rom_ite: TIBQuery;
    dtsrom_ite: TDataSource;
    PopupMenu1: TPopupMenu;
    GerarPlanilha1: TMenuItem;
    Label23: TLabel;
    pcITE: TdxPageControl;
    tsITE: TdxTabSheet;
    tsOBS: TdxTabSheet;
    dbgite: TdxDBGrid;
    cadastroID: TIntegerField;
    cadastroROM_STPD: TIBStringField;
    cadastroROM_STCO: TIBStringField;
    cadastroROM_STFI: TIBStringField;
    cadastroROM_DROM: TDateField;
    cadastroROM_DBAI: TDateField;
    cadastroROM_DCAN: TDateField;
    cadastroROM_CREP: TIntegerField;
    cadastroROM_CPAG: TIntegerField;
    cadastroROM_TSDE: TIBBCDField;
    cadastroROM_TDSC: TIBStringField;
    cadastroROM_TCDE: TIBBCDField;
    cadastroROM_CONC: TSmallintField;
    cadastroFUN_APEL: TIBStringField;
    cadastroREP_FANT: TIBStringField;
    dbgConsultaROM_STPD: TdxDBGridMaskColumn;
    dbgConsultaROM_STCO: TdxDBGridMaskColumn;
    dbgConsultaROM_STFI: TdxDBGridMaskColumn;
    dbgConsultaROM_DROM: TdxDBGridDateColumn;
    dbgConsultaROM_TSDE: TdxDBGridMaskColumn;
    dbgConsultaROM_TCDE: TdxDBGridMaskColumn;
    dbgConsultaFUN_APEL: TdxDBGridMaskColumn;
    dbgConsultaREP_FANT: TdxDBGridMaskColumn;
    rom_iteID: TIntegerField;
    rom_iteROM_CDOC: TIntegerField;
    rom_iteROM_ITEM: TIBStringField;
    rom_iteROM_CPRO: TIntegerField;
    rom_iteROM_CPR2: TIntegerField;
    rom_iteROM_CDET: TIBStringField;
    rom_iteROM_QTDE: TIBBCDField;
    rom_iteROM_VDSC: TIBBCDField;
    rom_iteROM_TOTA: TIBBCDField;
    rom_iteID1: TIntegerField;
    rom_itePRO_CART: TIBStringField;
    rom_itePRO_CPRO: TIBStringField;
    rom_itePRO_CCOR: TIntegerField;
    rom_itePRO_RCOR: TIBStringField;
    rom_itePRO_DCOR: TIBStringField;
    rom_itePRO_DUNI: TIBStringField;
    rom_itePRO_FOTO: TBlobField;
    dbgiteROM_ITEM: TdxDBGridMaskColumn;
    dbgiteROM_QTDE: TdxDBGridMaskColumn;
    dbgiteROM_UNIT: TdxDBGridMaskColumn;
    dbgiteROM_VDSC: TdxDBGridMaskColumn;
    dbgiteROM_TOTA: TdxDBGridMaskColumn;
    dbgitePRO_CPRO: TdxDBGridMaskColumn;
    cadastroPAG_DPAG: TIBStringField;
    dbgConsultaPAG_DPAG: TdxDBGridMaskColumn;
    cadastroROM_DESC: TStringField;
    dbgConsultaROM_DESC: TdxDBGridColumn;
    rom_itePRO_CBAR: TIBStringField;
    rom_itePRO_CEMB: TIntegerField;
    rom_itePRO_GRAD: TIBStringField;
    cadastroROM_DNFS: TDateField;
    cadastroROM_CDOC: TIntegerField;
    cadastroROM_CDPR: TIntegerField;
    cadastroROM_CDPD: TIntegerField;
    cadastroROM_CDRO: TIntegerField;
    cadastroROM_CDNF: TIntegerField;
    cadastroROM_CDBX: TIntegerField;
    cadastroROM_DERO: TIBStringField;
    cadastroROM_HROM: TTimeField;
    cadastroROM_DEXP: TDateField;
    cadastroROM_HEXP: TTimeField;
    cadastroROM_CEXP: TIntegerField;
    cadastroROM_QTVE: TIBBCDField;
    cadastroROM_RLVE: TIntegerField;
    cadastroROM_PDSC: TIBBCDField;
    cadastroROM_CDSC: TIBBCDField;
    cadastroROM_OBSE: TMemoField;
    cadastroROM_STA: TIBStringField;
    dxDBMemo1: TdxDBMemo;
    cadastroROM_ADSC: TIBBCDField;
    rom_iteROM_CCAB: TIntegerField;
    rom_iteROM_CDPR: TIntegerField;
    rom_iteROM_CDPD: TIntegerField;
    rom_iteROM_CDRO: TIntegerField;
    rom_iteROM_CDRD: TIntegerField;
    rom_iteROM_CDNF: TIntegerField;
    rom_iteROM_QTSP: TIBBCDField;
    rom_iteROM_QTPD: TIBBCDField;
    rom_itePRO_PIPI: TSmallintField;
    rom_iteROM_QTRL: TIntegerField;
    rom_iteROM_RLSP: TIntegerField;
    rom_iteROM_RLPD: TIntegerField;
    rom_iteROM_FLAG: TIBStringField;
    cadastroROM_CDRD: TIntegerField;
    cadastroROM_QTSP: TIBBCDField;
    cadastroROM_QTPD: TIBBCDField;
    cadastroROM_CDCX: TIntegerField;
    aux: TIBQuery;
    tSHEILD: TIBTransaction;
    rom_iteROM_COMI: TIBBCDField;
    rom_iteROM_DPRO: TIBStringField;
    dbgiteROM_DPRO: TdxDBGridMaskColumn;
    rom_itePRO_REPR: TIBStringField;
    dbgConsultaROM_DERO: TdxDBGridMaskColumn;
    rom_iteROM_TPRC: TIBStringField;
    cadastroROM_CCLI: TIntegerField;
    cadastroROM_CVEN: TIntegerField;
    cadastroCLI_FANT: TIBStringField;
    dbgConsultaCLI_FANT: TdxDBGridMaskColumn;
    cadastroROM_COMI: TIBBCDField;
    cadastroROM_DPRD: TDateField;
    cadastroROM_CTNR: TIBStringField;
    cadastroROM_DEMB: TDateField;
    cadastroROM_DDES: TDateField;
    rom_iteROM_ABCD: TIBStringField;
    rom_iteROM_DCOR: TIBStringField;
    rom_iteROM_PCOR: TIBStringField;
    dbgConsultaROM_DBAI: TdxDBGridDateColumn;
    rom_iteROM_UNIT: TFloatField;
    rom_iteROM_PREC: TFloatField;
    rom_iteROM_DCO2: TIBStringField;
    rom_iteROM_PCO2: TIBStringField;
    rom_itePRO_PPRO: TFloatField;
    rom_iteROM_DUNI: TIBStringField;
    dbgiteROM_DUNI: TdxDBGridMaskColumn;
    cadastroROM_CBAI: TIntegerField;
    cadastroROM_TBAI: TDateTimeField;
    cadastroROM_UPRN: TIntegerField;
    cadastroROM_PPRN: TSmallintField;
    cadastroROM_TPRN: TDateTimeField;
    cadastroROM_VFRT: TIBBCDField;
    cadastroROM_DTRA: TIBStringField;
    rom_iteROM_OBSE: TMemoField;
    dbgiteROM_DCOR: TdxDBGridMaskColumn;
    pnlfoto: TPanel;
    pcIMG: TdxPageControl;
    tsFOTO: TdxTabSheet;
    writefoto: TImage;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siAROClick(Sender: TObject);
    procedure rom_iteAfterScroll(DataSet: TDataSet);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure dtscadastroDataChange(Sender: TObject; Field: TField);
    procedure siRELClick(Sender: TObject);
    procedure cadastroAfterOpen(DataSet: TDataSet);
    procedure cadastroCalcFields(DataSet: TDataSet);
    procedure siPSQClick(Sender: TObject);
    procedure siEVEClick(Sender: TObject);
    procedure dtsrom_iteDataChange(Sender: TObject; Field: TField);
    procedure siCROClick(Sender: TObject);
    procedure writefotoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
     procedure abre_tabela;
     procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
  public
    { Public declarations }
  end;

var
  frmctr_oca : Tfrmctr_oca;

implementation

uses uPrincipal, prelatorio_geral, ppesquisa, plog_eve, pven_oca,
  pcad_pro_img;

{$R *.dfm}

procedure Tfrmctr_oca.FormCreate(Sender: TObject);
begin
  dbgconsulta.ShowSummaryFooter := (frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Orçamentos','Totalizadores',false));
  cEvent := 'CTR_OCA';
  inherited;

  abre_tabela;                                                                                                      
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   PED_OCA_CAB.*,CAD_CLI.CLI_FANT,CAD_FUN.FUN_APEL,CAD_REP.REP_FANT,PAG_DPAG');
    SelectSQL.Add('FROM     CAD_CLI,CAD_FUN,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_oca_cab']+' "PED_OCA_CAB"');
    SelectSQL.Add('WHERE    PED_OCA_CAB.ROM_CCLI = CAD_CLI.ID');
    SelectSQL.Add('AND      PED_OCA_CAB.ROM_CVEN = CAD_FUN.ID');
    SelectSQL.Add('AND      PED_OCA_CAB.ROM_CREP = CAD_REP.ID');
    SelectSQL.Add('AND      PED_OCA_CAB.ROM_CPAG = TAB_PAG.ID');
    SelectSQL.Add('AND      PED_OCA_CAB.ROM_DROM BETWEEN '''+formatDateTime('mm/dd/yy',StartOfTheMonth(incMonth(strtodate(SLPrincipal.Values['data_sistema']),-2)))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(strtodate(SLPrincipal.Values['data_sistema'])))+'''');
    if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
    SelectSQL.Add('AND      PED_OCA_CAB.ROM_CVEN = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
    SelectSQL.Add('ORDER BY ID DESC');
    Prepare;
  end;
end;

procedure Tfrmctr_oca.FormDestroy(Sender: TObject);
begin
  inherited;
  frmctr_oca := Nil;
end;

procedure Tfrmctr_oca.abre_tabela;
begin
  with cadastro do
  begin
    DeleteSQL.Clear;
    DeleteSQL.Add('delete from '+SLPrincipal.Values['ped_oca_cab']);
    DeleteSQL.Add('where');
    DeleteSQL.Add('ID = :OLD_ID');

    InsertSQL.Clear;
    InsertSQL.Add('insert into '+SLPrincipal.Values['ped_oca_cab']);
    InsertSQL.Add('  (ID, ROM_ADSC, ROM_CBAI, ROM_CCLI,');
    InsertSQL.Add('   ROM_CDBX, ROM_CDCX, ROM_CDNF, ROM_CDOC, ROM_CDPD, ROM_CDPR, ROM_CDRD,');
    InsertSQL.Add('   ROM_CDRO, ROM_CDSC, ROM_CEXP, ROM_COMI, ROM_CONC, ROM_CPAG, ROM_CREP,');
    InsertSQL.Add('   ROM_CTNR, ROM_CVEN, ROM_DBAI, ROM_DCAN, ROM_DDES, ROM_DEMB, ROM_DERO,');
    InsertSQL.Add('   ROM_DEXP, ROM_DNFS, ROM_DPRD, ROM_DROM, ROM_DTRA, ROM_HEXP, ROM_HROM,');
    InsertSQL.Add('   ROM_OBSE, ROM_PDSC, ROM_PPRN, ROM_QTPD, ROM_QTSP, ROM_QTVE, ROM_RLVE,');
    InsertSQL.Add('   ROM_STA , ROM_STCO, ROM_STFI, ROM_STPD, ROM_TBAI, ROM_TCDE, ROM_TDSC,');
    InsertSQL.Add('   ROM_TPRN, ROM_TSDE, ROM_UPRN, ROM_VFRT)');
    InsertSQL.Add('values');
    InsertSQL.Add('  (:ID, :ROM_ADSC, :ROM_CBAI,');
    InsertSQL.Add('   :ROM_CCLI, :ROM_CDBX, :ROM_CDCX, :ROM_CDNF, :ROM_CDOC, :ROM_CDPD, :ROM_CDPR,');
    InsertSQL.Add('   :ROM_CDRD, :ROM_CDRO, :ROM_CDSC, :ROM_CEXP, :ROM_COMI, :ROM_CONC, :ROM_CPAG,');
    InsertSQL.Add('   :ROM_CREP, :ROM_CTNR, :ROM_CVEN, :ROM_DBAI, :ROM_DCAN, :ROM_DDES, :ROM_DEMB,');
    InsertSQL.Add('   :ROM_DERO, :ROM_DEXP, :ROM_DNFS, :ROM_DPRD, :ROM_DROM, :ROM_DTRA, :ROM_HEXP,');
    InsertSQL.Add('   :ROM_HROM, :ROM_OBSE, :ROM_PDSC, :ROM_PPRN, :ROM_QTPD, :ROM_QTSP, :ROM_QTVE,');
    InsertSQL.Add('   :ROM_RLVE, :ROM_STA , :ROM_STCO, :ROM_STFI, :ROM_STPD, :ROM_TBAI, :ROM_TCDE,');
    InsertSQL.Add('   :ROM_TDSC, :ROM_TPRN, :ROM_TSDE, :ROM_UPRN, :ROM_VFRT)');

    ModifySQL.Clear;
    ModifySQL.Add('update '+SLPrincipal.Values['ped_oca_cab']);
    ModifySQL.Add('set');
    ModifySQL.Add('  ID = :ID,');
    ModifySQL.Add('  ROM_ADSC = :ROM_ADSC,');
    ModifySQL.Add('  ROM_CBAI = :ROM_CBAI,');
    ModifySQL.Add('  ROM_CCLI = :ROM_CCLI,');
    ModifySQL.Add('  ROM_CDBX = :ROM_CDBX,');
    ModifySQL.Add('  ROM_CDCX = :ROM_CDCX,');
    ModifySQL.Add('  ROM_CDNF = :ROM_CDNF,');
    ModifySQL.Add('  ROM_CDOC = :ROM_CDOC,');
    ModifySQL.Add('  ROM_CDPD = :ROM_CDPD,');
    ModifySQL.Add('  ROM_CDPR = :ROM_CDPR,');
    ModifySQL.Add('  ROM_CDRD = :ROM_CDRD,');
    ModifySQL.Add('  ROM_CDRO = :ROM_CDRO,');
    ModifySQL.Add('  ROM_CDSC = :ROM_CDSC,');
    ModifySQL.Add('  ROM_CEXP = :ROM_CEXP,');
    ModifySQL.Add('  ROM_COMI = :ROM_COMI,');
    ModifySQL.Add('  ROM_CONC = :ROM_CONC,');
    ModifySQL.Add('  ROM_CPAG = :ROM_CPAG,');
    ModifySQL.Add('  ROM_CREP = :ROM_CREP,');
    ModifySQL.Add('  ROM_CTNR = :ROM_CTNR,');
    ModifySQL.Add('  ROM_CVEN = :ROM_CVEN,');
    ModifySQL.Add('  ROM_DBAI = :ROM_DBAI,');
    ModifySQL.Add('  ROM_DCAN = :ROM_DCAN,');
    ModifySQL.Add('  ROM_DDES = :ROM_DDES,');
    ModifySQL.Add('  ROM_DEMB = :ROM_DEMB,');
    ModifySQL.Add('  ROM_DERO = :ROM_DERO,');
    ModifySQL.Add('  ROM_DEXP = :ROM_DEXP,');
    ModifySQL.Add('  ROM_DNFS = :ROM_DNFS,');
    ModifySQL.Add('  ROM_DPRD = :ROM_DPRD,');
    ModifySQL.Add('  ROM_DROM = :ROM_DROM,');
    ModifySQL.Add('  ROM_DTRA = :ROM_DTRA,');
    ModifySQL.Add('  ROM_HEXP = :ROM_HEXP,');
    ModifySQL.Add('  ROM_HROM = :ROM_HROM,');
    ModifySQL.Add('  ROM_OBSE = :ROM_OBSE,');
    ModifySQL.Add('  ROM_PDSC = :ROM_PDSC,');
    ModifySQL.Add('  ROM_PPRN = :ROM_PPRN,');
    ModifySQL.Add('  ROM_QTPD = :ROM_QTPD,');
    ModifySQL.Add('  ROM_QTSP = :ROM_QTSP,');
    ModifySQL.Add('  ROM_QTVE = :ROM_QTVE,');
    ModifySQL.Add('  ROM_RLVE = :ROM_RLVE,');
    ModifySQL.Add('  ROM_STA  = :ROM_STA, ');
    ModifySQL.Add('  ROM_STCO = :ROM_STCO,');
    ModifySQL.Add('  ROM_STFI = :ROM_STFI,');
    ModifySQL.Add('  ROM_STPD = :ROM_STPD,');
    ModifySQL.Add('  ROM_TBAI = :ROM_TBAI,');
    ModifySQL.Add('  ROM_TCDE = :ROM_TCDE,');
    ModifySQL.Add('  ROM_TDSC = :ROM_TDSC,');
    ModifySQL.Add('  ROM_TPRN = :ROM_TPRN,');
    ModifySQL.Add('  ROM_TSDE = :ROM_TSDE,');
    ModifySQL.Add('  ROM_UPRN = :ROM_UPRN,');
    ModifySQL.Add('  ROM_VFRT = :ROM_VFRT ');
    ModifySQL.Add('where');
    ModifySQL.Add('  ID = :OLD_ID');
  end;
end;

procedure Tfrmctr_oca.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
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
    JPEGImage.LoadFromStream(BlobStream);
    writefoto.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmctr_oca.dbgConsultaCustomDrawCell(Sender: TObject;
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
    AColor      := $00DADADA;

    Value  := ANode.Values[11];

    if (not VarIsNull(Value)) then
    begin
      if copy(Value,1,4) = 'FINALIZADO' then
      begin
         AFont.Color := clBlack;
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

procedure Tfrmctr_oca.rom_iteAfterScroll(DataSet: TDataSet);
begin
  carregaFoto(rom_itePRO_FOTO.BlobSize,rom_itePRO_FOTO,rom_ite,frmprincipal.parametros);
end;

procedure Tfrmctr_oca.cadastroBeforeEdit(DataSet: TDataSet);
begin
  {};
end;

procedure Tfrmctr_oca.cadastroBeforeInsert(DataSet: TDataSet);
begin
  {};
end;

procedure Tfrmctr_oca.siAROClick(Sender: TObject);
begin
  tag        := 0;
  siARO.Tag  := 1;
  frmven_oca := Tfrmven_oca.Create(self);

  siARO.Tag  := 0;
  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
    frmven_oca.FormStyle := fsNormal;
    frmven_oca.Visible   := false;
    frmven_oca.ShowModal;
  end
  else
    frmven_oca.Show;
end;

procedure Tfrmctr_oca.dtscadastroDataChange(Sender: TObject;
  Field: TField);
begin
  if cadastroROM_TDSC.AsString = '%' then
     dbgConsultaROM_DESC.Caption := 'Desc (%)'
  else if cadastroROM_TDSC.AsString = '$' then
     dbgConsultaROM_DESC.Caption := 'Desc ($)';

  siARO.Enabled := (cadastroROM_STA.AsString  = '0');

  siCRO.Enabled := ((cadastroROM_STA.AsString = '0') and (cadastroROM_STFI.AsString  = 'PENDENTE')) or
                   ((cadastroROM_STA.AsString = '0') and (cadastroROM_STFI.AsString  = 'FATURADO')) or
                   ((cadastroROM_STA.AsString = '0') and (cadastroROM_STFI.AsString  = 'PAGO'));


  siCRO.ImageIndex := 2;
      
  sbMSG.Panels[1].Text := cadastroROM_CONC.AsString;
  sbMSG.Panels[2].Text := cadastroROM_OBSE.AsString;
end;

procedure Tfrmctr_oca.siRELClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.CDPD                 := cadastroID.AsString;
    frmrelatorio_geral.CDRO                 := cadastroROM_CDRO.AsString;
    frmrelatorio_geral.CDBX                 := cadastroROM_CDBX.AsString;
    frmrelatorio_geral.CDNF                 := cadastroROM_CDNF.AsString;
    frmrelatorio_geral.tsVEN_OCA.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsVEN_OCA;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmctr_oca.cadastroAfterOpen(DataSet: TDataSet);
begin
  with rom_ite do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PED_OCA_ITE.*,CAD_PRO.ID,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_CCOR,');
    SQL.Add('         CAD_PRO.PRO_RCOR,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
    SQL.Add('         CAD_PRO.PRO_CBAR,CAD_PRO.PRO_PPRO,CAD_PRO.PRO_CEMB,CAD_PRO.PRO_GRAD,');
    SQL.Add('         CAD_PRO.PRO_PIPI,CAD_PRO.PRO_REPR,CAD_PRO_IMG.PRO_FOTO');
    SQL.Add('FROM     CAD_PRO_IMG,CAD_PRO,'+SLPrincipal.Values['ped_oca_ite']+' "PED_OCA_ITE"');
    SQL.Add('WHERE    PED_OCA_ITE.ROM_CPRO = CAD_PRO.ID');
    SQL.Add('AND      CAD_PRO_IMG.PRO_CART = CAD_PRO.PRO_CART');
    SQL.Add('AND      PED_OCA_ITE.ROM_CCAB = :ID');
    SQL.Add('ORDER BY PED_OCA_ITE.ROM_ITEM');
    Open;
  end;
end;

procedure Tfrmctr_oca.cadastroCalcFields(DataSet: TDataSet);
begin
  cadastroROM_DESC.Value := formatfloat('#,0.00########',cadastroROM_PDSC.AsFloat);
  if cadastroROM_CDSC.AsFloat > 0 then
     cadastroROM_DESC.Value := cadastroROM_DESC.AsString+'+'+formatfloat('#,0.00########',cadastroROM_CDSC.AsFloat);
end;

procedure Tfrmctr_oca.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 2;
    if campo_pesquisa = '' then
    frmpesquisa.cbCAMPO.Text := 'Número Pedido' else
    frmpesquisa.cbCAMPO.Text := campo_pesquisa;
    frmpesquisa.cbDATA.Text  := 'Lançamento';
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      if (edTXT.Text = '') and (dxdt1.Date < 0) then
         {nothing}
      else
      with cadastro do
      begin
        Close;
        SelectSQL.Clear;
        SelectSQL.Add('SELECT   PED_OCA_CAB.*,CAD_CLI.CLI_FANT,CAD_FUN.FUN_APEL,CAD_REP.REP_FANT,PAG_DPAG');
        SelectSQL.Add('FROM     CAD_CLI,CAD_FUN,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_oca_cab']+' "PED_OCA_CAB"');
        SelectSQL.Add('WHERE    PED_OCA_CAB.ROM_CCLI = CAD_CLI.ID');
        SelectSQL.Add('AND      PED_OCA_CAB.ROM_CVEN = CAD_FUN.ID');
        SelectSQL.Add('AND      PED_OCA_CAB.ROM_CREP = CAD_REP.ID');
        SelectSQL.Add('AND      PED_OCA_CAB.ROM_CPAG = TAB_PAG.ID');

        if edtxt.Text <> '' then
        begin
          if (cfield = 'ROM_DERO') then
             SelectSQL.Add('AND ROM_DERO LIKE '''+edtxt.Text+'%''')
          else if (cfield = 'CAD_CLI.ID') then
             SelectSQL.Add('AND ROM_CCLI = '''+edtxt.Text+'''')
          else if (cfield = 'ROM_CDBX') then
             SelectSQL.Add('AND ROM_CDBX = '''+edtxt.Text+'''')
          else if (cfield = 'ROM_CDNF') then
             SelectSQL.Add('AND ROM_CDNF = '''+edtxt.Text+'''')
          else
             SelectSQL.Add('AND '+cField+' LIKE ''%'+edtxt.Text+'%''');
        end;     

        if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
           SelectSQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

        SelectSQL.Add('ORDER BY '+cField);           
        Open;
      end;
      dbgconsulta.SetFocus;
      campo_pesquisa := frmpesquisa.cbCAMPO.Text;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmctr_oca.siEVEClick(Sender: TObject);
begin
  frmlog_eve := tfrmlog_eve.create(self);
  with frmlog_eve.cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT LOG_EVE.*,PAR_SIS.PAR_FANT,CAD_FUN.FUN_FOTO');
    SQL.Add('FROM   LOG_EVE,PAR_SIS');
    SQL.Add('LEFT   OUTER JOIN CAD_FUN ON LOG_EVE.EVE_CLOG = CAD_FUN.ID');
    SQL.Add('WHERE  LOG_EVE.EVE_CDEP = PAR_SIS.ID');
    SQL.Add('AND    LOG_EVE.EVE_FUNC = ''Vendas''');
    SQL.Add('ORDER BY ID DESC');
    Open;
  end;
  frmlog_eve.show;
end;

procedure Tfrmctr_oca.dtsrom_iteDataChange(Sender: TObject; Field: TField);
var
  tam: word;
begin
  tam := dbgiteROM_DPRO.Tag;

  if screen.Width >= 1360 then
  tam := tam + 80;

  if rom_iteROM_DCOR.AsString <> '' then
  dbgiteROM_DCOR.Visible := true else
  dbgiteROM_DCOR.Visible := false;

  if dbgiteROM_DCOR.Visible then
  tam := tam - dbgiteROM_DCOR.Width;

  dbgiteROM_DPRO.Width := tam;
  if dbgiteROM_VDSC.Visible then
  dbgiteROM_DPRO.Width   := dbgiteROM_DPRO.Width - dbgiteROM_VDSC.Width;

  if (Screen.Width <= 1024) or (Screen.Width <= 1280) then
  dbgiteROM_DCOR.Width := dbgiteROM_DCOR.Width - 20;
end;

procedure Tfrmctr_oca.siCROClick(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
  if oYesNo(handle,'Cancelar Pedido No.: '+cadastroID.AsString+' ?') = mrno then
     abort;

  ClickedOK := InputQuery('Cancelamento de Pedido', 'Motivo', NewString);
  if not ClickedOk then
     abort;

  cadastro.Edit;
  cadastroROM_STA.Value  := '1';
  cadastroROM_STFI.Value := 'CANCELADO';
  cadastroROM_DCAN.Value := strtodate(SLPrincipal.Values['data_sistema']);
  cadastroROM_OBSE.Value := cadastroROM_OBSE.AsString+NewString;
  cadastro.Post;

  frmprincipal.Log_Eve('Vendas','Orçamentos','Cancelamento',cadastroROM_DERO.AsString,cadastroROM_DERO.AsString,cadastroROM_CCLI.AsString+' - '+LOWERCASE(cadastroCLI_FANT.AsString),'','');
  messageBox(handle,PChar('Pedido No.: '+cadastroID.AsString+' cancelado com sucesso !'),PChar(Self.Caption),MB_ICONINFORMATION+MB_OK);
end;

procedure Tfrmctr_oca.writefotoClick(Sender: TObject);
begin
  frmcad_pro_img := tfrmcad_pro_img.create(self);
  try
    frmcad_pro_img.carregaFoto(rom_itePRO_FOTO.BlobSize,rom_itePRO_FOTO,rom_ite,frmprincipal.parametros);
    frmcad_pro_img.Caption := rom_iteROM_DPRO.AsString;
    frmcad_pro_img.showmodal;
  finally
    FreeAndNil(frmcad_pro_img);
    frmcad_pro_img.free;
  end;
end;

end.
