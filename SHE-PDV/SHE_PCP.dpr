program SHE_PCP;

uses
  Forms,
  SysUtils,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  StrInt in '..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\Lib\Default\StrIntImp.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SHE-PCP';

//  FrmSplash := TFrmSplash.Create(Nil);
//  FrmSplash.Refresh;
//  FrmSplash.Show;
//
//  FBird := TFBird.Create(Nil);
//
//  FrmLogin := TFrmLogin.Create(Nil);
//  FrmLogin.Refresh;
//  FrmLogin.ShowModal;

  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Initialize;

//  FreeAndNil(FrmSplash);
//  FreeAndNil(FrmLogin);

  Application.Run;

  FreeAndNil(FrmPrincipal);
//  FreeAndNil(FBird);
end.
