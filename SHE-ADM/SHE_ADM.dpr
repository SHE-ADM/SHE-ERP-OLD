program SHE_ADM;
{$I C:\Sheild\Projetos\Delphi\Fontes\Lib\FastMM\FastMM4Options.inc} // incluir arquivo de configuração
{$SetPEFlags $20} // Permite que o aplicativo acesse até 4GB de RAM em sistemas x64

uses
  FastMM4 in '..\Lib\FastMM\FastMM4.pas',
  hkHints in '..\Lib\Default\HkHints.pas',
  StrInt in '..\Lib\Default\StrInt.pas',
  StrIntImp in '..\Lib\Default\StrIntImp.pas',
  Forms,
  SysUtils,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  oPrincipal in '..\Lib\Default\oPrincipal.pas',
  bPrincipal in '..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  pSplash in '..\Lib\Default\pSplash.pas' {FrmSplash},
  pLogin in '..\Lib\Default\pLogin.pas' {FrmLogin},
  pSenha in '..\Lib\Default\pSenha.pas' {FrmSenha},
  pSobre in '..\Lib\Default\pSobre.pas' {FrmSobre},
  pRelatorios in '..\Lib\Relatórios\pRelatorios.pas' {FrmRelatorios},
  qGER_VEN_FAT_CRD in '..\Lib\Relatórios\Gerenciais\Vendas\QGER_VEN_FAT_CRD.pas' {QRPGER_VEN_FAT_CRD: TQuickRep},
  qGER_EST_UCOM_UPESO in '..\Lib\Relatórios\Gerenciais\Estoque\QGER_EST_UCOM_UPESO.pas' {QRPGER_EST_UCOM_UPESO: TQuickRep},
  pPadr3 in '..\SHE-OLD\Padrao\pPadr3.pas' {FrmPadr3},
  pImpressoras in '..\Lib\Relatórios\pImpressoras.pas' {FrmImpressoras},
  pcai_abr in '..\Lib\Caixa\pcai_abr.pas' {frmcai_abr},
  pcai_fec in '..\Lib\Caixa\pcai_fec.pas' {frmcai_fec};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SHE-INI';

  FrmSplash := TFrmSplash.Create(Nil);
  FrmSplash.Refresh;
  FrmSplash.Show;

  FBird := TFBird.Create(Application);

  FrmLogin := TFrmLogin.Create(Nil);
  FrmLogin.Refresh;
  FrmLogin.ShowModal;

  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Initialize;

  FreeAndNil(FrmSplash);
  FreeAndNil(FrmLogin);

  oPRN_EXE(Application.Handle,'Relatórios');
  
  Application.Run;
  FreeAndNil(FrmPrincipal);
end.
