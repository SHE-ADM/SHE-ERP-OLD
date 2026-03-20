
unit uPrincipal;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, RXCtrls, ToolWin, StdCtrls, Buttons,
  DB, IBCustomDataSet, IBQuery, IBDatabase, IBTable, ActnList, ActnMan,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, DateUtils, Printers, StrUtils,
  Grids, DBGrids, IBStoredProc, ImgList, Shellapi, DBTables, jpeg, math,
  XPStyleActnCtrls, IdBaseComponent, IdComponent, qrPrev,
  IdIPWatch, Provider, cxGraphics, cxControls, dxStatusBar, ACBrBarCode,
  IBSQL, dxDBGrid, dxTL, dxDBCtrl, TypInfo, dxsbar, dxDockPanel,
  dxDockControl, dxBar, dxBarExtItems, rxAnimate, rxGIFCtrl;

type
  TRunProcessThread = class(TThread)
  protected
    procedure Execute; override;
    procedure _SyncEvent;

  public
    ATHR_TBPK: String;
    ATHR_IDEP,
    ATHR_IDPK: Variant;
    ATHR_DEPK: String;
    FIDPK: String;

    constructor Create(const VTHR_TBPK: String; VTHR_IDEP,VTHR_IDPK: Variant; VTHR_DEPK: String; VIDPK: String = 'IDPK');
    destructor  Destroy; override;
  end;

type
  TFrmPrincipal = class(TForm)
    MMPrincipal: TMainMenu;
    MPCadastros: TMenuItem;
    MPTabelas: TMenuItem;
    MPVendas: TMenuItem;
    MPUtilitarios: TMenuItem;
    AMPrincipal: TActionManager;
    ACTClientes: TAction;
    MILogin: TMenuItem;
    MIBackup: TMenuItem;
    NPUtilitarios5: TMenuItem;
    MIPrinters: TMenuItem;
    MISistema: TMenuItem;
    MIRepresentantes: TMenuItem;
    NPCadastros1: TMenuItem;
    MITransportadoras: TMenuItem;
    MINFCFOP: TMenuItem;
    MIPrazos: TMenuItem;
    MIRomaneios: TMenuItem;
    MPFiscal: TMenuItem;
    MINFEmissao: TMenuItem;
    MINFControle: TMenuItem;
    MIRECDuplicatas: TMenuItem;
    MPSistema: TMenuItem;
    MIHELP: TMenuItem;
    MIABOUT: TMenuItem;
    MIUsuarios: TMenuItem;
    NPUtilitarios4: TMenuItem;
    ACTProdutos: TAction;
    ACTRepresentantes: TAction;
    ACTTransportadoras: TAction;
    ACTFornecedores: TAction;
    ACTPrazos: TAction;
    ACTGrade: TAction;
    ACTColecao: TAction;
    ACTEEstoque: TAction;
    ACTEstoque: TAction;
    NPUtilitarios3: TMenuItem;
    MIHOST: TMenuItem;
    ACTRomaneios: TAction;
    NPUtilitarios: TMenuItem;
    MIAgenda: TMenuItem;
    ACTAgenda: TAction;
    MIPassword: TMenuItem;
    ACTLogin: TAction;
    ACTPassword: TAction;
    ACTPrinters: TAction;
    ACTSistema: TAction;
    ACTPedidos: TAction;
    MPFinanceiro: TMenuItem;
    MIPedidos: TMenuItem;
    MICompras: TMenuItem;
    ACTCompras: TAction;
    ACTHELP: TAction;
    ACTICMS_ST: TAction;
    MPCompras: TMenuItem;
    MIFINCalculados: TMenuItem;
    MIBancos: TMenuItem;
    NPFinanceiro: TMenuItem;
    MIRECBoletos: TMenuItem;
    MIRecebimentos: TMenuItem;
    SNRecebimentos: TMenuItem;
    MIPagamentos: TMenuItem;
    MIPAGConsultas: TMenuItem;
    MPCaixa: TMenuItem;
    NPFinanceiro1: TMenuItem;
    MIRecibos: TMenuItem;
    MIVales: TMenuItem;
    NPTabelas2: TMenuItem;
    MIProdutos: TMenuItem;
    SMEEstoque: TMenuItem;
    SMEstoque: TMenuItem;
    SNPagamentos: TMenuItem;
    ACTPAGComissao: TAction;
    MIClientes: TMenuItem;
    MIFornecedores: TMenuItem;
    NPCadastros: TMenuItem;
    MIGrade: TMenuItem;
    MIProgramados: TMenuItem;
    NPVendas: TMenuItem;
    MIColecao: TMenuItem;
    MIGrupos: TMenuItem;
    MITSangria: TMenuItem;
    ACTTSangria: TAction;
    MIAbertura: TMenuItem;
    MIFechamento: TMenuItem;
    NPCaixa2: TMenuItem;
    MISangria: TMenuItem;
    NPCaixa3: TMenuItem;
    ACTCaixa: TAction;
    MICaixa: TMenuItem;
    ACTSangria: TAction;
    ACTProgramados: TAction;
    ACTMExpedicao: TAction;
    MICategorias: TMenuItem;
    ACTCategorias: TAction;
    ACTAbertura: TAction;
    MPSheild: TMenuItem;
    ACTFechamento: TAction;
    ACTRECDuplicatas: TAction;
    MIPAGComissao: TMenuItem;
    ACTRECCarteira: TAction;
    ACTRECBancario: TAction;
    MIReAbertura: TMenuItem;
    NPCaixa: TMenuItem;
    ACTReAbertura: TAction;
    ACTEEtiquetas: TAction;
    MPRelatorios: TMenuItem;
    MIRECBaixas: TMenuItem;
    MIPAGAdmin: TMenuItem;
    NPCadastros2: TMenuItem;
    MIContainer: TMenuItem;
    ACTContainer: TAction;
    ACTNFConsulta: TAction;
    MICheques: TMenuItem;
    PNLPrincipal: TPanel;
    Bevel8: TBevel;
    Panel7: TPanel;
    LALegenda: TLabel;
    MIComissao: TMenuItem;
    MIRelProdutos: TMenuItem;
    MIRelatorios_1: TMenuItem;
    MIRelClientes: TMenuItem;
    MIRelVendedores: TMenuItem;
    MIRelRepresentantes: TMenuItem;
    MIRelatorios_3: TMenuItem;
    MIRelGerencial: TMenuItem;
    MIRelProduto_Venda: TMenuItem;
    MIRelProduto_Ranking: TMenuItem;
    MIRelProdutos_2: TMenuItem;
    MIRelGProduto_Tabela_Preco: TMenuItem;
    MIRelProdutos_3: TMenuItem;
    MIRelProduto_Estoque: TMenuItem;
    MIRelProdutosSPEDFiscal: TMenuItem;
    MIRelProdutos_4: TMenuItem;
    MIRelProduto_Compra_Planejamento: TMenuItem;
    MIRelProdutosKardex: TMenuItem;
    MIRelCliente_Venda_Produto: TMenuItem;
    MIRelClientesRanking: TMenuItem;
    MIRelClientes_1: TMenuItem;
    MIRelClientesFicha: TMenuItem;
    MIRelCliente_Cadastro_Listagem: TMenuItem;
    MIRelVendedoresFat: TMenuItem;
    MIRelVendedoresRanking: TMenuItem;
    MIRelVendedores_1: TMenuItem;
    MIRelVendedoresComissoes: TMenuItem;
    MIRelVendedoresVales: TMenuItem;
    MIRelRepresentante_Venda_Produto: TMenuItem;
    MIRelRepresentante_Ranking: TMenuItem;
    MIRelRepresentantes_1: TMenuItem;
    MIRelRepresentantesComissoes: TMenuItem;
    MIRelRepresentantesVales: TMenuItem;
    MIRelRepresentantes_2: TMenuItem;
    MIRelRepresentantesFicha: TMenuItem;
    MIRelRepresentante_Cadastro_Listagem: TMenuItem;
    MIRelGerenciaisNFe: TMenuItem;
    ACTPEtiquetas: TAction;
    ACTRelatorios: TAction;
    MIRelProduto_Devolucao_Cancelamento: TMenuItem;
    ACTProduto_Venda: TAction;
    ACTProduto_Ranking: TAction;
    ACTProduto_Compra_Planejamento: TAction;
    ACTGProduto_Tabela_Preco: TAction;
    ACTProduto_Estoque: TAction;
    ACTRPROSPEDFiscal: TAction;
    ACTRPROKardex: TAction;
    ACTGerencial_Tipo_Credito: TAction;
    ACTRGERNF: TAction;
    ACTEmConstrucao: TAction;
    SNRecebimentos2: TMenuItem;
    MIRECCarteira: TMenuItem;
    MIRECBancario: TMenuItem;
    ACBrBarCode: TACBrBarCode;
    N5: TMenuItem;
    MIRelGerenciaisCFeSat: TMenuItem;
    ACTCFEmissao: TAction;
    MIRelProdutosProg: TMenuItem;
    NPTabelas: TMenuItem;
    NPTabelas3: TMenuItem;
    PNLUtil: TPanel;
    TBPrincipal: TToolBar;
    TBN: TToolButton;
    RTBNFConsulta: TRxSpeedButton;
    TBN1: TToolButton;
    RTBCFEmissao: TRxSpeedButton;
    TBN2: TToolButton;
    TBN3: TToolButton;
    RTBPEtiquetas: TRxSpeedButton;
    RTBPrinters: TRxSpeedButton;
    TBN4: TToolButton;
    TBN5: TToolButton;
    RTBLogin: TRxSpeedButton;
    RTBPassword: TRxSpeedButton;
    RTBUtilitarios: TRxSpeedButton;
    TBN6: TToolButton;
    TBN7: TToolButton;
    RTBSistema: TRxSpeedButton;
    RTBBackup: TRxSpeedButton;
    TBN8: TToolButton;
    TBN9: TToolButton;
    RTBAbout: TRxSpeedButton;
    TBN10: TToolButton;
    RTBSaida: TRxSpeedButton;
    MINFTerceiros: TMenuItem;
    NPFiscal: TMenuItem;
    MIPAGPROComissao: TMenuItem;
    ACTPAGPROComissao: TAction;
    MISegmentos: TMenuItem;
    MISubGrupos: TMenuItem;
    MISubCategorias: TMenuItem;
    TPrincipal: TTimer;
    RTBNFSaidas: TRxSpeedButton;
    ACTNFSaidas: TAction;
    ACBrBarCodeV: TACBrBarCode;
    ACTRCLVEN: TAction;
    MIRelCliente_Ranking: TMenuItem;
    ACTCliente_Ranking: TAction;
    ACTRCLABC: TAction;
    ACTRepresentante_Venda_Produto: TAction;
    ACTRepresentante_Ranking: TAction;
    ACTRCRABC: TAction;
    MICustosImportados: TMenuItem;
    ACTSegmentos: TAction;
    ACTGrupos: TAction;
    ACTSubGrupos: TAction;
    ACTSubCategorias: TAction;
    MIICMS_ST: TMenuItem;
    N12: TMenuItem;
    N14: TMenuItem;
    ACTProduto_Devolucao_Cancelamento: TAction;
    N16: TMenuItem;
    MIRelFinanceiro: TMenuItem;
    MIRelFinanceiro_Abatimento: TMenuItem;
    ACTFinanceiro_Abatimento: TAction;
    N18: TMenuItem;
    ACTCliente_Venda_Produto: TAction;
    ACTCliente_Produto_Atendido: TAction;
    MIRelCliente_Produto_Atendido: TMenuItem;
    ACTCliente_Cadastro_Listagem: TAction;
    MIRelCliente_Grupo_Venda_Produto: TMenuItem;
    N19: TMenuItem;
    ACTCliente_Grupo_Venda_Produto: TAction;
    MIRelProduto_Estoque_Etiqueta: TMenuItem;
    ACTProduto_Estoque_Etiqueta: TAction;
    ACTFichaTecnica: TAction;
    MIRelFinanceiro_Cadastros_Duplicata: TMenuItem;
    ACTFinanceiro_Cadastros_Duplicata: TAction;
    ACTRepresentante_Cadastro_Listagem: TAction;
    MIRelProduto_Tabela_Preco: TMenuItem;
    ACTProduto_Tabela_Preco: TAction;
    MIRelGerencial_Tipo_Credito: TMenuItem;
    MIRelGerencial_Tipo_Venda: TMenuItem;
    MIRelGerencial_N1: TMenuItem;
    MIRelGerencial_Estoque_Unidade_Medida: TMenuItem;
    ACTGerencial_Estoque_Unidade_Medida: TAction;
    ACTGerencial_Tipo_Venda: TAction;
    N24: TMenuItem;
    MIRelGerencial_NF_Tipo_Operacao: TMenuItem;
    MIRelGerencial_NF_Peso: TMenuItem;
    ACTGerencial_NF_Tipo_Operacao: TAction;
    ACTGerencial_NF_Peso: TAction;
    MIRelGerencial_Performance_Venda: TMenuItem;
    N25: TMenuItem;
    ACTGerencial_Performance_Venda: TAction;
    MIRelProduto_Venda_Inativo: TMenuItem;
    ACTProduto_Venda_Inativo: TAction;
    MIRelProduto_Venda_Mensal: TMenuItem;
    N28: TMenuItem;
    ACTProduto_Venda_Mensal: TAction;
    MIRelProduto_Venda_Localidade: TMenuItem;
    ACTProduto_Venda_Regiao_Nacional: TAction;
    MIProduto_Venda_Regiao_UF: TMenuItem;
    MIProduto_Venda_Regiao_Nacional: TMenuItem;
    ACTProduto_Venda_Regiao_UF: TAction;
    Fornecedores1: TMenuItem;
    MIRelFornecedoresCPCAD: TMenuItem;
    ACTGFornecedoresProdutosCadastrados: TAction;
    MPEstoque: TMenuItem;
    SNEstoque3: TMenuItem;
    SMDEstoque: TMenuItem;
    NPTabelas4: TMenuItem;
    NPTabelas5: TMenuItem;
    ACTDEstoque: TAction;
    MIRelCliente_Produto_Nao_Atendido: TMenuItem;
    ACTCliente_Produto_Nao_Atendido: TAction;
    N22: TMenuItem;
    PNLPedidos: TPanel;
    RSBCliente: TRxSpeedButton;
    RSBProdutos: TRxSpeedButton;
    RSBRomaneios: TRxSpeedButton;
    RSBNFEmissao: TRxSpeedButton;
    RSBPedidos: TRxSpeedButton;
    RSBCompras: TRxSpeedButton;
    RSBProgramados: TRxSpeedButton;
    RSBRepresentante: TRxSpeedButton;
    RSBPEDEstoque: TRxSpeedButton;
    RSBFornecedor: TRxSpeedButton;
    RSBTransportadora: TRxSpeedButton;
    PNLFinanceiro: TPanel;
    RSBFINNotaFiscal: TRxSpeedButton;
    RSBFINClientes: TRxSpeedButton;
    RSBPAGControle: TRxSpeedButton;
    RSBFINRomaneios: TRxSpeedButton;
    RSBFINDuplicatas: TRxSpeedButton;
    RSBFINPedidos: TRxSpeedButton;
    ACTFINRepresentantes: TRxSpeedButton;
    RSBPAGComissao: TRxSpeedButton;
    RSBRECBancario: TRxSpeedButton;
    RSBRECCarteira: TRxSpeedButton;
    PNLPCP: TPanel;
    RSBExpedicao: TRxSpeedButton;
    RSBPCPProdutos: TRxSpeedButton;
    RSBPCPRomaneios: TRxSpeedButton;
    RSBExpedicaoManual: TRxSpeedButton;
    RSBPCPPedidos: TRxSpeedButton;
    RSBEstoqueEdicao: TRxSpeedButton;
    RSBEstoque: TRxSpeedButton;
    RSBPCPEtiquetas: TRxSpeedButton;
    ACTNFEmissao: TAction;
    ACTNFAdmin: TAction;
    RSBNFControle: TRxSpeedButton;
    ACTExpedicao: TAction;
    ACTPAGAdmin: TAction;
    ACTExecPrinter: TAction;
    RSBNFTerceiros: TRxSpeedButton;
    RSBCFOP: TRxSpeedButton;
    ACTTNFEmissao: TAction;
    ACTCFOP: TAction;
    SMMExpedicao: TMenuItem;
    ACTCustosImportados: TAction;
    NPFinanceiro2: TMenuItem;
    SMExpedicao: TMenuItem;
    SNEstoque2: TMenuItem;
    NPUtilitarios2: TMenuItem;
    ACTSaida: TAction;
    SMEEtiquetas: TMenuItem;
    SNEstoque1: TMenuItem;
    PNLRodape: TPanel;
    SBRodape: TdxStatusBar;
    PNLRodapeTOP: TPanel;
    GFASyncEvent: TRxGIFAnimator;
    PNLSyncEvent: TPanel;
    ODExplorer: TOpenDialog;
    IPrincipal: TImage;
    N1: TMenuItem;
    MIColetor: TMenuItem;

    procedure _DoneEvent(Sender: TObject);


    procedure FormCreate(Sender: TObject);
    procedure ACTClientesExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure ACTRepresentantesExecute(Sender: TObject);
    procedure ACTTransportadorasExecute(Sender: TObject);
    procedure ACTFornecedoresExecute(Sender: TObject);
    procedure ACTPrazosExecute(Sender: TObject);
    procedure ACTEEstoqueExecute(Sender: TObject);
    procedure ACTEstoqueExecute(Sender: TObject);
    procedure ACTLoginExecute(Sender: TObject);
    procedure ACTPrintersExecute(Sender: TObject);
    procedure ACTHELPExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ACTTSangriaExecute(Sender: TObject);
    procedure ACTCaixaExecute(Sender: TObject);
    procedure ACTMExpedicaoExecute(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure ACTRomaneiosExecute(Sender: TObject);
    procedure ACTCategoriasExecute(Sender: TObject);
    procedure ACTAberturaExecute(Sender: TObject);
    procedure ACTSangriaExecute(Sender: TObject);
    procedure ACTFechamentoExecute(Sender: TObject);
    procedure ACTRECDuplicatasExecute(Sender: TObject);
    procedure ACTRECCarteiraExecute(Sender: TObject);
    procedure ACTRECBancarioExecute(Sender: TObject);
    procedure ACTReAberturaExecute(Sender: TObject);
    procedure ACTEEtiquetasExecute(Sender: TObject);
    procedure ACTContainerExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TPrincipalTimer(Sender: TObject);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTEmConstrucaoExecute(Sender: TObject);
    procedure ACTPEtiquetasExecute(Sender: TObject);
    procedure ACTProdutosExecute(Sender: TObject);
    procedure ACTPAGComissaoExecute(Sender: TObject);
    procedure ACTPasswordExecute(Sender: TObject);
    procedure ACTCFEmissaoExecute(Sender: TObject);
    procedure ACTGruposExecute(Sender: TObject);
    procedure ACTSegmentosExecute(Sender: TObject);
    procedure ACTSubGruposExecute(Sender: TObject);
    procedure ACTSubCategoriasExecute(Sender: TObject);
    procedure ACTICMS_STExecute(Sender: TObject);
    procedure ACTGradeExecute(Sender: TObject);
    procedure ACTExecPrinterExecute(Sender: TObject);
    procedure MIComissaoClick(Sender: TObject);
    procedure ACTPedidosExecute(Sender: TObject);
    procedure ACTComprasExecute(Sender: TObject);
    procedure ACTProgramadosExecute(Sender: TObject);
    procedure ACTDEstoqueExecute(Sender: TObject);
    procedure MIRelProdutosProgClick(Sender: TObject);
    procedure ACTNFEmissaoExecute(Sender: TObject);
    procedure ACTNFAdminExecute(Sender: TObject);
    procedure ACTTNFEmissaoExecute(Sender: TObject);
    procedure ACTCFOPExecute(Sender: TObject);
    procedure ACTExpedicaoExecute(Sender: TObject);
    procedure ACTCustosImportadosExecute(Sender: TObject);
    procedure ACTNFConsultaExecute(Sender: TObject);
    procedure ACTNFSaidasExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MIColetorClick(Sender: TObject);
  private
    { Private declarations }
    procedure _Aviso_Reserva;
    procedure _Login(AIDUSER: Variant; AIDEP,ADEEP: String);

    procedure _SetHintDefault;
    procedure _SetMouseLeave(var AMessage: TMessage); message WM_MOUSELEAVE;
    function  _SetMouseTracking: Boolean;
  public
    { Public declarations }
  end;

  { Sheild }
  procedure uConstrucao(ACaption: String = ''); STDCall;
  procedure uPSQ_CAD_PRO(var AREC_SHE_DEF: TREC_SHE_DEF); STDCALL;

  procedure uSP_CAD_PRO_EST_LAN_UPD (ATHR_TBPK: String;
                                     ATHR_IDEP,
                                     ATHR_IDPK: Variant;
                                     ATHR_DEPK,
                                     FIDPK: String); STDCALL;



{ procedures do Sistema }
procedure uPSQCAD(var ARECPedido : TRECPedidos); STDCall; { Cadastros: Clientes, Fornecedores, Transportadoras, Compradores, Vendedores, Representantes e Agenda; }
procedure uPSQEND(var ARECEndereco: TRECPedidos;AForceShowModal: Boolean = False); STDCall;
procedure uPSQCMUN(var RECEndereco: TRECPedidos); STDCall;
procedure uPSQPED(var ARECPedido : TRECPedidos); STDCall;
procedure uPSQPRO(var ARECProduto: TRECProdutos); STDCall;

procedure uPSQPD (var ARECEdicao: TRECEdicao); STDCall;
procedure uPSQNF (var ARECPSQNF : TRECEdicao;ASQLConsulta: TIBSQL;AWinControl: TWinControl); STDCall;

procedure uPSQLogradouros(var ARECEndereco: TRECEnderecos); STDCall;

procedure uPesquisa(var RECPrincipal: TRECPrincipal); STDCall;
procedure uPSQSCORE(ATForm: TForm; AIDPK: Variant; ADEPK: String); STDCall;
procedure uLiberaFinanceiro; STDCall;
procedure uFrmCreate(AOwner: TComponent;AFClass: TFormClass; var AInstance); STDCall;
procedure uBXPedidos(AaIDPedido: array of Integer; ABSheildEdicao: Boolean = False); STDCall;
procedure uBX_DUP(AEmpresa,ANotaFiscal,AIDRomaneio: Variant); STDCall;
procedure uBxCaixa(AIDPedido: Integer); STDCAll;
procedure uRepaintMainForm(AForm: TForm); STDCall;
procedure uDisabledMainForm; STDCall;
procedure uFKPesquisa(ATabela: String;AValue: Variant); STDCall;

{ Funções do Sistema }
function uRETDTVencimento(AData: TDate): TDate; STDCall;
function uPSQNotaFiscal(ACDNF: Variant;Mostrar: Boolean = True): Boolean; STDCall;
function uLoadZoom(Imagem: TPicture; aProduto: Array of String): LongInt; STDCall;
function uPSQCadastroFiscal(ATexto: String): TRECCadastros; STDCall;
function uPesquisa_Produto(AIDEP: Integer = 0;ADTXT: String = '';AFTXT: String = 'ARTIGO';AWHERE: String = '=';ALIKE1: String = '';ALIKE2: String = '';ADDT1: TDate = 0;ADDT2: TDate = 0;AFDT: String = ''): Integer; STDCall;

{ Funções de Controle Financeiro }
function uFIN_BLQ(ASTCobranca,ASTFatura,AIDCliente: String): String; STDCall;
function uLimiteVenda(ASTCobranca,ASTFatura,AIDCliente: String;ATotal: Double): string; STDCall;

var
  FrmPrincipal: TFrmPrincipal;

  ATrackMouseEvent: TTrackMouseEvent;

  ATHR_ITEM: LongInt;
  ATHR_SYNC: String;


  DATA_MEDIA    : TDate;
  ITENS_PEDIDO,
  ITENS_BANCARIO,
  ITENS_CARTEIRA: Integer;
  VALOR_PEDIDO,
  VALOR_SALDO,
  VALOR_BANCARIO,
  VALOR_CARTEIRA: Double;
  APSQ_PED_PRG,APSQ_PED_VEN,APSQ_ROM_CAB,APSQ_NFE: String;

implementation

uses bPrincipal,
  AJBarcode,
  pLogin, pcad_cli, pSobre,
  pcad_rep, pcad_tra, pcad_for,
  ptab_nat, ptab_pag,
  pent_pro,
  pcai_abr, pcai_mov,
  pven_prg, pctr_prg, pctr_ped,
  pctr_rom, pctr_nfe,
  pcai_sar, pcai_fec,
  pven_prc, pctr_prc,
  pven_nfd, pcad_con,
  pcai_sar_edi, ppesquisa_geral,
  pfin_rec_con, petiqueta_geral,
  pEmConstrucao, pRelatorios, pcad_cli_inf, pSenha, pImpressoras,
  pPesquisa, pNFeConsulta, pemail, pven_nfe,
  pConsultaCNPJ, pCFeSat,
  peti_pro, pNFeSaida,
  pNFeSaidaConsulta,
  pProduto_Custo_Importado,pProduto_Custo_Importado_Edicao,
  pAviso_Reserva, pProduto_SubCategoria,pProduto_Grupo,
  pProduto_SubGrupo, pProduto_Categoria,
  pPesquisaCodigoMunicipal, pProduto_Cor, pProduto_Imagem, pfin_dup,
  ppag_com, pProduto, pNFeConsultaSefaz,
  pPesquisaLogradouros, pEstoqueDefeitos,
  prelatorio_geral, pProduto_Pesquisa, pPSQCAD,
  pSegmentos, pEstoque, pPSQEND, 
  pCAD_PRO_PSQ, pEXP_SEP_MAN, pEXP_SEP_COL;

{$R *.dfm}

constructor TRunProcessThread.Create(const VTHR_TBPK: String; VTHR_IDEP,VTHR_IDPK: Variant; VTHR_DEPK: String; VIDPK: String = 'IDPK');
begin
  oOTransact(FBird.TFBConsulta);
  inherited Create(True);

  FreeOnTerminate := True;

  ATHR_TBPK := VTHR_TBPK;
  ATHR_IDEP := VTHR_IDEP;
  ATHR_IDPK := VTHR_IDPK;
  ATHR_DEPK := VTHR_DEPK;

  FIDPK := VIDPK;
end;

destructor TRunProcessThread.Destroy;
begin
  oCTransact(FBird.TFBConsulta);
  inherited;
end;

procedure TRunProcessThread._SyncEvent;
begin
  if   ATHR_ITEM > 1 then
  with Frmprincipal do
  begin
    PNLSyncEvent.Caption := ATHR_SYNC;
    GFASyncEvent.Animate := True;

    PNLRodape.Height     := 65;
    PNLRodapeTOP.Height  := 30;
  end  
end;

procedure TRunProcessThread.Execute;
var
  i: Word;
begin
  inherited;
  try
    with FrmPrincipal,
         FBird do
    begin
      ATHR_ITEM := 0;
      ATHR_SYNC := EmptyStr;

      with SQLFBConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT   PK.IDEP,PK.IDCP,PK.SKU,PK.DGCP,MAX(PK.ITEM) AS ITEM');
        SQL.Add('FROM ' + ATHR_TBPK + ' AS PK');

        SQL.Add('WHERE    PK.IDEP  = ''' + ATHR_IDEP + '''');
        SQL.Add('AND '  + FIDPK + '= ''' + ATHR_IDPK + '''');

        SQL.Add('GROUP BY 1,2,3,4');
        SQL.Add('ORDER BY 5');
        ExecQuery;
      end;

      while not SQLFBConsulta.Eof do
      begin
        try
          oOTransact(TFBEdicao);

          SPFBEdicao.Close;
          SPFBEdicao.StoredProcName := 'SP_CAD_PRO_EST_LAN';
          SPFBEdicao.Prepare;

          for i := 0 to SPFBEdicao.ParamCount - 1 do
          SPFBEdicao.Params[i].Value := Null;

          SPFBEdicao.ParamByName('AEP_ID').Value := SQLFBConsulta.Current.ByName('IDEP').AsInteger;
          SPFBEdicao.ParamByName('ACP_ID').Value := SQLFBConsulta.Current.ByName('IDCP').AsInteger;
          SPFBEdicao.ExecProc;

          oCTransact(TFBEdicao);
        except
          oCTransact(TFBEdicao,ltRollback);
        end;

        INC(ATHR_ITEM);
        ATHR_SYNC := 'Atualizando Estoque ...   ' +
                     'Pedido Nº: ' + ATHR_DEPK    + ' - ' +
                     'Produto: '   + oStrZero(SQLFBConsulta.Current.ByName('ITEM').AsInteger,5) + '   ' +
                                              SQLFBConsulta.Current.ByName('SKU' ).AsString     + '   ' +
                                              SQLFBConsulta.Current.ByName('DGCP').AsString;
        Synchronize(_SyncEvent);
        SQLFBConsulta.Next;
      end;
    end;
  except
    oCTransact(FBird.TFBConsulta,ltRollback);
  end
end;

procedure uConstrucao(ACaption: String = ''); STDCall;
begin
  { nothing };
end;

procedure uSP_CAD_PRO_EST_LAN_UPD (ATHR_TBPK: String;
                                   ATHR_IDEP,
                                   ATHR_IDPK: Variant;
                                   ATHR_DEPK,
                                   FIDPK: String); STDCALL;
var
  Thread: TRunProcessThread;
begin
  if (ATHR_TBPK <> EmptyStr) and (ATHR_IDEP <> EmptyStr)  and (ATHR_IDPK <> EmptyStr) then
        with FrmPrincipal do
        begin
          Thread := TRunProcessThread.Create(ATHR_TBPK,ATHR_IDEP,ATHR_IDPK,ATHR_DEPK,FIDPK);             //Create(AnsiQuotedStr(EDDEPK.Text, #34)) - "ricardo"

          Thread.OnTerminate := _DoneEvent;
          Thread.Priority    := tpTimeCritical;
          Thread.Resume;
        end;
end;

procedure uPSQ_CAD_PRO(var AREC_SHE_DEF: TREC_SHE_DEF); STDCALL;
begin
  AREC_SHE_DEF.FB_PSQ_OK := False;

  if AREC_SHE_DEF.FWinControl <> Nil then
  begin
    AREC_SHE_DEF.FB_FD_ED_PK := EmptyStr;
    AREC_SHE_DEF.FB_VD_ED_PK := EmptyStr;
    AREC_SHE_DEF.FPoint    := AREC_SHE_DEF.FWinControl.ClientToScreen(Point(0,0));

    if AREC_SHE_DEF.FWinControl.ClassType = TdxEdit then
    begin
      AREC_SHE_DEF.FB_FD_ED_PK := TdxEdit(AREC_SHE_DEF.FWinControl).HelpKeyword;
      AREC_SHE_DEF.FB_VD_ED_PK := TdxEdit(AREC_SHE_DEF.FWinControl).Text;
    end else

    if AREC_SHE_DEF.FWinControl.ClassType = TdxMaskEdit then
    begin
      AREC_SHE_DEF.FB_FD_ED_PK := TdxMaskEdit(AREC_SHE_DEF.FWinControl).HelpKeyword;
      AREC_SHE_DEF.FB_VD_ED_PK := TdxMaskEdit(AREC_SHE_DEF.FWinControl).Text;
    end else

    if AREC_SHE_DEF.FWinControl.ClassType = TdxCurrencyEdit then
    begin
      AREC_SHE_DEF.FB_FD_ED_PK := TdxCurrencyEdit(AREC_SHE_DEF.FWinControl).HelpKeyword;
      AREC_SHE_DEF.FB_VD_ED_PK := TdxCurrencyEdit(AREC_SHE_DEF.FWinControl).Text;
    end else

    if AREC_SHE_DEF.FWinControl.ClassType = TdxButtonEdit then
    begin
      AREC_SHE_DEF.FB_FD_ED_PK := TdxButtonEdit(AREC_SHE_DEF.FWinControl).HelpKeyword;
      AREC_SHE_DEF.FB_VD_ED_PK := TdxButtonEdit(AREC_SHE_DEF.FWinControl).Text;
    end else

    if AREC_SHE_DEF.FWinControl.ClassType = TdxDBGridMaskColumn then
    begin
      AREC_SHE_DEF.FB_FD_ED_PK := TdxDBGridMaskColumn(AREC_SHE_DEF.FWinControl).FieldName;
      AREC_SHE_DEF.FB_VD_ED_PK := TdxDBGridMaskColumn(AREC_SHE_DEF.FWinControl).Field.AsString;
    end;
  end;

  if  (AREC_SHE_DEF.FB_VD_ED_PK <> EmptyStr) and (AREC_SHE_DEF.FB_FD_ED_PK <> EmptyStr) then
  begin
    AREC_SHE_DEF.FException := 'Produto não Encontrado !';

    IF Pos('ID',AREC_SHE_DEF.FB_FD_ED_PK) > 0 then
    begin
      AREC_SHE_DEF.FB_PSQ_WHERE := ' = ';
      AREC_SHE_DEF.FB_PSQ_LKPK := '''';
      AREC_SHE_DEF.FB_PSQ_LKFK := '''';
    end else
    begin
      AREC_SHE_DEF.FB_PSQ_WHERE := ' LIKE ';
      AREC_SHE_DEF.FB_PSQ_LKPK := '''' ;
      AREC_SHE_DEF.FB_PSQ_LKFK := '%''';
    end;

    if not AREC_SHE_DEF.FB_SQL.Transaction.InTransaction then
    oOTransact(AREC_SHE_DEF.FB_SQL.Transaction);

    with AREC_SHE_DEF.FB_SQL do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   DISTINCT');
      SQL.Add('         PK.ID,PK.EP_ID,PK.EP_NO,PK.CF_ID,PK.CF_NO,');

      SQL.Add('         PK.IDEV,PK.DTEV,');
      SQL.Add('         PK.IDCA,PK.DTCA,');
      SQL.Add('         PK.IDED,PK.DTED,');
      SQL.Add('         PK.IDST,PK.DTST,PK.CDST,PK.REST,PK.DEST,');
      SQL.Add('         PK.STA_NO_ABREV,');

      SQL.Add('         PK.AK_ID ,PK.ARTIGO,');
      SQL.Add('         PK.CP_ID ,PK.SKU,PK.CF_SKU,');
      SQL.Add('         PK.CEAN  ,');

      SQL.Add('         PK.EK_ID ,');
      SQL.Add('         PK.IMG_ID,');

      SQL.Add('         PK.FIS_NCM ,PK.FIS_CEST  ,');
      SQL.Add('         PK.FIS_PIPI,PK.FIS_EXTIPI,');

      SQL.Add('         PK.CP_NO    ,PK.CP_NO_GRD,PK.GRD_SG,');
      SQL.Add('         PK.CP_NO_TLO,PK.CP_NO_CMP,');

      SQL.Add('         PK.UCOM ,PK.UTRIB,');
      SQL.Add('         PK.UCON ,');
      SQL.Add('         PK.UCDBE,PK.UQTDE,PK.UQTDE_VEN_MIN,PK.UQTDE_VEN_MUL,');
      SQL.Add('         PK.LJV_UCOM,PK.LJV_UCON,PK.LJV_UQTDE,');

      SQL.Add('         PK.UPSBR,PK.UPSLQ ,PK.UPSCN,');
      SQL.Add('         PK.MPESO,PK.MMETRO,PK.MGRAMA,PK.MREND,');

      SQL.Add('         PK.VPRC_PAD,PK.VPRC_PRZ,PK.VPRC_PRO,');
      SQL.Add('         PK.LJV_VPRC_PAD,PK.LJV_VPRC_PRZ,PK.LJV_VPRC_PRO,');
      SQL.Add('         PK.ATJ_VPRC_PAD,PK.ATJ_VPRC_PRZ,PK.ATJ_VPRC_PRO,');
      SQL.Add('         PK.REP_VPRC_PAD,PK.REP_VPRC_PRZ,PK.REP_VPRC_PRO,');
      SQL.Add('         PK.VAR_VPRC_PAD,PK.VAR_VPRC_PRZ,PK.VAR_VPRC_PRO,');
      SQL.Add('         TRIM(CAST(IIF(PK.FIS_ORIG = 1,''USD'',''R$'') AS VARCHAR(3))) AS CF_VPRC_PAD_ORI,');
      SQL.Add('         PK.CF_VPRC_PAD,');

      SQL.Add('         PK.COL_ID,PK.COL_NO,PK.SEG_ID,PK.SEG_NO,');
      SQL.Add('         PK.GRP_ID,PK.GRP_NO,PK.SGP_ID,PK.SGP_NO,');
      SQL.Add('         PK.CAT_ID,PK.CAT_NO,PK.SCT_ID,PK.SCT_NO,');
      SQL.Add('         TB_SCT.SCT_NO AS D_SCT_NO,');

      SQL.Add('         PK.FIS_ORIG ,PK.FIS_XORIG,');
      SQL.Add('         PK.FIS_CPAIS,PK.FIS_XPAIS,PK.FIS_FPAIS,');

      SQL.Add('         PK.INFADCAD,');

      SQL.Add('         MAX(E.DTEV) OVER(PARTITION BY PK.CP_ID) AS E_DTEV, -- Evento');

      SQL.Add('         -- Estoque Pronta Entrega');
      SQL.Add('         COALESCE(CAST(SUM(E.EPE_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EPE_QTDE,COALESCE(CAST(SUM(E.EPE_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EPE_QTRL,');
      SQL.Add('         COALESCE(CAST(SUM(E.EST_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EST_QTDE,COALESCE(CAST(SUM(E.EST_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EST_QTRL,');
      SQL.Add('         COALESCE(CAST(SUM(E.EAA_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EAA_QTDE,COALESCE(CAST(SUM(E.EAA_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EAA_QTRL,');

      SQL.Add('         -- Estoque Antecipado');
      SQL.Add('         COALESCE(CAST(SUM(E.EAT_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EAT_QTDE,COALESCE(CAST(SUM(E.EAT_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EAT_QTRL,');

      SQL.Add('         -- Estoque Revisado');
      SQL.Add('         COALESCE(CAST(SUM(E.ERV_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS ERV_QTDE,COALESCE(CAST(SUM(E.ERV_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS ERV_QTRL,');
      SQL.Add('         COALESCE(CAST(SUM(E.EA_QTDE ) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EA_QTDE ,COALESCE(CAST(SUM(E.EA_QTRL ) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EA_QTRL ,');
      SQL.Add('         COALESCE(CAST(SUM(E.EB_QTDE ) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EB_QTDE ,COALESCE(CAST(SUM(E.EB_QTRL ) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EB_QTRL ,');
      SQL.Add('         COALESCE(CAST(SUM(E.EC_QTDE ) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EC_QTDE ,COALESCE(CAST(SUM(E.EC_QTRL ) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EC_QTRL ,');

      SQL.Add('         -- Pilotagem');
      SQL.Add('         COALESCE(CAST(SUM(E.EPI_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EPI_QTDE,COALESCE(CAST(SUM(E.EPI_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EPI_QTRL,');

      SQL.Add('         -- Estoque Substituto');
      SQL.Add('         COALESCE(CAST(SUM(E.ESU_QTDE_ENT) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS ESU_QTDE_ENT,COALESCE(CAST(SUM(E.ESU_QTRL_ENT) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS ESU_QTRL_ENT,');
      SQL.Add('         COALESCE(CAST(SUM(E.ESU_QTDE_SAI) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS ESU_QTDE_SAI,COALESCE(CAST(SUM(E.ESU_QTRL_SAI) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS ESU_QTRL_SAI,');

      SQL.Add('         -- Compras');
      SQL.Add('         COALESCE(CAST(SUM(E.EPC_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EPC_QTDE,COALESCE(CAST(SUM(E.EPC_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EPC_QTRL,');
      SQL.Add('         MAX(E.EPC_CTNR) OVER(PARTITION BY PK.CP_ID) AS EPC_CTNR,');

      SQL.Add('         -- Vendas Programadas');
      SQL.Add('         COALESCE(CAST(SUM(E.EPP_QTDE     ) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EPP_QTDE     ,COALESCE(CAST(SUM(E.EPP_QTRL     ) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EPP_QTRL     ,');
      SQL.Add('         COALESCE(CAST(SUM(E.EPP_QTDE_CTNR) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EPP_QTDE_CTNR,COALESCE(CAST(SUM(E.EPP_QTRL_CTNR) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EPP_QTRL_CTNR,');
      SQL.Add('         COALESCE(CAST(SUM(E.EEP_QTDE     ) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EEP_QTDE     ,COALESCE(CAST(SUM(E.EEP_QTRL     ) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EEP_QTRL     ,');

      SQL.Add('         -- Vendas Pronta Entrega');
      SQL.Add('         COALESCE(CAST(SUM(E.EPV_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EPV_QTDE,');
      SQL.Add('         COALESCE(CAST(SUM(E.EPV_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER      ),0) AS EPV_QTRL,');

      SQL.Add('         -- Vendas Separadas');
      SQL.Add('         COALESCE(CAST(SUM(E.ESP_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS ESP_QTDE,');
      SQL.Add('         COALESCE(CAST(SUM(E.EPV_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER      ),0) AS ESP_QTRL ');

      SQL.Add('FROM      VW_PSQ_CAD_PRO     AS PK');
      SQL.Add('LEFT JOIN VW_PSQ_CAD_PRO_SCT AS TB_SCT ON (TB_SCT.AK_ID = PK.AK_ID)');
      SQL.Add('LEFT JOIN SP_PSQ_CAD_PRO_EST_SLD(4,PK.CP_ID) AS E ON (1 = 1)');


      SQL.Add('WHERE ' + AREC_SHE_DEF.FB_FD_ED_PK + AREC_SHE_DEF.FB_PSQ_WHERE + AREC_SHE_DEF.FB_PSQ_LKPK + AREC_SHE_DEF.FB_VD_ED_PK + AREC_SHE_DEF.FB_PSQ_LKFK);

      { Situações
      SQL.Add('AND PK.CDST <> 43');
      SQL.Add('AND PK.CDST <> 85');

      { Apenas Ativos
      if AREC_SHE_DEF.PSQ_CDST_30 then
      SQL.Add('AND      PK.CDST = 30'); }
      SQL.Add('ORDER BY PK.ARTIGO,PK.CP_NO_GRD');

//      ParamByName('LG_IDEP').Value := RECParametros.EP_ID;
      Prepare;
      ExecQuery;

      if Eof then
      if AREC_SHE_DEF.FWinControl.ClassType = TdxDBGridMaskColumn then oException(Nil,AREC_SHE_DEF.FException) else
      if AREC_SHE_DEF.FWinControl.Showing                         then oException(AREC_SHE_DEF.FWinControl,AREC_SHE_DEF.FException) else
                                                                       oErro     (Application.Handle,AREC_SHE_DEF.FException);
    end;

    if oLast(AREC_SHE_DEF.FB_SQL) > 1 then
    try
      if Assigned(FrmCAD_PRO_PSQ) then FrmCAD_PRO_PSQ.BringToFront else
      begin
        TFrmCAD_PRO_PSQ._ExecForm(
                    Nil, { Owner }
                    FrmCAD_PRO_PSQ, { Form }
                    True, { inicia pela pesquisa }
                    fsStayOnTop, { Style }
                    RECParametros.EP_ID, { Empresa }
                    0, { Código Principal }
                    0, { Código Evento }
                    1, { Tipo }
                    AREC_SHE_DEF.FB_TB_PK, { Tabela }
                    'Pesquisa'); { Processo }

         if AREC_SHE_DEF.FWinControl <> Nil then
         begin
           FrmCAD_PRO_PSQ.REC_SHE_DEF.FTop  := AREC_SHE_DEF.FPoint.Y + AREC_SHE_DEF.FWinControl.Height;
           FrmCAD_PRO_PSQ.REC_SHE_DEF.FLeft := AREC_SHE_DEF.FPoint.X;
         end;  

         FrmCAD_PRO_PSQ.Consulta.Close;
         FrmCAD_PRO_PSQ.Consulta.SQL.Clear;
         FrmCAD_PRO_PSQ.Consulta.SQL.Assign(AREC_SHE_DEF.FB_SQL.SQL);
         FrmCAD_PRO_PSQ.ShowModal;
       end;
    finally
      if FrmCAD_PRO_PSQ.REC_SHE_DEF.FB_PSQ_OK then
      begin
        AREC_SHE_DEF.FWinControl := Nil;
        AREC_SHE_DEF.FB_FD_ED_PK   := 'PK.CP_ID';
        AREC_SHE_DEF.FB_VD_ED_PK   := IntToStr(FrmCAD_PRO_PSQ.ConsultaCP_ID.AsInteger);

        uPSQ_CAD_PRO(AREC_SHE_DEF);
      end;
    end else
    AREC_SHE_DEF.FB_PSQ_OK := True;
  end;

  if AREC_SHE_DEF.FWinControl <> Nil then
  begin
    if not AREC_SHE_DEF.FB_PSQ_OK then
    begin
      if AREC_SHE_DEF.FWinControl.ClassType = TdxEdit then
      TdxEdit(AREC_SHE_DEF.FWinControl).Reset else

      if AREC_SHE_DEF.FWinControl.ClassType = TdxMaskEdit then
      TdxMaskEdit(AREC_SHE_DEF.FWinControl).Reset else

      if AREC_SHE_DEF.FWinControl.ClassType = TdxCurrencyEdit then
      TdxCurrencyEdit(AREC_SHE_DEF.FWinControl).Reset else

      if AREC_SHE_DEF.FWinControl.ClassType = TdxButtonEdit then
      TdxButtonEdit(AREC_SHE_DEF.FWinControl).Reset else

      if AREC_SHE_DEF.FWinControl.ClassType = TdxMemo then
      TdxMemo(AREC_SHE_DEF.FWinControl).Reset;

      if (AREC_SHE_DEF.FWinControl.Showing) and (AREC_SHE_DEF.FWinControl.Enabled) then
      TWinControl(AREC_SHE_DEF.FWinControl).SetFocus;
    end;

    AREC_SHE_DEF.FWinControl := Nil;
  end;

{  if AREC_SHE_DEF.FB_SQL <> Nil then
  begin
    AREC_SHE_DEF.FB_SQL.Close;
    AREC_SHE_DEF.FB_SQL := Nil;
  end;}
end;

procedure uPSQEND(var ARECEndereco: TRECPedidos;AForceShowModal: Boolean = False); STDCall;
begin
  ARECEndereco.Selected   := False;
  ARECEndereco.AException := 'Endereço não Encontrado !';

  if ARECEndereco.AWinControl <> Nil then
  begin
    ARECEndereco.APoint := ARECEndereco.AWinControl.ClientToScreen(Point(0,0));

    if ARECEndereco.AWinControl.ClassType = TdxEdit then
    begin
      ARECEndereco.Value := TdxEdit(ARECEndereco.AWinControl).Text;
      ARECEndereco.Field := TdxEdit(ARECEndereco.AWinControl).HelpKeyword;
    end else
    if ARECEndereco.AWinControl.ClassType = TdxMaskEdit then
    begin
      ARECEndereco.Value := TdxMaskEdit(ARECEndereco.AWinControl).Text;
      ARECEndereco.Field := TdxMaskEdit(ARECEndereco.AWinControl).HelpKeyword;
    end else
    if ARECEndereco.AWinControl.ClassType = TdxCurrencyEdit then
    begin
      ARECEndereco.Value := TdxCurrencyEdit(ARECEndereco.AWinControl).Text;
      ARECEndereco.Field := TdxCurrencyEdit(ARECEndereco.AWinControl).HelpKeyword;
    end else
    if ARECEndereco.AWinControl.ClassType = TdxButtonEdit then
    begin
      ARECEndereco.Value := TdxButtonEdit(ARECEndereco.AWinControl).Text;
      ARECEndereco.Field := TdxButtonEdit(ARECEndereco.AWinControl).HelpKeyword;
    end else
    if ARECEndereco.AWinControl.ClassType = TdxDBGridMaskColumn then
    begin
      ARECEndereco.Value := TdxDBGridMaskColumn(ARECEndereco.AWinControl).Field.AsString;
      ARECEndereco.Field := TdxDBGridMaskColumn(ARECEndereco.AWinControl).FieldName;
    end;
  end;

  if  ((ARECEndereco.VALUE <> EmptyStr) and (ARECEndereco.FIELD <> EmptyStr)) or (AForceShowModal) then
  begin
    if (ARECEndereco.VALUE <> EmptyStr) and (ARECEndereco.FIELD <> EmptyStr) then
        with ARECEndereco.AQConsulta do
        begin
          Close;
          SQL.Clear;

          SQL.Add('SELECT * FROM SP_PSQ_TAB_CEP');
          SQL.Add('(');
          SQL.Add('''' + ARECEndereco.Value + ''',');
          SQL.Add('''' + ARECEndereco.Field + ''',');

          if Pos('Log',ARECEndereco.Field) > 0 then
          SQL.Add('''CONTAINING''') else
          begin
            SQL.Add(''''',');
            SQL.Add('''%''');
          end;

          SQL.Add(')');

          Open;
          Last;
        end;

        if (ARECEndereco.AQConsulta.Current.Vars[0].AsInteger = 0) and (ARECEndereco.AWinControl <> Nil) and (not AForceShowModal) then
            if ARECEndereco.AWinControl.ClassType = TdxDBGridMaskColumn then
               oException(Nil,ARECEndereco.AException) else
               oErro(ARECEndereco.AWinControl.Handle,ARECEndereco.AException);

        if (ARECEndereco.AQConsulta.RecNo = 1) and (not AForceShowModal) then
        begin
          ARECEndereco.Selected := True;

          { Endereço }
          ARECEndereco.LOG_NU :=  ARECEndereco.AQConsulta.Current.ByName('ID').AsString;
          ARECEndereco.TLO_TX :=  ARECEndereco.AQConsulta.Current.ByName('TIPO').AsString;
          ARECEndereco.LOG_NO :=  ARECEndereco.AQConsulta.Current.ByName('LOGRADOURO').AsString;
          ARECEndereco.XCPL   :=  ARECEndereco.AQConsulta.Current.ByName('COMPLEMENTO').AsString;
          ARECEndereco.CEP    :=  ARECEndereco.AQConsulta.Current.ByName('CEP').AsString;
          ARECEndereco.BAI_NO :=  ARECEndereco.AQConsulta.Current.ByName('BAIRRO').AsString;
          ARECEndereco.LOC_NO :=  ARECEndereco.AQConsulta.Current.ByName('CIDADE').AsString;
          ARECEndereco.CMUN   :=  ARECEndereco.AQConsulta.Current.ByName('CMUN').AsString;
          ARECEndereco.UF     :=  ARECEndereco.AQConsulta.Current.ByName('UF').AsString;
        end else
        if (ARECEndereco.AQConsulta.RecNo > 1) or (AForceShowModal) then
            try
    //          TFrmPSQEND._ExecForm(Nil,FrmPSQEND,false,fsStayOnTop,-3,'Consulta',ARECEndereco.CDCD,ARECEndereco.FIELD+' '+IFThen(Pos('ID',ARECEndereco.FIELD) > 0,'=','CONTAINING')+' '''+ARECEndereco.VALUE+'''');
               FrmPSQEND.REC_SHE_DEF.FTop  := ARECEndereco.APoint.Y + ARECEndereco.AWinControl.Height;
               FrmPSQEND.REC_SHE_DEF.FLeft := ARECEndereco.APoint.X;
               FrmPSQEND.Consulta.SQL.Clear;
               FrmPSQEND.Consulta.SQL.Assign(ARECEndereco.AQConsulta.SQL);
               FrmPSQEND.ShowModal;
            finally
              if (FrmPSQEND.REC_SHE_DEF.Selected) or (AForceShowModal) then
              begin
                if FrmPSQEND.ConsultaID.AsInteger > 0 then
                begin
                  ARECEndereco.Value := IntToStr(FrmPSQEND.ConsultaID.AsInteger);
                  ARECEndereco.Field := 'ID';
                end;

                ARECEndereco.AWinControl := Nil;
                uPSQEND(ARECEndereco);
              end;
            end;
  end;

  { Permite limpar os dados }
  if (not ARECEndereco.Selected) and (ARECEndereco.VALUE = EmptyStr) then
          ARECEndereco.Selected  := True;

  if ARECEndereco.AWinControl <> Nil then
  begin
    { RETIRADO POIS NÃO DEIXA USUÁRIO CONCLUIR CADASTRO
      ***** URGENTE ATUALIZAR CEP CORREIOS *****

    if not ARECEndereco.Selected then
    begin
      if oYesNo(ARECEndereco.AWinControl.Handle,'Continuar Editando ?') = mrNo then
      begin
        if ARECEndereco.AWinControl.ClassType = TdxEdit         then TdxEdit(ARECEndereco.AWinControl).Reset else
        if ARECEndereco.AWinControl.ClassType = TdxMaskEdit     then TdxMaskEdit(ARECEndereco.AWinControl).Reset else
        if ARECEndereco.AWinControl.ClassType = TdxCurrencyEdit then TdxCurrencyEdit(ARECEndereco.AWinControl).Reset else
        if ARECEndereco.AWinControl.ClassType = TdxButtonEdit   then TdxButtonEdit(ARECEndereco.AWinControl).Reset else
        if ARECEndereco.AWinControl.ClassType = TdxMemo         then TdxMemo(ARECEndereco.AWinControl).Reset;
      end else
      begin
        if ARECEndereco.AWinControl.ClassType = TdxEdit         then TdxEdit(ARECEndereco.AWinControl).Modified         := False else
        if ARECEndereco.AWinControl.ClassType = TdxMaskEdit     then TdxMaskEdit(ARECEndereco.AWinControl).Modified     := False else
        if ARECEndereco.AWinControl.ClassType = TdxCurrencyEdit then TdxCurrencyEdit(ARECEndereco.AWinControl).Modified := False else
        if ARECEndereco.AWinControl.ClassType = TdxButtonEdit   then TdxButtonEdit(ARECEndereco.AWinControl).Modified   := False else
        if ARECEndereco.AWinControl.ClassType = TdxMemo         then TdxMemo(ARECEndereco.AWinControl).Modified         := False;
      end;

      if (ARECEndereco.AWinControl.Showing) and (ARECEndereco.AWinControl.Enabled) then
          TWinControl(ARECEndereco.AWinControl).SetFocus;
    end;

    }
    ARECEndereco.AWinControl := Nil;
  end;

  if ARECEndereco.AQConsulta <> Nil then
  begin
    if ARECEndereco.AQConsulta.State = dsBrowse then
       ARECEndereco.AQConsulta.Close;
       ARECEndereco.AQConsulta := Nil;
  end;
end;

procedure uPSQCAD(var ARECPedido: TRECPedidos); STDCall;
begin
  ARECPedido.Selected := False;
  ARECPedido.VWCD     := 'VW_CAD_' +
                           IFThen(ARECPedido.CDCD = 0,'CLI',
                           IFThen(ARECPedido.CDCD = 1,'FOR',
                           IFThen(ARECPedido.CDCD = 2,'REP',
                           IFThen(ARECPedido.CDCD = 3,'TRA'))));

  ARECPedido.AException := IFThen(ARECPedido.CDCD = 0,'Cliente',
                           IFThen(ARECPedido.CDCD = 1,'Fornecedor',
                           IFThen(ARECPedido.CDCD = 2,'Representante',
                           IFThen(ARECPedido.CDCD = 3,'Transportadora')))) + ' não Encontrado !';

  if ARECPedido.AWinControl <> Nil then
  begin
    ARECPedido.APoint := ARECPedido.AWinControl.ClientToScreen(Point(0,0));

    if ARECPedido.AWinControl.ClassType = TdxEdit then
    begin
      ARECPedido.Value := TdxEdit(ARECPedido.AWinControl).Text;
      ARECPedido.Field := TdxEdit(ARECPedido.AWinControl).HelpKeyword;
    end else
    if ARECPedido.AWinControl.ClassType = TdxMaskEdit then
    begin
      ARECPedido.Value := TdxMaskEdit(ARECPedido.AWinControl).Text;
      ARECPedido.Field := TdxMaskEdit(ARECPedido.AWinControl).HelpKeyword;
    end else
    if ARECPedido.AWinControl.ClassType = TdxCurrencyEdit then
    begin
      ARECPedido.Value := TdxCurrencyEdit(ARECPedido.AWinControl).Text;
      ARECPedido.Field := TdxCurrencyEdit(ARECPedido.AWinControl).HelpKeyword;
    end else
    if ARECPedido.AWinControl.ClassType = TdxButtonEdit then
    begin
      ARECPedido.Value := TdxButtonEdit(ARECPedido.AWinControl).Text;
      ARECPedido.Field := TdxButtonEdit(ARECPedido.AWinControl).HelpKeyword;
    end else
    if ARECPedido.AWinControl.ClassType = TdxDBGridMaskColumn then
    begin
      ARECPedido.Value := TdxDBGridMaskColumn(ARECPedido.AWinControl).Field.AsString;
      ARECPedido.Field := TdxDBGridMaskColumn(ARECPedido.AWinControl).FieldName;
    end;
  end;

  if (ARECPedido.VALUE <> EmptyStr) and (ARECPedido.FIELD <> EmptyStr) then
      with ARECPedido.AQConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.IDCD,PK.CDCD,PK.DECD,PK.RZCD,PK.GPCD,');

        { CAD_CLI_CRD }
        SQL.Add('COALESCE(FK.IDEP    ,0) AS FIN_IDEP    ,COALESCE(FK.VCRD        ,0) AS FIN_VCRD        ,COALESCE(FK.NAFA        ,0   ) AS FIN_CSPD,');
        SQL.Add('COALESCE(FK.PDSC    ,0) AS FIN_PDSC    ,COALESCE(FK.VDSC        ,0) AS FIN_VDSC        ,NULLIF(FK.INFADCAD_L1   ,'''') AS FIN_INFADCAD_L1 ,NULLIF(FK.INFADCAD_L2    ,'''') AS FIN_INFADCAD_L2,');
        SQL.Add('COALESCE(FK.PDSC_001,0) AS FIN_PDSC_001,COALESCE(FK.VDSC_INI_001,0) AS FIN_VDSC_INI_001,COALESCE(FK.VDSC_FIM_001,0   ) AS FIN_VDSC_FIM_001,NULLIF(FK.INFADCAD_L1_001,'''') AS FIN_INFADCAD_L1_001,NULLIF(FK.INFADCAD_L2_001,'''') AS FIN_INFADCAD_L2_001,');
        SQL.Add('COALESCE(FK.PDSC_002,0) AS FIN_PDSC_002,COALESCE(FK.VDSC_INI_002,0) AS FIN_VDSC_INI_002,COALESCE(FK.VDSC_FIM_002,0   ) AS FIN_VDSC_FIM_002,NULLIF(FK.INFADCAD_L1_002,'''') AS FIN_INFADCAD_L1_002,NULLIF(FK.INFADCAD_L2_002,'''') AS FIN_INFADCAD_L2_002,');
        SQL.Add('COALESCE(FK.PDSC_003,0) AS FIN_PDSC_003,COALESCE(FK.VDSC_INI_003,0) AS FIN_VDSC_INI_003,COALESCE(FK.VDSC_FIM_003,0   ) AS FIN_VDSC_FIM_003,NULLIF(FK.INFADCAD_L1_003,'''') AS FIN_INFADCAD_L1_003,NULLIF(FK.INFADCAD_L2_003,'''') AS FIN_INFADCAD_L2_003,');

        SQL.Add('PK.DTCA,PK.DTFU,PK.DTPC,PK.DTPP,PK.DTPV,');
        SQL.Add('PK.CDST,PK.REST,PK.DEST  ,');
        SQL.Add('PK.CNPJ,PK.FIS_CRT,PK.FIS_CREDICMS,');
        SQL.Add('PK.IE  ,PK.FIS_INDIEDEST,PK.FIS_INDFINAL,');
        SQL.Add('PK.ISUF,PK.IM,');
        SQL.Add('PK.CPF ,PK.IDESTRANGEIRO,');
        SQL.Add('PK.IDCV,PK.DECV,PK.IDCR,PK.DECR,PK.IDCC,PK.DECC,');
        SQL.Add('PK.CDPD,PK.CDCO,PK.CDPG,PK.DEPG,');
        SQL.Add('PK.IDCT,PK.DECT,PK.MFRT,');
        SQL.Add('PK.CONTATO,PK.DDD,PK.TEL,PK.EMAIL,PK.ENVEMAIL,PK.D_FONE,PK.D_CONTATO,PK.D_CONTATO2,PK.D_CONTATO3,PK.D_CEL_CONTATO,PK.D_CEL_CONTATO2,PK.D_ZAP_CONTATO,');
        SQL.Add('PK.LOG_NU ,PK.TLO_TX,PK.LOG_NO,PK.NRO,PK.XCPL,PK.CEP,PK.BAI_NO,PK.LOC_NO,PK.CMUN,ZFM_CMUN,ZFM_CENQ,PK.UF,PK.CPAIS,PK.XPAIS,PK.D_LOG,');
        SQL.Add('PK.ENT_LOG_NU,PK.ENT_TLO_TX,PK.ENT_LOG_NO,PK.ENT_NRO,PK.ENT_XCPL,PK.ENT_CEP,PK.ENT_BAI_NO,PK.ENT_LOC_NO,PK.ENT_CMUN,PK.ENT_UF,');
        SQL.Add('PK.INFADCAD,PK.INFADFIN');

        SQL.Add('FROM ' + ARECPedido.VWCD + ' AS PK');
        SQL.Add('LEFT JOIN CAD_CLI_CRD AS FK ON (FK.IDCD = PK.IDCD AND FK.IDEP = '''+IFThen(ARECPedido.CDCD = 0,RECParametros.EP_ID,'99')+''')');

        SQL.Add('WHERE ' + ARECPedido.FIELD + ' ' + IFThen(Pos('ID',ARECPedido.FIELD) > 0,'=','CONTAINING')+' '''+ARECPedido.VALUE+'''');
        SQL.Add('ORDER BY PK.DECD,PK.REST');
        
        Open;
        Last;

        if Current.Vars[0].AsInteger = 0 then
           if ARECPedido.AWinControl.ClassType = TdxDBGridMaskColumn then oException(Nil,ARECPedido.AException) else
              if ARECPedido.AWinControl.Showing then oException(ARECPedido.AWinControl  ,ARECPedido.AException) else
                                                     oErro     (Application.Handle      ,ARECPedido.AException);

        if RecNo = 1 then
        begin
          ARECPedido.Selected := True;

          { Destinatário }
          ARECPedido.IDCD := IntToStr(Current.ByName('IDCD').AsInteger);
          ARECPedido.DECD := StringReplace(oREPApostrofos(Current.ByName('DECD').AsString),Char(39),'',[rfReplaceAll]);
          ARECPedido.RZCD := StringReplace(oREPApostrofos(Current.ByName('RZCD').AsString),Char(39),'',[rfReplaceAll]);

          { Cadastro }
          ARECPedido.CONTATO := Current.ByName('CONTATO').AsString;
          ARECPedido.DDD     := Current.ByName('DDD'    ).AsString;
          ARECPedido.TEL     := Current.ByName('TEL'    ).AsString;
          ARECPedido.D_FONE  := Current.ByName('D_FONE' ).AsString;

          ARECPedido.EMAIL    :=  Current.ByName('EMAIL'   ).AsString;
          ARECPedido.ENVEMAIL := (Current.ByName('ENVEMAIL').AsInteger = 1);

          ARECPedido.CNPJ          := Current.ByName('CNPJ'         ).AsString;
          ARECPedido.IE            := Current.ByName('IE'           ).AsString;
          ARECPedido.ISUF          := Current.ByName('ISUF'         ).AsString;
          ARECPedido.IM            := Current.ByName('IM'           ).AsString;
          ARECPedido.CPF           := Current.ByName('CPF'          ).AsString;
          ARECPedido.IDESTRANGEIRO := Current.ByName('IDESTRANGEIRO').AsString;

          { Endereço Comercial }
          ARECPedido.LOG_NU   :=  Current.ByName('LOG_NU'  ).AsString;
          ARECPedido.TLO_TX   :=  Current.ByName('TLO_TX'  ).AsString;
          ARECPedido.LOG_NO   :=  Current.ByName('LOG_NO'  ).AsString;
          ARECPedido.NRO      :=  Current.ByName('NRO'     ).AsString;
          ARECPedido.XCPL     :=  Current.ByName('XCPL'    ).AsString;
          ARECPedido.CEP      :=  Current.ByName('CEP'     ).AsString;
          ARECPedido.BAI_NO   :=  Current.ByName('BAI_NO'  ).AsString;
          ARECPedido.LOC_NO   :=  Current.ByName('LOC_NO'  ).AsString;
          ARECPedido.CMUN     :=  Current.ByName('CMUN'    ).AsString;
          ARECPedido.ZFM_CMUN := (Current.ByName('ZFM_CMUN').AsInteger > 0);
          ARECPedido.ZFM_CENQ :=  Current.ByName('ZFM_CENQ').AsString;
          ARECPedido.UF       :=  Current.ByName('UF'      ).AsString;

          { Zona Franca }
          if oEmpty(ARECPedido.ISUF) then
             ARECPedido.ZFM_CMUN := False;

          if not ARECPedido.ZFM_CMUN then
             ARECPedido.ZFM_CENQ := EmptyStr;

          ARECPedido.CPAIS := IntToStr(Current.ByName('CPAIS').AsInteger);
          ARECPedido.XPAIS :=          Current.ByName('XPAIS').AsString;

          { Endereço Entrega }
          ARECPedido.ENT_LOG_NU :=  Current.ByName('ENT_LOG_NU').AsString;
          ARECPedido.ENT_TLO_TX :=  Current.ByName('ENT_TLO_TX').AsString;
          ARECPedido.ENT_LOG_NO :=  Current.ByName('ENT_LOG_NO').AsString;
          ARECPedido.ENT_NRO    :=  Current.ByName('ENT_NRO'   ).AsString;
          ARECPedido.ENT_XCPL   :=  Current.ByName('ENT_XCPL'  ).AsString;
          ARECPedido.ENT_CEP    :=  Current.ByName('ENT_CEP'   ).AsString;
          ARECPedido.ENT_BAI_NO :=  Current.ByName('ENT_BAI_NO').AsString;
          ARECPedido.ENT_LOC_NO :=  Current.ByName('ENT_LOC_NO').AsString;
          ARECPedido.ENT_CMUN   :=  Current.ByName('ENT_CMUN'  ).AsString;
          ARECPedido.ENT_UF     :=  Current.ByName('ENT_UF'    ).AsString;

          { Vendedor / Representante }
          ARECPedido.IDCV := Current.ByName('IDCV').AsString;
          ARECPedido.DECV := Current.ByName('DECV').AsString;
          ARECPedido.IDCR := Current.ByName('IDCR').AsString;
          ARECPedido.DECR := Current.ByName('DECR').AsString;

          { Transportadora / Frete }
          ARECPedido.IDCT := Current.ByName('IDCT').AsString;
          ARECPedido.DECT := Current.ByName('DECT').AsString;
          ARECPedido.MFRT := Current.ByName('MFRT').AsString;

          { Financeiro }
          ARECPedido.FIN_IDEP :=  Current.ByName('FIN_IDEP').AsString;
          ARECPedido.FIN_VCRD :=  Current.ByName('FIN_VCRD').AsFloat;
          ARECPedido.FIN_CSPD := (Current.ByName('FIN_CSPD').AsInteger = 1);

          { Desconto Geral }
          ARECPedido.FIN_PDSC        := Current.ByName('FIN_PDSC').AsFloat;
          ARECPedido.FIN_VDSC        := Current.ByName('FIN_VDSC').AsFloat;
          ARECPedido.FIN_INFADCAD_L1 := Current.ByName('FIN_INFADCAD_L1').AsString;
          ARECPedido.FIN_INFADCAD_L2 := Current.ByName('FIN_INFADCAD_L2').AsString;

          { Desconto Especial }
          ARECPedido.FIN_PDSC_001        := Current.ByName('FIN_PDSC_001').AsFloat;
          ARECPedido.FIN_VDSC_INI_001    := Current.ByName('FIN_VDSC_INI_001').AsFloat;
          ARECPedido.FIN_VDSC_FIM_001    := Current.ByName('FIN_VDSC_FIM_001').AsFloat;
          ARECPedido.FIN_INFADCAD_L1_001 := Current.ByName('FIN_INFADCAD_L1_001').AsString;
          ARECPedido.FIN_INFADCAD_L2_001 := Current.ByName('FIN_INFADCAD_L2_001').AsString;

          ARECPedido.FIN_PDSC_002        := Current.ByName('FIN_PDSC_002').AsFloat;
          ARECPedido.FIN_VDSC_INI_002    := Current.ByName('FIN_VDSC_INI_002').AsFloat;
          ARECPedido.FIN_VDSC_FIM_002    := Current.ByName('FIN_VDSC_FIM_002').AsFloat;
          ARECPedido.FIN_INFADCAD_L1_002 := Current.ByName('FIN_INFADCAD_L1_002').AsString;
          ARECPedido.FIN_INFADCAD_L2_002 := Current.ByName('FIN_INFADCAD_L2_002').AsString;

          ARECPedido.FIN_PDSC_003        := Current.ByName('FIN_PDSC_003').AsFloat;
          ARECPedido.FIN_VDSC_INI_003    := Current.ByName('FIN_VDSC_INI_003').AsFloat;
          ARECPedido.FIN_VDSC_FIM_003    := Current.ByName('FIN_VDSC_FIM_003').AsFloat;
          ARECPedido.FIN_INFADCAD_L1_003 := Current.ByName('FIN_INFADCAD_L1_003').AsString;
          ARECPedido.FIN_INFADCAD_L2_003 := Current.ByName('FIN_INFADCAD_L2_003').AsString;

          { Prazos }
          ARECPedido.CDPG := IntToStr(Current.ByName('CDPG').AsInteger); { Código }
          ARECPedido.DEPG := Current.ByName('DEPG').AsString;            { Descrição }

          { Fiscal }
          ARECPedido.FIS_INDIEDEST  := Current.ByName('FIS_INDIEDEST').AsString;
          ARECPedido.FIS_INDFINAL   := Current.ByName('FIS_INDFINAL' ).AsString;
          ARECPedido.FIS_CRT        := Current.ByName('FIS_CRT'      ).AsString;
          ARECPedido.FIS_CREDICMS   := Current.ByName('FIS_CREDICMS' ).AsString;

          { Status }
          ARECPedido.RSCD := Current.ByName('REST').AsString;

          { Informações Adicionais }
          ARECPedido.INFADCAD := Current.ByName('INFADCAD').AsString;
          ARECPedido.INFADCPL := Current.ByName('INFADFIN').AsString;
        end else
        if RecNo > 1 then
           try
 //            TFrmPSQCAD._ExecForm(Nil,FrmPSQCAD,false,fsStayOnTop,-3,'Consulta',ARECPedido.CDCD,ARECPedido.FIELD+' '+IFThen(Pos('ID',ARECPedido.FIELD) > 0,'=','CONTAINING')+' '''+ARECPedido.VALUE+'''');
              FrmPSQCAD.REC_SHE_DEF.FTop  := ARECPedido.APoint.Y + ARECPedido.AWinControl.Height;
              FrmPSQCAD.REC_SHE_DEF.FLeft := ARECPedido.APoint.X;
              FrmPSQCAD.Consulta.SQL.Clear;
              FrmPSQCAD.Consulta.SQL.Assign(ARECPedido.AQConsulta.SQL);
              FrmPSQCAD.ShowModal;
           finally
             if FrmPSQCAD.REC_SHE_DEF.Selected then
             begin
               ARECPedido.AWinControl := Nil;
               ARECPedido.Value := IntToStr(FrmPSQCAD.ConsultaIDCD.AsInteger);
               ARECPedido.Field := 'PK.IDCD';

               uPSQCAD(ARECPedido);
             end;
           end;
      end;

  if ARECPedido.AWinControl <> Nil then
  begin
    if not ARECPedido.Selected then
    begin
      if ARECPedido.AWinControl.ClassType = TdxEdit then
         TdxEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxMaskEdit then
         TdxMaskEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxCurrencyEdit then
         TdxCurrencyEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxButtonEdit then
         TdxButtonEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxMemo then
         TdxMemo(ARECPedido.AWinControl).Reset;

      if (ARECPedido.AWinControl.Showing) and (ARECPedido.AWinControl.Enabled) then
          TWinControl(ARECPedido.AWinControl).SetFocus;
    end;

    ARECPedido.AWinControl := Nil;
  end;

  if ARECPedido.AQConsulta <> Nil then
  begin
    ARECPedido.AQConsulta.Close;
    ARECPedido.AQConsulta := Nil;
  end;
end;

procedure uPSQPED(var ARECPedido: TRECPedidos); STDCall;
begin
  if ARECPedido.AWinControl <> Nil then
     if ARECPedido.AWinControl.ClassType = TdxEdit then
     begin
       ARECPedido.Value := TdxEdit(ARECPedido.AWinControl).Text;
       ARECPedido.Field := TdxEdit(ARECPedido.AWinControl).HelpKeyword;
     end else
     if ARECPedido.AWinControl.ClassType = TdxMaskEdit then
     begin
       ARECPedido.Value := TdxMaskEdit(ARECPedido.AWinControl).Text;
       ARECPedido.Field := TdxMaskEdit(ARECPedido.AWinControl).HelpKeyword;
     end else
     if ARECPedido.AWinControl.ClassType = TdxCurrencyEdit then
     begin
       ARECPedido.Value := TdxCurrencyEdit(ARECPedido.AWinControl).Text;
       ARECPedido.Field := TdxCurrencyEdit(ARECPedido.AWinControl).HelpKeyword;
     end else
     if ARECPedido.AWinControl.ClassType = TdxButtonEdit then
     begin
       ARECPedido.Value := TdxButtonEdit(ARECPedido.AWinControl).Text;
       ARECPedido.Field := TdxButtonEdit(ARECPedido.AWinControl).HelpKeyword;
     end else
     if ARECPedido.AWinControl.ClassType = TdxImageEdit then
     begin
       ARECPedido.Value := TdxImageEdit(ARECPedido.AWinControl).Text;
       ARECPedido.Field := TdxImageEdit(ARECPedido.AWinControl).HelpKeyword;
     end else
     if ARECPedido.AWinControl.ClassType = TdxDBGridMaskColumn then
     begin
       ARECPedido.Value := TdxDBGridMaskColumn(ARECPedido.AWinControl).Field.AsString;
       ARECPedido.Field := TdxDBGridMaskColumn(ARECPedido.AWinControl).FieldName;
     end;

  { DEU RUIM! }
  ARECPedido.Selected := False;

  if (ARECPedido.VALUE <> EmptyStr) and (ARECPedido.FIELD <> EmptyStr) then
      with ARECPedido.ASQLConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.* FROM VW_TAB_TPO AS PK');
        SQL.Add('WHERE '+ARECPedido.FIELD+' '+IFThen(Pos('ID',ARECPedido.FIELD) > 0,'=','CONTAINING')+' '''+ARECPedido.VALUE+'''');
        SQL.Add('AND    PK.REST = ''A''');
        ExecQuery;

        if Eof then
           if ARECPedido.AWinControl.ClassType = TdxDBGridMaskColumn then
              oException(Nil,'Cadastro não Encontrado !') else
              if ARECPedido.AWinControl.Showing then
                 oException(ARECPedido.AWinControl,'Cadastro não Encontrado !') else
                 Abort;

        { Tipo }
        ARECPedido.PED_CDPD :=  IntToStr(Current.ByName('ID').AsInteger); { Código }
        ARECPedido.STPD :=  Current.ByName('DESCRICAO').AsString;     { Descrição }
        ARECPedido.FAPD := (Current.ByName('FAPD').AsInteger = 1);    { Faturar }
        ARECPedido.SVPD := (Current.ByName('SVPD').AsInteger = 1);    { Serviço }
        ARECPedido.BQPD := (Current.ByName('BQPD').AsInteger = 1);    { Bloqueável }

        { Status }
        ARECPedido.PK_CDST := IntToStr(Current.ByName('PED_CDST').AsInteger); { Código }
        ARECPedido.PK_REST := Current.ByName('PED_REST').AsString;            { Referência }
        ARECPedido.PK_DEST := Current.ByName('PED_DEST').AsString;            { Descrição }

        ARECPedido.PKPD :=  Current.ByName('PKPD').AsString;       { Pesquisa Padrão }
        ARECPedido.VPRC_PAD_TAB :=  Current.ByName('VPRC_PAD_TAB').AsString; { Preço Padrão }
        ARECPedido.TIPD := (Current.ByName('TIPD').AsInteger = 1); { Soma IPI no Total }
        ARECPedido.TGPD := (Current.ByName('TGPD').AsInteger = 1); { Tingimento }

        { Descontos }
        ARECPedido.PDPD := (Current.ByName('PDPD').AsInteger = 1); { Permite }
        ARECPedido.MDPD :=  Current.ByName('MDPD').AsInteger; { % Máximo }

        { Estoque }
        ARECPedido.BXEK := (Current.ByName('BXEK').AsInteger = 1); { Baixar }
        ARECPedido.SPEK := (Current.ByName('SPEK').AsInteger = 1); { Separar }
        ARECPedido.RLEK := (Current.ByName('RLEK').AsString  = 'PC'); { Peças / Rolos }

        { Tipo de Estoque }
        ARECPedido.CDEK :=  IntToStr(Current.ByName('CDEK').AsInteger); { Código }
        ARECPedido.REEK :=  Current.ByName('REEK').AsString;            { Referência }
        ARECPedido.DEEK :=  Current.ByName('DEEK').AsString;            { Descrição }

        { Cobrança }
        ARECPedido.CDCO :=  IntToStr(Current.ByName('CDCO').AsInteger); { Código }
        ARECPedido.STCO :=  Current.ByName('STCO').AsString;            { Descrição }

        { Prazos }
        ARECPedido.CDPG :=  IntToStr(Current.ByName('CDPG').AsInteger); { Código }
        ARECPedido.DEPG :=  Current.ByName('DEPG').AsString;            { Descrição }
        ARECPedido.BXPG := (Current.ByName('BXPG').AsInteger = 1);      { Baixa Automática }

        { CFOP }
        ARECPedido.CFOP := Current.ByName(IFThen((ARECPedido.UF = EmptyStr) or (ARECPEdido.UF = RECParametros.LOG_UF),'CFOPDUF','CFOFDUF')).AsString;

        { DEU BOM! }
        ARECPedido.Selected := True;
      end;

  if ARECPedido.AWinControl <> Nil then
  begin
    if not ARECPedido.Selected then
    begin
      if ARECPedido.AWinControl.ClassType = TdxEdit then
         TdxEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxMaskEdit then
         TdxMaskEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxCurrencyEdit then
         TdxCurrencyEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxButtonEdit then
         TdxButtonEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxImageEdit then
         TdxImageEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxMemo then
         TdxMemo(ARECPedido.AWinControl).Reset;

      if (ARECPedido.AWinControl.Showing) and (ARECPedido.AWinControl.Enabled) then
          TWinControl(ARECPedido.AWinControl).SetFocus;
    end;
    ARECPedido.AWinControl := Nil;
  end;

  if ARECPedido.ASQLConsulta <> Nil then
  begin
    ARECPedido.ASQLConsulta.Close;
    ARECPedido.ASQLConsulta := Nil;
  end;
end;

procedure uPSQPRO(var ARECProduto: TRECProdutos); STDCall;
begin
  if ARECProduto.AWinControl <> Nil then
     if ARECProduto.AWinControl.ClassType = TdxEdit then
     begin
       ARECProduto.Value := TdxEdit(ARECProduto.AWinControl).Text;
       ARECProduto.Field := TdxEdit(ARECProduto.AWinControl).HelpKeyword;
     end else
     if ARECProduto.AWinControl.ClassType = TdxMaskEdit then
     begin
       ARECProduto.Value := TdxMaskEdit(ARECProduto.AWinControl).Text;
       ARECProduto.Field := TdxMaskEdit(ARECProduto.AWinControl).HelpKeyword;
     end else
     if ARECProduto.AWinControl.ClassType = TdxCurrencyEdit then
     begin
       ARECProduto.Value := TdxCurrencyEdit(ARECProduto.AWinControl).Text;
       ARECProduto.Field := TdxCurrencyEdit(ARECProduto.AWinControl).HelpKeyword;
     end else
     if ARECProduto.AWinControl.ClassType = TdxButtonEdit then
     begin
       ARECProduto.Value := TdxButtonEdit(ARECProduto.AWinControl).Text;
       ARECProduto.Field := TdxButtonEdit(ARECProduto.AWinControl).HelpKeyword;
     end else
     if ARECProduto.AWinControl.ClassType = TdxDBGridMaskColumn then
     begin
       ARECProduto.Value := TdxDBGridMaskColumn(ARECProduto.AWinControl).Field.AsString;
       ARECProduto.Field := TdxDBGridMaskColumn(ARECProduto.AWinControl).FieldName;
     end;

  if (ARECProduto.VALUE <> EmptyStr) and (ARECProduto.FIELD <> EmptyStr) then
      with ARECProduto.AQConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.ID    ,PK.IDEP ,PK.DEEP,');
        SQL.Add('       PK.CDST  ,PK.REST ,PK.DEST,');
        SQL.Add('       PK.ARTIGO,PK.NCM  ,PK.PIPI,PK.EXTIPI,PK.CEST,');
        SQL.Add('       PK.SKU   ,PK.CEAN ,');
        SQL.Add('       PK.DECP  ,PK.DGCP ,');
        SQL.Add('       PK.UCOM  ,PK.UTRIB,PK.UCON,PK.UQTDE,PK.UQTRL,PK.UPSBR,PK.UPSLQ,');
        SQL.Add('       PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,');

        { Tipo de Tabela de Preço }
        SQL.Add(IFThen(ARECProduto.RPPD = 'ATACAREJO'       ,'PK.VPRC_ATV',
                IFThen(ARECProduto.RPPD = 'COMPRAS'         ,'PK.VPRC_COM_PAD',
                IFThen(ARECProduto.RPPD = 'LOJA VIRTUAL'    ,'PK.VPRC_LJV',
                IFThen(ARECProduto.RPPD = 'REPRESENTANTE'   ,'PK.VPRC_REP',
                IFThen(ARECProduto.RPPD = 'VAREJO'          ,'PK.VPRC_VAR',
                                                             'PK.VPRC_PAD')))))+' AS VPRC_PAD,');
        { Tipo de Estoque }
        SQL.Add('COALESCE(E.' + IFThen(ARECProduto.FIPD = 'VENDAS','EPE_QTDE','EEP_QTDE') + ',0) AS EST_QTDE,');
        SQL.Add('COALESCE(E.' + IFThen(ARECProduto.FIPD = 'VENDAS','EPE_QTRL','EEP_QTRL') + ',0) AS EST_QTRL,');

        { Imagem do Produto }
        SQL.Add('PK.IMG_ID  ,PK.IMG_PAD ,');

        { Instruções de Lavagem }
        SQL.Add('PK.ILA_BMP1,PK.ILA_INS1,PK.ILA_BMP2,PK.ILA_INS2,PK.ILA_BMP3,PK.ILA_INS3,PK.ILA_BMP4,PK.ILA_INS4,');
        SQL.Add('PK.ILA_BMP5,PK.ILA_INS5,PK.ILA_BMP6,PK.ILA_INS6,PK.ILA_BMP7,PK.ILA_INS7,PK.ILA_BMP8,PK.ILA_INS8,' );

        SQL.Add('PK.CMP_PAD,PK.INFADCAD');

        SQL.Add('FROM VW_CAD_PRO AS PK');
        SQL.Add('JOIN SP_CAD_PRO_EST_PSQ(:IDEP,PK.IDEK) AS E ON (1 = 1)');

        SQL.Add('WHERE '+ARECProduto.FIELD+' '+IFThen(Pos('ID',ARECProduto.FIELD) > 0,'=','CONTAINING')+' '''+ARECProduto.VALUE+'''');
        Open;
        Last;

        if RecNo = 0 then
           if ARECProduto.AWinControl.ClassType = TdxDBGridMaskColumn then
              oException(Nil,'Cadastro não Encontrado !') else
              if ARECProduto.AWinControl.Showing then
                 oException(ARECProduto.AWinControl,'Cadastro não Encontrado !') else
                 Abort;

        if RecNo = 1 then
           with ARECProduto.AQConsulta do
           begin
             if ARECProduto.AEdicao.State = dsBrowse then
                ARECProduto.AEdicao.Append;

             ARECProduto.AEdicao.FieldByName('IDCP').Value := FieldByName('ID').Value;

             ARECProduto.AEdicao.FieldByName('IDEP').Value := FieldByName('IDEP').Value;
             ARECProduto.AEdicao.FieldByName('DEEP').Value := FieldByName('DEEP').Value;

             ARECProduto.AEdicao.FieldByName('CDST').Value := FieldByName('CDST').Value;
             ARECProduto.AEdicao.FieldByName('REST').Value := FieldByName('REST').Value;
             ARECProduto.AEdicao.FieldByName('DEST').Value := FieldByName('DEST').Value;

             ARECProduto.AEdicao.FieldByName('ARTIGO').Value := FieldByName('ARTIGO').Value;
             ARECProduto.AEdicao.FieldByName('NCM').Value    := FieldByName('NCM'   ).Value;
             ARECProduto.AEdicao.FieldByName('PIPI').Value   := FieldByName('PIPI'  ).Value;

             ARECProduto.AEdicao.FieldByName('SKU').Value  := FieldByName('SKU' ).Value;
             ARECProduto.AEdicao.FieldByName('CEAN').Value := FieldByName('CEAN').Value;

             ARECProduto.AEdicao.FieldByName('DECP').Value := FieldByName('DECP').Value;
             ARECProduto.AEdicao.FieldByName('DGCP').Value := FieldByName('DGCP').Value;

             ARECProduto.AEdicao.FieldByName('CMP_PAD').Value := FieldByName('CMP_PAD').Value;

             ARECProduto.AEdicao.FieldByName('UCOM').Value  := FieldByName('UCOM' ).Value;
             ARECProduto.AEdicao.FieldByName('UCON').Value  := FieldByName('UCON' ).Value;

             ARECProduto.AEdicao.FieldByName('UQTDE').Value := FieldByName('UQTDE').Value;
             ARECProduto.AEdicao.FieldByName('UQTRL').Value := FieldByName('UQTRL').Value;
             ARECProduto.AEdicao.FieldByName('UPSBR').Value := FieldByName('UPSBR').Value;
             ARECProduto.AEdicao.FieldByName('UPSLQ').Value := FieldByName('UPSLQ').Value;

             ARECProduto.AEdicao.FieldByName('EST_QTDE').Value := FieldByName('EST_QTDE').Value;
             ARECProduto.AEdicao.FieldByName('EST_QTRL').Value := FieldByName('EST_QTRL').Value;

             ARECProduto.AEdicao.FieldByName('VPRC_PAD_INI').Value := FieldByName('VPRC_PAD_INI').Value;
             ARECProduto.AEdicao.FieldByName('VPRC_PAD_FIM').Value := FieldByName('VPRC_PAD_FIM').Value;

             ARECProduto.AEdicao.FieldByName('VPRC_PAD').Value := FieldByName('VPRC_PAD').Value;
             ARECProduto.AEdicao.FieldByName('VPRC_COM').Value := FieldByName('VPRC_PAD').Value;

             ARECProduto.AEdicao.FieldByName('IMG_ID').Value  := FieldByName('IMG_ID' ).Value;
             ARECProduto.AEdicao.FieldByName('IMG_PAD').Value := FieldByName('IMG_PAD').Value;

             ARECProduto.AEdicao.FieldByName('ILA_BMP1').Value := FieldByName('ILA_BMP1').Value;
             ARECProduto.AEdicao.FieldByName('ILA_INS1').Value := FieldByName('ILA_INS1').Value;
             ARECProduto.AEdicao.FieldByName('ILA_BMP2').Value := FieldByName('ILA_BMP2').Value;
             ARECProduto.AEdicao.FieldByName('ILA_INS2').Value := FieldByName('ILA_INS2').Value;
             ARECProduto.AEdicao.FieldByName('ILA_BMP3').Value := FieldByName('ILA_BMP3').Value;
             ARECProduto.AEdicao.FieldByName('ILA_INS3').Value := FieldByName('ILA_INS3').Value;
             ARECProduto.AEdicao.FieldByName('ILA_BMP4').Value := FieldByName('ILA_BMP4').Value;
             ARECProduto.AEdicao.FieldByName('ILA_INS4').Value := FieldByName('ILA_INS4').Value;
             ARECProduto.AEdicao.FieldByName('ILA_BMP5').Value := FieldByName('ILA_BMP5').Value;
             ARECProduto.AEdicao.FieldByName('ILA_INS5').Value := FieldByName('ILA_INS5').Value;
             ARECProduto.AEdicao.FieldByName('ILA_BMP6').Value := FieldByName('ILA_BMP6').Value;
             ARECProduto.AEdicao.FieldByName('ILA_INS6').Value := FieldByName('ILA_INS6').Value;
             ARECProduto.AEdicao.FieldByName('ILA_BMP7').Value := FieldByName('ILA_BMP7').Value;
             ARECProduto.AEdicao.FieldByName('ILA_INS7').Value := FieldByName('ILA_INS7').Value;
             ARECProduto.AEdicao.FieldByName('ILA_BMP8').Value := FieldByName('ILA_BMP8').Value;
             ARECProduto.AEdicao.FieldByName('ILA_INS8').Value := FieldByName('ILA_INS8').Value;

             ARECProduto.AEdicao.FieldByName('INFADCAD').Value := FieldByName('INFADCAD').Value;
           end else
{           try
             TFrmPesquisaPRO._ExecForm(Nil,FrmPesquisaPRO,false,fsStayOnTop,-3,ARECProduto.FIPD+ARECProduto.RPPD,ARECProduto.IDEV);
             FrmPesquisaPRO.Consulta.SQL.Clear;
             FrmPesquisaPRO.Consulta.SQL.Assign(ARECProduto.AQConsulta.SQL);
             FrmPesquisaPRO.ShowModal;
           finally
             if FrmPesquisaPRO.REC_SHE_DEF.Selected then
             begin
               ARECProduto.AWinControl := Nil;
               ARECProduto.Value := IntToStr(FrmPesquisaPRO.ConsultaID.AsInteger);
               ARECProduto.Field := 'ID';

               uPSQPRO(ARECProduto);
             end;
           end;}
      end;
      
  if ARECProduto.AWinControl <> Nil then
  begin
    if not ARECProduto.Selected then
    begin
      if ARECProduto.AWinControl.ClassType = TdxEdit then
         TdxEdit(ARECProduto.AWinControl).Reset else
      if ARECProduto.AWinControl.ClassType = TdxMaskEdit then
         TdxMaskEdit(ARECProduto.AWinControl).Reset else
      if ARECProduto.AWinControl.ClassType = TdxCurrencyEdit then
         TdxCurrencyEdit(ARECProduto.AWinControl).Reset else
      if ARECProduto.AWinControl.ClassType = TdxButtonEdit then
         TdxButtonEdit(ARECProduto.AWinControl).Reset else
      if ARECProduto.AWinControl.ClassType = TdxMemo then
         TdxMemo(ARECProduto.AWinControl).Reset;

      if (ARECProduto.AWinControl.Showing) and (ARECProduto.AWinControl.Enabled) then
          TWinControl(ARECProduto.AWinControl).SetFocus;
    end;
    ARECProduto.AWinControl := Nil;
  end;

  if ARECProduto.AQConsulta <> Nil then
  begin
    ARECProduto.AQConsulta.Close;
    ARECProduto.AQConsulta := Nil;
  end;
end;

procedure uPSQPD(var ARECEdicao: TRECEdicao); STDCall;
begin
  if ARECEdicao.AWinControl <> Nil then
     if ARECEdicao.AWinControl.ClassType = TdxEdit then
     begin
       ARECEdicao.AValue := TdxEdit(ARECEdicao.AWinControl).Text;
       ARECEdicao.AField := TdxEdit(ARECEdicao.AWinControl).HelpKeyword;
     end else
     if ARECEdicao.AWinControl.ClassType = TdxMaskEdit then
     begin
       ARECEdicao.AValue := TdxMaskEdit(ARECEdicao.AWinControl).Text;
       ARECEdicao.AField := TdxMaskEdit(ARECEdicao.AWinControl).HelpKeyword;
     end else
     if ARECEdicao.AWinControl.ClassType = TdxCurrencyEdit then
     begin
       ARECEdicao.AValue := TdxCurrencyEdit(ARECEdicao.AWinControl).Text;
       ARECEdicao.AField := TdxCurrencyEdit(ARECEdicao.AWinControl).HelpKeyword;
     end else
     if ARECEdicao.AWinControl.ClassType = TdxButtonEdit then
     begin
       ARECEdicao.AValue := TdxButtonEdit(ARECEdicao.AWinControl).Text;
       ARECEdicao.AField := TdxButtonEdit(ARECEdicao.AWinControl).HelpKeyword;
     end else
     if ARECEdicao.AWinControl.ClassType = TdxImageEdit then
     begin
       ARECEdicao.AValue := TdxImageEdit(ARECEdicao.AWinControl).Text;
       ARECEdicao.AField := TdxImageEdit(ARECEdicao.AWinControl).HelpKeyword;
     end else
     if ARECEdicao.AWinControl.ClassType = TdxPickEdit then
     begin
       ARECEdicao.AValue := TdxPickEdit(ARECEdicao.AWinControl).Text;
       ARECEdicao.AField := TdxPickEdit(ARECEdicao.AWinControl).HelpKeyword;
     end else
     if ARECEdicao.AWinControl.ClassType = TdxDBGridMaskColumn then
     begin
       ARECEdicao.AValue := TdxDBGridMaskColumn(ARECEdicao.AWinControl).Field.AsString;
       ARECEdicao.AField := TdxDBGridMaskColumn(ARECEdicao.AWinControl).FieldName;
     end;

  { DEU RUIM! }
  ARECEdicao.Selected := False;

  if (ARECEdicao.AValue = '0') or (ARECEdicao.AValue = EmptyStr) then
  begin
    ARECEdicao.IDPK := '0';
    ARECEdicao.DTPK :=  0 ;
    ARECEdicao.CDPK := '0';
    ARECEdicao.DEFK := EmptyStr;

    ARECEdicao.IDCD := '0';
    ARECEdicao.DECD := EmptyStr;
    ARECEdicao.IDCV := '0';
    ARECEdicao.DECV := EmptyStr;
    ARECEdicao.IDCC := '0';
    ARECEdicao.DECC := EmptyStr;
    ARECEdicao.IDCR := '0';
    ARECEdicao.DECR := EmptyStr;

    ARECEdicao.Selected := True;
  end else
  if   ARECEdicao.AFIELD <> EmptyStr then
  with ARECEdicao.AQConsulta do
  begin
    Close;
    SQL.Clear;

    SQL.Add('SELECT PK.ID  ,PK.IDEP,EP.FANTASIA AS DEEP,');
    SQL.Add('       PK.IDCA,PK.DTCA,PK.CDST,PK.REST,PK.DEST,');
    SQL.Add('       PK.IDPK,CAST(PK.DTCA AS DATE) AS DTPK,LG_PK.LOGIN AS LGPK,PK.CDPK,PK.DEPK,');
    SQL.Add('       PK.IDCD,CD.FANTASIA  AS DECD,PK.IDCR ,CR.REP_FANT AS DECR');
    SQL.Add('FROM ' + oREPZero(ARECEdicao.TBPK,'_',RECParametros.EP_ID,3) + ' AS PK');

    if ARECEdicao.TPPK = 1 then { Compras }
    SQL.Add('JOIN  CAD_FOR     AS CD    ON (CD.ID    = PK.IDCD)');
    SQL.Add('JOIN  TAB_PAR_SIS AS EP    ON (EP.ID    = PK.IDEP)');
    SQL.Add('JOIN  CAD_REP     AS CR    ON (CR.ID    = PK.IDCR)');
    SQL.Add('JOIN  TAB_USER    AS LG_PK ON (LG_PK.ID = PK.IDPK)');

    SQL.Add('WHERE PK.IDEP = ''' + ARECEdicao.IDEP + '''');
    SQL.Add('AND ' + ARECEdicao.AField + ' = ''' + ARECEdicao.AValue + '''');
    Open;

    if Eof then
       oException(ARECEdicao.AWinControl,'Pedido não Encontrado !');

    ARECEdicao.IDPK := FieldByName('IDPK').AsString;
    ARECEdicao.DTPK := FieldByName('DTPK').AsDateTime;
    ARECEdicao.CDPK := FieldByName('CDPK').AsString;
    ARECEdicao.DEPK := FieldByName('DEPK').AsString;

    ARECEdicao.IDCD := FieldByName('IDCD').AsString;
    ARECEdicao.DECD := FieldByName('DECD').AsString;

    ARECEdicao.Selected := True;
  end;
end;

procedure uPSQNF (var ARECPSQNF : TRECEdicao;ASQLConsulta: TIBSQL;AWinControl: TWinControl); STDCall;
var
  lPoint: TPoint;
begin
  ARECPSQNF.Selected := False;
  lPoint := AWinControl.ClientToScreen(Point(0,0));

  if (ARECPSQNF.AValue = '0') or (ARECPSQNF.AValue = EmptyStr) then
  begin
    ARECPSQNF.ID   := '0';
    ARECPSQNF.IDCV := '0';
    ARECPSQNF.DECV := '0';
    ARECPSQNF.CDNF := '0';
    ARECPSQNF.DTNF := 0;
    ARECPSQNF.IDCD := '0';
    ARECPSQNF.DECD := EmptyStr;

    ARECPSQNF.Selected := True;
  end;

  if (ARECPSQNF.AValue <> '0') and (ARECPSQNF.AValue <> EmptyStr) and (ARECPSQNF.AFIELD <> EmptyStr) then
  begin
    oOTransact(ASQLConsulta.Transaction);
    with ASQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM SP_NFE_CAB_PSQ (');
      SQL.Add(''''+ARECPSQNF.IDEP    +''',');
      SQL.Add(''''+ARECPSQNF.AValue  +''',');
      SQL.Add(''''+ARECPSQNF.FKAValue+''')');
      ExecQuery;

      if Eof then
         oException(AWinControl,'Nota Fiscal não Encontrada !');

      if oLast(ASQLConsulta) = 1 then
      begin
        ARECPSQNF.ID   := IntToStr(ASQLConsulta.Current.ByName('rID').AsInteger);

        ARECPSQNF.IDCD := IntToStr(ASQLConsulta.Current.ByName('rIDFV').AsInteger);
        ARECPSQNF.DECD := ASQLConsulta.Current.ByName('rDEFV').AsString;

        ARECPSQNF.IDCV := IntToStr(ASQLConsulta.Current.ByName('rIDCV').AsInteger);
        ARECPSQNF.DECV := ASQLConsulta.Current.ByName('rDECV').AsString;

        ARECPSQNF.IDCR := IntToStr(ASQLConsulta.Current.ByName('rIDCR').AsInteger);
        ARECPSQNF.DECR := ASQLConsulta.Current.ByName('rDECR').AsString;

        ARECPSQNF.CDNF := IntToStr(ASQLConsulta.Current.ByName('rCDNF').AsInteger);
        ARECPSQNF.DTNF := ASQLConsulta.Current.ByName('rDTNF').AsDateTime;

        ARECPSQNF.Selected := True;
      end;
    end;
  end;
end;

procedure uFKPesquisa(ATabela: String;AValue: Variant); STDCall;
begin
  ATabela := UpperCase(ATabela);
  if ((not oEmpty(ATabela)) and (not oEmpty(AValue)) and (AValue <> '0')) then
  with FrmPrincipal,FBird do
  try
    oOTransact(TFBConsulta);
    with SQLFBConsulta do
    begin
      Close;
      SQL.Clear;

      if (ATabela = 'TAB_CAT') or (ATabela = 'TAB_SCT') then
         SQL.Add('SELECT PRO_CPRO,PRO_DPRO FROM CAD_PRO WHERE IDSCT = '''+AValue+'''');

      Prepare;
      ExecQuery;

      if not Eof then
         oException(Nil,'Acesso Negado !'+#13+
                        'Sub Categoria registrada no cadastro de produtos.'+#13+#13+
                         Current.Vars[0].AsString+#13+
                         Current.Vars[1].AsString);

    end
  finally
    oCTransact(TFBConsulta);
  end;
end;

procedure uRepaintMainForm(AForm: TForm); STDCall;
var
  BPNLPrincipal,BPNLUtil: Boolean;
  PNLPrincipal ,PNLUtil : TPanel;
  i: Word;
begin
  if (Application.MainForm <> Nil) and (AForm <> Nil) then
      with Application.MainForm do
      begin
        AForm.HelpKeyword := '4';

        PNLPrincipal := FindComponent('PNLPrincipal') as TPanel;
        PNLUtil      := FindComponent('PNLUtil')      as TPanel;

        if (PNLPrincipal <> Nil) and (PNLUtil <> Nil) then
            if (not PNLPrincipal.Visible) or (not PNLUtil.Visible) then
            begin
              BPNLPrincipal := True;
              BPNLUtil      := True;

              if MDIChildCount > 0 then
                 for I := MDIChildCount-1 downto 0 do
                     if MDIChildren[I].Name <> AForm.Name then
                        if MDIChildren[I].HelpKeyword = '1' then
                           BPNLUtil := False
                        else
                           if MDIChildren[I].HelpKeyword = '2' then
                              BPNLPrincipal := False
                           else
                              if MDIChildren[I].HelpKeyword = '3' then
                              begin
                                BPNLPrincipal := False;
                                BPNLUtil      := False;
                              end;

              PNLPrincipal.Visible := BPNLPrincipal;
              PNLPrincipal.Refresh;

              PNLUtil.Visible := BPNLUtil;
              PNLUtil.Refresh;
            end;
      end;
end;

procedure uDisabledMainForm; STDCall;
var
  PNLPrincipal,
  PNLUtil: TPanel;
begin
  if   Application.MainForm <> Nil then
  with Application.MainForm do
  begin
    PNLPrincipal := FindComponent('PNLPrincipal') as TPanel;
    PNLUtil      := FindComponent('PNLUtil')      as TPanel;

    if (PNLPrincipal <> Nil) and (PNLUtil <> Nil) then
    begin
      PNLPrincipal.Visible := False;
      PNLPrincipal.Refresh;

      PNLUtil.Visible := False;
      PNLUtil.Refresh;

      Repaint;
    end;
  end;
end;

procedure uFrmCreate(AOwner: TComponent;AFClass: TFormClass; var AInstance); STDCall;
begin
  with FrmPrincipal do
       if Assigned(TForm(AInstance)) then
       begin
         TForm(AInstance).WindowState := wsNormal;
         TForm(AInstance).BringToFront;
         TForm(AInstance).SetFocus;
       end else
       begin
         TForm(AInstance) := AFClass.Create(AOwner);
         if TForm(AInstance).FormStyle = fsNormal then
            try
              TForm(AInstance).BorderIcons := [];
              TForm(AInstance).Visible     := False;
              TForm(AInstance).ShowModal;
            finally
              FreeAndNil(TForm(AInstance));
            end;
       end;
end;

procedure uPSQCMUN(var RECEndereco: TRECPedidos); STDCall;
begin
  with FrmPesquisaCodigoMunicipal do
  try
//    TFrmPesquisaCodigoMunicipal._ExecForm(Nil,FrmPesquisaCodigoMunicipal,fsNormal,RECEndereco.CMUN,-1,RECEndereco.UF);
  finally
    if REC_SHE_DEF.Selected then
       RECEndereco.CMUN := REC_SHE_DEF.FB_TB_PK;
  end;
end;

procedure uPSQLogradouros(var ARECEndereco: TRECEnderecos); STDCall;
begin
  ARECEndereco.Selected         := False;
  ARECEndereco.Id               := 0;
  ARECEndereco.Tipo             := EmptyStr;
  ARECEndereco.Logradouro       := EmptyStr;
  ARECEndereco.Logradouro_Abrev := EmptyStr;
  ARECEndereco.Complemento      := EmptyStr;
  ARECEndereco.Cep              := EmptyStr;
  ARECEndereco.Bairro           := EmptyStr;
  ARECEndereco.Bairro_Abrev     := EmptyStr;
  ARECEndereco.Cidade           := EmptyStr;
  ARECEndereco.Cidade_Abrev     := EmptyStr;
  ARECEndereco.CMUN             := EmptyStr;
  ARECEndereco.UF               := EmptyStr;
  ARECEndereco.UF_NO            := EmptyStr;
  ARECEndereco.Value            := EmptyStr;
  ARECEndereco.Field            := EmptyStr;

  with FrmPesquisaLogradouros do
  try
    TFrmPesquisaLogradouros._ExecForm(Nil,FrmPesquisaLogradouros,false,fsNormal);
  finally
    if REC_SHE_DEF.Selected then
       with FrmPesquisaLogradouros do
       begin
         ARECEndereco.Selected         := True;
         ARECEndereco.Id               := CadastroId.AsInteger;
         ARECEndereco.Tipo             := CadastroTipo.AsString;
         ARECEndereco.Logradouro       := CadastroLogradouro.AsString;
         ARECEndereco.Logradouro_Abrev := CadastroLogradouro_Abrev.AsString;
         ARECEndereco.Complemento      := CadastroComplemento.AsString;
         ARECEndereco.Cep              := CadastroCep.AsString;
         ARECEndereco.Bairro           := CadastroBairro.AsString;
         ARECEndereco.Bairro_Abrev     := CadastroBairro_Abrev.AsString;
         ARECEndereco.Cidade           := CadastroCidade.AsString;
         ARECEndereco.Cidade_Abrev     := CadastroCidade_Abrev.AsString;
         ARECEndereco.CMUN             := CadastroCMUN.AsString;
         ARECEndereco.UF               := CadastroUF.AsString;
       end;
  end;
end;

procedure uPesquisa(var RECPrincipal: TRECPrincipal); STDCall;
begin
  FrmPesquisa := TFrmPesquisa.Create(Nil,RECPrincipal);
  FrmPesquisa.ShowModal;
  try
    RECPrincipal.Selected := FrmPesquisa.RECPesquisa.Selected;
    if RECPrincipal.Selected then
       RECPrincipal := FrmPesquisa.RECPesquisa;
  finally
    FreeAndNil(FrmPesquisa);
  end;
end;

function uLoadZoom(Imagem: TPicture; aProduto: Array of String): LongInt; STDCall;
begin
  result := 0;
  if (Imagem <> Nil) and (not oEmpty(aProduto[0])) then
  try
    FrmProduto_Imagem := TFrmProduto_Imagem.Create(Nil,Imagem,aProduto);
    FrmProduto_Imagem.ShowModal;
  finally
    FreeAndNil(FrmProduto_Imagem);
  end;
end;

function uPesquisa_Produto(AIDEP: Integer = 0;ADTXT: String = '';AFTXT: String = 'ARTIGO';AWHERE: String = '=';ALIKE1: String = '';ALIKE2: String = '';ADDT1: TDate = 0;ADDT2: TDate = 0;AFDT: String = ''): Integer; STDCall;
begin
  { ATipo
    0 - Apenas Atacado
    1 - Atacado
    2 - Atacarejo
    3 - Compras
  }
  with FrmPrincipal,FBird do
  try
    with FBCAD_PRO do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM SP_CAD_PRO_PSQ');
      SQL.Add('(');

      SQL.Add(''''+IntToStr(AIDEP)+''',');
      SQL.Add(''''+ADTXT +''',');
      SQL.Add(''''+AFTXT +''',');
      SQL.Add('NULL,');
      SQL.Add('NULL,');
      SQL.Add(''''+AWHERE+''',');
      SQL.Add(''''+ALIKE1+''',');
      SQL.Add(''''+ALIKE2+''',');
      SQL.Add(''''+AFDT  +''',');
      SQL.Add(''''+FormatDateTime('mm/dd/yy',ADDT1)+''',');
      SQL.Add(''''+FormatDateTime('mm/dd/yy',ADDT2)+''',');
      SQL.Add('''ARTIGO,DGCP''');
      SQL.Add(')');
      Open;
    end;
  finally
    result := 0;
    if FBCAD_PRO.State = dsBrowse then
    begin
      FBCAD_PRO.Last;
      result := FBCAD_PROId.AsInteger;
      if FBCAD_PRO.RecNo > 1 then
      try
        FrmProduto_Pesquisa := TFrmProduto_Pesquisa.Create(Nil);
        FrmProduto_Pesquisa.DBGConsulta.FocusedAbsoluteIndex := IFThen((Pos('NCM',AFTXT) > 0) or (oEmpty(FBCAD_PRODGCP.AsString)),FrmProduto_Pesquisa.DBGConsultaDECP.Index,FrmProduto_Pesquisa.DBGConsultaDGCP.Index);
        FrmProduto_Pesquisa.ShowModal;
      finally
        result := IFThen(FrmProduto_Pesquisa.Editado,FBCAD_PROId.AsInteger,0);
        FreeAndNil(FrmProduto_Pesquisa);
      end;
    end;
  end;
end;

procedure uBxCaixa(AIDPedido: Integer); STDCAll;
begin
end;

procedure uBX_DUP(AEmpresa,ANotaFiscal,AIDRomaneio: Variant); STDCall;
begin
  if ((oEmpty(ANotaFiscal)) or (oEmpty(AIDRomaneio))) then
     Exit;

  with FBird,FrmPrincipal do
  try
    oOTransact(TFBConsulta);
    with SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
    end;
  finally
    oCTransact(TFBConsulta);
  end;
  { Ricardo - Use TRecord + Ponteiros para capturar as informações }
end;

procedure uBXPedidos(AaIDPedido: array of Integer; ABSheildEdicao: Boolean = False); STDCall;
begin
end;

procedure uPSQSCORE(ATForm: TForm; AIDPK: Variant; ADEPK: String); STDCall;
begin
  if Assigned(frmcad_cli_inf) then
  begin
    frmcad_cli_inf._Pedidos(AIDPK,ADEPK);
    frmcad_cli_inf.BringToFront;
    frmcad_cli_inf.SetFocus;
  end else
  begin
    { ricardo frmcad_cli_inf := Tfrmcad_cli_inf.Create(Nil,AIDPK,ADEPK); }
    frmcad_cli_inf.Show;
  end;
end;

function uPSQCadastroFiscal(ATexto: String): TRECCadastros; STDCall;
begin
  FrmConsultaCNPJ := TFrmConsultaCNPJ.Create(Nil,ATexto);
  try FrmConsultaCNPJ.ShowModal
  finally
    Result := FrmConsultaCNPJ.RECCadastros;
    FreeAndNil(FrmConsultaCNPJ);
  end;
end;

function uRETDTVencimento(AData: TDate): TDate; STDCall;
begin
  if AData <= 0 then
     AData := RECParametros.DTServer;

 { with FrmPrincipal,FBird do
  try
    oRTransact(TFBCadastro);
    with FBTAB_FER do
         repeat
           Close;
           Params[0].Value := FormatDateTime('dd/mm',AData);
           Prepare;
           Open;
           if not Eof then
              AData := IncDay(AData,1);

           if DayOfWeek(AData) = 1 then // domingo
              AData := IncDay(AData,1) else
           if DayOfWeek(AData) = 7 then // sábado
              AData := IncDay(AData,2);
         until Eof;
  finally
    oCTransact(TFBCadastro);
  end; }

  result := AData;
end;

function uPSQNotaFiscal(ACDNF: Variant;Mostrar: Boolean = True): Boolean; STDCall;
var
  i: Word;
begin
  result := True;
  if ACDNF = 0 then
  begin
    oErro(Application.Handle,'Número não informado ou incorreto !');
    result := False;
    Abort;
  end;  

  try
    oOTransact(Fbird.TFBConsulta);
    with FBird.SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
      for i := 1 to 9 do
      begin
        SQL.Add('SELECT NFE_CDNF,NFE_DEMI,NFE_DFAV,NFE_DTRA,NFE_DVEN,NFE_DREP');
        SQL.Add('FROM   TAB_PAR_SIS AS EP,'+oREPZero('nfe_cab','_',i,3)+ ' "NFE_CAB"');
        SQL.Add('WHERE  EP.ID     = '''+IntToStr(i)+'''');
        SQL.Add('AND    EP.CNPJ   = '''+RECParametros.CNPJ+'''');
        SQL.Add('AND    NFE_CAB.NFE_CDNF   = '''+ACDNF             +'''');
        SQL.Add('AND    NFE_CAB.NFE_FINNFE < 5');
        SQL.Add('AND    CHAR_LENGTH(NFE_CAB.NFE_CHAV) = 44');
        if i < 9 then
        SQL.Add('UNION');
      end;
      ExecQuery;

      if Current.Vars[0].AsInteger > 0 then
      begin
        result := False;
        if Mostrar then
           oErro(Application.Handle,'Número de Nota Fiscal já Emitida !'+#13+#13+
                                    'Favorecido: '         +Current.Vars[2].AsString+IFThen((Current.Vars[4].AsString <> '') and (Current.Vars[5].AsString <> ''),#13+
                                    'Vendedores: '         +Current.Vars[4].AsString+' / ' + Current.Vars[5].AsString,'')+#13+#13+
                                    'Emitido em: '         +FormatDateTime('dd/mm/yy hh:mm', Current.Vars[1].AsDateTime )+#13+
                                    'Frete por conta de: ' +Current.Vars[3].AsString);
      end;
    end;  
  finally
    oCTransact(FBird.TFBConsulta);
  end;
end;

function uFIN_BLQ(ASTCobranca,ASTFatura,AIDCliente: String): String;
begin
  result := EmptyStr;
  if (RECParametros.FIN_LIMITE_CARTEIRA > 0) and (ASTCobranca <> 'SEM COBRANÇA') and (ASTFatura = '1') and (AIDCliente <> RECParametros.CD_ID) then
  try
    oOTransact(FBird.TFBConsulta);
    with FBird.SQLFBConsulta do
    begin
      { Carteira Logada }
      Close;
      SQL.Clear;
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM ' + oREPZero('VW_FIN_REC_CAR','_',RECParametros.EP_ID,3) + ' AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');

      { Bancários }
      SQL.Add('UNION');
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');
      SQL.Add('UNION');
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_002 AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');
      SQL.Add('UNION');
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_003 AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');
      SQL.Add('UNION');
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_004 AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');
      SQL.Add('UNION');
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_005 AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');
      SQL.Add('UNION');
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_006 AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');
      SQL.Add('UNION');
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_007 AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');
      SQL.Add('UNION');
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_008 AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');
      SQL.Add('UNION');
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_009 AS PK');
      SQL.Add('WHERE    PK.IDCD    = :IDCD');
      SQL.Add('AND      PK.FIN_BLQ = 1');
      SQL.Add('GROUP BY 1');

      ParamByName('IDCD').Value := AIDCliente;
      Prepare;
      ExecQuery;

      result := Trim(Current.Vars[0].AsString);
    end;
  finally
    oCTransact(FBird.TFBConsulta);
  end;
end;

function uLimiteVenda(ASTCobranca,ASTFatura,AIDCliente: String;ATotal: Double): string; STDCall;
var
  AVCRD: Double;
begin
  result := '';

  if (RECParametros.FIN_LIMITE_CREDITO) and (ASTCobranca <> 'SEM COBRANÇA') and (ASTFatura = '1') then
  try
    oRTransact(FBird.TFBConsulta);
    with FBird.SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT VCRD FROM CAD_CLI_CRD');
      SQL.Add('WHERE  IDEP = ''' + RECParametros.EP_ID + '''');
      SQL.Add('AND    IDCD = ''' + AIDCLIENTE       + '''');
      ExecQuery;
      AVCRD := Current.Vars[0].AsCurrency;

      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(FIN_VPEN),COUNT(*) FROM '+SLPrincipal.Values['fin_rec_ban_bai']);
      SQL.Add('WHERE  FIN_CCLI = '''+AIDCliente+'''');
      SQL.Add('AND    FIN_STFI NOT CONTAINING ''CANCELADO''');
      SQL.Add('AND    FIN_STFI NOT CONTAINING ''BAIXADO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''PAGO%''');
      ExecQuery;
      VALOR_BANCARIO := Current.Vars[0].AsFloat;
      ITENS_BANCARIO := Current.Vars[1].AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(FIN_VPEN*IIF(FIN_CONC > 0,FIN_CONC,1)),COUNT(*) FROM '+SLPrincipal.Values['fin_rec_car_bai']);
      SQL.Add('WHERE  FIN_CCLI = '''+AIDCliente+'''');
      SQL.Add('AND    FIN_STFI NOT CONTAINING ''CANCELADO''');
      SQL.Add('AND    FIN_STFI NOT CONTAINING ''BAIXADO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''PAGO%''');
      ExecQuery;
      VALOR_CARTEIRA := Current.Vars[0].AsFloat;
      ITENS_CARTEIRA := Current.Vars[1].AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(PK.TCDE),COUNT(*)');
      SQL.Add('FROM '+oREPZero('VW_PED_VEN_CAB','_',RECParametros.EP_ID,3)+' AS PK');
      SQL.Add('WHERE  PK.IDEP = '''+RECParametros.EP_ID+'''');
      SQL.Add('AND    PK.IDCD = '''+AIDCliente      +'''');
      SQL.Add('AND    PK.FAPD = 1'); // Tipo   Faturamento
      SQL.Add('AND    PK.BQPD = 1'); // Tipo   Bloqueável Financeiramente
      SQL.Add('AND    PK.APST = 1'); // Status Pendente
      SQL.Add('AND    PK.CSCD = 0'); // Status Pendente
      ExecQuery;
      VALOR_PEDIDO := Current.Vars[0].AsFloat;
      ITENS_PEDIDO := Current.Vars[1].AsInteger;
    end;

    VALOR_SALDO := AVCRD - (VALOR_BANCARIO+VALOR_CARTEIRA);
    if VALOR_SALDO < 0 then
    VALOR_SALDO := 0;

    if ATotal > VALOR_SALDO then
    result := 'AGUARDANDO CRÉDITO';
  finally
    if not oEmpty(result) then
    with FBird.SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT COUNT(*)');
      SQL.Add('FROM   CAD_CLI');
      SQL.Add('WHERE  ID = '''+AIDCliente+'''');
      SQL.Add('AND    EXISTS (SELECT EP.ID FROM TAB_PAR_SIS AS EP WHERE EP.CNPJ = CLI_CNPJ)');
      ExecQuery;
      if Current.Vars[0].AsInteger > 0 then
         result := EmptyStr;
    end;
    oCTransact(FBird.TFBConsulta);
  end;
end;

procedure uLiberaFinanceiro; STDCall;
begin
end;

procedure TFrmPrincipal.TPrincipalTimer(Sender: TObject);
          function SecondsIdle: DWord;
          var
            liInfo: TLastInputInfo;
          begin
            liInfo.cbSize := SizeOf(TLastInputInfo);
            GetLastInputInfo(liInfo);

            Result := (GetTickCount - liinfo.dwTime) DIV 1000;
          end;
begin
  if FrmPrincipal <> Nil then
     with FrmPrincipal, FBird do
     begin
       RECParametros.SecondsIdle := SecondsIdle;

       SBRodape.Panels[2].Text := RECParametros.STCX;
       SBRodape.Panels[4].Text := Format('Tempo Ocioso: %d',[RECParametros.SecondsIdle]);

       if RECParametros.SecondsIdle > 0 then
       if RECParametros.SecondsIdle mod 180 = 0  then
       begin
         { MAIN DB }
         if not FBird.DBErp.TestConnected then
            try
              DBErp.CloseDataSets;
              DBErp.ForceClose;

              SleepEx(100,False);
              DBErp.Connected := True;
            except
              ;
            end;

         { VER CAIXA }
         if RECParametros.CDCX = 0 then
         bExecEvent('Caixa');
       end;

       { EXEC CAIXA }
       ACTAbertura.Enabled   := (((RECParametros.STCX = 'Caixa Fechado') or (RECParametros.STCX = 'Caixa não aberto')) and (RECUsuarios.Caixa));
       ACTReAbertura.Enabled := (ACTAbertura.Enabled);
       ACTFechamento.Enabled := ((not ACTAbertura.Enabled) and (RECUsuarios.Caixa));
     end;
end;

function ClientWindowProc(wnd: HWND; msg: Cardinal; wparam, lparam: Integer ): Integer; STDCall;
var
  Ponteiro: Pointer;
begin
  Ponteiro := Nil;
  Result   := 0;
  try
    Ponteiro := Pointer(GetWindowLong(wnd,GWL_USERDATA));
    case msg of
         WM_NCCALCSIZE: if (GetWindowLong(wnd,GWL_STYLE) and (WS_HSCROLL or WS_VSCROLL)) <> 0 then
                            SetWindowLong(wnd,GWL_STYLE,GetWindowLong(wnd,GWL_STYLE) and Not (WS_HSCROLL or WS_VSCROLL or WS_CAPTION));
    end;
    Result := CallWindowProc(Ponteiro,wnd,msg,wparam,lparam);
  except
    ;
  end;    
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  Randomize;

  if ClientHandle <> 0 then
  if not(GetWindowLong(ClientHandle, GWL_USERDATA) <> 0)  then
  SetWindowLong(ClientHandle, GWL_USERDATA, SetWindowLong(ClientHandle, GWL_WNDPROC, integer(@ClientWindowProc)));

  CurrencyString    := 'R$';
  ThousandSeparator := '.';
  DecimalSeparator  := ',';

  try TPrincipal.Enabled := False;

  _SetHintDefault;
  _Login(FrmLogin.RECLogin.ID,FrmLogin.RECLogin.IDEP,FrmLogin.RECLogin.DEEP);

  finally TPrincipal.Enabled := True;
  end;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if oEmpty(RECUsuarios.Id) then
  Close;
end;

procedure TFrmPrincipal.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if oEmpty(RECUsuarios.Id) then
  Exit;

  //_Aviso_Reserva;
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  var i: Word;
begin
  if oEmpty(RECUsuarios.Id) then
  Exit;

  try
    for i := MDIChildCount - 1 downto 0 do
        if   MDIChildren[i] <> Nil then
             MDIChildren[i].Free;
  except
    on E: Exception do
       oException(Nil,'Falha ao tentar fechar automaticamente as páginas do sistema !' +#13+
                      'Favor fechar manualmente.' +#13 +#13+
                       E.Message + '.');
  end;

  if oYesNo(Handle,'Sair do Sistema ?') = mrNo then
  Abort;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  FrmPrincipal := Nil;
end;

procedure TFrmPrincipal.FormPaint(Sender: TObject);
var
  WLargura: Word;
begin
  if Showing then
  begin
    WLargura := SBRodape.Panels[3].MinWidth;
    Case Length(SBRodape.Panels[3].Text) of
      25..30: WLargura := 185;
          31: WLargura := 190;
          32: WLargura := 195;
      33..40: WLargura := 210;
    end;
    SBRodape.Panels[3].Width := WLargura;

    { Painel Usuário }
    WLargura := SBRodape.Panels[1].MinWidth;
    Case Length(SBRodape.Panels[1].Text) of
      31..35: WLargura := 250;
      36..40: WLargura := 300;
      41..45: WLargura := 350;
      46..50: WLargura := 400;
      51..55: WLargura := 450;
      56..60: WLargura := 500;
      61..65: WLargura := 550;
      66..70: WLargura := 600;
    end;
    SBRodape.Panels[1].Width := WLargura;
    SBRodape.Panels[0].Width := SBRodape.Width - 20 - (SBRodape.Panels[1].Width+SBRodape.Panels[2].Width+SBRodape.Panels[3].Width+
                                                       SBRodape.Panels[4].Width+SBRodape.Panels[5].Width+SBRodape.Panels[6].Width);
       for WLargura := MDIChildCount - 1 downto 0 do
           if MDIChildren[WLargura] <> Nil then
              MDIChildren[WLargura].Repaint;
  end;
end;

procedure TFrmPrincipal.FormResize(Sender: TObject);
var
  XRect: TRect;
begin
  if FrmPrincipal <> Nil then
  begin
    GetWindowRect(Application.MainForm.ClientHandle,XRect);
    XRect.Top := IPrincipal.Top;

    Canvas.FillRect(XRect);
    Canvas.StretchDraw(xRect,IPrincipal.Picture.Graphic);

    Paint;
  end;
end;

procedure TFrmPrincipal._SetMouseLeave(var AMessage: TMessage);
begin
  inherited;
  AMessage.Result := 1;
end;

procedure TFrmPrincipal.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  APoint  : TPoint;
  AControl: TControl;
begin
  if _SetMouseTracking then
  begin
    GetCursorPos(APoint);
    AControl := FindDragTarget(APoint, True);  { Mouse.CursorPos }

    if (AControl = Nil) or (AControl <> Sender) then
        Perform(WM_MOUSELEAVE, 0, 0) else
        AControl.Hint := IFThen(Self.Hint <> EmptyStr,Self.Hint + 'SAIU',AControl.HelpKeyword);
  end;
end;

function TFrmPrincipal._SetMouseTracking: Boolean;
begin
  with ATrackMouseEvent do
  begin
    cbSize      := sizeof(ATrackMouseEvent);
    dwFlags     := TME_LEAVE;
    hwndTrack   := Self.Handle;
    dwHoverTime := HOVER_DEFAULT;
  end;

  result := TrackMouseEvent(ATrackMouseEvent);
end;

procedure TFrmPrincipal._SetHintDefault;
var
  AhintBK: String;
  AHintPI,
  AHelpPI: PPropInfo;
  i: Word;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i].ClassType = TPanel then
       tag := 0;

    AHelpPI := GetPropInfo(Components[i].ClassInfo,'HelpKeyword');
    AHintPI := GetPropInfo(Components[i].ClassInfo,'Hint');

    if (AHintPI <> Nil) and (AHelpPI <> Nil) then
    begin
       AHintBK := GetStrProp(Components[i] , AHintPI);
       SetStrProp(Components[i], AHelpPI   , AHintBK);
    end;
  end;
end;

procedure TFrmPrincipal._DoneEvent(Sender: TObject);
begin
  if   ATHR_ITEM > 1 then
  with Frmprincipal do
  begin
    PNLSyncEvent.Caption := EmptyStr;
    GFASyncEvent.Animate := False;

    PNLRodape.Height     := 25;
    PNLRodapeTOP.Height  := 0;

    Repaint;
  end;
end;

procedure TFrmPrincipal.ACTNFConsultaExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmNFeConsulta,FrmNFeConsulta);
end;

procedure TFrmPrincipal.ACTNFSaidasExecute(Sender: TObject);
begin
  if bPSQUSER('USU_NOVO','Nota Fiscal','Logística','Permissões Gerais',False) then
  begin
       TFrmNFeSaida._ExecForm(Nil,FrmNFeSaida);
  end else
  begin
    bPSQUSER('USU_VISU','Nota Fiscal','Logística','Permissões Gerais',true);
    TFrmNFeSaidaConsulta._ExecForm(Nil,FrmNFeSaidaConsulta);
  end
end;

procedure TFrmPrincipal.ACTCFEmissaoExecute(Sender: TObject);
var
  Numero: String;
begin
  if oEmpty(RECParametros.CFE_API_TOKEN) then
     oException(Nil,'Emissor de CFeSat não Disponível !');

  if Assigned(frmctr_ped) then
  Numero := frmctr_ped.cadastroDEPK.AsString else
  Numero := '0';

  FrmCFeSat := TFrmCFeSat.Create(Nil,Numero);
  try FrmCFeSat.ShowModal;
  finally FreeAndNil(FrmCFeSat);
  end;
end;

procedure TFrmPrincipal.ACTEEtiquetasExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmeti_pro,frmeti_pro);
end;

procedure TFrmPrincipal.ACTPEtiquetasExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmEtiqueta_Geral,FrmEtiqueta_Geral);
end;

procedure TFrmPrincipal.ACTPrintersExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmImpressoras,FrmImpressoras);
end;

procedure TFrmPrincipal.ACTExecPrinterExecute(Sender: TObject);
begin
  if oEmpty(ACTExecPrinter.Hint) then
            ACTExecPrinter.Hint := 'Relatórios';

  try
    oExecPrinter(Handle,ACTExecPrinter.Hint);
  finally
    ACTExecPrinter.Hint := EmptyStr;
  end;
end;

procedure TFrmPrincipal.ACTRelatoriosExecute(Sender: TObject);
begin
  FrmRelatorios := TFrmRelatorios.Create(Nil,TAction(Sender).Hint,TAction(Sender).Tag,TAction(Sender).HelpContext,TAction(Sender).HelpKeyword,TAction(Sender).HelpKeyword);
  Try FrmRelatorios.ShowModal;
  Finally FreeAndNil(FrmRelatorios);
  End;
end;

procedure TFrmPrincipal.ACTLoginExecute(Sender: TObject);
var
  i: integer;
begin
  for i := MDIChildCount - 1 downto 0 do
  if MDIChildren[i] <> Nil then
     MDIChildren[i].Close;

  FrmLogin := TFrmLogin.create(Nil);
  FrmLogin.Caption := 'Alternando usuário';
  try
    FrmLogin.ShowModal;
  finally
    if (FBird.DBErp.TestConnected) and (FrmLogin.RECLogin.Selected) then
       _Login(FrmLogin.RECLogin.ID,FrmLogin.RECLogin.IDEP,FrmLogin.RECLogin.DEEP) else
    begin
      RECUsuarios.Id := 0;
      Close;
    end;
    FreeAndNil(FrmLogin);
  end;
  _Aviso_Reserva;
end;

procedure TFrmPrincipal.ACTPasswordExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmSenha,FrmSenha);
end;

procedure TFrmPrincipal.ACTHELPExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmsobre,Frmsobre);
end;

procedure TFrmPrincipal.ACTSaidaExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.ACTEmConstrucaoExecute(Sender: TObject);
begin
  uConstrucao;
end;

procedure TFrmPrincipal.ACTClientesExecute(Sender: TObject);
begin
  TFrmcad_cli._ExecForm(Nil,frmcad_cli);
end;

procedure TFrmPrincipal.ACTRepresentantesExecute(Sender: TObject);
begin
  TFrmcad_rep._ExecForm(Nil,Frmcad_rep);
end;

procedure TFrmPrincipal.ACTTransportadorasExecute(Sender: TObject);
begin
  TFrmcad_tra._ExecForm(Nil,Frmcad_tra);
end;

procedure TFrmPrincipal.ACTFornecedoresExecute(Sender: TObject);
begin
  TFrmcad_for._ExecForm(Nil,Frmcad_for);
end;

procedure TFrmPrincipal.ACTICMS_STExecute(Sender: TObject);
begin
//  TFrmICMS_ST._ExecForm(Nil,FrmICMS_ST);
end;

procedure TFrmPrincipal.ACTSegmentosExecute(Sender: TObject);
begin
  TFrmSegmentos._ExecForm(Nil,FrmSegmentos);
end;

procedure TFrmPrincipal.ACTGradeExecute(Sender: TObject);
begin
  TFrmProduto_Cor._ExecForm(Nil,FrmProduto_Cor);
end;

procedure TFrmPrincipal.ACTGruposExecute(Sender: TObject);
begin
  TFrmProduto_Grupo._ExecForm(Nil,FrmProduto_Grupo);
end;

procedure TFrmPrincipal.ACTSubGruposExecute(Sender: TObject);
begin
  TFrmProduto_SubGrupo._ExecForm(Nil,FrmProduto_SubGrupo);
end;

procedure TFrmPrincipal.ACTCategoriasExecute(Sender: TObject);
begin
  TFrmProduto_Categoria._ExecForm(Nil,FrmProduto_Categoria);
end;

procedure TFrmPrincipal.ACTSubCategoriasExecute(Sender: TObject);
begin
  TFrmProduto_SubCategoria._ExecForm(Nil,FrmProduto_SubCategoria);
end;

procedure TFrmPrincipal.ACTDEstoqueExecute(Sender: TObject);
begin
  TFrmEstoqueDefeitos._ExecForm(Nil,FrmEstoqueDefeitos);
end;

procedure TFrmPrincipal.ACTPrazosExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmtab_pag,Frmtab_pag);
end;

procedure TFrmPrincipal.ACTEEstoqueExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrment_pro,Frment_pro);
end;

procedure TFrmPrincipal.ACTEstoqueExecute(Sender: TObject);
begin
  TFrmEstoque._ExecForm(Nil,FrmEstoque);
end;

procedure TFrmPrincipal.ACTMExpedicaoExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmEXP_SEP_MAN,FrmEXP_SEP_MAN);
end;

procedure TFrmPrincipal.ACTExpedicaoExecute(Sender: TObject);
begin
  TFrmEXP_SEP_COL._ExecForm(Nil,FrmEXP_SEP_COL);
end;

procedure TFrmPrincipal.ACTAberturaExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmcai_abr,Frmcai_abr);
end;

procedure TFrmPrincipal.ACTFechamentoExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmcai_fec,Frmcai_fec);
end;

procedure TFrmPrincipal.ACTTSangriaExecute(Sender: TObject);
begin
//  uFrmCreate(Nil,Tfrmcai_tsr,Frmcai_tsr);
end;

procedure TFrmPrincipal.ACTCaixaExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmcai_mov,frmcai_mov);
end;

procedure TFrmPrincipal.ACTComprasExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmctr_prc,Frmctr_prc);
end;

procedure TFrmPrincipal.ACTCustosImportadosExecute(Sender: TObject);
begin
  TFrmProduto_Custo_Importado._ExecForm(Nil,FrmProduto_Custo_Importado);
end;

procedure TFrmPrincipal.ACTProgramadosExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmctr_prg,Frmctr_prg);
end;

procedure TFrmPrincipal.ACTPedidosExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmctr_ped,Frmctr_ped);
end;

procedure TFrmPrincipal.ACTRomaneiosExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmctr_rom,Frmctr_rom);
end;

procedure TFrmPrincipal.ACTSangriaExecute(Sender: TObject);
begin
  Tfrmcai_sar._ExecForm(Nil,frmcai_sar);
end;

procedure TFrmPrincipal.ACTRECDuplicatasExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmfin_dup,Frmfin_dup);
end;

procedure TFrmPrincipal.ACTRECCarteiraExecute(Sender: TObject);
begin
  SLPrincipal.Values['fin_caption']  := 'Consultas de Recebimentos em Carteira';
  SLPrincipal.Values['fin_hint']     := 'CARTEIRA';
  SLPrincipal.Values['fin_baixa']    := SLPrincipal.Values['fin_rec_car_bai'];
  SLPrincipal.Values['fin_consulta'] := SLPrincipal.Values['fin_rec_ban_bai'];

  TFrmfin_rec_con._ExecForm(Nil,Frmfin_rec_con);
end;

procedure TFrmPrincipal.ACTRECBancarioExecute(Sender: TObject);
begin
  SLPrincipal.Values['fin_caption']  := 'Consultas de Recebimentos Bancários';
  SLPrincipal.Values['fin_hint']     := 'DUPLICATA';
  SLPrincipal.Values['fin_baixa']    := SLPrincipal.Values['fin_rec_ban_bai'];
  SLPrincipal.Values['fin_consulta'] := SLPrincipal.Values['fin_rec_car_bai'];

  TFrmfin_rec_con._ExecForm(Nil,Frmfin_rec_con);
end;

procedure TFrmPrincipal.ACTReAberturaExecute(Sender: TObject);
begin
  if oYesNo(handle,'Confirma re-abertura do caixa ?') = mrno then
     Abort;

  if RECParametros.STCX = 'Caixa Aberto' then
     oException(Nil,'Falha ao tentar re-abrir caixa.' + #13 +
                    'Caixa já está aberto !');

  if RECParametros.DTCX <> Date then
     oException(Nil,'Falha ao tentar re-abrir caixa.' + #13 +
                    'Não há registro de caixa para o dia de hoje !');

  try
    oOTransact(FBird.TFBEdicao);
    with FBird.SQLFBEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAI_LAF');
      SQL.Add('SET    CAI_DFEC = NULL,');
      SQL.Add('       CAI_HFEC = NULL' );
      SQL.Add('WHERE  ID = ''' + RECParametros.CDCX + '''');
      SQL.Add('AND    CAI_DABR = CURRENT_DATE');
      ExecQuery;
    end;
  finally
    oCTransact(FBird.TFBEdicao);
  end;

  oAviso(Handle,'Re-Abertura do caixa registrado com sucesso !');
  bExecEvent('Caixa');
end;

procedure TFrmPrincipal.ACTContainerExecute(Sender: TObject);
begin
  Tfrmcad_con._ExecForm(Nil,frmcad_con);
end;

procedure TFrmPrincipal.ACTProdutosExecute(Sender: TObject);
begin
  TFrmProduto._ExecForm(Nil,FrmProduto);
end;

procedure TFrmPrincipal.ACTPAGComissaoExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmpag_com,Frmpag_com);
end;

procedure TFrmPrincipal.ACTNFEmissaoExecute(Sender: TObject);
begin
  if Assigned(frmven_nfe) then frmven_nfe.BringToFront else
  begin
    frmven_nfe := tfrmven_nfe.create(Nil,'NORMAL');
    frmven_nfe.Show;
  end;
end;

procedure TFrmPrincipal.ACTNFAdminExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmctr_nfe,Frmctr_nfe);
end;

procedure TFrmPrincipal.ACTTNFEmissaoExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmven_nfd,frmven_nfd);
end;

procedure TFrmPrincipal.ACTCFOPExecute(Sender: TObject);
begin
  Tfrmtab_nat._ExecForm(Nil,Frmtab_nat);
end;

procedure TFrmPrincipal._Aviso_Reserva;
var
  nRecNo: Integer;
begin
  if RECUsuarios.Id = 0 then
     Exit;
     
  nRecNo := 0;
  if ((RECUsuarios.Grupo = 'VEN') or (RECUsuarios.Grupo = 'DIR') or (bPSQUSER('USU_AUTO','Vendas','Pedidos','Autorizar Outros Usuários',False))) then
  with FBird do
  try
    oOTransact(TFBConsulta);
    with SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(PK.ID) FROM VW_PED_VEN_AVR AS PK');
      SQL.Add('WHERE  PK.IDEP = '''+RECParametros.EP_ID+'''');

      if RECUsuarios.Grupo = 'VEN' then
         SQL.Add('AND PK.IDCV = '''+RECUsuarios.Id+'''');

      ExecQuery;
      nRecNo := Current.Vars[0].AsInteger;
    end;
  finally
    oCTransact(TFBConsulta);
  end;

  if nRecNo > 0 then
     TFrmAviso_Reserva._ExecForm(Nil,FrmAviso_Reserva);
end;

procedure TFrmPrincipal.MIComissaoClick(Sender: TObject);
          procedure OTMComissoes;
          var
            DtMedia: Integer;
            v1,v2,
            PrecoTabelaMais5,
            PrecoTabelaMenos5,
            ComissaoPedido,
            ComissaoItem: double;
          begin
            try
              oOTransact(FBird.TFBConsulta);
              { Abre os cabeçalhos das Vendas - PED_VEN_CAB }
              with FBird.SQLFBConsulta do
              begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT   PK.ID,ROM_STPD,REP_COMI,PAG_PARC,PAG_PRAZ,PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,');
                SQL.Add('         PAG_D010,PAG_D011,PAG_D012,PAG_D013,PAG_D014,PAG_D015,PAG_D016,PAG_D017,PAG_D018,PAG_D019,PAG_D020,PK.ROM_DBAI');
                SQL.Add('FROM     PED_VEN_CAB AS PK');
                SQL.Add('JOIN     CAD_REP     AS CR ON (CR.ID = PK.IDCR)');
                SQL.Add('JOIN     TAB_PAG     AS PG ON (PG.ID = PK.CDPG)');
                //SQL.Add('WHERE    CAST(PK.DTBX AS DATE) >= DATEADD(MONTH,-1,DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE))');
                SQL.Add('WHERE    CAST(PK.DTBX AS DATE) >= ''09/01/25''');
                SQL.Add('AND      PK.FAPD  = 1');
              //SQL.Add('AND      PK.DEPD = ''109506''');
                SQL.Add('ORDER BY PK.DTBX');
                ExecQuery;
              end;

              while not FBird.SQLFBConsulta.Eof do
              begin
                DtMedia := Trunc((FBird.SQLFBConsulta.Current.Vars[05].AsInteger+FBird.SQLFBConsulta.Current.Vars[06].AsInteger+FBird.SQLFBConsulta.Current.Vars[07].AsInteger+FBird.SQLFBConsulta.Current.Vars[08].AsInteger+FBird.SQLFBConsulta.Current.Vars[09].AsInteger+
                                  FBird.SQLFBConsulta.Current.Vars[10].AsInteger+FBird.SQLFBConsulta.Current.Vars[11].AsInteger+FBird.SQLFBConsulta.Current.Vars[12].AsInteger+FBird.SQLFBConsulta.Current.Vars[13].AsInteger+FBird.SQLFBConsulta.Current.Vars[14].AsInteger+
                                  FBird.SQLFBConsulta.Current.Vars[15].AsInteger+FBird.SQLFBConsulta.Current.Vars[16].AsInteger+FBird.SQLFBConsulta.Current.Vars[17].AsInteger+FBird.SQLFBConsulta.Current.Vars[18].AsInteger+FBird.SQLFBConsulta.Current.Vars[19].AsInteger+
                                  FBird.SQLFBConsulta.Current.Vars[20].AsInteger+FBird.SQLFBConsulta.Current.Vars[21].AsInteger+FBird.SQLFBConsulta.Current.Vars[22].AsInteger+FBird.SQLFBConsulta.Current.Vars[23].AsInteger+FBird.SQLFBConsulta.Current.Vars[24].AsInteger)/
                                  FBird.SQLFBConsulta.Current.Vars[03].AsInteger);

                { Abre os itens do cabeçalho - PED_VEN_ITE }
                with FBird.SQLFBFKConsulta do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Add('SELECT   PK.ITEM,PK.CP_ID,ROM_UNIT,PRO_PREC,PRO_PPRZ');
                  SQL.Add('FROM     PED_VEN_ITE AS PK');
                  SQL.Add('JOIN     CAD_PRO     AS CP ON (CP.ID = PK.CP_ID)');
                  SQL.Add('WHERE    PK.IDPK = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString+'''');
                  SQL.Add('ORDER BY PK.ITEM');
                  ExecQuery;
                end;

                while not FBird.SQLFBFKConsulta.Eof do
                begin
                  SBRodape.Panels[1].Text := 'OTMPed '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' de '+FormatDateTime('dd/mm/yy',FBird.SQLFBConsulta.Current.Vars[25].AsDateTime)+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                  SBRodape.Refresh;

                  { Subtraindo 5% do Preco de Tabela }
                  PrecoTabelaMenos5 := FBird.SQLFBFKConsulta.Current.Vars[3].AsFloat - ((FBird.SQLFBFKConsulta.Current.Vars[3].AsFloat*5)/100);

                  { Adicionando 5% do Preco de Tabela }
                  PrecoTabelaMais5  := FBird.SQLFBFKConsulta.Current.Vars[3].AsFloat + ((FBird.SQLFBFKConsulta.Current.Vars[3].AsFloat*5)/100);

                  { Iniciando ComissaoItem com o valor da comissao do Consulta de representantes }
                  ComissaoItem := FBird.SQLFBConsulta.Current.Vars[2].AsFloat;

                  { Descartar o cálculo para os representantes cadastrados com comissão default superior à 3%
                    Descartar Abatimentos Devoluções }
                  if (ComissaoItem = 3) and
                     (FBird.SQLFBConsulta.Current.Vars[1].AsString <> 'ABATIMENTO') and (FBird.SQLFBConsulta.Current.Vars[1].AsString <> 'DEVOLUÇÃO') then
                  begin
                    if ((FBird.SQLFBConsulta.Current.Vars[4].AsInteger <= 21) and (FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat >= PrecoTabelaMenos5))             or
                       ((DtMedia <= 75 )                              and (FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat  = FBird.SQLFBFKConsulta.Current.Vars[3].AsFloat)) or
                       ((DtMedia >  75 )                              and (FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat >= PrecoTabelaMais5 )) then
                    ComissaoItem := 4;
                  end;

                  try
                    oOTransact(FBird.TFBEdicao);
                    with FBird.SQLFBEdicao do
                    begin
                      Close;
                      SQL.Clear;
                      SQL.Add('UPDATE PED_VEN_ITE');
                      SQL.Add('SET    ROM_COMI = '''+OStrTran(FloatToStr(ComissaoItem),',','.')+'''');
                      SQL.Add('WHERE  IDPK = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString  +'''');
                      SQL.Add('AND    ITEM = '''+FBird.SQLFBFKConsulta.Current.Vars[0].AsString+'''');
                      SQL.Add('AND    IDCP = '''+FBird.SQLFBFKConsulta.Current.Vars[1].AsString+'''');
                      ExecQuery;
                    end;
                    FBird.TFBEdicao.Commit;
                  except
                    FBird.TFBEdicao.Rollback;

                    SBRodape.Panels[1].Text := 'OTMErro Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                    SBRodape.Refresh;
          
                    Abort;
                  end;
                  FBird.SQLFBFKConsulta.Next;
                end;
          
                { Utiliza a formula da média ponderada para calcular comissão total do pedido de venda
                  Ignora caso Algum item esteja sem comissao }

                with FBird.SQLFBPKConsulta do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Add('SELECT SUM(ROM_UNIT*ROM_COMI),SUM(ROM_UNIT)');
                  SQL.Add('FROM   PED_VEN_ITE');
                  SQL.Add('WHERE  IDPK = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString+'''');
                  SQL.Add('AND    ROM_COMI > 0');
                  ExecQuery;

                  v1 := Current.Vars[0].AsFloat;
                  v2 := Current.Vars[1].AsFloat;
                  ComissaoPedido := 0;
                  if (v1 > 0) and (v2 > 0) then
                  ComissaoPedido := RoundTO(v1/v2,-2);
                end;

                try
                  oOTransact(FBird.TFBEdicao);
                  with FBird.SQLFBEdicao do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add('UPDATE PED_VEN_CAB');
                    SQL.Add('SET    ROM_COMI = '''+OStrTran(FloatToStr(ComissaoPedido),',','.')+'''');
                    SQL.Add('WHERE        ID = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString+'''');
                    ExecQuery;
                  end;
                  FBird.TFBEdicao.Commit;
                except
                  FBird.TFBEdicao.Rollback;

                  SBRodape.Panels[1].Text := 'OTM Erro Cabec Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                  SBRodape.Refresh;

                  Abort;
                end;
                FBird.SQLFBConsulta.Next;
              end;
            finally
              oCTransact(FBird.TFBConsulta);

              SBRodape.Panels[1].Text := 'Otimotex Fim';
              SBRodape.Refresh;
            end;
          end;

          procedure LEBComissoes;
          var
            v1,v2,
            ComissaoPedido,ComissaoItem: double;
          begin
            try
              oOTransact(FBird.TFBConsulta);
              { Abre os cabeçalhos das Vendas - ROM_CAB }
              with FBird.SQLFBConsulta do
              begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT   PK.ID,PK.IDCR,ROM_COMI,ROM_TCDE,ROM_DNFS,ROM_STPD');
                SQL.Add('FROM     PED_VEN_CAB_004 AS PK');
                SQL.Add('JOIN     CAD_REP         AS CR ON (CR.ID = PK.IDCR)');
                SQL.Add('JOIN     TAB_PAG         AS PG ON (PG.ID = PK.CDPG)');
                //SQL.Add('WHERE    CAST(PK.DTBX AS DATE) >= DATEADD(MONTH,-1,DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE))');
                SQL.Add('WHERE    CAST(PK.DTBX AS DATE) >= ''09/01/25''');
                SQL.Add('AND      PK.FAPD  = 1');
              //SQL.Add('AND      PK.DEPD = ''99669''');
                SQL.Add('ORDER BY PK.DTBX');
                ExecQuery;
              end;

              while not FBird.SQLFBConsulta.Eof do
              begin
                if FBird.SQLFBConsulta.Current.Vars[5].AsString <> 'ABATIMENTO' then
                begin
                  { Abre os itens do cabeçalho - ROM_ITE }
                  with FBird.SQLFBFKConsulta do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add('SELECT   ITEM,IDCP,ROM_UNIT,ROM_COMI');
                    SQL.Add('FROM     PED_VEN_ITE_004');
                    SQL.Add('WHERE    IDPK = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString+'''');
                    SQL.Add('ORDER BY ITEM');
                    ExecQuery;
                  end;

                  ComissaoItem := 0;
                  while not FBird.SQLFBFKConsulta.Eof do
                  begin
                    SBRodape.Panels[2].Text := 'LEBPed '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' de '+FormatDateTime('dd/mm/yy',FBird.SQLFBConsulta.Current.Vars[4].AsDateTime)+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                    SBRodape.Refresh;

                    { Procura na tabela de categorias a faixa de preço correspondente }
                    with FBird.SQLFBPKConsulta do
                    begin
                      Close;
                      SQL.Clear;
                      SQL.Add('SELECT   CP.SKU,FK.SEQUENCIA,FK.VUPRC_INI,FK.VUPRC_FIM,FK.PUCOM_PAD');
                      SQL.Add('FROM     CAD_PRO     AS CP');
                      SQL.Add('JOIN     TAB_SCT     AS PK ON (PK.ID = CP.IDSCT)');
                      SQL.Add('JOIN     TAB_SCT_PRC AS FK ON (FK.ID = PK.ID)');
                      SQL.Add('WHERE    CP.ID = '''+FBird.SQLFBFKConsulta.Current.Vars[1].AsString+'''');
                      SQL.Add('ORDER BY FK.SEQUENCIA');
                      ExecQuery;
                    end;

                    { Começa pegando a comissão mais baixa na faixa de preços }
                    ComissaoItem := FBird.SQLFBPKConsulta.Current.Vars[4].AsFloat;
                    if (ComissaoItem = 0) then
                       Tag := 0;
                    while not FBird.SQLFBPKConsulta.Eof do
                    begin
                      { Atualiza a comissão mínima }
                      if FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat >= FBird.SQLFBPKConsulta.Current.Vars[2].AsFloat then
                      ComissaoItem := FBird.SQLFBPKConsulta.Current.Vars[4].AsFloat;

                      { Atualiza a comissão conforme a faixa de preço }
                      if (FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat >= FBird.SQLFBPKConsulta.Current.Vars[2].AsFloat) and
                         (FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat <= FBird.SQLFBPKConsulta.Current.Vars[3].AsFloat) then
                      begin
                        ComissaoItem := FBird.SQLFBPKConsulta.Current.Vars[4].AsFloat;
                        Break;
                      end;

                      FBird.SQLFBPKConsulta.Next;
                    end;

                    try
                      oOTransact(FBird.TFBEdicao);
                      with FBird.SQLFBEdicao do
                      begin
                        Close;
                        SQL.Clear;
                        SQL.Add('UPDATE PED_VEN_ITE_004');
                        SQL.Add('SET    ROM_COMI = '''+OStrTran(FloatToStr(ComissaoItem),',','.')+'''');
                        SQL.Add('WHERE  IDPK = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString  +'''');
                        SQL.Add('AND    ITEM = '''+FBird.SQLFBFKConsulta.Current.Vars[0].AsString+'''');
                        SQL.Add('AND    IDCP = '''+FBird.SQLFBFKConsulta.Current.Vars[1].AsString+'''');
                        ExecQuery;
                      end;
                      FBird.TFBEdicao.Commit;
                    except
                      FBird.TFBEdicao.Rollback;

                      SBRodape.Panels[2].Text := 'LEBErro Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                      SBRodape.Refresh;

                      Abort;
                    end;
                    FBird.SQLFBFKConsulta.Next;
                  end;

                  { Utiliza a formula da média ponderada para calcular comissão total do pedido de venda
                    Ignora caso Algum item esteja sem comissao }

                  if ComissaoItem > 0 then
                  with FBird.SQLFBPKConsulta do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add('SELECT SUM(ROM_UNIT*ROM_COMI),SUM(ROM_UNIT)');
                    SQL.Add('FROM   PED_VEN_ITE_004');
                    SQL.Add('WHERE  IDPK = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString+'''');
                    SQL.Add('AND    ROM_COMI > 0');
                    ExecQuery;

                    v1 := Current.Vars[0].AsFloat;
                    v2 := Current.Vars[1].AsFloat;
                    ComissaoPedido := RoundTO(v1/v2,-2);
                  end else
                  ComissaoPedido := 0;
                end else
                ComissaoPedido   := 4;

                try
                  oOTransact(FBird.TFBEdicao);
                  with FBird.SQLFBEdicao do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add('UPDATE PED_VEN_CAB_004');
                    SQL.Add('SET    ROM_COMI = '''+OStrTran(FloatToStr(ComissaoPedido),',','.')+'''');
                    SQL.Add('WHERE        ID = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString+'''');
                    ExecQuery;
                  end;
                  FBird.TFBEdicao.Commit;
                except
                  FBird.TFBEdicao.Rollback;

                  SBRodape.Panels[2].Text := 'LEBErro Cabec Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                  SBRodape.Refresh;

                  Abort;
                end;
                FBird.SQLFBConsulta.Next;
              end;
            finally
              oCTransact(FBird.TFBConsulta);

              SBRodape.Panels[2].Text := 'Lebianco Fim';
              SBRodape.Refresh;
            end;
          end;
begin
  OTMComissoes;
  LEBComissoes;
end;

procedure TFrmPrincipal.MIRelProdutosProgClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(Self);
  try
    frmrelatorio_geral.CDPD                   := '0';
    frmrelatorio_geral.CDRO                   := '0';
    frmrelatorio_geral.CDBX                   := '0';
    frmrelatorio_geral.CDNF                   := '0';
    frmrelatorio_geral.tsVEN_PRG.TabVisible   := true;
    frmrelatorio_geral.cbVEN_PRG_TREL.Text    := 'PROGRAMAÇÕES DE VENDAS DE PRODUTOS - GERAL';
    frmrelatorio_geral.cbVEN_PRG_TREL.Enabled := False;
    frmrelatorio_geral.pcMAIN.ActivePage      := frmrelatorio_geral.tsVEN_PRG;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
  end;
end;

procedure TFrmPrincipal._Login(AIDUSER: Variant; AIDEP,ADEEP: String);
          procedure _RSBAction(AAction: TAction; ARxSpeedButton: TRxSpeedButton; ARxSpeedCaption: String = '');
          begin
            ARxSpeedButton.Glyph   := Nil;
            ARxSpeedButton.Action  := Nil;

            AAction.ImageIndex := AAction.Tag + IFThen(AAction.Enabled,0,1);

            ARxSpeedButton.Action  := AAction;
            ARxSpeedButton.Enabled := True;
            ARxSpeedButton.Cursor  := IFThen(AAction.Enabled,crHandPoint,crNo);
            ARxSpeedButton.Caption := IFThen(ARxSpeedCaption = EmptyStr ,ARXSpeedButton.Caption,ARxSpeedCaption);
          end;
var
  i: word;
begin
  if oEmpty(AIDUSER) then
  Exit;

  try
    with FBird do
    try
      oOTransact(TFBEdicao);
      with SQLFBEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE TAB_USER');
        SQL.Add('SET    IDEP_UEP = ''' + AIDEP + ''',');
        SQL.Add('       IDEP_UDT = CURRENT_TIMESTAMP,');

        SQL.Add('       IP   = ''' + RECParametros.IP   + ''',');
        SQL.Add('       HOST = ''' + RECParametros.HOST + '''' );
        SQL.Add('WHERE  ID   = ''' + AIDUSER + '''');
        ExecQuery;
      end;
      oCTransact(TFBEdicao);

      bExecParametros(AIDEP);
      bExecUsuarios(AIDUSER);
      bExecCaixa;
      oExecPrinter(Application.Handle,'Relatórios');
    except
      { nothing }
    end;

    { MENU LATERAL }
    LALegenda.Caption := 'Principais Categorias';
    LALegenda.Refresh;

    PNLFinanceiro.Visible := (Pos(RECUsuarios.Grupo,'FINRECPAG') > 0);
    PNLPCP.Visible        := (Pos(RECUsuarios.Grupo,'PCPEXP'   ) > 0);
    PNLPEdidos.Visible    := (Pos(RECUsuarios.Grupo,'PCPEXPFIN') = 0);

    { ACESSOS }
    { Cadastros }
    ACTClientes.Enabled        := bPSQUSER('USU_VISU','Clientes'       ,'Cadastro','Permissões Gerais',False);
    ACTRepresentantes.Enabled  := bPSQUSER('USU_VISU','Representantes' ,'Cadastro','Permissões Gerais',False);
    ACTFornecedores.Enabled    := bPSQUSER('USU_VISU','Fornecedores'   ,'Cadastro','Permissões Gerais',False);
    ACTTransportadoras.Enabled := bPSQUSER('USU_VISU','Transportadoras','Cadastro','Permissões Gerais',False);

    ACTProdutos.Enabled := bPSQUSER('USU_VISU','Produtos','Cadastro','Permissões Gerais',False);

    ACTEstoque.Enabled  := bPSQUSER('USU_VISU','Produtos','Estoque' ,'Controle de Lançamentos',False);
    ACTEEstoque.Enabled := bPSQUSER('USU_NOVO','Produtos','Estoque' ,'Lançamentos'            ,False);
    ACTDEstoque.Enabled := bPSQUSER('USU_VISU','Produtos','Estoque' ,'Qualidade'              ,False);

    ACTExpedicao.Enabled  := bPSQUSER('USU_AUTO','Vendas','Pedidos','Separar' ,False);
    ACTMExpedicao.Enabled := ACTExpedicao.Enabled;

    ACTContainer.Enabled := bPSQUSER('USU_VISU','Tabelas','Containers','Permissões Gerais',False);

    { Tabelas }
    ACTCFOP.Enabled    := bPSQUSER('USU_VISU','Tabelas','Naturezas de Operações' ,'Permissões Gerais',False);
    ACTICMS_ST.Enabled := False;

    ACTPrazos.Enabled := bPSQUSER('USU_VISU','Tabelas','Condições de Pagamentos','Permissões Gerais',False);
    ACTGrade.Enabled  := bPSQUSER('USU_VISU','Tabelas','Cores'                  ,'Permissões Gerais',False);

    ACTSegmentos.Enabled     := bPSQUSER('USU_VISU','Tabelas','Segmentos'     ,'Permissões Gerais',False);
    ACTColecao.Enabled       := bPSQUSER('USU_VISU','Tabelas','Coleções'      ,'Permissões Gerais',False);
    ACTGrupos.Enabled        := bPSQUSER('USU_VISU','Tabelas','Grupos'        ,'Permissões Gerais',False);
    ACTSubGrupos.Enabled     := bPSQUSER('USU_VISU','Tabelas','Sub Grupos'    ,'Permissões Gerais',False);
    ACTCategorias.Enabled    := bPSQUSER('USU_VISU','Tabelas','Categorias'    ,'Permissões Gerais',False);
    ACTSubCategorias.Enabled := bPSQUSER('USU_VISU','Tabelas','Sub Categorias','Permissões Gerais',False);

    { Compras }
    ACTCompras.Enabled          := bPSQUSER('USU_VISU','Compras','Programações'               ,'Controlar'        ,False);
    ACTCustosImportados.Enabled := bPSQUSER('USU_VISU','Tabelas','Custo de Artigos Importados','Permissões Gerais',False);

    { Vendas }
    ACTProgramados.Enabled := bPSQUSER('USU_VISU','Vendas','Programações','Controlar',False);
    ACTPedidos.Enabled     := bPSQUSER('USU_VISU','Vendas','Pedidos'     ,'Controlar',False) or (Pos(RECUsuarios.Grupo,'PCPEXP') > 0);
    ACTRomaneios.Enabled   := bPSQUSER('USU_VISU','Vendas','Romaneios'   ,'Controlar',False) or (Pos(RECUsuarios.Grupo,'PCPEXP') > 0);

    { Nota Fiscal }
    ACTNFAdmin.Enabled    := bPSQUSER('USU_VISU','Nota Fiscal','Vendas' ,'Incluir',False);
    ACTNFEmissao.Enabled  := ACTNFAdmin.Enabled;
    ACTCFOP.Enabled       := ACTNFAdmin.Enabled;
    ACTTNFEmissao.Enabled := bPSQUSER('USU_VISU','Nota Fiscal','Compras','Incluir',False);

    { Recebimentos }
    ACTRECBancario.Enabled   := bPSQUSER('USU_VISU','Financeiro','Contas a Receber','Permissões Gerais',False);
    ACTRECCarteira.Enabled   := ACTRECBancario.Enabled;
    ACTRECDuplicatas.Enabled := bPSQUSER('USU_VISU','Financeiro','Controle Bancário','Duplicatas',False);

    { Pagamentos }
    ACTPAGComissao.Enabled := bPSQUSER('USU_VISU','Financeiro','Contas a Pagar'   ,'Permissões Gerais',False);

    { Caixa }
    ACTAbertura.Enabled   := bPSQUSER('USU_VISU','Financeiro','Caixa','Abertura',False);
    ACTFechamento.Enabled := bPSQUSER('USU_VISU','Financeiro','Caixa','Fechamento',False);
    ACTSangria.Enabled    := bPSQUSER('USU_VISU','Financeiro','Caixa','Sangria \ Reforço',False);
    ACTTSangria.Enabled   := bPSQUSER('USU_VISU','Financeiro','Caixa','Tipos de Sangria \ Reforço',False);
    ACTCaixa.Enabled      := bPSQUSER('USU_VISU','Financeiro','Caixa','Movimentos',False);

    { Sheild }
    MPSheild.Visible := (RECUsuarios.Grupo = 'DEV');

    { ´TEMPORÁRIO }
    FreeAndNil(SLPrincipal);
    SLPrincipal := TStringList.Create;

    SLPrincipal.Values['fin_rec_ban_bai'] := oREPZero('fin_rec_ban_bai','_',RECParametros.EP_ID,3);
    SLPrincipal.Values['fin_rec_car_bai'] := oREPZero('fin_rec_car_bai','_',RECParametros.EP_ID,3);
    SLPrincipal.Values['nfe_cab']         := oREPZero('nfe_cab'        ,'_',RECParametros.EP_ID,3);
    SLPrincipal.Values['nfe_dup']         := oREPZero('nfe_dup'        ,'_',RECParametros.EP_ID,3);
    SLPrincipal.Values['nfe_ite']         := oREPZero('nfe_ite'        ,'_',RECParametros.EP_ID,3);
    SLPrincipal.Values['nfe_tra']         := oREPZero('nfe_tra'        ,'_',RECParametros.EP_ID,3);
    SLPrincipal.Values['ped_com_cab']     := oREPZero('ped_com_cab'    ,'_',RECParametros.EP_ID,3);
    SLPrincipal.Values['ped_com_ite']     := oREPZero('ped_com_ite'    ,'_',RECParametros.EP_ID,3);
    SLPrincipal.Values['ped_prg_cab']     := oREPZero('ped_prg_cab'    ,'_',RECParametros.EP_ID,3);
    SLPrincipal.Values['ped_prg_ite']     := oREPZero('ped_prg_ite'    ,'_',RECParametros.EP_ID,3);
    SLPrincipal.Values['ped_ven_cab']     := oREPZero('ped_ven_cab'    ,'_',RECParametros.EP_ID,3);
    SLPrincipal.Values['ped_ven_ite']     := oREPZero('ped_ven_ite'    ,'_',RECParametros.EP_ID,3);
    SLPrincipal.Values['rom_cab']         := oREPZero('rom_cab'        ,'_',RECParametros.EP_ID,3);
    SLPrincipal.Values['rom_ite']         := oREPZero('rom_ite'        ,'_',RECParametros.EP_ID,3);
    SLPrincipal.Values['fin_caption']     := 'Consultas em Carteira';
    SLPrincipal.Values['fin_hint']        := '';
    SLPrincipal.Values['fin_baixa']       := '';
    SLPrincipal.Values['fin_consulta']    := '';

    aPesquisa := Nil;
    SetLength(aPesquisa,Length(aPerfilPesquisa));
    for i := Low(aPerfilPesquisa) to High(aPerfilPesquisa) do
    begin
      SetLength(aPesquisa[i],13);
      aPesquisa[i,00] := aPerfilPesquisa[i,00];
      aPesquisa[i,01] := aPerfilPesquisa[i,01];
      aPesquisa[i,02] := aPerfilPesquisa[i,02];
      aPesquisa[i,03] := aPerfilPesquisa[i,03];
      aPesquisa[i,04] := aPerfilPesquisa[i,04];
      aPesquisa[i,05] := aPerfilPesquisa[i,05];
      aPesquisa[i,06] := '';
      aPesquisa[i,07] := '';
      aPesquisa[i,08] := '';
      aPesquisa[i,09] := '';
      aPesquisa[i,10] := '';
      aPesquisa[i,11] := '';
      aPesquisa[i,12] := '';
    end;
  finally
    with FrmPrincipal do
    begin
      { PATH - Área de Trabalho }
      ODExplorer.InitialDir := RECParametros.SHE_PATH_DESKTOP;

      if ODExplorer.InitialDir  = EmptyStr then
         ODExplorer.InitialDir := 'C:\Sheild\Coletor';

      { RODAPÉ - Preenchendo Form Principal }
      SBRodape.Width          := Screen.Width + 1;
      SBRodape.Panels[0].Text := RECParametros.EP_NO;
      SBRodape.Panels[1].Text := RECUsuarios.Login + ' - ' + RECUsuarios.Cargo;
      SBRodape.Panels[3].Text := RECParametros.ServerHost;
      SBRodape.Panels[6].Text := 'Copyright © ' + oStrZero(YearOf(Date),4) + ' Sheild';

      IPrincipal.Picture.Assign(RECParametros.IMG_JPG_SPLASH.Picture);
      Repaint;
    end;
  end;


  //bResumo_Pedido;
end;

procedure TFrmPrincipal.MIColetorClick(Sender: TObject);
var
  TFArquivo: TextFile;
  SLTexto  : TStringList;

  AFileName,
  ALinha,
  ACDET: String;

  AEtiquetas: Array of String;
  i: integer;

  AIDG_IDEV_PDV: Variant;
begin
  if RECParametros.CDCX = 0 then
     oException(Nil,RECParametros.STCX + ' !' + #13 +
                    'Favor efetuar os procedimentos para a abertura do caixa.');

  if not ODExplorer.Execute then
  Abort;

  AFileName := ExtractFileName(ODExplorer.FileName);
  AFileName := LeftStr(AFileName,Length(AFileName) - 4);

  AssignFile(TFArquivo,ODExplorer.FileName);
  Reset(TFArquivo);

  SLTexto := TStringList.Create;
  SLTexto.LoadFromFile(ODExplorer.FileName);

  SetLength(AEtiquetas,SLTexto.Count);

  AIDG_IDEV_PDV := '0';
  i:= 0;

  try
    if SLTexto.Count = 0 then
    oException(Nil,'Nenhuma Etiqueta Coletada !' + #13 +
                   'Verifique o conteúdo do arquivo selecionado.');

    try
      While not Eof(TFArquivo) do
      Begin
        Readln(TFArquivo,ALinha);
        Delimitador := 0;
        ALinha      := oUTF8ToStr(ALinha);

        ACDET := Trim(oGetLinha(ALinha,','));
        ACDET := IFThen(Length(ACDET)  >= 13,Copy(ACDET,5,8),ACDET);
        ACDET := IFThen(Length(ACDET)   = 00,'0',ACDET);
        ACDET := oStrZero(StrToInt(ACDET),10);

        if ACDET <> EmptyStr then
        AEtiquetas[i] := ACDET;
        inc(i);

        Next;
      end;
    except
      on E: Exception do
      begin
        oException(Nil,'Falha ao tentar coletar informações !' + #13 + #13 +
                       'Registro: ' + ALinha);
      end;
    end;
  finally
    CloseFile(TFArquivo);
    SLTexto.Free;
  end;

  with FBird do
  try
    { VER ETIQUETAS }
    oOTransact(TFBETQConsulta);
    for  i := LOW(AEtiquetas) to HIGH(AEtiquetas) do
    begin
      with SQLFBETQConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.IDPK,PK.DEPK,PK.DTPK,');

        SQL.Add('       PK.IDCD,CD.FANTASIA AS DECD,');
        SQL.Add('       PK.IDCR,CR.FANTASIA AS DECR,');
        SQL.Add('       PK.IDCV,CV.LOGIN    AS DECV,');
        SQL.Add('       LG_SP.LOGIN AS LGSP,PK.DTSP ');

        SQL.Add('FROM   CAD_PRO_EST AS PK');
        SQL.Add('JOIN   CAD_CLI     AS CD    ON (CD.IDCD    = PK.IDCD)');
        SQL.Add('JOIN   CAD_REP     AS CR    ON (CR.IDCR    = PK.IDCR)');
        SQL.Add('JOIN   TAB_USER    AS CV    ON (CV.IDLG    = PK.IDCV)');
        SQL.Add('JOIN   TAB_USER    AS LG_SP ON (LG_SP.IDLG = PK.IDSP)');

        SQL.Add('WHERE  PK.CDET = ''' + AEtiquetas[i] + '''');
        ExecQuery;

        if Eof then
        oErro(Application.Handle,'Etiqueta Nº ' + AEtiquetas[i] + ' não Encontrada.');

     {   if Current.ByName('IDPK').AsInteger > 0 then
        oException(Nil,'Etiqueta Nº ' + AEtiquetas[i] + ' já Separada !' + #13 +
                       Current.ByName('LGSP').AsString  + ' - ' + FormatDateTime('dd/mm/yy',Current.ByName('DTSP').AsDateTime) + #13 + #13 +

                       'Pedido Nº '   + Current.ByName('DEPK').AsString  + ' - ' + FormatDateTime('dd/mm/yy',Current.ByName('DTPK').AsDateTime) + #13 +
                       Current.ByName('DECD').AsString + #13 +
                       Current.ByName('DECV').AsString);
      }
      end;
    end;
    oCTransact(TFBETQConsulta);

    try
      oOTransact(TFBETQEdicao);

      { GERAR PEDIDO }
      with SQLFBETQEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT GEN_ID(IDG_IDEV_PDV,1) FROM RDB$DATABASE');
        ExecQuery;

        AIDG_IDEV_PDV := Current.Vars[0].AsString;
      end;

      for  i := LOW(AEtiquetas) to HIGH(AEtiquetas) do
      begin
        with SQLFBETQEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE CAD_PRO_EST');
          SQL.Add('SET    IDEV = ''' + AIDG_IDEV_PDV + ''',');
          SQL.Add('       CDEV = 28');
          SQL.Add('WHERE  CDET = ''' + AEtiquetas[i] + '''' );
          ExecQuery;
        end;
      end;

      oCTransact(TFBETQEdicao);
    except
      on E: Exception do
      begin
        oCTransact(TFBETQEdicao,ltRollback);
        oException(Nil,'Falha ao tentar salvar eventos de estoque !' + #13 + #13 +
                       'Evento: ' + AIDG_IDEV_PDV + '.' + #13 +
                        E.Message);
      end;
    end;

    try
      oOTransact(TFBETQEdicao);

      with SPFBETQEdicao do
      begin
        Close;
        StoredProcName := 'SP_PED_PDV_CLD';
        Prepare;

        ParamByName('AEP_ID').Value := RECParametros.EP_ID;
        ParamByName('AIDEV' ).Value := AIDG_IDEV_PDV;
        ParamByName('AIDCA' ).Value := RECUsuarios.ID;
        ParamByName('ACDCX' ).Value := RECParametros.CDCX;
        ParamByName('APDSC' ).Value := 14;
        ParamByName('AFILE' ).Value := AFileName;
        ExecProc;
      end;

      oCTransact(TFBETQEdicao);
      oAviso(Application.Handle,'Pedido Gerado com Sucesso !');
    except
      on E: Exception do
      begin
        oCTransact(TFBETQEdicao,ltRollback);
        oException(Nil,'Falha ao tentar salvar cabeçalho !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    oCTransact(TFBETQConsulta);
  end;

  { Renomeia e move para a basta de backup }
  oFileRename(ODExplorer.FileName,ExtractFilePath(ODExplorer.FileName) + '\Backup\' + AFileName + ' - ' + FormatDateTime('dd-mm-yy hh-mm',Now) + '.txt');
end;

end.
