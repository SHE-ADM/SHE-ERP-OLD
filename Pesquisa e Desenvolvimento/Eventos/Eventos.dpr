program Eventos;

uses
  Forms,
  uEventos in 'uEventos.pas' {FrmEventos},
  oPrincipal in '..\..\Lib\Default\oPrincipal.pas',
  StrInt in '..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\Lib\Default\StrIntImp.pas',
  bPrincipal in '..\..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  hkHints in '..\..\Lib\Default\HkHints.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmEventos, FrmEventos);
  Application.Run;
end.
