unit ptab_ped;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, DB, IBCustomDataSet, IBStoredProc, IBDatabase,
  ImgList, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ComCtrls, ExtCtrls, dxDBTLCl, dxGrClms, IBEvents, dxExEdtr,
  StdCtrls, rxSpeedbar, IBSQL;

type
  Tfrmtab_ped = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroVEN_TIPO: TIBStringField;
    cadastroVEN_FATU: TIBStringField;
    cadastroVEN_COMV: TIBBCDField;
    cadastroVEN_COMR: TIBBCDField;
    cadastroVEN_PDSC: TIBBCDField;
    cadastroVEN_STVE: TIBStringField;
    cadastroVEN_DPAG: TIBStringField;
    cadastroVEN_QTPC: TIBStringField;
    cadastroVEN_QTSP: TIBStringField;
    cadastroVEN_PREC: TIBStringField;
    cadastroVEN_BAIX: TIBStringField;
    cadastroVEN_BAIP: TIBStringField;
    cadastroVEN_NFEP: TIBStringField;
    cadastroVEN_AGRU: TIBStringField;
    cadastroVEN_TINT: TIBStringField;
    cadastroVEN_AGRP: TIBStringField;
    cadastroVEN_STA: TIBStringField;
    cadastroVEN_BEST: TIBStringField;
    cadastroVEN_TEST: TIBStringField;
    cadastroVEN_PTNG: TIBStringField;
    cadastroVEN_DESC: TIBStringField;
    cadastroVEN_PACR: TIBBCDField;
    dbgConsultaVEN_TIPO: TdxDBGridMaskColumn;
    dbgConsultaVEN_STVE: TdxDBGridPickColumn;
    dbgConsultaVEN_DPAG: TdxDBGridPickColumn;
    dbgConsultaVEN_PDSC: TdxDBGridMaskColumn;
    dbgConsultaVEN_COMV: TdxDBGridMaskColumn;
    dbgConsultaVEN_COMR: TdxDBGridMaskColumn;
    dbgConsultaVEN_FATU: TdxDBGridCheckColumn;
    dbgConsultaVEN_QTSP: TdxDBGridCheckColumn;
    dbgConsultaVEN_TINT: TdxDBGridCheckColumn;
    dbgConsultaVEN_BAIX: TdxDBGridCheckColumn;
    dbgConsultaVEN_BAIP: TdxDBGridCheckColumn;
    dbgConsultaVEN_BEST: TdxDBGridCheckColumn;
    dbgConsultaVEN_NFEP: TdxDBGridCheckColumn;
    dbgConsultaVEN_AGRP: TdxDBGridCheckColumn;
    dbgConsultaVEN_AGRU: TdxDBGridCheckColumn;
    dbgConsultaVEN_QTPC: TdxDBGridPickColumn;
    dbgConsultaVEN_TEST: TdxDBGridPickColumn;
    dbgConsultaVEN_PREC: TdxDBGridPickColumn;
    dbgConsultaVEN_PTNG: TdxDBGridCheckColumn;
    dbgConsultaVEN_DESC: TdxDBGridCheckColumn;
    dbgConsultaVEN_PACR: TdxDBGridCurrencyColumn;
    dbgConsultaVEN_STA: TdxDBGridCheckColumn;
    cadastroVEN_CNA1: TIBStringField;
    cadastroVEN_CNA2: TIBStringField;
    dbgConsultaVEN_CNA1: TdxDBGridMaskColumn;
    dbgConsultaVEN_CNA2: TdxDBGridMaskColumn;
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure cadastroBeforeDelete(DataSet: TDataSet);
    procedure cadastroBeforePost(DataSet: TDataSet);
    procedure dbgConsultaVEN_CNA1Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgConsultaVEN_CNA2Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
  private
    { Private declarations }
    procedure VERIFICA_CONDICAO(TIPO: string);
  public
    { Public declarations }
  end;

var
  frmtab_ped: Tfrmtab_ped;

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmtab_ped.VERIFICA_CONDICAO(TIPO: string);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(NPED) FROM (');
    SQL.Add('SELECT COUNT(ID) "NPED" FROM PED_VEN_CAB');
    SQL.Add('WHERE  ROM_STPD = '''+TIPO+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_002');
    SQL.Add('WHERE  ROM_STPD = '''+TIPO+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_003');
    SQL.Add('WHERE  ROM_STPD = '''+TIPO+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_004');
    SQL.Add('WHERE  ROM_STPD = '''+TIPO+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_005');
    SQL.Add('WHERE  ROM_STPD = '''+TIPO+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_006');
    SQL.Add('WHERE  ROM_STPD = '''+TIPO+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_007');
    SQL.Add('WHERE  ROM_STPD = '''+TIPO+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_008');
    SQL.Add('WHERE  ROM_STPD = '''+TIPO+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) FROM PED_VEN_CAB_009');
    SQL.Add('WHERE  ROM_STPD = '''+TIPO+'''');
    SQL.Add(')');
    Open;

    if Fields[0].AsInteger > 0 then
    DataBaseError('Tipo de pedido comprometido com pedidos de vendas'+#13+
                  'Número de Pedidos '+consulta.Fields[0].AsString);

    SQL.Clear;
    SQL.Add('SELECT COUNT(ID) FROM CAD_CLI');
    SQL.Add('WHERE  CLI_STPD = '''+cadastroID.AsString+'''');
    Open;

    if Fields[0].AsInteger > 0 then
    DataBaseError('Tipo de pedido comprometido com pedidos de vendas'+#13+
                  'Número de Cadastros '+consulta.Fields[0].AsString);
  end;
end;

procedure Tfrmtab_ped.cadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cadastroID.Value       := 0;
  cadastroVEN_PDSC.Value := 0;
  cadastroVEN_PACR.Value := 0;
  cadastroVEN_COMV.Value := 0;
  cadastroVEN_COMR.Value := 0;
  cadastroVEN_STVE.Value := frmprincipal.parametrosPAR_STCO.AsString;
  cadastroVEN_QTPC.Value := 'QT';
  cadastroVEN_PREC.Value := 'ATACADO - NORMAL';
  cadastroVEN_STA.Value  := '1';
  cadastroVEN_BEST.Value := '1';
  cadastroVEN_DESC.Value := '1';
end;

procedure Tfrmtab_ped.FormCreate(Sender: TObject);
begin
//  siLIXO.Enabled   := (frmprincipal.cad_usuUSU_VEN_PDVO.AsString = '1');
  siREL.Enabled    := false;

  inherited;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PAG_DPAG FROM TAB_PAG');
    SQL.Add('ORDER BY PAG_DPAG');
    Open;

    while not eof do
    begin
      dbgConsultaVEN_DPAG.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   VEN_TIPO FROM TAB_COB');
    SQL.Add('ORDER BY VEN_TIPO');
    Open;

    while not eof do
    begin
      dbgConsultaVEN_STVE.Items.Add(fields[0].AsString);
      next;
    end;
  end;

  RECDefault.Event := 'TAB_PED';
  
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM TAB_PED');
    SelectSQL.Add('ORDER BY ID');
  end;

  inherited;
end;

procedure Tfrmtab_ped.cadastroBeforeEdit(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Tipos de Pedidos';
  PCampo[3] := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmtab_ped.cadastroBeforeInsert(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Tipos de Pedidos';
  PCampo[3] := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmtab_ped.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmtab_ped <> nil then
  begin
    frmtab_ped.Release;
    frmtab_ped := nil;
  end;
end;

procedure Tfrmtab_ped.FormDestroy(Sender: TObject);
begin
  inherited;
  frmtab_ped := nil;
end;

procedure Tfrmtab_ped.siDELClick(Sender: TObject);
begin
  VERIFICA_CONDICAO(cadastroVEN_TIPO.AsString);

  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Tipos de Pedidos';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  cadastro.Delete;
end;

procedure Tfrmtab_ped.cadastroBeforeDelete(DataSet: TDataSet);
begin
  if oYesNo(handle,'Confirma Exclusão ?') = mrno then
     abort;
end;

procedure Tfrmtab_ped.cadastroBeforePost(DataSet: TDataSet);
var
  ippl,i,j: word;
  cppl  : string;
begin
  if cadastroVEN_TIPO.AsString <> cadastroVEN_TIPO.OldValue then
  VERIFICA_CONDICAO(cadastroVEN_TIPO.OldValue);

  if cadastroVEN_DPAG.AsString = '' then
  DataBaseError('Descrição da forma de pagamento não informada !');
  
  if cadastroVEN_FATU.AsString <> '1' then
  begin
    cadastroVEN_STVE.Value := 'SEM COBRANÇA';
    cadastroVEN_DPAG.Value := 'SEM COBRANÇA';
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_PAG');
    SQL.Add('WHERE  PAG_DPAG = '''+cadastroVEN_DPAG.AsString+'''');
    Open;

    if fields[0].IsNull then
    DataBaseError('Descrição da forma de pagamento não encontrada !');
  end;

  if cadastroVEN_PREC.AsString = '' then
  DataBaseError('Tipo de preço não informado !');
  
  if (cadastroVEN_QTPC.AsString = '') or (copy(cadastroVEN_QTPC.AsString,1,1) = 'Q') then
     cadastroVEN_QTPC.Value := 'QT'
  else
     cadastroVEN_QTPC.Value := 'PC';

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT FIN_CCON FROM FIN_PPL');
    SQL.Add('WHERE  FIN_DFIN = '''+cadastroVEN_TIPO.AsString+'''');
    Open;
  end;

  if not consulta.Fields[0].IsNull then
     exit;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,FIN_CCON FROM FIN_PPL');
    SQL.Add('WHERE  FIN_DFIN = ''VENDAS''');
    Open;
  end;

  if consulta.Fields[0].IsNull then
     exit;

  i := consulta.fields[0].AsInteger;
  j := consulta.fields[1].AsInteger;
  
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT MAX(FIN_CPPL),COUNT(*) FROM FIN_PPL');
    SQL.Add('WHERE  FIN_CCON = '''+inttostr(i)+'''');
    Open;
  end;

  if consulta.Fields[1].AsInteger > 1 then
  begin
    for i := Length(consulta.Fields[0].AsString) downto 1 do
    begin
      if copy(consulta.Fields[0].AsString,i,1) = '.' then
         break;
    end;
    ippl := strtoint(copy(consulta.Fields[0].AsString,i+1,4))+1;
    cppl := trim(copy(consulta.Fields[0].AsString,1,i-1))+'.'+oStrZero(ippl,4);
  end
  else
    cppl := trim(consulta.Fields[0].AsString)+'.0001';

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT MAX(ID) FROM FIN_PPL');
    Open;
    i := fields[0].AsInteger+1;

    SQL.Clear;
    SQL.Add('INSERT INTO FIN_PPL (ID,FIN_CPPL,FIN_DFIN,FIN_CCON)');
    SQL.Add('VALUES (');
    SQL.Add(''''+inttostr(i)+''',');
    SQL.Add(''''+cppl+''',');
    SQL.Add(''''+cadastroVEN_TIPO.AsString+''',');
    SQL.Add(''''+inttostr(j)+''')');
    ExecSQL;
  end;
end;

procedure Tfrmtab_ped.dbgConsultaVEN_CNA1Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if dbgConsulta.EditingText <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_NAT');
    SQL.Add('WHERE  NAT_CNAT = '''+dbgConsulta.EditingText+'''');
    Open;

    if fields[0].IsNull then
    DataBaseError('C.F.O.P. não cadastrado !');
  end;
end;

procedure Tfrmtab_ped.dbgConsultaVEN_CNA2Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if dbgConsulta.EditingText <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_NAT');
    SQL.Add('WHERE  NAT_CNAT = '''+dbgConsulta.EditingText+'''');
    Open;

    if fields[0].IsNull then
    DataBaseError('C.F.O.P. não cadastrado !');
  end;
end;

end.
