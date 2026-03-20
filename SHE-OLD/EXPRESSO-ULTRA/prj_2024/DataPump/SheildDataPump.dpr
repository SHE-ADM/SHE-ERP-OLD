program SheildDataPump;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  bPrincipal in '..\..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  oPrincipal in '..\..\Lib\Default\oPrincipal.pas',
  StrInt in '..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\Lib\Default\StrIntImp.pas',
  hkHints in '..\..\Lib\Default\HkHints.pas',
  DSiWin32 in '..\..\Lib\Default\DSiWin32.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Sheild DataPump';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
