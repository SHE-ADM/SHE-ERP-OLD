unit qeti_pro_mat;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase;

type
  Tqrpeti_pro_mat = class(TQuickRep)
    detalhe: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    qrlraza: TQRLabel;
    qrlcnpj: TQRLabel;
    qrlfabr: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    qrlqtde: TQRLabel;
    QRDBText2: TQRDBText;
    IBTra: TIBTransaction;
    relatorio: TIBQuery;
    relatorioEST_CPRO: TIntegerField;
    relatorioPRO_CPRO: TIBStringField;
    relatorioPRO_DPRO: TIBStringField;
    relatorioPRO_DUNI: TIBStringField;
    relatorioPRO_DCOR: TIBStringField;
    relatorioPRO_COMP: TIBStringField;
    relatorioPRO_CCST: TIBStringField;
    relatorioEST_CDET: TIBStringField;
    relatorioEST_CRED: TIBBCDField;
    qrloper: TQRLabel;
    qrlcomp1: TQRLabel;
    qrlcomp2: TQRLabel;
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrpeti_pro_mat: Tqrpeti_pro_mat;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpeti_pro_mat.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var i,j: word;
      BRet: boolean;
begin
  BRet := false;
  for i := 1 to length(relatorioPRO_COMP.AsString) do
  begin
    if copy(relatorioPRO_COMP.AsString,i,1) = ':' then
    begin
      BRet := true;
      break;
    end;
  end;

  qrlcomp1.Caption := '';
  qrlcomp2.Caption := '';

  if not BRet then
  begin
    if length(relatorioPRO_COMP.AsString) > 40 then
    begin
      j := 0;
      for i := 1 to length(relatorioPRO_COMP.AsString) do
      begin
        if copy(relatorioPRO_COMP.AsString,i,1) = ' ' then
        begin
          inc(j);
        end;

        if j = 4 then
           break;

        qrlcomp1.Caption := qrlcomp1.Caption + copy(relatorioPRO_COMP.AsString,i,1);
      end;
      qrlcomp2.Caption := trim(copy(relatorioPRO_COMP.AsString,i,40));
    end
    else
      qrlcomp1.Caption := relatorioPRO_COMP.AsString;
  end
  else
  begin
    inc(i);
    for j := i to length(relatorioPRO_COMP.AsString) do
    begin
      if copy(relatorioPRO_COMP.AsString,j,1) = ':' then
      begin
        for i := j downto 1 do
        begin
          if copy(relatorioPRO_COMP.AsString,i,1) = ' ' then
          begin
            qrlcomp1.Caption := TRIM(copy(relatorioPRO_COMP.AsString,1,i));
            qrlcomp2.Caption := TRIM(copy(relatorioPRO_COMP.AsString,i,120));
            break;
          end;
        end;
        break;
      end;
    end;

    if qrlcomp1.Caption = '' then
       qrlcomp1.Caption := TRIM(copy(relatorioPRO_COMP.AsString,1,Length(relatorioPRO_COMP.AsString)));
  end;

  qrlraza.Caption := frmprincipal.parametrosPAR_RAZA.AsString;
  qrlcnpj.Caption := 'CNPJ: '+copy(frmprincipal.parametrosPAR_CNPJ.AsString,1,2)+'.'+
                              copy(frmprincipal.parametrosPAR_CNPJ.AsString,3,3)+'.'+
                              copy(frmprincipal.parametrosPAR_CNPJ.AsString,6,3)+'/'+
                              copy(frmprincipal.parametrosPAR_CNPJ.AsString,9,4)+'-'+
                              copy(frmprincipal.parametrosPAR_CNPJ.AsString,13,2);

  if relatorioPRO_CCST.AsString = '0' then
     qrlfabr.Caption := 'INDUSTRIA BRASILEIRA'
  else
     qrlfabr.Caption := 'PRODUZIDO NA CHINA';

  qrlqtde.Caption := formatfloat('#,0.00######## '+relatorioPRO_DUNI.AsString,relatorioEST_CRED.AsFloat);
end;

end.
