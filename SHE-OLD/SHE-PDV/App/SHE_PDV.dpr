program SHE_PDV;
{$I C:\Sheild\Projetos\Delphi\Fontes\Lib\FastMM\FastMM4Options.inc} // incluir arquivo de configuração
{$SetPEFlags $20} // Permite que o aplicativo acesse até 4GB de RAM em sistemas x64

uses
  FastMM4 in '..\..\..\Lib\FastMM\FastMM4.pas',
  Forms,
  SysUtils,
  DelphiZXingQRCode in '..\..\..\Lib\Default\DelphiZXIngQRCode.pas',
  hkHints in '..\..\..\Lib\Default\HkHints.pas',
  StrInt in '..\..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\..\Lib\Default\StrIntImp.pas',
  pSplash in '..\..\..\Lib\Default\pSplash.pas' {FrmSplash},
  pLogin in '..\..\..\Lib\Default\pLogin.pas' {FrmLogin},
  pSenha in '..\..\..\Lib\Default\pSenha.pas' {FrmSenha},
  pSobre in '..\..\..\Lib\Default\pSobre.pas' {FrmSobre},
  oPrincipal in '..\..\..\Lib\Default\oPrincipal.pas',
  bPrincipal in '..\..\..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  pSHE_DEF_EDI in '..\..\..\Lib\Default\pSHE_DEF_EDI.pas' {FrmSHE_DEF_EDI},
  pSHE_DEF_PSQ in '..\..\..\Lib\Default\pSHE_DEF_PSQ.pas' {FrmSHE_DEF_PSQ},
  pDefault in '..\..\Padrao\Default\pDefault.pas' {FrmDefault},
  pDefaultConsulta in '..\..\Padrao\Default\pDefaultConsulta.pas' {FrmDefaultConsulta},
  pDefaultConsultaGrid in '..\..\Padrao\Default\pDefaultConsultaGrid.pas' {FrmDefaultConsultaGrid},
  pDefaultConsultaOld in '..\..\Padrao\Default\pDefaultConsultaOld.pas' {FrmDefaultConsultaOld},
  pDefaultEdicao in '..\..\Padrao\Default\pDefaultEdicao.pas' {FrmDefaultEdicao},
  pDefaultGrid in '..\..\Padrao\Default\pDefaultGrid.pas' {FrmDefaultGrid},
  pConsulta in '..\..\Padrao\Default\pConsulta.pas' {FrmConsulta},
  pPadr1 in '..\..\Padrao\ppadr1.pas' {FrmPadr1},
  pPadr2 in '..\..\Padrao\pPadr2.pas' {FrmPadr2},
  pPadr3 in '..\..\Padrao\pPadr3.pas' {FrmPadr3},
  pimporta_geral in '..\..\Padrao\pimporta_geral.pas' {frmimporta_geral},
  pimporta_geral_favorecido in '..\..\Padrao\pimporta_geral_favorecido.pas' {frmimporta_geral_favorecido},
  pRelatorios in '..\..\..\Lib\Relatórios\pRelatorios.pas' {FrmRelatorios},
  pImpressoras in '..\..\..\Lib\Relatórios\pImpressoras.pas' {FrmImpressoras},
  pExporta in '..\..\..\Lib\Relatórios\pExporta.pas' {FrmExporta},
  pemail in '..\..\Padrao\pemail.pas' {FrmEmail},
  pPesquisa in '..\..\Padrao\Consultas\pPesquisa.pas' {FrmPesquisa},
  pPSQCAD in '..\..\Padrao\Consultas\pPSQCAD.pas' {FrmPSQCAD},
  pPSQEND in '..\..\Padrao\Consultas\pPSQEND.pas' {FrmPSQEND},
  pProduto_Pesquisa in '..\..\Padrao\Consultas\pProduto_Pesquisa.pas' {FrmProduto_Pesquisa},
  pProduto in '..\..\Padrao\Produtos\pProduto.pas' {FrmProduto},
  pPesquisaCodigoMunicipal in '..\..\Padrao\Consultas\pPesquisaCodigoMunicipal.pas' {FrmPesquisaCodigoMunicipal},
  pPesquisaLogradouros in '..\..\Padrao\Consultas\pPesquisaLogradouros.pas' {FrmPesquisaLogradouros},
  pProduto_Imagem in '..\..\Padrao\Produtos\pProduto_Imagem.pas' {FrmProduto_Imagem},
  pCAD_PRO_PSQ in '..\..\..\Lib\Produtos\pCAD_PRO_PSQ.pas' {FrmCAD_PRO_PSQ},
  pCAD_PRO_EDI in '..\..\Padrao\Produtos\pcad_pro_edi.pas' {FrmCAD_PRO_EDI},
  pConsultaCNPJ in '..\..\Padrao\Consultas\pConsultaCNPJ.pas' {FrmConsultaCNPJ},
  pRelatorios_OLD in '..\..\Padrao\Relatorios\pRelatorios_OLD.pas' {FrmRelatorios_OLD},
  qFicha_Tecnica in '..\..\..\Lib\Relatórios\Produtos\qFicha_Tecnica.pas' {qrpFicha_Tecnica: TQuickRep},
  pProduto_Instrucao_Lavagem in '..\..\Padrao\Produtos\pProduto_Instrucao_Lavagem.pas' {FrmProduto_Instrucao_Lavagem},
  pcad_cli in '..\..\Padrao\Cadastros\pcad_cli.pas' {frmcad_cli},
  pcad_cli_edi in '..\..\Padrao\Cadastros\pcad_cli_edi.pas' {frmcad_cli_edi},
  pcad_cli_inf in '..\..\Padrao\Cadastros\pcad_cli_inf.pas' {frmcad_cli_inf},
  pcad_rep in '..\..\Padrao\Cadastros\pCAD_REP.pas' {frmcad_rep},
  pcad_rep_edi in '..\..\Padrao\Cadastros\pcad_rep_edi.pas' {frmcad_rep_edi},
  pcad_tra in '..\..\Padrao\Cadastros\pCAD_TRA.pas' {frmcad_tra},
  pcad_tra_edi in '..\..\Padrao\Cadastros\pcad_tra_edi.pas' {frmcad_tra_edi},
  pcad_for in '..\..\Padrao\Cadastros\pcad_for.pas' {frmcad_for},
  pcad_for_edi in '..\..\Padrao\Cadastros\pcad_for_edi.pas' {frmcad_for_edi},
  ptab_nat in '..\..\Padrao\Tabelas\ptab_nat.pas' {frmtab_nat},
  ptab_nat_edi in '..\..\Padrao\Tabelas\ptab_nat_edi.pas' {frmtab_nat_edi},
  ptab_pag in '..\..\Padrao\Tabelas\ptab_pag.pas' {frmtab_pag},
  pctr_prg in '..\..\Padrao\Programados\pctr_prg.pas' {frmctr_prg},
  pven_prg in '..\..\Padrao\Programados\pven_prg.pas' {frmven_prg},
  pProduto_Devolucao_Cancelamento in '..\..\Padrao\Produtos\pProduto_Devolucao_Cancelamento.pas' {FrmProduto_Devolucao_Cancelamento},
  prelatorio_geral in '..\..\Padrao\Relatorios\prelatorio_geral.pas' {frmrelatorio_geral},
  qcob_ped in '..\..\Padrao\Relatorios\qcob_ped.pas' {qrpcob_ped: TQuickRep},
  qcob_ped_oca in '..\..\Padrao\Relatorios\qcob_ped_oca.pas' {qrpcob_ped_oca: TQuickRep},
  qcob_rom in '..\..\Padrao\Relatorios\qcob_rom.pas' {qrpcob_rom: TQuickRep},
  qcob_rom_ref in '..\..\Padrao\Relatorios\qcob_rom_ref.pas' {qrpcob_rom_ref: TQuickRep},
  qger_prg_pro_ger in '..\..\Padrao\Relatorios\qger_prg_pro_ger.pas' {qrpger_prg_pro_ger: TQuickRep},
  qsep_ped in '..\..\Padrao\Relatorios\qsep_ped.pas' {qrpsep_ped: TQuickRep},
  qven_con in '..\..\Padrao\Relatorios\qven_con.pas' {qrpven_con: TQuickRep},
  qven_ped in '..\..\Padrao\Relatorios\qven_ped.pas' {qrpven_ped: TQuickRep},
  qven_prc in '..\..\Padrao\Relatorios\qven_prc.pas' {qrpven_prc: TQuickRep},
  qven_prg in '..\..\Padrao\Relatorios\qven_prg.pas' {qrpven_prg: TQuickRep},
  qrom_con_001 in '..\..\Padrao\Relatorios\qrom_con_001.pas' {qrprom_con_001: TQuickRep},
  parquivo_geral in '..\..\Padrao\Relatorios\parquivo_geral.pas' {frmarquivo_geral},
  pAviso_Reserva in '..\..\Padrao\Vendas\pAviso_Reserva.pas' {FrmAviso_Reserva},
  pctr_ped in '..\..\Padrao\Vendas\pctr_ped.pas' {frmctr_ped},
  pctr_ped_bai in '..\..\Padrao\Vendas\pctr_ped_bai.pas' {frmctr_ped_bai},
  pctr_rom in '..\..\Padrao\Vendas\pctr_rom.pas' {frmctr_rom},
  pven_ped in '..\..\Padrao\Vendas\pven_ped.pas' {FrmVEN_PED},
  pven_rom in '..\..\Padrao\Vendas\pven_rom.pas' {frmven_rom},
  pnfe_cce in '..\..\Padrao\Fiscal\pnfe_cce.pas' {frmnfe_cce},
  pNFeConsulta in '..\..\Padrao\Fiscal\pNFeConsulta.pas' {FrmNFeConsulta},
  pNFeSaida in '..\..\Padrao\Fiscal\pNFeSaida.pas' {FrmNFeSaida},
  pNFeSaidaConsulta in '..\..\Padrao\Fiscal\pNFeSaidaConsulta.pas' {FrmNFeSaidaConsulta},
  pven_nfd in '..\..\Padrao\Fiscal\pven_nfd.pas' {frmven_nfd},
  pNFeConsultaSefaz in '..\..\..\Lib\Sefaz\pNFeConsultaSefaz.pas' {FrmNFeConsultaSefaz},
  pven_nfe in '..\..\..\Lib\Fiscal\pven_nfe.pas' {FrmVEN_NFE},
  pctr_nfe in '..\..\..\Lib\Fiscal\pctr_nfe.pas' {frmctr_nfe},
  QGER_PDV_CRD in '..\..\..\Lib\Relatórios\Gerenciais\Vendas\QGER_PDV_CRD.pas' {QRPGER_PDV_CRD: TQuickRep},
  qProduto_Estoque in '..\..\Padrao\Relatorios\qProduto_Estoque.pas' {qrpProduto_Estoque: TQuickRep},
  qProduto_Estoque_Etiqueta in '..\..\Padrao\Relatorios\qProduto_Estoque_Etiqueta.pas' {qrpProduto_Estoque_Etiqueta: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SHE-PDV';

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
