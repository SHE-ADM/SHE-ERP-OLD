unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxfBackGround, cxLookAndFeels, dxfDesigner, dxfPictureButton,
  jpeg, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    dxfBackGround1: TdxfBackGround;
    Image2: TImage;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Image1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
