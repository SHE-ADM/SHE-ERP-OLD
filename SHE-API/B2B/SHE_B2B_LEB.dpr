program SHE_B2B_LEB;
{$I C:\Sheild\Projetos\Delphi\Fontes\Lib\FastMM\FastMM4Options.inc} // incluir arquivo de configuração
{$SetPEFlags $20} // Permite que o aplicativo acesse até 4GB de RAM em sistemas x64

uses
  FastMM4 in '..\..\..\Lib\FastMM\FastMM4.pas',
  Forms,
  SysUtils,
  Windows,
  oIBXRetryTransaction in '..\..\Lib\Default\oIBXRetryTransaction.pas',
  DelphiZXingQRCode in '..\..\Lib\Default\DelphiZXIngQRCode.pas',
  hkHints in '..\..\Lib\Default\HkHints.pas',
  StrInt in '..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\Lib\Default\StrIntImp.pas',
  pSplash in '..\..\Lib\Default\pSplash.pas' {FrmSplash},
  pSobre in '..\..\Lib\Default\pSobre.pas' {FrmSobre},
  oPrincipal in '..\..\Lib\Default\oPrincipal.pas',
  bPrincipal in '..\..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  uPrincipal in 'uPrincipal.pas' {FrmSHE_B2B_LEB};

{$R *.res}

//var
  //Handle: THandle;
begin
  //Handle := 0;//FindWindow('TFrmPrincipalB2B',Nil);

  //if Handle <> 0 then
  //begin

    //if not ISWindowVisible(Handle) then
    //ShowWindow (Handle,SW_RESTORE);

    //SetForegroundWindow(Handle);
    //Application.Terminate;
  //end else
  begin
    Application.Initialize;
    Application.Title := 'SHE-B2B-LEB';

    FrmSplash := TFrmSplash.Create(Nil);
    FrmSplash.Refresh;
    FrmSplash.Show;

    FBird := TFBird.Create(Application);

    Application.CreateForm(TFrmSHE_B2B_LEB, FrmSHE_B2B_LEB);
    Application.Initialize;

    FreeAndNil(FrmSplash);

    Application.Run;
    FreeAndNil(FrmSHE_B2B_LEB);
  end;
end.
