unit qpag_com_ana;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg;

type
  Tqrppag_com_ana = class(TQuickRep)
    IBTra: TIBTransaction;
    tSHEILD: TIBTransaction;
    consulta: TIBQuery;
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
    ite: TIBQuery;
    relatorio: TIBQuery;
    dtsrelatorio: TDataSource;
    iteROM_DERO: TIBStringField;
    iteROM_ITEM: TIBStringField;
    iteROM_DPRO: TIBStringField;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRExpr1: TQRExpr;
    qrltotped: TQRLabel;
    QRExpr2: TQRExpr;
    ChildBand1: TQRChildBand;
    qrdbdrep: TQRDBText;
    qrdbdata: TQRDBText;
    QRDBText1: TQRDBText;
    qrdbvend: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    iteROM_DCOR: TIBStringField;
    iteROM_DUNI: TIBStringField;
    iteROM_QTDE: TIBBCDField;
    iteROM_UNIT: TFloatField;
    iteROM_VDSC: TIBBCDField;
    iteROM_TOTA: TIBBCDField;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRExpr3: TQRExpr;
    relatorioFIN_PORT: TIBStringField;
    relatorioFIN_CDBX: TIntegerField;
    relatorioFIN_COBR: TIBStringField;
    relatorioFIN_DCAD: TDateField;
    relatorioFIN_DCLI: TIBStringField;
    relatorioFIN_VEND: TIBStringField;
    relatorioFIN_DREP: TIBStringField;
    qrlrodape: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    iteROM_PREC: TFloatField;
    QRLabel3: TQRLabel;
    qrldata: TQRLabel;
    QRLabel4: TQRLabel;
    qrlvend: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    relatorioFIN_CDRO: TIntegerField;
    QRDBText4: TQRDBText;
    QRLabel13: TQRLabel;
    itePRO_CART: TIBStringField;
    QRLabel14: TQRLabel;
    QRDBText5: TQRDBText;
    iteTOTA: TCurrencyField;
    relatorioFIN_TIPO: TIBStringField;
    procedure relatorioAfterOpen(DataSet: TDataSet);
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure iteCalcFields(DataSet: TDataSet);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrppag_com_ana: Tqrppag_com_ana;

implementation

uses p_funcoes, uPrincipal;

{$R *.DFM}

procedure Tqrppag_com_ana.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrppag_com_ana.relatorioAfterOpen(DataSet: TDataSet);
begin
  with ite do
  begin
    SQL.Clear;
    SQL.Add('SELECT ROM_DERO,ROM_ITEM,PRO_CART,ROM_DCOR,ROM_DPRO,ROM_DUNI,ROM_QTDE,ROM_UNIT,ROM_PREC,ROM_VDSC,ROM_TOTA');
    SQL.Add('FROM   PED_VEN_CAB,PED_VEN_ITE,CAD_PRO');
    SQL.Add('WHERE  PED_VEN_CAB.ID       = PED_VEN_ITE.ROM_CCAB');
    SQL.Add('AND    PED_VEN_CAB.ROM_CDBX = :FIN_CDBX');
    SQL.Add('AND    PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
    SQL.Add('ORDER  BY ROM_DERO,ROM_ITEM');
    Open;
  end;
end;

procedure Tqrppag_com_ana.GroupFooterBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  qrltotped.Caption := 'Total Pedido No '+iteROM_DERO.AsString+' ('+relatorioFIN_TIPO.AsString+')';
end;

procedure Tqrppag_com_ana.iteCalcFields(DataSet: TDataSet);
begin
  iteTOTA.Value := iteROM_TOTA.AsFloat;
  if relatorioFIN_TIPO.AsString = 'DEVOLUÇÃO' then
  iteTOTA.Value := 0-iteROM_TOTA.AsFloat;
end;

end.
