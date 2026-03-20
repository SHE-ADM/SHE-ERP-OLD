unit qfin_rec_ger;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg;

type
  Tqrpfin_rec_ger = class(TQuickRep)
    IBTra: TIBTransaction;
    relatorio: TIBQuery;
    consulta: TIBQuery;
    QRBand8: TQRBand;
    QRDBText4: TQRDBText;
    qrdbvend: TQRDBText;
    QRDBText1: TQRDBText;
    relatorioID: TIntegerField;
    relatorioFIN_CCAB: TIntegerField;
    relatorioFIN_CDBX: TIntegerField;
    relatorioFIN_CDCX: TIntegerField;
    relatorioFIN_CCLI: TIntegerField;
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
    relatorioCLI_FANT: TIBStringField;
    relatorioCLI_RAZA: TIBStringField;
    relatorioREP_FANT: TIBStringField;
    QRDBText2: TQRDBText;
    relatorioFIN_CLIE: TStringField;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
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
    QRLabel20: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText11: TQRDBText;
    relatorioVALO: TCurrencyField;
    relatorioVPAG: TCurrencyField;
    relatorioVPEN: TCurrencyField;
    relatorioCLI_MAIL: TIBStringField;
    relatorioREP_MAIL: TIBStringField;
    relatorioUSU_DUSU: TIBStringField;
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
    SummaryBand1: TQRBand;
    QRLabel43: TQRLabel;
    QRExpr20: TQRExpr;
    QRLabel1: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRBand10: TQRBand;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData2: TQRSysData;
    qrlfil: TQRLabel;
    procedure relatorioCalcFields(DataSet: TDataSet);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpfin_rec_ger: Tqrpfin_rec_ger;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpfin_rec_ger.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpfin_rec_ger.relatorioCalcFields(DataSet: TDataSet);
begin
  relatorioFIN_CLIE.Value := oStrZero(relatorioFIN_CCLI.AsInteger,6)+' - '+relatorioCLI_FANT.AsString;

  relatorioVALO.Value := relatorioFIN_VALO.AsFloat;
  relatorioVPAG.Value := relatorioFIN_VPAG.AsFloat;
  relatorioVPEN.Value := relatorioFIN_VPEN.AsFloat;
end;

end.
