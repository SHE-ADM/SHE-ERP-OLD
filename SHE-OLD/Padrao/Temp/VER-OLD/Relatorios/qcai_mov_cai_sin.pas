unit qcai_mov_cai_sin;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg;

type
  Tqrpcai_mov_cai_sin = class(TQuickRep)
    QRBand8: TQRBand;
    qrdbqtde: TQRDBText;
    qrdbtcde: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel43: TQRLabel;
    QRExpr20: TQRExpr;
    QRExpr1: TQRExpr;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QConsulta: TIBQuery;
    Relatorio: TIBQuery;
    QRLabel11: TQRLabel;
    qrdbdcli: TQRDBText;
    qrdbdrom: TQRDBText;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    RelatorioID: TIntegerField;
    RelatorioCAI_CCAB: TIntegerField;
    RelatorioCAI_CTSR: TIntegerField;
    RelatorioCAI_DESC: TIBStringField;
    RelatorioCAI_DOCT: TIBStringField;
    RelatorioCAI_DCAD: TDateField;
    RelatorioCAI_HCAD: TTimeField;
    RelatorioCAI_SANT: TIBBCDField;
    RelatorioCAI_CRED: TIBBCDField;
    RelatorioCAI_DEBI: TIBBCDField;
    RelatorioCAI_SATU: TIBBCDField;
    RelatorioCAI_CONC: TSmallintField;
    QRExpr2: TQRExpr;
    QRDBText1: TQRDBText;
    QRShape4: TQRShape;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRExpr3: TQRExpr;
    RelatorioCAI_SALD: TCurrencyField;
    RelatorioCAI_VENT: TCurrencyField;
    RelatorioCAI_VSAI: TCurrencyField;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    qrlcaixa: TQRLabel;
    TCadastro: TIBTransaction;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    procedure RelatorioCalcFields(DataSet: TDataSet);
  private

  public
  end;

var
  qrpcai_mov_cai_sin: Tqrpcai_mov_cai_sin;

implementation

{$R *.DFM}

procedure Tqrpcai_mov_cai_sin.RelatorioCalcFields(DataSet: TDataSet);
begin
  relatorioCAI_VENT.Value := relatorioCAI_CRED.AsFloat;
  relatorioCAI_VSAI.Value := relatorioCAI_DEBI.AsFloat;

  if relatorioCAI_CTSR.AsInteger <> 533 then
     relatorioCAI_SALD.Value := relatorioCAI_VENT.AsFloat-relatorioCAI_VSAI.AsFloat;
end;

end.
