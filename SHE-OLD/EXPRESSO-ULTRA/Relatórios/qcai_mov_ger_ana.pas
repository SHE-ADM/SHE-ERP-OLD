unit qcai_mov_ger_ana;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg;

type
  Tqrpcai_mov_ger_ana = class(TQuickRep)
    IBTra: TIBTransaction;
    tSHEILD: TIBTransaction;
    consulta_s: TIBQuery;
    consulta: TIBQuery;
    relatorio: TIBQuery;
    QRBand8: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    qrgrom_dven: TQRGroup;
    QRDBText3: TQRDBText;
    qrgrom_drep: TQRGroup;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRBand9: TQRBand;
    QRLabel43: TQRLabel;
    QRExpr20: TQRExpr;
    QRExpr1: TQRExpr;
    qrlsub: TQRLabel;
    QRBand10: TQRBand;
    QRLabel46: TQRLabel;
    QRExpr24: TQRExpr;
    QRExpr3: TQRExpr;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
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
    QRLabel10: TQRLabel;
    qrltitulo: TQRLabel;
    QRShape1: TQRShape;
    relatorioROM_DERO: TIBStringField;
    relatorioROM_DROM: TDateField;
    relatorioROM_CONC: TSmallintField;
    relatorioROM_STCO: TIBStringField;
    relatorioROM_STPD: TIBStringField;
    relatorioROM_STFI: TIBStringField;
    relatorioCLI_FANT: TIBStringField;
    relatorioUSU_DUSU: TIBStringField;
    relatorioREP_FANT: TIBStringField;
    relatorioROM_VALO: TIBBCDField;
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpcai_mov_ger_ana: Tqrpcai_mov_ger_ana;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpcai_mov_ger_ana.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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
