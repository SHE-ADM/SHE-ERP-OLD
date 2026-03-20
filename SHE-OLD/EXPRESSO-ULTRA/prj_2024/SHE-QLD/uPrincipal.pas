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
  IBSQL, dxDBGrid, dxTL, dxDBCtrl, TypInfo;

type
  TFrmPrincipal = class(TForm)
    SBRodape: TdxStatusBar;

    TPrincipal: TTimer;
    IPrincipal: TImage;
    ILPrincipal: TImageList;

    ACBrBarCode: TACBrBarCode;
    ACBrBarCodeV: TACBrBarCode;

    PNLMainMenu: TPanel;

    RSBClientes: TRxSpeedButton;
    RSBRepresentantes: TRxSpeedButton;
    RSBTransportadoras: TRxSpeedButton;
    RSBFornecedores: TRxSpeedButton;

    RSBContainers: TRxSpeedButton;
    RSBCustos: TRxSpeedButton;

    RSBProdutos: TRxSpeedButton;
    RSBGrade: TRxSpeedButton;

    RSBEST_LAN: TRxSpeedButton;
    RSBEstoque: TRxSpeedButton;
    RSBEST_ETQ: TRxSpeedButton;
    RSBEST_QUA: TRxSpeedButton;

    RSBEXP_COL: TRxSpeedButton;
    RSBEXP_MAN: TRxSpeedButton;

    RSBCOM_LAN: TRxSpeedButton;
    RSBCompras: TRxSpeedButton;

    RSBPRG_LAN: TRxSpeedButton;
    RSBProgramados: TRxSpeedButton;

    RSBVEN_LAN: TRxSpeedButton;
    RSBPedidos: TRxSpeedButton;

    RSBRomaneios: TRxSpeedButton;
    RSBTAB_PRZ: TRxSpeedButton;

    RSBNotaFiscal: TRxSpeedButton;
    RSBNFE_LAN: TRxSpeedButton;
    RSBNFE_LAN_TER: TRxSpeedButton;
    RSBTAB_NAT: TRxSpeedButton;

    PNLSubMenu: TPanel;
    TBSubMenu: TToolBar;

    RTBNFE_PSQ: TRxSpeedButton;
    RTBNFE_SAI: TRxSpeedButton;
    RTBCFE_LAN: TRxSpeedButton;
    TBSB_N1: TToolButton;

    RTBPRO_ETQ: TRxSpeedButton;
    RTBPrinters: TRxSpeedButton;
    TBSB_N2: TToolButton;

    RTBLogin: TRxSpeedButton;
    RTBLOG_PASSWORD: TRxSpeedButton;
    TBSB_N3: TToolButton;

    RTBSistema: TRxSpeedButton;
    RTBBackup: TRxSpeedButton;
    TBSB_N4: TToolButton;

    RTBAbout: TRxSpeedButton;
    TBSB_N5: TToolButton;

    RTBSaida: TRxSpeedButton;
    AMPrincipal: TActionManager;
    ACTClientes: TAction;
    ACTProdutos: TAction;
    ACTTransportadoras: TAction;
    ACTRepresentantes: TAction;
    ACTCAD_VEN: TAction;
    ACTFornecedores: TAction;
    ACTPED_LAN: TAction;
    ACTROM_LAN: TAction;
    ACTRomaneios: TAction;
    ACTTAB_PRZ: TAction;
    ACTTAB_GRD_COR: TAction;
    ACTTAB_GRD_EST: TAction;
    ACTPRO_FCT: TAction;
    ACTPRO_ETQ: TAction;
    ACTTAB_COL: TAction;
    ACTEST_LAN: TAction;
    ACTEstoque: TAction;
    ACTCOM_LAN: TAction;
    ACTCAD_CTNR: TAction;
    ACTDSP_CTNR: TAction;
    ACTPRG_LAN: TAction;
    ACTAgenda: TAction;
    ACTLogin: TAction;
    ACTLOG_PASSWORD: TAction;
    ACTPrinters: TAction;
    ACTExecPrinter: TAction;
    ACTSistema: TAction;
    ACTAbout: TAction;
    ACTCAI_ABR: TAction;
    ACTCAI_RAB: TAction;
    ACTCAI_FEC: TAction;
    ACTCAI_SSP: TAction;
    ACTTAB_SSP: TAction;
    ACTCAI_FLC: TAction;
    ACTEXP_COL: TAction;
    ACTEXP_MAN: TAction;
    ACTEST_ETQ: TAction;
    ACTRelatorios: TAction;
    ACTProduto_Venda: TAction;
    ACTProduto_Ranking: TAction;
    ACTProduto_Compra_Planejamento: TAction;
    ACTGProduto_Tabela_Preco: TAction;
    ACTProduto_Estoque: TAction;
    ACTRPROSPEDFiscal: TAction;
    ACTRPROKardex: TAction;
    ACTRGERNF: TAction;
    ACTEmConstrucao: TAction;
    ACTFIN_REC_BAN: TAction;
    ACTFIN_REC_CAR: TAction;
    ACTFIN_REC_DUP: TAction;
    ACTFIN_PAG_CMV: TAction;
    ACTPAGPROComissao: TAction;
    ACTCFE_LAN: TAction;
    ACTNFE_LAN: TAction;
    ACTRCLVEN: TAction;
    ACTCliente_Ranking: TAction;
    ACTRCLABC: TAction;
    ACTRepresentante_Venda_Produto: TAction;
    ACTRepresentante_Ranking: TAction;
    ACTRCRABC: TAction;
    ACTTAB_SEG: TAction;
    ACTTAB_GRP: TAction;
    ACTTAB_SGP: TAction;
    ACTTAB_CAT: TAction;
    ACTTAB_SCT: TAction;
    ACTProduto_Devolucao_Cancelamento: TAction;
    ACTProduto_Venda_Inativo: TAction;
    ACTFinanceiro_Abatimento: TAction;
    ACTCliente_Venda_Produto: TAction;
    ACTCliente_Grupo_Venda_Produto: TAction;
    ACTCliente_Produto_Atendido: TAction;
    ACTCliente_Produto_Nao_Atendido: TAction;
    ACTCliente_Cadastro_Listagem: TAction;
    ACTFinanceiro_Cadastros_Duplicata: TAction;
    ACTRepresentante_Cadastro_Listagem: TAction;
    ACTProduto_Tabela_Preco: TAction;
    ACTGerencial_Tipo_Credito: TAction;
    ACTGerencial_Tipo_Venda: TAction;
    ACTGerencial_Estoque_Unidade_Medida: TAction;
    ACTGerencial_NF_Tipo_Operacao: TAction;
    ACTGerencial_NF_Peso: TAction;
    ACTGerencial_Performance_Venda: TAction;
    ACTProduto_Venda_Mensal: TAction;
    ACTProduto_Venda_Regiao_UF: TAction;
    ACTProduto_Venda_Regiao_Nacional: TAction;
    ACTGFornecedoresProdutosCadastrados: TAction;
    ACTEST_QUA: TAction;
    ACTNotaFiscal: TAction;
    ACTNFE_LAN_TER: TAction;
    ACTNFE_PSQ: TAction;
    ACTTAB_NAT: TAction;
    ACTPagamentos: TAction;
    ACTSaida: TAction;
    ACTCompras: TAction;
    ACTProgramados: TAction;
    ACTCupomFiscal: TAction;
    ACTPedidos: TAction;
    ACTFIN_REC_BOL: TAction;
    ACTCHQ_LAN: TAction;
    ACTCheques: TAction;
    ACTCAD_COM: TAction;
    ACTNFE_SAI_LAN: TAction;
    ACTNFE_SAI: TAction;
    ACTFIN_REC_IBB: TAction;
    ACTFIN_CAL_VCT: TAction;
    ACTFIN_EMI_REC: TAction;
    ACTFIN_EMI_VFU: TAction;
    ACTTAB_COB: TAction;
    ACTTAB_PED: TAction;
    ACTTAB_NCM: TAction;
    ACTTAB_UCOM: TAction;
    ACTTAB_CMUN: TAction;
    ACTTAB_ICMS: TAction;
    ACTTAB_ICMS_ST: TAction;
    ACTTAB_ORI: TAction;
    ACTLOG_DENIED: TAction;
    ACTBackup: TAction;
    MMPrincipal: TMainMenu;
    MPCadastros: TMenuItem;
    MICAD_CLI: TMenuItem;
    MICAD_TRA: TMenuItem;
    MICAD_N1: TMenuItem;
    MICAD_REP: TMenuItem;
    MICAD_VEN: TMenuItem;
    MICAD_N2: TMenuItem;
    MICAD_FOR: TMenuItem;
    MICAD_COM: TMenuItem;
    MPProdutos: TMenuItem;
    MICAD_PRO: TMenuItem;
    MIPRO_N1: TMenuItem;
    MITAB_COR: TMenuItem;
    MITAB_GRD: TMenuItem;
    MIPRO_N2: TMenuItem;
    MIPRO_FCT: TMenuItem;
    MIPRO_ETQ: TMenuItem;
    MIPRO_N3: TMenuItem;
    MITAB_COL: TMenuItem;
    MITAB_SEG: TMenuItem;
    MIPRO_N4: TMenuItem;
    MITAB_GRP: TMenuItem;
    MITAB_SGP: TMenuItem;
    MIPRO_N5: TMenuItem;
    MITAB_CAT: TMenuItem;
    MITAB_SCT: TMenuItem;
    MPEstoque: TMenuItem;
    MIEST_LAN: TMenuItem;
    MIEstoque: TMenuItem;
    MIEST_N1: TMenuItem;
    MIEST_ETQ: TMenuItem;
    MIEST_N2: TMenuItem;
    MIEST_QUA: TMenuItem;
    MPExpedicao: TMenuItem;
    MIEXP_COL: TMenuItem;
    MIEXP_MAN: TMenuItem;
    MPContainers: TMenuItem;
    MICAD_CTNR: TMenuItem;
    MIDSP_CTNR: TMenuItem;
    MPCompras: TMenuItem;
    MICOM_LAN: TMenuItem;
    MICompras: TMenuItem;
    MPProgramados: TMenuItem;
    MIPRG_LAN: TMenuItem;
    MIProgramados: TMenuItem;
    MPVendas: TMenuItem;
    MIPED_LAN: TMenuItem;
    MIPedidos: TMenuItem;
    MPRomaneios: TMenuItem;
    MIROM_LAN: TMenuItem;
    MIRomaneios: TMenuItem;
    MPNotaFiscal: TMenuItem;
    MINFE_LAN: TMenuItem;
    MINotaFiscal: TMenuItem;
    MINFE_N1: TMenuItem;
    MINFE_LAN_TER: TMenuItem;
    MINFE_N2: TMenuItem;
    MI: TMenuItem;
    MPCupomFiscal: TMenuItem;
    MICFE_LAN: TMenuItem;
    MICupomFiscal: TMenuItem;
    MPFinanceiro: TMenuItem;
    MIFIN_REC_BAN: TMenuItem;
    MIFIN_REC_CAR: TMenuItem;
    MIFIN_N1: TMenuItem;
    MIFIN_REC_DUP: TMenuItem;
    MIFIN_REC_BOL: TMenuItem;
    MIFIN_N2: TMenuItem;
    MIFIN_REC_IBB: TMenuItem;
    MIFIN_N3: TMenuItem;
    MIFIN_PAG_CMV: TMenuItem;
    MIFIN_N4: TMenuItem;
    MIFIN_CAL_VCT: TMenuItem;
    MIFIN_EMI_REC: TMenuItem;
    MIFIN_EMI_VFU: TMenuItem;
    MPCheques: TMenuItem;
    MICHQ_LAN: TMenuItem;
    MICheques: TMenuItem;
    MPCaixa: TMenuItem;
    MICAI_ABR: TMenuItem;
    MICAI_RAB: TMenuItem;
    MICAI_N1: TMenuItem;
    MICAI_FEC: TMenuItem;
    MICAI_N2: TMenuItem;
    MICAI_MSS: TMenuItem;
    MICAI_TSS: TMenuItem;
    MICAI_N3: TMenuItem;
    MICAI_MOV: TMenuItem;
    MPTabelas: TMenuItem;
    MITAB_PRZ: TMenuItem;
    MITAB_N1: TMenuItem;
    MITAB_COB: TMenuItem;
    MITAB_PED: TMenuItem;
    MITAB_N2: TMenuItem;
    MITAB_NCM: TMenuItem;
    MITAB_UCOM: TMenuItem;
    MITAB_N3: TMenuItem;
    MITAB_CMUN: TMenuItem;
    MITAB_NAT: TMenuItem;
    MITAB_N4: TMenuItem;
    MITAB_ICMS: TMenuItem;
    MITAB_ICMS_ST: TMenuItem;
    MITAB_N5: TMenuItem;
    MITAB_ORI: TMenuItem;
    MPRelatorios: TMenuItem;
    MIRelProdutos: TMenuItem;
    MIRelProduto_Estoque: TMenuItem;
    MIRelProduto_Estoque_Etiqueta: TMenuItem;
    MIRelProdutosSPEDFiscal: TMenuItem;
    MIRelProdutos_3: TMenuItem;
    MIRelProduto_Venda: TMenuItem;
    MIRelProduto_Venda_Mensal: TMenuItem;
    MIRelProduto_Venda_Localidade: TMenuItem;
    MIProduto_Venda_Regiao_UF: TMenuItem;
    MIProduto_Venda_Regiao_Nacional: TMenuItem;
    N28: TMenuItem;
    MIRelProduto_Ranking: TMenuItem;
    N12: TMenuItem;
    MIRelProduto_Devolucao_Cancelamento: TMenuItem;
    MIRelProduto_Venda_Inativo: TMenuItem;
    N14: TMenuItem;
    MIRelProdutosProg: TMenuItem;
    MIRelProduto_Compra_Planejamento: TMenuItem;
    MIRelProdutos_2: TMenuItem;
    MIRelGerencial_Performance_Venda: TMenuItem;
    N25: TMenuItem;
    MIRelProduto_Tabela_Preco: TMenuItem;
    MIRelGProduto_Tabela_Preco: TMenuItem;
    MIRelProdutos_4: TMenuItem;
    MIRelProdutosKardex: TMenuItem;
    MIRelatorios_1: TMenuItem;
    MIRelClientes: TMenuItem;
    MIRelCliente_Venda_Produto: TMenuItem;
    MIRelCliente_Grupo_Venda_Produto: TMenuItem;
    N19: TMenuItem;
    MIRelCliente_Produto_Atendido: TMenuItem;
    MIRelCliente_Produto_Nao_Atendido: TMenuItem;
    N22: TMenuItem;
    MIRelCliente_Ranking: TMenuItem;
    N18: TMenuItem;
    MIRelClientesRanking: TMenuItem;
    MIRelClientes_1: TMenuItem;
    MIRelClientesFicha: TMenuItem;
    MIRelCliente_Cadastro_Listagem: TMenuItem;
    Fornecedores1: TMenuItem;
    MIRelFornecedoresCPCAD: TMenuItem;
    MIRelVendedores: TMenuItem;
    MIRelVendedoresFat: TMenuItem;
    MIRelVendedoresRanking: TMenuItem;
    MIRelVendedores_1: TMenuItem;
    MIRelVendedoresComissoes: TMenuItem;
    MIRelVendedoresVales: TMenuItem;
    MIRelRepresentantes: TMenuItem;
    MIRelRepresentante_Venda_Produto: TMenuItem;
    MIRelRepresentante_Ranking: TMenuItem;
    MIRelRepresentantes_1: TMenuItem;
    MIRelRepresentantesComissoes: TMenuItem;
    MIRelRepresentantesVales: TMenuItem;
    MIRelRepresentantes_2: TMenuItem;
    MIRelRepresentantesFicha: TMenuItem;
    MIRelRepresentante_Cadastro_Listagem: TMenuItem;
    N16: TMenuItem;
    MIRelFinanceiro: TMenuItem;
    MIRelFinanceiro_Abatimento: TMenuItem;
    MIRelFinanceiro_Cadastros_Duplicata: TMenuItem;
    MIRelatorios_3: TMenuItem;
    MIRelGerencial: TMenuItem;
    MIRelGerencial_Tipo_Credito: TMenuItem;
    MIRelGerencial_Tipo_Venda: TMenuItem;
    MIRelGerencial_N1: TMenuItem;
    MIRelGerencial_Estoque_Unidade_Medida: TMenuItem;
    N24: TMenuItem;
    MIRelGerencial_NF_Tipo_Operacao: TMenuItem;
    MIRelGerencial_NF_Peso: TMenuItem;
    N5: TMenuItem;
    MIRelGerenciaisNFe: TMenuItem;
    MIRelGerenciaisCFeSat: TMenuItem;
    MPConteudo: TMenuItem;
    MIHELP: TMenuItem;
    MIABOUT: TMenuItem;
    MPSheild: TMenuItem;
    MIComissao: TMenuItem;
    esteCompras1: TMenuItem;


    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);

    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);

    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ACTLoginExecute(Sender: TObject);
    procedure ACTLOG_PASSWORDExecute(Sender: TObject);
    procedure ACTPrintersExecute(Sender: TObject);
    procedure ACTExecPrinterExecute(Sender: TObject);
    procedure ACTLOG_DENIEDExecute(Sender: TObject);
    procedure ACTSistemaExecute(Sender: TObject);
    procedure ACTBackupExecute(Sender: TObject);
    procedure ACTAboutExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure ACTEmConstrucaoExecute(Sender: TObject);
    procedure TPrincipalTimer(Sender: TObject);
    procedure ACTNFE_PSQExecute(Sender: TObject);
    procedure ACTNFE_SAI_LANExecute(Sender: TObject);
    procedure ACTCFE_LANExecute(Sender: TObject);
    procedure ACTPRO_ETQExecute(Sender: TObject);
    procedure ACTProdutosExecute(Sender: TObject);
    procedure ACTEST_ETQExecute(Sender: TObject);
    procedure ACTEST_LANExecute(Sender: TObject);
    procedure ACTEstoqueExecute(Sender: TObject);
    procedure ACTEST_QUAExecute(Sender: TObject);
    procedure ACTEXP_COLExecute(Sender: TObject);
    procedure ACTEXP_MANExecute(Sender: TObject);
    procedure ACTPedidosExecute(Sender: TObject);
    procedure ACTRomaneiosExecute(Sender: TObject);
  private
    { Private declarations }

    procedure _Login(AIDUSER: Variant; AIDEP,ADEEP: String);

    procedure _SetHintDefault;
    procedure _SetMouseLeave(var AMessage: TMessage); message WM_MOUSELEAVE;

    function  _SetMouseTracking: Boolean;

  public
    { Public declarations }
  end;

{ Sistema }
procedure uEmConstrucao(ACaption: String = ''); STDCall;
procedure uFrmCreate(AOwner: TComponent;AFClass: TFormClass; var AInstance); STDCall;
procedure uRepaintMainForm(AForm: TForm); STDCall;
procedure uDisabledMainForm; STDCall;

procedure uPSQPD (var ARECEdicao: TRECEdicao); STDCall;
procedure uPSQNF (var ARECPSQNF : TRECEdicao;ASQLConsulta: TIBSQL;AWinControl: TWinControl); STDCall;

function uPesquisa_Produto(AIDEP: Integer = 0;ADTXT: String = '';AFTXT: String = 'ARTIGO';AWHERE: String = '=';ALIKE1: String = '';ALIKE2: String = '';ADDT1: TDate = 0;ADDT2: TDate = 0;AFDT: String = ''): Integer; STDCall;


function uLoadZoom(Imagem: TPicture; aProduto: Array of String): LongInt; STDCall;

{ Funções de Controle Financeiro }
function uFIN_BLQ(ASTCobranca,ASTFatura,AIDCliente: String): String; STDCall;
function uLimiteVenda(ASTCobranca,ASTFatura,AIDCliente: String;ATotal: Double): string; STDCall;

var
  FrmPrincipal: TFrmPrincipal;
  ATrackMouseEvent: TTrackMouseEvent;


{ Temporário }
  DATA_MEDIA    : TDate;
  ITENS_PEDIDO,
  ITENS_BANCARIO,
  ITENS_CARTEIRA: Integer;
  VALOR_PEDIDO,
  VALOR_SALDO,
  VALOR_BANCARIO,
  VALOR_CARTEIRA: Double;
  APSQ_PED_PRG,APSQ_PED_VEN,APSQ_ROM_CAB: String;

implementation

uses bPrincipal,
     pLogin, pSenha, pSobre,
     AJBarcode, pImpressoras,
     pEmConstrucao,

     pProduto_Imagem, peti_pro, pent_pro, pEstoque,
  pEstoqueDefeitos, pProduto_Pesquisa, pProduto, pEXP_SEP_COL,
  pEXP_SEP_MAN, pctr_ped, pctr_rom;

{$R *.dfm}

        
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
    SQL.Add('FROM ' + oREPZero(ARECEdicao.TBPK,'_',RECParametros.Id,3) + ' AS PK');

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

function uFIN_BLQ(ASTCobranca,ASTFatura,AIDCliente: String): String;
begin
  result := EmptyStr;
  if (RECParametros.FIN_LIMITE_CARTEIRA > 0) and (ASTCobranca <> 'SEM COBRANÇA') and (ASTFatura = '1') and (AIDCliente <> RECParametros.IDCL_PAD) then
  try
    oOTransact(FBird.TFBConsulta);
    with FBird.SQLFBConsulta do
    begin
      { Carteira Logada }
      Close;
      SQL.Clear;
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM ' + oREPZero('VW_FIN_REC_CAR','_',RECParametros.Id,3) + ' AS PK');
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
      SQL.Add('WHERE  IDEP = ''' + RECParametros.ID + '''');
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
      SQL.Add('FROM '+oREPZero('VW_PED_VEN_CAB','_',RECParametros.Id,3)+' AS PK');
      SQL.Add('WHERE  PK.IDEP = '''+RECParametros.Id+'''');
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

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  if ClientHandle <> 0 then
     if (not(GetWindowLong(ClientHandle, GWL_USERDATA) <> 0))  then
         SetWindowLong(ClientHandle, GWL_USERDATA, SetWindowLong(ClientHandle, GWL_WNDPROC, integer(@ClientWindowProc)));

  CurrencyString    := 'R$';
  ThousandSeparator := '.';
  DecimalSeparator  := ',';

  _SetHintDefault;
  _Login(FrmLogin.RECLogin.ID,FrmLogin.RECLogin.IDEP,FrmLogin.RECLogin.DEEP);
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
  XRect   : TRect;
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
    XRect.Left   := 0;
    XRect.Right  := Screen.Width;
    XRect.Top    := 0;
    XRect.Bottom := Screen.Height;

    Canvas.StretchDraw(xRect,IPrincipal.Picture.Graphic);

    if Screen.Height <= 768 then
       for WLargura := MDIChildCount - 1 downto 0 do
           if MDIChildren[WLargura] <> Nil then
              MDIChildren[WLargura].Repaint;
  end;
end;

procedure TFrmPrincipal.FormResize(Sender: TObject);
begin
  if FrmPrincipal <> Nil then
     Paint;
end;

procedure TFrmPrincipal._SetMouseLeave(var AMessage: TMessage);
begin
  inherited;
  AMessage.Result := 1;
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

       ACTCAI_ABR.Enabled := (((RECParametros.STCX = 'Caixa Fechado') or (RECParametros.STCX = 'Caixa não aberto')) and (RECUsuarios.Caixa));
       ACTCAI_RAB.Enabled := (ACTCAI_ABR.Enabled);
       ACTCAI_FEC.Enabled := ((not ACTCAI_ABR.Enabled) and (RECUsuarios.Caixa));

       SBRodape.Panels[2].Text := RECParametros.STCX;
       SBRodape.Panels[4].Text := Format('Tempo Ocioso: %d',[RECParametros.SecondsIdle]);

       if RECParametros.SecondsIdle > 0 then
       if RECParametros.SecondsIdle mod 180 = 0  then
       begin
         { Main DB }
         if not FBird.DBErp.TestConnected then
            try
              DBErp.CloseDataSets;
              DBErp.ForceClose;

              SleepEx(100,False);
              DBErp.Connected := True;
            except
              ;
            end;

         if FBird.DBErp.TestConnected then
            bResumo_Pedido;
            
         { Edição }
         if not FBird.DBEdicao.TestConnected then
            try
              DBEdicao.CloseDataSets;
              DBEdicao.ForceClose;

              SleepEx(100,False);
              DBEdicao.Connected := true;
            except
              ;
            end;

         if FBird.DBErp.TestConnected then
            try
              oOTransact(TFBSEdicao);
              with SQLFBSEdicao do
              begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT * FROM rdb$Database');
                ExecQuery;
              end;
              oCTransact(TFBSEdicao);
            except
              oCTransact(TFBSEdicao,ltRollback);
            end;

         if RECParametros.CDCX = 0 then
            bExecEvent('Caixa');
       end;
     end;
end;

procedure TFrmPrincipal.ACTLoginExecute(Sender: TObject);
var
  i: integer;
begin
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

  FrmLogin         := TFrmLogin.create(Nil);
  FrmLogin.Caption := 'Login de Usuário';

  try
    FrmLogin.ShowModal;
  finally
    try
      if (FBird.DBErp.TestConnected) and (FrmLogin.RECLogin.Selected) then
          _Login(FrmLogin.RECLogin.ID,FrmLogin.RECLogin.IDEP,FrmLogin.RECLogin.DEEP) else
      begin
        RECUsuarios.Id := 0;
        Close;
      end;
    finally
      FreeAndNil(FrmLogin);
    end;  
  end;
end;

procedure TFrmPrincipal.ACTLOG_PASSWORDExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmSenha,FrmSenha);
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

procedure TFrmPrincipal.ACTLOG_DENIEDExecute(Sender: TObject);
begin
  raise exception.Create(PChar(ACTLOG_DENIED.Caption) + #13 +
                         PChar(ACTLOG_DENIED.Hint));
end;

procedure TFrmPrincipal.ACTSistemaExecute(Sender: TObject);
begin
  ACTLOG_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTBackupExecute(Sender: TObject);
begin
  ACTLOG_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTAboutExecute(Sender: TObject);
begin
//  {$IFDEF DEF_EXP} uFrmCreate(Nil,Tfrmsobre,Frmsobre);
//  {$ELSE} SHOWMESSAGE('OK');
//  {$ENDIF} ;

  uFrmCreate(Nil,Tfrmsobre,Frmsobre);
end;

procedure TFrmPrincipal.ACTEmConstrucaoExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure TFrmPrincipal.ACTSaidaExecute(Sender: TObject);
begin
  Close;
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
  i: Word;
begin
  if oEmpty(AIDUSER) then
     Exit;

  with FBird do
  try
    oOTransact(TFBEdicao);
    with SQLFBFKEdicao do
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
    bExecPrinter;
    bExecCaixa;
  except
    { nothing }
  end;

  { Parâmetros de Aberturas de Querys }
  FreeAndNil(SLPrincipal);
  SLPrincipal := TStringList.Create;

  { Array de Pesquisas }
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

  { OBJ Tabelas }
  SLPrincipal.Values['fin_rec_ban_bai'] := oREPZero('fin_rec_ban_bai','_',RECParametros.Id,3);
  SLPrincipal.Values['fin_rec_car_bai'] := oREPZero('fin_rec_car_bai','_',RECParametros.Id,3);
  SLPrincipal.Values['nfe_cab']         := oREPZero('nfe_cab'        ,'_',RECParametros.Id,3);
  SLPrincipal.Values['nfe_dup']         := oREPZero('nfe_dup'        ,'_',RECParametros.Id,3);
  SLPrincipal.Values['nfe_ite']         := oREPZero('nfe_ite'        ,'_',RECParametros.Id,3);
  SLPrincipal.Values['nfe_tra']         := oREPZero('nfe_tra'        ,'_',RECParametros.Id,3);
  SLPrincipal.Values['ped_com_cab']     := oREPZero('ped_com_cab'    ,'_',RECParametros.Id,3);
  SLPrincipal.Values['ped_com_ite']     := oREPZero('ped_com_ite'    ,'_',RECParametros.Id,3);
  SLPrincipal.Values['ped_prg_cab']     := oREPZero('ped_prg_cab'    ,'_',RECParametros.Id,3);
  SLPrincipal.Values['ped_prg_ite']     := oREPZero('ped_prg_ite'    ,'_',RECParametros.Id,3);
  SLPrincipal.Values['ped_ven_cab']     := oREPZero('ped_ven_cab'    ,'_',RECParametros.Id,3);
  SLPrincipal.Values['ped_ven_ite']     := oREPZero('ped_ven_ite'    ,'_',RECParametros.Id,3);
  SLPrincipal.Values['rom_cab']         := oREPZero('rom_cab'        ,'_',RECParametros.Id,3);
  SLPrincipal.Values['rom_ite']         := oREPZero('rom_ite'        ,'_',RECParametros.Id,3);
  SLPrincipal.Values['fin_caption']     := 'Consultas em Carteira';
  SLPrincipal.Values['fin_hint']        := '';
  SLPrincipal.Values['fin_baixa']       := '';
  SLPrincipal.Values['fin_consulta']    := '';

  with FrmPrincipal do
  begin
    { Grant Users }
    { Cadastros }
    ACTClientes.Enabled        := bPSQUSER('VISUALIZA','Clientes'       ,'Cadastro','Permissões Gerais');
    ACTRepresentantes.Enabled  := bPSQUSER('VISUALIZA','Representantes' ,'Cadastro','Permissões Gerais');
    ACTFornecedores.Enabled    := bPSQUSER('VISUALIZA','Fornecedores'   ,'Cadastro','Permissões Gerais');
    ACTTransportadoras.Enabled := bPSQUSER('VISUALIZA','Transportadoras','Cadastro','Permissões Gerais');

    { Produtos }
    ACTProdutos.Enabled := bPSQUSER('VISUALIZA','Cadastro','Produtos','Permissões Gerais');
    ACTPRO_FCT.Enabled  := bPSQUSER('VISUALIZA','Produtos','Ficha Técnica','Permissões Gerais');

    { Estoque }
    ACTEstoque.Enabled  := bPSQUSER('VISUALIZA','Estoque','Produtos','Permissões Gerais');

    ACTEST_LAN.Enabled := bPSQUSER('INCLUI','Estoque','Produtos','Permissões Gerais');
    ACTEST_ETQ.Enabled := bPSQUSER('INCLUI','Estoque','Produtos','Permissões Gerais');
    ACTEST_QUA.Enabled := bPSQUSER('INCLUI','Estoque','Produtos','Qualidade');

    { Expedição }
    ACTEXP_MAN.Enabled := bPSQUSER('VISUALIZA','Estoque','Expedição','Permissões Gerais');
    ACTEXP_COL.Enabled := bPSQUSER('VISUALIZA','Estoque','Expedição','Permissões Gerais');

    { Containers }
    ACTCAD_CTNR.Enabled := bPSQUSER('VISUALIZA','Tabelas','Containers','Permissões Gerais');
    ACTDSP_CTNR.Enabled := bPSQUSER('VISUALIZA','Tabelas','Custo de Artigos Importados','Permissões Gerais');

    { Compras }
    ACTCOM_LAN.Enabled := bPSQUSER('INCLUI','Compras','Programações','Controlar');
    ACTCompras.Enabled := bPSQUSER('VISUALIZA','Compras','Programações','Controlar');

    { Programações }
    ACTPRG_LAN.Enabled     := bPSQUSER('INCLUI','Vendas','Programações','Controlar');
    ACTProgramados.Enabled := bPSQUSER('VISUALIZA','Vendas','Programações','Controlar');

    { Vendas }
    ACTPED_LAN.Enabled := bPSQUSER('INCLUI','Vendas','Pedidos','Incluir');
    ACTPedidos.Enabled := bPSQUSER('VISUALIZA','Vendas','Pedidos','Controlar') or (Pos(RECUsuarios.Grupo,'PCPEXP') > 0);

    { Romaneios }
    ACTRomaneios.Enabled := bPSQUSER('VISUALIZA','Vendas','Romaneios','Controlar');

    { Notas Fiscais }
    ACTNFE_LAN.Enabled     := bPSQUSER('INCLUI','Nota Fiscal','Vendas'   ,'Incluir');
    ACTNotaFiscal.Enabled  := bPSQUSER('VISUALIZA','Nota Fiscal','Vendas'   ,'Incluir');
    ACTNFE_LAN_TER.Enabled := bPSQUSER('INCLUI','Nota Fiscal','Compras'  ,'Incluir');

    { Cupons Fiscai }
    ACTCupomFiscal.Enabled := bPSQUSER('IMPRIME','Fiscal','CFE','Permissões Gerais');

    { Recebimentos }
    ACTFIN_REC_BAN.Enabled   := bPSQUSER('VISUALIZA','Financeiro','Contas a Receber','Permissões Gerais');
    ACTFIN_REC_CAR.Enabled   := ACTFIN_REC_BAN.Enabled;
    ACTFIN_REC_DUP.Enabled := bPSQUSER('VISUALIZA','Financeiro','Controle Bancário','Duplicatas');

    { Pagamentos }
    ACTFIN_PAG_CMV.Enabled := bPSQUSER('VISUALIZA','Financeiro','Contas a Pagar'   ,'Permissões Gerais');

    { Cheques }
    ACTCHQ_LAN.Enabled := bPSQUSER('INCLUI','Cheques','Cadastro','Permissões Gerais');
    ACTCheques.Enabled := bPSQUSER('CONTROLE','Cheques','Cadastro','Permissões Gerais');

    { Caixa }
    ACTCAI_ABR.Enabled := bPSQUSER('VISUALIZA','Financeiro','Caixa','Abertura');
    ACTCAI_FEC.Enabled := bPSQUSER('VISUALIZA','Financeiro','Caixa','Fechamento');
    ACTCAI_SSP.Enabled := bPSQUSER('VISUALIZA','Financeiro','Caixa','Sangria \ Reforço');
    ACTTAB_SSP.Enabled := bPSQUSER('VISUALIZA','Financeiro','Caixa','Tipos de Sangria \ Reforço');
    ACTCAI_FLC.Enabled := bPSQUSER('VISUALIZA','Financeiro','Caixa','Movimentos');

    { Tabelas }
    ACTTAB_NAT.Enabled := bPSQUSER('VISUALIZA','Tabelas','Naturezas de Operações' ,'Permissões Gerais');
    ACTTAB_PRZ.Enabled := bPSQUSER('VISUALIZA','Tabelas','Condições de Pagamentos','Permissões Gerais');

    ACTTAB_GRD_COR.Enabled := bPSQUSER('VISUALIZA','Tabelas','Cores'   ,'Permissões Gerais');
    ACTTAB_GRD_EST.Enabled := bPSQUSER('VISUALIZA','Tabelas','Estampas','Permissões Gerais');

    ACTTAB_COL.Enabled := bPSQUSER('VISUALIZA','Tabelas','Coleções'      ,'Permissões Gerais');
    ACTTAB_SEG.Enabled := bPSQUSER('VISUALIZA','Tabelas','Segmentos'     ,'Permissões Gerais');

    ACTTAB_GRP.Enabled := bPSQUSER('VISUALIZA','Tabelas','Grupos'        ,'Permissões Gerais');
    ACTTAB_SGP.Enabled := bPSQUSER('VISUALIZA','Tabelas','Sub Grupos'    ,'Permissões Gerais');

    ACTTAB_CAT.Enabled := bPSQUSER('VISUALIZA','Tabelas','Categorias'    ,'Permissões Gerais');
    ACTTAB_SCT.Enabled := bPSQUSER('VISUALIZA','Tabelas','Sub Categorias','Permissões Gerais');

    { Sheild }
    MPSheild.Visible := (RECUsuarios.Grupo = 'DEV');

    { Linha 1}
    _RSBAction(ACTProdutos,RSBProdutos,'Produtos');
    RSBProdutos.Top     := 3;
    RSBProdutos.Left    := 3;
    RSBProdutos.Visible := True;

    _RSBAction(ACTEST_ETQ,RSBEST_ETQ);
    RSBEST_ETQ.Top     := 03;
    RSBEST_ETQ.Left    := 80;
    RSBEST_ETQ.Visible := True;

    { Linha 2}
    _RSBAction(ACTEST_LAN,RSBEST_LAN,'Estoque');
    RSBEST_LAN.Top     := 70;
    RSBEST_LAN.Left    := 03;
    RSBEST_LAN.Visible := True;

    _RSBAction(ACTEstoque,RSBEstoque,'Controle...');
    RSBEstoque.Top     := 70;
    RSBEstoque.Left    := 80;
    RSBEstoque.Visible := True;

    { Linha 3}
    _RSBAction(ACTEXP_COL,RSBEXP_COL);
    RSBEXP_COL.Top     := 137;
    RSBEXP_COL.Left    := 003;
    RSBEXP_COL.Visible := True;

    _RSBAction(ACTEXP_MAN,RSBEXP_MAN);
    RSBEXP_MAN.Top     := 137;
    RSBEXP_MAN.Left    := 080;
    RSBEXP_MAN.Visible := True;

    { Linha 4}
    _RSBAction(ACTPedidos,RSBPedidos,'Pedidos');
    RSBPedidos.Top     := 204;
    RSBPedidos.Left    := 003;
    RSBPedidos.Visible := True;

    _RSBAction(ACTRomaneios,RSBRomaneios,'Romaneios');
    RSBRomaneios.Top     := 204;
    RSBRomaneios.Left    := 080;
    RSBRomaneios.Visible := True;

    { Preenchendo o rodapé do Form Principal }
    SBRodape.Width          := Screen.Width + 1;
    SBRodape.Panels[0].Text := RECParametros.Fantasia;
    SBRodape.Panels[1].Text := RECUsuarios.Login+' - '+RECUsuarios.Cargo;
    SBRodape.Panels[3].Text := RECParametros.ServerHost;
    SBRodape.Panels[6].Text := 'Copyright © '+oStrZero(YearOf(Date),4)+' Sheild';

    { Foto de Fundo da Tela Principal}
    oLoadJPG(RECParametros.IMG_JPG_SPLASH,IPrincipal.Picture);
    Application.ProcessMessages;
    Repaint;
  end;
end;

procedure TFrmPrincipal.ACTProdutosExecute(Sender: TObject);
begin
  bPSQUSER('VISUALIZA','Cadastro','Produtos','Permissões Gerais,True');
  TFrmProduto.ExecForm(Nil,FrmProduto);
end;

procedure TFrmPrincipal.ACTEST_ETQExecute(Sender: TObject);
begin
  bPSQUSER('INCLUI','Estoque','Produtos','Permissões Gerais',True);
  uFrmCreate(Nil,Tfrmeti_pro,frmeti_pro);
end;

procedure TFrmPrincipal.ACTPRO_ETQExecute(Sender: TObject);
begin
  bPSQUSER('VISUALIZA','Produtos','Etiquetas','Permissões Gerais,True');
end;

procedure TFrmPrincipal.ACTNFE_PSQExecute(Sender: TObject);
begin
  if not ACTNotaFiscal.Enabled then
  ACTLOG_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTNFE_SAI_LANExecute(Sender: TObject);
begin
  bPSQUSER('INCLUI','Nota Fiscal','Logística','Permissões Gerais,True');
end;

procedure TFrmPrincipal.ACTCFE_LANExecute(Sender: TObject);
begin
  bPSQUSER('INCLUI','Fiscal','CFE','Permissões Gerais,True');
end;

procedure TFrmPrincipal.ACTEST_LANExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrment_pro,Frment_pro);
end;

procedure TFrmPrincipal.ACTEstoqueExecute(Sender: TObject);
begin
  TFrmEstoque.ExecForm(Nil,FrmEstoque);
end;

procedure TFrmPrincipal.ACTEST_QUAExecute(Sender: TObject);
begin
  TFrmEstoqueDefeitos.ExecForm(Nil,FrmEstoqueDefeitos);
end;

procedure TFrmPrincipal.ACTEXP_COLExecute(Sender: TObject);
begin
  TFrmEXP_SEP_COL.ExecForm(Nil,FrmEXP_SEP_COL);
end;

procedure TFrmPrincipal.ACTEXP_MANExecute(Sender: TObject);
begin
   uFrmCreate(Nil,TFrmEXP_SEP_MAN,FrmEXP_SEP_MAN);
end;

procedure TFrmPrincipal.ACTPedidosExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmctr_ped,Frmctr_ped);
end;

procedure TFrmPrincipal.ACTRomaneiosExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmctr_rom,Frmctr_rom);
end;

end.

