unit qFIN_PAG_COM_PED;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, QRPDFFilt, QRExport, IBDatabase, IBSQL,
  math, StrUtils;

type
  TQRPFIN_PAG_COM_PED = class(TQuickRep)
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    TRelatorios: TIBTransaction;
    SQLConsulta: TIBSQL;
    Relatorio: TIBQuery;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    QRBCABECALHO: TQRBand;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRBTITULO: TQRBand;
    QRBCOLUNAS: TQRBand;
    QRGGRUPO: TQRGroup;
    QRGSUBGRUPO: TQRGroup;
    QRBDETALHES: TQRBand;
    QRBSUBTOTAL: TQRBand;
    QRBTOTAL: TQRBand;
    QRBSUMARIO: TQRBand;
    QRLPageHeaderTitulo: TQRLabel;
    QRLPageHeaderSubTitulo: TQRLabel;
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
    DTSRelatorio: TDataSource;
    FKRelatorio: TIBQuery;
    FKRelatorioITEM: TIntegerField;
    FKRelatorioSKU: TIBStringField;
    FKRelatorioUCOM: TIBStringField;
    FKRelatorioQTDE: TIBBCDField;
    FKRelatorioVPRC_PAD: TFloatField;
    FKRelatorioVPRC_COM: TFloatField;
    FKRelatorioPDSC: TIBBCDField;
    FKRelatorioVDSC: TIBBCDField;
    FKRelatorioTSDE: TIBBCDField;
    FKRelatorioTCDE: TIBBCDField;
    TConsulta: TIBTransaction;
    QRDGRUPO: TQRDBText;
    QRDDocumento: TQRDBText;
    QRDData: TQRDBText;
    QREDECD: TQRDBText;
    QRDDECV: TQRDBText;
    QRDSTPD: TQRDBText;
    QRDVDUP: TQRDBText;
    QRDVCOM: TQRDBText;
    QRDPCOM: TQRDBText;
    QRLPEDIDOS: TQRLabel;
    FKRelatorioDECP: TIBStringField;
    QRLITEM: TQRLabel;
    QRLSKU: TQRLabel;
    QRLPRODUTO: TQRLabel;
    QRLQTDE: TQRLabel;
    QRLVPRC_PAD: TQRLabel;
    QRLVPRC_COM: TQRLabel;
    QRLVDSC: TQRLabel;
    QRLPDSC: TQRLabel;
    QRLTSDE: TQRLabel;
    QRLTCDE: TQRLabel;
    QRBSUBDETALHES: TQRSubDetail;
    QRDITEM: TQRDBText;
    QRDSKU: TQRDBText;
    QRDPRODUTO: TQRDBText;
    QRDQTDE: TQRDBText;
    QRDVPRC_PAD: TQRDBText;
    QRDVPRC_COM: TQRDBText;
    QRDVDSC: TQRDBText;
    QRDPDSC: TQRDBText;
    QRDTSDE: TQRDBText;
    QRDTCDE: TQRDBText;
    QRLDocumento: TQRLabel;
    QRLDATA: TQRLabel;
    QRLDECD: TQRLabel;
    QRLDECV: TQRLabel;
    QRLSTPD: TQRLabel;
    QRLVDUP: TQRLabel;
    QRLTDUP: TQRLabel;
    QRLTCOM2: TQRLabel;
    QRLVCOM: TQRLabel;
    QRLPCOM: TQRLabel;
    QRLTCOM: TQRLabel;
    QRSDETALHES2: TQRShape;
    QRLDEPK: TQRLabel;
    QRSDETALHES: TQRShape;
    QREITEM: TQRExpr;
    QREVDUP: TQRExpr;
    QREVCOM: TQRExpr;
    QRBRODAPE: TQRBand;
    QRLPageFooterFiltros: TQRLabel;
    QRLPageFooterLogin: TQRLabel;
    QRSPageFooterPagina: TQRSysData;
    QRLPageFooterHost: TQRLabel;
    FKRelatorioC_QTDE: TStringField;
    QRDDEST: TQRDBText;
    RelatorioDEST: TIBStringField;
    QRLDEST: TQRLabel;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure FKRelatorioCalcFields(DataSet: TDataSet);
  private
    RECRelatorio: TRECRelatorios;

    procedure _Report;
    procedure _Select;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  QRPFIN_PAG_COM_PED: TQRPFIN_PAG_COM_PED;

implementation

{$R *.DFM}

Constructor TQRPFIN_PAG_COM_PED.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TQRPFIN_PAG_COM_PED.WinControlFormCreate(Sender: TObject);
begin
  with QRPFIN_PAG_COM_PED do
    try
      _Select;
      _Report;

      if Relatorio.RecNo > 0 then
      begin
        Prepare;
        case RECRelatorio.PrintTAG of
          0: PreviewModal;
          1: Print;
        //  2: ExportToFilter(TQRPDFDocumentFilter.Create(PChar(oVER_DIR('C:\Sheild\Documentos\Ficha Técnica')        + '\' + RelatorioARTIGO.AsString + '.PDF')));
//          3: ExportToFilter(TQRXLSFilter.Create        (PChar(FrmExporta.DELocal.Text+'\'+FrmExporta.EDArquivo.Text + '.XLS')));
  //        4: ExportToFilter(TQRRTFExportFilter.Create  (PChar(FrmExporta.DELocal.Text+'\'+FrmExporta.EDArquivo.Text + '.DOC')));
        end;
      end else oException(Nil,'Registros não Encontrados !');
    finally
      WinControlFormDestroy(QRPFIN_PAG_COM_PED);
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

procedure TQRPFIN_PAG_COM_PED._Select;
begin
  QRDGRUPO.DataField     := RECRelatorio.ConsultaField;
  QRGGRUPO.Expression    := 'relatorio.' + RECRelatorio.ConsultaField;
  QRGSUBGRUPO.Expression := 'relatorio.' + RECRelatorio.ConsultaField;

  QRLDATA.Caption    := RECRelatorio.IEDataCaption;
  QRDDATA.DataField  := IFThen(RECRelatorio.IEDataField = 'FIN_DCAD','DTFA','DTPG');

  QRLTDUP.Caption    := IFThen(RECRelatorio.IEDataField = 'FIN_DCAD','Total Faturado','Total Pago');
  QRDVDUP.DataField  := IFThen(RECRelatorio.IEDataField = 'FIN_DCAD','VDUP','VPAG');
  QREVDUP.Expression := IFThen(RECRelatorio.IEDataField = 'FIN_DCAD','SUM(Relatorio.VDUP)','SUM(Relatorio.VPAG)');

  RECRelatorio.RodapeFiltros := RECRelatorio.ConsultaCaption + ' ' + RECRelatorio.ConsultaText + ' ' + RECRelatorio.SubTitulo + ' entre ' + FormatDateTime('dd.mm.yy',RECRelatorio.IEDataText1) + ' e ' + FormatDateTime('dd.mm.yy',RECRelatorio.IEDataText2);

  oOTransact(TRelatorios);
  Relatorio.Prepare;
  Relatorio.Open;

  oOTransact(TConsulta);
  FKRelatorio.SQL.Text := oStrTran(FKRelatorio.SQL.Text,'PED_VEN_ITE',oREPZero('VW_PED_VEN_ITE','_',RECParametros.Id,3));
  FKRelatorio.Prepare;
  FKRelatorio.Open;
end;

procedure TQRPFIN_PAG_COM_PED._Report;
begin
  { Cabeçalho }
  oReportPageHeader(Self,RECRelatorio);

  { Rodapé }
  oReportPageFooter(Self,RECRelatorio);
end;

procedure TQRPFIN_PAG_COM_PED.FKRelatorioCalcFields(DataSet: TDataSet);
begin
  FKRelatorioC_QTDE.Value := Trim(FormatFloat('#,0.00',FKRelatorioQTDE.AsFloat) + ' ' + LeftStr(FKRelatorioUCOM.AsString,2));
end;

end.
