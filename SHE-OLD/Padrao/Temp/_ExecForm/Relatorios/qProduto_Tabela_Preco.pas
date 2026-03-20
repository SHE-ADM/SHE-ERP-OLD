unit qProduto_Tabela_Preco;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport,
     IBSQL;

type
  TqrpProduto_Tabela_Preco = class(TQuickRep)
    TRelatorio: TIBTransaction;
    Relatorio: TIBQuery;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRBFKCabecalho: TQRBand;
    QRBDetalhe: TQRBand;
    QRBSumario: TQRBand;
    RelatorioC_ID: TIntegerField;
    QRETotal_ITEM: TQRExpr;
    QRLTotal: TQRLabel;
    RelatorioARTIGO: TIBStringField;
    RelatorioVUTA: TFloatField;
    RelatorioQUTA: TLargeintField;
    RelatorioVUME: TFloatField;
    RelatorioQUME: TLargeintField;
    RelatorioVUMA: TFloatField;
    RelatorioQUMA: TLargeintField;
    QRDC_PUMA: TQRDBText;
    QRDC_PUME: TQRDBText;
    RelatorioC_TOTAL: TIntegerField;
    RelatorioC_PUTA: TFloatField;
    RelatorioC_PUMA: TFloatField;
    RelatorioC_PUME: TFloatField;
    RelatorioDESCRICAO: TIBStringField;
    QRDDescricao: TQRDBText;
    RelatorioVUNIT: TFloatField;
    QRDVUnit: TQRDBText;
    QRBCabecalho: TQRBand;
    QRSCABECALHO: TQRShape;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRLArtigo: TQRLabel;
    QRLDescricao: TQRLabel;
    QRLVUnit: TQRLabel;
    QRLVUTA: TQRLabel;
    QRLC_DEMA: TQRLabel;
    QRLC_DEME: TQRLabel;
    QRDVUME: TQRDBText;
    QRDVUMA: TQRDBText;
    QRDVUTA: TQRDBText;
    RelatorioSEGMENTO: TIBStringField;
    RelatorioGRUPO: TIBStringField;
    RelatorioSUBGRUPO: TIBStringField;
    RelatorioCATEGORIA: TIBStringField;
    RelatorioSUBCATEGORIA: TIBStringField;
    QRLSubCategoria: TQRLabel;
    QRDSubCategoria: TQRDBText;
    QRLCategoria: TQRLabel;
    QRDCategoria: TQRDBText;
    QRDSubGrupo: TQRDBText;
    QRDGrupo: TQRDBText;
    QRDSegmento: TQRDBText;
    QRLSubGrupo: TQRLabel;
    QRLGrupo: TQRLabel;
    QRLSegmento: TQRLabel;
    QRDArtigo: TQRDBText;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    RECRelatorio: TRECRelatorios;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpProduto_Tabela_Preco: TqrpProduto_Tabela_Preco;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TqrpProduto_Tabela_Preco.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpProduto_Tabela_Preco.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter(Self,RECRelatorio); { Rodapé }

            QRLSegmento.Enabled     := (RECRelatorio.PrintTag > 1);
            QRDSegmento.Enabled     := (RECRelatorio.PrintTag > 1);
            QRLGrupo.Enabled        := (RECRelatorio.PrintTag > 1);
            QRDGrupo.Enabled        := (RECRelatorio.PrintTag > 1);
            QRLSubGrupo.Enabled     := (RECRelatorio.PrintTag > 1);
            QRDSubGrupo.Enabled     := (RECRelatorio.PrintTag > 1);
            QRLCategoria.Enabled    := (RECRelatorio.PrintTag > 1);
            QRDCategoria.Enabled    := (RECRelatorio.PrintTag > 1);
            QRLSubCategoria.Enabled := (RECRelatorio.PrintTag > 1);
            QRDSubCategoria.Enabled := (RECRelatorio.PrintTag > 1);
          end;

          procedure _Select;
          begin
            { Definindo Tabelas }
            RECRelatorio.TAB_PK     := oREPZero(IFThen(RECRelatorio.Tipo = 'Programações','PED_PRG_CAB','PED_VEN_CAB'),'_',RECParametros.EP_ID,3);
            RECRelatorio.TAB_PK_ITE := oREPZero(IFThen(RECRelatorio.Tipo = 'Programações','PED_PRG_ITE','PED_VEN_ITE'),'_',RECParametros.EP_ID,3);

            { Filtros Between }
            if (RECRelatorio.PEC1CodigoText <> 'TODOS') and (RECRelatorio.PEC2CodigoText <> 'TODOS') and
               (RECRelatorio.PEC1CodigoText <> '0')     and (RECRelatorio.PEC2CodigoText <> '0') then
               RECRelatorio.RodapeFiltros  := RECRelatorio.RodapeFiltros + RECRelatorio.PEC1CodigoCaption+' '+RECRelatorio.PEC2CodigoCaption+' '
            else
               RECRelatorio.PEC1CodigoText := '0';

            { Filtros Gerais }   
            if RECRelatorio.PEC1ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC1ConsultaAnd := 'AND '+RECRelatorio.IEC1ConsultaField+' '+RECRelatorio.IEC1ConsultaWhere+' '''+RECRelatorio.IEC1ConsultaLike1+Trim(RECRelatorio.PEC1ConsultaText)+RECRelatorio.IEC1ConsultaLike2+'''';
              RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.IEC1ConsultaCaption +': '+RECRelatorio.PEC1ConsultaText +' ';
            end;

            if RECRelatorio.PEC2ConsultaText <> 'TODOS' then
            begin
              if RECRelatorio.IEC2ConsultaCaption = 'Categorias' then
                 RECRelatorio.IEC2ConsultaAnd := 'AND EXISTS (SELECT PSQ.ID FROM CAD_PRO_PSQ AS PSQ WHERE PSQ.ID = CP.IDAK AND '+RECRelatorio.IEC2ConsultaField+' '+RECRelatorio.IEC2ConsultaWhere+' '''+RECRelatorio.IEC2ConsultaLike1+Trim(RECRelatorio.PEC2ConsultaText)+RECRelatorio.IEC2ConsultaLike2+''')'
              else
                 RECRelatorio.IEC2ConsultaAnd := 'AND '+RECRelatorio.IEC2ConsultaField+' '+RECRelatorio.IEC2ConsultaWhere+' '''+RECRelatorio.IEC2ConsultaLike1+Trim(RECRelatorio.PEC2ConsultaText)+RECRelatorio.IEC2ConsultaLike2+'''';
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC2ConsultaCaption +': '+RECRelatorio.PEC2ConsultaText +' ';
            end;

            if RECRelatorio.PEC3ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC3ConsultaAnd := 'AND EXISTS (SELECT PSQ.ID FROM CAD_PRO_PSQ AS PSQ WHERE PSQ.ID = CP.IDAK AND '+RECRelatorio.IEC3ConsultaField+' '+RECRelatorio.IEC3ConsultaWhere+' '''+RECRelatorio.IEC3ConsultaLike1+Trim(RECRelatorio.PEC3ConsultaText)+RECRelatorio.IEC3ConsultaLike2+''')';
              RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.IEC3ConsultaCaption +': '+RECRelatorio.PEC3ConsultaText +' ';
            end;

            if RECRelatorio.PEC4ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC4ConsultaAnd := 'AND '+RECRelatorio.IEC4ConsultaField+' '+RECRelatorio.IEC4ConsultaWhere+' '''+RECRelatorio.IEC4ConsultaLike1+Trim(RECRelatorio.PEC4ConsultaText)+RECRelatorio.IEC4ConsultaLike2+'''';
              RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.IEC4ConsultaCaption +': '+RECRelatorio.PEC4ConsultaText +' ';
            end;

            { Filtros Datas }
            if not oEmpty(RECRelatorio.IEDataField) then
            begin
              RECRelatorio.IEDataField   := 'CAST(PK.DTCA AS DATE)';
              RECRelatorio.IEDataAnd     := 'AND '+RECRelatorio.IEDataField+' BETWEEN '''+ formatDateTime('mm/dd/yy',RECRelatorio.IEDataText1)+''' AND '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText2)+'''';
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + 'Período por '  + oPrimeiraLetraMaiuscula(RECRelatorio.IEDataCaption)+': '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1)+' Até '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);
            end;

            oOTransact(TRelatorio);
            with Relatorio do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT'); 

              if RECRelatorio.Modelo = 'Artigo' then
              begin
                SQL.Add('ARTIGO,DESCRICAO,');
                SQL.Add('SEGMENTO,GRUPO,SUBGRUPO,CATEGORIA,SUBCATEGORIA,');
              end else
              begin
                SQL.Add('NULL AS ARTIGO,NULL AS DESCRICAO,');

                if RECRelatorio.Modelo = 'Segmento' then
                   SQL.Add('SEGMENTO,NULL AS GRUPO,NULL AS SUBGRUPO,NULL AS CATEGORIA,NULL AS SUBCATEGORIA,') else
                if RECRelatorio.Modelo = 'Grupo' then
                   SQL.Add('NULL AS SEGMENTO,GRUPO,NULL AS SUBGRUPO,NULL AS CATEGORIA,NULL AS SUBCATEGORIA,') else
                if RECRelatorio.Modelo = 'Sub Grupo' then
                   SQL.Add('NULL AS SEGMENTO,NULL AS GRUPO,SUBGRUPO,NULL AS CATEGORIA,NULL AS SUBCATEGORIA,') else
                if RECRelatorio.Modelo = 'Categoria' then
                   SQL.Add('NULL AS SEGMENTO,NULL AS GRUPO,NULL AS SUBGRUPO,CATEGORIA,NULL AS SUBCATEGORIA,') else
                if RECRelatorio.Modelo = 'Sub Categoria' then
                   SQL.Add('NULL AS SEGMENTO,NULL AS GRUPO,NULL AS SUBGRUPO,NULL AS CATEGORIA,SUBCATEGORIA,');
              end;

              SQL.Add('AVG(VUTA)  AS VUTA   ,');
              SQL.Add('AVG(VUNIT) AS VUNIT  ,');
              SQL.Add('SUM(QUTA)  AS QUTA   ,');
              SQL.Add('MAX(VUME)  AS VUME,SUM(QUME) AS QUME,');
              SQL.Add('MAX(VUMA)  AS VUMA,SUM(QUMA) AS QUMA');
              SQL.Add('FROM (');

              { TAB_PK }
              { Preço Tabela }
              SQL.Add('SELECT CP.PRO_CART AS ARTIGO,CP.PRO_DPRO AS DESCRICAO,');
              SQL.Add('       TSEG.DESCRICAO AS SEGMENTO,TGRP.DESCRICAO AS GRUPO,TSGP.DESCRICAO AS SUBGRUPO,TCAT.DESCRICAO AS CATEGORIA,TSCT.DESCRICAO AS SUBCATEGORIA,');
              SQL.Add('       AVG(CP.PRO_PREC) AS VUTA,AVG(FK.VPRC_COM) AS VUNIT,COUNT(*) AS QUTA,0 AS VUME,0 AS QUME,0 AS VUMA,0 AS QUMA');

              SQL.Add('FROM '+RECRelatorio.TAB_PK+' AS PK');
              SQL.Add('JOIN   TAB_PED      AS TP   ON (TP.VEN_TIPO = PK.ROM_STPD)');
              SQL.Add('JOIN '+RECRelatorio.TAB_PK_ITE+' AS FK ON (FK.ROM_CCAB = PK.ID)');
              SQL.Add('JOIN   CAD_PRO      AS CP   ON (CP.ID   = FK.ROM_CPRO)');
              SQL.Add('JOIN   TAB_SEG      AS TSEG ON (TSEG.ID = CP.IDSEG )');
              SQL.Add('JOIN   TAB_GRP      AS TGRP ON (TGRP.ID = CP.IDGRP )');
              SQL.Add('JOIN   TAB_SGP      AS TSGP ON (TSGP.ID = CP.IDSGP )');
              SQL.Add('JOIN   TAB_CAT      AS TCAT ON (TCAT.ID = CP.IDCAT )');
              SQL.Add('JOIN   TAB_SCT      AS TSCT ON (TSCT.ID = CP.IDSCT )');

              SQL.Add('WHERE  PK.IDEP = '''+RECParametros.EP_ID+'''');
              SQL.Add('AND    PK.FAPD = 1');
              SQL.Add('AND    PK.STPD NOT LIKE ''ABA%''');
              SQL.Add('AND    PK.STPD '+IFThen(Pos('DEV',UPPERCASE(RECRelatorio.Tipo)) > 0,'=','<>')+' ''DEVOLUÇÃO''');

              if UPPERCASE(RECRelatorio.DEEP) <> 'TODAS AS EMPRESAS' then SQL.Add('AND CP.IDEP = '''+IntToStr(RECRelatorio.IDEP)+'''');

              SQL.Add(RECRelatorio.IEC1ConsultaAnd);
              SQL.Add(RECRelatorio.IEC2ConsultaAnd);
              SQL.Add(RECRelatorio.IEC3ConsultaAnd);
              SQL.Add(RECRelatorio.IEC4ConsultaAnd);
              SQL.Add(RECRelatorio.IEDataAnd);

              SQL.Add('AND      FK.VPRC_COM = CP.PRO_PREC');
              SQL.Add('GROUP BY ARTIGO,DESCRICAO,SEGMENTO,GRUPO,SUBGRUPO,CATEGORIA,SUBCATEGORIA');

              { Preço Abaixo da Tabela }
              SQL.Add('UNION');
              SQL.Add('SELECT CP.PRO_CART AS ARTIGO,CP.PRO_DPRO AS DESCRICAO,');
              SQL.Add('       TSEG.DESCRICAO AS SEGMENTO,TGRP.DESCRICAO AS GRUPO,TSGP.DESCRICAO AS SUBGRUPO,TCAT.DESCRICAO AS CATEGORIA,TSCT.DESCRICAO AS SUBCATEGORIA,');
              SQL.Add('       AVG(CP.PRO_PREC) AS VUTA,AVG(FK.VPRC_COM) AS VUNIT,0 AS QUTA,AVG(FK.VPRC_COM) AS VUME,COUNT(*) AS QUME,0 AS VUMA,0 AS QUMA');

              SQL.Add('FROM '+RECRelatorio.TAB_PK+' AS PK');
              SQL.Add('JOIN   TAB_PED      AS TP   ON (TP.VEN_TIPO = PK.ROM_STPD)');
              SQL.Add('JOIN '+RECRelatorio.TAB_PK_ITE+' AS FK   ON (FK.ROM_CCAB = PK.ID)');
              SQL.Add('JOIN   CAD_PRO      AS CP   ON (CP.ID       = FK.ROM_CPRO)');
              SQL.Add('JOIN   TAB_SEG      AS TSEG ON (TSEG.ID = CP.IDSEG )');
              SQL.Add('JOIN   TAB_GRP      AS TGRP ON (TGRP.ID = CP.IDGRP )');
              SQL.Add('JOIN   TAB_SGP      AS TSGP ON (TSGP.ID = CP.IDSGP )');
              SQL.Add('JOIN   TAB_CAT      AS TCAT ON (TCAT.ID = CP.IDCAT )');
              SQL.Add('JOIN   TAB_SCT      AS TSCT ON (TSCT.ID = CP.IDSCT )');

              SQL.Add('WHERE  PK.IDEP = '''+RECParametros.EP_ID+'''');
              SQL.Add('AND    PK.FAPD = 1');
              SQL.Add('AND    PK.STPD NOT LIKE ''ABA%''');
              SQL.Add('AND    PK.STPD '+IFThen(Pos('DEV',UPPERCASE(RECRelatorio.Tipo)) > 0,'=','<>')+' ''DEVOLUÇÃO''');

              if UPPERCASE(RECRelatorio.DEEP) <> 'TODAS AS EMPRESAS' then SQL.Add('AND CP.IDEP = '''+IntToStr(RECRelatorio.IDEP)+'''');

              SQL.Add(RECRelatorio.IEC1ConsultaAnd);
              SQL.Add(RECRelatorio.IEC2ConsultaAnd);
              SQL.Add(RECRelatorio.IEC3ConsultaAnd);
              SQL.Add(RECRelatorio.IEC4ConsultaAnd);
              SQL.Add(RECRelatorio.IEDataAnd);

              SQL.Add('AND      FK.VPRC_COM < CP.PRO_PREC');
              SQL.Add('GROUP BY ARTIGO,DESCRICAO,SEGMENTO,GRUPO,SUBGRUPO,CATEGORIA,SUBCATEGORIA');

              { Preço Acima da Tabela }
              SQL.Add('UNION');
              SQL.Add('SELECT CP.PRO_CART AS ARTIGO,CP.PRO_DPRO AS DESCRICAO,');
              SQL.Add('       TSEG.DESCRICAO AS SEGMENTO,TGRP.DESCRICAO AS GRUPO,TSGP.DESCRICAO AS SUBGRUPO,TCAT.DESCRICAO AS CATEGORIA,TSCT.DESCRICAO AS SUBCATEGORIA,');
              SQL.Add('       AVG(CP.PRO_PREC) AS VUTA,AVG(FK.VPRC_COM) AS VUNIT,0 AS QUTA,0 AS VUME,0 AS QUME,AVG(FK.VPRC_COM) AS VUMA,COUNT(*) AS QUMA');

              SQL.Add('FROM '+RECRelatorio.TAB_PK+'     AS PK');
              SQL.Add('JOIN   TAB_PED      AS TP   ON (TP.VEN_TIPO = PK.ROM_STPD)');
              SQL.Add('JOIN '+RECRelatorio.TAB_PK_ITE+' AS FK   ON (FK.ROM_CCAB = PK.ID)');
              SQL.Add('JOIN   CAD_PRO      AS CP   ON (CP.ID       = FK.ROM_CPRO)');
              SQL.Add('JOIN   TAB_SEG      AS TSEG ON (TSEG.ID = CP.IDSEG )');
              SQL.Add('JOIN   TAB_GRP      AS TGRP ON (TGRP.ID = CP.IDGRP )');
              SQL.Add('JOIN   TAB_SGP      AS TSGP ON (TSGP.ID = CP.IDSGP )');
              SQL.Add('JOIN   TAB_CAT      AS TCAT ON (TCAT.ID = CP.IDCAT )');
              SQL.Add('JOIN   TAB_SCT      AS TSCT ON (TSCT.ID = CP.IDSCT )');

              SQL.Add('WHERE  PK.IDEP = '''+RECParametros.EP_ID+'''');
              SQL.Add('AND    PK.FAPD = 1');
              SQL.Add('AND    PK.STPD NOT LIKE ''ABA%''');
              SQL.Add('AND    PK.STPD '+IFThen(Pos('DEV',UPPERCASE(RECRelatorio.Tipo)) > 0,'=','<>')+' ''DEVOLUÇÃO''');

              if UPPERCASE(RECRelatorio.DEEP) <> 'TODAS AS EMPRESAS' then SQL.Add('AND CP.IDEP = '''+IntToStr(RECRelatorio.IDEP)+'''');

              SQL.Add(RECRelatorio.IEC1ConsultaAnd);
              SQL.Add(RECRelatorio.IEC2ConsultaAnd);
              SQL.Add(RECRelatorio.IEC3ConsultaAnd);
              SQL.Add(RECRelatorio.IEC4ConsultaAnd);
              SQL.Add(RECRelatorio.IEDataAnd);

              SQL.Add('AND      FK.VPRC_COM > CP.PRO_PREC');
              SQL.Add('GROUP BY ARTIGO,DESCRICAO,SEGMENTO,GRUPO,SUBGRUPO,CATEGORIA,SUBCATEGORIA');

              SQL.Add(')');
              SQL.Add('GROUP BY ARTIGO,DESCRICAO,SEGMENTO,GRUPO,SUBGRUPO,CATEGORIA,SUBCATEGORIA');
              SQL.Add('ORDER BY '+oStrTran(oStrTran(RECRelatorio.Modelo,'Sub Grupo','SubGrupo'),'Sub Categoria','SubCategoria'));
              Open;
            end;
          end;
begin
  with qrpProduto_Tabela_Preco do
    try
      _Select;
      _Report;

      if Relatorio.RecNo > 0 then
      begin
        Prepare;
        case RECRelatorio.PrintTAG of
          0: PreviewModal;
          1: Print;
          2: ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHEILD_PATH_DESKTOP+'\RELPP-'+FormatDateTime('dd-mm-yy hh-mm-ss',Now)+'.PDF')));
          3: ExportToFilter(TQRXLSFilter.Create        (PChar(RECParametros.SHEILD_PATH_DESKTOP+'\RELPP-'+FormatDateTime('dd-mm-yy hh-mm-ss',Now)+'.XLS')));
          4: ExportToFilter(TQRRTFExportFilter.Create  (PChar(RECParametros.SHEILD_PATH_DESKTOP+'\RELPP-'+FormatDateTime('dd-mm-yy hh-mm-ss',Now)+'.DOC')));
        end;
      end else oException(Nil,'Registros não Encontrados !');
    finally
      WinControlFormDestroy(qrpProduto_Tabela_Preco);
    end;
end;

procedure TqrpProduto_Tabela_Preco.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpProduto_Tabela_Preco);
  end;
end;

procedure TqrpProduto_Tabela_Preco.QRBDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if RelatorioC_ID.AsInteger mod 2 = 0 then
     QRBDetalhe.Color := clWhite
  else
     QRBDetalhe.Color := $00E9E9E9;

  QRDVUTA.Enabled   := (RelatorioVUTA.AsFloat   > 0);
  QRDC_PUMA.Enabled := (RelatorioC_PUMA.AsFloat > 0);
  QRDVUMA.Enabled   := (RelatorioVUMA.AsFloat   > 0);
  QRDC_PUME.Enabled := (RelatorioC_PUME.AsFloat > 0);
  QRDVUME.Enabled   := (RelatorioVUME.AsFloat   > 0);
end;

procedure TqrpProduto_Tabela_Preco.RelatorioCalcFields(
  DataSet: TDataSet);
begin
  RelatorioC_ID.Value    := Relatorio.RecNo;
  RelatorioC_TOTAL.Value := RelatorioQUTA.AsInteger + RelatorioQUMA.AsInteger + RelatorioQUME.AsInteger;
  RelatorioC_PUTA.Value  := (RelatorioQUTA.AsInteger * 100) / RelatorioC_TOTAL.AsInteger;
  RelatorioC_PUMA.Value  := (RelatorioQUMA.AsInteger * 100) / RelatorioC_TOTAL.AsInteger;
  RelatorioC_PUME.Value  := (RelatorioQUME.AsInteger * 100) / RelatorioC_TOTAL.AsInteger;
end;

procedure TqrpProduto_Tabela_Preco.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  QRLArtigo.Caption    := RECRelatorio.Modelo;
  QRDArtigo.DataField  := oStrTran(oStrTran(RECRelatorio.Modelo,'Sub Grupo','SubGrupo'),'Sub Categoria','SubCategoria');

  QRLDescricao.Enabled := (RECRelatorios.Modelo = 'Artigo');
  QRDDescricao.Enabled := (RECRelatorios.Modelo = 'Artigo');
end;

end.
