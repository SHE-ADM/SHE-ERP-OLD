unit pteste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, dxtree, dxdbtree, DB, IBCustomDataSet, IBTable;

type
  Tfrmteste = class(TForm)
    tab_cor: TIBTable;
    tab_corID: TIntegerField;
    tab_corCOR_CCOR: TSmallintField;
    tab_corCOR_DCOR: TIBStringField;
    tab_corCOR_STA: TIBStringField;
    tab_corCOR_PREC: TIBStringField;
    tab_corCOR_REFE: TIBStringField;
    DataSource1: TDataSource;
    DBTreeView1: TdxDBTreeView;
    procedure tab_corAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmteste: Tfrmteste;

implementation

uses bDados;

{$R *.dfm}

procedure Tfrmteste.tab_corAfterPost(DataSet: TDataSet);
begin
  DMDADOS.ibTRA.CommitRetaining;
end;

end.
