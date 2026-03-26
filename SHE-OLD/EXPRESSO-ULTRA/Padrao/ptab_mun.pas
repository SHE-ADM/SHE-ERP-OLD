unit ptab_mun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, DB, IBStoredProc, IBDatabase,
  IBCustomDataSet, IBQuery, ImgList, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
   ComCtrls, ExtCtrls, IBEvents, dxExEdtr, StdCtrls, rxSpeedbar, IBSQL;

type
  Tfrmtab_mun = class(Tfrmpadr1)
    dbgConsultaMUN_CDUF: TdxDBGridMaskColumn;
    dbgConsultaMUN_DEUF: TdxDBGridMaskColumn;
    dbgConsultaMUN_CMUN: TdxDBGridMaskColumn;
    dbgConsultaMUN_DMUN: TdxDBGridMaskColumn;
    cadastroID: TIntegerField;
    cadastroMUN_CDUF: TIBStringField;
    cadastroMUN_DEUF: TIBStringField;
    cadastroMUN_CMUN: TIBStringField;
    cadastroMUN_DMUN: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure dbgConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmtab_mun: Tfrmtab_mun;

implementation

{$R *.dfm}

procedure Tfrmtab_mun.FormCreate(Sender: TObject);
begin
  inherited;
  RECDefault.Event := 'TAB_ALQ';
end;

procedure Tfrmtab_mun.dbgConsultaDblClick(Sender: TObject);
begin
  editado := true;
  close;
end;

procedure Tfrmtab_mun.dbgConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
     dbgConsultaDblClick(Self);
end;

procedure Tfrmtab_mun.FormShow(Sender: TObject);
begin
  inherited;
  dbgconsulta.FocusedColumn := 3;
end;

end.
