unit pven_nfd_pag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, IBEvents, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, ExtCtrls,  ComCtrls, DBCtrls, StdCtrls, dxEditor,
  dxExEdtr, dxEdLib, dxDBTLCl, dxGrClms, Dateutils, rxSpeedbar;

type
  Tfrmven_nfd_pag = class(Tfrmpadr1)
    tSHEILD: TIBTransaction;
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
    dbgConsultaFIN_DCAD: TdxDBGridDateColumn;
    dbgConsultaFIN_DVEN: TdxDBGridDateColumn;
    dbgConsultaFIN_DOCT: TdxDBGridMaskColumn;
    dbgConsultaFIN_VALO: TdxDBGridMaskColumn;
    fin_pag: TIBQuery;
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
    consulta_s: TIBQuery;
    BSav: TSpeedItem;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    edcppl: TdxButtonEdit;
    cbdppl: TdxPickEdit;
    edccus: TdxButtonEdit;
    cbdcus: TdxPickEdit;
    Label1: TLabel;
    cbdfin: TdxPickEdit;
    GroupBox2: TGroupBox;
    edobse: TdxMemo;
    edippl: TdxEdit;
    procedure FormCreate(Sender: TObject);
    procedure BSavClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure siSAIRClick(Sender: TObject);
    procedure cadastroAfterCancel(DataSet: TDataSet);
    procedure cadastroAfterDelete(DataSet: TDataSet);
    procedure cadastroAfterEdit(DataSet: TDataSet);
    procedure cadastroAfterInsert(DataSet: TDataSet);
    procedure cadastroAfterPost(DataSet: TDataSet);
    procedure cadastroBeforeCancel(DataSet: TDataSet);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure edcpplButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edcpplValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edccusButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edccusValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbdpplExit(Sender: TObject);
    procedure cbdcusExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmven_nfd_pag: Tfrmven_nfd_pag;

implementation

uses p_funcoes, uprincipal, ptab_fin_ppl, ptab_fin_cus;

{$R *.dfm}

procedure Tfrmven_nfd_pag.FormCreate(Sender: TObject);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FIN_DFIN FROM FIN_PPL');
    SQL.Add('ORDER BY FIN_DFIN');
    Open;

    while not eof do
    begin
      cbdppl.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FIN_DCUS FROM FIN_CUS');
    SQL.Add('ORDER BY FIN_DCUS');
    Open;

    while not eof do
    begin
      cbdcus.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FIN_DESC FROM FIN_PAG');
    SQL.Add('GROUP BY FIN_DESC');
    SQL.Add('UNION');
    SQL.Add('SELECT   FIN_DESC FROM FIN_PAG_002');
    SQL.Add('GROUP BY FIN_DESC');
    SQL.Add('UNION');
    SQL.Add('SELECT   FIN_DESC FROM FIN_PAG_003');
    SQL.Add('GROUP BY FIN_DESC');
    SQL.Add('UNION');
    SQL.Add('SELECT   FIN_DESC FROM FIN_PAG_004');
    SQL.Add('GROUP BY FIN_DESC');
    SQL.Add('UNION');
    SQL.Add('SELECT   FIN_DESC FROM FIN_PAG_005');
    SQL.Add('GROUP BY FIN_DESC');
    SQL.Add('UNION');
    SQL.Add('SELECT   FIN_DESC FROM FIN_PAG_006');
    SQL.Add('GROUP BY FIN_DESC');
    SQL.Add('UNION');
    SQL.Add('SELECT   FIN_DESC FROM FIN_PAG_007');
    SQL.Add('GROUP BY FIN_DESC');
    SQL.Add('UNION');
    SQL.Add('SELECT   FIN_DESC FROM FIN_PAG_008');
    SQL.Add('GROUP BY FIN_DESC');
    SQL.Add('UNION');
    SQL.Add('SELECT   FIN_DESC FROM FIN_PAG_009');
    SQL.Add('GROUP BY FIN_DESC');
    SQL.Add('ORDER BY 1');
    Open;

    while not eof do
    begin
      cbdfin.Items.Add(fields[0].AsString);
      next;
    end;
  end;

  with cadastro do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM FIN_PAG');
    ExecSQL;
    tSHEILD.CommitRetaining;

    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_PAG');
    SelectSQL.Add('ORDER BY ID');
  end;
  inherited;
  cEvent := 'PAG_NFD';
end;

procedure Tfrmven_nfd_pag.BSavClick(Sender: TObject);
begin
  if yesno(handle,'Salvar Lançamentos ?') = mrno then
  abort;

  cadastro.First;
  if cadastro.Fields[0].IsNull then
  raise exception.Create('Lançamentos não informados !');

  editado := true;
  close;
end;

procedure Tfrmven_nfd_pag.FormDestroy(Sender: TObject);
begin
  pEVE.UnRegisterEvents;
end;

procedure Tfrmven_nfd_pag.siSAIRClick(Sender: TObject);
begin
  editado := false;
  close;
end;

procedure Tfrmven_nfd_pag.cadastroAfterCancel(DataSet: TDataSet);
begin
  siINC.Enabled := true;
  siDEL.Enabled := true;
  siALT.Enabled := true;
  siSAV.Enabled := false;
  siCAN.Enabled := false;

  sbMSG.Panels[0].Text := 'Consulta';
  sbMSG.Update;

  tSHEILD.CommitRetaining;
end;

procedure Tfrmven_nfd_pag.cadastroAfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
end;

procedure Tfrmven_nfd_pag.cadastroAfterEdit(DataSet: TDataSet);
begin
  siINC.Enabled := false;
  siALT.Enabled := false;
  siDEL.Enabled := false;
  siSAV.Enabled := true;
  siCAN.Enabled := true;

  sbMSG.Panels[0].Text := 'Alteração';
  sbMSG.Update;
end;

procedure Tfrmven_nfd_pag.cadastroAfterInsert(DataSet: TDataSet);
begin
  siINC.Enabled := false;
  siALT.Enabled := false;
  siDEL.Enabled := false;
  siSAV.Enabled := true;
  siCAN.Enabled := true;

  sbMSG.Panels[0].Text := 'Inclusão';
  sbMSG.Update;
end;

procedure Tfrmven_nfd_pag.cadastroAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  tSHEILD.CommitRetaining;
  wRec := cadastro.GetBookmark;

  siINC.Enabled := true;
  siDEL.Enabled := true;
  siALT.Enabled := true;
  siSAV.Enabled := false;
  siCAN.Enabled := false;

  cadastro.Close;
  cadastro.Open;
  if (wRec = Nil) or (cadastro.Fields[0].IsNull) then cadastro.last
     else cadastro.GotoBookmark(wRec);
  cadastro.FreeBookmark(wRec);
end;

procedure Tfrmven_nfd_pag.cadastroBeforeCancel(DataSet: TDataSet);
begin
  siINC.Enabled := true;
  siDEL.Enabled := true;
  siALT.Enabled := true;
  siSAV.Enabled := false;
  siCAN.Enabled := false;

  sbMSG.Panels[0].Text := 'Consulta';
  sbMSG.Update;

  if cadastro.RecordCount = 0 then
  begin
    cadastro.Close;
    cadastro.Open;
    ABORT;
  end;
end;

procedure Tfrmven_nfd_pag.cadastroBeforeEdit(DataSet: TDataSet);
begin
  {nothing}
end;

procedure Tfrmven_nfd_pag.cadastroBeforeInsert(DataSet: TDataSet);
begin
  {nothing}
end;

procedure Tfrmven_nfd_pag.edcpplButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmtab_fin_ppl           := Tfrmtab_fin_ppl.Create(self);
  frmtab_fin_ppl.FormStyle := fsNormal;
  frmtab_fin_ppl.Visible   := false;

  try
    frmtab_fin_ppl.ShowModal;
  finally
    freeAndNil(frmtab_fin_ppl);
    frmtab_fin_ppl.Free;
  end;
end;

procedure Tfrmven_nfd_pag.edcpplValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcppl.Text = '' then
  begin
    edippl.Text := '0';
    edcppl.Text := '0';
  end;

  if edcppl.Text = '0' then
  begin
    cbdppl.Text := '';
    abort;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,FIN_DFIN FROM FIN_PPL');
    SQL.Add('WHERE  FIN_CPPL = '''+edcppl.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      edcppl.SetFocus;
      raise exception.Create('Plano de Conta não encontrado !');
    end;

    edippl.Text := fields[0].AsString;
    cbdppl.Text := fields[1].AsString;
    edccus.SetFocus;
  end;
end;

procedure Tfrmven_nfd_pag.edccusButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmtab_fin_cus := Tfrmtab_fin_cus.Create(self);
  frmtab_fin_cus.FormStyle := fsNormal;
  frmtab_fin_cus.Visible   := false;

  try
    frmtab_fin_cus.ShowModal;
  finally
    freeAndNil(frmtab_fin_cus);
    frmtab_fin_cus.Free;
  end;
end;

procedure Tfrmven_nfd_pag.edccusValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edccus.Text = '' then
     edccus.Text := '0';

  if edccus.Text = '0' then
  begin
    cbdcus.Text := '';
    abort;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT FIN_DCUS FROM FIN_CUS');
    SQL.Add('WHERE  ID = '''+edccus.Text+'''');
    SQL.Add('AND    FIN_STA = ''0''');
    Open;

    if fields[0].IsNull then
    begin
      edccus.SetFocus;
      raise exception.Create('Centro de Custo não encontrado !');
    end;

    cbdcus.Text := fields[0].AsString;
  end;
end;

procedure Tfrmven_nfd_pag.cbdpplExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,FIN_CPPL FROM FIN_PPL');
      SQL.Add('WHERE  FIN_DFIN = '''+cbdppl.Text+'''');
      Open;
      edippl.Text := fields[0].AsString;
      edcppl.Text := fields[1].AsString;
    end;
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

procedure Tfrmven_nfd_pag.cbdcusExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM FIN_CUS');
      SQL.Add('WHERE  FIN_DCUS = '''+cbdcus.Text+'''');
      Open;
      edccus.Text := fields[0].AsString;
    end;
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

end.


