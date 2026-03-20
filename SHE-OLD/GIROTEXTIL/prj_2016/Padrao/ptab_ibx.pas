unit ptab_ibx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls,  ComCtrls, IBEvents, dxExEdtr, StdCtrls, rxSpeedbar;

type
  Tfrmtab_ibx = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroIBX_IDBX: TIBStringField;
    cadastroIBX_DIBX: TIBStringField;
    dbgConsultaIBX_IDBX: TdxDBGridMaskColumn;
    dbgConsultaIBX_DIBX: TdxDBGridMaskColumn;
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtab_ibx: Tfrmtab_ibx;

implementation

uses p_funcoes, uPrincipal;

{$R *.dfm}

procedure Tfrmtab_ibx.cadastroBeforeEdit(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Financeiro';
  PCampo[2] := 'Contas a Receber';
  PCampo[3] := 'Cadastro de Contas';
  inherited;
end;

procedure Tfrmtab_ibx.cadastroBeforeInsert(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Financeiro';
  PCampo[2] := 'Contas a Receber';
  PCampo[3] := 'Cadastro de Contas';
  inherited;
end;

procedure Tfrmtab_ibx.FormCreate(Sender: TObject);
begin
  siLIXO.Enabled := false;
  siREL.Enabled  := false;

  cEvent := 'TAB_IBX';
  inherited;
end;

procedure Tfrmtab_ibx.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value := 0;
end;

procedure Tfrmtab_ibx.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Financeiro';
  PCampo[2] := 'Contas a Receber';
  PCampo[3] := 'Cadastro de Contas';
  inherited;

  if yesno(handle,'Confirma a exclusão da instrução '+cadastroIBX_IDBX.AsString+' ?') = mrno then
     abort;

  cadastro.Delete
end;

procedure Tfrmtab_ibx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (frmtab_ibx <> nil) and (frmtab_ibx.FormStyle = fsMDIChild) then
  begin
    frmtab_ibx.Release;
    frmtab_ibx := nil;
  end;
end;

end.
