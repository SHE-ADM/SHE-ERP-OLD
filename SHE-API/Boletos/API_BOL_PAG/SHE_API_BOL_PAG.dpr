program SHE_API_BOL_PAG;
{$I C:\Sheild\Projetos\Delphi\Fontes\Lib\FastMM\FastMM4Options.inc} // incluir arquivo de configuração
{$SetPEFlags $20} // Permite que o aplicativo acesse até 4GB de RAM em sistemas x64

uses
  FastMM4,

  
  Forms,
  SysUtils,
  uPrincipal in 'uPrincipal.pas' {FrmSHE_API_BOL};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SHE-API-BOL-PAG';
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
