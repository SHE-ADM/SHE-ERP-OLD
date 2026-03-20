unit ptab_uni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, IBStoredProc, IBEvents, IBDatabase,
  IBCustomDataSet, DB, IBQuery, ImgList, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid,  ComCtrls, ExtCtrls, dxExEdtr, StdCtrls, rxSpeedbar;

type
  Tfrmtab_uni = class(Tfrmpadr1)
    dbgConsultaUNI_DUNI: TdxDBGridMaskColumn;
    dbgConsultaUNI_REFE: TdxDBGridMaskColumn;
    cadastroID: TIntegerField;
    cadastroUNI_DUNI: TIBStringField;
    cadastroUNI_REFE: TIBStringField;
    cadastroUNI_STA: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure cadastroBeforePost(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
    procedure siLIXOClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtab_uni: Tfrmtab_uni;

implementation

uses p_funcoes, uPrincipal, bDados;

{$R *.dfm}

procedure Tfrmtab_uni.FormCreate(Sender: TObject);
begin
//  siLIXO.Enabled   := (frmprincipal.cad_usuUSU_TAB_UNII.AsString = '1');
  siREL.Enabled    := false;

  cEvent := 'TAB_ALQ';

  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM TAB_UNI');
    SelectSQL.Add('WHERE UNI_STA = ''0''');
  end;

  inherited;
end;

procedure Tfrmtab_uni.cadastroBeforeEdit(DataSet: TDataSet);
begin
//  PCampo := 'USU_TAB_UNIA';
  inherited;
end;

procedure Tfrmtab_uni.cadastroBeforeInsert(DataSet: TDataSet);
begin
//  PCampo := 'USU_TAB_UNII';
  inherited;
end;

procedure Tfrmtab_uni.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value := 0;
  inherited;
end;

procedure Tfrmtab_uni.cadastroBeforePost(DataSet: TDataSet);
begin
  cadastroUNI_STA.Value := '0';
  inherited;
end;

procedure Tfrmtab_uni.siDELClick(Sender: TObject);
begin
//  PCampo := 'USU_TAB_UNID';
  inherited;

  if cadastroUNI_STA.Value = '1' then
  begin
    if yesno(handle,'Confirma a exclusão da unidade '+cadastroUNI_DUNI.AsString+' ?') = mrno then
       abort;
     cadastro.Delete
  end
  else
  with consulta do
  begin
    if yesno(handle,'Enviar para a lixeira a unidade '+cadastroUNI_DUNI.AsString+' ?') = mrno then
       abort;

    SQL.Clear;
    SQL.Add('UPDATE TAB_UNI');
    SQL.Add('SET UNI_STA = ''1''');
    SQL.Add('WHERE    ID = '''+cadastroID.AsString+'''');
    ExecSQL;
    ExecuteEvent;
  end;
end;

procedure Tfrmtab_uni.siLIXOClick(Sender: TObject);
begin
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM TAB_UNI');
    if dbgconsulta.Tag = 0 then
    begin
      dbgconsulta.Tag   := 1;
      dbgconsulta.Color := clBtnface;
      SelectSQL.Add('WHERE UNI_STA = ''1''');
    end
    else
    begin
      dbgconsulta.Tag   := 0;
      dbgconsulta.Color := clWhite;
      SelectSQL.Add('WHERE UNI_STA = ''0''');
    end;
    Open;
  end;
end;

procedure Tfrmtab_uni.FormDestroy(Sender: TObject);
begin
  inherited;
  frmtab_uni := nil;
end;

procedure Tfrmtab_uni.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmtab_uni <> nil then
  begin
    frmtab_uni.Release;
    frmtab_uni := nil;
  end;    
end;

end.

