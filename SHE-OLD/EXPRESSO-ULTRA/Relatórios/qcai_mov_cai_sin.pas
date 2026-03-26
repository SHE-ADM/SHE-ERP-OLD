unit qcai_mov_cai_sin;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg;

type
  Tqrpcai_mov_cai_sin = class(TQuickRep)
    QRBand8: TQRBand;
    qrdbqtde: TQRDBText;
    qrdbtcde: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel43: TQRLabel;
    QRExpr20: TQRExpr;
    QRExpr1: TQRExpr;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    IBTra: TIBTransaction;
    tSHEILD: TIBTransaction;
    consulta_s: TIBQuery;
    consulta: TIBQuery;
    relatorio: TIBQuery;
    QRLabel11: TQRLabel;
    qrdbdcli: TQRDBText;
    qrdbdrom: TQRDBText;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    relatorioID: TIntegerField;
    relatorioCAI_CCAB: TIntegerField;
    relatorioCAI_CTSR: TIntegerField;
    relatorioCAI_DESC: TIBStringField;
    relatorioCAI_DOCT: TIBStringField;
    relatorioCAI_DCAD: TDateField;
    relatorioCAI_HCAD: TTimeField;
    relatorioCAI_SANT: TIBBCDField;
    relatorioCAI_CRED: TIBBCDField;
    relatorioCAI_DEBI: TIBBCDField;
    relatorioCAI_SATU: TIBBCDField;
    relatorioCAI_CONC: TSmallintField;
    QRExpr2: TQRExpr;
    QRDBText1: TQRDBText;
    QRShape4: TQRShape;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRExpr3: TQRExpr;
    relatorioCAI_SALD: TCurrencyField;
    relatorioCAI_VENT: TCurrencyField;
    relatorioCAI_VSAI: TCurrencyField;
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
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    qrlcaixa: TQRLabel;
    procedure relatorioCalcFields(DataSet: TDataSet);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpcai_mov_cai_sin: Tqrpcai_mov_cai_sin;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpcai_mov_cai_sin.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpcai_mov_cai_sin.relatorioCalcFields(DataSet: TDataSet);
begin
  relatorioCAI_VENT.Value := relatorioCAI_CRED.AsFloat;
  relatorioCAI_VSAI.Value := relatorioCAI_DEBI.AsFloat;
  relatorioCAI_SALD.Value := relatorioCAI_VENT.AsFloat-relatorioCAI_VSAI.AsFloat;
end;

end.
