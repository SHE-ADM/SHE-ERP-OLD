unit ptab_pag;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, DB, IBStoredProc, IBEvents, IBDatabase,
  IBCustomDataSet, IBQuery, ImgList, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ComCtrls, ExtCtrls, dxDBTLCl, dxGrClms, dxExEdtr, StdCtrls, rxSpeedbar;

type
  Tfrmtab_pag = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroPAG_DPAG: TIBStringField;
    cadastroPAG_D001: TIntegerField;
    cadastroPAG_D002: TIntegerField;
    cadastroPAG_D003: TIntegerField;
    cadastroPAG_D004: TIntegerField;
    cadastroPAG_D005: TIntegerField;
    cadastroPAG_D006: TIntegerField;
    cadastroPAG_D007: TIntegerField;
    cadastroPAG_D008: TIntegerField;
    cadastroPAG_D009: TIntegerField;
    cadastroPAG_D010: TIntegerField;
    cadastroPAG_STA: TIBStringField;
    cadastroPAG_PARC: TSmallintField;
    cadastroPAG_DUPL: TIBStringField;
    dbgConsultaPAG_DPAG: TdxDBGridMaskColumn;
    dbgConsultaPAG_D001: TdxDBGridMaskColumn;
    dbgConsultaPAG_D002: TdxDBGridMaskColumn;
    dbgConsultaPAG_D003: TdxDBGridMaskColumn;
    dbgConsultaPAG_D004: TdxDBGridMaskColumn;
    dbgConsultaPAG_D005: TdxDBGridMaskColumn;
    dbgConsultaPAG_D006: TdxDBGridMaskColumn;
    dbgConsultaPAG_D007: TdxDBGridMaskColumn;
    dbgConsultaPAG_D008: TdxDBGridMaskColumn;
    dbgConsultaPAG_D009: TdxDBGridMaskColumn;
    dbgConsultaPAG_D010: TdxDBGridMaskColumn;
    dbgConsultaPAG_PARC: TdxDBGridMaskColumn;
    dbgConsultaPAG_DUPL: TdxDBGridPickColumn;
    cadastroPAG_PRAZ: TSmallintField;
    dbgConsultaPAG_PRAZ: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure cadastroBeforePost(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
    procedure siLIXOClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cadastroAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
    procedure VERIFICA_CONDICAO;
  public
    { Public declarations }
  end;

var
  frmtab_pag: Tfrmtab_pag;

implementation

uses bDados, uPrincipal;

{$R *.dfm}

procedure Tfrmtab_pag.FormCreate(Sender: TObject);
begin
  cEvent := 'TAB_PAG';
  inherited;

  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM TAB_PAG');
    SelectSQL.Add('WHERE PAG_STA = ''0''');
    Prepare;
  end;
end;

procedure Tfrmtab_pag.FormDestroy(Sender: TObject);
begin
  inherited;
  frmtab_pag := nil;
end;

procedure Tfrmtab_pag.VERIFICA_CONDICAO;
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(NPED) FROM (');
    SQL.Add('SELECT COUNT(ID) "NPED" FROM PED_VEN_CAB');
    SQL.Add('WHERE  ROM_CPAG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_002');
    SQL.Add('WHERE  ROM_CPAG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_003');
    SQL.Add('WHERE  ROM_CPAG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_004');
    SQL.Add('WHERE  ROM_CPAG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_005');
    SQL.Add('WHERE  ROM_CPAG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_006');
    SQL.Add('WHERE  ROM_CPAG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_007');
    SQL.Add('WHERE  ROM_CPAG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_008');
    SQL.Add('WHERE  ROM_CPAG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_009');
    SQL.Add('WHERE  ROM_CPAG = '''+cadastroID.AsString+'''');
    SQL.Add(')');
    Open;

    if fields[0].AsInteger > 0 then
    DataBaseError('Condição de pagamento comprometida com pedidos de vendas'+#13+
                  'Número de Pedidos '+consulta.Fields[0].AsString);

    SQL.Clear;
    SQL.Add('SELECT COUNT(ID) FROM CAD_CLI');
    SQL.Add('WHERE  CLI_CPAG = '''+cadastroID.AsString+'''');
    Open;

    if not Fields[0].IsNull then
    DataBaseError('Condição de pagamento comprometida com cadastro de clientes'+#13+
                  'Número de Cadastros '+consulta.Fields[0].AsString);
  end;
end;

procedure Tfrmtab_pag.cadastroBeforeEdit(DataSet: TDataSet);
begin
  if (cadastroID.AsInteger = frmprincipal.parametrosPAR_CPAG.AsInteger) or (cadastroPAG_DPAG.AsString = 'SEM COBRANÇA') then
     raise exception.Create('Não é possível editar condição de pagamento configurada como padrão pelo sistema !');

  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Condições de Pagamentos';
  PCampo[3] := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmtab_pag.cadastroBeforeInsert(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Condições de Pagamentos';
  PCampo[3] := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmtab_pag.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value := 0;
  cadastroPAG_DUPL.Value := 'NÃO';
  inherited;
end;

procedure Tfrmtab_pag.cadastroBeforePost(DataSet: TDataSet);
var
  i,p,prazo: word;
begin
  if (cadastro.State = dsEdit) and (cadastroPAG_DPAG.OldValue <> cadastroPAG_DPAG.AsString) then
  VERIFICA_CONDICAO;
  
  if cadastroPAG_D001.IsNull then
  DataBaseError('Prazo não selecionado !');

  prazo := cadastro.Fields[2].AsInteger;
  p     := 1;
  for i := 3 to 11 do
  begin
    if cadastro.Fields[I].AsInteger = 0 then
       break;

    prazo := cadastro.Fields[I].AsInteger;
    inc(p);
  end;

  cadastroPAG_PARC.Value := p;
  cadastroPAG_PRAZ.Value := prazo;
  cadastroPAG_STA.Value := '0';

  if cadastro.State = dsInsert then
  frmprincipal.Log_Eve('Vendas','Condições de Pagamentos','Inclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroPAG_DPAG.AsString),'','')
  else
  frmprincipal.Log_Eve('Vendas','Condições de Pagamentos','Alteração',cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroPAG_DPAG.AsString),'','');
end;

procedure Tfrmtab_pag.siDELClick(Sender: TObject);
begin
  if (cadastroID.AsInteger = frmprincipal.parametrosPAR_CPAG.AsInteger) or (cadastroPAG_DPAG.AsString = 'SEM COBRANÇA') then
     raise exception.Create('Não é possível excluir condição de pagamento configurada como padrão pelo sistema !');

  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Condições de Pagamentos';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  VERIFICA_CONDICAO;

  if cadastroPAG_STA.Value = '1' then
  begin
    if oYesNo(handle,'Confirma a exclusão da condição de pagamento '+cadastroPAG_DPAG.AsString+' ?') = mrno then
       abort;
     cadastro.Delete
  end
  else
  with consulta do
  begin
    if oYesNo(handle,'Enviar para a lixeira a condição de pagamento '+cadastroPAG_DPAG.AsString+' ?') = mrno then
       abort;

    SQL.Clear;
    SQL.Add('UPDATE TAB_PAG');
    SQL.Add('SET    PAG_STA = ''1''');
    SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
    ExecSQL;
    frmprincipal.Log_Eve('Vendas','Condições de Pagamentos','Lixeira',cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroPAG_DPAG.AsString),'','');
    ExecuteEvent;
  end;
end;

procedure Tfrmtab_pag.siLIXOClick(Sender: TObject);
begin
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM TAB_PAG');
    if dbgconsulta.Tag = 0 then
    begin
      dbgconsulta.Tag   := 1;
      dbgconsulta.Color := clBtnface;
      SelectSQL.Add('WHERE PAG_STA = ''1''');
    end
    else
    begin
      dbgconsulta.Tag   := 0;
      dbgconsulta.Color := clWhite;
      SelectSQL.Add('WHERE PAG_STA = ''0''');
    end;
    Open;
  end;
end;

procedure Tfrmtab_pag.cadastroAfterDelete(DataSet: TDataSet);
begin
  inherited;
  frmprincipal.Log_Eve('Vendas','Condições de Pagamentos','Exclusão',cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroPAG_DPAG.AsString),'','');
end;

end.
