program SHE_CON;

uses
  Forms,
  SysUtils,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  bPrincipal in '..\..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  pSplash in '..\..\Lib\Default\pSplash.pas' {FrmSplash},
  oPrincipal in '..\..\Lib\Default\oPrincipal.pas',
  StrInt in '..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\Lib\Default\StrIntImp.pas',
  hkHints in '..\..\Lib\Default\HkHints.pas',
  pIMG_PAD_INF in '..\..\Lib\Default\pIMG_PAD_INF.pas' {FrmIMG_PAD_INF};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Sheild Consultas';

  FrmSplash := TFrmSplash.Create(Nil);
  FrmSplash.Refresh;
  FrmSplash.Show;

  FBird := TFBird.Create(Application);

  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Initialize;

  FreeAndNil(FrmSplash);

  Application.Run;
  FreeAndNil(FrmPrincipal);
end.
