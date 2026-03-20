unit ptab_alq;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, DB, IBStoredProc, IBEvents, IBDatabase,
  IBCustomDataSet, IBQuery, ImgList, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
   ComCtrls, ExtCtrls, dxDBTLCl, dxGrClms,dxExEdtr, StdCtrls, rxSpeedbar;

type
  Tfrmtab_alq = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroALQ_ESTA: TIBStringField;
    cadastroALQ_ICMS: TIBBCDField;
    cadastroALQ_ICME: TIBBCDField;
    dbgConsultaALQ_ESTA: TdxDBGridMaskColumn;
    dbgConsultaALQ_ICMS: TdxDBGridMaskColumn;
    dbgConsultaALQ_ICME: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure abre_tabela;
  public
    { Public declarations }
  end;

var
  frmtab_alq: Tfrmtab_alq;

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmtab_alq.abre_tabela;
begin
  with cadastro do
  begin
    DeleteSQL.Clear;
    DeleteSQL.Add('delete from '+SLPrincipal.Values['tab_alq']);
    DeleteSQL.Add('where');
    DeleteSQL.Add('ID = :OLD_ID');

    InsertSQL.Clear;
    InsertSQL.Add('insert into '+SLPrincipal.Values['tab_alq']);
    InsertSQL.Add('  (ALQ_ESTA, ALQ_ICME, ALQ_ICMS, ID)');
    InsertSQL.Add('values');
    InsertSQL.Add('  (:ALQ_ESTA, :ALQ_ICME, :ALQ_ICMS, :ID)');

    ModifySQL.Clear;
    ModifySQL.Add('update '+SLPrincipal.Values['tab_alq']);
    ModifySQL.Add('set');
    ModifySQL.Add('  ALQ_ESTA = :ALQ_ESTA,');
    ModifySQL.Add('  ALQ_ICME = :ALQ_ICME,');
    ModifySQL.Add('  ALQ_ICMS = :ALQ_ICMS,');
    ModifySQL.Add('  ID = :ID');
    ModifySQL.Add('where');
    ModifySQL.Add('  ID = :OLD_ID');
  end;
end;

procedure Tfrmtab_alq.FormCreate(Sender: TObject);
begin
//  siLIXO.Enabled   := (frmprincipal.cad_usuUSU_TAB_ICMI.AsString = '1');
  siREL.Enabled    := false;

  abre_tabela;
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM '+SLPrincipal.Values['tab_alq']);
  end;
  inherited;
  cEvent := 'TAB_ALQ';
end;

procedure Tfrmtab_alq.cadastroBeforeEdit(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Alíquotas de I.C.M.S.';
  PCampo[3] := 'Lançamentos';
  inherited;
end;

procedure Tfrmtab_alq.cadastroBeforeInsert(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Alíquotas de I.C.M.S.';
  PCampo[3] := 'Lançamentos';
  inherited;
end;

procedure Tfrmtab_alq.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value       := 0;
  inherited;
end;

procedure Tfrmtab_alq.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Alíquotas de I.C.M.S.';
  PCampo[3] := 'Lançamentos';
  inherited;

  if oYesNo(handle,'Confirma a exclusão da aliquota '+cadastroALQ_ICMS.AsString+' ?') = mrno then
     abort;
  cadastro.Delete
end;

procedure Tfrmtab_alq.FormDestroy(Sender: TObject);
begin
  inherited;
  frmtab_alq := nil;
end;

procedure Tfrmtab_alq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmtab_alq <> nil then
  begin
    frmtab_alq.Release;
    frmtab_alq := nil;
  end;
end;

end.
