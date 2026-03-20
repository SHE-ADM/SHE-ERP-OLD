unit qcob_rom_ref;

interface

uses
  oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg, StrUtils;

type
  Tqrpcob_rom_ref = class(TQuickRep)
    QConsulta: TIBQuery;
    Relatorio: TIBQuery;
    QRBand8: TQRBand;
    qrgrom_dven: TQRGroup;
    QRDBText3: TQRDBText;
    qrgrom_drep: TQRGroup;
    QRBand9: TQRBand;
    QRLabel43: TQRLabel;
    QRExpr20: TQRExpr;
    QRExpr1: TQRExpr;
    qrlsub: TQRLabel;
    QRBand10: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    QRExpr2: TQRExpr;
    QRLabel32: TQRLabel;
    qrldesc: TQRLabel;
    QRDBText42: TQRDBText;
    QRLabel46: TQRLabel;
    qrlqtde: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText24: TQRDBText;
    qrdqtde: TQRDBText;
    QRLabel28: TQRLabel;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    qrlparc: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel14: TQRLabel;
    qrlpag: TQRLabel;
    qrlpagina: TQRLabel;
    QRShape6: TQRShape;
    QRShape24: TQRShape;
    QRLabel31: TQRLabel;
    QRShape25: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
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
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    qrlcli: TQRLabel;
    qrlrep: TQRLabel;
    qrlven: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape18: TQRShape;
    QRShape11: TQRShape;
    QRLabel29: TQRLabel;
    QRShape10: TQRShape;
    qrmemo1: TQRMemo;
    qrlqtrl: TQRLabel;
    TCadastro: TIBTransaction;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    RelatorioID: TIntegerField;
    RelatorioROM_CDOC: TIntegerField;
    RelatorioROM_CDPR: TIntegerField;
    RelatorioROM_CDPD: TIntegerField;
    RelatorioROM_CDRO: TIntegerField;
    RelatorioROM_CDRD: TIntegerField;
    RelatorioROM_CDNF: TIntegerField;
    RelatorioROM_CDBX: TIntegerField;
    RelatorioROM_CDCX: TIntegerField;
    RelatorioROM_DERO: TIBStringField;
    RelatorioROM_STPD: TIBStringField;
    RelatorioROM_STCO: TIBStringField;
    RelatorioROM_STFI: TIBStringField;
    RelatorioROM_DROM: TDateField;
    RelatorioROM_HROM: TTimeField;
    RelatorioROM_DBAI: TDateField;
    RelatorioROM_DCAN: TDateField;
    RelatorioROM_DNFS: TDateField;
    RelatorioROM_CCLI: TIntegerField;
    RelatorioROM_CVEN: TIntegerField;
    RelatorioROM_CREP: TIntegerField;
    RelatorioROM_CPAG: TIntegerField;
    RelatorioROM_QTVE: TIBBCDField;
    RelatorioROM_QTSP: TIBBCDField;
    RelatorioROM_QTPD: TIBBCDField;
    RelatorioROM_RLVE: TIntegerField;
    RelatorioROM_TSDE: TIBBCDField;
    RelatorioROM_TDSC: TIBStringField;
    RelatorioROM_PDSC: TIBBCDField;
    RelatorioROM_TCDE: TIBBCDField;
    RelatorioROM_CONC: TSmallintField;
    RelatorioROM_STA: TIBStringField;
    RelatorioROM_VNF: TIBBCDField;
    RelatorioROM_CTRA: TIntegerField;
    RelatorioROM_VIPI: TIBBCDField;
    RelatorioROM_OBSE: TMemoField;
    RelatorioROM_MFRT: TSmallintField;
    RelatorioROM_PSBR: TIBBCDField;
    RelatorioROM_PSLQ: TIBBCDField;
    RelatorioCLI_FANT: TIBStringField;
    RelatorioUSU_DUSU: TIBStringField;
    RelatorioREP_FANT: TIBStringField;
    RelatorioPAG_DPAG: TIBStringField;
    RelatorioPRO_CART: TIBStringField;
    RelatorioPRO_CPRO: TIBStringField;
    RelatorioID1: TIntegerField;
    RelatorioROM_ITEM: TIBStringField;
    RelatorioDESCRICAO: TIBStringField;
    RelatorioROM_QTDE: TIBBCDField;
    RelatorioROM_UNIT: TFloatField;
    RelatorioROM_TOTA: TIBBCDField;
    QRDVNF: TQRDBText;
    ChildBand1: TQRChildBand;
    QRShape4: TQRShape;
    QRLabel59: TQRLabel;
    qrldesc2: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel62: TQRLabel;
    qrlqtde2: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel73: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText25: TQRDBText;
    qrdqtde2: TQRDBText;
    QRShape20: TQRShape;
    QRDBRichText2: TQRDBRichText;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    qrlcli2: TQRLabel;
    qrlrep2: TQRLabel;
    QRLabel72: TQRLabel;
    qrlven2: TQRLabel;
    QRLabel69: TQRLabel;
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
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    qrmemo2: TQRMemo;
    QRShape19: TQRShape;
    qrlparc2: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel57: TQRLabel;
    qrlpag2: TQRLabel;
    qrlpagina2: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape27: TQRShape;
    QRShape5: TQRShape;
    qrlqtrl2: TQRLabel;
    QRDVNF2: TQRDBText;
    QRSysData2: TQRSysData;
    qrlrodape2: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public
  end;

var
  qrpcob_rom_ref: Tqrpcob_rom_ref;

implementation

uses bPrincipal;

{$R *.DFM}

procedure Tqrpcob_rom_ref.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if (relatorioROM_STPD.AsString = 'DEVOLUÇÃO') or (relatorioROM_STPD.AsString = 'ABATIMENTO') or (relatorioROM_STPD.AsString = 'SERVIÇO') then
  begin
    qrlqtde.Caption    := '';
    qrdqtde.DataField  := '';
    qrlqtde2.Caption   := '';
    qrdqtde2.DataField := '';
  end;

  QRDVNF.DataField  := IFThen(RelatorioROM_CDNF.AsInteger > 0,'ROM_VNF','ROM_TCDE');
  QRDVNF2.DataField := IFThen(RelatorioROM_CDNF.AsInteger > 0,'ROM_VNF','ROM_TCDE');
end;

procedure Tqrpcob_rom_ref.QuickRepAfterPrint(Sender: TObject);
begin
  if RelatorioID.AsInteger > 0 then
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
         SQL.Add('    LOG_PRN_CDEV = 9,');

         SQL.Add('LOG_PRN_IDEV = ''' + RECUsuarios.Id     + ''',');
         SQL.Add('LOG_PRN_IP   = ''' + RECParametros.IP   + ''',');
         SQL.Add('LOG_PRN_HOST = ''' + RECParametros.HOST + '''' );

         SQL.Add('WHERE ID = ''' + RelatorioID.AsString + '''');
         ExecQuery;

         { Pedido }
         Close;
         SQL.Clear;
         SQL.Add('UPDATE ' + oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3));
         SQL.Add('SET LOG_PRN_DTEV = CURRENT_TIMESTAMP,');
         SQL.Add('    LOG_PRN_CDEV = 9,');

         SQL.Add('LOG_PRN_IDEV = ''' + RECUsuarios.Id     + ''',');
         SQL.Add('LOG_PRN_IP   = ''' + RECParametros.IP   + ''',');
         SQL.Add('LOG_PRN_HOST = ''' + RECParametros.HOST + '''' );

         SQL.Add('WHERE CDRO = ''' + RelatorioID.AsString + '''');
         ExecQuery;
       end;
     finally
       oCTransact(TFBEdicao);
     end;
end;

end.
