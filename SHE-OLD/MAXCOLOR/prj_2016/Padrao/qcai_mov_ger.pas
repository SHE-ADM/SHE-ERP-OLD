unit qcai_mov_ger;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg;

type
  Tqrpcai_mov_ger = class(TQuickRep)
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
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel6: TQRLabel;
    IBTra: TIBTransaction;
    tSHEILD: TIBTransaction;
    consulta_s: TIBQuery;
    consulta: TIBQuery;
    relatorio: TIBQuery;
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
    relatorioCLI_FANT: TIBStringField;
    relatorioREP_FANT: TIBStringField;
    relatorioPAG_DPAG: TIBStringField;
    QRLabel11: TQRLabel;
    qrdbstfi: TQRDBText;
    qrdbstco: TQRDBText;
    qrdbdven: TQRDBText;
    qrdbdcli: TQRDBText;
    qrdbdrom: TQRDBText;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    relatorioROM_TOTA: TCurrencyField;
    qrlid: TQRLabel;
    QRShape4: TQRShape;
    QRExpr2: TQRExpr;
    QRLabel3: TQRLabel;
    qrdbdesc: TQRDBText;
    relatorioROM_DESC: TStringField;
    qrdbtsde: TQRDBText;
    QRLabel7: TQRLabel;
    relatorioROM_QTDE: TCurrencyField;
    QRExpr3: TQRExpr;
    relatorioROM_SUBT: TCurrencyField;
    relatorioROM_COMI: TIBBCDField;
    relatorioUSU_DUSU: TIBStringField;
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
    relatorioROM_DPRD: TDateField;
    relatorioROM_CTNR: TIBStringField;
    relatorioROM_DEMB: TDateField;
    relatorioROM_DDES: TDateField;
    relatorioROM_CBAI: TIntegerField;
    relatorioROM_TBAI: TDateTimeField;
    relatorioROM_UPRN: TIntegerField;
    relatorioROM_PPRN: TSmallintField;
    relatorioROM_TPRN: TDateTimeField;
    relatorioROM_VFRT: TIBBCDField;
    relatorioROM_DTRA: TIBStringField;
    procedure relatorioCalcFields(DataSet: TDataSet);
    procedure QRBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpcai_mov_ger: Tqrpcai_mov_ger;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpcai_mov_ger.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpcai_mov_ger.relatorioCalcFields(DataSet: TDataSet);
begin
  relatorioROM_SUBT.Value := 0;
  relatorioROM_TOTA.Value := 0;
  relatorioROM_QTDE.Value := 0;
  if relatorioROM_STFI.AsString <> 'CANCELADO' then
  begin
    relatorioROM_SUBT.Value := relatorioROM_TSDE.AsFloat;
    relatorioROM_TOTA.Value := relatorioROM_TCDE.AsFloat;
    relatorioROM_QTDE.Value := relatorioROM_QTVE.AsFloat;
  end;
end;

procedure Tqrpcai_mov_ger.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrlid.Caption := relatorioROM_DERO.AsString;
  if relatorioROM_CONC.AsInteger > 1 then
  qrlid.Caption := relatorioID.AsString+relatorioROM_CONC.AsString;

  if not relatorio.Fields[0].IsNull then
  begin
    relatorioROM_DESC.Value := formatfloat('#,0.00########',relatorioROM_PDSC.AsFloat);
    if relatorioROM_CDSC.AsFloat > 0 then
       relatorioROM_DESC.Value := relatorioROM_DESC.AsString+'+'+formatfloat('#,0.00########',relatorioROM_CDSC.AsFloat);
  end;

  qrlid.Font.Style    := [];
  qrdbdrom.Font.Style := [];
  qrdbdcli.Font.Style := [];
  qrdbdven.Font.Style := [];
  qrdbstco.Font.Style := [];
  qrdbstfi.Font.Style := [];
  qrdbqtde.Font.Style := [];
  qrdbtsde.Font.Style := [];
  qrdbdesc.Font.Style := [];
  qrdbtcde.Font.Style := [];

  if relatorioROM_STFI.AsString = 'CANCELADO' then
  begin
    qrlid.Font.Style    := [fsbold];
    qrdbdrom.Font.Style := [fsbold];
    qrdbdcli.Font.Style := [fsbold];
    qrdbdven.Font.Style := [fsbold];
    qrdbstco.Font.Style := [fsbold];
    qrdbstfi.Font.Style := [fsbold];
    qrdbqtde.Font.Style := [fsbold];
    qrdbtsde.Font.Style := [fsbold];
    qrdbdesc.Font.Style := [fsbold];
    qrdbtcde.Font.Style := [fsbold];
  end;
end;

end.
