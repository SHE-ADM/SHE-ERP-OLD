unit qprg_con;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, DateUtils, jpeg;

type
  Tqrpprg_con = class(TQuickRep)
    TituloVenda: TQRBand;
    ItemVenda: TQRSubDetail;
    CabecalhoVenda: TQRChildBand;
    TotalVenda: TQRChildBand;
    QRBand1: TQRBand;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    ven_efe: TIBQuery;
    consulta: TIBQuery;
    IBTra: TIBTransaction;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText2: TQRDBText;
    roman: TIBQuery;
    QRExpr1: TQRExpr;
    QRExpr8: TQRExpr;
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
    romanREP_FANT: TIBStringField;
    romanPAG_DPAG: TIBStringField;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRSysData1: TQRSysData;
    romanROM_CDOC: TIntegerField;
    romanROM_CDNF: TIntegerField;
    romanROM_CDCX: TSmallintField;
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
    qrlrodape: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    qrlcli: TQRLabel;
    qrlven: TQRLabel;
    qrlrep: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRDBText9: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape4: TQRShape;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    romanROM_CDRD: TIntegerField;
    romanROM_QTSP: TIBBCDField;
    romanROM_QTPD: TIBBCDField;
    romanROM_ADSC: TIBBCDField;
    romanROM_COMI: TIBBCDField;
    QRDBText4: TQRDBText;
    ven_sum: TIBQuery;
    ven_sumPRO_CART: TIBStringField;
    ven_sumPRO_COMP: TIBStringField;
    ven_sumPRO_INS1: TBlobField;
    ven_sumPRO_INS2: TBlobField;
    ven_sumPRO_INS3: TBlobField;
    ven_sumPRO_INS4: TBlobField;
    ven_sumPRO_INS5: TBlobField;
    ven_sumPRO_INS6: TBlobField;
    ven_sumPRO_INS7: TBlobField;
    qrsubc: TQRSubDetail;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRChildBand1: TQRChildBand;
    QRChildBand2: TQRChildBand;
    QRShape6: TQRShape;
    QRBand2: TQRBand;
    QRDBImage1: TQRDBImage;
    QRDBImage2: TQRDBImage;
    QRDBImage3: TQRDBImage;
    QRDBImage4: TQRDBImage;
    QRDBImage5: TQRDBImage;
    QRDBImage6: TQRDBImage;
    QRDBImage7: TQRDBImage;
    romanUSU_DUSU: TIBStringField;
    QRDBImage8: TQRDBImage;
    ven_sumPRO_INS8: TBlobField;
    ven_efePRO_CART: TIBStringField;
    ven_efePRO_CPRO: TIBStringField;
    ven_efePRO_DCOR: TIBStringField;
    ven_efePRO_DUNI: TIBStringField;
    ven_efeROM_DUNI: TIBStringField;
    ven_efeID: TIntegerField;
    ven_efeROM_ITEM: TIBStringField;
    ven_efeROM_DCOR: TIBStringField;
    ven_efeROM_DPRO: TIBStringField;
    ven_efeROM_QTDE: TIBBCDField;
    ven_efeROM_UNIT: TFloatField;
    ven_efeROM_TOTA: TIBBCDField;
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpprg_con: Tqrpprg_con;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpprg_con.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

