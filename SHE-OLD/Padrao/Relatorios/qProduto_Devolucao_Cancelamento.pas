unit qProduto_Devolucao_Cancelamento;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport,
     IBSQL, IDGlobal;

type
  TqrpProduto_Devolucao_Cancelamento = class(TQuickRep)
    TRelatorio: TIBTransaction;
    QCadastro: TIBQuery;
    Relatorio: TIBQuery;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRBFKCabecalho: TQRBand;
    QRBDetalhe: TQRBand;
    QRBSumario: TQRBand;
    SQLConsulta: TIBSQL;
    QRDProduto: TQRDBText;
    QRDQuantidade: TQRDBText;
    QRDMotivo: TQRDBText;
    RelatorioC_ID: TIntegerField;
    QRLTotal: TQRLabel;
    QRETOTAL_ITEM: TQRExpr;
    QRDDescricao: TQRDBText;
    QRDCDPK: TQRDBText;
    QRDInfAdCAD: TQRDBText;
    QRDDECL: TQRDBText;
    RelatorioDECL: TIBStringField;
    RelatorioDECV: TIBStringField;
    RelatorioDECR: TIBStringField;
    RelatorioDESCRICAO: TIBStringField;
    RelatorioQUANTIDADE: TIBStringField;
    RelatorioMOTIVO: TIBStringField;
    RelatorioINFADCAD: TIBStringField;
    QRDDTPK: TQRDBText;
    RelatorioPRODUTO: TIBStringField;
    RelatorioVUPV: TFloatField;
    QRDVUPV: TQRDBText;
    RelatorioC_INFADCAD: TStringField;
    RelatorioCDPK: TIBStringField;
    RelatorioDTPK: TDateField;
    RelatorioCDFK: TIBStringField;
    RelatorioDTFK: TDateField;
    QRDDEFK: TQRDBText;
    RelatorioC_DEFK: TStringField;
    QRBCabecalho: TQRBand;
    QRSCABECALHO: TQRShape;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRLCDPK: TQRLabel;
    QRLDTPK: TQRLabel;
    QRLMotivo: TQRLabel;
    QRLDEFK: TQRLabel;
    QRLDECL: TQRLabel;
    QRLProduto: TQRLabel;
    QRLDescricao: TQRLabel;
    QRLQuantidade: TQRLabel;
    QRLVUPV: TQRLabel;
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
  private
    RECRelatorio: TRECRelatorios;
    InfAdCAD: String;
    procedure _Pesquisa_Categorias;
    procedure _Pesquisa_Fornecedor;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpProduto_Devolucao_Cancelamento: TqrpProduto_Devolucao_Cancelamento;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TqrpProduto_Devolucao_Cancelamento.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpProduto_Devolucao_Cancelamento.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter(Self,RECRelatorio); { Rodapé }
          end;

          procedure _Select;
          begin
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
              RECRelatorio.IEDataAnd    := 'AND '+RECRelatorio.IEDataField+' BETWEEN '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText1)+''' AND '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText2)+'''';
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + 'Período por '+oPrimeiraLetraMaiuscula(RECRelatorio.IEDataCaption)+': '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1)+' Até '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);
            end;

            oOTransact(TRelatorio);
            with Relatorio do
            begin
              Close;
              SQL.Clear;

              { Ricardo
                CP.PRO_DPRO||' '||TRIM(COALESCE(CP.DEGRD,'''')||'' ''||TRIM(COALESCE(CP.DECOR,'''')||'' ''||TRIM(COALESCE(CP.CDGRD,'''')||'' ''||TRIM(COALESCE(CP.REGRD,''''))))) }

              { Devolução }
              if Pos(RECRelatorio.Status,'TODOSDEVOLUÇÃO') > 0 then
              begin
                SQL.Add('SELECT   PK.CDPK,PK.DTPK,PK.CDFK,PK.DTFK,');
                SQL.Add('         CL.CLI_FANT AS DECL,CV.USU_DUSU AS DECV,CR.REP_FANT AS DECR,');
                SQL.Add('         PRODUTO,DESCRICAO||'' ''||COALESCE(COR,'''') AS DESCRICAO,');
                SQL.Add('         CAST(PK.QUANTIDADE AS INTEGER)||'' ''||PK.UCOM AS QUANTIDADE,PK.VUPV,');
                SQL.Add('         PK.MOTIVO,');
                SQL.Add('         TRIM(CAST(SUBSTRING(PK.INFADCAD FROM 1 FOR 256) AS VARCHAR(256))) AS INFADCAD');
                SQL.Add('FROM     PED_VEN_DEV AS PK');
                SQL.Add('JOIN     CAD_CLI     AS CL ON (CL.ID = PK.IDCL)');
                SQL.Add('JOIN     CAD_USU     AS CV ON (CV.ID = PK.IDCV)');
                SQL.Add('JOIN     CAD_REP     AS CR ON (CR.ID = PK.IDCR)');
                SQL.Add('JOIN     CAD_PRO     AS CP ON (CP.ID = PK.IDCP)');
                SQL.Add('WHERE    PK.IDEP = '''+IntToStr(RECRelatorio.IDEP)+'''');

                if RECRelatorio.Tipo <> 'TODOS' then
                   SQL.Add('AND PK.MOTIVO = '''+RECRelatorio.Tipo+'''');

                SQL.Add(RECRelatorio.IEC1ConsultaAnd);
                SQL.Add(RECRelatorio.IEC2ConsultaAnd);
                SQL.Add(RECRelatorio.IEC3ConsultaAnd);
                SQL.Add(RECRelatorio.IEC4ConsultaAnd);
                SQL.Add(RECRelatorio.IEDataAnd);
              end;

              { Cancelamento }
              if Pos(RECRelatorio.Status,'TODOSCANCELAMENTO') > 0 then
              begin
                if Pos(RECRelatorio.Status,'TODOSDEVOLUÇÃO') > 0 then
                   SQL.Add('UNION');

                SQL.Add('SELECT   PK.CDPK,PK.DTPK,NULL AS CDFK,PK.DTFK,');
                SQL.Add('         CL.CLI_FANT AS DECL,CV.USU_DUSU AS DECV,CR.REP_FANT AS DECR,');
                SQL.Add('         PRODUTO,DESCRICAO||'' ''||COALESCE(COR,'''') AS DESCRICAO,');
                SQL.Add('         CAST(PK.QUANTIDADE AS INTEGER)||'' ''||PK.UCOM AS QUANTIDADE,PK.VUPV,');
                SQL.Add('         PK.MOTIVO,');
                SQL.Add('         TRIM(CAST(SUBSTRING(PK.INFADCAD FROM 1 FOR 256) AS VARCHAR(256))) AS INFADCAD');
                SQL.Add('FROM     PED_VEN_CAN AS PK');
                SQL.Add('JOIN     CAD_CLI     AS CL ON (CL.ID = PK.IDCL)');
                SQL.Add('JOIN     CAD_USU     AS CV ON (CV.ID = PK.IDCV)');
                SQL.Add('JOIN     CAD_REP     AS CR ON (CR.ID = PK.IDCR)');
                SQL.Add('JOIN     CAD_PRO     AS CP ON (CP.ID = PK.IDCP)');
                SQL.Add('WHERE    PK.IDEP = '''+IntToStr(RECRelatorio.IDEP)+'''');

                if RECRelatorio.Tipo <> 'TODOS' then
                   SQL.Add('AND PK.MOTIVO = '''+RECRelatorio.Tipo+'''');

                SQL.Add(RECRelatorio.IEC1ConsultaAnd);
                SQL.Add(RECRelatorio.IEC2ConsultaAnd);
                SQL.Add(RECRelatorio.IEC3ConsultaAnd);
                SQL.Add(RECRelatorio.IEC4ConsultaAnd);
                SQL.Add(RECRelatorio.IEDataAnd);
              end;

              SQL.Add('ORDER BY '+IFThen(RECRelatorio.IEDataField = 'DTPK','2','4'));
              Open;
            end;
          end;
begin
  with qrpProduto_Devolucao_Cancelamento do
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
      WinControlFormDestroy(qrpProduto_Devolucao_Cancelamento);
    end;
end;

procedure TqrpProduto_Devolucao_Cancelamento.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpProduto_Devolucao_Cancelamento);
  end;
end;

procedure TqrpProduto_Devolucao_Cancelamento.QRBDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if RelatorioC_ID.AsInteger mod 2 = 0 then
     QRBDetalhe.Color := clWhite
  else
     QRBDetalhe.Color := $00E9E9E9;

  if RelatorioC_INFADCAD.AsString <> EmptyStr then
     QRDINFADCAD.Enabled := True
  else
     QRDINFADCAD.Enabled := False;

  QRBDetalhe.Height := IFThen(RelatorioC_INFADCAD.AsString <> EmptyStr,25,11);
end;

procedure TqrpProduto_Devolucao_Cancelamento.RelatorioCalcFields(
  DataSet: TDataSet);
begin
  RelatorioC_ID.Value   := Relatorio.RecNo;
  RelatorioC_DEFK.Value := Trim(IFThen(not oEmpty(RelatorioCDFK.AsString),RelatorioCDFK.AsString+' - ','')+FormatDateTime('dd/mm/yy',RelatorioDTFK.AsDateTime));
  if RelatorioInfAdCAD.AsString <> InfAdCAD then
  begin
    InfAdCAD := RelatorioInfAdCAD.AsString;
    RelatorioC_InfAdCAD.Value := InfAdCAD;
  end;
end;

procedure TqrpProduto_Devolucao_Cancelamento._Pesquisa_Categorias;
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

procedure TqrpProduto_Devolucao_Cancelamento._Pesquisa_Fornecedor;
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

end.
