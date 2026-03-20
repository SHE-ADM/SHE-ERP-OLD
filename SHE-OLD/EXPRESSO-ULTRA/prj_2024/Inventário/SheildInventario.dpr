program SheildInventario;

uses
  Forms,
  SysUtils,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  oPrincipal in '..\..\Lib\Default\oPrincipal.pas',
  StrInt in '..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\Lib\Default\StrIntImp.pas',
  bPrincipal in '..\..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  hkHints in '..\..\Lib\Default\HkHints.pas',
  DSiWin32 in '..\..\Lib\Default\DSiWin32.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Sheild Inventário';

  FBird := TFBird.Create(Application);

  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Initialize;

  Application.Run;
  FreeAndNil(FrmPrincipal);
end.
