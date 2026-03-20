unit qpag_com;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg;

type
  Tqrppag_com = class(TQuickRep)
    IBTra: TIBTransaction;
    tSHEILD: TIBTransaction;
    relatorio: TIBQuery;
    consulta: TIBQuery;
    QRBand8: TQRBand;
    qrpcab: TQRGroup;
    qrdbdrep: TQRDBText;
    qrpsub: TQRGroup;
    QRShape5: TQRShape;
    QRBand9: TQRBand;
    QRLabel43: TQRLabel;
    QRExpr20: TQRExpr;
    QRShape4: TQRShape;
    QRLabel3: TQRLabel;
    qrldata: TQRLabel;
    QRLabel4: TQRLabel;
    qrlvend: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel5: TQRLabel;
    qrdbdata: TQRDBText;
    QRDBText7: TQRDBText;
    qrdbvend: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    qrlsub: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr1: TQRExpr;
    QRLabel2: TQRLabel;
    PageFooterBand1: TQRBand;
    QRShape6: TQRShape;
    QRShape11: TQRShape;
    QRDBRichText1: TQRDBRichText;
    QRShape17: TQRShape;
    QRLabel29: TQRLabel;
    QRShape7: TQRShape;
    qrlass1: TQRLabel;
    qrlass2: TQRLabel;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape10: TQRShape;
    qrltipo: TQRLabel;
    qrlper: TQRLabel;
    qrltcom: TQRExpr;
    qrltot: TQRExpr;
    QRLabel13: TQRLabel;
    qrldesc: TQRLabel;
    QRLabel14: TQRLabel;
    qrltota: TQRLabel;
    consulta_S: TIBQuery;
    QRSysData2: TQRSysData;
    QRLabel6: TQRLabel;
    QRBand1: TQRBand;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
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
    QRShape1: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel20: TQRLabel;
    QRExpr6: TQRExpr;
    QRLabel21: TQRLabel;
    QRExpr7: TQRExpr;
    QRDBText4: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel23: TQRLabel;
    relatorioID: TIntegerField;
    relatorioFIN_CDRO: TIntegerField;
    relatorioFIN_CCAB: TIntegerField;
    relatorioFIN_CDBX: TIntegerField;
    relatorioFIN_CDCX: TIntegerField;
    relatorioFIN_CCLI: TIntegerField;
    relatorioFIN_CFOR: TIntegerField;
    relatorioFIN_CVEN: TIntegerField;
    relatorioFIN_CREP: TIntegerField;
    relatorioFIN_CPPL: TIntegerField;
    relatorioFIN_CCUS: TIntegerField;
    relatorioFIN_CBCO: TIntegerField;
    relatorioFIN_CDCO: TIntegerField;
    relatorioFIN_PRAZ: TSmallintField;
    relatorioFIN_ATRA: TSmallintField;
    relatorioFIN_CONC: TSmallintField;
    relatorioFIN_MCHQ: TSmallintField;
    relatorioFIN_DROM: TDateField;
    relatorioFIN_DCAD: TDateField;
    relatorioFIN_DVEN: TDateField;
    relatorioFIN_DPAG: TDateField;
    relatorioFIN_DMED: TDateField;
    relatorioFIN_DATR: TDateField;
    relatorioFIN_DCAN: TDateField;
    relatorioFIN_DBAI: TDateField;
    relatorioFIN_DDES: TDateField;
    relatorioFIN_COBR: TIBStringField;
    relatorioFIN_STA: TIBStringField;
    relatorioFIN_PREV: TIBStringField;
    relatorioFIN_DUPL: TIBStringField;
    relatorioFIN_DESC: TIBStringField;
    relatorioFIN_DFOR: TIBStringField;
    relatorioFIN_DCLI: TIBStringField;
    relatorioFIN_VEND: TIBStringField;
    relatorioFIN_DREP: TIBStringField;
    relatorioFIN_RCLI: TIBStringField;
    relatorioFIN_RREP: TIBStringField;
    relatorioFIN_STDO: TIBStringField;
    relatorioFIN_DOCT: TIBStringField;
    relatorioFIN_BANC: TIBStringField;
    relatorioFIN_DBAN: TIBStringField;
    relatorioFIN_AGEN: TIBStringField;
    relatorioFIN_CONT: TIBStringField;
    relatorioFIN_NCHQ: TIBStringField;
    relatorioFIN_TIPO: TIBStringField;
    relatorioFIN_STFI: TIBStringField;
    relatorioFIN_STCO: TIBStringField;
    relatorioFIN_PORT: TIBStringField;
    relatorioFIN_IDBX: TIBStringField;
    relatorioFIN_IPPL: TIBStringField;
    relatorioFIN_DFIN: TIBStringField;
    relatorioFIN_DCUS: TIBStringField;
    relatorioFIN_CDBA: TIBStringField;
    relatorioFIN_DEBA: TIBStringField;
    relatorioFIN_VALO: TIBBCDField;
    relatorioFIN_VPAG: TIBBCDField;
    relatorioFIN_VPEN: TIBBCDField;
    relatorioFIN_VMUL: TIBBCDField;
    relatorioFIN_PMUL: TIBBCDField;
    relatorioFIN_VJUR: TIBBCDField;
    relatorioFIN_PJUR: TIBBCDField;
    relatorioFIN_VDES: TIBBCDField;
    relatorioFIN_PDES: TIBBCDField;
    relatorioFIN_PCOM: TIBBCDField;
    relatorioFIN_VCOM: TIBBCDField;
    relatorioFIN_VENC: TIBBCDField;
    relatorioFIN_OBSE: TMemoField;
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrppag_com: Tqrppag_com;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrppag_com.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

end.
