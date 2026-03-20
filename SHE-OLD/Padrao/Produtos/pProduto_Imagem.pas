unit pProduto_Imagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, dxStatusBar, StdCtrls, DBCtrls;

type
  TFrmProduto_Imagem = class(TForm)
    SBRodape: TdxStatusBar;
    IFoto: TImage;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    FrmStyle   : TFormStyle;
    FrmPosition: TPosition;
    Imagem     : TPicture;
    aProduto   : Array of String;
  public
    { Public declarations }

    Constructor Create(AOwner: TComponent; const AImagem: TPicture; aAProduto: Array of String); reintroduce; overload;
  end;

var
  FrmProduto_Imagem: TFrmProduto_Imagem;

implementation

uses uPrincipal;

{$R *.dfm}

Constructor TFrmProduto_Imagem.Create(AOwner: TComponent; const AImagem: TPicture; aAProduto: Array of String);
begin
  Imagem := AImagem;

  SetLength(aProduto,6);
  aProduto[0] := aAProduto[0];
  aProduto[1] := aAProduto[1];
  aProduto[2] := aAProduto[2];
  aProduto[3] := aAProduto[3];
  aProduto[4] := aAProduto[4];
  aProduto[5] := aAProduto[5];

  inherited Create(AOwner);
end;

procedure TFrmProduto_Imagem.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;

  Caption                 := aProduto[0]+' - '+
                             aProduto[3];
  SBRodape.Panels[0].Text := aProduto[5];
  SBRodape.Panels[1].Text := aProduto[1];
  SBRodape.Panels[2].Text := aProduto[2];
  SBRodape.Panels[3].Text := aProduto[4];

  IFoto.Picture := Imagem;
end;

procedure TFrmProduto_Imagem.FormShow(Sender: TObject);
begin
  { Herança }
  FrmStyle    := FormStyle;
  FrmPosition := Position;
end;

procedure TFrmProduto_Imagem.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Screen.Cursor := crDefault;
end;

procedure TFrmProduto_Imagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmProduto_Imagem.FormDestroy(Sender: TObject);
begin
  FrmProduto_Imagem := Nil;
end;

procedure TFrmProduto_Imagem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then
  Close;
end;

procedure TFrmProduto_Imagem.FormPaint(Sender: TObject);
var
  R: TRect;
begin
  if Showing then
  begin
    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,R);

    Top    := R.Top;
    Left   := R.Left;
    Width  := R.Right -R.Left-5;
    Height := R.Bottom-R.Top -5;

    { Ajusta o rodapé conforme o form }
    SBRodape.Panels[SBRodape.Panels.Count - 2].Width := SBRodape.Width - (SBRodape.Panels[SBRodape.Panels.Count - 1].Width+100);
  end;
end;

procedure TFrmProduto_Imagem.FormResize(Sender: TObject);
begin
  if Self <> Nil then
  Paint;
end;

end.
