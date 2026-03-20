program SHE_PCP;

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
  pPadr2 in '..\..\prj_2018\Padrao\pPadr2.pas' {FrmPadr2},
  pctr_ped in '..\..\prj_2018\Padrao\pctr_ped.pas' {frmctr_ped},
  ppesquisa_geral in '..\..\prj_2018\Padrao\ppesquisa_geral.pas' {FrmPesquisa_Geral},
  pEXP_SEP_MAN in '..\Expedição\pEXP_SEP_MAN.pas' {FrmEXP_SEP_MAN},
  pDefaultEdicao in '..\..\prj_2019\Default\pDefaultEdicao.pas' {FrmDefaultEdicao},
  pEXP_SEP_COL in '..\Expedição\pEXP_SEP_COL.pas' {FrmEXP_SEP_COL},
  qEST_ENT_ROM in '..\..\prj_2023\Estoque\qEST_ENT_ROM.pas' {qrpEST_ENT_ROM: TQuickRep},
  qEST_ETQ_PAD in '..\..\prj_2023\Estoque\qEST_ETQ_PAD.pas' {qrpEST_ETQ_PAD: TQuickRep},
  qEST_ETQ_PEQ in '..\..\prj_2023\Estoque\qEST_ETQ_PEQ.pas' {qrpEST_ETQ_PEQ: TQuickRep},
  pDefault in '..\..\Lib\Default\pDefault.pas' {FrmDefault},
  pEstoque in '..\..\prj_2023\Estoque\pEstoque.pas' {FrmEstoque},
  pent_pro in '..\..\prj_2018\Padrao\pent_pro.pas' {frment_pro},
  peti_pro in '..\..\prj_2018\Padrao\peti_pro.pas' {frmeti_pro},
  pProduto_Pesquisa in '..\..\prj_2019\Produtos\pProduto_Pesquisa.pas' {FrmProduto_Pesquisa},
  pRelatorios in '..\..\prj_2019\Relatorios\pRelatorios.pas' {FrmRelatorios};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SHE-PCP';
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
