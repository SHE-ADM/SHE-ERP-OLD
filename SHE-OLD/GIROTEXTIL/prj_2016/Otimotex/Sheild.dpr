program Sheild;

uses
  Forms,
  SysUtils,
  ppadr2 in '..\padrao\ppadr2.pas' {frmpadr2},
  ppadr3 in '..\padrao\ppadr3.pas' {frmpadr3},
  bDados in 'bDados.pas' {dmDADOS: TDataModule},
  ppadr1 in '..\padrao\ppadr1.pas' {frmpadr1},
  unLocaliza_Cep in '..\padrao\unLocaliza_Cep.pas' {frmLocaliza_Cep},
  pcad_cli in '..\padrao\pcad_cli.pas' {frmcad_cli},
  pcad_cli_edi in '..\padrao\pcad_cli_edi.pas' {frmcad_cli_edi},
  pcad_rep in '..\padrao\pcad_rep.pas' {frmcad_rep},
  pcad_rep_edi in '..\padrao\pcad_rep_edi.pas' {frmcad_rep_edi},
  pcad_tra in '..\padrao\pcad_tra.pas' {frmcad_tra},
  pcad_tra_edi in '..\padrao\pcad_tra_edi.pas' {frmcad_tra_edi},
  pemail in '..\padrao\pemail.pas' {frmemail},
  psenha in '..\padrao\psenha.pas' {frmsenha},
  ptab_alq in '..\padrao\ptab_alq.pas' {frmtab_alq},
  ptab_col in '..\padrao\ptab_col.pas' {frmtab_col},
  ptab_cor in '..\padrao\ptab_cor.pas' {frmtab_cor},
  ptab_pag in '..\padrao\ptab_pag.pas' {frmtab_pag},
  uFrmLogin in '..\padrao\uFrmLogin.pas' {FrmLogin},
  pcad_age in '..\padrao\pcad_age.pas' {frmcad_age},
  pcad_age_edi in '..\padrao\pcad_age_edi.pas' {frmcad_age_edi},
  pven_npr in '..\padrao\pven_npr.pas' {frmven_npr},
  ppar_pri in '..\padrao\ppar_pri.pas' {frmpar_pri},
  ptab_mun in '..\padrao\ptab_mun.pas' {frmtab_mun},
  pSplash in '..\padrao\pSplash.pas' {frmSplash},
  pSobre in '..\padrao\pSobre.pas' {frmSobre},
  ptab_clf in '..\padrao\ptab_clf.pas' {frmtab_clf},
  ppar_sis_edi in '..\padrao\ppar_sis_edi.pas' {frmpar_sis_edi},
  ppar_sis in '..\padrao\ppar_sis.pas' {frmpar_sis},
  pcad_for in '..\padrao\pcad_for.pas' {frmcad_for},
  pcad_for_edi in '..\padrao\pcad_for_edi.pas' {frmcad_for_edi},
  psintegra in '..\padrao\psintegra.pas' {frmsintegra},
  peti_sel in '..\padrao\peti_sel.pas' {frmeti_sel},
  parquivo_geral in '..\padrao\parquivo_geral.pas' {frmarquivo_geral},
  prelatorio_geral in '..\padrao\prelatorio_geral.pas' {frmrelatorio_geral},
  pctr_pro in '..\padrao\pctr_pro.pas' {frmctr_pro},
  ptab_nat in '..\padrao\ptab_nat.pas' {frmtab_nat},
  ptab_nat_edi in '..\padrao\ptab_nat_edi.pas' {frmtab_nat_edi},
  ptab_cob in '..\padrao\ptab_cob.pas' {frmtab_cob},
  ptab_ped in '..\padrao\ptab_ped.pas' {frmtab_ped},
  ppesquisa in '..\padrao\ppesquisa.pas' {frmpesquisa},
  plog_eve in '..\padrao\plog_eve.pas' {frmlog_eve},
  pcai_abr in '..\padrao\pcai_abr.pas' {frmcai_abr},
  pcai_tsr in '..\padrao\pcai_tsr.pas' {frmcai_tsr},
  pven_ped in '..\padrao\pven_ped.pas' {frmven_ped},
  pcad_pro_con in '..\padrao\pcad_pro_con.pas' {frmcad_pro_con},
  qven_ped in '..\padrao\qven_ped.pas' {qrpven_ped: TQuickRep},
  pven_nfe in '..\padrao\pven_nfe.pas' {frmven_nfe},
  pctr_ped_sep in '..\padrao\pctr_ped_sep.pas' {frmctr_ped_sep},
  pven_rom in '..\padrao\pven_rom.pas' {frmven_rom},
  qsep_ped in '..\padrao\qsep_ped.pas' {qrpsep_ped: TQuickRep},
  pctr_rom in '..\padrao\pctr_rom.pas' {frmctr_rom},
  StrInt in '..\padrao\StrInt.pas',
  StrIntImp in '..\padrao\StrIntImp.pas',
  pctr_ped_bai in '..\padrao\pctr_ped_bai.pas' {frmctr_ped_bai},
  pctr_nfe in '..\padrao\pctr_nfe.pas' {frmctr_nfe},
  qcob_ped in '..\padrao\qcob_ped.pas' {qrpcob_ped: TQuickRep},
  pent_pro in '..\padrao\pent_pro.pas' {frment_pro},
  pcai_mov in '..\padrao\pcai_mov.pas' {frmcai_mov},
  qnfe_ger in '..\padrao\qnfe_ger.pas' {qrpnfe_ger: TQuickRep},
  pcai_sar in '..\padrao\pcai_sar.pas' {frmcai_sar},
  pcai_sar_edi in '..\padrao\pcai_sar_edi.pas' {frmcai_sar_edi},
  pcai_fec in '..\padrao\pcai_fec.pas' {frmcai_fec},
  qcai_mov_ger in '..\padrao\qcai_mov_ger.pas' {qrpcai_mov_ger: TQuickRep},
  qcai_mov_cai_sin in '..\padrao\qcai_mov_cai_sin.pas' {qrpcai_mov_cai_sin: TQuickRep},
  qcai_mov_cai_ana in '..\padrao\qcai_mov_cai_ana.pas' {qrpcai_mov_cai_ana: TQuickRep},
  pnfe_cce in '..\padrao\pnfe_cce.pas' {frmnfe_cce},
  pven_des in '..\padrao\pven_des.pas' {frmven_des},
  qven_des in '..\padrao\qven_des.pas' {qrpven_des: TQuickRep},
  pfin_dup in '..\padrao\pfin_dup.pas' {frmfin_dup},
  qfin_dup in '..\padrao\qfin_dup.pas' {qrpfin_dup: TQuickRep},
  qcai_mov_flx_car in '..\padrao\qcai_mov_flx_car.pas' {qrpcai_mov_flx_car: TQuickRep},
  qcai_mov_flx_ban in '..\padrao\qcai_mov_flx_ban.pas' {qrpcai_mov_flx_ban: TQuickRep},
  ppag_com in '..\padrao\ppag_com.pas' {frmpag_com},
  prec_car in '..\padrao\prec_car.pas' {frmrec_car},
  prec_ban in '..\padrao\prec_ban.pas' {frmrec_ban},
  prec_pag_car in '..\padrao\prec_pag_car.pas' {frmrec_pag_car},
  pctr_rom_edi in '..\padrao\pctr_rom_edi.pas' {frmctr_rom_edi},
  prec_pag_ban in '..\padrao\prec_pag_ban.pas' {frmrec_pag_ban},
  prec_can_ban in '..\padrao\prec_can_ban.pas' {frmrec_can_ban},
  pfin_dup_edi in '..\padrao\pfin_dup_edi.pas' {frmfin_dup_edi},
  pctr_ped_fin in '..\padrao\pctr_ped_fin.pas' {frmctr_ped_fin},
  pctr_ped in '..\padrao\pctr_ped.pas' {frmctr_ped},
  pctr_oca in '..\padrao\pctr_oca.pas' {frmctr_oca},
  pven_oca in '..\padrao\pven_oca.pas' {frmven_oca},
  peti_pro in '..\padrao\peti_pro.pas' {frmeti_pro},
  qeti_pro_mat in '..\padrao\qeti_pro_mat.pas' {qrpeti_pro_mat: TQuickRep},
  qcad_pro_est in '..\padrao\qcad_pro_est.pas' {qrpcad_pro_est: TQuickRep},
  pctr_ped_se2 in '..\padrao\pctr_ped_se2.pas' {frmctr_ped_se2},
  qcob_rom in '..\padrao\qcob_rom.pas' {qrpcob_rom: TQuickRep},
  qped_sep in '..\padrao\qped_sep.pas' {qrpped_sep: TQuickRep},
  pimporta_geral in '..\padrao\pimporta_geral.pas' {frmimporta_geral},
  qcad_pro_fic_foto in '..\padrao\qcad_pro_fic_foto.pas' {qrpcad_pro_fic_foto: TQuickRep},
  qprg_con in '..\padrao\qprg_con.pas' {qrpprg_con: TQuickRep},
  qcob_rom_ref in '..\padrao\qcob_rom_ref.pas' {qrpcob_rom_ref: TQuickRep},
  prec_can_car in '..\padrao\prec_can_car.pas' {frmrec_can_car},
  qven_ped_bematech in '..\padrao\qven_ped_bematech.pas' {qrpven_ped_bematech: TQuickRep},
  qent_pro_rom in '..\padrao\qent_pro_rom.pas' {qrpent_pro_rom: TQuickRep},
  qven_oca_bematech in '..\padrao\qven_oca_bematech.pas' {qrpven_oca_bematech: TQuickRep},
  qent_pro_con in '..\padrao\qent_pro_con.pas' {qrpent_pro_con: TQuickRep},
  pimporta_geral_favorecido in '..\padrao\pimporta_geral_favorecido.pas' {frmimporta_geral_favorecido},
  qven_sim_bematech in '..\padrao\qven_sim_bematech.pas' {qrpven_sim_bematech: TQuickRep},
  pcad_pro_img in '..\padrao\pcad_pro_img.pas' {frmcad_pro_img},
  pcad_chq in '..\padrao\pcad_chq.pas' {frmcad_chq},
  qcai_mov_ger_ana in '..\padrao\qcai_mov_ger_ana.pas' {qrpcai_mov_ger_ana: TQuickRep},
  qrom_con_001 in '..\padrao\qrom_con_001.pas' {qrprom_con_001: TQuickRep},
  qrom_con_002 in '..\padrao\qrom_con_002.pas' {qrprom_con_002: TQuickRep},
  qven_con in '..\padrao\qven_con.pas' {qrpven_con: TQuickRep},
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  qfin_rec_ger in '..\Padrao\qfin_rec_ger.pas' {qrpfin_rec_ger: TQuickRep},
  qpag_com in '..\Padrao\qpag_com.pas' {qrppag_com: TQuickRep},
  pCFeSat in '..\Padrao\pCFeSat.pas' {FrmCFeSat},
  qProduto_Preco_Tabela in '..\Padrao\qProduto_Preco_Tabela.pas' {qrpProduto_Preco_Tabela: TQuickRep},
  pcad_cli_inf in '..\Padrao\pcad_cli_inf.pas' {frmcad_cli_inf},
  p_funcoes in '..\Padrao\p_funcoes.pas',
  oPrincipal in '..\Padrao\oPrincipal.pas',
  pcad_pro in '..\Padrao\pcad_pro.pas' {frmcad_pro},
  pcad_pro_edi in '..\Padrao\pcad_pro_edi.pas' {frmcad_pro_edi};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Erp Sheild';
  FrmSplash := TFrmSplash.Create(Application);
  FrmSplash.Refresh;
  FrmSplash.Show;

  DMDados := TDMDados.Create(Application);

  FrmLogin := TFrmLogin.Create(Application);
  FrmLogin.Refresh;
  FrmLogin.ShowModal;

  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Initialize;

  FreeAndNil(FrmLogin);
  FreeAndNil(FrmSplash);

  Application.Run;
  FreeAndNil(FrmPrincipal);
end.
