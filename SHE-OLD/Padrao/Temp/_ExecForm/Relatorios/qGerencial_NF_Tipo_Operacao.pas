unit qGerencial_NF_Tipo_Operacao;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport;

type
  TqrpGerencial_NF_Tipo_Operacao = class(TQuickRep)
    QRBDetalhe: TQRBand;
    QRGGrupo: TQRGroup;
    QRGSubGrupo: TQRGroup;
    QRBSubTotal: TQRBand;
    QRBTotalGeral: TQRBand;
    QRDBGrupoNFEOperacao: TQRDBText;
    TRelatorio: TIBTransaction;
    QRLSubGrupoCFOP: TQRLabel;
    QRLSubGrupoVCOFINS: TQRLabel;
    QRLSubGrupoVNF: TQRLabel;
    QRDBSubGrupoVCOFINS: TQRDBText;
    QRDBSubGrupoVNF: TQRDBText;
    QRSubGrupo_1: TQRShape;
    Relatorio: TIBQuery;
    QRLSubTotal: TQRLabel;
    QRESubTotalVICMS: TQRExpr;
    QRLSubGrupoVPIS: TQRLabel;
    QRDBSubGrupoVPIS: TQRDBText;
    QRDBSubGrupoVIPI: TQRDBText;
    QRDBSubGrupoVICMS: TQRDBText;
    QRLSubGrupoVICMS: TQRLabel;
    QRLSubGrupoVIPI: TQRLabel;
    QRLSubGrupoNFETipo: TQRLabel;
    QRDBSubGrupoNFETipo: TQRDBText;
    QRESubTotalVIPI: TQRExpr;
    QRESubTotalVPIS: TQRExpr;
    QRESubTotalVCOFINS: TQRExpr;
    QRESubTotalVNF: TQRExpr;
    QRETotalGeralVNF: TQRLabel;
    QRLTotalGeralDIFERENCA: TQRLabel;
    QRDBSubGrupoCFOP: TQRDBText;
    RelatorioC_CFOP: TStringField;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRETotalGeralVICMS: TQRLabel;
    QRETotalGeralVIPI: TQRLabel;
    QRETotalGeralVPIS: TQRLabel;
    QRETotalGeralVCOFINS: TQRLabel;
    QRBCabecalho: TQRBand;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    RelatorioNFOPERACAO: TIBStringField;
    RelatorioNFTIPO: TIBStringField;
    RelatorioNFCFOP: TIBStringField;
    RelatorioNFDESCRICAO: TIBStringField;
    RelatorioVICMS: TIBBCDField;
    RelatorioVIPI: TIBBCDField;
    RelatorioVPIS: TIBBCDField;
    RelatorioVCOFINS: TIBBCDField;
    RelatorioVNF: TIBBCDField;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure QRBTotalGeralBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    RECRelatorio : TRECRelatorios;
    QRLEVNF      : Double;
    QRLEVICMS    : Double;
    QRLEVIPI     : Double;
    QRLEVPIS     : Double;
    QRLEVCOFINS  : Double;
    QRLSVNF      : Double;
    QRLSVICMS    : Double;
    QRLSVIPI     : Double;
    QRLSVPIS     : Double;
    QRLSVCOFINS  : Double;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpGerencial_NF_Tipo_Operacao: TqrpGerencial_NF_Tipo_Operacao;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TqrpGerencial_NF_Tipo_Operacao.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpGerencial_NF_Tipo_Operacao.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter(Self,RECRelatorio); { Rodapé }
          end;
          procedure _Select;
          var IDEmpresa1,
              IDEmpresa2,
              i: Integer;
          begin
            { Filtros Gerais }
            if RECParametros.EP_NO <> RECRelatorio.DEEP then
            RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.DEEP+' ';
            if (RECRelatorio.PEC1CodigoText <> 'TODOS') and (RECRelatorio.PEC2CodigoText <> 'TODOS') then
            RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.PEC1CodigoCaption+': De '+RECRelatorio.PEC1CodigoText+' Até '+RECRelatorio.PEC2CodigoText+' ';
            if (RECRelatorio.PEC1ConsultaText <> 'TODOS') then
            RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC1ConsultaCaption+': '+RECRelatorio.PEC1ConsultaText+' ';
            if (RECRelatorio.PEC2ConsultaText <> 'TODOS') then
            RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC2ConsultaCaption+': '+RECRelatorio.PEC2ConsultaText+' ';
            if (RECRelatorio.PEC3ConsultaText <> 'TODOS') then
            RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC3ConsultaCaption+': '+RECRelatorio.PEC3ConsultaText+' ';
            if (RECRelatorio.PEC4ConsultaText <> 'TODOS') then
            RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC4ConsultaCaption+': '+RECRelatorio.PEC4ConsultaText+' ';
            if not oEmpty(RECRelatorio.IEDataField) then
            RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + 'Período por data de '+RECRelatorio.IEDataCaption+': '+
                                                                       'De '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1)+' Até '+
                                                                             FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);

            { Monta Relatório }
            with FrmRelatorios, Relatorio do
            begin
              { Filtro Inicial }
              RECRelatorio.RodapeFiltros := 'Empresa: '+IEEmpresa.Text+' '+
                                            'Período: '+FormatDateTime('dd/mm/yy',MCData1.Date)+' até '+FormatDateTime('dd/mm/yy',MCData2.Date)+' '+
                                            '( Dt. Emissão )';

              IDEmpresa1 := IFThen(IEEmpresa.Text = 'TODAS AS EMPRESAS',1,RECRelatorio.IDEP);
              IDEmpresa2 := IFThen(IEEmpresa.Text = 'TODAS AS EMPRESAS',9,RECRelatorio.IDEP);

              oOTransact(TRelatorio);
              
              SQL.Clear;
              SQL.Add('SELECT NFOPERACAO,NFTIPO,NFCFOP,NFDESCRICAO,');
              SQL.Add('       SUM(VICMS) AS VICMS,SUM(VIPI) AS VIPI,SUM(VPIS) AS VPIS,SUM(VCOFINS) AS VCOFINS,SUM(VNF) AS VNF');
              SQL.Add('FROM (');

              for i := IDEmpresa1 to IDEmpresa2 do
              begin
                SQL.Add('SELECT   IIF (NFE_CAB.REST = ''A'',NAT_OPER,''CANCELADO'') AS NFOperacao ,');
                SQL.Add('         NAT_TIPO AS NFTipo,NAT_CNAT AS NFCFOP,NAT_DNAT AS NFDescricao,');
                SQL.Add('         SUM(NFE_ITE.NFE_VICMS) AS VICMS,SUM(NFE_ITE.NFE_VIPI) AS VIPI,SUM(NFE_ITE.NFE_VPIS) AS VPIS,SUM(NFE_ITE.NFE_VCOFINS) AS VCOFINS,SUM(NFE_ITE.NFE_VNF) AS VNF');
                SQL.Add('FROM '  +oREPZero('NFE_CAB','_',i,3)+' "NFE_CAB"');
                SQL.Add('JOIN '  +oREPZero('NFE_ITE','_',i,3)+' "NFE_ITE" ON NFE_ITE.NFE_CCAB = NFE_CAB.ID');
                SQL.Add('JOIN     TAB_NAT "TAB_NAT" ON TAB_NAT.NAT_CNAT = NFE_ITE.NFE_CFOP');
                SQL.Add('JOIN     TAB_PAR_SIS "PAR_SIS" ON PAR_SIS.ID = '''+IntToStr(i)+'''');
                SQL.Add('WHERE    NFE_CAB.NFE_DEMI BETWEEN :Data1 AND :Data2');
                SQL.Add('AND      NFE_CAB.REST  = ''A''');
                SQL.Add('AND      NFE_ITE.NFE_VICMS > 0');
                SQL.Add('GROUP BY 1,2,3,4');

                if (i < 9) and (IEEmpresa.Text = 'TODAS AS EMPRESAS') then
                SQL.Add('UNION');
              end;

              SQL.Add(')');
              SQL.Add('GROUP BY 1,2,3,4');
              SQL.Add('ORDER BY 1,2,3'  );
              Prepare;

              ParamByName('Data1').Value := FormatDateTime('dd/mm/yy',MCData1.Date);
              ParamByName('Data2').Value := FormatDateTime('dd/mm/yy',MCData2.Date);
              Open;

              QRLEVNF     := 0;
              QRLEVICMS   := 0;
              QRLEVIPI    := 0;
              QRLEVPIS    := 0;
              QRLEVCOFINS := 0;
              QRLSVNF     := 0;
              QRLSVICMS   := 0;
              QRLSVIPI    := 0;
              QRLSVPIS    := 0;
              QRLSVCOFINS := 0;

              while not Relatorio.Eof do
              begin
                if Pos('ENTRADA',RelatorioNFOperacao.AsString) > 0 then
                begin
                  QRLEVNF     := QRLEVNF     + RelatorioVNF.AsFloat;
                  QRLEVICMS   := QRLEVICMS   + RelatorioVICMS.AsFloat;
                  QRLEVIPI    := QRLEVIPI    + RelatorioVIPI.AsFloat;
                  QRLEVPIS    := QRLEVPIS    + RelatorioVPIS.AsFloat;
                  QRLEVCOFINS := QRLEVCOFINS + RelatorioVCOFINS.AsFloat;
                end;

                if Pos('SAÍDA',RelatorioNFOperacao.AsString) > 0 then
                begin
                  QRLSVNF     := QRLSVNF     + RelatorioVNF.AsFloat;
                  QRLSVICMS   := QRLSVICMS   + RelatorioVICMS.AsFloat;
                  QRLSVIPI    := QRLSVIPI    + RelatorioVIPI.AsFloat;
                  QRLSVPIS    := QRLSVPIS    + RelatorioVPIS.AsFloat;
                  QRLSVCOFINS := QRLSVCOFINS + RelatorioVCOFINS.AsFloat;
                end;

                Relatorio.Next;
              end;  
            end;
          end;
begin
  with qrpGerencial_NF_Tipo_Operacao do
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
      WinControlFormDestroy(qrpGerencial_NF_Tipo_Operacao);
    end;
end;

procedure TqrpGerencial_NF_Tipo_Operacao.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpGerencial_NF_Tipo_Operacao);
  end;
end;

procedure TqrpGerencial_NF_Tipo_Operacao.RelatorioCalcFields(DataSet: TDataSet);
begin
  RelatorioC_CFOP.Value := RelatorioNFCfop.AsString+'-'+RelatorioNFDescricao.AsString;
end;

procedure TqrpGerencial_NF_Tipo_Operacao.QRBTotalGeralBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRETotalGeralVNF.Caption     := FormatFloat(',##,0.00',QRLSVNF     - QRLEVNF);
  QRETotalGeralVICMS.Caption   := FormatFloat(',##,0.00',QRLSVICMS   - QRLEVICMS);
  QRETotalGeralVIPI.Caption    := FormatFloat(',##,0.00',QRLSVIPI    - QRLEVIPI);
  QRETotalGeralVPIS.Caption    := FormatFloat(',##,0.00',QRLSVPIS    - QRLEVPIS);
  QRETotalGeralVCOFINS.Caption := FormatFloat(',##,0.00',QRLSVCOFINS - QRLEVCOFINS);
end;

procedure TqrpGerencial_NF_Tipo_Operacao.QRBDetalheBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLSubTotal.Font.Style         := [fsBold];
  QRDBSubGrupoNFETipo.Font.Style := [];
  QRDBSubGrupoCFOP.Font.Style    := [];
  QRDBSubGrupoVNF.Font.Style     := [];
  QRESubTotalVNF.Font.Style      := [fsBold];
  QRDBSubGrupoVICMS.Font.Style   := [];
  QRESubTotalVICMS.Font.Style    := [fsBold];
  QRDBSubGrupoVIPI.Font.Style    := [];
  QRESubTotalVIPI.Font.Style     := [fsBold];
  QRDBSubGrupoVPIS.Font.Style    := [];
  QRESubTotalVPIS.Font.Style     := [fsBold];
  QRDBSubGrupoVCOFINS.Font.Style := [];
  QRESubTotalVCOFINS.Font.Style  := [fsBold];
  if RelatorioNFOperacao.AsString = 'CANCELADO' then
  begin
    QRLSubTotal.Font.Style         := [fsStrikeOut];
    QRDBSubGrupoNFETipo.Font.Style := [fsStrikeOut];
    QRDBSubGrupoCFOP.Font.Style    := [fsStrikeOut];
    QRDBSubGrupoVNF.Font.Style     := [fsStrikeOut];
    QRESubTotalVNF.Font.Style      := [fsStrikeOut];
    QRDBSubGrupoVICMS.Font.Style   := [fsStrikeOut];
    QRESubTotalVICMS.Font.Style    := [fsStrikeOut];
    QRDBSubGrupoVIPI.Font.Style    := [fsStrikeOut];
    QRESubTotalVIPI.Font.Style     := [fsStrikeOut];
    QRDBSubGrupoVPIS.Font.Style    := [fsStrikeOut];
    QRESubTotalVPIS.Font.Style     := [fsStrikeOut];
    QRDBSubGrupoVCOFINS.Font.Style := [fsStrikeOut];
    QRESubTotalVCOFINS.Font.Style  := [fsStrikeOut];
  end;
end;

end.
