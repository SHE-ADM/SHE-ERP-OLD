unit qven_ped_abc;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, DateUtils, jpeg, dialogs, IBStoredProc;

type
  Tqrpven_ped_abc = class(TQuickRep)
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
    ven_efePRO_DUNI: TIBStringField;
    QRDBText8: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText22: TQRDBText;
    romanROM_CDRD: TIntegerField;
    romanROM_CDCX: TIntegerField;
    romanROM_QTSP: TIBBCDField;
    romanROM_QTPD: TIBBCDField;
    romanROM_ADSC: TIBBCDField;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    qrlparc: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    lavpa1: TQRLabel;
    lavpa3: TQRLabel;
    ladpa3: TQRLabel;
    lavpa5: TQRLabel;
    ladpa5: TQRLabel;
    ladpa1: TQRLabel;
    ladpa7: TQRLabel;
    lavpa7: TQRLabel;
    lavpa2: TQRLabel;
    ladpa2: TQRLabel;
    ladpa4: TQRLabel;
    lavpa4: TQRLabel;
    lavpa6: TQRLabel;
    ladpa6: TQRLabel;
    ladpa8: TQRLabel;
    lavpa8: TQRLabel;
    lavpa9: TQRLabel;
    ladpa9: TQRLabel;
    lavpa10: TQRLabel;
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
    QRLabel32: TQRLabel;
    qrldesc: TQRLabel;
    QRDBText42: TQRDBText;
    QRLabel46: TQRLabel;
    qrlqtde: TQRLabel;
    qrdqtde: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText7: TQRDBText;
    qrlpag: TQRLabel;
    qrlpagina: TQRLabel;
    QRDBText10: TQRDBText;
    romanROM_DESC: TStringField;
    QRLabel26: TQRLabel;
    QRDBText31: TQRDBText;
    ven_efeROM_DPRO: TIBStringField;
    ven_efeROM_DCOR: TIBStringField;
    romanROM_COMI: TIBBCDField;
    romanUSU_DUSU: TIBStringField;
    QRBand1: TQRBand;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    qrilogo: TQRImage;
    qrlcli: TQRLabel;
    qrlrep: TQRLabel;
    QRShape3: TQRShape;
    qrltitulo: TQRLabel;
    QRShape4: TQRShape;
    QRLabel28: TQRLabel;
    QRShape1: TQRShape;
    QRShape6: TQRShape;
    QRShape11: TQRShape;
    QRLabel29: TQRLabel;
    QRShape13: TQRShape;
    qrmemo1: TQRMemo;
    QRShape24: TQRShape;
    QRLabel31: TQRLabel;
    QRShape25: TQRShape;
    QRLabel34: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel36: TQRLabel;
    romanROM_DPRD: TDateField;
    romanROM_CTNR: TIBStringField;
    romanROM_DEMB: TDateField;
    romanROM_DDES: TDateField;
    romanROM_CBAI: TIntegerField;
    romanROM_TBAI: TDateTimeField;
    qrlrodape3: TQRLabel;
    romanROM_UPRN: TIntegerField;
    romanROM_PPRN: TSmallintField;
    romanROM_TPRN: TDateTimeField;
    ibSP: TIBStoredProc;
    ven_efeROM_UNIT: TFloatField;
    ven_efeDPRO: TStringField;
    ven_efeROM_PREC: TFloatField;
    ven_efeROM_VDSC: TIBBCDField;
    qrdbROM_PREC: TQRDBText;
    qrlprc: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText33: TQRDBText;
    qrlrom_obse: TQRLabel;
    ven_efeROM_OBSE: TMemoField;
    QRShape12: TQRShape;
    romanROM_VFRT: TIBBCDField;
    romanROM_DTRA: TIBStringField;
    romanCLI_RAZA: TIBStringField;
    ven_efeROM_DUNI: TIBStringField;
    qrlend: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel1: TQRLabel;
    procedure romanCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure ven_efeCalcFields(DataSet: TDataSet);
    procedure ItemVendaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
     procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpven_ped_abc: Tqrpven_ped_abc;

implementation

uses p_funcoes, uPrincipal;

{$R *.DFM}

procedure Tqrpven_ped_abc.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpven_ped_abc.romanCalcFields(DataSet: TDataSet);
begin
  romanROM_DESC.Value := formatfloat('#,0.00########',romanROM_PDSC.AsFloat);
  if romanROM_CDSC.AsFloat > 0 then
  romanROM_DESC.Value := romanROM_DESC.AsString+'+'+formatfloat('#,0.00########',romanROM_CDSC.AsFloat);
end;

procedure Tqrpven_ped_abc.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if (romanROM_STPD.AsString = 'DEVOLUÇÃO') or (romanROM_STPD.AsString = 'ABATIMENTO') or (romanROM_STPD.AsString = 'SERVIÇO') then
  begin
    qrlqtde.Caption    := '';
    qrdqtde.DataField  := '';
  end;

  if frmprincipal.parametrosPAR_REND.AsString = '1' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT CLI_TLOV,CLI_LOGV,CLI_NUMV,CLI_COMV,CLI_CEPV,CLI_BAIV,CLI_CIDV,CLI_ESTV,');
    SQL.Add('       CLI_TLOG,CLI_LOGR,CLI_NUME,CLI_COMP,CLI_CEP ,CLI_BAI ,CLI_CIDV,CLI_ESTA');
    SQL.Add('FROM   CAD_CLI');
    SQL.Add('WHERE  ID = '''+romanROM_CCLI.AsString+'''');
    Open;

    qrlend.Caption := '';
    if (fields[0].AsString <> '') and (fields[1].AsString <> '') and (fields[2].AsString <> '') then
    begin
      qrlend.Caption := 'Entrega: '+fields[0].AsString+' '+fields[1].AsString+', '+fields[2].AsString+' '+fields[3].AsString+' Cep '+fields[4].AsString+' '+fields[5].AsString+' '+fields[6].AsString+' '+fields[7].AsString;
    end else
    begin
      if (fields[8].AsString <> '') and (fields[9].AsString <> '') and (fields[10].AsString <> '') then
      begin
        qrlend.Caption := 'Entrega: '+fields[8].AsString+' '+fields[9].AsString+', '+fields[10].AsString+' '+fields[11].AsString+' Cep '+fields[12].AsString+' '+fields[13].AsString+' '+fields[14].AsString+' '+fields[15].AsString;
      end;
    end;
  end;
end;

procedure Tqrpven_ped_abc.QuickRepAfterPrint(Sender: TObject);
begin
  with frmprincipal.sp_sql do
  begin
    ibSP.StoredProcName := 'SP_SQL';

    SQL.Clear;
    SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('SET    ROM_PPRN = ROM_PPRN + 1,');
    SQL.Add('       ROM_UPRN = '''+frmprincipal.cad_usuUSU_CUSU.AsString+''',');
    SQL.Add('       ROM_TPRN = '''+formatDateTime('mm/dd/yy hh:mm:ss',now)+'''');
    SQL.Add('WHERE  ID       = '''+romanID.AsString+'''');

    ibSP.Prepare;
    ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
    ibSP.ExecProc;
  end;
  frmprincipal.Log_Eve('Vendas',LOWERCASE(romanROM_STPD.AsString),'Emissão de Pedido',romanROM_DERO.AsString,romanROM_DERO.AsString,romanROM_CCLI.AsString+' - '+LOWERCASE(romanCLI_FANT.AsString),'','');
  IBTra.CommitRetaining;
end;

procedure Tqrpven_ped_abc.ven_efeCalcFields(DataSet: TDataSet);
begin
  ven_efeDPRO.Value := ven_efeROM_DPRO.AsString;
  if ven_efeROM_DCOR.AsString <> '' then
  ven_efeDPRO.Value := ven_efeROM_DCOR.AsString+' - '+ven_efeROM_DPRO.AsString;
end;

procedure Tqrpven_ped_abc.ItemVendaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrlrom_obse.Caption := '';
  qrlprc.Caption      := 'Preço Tabela (Item '+ven_efeROM_ITEM.AsString+')';

  ItemVenda.Height := 13;
  if (ven_efeROM_VDSC.AsFloat > 0) or (TRIM(ven_efeROM_OBSE.AsString) <> '') then
  ItemVenda.Height := 30;

  qrlrom_obse.Lines.Clear;
  if TRIM(ven_efeROM_OBSE.AsString) <> '' then
  qrlrom_obse.Lines.Add('Obs.: '+ TRIM(ven_efeROM_OBSE.AsString));

  if ven_efeROM_VDSC.AsFloat = 0 then
  begin
    qrdbROM_PREC.DataField  := '';
    qrlprc.Caption        := '';
  end;
end;

end.

