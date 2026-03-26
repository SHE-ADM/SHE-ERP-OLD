unit qcob_rom_ref;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg;

type
  Tqrpcob_rom_ref = class(TQuickRep)
    IBTra: TIBTransaction;
    tSHEILD: TIBTransaction;
    consulta_s: TIBQuery;
    consulta: TIBQuery;
    relatorio: TIBQuery;
    QRBand8: TQRBand;
    qrgrom_dven: TQRGroup;
    QRDBText3: TQRDBText;
    qrgrom_drep: TQRGroup;
    QRBand9: TQRBand;
    QRLabel43: TQRLabel;
    QRExpr20: TQRExpr;
    QRExpr1: TQRExpr;
    qrlsub: TQRLabel;
    QRBand10: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    relatorioID: TIntegerField;
    relatorioROM_CDOC: TIntegerField;
    relatorioROM_CDPR: TIntegerField;
    relatorioROM_CDPD: TIntegerField;
    relatorioROM_CDRO: TIntegerField;
    relatorioROM_CDRD: TIntegerField;
    relatorioROM_CDNF: TIntegerField;
    relatorioROM_CDBX: TIntegerField;
    relatorioROM_CDCX: TIntegerField;
    relatorioROM_DERO: TIBStringField;
    relatorioROM_STPD: TIBStringField;
    relatorioROM_STCO: TIBStringField;
    relatorioROM_STFI: TIBStringField;
    relatorioROM_DROM: TDateField;
    relatorioROM_HROM: TTimeField;
    relatorioROM_DBAI: TDateField;
    relatorioROM_DCAN: TDateField;
    relatorioROM_DNFS: TDateField;
    relatorioROM_DEXP: TDateField;
    relatorioROM_HEXP: TTimeField;
    relatorioROM_CEXP: TIntegerField;
    relatorioROM_CCLI: TIntegerField;
    relatorioROM_CVEN: TIntegerField;
    relatorioROM_CREP: TIntegerField;
    relatorioROM_CPAG: TIntegerField;
    relatorioROM_QTVE: TIBBCDField;
    relatorioROM_QTSP: TIBBCDField;
    relatorioROM_QTPD: TIBBCDField;
    relatorioROM_RLVE: TIntegerField;
    relatorioROM_TSDE: TIBBCDField;
    relatorioROM_TDSC: TIBStringField;
    relatorioROM_PDSC: TIBBCDField;
    relatorioROM_CDSC: TIBBCDField;
    relatorioROM_ADSC: TIBBCDField;
    relatorioROM_TCDE: TIBBCDField;
    relatorioROM_CONC: TSmallintField;
    relatorioROM_OBSE: TMemoField;
    relatorioROM_STA: TIBStringField;
    relatorioROM_COMI: TIBBCDField;
    relatorioCLI_FANT: TIBStringField;
    relatorioUSU_DUSU: TIBStringField;
    relatorioREP_FANT: TIBStringField;
    relatorioPAG_DPAG: TIBStringField;
    relatorioPRO_CART: TIBStringField;
    relatorioPRO_CPRO: TIBStringField;
    relatorioPRO_DCOR: TIBStringField;
    relatorioPRO_DUNI: TIBStringField;
    relatorioID1: TIntegerField;
    relatorioROM_ITEM: TIBStringField;
    relatorioROM_DCOR: TIBStringField;
    relatorioROM_DPRO: TIBStringField;
    relatorioROM_QTDE: TIBBCDField;
    relatorioROM_TOTA: TIBBCDField;
    QRExpr2: TQRExpr;
    canhoto: TQRBand;
    QRBand1: TQRBand;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    qrilogo: TQRImage;
    qrlraza: TQRLabel;
    qrlend1: TQRLabel;
    qrlend2: TQRLabel;
    qrlemai_site: TQRLabel;
    QRShape2: TQRShape;
    qrlfone: TQRLabel;
    QRLabel10: TQRLabel;
    qrltitulo: TQRLabel;
    QRShape1: TQRShape;
    QRLabel59: TQRLabel;
    qrldesc2: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel62: TQRLabel;
    qrlqtde2: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel73: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText25: TQRDBText;
    qrdqtde2: TQRDBText;
    qrltcde2: TQRLabel;
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
    qrlqtrl2: TQRLabel;
    QRLabel32: TQRLabel;
    qrldesc: TQRLabel;
    QRDBText42: TQRDBText;
    QRLabel46: TQRLabel;
    qrlqtde: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText24: TQRDBText;
    qrdqtde: TQRDBText;
    qrltcde: TQRLabel;
    QRLabel28: TQRLabel;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    qrlparc: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel14: TQRLabel;
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
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    qrlcli: TQRLabel;
    qrlrep: TQRLabel;
    qrlven: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape18: TQRShape;
    QRShape11: TQRShape;
    QRLabel29: TQRLabel;
    QRShape10: TQRShape;
    qrmemo1: TQRMemo;
    qrlqtrl: TQRLabel;
    relatorioROM_DPRD: TDateField;
    relatorioROM_CTNR: TIBStringField;
    relatorioROM_DEMB: TDateField;
    relatorioROM_DDES: TDateField;
    relatorioROM_CBAI: TIntegerField;
    relatorioROM_TBAI: TDateTimeField;
    relatorioROM_UPRN: TIntegerField;
    relatorioROM_PPRN: TSmallintField;
    relatorioROM_TPRN: TDateTimeField;
    relatorioROM_UNIT: TFloatField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpcob_rom_ref: Tqrpcob_rom_ref;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpcob_rom_ref.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpcob_rom_ref.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if (relatorioROM_STPD.AsString = 'DEVOLUÇÃO') or (relatorioROM_STPD.AsString = 'ABATIMENTO') or (relatorioROM_STPD.AsString = 'SERVIÇO') then
  begin
    qrlqtde.Caption    := '';
    qrdqtde.DataField  := '';
    qrlqtde2.Caption   := '';
    qrdqtde2.DataField := '';
  end;
end;

end.
