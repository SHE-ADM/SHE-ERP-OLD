program SHE_CPA;

uses
  Forms,
  SysUtils,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  oPrincipal in '..\..\Lib\Default\oPrincipal.pas',
  bPrincipal in '..\..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  StrInt in '..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\Lib\Default\StrIntImp.pas',
  pThread in '..\..\Lib\Default\pThread.pas' {FrmThread},
  hkHints in '..\..\Lib\Default\HkHints.pas',
  PBThreadedSplashscreenU in '..\..\prj_2019\Pesquisa e Desenvolvimento\Thread Splash\PBThreadedSplashscreenU.pas',
  pLogin in '..\..\Lib\Default\pLogin.pas' {FrmLogin},
  pImpressoras in '..\..\Lib\Default\pImpressoras.pas' {FrmImpressoras},
  pSenha in '..\..\Lib\Default\pSenha.pas' {FrmSenha},
  pSobre in '..\..\Lib\Default\pSobre.pas' {FrmSobre},
  pSplash in '..\..\Lib\Default\pSplash.pas' {FrmSplash},
  pConstrucao in '..\..\Lib\Default\pConstrucao.pas' {FrmConstrucao},
  DSiWin32 in '..\..\Lib\Default\DSiWin32.pas',
  pSHE_DEF_PSQ in '..\..\Lib\Default\pSHE_DEF_PSQ.pas' {FrmSHE_DEF_PSQ},
  pProdutos in '..\Produtos\pProdutos.pas' {FrmProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SHE-PCA';
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

  Application.Run;
  FreeAndNil(FrmPrincipal);
end.
