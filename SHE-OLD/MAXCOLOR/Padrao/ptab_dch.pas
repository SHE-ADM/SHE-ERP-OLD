unit ptab_dch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls,  ComCtrls, IBEvents, dxExEdtr, StdCtrls, rxSpeedbar;

type
  Tfrmtab_dch = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroDCH_CDCH: TSmallintField;
    cadastroDCH_DDCH: TIBStringField;
    dbgConsultaDCH_CDCH: TdxDBGridMaskColumn;
    dbgConsultaDCH_DDCH: TdxDBGridMaskColumn;
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cadastroAfterDelete(DataSet: TDataSet);
    procedure cadastroBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure AjustaForm;
  public
    { Public declarations }
  end;

var
  frmtab_dch: Tfrmtab_dch;

implementation

uses p_funcoes, uPrincipal;

{$R *.dfm}

procedure Tfrmtab_dch.AjustaForm;
var
  Largura: word;
begin
  screen.Cursor:=crHourGlass;
  screen.Cursor:=crDefault;

  Largura     := 0;
  Self.top    := 0;
  Self.left   := 0;
  Self.Height := frmprincipal.pnCustomize.Height-4;

  if (Screen.Width > 1024) and (Screen.Width <= 1280) then
  begin
    if Screen.Height <= 768 then
       Largura := 35;

    Width := 1000+Largura;
  end;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
    Left    := 7;
    Top     := 50;
    Width   := Screen.Width-15;

    if frmprincipal.pnbot.Visible then
    Top := frmprincipal.ToolBar1.Height+53;

    if Top <= 50 then
    Height := frmprincipal.pnCustomize.Height+3 else
    Height := frmprincipal.pnCustomize.Height+4;
  end;
end;

procedure Tfrmtab_dch.cadastroBeforeEdit(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Financeiro';
  PCampo[2] := 'Controle Bancário';
  PCampo[3] := 'Motivos de Devoluções de Cheques';
  inherited;
end;

procedure Tfrmtab_dch.cadastroBeforeInsert(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Financeiro';
  PCampo[2] := 'Controle Bancário';
  PCampo[3] := 'Motivos de Devoluções de Cheques';
  inherited;
end;

procedure Tfrmtab_dch.FormCreate(Sender: TObject);
begin
  siLIXO.Enabled := false;
  siREL.Enabled  := false;

  with cadastro do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM TAB_DCH');
    SelectSQL.Add('ORDER BY DCH_CDCH');
  end;

  cEvent := 'TAB_DCH';

  inherited;
  Ajustaform;
end;

procedure Tfrmtab_dch.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value := 0;
end;

procedure Tfrmtab_dch.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Financeiro';
  PCampo[2] := 'Controle Bancário';
  PCampo[3] := 'Motivos de Devoluções de Cheques';
  inherited;

  if yesno(handle,'Confirma a exclusão da instrução '+cadastroDCH_DDCH.AsString+' ?') = mrno then
  abort;

  cadastro.Delete;
end;

procedure Tfrmtab_dch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (frmtab_dch <> nil) and (frmtab_dch.FormStyle = fsMDIChild) then
  begin
    frmtab_dch.Release;
    frmtab_dch := nil;
  end;
end;

procedure Tfrmtab_dch.cadastroAfterDelete(DataSet: TDataSet);
begin
  inherited;
  frmprincipal.Log_Eve('Financeiro','Motivos de Devoluções de Cheques','Exclusão' ,cadastroID.AsString,cadastroDCH_CDCH.AsString,LOWERCASE(cadastroDCH_DDCH.AsString),'','');
end;

procedure Tfrmtab_dch.cadastroBeforePost(DataSet: TDataSet);
var
  sta: string;
begin
  inherited;
  sta := 'Inclusão';
  if cadastro.State = dsEdit then
  sta := 'Alteração';

  frmprincipal.Log_Eve('Financeiro','Motivos de Devoluções de Cheques',sta,cadastroID.AsString,cadastroDCH_CDCH.AsString,LOWERCASE(cadastroDCH_DDCH.AsString),'','');
end;

end.
