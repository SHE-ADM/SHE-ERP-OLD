unit qfin_pag_ger;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg;

type
  Tqrpfin_pag_ger = class(TQuickRep)
    IBTra: TIBTransaction;
    relatorio: TIBQuery;
    consulta: TIBQuery;
    QRBand8: TQRBand;
    QRDBText4: TQRDBText;
    qrdbvend: TQRDBText;
    QRDBText1: TQRDBText;
    PageFooterBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    qrlrodape: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    qrlvend: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText11: TQRDBText;
    qrlfil: TQRLabel;
    QRBand1: TQRBand;
    qrilogo: TQRImage;
    qrlraza: TQRLabel;
    qrlend1: TQRLabel;
    qrlend2: TQRLabel;
    qrlemai_site: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    qrlfone: TQRLabel;
    QRLabel10: TQRLabel;
    qrltitulo: TQRLabel;
    QRShape4: TQRShape;
    relatorioID: TIntegerField;
    relatorioFIN_CCAB: TIntegerField;
    relatorioFIN_CDBX: TIntegerField;
    relatorioFIN_CDCX: TIntegerField;
    relatorioFIN_CFOR: TIntegerField;
    relatorioFIN_CVEN: TIntegerField;
    relatorioFIN_CREP: TIntegerField;
    relatorioFIN_PRAZ: TSmallintField;
    relatorioFIN_ATRA: TSmallintField;
    relatorioFIN_CONC: TSmallintField;
    relatorioFIN_DCAD: TDateField;
    relatorioFIN_DVEN: TDateField;
    relatorioFIN_DPAG: TDateField;
    relatorioFIN_DMED: TDateField;
    relatorioFIN_DATR: TDateField;
    relatorioFIN_STDO: TIBStringField;
    relatorioFIN_DOCT: TIBStringField;
    relatorioFIN_BANC: TIBStringField;
    relatorioFIN_DBAN: TIBStringField;
    relatorioFIN_AGEN: TIBStringField;
    relatorioFIN_CONT: TIBStringField;
    relatorioFIN_NCHQ: TIBStringField;
    relatorioFIN_MCHQ: TSmallintField;
    relatorioFIN_TIPO: TIBStringField;
    relatorioFIN_STFI: TIBStringField;
    relatorioFIN_STCO: TIBStringField;
    relatorioFIN_VALO: TIBBCDField;
    relatorioFIN_VPAG: TIBBCDField;
    relatorioFIN_VPEN: TIBBCDField;
    relatorioFIN_OBSE: TMemoField;
    relatorioFIN_STA: TIBStringField;
    relatorioFIN_PREV: TIBStringField;
    relatorioFIN_DUPL: TIBStringField;
    relatorioFIN_DCAN: TDateField;
    relatorioFIN_CPPL: TIntegerField;
    relatorioFIN_CCUS: TIntegerField;
    relatorioFIN_CBCO: TIntegerField;
    relatorioFIN_PORT: TIBStringField;
    relatorioFIN_VMUL: TIBBCDField;
    relatorioFIN_PMUL: TIBBCDField;
    relatorioFIN_VJUR: TIBBCDField;
    relatorioFIN_PJUR: TIBBCDField;
    relatorioFIN_VDES: TIBBCDField;
    relatorioFIN_PDES: TIBBCDField;
    relatorioFIN_DESC: TIBStringField;
    relatorioFIN_CDCO: TIntegerField;
    relatorioFIN_CDBA: TIBStringField;
    relatorioFIN_DEBA: TIBStringField;
    relatorioFIN_DBAI: TDateField;
    relatorioFIN_IDBX: TIBStringField;
    relatorioFIN_VENC: TIBBCDField;
    relatorioFIN_DDES: TDateField;
    relatorioFOR_FANT: TIBStringField;
    relatorioFOR_RAZA: TIBStringField;
    relatorioFIN_DFIN: TIBStringField;
    relatorioFIN_DCUS: TIBStringField;
    relatorioFIN_FORE: TStringField;
    QRSysData2: TQRSysData;
    QRLabel11: TQRLabel;
    QRSysData1: TQRSysData;
    SummaryBand1: TQRBand;
    QRExpr4: TQRExpr;
    QRLabel1: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr20: TQRExpr;
    QRLabel43: TQRLabel;
    procedure relatorioCalcFields(DataSet: TDataSet);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpfin_pag_ger: Tqrpfin_pag_ger;

implementation

uses p_funcoes, uPrincipal;

{$R *.DFM}

procedure Tqrpfin_pag_ger.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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
    qrilogo.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tqrpfin_pag_ger.relatorioCalcFields(DataSet: TDataSet);
begin
  relatorioFIN_FORE.Value := relatorioFIN_CFOR.AsString+' - '+relatorioFOR_FANT.AsString;
end;

end.
