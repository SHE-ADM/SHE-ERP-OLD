unit qnfe_fav;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, jpeg, IBDatabase;

type
  Tqrpnfe_fav = class(TQuickRep)
    QRBand8: TQRBand;
    qrgrom_dven: TQRGroup;
    QRDBText3: TQRDBText;
    qrgrom_drep: TQRGroup;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRBand9: TQRBand;
    QRBand10: TQRBand;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    relatorio: TIBQuery;
    IBTra: TIBTransaction;
    QRShape6: TQRShape;
    relatorioNFE_CDNF: TIntegerField;
    relatorioNFE_CONC: TSmallintField;
    relatorioNFE_DFAV: TIBStringField;
    relatorioNFE_DEMI: TDateField;
    relatorioNFE_CFOP: TIBStringField;
    relatorioNAT_DNAT: TIBStringField;
    relatorioNAT_TIPO: TIBStringField;
    relatorioNFE_VIPI: TIBBCDField;
    relatorioNFE_VPIS: TIBBCDField;
    relatorioNFE_VCOFINS: TIBBCDField;
    relatorioNFE_VNF: TIBBCDField;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr8: TQRExpr;
    QRLabel1: TQRLabel;
    QRExpr24: TQRExpr;
    QRLabel46: TQRLabel;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel5: TQRLabel;
    relatorioNFE_VICMS: TIBBCDField;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText10: TQRDBText;
    relatorioNFE_VPROD: TIBBCDField;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr2: TQRExpr;
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
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpnfe_fav: Tqrpnfe_fav;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpnfe_fav.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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
