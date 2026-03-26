unit peti_sel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, jpeg;

type
  Tfrmeti_sel = class(TForm)
    Bevel1: TBevel;
    imgpa: TImage;
    Bevel3: TBevel;
    imgp100: TImage;
    Bevel4: TBevel;
    imgp150: TImage;
    Bevel5: TBevel;
    imgp200: TImage;
    Bevel6: TBevel;
    imgnp: TImage;
    Bevel7: TBevel;
    img30: TImage;
    Bevel8: TBevel;
    img30_: TImage;
    Bevel9: TBevel;
    imgman: TImage;
    Bevel21: TBevel;
    imgpg: TImage;
    Bevel22: TBevel;
    StatusBar1: TStatusBar;
    NON: TImage;
    Bevel36: TBevel;
    Bevel41: TBevel;
    img30__: TImage;
    Bevel43: TBevel;
    imgman_: TImage;
    Bevel44: TBevel;
    imgman__: TImage;
    Bevel42: TBevel;
    imgna: TImage;
    Bevel45: TBevel;
    imgnx: TImage;
    Bevel2: TBevel;
    Bevel10: TBevel;
    imgsb: TImage;
    imgns: TImage;
    Bevel11: TBevel;
    imgsm: TImage;
    Bevel12: TBevel;
    imgss: TImage;
    Bevel13: TBevel;
    imgsh: TImage;
    Bevel14: TBevel;
    imgsv: TImage;
    Bevel15: TBevel;
    Bevel17: TBevel;
    imgf: TImage;
    imgf_: TImage;
    Bevel18: TBevel;
    imgf__: TImage;
    Bevel19: TBevel;
    Bevel20: TBevel;
    imga: TImage;
    imga_: TImage;
    Bevel23: TBevel;
    imga__: TImage;
    Bevel24: TBevel;
    Bevel25: TBevel;
    imgp: TImage;
    imgp_: TImage;
    Bevel26: TBevel;
    imgp__: TImage;
    Bevel27: TBevel;
    imgls: TImage;
    Bevel28: TBevel;
    Bevel29: TBevel;
    imgw: TImage;
    imgw_: TImage;
    Bevel30: TBevel;
    imgw__: TImage;
    Bevel16: TBevel;
    imgsg: TImage;
    Bevel31: TBevel;
    Bevel32: TBevel;
    img40: TImage;
    img40_: TImage;
    Bevel33: TBevel;
    img40__: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CLOROCLClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
  Action := cafree;
end;

procedure Tfrmeti_sel.FormCreate(Sender: TObject);
begin
  Imagem  := nil;
end;

procedure Tfrmeti_sel.CLOROCLClick(Sender: TObject);
begin
  Imagem := TImage.Create(Imagem);
  Imagem.Picture := (Sender as TImage).Picture;
  Imagem.Name    := (Sender as TImage).Name;
  close;
end;

procedure Tfrmeti_sel.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
     close;
end;

end.

