unit qEtiqueta_Id;

interface

uses oPrincipal, ACBrBarCode,
  IBDatabase, QRCtrls, jpeg, QuickRpt, Classes, Controls,ExtCtrls,
  Windows, SysUtils, Messages, Graphics,
  StdCtrls, ACBrBase, ACBrETQ, Math, StrUtils,
  QRDBTextRotate, DB, IBCustomDataSet, IBQuery, QrAngLbl, QRPDFFilt,
  QRExport, IBTable;

type
  TqrpEtiqueta_Id = class(TQuickRep)
    TSCadastro: TIBTransaction;
    Relatorio: TIBQuery;
    QRBDetalhe: TQRBand;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    RelatorioC_COMP1: TStringField;
    RelatorioC_COMP2: TStringField;
    QRSPrincipal: TQRShape;
    QRITituloLogo: TQRImage;
    QRSTitulo: TQRShape;
    QRLCDEmpresa: TQRLabel;
    QRLCDCNPJ: TQRLabel;
    QRSL1: TQRShape;
    QRSL3: TQRShape;
    QRSL2: TQRShape;
    QRSL4: TQRShape;
    QRLInfoA: TQRLabel;
    QRLComposicao: TQRLabel;
    QRSL5C1: TQRShape;
    QRDBILavagem1: TQRDBImage;
    QRDBILavagem2: TQRDBImage;
    QRDBILavagem3: TQRDBImage;
    QRDBILavagem4: TQRDBImage;
    QRDBILavagem5: TQRDBImage;
    QRDBILavagem6: TQRDBImage;
    QRDBILavagem7: TQRDBImage;
    QRLLavagem: TQRLabel;
    QRDBComp1: TQRDBText;
    QRSLogo: TQRShape;
    QRDBRendimento: TQRDBText;
    QRLRendimento: TQRLabel;
    QRDBGramatura: TQRDBText;
    QRLGramatura: TQRLabel;
    QRDBLargUtil: TQRDBText;
    QRLabel1: TQRLabel;
    QRLLargTotal: TQRLabel;
    QRDBLargTotal: TQRDBText;
    QRLCartela: TQRLabel;
    QRShape2: TQRShape;
    QRDBComp2: TQRDBText;
    QRLabel3: TQRLabel;
    RelatorioC_CBAR: TStringField;
    TCadastro: TIBTransaction;
    QCadastro: TIBQuery;
    QRLArtigo: TQRLabel;
    QRDBArtigo: TQRDBText;
    QRSL1C1: TQRShape;
    QRDBCor: TQRDBText;
    QRLCor: TQRLabel;
    QRDBDEOrigem: TQRDBText;
    QRDBDescricao: TQRDBText;
    RelatorioID: TIntegerField;
    RelatorioPRO_CUSU: TIntegerField;
    RelatorioPRO_IDNO: TIntegerField;
    RelatorioPRO_DTNO: TDateField;
    RelatorioPRO_CDPD: TIntegerField;
    RelatorioPRO_CDRO: TIntegerField;
    RelatorioPRO_CDNF: TIntegerField;
    RelatorioPRO_CDEP: TIntegerField;
    RelatorioPRO_CDFO: TIntegerField;
    RelatorioPRO_ITEM: TIBStringField;
    RelatorioPRO_IPRO: TIntegerField;
    RelatorioPRO_CART: TIBStringField;
    RelatorioPRO_CPRO: TIBStringField;
    RelatorioPRO_CCOR: TIntegerField;
    RelatorioPRO_RCOR: TIBStringField;
    RelatorioPRO_DCOR: TIBStringField;
    RelatorioPRO_IPR2: TIntegerField;
    RelatorioPRO_CPR2: TIBStringField;
    RelatorioPRO_CCO2: TIntegerField;
    RelatorioPRO_RCO2: TIBStringField;
    RelatorioPRO_DCO2: TIBStringField;
    RelatorioPRO_DPRO: TIBStringField;
    RelatorioPRO_COMP: TIBStringField;
    RelatorioPRO_DUNI: TIBStringField;
    RelatorioPRO_QTDE: TIBBCDField;
    RelatorioPRO_QTRL: TSmallintField;
    RelatorioPRO_PREC: TFloatField;
    RelatorioPRO_UNIT: TFloatField;
    RelatorioPRO_TOTA: TIBBCDField;
    RelatorioPRO_CBAR: TIBStringField;
    RelatorioPRO_CCLF: TIBStringField;
    RelatorioPRO_CCST: TIBStringField;
    RelatorioPRO_DORI: TIBStringField;
    RelatorioPRO_INST: TIBStringField;
    RelatorioPRO_CDET: TIBStringField;
    RelatorioPRO_CFOR: TIBStringField;
    RelatorioPRO_QEST: TIBBCDField;
    RelatorioPRO_REST: TSmallintField;
    RelatorioPRO_QRES: TIBBCDField;
    RelatorioPRO_RRES: TSmallintField;
    RelatorioPRO_QSEP: TIBBCDField;
    RelatorioPRO_RSEP: TSmallintField;
    RelatorioPRO_QDIS: TIBBCDField;
    RelatorioPRO_RDIS: TSmallintField;
    RelatorioPRO_QDEF: TIBBCDField;
    RelatorioPRO_RDEF: TSmallintField;
    RelatorioPRO_QPRC: TIBBCDField;
    RelatorioPRO_QPRG: TIBBCDField;
    RelatorioPRO_PDIS: TIBBCDField;
    RelatorioPRO_PESO: TIBBCDField;
    RelatorioPRO_METR: TIBBCDField;
    RelatorioPRO_REND: TIBBCDField;
    RelatorioPRO_GRAM: TIBBCDField;
    RelatorioPRO_LARG: TIBBCDField;
    RelatorioPRO_UTIL: TIBBCDField;
    RelatorioPRO_STLN: TIBStringField;
    RelatorioPRO_STAV: TIBStringField;
    RelatorioPRO_CCOL: TIntegerField;
    RelatorioPRO_DCOL: TIBStringField;
    RelatorioPRO_CGRP: TIntegerField;
    RelatorioPRO_RGRP: TIBStringField;
    RelatorioPRO_DGRP: TIBStringField;
    RelatorioPRO_CCAT: TIntegerField;
    RelatorioPRO_RCAT: TIBStringField;
    RelatorioPRO_DCAT: TIBStringField;
    RelatorioPRO_CTNR: TIBStringField;
    RelatorioPRO_DMAP: TIBStringField;
    RelatorioPRO_LOTE: TIBStringField;
    RelatorioPRO_FLAG: TSmallintField;
    RelatorioPRO_STA: TIBStringField;
    RelatorioPRO_OBSE: TMemoField;
    RelatorioPRO_FOTO: TBlobField;
    RelatorioPRO_PRN1: TBlobField;
    RelatorioPRO_PRN2: TBlobField;
    RelatorioPRO_PRN3: TBlobField;
    RelatorioPRO_PRN4: TBlobField;
    RelatorioPRO_PRN5: TBlobField;
    RelatorioPRO_PRN6: TBlobField;
    RelatorioPRO_PRN7: TBlobField;
    RelatorioPRO_PRN8: TBlobField;
    RelatorioPRO_COM1: TIBStringField;
    RelatorioPRO_COM2: TIBStringField;
    RelatorioPRO_COM3: TIBStringField;
    RelatorioPRO_COM4: TIBStringField;
    RelatorioPRO_COM5: TIBStringField;
    RelatorioPRO_DEEP: TIBStringField;
    RelatorioPRO_CNPE: TIBStringField;
    RelatorioPRO_DEFO: TIBStringField;
    RelatorioPRO_CNPF: TIBStringField;
    QRIProduto: TQRImage;
    QRDBBarCodeProduto: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    RelatorioPRO_PSCN: TIBBCDField;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRMInfAdic: TQRDBRichText;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    RECRelatorios: TRECRelatorios;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorios: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpEtiqueta_Id: TqrpEtiqueta_Id;

implementation

uses uPrincipal, bPrincipal, pExporta;

{$R *.DFM}

Constructor TqrpEtiqueta_Id.Create(AOwner: TComponent; const ARECRelatorios: TRECRelatorios);
begin
  RECRelatorios := ARECRelatorios;
  inherited Create(AOwner);
end;

procedure TqrpEtiqueta_Id.WinControlFormCreate(Sender: TObject);
          procedure SQLRelatorio;
          begin
            { Monta Relatório }
            Relatorio.Prepare;
            Relatorio.Open;
          end;
begin
  with qrpEtiqueta_Id do
  begin
    { Define Impressora }
    oExecPrinter(RECRelatorios.Handle,'Etiquetas');
    if oEmpty(RECUsuarios.CurrentPrinter) then
    begin
      oExecPrinter(RECRelatorios.Handle,'Etiquetas');
      if oEmpty(RECUsuarios.CurrentPrinter) then
         RECRelatorios.PrintTAG := 0;
    end;

    { Realiza consistencia }
    oOTransact(TSCadastro);
    oOTransact(TCadastro);
    SQLRelatorio;

    { Título Relatório }
    ReportTitle := 'Etiquetas de Identificação';

    { Cabeçalho Página }
    //oLoadJPG(RECParametros.IMG_JPG_ETQ,QRITituloLogo.Picture);
    QRLCDEmpresa.Caption := RECParametros.EP_NO_RZ;
    QRLCDCNPJ.Caption    := 'CNPJ: '+RECParametros.C_Cnpj;

    Prepare;
    case RECRelatorios.PrintTAG of
      0: PreviewModal;
      1: Print;
      2: ExportToFilter(TQRPDFDocumentFilter.Create(PChar(FrmExporta.DELocal.Text+'\'+FrmExporta.EDArquivo.Text+'.PDF')));
      3: ExportToFilter(TQRXLSFilter.Create        (PChar(FrmExporta.DELocal.Text+'\'+FrmExporta.EDArquivo.Text+'.XLS')));
      4: ExportToFilter(TQRRTFExportFilter.Create  (PChar(FrmExporta.DELocal.Text+'\'+FrmExporta.EDArquivo.Text+'.DOC')));
    end;
  end;
end;

procedure TqrpEtiqueta_Id.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TCadastro);
    oCTransact(TSCadastro);

    Finalize(RECRelatorios);
    FillChar(RECRelatorios,SizeOf(RECRelatorios),0);
  finally
    oExecPrinter(RECRelatorios.Handle,'Relatórios');
    FreeAndNil(qrpEtiqueta_Id);
  end;
end;

procedure TqrpEtiqueta_Id.RelatorioCalcFields(DataSet: TDataSet);
var
  Composicao: String;
begin
  if oPosCount('SUPERFICIE',RelatorioPRO_COMP.AsString) > 0 then
  begin
    RelatorioC_COMP1.Value := Trim(Copy(RelatorioPRO_COMP.AsString,1,Pos('SUPERFICIE',RelatorioPRO_COMP.AsString)-1));
    RelatorioC_COMP2.Value := Trim(Copy(RelatorioPRO_COMP.AsString,Pos('SUPERFICIE',RelatorioPRO_COMP.AsString),Length(RelatorioPRO_COMP.AsString)));
  end else
  begin
    Composicao := oRETComposicao(RelatorioPRO_COMP.AsString);
    RelatorioC_COMP1.Value := IFThen(Pos('|',Composicao) = 0,Composicao,LeftStr(Composicao ,Pos('|',Composicao) - 1));
    RelatorioC_COMP2.Value := IFThen(Pos('|',Composicao) = 0,'',RightStr(Composicao,Length(Composicao)  - Pos('|',Composicao)));
  end;
end;

procedure TqrpEtiqueta_Id.QRBDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  BMP: TBitmap;
begin
  BMP := Nil;
  with FrmPrincipal.ACBrBarCode do
  try
    Text := RelatorioPRO_CBAR.AsString;

    BMP := TBitmap.Create;
    BMP.Width  := QRIProduto.Width;
    BMP.Height := QRIProduto.Height;

    DrawBarcode(BMP.Canvas);

    QRIProduto.Picture.Bitmap := BMP;
  finally
    FreeAndNil(BMP);
  end;
end;

end.

