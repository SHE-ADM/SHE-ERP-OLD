unit qcob_rom;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, DateUtils, jpeg;

type
  Tqrpcob_rom = class(TQuickRep)
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
    romanID: TIntegerField;
    romanROM_CDPD: TIntegerField;
    romanROM_CDPR: TIntegerField;
    romanROM_CDRO: TIntegerField;
    romanROM_CDBX: TIntegerField;
    romanROM_DERO: TIBStringField;
    romanROM_STPD: TIBStringField;
    romanROM_STCO: TIBStringField;
    romanROM_STFI: TIBStringField;
    romanROM_DROM: TDateField;
    romanROM_DBAI: TDateField;
    romanROM_DCAN: TDateField;
    romanROM_CCLI: TIntegerField;
    romanROM_CVEN: TIntegerField;
    romanROM_CREP: TIntegerField;
    romanROM_CPAG: TIntegerField;
    romanROM_TSDE: TIBBCDField;
    romanROM_TDSC: TIBStringField;
    romanROM_TCDE: TIBBCDField;
    romanROM_CONC: TSmallintField;
    romanROM_PDSC: TIBBCDField;
    romanROM_QTVE: TIBBCDField;
    romanROM_RLVE: TIntegerField;
    romanROM_STA: TIBStringField;
    romanROM_OBSE: TMemoField;
    ven_efePRO_CART: TIBStringField;
    ven_efePRO_CPRO: TIBStringField;
    ven_efeID: TIntegerField;
    ven_efeROM_ITEM: TIBStringField;
    ven_efeROM_QTDE: TIBBCDField;
    ven_efeROM_TOTA: TIBBCDField;
    romanCLI_FANT: TIBStringField;
    romanREP_FANT: TIBStringField;
    romanPAG_DPAG: TIBStringField;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    ven_efePRO_DCOR: TIBStringField;
    romanROM_CDOC: TIntegerField;
    romanROM_CDNF: TIntegerField;
    romanROM_CDCX: TSmallintField;
    romanROM_HROM: TTimeField;
    romanROM_DNFS: TDateField;
    romanROM_DEXP: TDateField;
    romanROM_HEXP: TTimeField;
    romanROM_CEXP: TIntegerField;
    romanROM_CDSC: TIBBCDField;
    ven_efePRO_DUNI: TIBStringField;
    QRDBText8: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel32: TQRLabel;
    qrldesc: TQRLabel;
    QRDBText42: TQRDBText;
    QRLabel46: TQRLabel;
    qrlqtde: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel22: TQRLabel;
    canhoto: TQRBand;
    QRLabel59: TQRLabel;
    qrldesc2: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel62: TQRLabel;
    qrlqtde2: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel73: TQRLabel;
    romanROM_DESC: TStringField;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText17: TQRDBText;
    ven_efeROM_DPRO: TIBStringField;
    QRLabel11: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText25: TQRDBText;
    ven_efeROM_DCOR: TIBStringField;
    romanROM_CDRD: TIntegerField;
    romanROM_QTSP: TIBBCDField;
    romanROM_QTPD: TIBBCDField;
    romanROM_ADSC: TIBBCDField;
    romanROM_COMI: TIBBCDField;
    romanUSU_DUSU: TIBStringField;
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
    QRLabel3: TQRLabel;
    qrltitulo: TQRLabel;
    QRShape1: TQRShape;
    qrdqtde: TQRDBText;
    QRDBText10: TQRDBText;
    qrdqtde2: TQRDBText;
    QRDBText19: TQRDBText;
    QRShape20: TQRShape;
    QRDBRichText2: TQRDBRichText;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    qrlcli2: TQRLabel;
    qrlrep2: TQRLabel;
    QRLabel72: TQRLabel;
    qrlven2: TQRLabel;
    QRLabel69: TQRLabel;
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
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    qrmemo2: TQRMemo;
    QRShape19: TQRShape;
    QRSysData2: TQRSysData;
    qrlrodape2: TQRLabel;
    qrlparc2: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel57: TQRLabel;
    qrlpag2: TQRLabel;
    qrlpagina2: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape27: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel28: TQRLabel;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    qrlparc: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel13: TQRLabel;
    qrlpag: TQRLabel;
    qrlpagina: TQRLabel;
    QRShape6: TQRShape;
    QRShape24: TQRShape;
    QRLabel31: TQRLabel;
    QRShape25: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
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
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    qrlcli: TQRLabel;
    qrlrep: TQRLabel;
    qrlven: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape18: TQRShape;
    QRShape11: TQRShape;
    QRLabel29: TQRLabel;
    QRShape10: TQRShape;
    qrmemo1: TQRMemo;
    QRDBText7: TQRDBText;
    QRDBText11: TQRDBText;
    ven_efeROM_UNIT: TFloatField;
    ven_efeROM_DUNI: TIBStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure romanCalcFields(DataSet: TDataSet);
  private

  public
     procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpcob_rom: Tqrpcob_rom;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpcob_rom.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpcob_rom.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if (romanROM_STPD.AsString = 'DEVOLUÇÃO') or (romanROM_STPD.AsString = 'ABATIMENTO') or (romanROM_STPD.AsString = 'SERVIÇO') then
  begin
    qrlqtde.Caption    := '';
    qrdqtde.DataField  := '';
    qrlqtde2.Caption   := '';
    qrdqtde2.DataField := '';
  end;

  if frmprincipal.parametrosPAR_CANH.AsString = '0' then
     canhoto.Height := 0;
end;

procedure Tqrpcob_rom.romanCalcFields(DataSet: TDataSet);
begin
  romanROM_DESC.Value := formatfloat('#,0.00########',romanROM_PDSC.AsFloat);
  if romanROM_CDSC.AsFloat > 0 then
     romanROM_DESC.Value := romanROM_DESC.AsString+'+'+formatfloat('#,0.00########',romanROM_CDSC.AsFloat);
end;

end.

