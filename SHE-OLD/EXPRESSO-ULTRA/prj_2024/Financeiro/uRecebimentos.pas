unit uRecebimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pConsulta, cxGraphics, dxExEdtr, ImgList, IBEvents,
  IBStoredProc, DB, IBCustomDataSet, IBQuery, IBSQL, IBDatabase, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, dxPageControl, rxSpeedbar, StdCtrls, ExtCtrls,
  cxControls, dxStatusBar;

type
  TFrmRecebimentos = class(TFrmConsulta)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRecebimentos: TFrmRecebimentos;

implementation

{$R *.dfm}

end.
