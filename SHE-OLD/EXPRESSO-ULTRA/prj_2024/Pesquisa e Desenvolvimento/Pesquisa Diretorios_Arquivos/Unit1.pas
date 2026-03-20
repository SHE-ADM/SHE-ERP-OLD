unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  teste: string;

implementation

{$R *.dfm}

function oPSQ_DIR(ADirectory: String; AInsert: Boolean = False): Boolean;
begin
  ADirectory := Trim(ExcludeTrailingPathDelimiter(ADirectory));
  result     := DirectoryExists(ADirectory);

  if (not result) and (AInsert) then
  try
    CreateDir(ADirectory);
  except
    result := False;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  oPSQ_DIR('C:\Sheild\Atenção',True);
end;

end.
