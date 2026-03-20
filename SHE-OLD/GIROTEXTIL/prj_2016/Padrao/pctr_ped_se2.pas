unit pctr_ped_se2;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, math, dxDBTLCl, dxGrClms, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  DBCtrls, Grids, DBGrids, StdCtrls, dxPageControl, IBEvents, rxSpeedbar;

type
  Tfrmctr_ped_se2 = class(Tfrmpadr3)
    siPSQ: TSpeedItem;
    Panel1: TPanel;
    dtsrom_sep: TDataSource;
    Panel2: TPanel;
    tSHEILD: TIBTransaction;
    consulta_s: TIBQuery;
    siMTD: TSpeedItem;
    siDTD: TSpeedItem;
    rom_sep: TIBDataSet;
    rom_sepID: TIntegerField;
    rom_sepROM_CCAB: TIntegerField;
    rom_sepROM_CDOC: TIntegerField;
    rom_sepROM_CDPR: TIntegerField;
    rom_sepROM_CDPD: TIntegerField;
    rom_sepROM_CDRO: TIntegerField;
    rom_sepROM_CDNF: TIntegerField;
    rom_sepROM_ITEM: TIBStringField;
    rom_sepROM_CART: TIBStringField;
    rom_sepROM_IPRO: TIntegerField;
    rom_sepROM_CPRO: TIBStringField;
    rom_sepROM_IPR2: TIntegerField;
    rom_sepROM_CPR2: TIBStringField;
    rom_sepROM_DPRO: TIBStringField;
    rom_sepROM_CCOR: TIntegerField;
    rom_sepROM_RCOR: TIBStringField;
    rom_sepROM_DCOR: TIBStringField;
    rom_sepROM_CCO2: TIntegerField;
    rom_sepROM_RCO2: TIBStringField;
    rom_sepROM_DCO2: TIBStringField;
    rom_sepROM_CGRD: TIBStringField;
    rom_sepROM_DGRD: TIBStringField;
    rom_sepROM_DUNI: TIBStringField;
    rom_sepROM_QTDE: TIBBCDField;
    rom_sepROM_QTSP: TIBBCDField;
    rom_sepROM_QTPD: TIBBCDField;
    rom_sepROM_QDIS: TIBBCDField;
    rom_sepROM_TOTA: TIBBCDField;
    rom_sepROM_CDET: TIBStringField;
    rom_sepROM_CBAR: TIBStringField;
    rom_sepROM_FLAG: TSmallintField;
    rom_sepROM_FOTO: TBlobField;
    pcite: TdxPageControl;
    tsLAN: TdxTabSheet;
    dbgpen: TdxDBGrid;
    dbgpenROM_CDET: TdxDBGridMaskColumn;
    dbgpenROM_QTSP: TdxDBGridMaskColumn;
    SpeedBar3: TSpeedBar;
    SpeedbarSection9: TSpeedbarSection;
    SpeedbarSection10: TSpeedbarSection;
    SpeedbarSection11: TSpeedbarSection;
    SpeedbarSection12: TSpeedbarSection;
    pINC: TSpeedItem;
    pALT: TSpeedItem;
    pDEL: TSpeedItem;
    pSAV: TSpeedItem;
    pCAN: TSpeedItem;
    rom_sepROM_QTRL: TIntegerField;
    rom_sepROM_RLSP: TIntegerField;
    rom_sepROM_RLPD: TIntegerField;
    rom_sepROM_RLDI: TIntegerField;
    rom_sepROM_METR: TIBBCDField;
    rom_sepROM_PESO: TIBBCDField;
    rom_sepROM_REND: TIBBCDField;
    rom_sepROM_PSCN: TIBBCDField;
    rom_sepROM_PSMR: TIBBCDField;
    aux: TIBQuery;
    dbgpenROM_CART: TdxDBGridMaskColumn;
    dbgpenROM_CPRO: TdxDBGridMaskColumn;
    dbgpenROM_DCOR: TdxDBGridMaskColumn;
    cad_pro_est: TIBQuery;
    cad_pro_estID: TIntegerField;
    cad_pro_estEST_CDPD: TIntegerField;
    cad_pro_estEST_CDRO: TIntegerField;
    cad_pro_estEST_DCAD: TDateField;
    cad_pro_estEST_DFAV: TIBStringField;
    cad_pro_estEST_DUSU: TIBStringField;
    cad_pro_estEST_FLAG: TIBStringField;
    cad_pro_estEST_CRED: TIBBCDField;
    cad_pro_estEST_DEBI: TIBBCDField;
    cad_pro_estPRO_CART: TIBStringField;
    cad_pro_estPRO_CPRO: TIBStringField;
    cad_pro_estPRO_DCOR: TIBStringField;
    cad_pro_estPRO_DUNI: TIBStringField;
    cad_pro_estPRO_DPRO: TIBStringField;
    cad_pro_estEST_CDET: TIBStringField;
    cad_pro_estID1: TIntegerField;
    GroupBox1: TGroupBox;
    Label33: TLabel;
    Label1: TLabel;
    lanlan: TLabel;
    Label3: TLabel;
    ladlan: TLabel;
    Label5: TLabel;
    laqlan: TLabel;
    Label2: TLabel;
    larlan: TLabel;
    Label4: TLabel;
    laolan: TLabel;
    Label6: TLabel;
    laelan: TLabel;
    Label7: TLabel;
    ladpro: TLabel;
    edcdet: TdxMaskEdit;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    eddero: TdxMaskEdit;
    Label9: TLabel;
    ladven: TLabel;
    Label11: TLabel;
    ladcli: TLabel;
    ladrom: TLabel;
    ped_ven_cab: TIBQuery;
    Label10: TLabel;
    larlve: TLabel;
    Label13: TLabel;
    laqtve: TLabel;
    ped_ven_cabID: TIntegerField;
    ped_ven_cabROM_DERO: TIBStringField;
    ped_ven_cabROM_DROM: TDateField;
    ped_ven_cabROM_CDRO: TIntegerField;
    ped_ven_cabROM_CDNF: TIntegerField;
    ped_ven_cabROM_QTVE: TIBBCDField;
    ped_ven_cabROM_RLVE: TIntegerField;
    ped_ven_cabFUN_APEL: TIBStringField;
    ped_ven_cabCLI_FANT: TIBStringField;
    ped_ven_cabROM_STPD: TIBStringField;
    ped_ven_cabROM_STFI: TIBStringField;
    ped_ven_cabROM_CVEN: TIntegerField;
    ped_ven_cabROM_CCLI: TIntegerField;
    tsPED: TdxTabSheet;
    dbgPED: TdxDBGrid;
    ped_ven_ite: TIBQuery;
    ped_ven_iteID: TIntegerField;
    ped_ven_iteROM_CCAB: TIntegerField;
    ped_ven_iteROM_CDOC: TIntegerField;
    ped_ven_iteROM_CDPR: TIntegerField;
    ped_ven_iteROM_CDPD: TIntegerField;
    ped_ven_iteROM_CDRO: TIntegerField;
    ped_ven_iteROM_CDRD: TIntegerField;
    ped_ven_iteROM_CDNF: TIntegerField;
    ped_ven_iteROM_ITEM: TIBStringField;
    ped_ven_iteROM_CPRO: TIntegerField;
    ped_ven_iteROM_CPR2: TIntegerField;
    ped_ven_iteROM_CDET: TIBStringField;
    ped_ven_iteROM_QTDE: TIBBCDField;
    ped_ven_iteROM_QTRL: TIntegerField;
    ped_ven_iteROM_QTSP: TIBBCDField;
    ped_ven_iteROM_RLSP: TIntegerField;
    ped_ven_iteROM_QTPD: TIBBCDField;
    ped_ven_iteROM_RLPD: TIntegerField;
    ped_ven_iteROM_VDSC: TIBBCDField;
    ped_ven_iteROM_TOTA: TIBBCDField;
    ped_ven_iteROM_FLAG: TIBStringField;
    ped_ven_iteROM_COMI: TIBBCDField;
    ped_ven_iteROM_DPRO: TIBStringField;
    ped_ven_iteROM_TPRC: TIBStringField;
    ped_ven_iteROM_ABCD: TIBStringField;
    ped_ven_iteROM_DCOR: TIBStringField;
    ped_ven_iteROM_PCOR: TIBStringField;
    ped_ven_iteID1: TIntegerField;
    ped_ven_itePRO_CART: TIBStringField;
    ped_ven_itePRO_CPRO: TIBStringField;
    ped_ven_itePRO_CCOR: TIntegerField;
    ped_ven_itePRO_RCOR: TIBStringField;
    ped_ven_itePRO_DCOR: TIBStringField;
    ped_ven_itePRO_DUNI: TIBStringField;
    ped_ven_itePRO_PIPI: TSmallintField;
    ped_ven_itePRO_REPR: TIBStringField;
    ped_ven_itePRO_CBAR: TIBStringField;
    ped_ven_itePRO_CEMB: TIntegerField;
    ped_ven_itePRO_GRAD: TIBStringField;
    ped_ven_itePRO_FOTO: TBlobField;
    dtsped_ven_ite: TDataSource;
    dbgPEDROM_QTDE: TdxDBGridMaskColumn;
    dbgPEDROM_DPRO: TdxDBGridMaskColumn;
    dbgPEDROM_DCOR: TdxDBGridMaskColumn;
    dbgPEDPRO_CPRO: TdxDBGridMaskColumn;
    dbgPEDPRO_DUNI: TdxDBGridMaskColumn;
    tsSEP: TdxTabSheet;
    dbglan: TdxDBGrid;
    ped_ven_lan: TIBQuery;
    dtsped_ven_lan: TDataSource;
    ped_ven_lanID: TIntegerField;
    ped_ven_lanEST_CDPD: TIntegerField;
    ped_ven_lanEST_CDRO: TIntegerField;
    ped_ven_lanEST_DCAD: TDateField;
    ped_ven_lanEST_DFAV: TIBStringField;
    ped_ven_lanEST_DUSU: TIBStringField;
    ped_ven_lanEST_FLAG: TIBStringField;
    ped_ven_lanEST_CRED: TIBBCDField;
    ped_ven_lanEST_DEBI: TIBBCDField;
    ped_ven_lanEST_CDET: TIBStringField;
    ped_ven_lanID1: TIntegerField;
    ped_ven_lanPRO_CART: TIBStringField;
    ped_ven_lanPRO_CPRO: TIBStringField;
    ped_ven_lanPRO_DCOR: TIBStringField;
    ped_ven_lanPRO_DUNI: TIBStringField;
    ped_ven_lanPRO_DPRO: TIBStringField;
    dbglanEST_CRED: TdxDBGridMaskColumn;
    dbglanEST_CDET: TdxDBGridMaskColumn;
    dbglanPRO_CPRO: TdxDBGridMaskColumn;
    dbglanPRO_DCOR: TdxDBGridMaskColumn;
    dbglanPRO_DUNI: TdxDBGridMaskColumn;
    siVIS: TSpeedItem;
    rom_sepROM_PCOR: TIBStringField;
    rom_sepROM_PCO2: TIBStringField;
    rom_sepROM_PIPI: TIBBCDField;
    rom_sepROM_TPRC: TIBStringField;
    rom_sepROM_ABCD: TIBStringField;
    pEVE: TIBEvents;
    pSP: TIBStoredProc;
    pTRA: TIBTransaction;
    Label12: TLabel;
    lacpro: TLabel;
    ped_ven_iteROM_UNIT: TFloatField;
    ped_ven_iteROM_PREC: TFloatField;
    ped_ven_iteROM_DCO2: TIBStringField;
    ped_ven_iteROM_PCO2: TIBStringField;
    ped_ven_itePRO_PPRO: TFloatField;
    rom_sepROM_VDSC: TIBBCDField;
    rom_sepROM_STFI: TIBStringField;
    rom_sepROM_PRCA: TFloatField;
    rom_sepROM_PRPA: TFloatField;
    rom_sepROM_VPRC: TFloatField;
    rom_sepROM_VPRO: TFloatField;
    rom_sepROM_RPRC: TFloatField;
    rom_sepROM_RPRO: TFloatField;
    rom_sepROM_PCOM: TFloatField;
    rom_sepROM_CUST: TFloatField;
    rom_sepROM_UNIT: TFloatField;
    rom_sepROM_PREC: TFloatField;
    rom_sepROM_PPRO: TIBBCDField;
    rom_sepROM_PEMB: TIBBCDField;
    rom_sepROM_VBCIPI: TIBBCDField;
    rom_sepROM_VIPI: TIBBCDField;
    rom_sepROM_CSEP: TIntegerField;
    cad_pro_estEST_DSEP: TIBStringField;
    ped_ven_iteROM_DSEP: TIBStringField;
    ped_ven_lanEST_DSEP: TIBStringField;
    rom_sepROM_DSEP: TIBStringField;
    cad_pro_estEST_DMAP: TIBStringField;
    cad_pro_estEST_CTNR: TIBStringField;
    ped_ven_lanEST_DMAP: TIBStringField;
    ped_ven_lanEST_CTNR: TIBStringField;
    rom_sepROM_APRC: TIBStringField;
    rom_sepROM_LDSC: TIBBCDField;
    rom_sepROM_TSDE: TIBBCDField;
    ped_ven_lanEST_LOTE: TIBStringField;
    cad_cli_crd: TIBDataSet;
    cad_cli_crdID: TIntegerField;
    cad_cli_crdCLI_CDEP: TIntegerField;
    cad_cli_crdCLI_CCLI: TIntegerField;
    cad_cli_crdCLI_CRED: TIBBCDField;
    psq_cli: TIBQuery;
    psq_cliID: TIntegerField;
    psq_cliCLI_FANT: TIBStringField;
    psq_cliCLI_RAZA: TIBStringField;
    psq_cliCLI_CNPJ: TIBStringField;
    psq_cliCLI_CPF: TIBStringField;
    psq_cliCLI_CRED: TIBBCDField;
    psq_cliCLI_CID: TIBStringField;
    psq_cliCLI_TLOG: TIBStringField;
    psq_cliCLI_BAI: TIBStringField;
    psq_cliCLI_LOGR: TIBStringField;
    psq_cliCLI_NUME: TIBStringField;
    psq_cliCLI_CEP: TIBStringField;
    psq_cliCLI_COMP: TIBStringField;
    psq_cliCLI_ESTA: TIBStringField;
    psq_cliCLI_STA: TIBStringField;
    psq_cliCLI_STAV: TIBStringField;
    psq_cliCLI_DPAG: TIBStringField;
    psq_cliCLI_OBSO: TMemoField;
    psq_cliCLI_VDSC: TIBBCDField;
    psq_cliCLI_DCAD: TDateField;
    psq_cliCLI_DFUN: TDateField;
    psq_cliCLI_DALT: TDateField;
    psq_cliCLI_DULT: TDateField;
    psq_cliCLI_DDD: TIBStringField;
    psq_cliCLI_TEL1: TIBStringField;
    psq_cliREP_FANT: TIBStringField;
    psq_cliUSU_DUSU: TIBStringField;
    psq_cliCLI_STPD: TSmallintField;
    psq_cliCLI_DTRA: TIBStringField;
    psq_cliCLI_VULT: TIBBCDField;
    cli_sta: TIBQuery;
    cli_staFIN_DOCT: TIBStringField;
    cli_staFIN_DVEN: TDateField;
    cli_staFIN_VALO: TIBBCDField;
    ped_ven_cabROM_STCO: TIBStringField;
    edfatu: TdxMaskEdit;
    ped_ven_cabROM_TCDE: TIBBCDField;
    Label14: TLabel;
    dbgPEDROM_QTRL: TdxDBGridMaskColumn;
    ped_ven_cabROM_QTPD: TIBBCDField;
    procedure siSAVClick(Sender: TObject);
    procedure rom_sepAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pALTClick(Sender: TObject);
    procedure pSAVClick(Sender: TObject);
    procedure pCANClick(Sender: TObject);
    procedure rom_sepAfterEdit(DataSet: TDataSet);
    procedure pDELClick(Sender: TObject);
    procedure rom_sepBeforeCancel(DataSet: TDataSet);
    procedure edcdetKeyPress(Sender: TObject; var Key: Char);
    procedure edderoKeyPress(Sender: TObject; var Key: Char);
    procedure ped_ven_cabAfterOpen(DataSet: TDataSet);
    procedure siVALClick(Sender: TObject);
    procedure siCANClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure psq_cliAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    function RETORNA_STFI: string;
  public
    { Public declarations }
    procedure ABRE_TABELA;
    procedure LIMPA_ETIQUETA;
    procedure LIMPA_PEDIDO;
    procedure PESQUISA_ETIQUETA;
    procedure PESQUISA_PEDIDO;
  end;

var
  frmctr_ped_se2: Tfrmctr_ped_se2;
  BRet: boolean;
  test: string;

implementation

uses uPrincipal, pctr_ped, ppesquisa, qped_sep;

{$R *.dfm}

procedure Tfrmctr_ped_se2.LIMPA_PEDIDO;
begin
  ladrom.Caption := 'NADA CONSTA';
  ladcli.Caption := 'NADA CONSTA';
  ladven.Caption := 'NADA CONSTA';
  laqtve.Caption := '0,00';
  larlve.Caption := '0';
end;

procedure Tfrmctr_ped_se2.PESQUISA_PEDIDO;
begin
  if eddero.Text = '' then
     exit;

  BRet := false;
  try
    with ped_ven_cab do
    begin
      SQL.Clear;
      SQL.Add('SELECT PED_VEN_CAB.ID,ROM_DERO,ROM_DROM,ROM_CDRO,ROM_CDNF,ROM_QTVE,ROM_RLVE,ROM_STPD,ROM_STFI,ROM_STCO,ROM_CVEN,ROM_CCLI,ROM_TCDE,FUN_APEL,CLI_FANT,ROM_QTPD');
      SQL.Add('FROM   CAD_FUN,CAD_CLI,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE  PED_VEN_CAB.ROM_CVEN = CAD_FUN.ID');
      SQL.Add('AND    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND    PED_VEN_CAB.ROM_DERO = '''+eddero.Text+'''');
      Open;

      if fields[0].IsNull then
      begin
        eddero.SetFocus;
        raise exception.Create('Número do pedido não encontrado !');
      end;

      if ped_ven_cabROM_STFI.AsString = 'CANCELADO' then
      begin
        eddero.SetFocus;
        raise exception.Create('Pedido com cancelamento homologado !');
      end;

      aux.SQL.Clear;
      aux.SQL.Add('SELECT VEN_QTSP FROM TAB_PED');
      aux.SQL.Add('WHERE  VEN_TIPO = '''+ped_ven_cabROM_STPD.AsString+'''');
      aux.Open;

      if aux.Fields[0].AsString <> '1' then
      begin
        eddero.SetFocus;
        raise exception.Create('Pedido informado não é um pedido válido para separação !');
      end;

      if (ped_ven_cabROM_CDRO.AsInteger > 0) and (ped_ven_cabROM_CDNF.AsInteger = 0) then
      begin
        eddero.SetFocus;
        if oYesNo(frmctr_ped_se2.Handle,'Pedido em processo de faturamento ! Romaneio No '+ped_ven_cabROM_CDRO.AsString+#13+'Deseja continuar ?') = mrno then
        abort;
      end;

      if (ped_ven_cabROM_CDRO.AsInteger > 0) and (ped_ven_cabROM_CDNF.AsInteger > 0) then
      begin
        eddero.SetFocus;
        raise exception.Create('Pedido já faturado !'+#13+'Nota Fiscal No '+ped_ven_cabROM_CDNF.AsString+'.');
      end;  

      if ped_ven_CabROM_QTPD.AsFloat = 0 then
      begin
        if (ped_ven_cabROM_STFI.AsString = 'AGUARDANDO LIBERAÇÃO') or (ped_ven_cabROM_STFI.AsString = 'AGUARDANDO CRÉDITO') or (ped_ven_cabROM_STFI.AsString = 'PROTESTADO') or
           (ped_ven_cabROM_STFI.AsString = 'NÃO PAGO')             or (ped_ven_cabROM_STFI.AsString = 'SUSPENSO')   then
        begin
          eddero.SetFocus;
          raise exception.Create('Não é possível separar o pedido No '+ped_ven_cabROM_DERO.AsString+' !'+#13+'Situação: '+ped_ven_cabROM_STFI.AsString);
        end;
      end;

      BRet := true;
    end;
  finally
    if not BRet then
    begin
      eddero.Text := '';
      eddero.SetFocus;
    end
    else
    begin
      ladrom.Caption := formatDateTime('dd/mm/yy',ped_ven_cabROM_DROM.AsDateTime);
      ladcli.Caption := ped_ven_cabCLI_FANT.AsString;
      ladven.Caption := ped_ven_cabFUN_APEL.AsString;
      laqtve.Caption := formatFloat('#,0.00########',ped_ven_cabROM_QTVE.AsFloat);
      larlve.Caption := ped_ven_cabROM_RLVE.AsString;

      if ped_ven_lan.Fields[0].IsNull then
      pcITE.ActivePage := tsPED else
      pcITE.ActivePage := tsSEP;
      edcdet.SetFocus;
    end;
  end;
end;

procedure Tfrmctr_ped_se2.LIMPA_ETIQUETA;
begin
  lacpro.Caption := 'NADA CONSTA';
  ladpro.Caption := 'NADA CONSTA';
  lanlan.Caption := 'NADA CONSTA';
  ladlan.Caption := 'NADA CONSTA';
  laelan.Caption := 'NADA CONSTA';
  laqlan.Caption := 'NADA CONSTA';
  laolan.Caption := 'NADA CONSTA';
  larlan.Caption := 'NADA CONSTA';
end;

procedure Tfrmctr_ped_se2.PESQUISA_ETIQUETA;
begin
  if (eddero.Text = '') or (eddero.Text = '0') then
  begin
    eddero.SetFocus;
    raise exception.Create('Número do pedido não informado !');
  end;

  LIMPA_ETIQUETA;

  if edcdet.Text = '' then
  exit;

  if not oBSONumero(edcdet.Text) then
  begin
    edcdet.SetFocus;
    raise exception.Create('Número da etiqueta inválido !');
  end;
  
  edcdet.Text := oStrZero(strtoint(edcdet.Text),10);

  with cad_pro_est do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAD_PRO_EST.ID,EST_CDPD,EST_CDRO,EST_DCAD,EST_DFAV,EST_DUSU,EST_FLAG,EST_CRED,EST_DEBI,EST_CDET,EST_DSEP,EST_DMAP,EST_CTNR,EST_LOTE,CAD_PRO.ID,PRO_CART,PRO_CPRO,PRO_DCOR,PRO_DUNI,PRO_DPRO');
    if test = 'DEFEITO' then
    SQL.Add('FROM   CAD_PRO,'+SLPrincipal.Values['cad_pro_def']+' "CAD_PRO_EST"') else
    SQL.Add('FROM   CAD_PRO,'+SLPrincipal.Values['cad_pro_est']+' "CAD_PRO_EST"');
    SQL.Add('WHERE  EST_CPRO = CAD_PRO.ID');
    SQL.Add('AND    EST_CDET = '''+edcdet.Text+'''');
    Open;
  end;
    
  if cad_pro_est.Fields[0].IsNull then
  begin
    edcdet.SetFocus;
    raise exception.Create('Número de etiqueta não encontrado !');
  end;

  if cad_pro_estEST_CDPD.AsInteger > 0 then
  with aux do
  begin
    SQL.Clear;
    SQL.Add('SELECT ROM_DERO,ROM_DROM,CLI_FANT,FUN_APEL');
    SQL.Add('FROM   CAD_CLI,CAD_FUN,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
    SQL.Add('WHERE  PED_VEN_CAB.ID = '''+cad_pro_estEST_CDPD.AsString+'''');
    SQL.Add('AND    ROM_CCLI       = CAD_CLI.ID');
    SQL.Add('AND    ROM_CVEN       = CAD_FUN.ID');
    Open;

    if (not fields[0].IsNull) and (fields[0].AsString <> eddero.Text) then
    begin
      edcdet.SetFocus;
      raise exception.Create('Número de etiqueta comprometida com o seguinte pedido:'+#13+#13+
                             'Pedido No '+fields[0].AsString+' de '+formatDateTime('dd/mm/yy',fields[1].AsDateTime)+#13+
                             'Vendedor  '+fields[3].AsString+#13+
                             'Cliente   '+fields[2].AsString);
    end;                         
  end;

  ped_ven_lan.First;
  if ped_ven_lan.Locate('EST_CDET',edcdet.Text,[]) then
  begin
    edcdet.SetFocus;
    pcite.ActivePage := tsSEP;
    raise exception.Create('Número da etiqueta já utilizada para essa separação !');
  end;

  lacpro.Caption := cad_pro_estPRO_CPRO.AsString;
  ladpro.Caption := cad_pro_estPRO_DCOR.AsString+' '+cad_pro_estPRO_DPRO.AsString;
  lanlan.Caption := cad_pro_estEST_CDRO.AsString;
  ladlan.Caption := formatDateTime('dd/mm/yy',cad_pro_estEST_DCAD.AsDateTime);
  laelan.Caption := cad_pro_estEST_DFAV.AsString;
  laqlan.Caption := formatFloat('#,0.00########',cad_pro_estEST_CRED.AsFloat);
  larlan.Caption := cad_pro_estEST_DUSU.AsString;

  if cad_pro_estEST_FLAG.AsString = 'E' then
  laolan.Caption := 'ENTRADA' else
  if cad_pro_estEST_FLAG.AsString = 'S' then
  laolan.Caption := 'SAÍDA' else
  if cad_pro_estEST_FLAG.AsString = 'I' then
  laolan.Caption := 'INVENTÁRIO' else
  if cad_pro_estEST_FLAG.AsString = 'V' then
  laolan.Caption := 'FATURADO';

  try
    BRet := false;

    ped_ven_ite.First;
    while not ped_ven_ite.Eof do
    begin
      if cad_pro_estPRO_CPRO.AsString = ped_ven_itePRO_CPRO.AsString then
      begin
        BRet := true;
        break;
      end;
      ped_ven_ite.Next;
    end;
  finally
    if not BRet then
    begin
      pcITE.ActivePage := tsPED;
      edcdet.SetFocus;
      
      raise exception.Create('Produto cadastrado para a etiqueta '+edcdet.Text+#13+
                             'não possui referencia no pedido '   +eddero.Text);
    end;
  end;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM ROM_ITE');
    SQL.Add('WHERE  ROM_CDET = '''+edcdet.Text+'''');
    Open;

    if not fields[0].IsNull then
    begin
      rom_sep.First;
      rom_sep.Locate('ROM_CDET',edcdet.Text,[]);

      pcITE.ActivePage := tsLAN;
      edcdet.SetFocus;
      
      raise exception.Create('Número de etiqueta já utilizada para essa separação !');
    end;
  end;
  
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM ROM_ITE');
    SQL.Add('WHERE  ROM_CDET = '''+edcdet.Text+'''');
    Open;
  end;

  if consulta_S.Fields[0].IsNull then
  begin
    rom_sep.Append;
    rom_sepID.Value       := 0;
    rom_sepROM_CCAB.Value := cad_pro_estID.AsInteger;
    rom_sepROM_CART.Value := cad_pro_estPRO_CART.AsString;
    rom_sepROM_IPRO.Value := cad_pro_estID1.AsInteger;
    rom_sepROM_CPRO.Value := cad_pro_estPRO_CPRO.AsString;
    rom_sepROM_DPRO.Value := cad_pro_estPRO_DPRO.AsString;
    rom_sepROM_DCOR.Value := cad_pro_estPRO_DCOR.AsString;
    rom_sepROM_DUNI.Value := cad_pro_estPRO_DUNI.AsString;
    rom_sepROM_QTSP.Value := cad_pro_estEST_CRED.AsFloat;
    rom_sepROM_CDET.Value := cad_pro_estEST_CDET.AsString;
    rom_sepROM_DSEP.Value := frmprincipal.cad_usuUSU_DUSU.AsString;
    rom_sepROM_UNIT.Value := ped_ven_iteROM_UNIT.AsFloat;
    rom_sep.Post;

    pcITE.ActivePage := tsLAN;
  end;

  edcdet.Text := '';
  edcdet.SetFocus;
end;

procedure Tfrmctr_ped_se2.ABRE_TABELA;
begin
  if not IBTra.Active   then IBTra.StartTransaction;
  if not tSHEILD.Active then tSHEILD.StartTransaction;

  pcITE.ActivePage := tsLAN;

  with rom_sep do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM ROM_ITE');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM ROM_ITE');
    SelectSQL.Add('ORDER BY ID');
    Open;
    tSHEILD.CommitRetaining;
  end;
end;

function Tfrmctr_ped_se2.RETORNA_STFI: string;
var
  stfi: string;
begin
  stfi := '';

  if (ped_ven_cabROM_STPD.AsString <> 'DEVOLUÇÃO') and (ped_ven_cabROM_STPD.AsString <> 'ABATIMENTO') and (ped_ven_cabROM_STCO.AsString <> 'SEM COBRANÇA') then
  begin
    if psq_cliCLI_STAV.AsString = 'S' then
    begin
      stfi := 'SUSPENSO';

      cli_sta.Close;
      cli_sta.ParamByName('FIN_STFI').Value := 'PROTESTADO';
      cli_sta.ParamByName('FIN_CCLI').Value := psq_cliID.AsString;
      cli_sta.Open;

      if not cli_sta.Fields[0].IsNull then
      stfi := 'PROTESTADO' else
      begin
        cli_sta.Close;
        cli_sta.ParamByName('FIN_STFI').Value := 'NÃO PAGO';
        cli_sta.ParamByName('FIN_CCLI').Value := psq_cliID.AsString;
        cli_sta.Open;

        if not cli_sta.Fields[0].IsNull then
        stfi := 'NÃO PAGO';
      end;
    end
    else
    begin
      if frmprincipal.parametrosPAR_FANT.AsString <> 'OTIMOTEX FARDO' then
      stfi := frmprincipal.CALCULA_LIMITE_VENDA(true,ped_ven_cabROM_STCO.AsString,edfatu.Text,psq_cliID.AsString,ped_ven_cabROM_TCDE.AsString,cad_cli_crdCLI_CRED.AsString);

      if stfi = '' then
      stfi := frmprincipal.CALCULA_LIMITE_BANCARIO(true,ped_ven_cabROM_STCO.AsString,edfatu.Text,psq_cliID.AsString);

      if stfi = '' then
      stfi := frmprincipal.CALCULA_LIMITE_CARTEIRA(true,ped_ven_cabROM_STCO.AsString,edfatu.Text,psq_cliID.AsString);
    end;
  end;

  if stfi = '' then
  stfi := 'PENDENTE';

  result := stfi;
end;

procedure Tfrmctr_ped_se2.siSAVClick(Sender: TObject);
begin
  inherited;
  if oYesNo(handle,'Confirma separação do pedido ?') = mrno then
  abort;

  rom_sep.First;
  if rom_sep.Fields[0].IsNull then
  raise exception.Create('Separação de Pedido sem etiquetas cadastradas !');

  try
    try
      with frmprincipal.sp_sql do
      begin
        while not rom_sep.Eof do
        begin
          SQL.Clear;
          SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_res']);
          SQL.Add('WHERE  EST_CDPD = '''+ped_ven_cabID.AsString  +'''');
          SQL.Add('AND    EST_CPRO = '''+rom_sepROM_IPRO.AsString+'''');
          SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

          ibSP.StoredProcName := 'SP_SQL';
          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;

          if test <> 'DEFEITO' then
          begin
            ibSP.StoredProcName := 'SP_CAD_PRO_SEP';
            ibSP.Prepare;

            ibSP.ParamByName('est').Value  := 'CAD_PRO_SEP';
            if frmprincipal.parametrosID.AsInteger > 1 then
            ibSP.ParamByName('est').Value  := 'CAD_PRO_SEP_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

            ibSP.ParamByName('id').Value   := 0;
            ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
            ibSP.ParamByName('cdro').Value := 0;
            ibSP.ParamByName('cdpd').Value := ped_ven_cabID.AsInteger;
            ibSP.ParamByName('cdbx').Value := 0;
            ibSP.ParamByName('cpro').Value := rom_sepROM_IPRO.AsInteger;
            ibSP.ParamByName('cusu').Value := ped_ven_cabROM_CVEN.AsInteger;
            ibSP.ParamByName('dusu').Value := ped_ven_cabFUN_APEL.AsString;
            ibSP.ParamByName('cfav').Value := ped_ven_cabROM_CCLI.AsInteger;
            ibSP.ParamByName('dfav').Value := ped_ven_cabCLI_FANT.AsString;
            ibSP.ParamByName('dcad').Value := strtodate(SLPrincipal.Values['data_sistema']);
            ibSP.ParamByName('docu').Value := ped_ven_cabROM_DERO.AsString;
            ibSP.ParamByName('flag').Value := 'R';
            ibSP.ParamByName('cdet').Value := rom_sepROM_CDET.AsString;
            ibSP.ParamByName('dsep').Value := rom_sepROM_DSEP.AsString;
            ibSP.ParamByName('debi').Value := 0;
            ibSP.ParamByName('cred').Value := rom_sepROM_QTSP.AsFloat;

            if rom_sepROM_CDET.AsString <> '' then
            begin
              consulta.SQL.Clear;
              consulta.SQL.Add('SELECT EST_DMAP,EST_CTNR,EST_LOTE FROM '+SLPrincipal.Values['cad_pro_est']+' "CAD_PRO_EST"');
              consulta.SQL.Add('WHERE  EST_CDET = '''+rom_sepROM_CDET.AsString+'''');
              consulta.Open;
            end;
            
            ibSP.ParamByName('dmap').Value := consulta.fields[0].AsString;
            ibSP.ParamByName('ctnr').Value := consulta.fields[1].AsString;
            ibSP.ParamByName('lote').Value := consulta.fields[2].AsString;
            ibSP.ExecProc;
          end;

          SQL.Clear;
          if test = 'DEFEITO' then
          SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_def']+' "CAD_PRO_EST"') else
          SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_est']+' "CAD_PRO_EST"');
          SQL.Add('SET    EST_CDPD = '''+ped_ven_cabID.AsString+''',');
          SQL.Add('       EST_DSEP = '''+rom_sepROM_DSEP.AsString+'''');
          SQL.Add('WHERE  EST_CDET = '''+rom_sepROM_CDET.AsString+'''');

          ibSP.StoredProcName := 'SP_SQL';
          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;

          rom_sep.Next;
        end;

        consulta_S.SQL.Clear;
        consulta_S.SQL.Add('SELECT   ROM_IPRO,SUM(ROM_QTSP),COUNT(*) FROM ROM_ITE');
        consulta_S.SQL.Add('GROUP BY ROM_IPRO');
        consulta_S.Open;

        while not consulta_S.Eof do
        begin
          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
          SQL.Add('SET    ROM_QTPD = '''+oStrTran(consulta_S.fields[1].AsString,',','.')+''',');
          SQL.Add('       ROM_RLPD = '''+oStrTran(consulta_S.fields[2].Asstring,',','.')+''',');
          SQL.Add('       ROM_DSEP = '''+frmprincipal.cad_usuUSU_DUSU.AsString         +'''');
          SQL.Add('WHERE  ROM_CCAB = '''+ped_ven_cabID.AsString+'''');
          SQL.Add('AND    ROM_CPRO = '''+consulta_S.fields[0].AsString+'''');

          ibSP.StoredProcName := 'SP_SQL';
          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;

          consulta_S.Next;
        end;

        consulta_S.SQL.Clear;
        consulta_S.SQL.Add('SELECT   SUM(ROM_QTSP),COUNT(*) FROM ROM_ITE');
        consulta_S.SQL.Add('GROUP BY ROM_IPRO');
        consulta_S.Open;

        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
        SQL.Add('SET    ROM_STFI = '''+RETORNA_STFI+''',');
        SQL.Add('       ROM_DSEP = '''+frmprincipal.cad_usuUSU_DUSU.AsString+''',');
        SQL.Add('       ROM_QTPD = '''+oStrTran(consulta_S.Fields[0].AsString,',','.')+'''');
        SQL.Add('WHERE        ID = '''+ped_ven_cabID.AsString+'''');

        ibSP.StoredProcName := 'SP_SQL';
        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;

        IBTra.CommitRetaining;
      end;
    except
      IBTra.RollbackRetaining;
      messageBox(handle,'Erro na separação das etiquetas !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
    end;
  finally
    pTRA.StartTransaction;

    pSP.StoredProcName := 'SP_EVENT';
    pSP.Prepare;
    pSP.Params[0].AsString := 'CTR_PED';
    pSP.ExecProc;

    pTRA.Commit;

    ped_ven_lan.First;
    ped_ven_lan.EnableControls;
    close;
  end;
end;

procedure Tfrmctr_ped_se2.FormCreate(Sender: TObject);
begin
  inherited;
  ABRE_TABELA;
end;

procedure Tfrmctr_ped_se2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_RETURN: if (not (activeControl is TdxDBGrid) and
                      not (activeControl is TDBMemo)   and
                      not (activeControl is TdxMemo)   and
                      not (activeControl is TdxDBMemo) and
                      not (activeControl is TdbGrid)   and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       40       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       38       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, false, true);
       118      : siPSQ.Click;
  end;

  if ((ssCtrl in Shift) and (Key in [83])) then
     siSAV.Click;
end;

procedure Tfrmctr_ped_se2.pALTClick(Sender: TObject);
begin
  if rom_sep.State = dsBrowse then
     rom_sep.Edit;
end;

procedure Tfrmctr_ped_se2.pSAVClick(Sender: TObject);
begin
  if rom_sep.State in [dsedit,dsinsert] then
     rom_sep.Post;
end;

procedure Tfrmctr_ped_se2.pCANClick(Sender: TObject);
begin
  rom_sep.Cancel;
end;

procedure Tfrmctr_ped_se2.pDELClick(Sender: TObject);
begin
  if oYesNo(handle,'Confirma cancelamento da etiqueta No '+rom_sepROM_CDET.AsString+' ?') = mrno then
     abort;

  rom_sep.Delete;   
end;

procedure Tfrmctr_ped_se2.rom_sepBeforeCancel(DataSet: TDataSet);
begin
  if rom_sep.RecordCount = 0 then
  begin
    rom_sep.Close;
    rom_sep.Open;
    ABORT;
  end;
end;

procedure Tfrmctr_ped_se2.rom_sepAfterEdit(DataSet: TDataSet);
begin
  dbgpen.FocusedColumn := 0;
end;

procedure Tfrmctr_ped_se2.rom_sepAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  tSHEILD.CommitRetaining;

  wRec := rom_sep.GetBookmark;
  rom_sep.Close;
  rom_sep.Open;
  if (wRec = Nil) or (rom_sep.Fields[0].IsNull) then rom_sep.last
     else rom_sep.GotoBookmark(wRec);
  rom_sep.FreeBookmark(wRec);
end;

procedure Tfrmctr_ped_se2.edcdetKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  PESQUISA_ETIQUETA;
end;

procedure Tfrmctr_ped_se2.edderoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  PESQUISA_PEDIDO;
end;

procedure Tfrmctr_ped_se2.ped_ven_cabAfterOpen(DataSet: TDataSet);
begin
  if ped_ven_cabID.AsInteger > 0 then
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT VEN_TEST,VEN_FATU FROM TAB_PED');
      SQL.Add('WHERE  VEN_TIPO = '''+ped_ven_cabROM_STPD.AsString+'''');
      Open;
      test        := fields[0].AsString;
      edfatu.Text := fields[1].AsString;
    end;

    with ped_ven_ite do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_VEN_ITE.*,CAD_PRO.ID,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_CCOR,');
      SQL.Add('         CAD_PRO.PRO_RCOR,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
      SQL.Add('         CAD_PRO.PRO_CBAR,CAD_PRO.PRO_PPRO,CAD_PRO.PRO_CEMB,CAD_PRO.PRO_GRAD,');
      SQL.Add('         CAD_PRO.PRO_PIPI,CAD_PRO.PRO_REPR,CAD_PRO_IMG.PRO_FOTO');
      SQL.Add('FROM     CAD_PRO_IMG,CAD_PRO,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
      SQL.Add('WHERE    PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND      CAD_PRO_IMG.PRO_CART = CAD_PRO.PRO_CART');
      if ped_ven_cabID.AsString <> '' then
      SQL.Add('AND      PED_VEN_ITE.ROM_CCAB = '''+ped_ven_cabID.AsString+'''') else
      SQL.Add('AND      PED_VEN_ITE.ROM_CCAB = 0');
      SQL.Add('ORDER BY PED_VEN_ITE.ROM_ITEM');
      Open;
    end;

    with ped_ven_lan do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAD_PRO_EST.ID,EST_CDPD,EST_CDRO,EST_DCAD,EST_DFAV,EST_DUSU,EST_FLAG,EST_CRED,EST_DEBI,EST_CDET,EST_DSEP,EST_DMAP,EST_CTNR,EST_LOTE,CAD_PRO.ID,PRO_CART,PRO_CPRO,PRO_DCOR,PRO_DUNI,PRO_DPRO');
      if test = 'DEFEITO' then
      SQL.Add('FROM   CAD_PRO,'+SLPrincipal.Values['cad_pro_def']+' "CAD_PRO_EST"') else
      SQL.Add('FROM   CAD_PRO,'+SLPrincipal.Values['cad_pro_est']+' "CAD_PRO_EST"');
      SQL.Add('WHERE  CAD_PRO_EST.EST_CPRO = CAD_PRO.ID');
      if test <> 'DEFEITO' then
      SQL.Add('AND    EST_CRED > 0 AND EST_FLAG = ''E''');

      if ped_ven_cabID.AsString <> '' then
      SQL.Add('AND    EST_CDPD = '''+ped_ven_cabID.AsString+'''') else
      SQL.Add('AND    EST_CDPD = 0');

      SQL.Add('ORDER BY EST_CDET');
      Open;
    end;

    with psq_cli do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CLI_BAI,CLI_TLOG,CLI_LOGR,CLI_NUME,CLI_CEP,CLI_COMP,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,');
      SQL.Add('       CLI_OBSO,CLI_VDSC,CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,CLI_VULT,CLI_DDD,CLI_TEL1,REP_FANT,USU_DUSU,CLI_STPD,CLI_DTRA');
      SQL.Add('FROM   CAD_CLI');
      SQL.Add('LEFT   OUTER JOIN CAD_USU ON CAD_CLI.CLI_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('LEFT   OUTER JOIN CAD_REP ON CAD_CLI.CLI_CREP = CAD_REP.ID');
      SQL.Add('WHERE  CAD_CLI.ID = '''+ped_ven_cabROM_CCLI.AsString+'''');
      Open;
    end;
  end;  
end;

procedure Tfrmctr_ped_se2.siVALClick(Sender: TObject);
begin
  frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  if qrpped_sep = nil then
     qrpped_sep := Tqrpped_sep.Create(self);

  try
    qrpped_sep.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpped_sep.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpped_sep.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpped_sep.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpped_sep.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpped_sep.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpped_sep.qrltitulo.Caption    := 'LISTAGEM DE SEPARAÇÃO DE PEDIDOS';

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpped_sep.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpped_sep.Prepare;
    if tag = 0 then
       qrpped_sep.Preview
  finally
    freeAndNil(qrpped_sep);
    qrpped_sep.Free;
  end;
end;

procedure Tfrmctr_ped_se2.siCANClick(Sender: TObject);
begin
  if eddero.Text = '' then
  raise exception.Create('Número do pedido não informado !');
  
  if oYesNo(handle,'Confirma o cancelamento de toda a separação ?') = mrno then
  abort;

  if ped_ven_cabROM_CDNF.AsInteger > 0 then
  raise exception.Create('Pedido já faturado !'+#13+'Nota Fiscal No '+ped_ven_cabROM_CDNF.AsString);

  if ped_ven_cabROM_CDRO.AsInteger > 0 then
  raise exception.Create('Pedido em processo de faturamento !'+#13+'Romaneio No '+ped_ven_cabROM_CDRO.AsString);

  try
    try
      with frmprincipal.sp_sql do
      begin
        ibSP.StoredProcName := 'SP_SQL';
        SQL.Clear;
        SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_res']);
        SQL.Add('WHERE  EST_CDPD = '''+ped_ven_cabID.AsString+'''');
        SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;

        ibSP.StoredProcName := 'SP_SQL';
        SQL.Clear;
        SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_sep']);
        SQL.Add('WHERE  EST_CDPD = '''+ped_ven_cabID.AsString+'''');
        SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;

        SQL.Clear;
        if test = 'DEFEITO' then
        SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_def']+' "CAD_PRO_EST"') else
        SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_est']+' "CAD_PRO_EST"');
        SQL.Add('SET    EST_CDPD = NULL,');
        SQL.Add('       EST_DSEP = NULL');
        SQL.Add('WHERE  EST_CDPD = '''+ped_ven_cabID.AsString+'''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;

        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
        SQL.Add('SET    ROM_QTPD = NULL,');
        SQL.Add('       ROM_RLPD = NULL,' );
        SQL.Add('       ROM_DSEP = NULL');
        SQL.Add('WHERE  ROM_CCAB = '''+ped_ven_cabID.AsString+'''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;

        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
        SQL.Add('SET    ROM_STFI = '''+RETORNA_STFI+''',');
        SQL.Add('       ROM_QTPD = NULL,');
        SQL.Add('       ROM_DSEP = NULL');
        SQL.Add('WHERE  ID = '''+ped_ven_cabID.AsString+'''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;

        ped_ven_ite.First;
        while not ped_ven_ite.Eof do
        begin
          ibSP.StoredProcName := 'SP_CAD_PRO_RES';
          ibSP.Prepare;

          ibSP.ParamByName('est').Value  := 'CAD_PRO_RES';
          if frmprincipal.parametrosID.AsInteger > 1 then
          ibSP.ParamByName('est').Value  := 'CAD_PRO_RES_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

          ibSP.ParamByName('id').Value   := 0;
          ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
          ibSP.ParamByName('cdro').Value := 0;
          ibSP.ParamByName('cdpd').Value := ped_ven_iteROM_CCAB.AsInteger;
          ibSP.ParamByName('cdbx').Value := 0;
          ibSP.ParamByName('cpro').Value := ped_ven_iteROM_CPRO.AsInteger;
          ibSP.ParamByName('cusu').Value := ped_ven_cabROM_CVEN.AsInteger;
          ibSP.ParamByName('dusu').Value := ped_ven_cabFUN_APEL.AsString;
          ibSP.ParamByName('cfav').Value := ped_ven_cabROM_CCLI.AsInteger;
          ibSP.ParamByName('dfav').Value := ped_ven_cabCLI_FANT.AsString;
          ibSP.ParamByName('dcad').Value := strtodate(SLPrincipal.Values['data_sistema']);
          ibSP.ParamByName('docu').Value := ped_ven_cabROM_DERO.AsString;
          ibSP.ParamByName('flag').Value := 'R';
          ibSP.ParamByName('cdet').Value := '';
          ibSP.ParamByName('dsep').Value := '';
          ibSP.ParamByName('debi').Value := 0;
          ibSP.ParamByName('cred').Value := ped_ven_iteROM_QTDE.AsFloat;
          ibSP.ParamByName('dmap').Value := '';
          ibSP.ParamByName('ctnr').Value := '';
          ibSP.ParamByName('lote').Value := '';
          ibSP.ExecProc;

          ped_ven_ite.Next;
        end;

        IBTra.CommitRetaining;
      end;

      messageBox(handle,'Cancelamento total de separação realizado com sucesso !',PChar(Self.Caption),MB_ICONINFORMATION+MB_OK);
    except
      messageBox(handle,'Erro na tentativa de cancelamento total de separação!',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    end;
  finally
    ped_ven_ite.Close;
    ped_ven_ite.Open;
    ped_ven_lan.Close;
    ped_Ven_lan.Open;
  end;
end;

procedure Tfrmctr_ped_se2.FormShow(Sender: TObject);
begin
  inherited;

  with pEVE do
  begin
    UnregisterEvents;
    Events.Add('CTR_PED');
    RegisterEvents;
  end;
end;

procedure Tfrmctr_ped_se2.FormDestroy(Sender: TObject);
begin
  inherited;
  pEVE.UnRegisterEvents;
end;

procedure Tfrmctr_ped_se2.psq_cliAfterOpen(DataSet: TDataSet);
begin
  if psq_cliID.AsInteger > 0 then
  with cad_cli_crd do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_CLI_CRD');
    SelectSQL.Add('WHERE  CLI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    SelectSQL.Add('AND    CLI_CCLI = '''+psq_cliID.AsString+'''');
    Open;
  end;
end;

end.
