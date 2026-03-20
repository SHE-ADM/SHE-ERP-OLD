unit qcad_fun_eti;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase;

type
  Tqrpcad_fun_eti = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    qrlmes: TQRLabel;
    qrlano: TQRLabel;
    relatorio: TIBQuery;
    IBTra: TIBTransaction;
    relatorioID: TIntegerField;
    relatorioFUN_NOME: TIBStringField;
    relatorioFUN_DCAR: TIBStringField;
  private

  public

  end;

var
  qrpcad_fun_eti: Tqrpcad_fun_eti;

implementation

{$R *.DFM}

end.
