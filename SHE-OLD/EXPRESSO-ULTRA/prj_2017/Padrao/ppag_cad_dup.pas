unit ppag_cad_dup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, IBEvents, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, ExtCtrls,  ComCtrls, DBCtrls, StdCtrls, dxEditor,
  dxExEdtr, dxEdLib, dxDBTLCl, dxGrClms, Dateutils, math, rxSpeedbar;

type
  Tfrmpag_cad_dup = class(Tfrmpadr1)
    Label6: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    laex1: TLabel;
    laex2: TLabel;
    eddoct: TdxEdit;
    cbtidu: TdxImageEdit;
    ednrod: TdxEdit;
    cb1: TCheckBox;
    cb2: TCheckBox;
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
    procedure eddoctValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cb1Click(Sender: TObject);
    procedure cb2Click(Sender: TObject);
    procedure ednrodValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure BSavClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  private
    { Private declarations }
    procedure PESQUISA;
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmpag_cad_dup: Tfrmpag_cad_dup;

implementation

uses p_funcoes, uprincipal;

{$R *.dfm}

procedure Tfrmpag_cad_dup.PESQUISA;
begin
  with fin_pag do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM '+TSConsulta.Values['fin_pag']);
    SQL.Add('WHERE    FIN_DOCT = '''+eddoct.Text+'''');
    SQL.Add('ORDER BY FIN_DOCT');
    Open;
    Last;

    if fields[0].IsNull then
    begin
      eddoct.SetFocus;
      raise exception.Create('Documento '+eddoct.Text+' não Lançado !');
    end;

    if fin_pagFIN_STFI.AsString <> 'PENDENTE' then
    begin
      eddoct.SetFocus;
      raise exception.Create('Documento '+eddoct.Text+' já recebido !');
    end;  
  end;

  laex1.Caption := eddoct.Text+'/1';
  laex2.Caption := eddoct.Text+'/A';
end;

procedure Tfrmpag_cad_dup.eddoctValidate(Sender: TObject; var ErrorText: String;
  var Accept: Boolean);
begin
  if eddoct.Text = '' then
     exit;

  PESQUISA;
end;

procedure Tfrmpag_cad_dup.cb1Click(Sender: TObject);
begin
  if (cb1.Checked) and (cb2.Checked) then
  begin
    cb1.Checked := false;
    raise exception.Create('Escolha apenas uma das opções !');
  end;
end;

procedure Tfrmpag_cad_dup.cb2Click(Sender: TObject);
begin
  if (cb1.Checked) and (cb2.Checked) then
  begin
    cb2.Checked := false;
    raise exception.Create('Escolha apenas uma das opções !');
  end;
end;

procedure Tfrmpag_cad_dup.ednrodValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  const aParc : array [1..24] of string = ('A','B','C','D','E','F','G',
                                           'H','I','J','K','L','M','N',
                                           'O','P','Q','R','S','T','U',
                                           'V','X','Z');
  var i: word;
      dven: TDate;
begin
  if ednrod.Text = '' then
  exit;

  try
    cadastro.DisableControls;

    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('DELETE FROM FIN_PAG');
      ExecSQL;
      tSHEILD.CommitRetaining;
    end;
    cadastro.Close;
    cadastro.Open;

    dven := fin_pagFIN_DVEN.AsDateTime;
    for i := 1 to strtoint(ednrod.Text) do
    begin
      if i > 1 then
      begin
        if cbtidu.Text = 'DIÁRIO' then
           dven := incDay(dven,1)
        else if cbtidu.Text = 'SEMANAL' then
           dven := incDay(dven,7)
        else if cbtidu.Text = 'QUINZENAL' then
           dven := incDay(dven,15)
        else if cbtidu.Text = 'MENSAL' then
           dven := incDay(dven,30);
      end;
      
      cadastro.Append;
      cadastroID.Value       := 0;
      if cb1.Checked then
      cadastroFIN_DOCT.Value := fin_pagFIN_DOCT.AsString+'/'+inttostr(i) else
      cadastroFIN_DOCT.Value := fin_pagFIN_DOCT.AsString+'/'+aParc[i];
      cadastroFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(dven);
      cadastroFIN_CCAB.Value := fin_pagFIN_CCAB.AsInteger;
      cadastroFIN_CDBX.Value := fin_pagFIN_CDBX.AsInteger;
      cadastroFIN_CDCX.Value := fin_pagFIN_CDCX.AsInteger;
      cadastroFIN_CFOR.Value := fin_pagFIN_CFOR.AsInteger;
      cadastroFIN_CVEN.Value := fin_pagFIN_CVEN.AsInteger;
      cadastroFIN_CREP.Value := fin_pagFIN_CREP.AsInteger;
      cadastroFIN_PRAZ.Value := fin_pagFIN_PRAZ.AsInteger;
      cadastroFIN_ATRA.Value := fin_pagFIN_ATRA.AsInteger;
      cadastroFIN_CONC.Value := fin_pagFIN_CONC.AsInteger;
      cadastroFIN_DCAD.Value := fin_pagFIN_DCAD.AsDateTime;
      cadastroFIN_DPAG.Value := fin_pagFIN_DPAG.AsDateTime;
      cadastroFIN_DMED.Value := fin_pagFIN_DMED.AsDateTime;
      cadastroFIN_DATR.Value := fin_pagFIN_DATR.AsDateTime;
      cadastroFIN_STDO.Value := fin_pagFIN_STDO.AsString;
      cadastroFIN_BANC.Value := fin_pagFIN_BANC.AsString;
      cadastroFIN_DBAN.Value := fin_pagFIN_DBAN.AsString;
      cadastroFIN_AGEN.Value := fin_pagFIN_AGEN.AsString;
      cadastroFIN_CONT.Value := fin_pagFIN_CONT.AsString;
      cadastroFIN_NCHQ.Value := fin_pagFIN_NCHQ.AsString;
      cadastroFIN_MCHQ.Value := fin_pagFIN_MCHQ.AsInteger;
      cadastroFIN_TIPO.Value := fin_pagFIN_TIPO.AsString;
      cadastroFIN_STFI.Value := fin_pagFIN_STFI.AsString;
      cadastroFIN_STCO.Value := fin_pagFIN_STCO.AsString;
      cadastroFIN_VALO.Value := roundto(fin_pagFIN_VALO.AsFloat/strtoint(ednrod.Text),-2);
      cadastroFIN_VPAG.Value := roundto(fin_pagFIN_VPAG.AsFloat/strtoint(ednrod.Text),-2);
      cadastroFIN_VPEN.Value := roundto(fin_pagFIN_VPEN.AsFloat/strtoint(ednrod.Text),-2);
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
      cadastro.Post;
    end;
  finally
    cadastro.EnableControls;
  end;
end;

procedure Tfrmpag_cad_dup.FormCreate(Sender: TObject);
begin
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
  cEvent := 'PAG_CAD';
  inherited;
end;

procedure Tfrmpag_cad_dup.BSavClick(Sender: TObject);
begin
  if yesno(handle,'Salvar Duplicações ?') = mrno then
  abort;

  cadastro.First;
  if cadastro.Fields[0].IsNull then
  raise exception.Create('Duplicações não informadas !');

  editado := true;
  close;
end;

procedure Tfrmpag_cad_dup.FormShow(Sender: TObject);
begin
  inherited;
  if eddoct.Text = '' then
  eddoct.SetFocus else
  begin
    PESQUISA;
    ednrod.SetFocus;
  end;
end;

procedure Tfrmpag_cad_dup.FormDestroy(Sender: TObject);
begin
  pEVE.UnRegisterEvents;
end;

procedure Tfrmpag_cad_dup.siSAIRClick(Sender: TObject);
begin
  editado := false;
  close;
end;

procedure Tfrmpag_cad_dup.cadastroAfterCancel(DataSet: TDataSet);
begin
  siINC.Enabled := true;
  siDEL.Enabled := true;
  siALT.Enabled := true;
  siSAV.Enabled := false;
  siCAN.Enabled := false;

  sbMSG.Panels[0].Text := 'Consulta';
  sbMSG.Update;

  IBTra.RollbackRetaining;
  dbgconsulta.SetFocus;
end;

procedure Tfrmpag_cad_dup.cadastroAfterDelete(DataSet: TDataSet);
begin
  IBTra.CommitRetaining;
end;

procedure Tfrmpag_cad_dup.cadastroAfterEdit(DataSet: TDataSet);
begin
  siINC.Enabled := false;
  siALT.Enabled := false;
  siDEL.Enabled := false;
  siSAV.Enabled := true;
  siCAN.Enabled := true;

  sbMSG.Panels[0].Text := 'Alteração';
  sbMSG.Update;

  dbgconsulta.SetFocus;
end;

procedure Tfrmpag_cad_dup.cadastroAfterInsert(DataSet: TDataSet);
begin
  siINC.Enabled := false;
  siALT.Enabled := false;
  siDEL.Enabled := false;
  siSAV.Enabled := true;
  siCAN.Enabled := true;

  sbMSG.Panels[0].Text := 'Inclusão';
  sbMSG.Update;

  dbgconsulta.FocusedColumn := 0;
  dbgconsulta.SetFocus;
end;

procedure Tfrmpag_cad_dup.cadastroAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  IBTra.CommitRetaining;
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

procedure Tfrmpag_cad_dup.cadastroBeforeCancel(DataSet: TDataSet);
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

procedure Tfrmpag_cad_dup.cadastroBeforeEdit(DataSet: TDataSet);
begin
  {nothing}
end;

procedure Tfrmpag_cad_dup.cadastroBeforeInsert(DataSet: TDataSet);
begin
  {nothing}
end;

end.



