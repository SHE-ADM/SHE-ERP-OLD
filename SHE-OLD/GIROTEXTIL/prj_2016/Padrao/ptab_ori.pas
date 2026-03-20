unit ptab_ori;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, DB, IBStoredProc, IBEvents, IBDatabase,
  IBCustomDataSet, IBQuery, ImgList, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
   ComCtrls, ExtCtrls, dxDBTLCl, dxGrClms, dxExEdtr, StdCtrls, rxSpeedbar;

type
  Tfrmtab_ori = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroORI_CORI: TIBStringField;
    cadastroORI_DORI: TIBStringField;
    cadastroORI_STA: TIBStringField;
    dbgConsultaORI_CORI: TdxDBGridMaskColumn;
    dbgConsultaORI_DORI: TdxDBGridMaskColumn;
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
  private
    { Private declarations }
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmtab_ori: Tfrmtab_ori;

implementation

uses p_funcoes, uPrincipal;

{$R *.dfm}

procedure Tfrmtab_ori.FormCreate(Sender: TObject);
begin
  siLIXO.Enabled := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_NOVO','Tabelas','Origem de Mercadorias','Permissões Gerais',false);
  siREL.Enabled  := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_PRIN','Tabelas','Origem de Mercadorias','Permissões Gerais',false);

  cEvent := 'TAB_COL';
  inherited;
end;

procedure Tfrmtab_ori.cadastroBeforeEdit(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Origem de Mercadorias';
  PCampo[3] := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmtab_ori.cadastroBeforeInsert(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Origem de Mercadorias';
  PCampo[3] := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmtab_ori.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value := 0;
end;

procedure Tfrmtab_ori.cadastroBeforePost(DataSet: TDataSet);
begin
  cadastroORI_STA.Value := '0';

  if cadastroORI_DORI.AsString = '' then
     Databaseerror('Origem da mercadoria não informada !');

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_ORI');
    SQL.Add('WHERE  ORI_DORI = '''+cadastroORI_DORI.AsString+'''');
    SQL.Add('AND    ID <> '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
       Databaseerror('Descrição da origem da Mercadoria já cadastrada !');

    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_ORI');
    SQL.Add('WHERE  ORI_CORI = '''+cadastroORI_CORI.AsString+'''');
    SQL.Add('AND    ID <> '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
       Databaseerror('Código da origem da Mercadoria já cadastrada !');
  end;

  if cadastro.State = dsInsert then
     frmprincipal.Log_Eve('ORIGENS DE MERCADORIAS','TABELA DE ORIGEM DE MERCADORIAS','INCLUSÃO' ,cadastroID.AsString,cadastroID.AsString,cadastroORI_DORI.AsString,'','')
  else
     frmprincipal.Log_Eve('ORIGENS DE MERCADORIAS','TABELA DE ORIGEM DE MERCADORIAS','ALTERAÇÃO',cadastroID.AsString,cadastroID.AsString,cadastroORI_DORI.AsString,'','');
end;

procedure Tfrmtab_ori.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Origem de Mercadorias';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  if cadastroORI_STA.Value = '1' then
  begin
    if yesno(handle,'Confirma a exclusão da origem da Mercadoria '+cadastroORI_DORI.AsString+' ?') = mrno then
       abort;
     cadastro.Delete
  end
  else
  with consulta do
  begin
    if yesno(handle,'Enviar para a lixeira a origem da Mercadoria '+cadastroORI_DORI.AsString+' ?') = mrno then
       abort;

    SQL.Clear;
    SQL.Add('UPDATE TAB_ORI');
    SQL.Add('SET    ORI_STA = ''1''');
    SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
    ExecSQL;
    frmprincipal.Log_Eve('Origem de Mercadorias','TABELA DE ORIGEM DE MERCADORIAS','LIXEIRA' ,cadastroID.AsString,cadastroID.AsString,cadastroORI_DORI.AsString,'','');
    ExecuteEvent;
  end;
end;

procedure Tfrmtab_ori.siLIXOClick(Sender: TObject);
begin
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM TAB_ORI');
    if dbgconsulta.Tag = 0 then
    begin
      dbgconsulta.Tag   := 1;
      dbgconsulta.Color := clBtnface;
      SelectSQL.Add('WHERE ORI_STA = ''1''');
    end
    else
    begin
      dbgconsulta.Tag   := 0;
      dbgconsulta.Color := clWhite;
      SelectSQL.Add('WHERE ORI_STA = ''0''');
    end;
    Open;
  end;
end;

procedure Tfrmtab_ori.FormDestroy(Sender: TObject);
begin
  inherited;
  freeAndNil(frmtab_ori);
end;

procedure Tfrmtab_ori.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (frmtab_ori <> nil) and (frmtab_ori.FormStyle = fsMDIChild) then
  begin
    frmtab_ori.Release;
    frmtab_ori := nil;
  end;    
end;

procedure Tfrmtab_ori.cadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
  editado := true;
end;

procedure Tfrmtab_ori.cadastroAfterDelete(DataSet: TDataSet);
begin
  inherited;
  editado := true;
end;

procedure Tfrmtab_ori.dbgConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgconsulta.FocusedColumn = 1 then
                 begin
                   cadastro.Next;
                   if cadastro.Eof then
                      cadastro.Append;
                   dbgconsulta.FocusedColumn:= 0;
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

end.
