program SHE_BOL;

{$I C:\Sheild\Projetos\Delphi\Fontes\Lib\FastMM\FastMM4Options.inc} // incluir arquivo de configuração
{$SetPEFlags $20} // Permite que o aplicativo acesse até 4GB de RAM em sistemas x64

uses
  FastMM4,
  DSiWin32 in '..\Lib\Default\DSiWin32.pas',
  hkHints in '..\Lib\Default\HkHints.pas',
  StrInt in '..\Lib\Default\StrInt.pas',
  StrIntImp in '..\Lib\Default\StrIntImp.pas',
  superobject in '..\Lib\Default\superobject.pas',
  uJSON in '..\Lib\Default\uJSON.pas',
  Forms,
  SysUtils,
  Windows,
  uPrincipal in 'uPrincipal.pas' {FrmSHE_BOL},
  bPrincipal in '..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  oPrincipal in '..\Lib\Default\oPrincipal.pas',
  pSplash in '..\Lib\Default\pSplash.pas' {FrmSplash},
  pLogin in '..\Lib\Default\pLogin.pas' {FrmLogin},
  pSenha in '..\Lib\Default\pSenha.pas' {FrmSenha},
  pSobre in '..\Lib\Default\pSobre.pas' {FrmSobre},
  oIBXRetryTransaction in '..\Lib\Default\oIBXRetryTransaction.pas';

{$R *.res}

var
  Handle: THandle;
begin
  Handle := FindWindow('TFrmBoletos',Nil);

  if Handle <> 0 then
  begin
    Application.MessageBox('Sistema já está em execução.','Atenção !',mb_Ok+mb_IconExclamation);

    if not ISWindowVisible(Handle) then
               ShowWindow (Handle,SW_RESTORE);

    SetForegroundWindow(Handle);
    Application.Terminate;
  end else
  begin
    Application.Initialize;
    Application.Title := 'SHE-BOL';

    FrmSplash := TFrmSplash.Create(Nil);
    FrmSplash.Refresh;
    FrmSplash.Show;

    FBird := TFBird.Create(Application);

    FrmLogin := TFrmLogin.Create(Nil);
    FrmLogin.Refresh;
    FrmLogin.ShowModal;

    Application.CreateForm(TFrmSHE_BOL, FrmSHE_BOL);
  Application.Initialize;

    FreeAndNil(FrmSplash);
    FreeAndNil(FrmLogin);

    Application.Run;
    FreeAndNil(FrmSHE_BOL);
  end;  
end.
