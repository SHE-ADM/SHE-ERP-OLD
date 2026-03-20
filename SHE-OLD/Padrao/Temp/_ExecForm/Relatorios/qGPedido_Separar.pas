unit qGPedido_Separar;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport,
     IDGlobal, IBSQL;

type
  TqrpGPedido_Separar = class(TQuickRep)
    QRBDetalhe: TQRBand;
    QRGGrupo: TQRGroup;
    TRelatorio: TIBTransaction;
    Relatorio: TIBQuery;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRBCabecalho: TQRBand;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    RelatorioC_ID: TIntegerField;
    QRBSUMARIO_EMPRESA: TQRBand;
    QRSSUMARIO_EMPRESA: TQRShape;
    QRSCabecalho: TQRShape;
    QRDITEM: TQRDBText;
    QRDArtigo: TQRDBText;
    QRDDescricao: TQRDBText;
    QRDGRADE: TQRDBText;
    QRDUCOM: TQRDBText;
    QRDUCON: TQRDBText;
    QRDEPE_QTDE: TQRDBText;
    QRDEPE_QTRL: TQRDBText;
    QRDQTDE: TQRDBText;
    QRDQTRL: TQRDBText;
    QRLITEM: TQRLabel;
    QRLArtigo: TQRLabel;
    QRLProduto: TQRLabel;
    QRLUCOM: TQRLabel;
    QRLEPE_QTDE: TQRLabel;
    QRLQTDE: TQRLabel;
    QRLExpedicao: TQRLabel;
    QRSCADASTROS: TQRShape;
    QRSRepresentante: TQRShape;
    QRLRepresentante: TQRLabel;
    QRLVendedor: TQRLabel;
    QRDCliente: TQRDBText;
    QRDRepresentante: TQRDBText;
    QRDVendedor: TQRDBText;
    QRLCliente: TQRLabel;
    QRLTIPO_RELAT: TQRLabel;
    QRLTQTDE: TQRLabel;
    QRETQTDE: TQRExpr;
    QRETQTRL: TQRExpr;
    QRLTQTRL: TQRLabel;
    QRETITEM: TQRExpr;
    QRLTITEM: TQRLabel;
    QRLDTRO: TQRLabel;
    QRDDTRO: TQRDBText;
    QRSDERO: TQRShape;
    QRLDERO: TQRLabel;
    QRDDERO: TQRDBText;
    QRSTIPO: TQRShape;
    QRLTIPO: TQRLabel;
    QRDTIPO: TQRDBText;
    QRSTIPO_RELAT_BORDA: TQRShape;
    QRSDTRO: TQRShape;
    QRSTITEM: TQRShape;
    QRSTQTRL: TQRShape;
    QRSTQTDE: TQRShape;
    QRSINFADCAD: TQRShape;
    QRLINFADCAD: TQRLabel;
    QRSINFADCAD_BORDA: TQRShape;
    QRMINFADCAD: TQRDBRichText;
    QRLSUMARIO_EMPRESA: TQRLabel;
    QRLSUMARIO_ARTIGO_QTDE: TQRExpr;
    QRLSUMARIO_ARTIGO_QTRL: TQRExpr;
    QRESUMARIO_ITEM: TQRExpr;
    RelatorioEMPRESA: TIBStringField;
    RelatorioID: TIntegerField;
    RelatorioITEM: TIntegerField;
    RelatorioDERO: TIBStringField;
    RelatorioDTRO: TDateField;
    RelatorioTIPO: TIBStringField;
    RelatorioIDCL: TIntegerField;
    RelatorioDECL: TIBStringField;
    RelatorioIDCV: TSmallintField;
    RelatorioDECV: TIBStringField;
    RelatorioIDCR: TIntegerField;
    RelatorioDECR: TIBStringField;
    RelatorioARTIGO: TIBStringField;
    RelatorioSKU: TIBStringField;
    RelatorioDESCRICAO: TIBStringField;
    RelatorioDGCP: TIBStringField;
    RelatorioUCOM: TIBStringField;
    RelatorioUCON: TIBStringField;
    RelatorioEPE_QTDE: TIBBCDField;
    RelatorioEPE_QTRL: TIBBCDField;
    RelatorioQTDE: TIBBCDField;
    RelatorioQTRL: TIBBCDField;
    RelatorioTDSC: TIBStringField;
    RelatorioPDSC: TIBBCDField;
    RelatorioVDSC: TIBBCDField;
    RelatorioTSDE: TIBBCDField;
    RelatorioTCDE: TIBBCDField;
    RelatorioINFADCAD: TMemoField;
    QRDBText1: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRSTQTDE_BORDA: TQRShape;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RelatorioAfterOpen(DataSet: TDataSet);
  private
    RECRelatorio: TRECRelatorios;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpGPedido_Separar: TqrpGPedido_Separar;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TqrpGPedido_Separar.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpGPedido_Separar.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter(Self,RECRelatorio); { Rodapé }
          end;

          procedure _Select;
          begin
            { Definindo Tabelas }
            RECRelatorio.TAB_PK     := oREPZero(IFThen(RECRelatorio.Tipo = 'Romaneio','ROM_CAB','PED_VEN_CAB'),'_',RECParametros.EP_ID,3);
            RECRelatorio.TAB_PK_ITE := oREPZero(IFThen(RECRelatorio.Tipo = 'Romaneio','ROM_ITE','PED_VEN_ITE'),'_',RECParametros.EP_ID,3);

            { Select Principal }
            oOTransact(TRelatorio);
            with Relatorio do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT   EMPRESA,ID,ITEM,DERO,DTRO,TIPO,');
              SQL.Add('         IDCL,DECL,');
              SQL.Add('         IDCV,DECV,');
              SQL.Add('         IDCR,DECR,');
              SQL.Add('         ARTIGO,SKU,');
              SQL.Add('         DESCRICAO,');
              SQL.Add('         DGCP,');
              SQL.Add('         UCOM,UQVOL||'' ''||UESP AS UCON,');
              SQL.Add('         TDSC,CAST(IIF(VDSC > 0 AND TDSC <> ''%'',((VDSC*100)/TSDE),PDSC) AS DECIMAL(5,2))  AS PDSC,VDSC,TSDE,TCDE,');
              SQL.Add('         QTDE,QTRL,');
              SQL.Add('         EPE_QTDE,EPE_QTRL,');
              SQL.Add('         INFADCAD');
              SQL.Add('FROM (');
              SQL.Add('SELECT   EP.FANTASIA AS EMPRESA,PK.ID,CAST(FK.ROM_ITEM AS INTEGER) AS ITEM,PK.ROM_DERO AS DERO,PK.ROM_DROM AS DTRO,TPED.VEN_TIPO AS TIPO,');
              SQL.Add('         PK.ROM_TDSC AS TDSC,PK.ROM_PDSC AS PDSC,PK.ROM_VDSC AS VDSC,');
              SQL.Add('         PK.ROM_TSDE AS TSDE,PK.ROM_TCDE AS TCDE,');
              SQL.Add('         CL.ID AS IDCL,CL.CLI_FANT AS DECL,');
              SQL.Add('         TUSE.ID AS IDCV,TUSE.LOGIN AS DECV,');
              SQL.Add('         CR.ID AS IDCR,CR.REP_FANT AS DECR,');
              SQL.Add('         CP.PRO_CART AS ARTIGO,CP.PRO_CPRO AS SKU,');
              SQL.Add('         CP.PRO_DPRO AS DESCRICAO,');
              SQL.Add('         TRIM(TRIM(TRIM(COALESCE(CP.DEGRD,'''')||'' ''||TRIM(COALESCE(CP.DECOR,'''')||'' ''||TRIM(COALESCE(CP.CDGRD,'''')||'' ''||TRIM(COALESCE(CP.REGRD,''''))))))) AS DGCP,');
              SQL.Add('         FK.ROM_DUNI AS UCOM,CP.UESP,CP.UQVOL,');
              SQL.Add('         PK.ROM_OBSE AS INFADCAD,');
              SQL.Add('         SUM(CAST(EST.EPE_QTDE AS DECIMAL(7,2))) AS EPE_QTDE,SUM(CAST(EST.EPE_QTRL AS DECIMAL(5,2))) AS EPE_QTRL,');
              SQL.Add('         SUM(CAST(FK.ROM_QTDE  AS DECIMAL(7,2))) AS QTDE    ,SUM(CAST(FK.ROM_QTRL  AS DECIMAL(5,2))) AS QTRL');


              SQL.Add('FROM '  +RECRelatorio.TAB_PK+' AS PK');
              SQL.Add('JOIN     TAB_PED  AS TPED ON (TPED.VEN_TIPO  = PK.ROM_STPD)');
              SQL.Add('JOIN     CAD_CLI  AS CL   ON (CL.ID          = PK.ROM_CCLI)');
              SQL.Add('JOIN     CAD_REP  AS CR   ON (CR.ID          = PK.ROM_CREP)');
              SQL.Add('JOIN     TAB_USER AS TUSE ON (TUSE.ID        = PK.ROM_CVEN)');
              SQL.Add('JOIN '  +RECRelatorio.TAB_PK_ITE+' AS FK ON (FK.ROM_CCAB = PK.ID)');
              SQL.Add('JOIN     CAD_PRO     AS CP   ON (CP.ID       = FK.ROM_CPRO)');
              SQL.Add('JOIN     TAB_PAR_SIS AS EP   ON (EP.ID       = CP.IDEP    )');
              SQL.Add('JOIN     TAB_COR     AS TCOR ON (TCOR.ID = CP.IDCOR   )');
              SQL.Add('LEFT');
              SQL.Add('JOIN     ESTOQUE  AS EST  ON (EST.IDCP = CP.ID)');
              SQL.Add('WHERE    PK.ID = '''+RECRelatorio.Id+'''');
              SQL.Add('GROUP BY EMPRESA,ID,ITEM,DERO,DTRO,TIPO,');
              SQL.Add('         TDSC,PDSC,VDSC,');
              SQL.Add('         TSDE,TCDE,');
              SQL.Add('         IDCL,DECL,');
              SQL.Add('         IDCV,DECV,');
              SQL.Add('         IDCR,DECR,');
              SQL.Add('         ARTIGO,SKU,');
              SQL.Add('         DESCRICAO,');
              SQL.Add('         DGCP,');
              SQL.Add('         UCOM,UESP,UQVOL,');
              SQL.Add('         INFADCAD)');
              SQL.Add('ORDER BY EMPRESA,ITEM');
              Prepare;
              Open;
              Last;
            end;
          end;
begin
  with qrpGPedido_Separar do
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
      WinControlFormDestroy(qrpGPedido_Separar);
    end;
end;

procedure TqrpGPedido_Separar.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpGPedido_Separar);
  end;
end;

procedure TqrpGPedido_Separar.RelatorioAfterOpen(DataSet: TDataSet);
begin
  QRLCliente.Caption       := 'Cliente Nº '      +RelatorioIDCL.AsString;
  QRLRepresentante.Caption := 'Representante Nº '+RelatorioIDCR.AsString;
  QRLVendedor.Caption      := 'Vendedor Nº '     +RelatorioIDCV.AsString;
end;

procedure TqrpGPedido_Separar.RelatorioCalcFields(
  DataSet: TDataSet);
begin
  RelatorioC_ID.Value := Relatorio.RecNo;
end;

procedure TqrpGPedido_Separar.QRBDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if RelatorioC_ID.AsInteger mod 2 = 0 then
     QRBDetalhe.Color := $00F5F5F5 //$00F3F3F3;
  else
     QRBDetalhe.Color := clWhite;
end;

end.
