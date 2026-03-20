unit qGerencial_NF_Peso;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport;

type
  TqrpGerencial_NF_Peso = class(TQuickRep)
    QRBDetalhe: TQRBand;
    QRGGrupo: TQRGroup;
    QRGSubGrupo: TQRGroup;
    QRBSubTotal: TQRBand;
    QRBTotalGeral: TQRBand;
    QRDBGrupoTitulo: TQRDBText;
    TRelatorio: TIBTransaction;
    QRLSubGrupoPARFantasia: TQRLabel;
    QRDBSubGrupoPARFantasia: TQRDBText;
    QRLSubGrupoNFEPesoBR: TQRLabel;
    QRLSubGrupoNFEPesoLQ: TQRLabel;
    QRDBSubGrupoNFEPesoBR: TQRDBText;
    QRDBSubGrupoNFEPesoLQ: TQRDBText;
    QRLTotalGeral: TQRLabel;
    QRETotalGeralNFEPesoBR: TQRExpr;
    QRETotalGeralNFEPesoLQ: TQRExpr;
    Relatorio: TIBQuery;
    RelatorioPARId: TIntegerField;
    RelatorioPARFantasia: TIBStringField;
    RelatorioNFEAno: TSmallintField;
    RelatorioNFEMes: TSmallintField;
    RelatorioNFEPesoBR: TIBBCDField;
    RelatorioNFEPesoLQ: TIBBCDField;
    RelatorioMesAno: TStringField;
    QRLSubGrupoQTVolume: TQRLabel;
    QRLSubGrupoQTNotaFiscal: TQRLabel;
    QRETotalGeralQTNotaFiscal: TQRExpr;
    RelatorioNFEQTVolume: TLargeintField;
    RelatorioNFEQTNotaFiscal: TLargeintField;
    QRDBSubGrupoQTVolume: TQRDBText;
    QRDBSubGrupoQTNotaFiscal: TQRDBText;
    RelatorioQTNotaFiscal: TIntegerField;
    RelatorioQTVolume: TIntegerField;
    QRESubTotalNFEPesoBR: TQRExpr;
    QRESubTotalNFEPesoLQ: TQRExpr;
    QRESubTotalQTNotaFiscal: TQRExpr;
    QRLSubTotal: TQRLabel;
    QRDBText1: TQRDBText;
    RelatorioNatureza: TIBStringField;
    QRLabel1: TQRLabel;
    QRSSubTotal_1: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRBCabecalho: TQRBand;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    procedure WinControlFormCreate(Sender: TObject);
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure QRBSubTotalBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure WinControlFormDestroy(Sender: TObject);
  private
    RECRelatorio: TRECRelatorios;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpGerencial_NF_Peso: TqrpGerencial_NF_Peso;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TqrpGerencial_NF_Peso.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpGerencial_NF_Peso.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader_(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter_(Self,RECRelatorio); { Rodapé }
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

              if IEEmpresa.Text <> 'TODAS AS EMPRESAS' then
              begin
                QRBSubTotal.Height              := 0;
                QRLSubTotal.Caption             := '';
                QRESubTotalNFEPesoBR.Expression := '';
                QRESubTotalNFEPesoLQ.Expression := '';
              end;

              IDEmpresa1 := IFThen(IEEmpresa.Text = 'TODAS AS EMPRESAS',1,RECRelatorio.IDEP);
              IDEmpresa2 := IFThen(IEEmpresa.Text = 'TODAS AS EMPRESAS',9,RECRelatorio.IDEP);

              oOTransact(TRelatorio);
              SQL.Clear;
              for i := IDEmpresa1 to IDEmpresa2 do
              begin
                SQL.Add('SELECT   PAR_SIS.ID "PARId",FANTASIA "PARFantasia",NAT_TIPO "Natureza",Extract(Year FROM NFE_DEMI)  "NFEAno",Extract(Month FROM NFE_DEMI) "NFEMes",SUM(NFE_PSBR) "NFEPesoBR",SUM(NFE_PSLQ) "NFEPesoLQ",SUM(NFE_QVOL) "NFEQTVolume",COUNT(*) "NFEQTNotaFiscal"');
                SQL.Add('FROM '   +oREPZero('NFE_CAB','_',i,3)+' "NFE_CAB"');
                SQL.Add('JOIN '   +oREPZero('NFE_TRA','_',i,3)+' "NFE_TRA" ON NFE_TRA.NFE_CCAB = NFE_CAB.ID');
                SQL.Add('JOIN     TAB_NAT "TAB_NAT" ON TAB_NAT.NAT_CNAT = NFE_CAB.NFE_CNAT');
                SQL.Add('JOIN     TAB_PAR_SIS "PAR_SIS" ON PAR_SIS.ID = '''+IntToStr(i)+'''');
                SQL.Add('WHERE    NFE_CAB.NFE_DEMI BETWEEN :Data1 AND :Data2');
                SQL.Add('AND      NOT FEMPTY(NFE_CAB.NFE_CHAV)');
                SQL.Add('AND      NFE_CAB.NFE_STA  = ''0''');
                SQL.Add('AND      TAB_NAT.NAT_FATU = ''1''');
                SQL.Add('AND      LEFT(PAR_SIS.CNPJ,8) = '''+LeftStr(RECRelatorio.CNPJEP,8)+'''');
                SQL.Add('GROUP BY PAR_SIS.ID,FANTASIA,NAT_TIPO,Extract(Year FROM NFE_DEMI),Extract(Month FROM NFE_DEMI)');
                if (i < 9) and (IEEmpresa.Text = 'TODAS AS EMPRESAS') then
                SQL.Add('UNION');
              end;
              SQL.Add('ORDER BY 4,5,2,3');
              Prepare;

              ParamByName('Data1').Value := FormatDateTime('dd/mm/yy',MCData1.Date);
              ParamByName('Data2').Value := FormatDateTime('dd/mm/yy',MCData2.Date);
              Open;
            end;
          end;
begin
  with qrpGerencial_NF_Peso do
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
      WinControlFormDestroy(qrpGerencial_NF_Peso);
    end;
end;

procedure TqrpGerencial_NF_Peso.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpGerencial_NF_Peso);
  end;
end;

procedure TqrpGerencial_NF_Peso.RelatorioCalcFields(DataSet: TDataSet);
begin
  RelatorioMesAno.Value       := aMes[RelatorioNFEMes.AsInteger]+' / '+oStrZero(RelatorioNFEAno.AsInteger,4);
  RelatorioQTVolume.Value     := RelatorioNFEQTVolume.AsInteger;
  RelatorioQTNotaFiscal.Value := RelatorioNFEQTNotaFiscal.AsInteger;
end;

procedure TqrpGerencial_NF_Peso.QRBSubTotalBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLSubTotal.Caption := 'Total '+RelatorioMesAno.AsString;
end;

end.
