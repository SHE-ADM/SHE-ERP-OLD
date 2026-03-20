program SHE_PCP;
{$I C:\Sheild\Projetos\Delphi\Fontes\Lib\FastMM\FastMM4Options.inc} // incluir arquivo de configuração
{$SetPEFlags $20} // Permite que o aplicativo acesse até 4GB de RAM em sistemas x64

uses
  FastMM4 in '..\Lib\FastMM\FastMM4.pas',
  DSiWin32 in '..\Lib\Default\DSiWin32.pas',
  hkHints in '..\Lib\Default\HkHints.pas',
  StrInt in '..\Lib\Default\StrInt.pas',
  StrIntImp in '..\Lib\Default\StrIntImp.pas',
  Forms,
  SysUtils,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  oPrincipal in '..\Lib\Default\oPrincipal.pas',
  bPrincipal in '..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  pSplash in '..\Lib\Default\pSplash.pas' {FrmSplash},
  pLogin in '..\Lib\Default\pLogin.pas' {FrmLogin},
  pSenha in '..\Lib\Default\pSenha.pas' {FrmSenha},
  pSobre in '..\Lib\Default\pSobre.pas' {FrmSobre},
  pImpressoras in '..\Lib\Default\pImpressoras.pas' {FrmImpressoras},
  pRelatorios in '..\Lib\Relatórios\pRelatorios.pas' {FrmRelatorios},
  pEstoque_ in '..\SHE-OLD\Padrao\pEstoque_.pas' {FrmEstoque_};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SHE-INI';

  FrmSplash := TFrmSplash.Create(Nil);
  FrmSplash.Refresh;
  FrmSplash.Show;

  FBird := TFBird.Create(Application);

  FrmLogin := TFrmLogin.Create(Nil);
  FrmLogin.Refresh;
  FrmLogin.ShowModal;

  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Initialize;

  FreeAndNil(FrmSplash);
  FreeAndNil(FrmLogin);

  oExecPrinter(Application.Handle,'Relatórios');
  
  Application.Run;
  FreeAndNil(FrmPrincipal);
end.
