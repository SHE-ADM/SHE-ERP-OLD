unit qfin_pag_fic;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg;

type
  Tqrpfin_pag_fic = class(TQuickRep)
    IBTra: TIBTransaction;
    relatorio: TIBQuery;
    consulta: TIBQuery;
    QRBand8: TQRBand;
    QRDBText3: TQRDBText;
    QRBand1: TQRBand;
    qrilogo: TQRImage;
    qrlraza: TQRLabel;
    qrlend1: TQRLabel;
    qrlend2: TQRLabel;
    qrlemai_site: TQRLabel;
    QRShape2: TQRShape;
    qrlfone: TQRLabel;
    QRLabel10: TQRLabel;
    qrltitulo: TQRLabel;
    QRShape4: TQRShape;
    relatorioID: TIntegerField;
    relatorioFIN_CCAB: TIntegerField;
    relatorioFIN_CDBX: TIntegerField;
    relatorioFIN_CDCX: TIntegerField;
    relatorioFIN_CFOR: TIntegerField;
    relatorioFIN_CVEN: TIntegerField;
    relatorioFIN_CREP: TIntegerField;
    relatorioFIN_PRAZ: TSmallintField;
    relatorioFIN_ATRA: TSmallintField;
    relatorioFIN_CONC: TSmallintField;
    relatorioFIN_DCAD: TDateField;
    relatorioFIN_DVEN: TDateField;
    relatorioFIN_DPAG: TDateField;
    relatorioFIN_DMED: TDateField;
    relatorioFIN_DATR: TDateField;
    relatorioFIN_STDO: TIBStringField;
    relatorioFIN_DOCT: TIBStringField;
    relatorioFIN_BANC: TIBStringField;
    relatorioFIN_DBAN: TIBStringField;
    relatorioFIN_AGEN: TIBStringField;
    relatorioFIN_CONT: TIBStringField;
    relatorioFIN_NCHQ: TIBStringField;
    relatorioFIN_MCHQ: TSmallintField;
    relatorioFIN_TIPO: TIBStringField;
    relatorioFIN_STFI: TIBStringField;
    relatorioFIN_STCO: TIBStringField;
    relatorioFIN_VALO: TIBBCDField;
    relatorioFIN_VPAG: TIBBCDField;
    relatorioFIN_VPEN: TIBBCDField;
    relatorioFIN_OBSE: TMemoField;
    relatorioFIN_STA: TIBStringField;
    relatorioFIN_PREV: TIBStringField;
    relatorioFIN_DUPL: TIBStringField;
    relatorioFIN_DCAN: TDateField;
    relatorioFIN_CPPL: TIntegerField;
    relatorioFIN_CCUS: TIntegerField;
    relatorioFIN_CBCO: TIntegerField;
    relatorioFIN_PORT: TIBStringField;
    relatorioFIN_VMUL: TIBBCDField;
    relatorioFIN_PMUL: TIBBCDField;
    relatorioFIN_VJUR: TIBBCDField;
    relatorioFIN_PJUR: TIBBCDField;
    relatorioFIN_VDES: TIBBCDField;
    relatorioFIN_PDES: TIBBCDField;
    relatorioFIN_DESC: TIBStringField;
    relatorioFIN_CDCO: TIntegerField;
    relatorioFIN_CDBA: TIBStringField;
    relatorioFIN_DEBA: TIBStringField;
    relatorioFIN_DBAI: TDateField;
    relatorioFIN_IDBX: TIBStringField;
    relatorioFIN_VENC: TIBBCDField;
    relatorioFIN_DDES: TDateField;
    relatorioFOR_FANT: TIBStringField;
    relatorioFOR_RAZA: TIBStringField;
    relatorioFIN_DFIN: TIBStringField;
    relatorioFIN_DCUS: TIBStringField;
    relatorioFIN_FORE: TStringField;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    qrltel: TQRLabel;
    relatorioFOR_DDD: TIBStringField;
    relatorioFOR_TEL1: TIBStringField;
    relatorioFOR_CONT: TIBStringField;
    relatorioFOR_TLOG: TIBStringField;
    relatorioFOR_LOGR: TIBStringField;
    relatorioFOR_NUME: TIBStringField;
    QRLabel1: TQRLabel;
    qrlend: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel3: TQRLabel;
    QRShape7: TQRShape;
    QRDBRichText1: TQRDBRichText;
    qrlrecibo: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape3: TQRShape;
    ChildBand1: TQRChildBand;
    qrlvisto: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    procedure relatorioCalcFields(DataSet: TDataSet);
    procedure QRBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpfin_pag_fic: Tqrpfin_pag_fic;

implementation

uses p_funcoes, uPrincipal;

{$R *.DFM}

procedure Tqrpfin_pag_fic.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
     BlobStream := tab.CreateBlobStream(valor,bmRead);

  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    qrilogo.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tqrpfin_pag_fic.relatorioCalcFields(DataSet: TDataSet);
begin
  relatorioFIN_FORE.Value := relatorioFIN_CFOR.AsString+' - '+relatorioFOR_FANT.AsString+' - '+relatorioFOR_RAZA.AsString;
end;

procedure Tqrpfin_pag_fic.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrlvisto.Caption  := 'Visto Financeiro ('+frmprincipal.cad_usuUSU_DUSU.AsString+')';

  qrlrecibo.Caption := 'RECIBO - '+relatorioFIN_DFIN.AsString;
  
  qrltel.Caption := relatorioFOR_CONT.AsString+' ('+relatorioFOR_DDD.AsString+') '+copy(relatorioFOR_TEL1.AsString,1,4)+'-'+copy(relatorioFOR_TEL1.AsString,5,5);
  if length(qrltel.Caption) < 8 then
  qrltel.Caption := 'NÃO CADASTRADO';

  qrlend.Caption := relatorioFOR_TLOG.AsString+' '+relatorioFOR_LOGR.AsString+', '+relatorioFOR_NUME.AsString;
  if length(qrlend.Caption) < 5 then
  qrlend.Caption := 'NÃO CADASTRADO';
end;

end.
