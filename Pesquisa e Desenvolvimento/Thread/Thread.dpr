program Thread;

uses
  Forms,
  bPrincipal in '..\..\..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  oPrincipal in '..\..\..\Lib\Default\oPrincipal.pas',
  StrInt in '..\..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\..\Lib\Default\StrIntImp.pas',
  DSiWin32 in '..\..\..\Lib\Default\DSiWin32.pas',
  hkHints in '..\..\..\Lib\Default\HkHints.pas',
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  pThread in '..\..\..\Lib\Default\pThread.pas' {FrmThread},
  BMDThread in '..\..\..\..\..\..\Admin\Install\Embarcadero\D7\BMDThread\BMDThread.pas',
  pTRunProcessThread in 'pTRunProcessThread.pas' {FrmTRunProcessThread};

{$R *.res}

begin
  Application.Initialize;

  FBird := TFBird.Create(Application);

  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
