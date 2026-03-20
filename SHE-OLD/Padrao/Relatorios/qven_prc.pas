unit qven_prc;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, DateUtils, jpeg;

type
  Tqrpven_prc = class(TQuickRep)
    ven_efe: TIBQuery;
    roman: TIBQuery;
    romanID: TIntegerField;
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
    romanROM_OBSE: TMemoField;
    romanROM_STA: TIBStringField;
    romanROM_COMI: TIBBCDField;
    romanFOR_FANT: TIBStringField;
    romanREP_FANT: TIBStringField;
    romanPAG_DPAG: TIBStringField;
    ColumnHeaderBand1: TQRBand;
    QRLabel4: TQRLabel;
    qrlrefe: TQRLabel;
    qrlfor: TQRLabel;
    qrlref: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel6: TQRLabel;
    QRShape6: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel12: TQRLabel;
    QRShape10: TQRShape;
    QRLabel13: TQRLabel;
    QRShape11: TQRShape;
    QRLabel14: TQRLabel;
    QRShape12: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape15: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRDBText1: TQRDBText;
    qrdref: TQRDBText;
    detail: TQRBand;
    QRDBText31: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    qrdprc: TQRDBText;
    SummaryBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRDBText10: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape3: TQRShape;
    QRDBText13: TQRDBText;
    qrlgram: TQRLabel;
    qrllarg: TQRLabel;
    qrldcor: TQRLabel;
    romanUSU_DUSU: TIBStringField;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRShape14: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel31: TQRLabel;
    qrlprc: TQRLabel;
    QRLabel36: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel2: TQRLabel;
    QRDBText19: TQRDBText;
    romanROM_DPRD: TDateField;
    romanROM_CTNR: TIBStringField;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    romanROM_DEMB: TDateField;
    romanROM_DDES: TDateField;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    romanROM_RPRD: TDateField;
    romanROM_REMB: TDateField;
    romanROM_RDES: TDateField;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText32: TQRDBText;
    qrlcfor: TQRLabel;
    ven_efePRO_CART: TIBStringField;
    ven_efePRO_CPRO: TIBStringField;
    ven_efePRO_DUNI: TIBStringField;
    ven_efePRO_COMP: TIBStringField;
    ven_efePRO_LARG: TIBBCDField;
    ven_efePRO_PESO: TIBBCDField;
    ven_efePRO_GRAM: TIBBCDField;
    ven_efeID: TIntegerField;
    ven_efeROM_CCAB: TIntegerField;
    ven_efeROM_CDOC: TIntegerField;
    ven_efeROM_CDPR: TIntegerField;
    ven_efeROM_CDPD: TIntegerField;
    ven_efeROM_CDRO: TIntegerField;
    ven_efeROM_CDRD: TIntegerField;
    ven_efeROM_CDNF: TIntegerField;
    ven_efeROM_ITEM: TIBStringField;
    ven_efeROM_CPRO: TIntegerField;
    ven_efeROM_CPR2: TIntegerField;
    ven_efeROM_CDET: TIBStringField;
    ven_efeROM_QTDE: TIBBCDField;
    ven_efeROM_QTRL: TIntegerField;
    ven_efeROM_QTSP: TIBBCDField;
    ven_efeROM_RLSP: TIntegerField;
    ven_efeROM_QTPD: TIBBCDField;
    ven_efeROM_RLPD: TIntegerField;
    ven_efeROM_VDSC: TIBBCDField;
    ven_efeROM_TOTA: TIBBCDField;
    ven_efeROM_FLAG: TIBStringField;
    ven_efeROM_COMI: TIBBCDField;
    ven_efeROM_DPRO: TIBStringField;
    ven_efeROM_TPRC: TIBStringField;
    ven_efeROM_ABCD: TIBStringField;
    ven_efeROM_DCOR: TIBStringField;
    ven_efeROM_PCOR: TIBStringField;
    ven_efeROM_DROM: TDateField;
    ven_efeROM_QPRD: TSmallintField;
    ven_efeROM_DPRD: TDateField;
    ven_efeROM_QEMB: TSmallintField;
    ven_efeROM_DEMB: TDateField;
    ven_efeROM_QDES: TSmallintField;
    ven_efeROM_DDES: TDateField;
    ven_efeROM_QEXP: TSmallintField;
    ven_efeROM_DEXP: TDateField;
    ven_efeROM_CTNR: TIBStringField;
    ven_efeROM_OBSE: TMemoField;
    ven_efeROM_DBAI: TDateField;
    ven_efeROM_RPRD: TDateField;
    ven_efeROM_REMB: TDateField;
    ven_efeROM_RDES: TDateField;
    ven_efeROM_DCO2: TIBStringField;
    ven_efeROM_PCO2: TIBStringField;
    ven_efeROM_UNIT: TFloatField;
    ven_efeROM_PREC: TFloatField;
    TCadastro: TIBTransaction;
    QConsulta: TIBQuery;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    ven_efeCDCF: TIBStringField;
    ven_efeROM_DUNI: TIBStringField;
    ven_efeROM_PESO: TIBBCDField;
    ven_efeROM_PSBR: TIBBCDField;
    ven_efeROM_PSLQ: TIBBCDField;
    ven_efeSTFI: TIBStringField;
    procedure ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure detailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
  end;

var
  qrpven_prc: Tqrpven_prc;

implementation


{$R *.DFM}

procedure Tqrpven_prc.ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrlcfor.Caption := oStrZero(romanROM_CFOR.AsInteger,10);
  qrlrefe.Caption := ven_efePRO_CART.AsString+' '+ven_efeROM_DPRO.AsString;
  qrllarg.Caption := formatfloat('#,0.00 M' ,ven_efePRO_LARG.AsFloat);
  qrlgram.Caption := formatfloat('#,0.00 G/M²',ven_efePRO_GRAM.AsFloat);
end;

procedure Tqrpven_prc.detailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrldcor.Caption := ven_efePRO_CPRO.AsString+' '+ven_efeROM_DCOR.AsString;
  detail.Height   := 118;
  if trim(ven_efeROM_OBSE.AsString) <> '' then
  detail.Height   := 133;
end;

end.

