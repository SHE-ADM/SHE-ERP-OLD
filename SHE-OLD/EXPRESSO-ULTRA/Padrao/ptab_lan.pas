unit ptab_lan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, dxExEdtr, IBEvents, ImgList, IBStoredProc, IBDatabase,
  DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls,  ComCtrls, dxDBTLCl, dxGrClms, StdCtrls, rxSpeedbar;

type
  Tfrmtab_lan = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroLAN_TIPO: TIBStringField;
    cadastroLAN_DESC: TIBStringField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaLAN_TIPO: TdxDBGridPickColumn;
    dbgConsultaLAN_DESC: TdxDBGridMaskColumn;
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
    procedure cadastroAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtab_lan: Tfrmtab_lan;

implementation

uses uprincipal;

{$R *.dfm}

procedure Tfrmtab_lan.FormCreate(Sender: TObject);
begin
  inherited;
  cEvent := 'TAB_DEF';
end;

procedure Tfrmtab_lan.cadastroBeforeEdit(DataSet: TDataSet);
begin
  if cadastroID.AsInteger = 1 then
  raise exception.Create('Não é possível alterar descrição configurado como padrão pelo sistema !');

  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Defeitos';
  PCampo[3] := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmtab_lan.cadastroBeforeInsert(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Defeitos';
  PCampo[3] := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmtab_lan.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value := 0;
end;

procedure Tfrmtab_lan.cadastroBeforePost(DataSet: TDataSet);
begin
  if cadastroLAN_TIPO.AsString = '' then
  Databaseerror('Operaçao não informada !');

  if cadastroLAN_DESC.AsString = '' then
  Databaseerror('Descrição não informada !');

  inherited;
end;

procedure Tfrmtab_lan.dbgConsultaKeyDown(Sender: TObject; var Key: Word;
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
                     dbgconsulta.FocusedColumn := 1;
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

procedure Tfrmtab_lan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (frmtab_lan <> nil)  and (frmtab_lan.FormStyle = fsMDIChild) then
  begin
    frmtab_lan.Release;
    frmtab_lan := nil;
  end;
end;

procedure Tfrmtab_lan.siDELClick(Sender: TObject);
begin
  if cadastroID.AsInteger = 1 then
  raise exception.Create('Não é possível excluir descrição configurado como padrão pelo sistema !');

  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Defeitos';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_PRO');
    SQL.Add('WHERE  PRO_CGRP = '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o defeito '+cadastroLAN_DESC.AsString+' !'+#13+'Defeito desejado está comprometido com alguns produtos cadastrados.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;

  if yesno(handle,'Confirma a exclusão do grupo '+cadastroLAN_DESC.AsString+' ?') = mrno then
  abort;
  cadastro.Delete;
end;

procedure Tfrmtab_lan.cadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dbgconsulta.FocusedColumn := 1;
end;

procedure Tfrmtab_lan.cadastroAfterEdit(DataSet: TDataSet);
begin
  inherited;
  dbgconsulta.FocusedColumn := 1;
end;

end.
