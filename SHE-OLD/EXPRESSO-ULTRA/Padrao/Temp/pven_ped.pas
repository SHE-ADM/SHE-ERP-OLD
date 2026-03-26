unit pven_ped;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math, StrUtils, FMTBcd,
  IBEvents, rxSpeedbar, IBSQL;

type
  Tfrmven_ped = class(TForm)
    IBTra: TIBTransaction;
    ibSP: TIBStoredProc;
    Edicao: TIBDataSet;
    DTSEdicao: TDataSource;
    tSHEILD: TIBTransaction;
    consulta_s: TIBQuery;
    pnlconsulta: TPanel;
    SpeedBar4: TSpeedBar;
    SpeedbarSection17: TSpeedbarSection;
    SpeedbarSection18: TSpeedbarSection;
    SpeedbarSection19: TSpeedbarSection;
    SpeedbarSection20: TSpeedbarSection;
    siDEL: TSpeedItem;
    siSAV: TSpeedItem;
    siCAN: TSpeedItem;
    siALT: TSpeedItem;
    consulta: TIBQuery;
    siINC: TSpeedItem;
    aux: TIBQuery;
    aux2: TIBQuery;
    tab_pag: TIBQuery;
    tab_pagID: TIntegerField;
    tab_pagPAG_DPAG: TIBStringField;
    tab_pagPAG_D001: TIntegerField;
    tab_pagPAG_D002: TIntegerField;
    tab_pagPAG_D003: TIntegerField;
    tab_pagPAG_D004: TIntegerField;
    tab_pagPAG_D005: TIntegerField;
    tab_pagPAG_D006: TIntegerField;
    tab_pagPAG_D007: TIntegerField;
    tab_pagPAG_D008: TIntegerField;
    tab_pagPAG_D009: TIntegerField;
    tab_pagPAG_D010: TIntegerField;
    tab_pagPAG_STA: TIBStringField;
    tab_pagPAG_PARC: TSmallintField;
    pnlpri: TPanel;
    DBGEdicao: TdxDBGrid;
    psq_cli: TIBQuery;
    PNLTOP: TPanel;
    PNLPedido: TPanel;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    Label28: TLabel;
    Label14: TLabel;
    Label12: TLabel;
    Label30: TLabel;
    Label20: TLabel;
    edstpd: TdxMaskEdit;
    edcdcx: TdxMaskEdit;
    edhrom: TdxMaskEdit;
    edcdro: TdxMaskEdit;
    eddcad: TdxDateEdit;
    cbdven: TdxPickEdit;
    cbdrep: TdxPickEdit;
    CBSTPD: TdxPickEdit;
    CBSTCO: TdxPickEdit;
    edcrep: TdxMaskEdit;
    cbdpag: TdxPickEdit;
    edcpag: TdxMaskEdit;
    eddcli: TdxMaskEdit;
    edcven: TdxMaskEdit;
    cbcred: TdxPickEdit;
    edcnpj: TdxMaskEdit;
    eddero: TdxMaskEdit;
    aux_S: TIBQuery;
    aux2_S: TIBQuery;
    edbest: TdxMaskEdit;
    edfatu: TdxMaskEdit;
    DBGEdicaoITEM: TdxDBGridMaskColumn;
    DBGEdicaoSKU: TdxDBGridMaskColumn;
    DBGEdicaoDGCP: TdxDBGridPickColumn;
    DBGEdicaoDECP: TdxDBGridMaskColumn;
    DBGEdicaoUCOM: TdxDBGridPickColumn;
    DBGEdicaoEPE_QTDE: TdxDBGridMaskColumn;
    DBGEdicaoQTDE: TdxDBGridCalcColumn;
    DBGEdicaoVPRC_COM: TdxDBGridButtonColumn;
    DBGEdicaoPDSC: TdxDBGridMaskColumn;
    DBGEdicaoTCDE: TdxDBGridMaskColumn;
    DBGEdicaoTSDE: TdxDBGridMaskColumn;
    eddrom: TdxDateEdit;
    edcdrd: TdxMaskEdit;
    psq_cliID: TIntegerField;
    psq_cliCLI_FANT: TIBStringField;
    psq_cliCLI_RAZA: TIBStringField;
    psq_cliCLI_CNPJ: TIBStringField;
    psq_cliCLI_CPF: TIBStringField;
    psq_cliCLI_CRED: TIBBCDField;
    psq_cliCLI_CID: TIBStringField;
    psq_cliCLI_BAI: TIBStringField;
    psq_cliCLI_TLOG: TIBStringField;
    psq_cliCLI_LOGR: TIBStringField;
    psq_cliCLI_NUME: TIBStringField;
    psq_cliCLI_CEP: TIBStringField;
    psq_cliCLI_COMP: TIBStringField;
    psq_cliCLI_ESTA: TIBStringField;
    psq_cliCLI_STA: TIBStringField;
    psq_cliCLI_STAV: TIBStringField;
    psq_cliCLI_DPAG: TIBStringField;
    psq_cliCLI_VDSC: TIBBCDField;
    psq_cliCLI_DCAD: TDateField;
    psq_cliCLI_DFUN: TDateField;
    psq_cliCLI_DALT: TDateField;
    psq_cliCLI_DULT: TDateField;
    psq_cliCLI_VULT: TIBBCDField;
    psq_cliCLI_DDD: TIBStringField;
    psq_cliCLI_TEL1: TIBStringField;
    psq_cliREP_FANT: TIBStringField;
    psq_cliUSU_DUSU: TIBStringField;
    psq_cliCLI_STPD: TSmallintField;
    psq_cliCLI_DTRA: TIBStringField;
    psq_cliCLI_DUSU: TIBStringField;
    psq_cliCLI_OBSO: TIBStringField;
    Label37: TLabel;
    cbdtra: TdxImageEdit;
    Label2: TLabel;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    SQLConsulta: TIBSQL;
    SQLFKConsulta: TIBSQL;
    ILMenu: TImageList;
    ILEdicao: TImageList;
    SBMenu: TSpeedBar;
    SSMenu: TSpeedbarSection;
    SISalva: TSpeedItem;
    SIImporta: TSpeedItem;
    SICAD_CLI_EDI: TSpeedItem;
    SICAD_CLI_INF: TSpeedItem;
    SIESC: TSpeedItem;
    PNLSumario: TPanel;
    PNLAmostras: TPanel;
    PCAmostras: TdxPageControl;
    TSIMG_PAD: TdxTabSheet;
    EDIMG_PAD: TdxEdit;
    TSILA: TdxTabSheet;
    TConsulta: TIBTransaction;
    PED_HST: TIBQuery;
    DTSPED_HST: TDataSource;
    PED_HSTIDFK: TLargeintField;
    PED_HSTRECO: TIBStringField;
    PED_HSTIDCP: TIntegerField;
    PED_HSTSKU: TIBStringField;
    PED_HSTDGCP: TIBStringField;
    PED_HSTDECP: TIBStringField;
    PED_HSTUCOM: TIBStringField;
    PED_HSTQTDE: TIBBCDField;
    PED_HSTPDSC: TIBBCDField;
    PED_HSTTCDE: TIBBCDField;
    PED_HSTDEPK: TIBStringField;
    PED_HSTDTPK: TDateTimeField;
    GBSumario: TGroupBox;
    SLQTDE: TShape;
    LAQTDE: TLabel;
    SDQTDE: TShape;
    SLQTPC: TShape;
    LAQTPC: TLabel;
    SDQTPC: TShape;
    SLTDSC: TShape;
    LATDSC_1: TLabel;
    Shape2: TShape;
    LATDSC: TLabel;
    SLTSDE: TShape;
    QRLTSDE: TLabel;
    SDTSDE: TShape;
    SLTCDE: TShape;
    LATCDE: TLabel;
    SDTCDE: TShape;
    SLPeso: TShape;
    QRLPeso: TLabel;
    Shape3: TShape;
    Shape1: TShape;
    Label1: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Label4: TLabel;
    Shape6: TShape;
    Shape7: TShape;
    Label5: TLabel;
    Shape8: TShape;
    Shape9: TShape;
    Label7: TLabel;
    Shape10: TShape;
    CEQTDE: TdxCurrencyEdit;
    CEITEM: TdxCurrencyEdit;
    CEPDSC: TdxCurrencyEdit;
    CETSDE: TdxCurrencyEdit;
    CETCDE: TdxCurrencyEdit;
    CEPSBR: TdxCurrencyEdit;
    CEPSLQ: TdxCurrencyEdit;
    CEVDSC: TdxCurrencyEdit;
    CEVIPI: TdxCurrencyEdit;
    CEVST: TdxCurrencyEdit;
    CEQTRL: TdxCurrencyEdit;
    PED_HSTIDPK: TLargeintField;
    PED_HSTSTPD: TIBStringField;
    PED_HSTSTCO: TIBStringField;
    PED_HSTDEPG: TIBStringField;
    PED_HSTDEST: TIBStringField;
    SQLSEdicao: TIBSQL;
    CETDSC: TdxCurrencyEdit;
    CEVFRT: TdxCurrencyEdit;
    PNLINFAD: TPanel;
    PCPrincipal: TdxPageControl;
    TSINFADCAD: TdxTabSheet;
    EMINFADCAD: TdxMemo;
    TSINFADFIN: TdxTabSheet;
    EMINFADFIN: TdxMemo;
    GroupBox1: TGroupBox;
    DBGPED_HST: TdxDBGrid;
    DBGPED_HSTSKU: TdxDBGridMaskColumn;
    DBGPED_HSTDGCP: TdxDBGridColumn;
    DBGPED_HSTDECP: TdxDBGridMaskColumn;
    DBGPED_HSTUCOM: TdxDBGridMaskColumn;
    DBGPED_HSTQTDE: TdxDBGridMaskColumn;
    DBGPED_HSTVPRC_COM: TdxDBGridMaskColumn;
    DBGPED_HSTPDSC: TdxDBGridMaskColumn;
    DBGPED_HSTTCDE: TdxDBGridMaskColumn;
    DBGPED_HSTDEPK: TdxDBGridMaskColumn;
    DBGPED_HSTDTPK: TdxDBGridDateColumn;
    DBGPED_HSTSTPD: TdxDBGridMaskColumn;
    DBGPED_HSTSTCO: TdxDBGridMaskColumn;
    DBGPED_HSTDEPG: TdxDBGridMaskColumn;
    DBGPED_HSTRECO: TdxDBGridMaskColumn;
    DBGPED_HSTDEST: TdxDBGridMaskColumn;
    Label8: TLabel;
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
    LACD_DTCA: TLabel;
    CAD_PRO_IMG_CDN: TIBQuery;
    DTSCAD_PRO_IMG_CDN: TDataSource;
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
    PED_HSTDECV: TIBStringField;
    PED_HSTDECR: TIBStringField;
    PED_HSTDESP: TIBStringField;
    PED_HSTDTSP: TDateTimeField;
    PED_HSTDECT: TIBStringField;
    PED_HSTVFRT: TIBBCDField;
    DBGPED_HSTDECV: TdxDBGridMaskColumn;
    DBGPED_HSTDECR: TdxDBGridMaskColumn;
    DBGPED_HSTDESP: TdxDBGridMaskColumn;
    DBGPED_HSTDTSP: TdxDBGridDateColumn;
    DBGPED_HSTDECT: TdxDBGridMaskColumn;
    DBGPED_HSTVFRT: TdxDBGridMaskColumn;
    EdicaoID: TIntegerField;
    EdicaoIDEP: TSmallintField;
    EdicaoITEM: TIntegerField;
    EdicaoIDCP: TIntegerField;
    EdicaoIDAK: TLargeintField;
    EdicaoIDSK: TLargeintField;
    EdicaoIDEK: TLargeintField;
    EdicaoARTIGO: TIBStringField;
    EdicaoPIPI: TIBBCDField;
    EdicaoEXTIPI: TIBStringField;
    EdicaoCEST: TIBStringField;
    EdicaoSKU: TIBStringField;
    EdicaoCEAN: TIBStringField;
    EdicaoDECP: TIBStringField;
    EdicaoDGCP: TIBStringField;
    EdicaoCMP_PAD: TIBStringField;
    EdicaoUCOM: TIBStringField;
    EdicaoUPSBR: TIBBCDField;
    EdicaoUPSLQ: TIBBCDField;
    EdicaoMPESO: TIBBCDField;
    EdicaoMPSCN: TIBBCDField;
    EdicaoMMETRO: TIBBCDField;
    EdicaoMGRAM: TIBBCDField;
    EdicaoMREND: TIBBCDField;
    EdicaoEPE_QTDE: TIBBCDField;
    EdicaoEPE_QTRL: TIntegerField;
    EdicaoQTDE: TIBBCDField;
    EdicaoQTRL: TIntegerField;
    EdicaoQTSP: TIBBCDField;
    EdicaoRLSP: TIntegerField;
    EdicaoVPRC_PAD_INI: TFloatField;
    EdicaoVPRC_PAD_FIM: TFloatField;
    EdicaoVPRC_PAD: TFloatField;
    EdicaoVPRC_COM: TFloatField;
    EdicaoPDSC: TIBBCDField;
    EdicaoVDSC: TIBBCDField;
    EdicaoTSDE: TIBBCDField;
    EdicaoTCDE: TIBBCDField;
    EdicaoVIPI: TIBBCDField;
    EdicaoGRP_NO: TIBStringField;
    EdicaoCAT_NO: TIBStringField;
    EdicaoXPAIS: TIBStringField;
    EdicaoFPAIS: TIBStringField;
    EdicaoIDEV: TLargeintField;
    EdicaoCDEV: TSmallintField;
    EdicaoIP: TIBStringField;
    EdicaoHOST: TIBStringField;
    EdicaoFLAG: TSmallintField;
    EdicaoVST: TIBBCDField;
    EdicaoPSBR: TIBBCDField;
    EdicaoPSLQ: TIBBCDField;
    PNLIMG_PAD: TPanel;
    IMG_PAD: TImage;
    EdicaoCDRO: TLargeintField;
    EdicaoCDET: TLargeintField;
    EdicaoCTNR: TIBStringField;
    EdicaoLOTE: TIBStringField;
    EdicaoMAPA: TIBStringField;
    EdicaoIDPK: TLargeintField;
    EdicaoDEPK: TIBStringField;
    EdicaoDTPK: TDateTimeField;
    CEIDCD: TdxCurrencyEdit;
    DBGEdicaoQTSP: TdxDBGridCurrencyColumn;
    EdicaoIDSP: TSmallintField;
    EdicaoDESP: TIBStringField;
    EdicaoIDFK: TLargeintField;
    EdicaoPACR: TIBBCDField;
    EdicaoVACR: TIBBCDField;
    PED_HSTVPRC_COM: TIBBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtsdeKeyPress(Sender: TObject; var Key: Char);
    procedure siDELClick(Sender: TObject);
    procedure siINCClick(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure siCANClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure EdicaoAfterEdit(DataSet: TDataSet);
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edderoKeyPress(Sender: TObject; var Key: Char);
    procedure EdicaoAfterInsert(DataSet: TDataSet);
    procedure EdicaoBeforeCancel(DataSet: TDataSet);
    procedure edcvenValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcrepValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcpagValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure eddcliValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EdicaoAfterDelete(DataSet: TDataSet);
    procedure EdicaoAfterOpen(DataSet: TDataSet);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure edpdscValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DBGEdicaoVPRC_COMValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure latdscClick(Sender: TObject);
    procedure cbdpagExit(Sender: TObject);
    procedure cbdvenExit(Sender: TObject);
    procedure cbdrepExit(Sender: TObject);
    procedure CBSTPDExit(Sender: TObject);
    procedure edcnpjValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DBGEdicaoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGEdicaoSKUValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoDECPValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure CBSTCOExit(Sender: TObject);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure edctnrValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DBGEdicaoPDSCValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure eddcadExit(Sender: TObject);
    procedure psq_cliAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SISalvaClick(Sender: TObject);
    procedure SIImportaClick(Sender: TObject);
    procedure SICAD_CLI_EDIClick(Sender: TObject);
    procedure SICAD_CLI_INFClick(Sender: TObject);
    procedure SIESCClick(Sender: TObject);
    procedure CEVFRTValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure CEPDSCValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject; Field: TField);
    procedure IMG_PADClick(Sender: TObject);
    procedure EdicaoQTDEValidate(Sender: TField);
    procedure EdicaoBeforeInsert(DataSet: TDataSet);
    procedure CEIDCDValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DTSEdicaoDataChange(Sender: TObject; Field: TField);
    procedure EdicaoPACRValidate(Sender: TField);
    procedure EdicaoPDSCValidate(Sender: TField);
    procedure EdicaoVPRC_PADValidate(Sender: TField);
    procedure edderoChange(Sender: TObject);
    procedure DBGPED_HSTCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSPED_HSTDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure ExecuteEvent;
    procedure ABRE_TABELA;
    procedure SALVA;
    procedure _PED_HST;
    procedure _PED_PRC_ACR;

    function  RETORNA_LOGIN(texto: string) : boolean;
    function  RETORNA_FOCO(campo: string): integer;
    function  PESQUISA_PEDIDO: string;
  public
    RECDefault: TRECDefault;
    auto,limite: boolean;
    procedure PESQUISA_PRODUTO(campo,cpro:string;qtde: double);
    procedure PESQUISA_TIPO(pesq,chave: string);
    procedure PESQUISA_CLIENTE(pesq,chave: string;cdsc: double;pevr,impo: boolean);
    procedure PESQUISA_VENDEDOR(pesq,chave: string);
    procedure PESQUISA_REPRESENTANTE(pesq,chave: string);
    procedure PESQUISA_FPAGTO(pesq,chave: string);
  end;

var
  frmven_ped: Tfrmven_ped;
  ID: integer;
  qtde,qtrl,tsde,tcde,pdsc: double;
  referencia,
  APED_PRC,
  APED_DEST: String;

implementation

uses p_funcoes, uPrincipal, pcad_pro_con, pcad_cli,
  qven_ped, uFrmLogin, pctr_ped, pimporta_geral, pcad_cli_inf, 
  pctr_ped_fin, pcad_cli_edi, pIMG_PAD_INF;

{$R *.dfm}

procedure Tfrmven_ped.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
  oIRECDefault(RECDefault);

  { Amostras }
  PCAmostras.ActivePageIndex := 0;

  { Evento }
  RECDefault.Event := 'CTR_PED';

  { Paginação }
  RECDefault.FrmPosition := poDesigned; { Abertura Controlada  }
  RECDefault.WorkArea    := True;       { Toda Tela do Windows }
  RECDefault.MainArea    := False;      { Toda Tela MainForm + Exclusão Botões }

  oOTransact(TConsulta);
  oOTransact(IBTra);
  ABRE_TABELA;

  PCPrincipal.ActivePageIndex := 0;
  auto   := False;
  limite := True;

  AUTORIZACAO    := '';
  TP_AUTORIZACAO := '';

  eddero.Enabled := (frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Alterar Número',False));
  APED_DEST      := 'SEPARANDO';

  if RECUsuarios.Grupo = 'VEN' then
  begin
    edcven.Text := frmprincipal.cad_usuUSU_CUSU.AsString;
    cbdven.Text := frmprincipal.cad_usuUSU_DUSU.AsString;
  end;

  edcrep.Text := frmprincipal.parametrosPAR_CREP.AsString;
  cbdrep.Text := frmprincipal.parametrosREP_FANT.AsString;
  edstpd.Text := frmprincipal.parametrosPAR_STPD.AsString;
  CBSTPD.Text := frmprincipal.parametrosPAR_STPD.AsString;
  CBSTCO.Text := frmprincipal.parametrosPAR_STCO.AsString;
  edcpag.Text := frmprincipal.parametrosPAR_CPAG.AsString;

  PESQUISA_TIPO('VEN_TIPO',CBSTPD.Text);

  eddcad.Date := strtodate(SLPrincipal.Values['data_sistema']);
  eddrom.Date := Date;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   TRA_FANT,ID FROM CAD_TRA');
    SQL.Add('WHERE    TRA_STA = ''0''');
    SQL.Add('ORDER BY TRA_FANT');
    Open;

    while not eof do
    begin
      if fields[1].AsInteger = frmprincipal.parametrosPAR_CTRA.AsInteger then
      cbdtra.Text := fields[0].AsString;

      cbdtra.Values.Add(fields[0].AsString);
      cbdtra.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   COR_DCOR FROM TAB_COR');
    SQL.Add('WHERE    COR_STA = ''0''');
    SQL.Add('ORDER BY COR_DCOR');
    Open;

    while not eof do
    begin
      DBGEdicaoDGCP.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   USU_DUSU FROM CAD_USU');
    SQL.Add('WHERE    USU_MENU = ''VEN''');
    SQL.Add('AND      USU_STA  = ''0''');
    SQL.Add('ORDER BY USU_DUSU');
    Open;
    while not eof do
    begin
      cbdven.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   REP_FANT FROM CAD_REP');
    SQL.Add('WHERE    REP_STA = ''0''');
    SQL.Add('ORDER BY REP_FANT');
    Open;
    while not eof do
    begin
      cbdrep.Items.Add(fields[0].AsString);
      next;
    end;

    if (edcrep.Text <> '0') and (edcrep.Text <> '') then
    begin
      SQL.Clear;
      SQL.Add('SELECT REP_FANT FROM CAD_REP');
      SQL.Add('WHERE  REP_STA = ''0''');
      SQL.Add('AND    ID = '''+edcrep.Text+'''');
      Open;

      cbdrep.Text := fields[0].AsString;
    end;

    SQL.Clear;
    SQL.Add('SELECT   VEN_TIPO FROM TAB_PED');
    SQL.Add('WHERE    VEN_STA  = ''1''');
    SQL.Add('ORDER BY VEN_TIPO');
    Open;
    while not eof do
    begin
      CBSTPD.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   VEN_TIPO FROM TAB_COB');
    SQL.Add('WHERE    VEN_STA  = ''1''');
    SQL.Add('ORDER BY VEN_TIPO');
    Open;
    while not eof do
    begin
      if (copy(fields[0].AsString,1,5) <> 'DEVOL') and (copy(fields[0].AsString,1,5) <> 'ABATI') then
      CBSTCO.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   PAG_DPAG FROM TAB_PAG');
    SQL.Add('WHERE    PAG_STA = ''0''');
    SQL.Add('ORDER BY PAG_DPAG');
    Open;
    while not eof do
    begin
      cbdpag.Items.Add(fields[0].AsString);
      next;
    end;

    if (edcpag.Text <> '0') and (edcpag.Text <> '') then
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,PAG_DPAG FROM TAB_PAG');
      SQL.Add('WHERE  PAG_STA  = ''0''');
      SQL.Add('AND    ID = '''+edcpag.Text+'''');
      Open;

      edcpag.Text := inttostr(fields[0].AsInteger);
      cbdpag.Text := fields[1].AsString;
    end;
  end;

  PESQUISA_CLIENTE('I',frmprincipal.parametrosPAR_CCLI.AsString,0,False,False);
  PESQUISA_REPRESENTANTE('C',frmprincipal.parametrosPAR_CREP.AsString);

  CBSTPD.Text := frmprincipal.parametrosPAR_STPD.AsString;
  PESQUISA_TIPO('VEN_TIPO',CBSTPD.Text);
end;

procedure Tfrmven_ped.FormShow(Sender: TObject);
begin
  try
    if Assigned(frmctr_ped) then
    try
      frmctr_ped.Cadastro.DisableControls;
      frmctr_ped.rom_ite.DisableControls;
      frmctr_ped.rom_ite.First;

      if frmctr_ped.siARO.TAG = 1 then
      begin
        CEIDCD.Tag := frmctr_ped.cadastroIDCD.AsInteger;
        PESQUISA_CLIENTE('I',frmctr_ped.cadastroIDCD.AsString,0,False,False);

        PESQUISA_VENDEDOR('C',frmctr_ped.cadastroIDCV.AsString);
        PESQUISA_REPRESENTANTE('C',frmctr_ped.cadastroIDCR.AsString);

        CBSTPD.Text := frmctr_ped.cadastroSTPD.AsString;
        PESQUISA_TIPO('VEN_TIPO',CBSTPD.Text);

        cbcred.Text := frmctr_ped.cadastroTPCO.AsString;
        CBSTCO.Text := frmctr_ped.cadastroSTCO.AsString;

        edcpag.Text := frmctr_ped.cadastroCDPG.AsString;
        PESQUISA_FPAGTO('C',frmctr_ped.cadastroCDPG.AsString);

        edcdro.Text := frmctr_ped.cadastroID.AsString;
        eddero.Text := frmctr_ped.cadastroDEPK.AsString;
        edcdcx.Text := frmctr_ped.cadastroCDCX.AsString;
        APED_DEST   := frmctr_ped.cadastroDEST.AsString;

        eddcad.Date := frmctr_ped.cadastroDTPK.AsDateTime;
        eddrom.Date := eddcad.Date;
        edhrom.Text := timetostr(frmctr_ped.cadastroHTPK.AsDateTime);

        latdsc.Caption := '%';
        CEPDSC.Value   := frmctr_ped.cadastroPDSC.AsFloat;

        cbdtra.Text := frmctr_ped.cadastroDECT.AsString;
        CEVFRT.Value:= frmctr_ped.cadastroVFRT.AsFloat;

        EMINFADCAD.Text := frmctr_ped.cadastroINFADCAD.AsString;

        try
          Edicao.DisableControls;
          while not frmctr_ped.rom_ite.Eof do
          begin
            Edicao.Append;
            PESQUISA_PRODUTO('',frmctr_ped.rom_iteIDCP.AsString,0);

            EdicaoIDFK.Value := frmctr_ped.rom_iteID.AsInteger;
            EdicaoITEM.Value := frmctr_ped.rom_iteITEM.AsInteger;
            EdicaoIDCP.Value := frmctr_ped.rom_iteIDCP.AsInteger;
            EdicaoDGCP.Value := frmctr_ped.rom_iteDGCP.AsString;
            EdicaoDECP.Value := frmctr_ped.rom_iteDECP.AsString;
            EdicaoUCOM.Value := frmctr_ped.rom_iteUCOM.AsString;

            EdicaoQTDE.Value := frmctr_ped.rom_iteQTDE.AsFloat;
            EdicaoQTRL.Value := frmctr_ped.rom_iteQTRL.AsInteger;

            EdicaoVPRC_PAD_INI.AsFloat := frmctr_ped.rom_iteVPRC_PAD.AsFloat;
            EdicaoVPRC_PAD_FIM.AsFloat := frmctr_ped.rom_iteVPRC_PAD.AsFloat;

            EdicaoVPRC_PAD.AsFloat := frmctr_ped.rom_iteVPRC_PAD.AsFloat;
            EdicaoVPRC_COM.AsFloat := frmctr_ped.rom_iteVPRC_COM.AsFloat;

            EdicaoPACR.Value := IFThen((CBSTCO.Text = '30/30') and (CBSTPD.Text = 'FATURADO'),5,0); { Acréscimo de 5% }

            EdicaoPDSC.Value := frmctr_ped.rom_itePDSC.AsFloat;
            EdicaoVDSC.Value := frmctr_ped.rom_iteVDSC.AsFloat;

            EdicaoTSDE.Value := frmctr_ped.rom_iteTSDE.AsFloat;
            EdicaoTCDE.Value := frmctr_ped.rom_iteTCDE.AsFloat;

            EdicaoPIPI.Value := frmctr_ped.rom_itePIPI.AsFloat;
            EdicaoVIPI.Value := frmctr_ped.rom_iteVIPI.AsFloat;

            EdicaoPSBR.Value := frmctr_ped.rom_itePSBR.AsFloat;
            EdicaoPSLQ.Value := frmctr_ped.rom_itePSLQ.AsFloat;

            EdicaoIDSP.Value := frmctr_ped.rom_iteIDSP.AsInteger;
            EdicaoDESP.Value := frmctr_ped.rom_iteDESP.AsString;
            EdicaoQTSP.Value := frmctr_ped.rom_iteQTSP.AsFloat;
            EdicaoRLSP.Value := frmctr_ped.rom_iteRLSP.AsInteger;

            Edicao.Post;

            frmctr_ped.rom_ite.Next;
          end;
        finally
          Edicao.EnableControls;
          oRefresh(Edicao);
        end;
      end;
    finally
      frmctr_ped.Cadastro.EnableControls;
      frmctr_ped.rom_ite.EnableControls;
    end;
  finally
    SISalva.Enabled := False;
    TAG := 0;
  end;

  if (EDDERO.Text <> EmptyStr) and (EDDERO.Text <> '0') then
  DBGEdicao.SetFocus else
  EDDCLI.SetFocus;

  _PED_HST;
end;

procedure Tfrmven_ped.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  { Registra Evento }
  try
    if RECDefault.Event <> EmptyStr then
       with EEvent do
            try
              UnregisterEvents;
              Events.Add(oREPZero(Trim(RECDefault.Event),'_',RECParametros.Id,3));
              RegisterEvents;
            except
              on E: Exception do
                    oErro(Handle,'Falha ao tentar registrar evento !'+#13+
                                 'Evento: '    +RECDefault.Event +'.'+#13+
                                 'Form: '      +Self.Name+'.'    +#13+#13+
                                 'Error Code: '+E.Message);
            end;
  finally
    DBGEdicaoSKU.Field.FocusControl;
    Screen.Cursor := crDefault;
  end;
end;

procedure Tfrmven_ped.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if  Edicao.State in [dsEdit,dsInsert] then
  if (EdicaoIDCP.AsInteger > 0) and (EdicaoSKU.AsString <> EmptyStr) and (EdicaoTCDE.AsFloat > 0) then
  Edicao.Post else
  Edicao.Cancel;
  Edicao.First;

  if (SISalva.Enabled) and (Edicao.RecNo > 0) then
  case messageBox(handle,PChar('Existem alterações pendentes.' + #13 +
                               'Deseja salvar antes de fechar ?'),
                         PChar(caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
       mrCancel: Abort;
       mrYes   : if SISalva.Enabled then
                 try
                   SALVA;
                 finally
                   if SISalva.Enabled then
                      Abort;
                 end;
  end;
end;

procedure Tfrmven_ped.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmven_ped.FormDestroy(Sender: TObject);
begin
  try
    Screen.Cursor := crAppStart;
    OnDestroy     := Nil;

    { Transação Principal }
    try
      oFTransact(IBTra);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                 'Error Code: '+E.Message+'.'      +#13+
                                  Caption+'.');
      end;
    end;

    { Eventos }
    try
      EEvent.UnRegisterEvents;
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar fechar eventos !'+#13+#13+
                                 'Error Code: '+E.Message+'.'      +#13+
                                  Caption+'.');
      end;
    end;

    { record e afins }
    try
      oFRECDefault(RECDefault);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                 'Error Code: '+E.Message+'.'        +#13+
                                  Caption+'.');
      end;
    end;
  finally
    try
      uRepaintMainForm(TForm(Self));
    finally
      Screen.Cursor  := crDefault;
      frmven_ped := Nil;
    end;
  end;
end;

procedure Tfrmven_ped.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_RETURN: if (not (activeControl is TdxDBGrid) and
                      not (activeControl is TDBMemo)   and
                      not (activeControl is TdxMemo)   and
                      not (activeControl is TdxDBMemo) and
                      not (activeControl is TdbGrid)   and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, True, True);
       40       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, True, True);
       38       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, False, True);
       VK_INSERT: if Edicao.State = dsBrowse then siINC.Click;
       121      : if SISalva.Enabled then SISalva.Click;
       117      : if SICAD_CLI_INF.Enabled then SICAD_CLI_INF.Click;
  end;
end;

procedure Tfrmven_ped.FormPaint(Sender: TObject);
var
  S: TRect;
  H,
  T,
  B,
  L,
  R,
  FHeight,
  FWidth: Word;
begin
  if Showing then
  begin
    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,S);
    T := S.Top;
    B := S.Bottom;
    L := S.Left;
    R := S.Right;
    H := B;

    if RECDefault.FrmPosition = poDesigned then
    begin
      FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
      FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

      if (RECDefault.Top > 0) and (RECDefault.Left > 0) then
      begin
        Top    := RECDefault.Top;
        Left   := RECDefault.Left;
      end else
      begin
        if FHeight > 0 then Height := FHeight;
        if FWidth  > 0 then Width  := FWidth;

        if FormStyle = fsNormal then
        begin
          Top  := (T  + (H - Height)) div 2;
          Left := ((R + L) - Width )  div 2;
        end else
        begin
          Top  := ((B - T ) - Height) div 2;
          Left := ((R - L)  - Width ) div 2;
        end;
      end;
    end else
    if (RECDefault.WorkArea) and (FormStyle = fsNormal) then
    begin
      Top    := Screen.WorkAreaTop;
      Left   := Screen.WorkAreaLeft;
      Width  := Screen.WorkAreaWidth;
      Height := Screen.WorkAreaHeight;
    end else
    if (RECDefault.MainArea) and (FormStyle = fsNormal) then
    begin
      Top    := 0;
      Left   := 0;
      Width  := R - L - 5;
      Height := H - T - 5;
    end else
    if RECDefault.FrmPosition = poDefault then
    begin
      Top    := IFThen(FormStyle = fsNormal,T,0);
      Left   := IFThen(FormStyle = fsNormal,L,0);
      Width  := IFThen(RECDefault.FrmPosition = poDefault,R - L - 5,0);
      Height := IFThen(RECDefault.FrmPosition = poDefault,H - T - 5,0);
    end;

    if RECUsuarios.Id = 0 then
       Caption := 'DIMENSÕES: Monitor: Altura = '+IntToStr(Screen.Height)+' Largura: '+IntToStr(Screen.Width)+' / '+
                  'Tela: Altura = '              +IntToStr(Self.Height  )+' Largura: '+IntToStr(Self.Width  )+' - '+
                  'Font Size: '+IntToSTr(DBGEdicao.Font.Size);
  end;
end;

procedure Tfrmven_ped.FormResize(Sender: TObject);
begin
  if Self <> Nil then
  begin
    if (RECDefault.WorkArea) and (Screen.Width > 1024) then
        RECDefault.WorkArea := False;

    if (RECDefault.MainArea) and (Screen.Width > 1366) then
        RECDefault.MainArea := False;

    if (RECDefault.WorkArea) or (RECDefault.MainArea) then
    begin
      HelpKeyword := '3';
      RECDefault.FrmPosition := poDefault;
      uDisabledMainForm;
    end else
    if (HelpKeyword = '5') and (Screen.Width >= 1360) and (Screen.Width <= 1366) then {MainArea, mas sem desabilitar botões }
    begin
      if FrmPrincipal.PNLPrincipal.Visible then
         RECDefault.FrmPosition := poDefault;
    end else
    if RECDefault.Id = -3 then
    begin
      RECDefault.FrmPosition := poDesigned;
      Self.HelpContext       := 90;
      Self.AlphaBlendValue   := 90;
    end;

    if Screen.Width <= 1366 then
       Self.Font.Size := 8;

    Paint;
  end;
end;

procedure Tfrmven_ped.SISalvaClick(Sender: TObject);
begin
  try
    SALVA;
  finally
    if SISalva.Enabled then
    abort;
  end;

  Close;
end;

procedure Tfrmven_ped.SIImportaClick(Sender: TObject);
function RETORNA_PEDIDO(dero:string): string;
var
  i: word;
  dero1,dero2: string;
begin
  dero1 := '';
  for i := 1 to length(dero) do
  begin
    if (copy(dero,i,1) = '.') or (copy(dero,i,1) = '/') then
    break;

    dero1 := dero1 + trim(copy(dero,i,1));
  end;

  i := 0;
  while True do
  begin
    inc(i);
    dero2 := dero1+'/'+inttostr(i);

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('WHERE  ROM_DERO = '''+dero2+'''');
      Open;

      if fields[0].IsNull then
      begin
        if i = 1 then
        dero2 := dero1;
        break;
      end;
    end;
  end;

  result := dero2;
end;

begin
  Application.CreateForm (Tfrmimporta_geral, frmimporta_geral);

  frmimporta_geral.cbFANT.Text := frmprincipal.parametrosPAR_FANT.AsString;
  frmimporta_geral.ShowModal;

  try
    if frmimporta_geral.editado then
    begin
      if not frmimporta_geral.imp_cab.Fields[0].IsNull then
      begin
        PESQUISA_CLIENTE('I',frmimporta_geral.imp_cabROM_CCLI.AsString,0,False,True);
        PESQUISA_VENDEDOR('C',frmimporta_geral.imp_cabROM_CVEN.AsString);
        PESQUISA_REPRESENTANTE('C',frmimporta_geral.imp_cabROM_CREP.AsString);
        PESQUISA_FPAGTO('C',frmimporta_geral.imp_cabROM_CPAG.AsString);

        cbcred.Text := frmimporta_geral.imp_cabROM_CONC.AsString;
        if (cbcred.Text = '') or (cbcred.Text = '1') then
        cbcred.Text := '1';

        if frmimporta_geral.cbTIPO.Text = 'ORÇAMENTO' then
        eddero.Text := '0' else
        begin
          if (frmimporta_geral.imp_cabROM_DERO.AsString <> '') and (frmimporta_geral.imp_cabROM_DERO.AsString <> frmimporta_geral.imp_cabID.AsString) then
          eddero.Text := RETORNA_PEDIDO(frmimporta_geral.imp_cabROM_DERO.AsString);
          if eddero.Text = frmimporta_geral.imp_cabROM_DERO.AsString then
          eddero.Text := '0';
        end;

        cbdtra.Text    := frmimporta_geral.imp_cabROM_DTRA.AsString;
        CEVFRT.Value   := frmimporta_geral.imp_cabROM_VFRT.AsFloat;
        latdsc.Caption := frmimporta_geral.imp_cabROM_TDSC.AsString;
        CEPDSC.Value   := frmimporta_geral.imp_cabROM_PDSC.AsFloat;
      end;

      frmimporta_geral.imp_ite.First;
      while not frmimporta_geral.imp_ite.Eof do
      begin
        Edicao.Append;

        EdicaoIDCP.Value := frmimporta_geral.imp_iteROM_IPRO.Value;

        EdicaoARTIGO.Value := frmimporta_geral.imp_iteROM_CART.Value;
        EdicaoSKU.Value    := frmimporta_geral.imp_iteROM_CPRO.Value;

        EdicaoDECP.Value := frmimporta_geral.imp_iteROM_DPRO.Value;
        EdicaoDGCP.Value := frmimporta_geral.imp_iteROM_DCOR.Value;

        EdicaoUCOM.Value     := frmimporta_geral.imp_iteROM_DUNI.Value;
        EdicaoEPE_QTDE.Value := frmimporta_geral.imp_iteROM_QDIS.Value;
        EdicaoEPE_QTRL.Value := frmimporta_geral.imp_iteROM_RLDI.Value;

        EdicaoQTDE.Value := frmimporta_geral.imp_iteROM_QTDE.Value;
        EdicaoQTRL.Value := frmimporta_geral.imp_iteROM_QTRL.Value;

        EdicaoVPRC_PAD_INI.AsFloat := frmimporta_geral.imp_iteROM_PREC.Value;
        EdicaoVPRC_PAD_FIM.AsFloat := frmimporta_geral.imp_iteROM_PREC.Value;

        EdicaoVPRC_PAD.AsFloat := frmimporta_geral.imp_iteROM_PREC.Value;
        EdicaoVPRC_COM.AsFloat := frmimporta_geral.imp_iteROM_UNIT.Value;

        EdicaoPACR.Value := IFThen((CBSTCO.Text = '30/30') and (CBSTPD.Text = 'FATURADO'),5,0); { Acréscimo de 5% }

        if EdicaoQTRL.AsInteger = 0 then
        begin
          if (copy(EdicaoUCOM.AsString,1,1) = 'P') or (copy(EdicaoUCOM.AsString,1,1) = 'C') then
          EdicaoQTRL.Value := trunc(EdicaoQTDE.AsFloat) else
          EdicaoQTRL.Value := 1;
        end;

        Edicao.Post;
        frmimporta_geral.imp_ite.Next;
      end;
    end;
  finally
    freeandNil(frmimporta_geral);
    frmimporta_geral.Free;
  end;
end;

procedure Tfrmven_ped.SICAD_CLI_EDIClick(Sender: TObject);
begin
  if CEIDCD.Value > 1 then
  begin
    frmcad_cli_edi     := TFrmcad_cli_edi.Create(Self);
    frmcad_cli_edi.TAG := 1;
    frmcad_cli_edi.IDCliente := CEIDCD.Text;
    try frmcad_cli_edi.ShowModal;
    finally
      if frmcad_cli_edi.Editado then
      begin
        CEIDCD.Text := frmcad_cli_edi.EDCCLI.Text;
        EDCNPJ.Text := frmcad_cli_edi.EDCNPJ.Text;
        EDDCLI.Text := frmcad_cli_edi.edfant.Text;
      end;
      FreeAndNil(frmcad_cli_edi);
    end;
  end;
end;

procedure Tfrmven_ped.SICAD_CLI_INFClick(Sender: TObject);
begin
  if CEIDCD.Value > 1 then
  begin
    frmcad_cli_inf := tfrmcad_cli_inf.create(self);
    frmcad_cli_inf.gbinfo.Caption := 'Informaçãoes Resumidas - '+eddcli.Text;
    frmcad_cli_inf.gbinfo.Hint    := eddcli.Text;
    frmcad_cli_inf.gbinfo.Tag     := TRUNC(CEIDCD.Value);
    frmcad_cli_inf.ShowModal;
  end;  
end;

procedure Tfrmven_ped.SIESCClick(Sender: TObject);
begin
  Close;
end;

function Tfrmven_ped.PESQUISA_PEDIDO: string;
var
  NewString: string;
  ClickedOK: Boolean;
begin
  edcdrd.Hint := '';
  ClickedOK   := InputQuery('Vincular Devolução ao Pedido de Venda', 'Entre com o Número do Pedido de Venda', NewString);

  if (ClickedOK) and (NewString <> '') then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE  ROM_DERO = '''+NewString+'''');
    Open;

    if fields[0].IsNull then
    NewString := '0' else
    begin
      edcdrd.Hint := NewString;
      NewString := fields[0].AsString;
    end;
  end else
  NewString   := '0';
  result      := NewString;
end;

procedure Tfrmven_ped.PESQUISA_PRODUTO(campo,cpro:string;qtde: double);
var
  nRecNo: integer;
begin
  if cpro = '' then
     abort;

      nRecNo := frmprincipal.PESQUISA_PRODUTO(campo,cpro);
   if nRecNo  = 0 then
      oException(DBGEdicao,'Produto não Encontrado !');

   if nRecNo  > 1 then
   begin
     frmcad_pro_con := Tfrmcad_pro_con.Create(self);
     with frmcad_pro_con.cadastro do
     begin
       SQL.Clear;
       SQL.Add(frmprincipal.psq_pro.Text);
       Open;
     end;
     try
       frmcad_pro_con.ShowModal;
       if frmcad_pro_con.Editado then
          PESQUISA_PRODUTO('PK.ID',IntToStr(frmcad_pro_con.CadastroIDCP.AsInteger),0);
     finally
       FreeAndNil(frmcad_pro_con);
     end;
   end else
   if nRecNo = 1 then
   begin
     if FrmPrincipal.PSQ_PRODEST.AsString <> 'ATIVO' then
        oException(Nil,'Produto ' + FrmPrincipal.PSQ_PRODEST.AsString);

     EdicaoIDCP.Value     := frmprincipal.psq_proIDCP.AsInteger;
     EdicaoIDSK.Value     := frmprincipal.psq_proIDSK.AsInteger;
                       
     EdicaoARTIGO.Value   := frmprincipal.psq_proARTIGO.AsString;
     EdicaoSKU.Value      := frmprincipal.psq_proSKU.AsString;
                         
     EdicaoDGCP.Value     := frmprincipal.psq_proDGCP.AsString;
     EdicaoDECP.Value     := frmprincipal.psq_proDECP.AsString;
     EdicaoCMP_PAD.Value  := FrmPrincipal.psq_proCMP_PAD.AsString;

     EdicaoUCOM.Value     := frmprincipal.psq_proUCOM.AsString;
     EdicaoEPE_QTDE.Value := frmprincipal.psq_proEPE_QTDE.AsFloat;
     EdicaoEPE_QTRL.Value := frmprincipal.psq_proEPE_QTRL.AsInteger;

     EdicaoVPRC_PAD_INI.Value := FrmPrincipal.psq_pro.FieldByName('VPRC_PAD').AsFloat;
     EdicaoVPRC_PAD_FIM.Value := FrmPrincipal.psq_pro.FieldByName('VPRC_PAD').AsFloat;

     EdicaoVPRC_PAD.Value := FrmPrincipal.psq_pro.FieldByName('VPRC_PAD').AsFloat;
     EdicaoVPRC_COM.Value := FrmPrincipal.psq_pro.FieldByName('VPRC_PAD').AsFloat;

     EdicaoPACR.Value     := IFThen((CBSTCO.Text = '30/30') and (CBSTPD.Text = 'FATURADO'),5,0); { Acréscimo de 5% }
     EdicaoPIPI.Value     := frmprincipal.psq_proPIPI.AsFloat;

     EdicaoGRP_NO.Value   := FrmPrincipal.psq_proGRP_NO.AsString;
     EdicaoCAT_NO.Value   := FrmPrincipal.psq_proCAT_NO.AsString;

     EdicaoXPAIS.Value    := FrmPrincipal.psq_proXPAIS.AsString;
     EdicaoFPAIS.Value    := FrmPrincipal.psq_proFPAIS.AsString;
   end;

   if Pos(EdicaoDGCP.AsString,'BRANCOCRUNATURAL') > 0 then
   DBGEdicaoDGCP.Field.FocusControl;
end;

function Tfrmven_ped.RETORNA_FOCO(campo: string): integer;
var i,j: word;
begin
  i := 0;
  j := 0;
  while True do
  begin
    inc(j);
    if DBGEdicao.Columns[j].Visible then
    begin
      inc(i);
      if DBGEdicao.Columns[j].FieldName = campo then
      break;
    end;
  end;

  result := i;
end;

procedure Tfrmven_ped.PESQUISA_TIPO(pesq,chave: string);
begin
  with aux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT VEN_FATU,VEN_PDSC,VEN_STVE,VEN_DPAG,VEN_QTPC,VEN_PREC,VEN_QTSP,VEN_BAIP,VEN_NFEP,VEN_TINT,VEN_AGRP,VEN_BEST,VEN_DESC,VEN_PACR,VEN_PTNG,VEN_TIPO FROM TAB_PED');
    SQL.Add('WHERE  '+pesq+' = '''+chave+'''');
    Open;

    edfatu.Text := fields[0].AsString;
    edbest.Text := fields[11].AsString;
    CBSTPD.Text := fields[15].AsString;
    edstpd.Text := CBSTPD.Text;

    if fields[0].AsString <> '1' then
    begin
      cbdpag.Text := 'SEM COBRANÇA';
      CBSTCO.Text := 'SEM COBRANÇA';
    end else

    if EDCDRO.Text = '0' then
    begin
      CBSTCO.Text := fields[2].AsString;
      cbdpag.Text := fields[3].AsString;

      if (cbdpag.Text <> 'SEM COBRANÇA') then
      PESQUISA_FPAGTO('F',fields[3].AsString);
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT PED_PRC FROM TAB_TPO');
    SQL.Add('WHERE  DESCRICAO = '''+ CBSTPD.Text + '''');
    Open;
    APED_PRC := Trim(Fields[0].AsString);
  end;

  CBSTCO.Enabled := (edfatu.Text = '1');
  cbdpag.Enabled := (edfatu.Text = '1');
  edcpag.Enabled := (edfatu.Text = '1');
end;

function Tfrmven_ped.RETORNA_LOGIN(texto: string): boolean;
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
    BRet := False
    else
    BRet := (frmprincipal.ACESSO(frmlogin.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Autorizar Outros Usuários',False));

    if frmlogin.cad_usuUSU_ADM.AsString = '1' then
    BRet := True;

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

procedure Tfrmven_ped.SALVA;
var
  ID: integer;
begin
  if  Edicao.State in [dsEdit,dsInsert] then
  if (EdicaoIDCP.AsInteger > 0) and (EdicaoSKU.AsString <> EmptyStr) and (EdicaoTCDE.AsFloat > 0) then
  Edicao.Post else
  Edicao.Cancel;
  Edicao.First;

  ActiveControl := Nil;

  if (Edicao.RecNo = 0) and (CBSTPD.Text <> 'ABATIMENTO')then
      oException(Nil,'Pedido sem itens selecionados !');

  if edfatu.Text <> '1' then
  begin
    if CBSTCO.Text <> 'SEM COBRANÇA' then
    begin
      CBSTCO.Enabled := True;
      CBSTCO.SetFocus;

      messageBox(handle,'Tipo de cobrança inválido !'+#13+'Pedido selecionado não gera cobrança financeira.',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if cbdpag.Text <> 'SEM COBRANÇA' then
    begin
      edcpag.Enabled := True;
      cbdpag.Enabled := True;
      cbdpag.SetFocus;

      messageBox(handle,'Forma de pagamento inválido !'+#13+'Pedido selecionado não gera cobrança financeira.',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end else if edfatu.Text = '1' then
  begin
    if CBSTCO.Text = 'SEM COBRANÇA' then
    begin
      CBSTCO.Enabled := True;
      CBSTCO.SetFocus;

      messageBox(handle,'Tipo de cobrança inválido !'+#13+'Pedido selecionado gera cobrança financeira.',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if cbdpag.Text = 'SEM COBRANÇA' then
    begin
      edcpag.Enabled := True;
      cbdpag.Enabled := True;
      cbdpag.SetFocus;

      messageBox(handle,'Forma de pagamento inválido !'+#13+'Pedido selecionado gera cobrança financeira.',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;

  if (cbcred.Text = '0') and (CBSTCO.Text = 'BANCÁRIO') then
  begin
    cbcred.SetFocus;
    messageBox(handle,'Opção de crédito não permitido !'+#13+'Para crédito 0 (zero) utilizar cobrança em carteira.',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if (CBSTPD.Text = 'DEVOLUÇÃO') or (CBSTPD.Text = 'ABATIMENTO') then
  begin
    if CETCDE.Value > 0 then
    begin
      eddcli.SetFocus;
      messageBox(handle,'Valor total do pedido inválido !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;

  if CBSTPD.Text = '' then
  begin
    CBSTPD.SetFocus;
    messageBox(handle,'Tipo de pedido não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if CBSTCO.Text = '' then
  begin
    CBSTCO.SetFocus;
    messageBox(handle,'Tipo de cobrança não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;
  
  if CEIDCD.Value = 0 then
  begin
    CEIDCD.SetFocus;
    messageBox(handle,'Cliente não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if edcven.Text = '' then
  begin
    edcven.SetFocus;
    messageBox(handle,'Vendedor não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if edcrep.Text = '' then
  begin
    edcrep.SetFocus;
    messageBox(handle,'Representante não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if edcpag.Text = '' then
  begin
    edcpag.SetFocus;
    messageBox(handle,'Forma de pagamento não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_PED');
    SQL.Add('WHERE  VEN_TIPO = '''+CBSTPD.Text+'''');
    SQL.Add('AND    VEN_STA  = ''1''');
    Open;

    if fields[0].IsNull then
    begin
      CBSTPD.SetFocus;
      messageBox(handle,'Tipo de pedido não cadastrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_COB');
    SQL.Add('WHERE  VEN_TIPO = '''+CBSTCO.Text+'''');
    SQL.Add('AND    VEN_STA  = ''1''');
    Open;

    if fields[0].IsNull then
    begin
      CBSTCO.SetFocus;
      messageBox(handle,'Tipo de cobrança não cadastrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;

  with tab_pag do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM TAB_PAG');
    SQL.Add('WHERE  PAG_DPAG = '''+cbdpag.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      if cbdpag.Enabled then
      cbdpag.SetFocus;
      messageBox(handle,'Condição de pagamento não cadastrada !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if ((CBSTCO.Text = 'DINHEIRO') and (tab_pagPAG_D001.AsInteger >  1)) or
       ((CBSTCO.Text = 'DÉBITO')   and (tab_pagPAG_D001.AsInteger <> 0)) or
       ((CBSTCO.Text = 'DEBITO')   and (tab_pagPAG_D001.AsInteger <> 0)) or
       ((CBSTCO.Text = 'CHEQUE A VISTA')   and (tab_pagPAG_D001.AsInteger <> 0)) or
       ((CBSTCO.Text = 'VALE')   and (tab_pagPAG_D001.AsInteger = 0)) then
    begin
      CBSTCO.SetFocus;
      messageBox(handle,'Tipo de cobrança inválida para essa condição de pagamento !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;

  if psq_cli.Fields[0].IsNull then
  begin
    eddcli.SetFocus;
    messageBox(handle,'Cliente não cadastrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if Pos('DEVOLU',CBSTPD.Text) > 0 then
  begin
    edcdrd.Text := PESQUISA_PEDIDO;

    if edcdrd.Text = '0' then
    begin
      messageBox(handle,'Pedido de venda não informado ou não encontrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end else edcdrd.Text := '0';

  with consulta do
  begin
    if (edcdro.Text = '0') or (edcdro.Text = '') or (edcdro.Text = ' ') then
    begin
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_'+SLPrincipal.Values['ped_ven_cab']+',0) FROM RDB$DATABASE');
      Open;
      edhrom.Text := timetostr(time);
      edcdro.Text := inttostr(fields[0].AsInteger+1);
               ID := 0;
    end
    else       ID := strtoint(edcdro.Text);
  end;

  if (eddero.Text = '0') or (eddero.Text = '') then
      eddero.Text := edcdro.Text;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(QTDE),SUM(QTRL) FROM PED_VEN_ITE');
    Open;
  end;

  with consulta do
  begin
    if (edcdcx.Text = '0') or (edcdcx.Text = '') then
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAI_LAF');
      SQL.Add('WHERE  CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',eddcad.Date)+'''');
      Open;

      if fields[0].IsNull then
      begin
        messageBox(handle,'Caixa não encontrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;
      edcdcx.Text := Fields[0].AsString;
    end;
  end;

  try
    try
      ibSP.Close;
      ibSP.StoredProcName := 'SP_PED_VEN_CAB';
      ibSP.Prepare;

      ibSP.ParamByName('ped').Value  := 'PED_VEN_CAB';
      if frmprincipal.parametrosID.AsInteger > 1 then
      ibSP.ParamByName('ped').Value  := 'PED_VEN_CAB_'+strzero(frmprincipal.parametrosID.AsInteger,3);

      ibSP.ParamByName('id').Value   := ID;
      ibSP.ParamByName('cdcx').Value := edcdcx.Text;
     // ibSP.ParamByName('cdrd').Value := edcdrd.Text;
     // ibSP.ParamByName('derd').Value := edcdrd.Hint;
      ibSP.ParamByName('dero').Value := eddero.Text;
      ibSP.ParamByName('ctnr').Value := EmptyStr;
      ibSP.ParamByName('stpd').Value := CBSTPD.Text;
      ibSP.ParamByName('stco').Value := CBSTCO.Text;
      ibSP.ParamByName('stfi').Value := APED_DEST;
      ibSP.ParamByName('drom').Value := eddcad.Date;
      ibSP.ParamByName('hrom').Value := strtotime(edhrom.Text);
      ibSP.ParamByName('dexp').Value := 0;
      ibSP.ParamByName('hexp').Value := 0;
      ibSP.ParamByName('cexp').Value := 0;

      ibSP.ParamByName('ccli').Value := CEIDCD.Value;
      ibSP.ParamByName('cven').Value := edcven.Text;
      ibSP.ParamByName('crep').Value := edcrep.Text;
      ibSP.ParamByName('cpag').Value := edcpag.Text;
      ibSP.ParamByName('qtve').Value := consulta_S.Fields[0].AsFloat;
      ibSP.ParamByName('rlve').Value := consulta_S.Fields[1].AsInteger;
      ibSP.ParamByName('tdsc').Value := latdsc.Caption;
      ibSP.ParamByName('pdsc').Value := CEPDSC.Value;
      ibSP.ParamByName('cdsc').Value := 0;
      ibSP.ParamByName('adsc').Value := 0;
      ibSP.ParamByName('tsde').Value := CETSDE.Value;
      ibSP.ParamByName('tcde').Value := CETCDE.Value;

      if (CBSTPD.Text = 'DEVOLUÇÃO') then
      begin
        ibSP.ParamByName('qtve').Value := 0-consulta_S.Fields[0].AsFloat;
        ibSP.ParamByName('rlve').Value := -1;
        ibSP.ParamByName('stfi').Value := 'FATURADO';
      end;

      if (CBSTPD.Text = 'ABATIMENTO') and (consulta_S.Fields[0].AsFloat > 0) then
      begin
        ibSP.ParamByName('qtve').Value := 0-consulta_S.Fields[0].AsFloat;
        ibSP.ParamByName('rlve').Value := -1;
        ibSP.ParamByName('stfi').Value := 'FATURADO';
      end;

      ibSP.ParamByName('conc').Value := cbcred.Text;
      ibSP.ParamByName('vfrt').Value := CEVFRT.Value;
      ibSP.ParamByName('dtra').Value := cbdtra.Text;
      ibSP.ParamByName('obse').Value := Limpa_TXT(EMINFADCAD.Text);
      ibSP.ParamByName('sta').Value  := '0';
      ibSP.ParamByName('comi').Value := '0';

      ibSP.ExecProc;
      IBTra.CommitRetaining;
    except
      edcdro.Text := inttostr(ID);
      IBTra.RollbackRetaining;
      messageBox(handle,'Problemas na gravação do cabeçalho !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    { Itens Cancelados }
    with SQLSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT IDFK,IDCP FROM PED_VEN_ITE');
      SQL.Add('WHERE  FLAG = 1');
      ExecQuery;
    end;
    while not SQLSEdicao.Eof do
    begin
      with SQLConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM ' + oREPZero('PED_VEN_ITE','_',RECParametros.Id,3));
        SQL.Add('WHERE  IDEP = ''' + RECParametros.ID + '''');
        SQL.Add('AND    IDPK = ''' + EDCDRO.Text      + '''');

        SQL.Add('AND    IDFK = ''' + SQLSEdicao.Current.ByName('IDFK').AsString + '''');
        SQL.Add('AND    IDCP = ''' + SQLSEdicao.Current.ByName('IDCP').AsString + '''');
        ExecQuery;
      end;
      SQLSEdicao.Next;
    end;

    { Estoque Reservado }
    with SQLSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT IDFK,IDCP FROM PED_VEN_ITE');
      SQL.Add('WHERE  FLAG = 0');
      ExecQuery;
    end;
    while not SQLSEdicao.Eof do
    begin
      with SQLConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM CAD_PRO_RES');
        SQL.Add('WHERE  IDEP = ''' + RECParametros.ID + '''');
        SQL.Add('AND    IDPK = ''' + EDCDRO.Text      + '''');
        SQL.Add('AND    IDCP = ''' + SQLSEdicao.Current.ByName('IDCP').AsString + '''');
        ExecQuery;
      end;
      SQLSEdicao.Next;
    end;

    Edicao.DisableControls;
    Edicao.First;
    while not Edicao.Eof do
    begin
      try
        { Itens }
        ibSP.Close;
        ibSP.StoredProcName := 'SP_PED_VEN_ITE';
        ibSP.Prepare;

        ibSP.ParamByName('ped').Value  := 'PED_VEN_ITE';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('ped').Value  := 'PED_VEN_ITE_'+strzero(frmprincipal.parametrosID.AsInteger,3);

        ibSP.ParamByName('ID').Value   := EdicaoIDFK.AsInteger;
        ibSP.ParamByName('CCAB').Value := edcdro.Text;
        ibSP.ParamByName('ITEM').Value := oStrZero(EdicaoITEM.AsInteger,4);
        ibSP.ParamByName('CPRO').Value := EdicaoIDCP.AsInteger;
        ibSP.ParamByName('CPR2').Value := EdicaoIDCP.AsInteger;
        ibSP.ParamByName('DPRO').Value := EdicaoDECP.AsString;
        ibSP.ParamByName('DUNI').Value := EdicaoUCOM.AsString;
        ibSP.ParamByName('QTDE').Value := EdicaoQTDE.AsFloat;
        ibSP.ParamByName('QTRL').Value := EdicaoQTRL.AsInteger;
        ibSP.ParamByName('PREC').Value := EdicaoVPRC_PAD.AsFloat;
        ibSP.ParamByName('UNIT').Value := EdicaoVPRC_COM.AsFloat;
        ibSP.ParamByName('VDSC').Value := EdicaoPDSC.AsFloat;
        ibSP.ParamByName('TOTA').Value := EdicaoTCDE.AsFloat;
        ibSP.ParamByName('CDET').Value := EmptyStr;
        ibSP.ParamByName('COMI').Value := 0;
        ibSP.ParamByName('TPRC').Value := 0;
        ibSP.ParamByName('ABCD').Value := EmptyStr;
        ibSP.ParamByName('OBSE').Value := EmptyStr;
        ibSP.ParamByName('DCOR').Value := EdicaoDGCP.AsString;
        ibSP.ParamByName('PCOR').Value := EmptyStr;
        ibSP.ParamByName('DCO2').Value := EmptyStr;
        ibSP.ParamByName('PCO2').Value := EmptyStr;
        ibSP.ParamByName('QTPD').Value := EdicaoQTSP.AsFloat;
        ibSP.ParamByName('RLPD').Value := EdicaoRLSP.AsInteger;
        ibSP.ParamByName('DSEP').Value := EdicaoDESP.AsString;
        ibSP.ExecProc;

        { Estoque Reservado }
        if EdicaoQTSP.AsFloat = 0 then
        begin
          ibSP.Close;
          ibSP.StoredProcName := 'SP_CAD_PRO_RES';
          ibSP.Prepare;

          ibSP.ParamByName('est').Value  := 'CAD_PRO_RES';
          if frmprincipal.parametrosID.AsInteger > 1 then
          ibSP.ParamByName('est').Value  := 'CAD_PRO_RES_'+strzero(frmprincipal.parametrosID.AsInteger,3);

          ibSP.ParamByName('id').Value   := 0;
          ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
          ibSP.ParamByName('cdro').Value := 0;
          ibSP.ParamByName('cdpd').Value := edcdro.Text;
          ibSP.ParamByName('cdbx').Value := 0;
          ibSP.ParamByName('cpro').Value := EdicaoIDCP.AsInteger;
          ibSP.ParamByName('cusu').Value := edcven.Text;
          ibSP.ParamByName('dusu').Value := cbdven.Text;
          ibSP.ParamByName('cfav').Value := CEIDCD.Value;
          ibSP.ParamByName('dfav').Value := eddcli.Text;
          ibSP.ParamByName('dcad').Value := eddcad.Date;
          ibSP.ParamByName('docu').Value := trim(copy(eddero.Text,1,10));
          ibSP.ParamByName('flag').Value := 'R';
          ibSP.ParamByName('cdet').Value := '';
          ibSP.ParamByName('dsep').Value := EmptyStr;
          ibSP.ParamByName('debi').Value := 0;
          ibSP.ParamByName('cred').Value := EdicaoQTDE.AsFloat;
          ibSP.ParamByName('dmap').Value := '';
          ibSP.ParamByName('lote').Value := '';
          ibSP.ParamByName('ctnr').Value := '';
          ibSP.ExecProc;
        end;  
      except
        edcdro.Text := inttostr(ID);

        IBTra.RollbackRetaining;
        messageBox(handle,'Problemas na Gravação dos Itens do Pedido !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      IBTra.CommitRetaining;
      Edicao.Next;
    end;

    with SQLConsulta do
    begin
      if edcdrd.Text <> '0' then
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
        SQL.Add('SET    ROM_CDRD = '''+edcdro.Text+''',');
        SQL.Add('       ROM_DERD = '''+eddero.Text+'''');
        SQL.Add('WHERE  ID       = '''+edcdrd.Text+'''');
        ExecQuery;

        consulta.SQL.Clear;
        consulta.SQL.Add('SELECT ROM_CDBX FROM '+SLPrincipal.Values['ped_ven_cab']);
        consulta.SQL.Add('WHERE  ID = '''+edcdrd.Text+'''');
        consulta.Open;

        if consulta.Fields[0].AsInteger > 0 then
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['fin_rec_ban_bai']);
          SQL.Add('SET   FIN_CDRD = '''+edcdro.Text+''',');
          SQL.Add('      FIN_DERD = '''+eddero.Text+'''');
          SQL.Add('WHERE FIN_CDBX = '''+consulta.Fields[0].AsString+'''');
          ExecQuery;

          Close;
          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['fin_rec_ban_rec']);
          SQL.Add('SET   FIN_CDRD = '''+edcdro.Text+''',');
          SQL.Add('      FIN_DERD = '''+eddero.Text+'''');
          SQL.Add('WHERE FIN_CDBX = '''+consulta.Fields[0].AsString+'''');
          ExecQuery;

          Close;
          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['fin_rec_car_bai']);
          SQL.Add('SET   FIN_CDRD = '''+edcdro.Text+''',');
          SQL.Add('      FIN_DERD = '''+eddero.Text+'''');
          SQL.Add('WHERE FIN_CDBX = '''+consulta.Fields[0].AsString+'''');
          ExecQuery;

          Close;
          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['fin_rec_car_rec']);
          SQL.Add('SET   FIN_CDRD = '''+edcdro.Text+''',');
          SQL.Add('      FIN_DERD = '''+eddero.Text+'''');
          SQL.Add('WHERE FIN_CDBX = '''+consulta.Fields[0].AsString+'''');
          ExecQuery;
        end;
      end;
    end;

    IBTra.CommitRetaining;

    if ID = 0 then
    edcdro.Hint := 'Inclusão'
    else
    edcdro.Hint := 'Alteração';

    frmprincipal.Log_Eve('Vendas',LOWERCASE(CBSTPD.Text),edcdro.Hint,eddero.Text,eddero.Text,LOWERCASE(eddcli.Text),AUTORIZACAO,TP_AUTORIZACAO);

    IBTra.CommitRetaining;
    SISalva.Enabled := False;
    SISalva.Tag     := 1;
    ExecuteEvent;
  finally
    Edicao.EnableControls;
  end;

  Close;
end;

procedure Tfrmven_ped.PESQUISA_VENDEDOR(pesq,chave: string);
begin
  if (chave = '0') or (chave = '') then
  exit;

  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT USU_CUSU,USU_DUSU,USU_STA,USU_MENU,USU_STAV FROM CAD_USU');

      if pesq = 'C' then
      SQL.Add('WHERE  USU_CUSU = '''+chave+'''')
      else if pesq = 'F' then
      SQL.Add('WHERE  USU_DUSU = '''+chave+'''');
      Open;

      if fields[0].IsNull then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
        begin
        edcven.SetFocus;
        messageBox(handle,'Código do vendedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end
        else if pesq = 'F' then
        begin
        cbdven.SetFocus;
        messageBox(handle,'Nome do vendedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;

        Abort;
      end;

      if fields[2].AsString <> '0' then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
           edcven.SetFocus
        else if pesq = 'F' then
           cbdven.SetFocus;

        messageBox(handle,PChar('Vendedor '+fields[1].AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if fields[3].AsString <> 'VEN' then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
           edcven.SetFocus
        else if pesq = 'F' then
           cbdven.SetFocus;

        messageBox(handle,PChar('Vendedor '+fields[1].AsString+' não está habilitado para efetuar vendas !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        abort;
      end;

      if fields[4].AsString <> 'A' then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
        edcven.SetFocus
        else if pesq = 'F' then
        cbdven.SetFocus;

        if fields[4].AsString = 'I' then
        messageBox(handle,PChar('Login do Vendedor '+fields[1].AsString+' está inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK) else
        if fields[4].AsString = 'S' then
        messageBox(handle,PChar('Login do Vendedor '+fields[1].AsString+' está suspenso !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        abort;
      end;

      edcven.Text := fields[0].AsString;
      cbdven.Text := fields[1].AsString;
    end;
  finally
    SISalva.Enabled := True;
  end;
end;

procedure Tfrmven_ped.PESQUISA_REPRESENTANTE(pesq,chave: string);
begin
  if (chave = '0') or (chave = '') then
  exit;

  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,REP_FANT,REP_STA,REP_STAV FROM CAD_REP');
      if pesq = 'C' then
         SQL.Add('WHERE  ID = '''+chave+'''')
      else if pesq = 'F' then
         SQL.Add('WHERE  REP_FANT = '''+chave+'''');
      Open;

      if fields[0].IsNull then
      begin
        edcrep.Text := '';
        cbdrep.Text := '';

        if pesq = 'C' then
        begin
          edcrep.SetFocus;
          messageBox(handle,'Código do representante não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end
        else if pesq = 'F' then
        begin
          cbdrep.SetFocus;
          messageBox(handle,'Nome do representante não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;
        Abort;
      end;

      if fields[2].AsString <> '0' then
      begin
        edcrep.Text := '';
        cbdrep.Text := '';

        if pesq = 'C' then
           edcrep.SetFocus
        else if pesq = 'F' then
           cbdrep.SetFocus;

        messageBox(handle,PChar('Representante '+fields[1].AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if fields[3].AsString <> 'A' then
      begin
        edcrep.Text := '';
        cbdrep.Text := '';

        if pesq = 'C' then
           edcrep.SetFocus
        else if pesq = 'F' then
           cbdrep.SetFocus;

        if fields[3].AsString = 'I' then
           messageBox(handle,PChar('Representante '+fields[1].AsString+' inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
        else if fields[3].AsString = 'P' then
           messageBox(handle,PChar('Representante '+fields[1].AsString+' aguardando autorização para efetuar vendas !'),PChar(self.Caption),MB_ICONERROR+MB_OK);

        Abort;
      end;
      edcrep.Text := fields[0].AsString;
      cbdrep.Text := fields[1].AsString;
    end;
  finally
    SISalva.Enabled := True;
  end;
end;

procedure Tfrmven_ped.PESQUISA_FPAGTO(pesq,chave: string);
begin
  if (chave = '0') or (chave = '') then
  exit;

  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,PAG_DPAG,PAG_STA,PAG_PARC,PAG_DUPL FROM TAB_PAG');
      if pesq = 'C' then
         SQL.Add('WHERE  ID = '''+chave+'''')
      else if pesq = 'F' then
         SQL.Add('WHERE  PAG_DPAG = '''+chave+'''');
      Open;

      if fields[0].IsNull then
      begin
        edcpag.Text := '';
        cbdpag.Text := '';

        if pesq = 'C' then
        begin
          edcpag.SetFocus;
          messageBox(handle,'Código da forma de pagamento não cadastrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end
        else if pesq = 'F' then
        begin
          cbdpag.SetFocus;
          messageBox(handle,'Nome da forma de pagamento não cadastrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;
        Abort;
      end;

      if fields[2].AsString <> '0' then
      begin
        edcpag.Text := '';
        cbdpag.Text := '';
      
        if pesq = 'C' then
           edcpag.SetFocus;

        messageBox(handle,PChar('Forma de pagamento '+fields[1].AsString+' enviada para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      edcpag.Text := fields[0].AsString;
      cbdpag.Text := fields[1].AsString;

      if fields[4].AsString = 'SIM' then
      CBSTCO.Text := 'BANCÁRIO';
    end;
  finally
    SISalva.Enabled := True;
  end;
end;

procedure Tfrmven_ped.PESQUISA_CLIENTE(pesq,chave: string;cdsc: double;pevr,impo: boolean);
begin
  if (chave = '') or (chave = '0') then
  exit;

  try
    with psq_cli do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CLI_BAI,CLI_TLOG,CLI_LOGR,CLI_NUME,CLI_CEP,CLI_COMP,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,');
      SQL.Add('       CLI_VDSC,CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,CLI_VULT,CLI_DDD,CLI_TEL1,REP_FANT,USU_DUSU,CLI_STPD,CLI_DTRA,CLI_DUSU,');
      SQL.Add('       TRIM(CAST(SUBSTRING(CLI_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) CLI_OBSO');
      SQL.Add('FROM   CAD_CLI');
      SQL.Add('LEFT   OUTER JOIN CAD_USU ON CAD_CLI.CLI_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('LEFT   OUTER JOIN CAD_REP ON CAD_CLI.CLI_CREP = CAD_REP.ID');

      if pesq = 'I' then
      SQL.Add('WHERE  CAD_CLI.ID = '''+chave+'''')
      else if pesq = 'C' then
      SQL.Add('WHERE  CLI_CNPJ LIKE ''%'+edcnpj.Text+'%''')
      else if pesq = 'F' then
      SQL.Add('WHERE  CLI_FANT LIKE ''%'+chave+'%''')
      else if pesq = 'R' then
      SQL.Add('WHERE  CLI_RAZA LIKE ''%'+chave+'%''');

      Open;
      Last;
    end;

    if psq_cli.RecNo = 0 then
       oException(Nil,'Cliente não Cadastrado');

    if psq_cli.RecNo = 1 then
    begin
      if psq_cliCLI_STAV.AsString <> 'A' then
         oException(Nil,'Cliente ' + IFThen(psq_cliCLI_STAV.AsString = 'S','Suspenso','Inativo'));

      CEIDCD.Value := psq_cliID.AsInteger;
      edcnpj.Text  := psq_cliCLI_CNPJ.AsString;
      eddcli.Text  := psq_cliCLI_FANT.AsString;

      LACD_DTCA.Caption := 'Desde ' + FormatDateTime('dd/mm/yyyy',psq_cliCLI_DCAD.AsDateTime);
      LACD_DTCA.Refresh;

      if (Frmprincipal.parametrosPAR_CEND.AsString = '1') and (TRUNC(CEIDCD.Value) <> CEIDCD.Tag) then
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT CLI_TLOV,CLI_LOGV,CLI_NUMV,CLI_COMV,CLI_CEPV,CLI_BAIV,CLI_CIDV,CLI_ESTV FROM CAD_CLI');
        SQL.Add('WHERE  ID = '''+CEIDCD.Text+'''');
        Open;

        if (fields[0].AsString <> '') and (fields[1].AsString <> '') and (fields[2].AsString <> '') and (EMINFADCAD.TAG = 0) then
        begin
          EMINFADCAD.Lines.Clear;
          EMINFADCAD.Lines.Add('Entrega: '+fields[0].AsString+' '+fields[1].AsString+', '+fields[2].AsString+' '+fields[3].AsString+' Cep '+fields[4].AsString+' '+fields[5].AsString+' '+fields[6].AsString+' '+fields[7].AsString);
        end else
        if (psq_cliCLI_TLOG.AsString <> '') and (psq_cliCLI_LOGR.AsString <> '') and (psq_cliCLI_NUME.AsString <> '') and (EMINFADCAD.TAG = 0) then
        begin
          EMINFADCAD.Lines.Clear;
          EMINFADCAD.Lines.Add('Entrega: '+psq_cliCLI_TLOG.AsString+' '+psq_cliCLI_LOGR.AsString+', '+psq_cliCLI_NUME.AsString+' '+psq_cliCLI_COMP.AsString+' Cep '+copy(psq_cliCLI_CEP.AsString,1,5)+'-'+copy(psq_cliCLI_CEP.AsString,6,3)+' '+psq_cliCLI_BAI.AsString+' '+psq_cliCLI_CID.AsString+' '+psq_cliCLI_ESTA.AsString);
        end;
      end;

      EMINFADFIN.Lines.Clear;
      EMINFADFIN.Lines.Text := TRIM(psq_cliCLI_OBSO.AsString);

      if (EMINFADFIN.Text <> '') and (TRUNC(CEIDCD.Value) <> CEIDCD.Tag) then
      begin
        PCPrincipal.ActivePageIndex := 1;
        ShowMessage(PChar('Cliente '+eddcli.Text+' com ocorrência registrado !')+#13+'Leia com atenção.');
      end;

      if psq_cliCLI_DPAG.AsString <> '' then
      begin
        with consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT ID FROM TAB_PAG');
          SQL.Add('WHERE  PAG_STA  = ''0''');
          SQL.Add('AND    PAG_DPAG = '''+psq_cliCLI_DPAG.AsString+'''');
          Open;

          if not fields[0].IsNull then
          begin
            edcpag.Text := fields[0].AsString;
            cbdpag.Text := psq_cliCLI_DPAG.AsString;
          end;
        end;
      end;

      if pevr then
      begin
        if frmprincipal.cad_usuUSU_MENU.AsString <> 'VEN' then
        cbdven.Text := psq_cliUSU_DUSU.AsString else
        cbdven.Text := frmprincipal.cad_usuUSU_DUSU.AsString;
        edcven.Text := '';

        cbdrep.Text := psq_cliREP_FANT.AsString;
        edcrep.Text := '';
      end;

      if cbdven.Text <> '' then
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT USU_CUSU,USU_STA,USU_MENU FROM CAD_USU');
        SQL.Add('WHERE  USU_DUSU = '''+cbdven.Text+'''');
        Open;

        if fields[0].IsNull then
        begin
          edcven.SetFocus;
          edcven.Text := '';
          cbdven.Text := '';
          messageBox(handle,PChar('Vendedor '+cbdven.Text+' não cadastrado !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;

        if fields[1].AsString <> '0' then
        begin
          edcven.SetFocus;
          edcven.Text := '';
          cbdven.Text := '';
          messageBox(handle,PChar('Vendedor '+cbdven.Text+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;

        if fields[2].AsString <> 'VEN' then
        begin
          edcven.SetFocus;
          edcven.Text := '';
          cbdven.Text := '';
          messageBox(handle,PChar('Vendedor '+cbdven.Text+' não está habilitado para efetuar vendas !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        end else
        edcven.Text := fields[0].AsString;
      end;

      if cbdrep.Text <> '' then
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID,REP_STA,REP_STAV,REP_FANT FROM CAD_REP');
        SQL.Add('WHERE  REP_FANT = '''+cbdrep.Text+'''');
        Open;

        if fields[0].IsNull then
        begin
          edcrep.SetFocus;
          edcrep.Text := '';
          cbdrep.Text := '';
          messageBox(handle,PChar('Representante '+cbdrep.Text+' não cadastrado !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;

        if fields[2].AsString <> 'A' then
        begin
          edcrep.SetFocus;
          edcrep.Text := '';
          cbdrep.Text := '';
          Showmessage('Representante '+fields[3].AsString+' inativo !');
        end;

        if fields[1].AsString <> '0' then
        begin
          edcrep.SetFocus;
          edcrep.Text := '';
          cbdrep.Text := '';
          Showmessage('Representante '+fields[3].AsString+' enviado para a lixeira !');
        end else
        edcrep.Text := fields[0].AsString;
      end;
    end else
    begin
      frmcad_cli := TFrmcad_cli.Create(self);
      with frmcad_cli.cadastro do
      begin
        SQL.Clear;
        SQL.Add('SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CLI_BAI,CLI_TLOG,CLI_LOGR,CLI_NUME,CLI_CEP,CLI_COMP,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,');
        SQL.Add('       CLI_VDSC,CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,CLI_VULT,CLI_DDD,CLI_TEL1,REP_FANT,USU_DUSU,CLI_STPD,CLI_DTRA,CLI_DUSU,');
        SQL.Add('       TRIM(CAST(SUBSTRING(CLI_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) CLI_OBSO');
        SQL.Add('FROM   CAD_CLI');
        SQL.Add('LEFT   OUTER JOIN CAD_USU ON CAD_CLI.CLI_CVEN = CAD_USU.USU_CUSU');
        SQL.Add('LEFT   OUTER JOIN CAD_REP ON CAD_CLI.CLI_CREP = CAD_REP.ID');

        if pesq = 'C' then
        SQL.Add('WHERE  CLI_CNPJ LIKE ''%'+edcnpj.Text+'%''')
        else if pesq = 'F' then
        SQL.Add('WHERE  CLI_FANT LIKE ''%'+eddcli.Text+'%''');
        SQL.Add('AND    CLI_STA  = 0');

        if pesq = 'I' then
        begin
        SQL.Add('ORDER BY CAD_CLI.ID');
        frmcad_cli.dbgConsulta.FocusedColumn := 0;
        end
        else if pesq = 'C' then
        begin
        SQL.Add('ORDER BY CLI_CNPJ');
        frmcad_cli.dbgConsulta.FocusedColumn := 1;
        end
        else if pesq = 'F' then
        begin
        SQL.Add('ORDER BY CLI_FANT');
        frmcad_cli.dbgConsulta.FocusedColumn := 1;
        end
        else if pesq = 'R' then
        begin
        SQL.Add('ORDER BY CLI_RAZA');
        frmcad_cli.dbgConsulta.FocusedColumn := 2;
        end;

        Open;
      end;

      frmcad_cli.Show;
    end;
  finally
    if psq_cliCLI_STPD.AsInteger > 0 then
    PESQUISA_TIPO('ID',psq_cliCLI_STPD.AsString);

    if psq_cliCLI_DTRA.AsString <> '' then
    cbdtra.Text := psq_cliCLI_DTRA.AsString;

    SISalva.Enabled := True;
  end;
end;

procedure Tfrmven_ped.ABRE_TABELA;
begin
  oOTransact(TSheild);
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM PED_VEN_ITE');
    ExecQuery;
  end;
  oRTransact(TSheild);
end;

procedure Tfrmven_ped.edtsdeKeyPress(Sender: TObject; var Key: Char);
begin
  if CBSTPD.Text <> 'ABATIMENTO' then
     key := #0;
end;

procedure Tfrmven_ped.siINCClick(Sender: TObject);
begin
  ActiveControl := Nil;
  if Edicao.State = dsBrowse then
  Edicao.Append;
end;

procedure Tfrmven_ped.siALTClick(Sender: TObject);
begin
  ActiveControl := Nil;
  if (Edicao.State = dsBrowse) and (Edicao.RecNo > 0) then
  Edicao.Edit;
end;

procedure Tfrmven_ped.siDELClick(Sender: TObject);
begin
  if Edicao.State = dsBrowse then
  begin
    if yesno(handle,'Excluir Item ?') =   mrNo then
       abort;

    if EdicaoQTSP.AsFloat > 0 then
    oException(Nil,'Produto em processo de separação !');

    if EdicaoIDFK.AsInteger > 0 then
    begin
      Edicao.Edit;
      EdicaoFLAG.Value := 1;
      Edicao.Post;
    end else
    Edicao.Delete;
  end;
end;

procedure Tfrmven_ped.siSAVClick(Sender: TObject);
begin
  if Edicao.State in [dsEdit,dsInsert] then
     Edicao.Post;
end;

procedure Tfrmven_ped.siCANClick(Sender: TObject);
begin
  Edicao.Cancel;
end;

procedure Tfrmven_ped.edderoKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmven_ped.edcvenValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcven.Text = '' then
  begin
    cbdven.Text := '';
    abort;
  end;

  PESQUISA_VENDEDOR('C',edcven.Text);
end;

procedure Tfrmven_ped.cbdvenExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    PESQUISA_VENDEDOR('F',cbdven.Text);
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmven_ped.edcrepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcrep.Text = '' then
  begin
    cbdrep.Text := '';
    abort;
  end;

  PESQUISA_REPRESENTANTE('C',edcrep.Text);
end;

procedure Tfrmven_ped.cbdrepExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    PESQUISA_REPRESENTANTE('F',cbdrep.Text);
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;


procedure Tfrmven_ped.edcpagValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcpag.Text = '' then
  begin
    cbdpag.Text := '';
    abort;
  end;
  
  PESQUISA_FPAGTO('C',edcpag.Text);
end;

procedure Tfrmven_ped.cbdpagExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    PESQUISA_FPAGTO('F',cbdpag.Text);
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmven_ped.edpdscValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Aplicar Desconto Normal',False) then
  begin
    if not RETORNA_LOGIN('Permissão para aplicar desconto') then
    begin
      ShowMessage('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
    end;
  end else
  begin
    if (frmprincipal.cad_usuUSU_DESC.AsFloat < CEPDSC.Value) and
       (frmprincipal.cad_usuUSU_DESC.AsFloat > 0) then
    begin
      ShowMessage('Valor do desconto aplicado é superior ao seu limite autorizado !'+#13+'Limite: '+formatfloat('#,0.00%',frmprincipal.cad_usuUSU_DESC.AsFloat));
      if not RETORNA_LOGIN('Permissão para aplicar desconto') then
      begin
        ShowMessage('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
      end;
    end;
  end;

  oRefresh(Edicao);
end;

procedure Tfrmven_ped.DBGEdicaoVPRC_COMValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (Edicao.State in [dsEdit,dsInsert]) and (not oEmpty(DBGEdicao.EditingText)) then
  EdicaoVPRC_PAD.AsFloat := oTextToValor(DBGEdicao.EditingText,9); { Preço de tabela atualizado conforme preço digitado  }
end;

procedure Tfrmven_ped.DBGEdicaoPDSCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (Edicao.State in [dsEdit,dsInsert]) and (not oEmpty(DBGEdicao.EditingText)) then
  EdicaoPDSC.Value := oTextToValor(DBGEdicao.EditingText);
end;

procedure Tfrmven_ped.CBSTPDExit(Sender: TObject);
var Ctrl: TWinControl;
begin
  try
    if edstpd.Text <> CBSTPD.Text then
    begin
      SISalva.Enabled := True;
      PESQUISA_TIPO('VEN_TIPO',CBSTPD.Text);

      _PED_PRC_ACR;
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmven_ped.latdscClick(Sender: TObject);
begin
  if latdsc.Caption = '%' then
     latdsc.Caption := '$'
  else
     latdsc.Caption := '%';
  latdsc.Update;
end;

procedure Tfrmven_ped.DBGEdicaoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Estoque }
    if AColumn = DBGEdicaoEPE_QTDE then
    if ANode.Values[DBGEdicaoEPE_QTDE.Index] < 0 then
    begin
      AColor      := $00002FEC;
      AFont.Color := clWhite;
    end else
    if ANode.Values[DBGEdicaoEPE_QTDE.Index] = 0 then
    begin
      AColor      := clInfoBk;
      AFont.Color := clBlack;
    end;

    { Expedição }
    if ANode.Values[DBGEdicaoQTSP.Index] > 0 then
    begin
      AColor      := clWindowText;
      AFont.Color := clHighLightText;
    end;

    { Descontos }
    if AColumn = DBGEdicaoPDSC then
    begin
      if ANode.Values[DBGEdicaoPDSC.Index] > 0 then
      AColor      := clInfoBk else
      AColor      := clWhite;
      AFont.Color := clWindowText;
    end;  
  end;
end;

procedure Tfrmven_ped.DBGEdicaoSKUValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var
    cpro: string;
begin
  cpro := DBGEdicao.EditingText;

  if not (Edicao.State in [dsEdit,dsInsert]) or (cpro = '') then
  exit;

  if (frmprincipal.parametrosPAR_FANT.AsString = 'MIXXON') or
     (frmprincipal.parametrosPAR_FANT.AsString = 'SQUAFF') or
     (frmprincipal.parametrosPAR_FANT.AsString = 'FOR WHY') then
  begin
    if copy (cpro,3,1) <> '-' then
    cpro := copy(cpro,1,2)+'-'+copy(cpro,3,3);
  end;

  if (frmprincipal.parametrosPAR_TIPO.AsString = '0') or (frmprincipal.parametrosPAR_TIPO.AsString = '1') or (frmprincipal.parametrosPAR_TIPO.AsString = '4') then
  cpro := RETORNA_PRODUTO(cpro);

  if (copy(cpro,1,2) = '55') and (length(cpro) = 13) then
  begin
    cpro := copy(cpro,1,12);
    PESQUISA_PRODUTO('Barra',cpro,1);
  end else
  begin
    if frmprincipal.parametrosPAR_PGRD.AsString = '0' then
    PESQUISA_PRODUTO('Referencia',cpro,0) else
    PESQUISA_PRODUTO('Produto',cpro,0);
  end;
end;

procedure Tfrmven_ped.DBGEdicaoDECPValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var
    cpro: string;
begin
 cpro := DBGEdicao.EditingText;

  if not (Edicao.State in [dsEdit,dsInsert])then
  exit;

  if EdicaoIDCP.AsInteger > 0 then
  begin
    if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Alterar Descrição',False) then
    begin
      if not RETORNA_LOGIN('Permissão para alterar a descrição do produto') then
      Databaseerror('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
    end;
  end;
  
  if EdicaoIDCP.AsInteger = 0 then
  PESQUISA_PRODUTO('Descrição',cpro,0);
end;

procedure Tfrmven_ped.DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 DBGEdicao.SetFocus;
                 if Edicao.State = dsBrowse then
                 DBGEdicao.FocusedColumn := DBGEdicao.FocusedColumn + 1 else
                 begin
                   if EdicaoSKU.AsString <> '' then
                   begin
                     if (DBGEdicao.FocusedColumn = 1) or (DBGEdicao.FocusedColumn = 2) or (DBGEdicao.FocusedColumn = 3) or
                        (DBGEdicao.FocusedColumn = 4)  then
                     begin
                       DBGEdicao.FocusedColumn := RETORNA_FOCO('QTDE');
                     end else
                     DBGEdicao.FocusedColumn := DBGEdicao.FocusedColumn + 1;

                     if ((DBGEdicao.Columns[DBGEdicao.FocusedAbsoluteIndex-1].Name = 'DBGEdicaoQTDE'    ) and (EdicaoQTDE.AsFloat > 0) and (EdicaoVPRC_COM.AsFloat > 0)) or
                        ((DBGEdicao.Columns[DBGEdicao.FocusedAbsoluteIndex-1].Name = 'DBGEdicaoQTRL'    ) and (EdicaoQTDE.AsFloat > 0) and (EdicaoVPRC_COM.AsFloat > 0)) or
                        ((DBGEdicao.Columns[DBGEdicao.FocusedAbsoluteIndex-1].Name = 'DBGEdicaoVPRC_COM') and (EdicaoQTDE.AsFloat > 0) and (EdicaoVPRC_COM.AsFloat > 0)) or
                        ((DBGEdicao.Columns[DBGEdicao.FocusedAbsoluteIndex-1].Name = 'DBGEdicaoPDSC'    ) and (EdicaoQTDE.AsFloat > 0) and (EdicaoVPRC_COM.AsFloat > 0))
                        then
                     begin
                       referencia := EdicaoSKU.AsString;
                       Edicao.Next;
                       if Edicao.Eof then
                       begin
                         Edicao.Append;
                         if (frmprincipal.parametrosPAR_PECA.AsString = '1') and (referencia <> '') then
                         PESQUISA_PRODUTO('Produto',referencia,0);
                       end else
                       DBGEdicao.FocusedColumn := DBGEdicao.FocusedColumn - 1;
                     end;
                   end;
                 end;
               end;
    VK_INSERT: if Edicao.State = dsBrowse then            siINC.Click;
    VK_DELETE: if Edicao.State = dsBrowse then            siDEL.Click;
    VK_ESCAPE: if Edicao.State = dsBrowse then close else siCAN.Click;
  end;
end;

procedure Tfrmven_ped.CBSTCOExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if (copy(CBSTCO.Text,1,5) = 'DEVOL') or (copy(CBSTCO.Text,1,5) = 'ABATI') then
    begin
      CBSTCO.Text := '';
      oException(Nil,'Tipo de cobrança inválido !'+#13+'Para devoluções ou abatimentos utilize o campo TIPO DE PEDIDO');
    end;

    _PED_PRC_ACR;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmven_ped.edctnrValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if TAG = 0 then
  SISalva.Enabled := True;
end;

procedure Tfrmven_ped.eddcadExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if (TAG = 0) and (eddrom.Date <> eddcad.Date) then
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAI_LAF');
      SQL.Add('WHERE  CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',eddcad.Date)+'''');
      Open;

      if fields[0].IsNull then
      begin
        messageBox(handle,'Caixa não encontrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;
      edcdcx.Text := Fields[0].AsString;
      eddrom.Date := eddcad.Date;
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmven_ped.psq_cliAfterOpen(DataSet: TDataSet);
begin
  if psq_cliID.AsInteger > 0 then
  begin
  end;  
end;

procedure Tfrmven_ped.ExecuteEvent;
begin
  if not ALockWindowUpdate then
     if (EEvent.Registered) and (RECDefault.Event <> EmptyStr) then
         try
           oOTransact(TEvent);

           SPEvent.StoredProcName := 'SP_EVENT';
           SPEvent.Prepare;
           SPEvent.Params[0].AsString := RECDefault.Event;
           SPEvent.ExecProc;

           oCTransact(TEvent);

           RECDefault.Edited := True;
         except
           on E: Exception do
           begin
             RECDefault.Selected := False;
             RECDefault.Edited   := False;

             oCTransact(TEvent,ltRollback);
             oRefresh(Edicao,False);

             oException(Nil,'Falha ao tentar salvar evento !'  +#13+
                            'Evento: '    +RECDefault.Event+'.'+#13+#13+
                            'Formulário: '+Self.Name+'.'       +#13+#13+
                            'Error Code: '+E.Message+'.');
           end;
         end else oRefresh(Edicao);
end;

procedure Tfrmven_ped.CEVFRTValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  SISalva.Enabled := True;
  oRefresh(Edicao);
end;

procedure Tfrmven_ped.CEPDSCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Aplicar Desconto Normal',False) then
  begin
    if not RETORNA_LOGIN('Permissão para aplicar desconto') then
    begin
      ShowMessage('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
      CEPDSC.Reset;
    end;
  end
  else
  begin
    if (frmprincipal.cad_usuUSU_DESC.AsFloat < CEPDSC.Value) and
       (frmprincipal.cad_usuUSU_DESC.AsFloat > 0) then
    begin
      ShowMessage('Valor do desconto aplicado é superior ao seu limite autorizado !'+#13+'Limite: '+formatfloat('#,0.00%',frmprincipal.cad_usuUSU_DESC.AsFloat));
      if not RETORNA_LOGIN('Permissão para aplicar desconto') then
      begin
        ShowMessage('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
        CEPDSC.Reset;
      end;
    end;
  end;

  oRefresh(Edicao);
end;

procedure Tfrmven_ped._PED_HST;
begin
  with PED_HST do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT');

    if CEIDCD.Value = 1 then
    SQL.Add('FIRST 500');

    SQL.Add('PK.IDPK ,PK.DEPK,PK.DTCA AS DTPK,PK.STPD,PK.STCO,PK.RECO,TB_PG.DESCRICAO AS DEPG,PK.DEST,');
    SQL.Add('CV.LOGIN AS DECV,CR.FANTASIA AS DECR,LG_SP.LOGIN AS DESP,PK.DTSP,CT.FANTASIA AS DECT,PK.VFRT,');
    SQL.Add('FK.IDFK,FK.IDCP,CP.SKU,');
    SQL.Add('FK.DECP,COALESCE(FK.DGCP,'''') AS DGCP,');
    SQL.Add('FK.UCOM,FK.QTDE,');
    SQL.Add('FK.VPRC_COM,FK.PDSC,FK.TCDE');

    SQL.Add('FROM ' + oREPZero('PED_VEN_CAB','_',RECParametros.Id,3) + ' AS PK');
    SQL.Add('JOIN ' + oREPZero('PED_VEN_ITE','_',RECParametros.Id,3) + ' AS FK ON (FK.IDPK = PK.IDPK)');

    SQL.Add('JOIN TAB_USER AS CV    ON (CV.ID    = PK.IDCV)');
    SQL.Add('JOIN TAB_USER AS LG_SP ON (LG_SP.ID = PK.IDSP)');
    SQL.Add('JOIN CAD_REP  AS CR    ON (CR.ID    = PK.IDCR)');
    SQL.Add('JOIN CAD_TRA  AS CT    ON (CT.ID    = PK.IDCT)');

    SQL.Add('JOIN TAB_PAG AS TB_PG ON (TB_PG.ID = PK.CDPG)');
    SQL.Add('JOIN CAD_PRO AS CP    ON (CP.IDCP  = FK.IDCP)');

    SQL.Add('WHERE PK.IDCD = ''' + CEIDCD.Text + '''');
    SQL.Add('ORDER BY PK.DTCA DESC');

    Prepare;
    Open;
  end;
end;

procedure Tfrmven_ped.DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject;
  Field: TField);
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

procedure Tfrmven_ped.IMG_PADClick(Sender: TObject);
begin
  if Assigned(FRMIMG_PAD_INF) then FRMIMG_PAD_INF.BringToFront else
  begin
    FRMIMG_PAD_INF := TFRMIMG_PAD_INF.Create(Self,IMG_PAD.Picture,EDIMG_PAD.Text,EdicaoSKU.AsString,EdicaoDGCP.AsString,EdicaoDECP.AsString,EdicaoCMP_PAD.AsString,EdicaoGRP_NO.AsString,EdicaoCAT_NO.AsString,EdicaoXPAIS.AsString,EdicaoFPAIS.AsString);
    FRMIMG_PAD_INF.Show;
  end;
end;

procedure Tfrmven_ped.EdicaoAfterOpen(DataSet: TDataSet);
begin
  { Imagens }
  if CAD_PRO_IMG_CDN.State = dsInactive then
     CAD_PRO_IMG_CDN.Open;

  { Sumário }
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(QTDE) AS QTDE,COUNT(*) AS ITEM,SUM(QTRL) AS QTRL,SUM(TSDE) AS TSDE,SUM(TCDE) AS TCDE,SUM(VIPI) AS VIPI,SUM(VST) AS VST,SUM(PSBR) AS PSBR,SUM(PSLQ) AS PSLQ');
    SQL.Add('FROM   PED_VEN_ITE ');
    SQL.Add('WHERE  FLAG = 0');
    ExecQuery;

    CEITEM.Value := Current.ByName('ITEM').AsInteger;
    CEQTDE.Value := Current.ByName('QTDE').AsFloat;
    CEQTRL.Value := Current.ByName('QTRL').AsInteger;

    CETSDE.Value := Current.ByName('TSDE').AsFloat;
    CETCDE.Value := Current.ByName('TCDE').AsFloat;

    CEVIPI.Value := Current.ByName('VIPI').AsFloat;

    CEPSBR.Value := Current.ByName('PSBR').AsFloat;
    CEPSLQ.Value := Current.ByName('PSLQ').AsFloat;
  end;

  if CETCDE.Value <> 0 then
     if LATDSC.Caption = '%' then
     begin
       CEPDSC.Value := CEPDSC.Value;
       CEVDSC.Value := RoundTO((CETDSC.Value / 100) * CETCDE.Value,-2);
     end;

  { Totais }
  CETCDE.Value := CETCDE.Value - CEVDSC.Value; // Total
  CETCDE.Value := CETCDE.Value + CEVFRT.Value; // Frete

  { Devoluções e/ou Abatimentos }
  if (Pos(LeftStr(CBSTPD.Text,3),'DEVABA') > 0) then
  begin
    CETSDE.Value := Abs(CETSDE.Value) * -1;
    CETCDE.Value := Abs(CETCDE.Value  + CEVIPI.Value) * -1;
  end;

  siINC.Enabled := True;
  siALT.Enabled := True;
  siDEL.Enabled := True;
  siSAV.Enabled := False;
  siCAN.Enabled := False;

  if TAG = 0 then
  if Showing then
  DBGEdicao.SetFocus;
end;

procedure Tfrmven_ped.EdicaoNewRecord(DataSet: TDataSet);
begin
  EdicaoID.Value   := 0;
  EdicaoIDFK.Value := 0;
  EdicaoIDEP.Value := RECParametros.ID;

  EdicaoCDRO.Value := 0;
  EdicaoCDET.Value := 0;
  EdicaoIDPK.Value := 0;

  EdicaoIP.Value   := RECParametros.IP;
  EdicaoHOST.Value := RECParametros.HOST;

  EdicaoEPE_QTDE.Value := 0;
  EdicaoEPE_QTRL.Value := 0;

  EdicaoQTDE.Value := 0;
  EdicaoQTRL.Value := 1;

  EdicaoIDSP.Value := 0;
  EdicaoQTSP.Value := 0;
  EdicaoRLSP.Value := 0;

  EdicaoPACR.Value := 0;
  EdicaoVACR.Value := 0;

  EdicaoPDSC.Value := 0;
  EdicaoVDSC.Value := 0;

  EdicaoPIPI.Value := 0;
  EdicaoVIPI.Value := 0;
  
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT MAX(ITEM) FROM PED_VEN_ITE');
    SQL.Add('WHERE  FLAG = 0');
    ExecQuery;
    EdicaoITEM.Value := Current.Vars[0].AsInteger + 1;
  end;
end;

procedure Tfrmven_ped.EdicaoBeforeCancel(DataSet: TDataSet);
begin
  siINC.Enabled := True;
  siALT.Enabled := True;
  siDEL.Enabled := True;
  siSAV.Enabled := False;
  siCAN.Enabled := False;

  if EdicaoId.TAG = 0 then
  begin
    Edicao.Close;
    Edicao.Open;
    ABORT;
  end;
end;

procedure Tfrmven_ped.EdicaoBeforeInsert(DataSet: TDataSet);
begin
  EdicaoId.Tag := EdicaoId.AsInteger;

  if Showing then
  begin
    DBGEdicaoSKU.Field.FocusControl;
    DBGEdicao.SetFocus;
  end;
end;

procedure Tfrmven_ped.EdicaoAfterInsert(DataSet: TDataSet);
begin
  if TAG = 0 then
  begin
    siINC.Enabled := False;
    siALT.Enabled := False;
    siDEL.Enabled := False;
    siSAV.Enabled := True;
    siCAN.Enabled := True;

    DBGEdicaoSKU.Field.FocusControl;
    DBGEdicao.SetFocus;
  end;
end;

procedure Tfrmven_ped.EdicaoAfterEdit(DataSet: TDataSet);
begin
  if TAG = 0 then
  begin
    siINC.Enabled := False;
    siALT.Enabled := False;
    siDEL.Enabled := False;
    siSAV.Enabled := True;
    siCAN.Enabled := True;

    DBGEdicao.SetFocus;
  end;
end;

procedure Tfrmven_ped.EdicaoAfterDelete(DataSet: TDataSet);
begin
  SISalva.Enabled := True;
  oRefresh(Edicao);
end;

procedure Tfrmven_ped.EdicaoBeforePost(DataSet: TDataSet);
begin
  if EdicaoIDCP.AsInteger > 0 then
  if EdicaoSKU.AsString = EmptyStr then
  DataBaseError('Código do produto não pode ficar em branco !') else
  if EdicaoDECP.AsString = EmptyStr then
  DataBaseError('Descrição do produto não pode ficar em branco !') else
  if EdicaoQTDE.AsFloat = 0 then
  DataBaseError('Quantidade do produto não pode ficar em branco !');

  EdicaoQTRL.Value := IFThen(EdicaoQTDE.AsFloat = 0,0,1);
end;

procedure Tfrmven_ped.EdicaoAfterPost(DataSet: TDataSet);
begin
  if TAG = 0 then
  begin
    siINC.Enabled := True;
    siALT.Enabled := True;
    siDEL.Enabled := True;
    siSAV.Enabled := False;
    siCAN.Enabled := False;

    SISalva.Enabled := True;
    oRefresh(Edicao);
  end;
end;

procedure Tfrmven_ped.CEIDCDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CEIDCD.Tag := TRUNC(CEIDCD.Value);
  PESQUISA_CLIENTE('I',CEIDCD.Text,0,True,False);

  CBSTPD.SetFocus;
  _PED_HST;
end;

procedure Tfrmven_ped.edcnpjValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CEIDCD.Tag := TRUNC(CEIDCD.Value);
  PESQUISA_CLIENTE('C',edcnpj.Text,0,True,False);

  CBSTPD.SetFocus;
  _PED_HST;
end;

procedure Tfrmven_ped.eddcliValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CEIDCD.Tag := TRUNC(CEIDCD.Value);
  PESQUISA_CLIENTE('F',eddcli.Text,0,True,False);

  CBSTPD.SetFocus;
  _PED_HST;
end;

procedure Tfrmven_ped.DTSEdicaoDataChange(Sender: TObject; Field: TField);
begin
  DBGEdicaoSKU.DisableEditor  := (EdicaoQTSP.AsFloat > 0);
  DBGEdicaoDECP.DisableEditor := (EdicaoQTSP.AsFloat > 0);
  DBGEdicaoQTDE.DisableEditor := (EdicaoQTSP.AsFloat > 0);
end;

procedure Tfrmven_ped._PED_PRC_ACR;
begin
  { Acréscimo de 5% }
  if TAG = 0 then
     try
       if (Edicao.State in [dsEdit,dsInsert]) then
       if (EdicaoIDCP.AsInteger > 0) and (EdicaoSKU.AsString <> EmptyStr) and (EdicaoTCDE.AsFloat > 0) then
       Edicao.Post else
       Edicao.Cancel;

       Edicao.DisableControls;
       Edicao.First;
       while not Edicao.Eof do
       begin
         TAG := 0;

         Edicao.Edit;
         EdicaoPACR.Value := IFThen((CBSTCO.Text = '30/30') and (CBSTPD.Text = 'FATURADO'),5,0); { Acréscimo de 5% }

         TAG := 1;

         Edicao.Post;
         Edicao.Next;
       end;

       oRefresh(Edicao);
     finally
       Edicao.EnableControls;
       TAG := 0;
     end;
end;

procedure Tfrmven_ped.EdicaoQTDEValidate(Sender: TField);
begin
  { Totais }
  if TAG = 0 then
  begin
    EdicaoTSDE.Value := EdicaoQTDE.AsFloat * EdicaoVPRC_PAD.AsFloat; { Sub Total  }
    EdicaoTCDE.Value := EdicaoQTDE.AsFloat * EdicaoVPRC_COM.AsFloat; { Total      }
    EdicaoVACR.Value := EdicaoTCDE.AsFloat - EdicaoTSDE.AsFloat;     { Acréscimos }
    EdicaoVDSC.Value := EdicaoTSDE.AsFloat - EdicaoTCDE.AsFloat;     { Descontos  }

    { IPI }
    if EdicaoPIPI.AsFloat > 0 then
    EdicaoVIPI.Value := EdicaoTCDE.AsFloat + ((EdicaoTCDE.AsFloat * EdicaoPIPI.AsFloat) / 100);
  end;
end;

procedure Tfrmven_ped.EdicaoVPRC_PADValidate(Sender: TField);
begin
  { Preço Tabela }
  if TAG = 0 then
  EdicaoVPRC_COM.Value := EdicaoVPRC_PAD.AsFloat - (EdicaoVPRC_PAD.AsFloat * (EdicaoPDSC.AsFloat / 100));
end;

procedure Tfrmven_ped.EdicaoPACRValidate(Sender: TField);
begin
  { Acréscimos % }
  if TAG = 0 then
  EdicaoVPRC_PAD.Value := EdicaoVPRC_PAD_INI.AsFloat + (EdicaoVPRC_PAD.AsFloat * (EdicaoPACR.AsFloat / 100));
end;

procedure Tfrmven_ped.EdicaoPDSCValidate(Sender: TField);
begin
  { Acréscimos % }
  if TAG = 0 then
  EdicaoVPRC_COM.Value := EdicaoVPRC_PAD.AsFloat - (EdicaoVPRC_PAD.AsFloat * (EdicaoPDSC.AsFloat / 100));
end;

procedure Tfrmven_ped.edderoChange(Sender: TObject);
begin
  SISalva.Enabled := (TAG = 0);
end;

procedure Tfrmven_ped.DBGPED_HSTCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Estoque }
    if AColumn = DBGPED_HSTDGCP then
    if ANode.Values[DBGPED_HSTDGCP.Index] <> EmptyStr then
    begin
      AColor      := clHighLightText;
      AFont.Color := clWindowText;
      AFont.Style := [fsBold];
    end else
  end;
end;

procedure Tfrmven_ped.DTSPED_HSTDataChange(Sender: TObject; Field: TField);
begin
  DBGPED_HST.ApplyBestFit(DBGPED_HSTSKU );
  DBGPED_HST.ApplyBestFit(DBGPED_HSTDGCP);
end;

end.
