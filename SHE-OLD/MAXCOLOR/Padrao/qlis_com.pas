unit qlis_com;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg;

type
  Tqrplis_com = class(TQuickRep)
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
    QRDBText4: TQRDBText;
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
    fin_001: TIBQuery;
    fin_001VALO: TCurrencyField;
    fin_001VPAG: TCurrencyField;
    fin_001VPEN: TCurrencyField;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    fin_001ID: TIntegerField;
    fin_001FIN_CDRO: TIntegerField;
    fin_001FIN_CCAB: TIntegerField;
    fin_001FIN_CDBX: TIntegerField;
    fin_001FIN_CDCX: TIntegerField;
    fin_001FIN_CCLI: TIntegerField;
    fin_001FIN_CFOR: TIntegerField;
    fin_001FIN_CVEN: TIntegerField;
    fin_001FIN_CREP: TIntegerField;
    fin_001FIN_CPPL: TIntegerField;
    fin_001FIN_CCUS: TIntegerField;
    fin_001FIN_CBCO: TIntegerField;
    fin_001FIN_CDCO: TIntegerField;
    fin_001FIN_PRAZ: TSmallintField;
    fin_001FIN_ATRA: TSmallintField;
    fin_001FIN_CONC: TSmallintField;
    fin_001FIN_MCHQ: TSmallintField;
    fin_001FIN_DROM: TDateField;
    fin_001FIN_DCAD: TDateField;
    fin_001FIN_DVEN: TDateField;
    fin_001FIN_DPAG: TDateField;
    fin_001FIN_DMED: TDateField;
    fin_001FIN_DATR: TDateField;
    fin_001FIN_DCAN: TDateField;
    fin_001FIN_DBAI: TDateField;
    fin_001FIN_DDES: TDateField;
    fin_001FIN_COBR: TIBStringField;
    fin_001FIN_STA: TIBStringField;
    fin_001FIN_PREV: TIBStringField;
    fin_001FIN_DUPL: TIBStringField;
    fin_001FIN_DESC: TIBStringField;
    fin_001FIN_DFOR: TIBStringField;
    fin_001FIN_DCLI: TIBStringField;
    fin_001FIN_VEND: TIBStringField;
    fin_001FIN_DREP: TIBStringField;
    fin_001FIN_RCLI: TIBStringField;
    fin_001FIN_RREP: TIBStringField;
    fin_001FIN_STDO: TIBStringField;
    fin_001FIN_DOCT: TIBStringField;
    fin_001FIN_BANC: TIBStringField;
    fin_001FIN_DBAN: TIBStringField;
    fin_001FIN_AGEN: TIBStringField;
    fin_001FIN_CONT: TIBStringField;
    fin_001FIN_NCHQ: TIBStringField;
    fin_001FIN_TIPO: TIBStringField;
    fin_001FIN_STFI: TIBStringField;
    fin_001FIN_STCO: TIBStringField;
    fin_001FIN_PORT: TIBStringField;
    fin_001FIN_IDBX: TIBStringField;
    fin_001FIN_IPPL: TIBStringField;
    fin_001FIN_DFIN: TIBStringField;
    fin_001FIN_DCUS: TIBStringField;
    fin_001FIN_CDBA: TIBStringField;
    fin_001FIN_DEBA: TIBStringField;
    fin_001FIN_VALO: TIBBCDField;
    fin_001FIN_VPAG: TIBBCDField;
    fin_001FIN_VPEN: TIBBCDField;
    fin_001FIN_VMUL: TIBBCDField;
    fin_001FIN_PMUL: TIBBCDField;
    fin_001FIN_VJUR: TIBBCDField;
    fin_001FIN_PJUR: TIBBCDField;
    fin_001FIN_VDES: TIBBCDField;
    fin_001FIN_PDES: TIBBCDField;
    fin_001FIN_PCOM: TIBBCDField;
    fin_001FIN_VCOM: TIBBCDField;
    fin_001FIN_VENC: TIBBCDField;
    fin_001FIN_OBSE: TMemoField;
    relatorioID: TIntegerField;
    relatorioFIN_CDPD: TIntegerField;
    relatorioFIN_CDNF: TIntegerField;
    relatorioFIN_CCLI: TIntegerField;
    relatorioFIN_CVEN: TIntegerField;
    relatorioFIN_CREP: TIntegerField;
    relatorioFIN_DCAD: TDateField;
    relatorioFIN_STA: TIBStringField;
    relatorioFIN_COBR: TIBStringField;
    relatorioFIN_DCLI: TIBStringField;
    relatorioFIN_RCLI: TIBStringField;
    relatorioFIN_VEND: TIBStringField;
    relatorioFIN_DREP: TIBStringField;
    relatorioFIN_RREP: TIBStringField;
    relatorioFIN_CPRO: TIBStringField;
    relatorioFIN_DCOR: TIBStringField;
    relatorioFIN_DPRO: TIBStringField;
    relatorioFIN_DUNI: TIBStringField;
    relatorioFIN_QTDE: TIBBCDField;
    relatorioFIN_UNIT: TIBBCDField;
    relatorioFIN_TOTA: TIBBCDField;
    relatorioFIN_PCOM: TIBBCDField;
    relatorioFIN_VCOM: TIBBCDField;
    procedure fin_001CalcFields(DataSet: TDataSet);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrplis_com: Tqrplis_com;

implementation

uses p_funcoes, uPrincipal;

{$R *.DFM}

procedure Tqrplis_com.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrplis_com.fin_001CalcFields(DataSet: TDataSet);
begin
  fin_001VALO.Value := fin_001FIN_VALO.AsFloat;
  fin_001VPEN.Value := fin_001FIN_VPEN.AsFloat;
  fin_001VPAG.Value := fin_001FIN_VPAG.AsFloat;

  if fin_001FIN_CONC.AsInteger > 0 then
  begin
    fin_001VALO.Value := fin_001FIN_VALO.AsFloat*fin_001FIN_CONC.AsFloat;
    fin_001VPEN.Value := fin_001FIN_VPEN.AsFloat*fin_001FIN_CONC.AsFloat;
    fin_001VPAG.Value := fin_001FIN_VPAG.AsFloat*fin_001FIN_CONC.AsFloat;
  end;
end;

end.
