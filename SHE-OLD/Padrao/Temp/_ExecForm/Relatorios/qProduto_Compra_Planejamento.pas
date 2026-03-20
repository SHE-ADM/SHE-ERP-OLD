unit qProduto_Compra_Planejamento;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport,
     DateUtils;

type
  TqrpProduto_Compra_Planejamento = class(TQuickRep)
    QRBFKCabecalho: TQRBand;
    QRBDetalhes: TQRBand;
    QRBSumario: TQRBand;
    QRD_COL_01: TQRDBText;
    QRD_QT01: TQRDBText;
    TRelatorio: TIBTransaction;
    Relatorio: TIBQuery;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRSSumario: TQRShape;
    QRD_QT02: TQRDBText;
    QRD_QT03: TQRDBText;
    QRD_QT04: TQRDBText;
    QRD_QT05: TQRDBText;
    QRD_QT06: TQRDBText;
    QRD_QT07: TQRDBText;
    QRD_QT08: TQRDBText;
    QRD_QT09: TQRDBText;
    QRD_QT10: TQRDBText;
    QRD_QT11: TQRDBText;
    QRD_QT12: TQRDBText;
    QRD_RPDV_QTRL: TQRDBText;
    QRD_REPE_QTRL: TQRDBText;
    QRD_RPDV_RLMD: TQRDBText;
    QRD_REST_RLMI: TQRDBText;
    QRDRPDC_QTRL: TQRDBText;
    QRD_RPDC_RLSE: TQRDBText;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel17: TQRLabel;
    QRShape19: TQRShape;
    QRLabel21: TQRLabel;
    QRBCabecalho: TQRBand;
    QRSCABECALHO: TQRShape;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRL_PRINCIPAL: TQRLabel;
    QRL_MESES: TQRLabel;
    QRL_DT01: TQRLabel;
    QRL_DT02: TQRLabel;
    QRL_DT03: TQRLabel;
    QRL_DT04: TQRLabel;
    QRL_DT05: TQRLabel;
    QRL_DT07: TQRLabel;
    QRL_DT06: TQRLabel;
    QRL_DT08: TQRLabel;
    QRL_DT09: TQRLabel;
    QRL_DT10: TQRLabel;
    QRL_DT11: TQRLabel;
    QRL_DT12: TQRLabel;
    QRL_ANUAL: TQRLabel;
    QRL_MEDI: TQRLabel;
    QRL_ESMI: TQRLabel;
    QRL_QTPE: TQRLabel;
    QRL_QTCO: TQRLabel;
    QRL_SEGU: TQRLabel;
    QRL_COMPRAS: TQRLabel;
    QRL_ESTOQUE: TQRLabel;
    QRL_VENDAS: TQRLabel;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel22: TQRLabel;
    QRDRPDC_RLSP: TQRDBText;
    RelatorioCOL_01: TIBStringField;
    RelatorioPDV_DTFT_01: TIBStringField;
    RelatorioPDV_QTRL_01: TLargeintField;
    RelatorioEST_QTRL_01: TSmallintField;
    RelatorioPDV_DTFT_02: TIBStringField;
    RelatorioPDV_QTRL_02: TLargeintField;
    RelatorioEST_QTRL_02: TSmallintField;
    RelatorioPDV_DTFT_03: TIBStringField;
    RelatorioPDV_QTRL_03: TLargeintField;
    RelatorioEST_QTRL_03: TSmallintField;
    RelatorioPDV_DTFT_04: TIBStringField;
    RelatorioPDV_QTRL_04: TLargeintField;
    RelatorioEST_QTRL_04: TSmallintField;
    RelatorioPDV_DTFT_05: TIBStringField;
    RelatorioPDV_QTRL_05: TLargeintField;
    RelatorioEST_QTRL_05: TSmallintField;
    RelatorioPDV_DTFT_06: TIBStringField;
    RelatorioPDV_QTRL_06: TLargeintField;
    RelatorioEST_QTRL_06: TSmallintField;
    RelatorioPDV_DTFT_07: TIBStringField;
    RelatorioPDV_QTRL_07: TLargeintField;
    RelatorioEST_QTRL_07: TSmallintField;
    RelatorioPDV_DTFT_08: TIBStringField;
    RelatorioPDV_QTRL_08: TLargeintField;
    RelatorioEST_QTRL_08: TSmallintField;
    RelatorioPDV_DTFT_09: TIBStringField;
    RelatorioPDV_QTRL_09: TLargeintField;
    RelatorioEST_QTRL_09: TSmallintField;
    RelatorioPDV_DTFT_10: TIBStringField;
    RelatorioPDV_QTRL_10: TLargeintField;
    RelatorioEST_QTRL_10: TSmallintField;
    RelatorioPDV_DTFT_11: TIBStringField;
    RelatorioPDV_QTRL_11: TLargeintField;
    RelatorioEST_QTRL_11: TSmallintField;
    RelatorioPDV_DTFT_12: TIBStringField;
    RelatorioPDV_QTRL_12: TLargeintField;
    RelatorioEST_QTRL_12: TSmallintField;
    RelatorioPDV_QTRL: TLargeintField;
    RelatorioPDV_RLMD: TLargeintField;
    RelatorioEST_RLMI: TIBBCDField;
    RelatorioEPE_QTRL: TLargeintField;
    RelatorioEAT_QTRL: TLargeintField;
    RelatorioEEP_QTRL: TLargeintField;
    RelatorioEST_QTRL: TLargeintField;
    RelatorioEPC_QTRL: TLargeintField;
    RelatorioEPC_RLSP: TLargeintField;
    RelatorioPDC_RLSE: TLargeintField;
    RelatorioPDC_DEST: TIBStringField;
    QRLabel23: TQRLabel;
    QRDBText2: TQRDBText;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure QRBDetalhesBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    RECRelatorio: TRECRelatorios;
    SQLIDEP,
    SQLCP_IDEP,
    SQLDTXT,
    SQLFTXT,
    SQLWHERE,
    SQLLIKE1,
    SQLLIKE2,
    SQLDT1,
    SQLDT2,
    SQLFDT: String;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpProduto_Compra_Planejamento: TqrpProduto_Compra_Planejamento;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios,  pExporta;

{$R *.DFM}

Constructor TqrpProduto_Compra_Planejamento.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpProduto_Compra_Planejamento.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter(Self,RECRelatorio); { Rodapé }

            QRLTitulo.Caption := 'Planejamento de Compras';
          end;

          procedure _Select;
          var
            ColMes: Integer;
            QRD_COL_01: String;
          begin
            { Filtros Empresa }
            SQLIDEP    := IntToStr(RECRelatorio.IDEP);
            SQLCP_IDEP := '0';

            { Filtros Códigos Between }
            if (RECRelatorio.PEC1CodigoText <> 'TODOS') and (RECRelatorio.PEC2CodigoText <> 'TODOS') then
                RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.PEC1CodigoCaption   +': '+RECRelatorio.PEC1CodigoText   +' '+RECRelatorio.PEC2CodigoCaption+': '+RECRelatorio.PEC2CodigoText+' ';

            { Filtros Gerais }
            if (RECRelatorio.PEC1ConsultaText <> 'TODOS') then
            begin
              SQLDTXT  := RECRelatorio.PEC1ConsultaText;
              SQLFTXT  := RECRelatorio.IEC1ConsultaField;
              SQLWHERE := RECRelatorio.IEC1ConsultaWhere;
              SQLLIKE1 := RECRelatorio.IEC1ConsultaLike1;
              SQLLIKE2 := RECRelatorio.IEC1ConsultaLike2;

              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC1ConsultaCaption +': '+RECRelatorio.PEC1ConsultaText +' ';
            end;

            if (RECRelatorio.PEC2ConsultaText <> 'TODOS') and (RECRelatorio.IEC2ConsultaCaption <> 'Categorias') then
            begin
              SQLDTXT  := RECRelatorio.PEC2ConsultaText;
              SQLFTXT  := RECRelatorio.IEC2ConsultaField;
              SQLWHERE := RECRelatorio.IEC2ConsultaWhere;
              SQLLIKE1 := RECRelatorio.IEC2ConsultaLike1;
              SQLLIKE2 := RECRelatorio.IEC2ConsultaLike2;

              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC2ConsultaCaption +': '+RECRelatorio.PEC2ConsultaText +' ';
            end;

            if (RECRelatorio.PEC3ConsultaText <> 'TODOS') then
            begin
              SQLDTXT  := RECRelatorio.PEC3ConsultaText;
              SQLFTXT  := RECRelatorio.IEC3ConsultaField;
              SQLWHERE := RECRelatorio.IEC3ConsultaWhere;
              SQLLIKE1 := RECRelatorio.IEC3ConsultaLike1;
              SQLLIKE2 := RECRelatorio.IEC3ConsultaLike2;

              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC3ConsultaCaption +': '+RECRelatorio.PEC3ConsultaText +' ';
            end;

            if (RECRelatorio.PEC4ConsultaText <> 'TODOS') then
            begin
              SQLDTXT  := RECRelatorio.PEC4ConsultaText;
              SQLFTXT  := RECRelatorio.IEC4ConsultaField;
              SQLWHERE := RECRelatorio.IEC4ConsultaWhere;
              SQLLIKE1 := RECRelatorio.IEC4ConsultaLike1;
              SQLLIKE2 := RECRelatorio.IEC4ConsultaLike2;

              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC4ConsultaCaption +': '+RECRelatorio.PEC4ConsultaText +' ';
            end;

            if oEmpty(SQLDTXT) then
            begin
              SQLDTXT := 'TODOS';
              SQLFTXT := 'CP.ARTIGO';
            end;
              
            { Filtros Datas }
            if not oEmpty(RECRelatorio.IEDataField) then
            begin
              SQLDT1 := FormatDateTime('mm/dd/yy',RECRelatorio.IEDataText1);
              SQLDT2 := FormatDateTime('mm/dd/yy',RECRelatorio.IEDataText2);
              SQLFDT := 'PK.' + RECRelatorio.IEDataField;
              
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + 'Período por '+oPrimeiraLetraMaiuscula(RECRelatorio.IEDataCaption)+': '+ 'De '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1)+' Até '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);
            end;

            { Meses/Ano }
            QRL_DT01.Caption := LeftStr(oRETMesExtenso(Date)              ,3); //+'/'+RightStr(IntToStr(YearOf(Date))              ,2);
            QRL_DT02.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-01)),3); //+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-01))),2);
            QRL_DT03.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-02)),3); //+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-02))),2);
            QRL_DT04.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-03)),3); //+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-03))),2);
            QRL_DT05.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-04)),3); //+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-04))),2);
            QRL_DT06.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-05)),3); //+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-05))),2);
            QRL_DT07.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-06)),3); //+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-06))),2);
            QRL_DT08.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-07)),3); //+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-07))),2);
            QRL_DT09.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-08)),3); //+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-08))),2);
            QRL_DT10.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-09)),3); //+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-09))),2);
            QRL_DT11.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-10)),3); //+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-10))),2);
            QRL_DT12.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-11)),3); //+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-11))),2);

            { Pega Mês Atual }
            ColMes := oRETMes(Date);

            { Coluna 1 }
            QRD_QT01.DataField := 'PDV_QTRL_'+oStrZero(ColMes,2);

            { Coluna 2 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT02.DataField := 'PDV_QTRL_'+oStrZero(ColMes,2);

            { Coluna 3 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT03.DataField := 'PDV_QTRL_'+oStrZero(ColMes,2);

            { Coluna 4 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT04.DataField := 'PDV_QTRL_'+oStrZero(ColMes,2);

            { Coluna 5 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT05.DataField := 'PDV_QTRL_'+oStrZero(ColMes,2);

            { Coluna 6 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT06.DataField := 'PDV_QTRL_'+oStrZero(ColMes,2);

            { Coluna 7 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT07.DataField := 'PDV_QTRL_'+oStrZero(ColMes,2);

            { Coluna 8 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT08.DataField := 'PDV_QTRL_'+oStrZero(ColMes,2);

            { Coluna 9 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT09.DataField := 'PDV_QTRL_'+oStrZero(ColMes,2);

            { Coluna 10 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT10.DataField := 'PDV_QTRL_'+oStrZero(ColMes,2);

            { Coluna 11 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT11.DataField := 'PDV_QTRL_'+oStrZero(ColMes,2);

            { Coluna 12 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT12.DataField := 'PDV_QTRL_'+oStrZero(ColMes,2);

            QRL_PRINCIPAL.Caption := RECRelatorio.Tipo;
            QRD_COL_01:= IFThen(RECRelatorio.Tipo = 'Fornecedor'  ,'DECF'  ,
                         IFThen(RECRelatorio.Tipo = 'Segmento'    ,'SEG_NO',
                         IFThen(RECRelatorio.Tipo = 'Grupo'       ,'GRP_NO',
                         IFThen(RECRelatorio.Tipo = 'SubGrupo'    ,'SGP_NO || '' - '' || UCOM',
                         IFThen(RECRelatorio.Tipo = 'Categoria'   ,'CAT_NO',
                         IFThen(RECRelatorio.Tipo = 'SubCategoria','SCT_NO || '' - '' || UCOM',
                         IFThen(RECRelatorio.Tipo = 'Artigo'      ,'ARTIGO || '' - '' || UCON','SKU || '' - '' || UCON')))))));

            oOTransact(TRelatorio);
            with Relatorio do
            begin
              SQL.Clear;
              SQL.Add('SELECT TRIM(CAST(' + QRD_COL_01 + ' AS VARCHAR(60))) AS COL_01,');

              SQL.Add('       MAX(DT01) AS PDV_DTFT_01,SUM(RL01) AS PDV_QTRL_01,MAX(ES01) AS EST_QTRL_01,');
              SQL.Add('       MAX(DT02) AS PDV_DTFT_02,SUM(RL02) AS PDV_QTRL_02,MAX(ES02) AS EST_QTRL_02,');
              SQL.Add('       MAX(DT03) AS PDV_DTFT_03,SUM(RL03) AS PDV_QTRL_03,MAX(ES03) AS EST_QTRL_03,');
              SQL.Add('       MAX(DT04) AS PDV_DTFT_04,SUM(RL04) AS PDV_QTRL_04,MAX(ES04) AS EST_QTRL_04,');
              SQL.Add('       MAX(DT05) AS PDV_DTFT_05,SUM(RL05) AS PDV_QTRL_05,MAX(ES05) AS EST_QTRL_05,');
              SQL.Add('       MAX(DT06) AS PDV_DTFT_06,SUM(RL06) AS PDV_QTRL_06,MAX(ES06) AS EST_QTRL_06,');
              SQL.Add('       MAX(DT07) AS PDV_DTFT_07,SUM(RL07) AS PDV_QTRL_07,MAX(ES07) AS EST_QTRL_07,');
              SQL.Add('       MAX(DT08) AS PDV_DTFT_08,SUM(RL08) AS PDV_QTRL_08,MAX(ES08) AS EST_QTRL_08,');
              SQL.Add('       MAX(DT09) AS PDV_DTFT_09,SUM(RL09) AS PDV_QTRL_09,MAX(ES09) AS EST_QTRL_09,');
              SQL.Add('       MAX(DT10) AS PDV_DTFT_10,SUM(RL10) AS PDV_QTRL_10,MAX(ES10) AS EST_QTRL_10,');
              SQL.Add('       MAX(DT11) AS PDV_DTFT_11,SUM(RL11) AS PDV_QTRL_11,MAX(ES11) AS EST_QTRL_11,');
              SQL.Add('       MAX(DT12) AS PDV_DTFT_12,SUM(RL12) AS PDV_QTRL_12,MAX(ES12) AS EST_QTRL_12,');

              SQL.Add('       SUM(PDV_QTRL) AS PDV_QTRL,');
              SQL.Add('       SUM(PDV_RLMD) AS PDV_RLMD,');
              SQL.Add('       MAX(EST_RLMI) AS EST_RLMI,');
              SQL.Add('       SUM(EPE_QTRL) AS EPE_QTRL,');
              SQL.Add('       SUM(EAT_QTRL) AS EAT_QTRL,');
              SQL.Add('       SUM(EEP_QTRL) AS EEP_QTRL,');
              SQL.Add('       SUM(EST_QTRL) AS EST_QTRL,');
              SQL.Add('       SUM(EPC_QTRL) AS EPC_QTRL,');
              SQL.Add('       SUM(EPC_RLSP) AS EPC_RLSP,');
              SQL.Add('       SUM(PDC_RLSE) AS PDC_RLSE,');
              SQL.Add('       MAX(PDC_DEST) AS PDC_DEST ');

              SQL.Add('FROM   SP_REL_CAD_PRO_EST_EPC_PLA');

              SQL.Add('(');
              SQL.Add('''' + SQLIDEP    + ''',');
              SQL.Add('''' + SQLCP_IDEP + ''',');

              SQL.Add('''' + SQLDTXT    + ''',');
              SQL.Add('''' + SQLFTXT    + ''',');

              SQL.Add('''' + SQLDT1     + ''',');
              SQL.Add('''' + SQLDT2     + ''',');
              SQL.Add('''' + SQLFDT     + ''',');

              SQL.Add('''' + SQLWHERE   + ''',');
              SQL.Add('''' + SQLLIKE1   + ''',');
              SQL.Add('''' + SQLLIKE2   + '''' );
              SQL.Add(')');

              SQL.Add('GROUP BY 1');
              SQL.Add('ORDER BY 1');

              Prepare;
              Open;
            end;
          end;
begin
  with qrpProduto_Compra_Planejamento do
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
      WinControlFormDestroy(qrpProduto_Compra_Planejamento);
    end;
end;

procedure TqrpProduto_Compra_Planejamento.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpProduto_Compra_Planejamento);
  end;
end;

procedure TqrpProduto_Compra_Planejamento.QRBDetalhesBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  { ZEBRA }
  if Relatorio.RecNo mod 2 = 0 then
  QRBDetalhes.Color := clBtnFace else QRBDetalhes.Color := clWhite;

  { COLUNA 1 }
  QRD_COL_01.Font.Size := 6; //IFThen(Length(RelatorioCOL_01.AsString) > 35,6,7);

  QRD_REPE_QTRL.Transparent := True;
  QRD_REPE_QTRL.Font.Color  := clBlack;
  QRD_REPE_QTRL.Color       := clWhite;

  QRD_REST_RLMI.Enabled := False;
  if RelatorioEPE_QTRL.AsInteger = 0 then
  begin
    QRD_REPE_QTRL.Transparent := False;
    QRD_REPE_QTRL.Font.Color  := clWhite;
    QRD_REPE_QTRL.Color       := clPurple;
  end else
  if RelatorioEST_RLMI.AsInteger > 0 then
  begin
    QRD_REST_RLMI.Enabled := True;
    if (RelatorioEST_RLMI.AsInteger >= RelatorioEPE_QTRL.AsInteger) then
    begin
      QRD_REPE_QTRL.Transparent := False;
      QRD_REPE_QTRL.Font.Color  := clWhite;
      QRD_REPE_QTRL.Color       := clRed;
    end else
    if ((RelatorioEST_RLMI.AsInteger * 1.5) >= RelatorioEPE_QTRL.AsInteger) then
    begin
      QRD_REPE_QTRL.Transparent := False;
      QRD_REPE_QTRL.Font.Color  := clBlack;
      QRD_REPE_QTRL.Color       := $0080FFFF;
    end;
  end;

  QRD_RPDC_RLSE.Font.Color := clBlack;
  QRD_RPDC_RLSE.Color      := clWhite;

  if RelatorioPDC_DEST.AsString = 'SEGURO' then
  begin
    QRD_RPDC_RLSE.Font.Color := clWhite;
    QRD_RPDC_RLSE.Color      := clBlue;
  end else

  if RelatorioPDC_DEST.AsString = 'MODERADO' then
  begin
    QRD_RPDC_RLSE.Font.Color := clBlack;
    QRD_RPDC_RLSE.Color      := clYellow;
  end else

  if RelatorioPDC_DEST.AsString = 'CRÍTICO' then
  begin
    QRD_RPDC_RLSE.Font.Color := clWhite;
    QRD_RPDC_RLSE.Color      := clRed;
  end else

  if RelatorioPDC_DEST.AsString = 'EM FALTA' then
  begin
    QRD_RPDC_RLSE.Font.Color := clWhite;
    QRD_RPDC_RLSE.Color      := clPurple;
  end;
end;

end.


