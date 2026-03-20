program SHE_QLD;

uses
  Forms,
  SysUtils,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  oPrincipal in '..\..\Lib\Default\oPrincipal.pas',
  bPrincipal in '..\..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  StrInt in '..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\Lib\Default\StrIntImp.pas',
  hkHints in '..\..\Lib\Default\HkHints.pas',
  pPadr1 in '..\..\prj_2018\Padrao\ppadr1.pas' {FrmPadr1},
  pPadr2 in '..\..\prj_2018\Padrao\pPadr2.pas' {FrmPadr2},
  pPadr3 in '..\..\prj_2018\Padrao\pPadr3.pas' {FrmPadr3},
  pDefaultEdicao in '..\..\prj_2019\Default\pDefaultEdicao.pas' {FrmDefaultEdicao},
  pSobre in '..\..\Lib\Default\pSobre.pas' {FrmSobre},
  pSplash in '..\..\Lib\Default\pSplash.pas' {FrmSplash},
  pEmConstrucao in '..\..\Lib\Default\pEmConstrucao.pas' {FrmEmConstrucao},
  pLogin in '..\..\Lib\Default\pLogin.pas' {FrmLogin},
  pSenha in '..\..\Lib\Default\pSenha.pas' {FrmSenha},
  pImpressoras in '..\..\Lib\Default\pImpressoras.pas' {FrmImpressoras},
  pcad_pro_edi in '..\..\prj_2018\Padrao\pcad_pro_edi.pas' {frmcad_pro_edi},
  pProduto_Instrucao_Lavagem in '..\..\prj_2019\Produtos\pProduto_Instrucao_Lavagem.pas',
  pProduto_Imagem in '..\..\prj_2019\Produtos\pProduto_Imagem.pas' {FrmProduto_Imagem},
  peti_pro in '..\..\prj_2018\Padrao\peti_pro.pas' {frmeti_pro},
  qEST_ENT_ROM in '..\..\prj_2023\Estoque\qEST_ENT_ROM.pas' {qrpEST_ENT_ROM: TQuickRep},
  qEST_ETQ_PAD in '..\..\prj_2023\Estoque\qEST_ETQ_PAD.pas' {qrpEST_ETQ_PAD: TQuickRep},
  qEST_ETQ_PEQ in '..\..\prj_2023\Estoque\qEST_ETQ_PEQ.pas' {qrpEST_ETQ_PEQ: TQuickRep},
  pent_pro in '..\..\prj_2018\Padrao\pent_pro.pas' {frment_pro},
  pDefault in '..\..\Lib\Default\pDefault.pas' {FrmDefault},
  pEstoque in '..\..\prj_2023\Estoque\pEstoque.pas' {FrmEstoque},
  pDefaultGrid in '..\..\prj_2019\Default\pDefaultGrid.pas' {FrmDefaultGrid},
  pEstoqueDefeitos in '..\..\prj_2019\Estoque\pEstoqueDefeitos.pas' {FrmEstoqueDefeitos},
  pRelatorios in '..\..\prj_2019\Relatorios\pRelatorios.pas' {FrmRelatorios},
  pProduto_Pesquisa in '..\..\prj_2019\Produtos\pProduto_Pesquisa.pas' {FrmProduto_Pesquisa},
  pDefaultConsultaOld in '..\..\prj_2019\Default\pDefaultConsultaOld.pas' {FrmDefaultConsultaOld},
  pProduto in '..\..\prj_2019\Produtos\pProduto.pas' {FrmProduto},
  pEXP_SEP_COL in '..\Expedição\pEXP_SEP_COL.pas' {FrmEXP_SEP_COL},
  pEXP_SEP_MAN in '..\Expedição\pEXP_SEP_MAN.pas' {FrmEXP_SEP_MAN},
  pctr_ped in '..\..\prj_2018\Padrao\pctr_ped.pas' {frmctr_ped},
  pctr_rom in '..\..\prj_2018\Padrao\pctr_rom.pas' {frmctr_rom},
  ppesquisa_geral in '..\..\prj_2018\Padrao\ppesquisa_geral.pas' {FrmPesquisa_Geral};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SHE-EXP';
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
