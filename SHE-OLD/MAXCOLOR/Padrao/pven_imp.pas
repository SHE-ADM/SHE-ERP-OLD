unit pven_imp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, Psock, NMHttp, DB,
  IBCustomDataSet, IBQuery, SpeedBar, ComCtrls, ExtCtrls, StdCtrls,
  dxCntner, dxEditor, dxExEdtr, dxEdLib;

type
  Tfrmven_imp = class(Tfrmpadr3)
    rgorig: TRadioGroup;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cbfant: TdxImageEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    ednume: TdxEdit;
    procedure ednumeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmven_imp: Tfrmven_imp;

implementation

{$R *.dfm}

procedure Tfrmven_imp.ednumeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ednume.Text = '0') or (ednume.Text = '') or (ednume.Text = ' ') then
     raise exception.Create('Número não digitado !');

  with consulta do
  begin
    SQL.Clear;
  end;
end;

end.
