unit pctr_ped;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, DB, IBStoredProc, IBEvents,
  IBDatabase, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
   ComCtrls, ExtCtrls, DBCtrls, dxPageControl, dxEditor, dxEdLib,
  StdCtrls, dxDBTLCl, dxGrClms, DateUtils, dxExEdtr, jpeg, Menus, Shellapi,
  Math, dxDBELib, rxSpeedbar;

type
  Tfrmctr_ped = class(Tfrmpadr1)
    siARO: TSpeedItem;
    siCRO: TSpeedItem;
    rom_ite: TIBQuery;
    dtsrom_ite: TDataSource;
    Label23: TLabel;
    pcITE: TdxPageControl;
    tsITE: TdxTabSheet;
    tsOBS: TdxTabSheet;
    dbgite: TdxDBGrid;
    cadastroID: TIntegerField;
    cadastroROM_STPD: TIBStringField;
    cadastroROM_STCO: TIBStringField;
    cadastroROM_STFI: TIBStringField;
    cadastroROM_DROM: TDateField;
    cadastroROM_DBAI: TDateField;
    cadastroROM_DCAN: TDateField;
    cadastroROM_CCLI: TIntegerField;
    cadastroROM_CVEN: TIntegerField;
    cadastroROM_CREP: TIntegerField;
    cadastroROM_CPAG: TIntegerField;
    cadastroROM_TSDE: TIBBCDField;
    cadastroROM_TDSC: TIBStringField;
    cadastroROM_TCDE: TIBBCDField;
    cadastroROM_CONC: TSmallintField;
    cadastroCLI_FANT: TIBStringField;
    cadastroREP_FANT: TIBStringField;
    dbgConsultaROM_STPD: TdxDBGridMaskColumn;
    dbgConsultaROM_STCO: TdxDBGridMaskColumn;
    dbgConsultaROM_STFI: TdxDBGridMaskColumn;
    dbgConsultaROM_DROM: TdxDBGridDateColumn;
    dbgConsultaROM_TSDE: TdxDBGridMaskColumn;
    dbgConsultaROM_TCDE: TdxDBGridMaskColumn;
    dbgConsultaCLI_FANT: TdxDBGridMaskColumn;
    dbgConsultaREP_FANT: TdxDBGridMaskColumn;
    rom_iteID: TIntegerField;
    rom_iteROM_CDOC: TIntegerField;
    rom_iteROM_ITEM: TIBStringField;
    rom_iteROM_CPRO: TIntegerField;
    rom_iteROM_CPR2: TIntegerField;
    rom_iteROM_CDET: TIBStringField;
    rom_iteROM_QTDE: TIBBCDField;
    rom_iteROM_VDSC: TIBBCDField;
    rom_iteROM_TOTA: TIBBCDField;
    rom_iteID1: TIntegerField;
    rom_itePRO_CART: TIBStringField;
    rom_itePRO_CPRO: TIBStringField;
    rom_itePRO_CCOR: TIntegerField;
    rom_itePRO_RCOR: TIBStringField;
    rom_itePRO_DCOR: TIBStringField;
    rom_itePRO_DUNI: TIBStringField;
    rom_itePRO_FOTO: TBlobField;
    dbgiteROM_ITEM: TdxDBGridMaskColumn;
    dbgiteROM_QTDE: TdxDBGridMaskColumn;
    dbgiteROM_UNIT: TdxDBGridMaskColumn;
    dbgiteROM_VDSC: TdxDBGridMaskColumn;
    dbgiteROM_TOTA: TdxDBGridMaskColumn;
    dbgitePRO_CPRO: TdxDBGridMaskColumn;
    cadastroPAG_DPAG: TIBStringField;
    dbgConsultaPAG_DPAG: TdxDBGridMaskColumn;
    cadastroROM_DESC: TStringField;
    dbgConsultaROM_DESC: TdxDBGridColumn;
    rom_itePRO_CBAR: TIBStringField;
    rom_itePRO_CEMB: TIntegerField;
    rom_itePRO_GRAD: TIBStringField;
    cadastroROM_DNFS: TDateField;
    cadastroROM_CDOC: TIntegerField;
    cadastroROM_CDPR: TIntegerField;
    cadastroROM_CDPD: TIntegerField;
    cadastroROM_CDRO: TIntegerField;
    cadastroROM_CDNF: TIntegerField;
    cadastroROM_CDBX: TIntegerField;
    cadastroROM_DERO: TIBStringField;
    cadastroROM_HROM: TTimeField;
    cadastroROM_DEXP: TDateField;
    cadastroROM_HEXP: TTimeField;
    cadastroROM_CEXP: TIntegerField;
    cadastroROM_QTVE: TIBBCDField;
    cadastroROM_RLVE: TIntegerField;
    cadastroROM_PDSC: TIBBCDField;
    cadastroROM_CDSC: TIBBCDField;
    cadastroROM_OBSE: TMemoField;
    cadastroROM_STA: TIBStringField;
    cadastroROM_ADSC: TIBBCDField;
    siBRO: TSpeedItem;
    siGRO: TSpeedItem;
    rom_iteROM_CCAB: TIntegerField;
    rom_iteROM_CDPR: TIntegerField;
    rom_iteROM_CDPD: TIntegerField;
    rom_iteROM_CDRO: TIntegerField;
    rom_iteROM_CDRD: TIntegerField;
    rom_iteROM_CDNF: TIntegerField;
    rom_iteROM_QTSP: TIBBCDField;
    rom_iteROM_QTPD: TIBBCDField;
    dbgiteROM_QTPD: TdxDBGridMaskColumn;
    rom_itePRO_PIPI: TSmallintField;
    rom_iteROM_QTRL: TIntegerField;
    rom_iteROM_RLSP: TIntegerField;
    rom_iteROM_RLPD: TIntegerField;
    rom_iteROM_FLAG: TIBStringField;
    dbgConsultaROM_CDNF: TdxDBGridMaskColumn;
    dbgConsultaROM_DNFS: TdxDBGridDateColumn;
    cadastroROM_CDRD: TIntegerField;
    cadastroROM_QTSP: TIBBCDField;
    cadastroROM_QTPD: TIBBCDField;
    dbgConsultaROM_DBAI: TdxDBGridDateColumn;
    cadastroROM_CDCX: TIntegerField;
    aux: TIBQuery;
    fin_rec_bai: TIBDataSet;
    fin_rec_baiID: TIntegerField;
    fin_rec_baiFIN_DOCT: TIBStringField;
    fin_rec_baiFIN_DVEN: TDateField;
    fin_rec_baiFIN_TIPO: TIBStringField;
    fin_rec_baiFIN_BANC: TIBStringField;
    fin_rec_baiFIN_AGEN: TIBStringField;
    fin_rec_baiFIN_CONT: TIBStringField;
    fin_rec_baiFIN_NCHQ: TIBStringField;
    fin_rec_baiFIN_OBSE: TMemoField;
    fin_rec_baiFIN_STA: TIBStringField;
    fin_rec_baiFIN_PRAZ: TSmallintField;
    fin_rec_baiFIN_DPAG: TDateField;
    fin_rec_baiFIN_DBAN: TIBStringField;
    fin_rec_baiFIN_STFI: TIBStringField;
    fin_rec_baiFIN_VALO: TIBBCDField;
    fin_rec_baiFIN_VPAG: TIBBCDField;
    fin_rec_baiFIN_VPEN: TIBBCDField;
    fin_rec_baiFIN_COBR: TIBStringField;
    fin_rec_baiFIN_STDO: TIBStringField;
    fin_rec_baiFIN_CCAB: TIntegerField;
    fin_rec_baiFIN_CDBX: TIntegerField;
    fin_rec_baiFIN_CDCX: TIntegerField;
    fin_rec_baiFIN_CCLI: TIntegerField;
    fin_rec_baiFIN_DCLI: TIBStringField;
    fin_rec_baiFIN_CVEN: TIntegerField;
    fin_rec_baiFIN_VEND: TIBStringField;
    fin_rec_baiFIN_CREP: TIntegerField;
    fin_rec_baiFIN_DREP: TIBStringField;
    fin_rec_baiFIN_ATRA: TSmallintField;
    fin_rec_baiFIN_CONC: TSmallintField;
    fin_rec_baiFIN_DCAD: TDateField;
    fin_rec_baiFIN_DMED: TDateField;
    fin_rec_baiFIN_DATR: TDateField;
    fin_rec_baiFIN_MCHQ: TSmallintField;
    fin_rec_baiFIN_STCO: TIBStringField;
    tSHEILD: TIBTransaction;
    dbgConsultaROM_CDBX: TdxDBGridMaskColumn;
    dbgConsultaROM_CDCX: TdxDBGridMaskColumn;
    rom_iteROM_COMI: TIBBCDField;
    rom_iteROM_DPRO: TIBStringField;
    dbgiteROM_DPRO: TdxDBGridMaskColumn;
    rom_itePRO_REPR: TIBStringField;
    dbgConsultaROM_DERO: TdxDBGridMaskColumn;
    rom_iteROM_TPRC: TIBStringField;
    dbgConsultaID: TdxDBGridMaskColumn;
    rom_iteROM_ABCD: TIBStringField;
    rom_iteROM_DCOR: TIBStringField;
    rom_iteROM_PCOR: TIBStringField;
    cadastroROM_COMI: TIBBCDField;
    cadastroUSU_DUSU: TIBStringField;
    dbgConsultaUSU_DUSU: TdxDBGridMaskColumn;
    dbgiteROM_QTRL: TdxDBGridMaskColumn;
    dbgiteROM_RLPD: TdxDBGridMaskColumn;
    cadastroROM_DEMB: TDateField;
    cadastroROM_DDES: TDateField;
    cadastroROM_DPRD: TDateField;
    cadastroROM_CTNR: TIBStringField;
    siINF: TSpeedItem;
    cadastroCLI_CRED: TIBBCDField;
    edobse: TdxMemo;
    dbgConsultaROM_CTNR: TdxDBGridMaskColumn;
    rom_iteROM_UNIT: TFloatField;
    rom_iteROM_PREC: TFloatField;
    rom_iteROM_DCO2: TIBStringField;
    rom_iteROM_PCO2: TIBStringField;
    rom_itePRO_PPRO: TFloatField;
    dbgiteROM_DCOR: TdxDBGridMaskColumn;
    rom_iteROM_DSEP: TIBStringField;
    cadastroROM_CBAI: TIntegerField;
    cadastroROM_TBAI: TDateTimeField;
    cadastroROM_UPRN: TIntegerField;
    cadastroROM_PPRN: TSmallintField;
    cadastroROM_TPRN: TDateTimeField;
    cadastroROM_VFRT: TIBBCDField;
    cadastroROM_DTRA: TIBStringField;
    dbgConsultaROM_DTRA: TdxDBGridMaskColumn;
    rom_iteROM_DUNI: TIBStringField;
    dbgiteROM_DUNI: TdxDBGridMaskColumn;
    rom_iteROM_OBSE: TMemoField;
    rom_iteROM_PESO: TIBBCDField;
    pnlfoto: TPanel;
    pcIMG: TdxPageControl;
    tsFOTO: TdxTabSheet;
    writefoto: TImage;
    cadastroROM_DSEP: TIBStringField;
    dbgConsultaROM_DSEP: TdxDBGridMaskColumn;
    dbgConsultaROM_PPRN: TdxDBGridMaskColumn;
    cadastroROM_DEVO: TStringField;
    cadastroROM_DERD: TIBStringField;
    fin_rec_baiFIN_CDRD: TIntegerField;
    fin_rec_baiFIN_DFIN: TIBStringField;
    fin_rec_baiFIN_RCLI: TIBStringField;
    fin_rec_baiFIN_RREP: TIBStringField;
    fin_rec_baiFIN_DBAI: TDateField;
    fin_rec_baiFIN_CPPL: TIntegerField;
    fin_rec_baiFIN_CCUS: TIntegerField;
    fin_rec_baiFIN_CDCO: TIntegerField;
    fin_rec_baiFIN_CDBA: TIBStringField;
    fin_rec_baiFIN_DEBA: TIBStringField;
    fin_rec_baiFIN_VENC: TIBBCDField;
    fin_rec_baiFIN_CTNR: TIBStringField;
    fin_rec_baiFIN_VMUL: TIBBCDField;
    fin_rec_baiFIN_PMUL: TIBBCDField;
    fin_rec_baiFIN_VJUR: TIBBCDField;
    fin_rec_baiFIN_PJUR: TIBBCDField;
    fin_rec_baiFIN_VDES: TIBBCDField;
    fin_rec_baiFIN_PDES: TIBBCDField;
    fin_rec_baiFIN_VCHQ: TIBBCDField;
    fin_rec_baiFIN_CPF: TIBStringField;
    fin_rec_baiFIN_DERD: TIBStringField;
    fin_rec_baiFIN_DTST: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siAROClick(Sender: TObject);
    procedure rom_iteAfterScroll(DataSet: TDataSet);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure siRELClick(Sender: TObject);
    procedure cadastroAfterOpen(DataSet: TDataSet);
    procedure cadastroCalcFields(DataSet: TDataSet);
    procedure siPSQClick(Sender: TObject);
    procedure siEVEClick(Sender: TObject);
    procedure siCROClick(Sender: TObject);
    procedure siGROClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dtsrom_iteDataChange(Sender: TObject; Field: TField);
    procedure siBROClick(Sender: TObject);
    procedure dtscadastroDataChange(Sender: TObject; Field: TField);
    procedure writefotoClick(Sender: TObject);
    procedure siINFClick(Sender: TObject);
  private
    gera_romaneio: boolean;
    { Private declarations }
     procedure abre_tabela;
     procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
     procedure baixa_carteira;
     procedure baixa_bancario;
     procedure cancela_caixa_carteira;
     procedure cancela_caixa_bancario;
     function  RETORNA_LOGIN(texto: string) : boolean;
  public
    { Public declarations }
  end;

var
  frmctr_ped : Tfrmctr_ped;

implementation

uses uPrincipal, prelatorio_geral, pven_ped, ppesquisa, plog_eve,
     pven_rom, pctr_ped_bai, bDados, uFrmLogin, pcad_pro_img, pcad_cli_inf;

{$R *.dfm}

procedure Tfrmctr_ped.FormCreate(Sender: TObject);
begin
  dbgconsulta.ShowSummaryFooter := (frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Totalizadores',false));
  cEvent := 'CTR_PED';
  inherited;

  abre_tabela;
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_CLI.CLI_CRED,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
    SelectSQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
    SelectSQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
    SelectSQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
    SelectSQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
    SelectSQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');
    SelectSQL.Add('AND      PED_VEN_CAB.ROM_DROM BETWEEN '''+formatDateTime('mm/dd/yy',StartOfTheMonth(incMonth(strtodate(SLPrincipal.Values['data_sistema']),-2)))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(strtodate(SLPrincipal.Values['data_sistema'])))+'''');
    if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
    SelectSQL.Add('AND      PED_VEN_CAB.ROM_CVEN = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
    SelectSQL.Add('ORDER BY ID DESC');
    Prepare;
  end;
end;

procedure Tfrmctr_ped.FormDestroy(Sender: TObject);
begin
  if gera_romaneio then
  begin
    Application.CreateForm (Tfrmven_rom, frmven_rom);
    frmven_rom.Show;
  end;  

  inherited;
  frmctr_ped := Nil;
end;

function Tfrmctr_ped.RETORNA_LOGIN(texto: string): boolean;
var
  BRet: boolean;
begin
  AUTORIZACAO      := '';
  TP_AUTORIZACAO   := '';
  frmlogin         := TFrmlogin.Create(self);
  frmlogin.Caption := texto;
  try
    frmlogin.Tag := 2;
    frmlogin.ShowModal;
  finally
    if frmlogin.cad_usuUSU_CUSU.AsString = '' then
    BRet := false
    else
    BRet := (frmprincipal.ACESSO(frmlogin.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Autorizar Outros Usuários',false));

    if frmlogin.cad_usuUSU_ADM.AsString = '1' then
    BRet := true;

    if BRet then
    begin
      AUTORIZACAO    := frmlogin.cad_usuUSU_DUSU.AsString;
      TP_AUTORIZACAO := texto;
    end;

    freeAndNil(frmlogin);
    frmlogin.Free;
  end;

  result := BRet;
end;

procedure Tfrmctr_ped.cancela_caixa_carteira;
var
  doct: string;
  valo: double;
  conc: word;
  ctsr,cdcx: integer;
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAI_TSR');
    SQL.Add('WHERE  CAI_DESC = ''CAIXA INICIAL''');
    Open;

    ctsr := fields[0].AsInteger;
  end;

  if not tSHEILD.Active then
  tSHEILD.StartTransaction;

  with fin_rec_bai do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM FIN_REC_BAI');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_REC_BAI');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;

  with aux do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FIN_TIPO FROM '+SLPrincipal.Values['fin_rec_car_bai']);
    SQL.Add('WHERE    FIN_CDBX = '''+cadastroROM_CDBX.AsString+'''');
    SQL.Add('GROUP BY FIN_TIPO');
    Open;
  end;

  while not aux.Eof do
  begin
    fin_rec_bai.Append;
    fin_rec_baiID.Value       := 0;
    fin_rec_baiFIN_TIPO.Value := aux.Fields[0].AsString;
    fin_rec_bai.Post;
    tSHEILD.CommitRetaining;
    aux.Next;
  end;

  with aux do
  begin
    SQL.Clear;
    SQL.Add('SELECT FIN_TIPO,ID,FIN_CONC,FIN_CDCX,FIN_CDBX FROM '+SLPrincipal.Values['fin_rec_car_bai']);
    SQL.Add('WHERE  FIN_CDBX = '''+cadastroROM_CDBX.AsString+'''');
    Open;
  end;
  conc := aux.Fields[2].AsInteger;
  cdcx := aux.Fields[3].AsInteger;

  while not aux.eof do
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM TAB_COB');
      SQL.Add('WHERE  VEN_TIPO = '''+aux.Fields[0].AsString+'''');
      Open;

      if fields[0].IsNull then
      doct := '1'
      else
      doct := fields[0].AsString;
      doct := aux.Fields[2].AsString+oStrZero(strtoint(doct),19);

      SQL.Clear;
      SQL.Add('DELETE FROM CAI_MOV');
      SQL.Add('WHERE  CAI_CCAB = '''+aux.Fields[3].AsString+'''');
      SQL.Add('AND    CAI_DESC = '''+aux.Fields[0].AsString+'''');
      SQL.Add('AND    CAI_DOCT = '''+doct+'''');
      SQL.Add('AND    CAI_CONC = '''+aux.Fields[2].AsString+'''');
      ExecSQL;
    end;
    aux.Next;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM '+SLPrincipal.Values['fin_rec_car_bai']);
    SQL.Add('WHERE  FIN_CDBX = '''+cadastroROM_CDBX.AsString+'''');
    ExecSQL;

    SQL.Clear;
    SQL.Add('DELETE FROM '+SLPrincipal.Values['fin_rec_car_rec']);
    SQL.Add('WHERE  FIN_CDBX = '''+cadastroROM_CDBX.AsString+'''');
    ExecSQL;
  end;

  fin_rec_bai.First;
  while not fin_rec_bai.Eof do
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM TAB_COB');
      SQL.Add('WHERE  VEN_TIPO = '''+fin_rec_baiFIN_TIPO.AsString+'''');
      Open;

      if fields[0].IsNull then
      doct := '1'
      else
      doct := fields[0].AsString;
      doct := inttostr(conc)+oStrZero(strtoint(doct),19);

      SQL.Clear;
      SQL.Add('SELECT SUM(FIN_VALO) FROM '+SLPrincipal.Values['fin_rec_car_bai']);
      SQL.Add('WHERE  FIN_CDCX = '''+inttostr(cdcx)+'''');
      SQL.Add('AND    FIN_TIPO = '''+fin_rec_baiFIN_TIPO.AsString+'''');
      SQL.Add('AND    FIN_CONC = '''+inttostr(conc)+'''');
      Open;
      valo := Fields[0].AsFloat;
    end;

    if valo > 0 then
    begin
      ibSP.StoredProcName := 'SP_CAI_MOV';
      ibSP.Prepare;
      ibSP.ParamByName('ID').Value   := 0;
      ibSP.ParamByName('CCAB').Value := cdcx;
      ibSP.ParamByName('CTSR').Value := ctsr;
      ibSP.ParamByName('CDBX').Value := 0;
      ibSP.ParamByName('CONC').Value := 1;
      ibSP.ParamByName('DESC').Value := fin_rec_baiFIN_TIPO.AsString;
      ibSP.ParamByName('DOCT').Value := doct;
      ibSP.ParamByName('DCAD').Value := cadastroROM_DROM.AsDateTime;
      ibSP.ParamByName('HCAD').Value := time;
      ibSP.ParamByName('SANT').Value := 0;
      ibSP.ParamByName('CRED').Value := valo;
      ibSP.ParamByName('DEBI').Value := 0;
      ibSP.ParamByName('SATU').Value := 0;
      ibSP.ParamByName('BCON').Value := 0;
      ibSP.ParamByName('DCON').Value := '';
      ibSP.ExecProc;
    end;
    fin_rec_bai.Next;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(CAI_CRED),SUM(CAI_DEBI),SUM(CAI_CRED-CAI_DEBI) FROM CAI_MOV');
    SQL.Add('WHERE  CAI_CCAB = '''+inttostr(cdcx)+'''');
    Open;
  end;

  with aux do
  begin
    SQL.Clear;
    SQL.Add('UPDATE CAI_LAF');
    SQL.Add('SET    CAI_CRED = '''+oStrTran(consulta.Fields[0].AsString,',','.')+''',');
    SQL.Add('       CAI_DEBI = '''+oStrTran(consulta.Fields[1].AsString,',','.')+''',');
    SQL.Add('       CAI_SATU = '''+oStrTran(consulta.Fields[2].AsString,',','.')+'''');
    SQL.Add('WHERE  ID       = '''+inttostr(cdcx)+'''');
    ExecSQL;
  end;
end;

procedure Tfrmctr_ped.cancela_caixa_bancario;
var
  doct: string;
  valo: double;
  conc: word;
  ctsr,cdcx: integer;
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAI_TSR');
    SQL.Add('WHERE  CAI_DESC = ''CAIXA INICIAL''');
    Open;

    ctsr := fields[0].AsInteger;
  end;

  if not tSHEILD.Active then
  tSHEILD.StartTransaction;

  with fin_rec_bai do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM FIN_REC_BAI');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_REC_BAI');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;

  with aux do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FIN_TIPO FROM '+SLPrincipal.Values['fin_rec_ban_bai']);
    SQL.Add('WHERE    FIN_CDBX = '''+cadastroROM_CDBX.AsString+'''');
    SQL.Add('GROUP BY FIN_TIPO');
    Open;
  end;

  while not aux.Eof do
  begin
    fin_rec_bai.Append;
    fin_rec_baiID.Value       := 0;
    fin_rec_baiFIN_TIPO.Value := aux.Fields[0].AsString;
    fin_rec_bai.Post;
    tSHEILD.CommitRetaining;
    aux.Next;
  end;

  with aux do
  begin
    SQL.Clear;
    SQL.Add('SELECT FIN_TIPO,ID,FIN_CONC,FIN_CDCX,FIN_CDBX FROM '+SLPrincipal.Values['fin_rec_ban_bai']);
    SQL.Add('WHERE  FIN_CDBX = '''+cadastroROM_CDBX.AsString+'''');
    Open;
  end;
  conc := aux.Fields[2].AsInteger;
  cdcx := aux.Fields[3].AsInteger;

  while not aux.eof do
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM TAB_COB');
      SQL.Add('WHERE  VEN_TIPO = '''+aux.Fields[0].AsString+'''');
      Open;

      if fields[0].IsNull then
      doct := '1'
      else
      doct := fields[0].AsString;
      doct := aux.Fields[2].AsString+oStrZero(strtoint(doct),19);

      SQL.Clear;
      SQL.Add('DELETE FROM CAI_MOV');
      SQL.Add('WHERE  CAI_CCAB = '''+aux.Fields[3].AsString+'''');
      SQL.Add('AND    CAI_DESC = '''+aux.Fields[0].AsString+'''');
      SQL.Add('AND    CAI_CONC = '''+aux.Fields[2].AsString+'''');
      SQL.Add('AND    CAI_DOCT = '''+doct+'''');
      ExecSQL;
    end;
    aux.Next;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM '+SLPrincipal.Values['fin_rec_ban_bai']);
    SQL.Add('WHERE  FIN_CDBX = '''+cadastroROM_CDBX.AsString+'''');
    ExecSQL;

    SQL.Clear;
    SQL.Add('DELETE FROM '+SLPrincipal.Values['fin_rec_ban_rec']);
    SQL.Add('WHERE  FIN_CDBX = '''+cadastroROM_CDBX.AsString+'''');
    ExecSQL;
  end;

  fin_rec_bai.First;
  while not fin_rec_bai.Eof do
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM TAB_COB');
      SQL.Add('WHERE  VEN_TIPO = '''+fin_rec_baiFIN_TIPO.AsString+'''');
      Open;

      if fields[0].IsNull then
      doct := '1'
      else
      doct := fields[0].AsString;
      doct := inttostr(conc)+oStrZero(strtoint(doct),19);

      SQL.Clear;
      SQL.Add('SELECT SUM(FIN_VALO) FROM '+SLPrincipal.Values['fin_rec_ban_bai']);
      SQL.Add('WHERE  FIN_CDCX = '''+inttostr(cdcx)+'''');
      SQL.Add('AND    FIN_TIPO = '''+fin_rec_baiFIN_TIPO.AsString+'''');
      SQL.Add('AND    FIN_CONC = '''+inttostr(conc)+'''');
      Open;
      valo := Fields[0].AsFloat;
    end;

    if valo > 0 then
    begin
      ibSP.StoredProcName := 'SP_CAI_MOV';
      ibSP.Prepare;
      ibSP.ParamByName('ID').Value   := 0;
      ibSP.ParamByName('CCAB').Value := cdcx;
      ibSP.ParamByName('CTSR').Value := ctsr;
      ibSP.ParamByName('CDBX').Value := 0;
      ibSP.ParamByName('CONC').Value := 1;
      ibSP.ParamByName('DESC').Value := fin_rec_baiFIN_TIPO.AsString;
      ibSP.ParamByName('DOCT').Value := doct;
      ibSP.ParamByName('DCAD').Value := cadastroROM_DROM.AsDateTime;
      ibSP.ParamByName('HCAD').Value := time;
      ibSP.ParamByName('SANT').Value := 0;
      ibSP.ParamByName('CRED').Value := valo;
      ibSP.ParamByName('DEBI').Value := 0;
      ibSP.ParamByName('SATU').Value := 0;
      ibSP.ParamByName('BCON').Value := 0;
      ibSP.ParamByName('DCON').Value := '';
      ibSP.ExecProc;
    end;
    fin_rec_bai.Next;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(CAI_CRED),SUM(CAI_DEBI),SUM(CAI_CRED-CAI_DEBI) FROM CAI_MOV');
    SQL.Add('WHERE  CAI_CCAB = '''+inttostr(cdcx)+'''');
    Open;
  end;

  with aux do
  begin
    SQL.Clear;
    SQL.Add('UPDATE CAI_LAF');
    SQL.Add('SET    CAI_CRED = '''+oStrTran(consulta.Fields[0].AsString,',','.')+''',');
    SQL.Add('       CAI_DEBI = '''+oStrTran(consulta.Fields[1].AsString,',','.')+''',');
    SQL.Add('       CAI_SATU = '''+oStrTran(consulta.Fields[2].AsString,',','.')+'''');
    SQL.Add('WHERE  ID       = '''+inttostr(cdcx)+'''');
    ExecSQL;
  end;
end;

procedure Tfrmctr_ped.abre_tabela;
begin
  with cadastro do
  begin
    DeleteSQL.Clear;
    DeleteSQL.Add('delete from '+SLPrincipal.Values['ped_ven_cab']);
    DeleteSQL.Add('where');
    DeleteSQL.Add('ID = :OLD_ID');

    InsertSQL.Clear;
    InsertSQL.Add('insert into '+SLPrincipal.Values['ped_ven_cab']);
    InsertSQL.Add('  (ID, ROM_ADSC, ROM_CCLI, ROM_CDBX, ROM_CDCX, ROM_CDNF, ROM_CDOC, ROM_CDPD,');
    InsertSQL.Add('   ROM_CDPR, ROM_CDRD, ROM_CDRO, ROM_CDSC, ROM_CEXP, ROM_COMI, ROM_CONC,');
    InsertSQL.Add('   ROM_CPAG, ROM_CREP, ROM_CTNR, ROM_CVEN, ROM_DBAI, ROM_DCAN, ROM_DDES,');
    InsertSQL.Add('   ROM_DEMB, ROM_DERD, ROM_DERO, ROM_DEXP, ROM_DNFS, ROM_DPRD, ROM_DROM, ROM_HEXP,');
    InsertSQL.Add('   ROM_HROM, ROM_OBSE, ROM_PDSC, ROM_QTPD, ROM_QTSP, ROM_QTVE, ROM_RLVE,');
    InsertSQL.Add('   ROM_STA , ROM_STCO, ROM_STFI, ROM_STPD, ROM_TCDE, ROM_TDSC, ROM_TSDE)');
    InsertSQL.Add('values');
    InsertSQL.Add('  (:ID, :ROM_ADSC, :ROM_CCLI, :ROM_CDBX, :ROM_CDCX, :ROM_CDNF, :ROM_CDOC,');
    InsertSQL.Add('   :ROM_CDPD, :ROM_CDPR, :ROM_CDRD, :ROM_CDRO, :ROM_CDSC, :ROM_CEXP, :ROM_COMI,');
    InsertSQL.Add('   :ROM_CONC, :ROM_CPAG, :ROM_CREP, :ROM_CTNR, :ROM_CVEN, :ROM_DBAI, :ROM_DCAN,');
    InsertSQL.Add('   :ROM_DDES, :ROM_DEMB, :ROM_DERD, :ROM_DERO, :ROM_DEXP, :ROM_DNFS, :ROM_DPRD, :ROM_DROM,');
    InsertSQL.Add('   :ROM_HEXP, :ROM_HROM, :ROM_OBSE, :ROM_PDSC, :ROM_QTPD, :ROM_QTSP, :ROM_QTVE,');
    InsertSQL.Add('   :ROM_RLVE, :ROM_STA,  :ROM_STCO, :ROM_STFI, :ROM_STPD, :ROM_TCDE, :ROM_TDSC,');
    InsertSQL.Add('   :ROM_TSDE)');

    ModifySQL.Clear;
    ModifySQL.Add('update '+SLPrincipal.Values['ped_ven_cab']);
    ModifySQL.Add('set');
    ModifySQL.Add('  ID = :ID,');
    ModifySQL.Add('  ROM_ADSC = :ROM_ADSC,');
    ModifySQL.Add('  ROM_CCLI = :ROM_CCLI,');
    ModifySQL.Add('  ROM_CDBX = :ROM_CDBX,');
    ModifySQL.Add('  ROM_CDCX = :ROM_CDCX,');
    ModifySQL.Add('  ROM_CDNF = :ROM_CDNF,');
    ModifySQL.Add('  ROM_CDOC = :ROM_CDOC,');
    ModifySQL.Add('  ROM_CDPD = :ROM_CDPD,');
    ModifySQL.Add('  ROM_CDPR = :ROM_CDPR,');
    ModifySQL.Add('  ROM_CDRD = :ROM_CDRD,');
    ModifySQL.Add('  ROM_CDRO = :ROM_CDRO,');
    ModifySQL.Add('  ROM_CDSC = :ROM_CDSC,');
    ModifySQL.Add('  ROM_CEXP = :ROM_CEXP,');
    ModifySQL.Add('  ROM_COMI = :ROM_COMI,');
    ModifySQL.Add('  ROM_CONC = :ROM_CONC,');
    ModifySQL.Add('  ROM_CPAG = :ROM_CPAG,');
    ModifySQL.Add('  ROM_CREP = :ROM_CREP,');
    ModifySQL.Add('  ROM_CTNR = :ROM_CTNR,');
    ModifySQL.Add('  ROM_CVEN = :ROM_CVEN,');
    ModifySQL.Add('  ROM_DBAI = :ROM_DBAI,');
    ModifySQL.Add('  ROM_DCAN = :ROM_DCAN,');
    ModifySQL.Add('  ROM_DDES = :ROM_DDES,');
    ModifySQL.Add('  ROM_DEMB = :ROM_DEMB,');
    ModifySQL.Add('  ROM_DERD = :ROM_DERD,');
    ModifySQL.Add('  ROM_DERO = :ROM_DERO,');
    ModifySQL.Add('  ROM_DEXP = :ROM_DEXP,');
    ModifySQL.Add('  ROM_DNFS = :ROM_DNFS,');
    ModifySQL.Add('  ROM_DPRD = :ROM_DPRD,');
    ModifySQL.Add('  ROM_DROM = :ROM_DROM,');
    ModifySQL.Add('  ROM_HEXP = :ROM_HEXP,');
    ModifySQL.Add('  ROM_HROM = :ROM_HROM,');
    ModifySQL.Add('  ROM_OBSE = :ROM_OBSE,');
    ModifySQL.Add('  ROM_PDSC = :ROM_PDSC,');
    ModifySQL.Add('  ROM_QTPD = :ROM_QTPD,');
    ModifySQL.Add('  ROM_QTSP = :ROM_QTSP,');
    ModifySQL.Add('  ROM_QTVE = :ROM_QTVE,');
    ModifySQL.Add('  ROM_RLVE = :ROM_RLVE,');
    ModifySQL.Add('  ROM_STA  = :ROM_STA, ');
    ModifySQL.Add('  ROM_STCO = :ROM_STCO,');
    ModifySQL.Add('  ROM_STFI = :ROM_STFI,');
    ModifySQL.Add('  ROM_STPD = :ROM_STPD,');
    ModifySQL.Add('  ROM_TCDE = :ROM_TCDE,');
    ModifySQL.Add('  ROM_TDSC = :ROM_TDSC,');
    ModifySQL.Add('  ROM_TSDE = :ROM_TSDE ');
    ModifySQL.Add('where');
    ModifySQL.Add('  ID = :OLD_ID');
  end;
end;

procedure Tfrmctr_ped.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
     BlobStream := tab.CreateBlobStream(valor,bmRead);

  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    writefoto.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmctr_ped.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value,Value2,Value3: Variant;
begin
  if not ASelected then
  begin
    AFont.Style := [];
    AFont.Color := clBlack;
    AColor      := clWhite;

    Value  := ANode.Values[13];
    Value2 := ANode.Values[14];
    Value3 := ANode.Values[21];

    if (not VarIsNull(Value)) then
    begin
      if copy(Value,1,4) = 'PAGO' then
      begin
         AFont.Color := clwhite;
         AColor      := $00A4A400;
      end
      else if Value = 'FATURADO' then
      begin
         AFont.Color := clwhite;
         AColor      := $00C6C600;
      end
      else if Value = 'SEM COBRANÇA' then
      begin
         AFont.Color := clBlack;
         AColor      := $00E1E1E1;
      end
      else if Value = 'AGUARDANDO LIBERAÇÃO' then
      begin
         AFont.Color := clBlack;
         AColor      := $00C8C8C8;
      end
      else if Value = 'AGUARDANDO CRÉDITO' then
      begin
         AFont.Color := clBlack;
         AColor      := $00959595;
      end
      else if Value = 'PROTESTADO' then
      begin
         AFont.Color := clBlack;
         AColor      := $0095FFFF;
      end
      else if Value = 'NÃO PAGO' then
      begin
         AFont.Color := clBlack;
         AColor      := $003EFFFF;
      end
      else if Value = 'SUSPENSO' then
      begin
         AFont.Color := clBlack;
         AColor      := $0000FDFD;
      end
      else if Value = 'SEPARAÇÃO' then
      begin
         AFont.Color := clWhite;
         AColor      := clBlack;
      end
      else if Value = 'CANCELADO' then
      begin
         AFont.Color := clwhite;
         AColor      := RGB(StrToInt( '$ED') ,
                            StrToInt( '$1F') ,
                            StrToInt( '$43') );
      end;
    end;

    if (not VarIsNull(Value3)) then
    begin
      if (AColumn = dbgConsultaROM_DERO) and (Value3 > 0) then
      begin
        if (copy(Value,1,4) = 'PAGO') or (Value = 'FATURADO') or (Value = 'SEPARAÇÃO') or (Value = 'CANCELADO') then
        AFont.Color := clWhite else
        AFont.Color := clBlack;
        AFont.Style := [fsUnderline,fsBold];
      end;
    end;

    if (not VarIsNull(Value2)) then
    begin
      if Value2 = 'DEVOLUÇÃO' then
      begin
        AFont.Color := clBlack;
        AColor      := $00BEEFF8;
      end
      else if Value2 = 'ABATIMENTO' then
      begin
        AFont.Color := clBlack;
        AColor      := $00A5EAF5;
      end
    end;
  end;
end;

procedure Tfrmctr_ped.rom_iteAfterScroll(DataSet: TDataSet);
begin
  if (cadastro.State = dsBrowse) and (pnlfoto.Visible) then
  carregaFoto(rom_itePRO_FOTO.BlobSize,rom_itePRO_FOTO,rom_ite,frmprincipal.parametros);
end;

procedure Tfrmctr_ped.cadastroBeforeEdit(DataSet: TDataSet);
begin
  {};
end;

procedure Tfrmctr_ped.cadastroBeforeInsert(DataSet: TDataSet);
begin
  {};
end;

procedure Tfrmctr_ped.siAROClick(Sender: TObject);
var
  temp_AUTORIZACAO, temp_TP_AUTORIZACAO: string;
begin
  temp_AUTORIZACAO    := '';
  temp_TP_AUTORIZACAO := '';

  if cadastroROM_CDBX.AsInteger > 0 then
  raise exception.Create('Pedido já finalizado !');

  if cadastroROM_CDNF.AsInteger > 0 then
  raise exception.Create('Pedido já faturado !'+#13+'Nota Fiscal No '+cadastroROM_CDNF.AsString);

  if cadastroROM_CDRO.AsInteger > 0 then
  raise exception.Create('Pedido já possui romaneio emitido !'+#13+'Romaneio No '+cadastroROM_CDRO.AsString);

  if cadastroROM_CDCX.AsInteger > 0 then
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAI_LAF');
      SQL.Add('WHERE  CAI_DFEC IS NOT NULL');
      SQL.Add('AND    ID = '''+cadastroROM_CDCX.AsString+'''');
      Open;
    end;

    if not consulta.Fields[0].IsNull then
    begin
      if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Alterar Após o Fechamento',false) then
      begin
        if not RETORNA_LOGIN('Permissão para alterar pedido após o fechamento do caixa') then
        Databaseerror('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.') else
        begin
          temp_AUTORIZACAO    := AUTORIZACAO;
          temp_TP_AUTORIZACAO := TP_AUTORIZACAO;
        end;
      end;
    end else
    begin
      if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Alterar Antes do Fechamento',false) then
      begin
        if not RETORNA_LOGIN('Permissão para alterar pedido antes do fechamento') then
        Databaseerror('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.') else
        begin
          temp_AUTORIZACAO    := AUTORIZACAO;
          temp_TP_AUTORIZACAO := TP_AUTORIZACAO;
        end;
      end;
    end;
  end;

  tag        := 0;
  siARO.Tag  := 1;
  frmven_ped := Tfrmven_ped.Create(self);

  AUTORIZACAO    := temp_AUTORIZACAO;
  TP_AUTORIZACAO := temp_TP_AUTORIZACAO;
  siARO.Tag      := 0;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
    frmven_ped.FormStyle := fsNormal;
    frmven_ped.Visible   := false;
    frmven_ped.ShowModal;
  end
  else
    frmven_ped.Show;
end;

procedure Tfrmctr_ped.siRELClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.CDPD                 := cadastroID.AsString;
    frmrelatorio_geral.CDRO                 := cadastroROM_CDRO.AsString;
    frmrelatorio_geral.CDBX                 := cadastroROM_CDBX.AsString;
    frmrelatorio_geral.CDNF                 := cadastroROM_CDNF.AsString;
    frmrelatorio_geral.tsVEN_PED.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsVEN_PED;
    frmrelatorio_geral.cbVEN_PED_TREL.Text  := frmprincipal.parametrosPAR_PREL.AsString;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmctr_ped.cadastroAfterOpen(DataSet: TDataSet);
begin
  with rom_ite do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PED_VEN_ITE.*,CAD_PRO.ID,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_CCOR,');
    SQL.Add('         CAD_PRO.PRO_RCOR,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
    SQL.Add('         CAD_PRO.PRO_CBAR,CAD_PRO.PRO_PPRO,CAD_PRO.PRO_CEMB,CAD_PRO.PRO_GRAD,');
    SQL.Add('         CAD_PRO.PRO_PIPI,CAD_PRO.PRO_REPR,CAD_PRO_IMG.PRO_FOTO');
    SQL.Add('FROM     CAD_PRO_IMG,CAD_PRO,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
    SQL.Add('WHERE    PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
    SQL.Add('AND      CAD_PRO_IMG.PRO_CART = CAD_PRO.PRO_CART');
    SQL.Add('AND      PED_VEN_ITE.ROM_CCAB = :ID');
    SQL.Add('ORDER BY PED_VEN_ITE.ROM_ITEM');
    Open;
  end;
end;

procedure Tfrmctr_ped.cadastroCalcFields(DataSet: TDataSet);
begin
  cadastroROM_DESC.Value := formatfloat('#,0.00########',cadastroROM_PDSC.AsFloat);
  if cadastroROM_CDSC.AsFloat > 0 then
  cadastroROM_DESC.Value := cadastroROM_DESC.AsString+'+'+formatfloat('#,0.00########',cadastroROM_CDSC.AsFloat);

  if cadastroROM_CDRD.AsInteger > 0 then
  begin
    if Pos('DEVOLU',cadastroROM_STPD.Value) > 0 then
    cadastroROM_DEVO.Value := 'Pedido de Venda No. '+cadastroROM_DERD.AsString else
    cadastroROM_DEVO.Value := 'Devolução No. '+cadastroROM_DERD.AsString;
  end;
end;

procedure Tfrmctr_ped.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 2;
    if campo_pesquisa = '' then
    frmpesquisa.cbCAMPO.Text := 'Número Pedido' else
    frmpesquisa.cbCAMPO.Text := campo_pesquisa;
    frmpesquisa.cbDATA.Text  := 'Lançamento';
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      if (edTXT.Text = '') and (dxdt1.Date < 0) and (cField <> 'Todos') then
         {nothing}
      else
      with cadastro do
      begin
        Close;
        SelectSQL.Clear;
        SelectSQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_CLI.CLI_CRED,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
        SelectSQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
        SelectSQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
        SelectSQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
        SelectSQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
        SelectSQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');

        if cField <> 'Todos' then
        begin
          if edtxt.Text <> '' then
          begin
            if (cfield = 'ROM_DERO') then
               SelectSQL.Add('AND ROM_DERO LIKE '''+edtxt.Text+'%''')
            else if (cfield = 'CAD_CLI.ID') then
               SelectSQL.Add('AND ROM_CCLI = '''+edtxt.Text+'''')
            else if (cfield = 'ROM_CDBX') then
               SelectSQL.Add('AND ROM_CDBX = '''+edtxt.Text+'''')
            else if (cfield = 'ROM_CDNF') then
               SelectSQL.Add('AND ROM_CDNF = '''+edtxt.Text+'''')
            else
               SelectSQL.Add('AND '+cField+' LIKE ''%'+edtxt.Text+'%''');
          end;

          if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
             SelectSQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');
        end;

        if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
        SelectSQL.Add('AND PED_VEN_CAB.ROM_CVEN = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');

        if cField = 'Todos' then
           cField := 'CLI_FANT';

        SelectSQL.Add('ORDER BY '+cField);
        Open;
      end;
      dbgconsulta.SetFocus;
      campo_pesquisa := frmpesquisa.cbCAMPO.Text;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmctr_ped.siEVEClick(Sender: TObject);
begin
  frmlog_eve := tfrmlog_eve.create(self);
  with frmlog_eve.cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT LOG_EVE.*,PAR_SIS.PAR_FANT,CAD_FUN.FUN_FOTO');
    SQL.Add('FROM   LOG_EVE,PAR_SIS');
    SQL.Add('LEFT   OUTER JOIN CAD_FUN ON LOG_EVE.EVE_CLOG = CAD_FUN.ID');
    SQL.Add('WHERE  LOG_EVE.EVE_CDEP = PAR_SIS.ID');
    SQL.Add('AND    LOG_EVE.EVE_FUNC = ''Vendas''');
    SQL.Add('AND    LOG_EVE.EVE_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
    SQL.Add('AND    LOG_EVE.EVE_CLOG = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
    SQL.Add('ORDER BY ID DESC');
    Open;
  end;
  frmlog_eve.show;
end;

procedure Tfrmctr_ped.siCROClick(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
  if cadastroROM_CDBX.AsInteger = 0 then
  begin
    if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Cancelar',false) then
    raise exception.Create('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');

    if cadastroROM_CDNF.AsInteger > 0 then
    raise exception.Create('Pedido já faturado !'+#13+'Nota Fiscal No '+cadastroROM_CDNF.AsString);

    if cadastroROM_CDRO.AsInteger > 0 then
    raise exception.Create('Pedido já possui romaneio emitido !'+#13+'Romaneio No '+cadastroROM_CDRO.AsString);

    if (cadastroROM_QTPD.AsFloat > 0) and (cadastroROM_CDNF.AsInteger = 0) then
    raise exception.Create('Pedido já está em processo de separação !'+#13+'Separador '+cadastroROM_DSEP.AsString);

    if oYesNo(handle,'Cancelar Pedido No.: '+cadastroID.AsString+' ?') = mrno then
    abort;

    ClickedOK := InputQuery('Cancelamento de Pedido', 'Motivo', NewString);
    if not ClickedOK then
    abort;

    with frmprincipal.sp_sql do
    begin
      ibSP.StoredProcName := 'SP_SQL';
      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_res']);
      SQL.Add('WHERE  EST_CDPD = '''+cadastroID.AsString+'''');
      SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      ibSP.StoredProcName := 'SP_SQL';
      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_sep']);
      SQL.Add('WHERE  EST_CDPD = '''+cadastroID.AsString+'''');
      SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_est']);
      SQL.Add('SET    EST_CDPD = NULL');
      SQL.Add('WHERE  EST_CDPD = '''+cadastroID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_est']);
      SQL.Add('WHERE  EST_CDRO = '''+cadastroID.AsString+'''');
      SQL.Add('AND    EST_FLAG = ''V''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      if cadastroROM_CDRO.AsInteger > 0 then
      begin
        SQL.Clear;
        SQL.Add('DELETE FROM '+SLPrincipal.Values['rom_cab']);
        SQL.Add('WHERE  ID = '''+cadastroROM_CDRO.AsString+'''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;

        SQL.Clear;
        SQL.Add('DELETE FROM '+SLPrincipal.Values['rom_ite']);
        SQL.Add('WHERE  ROM_CCAB = '''+cadastroROM_CDRO.AsString+'''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;
      end;
    end;

    cadastro.Edit;
    cadastroROM_STA.Value  := '1';
    cadastroROM_STFI.Value := 'CANCELADO';
    cadastroROM_DCAN.Value := strtodate(SLPrincipal.Values['data_sistema']);
    cadastroROM_OBSE.Value := cadastroROM_OBSE.AsString+NewString;
    cadastro.Post;

    frmprincipal.Log_Eve('Vendas',LOWERCASE(cadastroROM_STPD.AsString),'Cancelamento',cadastroROM_DERO.AsString,cadastroROM_DERO.AsString,cadastroROM_CCLI.AsString+' - '+LOWERCASE(cadastroCLI_FANT.AsString),'','');
  end
  else
  begin
    if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Cancelar Baixa',false) then
    raise exception.Create('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');

    if oYesNo(handle,'Cancelar baixa financeira do pedido No.: '+cadastroID.AsString+' ?') = mrno then
    abort;

    with frmprincipal.sp_sql do
    begin
      if (cadastroROM_STCO.AsString <> 'BANCÁRIO') then
        cancela_caixa_carteira
      else
      begin
        if cadastroROM_CONC.AsInteger > 1 then
        cancela_caixa_carteira;
        cancela_caixa_bancario;
      end;
      IBTra.CommitRetaining;
    end;

    with frmprincipal.sp_sql do
    begin
      ibSP.StoredProcName := 'SP_SQL';

      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('SET    ROM_DBAI = NULL,');
      if cadastroROM_STCO.AsString <> 'SEM COBRANÇA' then
      SQL.Add('       ROM_STFI = ''PENDENTE'',');
      SQL.Add('       ROM_CDBX = NULL');
      SQL.Add('WHERE  ROM_CDBX = '''+cadastroROM_CDBX.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['rom_cab']);
      SQL.Add('SET    ROM_STFI = ''PENDENTE'',');
      SQL.Add('       ROM_DBAI = NULL,');
      SQL.Add('       ROM_CDBX = NULL');
      SQL.Add('WHERE  ROM_CDBX = '''+cadastroROM_CDBX.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      if (cadastroROM_STPD.AsString <> 'DEVOLUÇÃO') and (cadastroROM_STPD.AsString <> 'ABATIMENTO') and (cadastroROM_CDRO.AsInteger = 0) then
      begin
        consulta.SQL.Clear;
        consulta.SQL.Add('SELECT VEN_BEST FROM TAB_PED');
        consulta.SQL.Add('WHERE  VEN_TIPO = '''+cadastroROM_STPD.AsString+'''');
        consulta.Open;

        if consulta.Fields[0].AsString = '1' then
        begin
          SQL.Clear;
          SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_est']);
          SQL.Add('WHERE  EST_CDRO = '''+cadastroID.AsString+'''');
          SQL.Add('AND    EST_FLAG = ''V''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;

          ibSP.StoredProcName := 'SP_SQL';
          SQL.Clear;
          SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_res']);
          SQL.Add('WHERE  EST_CDPD = '''+cadastroID.AsString+'''');
          SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;

          ibSP.StoredProcName := 'SP_SQL';
          SQL.Clear;
          SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_sep']);
          SQL.Add('WHERE  EST_CDPD = '''+cadastroID.AsString+'''');
          SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;

          rom_ite.First;
          while not rom_ite.Eof do
          begin
            ibSP.StoredProcName := 'SP_CAD_PRO_RES';
            ibSP.Prepare;

            ibSP.ParamByName('est').Value  := 'CAD_PRO_RES';
            if frmprincipal.parametrosID.AsInteger > 1 then
            ibSP.ParamByName('est').Value  := 'CAD_PRO_RES_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

            ibSP.ParamByName('id').Value   := 0;
            ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
            ibSP.ParamByName('cdro').Value := 0;
            ibSP.ParamByName('cdpd').Value := cadastroID.AsInteger;
            ibSP.ParamByName('cdbx').Value := 0;
            ibSP.ParamByName('cpro').Value := rom_iteROM_CPRO.AsInteger;
            ibSP.ParamByName('cusu').Value := cadastroROM_CVEN.AsInteger;
            ibSP.ParamByName('dusu').Value := cadastroUSU_DUSU.AsString;
            ibSP.ParamByName('cfav').Value := cadastroROM_CCLI.AsInteger;
            ibSP.ParamByName('dfav').Value := cadastroCLI_FANT.AsString;
            ibSP.ParamByName('dcad').Value := strtodate(SLPrincipal.Values['data_sistema']);
            ibSP.ParamByName('docu').Value := copy(cadastroROM_DERO.AsString,1,10);
            ibSP.ParamByName('flag').Value := 'R';
            ibSP.ParamByName('cdet').Value := rom_iteROM_CDET.AsString;
            ibSP.ParamByName('dsep').Value := rom_iteROM_DSEP.AsString;
            ibSP.ParamByName('debi').Value := 0;
            ibSP.ParamByName('cred').Value := rom_iteROM_QTDE.AsFloat;
            ibSP.ParamByName('dmap').Value := '';
            ibSP.ParamByName('lote').Value := '';
            ibSP.ParamByName('ctnr').Value := '';
            ibSP.ExecProc;

            rom_ite.Next;
          end;
        end;
      end;

      IBTra.CommitRetaining;
      frmprincipal.Log_Eve('Vendas',LOWERCASE(cadastroROM_STPD.AsString),'Cancelamento de Baixa',cadastroROM_DERO.AsString,cadastroROM_DERO.AsString,cadastroROM_CCLI.AsString+' - '+LOWERCASE(cadastroCLI_FANT.AsString),'','');
    end;

    ExecuteEvent;
  end;
end;

procedure Tfrmctr_ped.siGROClick(Sender: TObject);
var
  BRet,BOk: boolean;
begin
  if cadastroROM_CDBX.AsInteger > 0 then
  raise exception.Create('Pedido já finalizado !');

  if (cadastroROM_STFI.AsString = 'AGUARDANDO LIBERAÇÃO') or (cadastroROM_STFI.AsString = 'AGUARDANDO CRÉDITO') or (cadastroROM_STFI.AsString = 'PROTESTADO') or
     (cadastroROM_STFI.AsString = 'NÃO PAGO')             or (cadastroROM_STFI.AsString = 'SUSPENSO')   then
  raise exception.Create('Não é possível gerar romaneio !'+#13+'Situação: '+cadastroROM_STFI.AsString);

  if cadastroROM_CDNF.AsInteger > 0 then
  raise exception.Create('Pedido já faturado !'+#13+'Nota Fiscal No '+cadastroROM_CDNF.AsString);

  if cadastroROM_CDRO.AsInteger > 0 then
  raise exception.Create('Pedido já possui romaneio gerado !'+#13+'Romaneio No '+cadastroROM_CDRO.AsString);

  if oYesNo(handle,'Confirma geração de romaneio baseado no pedido selecionado ?'+#13+
                  'Pedido No '+cadastroID.AsString+' Cliente '+cadastroROM_CCLI.AsString+' - '+cadastroCLI_FANT.AsString) = mrno then
     gera_romaneio := false
  else
  begin
    BOk := true;

    if cadastroROM_CDRO.AsInteger > 0 then
    begin
      BOk := false;

      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT VEN_QTSP FROM TAB_PED');
        SQL.Add('WHERE  VEN_TIPO = '''+cadastroROM_STPD.AsString+'''');
        Open;

        BRet := (fields[0].AsString = '1');
      end;

      if BRet then
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID FROM '+SLPrincipal.Values['ped_ven_ite']);
        SQL.Add('WHERE  ROM_CCAB = '''+cadastroID.AsString+'''');
        SQL.Add('AND    ROM_FLAG = ''0''');
        Open;
        BOk := (not fields[0].IsNull);
      end;
    end;

    if not BOk then
    raise exception.Create('Pedido já possui romaneio gerado !'+#13+'Romaneio No: '+cadastroROM_CDRO.AsString);

    gera_romaneio := true;
    close;
  end;
end;

procedure Tfrmctr_ped.dtsrom_iteDataChange(Sender: TObject; Field: TField);
var
  tam: word;
begin
  tam := dbgiteROM_DPRO.Tag;

  if (screen.Width >= 1360) and (screen.Width <= 1366) then
  tam := tam + 50 else
  if (screen.Width > 1366) and (screen.Width <= 1440) then
  tam := tam + 150 else
  if (Screen.Width > 1440) and (Screen.Width <= 1600) then
  tam := tam + 250 else
  if (Screen.Width > 1600) and (Screen.Width <= 1680) then
  tam := tam + 350 else
  if Screen.Width > 1680 then
  tam := tam + 400;

  dbgiteROM_DCOR.Visible := (rom_iteROM_DCOR.AsString <> '');

  if dbgiteROM_DCOR.Visible then
  tam := tam - dbgiteROM_DCOR.Width;

  dbgiteROM_QTPD.Visible := (cadastroROM_DSEP.AsString <> '');
  dbgiteROM_RLPD.Visible := (cadastroROM_DSEP.AsString <> '');

  if dbgiteROM_QTPD.Visible then
  tam := tam - dbgiteROM_QTPD.Width;

  if (rom_iteROM_QTRL.AsFloat > 0) and (copy(rom_iteROM_DUNI.AsString,1,1) = 'M') or
     (rom_iteROM_QTRL.AsFloat > 0) and (copy(rom_iteROM_DUNI.AsString,1,1) = 'K') then
  dbgiteROM_QTRL.Visible := true else
  dbgiteROM_QTRL.Visible := false;

  if dbgiteROM_QTRL.Visible then
  tam := tam - dbgiteROM_QTRL.Width;

  dbgiteROM_DPRO.Width   := tam;
  if dbgiteROM_VDSC.Visible then
  dbgiteROM_DPRO.Width   := dbgiteROM_DPRO.Width - dbgiteROM_VDSC.Width;
  dbgiteROM_VDSC.Visible := (rom_iteROM_VDSC.AsFloat > 0);

  if (Screen.Width <= 1024) or (Screen.Width <= 1280) then
  dbgiteROM_DCOR.Width := dbgiteROM_DCOR.Width - 20;
end;

procedure Tfrmctr_ped.siBROClick(Sender: TObject);
begin
  if cadastroROM_CDBX.AsInteger > 0 then
  raise exception.Create('Pedido já finalizado !');

  if (cadastroROM_STFI.AsString = 'AGUARDANDO LIBERAÇÃO') or (cadastroROM_STFI.AsString = 'AGUARDANDO CRÉDITO') or (cadastroROM_STFI.AsString = 'PROTESTADO') or
     (cadastroROM_STFI.AsString = 'NÃO PAGO')             or (cadastroROM_STFI.AsString = 'SUSPENSO')   then
  raise exception.Create('Não é possível finalizar pedido !'+#13+'Situação: '+cadastroROM_STFI.AsString);

  if (cadastroROM_CDRO.AsInteger > 0) and (cadastroROM_CDNF.AsInteger = 0) and (cadastroROM_CONC.AsInteger > 0) then
  raise exception.Create('Não é possível finalizar pedido !'+#13+'Pedido possui romaneio gerado, mas sem nota fiscal emitida.');

  if (cadastroROM_CDNF.AsInteger = 0) and (cadastroROM_STCO.AsString = 'BANCÁRIO') and (cadastroROM_STPD.AsString <> 'DEVOLUÇÃO')  and (cadastroROM_STPD.AsString <> 'ABATIMENTO') then
  raise exception.Create('Não é possível finalizar pedido !'+#13+'Para pedidos do tipo bancário é obrigatório a emissão de nota fiscal.');

  if (cadastroROM_STFI.AsString = 'SEPARAÇÃO') and (cadastroROM_CONC.AsInteger > 0) then
  raise exception.Create('Não é possível finalizar pedido !'+#13+'Pedido em processo de separação.');

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT VEN_QTSP FROM TAB_PED');
    SQL.Add('WHERE  VEN_TIPO = '''+cadastroROM_STPD.AsString+'''');
    Open;
  end;

  if (consulta.Fields[0].AsString = '1') and (cadastroROM_QTPD.AsFloat = 0) then
  raise exception.Create('Pedido aguardando separação !'+#13+'Não é possível finalizar.');
  
  Application.CreateForm (Tfrmctr_ped_bai, frmctr_ped_bai);

  frmctr_ped_bai.tab_pag.Close;
  frmctr_ped_bai.tab_pag.Params[0].Value := cadastroROM_CPAG.AsInteger;
  frmctr_ped_bai.tab_pag.Open;

  with consulta do
  begin
    SQL.Clear;
    if cadastroROM_CDCX.AsInteger > 0 then
    begin
      SQL.Add('SELECT CAI_DABR,CAI_DFEC,ID FROM CAI_LAF');
      SQL.Add('WHERE  ID = '''+cadastroROM_CDCX.AsString+'''');
    end
    else
    begin
      SQL.Add('SELECT CAI_DABR,CAI_DFEC,ID FROM CAI_LAF');
      SQL.Add('WHERE  CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      if cadastroROM_CDNF.AsInteger > 0 then
      SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',cadastroROM_DNFS.AsDateTime)+'''') else
      SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',cadastroROM_DROM.AsDateTime)+'''');
    end;
    Open;
  end;

  frmctr_ped_bai.eddrom.Date := consulta.Fields[0].AsDateTime;
  frmctr_ped_bai.edcdcx.Text := consulta.Fields[2].AsString;

  if cadastroROM_CDNF.AsInteger > 0 then
  frmctr_ped_bai.edDBAI.Date := cadastroROM_DNFS.AsDateTime;

  if frmctr_ped_bai.eddbai.Date <= 0 then
  frmctr_ped_bai.eddbai.Date := strtodate(SLPrincipal.Values['data_sistema']);

  if frmctr_ped_bai.edDROM.Date <> frmctr_ped_bai.edDBAI.Date then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAI_DABR,CAI_DFEC,ID FROM CAI_LAF');
    SQL.Add('WHERE  CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',frmctr_ped_bai.edDBAI.Date)+'''');
    Open;

    if not fields[0].IsNull then
    frmctr_ped_bai.edcdcx.Text := fields[2].AsString;
  end;

  if cadastroROM_CDCX.AsInteger = 0 then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('SET    ROM_CDCX = '''+frmctr_ped_bai.edcdcx.Text+'''');
    SQL.Add('WHERE  ID       = '''+cadastroID.AsString+'''');
    ExecSQL;

    if cadastroROM_CDRO.AsInteger > 0 then
    begin
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['rom_cab']);
      SQL.Add('SET    ROM_CDCX = '''+frmctr_ped_bai.edcdcx.Text+'''');
      SQL.Add('WHERE  ID       = '''+cadastroROM_CDRO.AsString+'''');
      ExecSQL;
    end;
    IBTra.CommitRetaining;
  end;

  frmctr_ped_bai.Tag := 1;

  if cadastroROM_STCO.AsString <> 'BANCÁRIO' then
  begin
    frmctr_ped_bai.tscar.TabVisible := false;
    BAIXA_CARTEIRA;
  end
  else
  begin
    if cadastroROM_CONC.AsInteger = 1 then
       frmctr_ped_bai.tscar.TabVisible := false;
    BAIXA_BANCARIO;
  end;

  frmctr_ped_bai.Tag := 0;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
    frmctr_ped_bai.FormStyle   := fsNormal;
    frmctr_ped_bai.Visible     := false;
    frmctr_ped_bai.ShowModal;
  end
  else
    frmctr_ped_bai.Show;
end;

procedure Tfrmctr_ped.BAIXA_CARTEIRA;
var
  stdo: string;
  valo: double;
  conc: word;
     i: word;

begin
  if cadastroROM_CDNF.AsInteger > 0 then
     stdo := 'C '+cadastroROM_CONC.AsString else stdo := 'C 0';

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT VEN_QTSP FROM TAB_PED');
    SQL.Add('WHERE  VEN_TIPO = '''+cadastroROM_STPD.AsString+'''');
    Open;

    if fields[0].AsString <> '1' then
    valo := cadastroROM_TCDE.AsFloat else
    begin
      valo := 0;

      SQL.Clear;
      SQL.Add('SELECT SUM(ROM_QTPD*ROM_UNIT) FROM '+SLPrincipal.Values['ped_ven_ite']);
      SQL.Add('WHERE  ROM_CCAB = '''+cadastroID.AsString+'''');
      Open;

      if fields[0].AsFloat > 0 then
      begin
        valo := fields[0].AsFloat;
        if cadastroROM_PDSC.AsFloat > 0 then
        begin
          if cadastroROM_TDSC.AsString = '%' then
          valo := valo - ((valo*cadastroROM_PDSC.AsFloat) / 100)
          else
          valo := valo - (cadastroROM_PDSC.AsFloat);
        end;
      end;
    end;  
  end;
  conc := cadastroROM_CONC.AsInteger;

  if cadastroROM_CDNF.AsInteger > 0 then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT NFE_VNF FROM '+SLPrincipal.Values['nfe_cab']);
    SQL.Add('WHERE  NFE_CDNF = '''+cadastroROM_CDNF.AsString+'''');
    Open;

    if fields[0].IsNull then
       raise exception.Create('Nota fiscal não encontrada !');

    if fields[0].AsFloat > 0 then
       valo := fields[0].AsFloat;
  end
  else
  conc := 0;

  frmctr_ped_bai.fin_rec.Append;
  frmctr_ped_bai.fin_recID.Value       := 0;
  frmctr_ped_bai.fin_recFIN_CDPD.Value := cadastroID.AsInteger;
  frmctr_ped_bai.fin_recFIN_PORT.Value := cadastroROM_DERO.AsString;
  frmctr_ped_bai.fin_recFIN_CDRO.Value := cadastroROM_CDRO.AsInteger;
  frmctr_ped_bai.fin_recFIN_CDNF.Value := cadastroROM_CDNF.AsInteger;
  frmctr_ped_bai.fin_recFIN_STDO.Value := stdo;
  frmctr_ped_bai.fin_recFIN_DROM.Value := cadastroROM_DROM.AsDateTime;
  frmctr_ped_bai.fin_recFIN_CCLI.Value := cadastroROM_CCLI.AsInteger;
  frmctr_ped_bai.fin_recFIN_DCLI.Value := cadastroCLI_FANT.AsString;
  frmctr_ped_bai.fin_recFIN_CVEN.Value := cadastroROM_CVEN.AsInteger;
  frmctr_ped_bai.fin_recFIN_CREP.Value := cadastroROM_CREP.AsInteger;
  frmctr_ped_bai.fin_recFIN_DCLI.Value := cadastroCLI_FANT.AsString;
  frmctr_ped_bai.fin_recFIN_STCO.Value := cadastroROM_STCO.AsString;
  frmctr_ped_bai.fin_recFIN_STPD.Value := cadastroROM_STPD.AsString;
  frmctr_ped_bai.fin_recFIN_CONC.Value := conc;
  frmctr_ped_bai.fin_recFIN_VEND.Value := cadastroUSU_DUSU.AsString;
  frmctr_ped_bai.fin_recFIN_DREP.Value := cadastroREP_FANT.AsString;
  frmctr_ped_bai.fin_recFIN_DPRA.Value := cadastroPAG_DPAG.AsString;
  if cadastroROM_CDNF.AsInteger > 0 then
  frmctr_ped_bai.fin_recFIN_DOCT.Value := cadastroROM_CDNF.AsString
  else
  frmctr_ped_bai.fin_recFIN_DOCT.Value := cadastroROM_DERO.AsString;
  frmctr_ped_bai.fin_recFIN_VALO.Value := roundto(valo,-2);
  frmctr_ped_bai.fin_recFIN_COBR.Value := 'C';
  frmctr_ped_bai.fin_recFIN_CTNR.Value := cadastroROM_CTNR.AsString;
  frmctr_ped_bai.fin_rec.Post;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT PAG_PARC,PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,PAG_D010 FROM TAB_PAG');
    SQL.Add('WHERE  ID = '''+cadastroROM_CPAG.AsString+'''');
    Open;
  end;

  for i := 1 to consulta.Fields[0].AsInteger do
  begin
    frmctr_ped_bai.fin_rec_bai.Append;
    frmctr_ped_bai.fin_rec_baiFIN_TIPO.Value := cadastroROM_STCO.AsString;

    case i of
        1: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[1].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[1].Value));
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
        2: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[2].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[2].Value));
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
        3: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[3].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[3].Value));
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
        4: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[4].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[4].Value));
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
        5: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[5].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[5].Value));
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
        6: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[6].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[6].Value));
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
        7: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[7].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[7].Value));
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
        8: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[8].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[8].Value));
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
        9: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[9].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[9].Value));
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
       10: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[10].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[10].Value));
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := roundto(valo/consulta.Fields[0].AsInteger,-2);
           end;
    end;
    frmctr_ped_bai.fin_rec_bai.Post;
  end;
end;

procedure Tfrmctr_ped.BAIXA_BANCARIO;
begin
  frmctr_ped_bai.siPSQ.Enabled  := false;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT NFE_TITU,NFE_DNFE,NFE_DVEN,NFE_VDUP FROM '+SLPrincipal.Values['nfe_dup']);
    SQL.Add('WHERE  NFE_CDNF = '''+cadastroROM_CDNF.AsString+'''');
    Open;
  end;

  if consulta.Fields[0].IsNull then
  begin
    messageBox(handle,'Tipo de cobrança "BANCÁRIO" sem duplicatas emitidas !'+#13+'Você precisa alterar o tipo de cobrança para prosseguir.',PChar(caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  while not consulta.Eof do
  begin
    frmctr_ped_bai.pclan.ActivePageIndex := 0;
    frmctr_ped_bai.fin_rec_bai.Append;
    frmctr_ped_bai.fin_rec_baiID.Value       := 0;
    frmctr_ped_bai.fin_rec_baiFIN_DOCT.Value := consulta.Fields[0].AsString;
    frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := consulta.Fields[2].AsDateTime;
    frmctr_ped_bai.fin_rec_baiFIN_TIPO.Value := 'DUPLICATA';
    frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := consulta.Fields[3].AsFloat;
    frmctr_ped_bai.fin_rec_bai.Post;

    if frmctr_ped_bai.tscar.TabVisible then
    begin
      frmctr_ped_bai.pclan.ActivePageIndex := 1;
      frmctr_ped_bai.fin_rec_bai.Append;
      frmctr_ped_bai.fin_rec_baiID.Value       := 0;
      frmctr_ped_bai.fin_rec_baiFIN_DOCT.Value := consulta.Fields[0].AsString;
      frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := consulta.Fields[2].AsDateTime;
      frmctr_ped_bai.fin_rec_baiFIN_TIPO.Value := 'CARTEIRA';
      frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := consulta.Fields[3].AsFloat;
      frmctr_ped_bai.fin_rec_baiFIN_COBR.Value := '1';
      frmctr_ped_bai.fin_rec_bai.Post;
    end;
    consulta.Next;
  end;
  frmctr_ped_bai.fin_rec_bai.First;
  frmctr_ped_bai.pclan.ActivePageIndex := 0;

  if not frmctr_ped_bai.fin_rec_bai.Fields[0].IsNull then
  begin
    frmctr_ped_bai.sblan.Enabled                 := false;
    frmctr_ped_bai.edDROM.Enabled                := false;
    frmctr_ped_bai.dbgprz1FIN_TIPO.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_PRAZ.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_DVEN.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_VALO.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_BANC.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_AGEN.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_CONT.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_NCHQ.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_OBSE.DisableEditor := true;
  end;

  with consulta do
  begin
    SQL.Clear;
    if cadastroROM_STPD.AsString <> 'BENEFICIAMENTO' then
    begin
      SQL.Add('SELECT NFE_VNF FROM '+SLPrincipal.Values['nfe_cab']);
      SQL.Add('WHERE  NFE_CDNF = '''+cadastroROM_CDNF.AsString+'''');
    end
    else
    begin
      SQL.Add('SELECT SUM(NFE_VNF) FROM '+SLPrincipal.Values['nfe_ite']);
      SQL.Add('WHERE  NFE_CDNF = '''+cadastroROM_CDNF.AsString+'''');
      SQL.Add('AND    NFE_CFOP = ''5124''');
      SQL.Add('OR     NFE_CDNF = '''+cadastroROM_CDNF.AsString+'''');
      SQL.Add('AND    NFE_CFOP = ''6124''');
      Open;
      
      if fields[0].AsFloat = 0 then
      begin
        SQL.Clear;
        SQL.Add('SELECT SUM(NFE_VNF) FROM '+SLPrincipal.Values['nfe_ite']);
        SQL.Add('WHERE  NFE_CDNF = '''+cadastroROM_CDNF.AsString+'''');
        SQL.Add('AND    NFE_CFOP = ''5125''');
        SQL.Add('OR     NFE_CDNF = '''+cadastroROM_CDNF.AsString+'''');
        SQL.Add('AND    NFE_CFOP = ''5925''');
      end;
    end;
    Open;
  end;

  frmctr_ped_bai.fin_rec.Append;
  frmctr_ped_bai.fin_recID.Value       := 0;
  frmctr_ped_bai.fin_recFIN_CDPD.Value := cadastroID.AsInteger;
  frmctr_ped_bai.fin_recFIN_PORT.Value := cadastroROM_DERO.AsString;
  frmctr_ped_bai.fin_recFIN_CDRO.Value := cadastroROM_CDRO.AsInteger;
  frmctr_ped_bai.fin_recFIN_CDNF.Value := cadastroROM_CDNF.AsInteger;
  frmctr_ped_bai.fin_recFIN_STDO.Value := 'B '+cadastroROM_CONC.AsString;
  frmctr_ped_bai.fin_recFIN_DROM.Value := cadastroROM_DROM.AsDateTime;
  frmctr_ped_bai.fin_recFIN_CCLI.Value := cadastroROM_CCLI.AsInteger;
  frmctr_ped_bai.fin_recFIN_DCLI.Value := cadastroCLI_FANT.AsString;
  frmctr_ped_bai.fin_recFIN_CVEN.Value := cadastroROM_CVEN.AsInteger;
  frmctr_ped_bai.fin_recFIN_CREP.Value := cadastroROM_CREP.AsInteger;
  frmctr_ped_bai.fin_recFIN_DCLI.Value := cadastroCLI_FANT.AsString;
  frmctr_ped_bai.fin_recFIN_STCO.Value := cadastroROM_STCO.AsString;
  frmctr_ped_bai.fin_recFIN_STPD.Value := cadastroROM_STPD.AsString;
  frmctr_ped_bai.fin_recFIN_CONC.Value := cadastroROM_CONC.AsInteger;
  frmctr_ped_bai.fin_recFIN_VEND.Value := cadastroUSU_DUSU.AsString;
  frmctr_ped_bai.fin_recFIN_DREP.Value := cadastroREP_FANT.AsString;
  frmctr_ped_bai.fin_recFIN_DPRA.Value := cadastroPAG_DPAG.AsString;
  frmctr_ped_bai.fin_recFIN_VALO.Value := consulta.Fields[0].AsFloat;
  frmctr_ped_bai.fin_recFIN_COBR.Value := 'B';
  frmctr_ped_bai.fin_recFIN_CTNR.Value := cadastroROM_CTNR.AsString;
  frmctr_ped_bai.fin_recFIN_DOCT.Value := cadastroROM_CDNF.AsString;
  frmctr_ped_bai.fin_rec.Post;
end;

procedure Tfrmctr_ped.dtscadastroDataChange(Sender: TObject;
  Field: TField);
begin
  if cadastroROM_TDSC.AsString = '%' then
  dbgConsultaROM_DESC.Caption := 'Desc (%)'
  else if cadastroROM_TDSC.AsString = '$' then
  dbgConsultaROM_DESC.Caption := 'Desc ($)';

  siARO.Enabled := (cadastroROM_STA.AsString  = '0');
  siGRO.Enabled := (cadastroROM_STA.AsString  = '0');
  siCRO.Enabled := (cadastroROM_STA.AsString  = '0');
  siBRO.Enabled := (cadastroROM_STA.AsString  = '0') and (cadastroROM_STPD.AsString <> 'DEVOLUÇÃO') and (cadastroROM_STPD.AsString <> 'ABATIMENTO');

  siCRO.ImageIndex := 2;
  if cadastroROM_CDBX.AsInteger > 0 then
  siCRO.ImageIndex := 13;

  sbMSG.Panels[1].Text := cadastroROM_CONC.AsString;
  sbMSG.Panels[2].Text := '';

  if cadastroROM_DSEP.AsString <> '' then
  sbMSG.Panels[2].Text := 'Separador '+cadastroROM_DSEP.AsString;

  if cadastroROM_DEXP.AsDateTime > cadastroROM_DROM.AsDateTime then
  sbMSG.Panels[2].Text := TRIM(sbMSG.Panels[2].Text)+' '+'Data Limite para Separação: '+formatDateTime('dd/mm/yy',cadastroROM_DEXP.AsDateTime)+' '+TRIM(cadastroROM_CTNR.AsString)+' '+TRIM(cadastroROM_OBSE.AsString);

  sbMSG.Panels[2].Text := TRIM(sbMSG.Panels[2].Text)+' '+TRIM(cadastroROM_CTNR.AsString)+' '+TRIM(cadastroROM_OBSE.AsString);

  edobse.Lines.Clear;
  edobse.Lines.Add(TRIM(cadastroROM_CTNR.AsString));
  edobse.Lines.Add(TRIM(cadastroROM_OBSE.AsString));
end;

procedure Tfrmctr_ped.writefotoClick(Sender: TObject);
begin
  frmcad_pro_img := tfrmcad_pro_img.create(self);
  try
    frmcad_pro_img.carregaFoto(rom_itePRO_FOTO.BlobSize,rom_itePRO_FOTO,rom_ite,frmprincipal.parametros);
    frmcad_pro_img.Caption := rom_iteROM_DPRO.AsString;
    frmcad_pro_img.showmodal;
  finally
    FreeAndNil(frmcad_pro_img);
    frmcad_pro_img.free;
  end;
end;

procedure Tfrmctr_ped.siINFClick(Sender: TObject);
begin
  if cadastroID.AsInteger = 0 then
  abort;

    frmcad_cli_inf := tfrmcad_cli_inf.create(self);
    frmcad_cli_inf.gbinfo.Caption := 'Informaçãoes Resumidas - '+cadastroCLI_FANT.AsString;
    frmcad_cli_inf.gbinfo.Hint    := cadastroCLI_FANT.AsString;
    frmcad_cli_inf.gbinfo.Tag     := cadastroROM_CCLI.AsInteger;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT CLI_CRED FROM CAD_CLI_CRD');
      SQL.Add('WHERE  CLI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('AND    CLI_CCLI = '''+cadastroROM_CCLI.AsString+'''');
      Open;
      frmcad_cli_inf.lacred.Caption := formatfloat('R$ #,0.00########',fields[0].AsFloat);
    end;

    frmcad_cli_inf.NewString      := cadastroROM_DERO.AsString;
    frmcad_cli_inf.ShowModal;
end;

end.
