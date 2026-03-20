unit pctr_ped_sep;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, math, dxDBTLCl, dxGrClms, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  DBCtrls, Grids, DBGrids, StdCtrls, dxPageControl, IBEvents, rxSpeedbar;

type
  Tfrmctr_ped_sep = class(Tfrmpadr3)
    siPSQ: TSpeedItem;
    dtsrom_cab: TDataSource;
    Panel1: TPanel;
    dbgConsulta: TdxDBGrid;
    SpeedBar1: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedbarSection2: TSpeedbarSection;
    SpeedbarSection3: TSpeedbarSection;
    SpeedbarSection4: TSpeedbarSection;
    siINC: TSpeedItem;
    siALT: TSpeedItem;
    siDEL: TSpeedItem;
    SpeedItem2: TSpeedItem;
    SpeedItem3: TSpeedItem;
    dtsrom_ite: TDataSource;
    Panel2: TPanel;
    tSHEILD: TIBTransaction;
    consulta_s: TIBQuery;
    ped_ven_cab: TIBQuery;
    siMTD: TSpeedItem;
    siDTD: TSpeedItem;
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
    ped_ven_iteROM_QTSP: TIBBCDField;
    ped_ven_iteROM_QTPD: TIBBCDField;
    ped_ven_iteROM_VDSC: TIBBCDField;
    ped_ven_iteROM_TOTA: TIBBCDField;
    ped_ven_iteID1: TIntegerField;
    ped_ven_itePRO_CART: TIBStringField;
    ped_ven_itePRO_CPRO: TIBStringField;
    ped_ven_itePRO_CCOR: TIntegerField;
    ped_ven_itePRO_RCOR: TIBStringField;
    ped_ven_itePRO_DCOR: TIBStringField;
    ped_ven_itePRO_DUNI: TIBStringField;
    ped_ven_itePRO_CBAR: TIBStringField;
    ped_ven_itePRO_CEMB: TIntegerField;
    ped_ven_itePRO_GRAD: TIBStringField;
    ped_ven_itePRO_FOTO: TBlobField;
    rom_ite: TIBDataSet;
    rom_iteID: TIntegerField;
    rom_iteROM_CCAB: TIntegerField;
    rom_iteROM_CDOC: TIntegerField;
    rom_iteROM_CDPR: TIntegerField;
    rom_iteROM_CDPD: TIntegerField;
    rom_iteROM_CDRO: TIntegerField;
    rom_iteROM_CDNF: TIntegerField;
    rom_iteROM_ITEM: TIBStringField;
    rom_iteROM_CART: TIBStringField;
    rom_iteROM_IPRO: TIntegerField;
    rom_iteROM_CPRO: TIBStringField;
    rom_iteROM_IPR2: TIntegerField;
    rom_iteROM_CPR2: TIBStringField;
    rom_iteROM_DPRO: TIBStringField;
    rom_iteROM_CCOR: TIntegerField;
    rom_iteROM_RCOR: TIBStringField;
    rom_iteROM_DCOR: TIBStringField;
    rom_iteROM_CCO2: TIntegerField;
    rom_iteROM_RCO2: TIBStringField;
    rom_iteROM_DCO2: TIBStringField;
    rom_iteROM_CGRD: TIBStringField;
    rom_iteROM_DGRD: TIBStringField;
    rom_iteROM_DUNI: TIBStringField;
    rom_iteROM_QTDE: TIBBCDField;
    rom_iteROM_QTSP: TIBBCDField;
    rom_iteROM_QTPD: TIBBCDField;
    rom_iteROM_QDIS: TIBBCDField;
    rom_iteROM_VDSC: TIBBCDField;
    rom_iteROM_TOTA: TIBBCDField;
    rom_iteROM_CDET: TIBStringField;
    rom_iteROM_CBAR: TIBStringField;
    rom_iteROM_PEMB: TIBBCDField;
    rom_iteROM_FLAG: TSmallintField;
    rom_iteROM_FOTO: TBlobField;
    dbgConsultaROM_DROM: TdxDBGridDateColumn;
    dbgConsultaROM_DVEN: TdxDBGridMaskColumn;
    dbgConsultaROM_DREP: TdxDBGridMaskColumn;
    dbgConsultaROM_TCDE: TdxDBGridMaskColumn;
    dbgConsultaROM_DCLI: TdxDBGridMaskColumn;
    pcite: TdxPageControl;
    tsITE1: TdxTabSheet;
    dbgpen: TdxDBGrid;
    dbgpenROM_ITEM: TdxDBGridMaskColumn;
    dbgpenROM_CPRO: TdxDBGridMaskColumn;
    dbgpenROM_DCOR: TdxDBGridMaskColumn;
    dbgpenROM_DPRO: TdxDBGridMaskColumn;
    dbgpenROM_CDET: TdxDBGridMaskColumn;
    dbgpenROM_QTDE: TdxDBGridMaskColumn;
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
    dbgConsultaROM_CDPD: TdxDBGridMaskColumn;
    rom_cab: TIBDataSet;
    rom_cabID: TIntegerField;
    rom_cabROM_CDOC: TIntegerField;
    rom_cabROM_CDPR: TIntegerField;
    rom_cabROM_CDPD: TIntegerField;
    rom_cabROM_CDRO: TIntegerField;
    rom_cabROM_CDRD: TIntegerField;
    rom_cabROM_CDNF: TIntegerField;
    rom_cabROM_CDBX: TIntegerField;
    rom_cabROM_DERO: TIBStringField;
    rom_cabROM_STPD: TIBStringField;
    rom_cabROM_STCO: TIBStringField;
    rom_cabROM_STFI: TIBStringField;
    rom_cabROM_DROM: TDateField;
    rom_cabROM_HROM: TTimeField;
    rom_cabROM_DBAI: TDateField;
    rom_cabROM_DCAN: TDateField;
    rom_cabROM_DNFS: TDateField;
    rom_cabROM_DEXP: TDateField;
    rom_cabROM_HEXP: TTimeField;
    rom_cabROM_CEXP: TIntegerField;
    rom_cabROM_CCLI: TIntegerField;
    rom_cabROM_DCLI: TIBStringField;
    rom_cabROM_CVEN: TIntegerField;
    rom_cabROM_DVEN: TIBStringField;
    rom_cabROM_CREP: TIntegerField;
    rom_cabROM_DREP: TIBStringField;
    rom_cabROM_CPAG: TIntegerField;
    rom_cabROM_DPAG: TIBStringField;
    rom_cabROM_QTVE: TIBBCDField;
    rom_cabROM_QTSP: TIBBCDField;
    rom_cabROM_QTPD: TIBBCDField;
    rom_cabROM_RLVE: TIntegerField;
    rom_cabROM_TSDE: TIBBCDField;
    rom_cabROM_TDSC: TIBStringField;
    rom_cabROM_PDSC: TIBBCDField;
    rom_cabROM_CDSC: TIBBCDField;
    rom_cabROM_ADSC: TIBBCDField;
    rom_cabROM_TCDE: TIBBCDField;
    rom_cabROM_CONC: TSmallintField;
    rom_cabROM_OBSE: TMemoField;
    rom_cabROM_STA: TIBStringField;
    rom_cabROM_CDCX: TSmallintField;
    rom_iteROM_QTRL: TIntegerField;
    rom_iteROM_RLSP: TIntegerField;
    rom_iteROM_RLPD: TIntegerField;
    rom_iteROM_RLDI: TIntegerField;
    rom_iteROM_METR: TIBBCDField;
    rom_iteROM_PESO: TIBBCDField;
    rom_iteROM_REND: TIBBCDField;
    rom_iteROM_PSCN: TIBBCDField;
    rom_iteROM_PSMR: TIBBCDField;
    ped_ven_iteROM_QTRL: TIntegerField;
    ped_ven_iteROM_RLSP: TIntegerField;
    ped_ven_iteROM_RLPD: TIntegerField;
    ped_ven_iteROM_FLAG: TIBStringField;
    ped_ven_iteROM_COMI: TIBBCDField;
    ped_ven_iteROM_DPRO: TIBStringField;
    ped_ven_cabID: TIntegerField;
    ped_ven_cabROM_CDOC: TIntegerField;
    ped_ven_cabROM_CDPR: TIntegerField;
    ped_ven_cabROM_CDPD: TIntegerField;
    ped_ven_cabROM_CDRO: TIntegerField;
    ped_ven_cabROM_CDRD: TIntegerField;
    ped_ven_cabROM_CDNF: TIntegerField;
    ped_ven_cabROM_CDBX: TIntegerField;
    ped_ven_cabROM_CDCX: TIntegerField;
    ped_ven_cabROM_DERO: TIBStringField;
    ped_ven_cabROM_STPD: TIBStringField;
    ped_ven_cabROM_STCO: TIBStringField;
    ped_ven_cabROM_STFI: TIBStringField;
    ped_ven_cabROM_DROM: TDateField;
    ped_ven_cabROM_HROM: TTimeField;
    ped_ven_cabROM_DBAI: TDateField;
    ped_ven_cabROM_DCAN: TDateField;
    ped_ven_cabROM_DNFS: TDateField;
    ped_ven_cabROM_DEXP: TDateField;
    ped_ven_cabROM_HEXP: TTimeField;
    ped_ven_cabROM_CEXP: TIntegerField;
    ped_ven_cabROM_CCLI: TIntegerField;
    ped_ven_cabROM_CVEN: TIntegerField;
    ped_ven_cabROM_CREP: TIntegerField;
    ped_ven_cabROM_CPAG: TIntegerField;
    ped_ven_cabROM_QTVE: TIBBCDField;
    ped_ven_cabROM_QTSP: TIBBCDField;
    ped_ven_cabROM_QTPD: TIBBCDField;
    ped_ven_cabROM_RLVE: TIntegerField;
    ped_ven_cabROM_TSDE: TIBBCDField;
    ped_ven_cabROM_TDSC: TIBStringField;
    ped_ven_cabROM_PDSC: TIBBCDField;
    ped_ven_cabROM_CDSC: TIBBCDField;
    ped_ven_cabROM_ADSC: TIBBCDField;
    ped_ven_cabROM_TCDE: TIBBCDField;
    ped_ven_cabROM_CONC: TSmallintField;
    ped_ven_cabROM_OBSE: TMemoField;
    ped_ven_cabROM_STA: TIBStringField;
    ped_ven_cabROM_COMI: TIBBCDField;
    ped_ven_cabROM_DPRD: TDateField;
    ped_ven_cabROM_CTNR: TIBStringField;
    ped_ven_cabROM_DEMB: TDateField;
    ped_ven_cabROM_DDES: TDateField;
    ped_ven_cabCLI_FANT: TIBStringField;
    ped_ven_cabUSU_DUSU: TIBStringField;
    ped_ven_cabREP_FANT: TIBStringField;
    ped_ven_cabPAG_DPAG: TIBStringField;
    ped_ven_iteROM_TPRC: TIBStringField;
    ped_ven_iteROM_ABCD: TIBStringField;
    ped_ven_iteROM_DCOR: TIBStringField;
    ped_ven_iteROM_PCOR: TIBStringField;
    pTRA: TIBTransaction;
    pSP: TIBStoredProc;
    pEVE: TIBEvents;
    rom_iteROM_PCOR: TIBStringField;
    rom_iteROM_PCO2: TIBStringField;
    rom_iteROM_PRCA: TFloatField;
    rom_iteROM_PRPA: TFloatField;
    rom_iteROM_VPRC: TFloatField;
    rom_iteROM_VPRO: TFloatField;
    rom_iteROM_RPRC: TFloatField;
    rom_iteROM_RPRO: TFloatField;
    rom_iteROM_PCOM: TFloatField;
    rom_iteROM_CUST: TFloatField;
    rom_iteROM_UNIT: TFloatField;
    rom_iteROM_PREC: TFloatField;
    rom_iteROM_PPRO: TIBBCDField;
    rom_iteROM_VBCIPI: TIBBCDField;
    rom_iteROM_PIPI: TIBBCDField;
    rom_iteROM_VIPI: TIBBCDField;
    rom_iteROM_TPRC: TIBStringField;
    rom_iteROM_ABCD: TIBStringField;
    rom_iteROM_STFI: TIBStringField;
    ped_ven_iteROM_UNIT: TFloatField;
    ped_ven_iteROM_PREC: TFloatField;
    ped_ven_iteROM_DCO2: TIBStringField;
    ped_ven_iteROM_PCO2: TIBStringField;
    ped_ven_itePRO_PPRO: TFloatField;
    rom_iteROM_CSEP: TIntegerField;
    rom_iteROM_DSEP: TIBStringField;
    dbgpenROM_QTPD: TdxDBGridCurrencyColumn;
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
    cad_cli_crd: TIBDataSet;
    cad_cli_crdID: TIntegerField;
    cad_cli_crdCLI_CDEP: TIntegerField;
    cad_cli_crdCLI_CCLI: TIntegerField;
    cad_cli_crdCLI_CRED: TIBBCDField;
    cli_sta: TIBQuery;
    cli_staFIN_DOCT: TIBStringField;
    cli_staFIN_DVEN: TDateField;
    cli_staFIN_VALO: TIBBCDField;
    edfatu: TdxMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure rom_cabAfterPost(DataSet: TDataSet);
    procedure siSAVClick(Sender: TObject);
    procedure dbgpenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rom_iteBeforePost(DataSet: TDataSet);
    procedure siMTDClick(Sender: TObject);
    procedure rom_iteAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure siDTDClick(Sender: TObject);
    procedure siPSQClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pALTClick(Sender: TObject);
    procedure pSAVClick(Sender: TObject);
    procedure pCANClick(Sender: TObject);
    procedure rom_iteAfterCancel(DataSet: TDataSet);
    procedure rom_iteAfterEdit(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure psq_cliAfterOpen(DataSet: TDataSet);
    procedure ped_ven_cabAfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function RETORNA_STFI: string;
  public
    { Public declarations }
    procedure ABRE_TABELA;
    procedure ADICIONA(cdpd: integer);
  end;

var
  frmctr_ped_sep: Tfrmctr_ped_sep;

implementation

uses uPrincipal, pctr_ped, ppesquisa;

{$R *.dfm}

procedure Tfrmctr_ped_sep.FormCreate(Sender: TObject);
begin
  inherited;
  ABRE_TABELA;
end;

procedure Tfrmctr_ped_sep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  pEve.UnRegisterEvents;
end;

procedure Tfrmctr_ped_sep.FormDestroy(Sender: TObject);
begin
  inherited;
  frmctr_ped_sep := Nil;
end;

function Tfrmctr_ped_sep.RETORNA_STFI: string;
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
  begin
    if consulta_S.Fields[0].AsFloat > 0 then
    stfi := 'PENDENTE' else
    stfi := 'SEPARAÇÃO';
  end;  

  result := stfi;
end;

procedure Tfrmctr_ped_sep.ADICIONA(cdpd: integer);
begin
  try
    pcite.ActivePageIndex := 0;
    tag := 1;

    with ped_ven_cab do
    begin
      SQL.Clear;
      SQL.Add('SELECT PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
      SQL.Add('FROM   CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE  PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND    PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND    PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND    PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND    PED_VEN_CAB.ID = '''+inttostr(cdpd)+'''');
      Open;
    end;

    if ped_ven_cab.Fields[0].IsNull then
    exit;

    rom_cab.Append;
    rom_cabID.Value       := 0;
    rom_cabROM_CDOC.Value := ped_ven_cabROM_CDOC.Value;
    rom_cabROM_CDPR.Value := ped_ven_cabROM_CDPR.Value;
    rom_cabROM_CDPD.Value := ped_ven_cabID.Value;
    rom_cabROM_CDRO.Value := ped_ven_cabROM_CDRO.Value;
    rom_cabROM_CDRD.Value := ped_ven_cabROM_CDRD.Value;
    rom_cabROM_CDNF.Value := ped_ven_cabROM_CDNF.Value;
    rom_cabROM_CDBX.Value := ped_ven_cabROM_CDBX.Value;
    rom_cabROM_CDCX.Value := ped_ven_cabROM_CDCX.Value;
    rom_cabROM_DERO.Value := ped_ven_cabROM_DERO.Value;
    rom_cabROM_STPD.Value := ped_ven_cabROM_STPD.Value;
    rom_cabROM_STCO.Value := ped_ven_cabROM_STCO.Value;
    rom_cabROM_STFI.Value := ped_ven_cabROM_STFI.Value;
    rom_cabROM_DROM.Value := ped_ven_cabROM_DROM.Value;
    rom_cabROM_HROM.Value := ped_ven_cabROM_HROM.Value;
    rom_cabROM_DBAI.Value := ped_ven_cabROM_DBAI.Value;
    rom_cabROM_DCAN.Value := ped_ven_cabROM_DCAN.Value;
    rom_cabROM_DNFS.Value := ped_ven_cabROM_DNFS.Value;
    rom_cabROM_DEXP.Value := ped_ven_cabROM_DEXP.Value;
    rom_cabROM_HEXP.Value := ped_ven_cabROM_HEXP.Value;
    rom_cabROM_CEXP.Value := ped_ven_cabROM_CEXP.Value;
    rom_cabROM_CCLI.Value := ped_ven_cabROM_CCLI.Value;
    rom_cabROM_DCLI.Value := ped_ven_cabCLI_FANT.Value;
    rom_cabROM_CVEN.Value := ped_ven_cabROM_CVEN.Value;
    rom_cabROM_DVEN.Value := ped_ven_cabUSU_DUSU.Value;
    rom_cabROM_CREP.Value := ped_ven_cabROM_CREP.Value;
    rom_cabROM_DREP.Value := ped_ven_cabREP_FANT.Value;
    rom_cabROM_CPAG.Value := ped_ven_cabROM_CPAG.Value;
    rom_cabROM_DPAG.Value := ped_ven_cabPAG_DPAG.Value;
    rom_cabROM_QTVE.Value := ped_ven_cabROM_QTVE.Value;
    rom_cabROM_QTSP.Value := ped_ven_cabROM_QTSP.Value;
    rom_cabROM_QTPD.Value := ped_ven_cabROM_QTPD.Value;
    rom_cabROM_RLVE.Value := ped_ven_cabROM_RLVE.Value;
    rom_cabROM_TSDE.Value := ped_ven_cabROM_TSDE.Value;
    rom_cabROM_TDSC.Value := ped_ven_cabROM_TDSC.Value;
    rom_cabROM_PDSC.Value := ped_ven_cabROM_PDSC.Value;
    rom_cabROM_CDSC.Value := ped_ven_cabROM_CDSC.Value;
    rom_cabROM_ADSC.Value := ped_ven_cabROM_ADSC.Value;
    rom_cabROM_TCDE.Value := ped_ven_cabROM_TCDE.Value;
    rom_cabROM_CONC.Value := ped_ven_cabROM_CONC.Value;
    rom_cabROM_OBSE.Value := ped_ven_cabROM_OBSE.Value;
    rom_cabROM_STA.Value  := ped_ven_cabROM_STA.Value ;
    rom_cab.Post;                                     

    with ped_ven_ite do
    begin
      SQL.Clear;
      SQL.Add('SELECT    PED_VEN_ITE.*,CAD_PRO.ID,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_CCOR,');
      SQL.Add('          CAD_PRO.PRO_RCOR,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
      SQL.Add('          CAD_PRO.PRO_CBAR,CAD_PRO.PRO_PPRO,CAD_PRO.PRO_CEMB,CAD_PRO.PRO_GRAD,');
      SQL.Add('          CAD_PRO_IMG.PRO_FOTO');
      SQL.Add('FROM      CAD_PRO,CAD_PRO_IMG,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
      SQL.Add('WHERE     PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND       CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');
      SQL.Add('AND       PED_VEN_ITE.ROM_CCAB = '''+inttostr(cdpd)+'''');
      SQL.Add('ORDER  BY PED_VEN_ITE.ROM_ITEM');
      Open;
    end;
      
    while not ped_ven_ite.Eof do
    begin
      rom_ite.Append;
      rom_iteID.Value       := 0;
      rom_iteROM_CCAB.Value := ped_ven_iteROM_CCAB.Value;
      rom_iteROM_CDOC.Value := ped_ven_iteROM_CDOC.Value;
      rom_iteROM_CDPR.Value := ped_ven_iteROM_CDPR.Value;
      rom_iteROM_CDPD.Value := ped_ven_iteID.Value;
      rom_iteROM_CDRO.Value := ped_ven_iteROM_CDRO.Value;
      rom_iteROM_CDNF.Value := ped_ven_iteROM_CDNF.Value;
      rom_iteROM_ITEM.Value := ped_ven_iteROM_ITEM.Value;
      rom_iteROM_CART.Value := ped_ven_itePRO_CART.Value;
      rom_iteROM_IPRO.Value := ped_ven_iteID1.Value;
      rom_iteROM_CPRO.Value := ped_ven_itePRO_CPRO.Value;
      rom_iteROM_IPR2.Value := ped_ven_iteID1.Value;
      rom_iteROM_CPR2.Value := ped_ven_itePRO_CPRO.Value;
      rom_iteROM_DPRO.Value := ped_ven_iteROM_DPRO.Value;
      rom_iteROM_CCOR.Value := ped_ven_itePRO_CCOR.Value;
      rom_iteROM_RCOR.Value := ped_ven_itePRO_RCOR.Value;
      rom_iteROM_DCOR.Value := ped_ven_itePRO_DCOR.Value;
      rom_iteROM_DUNI.Value := ped_ven_itePRO_DUNI.Value;
      rom_iteROM_QTSP.Value := ped_ven_iteROM_QTPD.Value;
      rom_iteROM_RLSP.Value := ped_ven_iteROM_RLPD.Value;
      rom_iteROM_QTDE.Value := ped_ven_iteROM_QTDE.Value;
      rom_iteROM_QTRL.Value := ped_ven_iteROM_QTRL.Value;
      rom_iteROM_UNIT.Value := ped_ven_iteROM_UNIT.Value;
      rom_iteROM_PREC.Value := ped_ven_iteROM_PREC.Value;
      rom_iteROM_VDSC.Value := ped_ven_iteROM_VDSC.Value;
      rom_iteROM_TOTA.Value := ped_ven_iteROM_TOTA.Value;
      rom_iteROM_CDET.Value := ped_ven_iteROM_CDET.Value;
      rom_ite.Post;
      ped_ven_ite.Next;
    end;
  finally
    dbgpen.SetFocus;
    dbgpen.FocusedColumn := 6;
    tag := 0;
  end;
end;

procedure Tfrmctr_ped_sep.ABRE_TABELA;
begin
  if not IBTra.Active   then IBTra.StartTransaction;
  if not tSHEILD.Active then tSHEILD.StartTransaction;

  pcite.ActivePageIndex := 0;
  with rom_ite do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM PED_VEN_ITE');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM PED_VEN_ITE');
    SelectSQL.Add('ORDER BY ID');
    Open;
    tSHEILD.CommitRetaining;
  end;

  with rom_cab do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM PED_VEN_CAB');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM PED_VEN_CAB');
    SelectSQL.Add('ORDER BY ID');
    Open;
    tSHEILD.CommitRetaining;
  end;
end;

procedure Tfrmctr_ped_sep.FormShow(Sender: TObject);
begin
  inherited;
  
  { Eventos }
  with pEVE do
  begin
    UnregisterEvents;
    Events.Add('CTR_PED');
    RegisterEvents;
  end;

  if Assigned(frmctr_ped) then
  ADICIONA(frmctr_ped.cadastroID.AsInteger);
end;

procedure Tfrmctr_ped_sep.rom_cabAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  tSHEILD.CommitRetaining;

  wRec := rom_cab.GetBookmark;
  rom_cab.Close;
  rom_cab.Open;
  if (wRec = Nil) or (rom_cab.Fields[0].IsNull) then rom_cab.last
     else rom_cab.GotoBookmark(wRec);
  rom_cab.FreeBookmark(wRec);
end;

procedure Tfrmctr_ped_sep.siSAVClick(Sender: TObject);
begin
  inherited;

  if oYesNo(handle,'Confirma separação do pedido ?') = mrno then
     abort;

  try
    rom_ite.DisableControls;
    rom_ite.First;

    while not rom_cab.Eof do
    begin
      if (rom_cabROM_STFI.AsString = 'AGUARDANDO LIBERAÇÃO') or (rom_cabROM_STFI.AsString = 'AGUARDANDO CRÉDITO') or (rom_cabROM_STFI.AsString = 'PROTESTADO') or
         (rom_cabROM_STFI.AsString = 'NÃO PAGO')             or (rom_cabROM_STFI.AsString = 'SUSPENSO')   then
      raise exception.Create('Não é possível separar o pedido No '+rom_cabROM_DERO.AsString+' !'+#13+'Situação: '+rom_cabROM_STFI.AsString);

      rom_cab.Next;
    end;

    rom_cab.DisableControls;
    rom_cab.First;
    while not rom_cab.Eof do
    begin
      with consulta_S do
      begin
        SQL.Clear;
        SQL.Add('SELECT SUM(ROM_QTSP),SUM(ROM_RLSP) FROM PED_VEN_ITE');
        Open;
      end;

      try
        with frmprincipal.sp_sql do
        begin
          ibSP.StoredProcName := 'SP_SQL';
          SQL.Clear;
          SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_res']);
          SQL.Add('WHERE  EST_CDPD = '''+rom_cabROM_CDPD.AsString+'''');
          SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;

          ibSP.StoredProcName := 'SP_SQL';
          SQL.Clear;
          SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_sep']);
          SQL.Add('WHERE  EST_CDPD = '''+rom_cabROM_CDPD.AsString+'''');
          SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;

          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
          SQL.Add('SET    ROM_STFI = '''+RETORNA_STFI+''',');
          if consulta_S.Fields[0].AsFloat > 0 then
          SQL.Add('       ROM_DSEP = '''+frmprincipal.cad_usuUSU_DUSU.AsString+''',') else
          SQL.Add('       ROM_DSEP = NULL,');
          SQL.Add('       ROM_QTPD = '''+oStrTran(consulta_S.Fields[0].AsString,',','.')+'''');
          SQL.Add('WHERE        ID = '''+rom_cabROM_CDPD.AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;
        end;

        while not rom_ite.Eof do
        begin
          with frmprincipal.sp_sql do
          begin
            ibSP.StoredProcName := 'SP_SQL';
            SQL.Clear;
            SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
            SQL.Add('SET    ROM_QTPD = '''+oStrTran(rom_iteROM_QTSP.AsString,',','.')+''',');
            SQL.Add('       ROM_RLPD = '''+oStrTran(rom_iteROM_RLSP.AsString,',','.')+'''');
            SQL.Add('WHERE        ID = '''+rom_iteROM_CDPD.AsString+'''');

            ibSP.Prepare;
            ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
            ibSP.ExecProc;
          end;

          if rom_iteROM_QTSP.AsFloat > 0 then
          begin
            ibSP.StoredProcName := 'SP_CAD_PRO_SEP';
            ibSP.Prepare;

            ibSP.ParamByName('est').Value  := 'CAD_PRO_SEP';
            if frmprincipal.parametrosID.AsInteger > 1 then
            ibSP.ParamByName('est').Value  := 'CAD_PRO_SEP_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

            ibSP.ParamByName('id').Value   := 0;
            ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
            ibSP.ParamByName('cdro').Value := 0;
            ibSP.ParamByName('cdpd').Value := rom_cabROM_CDPD.AsInteger;
            ibSP.ParamByName('cdbx').Value := 0;
            ibSP.ParamByName('cpro').Value := rom_iteROM_IPR2.AsInteger;
            ibSP.ParamByName('cusu').Value := rom_cabROM_CVEN.AsInteger;
            ibSP.ParamByName('dusu').Value := rom_cabROM_DVEN.AsString;
            ibSP.ParamByName('cfav').Value := rom_cabROM_CCLI.AsInteger;
            ibSP.ParamByName('dfav').Value := rom_cabROM_DCLI.AsString;
            ibSP.ParamByName('dcad').Value := strtodate(SLPrincipal.Values['data_sistema']);
            ibSP.ParamByName('docu').Value := oStrZero(rom_cabROM_CDPD.AsInteger,6);
            ibSP.ParamByName('flag').Value := 'R';
            ibSP.ParamByName('cdet').Value := '';
            ibSP.ParamByName('dsep').Value := frmprincipal.cad_usuUSU_DUSU.AsString;;
            ibSP.ParamByName('debi').Value := 0;
            ibSP.ParamByName('cred').Value := rom_iteROM_QTSP.AsFloat;
            ibSP.ParamByName('dmap').Value := '';
            ibSP.ParamByName('ctnr').Value := 0;
            ibSP.ParamByName('lote').Value := '';
            ibSP.ExecProc;
          end else
          begin
            ibSP.StoredProcName := 'SP_CAD_PRO_RES';
            ibSP.Prepare;

            ibSP.ParamByName('est').Value  := 'CAD_PRO_RES';
            if frmprincipal.parametrosID.AsInteger > 1 then
            ibSP.ParamByName('est').Value  := 'CAD_PRO_RES_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

            ibSP.ParamByName('id').Value   := 0;
            ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
            ibSP.ParamByName('cdro').Value := 0;
            ibSP.ParamByName('cdpd').Value := rom_cabROM_CDPD.AsInteger;
            ibSP.ParamByName('cdbx').Value := 0;
            ibSP.ParamByName('cpro').Value := rom_iteROM_IPR2.AsInteger;
            ibSP.ParamByName('cusu').Value := rom_cabROM_CVEN.AsInteger;
            ibSP.ParamByName('dusu').Value := rom_cabROM_DVEN.AsString;
            ibSP.ParamByName('cfav').Value := rom_cabROM_CCLI.AsInteger;
            ibSP.ParamByName('dfav').Value := rom_cabROM_DCLI.AsString;
            ibSP.ParamByName('dcad').Value := strtodate(SLPrincipal.Values['data_sistema']);
            ibSP.ParamByName('docu').Value := oStrZero(rom_cabROM_CDPD.AsInteger,6);
            ibSP.ParamByName('flag').Value := 'R';
            ibSP.ParamByName('cdet').Value := '';
            ibSP.ParamByName('dsep').Value := frmprincipal.cad_usuUSU_DUSU.AsString;;
            ibSP.ParamByName('debi').Value := 0;
            ibSP.ParamByName('cred').Value := rom_iteROM_QTDE.AsFloat;
            ibSP.ParamByName('dmap').Value := '';
            ibSP.ParamByName('ctnr').Value := 0;
            ibSP.ParamByName('lote').Value := '';
            ibSP.ExecProc;
          end;
          rom_ite.Next;
        end;
        rom_cab.Next;
      except
        IBTra.RollbackRetaining;
        messageBox(handle,'Problemas na gravação do CAD_PRO_RES'+#13+'Favor entrar em contato com o administrador do sistema.','Separação de Pedidos',MB_ICONERROR+MB_OK);
        Abort;
      end;
      IBTra.CommitRetaining;
    end;
  finally
    pTRA.StartTransaction;

    pSP.StoredProcName := 'SP_EVENT';
    pSP.Prepare;
    pSP.Params[0].AsString := 'CTR_PED';
    pSP.ExecProc;

    pTRA.Commit;

    rom_cab.First;
    rom_cab.EnableControls;

    rom_ite.First;
    rom_ite.EnableControls;
    close;
  end;
end;

procedure Tfrmctr_ped_sep.dbgpenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgpen.FocusedColumn = 6 then
                    rom_ite.Next
                 else
                    dbgpen.FocusedColumn := dbgpen.FocusedColumn + 1;
               end;
    VK_ESCAPE: if rom_ite.State = dsBrowse then close else rom_ite.Cancel;
  end;
end;

procedure Tfrmctr_ped_sep.siMTDClick(Sender: TObject);
begin
  try
    rom_ite.DisableControls;
    rom_ite.First;
    while not rom_ite.Eof do
    begin
      rom_ite.Edit;
      rom_iteROM_QTSP.Value := rom_iteROM_QTDE.Value;
      rom_ite.Post;
      rom_ite.Next;
    end;
  finally
    rom_ite.EnableControls;
  end;
end;

procedure Tfrmctr_ped_sep.siDTDClick(Sender: TObject);
begin
  try
    rom_ite.DisableControls;
    rom_ite.First;
    while not rom_ite.Eof do
    begin
      rom_ite.Edit;
      rom_iteROM_QTSP.Value := 0;
      rom_ite.Post;
      rom_ite.Next;
    end;
  finally
    rom_ite.EnableControls;
  end;
end;

procedure Tfrmctr_ped_sep.siPSQClick(Sender: TObject);
begin
  pcite.ActivePageIndex := 0;
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 2;
    frmpesquisa.cbCAMPO.Text := 'Número Pedido';
    frmpesquisa.cbDATA.Text  := 'Lançamento';
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      if (edTXT.Text = '') and (dxdt1.Date < 0) then
         {nothing}
      else
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
        SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
        SQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
        SQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
        SQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
        SQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');

        if edtxt.Text <> '' then
        begin
          if cfield = 'ID' then
             SQL.Add('AND PED_VEN_CAB.ID = '''+edtxt.Text+'''')
          else
             SQL.Add('AND '+cField+' LIKE ''%'+edtxt.Text+'%''');
        end;

        if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
           SQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

        SQL.Add('ORDER BY '+cField);
        Open;

        while not eof do
        begin
          ADICIONA(fields[0].AsInteger);
          next;
        end;  
      end;
      dbgconsulta.SetFocus;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmctr_ped_sep.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tfrmctr_ped_sep.pALTClick(Sender: TObject);
begin
  if rom_ite.State = dsBrowse then
     rom_ite.Edit;
end;

procedure Tfrmctr_ped_sep.pSAVClick(Sender: TObject);
begin
  if rom_ite.State in [dsedit,dsinsert] then
     rom_ite.Post;
end;

procedure Tfrmctr_ped_sep.pCANClick(Sender: TObject);
begin
  rom_ite.Cancel;
end;

procedure Tfrmctr_ped_sep.rom_iteAfterCancel(DataSet: TDataSet);
begin
  pALT.Enabled := true;
  pSAV.Enabled := false;
  pCAN.Enabled := false;
end;

procedure Tfrmctr_ped_sep.rom_iteAfterEdit(DataSet: TDataSet);
begin
  pALT.Enabled := false;
  pSAV.Enabled := true;
  pCAN.Enabled := true;

  dbgpen.FocusedColumn := 6;
end;

procedure Tfrmctr_ped_sep.rom_iteAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  pALT.Enabled := true;
  pSAV.Enabled := false;
  pCAN.Enabled := false;

  tSHEILD.CommitRetaining;

  wRec := rom_ite.GetBookmark;
  rom_ite.Close;
  rom_ite.Open;
  if (wRec = Nil) or (rom_ite.Fields[0].IsNull) then rom_ite.last
     else rom_ite.GotoBookmark(wRec);
  rom_ite.FreeBookmark(wRec);
end;

procedure Tfrmctr_ped_sep.rom_iteBeforePost(DataSet: TDataSet);
begin
  if (rom_iteROM_QTSP.AsFloat > rom_iteROM_QTDE.AsFloat) and (rom_iteROM_QTDE.AsFloat > 0) then
     DataBaseError('Quantidade separada para o pedido não pode ser maior que a quantidade programada !');

  if rom_iteROM_QTSP.AsFloat < 0 then
     DataBaseError('Quantidade separada não pode ser inferior a 0 !');
     
  if rom_iteROM_QTSP.AsFloat > 0 then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT PRO_METR,PRO_PESO,PRO_PSCN FROM CAD_PRO');
    SQL.Add('WHERE  ID = '''+rom_iteROM_IPRO.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      if copy(rom_iteROM_DUNI.AsString,1,1) = 'P' then
      rom_iteROM_RLSP.Value := rom_iteROM_QTSP.AsInteger else
      begin
        if fields[0].AsFloat = 0 then
        rom_iteROM_RLSP.Value := rom_iteROM_QTSP.AsInteger else
        rom_iteROM_RLSP.Value := trunc(roundto((rom_iteROM_QTSP.AsFloat/fields[0].AsFloat),-2));
      end;
    end;  
  end
  else
    rom_iteROM_RLSP.Value := 0;
end;


procedure Tfrmctr_ped_sep.psq_cliAfterOpen(DataSet: TDataSet);
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

procedure Tfrmctr_ped_sep.ped_ven_cabAfterOpen(DataSet: TDataSet);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT VEN_TEST,VEN_FATU FROM TAB_PED');
    SQL.Add('WHERE  VEN_TIPO = '''+ped_ven_cabROM_STPD.AsString+'''');
    Open;
    edfatu.Text := fields[1].AsString;
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

end.
