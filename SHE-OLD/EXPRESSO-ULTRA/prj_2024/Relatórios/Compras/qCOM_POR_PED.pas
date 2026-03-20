unit qCOM_POR_PED; { Pedidos de compras por itens de pedido analítico }

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, QRPDFFilt, QRExport, BMDThread, IBDatabase, IBSQL,
  math, StrUtils;

type
  TQRPCOM_POR_PED = class(TQuickRep)
    BMTEvent: TBMDThread;
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
    DTSRelatorio: TDataSource;
    FKRelatorio: TIBQuery;
    QRDGRUPO: TQRDBText;
    QRDDEPK: TQRDBText;
    QRDVPED: TQRDBText;
    QRLPEDIDOS: TQRLabel;
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
    QRLVPED: TQRLabel;
    QRSDETALHES2: TQRShape;
    QRLDEPK: TQRLabel;
    QRSDETALHES: TQRShape;
    QREITEM: TQRExpr;
    QREVDUP: TQRExpr;
    QRBRODAPE: TQRBand;
    QRLPageFooterFiltros: TQRLabel;
    QRLPageFooterLogin: TQRLabel;
    QRSPageFooterPagina: TQRSysData;
    QRLPageFooterHost: TQRLabel;
    FKRelatorioC_QTDE: TStringField;
    QRDBText1: TQRDBText;
    QRLDTPK: TQRLabel;
    QRDDTPK: TQRDBText;
    QRLCDNF: TQRLabel;
    QRLabel2: TQRLabel;
    QRDCDNF: TQRDBText;
    QRDDTNF: TQRDBText;
    RelatorioIDEP: TSmallintField;
    RelatorioDEEP: TIBStringField;
    RelatorioIDPK: TLargeintField;
    RelatorioDTPK: TDateField;
    RelatorioDEPK: TIBStringField;
    RelatorioCDNF: TLargeintField;
    RelatorioDTNF: TDateField;
    RelatorioVNF: TIBBCDField;
    RelatorioVIPI: TIBBCDField;
    RelatorioVST: TIBBCDField;
    RelatorioVPED: TIBBCDField;
    RelatorioCFOP: TIBStringField;
    RelatorioNAT_NO: TIBStringField;
    RelatorioNAT_FIN: TIBStringField;
    RelatorioNAT_TP: TIBStringField;
    RelatorioSTPD: TIBStringField;
    RelatorioRECO: TIBStringField;
    RelatorioD_STCO: TIBStringField;
    RelatorioDEST: TIBStringField;
    QRLNAT_FIN: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    FKRelatorioITEM: TIntegerField;
    FKRelatorioIDEP: TSmallintField;
    FKRelatorioCP_DEEP: TIBStringField;
    FKRelatorioSKU: TIBStringField;
    FKRelatorioDECP: TIBStringField;
    FKRelatorioUCOM: TIBStringField;
    FKRelatorioQTDE: TIBBCDField;
    FKRelatorioQTRL: TLargeintField;
    FKRelatorioVPRC_PAD: TFloatField;
    FKRelatorioVPRC_COM: TFloatField;
    FKRelatorioPDSC: TIBBCDField;
    FKRelatorioVDSC: TIBBCDField;
    FKRelatorioTSDE: TIBBCDField;
    FKRelatorioTCDE: TIBBCDField;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure FKRelatorioCalcFields(DataSet: TDataSet);
    procedure QRBDETALHESBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBSUBDETALHESBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    RECRelatorio: TRECRelatorios;

    procedure _Report;
    procedure _Select;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  QRPCOM_POR_PED: TQRPCOM_POR_PED;

implementation


{$R *.DFM}

Constructor TQRPCOM_POR_PED.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TQRPCOM_POR_PED.WinControlFormCreate(Sender: TObject);
begin
  with QRPCOM_POR_PED do
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
      WinControlFormDestroy(QRPCOM_POR_PED);
    end;
end;

procedure TQRPCOM_POR_PED.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorios);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(QRPCOM_POR_PED);
  end;
end;

procedure TQRPCOM_POR_PED._Select;
begin
  RECRelatorio.IDEP_INI := IFThen(RECRelatorio.IDEP > 0,RECRelatorio.IDEP,1);
  RECRelatorio.IDEP_FIM := IFThen(RECRelatorio.IDEP > 0,RECRelatorio.IDEP,9);

  oOTransact(TRelatorios);
  with Relatorio do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.IDEP,PK.DEEP,');
    SQL.Add('       PK.IDPK,PK.DTPK,PK.DEPK,');
    SQL.Add('       PK.CDNF,PK.DTNF,PK.VNF ,PK.VIPI,PK.VST ,');
    SQL.Add('       IIF(PK.CDNF > 0,PK.VNF,PK.TCDE) AS VPED,');
    SQL.Add('       FK.CFOP,TB_NAT.DESCRICAO AS NAT_NO ,TB_NAT.FINALIDADE AS NAT_FIN,TB_NAT.TIPO AS NAT_TP,');
    SQL.Add('       PK.STPD,PK.RECO,PK.D_STCO,');
    SQL.Add('       PK.DEST');

    SQL.Add('FROM '      + oREPZero('VW_PED_VEN_CAB','_',RECRelatorio.IDEP,3) + ' AS PK');
    SQL.Add('LEFT JOIN ' + oREPZero('NFE_CAB'       ,'_',RECRelatorio.IDEP,3) + ' AS FK ON (FK.CDNF = PK.CDNF)');
    SQL.Add('LEFT JOIN TAB_NAT AS TB_NAT ON (TB_NAT.CFOP = ''1102'')');

    SQL.Add('WHERE PK.CDST <> 30  ');
    SQL.Add('AND   PK.IDCD = 21224');

    SQL.Add('AND (PK.DTPK BETWEEN ''' + FormatDateTime('mm/dd/yy',RECRelatorio.IEDataText1) + ''' AND ''' + FormatDateTime('mm/dd/yy',RECRelatorio.IEDataText2) + '''' );
    SQL.Add('OR   PK.DTNF BETWEEN ''' + FormatDateTime('mm/dd/yy',RECRelatorio.IEDataText1) + ''' AND ''' + FormatDateTime('mm/dd/yy',RECRelatorio.IEDataText2) + ''')');

    SQL.Add('ORDER BY  DEEP,DTPK,IDPK');

    Prepare;
    Open;
  end;

  with FKRelatorio do
  begin
    Close;
    SQL.Clear;

    if RECRelatorio.Tipo = 'Itens de produtos' then
    begin
      SQL.Add('SELECT   PK.ITEM,PK.IDEP,EP.FANTASIA AS CP_DEEP,');
      SQL.Add('         CP.SKU,TRIM(CAST(COALESCE(PK.DECP,'''') || '' '' || COALESCE(PK.DGCP,'''')       AS VARCHAR(180))) AS DECP,');
      SQL.Add('         PK.UCOM,COALESCE(CAST(PK.QTDE AS NUMERIC(12,4)),0) AS QTDE,COALESCE(CAST(PK.QTRL AS BIGINT),0)     AS QTRL,');
      SQL.Add('         PK.VPRC_PAD,PK.VPRC_COM,');
      SQL.Add('         PK.PDSC    ,COALESCE(CAST(PK.VDSC AS NUMERIC(15,2)),0) AS VDSC,');
      SQL.Add('         PK.TSDE    ,PK.TCDE');

      SQL.Add('FROM ' + oREPZero('PED_VEN_ITE','_',RECRelatorio.IDEP,3) + ' AS PK');
      SQL.Add('JOIN     CAD_PRO     AS CP ON (CP.ID = PK.IDCP)');
      SQL.Add('JOIN     TAB_PAR_SIS AS EP ON (EP.ID = CP.IDEP)');
      SQL.Add('WHERE    IDPK = :IDPK');
      SQL.Add('ORDER BY ITEM');
    end else

    if RECRelatorio.Tipo = 'Empresas' then
    begin
    end;

    Prepare;
    Open;
  end;
end;

procedure TQRPCOM_POR_PED._Report;
begin
  { Títulos }
  RECRelatorio.Titulo    := 'Pedidos de Compras Analítico';
  RECRelatorio.SubTitulo := 'Agupado por itens de pedido';

  { Filtros }
  if not oEmpty(RECRelatorio.IEDataField) then
  RECRelatorio.RodapeFiltros := 'Período: ' + FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1) + ' até ' + FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);



  RECRelatorio.RodapeFiltros := RECRelatorio.ConsultaCaption + ' ' + RECRelatorio.ConsultaText + ' ' + RECRelatorio.SubTitulo + ' entre ' + FormatDateTime('dd.mm.yy',RECRelatorio.IEDataText1) + ' e ' + FormatDateTime('dd.mm.yy',RECRelatorio.IEDataText2);


  oReportPageHeader(Self,RECRelatorio); { Cabeçalho }
  oReportPageFooter(Self,RECRelatorio); { Rodapé    }
end;

procedure TQRPCOM_POR_PED.QRBDETALHESBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRDDEPK.Font.Size := IFThen(Length(RelatorioDEPK.AsString) >= 12,7,8);
end;

procedure TQRPCOM_POR_PED.FKRelatorioCalcFields(DataSet: TDataSet);
begin
  FKRelatorioC_QTDE.Value := Trim(FormatFloat('#,0.00',FKRelatorioQTDE.AsFloat) + ' ' + LeftStr(FKRelatorioUCOM.AsString,2));
end;

procedure TQRPCOM_POR_PED.QRBSUBDETALHESBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRDProduto.Font.Size := IFThen(Length(FKRelatorioDECP.AsString) > 40,5,6);
end;

end.
