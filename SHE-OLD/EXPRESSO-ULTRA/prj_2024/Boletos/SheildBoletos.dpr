program SheildBoletos;

uses
  Forms,
  SysUtils,
  Windows,
  uPrincipal in 'uPrincipal.pas' {FrmBoletos},
  bPrincipal in '..\..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  oPrincipal in '..\..\Lib\Default\oPrincipal.pas',
  pLogin in '..\..\Lib\Default\pLogin.pas' {FrmLogin},
  pSenha in '..\..\Lib\Default\pSenha.pas' {FrmSenha},
  pSplash in '..\..\Lib\Default\pSplash.pas' {FrmSplash},
  StrInt in '..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\Lib\Default\StrIntImp.pas',
  superobject in '..\..\Lib\Default\superobject.pas',
  uJSON in '..\..\Lib\Default\uJSON.pas',
  pSobre in '..\..\Lib\Default\pSobre.pas' {FrmSobre},
  hkHints in '..\..\Lib\Default\HkHints.pas',
  DSiWin32 in '..\..\Lib\Default\DSiWin32.pas';

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
    Application.Title := 'SHE BOL';
  FrmSplash := TFrmSplash.Create(Nil);
    FrmSplash.Refresh;
    FrmSplash.Show;

    FBird := TFBird.Create(Application);
    oODatabase(FBird.DBErp);

    FrmLogin := TFrmLogin.Create(Nil);
    FrmLogin.Refresh;
    FrmLogin.ShowModal;

    Application.CreateForm(TFrmBoletos, FrmBoletos);
  Application.Initialize;

    FreeAndNil(FrmSplash);
    FreeAndNil(FrmLogin);

    Application.Run;
    FreeAndNil(FrmBoletos);
  end;  
end.
