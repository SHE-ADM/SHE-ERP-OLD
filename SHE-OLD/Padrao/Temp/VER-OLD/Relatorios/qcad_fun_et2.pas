unit qcad_fun_et2;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase;

type
  Tqrpcad_fun_et2 = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    qrlper: TQRLabel;
    relatorio: TIBQuery;
    IBTra: TIBTransaction;
    relatorioID: TIntegerField;
    relatorioFUN_NOME: TIBStringField;
    relatorioFUN_DCAR: TIBStringField;
    qrlcnpj: TQRLabel;
    qrlfant: TQRLabel;
    qrlende: TQRLabel;
    qrlhora: TQRLabel;
    qrlalmo: TQRLabel;
    relatorioFUN_HEIN: TIBStringField;
    relatorioFUN_HSIN: TIBStringField;
    relatorioFUN_HEFN: TIBStringField;
    relatorioFUN_HSFN: TIBStringField;
    relatorioPAR_FANT: TIBStringField;
    relatorioPAR_CNPJ: TIBStringField;
    relatorioPAR_TLOG: TIBStringField;
    relatorioPAR_LOGR: TIBStringField;
    relatorioPAR_NUME: TIBStringField;
    relatorioPAR_COMP: TIBStringField;
    QRDBText3: TQRDBText;
    relatorioFUN_REGI: TIBStringField;
    qrlnord: TQRLabel;
    relatorioFUN_NORD: TSmallintField;
    QRLabel1: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrpcad_fun_et2: Tqrpcad_fun_et2;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpcad_fun_et2.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (copy(relatorioPAR_FANT.AsString,1,8) = 'OTIMOTEX') or (relatorioPAR_FANT.AsString = 'LEBIANCO') THEN
  qrlfant.Caption := 'OTIMOTEX' else
  qrlfant.Caption := relatorioPAR_FANT.AsString;
  qrlcnpj.Caption := 'CNPJ: '+copy(relatorioPAR_CNPJ.AsString,1,2)+'.'+
                              copy(relatorioPAR_CNPJ.AsString,3,3)+'.'+
                              copy(relatorioPAR_CNPJ.AsString,6,3)+'/'+
                              copy(relatorioPAR_CNPJ.AsString,9,4)+'-'+
                              copy(relatorioPAR_CNPJ.AsString,13,2);
  qrlende.Caption := relatorioPAR_TLOG.AsString+' ' +
                     relatorioPAR_LOGR.AsString+', '+
                     relatorioPAR_NUME.AsString+' ' +
                     relatorioPAR_COMP.AsString;
  qrlhora.Caption := copy(relatorioFUN_HEIN.AsString,1,2)+':'+copy(relatorioFUN_HEIN.AsString,3,2)+' ATE '+copy(relatorioFUN_HSIN.AsString,1,2)+':'+copy(relatorioFUN_HSIN.AsString,3,2);
  qrlalmo.Caption := copy(relatorioFUN_HEFN.AsString,1,2)+':'+copy(relatorioFUN_HEFN.AsString,3,2)+' ATE '+copy(relatorioFUN_HSFN.AsString,1,2)+':'+copy(relatorioFUN_HSFN.AsString,3,2);
  qrlnord.Caption := 'ORDEM '+oStrZero(relatorioFUN_NORD.AsInteger,3);
end;

end.
