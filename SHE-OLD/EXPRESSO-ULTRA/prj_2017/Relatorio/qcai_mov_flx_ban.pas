unit qcai_mov_flx_ban;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg;

type
  Tqrpcai_mov_flx_ban = class(TQuickRep)
    IBTra: TIBTransaction;
    tSHEILD: TIBTransaction;
    consulta_s: TIBQuery;
    consulta: TIBQuery;
    relatorio: TIBQuery;
    QRBand8: TQRBand;
    qrdbvalo: TQRDBText;
    QRDBText6: TQRDBText;
    qrgrom_dven: TQRGroup;
    QRDBText3: TQRDBText;
    qrgrom_drep: TQRGroup;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
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
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    relatorioFIN_CDBX: TIntegerField;
    QRShape4: TQRShape;
    relatorioFIN_CONC: TSmallintField;
    relatorioFIN_STFI: TIBStringField;
    relatorioFIN_DOCT: TIBStringField;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    qrdbdata: TQRDBText;
    relatorioFIN_DCAD: TDateField;
    relatorioFIN_DPAG: TDateField;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    relatorioFIN_VPEN: TIBBCDField;
    relatorioFIN_VPAG: TIBBCDField;
    relatorioFIN_VALO: TIBBCDField;
    relatorioFIN_TPEN: TCurrencyField;
    relatorioFIN_TPAG: TCurrencyField;
    relatorioFIN_TCAN: TCurrencyField;
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
  qrpcai_mov_flx_ban: Tqrpcai_mov_flx_ban;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpcai_mov_flx_ban.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpcai_mov_flx_ban.relatorioCalcFields(DataSet: TDataSet);
begin
  relatorioFIN_TPEN.Value := relatorioFIN_VPEN.AsFloat;
  relatorioFIN_TPAG.Value := relatorioFIN_VPAG.AsFloat;
  relatorioFIN_TCAN.Value := relatorioFIN_VALO.AsFloat;
end;

procedure Tqrpcai_mov_flx_ban.qrgrom_dvenBeforePrint(Sender: TQRCustomBand;
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
