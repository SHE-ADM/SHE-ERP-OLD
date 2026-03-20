unit qsep_ped;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, DateUtils, jpeg, math, StrUtils;

type
  Tqrpsep_ped = class(TQuickRep)
    TituloVenda: TQRBand;
    ItemVenda: TQRSubDetail;
    CabecalhoVenda: TQRChildBand;
    ven_efe: TIBQuery;
    QRDDESCRICAO: TQRDBText;
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
    QRShape4: TQRShape;
    TotalVenda: TQRChildBand;
    QRDBText3: TQRDBText;
    TRelatorio: TIBTransaction;
    ColumnHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDUCON: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLTOT1: TQRLabel;
    QREVL4: TQRExpr;
    QRLabel18: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel21: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText20: TQRDBText;
    romanC_PEDIDO: TStringField;
    QRDBText16: TQRDBText;
    romanROM_DTRA: TIBStringField;
    QRDBText7: TQRDBText;
    QRLabel12: TQRLabel;
    romanUSU_DUSU: TIBStringField;
    romanCLI_RAZA: TIBStringField;
    romanREP_RAZA: TIBStringField;
    romanC_CLIENTE: TStringField;
    romanC_REPRESENTANTE: TStringField;
    QRDBRichText1: TQRDBRichText;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRDPRO_CPRO: TQRDBText;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRDDGCP: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    romanC_VENDEDOR: TStringField;
    romanFANTASIA: TIBStringField;
    ven_efeFANTASIA: TIBStringField;
    ven_efeIDPV: TIntegerField;
    ven_efeROM_ITEM: TIntegerField;
    ven_efeROM_DPRO: TIBStringField;
    ven_efeDGCP: TIBStringField;
    ven_efeROM_DUNI: TIBStringField;
    ven_efeROM_QTDE: TIBBCDField;
    ven_efeROM_QTRL: TIntegerField;
    ven_efeROM_UNIT: TFloatField;
    ven_efeROM_TOTA: TIBBCDField;
    ven_efeIDCP: TIntegerField;
    ven_efePRO_CART: TIBStringField;
    ven_efePRO_CPRO: TIBStringField;
    ven_efeUCDBE: TIBStringField;
    ven_efeUQTRL: TSmallintField;
    ven_efePRO_ESPC: TIBStringField;
    ven_efeREST: TIBStringField;
    ven_efeEPE_QTDE: TIBBCDField;
    ven_efeEPE_QTRL: TLargeintField;
    ven_efeEPR_QTDE: TIBBCDField;
    ven_efeEPR_QTRL: TLargeintField;
    ven_efeEPS_QTDE: TIBBCDField;
    ven_efeEPS_QTRL: TLargeintField;
    ven_efeUPSBR: TIBBCDField;
    ven_efeUPSLQ: TIBBCDField;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeSelectSQL: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    procedure romanCalcFields(DataSet: TDataSet);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure ItemVendaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
  end;

var
  qrpsep_ped: Tqrpsep_ped;

implementation

uses uPrincipal, bPrincipal;

{$R *.DFM}

procedure Tqrpsep_ped.romanCalcFields(DataSet: TDataSet);
begin
  RomanC_Pedido.Value        := 'Nº '+romanROM_DERO.AsString+' #'+romanROM_CONC.AsString+' - Emissão '+FormatDateTime('dd/mm/yyyy hh:mm',RomanROM_DROM.AsDateTime);
  RomanC_Cliente.Value       := RomanCLI_FANT.AsString+IFThen(RomanCLI_FANT.AsString <> RomanCLI_RAZA.AsString,' - '+RomanCLI_RAZA.AsString,'');
  RomanC_Vendedor.Value      := RomanUSU_DUSU.AsString;
  RomanC_Representante.Value := RomanREP_FANT.AsString+IFThen(RomanREP_FANT.AsString <> RomanREP_RAZA.AsString,' - '+RomanREP_RAZA.AsString,'');
end;

procedure Tqrpsep_ped.QuickRepAfterPrint(Sender: TObject);
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
         SQL.Add('    LOG_PRN_CDEV = 4,');

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

procedure Tqrpsep_ped.ItemVendaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRDPRO_CPRO.Font.Size  := IFThen(Length(VEN_EFEPRO_CPRO.AsString) > 17,5,IFThen(Length(VEN_EFEPRO_CPRO.AsString) > 12,6,7));
  QRDDESCRICAO.Font.Size := IFThen(Length(VEN_EFEROM_DPRO.AsString) > 32,6,7);
  QRDDGCP.Font.Size      := IFThen(Length(VEN_EFEROM_DPRO.AsString) > 32,6,7);
  QRDUCON.Font.Size      := IFThen(Length(VEN_EFEPRO_ESPC.AsString) > 22,6,7);

  { Ricardo
    Width = 250 equivale 32 CARACTERES
            150 equivale 22 CARACTERES
  }
end;

end.

