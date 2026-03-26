unit peti_sel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, jpeg;

type
  Tfrmeti_sel = class(TForm)
    StatusBar1: TStatusBar;
    GBAlvejamento: TGroupBox;
    BAlvejamento0: TBevel;
    BAlvejamento1: TBevel;
    BAlvejamento2: TBevel;
    BAlvejamento3: TBevel;
    IAlvejamento1: TImage;
    IAlvejamento2: TImage;
    IAlvejamento3: TImage;
    IAlvejamento4: TImage;
    GBLavagem: TGroupBox;
    BLavagem9: TBevel;
    BLavagem8: TBevel;
    BLavagem7: TBevel;
    BLavagem6: TBevel;
    BLavagem5: TBevel;
    BLavagem1: TBevel;
    BLavagem2: TBevel;
    BLavagem3: TBevel;
    ILavagem2: TImage;
    ILavagem3: TImage;
    ILavagem4: TImage;
    BLavagem4: TBevel;
    ILavagem5: TImage;
    ILavagem6: TImage;
    ILavagem7: TImage;
    ILavagem8: TImage;
    ILavagem9: TImage;
    ILavagem10: TImage;
    BLavagem15: TBevel;
    BLavagem13: TBevel;
    BLavagem12: TBevel;
    BLavagem11: TBevel;
    BLavagem10: TBevel;
    ILavagem11: TImage;
    ILavagem12: TImage;
    ILavagem13: TImage;
    ILavagem14: TImage;
    ILavagem16: TImage;
    BLavagem0: TBevel;
    ILavagem1: TImage;
    Bevel2: TBevel;
    Image2: TImage;
    GBPassadoria: TGroupBox;
    BPassadoria1: TBevel;
    BPassadoria2: TBevel;
    BPassadoria3: TBevel;
    BPassadoria4: TBevel;
    IPassadoria1: TImage;
    IPassadoria2: TImage;
    IPassadoria3: TImage;
    IPassadoria4: TImage;
    GBTextil: TGroupBox;
    BProfissional10: TBevel;
    BProfissional9: TBevel;
    BProfissional8: TBevel;
    BProfissional7: TBevel;
    BProfissional6: TBevel;
    BProfissional1: TBevel;
    BProfissional2: TBevel;
    BIProfissional3: TBevel;
    BIProfissional4: TBevel;
    IProfissional1: TImage;
    IProfissional2: TImage;
    IProfissional3: TImage;
    IProfissional4: TImage;
    BProfissional5: TBevel;
    IProfissional5: TImage;
    IProfissional6: TImage;
    IProfissional7: TImage;
    IProfissional8: TImage;
    IProfissional9: TImage;
    IProfissional10: TImage;
    GBSecagem: TGroupBox;
    BSecagemSombra3: TBevel;
    BSecagemSombra2: TBevel;
    BSecagemSombra1: TBevel;
    BSecagem7: TBevel;
    BSecagem6: TBevel;
    BSecagem1: TBevel;
    BSecagem2: TBevel;
    BSecagem3: TBevel;
    BSecagem4: TBevel;
    ISecagem1: TImage;
    ISecagem2: TImage;
    ISecagem3: TImage;
    ISecagem4: TImage;
    BSecagem5: TBevel;
    ISecagem5: TImage;
    ISecagem6: TImage;
    ISecagem7: TImage;
    ISecagemSombra1: TImage;
    ISecagemSombra2: TImage;
    ISecagemSombra3: TImage;
    BSecagemSombra4: TBevel;
    ISecagemSombra4: TImage;
    GBTambor: TGroupBox;
    BTambor1: TBevel;
    BTambor2: TBevel;
    BTambor3: TBevel;
    ITambor1: TImage;
    ITambor2: TImage;
    ITambor3: TImage;
    GBBlank: TGroupBox;
    Bevel1: TBevel;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IAlvejamento1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bChoice: boolean;
    Imagem : TImage;
  end;

var
  frmeti_sel: Tfrmeti_sel;

implementation

{$R *.dfm}

procedure Tfrmeti_sel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmeti_sel.FormCreate(Sender: TObject);
begin
  Imagem := nil;
end;

procedure Tfrmeti_sel.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
     close;
end;

procedure Tfrmeti_sel.FormDestroy(Sender: TObject);
begin
  Imagem.Free;
  frmeti_sel := Nil;
end;

procedure Tfrmeti_sel.IAlvejamento1Click(Sender: TObject);
begin
  Imagem := TImage.Create(Imagem);
  if (Sender as TImage).Hint <> 'Limpar instrução de lavagem' then
  begin
    Imagem.Picture := (Sender as TImage).Picture;
    Imagem.Hint    := (Sender as TImage).Hint;
    Imagem.Name    := (Sender as TImage).Name;
    Imagem.Tag     := (Sender as TImage).Tag;
  end;
  Close;
end;

end.

