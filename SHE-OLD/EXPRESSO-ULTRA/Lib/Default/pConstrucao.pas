unit pConstrucao;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, DateUtils, rxAnimate, rxGIFCtrl,
  pngimage;

type
  TFrmConstrucao = class(TForm)
    SBPrincipal: TStatusBar;
    IPrincipal: TImage;
    PNLPrincipal: TPanel;
    PNLFoto: TPanel;
    IFoto: TImage;
    BEmpresa: TBevel;
    PNLGif: TPanel;
    GF1: TRxGIFAnimator;
    GF2: TRxGIFAnimator;
    GF3: TRxGIFAnimator;
    GF4: TRxGIFAnimator;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConstrucao: TFrmConstrucao;

implementation

{$R *.dfm}

procedure TFrmConstrucao.FormCreate(Sender: TObject);
begin
  SBPrincipal.Panels[0].Text := 'Copyright © '+oStrZero(YearOf(Date),4)+' Sheild Consultoria em Negócios Especializados.';
end;

procedure TFrmConstrucao.FormShow(Sender: TObject);
begin
  GF1.Animate := True;
  GF2.Animate := True;
  GF3.Animate := True;
  GF4.Animate := True;
end;

procedure TFrmConstrucao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmConstrucao.FormDestroy(Sender: TObject);
begin
  GF1.Animate := False;
  FreeAndNil(GF1);
  GF2.Animate := False;
  FreeAndNil(GF2);
  GF3.Animate := False;
  FreeAndNil(GF3);
  GF4.Animate := False;
  FreeAndNil(GF4);

  FrmConstrucao := Nil;
end;

procedure TFrmConstrucao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Escape) or (Key = Vk_Return) then
      Close;
end;

end.
