unit pctr_ped;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, DB, IBStoredProc, IBEvents,
  IBDatabase, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ComCtrls, ExtCtrls, DBCtrls, dxPageControl, dxEditor, dxEdLib,
  StdCtrls, dxDBTLCl, dxGrClms, DateUtils, dxExEdtr, jpeg, Menus, Shellapi,
  Math, dxDBELib, rxSpeedbar, StrUtils, IBSQL, ppadr2;

type
  Tfrmctr_ped = class(Tfrmpadr2)
    rom_ite: TIBQuery;
    dtsrom_ite: TDataSource;
    Label23: TLabel;
    dbgConsultaSTPD: TdxDBGridMaskColumn;
    dbgConsultaSTCO: TdxDBGridMaskColumn;
    dbgConsultaDEST: TdxDBGridMaskColumn;
    dbgConsultaDTPK: TdxDBGridDateColumn;
    dbgConsultaTSDE: TdxDBGridMaskColumn;
    dbgConsultaTCDE: TdxDBGridMaskColumn;
    dbgConsultaDECD: TdxDBGridMaskColumn;
    dbgConsultaDECR: TdxDBGridMaskColumn;
    dbgConsultaDEPG: TdxDBGridMaskColumn;
    dbgConsultaPDSC: TdxDBGridColumn;
    dbgConsultaCDNF: TdxDBGridMaskColumn;
    dbgConsultaDTNF: TdxDBGridDateColumn;
    dbgConsultaDTBX: TdxDBGridDateColumn;
    aux: TIBQuery;
    dbgConsultaDEPK: TdxDBGridMaskColumn;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaDECV: TdxDBGridMaskColumn;
    dbgConsultaDECT: TdxDBGridMaskColumn;
    DBGConsultaVFRT: TdxDBGridMaskColumn;
    DBGFKConsulta: TdxDBGrid;
    DBGFKConsultaITEM: TdxDBGridMaskColumn;
    DBGFKConsultaSKU: TdxDBGridMaskColumn;
    DBGFKConsultaDECP: TdxDBGridMaskColumn;
    DBGFKConsultaDGCP: TdxDBGridMaskColumn;
    DBGFKConsultaUCOM: TdxDBGridMaskColumn;
    DBGFKConsultaQTDE: TdxDBGridMaskColumn;
    DBGFKConsultaQTSP: TdxDBGridMaskColumn;
    DBGFKConsultaVPRC_COM: TdxDBGridMaskColumn;
    DBGFKConsultaVDSC: TdxDBGridMaskColumn;
    DBGFKConsultaTSDE: TdxDBGridMaskColumn;
    SINovo: TSpeedItem;
    SIARO: TSpeedItem;
    SICRO: TSpeedItem;
    SICLI: TSpeedItem;
    SIINF: TSpeedItem;
    SIEXP: TSpeedItem;
    SIROM: TSpeedItem;
    SIFCP: TSpeedItem;
    SIFIN: TSpeedItem;
    DBGFKConsultaDESP: TdxDBGridMaskColumn;
    DBGFKConsultaDTSP: TdxDBGridDateColumn;
    CadastroID: TIntegerField;
    CadastroIDPK: TLargeintField;
    CadastroIDEP: TSmallintField;
    CadastroDEEP: TIBStringField;
    CadastroIDCA: TSmallintField;
    CadastroDTCA: TDateTimeField;
    CadastroIDED: TSmallintField;
    CadastroDTED: TDateTimeField;
    CadastroIDST: TSmallintField;
    CadastroDTST: TDateField;
    CadastroCDST: TSmallintField;
    CadastroDEST: TIBStringField;
    CadastroREST: TIBStringField;
    CadastroDEPK: TIBStringField;
    CadastroDTPK: TDateField;
    CadastroCTNR: TIBStringField;
    CadastroCDSP: TLargeintField;
    CadastroIDSP: TSmallintField;
    CadastroDTSP: TDateTimeField;
    CadastroCDRO: TLargeintField;
    CadastroDTRO: TDateField;
    CadastroCDNF: TLargeintField;
    CadastroDTNF: TDateTimeField;
    CadastroVNF: TIBBCDField;
    CadastroVIPI: TIBBCDField;
    CadastroVST: TIBBCDField;
    CadastroCDBX: TLargeintField;
    CadastroDTBX: TDateTimeField;
    CadastroCDCX: TLargeintField;
    CadastroIDCD: TIntegerField;
    CadastroDECD: TIBStringField;
    CadastroRZCD: TIBStringField;
    CadastroIDCV: TSmallintField;
    CadastroDECV: TIBStringField;
    CadastroIDCR: TSmallintField;
    CadastroDECR: TIBStringField;
    CadastroQTDE: TIBBCDField;
    CadastroQTRL: TIntegerField;
    CadastroQTSP: TIBBCDField;
    CadastroRLSP: TIntegerField;
    CadastroPDSC: TIBBCDField;
    CadastroVDSC: TIBBCDField;
    CadastroTSDE: TIBBCDField;
    CadastroD_TSDE: TIBBCDField;
    CadastroVTSP: TIBBCDField;
    CadastroTCDE: TIBBCDField;
    CadastroD_TCDE: TIBBCDField;
    CadastroVTFA: TIBBCDField;
    CadastroPCOM: TIBBCDField;
    CadastroVCOM: TIBBCDField;
    CadastroCDPD: TSmallintField;
    CadastroSTPD: TIBStringField;
    CadastroFAPD: TSmallintField;
    CadastroCSPD: TSmallintField;
    CadastroSVPD: TSmallintField;
    CadastroBQPD: TSmallintField;
    CadastroCDCO: TSmallintField;
    CadastroSTCO: TIBStringField;
    CadastroTPCO: TSmallintField;
    CadastroRECO: TIBStringField;
    CadastroCDPG: TSmallintField;
    CadastroDEPG: TIBStringField;
    CadastroPRZ_QTPZ: TSmallintField;
    CadastroPRZ_QTMD: TSmallintField;
    CadastroPRZ_QTFN: TSmallintField;
    CadastroIDCT: TSmallintField;
    CadastroDECT: TIBStringField;
    CadastroDTSA: TDateTimeField;
    CadastroMFRT: TSmallintField;
    CadastroVFRT: TIBBCDField;
    CadastroPSBR: TIBBCDField;
    CadastroPSLQ: TIBBCDField;
    CadastroINFADCAD: TIBStringField;
    CadastroLOG_PRN_IDEV: TSmallintField;
    CadastroLOG_PRN_DEEV: TIBStringField;
    CadastroLOG_PRN_CDEV: TSmallintField;
    CadastroLOG_PRN_REEV: TIBStringField;
    CadastroLOG_PRN_DTEV: TDateTimeField;
    CadastroIDEV: TLargeintField;
    CadastroIP: TIBStringField;
    CadastroHOST: TIBStringField;
    CadastroLOG_PRN_QTEV: TSmallintField;
    CadastroHTPK: TTimeField;
    CadastroDESP: TIBStringField;
    rom_iteID: TIntegerField;
    rom_iteIDEP: TSmallintField;
    rom_iteIDCA: TSmallintField;
    rom_iteDTCA: TDateTimeField;
    rom_iteIDED: TSmallintField;
    rom_iteDTED: TDateTimeField;
    rom_iteIDST: TSmallintField;
    rom_iteDTST: TDateField;
    rom_iteCDST: TSmallintField;
    rom_iteREST: TIBStringField;
    rom_iteDEST: TIBStringField;
    rom_iteIDPK: TLargeintField;
    rom_iteIDFK: TLargeintField;
    rom_iteITEM: TIntegerField;
    rom_iteIDCP: TIntegerField;
    rom_iteIDAK: TLargeintField;
    rom_iteIDEK: TLargeintField;
    rom_iteCP_IDEP: TSmallintField;
    rom_iteCP_DEEP: TIBStringField;
    rom_iteARTIGO: TIBStringField;
    rom_iteNCM: TIBStringField;
    rom_itePIPI: TIBBCDField;
    rom_iteVIPI: TIBBCDField;
    rom_iteCEST: TIBStringField;
    rom_iteEXTIPI: TIBStringField;
    rom_iteSKU: TIBStringField;
    rom_iteCEAN: TIBStringField;
    rom_iteDECP: TIBStringField;
    rom_iteDGCP: TIBStringField;
    rom_iteCMP_PAD: TIBStringField;
    rom_iteCF_ID: TSmallintField;
    rom_iteCF_NO: TIBStringField;
    rom_iteCF_SKU: TIBStringField;
    rom_iteCF_CEAN: TIBStringField;
    rom_iteUCOM: TIBStringField;
    rom_iteUPESO: TIBBCDField;
    rom_iteUPSCN: TIBBCDField;
    rom_iteUMETRO: TIBBCDField;
    rom_iteUREND: TIBBCDField;
    rom_iteQTDE: TIBBCDField;
    rom_iteQTRL: TIntegerField;
    rom_iteVPRC_PAD_INI: TFloatField;
    rom_iteVPRC_PAD_FIM: TFloatField;
    rom_iteVPRC_PAD: TFloatField;
    rom_iteVPRC_COM: TFloatField;
    rom_itePDSC: TIBBCDField;
    rom_iteVDSC: TIBBCDField;
    rom_iteTSDE: TIBBCDField;
    rom_iteTCDE: TIBBCDField;
    rom_itePSBR: TIBBCDField;
    rom_itePSLQ: TIBBCDField;
    rom_iteIDSP: TSmallintField;
    rom_iteDTSP: TDateTimeField;
    rom_iteCDSP: TLargeintField;
    rom_iteDESP: TIBStringField;
    rom_iteQTSP: TIBBCDField;
    rom_iteRLSP: TIntegerField;
    rom_iteORIG: TSmallintField;
    rom_iteCPAIS: TSmallintField;
    rom_iteINFADCAD: TIBStringField;
    DBGFKConsultaPDSC: TdxDBGridMaskColumn;
    DBGFKConsultaTCDE: TdxDBGridMaskColumn;
    DBGConsultaVDSC: TdxDBGridMaskColumn;
    CadastroD_STCO: TIBStringField;
    CadastroD_MFRT: TIBStringField;
    DBGConsultaHTPK: TdxDBGridTimeColumn;
    DBGConsultaCD_UF: TdxDBGridMaskColumn;
    DBGConsultaRECO: TdxDBGridMaskColumn;
    DBGConsultaD_MFRT: TdxDBGridMaskColumn;
    DBGConsultaPSBR: TdxDBGridColumn;
    DBGConsultaPSLQ: TdxDBGridColumn;
    rom_iteEPE_QTDE: TIBBCDField;
    rom_iteEPE_QTRL: TIntegerField;
    DBGFKConsultaEPE_QTDE: TdxDBGridMaskColumn;
    DBGConsultaCD_DEGP: TdxDBGridMaskColumn;
    PNLINFADCAD: TPanel;
    DBINFADCAD: TdxDBMemo;
    SQLFKEdicao: TIBSQL;
    CadastroCD_LOC_NO: TIBStringField;
    CadastroCD_UF: TIBStringField;
    CadastroCT_UF: TIBStringField;
    CadastroTDSC: TIBStringField;
    CadastroLOG_PRN_LGEV: TIBStringField;
    CadastroLOG_PRN_IP: TIBStringField;
    CadastroLOG_PRN_HOST: TIBStringField;
    DBGConsultaCT_UF: TdxDBGridMaskColumn;
    CadastroCD_DEGP: TIBStringField;
    CadastroCD_CNPJ: TIBStringField;
    DBGConsultaTPCO: TdxDBGridMaskColumn;
    SIEstoque: TSpeedItem;
    rom_iteCOL_ID: TIntegerField;
    rom_iteCOL_NO: TIBStringField;
    rom_iteGRP_ID: TIntegerField;
    rom_iteGRP_NO: TIBStringField;
    rom_iteCAT_ID: TIntegerField;
    rom_iteCAT_NO: TIBStringField;
    rom_iteXPAIS: TIBStringField;
    rom_iteFPAIS: TIBStringField;
    rom_iteIDSK: TLargeintField;
    rom_iteXPAIS_ABREV: TIBStringField;
    rom_iteIP: TIBStringField;
    rom_iteHOST: TIBStringField;
    CAD_PRO_IMG_CDN: TIBQuery;
    CAD_PRO_IMG_CDNIMG_ID: TLargeintField;
    CAD_PRO_IMG_CDNIMG_PAD: TBlobField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP1: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS1: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP2: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS2: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP3: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS3: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP4: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS4: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP5: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS5: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP6: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS6: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP7: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS7: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP8: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS8: TIBStringField;
    DTSCAD_PRO_IMG_CDN: TDataSource;
    PNLAmostras: TPanel;
    PCAmostras: TdxPageControl;
    TSIMG_PAD: TdxTabSheet;
    EDIMG_PAD: TdxEdit;
    PNLIMG_PAD: TPanel;
    IMG_PAD: TImage;
    TSILA: TdxTabSheet;
    PNLILA_BMP: TPanel;
    BILA_BMP1: TBevel;
    BILA_BMP2: TBevel;
    BILA_BMP3: TBevel;
    BILA_BMP4: TBevel;
    BILA_BMP5: TBevel;
    BILA_BMP6: TBevel;
    BILA_BMP7: TBevel;
    BILA_BMP8: TBevel;
    DBILA_BMP1: TDBImage;
    DBILA_BMP2: TDBImage;
    DBILA_BMP3: TDBImage;
    DBILA_BMP4: TDBImage;
    DBILA_BMP5: TDBImage;
    DBILA_BMP6: TDBImage;
    DBILA_BMP7: TDBImage;
    DBILA_BMP8: TDBImage;
    rom_iteVTSP: TIBBCDField;
    DBGFKConsultaVTSP: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siAROClick(Sender: TObject);
    procedure cadastroAfterOpen(DataSet: TDataSet);
    procedure siPSQClick(Sender: TObject);
    procedure siCROClick(Sender: TObject);
    procedure SIROMClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SIFINClick(Sender: TObject);
    procedure dtscadastroDataChange(Sender: TObject; Field: TField);
    procedure siINFClick(Sender: TObject);
    procedure DBGFKConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSCadastroStateChange(Sender: TObject);
    procedure CadastroBeforeScroll(DataSet: TDataSet);
    procedure dtsrom_iteDataChange(Sender: TObject; Field: TField);
    procedure SINovoClick(Sender: TObject);
    procedure SIEXPClick(Sender: TObject);
    procedure siCLIClick(Sender: TObject);
    procedure siRELClick(Sender: TObject);
    procedure SIFCPClick(Sender: TObject);
    procedure CadastroBeforeOpen(DataSet: TDataSet);
    procedure CadastroAfterScroll(DataSet: TDataSet);
    procedure rom_iteAfterScroll(DataSet: TDataSet);
    procedure rom_iteAfterOpen(DataSet: TDataSet);
    procedure SIEstoqueClick(Sender: TObject);
    procedure IMG_PADClick(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    APED_EDI_AFC,
    APED_EDI_PFC,
    APED_EDI_CPD,
    APED_EDI_CBX: Boolean;

    procedure baixa_carteira;
    procedure baixa_bancario;
    procedure CANCELA_CAIXA;
  public
    { Public declarations }
  end;

var
  frmctr_ped : Tfrmctr_ped;

implementation

uses uPrincipal,  pven_ped, ppesquisa,
     pven_rom, pctr_ped_bai, bDados, uFrmLogin, pcad_cli_inf,
  pctr_ped_sep, pcad_cli_edi, prelatorio_geral, qFicha_Tecnica,
  pcad_pro, pIMG_PAD_INF;

{$R *.dfm}

procedure Tfrmctr_ped.FormCreate(Sender: TObject);
begin
  inherited;
  { Amostras }
  PCAmostras.ActivePageIndex := 0;

  { Totalizadores }
  dbgconsulta.ShowSummaryFooter := (frmprincipal.ACESSO(RECUsuarios.ID,'USU_AUTO','Vendas','Pedidos','Totalizadores',false));

  { Permissões }
  APED_EDI_AFC := (frmprincipal.ACESSO(RECUsuarios.ID,'USU_AUTO','Vendas','Pedidos','Alterar Antes do Fechamento',False));
  APED_EDI_PFC := (frmprincipal.ACESSO(RECUsuarios.ID,'USU_AUTO','Vendas','Pedidos','Alterar Após o Fechamento'  ,False));
  APED_EDI_CPD := (frmprincipal.ACESSO(RECUsuarios.ID,'USU_AUTO','Vendas','Pedidos','Cancelar'                   ,False));
  APED_EDI_CBX := (frmprincipal.ACESSO(RECUsuarios.ID,'USU_AUTO','Vendas','Pedidos','Cancelar Baixa'             ,False));

  { Expedição }
  if not FrmPrincipal.Acesso(RECUsuarios.ID,'USU_AUTO','Vendas','Pedidos','Separar',false) then
  begin
    SIEXP.Enabled := False;
    SIEXP.Tag     := 1;
  end;

  { Romaneios }
  if not FrmPrincipal.Acesso(RECUsuarios.ID,'USU_AUTO','Vendas','Romaneios','Incluir',false) then
  begin
    SIROM.Enabled := False;
    SIROM.Tag     := 1;
  end;

  { Finalizar }
  if not FrmPrincipal.Acesso(RECUsuarios.ID,'USU_AUTO','Vendas','Pedidos','Baixar',false) then
  begin
    SIFIN.Enabled := False;
    SIFIN.Tag     := 1;
  end;

  RECDefault.Event       := 'CTR_PED'; { Eventos }
  RECDefault.FrmPosition := poDefault; { Abertura Controlada  }
  RECDefault.WorkArea    := True;      { Toda Tela do Windows }
  RECDefault.MainArea    := True;      { Toda Tela MainForm + Exclusão Botões }

  with Cadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.* FROM ' + oREPZero('VW_PED_VEN_CAB','_',RECParametros.Id,3) + ' AS PK');
    SQL.Add('WHERE  PK.IDEP = ''' + RECParametros.Id + '''');

    if RECUsuarios.Grupo = 'VEN' then
    SQL.Add('AND PK.IDCV = '''+RECUsuarios.Id+'''');

    SQL.Add('AND     (PK.DTPK BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) OR');
    SQL.Add('         PK.DTST BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) OR');
    SQL.Add('         PK.DTSP BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) OR');
    SQL.Add('         PK.DTRO BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) OR');
    SQL.Add('         PK.DTNF BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) OR');
    SQL.Add('         PK.DTBX BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) OR');
    SQL.Add('         PK.CDST = 15 OR PK.CDST = 16 OR PK.CDST = 116 OR PK.CDST = 149)');

    SQL.Add('ORDER BY PK.DTCA DESC');
    Prepare;
    
    Open;
  end;
end;

procedure Tfrmctr_ped.FormDestroy(Sender: TObject);
begin
  inherited;
  frmctr_ped := Nil;
end;

procedure Tfrmctr_ped.CANCELA_CAIXA;
var
  doct,
  tipo: String;
  valo: Double;
  conc,
  ctsr,
  cdcx: Variant;
begin
  tipo := CadastroSTCO.AsString;
  conc := IntToStr(CadastroTPCO.AsInteger);
  cdcx := IntToStr(CadastroCDCX.AsInteger);

  if cdcx = 0 then
     Exit;

  with SQLFKEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAI_TSR');
    SQL.Add('WHERE  CAI_DESC = ''' + tipo + '''');
    ExecQuery;
    if Eof then
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAI_TSR');
      SQL.Add('WHERE  CAI_DESC = ''CAIXA INICIAL''');
      ExecQuery;
    end;
    ctsr := fields[0].AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_COB');
    SQL.Add('WHERE  VEN_TIPO = ''' + tipo +'''');
    ExecQuery;
    doct := conc + oStrZero(Fields[0].AsInteger,19);

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM '+SLPrincipal.Values['fin_rec_car_bai']);
    SQL.Add('WHERE  FIN_CDBX = ''' + IntToStr(CadastroCDBX.AsInteger) + '''');
    ExecQuery;

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM '+SLPrincipal.Values['fin_rec_ban_bai']);
    SQL.Add('WHERE  FIN_CDBX = ''' + IntToStr(CadastroCDBX.AsInteger) + '''');
    ExecQuery;

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM CAI_MOV');
    SQL.Add('WHERE  CAI_CCAB = ''' + cdcx + '''');
    SQL.Add('AND    CAI_DESC = ''' + tipo + '''');
    SQL.Add('AND    CAI_CONC = ''' + conc + '''');
    ExecQuery;

    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(FIN_VALO) FROM ' + SLPrincipal.Values[IFThen(Pos(LeftStr(CadastroSTCO.AsString,3),'BANBOLDUP') > 0,'fin_rec_ban_bai','fin_rec_car_bai')]);
    SQL.Add('WHERE  FIN_CDCX = ''' + cdcx + '''');
    SQL.Add('AND    FIN_TIPO = ''' + tipo + '''');
    SQL.Add('AND    FIN_CONC = ''' + conc + '''');
    ExecQuery;
    valo := Fields[0].AsFloat;

    if valo <> 0 then
    begin
      SPEdicao.Close;
      SPEdicao.StoredProcName := 'SP_CAI_MOV';
      SPEdicao.Prepare;
      SPEdicao.ParamByName('ID').Value   := 0;
      SPEdicao.ParamByName('CCAB').Value := cdcx;
      SPEdicao.ParamByName('CTSR').Value := ctsr;
      SPEdicao.ParamByName('CDBX').Value := 0;
      SPEdicao.ParamByName('CONC').Value := conc;
      SPEdicao.ParamByName('DESC').Value := tipo;
      SPEdicao.ParamByName('DOCT').Value := doct;
      SPEdicao.ParamByName('DCAD').Value := CadastroDTPK.AsDateTime;
      SPEdicao.ParamByName('HCAD').Value := time;
      SPEdicao.ParamByName('SANT').Value := 0;
      SPEdicao.ParamByName('CRED').Value := valo;
      SPEdicao.ParamByName('DEBI').Value := 0;
      SPEdicao.ParamByName('SATU').Value := 0;
      SPEdicao.ParamByName('BCON').Value := 0;
      SPEdicao.ParamByName('DCON').Value := '';
      SPEdicao.ExecProc;
    end;
  end;
  
  with SQLEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(CAI_CRED),SUM(CAI_DEBI),SUM(CAI_CRED-CAI_DEBI) FROM CAI_MOV');
    SQL.Add('WHERE  CAI_CCAB = ''' + cdcx + '''');
    ExecQuery;
  end;

  with SQLFKEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CAI_LAF');
    SQL.Add('SET    CAI_CRED = '''+ oStrTran(SQLEdicao.Fields[0].AsString,',','.') + ''',');
    SQL.Add('       CAI_DEBI = '''+ oStrTran(SQLEdicao.Fields[1].AsString,',','.') + ''',');
    SQL.Add('       CAI_SATU = '''+ oStrTran(SQLEdicao.Fields[2].AsString,',','.') + '''' );
    SQL.Add('WHERE  ID       = '''+ cdcx +'''');
    ExecQuery;
  end;
end;

procedure Tfrmctr_ped.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGConsultaDEST.Index] = 'CANCELADO' then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end else
    if Pos('BAI',ANode.Values[DBGConsultaDEST.Index]) > 0 then
    begin
      AColor      := clBtnFace;
      AFont.Color := clBlack;
    end else
    if Pos(LeftStr(ANode.Values[DBGConsultaSTPD.Index],3),'DEVABA') > 0 then
    begin
      AColor      := $0080FFFF; //$00E8FFE8;
      AFont.Color := clBlack;
    end else
    if Pos('AGU',ANode.Values[DBGConsultaDEST.Index]) > 0 then
    begin
      AColor      := $00002FEC;
      AFont.Color := clWhite;
    end else
    if Pos('FIN',ANode.Values[DBGConsultaDEST.Index]) > 0 then
    begin
      AColor      := clBtnFace;
      AFont.Color := clBlack;
    end else
    begin
      if Pos('FAT',ANode.Values[DBGConsultaDEST.Index]) > 0 then
      begin
        AColor      := $00C4FFC4;
        AFont.Color := clBlack;
      end else
      if Pos('PAG',ANode.Values[DBGConsultaDEST.Index]) > 0 then
      begin
        AColor      := $00B3FFB3;
        AFont.Color := clBlack;
      end else
      if Pos('SEP',ANode.Values[DBGConsultaDEST.Index]) > 0 then
      begin
        AColor      := clBlack;
        AFont.Color := clWhite;
      end;

      if (AColumn = DBGConsultaDEPK) or (AColumn = DBGConsultaDTPK) or (AColumn = DBGConsultaHTPK) or (AColumn = DBGConsultaSTPD) then
      begin
        AColor      := clGray;
        AFont.Color := clWhite;
      end;

      if ((AColumn = DBGConsultaCDNF) or (AColumn = DBGConsultaDTNF)) and (ANode.Values[DBGConsultaCDNF.Index] > 0) then
      begin
        AColor      := clGray;
        AFont.Color := clWhite;
        AFont.Style := [fsBold];
      end;

      if (AColumn = DBGConsultaVFRT) and (ANode.Values[DBGConsultaVFRT.Index] > 0) then
      begin
        AColor      := clInfoBk;
        AFont.Color := clBlack;
        AFont.Style := [fsBold];
      end;
    end;

    if (AColumn = DBGConsultaPDSC) or (AColumn = DBGConsultaVDSC) then
    begin
      AColor      := clBtnFace;
      AFont.Color := clWindowText;
      AFont.Style := [];
    end;

    if (AColumn = DBGConsultaVDSC) and (ANode.Values[DBGConsultaVDSC.Index] > 0) then
    begin
      AColor      := clInfoBk;
      AFont.Style := [fsBold];
    end;

    if AColumn = DBGConsultaTSDE then
    begin
      AColor      := $00FCF4ED;
      AFont.Color := clBlack;
      AFont.Style := [];
    end;

    if AColumn = DBGConsultaTCDE then
    begin
      AColor      := $00C7911F;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;

    if (AColumn = DBGConsultaSTCO) or (AColumn = DBGConsultaRECO) or (AColumn = DBGConsultaDEPG) then
    begin
    end;

    if (AColumn = DBGConsultaRECO) and (ANode.Values[DBGConsultaTPCO.Index] > 1) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;

    if (AColumn = DBGConsultaDECT) or (AColumn = DBGConsultaCT_UF) then
    begin
      AColor      := clBtnFace;
      AFont.Color := clWindowText;
      AFont.Style := [];
    end;
  end;
end;

procedure Tfrmctr_ped.SINovoClick(Sender: TObject);
begin
  if Assigned(FRMVEN_PED) then FRMVEN_PED.BringToFront else
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   ID,CAI_DECX,CAI_DABR,CAI_DFEC FROM CAI_LAF');
      SQL.Add('WHERE    CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('ORDER BY CAI_DABR DESC');
      Open;

      if strtodate(SLPrincipal.Values['data_caixa']) > fields[2].AsDateTime  then
      raise exception.Create('Caixa não aberto !');

      if not fields[3].IsNull then
      raise exception.Create('Caixa já fechado !');
    end;

    SIARO.Tag := 0;
    uFrmCreate(Self,Tfrmven_ped,frmven_ped);
  end;
end;

procedure Tfrmctr_ped.siAROClick(Sender: TObject);
begin
  if Assigned(FRMVEN_PED) then FRMVEN_PED.BringToFront else
  begin
    SIARO.Tag := 1;
    uFrmCreate(Self,Tfrmven_ped,frmven_ped);
  end;
end;

procedure Tfrmctr_ped.siPSQClick(Sender: TObject);
begin
  if not Assigned(FrmPesquisa) then
  try
    FrmPesquisa := TFrmPesquisa.Create(Nil);
    FrmPesquisa.Tag := 97;
    FrmPesquisa.ShowModal;
  finally
    try
      if FrmPesquisa.Editado then
      with Cadastro do
      begin
        oCTransact(TConsulta);
        oOTransact(TConsulta);

        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.* FROM '   + oREPZero('VW_PED_VEN_CAB','_',RECParametros.Id,3) + ' AS PK');
        SQL.Add('WHERE  PK.IDEP = ''' + RECParametros.Id + '''');

        if RECUsuarios.Grupo = 'VEN' then
        SQL.Add('AND PK.IDCV = ''' + RECUsuarios.Id + '''');

        if (FrmPesquisa.EDTXT.Text <> EmptyStr) and (FrmPesquisa.cField <> EmptyStr) then
        begin
          if Pos(FrmPesquisa.cField,'CP.SKUCP.ARTIGOCP.DECP') > 0 then
          begin
            SQL.Add('AND EXISTS (SELECT FK.ID');
            SQL.Add('            FROM   PED_VEN_ITE AS FK');
            SQL.Add('            JOIN   CAD_PRO     AS CP ON (CP.ID = FK.IDCP)');
            SQL.Add('            WHERE  FK.IDEP = PK.IDEP');
            SQL.Add('            AND    FK.IDPK = PK.IDPK');
          end else
          if Pos(FrmPesquisa.cField,'CP.CF_SKUCP.CF_NO') > 0 then
          begin
            SQL.Add('AND EXISTS (SELECT FK.ID');
            SQL.Add('            FROM   PED_VEN_ITE AS FK');
            SQL.Add('            JOIN   CAD_PRO     AS CP ON (CP.ID = FK.IDCP)');
            SQL.Add('            WHERE  FK.IDEP = PK.IDEP');
            SQL.Add('            AND    FK.IDPK = PK.IDPK');
          end;

          SQL.Add('AND ' + FrmPesquisa.cField + ' ' + FrmPesquisa.cWhere + ' ''' + FrmPesquisa.EDTXT.Text + IFThen(FrmPesquisa.cWhere = 'LIKE','%''',''''));
          SQL.Add(IFThen(Pos(FrmPesquisa.cField,'FK.CTNRCP.SKUCP.ARTIGOCP.DECPCP.CF_SKUCP.CF_NO') > 0,')',''));
        end;
        
        if (FrmPesquisa.cData <> EmptyStr) and (FrmPesquisa.dxDT1.Date > 0) and (FrmPesquisa.dxDT2.Date > 0) then
        SQL.Add('AND ' + FrmPesquisa.cData + ' BETWEEN ''' + FormatDateTime('mm/dd/yy',FrmPesquisa.dxDT1.Date) +  ''' AND ''' + FormatDateTime('mm/dd/yy',FrmPesquisa.dxDT2.Date) + '''');

        SQL.Add('ORDER BY PK.DTCA DESC');
        Open;

        APSQ_PED_VEN := FrmPesquisa.cbCAMPO.Text;

//        showmessage(FrmPesquisa.cField + #13 + FrmPesquisa.cWhere + #13 + FrmPesquisa.EDTXT.Text + #13  + IFThen(FrmPesquisa.cWhere = 'LIKE','%''','''') + #13 + FrmPesquisa.cData);
      end;
    finally
      FreeAndNil(FrmPesquisa);
    end;
  end;

  DBGConsulta.SetFocus;
  DBGConsultaDEPK.Field.FocusControl;
end;

procedure Tfrmctr_ped.SIEstoqueClick(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmcad_pro,frmcad_pro);
end;

procedure Tfrmctr_ped.siCROClick(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
  if CadastroCDBX.AsInteger = 0 then
  begin
    if CadastroCDNF.AsInteger > 0 then
    raise exception.Create('Pedido já faturado !'+#13+'Nota Fiscal No '+CadastroCDNF.AsString);

    if CadastroCDRO.AsInteger > 0 then
    raise exception.Create('Pedido já possui romaneio emitido !'+#13+'Romaneio No '+CadastroCDRO.AsString);

    if (CadastroQTSP.AsFloat > 0) and (CadastroCDNF.AsInteger = 0) then
    raise exception.Create('Pedido já está em processo de separação !'+#13+'Separador '+CadastroDESP.AsString);

    if oYesNo(handle,'Cancelar Pedido No.: '+cadastroID.AsString+' ?') = mrno then
    abort;

    ClickedOK := InputQuery('Cancelamento de Pedido', 'Motivo', NewString);
    if not ClickedOK then
       Abort;

    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_RES');
      SQL.Add('WHERE  IDEP = ''' + CadastroIDEP.AsString + '''');
      SQL.Add('AND    IDPK = ''' + CadastroIDPK.AsString + '''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_SEP');
      SQL.Add('WHERE  IDEP = ''' + CadastroIDEP.AsString + '''');
      SQL.Add('AND    IDPK = ''' + CadastroIDPK.AsString + '''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_EST');
      SQL.Add('WHERE  IDEP = ''' + CadastroIDEP.AsString + '''');
      SQL.Add('AND    IDPK = ''' + CadastroIDPK.AsString + '''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['rom_cab']);
      SQL.Add('WHERE  ID = '''+CadastroCDRO.AsString+'''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['rom_ite']);
      SQL.Add('WHERE  ROM_CCAB = '''+CadastroCDRO.AsString+'''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('SET    ROM_STFI = ''CANCELADO''');
      SQL.Add('WHERE  ID = '''+CadastroID.AsString+'''');
      ExecQuery;
    end;

    oCTransact(TEdicao);
    frmprincipal.Log_Eve('Vendas',LOWERCASE(CadastroSTPD.AsString),'Cancelamento',CadastroDEPK.AsString,CadastroDEPK.AsString,CadastroIDCD.AsString+' - '+LOWERCASE(CadastroDECD.AsString),'','');
  end else
  begin
    if oYesNo(handle,'Cancelar baixa financeira do pedido No.: '+cadastroID.AsString+' ?') = mrno then
       Abort;

    oOTransact(TEdicao);   
    CANCELA_CAIXA;
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('SET    ROM_STFI = ''PENDENTE'',');
      SQL.Add('       ROM_CDBX = NULL,');
      SQL.Add('       ROM_DBAI = NULL ');
      SQL.Add('WHERE  ROM_CDBX = '''+CadastroCDBX.AsString+'''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['rom_cab']);
      SQL.Add('SET    ROM_STFI = ''PENDENTE'',');
      SQL.Add('       ROM_DBAI = NULL,');
      SQL.Add('       ROM_CDBX = NULL');
      SQL.Add('WHERE  ROM_CDBX = '''+CadastroCDBX.AsString+'''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_RES');
      SQL.Add('WHERE  IDEP = ''' + CadastroIDEP.AsString + '''');
      SQL.Add('AND    IDPK = ''' + CadastroIDPK.AsString + '''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_SEP');
      SQL.Add('WHERE  IDEP = ''' + CadastroIDEP.AsString + '''');
      SQL.Add('AND    IDPK = ''' + CadastroIDPK.AsString + '''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_EST');
      SQL.Add('WHERE  IDEP = ''' + CadastroIDEP.AsString + '''');
      SQL.Add('AND    IDPK = ''' + CadastroIDPK.AsString + '''');
      ExecQuery;

      rom_ite.First;
      while not rom_ite.Eof do
      begin
        SPEdicao.Close;
        SPEdicao.StoredProcName := 'SP_CAD_PRO_SEP';
        SPEdicao.Prepare;

        SPEdicao.ParamByName('est').Value  := oREPZero('CAD_PRO_SEP','_',RECParametros.Id,3);
        SPEdicao.ParamByName('id').Value   := 0;
        SPEdicao.ParamByName('cdep').Value := RECParametros.Id;
        SPEdicao.ParamByName('cdro').Value := 0;
        SPEdicao.ParamByName('cdpd').Value := cadastroID.AsInteger;
        SPEdicao.ParamByName('cdbx').Value := 0;
        SPEdicao.ParamByName('cpro').Value := rom_iteIDCP.AsInteger;
        SPEdicao.ParamByName('cusu').Value := CadastroIDCV.AsInteger;
        SPEdicao.ParamByName('dusu').Value := CadastroIDCV.AsString;
        SPEdicao.ParamByName('cfav').Value := CadastroIDCD.AsInteger;
        SPEdicao.ParamByName('dfav').Value := CadastroDECD.AsString;
        SPEdicao.ParamByName('dcad').Value := strtodate(SLPrincipal.Values['data_sistema']);
        SPEdicao.ParamByName('docu').Value := copy(CadastroDEPK.AsString,1,10);
        SPEdicao.ParamByName('flag').Value := 'R';
        SPEdicao.ParamByName('cdet').Value := EmptyStr;
        SPEdicao.ParamByName('dsep').Value := rom_iteDESP.AsString;
        SPEdicao.ParamByName('debi').Value := 0;
        SPEdicao.ParamByName('cred').Value := rom_iteQTDE.AsFloat;
        SPEdicao.ParamByName('dmap').Value := '';
        SPEdicao.ParamByName('lote').Value := '';
        SPEdicao.ParamByName('ctnr').Value := '';
        SPEdicao.ExecProc;

        rom_ite.Next;
      end;

      oCTransact(TEdicao);
      frmprincipal.Log_Eve('Vendas',LOWERCASE(CadastroSTPD.AsString),'Cancelamento de Baixa',CadastroDEPK.AsString,CadastroDEPK.AsString,CadastroIDCD.AsString+' - '+LOWERCASE(CadastroDECD.AsString),'','');
    end;
  end;

  ExecuteEvent;
end;

procedure Tfrmctr_ped.SIEXPClick(Sender: TObject);
begin
  uFrmCreate(Self,Tfrmctr_ped_sep,frmctr_ped_sep);
end;

procedure Tfrmctr_ped.SIROMClick(Sender: TObject);
begin
  if CadastroCDBX.AsInteger > 0 then
  raise exception.Create('Pedido já finalizado !');

  if (CadastroDEST.AsString = 'AGUARDANDO LIBERAÇÃO') or (CadastroDEST.AsString = 'AGUARDANDO CRÉDITO') or (CadastroDEST.AsString = 'PROTESTADO') or
     (CadastroDEST.AsString = 'NÃO PAGO')             or (CadastroDEST.AsString = 'SUSPENSO')   then
  raise exception.Create('Não é possível gerar romaneio !'+#13+'Situação: '+CadastroDEST.AsString);

  if CadastroCDNF.AsInteger > 0 then
  raise exception.Create('Pedido já faturado !'+#13+'Nota Fiscal No '+CadastroCDNF.AsString);

  if CadastroCDRO.AsInteger > 0 then
  raise exception.Create('Pedido já possui romaneio gerado !'+#13+'Romaneio No '+CadastroCDRO.AsString);

  if oYesNo(handle,'Gerar Romaneio ?'+#13+#13+
                   'Pedido '+cadastroID.AsString+#13+
                   CadastroDECD.AsString) = mrNo then
     Abort;

  uFrmCreate(Self,Tfrmven_rom,frmven_rom);
end;

procedure Tfrmctr_ped.SIFINClick(Sender: TObject);
begin
  if Assigned(FRMCTR_PED_BAI) then FRMCTR_PED_BAI.BringToFront else
  begin
    if CadastroCDBX.AsInteger > 0 then
    raise exception.Create('Pedido já finalizado !');

    if (CadastroDEST.AsString = 'AGUARDANDO LIBERAÇÃO') or (CadastroDEST.AsString = 'AGUARDANDO CRÉDITO') or (CadastroDEST.AsString = 'PROTESTADO') or
       (CadastroDEST.AsString = 'NÃO PAGO')             or (CadastroDEST.AsString = 'SUSPENSO')   then
    raise exception.Create('Não é possível finalizar pedido !'+#13+'Situação: '+CadastroDEST.AsString);

    if (CadastroCDRO.AsInteger > 0) and (CadastroCDNF.AsInteger = 0) and (CadastroTPCO.AsInteger > 0) then
    raise exception.Create('Não é possível finalizar pedido !'+#13+'Pedido possui romaneio gerado, mas sem nota fiscal emitida.');

    if (CadastroCDNF.AsInteger = 0) and (CadastroSTCO.AsString = 'BANCÁRIO') and (CadastroSTPD.AsString <> 'DEVOLUÇÃO')  and (CadastroSTPD.AsString <> 'ABATIMENTO') then
    raise exception.Create('Não é possível finalizar pedido !'+#13+'Para pedidos do tipo bancário é obrigatório a emissão de nota fiscal.');

    if (CadastroDEST.AsString = 'SEPARAÇÃO') and (CadastroTPCO.AsInteger > 0) then
    raise exception.Create('Não é possível finalizar pedido !'+#13+'Pedido em processo de separação.');

    with consulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT VEN_QTSP FROM TAB_PED');
      SQL.Add('WHERE  VEN_TIPO = '''+CadastroSTPD.AsString+'''');
      Open;
    end;

    if (consulta.Fields[0].AsString = '1') and (CadastroQTSP.AsFloat = 0) then
    raise exception.Create('Pedido aguardando separação !'+#13+'Não é possível finalizar.');

    uFrmCreate(Self,Tfrmctr_ped_bai, frmctr_ped_bai);

    frmctr_ped_bai.tab_pag.Close;
    frmctr_ped_bai.tab_pag.Params[0].Value := CadastroCDPG.AsInteger;
    frmctr_ped_bai.tab_pag.Open;

    with consulta do
    begin
      Close;
      SQL.Clear;
      if CadastroCDCX.AsInteger > 0 then
      begin
        SQL.Add('SELECT CAI_DABR,CAI_DFEC,ID FROM CAI_LAF');
        SQL.Add('WHERE  ID = '''+CadastroCDCX.AsString+'''');
      end
      else
      begin
        SQL.Add('SELECT CAI_DABR,CAI_DFEC,ID FROM CAI_LAF');
        SQL.Add('WHERE  CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
        if CadastroCDNF.AsInteger > 0 then
        SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',CadastroDTNF.AsDateTime)+'''') else
        SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',CadastroDTPK.AsDateTime)+'''');
      end;
      Open;
    end;

    frmctr_ped_bai.eddrom.Date := consulta.Fields[0].AsDateTime;
    frmctr_ped_bai.edcdcx.Text := consulta.Fields[2].AsString;

    if CadastroCDNF.AsInteger > 0 then
    frmctr_ped_bai.edDBAI.Date := CadastroDTNF.AsDateTime;

    if frmctr_ped_bai.eddbai.Date <= 0 then
    frmctr_ped_bai.eddbai.Date := strtodate(SLPrincipal.Values['data_sistema']);

    if frmctr_ped_bai.edDROM.Date <> frmctr_ped_bai.edDBAI.Date then
    with consulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CAI_DABR,CAI_DFEC,ID FROM CAI_LAF');
      SQL.Add('WHERE  CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',frmctr_ped_bai.edDBAI.Date)+'''');
      Open;

      if not fields[0].IsNull then
      frmctr_ped_bai.edcdcx.Text := fields[2].AsString;
    end;

    if LeftStr(CadastroRECO.AsString,1) = 'B' then
    BAIXA_BANCARIO;

    if (LeftStr(CadastroRECO.AsString,1) = 'C') or (CadastroTPCO.AsInteger > 1) then
    BAIXA_CARTEIRA;

    frmctr_ped_bai.Show;
  end;  
end;

procedure Tfrmctr_ped.siRELClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.CDPD                 := cadastroID.AsString;
    frmrelatorio_geral.CDRO                 := CadastroCDRO.AsString;
    frmrelatorio_geral.CDBX                 := CadastroCDBX.AsString;
    frmrelatorio_geral.CDNF                 := CadastroCDNF.AsString;
    frmrelatorio_geral.tsVEN_PED.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsVEN_PED;
    frmrelatorio_geral.cbVEN_PED_TREL.Text  := frmprincipal.parametrosPAR_PREL.AsString;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
  end;
end;

procedure Tfrmctr_ped.SIFCPClick(Sender: TObject);
var
  RECRelatorios: TRECRelatorios;
begin
  if CadastroID.AsInteger = 0 then
     Abort;
     
  frmprincipal.FazPrnAtualVirarDefault('Ficha Técnica');

  Initialize(RECRelatorios);
  FillChar(RECRelatorios,SizeOf(RECRelatorios),0);

  RECRelatorios.PrintTAG := 0;
  RECRelatorios.Handle   := Self.Handle;

  RECRelatorios.PEC1CodigoText    := 'TODOS';
  RECRelatorios.PEC2CodigoText    := 'TODOS';
  RECRelatorios.IEC1ConsultaField := 'PK.ROM_DERO';
  RECRelatorios.PEC1ConsultaText  := CadastroDEPK.AsString;
  RECRelatorios.IEC1ConsultaWhere := '=';
  RECRelatorios.PEC2ConsultaText  := 'TODOS';
  RECRelatorios.PEC3ConsultaText  := 'TODOS';
  RECRelatorios.PEC4ConsultaText  := 'TODOS';
  RECRelatorios.IEDataField       := '';

  if Assigned(qrpFicha_Tecnica) then qrpFicha_Tecnica.BringToFront else
  begin
    qrpFicha_Tecnica := TqrpFicha_Tecnica.Create(Self,RECRelatorios);
    qrpFicha_Tecnica.WinControlFormCreate(qrpFicha_Tecnica);
  end;
end;

procedure Tfrmctr_ped.BAIXA_CARTEIRA;
var
  VDUP: double;
     i: word;
begin
  VDUP := IFThen(CadastroVNF.AsFloat  > 0,CadastroVNF.AsFloat ,
          IFThen(CadastroVTSP.AsFloat > 0,CadastroVTSP.AsFloat,CadastroTCDE.AsFloat) / CadastroTPCO.AsInteger);

  if Pos(LeftStr(CadastroSTPD.AsString,3),'ABADEV') > 0 then
  VDUP := VDUP * -1;

  frmctr_ped_bai.fin_rec.Append;
  frmctr_ped_bai.fin_recID.Value       := 0;
  frmctr_ped_bai.fin_recFIN_CDPD.Value := cadastroID.AsInteger;
  frmctr_ped_bai.fin_recFIN_PORT.Value := CadastroDEPK.AsString;
  frmctr_ped_bai.fin_recFIN_CTNR.Value := CadastroCTNR.AsString;
  frmctr_ped_bai.fin_recFIN_CDRO.Value := CadastroCDRO.AsInteger;
  frmctr_ped_bai.fin_recFIN_CDNF.Value := CadastroCDNF.AsInteger;
  frmctr_ped_bai.fin_recFIN_STDO.Value := CadastroRECO.AsString;
  frmctr_ped_bai.fin_recFIN_DROM.Value := CadastroDTPK.AsDateTime;
  frmctr_ped_bai.fin_recFIN_CCLI.Value := CadastroIDCD.AsInteger;
  frmctr_ped_bai.fin_recFIN_DCLI.Value := CadastroDECD.AsString;
  frmctr_ped_bai.fin_recFIN_CVEN.Value := CadastroIDCV.AsInteger;
  frmctr_ped_bai.fin_recFIN_CREP.Value := CadastroIDCR.AsInteger;
  frmctr_ped_bai.fin_recFIN_DCLI.Value := CadastroDECD.AsString;
  frmctr_ped_bai.fin_recFIN_STCO.Value := CadastroSTCO.AsString;
  frmctr_ped_bai.fin_recFIN_STPD.Value := CadastroSTPD.AsString;
  frmctr_ped_bai.fin_recFIN_CONC.Value := CadastroTPCO.AsInteger;
  frmctr_ped_bai.fin_recTPCO.Value     := CadastroTPCO.AsInteger;
  frmctr_ped_bai.fin_recRECO.Value     := CadastroRECO.AsString;
  frmctr_ped_bai.fin_recFIN_VEND.Value := CadastroIDCV.AsString;
  frmctr_ped_bai.fin_recFIN_DREP.Value := CadastroDECR.AsString;
  frmctr_ped_bai.fin_recFIN_DPRA.Value := cadastroDEPG.AsString;
  frmctr_ped_bai.fin_recFIN_DOCT.Value := IFThen(CadastroCDNF.AsInteger > 0,CadastroCDNF.AsString,CadastroDEPK.AsString);
  frmctr_ped_bai.fin_recFIN_VALO.Value := VDUP;
  frmctr_ped_bai.fin_recFIN_COBR.Value := 'C';
  frmctr_ped_bai.fin_rec.Post;

  with consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PAG_PARC,PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,PAG_D010 FROM TAB_PAG');
    SQL.Add('WHERE  ID = '''+CadastroCDPG.AsString+'''');
    Open;
  end;

  for i := 1 to consulta.Fields[0].AsInteger do
  begin
    frmctr_ped_bai.fin_rec_bai.Append;
    frmctr_ped_bai.fin_rec_baiFIN_TIPO.Value := IFThen(Pos(LeftStr(CadastroSTPD.AsString,3),'ABADEV') > 0,CadastroSTPD.AsString,CadastroSTCO.AsString);

    case i of
        1: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[1].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[1].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
           end;
        2: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[2].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[2].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
           end;
        3: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[3].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[3].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
           end;
        4: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[4].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[4].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
           end;
        5: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[5].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[5].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
           end;
        6: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[6].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[6].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
           end;
        7: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[7].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[7].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
           end;
        8: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[8].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[8].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
           end;
        9: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[9].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[9].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
           end;
       10: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[10].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[10].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
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
    Close;
    SQL.Clear;
    SQL.Add('SELECT NFE_TITU,NFE_DNFE,NFE_DVEN,NFE_VDUP FROM '+SLPrincipal.Values['nfe_dup']);
    SQL.Add('WHERE  NFE_CDNF = '''+CadastroCDNF.AsString+'''');
    Open;
  end;

  if consulta.Fields[0].IsNull then
  begin
    messageBox(handle,'Tipo de cobrança "BANCÁRIO" sem duplicatas emitidas !'+#13+'Você precisa alterar o tipo de cobrança para prosseguir.',PChar(caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  while not consulta.Eof do
  begin
    frmctr_ped_bai.fin_rec_bai.Append;
    frmctr_ped_bai.fin_rec_baiID.Value       := 0;
    frmctr_ped_bai.fin_rec_baiFIN_DOCT.Value := consulta.Fields[0].AsString;
    frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := consulta.Fields[2].AsDateTime;
    frmctr_ped_bai.fin_rec_baiFIN_TIPO.Value := 'DUPLICATA';
    frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := consulta.Fields[3].AsFloat;
    frmctr_ped_bai.fin_rec_bai.Post;
    consulta.Next;
  end;
  frmctr_ped_bai.fin_rec_bai.First;

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
    Close;
    SQL.Clear;
    if CadastroSTPD.AsString <> 'BENEFICIAMENTO' then
    begin
      SQL.Add('SELECT NFE_VNF FROM '+SLPrincipal.Values['nfe_cab']);
      SQL.Add('WHERE  NFE_CDNF = '''+CadastroCDNF.AsString+'''');
    end else
    begin
      SQL.Add('SELECT SUM(NFE_VNF) FROM '+SLPrincipal.Values['nfe_ite']);
      SQL.Add('WHERE  NFE_CDNF = '''+CadastroCDNF.AsString+'''');
      SQL.Add('AND    NFE_CFOP = ''5124''');
      SQL.Add('OR     NFE_CDNF = '''+CadastroCDNF.AsString+'''');
      SQL.Add('AND    NFE_CFOP = ''6124''');
      Open;
      
      if fields[0].AsFloat = 0 then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT SUM(NFE_VNF) FROM '+SLPrincipal.Values['nfe_ite']);
        SQL.Add('WHERE  NFE_CDNF = '''+CadastroCDNF.AsString+'''');
        SQL.Add('AND    NFE_CFOP = ''5125''');
        SQL.Add('OR     NFE_CDNF = '''+CadastroCDNF.AsString+'''');
        SQL.Add('AND    NFE_CFOP = ''5925''');
      end;
    end;
    Open;
  end;

  frmctr_ped_bai.fin_rec.Append;
  frmctr_ped_bai.fin_recID.Value       := 0;
  frmctr_ped_bai.fin_recFIN_CDPD.Value := cadastroID.AsInteger;
  frmctr_ped_bai.fin_recFIN_PORT.Value := CadastroDEPK.AsString;
  frmctr_ped_bai.fin_recFIN_CDRO.Value := CadastroCDRO.AsInteger;
  frmctr_ped_bai.fin_recFIN_CDNF.Value := CadastroCDNF.AsInteger;
  frmctr_ped_bai.fin_recFIN_STDO.Value := 'B '+CadastroTPCO.AsString;
  frmctr_ped_bai.fin_recFIN_DROM.Value := CadastroDTPK.AsDateTime;
  frmctr_ped_bai.fin_recFIN_CCLI.Value := CadastroIDCD.AsInteger;
  frmctr_ped_bai.fin_recFIN_DCLI.Value := CadastroDECD.AsString;
  frmctr_ped_bai.fin_recFIN_CVEN.Value := CadastroIDCV.AsInteger;
  frmctr_ped_bai.fin_recFIN_CREP.Value := CadastroIDCR.AsInteger;
  frmctr_ped_bai.fin_recFIN_DCLI.Value := CadastroDECD.AsString;
  frmctr_ped_bai.fin_recFIN_STCO.Value := CadastroSTCO.AsString;
  frmctr_ped_bai.fin_recFIN_STPD.Value := CadastroSTPD.AsString;
  frmctr_ped_bai.fin_recFIN_CONC.Value := CadastroTPCO.AsInteger;
  frmctr_ped_bai.fin_recFIN_VEND.Value := CadastroIDCV.AsString;
  frmctr_ped_bai.fin_recFIN_DREP.Value := CadastroDECR.AsString;
  frmctr_ped_bai.fin_recFIN_DPRA.Value := cadastroDEPG.AsString;
  frmctr_ped_bai.fin_recFIN_VALO.Value := consulta.Fields[0].AsFloat;
  frmctr_ped_bai.fin_recFIN_COBR.Value := 'B';
  frmctr_ped_bai.fin_recFIN_CTNR.Value := EmptyStr;
  frmctr_ped_bai.fin_recFIN_DOCT.Value := CadastroCDNF.AsString;
  frmctr_ped_bai.fin_rec.Post;
end;

procedure Tfrmctr_ped.dtscadastroDataChange(Sender: TObject;
  Field: TField);
var
  PosCount: Word;
begin
  if Cadastro.State = dsBrowse then
  begin
    DBGConsultaCD_DEGP.Visible   := (CadastroCD_DEGP.AsString <> EmptyStr);
    DBGConsulta.Bands[3].Visible := (DBGConsultaDECV.Visible) or (DBGConsultaDECR.Visible);

    siCRO.Enabled := (CadastroID.AsInteger > 0) and (CadastroREST.AsString <> 'C');
    if CadastroCDBX.AsInteger > 0 then
    siCRO.Enabled := APED_EDI_CBX else
    siCRO.Enabled := APED_EDI_CPD;

    siARO.Enabled := (CadastroID.AsInteger > 0) and (CadastroCDRO.AsInteger = 0  ) and (CadastroCDNF.AsInteger = 0) and (CadastroCDBX.AsInteger = 0) and (CadastroREST.AsString <> 'C');
    if (SIARO.Enabled) and (CadastroDTPK.AsDateTime <> RECParametros.DTSERVER) then
        SIARO.Enabled := APED_EDI_AFC;

    SIEXP.Enabled := (CadastroID.AsInteger > 0) and (SIEXP.Tag = 0) and (CadastroCDRO.AsInteger = 0) and (CadastroCDNF.AsInteger = 0) and (CadastroCDBX.AsInteger = 0) and (Pos(LeftStr(CadastroDEST.AsString,3),'ABADEVCAN') = 0);
    SIROM.Enabled := (CadastroID.AsInteger > 0) and (SIEXP.Tag = 0) and (CadastroCDRO.AsInteger = 0) and (CadastroCDNF.AsInteger = 0) and (CadastroCDBX.AsInteger = 0) and (Pos(LeftStr(CadastroDEST.AsString,3),'ABADEVCAN') = 0);
    SIFIN.Enabled := (CadastroID.AsInteger > 0) and (SIEXP.Tag = 0) and (Pos(LeftStr(CadastroDEST.AsString,3),'ABADEVCAN') = 0);
    siCLI.Enabled := (CadastroID.AsInteger > 0);

    if CadastroCDBX.AsInteger > 0 then
    begin
      SICRO.BtnCaption := 'Cancelar Baixa';
      SICRO.Hint       := 'Cancela o faturamento e as contas à receber';
    end else
    begin
      SICRO.BtnCaption := 'Cancelar';
      SICRO.Hint       := 'Cancelamento de Pedido';
    end;

    { Informações Adicionais }
              PosCount := oPosCount(''#$D'',CadastroINFADCAD.AsString);
    PNLINFADCAD.Height := IFThen((PosCount = 00) and (CadastroINFADCAD.AsString =  EmptyStr) ,00,
                          IFThen((PosCount = 00) and (CadastroINFADCAD.AsString <> EmptyStr) ,30,
                          IFThen((PosCount = 01),040,
                          IFThen((PosCount = 02),055,
                          IFThen((PosCount = 03),070,
                          IFThen((PosCount = 04),080,
                          IFThen((PosCount = 05),090,
                          IFThen((PosCount = 06),100,
                          IFThen((PosCount = 07),110,
                          IFThen((PosCount = 08),120,
                          IFThen((PosCount = 09),130,
                          IFThen((PosCount = 10),140,
                          IFThen((PosCount = 11),150,
                          IFThen((PosCount = 12),160,
                          IFThen((PosCount = 13),170,
                          IFThen((PosCount = 14),180,
                          IFThen((PosCount = 15),190,200)))))))))))))))));

    DBGConsulta.ApplyBestFit(DBGConsultaDEPK);
    DBGConsulta.ApplyBestFit(DBGConsultaDECV);
    DBGConsulta.ApplyBestFit(DBGConsultaDECR);

    DBGConsulta.ApplyBestFit(DBGConsultaSTPD);
    DBGConsulta.ApplyBestFit(DBGConsultaSTCO);
    DBGConsulta.ApplyBestFit(DBGConsultaDEPG);
    DBGConsulta.ApplyBestFit(DBGConsultaDEST);

    DBGConsulta.ApplyBestFit(DBGConsultaD_MFRT);
    DBGConsulta.ApplyBestFit(DBGConsultaVFRT  ); DBGConsultaVFRT.Width := DBGConsultaVFRT.Width + 10;

    DBGConsulta.ApplyBestFit(DBGConsultaVDSC); DBGConsultaVDSC.Width := DBGConsultaVDSC.Width + 10;
    DBGConsulta.ApplyBestFit(DBGConsultaTSDE); DBGConsultaTSDE.Width := DBGConsultaTSDE.Width + 10;
    DBGConsulta.ApplyBestFit(DBGConsultaTCDE); DBGConsultaTCDE.Width := DBGConsultaTCDE.Width + 10;
  end;  
end;

procedure Tfrmctr_ped.dtsrom_iteDataChange(Sender: TObject; Field: TField);
begin
  if rom_ite.State = dsBrowse then
  begin
    DBGFKConsulta.ApplyBestFit(DBGFKConsultaSKU );
    DBGFKConsulta.ApplyBestFit(DBGFKConsultaDGCP);
    DBGFKConsulta.ApplyBestFit(DBGFKConsultaDECP);

    DBGFKConsulta.ApplyBestFit(DBGFKConsultaVPRC_COM);
    DBGFKConsulta.ApplyBestFit(DBGFKConsultaVDSC);

    DBGFKConsulta.ApplyBestFit(DBGFKConsultaVPRC_COM); DBGFKConsultaVPRC_COM.Width := DBGFKConsultaVPRC_COM.Width + 5;

    DBGFKConsulta.ApplyBestFit(DBGFKConsultaVTSP); DBGFKConsultaVTSP.Width := DBGFKConsultaVTSP.Width + 10;
    DBGFKConsulta.ApplyBestFit(DBGFKConsultaVDSC); DBGFKConsultaVDSC.Width := DBGFKConsultaVDSC.Width + 5;
    DBGFKConsulta.ApplyBestFit(DBGFKConsultaTSDE); DBGFKConsultaTSDE.Width := DBGFKConsultaTSDE.Width + 5;
    DBGFKConsulta.ApplyBestFit(DBGFKConsultaTCDE); DBGFKConsultaTCDE.Width := DBGFKConsultaTCDE.Width + 5;
  end;  
end;

procedure Tfrmctr_ped.siCLIClick(Sender: TObject);
begin
  if CadastroId.AsInteger = 0 then
     oException(DBGConsulta,'Cliente não Selecionado !');

  frmcad_cli_edi     := TFrmcad_cli_edi.Create(Self);
  frmcad_cli_edi.Tag := 1;
  frmcad_cli_edi.IDCliente := CadastroIDCD.AsString;
  try frmcad_cli_edi.ShowModal;
  finally
    if frmcad_cli_edi.Editado then
       oRefresh(Cadastro);
    FreeAndNil(frmcad_cli_edi);
  end;
end;

procedure Tfrmctr_ped.siINFClick(Sender: TObject);
begin
  if cadastroID.AsInteger = 0 then
     abort;

    frmcad_cli_inf := tfrmcad_cli_inf.create(self);
    frmcad_cli_inf.gbinfo.Caption := 'Informaçãoes Resumidas - '+CadastroDECD.AsString;
    frmcad_cli_inf.gbinfo.Hint    := CadastroDECD.AsString;
    frmcad_cli_inf.gbinfo.Tag     := CadastroIDCD.AsInteger;

    frmcad_cli_inf.NewString := CadastroDEPK.AsString;
    frmcad_cli_inf.ShowModal;
end;

procedure Tfrmctr_ped.DBGFKConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Estoque }
    if AColumn = DBGFKConsultaEPE_QTDE then
    if ANode.Values[DBGFKConsultaEPE_QTDE.Index] < 0 then
    begin
      AColor      := $00002FEC;
      AFont.Color := clWhite;
    end else
    if ANode.Values[DBGFKConsultaEPE_QTDE.Index] = 0 then
    begin
      AColor      := clInfoBk;
      AFont.Color := clBlack;
    end;

    { Descontos }
    if (AColumn = DBGFKConsultaPDSC) or (AColumn = DBGFKConsultaVDSC) then
    begin
      AColor      := clBtnFace;
      AFont.Color := clWindowText;
      AFont.Style := [];
    end;

    { Expedição }
    if (AColumn = DBGFKConsultaQTSP) or (AColumn = DBGFKConsultaVTSP) or (AColumn = DBGFKConsultaDESP) or (AColumn = DBGFKConsultaDTSP) then
    if (ANode.Values[DBGFKConsultaQTSP.Index] > 0) and (ANode.Values[DBGFKConsultaQTSP.Index] <> ANode.Values[DBGFKConsultaQTDE.Index]) then
    begin
      AColor      := clInfoBk;
      AFont.Color := clWindowText;
    end;
  end;
end;

procedure Tfrmctr_ped.DTSCadastroStateChange(Sender: TObject);
begin
 { inherited;}
end;

procedure Tfrmctr_ped.CadastroBeforeOpen(DataSet: TDataSet);
begin
  { Vendedores }
  DBGConsulta.Bands[3].Visible := False;
  DBGConsultaDECV.Visible      := False;
  DBGConsultaDECR.Visible      := False;
  DBGConsultaDTBX.Visible      := False;
end;

procedure Tfrmctr_ped.CadastroBeforeScroll(DataSet: TDataSet);
begin
  DBGFKConsultaDGCP.Visible      := False; { Grade }
  DBGFKConsulta.Bands[3].Visible := False; { Expedição }
end;

procedure Tfrmctr_ped.cadastroAfterOpen(DataSet: TDataSet);
begin
  if rom_ite.State = dsInactive then
  begin
    rom_ite.Prepare;
    rom_ite.Open;
  end;

  DBGConsultaDEPK.Field.FocusControl;
//  DBGConsulta.SetFocus;
end;

procedure Tfrmctr_ped.CadastroAfterScroll(DataSet: TDataSet);
begin
  { Vendedores }
  if CadastroDECV.AsString <> RECUsuarios.Login then
  DBGConsultaDECV.Visible := True;

  { Representantes }
  if (CadastroIDCR.AsInteger <> RECParametros.IDCR_PAD) then
  DBGConsultaDECR.Visible := True;

  { Baixa }
  if CadastroDTBX.AsDateTime > 0 then
  DBGConsultaDTBX.Visible := True;
end;

procedure Tfrmctr_ped.rom_iteAfterScroll(DataSet: TDataSet);
begin
  { Grade }
  if rom_iteDGCP.AsString <> EmptyStr then
  DBGFKConsultaDGCP.Visible := True;

  { Expedição }
  if rom_iteQTSP.AsFloat > 0 then
  DBGFKConsulta.Bands[3].Visible := True;
end;

procedure Tfrmctr_ped.rom_iteAfterOpen(DataSet: TDataSet);
begin
  if CAD_PRO_IMG_CDN.State = dsInactive then
     CAD_PRO_IMG_CDN.Open;

  if rom_iteDGCP.AsString <> EmptyStr then
     DBGFKConsultaDGCP.Field.FocusControl else
     DBGFKConsultaDECP.Field.FocusControl;
end;

procedure Tfrmctr_ped.DBGConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: SISair.Click;
       vk_insert: SINovo.Click;
  end;
end;

procedure Tfrmctr_ped.DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject;
  Field: TField);
begin
  if CAD_PRO_IMG_CDN.State = dsBrowse then
  begin
    EDIMG_PAD.Text := _oLoadJPG(CAD_PRO_IMG_CDNIMG_ID,CAD_PRO_IMG_CDNIMG_PAD,IMG_PAD);

    DBILA_BMP1.Hint := CAD_PRO_IMG_CDND_ILA_INS1.AsString;
    DBILA_BMP2.Hint := CAD_PRO_IMG_CDND_ILA_INS2.AsString;
    DBILA_BMP3.Hint := CAD_PRO_IMG_CDND_ILA_INS3.AsString;
    DBILA_BMP4.Hint := CAD_PRO_IMG_CDND_ILA_INS4.AsString;
    DBILA_BMP5.Hint := CAD_PRO_IMG_CDND_ILA_INS5.AsString;
    DBILA_BMP6.Hint := CAD_PRO_IMG_CDND_ILA_INS6.AsString;
    DBILA_BMP7.Hint := CAD_PRO_IMG_CDND_ILA_INS7.AsString;
    DBILA_BMP8.Hint := CAD_PRO_IMG_CDND_ILA_INS8.AsString;

    BILA_BMP1.Hint  := DBILA_BMP1.Hint;
    BILA_BMP2.Hint  := DBILA_BMP2.Hint;
    BILA_BMP3.Hint  := DBILA_BMP3.Hint;
    BILA_BMP4.Hint  := DBILA_BMP4.Hint;
    BILA_BMP5.Hint  := DBILA_BMP5.Hint;
    BILA_BMP6.Hint  := DBILA_BMP6.Hint;
    BILA_BMP7.Hint  := DBILA_BMP7.Hint;
    BILA_BMP8.Hint  := DBILA_BMP8.Hint;
  end;  
end;

procedure Tfrmctr_ped.IMG_PADClick(Sender: TObject);
begin
  if Assigned(FRMIMG_PAD_INF) then FRMIMG_PAD_INF.BringToFront else
  begin
    FRMIMG_PAD_INF := TFRMIMG_PAD_INF.Create(Self,IMG_PAD.Picture,EDIMG_PAD.Text,rom_iteSKU.AsString,rom_iteDGCP.AsString,rom_iteDECP.AsString,rom_iteCMP_PAD.AsString,rom_iteGRP_NO.AsString,rom_iteCAT_NO.AsString,rom_iteXPAIS.AsString,rom_iteFPAIS.AsString);
    FRMIMG_PAD_INF.Show;
  end;
end;

end.
