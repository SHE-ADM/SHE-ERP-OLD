unit pcai_tsr;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls,  ComCtrls, dxDBTLCl, dxGrClms, IBEvents, dxExEdtr, StdCtrls,
  rxSpeedbar, IBSQL;

type
  Tfrmcai_tsr = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroCAI_DESC: TIBStringField;
    cadastroCAI_TIPO: TIBStringField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaCAI_DESC: TdxDBGridMaskColumn;
    dbgConsultaCAI_TIPO: TdxDBGridPickColumn;
    procedure FormCreate(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure cadastroBeforePost(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
    procedure cadastroBeforeDelete(DataSet: TDataSet);
    procedure dbgConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure cadastroAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmcai_tsr: Tfrmcai_tsr;

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmcai_tsr.FormCreate(Sender: TObject);
begin
  siPSQ.Enabled  := false;
  siREL.Enabled  := frmprincipal.ACESSO(RECUsuarios.ID,'USU_PRIN','Financeiro','Caixa','Tipos de Sangria \ Reforço',false);

  RECDefault.Event := 'CAI_SAR';
  inherited;
end;

procedure Tfrmcai_tsr.cadastroBeforeEdit(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Financeiro';
  PCampo[2] := 'Caixa';
  PCampo[3] := 'Tipos de Sangria \ Reforço';
  inherited;
end;

procedure Tfrmcai_tsr.cadastroBeforeInsert(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Financeiro';
  PCampo[2] := 'Caixa';
  PCampo[3] := 'Tipos de Sangria \ Reforço';
  inherited;
end;

procedure Tfrmcai_tsr.cadastroBeforePost(DataSet: TDataSet);
begin
  if cadastroCAI_DESC.AsString = '' then
     Databaseerror('Descrição do tipo não informado !');

  if cadastroCAI_TIPO.AsString = '' then
     Databaseerror('Tipo de sangria \ Suprimento não informado !');

  if cadastro.State = dsInsert then
     frmprincipal.Log_Eve('Caixa','Tipo de Sangria \ Suprimento','Inclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroCAI_DESC.AsString),'','')
  else
     frmprincipal.Log_Eve('Caixa','Tipo de Sangria \ Suprimento','Alteração',cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroCAI_DESC.AsString),'','');
end;

procedure Tfrmcai_tsr.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Financeiro';
  PCampo[2] := 'Caixa';
  PCampo[3] := 'Tipos de Sangria \ Reforço';
  inherited;

  if oYesNo(handle,'Confirma a exclusão ?') = mrno then
     abort;
  cadastro.Delete
end;

procedure Tfrmcai_tsr.cadastroBeforeDelete(DataSet: TDataSet);
begin
  frmprincipal.Log_Eve('Caixa','Tipo de Sangria \ Suprimento','Exclusão',cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroCAI_DESC.AsString),'','');
end;

procedure Tfrmcai_tsr.dbgConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if cadastro.State in [dsInsert,dsEdit] then
                 begin
                   if dbgconsulta.FocusedColumn = 2 then
                   begin
                     cadastro.Next;
                     if cadastro.Eof then
                        siINC.Click;

                     dbgconsulta.FocusedColumn := 1
                   end
                   else
                      dbgconsulta.FocusedColumn := dbgconsulta.FocusedColumn + 1;
                 end
                 else
                 begin
                   if not cadastroID.IsNull then
                      cadastro.Edit;
                 end;            
               end;
    VK_DELETE: if cadastro.State = dsBrowse then siDEL.Click;
    VK_ESCAPE: if cadastro.State = dsBrowse then close else siCAN.Click;
    VK_INSERT: if not siSAV.Enabled then siINC.Click;
  end;
end;

procedure Tfrmcai_tsr.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value := 0;
end;

procedure Tfrmcai_tsr.cadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dbgconsulta.FocusedColumn := 1;
end;

procedure Tfrmcai_tsr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmcai_tsr <> nil then
  begin
    frmcai_tsr.Release;
    frmcai_tsr := nil;
  end;
end;

end.
