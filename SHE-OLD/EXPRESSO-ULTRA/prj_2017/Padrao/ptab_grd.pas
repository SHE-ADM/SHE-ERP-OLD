unit ptab_grd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, IBStoredProc, IBDatabase, ImgList, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
   ComCtrls, ExtCtrls, dxDBTLCl, dxGrClms, IBEvents, dxExEdtr, StdCtrls,
  rxSpeedbar;

type
  Tfrmtab_grd = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroGRD_CGRD: TIBStringField;
    cadastroGRD_DGRD: TIBStringField;
    cadastroGRD_STA: TIBStringField;
    cadastroGRD_PADR: TIBStringField;
    dbgConsultaGRD_CGRD: TdxDBGridMaskColumn;
    dbgConsultaGRD_DGRD: TdxDBGridMaskColumn;
    dbgConsultaGRD_PADR: TdxDBGridCheckColumn;
    procedure FormCreate(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure cadastroBeforeDelete(DataSet: TDataSet);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure cadastroBeforePost(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
    procedure siLIXOClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cadastroGRD_CGRDValidate(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtab_grd: Tfrmtab_grd;

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmtab_grd.FormCreate(Sender: TObject);
begin
  siLIXO.Enabled := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_NOVO','Produtos','Cadastro','Grade',false);
  siLIXO.Enabled := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_PRIN','Produtos','Cadastro','Grade',false);

  inherited;
  cEvent := 'TAB_GRD';
end;

procedure Tfrmtab_grd.cadastroBeforeEdit(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Produtos';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Grade';
  inherited;
end;

procedure Tfrmtab_grd.cadastroBeforeInsert(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Produtos';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Grade';
  inherited;
end;

procedure Tfrmtab_grd.cadastroBeforeDelete(DataSet: TDataSet);
begin
  frmprincipal.Log_Eve('GRADE','TABELA DE GRADES','EXCLUSÃO',cadastroGRD_CGRD.AsString,cadastroGRD_CGRD.AsString,cadastroGRD_DGRD.AsString,'','');
end;

procedure Tfrmtab_grd.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value       := 0;
  cadastroGRD_PADR.Value := '0';
end;

procedure Tfrmtab_grd.cadastroBeforePost(DataSet: TDataSet);
begin
  cadastroGRD_STA.Value := '0';
  if cadastroGRD_DGRD.AsString = '' then
     Databaseerror('Descrição da grade não cadastrada !');

  if cadastroGRD_CGRD.AsString = '' then
     Databaseerror('Grade não cadastrada !');

  if cadastro.State = dsInsert then
     frmprincipal.Log_Eve('GRADE','TABELA DE GRADES','INCLUSÃO' ,cadastroGRD_CGRD.AsString,cadastroGRD_CGRD.AsString,cadastroGRD_DGRD.AsString,'','')
  else
     frmprincipal.Log_Eve('GRADE','TABELA DE GRADES','ALTERAÇÃO',cadastroGRD_CGRD.AsString,cadastroGRD_CGRD.AsString,cadastroGRD_DGRD.AsString,'','');
end;

procedure Tfrmtab_grd.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Produtos';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Grade';
  inherited;

  if cadastroGRD_STA.Value = '1' then
  begin
    if yesno(handle,'Confirma a exclusão da grade '+cadastroGRD_CGRD.AsString+' ?') = mrno then
       abort;
     cadastro.Delete
  end
  else
  with consulta do
  begin
    if yesno(handle,'Enviar para a lixeira a grade '+cadastroGRD_CGRD.AsString+' ?') = mrno then
       abort;

    SQL.Clear;
    SQL.Add('UPDATE TAB_GRD');
    SQL.Add('SET    GRD_STA = ''1''');
    SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
    ExecSQL;
    IBTra.CommitRetaining;
    
    frmprincipal.Log_Eve('GRADE','TABELA DE GRADES','LIXEIRA' ,cadastroGRD_CGRD.AsString,cadastroGRD_CGRD.AsString,cadastroGRD_DGRD.AsString,'','');
    ExecuteEvent;
  end;
end;

procedure Tfrmtab_grd.siLIXOClick(Sender: TObject);
begin
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM TAB_GRD');
    if dbgconsulta.Tag = 0 then
    begin
      dbgconsulta.Tag   := 1;
      dbgconsulta.Color := clBtnface;
      SelectSQL.Add('WHERE GRD_STA = ''1''');
    end
    else
    begin
      dbgconsulta.Tag   := 0;
      dbgconsulta.Color := clWhite;
      SelectSQL.Add('WHERE GRD_STA = ''0''');
    end;
    Open;
  end;
end;

procedure Tfrmtab_grd.FormDestroy(Sender: TObject);
begin
  inherited;
  frmtab_grd := nil;
end;

procedure Tfrmtab_grd.cadastroGRD_CGRDValidate(Sender: TField);
begin
  if cadastro.State = dsInsert then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_GRD');
    SQL.Add('WHERE  GRD_CGRD = '''+cadastroGRD_CGRD.AsString+'''');
    Open;

    if not fields[0].IsNull then
    Databaseerror('Grade já Cadastrada !');

    cadastroGRD_DGRD.Value := cadastroGRD_CGRD.AsString;
  end;
end;

procedure Tfrmtab_grd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmtab_grd <> nil then
  begin
    frmtab_grd.Release;
    frmtab_grd := nil;
  end;
end;

procedure Tfrmtab_grd.dbgConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgconsulta.FocusedColumn = 1 then
                 begin
                   cadastro.Next;
                   if cadastro.Eof then
                      cadastro.Append;
                   dbgconsulta.FocusedColumn := 0;
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
