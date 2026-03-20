unit ptab_col;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, DB, IBStoredProc, IBEvents, IBDatabase,
  IBCustomDataSet, IBQuery, ImgList, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ComCtrls, ExtCtrls, dxDBTLCl, dxGrClms, dxExEdtr, StdCtrls, rxSpeedbar;

type
  Tfrmtab_col = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroCOL_DCOL: TIBStringField;
    cadastroCOL_STA: TIBStringField;
    cadastroCOL_PRAZ: TDateField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaCOL_DCOL: TdxDBGridMaskColumn;
    dbgConsultaCOL_PRAZ: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure cadastroBeforePost(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
    procedure siLIXOClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cadastroAfterPost(DataSet: TDataSet);
    procedure cadastroAfterDelete(DataSet: TDataSet);
    procedure dbgConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cadastroAfterEdit(DataSet: TDataSet);
    procedure cadastroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmtab_col: Tfrmtab_col;

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmtab_col.FormCreate(Sender: TObject);
begin
  siLIXO.Enabled := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_NOVO','Tabelas','Coleções','Permissões Gerais',false);
  siREL.Enabled  := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_PRIN','Tabelas','Coleções','Permissões Gerais',false);

  cEvent := 'TAB_COL';
  inherited;
end;

procedure Tfrmtab_col.cadastroBeforeEdit(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Coleções';
  PCampo[3] := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmtab_col.cadastroBeforeInsert(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Coleções';
  PCampo[3] := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmtab_col.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value := 0;
end;

procedure Tfrmtab_col.cadastroBeforePost(DataSet: TDataSet);
begin
  cadastroCOL_STA.Value := '0';

  if cadastroCOL_DCOL.AsString = '' then
     Databaseerror('Coleção não informada !');

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_COL');
    SQL.Add('WHERE  COL_DCOL = '''+cadastroCOL_DCOL.AsString+'''');
    SQL.Add('AND    ID <> '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
       Databaseerror('Descrição da coleção já cadastrada !');
  end;

  if cadastro.State = dsInsert then
     frmprincipal.Log_Eve('Produtos','Tabela de Coleções','Inclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroCOL_DCOL.AsString),'','')
  else
     frmprincipal.Log_Eve('Produtos','Tabela de Coleções','Alteração',cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroCOL_DCOL.AsString),'','');
end;

procedure Tfrmtab_col.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Coleções';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  if cadastroCOL_STA.Value = '1' then
  begin
    if oYesNo(handle,'Confirma a exclusão da coleção '+cadastroCOL_DCOL.AsString+' ?') = mrno then
       abort;
     cadastro.Delete
  end
  else
  with consulta do
  begin
    if oYesNo(handle,'Enviar para a lixeira a coleção '+cadastroCOL_DCOL.AsString+' ?') = mrno then
       abort;

    SQL.Clear;
    SQL.Add('UPDATE TAB_COL');
    SQL.Add('SET    COL_STA = ''1''');
    SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
    ExecSQL;
    frmprincipal.Log_Eve('Produtos','Tabela de Coleções','Lixeira' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroCOL_DCOL.AsString),'','');
    ExecuteEvent;
  end;
end;

procedure Tfrmtab_col.siLIXOClick(Sender: TObject);
begin
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM TAB_COL');
    if dbgconsulta.Tag = 0 then
    begin
      dbgconsulta.Tag   := 1;
      dbgconsulta.Color := clBtnface;
      SelectSQL.Add('WHERE COL_STA = ''1''');
    end
    else
    begin
      dbgconsulta.Tag   := 0;
      dbgconsulta.Color := clWhite;
      SelectSQL.Add('WHERE COL_STA = ''0''');
    end;
    Open;
  end;
end;

procedure Tfrmtab_col.FormDestroy(Sender: TObject);
begin
  inherited;
  freeAndNil(frmtab_col);
end;

procedure Tfrmtab_col.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (frmtab_col <> nil) and (frmtab_col.FormStyle = fsMDIChild) then
  begin
    frmtab_col.Release;
    frmtab_col := nil;
  end;    
end;

procedure Tfrmtab_col.cadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
  editado := true;
end;

procedure Tfrmtab_col.cadastroAfterDelete(DataSet: TDataSet);
begin
  inherited;
  editado := true;
end;

procedure Tfrmtab_col.dbgConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgconsulta.FocusedColumn = 2 then
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

procedure Tfrmtab_col.cadastroAfterEdit(DataSet: TDataSet);
begin
  inherited;
  dbgconsulta.FocusedColumn := 1;
end;

procedure Tfrmtab_col.cadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dbgconsulta.FocusedColumn := 1;
end;

end.
