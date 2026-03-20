unit qGCadastros_Venda_Produto;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport,
     IDGlobal;

type
  TqrpGCadastros_Venda_Produto = class(TQuickRep)
    QRBDetalhe: TQRBand;
    QRGGrupo: TQRGroup;
    QRGSubGrupo: TQRGroup;
    QRBSubTotal: TQRBand;
    QRBTotalGeral: TQRBand;
    QRDDECLCVCR: TQRDBText;
    TRelatorio: TIBTransaction;
    QRLProduto: TQRLabel;
    Relatorio: TIBQuery;
    QRDVTPV: TQRDBText;
    QRLVTPV: TQRLabel;
    QRDProduto: TQRDBText;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRLDescricao: TQRLabel;
    QRDDescricao: TQRDBText;
    QRLC_QTPV: TQRLabel;
    QRDC_QTPV: TQRDBText;
    RelatorioC_ID: TIntegerField;
    QREVTPV: TQRExpr;
    QRESubTotal_ITEM: TQRExpr;
    QRLSubTotal: TQRLabel;
    QRETotal_ITEM: TQRExpr;
    QRLTotal: TQRLabel;
    QRSVTPV: TQRExpr;
    QREC_QTPV: TQRExpr;
    QRSC_QTPV: TQRExpr;
    RelatorioC_MTPV: TFloatField;
    RelatorioC_KGPV: TFloatField;
    RelatorioC_QTPV: TStringField;
    QRBCabecalho: TQRBand;
    QRSCABECALHO: TQRShape;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRLabel1: TQRLabel;
    QRLEEP: TQRLabel;
    QRLEPE: TQRLabel;
    QRLUCOM: TQRLabel;
    QRLSKU: TQRLabel;
    QRLEPP: TQRLabel;
    RelatorioDECLCVCR: TIBStringField;
    RelatorioARTIGO: TIBStringField;
    RelatorioPRODUTO: TIBStringField;
    RelatorioDESCRICAO: TIBStringField;
    RelatorioCOR: TIBStringField;
    RelatorioUCOM: TIBStringField;
    RelatorioRENDIMENTO: TIBBCDField;
    RelatorioQTUN: TIBBCDField;
    RelatorioQTPV: TIBBCDField;
    RelatorioVTPV: TIBBCDField;
    RelatorioPESOB: TIBBCDField;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure RelatorioCalcFields(DataSet: TDataSet);
  private
    RECRelatorio: TRECRelatorios;
    TAB_PK,TAB_PK_ITE,TAB_FK,TAB_FK_ITE,
    SQLAdd: String;
    procedure _Pesquisa_Categorias;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpGCadastros_Venda_Produto: TqrpGCadastros_Venda_Produto;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TqrpGCadastros_Venda_Produto.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpGCadastros_Venda_Produto.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter(Self,RECRelatorio); { Rodapé }
          end;

          procedure _Select;
          begin
            { Título }
            SQLAdd := 'SELECT '+IFThen(Pos('Vendedores'    ,RECRelatorio.Titulo) > 0,'CV.USU_DUSU',
                                IFThen(Pos('Representantes',RECRelatorio.Titulo) > 0,'CR.REP_FANT',
                                IFThen(Pos('Grupos'        ,RECRelatorio.Titulo) > 0,'CL.CLI_DEGP','CL.CLI_FANT')))+' AS DECLCVCR,';

            { Modelo }
            if Pos('Artigo',RECRelatorio.Modelo) > 0 then
            begin
              RECRelatorio.Titulo := StringReplace(RECRelatorio.Titulo,'Produtos',RECRelatorio.Modelo,[rfReplaceAll,rfIgnoreCase]);
              QRLProduto.Caption   := 'Artigo';
              QRDProduto.DataField := 'Artigo';

              QRLDescricao.Enabled := False;
              QRDDescricao.Enabled := False;

              QRLC_QTPV.Left := QRLDescricao.Left;
              QRDC_QTPV.Left := QRLC_QTPV.Left;
              QREC_QTPV.Left := QRLC_QTPV.Left;
              QRSC_QTPV.Left := QRLC_QTPV.Left;

              QRLVTPV.AlignToBand := False;
              QRLVTPV.Left := QRLC_QTPV.Left + 100;
              QRDVTPV.AlignToBand := False;
              QRDVTPV.Left := QRLVTPV.Left;
              QREVTPV.AlignToBand := False;
              QREVTPV.Left := QRLVTPV.Left;
              QRSVTPV.AlignToBand := False;
              QRSVTPV.Left := QRLVTPV.Left;

              SQLAdd := SQLAdd + 'CP.PRO_CART AS ARTIGO,CP.PRO_CART AS PRODUTO,CP.PRO_CART AS DESCRICAO,NULL AS COR,FK.ROM_DUNI AS UCOM,';
            end else
              SQLAdd := SQLAdd + 'CP.PRO_CART AS ARTIGO,CP.PRO_CPRO AS PRODUTO,FK.ROM_DPRO||'' ''||COALESCE(FK.ROM_DCOR,'''') AS DESCRICAO,FK.ROM_DCOR AS COR,FK.ROM_DUNI AS UCOM,';

            if Pos('Metro',RECRelatorio.Modelo) > 0 then
            begin
              QRLC_QTPV.Caption    := 'Metros';
              QRDC_QTPV.DataField  := 'C_MTPV';
              QREC_QTPV.Enabled    := True;
              QREC_QTPV.Expression := 'SUM(Relatorio.C_MTPV)';
              QRSC_QTPV.Enabled    := True;
              QRSC_QTPV.Expression := 'SUM(Relatorio.C_MTPV)';

              QRLVTPV.Caption    := 'Kilos';
              QRDVTPV.DataField  := 'C_KGPV';
              QREVTPV.Expression := 'SUM(Relatorio.C_KGPV)';
            end;
            
            { Definindo Tabelas }
            TAB_PK     := oREPZero(IFThen(RECRelatorio.Tipo = 'Programações','PED_PRG_CAB','PED_VEN_CAB'),'_',RECParametros.EP_ID,3);
            TAB_PK_ITE := oREPZero(IFThen(RECRelatorio.Tipo = 'Programações','PED_PRG_ITE','PED_VEN_ITE'),'_',RECParametros.EP_ID,3);
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
              if RECRelatorio.IEC3ConsultaCaption = 'Categorias' then
                 RECRelatorio.IEC3ConsultaAnd := 'AND EXISTS (SELECT PSQ.ID FROM CAD_PRO_PSQ AS PSQ WHERE PSQ.ID = CP.IDAK AND '+RECRelatorio.IEC3ConsultaField+' '+RECRelatorio.IEC3ConsultaWhere+' '''+RECRelatorio.IEC3ConsultaLike1+Trim(RECRelatorio.PEC3ConsultaText)+RECRelatorio.IEC3ConsultaLike2+''')'
              else
                 RECRelatorio.IEC3ConsultaAnd := 'AND '+RECRelatorio.IEC3ConsultaField+' '+RECRelatorio.IEC3ConsultaWhere+' '''+RECRelatorio.IEC3ConsultaLike1+Trim(RECRelatorio.PEC3ConsultaText)+RECRelatorio.IEC3ConsultaLike2+'''';
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC3ConsultaCaption +': '+RECRelatorio.PEC3ConsultaText +' ';
            end;

            if RECRelatorio.PEC4ConsultaText <> 'TODOS' then
            begin
              if RECRelatorio.IEC4ConsultaCaption = 'Categorias' then
                 _Pesquisa_Categorias
              else
                 RECRelatorio.IEC4ConsultaAnd := 'AND '+RECRelatorio.IEC4ConsultaField+' '+RECRelatorio.IEC4ConsultaWhere+' '''+RECRelatorio.IEC4ConsultaLike1+Trim(RECRelatorio.PEC4ConsultaText)+RECRelatorio.IEC4ConsultaLike2+'''';
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC4ConsultaCaption +': '+RECRelatorio.PEC4ConsultaText +' ';
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
              SQL.Add('SELECT DECLCVCR,ARTIGO,PRODUTO,DESCRICAO,COR,UCOM,');
              SQL.Add('       AVG(RENDIMENTO) AS RENDIMENTO,AVG(PESOB) AS PESOB,AVG(QTUN) AS QTUN,');
              SQL.Add('       SUM(QTPV) AS QTPV,SUM(VTPV) AS VTPV');
              SQL.Add('FROM (');

              { TAB_PK }
              SQL.Add(SQLAdd);
              SQL.Add('       AVG(CP.PRO_REND) AS RENDIMENTO,AVG(CP.PRO_PESO) AS PESOB,AVG(CP.UQTDE) AS QTUN,');
              SQL.Add('       SUM(FK.ROM_QTDE) AS QTPV,CAST(SUM(IIF(PK.ROM_STPD = ''DEVOLUÇÃO'',FK.ROM_TOTA*IIF(PK.ROM_CONC > 0,PK.ROM_CONC,1),FK.ROM_TOTA)) AS NUMERIC(15,2)) AS VTPV');

              SQL.Add('FROM '+TAB_PK+'     AS PK');
              SQL.Add('JOIN   TAB_PED      AS TP ON (TP.VEN_TIPO = PK.ROM_STPD)');
              SQL.Add('JOIN   CAD_CLI      AS CL ON (CL.ID = PK.ROM_CCLI)');
              SQL.Add('JOIN   CAD_USU      AS CV ON (CV.ID = PK.ROM_CVEN)');
              SQL.Add('JOIN   CAD_REP      AS CR ON (CR.ID = PK.ROM_CREP)');
              SQL.Add('JOIN '+TAB_PK_ITE+' AS FK ON (FK.ROM_CCAB = PK.ID)');
              SQL.Add('JOIN   CAD_PRO      AS CP ON (CP.ID = FK.ROM_CPRO)');

              SQL.Add('WHERE PK.IDEP = '''+RECParametros.EP_ID+'''');
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

              SQL.Add('GROUP BY DECLCVCR,ARTIGO,PRODUTO,DESCRICAO,COR,UCOM');

              { Faturados }
              if ((not oEmpty(TAB_FK)) and (not oEmpty(TAB_FK_ITE))) then
              begin
                { TAB_FK }
                SQL.Add('UNION');
                SQL.Add(SQLAdd);
                SQL.Add('       AVG(CP.PRO_REND) AS RENDIMENTO,AVG(CP.PRO_PESO) AS PESOB,AVG(CP.UQTDE) AS QTUN,'); { RICARDO }
                SQL.Add('       SUM(FK.ROM_QTDE) AS QTPV,CAST(SUM(FK.ROM_QTDE*FK.ROM_PREC*IIF(PK.ROM_CONC > 0,PK.ROM_CONC,1)) AS NUMERIC(15,2)) AS VTPV');

                SQL.Add('FROM '+TAB_FK+'     AS PK');
                SQL.Add('JOIN   TAB_PED      AS TP ON (TP.VEN_TIPO = PK.ROM_STPD)');
                SQL.Add('JOIN   CAD_CLI      AS CL ON (CL.ID = PK.ROM_CCLI)');
                SQL.Add('JOIN   CAD_USU      AS CV ON (CV.ID = PK.ROM_CVEN)');
                SQL.Add('JOIN   CAD_REP      AS CR ON (CR.ID = PK.ROM_CREP)');
                SQL.Add('JOIN '+TAB_FK_ITE+' AS FK ON (FK.ROM_CCAB = PK.ID)');
                SQL.Add('JOIN   CAD_PRO      AS CP ON (CP.ID = FK.ROM_CPRO)');

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

                SQL.Add('GROUP BY DECLCVCR,ARTIGO,PRODUTO,DESCRICAO,COR,UCOM');
              end;

              SQL.Add(')');
              SQL.Add('GROUP BY DECLCVCR,ARTIGO,PRODUTO,DESCRICAO,COR,UCOM');
              SQL.Add('ORDER BY 1,2,5');
              Open;
            end;
          end;
begin
  with qrpGCadastros_Venda_Produto do
    try
      _Report;
      _Select;

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
      WinControlFormDestroy(qrpGCadastros_Venda_Produto);
    end;
end;

procedure TqrpGCadastros_Venda_Produto.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpGCadastros_Venda_Produto);
  end;
end;

procedure TqrpGCadastros_Venda_Produto.RelatorioCalcFields(
  DataSet: TDataSet);
begin
  RelatorioC_ID.Value   := Relatorio.RecNo;
  RelatorioC_QTPV.Value := IntToStr(RelatorioQTPV.AsInteger)+' '+RelatorioUCOM.AsString;
  if RelatorioUCOM.AsString = 'KG' then
  begin                                                                                                        
    RelatorioC_KGPV.Value := RelatorioQTPV.AsFloat;
    RelatorioC_MTPV.Value := RelatorioQTPV.AsFloat * RelatorioRendimento.AsFloat;
  end else
  if RelatorioUCOM.AsString = 'M' then
  begin
    RelatorioC_MTPV.Value := RelatorioQTPV.AsFloat;
    RelatorioC_KGPV.Value := RelatorioQTPV.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
  end;
end;

procedure TqrpGCadastros_Venda_Produto._Pesquisa_Categorias;
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
