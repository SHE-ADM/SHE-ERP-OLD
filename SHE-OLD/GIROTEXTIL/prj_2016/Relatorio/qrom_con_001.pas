unit qrom_con_001;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg, math;

type
  Tqrprom_con_001 = class(TQuickRep)
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
    IBTra: TIBTransaction;
    relatorio: TIBQuery;
    consulta: TIBQuery;
    QRBand8: TQRBand;
    qrpcab: TQRGroup;
    qrdbdrep: TQRDBText;
    qrpsub: TQRGroup;
    QRBand9: TQRBand;
    QRExpr20: TQRExpr;
    qrlvend: TQRLabel;
    QRExpr1: TQRExpr;
    PageFooterBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRExpr4: TQRExpr;
    relatorioID: TIntegerField;
    relatorioROM_DERO: TIBStringField;
    relatorioROM_CDNF: TIntegerField;
    relatorioROM_DROM: TDateField;
    relatorioROM_DNFS: TDateField;
    relatorioROM_CONC: TSmallintField;
    relatorioROM_TCDE: TIBBCDField;
    relatorioROM_TSDE: TIBBCDField;
    relatorioROM_STCO: TIBStringField;
    relatorioROM_CPAG: TIntegerField;
    relatorioPAG_DPAG: TIBStringField;
    relatorioROM_CVEN: TIntegerField;
    relatorioUSU_DUSU: TIBStringField;
    relatorioROM_CREP: TIntegerField;
    relatorioREP_FANT: TIBStringField;
    relatorioROM_CCLI: TIntegerField;
    relatorioCLI_FANT: TIBStringField;
    relatorioCLI_RAZA: TIBStringField;
    relatorioROM_CDET: TIBStringField;
    relatorioROM_ITEM: TIBStringField;
    relatorioPRO_CART: TIBStringField;
    relatorioPRO_CPRO: TIBStringField;
    relatorioROM_DCOR: TIBStringField;
    relatorioROM_DPRO: TIBStringField;
    relatorioROM_DUNI: TIBStringField;
    relatorioUNI_DUNI: TIBStringField;
    relatorioROM_QTDE: TIBBCDField;
    relatorioROM_QTPD: TIBBCDField;
    relatorioROM_UNIT: TFloatField;
    relatorioROM_TOTA: TIBBCDField;
    QRDBText2: TQRDBText;
    relatorioROM_UNID: TStringField;
    QRDBText5: TQRDBText;
    qrlsubt: TQRLabel;
    qrltota: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    relatorioROM_REFE: TStringField;
    relatorioROM_CPRO: TStringField;
    QRExpr5: TQRExpr;
    qrlsubp: TQRLabel;
    qrltotp: TQRLabel;
    relatorioPRO_COMP: TIBStringField;
    QRDBText4: TQRDBText;
    relatorioPRO_INS1: TBlobField;
    relatorioPRO_INS2: TBlobField;
    relatorioPRO_INS3: TBlobField;
    relatorioPRO_INS4: TBlobField;
    relatorioPRO_INS5: TBlobField;
    relatorioPRO_INS6: TBlobField;
    relatorioPRO_INS7: TBlobField;
    relatorioPRO_INS8: TBlobField;
    QRShape12: TQRShape;
    QRShape4: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape5: TQRShape;
    QRBand10: TQRBand;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    qrlqtde: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape18: TQRShape;
    QRLabel31: TQRLabel;
    QRShape25: TQRShape;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    relatorioROM_DCLI: TStringField;
    relatorioROM_DUSU: TStringField;
    relatorioROM_DREP: TStringField;
    relatorioROM_OBSE: TMemoField;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBImage1: TQRDBImage;
    QRDBImage2: TQRDBImage;
    QRDBImage3: TQRDBImage;
    QRDBImage4: TQRDBImage;
    QRDBImage5: TQRDBImage;
    QRDBImage7: TQRDBImage;
    QRDBImage6: TQRDBImage;
    QRDBImage8: TQRDBImage;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape8: TQRShape;
    relatorioPRO_METR: TIBBCDField;
    relatorioPRO_PESO: TIBBCDField;
    relatorioPRO_PSCN: TIBBCDField;
    relatorioRPED: TIntegerField;
    QRExpr8: TQRExpr;
    procedure relatorioCalcFields(DataSet: TDataSet);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrprom_con_001: Tqrprom_con_001;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrprom_con_001.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrprom_con_001.relatorioCalcFields(DataSet: TDataSet);
var
  rped: integer;
begin
  relatorioROM_REFE.Value := relatorioPRO_CART.AsString+' - '+relatorioROM_DPRO.AsString;
  relatorioROM_CPRO.Value := relatorioPRO_CPRO.AsString+' - '+relatorioROM_DCOR.AsString;
  relatorioROM_DCLI.Value := oStrZero(relatorioROM_CCLI.AsInteger,5)+' - '+relatorioCLI_FANT.AsString;
  relatorioROM_DUSU.Value := oStrZero(relatorioROM_CVEN.AsInteger,5)+' - '+relatorioUSU_DUSU.AsString;
  relatorioROM_DREP.Value := oStrZero(relatorioROM_CREP.AsInteger,5)+' - '+relatorioREP_FANT.AsString;
  relatorioROM_UNID.Value := relatorioROM_DUNI.AsString+' - '+relatorioUNI_DUNI.AsString;

  rped := 0;
  if frmprincipal.parametrosPAR_PECA.AsString <> '1' then
  begin
    if (copy(relatorioROM_DUNI.AsString,1,1) = 'M') and (relatorioPRO_METR.AsFloat > 0 ) then
    rped := trunc(roundto((relatorioROM_QTDE.AsFloat/relatorioPRO_METR.AsFloat),-2)) else
    if (copy(relatorioROM_DUNI.AsString,1,1) = 'K') and (relatorioPRO_PESO.AsFloat > 0 ) then
    rped := trunc(roundto(relatorioROM_QTDE.AsFloat/(relatorioPRO_PESO.AsFloat+relatorioPRO_PSCN.AsFloat),-2)) else
    if (copy(relatorioROM_DUNI.AsString,1,1) = 'P') or (copy(relatorioROM_DUNI.AsString,1,1) = 'C') then
    rped := trunc(relatorioROM_QTDE.AsFloat);
  end else
  rped := 1;

  relatorioRPED.Value := rped;
end;

end.
