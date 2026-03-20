unit qProduto_Venda_Regiao_Nacional;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport,
     DateUtils, IDGlobal,
  BMDThread;

type
  TqrpProduto_Venda_Regiao_Nacional = class(TQuickRep)
    QRBFKCabecalho: TQRBand;
    QRBDetalhes: TQRBand;
    QRBSumario: TQRBand;
    QRDC_ARTIGO: TQRDBText;
    TRelatorio: TIBTransaction;
    Relatorio: TIBQuery;
    BMTEvent: TBMDThread;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRSSumario: TQRShape;
    QRDC_VALOR_02: TQRDBText;
    QRDC_VALOR_03: TQRDBText;
    QRDC_VALOR_04: TQRDBText;
    QRDC_VALOR_05: TQRDBText;
    QRDC_VALOR_06: TQRDBText;
    RelatorioC_VALOR_02: TFloatField;
    RelatorioC_VALOR_03: TFloatField;
    RelatorioC_VALOR_04: TFloatField;
    RelatorioC_VALOR_05: TFloatField;
    RelatorioC_VALOR_06: TFloatField;
    QRDC_DESCRICAO: TQRDBText;
    RelatorioC_ARTIGO: TStringField;
    RelatorioC_DESCRICAO: TStringField;
    QRLTotal: TQRLabel;
    QRETotal_ITEM: TQRExpr;
    QREC_VALOR_02: TQRExpr;
    QREC_VALOR_03: TQRExpr;
    QREC_VALOR_04: TQRExpr;
    QREC_VALOR_05: TQRExpr;
    QREC_VALOR_06: TQRExpr;
    QRBCabecalho: TQRBand;
    QRSCABECALHO: TQRShape;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRLC_ARTIGO: TQRLabel;
    QRLTC_VALOR_02: TQRLabel;
    QRLTC_VALOR_03: TQRLabel;
    QRLTC_VALOR_04: TQRLabel;
    QRLTC_VALOR_05: TQRLabel;
    QRLTC_VALOR_06: TQRLabel;
    QRLC_VALOR_02: TQRLabel;
    QRLC_VALOR_03: TQRLabel;
    QRLC_VALOR_04: TQRLabel;
    QRLC_VALOR_05: TQRLabel;
    QRLC_VALOR_06: TQRLabel;
    RelatorioARTIGO: TIBStringField;
    RelatorioPRODUTO: TIBStringField;
    RelatorioDESCRICAO: TIBStringField;
    RelatorioCOR: TIBStringField;
    RelatorioDECPL: TIBStringField;
    RelatorioUCOM: TIBStringField;
    RelatorioRENDIMENTO: TIBBCDField;
    RelatorioQTUN: TIBBCDField;
    RelatorioREGIAO_NACIONAL_02: TIBStringField;
    RelatorioQTPV_02: TIBBCDField;
    RelatorioVTPV_02: TIBBCDField;
    RelatorioREGIAO_NACIONAL_03: TIBStringField;
    RelatorioQTPV_03: TIBBCDField;
    RelatorioVTPV_03: TIBBCDField;
    RelatorioREGIAO_NACIONAL_04: TIBStringField;
    RelatorioQTPV_04: TIBBCDField;
    RelatorioVTPV_04: TIBBCDField;
    RelatorioREGIAO_NACIONAL_05: TIBStringField;
    RelatorioQTPV_05: TIBBCDField;
    RelatorioVTPV_05: TIBBCDField;
    RelatorioREGIAO_NACIONAL_06: TIBStringField;
    RelatorioQTPV_06: TIBBCDField;
    RelatorioVTPV_06: TIBBCDField;
    RelatorioPESOB: TIBBCDField;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure QRBDetalhesBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RelatorioCalcFields(DataSet: TDataSet);
  private
    RECRelatorio: TRECRelatorios;
    TAB_PK,TAB_PK_ITE,TAB_FK,TAB_FK_ITE,
    SQLAdd: String;
    procedure _Pesquisa_Categorias;
    procedure _Pesquisa_Fornecedor;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpProduto_Venda_Regiao_Nacional: TqrpProduto_Venda_Regiao_Nacional;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pThread, pExporta;

{$R *.DFM}

Constructor TqrpProduto_Venda_Regiao_Nacional.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpProduto_Venda_Regiao_Nacional.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter(Self,RECRelatorio); { Rodapé }

            QRDC_DESCRICAO.Width := QRDC_VALOR_02.Left - QRDC_ARTIGO.Width;
            QRDC_DESCRICAO.Left  := QRDC_ARTIGO.Width;

            if Pos('Metro',RECRelatorio.Modelo) > 0 then
               QRLTC_VALOR_02.Caption := 'MT' else
            if Pos('Kilo',RECRelatorio.Modelo) > 0 then
               QRLTC_VALOR_02.Caption := 'KG' else
            if Pos('Valor',RECRelatorio.Modelo) > 0 then
               QRLTC_VALOR_02.Caption := 'Valor-R$';

            QRLTC_VALOR_03.Caption := QRLTC_VALOR_02.Caption;
            QRLTC_VALOR_04.Caption := QRLTC_VALOR_02.Caption;
            QRLTC_VALOR_05.Caption := QRLTC_VALOR_02.Caption;
            QRLTC_VALOR_06.Caption := QRLTC_VALOR_02.Caption;
          end;

          procedure _Select;
          begin
            { Modelo }
            if Pos('Artigo',RECRelatorio.Modelo) > 0 then
            begin
              RECRelatorio.Titulo := StringReplace(RECRelatorio.Titulo,'Produtos',RECRelatorio.Modelo,[rfReplaceAll,rfIgnoreCase]);

              QRLC_ARTIGO.Caption := 'Artigo';
              QRDC_ARTIGO.Width   := 60;

              SQLAdd := 'RN.ID AS ID_REGIAO_NACIONAL,RN.RNA_NO AS REGIAO_NACIONAL,CP.PRO_CART AS ARTIGO,CP.PRO_CART AS PRODUTO,CP.PRO_DPRO AS DESCRICAO,NULL AS COR,NULL AS DECPL,FK.ROM_DUNI AS UCOM,';
            end else
            begin
              QRLC_ARTIGO.Caption := 'Produto';
              QRDC_ARTIGO.Width   := 90;

              SQLAdd := 'RN.ID AS ID_REGIAO_NACIONAL,RN.RNA_NO AS REGIAO_NACIONAL,CP.PRO_CART AS ARTIGO,CP.PRO_CPRO AS PRODUTO,FK.ROM_DPRO AS DESCRICAO,FK.ROM_DCOR AS COR,'+
                        'TRIM(COALESCE(CP.DEGRD,'''')||'' ''||TRIM(COALESCE(CP.DECOR,'''')||'' ''||TRIM(COALESCE(CP.CDGRD,'''')||'' ''||TRIM(COALESCE(CP.REGRD,''''))))) AS DECPL,FK.ROM_DUNI AS UCOM,';
            end;
            
            { Definindo Tabelas }
            TAB_PK     := oREPZero(IFThen(RECRelatorio.Tipo = 'Programações','PED_PRG_CAB','PED_VEN_CAB'),'_',RECParametros.Id,3);
            TAB_PK_ITE := oREPZero(IFThen(RECRelatorio.Tipo = 'Programações','PED_PRG_ITE','PED_VEN_ITE'),'_',RECParametros.Id,3);
            TAB_FK     := EmptyStr;
            TAB_FK_ITE := EmptyStr;
            if ((RECRelatorio.Status = 'Faturados') and (RECRelatorio.Tipo <> 'Programações')) then
            begin
              TAB_FK     := oREPZero('ROM_CAB','_',RECParametros.Id,3);
              TAB_FK_ITE := oREPZero('ROM_ITE','_',RECParametros.Id,3);
            end;

            { Filtros Between }
            if (RECRelatorio.PEC1CodigoText <> 'TODOS') and (RECRelatorio.PEC2CodigoText <> 'TODOS') and
               (RECRelatorio.PEC1CodigoText <> '0')     and (RECRelatorio.PEC2CodigoText <> '0') then
               RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.PEC1CodigoCaption+' '+RECRelatorio.PEC2CodigoCaption+' '
            else
               RECRelatorio.PEC1CodigoText := '0';

            { Filtros Gerais }   
            if RECRelatorio.PEC1ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC1ConsultaAnd := 'AND '+RECRelatorio.IEC1ConsultaField+' '+RECRelatorio.IEC1ConsultaWhere+' '''+RECRelatorio.IEC1ConsultaLike1+Trim(RECRelatorio.PEC1ConsultaText)+RECRelatorio.IEC1ConsultaLike2+'''';
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC1ConsultaCaption +': '+RECRelatorio.PEC1ConsultaText +' ';
            end;

            if RECRelatorio.PEC2ConsultaText <> 'TODOS' then
            begin
              if RECRelatorio.IEC2ConsultaCaption = 'Categorias' then
                 _Pesquisa_Categorias
              else
                 RECRelatorio.IEC2ConsultaAnd := 'AND '+RECRelatorio.IEC2ConsultaField+' '+RECRelatorio.IEC2ConsultaWhere+' '''+RECRelatorio.IEC2ConsultaLike1+Trim(RECRelatorio.PEC2ConsultaText)+RECRelatorio.IEC2ConsultaLike2+'''';
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC2ConsultaCaption +': '+RECRelatorio.PEC2ConsultaText +' ';
            end;

            if RECRelatorio.PEC3ConsultaText <> 'TODOS' then
            begin
              _Pesquisa_Fornecedor;
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC3ConsultaCaption +': '+RECRelatorio.PEC3ConsultaText +' ';
            end;

            if RECRelatorio.PEC4ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC4ConsultaAnd := 'AND '+RECRelatorio.IEC4ConsultaField+' '+RECRelatorio.IEC4ConsultaWhere+' '''+RECRelatorio.IEC4ConsultaLike1+Trim(RECRelatorio.PEC4ConsultaText)+RECRelatorio.IEC4ConsultaLike2+'''';
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC4ConsultaCaption +': '+RECRelatorio.PEC4ConsultaText +' ';
            end;

            { Filtros Datas }
            if not oEmpty(RECRelatorio.IEDataField) then
            begin
              RECRelatorio.IEDataField  := IFThen(((RECRelatorio.Status = 'Faturados') and (RECRelatorio.Tipo <> 'Programações')),'ROM_DBAI','ROM_DROM');
              RECRelatorio.IEDataAnd    := 'AND '+RECRelatorio.IEDataField+' BETWEEN '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText1)+''' AND '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText2)+'''';
              RECRelatorio.IEFKDataAnd  := 'AND ROM_DNFS BETWEEN '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText1)+''' AND '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText2)+'''';
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + 'Período por '+oPrimeiraLetraMaiuscula(RECRelatorio.IEDataCaption)+': '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1)+' Até '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);
            end;

            oOTransact(TRelatorio);
            with Relatorio do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT ARTIGO,PRODUTO,');

              SQL.Add('       DESCRICAO,COR,DECPL,UCOM,');
              SQL.Add('       AVG(RENDIMENTO) AS RENDIMENTO,AVG(PESOB) AS PESOB,AVG(QTUN) AS QTUN,');

              SQL.Add('       COALESCE(MAX(DECODE(ID_REGIAO_NACIONAL,''2'',REGIAO_NACIONAL,Null)),'''') AS REGIAO_NACIONAL_02,');
              SQL.Add('       COALESCE(SUM(DECODE(ID_REGIAO_NACIONAL,''2'',QTPV           ,Null)),0 )   AS QTPV_02,COALESCE(SUM(DECODE(ID_REGIAO_NACIONAL,''2'',VTPV ,Null)),0) AS VTPV_02,');

              SQL.Add('       COALESCE(MAX(DECODE(ID_REGIAO_NACIONAL,''3'',REGIAO_NACIONAL,Null)),'''') AS REGIAO_NACIONAL_03,');
              SQL.Add('       COALESCE(SUM(DECODE(ID_REGIAO_NACIONAL,''3'',QTPV           ,Null)),0 )   AS QTPV_03,COALESCE(SUM(DECODE(ID_REGIAO_NACIONAL,''3'',VTPV ,Null)),0) AS VTPV_03,');

              SQL.Add('       COALESCE(MAX(DECODE(ID_REGIAO_NACIONAL,''4'',REGIAO_NACIONAL,Null)),'''') AS REGIAO_NACIONAL_04,');
              SQL.Add('       COALESCE(SUM(DECODE(ID_REGIAO_NACIONAL,''4'',QTPV           ,Null)),0 )   AS QTPV_04,COALESCE(SUM(DECODE(ID_REGIAO_NACIONAL,''4'',VTPV ,Null)),0) AS VTPV_04,');

              SQL.Add('       COALESCE(MAX(DECODE(ID_REGIAO_NACIONAL,''5'',REGIAO_NACIONAL,Null)),'''') AS REGIAO_NACIONAL_05,');
              SQL.Add('       COALESCE(SUM(DECODE(ID_REGIAO_NACIONAL,''5'',QTPV           ,Null)),0 )   AS QTPV_05,COALESCE(SUM(DECODE(ID_REGIAO_NACIONAL,''5'',VTPV ,Null)),0) AS VTPV_05,');

              SQL.Add('       COALESCE(MAX(DECODE(ID_REGIAO_NACIONAL,''6'',REGIAO_NACIONAL,Null)),'''') AS REGIAO_NACIONAL_06,');
              SQL.Add('       COALESCE(SUM(DECODE(ID_REGIAO_NACIONAL,''6'',QTPV           ,Null)),0 )   AS QTPV_06,COALESCE(SUM(DECODE(ID_REGIAO_NACIONAL,''6'',VTPV ,Null)),0) AS VTPV_06');

              SQL.Add('FROM (');

              { TAB_PK }
              SQL.Add('SELECT '+SQLAdd);
              SQL.Add(' AVG(CP.PRO_REND) AS RENDIMENTO,AVG(CP.PRO_PESO) AS PESOB,AVG(CP.UQTDE) AS QTUN,');
              SQL.Add(' SUM(FK.ROM_QTDE) AS QTPV,CAST(SUM(IIF(PK.ROM_STPD = ''DEVOLUÇÃO'',FK.ROM_TOTA*IIF(PK.ROM_CONC > 0,PK.ROM_CONC,1),FK.ROM_TOTA)) AS NUMERIC(15,2)) AS VTPV');


              SQL.Add('FROM '+TAB_PK+'     AS PK');
              SQL.Add('JOIN   TAB_PED      AS TP  ON (TP.VEN_TIPO = PK.ROM_STPD)');
              SQL.Add('JOIN   CAD_CLI      AS CL  ON (CL.ID = PK.ROM_CCLI)');
              SQL.Add('JOIN '+TAB_PK_ITE+' AS FK  ON (FK.ROM_CCAB = PK.ID)');
              SQL.Add('JOIN   CAD_PRO      AS CP  ON (CP.ID = FK.ROM_CPRO)');
              SQL.Add('JOIN   TAB_CAT      AS TCT ON (TCT.ID = CP.IDCAT)');
              SQL.Add('JOIN   TAB_SCT      AS TSC ON (TSC.ID = CP.IDSCT)');
              SQL.Add('LEFT');
              SQL.Add('JOIN   TAB_CEP_RMT AS RM ON (CL.CLI_CEP BETWEEN RM.LOC_CEP_INI AND RM.LOC_CEP_FIM)');
              SQL.Add('LEFT');
              SQL.Add('JOIN   TAB_CEP_RNA AS RN ON (CL.CLI_CEP BETWEEN RN.LOC_CEP_INI AND RN.LOC_CEP_FIM)');
              SQL.Add('LEFT');
              SQL.Add('JOIN   TAB_CEP_UFE AS UF ON (UF.SIGLA = CL.CLI_ESTA)');

              SQL.Add('WHERE PK.IDEP = '''+RECParametros.Id+'''');
              SQL.Add('AND   PK.STPD <> ''ABATIMENTO''');
              SQL.Add('AND   PK.STPD '+IFThen(Pos('DEV',UPPERCASE(RECRelatorio.Tipo)) > 0,'=','<>')+' ''DEVOLUÇÃO''');

              if RECRelatorio.Status = 'Faturados' then
              begin
                SQL.Add('AND PK.FAPD = 1');
                SQL.Add('AND PK.ROM_CDNF IS NULL');
              end;

              if UPPERCASE(RECRelatorio.DEEP) <> 'TODAS AS EMPRESAS' then SQL.Add('AND CP.IDEP = '''+IntToStr(RECRelatorio.IDEP)+'''');

              SQL.Add(RECRelatorio.IEC1ConsultaAnd);
              SQL.Add(RECRelatorio.IEC2ConsultaAnd);
              SQL.Add(RECRelatorio.IEC3ConsultaAnd);
              SQL.Add(RECRelatorio.IEC4ConsultaAnd);
              SQL.Add(RECRelatorio.IEDataAnd);

              SQL.Add('GROUP BY ID_REGIAO_NACIONAL,REGIAO_NACIONAL,ARTIGO,PRODUTO,DESCRICAO,COR,DECPL,UCOM');

              { Faturados }
              if ((not oEmpty(TAB_FK)) and (not oEmpty(TAB_FK_ITE))) then
              begin
                { TAB_FK }
                SQL.Add('UNION');
                SQL.Add('SELECT '+SQLAdd);
                SQL.Add('       AVG(CP.PRO_REND) AS RENDIMENTO,AVG(CP.PRO_PESO) AS PESOB,AVG(CP.UQTDE) AS QTUN,');
                SQL.Add('       SUM(FK.ROM_QTDE) AS QTPV,CAST(SUM(FK.ROM_QTDE*FK.ROM_PREC*IIF(PK.ROM_CONC > 0,PK.ROM_CONC,1)) AS NUMERIC(15,2)) AS VTPV');

                SQL.Add('FROM '+TAB_FK+'     AS PK');
                SQL.Add('JOIN   TAB_PED      AS TP ON (TP.VEN_TIPO = PK.ROM_STPD)');
                SQL.Add('JOIN   CAD_CLI      AS CL ON (CL.ID = PK.ROM_CCLI)');
                SQL.Add('JOIN '+TAB_FK_ITE+' AS FK ON (FK.ROM_CCAB = PK.ID)');
                SQL.Add('JOIN   CAD_PRO      AS CP ON (CP.ID = FK.ROM_CPRO)');
                SQL.Add('JOIN   TAB_CAT      AS TCT ON (TCT.ID = CP.IDCAT)');
                SQL.Add('JOIN   TAB_SCT      AS TSC ON (TSC.ID = CP.IDSCT)');
                SQL.Add('LEFT');
                SQL.Add('JOIN   TAB_CEP_RMT AS RM ON (CL.CLI_CEP BETWEEN RM.LOC_CEP_INI AND RM.LOC_CEP_FIM)');
                SQL.Add('LEFT');
                SQL.Add('JOIN   TAB_CEP_RNA AS RN ON (CL.CLI_CEP BETWEEN RN.LOC_CEP_INI AND RN.LOC_CEP_FIM)');
                SQL.Add('LEFT');
                SQL.Add('JOIN   TAB_CEP_UFE AS UF ON (UF.SIGLA = CL.CLI_ESTA)');

                SQL.Add('WHERE  PK.IDEP = '''+RECParametros.Id+'''');
                SQL.Add('AND    PK.FAPD = 1');
                SQL.Add('AND    PK.STPD <> ''ABATIMENTO''');
                SQL.Add('AND    PK.STPD '+IFThen(Pos('DEV',UPPERCASE(RECRelatorio.Tipo)) > 0,'=','<>')+' ''DEVOLUÇÃO''');

                if UPPERCASE(RECRelatorio.DEEP) <> 'TODAS AS EMPRESAS' then SQL.Add('AND CP.IDEP = '''+IntToStr(RECRelatorio.IDEP)+'''');

                SQL.Add(RECRelatorio.IEC1ConsultaAnd);
                SQL.Add(RECRelatorio.IEC2ConsultaAnd);
                SQL.Add(RECRelatorio.IEC3ConsultaAnd);
                SQL.Add(RECRelatorio.IEC4ConsultaAnd);
                SQL.Add(RECRelatorio.IEFKDataAnd);

                SQL.Add('GROUP BY ID_REGIAO_NACIONAL,REGIAO_NACIONAL,ARTIGO,PRODUTO,DESCRICAO,COR,DECPL,UCOM');
              end;

              SQL.Add(')');
              SQL.Add('GROUP BY ARTIGO,PRODUTO,DESCRICAO,COR,DECPL,UCOM');
              SQL.Add('ORDER BY ARTIGO,COR');
              Open;
            end;
          end;
begin
  with qrpProduto_Venda_Regiao_Nacional do
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
      WinControlFormDestroy(qrpProduto_Venda_Regiao_Nacional);
    end;
end;

procedure TqrpProduto_Venda_Regiao_Nacional.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpProduto_Venda_Regiao_Nacional);
  end;
end;

procedure TqrpProduto_Venda_Regiao_Nacional.QRBDetalhesBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if Relatorio.RecNo mod 2 = 0 then
     QRBDetalhes.Color := clBtnFace else QRBDetalhes.Color := clWhite;
end;

procedure TqrpProduto_Venda_Regiao_Nacional.RelatorioCalcFields(DataSet: TDataSet);
begin
  if Pos('Artigo',RECRelatorio.Modelo) > 0 then
  begin
    RelatorioC_ARTIGO.Value    := RelatorioArtigo.AsString;
    RelatorioC_DESCRICAO.Value := RelatorioDescricao.AsString;
  end else
  begin
    RelatorioC_ARTIGO.Value    := RelatorioProduto.AsString;
    RelatorioC_DESCRICAO.Value := Trim(RelatorioDECPL.AsString+' '+RelatorioCor.AsString);
  end;

  RelatorioC_VALOR_02.Value := RelatorioQTPV_02.AsFloat;
  RelatorioC_VALOR_03.Value := RelatorioQTPV_03.AsFloat;
  RelatorioC_VALOR_04.Value := RelatorioQTPV_04.AsFloat;
  RelatorioC_VALOR_05.Value := RelatorioQTPV_05.AsFloat;
  RelatorioC_VALOR_06.Value := RelatorioQTPV_06.AsFloat;

  if Pos('Metro',RECRelatorio.Modelo) > 0 then
  begin
    if RelatorioUCOM.AsString = 'KG' then
    begin
      RelatorioC_VALOR_02.Value := RelatorioC_VALOR_02.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_03.Value := RelatorioC_VALOR_03.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_04.Value := RelatorioC_VALOR_04.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_05.Value := RelatorioC_VALOR_05.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_06.Value := RelatorioC_VALOR_06.AsFloat * RelatorioRendimento.AsFloat;
    end else
    if RelatorioUCOM.AsString = 'M' then
    begin
      RelatorioC_VALOR_02.Value := RelatorioC_VALOR_02.AsFloat;
      RelatorioC_VALOR_03.Value := RelatorioC_VALOR_03.AsFloat;
      RelatorioC_VALOR_04.Value := RelatorioC_VALOR_04.AsFloat;
      RelatorioC_VALOR_05.Value := RelatorioC_VALOR_05.AsFloat;
      RelatorioC_VALOR_06.Value := RelatorioC_VALOR_06.AsFloat;
    end;
  end else
  if Pos('Kilo',RECRelatorio.Modelo) > 0 then
  begin
    if RelatorioUCOM.AsString = 'KG' then
    begin
      RelatorioC_VALOR_02.Value := RelatorioC_VALOR_02.AsFloat;
      RelatorioC_VALOR_03.Value := RelatorioC_VALOR_03.AsFloat;
      RelatorioC_VALOR_04.Value := RelatorioC_VALOR_04.AsFloat;
      RelatorioC_VALOR_05.Value := RelatorioC_VALOR_05.AsFloat;
      RelatorioC_VALOR_06.Value := RelatorioC_VALOR_06.AsFloat;
    end else
    begin
      RelatorioC_VALOR_02.Value := RelatorioC_VALOR_02.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_03.Value := RelatorioC_VALOR_03.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_04.Value := RelatorioC_VALOR_04.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_05.Value := RelatorioC_VALOR_05.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_06.Value := RelatorioC_VALOR_06.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
    end;
  end else
  if Pos('Valor',RECRelatorio.Modelo) > 0 then
  begin
    RelatorioC_VALOR_02.Value := RelatorioVTPV_02.AsFloat;
    RelatorioC_VALOR_03.Value := RelatorioVTPV_03.AsFloat;
    RelatorioC_VALOR_04.Value := RelatorioVTPV_04.AsFloat;
    RelatorioC_VALOR_05.Value := RelatorioVTPV_05.AsFloat;
    RelatorioC_VALOR_06.Value := RelatorioVTPV_06.AsFloat;
  end;
end;

procedure TqrpProduto_Venda_Regiao_Nacional._Pesquisa_Categorias;
var
  DString,DField: String;
  SLPesquisa: TStringList;
  i: Integer;
begin
  RECRelatorio.IEC2ConsultaAnd := 'AND EXISTS (SELECT PSQ.ID FROM CAD_PRO_PSQ AS PSQ WHERE PSQ.ID = CP.IDAK';

  SLPesquisa := TStringList.Create;
  try
    SLPesquisa.Clear;
    DString := RECRelatorio.PEC2ConsultaText;
    While Length(DString) > 0 do
    begin
      DField := Fetch(DString,' ');
      if Length(DField) > 0 then
         SLPesquisa.Add(DField);
    end;

    if SLPesquisa.Count > 0 then
       for i := 0 to SLPesquisa.Count - 1 do
           RECRelatorio.IEC2ConsultaAnd := RECRelatorio.IEC2ConsultaAnd + ' AND ' + RECRelatorio.IEC2ConsultaField+' '+RECRelatorio.IEC2ConsultaWhere+' '''+RECRelatorio.IEC2ConsultaLike1+Trim(SLPesquisa.Strings[i])+RECRelatorio.IEC2ConsultaLike2+'''';

    RECRelatorio.IEC2ConsultaAnd := RECRelatorio.IEC2ConsultaAnd + ')';
  finally
    FreeAndNil(SLPesquisa);
  end;
end;

procedure TqrpProduto_Venda_Regiao_Nacional._Pesquisa_Fornecedor;
var
  DString,DField: String;
  SLPesquisa: TStringList;
  i: Integer;
begin
  RECRelatorio.IEC3ConsultaAnd := 'AND EXISTS (SELECT PSQ.ID FROM CAD_PRO_PSQ AS PSQ WHERE PSQ.ID = CP.IDAK';

  SLPesquisa := TStringList.Create;
  try
    SLPesquisa.Clear;
    DString := RECRelatorio.PEC3ConsultaText;
    While Length(DString) > 0 do
    begin
      DField := Fetch(DString,' ');
      if Length(DField) > 0 then
         SLPesquisa.Add(DField);
    end;

    if SLPesquisa.Count > 0 then
       for i := 0 to SLPesquisa.Count - 1 do
           RECRelatorio.IEC3ConsultaAnd := RECRelatorio.IEC3ConsultaAnd + ' AND ' + RECRelatorio.IEC3ConsultaField+' '+RECRelatorio.IEC3ConsultaWhere+' '''+RECRelatorio.IEC3ConsultaLike1+Trim(SLPesquisa.Strings[i])+RECRelatorio.IEC3ConsultaLike2+'''';

    RECRelatorio.IEC3ConsultaAnd := RECRelatorio.IEC3ConsultaAnd + ')';
  finally
    FreeAndNil(SLPesquisa);
  end;
end;

end.
