unit pctr_rom;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, DB, IBStoredProc, IBEvents, math, StrUtils,
  IBDatabase, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
   ComCtrls, ExtCtrls, DBCtrls, dxPageControl, dxEditor, dxEdLib,
  StdCtrls, dxDBTLCl, dxGrClms, DateUtils, dxExEdtr, jpeg, Menus, Shellapi,
  dxDBELib, FMTBcd, rxSpeedbar, IBSQL;

type
  Tfrmctr_rom = class(Tfrmpadr1)
    siARO: TSpeedItem;
    siCRO: TSpeedItem;
    rom_ite: TIBQuery;
    dtsrom_ite: TDataSource;
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
    cadastroROM_CCLI: TIntegerField;
    cadastroROM_CVEN: TIntegerField;
    cadastroROM_CREP: TIntegerField;
    cadastroROM_CPAG: TIntegerField;
    cadastroROM_TSDE: TIBBCDField;
    cadastroROM_TDSC: TIBStringField;
    cadastroROM_TCDE: TIBBCDField;
    cadastroROM_CONC: TSmallintField;
    cadastroCLI_FANT: TIBStringField;
    cadastroREP_FANT: TIBStringField;
    dbgConsultaROM_STPD: TdxDBGridMaskColumn;
    dbgConsultaROM_DROM: TdxDBGridDateColumn;
    dbgConsultaROM_TSDE: TdxDBGridMaskColumn;
    dbgConsultaROM_TCDE: TdxDBGridMaskColumn;
    dbgConsultaCLI_FANT: TdxDBGridMaskColumn;
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
    siBRO: TSpeedItem;
    siDRO: TSpeedItem;
    siGRO: TSpeedItem;
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
    siNFE: TSpeedItem;
    dbgConsultaROM_CDNF: TdxDBGridMaskColumn;
    dbgConsultaROM_DNFS: TdxDBGridDateColumn;
    cadastroROM_CDRD: TIntegerField;
    cadastroROM_CDCX: TIntegerField;
    cadastroROM_QTSP: TIBBCDField;
    cadastroROM_QTPD: TIBBCDField;
    rom_iteROM_FLAG: TIBStringField;
    rom_iteROM_DPRO: TIBStringField;
    rom_itePRO_REPR: TIBStringField;
    dbgiteROM_ITEM: TdxDBGridMaskColumn;
    dbgiteROM_CDET: TdxDBGridMaskColumn;
    dbgiteROM_QTDE: TdxDBGridMaskColumn;
    dbgiteROM_UNIT: TdxDBGridMaskColumn;
    dbgiteROM_TOTA: TdxDBGridMaskColumn;
    dbgiteROM_DPRO: TdxDBGridMaskColumn;
    rom_iteROM_COMI: TIBBCDField;
    rom_iteROM_TPRC: TIBStringField;
    rom_iteROM_ABCD: TIBStringField;
    rom_iteROM_DCOR: TIBStringField;
    rom_iteROM_PCOR: TIBStringField;
    dbgitePRO_CPRO: TdxDBGridMaskColumn;
    dbgiteROM_DCOR: TdxDBGridMaskColumn;
    cadastroROM_COMI: TIBBCDField;
    cadastroUSU_DUSU: TIBStringField;
    dbgConsultaUSU_DUSU: TdxDBGridMaskColumn;
    cadastroROM_DPRD: TDateField;
    cadastroROM_CTNR: TIBStringField;
    cadastroROM_DEMB: TDateField;
    cadastroROM_DDES: TDateField;
    dbgConsultaROM_CDBX: TdxDBGridMaskColumn;
    cadastroROM_TOTA: TCurrencyField;
    dbgConsultaROM_DERO: TdxDBGridMaskColumn;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaROM_CTNR: TdxDBGridMaskColumn;
    rom_iteROM_DCO2: TIBStringField;
    rom_iteROM_PCO2: TIBStringField;
    rom_iteROM_UNIT: TFloatField;
    rom_iteROM_PREC: TFloatField;
    rom_itePRO_PPRO: TFloatField;
    rom_iteROM_DSEP: TIBStringField;
    cadastroROM_CBAI: TIntegerField;
    cadastroROM_TBAI: TDateTimeField;
    cadastroROM_UPRN: TIntegerField;
    cadastroROM_PPRN: TSmallintField;
    cadastroROM_TPRN: TDateTimeField;
    cadastroROM_VFRT: TIBBCDField;
    cadastroROM_DTRA: TIBStringField;
    dbgConsultaROM_DTRA: TdxDBGridMaskColumn;
    rom_iteROM_DUNI: TIBStringField;
    dbgiteROM_DUNI: TdxDBGridMaskColumn;
    pnlfoto: TPanel;
    pcIMG: TdxPageControl;
    tsFOTO: TdxTabSheet;
    writefoto: TImage;
    dbgConsultaROM_TOTA: TdxDBGridColumn;
    SQLConsulta: TIBSQL;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure rom_iteAfterScroll(DataSet: TDataSet);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure dtscadastroDataChange(Sender: TObject; Field: TField);
    procedure siRELClick(Sender: TObject);
    procedure cadastroAfterOpen(DataSet: TDataSet);
    procedure cadastroCalcFields(DataSet: TDataSet);
    procedure siPSQClick(Sender: TObject);
    procedure siEVEClick(Sender: TObject);
    procedure siCROClick(Sender: TObject);
    procedure dtsrom_iteDataChange(Sender: TObject; Field: TField);
    procedure siAROClick(Sender: TObject);
    procedure writefotoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure siNFEClick(Sender: TObject);
  private
    { Private declarations }
     procedure abre_tabela;
     procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
  public
    { Public declarations }
  end;

var
  frmctr_rom : Tfrmctr_rom;

implementation

uses uPrincipal, prelatorio_geral, ppesquisa, plog_eve, pven_nfe,
     pctr_ped, pctr_rom_edi, pcad_pro_img;

{$R *.dfm}

procedure Tfrmctr_rom.FormCreate(Sender: TObject);
begin
  cEvent := 'CTR_PED';
  inherited;

  dbgConsultaROM_TOTA.Visible   := (frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Romaneios','Visualizar Total Faturado',false));
  dbgconsulta.ShowSummaryFooter := (frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Romaneios','Totalizadores'            ,false));

  abre_tabela;
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   ROM_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
    SelectSQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['rom_cab']+' "ROM_CAB"');
    SelectSQL.Add('WHERE    ROM_CAB.ROM_CCLI = CAD_CLI.ID');
    SelectSQL.Add('AND      ROM_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
    SelectSQL.Add('AND      ROM_CAB.ROM_CREP = CAD_REP.ID');
    SelectSQL.Add('AND      ROM_CAB.ROM_CPAG = TAB_PAG.ID');
    SelectSQL.Add('AND      ROM_CAB.ROM_DROM BETWEEN '''+formatDateTime('mm/dd/yy',StartOfTheMonth(strtodate(SLPrincipal.Values['data_sistema'])))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(strtodate(SLPrincipal.Values['data_sistema'])))+'''');
    if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
    SelectSQL.Add('AND      ROM_CAB.ROM_CVEN = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
    SelectSQL.Add('ORDER BY ID DESC');
    Prepare;
  end;
end;

procedure Tfrmctr_rom.FormDestroy(Sender: TObject);
begin
  inherited;
  frmctr_rom := Nil;
end;

procedure Tfrmctr_rom.abre_tabela;
begin
  with cadastro do
  begin
    DeleteSQL.Clear;
    DeleteSQL.Add('delete from '+SLPrincipal.Values['rom_cab']);
    DeleteSQL.Add('where');
    DeleteSQL.Add('ID = :OLD_ID');

    InsertSQL.Clear;
    InsertSQL.Add('insert into '+SLPrincipal.Values['rom_cab']);
    InsertSQL.Add('  (ID, ROM_ADSC, ROM_CCLI, ROM_CDBX, ROM_CDCX, ROM_CDNF, ROM_CDOC, ROM_CDPD,');
    InsertSQL.Add('   ROM_CDPR, ROM_CDRD, ROM_CDRO, ROM_CDSC, ROM_CEXP, ROM_COMI, ROM_CONC,');
    InsertSQL.Add('   ROM_CPAG, ROM_CREP, ROM_CTNR, ROM_CVEN, ROM_DBAI, ROM_DCAN, ROM_DDES,');
    InsertSQL.Add('   ROM_DEMB, ROM_DERO, ROM_DEXP, ROM_DNFS, ROM_DPRD, ROM_DROM, ROM_HEXP,');
    InsertSQL.Add('   ROM_HROM, ROM_OBSE, ROM_PDSC, ROM_QTPD, ROM_QTSP, ROM_QTVE, ROM_RLVE,');
    InsertSQL.Add('   ROM_STA, ROM_STCO, ROM_STFI, ROM_STPD, ROM_TCDE, ROM_TDSC, ROM_TSDE)');
    InsertSQL.Add('values');
    InsertSQL.Add('  (:ID, :ROM_ADSC, :ROM_CCLI, :ROM_CDBX, :ROM_CDCX, :ROM_CDNF, :ROM_CDOC,');
    InsertSQL.Add('   :ROM_CDPD, :ROM_CDPR, :ROM_CDRD, :ROM_CDRO, :ROM_CDSC, :ROM_CEXP, :ROM_COMI,');
    InsertSQL.Add('   :ROM_CONC, :ROM_CPAG, :ROM_CREP, :ROM_CTNR, :ROM_CVEN, :ROM_DBAI, :ROM_DCAN,');
    InsertSQL.Add('   :ROM_DDES, :ROM_DEMB, :ROM_DERO, :ROM_DEXP, :ROM_DNFS, :ROM_DPRD, :ROM_DROM,');
    InsertSQL.Add('   :ROM_HEXP, :ROM_HROM, :ROM_OBSE, :ROM_PDSC, :ROM_QTPD, :ROM_QTSP, :ROM_QTVE,');
    InsertSQL.Add('   :ROM_RLVE, :ROM_STA,  :ROM_STCO, :ROM_STFI, :ROM_STPD, :ROM_TCDE, :ROM_TDSC,');
    InsertSQL.Add('   :ROM_TSDE)');

    ModifySQL.Clear;
    ModifySQL.Add('update '+SLPrincipal.Values['rom_cab']);
    ModifySQL.Add('set');
    ModifySQL.Add('  ID = :ID,');
    ModifySQL.Add('  ROM_ADSC = :ROM_ADSC,');
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
    ModifySQL.Add('  ROM_HEXP = :ROM_HEXP,');
    ModifySQL.Add('  ROM_HROM = :ROM_HROM,');
    ModifySQL.Add('  ROM_OBSE = :ROM_OBSE,');
    ModifySQL.Add('  ROM_PDSC = :ROM_PDSC,');
    ModifySQL.Add('  ROM_QTPD = :ROM_QTPD,');
    ModifySQL.Add('  ROM_QTSP = :ROM_QTSP,');
    ModifySQL.Add('  ROM_QTVE = :ROM_QTVE,');
    ModifySQL.Add('  ROM_RLVE = :ROM_RLVE,');
    ModifySQL.Add('  ROM_STA  = :ROM_STA, ');
    ModifySQL.Add('  ROM_STCO = :ROM_STCO,');
    ModifySQL.Add('  ROM_STFI = :ROM_STFI,');
    ModifySQL.Add('  ROM_STPD = :ROM_STPD,');
    ModifySQL.Add('  ROM_TCDE = :ROM_TCDE,');
    ModifySQL.Add('  ROM_TDSC = :ROM_TDSC,');
    ModifySQL.Add('  ROM_TSDE = :ROM_TSDE ');
    ModifySQL.Add('where');
    ModifySQL.Add('  ID = :OLD_ID');
  end;
end;

procedure Tfrmctr_rom.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
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

procedure Tfrmctr_rom.dbgConsultaCustomDrawCell(Sender: TObject;
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
    AColor      := $00BEEFF8;

    Value := ANode.Values[0];
    if not VarIsNull(Value) then
    begin
      if Value > 0 then
      begin
         AFont.Color := clwhite;
         AColor      := $00C6C600;
      end;
    end;
  end;
end;

procedure Tfrmctr_rom.rom_iteAfterScroll(DataSet: TDataSet);
begin
  if (cadastro.State = dsBrowse) and (pnlfoto.Visible) then
  carregaFoto(rom_itePRO_FOTO.BlobSize,rom_itePRO_FOTO,rom_ite,frmprincipal.parametros);
end;

procedure Tfrmctr_rom.cadastroBeforeEdit(DataSet: TDataSet);
begin
  {};
end;

procedure Tfrmctr_rom.cadastroBeforeInsert(DataSet: TDataSet);
begin
  {};
end;

procedure Tfrmctr_rom.dtscadastroDataChange(Sender: TObject;
  Field: TField);
begin
  if cadastroROM_TDSC.AsString = '%' then
  dbgConsultaROM_DESC.Caption := 'Desc (%)'
  else if cadastroROM_TDSC.AsString = '$' then
  dbgConsultaROM_DESC.Caption := 'Desc ($)';

  siNFE.Enabled := (cadastroROM_STA.AsString  = '0') and (cadastroROM_CDNF.AsInteger = 0) and (cadastroROM_CDBX.AsInteger = 0);
  siCRO.Enabled := (cadastroROM_STA.AsString  = '0') and (cadastroROM_CDNF.AsInteger = 0) and (cadastroROM_CDBX.AsInteger = 0);
  siARO.Enabled := (cadastroROM_STA.AsString  = '0') and (cadastroROM_CDBX.AsInteger = 0);

  if frmprincipal.cad_usuUSU_CUSU.AsInteger = 0 then
  siNFE.Enabled := true;

  sbMSG.Panels[1].Text := cadastroROM_CONC.AsString;
  sbMSG.Panels[2].Text := cadastroROM_OBSE.AsString;
end;

procedure Tfrmctr_rom.siRELClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.CDRO                 := cadastroID.AsString;
    frmrelatorio_geral.CDNF                 := cadastroROM_CDNF.AsString;
    frmrelatorio_geral.tsROM_CAB.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsROM_CAB;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmctr_rom.cadastroAfterOpen(DataSet: TDataSet);
begin
  with rom_ite do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ROM_ITE.*,CAD_PRO.ID,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_CCOR,');
    SQL.Add('         CAD_PRO.PRO_RCOR,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
    SQL.Add('         CAD_PRO.PRO_CBAR,CAD_PRO.PRO_PPRO,CAD_PRO.PRO_CEMB,CAD_PRO.PRO_GRAD,');
    SQL.Add('         CAD_PRO.PRO_PIPI,CAD_PRO.PRO_REPR,CAD_PRO.PRO_APRO,CAD_PRO_IMG.PRO_FOTO');
    SQL.Add('FROM     CAD_PRO_IMG,CAD_PRO,'+SLPrincipal.Values['rom_ite']+' "ROM_ITE"');
    SQL.Add('WHERE    ROM_ITE.ROM_CPRO     = CAD_PRO.ID');
    SQL.Add('AND      CAD_PRO_IMG.PRO_CART = CAD_PRO.PRO_CART');
    SQL.Add('AND      ROM_ITE.ROM_CCAB = :ID');
    SQL.Add('ORDER BY ROM_ITE.ROM_ITEM');
    Open;
  end;
end;

procedure Tfrmctr_rom.cadastroCalcFields(DataSet: TDataSet);
begin
  cadastroROM_TOTA.Value := cadastroROM_TCDE.AsFloat*cadastroROM_CONC.AsInteger;
  cadastroROM_DESC.Value := formatfloat('#,0.00########',cadastroROM_PDSC.AsFloat);
  if cadastroROM_CDSC.AsFloat > 0 then
  cadastroROM_DESC.Value := cadastroROM_DESC.AsString+'+'+formatfloat('#,0.00########',cadastroROM_CDSC.AsFloat);
end;

procedure Tfrmctr_rom.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 11;
    if campo_pesquisa = '' then
    frmpesquisa.cbCAMPO.Text := 'Número Romaneio' else
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
        SelectSQL.Add('SELECT   ROM_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
        SelectSQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['rom_cab']+' "ROM_CAB"');
        SelectSQL.Add('WHERE    ROM_CAB.ROM_CCLI = CAD_CLI.ID');
        SelectSQL.Add('AND      ROM_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
        SelectSQL.Add('AND      ROM_CAB.ROM_CREP = CAD_REP.ID');
        SelectSQL.Add('AND      ROM_CAB.ROM_CPAG = TAB_PAG.ID');

        if edtxt.Text <> '' then
        begin
          if (cfield = 'ID') then
             SelectSQL.Add('AND ROM_CAB.ID = '''+edtxt.Text+'''')
          else if (cfield = 'ROM_DERO') then
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

procedure Tfrmctr_rom.siEVEClick(Sender: TObject);
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
    if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
    SQL.Add('AND    LOG_EVE.EVE_CLOG = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
    SQL.Add('ORDER BY ID DESC');
    Open;
  end;
  frmlog_eve.show;
end;

procedure Tfrmctr_rom.siCROClick(Sender: TObject);
var
  BRet: boolean;
begin
  if oYesNo(handle,'Cancelar romaneio No '+cadastroID.AsString+' ?') = mrno then
     abort;

  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PED_VEN_CAB.ID,VEN_QTSP,VEN_BEST FROM TAB_PED,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE  ROM_CDRO = '''+cadastroID.AsString+'''');
      SQL.Add('AND    ROM_STPD = VEN_TIPO');
      Open;
    end;

    while not consulta.Eof do
    begin
      if (consulta.Fields[2].AsString = '1') then
      begin
        with frmprincipal.sp_sql do
        begin
          SQL.Clear;
          SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_res']);
          SQL.Add('WHERE  EST_CDPD = '''+consulta.Fields[0].AsString+'''');
          SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

          ibSP.StoredProcName := 'SP_SQL';
          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;

          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_sep']);
          SQL.Add('SET    EST_FLAG = ''R''');
          SQL.Add('WHERE  EST_CDPD = '''+consulta.Fields[0].AsString+'''');
          SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

          ibSP.StoredProcName := 'SP_SQL';
          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;
        end;

        if consulta.Fields[1].AsString <> '1' then
        begin
          rom_ite.DisableControls;
          rom_ite.First;
          while not rom_ite.Eof do
          begin
            BRet := (rom_iteROM_CDPD.AsInteger = 0) or (rom_iteROM_CDPD.AsInteger = consulta.Fields[0].AsInteger);

            if BRet then
            begin
              ibSP.StoredProcName := 'SP_CAD_PRO_RES';
              ibSP.Prepare;

              ibSP.ParamByName('est').Value  := 'CAD_PRO_RES';
              if frmprincipal.parametrosID.AsInteger > 1 then
              ibSP.ParamByName('est').Value  := 'CAD_PRO_RES_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

              ibSP.ParamByName('id').Value   := 0;
              ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
              ibSP.ParamByName('cdro').Value := 0;
              ibSP.ParamByName('cdpd').Value := consulta.Fields[0].AsInteger;
              ibSP.ParamByName('cdbx').Value := 0;
              ibSP.ParamByName('cpro').Value := rom_iteROM_CPRO.AsInteger;
              ibSP.ParamByName('cusu').Value := cadastroROM_CVEN.AsInteger;
              ibSP.ParamByName('dusu').Value := cadastroUSU_DUSU.AsString;
              ibSP.ParamByName('cfav').Value := cadastroROM_CCLI.AsInteger;
              ibSP.ParamByName('dfav').Value := cadastroCLI_FANT.AsString;
              ibSP.ParamByName('dcad').Value := cadastroROM_DROM.AsDateTime;
              ibSP.ParamByName('docu').Value := trim(copy(cadastroROM_DERO.AsString,1,10));
              ibSP.ParamByName('flag').Value := 'R';
              ibSP.ParamByName('cdet').Value := rom_iteROM_CDET.AsString;
              ibSP.ParamByName('dsep').Value := rom_iteROM_DSEP.AsString;
              ibSP.ParamByName('debi').Value := 0;
              ibSP.ParamByName('cred').Value := rom_iteROM_QTDE.AsFloat;
              ibSP.ParamByName('dmap').Value := '';
              ibSP.ParamByName('lote').Value := '';
              ibSP.ParamByName('ctnr').Value := '';

              if rom_iteROM_CDET.AsString <> '' then
              begin
                frmprincipal.consulta.SQL.Clear;
                frmprincipal.consulta.SQL.Add('SELECT EST_CTNR FROM '+SLPrincipal.Values['cad_pro_est']);
                frmprincipal.consulta.SQL.Add('WHERE  EST_CDET = '''+rom_iteROM_CDET.AsString+'''');
                frmprincipal.consulta.Open;

                ibSP.ParamByName('ctnr').Value := frmprincipal.consulta.Fields[0].AsString;
              end;

              ibSP.ExecProc;
            end;
            rom_ite.Next;
          end;
        end;

        with frmprincipal.sp_sql do
        begin
          SQL.Clear;
          SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_est']);
          SQL.Add('WHERE  EST_CDRO = '''+consulta.Fields[0].AsString+'''');
          SQL.Add('AND    EST_FLAG = ''V''');
          SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

          ibSP.StoredProcName := 'SP_SQL';
          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;
        end;
      end;

      with frmprincipal.sp_sql do
      begin
        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
        SQL.Add('SET   ROM_CDRO = 0');
        SQL.Add('WHERE ID       = '''+consulta.Fields[0].AsString+'''');

        ibSP.StoredProcName := 'SP_SQL';
        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;
      end;

      consulta.Next;
    end;

    with frmprincipal.sp_sql do
    begin
      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['rom_cab']);
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');

      ibSP.StoredProcName := 'SP_SQL';
      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['rom_ite']);
      SQL.Add('WHERE  ROM_CCAB = '''+cadastroID.AsString+'''');

      ibSP.StoredProcName := 'SP_SQL';
      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      IBTra.CommitRetaining;
    end;

    frmprincipal.Log_Eve('Vendas','Romaneios','Cancelamento',cadastroROM_DERO.AsString,cadastroROM_DERO.AsString,cadastroROM_CCLI.AsString+' - '+LOWERCASE(cadastroCLI_FANT.AsString),'','');
  finally
    rom_ite.EnableControls;

    cadastro.Close;
    cadastro.Open;
  end;

  if Assigned(frmctr_ped) then
  begin
    frmctr_ped.cadastro.close;
    frmctr_ped.cadastro.open;
  end;
end;

procedure Tfrmctr_rom.dtsrom_iteDataChange(Sender: TObject; Field: TField);
var
  tam: word;
begin
  tam := dbgiteROM_DPRO.Tag;

  if screen.Width >= 1360 then
     tam := tam + 80;
  
  dbgiteROM_DPRO.Width := tam;
end;

procedure Tfrmctr_rom.siAROClick(Sender: TObject);
begin
  frmctr_rom_edi := tfrmctr_rom_edi.create(self);
  frmctr_rom_edi.edccli.Text    := cadastroROM_CCLI.AsString;
  frmctr_rom_edi.edccli.Hint    := cadastroCLI_FANT.AsString;
  frmctr_rom_edi.edcven.Text    := cadastroROM_CVEN.AsString;
  frmctr_rom_edi.edcrep.Text    := cadastroROM_CREP.AsString;
  frmctr_rom_edi.edcpag.Text    := cadastroROM_CPAG.AsString;
  frmctr_rom_edi.edcpag.Enabled := (cadastroROM_CDNF.AsInteger = 0);
  frmctr_rom_edi.edcred.Text    := cadastroROM_CONC.AsString;
  frmctr_rom_edi.cbstco.Text    := cadastroROM_STCO.AsString;
  frmctr_rom_edi.cbstpd.Text    := cadastroROM_STPD.AsString;
  frmctr_rom_edi.cbstfi.Text    := cadastroROM_STFI.AsString;
  frmctr_rom_edi.edcdro.Text    := cadastroID.AsString;
  frmctr_rom_edi.edobse.Text    := cadastroROM_OBSE.AsString;
  frmctr_rom_edi.edctnr.Text    := cadastroROM_CTNR.AsString;
  frmctr_rom_edi.ShowModal;

  cadastro.Close;
  cadastro.Open;
end;

procedure Tfrmctr_rom.writefotoClick(Sender: TObject);
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

procedure Tfrmctr_rom.siNFEClick(Sender: TObject);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT VEN_CNA1,VEN_CNA2,VEN_FATU FROM TAB_PED');
    SQL.Add('WHERE  VEN_TIPO = '''+cadastroROM_STPD.AsString+'''');
    Open;
  end;
  frmven_nfe     := tfrmven_nfe.create(Self);
  frmven_nfe.Tag := 1;
  try
    frmven_nfe.edcna1.Text     := Consulta.Fields[0].AsString;
    frmven_nfe.edcna2.Text     := Consulta.Fields[1].AsString;
    frmven_nfe.edcdro.Text     := CadastroID.AsString;
    frmven_nfe.EDXPed.Text     := oStrZero(CadastroID.AsInteger,6);
    frmven_nfe.edconc.Text     := CadastroROM_CONC.AsString;
    frmven_nfe.edcfav.Text     := CadastroROM_CCLI.AsString;
    frmven_nfe.edcven.Text     := CadastroROM_CVEN.AsString;
    frmven_nfe.eddven.Text     := CadastroUSU_DUSU.AsString;
    frmven_nfe.edcrep.Text     := CadastroROM_CREP.AsString;
    frmven_nfe.eddrep.Text     := CadastroREP_FANT.AsString;
    frmven_nfe.cbdtra.Text     := CadastroROM_DTRA.AsString;
    frmven_nfe.IEModFrete.Text := '1';
    frmven_nfe.edqvol.Text     := CadastroROM_RLVE.AsString;
    frmven_nfe.EDInfAdPed.Text := CadastroROM_OBSE.AsString;
    frmven_nfe.EDTDesc.Text    := FormatFloat('0.00',cadastroROM_PDSC.AsFloat);
    frmven_nfe.LATDesc.Caption := cadastroROM_TDSC.AsString;
    frmven_nfe.LATDesc.Tag     := IFThen(CadastroROM_PDSC.AsFloat > 0,1,0);
    frmven_nfe.edfatu.Text     := Consulta.Fields[2].AsString;

    frmven_nfe.PESQUISA_CLIENTE('I',CadastroROM_CCLI.AsString,0);
    frmven_nfe.Tag := 1;

    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   FK.ID AS IDCP,FK.PRO_CPRO AS CPROD,PK.ROM_DPRO||'' ''||COALESCE(PK.ROM_DCOR,'''') AS XPROD,PK.ROM_DUNI AS UCOM,');
      SQL.Add('         FK.PRO_CBAR AS CEAN,FK.PRO_CCLF AS NCM,FK.PRO_PIPI AS TRIBIPI,FK.PRO_CCST AS ORIG,');
      SQL.Add('         FK.PRO_PESO AS PESO,FK.PRO_PSCN AS PSCN,FK.PRO_METR AS METR,FK.PRO_REND AS REND,');
      SQL.Add('         FK.PRO_COMP AS COMPBASE,LEFT(FK.PRO_STAV,1) AS DECAST,');
      SQL.Add('         0 AS UQVOL,NULL AS UESP,');
      SQL.Add('         PK.ROM_PREC,PK.ROM_UNIT AS VUNCOM,PK.ROM_NFCI,');
      SQL.Add('         SUM(PK.ROM_QTDE) AS ROM_QTDE,SUM(PK.ROM_QTRL) AS ROM_QTRL');
      SQL.Add('FROM   '+SLPrincipal.Values['rom_ite']+' AS PK');
      SQL.Add('JOIN     CAD_PRO AS FK ON (FK.ID = PK.ROM_CPRO)');
      SQL.Add('WHERE    ROM_CCAB = '''+CadastroId.AsString+'''');
      SQL.Add('GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19');
      ExecQuery;
    end;
    while not SQLConsulta.Eof do
    begin
      frmven_nfe.nfe_001.Append;
      frmven_nfe.nfe_001NFE_IPRO.Value      := SQLConsulta.Current.ByName('IDCP').AsInteger;
      frmven_nfe.nfe_001NFE_CPROD.Value     := SQLConsulta.Current.ByName('CPROD').AsString;
      frmven_nfe.nfe_001NFE_XPROD.Value     := SQLConsulta.Current.ByName('XPROD').AsString;
      frmven_nfe.nfe_001NFE_UCOM.Value      := SQLConsulta.Current.ByName('UCOM').AsString;
      frmven_nfe.nfe_001NFE_CEAN.Value      := SQLConsulta.Current.ByName('CEAN').AsString;
      frmven_nfe.nfe_001NFE_NCM.Value       := SQLConsulta.Current.ByName('NCM').AsString;
      frmven_nfe.nfe_001NFE_PIPI.Value      := SQLConsulta.Current.ByName('TRIBIPI').AsFloat;
      frmven_nfe.nfe_001NFE_ORIG.Value      := SQLConsulta.Current.ByName('ORIG').AsString;
      frmven_nfe.nfe_001NFE_PESO.Value      := SQLConsulta.Current.ByName('PESO').AsFloat;
      frmven_nfe.nfe_001NFE_PSCN.Value      := SQLConsulta.Current.ByName('PSCN').AsFloat;
      frmven_nfe.nfe_001NFE_METR.Value      := SQLConsulta.Current.ByName('METR').AsFloat;
      frmven_nfe.nfe_001NFE_REND.Value      := SQLConsulta.Current.ByName('REND').AsFloat;
      frmven_nfe.nfe_001NFE_VUNCOM.Value    := SQLConsulta.Current.ByName('VUNCOM').Value;
      frmven_nfe.nfe_001NFE_PREC.Value      := SQLConsulta.Current.ByName('VUNCOM').Value;
      frmven_nfe.nfe_001NFE_QCOM.Value      := SQLConsulta.Current.ByName('ROM_QTDE').AsFloat;
      frmven_nfe.nfe_001NFE_RCOM.Value      := SQLConsulta.Current.ByName('ROM_QTRL').AsInteger;
      frmven_nfe.nfe_001NFE_STAV.Value      := SQLConsulta.Current.ByName('DECAST').AsString;
      frmven_nfe.nfe_001NFE_COMP.Value      := SQLConsulta.Current.ByName('COMPBASE').AsString;
      frmven_nfe.nfe_001NFE_INFADPROD.Value := SQLConsulta.Current.ByName('COMPBASE').AsString;
      frmven_nfe.nfe_001NFE_NFCI.Value      := SQLConsulta.Current.ByName('ROM_NFCI').AsString;

      if not oEmpty(frmven_nfe.nfe_001NFE_INFADPROD.AsString) then
         frmven_nfe.nfe_001NFE_INFADPROD.Value := 'COMPOSICAO: '+frmven_nfe.nfe_001NFE_INFADPROD.AsString;

      if ((SQLConsulta.Current.ByName('UQVOL').AsFloat > 0) and (not oEmpty(SQLConsulta.Current.ByName('UESP').AsString))) then
           frmven_nfe.nfe_001NFE_INFADPROD.Value := frmven_nfe.nfe_001NFE_INFADPROD.AsString+#13+'CONTEUDO: '+SQLConsulta.Current.ByName('UQVOL').AsString+' '+SQLConsulta.Current.ByName('UESP').AsString
      else
           if Pos(LeftStr(frmven_nfe.nfe_001NFE_UCOM.AsString,1),'KMY') = 0 then
              if  frmven_nfe.nfe_001NFE_METR.AsFloat > 0 then
                  frmven_nfe.nfe_001NFE_INFADPROD.Value := frmven_nfe.nfe_001NFE_INFADPROD.AsString+#13+'CONTEUDO: '+FormatFloat('0.00M',frmven_nfe.nfe_001NFE_METR.AsFloat);

      frmven_nfe.nfe_001NFE_INFADPROD.Value := Trim(frmven_nfe.nfe_001NFE_INFADPROD.AsString);
      frmven_nfe.nfe_001NFE_REPR.Value      := 'R';//FBird.FBCAD_PROPRO_REPR.AsString;
      frmven_nfe.nfe_001.Post;
      SQLConsulta.Next;
    end;
  finally
    rom_ite.EnableControls;

    if (cadastroROM_STCO.AsString = 'BANCÁRIO') or (cadastroROM_STCO.AsString = 'DUPLICATA') then
    frmven_nfe.cbdupl.Text    := 'SIM';
    frmven_nfe.cbdpag.Text    := cadastroPAG_DPAG.AsString;
    frmven_nfe.cbdupl.Enabled := (frmven_nfe.cbdupl.Text = 'SIM');
    frmven_nfe.cbdpag.Enabled := (frmven_nfe.cbdupl.Text = 'SIM');
    frmven_nfe.cbprz.Enabled  := (frmven_nfe.cbdupl.Text = 'SIM');
    frmven_nfe.cbdtra.SetFocus;

    if cadastroROM_VFRT.AsFloat > 0 then
    begin
      oRTransact(frmven_nfe.TSheild);
      frmven_nfe.CEVFrete.Value := CadastroROM_VFRT.AsFloat;
      frmven_nfe.CALCULA_FRETE;
    end;

    oRTransact(frmven_nfe.TSheild);
    frmven_nfe.CALCULA_NF;
    if (Screen.Width <= 1024) or (Screen.Width < 1280) then
    begin
      frmven_nfe.FormStyle := fsnormal;
      frmven_nfe.Visible   := false;
      frmven_nfe.ShowModal;
    end else
    frmven_nfe.Show;
  end;
end;

end.
