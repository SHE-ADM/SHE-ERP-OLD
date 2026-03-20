unit ptab_cor;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, DB, IBStoredProc, IBEvents, IBDatabase,
  IBCustomDataSet, IBQuery, ImgList, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ComCtrls, ExtCtrls, dxDBTLCl, dxGrClms, dxExEdtr, StdCtrls, rxSpeedbar,
  IBSQL;

type
  Tfrmtab_cor = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroCOR_CCOR: TSmallintField;
    cadastroCOR_DCOR: TIBStringField;    
    cadastroCOR_STA: TIBStringField;
    cadastroCOR_PREC: TIBStringField;
    cadastroCOR_REFE: TIBStringField;
    cadastroCOR_PADR: TIBStringField;
    dbgConsultaCOR_CCOR: TdxDBGridMaskColumn;
    dbgConsultaCOR_REFE: TdxDBGridMaskColumn;
    dbgConsultaCOR_DCOR: TdxDBGridMaskColumn;
    dbgConsultaCOR_PREC: TdxDBGridCheckColumn;
    dbgConsultaCOR_PADR: TdxDBGridCheckColumn;
    cadastroCOR_PCOR: TIBStringField;
    dbgConsultaCOR_PCOR: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure cadastroBeforePost(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cadastroCOR_CCORValidate(Sender: TField);
    procedure cadastroCOR_DCORValidate(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cadastroBeforeDelete(DataSet: TDataSet);
    procedure cadastroAfterPost(DataSet: TDataSet);
    procedure cadastroAfterDelete(DataSet: TDataSet);
    procedure cadastroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmtab_cor: Tfrmtab_cor;

implementation

uses uPrincipal, pcad_pro_edi;

{$R *.dfm}

procedure Tfrmtab_cor.FormCreate(Sender: TObject);
begin
  siREL.Enabled  := frmprincipal.ACESSO(RECUsuarios.ID,'USU_PRIN','Tabelas','Cores','Permissões Gerais',false);

  RECDefault.Event := 'TAB_COR';
  inherited;
end;

procedure Tfrmtab_cor.cadastroBeforeEdit(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Cores';
  PCampo[3] := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmtab_cor.cadastroBeforeInsert(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Cores';
  PCampo[3] := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmtab_cor.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value       := 0;
  cadastroCOR_PREC.Value := '1';
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT MAX(COR_CCOR) FROM TAB_COR');
    SQL.Add('WHERE  COR_CCOR <> ''999''');
    Open;

    if fields[0].IsNull then
    cadastroCOR_CCOR.Value := 1 else
    cadastroCOR_CCOR.Value := fields[0].AsInteger+1;
  end;

  if Assigned(frmcad_pro_edi) then
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM TAB_COR');
      SQL.Add('WHERE  COR_DCOR = '''+frmtab_cor.Hint+'''');
      Open;
      if fields[0].IsNull then
      cadastroCOR_DCOR.Value := frmtab_cor.Hint;
    end;
  end;
end;

procedure Tfrmtab_cor.cadastroBeforePost(DataSet: TDataSet);
begin
  cadastroCOR_STA.Value := '0';
  if cadastroCOR_DCOR.AsString = '' then
  Databaseerror('Cor não cadastrada !');

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT COR_CCOR FROM TAB_COR');
    SQL.Add('WHERE  COR_DCOR = '''+cadastroCOR_DCOR.AsString+'''');
    SQL.Add('AND    ID      <> '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
       DataBaseError('Descrição de cor já utilizada para outro código de cor !'+#13+
                     'Código Original: '+fields[0].AsString);
  end;     

  if cadastro.State = dsInsert then
     frmprincipal.Log_Eve('CORES','TABELA DE CORES DE PRODUTOS','INCLUSÃO' ,cadastroCOR_CCOR.AsString,cadastroCOR_CCOR.AsString,cadastroCOR_DCOR.AsString,'','')
  else
  begin
    if ((cadastroCOR_DCOR.AsString <> cadastroCOR_DCOR.OldValue)) or ((cadastroCOR_PCOR.AsString <> cadastroCOR_PCOR.OldValue)) then
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID FROM CAD_PRO');
        SQL.Add('WHERE  PRO_CCOR = '''+cadastroCOR_CCOR.AsString+'''');
        Open;

        if not fields[0].IsNull then
        begin
          if oYesNo(frmtab_cor.Handle,'Cor desejada está comprometida com alguns produtos cadastrados e possivelmente vendas efetuadas. ' +
                                     'Caso prossiga com as mudanças isso afetará toda cadeia de produtos cadastrados e vendas efetuadas.'+#13+
                                     'Confirma alteração ?') = mrno then
             abort;
        end;

        with Consulta do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE CAD_PRO');
          SQL.Add('SET    PRO_RCOR = '''+cadastroCOR_REFE.AsString+''',');
          SQL.Add('       PRO_DCOR = '''+cadastroCOR_DCOR.AsString+''',');
          SQL.Add('       PRO_PCOR = '''+cadastroCOR_PCOR.AsString+'''');
          SQL.Add('WHERE  PRO_DCOR = '''+cadastroCOR_DCOR.OldValue+'''');
          ExecSQL;
        end;
        messageBox(handle,'Cor alterada com sucesso.',PChar(Self.Caption),MB_ICONINFORMATION+MB_OK);
      end;
    end;

    frmprincipal.Log_Eve('CORES','TABELA DE CORES DE PRODUTOS','ALTERAÇÃO',cadastroCOR_CCOR.AsString,cadastroCOR_CCOR.AsString,cadastroCOR_DCOR.AsString,'','');
  end;
end;

procedure Tfrmtab_cor.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Cores';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  if oYesNo(handle,'Confirma a exclusão da cor '+cadastroCOR_DCOR.AsString+' ?') = mrno then
     Abort;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,PRO_CPRO,PRO_DPRO FROM CAD_PRO');
    SQL.Add('WHERE  PRO_CCOR = '''+cadastroCOR_CCOR.AsString+'''');
    Prepare;
    Open;

    if not fields[0].IsNull then
       DataBaseError('Falha ao tentar excluir !'+#13+
                     'Cor possui produto(s) cadastrado(s).');
  end;
  Cadastro.Delete;
end;

procedure Tfrmtab_cor.FormDestroy(Sender: TObject);
begin
  inherited;
  frmtab_cor := nil;
end;

procedure Tfrmtab_cor.cadastroCOR_CCORValidate(Sender: TField);
begin
  if cadastro.State = dsInsert then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_COR');
    SQL.Add('WHERE  COR_CCOR = '''+cadastroCOR_CCOR.AsString+'''');
    Open;

    if not fields[0].IsNull then
       Databaseerror('Código da Cor já Cadastrada !');
  end;
end;

procedure Tfrmtab_cor.cadastroCOR_DCORValidate(Sender: TField);
begin
  if cadastro.State = dsInsert then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_COR');
    SQL.Add('WHERE  COR_DCOR = '''+cadastroCOR_DCOR.AsString+'''');
    Open;

    if not fields[0].IsNull then
       Databaseerror('Descrição da Cor já Cadastrada !');
  end;
end;

procedure Tfrmtab_cor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (frmtab_cor <> nil) and (frmtab_cor.FormStyle = fsMDIChild) then
  begin
    frmtab_cor.Release;
    frmtab_cor := nil;
  end;
end;

procedure Tfrmtab_cor.cadastroBeforeDelete(DataSet: TDataSet);
begin
  frmprincipal.Log_Eve('COR','TABELA DE CORES DE PRODUTOS','EXCLUSÃO',cadastroCOR_CCOR.AsString,cadastroCOR_CCOR.AsString,cadastroCOR_DCOR.AsString,'','');
end;

procedure Tfrmtab_cor.cadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
  editado := true;
end;

procedure Tfrmtab_cor.cadastroAfterDelete(DataSet: TDataSet);
begin
  inherited;
  editado := true;
end;

procedure Tfrmtab_cor.cadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dbgconsulta.FocusedColumn := 1;
end;

end.
