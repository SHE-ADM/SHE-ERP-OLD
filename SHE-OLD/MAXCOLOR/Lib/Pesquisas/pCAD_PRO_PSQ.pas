unit pCAD_PRO_PSQ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pSHE_DEF_ADM, dxExEdtr, cxGraphics, IBEvents, IBStoredProc, DB,
  IBCustomDataSet, IBQuery, IBSQL, IBDatabase, ImgList, dxCntner, ActnList,
  dxsbar, dxBar, dxBarExtItems, dxDockControl, cxControls, dxStatusBar,
  dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, dxDockPanel;

type
  TFrmCAD_PRO_PSQ = class(TFrmSHE_DEF_ADM)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCAD_PRO_PSQ: TFrmCAD_PRO_PSQ;

implementation

{$R *.dfm}

end.
