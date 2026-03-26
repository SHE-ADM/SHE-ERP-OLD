unit pctr_prg;

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
  Tfrmctr_prg = class(Tfrmpadr1)
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
    dbgConsultaROM_STFI: TdxDBGridMaskColumn;
    dbgConsultaROM_DROM: TdxDBGridDateColumn;
    dbgConsultaROM_TSDE: TdxDBGridMaskColumn;
    dbgConsultaROM_TCDE: TdxDBGridMaskColumn;
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
    dbgitePRO_DCOR: TdxDBGridMaskColumn;
    cadastroPAG_DPAG: TIBStringField;
    dbgConsultaPAG_DPAG: TdxDBGridMaskColumn;
    cadastroROM_DESC: TStringField;
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
    cadastroROM_CCLI: TIntegerField;
    cadastroROM_CVEN: TIntegerField;
    cadastroCLI_FANT: TIBStringField;
    dbgConsultaCLI_FANT: TdxDBGridMaskColumn;
    rom_iteROM_ABCD: TIBStringField;
    rom_iteROM_DCOR: TIBStringField;
    rom_iteROM_PCOR: TIBStringField;
    cadastroROM_COMI: TIBBCDField;
    cadastroUSU_DUSU: TIBStringField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaUSU_DUSU: TdxDBGridMaskColumn;
    cadastroROM_DPRD: TDateField;
    cadastroROM_CTNR: TIBStringField;
    cadastroROM_DEMB: TDateField;
    cadastroROM_DDES: TDateField;
    siFRO: TSpeedItem;
    dbgiteROM_QTPD: TdxDBGridMaskColumn;
    rom_iteROM_UNIT: TFloatField;
    rom_iteROM_PREC: TFloatField;
    rom_iteROM_DCO2: TIBStringField;
    rom_iteROM_PCO2: TIBStringField;
    rom_itePRO_PPRO: TFloatField;
    rom_iteROM_DUNI: TIBStringField;
    dbgiteROM_DUNI: TdxDBGridMaskColumn;
    rom_iteROM_OBSE: TMemoField;
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
    procedure FormDestroy(Sender: TObject);
    procedure dtsrom_iteDataChange(Sender: TObject; Field: TField);
    procedure siCROClick(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siFROClick(Sender: TObject);
    procedure writefotoClick(Sender: TObject);
  private
    { Private declarations }
     procedure abre_tabela;
     procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
  public
    { Public declarations }
  end;

var
  frmctr_prg : Tfrmctr_prg;

implementation

uses uPrincipal, prelatorio_geral, ppesquisa, plog_eve, pven_prg,
  pcad_pro_img;

{$R *.dfm}

procedure Tfrmctr_prg.FormCreate(Sender: TObject);
begin
  dbgconsulta.ShowSummaryFooter := (frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Programações','Totalizadores',false));
  cEvent := 'CTR_PRG';
  inherited;

  abre_tabela;
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   PED_PRG_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
    SelectSQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_prg_cab']+' "PED_PRG_CAB"');
    SelectSQL.Add('WHERE    PED_PRG_CAB.ROM_CCLI = CAD_CLI.ID');
    SelectSQL.Add('AND      PED_PRG_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
    SelectSQL.Add('AND      PED_PRG_CAB.ROM_CREP = CAD_REP.ID');
    SelectSQL.Add('AND      PED_PRG_CAB.ROM_CPAG = TAB_PAG.ID');
    if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
    SelectSQL.Add('AND      PED_PRG_CAB.ROM_CVEN = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
    SelectSQL.Add('ORDER BY ID DESC');
    Prepare;
  end;
end;

procedure Tfrmctr_prg.FormDestroy(Sender: TObject);
begin
  inherited;
  frmctr_prg := nil;
end;

procedure Tfrmctr_prg.abre_tabela;
begin
  with cadastro do
  begin
    DeleteSQL.Clear;
    DeleteSQL.Add('delete from '+SLPrincipal.Values['ped_prg_cab']);
    DeleteSQL.Add('where');
    DeleteSQL.Add('ID = :OLD_ID');

    InsertSQL.Clear;
    InsertSQL.Add('insert into '+SLPrincipal.Values['ped_prg_cab']);
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
    ModifySQL.Add('update '+SLPrincipal.Values['ped_prg_cab']);
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

procedure Tfrmctr_prg.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
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

procedure Tfrmctr_prg.rom_iteAfterScroll(DataSet: TDataSet);
begin
  carregaFoto(rom_itePRO_FOTO.BlobSize,rom_itePRO_FOTO,rom_ite,frmprincipal.parametros);
end;

procedure Tfrmctr_prg.cadastroBeforeEdit(DataSet: TDataSet);
begin
  {};
end;

procedure Tfrmctr_prg.cadastroBeforeInsert(DataSet: TDataSet);
begin
  {};
end;

procedure Tfrmctr_prg.siAROClick(Sender: TObject);
begin
  tag        := 0;
  siARO.Tag  := 1;
  frmven_prg := Tfrmven_prg.Create(self);

  siARO.Tag  := 0;
  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
    frmven_prg.FormStyle := fsNormal;
    frmven_prg.Visible   := false;
    frmven_prg.ShowModal;
  end
  else
    frmven_prg.Show;
end;

procedure Tfrmctr_prg.dtscadastroDataChange(Sender: TObject;
  Field: TField);
begin
  siARO.Enabled := (cadastroROM_STA.AsString  = '0');
  siCRO.Enabled := (cadastroROM_STA.AsString  = '0');
  siFRO.Enabled := (cadastroROM_STA.AsString  = '0');

  siFRO.ImageIndex := 8;
  siFRO.BtnCaption := 'Finalizar';
  siFRO.Hint       := 'Finalizar programação de venda';
  if cadastroROM_STFI.AsString = 'FINALIZADO' then
  begin
    siFRO.ImageIndex := 14;
    siFRO.BtnCaption := 'Re-abrir';
    siFRO.Hint       := 'Re-abrir programação de venda';
  end;

  sbMSG.Panels[2].Text := cadastroROM_OBSE.AsString;
end;

procedure Tfrmctr_prg.siRELClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.CDPD                 := cadastroID.AsString;
    frmrelatorio_geral.CDRO                 := cadastroROM_CDRO.AsString;
    frmrelatorio_geral.CDBX                 := cadastroROM_CDBX.AsString;
    frmrelatorio_geral.CDNF                 := cadastroROM_CDNF.AsString;
    frmrelatorio_geral.tsVEN_PRG.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsVEN_PRG;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmctr_prg.cadastroAfterOpen(DataSet: TDataSet);
begin
  with rom_ite do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PED_PRG_ITE.*,CAD_PRO.ID,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_CCOR,');
    SQL.Add('         CAD_PRO.PRO_RCOR,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
    SQL.Add('         CAD_PRO.PRO_CBAR,CAD_PRO.PRO_PPRO,CAD_PRO.PRO_CEMB,CAD_PRO.PRO_GRAD,');
    SQL.Add('         CAD_PRO.PRO_PIPI,CAD_PRO.PRO_REPR,CAD_PRO_IMG.PRO_FOTO');
    SQL.Add('FROM     CAD_PRO_IMG,CAD_PRO,'+SLPrincipal.Values['ped_prg_ite']+' "PED_PRG_ITE"');
    SQL.Add('WHERE    PED_PRG_ITE.ROM_CPRO = CAD_PRO.ID');
    SQL.Add('AND      CAD_PRO_IMG.PRO_CART = CAD_PRO.PRO_CART');
    SQL.Add('AND      PED_PRG_ITE.ROM_CCAB = :ID');
    SQL.Add('ORDER BY PED_PRG_ITE.ROM_ITEM');
    Open;
  end;
end;

procedure Tfrmctr_prg.cadastroCalcFields(DataSet: TDataSet);
begin
  cadastroROM_DESC.Value := formatfloat('#,0.00########',cadastroROM_PDSC.AsFloat);
  if cadastroROM_CDSC.AsFloat > 0 then
     cadastroROM_DESC.Value := cadastroROM_DESC.AsString+'+'+formatfloat('#,0.00########',cadastroROM_CDSC.AsFloat);
end;

procedure Tfrmctr_prg.siPSQClick(Sender: TObject);
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
        SelectSQL.Add('SELECT   PED_PRG_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
        SelectSQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_prg_cab']+' "PED_PRG_CAB"');
        SelectSQL.Add('WHERE    PED_PRG_CAB.ROM_CCLI = CAD_CLI.ID');
        SelectSQL.Add('AND      PED_PRG_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
        SelectSQL.Add('AND      PED_PRG_CAB.ROM_CREP = CAD_REP.ID');
        SelectSQL.Add('AND      PED_PRG_CAB.ROM_CPAG = TAB_PAG.ID');

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

procedure Tfrmctr_prg.siEVEClick(Sender: TObject);
begin
{  frmlog_eve := tfrmlog_eve.create(self);
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
  frmlog_eve.show;}

  cadastro.First;
  while not cadastro.Eof do
  begin
    if cadastroROM_STFI.AsString = 'PENDENTE' then
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID,ROM_DROM FROM PED_VEN_CAB');
        SQL.Add('WHERE  ROM_DERO = '''+cadastroROM_DERO.AsString+'''');
        Open;
      end;

      if consulta.Fields[0].AsInteger > 0 then
      begin
        with frmprincipal.sp_sql do
        begin
          ibSP.StoredProcName := 'SP_SQL';

          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_prg']);
          SQL.Add('SET    EST_CDPD = '''+cadastroID.AsString+'''');
          SQL.Add('WHERE  EST_CDRO = '''+cadastroID.AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;
        end;

        cadastro.Edit;
        cadastroROM_DBAI.Value := consulta.Fields[1].AsDateTime;
        cadastroROM_STFI.Value := 'FINALIZADO';
        cadastro.Post;
      end;
    end;
    cadastro.Next;
  end;
end;

procedure Tfrmctr_prg.dtsrom_iteDataChange(Sender: TObject; Field: TField);
var
  tam: word;
begin
  tam := dbgiteROM_DPRO.Tag;

  if screen.Width >= 1360 then
     tam := tam + 80;
  
  if rom_itePRO_DCOR.AsString <> '' then
  dbgitePRO_DCOR.Visible := true
  else
  dbgitePRO_DCOR.Visible := false;

  if dbgitePRO_DCOR.Visible then
     tam := tam - dbgitePRO_DCOR.Width;

  dbgiteROM_DPRO.Width := tam;
end;

procedure Tfrmctr_prg.siCROClick(Sender: TObject);
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
    SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_prg']);
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
  cadastroROM_CEXP.Value := 0;
  cadastroROM_OBSE.Value := cadastroROM_OBSE.AsString+NewString;
  cadastro.Post;
end;

procedure Tfrmctr_prg.dbgConsultaCustomDrawCell(Sender: TObject;
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
    AColor      := $00E1BB6C;
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
    else if Value = 'SEPARAÇÃO' then
    begin
      AFont.Color := clWhite;
      AColor      := clBlack;
    end
  end;
end;

procedure Tfrmctr_prg.siFROClick(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
  if cadastroROM_STFI.AsString = 'FINALIZADO' then
  begin
    if yesno(handle,'Re-abrir a Programação No '+cadastroROM_DERO.AsString+' ?') = mrno then
    abort;

    with frmprincipal.sp_sql do
    begin
      ibSP.StoredProcName := 'SP_SQL';

      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_prg']);
      SQL.Add('SET    EST_CDPD = NULL');
      SQL.Add('WHERE  EST_CDRO = '''+cadastroID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    cadastro.Edit;
    cadastroROM_DBAI.AsString := '';
    cadastroROM_STFI.Value    := 'PENDENTE';
    cadastro.Post;
  end else
  begin
    if yesno(handle,'Finalizar Programação No '+cadastroROM_DERO.AsString+' ?') = mrno then
    abort;

    ClickedOK := InputQuery('Finalização de Pedido', 'Motivo', NewString);
    if not ClickedOK then
       abort;

    with frmprincipal.sp_sql do
    begin
      ibSP.StoredProcName := 'SP_SQL';

      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_prg']);
      SQL.Add('SET    EST_CDPD = '''+cadastroID.AsString+'''');
      SQL.Add('WHERE  EST_CDRO = '''+cadastroID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    cadastro.Edit;
    cadastroROM_DBAI.Value := strtodate(SLPrincipal.Values['data_sistema']);
    cadastroROM_STFI.Value := 'FINALIZADO';
    cadastro.Post;
  end;
end;

procedure Tfrmctr_prg.writefotoClick(Sender: TObject);
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
