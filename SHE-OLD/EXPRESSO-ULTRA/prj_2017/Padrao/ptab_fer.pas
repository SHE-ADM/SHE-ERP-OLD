unit ptab_fer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, dxExEdtr, IBEvents, ImgList, IBStoredProc, IBDatabase,
  DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  StdCtrls, ExtCtrls,  ComCtrls, dxDBTLCl, dxGrClms, rxSpeedbar;

type
  Tfrmtab_fer = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroFER_DEFE: TIBStringField;
    cadastroFER_DTFE: TDateField;
    dbgConsultaFER_DEFE: TdxDBGridMaskColumn;
    dbgConsultaFER_DTFE: TdxDBGridDateColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtab_fer: Tfrmtab_fer;

implementation

uses p_funcoes;

{$R *.dfm}

procedure Tfrmtab_fer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (frmtab_fer <> nil) and (frmtab_fer.FormStyle = fsMDIChild) then
  begin
    frmtab_fer.Release;
    frmtab_fer := nil;
  end;
end;

procedure Tfrmtab_fer.FormCreate(Sender: TObject);
begin
  cEvent := 'TAB_EFE';
  inherited;
end;

procedure Tfrmtab_fer.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value := 0;
  dbgconsulta.FocusedColumn := 0;
end;

procedure Tfrmtab_fer.siDELClick(Sender: TObject);
begin
  if yesno(handle,'Confirma Exclusão ?'+#13+'Feriado : '+cadastroFER_DEFE.AsString) = mrno then
  abort;

  cadastro.Delete;
end;

end.
