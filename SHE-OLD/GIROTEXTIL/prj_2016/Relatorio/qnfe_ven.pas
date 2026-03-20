unit qnfe_ven;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, jpeg, IBDatabase;

type
  Tqrpnfe_ven = class(TQuickRep)
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
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
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
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    procedure QRBand9BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpnfe_ven: Tqrpnfe_ven;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpnfe_ven.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpnfe_ven.QRBand9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrltot.Caption := 'Total '+relatorioNAT_TIPO.AsString;
end;

end.
