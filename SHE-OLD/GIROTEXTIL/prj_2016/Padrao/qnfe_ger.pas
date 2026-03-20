unit qnfe_ger;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, jpeg, IBDatabase;

type
  Tqrpnfe_ger = class(TQuickRep)
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
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
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
    qrltot: TQRLabel;
    QRExpr24: TQRExpr;
    QRLabel46: TQRLabel;
    relatorioNFE_VICMS: TIBBCDField;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    relatorioNAT_OPER: TIBStringField;
    QRBand1: TQRBand;
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
    relatorioNFE_DVEN: TIBStringField;
    relatorioNFE_DREP: TIBStringField;
    relatorioNFE_DTRA: TIBStringField;
    qrlfil: TQRLabel;
    qrlrodape: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    procedure QRBand9BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpnfe_ger: Tqrpnfe_ger;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpnfe_ger.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpnfe_ger.QRBand9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrltot.Caption := 'Total '+relatorioNAT_TIPO.AsString;
end;

end.
