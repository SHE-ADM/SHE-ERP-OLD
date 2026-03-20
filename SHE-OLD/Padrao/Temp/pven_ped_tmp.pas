unit pven_ped_tmp;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math, StrUtils,
  FMTBcd, IBEvents, rxSpeedbar, IBSQL;

type
  Tfrmven_ped_tmp = class(TForm)
    DTSEdicao: TDataSource;
    PNLGRD: TPanel;
    PNLEdicao: TPanel;
    PNLConsulta: TPanel;
    GBEdicao: TGroupBox;
    GBConsulta: TGroupBox;
    ILEdicao: TImageList;
    SBEdicao: TSpeedBar;
    SSEdicao: TSpeedbarSection;
    SIEInclui: TSpeedItem;
    SIEAltera: TSpeedItem;
    SIEExclui: TSpeedItem;
    SIESalva: TSpeedItem;
    SIECancela: TSpeedItem;
    PNLPrincipal: TPanel;
    PNLPedido: TPanel;
    PNLME: TPanel;
    GBFavorecido: TGroupBox;
    LAIDCL: TLabel;
    LADECL: TLabel;
    EDDECL: TdxMaskEdit;
    GBPedido: TGroupBox;
    LADEPV: TLabel;
    LAIDCV: TLabel;
    LAIDCR: TLabel;
    LACDPG: TLabel;
    LACDPD: TLabel;
    LACDCO: TLabel;
    PEDEPG: TdxPickEdit;
    EDDEPV: TdxMaskEdit;
    PNLMD: TPanel;
    GBINFADPED: TGroupBox;
    PCINFADPED: TdxPageControl;
    TSINFADPED: TdxTabSheet;
    EMINFADPED: TdxMemo;
    TSINFADFIN: TdxTabSheet;
    EMINFADFIN: TdxMemo;
    GBInfoAdicional: TGroupBox;
    PNLSumario: TPanel;
    GBSumario: TGroupBox;
    SLTSDE: TShape;
    LATSDE: TLabel;
    SLTCDE: TShape;
    LATCDE: TLabel;
    SLQTDE: TShape;
    LAQTDE: TLabel;
    SDTSDE: TShape;
    SDTCDE: TShape;
    SDQTDE: TShape;
    SLQTRL: TShape;
    LAQTRL: TLabel;
    SDQTRL: TShape;
    SLPSBR: TShape;
    LAPSBR: TLabel;
    SDPSBR: TShape;
    SLPSLQ: TShape;
    LAPSLQ: TLabel;
    SDPSLQ: TShape;
    CEQTDE: TdxCurrencyEdit;
    CEQTRL: TdxCurrencyEdit;
    CEPSBR: TdxCurrencyEdit;
    CEPSLQ: TdxCurrencyEdit;
    CETSDE: TdxCurrencyEdit;
    CETCDE: TdxCurrencyEdit;
    SLVIPI: TShape;
    LAVIPI: TLabel;
    SDVIPI: TShape;
    CEVIPI: TdxCurrencyEdit;
    LACTNR: TLabel;
    cad_cli_crd: TIBDataSet;
    cli_sta: TIBQuery;
    cli_staFIN_TITU: TIBStringField;
    cli_staFIN_DVEN: TDateField;
    cli_staFIN_VALO: TIBBCDField;
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
    psq_cliCLI_OBSO: TIBStringField;
    psq_cliCLI_DUSU: TIBStringField;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    SQLFKConsulta: TIBSQL;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    TSEdicao: TIBTransaction;
    SQLSEdicao: TIBSQL;
    ILMenu: TImageList;
    SBMenu: TSpeedBar;
    SSMenu: TSpeedbarSection;
    EDCNPJ: TdxMaskEdit;
    LACNPJ: TLabel;
    ladtra: TLabel;
    Label1: TLabel;
    IEMFRT: TdxImageEdit;
    laVFrete: TLabel;
    CEVFRT: TdxCurrencyEdit;
    cad_cli_crdID: TIntegerField;
    cad_cli_crdIDEP: TSmallintField;
    cad_cli_crdDTCA: TDateTimeField;
    cad_cli_crdDTST: TDateTimeField;
    cad_cli_crdIDCL: TIntegerField;
    cad_cli_crdNAFA: TSmallintField;
    cad_cli_crdVCRD: TIBBCDField;
    cad_cli_crdVPED: TIBBCDField;
    cad_cli_crdVDUP: TIBBCDField;
    cad_cli_crdVCAR: TIBBCDField;
    cad_cli_crdSCRD: TIBBCDField;
    cad_cli_crdFLAG: TSmallintField;
    cad_cli_crdCLI_CDEP: TIntegerField;
    cad_cli_crdCLI_CCLI: TIntegerField;
    cad_cli_crdCLI_CRED: TIBBCDField;
    cad_cli_crdCLI_NAFA: TSmallintField;
    cad_cli_crdPDSC: TIBBCDField;
    cad_cli_crdVDSC: TIBBCDField;
    DBGEdicao: TdxDBGrid;
    DBGEdicaoROM_CDOC: TdxDBGridMaskColumn;
    DBGEdicaoROM_CPRO: TdxDBGridMaskColumn;
    DBGEdicaoROM_CCLF: TdxDBGridMaskColumn;
    DBGEdicaoROM_DPRO: TdxDBGridMaskColumn;
    DBGEdicaoROM_DCOR: TdxDBGridPickColumn;
    DBGEdicaoROM_DUNI: TdxDBGridPickColumn;
    DBGEdicaoROM_QDIS: TdxDBGridMaskColumn;
    DBGEdicaoROM_QTDE: TdxDBGridCalcColumn;
    DBGEdicaoROM_QTRL: TdxDBGridMaskColumn;
    DBGEdicaoROM_UNIT: TdxDBGridCurrencyColumn;
    DBGEdicaoROM_TSDE: TdxDBGridCurrencyColumn;
    DBGEdicaoROM_PDSC: TdxDBGridMaskColumn;
    DBGEdicaoROM_VDSC: TdxDBGridCurrencyColumn;
    DBGEdicaoROM_TCDE: TdxDBGridCurrencyColumn;
    DBGEdicaoROM_PIPI: TdxDBGridMaskColumn;
    DBGEdicaoROM_VIPI: TdxDBGridCurrencyColumn;
    DBGEdicaoROM_QTPD: TdxDBGridCurrencyColumn;
    DBGEdicaoROM_PTABI: TdxDBGridMaskColumn;
    DBGEdicaoROM_PTABF: TdxDBGridMaskColumn;
    IEIDCV: TdxImageEdit;
    IEIDCR: TdxImageEdit;
    CEIDCL: TdxCurrencyEdit;
    SIMSalva: TSpeedItem;
    SIMImporta: TSpeedItem;
    SIMClientes: TSpeedItem;
    SIMScore: TSpeedItem;
    SIMPedido: TSpeedItem;
    SIMNFE: TSpeedItem;
    SIMCFE: TSpeedItem;
    SIMFinaliza: TSpeedItem;
    SIMESC: TSpeedItem;
    IECDST: TdxImageEdit;
    LACDST: TLabel;
    IETPCO: TdxImageEdit;
    LATPCO: TLabel;
    IECDPD: TdxImageEdit;
    IECDCO: TdxImageEdit;
    IEIDCT: TdxImageEdit;
    IECTNR: TdxImageEdit;
    EDUF: TdxMaskEdit;
    Label3: TLabel;
    GBFT: TGroupBox;
    PNLFT: TPanel;
    PNLAmostra: TPanel;
    IFT: TImage;
    SLDSC: TShape;
    SDDSC: TShape;
    LADSC: TLabel;
    CEPDSC: TdxCurrencyEdit;
    CEVDSC: TdxCurrencyEdit;
    SLCOM: TShape;
    SDCOM: TShape;
    LACOM: TLabel;
    CEPCOM: TdxCurrencyEdit;
    CEVCOM: TdxCurrencyEdit;
    PNLPRC_TAB: TPanel;
    LAPRC_TAB_ABAIXO: TLabel;
    LAPRC_TAB_ACIMA_MIN: TLabel;
    LAPRC_TAB_ACIMA_MAX: TLabel;
    PNLPRC_TAB_ABAIXO: TPanel;
    PNLPRC_TAB_ACIMA_MIN: TPanel;
    PNLPRC_TAB_ACIMA_MAX: TPanel;
    Edicao: TIBDataSet;
    EdicaoID: TIntegerField;
    EdicaoROM_CDEP: TSmallintField;
    EdicaoROM_IDPK: TLargeintField;
    EdicaoROM_IDFK: TLargeintField;
    EdicaoROM_CDOC: TIntegerField;
    EdicaoROM_IPRO: TIntegerField;
    EdicaoROM_CART: TIBStringField;
    EdicaoROM_CCLF: TIBStringField;
    EdicaoROM_CPRO: TIBStringField;
    EdicaoROM_CBAR: TIBStringField;
    EdicaoROM_DPRO: TIBStringField;
    EdicaoROM_DCOR: TIBStringField;
    EdicaoROM_DUNI: TIBStringField;
    EdicaoROM_UCON: TIBStringField;
    EdicaoROM_QTUN: TIBBCDField;
    EdicaoROM_PESO: TIBBCDField;
    EdicaoROM_PSCN: TIBBCDField;
    EdicaoROM_METR: TIBBCDField;
    EdicaoROM_REND: TIBBCDField;
    EdicaoROM_QDIS: TIBBCDField;
    EdicaoROM_RLDI: TIntegerField;
    EdicaoROM_QTDE: TIBBCDField;
    EdicaoROM_QTRL: TIntegerField;
    EdicaoROM_PREC: TFloatField;
    EdicaoROM_PTABI: TFloatField;
    EdicaoROM_PTABF: TFloatField;
    EdicaoROM_PDSC: TIBBCDField;
    EdicaoROM_VDSC: TIBBCDField;
    EdicaoROM_UNIT: TFloatField;
    EdicaoROM_TSDE: TIBBCDField;
    EdicaoROM_TCDE: TIBBCDField;
    EdicaoROM_PIPI: TIBBCDField;
    EdicaoROM_VIPI: TIBBCDField;
    EdicaoROM_PSBR: TIBBCDField;
    EdicaoROM_PSLQ: TIBBCDField;
    EdicaoROM_QTPD: TIBBCDField;
    EdicaoROM_RLPD: TIntegerField;
    EdicaoROM_DSEP: TIBStringField;
    EdicaoROM_DTPD: TDateTimeField;
    EdicaoROM_FOTO: TBlobField;
    EdicaoROM_STAV: TIBStringField;
    EdicaoROM_FLAG: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdicaoBeforeCancel(DataSet: TDataSet);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure DTSEdicaoDataChange(Sender: TObject; Field: TField);
    procedure EdicaoROM_QTDEValidate(Sender: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure DBGEdicaoROM_UNITValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGEdicaoROM_QTDEValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoROM_CPROValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoROM_DPROValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoROM_QTRLValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure DBGEdicaoROM_VDSCValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure psq_cliAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGEdicaoROM_CCLFValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DTSEdicaoStateChange(Sender: TObject);
    procedure EdicaoAfterOpen(DataSet: TDataSet);
    procedure SIEIncluiClick(Sender: TObject);
    procedure SIEAlteraClick(Sender: TObject);
    procedure SIEExcluiClick(Sender: TObject);
    procedure SIESalvaClick(Sender: TObject);
    procedure SIECancelaClick(Sender: TObject);
    procedure DBGEdicaoDblClick(Sender: TObject);
    procedure CETSDEValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EMINFADPEDExit(Sender: TObject);
    procedure PEDEPGValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EDDEPVChange(Sender: TObject);
    procedure EdicaoAfterInsert(DataSet: TDataSet);
    procedure EdicaoBeforeInsert(DataSet: TDataSet);
    procedure EdicaoAfterScroll(DataSet: TDataSet);
    procedure SIMSalvaClick(Sender: TObject);
    procedure SIMNFeClick(Sender: TObject);
    procedure SIMCFeClick(Sender: TObject);
    procedure SIMFinalizaClick(Sender: TObject);
    procedure SIMIMPORTAClick(Sender: TObject);
    procedure CETCDEValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cad_cli_crdAfterOpen(DataSet: TDataSet);
    procedure EdicaoROM_PDSCValidate(Sender: TField);
    procedure EdicaoROM_PIPIValidate(Sender: TField);
    procedure EDDECLValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure SIMClientesClick(Sender: TObject);
    procedure SIMScoreClick(Sender: TObject);
    procedure SIMESCClick(Sender: TObject);
    procedure SIMPedidoClick(Sender: TObject);
    procedure IEIDCTChange(Sender: TObject);
    procedure IECDPDChange(Sender: TObject);
    procedure PNLFTResize(Sender: TObject);
  private
    { Private declarations }
    FMSGRodape  : String;
    FCaixa      : Boolean;
    RECPrincipal: TRECPrincipal;

    RECPedido: TRECPEdidos;

    { Definindo uma propriedade no form
      Criado um atributo FMSGCaption e um método SetMSGCaption para trabalhar com a propriedade
      FMSGCaption   - Encapsula a informação
      SetMSGCaption - Método de acesso que recebe a atualização da informação MSGCaption
      Não usarei o método SetMSGCaption para atribuir informação a FMSGRodpae,
      vou apenas utilizar a propriedade }

    { método para atribuição\validação de valor }
    procedure SetMSGRodape(const AValue: String);
    procedure SetCaixa(const AValue: Boolean);

    procedure _Edicao(AFlag: Integer = 0);
    procedure _ResizeGrid;
    procedure _CheckErrors;
    procedure _CheckConstraints;
    procedure _DTSEdicao;
    procedure _CPPSQ(ADTXT: String;AFTXT: String);
    procedure _FillCP;
    procedure _ExecEvent;
 public
    { Public declarations }
    property SMSGRodape: String read FMSGRodape write SetMSGRodape;
    property BCaixa: Boolean    read FCaixa     write SetCaixa;

    procedure PESQUISA_CLIENTE(pesq,chave: string);
    procedure PESQUISA_FPAGTO(pesq,chave: string);

    Constructor Create(AOwner: TComponent; const AIDPedido: Integer); reintroduce; overload;
  end;

var
  frmven_ped_tmp  : Tfrmven_ped_tmp;
  PTRProdutos : TPTRProdutos;
  Motivo      : String;
  InfAdMot    : TStringList;
  STFI        : String;
  CDFI        : Integer;
  AExecEstoque: Array of String;

implementation

uses uPrincipal, bPrincipal,
  pcad_cli, pctr_ped, pimporta_geral, pProduto_Devolucao_Cancelamento,
  pcad_cli_edi, qven_ped_bematech;

{$R *.dfm}

procedure Tfrmven_ped_tmp.SetMSGRodape(const AValue: String);
begin
  FMSGRodape := AValue;
end;

procedure Tfrmven_ped_tmp.SetCaixa(const AValue: Boolean);
begin
  FCaixa := AValue;
end;

Constructor Tfrmven_ped_tmp.Create(AOwner: TComponent; const AIDPedido: Integer);
begin
  inherited Create(AOwner);
end;

procedure Tfrmven_ped_tmp.FormCreate(Sender: TObject);
begin
  oIRECPedidos(RECPedido);
  oLockWindowUpdate;

  { Métodos }
  SMSGRodape := 'Inclusão de Pedido';
  BCaixa     := True;

  DBGEdicaoROM_CCLF.Visible := (RECUsuarios.Id = 66   );
  DBGEdicaoROM_QTRL.Visible := (RECParametros.EST_QTRL);

  DBGEdicaoROM_UNIT.DisableEditor := not (bPesquisaUsuarios('USU_AUTO','Vendas','Pedidos','Alterar Preço da Tabela'));
  InfAdMot := TStringList.Create;

  { Inicia array de controle de estoque }
  Initialize(AExecEstoque);
  SetLength (AExecEstoque,500);

  { Ajusta Posicionamento da Página }
             Screen.Cursor := crAppStart;
  RECPrincipal.FrmPosition := poDesigned;
                             _ResizeGrid;

  if (RECPrincipal.WorkArea) and (Screen.Height > 768) then
      RECPrincipal.WorkArea := False;

  if  Screen.Height <= 768 then
      RECPrincipal.MainArea := True;

  if (RECPrincipal.MainArea) and (Screen.Height > 900) then
      RECPrincipal.MainArea := False;

  if RECPrincipal.MainArea then
  begin
    FrmPrincipal.PNLPrincipal.Visible := False;
    FrmPrincipal.PNLUtil.Visible      := False;
  end;

  oOTransact(TSEdicao,ltRead_Only);
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM PED_VEN_ITE');
    ExecQuery;
  end;
  _Edicao;

  try
    oOTransact(TConsulta);
    with SQLConsulta do
    begin
      { Container }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.CON_CTNR FROM CAD_CON AS PK WHERE PK.ID > 0 ORDER BY 1');
      ExecQuery;
      while not eof do
      begin
        IECTNR.Values.Add(Current.Vars[0].AsString);
        IECTNR.Descriptions.Add(Current.Vars[0].AsString);
        next;
      end;

      { Transportadora }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.TRA_FANT FROM CAD_TRA AS PK WHERE PK.ID > 0 AND PK.TRA_STAV = ''A'' ORDER BY 2');
      ExecQuery;
      while not eof do
      begin
        IEIDCT.Values.Add(Current.Vars[0].AsString);
        IEIDCT.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

      { Vendedor }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.LOGIN FROM TAB_USER AS PK WHERE PK.ID > 0 AND PK.GRUPO = ''VEN'' AND PK.REST = ''A'' ORDER BY 2');
      ExecQuery;
      while not eof do
      begin
        IEIDCV.Values.Add(Current.Vars[0].AsString);
        IEIDCV.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

      { Representante }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.REP_FANT FROM CAD_REP AS PK WHERE PK.ID > 0 AND PK.REP_STAV = ''A'' ORDER BY 2');
      ExecQuery;
      while not eof do
      begin
        IEIDCR.Values.Add(Current.Vars[0].AsString);
        IEIDCR.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

      { Tipos }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO AS PK WHERE PK.ID > 0 AND (PK.PED_TIPO_VEN = 1 OR PK.PED_TIPO_DEV = 1 OR PK.PED_TIPO_ABA = 1) ORDER BY 2');
      ExecQuery;
      while not eof do
      begin
        if ((not RECParametros.EST_QTRL) or (RECParametros.EST_QTRL) and (Pos(LeftStr(Current.Vars[1].AsString,3),'DEVABA') = 0)) then
        begin
          IECDPD.Values.Add(Current.Vars[0].AsString);
          IECDPD.Descriptions.Add(Current.Vars[1].AsString);
        end;
        next;
      end;

      { Cobrança }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO AS PK WHERE PK.ID > 0 AND PK.PED_TIPO_COB = 1 ORDER BY 2');
      ExecQuery;
      while not Eof do
      begin
        IECDCO.Values.Add(Current.Vars[0].AsString);
        IECDCO.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

      { Prazos }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.PAG_DPAG FROM TAB_PAG AS PK ORDER BY 1');
      ExecQuery;
      while not eof do
      begin
        PEDEPG.Items.Add(Current.Vars[0].AsString);
        next;
      end;

      { Status }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_STA AS PK WHERE PK.ID > 0 AND PK.PED_TIPO_VEN = 1 ORDER BY 2');
      ExecQuery;
      while not Eof do
      begin
        IECDST.Values.Add(Current.Vars[0].AsString);
        IECDST.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;
    end;
  finally
    oCTransact(TConsulta);
  end;
end;

procedure Tfrmven_ped_tmp.FormShow(Sender: TObject);
begin
  OnShow := Nil;

  if Assigned(frmctr_ped) then
     if frmctr_ped.SIARO.Tag = 0 then
     begin
       CEIDCL.Value := RECParametros.IDCL_PAD;
       EDDECL.Text  := RECParametros.DECL_PAD;
       EDUF.Text    := RECParametros.SGUF;

       IEIDCV.Text := IFThen((RECUsuarios.Grupo = 'VEN') or (RECUsuarios.Id = 66),RECUsuarios.Id,IntToStr(RECParametros.IDCV_PAD));
       IEIDCR.Text := RECParametros.IDCR_PAD;
       IEIDCT.Text := RECParametros.IDCT_PAD;

       IECDPD.Text := RECParametros.PED_CDPD;
       IECDCO.Text := RECParametros.PED_CDCO;
       IECDST.Text := RECParametros.PED_CDST;

       RECPedido.CDPG := RECParametros.PED_CDPG;
       PEDEPG.Text    := RECParametros.PED_DEPG;
     end else
     if frmctr_ped.SIARO.Tag > 0 then
        with frmctr_ped do
        begin
          SMSGRodape  := IFThen(SIARO.Tag = 1,'Alteração de Pedido',IFThen(SIARO.Tag = 2,'Devolução de Pedido','Abatimento de Pedido'));
          if SIARO.Tag = 1 then BCaixa := False else BCaixa := True;

          CEIDCL.Value := CadastroIDCL.AsInteger;
          PESQUISA_CLIENTE('I',CEIDCL.Text);

          IEIDCV.Text := CadastroIDCV.AsString;
          IEIDCR.Text := CadastroIDCR.AsString;

          IECDPD.Text := siARO.Caption;

          IECDCO.Text := CadastroSTCO.AsString;
          PEDEPG.Text := IFThen(SIARO.Tag = 1,CadastroDEPG.AsString,RECParametros.PED_DEPG);
          PESQUISA_FPAGTO('F',PEDEPG.Text);

          STFI := CadastroSTFI.AsString;

          { Pedido }
          RECPedido.IDPK := IntToStr(IFThen(SIARO.Tag = 1,cadastroID.AsInteger,0));
          RECPedido.DEPK := CadastroDEPV.AsString;
          EDDEPV.Text    := CadastroDEPV.AsString;
          RECPedido.DTPK := IFThen(SIARO.Tag = 1,CadastroDTPV.AsDateTime,RECParametros.DTServer);

          RECPedido.IDFK := IFThen(SIARO.Tag = 1,CadastroCDDV.AsInteger,CadastroId.AsInteger );
          RECPedido.DEFK := IFThen(SIARO.Tag = 1,CadastroDEDV.AsString ,CadastroDEPV.AsString);

          IETPCO.Text  := CadastroTPCO.AsString;
          IEMFRT.Text  := CadastroMFRT.AsString;
          IEIDCT.Tag   := CadastroIDCT.AsInteger;
          IEIDCT.Text  := CadastroDECT.AsString;
          IECTNR.Text  := CadastroCTNR.AsString;
          CEVFRT.Value := CadastroVFRT.AsFloat;

          RECPedido.CDCX := IFThen(SIARO.Tag = 1,CadastroCDCX.AsString  ,RECParametros.CDCX);

          EMINFADPED.Text  := CadastroINFADPED.AsString;

//          CETDSC.Value   := IFThen(CadastroTDSC.AsString = '%',CadastroPDSC.AsFloat,CadastroVDSC.AsFloat);

          if (SIARO.Tag = 3) and (CadastroSEPD.AsInteger = 1) then
              try
                oOTransact(FBird.TFBProdutos);
                Edicao.DisableControls;

                with SQLConsulta do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Add('SELECT   I.IDCP,I.DECP,I.DGCP,I.UCOM,SUM(I.QTDE) AS QTDE,SUM(I.QTRL) AS QTRL,AVG(I.PDSC) AS PDSC,AVG(I.VPRC_PAD) AS VPRC_PAD,AVG(I.VPRC_COM) AS VPRC_COM');
                  SQL.Add('FROM '  +SLPrincipal.Values['ped_ven_cab']+' AS P');
                  SQL.Add('JOIN '  +SLPrincipal.Values['rom_cab']    +' AS R ON (R.IDEP = P.IDEP AND R.ID   = P.CDRO)');
                  SQL.Add('JOIN '  +SLPrincipal.Values['rom_ite']    +' AS I ON (I.IDEP = P.IDEP AND I.IDPK = P.CDRO)');
                  SQL.Add('WHERE    P.ID = '''+RECPedido.IDFK+'''');
                  SQL.Add('GROUP BY IDCP,DECP,DGCP,UCOM');
                  ExecQuery;
                end;

                while not SQLConsulta.Eof do
                begin
                  Edicao.Append;
                  uPesquisa_Produto(RECParametros.Id,SQLConsulta.Current.ByName('IDCP').AsString,'ID');
                  _FillCP;

                  EdicaoROM_IPRO.Value := SQLConsulta.Current.ByName('IDCP'    ).AsInteger;
                  EdicaoROM_DPRO.Value := SQLConsulta.Current.ByName('DECP'    ).AsString;
                  EdicaoROM_DCOR.Value := SQLConsulta.Current.ByName('DGCP'    ).AsString;
                  EdicaoROM_DUNI.Value := SQLConsulta.Current.ByName('UCOM'    ).AsString;
                  EdicaoROM_QTDE.Value := SQLConsulta.Current.ByName('QTDE'    ).AsFloat;
                  EdicaoROM_QTRL.Value := SQLConsulta.Current.ByName('QTRL'    ).AsInteger;
                  EdicaoROM_PREC.Value := SQLConsulta.Current.ByName('VPRC_PAD').AsFloat;
                  EdicaoROM_VDSC.Value := SQLConsulta.Current.ByName('PDSC'    ).AsFloat;
                  EdicaoROM_UNIT.Value := SQLConsulta.Current.ByName('VPRC_COM').AsFloat;

                  EdicaoROM_TSDE.Value := EdicaoROM_QTDE.AsFloat * EdicaoROM_PREC.AsFloat;
                  EdicaoROM_VIPI.Value := EdicaoROM_TSDE.AsFloat *(EdicaoROM_PIPI.AsFloat /100);
                  EdicaoROM_TCDE.Value := EdicaoROM_TSDE.AsFloat + IFThen(RECUsuarios.Id = 66,EdicaoROM_VIPI.AsFloat,0);

                  Edicao.Post;

                  SQLConsulta.Next;
                end;
              finally
                oCTransact(FBird.TFBProdutos);
                Edicao.EnableControls;

                CETCDE.ReadOnly := False;
                CETCDE.Cursor   := crHandPoint;
              end;

          if (SIARO.Tag = 1) or ((SIARO.Tag > 1) and (CadastroSEPD.AsInteger = 0)) then
              try
                oOTransact(FBird.TFBProdutos);
                Edicao.DisableControls;
                FKCadastro.DisableControls;

                FKCadastro.First;
                while not FKCadastro.Eof do
                begin
                  Edicao.Append;
                  uPesquisa_Produto(RECParametros.Id,FKCadastroIDCP.AsString,'ID');
                  _FillCP;

                  EdicaoROM_IDFK.Value := FKCadastroID.AsInteger;
                  EdicaoROM_CDEP.Value := FKCadastroIDEP.AsInteger;
                  EdicaoROM_IDPK.Value := FKCadastroIDPK.AsInteger;

                  EdicaoROM_CDOC.Value := FKCadastroITEM.AsInteger;
                  EdicaoROM_IPRO.Value := FKCadastroIDCP.AsInteger;
                  EdicaoROM_CBAR.Value := FKCadastroCEAN.AsString;

                  EdicaoROM_DPRO.Value := FKCadastroDECP.AsString;
                  EdicaoROM_DCOR.Value := FKCadastroDGCP.AsString;

                  EdicaoROM_DUNI.Value := FKCadastroUCOM.AsString;
                  EdicaoROM_UCON.Value := FKCadastroUCON.AsString;

                  EdicaoROM_QTDE.Value := FKCadastroQTDE.AsFloat;
                  EdicaoROM_QTRL.Value := FKCadastroQTRL.AsInteger;

                  EdicaoROM_PTABI.Value := FKCadastroVPRC_PAD_INI.AsFloat;
                  EdicaoROM_PTABI.Value := FKCadastroVPRC_PAD_FIM.AsFloat;

                  EdicaoROM_PREC.Value := FKCadastroVPRC_PAD.AsFloat;
                  EdicaoROM_PDSC.Value := FKCadastroPDSC.AsFloat;
                  EdicaoROM_VDSC.Value := FKCadastroVDSC.AsFloat;
                  EdicaoROM_UNIT.Value := FKCadastroVPRC_COM.AsFloat;

                  EdicaoROM_TSDE.Value := FKCadastroTSDE.AsFloat;
                  EdicaoROM_TCDE.Value := FKCadastroTCDE.AsFloat;

                  EdicaoROM_CCLF.Value := FKCadastroNCM.AsString;
                  EdicaoROM_PIPI.Value := FKCadastroPIPI.AsFloat;
                  EdicaoROM_VIPI.Value := FKCadastroVIPI.AsFloat;

                  EdicaoROM_PSBR.Value := FKCadastroPSBR.AsFloat;
                  EdicaoROM_PSLQ.Value := FKCadastroPSLQ.AsFloat;

                  { Expedição }
                  if SIARO.Tag = 1 then // somente para alteração
                  begin
                    EdicaoROM_QTPD.Value := FKCadastroQTSP.AsFloat;
                    EdicaoROM_RLPD.Value := FKCadastroRLSP.AsInteger;
                    EdicaoROM_DSEP.Value := FKCadastroDESP.AsString;
                    EdicaoROM_DTPD.Value := FKCadastroDTSP.AsDateTime;
                  end;

                  Edicao.Post;
                  FKCadastro.Next;
                end;
              finally
                oCTransact(FBird.TFBProdutos);
                Edicao.EnableControls;
                FKCadastro.EnableControls;
              end;
        end;
end;

procedure Tfrmven_ped_tmp.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Caption    := SMSGRodape;

  try
    if (RECParametros.STCX <> 'Caixa Aberto') and (BCaixa) then
    begin
      oErro(Handle,'Acesso Negado !'+#13+
                   'Abertura de caixa não registrada.');
      PostMessage(Handle, WM_CLOSE, 0, 0);
    end;

    { Registra Evento }
    with EEvent do
         try
           UnregisterEvents;
           Events.Add(oREPZero('CTR_PED','_',RECParametros.Id,3));
           RegisterEvents;
         except
           on E: Exception do
                 oErro(Handle,'Falha ao tentar registrar evento !'+#13+
                              'Evento: '+oREPZero('CTR_PED','_',RECParametros.Id,3)+'.'+#13+
                              'Formulário: '+Self.Name+'.'        +#13+#13+
                              'Error Code: '+E.Message);
         end;

    oRTransact(TSEdicao,ltRead_Only_Release_Commit);
  finally
    Screen.Cursor    := crDefault;
    SIMSalva.Enabled := False;
    Tag := 0;
  end;

  if Pos(LeftStr(Caption,3),'Inc') = 0 then
     DBGEdicao.SetFocus else
     EDDECL.SetFocus;

  if Pos(LeftStr(Caption,3),'DevAba') > 0 then
  begin
    { Cliente }
    CEIDCL.Enabled := False;
    EDCNPJ.Enabled := False;
    EDDECL.Enabled := False;

    { Vendedores }
    IEIDCV.Enabled := False;

    { Pedido }
    EDDEPV.Enabled := False;
    IECDPD.Enabled := False;
    IECDCO.Enabled := False;
    IETPCO.Enabled := False;
    PEDEPG.Enabled := False;
    IECTNR.Enabled := False;

    { Transporte }
    IEIDCT.Enabled := False;
    IEMFRT.Enabled := False;
    CEVFRT.Enabled := False;

    if (Pos(LeftStr(Caption,3),'Aba') = 0) and (RECParametros.EST_QTRL) then
    begin
      SIEInclui.Enabled  := False;
      SIEAltera.Enabled  := False;
      SIEExclui.Enabled  := False;
      SIESalva.Enabled   := False;
      SIECAncela.Enabled := False;
    end;  
  end;
end;

procedure Tfrmven_ped_tmp.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if SIMSalva.Enabled then
  begin
    if (Edicao.State in [dsInsert,dsEdit]) and (not oEmpty(EdicaoROM_TCDE.AsFloat)) then
        Edicao.Post;

    if Edicao.RecNo > 0 then
       case messageBox(handle,'Existem Alterações Pendentes !'+#13+
                              'Deseja Salvar ?',
                               PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
            mrCancel: Abort;
            mrNo    : SIMSalva.Enabled := False;
            mrYes   : try SIMSalva.Click;
                      finally if SIMSalva.Enabled then Abort;
                     end;
       end;
  end;
end;

procedure Tfrmven_ped_tmp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmven_ped_tmp.FormDestroy(Sender: TObject);
begin
  OnDestroy := Nil;

  try
    Screen.Cursor := crAppStart;

    try
      EEvent.UnRegisterEvents;
      oFTransact(TConsulta);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                 'Error Code: '+E.Message+'.'      +#13+
                                  Self.Caption+'.');
      end;
    end;

    try
      Finalize(RECPrincipal);
      FillChar(RECPrincipal,SizeOf(RECPrincipal),0);

      if PTRProdutos <> Nil then
         Dispose(PTRProdutos );

      InfAdMot.Free;

      oFRECPedidos(RECPedido);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                 'Error Code: '+E.Message+'.'        +#13+
                                  Self.Caption+'.');
      end;
    end;
  finally
    Screen.Cursor  := crDefault;
    Frmven_ped_tmp := Nil;
  end;
end;

procedure Tfrmven_ped_tmp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: SIECancela.Click;
       vk_return: if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo)) then
                  SelectNext (ActiveControl, True, True);
       40       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext (ActiveControl, True, True);
       38       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext(ActiveControl, False, True);
  end;
end;

procedure Tfrmven_ped_tmp.FormPaint(Sender: TObject);
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

    FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
    FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

    if RECPrincipal.WorkArea then
    begin
      Top    := Screen.WorkAreaTop;
      Left   := Screen.WorkAreaLeft;
      Width  := Screen.WorkAreaWidth;
      Height := Screen.WorkAreaHeight;
    end else
    if RECPrincipal.MainArea then
    begin
      Top    := 0;
      Left   := 0;
      Width  := R - L - 5;
      Height := H - T - 5;
    end else
    if RECPrincipal.FrmPosition = poDefault then
    begin
      Top    := IFThen(FormStyle = fsNormal,T,0);
      Left   := IFThen(FormStyle = fsNormal,L,0);
      Width  := IFThen(RECPrincipal.FrmPosition = poDefault,R - L - 5,0);
      Height := IFThen(RECPrincipal.FrmPosition = poDefault,H - T - 5,0);
    end else
    begin
      if RECPrincipal.FrmPosition = poDesigned then
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
    end;

    if RECUsuarios.Id = 0 then
       Caption := 'DIMENSÕES: Monitor: Altura = '+IntToStr(Screen.Height)+' Largura: '+IntToStr(Screen.Width)+' / '+
                  'Tela: Altura = '              +IntToStr(Self.Height  )+' Largura: '+IntToStr(Self.Width  );
  end;
end;

procedure Tfrmven_ped_tmp.FormResize(Sender: TObject);
begin
  if frmven_ped_tmp <> Nil then
     Paint;
end;

procedure Tfrmven_ped_tmp.SIMSalvaClick(Sender: TObject);
begin
  _CheckErrors;
  _CheckConstraints;

  oOTransact(TEdicao);
  with SQLEdicao do
  begin
    if RECPedido.IDPK = 0 then
    begin
      if cad_cli_crdVDSC.AsFloat > 0 then
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE CAD_CLI_CRD');
        SQL.Add('SET    VDSC = 0');
        SQL.Add('WHERE  IDEP = '''+RECParametros.Id+'''');
        SQL.Add('AND    IDCL = '''+CEIDCL.Text     +'''');
        ExecQuery;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_'+SLPrincipal.Values['ped_ven_cab']+',0) FROM RDB$DATABASE');
      ExecQuery;
      RECPedido.IDPK := IntToStr(Current.Vars[0].AsInteger + 1);
      if (EDDEPV.Text  = EmptyStr) or (EDDEPV.Text = '0') then
          EDDEPV.Text := RECPedido.IDPK;
    end;

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM CAD_PRO_RES');
    SQL.Add('WHERE  IDEP = '''+RECParametros.Id+'''');
    SQL.Add('AND    IDPK = '''+RECPedido.IDPK  +'''');
    ExecQuery;
  end;

  _Edicao(-1); // Abre todos registros, inclusive excluídos.
  try
    Edicao.DisableControls;
    Edicao.First;

    while not Edicao.Eof do
    begin
        SPEdicao.Close;
        SPEdicao.StoredProcName := 'SP_PED_VEN_ITE';
        SPEdicao.Prepare;

        SPEdicao.ParamByName('AID'  ).Value := EdicaoROM_IDFK.AsInteger;
        SPEdicao.ParamByName('AIDEP').Value := RECParametros.Id;
        SPEdicao.ParamByName('AIDCA').Value := RECUsuarios.Id;

        SPEdicao.ParamByName('AIDPK').Value := RECPedido.IDPK;
        SPEdicao.ParamByName('AITEM').Value := EdicaoROM_CDOC.AsString;

        SPEdicao.ParamByName('AIDCP').Value := EdicaoROM_IPRO.AsInteger;
        SPEdicao.ParamByName('ACEAN').Value := EdicaoROM_CBAR.AsString;

        SPEdicao.ParamByName('ADECP').Value := EdicaoROM_DPRO.AsString;
        SPEdicao.ParamByName('ADGCP').Value := EdicaoROM_DCOR.AsString;

        SPEdicao.ParamByName('AUCOM').Value := EdicaoROM_DUNI.AsString;
        SPEdicao.ParamByName('AUCON').Value := EdicaoROM_UCON.AsString;

        SPEdicao.ParamByName('AQTDE').Value := EdicaoROM_QTDE.AsFloat;
        SPEdicao.ParamByName('AQTRL').Value := EdicaoROM_QTRL.AsInteger;

        SPEdicao.ParamByName('AVPRC_PAD_INI').Value := EdicaoROM_PTABI.AsFloat;
        SPEdicao.ParamByName('AVPRC_PAD_FIM').Value := EdicaoROM_PTABF.AsFloat;

        SPEdicao.ParamByName('AVPRC_PAD').Value := EdicaoROM_PREC.AsFloat;
        SPEdicao.ParamByName('APDSC').Value     := EdicaoROM_PDSC.AsFloat;
        SPEdicao.ParamByName('AVDSC').Value     := EdicaoROM_VDSC.AsFloat;
        SPEdicao.ParamByName('AVPRC_COM').Value := EdicaoROM_UNIT.AsFloat;

        SPEdicao.ParamByName('ATSDE').Value := EdicaoROM_TSDE.AsFloat;
        SPEdicao.ParamByName('ATCDE').Value := EdicaoROM_TCDE.AsFloat;

        SPEdicao.ParamByName('ANCM' ).Value := EdicaoROM_CCLF.AsString;
        SPEdicao.ParamByName('APIPI').Value := EdicaoROM_PIPI.AsFloat;
        SPEdicao.ParamByName('AVIPI').Value := EdicaoROM_VIPI.AsFloat;

        SPEdicao.ParamByName('APSBR').Value := EdicaoROM_PSBR.AsString;
        SPEdicao.ParamByName('APSLQ').Value := EdicaoROM_PSLQ.AsString;

        SPEdicao.ParamByName('AIP'  ).Value := RECParametros.IP;
        SPEdicao.ParamByName('AHOST').Value := RECParametros.HOST;

        SPEdicao.ParamByName('AFLAG').Value := EdicaoROM_FLAG.AsInteger;
        SPEdicao.ExecProc;
      if Pos(LeftStr(IECDPD.Text,3),'DEV') > 0 then
      begin
        SPEdicao.Close;
        SPEdicao.StoredProcName := 'SP_PED_VEN_DEV';
        SPEdicao.Prepare;

        SPEdicao.ParamByName('AIDEP').Value       := RECParametros.Id;
        SPEdicao.ParamByName('AIDCA').Value       := RECUsuarios.Id;
        SPEdicao.ParamByName('AIDED').Value       := RECUsuarios.Id;
        SPEdicao.ParamByName('AIDPK').Value       := RECPedido.IDPK;
        SPEdicao.ParamByName('ACDPK').Value       := EDDEPV.Text;
        SPEdicao.ParamByName('ADTPK').Value       := RECPedido.DTPK;

        SPEdicao.ParamByName('AIDFK').Value       := RECPedido.IDFK;
        SPEdicao.ParamByName('ACDFK').Value       := RECPedido.DEFK;
        SPEdicao.ParamByName('ADTFK').Value       := RECPedido.DTPK;

        SPEdicao.ParamByName('AIDCL').Value       := CEIDCL.Value;
        SPEdicao.ParamByName('AIDCV').Value       := IEIDCV.Text;
        SPEdicao.ParamByName('AIDCR').Value       := IEIDCR.Text;
        SPEdicao.ParamByName('AIDCP').Value       := EdicaoROM_IPRO.AsInteger;
        SPEdicao.ParamByName('AARTIGO').Value     := EdicaoROM_CART.AsString;
        SPEdicao.ParamByName('APRODUTO').Value    := EdicaoROM_CPRO.AsString;
        SPEdicao.ParamByName('ADESCRICAO').Value  := EdicaoROM_DPRO.AsString;
        SPEdicao.ParamByName('ACOR').Value        := EdicaoROM_DCOR.AsString;
        SPEdicao.ParamByName('AUCOM').Value       := EdicaoROM_DUNI.AsString;
        SPEdicao.ParamByName('AQUANTIDADE').Value := EdicaoROM_QTDE.AsFloat;
        SPEdicao.ParamByName('AROLO').Value       := EdicaoROM_QTRL.AsInteger;
        SPEdicao.ParamByName('AVUPV').Value       := EdicaoROM_UNIT.AsFloat;
        SPEdicao.ParamByName('AMOTIVO').Value     := Motivo;
        SPEdicao.ParamByName('AINFADCAD').Value   := InfAdMot.Text;
        SPEdicao.ExecProc;
      end else
      if (RECPedido.BEPD) and (EdicaoROM_QTPD.AsFloat = 0) and (Pos(LeftStr(IECDPD.Text,3),'ABA') = 0) then
      begin
        SPEdicao.Close;
        SPEdicao.StoredProcName := 'SP_CAD_PRO_RES';
        SPEdicao.Prepare;

        SPEdicao.ParamByName('AIDEP').Value := RECParametros.Id;

        SPEdicao.ParamByName('ACDPV').Value := RECPedido.IDPK;
        SPEdicao.ParamByName('ADEPV').Value := EDDEPV.Text;
        SPEdicao.ParamByName('ADTPV').Value := RECPedido.DTPK;

        SPEdicao.ParamByName('AIDCL').Value := CEIDCL.Value;
        SPEdicao.ParamByName('ADECL').Value := EDDECL.Text;
        SPEdicao.ParamByName('AIDCV').Value := IEIDCV.Text;
        SPEdicao.ParamByName('ADECV').Value := IEIDCV.Descriptions[IEIDCV.Values.IndexOf(IEIDCV.Text)];
        SPEdicao.ParamByName('AIDCR').Value := IEIDCR.Text;
        SPEdicao.ParamByName('ADECR').Value := IEIDCR.Descriptions[IEIDCR.Values.IndexOf(IEIDCR.Text)];

        SPEdicao.ParamByName('AIDCP').Value := EdicaoROM_IPRO.AsInteger;
        SPEdicao.ParamByName('AQTDE').Value := EdicaoROM_QTDE.AsFloat;
        SPEdicao.ParamByName('AQTRL').Value := EdicaoROM_QTRL.AsInteger;
        SPEdicao.ExecProc;
      end;

      Edicao.Next;
    end;
    Edicao.EnableControls;
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      Edicao.EnableControls;
      oException(DBGEdicao,'Falha ao tentar registrar os itens do pedido !'  +#13+
                           'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                           'Error Code: '+E.Message+'.'+#13+
                            Caption+'.');
    end;
  end;

  try
    if Pos(LeftStr(IECDPD.Text,3),'ABA') > 0 then
    begin
      SPEdicao.Close;
      SPEdicao.StoredProcName := 'SP_PED_VEN_ABA';
      SPEdicao.Prepare;

      SPEdicao.ParamByName('AIDEP').Value     := RECParametros.Id;
      SPEdicao.ParamByName('AIDCA').Value     := RECUsuarios.Id;
      SPEdicao.ParamByName('AIDED').Value     := RECUsuarios.Id;
      SPEdicao.ParamByName('AIDPK').Value     := RECPedido.IDPK;
      SPEdicao.ParamByName('ACDPK').Value     := EDDEPV.Text;
      SPEdicao.ParamByName('ADTPK').Value     := RECPedido.DTPK;
      SPEdicao.ParamByName('AIDFK').Value     := RECPedido.IDFK;
      SPEdicao.ParamByName('ACDFK').Value     := RECPedido.DEFK;
      SPEdicao.ParamByName('ADTFK').Value     := RECPedido.DTPK;
      SPEdicao.ParamByName('AIDCL').Value     := CEIDCL.Value;
      SPEdicao.ParamByName('AIDCV').Value     := IEIDCV.Text;
      SPEdicao.ParamByName('AIDCR').Value     := IEIDCR.Text;
      SPEdicao.ParamByName('AVTPV').Value     := CETCDE.Value;
      SPEdicao.ParamByName('AMOTIVO').Value   := Motivo;
      SPEdicao.ParamByName('AINFADCAD').Value := InfAdMot.Text;
      SPEdicao.ExecProc;
    end;
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(DBGEdicao,'Falha ao tentar registrar abatimento !'+#13+
                           'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                           'Error Code: '+E.Message+'.'+#13+
                            Caption+'.');
    end;
  end;

  try
    SPEdicao.Close;
    SPEdicao.StoredProcName := 'SP_PED_VEN_CAB';
    SPEdicao.Prepare;

    SPEdicao.ParamByName('ped').Value  := oREPZero('PED_VEN_CAB','_',RECParametros.Id,3);
    SPEdicao.ParamByName('id').Value   := RECPedido.IDPK;
    SPEdicao.ParamByName('cdcx').Value := RECPedido.CDCX;
    SPEdicao.ParamByName('cdrd').Value := RECPedido.IDFK;
    SPEdicao.ParamByName('derd').Value := RECPedido.DEFK;
    SPEdicao.ParamByName('dero').Value := EDDEPV.Text;
    SPEdicao.ParamByName('ctnr').Value := IECTNR.Text;
    SPEdicao.ParamByName('stpd').Value := IECDPD.Text;
    SPEdicao.ParamByName('stco').Value := IECDCO.Text;
    SPEdicao.ParamByName('stfi').Value := STFI;
    SPEdicao.ParamByName('drom').Value := RECPedido.DTPK;
    SPEdicao.ParamByName('hrom').Value := time;
    SPEdicao.ParamByName('dexp').Value := 0;
    SPEdicao.ParamByName('hexp').Value := 0;
    SPEdicao.ParamByName('cexp').Value := 0;
    SPEdicao.ParamByName('ccli').Value := CEIDCL.Value;
    SPEdicao.ParamByName('cven').Value := IEIDCV.Text;
    SPEdicao.ParamByName('crep').Value := IEIDCR.Text;
    SPEdicao.ParamByName('cpag').Value := PEDEPG.Tag;
    SPEdicao.ParamByName('qtve').Value := CEQTDE.Value;
    SPEdicao.ParamByName('rlve').Value := CEQTRL.Value;
    SPEdicao.ParamByName('tdsc').Value := '%';
    SPEdicao.ParamByName('pdsc').Value := CEPDSC.Value;
    SPEdicao.ParamByName('cdsc').Value := 0;
    SPEdicao.ParamByName('adsc').Value := 0;
    SPEdicao.ParamByName('tsde').Value := CETSDE.Value;
    SPEdicao.ParamByName('tcde').Value := CETCDE.Value;

    SPEdicao.ParamByName('stfi').Value := STFI;

    SPEdicao.ParamByName('conc').Value := IETPCO.Text;
    SPEdicao.ParamByName('psbr').Value := CEPSBR.Value;
    SPEdicao.ParamByName('pslq').Value := CEPSLQ.Value;

    SPEdicao.ParamByName('vfrt').Value := CEVFRT.Value;
    SPEdicao.ParamByName('mfrt').Value := IEMFRT.Text;

    SPEdicao.ParamByName('dtra').Value := IEIDCT.Text;
    SPEdicao.ParamByName('obse').Value := EMINFADPED.Text;
    SPEdicao.ParamByName('sta').Value  := '0';
    SPEdicao.ParamByName('comi').Value := '0';
    SPEdicao.ExecProc;
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(DBGEdicao,'Falha ao tentar registrar pedido !'    +#13+
                           'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                           'Error Code: '+E.Message+'.'+#13+
                            Caption+'.');
    end;
  end;

  bExecEstoque(TEdicao,SQLEdicao,AExecEstoque);
  oCTransact  (TEdicao);

  oAviso(handle,'Pedido '+EDDEPV.Text+' '+IFThen(RECPedido.IDPK = 0,'Registrado','Atualizado')+' com Sucesso !');
  try
    if Pos(LeftStr(IECDPD.Text,3),'ABADEV') > 0 then bBAI_FINANCEIRO(0,StrToInt(RECPedido.IDPK));
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(DBGEdicao,'Falha ao tentar registrar contas a receber !'+#13+
                           'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                           'Erro: '+E.Message);
    end;
  end;

  SIMSalva.Tag        := 1;
  SIMSalva.Enabled    := False;
  SIMPedido.Enabled   := True;
  SIMNFe.Enabled      := True;
  SIMCFe.Enabled      := True;
  SIMFinaliza.Enabled := True;

  _ExecEvent;
  Close;
end;

procedure Tfrmven_ped_tmp.SIMIMPORTAClick(Sender: TObject);
begin
  FrmImporta_Geral := tFrmImporta_Geral.Create(Self);
  with FrmImporta_Geral do
  try
    cbTIPO.Text    := IFThen(Pos(LeftStr(IECDPD.Text,3),'DEV'   ) = 0,'PEDIDOS'     ,'DEVOLUÇÕES');
    cbTIPO.Tag     := IFThen(Pos(LeftStr(IECDPD.Text,3),'DEVABA') = 0,RECPedido.IDPK + 1,RECPedido.IDFK  );
    cbTIPO.Enabled := (Pos(LeftStr(IECDPD.Text,3),'DEVABA') = 0);
    cbFANT.Enabled := (Pos(LeftStr(IECDPD.Text,3),'DEVABA') = 0);

    ShowModal;
    if Editado then
    begin
      oRTransact(frmven_ped_tmp.TSEdicao);

      imp_ite.First;
      while not imp_ite.Eof do
      begin
        Edicao.Append;
        EdicaoROM_IPRO.Value  := imp_iteROM_IPRO.Value;
        EdicaoROM_CBAR.Value  := imp_iteROM_CBAR.Value;
        EdicaoROM_CART.Value  := imp_iteROM_CART.Value;
        EdicaoROM_CPRO.Value  := imp_iteROM_CPRO.Value;
        EdicaoROM_DPRO.Value  := imp_iteROM_DPRO.Value;
        EdicaoROM_DUNI.Value  := imp_iteROM_DUNI.Value;

        EdicaoROM_QTUN.Value  := imp_iteROM_QTUN.Value;
        EdicaoROM_PESO.Value  := imp_iteROM_PESO.Value;
        EdicaoROM_PSCN.Value  := imp_iteROM_PSCN.Value;
        EdicaoROM_METR.Value  := imp_iteROM_METR.Value;
        EdicaoROM_REND.Value  := imp_iteROM_REND.Value;

        EdicaoROM_QDIS.Value  := imp_iteROM_QDIS.AsFloat;
        EdicaoROM_RLDI.Value  := imp_iteROM_RLDI.AsInteger;

        EdicaoROM_QTDE.Value  := imp_iteROM_QTDE.Value;
        EdicaoROM_QTRL.Value  := imp_iteROM_QTRL.Value;

        EdicaoROM_PTABI.Value := imp_iteROM_PTABI.AsFloat;
        EdicaoROM_PTABF.Value := imp_iteROM_PTABF.AsFloat;
        EdicaoROM_PREC.Value  := imp_iteROM_PREC.Value;
        EdicaoROM_VDSC.Value  := imp_iteROM_PDSC.Value;
        EdicaoROM_UNIT.Value  := imp_iteROM_UNIT.Value;

        EdicaoROM_PIPI.Value  := imp_iteROM_PIPI.Value;
        EdicaoROM_FOTO.Value  := imp_iteROM_FOTO.Value;
        Edicao.Post;

        imp_ite.Next;
      end;

      if (Pos(LeftStr(IECDPD.Text,3),'DEVABA') > 0) and (Pos('Romaneio de Estoque',EMINFADPED.Text) = 0) then
          EMINFADPED.Lines.Append('Romaneio de Estoque Nº '+EDTXT.Text);
    end;
  finally
    FreeandNil(FrmImporta_Geral);
    oRefresh(Edicao);
  end;
end;

procedure Tfrmven_ped_tmp.SIMClientesClick(Sender: TObject);
begin
  if CEIDCL.Value = 0 then
     oException(Nil,'Cliente não Informado !');

  if CEIDCL.Value = RECParametros.IDCL_PAD then
     Abort;

  frmcad_cli_edi     := TFrmcad_cli_edi.Create(Self);
  frmcad_cli_edi.Tag := 1;
  frmcad_cli_edi.IDCliente := CEIDCL.Text;
  try frmcad_cli_edi.ShowModal;
  finally
    if frmcad_cli_edi.Editado then
    begin
      edcnpj.Text := frmcad_cli_edi.edcnpj.Text;
      EDDECL.Text := frmcad_cli_edi.edfant.Text;
    end;
    FreeAndNil(frmcad_cli_edi);
  end;
end;

procedure Tfrmven_ped_tmp.SIMScoreClick(Sender: TObject);
begin
  if CEIDCL.Value = 0 then
     oException(Nil,'Cliente não Informado !');

  if CEIDCL.Value = RECParametros.IDCL_PAD then
     Abort;

  uPSQSCORE(self,CEIDCL.Value,EDDEPV.Text);
end;

procedure Tfrmven_ped_tmp.SIMPedidoClick(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure Tfrmven_ped_tmp.SIMNFeClick(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure Tfrmven_ped_tmp.SIMCFeClick(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure Tfrmven_ped_tmp.SIMFinalizaClick(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure Tfrmven_ped_tmp.SIMESCClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmven_ped_tmp.SIEIncluiClick(Sender: TObject);
begin
  oAppend(Edicao,DBGEdicao,SIEInclui);
end;

procedure Tfrmven_ped_tmp.SIEAlteraClick(Sender: TObject);
begin
  oEdit(Edicao,DBGEdicao,SIEAltera);
end;

procedure Tfrmven_ped_tmp.SIEExcluiClick(Sender: TObject);
begin
  if oYesNo(handle,'Excluir Item Nº '+EdicaoROM_CDOC.AsString+' ?') = mrNo then
     Abort;

  if EdicaoROM_QTPD.AsFloat > 0 then
     oException(DBGEdicao,'Produto em processo de separação !');

  Edicao.Edit;
  EdicaoROM_FLAG.Value := 1;
  Edicao.Post;
end;

procedure Tfrmven_ped_tmp.SIESalvaClick(Sender: TObject);
begin
  oPost(Edicao,DBGEdicao,SIESalva);
end;

procedure Tfrmven_ped_tmp.SIECancelaClick(Sender: TObject);
begin
  oCancel(Edicao,DBGEdicao,SIECancela,Nil);
end;

procedure Tfrmven_ped_tmp.EdicaoAfterOpen(DataSet: TDataSet);
begin
  try
    with SQLSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(ROM_QTDE),SUM(ROM_QTRL),SUM(ROM_TSDE),SUM(ROM_TCDE),SUM(ROM_VIPI),SUM(ROM_PSBR),SUM(ROM_PSLQ)');
      SQL.Add('FROM   PED_VEN_ITE ');
      SQL.Add('WHERE  ROM_FLAG = 0');
      ExecQuery;

      CEQTDE.Value := Current.Vars[0].AsCurrency;
      CEQTRL.Value := Current.Vars[1].AsInteger;
      CETSDE.Value := Current.Vars[2].AsCurrency;
      CETCDE.Value := Current.Vars[3].AsCurrency;
      CEVIPI.Value := Current.Vars[4].AsCurrency;
      CEPSBR.Value := Current.Vars[5].AsCurrency;
      CEPSLQ.Value := Current.Vars[6].AsCurrency;
    end;

    { Descontos
    if CETCDE.Value <> 0 then
       if LATDSC.Caption = '%' then
       begin
         CEPDSC.Value := CETDSC.Value;
         CEVDSC.Value := RoundTO((CETDSC.Value / 100) * CETCDE.Value,-2);
       end else
       if LATDSC.Caption = '$' then
       begin
         CEPDSC.Value := RoundTO((CETDSC.Value * 100) / CETCDE.Value,-2);
         CEVDSC.Value :=  CETDSC.Value;
       end;     }

    { Totais }
    CETCDE.Value := CETCDE.Value - CEVDSC.Value; // Total
    CETCDE.Value := CETCDE.Value + CEVFRT.Value; // Frete
    if RECUsuarios.Id = 66 then
    CETCDE.Value := CETCDE.Value + CEVIPI.Value; // IPI

    { Devoluções e/ou Abatimentos }
    if (Pos(LeftStr(IECDPD.Text,3),'DEVABA') > 0) then
    begin
      CETSDE.Value := Abs(CETSDE.Value)*-1;
      CETCDE.Value := Abs(CETCDE.Value)*-1;
    end;
  finally Screen.Cursor := crDefault;
  end;
end;

procedure Tfrmven_ped_tmp.EdicaoAfterScroll(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    if EdicaoROM_DCOR.AsString <> EmptyStr then
       DBGEdicaoROM_DCOR.Visible := True;

    if EdicaoROM_PDSC.AsFloat > 0 then
       DBGEdicaoROM_VDSC.Visible := True;

    if EdicaoROM_PIPI.AsFloat > 0 then
    begin
      DBGEdicaoROM_PIPI.Visible := True;
      DBGEdicaoROM_VIPI.Visible := True;
    end;  
  end;        
end;

procedure Tfrmven_ped_tmp.EdicaoNewRecord(DataSet: TDataSet);
begin
  EdicaoID.Value        := 0;
  EdicaoROM_CDEP.Value  := RECParametros.Id;
  EdicaoROM_IDPK.Value  := 0;
  EdicaoROM_IDFK.Value  := 0;
  EdicaoROM_FLAG.Value  := 0;
  EdicaoROM_QDIS.Value  := 0;
  EdicaoROM_RLDI.Value  := 0;
  EdicaoROM_QTPD.Value  := 0;
  EdicaoROM_RLPD.Value  := 0;
  EdicaoROM_PREC.Value  := 0;
  EdicaoROM_PTABI.Value := 0;
  EdicaoROM_PTABF.Value := 0;
  EdicaoROM_PDSC.Value  := 0;
  EdicaoROM_VDSC.Value  := 0;
  EdicaoROM_UNIT.Value  := 0;
  EdicaoROM_TSDE.Value  := 0;
  EdicaoROM_TCDE.Value  := 0;
  EdicaoROM_PIPI.Value  := 0;
  EdicaoROM_VIPI.Value  := 0;
  EdicaoROM_PSBR.Value  := 0;
  EdicaoROM_PSLQ.Value  := 0;

  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT MAX(ROM_CDOC) FROM PED_VEN_ITE');
    SQL.Add('WHERE  ROM_FLAG = 0');
    ExecQuery;
    EdicaoROM_CDOC.Value := Current.Vars[0].AsInteger + 1;
  end;
end;

procedure Tfrmven_ped_tmp.EdicaoBeforeInsert(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
     EdicaoId.Tag := EdicaoId.AsInteger;
end;

procedure Tfrmven_ped_tmp.EdicaoAfterInsert(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
         DBGEdicao.FocusedColumn := IFThen(DBGEdicaoROM_CCLF.Visible,DBGEdicaoROM_CCLF.ColIndex,DBGEdicaoROM_CPRO.ColIndex);
end;

procedure Tfrmven_ped_tmp.EdicaoBeforePost(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    { Verifica Duplicidades }
    if Pos(LeftStr(IECDPD.Text,3),'ABADEV') = 0 then
       with SQLSEdicao do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT ROM_ITEM FROM PED_VEN_ITE');
         SQL.Add('WHERE  ID <> '''+EdicaoId.AsString+'''');
         SQL.Add('AND    ROM_CPRO = '''+EdicaoROM_CPRO.AsString+'''');
         ExecQuery;
         if not Eof then
            DataBaseError('Produto já Cadastrado !'+#13+
                          'Item Nº '+Current.Vars[0].AsString+'.');
       end;

    { Descrição }
    if EdicaoROM_DPRO.AsString = EmptyStr then
    begin
      DBGEdicao.SetFocus;
      DBGEdicao.FocusedColumn := DBGEdicaoROM_DPRO.ColIndex;
      DataBaseError('Descrição do produto não pode ficar em branco !');
    end;

    { Quantidade }
    if (EdicaoROM_CPRO.AsString <> EmptyStr) and (EdicaoROM_QTDE.AsFloat = 0) then
    begin
      DBGEdicao.SetFocus;
      DBGEdicao.FocusedColumn := DBGEdicaoROM_QTDE.ColIndex;
      DataBaseError('Quantidade não informada !');
    end;

    { Preço Padrão }
    if EdicaoROM_PREC.AsFloat = 0 then
       EdicaoROM_PREC.Value  := EdicaoROM_UNIT.AsFloat;

    { Situação }
    if EdicaoROM_STAV.AsString = 'I' then DataBaseError('Produto '+EdicaoROM_CPRO.AsString+' Inativo !');
    if EdicaoROM_STAV.AsString = 'P' then DataBaseError('Produto '+EdicaoROM_CPRO.AsString+' em Desenvolvimento !');
  end;

  { Peso Líquido }
  if  LeftStr(EdicaoROM_DUNI.AsString,1) = 'K' then EdicaoROM_PSLQ.Value := EdicaoROM_QTDE.AsFloat else
  if (LeftStr(EdicaoROM_DUNI.AsString,1) = 'M') and (EdicaoROM_REND.AsFloat > 0) then
      EdicaoROM_PSLQ.Value := EdicaoROM_QTDE.AsFloat / EdicaoROM_REND.AsFloat else
  if (LeftStr(EdicaoROM_DUNI.AsString,1) = 'M') and (EdicaoROM_METR.AsFloat > 0) and (EdicaoROM_PESO.AsFloat > 0) then
      EdicaoROM_PSLQ.Value := (EdicaoROM_QTDE.AsFloat * EdicaoROM_PESO.AsFloat) / EdicaoROM_METR.AsFloat else
  if  EdicaoROM_PESO.AsFloat > 0 then
      EdicaoROM_PSLQ.Value := (EdicaoROM_PESO.AsFloat * EdicaoROM_QTDE.AsFloat) / IFThen(EdicaoROM_QTUN.AsFloat > 0,EdicaoROM_QTUN.AsFloat,1);

  { Peso Bruto }
  EdicaoROM_PSBR.Value := EdicaoROM_PSLQ.AsFloat + (EdicaoROM_QTRL.AsInteger * IFThen(EdicaoROM_PSCN.AsFloat > 0,EdicaoROM_PSCN.AsFloat,0.02));

  { Adiciona na array de controle de estoque }
  if not AnsiMatchStr(EdicaoROM_IPRO.OldValue,AExecEstoque) then
         AExecEstoque[AnsiIndexStr('',AExecEstoque)] := EdicaoROM_IPRO.OldValue;
end;

procedure Tfrmven_ped_tmp.EdicaoAfterPost(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    SIMSalva.Enabled := True;
    oRefresh(Edicao);
  end;  
end;

procedure Tfrmven_ped_tmp.EdicaoBeforeCancel(DataSet: TDataSet);
begin
  if EdicaoId.Tag = 0 then
  begin
    Edicao.Close;
    Edicao.Open;
    ABORT;
  end;
end;

procedure Tfrmven_ped_tmp.EdicaoROM_QTDEValidate(Sender: TField);
begin
  if not ALockWindowUpdate then
  begin
    EdicaoROM_PREC.Value := IFThen(not oEmpty(EdicaoROM_PREC.AsFloat),EdicaoROM_PREC.AsFloat,EdicaoROM_UNIT.AsFloat);
    EdicaoROM_TSDE.Value := RoundTO(EdicaoROM_QTDE.AsFloat * EdicaoROM_PREC.AsFloat,-2);
    EdicaoROM_VDSC.Value := RoundTO(EdicaoROM_TSDE.AsFloat *(EdicaoROM_PDSC.AsFloat / 100),-2);
    EdicaoROM_TCDE.Value := RoundTO(EdicaoROM_QTDE.AsFloat * EdicaoROM_UNIT.AsFloat,-2);
    EdicaoROM_VIPI.Value := RoundTO(EdicaoROM_TCDE.AsFloat *(EdicaoROM_PIPI.AsFloat / 100),-2);
    EdicaoROM_TCDE.Value := RoundTO(EdicaoROM_TCDE.AsFloat + IFThen(RECUsuarios.Id = 66,EdicaoROM_VIPI.AsFloat,0),-2);
  end;
end;

procedure Tfrmven_ped_tmp.EdicaoROM_PDSCValidate(Sender: TField);
begin
  if not ALockWindowUpdate then
         EdicaoROM_UNIT.Value := EdicaoROM_PREC.AsFloat - ((EdicaoROM_PREC.AsFloat*EdicaoROM_PDSC.AsFloat)/100);
end;

procedure Tfrmven_ped_tmp.EdicaoROM_PIPIValidate(Sender: TField);
begin
  if not ALockWindowUpdate then
         EdicaoROM_VIPI.Value := RoundTO(EdicaoROM_TCDE.AsFloat *(EdicaoROM_PIPI.AsFloat / 100),-2);
end;

procedure Tfrmven_ped_tmp.DTSEdicaoDataChange(Sender: TObject; Field: TField);
begin
  _DTSEdicao;
end;

procedure Tfrmven_ped_tmp.DTSEdicaoStateChange(Sender: TObject);
begin
  if Pos(LeftStr(Caption,3),'Dev') = 0 then
     oState(Edicao,SBEdicao);
end;

procedure Tfrmven_ped_tmp._DTSEdicao;
begin
  if not ALockWindowUpdate then
  begin
    if Edicao.State = dsInsert then
       DBGEdicaoROM_CPRO.DisableEditor := False else
       DBGEdicaoROM_CPRO.DisableEditor := (EdicaoROM_QTPD.AsFloat > 0);

    DBGEdicaoROM_CCLF.DisableEditor := DBGEdicaoROM_CPRO.DisableEditor;
    DBGEdicaoROM_DCOR.DisableEditor := DBGEdicaoROM_CPRO.DisableEditor;
    DBGEdicaoROM_DPRO.DisableEditor := DBGEdicaoROM_CPRO.DisableEditor;
    DBGEdicaoROM_DUNI.DisableEditor := DBGEdicaoROM_CPRO.DisableEditor;
    DBGEdicaoROM_QTDE.DisableEditor := DBGEdicaoROM_CPRO.DisableEditor;
    DBGEdicaoROM_QTRL.DisableEditor := DBGEdicaoROM_CPRO.DisableEditor;

    if (Edicao.State <> dsInsert) and (RECPedido.IDPK > 0) then
    begin
      DBGEdicaoROM_CPRO.DisableEditor := True;
      DBGEdicaoROM_CCLF.DisableEditor := True;
    end;

    if (PNLFT.Caption <> EdicaoROM_CART.AsString) or (Edicao.RecNo = 0) then
    begin
      PNLFT.Caption := EdicaoROM_CART.AsString;
      GBFT.Caption  := Format('  Amostra  [ %d kb ]',[oJpegLoad(EdicaoROM_FOTO,IFT.Picture)]);
    end;

    if Edicao.State = dsBrowse then
    begin
      DBGEdicao.ApplyBestFit(DBGEdicaoROM_CPRO);
    //  DBGEdicao.ApplyBestFit(DBGEdicaoROM_DPRO);
    //  DBGEdicao.ApplyBestFit(DBGEdicaoROM_DCOR);

      if (EdicaoROM_UNIT.AsFloat < EdicaoROM_PTABI.AsFloat) or (EdicaoROM_UNIT.AsFloat > EdicaoROM_PTABF.AsFloat) or (EdicaoROM_UNIT.AsFloat > EdicaoROM_PTABI.AsFloat) then
      begin
        LAPRC_TAB_ABAIXO.Caption    := 'Preço abaixo da tabela. '       + FormatFloat('R$ #,0.00',EdicaoROM_PTABI.AsFloat);
        LAPRC_TAB_ACIMA_MIN.Caption := 'Preço acima da tabela mínima. ' + FormatFloat('R$ #,0.00',EdicaoROM_PTABI.AsFloat);
        LAPRC_TAB_ACIMA_MAX.Caption := 'Preço acima da tabela máxima. ' + FormatFloat('R$ #,0.00',EdicaoROM_PTABF.AsFloat);

        PNLPRC_TAB.Height := 22;
      end else
        PNLPRC_TAB.Height := 0;

      if Pos('COM',EdicaoROM_UCON.AsString) > 0 then
      begin
        PNLPRC_TAB.Caption := 'Conteúdo: '+EdicaoROM_UCON.AsString+'  ';
        PNLPRC_TAB.Height  := 22;
      end else
        PNLPRC_TAB.Caption := EmptyStr;
    end;
  end;
end;

procedure Tfrmven_ped_tmp.DBGEdicaoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGEdicaoROM_QTPD.Index] > 0 then
    begin
      AFont.Color := clWhite;
      AColor      := clBlack;
    end else
    begin
      if AColumn = DBGEdicaoROM_QDIS then
      begin
        AFont.Color := clBlack;
        if StrToFloat(oTrimValor(ANode.Values[DBGEdicaoROM_QDIS.Index])) <= 0 then
        begin
          AFont.Color := $000024B3;
          AFont.Style := [fsBold];
        end;
        AColor := $00E9E9E9;
      end;

      if (ANode.Values[DBGEdicaoROM_UNIT.Index] = 0) and (Edicao.State <> dsInsert) then
      begin
        AFont.Color := clWhite;
        AColor      := $000024B3;
      end;

      if (AColumn = DBGEdicaoROM_VDSC) or (AColumn = DBGEdicaoROM_PIPI) or (AColumn = DBGEdicaoROM_VIPI) then
      begin
        AFont.Color := clBlack;
        AColor := $00E9E9E9;
      end;

      if (AColumn = DBGEdicaoROM_PDSC) or (AColumn = DBGEdicaoROM_VDSC) then
          if ANode.Values[DBGEdicaoROM_PDSC.Index] > 0 then
             AFont.Style := [fsBold];

      if (AColumn = DBGEdicaoROM_PIPI) or (AColumn = DBGEdicaoROM_VIPI) then
          if ANode.Values[DBGEdicaoROM_PIPI.Index] > 0 then
             AFont.Style := [fsBold];

      if (AColumn = DBGEdicaoROM_TSDE) or (AColumn = DBGEdicaoROM_TCDE) then
      begin
        AFont.Color := clWhite;
        AColor      := $00E1AD40;
      end;
    end;  
  end;

  if (AColumn = DBGEdicaoROM_UNIT) and
     (not oEmpty(StrToFloat(oTrimValor(ANode.Values[DBGEdicaoROM_UNIT.Index])))) and (not oEmpty(StrToFloat(oTrimValor(ANode.Values[DBGEdicaoROM_PTABI.Index])))) and
     (StrToFloat(oTrimValor(ANode.Values[DBGEdicaoROM_UNIT.Index])) <> StrToFloat(oTrimValor(ANode.Values[DBGEdicaoROM_PTABI.Index]))) then
     if StrToFloat(oTrimValor(ANode.Values[DBGEdicaoROM_UNIT.Index])) < StrToFloat(oTrimValor(ANode.Values[DBGEdicaoROM_PTABI.Index])) then
     begin
       AFont.Style := [fsBold];
       AFont.Color := clBlack;
       AColor      := $0080FFFF;
     end else
     begin
       AFont.Style := [fsBold];
       AFont.Color := clWhite;
       AColor      := $000024B3;
     end;
end;

procedure Tfrmven_ped_tmp.DBGEdicaoDblClick(Sender: TObject);
begin
  SIEAltera.Click;
end;

procedure Tfrmven_ped_tmp.DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_insert: SIEInclui.Click;
       vk_return: if Edicao.State = dsBrowse then SIEAltera.Click else
                     if EdicaoROM_IPRO.AsInteger > 0 then
                     begin
                       if Pos(DBGEdicao.FocusedField.FieldName,'ROM_CPROROM_DPROROM_DCOR') > 0 then
                       DBGEdicao.FocusedColumn := DBGEdicaoROM_QTDE.ColIndex else
                       if Pos(DBGEdicao.FocusedField.FieldName,'ROM_CCLF') > 0 then
                       DBGEdicao.FocusedColumn := DBGEdicaoROM_QTDE.ColIndex else
                       if Pos(DBGEdicao.FocusedField.FieldName,'ROM_QTDE') > 0 then
                       DBGEdicao.FocusedColumn := IFThen(EdicaoROM_QTRL.AsInteger > 0,DBGEdicaoROM_UNIT.ColIndex,DBGEdicaoROM_QTRL.ColIndex) else
                       if Pos(DBGEdicao.FocusedField.FieldName,'ROM_QTRL') > 0 then
                       DBGEdicao.FocusedColumn := DBGEdicaoROM_UNIT.ColIndex else
                       DBGEdicao.FocusedColumn := DBGEdicao.FocusedColumn + 1;
                                                                    
                       if ((EdicaoROM_TCDE.AsFloat > 0) and
                          (((DBGEdicao.FocusedColumn > DBGEdicaoROM_QTDE.ColIndex) and (IECDPD.Tag = 0)) or
                           ((DBGEdicao.FocusedColumn > DBGEdicaoROM_UNIT.ColIndex) and (IECDPD.Tag = 1)))) then
                       begin
                         Edicao.Next;
                         if Edicao.Eof then
                         Edicao.Append else
                         DBGEdicao.FocusedColumn := DBGEdicao.FocusedColumn - 1;
                       end;
                     end;
       vk_delete: SIEExclui.Click;
  end;
end;

procedure Tfrmven_ped_tmp.DBGEdicaoROM_CPROValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGEdicao.EditingText := Trim(DBGEdicao.EditingText);
  if (Edicao.State in [dsInsert,dsEdit]) and (DBGEdicao.EditingText <> EmptyStr) and (DBGEdicao.EditingText <> EdicaoROM_CPRO.AsString) then
  begin
    EdicaoROM_CPRO.Value := DBGEdicao.EditingText;
    _CPPSQ(oRETCodigo(EdicaoROM_CPRO.AsString),'CP.PRO_CPRO');
    if EdicaoROM_IPRO.AsInteger = 0 then
       EdicaoROM_CPRO.Value := EmptyStr;
  end;
end;

procedure Tfrmven_ped_tmp.DBGEdicaoROM_CCLFValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGEdicao.EditingText := Trim(DBGEdicao.EditingText);
  if (Edicao.State in [dsInsert,dsEdit]) and (DBGEdicao.EditingText <> EmptyStr) and (DBGEdicao.EditingText <> EdicaoROM_CCLF.AsString) then
  begin
    EdicaoROM_CCLF.Value := DBGEdicao.EditingText;
    _CPPSQ(DBGEdicao.EditingText,'CP.NCM');
  end;
end;

procedure Tfrmven_ped_tmp.DBGEdicaoROM_DPROValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGEdicao.EditingText := Trim(DBGEdicao.EditingText);
  if (Edicao.State in [dsInsert,dsEdit]) and (DBGEdicao.EditingText <> EmptyStr) and (DBGEdicao.EditingText <> EdicaoROM_DPRO.AsString) then
  begin
    EdicaoROM_DPRO.Value := DBGEdicao.EditingText;
    _CPPSQ(DBGEdicao.EditingText,'CP.PRO_DPRO');
    if EdicaoROM_IPRO.AsInteger = 0 then
       EdicaoROM_DPRO.Value := EmptyStr;
  end;
end;

procedure Tfrmven_ped_tmp.DBGEdicaoROM_QTDEValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (not oEmpty(DBGEdicao.EditingText)) and (Edicao.State in [dsInsert,dsEdit]) then
  try
    EdicaoROM_QTDE.Value := StrToFloat(DBGEdicao.EditingText);
    EdicaoROM_QTRL.Value := bRET_PECA(EdicaoROM_QTDE.AsFloat,EdicaoROM_QTUN.AsFloat);
  except
    DataBaseError('Quantidade Inválida !');
  end;
end;

procedure Tfrmven_ped_tmp.DBGEdicaoROM_QTRLValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (not oEmpty(DBGEdicao.EditingText)) and (Edicao.State in [dsInsert,dsEdit]) then
  try
    EdicaoROM_QTRL.Value := StrToInt(DBGEdicao.EditingText);
    EdicaoROM_QTDE.Value := bRET_QUANTIDADE(EdicaoROM_QTRL.AsInteger,EdicaoROM_QTUN.AsFloat);
  except
    DataBaseError('Quantidade Inválida !');
  end;
end;

procedure Tfrmven_ped_tmp.DBGEdicaoROM_UNITValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (Edicao.State in [dsEdit,dsInsert]) and (not oEmpty(DBGEdicao.EditingText)) and (oTextToValor(DBGEdicao.EditingText,2) <> EdicaoROM_UNIT.AsCurrency) then
  begin
    EdicaoROM_PREC.Value := oTextToValor(DBGEdicao.EditingText,9);
    EdicaoROM_UNIT.Value := EdicaoROM_PREC.AsFloat - ((EdicaoROM_PREC.AsFloat*EdicaoROM_PDSC.AsFloat)/100);
  end;
end;

procedure Tfrmven_ped_tmp.DBGEdicaoROM_VDSCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (Edicao.State in [dsEdit,dsInsert]) and (not oEmpty(DBGEdicao.EditingText)) then
      EdicaoROM_PDSC.Value := oTextToValor(DBGEdicao.EditingText);
end;

procedure Tfrmven_ped_tmp.EDDEPVChange(Sender: TObject);
begin
  SIMSalva.Enabled := (not ALockWindowUpdate);
end;

procedure Tfrmven_ped_tmp.IECDPDChange(Sender: TObject);
begin
  SIMSalva.Enabled := (not ALockWindowUpdate);

  if IECDPD.Text <> '0' then
     try
       oOTransact(TConsulta);
       with SQLConsulta do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT PK.* FROM VW_TAB_TPO_STPD AS PK');
         SQL.Add('WHERE  PK.CDPD = '''+IECDPD.Text+'''');
         ExecQuery;

         RECPedido.FAPD := (Current.ByName('FAPD').AsInteger = 1);
         RECPedido.SVPD := (Current.ByName('SVPD').AsInteger = 1);
         RECPedido.BQPD := (Current.ByName('BQPD').AsInteger = 1);

         RECPedido.VPPD :=  Current.ByName('VPPD').AsString;
         RECPedido.TIPD := (Current.ByName('TIPD').AsInteger = 1);
         RECPedido.PDPD := (Current.ByName('PDPD').AsInteger = 1);
         RECPedido.MDPD :=  Current.ByName('MDPD').AsInteger;

         RECPedido.BEPD := (Current.ByName('BEPD').AsInteger = 1);
         RECPedido.SEPD := (Current.ByName('SEPD').AsInteger = 1);
         RECPedido.UEPD :=  Current.ByName('UEPD').AsString;
         RECPedido.TGPD := (Current.ByName('TGPD').AsInteger = 1);

         RECPedido.CFOP := Current.ByName(IFThen((RECPedido.UF <> EmptyStr) and
                                                 (RECPedido.UF <> RECParametros.SGUF),'CFOPFUF','CFOPDUF')).AsString;

         IECDCO.Text    :=  Current.ByName('CDCO').AsString;
         RECPedido.CDPG :=  Current.ByName('CDPG').AsString;
         RECPedido.DEPG :=  Current.ByName('DEPG').AsString;
         PEDEPG.Text    :=  RECPedido.DEPG;
         RECPedido.BXPG := (Current.ByName('BXPG').AsInteger = 1);

         IECDST.Text := Current.ByName('CDST').AsString;
       end;
     finally
       oCTransact(TConsulta);
      end;
end;

procedure Tfrmven_ped_tmp.PESQUISA_FPAGTO(pesq,chave: string);
begin
  if (chave = '0') or (chave = '') then
      Exit;

  with SQLFKConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PAG_DPAG FROM TAB_PAG');
    if pesq = 'C' then
       SQL.Add('WHERE  ID = '''+chave+'''')
    else if pesq = 'F' then
       SQL.Add('WHERE  PAG_DPAG = '''+chave+'''');
    ExecQuery;

    PEDEPG.Text := Current.Vars[0].AsString;
    if Current.Vars[0].IsNull then
       oException(PEDEPG,'Prazo de Pagamento não Encontrado !');
  end;
end;

procedure Tfrmven_ped_tmp.PESQUISA_CLIENTE(pesq,chave: string);
begin
  if (chave = '') or (chave = '0') then
  Exit;

  with psq_cli do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CLI_BAI,CLI_TLOG,CLI_LOGR,CLI_NUME,CLI_CEP,CLI_COMP,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,');
    SQL.Add('       CLI_VDSC,CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,CLI_VULT,CLI_DDD,CLI_TEL1,REP_FANT,USU_DUSU,CLI_STPD,CLI_DTRA,CLI_DUSU,');
    SQL.Add('       TRIM(CAST(SUBSTRING(CLI_OBSO FROM 1 FOR 512) AS VARCHAR(512))) CLI_OBSO');
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
    SQL.Add('AND    CLI_STA  = 0');
    Open;
    Last;
  end;

  if psq_cli.RecNo = 0 then
  begin
    if pesq = 'I' then
    begin
      CEIDCL.SetFocus;
      messageBox(Self.Handle,'Código do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
    end
    else if pesq = 'F' then
    begin
      EDDECL.SetFocus;
      messageBox(Self.Handle,'Nome fantasia do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
    end;
    Abort;
  end
  else if psq_cli.RecNo = 1 then
  begin
    if psq_cliCLI_STA.AsString <> '0' then
    begin
      if pesq = 'I' then
         CEIDCL.SetFocus
      else if pesq = 'F' then
        EDDECL.SetFocus;

      messageBox(Self.Handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if (psq_cliCLI_STAV.AsString <> 'A') and (psq_cliCLI_STAV.AsString <> 'S') then
    begin      
      if pesq = 'I' then
         CEIDCL.SetFocus
      else if pesq = 'F' then
        EDDECL.SetFocus;

      if psq_cliCLI_STAV.AsString = 'I' then
         messageBox(Self.Handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
      else if psq_cliCLI_STAV.AsString = 'P' then
         messageBox(Self.Handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' aguardando autorização de compra !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    CEIDCL.Value := psq_cliID.AsInteger;
    EDDECL.Text := psq_cliCLI_FANT.AsString;
    edcnpj.Text := psq_cliCLI_CNPJ.AsString;

    if RECParametros.PED_DELIVERY then
    begin
      with SQLFKConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT CLI_TLOV,CLI_LOGV,CLI_NUMV,CLI_COMV,CLI_CEPV,CLI_BAIV,CLI_CIDV,CLI_ESTV FROM CAD_CLI');
        SQL.Add('WHERE  ID = '''+CEIDCL.Text+'''');
        ExecQuery;

        if (Current.Vars[0].AsString <> '') and (Current.Vars[1].AsString <> '') and (Current.Vars[2].AsString <> '') and (EMINFADPED.Tag = 0) then
        begin
          EMINFADPED.Lines.Clear;
          EMINFADPED.Tag := 1;
          EMINFADPED.Lines.Add(oPrimeiraLetraMaiuscula('Entrega: '+Current.Vars[0].AsString+' '+Current.Vars[1].AsString+', '+Current.Vars[2].AsString+' '+Current.Vars[3].AsString+' Cep '+Current.Vars[4].AsString+' '+Current.Vars[5].AsString+' '+Current.Vars[6].AsString+' '+Current.Vars[7].AsString));
        end else
        begin
          if (psq_cliCLI_TLOG.AsString <> '') and (psq_cliCLI_LOGR.AsString <> '') and (psq_cliCLI_NUME.AsString <> '') and (EMINFADPED.Tag = 0) then
          begin
            EMINFADPED.Lines.Clear;
            EMINFADPED.Tag := 1;
            EMINFADPED.Lines.Add(oPrimeiraLetraMaiuscula('Entrega: '+psq_cliCLI_TLOG.AsString+' '+psq_cliCLI_LOGR.AsString+', '+psq_cliCLI_NUME.AsString+' '+psq_cliCLI_COMP.AsString+' Cep '+copy(psq_cliCLI_CEP.AsString,1,5)+'-'+copy(psq_cliCLI_CEP.AsString,6,3)+' '+psq_cliCLI_BAI.AsString+' '+psq_cliCLI_CID.AsString+' '+psq_cliCLI_ESTA.AsString));
          end;
        end;
      end;
    end;

    EMINFADFIN.Lines.Clear;
    EMINFADFIN.Lines.Text := TRIM(psq_cliCLI_OBSO.AsString);
    EMINFADFIN.Update;

    if (RECPedido.IDPK = 0) and (psq_cliId.AsInteger > 1) then
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   FIRST 1 PK.ID,PK.ROM_CVEN,TUSER.LOGIN,PK.ROM_CREP,CR.REP_FANT,PK.ROM_CTRA,CT.TRA_FANT,PK.ROM_MFRT,PK.ROM_CPAG,TPRZ.PAG_DPAG,PK.ROM_STPD,PK.ROM_STCO');
      SQL.Add('FROM '  +SLPrincipal.Values['ped_ven_cab']+' AS PK');
      SQL.Add('JOIN     TAB_USER    AS TUSER ON (TUSER.ID = PK.ROM_CVEN)');
      SQL.Add('JOIN     CAD_REP     AS CR    ON (CR.ID    = PK.ROM_CREP)');
      SQL.Add('JOIN     CAD_TRA     AS CT    ON (CT.ID    = PK.ROM_CTRA)');
      SQL.Add('JOIN     TAB_PAG     AS TPRZ  ON (TPRZ.ID  = PK.ROM_CPAG)');
      SQL.Add('WHERE    ROM_CCLI = '''+CEIDCL.Text+'''');
      SQL.Add('ORDER BY 1 DESC');
      ExecQuery;

      if not Eof then
      begin
        IEIDCV.Text := FieldByName('ROM_CVEN').AsString;
        IEIDCR.Text := FieldByName('ROM_CREP').AsString;

        IEIDCT.Tag  := FieldByName('ROM_CTRA').AsInteger;
        IEIDCT.Text := FieldByName('TRA_FANT').AsString;
        IEMFRT.Text := FieldByName('ROM_MFRT').AsString;

        IECDPD.Text := FieldByName('ROM_STPD').AsString;

        IECDCO.Text := FieldByName('ROM_STCO').AsString;
        PEDEPG.Text := FieldByName('PAG_DPAG').AsString;
        PESQUISA_FPAGTO('F',PEDEPG.Text);
      end;
    end;
  end else
  begin
    Tfrmcad_cli.ExecForm(Self,frmcad_cli);
    with frmcad_cli.Cadastro do
    begin
      SQL.Clear;
      SQL.Add('SELECT   CAD_CLI.ID "Id",CLI_FANT||'' - ''||CAD_CLI.ID "Fantasia",CLI_RAZA "Razao",');
      SQL.Add('         CLI_DCAD "DTCadastro",CLI_DFUN "DTFundacao",CLI_DALT "DTEdicao",CLI_DULT "DTPedido",IIF(CLI_DULT > CLI_DCAD,CLI_DULT,CLI_DCAD) AS DATA,');
      SQL.Add('         COALESCE(CLI_VULT,0) "VLPedido",COALESCE(CLI_VDSC,0) "VLDesc",COALESCE(FAVCredito.CLI_CRED,0) "VLCredito",');
      SQL.Add('         CLI_CNPJ "Cnpj"      ,CLI_INSC "IE"       ,CLI_CPF "Cpf",CLI_RG "RG",CLI_ISUF "ISUF",CLI_IM "IM",');
      SQL.Add('         CLI_CICM "CICMS"     ,CLI_RICM "RICMS"    ,CLI_IDESTRANGEIRO "IDEstrangeiro",');
      SQL.Add('         CLI_CONT "Contato"   ,CLI_DDD  "DDD"      ,CLI_TEL1   "TEL1"  ,CLI_CEL  "Celular",CLI_MAIL "Email",');
      SQL.Add('         CLI_TLOG "TLgr"      ,CLI_LOGR "XLgr"     ,CLI_NUME   "NRO"   ,CLI_COMP "XCpl"   ,CLI_CEP  "Cep",');
      SQL.Add('         CLI_BAI  "XBairro"   ,CLI_CMUN "CMun"     ,CLI_CID    "XMun"  ,CLI_ESTA "UF"     ,CLI_REGI "Regiao",');
      SQL.Add('         CLI_TLOV "ETLgr"     ,CLI_LOGV "EXLgr"    ,CLI_NUMV   "ENRO"  ,CLI_COMV "EXCpl"  ,CLI_CEP  "ECep",');
      SQL.Add('         CLI_BAIV "EXBairro"  ,CLI_CMUV "ECMun"    ,CLI_CIDV   "EXMun" ,CLI_ESTV "EUF"    ,');
      SQL.Add('         CLI_TLOR "RTLgr"     ,CLI_LORE "RXLgr"    ,CLI_NUMR   "RNRO"  ,CLI_COMR "RXCpl"  ,CLI_CEPR "RCep",');
      SQL.Add('         CLI_BAIR "RXBairro"  ,CLI_CMUR "RCMun"    ,CLI_CIDR   "RXMun" ,CLI_ESTR "RUF"    ,');
      SQL.Add('         Vendedores.USU_CUSU  "IDVendedor",Vendedores.USU_DUSU "DEVendedor",Representantes.ID "IDRepresentante",Representantes.REP_FANT "DERepresentante",');
      SQL.Add('         CLI_DPAG "Prazo"     ,CLI_CTRA "IDTransportadora",CLI_DTRA "DETransportadora",');
      SQL.Add('         TRIM(CASE CLI_STAV');
      SQL.Add('              WHEN ''A'' THEN ''ATIVO''');
      SQL.Add('              WHEN ''I'' THEN ''INATIVO''');
      SQL.Add('              WHEN ''S'' THEN ''SUSPENSO''');
      SQL.Add('              WHEN ''P'' THEN ''PRÉ CADASTRO''');
      SQL.Add('         END) AS "STCadastro",');
      SQL.Add('         TRIM(CAST(SUBSTRING(CLI_OBSE FROM 1 FOR 512) AS VARCHAR(512))) "InfoA",');
      SQL.Add('         TRIM(CAST(SUBSTRING(CLI_OBSO FROM 1 FOR 512) AS VARCHAR(512))) "InfoC"');
      SQL.Add('FROM     CAD_CLI');
      SQL.Add('LEFT     OUTER JOIN CAD_CLI_CRD AS FAVCredito     ON ((CAD_CLI.ID = FAVCredito.CLI_CCLI) AND (FAVCredito.CLI_CDEP = :IDEmpresa))');
      SQL.Add('LEFT     OUTER JOIN CAD_USU     AS Vendedores     ON  (CLI_CVEN   = Vendedores.USU_CUSU)');
      SQL.Add('LEFT     OUTER JOIN CAD_REP     AS Representantes ON  (CLI_CREP   = Representantes.ID)');

      if pesq = 'F' then
      SQL.Add('WHERE  CLI_FANT LIKE ''%'+EDDECL.Text+'%''')
      else if pesq = 'C' then
      SQL.Add('WHERE  CLI_CNPJ LIKE ''%'+edcnpj.Text+'%''');
      SQL.Add('AND    CLI_STA  = 0');

      SQL.Add('ORDER BY DATA DESC');

      Params[0].Value := RECParametros.Id;
      Open;
    end;
  end;
end;

procedure Tfrmven_ped_tmp.psq_cliAfterOpen(DataSet: TDataSet);
begin
  if psq_cliID.AsInteger > 0 then
     with cad_cli_crd do
     begin
       Close;
       SelectSQL.Clear;
       SelectSQL.Add('SELECT * FROM CAD_CLI_CRD');
       SelectSQL.Add('WHERE  IDEP = '''+RECParametros.Id  +'''');
       SelectSQL.Add('AND    IDCL = '''+psq_cliID.AsString+'''');
       Open;
     end;
end;

procedure Tfrmven_ped_tmp.CETSDEValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  oRefresh(Edicao);
end;

procedure Tfrmven_ped_tmp.EMINFADPEDExit(Sender: TObject);
begin
  if RECUsuarios.Id = 66 then SIEInclui.Click;
end;

procedure Tfrmven_ped_tmp.PEDEPGValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  PESQUISA_FPAGTO('F',PEDEPG.Text);
end;

procedure Tfrmven_ped_tmp._FillCP;
begin
  if Edicao.State = dsBrowse then
     if (RECPedido.UEPD <> 'QT') or (IECDPD.Text = 'DEVOLUÇÃO') then
     Edicao.Append else
     begin
       Edicao.First;
       if Edicao.Locate('ROM_CPRO',FBird.FBCAD_PROSKU.AsString,[]) then
       Edicao.Edit else
       Edicao.Append;
     end;

  EdicaoROM_IPRO.Value := FBird.FBCAD_PROID.AsInteger;
  EdicaoROM_CDEP.Value := FBird.FBCAD_PROIDEP.AsInteger;

  EdicaoROM_CART.Value := FBird.FBCAD_PROARTIGO.AsString;
  EdicaoROM_CCLF.Value := FBird.FBCAD_PRONCM.AsString;
  EdicaoROM_PIPI.Value := FBird.FBCAD_PROPIPI.AsFloat;
  EdicaoROM_CPRO.Value := FBird.FBCAD_PROSKU.AsString;
  EdicaoROM_CBAR.Value := FBird.FBCAD_PROCEAN.AsString;

  EdicaoROM_DPRO.Value := FBird.FBCAD_PRODESCRICAO.AsString;
  EdicaoROM_DCOR.Value := FBird.FBCAD_PRODGCP.AsString;

  EdicaoROM_DUNI.Value := FBird.FBCAD_PROUCOM.AsString;
  EdicaoROM_UCON.Value := FBird.FBCAD_PROUCON.AsString;
  EdicaoROM_QTUN.Value := FBird.FBCAD_PROUQTDE.AsFloat;

  EdicaoROM_QDIS.Value := FBird.FBCAD_PROEPE_QTDE.AsFloat;
  EdicaoROM_RLDI.Value := FBird.FBCAD_PROEPE_QTRL.AsInteger;

  EdicaoROM_PESO.Value  := FBird.FBCAD_PROPESO.AsFloat;
  EdicaoROM_PSCN.Value  := FBird.FBCAD_PROPSCN.AsFloat;
  EdicaoROM_METR.Value  := FBird.FBCAD_PROMETRO.AsFloat;
  EdicaoROM_REND.Value  := FBird.FBCAD_PRORENDIMENTO.AsFloat;

  EdicaoROM_QDIS.Value  := FBird.FBCAD_PROEPE_QTDE.AsFloat;
  EdicaoROM_RLDI.Value  := FBird.FBCAD_PROEPE_QTRL.AsInteger;

  EdicaoROM_QTDE.Value := EdicaoROM_QTUN.AsFloat;
  EdicaoROM_QTRL.Value := bRET_PECA(EdicaoROM_QTDE.AsFloat,EdicaoROM_QTUN.AsFloat);

  EdicaoROM_PTABI.Value := FBird.FBCAD_PROVPRC_PAD_INI.AsFloat;
  EdicaoROM_PTABF.Value := FBird.FBCAD_PROVPRC_PAD_FIM.AsFloat;
  EdicaoROM_PREC.Value  := FBird.FBCAD_PRO.FieldByName(RECPedido.VPPD).AsFloat;
  EdicaoROM_UNIT.Value  := FBird.FBCAD_PRO.FieldByName(RECPedido.VPPD).AsFloat;

  EdicaoROM_FOTO.Value := FBird.FBCAD_PRO_IMGPRO_FOTO.Value;
  EdicaoROM_STAV.Value := FBird.FBCAD_PROREST.AsString;
end;

procedure Tfrmven_ped_tmp._CPPSQ(ADTXT: String;AFTXT: String);
begin
  if not oEmpty(ADTXT) then
  try
    oOTransact(FBird.TFBProdutos);
    if uPesquisa_Produto(RECParametros.Id,ADTXT,AFTXT,'LIKE','','%') > 0 then
    begin
      _FillCP; _DTSEdicao;
      DBGEdicao.FocusedColumn := IFThen(AFTXT = 'NCM'      ,DBGEdicaoROM_CCLF.ColIndex,
                                 IFThen(AFTXT = 'DESCRICAO',DBGEdicaoROM_DPRO.ColIndex,DBGEdicaoROM_CPRO.ColIndex));
    end;
  finally
    oCTransact(FBird.TFBProdutos);
  end;
end;

procedure Tfrmven_ped_tmp._ExecEvent;
begin
  if  EEvent.Registered then
      try
        oOTransact(TEvent);

        SPEvent.StoredProcName := 'SP_EVENT';
        SPEvent.Prepare;
        SPEvent.Params[0].AsString := oREPZero('CTR_PED','_',RECParametros.Id,3);
        SPEvent.ExecProc;

        oCTransact(TEvent);
      except
        on E: Exception do
        begin
          oCTransact(TEvent,ltRollback);
          oException(Nil,'Falha ao tentar salvar evento !'+#13+
                         'Evento: '    +oREPZero('CTR_PED','_',RECParametros.Id,3)+'.'+#13+#13+
                         'Formulário: '+Self.Name+'.'     +#13+#13+
                         'Error Code: '+E.Message+'.');
        end;
      end;
end;

procedure Tfrmven_ped_tmp._CheckErrors;
var
  MSGErro: String;
begin
  ActiveControl := Nil;
  if Edicao.State in [dsEdit,dsInsert] then
     if (EdicaoROM_CPRO.AsString = EmptyStr) or (EdicaoROM_TCDE.AsFloat = 0) then Edicao.Cancel else Edicao.Post;

  if Edicao.RecNo = 0 then
     oException(IECDPD,'Pedido sem itens informados !');

  try
    Edicao.DisableControls;
    Edicao.First;
    while not Edicao.Eof do
    begin
      if EdicaoROM_CPRO.AsString <> EmptyStr then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoROM_CPRO.ColIndex;
        MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' sem quantidade informada !'+#13+
                   'Item: '  +EdicaoROM_CDOC.AsString+'.';
      end else
      if EdicaoROM_DPRO.AsString <> EmptyStr then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoROM_DPRO.ColIndex;
        MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' sem quantidade informada !'+#13+
                   'Item: '  +EdicaoROM_CDOC.AsString+'.';
      end else
      if EdicaoROM_QTDE.AsFloat <= 0 then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoROM_QTDE.ColIndex;
        MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' sem quantidade informada !'+#13+
                   'Item: '  +EdicaoROM_CDOC.AsString+'.';
      end else
      if EdicaoROM_QTRL.AsInteger <= 0 then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoROM_QTRL.ColIndex;
        MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' sem quantidade de rolos informada !'+#13+
                   'Item: '  +EdicaoROM_CDOC.AsString+'.';
      end else
      if EdicaoROM_UNIT.AsFloat <= 0 then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoROM_UNIT.ColIndex;
        MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' sem valor unitário informado !'+#13+
                   'Item: '  +EdicaoROM_CDOC.AsString+'.';
      end else
      if EdicaoROM_TCDE.AsFloat <= 0 then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoROM_TCDE.ColIndex;
        MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' sem total informado !'+#13+
                   'Item: '  +EdicaoROM_CDOC.AsString+'.';
      end else
      if (RECPedido.IDFK > 0) and (Pos(LeftStr(IECDPD.Text,3),'DEVABA') > 0) then
          with SQLConsulta do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT ID FROM ' +SLPrincipal.Values['ped_ven_ite']);
            SQL.Add('WHERE  IDPK = '''+IntToStr(RECPedido.IDFK)   +'''');
            SQL.Add('AND    IDCP = '''+EdicaoROM_IPRO.AsString+'''');
            ExecQuery;
            if Current.Vars[0].AsInteger = 0 then
            begin
              DBGEdicao.FocusedColumn := DBGEdicaoROM_CPRO.ColIndex;
              MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' não pertence ao pedido nº '+RECPedido.DEFK+' !'+#13+
                         'Item: '  +EdicaoROM_CDOC.AsString+'.';
            end;
          end;
          
      if MSGErro <> EmptyStr then Break;
         Edicao.Next;
    end;
  finally
    Edicao.First;
    Edicao.EnableControls;
  end;

  if MSGErro <> EmptyStr then
     oException(DBGEdicao,MSGErro);

  if CEIDCL.Value = 0 then
     oException(CEIDCL,'Cliente não Informado !');

  if IEIDCV.Text = '0' then
     oException(IEIDCV,'Vendedor não Informado !');

  if IEIDCR.Text = '0' then
     oException(IEIDCR,'Representante não Informado !');

  if oEmpty(IECDPD.Text) then oException(IECDPD,'Tipo de Pedido não Informado !');

  if oEmpty(IECDCO.Text) then oException(IECDCO,'Tipo de Cobrança não Informado !');

  if oEmpty(PEDEPG.Text) then oException(PEDEPG,'Prazo de Pagamento não Informado !');

  if ((RECPedido.FAPD) and (IECDCO.Text = 'SEM COBRANÇA')) or ((not (RECPedido.FAPD)) and (IECDCO.Text <> 'SEM COBRANÇA')) then
       oException(IECDCO,'Tipo de Cobrança Inválido !');

  if ((RECPedido.FAPD) and (PEDEPG.Text = 'SEM COBRANÇA')) or ((PEDEPG.Text <> 'SEM COBRANÇA') and (IECDCO.Text = 'SEM COBRANÇA')) then
       oException(PEDEPG,'Prazo de Pagamento Inválido !');

  if ((IECDCO.Text = 'BANCÁRIO') and (IETPCO.Text = '0')) then
       oException(IETPCO,'Opção de Crédito não Permitido !'+#13+
                         'Para crédito 0 (zero) utilizar cobrança em carteira.');

  if ((CETCDE.Value > 0) and (Pos(IECDPD.Text,'ABATIMENTODEVOLUÇÃO') > 0)) then
       oException(IECDPD,'Valor Total do Pedido Inválido !');

  if (oEmpty(IEIDCT.Text)) or (Pos('CLIENTE RETIRA',IEIDCT.Text) > 0) or (Pos('SEM FRETE',IEIDCT.Text) > 0) then
      IEMFRT.Text := '9';

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_TRA');
    SQL.Add('WHERE  TRA_FANT = '''+IEIDCT.Text+'''');
    ExecQuery;
    IEIDCT.Tag := Current.Vars[0].AsInteger;

    if oEmpty(IEIDCT.Tag) then oException(IEIDCT,'Transportadora não Cadastrada !');
    if oEmpty(IEMFRT.Text)  then oException(IEMFRT  ,'Modalidade de Frete não Informada !');
  end;

  DBGEdicao.SetFocus;
end;

procedure Tfrmven_ped_tmp._CheckConstraints;
var
  i: word;
begin
  RECPedido.CDCX := IFThen((RECPedido.CDCX = '0') or (RECPedido.CDCX = ''),RECParametros.CDCX,RECPedido.CDCX);
  Motivo      := EmptyStr;
  InfAdMot.Clear;

  if (Pos(LeftStr(IECDPD.Text,3),'DEVABA') > 0) and (RECPedido.IDPK = 0) then
      try
        TFrmProduto_Devolucao_Cancelamento.ExecForm(Nil,FrmProduto_Devolucao_Cancelamento,fsNormal);
      finally
        if not FrmProduto_Devolucao_Cancelamento.Editado then
           Abort;

        if oEmpty(FrmProduto_Devolucao_Cancelamento.IEMotivo.Text) then
           oException(DBGEdicao,'Motivo de cancelamento Incorreto ou não Informado !');

        if not oEmpty(FrmProduto_Devolucao_Cancelamento.MInfAdCAD.Lines.Text) then
           for i := 0 to FrmProduto_Devolucao_Cancelamento.MInfAdCAD.Lines.Count - 1 do
               InfAdMot.Add(FrmProduto_Devolucao_Cancelamento.MInfAdCAD.Lines[i]);

        Motivo := FrmProduto_Devolucao_Cancelamento.IEMotivo.Text;
        STFI   := 'FATURADO';

        EMINFADPED.Lines.Append(IECDPD.Text+' POR MOTIVO DE '+Motivo+' - PEDIDO DE VENDA Nº '+RECPedido.DEFK);
        EMINFADPED.Lines.Append(InfAdMot.Text);
        
        FrmProduto_Devolucao_Cancelamento.Free;
      end;

  if (Pos(LeftStr(IECDPD.Text,3),'DEVABA') = 0) and (IECDCO.Text <> 'SEM COBRANÇA') and (CEIDCL.Value <> RECParametros.IDCL_PAD) then
  begin
    if psq_cliCLI_STAV.AsString = 'S' then
    begin
      IECDPD.Hint := 'SUSPENSO';

      cli_sta.Close;
      cli_sta.ParamByName('FIN_STFI').Value := 'PROTESTADO%';
      cli_sta.ParamByName('FIN_CCLI').Value := CEIDCL.Value;
      cli_sta.Open;

      if not cli_sta.Current.Vars[0].IsNull then
      begin
        IECDPD.Hint := 'PROTESTADO';
        oErro(Self.Handle,'Cliente possui faturas em PROTESTO !'+#13+#13+
                     'Título '+cli_staFIN_TITU.AsString+#13+
                     'Vencimento '+formatDateTime('dd/mm/yyyy',cli_staFIN_DVEN.AsDateTime)+#13+
                     'Valor '+formatfloat('R$ #,0.00',cli_staFIN_VALO.AsFloat)+#13+#13+
                     'Nota: O pedido será salvo, mas ficará aguardando por liberação.');
      end else
      begin
        cli_sta.Close;
        cli_sta.ParamByName('FIN_STFI').Value := 'NÃO PAGO%';
        cli_sta.ParamByName('FIN_CCLI').Value := CEIDCL.Value;
        cli_sta.Open;

        if not cli_sta.Current.Vars[0].IsNull then
        begin
          IECDPD.Hint := 'NÃO PAGO';
          oErro(Self.Handle,'Cliente possui faturas em NÃO PAGO !'+#13+#13+
                       'Título '+cli_staFIN_TITU.AsString+#13+
                       'Vencimento '+formatDateTime('dd/mm/yyyy',cli_staFIN_DVEN.AsDateTime)+#13+
                       'Valor '+formatfloat('R$ #,0.00',cli_staFIN_VALO.AsFloat)+#13+#13+
                       'Nota: O pedido será salvo, mas ficará aguardando por liberação.');
        end;
      end;

      if IECDPD.Hint = 'SUSPENSO' then
      oErro(Self.Handle,'Cliente com suspensão no cadastro !'+#13+
                   'Nota: O pedido será salvo, mas ficará aguardando por liberação.');
    end else
    begin
      if RECParametros.Fantasia <> 'OTIMOTEX FARDO' then
      begin
        IECDPD.Hint := uLimiteVenda(IECDCO.Text,IFThen(RECPedido.FAPD,'1','0'),CEIDCL.Text,oTextToValor(CETCDE.Value),cad_cli_crdCLI_CRED.AsString);
        if IECDPD.Hint <> '' then
        oErro(Self.Handle,'Cliente ultrapassou o limite de crédito estabelecido !'+#13+
                     'Limite Atual: '       +formatfloat('R$ #,0.00.',cad_cli_crdCLI_CRED.AsFloat)+#13+#13+
                     'Títulos Pendentes: '  +formatfloat('R$ #,0.00',VALOR_BANCARIO)+' ( '+IntToStr(ITENS_BANCARIO)+' )'+#13+
                     'Carteiras Pendentes: '+formatfloat('R$ #,0.00',VALOR_CARTEIRA)+' ( '+IntToStr(ITENS_CARTEIRA)+' )'+#13+
                     'Pedidos Pendentes: '  +formatfloat('R$ #,0.00',VALOR_PEDIDO)  +' ( '+IntToStr(ITENS_PEDIDO)  +' )'+#13+#13+
                     'Saldo Permitido: '    +formatfloat('R$ #,0.00',VALOR_SALDO));
      end;

      if IECDPD.Hint = '' then
      begin
        IECDPD.Hint := uLimiteBancario(IECDCO.Text,IFThen(RECPedido.FAPD,'1','0'),CEIDCL.Text);
        if IECDPD.Hint <> '' then
           oErro(Self.Handle,'Cliente possui duplicata(s) pendentes acima de '+IntToStr(RECParametros.FIN_LIMITE_BANCARIO)+ 'dias.'+#13+
                             'Nota: O pedido será salvo, mas ficará aguardando por liberação.');
      end;

      if IECDPD.Hint = '' then
      begin
        IECDPD.Hint := uLimiteCarteira(IECDCO.Text,IFThen(RECPedido.FAPD,'1','0'),CEIDCL.Text);
        if IECDPD.Hint <> '' then
           oErro(Self.Handle,'Cliente possui carteira(s) pendentes acima de '+IntToStr(RECParametros.FIN_LIMITE_CARTEIRA)+ 'dias da data média.'+#13+
                             'Nota: O pedido será salvo, mas ficará aguardando por liberação.'+#13+#13+
                             'Data Média '+formatDateTime('dd/mm/yy',DATA_MEDIA));
      end;
    end;
    STFI := IFThen(IECDPD.Hint <> EmptyStr,IECDPD.Hint,IFThen(Pos(LeftStr(STFI,3),'AGU') > 0,RECParametros.PED_STFI,STFI));
  end;

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_TPO WHERE DESCRICAO = '''+IECDPD.Text+'''');
    ExecQuery;
    IECDPD.Tag := Current.Vars[0].AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_PAG WHERE PAG_DPAG = '''+PEDEPG.Text+'''');
    ExecQuery;
    PEDEPG.Tag := Current.Vars[0].AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_TPO WHERE DESCRICAO = '''+IECDCO.Text+'''');
    ExecQuery;
    IECDCO.Tag := Current.Vars[0].AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_STA WHERE DESCRICAO = '''+STFI+'''');
    ExecQuery;
    CDFI := Current.Vars[0].AsInteger;
  end;
end;

procedure Tfrmven_ped_tmp.CETCDEValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if CETCDE.Value > 0 then
     CETCDE.Value := CETCDE.Value * -1;
     CETSDE.Value := CETCDE.Value;
end;

procedure Tfrmven_ped_tmp.cad_cli_crdAfterOpen(DataSet: TDataSet);
begin
  if (RECPedido.IDPK = 0) and (cad_cli_crdVDSC.AsFloat > 0) then
  begin
    EMINFADPED.Lines.Append('CAMPANHA CUPOM 50');
    EMINFADPED.Lines.Append('DESCONTO PROMOCIONAL NO VALOR DE R$ 50,00 !!!');

    CEVDSC.Value   := cad_cli_crdVDSC.AsFloat;
    oRefresh(Edicao);
  end;
end;

procedure Tfrmven_ped_tmp._Edicao(AFlag: Integer = 0);
begin
  with Edicao do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT PK.ID      ,PK.ROM_CDEP,');
    SelectSQL.Add('       PK.ROM_IDPK,PK.ROM_IDFK,');
    SelectSQL.Add('       PK.ROM_CDOC,PK.ROM_IPRO,PK.ROM_CART ,PK.ROM_CCLF,PK.ROM_CPRO,PK.ROM_CBAR,');
    SelectSQL.Add('       PK.ROM_DPRO,PK.ROM_DCOR,');
    SelectSQL.Add('       PK.ROM_DUNI,PK.ROM_UCON,PK.ROM_QTUN,');
    SelectSQL.Add('       PK.ROM_PESO,PK.ROM_PSCN,PK.ROM_METR,PK.ROM_REND,');
    SelectSQL.Add('       PK.ROM_QDIS,PK.ROM_RLDI,');
    SelectSQL.Add('       PK.ROM_QTDE,PK.ROM_QTRL,');
    SelectSQL.Add('       PK.ROM_PREC,PK.ROM_PTABI,PK.ROM_PTABF,');
    SelectSQL.Add('       PK.ROM_PDSC,PK.ROM_VDSC,PK.ROM_UNIT ,');
    SelectSQL.Add('       PK.ROM_TSDE,PK.ROM_TCDE,');
    SelectSQL.Add('       PK.ROM_PIPI,PK.ROM_VIPI,');
    SelectSQL.Add('       PK.ROM_PSBR,PK.ROM_PSLQ,');
    SelectSQL.Add('       PK.ROM_QTPD,PK.ROM_RLPD,PK.ROM_DSEP,PK.ROM_DTPD,');
    SelectSQL.Add('       PK.ROM_FOTO,PK.ROM_STAV,');
    SelectSQL.Add('       PK.ROM_FLAG');
    SelectSQL.Add('FROM   PED_VEN_ITE AS PK');

    if AFlag >= 0 then
       SelectSQL.Add('WHERE PK.ROM_FLAG = '+IntToStr(AFlag));

    SelectSQL.Add('ORDER BY PK.ROM_CDOC');
    Prepare;
  end;
  oRTransact(TSEdicao);
end;

procedure Tfrmven_ped_tmp.EDDECLValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if Sender.ClassType = TdxCurrencyEdit then
  begin
    RECPedido.Value := TdxCurrencyEdit(Sender).Text;
    RECPedido.Field := TdxCurrencyEdit(Sender).HelpKeyword;
  end else
  if Sender.ClassType = TdxMaskEdit then
  begin
    RECPedido.Value := TdxMaskEdit(Sender).Text;
    RECPedido.Field := TdxMaskEdit(Sender).HelpKeyword;
  end;

  try
    uPSQCadastros(RECPedido,SQLConsulta,TWinControl(Sender));
  finally
    if RECPedido.Selected then
    begin
      CEIDCL.Value := RECPedido.IDCD;
      EDDECL.Text  := IFThen(LADECL.Caption = 'Fantasia',RECPedido.DECD,RECPedido.RZCD);
      EDCNPJ.Text  := RECPedido.CNPJ;

      RECPedido.VCRD := RECPedido.VCRD;
      RECPedido.CSPD := False;

      EDDEPV.SetFocus;
    end else
    begin
      if Sender.ClassType = TdxCurrencyEdit then TdxCurrencyEdit(Sender).SetFocus else
      if Sender.ClassType = TdxMaskEdit     then TdxMaskEdit(Sender).SetFocus;
    end;
  end;  
end;

procedure Tfrmven_ped_tmp.IEIDCTChange(Sender: TObject);
begin
  if not ALockWindowUpdate then
  begin
    SIMSalva.Enabled := True;

    if Pos('NOSSO CARRO',IEIDCT.Text) > 0 then
       IEMFRT.Text := '3' else
    if Pos('PRÓPRIO',IEIDCT.Text) > 0 then
       IEMFRT.Text := '4' else
    if (oEmpty(IEIDCT.Text)) or (Pos('CLIENTE RETIRA',IEIDCT.Text) > 0) or (Pos('SEM FRETE',IEIDCT.Text) > 0) then
       IEMFRT.Text := '9';
  end;     
end;

procedure Tfrmven_ped_tmp._ResizeGrid;
var
  i: Word;
begin
  if Screen.Height <= 900 then
  begin
    for i := 0 to ComponentCount -1 do
        if Components[i].ClassType = TdxDBGrid then
        begin
          TdxDBGrid(Components[i]).Font.Size        := 8;
          TdxDBGrid(Components[i]).BandFont.Size    := 9;
          TdxDBGrid(Components[i]).HeaderFont.Size  := 9;
          TdxDBGrid(Components[i]).PreviewFont.Size := 7;
        end;
    Self.Font.Size := 8;
//    FrmPrincipal.PNLUtil.Visible := False;
  end;
end;

procedure Tfrmven_ped_tmp.PNLFTResize(Sender: TObject);
begin
  PNLAmostra.Width := PNLFT.Width - 15;
  IFT.Width   := PNLAmostra.Width - 15;
end;

end.
