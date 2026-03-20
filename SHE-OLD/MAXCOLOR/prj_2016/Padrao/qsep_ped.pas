unit qsep_ped;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, DateUtils, jpeg, math;

type
  Tqrpsep_ped = class(TQuickRep)
    TituloVenda: TQRBand;
    ItemVenda: TQRSubDetail;
    CabecalhoVenda: TQRChildBand;
    QRBand1: TQRBand;
    ven_efe: TIBQuery;
    consulta: TIBQuery;
    IBTra: TIBTransaction;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText39: TQRDBText;
    QRDBText2: TQRDBText;
    roman: TIBQuery;
    QRShape7: TQRShape;
    romanID: TIntegerField;
    romanROM_CDPD: TIntegerField;
    romanROM_CDPR: TIntegerField;
    romanROM_CDRO: TIntegerField;
    romanROM_CDBX: TIntegerField;
    romanROM_DERO: TIBStringField;
    romanROM_STPD: TIBStringField;
    romanROM_STCO: TIBStringField;
    romanROM_STFI: TIBStringField;
    romanROM_DROM: TDateField;
    romanROM_DBAI: TDateField;
    romanROM_DCAN: TDateField;
    romanROM_CCLI: TIntegerField;
    romanROM_CVEN: TIntegerField;
    romanROM_CREP: TIntegerField;
    romanROM_CPAG: TIntegerField;
    romanROM_TSDE: TIBBCDField;
    romanROM_TDSC: TIBStringField;
    romanROM_TCDE: TIBBCDField;
    romanROM_CONC: TSmallintField;
    romanROM_PDSC: TIBBCDField;
    romanROM_QTVE: TIBBCDField;
    romanROM_RLVE: TIntegerField;
    romanROM_STA: TIBStringField;
    romanROM_OBSE: TMemoField;
    romanCLI_FANT: TIBStringField;
    romanREP_FANT: TIBStringField;
    romanPAG_DPAG: TIBStringField;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    romanROM_CDOC: TIntegerField;
    romanROM_CDNF: TIntegerField;
    romanROM_HROM: TTimeField;
    romanROM_DNFS: TDateField;
    romanROM_DEXP: TDateField;
    romanROM_HEXP: TTimeField;
    romanROM_CEXP: TIntegerField;
    romanROM_CDSC: TIBBCDField;
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
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape4: TQRShape;
    qrlqdis: TQRLabel;
    qrlqtde: TQRLabel;
    TotalVenda: TQRChildBand;
    QRExpr5: TQRExpr;
    QRSysData2: TQRSysData;
    QRShape6: TQRShape;
    QRLabel19: TQRLabel;
    QRDBText3: TQRDBText;
    romanROM_CDRD: TIntegerField;
    romanROM_CDCX: TIntegerField;
    romanROM_QTSP: TIBBCDField;
    romanROM_QTPD: TIBBCDField;
    romanROM_ADSC: TIBBCDField;
    romanROM_COMI: TIBBCDField;
    romanUSU_DUSU: TIBStringField;
    qrltqtde: TQRLabel;
    qrltqdis: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRDBRichText1: TQRDBRichText;
    QRDBText21: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape18: TQRShape;
    QRLabel29: TQRLabel;
    QRShape9: TQRShape;
    qrmemo1: TQRMemo;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    romanROM_DCLI: TStringField;
    romanROM_DUSU: TStringField;
    romanROM_DREP: TStringField;
    QRExpr7: TQRExpr;
    QRLabel6: TQRLabel;
    qrlqtrl: TQRLabel;
    qreqtrl: TQRExpr;
    ven_efeRPED: TIntegerField;
    ven_efeQDIS: TFloatField;
    ven_efeRDIS: TFloatField;
    ven_efeQFIS: TFloatField;
    ven_efeRFIS: TFloatField;
    ven_efeQRES: TFloatField;
    ven_efeRRES: TIntegerField;
    ven_efeQSEP: TFloatField;
    ven_efeRSEP: TIntegerField;
    ven_efePPRC: TFloatField;
    ven_efePDIS: TFloatField;
    ven_efeDESC: TStringField;
    ven_efePRO_DUNI: TIBStringField;
    ven_efePRO_METR: TIBBCDField;
    ven_efePRO_PESO: TIBBCDField;
    ven_efePRO_PSCN: TIBBCDField;
    ven_efePRO_CART: TIBStringField;
    ven_efePRO_CPRO: TIBStringField;
    ven_efePRO_DCOR: TIBStringField;
    ven_efeROM_DUNI: TIBStringField;
    ven_efeID: TIntegerField;
    ven_efeROM_ITEM: TIBStringField;
    ven_efeROM_DCOR: TIBStringField;
    ven_efeROM_DPRO: TIBStringField;
    ven_efePRO_QEST: TIBBCDField;
    ven_efePRO_REST: TIntegerField;
    ven_efePRO_QEST2: TIBBCDField;
    ven_efePRO_REST2: TIntegerField;
    ven_efePRO_QEST3: TIBBCDField;
    ven_efePRO_REST3: TIntegerField;
    ven_efePRO_QEST4: TIBBCDField;
    ven_efePRO_REST4: TIntegerField;
    ven_efePRO_QEST5: TIBBCDField;
    ven_efePRO_REST5: TIntegerField;
    ven_efePRO_QEST6: TIBBCDField;
    ven_efePRO_REST6: TIntegerField;
    ven_efePRO_QEST7: TIBBCDField;
    ven_efePRO_REST7: TIntegerField;
    ven_efePRO_QEST8: TIBBCDField;
    ven_efePRO_REST8: TIntegerField;
    ven_efePRO_QEST9: TIBBCDField;
    ven_efePRO_REST9: TIntegerField;
    ven_efePRO_QRES: TIBBCDField;
    ven_efePRO_RRES: TIntegerField;
    ven_efePRO_QRES2: TIBBCDField;
    ven_efePRO_RRES2: TIntegerField;
    ven_efePRO_QRES3: TIBBCDField;
    ven_efePRO_RRES3: TIntegerField;
    ven_efePRO_QRES4: TIBBCDField;
    ven_efePRO_RRES4: TIntegerField;
    ven_efePRO_QRES5: TIBBCDField;
    ven_efePRO_RRES5: TIntegerField;
    ven_efePRO_QRES6: TIBBCDField;
    ven_efePRO_RRES6: TIntegerField;
    ven_efePRO_QRES7: TIBBCDField;
    ven_efePRO_RRES7: TIntegerField;
    ven_efePRO_QRES8: TIBBCDField;
    ven_efePRO_RRES8: TIntegerField;
    ven_efePRO_QRES9: TIBBCDField;
    ven_efePRO_RRES9: TIntegerField;
    ven_efePRO_QSEP: TIBBCDField;
    ven_efePRO_RSEP: TIntegerField;
    ven_efePRO_QSEP2: TIBBCDField;
    ven_efePRO_RSEP2: TIntegerField;
    ven_efePRO_QSEP3: TIBBCDField;
    ven_efePRO_RSEP3: TIntegerField;
    ven_efePRO_QSEP4: TIBBCDField;
    ven_efePRO_RSEP4: TIntegerField;
    ven_efePRO_QSEP5: TIBBCDField;
    ven_efePRO_RSEP5: TIntegerField;
    ven_efePRO_QSEP6: TIBBCDField;
    ven_efePRO_RSEP6: TIntegerField;
    ven_efePRO_QSEP7: TIBBCDField;
    ven_efePRO_RSEP7: TIntegerField;
    ven_efePRO_QSEP8: TIBBCDField;
    ven_efePRO_RSEP8: TIntegerField;
    ven_efePRO_QSEP9: TIBBCDField;
    ven_efePRO_RSEP9: TIntegerField;
    ven_efePRO_QPRG: TIBBCDField;
    ven_efePRO_RPRG: TIntegerField;
    ven_efePRO_QPRC: TIBBCDField;
    ven_efePRO_QPRD: TIBBCDField;
    ven_efePRO_RPRC: TIntegerField;
    ven_efePRO_QDEF: TIBBCDField;
    ven_efePRO_RDEF: TIntegerField;
    ven_efeROM_QTDE: TIBBCDField;
    ven_efeROM_QTRL: TIntegerField;
    ven_efeROM_UNIT: TFloatField;
    ven_efeROM_TOTA: TIBBCDField;
    procedure ven_efeCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure romanCalcFields(DataSet: TDataSet);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpsep_ped: Tqrpsep_ped;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpsep_ped.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpsep_ped.ven_efeCalcFields(DataSet: TDataSet);
var
  qest,qres,qsep: double;
  rped,rest,rres,rsep: integer;
begin
  qest := 0;
  rest := 0;
  qres := 0;
  rres := 0;
  qsep := 0;
  rsep := 0;
  rped := 0;

  if frmprincipal.parametrosPAR_ESEG.AsString <> '1' then
  begin
    case frmprincipal.parametrosID.AsInteger of
    1: begin
         qest := ven_efePRO_QEST.AsFloat;
         rest := ven_efePRO_REST.AsInteger;
         qres := ven_efePRO_QRES.AsFloat;
         rres := ven_efePRO_RRES.AsInteger;
         qsep := ven_efePRO_QSEP.AsFloat;
         rsep := ven_efePRO_RSEP.AsInteger;
       end;
    2: begin
         qest := ven_efePRO_QEST2.AsFloat;
         rest := ven_efePRO_REST2.AsInteger;
         qres := ven_efePRO_QRES2.AsFloat;
         rres := ven_efePRO_RRES2.AsInteger;
         qsep := ven_efePRO_QSEP2.AsFloat;
         rsep := ven_efePRO_RSEP2.AsInteger;
       end;
    3: begin
         qest := ven_efePRO_QEST3.AsFloat;
         rest := ven_efePRO_REST3.AsInteger;
         qres := ven_efePRO_QRES3.AsFloat;
         rres := ven_efePRO_RRES3.AsInteger;
         qsep := ven_efePRO_QSEP3.AsFloat;
         rsep := ven_efePRO_RSEP3.AsInteger;
       end;
    4: begin
         qest := ven_efePRO_QEST4.AsFloat;
         rest := ven_efePRO_REST4.AsInteger;
         qres := ven_efePRO_QRES4.AsFloat;
         rres := ven_efePRO_RRES4.AsInteger;
         qsep := ven_efePRO_QSEP4.AsFloat;
         rsep := ven_efePRO_RSEP4.AsInteger;
       end;
    5: begin
         qest := ven_efePRO_QEST5.AsFloat;
         rest := ven_efePRO_REST5.AsInteger;
         qres := ven_efePRO_QRES5.AsFloat;
         rres := ven_efePRO_RRES5.AsInteger;
         qsep := ven_efePRO_QSEP5.AsFloat;
         rsep := ven_efePRO_RSEP5.AsInteger;
       end;
    6: begin
         qest := ven_efePRO_QEST6.AsFloat;
         rest := ven_efePRO_REST6.AsInteger;
         qres := ven_efePRO_QRES6.AsFloat;
         rres := ven_efePRO_RRES6.AsInteger;
         qsep := ven_efePRO_QSEP6.AsFloat;
         rsep := ven_efePRO_RSEP6.AsInteger;
       end;
    7: begin
         qest := ven_efePRO_QEST7.AsFloat;
         rest := ven_efePRO_REST7.AsInteger;
         qres := ven_efePRO_QRES7.AsFloat;
         rres := ven_efePRO_RRES7.AsInteger;
         qsep := ven_efePRO_QSEP7.AsFloat;
         rsep := ven_efePRO_RSEP7.AsInteger;
       end;
    8: begin
         qest := ven_efePRO_QEST8.AsFloat;
         rest := ven_efePRO_REST8.AsInteger;
         qres := ven_efePRO_QRES8.AsFloat;
         rres := ven_efePRO_RRES8.AsInteger;
         qsep := ven_efePRO_QSEP8.AsFloat;
         rsep := ven_efePRO_RSEP8.AsInteger;
       end;
    9: begin
         qest := ven_efePRO_QEST9.AsFloat;
         rest := ven_efePRO_REST9.AsInteger;
         qres := ven_efePRO_QRES9.AsFloat;
         rres := ven_efePRO_RRES9.AsInteger;
         qsep := ven_efePRO_QSEP9.AsFloat;
         rsep := ven_efePRO_RSEP9.AsInteger;
       end;
    end;
  end else
  begin
    qest := ven_efePRO_QEST.AsFloat  +ven_efePRO_QEST2.AsFloat  +ven_efePRO_QEST3.AsFloat  +ven_efePRO_QEST4.AsFloat  +ven_efePRO_QEST5.AsFloat  +ven_efePRO_QEST6.AsFloat  +ven_efePRO_QEST7.AsFloat  +ven_efePRO_QEST8.AsFloat  +ven_efePRO_QEST9.AsFloat;
    rest := ven_efePRO_REST.AsInteger+ven_efePRO_REST2.AsInteger+ven_efePRO_REST3.AsInteger+ven_efePRO_REST4.AsInteger+ven_efePRO_REST5.AsInteger+ven_efePRO_REST6.AsInteger+ven_efePRO_REST7.AsInteger+ven_efePRO_REST8.AsInteger+ven_efePRO_REST9.AsInteger;

    qres := ven_efePRO_QRES.AsFloat  +ven_efePRO_QRES2.AsFloat  +ven_efePRO_QRES3.AsFloat  +ven_efePRO_QRES4.AsFloat  +ven_efePRO_QRES5.AsFloat  +ven_efePRO_QRES6.AsFloat  +ven_efePRO_QRES7.AsFloat  +ven_efePRO_QRES8.AsFloat  +ven_efePRO_QRES9.AsFloat;
    rres := ven_efePRO_RRES.AsInteger+ven_efePRO_RRES2.AsInteger+ven_efePRO_RRES3.AsInteger+ven_efePRO_RRES4.AsInteger+ven_efePRO_RRES5.AsInteger+ven_efePRO_RRES6.AsInteger+ven_efePRO_RRES7.AsInteger+ven_efePRO_RRES8.AsInteger+ven_efePRO_RRES9.AsInteger;

    qsep := ven_efePRO_QSEP.AsFloat  +ven_efePRO_QSEP2.AsFloat  +ven_efePRO_QSEP3.AsFloat  +ven_efePRO_QSEP4.AsFloat  +ven_efePRO_QSEP5.AsFloat  +ven_efePRO_QSEP6.AsFloat  +ven_efePRO_QSEP7.AsFloat  +ven_efePRO_QSEP8.AsFloat  +ven_efePRO_QSEP9.AsFloat;
    rsep := ven_efePRO_RSEP.AsInteger+ven_efePRO_RSEP2.AsInteger+ven_efePRO_RSEP3.AsInteger+ven_efePRO_RSEP4.AsInteger+ven_efePRO_RSEP5.AsInteger+ven_efePRO_RSEP6.AsInteger+ven_efePRO_RSEP7.AsInteger+ven_efePRO_RSEP8.AsInteger+ven_efePRO_RSEP9.AsInteger;
  end;

  // ******************************* ESTOQUE FÍSICO ******************************* //

  if frmprincipal.parametrosPAR_PECA.AsString <> '1' then
  begin
    if (copy(ven_efePRO_DUNI.AsString,1,1) = 'M') and (ven_efePRO_METR.AsFloat > 0 ) then
    rest := trunc(roundto((qest/ven_efePRO_METR.AsFloat),-2)) else
    if (copy(ven_efePRO_DUNI.AsString,1,1) = 'K') and (ven_efePRO_PESO.AsFloat > 0 ) then
    rest := trunc(roundto(qest/(ven_efePRO_PESO.AsFloat+ven_efePRO_PSCN.AsFloat),-2)) else
    if (copy(ven_efePRO_DUNI.AsString,1,1) = 'P') or (copy(ven_efePRO_DUNI.AsString,1,1) = 'C') then
    rest := trunc(qest);
  end;

  ven_efeQFIS.Value := qest;
  ven_efeRFIS.Value := rest;

  // ******************************* ESTOQUE RESERVADO ******************************* //

  if (copy(ven_efePRO_DUNI.AsString,1,1) = 'M') and (ven_efePRO_METR.AsFloat > 0 ) then
  rres := trunc(roundto((qres/ven_efePRO_METR.AsFloat),-2)) else
  if (copy(ven_efePRO_DUNI.AsString,1,1) = 'K') and (ven_efePRO_PESO.AsFloat > 0 ) then
  rres := trunc(roundto(qres/(ven_efePRO_PESO.AsFloat+ven_efePRO_PSCN.AsFloat),-2)) else
  if (copy(ven_efePRO_DUNI.AsString,1,1) = 'P') or (copy(ven_efePRO_DUNI.AsString,1,1) = 'C') then
  rres := trunc(qres);

  ven_efeQRES.Value := qres;
  ven_efeRRES.Value := rres;


  // ******************************* ESTOQUE SEPARADO ******************************* //

  if frmprincipal.parametrosPAR_PECA.AsString <> '1' then
  begin
    if (copy(ven_efePRO_DUNI.AsString,1,1) = 'M') and (ven_efePRO_METR.AsFloat > 0 ) then
    rsep := trunc(roundto((qsep/ven_efePRO_METR.AsFloat),-2)) else
    if (copy(ven_efePRO_DUNI.AsString,1,1) = 'K') and (ven_efePRO_PESO.AsFloat > 0 ) then
    rsep := trunc(roundto(qsep/(ven_efePRO_PESO.AsFloat+ven_efePRO_PSCN.AsFloat),-2)) else
    if (copy(ven_efePRO_DUNI.AsString,1,1) = 'P') or (copy(ven_efePRO_DUNI.AsString,1,1) = 'C') then
    rsep := trunc(qsep);
  end;

  ven_efeQSEP.Value := qsep;
  ven_efeRSEP.Value := rsep;

  // ******************************* QUANTIDADE PEDIDO ******************************* //

  if frmprincipal.parametrosPAR_PECA.AsString <> '1' then
  begin
    if (copy(ven_efePRO_DUNI.AsString,1,1) = 'M') and (ven_efePRO_METR.AsFloat > 0 ) then
    rped := trunc(roundto((ven_efeROM_QTDE.AsFloat/ven_efePRO_METR.AsFloat),-2)) else
    if (copy(ven_efePRO_DUNI.AsString,1,1) = 'K') and (ven_efePRO_PESO.AsFloat > 0 ) then
    rped := trunc(roundto(ven_efeROM_QTDE.AsFloat/(ven_efePRO_PESO.AsFloat+ven_efePRO_PSCN.AsFloat),-2)) else
    if (copy(ven_efePRO_DUNI.AsString,1,1) = 'P') or (copy(ven_efePRO_DUNI.AsString,1,1) = 'C') then
    rped := trunc(ven_efeROM_QTDE.AsFloat);
  end else
  rped := 1;

  ven_efeRPED.Value := rped;

  // ******************************* SUMÁRIO ******************************* //

  ven_efeQDIS.Value := ven_efeQFIS.AsFloat   - qres;
  ven_efeRDIS.Value := ven_efeRFIS.AsInteger - rres;

  if ven_efePRO_QPRD.AsFloat > 0 then
  ven_efePPRC.Value := ven_efePRO_QPRD.AsFloat else
  ven_efePPRC.Value := ven_efePRO_QPRC.AsFloat;
  ven_efePDIS.Value := ven_efePPRC.AsFloat-ven_efePRO_QPRG.AsFloat;

  if (copy(ven_efePRO_DUNI.AsString,1,1) <> 'M') and (copy(ven_efePRO_DUNI.AsString,1,1) <> 'K') then
  begin
    qrlqdis.Caption := formatFloat('#,0.00',ven_efeQDIS.AsFloat);
    qrlqtde.Caption := formatFloat('#,0.00',ven_efeROM_QTDE.AsFloat);
  end else
  begin
    qrlqdis.Caption := formatFloat('#,0.00',ven_efeQDIS.AsFloat)+'/'+ven_efeRDIS.AsString;
    qrlqtde.Caption := formatFloat('#,0.00',ven_efeROM_QTDE.AsFloat)+'/'+ven_efeRPED.AsString;
  end;
  ven_efeDESC.Value := ven_efeROM_DCOR.AsString+' '+ven_efeROM_DPRO.AsString;
end;

procedure Tqrpsep_ped.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
  var
    qdis,qtde: double;
    rdis,rped: integer;
begin
  qdis := 0;
  qtde := 0;
  rdis := 0;
  rped := 0;

  ven_efe.First;
  while not ven_efe.Eof do
  begin
    qdis := qdis + ven_efeQDIS.AsFloat;
    qtde := qtde + ven_efeROM_QTDE.AsFloat;

    rdis := rdis + ven_efeRDIS.AsInteger;
    rped := rped + ven_efeRPED.AsInteger;
    
    ven_efe.Next;
  end;
  ven_efe.First;

  qrltqdis.Caption := formatFloat('#,0.00########',qdis)+'/'+inttostr(rdis);
  qrltqtde.Caption := formatFloat('#,0.00########',qtde)+'/'+inttostr(rped);
end;

procedure Tqrpsep_ped.romanCalcFields(DataSet: TDataSet);
begin
  romanROM_DCLI.Value := oStrZero(romanROM_CCLI.AsInteger,5)+' - '+romanCLI_FANT.AsString;
  romanROM_DUSU.Value := oStrZero(romanROM_CVEN.AsInteger,5)+' - '+romanUSU_DUSU.AsString;
  romanROM_DREP.Value := oStrZero(romanROM_CREP.AsInteger,5)+' - '+romanREP_FANT.AsString;
end;

end.

