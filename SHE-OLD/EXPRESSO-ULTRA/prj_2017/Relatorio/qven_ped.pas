unit qven_ped;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBQuery, IBDatabase, DateUtils, jpeg, dialogs, IBStoredProc;

type
  Tqrpven_ped = class(TQuickRep)
    TituloVenda: TQRBand;
    ItemVenda: TQRSubDetail;
    CabecalhoVenda: TQRChildBand;
    TotalVenda: TQRChildBand;
    ven_efe: TIBQuery;
    consulta: TIBQuery;
    IBTra: TIBTransaction;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    qrldpr1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
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
    ven_efePRO_CART: TIBStringField;
    ven_efePRO_CPRO: TIBStringField;
    ven_efeID: TIntegerField;
    ven_efeROM_ITEM: TIBStringField;
    ven_efeROM_QTDE: TIBBCDField;
    ven_efeROM_TOTA: TIBBCDField;
    romanCLI_FANT: TIBStringField;
    romanREP_FANT: TIBStringField;
    romanPAG_DPAG: TIBStringField;
    ven_efePRO_DCOR: TIBStringField;
    romanROM_CDOC: TIntegerField;
    romanROM_CDNF: TIntegerField;
    romanROM_HROM: TTimeField;
    romanROM_DNFS: TDateField;
    romanROM_DEXP: TDateField;
    romanROM_HEXP: TTimeField;
    romanROM_CEXP: TIntegerField;
    romanROM_CDSC: TIBBCDField;
    qtitulo2: TQRBand;
    qsubtitulo2: TQRChildBand;
    QRShape5: TQRShape;
    qdetalhe2: TQRSubDetail;
    qsumario2: TQRChildBand;
    qrilogo2: TQRImage;
    qrlend3: TQRLabel;
    qrlend4: TQRLabel;
    qrlemai_site2: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    qrlfone2: TQRLabel;
    qrldfone2: TQRLabel;
    qrltitulo2: TQRLabel;
    QRShape10: TQRShape;
    QRShape14: TQRShape;
    qrlraza2: TQRLabel;
    QRLabel10: TQRLabel;
    ven_efePRO_DUNI: TIBStringField;
    QRDBText8: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText22: TQRDBText;
    romanROM_CDRD: TIntegerField;
    romanROM_CDCX: TIntegerField;
    romanROM_QTSP: TIBBCDField;
    romanROM_QTPD: TIBBCDField;
    romanROM_ADSC: TIBBCDField;
    romanROM_DESC: TStringField;
    ven_efeROM_DPRO: TIBStringField;
    ven_efeROM_DCOR: TIBStringField;
    romanROM_COMI: TIBBCDField;
    romanUSU_DUSU: TIBStringField;
    QRBand1: TQRBand;
    qrilogo: TQRImage;
    qrlraza: TQRLabel;
    qrlend1: TQRLabel;
    qrlend2: TQRLabel;
    qrlemai_site: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    qrlfone: TQRLabel;
    QRLabel1: TQRLabel;
    qrltitulo: TQRLabel;
    QRShape4: TQRShape;
    QRLabel34: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRLabel38: TQRLabel;
    romanROM_DPRD: TDateField;
    romanROM_CTNR: TIBStringField;
    romanROM_DEMB: TDateField;
    romanROM_DDES: TDateField;
    romanROM_CBAI: TIntegerField;
    romanROM_TBAI: TDateTimeField;
    romanROM_UPRN: TIntegerField;
    romanROM_PPRN: TSmallintField;
    romanROM_TPRN: TDateTimeField;
    ibSP: TIBStoredProc;
    ven_efeROM_UNIT: TFloatField;
    ven_efeDPRO: TStringField;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText16: TQRDBText;
    ven_efeROM_PREC: TFloatField;
    ven_efeROM_VDSC: TIBBCDField;
    qrdbROM_PREC: TQRDBText;
    qrlprc: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText12: TQRDBText;
    qrdbROM_PREC2: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    qrlprc2: TQRLabel;
    qrlrom_obse: TQRLabel;
    qrlrom_obse2: TQRLabel;
    ven_efeROM_OBSE: TMemoField;
    ven_efeROM_DUNI: TIBStringField;
    QRShape1: TQRShape;
    QRShape6: TQRShape;
    QRDBRichText1: TQRDBRichText;
    QRLabel11: TQRLabel;
    qrldesc: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel12: TQRLabel;
    qrlqtde: TQRLabel;
    qrdqtde: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    qrlcli: TQRLabel;
    qrlrep: TQRLabel;
    QRShape11: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText10: TQRDBText;
    qrlven: TQRLabel;
    QRLabel28: TQRLabel;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    QRLabel29: TQRLabel;
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
    QRDBText15: TQRDBText;
    QRShape12: TQRShape;
    qrlpagina: TQRLabel;
    QRDBText17: TQRDBText;
    qrdbROM_PDSC: TQRDBText;
    QRLabel71: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel75: TQRLabel;
    QRShape13: TQRShape;
    qrmemo1: TQRMemo;
    QRShape18: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRLabel76: TQRLabel;
    ladpa7: TQRLabel;
    ladpa8: TQRLabel;
    ladpa9: TQRLabel;
    lavpa10: TQRLabel;
    QRLabel31: TQRLabel;
    qrlpag: TQRLabel;
    qrlparc: TQRLabel;
    QRLabel32: TQRLabel;
    qrlrodape3: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText31: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel40: TQRLabel;
    QRShape20: TQRShape;
    QRShape15: TQRShape;
    QRDBRichText2: TQRDBRichText;
    QRLabel59: TQRLabel;
    qrldesc2: TQRLabel;
    QRDBText19: TQRDBText;
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
    QRShape27: TQRShape;
    QRLabel25: TQRLabel;
    qrlparc2: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel39: TQRLabel;
    qrlpag2: TQRLabel;
    QRLabel41: TQRLabel;
    qrlrodape4: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    procedure romanCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure ItemVendaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
     procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
     procedure carregaFoto2(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpven_ped: Tqrpven_ped;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpven_ped.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpven_ped.carregaFoto2(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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
    qrilogo2.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tqrpven_ped.romanCalcFields(DataSet: TDataSet);
begin
  romanROM_DESC.Value := formatfloat('#,0.00########',romanROM_PDSC.AsFloat);
  if romanROM_CDSC.AsFloat > 0 then
  romanROM_DESC.Value := romanROM_DESC.AsString+'+'+formatfloat('#,0.00########',romanROM_CDSC.AsFloat);
end;

procedure Tqrpven_ped.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if (romanROM_STPD.AsString = 'DEVOLUÇÃO') or (romanROM_STPD.AsString = 'ABATIMENTO') or (romanROM_STPD.AsString = 'SERVIÇO') then
  begin
    qrlqtde.Caption    := '';
    qrdqtde.DataField  := '';
    qrlqtde2.Caption   := '';
    qrdqtde2.DataField := '';
  end;
end;

procedure Tqrpven_ped.QuickRepAfterPrint(Sender: TObject);
begin
  if romanID.AsInteger > 0 then
     with FrmPrincipal do
     try
       oOTransact(TEdicao);

       with SQLEdicao do
       begin
         Close;
         SQL.Clear;
         SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
         SQL.Add('SET    ROM_PPRN = ROM_PPRN + 1,');
         SQL.Add('       ROM_UPRN = '''+RECUsuarios.ID+''',');
         SQL.Add('       ROM_TPRN = '''+formatDateTime('mm/dd/yy hh:mm:ss',now)+'''');
         SQL.Add('WHERE  ID       = '''+romanID.AsString+'''');
         ExecQuery;
       end;

       oCTransact(TEdicao);
       frmprincipal.Log_Eve('Vendas',LOWERCASE(romanROM_STPD.AsString),'Emissão de Pedido',romanROM_DERO.AsString,romanROM_DERO.AsString,romanROM_CCLI.AsString+' - '+LOWERCASE(romanCLI_FANT.AsString),'','');
     except
       oCTransact(TEdicao,ltRollback);
     end;
end;

procedure Tqrpven_ped.ItemVendaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrlrom_obse.Caption := '';
  qrlprc.Caption      := 'Preço Tabela (Item '+ven_efeROM_ITEM.AsString+')';
  qrlprc2.Caption     := qrlprc.Caption;

  ItemVenda.Height := 14;
  if (ven_efeROM_VDSC.AsFloat > 0) or (TRIM(ven_efeROM_OBSE.AsString) <> '') then
  ItemVenda.Height := 27;

  if TRIM(ven_efeROM_OBSE.AsString) <> '' then
  qrlrom_obse.Caption := 'Obs.: '+ TRIM(ven_efeROM_OBSE.AsString);

  if frmprincipal.parametrosPAR_NVIA.AsString = '2' then
  begin
    qdetalhe2.Height     := ItemVenda.Height;
    qrlrom_obse2.Caption := qrlrom_obse.Caption;
  end;

  if ven_efeROM_VDSC.AsFloat = 0 then
  begin
    qrdbROM_PREC.DataField  := '';
    qrdbROM_PREC2.DataField := '';
    qrlprc.Caption        := '';
    qrlprc2.Caption       := '';
  end;
end;

end.

