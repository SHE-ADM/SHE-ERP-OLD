unit qREL_FOR_CAD_PRO; { Listagem de produtos por fornecedor }

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, QRPDFFilt, QRExport, IBDatabase, IBSQL,
  math, StrUtils;

type
  TQRPREL_FOR_CAD_PRO = class(TQuickRep)
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
    QRDGRUPO: TQRDBText;
    QRDSKU: TQRDBText;
    QRBSUBDETALHES: TQRSubDetail;
    QREITEM: TQRExpr;
    QREVDUP: TQRExpr;
    QRBRODAPE: TQRBand;
    QRLPageFooterFiltros: TQRLabel;
    QRLPageFooterLogin: TQRLabel;
    QRSPageFooterPagina: TQRSysData;
    QRLPageFooterHost: TQRLabel;
    QRDDGCP: TQRDBText;
    QRLPEDIDOS: TQRLabel;
    QRCGRUPO: TQRChildBand;
    QRSGRUPO: TQRShape;
    QRLProduto: TQRLabel;
    QRLSKU: TQRLabel;
    RelatorioC_EPE_QTDE: TStringField;
    QRDEPE_QTDE: TQRDBText;
    QRDDECP: TQRDBText;
    QRDUCON: TQRDBText;
    QRLUCON: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    RelatorioIDCP: TIntegerField;
    RelatorioCP_IDEP: TSmallintField;
    RelatorioCP_DEEP: TIBStringField;
    RelatorioCDST: TSmallintField;
    RelatorioREST: TIBStringField;
    RelatorioDEST: TIBStringField;
    RelatorioCF_ID: TSmallintField;
    RelatorioCF_NO: TIBStringField;
    RelatorioARTIGO: TIBStringField;
    RelatorioSKU: TIBStringField;
    RelatorioL_SKU: TIntegerField;
    RelatorioT_SKU: TIntegerField;
    RelatorioW_SKU: TIntegerField;
    RelatorioF_SKU: TIBStringField;
    RelatorioDECP: TIBStringField;
    RelatorioD_DECP: TIBStringField;
    RelatorioL_DECP: TIntegerField;
    RelatorioT_DECP: TIntegerField;
    RelatorioW_DECP: TIntegerField;
    RelatorioF_DECP: TIBStringField;
    RelatorioDGCP: TIBStringField;
    RelatorioD_DGCP: TIBStringField;
    RelatorioL_DGCP: TIntegerField;
    RelatorioT_DGCP: TIntegerField;
    RelatorioW_DGCP: TIntegerField;
    RelatorioF_DGCP: TIBStringField;
    RelatorioUCOM: TIBStringField;
    RelatorioUCON: TIBStringField;
    RelatorioL_UCON: TIntegerField;
    RelatorioT_UCON: TIntegerField;
    RelatorioW_UCON: TIntegerField;
    RelatorioF_UCON: TIBStringField;
    RelatorioEPE_QTDE: TIBBCDField;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure RelatorioAfterOpen(DataSet: TDataSet);
  private
    RECRelatorio: TRECRelatorios;

    procedure _Report;
    procedure _Select;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  QRPREL_FOR_CAD_PRO: TQRPREL_FOR_CAD_PRO;

implementation


{$R *.DFM}

Constructor TQRPREL_FOR_CAD_PRO.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TQRPREL_FOR_CAD_PRO.WinControlFormCreate(Sender: TObject);
begin
  with QRPREL_FOR_CAD_PRO do
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
      WinControlFormDestroy(QRPREL_FOR_CAD_PRO);
    end;
end;

procedure TQRPREL_FOR_CAD_PRO.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorios);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(QRPREL_FOR_CAD_PRO);
  end;
end;

procedure TQRPREL_FOR_CAD_PRO._Select;
begin
  oOTransact(TRelatorios);
  with Relatorio do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.IDCP  ,PK.CP_IDEP,PK.CP_DEEP,');
    SQL.Add('       PK.CDST  ,PK.REST   ,PK.DEST   ,');
    SQL.Add('       PK.CF_ID ,PK.CF_NO  ,');
    SQL.Add('       PK.ARTIGO,PK.SKU    ,PK.L_SKU ,PK.T_SKU ,PK.W_SKU ,PK.F_SKU ,');
    SQL.Add('       PK.DECP  ,PK.D_DECP ,PK.L_DECP,PK.T_DECP,PK.W_DECP,PK.F_DECP,');
    SQL.Add('       PK.DGCP  ,PK.D_DGCP ,PK.L_DGCP,PK.T_DGCP,PK.W_DGCP,PK.F_DGCP,');
    SQL.Add('       PK.UCOM  ,PK.UCON   ,PK.L_UCON,PK.T_UCON,PK.W_UCON,PK.F_UCON,');

    SQL.Add('       COALESCE(SUM(E.EPE_QTDE),0) AS EPE_QTDE');

    SQL.Add('FROM      VW_REL_FOR_CAD_PRO AS PK');
    SQL.Add('LEFT JOIN VW_ESTOQUE         AS E ON (E.IDEP = PK.CP_IDEP AND E.IDEK = PK.IDEK)');

    SQL.Add('WHERE PK.CP_IDEP = :IDEP');

    if (RECRelatorio.PEC1ConsultaText <> EmptyStr) and (RECRelatorio.PEC1ConsultaText <> 'TODOS') then
    SQL.Add('AND ' + RECRelatorio.IEC1ConsultaField + ' ' + RECRelatorio.IEC1ConsultaWhere + ' ''' + RECRelatorio.IEC1ConsultaLike1 + Trim(RECRelatorio.PEC1ConsultaText) + RECRelatorio.IEC1ConsultaLike2 + '''');

    if (RECRelatorio.Status <> EmptyStr) and (RECRelatorio.Status <> 'TODOS') then
    SQL.Add('AND ' + RECRelatorio.Status);

    //SQL.Add('AND CHAR_LENGTH(PK.DGCP) = 22');

    SQL.Add('GROUP BY PK.IDCP  ,PK.CP_IDEP,PK.CP_DEEP,');
    SQL.Add('         PK.CDST  ,PK.REST   ,PK.DEST   ,');
    SQL.Add('         PK.CF_ID ,PK.CF_NO  ,');
    SQL.Add('         PK.ARTIGO,PK.SKU    ,PK.L_SKU ,PK.T_SKU ,PK.W_SKU ,PK.F_SKU ,');
    SQL.Add('         PK.DECP  ,PK.D_DECP ,PK.L_DECP,PK.T_DECP,PK.W_DECP,PK.F_DECP,');
    SQL.Add('         PK.DGCP  ,PK.D_DGCP ,PK.L_DGCP,PK.T_DGCP,PK.W_DGCP,PK.F_DGCP,');
    SQL.Add('         PK.UCOM  ,PK.UCON   ,PK.L_UCON,PK.T_UCON,PK.W_UCON,PK.F_UCON ');

    SQL.Add('ORDER BY PK.CP_IDEP,PK.ARTIGO,PK.DGCP');

    ParamByName('IDEP').Value := RECRelatorio.IDEP;
    Prepare;
    Open;
  end;
end;

procedure TQRPREL_FOR_CAD_PRO._Report;
begin
  { Títulos }
  RECRelatorio.Titulo    := 'Listagem de Produtos';
  RECRelatorio.SubTitulo := 'Por Fornecedor';

  { Filtros }
  RECRelatorio.RodapeFiltros := EmptyStr;

  { Empresa }
  if RECRelatorio.IDEP > 0 then
  RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + IFThen(RECRelatorio.RodapeFiltros <> EmptyStr,'. ','') +
                                UPPERCASE(RECRelatorio.DEEP);

  { Fornecedor }
  if (RECRelatorio.PEC1ConsultaText <> EmptyStr) and (RECRelatorio.PEC1ConsultaText <> 'TODOS') then
  RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + IFThen(RECRelatorio.RodapeFiltros <> EmptyStr,'. ','') +
                                UPPERCASE(RECRelatorio.PEC1ConsultaText);

  { Situação }
  if (RECRelatorio.Status <> EmptyStr) and (RECRelatorio.Status <> 'TODOS') then
  RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + IFThen(RECRelatorio.RodapeFiltros <> EmptyStr,'. ','') +
                                UPPERCASE(RECRelatorio.Situacao);

  { Período }                              
  if RECRelatorio.IEDataField <> EmptyStr then
  RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + IFThen(RECRelatorio.RodapeFiltros <> EmptyStr,'. ','') +
                               'Período: ' + FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1) + ' até ' + FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);

  oReportPageHeader_(Self,RECRelatorio); { Cabeçalho }
  oReportPageFooter_(Self,RECRelatorio); { Rodapé    }
end;

procedure TQRPREL_FOR_CAD_PRO.RelatorioCalcFields(DataSet: TDataSet);
begin
  RelatorioC_EPE_QTDE.Value := Trim(IFThen(RelatorioEPE_QTDE.AsFloat = 0,
                                    EmptyStr,
                                    FormatFloat('0',RelatorioEPE_QTDE.AsFloat) + ' ' + LeftStr(RelatorioUCOM.AsString,2)));
end;

procedure TQRPREL_FOR_CAD_PRO.RelatorioAfterOpen(DataSet: TDataSet);
var
  i: integer;
begin
  { SKU }
  for i := 10 downto 0 do
  begin
    if Relatorio.Locate('T_SKU',i,[]) then
    begin
      QRDSKU.Width     := RelatorioW_SKU.AsInteger;
      QRDSKU.Font.Name := RelatorioF_SKU.AsString;
      Break;
    end;
  end;
  QRLSKU.Width    := QRDSKU.Width;
  QRLProduto.Left := QRDSKU.Left + QRDSKU.Width + 2;

  { Grade }
  for i := 25 downto 0 do
  begin
    if Relatorio.Locate('T_DGCP',i,[]) then
    begin
      QRDDGCP.Width     := RelatorioW_DGCP.AsInteger;
      QRDDGCP.Font.Name := RelatorioF_DGCP.AsString;
      Break;
    end;
  end;
  QRDDGCP.Left := QRLProduto.Left;

  { Descricao }
  for i := 25 downto 0 do
  begin
    if Relatorio.Locate('L_DECP',i,[]) then
    begin
      QRDDECP.Width     := RelatorioW_DECP.AsInteger;
      QRDDECP.Font.Name := RelatorioF_DECP.AsString;
      Break;
    end;
  end;
  QRDDECP.Left := QRDDGCP.Left + QRDDGCP.Width + 1;

  { Conteúdo }
  for i := 25 downto 0 do
  begin
    if Relatorio.Locate('L_UCON',i,[]) then
    begin
      QRDUCON.Width     := RelatorioW_UCON.AsInteger;
      QRDUCON.Font.Name := RelatorioF_UCON.AsString;
      Break;
    end;
  end;
  QRDUCON.Left := QRDDECP.Left + QRDDECP.Width + 1;
  QRLUCON.Left := QRDUCON.Left;
end;

end.

