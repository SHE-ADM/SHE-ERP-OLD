unit qven_ped;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls, math, strutils,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, DateUtils, jpeg, dialogs, IBStoredProc, IBSQL;

type
  Tqrpven_ped = class(TQuickRep)
    TituloVenda: TQRBand;
    ItemVenda: TQRSubDetail;
    CabecalhoVenda: TQRChildBand;
    TotalVenda: TQRChildBand;
    ven_efe: TIBQuery;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRDSKU: TQRDBText;
    QRDITEM: TQRDBText;
    QRDVPRC_COM: TQRDBText;
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
    romanROM_HROM: TTimeField;
    romanROM_DNFS: TDateField;
    romanROM_DEXP: TDateField;
    romanROM_HEXP: TTimeField;
    romanROM_CEXP: TIntegerField;
    romanROM_CDSC: TIBBCDField;
    QRLabel23: TQRLabel;
    QRDUCOM: TQRDBText;
    romanROM_CDRD: TIntegerField;
    romanROM_CDCX: TIntegerField;
    romanROM_QTSP: TIBBCDField;
    romanROM_QTPD: TIBBCDField;
    romanROM_ADSC: TIBBCDField;
    romanROM_DESC: TStringField;
    romanROM_COMI: TIBBCDField;
    romanUSU_DUSU: TIBStringField;
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
    romanROM_UPRN: TIntegerField;
    romanROM_PPRN: TSmallintField;
    romanROM_TPRN: TDateTimeField;
    qrdbROM_PREC: TQRDBText;
    qrlprc: TQRLabel;
    QRLabel22: TQRLabel;
    qrlrom_obse: TQRLabel;
    QRShape1: TQRShape;
    QRShape6: TQRShape;
    QRDBRichText1: TQRDBRichText;
    qrldesc: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel12: TQRLabel;
    qrlqtde: TQRLabel;
    QRDQTVE: TQRDBText;
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
    QRDVNF: TQRDBText;
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
    QRDDECP: TQRDBText;
    QRLabel42: TQRLabel;
    QRLabel3: TQRLabel;
    QConsulta: TIBQuery;
    TCadastro: TIBTransaction;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    romanROM_VFRT: TIBBCDField;
    romanROM_VIPI: TIBBCDField;
    romanROM_VNF: TIBBCDField;
    romanROM_DTRA: TIBStringField;
    romanROM_DSEP: TIBStringField;
    romanROM_DERD: TIBStringField;
    romanROM_RLPD: TIntegerField;
    romanROM_TSRO: TIBBCDField;
    romanROM_TCRO: TIBBCDField;
    romanROM_CTRA: TIntegerField;
    romanROM_ENVWEB: TSmallintField;
    romanROM_MFRT: TSmallintField;
    romanROM_PSBR: TIBBCDField;
    romanROM_PSLQ: TIBBCDField;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    ven_efeID: TIntegerField;
    ven_efePRO_CART: TIBStringField;
    ven_efePRO_CPRO: TIBStringField;
    ven_efeROM_ITEM: TIBStringField;
    ven_efeROM_DUNI: TIBStringField;
    ven_efeROM_QTDE: TIBBCDField;
    ven_efeROM_UNIT: TFloatField;
    ven_efeROM_PREC: TFloatField;
    ven_efeROM_VDSC: TIBBCDField;
    ven_efeROM_TOTA: TIBBCDField;
    ven_efeDESCRICAO: TIBStringField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    romanVTFA: TIBBCDField;
    procedure romanCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure ItemVendaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure romanAfterOpen(DataSet: TDataSet);
  private

  public
  end;

var
  qrpven_ped: Tqrpven_ped;

implementation

uses uPrincipal, bPrincipal;

{$R *.DFM}

procedure Tqrpven_ped.romanCalcFields(DataSet: TDataSet);
begin
  romanROM_DESC.Value := formatfloat('#,0.00',romanROM_PDSC.AsFloat);
  if romanROM_CDSC.AsFloat > 0 then
  romanROM_DESC.Value := romanROM_DESC.AsString+'+'+formatfloat('#,0.00',romanROM_CDSC.AsFloat);
end;

procedure Tqrpven_ped.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  ITEMVENDA.Enabled := (ven_efeID.AsInteger > 0);
end;

procedure Tqrpven_ped.QuickRepAfterPrint(Sender: TObject);
begin
  if romanID.AsInteger > 0 then
     with FBird do
     try
       oOTransact(TFBEdicao);
       with SQLFBEdicao do
       begin
         Close;
         SQL.Clear;
         SQL.Add('UPDATE ' + oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3));
         SQL.Add('SET LOG_PRN_DTEV = CURRENT_TIMESTAMP,');
         SQL.Add('    LOG_PRN_CDEV = 1,');

         SQL.Add('LOG_PRN_IDEV = ''' + RECUsuarios.Id     + ''',');
         SQL.Add('LOG_PRN_IP   = ''' + RECParametros.IP   + ''',');
         SQL.Add('LOG_PRN_HOST = ''' + RECParametros.HOST + '''' );

         SQL.Add('WHERE ID = ''' + romanID.AsString + '''');
         ExecQuery;
       end;
     finally
       oCTransact(TFBEdicao);
     end;
end;

procedure Tqrpven_ped.ItemVendaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if ven_efeID.AsInteger > 0 then
  begin
    qrlrom_obse.Caption := '';
    qrlprc.Caption      := 'Preço Tabela (Item '+ven_efeROM_ITEM.AsString+')';

    if ven_efeROM_VDSC.AsFloat = 0 then
    begin
      qrdbROM_PREC.DataField  := '';
      qrlprc.Caption        := '';
    end;
  end;  
end;

procedure Tqrpven_ped.romanAfterOpen(DataSet: TDataSet);
begin
  QRDVNF.DataField := IFThen(ROMANROM_VNF.AsFloat <= 0,'ROM_TCDE','ROM_VNF');
end;

end.

