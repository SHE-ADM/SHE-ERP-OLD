unit qCliente_Produto_Atendido;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport,
     IBSQL, IDGlobal;

type
  TqrpCliente_Produto_Atendido = class(TQuickRep)
    TRelatorio: TIBTransaction;
    Relatorio: TIBQuery;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRBFKCabecalho: TQRBand;
    QRBDetalhe: TQRBand;
    QRBSumario: TQRBand;
    RelatorioC_ID: TIntegerField;
    RelatorioC_QTDE: TStringField;
    QRBCabecalho: TQRBand;
    QRSCABECALHO: TQRShape;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRLDEFV: TQRLabel;
    QRLSKU: TQRLabel;
    QRLDECA: TQRLabel;
    QRLDESC: TQRLabel;
    QRLC_QTPV: TQRLabel;
    QRLVTPV: TQRLabel;
    QRDSKU: TQRDBText;
    QRDDEFV: TQRDBText;
    QRDC_DPDG: TQRDBText;
    QRDDECA: TQRDBText;
    QRDDESC: TQRDBText;
    QRDC_QTDE: TQRDBText;
    QRDVTPV: TQRDBText;
    QRLTotal: TQRLabel;
    QRETotal_ITEM: TQRExpr;
    QREC_QTDE: TQRExpr;
    QREVTPV: TQRExpr;
    RelatorioDECL: TIBStringField;
    RelatorioDECV: TIBStringField;
    RelatorioDECR: TIBStringField;
    RelatorioSKU: TIBStringField;
    RelatorioDECP: TIBStringField;
    RelatorioDGCP: TIBStringField;
    RelatorioDECA: TIBStringField;
    RelatorioDESC: TIBStringField;
    RelatorioUCOM: TIBStringField;
    RelatorioPSCN: TIBBCDField;
    RelatorioPESO: TIBBCDField;
    RelatorioMETRO: TIBBCDField;
    RelatorioREND: TIBBCDField;
    RelatorioQTDE: TIBBCDField;
    RelatorioVTPV: TIBBCDField;
    RelatorioC_DPDG: TStringField;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    RelatorioUQTDE: TIBBCDField;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RelatorioCalcFields(DataSet: TDataSet);
  private
    RECRelatorio: TRECRelatorios;
    TAB_PK,TAB_PK_ITE,TAB_FK,TAB_FK_ITE: String;
    procedure _Pesquisa_Categorias;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpCliente_Produto_Atendido: TqrpCliente_Produto_Atendido;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TqrpCliente_Produto_Atendido.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpCliente_Produto_Atendido.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            { Modelo }
            if RECRelatorio.Modelo <> 'Padrão' then
            begin
              RECRelatorio.Titulo := StringReplace(RECRelatorio.Titulo,'Produto',RECRelatorio.Modelo,[rfReplaceAll,rfIgnoreCase]);
            end;

            oReportPageHeader(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter(Self,RECRelatorio); { Rodapé }
          end;

          procedure _Select;
          begin
            { Definindo Tabelas }
            TAB_PK     := oREPZero(IFThen(RECRelatorio.Tipo = 'Programações','PED_PRG_CAB','PED_VEN_CAB'),'_',RECParametros.EP_ID,3);
            TAB_PK_ITE := oREPZero(IFThen(RECRelatorio.Tipo = 'Programações','PED_PRG_ITE','PED_VEN_ITE'),'_',RECParametros.EP_ID,3);
            TAB_FK     := EmptyStr;
            TAB_FK_ITE := EmptyStr;

            if Pos('Não',RECRelatorio.Titulo) = 0 then
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

              { TAB_PK }
              SQL.Add('SELECT DECL,DECV,DECR,');
              SQL.Add('       SKU,DECP,DGCP,DECA,DESC,UCOM,');
              SQL.Add('       AVG(PSCN) AS PSCN,AVG(PESO) AS PESO,AVG(METRO) AS METRO,AVG(REND) AS REND,AVG(UQTDE) AS UQTDE,');
              SQL.Add('       SUM(QTDE) AS QTDE,SUM(VTPV) AS VTPV,MAX(DTUC)  AS DTUC');
              SQL.Add('FROM (');
              SQL.Add('SELECT CL.CLI_FANT AS DECL,');
              SQL.Add('       CV.USU_DUSU AS DECV,');
              SQL.Add('       CR.REP_FANT AS DECR,');

              if RECRelatorio.Modelo = 'Produto' then
                 SQL.Add('CP.PRO_CPRO AS SKU,FK.DECP,FK.DGCP     ,TCT.DESCRICAO AS DECA,TSC.DESCRICAO AS DESC,') else
              if RECRelatorio.Modelo = 'Artigo' then
                 SQL.Add('CP.PRO_CART AS SKU,FK.DECP,NULL AS DGCP,TCT.DESCRICAO AS DECA,TSC.DESCRICAO AS DESC,');

              SQL.Add(' AVG(CP.PRO_PSCN)   AS PSCN,AVG(CP.PRO_PESO) AS PESO,AVG(CP.PRO_METR) AS METRO,AVG(CP.PRO_REND) AS REND,AVG(CP.UQTDE) AS UQTDE,');
              SQL.Add(' FK.ROM_DUNI        AS UCOM,SUM(FK.ROM_QTDE) AS QTDE,CAST(SUM(IIF(PK.ROM_STPD = ''DEVOLUÇÃO'',FK.ROM_TOTA*IIF(PK.ROM_CONC > 0,PK.ROM_CONC,1),FK.ROM_TOTA)) AS NUMERIC(15,2)) AS VTPV,');
              SQL.Add(' MAX(PK.ROM_DROM)   AS DTUC');

              SQL.Add('FROM '+TAB_PK+'     AS PK');
              SQL.Add('JOIN   TAB_PED      AS TP ON (TP.VEN_TIPO = PK.ROM_STPD)');
              SQL.Add('JOIN   CAD_CLI      AS CL ON (CL.ID = PK.ROM_CCLI)');
              SQL.Add('JOIN   CAD_USU      AS CV ON (CV.USU_CUSU = PK.ROM_CVEN)');
              SQL.Add('JOIN   CAD_REP      AS CR ON (CR.ID = PK.ROM_CREP)');
              SQL.Add('JOIN '+TAB_PK_ITE+' AS FK ON (FK.ROM_CCAB = PK.ID)');
              SQL.Add('JOIN   CAD_PRO      AS CP ON (CP.ID = FK.ROM_CPRO)');
              SQL.Add('JOIN   TAB_CAT      AS TCT ON (TCT.ID = CP.IDCAT)');
              SQL.Add('JOIN   TAB_SCT      AS TSC ON (TSC.ID = CP.IDSCT)');
              SQL.Add('LEFT');
              SQL.Add('JOIN   TAB_CEP_RMT  AS RM ON (CL.CLI_CEP BETWEEN RM.LOC_CEP_INI AND RM.LOC_CEP_FIM)');
              SQL.Add('LEFT');
              SQL.Add('JOIN   TAB_CEP_RNA  AS RN ON (CL.CLI_CEP BETWEEN RN.LOC_CEP_INI AND RN.LOC_CEP_FIM)');
              SQL.Add('LEFT');
              SQL.Add('JOIN   TAB_CEP_UFE  AS UF ON (UF.SIGLA = CL.CLI_ESTA)');

              SQL.Add('WHERE PK.IDEP = '''+RECParametros.EP_ID+'''');
              SQL.Add('AND   PK.STPD <> ''ABATIMENTO''');
              SQL.Add('AND   PK.STPD '+IFThen(Pos('DEV',UPPERCASE(RECRelatorio.Tipo)) > 0,'=','<>')+' ''DEVOLUÇÃO''');

              if Pos('Não',RECRelatorio.Titulo) > 0 then
              begin
                SQL.Add('AND  PK.FAPD = 1');
                SQL.Add('AND  FK.QTSP = 0');
                SQL.Add('AND (PK.CDNF > 0 OR PK.CDBX > 0)');
              end else
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

              SQL.Add('GROUP BY DECL,DECV,DECR,SKU,DECP,DGCP,DECA,DESC,UCOM');

              { Faturados }
              if ((not oEmpty(TAB_FK)) and (not oEmpty(TAB_FK_ITE))) then
              begin
                { TAB_FK }
                SQL.Add('UNION');
                SQL.Add('SELECT CL.CLI_FANT AS DECL,');
                SQL.Add('       CV.USU_DUSU AS DECV,');
                SQL.Add('       CR.REP_FANT AS DECR,');

                if RECRelatorio.Modelo = 'Produto' then
                   SQL.Add('CP.PRO_CPRO AS SKU,FK.DECP,FK.DGCP     ,TCT.DESCRICAO AS DECA,TSC.DESCRICAO AS DESC,') else
                if RECRelatorio.Modelo = 'Artigo' then
                   SQL.Add('CP.PRO_CART AS SKU,FK.DECP,NULL AS DGCP,TCT.DESCRICAO AS DECA,TSC.DESCRICAO AS DESC,');

                SQL.Add(' AVG(CP.PRO_PSCN)   AS PSCN,AVG(CP.PRO_PESO) AS PESO,AVG(CP.PRO_METR) AS METRO,AVG(CP.PRO_REND) AS REND,AVG(CP.UQTDE) AS UQTDE,');
                SQL.Add(' FK.ROM_DUNI        AS UCOM,SUM(FK.ROM_QTDE) AS QTDE,');
                SQL.Add(' CAST(SUM(FK.ROM_QTDE*FK.ROM_PREC*IIF(PK.ROM_CONC > 0,PK.ROM_CONC,1)) AS NUMERIC(15,2)) AS VTPV,');
                SQL.Add(' MAX(PK.ROM_DROM)   AS DTUC');

                SQL.Add('FROM '+TAB_FK+'     AS PK');
                SQL.Add('JOIN   TAB_PED      AS TP ON (TP.VEN_TIPO = PK.ROM_STPD)');
                SQL.Add('JOIN   CAD_CLI      AS CL ON (CL.ID = PK.ROM_CCLI)');
                SQL.Add('JOIN   CAD_USU      AS CV ON (CV.USU_CUSU = PK.ROM_CVEN)');
                SQL.Add('JOIN   CAD_REP      AS CR ON (CR.ID = PK.ROM_CREP)');
                SQL.Add('JOIN '+TAB_FK_ITE+' AS FK ON (FK.ROM_CCAB = PK.ID)');
                SQL.Add('JOIN   CAD_PRO      AS CP ON (CP.ID = FK.ROM_CPRO)');
                SQL.Add('JOIN   TAB_CAT      AS TCT ON (TCT.ID = CP.IDCAT)');
                SQL.Add('JOIN   TAB_SCT      AS TSC ON (TSC.ID = CP.IDSCT)');
                SQL.Add('LEFT');
                SQL.Add('JOIN   TAB_CEP_RMT  AS RM ON (CL.CLI_CEP BETWEEN RM.LOC_CEP_INI AND RM.LOC_CEP_FIM)');
                SQL.Add('LEFT');
                SQL.Add('JOIN   TAB_CEP_RNA  AS RN ON (CL.CLI_CEP BETWEEN RN.LOC_CEP_INI AND RN.LOC_CEP_FIM)');
                SQL.Add('LEFT');
                SQL.Add('JOIN   TAB_CEP_UFE  AS UF ON (UF.SIGLA = CL.CLI_ESTA)');

                SQL.Add('WHERE  PK.IDEP = '''+RECParametros.EP_ID+'''');
                SQL.Add('AND    PK.FAPD = 1');
                SQL.Add('AND    PK.STPD <> ''ABATIMENTO''');
                SQL.Add('AND    PK.STPD '+IFThen(Pos('DEV',UPPERCASE(RECRelatorio.Tipo)) > 0,'=','<>')+' ''DEVOLUÇÃO''');

                if UPPERCASE(RECRelatorio.DEEP) <> 'TODAS AS EMPRESAS' then SQL.Add('AND CP.IDEP = '''+IntToStr(RECRelatorio.IDEP)+'''');

                SQL.Add(RECRelatorio.IEC1ConsultaAnd);
                SQL.Add(RECRelatorio.IEC2ConsultaAnd);
                SQL.Add(RECRelatorio.IEC3ConsultaAnd);
                SQL.Add(RECRelatorio.IEC4ConsultaAnd);
                SQL.Add(RECRelatorio.IEFKDataAnd);

                SQL.Add('GROUP BY DECL,DECV,DECR,SKU,DECP,DGCP,DECA,DESC,UCOM');
              end;

              SQL.Add(')');
              SQL.Add('GROUP BY DECL,DECV,DECR,SKU,DECP,DGCP,DECA,DESC,UCOM');
              SQL.Add('ORDER BY 1,4');
              Open;
            end;
          end;
begin
  with qrpCliente_Produto_Atendido do
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
      WinControlFormDestroy(qrpCliente_Produto_Atendido);
    end;
end;

procedure TqrpCliente_Produto_Atendido.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpCliente_Produto_Atendido);
  end;
end;

procedure TqrpCliente_Produto_Atendido.QRBDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if RelatorioC_ID.AsInteger mod 2 = 0 then
     QRBDetalhe.Color := clWhite
  else
     QRBDetalhe.Color := $00E9E9E9;

  if Length(RelatorioDECL.AsString) > 20 then
     QRDDEFV.Font.Size := 6
  else
     QRDDEFV.Font.Size := 7;

  if Length(RelatorioSKU.AsString) > 12 then
     QRDSKU.Font.Size := 6
  else
     QRDSKU.Font.Size := 7;

  if Length(RelatorioC_DPDG.AsString) > 20 then
     QRDC_DPDG.Font.Size := 6
  else
     QRDC_DPDG.Font.Size := 7;

  if RelatorioDECA.AsString <> EmptyStr then
  begin
    QRLDECA.Enabled := True;
    QRDDECA.Enabled := True;

    if Length(RelatorioDECA.AsString) > 20 then
       QRDDECA.Font.Size := 6
    else
       QRDDECA.Font.Size := 7;
  end;

  if RelatorioDESC.AsString <> EmptyStr then
  begin
    QRLDESC.Enabled := True;
    QRDDESC.Enabled := True;

    if Length(RelatorioDESC.AsString) > 20 then
       QRDDESC.Font.Size := 6
    else
       QRDDESC.Font.Size := 7;
  end;
end;

procedure TqrpCliente_Produto_Atendido.RelatorioCalcFields(
  DataSet: TDataSet);
begin
  RelatorioC_ID.Value   := Relatorio.RecNo;
  RelatorioC_QTDE.Value := IntToStr(RelatorioQTDE.AsInteger)+' '+LeftStr(RelatorioUCOM.AsString,2);
  RelatorioC_DPDG.Value := IFThen(RelatorioDGCP.AsString <> EmptyStr,RelatorioDGCP.AsString,RelatorioDECP.AsString);
end;

procedure TqrpCliente_Produto_Atendido._Pesquisa_Categorias;
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

end.
