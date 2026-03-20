unit qProduto_Venda_Regiao_UF;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport,
     DateUtils, IDGlobal,
  BMDThread;

type
  TqrpProduto_Venda_Regiao_UF = class(TQuickRep)
    QRBDetalhes: TQRBand;
    QRBSumario: TQRBand;
    QRDC_ARTIGO: TQRDBText;
    QRDC_VALOR_01: TQRDBText;
    TCadastro: TIBTransaction;
    QCadastro: TIBQuery;
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
    QRDC_VALOR_07: TQRDBText;
    QRDC_VALOR_08: TQRDBText;
    QRDC_VALOR_09: TQRDBText;
    QRDC_VALOR_10: TQRDBText;
    QRDC_VALOR_11: TQRDBText;
    QRDC_VALOR_12: TQRDBText;
    RelatorioC_VALOR_01: TFloatField;
    RelatorioC_VALOR_02: TFloatField;
    RelatorioC_VALOR_03: TFloatField;
    RelatorioC_VALOR_04: TFloatField;
    RelatorioC_VALOR_05: TFloatField;
    RelatorioC_VALOR_06: TFloatField;
    RelatorioC_VALOR_07: TFloatField;
    RelatorioC_VALOR_08: TFloatField;
    RelatorioC_VALOR_09: TFloatField;
    RelatorioC_VALOR_10: TFloatField;
    RelatorioC_VALOR_11: TFloatField;
    RelatorioC_VALOR_12: TFloatField;
    QRDC_DESCRICAO: TQRDBText;
    RelatorioC_ARTIGO: TStringField;
    RelatorioC_DESCRICAO: TStringField;
    QRLTotal: TQRLabel;
    QRETotal_ITEM: TQRExpr;
    QREC_VALOR_01: TQRExpr;
    QREC_VALOR_02: TQRExpr;
    QREC_VALOR_03: TQRExpr;
    QREC_VALOR_04: TQRExpr;
    QREC_VALOR_05: TQRExpr;
    QREC_VALOR_06: TQRExpr;
    QREC_VALOR_07: TQRExpr;
    QREC_VALOR_08: TQRExpr;
    QREC_VALOR_11: TQRExpr;
    QREC_VALOR_10: TQRExpr;
    QREC_VALOR_09: TQRExpr;
    QREC_VALOR_12: TQRExpr;
    RelatorioC_VALOR_13: TFloatField;
    RelatorioC_VALOR_14: TFloatField;
    RelatorioC_VALOR_15: TFloatField;
    RelatorioC_VALOR_16: TFloatField;
    RelatorioC_VALOR_17: TFloatField;
    RelatorioC_VALOR_18: TFloatField;
    RelatorioC_VALOR_19: TFloatField;
    RelatorioC_VALOR_20: TFloatField;
    RelatorioC_VALOR_21: TFloatField;
    RelatorioC_VALOR_22: TFloatField;
    RelatorioC_VALOR_23: TFloatField;
    RelatorioC_VALOR_24: TFloatField;
    RelatorioC_VALOR_25: TFloatField;
    RelatorioC_VALOR_27: TFloatField;
    RelatorioC_VALOR_28: TFloatField;
    RelatorioC_VALOR_26: TFloatField;
    QRBFKCabecalho: TQRBand;
    QRBCabecalho: TQRBand;
    QRSCABECALHO: TQRShape;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRLC_ARTIGO: TQRLabel;
    QRLTC_VALOR_01: TQRLabel;
    QRLTC_VALOR_02: TQRLabel;
    QRLTC_VALOR_03: TQRLabel;
    QRLTC_VALOR_04: TQRLabel;
    QRLTC_VALOR_05: TQRLabel;
    QRLTC_VALOR_06: TQRLabel;
    QRLTC_VALOR_07: TQRLabel;
    QRLTC_VALOR_08: TQRLabel;
    QRLTC_VALOR_09: TQRLabel;
    QRLTC_VALOR_10: TQRLabel;
    QRLC_VALOR_12: TQRLabel;
    QRLTC_VALOR_11: TQRLabel;
    QRLC_VALOR_11: TQRLabel;
    QRLTC_VALOR_12: TQRLabel;
    QRLC_VALOR_10: TQRLabel;
    QRLC_VALOR_09: TQRLabel;
    QRLC_VALOR_08: TQRLabel;
    QRLC_VALOR_07: TQRLabel;
    QRLC_VALOR_06: TQRLabel;
    QRLC_VALOR_05: TQRLabel;
    QRLC_VALOR_04: TQRLabel;
    QRLC_VALOR_03: TQRLabel;
    QRLC_VALOR_02: TQRLabel;
    QRLC_VALOR_01: TQRLabel;
    RelatorioARTIGO: TIBStringField;
    RelatorioPRODUTO: TIBStringField;
    RelatorioDESCRICAO: TIBStringField;
    RelatorioCOR: TIBStringField;
    RelatorioDECPL: TIBStringField;
    RelatorioUCOM: TIBStringField;
    RelatorioRENDIMENTO: TIBBCDField;
    RelatorioQTUN: TIBBCDField;
    RelatorioUF_01: TIBStringField;
    RelatorioQTPV_01: TIBBCDField;
    RelatorioVTPV_01: TIBBCDField;
    RelatorioUF_02: TIBStringField;
    RelatorioQTPV_02: TIBBCDField;
    RelatorioVTPV_02: TIBBCDField;
    RelatorioUF_03: TIBStringField;
    RelatorioQTPV_03: TIBBCDField;
    RelatorioVTPV_03: TIBBCDField;
    RelatorioUF_04: TIBStringField;
    RelatorioQTPV_04: TIBBCDField;
    RelatorioVTPV_04: TIBBCDField;
    RelatorioUF_05: TIBStringField;
    RelatorioQTPV_05: TIBBCDField;
    RelatorioVTPV_05: TIBBCDField;
    RelatorioUF_06: TIBStringField;
    RelatorioQTPV_06: TIBBCDField;
    RelatorioVTPV_06: TIBBCDField;
    RelatorioUF_07: TIBStringField;
    RelatorioQTPV_07: TIBBCDField;
    RelatorioVTPV_07: TIBBCDField;
    RelatorioUF_08: TIBStringField;
    RelatorioQTPV_08: TIBBCDField;
    RelatorioVTPV_08: TIBBCDField;
    RelatorioUF_09: TIBStringField;
    RelatorioQTPV_09: TIBBCDField;
    RelatorioVTPV_09: TIBBCDField;
    RelatorioUF_10: TIBStringField;
    RelatorioQTPV_10: TIBBCDField;
    RelatorioVTPV_10: TIBBCDField;
    RelatorioUF_11: TIBStringField;
    RelatorioQTPV_11: TIBBCDField;
    RelatorioVTPV_11: TIBBCDField;
    RelatorioUF_12: TIBStringField;
    RelatorioQTPV_12: TIBBCDField;
    RelatorioVTPV_12: TIBBCDField;
    RelatorioUF_13: TIBStringField;
    RelatorioQTPV_13: TIBBCDField;
    RelatorioVTPV_13: TIBBCDField;
    RelatorioUF_14: TIBStringField;
    RelatorioQTPV_14: TIBBCDField;
    RelatorioVTPV_14: TIBBCDField;
    RelatorioUF_15: TIBStringField;
    RelatorioQTPV_15: TIBBCDField;
    RelatorioVTPV_15: TIBBCDField;
    RelatorioUF_16: TIBStringField;
    RelatorioQTPV_16: TIBBCDField;
    RelatorioVTPV_16: TIBBCDField;
    RelatorioUF_17: TIBStringField;
    RelatorioQTPV_17: TIBBCDField;
    RelatorioVTPV_17: TIBBCDField;
    RelatorioUF_18: TIBStringField;
    RelatorioQTPV_18: TIBBCDField;
    RelatorioVTPV_18: TIBBCDField;
    RelatorioUF_19: TIBStringField;
    RelatorioQTPV_19: TIBBCDField;
    RelatorioVTPV_19: TIBBCDField;
    RelatorioUF_20: TIBStringField;
    RelatorioQTPV_20: TIBBCDField;
    RelatorioVTPV_20: TIBBCDField;
    RelatorioUF_21: TIBStringField;
    RelatorioQTPV_21: TIBBCDField;
    RelatorioVTPV_21: TIBBCDField;
    RelatorioUF_22: TIBStringField;
    RelatorioQTPV_22: TIBBCDField;
    RelatorioVTPV_22: TIBBCDField;
    RelatorioUF_23: TIBStringField;
    RelatorioQTPV_23: TIBBCDField;
    RelatorioVTPV_23: TIBBCDField;
    RelatorioUF_24: TIBStringField;
    RelatorioQTPV_24: TIBBCDField;
    RelatorioVTPV_24: TIBBCDField;
    RelatorioUF_25: TIBStringField;
    RelatorioQTPV_25: TIBBCDField;
    RelatorioVTPV_25: TIBBCDField;
    RelatorioUF_26: TIBStringField;
    RelatorioQTPV_26: TIBBCDField;
    RelatorioVTPV_26: TIBBCDField;
    RelatorioUF_27: TIBStringField;
    RelatorioQTPV_27: TIBBCDField;
    RelatorioVTPV_27: TIBBCDField;
    RelatorioUF_28: TIBStringField;
    RelatorioQTPV_28: TIBBCDField;
    RelatorioVTPV_28: TIBBCDField;
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
    aUF: array of String;
    iColuna: Word;
    procedure _Pesquisa_Categorias;
    procedure _Pesquisa_Fornecedor;
    procedure _Define_Coluna(i: word);
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpProduto_Venda_Regiao_UF: TqrpProduto_Venda_Regiao_UF;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pThread, pExporta;

{$R *.DFM}

Constructor TqrpProduto_Venda_Regiao_UF.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpProduto_Venda_Regiao_UF.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter(Self,RECRelatorio); { Rodapé }

            QRDC_DESCRICAO.Width := QRDC_VALOR_01.Left - QRDC_ARTIGO.Width;
            QRDC_DESCRICAO.Left  := QRDC_ARTIGO.Width;

            if Pos('Metro',RECRelatorio.Modelo) > 0 then
               QRLTC_VALOR_01.Caption := 'Metros' else
            if Pos('Kilo',RECRelatorio.Modelo) > 0 then
               QRLTC_VALOR_01.Caption := 'Kilos' else
            if Pos('Valor',RECRelatorio.Modelo) > 0 then
               QRLTC_VALOR_01.Caption := 'Valor-R$';

            QRLTC_VALOR_02.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_03.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_04.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_05.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_06.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_07.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_08.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_09.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_10.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_11.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_12.Caption := QRLTC_VALOR_01.Caption;
          end;

          procedure _Select;
          var
            i: Integer;
          begin
            { Inicializa array }
            Initialize(aUF);
            SetLength (aUF,27);

            { Inicializa Coluna }
            iColuna := 0;

            { Modelo }
            if Pos('Artigo',RECRelatorio.Modelo) > 0 then
            begin
              RECRelatorio.Titulo := StringReplace(RECRelatorio.Titulo,'Produtos',RECRelatorio.Modelo,[rfReplaceAll,rfIgnoreCase]);

              QRLC_ARTIGO.Caption := 'Artigo';
              QRDC_ARTIGO.Width   := 60;

              SQLAdd := 'UF.ID AS IDUF,UF.SIGLA AS DEUF,CP.PRO_CART AS ARTIGO,CP.PRO_CART AS PRODUTO,FK.ROM_DPRO AS DESCRICAO,NULL AS COR,NULL AS DECPL,FK.ROM_DUNI AS UCOM,';
            end else
            begin
              QRLC_ARTIGO.Caption := 'Produto';
              QRDC_ARTIGO.Width   := 90;

              SQLAdd := 'UF.ID AS IDUF,UF.SIGLA AS DEUF,CP.PRO_CART AS ARTIGO,CP.PRO_CPRO AS PRODUTO,FK.ROM_DPRO AS DESCRICAO,FK.ROM_DCOR AS COR,'+
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

            oOTransact(TCadastro);
            with Relatorio do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT ARTIGO,PRODUTO,DESCRICAO,COR,DECPL,UCOM,');
              SQL.Add('       AVG(RENDIMENTO) AS RENDIMENTO,AVG(PESOB) AS PESOB,AVG(QTUN) AS QTUN,');
              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''1'',DEUF,Null)),'''') AS UF_01,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''1'',QTPV,Null)),0 )   AS QTPV_01,COALESCE(SUM(DECODE(IDUF,''1'',VTPV ,Null)),0) AS VTPV_01,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''2'',DEUF,Null)),'''') AS UF_02,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''2'',QTPV,Null)),0 )   AS QTPV_02,COALESCE(SUM(DECODE(IDUF,''2'',VTPV ,Null)),0) AS VTPV_02,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''3'',DEUF,Null)),'''') AS UF_03,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''3'',QTPV,Null)),0 )   AS QTPV_03,COALESCE(SUM(DECODE(IDUF,''3'',VTPV ,Null)),0) AS VTPV_03,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''4'',DEUF,Null)),'''') AS UF_04,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''4'',QTPV,Null)),0 )   AS QTPV_04,COALESCE(SUM(DECODE(IDUF,''4'',VTPV ,Null)),0) AS VTPV_04,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''5'',DEUF,Null)),'''') AS UF_05,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''5'',QTPV,Null)),0 )   AS QTPV_05,COALESCE(SUM(DECODE(IDUF,''5'',VTPV ,Null)),0) AS VTPV_05,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''6'',DEUF,Null)),'''') AS UF_06,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''6'',QTPV,Null)),0 )   AS QTPV_06,COALESCE(SUM(DECODE(IDUF,''6'',VTPV ,Null)),0) AS VTPV_06,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''7'',DEUF,Null)),'''') AS UF_07,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''7'',QTPV,Null)),0 )   AS QTPV_07,COALESCE(SUM(DECODE(IDUF,''7'',VTPV ,Null)),0) AS VTPV_07,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''8'',DEUF,Null)),'''') AS UF_08,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''8'',QTPV,Null)),0 )   AS QTPV_08,COALESCE(SUM(DECODE(IDUF,''8'',VTPV ,Null)),0) AS VTPV_08,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''9'',DEUF,Null)),'''') AS UF_09,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''9'',QTPV,Null)),0 )   AS QTPV_09,COALESCE(SUM(DECODE(IDUF,''9'',VTPV ,Null)),0) AS VTPV_09,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''10'',DEUF,Null)),'''') AS UF_10,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''10'',QTPV,Null)),0 )   AS QTPV_10,COALESCE(SUM(DECODE(IDUF,''10'',VTPV ,Null)),0) AS VTPV_10,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''11'',DEUF,Null)),'''') AS UF_11,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''11'',QTPV,Null)),0 )   AS QTPV_11,COALESCE(SUM(DECODE(IDUF,''11'',VTPV ,Null)),0) AS VTPV_11,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''12'',DEUF,Null)),'''') AS UF_12,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''12'',QTPV,Null)),0 )   AS QTPV_12,COALESCE(SUM(DECODE(IDUF,''12'',VTPV ,Null)),0) AS VTPV_12,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''13'',DEUF,Null)),'''') AS UF_13,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''13'',QTPV,Null)),0 )   AS QTPV_13,COALESCE(SUM(DECODE(IDUF,''13'',VTPV ,Null)),0) AS VTPV_13,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''14'',DEUF,Null)),'''') AS UF_14,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''14'',QTPV,Null)),0 )   AS QTPV_14,COALESCE(SUM(DECODE(IDUF,''14'',VTPV ,Null)),0) AS VTPV_14,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''15'',DEUF,Null)),'''') AS UF_15,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''15'',QTPV,Null)),0 )   AS QTPV_15,COALESCE(SUM(DECODE(IDUF,''15'',VTPV ,Null)),0) AS VTPV_15,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''16'',DEUF,Null)),'''') AS UF_16,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''16'',QTPV,Null)),0 )   AS QTPV_16,COALESCE(SUM(DECODE(IDUF,''16'',VTPV ,Null)),0) AS VTPV_16,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''17'',DEUF,Null)),'''') AS UF_17,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''17'',QTPV,Null)),0 )   AS QTPV_17,COALESCE(SUM(DECODE(IDUF,''17'',VTPV ,Null)),0) AS VTPV_17,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''18'',DEUF,Null)),'''') AS UF_18,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''18'',QTPV,Null)),0 )   AS QTPV_18,COALESCE(SUM(DECODE(IDUF,''18'',VTPV ,Null)),0) AS VTPV_18,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''19'',DEUF,Null)),'''') AS UF_19,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''19'',QTPV,Null)),0 )   AS QTPV_19,COALESCE(SUM(DECODE(IDUF,''19'',VTPV ,Null)),0) AS VTPV_19,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''20'',DEUF,Null)),'''') AS UF_20,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''20'',QTPV,Null)),0 )   AS QTPV_20,COALESCE(SUM(DECODE(IDUF,''20'',VTPV ,Null)),0) AS VTPV_20,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''21'',DEUF,Null)),'''') AS UF_21,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''21'',QTPV,Null)),0 )   AS QTPV_21,COALESCE(SUM(DECODE(IDUF,''21'',VTPV ,Null)),0) AS VTPV_21,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''22'',DEUF,Null)),'''') AS UF_22,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''22'',QTPV,Null)),0 )   AS QTPV_22,COALESCE(SUM(DECODE(IDUF,''22'',VTPV ,Null)),0) AS VTPV_22,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''23'',DEUF,Null)),'''') AS UF_23,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''23'',QTPV,Null)),0 )   AS QTPV_23,COALESCE(SUM(DECODE(IDUF,''23'',VTPV ,Null)),0) AS VTPV_23,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''24'',DEUF,Null)),'''') AS UF_24,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''24'',QTPV,Null)),0 )   AS QTPV_24,COALESCE(SUM(DECODE(IDUF,''24'',VTPV ,Null)),0) AS VTPV_24,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''25'',DEUF,Null)),'''') AS UF_25,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''25'',QTPV,Null)),0 )   AS QTPV_25,COALESCE(SUM(DECODE(IDUF,''25'',VTPV ,Null)),0) AS VTPV_25,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''26'',DEUF,Null)),'''') AS UF_26,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''26'',QTPV,Null)),0 )   AS QTPV_26,COALESCE(SUM(DECODE(IDUF,''26'',VTPV ,Null)),0) AS VTPV_26,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''27'',DEUF,Null)),'''') AS UF_27,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''27'',QTPV,Null)),0 )   AS QTPV_27,COALESCE(SUM(DECODE(IDUF,''27'',VTPV ,Null)),0) AS VTPV_27,');

              SQL.Add('       COALESCE(MAX(DECODE(IDUF,''28'',DEUF,Null)),'''') AS UF_28,');
              SQL.Add('       COALESCE(SUM(DECODE(IDUF,''28'',QTPV,Null)),0 )   AS QTPV_28,COALESCE(SUM(DECODE(IDUF,''28'',VTPV ,Null)),0) AS VTPV_28');

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
              SQL.Add('JOIN   TAB_CEP_UFE     AS UF ON (UF.SIGLA = CL.CLI_ESTA)');

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

              SQL.Add('GROUP BY IDUF,DEUF,ARTIGO,PRODUTO,DESCRICAO,COR,DECPL,UCOM');

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

                SQL.Add('GROUP BY IDUF,DEUF,ARTIGO,PRODUTO,DESCRICAO,COR,DECPL,UCOM');
              end;

              SQL.Add(')');
              SQL.Add('GROUP BY ARTIGO,PRODUTO,DESCRICAO,COR,DECPL,UCOM');
              SQL.Add('ORDER BY ARTIGO,COR');
              Open;

              for i := 1 to 27 do
              begin
                while not eof do
                begin
                  _Define_Coluna(i);
                  next;
                end;
                first;
              end;
            end;
          end;
begin
  with qrpProduto_Venda_Regiao_UF do
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
      WinControlFormDestroy(qrpProduto_Venda_Regiao_UF);
    end;
end;

procedure TqrpProduto_Venda_Regiao_UF.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TCadastro);

    Finalize(aUF);
    FillChar(aUF,SizeOf(aUF),0);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpProduto_Venda_Regiao_UF);
  end;
end;

procedure TqrpProduto_Venda_Regiao_UF.QRBDetalhesBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if Relatorio.RecNo mod 2 = 0 then
     QRBDetalhes.Color := clBtnFace else QRBDetalhes.Color := clWhite;
end;

procedure TqrpProduto_Venda_Regiao_UF.RelatorioCalcFields(DataSet: TDataSet);
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

  RelatorioC_VALOR_01.Value := RelatorioQTPV_01.AsFloat;
  RelatorioC_VALOR_02.Value := RelatorioQTPV_02.AsFloat;
  RelatorioC_VALOR_03.Value := RelatorioQTPV_03.AsFloat;
  RelatorioC_VALOR_04.Value := RelatorioQTPV_04.AsFloat;
  RelatorioC_VALOR_05.Value := RelatorioQTPV_05.AsFloat;
  RelatorioC_VALOR_06.Value := RelatorioQTPV_06.AsFloat;
  RelatorioC_VALOR_07.Value := RelatorioQTPV_07.AsFloat;
  RelatorioC_VALOR_08.Value := RelatorioQTPV_08.AsFloat;
  RelatorioC_VALOR_09.Value := RelatorioQTPV_09.AsFloat;
  RelatorioC_VALOR_10.Value := RelatorioQTPV_10.AsFloat;
  RelatorioC_VALOR_11.Value := RelatorioQTPV_11.AsFloat;
  RelatorioC_VALOR_12.Value := RelatorioQTPV_12.AsFloat;
  RelatorioC_VALOR_13.Value := RelatorioQTPV_13.AsFloat;
  RelatorioC_VALOR_14.Value := RelatorioQTPV_14.AsFloat;
  RelatorioC_VALOR_15.Value := RelatorioQTPV_15.AsFloat;
  RelatorioC_VALOR_16.Value := RelatorioQTPV_16.AsFloat;
  RelatorioC_VALOR_17.Value := RelatorioQTPV_17.AsFloat;
  RelatorioC_VALOR_18.Value := RelatorioQTPV_18.AsFloat;
  RelatorioC_VALOR_19.Value := RelatorioQTPV_19.AsFloat;
  RelatorioC_VALOR_20.Value := RelatorioQTPV_20.AsFloat;
  RelatorioC_VALOR_21.Value := RelatorioQTPV_21.AsFloat;
  RelatorioC_VALOR_22.Value := RelatorioQTPV_22.AsFloat;
  RelatorioC_VALOR_23.Value := RelatorioQTPV_23.AsFloat;
  RelatorioC_VALOR_24.Value := RelatorioQTPV_24.AsFloat;
  RelatorioC_VALOR_25.Value := RelatorioQTPV_25.AsFloat;
  RelatorioC_VALOR_26.Value := RelatorioQTPV_26.AsFloat;
  RelatorioC_VALOR_27.Value := RelatorioQTPV_27.AsFloat;
  RelatorioC_VALOR_28.Value := RelatorioQTPV_28.AsFloat;

  if Pos('Metro',RECRelatorio.Modelo) > 0 then
  begin
    if RelatorioUCOM.AsString = 'KG' then
    begin
      RelatorioC_VALOR_01.Value := RelatorioC_VALOR_01.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_02.Value := RelatorioC_VALOR_02.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_03.Value := RelatorioC_VALOR_03.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_04.Value := RelatorioC_VALOR_04.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_05.Value := RelatorioC_VALOR_05.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_06.Value := RelatorioC_VALOR_06.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_07.Value := RelatorioC_VALOR_07.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_08.Value := RelatorioC_VALOR_08.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_09.Value := RelatorioC_VALOR_09.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_10.Value := RelatorioC_VALOR_10.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_11.Value := RelatorioC_VALOR_11.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_12.Value := RelatorioC_VALOR_12.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_13.Value := RelatorioC_VALOR_13.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_14.Value := RelatorioC_VALOR_14.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_15.Value := RelatorioC_VALOR_15.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_16.Value := RelatorioC_VALOR_16.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_17.Value := RelatorioC_VALOR_17.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_18.Value := RelatorioC_VALOR_18.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_19.Value := RelatorioC_VALOR_19.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_20.Value := RelatorioC_VALOR_20.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_21.Value := RelatorioC_VALOR_21.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_22.Value := RelatorioC_VALOR_22.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_23.Value := RelatorioC_VALOR_23.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_24.Value := RelatorioC_VALOR_24.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_25.Value := RelatorioC_VALOR_25.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_26.Value := RelatorioC_VALOR_26.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_27.Value := RelatorioC_VALOR_27.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_28.Value := RelatorioC_VALOR_28.AsFloat * RelatorioRendimento.AsFloat;
    end else
    if RelatorioUCOM.AsString = 'M' then
    begin
      RelatorioC_VALOR_01.Value := RelatorioC_VALOR_01.AsFloat;
      RelatorioC_VALOR_02.Value := RelatorioC_VALOR_02.AsFloat;
      RelatorioC_VALOR_03.Value := RelatorioC_VALOR_03.AsFloat;
      RelatorioC_VALOR_04.Value := RelatorioC_VALOR_04.AsFloat;
      RelatorioC_VALOR_05.Value := RelatorioC_VALOR_05.AsFloat;
      RelatorioC_VALOR_06.Value := RelatorioC_VALOR_06.AsFloat;
      RelatorioC_VALOR_07.Value := RelatorioC_VALOR_07.AsFloat;
      RelatorioC_VALOR_08.Value := RelatorioC_VALOR_08.AsFloat;
      RelatorioC_VALOR_09.Value := RelatorioC_VALOR_09.AsFloat;
      RelatorioC_VALOR_10.Value := RelatorioC_VALOR_10.AsFloat;
      RelatorioC_VALOR_11.Value := RelatorioC_VALOR_11.AsFloat;
      RelatorioC_VALOR_12.Value := RelatorioC_VALOR_12.AsFloat;
      RelatorioC_VALOR_13.Value := RelatorioC_VALOR_13.AsFloat;
      RelatorioC_VALOR_14.Value := RelatorioC_VALOR_14.AsFloat;
      RelatorioC_VALOR_15.Value := RelatorioC_VALOR_15.AsFloat;
      RelatorioC_VALOR_16.Value := RelatorioC_VALOR_16.AsFloat;
      RelatorioC_VALOR_17.Value := RelatorioC_VALOR_17.AsFloat;
      RelatorioC_VALOR_18.Value := RelatorioC_VALOR_18.AsFloat;
      RelatorioC_VALOR_19.Value := RelatorioC_VALOR_19.AsFloat;
      RelatorioC_VALOR_20.Value := RelatorioC_VALOR_20.AsFloat;
      RelatorioC_VALOR_21.Value := RelatorioC_VALOR_21.AsFloat;
      RelatorioC_VALOR_22.Value := RelatorioC_VALOR_22.AsFloat;
      RelatorioC_VALOR_23.Value := RelatorioC_VALOR_23.AsFloat;
      RelatorioC_VALOR_24.Value := RelatorioC_VALOR_24.AsFloat;
      RelatorioC_VALOR_25.Value := RelatorioC_VALOR_25.AsFloat;
      RelatorioC_VALOR_26.Value := RelatorioC_VALOR_26.AsFloat;
      RelatorioC_VALOR_27.Value := RelatorioC_VALOR_27.AsFloat;
      RelatorioC_VALOR_28.Value := RelatorioC_VALOR_28.AsFloat;
    end;
  end else
  if Pos('Kilo',RECRelatorio.Modelo) > 0 then
  begin
    if RelatorioUCOM.AsString = 'KG' then
    begin
      RelatorioC_VALOR_01.Value := RelatorioC_VALOR_01.AsFloat;
      RelatorioC_VALOR_02.Value := RelatorioC_VALOR_02.AsFloat;
      RelatorioC_VALOR_03.Value := RelatorioC_VALOR_03.AsFloat;
      RelatorioC_VALOR_04.Value := RelatorioC_VALOR_04.AsFloat;
      RelatorioC_VALOR_05.Value := RelatorioC_VALOR_05.AsFloat;
      RelatorioC_VALOR_06.Value := RelatorioC_VALOR_06.AsFloat;
      RelatorioC_VALOR_07.Value := RelatorioC_VALOR_07.AsFloat;
      RelatorioC_VALOR_08.Value := RelatorioC_VALOR_08.AsFloat;
      RelatorioC_VALOR_09.Value := RelatorioC_VALOR_09.AsFloat;
      RelatorioC_VALOR_10.Value := RelatorioC_VALOR_10.AsFloat;
      RelatorioC_VALOR_11.Value := RelatorioC_VALOR_11.AsFloat;
      RelatorioC_VALOR_12.Value := RelatorioC_VALOR_12.AsFloat;
      RelatorioC_VALOR_13.Value := RelatorioC_VALOR_13.AsFloat;
      RelatorioC_VALOR_14.Value := RelatorioC_VALOR_14.AsFloat;
      RelatorioC_VALOR_15.Value := RelatorioC_VALOR_15.AsFloat;
      RelatorioC_VALOR_16.Value := RelatorioC_VALOR_16.AsFloat;
      RelatorioC_VALOR_17.Value := RelatorioC_VALOR_17.AsFloat;
      RelatorioC_VALOR_18.Value := RelatorioC_VALOR_18.AsFloat;
      RelatorioC_VALOR_19.Value := RelatorioC_VALOR_19.AsFloat;
      RelatorioC_VALOR_20.Value := RelatorioC_VALOR_20.AsFloat;
      RelatorioC_VALOR_21.Value := RelatorioC_VALOR_21.AsFloat;
      RelatorioC_VALOR_22.Value := RelatorioC_VALOR_22.AsFloat;
      RelatorioC_VALOR_23.Value := RelatorioC_VALOR_23.AsFloat;
      RelatorioC_VALOR_24.Value := RelatorioC_VALOR_24.AsFloat;
      RelatorioC_VALOR_25.Value := RelatorioC_VALOR_25.AsFloat;
      RelatorioC_VALOR_26.Value := RelatorioC_VALOR_26.AsFloat;
      RelatorioC_VALOR_27.Value := RelatorioC_VALOR_27.AsFloat;
      RelatorioC_VALOR_28.Value := RelatorioC_VALOR_28.AsFloat;
    end else
    begin
      RelatorioC_VALOR_01.Value := RelatorioC_VALOR_01.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_02.Value := RelatorioC_VALOR_02.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_03.Value := RelatorioC_VALOR_03.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_04.Value := RelatorioC_VALOR_04.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_05.Value := RelatorioC_VALOR_05.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_06.Value := RelatorioC_VALOR_06.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_07.Value := RelatorioC_VALOR_07.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_08.Value := RelatorioC_VALOR_08.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_09.Value := RelatorioC_VALOR_09.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_10.Value := RelatorioC_VALOR_10.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_11.Value := RelatorioC_VALOR_11.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_12.Value := RelatorioC_VALOR_12.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_13.Value := RelatorioC_VALOR_13.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_14.Value := RelatorioC_VALOR_14.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_15.Value := RelatorioC_VALOR_15.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_16.Value := RelatorioC_VALOR_16.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_17.Value := RelatorioC_VALOR_17.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_18.Value := RelatorioC_VALOR_18.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_19.Value := RelatorioC_VALOR_19.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_20.Value := RelatorioC_VALOR_20.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_21.Value := RelatorioC_VALOR_21.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_22.Value := RelatorioC_VALOR_22.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_23.Value := RelatorioC_VALOR_23.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_24.Value := RelatorioC_VALOR_24.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_25.Value := RelatorioC_VALOR_25.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_26.Value := RelatorioC_VALOR_26.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_27.Value := RelatorioC_VALOR_27.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_28.Value := RelatorioC_VALOR_28.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
    end;
  end else
  if Pos('Valor',RECRelatorio.Modelo) > 0 then
  begin
  RelatorioC_VALOR_01.Value := RelatorioVTPV_01.AsFloat;
  RelatorioC_VALOR_02.Value := RelatorioVTPV_02.AsFloat;
  RelatorioC_VALOR_03.Value := RelatorioVTPV_03.AsFloat;
  RelatorioC_VALOR_04.Value := RelatorioVTPV_04.AsFloat;
  RelatorioC_VALOR_05.Value := RelatorioVTPV_05.AsFloat;
  RelatorioC_VALOR_06.Value := RelatorioVTPV_06.AsFloat;
  RelatorioC_VALOR_07.Value := RelatorioVTPV_07.AsFloat;
  RelatorioC_VALOR_08.Value := RelatorioVTPV_08.AsFloat;
  RelatorioC_VALOR_09.Value := RelatorioVTPV_09.AsFloat;
  RelatorioC_VALOR_10.Value := RelatorioVTPV_10.AsFloat;
  RelatorioC_VALOR_11.Value := RelatorioVTPV_11.AsFloat;
  RelatorioC_VALOR_12.Value := RelatorioVTPV_12.AsFloat;
  RelatorioC_VALOR_13.Value := RelatorioVTPV_13.AsFloat;
  RelatorioC_VALOR_14.Value := RelatorioVTPV_14.AsFloat;
  RelatorioC_VALOR_15.Value := RelatorioVTPV_15.AsFloat;
  RelatorioC_VALOR_16.Value := RelatorioVTPV_16.AsFloat;
  RelatorioC_VALOR_17.Value := RelatorioVTPV_17.AsFloat;
  RelatorioC_VALOR_18.Value := RelatorioVTPV_18.AsFloat;
  RelatorioC_VALOR_19.Value := RelatorioVTPV_19.AsFloat;
  RelatorioC_VALOR_20.Value := RelatorioVTPV_20.AsFloat;
  RelatorioC_VALOR_21.Value := RelatorioVTPV_21.AsFloat;
  RelatorioC_VALOR_22.Value := RelatorioVTPV_22.AsFloat;
  RelatorioC_VALOR_23.Value := RelatorioVTPV_23.AsFloat;
  RelatorioC_VALOR_24.Value := RelatorioVTPV_24.AsFloat;
  RelatorioC_VALOR_25.Value := RelatorioVTPV_25.AsFloat;
  RelatorioC_VALOR_26.Value := RelatorioVTPV_26.AsFloat;
  RelatorioC_VALOR_27.Value := RelatorioVTPV_27.AsFloat;
  RelatorioC_VALOR_28.Value := RelatorioVTPV_28.AsFloat;
  end;
end;

procedure TqrpProduto_Venda_Regiao_UF._Pesquisa_Categorias;
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

procedure TqrpProduto_Venda_Regiao_UF._Pesquisa_Fornecedor;
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

procedure TqrpProduto_Venda_Regiao_UF._Define_Coluna(i: word);
var
  QRLComponente: TQRLabel;
  QRDComponente: TQRDBText;
  QREComponente: TQRExpr;
begin
  if ((not oEmpty(Relatorio.FieldByName('UF_'+oStrZero(i,2)).AsString)) and (iColuna < 12)) then
  begin
    { Definindo Atributos }
    if not AnsiMatchStr(Relatorio.FieldByName('UF_'+oStrZero(i,2)).AsString,aUF) then
    begin
      aUF[AnsiIndexStr('',aUF)] := Relatorio.FieldByName('UF_'+oStrZero(i,2)).AsString;

      { Localizando Componente no Form }
      Inc(iColuna);
      QRLComponente := FindComponent('QRLC_VALOR_'+oStrZero(iColuna,2)) as TQRLabel;
      QRDComponente := FindComponent('QRDC_VALOR_'+oStrZero(iColuna,2)) as TQRDBText;
      QREComponente := FindComponent('QREC_VALOR_'+oStrZero(iColuna,2)) as TQRExpr;

      try
      QRLComponente.Caption    := Relatorio.FieldByName('UF_'+oStrZero(i,2)).AsString;
      QRLComponente.Enabled    := True;
      QRDComponente.DataField  := Relatorio.FieldByName('C_VALOR_'+oStrZero(i,2)).FieldName;
      QRDComponente.Enabled    := True;
      QREComponente.Expression := 'SUM(Relatorio.C_VALOR_'+oStrZero(i,2)+')';
      QREComponente.Enabled    := True;
      except
        tag := i;
        icoluna := i;
      end;
    end;
  end;
end;

end.
