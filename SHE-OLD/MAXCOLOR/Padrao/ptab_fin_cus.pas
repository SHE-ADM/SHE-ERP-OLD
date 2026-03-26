unit ptab_fin_cus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, IBStoredProc, IBDatabase, ImgList, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
   ComCtrls, ExtCtrls, IBEvents, dxExEdtr, StdCtrls, rxSpeedbar;

type
  Tfrmtab_fin_cus = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroFIN_DCUS: TIBStringField;
    cadastroFIN_STA: TIBStringField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaFIN_DCUS: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure cadastroBeforePost(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
    procedure siLIXOClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cadastroBeforeDelete(DataSet: TDataSet);
    procedure dbgConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cadastroAfterInsert(DataSet: TDataSet);
    procedure cadastroAfterEdit(DataSet: TDataSet);
    procedure cadastroFIN_DCUSValidate(Sender: TField);
    procedure dbgConsultaDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtab_fin_cus: Tfrmtab_fin_cus;

implementation

uses p_funcoes,uPrincipal, pcad_fun_edi, prec_cad;

{$R *.dfm}

procedure Tfrmtab_fin_cus.FormCreate(Sender: TObject);
begin
  siREL.Enabled    := false;

  inherited;
  cEvent := 'CAD_TAB_FIN_CUS';
end;

procedure Tfrmtab_fin_cus.cadastroBeforeEdit(DataSet: TDataSet);
begin
//  PCampo := 'USU_FIN_FINO';
  inherited;
end;

procedure Tfrmtab_fin_cus.cadastroBeforeInsert(DataSet: TDataSet);
begin
//  PCampo := 'USU_FIN_FINO';
  inherited;
end;

procedure Tfrmtab_fin_cus.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value       := 0;
end;

procedure Tfrmtab_fin_cus.cadastroBeforePost(DataSet: TDataSet);
begin
  cadastroFIN_STA.Value := '0';
  if cadastroFIN_DCUS.AsString = '' then
     Databaseerror('Centro de Custo não cadastrado !');

  if cadastro.State = dsInsert then
     frmprincipal.Log_Eve('CENTRO DE CUSTO','TABELA DE CENTRO DE CUSTO','INCLUSÃO' ,cadastroID.AsString,cadastroID.AsString, cadastroFIN_DCUS.AsString,'','')
  else
     frmprincipal.Log_Eve('CENTRO DE CUSTO','TABELA DE CENTRO DE CUSTO','ALTERAÇÃO',cadastroID.AsString,cadastroID.AsString, cadastroFIN_DCUS.AsString,'','');
end;

procedure Tfrmtab_fin_cus.siDELClick(Sender: TObject);
begin
//  PCampo := 'USU_FIN_FINC';
  inherited;

  if cadastroFIN_STA.Value = '1' then
  begin
    if yesno(handle,'Confirma a exclusão do Centro de Custo '+cadastroFIN_DCUS.AsString+' ?') = mrno then
       abort;
     cadastro.Delete
  end
  else
  with consulta do
  begin
    if yesno(handle,'Enviar para a lixeira o Centro de Custo '+cadastroFIN_DCUS.AsString+' ?') = mrno then
       abort;

    SQL.Clear;
    SQL.Add('UPDATE FIN_CUS');
    SQL.Add('SET    FIN_STA = ''1''');
    SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
    ExecSQL;
    frmprincipal.Log_Eve('CENTRO DE CUSTO','TABELA DE CENTRO DE CUSTO','LIXEIRA' ,cadastroID.AsString,cadastroID.AsString,cadastroFIN_DCUS.AsString,'','');
    ExecuteEvent;
  end;
end;

procedure Tfrmtab_fin_cus.siLIXOClick(Sender: TObject);
begin
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_CUS');
    if dbgconsulta.Tag = 0 then
    begin
      dbgconsulta.Tag   := 1;
      dbgconsulta.Color := clBtnface;
      SelectSQL.Add('WHERE FIN_STA = ''1''');
    end
    else
    begin
      dbgconsulta.Tag   := 0;
      dbgconsulta.Color := clWhite;
      SelectSQL.Add('WHERE FIN_STA = ''0''');
    end;
    SelectSQL.Add('ORDER BY FIN_DCUS');
    Open;
  end;
end;

procedure Tfrmtab_fin_cus.FormDestroy(Sender: TObject);
begin
  inherited;
  frmtab_fin_cus := nil;
end;

procedure Tfrmtab_fin_cus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if frmtab_fin_cus <> nil then
  begin
    frmtab_fin_cus.Release;
    frmtab_fin_cus := nil;
  end;
end;

procedure Tfrmtab_fin_cus.cadastroBeforeDelete(DataSet: TDataSet);
begin
  frmprincipal.Log_Eve('CENTRO DE CUSTO','TABELA DE CENTRO DE CUSTO','EXCLUSÃO',cadastroID.AsString,cadastroID.AsString,cadastroFIN_DCUS.AsString,'','');
end;

procedure Tfrmtab_fin_cus.dbgConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgconsulta.FocusedColumn = 1 then
                 begin
                   cadastro.Next;
                   if cadastro.Eof then
                      cadastro.Append;
                   dbgconsulta.FocusedColumn := 1;
                 end
                 else
                    dbgconsulta.FocusedColumn := dbgconsulta.FocusedColumn + 1;
               end;
    VK_DELETE: if cadastro.State = dsBrowse then
                  siDEL.Click;
    VK_ESCAPE: if cadastro.State = dsBrowse then close else cadastro.Cancel;
    VK_INSERT: if not siSAV.Enabled then siINC.Click;
  end;
end;

procedure Tfrmtab_fin_cus.cadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dbgconsulta.FocusedColumn := 1;
end;

procedure Tfrmtab_fin_cus.cadastroAfterEdit(DataSet: TDataSet);
begin
  inherited;
  dbgconsulta.FocusedColumn := 1;
end;

procedure Tfrmtab_fin_cus.cadastroFIN_DCUSValidate(Sender: TField);
begin
  if cadastro.State = dsInsert then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM FIN_CUS');
    SQL.Add('WHERE  FIN_DCUS = '''+cadastroFIN_DCUS.AsString+'''');
    Open;

    if not fields[0].IsNull then
       Databaseerror('Centro de Custo já Cadastrado !');
  end;
end;

procedure Tfrmtab_fin_cus.dbgConsultaDblClick(Sender: TObject);
begin
  if Assigned(frmcad_fun_edi) then
  begin
    frmcad_fun_edi.edccus.Text := cadastroID.AsString;
    frmcad_fun_edi.eddcus.Text := cadastroFIN_DCUS.AsString;
    Close;
  end
  else if Assigned(frmrec_cad) and (cadastro.State = dsBrowse) then
  begin
    frmrec_cad.edccus.Text := cadastroID.AsString;
    frmrec_cad.cbdcus.Text := cadastroFIN_DCUS.AsString;
    frmrec_cad.edccli.SetFocus;
    Close;
  end;
end;

end.
