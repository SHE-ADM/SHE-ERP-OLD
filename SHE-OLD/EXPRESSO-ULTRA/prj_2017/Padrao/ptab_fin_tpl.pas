unit ptab_fin_tpl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, IBStoredProc, IBDatabase, ImgList, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
   ComCtrls, ExtCtrls, IBEvents, dxExEdtr, StdCtrls, rxSpeedbar;

type
  Tfrmtab_fin_tpl = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroFIN_DTPL: TIBStringField;
    cadastroFIN_STA: TIBStringField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaFIN_DTPL: TdxDBGridMaskColumn;
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
    procedure cadastroFIN_DTPLValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtab_fin_tpl: Tfrmtab_fin_tpl;

implementation

uses p_funcoes,uPrincipal;

{$R *.dfm}

procedure Tfrmtab_fin_tpl.FormCreate(Sender: TObject);
begin
  siREL.Enabled    := false;

  inherited;
  cEvent := 'CAD_TAB_FIN_TPL';
end;

procedure Tfrmtab_fin_tpl.cadastroBeforeEdit(DataSet: TDataSet);
begin
//  PCampo := 'USU_FIN_FINO';
  inherited;
end;

procedure Tfrmtab_fin_tpl.cadastroBeforeInsert(DataSet: TDataSet);
begin
//  PCampo := 'USU_FIN_FINO';
  inherited;
end;

procedure Tfrmtab_fin_tpl.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value       := 0;
end;

procedure Tfrmtab_fin_tpl.cadastroBeforePost(DataSet: TDataSet);
begin
  cadastroFIN_STA.Value := '0';
  if cadastroFIN_DTPL.AsString = '' then
     Databaseerror('Tipo de Plano de Conta não cadastrado !');

  if cadastro.State = dsInsert then
     frmprincipal.Log_Eve('PLANO DE CONTA','TABELA DE TIPO DE PLANO DE CONTA','INCLUSÃO' ,cadastroID.AsString,cadastroID.AsString,cadastroFIN_DTPL.AsString,'','')
  else
     frmprincipal.Log_Eve('PLANO DE CONTA','TABELA DE TIPO DE PLANO DE CONTA','ALTERAÇÃO',cadastroID.AsString,cadastroID.AsString,cadastroFIN_DTPL.AsString,'','');
end;

procedure Tfrmtab_fin_tpl.siDELClick(Sender: TObject);
begin
//  PCampo := 'USU_FIN_FINC';
  inherited;

  if cadastroFIN_STA.Value = '1' then
  begin
    if yesno(handle,'Confirma a exclusão do Tipo de Plano de Conta '+cadastroFIN_DTPL.AsString+' ?') = mrno then
       abort;
     cadastro.Delete
  end
  else
  with consulta do
  begin
    if yesno(handle,'Enviar para a lixeira o Tipo de Plano de Conta '+cadastroFIN_DTPL.AsString+' ?') = mrno then
       abort;

    SQL.Clear;
    SQL.Add('UPDATE FIN_TPL');
    SQL.Add('SET    FIN_STA = ''1''');
    SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
    ExecSQL;
    frmprincipal.Log_Eve('PLANO DE CONTA','TABELA DE TIPO DE PLANO DE CONTA','LIXEIRA' ,cadastroID.AsString,cadastroID.AsString,cadastroFIN_DTPL.AsString,'','');
    ExecuteEvent;
  end;
end;

procedure Tfrmtab_fin_tpl.siLIXOClick(Sender: TObject);
begin
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_TPL');
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
    SelectSQL.Add('ORDER BY FIN_DTPL');
    Open;
  end;
end;

procedure Tfrmtab_fin_tpl.FormDestroy(Sender: TObject);
begin
  inherited;
  frmtab_FIN_TPL := nil;
end;

procedure Tfrmtab_fin_tpl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if frmtab_FIN_TPL <> nil then
  begin
    frmtab_FIN_TPL.Release;
    frmtab_FIN_TPL := nil;
  end;
end;

procedure Tfrmtab_fin_tpl.cadastroBeforeDelete(DataSet: TDataSet);
begin
  frmprincipal.Log_Eve('PLANO DE CONTA','TABELA DE TIPO DE PLANO DE CONTA','EXCLUSÃO',cadastroID.AsString,cadastroID.AsString,cadastroFIN_DTPL.AsString,'','');
end;

procedure Tfrmtab_fin_tpl.dbgConsultaKeyDown(Sender: TObject;
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

procedure Tfrmtab_fin_tpl.cadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dbgconsulta.FocusedColumn := 1;
end;

procedure Tfrmtab_fin_tpl.cadastroAfterEdit(DataSet: TDataSet);
begin
  inherited;
  dbgconsulta.FocusedColumn := 1;
end;

procedure Tfrmtab_fin_tpl.cadastroFIN_DTPLValidate(Sender: TField);
begin
  if cadastro.State = dsInsert then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM FIN_TPL');
    SQL.Add('WHERE  FIN_DTPL = '''+cadastroFIN_DTPL.AsString+'''');
    Open;

    if not fields[0].IsNull then
       Databaseerror('Tipo de Plano de Conta já Cadastrado !');
  end;
end;

end.
