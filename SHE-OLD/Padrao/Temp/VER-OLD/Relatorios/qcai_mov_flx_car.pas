unit qcai_mov_flx_car;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg;

type
  Tqrpcai_mov_flx_car = class(TQuickRep)
    QConsulta: TIBQuery;
    Relatorio: TIBQuery;
    QRBand8: TQRBand;
    qrgrom_dven: TQRGroup;
    QRDBText3: TQRDBText;
    qrgrom_drep: TQRGroup;
    QRShape5: TQRShape;
    QRBand9: TQRBand;
    QRLabel43: TQRLabel;
    QRExpr20: TQRExpr;
    QRExpr1: TQRExpr;
    qrlsub: TQRLabel;
    QRBand10: TQRBand;
    QRLabel46: TQRLabel;
    QRExpr24: TQRExpr;
    QRExpr2: TQRExpr;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    QRLabel1: TQRLabel;
    RelatorioCLI_FANT: TIBStringField;
    RelatorioREP_FANT: TIBStringField;
    RelatorioFIN_STDO: TIBStringField;
    RelatorioFIN_TIPO: TIBStringField;
    RelatorioFIN_CDBX: TIntegerField;
    QRShape4: TQRShape;
    RelatorioFIN_CONC: TSmallintField;
    RelatorioFIN_STFI: TIBStringField;
    RelatorioFIN_DPAG: TDateField;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    qrdbvalo: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    qrdbdata: TQRDBText;
    QRDBText5: TQRDBText;
    RelatorioFIN_TPAG: TCurrencyField;
    RelatorioFIN_TPEN: TCurrencyField;
    RelatorioFIN_VPEN: TIBBCDField;
    RelatorioFIN_VPAG: TIBBCDField;
    RelatorioFIN_TCAN: TCurrencyField;
    RelatorioFIN_VALO: TIBBCDField;
    RelatorioUSU_DUSU: TIBStringField;
    TCadastro: TIBTransaction;
    RelatorioFIN_DBAI: TDateField;
    RelatorioFIN_TITU: TIBStringField;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure qrgrom_dvenBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
  end;

var
  qrpcai_mov_flx_car: Tqrpcai_mov_flx_car;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpcai_mov_flx_car.RelatorioCalcFields(DataSet: TDataSet);
begin
  relatorioFIN_TPEN.Value := relatorioFIN_VPEN.AsFloat;
  relatorioFIN_TPAG.Value := relatorioFIN_VPAG.AsFloat;
  relatorioFIN_TCAN.Value := relatorioFIN_VALO.AsFloat;
end;

procedure Tqrpcai_mov_flx_car.qrgrom_dvenBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if relatorioFIN_STFI.AsString = 'PAGO' then
  begin
    qrdbdata.DataField := 'FIN_DPAG';
    qrdbvalo.DataField := 'FIN_TPAG';
    qrexpr1.Expression := 'SUM(relatorio.FIN_TPAG)';
    qrexpr2.Expression := 'SUM(relatorio.FIN_TPAG)';
  end
  else if relatorioFIN_STFI.AsString = 'PENDENTE' then
  begin
    qrdbdata.DataField := 'FIN_DBAI';
    qrdbvalo.DataField := 'FIN_TPEN';
    qrexpr1.Expression := 'SUM(relatorio.FIN_TPEN)';
    qrexpr2.Expression := 'SUM(relatorio.FIN_TPEN)';
  end
  else if relatorioFIN_STFI.AsString = 'CANCELADO' then
  begin
    qrdbdata.DataField := 'FIN_DBAI';
    qrdbvalo.DataField := 'FIN_TCAN';
    qrexpr1.Expression := 'SUM(relatorio.FIN_TCAN)';
    qrexpr2.Expression := 'SUM(relatorio.FIN_TCAN)';    
  end;
end;

end.
