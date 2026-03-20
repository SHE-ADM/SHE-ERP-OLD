unit qven_ped_bematech;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, DateUtils, jpeg, IBStoredProc, math, StrUtils;

type
  Tqrpven_ped_bematech = class(TQuickRep)
    TituloVenda: TQRBand;
    ItemVenda: TQRSubDetail;
    CabecalhoVenda: TQRChildBand;
    TotalVenda: TQRChildBand;
    ven_efe: TIBQuery;
    consulta: TIBQuery;
    IBTra: TIBTransaction;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDProduto: TQRDBText;
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
    ven_efePRO_CART: TIBStringField;
    ven_efePRO_CPRO: TIBStringField;
    ven_efeID: TIntegerField;
    ven_efeROM_ITEM: TIBStringField;
    ven_efeROM_QTDE: TIBBCDField;
    ven_efeROM_TOTA: TIBBCDField;
    romanCLI_FANT: TIBStringField;
    romanREP_FANT: TIBStringField;
    romanPAG_DPAG: TIBStringField;
    QRLabel8: TQRLabel;
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
    romanROM_CDRD: TIntegerField;
    romanROM_CDCX: TIntegerField;
    romanROM_QTSP: TIBBCDField;
    romanROM_QTPD: TIBBCDField;
    romanROM_ADSC: TIBBCDField;
    romanROM_DESC: TStringField;
    ven_efeROM_DPRO: TIBStringField;
    ven_efeROM_DCOR: TIBStringField;
    romanROM_COMI: TIBBCDField;
    romanUSU_DUSU: TIBStringField;
    QRBCabecalho: TQRBand;
    qrlraza: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    SummaryBand1: TQRBand;
    qrltitulo: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText10: TQRDBText;
    qrlncli: TQRLabel;
    qrlend: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText17: TQRDBText;
    qrldesc: TQRLabel;
    qrbvdsc: TQRDBText;
    qrlpagina: TQRLabel;
    qrlpag: TQRLabel;
    qrlven: TQRLabel;
    qrlrep: TQRLabel;
    QRDCOR: TQRDBText;
    QRLabel21: TQRLabel;
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
    ven_efeROM_UNIT: TFloatField;
    QRShape1: TQRShape;
    QRLabel22: TQRLabel;
    qrlvfrt: TQRLabel;
    qrbvfrt: TQRDBText;
    romanROM_VFRT: TIBBCDField;
    romanROM_DTRA: TIBStringField;
    QRLabel25: TQRLabel;
    qrlitem: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText14: TQRDBText;
    ven_efeROM_VDSC: TIBBCDField;
    romanCLI_RAZA: TIBStringField;
    ven_efeROM_PREC: TFloatField;
    qrlprc: TQRLabel;
    qrdprc: TQRDBText;
    ven_efeROM_DUNI: TIBStringField;
    qrlstco: TQRLabel;
    romanC_VDSC: TFloatField;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    ven_efeC_PRODUTO: TStringField;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    procedure romanCalcFields(DataSet: TDataSet);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure ItemVendaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ven_efeCalcFields(DataSet: TDataSet);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
  end;

var
  qrpven_ped_bematech: Tqrpven_ped_bematech;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpven_ped_bematech.romanCalcFields(DataSet: TDataSet);
begin
  romanROM_DESC.Value := formatfloat('#,0.00###',romanROM_PDSC.AsFloat);
  romanC_VDSC.Value   := romanROM_TSDE.AsFloat - romanROM_TCDE.AsFloat;
end;

procedure Tqrpven_ped_bematech.QuickRepAfterPrint(Sender: TObject);
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

procedure Tqrpven_ped_bematech.ItemVendaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if Length(ven_efeROM_DPRO.AsString) >= 25 then
  begin
    QRDProduto.Font.Size := 6;
    QRDProduto.Top := 2;
  end else
  begin
    QRDProduto.Font.Size := 7;
    QRDProduto.Top := 0;
  end;  

  if Length(ven_efeROM_DCOR.AsString) > 10 then
  begin
    QRDCOR.Font.Size := 6;
    QRDCOR.Top := 18;
  end else
  begin
    QRDCOR.Font.Size := 7;
    QRDCOR.Top := 16;
  end;

  ItemVenda.Height := IFThen(ven_efeROM_VDSC.AsFloat > 0,42,30);
end;

procedure Tqrpven_ped_bematech.ven_efeCalcFields(DataSet: TDataSet);
begin
  ven_efeC_PRODUTO.Value := ven_efePRO_CPRO.AsString+' '+ven_efeROM_DPRO.AsString;
end;

procedure Tqrpven_ped_bematech.SummaryBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if Length(qrlncli.Caption) < 40 then
     qrlncli.Font.Size := 8 else
  if Length(qrlncli.Caption) < 45 then
     qrlncli.Font.Size := 7 else
     qrlncli.Font.Size := 6;
end;
     
end.

