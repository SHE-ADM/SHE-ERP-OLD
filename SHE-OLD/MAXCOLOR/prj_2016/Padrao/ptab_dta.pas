unit ptab_dta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, dxExEdtr, IBEvents, ImgList, IBStoredProc, IBDatabase,
  DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls,  ComCtrls, dxDBTLCl, dxGrClms, StdCtrls, rxSpeedbar;

type
  Tfrmtab_dta = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroTAR_PONT: TIBBCDField;
    cadastroTAR_DESC: TIBStringField;
    cadastroTAR_OBSE: TMemoField;
    dbgConsultaTAR_DESC: TdxDBGridMaskColumn;
    dbgConsultaTAR_PONT: TdxDBGridCurrencyColumn;
    dbgConsultaTAR_OBSE: TdxDBGridBlobColumn;
    procedure FormCreate(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure cadastroBeforePost(DataSet: TDataSet);
    procedure dbgConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure siDELClick(Sender: TObject);
    procedure cadastroAfterInsert(DataSet: TDataSet);
    procedure cadastroTAR_PONTValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtab_dta: Tfrmtab_dta;

implementation

uses p_funcoes, uprincipal;

{$R *.dfm}

procedure Tfrmtab_dta.FormCreate(Sender: TObject);
begin
  dbgconsulta.Tag := 1;
  cEvent          := 'TAB_TAR';
  inherited;
end;

procedure Tfrmtab_dta.cadastroBeforeEdit(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_AUTO';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Tarefas';
  PCampo[3] := 'Descrição';
  inherited;
end;

procedure Tfrmtab_dta.cadastroBeforeInsert(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_AUTO';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Tarefas';
  PCampo[3] := 'Descrição';
  inherited;
end;

procedure Tfrmtab_dta.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value := 0;
end;

procedure Tfrmtab_dta.cadastroBeforePost(DataSet: TDataSet);
begin
  if cadastroTAR_DESC.AsString = '' then
  Databaseerror('Descrição não informada !');

  inherited;
end;

procedure Tfrmtab_dta.dbgConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if cadastro.State in [dsEdit,dsInsert] then
                 begin
                   if dbgconsulta.FocusedColumn = 2 then
                   begin
                     cadastro.Next;
                     if cadastro.Eof then
                        cadastro.Append;
                     dbgconsulta.FocusedColumn := 0;
                   end
                   else
                   dbgconsulta.FocusedColumn := dbgconsulta.FocusedColumn + 1;
                 end;
               end;
    VK_DELETE: if cadastro.State = dsBrowse then
                  siDEL.Click;
    VK_ESCAPE: if cadastro.State = dsBrowse then close else cadastro.Cancel;
    VK_INSERT: if not siSAV.Enabled then siINC.Click;
  end;
end;

procedure Tfrmtab_dta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (frmtab_dta <> nil)  and (frmtab_dta.FormStyle = fsMDIChild) then
  begin
    frmtab_dta.Release;
    frmtab_dta := nil;
  end;
end;

procedure Tfrmtab_dta.siDELClick(Sender: TObject);
begin
  if cadastroID.AsInteger = 1 then
  raise exception.Create('Não é possível excluir descrição configurado como padrão pelo sistema !');

  PCampo[0] := 'USU_AUTO';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Tarefas';
  PCampo[3] := 'Descrição';
  inherited;

  if yesno(handle,'Confirma a exclusão da tarefa '+cadastroTAR_DESC.AsString+' ?') = mrno then
  abort;
  cadastro.Delete;
end;

procedure Tfrmtab_dta.cadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dbgconsulta.FocusedColumn := 0;
end;

procedure Tfrmtab_dta.cadastroTAR_PONTValidate(Sender: TField);
begin
  if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Tabelas','Tarefas','Pontuação',false) then
  DataBaseError('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
end;

end.
