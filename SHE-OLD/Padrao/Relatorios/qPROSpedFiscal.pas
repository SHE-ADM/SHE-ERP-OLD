unit qPROSpedFiscal;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, DateUtils, QRPDFFilt, QRExport;

type
  TqrpPROSpedFiscal = class(TQuickRep)
    QRBDetalhe: TQRBand;
    QRGGrupo: TQRGroup;
    QRGSubGrupo: TQRGroup;
    QRBSubTotal: TQRBand;
    QRBTotalGeral: TQRBand;
    QRDBGrupoTitulo: TQRDBText;
    Relatorio: TIBQuery;
    TRelatorio: TIBTransaction;
    QRLSubGrupoNCM: TQRLabel;
    QRDBSubGrupoNCM: TQRDBText;
    QRLSubGrupoDescricao: TQRLabel;
    QRLSubGrupoUnidade: TQRLabel;
    QRDBSubGrupoVLUnit: TQRDBText;
    QRDBSubGrupoTotal: TQRDBText;
    QRLTotalGeral: TQRLabel;
    QRETotalGeralSaldo: TQRExpr;
    QRETotalGeralTotal: TQRExpr;
    QRSTotalGeral_1: TQRShape;
    QRSubGrupo_2: TQRShape;
    QRLSubGrupoSaldo: TQRLabel;
    QRLSubGrupoVLUnit: TQRLabel;
    QRLSubGrupoTotal: TQRLabel;
    QRDBSubGrupoSaldo: TQRDBText;
    QRDBSubGrupoDescricao: TQRDBText;
    QRDBSubGrupoUnidade: TQRDBText;
    QRETotalGeralRecNo: TQRExpr;
    QRSubGrupo_1: TQRShape;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRLSite: TQRLabel;
    QRIInstagram: TQRImage;
    QRLInstagram: TQRLabel;
    QRIFacebook: TQRImage;
    QRLFacebook: TQRLabel;
    RelatorioDATA: TDateField;
    RelatorioIDEP: TIntegerField;
    RelatorioDEEP: TIBStringField;
    RelatorioNCM: TIBStringField;
    RelatorioDESCRICAO: TIBStringField;
    RelatorioUCOM: TIBStringField;
    RelatorioEF_QTDE: TIBBCDField;
    RelatorioEF_VPRC: TFloatField;
    RelatorioEF_TOTAL: TIBBCDField;
    RelatorioMESANO: TIBStringField;
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
  qrpPROSpedFiscal: TqrpPROSpedFiscal;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TqrpPROSpedFiscal.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpPROSpedFiscal.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader_(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter_(Self,RECRelatorio); { Rodapé }
          end;

          procedure _Select;
          begin
            { Monta Relatório }
            oOTransact(TRelatorio);
            with FrmRelatorios, Relatorio do
            begin
              { Filtro Inicial }
              RECRelatorio.RodapeFiltros := 'Empresa: Otimotex '+
                                            'Período: '+FormatDateTime('dd/mm/yy',MCData1.Date)+' até '+FormatDateTime('dd/mm/yy',MCData2.Date)+' '+
                                            '( Dt. Emissão )';
              Close;
              SQL.Clear;
              SQL.Add('SELECT   CAST('''+oRETMesExtenso(MCData2.Date)+' de '+oStrZero(YearOF(MCData2.Date),4)+''' AS VARCHAR(20)) AS MESANO,');
              SQL.Add('         PK.Data AS DATA,PK.IDEmpresa AS IDEP,PK.DEEmpresa AS DEEP,PK.NCM,PK.INVDescricao AS DESCRICAO,PK.INVUnidade AS UCOM,');
              SQL.Add('         PK.INVEstoque AS EF_QTDE,PK.INVPreco AS EF_VPRC,PK.INVTotal AS EF_TOTAL');
              SQL.Add('FROM     INVENTARIO AS PK');
              SQL.Add('WHERE    PK.DATA BETWEEN '''+FormatDateTime('mm/dd/yy',MCData1.Date)+''' AND '''+formatDateTime('mm/dd/yy',MCData2.Date)+'''');

              if RECRelatorio.IDEP > 0 then
              SQL.Add('AND      PK.IDEMPRESA = ''' + RECRelatorio.IDEP + '''');
              SQL.Add('ORDER BY PK.NCM');
              Open;
            end;
          end;

begin
  with qrpPROSpedFiscal do
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
      WinControlFormDestroy(qrpPROSpedFiscal);
    end;
end;

procedure TqrpPROSpedFiscal.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpPROSpedFiscal);
  end;
end;

end.
