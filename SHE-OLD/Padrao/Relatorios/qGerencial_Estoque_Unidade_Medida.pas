unit qGerencial_Estoque_Unidade_Medida;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport;

type
  TqrpGerencial_Estoque_Unidade_Medida = class(TQuickRep)
    QRBDetalhe: TQRBand;
    QRGGrupo: TQRGroup;
    QRGSubGrupo: TQRGroup;
    QRBSubTotal: TQRBand;
    QRBTotalGeral: TQRBand;
    QRDBGrupoNFEOperacao: TQRDBText;
    TRelatorio: TIBTransaction;
    QRLSubGrupoVNF: TQRLabel;
    QRSubGrupo_1: TQRShape;
    QConsulta: TIBQuery;
    Relatorio: TIBQuery;
    QRLSubTotal: TQRLabel;
    QRESubTotalVICMS: TQRExpr;
    QRDBSubGrupoNFETipo: TQRDBText;
    QRESubTotalVIPI: TQRExpr;
    QRLTotalGeralDIFERENCA: TQRLabel;
    QRDBSubGrupoCFOP: TQRDBText;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRBCabecalho: TQRBand;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    RelatorioDEEP: TIBStringField;
    RelatorioUCOM: TIBStringField;
    RelatorioEPE_QTDE: TIBBCDField;
    RelatorioPSBR: TIBBCDField;
    RelatorioPSLQ: TIBBCDField;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
  private
    RECRelatorio: TRECRelatorios;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpGerencial_Estoque_Unidade_Medida: TqrpGerencial_Estoque_Unidade_Medida;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TqrpGerencial_Estoque_Unidade_Medida.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpGerencial_Estoque_Unidade_Medida.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader_(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter_(Self,RECRelatorio); { Rodapé }
          end;

          procedure _Select;
          begin
            { Filtros Between }
            if (RECRelatorio.PEC1CodigoText <> 'TODOS') and (RECRelatorio.PEC2CodigoText <> 'TODOS') then
               RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.PEC1CodigoCaption   +' '+RECRelatorio.PEC2CodigoCaption+' '
            else
               RECRelatorio.PEC1CodigoText := '0';

            { Filtros Gerais }   
            if (RECRelatorio.PEC1ConsultaText <> 'TODOS') then
            begin
              RECRelatorio.IEC1ConsultaAnd := RECRelatorio.IEC1ConsultaField+' '+RECRelatorio.IEC1ConsultaWhere+' '''''+RECRelatorio.IEC1ConsultaLike1+Trim(RECRelatorio.PEC1ConsultaText)+RECRelatorio.IEC1ConsultaLike2+'''''';
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC1ConsultaCaption +': '+RECRelatorio.PEC1ConsultaText +' ';
            end;

            if (RECRelatorio.PEC2ConsultaText <> 'TODOS') then
            begin
              RECRelatorio.IEC2ConsultaAnd := RECRelatorio.IEC2ConsultaField+' '+RECRelatorio.IEC2ConsultaWhere+' '''''+RECRelatorio.IEC2ConsultaLike1+Trim(RECRelatorio.PEC2ConsultaText)+RECRelatorio.IEC2ConsultaLike2+'''''';
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC2ConsultaCaption +': '+RECRelatorio.PEC2ConsultaText +' ';
            end;

            if (RECRelatorio.PEC3ConsultaText <> 'TODOS') then
            begin
              RECRelatorio.IEC3ConsultaAnd := RECRelatorio.IEC3ConsultaField+' '+RECRelatorio.IEC3ConsultaWhere+' '''''+RECRelatorio.IEC3ConsultaLike1+Trim(RECRelatorio.PEC3ConsultaText)+RECRelatorio.IEC3ConsultaLike2+'''''';
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC3ConsultaCaption +': '+RECRelatorio.PEC3ConsultaText +' ';
            end;

            if (RECRelatorio.PEC4ConsultaText <> 'TODOS') then
            begin
              RECRelatorio.IEC4ConsultaAnd := RECRelatorio.IEC4ConsultaField+' '+RECRelatorio.IEC4ConsultaWhere+' '''''+RECRelatorio.IEC4ConsultaLike1+Trim(RECRelatorio.PEC4ConsultaText)+RECRelatorio.IEC4ConsultaLike2+'''''';
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC4ConsultaCaption +': '+RECRelatorio.PEC4ConsultaText +' ';
            end;

            { Filtros Datas }
            if not oEmpty(RECRelatorio.IEDataField) then
               RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + 'Período por '+oPrimeiraLetraMaiuscula(RECRelatorio.IEDataCaption)+': '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1)+' Até '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);

            oOTransact(TRelatorio);
            with Relatorio do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT   EP.FANTASIA AS DEEP,CP.UCOM,SUM(E.EPE_QTDE) AS EPE_QTDE,');
              SQL.Add('         SUM(CAST(CP.UPSBR*E.EPE_QTDE AS DECIMAL(15,2))) AS PSBR,');
              SQL.Add('         SUM(CAST(CP.UPSLQ*E.EPE_QTDE AS DECIMAL(15,2))) AS PSLQ ');
              SQL.Add('FROM     ESTOQUE     AS E');
              SQL.Add('JOIN     TAB_PAR_SIS AS EP ON (EP.ID = IIF(E.IDEP_LOG = 7,E.IDEP,E.IDEP_LOG))');
              SQL.Add('JOIN     CAD_PRO     AS CP ON (CP.ID = E.IDCP)');
              SQL.Add('WHERE    E.EPE_QTDE > 0');

              if UPPERCASE(RECRelatorio.DEEP) <> 'TODAS AS EMPRESAS' then
                 SQL.Add('AND E.IDEP_LOG = '''+IntToStr(RECRelatorio.IDEP)+'''');

              if RECRelatorio.PEC1ConsultaText <> 'TODOS' then
                 SQL.Add('AND EP.GRP_EST = '''+RECRelatorio.PEC1ConsultaText+'''');

              SQL.Add('GROUP BY 1,2');
              SQL.Add('ORDER BY 1'  );
              Prepare;
              Open;
            end;
          end;
begin
  with qrpGerencial_Estoque_Unidade_Medida do
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
      WinControlFormDestroy(qrpGerencial_Estoque_Unidade_Medida);
    end;
end;

procedure TqrpGerencial_Estoque_Unidade_Medida.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpGerencial_Estoque_Unidade_Medida);
  end;
end;

end.
