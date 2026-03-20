program Sheild;

uses
  Forms,
  SysUtils,
  ppadr2 in '..\padrao\ppadr2.pas' {frmpadr2},
  ppadr3 in '..\padrao\ppadr3.pas' {frmpadr3},
  bDados in 'bDados.pas' {DMDados: TDataModule},
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
  ptab_cor in '..\padrao\ptab_cor.pas' {frmtab_cor},
  ptab_pag in '..\padrao\ptab_pag.pas' {frmtab_pag},
  uFrmLogin in '..\padrao\uFrmLogin.pas' {FrmLogin},
  ppar_pri in '..\padrao\ppar_pri.pas' {frmpar_pri},
  ptab_mun in '..\padrao\ptab_mun.pas' {frmtab_mun},
  pSplash in '..\padrao\pSplash.pas' {frmSplash},
  pSobre in '..\padrao\pSobre.pas' {frmSobre},
  pcad_for in '..\padrao\pcad_for.pas' {frmcad_for},
  pcad_for_edi in '..\padrao\pcad_for_edi.pas' {frmcad_for_edi},
  psintegra in '..\padrao\psintegra.pas' {frmsintegra},
  peti_sel in '..\padrao\peti_sel.pas' {frmeti_sel},
  ptab_nat in '..\padrao\ptab_nat.pas' {frmtab_nat},
  ptab_nat_edi in '..\padrao\ptab_nat_edi.pas' {frmtab_nat_edi},
  pven_ped in '..\padrao\pven_ped.pas' {frmven_ped},
  pcad_pro in '..\padrao\pcad_pro.pas' {frmcad_pro},
  pcad_pro_con in '..\padrao\pcad_pro_con.pas' {frmcad_pro_con},
  pcad_pro_edi in '..\padrao\pcad_pro_edi.pas' {frmcad_pro_edi},
  pven_nfe in '..\padrao\pven_nfe.pas' {frmven_nfe},
  pctr_ped_sep in '..\padrao\pctr_ped_sep.pas' {frmctr_ped_sep},
  pven_rom in '..\padrao\pven_rom.pas' {frmven_rom},
  pctr_rom in '..\padrao\pctr_rom.pas' {frmctr_rom},
  pctr_ped_bai in '..\padrao\pctr_ped_bai.pas' {frmctr_ped_bai},
  pent_pro in '..\padrao\pent_pro.pas' {frment_pro},
  pctr_ped in '..\padrao\pctr_ped.pas' {frmctr_ped},
  pimporta_geral in '..\padrao\pimporta_geral.pas' {frmimporta_geral},
  pimporta_geral_favorecido in '..\padrao\pimporta_geral_favorecido.pas' {frmimporta_geral_favorecido},
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  pCFeSat in '..\Padrao\pCFeSat.pas' {FrmCFeSat},
  pcad_cli_inf in '..\Padrao\pcad_cli_inf.pas' {frmcad_cli_inf},
  p_funcoes in '..\Padrao\p_funcoes.pas',
  pctr_ped_fin in '..\Padrao\pctr_ped_fin.pas' {frmctr_ped_fin},
  pctr_nfe in '..\Padrao\pctr_nfe.pas' {frmctr_nfe},
  pven_npr in '..\Padrao\pven_npr.pas' {frmven_npr},
  pEmConstrucao in '..\..\Lib\Default\pEmConstrucao.pas' {FrmEmConstrucao},
  pctr_pro in '..\Padrao\pctr_pro.pas' {frmctr_pro},
  qven_ped in '..\Relatorio\qven_ped.pas' {qrpven_ped: TQuickRep},
  prelatorio_geral in '..\Relatorio\prelatorio_geral.pas' {frmrelatorio_geral},
  parquivo_geral in '..\Padrao\parquivo_geral.pas' {frmarquivo_geral},
  qven_con in '..\Relatorio\qven_con.pas' {qrpven_con: TQuickRep},
  qcai_mov_flx_ban in '..\Relatorio\qcai_mov_flx_ban.pas' {qrpcai_mov_flx_ban: TQuickRep},
  qcai_mov_flx_car in '..\Relatorio\qcai_mov_flx_car.pas' {qrpcai_mov_flx_car: TQuickRep},
  qcai_mov_cai_ana in '..\Relatorio\qcai_mov_cai_ana.pas' {qrpcai_mov_cai_ana: TQuickRep},
  qcai_mov_cai_sin in '..\Relatorio\qcai_mov_cai_sin.pas' {qrpcai_mov_cai_sin: TQuickRep},
  qcai_mov_ger in '..\Relatorio\qcai_mov_ger.pas' {qrpcai_mov_ger: TQuickRep},
  qcai_mov_flx_ven in '..\Relatorio\qcai_mov_flx_ven.pas' {qrpcai_mov_flx_ven: TQuickRep},
  qcai_mov_flx_rep in '..\Relatorio\qcai_mov_flx_rep.pas' {qrpcai_mov_flx_rep: TQuickRep},
  qcai_mov_ger_ana in '..\Relatorio\qcai_mov_ger_ana.pas' {qrpcai_mov_ger_ana: TQuickRep},
  qFicha_Tecnica in '..\Relatorio\qFicha_Tecnica.pas' {qrpFicha_Tecnica: TQuickRep},
  pPesquisa in '..\Padrao\pPesquisa.pas' {FrmPesquisa},
  pDefault in '..\Padrao\pDefault.pas' {FrmDefault},
  pPSQCAD in '..\Padrao\pPSQCAD.pas' {FrmPSQCAD},
  oPrincipal in '..\Padrao\oPrincipal.pas',
  pIMG_PAD_INF in '..\..\Lib\Default\pIMG_PAD_INF.pas' {FrmIMG_PAD_INF},
  qFIN_PAG_COM in '..\..\prj_2024\Relatórios\Pagamentos\qFIN_PAG_COM.pas' {QRPFIN_PAG_COM: TQuickRep},
  pFIN_PAG_COM in '..\Padrao\pFIN_PAG_COM.pas' {FrmFIN_PAG_COM},
  qPED_CUP_SCO in '..\..\prj_2024\Relatórios\Pedidos\qPED_CUP_SCO.pas' {QRPPED_CUP_SCO: TQuickRep},
  qPED_CUP_VEN in '..\..\prj_2024\Relatórios\Pedidos\qPED_CUP_VEN.pas' {QRPPED_CUP_VEN: TQuickRep},
  qFIN_PAG_COM_PED in '..\..\prj_2024\Relatórios\Pagamentos\qFIN_PAG_COM_PED.pas' {QRPFIN_PAG_COM_PED: TQuickRep},
  StrInt in '..\..\..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\..\..\Lib\Default\StrIntImp.pas',
  pcai_abr in '..\Padrao\pcai_abr.pas' {frmcai_abr},
  pcai_fec in '..\Padrao\pcai_fec.pas' {frmcai_fec},
  pcai_mov in '..\Padrao\pcai_mov.pas' {frmcai_mov},
  pcai_san in '..\Padrao\pcai_san.pas' {frmcai_san},
  pcai_sar in '..\Padrao\pcai_sar.pas' {frmcai_sar},
  pcai_sar_edi in '..\Padrao\pcai_sar_edi.pas' {frmcai_sar_edi},
  pcai_tsr in '..\Padrao\pcai_tsr.pas' {frmcai_tsr},
  pnfe_cce in '..\Padrao\pnfe_cce.pas' {frmnfe_cce};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Sheild';
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
