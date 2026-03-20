unit qProduto_Preco_Tabela;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport,
  BMDThread, IBSQL;

type
  TqrpProduto_Preco_Tabela = class(TQuickRep)
    TCadastro: TIBTransaction;
    QCadastro: TIBQuery;
    Relatorio: TIBQuery;
    BMTEvent: TBMDThread;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRBCabecalho: TQRBand;
    QRBDetalhe: TQRBand;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRLRodapePagina: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeSelectSQL: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    QRBSumario: TQRBand;
    SQLConsulta: TIBSQL;
    QRLNome: TQRLabel;
    QRDNome: TQRDBText;
    QRDPRC_1: TQRDBText;
    QRDPRC_2: TQRDBText;
    QRDPRC_3: TQRDBText;
    RelatorioC_ID: TIntegerField;
    QRLTotal: TQRLabel;
    QRLPRC_1: TQRLabel;
    QRLPRC_2: TQRLabel;
    QRLPRC_3: TQRLabel;
    QRETOTAL_ITEM: TQRExpr;
    RelatorioNOME: TIBStringField;
    RelatorioVUAT: TFloatField;
    RelatorioVUVA: TFloatField;
    RelatorioVURP: TFloatField;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    RelatorioSKU: TIBStringField;
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RelatorioCalcFields(DataSet: TDataSet);
  private
  public
    procedure CarregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpProduto_Preco_Tabela: TqrpProduto_Preco_Tabela;

implementation

uses uPrincipal, pRelatorio_geral;

{$R *.DFM}

procedure TqrpProduto_Preco_Tabela.QRBDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if RelatorioC_ID.AsInteger mod 2 = 0 then
     QRBDetalhe.Color := clWhite
  else
     QRBDetalhe.Color := $00E9E9E9;
end;

procedure TqrpProduto_Preco_Tabela.RelatorioCalcFields(
  DataSet: TDataSet);
begin
  RelatorioC_ID.Value := Relatorio.RecNo;
end;

procedure TqrpProduto_Preco_Tabela.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
     BlobStream := tab.CreateBlobStream(valor,bmRead);

  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    QRIEmpresa.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

end.
