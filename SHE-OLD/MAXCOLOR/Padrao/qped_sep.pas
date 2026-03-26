unit qped_sep;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, DateUtils, jpeg, math;

type
  Tqrpped_sep = class(TQuickRep)
    TituloVenda: TQRBand;
    ItemVenda: TQRSubDetail;
    CabecalhoVenda: TQRChildBand;
    QRBand1: TQRBand;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    ven_efe: TIBQuery;
    consulta: TIBQuery;
    IBTra: TIBTransaction;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText39: TQRDBText;
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
    romanCLI_FANT: TIBStringField;
    romanFUN_APEL: TIBStringField;
    romanREP_FANT: TIBStringField;
    romanPAG_DPAG: TIBStringField;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    romanROM_CDOC: TIntegerField;
    romanROM_CDNF: TIntegerField;
    romanROM_HROM: TTimeField;
    romanROM_DNFS: TDateField;
    romanROM_DEXP: TDateField;
    romanROM_HEXP: TTimeField;
    romanROM_CEXP: TIntegerField;
    romanROM_CDSC: TIBBCDField;
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
    QRLabel5: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    qrlcli: TQRLabel;
    qrlven: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText7: TQRDBText;
    QRShape5: TQRShape;
    TotalVenda: TQRChildBand;
    QRExpr5: TQRExpr;
    QRSysData2: TQRSysData;
    QRShape6: TQRShape;
    QRExpr2: TQRExpr;
    QRLabel19: TQRLabel;
    QRDBText3: TQRDBText;
    romanROM_CDRD: TIntegerField;
    romanROM_CDCX: TIntegerField;
    romanROM_QTSP: TIBBCDField;
    romanROM_QTPD: TIBBCDField;
    romanROM_ADSC: TIBBCDField;
    romanROM_COMI: TIBBCDField;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    ven_efePRO_DUNI: TIBStringField;
    ven_efePRO_METR: TIBBCDField;
    ven_efePRO_CART: TIBStringField;
    ven_efePRO_CPRO: TIBStringField;
    ven_efePRO_DCOR: TIBStringField;
    ven_efeID: TIntegerField;
    ven_efeROM_ITEM: TIBStringField;
    ven_efeROM_DCOR: TIBStringField;
    ven_efeROM_DPRO: TIBStringField;
    ven_efePRO_QEST: TIBBCDField;
    ven_efePRO_REST: TIntegerField;
    ven_efePRO_QRES: TIBBCDField;
    ven_efePRO_RRES: TIntegerField;
    ven_efeROM_QTDE: TIBBCDField;
    ven_efeROM_QTRL: TIntegerField;
    ven_efeROM_UNIT: TFloatField;
    ven_efeROM_TOTA: TIBBCDField;
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpped_sep: Tqrpped_sep;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpped_sep.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

end.

