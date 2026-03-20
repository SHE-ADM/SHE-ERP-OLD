unit qfin_rec_ger;

interface

uses
  oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg, math, StrUtils;

type
  Tqrpfin_rec_ger = class(TQuickRep)
    QConsulta: TIBQuery;
    QRBDetalhe: TQRBand;
    QRDIDCD: TQRDBText;
    QRDVDUP: TQRDBText;
    QRBColuna: TQRBand;
    QRLNDUP: TQRLabel;
    QRLDECD: TQRLabel;
    Relatorio: TIBQuery;
    QRDNDUP: TQRDBText;
    QRLVDUP: TQRLabel;
    QRBTotal: TQRBand;
    QRETotal: TQRExpr;
    QRLTotal: TQRLabel;
    QRECount: TQRExpr;
    QRLCount: TQRLabel;
    TCadastro: TIBTransaction;
    QRDDTVC: TQRDBText;
    QRLDTVC: TQRLabel;
    QRLDTFA: TQRLabel;
    QRLDECV: TQRLabel;
    QRLDECR: TQRLabel;
    QRDDECV: TQRDBText;
    QRDDECR: TQRDBText;
    QRDDTFA: TQRDBText;
    QRSTotal: TQRShape;
    QRDDECD: TQRDBText;
    QRBCabecalho: TQRBand;
    QRIEmpresa: TQRImage;
    QRLDEST: TQRLabel;
    QRDDEST: TQRDBText;
    QRLDTPG: TQRLabel;
    QRDDTPG: TQRDBText;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltros: TQRLabel;
    QRLRodapeDispositivo: TQRLabel;
    QRLSubTitulo: TQRLabel;
    QRSColuna: TQRShape;
    QRLRECO: TQRLabel;
    QRDRECO: TQRDBText;
    RelatorioNDUP: TIBStringField;
    RelatorioSTPD: TIBStringField;
    RelatorioRECO: TIBStringField;
    RelatorioIDCD: TIntegerField;
    RelatorioDECD: TIBStringField;
    RelatorioDECV: TIBStringField;
    RelatorioDECR: TIBStringField;
    RelatorioDTFA: TDateField;
    RelatorioDTVC: TDateField;
    RelatorioDTPG: TDateField;
    RelatorioDTBX: TDateField;
    RelatorioDEST: TIBStringField;
    RelatorioVDUP: TIBBCDField;
    RelatorioWD_NDUP: TIntegerField;
    RelatorioWD_VDUP: TIntegerField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure RelatorioAfterOpen(DataSet: TDataSet);
  private

  public
  end;

var
  qrpfin_rec_ger: Tqrpfin_rec_ger;

implementation

uses prelatorio_geral;

{$R *.DFM}

procedure Tqrpfin_rec_ger.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if FrmRelatorio_Geral.PETPCO.Text <> 'SIM' then
  begin
    QRLRECO.Enabled := False;
    QRDRECO.Enabled := False;
  end;


  { Cliente }
  QRLDECD.Width := (230 + IFThen(QRLDTPG.Enabled,0,QRLDTPG.Width)) - ((QRLNDUP.Width-QRLNDUP.Tag) + (QRLVDUP.Width-QRLVDUP.Tag)); { WD ORIG + WD DTPG }
  QRDDECD.Width := (198 + IFThen(QRLDTPG.Enabled,0,QRLDTPG.Width)) - ((QRLNDUP.Width-QRLNDUP.Tag) + (QRLVDUP.Width-QRLVDUP.Tag));

  { Label }
  QRLDECV.Left := QRLDECD.Width + 1;
  QRLDECR.Left := QRLDECV.Width + QRLDECV.Left + 0;
  QRLNDUP.Left := QRLDECR.Width + QRLDECR.Left + 1;
  QRLVDUP.Left := QRLNDUP.Width + QRLNDUP.Left + 1;
  QRLDTFA.Left := QRLVDUP.Width + QRLVDUP.Left + 5;
  QRLDTVC.Left := QRLDTFA.Width + QRLDTFA.Left + 0;
  QRLDTPG.Left := QRLDTVC.Left;

  if QRLDTPG.Enabled then
  QRLDTPG.Left := QRLDTVC.Width + QRLDTVC.Left + 0;
  QRLRECO.Left := QRLDTPG.Width + QRLDTPG.Left + 1;
  QRLDEST.Left := QRLRECO.Width + QRLRECO.Left + 3;

  { DataSet }
  QRDDECV.Left := QRLDECV.Left;
  QRDDECR.Left := QRLDECR.Left;
  QRDNDUP.Left := QRLNDUP.Left;
  QRDVDUP.Left := QRLVDUP.Left;
  QRDDTFA.Left := QRLDTFA.Left;
  QRDDTVC.Left := QRLDTVC.Left;
  QRDDTPG.Left := QRLDTPG.Left;
  QRDRECO.Left := QRLRECO.Left;
  QRDDEST.Left := QRLDEST.Left;
end;

procedure Tqrpfin_rec_ger.RelatorioAfterOpen(DataSet: TDataSet);
begin
  { WD NDUP }
  if Relatorio.Locate('WD_NDUP',75,[]) then
  begin
    QRLNDUP.Width := RelatorioWD_NDUP.AsInteger;
    QRDNDUP.Width := RelatorioWD_NDUP.AsInteger;
  end else
  if Relatorio.Locate('WD_NDUP',70,[]) then
  begin
    QRLNDUP.Width := RelatorioWD_NDUP.AsInteger;
    QRDNDUP.Width := RelatorioWD_NDUP.AsInteger;
  end else
  if Relatorio.Locate('WD_NDUP',65,[]) then
  begin
    QRLNDUP.Width := RelatorioWD_NDUP.AsInteger;
    QRDNDUP.Width := RelatorioWD_NDUP.AsInteger;
  end else
  if Relatorio.Locate('WD_NDUP',60,[]) then
  begin
    QRLNDUP.Width := RelatorioWD_NDUP.AsInteger;
    QRDNDUP.Width := RelatorioWD_NDUP.AsInteger;
  end else
  if Relatorio.Locate('WD_NDUP',57,[]) then
  begin
    QRLNDUP.Width := RelatorioWD_NDUP.AsInteger;
    QRDNDUP.Width := RelatorioWD_NDUP.AsInteger;
  end else
  if Relatorio.Locate('WD_NDUP',52,[]) then
  begin
    QRLNDUP.Width := RelatorioWD_NDUP.AsInteger;
    QRDNDUP.Width := RelatorioWD_NDUP.AsInteger;
  end else
  if Relatorio.Locate('WD_NDUP',47,[]) then
  begin
    QRLNDUP.Width := RelatorioWD_NDUP.AsInteger;
    QRDNDUP.Width := RelatorioWD_NDUP.AsInteger;
  end;

  { WD VDUP }
  if Relatorio.Locate('WD_VDUP',65,[]) then
  begin
    QRLVDUP.Width := RelatorioWD_VDUP.AsInteger;
    QRDVDUP.Width := RelatorioWD_VDUP.AsInteger;
  end else
  if Relatorio.Locate('WD_VDUP',60,[]) then
  begin
    QRLVDUP.Width := RelatorioWD_VDUP.AsInteger;
    QRDVDUP.Width := RelatorioWD_VDUP.AsInteger;
  end else
  if Relatorio.Locate('WD_VDUP',55,[]) then
  begin
    QRLVDUP.Width := RelatorioWD_VDUP.AsInteger;
    QRDVDUP.Width := RelatorioWD_VDUP.AsInteger;
  end else
  if Relatorio.Locate('WD_VDUP',50,[]) then
  begin
    QRLVDUP.Width := RelatorioWD_VDUP.AsInteger;
    QRDVDUP.Width := RelatorioWD_VDUP.AsInteger;
  end;
end;

end.
