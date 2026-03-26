unit QFIN_PAG_COM;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg, QRPDFFilt, QRExport, math, strutils, IBSQL;

type
  TQRPFIN_PAG_COM = class(TQuickRep)
    Relatorio: TIBQuery;
    QRBDetalhe: TQRBand;
    QRGGrupo: TQRGroup;
    QRDGRUPO: TQRDBText;
    QRGSubGrupo: TQRGroup;
    QRShape5: TQRShape;
    QRBTotal: TQRBand;
    TRelatorios: TIBTransaction;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRShape1: TQRShape;
    QRBTitulo: TQRBand;
    SQLRelatorios: TIBSQL;
    RelatorioID: TLargeintField;
    RelatorioIDPK: TLargeintField;
    RelatorioIDEP: TSmallintField;
    RelatorioDEEP: TIBStringField;
    RelatorioEP_CNPJ: TIBStringField;
    RelatorioDOCUMENTO: TIBStringField;
    RelatorioDTFA: TDateField;
    RelatorioSTPD: TIBStringField;
    RelatorioTPCO: TSmallintField;
    RelatorioRECO: TIBStringField;
    RelatorioIDCD: TIntegerField;
    RelatorioDECD: TIBStringField;
    RelatorioIDCV: TIntegerField;
    RelatorioDECV: TIBStringField;
    RelatorioIDCR: TIntegerField;
    RelatorioDECR: TIBStringField;
    RelatorioTITULO: TIBStringField;
    RelatorioDTVC: TDateField;
    RelatorioVDUP: TIBBCDField;
    RelatorioDTPG: TDateField;
    RelatorioVPAG: TIBBCDField;
    RelatorioVPEN: TIBBCDField;
    RelatorioDEST: TIBStringField;
    RelatorioPCOM: TIBBCDField;
    RelatorioVCOM: TIBBCDField;
    QRLDocumento: TQRLabel;
    QRLDEPK: TQRLabel;
    QRLDATA: TQRLabel;
    QRLDECD: TQRLabel;
    QRLDECV: TQRLabel;
    QRLSTPD: TQRLabel;
    QRLDEST: TQRLabel;
    QRLTDUP: TQRLabel;
    QRLVDUP: TQRLabel;
    QRLVCOM: TQRLabel;
    QRLTCOM: TQRLabel;
    QRLPCOM: TQRLabel;
    QRLTCOM2: TQRLabel;
    QRDDocumento: TQRDBText;
    QRDData: TQRDBText;
    QREDECD: TQRDBText;
    QRDDECV: TQRDBText;
    QRDSTPD: TQRDBText;
    QRDDEST: TQRDBText;
    QRDVDUP: TQRDBText;
    QRDVCOM: TQRDBText;
    QRDPCOM: TQRDBText;
    QREITEM: TQRExpr;
    QREVDUP: TQRExpr;
    QREVCOM: TQRExpr;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLPageHeaderTitulo: TQRLabel;
    QRLPageHeaderSubTitulo: TQRLabel;
    QRBSumario: TQRBand;
    QRShape8: TQRShape;
    QRShape6: TQRShape;
    QRShape11: TQRShape;
    QRDBRichText1: TQRDBRichText;
    QRShape17: TQRShape;
    QRLabel29: TQRLabel;
    QRShape7: TQRShape;
    QRLSIGN1: TQRLabel;
    QRLSIGN2: TQRLabel;
    QRShape9: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    QRLTIPO: TQRLabel;
    QRLPeriodo: TQRLabel;
    QRSVCOM: TQRExpr;
    qrltotal: TQRLabel;
    QRSVDUP: TQRExpr;
    QRBRODAPE: TQRBand;
    QRLPageFooterFiltros: TQRLabel;
    QRLPageFooterLogin: TQRLabel;
    QRSPageFooterPagina: TQRSysData;
    QRLPageFooterHost: TQRLabel;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
  private
    RECRelatorio: TRECRelatorios;

    procedure _Report;
    procedure _Select;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  QRPFIN_PAG_COM: TQRPFIN_PAG_COM;

implementation

{$R *.DFM}

Constructor TQRPFIN_PAG_COM.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TQRPFIN_PAG_COM.WinControlFormCreate(Sender: TObject);
begin
  with QRPFIN_PAG_COM do
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
      WinControlFormDestroy(QRPFIN_PAG_COM);
    end;
end;

procedure TQRPFIN_PAG_COM.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorios);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(QRPFIN_PAG_COM);
  end;
end;

procedure TQRPFIN_PAG_COM._Select;
begin
  QRDGRUPO.DataField     := RECRelatorio.ConsultaField;
  QRGGRUPO.Expression    := 'relatorio.' + RECRelatorio.ConsultaField;
  QRGSUBGRUPO.Expression := 'relatorio.' + RECRelatorio.ConsultaField;

  QRLDATA.Caption    := RECRelatorio.IEDataCaption;
  QRDDATA.DataField  := IFThen(RECRelatorio.IEDataField = 'FIN_DCAD','DTFA','DTPG');

  QRLDECV.Caption   := IFThen(RECRelatorio.ConsultaField = 'DECR','Vendedor','Representante');
  QRDDECV.DataField := IFThen(RECRelatorio.ConsultaField = 'DECR','DECV'    ,'DECR');

  QRLTDUP.Caption    := IFThen(RECRelatorio.IEDataField = 'FIN_DCAD','Total Faturado','Total Pago');
  QRDVDUP.DataField  := IFThen(RECRelatorio.IEDataField = 'FIN_DCAD','VDUP','VPAG');
  QREVDUP.Expression := IFThen(RECRelatorio.IEDataField = 'FIN_DCAD','SUM(Relatorio.VDUP)','SUM(Relatorio.VPAG)');

  RECRelatorio.RodapeFiltros := RECRelatorio.ConsultaCaption + ' ' + RECRelatorio.ConsultaText + ' ' + RECRelatorio.SubTitulo + ' entre ' + FormatDateTime('dd.mm.yy',RECRelatorio.IEDataText1) + ' e ' + FormatDateTime('dd.mm.yy',RECRelatorio.IEDataText2);
  
  QRLSIGN1.Caption := RECRelatorio.ConsultaText;
  QRLSIGN2.Caption := RECParametros.Fantasia;

  QRLTIPO.Caption  := IFThen(RECRelatorio.IEDataField = 'FIN_DCAD','COMISSÕES FATURADAS','COMISSÕES PAGAS');

  oOTransact(TRelatorios);
  Relatorio.Open;
end;

procedure TQRPFIN_PAG_COM._Report;
begin
  { Cabeçalho }
  oReportPageHeader(Self,RECRelatorio);

  { Rodapé }
  oReportPageFooter(Self,RECRelatorio);
end;

end.
