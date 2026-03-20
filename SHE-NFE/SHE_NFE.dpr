program SHE_NFE;

uses
  Forms,
  principal in 'principal.pas' {FrmPrincipal},
  StrInt in 'StrInt.pas',
  StrIntImp in 'StrIntImp.pas',
  Unit1 in 'help\Unit1.pas' {frmHelp1},
  Unit2 in 'help\Unit2.pas' {frmHelp2},
  Unit3 in 'help\Unit3.pas' {frmHelp3};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SHE-NFE';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
