unit qcob_ped_oca;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg, math;

type
  Tqrpcob_ped_oca = class(TQuickRep)
    IBTra: TIBTransaction;
    tSHEILD: TIBTransaction;
    consulta_s: TIBQuery;
    consulta: TIBQuery;
    relatorio: TIBQuery;
    QRBand8: TQRBand;
    QRDBText3: TQRDBText;
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
    QRShape10: TQRShape;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    qrlparc: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRDBText23: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    qrlcli: TQRLabel;
    qrlrep: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel29: TQRLabel;
    qrlven: TQRLabel;
    QRLabel61: TQRLabel;
    qrlpag: TQRLabel;
    qrlpagina: TQRLabel;
    QRShape6: TQRShape;
    QRLabel26: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText24: TQRDBText;
    QRExpr2: TQRExpr;
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
    relatorioROM_DPRD: TDateField;
    relatorioROM_CTNR: TIBStringField;
    relatorioROM_DEMB: TDateField;
    relatorioROM_DDES: TDateField;
    relatorioQTDE: TCurrencyField;
    relatorioTOTA: TCurrencyField;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel3: TQRLabel;
    QRExpr5: TQRExpr;
    relatorioROM_QTPD1: TIBBCDField;
    QRLabel11: TQRLabel;
    QRExpr6: TQRExpr;
    QRLabel12: TQRLabel;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
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
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    relatorioROM_CBAI: TIntegerField;
    relatorioROM_TBAI: TDateTimeField;
    relatorioROM_UPRN: TIntegerField;
    relatorioROM_PPRN: TSmallintField;
    relatorioROM_TPRN: TDateTimeField;
    relatorioROM_UNIT: TFloatField;
    procedure relatorioCalcFields(DataSet: TDataSet);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpcob_ped_oca: Tqrpcob_ped_oca;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpcob_ped_oca.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpcob_ped_oca.relatorioCalcFields(DataSet: TDataSet);
begin
  relatorioQTDE.Value := relatorioROM_QTDE.AsFloat;
  if relatorioROM_QTPD1.AsFloat > 0 then
  relatorioQTDE.Value := relatorioROM_QTPD1.AsFloat;

  relatorioTOTA.Value := roundto(relatorioROM_QTPD1.AsFloat*relatorioROM_UNIT.AsFloat,-2);
end;

end.
