unit qven_con;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg;

type
  Tqrpven_con = class(TQuickRep)
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
    QRDBRichText1: TQRDBRichText;
    qrlqtde: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel8: TQRLabel;
    qrlcdnf: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel61: TQRLabel;
    qrmemo1: TQRMemo;
    QRDBText7: TQRDBText;
    qrlcdro: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    relatorioROM_DCLI: TStringField;
    relatorioROM_DUSU: TStringField;
    relatorioROM_DREP: TStringField;
    relatorioROM_OBSE: TMemoField;
    QRExpr7: TQRExpr;
    qrlqtrl: TQRLabel;
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
    relatorioROM_QUANT: TStringField;
    relatorioROM_QTRL: TIntegerField;
    qreqtrl: TQRExpr;
    relatorioROM_CDRO: TIntegerField;
    QRLabel3: TQRLabel;
    procedure relatorioCalcFields(DataSet: TDataSet);
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpven_con: Tqrpven_con;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpven_con.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpven_con.relatorioCalcFields(DataSet: TDataSet);
begin
  relatorioROM_REFE.Value  := relatorioPRO_CART.AsString+' - '+relatorioROM_DPRO.AsString;
  relatorioROM_CPRO.Value  := relatorioPRO_CPRO.AsString+' - '+relatorioROM_DCOR.AsString;
  relatorioROM_DCLI.Value  := oStrZero(relatorioROM_CCLI.AsInteger,5)+' - '+relatorioCLI_FANT.AsString;
  relatorioROM_DUSU.Value  := oStrZero(relatorioROM_CVEN.AsInteger,5)+' - '+relatorioUSU_DUSU.AsString;
  relatorioROM_DREP.Value  := oStrZero(relatorioROM_CREP.AsInteger,5)+' - '+relatorioREP_FANT.AsString;
  relatorioROM_QUANT.Value := formatfloat('#,0.00',relatorioROM_QTDE.AsFloat);

  if frmprincipal.consulta.Tag = 1 then
  relatorioROM_QUANT.Value := relatorioROM_QUANT.AsString+'/'+relatorioROM_QTRL.AsString;
end;

procedure Tqrpven_con.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  detalhe.Height := 14;
  if (relatorioPRO_COMP.AsString <> '') or (relatorioROM_DCOR.AsString <> '') then
  detalhe.Height := 30;

  if (relatorioPRO_INS1.BlobSize > 0) and (relatorioPRO_INS6.BlobSize > 0) then
  detalhe.Height := 30 else
  if (relatorioPRO_INS1.BlobSize > 0) and (relatorioPRO_INS6.BlobSize > 0) then
  detalhe.Height := 46;

  if (relatorioPRO_INS1.BlobSize > 0) and (relatorioPRO_INS8.BlobSize > 0) then
  detalhe.Height := 61;

  qrlcomp.Caption := '';
  if relatorioPRO_COMP.AsString <> '' then
  qrlcomp.Caption := 'Composição - '+relatorioPRO_COMP.AsString;

  qrldcor.Caption := '';
  if relatorioROM_DCOR.AsString <> '' then
  qrldcor.Caption := 'Cor - '+relatorioROM_DCOR.AsString;
end;

procedure Tqrpven_con.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if frmprincipal.consulta.Tag = 0 then
  begin
    qrlqtrl.Caption    := '';
    qreqtrl.Expression := '';
  end;

  if relatorioROM_CDRO.AsInteger = 0 then
  qrlcdro.Caption := '';

  if relatorioROM_CDNF.AsInteger = 0 then
  qrlcdnf.Caption := '';
end;

end.
