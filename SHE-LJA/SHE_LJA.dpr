program SHE_LJA;

uses
  Forms,
  SysUtils,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  oPrincipal in '..\..\Lib\Default\oPrincipal.pas',
  bPrincipal in '..\..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  StrInt in '..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\Lib\Default\StrIntImp.pas',
  hkHints in '..\..\Lib\Default\HkHints.pas',
  pLogin in '..\..\Lib\Default\pLogin.pas' {FrmLogin},
  pImpressoras in '..\..\Lib\Default\pImpressoras.pas' {FrmImpressoras},
  pSenha in '..\..\Lib\Default\pSenha.pas' {FrmSenha},
  pSobre in '..\..\Lib\Default\pSobre.pas' {FrmSobre},
  pSplash in '..\..\Lib\Default\pSplash.pas' {FrmSplash},
  pConstrucao in '..\..\Lib\Default\pConstrucao.pas' {FrmConstrucao},
  DSiWin32 in '..\..\Lib\Default\DSiWin32.pas',
  pExporta in '..\..\Lib\Default\pExporta.pas' {FrmExporta};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SHE-LJA';

  FrmSplash := TFrmSplash.Create(Nil);
  FrmSplash.Refresh;
  FrmSplash.Show;

  FBird := TFBird.Create(Nil);

  FrmLogin := TFrmLogin.Create(Nil);
  FrmLogin.Refresh;
  FrmLogin.ShowModal;

  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Initialize;

  FreeAndNil(FrmSplash);
  FreeAndNil(FrmLogin);

  Application.Run;

  FreeAndNil(FrmPrincipal);
  FreeAndNil(FBird);
end.
