unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, RXCtrls, ToolWin, StdCtrls, Buttons,
  DB, IBCustomDataSet, IBQuery, IBDatabase, IBTable, ActnList, ActnMan,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, DateUtils, Printers, StrUtils,
  Grids, DBGrids, IBStoredProc, ImgList, Shellapi, DBTables, jpeg, math,
  XPStyleActnCtrls, IdBaseComponent, IdComponent, qrPrev,
  IdIPWatch, Provider, cxGraphics, cxControls, dxStatusBar, ACBrBarCode,
  IBSQL, dxDBGrid, dxTL, dxDBCtrl, TypInfo, dxsbar, dxDockPanel,
  dxDockControl, dxBar, dxBarExtItems, rxAnimate, rxGIFCtrl,

  StrInt, StrIntImp;

const
 dllNfe = 'nfe.dll';

type
  ArrayBi = Array of Array of shortstring;

  TFrmPrincipal = class(TForm)

    TPrincipal: TTimer;
    IPrincipal: TImage;

    ACBrBarCode: TACBrBarCode;
    ACBrBarCodeV: TACBrBarCode;
    BMPrincipal: TdxBarManager;
    BSICadastros: TdxBarSubItem;
    BSIProdutos: TdxBarSubItem;
    DMPrincipal: TdxDockingManager;
    DSMenu: TdxDockSite;
    LDSPrincipal: TdxLayoutDockSite;
    DPMenu: TdxDockPanel;
    BLBUT_ETQ_PRN: TdxBarLargeButton;
    SBPrincipal: TdxSideBar;
    SBSPrincipal: TdxSideBarStore;
    BLBCAD_CLI: TdxBarLargeButton;
    BLBCAD_REP: TdxBarLargeButton;
    BLBCAD_VEN: TdxBarLargeButton;
    BLBCAD_CNI: TdxBarLargeButton;
    BLBCAD_TRA: TdxBarLargeButton;
    BLBCAD_FOR: TdxBarLargeButton;
    BLGCAD_PRO: TdxBarLargeButton;
    BLGCAD_PRO_COR: TdxBarLargeButton;
    BLGCAD_PRO_ETP: TdxBarLargeButton;
    BLGCAD_PRO_FCT: TdxBarLargeButton;
    BLGCAD_PRO_ETQ: TdxBarLargeButton;
    BLGCAD_PRO_COL: TdxBarLargeButton;
    BLGCAD_PRO_SEG: TdxBarLargeButton;
    BLGCAD_PRO_GRP: TdxBarLargeButton;
    BLGCAD_PRO_SGP: TdxBarLargeButton;
    BLGCAD_PRO_CAT: TdxBarLargeButton;
    BLGCAD_PRO_SCT: TdxBarLargeButton;
    BLBEST_EDI: TdxBarLargeButton;
    BLBEST_ADM: TdxBarLargeButton;
    BLBEST_ETQ: TdxBarLargeButton;
    BLBEST_QLD: TdxBarLargeButton;
    BLBEXP_COL: TdxBarLargeButton;
    BLBEXP_MAN: TdxBarLargeButton;
    BLBCTNR_ADM: TdxBarLargeButton;
    BLBTCTNR_CTS: TdxBarLargeButton;
    BSIEstoque: TdxBarSubItem;
    BDIExpedicao: TdxBarSubItem;
    BSIContainers: TdxBarSubItem;
    BLBPED_PDC_EDI: TdxBarLargeButton;
    BLBPED_PDC_ADM: TdxBarLargeButton;
    BLBPED_PDP_EDI: TdxBarLargeButton;
    BLBPED_PDP_ADM: TdxBarLargeButton;
    BLBPED_PDV_EDI: TdxBarLargeButton;
    BLBPED_PDV_ADM: TdxBarLargeButton;
    BLBPED_PDV_PRZ: TdxBarLargeButton;
    BLBROM_VEN_EDI: TdxBarLargeButton;
    BLBVEN_ROM_ADM: TdxBarLargeButton;
    BLBNFE_EDI: TdxBarLargeButton;
    BLBNFE_ADM: TdxBarLargeButton;
    BLBNFE_EDI_TRC: TdxBarLargeButton;
    BLBNFE_CFOP: TdxBarLargeButton;
    BLBCFE_EDI: TdxBarLargeButton;
    BLBCFE_ADM: TdxBarLargeButton;
    BLBFIN_REC_BAN_ADM: TdxBarLargeButton;
    BLBFIN_REC_BAN_BAI: TdxBarLargeButton;
    BLBFIN_REC_DUP: TdxBarLargeButton;
    BLBFIN_REC_BOL: TdxBarLargeButton;
    BLBFIN_REC_CAR_BAI: TdxBarLargeButton;
    BLBFIN_PAG_ADM: TdxBarLargeButton;
    BLBFIN_PAG_CMV: TdxBarLargeButton;
    BLBFIN_CHQ_EDI: TdxBarLargeButton;
    BLBFIN_CHQ_ADM: TdxBarLargeButton;
    BLBCAI_ABR_DIN: TdxBarLargeButton;
    BLBCAI_RAB: TdxBarLargeButton;
    BLBCAI_FEC: TdxBarLargeButton;
    BLBCAI_LSS: TdxBarLargeButton;
    BLBCAI_TSS: TdxBarLargeButton;
    BLBCAI_FLC: TdxBarLargeButton;
    BLBTAB_PRZ: TdxBarLargeButton;
    BLBTAB_COB: TdxBarLargeButton;
    BLBTAB_PED: TdxBarLargeButton;
    BLBTAB_NCM: TdxBarLargeButton;
    BLBTAB_UCOM: TdxBarLargeButton;
    BLBTAB_IBGE: TdxBarLargeButton;
    BLBTAB_CFOP: TdxBarLargeButton;
    BLBTAB_ICMS: TdxBarLargeButton;
    BLBTAB_ICMS_ST: TdxBarLargeButton;
    BLBTAB_ORIG: TdxBarLargeButton;
    BSICompras: TdxBarSubItem;
    BSIProgramados: TdxBarSubItem;
    BSIRomaneios: TdxBarSubItem;
    BSICheques: TdxBarSubItem;
    BSICaixa: TdxBarSubItem;
    BSIRelatorios: TdxBarSubItem;
    BSIConteudo: TdxBarSubItem;
    dxBarSubItem1: TdxBarSubItem;
    BLBREL_EST_EPE: TdxBarLargeButton;
    BLBREL_EST_EPP: TdxBarLargeButton;
    BLBREL_EST_ERS: TdxBarLargeButton;
    BLBREL_EST_ESP: TdxBarLargeButton;
    PMREL_EST: TdxBarPopupMenu;
    BLBREL_EST_EFI: TdxBarLargeButton;
    BLBREL_EST_ETQ: TdxBarLargeButton;
    BLBREL_EST_QLD: TdxBarLargeButton;
    BLBREL_EST_INV: TdxBarLargeButton;
    BBREL_EST: TdxBarButton;
    BBREL_EST_UCOM: TdxBarButton;
    BBREL_PRO: TdxBarButton;
    BBREL_COL: TdxBarButton;
    BBREL_SEG: TdxBarButton;
    BBREL_GRP: TdxBarButton;
    BBREL_SGP: TdxBarButton;
    BBREL_CAT: TdxBarButton;
    BBREL_SCT: TdxBarButton;
    BBREL_CLI: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    BLBSHE_ABOUT: TdxBarLargeButton;
    BLBUT_NFE_PSQ: TdxBarLargeButton;
    BLBUT_CFE_PRN: TdxBarLargeButton;
    BLBUSER_PASS: TdxBarLargeButton;
    BLBUT_SHE_PRN: TdxBarLargeButton;
    BLBSHE_PAR: TdxBarLargeButton;
    BLBSHE_BKP: TdxBarLargeButton;
    BLBSaida: TdxBarLargeButton;
    BLBMenuSaida: TdxBarSubItem;
    SSIPCP_CAD_PRO_ADM: TdxStoredSideItem;
    AMPrincipal: TActionManager;
    ACTSHE_PRN: TAction;
    ACTSHE_PRN_EXE: TAction;
    ACTUSER_LOG: TAction;
    ACTUSER_PAS: TAction;
    ACTSHE_PAR: TAction;
    ACTSHE_BKP: TAction;
    ACTSHE_ABOUT: TAction;
    ACTSaida: TAction;
    ACTSHE_DENIED: TAction;
    SSIPCP_PED_PDV_ADM: TdxStoredSideItem;
    BLGCAD_PRO_TAM: TdxBarLargeButton;
    BLBNFE_PSQ: TdxBarLargeButton;
    BLBFIN_REC_CAR_ADM: TdxBarButton;
    BLBTAB_PAIS: TdxBarLargeButton;
    SSIPCP_CAD_PRO_EST_EXP_MAN: TdxStoredSideItem;
    SSIPCP_CAD_PRO_EST_EXP_COL: TdxStoredSideItem;
    SSIPCP_CAD_PRO_EST_ADM: TdxStoredSideItem;
    SSIPCP_CAD_PRO_EST_ETQ: TdxStoredSideItem;
    ACTPED_PDV_ADM: TAction;
    ACTCAD_PRO_ADM: TAction;
    ACTCAD_PRO_EST_ADM: TAction;
    ACTCAD_PRO_EST_LAN: TAction;
    ACTCAD_PRO_EST_EXP_COL: TAction;
    ACTCAD_PRO_EST_EXP_MAN: TAction;
    ACTCAD_PRO_EST_ETQ: TAction;
    PNLRodape: TPanel;
    SBRodape: TdxStatusBar;
    PNLRodapeTOP: TPanel;
    PNLSyncEvent: TPanel;
    GFASyncEvent: TRxGIFAnimator;
    BLBUSER_LOG: TdxBarLargeButton;
    BLBUT_NFE_SAI: TdxBarLargeButton;
    ACTNFE_SAI: TAction;
    ILPrincipal: TImageList;
    ACTComissoes: TAction;
    BLBComissoes: TdxBarLargeButton;
    BSIAdmin: TdxBarSubItem;
    ACTPED_PDC_ADM: TAction;
    ACTCAI_ABR_PAD: TAction;
    ACTCAI_ABR_DIN: TAction;
    ACTCAI_RAB: TAction;
    ACTCAI_FEC: TAction;
    ACTCAI_LSS: TAction;
    ACTCAI_TSS: TAction;
    ACTCAI_FLC: TAction;
    BLBCAI_ABR_PAD: TdxBarButton;
    ACTCAD_PRO_SCT: TAction;
    SSIPDC_PED_PDC_ADM: TdxStoredSideItem;
    SSIPDC_PED_PDV_ADM: TdxStoredSideItem;
    SSIPDC_CAD_PRO_ADM: TdxStoredSideItem;
    SSIPDC_CAD_PRO_EST_ADM: TdxStoredSideItem;
    SSIPDC_CAD_PRO_EST_ETQ: TdxStoredSideItem;
    SSIPDC_CAD_PRO_EST_EXP_MAN: TdxStoredSideItem;
    SSIPDC_CAD_PRO_EST_EXP_COL: TdxStoredSideItem;
    SSIPDC_CAD_PRO_SCT: TdxStoredSideItem;
    procedure BLBUT_NFE_PSQClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function GeraNFe(ide, emit, dest : Array of shortstring; detProd : ArrayBi;
                 total, transp, cobr, pag, infAdic, autXML : array of shortstring; assinar : boolean = false) : shortstring; StdCall; External dllNfe; far;

function AssinaArquivoXML(pathArquivo,tagURI : shortstring) : shortstring; stdcall; External dllNfe; far;

function GerarLote(idLote : integer; pathNFe : shortstring; listarArquivos : boolean = true) : integer; stdcall; External dllNfe; far;

function GeraDPEC(pathNFe : ShortString) : Integer;  stdcall; External dllNfe; far;

function GeraEPEC(pathNFe : ShortString) : Integer;  stdcall; External dllNfe; far;

function ImprimeDanfe(pathXML,pathPDF: shortstring; tipoImp : integer; formSeguranca : boolean) : boolean; stdcall; External dllNfe; far;

function ImprimeDanfeEscolheImp(pathXML,pathPDF,nomeImp: shortstring; tipoImp : integer; formSeguranca : boolean) : boolean; stdcall; External dllNfe; far;

function ImprimeDPEC(pathXML, pathPDF: ShortString; tipoImp : integer; nProtDpec: shortstring) : boolean; stdcall; External dllNfe; far;

function ImprimeEPEC(pathXML, pathPDF: ShortString; tipoImp : integer; nProtDpec: shortstring) : boolean; stdcall; External dllNfe; far;

function ImprimeCCe(pathCCe, pathPDF : shortstring; tipoImp : integer) : boolean; stdcall; External dllNfe; far;

function ValidarArquivoXML(pathArquivo : shortstring; schema : shortstring; exbForm : boolean = true) : ShortString; stdcall; External dllNfe; far;

function NfeStatusServico : shortstring; stdcall; External dllNfe; far;

function NFeRecepcao(pathLoteXML : shortstring) : shortstring; stdcall; External dllNfe; far

function NFeAutorizacao(pathLoteXML : shortstring) : WideString; stdcall; External dllNfe; far

function NfeRetAutorizacao(nRec : shortstring) : WideString; stdcall; External dllNfe; far

function RecepcaoDPEC(pathDPECXML : shortstring) : shortstring; stdcall; External dllNfe; far

function RecepcaoEPEC(pathDPECXML : shortstring) : shortstring; stdcall; External dllNfe; far

function NFeConsulta(chNFe : WideString) : WideString; stdcall; External dllNfe; far;

Function DPECConsulta(ChaveRegDPEC:ShortString):ShortString;stdcall external dllNfe; far;

function EPECConsulta(chaveRegEPEC : ShortString) : ShortString; stdcall; external dllNfe; far;

function NfeInutilizacao(ano, nNFIni, nNFFin, xJust : shortstring; serie : shortstring = '') : shortstring; stdcall; External dllNfe; far;

function NFeCancelamento(chNFe, nProt, xJust : shortstring) : shortstring; stdcall; External dllNfe; far;

function NFeCancelamentoEvento(chNFe, nProt, idLote, nSeqEvento,  xJust : shortstring) : shortstring; stdcall; External dllNfe; far;

function NfeRetRecepcao(nRec : shortstring) : boolean; stdcall; External dllNfe; far;

function ArquivoDistribuicaoNFe(chNFe : shortstring) : shortstring; stdcall; External dllNfe; far;

function EnviaEmail(emailDest, assunto, msg, pathFile : IString) : boolean; stdcall; External dllNfe; far; overload; //v6.3.2

function NFeCadastro(UF, CNPJ : shortstring) : IString; stdcall; External dllNfe; far; //v6.4.1

function GeraCCe(chnfe, seq, tpEvento, dhEvento : shortstring; xCorrecao : array of shortstring) : shortstring; stdcall; External dllNfe; far; //v6.4.1

function GeraManifestacao(chnfe, seq, tpEvento, dhEvento, xJust : ShortString) : ShortString; stdcall; External dllNfe; far; //v6.6.5

function NFeDistribuicaoDFe(DFechNFe, DFeNSU : ShortString; DFeultNSU : boolean)  : ShortString; stdcall; External dllNfe; far;

function ConsultaDest(indNFe, indEmi, ultNSU : ShortString) : ShortString; stdcall; External dllNfe; far; //v6.6.5

function DonwloadNFe(chNFe, pathNFe : ShortString) : ShortString; stdcall; External dllNfe; far; //v6.6.5

function CarregaFCI(pathXml, pathFile : shortstring) : boolean; stdcall; External dllNfe; far; //v6.6.5

function ConsultaVersao : ShortString; stdcall; external dllNfe; far;

function EventoEntrega(idLote, chNfe, seqEvento, dhEntrega, nDoc, xNome, latlongGps : shortstring) : shortstring; stdcall;  external dllNfe; far;

function EventoEntregaInsucesso(idLote, chNfe, seqEvento, dhEntregaTentativa, nTentativa, tpMotivo, xMotivo, latlongGps : shortstring) : shortstring; stdcall;  external dllNfe; far;

function VersaoDLL () : WideString; stdcall; external dllNfe; far;

function ImprimeDanfeSimplificado(pathXML : ShortString; tipoImp : integer; formSeguranca : boolean) : boolean;  stdcall;  external dllNfe; far;

function ConsultaGtin(chave : shortstring) : shortstring; stdcall; External dllNfe; far;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.BLBUT_NFE_PSQClick(Sender: TObject);
var
 ret: shortstring;
begin
 ret:='';
 ret:=NfeStatusServico;
 showmessage(ret);
end;

end.

