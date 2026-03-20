unit qcad_pro_est;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QRCtrls, IBDatabase, IBStoredProc,
  DB, IBCustomDataSet, IBQuery, QuickRpt, math, jpeg;

type
  Tqrpcad_pro_est = class(TQuickRep)
    IBTra: TIBTransaction;
    cad_pro_est: TIBQuery;
    ColumnHeaderBand1: TQRBand;
    qrlcol0: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    tSHEILD: TIBTransaction;
    relatorio: TIBDataSet;
    relatorioID: TIntegerField;
    relatorioPRO_CART: TIBStringField;
    relatorioPRO_CPRO: TIBStringField;
    relatorioPRO_DPRO: TIBStringField;
    relatorioPRO_DCOR: TIBStringField;
    relatorioPRO_DESC: TIBStringField;
    relatorioPRO_QEST: TIBBCDField;
    relatorioPRO_REST: TIntegerField;
    relatorioPRO_QRES: TIBBCDField;
    relatorioPRO_RRES: TIntegerField;
    relatorioPRO_QDIS: TIBBCDField;
    relatorioPRO_RDIS: TIntegerField;
    relatorioPRO_QDEF: TIBBCDField;
    relatorioPRO_RDEF: TIntegerField;
    relatorioPRO_QPRG: TIBBCDField;
    relatorioPRO_RPRG: TIntegerField;
    relatorioPRO_QPRC: TIBBCDField;
    relatorioPRO_RPRC: TIntegerField;
    relatorioPRO_DUNI: TIBStringField;
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
    QRShape4: TQRShape;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel5: TQRLabel;
    qrlfil: TQRLabel;
    qrlrodape: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    DetailBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText2: TQRDBText;
    qrlpro_est: TQRLabel;
    qrltpro_est: TQRLabel;
    consulta_s: TIBQuery;
    relatorioDPRO: TStringField;
    cad_pro_estQDIS: TFloatField;
    cad_pro_estRDIS: TIntegerField;
    cad_pro_estQFIS: TFloatField;
    cad_pro_estRFIS: TIntegerField;
    cad_pro_estQRES: TFloatField;
    cad_pro_estRRES: TFloatField;
    cad_pro_estQSEP: TFloatField;
    cad_pro_estRSEP: TIntegerField;
    cad_pro_estPPRC: TFloatField;
    cad_pro_estPDIS: TFloatField;
    QRDBText3: TQRDBText;
    cad_pro_estPRO_CART: TIBStringField;
    cad_pro_estPRO_CPRO: TIBStringField;
    cad_pro_estPRO_DCOR: TIBStringField;
    cad_pro_estPRO_DPRO: TIBStringField;
    cad_pro_estPRO_DUNI: TIBStringField;
    cad_pro_estPRO_METR: TIBBCDField;
    cad_pro_estPRO_PESO: TIBBCDField;
    cad_pro_estPRO_PSCN: TIBBCDField;
    cad_pro_estPRO_QEST: TIBBCDField;
    cad_pro_estPRO_REST: TIntegerField;
    cad_pro_estPRO_QEST2: TIBBCDField;
    cad_pro_estPRO_REST2: TIntegerField;
    cad_pro_estPRO_QEST3: TIBBCDField;
    cad_pro_estPRO_REST3: TIntegerField;
    cad_pro_estPRO_QEST4: TIBBCDField;
    cad_pro_estPRO_REST4: TIntegerField;
    cad_pro_estPRO_QEST5: TIBBCDField;
    cad_pro_estPRO_REST5: TIntegerField;
    cad_pro_estPRO_QEST6: TIBBCDField;
    cad_pro_estPRO_REST6: TIntegerField;
    cad_pro_estPRO_QEST7: TIBBCDField;
    cad_pro_estPRO_REST7: TIntegerField;
    cad_pro_estPRO_QEST8: TIBBCDField;
    cad_pro_estPRO_REST8: TIntegerField;
    cad_pro_estPRO_QEST9: TIBBCDField;
    cad_pro_estPRO_REST9: TIntegerField;
    cad_pro_estPRO_QRES: TIBBCDField;
    cad_pro_estPRO_RRES: TIntegerField;
    cad_pro_estPRO_QRES2: TIBBCDField;
    cad_pro_estPRO_RRES2: TIntegerField;
    cad_pro_estPRO_QRES3: TIBBCDField;
    cad_pro_estPRO_RRES3: TIntegerField;
    cad_pro_estPRO_QRES4: TIBBCDField;
    cad_pro_estPRO_RRES4: TIntegerField;
    cad_pro_estPRO_QRES5: TIBBCDField;
    cad_pro_estPRO_RRES5: TIntegerField;
    cad_pro_estPRO_QRES6: TIBBCDField;
    cad_pro_estPRO_RRES6: TIntegerField;
    cad_pro_estPRO_QRES7: TIBBCDField;
    cad_pro_estPRO_RRES7: TIntegerField;
    cad_pro_estPRO_QRES8: TIBBCDField;
    cad_pro_estPRO_RRES8: TIntegerField;
    cad_pro_estPRO_QRES9: TIBBCDField;
    cad_pro_estPRO_RRES9: TIntegerField;
    cad_pro_estPRO_QSEP: TIBBCDField;
    cad_pro_estPRO_RSEP: TIntegerField;
    cad_pro_estPRO_QSEP2: TIBBCDField;
    cad_pro_estPRO_RSEP2: TIntegerField;
    cad_pro_estPRO_QSEP3: TIBBCDField;
    cad_pro_estPRO_RSEP3: TIntegerField;
    cad_pro_estPRO_QSEP4: TIBBCDField;
    cad_pro_estPRO_RSEP4: TIntegerField;
    cad_pro_estPRO_QSEP5: TIBBCDField;
    cad_pro_estPRO_RSEP5: TIntegerField;
    cad_pro_estPRO_QSEP6: TIBBCDField;
    cad_pro_estPRO_RSEP6: TIntegerField;
    cad_pro_estPRO_QSEP7: TIBBCDField;
    cad_pro_estPRO_RSEP7: TIntegerField;
    cad_pro_estPRO_QSEP8: TIBBCDField;
    cad_pro_estPRO_RSEP8: TIntegerField;
    cad_pro_estPRO_QSEP9: TIBBCDField;
    cad_pro_estPRO_RSEP9: TIntegerField;
    cad_pro_estPRO_QPRG: TIBBCDField;
    cad_pro_estPRO_RPRG: TIntegerField;
    cad_pro_estPRO_QPRC: TIBBCDField;
    cad_pro_estPRO_QPRD: TIBBCDField;
    cad_pro_estPRO_RPRC: TIntegerField;
    cad_pro_estPRO_QDEF: TIBBCDField;
    cad_pro_estPRO_RDEF: TIntegerField;
    procedure cad_pro_estCalcFields(DataSet: TDataSet);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioCalcFields(DataSet: TDataSet);
  private

  public
    qdis: double;
    rdis: integer;
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpcad_pro_est: Tqrpcad_pro_est;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpcad_pro_est.cad_pro_estCalcFields(DataSet: TDataSet);
var
  qest,qres,qsep: double;
  rest,rres,rsep: integer;
begin
  qest := 0;
  rest := 0;
  qres := 0;
  rres := 0;
  qsep := 0;
  rsep := 0;

  if frmprincipal.parametrosPAR_ESEG.AsString <> '1' then
  begin
    case frmprincipal.parametrosID.AsInteger of
    1: begin
         qest := cad_pro_estPRO_QEST.AsFloat;
         rest := cad_pro_estPRO_REST.AsInteger;
         qres := cad_pro_estPRO_QRES.AsFloat;
         rres := cad_pro_estPRO_RRES.AsInteger;
         qsep := cad_pro_estPRO_QSEP.AsFloat;
         rsep := cad_pro_estPRO_RSEP.AsInteger;
       end;
    2: begin
         qest := cad_pro_estPRO_QEST2.AsFloat;
         rest := cad_pro_estPRO_REST2.AsInteger;
         qres := cad_pro_estPRO_QRES2.AsFloat;
         rres := cad_pro_estPRO_RRES2.AsInteger;
         qsep := cad_pro_estPRO_QSEP2.AsFloat;
         rsep := cad_pro_estPRO_RSEP2.AsInteger;
       end;
    3: begin
         qest := cad_pro_estPRO_QEST3.AsFloat;
         rest := cad_pro_estPRO_REST3.AsInteger;
         qres := cad_pro_estPRO_QRES3.AsFloat;
         rres := cad_pro_estPRO_RRES3.AsInteger;
         qsep := cad_pro_estPRO_QSEP3.AsFloat;
         rsep := cad_pro_estPRO_RSEP3.AsInteger;
       end;
    4: begin
         qest := cad_pro_estPRO_QEST4.AsFloat;
         rest := cad_pro_estPRO_REST4.AsInteger;
         qres := cad_pro_estPRO_QRES4.AsFloat;
         rres := cad_pro_estPRO_RRES4.AsInteger;
         qsep := cad_pro_estPRO_QSEP4.AsFloat;
         rsep := cad_pro_estPRO_RSEP4.AsInteger;
       end;
    5: begin
         qest := cad_pro_estPRO_QEST5.AsFloat;
         rest := cad_pro_estPRO_REST5.AsInteger;
         qres := cad_pro_estPRO_QRES5.AsFloat;
         rres := cad_pro_estPRO_RRES5.AsInteger;
         qsep := cad_pro_estPRO_QSEP5.AsFloat;
         rsep := cad_pro_estPRO_RSEP5.AsInteger;
       end;
    6: begin
         qest := cad_pro_estPRO_QEST6.AsFloat;
         rest := cad_pro_estPRO_REST6.AsInteger;
         qres := cad_pro_estPRO_QRES6.AsFloat;
         rres := cad_pro_estPRO_RRES6.AsInteger;
         qsep := cad_pro_estPRO_QSEP6.AsFloat;
         rsep := cad_pro_estPRO_RSEP6.AsInteger;
       end;
    7: begin
         qest := cad_pro_estPRO_QEST7.AsFloat;
         rest := cad_pro_estPRO_REST7.AsInteger;
         qres := cad_pro_estPRO_QRES7.AsFloat;
         rres := cad_pro_estPRO_RRES7.AsInteger;
         qsep := cad_pro_estPRO_QSEP7.AsFloat;
         rsep := cad_pro_estPRO_RSEP7.AsInteger;
       end;
    8: begin
         qest := cad_pro_estPRO_QEST8.AsFloat;
         rest := cad_pro_estPRO_REST8.AsInteger;
         qres := cad_pro_estPRO_QRES8.AsFloat;
         rres := cad_pro_estPRO_RRES8.AsInteger;
         qsep := cad_pro_estPRO_QSEP8.AsFloat;
         rsep := cad_pro_estPRO_RSEP8.AsInteger;
       end;
    9: begin
         qest := cad_pro_estPRO_QEST9.AsFloat;
         rest := cad_pro_estPRO_REST9.AsInteger;
         qres := cad_pro_estPRO_QRES9.AsFloat;
         rres := cad_pro_estPRO_RRES9.AsInteger;
         qsep := cad_pro_estPRO_QSEP9.AsFloat;
         rsep := cad_pro_estPRO_RSEP9.AsInteger;
       end;
    end;
  end else
  begin
    qest := cad_pro_estPRO_QEST.AsFloat  +cad_pro_estPRO_QEST2.AsFloat  +cad_pro_estPRO_QEST3.AsFloat  +cad_pro_estPRO_QEST4.AsFloat  +cad_pro_estPRO_QEST5.AsFloat  +cad_pro_estPRO_QEST6.AsFloat  +cad_pro_estPRO_QEST7.AsFloat  +cad_pro_estPRO_QEST8.AsFloat  +cad_pro_estPRO_QEST9.AsFloat;
    rest := cad_pro_estPRO_REST.AsInteger+cad_pro_estPRO_REST2.AsInteger+cad_pro_estPRO_REST3.AsInteger+cad_pro_estPRO_REST4.AsInteger+cad_pro_estPRO_REST5.AsInteger+cad_pro_estPRO_REST6.AsInteger+cad_pro_estPRO_REST7.AsInteger+cad_pro_estPRO_REST8.AsInteger+cad_pro_estPRO_REST9.AsInteger;

    qres := cad_pro_estPRO_QRES.AsFloat  +cad_pro_estPRO_QRES2.AsFloat  +cad_pro_estPRO_QRES3.AsFloat  +cad_pro_estPRO_QRES4.AsFloat  +cad_pro_estPRO_QRES5.AsFloat  +cad_pro_estPRO_QRES6.AsFloat  +cad_pro_estPRO_QRES7.AsFloat  +cad_pro_estPRO_QRES8.AsFloat  +cad_pro_estPRO_QRES9.AsFloat;
    rres := cad_pro_estPRO_RRES.AsInteger+cad_pro_estPRO_RRES2.AsInteger+cad_pro_estPRO_RRES3.AsInteger+cad_pro_estPRO_RRES4.AsInteger+cad_pro_estPRO_RRES5.AsInteger+cad_pro_estPRO_RRES6.AsInteger+cad_pro_estPRO_RRES7.AsInteger+cad_pro_estPRO_RRES8.AsInteger+cad_pro_estPRO_RRES9.AsInteger;

    qsep := cad_pro_estPRO_QSEP.AsFloat  +cad_pro_estPRO_QSEP2.AsFloat  +cad_pro_estPRO_QSEP3.AsFloat  +cad_pro_estPRO_QSEP4.AsFloat  +cad_pro_estPRO_QSEP5.AsFloat  +cad_pro_estPRO_QSEP6.AsFloat  +cad_pro_estPRO_QSEP7.AsFloat  +cad_pro_estPRO_QSEP8.AsFloat  +cad_pro_estPRO_QSEP9.AsFloat;
    rsep := cad_pro_estPRO_RSEP.AsInteger+cad_pro_estPRO_RSEP2.AsInteger+cad_pro_estPRO_RSEP3.AsInteger+cad_pro_estPRO_RSEP4.AsInteger+cad_pro_estPRO_RSEP5.AsInteger+cad_pro_estPRO_RSEP6.AsInteger+cad_pro_estPRO_RSEP7.AsInteger+cad_pro_estPRO_RSEP8.AsInteger+cad_pro_estPRO_RSEP9.AsInteger;
  end;

  // ******************************* ESTOQUE FÍSICO ******************************* //

  if frmprincipal.parametrosPAR_PECA.AsString <> '1' then
  begin
    if (copy(cad_pro_estPRO_DUNI.AsString,1,1) = 'M') and (cad_pro_estPRO_METR.AsFloat > 0 ) then
    rest := trunc(roundto((qest/cad_pro_estPRO_METR.AsFloat),-2)) else
    if (copy(cad_pro_estPRO_DUNI.AsString,1,1) = 'K') and (cad_pro_estPRO_PESO.AsFloat > 0 ) then
    rest := trunc(roundto(qest/(cad_pro_estPRO_PESO.AsFloat+cad_pro_estPRO_PSCN.AsFloat),-2)) else
    if (copy(cad_pro_estPRO_DUNI.AsString,1,1) = 'P') or (copy(cad_pro_estPRO_DUNI.AsString,1,1) = 'C') then
    rest := trunc(qest);
  end;

  cad_pro_estQFIS.Value := qest;
  cad_pro_estRFIS.Value := rest;

  // ******************************* ESTOQUE RESERVADO ******************************* //

  if (copy(cad_pro_estPRO_DUNI.AsString,1,1) = 'M') and (cad_pro_estPRO_METR.AsFloat > 0 ) then
  rres := trunc(roundto((qres/cad_pro_estPRO_METR.AsFloat),-2)) else
  if (copy(cad_pro_estPRO_DUNI.AsString,1,1) = 'K') and (cad_pro_estPRO_PESO.AsFloat > 0 ) then
  rres := trunc(roundto(qres/(cad_pro_estPRO_PESO.AsFloat+cad_pro_estPRO_PSCN.AsFloat),-2)) else
  if (copy(cad_pro_estPRO_DUNI.AsString,1,1) = 'P') or (copy(cad_pro_estPRO_DUNI.AsString,1,1) = 'C') then
  rres := trunc(qres);

  cad_pro_estQRES.Value := qres;
  cad_pro_estRRES.Value := rres;


  // ******************************* ESTOQUE SEPARADO ******************************* //

  if frmprincipal.parametrosPAR_PECA.AsString <> '1' then
  begin
    if (copy(cad_pro_estPRO_DUNI.AsString,1,1) = 'M') and (cad_pro_estPRO_METR.AsFloat > 0 ) then
    rsep := trunc(roundto((qsep/cad_pro_estPRO_METR.AsFloat),-2)) else
    if (copy(cad_pro_estPRO_DUNI.AsString,1,1) = 'K') and (cad_pro_estPRO_PESO.AsFloat > 0 ) then
    rsep := trunc(roundto(qsep/(cad_pro_estPRO_PESO.AsFloat+cad_pro_estPRO_PSCN.AsFloat),-2)) else
    if (copy(cad_pro_estPRO_DUNI.AsString,1,1) = 'P') or (copy(cad_pro_estPRO_DUNI.AsString,1,1) = 'C') then
    rsep := trunc(qsep);
  end;

  cad_pro_estQSEP.Value := qsep;
  cad_pro_estRSEP.Value := rsep;

  // ******************************* SUMÁRIO ******************************* //

  cad_pro_estQDIS.Value := cad_pro_estQFIS.AsFloat   - qres;
  cad_pro_estRDIS.Value := cad_pro_estRFIS.AsInteger - rres;

  if cad_pro_estPRO_QPRD.AsFloat > 0 then
  cad_pro_estPPRC.Value := cad_pro_estPRO_QPRD.AsFloat else
  cad_pro_estPPRC.Value := cad_pro_estPRO_QPRC.AsFloat;
  cad_pro_estPDIS.Value := cad_pro_estPPRC.AsFloat-cad_pro_estPRO_QPRG.AsFloat;
end;

procedure Tqrpcad_pro_est.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpcad_pro_est.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (relatorioPRO_DUNI.AsString = 'UN') or (relatorioPRO_DUNI.AsString = 'PC') or (relatorioPRO_DUNI.AsString = 'CX') then
  qrlpro_est.Caption := relatorioPRO_QDIS.AsString else
  qrlpro_est.Caption := formatFloat('#,0.00'+'/'+relatorioPRO_RDIS.AsString,relatorioPRO_QDIS.AsFloat);

  DetailBand1.Height := 14;
  if relatorioPRO_DCOR.AsString <> '' then
  DetailBand1.Height := 24;
end;

procedure Tqrpcad_pro_est.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (relatorioPRO_DUNI.AsString = 'UN') or (relatorioPRO_DUNI.AsString = 'PC') or (relatorioPRO_DUNI.AsString = 'CX') then
  qrltpro_est.Caption := floattostr(qdis) else
  qrltpro_est.Caption := formatFloat('#,0.00'+'/'+inttostr(rdis),qdis);
end;

procedure Tqrpcad_pro_est.relatorioCalcFields(DataSet: TDataSet);
begin
  relatorioDPRO.Value := relatorioPRO_DPRO.AsString;
  if relatorioPRO_DCOR.AsString <> '' then
  relatorioDPRO.Value := relatorioPRO_DCOR.AsString+' - '+relatorioPRO_DPRO.AsString;
end;

end.
