unit qven_oca;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, DateUtils, jpeg;

type
  Tqrpven_oca = class(TQuickRep)
    TituloVenda: TQRBand;
    ItemVenda: TQRSubDetail;
    CabecalhoVenda: TQRChildBand;
    TotalVenda: TQRChildBand;
    ven_efe: TIBQuery;
    consulta: TIBQuery;
    IBTra: TIBTransaction;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    roman: TIBQuery;
    QRShape7: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    qtitulo2: TQRBand;
    qsubtitulo2: TQRChildBand;
    QRShape5: TQRShape;
    qdetalhe2: TQRSubDetail;
    qsumario2: TQRChildBand;
    qrilogo2: TQRImage;
    qrlend3: TQRLabel;
    qrlend4: TQRLabel;
    qrlemai_site2: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    qrlfone2: TQRLabel;
    qrldfone2: TQRLabel;
    qrltitulo2: TQRLabel;
    QRShape10: TQRShape;
    QRShape14: TQRShape;
    qrlraza2: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText22: TQRDBText;
    QRShape12: TQRShape;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    qrlparc: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    lavpa1: TQRLabel;
    lavpa3: TQRLabel;
    ladpa3: TQRLabel;
    lavpa5: TQRLabel;
    ladpa5: TQRLabel;
    ladpa1: TQRLabel;
    ladpa7: TQRLabel;
    lavpa7: TQRLabel;
    lavpa2: TQRLabel;
    ladpa2: TQRLabel;
    ladpa4: TQRLabel;
    lavpa4: TQRLabel;
    lavpa6: TQRLabel;
    ladpa6: TQRLabel;
    ladpa8: TQRLabel;
    lavpa8: TQRLabel;
    lavpa9: TQRLabel;
    ladpa9: TQRLabel;
    lavpa10: TQRLabel;
    ladpa10: TQRLabel;
    lanpa1: TQRLabel;
    lanpa3: TQRLabel;
    lanpa5: TQRLabel;
    lanpa7: TQRLabel;
    lanpa9: TQRLabel;
    lanpa2: TQRLabel;
    lanpa4: TQRLabel;
    lanpa6: TQRLabel;
    lanpa8: TQRLabel;
    lanpa10: TQRLabel;
    QRLabel32: TQRLabel;
    qrldesc: TQRLabel;
    QRDBText42: TQRDBText;
    QRLabel46: TQRLabel;
    qrlqtde: TQRLabel;
    qrdqtde: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    qrlcli: TQRLabel;
    qrlrep: TQRLabel;
    QRLabel15: TQRLabel;
    qrsm1: TQRShape;
    QRLabel18: TQRLabel;
    QRDBText7: TQRDBText;
    qrlven: TQRLabel;
    QRLabel61: TQRLabel;
    qrlpag: TQRLabel;
    qrlpagina: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape18: TQRShape;
    QRShape15: TQRShape;
    QRDBRichText2: TQRDBRichText;
    QRLabel59: TQRLabel;
    qrldesc2: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel62: TQRLabel;
    qrlqtde2: TQRLabel;
    qrdqtde2: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    qrlcli2: TQRLabel;
    qrlrep2: TQRLabel;
    QRShape19: TQRShape;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRDBText27: TQRDBText;
    qrlven2: TQRLabel;
    QRLabel69: TQRLabel;
    QRShape20: TQRShape;
    QRSysData2: TQRSysData;
    qrlrodape2: TQRLabel;
    qrlparc2: TQRLabel;
    QRLabel25: TQRLabel;
    lavpa21: TQRLabel;
    lavpa23: TQRLabel;
    ladpa23: TQRLabel;
    lavpa25: TQRLabel;
    ladpa25: TQRLabel;
    ladpa21: TQRLabel;
    ladpa27: TQRLabel;
    lavpa27: TQRLabel;
    lavpa22: TQRLabel;
    ladpa22: TQRLabel;
    ladpa24: TQRLabel;
    lavpa24: TQRLabel;
    lavpa26: TQRLabel;
    ladpa26: TQRLabel;
    ladpa28: TQRLabel;
    lavpa28: TQRLabel;
    lavpa29: TQRLabel;
    ladpa29: TQRLabel;
    lavpa210: TQRLabel;
    ladpa210: TQRLabel;
    lanpa21: TQRLabel;
    lanpa23: TQRLabel;
    lanpa25: TQRLabel;
    lanpa27: TQRLabel;
    lanpa29: TQRLabel;
    lanpa22: TQRLabel;
    lanpa24: TQRLabel;
    lanpa26: TQRLabel;
    lanpa28: TQRLabel;
    lanpa210: TQRLabel;
    QRDBText28: TQRDBText;
    QRShape21: TQRShape;
    QRLabel57: TQRLabel;
    QRShape22: TQRShape;
    qrlpag2: TQRLabel;
    qrlpagina2: TQRLabel;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText32: TQRDBText;
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
    QRLabel1: TQRLabel;
    qrltitulo: TQRLabel;
    QRShape4: TQRShape;
    QRLabel28: TQRLabel;
    QRShape1: TQRShape;
    QRShape6: TQRShape;
    QRShape11: TQRShape;
    QRLabel29: TQRLabel;
    QRShape13: TQRShape;
    qrmemo1: TQRMemo;
    QRLabel30: TQRLabel;
    qrsm2: TQRShape;
    QRShape23: TQRShape;
    qrmemo2: TQRMemo;
    QRShape24: TQRShape;
    QRLabel31: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRLabel33: TQRLabel;
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
    ven_efePRO_CART: TIBStringField;
    ven_efePRO_CPRO: TIBStringField;
    ven_efePRO_DCOR: TIBStringField;
    ven_efePRO_DUNI: TIBStringField;
    ven_efeID: TIntegerField;
    ven_efeROM_ITEM: TIBStringField;
    ven_efeROM_DCOR: TIBStringField;
    ven_efeROM_DPRO: TIBStringField;
    ven_efeROM_QTDE: TIBBCDField;
    ven_efeROM_TOTA: TIBBCDField;
    romanROM_DESC: TStringField;
    ven_efeROM_UNIT: TFloatField;
    ven_efeROM_DUNI: TIBStringField;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText20: TQRDBText;
    procedure romanCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
     procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
     procedure carregaFoto2(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpven_oca: Tqrpven_oca;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpven_oca.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpven_oca.carregaFoto2(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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
    qrilogo2.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tqrpven_oca.romanCalcFields(DataSet: TDataSet);
begin
  romanROM_DESC.Value := formatfloat('#,0.00########',romanROM_PDSC.AsFloat);
  if romanROM_CDSC.AsFloat > 0 then
     romanROM_DESC.Value := romanROM_DESC.AsString+'+'+formatfloat('#,0.00########',romanROM_CDSC.AsFloat);
end;

procedure Tqrpven_oca.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if (romanROM_STPD.AsString = 'DEVOLUÇÃO') or (romanROM_STPD.AsString = 'ABATIMENTO') or (romanROM_STPD.AsString = 'SERVIÇO') then
  begin
    qrlqtde.Caption    := '';
    qrdqtde.DataField  := '';
    qrlqtde2.Caption   := '';
    qrdqtde2.DataField := '';
  end;
end;

end.

