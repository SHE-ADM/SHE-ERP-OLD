unit qcob_ped;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg, IBStoredProc, IBSQL, math, StrUtils;

type
  Tqrpcob_ped = class(TQuickRep)
    QConsulta: TIBQuery;
    Relatorio: TIBQuery;
    QRBand8: TQRBand;
    QRBand9: TQRBand;
    QRBand10: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    qrlrom_obse: TQRLabel;
    qrdbdrep: TQRDBText;
    qrdbcomp: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape8: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBRichText1: TQRDBRichText;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    qrlrep: TQRLabel;
    QRShape5: TQRShape;
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
    qrlpagina: TQRLabel;
    QRLabel75: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape13: TQRShape;
    QRLabel76: TQRLabel;
    ladpa7: TQRLabel;
    ladpa8: TQRLabel;
    ladpa9: TQRLabel;
    lavpa10: TQRLabel;
    QRLabel6: TQRLabel;
    qrlpag: TQRLabel;
    qrlparc: TQRLabel;
    QRLabel19: TQRLabel;
    qrlrodape3: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel18: TQRLabel;
    TCadastro: TIBTransaction;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    RelatorioID: TIntegerField;
    RelatorioROM_DERO: TIBStringField;
    RelatorioROM_DROM: TDateField;
    RelatorioROM_CDRO: TIntegerField;
    RelatorioROM_CDNF: TIntegerField;
    RelatorioROM_DNFS: TDateField;
    RelatorioROM_CCLI: TIntegerField;
    RelatorioCLI_FANT: TIBStringField;
    RelatorioCLI_RAZA: TIBStringField;
    RelatorioROM_CVEN: TIntegerField;
    RelatorioDECV: TIBStringField;
    RelatorioROM_CREP: TIntegerField;
    RelatorioREP_FANT: TIBStringField;
    RelatorioROM_TSDE: TIBBCDField;
    RelatorioROM_TDSC: TIBStringField;
    RelatorioROM_PDSC: TIBBCDField;
    RelatorioROM_VDSC: TIBBCDField;
    RelatorioROM_TCDE: TIBBCDField;
    RelatorioROM_ITEM: TIBStringField;
    RelatorioIDCP: TIntegerField;
    RelatorioPRO_CART: TIBStringField;
    RelatorioPRO_CPRO: TIBStringField;
    RelatorioROM_DPRO: TIBStringField;
    RelatorioPRO_COMP: TIBStringField;
    RelatorioDGCP: TIBStringField;
    RelatorioDECP: TIBStringField;
    RelatorioROM_DUNI: TIBStringField;
    RelatorioROM_QTDE: TIBBCDField;
    RelatorioROM_QTRL: TIntegerField;
    RelatorioROM_UNIT: TFloatField;
    RelatorioROM_TOTA: TIBBCDField;
    RelatorioROM_STPD: TIBStringField;
    RelatorioROM_STCO: TIBStringField;
    RelatorioROM_CONC: TSmallintField;
    RelatorioROM_CPAG: TIntegerField;
    RelatorioPAG_DPAG: TIBStringField;
    RelatorioPAG_PARC: TSmallintField;
    RelatorioROM_OBSE: TMemoField;
    QRLDEPV: TQRLabel;
    QRDDEPV: TQRDBText;
    QRDDTPV: TQRDBText;
    QRDCDNF: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText3: TQRDBText;
    qrdbROM_PDSC: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText14: TQRDBText;
    QREITEM: TQRExpr;
    QRShape1: TQRShape;
    QRLPEDIDO: TQRLabel;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLDTPV: TQRLabel;
    QRLDTNF: TQRLabel;
    QRDDTNF: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape7: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape6: TQRShape;
    QRLabel13: TQRLabel;
    QRDBText6: TQRDBText;
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
  end;

var
  qrpcob_ped: Tqrpcob_ped;

implementation

uses uPrincipal, bPrincipal;

{$R *.DFM}

procedure Tqrpcob_ped.QuickRepAfterPrint(Sender: TObject);
begin
  if RelatorioID.AsInteger > 0 then
     with FBird do
     try
       oOTransact(TFBEdicao);
       with SQLFBEdicao do
       begin
         Close;
         SQL.Clear;
         SQL.Add('UPDATE ' + oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3));
         SQL.Add('SET LOG_PRN_DTEV = CURRENT_TIMESTAMP,');
         SQL.Add('    LOG_PRN_CDEV = 2,');

         SQL.Add('LOG_PRN_IDEV = ''' + RECUsuarios.Id     + ''',');
         SQL.Add('LOG_PRN_IP   = ''' + RECParametros.IP   + ''',');
         SQL.Add('LOG_PRN_HOST = ''' + RECParametros.HOST + '''' );

         SQL.Add('WHERE ID = ''' + RelatorioID.AsString + '''');
         ExecQuery;
       end;
     finally
       oCTransact(TFBEdicao);
     end;
end;

procedure Tqrpcob_ped.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  AField: String;
begin
  AField := IFThen(Length(RelatorioROM_CDNF.AsString) > Length(RelatorioROM_DERO.AsString),RelatorioROM_CDNF.AsString,
                                                                                           RelatorioROM_DERO.AsString);

  Case Length(AField) of
       1..3: QRDDEPV.Width   := 30;
       4..5: QRDDEPV.Width   := 40;
       6..7: QRDDEPV.Width   := 45;
       8..9: QRDDEPV.Width   := 50;
       Else QRDDEPV.AutoSize := True;
  end;

  if not oBSoNumero(AField) then QRDDEPV.Width := QRDDEPV.Width + 10;

  { Pedido }
  QRLDTPV.Left  := QRDDEPV.Left + QRDDEPV.Width + 1;
  QRDDTPV.Left  := QRLDTPV.Left + QRLDTPV.Width + 1;

  { Nota Fiscal }
  QRDCDNF.Width := QRDDEPV.Width;
  QRDCDNF.Left  := QRDDEPV.Left;
  QRLDTNF.Left  := QRLDTPV.Left;
  QRDDTNF.Left  := QRDDTPV.Left; 

  { Item }
  QREITEM.Mask  := oStrZero(0,Length(AField));
  QREITEM.Width := QRDDEPV.Width;
  QREITEM.Left  := QRDDEPV.Left;
end;

end.
