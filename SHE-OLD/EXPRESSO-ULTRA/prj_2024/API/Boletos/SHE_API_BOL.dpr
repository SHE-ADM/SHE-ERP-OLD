program SHE_API_BOL;

uses
  Forms,
  SysUtils,
  uPrincipal in 'uPrincipal.pas' {FrmSHE_API_BOL},
  bPrincipal in '..\..\..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  pSobre in '..\..\..\Lib\Default\pSobre.pas' {FrmSobre},
  pSplash in '..\..\..\Lib\Default\pSplash.pas' {FrmSplash},
  oPrincipal in '..\..\..\Lib\Default\oPrincipal.pas',
  StrInt in '..\..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\..\Lib\Default\StrIntImp.pas',
  superobject in '..\..\..\Lib\Default\superobject.pas',
  uJSON in '..\..\..\Lib\Default\uJSON.pas',
  hkHints in '..\..\..\Lib\Default\HkHints.pas',
  DSiWin32 in '..\..\..\Lib\Default\DSiWin32.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SHE-OCX-BOL';
  FrmSplash := TFrmSplash.Create(Nil);
  FrmSplash.Refresh;
  FrmSplash.Show;

  FBird := TFBird.Create(Application);

  Application.CreateForm(TFrmSHE_API_BOL, FrmSHE_API_BOL);
  Application.Initialize;

  FreeAndNil(FrmSplash);
  
  Application.Run;
  FreeAndNil(FrmSHE_API_BOL);
end.
