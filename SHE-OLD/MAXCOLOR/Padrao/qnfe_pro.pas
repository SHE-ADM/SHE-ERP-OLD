unit qnfe_pro;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, jpeg, IBDatabase;

type
  Tqrpnfe_pro = class(TQuickRep)
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
    QRExpr11: TQRExpr;
    qrltot: TQRLabel;
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
    qrlfil: TQRLabel;
    qrlrodape: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    relatorioPRO_CART: TIBStringField;
    relatorioNFE_XPROD: TIBStringField;
    relatorioNFE_UCOM: TIBStringField;
    relatorioNAT_TIPO: TIBStringField;
    relatorioNAT_OPER: TIBStringField;
    relatorioNFE_VICMS: TIBBCDField;
    relatorioNFE_VIPI: TIBBCDField;
    relatorioNFE_VPIS: TIBBCDField;
    relatorioNFE_VCOFINS: TIBBCDField;
    relatorioNFE_VNF: TIBBCDField;
    relatorioNFE_QCOM: TIBBCDField;
    QRDBText6: TQRDBText;
    procedure QRBand9BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpnfe_pro: Tqrpnfe_pro;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpnfe_pro.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpnfe_pro.QRBand9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrltot.Caption := 'Total '+relatorioNAT_TIPO.AsString;
end;

end.
