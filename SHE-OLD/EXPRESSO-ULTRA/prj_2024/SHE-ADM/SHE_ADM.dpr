program SHE_ADM;

uses
  Forms,
  SysUtils,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  oPrincipal in '..\..\Lib\Default\oPrincipal.pas',
  bPrincipal in '..\..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  StrInt in '..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\Lib\Default\StrIntImp.pas',
  pThread in '..\..\Lib\Default\pThread.pas' {FrmThread},
  hkHints in '..\..\Lib\Default\HkHints.pas',
  PBThreadedSplashscreenU in '..\..\prj_2019\Pesquisa e Desenvolvimento\Thread Splash\PBThreadedSplashscreenU.pas',
  pLogin in '..\..\Lib\Default\pLogin.pas' {FrmLogin},
  pImpressoras in '..\..\Lib\Default\pImpressoras.pas' {FrmImpressoras},
  pSenha in '..\..\Lib\Default\pSenha.pas' {FrmSenha},
  pSobre in '..\..\Lib\Default\pSobre.pas' {FrmSobre},
  pSplash in '..\..\Lib\Default\pSplash.pas' {FrmSplash},
  pConstrucao in '..\..\Lib\Default\pConstrucao.pas' {FrmConstrucao},
  DSiWin32 in '..\..\Lib\Default\DSiWin32.pas',
  pDefaultConsultaOld in '..\..\prj_2019\Default\pDefaultConsultaOld.pas' {FrmDefaultConsultaOld},
  pProduto in '..\..\prj_2019\Produtos\pProduto.pas' {FrmProduto},
  pPadr3 in '..\..\prj_2018\Padrao\pPadr3.pas' {FrmPadr3},
  pcad_pro_edi in '..\..\prj_2018\Padrao\pcad_pro_edi.pas' {frmcad_pro_edi},
  pDefaultEdicao in '..\..\prj_2019\Default\pDefaultEdicao.pas' {FrmDefaultEdicao},
  pProduto_Instrucao_Lavagem in '..\..\prj_2019\Produtos\pProduto_Instrucao_Lavagem.pas' {FrmProduto_Instrucao_Lavagem},
  pPadr2 in '..\..\prj_2018\Padrao\pPadr2.pas' {FrmPadr2},
  pctr_ped in '..\..\prj_2018\Padrao\pctr_ped.pas' {frmctr_ped},
  ppesquisa_geral in '..\..\prj_2018\Padrao\ppesquisa_geral.pas' {FrmPesquisa_Geral};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SHE-ADM';
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

  Application.Run;
  FreeAndNil(FrmPrincipal);
end.
