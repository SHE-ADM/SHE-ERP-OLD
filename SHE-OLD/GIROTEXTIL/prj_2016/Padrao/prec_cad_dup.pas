unit prec_cad_dup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, IBEvents, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, ExtCtrls,  ComCtrls, DBCtrls, StdCtrls, dxEditor,
  dxExEdtr, dxEdLib, dxDBTLCl, dxGrClms, Dateutils, rxSpeedbar;

type
  Tfrmrec_cad_dup = class(Tfrmpadr1)
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
    dbgConsultaFIN_DCAD: TdxDBGridDateColumn;
    dbgConsultaFIN_DVEN: TdxDBGridDateColumn;
    dbgConsultaFIN_DOCT: TdxDBGridMaskColumn;
    dbgConsultaFIN_VALO: TdxDBGridMaskColumn;
    fin_rec: TIBQuery;
    consulta_s: TIBQuery;
    BSav: TSpeedItem;
    cadastroID: TIntegerField;
    cadastroFIN_CCAB: TIntegerField;
    cadastroFIN_CDBX: TIntegerField;
    cadastroFIN_CDCX: TIntegerField;
    cadastroFIN_CCLI: TIntegerField;
    cadastroFIN_DFIN: TIBStringField;
    cadastroFIN_DCLI: TIBStringField;
    cadastroFIN_RCLI: TIBStringField;
    cadastroFIN_CVEN: TIntegerField;
    cadastroFIN_VEND: TIBStringField;
    cadastroFIN_CREP: TIntegerField;
    cadastroFIN_DREP: TIBStringField;
    cadastroFIN_RREP: TIBStringField;
    cadastroFIN_PRAZ: TSmallintField;
    cadastroFIN_ATRA: TSmallintField;
    cadastroFIN_CONC: TSmallintField;
    cadastroFIN_DCAD: TDateField;
    cadastroFIN_DVEN: TDateField;
    cadastroFIN_DPAG: TDateField;
    cadastroFIN_DMED: TDateField;
    cadastroFIN_DATR: TDateField;
    cadastroFIN_DBAI: TDateField;
    cadastroFIN_CPPL: TIntegerField;
    cadastroFIN_CCUS: TIntegerField;
    cadastroFIN_CDCO: TIntegerField;
    cadastroFIN_CDBA: TIBStringField;
    cadastroFIN_DEBA: TIBStringField;
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
    cadastroFIN_VENC: TIBBCDField;
    cadastroFIN_OBSE: TMemoField;
    cadastroFIN_STA: TIBStringField;
    cadastroFIN_COBR: TIBStringField;
    cbstco: TdxEdit;
    fin_recID: TIntegerField;
    fin_recFIN_CCAB: TIntegerField;
    fin_recFIN_CDBX: TIntegerField;
    fin_recFIN_CDCX: TIntegerField;
    fin_recFIN_CCLI: TIntegerField;
    fin_recFIN_CVEN: TIntegerField;
    fin_recFIN_CREP: TIntegerField;
    fin_recFIN_PRAZ: TSmallintField;
    fin_recFIN_ATRA: TSmallintField;
    fin_recFIN_CONC: TSmallintField;
    fin_recFIN_DCAD: TDateField;
    fin_recFIN_DVEN: TDateField;
    fin_recFIN_DPAG: TDateField;
    fin_recFIN_DMED: TDateField;
    fin_recFIN_DATR: TDateField;
    fin_recFIN_STDO: TIBStringField;
    fin_recFIN_DOCT: TIBStringField;
    fin_recFIN_BANC: TIBStringField;
    fin_recFIN_DBAN: TIBStringField;
    fin_recFIN_AGEN: TIBStringField;
    fin_recFIN_CONT: TIBStringField;
    fin_recFIN_NCHQ: TIBStringField;
    fin_recFIN_MCHQ: TSmallintField;
    fin_recFIN_TIPO: TIBStringField;
    fin_recFIN_STFI: TIBStringField;
    fin_recFIN_STCO: TIBStringField;
    fin_recFIN_VALO: TIBBCDField;
    fin_recFIN_VPAG: TIBBCDField;
    fin_recFIN_VPEN: TIBBCDField;
    fin_recFIN_OBSE: TMemoField;
    fin_recFIN_STA: TIBStringField;
    fin_recFIN_DCAN: TDateField;
    fin_recFIN_CPPL: TIntegerField;
    fin_recFIN_CCUS: TIntegerField;
    fin_recFIN_CBCO: TIntegerField;
    fin_recFIN_PORT: TIBStringField;
    fin_recFIN_VMUL: TIBBCDField;
    fin_recFIN_PMUL: TIBBCDField;
    fin_recFIN_VJUR: TIBBCDField;
    fin_recFIN_PJUR: TIBBCDField;
    fin_recFIN_VDES: TIBBCDField;
    fin_recFIN_PDES: TIBBCDField;
    fin_recFIN_DESC: TIBStringField;
    fin_recFIN_CDCO: TIntegerField;
    fin_recFIN_CDBA: TIBStringField;
    fin_recFIN_DEBA: TIBStringField;
    fin_recFIN_DBAI: TDateField;
    fin_recFIN_IDBX: TIBStringField;
    fin_recFIN_VENC: TIBBCDField;
    cadastroFIN_CTNR: TIBStringField;
    fin_recFIN_CTNR: TIBStringField;
    cadastroFIN_CDRD: TIntegerField;
    cadastroFIN_VMUL: TIBBCDField;
    cadastroFIN_PMUL: TIBBCDField;
    cadastroFIN_VJUR: TIBBCDField;
    cadastroFIN_PJUR: TIBBCDField;
    cadastroFIN_VDES: TIBBCDField;
    cadastroFIN_PDES: TIBBCDField;
    cadastroFIN_VCHQ: TIBBCDField;
    cadastroFIN_CPF: TIBStringField;
    fin_recFIN_BCON: TIntegerField;
    fin_recFIN_DCON: TIBStringField;
    fin_recFIN_LOTE: TIntegerField;
    fin_recFIN_DLOT: TDateField;
    fin_recFIN_CDCH: TSmallintField;
    fin_recFIN_CPF: TIBStringField;
    fin_recFIN_VTER: TIBBCDField;
    fin_recFIN_VPRO: TIBBCDField;
    fin_recFIN_CDRD: TIntegerField;
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
  frmrec_cad_dup: Tfrmrec_cad_dup;

implementation

uses p_funcoes, uprincipal;

{$R *.dfm}

procedure Tfrmrec_cad_dup.PESQUISA;
begin
  with fin_rec do
  begin
    SQL.Clear;
    if cbstco.Text = 'BANCÁRIO' then
    SQL.Add('SELECT * FROM '+TSConsulta.Values['fin_rec_ban_bai']+' "FIN_REC"') else
    SQL.Add('SELECT * FROM '+TSConsulta.Values['fin_rec_car_bai']+' "FIN_REC"');
    SQL.Add('WHERE    FIN_DOCT = '''+eddoct.Text+'''');
    SQL.Add('ORDER BY FIN_DOCT');
    Open;
    Last;

    if fields[0].IsNull then
    begin
      eddoct.SetFocus;
      raise exception.Create('Documento '+eddoct.Text+' não Lançado !');
    end;

    if fin_recFIN_STFI.AsString <> 'PENDENTE' then
    begin
      eddoct.SetFocus;
      raise exception.Create('Documento '+eddoct.Text+' já recebido !');
    end;  
  end;

  laex1.Caption := eddoct.Text+'/1';
  laex2.Caption := eddoct.Text+'/A';
end;

procedure Tfrmrec_cad_dup.eddoctValidate(Sender: TObject; var ErrorText: String;
  var Accept: Boolean);
begin
  if eddoct.Text = '' then
     exit;

  PESQUISA;
end;

procedure Tfrmrec_cad_dup.cb1Click(Sender: TObject);
begin
  if (cb1.Checked) and (cb2.Checked) then
  begin
    cb1.Checked := false;
    raise exception.Create('Escolha apenas uma das opções !');
  end;
end;

procedure Tfrmrec_cad_dup.cb2Click(Sender: TObject);
begin
  if (cb1.Checked) and (cb2.Checked) then
  begin
    cb2.Checked := false;
    raise exception.Create('Escolha apenas uma das opções !');
  end;
end;

procedure Tfrmrec_cad_dup.ednrodValidate(Sender: TObject;
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
      SQL.Add('DELETE FROM FIN_REC_BAI');
      ExecSQL;
      tSHEILD.CommitRetaining;
    end;
    cadastro.Close;
    cadastro.Open;

    dven := fin_recFIN_DVEN.AsDateTime;
    for i := 1 to strtoint(ednrod.Text) do
    begin
      if cbtidu.Text = 'DIÁRIO' then
         dven := incDay(dven,1)
      else if cbtidu.Text = 'SEMANAL' then
         dven := incDay(dven,7)
      else if cbtidu.Text = 'QUINZENAL' then
         dven := incDay(dven,15)
      else if cbtidu.Text = 'MENSAL' then
         dven := incDay(dven,30);

      cadastro.Append;
      cadastroID.Value       := 0;
      if cb1.Checked then
      cadastroFIN_DOCT.Value := fin_recFIN_DOCT.AsString+'/'+inttostr(i) else
      cadastroFIN_DOCT.Value := fin_recFIN_DOCT.AsString+'/'+aParc[i];
      cadastroFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(dven);
      cadastroFIN_CCAB.Value := fin_recFIN_CCAB.Value;
      cadastroFIN_CDBX.Value := fin_recFIN_CDBX.Value;
      cadastroFIN_CDCX.Value := fin_recFIN_CDCX.Value;
      cadastroFIN_CDRD.Value := fin_recFIN_CDRD.Value;
      cadastroFIN_CCLI.Value := fin_recFIN_CCLI.Value;
      cadastroFIN_DFIN.Value := fin_recFIN_DESC.Value;
      cadastroFIN_CVEN.Value := fin_recFIN_CVEN.Value;
      cadastroFIN_CREP.Value := fin_recFIN_CREP.Value;
      cadastroFIN_PRAZ.Value := fin_recFIN_PRAZ.Value;
      cadastroFIN_ATRA.Value := fin_recFIN_ATRA.Value;
      cadastroFIN_CONC.Value := fin_recFIN_CONC.Value;
      cadastroFIN_DCAD.Value := fin_recFIN_DCAD.Value;
      cadastroFIN_DPAG.Value := fin_recFIN_DPAG.Value;
      cadastroFIN_DMED.Value := fin_recFIN_DMED.Value;
      cadastroFIN_DATR.Value := fin_recFIN_DATR.Value;
      cadastroFIN_DBAI.Value := fin_recFIN_DBAI.Value;
      cadastroFIN_CPPL.Value := fin_recFIN_CPPL.Value;
      cadastroFIN_CCUS.Value := fin_recFIN_CCUS.Value;
      cadastroFIN_CDCO.Value := fin_recFIN_CDCO.Value;
      cadastroFIN_CDBA.Value := fin_recFIN_CDBA.Value;
      cadastroFIN_DEBA.Value := fin_recFIN_DEBA.Value;
      cadastroFIN_STDO.Value := fin_recFIN_STDO.Value;
      cadastroFIN_BANC.Value := fin_recFIN_BANC.Value;
      cadastroFIN_DBAN.Value := fin_recFIN_DBAN.Value;
      cadastroFIN_AGEN.Value := fin_recFIN_AGEN.Value;
      cadastroFIN_CONT.Value := fin_recFIN_CONT.Value;
      cadastroFIN_NCHQ.Value := fin_recFIN_NCHQ.Value;
      cadastroFIN_MCHQ.Value := fin_recFIN_MCHQ.Value;
      cadastroFIN_TIPO.Value := fin_recFIN_TIPO.Value;
      cadastroFIN_STFI.Value := fin_recFIN_STFI.Value;
      cadastroFIN_STCO.Value := fin_recFIN_STCO.Value;
      cadastroFIN_VALO.Value := fin_recFIN_VALO.Value;
      cadastroFIN_VPAG.Value := fin_recFIN_VPAG.Value;
      cadastroFIN_VPEN.Value := fin_recFIN_VPEN.Value;
      cadastroFIN_VENC.Value := fin_recFIN_VENC.Value;
      cadastroFIN_OBSE.Value := fin_recFIN_OBSE.Value;
      cadastroFIN_STA.Value  := fin_recFIN_STA.Value ;
      cadastroFIN_CTNR.Value := fin_recFIN_CTNR.Value;
      cadastro.Post;
    end;
  finally
    cadastro.EnableControls;
  end;
end;

procedure Tfrmrec_cad_dup.FormCreate(Sender: TObject);
begin
  with cadastro do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM FIN_REC_BAI');
    ExecSQL;
    tSHEILD.CommitRetaining;

    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_REC_BAI');
    SelectSQL.Add('ORDER BY ID');
  end;
  inherited;
  cEvent := 'PAG_CAD';
end;

procedure Tfrmrec_cad_dup.BSavClick(Sender: TObject);
begin
  cadastro.First;
  if cadastro.Fields[0].IsNull then
  raise exception.Create('Duplicações não informadas !');

  if yesno(handle,'Salvar Duplicações ?') = mrno then
  abort;

  editado := true;
  close;
end;

procedure Tfrmrec_cad_dup.FormShow(Sender: TObject);
begin
  inherited;
  if eddoct.Text = '' then
  eddoct.SetFocus else
  begin
    PESQUISA;
    ednrod.SetFocus;
  end;
end;

procedure Tfrmrec_cad_dup.FormDestroy(Sender: TObject);
begin
  pEVE.UnRegisterEvents;
end;

procedure Tfrmrec_cad_dup.siSAIRClick(Sender: TObject);
begin
  editado := false;
  close;
end;

procedure Tfrmrec_cad_dup.cadastroAfterCancel(DataSet: TDataSet);
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

procedure Tfrmrec_cad_dup.cadastroAfterDelete(DataSet: TDataSet);
begin
  IBTra.CommitRetaining;
end;

procedure Tfrmrec_cad_dup.cadastroAfterEdit(DataSet: TDataSet);
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

procedure Tfrmrec_cad_dup.cadastroAfterInsert(DataSet: TDataSet);
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

procedure Tfrmrec_cad_dup.cadastroAfterPost(DataSet: TDataSet);
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

procedure Tfrmrec_cad_dup.cadastroBeforeCancel(DataSet: TDataSet);
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

procedure Tfrmrec_cad_dup.cadastroBeforeEdit(DataSet: TDataSet);
begin
  {nothing}
end;

procedure Tfrmrec_cad_dup.cadastroBeforeInsert(DataSet: TDataSet);
begin
  {nothing}
end;

end.



