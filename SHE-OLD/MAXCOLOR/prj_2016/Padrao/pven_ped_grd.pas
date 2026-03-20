unit pven_ped_grd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, IBEvents, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, ExtCtrls,  ComCtrls, dxExEdtr, StdCtrls, rxSpeedbar;

type
  Tfrmven_ped_grd = class(Tfrmpadr1)
    dbgConsultaGRD_DCOR: TdxDBGridMaskColumn;
    dbgConsultaGRD_EST0: TdxDBGridMaskColumn;
    dbgConsultaGRD_EST1: TdxDBGridMaskColumn;
    dbgConsultaGRD_EST2: TdxDBGridMaskColumn;
    dbgConsultaGRD_EST3: TdxDBGridMaskColumn;
    dbgConsultaGRD_EST4: TdxDBGridMaskColumn;
    dbgConsultaGRD_EST5: TdxDBGridMaskColumn;
    dbgConsultaGRD_EST6: TdxDBGridMaskColumn;
    dbgConsultaGRD_EST7: TdxDBGridMaskColumn;
    dbgConsultaGRD_EST8: TdxDBGridMaskColumn;
    dbgConsultaGRD_EST9: TdxDBGridMaskColumn;
    dbgConsultaGRD_TOTA: TdxDBGridMaskColumn;
    cadastroID: TIntegerField;
    cadastroGRD_IPRO: TIntegerField;
    cadastroGRD_CART: TIBStringField;
    cadastroGRD_CPRO: TIBStringField;
    cadastroGRD_CFOR: TIBStringField;
    cadastroGRD_CBAR: TIBStringField;
    cadastroGRD_DPRO: TIBStringField;
    cadastroGRD_CCOR: TIntegerField;
    cadastroGRD_RCOR: TIBStringField;
    cadastroGRD_DCOR: TIBStringField;
    cadastroGRD_DUNI: TIBStringField;
    cadastroGRD_COMP: TIBStringField;
    cadastroGRD_CGRD: TIBStringField;
    cadastroGRD_DGRD: TIBStringField;
    cadastroGRD_PCOR: TIBStringField;
    cadastroGRD_STAV: TIBStringField;
    cadastroGRD_CCLF: TIBStringField;
    cadastroGRD_PDSC: TIBBCDField;
    cadastroGRD_EST0: TIntegerField;
    cadastroGRD_COL0: TSmallintField;
    cadastroGRD_EST1: TIntegerField;
    cadastroGRD_COL1: TSmallintField;
    cadastroGRD_EST2: TIntegerField;
    cadastroGRD_COL2: TSmallintField;
    cadastroGRD_EST3: TIntegerField;
    cadastroGRD_COL3: TSmallintField;
    cadastroGRD_EST4: TIntegerField;
    cadastroGRD_COL4: TSmallintField;
    cadastroGRD_EST5: TIntegerField;
    cadastroGRD_COL5: TSmallintField;
    cadastroGRD_EST6: TIntegerField;
    cadastroGRD_COL6: TSmallintField;
    cadastroGRD_EST7: TIntegerField;
    cadastroGRD_COL7: TSmallintField;
    cadastroGRD_EST8: TIntegerField;
    cadastroGRD_COL8: TSmallintField;
    cadastroGRD_EST9: TIntegerField;
    cadastroGRD_COL9: TSmallintField;
    cadastroGRD_ES10: TIntegerField;
    cadastroGRD_CO10: TSmallintField;
    cadastroGRD_ES11: TIntegerField;
    cadastroGRD_CO11: TSmallintField;
    cadastroGRD_ES12: TIntegerField;
    cadastroGRD_CO12: TSmallintField;
    cadastroGRD_ES13: TIntegerField;
    cadastroGRD_CO13: TSmallintField;
    cadastroGRD_ES14: TIntegerField;
    cadastroGRD_CO14: TSmallintField;
    cadastroGRD_ES15: TIntegerField;
    cadastroGRD_CO15: TSmallintField;
    cadastroGRD_ES16: TIntegerField;
    cadastroGRD_CO16: TSmallintField;
    cadastroGRD_ES17: TIntegerField;
    cadastroGRD_CO17: TSmallintField;
    cadastroGRD_ES18: TIntegerField;
    cadastroGRD_CO18: TSmallintField;
    cadastroGRD_ES19: TIntegerField;
    cadastroGRD_CO19: TSmallintField;
    cadastroGRD_TOTA: TSmallintField;
    cadastroGRD_ESTO: TSmallintField;
    cadastroGRD_STA: TIBStringField;
    cadastroGRD_FOTO: TBlobField;
    siSAL: TSpeedItem;
    consulta_S: TIBQuery;
    IBTransaction1: TIBTransaction;
    dbgConsultaGRD_ES10: TdxDBGridMaskColumn;
    dbgConsultaGRD_ES11: TdxDBGridMaskColumn;
    dbgConsultaGRD_ES12: TdxDBGridMaskColumn;
    dbgConsultaGRD_ES13: TdxDBGridMaskColumn;
    dbgConsultaGRD_ES14: TdxDBGridMaskColumn;
    dbgConsultaGRD_ES15: TdxDBGridMaskColumn;
    dbgConsultaGRD_ES16: TdxDBGridMaskColumn;
    dbgConsultaGRD_ES17: TdxDBGridMaskColumn;
    dbgConsultaGRD_ES18: TdxDBGridMaskColumn;
    dbgConsultaGRD_ES19: TdxDBGridMaskColumn;
    siVAL: TSpeedItem;
    cadastroGRD_PREC: TFloatField;
    cadastroGRD_PPRO: TFloatField;
    cadastroGRD_VPRC: TFloatField;
    cadastroGRD_RPRC: TFloatField;
    cadastroGRD_SPRC: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure dbgConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cadastroAfterPost(DataSet: TDataSet);
    procedure cadastroAfterDelete(DataSet: TDataSet);
    procedure cadastroGRD_EST0Validate(Sender: TField);
    procedure cadastroAfterInsert(DataSet: TDataSet);
    procedure cadastroAfterEdit(DataSet: TDataSet);
    procedure cadastroAfterCancel(DataSet: TDataSet);
    procedure siVALClick(Sender: TObject);
    procedure dbgConsultaGRD_EST0Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaGRD_EST1Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaGRD_EST2Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaGRD_EST3Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaGRD_EST4Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaGRD_EST5Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaGRD_EST6Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaGRD_EST7Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaGRD_EST8Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaGRD_EST9Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaGRD_ES10Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaGRD_ES11Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaGRD_ES12Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaGRD_ES13Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaGRD_ES14Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaGRD_ES15Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaGRD_ES16Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaGRD_ES17Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaGRD_ES18Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaGRD_ES19Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
  private
    { Private declarations }
    procedure AJUSTAFORM;
    procedure PESQUISA_GRADE(campo: string);
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmven_ped_grd: Tfrmven_ped_grd;

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmven_ped_grd.PESQUISA_GRADE(campo: string);
var
  cpro: string;
begin
  cpro := cadastroGRD_CART.AsString+'.'+cadastroGRD_RCOR.AsString+'.'+dbgConsulta.ColumnByFieldName(campo).Caption;
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_PRO');
    SQL.Add('WHERE  PRO_CPRO = '''+cpro+'''');
    Open;

    if fields[0].IsNull then
    DataBaseError('Grade não cadastrada !');
  end;
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_EST0Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_EST0');
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_EST1Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_EST1');
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_EST2Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_EST2');
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_EST3Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_EST3');
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_EST4Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_EST4');
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_EST5Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_EST5');
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_EST6Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_EST6');
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_EST7Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_EST7');
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_EST8Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_EST8');
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_EST9Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_EST9');
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_ES10Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_ES10');
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_ES11Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_ES11');
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_ES12Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_ES12');
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_ES13Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_ES13');
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_ES14Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_ES14');
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_ES15Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_ES15');
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_ES16Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_ES16');
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_ES17Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_ES17');
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_ES18Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_ES18');
end;

procedure Tfrmven_ped_grd.dbgConsultaGRD_ES19Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not (cadastro.State in [dsEdit,dsInsert]) or (dbgconsulta.EditingText = '') or (dbgconsulta.EditingText = '0') then
  exit;

  if strtoint(dbgconsulta.EditingText) > 0 then
  PESQUISA_GRADE('GRD_ES19');
end;

procedure Tfrmven_ped_grd.AJUSTAFORM;
begin
  Top := 50;

  if frmprincipal.pnbot.Visible then
     Top := frmprincipal.ToolBar1.Height+53;
  Left   := frmprincipal.pnCustomize.Left+frmprincipal.pnCustomize.Width+7;
  if Top <= 50 then
     Height := frmprincipal.pnCustomize.Height-16
  else
     Height := frmprincipal.pnCustomize.Height-20;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
    Left    := 7;
    Top     := 50;
    Width   := Screen.Width-15;

    if frmprincipal.pnbot.Visible then
       Top := frmprincipal.ToolBar1.Height+53;

    if Top <= 50 then
       Height := frmprincipal.pnCustomize.Height+3
    else
       Height := frmprincipal.pnCustomize.Height+4;
  end;
end;

procedure Tfrmven_ped_grd.FormShow(Sender: TObject);
begin
  AJUSTAFORM;
  Tag := 0;
end;

procedure Tfrmven_ped_grd.dbgConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if (dbgconsulta.EditingText = '0') or (dbgconsulta.EditingText = '') then
                 begin
                   dbgconsulta.FocusedColumn := 1;
                   cadastro.Next;
                 end else dbgconsulta.FocusedColumn := dbgconsulta.FocusedColumn + 1;
               end;
    VK_INSERT: if cadastro.State = dsBrowse then            siINC.Click;
    VK_DELETE: if cadastro.State = dsBrowse then            siDEL.Click;
    VK_ESCAPE: if cadastro.State = dsBrowse then close else siCAN.Click;
  end;
end;

procedure Tfrmven_ped_grd.cadastroBeforeEdit(DataSet: TDataSet);
begin
  {nothing};
end;

procedure Tfrmven_ped_grd.FormCreate(Sender: TObject);
begin
  Tag    := 1;
  Top    := 0;
  Left   := 0;
  Height := frmprincipal.pnCustomize.Height-4;

  IBTra.StartTransaction;
end;

procedure Tfrmven_ped_grd.cadastroAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  IBTra.CommitRetaining;

  if tag = 0 then
  begin
    wRec := cadastro.GetBookmark;

    cadastro.Close;
    cadastro.Open;
    if (wRec = Nil) or (cadastro.Fields[0].IsNull) then cadastro.last
       else cadastro.GotoBookmark(wRec);
    cadastro.FreeBookmark(wRec);

    dbgconsulta.SetFocus;
  end;
end;

procedure Tfrmven_ped_grd.cadastroAfterDelete(DataSet: TDataSet);
begin
  IBTra.CommitRetaining;
end;

procedure Tfrmven_ped_grd.cadastroGRD_EST0Validate(Sender: TField);
begin
  cadastroGRD_TOTA.Value := cadastroGRD_EST0.AsInteger+cadastroGRD_EST1.AsInteger+cadastroGRD_EST2.AsInteger+
                            cadastroGRD_EST3.AsInteger+cadastroGRD_EST4.AsInteger+cadastroGRD_EST5.AsInteger+
                            cadastroGRD_EST6.AsInteger+cadastroGRD_EST7.AsInteger+cadastroGRD_EST8.AsInteger+
                            cadastroGRD_EST9.AsInteger+cadastroGRD_ES10.AsInteger+cadastroGRD_ES11.AsInteger+
                            cadastroGRD_ES12.AsInteger+cadastroGRD_ES13.AsInteger+cadastroGRD_ES14.AsInteger+
                            cadastroGRD_ES15.AsInteger+cadastroGRD_ES16.AsInteger+cadastroGRD_ES17.AsInteger+
                            cadastroGRD_ES18.AsInteger+cadastroGRD_ES19.AsInteger;

end;

procedure Tfrmven_ped_grd.cadastroAfterInsert(DataSet: TDataSet);
begin
  siINC.Enabled := false;
  siALT.Enabled := false;
  siDEL.Enabled := false;
  siSAV.Enabled := true;
  siCAN.Enabled := true;

  sbMSG.Panels[0].Text := 'Inclusão';
  sbMSG.Update;

  if tag = 0 then
  dbgconsulta.SetFocus;
end;

procedure Tfrmven_ped_grd.cadastroAfterEdit(DataSet: TDataSet);
begin
  siINC.Enabled := false;
  siALT.Enabled := false;
  siDEL.Enabled := false;
  siSAV.Enabled := true;
  siCAN.Enabled := true;

  sbMSG.Panels[0].Text := 'Alteração';
  sbMSG.Update;

  if tag = 0 then
  dbgconsulta.SetFocus;
end;

procedure Tfrmven_ped_grd.cadastroAfterCancel(DataSet: TDataSet);
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

procedure Tfrmven_ped_grd.siVALClick(Sender: TObject);
begin
  if cadastro.State in [dsedit,dsinsert] then
  cadastro.Post;

  editado := true;
  close;
end;

end.
