program SHE_API_BOL;
{$I C:\Sheild\Projetos\Delphi\Fontes\Lib\FastMM\FastMM4Options.inc} // incluir arquivo de configuração
{$SetPEFlags $20} // Permite que o aplicativo acesse até 4GB de RAM em sistemas x64

uses
  FastMM4,
  uJSON in '..\..\Lib\Default\uJSON.pas',
  superobject in '..\..\Lib\Default\superobject.pas',

  DSiWin32 in '..\..\Lib\Default\DSiWin32.pas',
  hkHints in '..\..\Lib\Default\HkHints.pas',

  Forms,
  SysUtils,
  
  pSplash in '..\..\Lib\Default\pSplash.pas' {FrmSplash},
  pSobre in '..\..\Lib\Default\pSobre.pas' {FrmSobre},
  oPrincipal in '..\..\Lib\Default\oPrincipal.pas',
  bPrincipal in '..\..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  uPrincipal in 'uPrincipal.pas' {FrmSHE_API_BOL},
  StrInt in '..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\Lib\Default\StrIntImp.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SHE-API-BOL';
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
