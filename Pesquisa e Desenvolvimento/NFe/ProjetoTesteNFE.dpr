program ProjetoTesteNFE;

uses
  Forms,
  principal in 'principal.pas' {frmPrincipal},
  StrInt in 'StrInt.pas',
  StrIntImp in 'StrIntImp.pas',
  Unit1 in 'help\Unit1.pas' {frmHelp1},
  Unit2 in 'help\Unit2.pas' {frmHelp2},
  Unit3 in 'help\Unit3.pas' {frmHelp3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
