unit pven_ped;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math, StrUtils,
  FMTBcd, IBEvents, rxSpeedbar, IBSQL, cxGraphics, cxControls, dxStatusBar;

type
  Tfrmven_ped = class(TForm)
    DTSEdicao: TDataSource;
    PNLFormRodape: TPanel;
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
    GBDestinatario: TGroupBox;
    LAIDCD: TLabel;
    LADECD: TLabel;
    LARZCD: TLabel;
    edtint: TdxMaskEdit;
    edbest: TdxMaskEdit;
    edcdcx: TdxMaskEdit;
    edqtsp: TdxMaskEdit;
    edqtpc: TdxMaskEdit;
    edagrp: TdxMaskEdit;
    edcdrd: TdxMaskEdit;
    edptng: TdxMaskEdit;
    edfatu: TdxMaskEdit;
    GBPedido: TGroupBox;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label28: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    cbprec: TdxPickEdit;
    PEDEPG: TdxPickEdit;
    cbstpd: TdxPickEdit;
    EDDERO: TdxMaskEdit;
    cbstco: TdxPickEdit;
    PNLMD: TPanel;
    GBINFADCAD: TGroupBox;
    PCINFADCAD: TdxPageControl;
    TSINFADCAD: TdxTabSheet;
    EMINFADCAD: TdxMemo;
    TSINFADFIN: TdxTabSheet;
    EMINFADFIN: TdxMemo;
    GBFrete: TGroupBox;
    PNLSumario: TPanel;
    GBSumario: TGroupBox;
    Shape9: TShape;
    LASubTotal: TLabel;
    Shape10: TShape;
    LATDSC: TLabel;
    Shape29: TShape;
    LATotal: TLabel;
    LADesconto2: TLabel;
    LADesconto3: TLabel;
    Shape6: TShape;
    LAQuantidade: TLabel;
    Shape24: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape8: TShape;
    Shape1: TShape;
    LAPeca: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    LAPesoB: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    LAPesoL: TLabel;
    Shape7: TShape;
    CEQTDE: TdxCurrencyEdit;
    CEQTRL: TdxCurrencyEdit;
    CEPSBR: TdxCurrencyEdit;
    CEPSLQ: TdxCurrencyEdit;
    CETSDE: TdxCurrencyEdit;
    CETCDE: TdxCurrencyEdit;
    PNLFotos: TPanel;
    GBFotos: TGroupBox;
    IFoto: TImage;
    Shape13: TShape;
    LAVIPI: TLabel;
    Shape14: TShape;
    CEVIPI: TdxCurrencyEdit;
    edcdro: TdxMaskEdit;
    LADesconto: TLabel;
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
    SIMSaida: TSpeedItem;
    SIMSalva: TSpeedItem;
    SIM_CAD_CLI_INF: TSpeedItem;
    SIMIMPORTA: TSpeedItem;
    SIMCAD_CLI: TSpeedItem;
    SIMNFe: TSpeedItem;
    SIMCFe: TSpeedItem;
    SIMPedido: TSpeedItem;
    SIMFinaliza: TSpeedItem;
    LACNPJ: TLabel;
    ladtra: TLabel;
    PEDECT: TdxPickEdit;
    Label1: TLabel;
    IEMFRT: TdxImageEdit;
    laVFrete: TLabel;
    CEVFRT: TdxCurrencyEdit;
    DEDTCA: TdxDateEdit;
    CEVDSC: TdxCurrencyEdit;
    CEPDSC: TdxCurrencyEdit;
    CETDSC: TdxCurrencyEdit;
    Edicao: TIBDataSet;
    EdicaoID: TIntegerField;
    EdicaoROM_CDEP: TSmallintField;
    EdicaoROM_IDPK: TLargeintField;
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
    DBGEdicao: TdxDBGrid;
    DBGEdicaoROM_ITEM: TdxDBGridMaskColumn;
    DBGEdicaoROM_CPRO: TdxDBGridMaskColumn;
    DBGEdicaoROM_CCLF: TdxDBGridMaskColumn;
    DBGEdicaoROM_DPRO: TdxDBGridMaskColumn;
    DBGEdicaoROM_DCOR: TdxDBGridPickColumn;
    DBGEdicaoROM_DUNI: TdxDBGridPickColumn;
    DBGEdicaoROM_QDIS: TdxDBGridMaskColumn;
    DBGEdicaoROM_QTDE: TdxDBGridCalcColumn;
    DBGEdicaoROM_QTRL: TdxDBGridMaskColumn;
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
    EdicaoROM_CDOC: TIntegerField;
    EdicaoROM_IDFK: TLargeintField;
    EdicaoROM_ITEM: TIBStringField;
    PNLTAB_PRC: TPanel;
    LALPRC_TAB_ABAIXO: TLabel;
    LALPRC_TAB_ACIMA_MIN: TLabel;
    LALPRC_TAB_ACIMA_MAX: TLabel;
    LAPRC_TAB_ACIMA_MIN: TLabel;
    LAPRC_TAB_ACIMA_MAX: TLabel;
    PNLPRC_TAB_ABAIXO: TPanel;
    PNLPRC_TAB_ACIMA_MIN: TPanel;
    PNLPRC_TAB_ACIMA_MAX: TPanel;
    SBRodape: TdxStatusBar;
    CEIDCD: TdxCurrencyEdit;
    EDCNPJ: TdxMaskEdit;
    EDDECD: TdxMaskEdit;
    EDRZCD: TdxMaskEdit;
    PECTNR: TdxPickEdit;
    lactnr: TLabel;
    Label2: TLabel;
    IETPCO: TdxImageEdit;
    DBGEdicaoROM_UNIT: TdxDBGridMaskColumn;
    QConsulta: TIBQuery;
    IEDescontos: TdxImageEdit;
    LADescontos: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtsdeKeyPress(Sender: TObject; var Key: Char);
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edderoKeyPress(Sender: TObject; var Key: Char);
    procedure EdicaoBeforeCancel(DataSet: TDataSet);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure DTSEdicaoDataChange(Sender: TObject; Field: TField);
    procedure EdicaoROM_QTDEValidate(Sender: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure IFotoClick(Sender: TObject);
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
    procedure LATDSCClick(Sender: TObject);
    procedure CETSDEValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure PEDEPGValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EDDEROChange(Sender: TObject);
    procedure PEDECTChange(Sender: TObject);
    procedure EdicaoAfterInsert(DataSet: TDataSet);
    procedure EdicaoBeforeInsert(DataSet: TDataSet);
    procedure EdicaoAfterScroll(DataSet: TDataSet);
    procedure SIMSalvaClick(Sender: TObject);
    procedure SIMPedidoClick(Sender: TObject);
    procedure SIMNFeClick(Sender: TObject);
    procedure SIMCFeClick(Sender: TObject);
    procedure SIMFinalizaClick(Sender: TObject);
    procedure SIM_CAD_CLI_INFClick(Sender: TObject);
    procedure SIMSaidaClick(Sender: TObject);
    procedure SIMIMPORTAClick(Sender: TObject);
    procedure SIMCAD_CLIClick(Sender: TObject);
    procedure CETCDEValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EdicaoROM_PDSCValidate(Sender: TField);
    procedure EdicaoROM_PIPIValidate(Sender: TField);
    procedure CEIDCDValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure PEDEPGExit(Sender: TObject);
    procedure PECTNRExit(Sender: TObject);
    procedure GBINFADCADExit(Sender: TObject);
    procedure DEDTCAValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbstpdValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EdicaoBeforeEdit(DataSet: TDataSet);
    procedure EdicaoBeforeDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure IEDescontosChange(Sender: TObject);
  private
    { Private declarations }
    FMSGRodape: String;
    REC_SHE_DEF: TREC_SHE_DEF;
    RECPedidos: TRECPEdidos;

    { Definindo uma propriedade no form
      Criado um atributo FMSGCaption e um método SetMSGCaption para trabalhar com a propriedade
      FMSGCaption   - Encapsula a informação
      SetMSGCaption - Método de acesso que recebe a atualização da informação MSGCaption
      Não usarei o método SetMSGCaption para atribuir informação a FMSGRodpae,
      vou apenas utilizar a propriedade }

    { método para atribuição\validação de valor }
    procedure SetMSGRodape(const AValue: String);

    procedure _Edicao(AFlag: Integer = 0; AEmpty: Boolean = False);
    procedure _CheckErrors;
    procedure _CheckConstraints;
    procedure _DTSEdicao;
    procedure _CPPSQ(ADTXT: String;AFTXT: String);
    procedure _FillCP;
    procedure PESQUISA_PEDIDO_ABATIMENTO_DEVOLUCAO;
    procedure _ExecEvent;
    procedure _DELINFADCAD;
 public
    { Public declarations }
    property SMSGRodape: String read FMSGRodape write SetMSGRodape;

    procedure PESQUISA_TIPO(pesq,chave: string);
    procedure PESQUISA_FPAGTO(pesq,chave: string);

    Constructor Create(AOwner: TComponent; const AIDPedido: Integer); reintroduce; overload;
  end;

var
  frmven_ped: Tfrmven_ped;
  Motivo    : String;
  InfAdMot  : TStringList;
  ASTFI     : String;
  ACDST     : Integer;

implementation

uses uPrincipal, bPrincipal,
  pctr_ped, pimporta_geral, pProduto_Devolucao_Cancelamento,
  pcad_cli_edi;

{$R *.dfm}

procedure Tfrmven_ped.SetMSGRodape(const AValue: String);
begin
  FMSGRodape := AValue;
end;

Constructor Tfrmven_ped.Create(AOwner: TComponent; const AIDPedido: Integer);
begin
  inherited Create(AOwner);
end;

procedure Tfrmven_ped.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;

  { Records }
  oIREC_SHE_DEF(REC_SHE_DEF);
  oIRECPedidos(RECPedidos);

  { Métodos }
  SMSGRodape := 'Inclusão de Pedido';

  DEDTCA.Date    := RECParametros.SHE_DATA + TIME;
  DEDTCA.Enabled := (RECUsuarios.Id = 66);

  DBGEdicaoROM_CCLF.Visible := (RECUsuarios.Id = 66   );
  DBGEdicaoROM_QTRL.Visible := (RECParametros.EST_QTRL);

  DBGEdicaoROM_UNIT.DisableEditor := not (bPSQUSER('USU_AUTO','Vendas','Pedidos','Alterar Preço da Tabela'));
  InfAdMot := TStringList.Create;

  { Ajusta Posicionamento da Página }
  REC_SHE_DEF.FPosition := poDesigned;

  { Edição }
  oOTransact(TSEdicao,ltRead_Only);
  _Edicao(0,True);

  { Pedido }
  oOTransact(TConsulta);
  CEIDCD.Value := RECParametros.CD_ID;
  EDDECD.Text  := RECParametros.CD_NO;
  EDRZCD.Text  := RECParametros.CD_NO;

  IEIDCV.Text  := IntToStr(IFThen(RECUsuarios.Grupo = 'VEN',RECUsuarios.ID,RECParametros.CV_ID));
  IEIDCR.Text  := RECParametros.CR_ID;

  PEDECT.Tag   := RECParametros.CT_ID;
  PEDECT.Text  := RECParametros.CT_NO;

  cbstpd.Text  := RECParametros.PED_TPD_NO;
  cbstco.Text  := RECParametros.PED_TCO_NO;
  PEDEPG.Text  := RECParametros.PED_PRZ_NO;

  ASTFI := RECParametros.PED_STFI;

  PESQUISA_TIPO('VEN_TIPO',cbstpd.Text);
  PESQUISA_FPAGTO('F',PEDEPG.Text);
end;

procedure Tfrmven_ped.FormShow(Sender: TObject);
begin
  { Registra Evento }
  with EEvent do
       try
         UnregisterEvents;
         Events.Add(oREPZero('CTR_PED','_',RECParametros.EP_ID,3));
         RegisterEvents;
       except
         on E: Exception do
               oErro(Handle,'Falha ao tentar registrar evento !'+#13+
                            'Evento: '+oREPZero('CTR_PED','_',RECParametros.EP_ID,3)+'.'+#13+
                            'Formulário: '+Self.Name+'.'        +#13+#13+
                            'Error Code: '+E.Message);
       end;
end;

procedure Tfrmven_ped.FormActivate(Sender: TObject);
var
  i: Word;
begin
  OnActivate := Nil;

  try
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CON_CTNR FROM CAD_CON GROUP BY 1 ORDER BY 1');
      ExecQuery;
      while not eof do
      begin
        PECTNR.Items.Add(Current.Vars[0].AsString);
        next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT TRA_FANT FROM CAD_TRA WHERE TRA_STAV = ''A'' GROUP BY 1 ORDER BY 1');
      ExecQuery;
      while not eof do
      begin
        PEDECT.Items.Add(Current.Vars[0].AsString);
        next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.LOGIN FROM TAB_USER AS PK WHERE PK.ID > 0 AND PK.REST = ''A'' AND PK.GRUPO = ''VEN'' ORDER BY 2');
      ExecQuery;
      while not eof do
      begin
        IEIDCV.Values.Add(Current.Vars[0].AsString);
        IEIDCV.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

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

      Close;
      SQL.Clear;
      SQL.Add('SELECT VEN_TIPO FROM TAB_PED GROUP BY 1 ORDER BY 1');
      ExecQuery;
      while not eof do
      begin
        //if ((not RECParametros.EST_QTRL) or (RECParametros.EST_QTRL) and (Pos(LeftStr(Current.Vars[0].AsString,3),'DEVABA') = 0)) then
        CBSTPD.Items.Add(Current.Vars[0].AsString);
        next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT VEN_TIPO FROM TAB_COB WHERE VEN_TIPO <> ''DEVOLUÇÃO'' AND VEN_TIPO <> ''ABATIMENTO''  GROUP BY 1 ORDER BY 1');
      ExecQuery;
      while not eof do
      begin
        cbstco.Items.Add(Current.Vars[0].AsString);
        next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT PAG_DPAG FROM TAB_PAG GROUP BY 1 ORDER BY 1');
      ExecQuery;
      while not eof do
      begin
        PEDEPG.Items.Add(Current.Vars[0].AsString);
        next;
      end;
    end;

    if Assigned(frmctr_ped) then
    if frmctr_ped.SIAltera.Tag > 0 then
    begin
      RECPedidos.IDEV := frmctr_ped.SIAltera.Tag;

      SMSGRodape := IFThen(RECPedidos.IDEV = 0,'Inclusão'  ,
                    IFThen(RECPedidos.IDEV = 1,'Alteração' ,
                    IFThen(RECPedidos.IDEV = 2,'Devolução' ,
                    IFThen(RECPedidos.IDEV = 3,'Abatimento',
                                               'Pedido de Venda')))) + ' de Pedido';

      { Pedido }
      edcdro.Text := IntToStr(IFThen(RECPedidos.IDEV = 1,frmctr_ped.CadastroID.AsInteger,0));
      edcdro.Tag  := StrToInt(edcdro.Text);
      eddero.Text := frmctr_ped.CadastroDEPK.AsString;
      DEDTCA.Date := IFThen(RECPedidos.IDEV = 1,frmctr_ped.CadastroDTCA.AsDateTime,RECParametros.SHE_DATA + TIME);

      { Romaneio }
      RECPedidos.CDRO := IntToStr(frmctr_ped.CadastroCDRO.AsInteger);

      { Abatimentos / Devoluções }
      edcdrd.Tag  := IFThen(RECPedidos.IDEV = 1,frmctr_ped.CadastroCDDV.AsInteger,frmctr_ped.CadastroId.AsInteger );
      edcdrd.Text := IFThen(RECPedidos.IDEV = 1,frmctr_ped.CadastroDEDV.AsString ,frmctr_ped.CadastroDEPK.AsString);

      { Caixa Registrado }
      edcdcx.Text := IFThen(RECPedidos.IDEV = 1,frmctr_ped.CadastroCDCX.AsString ,RECParametros.CDCX);

      { Destinatário }
      CEIDCD.Value    := frmctr_ped.CadastroIDCD.AsInteger;
      CEIDCD.Modified := True;
      CEIDCD.ValidateEdit;

      { Vendedores }
      IEIDCV.Text := frmctr_ped.CadastroIDCV.AsString; { Interno }
      IEIDCR.Text := frmctr_ped.CadastroIDCR.AsString; { Externo }

      { Crédido Financeiro }
      RECPedidos.FIN_IDEP :=  RECParametros.EP_ID;
      RECPedidos.FIN_CSPD := (frmctr_ped.CadastroCSCD.AsInteger = 1);
      RECPedidos.FIN_VCRD :=  frmctr_ped.CadastroFIN_VCRD.AsFloat;

      { Descontos }
      LATDSC.Caption := frmctr_ped.CadastroTDSC.AsString;
      CETDSC.Value   := IFThen(frmctr_ped.CadastroTDSC.AsString = '%',frmctr_ped.CadastroPDSC.AsFloat,frmctr_ped.CadastroVDSC.AsFloat);

      { Tipos }
      cbstpd.Text := frmctr_ped.SIAltera.Caption;
      PESQUISA_TIPO('VEN_TIPO',cbstpd.Text);

      { Cobrança }
      cbstco.Text := frmctr_ped.CadastroSTCO.AsString;
      IETPCO.Text := frmctr_ped.CadastroTPCO.AsString;
      IETPCO.Hint := frmctr_ped.CadastroRECO.AsString;

      { Prazos }
      PEDEPG.Text := IFThen(RECPedidos.IDEV = 1,frmctr_ped.CadastroDEPG.AsString,RECParametros.PED_PRZ_NO);
      PESQUISA_FPAGTO('F',PEDEPG.Text);

      { Situação }
      ASTFI := frmctr_ped.CadastroDEST.AsString;

      { Transporte }
      IEMFRT.Text  := frmctr_ped.CadastroMFRT.AsString;
      PEDECT.Tag   := frmctr_ped.CadastroIDCT.AsInteger;
      PEDECT.Text  := frmctr_ped.CadastroDECT.AsString;
      PECTNR.Text  := frmctr_ped.CadastroCTNR.AsString;
      CEVFRT.Value := frmctr_ped.CadastroVFRT.AsFloat;

      { Informações Adicionais }
      EMINFADCAD.Text := frmctr_ped.CadastroINFADCAD.AsString;

      try
        { Itens }
        oOTransact(FBird.TFBProdutos);

        frmctr_ped.FKCadastro.DisableControls;
        frmctr_ped.FKCadastro.First;

        Edicao.DisableControls;
        Edicao.First;

        if ((RECPedidos.IDEV = 2) and (frmctr_ped.CadastroDEPD.AsInteger = 0) or (RECPedidos.IDEV = 3)) and (RECPedidos.CDRO > 0) then
        begin
          with SQLConsulta do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT   FK.IDCP,FK.DECP,FK.DGCP,FK.UCOM,FK.UCON,FK.VPRC_PAD,FK.VPRC_COM,FK.PDSC,FK.VDSC,SUM(FK.QTDE) AS QTDE,SUM(FK.QTRL) AS QTRL');
            SQL.Add('FROM '  +SLPrincipal.Values['rom_cab'] + ' AS PK');
            SQL.Add('JOIN '  +SLPrincipal.Values['rom_ite'] + ' AS FK ON (FK.IDPK = PK.ID)');
            SQL.Add('WHERE    PK.ID = '''+ RECPedidos.CDRO +'''');
            SQL.Add('GROUP BY IDCP,DECP,DGCP,UCOM,UCON,VPRC_PAD,VPRC_COM,PDSC,VDSC');
            ExecQuery;
          end;

          while not SQLConsulta.Eof do
          begin
            Edicao.Append;
            uPesquisa_Produto(RECParametros.EP_ID,SQLConsulta.Current.ByName('IDCP').AsString,'ID');
            _FillCP;

            EdicaoROM_IPRO.Value := SQLConsulta.Current.ByName('IDCP').AsInteger;
            EdicaoROM_DPRO.Value := SQLConsulta.Current.ByName('DECP').AsString;
            EdicaoROM_DCOR.Value := SQLConsulta.Current.ByName('DGCP').AsString;

            EdicaoROM_DUNI.Value := SQLConsulta.Current.ByName('UCOM').AsString;
            EdicaoROM_UCON.Value := SQLConsulta.Current.ByName('UCON').AsString;

            EdicaoROM_QTDE.Value := SQLConsulta.Current.ByName('QTDE').AsCurrency;
            EdicaoROM_QTRL.Value := SQLConsulta.Current.ByName('QTRL').AsInteger;

            EdicaoROM_PDSC.Value := SQLConsulta.Current.ByName('PDSC').AsCurrency;
            EdicaoROM_VDSC.Value := SQLConsulta.Current.ByName('VDSC').AsCurrency;

            EdicaoROM_PREC.Value := SQLConsulta.Current.ByName('VPRC_COM').AsCurrency;
            EdicaoROM_UNIT.Value := SQLConsulta.Current.ByName('VPRC_COM').AsCurrency;

            EdicaoROM_TSDE.Value := EdicaoROM_QTDE.AsCurrency * EdicaoROM_PREC.AsCurrency;
            EdicaoROM_VDSC.Value := EdicaoROM_TSDE.AsCurrency *(EdicaoROM_PDSC.AsCurrency / 100);
            EdicaoROM_VIPI.Value := EdicaoROM_TSDE.AsCurrency *(EdicaoROM_PIPI.AsCurrency / 100);
            EdicaoROM_TCDE.Value := EdicaoROM_TSDE.AsCurrency + IFThen(RECUsuarios.Id = 66,EdicaoROM_VIPI.AsCurrency,0);

            Edicao.Post;
            SQLConsulta.Next;
          end;
        end else
        if (RECPedidos.IDEV = 1) or ((RECPedidos.IDEV = 2) and (frmctr_ped.CadastroDEPD.AsInteger = 0) or (RECPedidos.IDEV = 3)) then
        begin
          while not frmctr_ped.FKCadastro.Eof do
          begin
            Edicao.Append;
            uPesquisa_Produto(RECParametros.EP_ID,frmctr_ped.FKCadastroIDCP.AsString,'ID');
            _FillCP;

            EdicaoROM_IDFK.Value := frmctr_ped.FKCadastroID.AsInteger;
            EdicaoROM_CDEP.Value := frmctr_ped.FKCadastroIDEP.AsInteger;
            EdicaoROM_IDPK.Value := frmctr_ped.FKCadastroIDPK.AsInteger;

            EdicaoROM_ITEM.Value := oStrZero(frmctr_ped.FKCadastroITEM.AsInteger,5);
            EdicaoROM_IPRO.Value := frmctr_ped.FKCadastroIDCP.AsInteger;
            EdicaoROM_CBAR.Value := frmctr_ped.FKCadastroCEAN.AsString;

            EdicaoROM_DPRO.Value := frmctr_ped.FKCadastroDECP.AsString;
            EdicaoROM_DCOR.Value := frmctr_ped.FKCadastroDGCP.AsString;

            EdicaoROM_DUNI.Value := frmctr_ped.FKCadastroUCOM.AsString;
            EdicaoROM_UCON.Value := frmctr_ped.FKCadastroUCON.AsString;

            EdicaoROM_QTDE.Value := frmctr_ped.FKCadastroQTDE.AsCurrency;
            EdicaoROM_QTRL.Value := frmctr_ped.FKCadastroQTRL.AsInteger;

            if (frmctr_ped.FKCadastroVPRC_PAD_INI.AsCurrency > 0) and (frmctr_ped.FKCadastroVPRC_PAD_INI.AsCurrency <> frmctr_ped.FKCadastroVPRC_PAD_FIM.AsCurrency) then
            begin
              EdicaoROM_PTABI.Value := frmctr_ped.FKCadastroVPRC_PAD_INI.AsCurrency;
              EdicaoROM_PTABF.Value := frmctr_ped.FKCadastroVPRC_PAD_FIM.AsCurrency;
            end;

            EdicaoROM_PDSC.Value := frmctr_ped.FKCadastroPDSC.AsCurrency;
            EdicaoROM_VDSC.Value := frmctr_ped.FKCadastroVDSC.AsCurrency;

            EdicaoROM_PREC.Value := frmctr_ped.FKCadastroVPRC_PAD.AsCurrency;
            EdicaoROM_UNIT.Value := frmctr_ped.FKCadastroVPRC_COM.AsCurrency;

            EdicaoROM_TSDE.Value := frmctr_ped.FKCadastroTSDE.AsCurrency;
            EdicaoROM_TCDE.Value := frmctr_ped.FKCadastroTCDE.AsCurrency;

            EdicaoROM_CCLF.Value := frmctr_ped.FKCadastroNCM.AsString;
            EdicaoROM_PIPI.Value := frmctr_ped.FKCadastroPIPI.AsCurrency;
            EdicaoROM_VIPI.Value := frmctr_ped.FKCadastroVIPI.AsCurrency;

            EdicaoROM_PSBR.Value := frmctr_ped.FKCadastroPSBR.AsCurrency;
            EdicaoROM_PSLQ.Value := frmctr_ped.FKCadastroPSLQ.AsCurrency;

            { Expedição }
            if RECPedidos.IDEV = 1 then // somente para alteração
            begin
              EdicaoROM_QTPD.Value := frmctr_ped.FKCadastroQTSP.AsCurrency;
              EdicaoROM_RLPD.Value := frmctr_ped.FKCadastroRLSP.AsInteger;
              EdicaoROM_DSEP.Value := frmctr_ped.FKCadastroDESP.AsString;
              EdicaoROM_DTPD.Value := frmctr_ped.FKCadastroDTSP.AsDateTime;
            end;

            Edicao.Post;
            frmctr_ped.FKCadastro.Next;
          end;
        end;
      finally
        oCTransact(FBird.TFBProdutos);

        frmctr_ped.FKCadastro.EnableControls;
        Edicao.EnableControls;
      end;
    end;

    if Pos(LeftStr(cbstpd.Text,3),'ABA') > 0 then
    begin
      CETCDE.ReadOnly := False;
      CETCDE.Cursor   := crHandPoint;

      CETCDE.Value := frmctr_ped.CadastroTCDE.AsCurrency;
      CETSDE.Value := frmctr_ped.CadastroTSDE.AsCurrency;
    end;
  finally
    oRTransact(TSEdicao,ltRead_Only_Release_Commit);

    Screen.Cursor    := crDefault;
    SIMSalva.Enabled := False;

    Caption := SMSGRodape;
    Tag := 0;
  end;

  if Pos(LeftStr(Caption,3),'Inc') = 0 then
     DBGEdicao.SetFocus else
     EDDECD.SetFocus;

  if Pos(LeftStr(Caption,3),'DevAba') > 0 then
  begin
    { Cliente }
    CEIDCD.Enabled := False;
    EDCNPJ.Enabled := False;
    EDDECD.Enabled := False;
    EDRZCD.Enabled := False;

    { Vendedores }
    IEIDCV.Enabled := False;

    { Pedido }
    EDDERO.Enabled := False;
    CBSTPD.Enabled := False;
    CBSTCO.Enabled := False;
    IETPCO.Enabled := False;
    PEDEPG.Enabled := False;
    PECTNR.Enabled := False;

    { Transporte }
    PEDECT.Enabled := False;
    IEMFRT.Enabled := False;
    CEVFRT.Enabled := False;

    if (Pos(LeftStr(Caption,3),'Aba') = 0) and (RECParametros.EST_QTRL) then
    begin
      SIEInclui.Enabled  := False;
      SIEAltera.Enabled  := False;
      SIEExclui.Enabled  := False;
      SIESalva.Enabled   := False;
      SIECAncela.Enabled := False;

      if RECUsuarios.ID > 0 then
      for i := 0 to DBGEdicao.ColumnCount - 1 do
          DBGEdicao.Columns[i].DisableEditor := True;
          DBGEdicao.Tag := 1;
    end;
  end;
end;

procedure Tfrmven_ped.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if SIMSalva.Enabled then
  begin
    if (Edicao.State in [dsInsert,dsEdit]) and (not oEmpty(EdicaoROM_TCDE.AsCurrency)) then
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
       oFTransact(TConsulta);
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
       oFREC_SHE_DEF(REC_SHE_DEF);
       oFRECPedidos(RECPedidos);
       InfAdMot.Free;
     except
       on E: Exception do
       begin
         oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                  'Error Code: '+E.Message+'.'        +#13+
                                   Caption+'.');
       end;
     end;
  finally
    Screen.Cursor := crDefault;
    Frmven_ped    := Nil;
  end;
end;

procedure Tfrmven_ped.FormKeyDown(Sender: TObject; var Key: Word;
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
    GetWindowRect(Application.MainForm.ClientHandle,S);
    T := S.Top;
    B := S.Bottom;
    L := S.Left;
    R := S.Right;
    H := B;

    FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
    FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

    if REC_SHE_DEF.FPosition = poDefault then
    begin
      Top    := IFThen(FormStyle = fsNormal,T,0);
      Left   := IFThen(FormStyle = fsNormal,L,0);
      Width  := IFThen(REC_SHE_DEF.FPosition = poDefault,R - L - 5,0);
      Height := IFThen(REC_SHE_DEF.FPosition = poDefault,H - T - 5,0);
    end else
    begin
      if REC_SHE_DEF.FPosition = poDesigned then
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

    { Ajusta o rodapé conforme o form }
    SBRodape.Panels[SBRodape.Panels.Count - 2].Width := SBRodape.Width - (SBRodape.Panels[SBRodape.Panels.Count - 1].Width + 140);
    
    if RECUsuarios.Id = 0 then
       Caption := 'DIMENSÕES: Monitor: Altura = '+IntToStr(Screen.Height)+' Largura: '+IntToStr(Screen.Width)+' / '+
                  'Tela: Altura = '              +IntToStr(Self.Height  )+' Largura: '+IntToStr(Self.Width  );
  end;
end;

procedure Tfrmven_ped.FormResize(Sender: TObject);
begin
  if frmven_ped <> Nil then
     Paint;
end;

procedure Tfrmven_ped.SIMSalvaClick(Sender: TObject);
var
  RECSP_PED_VEN_ITE: TRECPedidos;
  RECSP_CAD_PRO_EST: TRECPedidos;
begin
  _CheckErrors;
  _CheckConstraints;

  oOTransact(TEdicao);
  if (edcdro.Tag = 0) and (RECPedidos.FIN_VCRD > 0) then
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE CAD_CLI_CRD');
        SQL.Add('SET    VDSC = 0');
        SQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID+'''');
        SQL.Add('AND    IDCD = '''+CEIDCD.Text     +'''');
        ExecQuery;
      end;

  try
    oIRECPedidos(RECSP_PED_VEN_ITE); RECSP_PED_VEN_ITE.ASPEdicao := SPEdicao;
    oIRECPedidos(RECSP_CAD_PRO_EST); RECSP_CAD_PRO_EST.ASPEdicao := SPEdicao;
    try
      with RECPedidos do
      begin
        IDPK := EDCDRO.Tag;
        DEPK := EDDERO.Text;
        DTPK := DEDTCA.Date;

        CTNR := PECTNR.Text;
        CDCX := edcdcx.Text;

        IDCD := CEIDCD.Value;
        IDCV := IEIDCV.Text;
        IDCR := IEIDCR.Text;

        PK_QTDE := CEQTDE.Value;
        PK_QTRL := StrToInt(CEQTRL.Text);

        PK_TSDE := CETSDE.Value;
        PK_TDSC := LATDSC.Caption;
        PK_PDSC := CEPDSC.Value;
        PK_VDSC := CEVDSC.Value;
        PK_TCDE := CETCDE.Value;
        PK_VIPI := CEVIPI.Value;

        IDCT := PEDECT.Tag;
        MFRT := IEMFRT.Text;
        VFRT := CEVFRT.Value;
        CFRT := EmptyStr;

        PK_PSBR := CEPSBR.Value;
        PK_PSLQ := CEPSLQ.Value;

        IDFK := edcdrd.Tag;
        DEFK := edcdrd.Text;
        DTFK := 0;

        PED_CDPD := cbstpd.Tag;
        STPD := cbstpd.Text;

        CDCO := cbstco.Tag;
        STCO := cbstco.Text;
        TPCO := IETPCO.Text;
        CDPG := PEDEPG.Tag;

        PK_CDST := ACDST;
        PK_DEST := ASTFI;

        INFADCAD := EMINFADCAD.Text;

        ASPEdicao := SPEdicao;
        oSP_PED_VEN_CAB(RECPedidos);
      end;
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

    try
     _Edicao(-1); // Abre todos registros, inclusive excluídos.
      Edicao.DisableControls;
      Edicao.First;

      while not Edicao.Eof do
      begin
        with RECSP_PED_VEN_ITE do
        begin
          FLAG := EdicaoROM_FLAG.AsInteger;
          
          IDPK := RECPedidos.IDPK;   // Id PED_VEN_CAB
          IDFK := EdicaoROM_IDFK.AsInteger; // Id PED_VEN_ITE
          ITEM := EdicaoROM_ITEM.AsInteger;

          IDCP := EdicaoROM_IPRO.AsInteger;
          CEAN := EdicaoROM_CBAR.AsString;

          DECP := EdicaoROM_DPRO.AsString;
          DGCP := EdicaoROM_DCOR.AsString;

          UCOM := EdicaoROM_DUNI.AsString;
          UCON := EdicaoROM_UCON.AsString;

          QTDE := EdicaoROM_QTDE.AsCurrency;
          QTRL := EdicaoROM_QTRL.AsInteger;

          VPRC_PAD_INI := EdicaoROM_PTABI.AsCurrency;
          VPRC_PAD_FIM := EdicaoROM_PTABF.AsCurrency;

          VPRC_PAD := EdicaoROM_PREC.AsCurrency;
          VPRC_COM := EdicaoROM_UNIT.AsCurrency;

          PDSC := EdicaoROM_PDSC.AsCurrency;
          VDSC := EdicaoROM_VDSC.AsCurrency;

          TSDE := EdicaoROM_TSDE.AsCurrency;
          TCDE := EdicaoROM_TCDE.AsCurrency;

          NCM  := EdicaoROM_CCLF.AsString;
          PIPI := EdicaoROM_PIPI.AsCurrency;
          VIPI := EdicaoROM_VIPI.AsCurrency;

          PSBR := EdicaoROM_PSBR.AsCurrency;
          PSLQ := EdicaoROM_PSLQ.AsCurrency;

          oSP_PED_VEN_ITE(RECSP_PED_VEN_ITE);
        end;

        if (EdicaoROM_FLAG.AsInteger = 0) and (Pos(LeftStr(cbstpd.Text,3),'DEV') > 0) then
        begin
          SPEdicao.Close;
          SPEdicao.StoredProcName := 'SP_PED_VEN_DEV';
          SPEdicao.Prepare;

          SPEdicao.ParamByName('AIDEP').Value       := RECParametros.EP_ID;
          SPEdicao.ParamByName('AIDCA').Value       := RECUsuarios.Id;
          SPEdicao.ParamByName('AIDED').Value       := RECUsuarios.Id;
          SPEdicao.ParamByName('AIDPK').Value       := RECPedidos.IDPK;
          SPEdicao.ParamByName('ACDPK').Value       := RECPedidos.DEPK;
          SPEdicao.ParamByName('ADTPK').Value       := DEDTCA.Date;

          SPEdicao.ParamByName('AIDFK').Value       := edcdrd.Tag;
          SPEdicao.ParamByName('ACDFK').Value       := edcdrd.Text;
          SPEdicao.ParamByName('ADTFK').Value       := DEDTCA.Date;

          SPEdicao.ParamByName('AIDCL').Value       := CEIDCD.Value;
          SPEdicao.ParamByName('AIDCV').Value       := IEIDCV.Text;
          SPEdicao.ParamByName('AIDCR').Value       := IEIDCR.Text;
          SPEdicao.ParamByName('AIDCP').Value       := EdicaoROM_IPRO.AsInteger;
          SPEdicao.ParamByName('AARTIGO').Value     := EdicaoROM_CART.AsString;
          SPEdicao.ParamByName('APRODUTO').Value    := EdicaoROM_CPRO.AsString;
          SPEdicao.ParamByName('ADESCRICAO').Value  := EdicaoROM_DPRO.AsString;
          SPEdicao.ParamByName('ACOR').Value        := TRIM(LEFTSTR(EdicaoROM_DCOR.AsString,30));
          SPEdicao.ParamByName('AUCOM').Value       := EdicaoROM_DUNI.AsString;
          SPEdicao.ParamByName('AQUANTIDADE').Value := EdicaoROM_QTDE.AsCurrency;
          SPEdicao.ParamByName('AROLO').Value       := EdicaoROM_QTRL.AsInteger;
          SPEdicao.ParamByName('AVUPV').Value       := EdicaoROM_UNIT.AsCurrency;
          SPEdicao.ParamByName('AMOTIVO').Value     := TRIM(LEFTSTR(Motivo,30));
          SPEdicao.ParamByName('AINFADCAD').Value   := InfAdMot.Text;
          SPEdicao.ExecProc;
        end;

        if (edbest.Text = '1') and (EdicaoROM_QTPD.AsCurrency = 0) and (Pos(LeftStr(cbstpd.Text,3),'ABA') = 0) then
            with RECSP_CAD_PRO_EST do
            begin
              FLAG := EdicaoROM_FLAG.AsInteger;

              IDEP := RECParametros.EP_ID;
              IDPK := RECPedidos.IDPK;
              IDFK := IFThen(RECSP_PED_VEN_ITE.IDFK > 0,RECSP_PED_VEN_ITE.IDFK,EdicaoROM_IDFK.AsInteger);

              DEPK := RECPedidos.DEPK;
              DTPK := DEDTCA.Date;
              CTNR := RECPedidos.CTNR;

              IDCD := RECPedidos.IDCD;
              IDCV := RECPedidos.IDCV;
              IDCR := RECPedidos.IDCR;

              ITEM := RECSP_PED_VEN_ITE.ITEM;
              IDCP := RECSP_PED_VEN_ITE.IDCP;
              CEAN := RECSP_PED_VEN_ITE.CEAN;

              DECP := RECSP_PED_VEN_ITE.DECP;
              DGCP := RECSP_PED_VEN_ITE.DGCP;

              UCOM := RECSP_PED_VEN_ITE.UCOM;
              UCON := RECSP_PED_VEN_ITE.UCON;

              QTDE := RECSP_PED_VEN_ITE.QTDE;
              QTRL := RECSP_PED_VEN_ITE.QTRL;

              VPRC_PAD_INI := RECSP_PED_VEN_ITE.VPRC_PAD_INI;
              VPRC_PAD_FIM := RECSP_PED_VEN_ITE.VPRC_PAD_FIM;

              VPRC_PAD := RECSP_PED_VEN_ITE.VPRC_PAD;
              PDSC     := RECSP_PED_VEN_ITE.PDSC;
              VDSC     := RECSP_PED_VEN_ITE.VDSC;
              VPRC_COM := RECSP_PED_VEN_ITE.VPRC_COM;

              TSDE := RECSP_PED_VEN_ITE.TSDE;
              TCDE := RECSP_PED_VEN_ITE.TCDE;

              NCM  := RECSP_PED_VEN_ITE.NCM ;
              PIPI := RECSP_PED_VEN_ITE.PIPI;
              VIPI := RECSP_PED_VEN_ITE.VIPI;

              PSBR := RECSP_PED_VEN_ITE.PSBR;
              PSLQ := RECSP_PED_VEN_ITE.PSLQ;

              INFADCAD := RECPedidos.INFADCAD;

              oSP_CAD_PRO_EST_RES(RECSP_CAD_PRO_EST);
            end;

        Edicao.Next;
      end;

      _Edicao;
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
      if Pos(LeftStr(cbstpd.Text,3),'ABA') > 0 then
      begin
        SPEdicao.Close;
        SPEdicao.StoredProcName := 'SP_PED_VEN_ABA';
        SPEdicao.Prepare;

        SPEdicao.ParamByName('AIDEP').Value     := RECParametros.EP_ID;
        SPEdicao.ParamByName('AIDCA').Value     := RECUsuarios.Id;
        SPEdicao.ParamByName('AIDED').Value     := RECUsuarios.Id;
        SPEdicao.ParamByName('AIDPK').Value     := RECPedidos.IDPK;
        SPEdicao.ParamByName('ACDPK').Value     := RECPedidos.DEPK;
        SPEdicao.ParamByName('ADTPK').Value     := DEDTCA.Date;
        SPEdicao.ParamByName('AIDFK').Value     := edcdrd.Tag;
        SPEdicao.ParamByName('ACDFK').Value     := edcdrd.Text;
        SPEdicao.ParamByName('ADTFK').Value     := DEDTCA.Date;
        SPEdicao.ParamByName('AIDCL').Value     := CEIDCD.Value;
        SPEdicao.ParamByName('AIDCV').Value     := IEIDCV.Text;
        SPEdicao.ParamByName('AIDCR').Value     := IEIDCR.Text;
        SPEdicao.ParamByName('AVTPV').Value     := CETCDE.Value;
        SPEdicao.ParamByName('AMOTIVO').Value   := TRIM(LEFTSTR(Motivo,30));
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

    oCTransact(TEdicao);
    oAviso(handle,'Pedido '+RECPedidos.DEPK+' '+IFThen(edcdro.Tag = 0,'Registrado','Atualizado')+' com Sucesso !');

    try
      if Pos(LeftStr(cbstpd.Text,3),'ABADEV') > 0 then bBAI_FINANCEIRO(0,RECPedidos.IDPK);
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRollback);
        oException(DBGEdicao,'Falha ao tentar registrar contas a receber !'+#13+
                             'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                             'Erro: '+E.Message);
      end;
    end;
  finally
    oFRECPedidos(RECSP_PED_VEN_ITE);
    oFRECPedidos(RECSP_CAD_PRO_EST);
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

procedure Tfrmven_ped.SIMIMPORTAClick(Sender: TObject);
begin
       FrmImporta_Geral := tFrmImporta_Geral.Create(Self);
  with FrmImporta_Geral do
       try
         cbTIPO.Text    := IFThen(Pos(LeftStr(cbstpd.Text,3),'DEV'   ) = 0,'PEDIDOS'     ,'DEVOLUÇÕES');
         cbTIPO.Tag     := IFThen(Pos(LeftStr(cbstpd.Text,3),'DEVABA') = 0,EDCDRO.Tag + 1,EDCDRD.Tag  );
         cbTIPO.Enabled := (Pos(LeftStr(cbstpd.Text,3),'DEVABA') = 0);
         cbFANT.Enabled := (Pos(LeftStr(cbstpd.Text,3),'DEVABA') = 0);
         ShowModal;

         if REC_SHE_DEF.Edited then
            try
              oLockWindowUpdate(Edicao);
              imp_ite.First;
              while not imp_ite.Eof do
              begin
                Edicao.Append;
                EdicaoROM_IPRO.Value  := imp_iteROM_IPRO.AsInteger;
                EdicaoROM_CBAR.Value  := imp_iteROM_CBAR.Value;
                EdicaoROM_CART.Value  := imp_iteROM_CART.Value;
                EdicaoROM_CPRO.Value  := imp_iteROM_CPRO.Value;
                EdicaoROM_DPRO.Value  := imp_iteROM_DPRO.Value;
                EdicaoROM_DCOR.Value  := imp_iteROM_DGCP.Value;
                EdicaoROM_DUNI.Value  := imp_iteROM_DUNI.Value;

                EdicaoROM_QTUN.Value  := imp_iteROM_QTUN.AsCurrency;
                EdicaoROM_PESO.Value  := imp_iteROM_PESO.AsCurrency;
                EdicaoROM_PSCN.Value  := imp_iteROM_PSCN.AsCurrency;
                EdicaoROM_METR.Value  := imp_iteROM_METR.AsCurrency;
                EdicaoROM_REND.Value  := imp_iteROM_REND.AsCurrency;

                EdicaoROM_QDIS.Value  := imp_iteROM_QDIS.AsCurrency;
                EdicaoROM_RLDI.Value  := imp_iteROM_RLDI.AsInteger;

                EdicaoROM_QTDE.Value  := imp_iteROM_QTDE.AsCurrency;
                EdicaoROM_QTRL.Value  := imp_iteROM_QTRL.AsInteger;

                EdicaoROM_QTPD.Value  := imp_iteROM_QTPD.AsCurrency;
                EdicaoROM_RLPD.Value  := imp_iteROM_RLPD.AsInteger;

                EdicaoROM_PTABI.Value := imp_iteROM_PTABI.AsCurrency;
                EdicaoROM_PTABF.Value := imp_iteROM_PTABF.AsCurrency;

                EdicaoROM_PREC.AsCurrency := imp_iteROM_UNIT.AsCurrency;
                EdicaoROM_UNIT.AsCurrency := imp_iteROM_UNIT.AsCurrency;

                { Pega valor da nota fiscal }
                if RECPedidos.CDRO > 0 then
                   with SQLConsulta do
                   begin
                     Close;
                     SQL.Clear;
                     SQL.Add('SELECT PK.VPRC_COM FROM ' + SLPrincipal.Values['rom_ite'] + ' AS PK');
                     SQL.Add('WHERE  PK.IDPK = ''' + RECPedidos.CDRO          + '''');
                     SQL.Add('AND    PK.IDCP = ''' + imp_iteROM_IPRO.AsString + '''');
                     ExecQuery;

                     if Current.ByName('VPRC_COM').AsCurrency > 0 then
                     begin
                       EdicaoROM_PREC.AsCurrency := Current.ByName('VPRC_COM').AsCurrency;
                       EdicaoROM_UNIT.AsCurrency := Current.ByName('VPRC_COM').AsCurrency;
                     end;
                   end;

                EdicaoROM_PDSC.Value := imp_iteROM_PDSC.AsCurrency;
                EdicaoROM_PIPI.Value := imp_iteROM_PIPI.AsCurrency;

                EdicaoROM_TSDE.Value := EdicaoROM_QTDE.AsCurrency * EdicaoROM_PREC.AsCurrency;
                EdicaoROM_VDSC.Value := EdicaoROM_TSDE.AsCurrency *(EdicaoROM_PDSC.AsCurrency / 100);
                EdicaoROM_VIPI.Value := EdicaoROM_TSDE.AsCurrency *(EdicaoROM_PIPI.AsCurrency / 100);
                EdicaoROM_TCDE.Value := EdicaoROM_TSDE.AsCurrency + IFThen(RECUsuarios.Id = 66,EdicaoROM_VIPI.AsCurrency,0);

                EdicaoROM_FOTO.Value  := imp_iteROM_FOTO.Value;
                Edicao.Post;

                imp_ite.Next;
              end;

              if (Pos(LeftStr(cbstpd.Text,3),'DEVABA') > 0) and (Pos('Romaneio de Estoque',EMINFADCAD.Text) = 0) then
              begin
                EMINFADCAD.Lines.Add('Romaneio de Estoque Nº ' + EDTXT.Text + IFThen(pro_iteCTNR.AsString = EmptyStr,EmptyStr,' - Container Nº ' + pro_iteCTNR.AsString));

                if pro_iteINFADCAD.AsString <> EmptyStr then
                begin
                  EMINFADCAD.Lines.Add('');
                  EMINFADCAD.Lines.Add(TRIM(pro_iteINFADCAD.AsString));
                end;

                EMINFADCAD.Lines.Add(pro_iteLGCA.AsString + ' - ' + FormatDateTime('dd/mm/yy hh:mm',pro_iteDTCA.AsDateTime));

                oScrollMemo(EMINFADCAD, SB_LINEUP);
              end;
            finally
              oUnLockWindowUpdate(Edicao);
            end;
       finally
         FreeandNil(FrmImporta_Geral);
       end;

  SIMSalva.Enabled := True;
  oRefresh(Edicao);
end;

procedure Tfrmven_ped.SIMPedidoClick(Sender: TObject);
begin
  uConstrucao;
end;

procedure Tfrmven_ped.SIMNFeClick(Sender: TObject);
begin
  uConstrucao;
end;

procedure Tfrmven_ped.SIMCFeClick(Sender: TObject);
begin
  uConstrucao;
end;

procedure Tfrmven_ped.SIMFinalizaClick(Sender: TObject);
begin
  uConstrucao;
end;

procedure Tfrmven_ped.SIMCAD_CLIClick(Sender: TObject);
begin
  if (not SIMCAD_CLI.Enabled) or (not SIMCAD_CLI.Visible) then
      Abort else ActiveControl := Nil;

  if CEIDCD.Value > 0 then
  begin
    frmcad_cli_edi     := TFrmcad_cli_edi.Create(Self);
    frmcad_cli_edi.Tag := 1;
    frmcad_cli_edi.IDCliente := FloatToStr(CEIDCD.Value);
    try frmcad_cli_edi.ShowModal;
    finally
      if frmcad_cli_edi.REC_SHE_DEF.Edited then
      begin
        EDCNPJ.Text := frmcad_cli_edi.EDCNPJ.Text;
        EDDECD.Text := frmcad_cli_edi.edfant.Text;
        EDRZCD.Text := frmcad_cli_edi.edraza.Text;
      end;
      FreeAndNil(frmcad_cli_edi);
    end;
  end;
end;

procedure Tfrmven_ped.SIM_CAD_CLI_INFClick(Sender: TObject);
begin
  if (not SIM_CAD_CLI_INF.Enabled) or (not SIM_CAD_CLI_INF.Visible) then
      Abort else ActiveControl := Nil;

  uPSQSCORE(self,CEIDCD.Text,EmptyStr);
end;

procedure Tfrmven_ped.SIMSaidaClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmven_ped.SIEIncluiClick(Sender: TObject);
begin
  oAppend(Edicao,True);
end;

procedure Tfrmven_ped.SIEAlteraClick(Sender: TObject);
begin
  oEdit(Edicao,True);
end;

procedure Tfrmven_ped.SIEExcluiClick(Sender: TObject);
begin
  if oYesNo(handle,'Excluir Item Nº '+EdicaoROM_ITEM.AsString+' ?') = mrNo then
     Abort;

  if (EdicaoROM_QTPD.AsCurrency > 0) and (RECPedidos.CDRO = 0) then
      oException(DBGEdicao,'Produto em processo de separação !');

  Edicao.Edit;
  EdicaoROM_FLAG.Value := 1;
  Edicao.Post;
end;

procedure Tfrmven_ped.SIESalvaClick(Sender: TObject);
begin
  oPost(Edicao,True);
end;

procedure Tfrmven_ped.SIECancelaClick(Sender: TObject);
begin
  oCancel(Edicao,True);
end;

procedure Tfrmven_ped.EdicaoAfterOpen(DataSet: TDataSet);
begin
  if CBSTPD.Text <> 'ABATIMENTO' then
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
      CETSDE.Value := ABS(Current.Vars[2].AsCurrency);
      CETCDE.Value := ABS(Current.Vars[3].AsCurrency);
      CEVIPI.Value := Current.Vars[4].AsCurrency;
      CEPSBR.Value := Current.Vars[5].AsCurrency;
      CEPSLQ.Value := Current.Vars[6].AsCurrency;
    end;

    { Descontos Pedido }
    if IEDescontos.Text = '1' then
    if (RECPedidos.FIN_VDSC_INI_001 > 0) and (CETCDE.Value >= RECPedidos.FIN_VDSC_INI_001) and (CETCDE.Value <= RECPedidos.FIN_VDSC_FIM_001) then
    begin
      _DELINFADCAD;
      LATDSC.Caption := '%';
      CETDSC.Value   := RECPedidos.FIN_PDSC_001;

      EMINFADCAD.Lines.Append('');
      EMINFADCAD.Lines.Append(RECPedidos.FIN_INFADCAD_L1_001);
      EMINFADCAD.Lines.Append(RECPedidos.FIN_INFADCAD_L2_001);
    end else
    if (RECPedidos.FIN_VDSC_INI_002 > 0) and (CETCDE.Value >= RECPedidos.FIN_VDSC_INI_002) and (CETCDE.Value <= RECPedidos.FIN_VDSC_FIM_002) then
    begin
      _DELINFADCAD;
      LATDSC.Caption := '%';
      CETDSC.Value   := RECPedidos.FIN_PDSC_002;

      EMINFADCAD.Lines.Append('');
      EMINFADCAD.Lines.Append(RECPedidos.FIN_INFADCAD_L1_002);
      EMINFADCAD.Lines.Append(RECPedidos.FIN_INFADCAD_L2_002);
    end else
    if (RECPedidos.FIN_VDSC_INI_003 > 0) and (CETCDE.Value >= RECPedidos.FIN_VDSC_INI_003) and (CETCDE.Value <= RECPedidos.FIN_VDSC_FIM_003) then
    begin
      _DELINFADCAD;
      LATDSC.Caption := '%';
      CETDSC.Value   := RECPedidos.FIN_PDSC_003;

      EMINFADCAD.Lines.Append('');
      EMINFADCAD.Lines.Append(RECPedidos.FIN_INFADCAD_L1_003);
      EMINFADCAD.Lines.Append(RECPedidos.FIN_INFADCAD_L2_003);
    end else
    if RECPedidos.FIN_VDSC > 0 then
    begin
      if edcdro.Tag = 0 then { Somente na criação do pedido - Criar campo como parâmetro }
      begin
        _DELINFADCAD;
        LATDSC.Caption := '$';
        CETDSC.Value   := RECPedidos.FIN_VDSC;

        EMINFADCAD.Lines.Append('');
        EMINFADCAD.Lines.Append(RECPedidos.FIN_INFADCAD_L1);
        EMINFADCAD.Lines.Append(RECPedidos.FIN_INFADCAD_L2);
      end;
    end;

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
    end;

    { Totais }
    CETCDE.Value := CETCDE.Value - CEVDSC.Value; // Total
    CETCDE.Value := CETCDE.Value + CEVFRT.Value; // Frete

    { Devoluções e/ou Abatimentos }
    if Pos(LeftStr(cbstpd.Text,3),'ABADEV') > 0 then
    begin
      CETSDE.Value :=  CETSDE.Value * -1;
      CETCDE.Value := (CETCDE.Value + CEVIPI.Value) * -1;
    end;
    
  finally Screen.Cursor := crDefault;
  end;
end;

procedure Tfrmven_ped.EdicaoAfterScroll(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    if EdicaoROM_DCOR.AsString <> EmptyStr then
       DBGEdicaoROM_DCOR.Visible := True;

    if EdicaoROM_PDSC.AsCurrency > 0 then
       DBGEdicaoROM_VDSC.Visible := True;

    if EdicaoROM_PIPI.AsCurrency > 0 then
    begin
      DBGEdicaoROM_PIPI.Visible := True;
      DBGEdicaoROM_VIPI.Visible := True;
    end;
  end;
end;

procedure Tfrmven_ped.EdicaoNewRecord(DataSet: TDataSet);
begin
  EdicaoID.Value        := 0;
  EdicaoROM_CDEP.Value  := RECParametros.EP_ID;
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
    SQL.Add('SELECT MAX(ROM_ITEM) FROM PED_VEN_ITE');
    SQL.Add('WHERE  ROM_FLAG = 0');
    ExecQuery;
    EdicaoROM_ITEM.Value := oStrZero(Current.Vars[0].AsInteger + 1,5);
  end;
end;

procedure Tfrmven_ped.EdicaoBeforeInsert(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    EdicaoId.Tag := EdicaoId.AsInteger;

    if (RECPedidos.CDRO > 0) and (RECPedidos.IDEV = 1) then
        DataBaseError('Edição de produtos não permitida !' + #13+
                      'Pedido já Romaneado.');
  end;
end;

procedure Tfrmven_ped.EdicaoBeforeEdit(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
     if (RECPedidos.CDRO > 0) and (RECPedidos.IDEV = 1) then
         DataBaseError('Edição de produtos não permitida !' + #13+
                       'Pedido já Romaneado.');
end;

procedure Tfrmven_ped.EdicaoBeforeDelete(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
     if (RECPedidos.CDRO > 0) and (RECPedidos.IDEV = 1) then
         DataBaseError('Edição de produtos não permitida !' + #13+
                       'Pedido já Romaneado.');
end;

procedure Tfrmven_ped.EdicaoAfterInsert(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
         DBGEdicao.FocusedColumn := IFThen(DBGEdicaoROM_CCLF.Visible,DBGEdicaoROM_CCLF.ColIndex,DBGEdicaoROM_CPRO.ColIndex);
end;

procedure Tfrmven_ped.EdicaoBeforePost(DataSet: TDataSet);
begin
  if (not ALockWindowUpdate) and (EdicaoROM_FLAG.AsInteger = 0) then
  begin
    { Verifica Duplicidades
    if Pos(LeftStr(cbstpd.Text,3),'ABADEV') = 0 then
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
       end; }

    { Descrição }
    if EdicaoROM_DPRO.AsString = EmptyStr then
    begin
      DBGEdicao.SetFocus;
      DBGEdicao.FocusedColumn := DBGEdicaoROM_DPRO.ColIndex;
      DataBaseError('Descrição do produto não pode ficar em branco !');
    end;

    { Quantidade }
    if (EdicaoROM_CPRO.AsString <> EmptyStr) and (EdicaoROM_QTDE.AsCurrency = 0) then
    begin
      DBGEdicao.SetFocus;
      DBGEdicao.FocusedColumn := DBGEdicaoROM_QTDE.ColIndex;
      DataBaseError('Quantidade não informada !');
    end;

    { Preço Padrão }
    if EdicaoROM_PREC.AsCurrency  = 0 then
       EdicaoROM_PREC.AsCurrency := EdicaoROM_UNIT.AsCurrency;

    { Situação }
    if EdicaoROM_STAV.AsString = 'I' then DataBaseError('Produto '+EdicaoROM_CPRO.AsString+' Inativo !');
    if EdicaoROM_STAV.AsString = 'PRÉ' then DataBaseError('Produto '+EdicaoROM_CPRO.AsString+' em Desenvolvimento !');

    { Peso Líquido }
    if  LeftStr(EdicaoROM_DUNI.AsString,1) = 'K' then EdicaoROM_PSLQ.Value := EdicaoROM_QTDE.AsCurrency else
    if (LeftStr(EdicaoROM_DUNI.AsString,1) = 'M') and (EdicaoROM_REND.AsCurrency > 0) then
        EdicaoROM_PSLQ.Value := EdicaoROM_QTDE.AsCurrency / EdicaoROM_REND.AsCurrency else
    if (LeftStr(EdicaoROM_DUNI.AsString,1) = 'M') and (EdicaoROM_METR.AsCurrency > 0) and (EdicaoROM_PESO.AsCurrency > 0) then
        EdicaoROM_PSLQ.Value := (EdicaoROM_QTDE.AsCurrency * EdicaoROM_PESO.AsCurrency) / EdicaoROM_METR.AsCurrency else
    if  EdicaoROM_PESO.AsCurrency > 0 then
        EdicaoROM_PSLQ.Value := (EdicaoROM_PESO.AsCurrency * EdicaoROM_QTDE.AsCurrency) / IFThen(EdicaoROM_QTUN.AsCurrency > 0,EdicaoROM_QTUN.AsCurrency,1);

    { Peso Bruto }
    EdicaoROM_PSBR.Value := EdicaoROM_PSLQ.AsCurrency + (EdicaoROM_QTRL.AsInteger * IFThen(EdicaoROM_PSCN.AsCurrency > 0,EdicaoROM_PSCN.AsCurrency,0.02));
  end;
end;

procedure Tfrmven_ped.EdicaoAfterPost(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    SIMSalva.Enabled := True;
    oRefresh(Edicao);
  end;
end;

procedure Tfrmven_ped.EdicaoBeforeCancel(DataSet: TDataSet);
begin
  if EdicaoId.Tag = 0 then
  begin
    Edicao.Close;
    Edicao.Open;
    ABORT;
  end;
end;

procedure Tfrmven_ped.EdicaoROM_QTDEValidate(Sender: TField);
begin
  if not ALockWindowUpdate then
  begin
    EdicaoROM_PREC.Value := IFThen(not oEmpty(EdicaoROM_PREC.Value),EdicaoROM_PREC.Value,EdicaoROM_UNIT.Value);
    
    EdicaoROM_TSDE.Value := RoundTO(EdicaoROM_QTDE.Value * EdicaoROM_PREC.Value,-2);
    EdicaoROM_VDSC.Value := RoundTO(EdicaoROM_TSDE.Value *(EdicaoROM_PDSC.Value / 100),-2);
    EdicaoROM_TCDE.Value := RoundTO(EdicaoROM_QTDE.Value * EdicaoROM_UNIT.Value,-2);
    EdicaoROM_VIPI.Value := RoundTO(EdicaoROM_TCDE.Value *(EdicaoROM_PIPI.Value / 100),-2);
    EdicaoROM_TCDE.Value := RoundTO(EdicaoROM_TCDE.Value + IFThen(RECUsuarios.Id = 66,EdicaoROM_VIPI.Value,0),-2);
  end;
end;

procedure Tfrmven_ped.EdicaoROM_PDSCValidate(Sender: TField);
begin
  if not ALockWindowUpdate then
         EdicaoROM_UNIT.Value := EdicaoROM_PREC.Value - ((EdicaoROM_PREC.Value * EdicaoROM_PDSC.Value) / 100);
end;

procedure Tfrmven_ped.EdicaoROM_PIPIValidate(Sender: TField);
begin
  if not ALockWindowUpdate then
         EdicaoROM_VIPI.Value := RoundTO(EdicaoROM_TCDE.Value *(EdicaoROM_PIPI.Value / 100),-2);
end;

procedure Tfrmven_ped.DTSEdicaoDataChange(Sender: TObject; Field: TField);
begin
  _DTSEdicao;
end;

procedure Tfrmven_ped.DTSEdicaoStateChange(Sender: TObject);
begin
  if Pos(LeftStr(Caption,3),'Dev') = 0 then
     oState(Edicao,SBEdicao);
end;

procedure Tfrmven_ped._DTSEdicao;
begin
  if not ALockWindowUpdate then
  begin
    if (DBGEdicao.Tag = 0) and (RECUsuarios.ID > 0) then
    begin
      if Edicao.State = dsInsert then
         DBGEdicaoROM_CPRO.DisableEditor := False else
         DBGEdicaoROM_CPRO.DisableEditor := (EdicaoROM_QTPD.Value > 0);

      DBGEdicaoROM_CCLF.DisableEditor := DBGEdicaoROM_CPRO.DisableEditor;
      DBGEdicaoROM_DCOR.DisableEditor := DBGEdicaoROM_CPRO.DisableEditor;
      DBGEdicaoROM_DPRO.DisableEditor := DBGEdicaoROM_CPRO.DisableEditor;
      DBGEdicaoROM_DUNI.DisableEditor := DBGEdicaoROM_CPRO.DisableEditor;
      DBGEdicaoROM_QTDE.DisableEditor := DBGEdicaoROM_CPRO.DisableEditor;
      DBGEdicaoROM_QTRL.DisableEditor := DBGEdicaoROM_CPRO.DisableEditor;

      if (Edicao.State <> dsInsert) and (edcdro.Tag > 0) then
      begin
        DBGEdicaoROM_CPRO.DisableEditor := True;
        DBGEdicaoROM_CCLF.DisableEditor := True;
      end;
    end;

    if (PNLFotos.Caption <> EdicaoROM_CART.AsString) or (Edicao.RecNo = 0) then
    begin
      PNLFotos.Caption := EdicaoROM_CART.AsString;
      GBFotos.Caption  := Format('  Imagem do Produto ( %d kb)',[oLoadJPG(EdicaoROM_FOTO,IFoto.Picture)]);
    end;

    if Edicao.State = dsBrowse then
    begin
      { Ajuste largura das colunas }
      DBGEdicao.ApplyBestFit(DBGEdicaoROM_CPRO);
      DBGEdicao.ApplyBestFit(DBGEdicaoROM_DCOR);

      { Tabela de Preços }
      LAPRC_TAB_ACIMA_MIN.Caption := FormatFloat('R$ #,0.00',EdicaoROM_PTABI.AsCurrency);
      LAPRC_TAB_ACIMA_MAX.Caption := FormatFloat('R$ #,0.00',EdicaoROM_PTABF.AsCurrency);
      if (EdicaoROM_UNIT.AsCurrency <> EdicaoROM_PTABI.AsCurrency) or (EdicaoROM_UNIT.AsCurrency <> EdicaoROM_PTABF.AsCurrency) or (EdicaoROM_PTABI.AsCurrency <> EdicaoROM_PTABF.AsCurrency) then
          PNLTAB_PRC.Height := 22 else
          PNLTAB_PRC.Height := 0;

      { Conteúdo }
      if Pos('COM',EdicaoROM_UCON.AsString) > 0 then
      begin
        PNLTAB_PRC.Caption := 'Contém '+EdicaoROM_UCON.AsString+'  ';
        PNLTAB_PRC.Height  := 22;
      end else
        PNLTAB_PRC.Caption := EmptyStr;
    end;
  end;
end;

procedure Tfrmven_ped.DBGEdicaoCustomDrawCell(Sender: TObject;
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

  if (AColumn = DBGEdicaoROM_UNIT) and (StrToFloat(oTrimValor(ANode.Values[DBGEdicaoROM_UNIT.Index])) > 0) then
  begin
    if ANode.Values[DBGEdicaoROM_UNIT.Index] < ANode.Values[DBGEdicaoROM_PTABI.Index] then
    begin
      AFont.Style := [fsBold];
      AFont.Color := clWhite;
      AColor      := $000024B3;
    end else
    if ANode.Values[DBGEdicaoROM_UNIT.Index] >= ANode.Values[DBGEdicaoROM_PTABF.Index] then
    begin
      AFont.Style := [fsBold];
      AFont.Color := clWhite;
      AColor      := $00E1AD40
    end else
    if ANode.Values[DBGEdicaoROM_UNIT.Index] > ANode.Values[DBGEdicaoROM_PTABI.Index] then
    begin
      AFont.Style := [fsBold];
      AFont.Color := clBlack;
      AColor      := $00C4FFC4;
    end;
  end;
end;

procedure Tfrmven_ped.DBGEdicaoDblClick(Sender: TObject);
begin
  SIEAltera.Click;
end;

procedure Tfrmven_ped.DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
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

                       if ((EdicaoROM_TCDE.AsCurrency > 0) and
                          (((DBGEdicao.FocusedColumn > DBGEdicaoROM_QTDE.ColIndex) and (cbstpd.Tag = 0)) or
                           ((DBGEdicao.FocusedColumn > DBGEdicaoROM_UNIT.ColIndex) and (cbstpd.Tag = 1)))) then
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

procedure Tfrmven_ped.DBGEdicaoROM_CPROValidate(Sender: TObject;
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

procedure Tfrmven_ped.DBGEdicaoROM_CCLFValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGEdicao.EditingText := Trim(DBGEdicao.EditingText);
  if (Edicao.State in [dsInsert,dsEdit]) and (DBGEdicao.EditingText <> EmptyStr) and (DBGEdicao.EditingText <> EdicaoROM_CCLF.AsString) then
  begin
    EdicaoROM_CCLF.Value := DBGEdicao.EditingText;
    _CPPSQ(DBGEdicao.EditingText,'CP.NCM');
  end;
end;

procedure Tfrmven_ped.DBGEdicaoROM_DPROValidate(Sender: TObject;
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

procedure Tfrmven_ped.DBGEdicaoROM_QTDEValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (not oEmpty(DBGEdicao.EditingText)) and (Edicao.State in [dsInsert,dsEdit]) then
  try
    EdicaoROM_QTDE.Value := StrToFloat(DBGEdicao.EditingText);
    EdicaoROM_QTRL.Value := bRET_PECA(EdicaoROM_QTDE.Value,EdicaoROM_QTUN.Value);
  except
    DataBaseError('Quantidade Inválida !');
  end;
end;

procedure Tfrmven_ped.DBGEdicaoROM_QTRLValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (not oEmpty(DBGEdicao.EditingText)) and (Edicao.State in [dsInsert,dsEdit]) then
  try
    EdicaoROM_QTRL.Value := StrToInt(DBGEdicao.EditingText);
    EdicaoROM_QTDE.Value := bRET_QUANTIDADE(EdicaoROM_QTRL.AsInteger,EdicaoROM_QTUN.Value);
  except
    DataBaseError('Quantidade Inválida !');
  end;
end;

procedure Tfrmven_ped.DBGEdicaoROM_UNITValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (Edicao.State in [dsEdit,dsInsert]) and (not oEmpty(DBGEdicao.EditingText)) and (oTextToValor(DBGEdicao.EditingText,2) <> EdicaoROM_UNIT.Value) then
  begin
    EdicaoROM_PREC.Value := oTextToValor(DBGEdicao.EditingText,9);
    EdicaoROM_UNIT.Value := EdicaoROM_PREC.Value - ((EdicaoROM_PREC.Value*EdicaoROM_PDSC.Value)/100);
  end;
end;

procedure Tfrmven_ped.DBGEdicaoROM_VDSCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (Edicao.State in [dsEdit,dsInsert]) and (not oEmpty(DBGEdicao.EditingText)) then
      EdicaoROM_PDSC.Value := oTextToValor(DBGEdicao.EditingText);
end;

procedure Tfrmven_ped.IFotoClick(Sender: TObject);
begin
  uLoadZoom(IFoto.Picture,[EdicaoROM_CART.AsString,
                           EdicaoROM_CPRO.AsString,
                           EdicaoROM_DCOR.AsString,
                           EdicaoROM_DPRO.AsString,
                           '',
                           '']);
end;

procedure Tfrmven_ped.PESQUISA_TIPO(pesq,chave: string);
begin
  with SQLFKConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT VEN_FATU,VEN_PDSC,VEN_STVE,VEN_DPAG,VEN_QTPC,VEN_PREC,VEN_QTSP,VEN_BAIP,VEN_NFEP,VEN_TINT,VEN_AGRP,VEN_BEST,VEN_DESC,VEN_PACR,VEN_PTNG,VEN_TIPO,VEN_QPRC FROM TAB_PED');
    SQL.Add('WHERE  '+pesq+' = '''+chave+'''');
    ExecQuery;

    edfatu.Text := Current.Vars[0].AsString;
    cbstco.Text := Current.Vars[2].AsString;
    cbprec.Text := Current.Vars[5].AsString;
    edqtsp.Text := Current.Vars[6].AsString;
    edqtpc.Text := Current.Vars[4].AsString;
    edtint.Text := Current.Vars[9].AsString;
    edagrp.Text := Current.Vars[10].AsString;
    edbest.Text := Current.Vars[11].AsString;
    edptng.Text := Current.Vars[14].AsString;
    cbstpd.Text := Current.Vars[15].AsString;
    cbstpd.Tag  := Current.Vars[16].AsInteger;

    if Current.Vars[0].AsString <> '1' then
    begin
      PEDEPG.Text := 'SEM COBRANÇA';
      cbstco.Text := 'SEM COBRANÇA';
    end;
  end;

  RECParametros.PED_PRECO := CBPREC.Text;
end;

procedure Tfrmven_ped.PESQUISA_FPAGTO(pesq,chave: string);
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

procedure Tfrmven_ped.edtsdeKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmven_ped.edderoKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmven_ped.LATDSCClick(Sender: TObject);
begin
  LATDSC.Caption := IFThen(LATDSC.Caption = '%','$','%');
  LATDSC.Refresh;

  oRefresh(Edicao);
end;
procedure Tfrmven_ped.CETSDEValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  oRefresh(Edicao);
end;

procedure Tfrmven_ped.PEDEPGValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  PESQUISA_FPAGTO('F',PEDEPG.Text);
end;

procedure Tfrmven_ped.EDDEROChange(Sender: TObject);
begin
  SIMSalva.Enabled := (not ALockWindowUpdate);
end;

procedure Tfrmven_ped.cbstpdValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  PESQUISA_TIPO('VEN_TIPO',cbstpd.Text);
end;

procedure Tfrmven_ped.PEDECTChange(Sender: TObject);
begin
  SIMSalva.Enabled := (not ALockWindowUpdate);

  if Pos('NOSSO CARRO',PEDECT.Text) > 0 then
  IEMFRT.Text := '3' else
  if Pos('PRÓPRIO',PEDECT.Text) > 0 then
  IEMFRT.Text := '4' else
  if (oEmpty(PEDECT.Text)) or (Pos('CLIENTE RETIRA',PEDECT.Text) > 0) or (Pos('SEM FRETE',PEDECT.Text) > 0) then
  IEMFRT.Text := '9';
end;

procedure Tfrmven_ped._FillCP;
begin
  if Edicao.State = dsBrowse then
     if (edQTPC.Text = 'PC') or (cbstpd.Text = 'DEVOLUÇÃO') then
     Edicao.Append else
     begin
       Edicao.First;
       if Edicao.Locate('ROM_CPRO',FBird.FBCAD_PROSKU.AsString,[]) then
       Edicao.Edit else
       Edicao.Append;
     end;

  EdicaoROM_UNIT.Value  := IFThen(cbprec.Text = 'ATACADO - NORMAL',FBird.FBCAD_PROVPRC_PAD.Value,
                           IFThen(cbprec.Text = 'ATACAREJO'       ,FBird.FBCAD_PROVPRC_ATV.Value,
                           IFThen(cbprec.Text = 'COMPRAS'         ,FBird.FBCAD_PROVPRC_COM_PAD.Value,
                           IFThen(cbprec.Text = 'LOJA VIRTUAL'    ,FBird.FBCAD_PROVPRC_LJV.Value,
                           IFThen(cbprec.Text = 'REPRESENTANTE'   ,FBird.FBCAD_PROVPRC_REP.Value,
                           IFThen(cbprec.Text = 'VAREJO'          ,FBird.FBCAD_PROVPRC_VAR.Value))))));
  EdicaoROM_PREC.Value  := EdicaoROM_UNIT.AsCurrency;

  EdicaoROM_PTABI.Value := IFThen(cbprec.Text = 'ATACADO - NORMAL',FBird.FBCAD_PROVPRC_PAD_INI.AsCurrency,EdicaoROM_PREC.AsCurrency);
  EdicaoROM_PTABF.Value := IFThen(cbprec.Text = 'ATACADO - NORMAL',FBird.FBCAD_PROVPRC_PAD_FIM.AsCurrency,EdicaoROM_PREC.AsCurrency);

  EdicaoROM_DPRO.Value  := FBird.FBCAD_PRODECP.AsString;
  EdicaoROM_DUNI.Value  := FBird.FBCAD_PROUCOM.AsString;
  EdicaoROM_UCON.Value  := FBird.FBCAD_PROUCON.AsString;
  EdicaoROM_IPRO.Value  := FBird.FBCAD_PROId.AsInteger;
  EdicaoROM_CCLF.Value  := FBird.FBCAD_PRONCM.AsString;
  EdicaoROM_CART.Value  := FBird.FBCAD_PROARTIGO.AsString;
  EdicaoROM_CPRO.Value  := FBird.FBCAD_PROSKU.AsString;
  EdicaoROM_DCOR.Value  := FBird.FBCAD_PRODGCP.AsString;
  EdicaoROM_CBAR.Value  := FBird.FBCAD_PROCEAN.AsString;
  EdicaoROM_QTUN.Value  := FBird.FBCAD_PROUQTDE.AsCurrency;
  EdicaoROM_PESO.Value  := FBird.FBCAD_PROPESO.AsCurrency;
  EdicaoROM_PSCN.Value  := FBird.FBCAD_PROPSCN.AsCurrency;
  EdicaoROM_METR.Value  := FBird.FBCAD_PROMETRO.AsCurrency;
  EdicaoROM_REND.Value  := FBird.FBCAD_PROREND.AsCurrency;
  EdicaoROM_PIPI.Value  := FBird.FBCAD_PROPIPI.AsCurrency;

  EdicaoROM_QDIS.Value  := FBird.FBCAD_PROEPE_QTDE.AsCurrency;
  EdicaoROM_RLDI.Value  := FBird.FBCAD_PROEPE_QTRL.AsInteger;
  EdicaoROM_STAV.Value  := IFThen(Pos(LeftStr(cbstpd.Text,3),'ABADEV') = 0,FBird.FBCAD_PROREST.AsString,'A'); // ignora status quanto abatimento ou devolução
  EdicaoROM_FOTO.Value  := FBird.FBCAD_PROIMG_PAD.Value;

  EdicaoROM_QTDE.Value  := EdicaoROM_QTUN.AsCurrency;
  EdicaoROM_QTRL.Value  := bRET_PECA(EdicaoROM_QTDE.Value,EdicaoROM_QTUN.Value);
end;

procedure Tfrmven_ped.PESQUISA_PEDIDO_ABATIMENTO_DEVOLUCAO;
var
  NewString: string;
  ClickedOK: Boolean;
begin
  if EDCDRD.Tag > 0 then
     Exit; 

  edcdrd.Tag  := 0;
  edcdrd.Text := '';
  edcdrd.Hint := '';

  NewString := edcdrd.Text;
  ClickedOK := InputQuery('Vincular Pedido de Venda', 'Entre com o Número do Pedido de Venda', NewString);
  if ((ClickedOK) and (not oEmpty(NewString))) then
  with SQLFKConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   FIRST 1 ID,ROM_DERO,IIF(ROM_DNFS IS NOT NULL,ROM_DNFS,IIF(ROM_DBAI IS NOT NULL,ROM_DBAI,ROM_DROM)) FROM '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    DEPD = '''+NewString+'''');
    SQL.Add('ORDER BY ID DESC');
    ExecQuery;
    oLast(SQLFKConsulta);

    if Current.Vars[0].IsNull then
    begin
      edcdrd.Tag  := 0;
      edcdrd.Hint := '';
      edcdrd.Text := '';
    end else
    begin
      edcdrd.Tag  := Current.Vars[0].AsInteger;
      edcdrd.Text := Current.Vars[1].AsString;
      edcdrd.Hint := Current.Vars[2].AsString;
    end;
  end;

  if edcdrd.Tag = 0 then
     oException(DBGEdicao,'Número do Pedido não Encontrado ou Informado Incorretamente !');
end;

procedure Tfrmven_ped._CPPSQ(ADTXT: String;AFTXT: String);
begin
  if not oEmpty(ADTXT) then
  try
    oOTransact(FBird.TFBProdutos);
    if uPesquisa_Produto(RECParametros.EP_ID,ADTXT,AFTXT,'LIKE','','%') > 0 then
    begin
      _FillCP; _DTSEdicao;
      DBGEdicao.FocusedColumn := IFThen(AFTXT = 'NCM'      ,DBGEdicaoROM_CCLF.ColIndex,
                                 IFThen(AFTXT = 'DESCRICAO',DBGEdicaoROM_DPRO.ColIndex,DBGEdicaoROM_CPRO.ColIndex));
    end;
  finally
    oCTransact(FBird.TFBProdutos);
  end;
end;

procedure TFrmven_ped._ExecEvent;
begin
  if  EEvent.Registered then
      try
        oOTransact(TEvent);

        SPEvent.StoredProcName := 'SP_EVENT';
        SPEvent.Prepare;
        SPEvent.Params[0].AsString := oREPZero('CTR_PED','_',RECParametros.EP_ID,3);
        SPEvent.ExecProc;

        oCTransact(TEvent);
      except
        on E: Exception do
        begin
          oCTransact(TEvent,ltRollback);
          oException(Nil,'Falha ao tentar salvar evento !'+#13+
                         'Evento: '    +oREPZero('CTR_PED','_',RECParametros.EP_ID,3)+'.'+#13+#13+
                         'Formulário: '+Self.Name+'.'     +#13+#13+
                         'Error Code: '+E.Message+'.');
        end;
      end;
end;

procedure Tfrmven_ped._CheckErrors;
var
  MSGErro: String;
begin
  ActiveControl := Nil;
  if Edicao.State in [dsEdit,dsInsert] then
     if (EdicaoROM_CPRO.AsString = EmptyStr) or (EdicaoROM_TCDE.Value = 0) then Edicao.Cancel else Edicao.Post;

  try
    Edicao.DisableControls;
    Edicao.First;

    if (Edicao.RecNo = 0) and (cbstpd.Text <> 'ABATIMENTO') then
        oException(cbstpd,'Pedido sem itens informados !');

    while not Edicao.Eof do
    begin
      if ((oEmpty(MSGErro)) and (oEmpty(EdicaoROM_CPRO.AsString))) then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoROM_CPRO.ColIndex;
        MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' sem quantidade informada !'+#13+
                   'Item: '  +EdicaoROM_ITEM.AsString+'.';
      end;
      if ((oEmpty(MSGErro)) and (oEmpty(EdicaoROM_DPRO.AsString))) then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoROM_DPRO.ColIndex;
        MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' sem quantidade informada !'+#13+
                   'Item: '  +EdicaoROM_ITEM.AsString+'.';
      end;
      if ((oEmpty(MSGErro)) and (EdicaoROM_QTDE.Value <= 0)) then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoROM_QTDE.ColIndex;
        MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' sem quantidade informada !'+#13+
                   'Item: '  +EdicaoROM_ITEM.AsString+'.';
      end;
      if ((oEmpty(MSGErro)) and (EdicaoROM_UNIT.Value <= 0)) then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoROM_UNIT.ColIndex;
        MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' sem valor unitário informado !'+#13+
                   'Item: '  +EdicaoROM_ITEM.AsString+'.';
      end;
      if ((oEmpty(MSGErro)) and (EdicaoROM_TSDE.Value <= 0)) then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoROM_TSDE.ColIndex;
        MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' sem subtotal informado !'+#13+
                   'Item: '  +EdicaoROM_ITEM.AsString+'.';
      end;
      if ((oEmpty(MSGErro)) and (EdicaoROM_TCDE.Value <= 0)) then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoROM_TCDE.ColIndex;
        MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' sem total informado !'+#13+
                   'Item: '  +EdicaoROM_ITEM.AsString+'.';
      end;
      if (edcdrd.Tag > 0) and (Pos(LeftStr(CBSTPD.Text,3),'DEV') > 0) then
          with SQLConsulta do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT ID FROM ' +SLPrincipal.Values['ped_ven_ite']);
            SQL.Add('WHERE  IDPK = '''+IntToStr(EDCDRD.Tag)   +'''');
            SQL.Add('AND    IDCP = '''+EdicaoROM_IPRO.AsString+'''');
            ExecQuery;
            if Current.Vars[0].AsInteger = 0 then
            begin
              DBGEdicao.FocusedColumn := DBGEdicaoROM_CPRO.ColIndex;
              MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' não pertence ao pedido nº '+EDCDRD.Text+' !'+#13+
                         'Item: '  +EdicaoROM_ITEM.AsString+'.';
            end;
          end;

      if not oEmpty(MSGErro) then Break;
         Edicao.Next;
    end;

    if not oEmpty(MSGErro) then oException(DBGEdicao,MSGErro);
  finally
    Edicao.First;
    Edicao.EnableControls;
  end;

  if CEIDCD.Value = 0 then
     oException(EDDECD,'Cliente não Informado !');

  if not psq_cli.Active then
         psq_cli.Open;

  if psq_cli.RecNo = 0 then
     oException(EDDECD,'Cliente não Cadastrado !');

  if IEIDCV.Text = '0' then
     oException(IEIDCV,'Vendedor não Informado !');

  if IEIDCR.Text = '0' then
     oException(IEIDCR,'Representante não Informado !');

  if oEmpty(cbstpd.Text) then oException(cbstpd,'Tipo de Pedido não Informado !');

  if oEmpty(cbstco.Text) then oException(cbstco,'Tipo de Cobrança não Informado !');

  if oEmpty(PEDEPG.Text) then oException(PEDEPG,'Prazo de Pagamento não Informado !');

  if ((edfatu.Text = '1') and (cbstco.Text = 'SEM COBRANÇA')) or ((edfatu.Text <> '1') and (cbstco.Text <> 'SEM COBRANÇA')) then
       oException(cbstco,'Tipo de Cobrança Inválido !');

  if ((edfatu.Text = '1') and (PEDEPG.Text = 'SEM COBRANÇA')) or ((PEDEPG.Text <> 'SEM COBRANÇA') and (cbstco.Text = 'SEM COBRANÇA')) then
       oException(PEDEPG,'Prazo de Pagamento Inválido !');

  if ((cbstco.Text = 'BANCÁRIO') and (IETPCO.Text = '0')) then
       oException(IETPCO,'Opção de Crédito não Permitido !'+#13+
                         'Para crédito 0 (zero) utilizar cobrança em carteira.');

  if ((CETCDE.Value > 0) and (Pos(cbstpd.Text,'ABATIMENTODEVOLUÇÃO') > 0)) then
       oException(cbstpd,'Valor Total do Pedido Inválido !');

  if (oEmpty(PEDECT.Text)) or (Pos('CLIENTE RETIRA',PEDECT.Text) > 0) or (Pos('SEM FRETE',PEDECT.Text) > 0) then
      IEMFRT.Text := '9';

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_TRA');
    SQL.Add('WHERE  TRA_FANT = '''+PEDECT.Text+'''');
    ExecQuery;
    PEDECT.Tag := Current.Vars[0].AsInteger;

    if oEmpty(PEDECT.Tag) then oException(PEDECT,'Transportadora não Cadastrada !');
    if oEmpty(IEMFRT.Text)  then oException(IEMFRT  ,'Modalidade de Frete não Informada !');
  end;

  DBGEdicao.SetFocus;
end;

procedure Tfrmven_ped._CheckConstraints;
var
  i: word;
begin
  if edcdro.Text  = EmptyStr then
  begin
    edcdro.Text := '0';
    edcdro.Tag  := 0;
  end;

  {if EDCDRO.Tag   = 0 then
     DEDTCA.Date := Now;}

  edcdcx.Text := IFThen((edcdcx.Text = '0') or (edcdcx.Text = ''),RECParametros.CDCX,edcdcx.Text);
  Motivo      := EmptyStr;
  InfAdMot.Clear;

  if Pos(LeftStr(CBSTPD.Text,3),'DEVABA') > 0 then
  begin
    if EDCDRO.Tag = 0 then
       try
         PESQUISA_PEDIDO_ABATIMENTO_DEVOLUCAO;
         TFrmProduto_Devolucao_Cancelamento._ExecForm(Nil,FrmProduto_Devolucao_Cancelamento,false,fsNormal);
       finally
         if not FrmProduto_Devolucao_Cancelamento.REC_SHE_DEF.Edited then
            Abort;

         if oEmpty(FrmProduto_Devolucao_Cancelamento.IEMotivo.Text) then
            oException(DBGEdicao,'Motivo de cancelamento Incorreto ou não Informado !');

         if not oEmpty(FrmProduto_Devolucao_Cancelamento.EMINFADCAD.Lines.Text) then
            for i := 0 to FrmProduto_Devolucao_Cancelamento.EMINFADCAD.Lines.Count - 1 do
                InfAdMot.Add(FrmProduto_Devolucao_Cancelamento.EMINFADCAD.Lines[i]);

         Motivo := FrmProduto_Devolucao_Cancelamento.IEMotivo.Text;
         ASTFI  := 'FATURADO';

         EMINFADCAD.Lines.Add('');
         EMINFADCAD.Lines.Add(CBSTPD.Text+' POR MOTIVO DE '+Motivo+' - PEDIDO DE VENDA Nº '+EDCDRD.Text);
         EMINFADCAD.Lines.Add(InfAdMot.Text);

         FrmProduto_Devolucao_Cancelamento.Free;
       end;
  end else
  if (cbstco.Text <> 'SEM COBRANÇA') and (CEIDCD.Value <> RECParametros.CD_ID) and (IEIDCR.Text <> RECParametros.CR_ID) then
  begin
    cbstpd.Hint := uFIN_BLQ(cbstco.Text,edfatu.Text,CEIDCD.Text);
    if cbstpd.Hint <> EmptyStr then
       oErro(Self.Handle,'Cliente bloqueado por falta de pagamento !' + #13 +
                         'Favor entrar em contato com o departamento financeiro.' + #13 + #13 +
                         'Nota: O pedido será salvo, mas ficará aguardando por liberação.');

    if (RECParametros.EP_NO <> 'OTIMOTEX FARDO') and (cbstpd.Hint = EmptyStr) then
    begin
      cbstpd.Hint := uLimiteVenda(cbstco.Text,edfatu.Text,CEIDCD.Text,CETCDE.Value);
      if cbstpd.Hint <> '' then
      oErro(Self.Handle,'Cliente ultrapassou o limite de crédito estabelecido !'+#13+
                   'Limite Atual: '       +formatfloat('R$ #,0.00.',RECPedidos.FIN_VCRD)+#13+#13+
                   'Títulos Pendentes: '  +formatfloat('R$ #,0.00',VALOR_BANCARIO)+' ( '+IntToStr(ITENS_BANCARIO)+' )'+#13+
                   'Carteiras Pendentes: '+formatfloat('R$ #,0.00',VALOR_CARTEIRA)+' ( '+IntToStr(ITENS_CARTEIRA)+' )'+#13+
                   'Pedidos Pendentes: '  +formatfloat('R$ #,0.00',VALOR_PEDIDO)  +' ( '+IntToStr(ITENS_PEDIDO)  +' )'+#13+#13+
                   'Saldo Permitido: '    +formatfloat('R$ #,0.00',VALOR_SALDO));
    end;

    ASTFI := IFThen(cbstpd.Hint <> EmptyStr,cbstpd.Hint,IFThen(Pos(LeftStr(ASTFI,3),'AGU') > 0,RECParametros.PED_STFI,ASTFI));
  end else
    ASTFI := RECParametros.PED_STFI;

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_TPO WHERE DESCRICAO = '''+CBSTPD.Text+'''');
    ExecQuery;
    CBSTPD.Tag := Current.Vars[0].AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_PAG WHERE PAG_DPAG = '''+PEDEPG.Text+'''');
    ExecQuery;
    PEDEPG.Tag := Current.Vars[0].AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_TPO WHERE DESCRICAO = '''+CBSTCO.Text+'''');
    ExecQuery;
    CBSTCO.Tag := Current.Vars[0].AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_STA WHERE DESCRICAO = '''+ASTFI+'''');
    ExecQuery;
    ACDST := Current.Vars[0].AsInteger;
  end;

  IF EDFATU.Text = '0' THEN
  BEGIN
    IETPCO.Hint := '***';
  END ELSE
  IF Pos(LeftStr(CBSTCO.Text,3),'BANBOLDUP') > 0 THEN
  BEGIN
    IETPCO.Hint := 'B ' + IETPCO.Text;
  END ELSE
  BEGIN
    IETPCO.Hint := 'C ' + IETPCO.Text;
  END
end;

procedure Tfrmven_ped.CETCDEValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if CETCDE.Value > 0 then
     CETCDE.Value := CETCDE.Value * -1;
     CETSDE.Value := CETCDE.Value;
end;

procedure Tfrmven_ped._Edicao(AFlag: Integer = 0; AEmpty: Boolean = False);
begin
  if AEmpty then
     with SQLSEdicao do
     begin
       Close;
       SQL.Clear;
       SQL.Add('DELETE FROM PED_VEN_ITE');
       ExecQuery;
     end;

  with Edicao do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT PK.ID      ,PK.ROM_CDEP,');
    SelectSQL.Add('       PK.ROM_IDPK,PK.ROM_IDFK,');
    SelectSQL.Add('       PK.ROM_CDOC,PK.ROM_ITEM,PK.ROM_IPRO,PK.ROM_CART ,PK.ROM_CCLF,PK.ROM_CPRO,PK.ROM_CBAR,');
    SelectSQL.Add('       PK.ROM_DPRO,PK.ROM_DCOR,');
    SelectSQL.Add('       PK.ROM_DUNI,PK.ROM_UCON,PK.ROM_QTUN,');
    SelectSQL.Add('       PK.ROM_PESO,PK.ROM_PSCN,PK.ROM_METR,PK.ROM_REND,');
    SelectSQL.Add('       PK.ROM_QDIS,PK.ROM_RLDI,');
    SelectSQL.Add('       PK.ROM_QTDE,PK.ROM_QTRL,');
    SelectSQL.Add('       PK.ROM_PREC,PK.ROM_PTABI,PK.ROM_PTABF,');
    SelectSQL.Add('       PK.ROM_PDSC,PK.ROM_VDSC ,PK.ROM_UNIT ,');
    SelectSQL.Add('       PK.ROM_TSDE,PK.ROM_TCDE,');
    SelectSQL.Add('       PK.ROM_PIPI,PK.ROM_VIPI,');
    SelectSQL.Add('       PK.ROM_PSBR,PK.ROM_PSLQ,');
    SelectSQL.Add('       PK.ROM_QTPD,PK.ROM_RLPD,PK.ROM_DSEP,PK.ROM_DTPD,');
    SelectSQL.Add('       PK.ROM_FOTO,PK.ROM_STAV,');
    SelectSQL.Add('       PK.ROM_FLAG');
    SelectSQL.Add('FROM   PED_VEN_ITE AS PK');

    if AFlag >= 0 then
       SelectSQL.Add('WHERE PK.ROM_FLAG = '+IntToStr(AFlag));

    SelectSQL.Add('ORDER BY PK.ROM_ITEM');
    Prepare;
  end;

  oRTransact(TSEdicao);
end;

procedure Tfrmven_ped.CEIDCDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  RECPedidos.AWinControl := TWinControl(Sender);
  RECPedidos.AQConsulta  := QConsulta;
  RECPedidos.CDCD        := '0';

  try uPSQCAD(RECPedidos);
  finally
    if RECPedidos.Selected then
    begin
      REC_SHE_DEF.Edited := (not ALockWindowUpdate);
      
      CEIDCD.Value := RECPedidos.IDCD;
      EDDECD.Text  := RECPedidos.DECD;
      EDRZCD.Text  := RECPedidos.RZCD;
      EDCNPJ.Text  := RECPedidos.CNPJ;

      IEIDCV.Text  := RECPedidos.IDCV;
      IEIDCR.Text  := RECPedidos.IDCR;

      PEDECT.Tag   := RECPedidos.IDCT;
      PEDECT.Text  := RECPedidos.DECT;
      IEMFRT.Text  := RECPedidos.MFRT;

      PEDEPG.Tag   := RECPedidos.CDPG;
      PEDEPG.Text  := RECPEdidos.DEPG; 

      EMINFADFIN.Lines.Clear;
      EMINFADFIN.Lines.Add(RECPedidos.INFADCAD);

      oRefresh(Edicao);

      if Showing then
         if (RECUsuarios.Id = 66) and (DEDTCA.Enabled) then
             DEDTCA.SetFocus else
             if PEDEPG.Enabled then
                PEDEPG.SetFocus;
    end;
  end;  
end;

procedure Tfrmven_ped.PEDEPGExit(Sender: TObject);
begin
  if RECUsuarios.Id = 66 then
     PECTNR.SetFocus;
end;

procedure Tfrmven_ped.PECTNRExit(Sender: TObject);
begin
  PCINFADCAD.ActivePageIndex := 0;
  EMINFADCAD.SetFocus;
end;

procedure Tfrmven_ped.GBINFADCADExit(Sender: TObject);
begin
  DBGEdicao.SetFocus;
end;

procedure Tfrmven_ped.DEDTCAValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DEDTCA.Date := DEDTCA.Date + Time;
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAI_LAF');
    SQL.Add('WHERE  CAI_CDEP = '''+RECParametros.EP_ID+'''');
    SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',DEDTCA.Date)+'''');
    ExecQuery;

    if not Eof then
       edcdcx.Text  := Current.Vars[0].AsString;
  end;     
end;

procedure Tfrmven_ped.IEDescontosChange(Sender: TObject);
begin
  if IEDescontos.Text = '0' then
  begin
    _DELINFADCAD;
    LATDSC.Caption := '%';
    CETDSC.Value   := 0;
  end;
  oRefresh(Edicao);
end;

procedure Tfrmven_ped._DELINFADCAD;
begin
  { Descontos }
  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf('')); {Excluir linha em branco }
  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf('CAMPANHA CUPOM 50')); { Criar campo para isso }
  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf('DESCONTO PROMOCIONAL NO VALOR DE R$ 50,00'));

  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf(RECPedidos.FIN_INFADCAD_L1));
  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf(RECPedidos.FIN_INFADCAD_L2));

  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf(RECPedidos.FIN_INFADCAD_L1_001));
  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf(RECPedidos.FIN_INFADCAD_L2_001));

  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf(RECPedidos.FIN_INFADCAD_L1_002));
  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf(RECPedidos.FIN_INFADCAD_L2_002));

  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf(RECPedidos.FIN_INFADCAD_L1_003));
  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf(RECPedidos.FIN_INFADCAD_L2_003));
end;

end.
