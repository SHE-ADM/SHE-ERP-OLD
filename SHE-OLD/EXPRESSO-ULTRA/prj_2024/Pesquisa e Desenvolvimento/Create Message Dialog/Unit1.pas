unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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
 i: Integer;
 f: Tform;
 clicado : Integer;
begin
  f:= createmessagedialog('Deseja Abrir outro Formulário?'+#13+'teste',
   mterror,[mbyes,mbno,mbok,mbcancel]);

    try
      for i:=0 to f.componentCount -1 do
       if f.components[i] is tbutton then
        with tbutton(f.components[i]) do
         case modalresult of
           mryes   : caption := '&Sim';
           mrno    : caption := '&Não';
           mrok    : caption := '&Certo';
           mrcancel: caption := '&Errado';
         end;
        f.caption := 'Opções'; //Caption da Janelinha

        //Aqui passamos o Código de qual o botão clicado
        clicado := f.showmodal;
       finally
        f.free;
       end;

    if clicado = 6 then
    begin
      //Aqui você chama o formulário
    end;

end;
end.
