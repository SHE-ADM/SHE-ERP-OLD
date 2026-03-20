unit qrom_con_002;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg, math;

type
  Tqrprom_con_002 = class(TQuickRep)
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
    relatorioROM_UNID: TStringField;
    relatorioROM_REFE: TStringField;
    relatorioROM_CPRO: TStringField;
    relatorioPRO_COMP: TIBStringField;
    relatorioPRO_INS1: TBlobField;
    relatorioPRO_INS2: TBlobField;
    relatorioPRO_INS3: TBlobField;
    relatorioPRO_INS4: TBlobField;
    relatorioPRO_INS5: TBlobField;
    relatorioPRO_INS6: TBlobField;
    relatorioPRO_INS7: TBlobField;
    relatorioPRO_INS8: TBlobField;
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
    QRExpr7: TQRExpr;
    QRLabel11: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    detalhe: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBImage1: TQRDBImage;
    QRDBImage2: TQRDBImage;
    QRDBImage3: TQRDBImage;
    QRDBImage4: TQRDBImage;
    QRDBImage5: TQRDBImage;
    QRDBImage6: TQRDBImage;
    QRDBImage7: TQRDBImage;
    QRDBImage8: TQRDBImage;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    qrldcor: TQRLabel;
    qrlcomp: TQRLabel;
    QRExpr8: TQRExpr;
    relatorioPRO_METR: TIBBCDField;
    relatorioPRO_PESO: TIBBCDField;
    relatorioPRO_PSCN: TIBBCDField;
    relatoriorped: TIntegerField;
    procedure relatorioCalcFields(DataSet: TDataSet);
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrprom_con_002: Tqrprom_con_002;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrprom_con_002.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrprom_con_002.relatorioCalcFields(DataSet: TDataSet);
var
  rped: integer;
begin
  relatorioROM_REFE.Value := relatorioPRO_CART.AsString+' - '+relatorioROM_DPRO.AsString;
  relatorioROM_CPRO.Value := relatorioPRO_CPRO.AsString+' - '+relatorioROM_DCOR.AsString;
  relatorioROM_DCLI.Value := oStrZero(relatorioROM_CCLI.AsInteger,5)+' - '+relatorioCLI_FANT.AsString;
  relatorioROM_DUSU.Value := oStrZero(relatorioROM_CVEN.AsInteger,5)+' - '+relatorioUSU_DUSU.AsString;
  relatorioROM_DREP.Value := oStrZero(relatorioROM_CREP.AsInteger,5)+' - '+relatorioREP_FANT.AsString;

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

procedure Tqrprom_con_002.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  detalhe.Height := 14;
  if (relatorioPRO_COMP.AsString <> '') or (relatorioROM_DCOR.AsString <> '') then
  detalhe.Height := 29;

  if (relatorioPRO_INS1.BlobSize > 0) and (relatorioPRO_INS6.BlobSize = 0) then
  detalhe.Height := 42 else
  if (relatorioPRO_INS1.BlobSize > 0) and (relatorioPRO_INS6.BlobSize > 0) then
  detalhe.Height := 65 else
  if (relatorioPRO_INS1.BlobSize > 0) and (relatorioPRO_INS8.BlobSize > 0) then
  detalhe.Height := 87;

  qrlcomp.Caption := '';
  if relatorioPRO_COMP.AsString <> '' then
  qrlcomp.Caption := 'Composição - '+relatorioPRO_COMP.AsString;

  qrldcor.Caption := '';
  if relatorioROM_DCOR.AsString <> '' then
  qrldcor.Caption := 'Cor - '+relatorioROM_DCOR.AsString;
end;

end.
