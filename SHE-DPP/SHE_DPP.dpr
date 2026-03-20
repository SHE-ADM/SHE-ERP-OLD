program SHE_DPP;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  oPrincipal in '..\Lib\Default\oPrincipal.pas',
  DSiWin32 in '..\Lib\Default\DSiWin32.pas',
  StrInt in '..\Lib\Default\StrInt.pas',
  StrIntImp in '..\Lib\Default\StrIntImp.pas',
  bPrincipal in '..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  hkHints in '..\Lib\Default\HkHints.pas',
  DelphiZXingQRCode in '..\Lib\Default\DelphiZXIngQRCode.pas',
  oIBXRetryTransaction in '..\Lib\Default\oIBXRetryTransaction.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SHE-DPP';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.








