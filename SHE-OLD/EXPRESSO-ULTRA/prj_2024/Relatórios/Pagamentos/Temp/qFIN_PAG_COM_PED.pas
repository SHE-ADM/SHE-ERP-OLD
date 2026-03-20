unit QFIN_PAG_COM_PED;

interface

uses oPrincipal, DB, IBSQL, QRPDFFilt, QRExport, IBDatabase,
  IBCustomDataSet, IBQuery, QuickRpt, QRCtrls, Classes, Controls, ExtCtrls,                          -
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg, QRPDFFilt, QRExport, math, strutils, IBSQL;

type
  TQRPFIN_PAG_COM_PED = class(TQuickRep)
    Relatorio: TIBQuery;
    QRBDetalhe: TQRBand;
    QRGGrupo: TQRGroup;
    QRDGRUPO: TQRDBText;
    QRGSubGrupo: TQRGroup;
    QRBTotal: TQRBand;
    QRLDocumento: TQRLabel;
    QRLData: TQRLabel;
    QRLDECD: TQRLabel;
    QRLVCOM: TQRLabel;
    QRDData: TQRDBText;
    QREDECD: TQRDBText;
    QRDPCOM: TQRDBText;
    QRDVCOM: TQRDBText;
    qrlsub: TQRLabel;
    QREVDUP: TQRExpr;
    QREVCOM: TQRExpr;
    QRLVDUP: TQRLabel;
    QRDVDUP: TQRDBText;
    QRDDocumento: TQRDBText;
    TRelatorios: TIBTransaction;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRBCabecalho: TQRBand;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    SQLRelatorios: TIBSQL;
    QRDSTPD: TQRDBText;
    QRLSTPD: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    FKRelatorio: TIBQuery;
    DTSRelatorio: TDataSource;
    TFKRelatorios: TIBTransaction;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    FKRelatorioITEM: TIntegerField;
    FKRelatorioSKU: TIBStringField;
    FKRelatorioDECP: TIBStringField;
    FKRelatorioUCOM: TIBStringField;
    FKRelatorioQTDE: TIBBCDField;
    FKRelatorioVPRC_PAD: TFloatField;
    FKRelatorioVPRC_COM: TFloatField;
    FKRelatorioPDSC: TIBBCDField;
    FKRelatorioVDSC: TIBBCDField;
    FKRelatorioTSDE: TIBBCDField;
    FKRelatorioTCDE: TIBBCDField;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    RelatorioIDPK: TLargeintField;
    RelatorioIDEP: TSmallintField;
    RelatorioDEEP: TIBStringField;
    RelatorioEP_CNPJ: TIBStringField;
    RelatorioDOCUMENTO: TIBStringField;
    RelatorioDTFA: TDateField;
    RelatorioSTPD: TIBStringField;
    RelatorioRECO: TIBStringField;
    RelatorioDECD: TIBStringField;
    RelatorioDECV: TIBStringField;
    RelatorioDECR: TIBStringField;
    RelatorioVDUP: TIBBCDField;
    RelatorioVPAG: TIBBCDField;
    RelatorioPCOM: TIBBCDField;
    RelatorioVCOM: TIBBCDField;
    QRLabel15: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText5: TQRDBText;
    FKRelatorioC_QTDE: TStringField;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    ChildBand1: TQRChildBand;
    QREPCOM: TQRExpr;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure FKRelatorioCalcFields(DataSet: TDataSet);
  private
    RECRelatorio: TRECRelatorios;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  QRPFIN_PAG_COM_PED: TQRPFIN_PAG_COM_PED;

implementation

uses uPrincipal,
  pExporta, pFIN_PAG_COM, qFIN_PAG_COM;

{$R *.DFM}

Constructor TQRPFIN_PAG_COM_PED.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TQRPFIN_PAG_COM_PED.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            { Cabeçalho }
            RECRelatorio.Titulo := 'Pagamento de Comissões de Vendas';
            oReportPageHeader(Self,RECRelatorio);
          end;

          procedure _Select;
          begin
            oOTransact(TRelatorios);
            Relatorio.Open;
          end;
begin
  with qrpFIN_PAG_COM do
  try
    _Select;
    _Report;

    if Relatorio.RecNo > 0 then
    begin
      Prepare;
      case RECRelatorio.PrintTAG of
        0: PreviewModal;
        1: Print;
        2: ExportToFilter(TQRPDFDocumentFilter.Create(PChar(FrmExporta.DELocal.Text+'\'+FrmExporta.EDArquivo.Text+'.PDF')));
        3: ExportToFilter(TQRXLSFilter.Create        (PChar(FrmExporta.DELocal.Text+'\'+FrmExporta.EDArquivo.Text+'.XLS')));
        4: ExportToFilter(TQRRTFExportFilter.Create  (PChar(FrmExporta.DELocal.Text+'\'+FrmExporta.EDArquivo.Text+'.DOC')));
      end;
    end else oException(Nil,'Registros não Encontrados !');
  finally
    WinControlFormDestroy(qrpFIN_PAG_COM);
  end;
end;

procedure TQRPFIN_PAG_COM_PED.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorios);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(QRPFIN_PAG_COM_PED);
  end;
end;

procedure TQRPFIN_PAG_COM_PED.FKRelatorioCalcFields(DataSet: TDataSet);
begin
  FKRelatorioC_QTDE.Value := FormatFloat(',##,0.00',FKRelatorioQTDE.AsFloat) + ' ' + Trim(LeftStr(FKRelatorioUCOM.AsString,2));
end;

end.
