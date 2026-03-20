unit qcai_mov_flx_car;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg;

type
  Tqrpcai_mov_flx_car = class(TQuickRep)
    IBTra: TIBTransaction;
    tSHEILD: TIBTransaction;
    consulta_s: TIBQuery;
    consulta: TIBQuery;
    relatorio: TIBQuery;
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
    relatorioCLI_FANT: TIBStringField;
    relatorioREP_FANT: TIBStringField;
    relatorioFIN_STDO: TIBStringField;
    relatorioFIN_TIPO: TIBStringField;
    relatorioFIN_CDBX: TIntegerField;
    QRShape4: TQRShape;
    relatorioFIN_CONC: TSmallintField;
    relatorioFIN_STFI: TIBStringField;
    relatorioFIN_DOCT: TIBStringField;
    relatorioFIN_DCAD: TDateField;
    relatorioFIN_DPAG: TDateField;
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
    relatorioFIN_TPAG: TCurrencyField;
    relatorioFIN_TPEN: TCurrencyField;
    relatorioFIN_VPEN: TIBBCDField;
    relatorioFIN_VPAG: TIBBCDField;
    relatorioFIN_TCAN: TCurrencyField;
    relatorioFIN_VALO: TIBBCDField;
    relatorioUSU_DUSU: TIBStringField;
    QRBand1: TQRBand;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    qrilogo: TQRImage;
    qrlraza: TQRLabel;
    qrlend1: TQRLabel;
    qrlend2: TQRLabel;
    qrlemai_site: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    qrlfone: TQRLabel;
    QRLabel10: TQRLabel;
    qrltitulo: TQRLabel;
    QRShape1: TQRShape;
    procedure relatorioCalcFields(DataSet: TDataSet);
    procedure qrgrom_dvenBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpcai_mov_flx_car: Tqrpcai_mov_flx_car;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpcai_mov_flx_car.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
     BlobStream := tab.CreateBlobStream(valor,bmRead);

  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    qrilogo.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tqrpcai_mov_flx_car.relatorioCalcFields(DataSet: TDataSet);
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
    qrdbdata.DataField := 'FIN_DCAD';
    qrdbvalo.DataField := 'FIN_TPEN';
    qrexpr1.Expression := 'SUM(relatorio.FIN_TPEN)';
    qrexpr2.Expression := 'SUM(relatorio.FIN_TPEN)';
  end
  else if relatorioFIN_STFI.AsString = 'CANCELADO' then
  begin
    qrdbdata.DataField := 'FIN_DCAD';
    qrdbvalo.DataField := 'FIN_TCAN';
    qrexpr1.Expression := 'SUM(relatorio.FIN_TCAN)';
    qrexpr2.Expression := 'SUM(relatorio.FIN_TCAN)';    
  end;
end;

end.
