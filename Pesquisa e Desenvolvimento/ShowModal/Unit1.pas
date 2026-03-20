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

procedure ShowMemoModal(const ACaption: string; const Lines: TStrings);
var
  F: TForm;
  M: TMemo;
begin
  F := TForm.Create(nil);
  try
    F.Caption := ACaption;
    F.Position := poScreenCenter;
    F.BorderIcons := [biSystemMenu, biMaximize];
    F.ClientWidth := 700;
    F.ClientHeight := 500;

    M := TMemo.Create(F);
    M.Parent := F;
    M.Align := alClient;
    M.ScrollBars := ssBoth;
    M.WordWrap := False;
    M.ReadOnly := True;  // se quiser apenas visualizar
    if Lines <> nil then
      M.Lines.Assign(Lines);

    F.ShowModal; // bloqueia até fechar
  finally
    F.Free; // destrói tudo
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  L: TStringList;
begin
  L := TStringList.Create;
  try
    L.Add('Linha 1');
    L.Add('Linha 2');
    L.Add('Linha 3');
    // L.LoadFromFile('C:\temp\arquivo.txt'); // se quiser carregar de arquivo
    ShowMemoModal('Visualizador - Modal', L);
  finally
    L.Free;
  end;
end;


end.
