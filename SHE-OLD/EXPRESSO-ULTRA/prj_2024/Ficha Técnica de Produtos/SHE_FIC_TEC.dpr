program SHE_FIC_TEC;

uses
  Forms,
  SysUtils,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  bPrincipal in '..\..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  oPrincipal in '..\..\Lib\Default\oPrincipal.pas',
  StrInt in '..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\Lib\Default\StrIntImp.pas',
  hkHints in '..\..\Lib\Default\HkHints.pas',
  qFicha_Tecnica in '..\Relatórios\Produtos\qFicha_Tecnica.pas' {qrpFicha_Tecnica: TQuickRep},
  DSiWin32 in '..\..\Lib\Default\DSiWin32.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Sheild - Ficha Técnica de Produtos';
  FBird := TFBird.Create(Application);

  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Initialize;

  Application.Run;
  FreeAndNil(FrmPrincipal);
end.
