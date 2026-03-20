unit qcob_ped_oca;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg, math;

type
  Tqrpcob_ped_oca = class(TQuickRep)
    TCadastro: TIBTransaction;
    consulta: TIBQuery;
    relatorio: TIBQuery;
    QRBand8: TQRBand;
    QRDBText3: TQRDBText;
    QRBand9: TQRBand;
    QRLabel43: TQRLabel;
    QRExpr20: TQRExpr;
    QRExpr1: TQRExpr;
    qrlsub: TQRLabel;
    QRBand10: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    QRShape10: TQRShape;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    qrlparc: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRDBText23: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    qrlcli: TQRLabel;
    qrlrep: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel29: TQRLabel;
    qrlven: TQRLabel;
    QRLabel61: TQRLabel;
    qrlpag: TQRLabel;
    qrlpagina: TQRLabel;
    QRShape6: TQRShape;
    QRLabel26: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText24: TQRDBText;
    QRExpr2: TQRExpr;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRLabel11: TQRLabel;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
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
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    relatorioC_PRODUTO: TStringField;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText5: TQRDBText;
    relatorioC_TOTAL: TFloatField;
    relatorioROM_QTPD1: TIBBCDField;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRDBText7: TQRDBText;
    QRExpr12: TQRExpr;
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
    relatorioROM_DSEP: TIBStringField;
    relatorioROM_DERD: TIBStringField;
    relatorioROM_RLPD: TIntegerField;
    relatorioROM_TSRO: TIBBCDField;
    relatorioROM_TCRO: TIBBCDField;
    relatorioROM_CTRA: TIntegerField;
    relatorioROM_VIPI: TIBBCDField;
    relatorioROM_VNF: TIBBCDField;
    relatorioROM_OBSE: TMemoField;
    relatorioROM_ENVWEB: TSmallintField;
    relatorioROM_MFRT: TSmallintField;
    relatorioROM_PSBR: TIBBCDField;
    relatorioROM_PSLQ: TIBBCDField;
    relatorioROM_DTNF: TDateTimeField;
    relatorioROM_DTST: TDateTimeField;
    relatorioROM_CDLE: TLargeintField;
    relatorioROM_DTCA: TDateTimeField;
    relatorioROM_DEB2B: TIBStringField;
    relatorioROM_DTB2B: TDateTimeField;
    relatorioCLI_FANT: TIBStringField;
    relatorioUSU_DUSU: TIBStringField;
    relatorioREP_FANT: TIBStringField;
    relatorioPAG_DPAG: TIBStringField;
    relatorioPRO_CART: TIBStringField;
    relatorioPRO_CPRO: TIBStringField;
    relatorioID1: TIntegerField;
    relatorioROM_ITEM: TIBStringField;
    relatorioROM_DPRO: TIBStringField;
    relatorioROM_QTDE: TIBBCDField;
    relatorioROM_UNIT: TFloatField;
    relatorioROM_TOTA: TIBBCDField;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    relatorioDGCP: TIBStringField;
    relatorioROM_DUNI: TIBStringField;
    relatorioIDEP: TSmallintField;
    relatorioQTDE: TFloatField;
    relatorioTOTA: TFloatField;
    relatorioPIPI: TIBBCDField;
    relatorioIDPK: TLargeintField;
    procedure relatorioCalcFields(DataSet: TDataSet);
    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public
  end;

var
  qrpcob_ped_oca: Tqrpcob_ped_oca;

implementation

uses bPrincipal;

{$R *.DFM}

procedure Tqrpcob_ped_oca.relatorioCalcFields(DataSet: TDataSet);
begin
  relatorioQTDE.Value := relatorioROM_QTDE.AsFloat;
  if relatorioROM_QTPD1.AsFloat > 0 then
  relatorioQTDE.Value := relatorioROM_QTPD1.AsFloat;

  relatorioC_PRODUTO.Value := relatorioPRO_CPRO.AsString+' - '+relatorioROM_DPRO.AsString+' '+relatorioDGCP.AsString;
  relatorioTOTA.Value      := RoundTo(relatorioROM_QTPD1.AsFloat*relatorioROM_UNIT.AsFloat,-2);
  relatorioC_TOTAL.Value   := relatorioTOTA.AsFloat;
end;

procedure Tqrpcob_ped_oca.QuickRepAfterPrint(Sender: TObject);
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
         SQL.Add('    LOG_PRN_CDEV = 6,');

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
