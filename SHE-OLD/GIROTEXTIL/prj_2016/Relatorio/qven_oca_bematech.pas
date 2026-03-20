unit qven_oca_bematech;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, DateUtils, jpeg;

type
  Tqrpven_oca_bematech = class(TQuickRep)
    TituloVenda: TQRBand;
    ItemVenda: TQRSubDetail;
    CabecalhoVenda: TQRChildBand;
    TotalVenda: TQRChildBand;
    ven_efe: TIBQuery;
    consulta: TIBQuery;
    IBTra: TIBTransaction;
    roman: TIBQuery;
    QRBand1: TQRBand;
    qrilogo: TQRImage;
    qrlraza: TQRLabel;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    qrlcnpj: TQRLabel;
    QRLabel5: TQRLabel;
    qrlie: TQRLabel;
    SummaryBand1: TQRBand;
    qrltitulo: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    qrlraza2: TQRLabel;
    qrlstco: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText17: TQRDBText;
    qrldesc: TQRLabel;
    QRDBText16: TQRDBText;
    qrlend1: TQRLabel;
    qrlend2: TQRLabel;
    qrlfone: TQRLabel;
    qrlpagina: TQRLabel;
    qrlpag: TQRLabel;
    qrlcli: TQRLabel;
    qrlven: TQRLabel;
    qrlrep: TQRLabel;
    ven_efePRO_CART: TIBStringField;
    ven_efePRO_CPRO: TIBStringField;
    ven_efePRO_DCOR: TIBStringField;
    ven_efePRO_DUNI: TIBStringField;
    ven_efeID: TIntegerField;
    ven_efeROM_ITEM: TIBStringField;
    ven_efeROM_DCOR: TIBStringField;
    ven_efeROM_DPRO: TIBStringField;
    ven_efeROM_QTDE: TIBBCDField;
    ven_efeROM_UNIT: TFloatField;
    ven_efeROM_TOTA: TIBBCDField;
    romanID: TIntegerField;
    romanROM_CDOC: TIntegerField;
    romanROM_CDPR: TIntegerField;
    romanROM_CDPD: TIntegerField;
    romanROM_CDRO: TIntegerField;
    romanROM_CDRD: TIntegerField;
    romanROM_CDNF: TIntegerField;
    romanROM_CDBX: TIntegerField;
    romanROM_CDCX: TIntegerField;
    romanROM_DERO: TIBStringField;
    romanROM_STPD: TIBStringField;
    romanROM_STCO: TIBStringField;
    romanROM_STFI: TIBStringField;
    romanROM_DROM: TDateField;
    romanROM_HROM: TTimeField;
    romanROM_DBAI: TDateField;
    romanROM_DCAN: TDateField;
    romanROM_DNFS: TDateField;
    romanROM_DEXP: TDateField;
    romanROM_HEXP: TTimeField;
    romanROM_CEXP: TIntegerField;
    romanROM_CCLI: TIntegerField;
    romanROM_CVEN: TIntegerField;
    romanROM_CREP: TIntegerField;
    romanROM_CPAG: TIntegerField;
    romanROM_QTVE: TIBBCDField;
    romanROM_QTSP: TIBBCDField;
    romanROM_QTPD: TIBBCDField;
    romanROM_RLVE: TIntegerField;
    romanROM_TSDE: TIBBCDField;
    romanROM_TDSC: TIBStringField;
    romanROM_PDSC: TIBBCDField;
    romanROM_CDSC: TIBBCDField;
    romanROM_ADSC: TIBBCDField;
    romanROM_TCDE: TIBBCDField;
    romanROM_CONC: TSmallintField;
    romanROM_OBSE: TMemoField;
    romanROM_STA: TIBStringField;
    romanROM_COMI: TIBBCDField;
    romanROM_DPRD: TDateField;
    romanROM_CTNR: TIBStringField;
    romanROM_DEMB: TDateField;
    romanROM_DDES: TDateField;
    romanROM_CBAI: TIntegerField;
    romanROM_TBAI: TDateTimeField;
    romanROM_UPRN: TIntegerField;
    romanROM_PPRN: TSmallintField;
    romanROM_TPRN: TDateTimeField;
    romanCLI_FANT: TIBStringField;
    romanUSU_DUSU: TIBStringField;
    romanREP_FANT: TIBStringField;
    romanPAG_DPAG: TIBStringField;
    romanROM_DESC: TStringField;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText11: TQRDBText;
    ven_efeROM_DUNI: TIBStringField;
    procedure romanCalcFields(DataSet: TDataSet);
  private

  public
     procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpven_oca_bematech: Tqrpven_oca_bematech;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpven_oca_bematech.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpven_oca_bematech.romanCalcFields(DataSet: TDataSet);
begin
  romanROM_DESC.Value := formatfloat('#,0.00########',romanROM_PDSC.AsFloat);
  if romanROM_CDSC.AsFloat > 0 then
  romanROM_DESC.Value := romanROM_DESC.AsString+'+'+formatfloat('#,0.00########',romanROM_CDSC.AsFloat);
end;

end.

