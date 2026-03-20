unit ppag_cad_grd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, IBEvents, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, ExtCtrls,  ComCtrls, dxExEdtr, StdCtrls, rxSpeedbar;

type
  Tfrmpag_cad_grd = class(Tfrmpadr1)
    dbgConsultaROM_CPRO: TdxDBGridMaskColumn;
    dbgConsultaROM_UNIT: TdxDBGridMaskColumn;
    dbgConsultaROM_TOTA: TdxDBGridMaskColumn;
    cadastroID: TIntegerField;
    cadastroROM_CCAB: TIntegerField;
    cadastroROM_CDOC: TIntegerField;
    cadastroROM_CDPR: TIntegerField;
    cadastroROM_CDPD: TIntegerField;
    cadastroROM_CDRO: TIntegerField;
    cadastroROM_CDNF: TIntegerField;
    cadastroROM_ITEM: TIBStringField;
    cadastroROM_CART: TIBStringField;
    cadastroROM_IPRO: TIntegerField;
    cadastroROM_CPRO: TIBStringField;
    cadastroROM_IPR2: TIntegerField;
    cadastroROM_CPR2: TIBStringField;
    cadastroROM_DPRO: TIBStringField;
    cadastroROM_CCOR: TIntegerField;
    cadastroROM_RCOR: TIBStringField;
    cadastroROM_DCOR: TIBStringField;
    cadastroROM_PCOR: TIBStringField;
    cadastroROM_CCO2: TIntegerField;
    cadastroROM_RCO2: TIBStringField;
    cadastroROM_DCO2: TIBStringField;
    cadastroROM_PCO2: TIBStringField;
    cadastroROM_CGRD: TIBStringField;
    cadastroROM_DGRD: TIBStringField;
    cadastroROM_DUNI: TIBStringField;
    cadastroROM_QTDE: TIBBCDField;
    cadastroROM_QTRL: TIntegerField;
    cadastroROM_QTSP: TIBBCDField;
    cadastroROM_RLSP: TIntegerField;
    cadastroROM_QTPD: TIBBCDField;
    cadastroROM_RLPD: TIntegerField;
    cadastroROM_QDIS: TIBBCDField;
    cadastroROM_RLDI: TIntegerField;
    cadastroROM_VDSC: TIBBCDField;
    cadastroROM_TOTA: TIBBCDField;
    cadastroROM_PEMB: TIBBCDField;
    cadastroROM_METR: TIBBCDField;
    cadastroROM_PESO: TIBBCDField;
    cadastroROM_REND: TIBBCDField;
    cadastroROM_PSCN: TIBBCDField;
    cadastroROM_PSMR: TIBBCDField;
    cadastroROM_VBCIPI: TIBBCDField;
    cadastroROM_PIPI: TIBBCDField;
    cadastroROM_VIPI: TIBBCDField;
    cadastroROM_CDET: TIBStringField;
    cadastroROM_CBAR: TIBStringField;
    cadastroROM_TPRC: TIBStringField;
    cadastroROM_FLAG: TSmallintField;
    cadastroROM_FOTO: TBlobField;
    cadastroROM_ABCD: TIBStringField;
    cadastroROM_STFI: TIBStringField;
    siVAL: TSpeedItem;
    siLIM: TSpeedItem;
    dbgConsultaROM_QTDE: TdxDBGridMaskColumn;
    cadastroROM_PRCA: TFloatField;
    cadastroROM_PRPA: TFloatField;
    cadastroROM_VPRC: TFloatField;
    cadastroROM_VPRO: TFloatField;
    cadastroROM_RPRC: TFloatField;
    cadastroROM_RPRO: TFloatField;
    cadastroROM_PCOM: TFloatField;
    cadastroROM_CUST: TFloatField;
    cadastroROM_UNIT: TFloatField;
    cadastroROM_PREC: TFloatField;
    cadastroROM_PPRO: TIBBCDField;
    procedure siVALClick(Sender: TObject);
    procedure siSAIRClick(Sender: TObject);
    procedure dbgConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure cadastroAfterCancel(DataSet: TDataSet);
    procedure cadastroAfterDelete(DataSet: TDataSet);
    procedure cadastroAfterEdit(DataSet: TDataSet);
    procedure cadastroAfterInsert(DataSet: TDataSet);
    procedure cadastroAfterPost(DataSet: TDataSet);
    procedure cadastroBeforeCancel(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure siLIMClick(Sender: TObject);
    procedure cadastroBeforePost(DataSet: TDataSet);
    procedure cadastroROM_UNITValidate(Sender: TField);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmpag_cad_grd: Tfrmpag_cad_grd;

implementation

uses p_funcoes, uPrincipal;

{$R *.dfm}

procedure Tfrmpag_cad_grd.siVALClick(Sender: TObject);
begin
  if (cadastro.State in [dsEdit,dsInsert]) and (cadastroROM_CPRO.AsString = '') then
  cadastro.Cancel;

  editado := true;
  close;
end;

procedure Tfrmpag_cad_grd.siSAIRClick(Sender: TObject);
begin
  editado := false;
  close;
end;

procedure Tfrmpag_cad_grd.dbgConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgconsulta.FocusedColumn = 2 then
                 begin
                   cadastro.Next;
                   if cadastro.Eof then
                   cadastro.Append;

                   dbgconsulta.FocusedColumn := 0;
                 end else
                 dbgconsulta.FocusedColumn := dbgconsulta.FocusedColumn + 1;
               end;
    VK_INSERT: if cadastro.State = dsBrowse then            siINC.Click;
    VK_DELETE: if cadastro.State = dsBrowse then            siDEL.Click;
    VK_ESCAPE: if cadastro.State = dsBrowse then close else siCAN.Click;
  end;
end;

procedure Tfrmpag_cad_grd.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value := 0;
end;

procedure Tfrmpag_cad_grd.cadastroAfterCancel(DataSet: TDataSet);
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

procedure Tfrmpag_cad_grd.cadastroAfterDelete(DataSet: TDataSet);
begin
  IBTra.CommitRetaining;
end;

procedure Tfrmpag_cad_grd.cadastroAfterEdit(DataSet: TDataSet);
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

procedure Tfrmpag_cad_grd.cadastroAfterInsert(DataSet: TDataSet);
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

procedure Tfrmpag_cad_grd.cadastroAfterPost(DataSet: TDataSet);
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

procedure Tfrmpag_cad_grd.cadastroBeforeCancel(DataSet: TDataSet);
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

procedure Tfrmpag_cad_grd.FormCreate(Sender: TObject);
begin
  cEvent := 'PAG_CAD';
  inherited;
end;

procedure Tfrmpag_cad_grd.siLIMClick(Sender: TObject);
begin
  if yesno(handle,'Confirma Limpeza ?') = mrno then
  abort;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM ROM_ITE');
    ExecSQL;
    IBTra.CommitRetaining;
  end;

  cadastro.Close;
  cadastro.Open;
end;

procedure Tfrmpag_cad_grd.cadastroBeforePost(DataSet: TDataSet);
begin
  if cadastroROM_CPRO.AsString = '' then
  DataBaseError('Referencia não informada !');

  if cadastroROM_QTDE.AsFloat = 0 then
  DataBaseError('Quantidade não informada !');

  if cadastroROM_UNIT.AsFloat = 0 then
  DataBaseError('Preço não informado !');
end;

procedure Tfrmpag_cad_grd.cadastroROM_UNITValidate(Sender: TField);
begin
  cadastroROM_TOTA.Value := cadastroROM_QTDE.AsFloat*cadastroROM_UNIT.AsFloat;
end;

procedure Tfrmpag_cad_grd.cadastroBeforeInsert(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Financeiro';
  PCampo[2] := 'Contas a Pagar';
  PCampo[3] := 'Cadastro de Contas';
  inherited;
end;

procedure Tfrmpag_cad_grd.cadastroBeforeEdit(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Financeiro';
  PCampo[2] := 'Contas a Pagar';
  PCampo[3] := 'Cadastro de Contas';
  inherited;
end;

procedure Tfrmpag_cad_grd.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Financeiro';
  PCampo[2] := 'Contas a Pagar';
  PCampo[3] := 'Cadastro de Contas';
  inherited;

  if yesno(handle,'Confirma a exclusão do item ?') = mrno then
  abort;
  cadastro.Delete
end;

end.
