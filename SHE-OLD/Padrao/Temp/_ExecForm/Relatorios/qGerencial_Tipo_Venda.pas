unit qGerencial_Tipo_Venda;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport;

type
  TqrpGerencial_Tipo_Venda = class(TQuickRep)
    QRBDetalhe: TQRBand;
    QRGGrupo: TQRGroup;
    QRGSubGrupo: TQRGroup;
    QRBSubTotal: TQRBand;
    QRBTotalGeral: TQRBand;
    QRDBGrupoNFEOperacao: TQRDBText;
    TRelatorio: TIBTransaction;
    QRLSubGrupoCredito: TQRLabel;
    QRSubGrupo_1: TQRShape;
    Relatorio: TIBQuery;
    QRDBSubGrupoFaturado: TQRDBText;
    QRLSubGrupoFaturado: TQRLabel;
    QRDBSubGrupoCredito: TQRDBText;
    QRLSubGrupoTipoPedido: TQRLabel;
    QRDBSubGrupoTipoPedido: TQRDBText;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRBCabecalho: TQRBand;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    RelatorioIDEP: TSmallintField;
    RelatorioDEEP: TIBStringField;
    RelatorioSTPD: TIBStringField;
    RelatorioTPCO: TSmallintField;
    RelatorioTCDE: TIBBCDField;
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
  qrpGerencial_Tipo_Venda: TqrpGerencial_Tipo_Venda;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TqrpGerencial_Tipo_Venda.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpGerencial_Tipo_Venda.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter(Self,RECRelatorio); { Rodapé }
          end;

          procedure _Select;
          begin
            { Filtros Códigos Between }
            if (RECRelatorio.PEC1CodigoText <> 'TODOS') and (RECRelatorio.PEC2CodigoText <> 'TODOS') then
                RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.PEC1CodigoCaption   +': '+RECRelatorio.PEC1CodigoText   +' '+RECRelatorio.PEC2CodigoCaption+': '+RECRelatorio.PEC2CodigoText+' ';

            { Filtros Gerais }
            if (RECRelatorio.PEC1ConsultaText <> 'TODOS') then
                RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC1ConsultaCaption +': '+RECRelatorio.PEC1ConsultaText +' ';

            if (RECRelatorio.PEC2ConsultaText <> 'TODOS') then
                RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC2ConsultaCaption +': '+RECRelatorio.PEC2ConsultaText +' ';

            if (RECRelatorio.PEC3ConsultaText <> 'TODOS') then
                RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC3ConsultaCaption +': '+RECRelatorio.PEC3ConsultaText +' ';

            if (RECRelatorio.PEC4ConsultaText <> 'TODOS') then
                RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC4ConsultaCaption +': '+RECRelatorio.PEC4ConsultaText +' ';

            { Filtros Datas }
            if not oEmpty(RECRelatorio.IEDataField) then
               RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + 'Período por '+oPrimeiraLetraMaiuscula(RECRelatorio.IEDataCaption)+': '+ 'De '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1)+' Até '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);

            { Monta Relatório }
            oOTransact(TRelatorio);
            Relatorio.Close;
            Relatorio.ParamByName('IDEP_INI').Value := IFThen(RECRelatorio.DEEP = 'TODAS AS EMPRESAS',1,RECRelatorio.IDEP);
            Relatorio.ParamByName('IDEP_FIM').Value := IFThen(RECRelatorio.DEEP = 'TODAS AS EMPRESAS',9,RECRelatorio.IDEP);
            Relatorio.ParamByName('IDCV_INI').Value := IFThen(RECUsuarios.Grupo = 'VEN',RECUsuarios.Id,001);
            Relatorio.ParamByName('IDCV_FIM').Value := IFThen(RECUsuarios.Grupo = 'VEN',RECUsuarios.Id,999);
            Relatorio.ParamByName('DATA_INI').Value := RECRelatorio.IEDataText1;
            Relatorio.ParamByName('DATA_FIM').Value := RECRelatorio.IEDataText2;
            Relatorio.Open;
          end;
begin
  with qrpGerencial_Tipo_Venda do
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
      WinControlFormDestroy(qrpGerencial_Tipo_Venda);
    end;
end;

procedure TqrpGerencial_Tipo_Venda.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);
    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpGerencial_Tipo_Venda);
  end;
end;

end.
