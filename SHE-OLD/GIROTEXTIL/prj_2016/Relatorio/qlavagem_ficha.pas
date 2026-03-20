unit qlavagem_ficha;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, jpeg, IBDatabase;

type
  Tqrplavagem_ficha = class(TQuickRep)
    QRBand8: TQRBand;
    QRDBText4: TQRDBText;
    QRBand10: TQRBand;
    IBTra: TIBTransaction;
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
    qrlrodape: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape4: TQRShape;
    QRLabel3: TQRLabel;
    QRRichText1: TQRRichText;
    relatorio: TIBQuery;
    consulta: TIBQuery;
    QRRichText2: TQRRichText;
    QRRichText3: TQRRichText;
    QRRichText4: TQRRichText;
    QRRichText5: TQRRichText;
    QRRichText6: TQRRichText;
    relatorioPRO_CART: TIBStringField;
    relatorioPRO_DPRO: TIBStringField;
    relatorioPRO_COMP: TIBStringField;
    relatorioPRO_INS1: TBlobField;
    relatorioPRO_ONS1: TIBStringField;
    relatorioPRO_INS2: TBlobField;
    relatorioPRO_ONS2: TIBStringField;
    relatorioPRO_INS3: TBlobField;
    relatorioPRO_ONS3: TIBStringField;
    relatorioPRO_INS4: TBlobField;
    relatorioPRO_ONS4: TIBStringField;
    relatorioPRO_INS5: TBlobField;
    relatorioPRO_ONS5: TIBStringField;
    relatorioPRO_INS6: TBlobField;
    relatorioPRO_ONS6: TIBStringField;
    relatorioPRO_INS7: TBlobField;
    relatorioPRO_ONS7: TIBStringField;
    relatorioPRO_INS8: TBlobField;
    relatorioPRO_ONS8: TIBStringField;
    QRDBImage1: TQRDBImage;
    QRDBImage2: TQRDBImage;
    QRDBImage3: TQRDBImage;
    QRDBImage4: TQRDBImage;
    QRDBImage5: TQRDBImage;
    QRDBImage6: TQRDBImage;
    QRDBImage7: TQRDBImage;
    QRDBImage8: TQRDBImage;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrplavagem_ficha: Tqrplavagem_ficha;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrplavagem_ficha.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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
