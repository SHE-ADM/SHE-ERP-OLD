program SHE_PCP;
{$I C:\Sheild\Projetos\Delphi\Fontes\Lib\FastMM\FastMM4Options.inc} // incluir arquivo de configuração
{$SetPEFlags $20} // Permite que o aplicativo acesse até 4GB de RAM em sistemas x64

uses
  FastMM4 in '..\..\..\Lib\FastMM\FastMM4.pas',
  Forms,
  SysUtils,
  hkHints in '..\..\..\Lib\Default\HkHints.pas',
  StrInt in '..\..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\..\Lib\Default\StrIntImp.pas',
  DelphiZXingQRCode in '..\..\..\Lib\Default\DelphiZXIngQRCode.pas',
  pLogin in '..\..\..\Lib\Default\pLogin.pas' {FrmLogin},
  pSobre in '..\..\..\Lib\Default\pSobre.pas' {FrmSobre},
  pSplash in '..\..\..\Lib\Default\pSplash.pas' {FrmSplash},
  oPrincipal in '..\..\..\Lib\Default\oPrincipal.pas',
  bPrincipal in '..\..\..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  pSHE_DEF_EDI in '..\..\..\Lib\Default\pSHE_DEF_EDI.pas' {FrmSHE_DEF_EDI},
  pSHE_DEF_PSQ in '..\..\..\Lib\Default\pSHE_DEF_PSQ.pas' {FrmSHE_DEF_PSQ},
  pDefault in '..\..\Padrao\Default\pDefault.pas' {FrmDefault},
  pDefaultConsultaGrid in '..\..\Padrao\Default\pDefaultConsultaGrid.pas' {FrmDefaultConsultaGrid},
  pDefaultConsultaOld in '..\..\Padrao\Default\pDefaultConsultaOld.pas' {FrmDefaultConsultaOld},
  pDefaultEdicao in '..\..\Padrao\Default\pDefaultEdicao.pas' {FrmDefaultEdicao},
  pDefaultGrid in '..\..\Padrao\Default\pDefaultGrid.pas' {FrmDefaultGrid},
  pPadr1 in '..\..\Padrao\ppadr1.pas' {FrmPadr1},
  pPadr2 in '..\..\Padrao\pPadr2.pas' {FrmPadr2},
  pPadr3 in '..\..\Padrao\pPadr3.pas' {FrmPadr3},
  pRelatorios in '..\..\..\Lib\Relatórios\pRelatorios.pas' {FrmRelatorios},
  pImpressoras in '..\..\..\Lib\Relatórios\pImpressoras.pas' {FrmImpressoras},
  pPesquisa in '..\..\Padrao\Consultas\pPesquisa.pas' {FrmPesquisa},
  pCAD_PRO_PSQ in '..\..\..\Lib\Produtos\pCAD_PRO_PSQ.pas' {FrmCAD_PRO_PSQ},
  pPSQCAD in '..\..\Padrao\Consultas\pPSQCAD.pas' {FrmPSQCAD},
  pPSQEND in '..\..\Padrao\Consultas\pPSQEND.pas' {FrmPSQEND},
  pProduto_Pesquisa in '..\..\Padrao\Consultas\pProduto_Pesquisa.pas' {FrmProduto_Pesquisa},
  pSenha in '..\..\..\Lib\Default\pSenha.pas' {FrmSenha},
  pNFeSaida in '..\..\Padrao\Fiscal\pNFeSaida.pas' {FrmNFeSaida},
  pNFeSaidaConsulta in '..\..\Padrao\Fiscal\pNFeSaidaConsulta.pas' {FrmNFeSaidaConsulta},
  qEST_ENT_ROM in '..\..\..\Lib\Relatórios\Estoque\qEST_ENT_ROM.pas' {qrpEST_ENT_ROM: TQuickRep},
  qEST_ETQ_PAD in '..\..\..\Lib\Relatórios\Estoque\qEST_ETQ_PAD.pas' {qrpEST_ETQ_PAD: TQuickRep},
  qEST_ETQ_PEQ in '..\..\..\Lib\Relatórios\Estoque\qEST_ETQ_PEQ.pas' {qrpEST_ETQ_PEQ: TQuickRep},
  pExporta in '..\..\..\Lib\Relatórios\pExporta.pas' {FrmExporta},
  pProduto in '..\..\Padrao\Produtos\pProduto.pas' {FrmProduto},
  pCAD_PRO_EST_DEL in '..\..\Padrao\Estoque\pCAD_PRO_EST_DEL.pas' {FrmCAD_PRO_EST_DEL},
  pent_pro in '..\..\Padrao\Estoque\pent_pro.pas' {frment_pro},
  pEstoque in '..\..\Padrao\Estoque\pEstoque.pas' {FrmEstoque},
  pEstoqueDefeitos in '..\..\Padrao\Estoque\pEstoqueDefeitos.pas' {FrmEstoqueDefeitos},
  peti_pro in '..\..\Padrao\Estoque\peti_pro.pas' {frmeti_pro};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SHE-PCP';

  FrmSplash := TFrmSplash.Create(Nil);
  FrmSplash.Refresh;
  FrmSplash.Show;

  FBird := TFBird.Create(Application);

  FrmLogin := TFrmLogin.Create(Nil);
  FrmLogin.ShowModal;

  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Initialize;

  FreeAndNil(FrmSplash);
  FreeAndNil(FrmLogin);

  oPRN_EXE(Application.Handle,'Relatórios');
  
  Application.Run;
  FreeAndNil(FrmPrincipal);
end.
