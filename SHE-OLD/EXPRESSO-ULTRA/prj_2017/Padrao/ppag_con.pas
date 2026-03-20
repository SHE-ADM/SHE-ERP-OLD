unit ppag_con;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, IBEvents, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, DateUtils,
  dxDBGrid, ExtCtrls,  ComCtrls, dxDBTLCl, dxGrClms, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib, DBCtrls, StdCtrls, dxPageControl, rxSpeedbar;

type
  Tfrmpag_con = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroFIN_CCAB: TIntegerField;
    cadastroFIN_CDBX: TIntegerField;
    cadastroFIN_CDCX: TIntegerField;
    cadastroFIN_CFOR: TIntegerField;
    cadastroFIN_CVEN: TIntegerField;
    cadastroFIN_CREP: TIntegerField;
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
    cadastroFIN_PREV: TIBStringField;
    cadastroFIN_DUPL: TIBStringField;
    cadastroFIN_DCAN: TDateField;
    cadastroFIN_CPPL: TIntegerField;
    cadastroFIN_CCUS: TIntegerField;
    cadastroFIN_CBCO: TIntegerField;
    cadastroFIN_PORT: TIBStringField;
    cadastroFIN_VMUL: TIBBCDField;
    cadastroFIN_PMUL: TIBBCDField;
    cadastroFIN_VJUR: TIBBCDField;
    cadastroFIN_PJUR: TIBBCDField;
    cadastroFIN_VDES: TIBBCDField;
    cadastroFIN_PDES: TIBBCDField;
    cadastroFIN_DESC: TIBStringField;
    cadastroFIN_CDCO: TIntegerField;
    cadastroFIN_CDBA: TIBStringField;
    cadastroFIN_DEBA: TIBStringField;
    cadastroFIN_DBAI: TDateField;
    cadastroFIN_IDBX: TIBStringField;
    cadastroFIN_VENC: TIBBCDField;
    cadastroFIN_DDES: TDateField;
    cadastroFOR_FANT: TIBStringField;
    cadastroFIN_CPPL1: TIBStringField;
    cadastroFIN_DFIN: TIBStringField;
    cadastroFIN_DCUS: TIBStringField;
    dbgConsultaFIN_DCAD: TdxDBGridDateColumn;
    dbgConsultaFIN_DVEN: TdxDBGridDateColumn;
    dbgConsultaFIN_DPAG: TdxDBGridDateColumn;
    dbgConsultaFIN_DOCT: TdxDBGridMaskColumn;
    dbgConsultaFIN_STFI: TdxDBGridMaskColumn;
    dbgConsultaFIN_VALO: TdxDBGridMaskColumn;
    dbgConsultaFIN_VPAG: TdxDBGridMaskColumn;
    dbgConsultaFIN_VPEN: TdxDBGridMaskColumn;
    dbgConsultaFOR_FANT: TdxDBGridMaskColumn;
    dbgConsultaFIN_DFIN: TdxDBGridMaskColumn;
    dbgConsultaFIN_DCUS: TdxDBGridMaskColumn;
    dbgConsultaFIN_DCAN: TdxDBGridDateColumn;
    dbgConsultaFIN_VENC: TdxDBGridMaskColumn;
    Panel1: TPanel;
    pcdet: TdxPageControl;
    tsdet: TdxTabSheet;
    pnlfic: TPanel;
    Shape3: TShape;
    Label7: TLabel;
    linha2: TShape;
    Label48: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    Shape4: TShape;
    Label5: TLabel;
    Shape5: TShape;
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
    dxPageControl1: TdxPageControl;
    dxTabSheet2: TdxTabSheet;
    dxDBMemo1: TdxDBMemo;
    pclan: TdxPageControl;
    tslan: TdxTabSheet;
    dbgrec_rec: TdxDBGrid;
    fin_pag_rec: TIBQuery;
    dtsfin_pag_rec: TDataSource;
    fin_pag_recID: TIntegerField;
    fin_pag_recFIN_CDBX: TIntegerField;
    fin_pag_recFIN_DCAD: TDateField;
    fin_pag_recFIN_DVEN: TDateField;
    fin_pag_recFIN_TIPO: TIBStringField;
    fin_pag_recFIN_BANC: TIBStringField;
    fin_pag_recFIN_DBAN: TIBStringField;
    fin_pag_recFIN_AGEN: TIBStringField;
    fin_pag_recFIN_CONT: TIBStringField;
    fin_pag_recFIN_NCHQ: TIBStringField;
    fin_pag_recFIN_PRAZ: TSmallintField;
    fin_pag_recFIN_VALO: TIBBCDField;
    fin_pag_recFIN_OBSE: TMemoField;
    fin_pag_recFIN_STA: TIBStringField;
    dbgrec_recFIN_DVEN: TdxDBGridDateColumn;
    dbgrec_recFIN_TIPO: TdxDBGridMaskColumn;
    dbgrec_recFIN_BANC: TdxDBGridMaskColumn;
    dbgrec_recFIN_AGEN: TdxDBGridMaskColumn;
    dbgrec_recFIN_CONT: TdxDBGridMaskColumn;
    dbgrec_recFIN_NCHQ: TdxDBGridMaskColumn;
    dbgrec_recFIN_VALO: TdxDBGridMaskColumn;
    DBText1: TDBText;
    Label1: TLabel;
    DBText2: TDBText;
    Label2: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label4: TLabel;
    DBText17: TDBText;
    siUPD: TSpeedItem;
    fin_pag_recFIN_DOCT: TIBStringField;
    dbgrec_recFIN_DOCT: TdxDBGridMaskColumn;
    dxPageControl2: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    dxDBMemo2: TdxDBMemo;
    dbgConsultaFIN_DESC: TdxDBGridMaskColumn;
    fin_pag_recFIN_CCAB: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siPSQClick(Sender: TObject);
    procedure dtscadastroDataChange(Sender: TObject; Field: TField);
    procedure cadastroAfterOpen(DataSet: TDataSet);
    procedure siRELClick(Sender: TObject);
    procedure siUPDClick(Sender: TObject);
  private
    { Private declarations }
    procedure abre_tabela;
    procedure ajustaform;
  public
    { Public declarations }
  end;

var
  frmpag_con: Tfrmpag_con;

implementation

uses p_funcoes, uPrincipal, ppesquisa, prelatorio_geral, ppag_cad;

{$R *.dfm}

procedure Tfrmpag_con.AjustaForm;
begin
  screen.Cursor:=crHourGlass;
  screen.Cursor:=crDefault;

  Self.Height  := frmprincipal.pnCustomize.Height-4;
  Self.top     := 0;
  Self.left    := 0;
  pnldir.Width := FOTO_WIDTH;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
   self.Height := screen.Height;
   self.Width  :=  screen.Width;

   if frmprincipal.pnbot.Visible then
      self.Height := self.Height - frmprincipal.pnbot.Height;
  end;
end;

procedure Tfrmpag_con.abre_tabela;
begin
  with cadastro do
  begin
    DeleteSQL.Clear;
    DeleteSQL.Add('delete from '+TSConsulta.Values['fin_pag']);
    DeleteSQL.Add('where');
    DeleteSQL.Add('ID = :OLD_ID');

    InsertSQL.Clear;
    InsertSQL.Add('insert into '+TSConsulta.Values['fin_pag']);
    InsertSQL.Add('  (FIN_AGEN, FIN_ATRA, FIN_BANC, FIN_CBCO, FIN_CCAB, FIN_CFOR, FIN_CCUS,');
    InsertSQL.Add('   FIN_CDBA, FIN_CDBX, FIN_CDCO, FIN_CDCX, FIN_CONC, FIN_CONT, FIN_CPPL,');
    InsertSQL.Add('   FIN_CREP, FIN_CVEN, FIN_DATR, FIN_DBAI, FIN_DBAN, FIN_DCAD, FIN_DCAN,');
    InsertSQL.Add('   FIN_DEBA, FIN_DESC, FIN_DMED, FIN_DOCT, FIN_DPAG, FIN_DUPL, FIN_DVEN,');
    InsertSQL.Add('   FIN_IDBX, FIN_MCHQ, FIN_NCHQ, FIN_OBSE, FIN_PDES, FIN_PJUR, FIN_PMUL,');
    InsertSQL.Add('   FIN_PORT, FIN_PRAZ, FIN_PREV, FIN_STA , FIN_STCO, FIN_STDO, FIN_STFI,');
    InsertSQL.Add('   FIN_TIPO, FIN_VALO, FIN_VDES, FIN_VENC, FIN_VJUR, FIN_VMUL, FIN_VPAG,');
    InsertSQL.Add('   FIN_VPEN, ID)');
    InsertSQL.Add('values');
    InsertSQL.Add('  (:FIN_AGEN, :FIN_ATRA, :FIN_BANC, :FIN_CBCO, :FIN_CCAB, :FIN_CFOR, :FIN_CCUS,');
    InsertSQL.Add('   :FIN_CDBA, :FIN_CDBX, :FIN_CDCO, :FIN_CDCX, :FIN_CONC, :FIN_CONT, :FIN_CPPL,');
    InsertSQL.Add('   :FIN_CREP, :FIN_CVEN, :FIN_DATR, :FIN_DBAI, :FIN_DBAN, :FIN_DCAD, :FIN_DCAN,');
    InsertSQL.Add('   :FIN_DEBA, :FIN_DESC, :FIN_DMED, :FIN_DOCT, :FIN_DPAG, :FIN_DUPL, :FIN_DVEN,');
    InsertSQL.Add('   :FIN_IDBX, :FIN_MCHQ, :FIN_NCHQ, :FIN_OBSE, :FIN_PDES, :FIN_PJUR, :FIN_PMUL,');
    InsertSQL.Add('   :FIN_PORT, :FIN_PRAZ, :FIN_PREV, :FIN_STA , :FIN_STCO, :FIN_STDO, :FIN_STFI,');
    InsertSQL.Add('   :FIN_TIPO, :FIN_VALO, :FIN_VDES, :FIN_VENC, :FIN_VJUR, :FIN_VMUL, :FIN_VPAG,');
    InsertSQL.Add('   :FIN_VPEN, :ID)');

    ModifySQL.Clear;
    ModifySQL.Add('update '+TSConsulta.Values['fin_pag']);
    ModifySQL.Add('set');
    ModifySQL.Add('  FIN_AGEN = :FIN_AGEN,');
    ModifySQL.Add('  FIN_ATRA = :FIN_ATRA,');
    ModifySQL.Add('  FIN_BANC = :FIN_BANC,');
    ModifySQL.Add('  FIN_CBCO = :FIN_CBCO,');
    ModifySQL.Add('  FIN_CCAB = :FIN_CCAB,');
    ModifySQL.Add('  FIN_CFOR = :FIN_CFOR,');
    ModifySQL.Add('  FIN_CCUS = :FIN_CCUS,');
    ModifySQL.Add('  FIN_CDBA = :FIN_CDBA,');
    ModifySQL.Add('  FIN_CDBX = :FIN_CDBX,');
    ModifySQL.Add('  FIN_CDCO = :FIN_CDCO,');
    ModifySQL.Add('  FIN_CDCX = :FIN_CDCX,');
    ModifySQL.Add('  FIN_CONC = :FIN_CONC,');
    ModifySQL.Add('  FIN_CONT = :FIN_CONT,');
    ModifySQL.Add('  FIN_CPPL = :FIN_CPPL,');
    ModifySQL.Add('  FIN_CREP = :FIN_CREP,');
    ModifySQL.Add('  FIN_CVEN = :FIN_CVEN,');
    ModifySQL.Add('  FIN_DATR = :FIN_DATR,');
    ModifySQL.Add('  FIN_DBAI = :FIN_DBAI,');
    ModifySQL.Add('  FIN_DBAN = :FIN_DBAN,');
    ModifySQL.Add('  FIN_DCAD = :FIN_DCAD,');
    ModifySQL.Add('  FIN_DCAN = :FIN_DCAN,');
    ModifySQL.Add('  FIN_DEBA = :FIN_DEBA,');
    ModifySQL.Add('  FIN_DESC = :FIN_DESC,');
    ModifySQL.Add('  FIN_DMED = :FIN_DMED,');
    ModifySQL.Add('  FIN_DOCT = :FIN_DOCT,');
    ModifySQL.Add('  FIN_DPAG = :FIN_DPAG,');
    ModifySQL.Add('  FIN_DUPL = :FIN_DUPL,');
    ModifySQL.Add('  FIN_DVEN = :FIN_DVEN,');
    ModifySQL.Add('  FIN_IDBX = :FIN_IDBX,');
    ModifySQL.Add('  FIN_MCHQ = :FIN_MCHQ,');
    ModifySQL.Add('  FIN_NCHQ = :FIN_NCHQ,');
    ModifySQL.Add('  FIN_OBSE = :FIN_OBSE,');
    ModifySQL.Add('  FIN_PDES = :FIN_PDES,');
    ModifySQL.Add('  FIN_PJUR = :FIN_PJUR,');
    ModifySQL.Add('  FIN_PMUL = :FIN_PMUL,');
    ModifySQL.Add('  FIN_PORT = :FIN_PORT,');
    ModifySQL.Add('  FIN_PRAZ = :FIN_PRAZ,');
    ModifySQL.Add('  FIN_PREV = :FIN_PREV,');
    ModifySQL.Add('  FIN_STA  = :FIN_STA, ');
    ModifySQL.Add('  FIN_STCO = :FIN_STCO,');
    ModifySQL.Add('  FIN_STDO = :FIN_STDO,');
    ModifySQL.Add('  FIN_STFI = :FIN_STFI,');
    ModifySQL.Add('  FIN_TIPO = :FIN_TIPO,');
    ModifySQL.Add('  FIN_VALO = :FIN_VALO,');
    ModifySQL.Add('  FIN_VDES = :FIN_VDES,');
    ModifySQL.Add('  FIN_VENC = :FIN_VENC,');
    ModifySQL.Add('  FIN_VJUR = :FIN_VJUR,');
    ModifySQL.Add('  FIN_VMUL = :FIN_VMUL,');
    ModifySQL.Add('  FIN_VPAG = :FIN_VPAG,');
    ModifySQL.Add('  FIN_VPEN = :FIN_VPEN,');
    ModifySQL.Add('  ID = :ID');
    ModifySQL.Add('where');
    ModifySQL.Add('  ID = :OLD_ID');
  end;
end;

procedure Tfrmpag_con.FormCreate(Sender: TObject);
begin
  cEvent := 'REC_BAN';

  ABRE_TABELA;
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   FIN_PAG.*,CAD_FOR.FOR_FANT,FIN_PPL.FIN_CPPL,FIN_PPL.FIN_DFIN,FIN_CUS.FIN_DCUS');
    SelectSQL.Add('FROM     CAD_FOR,FIN_PPL,FIN_CUS,'+TSConsulta.Values['fin_pag']+' "FIN_PAG"');
    SelectSQL.Add('WHERE    FIN_PAG.FIN_CFOR = CAD_FOR.ID');
    SelectSQL.Add('AND      FIN_PAG.FIN_CPPL = FIN_PPL.ID');
    SelectSQL.Add('AND      FIN_PAG.FIN_CCUS = FIN_CUS.ID');
    SelectSQL.Add('AND      FIN_PAG.FIN_DVEN BETWEEN '''+formatDateTime('mm/dd/yy',StartOfTheMonth(strtodate(TSConsulta.Values['data_sistema'])))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(strtodate(TSConsulta.Values['data_sistema'])))+'''');
    SelectSQL.Add('OR       FIN_PAG.FIN_CFOR = CAD_FOR.ID');
    SelectSQL.Add('AND      FIN_PAG.FIN_CPPL = FIN_PPL.ID');
    SelectSQL.Add('AND      FIN_PAG.FIN_CCUS = FIN_CUS.ID');
    SelectSQL.Add('AND      FIN_PAG.FIN_DCAD BETWEEN '''+formatDateTime('mm/dd/yy',StartOfTheMonth(strtodate(TSConsulta.Values['data_sistema'])))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(strtodate(TSConsulta.Values['data_sistema'])))+'''');

    SelectSQL.Add('ORDER BY CAD_FOR.FOR_FANT,FIN_PAG.FIN_DVEN');
  end;
  
  inherited;
  Ajustaform;
end;

procedure Tfrmpag_con.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmpag_con <> nil then
  begin
    frmpag_con.Release;
    frmpag_con := nil;
  end;
end;

procedure Tfrmpag_con.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
  var Value: variant;
begin
  if not ASelected then
  begin
    AFont.Color := clBlack;
    AColor      := clWhite;

    Value  := ANode.Values[12];

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
      else if Value = 'SUSPENSO' then
      begin
         AFont.Color := clwhite;
         AColor      := $000024B3;
      end;
    end;

    if (AColumn = dbgConsultaFIN_VPEN) then
    begin
      AColor      := $00BEEFF8;
      AFont.Color := clBlack;
    end;

    if (AColumn = dbgConsultaFIN_VALO) or (AColumn = dbgConsultaFIN_DVEN) then
    begin
      AColor      := $00E1AD40;
      AFont.Color := clBlack;
    end;

    if (AColumn = dbgConsultaFIN_VPAG) or (AColumn = dbgConsultaFIN_DPAG) then
    begin
      AColor      := $00A4A400;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure Tfrmpag_con.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  if campo_pesquisa = '' then
  frmpesquisa.cbCAMPO.Text := 'Documento' else
  frmpesquisa.cbCAMPO.Text := campo_pesquisa;
  
  try
    frmpesquisa.Tag := 12;
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
        SelectSQL.Add('SELECT   FIN_PAG.*,CAD_FOR.FOR_FANT,FIN_PPL.FIN_CPPL,FIN_PPL.FIN_DFIN,FIN_CUS.FIN_DCUS');
        SelectSQL.Add('FROM     CAD_FOR,FIN_PPL,FIN_CUS,'+TSConsulta.Values['fin_pag']+' "FIN_PAG"');
        SelectSQL.Add('WHERE    FIN_PAG.FIN_CFOR = CAD_FOR.ID');
        SelectSQL.Add('AND      FIN_PAG.FIN_CPPL = FIN_PPL.ID');
        SelectSQL.Add('AND      FIN_PAG.FIN_CCUS = FIN_CUS.ID');

        if edtxt.Text <> '' then
        begin
          if cField = 'CAD_CLI.ID' then
          SelectSQL.Add('AND '+cField+' = '''+edtxt.Text+'''')
          else
          SelectSQL.Add('AND '+cField+' LIKE ''%'+edtxt.Text+'%''');
        end;

        if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
           SelectSQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

        SelectSQL.Add('ORDER BY FIN_DCAD DESC');
        Open;
      end;
      dbgconsulta.SetFocus;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmpag_con.dtscadastroDataChange(Sender: TObject;
  Field: TField);
begin
  dbgConsultaFIN_DCAN.Visible := false;
  
  if cadastroFIN_STFI.AsString = 'CANCELADO' then
  begin
    dbgConsultaFIN_DCAN.Visible := true;
    dbgConsultaFIN_DCAN.Caption := 'Dt Cancelado';
  end else
  if cadastroFIN_STFI.AsString = 'SUSPENSO' then
  begin
    dbgConsultaFIN_DCAN.Visible := true;
    dbgConsultaFIN_DCAN.Caption := 'Dt Suspenso';
  end;
end;

procedure Tfrmpag_con.cadastroAfterOpen(DataSet: TDataSet);
begin
  with fin_pag_rec do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM '+TSConsulta.Values['fin_pag_rec']);
    SQL.Add('WHERE    FIN_CDBX = :FIN_CDBX');
    SQL.Add('ORDER BY ID');
    Open;
  end;
end;

procedure Tfrmpag_con.siRELClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.tsFIN_PAG.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsFIN_PAG;
    frmrelatorio_geral.cbFIN_PAG_TREL.Text  := 'LISTAGEM GERAL DE CONTAS A PAGAR';
    frmrelatorio_geral.cbFIN_PAG_TREL.Tag   := 0;

    with frmrelatorio_geral.consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   FIN_PAG.FIN_CFOR,CAD_FOR.FOR_FANT,CAD_FOR.FOR_RAZA');
      SQL.Add('FROM     CAD_FOR,'+TSConsulta.Values['fin_pag']+' "FIN_PAG"');
      SQL.Add('WHERE    CAD_FOR.ID = FIN_PAG.FIN_CFOR');
      SQL.Add('GROUP BY FIN_PAG.FIN_CFOR,CAD_FOR.FOR_FANT,CAD_FOR.FOR_RAZA');
      SQL.Add('ORDER BY CAD_FOR.FOR_FANT');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbFIN_PAG_DFOR.Items.Add(fields[1].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   FIN_PAG.FIN_CFOR,CAD_FOR.FOR_FANT,CAD_FOR.FOR_RAZA');
      SQL.Add('FROM     CAD_FOR,'+TSConsulta.Values['FIN_PAG']+' "FIN_PAG"');
      SQL.Add('WHERE    CAD_FOR.ID = FIN_PAG.FIN_CFOR');
      SQL.Add('GROUP BY FIN_PAG.FIN_CFOR,CAD_FOR.FOR_FANT,CAD_FOR.FOR_RAZA');
      SQL.Add('ORDER BY CAD_FOR.FOR_RAZA');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbFIN_PAG_RFOR.Items.Add(fields[2].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   FIN_DFIN');
      SQL.Add('FROM     FIN_PPL,'+TSConsulta.Values['FIN_PAG']+' "FIN_PAG"');
      SQL.Add('WHERE    FIN_PAG.FIN_CPPL = FIN_PPL.ID');
      SQL.Add('GROUP BY FIN_DFIN');
      SQL.Add('ORDER BY FIN_DFIN');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbFIN_PAG_DFIN.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   FIN_DCUS');
      SQL.Add('FROM     FIN_CUS,'+TSConsulta.Values['FIN_PAG']+' "FIN_PAG"');
      SQL.Add('WHERE    FIN_PAG.FIN_CCUS = FIN_CUS.ID');
      SQL.Add('GROUP BY FIN_DCUS');
      SQL.Add('ORDER BY FIN_DCUS');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbFIN_PAG_DCUS.Items.Add(fields[0].AsString);
        next;
      end;
    end;

    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmpag_con.siUPDClick(Sender: TObject);
var
  wRec: TBookMark;
begin
  frmpag_cad := tfrmpag_cad.create(self);
  try
    fin_pag_rec.First;
    while not fin_pag_rec.Eof do
    begin
      if fin_pag_recFIN_CCAB.AsInteger = cadastroID.AsInteger then
      with frmpag_cad.consulta_S do
      begin
        SQL.Clear;
        SQL.Clear;
        SQL.Add('INSERT INTO FIN_REC_REC (ID,FIN_CDBX,FIN_DCAD,FIN_DVEN,FIN_VALO,FIN_TIPO,FIN_BANC,FIN_AGEN,FIN_CONT,FIN_NCHQ,FIN_OBSE)');
        SQL.Add('VALUES (');
        SQL.Add('''0'',');
        SQL.Add(''''+fin_pag_recFIN_CDBX.AsString                             +''',');
        SQL.Add(''''+formatDateTime('mm/dd/yy',fin_pag_recFIN_DCAD.AsDateTime)+''',');
        SQL.Add(''''+formatDateTime('mm/dd/yy',fin_pag_recFIN_DVEN.AsDateTime)+''',');
        SQL.Add(''''+strtran(fin_pag_recFIN_VALO.AsString,',','.')            +''',');
        SQL.Add(''''+fin_pag_recFIN_TIPO.AsString                             +''',');
        SQL.Add(''''+fin_pag_recFIN_BANC.AsString                             +''',');
        SQL.Add(''''+fin_pag_recFIN_AGEN.AsString                             +''',');
        SQL.Add(''''+fin_pag_recFIN_CONT.AsString                             +''',');
        SQL.Add(''''+fin_pag_recFIN_NCHQ.AsString                             +''',');
        SQL.Add(''''+fin_pag_recFIN_OBSE.AsString                             +''')');
        ExecSQL;
        frmpag_cad.tSHEILD.CommitRetaining;
      end;

      fin_pag_rec.Next;
    end;

    frmpag_cad.edid.tag := 1;
    frmpag_cad.eddoct.Text := cadastroFIN_DOCT.AsString;
    frmpag_cad.edcfor.Text := cadastroFIN_CFOR.AsString;
    frmpag_cad.cbdfor.Text := cadastroFOR_FANT.AsString;
    frmpag_cad.edccab.Text := cadastroFIN_CCAB.AsString;
    frmpag_cad.edcdbx.Text := cadastroFIN_CDBX.AsString;
    frmpag_cad.edcdcx.Text := cadastroFIN_CDCX.AsString;
    frmpag_cad.edid.Text   := cadastroID.AsString;
    frmpag_cad.edcdbx.Tag  := cadastroID.AsInteger;
    frmpag_cad.eddfin.Text := cadastroFIN_DFIN.AsString;
    frmpag_cad.edippl.Text := cadastroFIN_CPPL.AsString;

    frmpag_cad.consulta.SQL.Clear;
    frmpag_cad.consulta.SQL.Add('SELECT FIN_CPPL,FIN_DFIN FROM FIN_PPL');
    frmpag_cad.consulta.SQL.Add('WHERE  ID = '''+frmpag_cad.edippl.Text+'''');
    frmpag_cad.consulta.Open;

    frmpag_cad.edcppl.Text := frmpag_cad.consulta.fields[0].AsString;
    frmpag_cad.cbdppl.Text := frmpag_cad.consulta.fields[1].AsString;

    frmpag_cad.edccus.Text := cadastroFIN_CCUS.AsString;
    frmpag_cad.cbdcus.Text := cadastroFIN_DCUS.AsString;
    frmpag_cad.cbstfi.Text := cadastroFIN_STFI.AsString;
    frmpag_cad.cbprev.Text := 'NÃO';
    if cadastroFIN_PREV.AsString = '1' then
    frmpag_cad.cbprev.Text := 'SIM';
    frmpag_cad.cbdupl.Text := 'NÃO';
    if cadastroFIN_DUPL.AsString = '1' then
    frmpag_cad.cbdupl.Text := 'SIM';
    frmpag_cad.eddcad.Date := cadastroFIN_DCAD.AsDateTime;
    frmpag_cad.eddven.Date := cadastroFIN_DVEN.AsDateTime;
    if cadastroFIN_DBAI.AsDateTime > 0 then
    frmpag_cad.eddbai.Date := cadastroFIN_DBAI.AsDateTime;
    if cadastroFIN_DPAG.AsDateTime > 0 then
    frmpag_cad.eddpag.Date := cadastroFIN_DPAG.AsDateTime;
    if cadastroFIN_DDES.AsDateTime > 0 then
    frmpag_cad.edddes.Date := cadastroFIN_DDES.AsDateTime;
    frmpag_cad.edobse.Text := cadastroFIN_OBSE.AsString;

    frmpag_cad.edvalo.Text := formatFloat('#,0.00########',cadastroFIN_VALO.AsFloat);
    frmpag_cad.edvpen.Text := formatFloat('#,0.00########',cadastroFIN_VPEN.AsFloat);
    frmpag_cad.edvpag.Text := formatFloat('#,0.00########',cadastroFIN_VPAG.AsFloat);
    frmpag_cad.edvenc.Text := formatFloat('#,0.00########',cadastroFIN_VENC.AsFloat);
    frmpag_cad.edvmul.Text := formatFloat('#,0.00########',cadastroFIN_VMUL.AsFloat);
    frmpag_cad.edpmul.Text := formatFloat('#,0.00########',cadastroFIN_PMUL.AsFloat);
    frmpag_cad.edvjur.Text := formatFloat('#,0.00########',cadastroFIN_VJUR.AsFloat);
    frmpag_cad.edpjur.Text := formatFloat('#,0.00########',cadastroFIN_PJUR.AsFloat);
    frmpag_cad.edvdes.Text := formatFloat('#,0.00########',cadastroFIN_VDES.AsFloat);
    frmpag_cad.edpdes.Text := formatFloat('#,0.00########',cadastroFIN_PDES.AsFloat);
    frmpag_cad.ShowModal;
  finally
    wRec := cadastro.GetBookmark;

    cadastro.Close;
    cadastro.Open;
    if (wRec = Nil) or (cadastro.Fields[0].IsNull) then cadastro.last
       else cadastro.GotoBookmark(wRec);
    cadastro.FreeBookmark(wRec);

    freeAndNil(frmpag_cad);
    frmpag_cad.Free;
  end;
end;

end.
