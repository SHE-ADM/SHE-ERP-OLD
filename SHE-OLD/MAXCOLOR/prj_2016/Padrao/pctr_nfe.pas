unit pctr_nfe;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, DB, IBStoredProc, IBEvents,
  IBDatabase, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ComCtrls, ExtCtrls, dxDBTLCl, dxGrClms, DBCtrls, StdCtrls,
  dxPageControl, dxEditor, dxEdLib, dxExEdtr, DateUtils, Menus, Shellapi,
  dxDBELib, Registry,StrInt, StrIntImp, Xmlxform, xmldom, XMLIntf, msxmldom, XMLDoc,
  FMTBcd, rxSpeedbar;

const
  dllNFe = 'NFe.dll';

type
  Tfrmctr_nfe = class(Tfrmpadr1)
    siCNF: TSpeedItem;
    siCON: TSpeedItem;
    siENV: TSpeedItem;
    siVIS: TSpeedItem;
    siTRI: TSpeedItem;
    cadastroID: TIntegerField;
    cadastroNFE_CDNF: TIntegerField;
    cadastroNFE_AAMM: TIBStringField;
    cadastroNFE_DEMI: TDateField;
    cadastroNFE_DSAI: TDateField;
    cadastroNFE_HRSE: TTimeField;
    cadastroNFE_CFAV: TIntegerField;
    cadastroNFE_CNAT: TIBStringField;
    cadastroNFE_INDPAG: TSmallintField;
    cadastroNFE_TPNF: TSmallintField;
    cadastroNFE_NFREF: TSmallintField;
    cadastroNFE_REFNFE: TIBStringField;
    cadastroNFE_CUFREF: TIBStringField;
    cadastroNFE_AAMMREF: TIBStringField;
    cadastroNFE_CNPJREF: TIBStringField;
    cadastroNFE_MODREF: TIBStringField;
    cadastroNFE_SERIEREF: TIBStringField;
    cadastroNFE_NNFREF: TIntegerField;
    cadastroNFE_TPEMIS: TSmallintField;
    cadastroNFE_FINNFE: TSmallintField;
    cadastroNFE_PROCEMI: TIBStringField;
    cadastroNFE_VERPROC: TIBStringField;
    cadastroNFE_DHCONT: TDateTimeField;
    cadastroNFE_XJUST: TMemoField;
    cadastroNFE_ISUF: TIBStringField;
    cadastroNFE_VBC: TIBBCDField;
    cadastroNFE_VICMS: TIBBCDField;
    cadastroNFE_VBCST: TIBBCDField;
    cadastroNFE_VST: TIBBCDField;
    cadastroNFE_VPROD: TIBBCDField;
    cadastroNFE_VFRETE: TIBBCDField;
    cadastroNFE_VSEG: TIBBCDField;
    cadastroNFE_VDESC: TIBBCDField;
    cadastroNFE_VII: TIBBCDField;
    cadastroNFE_VIPI: TIBBCDField;
    cadastroNFE_VPIS: TIBBCDField;
    cadastroNFE_VCOFINS: TIBBCDField;
    cadastroNFE_VOUTRO: TIBBCDField;
    cadastroNFE_VNF: TIBBCDField;
    cadastroNFE_VSERVISSQN: TIBBCDField;
    cadastroNFE_VBCISSQN: TIBBCDField;
    cadastroNFE_VISS: TIBBCDField;
    cadastroNFE_VPISISSQN: TIBBCDField;
    cadastroNFE_VCOFINSISSQN: TIBBCDField;
    cadastroNFE_VRETPIS: TIBBCDField;
    cadastroNFE_VRETCOFINS: TIBBCDField;
    cadastroNFE_VRETCSLL: TIBBCDField;
    cadastroNFE_VBCIRRF: TIBBCDField;
    cadastroNFE_VIRRF: TIBBCDField;
    cadastroNFE_VBCRETPREV: TIBBCDField;
    cadastroNFE_VRETPREV: TIBBCDField;
    cadastroNFE_CHAV: TIBStringField;
    cadastroNFE_PROT: TIBStringField;
    cadastroNFE_PROC: TIBStringField;
    cadastroNFE_STA: TIBStringField;
    cadastroNFE_DFAV: TIBStringField;
    dbgConsultaNFE_CDNF: TdxDBGridMaskColumn;
    dbgConsultaNFE_DEMI: TdxDBGridDateColumn;
    dbgConsultaNFE_CNAT: TdxDBGridMaskColumn;
    dbgConsultaNFE_VICMS: TdxDBGridMaskColumn;
    dbgConsultaNFE_VPROD: TdxDBGridMaskColumn;
    dbgConsultaNFE_VIPI: TdxDBGridMaskColumn;
    dbgConsultaNFE_VPIS: TdxDBGridMaskColumn;
    dbgConsultaNFE_VCOFINS: TdxDBGridMaskColumn;
    dbgConsultaNFE_VNF: TdxDBGridMaskColumn;
    dbgConsultaNFE_DFAV: TdxDBGridMaskColumn;
    pcmain: TdxPageControl;
    tspro: TdxTabSheet;
    tsobs: TdxTabSheet;
    dbgite: TdxDBGrid;
    nfe_ite: TIBQuery;
    dtsnfe_ite: TDataSource;
    nfe_iteID: TIntegerField;
    nfe_iteNFE_CCAB: TIntegerField;
    nfe_iteNFE_CDNF: TIntegerField;
    nfe_iteNFE_INDTOT: TIntegerField;
    nfe_iteNFE_CFOP: TIBStringField;
    nfe_iteNFE_CART: TIBStringField;
    nfe_iteNFE_CPROD: TIBStringField;
    nfe_iteNFE_CEAN: TIBStringField;
    nfe_iteNFE_NCM: TIBStringField;
    nfe_iteNFE_EXTIPI: TIBStringField;
    nfe_iteNFE_DCOR: TIBStringField;
    nfe_iteNFE_XPROD: TIBStringField;
    nfe_iteNFE_INFADPROD: TMemoField;
    nfe_iteNFE_UCOM: TIBStringField;
    nfe_iteNFE_QCOM: TIBBCDField;
    nfe_iteNFE_RCOM: TIntegerField;
    nfe_iteNFE_VPROD: TIBBCDField;
    nfe_iteNFE_VFRETE: TIBBCDField;
    nfe_iteNFE_VSEG: TIBBCDField;
    nfe_iteNFE_VDESC: TIBBCDField;
    nfe_iteNFE_VOUTRO: TIBBCDField;
    nfe_iteNFE_XLOCEMBARQ: TIBStringField;
    nfe_iteNFE_UFEMBARQ: TIBStringField;
    nfe_iteNFE_NDI: TIBStringField;
    nfe_iteNFE_DDI: TDateField;
    nfe_iteNFE_XLOCDESEMB: TIBStringField;
    nfe_iteNFE_UFDESEMB: TIBStringField;
    nfe_iteNFE_DDESEMB: TDateField;
    nfe_iteNFE_CEXPORTADOR: TIBStringField;
    nfe_iteNFE_NADICAO: TSmallintField;
    nfe_iteNFE_NSEQADIC: TSmallintField;
    nfe_iteNFE_CFABRICANTE: TIBStringField;
    nfe_iteNFE_VDESCDI: TIBBCDField;
    nfe_iteNFE_XPED: TIBStringField;
    nfe_iteNFE_ITEMPED: TIBStringField;
    nfe_iteNFE_ORIG: TIBStringField;
    nfe_iteNFE_CST: TIBStringField;
    nfe_iteNFE_MODBC: TIBStringField;
    nfe_iteNFE_PREDBC: TIBBCDField;
    nfe_iteNFE_VBC: TIBBCDField;
    nfe_iteNFE_PICMS: TIBBCDField;
    nfe_iteNFE_VICMS: TIBBCDField;
    nfe_iteNFE_MODBCST: TIBStringField;
    nfe_iteNFE_MVAST: TIBBCDField;
    nfe_iteNFE_PREDBCST: TIBBCDField;
    nfe_iteNFE_VBCST: TIBBCDField;
    nfe_iteNFE_VBCSTRET: TIBBCDField;
    nfe_iteNFE_VICMSSTRET: TIBBCDField;
    nfe_iteNFE_PICMSST: TIBBCDField;
    nfe_iteNFE_VICMSST: TIBBCDField;
    nfe_iteNFE_PCREDSN: TIBBCDField;
    nfe_iteNFE_VCREDICMSSN: TIBBCDField;
    nfe_iteNFE_CSTIPI: TIBStringField;
    nfe_iteNFE_VBCIPI: TIBBCDField;
    nfe_iteNFE_PIPI: TIBBCDField;
    nfe_iteNFE_VIPI: TIBBCDField;
    nfe_iteNFE_VBCIMP: TIBBCDField;
    nfe_iteNFE_VDESPADU: TIBBCDField;
    nfe_iteNFE_VIIIMP: TIBBCDField;
    nfe_iteNFE_VIOFIMP: TIBBCDField;
    nfe_iteNFE_CSTPIS: TIBStringField;
    nfe_iteNFE_VBCPIS: TIBBCDField;
    nfe_iteNFE_PPIS: TIBBCDField;
    nfe_iteNFE_VPIS: TIBBCDField;
    nfe_iteNFE_VBCPISST: TIBBCDField;
    nfe_iteNFE_PPISST: TIBBCDField;
    nfe_iteNFE_VPISST: TIBBCDField;
    nfe_iteNFE_CSTCOFINS: TIBStringField;
    nfe_iteNFE_VBCOFINS: TIBBCDField;
    nfe_iteNFE_PCOFINS: TIBBCDField;
    nfe_iteNFE_VCOFINS: TIBBCDField;
    nfe_iteNFE_VBCOFINSST: TIBBCDField;
    nfe_iteNFE_PCOFINSST: TIBBCDField;
    nfe_iteNFE_VCOFINSST: TIBBCDField;
    nfe_iteNFE_VBCISSQN: TIBBCDField;
    nfe_iteNFE_VALIQISSQN: TIBBCDField;
    nfe_iteNFE_VISSQN: TIBBCDField;
    nfe_iteNFE_CMUNFGISSQN: TIBStringField;
    nfe_iteNFE_CLISTSERV: TIntegerField;
    nfe_iteNFE_VNF: TIBBCDField;
    dbgiteNFE_CPROD: TdxDBGridMaskColumn;
    dbgiteNFE_XPROD: TdxDBGridMaskColumn;
    dbgiteNFE_UCOM: TdxDBGridMaskColumn;
    dbgiteNFE_QCOM: TdxDBGridMaskColumn;
    dbgiteNFE_VUNCOM: TdxDBGridMaskColumn;
    dbgiteNFE_VPROD: TdxDBGridMaskColumn;
    dbgiteNFE_ITEMPED: TdxDBGridMaskColumn;
    dbgiteNFE_PIPI: TdxDBGridMaskColumn;
    dbgiteNFE_VIPI: TdxDBGridMaskColumn;
    dbgiteNFE_VPIS: TdxDBGridMaskColumn;
    dbgiteNFE_VCOFINS: TdxDBGridMaskColumn;
    dbgiteNFE_VNF: TdxDBGridMaskColumn;
    dbgiteNFE_VDESC: TdxDBGridMaskColumn;
    dxDBMemo1: TdxDBMemo;
    cadastroNFE_OBSE: TMemoField;
    dbgConsultaNFE_STA: TdxDBGridMaskColumn;
    siCCE: TSpeedItem;
    aux: TIBQuery;
    dbgiteNFE_NCM: TdxDBGridMaskColumn;
    dbgiteNFE_CFOP: TdxDBGridMaskColumn;
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
    aux2: TIBQuery;
    nfe_tra: TIBQuery;
    nfe_traID: TIntegerField;
    nfe_traNFE_CCAB: TIntegerField;
    nfe_traNFE_CTRA: TIntegerField;
    nfe_traNFE_MODFRETE: TIBStringField;
    nfe_traNFE_RETTRANSP: TIBStringField;
    nfe_traNFE_VSERV: TIBBCDField;
    nfe_traNFE_VBCRET: TIBBCDField;
    nfe_traNFE_PICMSRET: TIBBCDField;
    nfe_traNFE_VICMSRET: TIBBCDField;
    nfe_traNFE_CFOP: TIBStringField;
    nfe_traNFE_CMUNFG: TIBStringField;
    nfe_traNFE_PLACA: TIBStringField;
    nfe_traNFE_UF: TIBStringField;
    nfe_traNFE_RNTC: TIBStringField;
    nfe_traNFE_QVOL: TSmallintField;
    nfe_traNFE_ESP: TIBStringField;
    nfe_traNFE_MARCA: TIBStringField;
    nfe_traNFE_NVOL: TIBStringField;
    nfe_traNFE_PSLQ: TIBBCDField;
    nfe_traNFE_PSBR: TIBBCDField;
    nfe_traNFE_NLACRE: TIBStringField;
    cadastroNFE_DCAN: TDateField;
    cadastroNFE_HCAN: TTimeField;
    cadastroNFE_CVEN: TIntegerField;
    cadastroNFE_DVEN: TIBStringField;
    cadastroNFE_CREP: TIntegerField;
    cadastroNFE_DREP: TIBStringField;
    cadastroNFE_CTRA: TIntegerField;
    cadastroNFE_DTRA: TIBStringField;
    cadastroNFE_QCOM: TIBBCDField;
    cadastroNFE_CONC: TSmallintField;
    cadastroNFE_CLFO: TIBStringField;
    dbgConsultaNFE_DVEN: TdxDBGridMaskColumn;
    dbgConsultaNFE_DREP: TdxDBGridMaskColumn;
    fin_rec_baiFIN_RCLI: TIBStringField;
    fin_rec_baiFIN_RREP: TIBStringField;
    fin_rec_baiFIN_DBAI: TDateField;
    fin_rec_baiFIN_VENC: TIBBCDField;
    cadastroNFE_ESTO: TIBStringField;
    nfe_iteNFE_VUNCOM: TFloatField;
    fin_rec_baiFIN_CDRD: TIntegerField;
    fin_rec_baiFIN_DFIN: TIBStringField;
    fin_rec_baiFIN_CPPL: TIntegerField;
    fin_rec_baiFIN_CCUS: TIntegerField;
    fin_rec_baiFIN_CDCO: TIntegerField;
    fin_rec_baiFIN_CDBA: TIBStringField;
    fin_rec_baiFIN_DEBA: TIBStringField;
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
    Consulta_S: TIBQuery;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siCONClick(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure cadastroAfterPost(DataSet: TDataSet);
    procedure cadastroAfterOpen(DataSet: TDataSet);
    procedure siEVEClick(Sender: TObject);
    procedure siENVClick(Sender: TObject);
    procedure siVISClick(Sender: TObject);
    procedure siCCEClick(Sender: TObject);
    procedure siPSQClick(Sender: TObject);
    procedure siRELClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure siTRIClick(Sender: TObject);
    procedure siCNFClick(Sender: TObject);
  private
    { Private declarations }
    protocolo: string;
    procedure BAIXA_ESTOQUE;
    procedure ABRE_TABELA;
    procedure CANCELA_CDNF;
    procedure GERA_DANFE;
    procedure CANCELA_CAIXA_CARTEIRA(cdbx: integer;drom: TDate);
    procedure CANCELA_CAIXA_BANCARIO(cdbx: integer;drom: TDate);
    function  RETORNA_ID_PRODUTO: integer;
  public
    { Public declarations }
  end;

{ NFe V7.03 Nota Técnica 2016.002 }
function ImprimeDanfe(pathXML,pathPDF: shortstring; tipoImp : integer; formSeguranca : boolean) : boolean; stdcall; External dllNfe; far;
function ImprimeDanfeEscolheImp(pathXML,pathPDF,nomeImp: shortstring; tipoImp : integer; formSeguranca : boolean) : boolean; stdcall; External dllNfe; far;
function NFeCancelamento(chNFe, nProt, xJust : shortstring) : shortstring; stdcall; External dllNfe; far;
function NFeCancelamentoEvento(chNFe, nProt, idLote, nSeqEvento,  xJust : shortstring) : shortstring; stdcall; External dllNfe; far;

var
  frmctr_nfe: Tfrmctr_nfe;
  Ano, Mes, Dia: Word;

implementation

uses uPrincipal, pcad_cli, pcad_for, pven_npr, pemail, qnfe_ger,
  plog_eve, pven_nfe, pnfe_cce, ppesquisa, prelatorio_geral;

{$R *.dfm}
{$I+}

procedure Tfrmctr_nfe.FormCreate(Sender: TObject);
var
  data_sistema: tdate;
begin
  data_sistema := strtodate(SLPrincipal.Values['data_sistema']);
  cEvent := 'NFE_CAB';
  inherited;

  ABRE_TABELA;
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM '+SLPrincipal.Values['nfe_cab']);
    SelectSQL.Add('WHERE    NFE_DEMI BETWEEN '''+formatDateTime('mm/dd/yy',StartOfTheMonth(DATA_SISTEMA))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(DATA_SISTEMA))+'''');
    SelectSQL.Add('ORDER BY ID DESC');
    Prepare;
  end;
end;

procedure Tfrmctr_nfe.FormDestroy(Sender: TObject);
begin
  inherited;
  frmctr_nfe := Nil;
end;

function Tfrmctr_nfe.RETORNA_ID_PRODUTO: integer;
var
  ID_PRODUTO: integer;
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_PRO');
    SQL.Add('WHERE  PRO_CPRO = '''+nfe_iteNFE_CPROD.AsString+'''');
    Open;

    ID_PRODUTO := fields[0].AsInteger;
  end;

  result := ID_PRODUTO;
end;

procedure Tfrmctr_nfe.GERA_DANFE;
var
  NOME_ARQ: string;
  NOME_FIL: string;
begin
  Screen.cursor:=crAppStart;
  DecodeDate(cadastroNFE_DEMI.AsDateTime, Ano, Mes, Dia);

  NOME_ARQ := 'C:\Sheild\NotaFiscal\PDF\'+oStrZero(cadastroNFE_CDNF.AsInteger,6)+'.PDF';
  NOME_FIL := 'C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\'+oStrZero(ano,4)+oStrZero(mes,2)+'\'+trim(cadastroNFE_CHAV.AsString)+'-procNFe.xml';

  if not fileexists(NOME_FIL) then
  sbMSG.Panels[1].Text := ArquivoDistribuicaoNFe(cadastroNFE_CHAV.AsString);

  if (not fileexists(NOME_ARQ)) and (fileexists(NOME_FIL)) then
  begin
    ImprimeDanfe(NOME_FIL,NOME_ARQ,2,false);
    SleepEx(500,False);
  end;
  Screen.cursor:=crDefault;
end;

procedure Tfrmctr_nfe.ABRE_TABELA;
begin
  with cadastro do
  begin
    DeleteSQL.Clear;
    DeleteSQL.Add('delete from '+SLPrincipal.Values['nfe_cab']);
    DeleteSQL.Add('where');
    DeleteSQL.Add('ID = :OLD_ID');

    InsertSQL.Clear;
    InsertSQL.Add('insert into '+SLPrincipal.Values['nfe_cab']);
    InsertSQL.Add('  (ID, NFE_AAMM, NFE_AAMMREF, NFE_CDNF, NFE_CFAV, NFE_CHAV, NFE_CLFO, NFE_CNAT,');
    InsertSQL.Add('   NFE_CNPJREF, NFE_CONC, NFE_CREP, NFE_CTRA, NFE_CUFREF, NFE_CVEN, NFE_DCAN,'); 
    InsertSQL.Add('   NFE_DEMI, NFE_DFAV, NFE_DHCONT, NFE_DREP, NFE_DSAI, NFE_DTRA, NFE_DVEN,NFE_ESTO,'); 
    InsertSQL.Add('   NFE_FINNFE, NFE_HCAN, NFE_HRSE, NFE_INDPAG, NFE_ISUF, NFE_MODREF, NFE_NFREF,'); 
    InsertSQL.Add('   NFE_NNFREF, NFE_OBSE, NFE_PROC, NFE_PROCEMI, NFE_PROT, NFE_QCOM, NFE_REFNFE,'); 
    InsertSQL.Add('   NFE_SERIEREF, NFE_STA, NFE_TPEMIS, NFE_TPNF, NFE_VBC, NFE_VBCIRRF, NFE_VBCISSQN,'); 
    InsertSQL.Add('   NFE_VBCRETPREV, NFE_VBCST, NFE_VCOFINS, NFE_VCOFINSISSQN, NFE_VDESC,'); 
    InsertSQL.Add('   NFE_VERPROC, NFE_VFRETE, NFE_VICMS, NFE_VII, NFE_VIPI, NFE_VIRRF, NFE_VISS,'); 
    InsertSQL.Add('   NFE_VNF, NFE_VOUTRO, NFE_VPIS, NFE_VPISISSQN, NFE_VPROD, NFE_VRETCOFINS,'); 
    InsertSQL.Add('   NFE_VRETCSLL, NFE_VRETPIS, NFE_VRETPREV, NFE_VSEG, NFE_VSERVISSQN, NFE_VST,'); 
    InsertSQL.Add('   NFE_XJUST)'); 
    InsertSQL.Add('values'); 
    InsertSQL.Add('  (:ID, :NFE_AAMM, :NFE_AAMMREF, :NFE_CDNF, :NFE_CFAV, :NFE_CHAV, :NFE_CLFO,'); 
    InsertSQL.Add('   :NFE_CNAT, :NFE_CNPJREF, :NFE_CONC, :NFE_CREP, :NFE_CTRA, :NFE_CUFREF,'); 
    InsertSQL.Add('   :NFE_CVEN, :NFE_DCAN, :NFE_DEMI, :NFE_DFAV, :NFE_DHCONT, :NFE_DREP,'); 
    InsertSQL.Add('   :NFE_DSAI, :NFE_DTRA, :NFE_DVEN, :NFE_ESTO, :NFE_FINNFE, :NFE_HCAN, :NFE_HRSE,'); 
    InsertSQL.Add('   :NFE_INDPAG, :NFE_ISUF, :NFE_MODREF, :NFE_NFREF, :NFE_NNFREF, :NFE_OBSE,'); 
    InsertSQL.Add('   :NFE_PROC, :NFE_PROCEMI, :NFE_PROT, :NFE_QCOM, :NFE_REFNFE, :NFE_SERIEREF,'); 
    InsertSQL.Add('   :NFE_STA, :NFE_TPEMIS, :NFE_TPNF, :NFE_VBC, :NFE_VBCIRRF, :NFE_VBCISSQN,'); 
    InsertSQL.Add('   :NFE_VBCRETPREV, :NFE_VBCST, :NFE_VCOFINS, :NFE_VCOFINSISSQN, :NFE_VDESC,'); 
    InsertSQL.Add('   :NFE_VERPROC, :NFE_VFRETE, :NFE_VICMS, :NFE_VII, :NFE_VIPI, :NFE_VIRRF,'); 
    InsertSQL.Add('   :NFE_VISS, :NFE_VNF, :NFE_VOUTRO, :NFE_VPIS, :NFE_VPISISSQN, :NFE_VPROD,');
    InsertSQL.Add('   :NFE_VRETCOFINS, :NFE_VRETCSLL, :NFE_VRETPIS, :NFE_VRETPREV, :NFE_VSEG,'); 
    InsertSQL.Add('   :NFE_VSERVISSQN, :NFE_VST, :NFE_XJUST)'); 

    ModifySQL.Clear;
    ModifySQL.Add('update '+SLPrincipal.Values['nfe_cab']);
    ModifySQL.Add('set');
    ModifySQL.Add('  ID = :ID,');
    ModifySQL.Add('  NFE_AAMM = :NFE_AAMM,');
    ModifySQL.Add('  NFE_AAMMREF = :NFE_AAMMREF,');
    ModifySQL.Add('  NFE_CDNF = :NFE_CDNF,');
    ModifySQL.Add('  NFE_CFAV = :NFE_CFAV,');
    ModifySQL.Add('  NFE_CHAV = :NFE_CHAV,');
    ModifySQL.Add('  NFE_CLFO = :NFE_CLFO,');
    ModifySQL.Add('  NFE_CNAT = :NFE_CNAT,');
    ModifySQL.Add('  NFE_CNPJREF = :NFE_CNPJREF,');
    ModifySQL.Add('  NFE_CONC = :NFE_CONC,');
    ModifySQL.Add('  NFE_CREP = :NFE_CREP,');
    ModifySQL.Add('  NFE_CTRA = :NFE_CTRA,');
    ModifySQL.Add('  NFE_CUFREF = :NFE_CUFREF,');
    ModifySQL.Add('  NFE_CVEN = :NFE_CVEN,');
    ModifySQL.Add('  NFE_DCAN = :NFE_DCAN,');
    ModifySQL.Add('  NFE_DEMI = :NFE_DEMI,');
    ModifySQL.Add('  NFE_DFAV = :NFE_DFAV,');
    ModifySQL.Add('  NFE_DHCONT = :NFE_DHCONT,');
    ModifySQL.Add('  NFE_DREP = :NFE_DREP,');
    ModifySQL.Add('  NFE_DSAI = :NFE_DSAI,');
    ModifySQL.Add('  NFE_DTRA = :NFE_DTRA,');
    ModifySQL.Add('  NFE_DVEN = :NFE_DVEN,');
    ModifySQL.Add('  NFE_ESTO = :NFE_ESTO,');
    ModifySQL.Add('  NFE_FINNFE = :NFE_FINNFE,');
    ModifySQL.Add('  NFE_HCAN = :NFE_HCAN,');
    ModifySQL.Add('  NFE_HRSE = :NFE_HRSE,');
    ModifySQL.Add('  NFE_INDPAG = :NFE_INDPAG,');
    ModifySQL.Add('  NFE_ISUF = :NFE_ISUF,');
    ModifySQL.Add('  NFE_MODREF = :NFE_MODREF,');
    ModifySQL.Add('  NFE_NFREF = :NFE_NFREF,');
    ModifySQL.Add('  NFE_NNFREF = :NFE_NNFREF,');
    ModifySQL.Add('  NFE_OBSE = :NFE_OBSE,');
    ModifySQL.Add('  NFE_PROC = :NFE_PROC,');
    ModifySQL.Add('  NFE_PROCEMI = :NFE_PROCEMI,');
    ModifySQL.Add('  NFE_PROT = :NFE_PROT,');
    ModifySQL.Add('  NFE_QCOM = :NFE_QCOM,');
    ModifySQL.Add('  NFE_REFNFE = :NFE_REFNFE,');
    ModifySQL.Add('  NFE_SERIEREF = :NFE_SERIEREF,');
    ModifySQL.Add('  NFE_STA = :NFE_STA,');
    ModifySQL.Add('  NFE_TPEMIS = :NFE_TPEMIS,');
    ModifySQL.Add('  NFE_TPNF = :NFE_TPNF,');
    ModifySQL.Add('  NFE_VBC = :NFE_VBC,');
    ModifySQL.Add('  NFE_VBCIRRF = :NFE_VBCIRRF,');
    ModifySQL.Add('  NFE_VBCISSQN = :NFE_VBCISSQN,');
    ModifySQL.Add('  NFE_VBCRETPREV = :NFE_VBCRETPREV,');
    ModifySQL.Add('  NFE_VBCST = :NFE_VBCST,');
    ModifySQL.Add('  NFE_VCOFINS = :NFE_VCOFINS,');
    ModifySQL.Add('  NFE_VCOFINSISSQN = :NFE_VCOFINSISSQN,');
    ModifySQL.Add('  NFE_VDESC = :NFE_VDESC,');
    ModifySQL.Add('  NFE_VERPROC = :NFE_VERPROC,');
    ModifySQL.Add('  NFE_VFRETE = :NFE_VFRETE,');
    ModifySQL.Add('  NFE_VICMS = :NFE_VICMS,');
    ModifySQL.Add('  NFE_VII = :NFE_VII,');
    ModifySQL.Add('  NFE_VIPI = :NFE_VIPI,');
    ModifySQL.Add('  NFE_VIRRF = :NFE_VIRRF,');
    ModifySQL.Add('  NFE_VISS = :NFE_VISS,');
    ModifySQL.Add('  NFE_VNF = :NFE_VNF,');
    ModifySQL.Add('  NFE_VOUTRO = :NFE_VOUTRO,');
    ModifySQL.Add('  NFE_VPIS = :NFE_VPIS,');
    ModifySQL.Add('  NFE_VPISISSQN = :NFE_VPISISSQN,');
    ModifySQL.Add('  NFE_VPROD = :NFE_VPROD,');
    ModifySQL.Add('  NFE_VRETCOFINS = :NFE_VRETCOFINS,');
    ModifySQL.Add('  NFE_VRETCSLL = :NFE_VRETCSLL,');
    ModifySQL.Add('  NFE_VRETPIS = :NFE_VRETPIS,');
    ModifySQL.Add('  NFE_VRETPREV = :NFE_VRETPREV,');
    ModifySQL.Add('  NFE_VSEG = :NFE_VSEG,');
    ModifySQL.Add('  NFE_VSERVISSQN = :NFE_VSERVISSQN,');
    ModifySQL.Add('  NFE_VST = :NFE_VST,');
    ModifySQL.Add('  NFE_XJUST = :NFE_XJUST');
    ModifySQL.Add('where');
    ModifySQL.Add('  ID = :OLD_ID');
  end;
end;

procedure Tfrmctr_nfe.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  if not ASelected then
  begin
    AFont.Color := clBlack;
    AColor      := clWhite;

    Value := ANode.Values[10];
    if not VarIsNull(Value) then
    begin
      if Value = '1' then
      begin
        AFont.Color := clwhite;
        AColor      :=  RGB(StrToInt( '$ED') ,
                            StrToInt( '$1F') ,
                            StrToInt( '$43') );
      end;
    end;
  end;
end;

procedure Tfrmctr_nfe.siCONClick(Sender: TObject);
begin
  if cadastroNFE_CHAV.AsString = '' then
  raise exception.Create('Chave não acesso não gerada !'+#13+'Favor entrar em contato com o administrador do sistema.');

  try
    frmven_npr := TFrmven_npr.Create(Self);
    frmven_npr.Caption    := 'Consulta NFe';
    frmven_npr.edchv.Text := TRIM(cadastroNFE_CHAV.AsString);
    frmven_npr.ShowModal;

    if CadastroNFE_PROT.AsString <> frmven_npr.edpro.Text then
    begin
      cadastro.Edit;
      cadastroNFE_PROT.Value := frmven_npr.edpro.Text;
      cadastro.Post;
    end;
  finally
    FreeAndNil(frmven_npr);
    GERA_DANFE;
  end;
end;

procedure Tfrmctr_nfe.cadastroBeforeEdit(DataSet: TDataSet);
begin
//  PCampo := 'USU_NFS_NFSO';
//  inherited;
end;

procedure Tfrmctr_nfe.cadastroBeforeInsert(DataSet: TDataSet);
begin
//  PCampo := 'USU_NFS_NFSO';
  inherited;
end;

procedure Tfrmctr_nfe.CANCELA_CDNF;
var
  cdbx  : Integer;
  Avulso: Boolean;
begin
  try
    with Consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM '+SLPrincipal.Values['rom_cab']);
      SQL.Add('WHERE  ROM_CDNF = '''+cadastroNFE_CDNF.AsString+'''');
      Open;
      Avulso := (fields[0].AsInteger = 0);

      SQL.Clear;
      SQL.Add('SELECT ROM_CDBX,ROM_STCO,ROM_CONC,ROM_DROM FROM '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('WHERE  ROM_CDNF = '''+cadastroNFE_CDNF.AsString+'''');
      Open;
      cdbx := fields[0].AsInteger;
    end;

    if (not avulso) and (cdbx > 0) then
    begin
      if (Consulta.Fields[1].AsString <> 'BANCÁRIO') then
      CANCELA_CAIXA_CARTEIRA(cdbx,Consulta.Fields[3].AsDateTime) else
      begin
        if Consulta.Fields[2].AsInteger > 1 then
        CANCELA_CAIXA_CARTEIRA(cdbx,Consulta.Fields[3].AsDateTime);
        CANCELA_CAIXA_BANCARIO(cdbx,Consulta.Fields[3].AsDateTime);
      end;
    end;

    with aux2 do
    begin
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['rom_cab']);
      SQL.Add('SET    ROM_STFI = ''PENDENTE'',');
      SQL.Add('       ROM_CDNF = NULL,');
      SQL.Add('       ROM_DNFS = NULL,');
      SQL.Add('       ROM_DBAI = NULL,');
      SQL.Add('       ROM_CDBX = NULL');
      SQL.Add('WHERE  ROM_CDNF = '''+cadastroNFE_CDNF.AsString+'''');
      ExecSQL;

      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('SET    ROM_STFI = ''PENDENTE'',');
      SQL.Add('       ROM_CDNF = NULL,');
      SQL.Add('       ROM_DNFS = NULL,');
      SQL.Add('       ROM_DBAI = NULL,');
      SQL.Add('       ROM_CDBX = NULL');
      SQL.Add('WHERE  ROM_CDNF = '''+cadastroNFE_CDNF.AsString+'''');
      ExecSQL;

      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['nfe_dup']);
      SQL.Add('WHERE  NFE_CDNF = '''+cadastroNFE_CDNF.AsString+'''');
      ExecSQL;
    end;

    if (avulso) and (cadastroNFE_ESTO.AsString = '1') then
    BAIXA_ESTOQUE;
  finally
    cadastro.Edit;
    cadastroNFE_STA.Value  := '1';
    cadastroNFE_PROC.Value := protocolo;
    cadastro.Post;
  end;
end;

procedure Tfrmctr_nfe.cadastroAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  IBTra.CommitRetaining;

  wRec := cadastro.GetBookmark;
  cadastro.Close;
  cadastro.Open;
  if (wRec = Nil) or (cadastro.Fields[0].IsNull) then cadastro.last
     else cadastro.GotoBookmark(wRec);
  cadastro.FreeBookmark(wRec);
end;

procedure Tfrmctr_nfe.cadastroAfterOpen(DataSet: TDataSet);
begin
  with nfe_ite do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM '+SLPrincipal.Values['nfe_ite']+' "NFE_ITE"');
    SQL.Add('WHERE    NFE_ITE.NFE_CCAB = :ID');
    SQL.Add('ORDER BY NFE_ITE.NFE_ITEMPED');
    Open;
  end;
end;

procedure Tfrmctr_nfe.siEVEClick(Sender: TObject);
begin
  frmlog_eve := tfrmlog_eve.create(self);
  with frmlog_eve.cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT LOG_EVE.*,PAR_SIS.PAR_FANT,CAD_FUN.FUN_FOTO');
    SQL.Add('FROM   LOG_EVE,PAR_SIS');
    SQL.Add('LEFT   OUTER JOIN CAD_FUN ON LOG_EVE.EVE_CLOG = CAD_FUN.ID');
    SQL.Add('WHERE  LOG_EVE.EVE_CDEP = PAR_SIS.ID');
    SQL.Add('AND    LOG_EVE.EVE_FUNC = ''Nota Fiscal''');
    SQL.Add('ORDER BY ID DESC');
    Open;
  end;
  frmlog_eve.show;
end;

procedure Tfrmctr_nfe.siENVClick(Sender: TObject);
var
  NOME_ARQ: string;
  NOME_FIL: string;

begin
  DecodeDate(cadastroNFE_DEMI.AsDateTime, Ano, Mes, Dia);

  NOME_ARQ := 'C:\Sheild\NotaFiscal\PDF\'+oStrZero(cadastroNFE_CDNF.AsInteger,6)+'.PDF';
  NOME_FIL := 'C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\'+oStrZero(ano,4)+oStrZero(mes,2)+'\'+trim(cadastroNFE_CHAV.AsString)+'-procNFe.xml';

  if not fileexists(NOME_FIL) then
     raise exception.Create('Arquivo '+NOME_FIL+' não encontrado !'+#13+'Favor consultar a nota fiscal.');

  if not fileexists(NOME_ARQ) then
     raise exception.Create('Arquivo '+NOME_ARQ+' não encontrado !'+#13+'Favor consultar a nota fiscal.');

  frmemail := TFrmemail.Create(self);
  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT CLI_MAIL FROM CAD_CLI');
      SQL.Add('WHERE  ID = '''+cadastroNFE_CFAV.AsString+'''');
      Open;
    end;

    frmemail.cbemail.Text  := consulta.Fields[0].AsString;
    frmemail.edtitulo.Text := frmprincipal.parametrosPAR_FANT.AsString+' - NF.: '+cadastroNFE_CDNF.AsString;
    frmemail.Memo1.Lines.Add('Segue em anexo...') ;


    frmemail.cbarqs.Items.Add(NOME_ARQ);    
    frmemail.cbarqs.Items.Add(NOME_FIL);

    frmemail.ShowModal;
  finally
    freeAndNil(frmemail);
    frmemail.Free;
  end;
end;

procedure Tfrmctr_nfe.siVISClick(Sender: TObject);
var
  NOME_ARQ: string;
  NOME_FIL: string;
begin
  DecodeDate(cadastroNFE_DEMI.AsDateTime, Ano, Mes, Dia);

  NOME_ARQ := 'C:\Sheild\NotaFiscal\PDF\'+oStrZero(cadastroNFE_CDNF.AsInteger,6)+'.PDF';
  NOME_FIL := 'C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\'+oStrZero(ano,4)+oStrZero(mes,2)+'\'+trim(cadastroNFE_CHAV.AsString)+'-procNFe.xml';

  if not fileexists(NOME_FIL) then
  raise exception.Create('Arquivo '+NOME_FIL+' não encontrado !'+#13+'Favor consultar a nota fiscal.');

  if not fileexists(NOME_ARQ) then
  begin
    NOME_ARQ := 'C:\Sheild\NotaFiscal\PDF\'+cadastroNFE_CDNF.AsString+'.PDF';

    if not fileexists(NOME_ARQ) then
    raise exception.Create('Arquivo '+NOME_ARQ+' não encontrado !'+#13+'Favor consultar a nota fiscal.');
  end;

  ImprimeDanfe(PChar(NOME_FIL),PChar(NOME_ARQ),3,false);
end;

procedure Tfrmctr_nfe.siCCEClick(Sender: TObject);
begin
  try
    frmnfe_cce := Tfrmnfe_cce.Create(Self);
    frmnfe_cce.Caption     := 'Carta de Correção Eletrônica';
    frmnfe_cce.edproc.Text := cadastroNFE_PROT.AsString;
    frmnfe_cce.edchv.Text  := cadastroNFE_CHAV.AsString;
    frmnfe_cce.edcdnf.Text := cadastroNFE_CDNF.AsString;
    frmnfe_cce.edcdnf.Hint := cadastroNFE_CFAV.AsString;
    frmnfe_cce.eddemi.Date := cadastroNFE_DSAI.AsDateTime;
    frmnfe_cce.edhemi.Time := cadastroNFE_HRSE.AsDateTime;
    frmnfe_cce.eddemi.Hint := oStrZero(yearof(cadastroNFE_DEMI.AsDateTime),4)+oStrZero(monthof(cadastroNFE_DEMI.AsDateTime),2);

    frmnfe_cce.ShowModal;
  finally
    freeAndNil(frmnfe_cce);
  end;
end;

procedure Tfrmctr_nfe.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 8;
    if campo_pesquisa = '' then
    frmpesquisa.cbCAMPO.Text := 'Nota Fiscal' else
    frmpesquisa.cbCAMPO.Text := campo_pesquisa;
    frmpesquisa.cbDATA.Text  := 'Emissão';
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      if (edTXT.Text = '') and (dxdt1.Date < 0) and (cField <> 'Todos') then
         {nothing}
      else
      begin
        if cField = 'NFE_CDPD' then
        with consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT ROM_CDNF FROM '+SLPrincipal.Values['ped_ven_cab']);
          SQL.Add('WHERE  ROM_DERO = '''+edtxt.Text+'''');
          Open;

          edtxt.Text := inttostr(fields[0].AsInteger);
          cField     := 'NFE_CDNF';
        end;

        with cadastro do
        begin
          Close;
          SelectSQL.Clear;
          SelectSQL.Add('SELECT * FROM '+SLPrincipal.Values['nfe_cab']);
          SelectSQL.Add('WHERE    ID > 0');

          if cField <> 'Todos' then
          begin
            if edtxt.Text <> '' then
            begin
              if cField = 'NFE_CDNF' then
              SelectSQL.Add('AND '+cField+' = '''+edtxt.Text+'''')
              else
              SelectSQL.Add('AND '+cField+' LIKE ''%'+edtxt.Text+'%''');
            end;

            if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
               SelectSQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

            SelectSQL.Add('ORDER BY '+cfield+' DESC');
          end else
          SelectSQL.Add('ORDER BY ID DESC');
          Open;
        end;
      end;
      dbgconsulta.SetFocus;
      campo_pesquisa := frmpesquisa.cbCAMPO.Text;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;

end;

procedure Tfrmctr_nfe.siRELClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.tsNFE_CAB.TabVisible   := true;
    frmrelatorio_geral.pcMAIN.ActivePage      := frmrelatorio_geral.tsNFE_CAB;
    frmrelatorio_geral.cbNFE_CAB_TNFE.Text    := 'VENDA';

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PAR_FANT FROM PAR_SIS');
      SQL.Add('ORDER BY PAR_FANT');
      Open;

      frmrelatorio_geral.cbNFE_CAB_DEMP.Text := frmprincipal.parametrosPAR_FANT.AsString;
      while not eof do
      begin
        frmrelatorio_geral.cbNFE_CAB_DEMP.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbNFE_CAB_DEMP.Descriptions.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   NFE_DFAV FROM '+SLPrincipal.Values['nfe_cab']+' "NFE_CAB"');
      SQL.Add('GROUP BY NFE_DFAV');
      SQL.Add('ORDER BY NFE_DFAV');
      Open;

      frmrelatorio_geral.cbNFE_CAB_DFAV.Items.Add('TODOS');
      while not eof do
      begin
        frmrelatorio_geral.cbNFE_CAB_DFAV.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   NFE_DVEN');
      SQL.Add('FROM '+SLPrincipal.Values['nfe_cab']+' "NFE_CAB"');
      SQL.Add('WHERE    NFE_DVEN <> '' ''');
      SQL.Add('GROUP BY NFE_DVEN');
      SQL.Add('ORDER BY NFE_DVEN');
      Open;

      frmrelatorio_geral.cbNFE_CAB_DVEN.Items.Add('TODOS');
      while not eof do
      begin
        frmrelatorio_geral.cbNFE_CAB_DVEN.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   NFE_DREP');
      SQL.Add('FROM '+SLPrincipal.Values['nfe_cab']+' "NFE_CAB"');
      SQL.Add('WHERE    NFE_DREP <> '' ''');
      SQL.Add('GROUP BY NFE_DREP');
      SQL.Add('ORDER BY NFE_DREP');
      oPEN;

      frmrelatorio_geral.cbNFE_CAB_DREP.Items.Add('TODOS');
      while not eof do
      begin
        frmrelatorio_geral.cbNFE_CAB_DREP.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   NFE_DTRA FROM '+SLPrincipal.Values['nfe_cab']+' "NFE_CAB"');
      SQL.Add('GROUP BY NFE_DTRA');
      SQL.Add('ORDER BY NFE_DTRA');
      Open;

      frmrelatorio_geral.cbNFE_CAB_DTRA.Items.Add('TODOS');
      while not eof do
      begin
        frmrelatorio_geral.cbNFE_CAB_DTRA.Items.Add(fields[0].AsString);
        next;
      end;
    end;

    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmctr_nfe.BAIXA_ESTOQUE;
var
  ID: integer;
begin
  nfe_ite.First;
  while not nfe_ite.Eof do
  begin
    ID := RETORNA_ID_PRODUTO;

    if ID > 0 then
    begin
      ibSP.StoredProcName := 'SP_CAD_PRO_EST';
      ibSP.Prepare;

      ibSP.ParamByName('est').Value  := 'CAD_PRO_EST';
      if frmprincipal.parametrosID.AsInteger > 1 then
      ibSP.ParamByName('est').Value  := 'CAD_PRO_EST_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

      ibSP.ParamByName('id').Value   := 0;
      ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
      ibSP.ParamByName('cdro').Value := cadastroNFE_CDNF.AsInteger;
      ibSP.ParamByName('cdpd').Value := 0;
      ibSP.ParamByName('cdbx').Value := 0;
      ibSP.ParamByName('cpro').Value := ID;
      ibSP.ParamByName('cusu').Value := frmprincipal.cad_usuID.AsInteger;
      ibSP.ParamByName('dusu').Value := frmprincipal.cad_usuUSU_DUSU.AsString;
      ibSP.ParamByName('cfav').Value := cadastroNFE_CFAV.AsInteger;
      ibSP.ParamByName('dfav').Value := cadastroNFE_DFAV.AsString;
      ibSP.ParamByName('dcad').Value := strtodate(SLPrincipal.Values['data_sistema']);
      ibSP.ParamByName('docu').Value := cadastroNFE_CDNF.AsString;
      ibSP.ParamByName('cdet').Value := '';
      ibSP.ParamByName('dsep').Value := '';
      ibSP.ParamByName('debi').Value := 0;
      ibSP.ParamByName('cred').Value := 0;
      ibSP.ParamByName('dmap').Value := '';
      ibSP.ParamByName('ctnr').Value := '';
      ibSP.ParamByName('lote').Value := '';

      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT NAT_OPER FROM TAB_NAT');
        SQL.Add('WHERE  NAT_CNAT = '''+nfe_iteNFE_CFOP.AsString+'''');
        Open;
      end;

      if consulta.Fields[0].AsString = 'ENTRADA' then
      begin
        ibSP.ParamByName('flag').Value := 'S';
        ibSP.ParamByName('debi').Value := nfe_iteNFE_QCOM.AsFloat
      end
      else
      begin
        ibSP.ParamByName('flag').Value := 'E';
        ibSP.ParamByName('cred').Value := nfe_iteNFE_QCOM.AsFloat;
      end;

      ibSP.ExecProc;
    end;
    nfe_ite.Next;
  end;
end;

procedure Tfrmctr_nfe.siTRIClick(Sender: TObject);
begin
  if oYesNo(handle,'Emitir uma cópia exata de nota fiscal No.: '+CadastroNFE_CDNF.AsString+' ?') = mrno then
  Abort;

  try
    with nfe_tra do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM '+SLPrincipal.Values['nfe_tra']);
      SQL.Add('WHERE    NFE_CCAB = '''+CadastroID.AsString+'''');
      Open;
    end;

    frmven_nfe := TFrmven_nfe.Create(Self);
    frmven_nfe.Tag             := 1;
    frmven_nfe.siEST.Enabled   := False;
    frmven_nfe.edcven.Text     := inttostr(CadastroNFE_CVEN.AsInteger);
    frmven_nfe.eddven.Text     := CadastroNFE_DVEN.AsString;
    frmven_nfe.edcrep.Text     := inttostr(CadastroNFE_CREP.AsInteger);
    frmven_nfe.eddrep.Text     := CadastroNFE_DREP.AsString;
    frmven_nfe.cbcnat.Text     := CadastroNFE_CNAT.AsString;
    frmven_nfe.cbdtra.Text     := CadastroNFE_DTRA.AsString;
    frmven_nfe.IEModFrete.Text := nfe_traNFE_MODFRETE.AsString;
    frmven_nfe.edesp.Text      := nfe_traNFE_ESP.AsString;
    frmven_nfe.edqvol.Text     := nfe_traNFE_QVOL.AsString;
    frmven_nfe.edmarca.Text    := nfe_traNFE_MARCA.AsString;
    frmven_nfe.ednvol.Text     := nfe_traNFE_NVOL.AsString;
    frmven_nfe.CEPesoB.Text    := nfe_traNFE_PSBR.AsString;
    frmven_nfe.CEPesoL.Text    := nfe_traNFE_PSLQ.AsString;

    frmven_nfe.NewString       := CadastroNFE_CHAV.AsString;
    frmven_nfe.NewNota         := CadastroNFE_CDNF.AsString;
    frmven_nfe.NewData         := CadastroNFE_DEMI.AsString;
    frmven_nfe.NewCST          := nfe_iteNFE_CST.AsString;
    frmven_nfe.NewPICMS        := nfe_iteNFE_PICMS.AsString;
    frmven_nfe.NewVBC          := CadastroNFE_VNF.AsString;
    frmven_nfe.NewCSTIPI       := nfe_iteNFE_CSTIPI.AsString;
    frmven_nfe.NewPIPI         := nfe_iteNFE_PIPI.AsString;
    frmven_nfe.NewVBCIPI       := nfe_iteNFE_VBCIPI.AsString;
    frmven_nfe.NewVBCPIS       := nfe_iteNFE_VBCPIS.AsString;
    frmven_nfe.NewVBCCOFINS    := nfe_iteNFE_VBCOFINS.AsString;
    frmven_nfe.NewNCM          := nfe_iteNFE_NCM.AsString;
    frmven_nfe.NewORIG         := nfe_iteNFE_ORIG.AsString;

    frmven_nfe.edesp.Tag   := 1;
    frmven_nfe.edqvol.Tag  := 1;
    frmven_nfe.edmarca.Tag := 1;
    frmven_nfe.ednvol.Tag  := 1;
    frmven_nfe.CEPesoB.Tag := 1;
    frmven_nfe.CEPesoL.Tag := 1;

    if CadastroNFE_CLFO.AsInteger = 0 then
       frmven_nfe.PESQUISA_CLIENTE('I',CadastroNFE_CFAV.AsString,0) else
    if CadastroNFE_CLFO.AsInteger = 1 then
    begin
      frmven_nfe.lacfav.Caption := 'Fornecedor';
      frmven_nfe.PESQUISA_FORNECEDOR('I',CadastroNFE_CFAV.AsString,0);
    end;

    frmven_nfe.Tag := 1;

    nfe_ite.DisableControls;
    nfe_ite.First;
    while not nfe_ite.Eof do
    begin
      frmven_nfe.nfe_001.Append;
      frmven_nfe.PESQUISA_PRODUTO('Produto',nfe_iteNFE_CPROD.AsString);
      frmven_nfe.nfe_001NFE_CEAN.Value   := nfe_iteNFE_CEAN.AsString;
      frmven_nfe.nfe_001NFE_CPROD.Value  := nfe_iteNFE_CPROD.AsString;
      frmven_nfe.nfe_001NFE_XPROD.Value  := nfe_iteNFE_XPROD.AsString;
      frmven_nfe.nfe_001NFE_NCM.Value    := nfe_iteNFE_NCM.AsString;
      frmven_nfe.nfe_001NFE_EXTIPI.Value := nfe_iteNFE_EXTIPI.AsString;
      frmven_nfe.nfe_001NFE_ORIG.Value   := nfe_iteNFE_ORIG.AsString;
      frmven_nfe.nfe_001NFE_CST.Value    := nfe_iteNFE_CST.AsString;
      frmven_nfe.nfe_001NFE_UCOM.Value   := nfe_iteNFE_UCOM.AsString;
      frmven_nfe.nfe_001NFE_PREC.Value   := nfe_iteNFE_VUNCOM.AsFloat;
      frmven_nfe.nfe_001NFE_VUNCOM.Value := nfe_iteNFE_VUNCOM.AsFloat;
      frmven_nfe.nfe_001NFE_QCOM.Value   := nfe_iteNFE_QCOM.AsFloat;
      frmven_nfe.nfe_001NFE_RCOM.Value   := nfe_iteNFE_RCOM.AsInteger;
      frmven_nfe.nfe_001.Post;
      nfe_ite.Next;
    end;
  finally
    nfe_ite.EnableControls;

    if CadastroNFE_VFRETE.AsFloat > 0 then
    begin
      frmven_nfe.CEVFrete.Value := CadastroNFE_VFRETE.AsFloat;
      frmven_nfe.CALCULA_FRETE;
    end;

    oRTransact(frmven_nfe.TSheild);
    frmven_nfe.CALCULA_NF;
    if (Screen.Width <= 1024) or (Screen.Width < 1280) then
    begin
      frmven_nfe.FormStyle := fsnormal;
      frmven_nfe.Visible   := false;
      frmven_nfe.ShowModal;
    end else
    frmven_nfe.Show;
  end;
end;

procedure Tfrmctr_nfe.siCNFClick(Sender: TObject);
var
  Justificativa: string;
  ClickedOK: Boolean;
begin
  if oYesNo(handle,'Cancelar Nota Fiscal '+cadastroNFE_CDNF.AsString+' ?') = mrno then
  Abort;

  try
    Screen.Cursor := crAppStart;
    sbMSG.Panels[1].Text := 'Aguarde...';
    sbMSG.Refresh;

    if cadastroNFE_CHAV.AsString <> '' then
    begin
      Justificativa := 'Mínimo de 15 palavras';
      ClickedOK := InputQuery('Justificativa de cancelamento de NFe', 'Digite aqui a sua justificativa', justificativa);
      if not ClickedOK then
      abort;

      if LENGTH(justificativa) < 15 then
      raise exception.Create('Justificativa de cancelamento de NFe inválido !'+#13+'Inferior à 15 palavras.');

      if cadastroNFE_PROT.AsString <> '' then
      begin
        frmven_npr     := Tfrmven_npr.Create(Self);
        frmven_npr.Tag := 1;
        frmven_npr.Caption         := 'Cancelamento de NFe';
        frmven_npr.edconsulta.Text := NFeCancelamentoEvento(
                                      cadastroNFE_CHAV.AsString,
                                      cadastroNFE_PROT.AsString,
                                      '0000121', // Número sequencial autoincremental único para identificação do Lote gerado pela aplicação
                                      '1',       // número sequencial do evento. A aplicação deve gerar sequencialmente esse valor para cada evento de uma nfe (pg. 3 da NT 2011/006)
                                      justificativa);
        frmven_npr.edchv.Text      := TRIM(cadastroNFE_CHAV.AsString);
        frmven_npr.edchv.Enabled   := false;

        try
          protocolo := TRIM(copy(frmven_npr.edconsulta.text,length(frmven_npr.edconsulta.text)-14,15));

          frmven_npr.edpro.Text    := protocolo;
          frmven_npr.edpro.Enabled := false;
          frmven_npr.ShowModal;
        finally
          if (Pos('CT-e',frmven_npr.edconsulta.Text) > 0) or (Pos('MDF-e',frmven_npr.edconsulta.Text) > 0) then
          Justificativa := '';

          FreeAndNil(frmven_npr);
        end;
      end;
    end;
  finally
    if not oEmpty(justificativa) then
    CANCELA_CDNF;

    Screen.Cursor := crDefault;
    sbMSG.Panels[1].Text := '';
    sbMSG.Refresh;
  end;
end;

procedure Tfrmctr_nfe.CANCELA_CAIXA_CARTEIRA(cdbx: integer;drom: TDate);
var
  doct: string;
  valo: double;
  conc: word;
  ctsr,cdcx: integer;
begin
  oOTransact(TSheild);
  with Consulta_S do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM FIN_REC_BAI');
    ExecSQL;
  end;

  oRTransact(TSheild);
  with fin_rec_bai do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_REC_BAI');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;

  with aux2 do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAI_TSR');
    SQL.Add('WHERE  CAI_DESC = ''CAIXA INICIAL''');
    Open;
    ctsr := fields[0].AsInteger;

    SQL.Clear;
    SQL.Add('SELECT   FIN_TIPO FROM '+SLPrincipal.Values['fin_rec_car_bai']);
    SQL.Add('WHERE    FIN_CDBX = '''+inttostr(cdbx)+'''');
    SQL.Add('GROUP BY FIN_TIPO');
    Open;
  end;

  while not aux2.Eof do
  begin
    fin_rec_bai.Append;
    fin_rec_baiID.Value       := 0;
    fin_rec_baiFIN_TIPO.Value := aux2.Fields[0].AsString;
    fin_rec_bai.Post;

    aux2.Next;
  end;
  oRTransact(TSheild);
  fin_rec_bai.Open;

  with aux2 do
  begin
    SQL.Clear;
    SQL.Add('SELECT FIN_TIPO,ID,FIN_CONC,FIN_CDCX,FIN_CDBX FROM '+SLPrincipal.Values['fin_rec_car_bai']);
    SQL.Add('WHERE  FIN_CDBX = '''+inttostr(cdbx)+'''');
    Open;
  end;
  conc := aux2.Fields[2].AsInteger;
  cdcx := aux2.Fields[3].AsInteger;

  while not aux2.eof do
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM TAB_COB');
      SQL.Add('WHERE  VEN_TIPO = '''+aux2.Fields[0].AsString+'''');
      Open;

      if fields[0].IsNull then
      doct := '1' else
      doct := fields[0].AsString;
      doct := aux2.Fields[2].AsString+oStrZero(strtoint(doct),19);

      SQL.Clear;
      SQL.Add('DELETE FROM CAI_MOV');
      SQL.Add('WHERE  CAI_CCAB = '''+aux2.Fields[3].AsString+'''');
      SQL.Add('AND    CAI_DESC = '''+aux2.Fields[0].AsString+'''');
      SQL.Add('AND    CAI_DOCT = '''+doct+'''');
      ExecSQL;
    end;
    aux2.Next;
  end;

  with aux2 do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM '+SLPrincipal.Values['fin_rec_car_bai']);
    SQL.Add('WHERE  FIN_CDBX = '''+inttostr(cdbx)+'''');
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
      doct := '1' else
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
      ibSP.ParamByName('DCAD').Value := drom;
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

  with aux2 do
  begin
    SQL.Clear;
    SQL.Add('UPDATE CAI_LAF');
    SQL.Add('SET    CAI_CRED = '''+oStrTran(consulta.Fields[0].AsString,',','.')+''',');
    SQL.Add('       CAI_DEBI = '''+oStrTran(consulta.Fields[1].AsString,',','.')+''',');
    SQL.Add('       CAI_SATU = '''+oStrTran(consulta.Fields[2].AsString,',','.')+'''');
    SQL.Add('WHERE  ID       = '''+inttostr(cdcx)+'''');
    ExecSQL;
  end;

  oCTransact(TSheild);
end;

procedure Tfrmctr_nfe.CANCELA_CAIXA_BANCARIO(cdbx: integer;drom: TDate);
var
  doct: String;
  valo: Double;
  conc: Word;
  ctsr,
  cdcx: Integer;
begin
  oOTransact(TSheild);
  with Consulta_S do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM FIN_REC_BAI');
    ExecSQL;
  end;

  oRTransact(TSheild);
  with fin_rec_bai do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_REC_BAI');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;

  with aux2 do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAI_TSR');
    SQL.Add('WHERE  CAI_DESC = ''CAIXA INICIAL''');
    Open;
    ctsr := Fields[0].AsInteger;

    SQL.Clear;
    SQL.Add('SELECT   FIN_TIPO FROM '+SLPrincipal.Values['fin_rec_ban_bai']);
    SQL.Add('WHERE    FIN_CDBX = '''+inttostr(cdbx)+'''');
    SQL.Add('GROUP BY FIN_TIPO');
    Open;
  end;

  while not aux2.Eof do
  begin
    fin_rec_bai.Append;
    fin_rec_baiID.Value       := 0;
    fin_rec_baiFIN_TIPO.Value := aux2.Fields[0].AsString;
    fin_rec_bai.Post;

    aux2.Next;
  end;
  oRTransact(TSheild);
  fin_rec_bai.Open;

  with aux2 do
  begin
    SQL.Clear;
    SQL.Add('SELECT FIN_TIPO,ID,FIN_CONC,FIN_CDCX,FIN_CDBX FROM '+SLPrincipal.Values['fin_rec_ban_bai']);
    SQL.Add('WHERE  FIN_CDBX = '''+inttostr(cdbx)+'''');
    Open;
  end;
  conc := aux2.Fields[2].AsInteger;
  cdcx := aux2.Fields[3].AsInteger;

  while not aux2.eof do
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM TAB_COB');
      SQL.Add('WHERE  VEN_TIPO = '''+aux2.Fields[0].AsString+'''');
      Open;

      if fields[0].IsNull then
      doct := '1' else
      doct := fields[0].AsString;
      doct := aux2.Fields[2].AsString+oStrZero(strtoint(doct),19);

      SQL.Clear;
      SQL.Add('DELETE FROM CAI_MOV');
      SQL.Add('WHERE  CAI_CCAB = '''+aux2.Fields[3].AsString+'''');
      SQL.Add('AND    CAI_DESC = '''+aux2.Fields[0].AsString+'''');
      SQL.Add('AND    CAI_DOCT = '''+doct+'''');
      ExecSQL;
    end;
    aux2.Next;
  end;

  with aux2 do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM '+SLPrincipal.Values['fin_rec_ban_bai']);
    SQL.Add('WHERE  FIN_CDBX = '''+inttostr(cdbx)+'''');
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
      doct := '1' else
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
      ibSP.ParamByName('DCAD').Value := drom;
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

  with aux2 do
  begin
    SQL.Clear;
    SQL.Add('UPDATE CAI_LAF');
    SQL.Add('SET    CAI_CRED = '''+oStrTran(consulta.Fields[0].AsString,',','.')+''',');
    SQL.Add('       CAI_DEBI = '''+oStrTran(consulta.Fields[1].AsString,',','.')+''',');
    SQL.Add('       CAI_SATU = '''+oStrTran(consulta.Fields[2].AsString,',','.')+'''');
    SQL.Add('WHERE  ID       = '''+inttostr(cdcx)+'''');
    ExecSQL;
  end;

  oCTransact(TSheild);
end;

end.
