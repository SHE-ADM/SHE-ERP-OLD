{$SetPEFlags $20}  // Permite que o aplicativo acesse até 4GB de RAM em sistemas x64

program OutOfMemoryException;

uses
  FastMM4,
  Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  MemoryUtils in 'MemoryUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
