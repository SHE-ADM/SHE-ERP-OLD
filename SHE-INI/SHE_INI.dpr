program SHE_INI;
{$I C:\Sheild\Projetos\Delphi\Fontes\Lib\FastMM\FastMM4Options.inc} // incluir arquivo de configuração
{$SetPEFlags $20} // Permite que o aplicativo acesse até 4GB de RAM em sistemas x64

uses
  FastMM4 in '..\..\..\Lib\FastMM\FastMM4.pas',
  Forms,
  SysUtils,
  hkHints in '..\Lib\Default\HkHints.pas',
  StrInt in '..\Lib\Default\StrInt.pas',
  StrIntImp in '..\Lib\Default\StrIntImp.pas',
  DelphiZXingQRCode in '..\Lib\Default\DelphiZXIngQRCode.pas',
  pSplash in '..\Lib\Default\pSplash.pas' {FrmSplash},
  pLogin in '..\Lib\Default\pLogin.pas',
  pSenha in '..\Lib\Default\pSenha.pas',
  pSobre in '..\Lib\Default\pSobre.pas' {FrmSobre},
  pConstrucao in '..\Lib\Default\pConstrucao.pas' {FrmConstrucao},
  pImpressoras in '..\Lib\Relatórios\pImpressoras.pas' {FrmImpressoras},
  oPrincipal in '..\Lib\Default\oPrincipal.pas',
  bPrincipal in '..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SHE-INI';
  FrmSplash := TFrmSplash.Create(Nil);
  FrmSplash.Refresh;
  FrmSplash.Show;

  FBird := TFBird.Create(Application);

  FrmLogin := TFrmLogin.Create(Nil);
  FrmLogin.ShowModal;

  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Initialize;

  oPRN_EXE(Application.Handle,'Relatórios');

  FreeAndNil(FrmSplash);
  FreeAndNil(FrmLogin);

  Application.Run;
  FreeAndNil(FrmPrincipal);
end.
