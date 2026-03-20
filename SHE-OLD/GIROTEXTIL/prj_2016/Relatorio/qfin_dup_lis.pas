unit qfin_dup_lis;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QRCtrls, IBDatabase, IBStoredProc,
  DB, IBCustomDataSet, IBQuery, QuickRpt, math, jpeg;

type
  Tqrpfin_dup_lis = class(TQuickRep)
    ColumnHeaderBand1: TQRBand;
    qrlcol0: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRBand1: TQRBand;
    qrilogo: TQRImage;
    qrlraza: TQRLabel;
    qrlend1: TQRLabel;
    qrlend2: TQRLabel;
    qrlemai_site: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    qrlfone: TQRLabel;
    QRLabel10: TQRLabel;
    qrltitulo: TQRLabel;
    QRShape4: TQRShape;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel5: TQRLabel;
    qrlfil: TQRLabel;
    qrlrodape: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    DetailBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText5: TQRDBText;
    qrltdup: TQRLabel;
    qrlfav: TQRLabel;
    QRLabel4: TQRLabel;
    qrlcnpj: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    qdis: double;
    rdis: integer;
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpfin_dup_lis: Tqrpfin_dup_lis;

implementation

uses p_funcoes, uPrincipal, pfin_dup;

{$R *.DFM}

procedure Tqrpfin_dup_lis.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpfin_dup_lis.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrlfav.Caption  := frmfin_dup.cadastroCLI_FANT.AsString+' - '+frmfin_dup.cadastroCLI_RAZA.AsString;
  qrlcnpj.Caption := copy(frmfin_dup.cadastroCLI_CNPJ.AsString,1,2)+'.'+
                     copy(frmfin_dup.cadastroCLI_CNPJ.AsString,3,3)+'.'+
                     copy(frmfin_dup.cadastroCLI_CNPJ.AsString,6,3)+'/'+
                     copy(frmfin_dup.cadastroCLI_CNPJ.AsString,9,4)+'-'+
                     copy(frmfin_dup.cadastroCLI_CNPJ.AsString,13,2);
end;

end.
