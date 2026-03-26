unit qnfe_tra;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, jpeg, IBDatabase;

type
  Tqrpnfe_tra = class(TQuickRep)
    QRBand8: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    qrgrom_dven: TQRGroup;
    QRDBText3: TQRDBText;
    qrgrom_drep: TQRGroup;
    QRShape4: TQRShape;
    QRLabel3: TQRLabel;
    QRShape5: TQRShape;
    QRBand9: TQRBand;
    QRBand10: TQRBand;
    relatorio: TIBQuery;
    IBTra: TIBTransaction;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape6: TQRShape;
    QRExpr24: TQRExpr;
    QRLabel46: TQRLabel;
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
    relatorioNFE_CDNF: TIntegerField;
    relatorioNFE_CONC: TSmallintField;
    relatorioNFE_DFAV: TIBStringField;
    relatorioNFE_DVEN: TIBStringField;
    relatorioNFE_DREP: TIBStringField;
    relatorioNFE_DTRA: TIBStringField;
    relatorioNFE_DEMI: TDateField;
    relatorioNFE_CFOP: TIBStringField;
    relatorioNAT_DNAT: TIBStringField;
    relatorioNAT_TIPO: TIBStringField;
    relatorioNAT_OPER: TIBStringField;
    relatorioNFE_VICMS: TIBBCDField;
    relatorioNFE_VIPI: TIBBCDField;
    relatorioNFE_VPIS: TIBBCDField;
    relatorioNFE_VCOFINS: TIBBCDField;
    relatorioNFE_VNF: TIBBCDField;
    qrlfil: TQRLabel;
    qrlrodape: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    relatorioNFE_ESP: TIBStringField;
    relatorioNFE_QVOL: TLargeintField;
    QRDBText2: TQRDBText;
    relatorioNFE_PSBR: TIBBCDField;
    relatorioNFE_PSLQ: TIBBCDField;
    QRDBText6: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRExpr11: TQRExpr;
    QRExpr1: TQRExpr;
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpnfe_tra: Tqrpnfe_tra;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpnfe_tra.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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
