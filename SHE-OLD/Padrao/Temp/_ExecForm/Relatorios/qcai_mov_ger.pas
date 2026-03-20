unit qcai_mov_ger;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
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
    QConsulta: TIBQuery;
    Relatorio: TIBQuery;
    RelatorioID: TIntegerField;
    RelatorioROM_CDOC: TIntegerField;
    RelatorioROM_CDPR: TIntegerField;
    RelatorioROM_CDPD: TIntegerField;
    RelatorioROM_CDRO: TIntegerField;
    RelatorioROM_CDRD: TIntegerField;
    RelatorioROM_CDNF: TIntegerField;
    RelatorioROM_CDBX: TIntegerField;
    RelatorioROM_CDCX: TIntegerField;
    RelatorioROM_DERO: TIBStringField;
    RelatorioROM_STPD: TIBStringField;
    RelatorioROM_STCO: TIBStringField;
    RelatorioROM_STFI: TIBStringField;
    RelatorioROM_DROM: TDateField;
    RelatorioROM_HROM: TTimeField;
    RelatorioROM_DBAI: TDateField;
    RelatorioROM_DCAN: TDateField;
    RelatorioROM_DNFS: TDateField;
    RelatorioROM_DEXP: TDateField;
    RelatorioROM_HEXP: TTimeField;
    RelatorioROM_CEXP: TIntegerField;
    RelatorioROM_CCLI: TIntegerField;
    RelatorioROM_CVEN: TIntegerField;
    RelatorioROM_CREP: TIntegerField;
    RelatorioROM_CPAG: TIntegerField;
    RelatorioROM_QTVE: TIBBCDField;
    RelatorioROM_QTSP: TIBBCDField;
    RelatorioROM_QTPD: TIBBCDField;
    RelatorioROM_RLVE: TIntegerField;
    RelatorioROM_TSDE: TIBBCDField;
    RelatorioROM_TDSC: TIBStringField;
    RelatorioROM_PDSC: TIBBCDField;
    RelatorioROM_CDSC: TIBBCDField;
    RelatorioROM_ADSC: TIBBCDField;
    RelatorioROM_TCDE: TIBBCDField;
    RelatorioROM_CONC: TSmallintField;
    RelatorioROM_OBSE: TMemoField;
    RelatorioROM_STA: TIBStringField;
    RelatorioCLI_FANT: TIBStringField;
    RelatorioREP_FANT: TIBStringField;
    RelatorioPAG_DPAG: TIBStringField;
    QRLabel11: TQRLabel;
    qrdbstfi: TQRDBText;
    qrdbstco: TQRDBText;
    qrdbdven: TQRDBText;
    qrdbdcli: TQRDBText;
    qrdbdrom: TQRDBText;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    RelatorioROM_TOTA: TCurrencyField;
    qrlid: TQRLabel;
    QRShape4: TQRShape;
    QRExpr2: TQRExpr;
    QRLabel3: TQRLabel;
    qrdbdesc: TQRDBText;
    RelatorioROM_DESC: TStringField;
    qrdbtsde: TQRDBText;
    QRLabel7: TQRLabel;
    RelatorioROM_QTDE: TCurrencyField;
    QRExpr3: TQRExpr;
    RelatorioROM_SUBT: TCurrencyField;
    RelatorioROM_COMI: TIBBCDField;
    RelatorioUSU_DUSU: TIBStringField;
    RelatorioROM_DPRD: TDateField;
    RelatorioROM_CTNR: TIBStringField;
    RelatorioROM_DEMB: TDateField;
    RelatorioROM_DDES: TDateField;
    RelatorioROM_CBAI: TIntegerField;
    RelatorioROM_TBAI: TDateTimeField;
    RelatorioROM_UPRN: TIntegerField;
    RelatorioROM_PPRN: TSmallintField;
    RelatorioROM_TPRN: TDateTimeField;
    RelatorioROM_VFRT: TIBBCDField;
    RelatorioROM_DTRA: TIBStringField;
    TCadastro: TIBTransaction;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure QRBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
  end;

var
  qrpcai_mov_ger: Tqrpcai_mov_ger;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpcai_mov_ger.RelatorioCalcFields(DataSet: TDataSet);
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
    relatorioROM_DESC.Value := formatfloat('#,0.00',relatorioROM_PDSC.AsFloat);
    if relatorioROM_CDSC.AsFloat > 0 then
    relatorioROM_DESC.Value := relatorioROM_DESC.AsString+'+'+formatfloat('#,0.00',relatorioROM_CDSC.AsFloat);
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
