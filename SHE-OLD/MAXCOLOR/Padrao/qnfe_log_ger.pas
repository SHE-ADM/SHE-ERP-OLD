unit qnfe_log_ger;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QRCtrls, IBDatabase, IBStoredProc,
  DB, IBCustomDataSet, IBQuery, QuickRpt, math, jpeg;

type
  Tqrpnfe_log_ger = class(TQuickRep)
    IBTra: TIBTransaction;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    qrlcol0: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText1: TQRDBText;
    QRShape1: TQRShape;
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    tSHEILD: TIBTransaction;
    relatorio: TIBQuery;
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
    QRShape4: TQRShape;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel8: TQRLabel;
    qrlfil: TQRLabel;
    qrlrodape: TQRLabel;
    QRShape5: TQRShape;
    QRLabel9: TQRLabel;
    relatorioID: TIntegerField;
    relatorioNFE_CCAB: TIntegerField;
    relatorioNFE_CDNF: TIBStringField;
    relatorioNFE_DCAD: TDateField;
    relatorioNFE_DEMI: TDateField;
    relatorioNFE_OPER: TIBStringField;
    relatorioNFE_TIPO: TIBStringField;
    relatorioNFE_DFAV: TIBStringField;
    relatorioNFE_DVEN: TIBStringField;
    relatorioNFE_DTRA: TIBStringField;
    relatorioNFE_QCOM: TIBBCDField;
    relatorioNFE_QVOL: TSmallintField;
    relatorioNFE_ESP: TIBStringField;
    relatorioNFE_PSLQ: TIBBCDField;
    relatorioNFE_PSBR: TIBBCDField;
    relatorioNFE_ENCA: TIBStringField;
    relatorioNFE_DSAI: TDateField;
    relatorioNFE_HSAI: TTimeField;
    relatorioNFE_DENT: TDateField;
    relatorioNFE_HENT: TTimeField;
    relatorioNFE_PONT: TIBBCDField;
    relatorioNFE_VALO: TIBBCDField;
    relatorioNFE_HCAD: TTimeField;
    relatorioNFE_DEMP: TIBStringField;
    relatorioNFE_OBSE: TMemoField;
    qrlhora: TQRLabel;
    qrlvol: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRExpr3: TQRExpr;
    QRLabel5: TQRLabel;
    QRLabel43: TQRLabel;
    QRExpr20: TQRExpr;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpnfe_log_ger: Tqrpnfe_log_ger;

implementation

uses p_funcoes, uPrincipal;

{$R *.DFM}

procedure Tqrpnfe_log_ger.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpnfe_log_ger.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrlhora.Caption := formatDateTime('dd/mm/yy',relatorioNFE_DCAD.AsDateTime)+' '+
                     formatDateTime('hh:mm'   ,relatorioNFE_HCAD.AsDateTime);
  qrlvol.Caption  := relatorioNFE_QVOL.AsString+' '+relatorioNFE_ESP.AsString;

  DetailBand1.Height := 14;
  if Length(relatorioNFE_OBSE.AsString) > 3 then
  DetailBand1.Height := 26;
end;

end.
