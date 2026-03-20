unit qGER_CRD;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, QRPDFFilt, QRExport, BMDThread, IBDatabase, IBSQL,
  math, StrUtils;

type
  TQRPGER_CRD = class(TQuickRep)
    BMTEvent: TBMDThread;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    TRelatorios: TIBTransaction;
    SQLConsulta: TIBSQL;
    Relatorio: TIBQuery;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    QRBTITULO: TQRBand;
    QRBCOLUNAS: TQRBand;
    QRGGRUPO: TQRGroup;
    QRGSUBGRUPO: TQRGroup;
    QRBDETALHES: TQRBand;
    QRBSUBTOTAL: TQRBand;
    QRBTOTAL: TQRBand;
    QRBSUMARIO: TQRBand;
    QRDDEEP: TQRDBText;
    QRBSUBDETALHES: TQRSubDetail;
    QRBRODAPE: TQRBand;
    QRLPageFooterFiltros: TQRLabel;
    QRLPageFooterLogin: TQRLabel;
    QRSPageFooterPagina: TQRSysData;
    QRLPageFooterHost: TQRLabel;
    QRSCP_DEEP: TQRShape;
    QRSGRP: TQRShape;
    QRDVTFA: TQRDBText;
    QRDD_TPCO: TQRDBText;
    RelatorioIDEP: TSmallintField;
    RelatorioDEEP: TIBStringField;
    RelatorioGPEP: TIBStringField;
    RelatorioCP_IDEP: TSmallintField;
    RelatorioCP_DEEP: TIBStringField;
    RelatorioTPCO: TSmallintField;
    RelatorioCLI_ITCD: TIntegerField;
    RelatorioCLI_INCD: TIntegerField;
    RelatorioPED_VLPK: TIBBCDField;
    RelatorioPED_ILPK: TIntegerField;
    RelatorioPED_VLAP: TIBBCDField;
    RelatorioPED_ILAP: TIntegerField;
    RelatorioPED_VLDV: TIBBCDField;
    RelatorioPED_ILDV: TIntegerField;
    RelatorioPED_VLAB: TIBBCDField;
    RelatorioPED_ILAB: TIntegerField;
    RelatorioPED_VLSP: TIBBCDField;
    RelatorioPED_ILSP: TIntegerField;
    RelatorioPED_PLSP: TIBBCDField;
    RelatorioFIS_VLNF: TIBBCDField;
    RelatorioFIS_ILNF: TIntegerField;
    RelatorioPED_VTLQ: TIBBCDField;
    RelatorioPED_ITLQ: TIntegerField;
    RelatorioFIN_VCRT: TIBBCDField;
    RelatorioFIN_ICRT: TIntegerField;
    RelatorioFIN_VPTO: TIBBCDField;
    RelatorioFIN_IPTO: TIntegerField;
    RelatorioFIN_VNPG: TIBBCDField;
    RelatorioFIN_INPG: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRBCABECALHO: TQRBand;
    QRILogo: TQRImage;
    QRLPageHeaderTitulo: TQRLabel;
    QRLPageHeaderSubTitulo: TQRLabel;
    QRLUCON: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLV1SP: TQRLabel;
    QRLI1SP: TQRLabel;
    QRLITSP: TQRLabel;
    QRLVTSP: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDITSP: TQRDBText;
    QRDVTSP: TQRDBText;
    QRDPPSP: TQRDBText;
    QRLI1DV: TQRLabel;
    QRLITDV: TQRLabel;
    QRLVTDV: TQRLabel;
    QRLV1DV: TQRLabel;
    QRDVTDV: TQRDBText;
    QRDITDV: TQRDBText;
    QRDVTAB: TQRDBText;
    QRDITAB: TQRDBText;
    QRLI1AB: TQRLabel;
    QRLV1AB: TQRLabel;
    QRLVTAB: TQRLabel;
    QRLITAB: TQRLabel;
    QRDVTAP: TQRDBText;
    QRDITAP: TQRDBText;
    QRLI1AP: TQRLabel;
    QRLV1AP: TQRLabel;
    QRLVTAP: TQRLabel;
    QRLITAP: TQRLabel;
    QRLFIN_VCRT: TQRLabel;
    QRDFIN_VCRT: TQRLabel;
    QRLFIN_VPTO: TQRLabel;
    QRDFIN_VPTO: TQRLabel;
    QRLFIN_VNPG: TQRLabel;
    QRDFIN_VNPG: TQRLabel;
    RelatorioCLI_ITEM: TIBStringField;
    QRLabel25: TQRLabel;
    QRDBText8: TQRDBText;
    QRLPPSP: TQRLabel;
    RelatorioD_TPCO: TIBStringField;
    RelatorioADM_VLPK: TIBBCDField;
    RelatorioADM_VTLQ: TIBBCDField;
    QREADM_VTLQ: TQRExpr;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure QRBDETALHESBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBTOTALBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGGRUPOBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    RECRelatorio: TRECRelatorios;

    procedure _Report;
    procedure _Select;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  QRPGER_CRD: TQRPGER_CRD;

implementation

{$R *.DFM}

Constructor TQRPGER_CRD.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TQRPGER_CRD.WinControlFormCreate(Sender: TObject);
begin
  with QRPGER_CRD do
    try
      _Select;
      _Report;

      if Relatorio.RecNo > 0 then
      begin
        Prepare;
        case RECRelatorio.PrintTAG of
          0: PreviewModal;
          1: Print;
        //  2: ExportToFilter(TQRPDFDocumentFilter.Create(PChar(oVER_DIR('C:\Sheild\Documentos\Ficha Técnica')        + '\' + RelatorioARTIGO.AsString + '.PDF')));
//          3: ExportToFilter(TQRXLSFilter.Create        (PChar(FrmExporta.DELocal.Text+'\'+FrmExporta.EDArquivo.Text + '.XLS')));
  //        4: ExportToFilter(TQRRTFExportFilter.Create  (PChar(FrmExporta.DELocal.Text+'\'+FrmExporta.EDArquivo.Text + '.DOC')));
        end;
      end else oException(Nil,'Registros não Encontrados !');
    finally
      WinControlFormDestroy(QRPGER_CRD);
    end;
end;

procedure TQRPGER_CRD.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorios);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(QRPGER_CRD);
  end;
end;

procedure TQRPGER_CRD._Select;
begin
  RECRelatorio.Titulo    := 'Relatório gerencial de vendas';
  RECRelatorio.SubTitulo := 'Faturamento por tipo de crédito';

  RECRelatorio.IDEP_INI := INTTOSTR(IFThen(RECRelatorio.IDEP > 0,RECRelatorio.IDEP,1));
  RECRelatorio.IDEP_FIM := INTTOSTR(IFThen(RECRelatorio.IDEP > 0,RECRelatorio.IDEP,9));

  { Filtros Datas }
  if not oEmpty(RECRelatorio.IEDataField) then
  RECRelatorio.RodapeFiltros := 'Período: ' + FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1) + ' até ' + FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);

  oOTransact(TRelatorios);
  with Relatorio do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.IDEP,PK.DEEP,PK.GPEP,PK.CP_IDEP ,PK.CP_DEEP,PK.TPCO,PK.D_TPCO,');
    SQL.Add('       PK.CLI_ITCD,PK.CLI_INCD,PK.CLI_ITEM,');
    SQL.Add('       PK.PED_VLPK * IIF(PK.D_TPCO = ''A'',0,IIF(PK.TPCO > 0,PK.TPCO,1)) AS ADM_VLPK,');
    SQL.Add('       PK.PED_VLPK,PK.PED_ILPK,');
    SQL.Add('       PK.PED_VLAP,PK.PED_ILAP,');
    SQL.Add('       PK.PED_VLDV,PK.PED_ILDV,');
    SQL.Add('       PK.PED_VLAB,PK.PED_ILAB,');
    SQL.Add('       PK.PED_VLSP,PK.PED_ILSP,PK.PED_PLSP,');
    SQL.Add('       PK.FIS_VLNF,PK.FIS_ILNF,');
    SQL.Add('       PK.FIN_VCRT,PK.FIN_ICRT,');
    SQL.Add('       PK.FIN_VPTO,PK.FIN_IPTO,');
    SQL.Add('       PK.FIN_VNPG,PK.FIN_INPG,');
    SQL.Add('       PK.PED_VTLQ * IIF(PK.D_TPCO = ''A'',0,IIF(PK.TPCO > 0,PK.TPCO,1)) AS ADM_VTLQ,');
    SQL.Add('       IIF(PK.D_TPCO = ''A'',PK.FIS_VLNF,PK.PED_VTLQ) AS PED_VTLQ,');
    SQL.Add('       IIF(PK.D_TPCO = ''A'',PK.FIS_ILNF,PK.PED_ITLQ) AS PED_ITLQ ');

    SQL.Add('FROM   SP_PED_VEN_REL_CRD (');

    SQL.Add('''' + RECRelatorio.IDEP_INI + ''',');
    SQL.Add('''' + RECRelatorio.IDEP_FIM + ''',');

    SQL.Add('''' + FormatDateTime('mm/dd/yy',RECRelatorio.IEDataText1) + ''',');
    SQL.Add('''' + FormatDateTime('mm/dd/yy',RECRelatorio.IEDataText2) + ''')');
    SQL.Add(' AS PK');

    SQL.Add('ORDER BY PK.IDEP,PK.CP_IDEP,PK.D_TPCO');

    Prepare;
    Open;
  end;
end;

procedure TQRPGER_CRD._Report;
begin
  { Padrão }
  oReportPageHeader(Self,RECRelatorio); { Cabeçalho }
  oReportPageFooter(Self,RECRelatorio); { Rodapé }

  { Admin }
  QREADM_VTLQ.Enabled := (RECUsuarios.ID = 0);
end;

procedure TQRPGER_CRD.QRBDETALHESBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  { Devoluções }
  if RelatorioPED_VLDV.AsFloat > 0 then
  begin
    QRDVTDV.Font.Color := clRed;
    QRDITDV.Font.Color := clRed;
  end else
  begin
    QRDVTDV.Font.Color := clWindowText;
    QRDITDV.Font.Color := clWindowText;
  end;

  { Abatimentos }
  if RelatorioPED_VLAB.AsFloat > 0 then
  begin
    QRDVTAB.Font.Color := clRed;
    QRDITAB.Font.Color := clRed;
  end else
  begin
    QRDVTAB.Font.Color := clWindowText;
    QRDITAB.Font.Color := clWindowText;
  end;

  { Bloqueios Financeiros }
  if RelatorioFIN_VCRT.AsFloat > 0 then
  begin
    QRLFIN_VCRT.Enabled := True;
    QRDFIN_VCRT.Enabled := True;
    QRDFIN_VCRT.Caption := FormatFloat(' R$ ,##,0.00',RelatorioFIN_VCRT.AsFloat) + ' (' + RelatorioFIN_ICRT.AsString + ')';
  end;

  if RelatorioFIN_VPTO.AsFloat > 0 then
  begin
    QRLFIN_VPTO.Enabled := True;
    QRDFIN_VPTO.Enabled := True;
    QRDFIN_VPTO.Caption := FormatFloat(' R$ ,##,0.00',RelatorioFIN_VPTO.AsFloat) + ' (' + RelatorioFIN_IPTO.AsString + ')';
  end;

  if RelatorioFIN_VNPG.AsFloat > 0 then
  begin
    QRLFIN_VNPG.Enabled := True;
    QRDFIN_VNPG.Enabled := True;
    QRDFIN_VNPG.Caption := FormatFloat(' R$ ,##,0.00',RelatorioFIN_VNPG.AsFloat) + ' (' + RelatorioFIN_INPG.AsString + ')';
  end;
end;

procedure TQRPGER_CRD.QRBTOTALBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (not QRLFIN_VCRT.Enabled) and (not QRLFIN_VPTO.Enabled) and (not QRLFIN_VNPG.Enabled) then
  QRBTOTAL.Height := 0 else
  QRBTOTAL.Height := 20;

  if RECParametros.ID = 0 then
  QRBTOTAL.Height := 40;

  if not QRLFIN_VCRT.Enabled then
  begin
    QRLFIN_VPTO.Left := QRLFIN_VCRT.Left;
    QRLFIN_VNPG.Left := QRLFIN_VPTO.Left;
  end else

  if not QRLFIN_VPTO.Enabled then
  begin
    QRLFIN_VNPG.Left := QRLFIN_VPTO.Left;
  end;

  QRDFIN_VCRT.Left := QRLFIN_VCRT.Left + QRLFIN_VCRT.Width + 1;

  QRLFIN_VPTO.Left := QRDFIN_VCRT.Left + QRDFIN_VCRT.Width + 7;
  QRDFIN_VPTO.Left := QRLFIN_VPTO.Left + QRLFIN_VPTO.Width + 1;

  QRLFIN_VNPG.Left := QRDFIN_VPTO.Left + QRDFIN_VPTO.Width + 7;
  QRDFIN_VNPG.Left := QRLFIN_VNPG.Left + QRLFIN_VNPG.Width + 1;
end;

procedure TQRPGER_CRD.QRGGRUPOBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLFIN_VCRT.Enabled := False;
  QRDFIN_VCRT.Enabled := False;

  QRLFIN_VPTO.Enabled := False;
  QRDFIN_VPTO.Enabled := False;

  QRLFIN_VNPG.Enabled := False;
  QRDFIN_VNPG.Enabled := False;

  { Separados }
  QRLV1SP.Enabled := ((RelatorioIDEP.AsInteger = 1) or (RelatorioIDEP.AsInteger = 4));
  QRLVTSP.Enabled := QRLV1SP.Enabled;
  QRDVTSP.Enabled := QRLV1SP.Enabled;

  QRLI1SP.Enabled := ((RelatorioIDEP.AsInteger = 1) or (RelatorioIDEP.AsInteger = 4));
  QRLITSP.Enabled := QRLI1SP.Enabled;
  QRDITSP.Enabled := QRLI1SP.Enabled;

  QRLPPSP.Enabled := ((RelatorioIDEP.AsInteger = 1) or (RelatorioIDEP.AsInteger = 4));
  QRDPPSP.Enabled := QRLPPSP.Enabled;

  { Devoluções }
  QRLV1DV.Enabled := ((RelatorioIDEP.AsInteger = 1) or (RelatorioIDEP.AsInteger = 4));
  QRLVTDV.Enabled := QRLV1DV.Enabled;
  QRDVTDV.Enabled := QRLV1DV.Enabled;

  QRLI1DV.Enabled := ((RelatorioIDEP.AsInteger = 1) or (RelatorioIDEP.AsInteger = 4));
  QRLITDV.Enabled := QRLI1DV.Enabled;
  QRDITDV.Enabled := QRLI1DV.Enabled;

  { Abatimentos }
  QRLV1AB.Enabled := ((RelatorioIDEP.AsInteger = 1) or (RelatorioIDEP.AsInteger = 4));
  QRLVTAB.Enabled := QRLV1AB.Enabled;
  QRDVTAB.Enabled := QRLV1AB.Enabled;

  QRLI1AB.Enabled := ((RelatorioIDEP.AsInteger = 1) or (RelatorioIDEP.AsInteger = 4));
  QRLITAB.Enabled := QRLI1AB.Enabled;
  QRDITAB.Enabled := QRLI1AB.Enabled;

  { Abertos }
  QRLV1AP.Enabled := ((RelatorioIDEP.AsInteger = 1) or (RelatorioIDEP.AsInteger = 4));
  QRLVTAP.Enabled := QRLV1AP.Enabled;
  QRDVTAP.Enabled := QRLV1AP.Enabled;

  QRLI1AP.Enabled := ((RelatorioIDEP.AsInteger = 1) or (RelatorioIDEP.AsInteger = 4));
  QRLITAP.Enabled := QRLI1AP.Enabled;
  QRDITAP.Enabled := QRLI1AP.Enabled;
end;

end.
