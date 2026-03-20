unit qven_ped_mat;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls, DateUtils,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB,
  IBCustomDataSet, IBQuery, IBDatabase, IBStoredProc;

type
  Tqrpven_ped_mat = class(TQuickRep)
    vendas: TQRChildBand;
    VendaTotalBaixados: TQRChildBand;
    VendaItensBaixados1: TQRSubDetail;
    QRDBText1: TQRDBText;
    qrpdpro: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText39: TQRDBText;
    TituloVendas: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRDBText69: TQRDBText;
    QRLabel95: TQRLabel;
    QRDBText73: TQRDBText;
    QRLabel96: TQRLabel;
    QRDBText74: TQRDBText;
    consulta: TIBQuery;
    ChildBand1: TQRChildBand;
    roman: TIBQuery;
    ven_efe: TIBQuery;
    Titulo: TQRBand;
    QRDBText11: TQRDBText;
    QRDBText56: TQRDBText;
    QRLabel3: TQRLabel;
    QRBand1: TQRBand;
    QRLabel30: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel33: TQRLabel;
    QRLabel49: TQRLabel;
    QRDBText32: TQRDBText;
    qrlparc: TQRLabel;
    QRLabel35: TQRLabel;
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
    QRBand2: TQRBand;
    QRLabel11: TQRLabel;
    QRDBText2: TQRDBText;
    qrltel: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText61: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRDBText62: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText15: TQRDBText;
    qrlend: TQRLabel;
    QRDBText16: TQRDBText;
    qrlpagina: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel1: TQRLabel;
    ven_efePRO_CART: TIBStringField;
    ven_efePRO_CPRO: TIBStringField;
    ven_efePRO_DCOR: TIBStringField;
    ven_efePRO_DUNI: TIBStringField;
    ven_efeID: TIntegerField;
    ven_efeROM_ITEM: TIBStringField;
    ven_efeROM_DCOR: TIBStringField;
    ven_efeROM_DPRO: TIBStringField;
    ven_efeROM_QTDE: TIBBCDField;
    ven_efeROM_TOTA: TIBBCDField;
    IBTra: TIBTransaction;
    qrlpag: TQRLabel;
    ibSP: TIBStoredProc;
    qrlcnpj: TQRLabel;
    romanID: TIntegerField;
    romanROM_CDOC: TIntegerField;
    romanROM_CDPR: TIntegerField;
    romanROM_CDPD: TIntegerField;
    romanROM_CDRO: TIntegerField;
    romanROM_CDRD: TIntegerField;
    romanROM_CDNF: TIntegerField;
    romanROM_CDBX: TIntegerField;
    romanROM_CDCX: TIntegerField;
    romanROM_DERO: TIBStringField;
    romanROM_STPD: TIBStringField;
    romanROM_STCO: TIBStringField;
    romanROM_STFI: TIBStringField;
    romanROM_DROM: TDateField;
    romanROM_HROM: TTimeField;
    romanROM_DBAI: TDateField;
    romanROM_DCAN: TDateField;
    romanROM_DNFS: TDateField;
    romanROM_DEXP: TDateField;
    romanROM_HEXP: TTimeField;
    romanROM_CEXP: TIntegerField;
    romanROM_CCLI: TIntegerField;
    romanROM_CVEN: TIntegerField;
    romanROM_CREP: TIntegerField;
    romanROM_CPAG: TIntegerField;
    romanROM_QTVE: TIBBCDField;
    romanROM_QTSP: TIBBCDField;
    romanROM_QTPD: TIBBCDField;
    romanROM_RLVE: TIntegerField;
    romanROM_TSDE: TIBBCDField;
    romanROM_TDSC: TIBStringField;
    romanROM_PDSC: TIBBCDField;
    romanROM_CDSC: TIBBCDField;
    romanROM_ADSC: TIBBCDField;
    romanROM_TCDE: TIBBCDField;
    romanROM_CONC: TSmallintField;
    romanROM_OBSE: TMemoField;
    romanROM_STA: TIBStringField;
    romanROM_COMI: TIBBCDField;
    romanROM_DPRD: TDateField;
    romanROM_CTNR: TIBStringField;
    romanROM_DEMB: TDateField;
    romanROM_DDES: TDateField;
    romanROM_CBAI: TIntegerField;
    romanROM_TBAI: TDateTimeField;
    romanROM_UPRN: TIntegerField;
    romanROM_PPRN: TSmallintField;
    romanROM_TPRN: TDateTimeField;
    romanCLI_FANT: TIBStringField;
    romanCLI_RAZA: TIBStringField;
    romanCLI_CNPJ: TIBStringField;
    romanCLI_CPF: TIBStringField;
    romanCLI_INSC: TIBStringField;
    romanCLI_BAI: TIBStringField;
    romanCLI_CID: TIBStringField;
    romanCLI_ESTA: TIBStringField;
    romanCLI_CEP: TIBStringField;
    romanCLI_TEL1: TIBStringField;
    romanCLI_TLOG: TIBStringField;
    romanCLI_LOGR: TIBStringField;
    romanCLI_NUME: TIBStringField;
    romanCLI_COMP: TIBStringField;
    romanUSU_DUSU: TIBStringField;
    romanREP_FANT: TIBStringField;
    romanPAG_DPAG: TIBStringField;
    romanROM_DESC: TStringField;
    ven_efeROM_UNIT: TFloatField;
    ven_efeROM_DUNI: TIBStringField;
    QRSysData1: TQRSysData;
    qrlrend: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText7: TQRDBText;
    romanROM_VFRT: TIBBCDField;
    romanROM_DTRA: TIBStringField;
    laqtven: TQRLabel;
    QRLabel13: TQRLabel;
    romanCLI_DDD: TIBStringField;
    qrlcli: TQRLabel;
    qrlrom_obse: TQRMemo;
    qrlOPED: TQRMemo;
    QRLabel10: TQRLabel;
    procedure VendaTotalBaixadosBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure vendasBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure romanCalcFields(DataSet: TDataSet);
    procedure VendaItensBaixados1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrpven_ped_mat: Tqrpven_ped_mat;

implementation

uses uPrincipal, bDADOS;

{$R *.DFM}

procedure Tqrpven_ped_mat.VendaTotalBaixadosBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  laqtven.Caption  := formatFloat('0.0000'   ,romanROM_QTVE.AsFloat);
end;

procedure Tqrpven_ped_mat.vendasBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrlrom_obse.Lines.Clear;
  if TRIM(romanROM_OBSE.AsString) <> '' then
  qrlrom_obse.Lines.Add('Obs.: '+ TRIM(romanROM_OBSE.AsString));

  qrlOPED.Lines.Clear;
  qrlOPED.Lines.Add(TRIM(frmprincipal.parametrosPAR_OPED.AsString));

  if length(romanCLI_TEL1.AsString) > 8 then
  qrltel.Caption := '('+romanCLI_DDD.AsString+') '+copy(romanCLI_TEL1.AsString,1,5)+'-'+copy(romanCLI_TEL1.AsString,6,4) else
  qrltel.Caption := '('+romanCLI_DDD.AsString+') '+copy(romanCLI_TEL1.AsString,1,4)+'-'+copy(romanCLI_TEL1.AsString,5,4);

  qrlcli.Caption := romanCLI_FANT.AsString+' - '+romanCLI_RAZA.AsString;
  qrlend.Caption := romanCLI_TLOG.AsString+' '+romanCLI_LOGR.AsString+', '+romanCLI_NUME.AsString;
  if romanCLI_COMP.AsString <> '' then
  qrlend.Caption := qrlend.Caption+' - '+romanCLI_COMP.AsString;

  if romanCLI_CNPJ.AsString <> '' then
  qrlcnpj.Caption := copy(romanCLI_CNPJ.AsString,1,2)+'.'+
                     copy(romanCLI_CNPJ.AsString,3,3)+'.'+
                     copy(romanCLI_CNPJ.AsString,6,3)+'/'+
                     copy(romanCLI_CNPJ.AsString,9,4)+'-'+
                     copy(romanCLI_CNPJ.AsString,13,2) else
  qrlcnpj.Caption := copy(romanCLI_CPF.AsString,1,3) +'.'+
                     copy(romanCLI_CPF.AsString,4,3) +'.'+
                     copy(romanCLI_CNPJ.AsString,7,3)+'-'+
                     copy(romanCLI_CNPJ.AsString,10,2);
end;

procedure Tqrpven_ped_mat.QuickRepAfterPrint(Sender: TObject);
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

procedure Tqrpven_ped_mat.romanCalcFields(DataSet: TDataSet);
begin
  romanROM_DESC.Value := formatfloat('#,0.00########',romanROM_PDSC.AsFloat);
  if romanROM_CDSC.AsFloat > 0 then
  romanROM_DESC.Value := romanROM_DESC.AsString+'+'+formatfloat('#,0.00########',romanROM_CDSC.AsFloat);
end;

procedure Tqrpven_ped_mat.VendaItensBaixados1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  qrpdpro.Width := 280;
  if ven_efeROM_DCOR.AsString = '' then
  qrpdpro.Width := 480;
end;

end.

