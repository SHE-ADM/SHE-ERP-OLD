unit qent_pro_rom;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBDatabase, IBQuery, jpeg;

type
  Tqrpent_pro_rom = class(TQuickRep)
    QRBand8: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    qrgrom_dven: TQRGroup;
    qrgrom_drep: TQRGroup;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
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
    QRExpr3: TQRExpr;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    QRLabel1: TQRLabel;
    relatorio: TIBQuery;
    IBTra: TIBTransaction;
    QRLabel6: TQRLabel;
    QRSysData2: TQRSysData;
    QRBand1: TQRBand;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    qrilogo: TQRImage;
    qrlraza: TQRLabel;
    qrlend1: TQRLabel;
    qrlend2: TQRLabel;
    qrlemai_site: TQRLabel;
    QRShape2: TQRShape;
    qrlfone: TQRLabel;
    QRLabel10: TQRLabel;
    qrltitulo: TQRLabel;
    QRShape4: TQRShape;
    QRDBText2: TQRDBText;
    qrlfil: TQRLabel;
    QRShape6: TQRShape;
    QRDBText3: TQRDBText;
    relatorioPRO_CDNF: TIBStringField;
    relatorioPRO_DCAD: TDateField;
    relatorioPRO_OPER: TIBStringField;
    relatorioPRO_DUSU: TIBStringField;
    relatorioPRO_CART: TIBStringField;
    relatorioPRO_CPRO: TIBStringField;
    relatorioPRO_DPRO: TIBStringField;
    relatorioPRO_QTDE: TIBBCDField;
    relatorioPRO_CDET: TIBStringField;
    relatorioPAR_FANT: TIBStringField;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    relatorioPRO_DCOR: TIBStringField;
    QRDBText7: TQRDBText;
    relatorioPRO_DUNI: TIBStringField;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText11: TQRDBText;
  private
  public
         procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpent_pro_rom: Tqrpent_pro_rom;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpent_pro_rom.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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
