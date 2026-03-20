program SHE_INI;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  oPrincipal in '..\..\Lib\Default\oPrincipal.pas',
  StrInt in '..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\Lib\Default\StrIntImp.pas',
  bPrincipal in '..\..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  hkHints in '..\..\Lib\Default\HkHints.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFBird, FBird);
  Application.Run;
end.
