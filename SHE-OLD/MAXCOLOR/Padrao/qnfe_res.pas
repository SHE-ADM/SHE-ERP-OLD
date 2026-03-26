unit qnfe_res;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, jpeg, IBDatabase, QRPDFFilt;

type
  Tqrpnfe_res = class(TQuickRep)
    QRBand8: TQRBand;
    qrgrom_dven: TQRGroup;
    QRDBText3: TQRDBText;
    qrgrom_drep: TQRGroup;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRBand9: TQRBand;
    relatorio: TIBQuery;
    IBTra: TIBTransaction;
    QRShape6: TQRShape;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr8: TQRExpr;
    QRLabel1: TQRLabel;
    QRExpr24: TQRExpr;
    QRLabel46: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    relatorioNFE_CFOP: TIBStringField;
    relatorioNAT_DNAT: TIBStringField;
    relatorioNAT_TIPO: TIBStringField;
    relatorioNAT_OPER: TIBStringField;
    relatorioNFE_VICMS: TIBBCDField;
    relatorioNFE_VIPI: TIBBCDField;
    relatorioNFE_VPIS: TIBBCDField;
    relatorioNFE_VCOFINS: TIBBCDField;
    relatorioNFE_VNF: TIBBCDField;
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
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel8: TQRLabel;
    qrlfil: TQRLabel;
    qrlrodape: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    qrltotal_NF: TQRLabel;
    qrltotal_cofins: TQRLabel;
    qrltotal_pis: TQRLabel;
    qrltotal_ipi: TQRLabel;
    qrltotal_icms: TQRLabel;
    relatorioVNF: TCurrencyField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioCalcFields(DataSet: TDataSet);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpnfe_res: Tqrpnfe_res;
  e_totalICMS,e_totalIPI,e_totalPIS,e_totalCOFINS,e_totalNF,
  s_totalICMS,s_totalIPI,s_totalPIS,s_totalCOFINS,s_totalNF: double;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpnfe_res.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpnfe_res.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  e_totalICMS   := 0;
  e_totalIPI    := 0;
  e_totalPIS    := 0;
  e_totalCOFINS := 0;
  e_totalNF     := 0;
  s_totalICMS   := 0;
  s_totalIPI    := 0;
  s_totalPIS    := 0;
  s_totalCOFINS := 0;
  s_totalNF     := 0;
end;

procedure Tqrpnfe_res.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if relatorioNAT_OPER.AsString = 'ENTRADA' then
  begin
    e_totalICMS   := e_totalICMS   + relatorioNFE_VICMS.Asfloat;
    e_totalIPI    := e_totalIPI    + relatorioNFE_VIPI.Asfloat;
    e_totalPIS    := e_totalPIS    + relatorioNFE_VPIS.Asfloat;
    e_totalCOFINS := e_totalCOFINS + relatorioNFE_VCOFINS.Asfloat;
    e_totalNF     := e_totalNF     + relatorioVNF.Asfloat;
  end else
  begin
    s_totalICMS   := s_totalICMS   + relatorioNFE_VICMS.Asfloat;
    s_totalIPI    := s_totalIPI    + relatorioNFE_VIPI.Asfloat;
    s_totalPIS    := s_totalPIS    + relatorioNFE_VPIS.Asfloat;
    s_totalCOFINS := s_totalCOFINS + relatorioNFE_VCOFINS.Asfloat;
    s_totalNF     := s_totalNF     + relatorioVNF.Asfloat;
  end;
end;

procedure Tqrpnfe_res.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrltotal_ICMS.Caption   := formatFloat('#,0.00',s_totalICMS   - e_totalICMS);
  qrltotal_IPI.Caption    := formatFloat('#,0.00',s_totalIPI    - e_totalIPI);
  qrltotal_PIS.Caption    := formatFloat('#,0.00',s_totalPIS    - e_totalPIS);
  qrltotal_COFINS.Caption := formatFloat('#,0.00',s_totalCOFINS - e_totalCOFINS);
  qrltotal_NF.Caption     := formatFloat('#,0.00',s_totalNF     - e_totalNF);
end;

procedure Tqrpnfe_res.relatorioCalcFields(DataSet: TDataSet);
begin
  relatorioVNF.Value := relatorioNFE_VNF.AsFloat;
  if relatorioNFE_VICMS.AsFloat = 0 then
  relatorioVNF.Value := 0;
end;

end.
