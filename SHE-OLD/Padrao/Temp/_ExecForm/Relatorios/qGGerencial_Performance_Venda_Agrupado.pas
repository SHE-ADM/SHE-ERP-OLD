unit qGGerencial_Performance_Venda_Agrupado;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport;

type
  TqrpGGerencial_Performance_Venda_Agrupado = class(TQuickRep)
    QRBDetalhe: TQRBand;
    QRGGrupo: TQRGroup;
    QRGSubGrupo: TQRGroup;
    QRBSubTotal: TQRBand;
    QRBTotalGeral: TQRBand;
    QRDEmpresa: TQRDBText;
    TRelatorio: TIBTransaction;
    QRLPeriodo: TQRLabel;
    Relatorio: TIBQuery;
    QRDQTVENGCLI: TQRDBText;
    QRLVTDEV: TQRLabel;
    QRDPeriodo: TQRDBText;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRLVTVEN: TQRLabel;
    QRESubTotalC_QTVENGCLI: TQRExpr;
    QRLSubTotal: TQRLabel;
    QRLTotal: TQRLabel;
    QRLQTVEN: TQRLabel;
    QRLQTVENGCLI: TQRLabel;
    QRDVTVEN: TQRDBText;
    QRLQTVENNCLI: TQRLabel;
    QRDQTVEN: TQRDBText;
    QRESubTotalC_QTVEN: TQRExpr;
    QRESubTotalVTVEN: TQRExpr;
    RelatorioEMPRESA: TIBStringField;
    RelatorioPERIODO: TIBStringField;
    RelatorioVTVEN: TIBBCDField;
    RelatorioQTVEN: TLargeintField;
    RelatorioQTVENGCLI: TLargeintField;
    RelatorioQTVENNCLI: TLargeintField;
    QRDQTVENNCLI: TQRDBText;
    QRDVTDEV: TQRDBText;
    RelatorioVTDEV: TIBBCDField;
    QRESubTotalC_QTVENNCLI: TQRExpr;
    QRESubTotalVTVDEV: TQRExpr;
    QRETotalVTVEN: TQRExpr;
    QRETotalC_QTVENGCLI: TQRExpr;
    QRETotalC_QTVENNCLI: TQRExpr;
    QRETotalVTVDEV: TQRExpr;
    QRETotalC_QTVEN: TQRExpr;
    RelatorioC_QTVEN: TIntegerField;
    RelatorioC_QTVENGCLI: TIntegerField;
    RelatorioC_QTVENNCLI: TIntegerField;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    RelatorioC_ID: TIntegerField;
    QRBCabecalho: TQRBand;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    RelatorioCATEGORIA: TIBStringField;
    QRDCategoria: TQRDBText;
    QRLCategoria: TQRLabel;
    RelatorioL_PERIODO: TIBStringField;
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
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    RECRelatorio: TRECRelatorios;
    TAB_PK,TAB_PK_ITE,TAB_FK,TAB_FK_ITE,
    SQLAdd: String;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpGGerencial_Performance_Venda_Agrupado: TqrpGGerencial_Performance_Venda_Agrupado;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TqrpGGerencial_Performance_Venda_Agrupado.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpGGerencial_Performance_Venda_Agrupado.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter(Self,RECRelatorio); { Rodapé }
          end;

          procedure _Select;
          begin
            { Tipo }
            if RECRelatorio.Tipo = 'Diário' then
               SQLAdd := 'LPad(Extract(Day  FROM PK.ROM_DROM),2,0)||''/''||LPad(Extract(Month FROM PK.ROM_DROM),2,0)||''/''||LPad(Extract(Year FROM PK.ROM_DROM),4,0) AS PERIODO,' else
            BEGIN
              SQLAdd := 'LPad(Extract(Year FROM PK.ROM_DROM),4,0)||''/''||LPad(Extract(Month FROM PK.ROM_DROM),2,0) AS PERIODO,';
              QRDPeriodo.DataField := 'PERIODO';
            END;  

            { Definindo Tabelas }
            TAB_PK     := oREPZero(IFThen(RECRelatorio.Status = 'Programados','PED_PRG_CAB','PED_VEN_CAB'),'_',RECParametros.EP_ID,3);
            TAB_PK_ITE := oREPZero(IFThen(RECRelatorio.Status = 'Programados','PED_PRG_ITE','PED_VEN_ITE'),'_',RECParametros.EP_ID,3);
            TAB_FK     := EmptyStr;
            TAB_FK_ITE := EmptyStr;
            if ((RECRelatorio.Status = 'Faturados') and (RECRelatorio.Tipo <> 'Programações')) then
            begin
              TAB_FK     := oREPZero('ROM_CAB','_',RECParametros.EP_ID,3);
              TAB_FK_ITE := oREPZero('ROM_ITE','_',RECParametros.EP_ID,3);
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
              RECRelatorio.IEC2ConsultaAnd := 'AND '+RECRelatorio.IEC2ConsultaField+' '+RECRelatorio.IEC2ConsultaWhere+' '''+RECRelatorio.IEC2ConsultaLike1+Trim(RECRelatorio.PEC2ConsultaText)+RECRelatorio.IEC2ConsultaLike2+'''';
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC2ConsultaCaption +': '+RECRelatorio.PEC2ConsultaText +' ';
            end;

            if RECRelatorio.PEC3ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC3ConsultaAnd := 'AND '+RECRelatorio.IEC3ConsultaField+' '+RECRelatorio.IEC3ConsultaWhere+' '''+RECRelatorio.IEC3ConsultaLike1+Trim(RECRelatorio.PEC3ConsultaText)+RECRelatorio.IEC3ConsultaLike2+'''';
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC3ConsultaCaption +': '+RECRelatorio.PEC3ConsultaText +' ';
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
              SQL.Add('SELECT EMPRESA,CATEGORIA,PERIODO,');
              SQL.Add('       CASE RIGHT(PERIODO,2)');
              SQL.Add('         WHEN ''01'' THEN ''JAN''');
              SQL.Add('         WHEN ''02'' THEN ''FEV''');
              SQL.Add('         WHEN ''03'' THEN ''MAR''');
              SQL.Add('         WHEN ''04'' THEN ''ABR''');
              SQL.Add('         WHEN ''05'' THEN ''MAI''');
              SQL.Add('         WHEN ''06'' THEN ''JUN''');
              SQL.Add('         WHEN ''07'' THEN ''JUL''');
              SQL.Add('         WHEN ''08'' THEN ''AGO''');
              SQL.Add('         WHEN ''09'' THEN ''SET''');
              SQL.Add('         WHEN ''10'' THEN ''OUT''');
              SQL.Add('         WHEN ''11'' THEN ''NOV''');
              SQL.Add('         WHEN ''12'' THEN ''DEZ''');
              SQL.Add('       END||''-''||SUBSTRING(PERIODO FROM 3 FOR 2) AS L_PERIODO,');
              SQL.Add('       SUM(VTVEN) AS VTVEN,SUM(QTVEN) AS QTVEN,SUM(QTVENGCLI) AS QTVENGCLI,SUM(QTVENNCLI) AS QTVENNCLI,SUM(VTDEV) AS VTDEV');
              SQL.Add('FROM (');

              { TAB_PK }
              SQL.Add('SELECT PS.FANTASIA AS EMPRESA,');

              SQL.Add(IFThen(RECRelatorio.Modelo = 'Segmentos'     ,'TSEG',
                      IFThen(RECRelatorio.Modelo = 'Grupos'        ,'TGRP',
                      IFThen(RECRelatorio.Modelo = 'Sub Grupos'    ,'TSGP',
                      IFThen(RECRelatorio.Modelo = 'Categorias'    ,'TCAT',
                      IFThen(RECRelatorio.Modelo = 'Sub Categorias','TSCT','')))))+'.DESCRICAO AS CATEGORIA,');

              SQLAdd := StringReplace(SQLAdd,'ROM_DROM',RECRelatorio.IEDataField,[rfReplaceAll,rfIgnoreCase]);
              SQL.Add(SQLAdd);
              SQL.Add('       COUNT(DISTINCT (IIF(LPad(Extract(Month FROM CL.CLI_DCAD),2,0)||''/''||LPad(Extract(Year  FROM CL.CLI_DCAD),4,0) = LPad(Extract(Month FROM PK.ROM_DROM),2,0)||''/''||LPad(Extract(Year  FROM PK.ROM_DROM),4,0),CL.CLI_DCAD,NULL))) AS QTVENNCLI,');
              SQL.Add('       COUNT(DISTINCT PK.ROM_CCLI) QTVENGCLI,');
              SQL.Add('       CAST(COUNT(DISTINCT FK.ROM_CCAB) AS INTEGER) AS QTVEN,');
              SQL.Add('       COALESCE(SUM(IIF(PK.ROM_STPD <> ''DEVOLUÇÃO'',CAST(FK.ROM_QTDE*FK.ROM_PREC*IIF(PK.ROM_CONC > 0,PK.ROM_CONC,1) AS NUMERIC(15,2)),0)),0) AS VTVEN,');
              SQL.Add('       COALESCE(SUM(IIF(PK.ROM_STPD =  ''DEVOLUÇÃO'',CAST(FK.ROM_QTDE*FK.ROM_PREC*IIF(PK.ROM_CONC > 0,PK.ROM_CONC,1) AS NUMERIC(15,2)),0)),0) AS VTDEV ');

              SQL.Add('FROM '+TAB_PK+'     AS PK');
              SQL.Add('JOIN   TAB_PED      AS TP   ON (TP.VEN_TIPO = PK.ROM_STPD)');
              SQL.Add('JOIN   CAD_CLI      AS CL   ON (CL.ID = PK.ROM_CCLI)');
              SQL.Add('JOIN '+TAB_PK_ITE+' AS FK   ON (FK.ROM_CCAB = PK.ID)');
              SQL.Add('JOIN   CAD_PRO      AS CP   ON (CP.ID = FK.ROM_CPRO)');
              SQL.Add('JOIN   TAB_PAR_SIS  AS PS   ON (PS.ID = CP.IDEP    )');
              SQL.Add('JOIN   TAB_SEG      AS TSEG ON (TSEG.ID = CP.IDSEG )');
              SQL.Add('JOIN   TAB_GRP      AS TGRP ON (TGRP.ID = CP.IDGRP )');
              SQL.Add('JOIN   TAB_SGP      AS TSGP ON (TSGP.ID = CP.IDSGP )');
              SQL.Add('JOIN   TAB_CAT      AS TCAT ON (TCAT.ID = CP.IDCAT )');
              SQL.Add('JOIN   TAB_SCT      AS TSCT ON (TSCT.ID = CP.IDSCT )');

              SQL.Add('WHERE PK.IDEP = '''+RECParametros.EP_ID+'''');

              if UPPERCASE(RECRelatorio.DEEP) <> 'TODAS AS EMPRESAS' then
                 SQL.Add('AND CP.IDEP = '''+IntToStr(RECRelatorio.IDEP)+'''');

              if RECRelatorio.Status = 'Faturados' then
              begin
                SQL.Add('AND PK.FAPD = 1');
                SQL.Add('AND PK.CDNF = 0');
              end;

              SQL.Add('AND PK.STPD <> ''ABATIMENTO''');

              SQL.Add(RECRelatorio.IEC1ConsultaAnd);
              SQL.Add(RECRelatorio.IEC2ConsultaAnd);
              SQL.Add(RECRelatorio.IEC3ConsultaAnd);
              SQL.Add(RECRelatorio.IEC4ConsultaAnd);
              SQL.Add(RECRelatorio.IEDataAnd);

              SQL.Add('GROUP BY EMPRESA,CATEGORIA,PERIODO');

              { Faturados }
              if ((not oEmpty(TAB_FK)) and (not oEmpty(TAB_FK_ITE))) then
              begin
                { TAB_FK }
                SQL.Add('UNION');
                SQL.Add('SELECT PS.FANTASIA  AS EMPRESA  ,');

                SQL.Add(IFThen(RECRelatorio.Modelo = 'Segmentos'     ,'TSEG',
                        IFThen(RECRelatorio.Modelo = 'Grupos'        ,'TGRP',
                        IFThen(RECRelatorio.Modelo = 'Sub Grupos'    ,'TSGP',
                        IFThen(RECRelatorio.Modelo = 'Categorias'    ,'TCAT',
                        IFThen(RECRelatorio.Modelo = 'Sub Categorias','TSCT','')))))+'.DESCRICAO AS CATEGORIA,');

                SQLAdd := StringReplace(SQLAdd,RECRelatorio.IEDataField,'ROM_DNFS',[rfReplaceAll,rfIgnoreCase]);
                SQL.Add(SQLAdd);
                SQL.Add('       COUNT(DISTINCT (IIF(LPad(Extract(Month FROM CL.CLI_DCAD),2,0)||''/''||LPad(Extract(Year  FROM CL.CLI_DCAD),4,0) = LPad(Extract(Month FROM PK.ROM_DROM),2,0)||''/''||LPad(Extract(Year  FROM PK.ROM_DROM),4,0),CL.CLI_DCAD,NULL))) AS QTVENNCLI,');
                SQL.Add('       COUNT(DISTINCT PK.ROM_CCLI) QTVENGCLI,');
                SQL.Add('       CAST(COUNT(DISTINCT FK.ROM_CCAB) AS INTEGER) AS QTVEN,');
                SQL.Add('       COALESCE(SUM(IIF(PK.ROM_STPD <> ''DEVOLUÇÃO'',CAST(FK.ROM_QTDE*FK.ROM_PREC*IIF(PK.ROM_CONC > 0,PK.ROM_CONC,1) AS NUMERIC(15,2)),0)),0) AS VTVEN,');
                SQL.Add('       COALESCE(SUM(IIF(PK.ROM_STPD =  ''DEVOLUÇÃO'',CAST(FK.ROM_QTDE*FK.ROM_PREC*IIF(PK.ROM_CONC > 0,PK.ROM_CONC,1) AS NUMERIC(15,2)),0)),0) AS VTDEV ');

                SQL.Add('FROM '+TAB_FK+'     AS PK');
                SQL.Add('JOIN   TAB_PED      AS TP   ON (TP.VEN_TIPO = PK.ROM_STPD)');
                SQL.Add('JOIN   CAD_CLI      AS CL   ON (CL.ID = PK.ROM_CCLI)');
                SQL.Add('JOIN '+TAB_FK_ITE+' AS FK   ON (FK.ROM_CCAB = PK.ID)');
                SQL.Add('JOIN   CAD_PRO      AS CP   ON (CP.ID = FK.ROM_CPRO)');
                SQL.Add('JOIN   TAB_PAR_SIS  AS PS   ON (PS.ID = CP.IDEP    )');
                SQL.Add('JOIN   TAB_SEG      AS TSEG ON (TSEG.ID = CP.IDSEG )');
                SQL.Add('JOIN   TAB_GRP      AS TGRP ON (TGRP.ID = CP.IDGRP )');
                SQL.Add('JOIN   TAB_SGP      AS TSGP ON (TSGP.ID = CP.IDSGP )');
                SQL.Add('JOIN   TAB_CAT      AS TCAT ON (TCAT.ID = CP.IDCAT )');
                SQL.Add('JOIN   TAB_SCT      AS TSCT ON (TSCT.ID = CP.IDSCT )');

                SQL.Add('WHERE  PK.IDEP = '''+RECParametros.EP_ID+'''');

                if UPPERCASE(RECRelatorio.DEEP) <> 'TODAS AS EMPRESAS' then
                   SQL.Add('AND CP.IDEP = '''+IntToStr(RECRelatorio.IDEP)+'''');

                SQL.Add('AND PK.FAPD = 1');
                SQL.Add('AND PK.STPD <> ''ABATIMENTO''');

                SQL.Add(RECRelatorio.IEC1ConsultaAnd);
                SQL.Add(RECRelatorio.IEC2ConsultaAnd);
                SQL.Add(RECRelatorio.IEC3ConsultaAnd);
                SQL.Add(RECRelatorio.IEC4ConsultaAnd);
                SQL.Add(RECRelatorio.IEFKDataAnd);

                SQL.Add('GROUP BY EMPRESA,CATEGORIA,PERIODO');
              end;

              SQL.Add(')');
              SQL.Add('GROUP BY EMPRESA,CATEGORIA,PERIODO,L_PERIODO');
              SQL.Add('ORDER BY 1,2,3');
              Open;
            end;
          end;
begin
  with qrpGGerencial_Performance_Venda_Agrupado do
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
      WinControlFormDestroy(qrpGGerencial_Performance_Venda_Agrupado);
    end;
end;

procedure TqrpGGerencial_Performance_Venda_Agrupado.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpGGerencial_Performance_Venda_Agrupado);
  end;
end;

procedure TqrpGGerencial_Performance_Venda_Agrupado.RelatorioCalcFields(
  DataSet: TDataSet);
begin
  RelatorioC_ID.Value        := Relatorio.RecNo;
  RelatorioC_QTVEN.Value     := RelatorioQTVEN.AsInteger;
  RelatorioC_QTVENNCLI.Value := RelatorioQTVENNCLI.AsInteger;
  RelatorioC_QTVENGCLI.Value := RelatorioQTVENGCLI.AsInteger;
end;

procedure TqrpGGerencial_Performance_Venda_Agrupado.QRBDetalheBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if RelatorioC_ID.AsInteger mod 2 = 0 then
     QRBDetalhe.Color := clWhite
  else
     QRBDetalhe.Color := $00E9E9E9;
end;

procedure TqrpGGerencial_Performance_Venda_Agrupado.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  QRLCategoria.Caption := RECRelatorio.Modelo;
  if RECRelatorio.Tipo  = 'Mensal' then
     QRDPeriodo.DataField := 'L_PERIODO';                         
end;

end.
