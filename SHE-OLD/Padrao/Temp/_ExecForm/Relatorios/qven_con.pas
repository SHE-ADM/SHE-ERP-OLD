unit qven_con;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg;

type
  Tqrpven_con = class(TQuickRep)
    Relatorio: TIBQuery;
    RelatorioROM_DERO: TIBStringField;
    RelatorioROM_CDNF: TIntegerField;
    RelatorioROM_DROM: TDateField;
    RelatorioROM_DNFS: TDateField;
    RelatorioROM_CONC: TSmallintField;
    RelatorioROM_TCDE: TIBBCDField;
    RelatorioROM_TSDE: TIBBCDField;
    RelatorioROM_STCO: TIBStringField;
    RelatorioROM_CPAG: TIntegerField;
    RelatorioPAG_DPAG: TIBStringField;
    RelatorioROM_CVEN: TIntegerField;
    RelatorioROM_CREP: TIntegerField;
    RelatorioREP_FANT: TIBStringField;
    RelatorioROM_CCLI: TIntegerField;
    RelatorioCLI_FANT: TIBStringField;
    RelatorioCLI_RAZA: TIBStringField;
    RelatorioROM_CDET: TIBStringField;
    RelatorioROM_ITEM: TIBStringField;
    RelatorioPRO_CART: TIBStringField;
    RelatorioPRO_CPRO: TIBStringField;
    RelatorioROM_DPRO: TIBStringField;
    RelatorioROM_DUNI: TIBStringField;
    RelatorioROM_QTDE: TIBBCDField;
    RelatorioROM_UNIT: TFloatField;
    RelatorioROM_TOTA: TIBBCDField;
    RelatorioROM_UNID: TStringField;
    RelatorioROM_REFE: TStringField;
    RelatorioROM_CPRO: TStringField;
    RelatorioPRO_COMP: TIBStringField;
    QRBand10: TQRBand;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    qrlqtde: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel8: TQRLabel;
    qrlcdnf: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel61: TQRLabel;
    qrmemo1: TQRMemo;
    QRDBText7: TQRDBText;
    qrlcdro: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    RelatorioROM_DCLI: TStringField;
    RelatorioROM_DUSU: TStringField;
    RelatorioROM_DREP: TStringField;
    RelatorioROM_OBSE: TMemoField;
    QRExpr7: TQRExpr;
    qrlqtrl: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    detalhe: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBImage1: TQRDBImage;
    QRDBImage2: TQRDBImage;
    QRDBImage3: TQRDBImage;
    QRDBImage4: TQRDBImage;
    QRDBImage5: TQRDBImage;
    QRDBImage6: TQRDBImage;
    QRDBImage7: TQRDBImage;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    RelatorioROM_QUANT: TStringField;
    RelatorioROM_QTRL: TIntegerField;
    qreqtrl: TQRExpr;
    RelatorioROM_CDRO: TIntegerField;
    QRLabel3: TQRLabel;
    QConsulta: TIBQuery;
    TCadastro: TIBTransaction;
    RelatorioID: TIntegerField;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    RelatorioDGCP: TIBStringField;
    RelatorioDECV: TIBStringField;
    RelatorioDESCRICAO: TIBStringField;
    RelatorioROM_QTPD: TIBBCDField;
    RelatorioROM_RLPD: TIntegerField;
    QRDBText3: TQRDBText;
    QRDBText11: TQRDBText;
    RelatorioILA_BMP1: TBlobField;
    RelatorioILA_BMP2: TBlobField;
    RelatorioILA_BMP3: TBlobField;
    RelatorioILA_BMP4: TBlobField;
    RelatorioILA_BMP5: TBlobField;
    RelatorioILA_BMP6: TBlobField;
    RelatorioILA_BMP7: TBlobField;
    RelatorioILA_BMP8: TBlobField;
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public
  end;

var
  qrpven_con: Tqrpven_con;

implementation

uses uPrincipal, bPrincipal;

{$R *.DFM}

procedure Tqrpven_con.RelatorioCalcFields(DataSet: TDataSet);
begin
  relatorioROM_REFE.Value  := relatorioPRO_CART.AsString+' '+relatorioROM_DPRO.AsString;
  relatorioROM_CPRO.Value  := relatorioPRO_CPRO.AsString+' '+relatorioDGCP.AsString;
  relatorioROM_DCLI.Value  := oStrZero(relatorioROM_CCLI.AsInteger,5)+' - '+relatorioCLI_FANT.AsString;
  relatorioROM_DUSU.Value  := oStrZero(relatorioROM_CVEN.AsInteger,5)+' - '+relatorioDECV.AsString;
  relatorioROM_DREP.Value  := oStrZero(relatorioROM_CREP.AsInteger,5)+' - '+relatorioREP_FANT.AsString;
  relatorioROM_QUANT.Value := formatfloat('#,0.00',relatorioROM_QTDE.AsFloat);
end;

procedure Tqrpven_con.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  detalhe.Height := 14;

  if (relatorioPRO_COMP.AsString <> '') or (relatorioDGCP.AsString <> '') then
      detalhe.Height := 30;

  if relatorioILA_BMP1.BlobSize > 0 then
     detalhe.Height := 50;
end;

procedure Tqrpven_con.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrlqtrl.Caption    := '';
  qreqtrl.Expression := '';

  if relatorioROM_CDRO.AsInteger = 0 then
  qrlcdro.Caption := '';

  if relatorioROM_CDNF.AsInteger = 0 then
  qrlcdnf.Caption := '';
end;

procedure Tqrpven_con.QuickRepAfterPrint(Sender: TObject);
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
         SQL.Add('    LOG_PRN_CDEV = 3,');

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

end.
