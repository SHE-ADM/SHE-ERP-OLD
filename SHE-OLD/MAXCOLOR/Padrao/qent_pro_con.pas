unit qent_pro_con;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QRCtrls, IBDatabase, IBStoredProc,
  DB, IBCustomDataSet, IBQuery, QuickRpt, math, jpeg;

type
  Tqrpent_pro_con = class(TQuickRep)
    IBTra: TIBTransaction;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    qrlcol0: TQRLabel;
    QRShape1: TQRShape;
    tSHEILD: TIBTransaction;
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
    qrlrodape: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape6: TQRShape;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    relatorio: TIBQuery;
    relatorioPRO_CDNF: TIBStringField;
    relatorioPRO_DCAD: TDateField;
    relatorioPRO_OPER: TIBStringField;
    relatorioPRO_DUSU: TIBStringField;
    relatorioID: TIntegerField;
    relatorioPRO_ITEM: TIBStringField;
    relatorioID1: TIntegerField;
    relatorioPRO_CART: TIBStringField;
    relatorioPRO_CPRO: TIBStringField;
    relatorioPRO_CCOR: TIntegerField;
    relatorioPRO_RCOR: TIBStringField;
    relatorioPRO_DCOR: TIBStringField;
    relatorioPRO_DPRO: TIBStringField;
    relatorioPRO_DUNI: TIBStringField;
    relatorioPRO_QTDE: TIBBCDField;
    relatorioPRO_CDET: TIBStringField;
    QRLabel1: TQRLabel;
    qrlpro: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel7: TQRLabel;
    QRLabel46: TQRLabel;
    QRExpr24: TQRExpr;
    relatorioPRO_QTRL: TIntegerField;
    relatorioPRO_METR: TIBBCDField;
    relatorioPRO_PESO: TIBBCDField;
    relatorioPRO_PSCN: TIBBCDField;
    qrlqtrl: TQRLabel;
    qrdqtrl: TQRDBText;
    qreqtrl: TQRExpr;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioCalcFields(DataSet: TDataSet);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpent_pro_con: Tqrpent_pro_con;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpent_pro_con.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpent_pro_con.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrlpro.Caption := relatorioPRO_CPRO.AsString;
  if relatorioPRO_DCOR.AsString <> '' then
  qrlpro.Caption := qrlpro.Caption+' '+relatorioPRO_DCOR.AsString;

  if relatorioPRO_QTRL.AsInteger = 0 then
  begin
    qrlqtrl.Caption    := '';
    qrdqtrl.DataField  := '';
    qreqtrl.Expression := '';
  end else
  begin
    qrlqtrl.Caption    := 'Peça';
    qrdqtrl.DataField  := 'PRO_QTRL';
    qreqtrl.Expression := 'SUM(relatorio.PRO_QTRL)';
  end;
end;

procedure Tqrpent_pro_con.relatorioCalcFields(DataSet: TDataSet);
begin
  if copy(relatorioPRO_DUNI.AsString,1,1) = 'M' then
  relatorioPRO_QTRL.Value := trunc(roundto((relatorioPRO_QTDE.AsFloat/relatorioPRO_METR.AsFloat),-2))
  else if copy(relatorioPRO_DUNI.AsString,1,1) = 'K' then
  relatorioPRO_QTRL.Value := trunc(roundto(relatorioPRO_QTDE.AsFloat/(relatorioPRO_PESO.AsFloat+relatorioPRO_PSCN.AsFloat),-2))
  else if (copy(relatorioPRO_DUNI.AsString,1,1) = 'P') or (copy(relatorioPRO_DUNI.AsString,1,1) = 'C') then
  relatorioPRO_QTRL.Value := 0;
end;

end.
