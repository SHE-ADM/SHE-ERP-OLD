unit qCadastros_Listagem;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport, DateUtils,
     IBSQL;

type
  TqrpCadastros_Listagem = class(TQuickRep)
    TRelatorio: TIBTransaction;
    Relatorio: TIBQuery;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRBFKCabecalho: TQRBand;
    QRBDetalhe: TQRBand;
    QRBSumario: TQRBand;
    QRDDTCA: TQRDBText;
    RelatorioC_ID: TIntegerField;
    QRLTotal: TQRLabel;
    QRETOTAL_ITEM: TQRExpr;
    QRDDTPV: TQRDBText;
    QRDID: TQRDBText;
    QRDENDERECO: TQRDBText;
    QRDDECR: TQRDBText;
    QRDFANTASIA: TQRDBText;
    QRDFONE: TQRDBText;
    QRDEMAIL: TQRDBText;
    RelatorioC_ENDERECO: TStringField;
    QRBCabecalho: TQRBand;
    QRSCABECALHO: TQRShape;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRLID: TQRLabel;
    QRLFANTASIA: TQRLabel;
    QRLDTCA: TQRLabel;
    QRLDTPV: TQRLabel;
    QRLFONE: TQRLabel;
    QRLEMAIL: TQRLabel;
    QRLDECR: TQRLabel;
    QRDRAZAO: TQRDBText;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    RelatorioIDCD: TIntegerField;
    RelatorioFANTASIA: TIBStringField;
    RelatorioRAZAO: TIBStringField;
    RelatorioDECR: TIBStringField;
    RelatorioCONTATO: TIBStringField;
    RelatorioEMAIL: TIBStringField;
    RelatorioFONE: TIBStringField;
    RelatorioENDERECO: TIBStringField;
    RelatorioCEP: TIBStringField;
    RelatorioBAIRRO: TIBStringField;
    RelatorioCIDADE: TIBStringField;
    RelatorioUF: TIBStringField;
    RelatorioDTCA: TDateField;
    RelatorioDTPV: TDateField;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RelatorioCalcFields(DataSet: TDataSet);
  private
    RECRelatorio: TRECRelatorios;
    MEs: Integer;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpCadastros_Listagem: TqrpCadastros_Listagem;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TqrpCadastros_Listagem.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpCadastros_Listagem.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            if (RECRelatorio.IDEP > 0) and (RECRelatorios.IDEP <> RECParametros.EP_ID) then
            begin
              RECRelatorio.Titulo := RECRelatorio.Nome + ' ' + oPrimeiraLetraMaiuscula(RECRelatorio.DEEP);

              if ((RECRelatorio.Tipo <> EmptyStr) and (RECRelatorio.Tipo <> 'TODOS')) or ((RECRelatorio.Status <> EmptyStr) and (RECRelatorio.Status <> 'TODOS')) then
              begin
                RECRelatorio.Titulo := RECRelatorio.Titulo + ' [ ';
                RECRelatorio.Titulo := RECRelatorio.Titulo + IFThen((RECRelatorio.Tipo   <> EmptyStr) and (RECRelatorio.Tipo <> 'TODOS') and (RECRelatorio.Status <> EmptyStr) and (RECRelatorio.Status <> 'TODOS'),RECRelatorio.Tipo + ' + ' + RECRelatorio.Status,
                                                             IFThen( RECRelatorio.Tipo   <> 'TODOS',RECRelatorio.Tipo,
                                                             IFThen( RECRelatorio.Status <> 'TODOS',RECRelatorio.Status,'')));
                RECRelatorio.Titulo := RECRelatorio.Titulo + ' ]';
              end;
            end;
            
            oReportPageHeader(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter(Self,RECRelatorio); { Rodapé }
          end;

          procedure _Select;
          begin
            { Definindo o Select Principal }
            if Pos('Rep',RECRelatorio.Titulo) > 0 then
            begin
              QRLFANTASIA.Caption := 'Representante';

              QRLDECR.Enabled := False;
              QRDDECR.Enabled := False;
            end;

            { Filtros Gerais }
            if RECRelatorio.PEC1ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC1ConsultaAnd := 'AND ' + RECRelatorio.IEC1ConsultaField + ' ' + RECRelatorio.IEC1ConsultaWhere + ' ''' + Trim(RECRelatorio.PEC1ConsultaText) + RECRelatorio.IEC1ConsultaLike2 + '''';
              RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.IEC1ConsultaCaption + ': ' + RECRelatorio.PEC1ConsultaText + ' ';

              RECRelatorio.IEC1ConsultaAnd := oStrTran(RECRelatorio.IEC1ConsultaAnd,'USU_DUSU','CV.LOGIN'   );
              RECRelatorio.IEC1ConsultaAnd := oStrTran(RECRelatorio.IEC1ConsultaAnd,'REP_FANT','CR.FANTASIA');
            end;

            if RECRelatorio.PEC2ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC2ConsultaAnd := 'AND EXISTS (SELECT RM.ID FROM TAB_CEP_RMT AS RM WHERE PK.CEP BETWEEN RM.LOC_CEP_INI AND RM.LOC_CEP_FIM AND RM.RMT_NO = ''' + Trim(RECRelatorio.PEC2ConsultaText) + ''')';
              RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.IEC2ConsultaCaption + ': ' + RECRelatorio.PEC2ConsultaText + ' ';
            end;

            if RECRelatorio.PEC3ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC3ConsultaAnd := 'AND EXISTS (SELECT RN.ID FROM TAB_CEP_RNA AS RN WHERE PK.CEP BETWEEN RN.LOC_CEP_INI AND RN.LOC_CEP_FIM AND RN.RNA_NO = ''' + Trim(RECRelatorio.PEC3ConsultaText) + ''')';
              RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.IEC3ConsultaCaption + ': '+ RECRelatorio.PEC3ConsultaText + ' ';
            end;

            if RECRelatorio.PEC4ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC4ConsultaAnd := 'AND ' + RECRelatorio.IEC4ConsultaField + ' ' + RECRelatorio.IEC4ConsultaWhere +' ''' + RECRelatorio.IEC4ConsultaLike1 + Trim(RECRelatorio.PEC4ConsultaText) + RECRelatorio.IEC4ConsultaLike2 + '''';
              RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.IEC4ConsultaCaption + ': '+ RECRelatorio.PEC4ConsultaText + ' ';
              RECRelatorio.IEC4ConsultaAnd := oStrTran(RECRelatorio.IEC4ConsultaAnd,'UF.','PK.');
            end;

            { Filtros Datas }
            if Pos('Inativos',RECRelatorio.Tipo) > 0 then
            begin
              Mes := IFThen(RECRelatorio.Tipo = 'Inativos por 1 mês'   ,-01,
                     IFThen(RECRelatorio.Tipo = 'Inativos por 2 meses' ,-02,
                     IFThen(RECRelatorio.Tipo = 'Inativos por 3 meses' ,-03,
                     IFThen(RECRelatorio.Tipo = 'Inativos por 6 meses' ,-06,
                     IFThen(RECRelatorio.Tipo = 'Inativos por 9 meses' ,-09,
                     IFThen(RECRelatorio.Tipo = 'Inativos por 12 meses',-12,
                     IFThen(RECRelatorio.Tipo = 'Inativos por 18 meses',-18,
                     IFThen(RECRelatorio.Tipo = 'Inativos por 24 meses',-24,0))))))));

              RECRelatorio.IEDataCaption := RECRelatorio.Tipo;
              RECRelatorio.IEDataField   := 'DTPV';                                               
              RECRelatorio.IEDataText1   := 0;
              RECRelatorio.IEDataText2   := IncMonth(Date,Mes);
              RECRelatorio.IEDataAnd     := 'AND CAST(PK.' + RECRelatorio.IEDataField + ' AS DATE) <= ''' + FormatDateTime('mm/dd/yy',RECRelatorio.IEDataText2) + '''';
            end else
            if RECRelatorio.IEDataField <> EmptyStr then
            begin
              RECRelatorio.IEDataAnd     := 'AND CAST(PK.' + RECRelatorio.IEDataField + ' AS DATE) BETWEEN ''' + FormatDateTime('mm/dd/yy',RECRelatorio.IEDataText1) + ''' AND ''' + FormatDateTime('mm/dd/yy',RECRelatorio.IEDataText2) + '''';
              RECRelatorio.RodapeFiltros  := RECRelatorio.RodapeFiltros + 'Período - ' + oPrimeiraLetraMaiuscula(RECRelatorio.IEDataCaption) + ': ' + FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1) + ' Até ' + FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);
            end;

            RECRelatorio.IEFKDataAnd := oStrTran(RECRelatorio.IEDataAnd,'DTPV','DTCA'); { Pedido }
            RECRelatorio.OrderField  := IFThen(RECRelatorio.IEDataAnd = EmptyStr,'FANTASIA',RECRelatorio.IEDataField + ' DESC'); { Ordenação }

            { Destaque }
            QRDDTCA.Font.Style := [fsBold]; { Cadastro }
            QRDDTPV.Font.Style := [fsBold]; { Pedido   }

            if Pos('DTCA',RECRelatorio.IEDataAnd) > 0 then
               QRDDTPV.Font.Style := [] else
            if Pos('DTPV',RECRelatorio.IEDataAnd) > 0 then
               QRDDTCA.Font.Style := [];

            oOTransact(TRelatorio);
            with Relatorio do
            begin
              Close;
              SQL.Clear;

              { Cadastro - Apenas Ativos }
//              if RECRelatorio.Tipo = 'A
              SQL.Add('SELECT PK.IDCD,PK.FANTASIA ,PK.RAZAO ,PK.DECR,');
              SQL.Add('       PK.CONTATO ,PK.EMAIL,PK.FONE  ,');
              SQL.Add('       PK.ENDERECO,PK.CEP  ,PK.BAIRRO,PK.CIDADE,PK.UF,');
              SQL.Add('       MAX(PK.DTCA) AS DTCA,MAX(PK.DTPV) AS DTPV');
              SQL.Add('FROM (');

              SQL.Add('SELECT PK.ID AS IDCD,PK.FANTASIA,PK.RAZAO,CR.FANTASIA AS DECR,');
              SQL.Add('       PK.CONTATO   ,PK.EMAIL,TRIM(IIF(NOT FEMPTY(PK.DDD) AND CHAR_LENGTH(PK.TEL) >= 8 ,''(''||PK.DDD||'') '','''')||IIF(CHAR_LENGTH(PK.TEL) = 9,LEFT(PK.TEL,5)||''-''||RIGHT(PK.TEL,4),IIF(CHAR_LENGTH(PK.TEL) = 8,LEFT(PK.TEL,4)||''-''||RIGHT(PK.TEL,4),''''))) AS FONE,');
              SQL.Add('       TRIM(PK.TLO_TX||'' ''||PK.LOG_NO||IIF(NOT FEMPTY(PK.NRO),'', '','''')||PK.NRO) AS ENDERECO,PK.CEP,PK.BAI_NO AS BAIRRO,PK.LOC_NO AS CIDADE,PK.UF,');
              SQL.Add('       CAST(PK.DTCA AS DATE) AS DTCA,CAST(PK.DTPV AS DATE) AS DTPV');

              SQL.Add('FROM   CAD_CLI  AS PK');
              SQL.Add('JOIN   CAD_REP  AS CR ON (CR.ID = CAST(PK.IDCR AS INTEGER))');
              SQL.Add('JOIN   TAB_USER AS CV ON (CV.ID = PK.IDCV)');

              SQL.Add('WHERE PK.ID > 0');

              { Empresa }






//              PK.CDST = 30'); { Status Ativo }
              SQL.Add('AND    CAST(PK.DTPV AS DATE) IS NULL'); { Ainda não fez pedido }

              { Caso usuário seja um vendedor }
              if RECUsuarios.Grupo    = 'VEN' then
                 SQL.Add('AND PK.IDCV = ''' + RECUsuarios.Id + '''');

              SQL.Add(RECRelatorio.IEC1ConsultaAnd);
              SQL.Add(RECRelatorio.IEC2ConsultaAnd);
              SQL.Add(RECRelatorio.IEC3ConsultaAnd);
              SQL.Add(RECRelatorio.IEC4ConsultaAnd);
              SQL.Add(RECRelatorio.IEDataAnd);

              { Empresa }
              if RECRelatorio.IDEP > 0 then
                 SQL.Add('AND PK.IDEP = ''' + RECRelatorio.IDEP + '''');

              SQL.Add('UNION');

              { Pedidos }
              SQL.Add('SELECT CD.ID AS IDCD,CD.FANTASIA,CD.RAZAO,CR.FANTASIA AS DECR,');
              SQL.Add('       CD.CONTATO   ,CD.EMAIL,TRIM(IIF(NOT FEMPTY(CD.DDD) AND CHAR_LENGTH(CD.TEL) >= 8 ,''(''||CD.DDD||'') '','''')||IIF(CHAR_LENGTH(CD.TEL) = 9,LEFT(CD.TEL,5)||''-''||RIGHT(CD.TEL,4),IIF(CHAR_LENGTH(CD.TEL) = 8,LEFT(CD.TEL,4)||''-''||RIGHT(CD.TEL,4),''''))) AS FONE,');
              SQL.Add('       TRIM(CD.TLO_TX||'' ''||CD.LOG_NO||IIF(NOT FEMPTY(CD.NRO),'', '','''')||CD.NRO) AS ENDERECO,CD.CEP,CD.BAI_NO AS BAIRRO,CD.LOC_NO AS CIDADE,CD.UF,');
              SQL.Add('       CAST(CD.DTCA AS DATE) AS DTCA,CAST(PK.DTCA AS DATE) AS DTPV');

              SQL.Add('FROM ' + oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3) + ' AS PK');
              SQL.Add('JOIN CAD_CLI  AS CD ON (CD.ID = PK.IDCD)');
              SQL.Add('JOIN CAD_REP  AS CR ON (CR.ID = CAST(PK.IDCR AS INTEGER))');
              SQL.Add('JOIN TAB_USER AS CV ON (CV.ID = PK.IDCV)');

              SQL.Add('WHERE CD.CDST = 30'); { Status Ativo }

              { Caso usuário seja um vendedor }
              if RECUsuarios.Grupo    = 'VEN' then
                 SQL.Add('AND PK.IDCV = ''' + RECUsuarios.Id + '''');

              SQL.Add(RECRelatorio.IEC1ConsultaAnd);
              SQL.Add(RECRelatorio.IEC2ConsultaAnd);
              SQL.Add(RECRelatorio.IEC3ConsultaAnd);
              SQL.Add(RECRelatorio.IEC4ConsultaAnd);
              SQL.Add(RECRelatorio.IEFKDataAnd);

              { Empresa }
              if RECRelatorio.IDEP > 0 then
              begin
                SQL.Add('AND (EXISTS (SELECT FK.IDPK FROM '   + oREPZero('PED_VEN_ITE','_',RECParametros.EP_ID,3) + ' AS FK');
                SQL.Add('             WHERE  FK.IDPK    = PK.ID');
                SQL.Add('             AND    FK.CP_IDEP = ''' + RECRelatorio.IDEP + ''')');
              end;

              SQL.Add(') AS PK');
              
              SQL.Add('GROUP BY IDCD,FANTASIA ,RAZAO ,DECR,');
              SQL.Add('         CONTATO ,EMAIL,FONE  ,');
              SQL.Add('         ENDERECO,CEP  ,BAIRRO,CIDADE,UF');

              SQL.Add('ORDER BY ' + RECRelatorio.OrderField);
              Prepare;
              Open;
            end;
          end;
begin
  with qrpCadastros_Listagem do
    try
      _Report;
      _Select;

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
      WinControlFormDestroy(qrpCadastros_Listagem);
    end;
end;

procedure TqrpCadastros_Listagem.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpCadastros_Listagem);
  end;
end;

procedure TqrpCadastros_Listagem.QRBDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRDDTPV.Enabled := (RelatorioDTPV.AsDateTime > 0);

  if RelatorioC_ID.AsInteger mod 2 = 0 then
     QRBDetalhe.Color := clWhite
  else
     QRBDetalhe.Color := $00E9E9E9;
end;

procedure TqrpCadastros_Listagem.RelatorioCalcFields(
  DataSet: TDataSet);
begin
  RelatorioC_ID.Value       := Relatorio.RecNo;
  RelatorioC_ENDERECO.Value := RelatorioENDERECO.AsString+' '+
                               RelatorioBAIRRO.AsString  +' '+
                               RelatorioCIDADE.AsString  +' '+
                               RelatorioUF.AsString;
end;

end.
