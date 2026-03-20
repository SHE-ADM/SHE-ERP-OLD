unit qGFornecedoresProdutosCadastrados;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport,
  IDGlobal;

type
  TqrpGFornecedoresProdutosCadastrados = class(TQuickRep)
    QRBDetalhe: TQRBand;
    QRGGrupo: TQRGroup;
    QRGSubGrupo: TQRGroup;
    QRBSubTotal: TQRBand;
    QRBTotalGeral: TQRBand;
    QRDDECLCVCR: TQRDBText;
    TRelatorio: TIBTransaction;
    QRLSKU: TQRLabel;
    Relatorio: TIBQuery;
    QRDVTPV: TQRDBText;
    QRLVTPV: TQRLabel;
    QRDSKU: TQRDBText;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRDDGCP: TQRDBText;
    QRLUCON: TQRLabel;
    QRDDECP: TQRDBText;
    RelatorioC_ID: TIntegerField;
    QREVTPV: TQRExpr;
    QRESubTotal_ITEM: TQRExpr;
    QRLSubTotal: TQRLabel;
    QRETotal_ITEM: TQRExpr;
    QRLTotal: TQRLabel;
    QRSVTPV: TQRExpr;
    QRBCabecalho: TQRBand;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRLDGCP: TQRLabel;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    RelatorioIDCP: TIntegerField;
    RelatorioCP_IDEP: TSmallintField;
    RelatorioCDST: TSmallintField;
    RelatorioREST: TIBStringField;
    RelatorioDEST: TIBStringField;
    RelatorioCF_ID: TSmallintField;
    RelatorioCF_NO: TIBStringField;
    RelatorioARTIGO: TIBStringField;
    RelatorioSKU: TIBStringField;
    RelatorioL_SKU: TIntegerField;
    RelatorioDGCP: TIBStringField;
    RelatorioDECP: TIBStringField;
    RelatorioD_DECP: TIBStringField;
    RelatorioUCOM: TIBStringField;
    RelatorioUCON: TIBStringField;
    RelatorioL_UCON: TIntegerField;
    RelatorioEPE_QTDE: TIBBCDField;
    RelatorioL_DGCP: TIntegerField;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    RECRelatorio: TRECRelatorios;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpGFornecedoresProdutosCadastrados: TqrpGFornecedoresProdutosCadastrados;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TqrpGFornecedoresProdutosCadastrados.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpGFornecedoresProdutosCadastrados.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter(Self,RECRelatorio); { Rodapé }

            { SKU }
            if Relatorio.Locate('L_SKU',20,[]) then
            begin
              QRDSKU.Width     := 95;
              QRDSKU.Font.Size := 6;
            end else

            if Relatorio.Locate('L_SKU',19,[]) then
            begin
              QRDSKU.Width     := 90;
              QRDSKU.Font.Size := 6;
            end else

            if Relatorio.Locate('L_SKU',18,[]) then
            begin
              QRDSKU.Width     := 85;
              QRDSKU.Font.Size := 6;
            end else

            if Relatorio.Locate('L_SKU',17,[]) then
            begin
              QRDSKU.Width     := 80;
              QRDSKU.Font.Size := 6;
            end else

            if Relatorio.Locate('L_SKU',16,[]) then
            begin
              QRDSKU.Width     := 80;
              QRDSKU.Font.Size := 6;
            end else

            if Relatorio.Locate('L_SKU',15,[]) then
            begin
              QRDSKU.Width     := 70;
              QRDSKU.Font.Size := 6;
            end else

            if Relatorio.Locate('L_SKU',14,[]) then
            begin
              QRDSKU.Width     := 70;
              QRDSKU.Font.Size := 6;
            end else

            if Relatorio.Locate('L_SKU',13,[]) then
            QRDSKU.Width := 65 else

            if Relatorio.Locate('L_SKU',12,[]) then
            QRDSKU.Width := 60 else

            if Relatorio.Locate('L_SKU',11,[]) then
            QRDSKU.Width := 55 else

            if Relatorio.Locate('L_SKU',10,[]) then
            QRDSKU.Width := 50 else
            QRDSKU.Width := 45;
            QRLSKU.Width := QRDSKU.Width;

            { Grade }
            if Relatorio.Locate('L_DGCP',20,[]) then
            begin
              QRDDGCP.Width     := 95;
              QRDDGCP.Font.Size := 6;
            end else

            if Relatorio.Locate('L_DGCP',19,[]) then
            begin
              QRDDGCP.Width     := 90;
              QRDDGCP.Font.Size := 6;
            end else

            if Relatorio.Locate('L_DGCP',18,[]) then
            begin
              QRDDGCP.Width     := 85;
              QRDDGCP.Font.Size := 6;
            end else

            if Relatorio.Locate('L_DGCP',17,[]) then
            begin
              QRDDGCP.Width     := 80;
              QRDDGCP.Font.Size := 6;
            end else

            if Relatorio.Locate('L_DGCP',16,[]) then
            begin
              QRDDGCP.Width     := 80;
              QRDDGCP.Font.Size := 6;
            end else

            if Relatorio.Locate('L_DGCP',15,[]) then
            begin
              QRDDGCP.Width     := 70;
              QRDDGCP.Font.Size := 6;
            end else

            if Relatorio.Locate('L_DGCP',14,[]) then
            begin
              QRDDGCP.Width     := 70;
              QRDDGCP.Font.Size := 6;
            end else

            if Relatorio.Locate('L_DGCP',13,[]) then
            QRDDGCP.Width := 65 else

            if Relatorio.Locate('L_DGCP',12,[]) then
            QRDDGCP.Width := 60 else

            if Relatorio.Locate('L_DGCP',11,[]) then
            QRDDGCP.Width := 55 else

            if Relatorio.Locate('L_DGCP',10,[]) then
            QRDDGCP.Width := 50 else
            QRDDGCP.Width := 45;
            QRLDGCP.Width := QRDDGCP.Width;

            { SKU }
            QRDSKU.Font.Size := 7;

            { Grade }
            QRDDGCP.Font.Size := 7;
            QRDDGCP.Left := QRDSKU.Width + 5;
            QRLDGCP.Left := QRDDGCP.Left;

            { Descrição }
            QRDDECP.Font.Size := 7;
            QRDDECP.Left := QRDDGCP.Left + QRDDGCP.Width + 5;
          end;

          procedure _Select;
          begin
            if RECRelatorio.PEC1ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC1ConsultaAnd := 'PK.'+RECRelatorio.IEC1ConsultaField + ' ' + RECRelatorio.IEC1ConsultaWhere+' '''''+RECRelatorio.IEC1ConsultaLike1+Trim(RECRelatorio.PEC1ConsultaText)+RECRelatorio.IEC1ConsultaLike2+'''''';
              RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.IEC1ConsultaCaption +': '+RECRelatorio.PEC1ConsultaText +' ';
            end;

            { Filtros Datas }
            if not oEmpty(RECRelatorio.IEDataField) then
            begin
              RECRelatorio.IEDataAnd     := 'AND '+RECRelatorio.IEDataField+' BETWEEN '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText1)+''' AND '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText2)+'''';
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + 'Período por '+oPrimeiraLetraMaiuscula(RECRelatorio.IEDataCaption)+': '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1)+' Até '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);
            end;

            oOTransact(TRelatorio);
            with Relatorio do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT PK.IDCP  ,PK.CP_IDEP,');
              SQL.Add('       PK.CDST  ,PK.REST   ,PK.DEST,');
              SQL.Add('       PK.CF_ID ,PK.CF_NO  ,');
              SQL.Add('       PK.ARTIGO,PK.SKU    ,PK.L_SKU ,PK.DGCP,PK.L_DGCP,PK.DECP,PK.D_DECP,');
              SQL.Add('       PK.UCOM  ,PK.UCON   ,PK.L_UCON,');
              SQL.Add('       COALESCE(SUM(E.EPE_QTDE),0) AS EPE_QTDE');

              SQL.Add('FROM      VW_REL_FOR_CAD_PRO AS PK');
              SQL.Add('LEFT JOIN VW_ESTOQUE         AS E ON (E.IDEP = PK.CP_IDEP AND E.IDEK = PK.IDEK)');

              SQL.Add('WHERE PK.CP_IDEP = :IDEP');

             { if (RECRelatorio.PEC1ConsultaText <> EmptyStr) and (RECRelatorio.PEC1ConsultaText <> 'TODOS') then
              SQL.Add('AND ' + RECRelatorio.IEC1ConsultaField + ' ' + RECRelatorio.IEC1ConsultaWhere + ' ''' + RECRelatorio.IEC1ConsultaLike1 + Trim(RECRelatorio.PEC1ConsultaText) + RECRelatorio.IEC1ConsultaLike2 + '''');

              if (RECRelatorio.Status <> EmptyStr) and (RECRelatorio.Status <> 'TODOS') then
              SQL.Add('AND ' + RECRelatorio.Status);}


              SQL.Add('AND CHAR_LENGTH(PK.DGCP) = 20');



              SQL.Add('GROUP BY PK.IDCP  ,PK.CP_IDEP,');
              SQL.Add('         PK.CDST  ,PK.REST ,PK.DEST,');
              SQL.Add('         PK.CF_ID ,PK.CF_NO,');
              SQL.Add('         PK.ARTIGO,PK.SKU  ,PK.L_SKU,PK.DGCP,PK.L_DGCP,PK.DECP,PK.D_DECP,');
              SQL.Add('         PK.UCOM  ,PK.UCON ,PK.L_UCON');

              SQL.Add('ORDER BY PK.ARTIGO,PK.DGCP');

              ParamByName('IDEP').Value := RECRelatorio.IDEP;
              Prepare;
              Open;
            end;
          end;
begin
  with qrpGFornecedoresProdutosCadastrados do
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
      WinControlFormDestroy(qrpGFornecedoresProdutosCadastrados);
    end;
end;

procedure TqrpGFornecedoresProdutosCadastrados.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpGFornecedoresProdutosCadastrados);
  end;
end;

procedure TqrpGFornecedoresProdutosCadastrados.RelatorioCalcFields(
  DataSet: TDataSet);
begin
  RelatorioC_ID.Value := Relatorio.RecNo;
end;

procedure TqrpGFornecedoresProdutosCadastrados.QRBDetalheBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
{ if RelatorioC_ID.AsInteger mod 2 = 0 then
     QRBDetalhe.Color := clWhite
  else
     QRBDetalhe.Color := $00F2F2F2; //$00F5F5F5; }
end;

end.
