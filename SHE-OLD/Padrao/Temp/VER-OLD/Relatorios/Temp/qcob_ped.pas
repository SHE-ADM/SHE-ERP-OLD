unit qcob_ped;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg, IBStoredProc, IBSQL;

type
  Tqrpcob_ped = class(TQuickRep)
    QConsulta: TIBQuery;
    Relatorio: TIBQuery;
    QRBDetalhe: TQRBand;
    QRBSubTotal: TQRBand;
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
    QRShape20: TQRShape;
    QRShape15: TQRShape;
    QRDBRichText2: TQRDBRichText;
    QRLabel59: TQRLabel;
    qrldesc2: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel62: TQRLabel;
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
    QRShape26: TQRShape;
    QRShape22: TQRShape;
    qrdbdrep: TQRDBText;
    qrdbcomp: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel9: TQRLabel;
    qrlcomp: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText12: TQRDBText;
    QRShape8: TQRShape;
    QRShape12: TQRShape;
    QRShape7: TQRShape;
    QRLabel4: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBRichText1: TQRDBRichText;
    QRDBText3: TQRDBText;
    QRLabel11: TQRLabel;
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
    QRDITEM: TQRDBText;
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
    QRDBText16: TQRDBText;
    QRLabel75: TQRLabel;
    QRShape9: TQRShape;
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
    QRLabel12: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel24: TQRLabel;
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
    RelatorioROM_CONC: TSmallintField;
    RelatorioROM_TSDE: TIBBCDField;
    RelatorioROM_TDSC: TIBStringField;
    RelatorioROM_PDSC: TIBBCDField;
    RelatorioROM_VDSC: TIBBCDField;
    RelatorioROM_TCDE: TIBBCDField;
    RelatorioROM_STPD: TIBStringField;
    RelatorioROM_STCO: TIBStringField;
    RelatorioROM_CPAG: TIntegerField;
    RelatorioPAG_DPAG: TIBStringField;
    RelatorioPAG_PARC: TSmallintField;
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
    RelatorioROM_OBSE: TMemoField;
    QRDBText11: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel10: TQRLabel;
    procedure QuickRepAfterPrint(Sender: TObject);
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
  with FBird do
  try
    oOTransact(TFBEdicao);
    with SQLFBEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('SET    ROM_PPRN = 2,');
      SQL.Add('       ROM_UPRN = '''+RECUsuarios.Id+''',');
      SQL.Add('       ROM_TPRN = '''+formatDateTime('mm/dd/yy hh:mm:ss',now)+'''');
      SQL.Add('WHERE  ID       = '''+RelatorioID.AsString+'''');
      Prepare;
      ExecQuery
    end;
  finally
    oCTransact(TFBEdicao);
  end;
end;

end.
