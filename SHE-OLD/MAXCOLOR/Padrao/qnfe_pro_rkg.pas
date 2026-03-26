unit qnfe_pro_rkg;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, jpeg, IBDatabase;

type
  Tqrpnfe_pro_rkg = class(TQuickRep)
    QRBand8: TQRBand;
    qrbQCOM: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand10: TQRBand;
    relatorio: TIBQuery;
    IBTra: TIBTransaction;
    QRDBText11: TQRDBText;
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
    qrlfil: TQRLabel;
    qrlrodape: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel2: TQRLabel;
    qrlQCOM: TQRLabel;
    relatorioNFE_CPROD: TIBStringField;
    relatorioNFE_XPROD: TIBStringField;
    relatorioNFE_QCOM: TIBBCDField;
    relatorioNFE_VPROD: TIBBCDField;
    QRShape4: TQRShape;
    SummaryBand1: TQRBand;
    qreQCOM: TQRExpr;
    QRLabel3: TQRLabel;
    relatorioNFE_UCOM: TIBStringField;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpnfe_pro_rkg: Tqrpnfe_pro_rkg;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpnfe_pro_rkg.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

end.
