program SheildStream;

uses
  Forms,
  SysUtils,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  bPrincipal in '..\..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  oPrincipal in '..\..\Lib\Default\oPrincipal.pas',
  StrInt in '..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\Lib\Default\StrIntImp.pas',
  qFicha_Tecnica in '..\..\Lib\Relatórios\Produtos\qFicha_Tecnica.pas' {qrpFicha_Tecnica: TQuickRep},
  hkHints in '..\..\Lib\Default\HkHints.pas',
  pExporta in '..\..\Lib\Relatórios\pExporta.pas' {FrmExporta};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Sheild Stream';

  FBird := TFBird.Create(Application);

  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFBird, FBird);
  Application.CreateForm(TqrpFicha_Tecnica, qrpFicha_Tecnica);
  Application.CreateForm(TFrmExporta, FrmExporta);
  Application.Initialize;

  Application.Run;
  FreeAndNil(FrmPrincipal);
end.
