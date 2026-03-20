unit qven_des;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, jpeg;

type
  Tqrpven_des = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRGroup2: TQRGroup;
    QRBand1: TQRBand;
    QRExpr4: TQRExpr;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    ChildBand1: TQRChildBand;
    rom_des: TIBQuery;
    rom_desID: TIntegerField;
    rom_desROM_DESE: TIBStringField;
    rom_desROM_DCOR: TIBStringField;
    rom_desROM_QTDE: TIBBCDField;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand4: TQRBand;
    QRLabel5: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel6: TQRLabel;
    QRExpr3: TQRExpr;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRExpr5: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRExpr6: TQRExpr;
    QRSysData: TQRSysData;
    qrlrodape: TQRLabel;
    rom_desROM_CCAB: TIntegerField;
    rom_desROM_NOME: TIBStringField;
    QRBand3: TQRBand;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    qrilogo: TQRImage;
    qrlraza: TQRLabel;
    qrlend1: TQRLabel;
    qrlend2: TQRLabel;
    qrlemai_site: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    qrlfone: TQRLabel;
    QRLabel4: TQRLabel;
    qrltitulo: TQRLabel;
    QRShape4: TQRShape;
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
  end;

var
  qrpven_des: Tqrpven_des;

implementation

uses BDados, uPrincipal;

{$R *.DFM}

procedure Tqrpven_des.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

end.
