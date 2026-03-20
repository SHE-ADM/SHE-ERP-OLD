unit qnfe_inv;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, jpeg, IBDatabase;

type
  Tqrpnfe_inv = class(TQuickRep)
    QRBand8: TQRBand;
    qrbQCOM: TQRDBText;
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
    qrlfil: TQRLabel;
    qrlrodape: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel2: TQRLabel;
    qrlQCOM: TQRLabel;
    QRShape4: TQRShape;
    SummaryBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel3: TQRLabel;
    consulta: TIBQuery;
    tSHEILD: TIBTransaction;
    relatorio: TIBDataSet;
    aux: TIBQuery;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    relatorioID: TIntegerField;
    relatorioNFE_CCAB: TIntegerField;
    relatorioNFE_CDNF: TIntegerField;
    relatorioNFE_INDTOT: TIntegerField;
    relatorioNFE_CFOP: TIBStringField;
    relatorioNFE_CART: TIBStringField;
    relatorioNFE_CPROD: TIBStringField;
    relatorioNFE_CEAN: TIBStringField;
    relatorioNFE_NCM: TIBStringField;
    relatorioNFE_EXTIPI: TIBStringField;
    relatorioNFE_DCOR: TIBStringField;
    relatorioNFE_XPROD: TIBStringField;
    relatorioNFE_INFADPROD: TMemoField;
    relatorioNFE_UCOM: TIBStringField;
    relatorioNFE_QCOM: TIBBCDField;
    relatorioNFE_RCOM: TIntegerField;
    relatorioNFE_VPROD: TIBBCDField;
    relatorioNFE_VFRETE: TIBBCDField;
    relatorioNFE_VSEG: TIBBCDField;
    relatorioNFE_VDESC: TIBBCDField;
    relatorioNFE_VOUTRO: TIBBCDField;
    relatorioNFE_XLOCEMBARQ: TIBStringField;
    relatorioNFE_UFEMBARQ: TIBStringField;
    relatorioNFE_NDI: TIBStringField;
    relatorioNFE_DDI: TDateField;
    relatorioNFE_XLOCDESEMB: TIBStringField;
    relatorioNFE_UFDESEMB: TIBStringField;
    relatorioNFE_DDESEMB: TDateField;
    relatorioNFE_CEXPORTADOR: TIBStringField;
    relatorioNFE_NADICAO: TSmallintField;
    relatorioNFE_NSEQADIC: TSmallintField;
    relatorioNFE_CFABRICANTE: TIBStringField;
    relatorioNFE_VDESCDI: TIBBCDField;
    relatorioNFE_XPED: TIBStringField;
    relatorioNFE_ITEMPED: TIBStringField;
    relatorioNFE_ORIG: TIBStringField;
    relatorioNFE_CST: TIBStringField;
    relatorioNFE_MODBC: TIBStringField;
    relatorioNFE_PREDBC: TIBBCDField;
    relatorioNFE_VBC: TIBBCDField;
    relatorioNFE_PICMS: TIBBCDField;
    relatorioNFE_VICMS: TIBBCDField;
    relatorioNFE_MODBCST: TIBStringField;
    relatorioNFE_MVAST: TIBBCDField;
    relatorioNFE_PREDBCST: TIBBCDField;
    relatorioNFE_VBCST: TIBBCDField;
    relatorioNFE_VBCSTRET: TIBBCDField;
    relatorioNFE_VICMSSTRET: TIBBCDField;
    relatorioNFE_PICMSST: TIBBCDField;
    relatorioNFE_VICMSST: TIBBCDField;
    relatorioNFE_PCREDSN: TIBBCDField;
    relatorioNFE_VCREDICMSSN: TIBBCDField;
    relatorioNFE_CSTIPI: TIBStringField;
    relatorioNFE_VBCIPI: TIBBCDField;
    relatorioNFE_PIPI: TIBBCDField;
    relatorioNFE_VIPI: TIBBCDField;
    relatorioNFE_VBCIMP: TIBBCDField;
    relatorioNFE_VDESPADU: TIBBCDField;
    relatorioNFE_VIIIMP: TIBBCDField;
    relatorioNFE_VIOFIMP: TIBBCDField;
    relatorioNFE_CSTPIS: TIBStringField;
    relatorioNFE_VBCPIS: TIBBCDField;
    relatorioNFE_PPIS: TIBBCDField;
    relatorioNFE_VPIS: TIBBCDField;
    relatorioNFE_VBCPISST: TIBBCDField;
    relatorioNFE_PPISST: TIBBCDField;
    relatorioNFE_VPISST: TIBBCDField;
    relatorioNFE_CSTCOFINS: TIBStringField;
    relatorioNFE_VBCOFINS: TIBBCDField;
    relatorioNFE_PCOFINS: TIBBCDField;
    relatorioNFE_VCOFINS: TIBBCDField;
    relatorioNFE_VBCOFINSST: TIBBCDField;
    relatorioNFE_PCOFINSST: TIBBCDField;
    relatorioNFE_VCOFINSST: TIBBCDField;
    relatorioNFE_VBCISSQN: TIBBCDField;
    relatorioNFE_VALIQISSQN: TIBBCDField;
    relatorioNFE_VISSQN: TIBBCDField;
    relatorioNFE_CMUNFGISSQN: TIBStringField;
    relatorioNFE_CLISTSERV: TIntegerField;
    relatorioNFE_VNF: TIBBCDField;
    relatorioNFE_METR: TIBBCDField;
    relatorioNFE_PESO: TIBBCDField;
    relatorioNFE_REND: TIBBCDField;
    relatorioNFE_PSCN: TIBBCDField;
    relatorioNFE_PSMR: TIBBCDField;
    relatorioNFE_BIPI: TIBStringField;
    relatorioNFE_FRET: TIBStringField;
    relatorioNFE_TIPO: TIBStringField;
    relatorioNFE_REPR: TIBStringField;
    relatorioNFE_FLAG: TIBStringField;
    relatorioNFE_PREC: TIBBCDField;
    relatorioNFE_IPRO: TIntegerField;
    relatorioNFE_PSBR: TIBBCDField;
    relatorioNFE_PSLQ: TIBBCDField;
    relatorioNFE_VMULTA: TIBBCDField;
    relatorioNFE_PIMP: TIBBCDField;
    consultaNFE_NCM: TIBStringField;
    consultaNFE_TPNF: TSmallintField;
    consultaNFE_CPROD: TIBStringField;
    consultaNFE_XPROD: TIBStringField;
    consultaNFE_UCOM: TIBStringField;
    consultaNFE_QCOM: TIBBCDField;
    consultaNFE_VPROD: TIBBCDField;
    relatorioNFE_QTDE: TCurrencyField;
    relatorioNFE_TOTA: TCurrencyField;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    consultaNFE_VUNCOM: TFloatField;
    relatorioNFE_VUNCOM: TFloatField;
    procedure relatorioCalcFields(DataSet: TDataSet);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpnfe_inv: Tqrpnfe_inv;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpnfe_inv.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpnfe_inv.relatorioCalcFields(DataSet: TDataSet);
begin
  relatorioNFE_QTDE.Value := relatorioNFE_QCOM.AsFloat-relatorioNFE_VOUTRO.AsFloat;
  relatorioNFE_TOTA.Value := relatorioNFE_QTDE.AsFloat*relatorioNFE_VUNCOM.AsFloat;
end;

end.
