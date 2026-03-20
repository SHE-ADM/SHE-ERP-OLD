unit qven_ped_bematech;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, DateUtils, jpeg, IBStoredProc, IBSQL;

type
  Tqrpven_ped_bematech = class(TQuickRep)
    TituloVenda: TQRBand;
    ItemVenda: TQRSubDetail;
    CabecalhoVenda: TQRChildBand;
    TotalVenda: TQRChildBand;
    ven_efe: TIBQuery;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText2: TQRDBText;
    roman: TIBQuery;
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
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    romanROM_CDOC: TIntegerField;
    romanROM_CDNF: TIntegerField;
    romanROM_HROM: TTimeField;
    romanROM_DNFS: TDateField;
    romanROM_DEXP: TDateField;
    romanROM_HEXP: TTimeField;
    romanROM_CEXP: TIntegerField;
    romanROM_CDSC: TIBBCDField;
    romanROM_CDRD: TIntegerField;
    romanROM_CDCX: TIntegerField;
    romanROM_QTSP: TIBBCDField;
    romanROM_QTPD: TIBBCDField;
    romanROM_ADSC: TIBBCDField;
    romanROM_DESC: TStringField;
    romanROM_COMI: TIBBCDField;
    romanUSU_DUSU: TIBStringField;
    QRBand1: TQRBand;
    QRITituloLogo: TQRImage;
    qrlraza: TQRLabel;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    SummaryBand1: TQRBand;
    qrltitulo: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    qrlend: TQRLabel;
    qrlstco: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText17: TQRDBText;
    qrldesc: TQRLabel;
    qrbvdsc: TQRDBText;
    qrlraza2: TQRLabel;
    qrlfone: TQRLabel;
    qrlpagina: TQRLabel;
    qrlpag: TQRLabel;
    qrlcli: TQRLabel;
    qrlven: TQRLabel;
    qrlrep: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel21: TQRLabel;
    qrlrec: TQRLabel;
    qrlcbai: TQRLabel;
    romanROM_DPRD: TDateField;
    romanROM_CTNR: TIBStringField;
    romanROM_DEMB: TDateField;
    romanROM_DDES: TDateField;
    romanROM_CBAI: TIntegerField;
    romanROM_TBAI: TDateTimeField;
    ibSP: TIBStoredProc;
    romanROM_UPRN: TIntegerField;
    romanROM_PPRN: TSmallintField;
    romanROM_TPRN: TDateTimeField;
    QRShape1: TQRShape;
    QRLabel22: TQRLabel;
    qrlvfrt: TQRLabel;
    qrbvfrt: TQRDBText;
    romanROM_VFRT: TIBBCDField;
    romanROM_DTRA: TIBStringField;
    QRLabel24: TQRLabel;
    QRDBText13: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel25: TQRLabel;
    qrlitem: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel5: TQRLabel;
    romanCLI_RAZA: TIBStringField;
    qrlprc: TQRLabel;
    QRDBText12: TQRDBText;
    TCadastro: TIBTransaction;
    QConsulta: TIBQuery;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    ven_efeID: TIntegerField;
    ven_efePRO_CART: TIBStringField;
    ven_efePRO_CPRO: TIBStringField;
    ven_efeROM_ITEM: TIBStringField;
    ven_efeDESCRICAO: TIBStringField;
    ven_efeDGCP: TIBStringField;
    ven_efeROM_DUNI: TIBStringField;
    ven_efeROM_QTDE: TIBBCDField;
    ven_efeROM_UNIT: TFloatField;
    ven_efeROM_PREC: TFloatField;
    ven_efeROM_VDSC: TIBBCDField;
    ven_efeROM_TOTA: TIBBCDField;
    procedure romanCalcFields(DataSet: TDataSet);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure ItemVendaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
  end;

var
  qrpven_ped_bematech: Tqrpven_ped_bematech;

implementation

uses uPrincipal, bPrincipal;

{$R *.DFM}

procedure Tqrpven_ped_bematech.romanCalcFields(DataSet: TDataSet);
begin
  romanROM_DESC.Value := formatfloat('#,0.00',romanROM_PDSC.AsFloat);
  if romanROM_CDSC.AsFloat > 0 then
  romanROM_DESC.Value := romanROM_DESC.AsString+'+'+formatfloat('#,0.00',romanROM_CDSC.AsFloat);
end;

procedure Tqrpven_ped_bematech.QuickRepAfterPrint(Sender: TObject);
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
         SQL.Add('    LOG_PRN_CDEV = 10,');

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

procedure Tqrpven_ped_bematech.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if (romanROM_DESC.AsString = '') or (romanROM_DESC.AsString = '0,00') then
  begin
    qrldesc.Caption   := '';
    qrbvdsc.DataSet   := nil;
    qrbvdsc.DataField := '';
  end;

  if romanROM_VFRT.AsFloat = 0 then
  begin
    qrlvfrt.Caption   := '';
    qrbvfrt.DataSet   := nil;
    qrbvfrt.DataField := '';
  end;

  if qrlcbai.Caption = '' then
  begin
    qrlrec.Caption  := '';
    qrlcbai.Caption := '';
  end;
end;

procedure Tqrpven_ped_bematech.ItemVendaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrlprc.Caption   := 'Preço Tabela (Item '+ven_efeROM_ITEM.AsString+')';
  ItemVenda.Height := 18;
  if ven_efeROM_VDSC.AsFloat > 0 then
  ItemVenda.Height := 26;
end;

end.

