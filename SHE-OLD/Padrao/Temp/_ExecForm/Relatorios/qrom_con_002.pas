unit qrom_con_002;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg, math;

type
  Tqrprom_con_002 = class(TQuickRep)
    Relatorio: TIBQuery;
    QRBand10: TQRBand;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    qrlqtde: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape18: TQRShape;
    QRLabel31: TQRLabel;
    QRShape25: TQRShape;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRExpr7: TQRExpr;
    QRLabel11: TQRLabel;
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
    QRDBImage8: TQRDBImage;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    qrldcor: TQRLabel;
    qrlcomp: TQRLabel;
    QRExpr8: TQRExpr;
    TCadastro: TIBTransaction;
    QConsulta: TIBQuery;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    RelatorioID: TIntegerField;
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
    RelatorioROM_OBSE: TMemoField;
    RelatorioUSU_DUSU: TIBStringField;
    RelatorioROM_CREP: TIntegerField;
    RelatorioREP_FANT: TIBStringField;
    RelatorioROM_CCLI: TIntegerField;
    RelatorioCLI_FANT: TIBStringField;
    RelatorioCLI_RAZA: TIBStringField;
    RelatorioROM_CDET: TIBStringField;
    RelatorioROM_ITEM: TIBStringField;
    RelatorioPRO_CART: TIBStringField;
    RelatorioPRO_CPRO: TIBStringField;
    RelatorioPRO_COMP: TIBStringField;
    RelatorioROM_DCOR: TIBStringField;
    RelatorioROM_DPRO: TIBStringField;
    RelatorioROM_DUNI: TIBStringField;
    RelatorioROM_QTDE: TIBBCDField;
    RelatorioROM_QTPD: TIBBCDField;
    RelatorioROM_UNIT: TFloatField;
    RelatorioROM_TOTA: TIBBCDField;
    RelatorioPRO_INS1: TBlobField;
    RelatorioPRO_INS2: TBlobField;
    RelatorioPRO_INS3: TBlobField;
    RelatorioPRO_INS4: TBlobField;
    RelatorioPRO_INS5: TBlobField;
    RelatorioPRO_INS6: TBlobField;
    RelatorioPRO_INS7: TBlobField;
    RelatorioPRO_INS8: TBlobField;
    RelatorioPRO_METR: TIBBCDField;
    RelatorioPRO_PESO: TIBBCDField;
    RelatorioPRO_PSCN: TIBBCDField;
    RelatorioDGCP: TIBStringField;
    RelatorioROM_CPRO: TStringField;
    RelatorioROM_DCLI: TStringField;
    RelatorioROM_DUSU: TStringField;
    RelatorioROM_DREP: TStringField;
    RelatorioROM_REFE: TStringField;
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public
  end;

var
  qrprom_con_002: Tqrprom_con_002;

implementation

uses uPrincipal, bPrincipal;

{$R *.DFM}

procedure Tqrprom_con_002.RelatorioCalcFields(DataSet: TDataSet);
begin
  relatorioROM_REFE.Value := relatorioPRO_CART.AsString+' '+relatorioROM_DPRO.AsString;
  relatorioROM_CPRO.Value := relatorioPRO_CPRO.AsString+' '+relatorioDGCP.AsString;
  relatorioROM_DCLI.Value := oStrZero(relatorioROM_CCLI.AsInteger,5)+' - '+relatorioCLI_FANT.AsString;
  relatorioROM_DUSU.Value := oStrZero(relatorioROM_CVEN.AsInteger,5)+' - '+relatorioUSU_DUSU.AsString;
  relatorioROM_DREP.Value := oStrZero(relatorioROM_CREP.AsInteger,5)+' - '+relatorioREP_FANT.AsString;
end;

procedure Tqrprom_con_002.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  detalhe.Height := 14;
  if (relatorioPRO_COMP.AsString <> '') or (relatorioDGCP.AsString <> '') then
  detalhe.Height := 29;

  if (relatorioPRO_INS1.BlobSize > 0) and (relatorioPRO_INS6.BlobSize = 0) then
  detalhe.Height := 42 else
  if (relatorioPRO_INS1.BlobSize > 0) and (relatorioPRO_INS6.BlobSize > 0) then
  detalhe.Height := 65 else
  if (relatorioPRO_INS1.BlobSize > 0) and (relatorioPRO_INS8.BlobSize > 0) then
  detalhe.Height := 87;

  qrlcomp.Caption := '';
  if relatorioPRO_COMP.AsString <> '' then
  qrlcomp.Caption := 'Composição - '+relatorioPRO_COMP.AsString;

  qrldcor.Caption := '';
  if relatorioDGCP.AsString <> '' then
  qrldcor.Caption := 'DGCP - '+relatorioDGCP.AsString;
end;

procedure Tqrprom_con_002.QuickRepAfterPrint(Sender: TObject);
begin
  with FBird do
  try
    oOTransact(TFBEdicao);
    with SQLFBEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('SET    ROM_PPRN = 7,');
      SQL.Add('       ROM_UPRN = '''+RECUsuarios.Id+''',');
      SQL.Add('       ROM_TPRN = '''+formatDateTime('mm/dd/yy hh:mm:ss',now)+'''');
      SQL.Add('WHERE  ROM_CDRO = '''+RelatorioID.AsString+'''');
      Prepare;
      ExecQuery
    end;
  finally
    oCTransact(TFBEdicao);
  end;
end;

end.
