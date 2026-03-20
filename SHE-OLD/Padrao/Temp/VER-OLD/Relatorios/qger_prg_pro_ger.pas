unit qger_prg_pro_ger;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBDatabase, IBQuery, jpeg, math;

type
  Tqrpger_prg_pro_ger = class(TQuickRep)
    QRBand8: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand10: TQRBand;
    QRLabel46: TQRLabel;
    QRExpr24: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel1: TQRLabel;
    Relatorio: TIBQuery;
    TCadastro: TIBTransaction;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    PageFooterBand1: TQRBand;
    qrlrodape: TQRLabel;
    qrlfil: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel6: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    RelatorioPRO_CART: TIBStringField;
    RelatorioPRO_DUNI: TIBStringField;
    RelatorioROM_DPRO: TIBStringField;
    RelatorioCLI_FANT: TIBStringField;
    RelatorioROM_QTDE: TIBBCDField;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRExpr1: TQRExpr;
    RelatorioROM_TOTA: TCurrencyField;
    RelatorioREP_FANT: TIBStringField;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText9: TQRDBText;
    RelatorioROM_UNIT: TFloatField;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    procedure RelatorioCalcFields(DataSet: TDataSet);
  private
  public
  end;

var
  qrpger_prg_pro_ger: Tqrpger_prg_pro_ger;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpger_prg_pro_ger.RelatorioCalcFields(DataSet: TDataSet);
begin
  relatorioROM_TOTA.Value := 0;
  if (relatorioROM_QTDE.AsFloat > 0) and (relatorioROM_UNIT.AsFloat > 0) then
  relatorioROM_TOTA.Value := roundto(relatorioROM_QTDE.AsFloat*relatorioROM_UNIT.AsFloat,-2);
end;

end.
