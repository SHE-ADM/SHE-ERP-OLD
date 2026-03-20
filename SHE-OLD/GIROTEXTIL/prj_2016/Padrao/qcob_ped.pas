unit qcob_ped;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg, IBStoredProc;

type
  Tqrpcob_ped = class(TQuickRep)
    IBTra: TIBTransaction;
    tSHEILD: TIBTransaction;
    consulta_s: TIBQuery;
    consulta: TIBQuery;
    relatorio: TIBQuery;
    QRBand8: TQRBand;
    QRBand9: TQRBand;
    QRLabel43: TQRLabel;
    QRExpr20: TQRExpr;
    QRExpr1: TQRExpr;
    qrlsub: TQRLabel;
    QRBand10: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    QRExpr2: TQRExpr;
    canhoto: TQRBand;
    QRLabel74: TQRLabel;
    QRBand1: TQRBand;
    qrilogo: TQRImage;
    qrlraza: TQRLabel;
    qrlend1: TQRLabel;
    qrlend2: TQRLabel;
    qrlemai_site: TQRLabel;
    QRShape2: TQRShape;
    qrlfone: TQRLabel;
    QRLabel10: TQRLabel;
    qrltitulo: TQRLabel;
    QRShape1: TQRShape;
    QRShape20: TQRShape;
    QRShape15: TQRShape;
    QRDBRichText2: TQRDBRichText;
    QRLabel59: TQRLabel;
    qrldesc2: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel62: TQRLabel;
    qrlqtde2: TQRLabel;
    qrdqtde2: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    qrlcli2: TQRLabel;
    qrlrep2: TQRLabel;
    QRShape19: TQRShape;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRDBText27: TQRDBText;
    qrlven2: TQRLabel;
    QRLabel69: TQRLabel;
    QRSysData2: TQRSysData;
    qrlrodape2: TQRLabel;
    lavpa21: TQRLabel;
    lavpa23: TQRLabel;
    ladpa23: TQRLabel;
    lavpa25: TQRLabel;
    ladpa25: TQRLabel;
    ladpa21: TQRLabel;
    ladpa27: TQRLabel;
    lavpa27: TQRLabel;
    lavpa22: TQRLabel;
    ladpa22: TQRLabel;
    ladpa24: TQRLabel;
    lavpa24: TQRLabel;
    lavpa26: TQRLabel;
    ladpa26: TQRLabel;
    ladpa28: TQRLabel;
    lavpa28: TQRLabel;
    lavpa29: TQRLabel;
    ladpa29: TQRLabel;
    lavpa210: TQRLabel;
    ladpa210: TQRLabel;
    lanpa21: TQRLabel;
    lanpa23: TQRLabel;
    lanpa25: TQRLabel;
    lanpa27: TQRLabel;
    lanpa29: TQRLabel;
    lanpa22: TQRLabel;
    lanpa24: TQRLabel;
    lanpa26: TQRLabel;
    lanpa28: TQRLabel;
    lanpa210: TQRLabel;
    QRShape21: TQRShape;
    qrlpagina2: TQRLabel;
    QRDBText29: TQRDBText;
    qrdbROM_PDS2: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel30: TQRLabel;
    QRShape23: TQRShape;
    qrmemo2: TQRMemo;
    QRShape26: TQRShape;
    QRShape22: TQRShape;
    ibSP: TIBStoredProc;
    qrlrom_obse: TQRLabel;
    qrdbdrep: TQRDBText;
    qrdbcomp: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel9: TQRLabel;
    qrlcomp: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText12: TQRDBText;
    relatorioID: TIntegerField;
    relatorioROM_CDOC: TIntegerField;
    relatorioROM_CDPR: TIntegerField;
    relatorioROM_CDPD: TIntegerField;
    relatorioROM_CDRO: TIntegerField;
    relatorioROM_CDRD: TIntegerField;
    relatorioROM_CDNF: TIntegerField;
    relatorioROM_CDBX: TIntegerField;
    relatorioROM_CDCX: TIntegerField;
    relatorioROM_DERO: TIBStringField;
    relatorioROM_STPD: TIBStringField;
    relatorioROM_STCO: TIBStringField;
    relatorioROM_STFI: TIBStringField;
    relatorioROM_DROM: TDateField;
    relatorioROM_HROM: TTimeField;
    relatorioROM_DBAI: TDateField;
    relatorioROM_DCAN: TDateField;
    relatorioROM_DNFS: TDateField;
    relatorioROM_DEXP: TDateField;
    relatorioROM_HEXP: TTimeField;
    relatorioROM_CEXP: TIntegerField;
    relatorioROM_CCLI: TIntegerField;
    relatorioROM_CVEN: TIntegerField;
    relatorioROM_CREP: TIntegerField;
    relatorioROM_CPAG: TIntegerField;
    relatorioROM_QTVE: TIBBCDField;
    relatorioROM_QTSP: TIBBCDField;
    relatorioROM_QTPD: TIBBCDField;
    relatorioROM_RLVE: TIntegerField;
    relatorioROM_TSDE: TIBBCDField;
    relatorioROM_TDSC: TIBStringField;
    relatorioROM_PDSC: TIBBCDField;
    relatorioROM_CDSC: TIBBCDField;
    relatorioROM_ADSC: TIBBCDField;
    relatorioROM_TCDE: TIBBCDField;
    relatorioROM_CONC: TSmallintField;
    relatorioROM_OBSE: TMemoField;
    relatorioROM_STA: TIBStringField;
    relatorioROM_COMI: TIBBCDField;
    relatorioROM_DPRD: TDateField;
    relatorioROM_CTNR: TIBStringField;
    relatorioROM_DEMB: TDateField;
    relatorioROM_DDES: TDateField;
    relatorioROM_CBAI: TIntegerField;
    relatorioROM_TBAI: TDateTimeField;
    relatorioROM_UPRN: TIntegerField;
    relatorioROM_PPRN: TSmallintField;
    relatorioROM_TPRN: TDateTimeField;
    relatorioROM_VFRT: TIBBCDField;
    relatorioROM_DTRA: TIBStringField;
    relatorioCLI_FANT: TIBStringField;
    relatorioUSU_DUSU: TIBStringField;
    relatorioREP_FANT: TIBStringField;
    relatorioPAG_DPAG: TIBStringField;
    relatorioPRO_CART: TIBStringField;
    relatorioPRO_CPRO: TIBStringField;
    relatorioPRO_COMP: TIBStringField;
    relatorioID1: TIntegerField;
    relatorioROM_ITEM: TIBStringField;
    relatorioROM_DCOR: TIBStringField;
    relatorioROM_DUNI: TIBStringField;
    relatorioROM_DPRO: TIBStringField;
    relatorioROM_QTDE: TIBBCDField;
    relatorioROM_UNIT: TFloatField;
    relatorioROM_TOTA: TIBBCDField;
    relatorioROM_OBSE1: TMemoField;
    relatorioROM_CPRO: TStringField;
    QRShape8: TQRShape;
    QRShape12: TQRShape;
    QRShape7: TQRShape;
    QRLabel4: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBRichText1: TQRDBRichText;
    QRLabel3: TQRLabel;
    qrldesc: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel11: TQRLabel;
    qrlqtde: TQRLabel;
    qrdqtde: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    qrlcli: TQRLabel;
    qrlrep: TQRLabel;
    QRShape5: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText11: TQRDBText;
    qrlven: TQRLabel;
    QRLabel23: TQRLabel;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    QRLabel28: TQRLabel;
    lavpa1: TQRLabel;
    lavpa3: TQRLabel;
    ladpa3: TQRLabel;
    lavpa5: TQRLabel;
    ladpa5: TQRLabel;
    ladpa1: TQRLabel;
    lavpa7: TQRLabel;
    lavpa2: TQRLabel;
    ladpa2: TQRLabel;
    ladpa4: TQRLabel;
    lavpa4: TQRLabel;
    lavpa6: TQRLabel;
    ladpa6: TQRLabel;
    lavpa8: TQRLabel;
    lavpa9: TQRLabel;
    ladpa10: TQRLabel;
    lanpa1: TQRLabel;
    lanpa3: TQRLabel;
    lanpa5: TQRLabel;
    lanpa7: TQRLabel;
    lanpa9: TQRLabel;
    lanpa2: TQRLabel;
    lanpa4: TQRLabel;
    lanpa6: TQRLabel;
    lanpa8: TQRLabel;
    lanpa10: TQRLabel;
    QRDBText13: TQRDBText;
    QRShape6: TQRShape;
    qrlpagina: TQRLabel;
    QRDBText14: TQRDBText;
    qrdbROM_PDSC: TQRDBText;
    QRLabel71: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel75: TQRLabel;
    QRShape9: TQRShape;
    qrmemo1: TQRMemo;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRLabel76: TQRLabel;
    ladpa7: TQRLabel;
    ladpa8: TQRLabel;
    ladpa9: TQRLabel;
    qrlparc2: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel25: TQRLabel;
    qrlpag2: TQRLabel;
    QRLabel29: TQRLabel;
    lavpa10: TQRLabel;
    QRLabel6: TQRLabel;
    qrlpag: TQRLabel;
    qrlparc: TQRLabel;
    QRLabel19: TQRLabel;
    qrlrodape3: TQRLabel;
    qrlrodape4: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel24: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure relatorioCalcFields(DataSet: TDataSet);
    procedure QRBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrgrom_dvenBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpcob_ped: Tqrpcob_ped;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpcob_ped.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpcob_ped.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if (relatorioROM_STPD.AsString = 'DEVOLUÇÃO') or (relatorioROM_STPD.AsString = 'ABATIMENTO') or (relatorioROM_STPD.AsString = 'SERVIÇO') then
  begin
    qrlqtde.Caption    := '';
    qrdqtde.DataField  := '';
    qrlqtde2.Caption   := '';
    qrdqtde2.DataField := '';
  end;
end;

procedure Tqrpcob_ped.QuickRepAfterPrint(Sender: TObject);
begin
  with frmprincipal.sp_sql do
  begin
    ibSP.StoredProcName := 'SP_SQL';

    SQL.Clear;
    SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('SET    ROM_PPRN = ROM_PPRN + 1,');
    SQL.Add('       ROM_UPRN = '''+frmprincipal.cad_usuUSU_CUSU.AsString+''',');
    SQL.Add('       ROM_TPRN = '''+formatDateTime('mm/dd/yy hh:mm:ss',now)+'''');
    SQL.Add('WHERE  ID       = '''+relatorioID.AsString+'''');

    ibSP.Prepare;
    ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
    ibSP.ExecProc;
  end;
  frmprincipal.Log_Eve('Vendas',LOWERCASE(relatorioROM_STPD.AsString),'Emissão de Pedido',relatorioROM_DERO.AsString,relatorioROM_DERO.AsString,relatorioROM_CCLI.AsString+' - '+LOWERCASE(relatorioCLI_FANT.AsString),'','');
  IBTra.CommitRetaining;
end;

procedure Tqrpcob_ped.relatorioCalcFields(DataSet: TDataSet);
begin
  relatorioROM_CPRO.Value := relatorioPRO_CPRO.AsString;
  if relatorioROM_DCOR.AsString <> '' then
  relatorioROM_CPRO.Value := relatorioPRO_CPRO.AsString+' - '+relatorioROM_DCOR.AsString;
end;

procedure Tqrpcob_ped.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRBand8.Height      := 14;
  qrlrom_obse.Caption := '';
  if TRIM(relatorioROM_OBSE1.AsString) <> '' then
  begin
    QRBand8.Height      := 27;
    qrlrom_obse.Caption := 'Obs.: '+ TRIM(relatorioROM_OBSE1.AsString)
  end;  
end;

procedure Tqrpcob_ped.qrgrom_dvenBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrlcomp.Caption := '';
  if relatorioPRO_COMP.AsString <> '' then
  qrlcomp.Caption := 'Composição';
end;

end.
