unit pCadastros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pSHE_DEF_PSQ, cxGraphics, dxExEdtr, dxsbar, DB, ImgList,
  IBEvents, IBStoredProc, IBCustomDataSet, IBQuery, IBSQL, IBDatabase,
  ActnList, dxBar, dxBarExtItems, dxDockControl, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDockPanel, dxPageControl, ExtCtrls, cxControls, dxStatusBar;

type
  TFrmCadastros = class(TFrmSHE_DEF_PSQ)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastros: TFrmCadastros;

implementation

{$R *.dfm}

end.
