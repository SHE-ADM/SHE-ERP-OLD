unit pcad_for_ram;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, IBStoredProc, IBDatabase, ImgList, DB,
  IBEvents, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid,  ComCtrls, ExtCtrls, dxExEdtr, StdCtrls, rxSpeedbar;

type
  Tfrmcad_for_ram = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroFOR_RAMO: TIBStringField;
    dbgConsultaFOR_RAMO: TdxDBGridMaskColumn;
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure siDELClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcad_for_ram: Tfrmcad_for_ram;

implementation

{$R *.dfm}

uses uPrincipal;

procedure Tfrmcad_for_ram.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value := 0;
end;

procedure Tfrmcad_for_ram.FormCreate(Sender: TObject);
begin
  cEvent := 'CAD_FOR';
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_FOR_RAM');
  end;
  inherited;
end;

procedure Tfrmcad_for_ram.cadastroBeforeEdit(DataSet: TDataSet);
begin
//  PCampo := 'USU_CAD_FORA';
  inherited;
end;

procedure Tfrmcad_for_ram.cadastroBeforeInsert(DataSet: TDataSet);
begin
//  PCampo := 'USU_CAD_FORI';
  inherited;
end;

procedure Tfrmcad_for_ram.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmcad_for_ram <> nil then
  begin
    frmcad_for_ram.Release;
    frmcad_for_ram := nil;
  end;
end;

procedure Tfrmcad_for_ram.FormDestroy(Sender: TObject);
begin
  inherited;
  frmcad_for_ram := nil;
end;

procedure Tfrmcad_for_ram.siDELClick(Sender: TObject);
begin
//  PCampo := 'USU_CAD_FORD';
  inherited;

  cadastro.Delete;
end;

end.
