unit pctr_prc;

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
  Tfrmctr_prc = class(Tfrmpadr1)
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
    cadastroREP_FANT: TIBStringField;
    dbgConsultaROM_STPD: TdxDBGridMaskColumn;
    dbgConsultaROM_STFI: TdxDBGridMaskColumn;
    dbgConsultaROM_DROM: TdxDBGridDateColumn;
    dbgConsultaROM_TSDE: TdxDBGridMaskColumn;
    dbgConsultaROM_TCDE: TdxDBGridMaskColumn;
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
    dbgiteROM_TOTA: TdxDBGridMaskColumn;
    dbgitePRO_CPRO: TdxDBGridMaskColumn;
    cadastroPAG_DPAG: TIBStringField;
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
    dbgiteROM_QTPD: TdxDBGridMaskColumn;
    rom_itePRO_PIPI: TSmallintField;
    rom_iteROM_QTRL: TIntegerField;
    rom_iteROM_RLSP: TIntegerField;
    rom_iteROM_RLPD: TIntegerField;
    rom_iteROM_FLAG: TIBStringField;
    cadastroROM_CDRD: TIntegerField;
    cadastroROM_QTSP: TIBBCDField;
    cadastroROM_QTPD: TIBBCDField;
    dbgConsultaROM_DBAI: TdxDBGridDateColumn;
    cadastroROM_CDCX: TIntegerField;
    aux: TIBQuery;
    tSHEILD: TIBTransaction;
    rom_iteROM_COMI: TIBBCDField;
    rom_iteROM_DPRO: TIBStringField;
    dbgiteROM_DPRO: TdxDBGridMaskColumn;
    rom_itePRO_REPR: TIBStringField;
    dbgConsultaROM_DERO: TdxDBGridMaskColumn;
    rom_iteROM_TPRC: TIBStringField;
    cadastroROM_CFOR: TIntegerField;
    cadastroROM_CCOM: TIntegerField;
    cadastroROM_COMI: TIBBCDField;
    cadastroFOR_FANT: TIBStringField;
    dbgConsultaFOR_FANT: TdxDBGridMaskColumn;
    dbgConsultaROM_DEXP: TdxDBGridDateColumn;
    rom_itePRO_PCOR: TIBStringField;
    rom_iteROM_ABCD: TIBStringField;
    rom_iteROM_DCOR: TIBStringField;
    rom_iteROM_PCOR: TIBStringField;
    dbgiteROM_DCOR: TdxDBGridMaskColumn;
    cadastroUSU_DUSU: TIBStringField;
    dbgConsultaUSU_DUSU: TdxDBGridMaskColumn;
    rom_iteROM_DROM: TDateField;
    cadastroROM_DPRD: TDateField;
    cadastroROM_CTNR: TIBStringField;
    sbMAIN: TStatusBar;
    dbgiteROM_DROM: TdxDBGridDateColumn;
    dbgiteROM_DEXP: TdxDBGridDateColumn;
    dbgiteROM_DPRD: TdxDBGridDateColumn;
    dbgiteROM_CTNR: TdxDBGridMaskColumn;
    rom_iteROM_QPRD: TSmallintField;
    rom_iteROM_DPRD: TDateField;
    rom_iteROM_QEMB: TSmallintField;
    rom_iteROM_DEMB: TDateField;
    rom_iteROM_QDES: TSmallintField;
    rom_iteROM_DDES: TDateField;
    rom_iteROM_QEXP: TSmallintField;
    rom_iteROM_DEXP: TDateField;
    rom_iteROM_CTNR: TIBStringField;
    rom_iteROM_OBSE: TMemoField;
    cadastroROM_DEMB: TDateField;
    cadastroROM_DDES: TDateField;
    dbgiteROM_DEMB: TdxDBGridDateColumn;
    dbgiteROM_DDES: TdxDBGridDateColumn;
    rom_iteROM_DBAI: TDateField;
    dbgiteROM_DBAI: TdxDBGridDateColumn;
    rom_iteROM_RPRD: TDateField;
    rom_iteROM_REMB: TDateField;
    rom_iteROM_RDES: TDateField;
    cadastroROM_RPRD: TDateField;
    cadastroROM_REMB: TDateField;
    cadastroROM_RDES: TDateField;
    dbgiteROM_RPRD: TdxDBGridDateColumn;
    dbgiteROM_REMB: TdxDBGridDateColumn;
    dbgiteROM_RDES: TdxDBGridDateColumn;
    siBRO: TSpeedItem;
    rom_iteROM_UNIT: TFloatField;
    rom_iteROM_PREC: TFloatField;
    rom_iteROM_DCO2: TIBStringField;
    rom_iteROM_PCO2: TIBStringField;
    rom_itePRO_PPRO: TFloatField;
    rom_iteROM_DUNI: TIBStringField;
    dbgiteROM_DUNI: TdxDBGridMaskColumn;
    pnlfoto: TPanel;
    pcIMG: TdxPageControl;
    tsFOTO: TdxTabSheet;
    writefoto: TImage;
    procedure FormCreate(Sender: TObject);
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
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siBROClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure writefotoClick(Sender: TObject);
  private
    { Private declarations }
     procedure FINALIZA;
     procedure REABRE;
     procedure abre_tabela;
     procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
  public
    { Public declarations }
  end;

var
  frmctr_prc : Tfrmctr_prc;

implementation

uses uPrincipal, prelatorio_geral, ppesquisa, plog_eve, pven_prc,
  pcad_pro_img;

{$R *.dfm}

procedure Tfrmctr_prc.FormCreate(Sender: TObject);
begin
  dbgconsulta.ShowSummaryFooter := (frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Programações','Totalizadores',false));
  cEvent := 'CTR_PRC';
  inherited;

  abre_tabela;
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   PED_COM_CAB.*,CAD_FOR.FOR_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
    SelectSQL.Add('FROM     CAD_FOR,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_com_cab']+' "PED_COM_CAB"');
    SelectSQL.Add('WHERE    PED_COM_CAB.ROM_CFOR = CAD_FOR.ID');
    SelectSQL.Add('AND      PED_COM_CAB.ROM_CCOM = CAD_USU.USU_CUSU');
    SelectSQL.Add('AND      PED_COM_CAB.ROM_CREP = CAD_REP.ID');
    SelectSQL.Add('AND      PED_COM_CAB.ROM_CPAG = TAB_PAG.ID');
    SelectSQL.Add('ORDER BY ID DESC');
    Prepare;
  end;
end;

procedure Tfrmctr_prc.FormDestroy(Sender: TObject);
begin
  inherited;
  frmctr_prc := nil;
end;

procedure Tfrmctr_prc.abre_tabela;
begin
  with cadastro do
  begin
    DeleteSQL.Clear;
    DeleteSQL.Add('delete from '+SLPrincipal.Values['ped_com_cab']);
    DeleteSQL.Add('where');
    DeleteSQL.Add('ID = :OLD_ID');

    InsertSQL.Clear;
    InsertSQL.Add('insert into '+SLPrincipal.Values['ped_com_cab']);
    InsertSQL.Add('  (ID, ROM_ADSC, ROM_CCOM, ROM_CDBX, ROM_CDCX, ROM_CDNF, ROM_CDOC, ROM_CDPD,');
    InsertSQL.Add('   ROM_CDPR, ROM_CDRD, ROM_CDRO, ROM_CDSC, ROM_CEXP, ROM_CFOR, ROM_COMI,');
    InsertSQL.Add('   ROM_CONC, ROM_CPAG, ROM_CREP, ROM_CTNR, ROM_DBAI, ROM_DCAN, ROM_DDES,');
    InsertSQL.Add('   ROM_DEMB, ROM_DERO, ROM_DEXP, ROM_DNFS, ROM_DPRD, ROM_DROM, ROM_HEXP,');
    InsertSQL.Add('   ROM_HROM, ROM_OBSE, ROM_PDSC, ROM_QTPD, ROM_QTSP, ROM_QTVE, ROM_RDES,');
    InsertSQL.Add('   ROM_REMB, ROM_RLVE, ROM_RPRD, ROM_STA, ROM_STCO, ROM_STFI, ROM_STPD,');
    InsertSQL.Add('   ROM_TCDE, ROM_TDSC, ROM_TSDE)');
    InsertSQL.Add('values');
    InsertSQL.Add('  (:ID, :ROM_ADSC, :ROM_CCOM, :ROM_CDBX, :ROM_CDCX, :ROM_CDNF, :ROM_CDOC,');
    InsertSQL.Add('   :ROM_CDPD, :ROM_CDPR, :ROM_CDRD, :ROM_CDRO, :ROM_CDSC, :ROM_CEXP, :ROM_CFOR,');
    InsertSQL.Add('   :ROM_COMI, :ROM_CONC, :ROM_CPAG, :ROM_CREP, :ROM_CTNR, :ROM_DBAI, :ROM_DCAN,');
    InsertSQL.Add('   :ROM_DDES, :ROM_DEMB, :ROM_DERO, :ROM_DEXP, :ROM_DNFS, :ROM_DPRD, :ROM_DROM,');
    InsertSQL.Add('   :ROM_HEXP, :ROM_HROM, :ROM_OBSE, :ROM_PDSC, :ROM_QTPD, :ROM_QTSP, :ROM_QTVE,');
    InsertSQL.Add('   :ROM_RDES, :ROM_REMB, :ROM_RLVE, :ROM_RPRD, :ROM_STA , :ROM_STCO, :ROM_STFI,');
    InsertSQL.Add('   :ROM_STPD, :ROM_TCDE, :ROM_TDSC, :ROM_TSDE)');

    ModifySQL.Clear;
    ModifySQL.Add('update '+SLPrincipal.Values['ped_com_cab']);
    ModifySQL.Add('set');
    ModifySQL.Add('  ID       = :ID,');
    ModifySQL.Add('  ROM_ADSC = :ROM_ADSC,');
    ModifySQL.Add('  ROM_CCOM = :ROM_CCOM,');
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
    ModifySQL.Add('  ROM_CFOR = :ROM_CFOR,');
    ModifySQL.Add('  ROM_COMI = :ROM_COMI,');
    ModifySQL.Add('  ROM_CONC = :ROM_CONC,');
    ModifySQL.Add('  ROM_CPAG = :ROM_CPAG,');
    ModifySQL.Add('  ROM_CREP = :ROM_CREP,');
    ModifySQL.Add('  ROM_CTNR = :ROM_CTNR,');
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
    ModifySQL.Add('  ROM_RDES = :ROM_RDES,');
    ModifySQL.Add('  ROM_REMB = :ROM_REMB,');
    ModifySQL.Add('  ROM_RLVE = :ROM_RLVE,');
    ModifySQL.Add('  ROM_RPRD = :ROM_RPRD,');
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

procedure Tfrmctr_prc.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
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

procedure Tfrmctr_prc.rom_iteAfterScroll(DataSet: TDataSet);
begin
  carregaFoto(rom_itePRO_FOTO.BlobSize,rom_itePRO_FOTO,rom_ite,frmprincipal.parametros);
end;

procedure Tfrmctr_prc.cadastroBeforeEdit(DataSet: TDataSet);
begin
  {};
end;

procedure Tfrmctr_prc.cadastroBeforeInsert(DataSet: TDataSet);
begin
  {};
end;

procedure Tfrmctr_prc.siAROClick(Sender: TObject);
begin
  tag        := 0;
  siARO.Tag  := 1;
  frmven_prc := Tfrmven_prc.Create(self);

  siARO.Tag  := 0;
  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
    frmven_prc.FormStyle := fsNormal;
    frmven_prc.Visible   := false;
    frmven_prc.ShowModal;
  end
  else
    frmven_prc.Show;
end;

procedure Tfrmctr_prc.dtscadastroDataChange(Sender: TObject;
  Field: TField);
begin
  if cadastroROM_TDSC.AsString = '%' then
     dbgConsultaROM_DESC.Caption := 'Desc (%)'
  else if cadastroROM_TDSC.AsString = '$' then
     dbgConsultaROM_DESC.Caption := 'Desc ($)';

  siARO.Enabled := (cadastroROM_STA.AsString = '0') and (cadastroROM_STFI.AsString  = 'PENDENTE') or
                   (cadastroROM_STA.AsString = '0') and (cadastroROM_STFI.AsString  = 'FINALIZADO PARCIAL');
  siCRO.Enabled := (cadastroROM_STA.AsString = '0');
  siBRO.Enabled := (cadastroROM_STA.AsString = '0');

  if cadastroROM_STFI.AsString  = 'PENDENTE' then
  begin
    siBRO.ImageIndex := 12;
    siBRO.BtnCaption := 'Finalizar';
  end
  else if copy(cadastroROM_STFI.AsString,1,10)  = 'FINALIZADO' then
  begin
    siBRO.ImageIndex := 14;
    siBRO.BtnCaption := 'Re-abrir';
  end;

  sbMSG.Panels[1].Text := cadastroROM_CONC.AsString;
  sbMSG.Panels[2].Text := cadastroROM_OBSE.AsString;
end;

procedure Tfrmctr_prc.siRELClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.CDPD                 := cadastroID.AsString;
    frmrelatorio_geral.CDRO                 := cadastroROM_CDRO.AsString;
    frmrelatorio_geral.CDBX                 := cadastroROM_CDBX.AsString;
    frmrelatorio_geral.CDNF                 := cadastroROM_CDNF.AsString;
    frmrelatorio_geral.tsVEN_PRC.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsVEN_PRC;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   FOR_FANT');
      SQL.Add('FROM     CAD_FOR,'+SLPrincipal.Values['ped_com_cab']+' "PED_COM_CAB"');
      SQL.Add('WHERE    PED_COM_CAB.ROM_CFOR = CAD_FOR.ID');
      SQL.Add('GROUP BY FOR_FANT');
      SQL.Add('ORDER BY FOR_FANT');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbVEN_PRC_DFOR.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   USU_DUSU');
      SQL.Add('FROM     CAD_USU,'+SLPrincipal.Values['ped_com_cab']+' "PED_COM_CAB"');
      SQL.Add('WHERE    PED_COM_CAB.ROM_CFOR = CAD_USU.USU_CUSU');
      SQL.Add('GROUP BY USU_DUSU');
      SQL.Add('ORDER BY USU_DUSU');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbVEN_PRC_DUSU.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   ROM_STFI');
      SQL.Add('FROM     '+SLPrincipal.Values['ped_com_cab']+' "PED_COM_CAB"');
      SQL.Add('GROUP BY ROM_STFI');
      SQL.Add('ORDER BY ROM_STFI');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbVEN_PRC_STFI.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbVEN_PRC_STFI.Descriptions.Add(fields[0].AsString);
        next;
      end;
    end;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmctr_prc.cadastroAfterOpen(DataSet: TDataSet);
begin
  with rom_ite do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PED_COM_ITE.*,CAD_PRO.ID,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_CCOR,CAD_PRO.PRO_PCOR,');
    SQL.Add('         CAD_PRO.PRO_RCOR,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
    SQL.Add('         CAD_PRO.PRO_CBAR,CAD_PRO.PRO_PPRO,CAD_PRO.PRO_CEMB,CAD_PRO.PRO_GRAD,');
    SQL.Add('         CAD_PRO.PRO_PIPI,CAD_PRO.PRO_REPR,CAD_PRO_IMG.PRO_FOTO');
    SQL.Add('FROM     CAD_PRO_IMG,CAD_PRO,'+SLPrincipal.Values['ped_com_ite']+' "PED_COM_ITE"');
    SQL.Add('WHERE    PED_COM_ITE.ROM_CPRO = CAD_PRO.ID');
    SQL.Add('AND      CAD_PRO_IMG.PRO_CART = CAD_PRO.PRO_CART');
    SQL.Add('AND      PED_COM_ITE.ROM_CCAB = :ID');
    SQL.Add('ORDER BY PED_COM_ITE.ROM_ITEM');
    Open;
  end;
end;

procedure Tfrmctr_prc.cadastroCalcFields(DataSet: TDataSet);
begin
  cadastroROM_DESC.Value := formatfloat('#,0.00########',cadastroROM_PDSC.AsFloat);
  if cadastroROM_CDSC.AsFloat > 0 then
     cadastroROM_DESC.Value := cadastroROM_DESC.AsString+'+'+formatfloat('#,0.00########',cadastroROM_CDSC.AsFloat);
end;

procedure Tfrmctr_prc.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 4;
    if campo_pesquisa = '' then
    frmpesquisa.cbCAMPO.Text := 'Código' else
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
        SelectSQL.Add('SELECT   PED_COM_CAB.*,CAD_FOR.FOR_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
        SelectSQL.Add('FROM     CAD_FOR,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_com_cab']+' "PED_COM_CAB"');
        SelectSQL.Add('WHERE    PED_COM_CAB.ROM_CFOR = CAD_FOR.ID');
        SelectSQL.Add('AND      PED_COM_CAB.ROM_CCOM = CAD_USU.USU_CUSU');
        SelectSQL.Add('AND      PED_COM_CAB.ROM_CREP = CAD_REP.ID');
        SelectSQL.Add('AND      PED_COM_CAB.ROM_CPAG = TAB_PAG.ID');

        if edtxt.Text <> '' then
        begin
          if (cfield = 'ROM_DERO') then
             SelectSQL.Add('AND ROM_DERO LIKE '''+edtxt.Text+'%''')
          else if (cfield = 'CAD_FOR.ID') then
             SelectSQL.Add('AND ROM_DERO = '''+edtxt.Text+'''')
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

procedure Tfrmctr_prc.siEVEClick(Sender: TObject);
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

procedure Tfrmctr_prc.dtsrom_iteDataChange(Sender: TObject; Field: TField);
var
  tam: word;
begin
  sbMAIN.Panels[0].Text := rom_iteROM_OBSE.AsString;
  
  tam := dbgiteROM_DPRO.Tag;

  if screen.Width >= 1360 then
     tam := tam + 80;
  
  if rom_itePRO_DCOR.AsString <> '' then
  dbgiteROM_DCOR.Visible := true
  else
  dbgiteROM_DCOR.Visible := false;

  if dbgiteROM_DCOR.Visible then
     tam := tam - dbgiteROM_DCOR.Width;

  if rom_iteROM_QTPD.AsFloat > 0 then
  dbgiteROM_QTPD.Visible := true
  else
  dbgiteROM_QTPD.Visible := false;

  if dbgiteROM_QTPD.Visible then
     tam := tam - dbgiteROM_QTPD.Width;

  dbgiteROM_DPRO.Width := tam;   
end;

procedure Tfrmctr_prc.siCROClick(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
  if yesno(handle,'Cancelar Pedido No.: '+cadastroROM_DERO.AsString+' ?') = mrno then
     abort;

  ClickedOK := InputQuery('Cancelamento de Pedido', 'Motivo', NewString);
  if not ClickedOK then
     abort;

  with frmprincipal.sp_sql do
  begin
    ibSP.StoredProcName := 'SP_SQL';
    SQL.Clear;
    SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_prc']);
    SQL.Add('WHERE  EST_CDRO = '''+cadastroID.AsString+'''');
    SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

    ibSP.Prepare;
    ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
    ibSP.ExecProc;
  end;

  cadastro.Edit;
  cadastroROM_STA.Value  := '1';
  cadastroROM_STFI.Value := 'CANCELADO';
  cadastroROM_DCAN.Value := strtodate(SLPrincipal.Values['data_sistema']);
  cadastroROM_OBSE.Value := cadastroROM_OBSE.AsString+NewString;
  cadastro.Post;
end;

procedure Tfrmctr_prc.dbgConsultaCustomDrawCell(Sender: TObject;
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
    Value       := ANode.Values[9];

    if Value = 'CANCELADO' then
    begin
       AFont.Color := clwhite;
       AColor      := RGB(StrToInt( '$ED') ,
                          StrToInt( '$1F') ,
                          StrToInt( '$43') );
    end
    else if Value = 'FINALIZADO' then
    begin
      AFont.Color := clwhite;
      AColor      := $00A4A400;
    end
    else if Value = 'FINALIZADO PARCIAL' then
    begin
      AFont.Color := clwhite;
      AColor      := $00C6C600;
    end
  end;
end;

procedure Tfrmctr_prc.siBROClick(Sender: TObject);
begin
  if uppercase(siBRO.BtnCaption) = 'FINALIZAR' then
  FINALIZA else
  if uppercase(siBRO.BtnCaption) = 'RE-ABRIR' then
  REABRE;
end;

procedure Tfrmctr_prc.FINALIZA;
var
  dbai: TDate;
  BRet: boolean;
begin
  try
    if yesno(handle,'Confirma a finalização do Pedido No.: '+cadastroROM_DERO.AsString+' ?') = mrno then
       abort;

    BRet := false;
    rom_ite.First;
    while not rom_ite.Eof do                                             
    begin
      if rom_iteROM_DBAI.AsDateTime > 0 then
      BRet := true;

      rom_ite.Next;
    end;

    if not BRet then
    raise exception.Create('Finalização negada !'+#13+'Nenhum item possui data de fechamento !');

    with frmprincipal.sp_sql do
    begin
      ibSP.StoredProcName := 'SP_SQL';
      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_prc']);
      SQL.Add('WHERE  EST_CDRO = '''+cadastroID.AsString+'''');
      SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    rom_ite.First;
    rom_ite.DisableControls;
    while not rom_ite.Eof do
    begin
      dbai := rom_iteROM_DBAI.AsDateTime;

      if dbai > 0 then
      with frmprincipal.sp_sql do
      begin
        ibSP.StoredProcName := 'SP_SQL';
        SQL.Clear;

        SQL.Add('UPDATE '+SLPrincipal.Values['ped_com_ite']);
        SQL.Add('SET    ROM_DBAI = '''+formatDateTime('mm/dd/yy',dbai)+''',');
        if rom_iteROM_QTPD.AsFloat > 0 then
        SQL.Add('ROM_QTPD = '''+oStrTran(rom_iteROM_QTPD.AsString,',','.')+'''') else
        SQL.Add('ROM_QTPD = '''+oStrTran(rom_iteROM_QTDE.AsString,',','.')+'''');
        SQL.Add('WHERE ID = '''+rom_iteID.AsString+'''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;
      end;

      ibSP.StoredProcName := 'SP_CAD_PRO_PRC';
      ibSP.Prepare;

      ibSP.ParamByName('est').Value  := 'CAD_PRO_PRC';
      if frmprincipal.parametrosID.AsInteger > 1 then
      ibSP.ParamByName('est').Value  := 'CAD_PRO_PRC_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

      ibSP.ParamByName('id').Value   := 0;
      ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
      ibSP.ParamByName('cdro').Value := cadastroID.AsInteger;
      ibSP.ParamByName('cdpd').Value := 0;
      if dbai > 0 then
      ibSP.ParamByName('cdpd').Value := cadastroID.AsInteger;
      ibSP.ParamByName('cdbx').Value := 0;
      ibSP.ParamByName('cpro').Value := rom_iteROM_CPRO.AsInteger;
      ibSP.ParamByName('cusu').Value := cadastroROM_CCOM.AsInteger;
      ibSP.ParamByName('dusu').Value := cadastroUSU_DUSU.AsString;
      ibSP.ParamByName('cfav').Value := cadastroROM_CFOR.AsInteger;
      ibSP.ParamByName('dfav').Value := cadastroFOR_FANT.AsString;
      ibSP.ParamByName('dcad').Value := rom_iteROM_DROM.AsDateTime;
      ibSP.ParamByName('docu').Value := copy(cadastroROM_DERO.AsString,1,10);
      ibSP.ParamByName('flag').Value := 'P';
      if rom_iteROM_CDPD.AsInteger > 0 then
      ibSP.ParamByName('flag').Value := 'E';
      ibSP.ParamByName('cdet').Value := '';
      ibSP.ParamByName('cred').Value := 0;
      if rom_iteROM_QTPD.AsFloat > 0 then
      ibSP.ParamByName('debi').Value := rom_iteROM_QTPD.AsFloat else
      ibSP.ParamByName('debi').Value := rom_iteROM_QTDE.AsFloat;
      ibSP.ParamByName('dmap').Value := '';
      ibSP.ParamByName('ctnr').Value := rom_iteROM_CTNR.AsString;
      ibSP.ParamByName('lote').Value := '';
      ibSP.ExecProc;

      if dbai > 0 then
      begin
        ibSP.StoredProcName := 'SP_CAD_PRO_PRC';
        ibSP.Prepare;

        ibSP.ParamByName('est').Value  := 'CAD_PRO_PRC';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('est').Value  := 'CAD_PRO_PRC_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

        ibSP.ParamByName('id').Value   := 0;
        ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
        ibSP.ParamByName('cdro').Value := cadastroID.AsInteger;
        ibSP.ParamByName('cdpd').Value := cadastroID.AsInteger;
        ibSP.ParamByName('cdbx').Value := 0;
        ibSP.ParamByName('cpro').Value := rom_iteROM_CPRO.AsInteger;
        ibSP.ParamByName('cusu').Value := cadastroROM_CCOM.AsInteger;
        ibSP.ParamByName('dusu').Value := cadastroUSU_DUSU.AsString;
        ibSP.ParamByName('cfav').Value := cadastroROM_CFOR.AsInteger;
        ibSP.ParamByName('dfav').Value := cadastroFOR_FANT.AsString;
        ibSP.ParamByName('dcad').Value := dbai;
        ibSP.ParamByName('docu').Value := copy(cadastroROM_DERO.AsString,1,10);
        ibSP.ParamByName('flag').Value := 'P';
        if rom_iteROM_CDPD.AsInteger > 0 then
        ibSP.ParamByName('flag').Value := 'E';
        ibSP.ParamByName('cdet').Value := '';
        if rom_iteROM_QTPD.AsFloat > 0 then
        ibSP.ParamByName('debi').Value := rom_iteROM_QTPD.AsFloat else
        ibSP.ParamByName('debi').Value := rom_iteROM_QTDE.AsFloat;
        ibSP.ParamByName('cred').Value := 0;
        ibSP.ParamByName('dmap').Value := '';
        ibSP.ParamByName('ctnr').Value := rom_iteROM_CTNR.AsString;
        ibSP.ParamByName('lote').Value := '';
        ibSP.ExecProc;
      end;
      rom_ite.Next;
    end;

    BRet := true;
    rom_ite.First;
    while not rom_ite.Eof do
    begin
      if rom_iteROM_DBAI.AsDateTime <= 0 then
      BRet := false;
      rom_ite.Next;
    end;

    cadastro.Edit;
    if BRet then
    cadastroROM_STFI.Value := 'FINALIZADO' else
    cadastroROM_STFI.Value := 'FINALIZADO PARCIAL';
    cadastro.Post;
  finally
    rom_ite.EnableControls;
  end;
end;

procedure Tfrmctr_prc.REABRE;
begin
  try
    if yesno(handle,'Confirma a reabertura do Pedido No.: '+cadastroROM_DERO.AsString+' ?') = mrno then
       abort;

    with frmprincipal.sp_sql do
    begin
      ibSP.StoredProcName := 'SP_SQL';
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_com_ite']);
      SQL.Add('SET   ROM_DBAI = NULL');
      SQL.Add('WHERE ROM_CCAB = '''+cadastroID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      ibSP.StoredProcName := 'SP_SQL';
      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_prc']);
      SQL.Add('WHERE  EST_CDRO = '''+cadastroID.AsString+'''');
      SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    rom_ite.First;
    rom_ite.DisableControls;
    while not rom_ite.Eof do
    begin
      ibSP.StoredProcName := 'SP_CAD_PRO_PRC';
      ibSP.Prepare;

      ibSP.ParamByName('est').Value  := 'CAD_PRO_PRC';
      if frmprincipal.parametrosID.AsInteger > 1 then
      ibSP.ParamByName('est').Value  := 'CAD_PRO_PRC_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

      ibSP.ParamByName('id').Value   := 0;
      ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
      ibSP.ParamByName('cdro').Value := cadastroID.AsInteger;
      ibSP.ParamByName('cdpd').Value := 0;
      ibSP.ParamByName('cdbx').Value := 0;
      ibSP.ParamByName('cpro').Value := rom_iteROM_CPRO.AsInteger;
      ibSP.ParamByName('cusu').Value := cadastroROM_CCOM.AsInteger;
      ibSP.ParamByName('dusu').Value := cadastroUSU_DUSU.AsString;
      ibSP.ParamByName('cfav').Value := cadastroROM_CFOR.AsInteger;
      ibSP.ParamByName('dfav').Value := cadastroFOR_FANT.AsString;
      ibSP.ParamByName('dcad').Value := rom_iteROM_DROM.AsDateTime;
      ibSP.ParamByName('docu').Value := copy(cadastroROM_DERO.AsString,1,10);
      ibSP.ParamByName('flag').Value := 'P';
      if rom_iteROM_CDPD.AsInteger > 0 then
      ibSP.ParamByName('flag').Value := 'E';
      ibSP.ParamByName('cdet').Value := '';
      ibSP.ParamByName('debi').Value := 0;
      if rom_iteROM_QTPD.AsFloat > 0 then
      ibSP.ParamByName('cred').Value := rom_iteROM_QTPD.AsFloat else
      ibSP.ParamByName('cred').Value := rom_iteROM_QTDE.AsFloat;
      ibSP.ParamByName('dmap').Value := '';
      ibSP.ParamByName('ctnr').Value := rom_iteROM_CTNR.AsString;
      ibSP.ParamByName('lote').Value := '';
      ibSP.ExecProc;
      rom_ite.Next;
    end;

    cadastro.Edit;
    cadastroROM_STFI.Value    := 'PENDENTE';
    cadastroROM_DBAI.AsString := '';
    cadastro.Post;
  finally
    rom_ite.EnableControls;
  end;
end;

procedure Tfrmctr_prc.writefotoClick(Sender: TObject);
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
