unit qcad_pro_fic_foto;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QRCtrls, IBDatabase, IBStoredProc,
  DB, IBCustomDataSet, IBQuery, QuickRpt, math, jpeg;

type
  Tqrpcad_pro_fic_foto = class(TQuickRep)
    IBTra: TIBTransaction;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    QRBand1: TQRBand;
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
    QRLabel10: TQRLabel;
    qrltitulo: TQRLabel;
    QRShape4: TQRShape;
    tSHEILD: TIBTransaction;
    relatorio: TIBQuery;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape7: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel14: TQRLabel;
    qrifoto: TQRImage;
    QRShape8: TQRShape;
    QRLabel15: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRShape12: TQRShape;
    QRLabel13: TQRLabel;
    QRDBImage2: TQRDBImage;
    QRDBImage3: TQRDBImage;
    QRDBImage4: TQRDBImage;
    QRDBImage5: TQRDBImage;
    QRDBImage6: TQRDBImage;
    QRDBImage7: TQRDBImage;
    qrlcomp1: TQRLabel;
    qrlcomp2: TQRLabel;
    qrlobse: TQRRichText;
    QRDBImage8: TQRDBImage;
    PageFooterBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    qrlfil: TQRLabel;
    qrlrodape: TQRLabel;
    relatorioID: TIntegerField;
    relatorioPRO_CART: TIBStringField;
    relatorioPRO_CPRO: TIBStringField;
    relatorioPRO_DPRO: TIBStringField;
    relatorioPRO_FOTO: TBlobField;
    relatorioPRO_INS1: TBlobField;
    relatorioPRO_INS2: TBlobField;
    relatorioPRO_INS3: TBlobField;
    relatorioPRO_INS4: TBlobField;
    relatorioPRO_INS5: TBlobField;
    relatorioPRO_INS6: TBlobField;
    relatorioPRO_INS7: TBlobField;
    relatorioPRO_INS8: TBlobField;
    relatorioPRO_CBAR: TIBStringField;
    relatorioPRO_DCOR: TIBStringField;
    relatorioPRO_PCOR: TIBStringField;
    relatorioPRO_DGRP: TIBStringField;
    relatorioPRO_DCAT: TIBStringField;
    relatorioPRO_DCOL: TIBStringField;
    relatorioPRO_STA: TIBStringField;
    relatorioPRO_OBSE: TMemoField;
    relatorioPRO_CUST: TFloatField;
    relatorioPRO_PCOM: TFloatField;
    relatorioPRO_PREC: TFloatField;
    relatorioPRO_COMP: TIBStringField;
    relatorioPRO_CDFO: TIntegerField;
    relatorioPRO_DUNI: TIBStringField;
    relatorioPRO_GRAD: TIBStringField;
    relatorioPRO_DCAD: TDateField;
    relatorioPRO_DPRG: TDateField;
    relatorioPRO_DENT: TDateField;
    relatorioPRO_DULT: TDateField;
    relatorioPRO_REPR: TIBStringField;
    relatorioPRO_LARG: TIBBCDField;
    relatorioPRO_REND: TIBBCDField;
    relatorioPRO_GRAM: TIBBCDField;
    relatorioPRO_OBSF: TMemoField;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet);
    procedure carregaFoto2(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
  end;

var
  qrpcad_pro_fic_foto: Tqrpcad_pro_fic_foto;

implementation

uses uPrincipal;

{$R *.DFM}

procedure Tqrpcad_pro_fic_foto.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet; par: TIbDataSet );
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

procedure Tqrpcad_pro_fic_foto.carregaFoto2(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
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
  begin
    BlobStream := tab.CreateBlobStream(valor,bmRead);
  end;

  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    qrifoto.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tqrpcad_pro_fic_foto.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var i,j: word;
      BRet: boolean;
begin
  BRet := false;
  for i := 1 to length(relatorioPRO_COMP.AsString) do
  begin
    if copy(relatorioPRO_COMP.AsString,i,1) = ':' then
    begin
      BRet := true;
      break;
    end;
  end;

  if not BRet then
  begin
    qrlcomp1.Caption := '';
    qrlcomp2.Caption := '';

    if length(relatorioPRO_COMP.AsString) > 40 then
    begin
      j := 0;
      for i := 1 to length(relatorioPRO_COMP.AsString) do
      begin
        if copy(relatorioPRO_COMP.AsString,i,1) = ' ' then
        begin
          inc(j);
        end;

        if j = 4 then
           break;

        qrlcomp1.Caption := qrlcomp1.Caption + copy(relatorioPRO_COMP.AsString,i,1);
      end;
      qrlcomp2.Caption := trim(copy(relatorioPRO_COMP.AsString,i,40));
    end
    else
      qrlcomp1.Caption := relatorioPRO_COMP.AsString;
  end
  else
  begin
    inc(i);
    for j := i to length(relatorioPRO_COMP.AsString) do
    begin
      if copy(relatorioPRO_COMP.AsString,j,1) = ':' then
      begin
        for i := j downto 1 do
        begin
          if copy(relatorioPRO_COMP.AsString,i,1) = ' ' then
          begin
            qrlcomp1.Caption := TRIM(copy(relatorioPRO_COMP.AsString,1,i));
            qrlcomp2.Caption := TRIM(copy(relatorioPRO_COMP.AsString,i,120));
            break;
          end;
        end;
        break;
      end;
    end;
  end;
  
  carregaFoto2(relatorioPRO_FOTO.BlobSize,relatorioPRO_FOTO,relatorio,frmprincipal.parametros);
end;

end.
