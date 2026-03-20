unit qcob_rom;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, DateUtils, jpeg, StrUtils;

type
  Tqrpcob_rom = class(TQuickRep)
    TituloVenda: TQRBand;
    ItemVenda: TQRSubDetail;
    CabecalhoVenda: TQRChildBand;
    TotalVenda: TQRChildBand;
    ven_efe: TIBQuery;
    QConsulta: TIBQuery;
    QRDBText1: TQRDBText;
    QRDBText39: TQRDBText;
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
    romanCLI_FANT: TIBStringField;
    romanREP_FANT: TIBStringField;
    romanPAG_DPAG: TIBStringField;
    romanROM_CDOC: TIntegerField;
    romanROM_CDNF: TIntegerField;
    romanROM_CDCX: TSmallintField;
    romanROM_HROM: TTimeField;
    romanROM_DNFS: TDateField;
    romanROM_DEXP: TDateField;
    romanROM_HEXP: TTimeField;
    romanROM_CEXP: TIntegerField;
    romanROM_CDSC: TIBBCDField;
    QRDBText8: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel32: TQRLabel;
    qrldesc: TQRLabel;
    QRDBText42: TQRDBText;
    QRLabel46: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel22: TQRLabel;
    romanROM_DESC: TStringField;
    QRDBText15: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText24: TQRDBText;
    romanROM_CDRD: TIntegerField;
    romanROM_QTSP: TIBBCDField;
    romanROM_QTPD: TIBBCDField;
    romanROM_ADSC: TIBBCDField;
    romanROM_COMI: TIBBCDField;
    romanUSU_DUSU: TIBStringField;
    QRDBText10: TQRDBText;
    QRLabel28: TQRLabel;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    qrlparc: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel13: TQRLabel;
    qrlpag: TQRLabel;
    qrlpagina: TQRLabel;
    QRShape6: TQRShape;
    QRShape24: TQRShape;
    QRLabel31: TQRLabel;
    QRShape25: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
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
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    qrlcli: TQRLabel;
    qrlrep: TQRLabel;
    qrlven: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape18: TQRShape;
    QRShape11: TQRShape;
    QRLabel29: TQRLabel;
    QRShape10: TQRShape;
    QRDVNF: TQRDBText;
    TCadastro: TIBTransaction;
    romanROM_DPRD: TDateField;
    romanROM_CTNR: TIBStringField;
    romanROM_DEMB: TDateField;
    romanROM_DDES: TDateField;
    romanROM_CBAI: TIntegerField;
    romanROM_TBAI: TDateTimeField;
    romanROM_UPRN: TIntegerField;
    romanROM_PPRN: TSmallintField;
    romanROM_TPRN: TDateTimeField;
    romanROM_VFRT: TIBBCDField;
    romanROM_DTRA: TIBStringField;
    romanROM_RLPD: TIntegerField;
    romanROM_VPROD: TIBBCDField;
    romanROM_VNF: TIBBCDField;
    romanROM_CTRA: TIntegerField;
    QRDBText2: TQRDBText;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRMINFADCAD: TQRMemo;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    ven_efePRO_CART: TIBStringField;
    ven_efePRO_CPRO: TIBStringField;
    ven_efeDESCRICAO: TIBStringField;
    ven_efeUCOM: TIBStringField;
    ven_efeQTDE: TIBBCDField;
    ven_efeQTRL: TLargeintField;
    ven_efeVUCOM: TFloatField;
    ven_efeTOTAL: TIBBCDField;
    romanVIPI: TIBBCDField;
    romanVST: TIBBCDField;
    QRDVIPI: TQRDBText;
    QRDVST: TQRDBText;
    QRLVIPI: TQRLabel;
    QRLVST: TQRLabel;
    romanFAPD: TSmallintField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure romanCalcFields(DataSet: TDataSet);
    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public
  end;

var
  qrpcob_rom: Tqrpcob_rom;

implementation

uses bPrincipal;

{$R *.DFM}

procedure Tqrpcob_rom.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  QRDVNF.DataField := IFThen(romanROM_CDNF.AsInteger > 0,'ROM_VNF','ROM_TCDE');
  QRLVIPI.Enabled  := ((romanVIPI.AsFloat > 0) or (romanVST.AsFloat > 0)) and ((romanROM_CONC.AsInteger > 1) or (POS(LEFTSTR(romanROM_STCO.AsString,1),'BD') = 0));
  QRDVIPI.Enabled  := QRLVIPI.Enabled;
  QRLVST.Enabled   := QRLVIPI.Enabled;
  QRDVST.Enabled   := QRLVIPI.Enabled;

  if romanVIPI.AsFloat > 9999 then
     QRDVIPI.Width := 60 else
  if romanVIPI.AsFloat > 999 then
     QRDVIPI.Width := 52 else
     QRDVIPI.Width := 42;
     QRDVST.Width  := QRDVIPI.Width;

  QRDVIPI.Left := QRLVIPI.Left + QRLVIPI.Width;
  QRDVST.Left  := QRDVIPI.Left;
end;

procedure Tqrpcob_rom.romanCalcFields(DataSet: TDataSet);
begin
  romanROM_DESC.Value := formatfloat('#,0.00',romanROM_PDSC.AsFloat);
end;

procedure Tqrpcob_rom.QuickRepAfterPrint(Sender: TObject);
begin
  if romanID.AsInteger > 0 then
     with FBird do
     try
       oOTransact(TFBEdicao);
       with SQLFBEdicao do
       begin
         { Romaneio }
         Close;
         SQL.Clear;
         SQL.Add('UPDATE ' + oREPZero('ROM_CAB','_',RECParametros.EP_ID,3));
         SQL.Add('SET LOG_PRN_DTEV = CURRENT_TIMESTAMP,');
         SQL.Add('    LOG_PRN_CDEV = 8,');

         SQL.Add('LOG_PRN_IDEV = ''' + RECUsuarios.Id     + ''',');
         SQL.Add('LOG_PRN_IP   = ''' + RECParametros.IP   + ''',');
         SQL.Add('LOG_PRN_HOST = ''' + RECParametros.HOST + '''' );

         SQL.Add('WHERE ID = ''' + romanID.AsString + '''');
         ExecQuery;

         { Pedido }
         Close;
         SQL.Clear;
         SQL.Add('UPDATE ' + oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3));
         SQL.Add('SET LOG_PRN_DTEV = CURRENT_TIMESTAMP,');
         SQL.Add('    LOG_PRN_CDEV = 8,');

         SQL.Add('LOG_PRN_IDEV = ''' + RECUsuarios.Id     + ''',');
         SQL.Add('LOG_PRN_IP   = ''' + RECParametros.IP   + ''',');
         SQL.Add('LOG_PRN_HOST = ''' + RECParametros.HOST + '''' );

         SQL.Add('WHERE CDRO = ''' + romanID.AsString + '''');
         ExecQuery;
       end;
     finally
       oCTransact(TFBEdicao);
     end;
end;

end.

