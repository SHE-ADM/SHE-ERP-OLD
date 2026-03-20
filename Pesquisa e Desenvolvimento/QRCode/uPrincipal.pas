unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DelphiZXingQRCode, StdCtrls, ExtCtrls, Printers;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  QRCode: TDelphiZXingQRCode;
  Row, Col: Integer;
  Bitmap: TBitmap;
  Scale: Integer;
begin
  // Configurações
  Scale := 10; // Aumenta o tamanho dos "quadradinhos" do QR Code

  QRCode := TDelphiZXingQRCode.Create;
  Bitmap := TBitmap.Create;
  try
    // Define os dados e a codificação
    QRCode.Data := Edit1.Text;
    QRCode.Encoding := qrAuto;
    QRCode.QuietZone := 4; // Margem branca ao redor

    // Define o tamanho do Bitmap resultante
    Bitmap.Width := QRCode.Rows * Scale;
    Bitmap.Height := QRCode.Columns * Scale;

    // Pinta o fundo de branco
    Bitmap.Canvas.Brush.Color := clWhite;
    Bitmap.Canvas.FillRect(Rect(0, 0, Bitmap.Width, Bitmap.Height));

    // Pinta os "pixels" pretos do QR Code
    Bitmap.Canvas.Brush.Color := clBlack;
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Col := 0 to QRCode.Columns - 1 do
      begin
        if QRCode.IsBlack[Row, Col] then
        begin
          Bitmap.Canvas.FillRect(Rect(
            Col * Scale,
            Row * Scale,
            (Col + 1) * Scale,
            (Row + 1) * Scale
          ));
        end;
      end;
    end;

    // Exibe no componente TImage
    Image1.Picture.Bitmap.Assign(Bitmap);

  finally
    QRCode.Free;
    Bitmap.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  ScalePrint: Integer;
  PrintRect: TRect;
begin
  if Image1.Picture.Bitmap.Empty then
  begin
    ShowMessage('Gere o QR Code antes de imprimir.');
    Exit;
  end;

  // Inicia o trabalho de impressão
  Printer.BeginDoc;
  try
    Printer.Title := 'Impressão QR Code Delphi 7';
    
    // Configura uma escala para a impressora (pixels da impressora são menores que da tela)
    ScalePrint := 5; 
    
    // Define a posição na folha (Esquerda, Topo, Direita, Base)
    // Aqui estamos desenhando no canto superior esquerdo (100, 100)
    PrintRect.Left := 100;
    PrintRect.Top := 100;
    PrintRect.Right := 100 + (Image1.Picture.Width * ScalePrint);
    PrintRect.Bottom := 100 + (Image1.Picture.Height * ScalePrint);

    // Desenha o QR Code que está no Image1 para o Canvas da Impressora
    Printer.Canvas.StretchDraw(PrintRect, Image1.Picture.Bitmap);
    
  finally
    // Envia para a impressora
    Printer.EndDoc;
  end;
end;

end.
