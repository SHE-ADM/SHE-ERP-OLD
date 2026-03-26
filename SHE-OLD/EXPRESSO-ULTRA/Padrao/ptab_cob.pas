unit ptab_cob;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, IBStoredProc, IBDatabase, ImgList, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ComCtrls, ExtCtrls, IBEvents, dxExEdtr, dxDBTLCl, dxGrClms,
  StdCtrls, rxSpeedbar, IBSQL;

type
  Tfrmtab_cob = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroVEN_TIPO: TIBStringField;
    cadastroVEN_STA: TIBStringField;
    dbgConsultaVEN_TIPO: TdxDBGridMaskColumn;
    dbgConsultaVEN_STA: TdxDBGridCheckColumn;
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure cadastroBeforeDelete(DataSet: TDataSet);
    procedure cadastroBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure VERIFICA_CONDICAO(TIPO: string);
  public
    { Public declarations }
  end;

var
  frmtab_cob: Tfrmtab_cob;

implementation

uses uprincipal;

{$R *.dfm}

procedure Tfrmtab_cob.VERIFICA_CONDICAO(TIPO: string);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(NPED) FROM (');
    SQL.Add('SELECT COUNT(ID) "NPED" FROM PED_VEN_CAB');
    SQL.Add('WHERE  ROM_STCO = '''+TIPO+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_002');
    SQL.Add('WHERE  ROM_STCO = '''+TIPO+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_003');
    SQL.Add('WHERE  ROM_STCO = '''+TIPO+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_004');
    SQL.Add('WHERE  ROM_STCO = '''+TIPO+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_005');
    SQL.Add('WHERE  ROM_STCO = '''+TIPO+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_006');
    SQL.Add('WHERE  ROM_STCO = '''+TIPO+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_007');
    SQL.Add('WHERE  ROM_STCO = '''+TIPO+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_008');
    SQL.Add('WHERE  ROM_STCO = '''+TIPO+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_009');
    SQL.Add('WHERE  ROM_STCO = '''+TIPO+'''');
    SQL.Add(')');
    Open;

    if Fields[0].AsInteger > 0 then
    DataBaseError('Tipo de cobrança comprometido com pedidos de vendas'+#13+
                  'Número de Pedidos '+consulta.Fields[0].AsString);
  end;
end;

procedure Tfrmtab_cob.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value      := 0;
  cadastroVEN_STA.Value := '1';
end;

procedure Tfrmtab_cob.FormCreate(Sender: TObject);
begin
//  siLIXO.Enabled   := (frmprincipal.cad_usuUSU_VEN_PDVO.AsString = '1');
  siREL.Enabled    := false;

  RECDefault.Event := 'TAB_COB';
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM TAB_COB');
    SelectSQL.Add('ORDER BY ID');
  end;
  inherited;
end;

procedure Tfrmtab_cob.cadastroBeforeEdit(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Financeiro';
  PCampo[2] := 'Tipos de Cobranças';
  PCampo[3] := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmtab_cob.cadastroBeforeInsert(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Tipos de Cobranças';
  PCampo[3] := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmtab_cob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmtab_cob <> nil then
  begin
    frmtab_cob.Release;
    frmtab_cob := nil;
  end;
end;

procedure Tfrmtab_cob.FormDestroy(Sender: TObject);
begin
  inherited;
  frmtab_cob := nil;
end;

procedure Tfrmtab_cob.siDELClick(Sender: TObject);
begin
  VERIFICA_CONDICAO(cadastroVEN_TIPO.AsString);
  
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Tipos de Cobranças';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  cadastro.Delete;
end;

procedure Tfrmtab_cob.cadastroBeforeDelete(DataSet: TDataSet);
begin
  if oYesNo(handle,'Confirma Exclusão ?') = mrno then
     abort;
end;

procedure Tfrmtab_cob.cadastroBeforePost(DataSet: TDataSet);
begin
  if cadastroVEN_TIPO.AsString <> cadastroVEN_TIPO.OldValue then
  VERIFICA_CONDICAO(cadastroVEN_TIPO.OldValue);

  inherited;
end;

end.
