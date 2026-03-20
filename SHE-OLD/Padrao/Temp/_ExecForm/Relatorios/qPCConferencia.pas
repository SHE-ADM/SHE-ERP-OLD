unit qPCConferencia;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, DateUtils, jpeg, math, StrUtils;

type
  TqrpPCConferencia = class(TQuickRep)
    TituloVenda: TQRBand;
    ItemVenda: TQRSubDetail;
    CabecalhoVenda: TQRChildBand;
    ven_efe: TIBQuery;
    QRDBText39: TQRDBText;
    QRDBText2: TQRDBText;
    roman: TIBQuery;
    romanID: TIntegerField;
    QRShape4: TQRShape;
    TotalVenda: TQRChildBand;
    QRDBText3: TQRDBText;
    TRelatorio: TIBTransaction;
    ven_efeC_ARTIGO: TStringField;
    ColumnHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText14: TQRDBText;
    QRBQTRL: TQRDBText;
    QRLTOT1: TQRLabel;
    QREIT: TQRExpr;
    QREVL4: TQRExpr;
    QRLabel18: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel21: TQRLabel;
    QRDBText17: TQRDBText;
    romanC_PEDIDO: TStringField;
    QRDBText16: TQRDBText;
    QRLabel8: TQRLabel;
    ven_efeC_CONT: TStringField;
    QRDBText7: TQRDBText;
    QRLabel12: TQRLabel;
    romanC_FORNECEDOR: TStringField;
    romanC_REPRESENTANTE: TStringField;
    romanROM_CDOC: TIntegerField;
    romanROM_CDPR: TIntegerField;
    romanROM_CDPD: TIntegerField;
    romanROM_CDRO: TIntegerField;
    romanROM_CDRD: TIntegerField;
    romanROM_CDNF: TIntegerField;
    romanROM_CDBX: TIntegerField;
    romanROM_CDCX: TIntegerField;
    romanROM_DERO: TIBStringField;
    romanROM_STPD: TIBStringField;
    romanROM_STCO: TIBStringField;
    romanROM_STFI: TIBStringField;
    romanROM_DROM: TDateField;
    romanROM_HROM: TTimeField;
    romanROM_DBAI: TDateField;
    romanROM_DCAN: TDateField;
    romanROM_DNFS: TDateField;
    romanROM_DEXP: TDateField;
    romanROM_HEXP: TTimeField;
    romanROM_CEXP: TIntegerField;
    romanROM_CFOR: TIntegerField;
    romanROM_CCOM: TIntegerField;
    romanROM_CREP: TIntegerField;
    romanROM_CPAG: TIntegerField;
    romanROM_QTVE: TIBBCDField;
    romanROM_QTSP: TIBBCDField;
    romanROM_QTPD: TIBBCDField;
    romanROM_RLVE: TIntegerField;
    romanROM_TSDE: TIBBCDField;
    romanROM_TDSC: TIBStringField;
    romanROM_PDSC: TIBBCDField;
    romanROM_CDSC: TIBBCDField;
    romanROM_ADSC: TIBBCDField;
    romanROM_TCDE: TIBBCDField;
    romanROM_CONC: TSmallintField;
    romanROM_STA: TIBStringField;
    romanROM_COMI: TIBBCDField;
    romanROM_DPRD: TDateField;
    romanROM_CTNR: TIBStringField;
    romanROM_DEMB: TDateField;
    romanROM_DDES: TDateField;
    romanROM_RPRD: TDateField;
    romanROM_REMB: TDateField;
    romanROM_RDES: TDateField;
    romanROM_CBAI: TIntegerField;
    romanROM_TBAI: TDateTimeField;
    romanROM_UPRN: TIntegerField;
    romanROM_PPRN: TSmallintField;
    romanROM_TPRN: TDateTimeField;
    romanROM_RLPD: TIntegerField;
    romanROM_OBSE: TMemoField;
    romanROM_CTRA: TIntegerField;
    romanROM_DTRA: TIBStringField;
    romanROM_VFRT: TIBBCDField;
    romanROM_MFRT: TSmallintField;
    romanROM_PSBR: TIBBCDField;
    romanROM_PSLQ: TIBBCDField;
    romanROM_DTCA: TDateTimeField;
    romanFOR_FANT: TIBStringField;
    romanFOR_RAZA: TIBStringField;
    romanUSU_DUSU: TIBStringField;
    romanREP_FANT: TIBStringField;
    romanREP_RAZA: TIBStringField;
    romanPAG_DPAG: TIBStringField;
    QRLabel28: TQRLabel;
    ven_efeC_COR: TStringField;
    QRBRLPD: TQRDBText;
    QRBQTPD: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    ven_efeIDPC: TIntegerField;
    ven_efeROM_ITEM: TIntegerField;
    ven_efeROM_DPRO: TIBStringField;
    ven_efeROM_DUNI: TIBStringField;
    ven_efeROM_QTDE: TIBBCDField;
    ven_efeROM_QTRL: TIntegerField;
    ven_efeROM_QTPD: TIBBCDField;
    ven_efeROM_RLPD: TIntegerField;
    ven_efeROM_UNIT: TFloatField;
    ven_efeROM_TOTA: TIBBCDField;
    ven_efeIDCP: TIntegerField;
    ven_efePRO_CART: TIBStringField;
    ven_efePRO_CPRO: TIBStringField;
    ven_efeUCDBE: TIBStringField;
    ven_efeUQTRL: TSmallintField;
    ven_efePRO_ESPC: TIBStringField;
    ven_efeREST: TIBStringField;
    ven_efeUPSBR: TIBBCDField;
    ven_efeUPSLQ: TIBBCDField;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeSelectSQL: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    ven_efeUQTDE: TIBBCDField;
    procedure ven_efeCalcFields(DataSet: TDataSet);
    procedure romanCalcFields(DataSet: TDataSet);
    procedure ItemVendaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
  end;

var
  qrpPCConferencia: TqrpPCConferencia;

implementation

uses uPrincipal, bPrincipal;

{$R *.DFM}

procedure TqrpPCConferencia.ven_efeCalcFields(DataSet: TDataSet);
begin
  { Estoque Reservado }
  ven_efeC_Artigo.Value := ven_efePRO_CPRO.AsString+'  -  '+ven_efeROM_DPRO.AsString;
  ven_efeC_CONT.Value   := ven_efeROM_DUNI.AsString+ IFThen((ven_efeUCDBE.AsString = 'PF') and (ven_efeUQTDE.AsFloat > 1),' ('+FormatFloat('0',ven_efeUQTDE.AsFloat)+')','');
end;

procedure TqrpPCConferencia.romanCalcFields(DataSet: TDataSet);
begin
  RomanC_Pedido.Value     := 'Pedido Nº '+romanROM_DERO.AsString+' #'+romanROM_CONC.AsString+' - Emissão '+FormatDateTime('dd/mm/yyyy hh:mm',RomanROM_DROM.AsDateTime);
  RomanC_Fornecedor.Value := RomanFOR_FANT.AsString+IFThen(RomanFOR_FANT.AsString <> RomanFOR_RAZA.AsString,' - '+RomanFOR_RAZA.AsString,'');
end;

procedure TqrpPCConferencia.ItemVendaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRBQTRL.Enabled := (ven_efeUQTRL.AsInteger  > 0);
  QRBQTPD.Enabled := (ven_efeROM_QTPD.AsFloat > 0);
  QRBRLPD.Enabled := (ven_efeROM_RLPD.AsFloat > 0);
end;

end.

