unit qfin_rec_ger_consolidado;

interface

uses
  oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg, math, StrUtils;

type
  Tqrpfin_rec_ger_consolidado = class(TQuickRep)
    QConsulta: TIBQuery;
    QRBDetalhe: TQRBand;
    PageFooterBand1: TQRBand;
    QRDBText9: TQRDBText;
    qrlrodape: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    qrlfil: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    Relatorio: TIBQuery;
    QRDBText8: TQRDBText;
    QRLabel4: TQRLabel;
    SummaryBand1: TQRBand;
    QRExpr4: TQRExpr;
    QRLabel1: TQRLabel;
    QRExpr20: TQRExpr;
    QRLabel43: TQRLabel;
    TCadastro: TIBTransaction;
    QRShape1: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLDCAD: TQRDBText;
    QRShape5: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    RelatorioC_VALO: TFloatField;
    RelatorioFIN_CDBX: TIntegerField;
    RelatorioFIN_TIPO: TIBStringField;
    RelatorioFIN_STDO: TIBStringField;
    RelatorioFIN_CONC: TSmallintField;
    RelatorioFIN_DOCT: TIBStringField;
    RelatorioFIN_DCAD: TDateField;
    RelatorioFIN_STFI: TIBStringField;
    RelatorioCLI_FANT: TIBStringField;
    RelatorioUSU_DUSU: TIBStringField;
    RelatorioREP_FANT: TIBStringField;
    RelatorioFIN_VALO: TIBBCDField;
    RelatorioFIN_VPAG: TIBBCDField;
    RelatorioFIN_VPEN: TIBBCDField;
    RelatorioFIN_DTV1: TDateField;
    RelatorioFIN_DTV2: TDateField;
    RelatorioFIN_DTMD: TDateField;
    RelatorioFIN_CCLI: TIBStringField;
    RelatorioC_STFI: TStringField;
    RelatorioINFADCAD: TIBStringField;
    RelatorioC_DOCT: TStringField;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText2: TQRDBText;
    procedure RelatorioCalcFields(DataSet: TDataSet);
  private

  public
  end;

var
  qrpfin_rec_ger_consolidado: Tqrpfin_rec_ger_consolidado;

implementation

uses prelatorio_geral;

{$R *.DFM}

procedure Tqrpfin_rec_ger_consolidado.RelatorioCalcFields(
  DataSet: TDataSet);
begin
  RelatorioC_DOCT.Value := Trim(RelatorioFIN_DOCT.AsString+'/'+LeftStr(RelatorioFIN_STDO.AsString,1)+RightStr(RelatorioFIN_STDO.AsString,1));
  RelatorioC_VALO.Value := IFThen(LeftStr(RelatorioFIN_STFI.AsString,4) = 'PAGO',RelatorioFIN_VPAG.AsFloat,RelatorioFIN_VPEN.AsFloat);

  if FrmRelatorio_Geral.PETPCO.Text <> 'SIM' then
  RelatorioC_DOCT.Value := Trim(RelatorioFIN_DOCT.AsString);



  RelatorioC_STFI.Value := RelatorioFIN_STFI.AsString;
  if RelatorioFIN_STFI.AsString = 'PENDENTE' then
     RelatorioC_STFI.Value := IFThen(RECParametros.DTServer > RelatorioFIN_DTMD.AsDateTime,'VENCIDO','A VENCER') else
  if RelatorioFIN_STFI.AsString = 'PROTESTADO COM INSTRUMENTO' then
     RelatorioC_STFI.Value := 'PROT.C\INST.' else
  if RelatorioFIN_STFI.AsString = 'PROTESTADO COM ADVOGADO' then
     RelatorioC_STFI.Value := 'PROT.C\ADV.' else
  if RelatorioFIN_STFI.AsString = 'RECUPERAÇÃO JUDICIAL' then
     RelatorioC_STFI.Value := 'REC. JUDICIAL';
end;

end.
