unit qPCOrdem;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, DateUtils, jpeg, math, StrUtils;

type
  TqrpPCOrdem = class(TQuickRep)
    TituloVenda: TQRBand;
    ItemVenda: TQRSubDetail;
    CabecalhoVenda: TQRChildBand;
    ven_efe: TIBQuery;
    QRLabel4: TQRLabel;
    QRDArtigo: TQRDBText;
    roman: TIBQuery;
    TotalVenda: TQRChildBand;
    QRLabel19: TQRLabel;
    TRelatorio: TIBTransaction;
    ColumnHeaderBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLTOT1: TQRLabel;
    QREIT: TQRExpr;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    romanID: TIntegerField;
    romanROM_DERO: TIBStringField;
    romanROM_DROM: TDateField;
    romanROM_DEXP: TDateField;
    romanROM_IDCF: TIntegerField;
    romanFOR_FANT: TIBStringField;
    romanFOR_RAZA: TIBStringField;
    romanFOR_CONT: TIBStringField;
    romanFOR_MAIL: TIBStringField;
    romanFOR_FONE: TIBStringField;
    romanROM_IDCV: TIntegerField;
    romanROM_DECV: TIBStringField;
    romanROM_IDPRZ: TIntegerField;
    romanROM_DEPRZ: TIBStringField;
    romanROM_DTRA: TIBStringField;
    romanROM_MFRT: TIBStringField;
    ven_efeID: TIntegerField;
    ven_efeROM_ITEM: TIBStringField;
    ven_efePRO_CART: TIBStringField;
    ven_efePRO_CPRO: TIBStringField;
    ven_efeROM_DUNI: TIBStringField;
    ven_efeROM_QTDE: TIBBCDField;
    ven_efeROM_QTRL: TIntegerField;
    ven_efeROM_UNIT: TFloatField;
    ven_efeROM_TOTA: TIBBCDField;
    romanC_Endereco: TStringField;
    romanC_Cep: TStringField;
    romanC_Bairro: TStringField;
    romanC_Pedido: TStringField;
    romanC_CidadeUF: TStringField;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape3: TQRShape;
    QRDBText10: TQRDBText;
    QRDBText18: TQRDBText;
    romanROM_QTPRZ: TSmallintField;
    romanC_Prazo: TStringField;
    romanROM_QEXP: TIntegerField;
    romanC_Pagto: TStringField;
    QRDBText19: TQRDBText;
    romanC_Entrega: TStringField;
    QRDBText20: TQRDBText;
    QRShape2: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape5: TQRShape;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    romanFOR_CNPJ: TIBStringField;
    romanFOR_INSC: TIBStringField;
    romanFOR_CPF: TIBStringField;
    romanC_CNPJouCPF: TStringField;
    QRDBText9: TQRDBText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel16: TQRLabel;
    QRDBText16: TQRDBText;
    romanFOR_CID: TIBStringField;
    romanFOR_ESTA: TIBStringField;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape13: TQRShape;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    romanFOR_CEL: TIBStringField;
    QRDBText17: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel27: TQRLabel;
    QRShape14: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRShape18: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRDProduto: TQRDBText;
    ven_efeC_ARTIGO: TStringField;
    ven_efeC_PRODUTO: TStringField;
    QRDBText2: TQRDBText;
    QRDQTDE: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel17: TQRLabel;
    QRShape33: TQRShape;
    QRShape35: TQRShape;
    QRExpr4: TQRExpr;
    QRLabel32: TQRLabel;
    QRShape36: TQRShape;
    QRLabel33: TQRLabel;
    QRShape37: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRShape15: TQRShape;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    ven_efeCDCF: TIBStringField;
    ven_efeROM_DPRO: TIBStringField;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeSelectSQL: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    procedure romanCalcFields(DataSet: TDataSet);
    procedure romanAfterOpen(DataSet: TDataSet);
    procedure ven_efeCalcFields(DataSet: TDataSet);
    procedure ItemVendaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
  end;

var
  qrpPCOrdem: TqrpPCOrdem;

implementation

uses uPrincipal, bPrincipal;

{$R *.DFM}

procedure TqrpPCOrdem.romanAfterOpen(DataSet: TDataSet);
begin
  with ven_efe do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PCFK.ID,PCFK.ROM_ITEM,CP.PRO_CART,CP.PRO_CPRO,CP.CDCF,');
    SQL.Add('         TRIM(PCFK.ROM_DPRO||'' ''||TRIM(COALESCE(CP.DEGRD,'''')||'' ''||TRIM(COALESCE(CP.DECOR,'''')||'' ''||TRIM(COALESCE(CP.CDGRD,'''')||'' ''||TRIM(COALESCE(CP.REGRD,'''')))))) as ROM_DPRO,');
    SQL.Add('         PCFK.ROM_DPRO,PCFK.ROM_DUNI,PCFK.ROM_QTDE,PCFK.ROM_QTRL,PCFK.ROM_UNIT,PCFK.ROM_TOTA');
    SQL.Add('FROM   '+SLPrincipal.Values['ped_com_ite']+' AS PCFK');
    SQL.Add('JOIN     CAD_PRO     AS CP ON (CP.ID = PCFK.ROM_CPRO)');
    SQL.Add('WHERE    PCFK.ROM_CCAB = '''+RomanId.AsString+'''');
    SQL.Add('ORDER BY PCFK.ROM_ITEM');
    Prepare;
    Open;
  end;
end;

procedure TqrpPCOrdem.romanCalcFields(DataSet: TDataSet);
begin
  RomanC_Pedido.Value    := 'Pedido Nº...: '+romanROM_DERO.AsString+'  -  '+'Emissão...: '+FormatDateTime('dd/mm/yyyy',RomanROM_DROM.AsDateTime);
  RomanC_CNPJouCPF.Value := oCNPJouCPF_Mask(IFThen(Length(RomanFOR_CNPJ.AsString) = 14,RomanFOR_CNPJ.AsString,RomanFOR_CPF.AsString));
  RomanC_Prazo.Value     := FormatDateTime('dd/mm/yyyy',RomanROM_DEXP.AsDateTime)+' ('+RomanROM_QEXP.AsString+' DIAS)';
  RomanC_Pagto.Value     := RomanROM_DEPRZ.AsString+' (' +RomanROM_QTPRZ.AsString+' DIAS)';
  RomanC_Entrega.Value   := RomanROM_MFRT.AsString +'-'  +RomanROM_DTRA.AsString;
  RomanC_CidadeUF.Value  := RomanFOR_CID.AsString  +' - '+RomanFOR_ESTA.AsString;
end;

procedure TqrpPCOrdem.ven_efeCalcFields(DataSet: TDataSet);
begin
  ven_efeC_ARTIGO.Value  := ven_efePRO_CPRO.AsString;
end;

procedure TqrpPCOrdem.ItemVendaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRDProduto.Font.Size := IFThen(Length(ven_efeC_PRODUTO.AsString) > 55,6,7);
  QRDArtigo.Font.Size  := IFThen(Length(ven_efeC_ARTIGO.AsString)  > 10,6,7);
end;

end.

