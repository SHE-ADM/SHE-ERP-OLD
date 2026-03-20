unit ppag_rec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, ppadr3, dxDBTLCl,
  dxGrClms, Dateutils, dxExEdtr, rxSpeedbar;

type
  Tfrmpag_rec = class(Tfrmpadr3)
    dtscadastro: TDataSource;
    tSHEILD: TIBTransaction;
    siPSQ: TSpeedItem;
    cadastro: TIBDataSet;
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
    dbgConsulta: TdxDBGrid;
    finI: TSpeedItem;
    fin_pag: TIBQuery;
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
    cadastroFIN_DFOR: TIBStringField;
    cadastroFIN_IPPL: TIBStringField;
    cadastroFIN_DFIN: TIBStringField;
    cadastroFIN_DCUS: TIBStringField;
    fin_pagID: TIntegerField;
    fin_pagFIN_CCAB: TIntegerField;
    fin_pagFIN_CDBX: TIntegerField;
    fin_pagFIN_CDCX: TIntegerField;
    fin_pagFIN_CFOR: TIntegerField;
    fin_pagFIN_CVEN: TIntegerField;
    fin_pagFIN_CREP: TIntegerField;
    fin_pagFIN_PRAZ: TSmallintField;
    fin_pagFIN_ATRA: TSmallintField;
    fin_pagFIN_CONC: TSmallintField;
    fin_pagFIN_DCAD: TDateField;
    fin_pagFIN_DVEN: TDateField;
    fin_pagFIN_DPAG: TDateField;
    fin_pagFIN_DMED: TDateField;
    fin_pagFIN_DATR: TDateField;
    fin_pagFIN_STDO: TIBStringField;
    fin_pagFIN_DOCT: TIBStringField;
    fin_pagFIN_BANC: TIBStringField;
    fin_pagFIN_DBAN: TIBStringField;
    fin_pagFIN_AGEN: TIBStringField;
    fin_pagFIN_CONT: TIBStringField;
    fin_pagFIN_NCHQ: TIBStringField;
    fin_pagFIN_MCHQ: TSmallintField;
    fin_pagFIN_TIPO: TIBStringField;
    fin_pagFIN_STFI: TIBStringField;
    fin_pagFIN_STCO: TIBStringField;
    fin_pagFIN_VALO: TIBBCDField;
    fin_pagFIN_VPAG: TIBBCDField;
    fin_pagFIN_VPEN: TIBBCDField;
    fin_pagFIN_OBSE: TMemoField;
    fin_pagFIN_STA: TIBStringField;
    fin_pagFIN_PREV: TIBStringField;
    fin_pagFIN_DUPL: TIBStringField;
    fin_pagFIN_DCAN: TDateField;
    fin_pagFIN_CPPL: TIntegerField;
    fin_pagFIN_CCUS: TIntegerField;
    fin_pagFIN_CBCO: TIntegerField;
    fin_pagFIN_PORT: TIBStringField;
    fin_pagFIN_VMUL: TIBBCDField;
    fin_pagFIN_PMUL: TIBBCDField;
    fin_pagFIN_VJUR: TIBBCDField;
    fin_pagFIN_PJUR: TIBBCDField;
    fin_pagFIN_VDES: TIBBCDField;
    fin_pagFIN_PDES: TIBBCDField;
    fin_pagFIN_DESC: TIBStringField;
    fin_pagFIN_CDCO: TIntegerField;
    fin_pagFIN_CDBA: TIBStringField;
    fin_pagFIN_DEBA: TIBStringField;
    fin_pagFIN_DBAI: TDateField;
    fin_pagFIN_IDBX: TIBStringField;
    fin_pagFIN_VENC: TIBBCDField;
    fin_pagFIN_DDES: TDateField;
    fin_pagFOR_FANT: TIBStringField;
    fin_pagFIN_CPPL1: TIBStringField;
    fin_pagFIN_DFIN: TIBStringField;
    fin_pagFIN_DCUS: TIBStringField;
    dbgConsultaFIN_DOCT: TdxDBGridMaskColumn;
    dbgConsultaFIN_DFOR: TdxDBGridMaskColumn;
    dbgConsultaFIN_IPPL: TdxDBGridMaskColumn;
    dbgConsultaFIN_DFIN: TdxDBGridMaskColumn;
    dbgConsultaFIN_DCAD: TdxDBGridDateColumn;
    dbgConsultaFIN_DVEN: TdxDBGridDateColumn;
    dbgConsultaFIN_VALO: TdxDBGridMaskColumn;
    dbgConsultaFIN_DPAG: TdxDBGridDateColumn;
    dbgConsultaFIN_VPAG: TdxDBGridMaskColumn;
    dbgConsultaFIN_VPEN: TdxDBGridMaskColumn;
    dbgConsultaFIN_STFI: TdxDBGridPickColumn;
    siMAR: TSpeedItem;
    siDES: TSpeedItem;
    siREL: TSpeedItem;
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
    procedure cadastroFIN_VPAGValidate(Sender: TField);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure cadastroBeforePost(DataSet: TDataSet);
    procedure fin_pagAfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure siMARClick(Sender: TObject);
    procedure siDESClick(Sender: TObject);
    procedure siRELClick(Sender: TObject);
  private
    { Private declarations }
    procedure ABRE_TABELA;
    procedure ajustaform;
    procedure SALVA;
  public
    { Public declarations }
  end;

var
  frmpag_rec: Tfrmpag_rec;
  Ano, Mes, Dia: Word;
  demi: TDate;
  chav,cdnf: String;
  BSal: boolean;

implementation

uses p_funcoes, ppesquisa, uPrincipal, prelatorio_geral;

{$R *.dfm}

procedure Tfrmpag_rec.SALVA;
begin
  if cadastro.State in [dsEdit,dsInsert] then
  cadastro.Post;

  if yesno(handle,'Validar títulos relacionados ?') = mrno then
  abort;

  try
    cadastro.DisableControls;
    cadastro.First;
    while not cadastro.Eof do
    begin
      if cadastroFIN_STA.AsString = '0' then
      begin
        with frmprincipal.sp_sql do
        begin
          ibSP.StoredProcName := 'SP_SQL';
          SQL.Clear;
          SQL.Add('UPDATE '+TSConsulta.Values['fin_pag']+' "FIN_PAG"');
          SQL.Add('SET   FIN_STFI = '''+cadastroFIN_STFI.AsString+''',');
          if cadastroFIN_STFI.AsString = 'PAGO' then
          SQL.Add('      FIN_DPAG = '''+formatDateTime('mm/dd/yy',cadastroFIN_DPAG.AsDateTime)+''',') else
          SQL.Add('      FIN_DPAG = NULL,');
          SQL.Add('      FIN_VPAG = '''+strtran(cadastroFIN_VPAG.AsString,',','.')+''',');
          SQL.Add('      FIN_VPEN = '''+strtran(cadastroFIN_VPEN.AsString,',','.')+'''');
          SQL.Add('WHERE ID = '''+cadastroFIN_CCAB.AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;
        end;
      end;
      cadastro.Next;
    end;
  finally
    IBTra.CommitRetaining;
    cadastro.EnableControls;
    BSal := false;
  end;
end;

procedure Tfrmpag_rec.AjustaForm;
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

procedure Tfrmpag_rec.ABRE_TABELA;
begin
  with cadastro do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM FIN_PAG');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_PAG');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM FIN_PAG');
    ExecSQL;
    tSHEILD.CommitRetaining;
  end;
end;

procedure Tfrmpag_rec.siPSQClick(Sender: TObject);
var
  bret: boolean;
begin
  if cadastro.State in [dsEdit,dsInsert] then
     cadastro.Post;

  bret := false;
  
  try
    cadastro.DisableControls;
    cadastro.First;

    while not cadastro.Eof do
    begin
      if (cadastroFIN_STFI.AsString = 'PENDENTE') or (cadastroFIN_STFI.AsString = 'CANCELADO') then
      begin
        bret := true;
        break;
      end;
      cadastro.Next;  
    end;
  finally
    if bret then
    cadastro.First;
    cadastro.EnableControls;
  end;

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
      with fin_pag do
      begin
        SQL.Clear;
        SQL.Add('SELECT   FIN_PAG.*,CAD_FOR.FOR_FANT,FIN_PPL.FIN_CPPL,FIN_PPL.FIN_DFIN,FIN_CUS.FIN_DCUS');
        SQL.Add('FROM     CAD_FOR,FIN_PPL,FIN_CUS,'+TSConsulta.Values['fin_pag']+' "FIN_PAG"');
        SQL.Add('WHERE    FIN_PAG.FIN_CFOR = CAD_FOR.ID');
        SQL.Add('AND      FIN_PAG.FIN_CPPL = FIN_PPL.ID');
        SQL.Add('AND      FIN_PAG.FIN_CCUS = FIN_CUS.ID');
        SQL.Add('AND      FIN_PAG.FIN_STFI = ''PENDENTE''');

        if edtxt.Text <> '' then
        begin
          if cField = 'CAD_FOR.ID' then
          SQL.Add('AND '+cField+' = '''+edtxt.Text+'''')
          else
          SQL.Add('AND '+cField+' LIKE ''%'+edtxt.Text+'%''');
        end;

        if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
           SQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

        SQL.Add('ORDER BY '+cField);
        Open;
      end;
      dbgconsulta.SetFocus;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmpag_rec.FormCreate(Sender: TObject);
begin
  inherited;
  abre_tabela;
  ajustaform;
end;

procedure Tfrmpag_rec.cadastroAfterCancel(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    finA.Enabled := true;
    finD.Enabled := true;
    finS.Enabled := false;
    finC.Enabled := false;
  end;
end;

procedure Tfrmpag_rec.cadastroAfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
end;

procedure Tfrmpag_rec.cadastroAfterEdit(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    finA.Enabled := false;
    finD.Enabled := false;
    finS.Enabled := true;
    finC.Enabled := true;

    dbgconsulta.SetFocus;
  end;
end;

procedure Tfrmpag_rec.cadastroAfterOpen(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    finA.Enabled := true;
    finD.Enabled := true;
    finS.Enabled := false;
    finC.Enabled := false;
  end;
end;

procedure Tfrmpag_rec.cadastroBeforeCancel(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    finA.Enabled := true;
    finD.Enabled := true;
    finS.Enabled := false;
    finC.Enabled := false;
  end;

  dbgconsulta.SetFocus;

  if cadastro.RecordCount = 0 then
  begin
    cadastro.Close;
    cadastro.Open;
    ABORT;
  end;
end;

procedure Tfrmpag_rec.cadastroAfterPost(DataSet: TDataSet);
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
    dbgconsulta.SetFocus;
  end;
end;

procedure Tfrmpag_rec.finAClick(Sender: TObject);
begin
  cadastro.Edit;
end;

procedure Tfrmpag_rec.finDClick(Sender: TObject);
begin
  cadastro.Delete;
end;

procedure Tfrmpag_rec.siSAVClick(Sender: TObject);
begin
  cadastro.Post;
end;

procedure Tfrmpag_rec.finCClick(Sender: TObject);
begin
  cadastro.Cancel;
end;

procedure Tfrmpag_rec.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tfrmpag_rec.dbgConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_DELETE: if cadastro.State = dsBrowse then
                  finD.Click;
    VK_ESCAPE: if cadastro.State = dsBrowse then close else cadastro.Cancel;
    VK_INSERT: if not finS.Enabled then finC.Click;
  end;
end;

procedure Tfrmpag_rec.siVALClick(Sender: TObject);
begin
  SALVA;
  Close;
end;

procedure Tfrmpag_rec.cadastroFIN_VPAGValidate(Sender: TField);
begin
  cadastroFIN_VPEN.Value := (cadastroFIN_VALO.AsFloat+cadastroFIN_VENC.AsFloat)-cadastroFIN_VPAG.AsFloat;
  if cadastroFIN_VPAG.AsFloat <= 0 then
  begin
    cadastroFIN_DPAG.AsString := '';
    cadastroFIN_VPEN.Value    := cadastroFIN_VALO.AsFloat+cadastroFIN_VENC.AsFloat;
    cadastroFIN_STFI.Value    := 'PENDENTE';
  end else
  begin
    cadastroFIN_DPAG.AsDateTime := strtodate(TSConsulta.Values['data_sistema']);
    cadastroFIN_STFI.Value      := 'PAGO';
  end;
end;

procedure Tfrmpag_rec.dbgConsultaCustomDrawCell(Sender: TObject;
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

    Value  := ANode.Values[10];

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
  end;
end;

procedure Tfrmpag_rec.cadastroBeforePost(DataSet: TDataSet);
begin
  if (cadastroFIN_STFI.AsString <> 'PENDENTE') and
     (cadastroFIN_STFI.AsString <> 'PAGO')     then
  DataBaseError('Status inválido !');
     
  cadastroFIN_STA.Value := inttostr(tag);
  if cadastroFIN_STA.AsString = '0' then
  BSal := true;
end;

procedure Tfrmpag_rec.fin_pagAfterOpen(DataSet: TDataSet);
begin
  while not fin_pag.Eof do
  begin
    cadastro.Append;
    cadastroID.Value       := 0;
    cadastroFIN_CCAB.Value := fin_pagID.AsInteger;
    cadastroFIN_CDBX.Value := fin_pagFIN_CDBX.AsInteger;
    cadastroFIN_CDCX.Value := fin_pagFIN_CDCX.AsInteger;
    cadastroFIN_CFOR.Value := fin_pagFIN_CFOR.AsInteger;
    cadastroFIN_CVEN.Value := fin_pagFIN_CVEN.AsInteger;
    cadastroFIN_CREP.Value := fin_pagFIN_CREP.AsInteger;
    cadastroFIN_PRAZ.Value := fin_pagFIN_PRAZ.AsInteger;
    cadastroFIN_ATRA.Value := fin_pagFIN_ATRA.AsInteger;
    cadastroFIN_CONC.Value := fin_pagFIN_CONC.AsInteger;
    cadastroFIN_DCAD.Value := fin_pagFIN_DCAD.AsDateTime;
    cadastroFIN_DVEN.Value := fin_pagFIN_DVEN.AsDateTime;
    cadastroFIN_DPAG.Value := fin_pagFIN_DPAG.AsDateTime;
    cadastroFIN_DMED.Value := fin_pagFIN_DMED.AsDateTime;
    cadastroFIN_DATR.Value := fin_pagFIN_DATR.AsDateTime;
    cadastroFIN_STDO.Value := fin_pagFIN_STDO.AsString;
    cadastroFIN_DOCT.Value := fin_pagFIN_DOCT.AsString;
    cadastroFIN_BANC.Value := fin_pagFIN_BANC.AsString;
    cadastroFIN_DBAN.Value := fin_pagFIN_DBAN.AsString;
    cadastroFIN_AGEN.Value := fin_pagFIN_AGEN.AsString;
    cadastroFIN_CONT.Value := fin_pagFIN_CONT.AsString;
    cadastroFIN_NCHQ.Value := fin_pagFIN_NCHQ.AsString;
    cadastroFIN_MCHQ.Value := fin_pagFIN_MCHQ.AsInteger;
    cadastroFIN_TIPO.Value := fin_pagFIN_TIPO.AsString;
    cadastroFIN_STFI.Value := fin_pagFIN_STFI.AsString;
    cadastroFIN_STCO.Value := fin_pagFIN_STCO.AsString;
    cadastroFIN_VALO.Value := fin_pagFIN_VALO.AsFloat;
    cadastroFIN_VPAG.Value := fin_pagFIN_VPAG.AsFloat;
    cadastroFIN_VPEN.Value := fin_pagFIN_VPEN.AsFloat;
    cadastroFIN_OBSE.Value := fin_pagFIN_OBSE.AsString;
    cadastroFIN_STA .Value := fin_pagFIN_STA.AsString;
    cadastroFIN_PREV.Value := fin_pagFIN_PREV.AsString;
    cadastroFIN_DUPL.Value := fin_pagFIN_DUPL.AsString;
    cadastroFIN_DCAN.Value := fin_pagFIN_DCAN.AsDateTime;
    cadastroFIN_CPPL.Value := fin_pagFIN_CPPL.AsInteger;
    cadastroFIN_CCUS.Value := fin_pagFIN_CCUS.AsInteger;
    cadastroFIN_CBCO.Value := fin_pagFIN_CBCO.AsInteger;
    cadastroFIN_PORT.Value := fin_pagFIN_PORT.AsString;
    cadastroFIN_VMUL.Value := fin_pagFIN_VMUL.AsFloat;
    cadastroFIN_PMUL.Value := fin_pagFIN_PMUL.AsFloat;
    cadastroFIN_VJUR.Value := fin_pagFIN_VJUR.AsFloat;
    cadastroFIN_PJUR.Value := fin_pagFIN_PJUR.AsFloat;
    cadastroFIN_VDES.Value := fin_pagFIN_VDES.AsFloat;
    cadastroFIN_PDES.Value := fin_pagFIN_PDES.AsFloat;
    cadastroFIN_DESC.Value := fin_pagFIN_DESC.AsString;
    cadastroFIN_CDCO.Value := fin_pagFIN_CDCO.AsInteger;
    cadastroFIN_CDBA.Value := fin_pagFIN_CDBA.AsString;
    cadastroFIN_DEBA.Value := fin_pagFIN_DEBA.AsString;
    cadastroFIN_DBAI.Value := fin_pagFIN_DBAI.AsDateTime;
    cadastroFIN_IDBX.Value := fin_pagFIN_IDBX.AsString;
    cadastroFIN_VENC.Value := fin_pagFIN_VENC.AsFloat;
    cadastroFIN_DDES.Value := fin_pagFIN_DDES.AsDateTime;
    cadastroFIN_DFOR.Value := fin_pagFOR_FANT.AsString;
    cadastroFIN_IPPL.Value := fin_pagFIN_CPPL1.AsString;
    cadastroFIN_DFIN.Value := fin_pagFIN_DFIN.AsString;
    cadastroFIN_DCUS.Value := fin_pagFIN_DCUS.AsString;
    cadastro.Post;
    fin_pag.Next;
  end;  
end;

procedure Tfrmpag_rec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if frmpag_rec <> nil then
  begin
    frmpag_rec.Release;
    frmpag_rec := nil;
  end;
end;

procedure Tfrmpag_rec.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if cadastro.State in [dsEdit,dsInsert] then
  cadastro.Post;

  if (BSal) then
  begin
    case messageBox(handle,'Existem alterações pendentes.'+#13+'Deseja validar o recebimento antes de fechar ?',
                           'Recebimento de Contas a Pagar',MB_ICONQUESTION+MB_YESNOCANCEL) of
         mrCancel: Abort;
         mrYes   : siVAL.Click;
         mrNo    : BSal := false;
    end;
  end;
end;

procedure Tfrmpag_rec.siMARClick(Sender: TObject);
begin
  if yesno(handle,'Deseja marcar todos os lançamentos como pago ?') = mrno then
  abort;

  try
    cadastro.DisableControls;
    cadastro.First;
    while not cadastro.Eof do
    begin
      cadastro.Edit;
      cadastroFIN_VPAG.Value := cadastroFIN_VALO.AsFloat;
      cadastroFIN_VPEN.Value := 0;
      cadastroFIN_DPAG.Value := cadastroFIN_DVEN.AsDateTime;
      cadastroFIN_STFI.Value := 'PAGO';
      cadastro.Post;
      cadastro.Next;
    end;
  finally
    cadastro.EnableControls;
  end;
end;

procedure Tfrmpag_rec.siDESClick(Sender: TObject);
begin
  if yesno(handle,'Deseja desmarcar todos os lançamentos como pendente ?') = mrno then
  abort;

  try
    cadastro.DisableControls;
    cadastro.First;
    while not cadastro.Eof do
    begin
      cadastro.Edit;
      cadastroFIN_VPAG.Value    := 0;
      cadastroFIN_VPEN.Value    := cadastroFIN_VALO.AsFloat;
      cadastroFIN_DPAG.AsString := '';
      cadastroFIN_STFI.Value    := 'PENDENTE';
      cadastro.Post;
      cadastro.Next;
    end;
  finally
    cadastro.EnableControls;
  end;
end;

procedure Tfrmpag_rec.siRELClick(Sender: TObject);
begin
  SALVA;

  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.tsFIN_PAG.TabVisible   := true;
    frmrelatorio_geral.pcMAIN.ActivePage      := frmrelatorio_geral.tsFIN_PAG;
    frmrelatorio_geral.cbFIN_PAG_TREL.Tag     := 0;
    frmrelatorio_geral.cbFIN_PAG_TREL.Text    := 'FICHA DE PAGAMENTO';
    frmrelatorio_geral.cbFIN_PAG_TREL.Enabled := false;
    frmrelatorio_geral.cbFIN_PAG_DATA.Enabled := false;
    frmrelatorio_geral.cbFIN_PAG_STFI.Enabled := false;
    frmrelatorio_geral.cbFIN_PAG_DFOR.Enabled := false;
    frmrelatorio_geral.cbFIN_PAG_RFOR.Enabled := false;
    frmrelatorio_geral.cbFIN_PAG_DFIN.Enabled := false;
    frmrelatorio_geral.cbFIN_PAG_DCUS.Enabled := false;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
    Close;
  end;
end;

end.
