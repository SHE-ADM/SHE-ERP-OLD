unit pFinanceiro_Recebimento_Cadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefaultEdicao, cxGraphics, ActnList, dxDockControl, dxBar,
  dxBarExtItems, ImgList, IBEvents, IBStoredProc, DB, IBCustomDataSet,
  IBQuery, IBSQL, IBDatabase, dxsbar, dxDockPanel, ExtCtrls, dxPageControl,
  cxControls, dxStatusBar;

type
  TFrmFinanceiro_Recebimento_Cadastro = class(TFrmDefaultEdicao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFinanceiro_Recebimento_Cadastro: TFrmFinanceiro_Recebimento_Cadastro;

implementation

{$R *.dfm}

end.
