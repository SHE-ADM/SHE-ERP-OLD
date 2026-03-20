unit pctr_nfe;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, DB, IBStoredProc, IBEvents,
  IBDatabase, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ComCtrls, ExtCtrls, dxDBTLCl, dxGrClms, DBCtrls, StdCtrls,
  dxPageControl, dxEditor, dxEdLib, dxExEdtr, DateUtils, Menus, Shellapi,
  dxDBELib, FMTBcd, rxSpeedbar, Math, StrUtils,
  StrInt, StrIntImp, XMLDom, XMLIntf, MSXMLDom, XMLDoc, XMLXForm, OleCtrls,
  IBSQL, pPadr2, ActnList, dxBar, dxDockControl, dxDockPanel, cxGraphics,
  cxControls, dxStatusBar;

type
  Tfrmctr_nfe = class(TFrmPadr2)
    siCNF: TSpeedItem;
    siCON: TSpeedItem;
    siENV: TSpeedItem;
    siVIS: TSpeedItem;
    siTRI: TSpeedItem;
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
    siCCE: TSpeedItem;
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
    nfe_iteNFE_VUNCOM: TFloatField;
    PCRodape: TdxPageControl;
    TSProdutos: TdxTabSheet;
    TSSaidas: TdxTabSheet;
    DBGItem: TdxDBGrid;
    DBGItemNFE_ITEMPED: TdxDBGridMaskColumn;
    DBGItemNFE_CPROD: TdxDBGridMaskColumn;
    DBGItemNFE_NCM: TdxDBGridMaskColumn;
    DBGItemNFE_CFOP: TdxDBGridMaskColumn;
    DBGItemNFE_XPROD: TdxDBGridMaskColumn;
    DBGItemNFE_UCOM: TdxDBGridMaskColumn;
    DBGItemNFE_QCOM: TdxDBGridMaskColumn;
    DBGItemNFE_VUNCOM: TdxDBGridMaskColumn;
    DBGItemNFE_VPROD: TdxDBGridMaskColumn;
    DBGItemNFE_VIPI: TdxDBGridMaskColumn;
    DBGItemNFE_VPIS: TdxDBGridMaskColumn;
    DBGItemNFE_VCOFINS: TdxDBGridMaskColumn;
    DBGItemNFE_VNF: TdxDBGridMaskColumn;
    DBGSaidas: TdxDBGrid;
    DBGSaidasDTSA: TdxDBGridDateColumn;
    DBGSaidasTRANSPORTADORA: TdxDBGridMaskColumn;
    DBGSaidasMOTORISTA: TdxDBGridMaskColumn;
    DBGSaidasPLACA: TdxDBGridMaskColumn;
    DBGSaidasVOLUME: TdxDBGridMaskColumn;
    DBGSaidasPESOB: TdxDBGridMaskColumn;
    DBGSaidasPESOL: TdxDBGridMaskColumn;
    SIBOL: TSpeedItem;
    PNLInfAdBol: TPanel;
    EDInfAdBol: TdxMemo;
    SINovo: TSpeedItem;
    nfe_iteNFE_VBCSTDEST: TIBBCDField;
    nfe_iteNFE_VICMSSTDEST: TIBBCDField;
    nfe_iteNFE_VBCUFDEST: TIBBCDField;
    nfe_iteNFE_PFCPUFDEST: TIBBCDField;
    nfe_iteNFE_PICMSUFDEST: TIBBCDField;
    nfe_iteNFE_PICMSINTER: TIBBCDField;
    nfe_iteNFE_PICMSINTERPART: TIBBCDField;
    nfe_iteNFE_VFCPUFDEST: TIBBCDField;
    nfe_iteNFE_VICMSUFDEST: TIBBCDField;
    nfe_iteNFE_VICMSUFREMET: TIBBCDField;
    nfe_iteNFE_CNPJREF: TIBStringField;
    nfe_iteNFE_NFCI: TIBStringField;
    nfe_iteC_CST: TStringField;
    DBGItemC_CST: TdxDBGridColumn;
    DBGItemNFE_VICMS: TdxDBGridCurrencyColumn;
    DBGItemNFE_CEST: TdxDBGridMaskColumn;
    nfe_iteNFE_CEST: TIBStringField;
    CadastroID: TIntegerField;
    CadastroNFE_TPNF: TSmallintField;
    CadastroNFE_CDNF: TIntegerField;
    CadastroNFE_DEMI: TDateField;
    CadastroNFE_CNAT: TIBStringField;
    CadastroTIPO_NF: TIBStringField;
    CadastroTIPO_OP: TIBStringField;
    CadastroNFE_CLFO: TIBStringField;
    CadastroCLFO: TIBStringField;
    CadastroNFE_CFAV: TIntegerField;
    CadastroNFE_DFAV: TIBStringField;
    CadastroNFE_CVEN: TIntegerField;
    CadastroNFE_DVEN: TIBStringField;
    CadastroNFE_CREP: TIntegerField;
    CadastroNFE_DREP: TIBStringField;
    CadastroNFE_CTRA: TIntegerField;
    CadastroNFE_DTRA: TIBStringField;
    CadastroMODFRETE: TIBStringField;
    CadastroMODFRETE_DESC: TIBStringField;
    CadastroVOLUME: TIBStringField;
    CadastroPESOB: TIBBCDField;
    CadastroPESOL: TIBBCDField;
    CadastroNFE_QCOM: TIBBCDField;
    CadastroNFE_VPROD: TIBBCDField;
    CadastroNFE_VDESC: TIBBCDField;
    CadastroNFE_VNF: TIBBCDField;
    CadastroNFE_VICMS: TIBBCDField;
    CadastroNFE_VIPI: TIBBCDField;
    CadastroNFE_VPIS: TIBBCDField;
    CadastroNFE_VCOFINS: TIBBCDField;
    CadastroNFE_VST: TIBBCDField;
    CadastroNFE_VFRETE: TIBBCDField;
    CadastroNFE_VSEG: TIBBCDField;
    CadastroNFE_VII: TIBBCDField;
    CadastroEMPRESA: TIBStringField;
    CadastroNFE_CHAV: TIBStringField;
    CadastroNFE_PROT: TIBStringField;
    CadastroNFE_PROC: TIBStringField;
    CadastroNFE_OBSE: TMemoField;
    DBGConsultaNFE_CDNF: TdxDBGridMaskColumn;
    DBGConsultaNFE_DEMI: TdxDBGridDateColumn;
    DBGConsultaTIPO_NF: TdxDBGridMaskColumn;
    DBGConsultaTIPO_OP: TdxDBGridMaskColumn;
    DBGConsultaREST: TdxDBGridMaskColumn;
    DBGConsultaNFE_DFAV: TdxDBGridMaskColumn;
    DBGConsultaNFE_DVEN: TdxDBGridMaskColumn;
    DBGConsultaNFE_DREP: TdxDBGridMaskColumn;
    DBGConsultaNFE_DTRA: TdxDBGridMaskColumn;
    DBGConsultaMODFRETE_DESC: TdxDBGridMaskColumn;
    DBGConsultaVOLUME: TdxDBGridMaskColumn;
    DBGConsultaPESOB: TdxDBGridMaskColumn;
    DBGConsultaPESOL: TdxDBGridMaskColumn;
    DBGConsultaNFE_VPROD: TdxDBGridMaskColumn;
    DBGConsultaNFE_VDESC: TdxDBGridMaskColumn;
    DBGConsultaNFE_VNF: TdxDBGridMaskColumn;
    DBGConsultaNFE_VICMS: TdxDBGridMaskColumn;
    DBGConsultaNFE_VIPI: TdxDBGridMaskColumn;
    DBGConsultaNFE_VPIS: TdxDBGridMaskColumn;
    DBGConsultaNFE_VCOFINS: TdxDBGridMaskColumn;
    DBGConsultaNFE_VST: TdxDBGridMaskColumn;
    DBGConsultaNFE_VFRETE: TdxDBGridMaskColumn;
    DBGConsultaEMPRESA: TdxDBGridMaskColumn;
    DBGConsultaNFE_CHAV: TdxDBGridMaskColumn;
    DBGConsultaNFE_PROT: TdxDBGridMaskColumn;
    DBGConsultaNFE_PROC: TdxDBGridMaskColumn;
    CadastroNFE_CDRO: TIntegerField;
    CadastroNFE_DERO: TIBStringField;
    CadastroDERO: TIBStringField;
    DBGConsultaDERO: TdxDBGridMaskColumn;
    CadastroNFE_DSAI: TDateField;
    CadastroNFE_HRSE: TTimeField;
    CadastroNFE_ESTO: TIBStringField;
    DBGConsultaNFE_STA: TdxDBGridMaskColumn;
    DBGConsultaNFE_CNAT: TdxDBGridMaskColumn;
    f: TSmallintField;
    CadastroFINNFE: TIBStringField;
    CadastroNFE_CDBX: TLargeintField;
    CadastroCDST: TSmallintField;
    CadastroREST: TIBStringField;
    CadastroCFRT: TIBStringField;
    DBGConsultaCFRT: TdxDBGridMaskColumn;
    DBGItemNFE_PIPI: TdxDBGridCurrencyColumn;
    DBGItemNFE_PPIS: TdxDBGridCurrencyColumn;
    DBGItemNFE_PCOFINS: TdxDBGridCurrencyColumn;
    DBGItemNFE_PICMS: TdxDBGridCurrencyColumn;
    DBGItemNFE_PICMSST: TdxDBGridCurrencyColumn;
    DBGItemNFE_VICMSST: TdxDBGridCurrencyColumn;
    CadastroIDEP: TSmallintField;
    nfe_itePSCN: TIBBCDField;
    nfe_itePSBR: TIBBCDField;
    nfe_itePSLQ: TIBBCDField;
    CadastroDTSA: TDateTimeField;
    DBGConsultaDTSA: TdxDBGridDateColumn;
    CadastroEMISSOR: TIBStringField;
    DBGConsultaEMISSOR: TdxDBGridMaskColumn;
    SIMNFT: TSpeedItem;
    PNLINFADCAD: TPanel;
    DBINFADCAD: TdxDBMemo;
    CadastroCSTAT: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siCNFClick(Sender: TObject);
    procedure siCONClick(Sender: TObject);
    procedure cadastroAfterOpen(DataSet: TDataSet);
    procedure siENVClick(Sender: TObject);
    procedure siVISClick(Sender: TObject);
    procedure siCCEClick(Sender: TObject);
    procedure siPSQClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure CadastroBeforeEdit(DataSet: TDataSet);
    procedure CadastroBeforeInsert(DataSet: TDataSet);
    procedure siTRIClick(Sender: TObject);
    procedure DTSCadastroDataChange(Sender: TObject; Field: TField);
    procedure SINovoClick(Sender: TObject);
    procedure nfe_iteCalcFields(DataSet: TDataSet);
    procedure DTSCadastroStateChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dtsnfe_iteDataChange(Sender: TObject; Field: TField);
    procedure CadastroBeforeOpen(DataSet: TDataSet);
    procedure CadastroAfterScroll(DataSet: TDataSet);
    procedure CadastroAfterPost(DataSet: TDataSet);
    procedure SIMNFTClick(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
  private
    { Private declarations }
    procedure _GeraNF(AFinalidade: Word = 1; AEvento: Word = 1); { Finalidade = Emissão Normal Evento = Vazio }
    procedure _GeraDanfe;
    procedure _ConectaSefaz;

    procedure _CAD_SQL_GETTEXT;
  public
    { Public declarations }
  end;

var
  frmctr_nfe: Tfrmctr_nfe;
  CNPJSoftwareHouse : String = '17287123000158';
  TokenSoftwareHouse: String = '608363d7bf322e4b52286140d00245a6';
  CNPJCedente       : String = '47273917000123';
  Ano,
  Mes,
  Dia: Word;

implementation

uses uPrincipal, bPrincipal,
  pemail, pnfe_cce, ppesquisa_geral, pven_nfe,
  pNFeConsultaSefaz;

{$R *.dfm}
{$I+}

procedure Tfrmctr_nfe.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'FIS_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Nota Fiscal';
  REC_SHE_DEF.GReferencia := 'Vendas';
  REC_SHE_DEF.GRegra      := 'Incluir';
  REC_SHE_DEF.GAdmin      := False;
  inherited;
end;

procedure Tfrmctr_nfe.FormPaint(Sender: TObject);
begin
  inherited;
  if Showing then
  begin
    case Screen.Height of
    768: PNLBot.Height  := 190;
    else PNLBot.Height  := 270;
    end;
  end;
end;

procedure Tfrmctr_nfe.FormDestroy(Sender: TObject);
begin
  inherited;
  frmctr_nfe := Nil;
end;

procedure Tfrmctr_nfe.siPSQClick(Sender: TObject);
begin
  inherited;
  FrmPesquisa_Geral := TFrmPesquisa_Geral.Create(Self);
  try
    FrmPesquisa_Geral.Tag := 96;
    FrmPesquisa_Geral.ShowModal;
  finally
    with FrmPesquisa_Geral do
    try
      if Editado then
         with Cadastro do
         begin
           oCTransact(TConsulta);
           oOTransact(TConsulta);

           _CAD_SQL_GETTEXT;

           if EDTXT.Text <> EmptyStr then
              SQL.Add('WHERE ' + cField + ' ' + cWhere + ' ''' + EDTXT.Text + IFThen(cWhere = 'LIKE','%''',''''));

           if (cData <> EmptyStr) and (dxDT1.Date > 0) and (dxDT2.Date > 0) then
               SQL.Add(IFThen(EDTXT.Text = EmptyStr,'WHERE ','AND ') + cData + ' BETWEEN ''' + FormatDateTime('mm/dd/yy',dxDT1.Date) +  ''' AND ''' + FormatDateTime('mm/dd/yy',dxDT2.Date) + '''');

           SQL.Add('ORDER BY PK.DTCA DESC');
           Prepare;
           Open;

           APSQ_PED_VEN := cbCAMPO.Text;
         end;
    finally
      FreeAndNil(FrmPesquisa_Geral);
    end;
  end;

  DBGConsulta.Filter.Clear;
  DBGConsulta.SetFocus;
end;

procedure Tfrmctr_nfe.siCCEClick(Sender: TObject);
begin
  inherited;
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
    ACTEveExecute.Execute;
  end;
end;

procedure Tfrmctr_nfe.siVISClick(Sender: TObject);
var
  NOME_ARQ: string;
  NOME_FIL: string;
begin
  DecodeDate(CadastroNFE_DEMI.AsDateTime, Ano, Mes, Dia);
  NOME_FIL := 'C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\'+oStrZero(ano,4)+oStrZero(mes,2)+'\'+trim(CadastroNFE_CHAV.AsString)+'-procNFe.xml';

  if not FileExists(NOME_FIL) then
     raise exception.Create('Arquivo '+NOME_FIL+' não encontrado !'+#13+'Favor consultar a nota fiscal.');

  NOME_ARQ := 'C:\Sheild\NotaFiscal\PDF\'+oStrZero(CadastroNFE_CDNF.AsInteger,6)+'.PDF';

  _ConectaSefaz;
  
  oExecPrinter(Handle,'Notas Fiscais');
  ImprimeDanfe(PChar(NOME_FIL),PChar(NOME_ARQ),3,false);
end;

procedure Tfrmctr_nfe.siENVClick(Sender: TObject);
var
  NOME_ARQ: string;
  NOME_FIL: string;

begin
  DecodeDate(CadastroNFE_DEMI.AsDateTime, Ano, Mes, Dia);

  NOME_ARQ := 'C:\Sheild\NotaFiscal\PDF\'+oStrZero(CadastroNFE_CDNF.AsInteger,6)+'.PDF';
  NOME_FIL := 'C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\'+oStrZero(ano,4)+oStrZero(mes,2)+'\'+trim(CadastroNFE_CHAV.AsString)+'-procNFe.xml';

  if not fileexists(NOME_FIL) then
  raise exception.Create('Arquivo '+NOME_FIL+' não encontrado !'+#13+'Favor consultar a nota fiscal.');

  if not fileexists(NOME_ARQ) then
  raise exception.Create('Arquivo '+NOME_ARQ+' não encontrado !'+#13+'Favor consultar a nota fiscal.');

  frmemail := TFrmemail.Create(self);
  try
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      if CadastroNFE_CLFO.AsInteger = 0 then
      begin
        SQL.Add('SELECT CLI_MAIL FROM CAD_CLI');
        SQL.Add('WHERE  ID = '''+CadastroNFE_CFAV.AsString+'''');
      end else
      if CadastroNFE_CLFO.AsInteger = 1 then
      begin
        SQL.Add('SELECT FOR_MAIL FROM CAD_FOR');
        SQL.Add('WHERE  ID = '''+CadastroNFE_CFAV.AsString+'''');
      end else
      if CadastroNFE_CLFO.AsInteger = 2 then
      begin
        SQL.Add('SELECT FOR_MAIL FROM CAD_FOR');
        SQL.Add('WHERE  ID = '''+CadastroNFE_CFAV.AsString+'''');
      end;
      ExecQuery;
    end;

    frmemail.cbemail.Text  := SQLConsulta.Current.Vars[0].AsString;
    frmemail.edtitulo.Text := RECParametros.EP_NO+' - NF.: '+CadastroNFE_CDNF.AsString;
    frmemail.Memo1.Lines.Add('Segue em anexo...') ;

    frmemail.cbarqs.Items.Add(NOME_ARQ);
    frmemail.cbarqs.Items.Add(NOME_FIL);

    frmemail.ShowModal;
  finally
    freeAndNil(frmemail);
  end;
end;

procedure Tfrmctr_nfe._GeraDanfe;
var
  NOME_ARQ: string;
  NOME_FIL: string;
begin
  oRegister_UPD_SizeFont(DBINFADCAD.Lines.Count);

  DecodeDate(CadastroNFE_DEMI.AsDateTime, Ano, Mes, Dia);
  NOME_ARQ := 'C:\Sheild\NotaFiscal\PDF\'+oStrZero(CadastroNFE_CDNF.AsInteger,6)+'.PDF';
  NOME_FIL := 'C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\'+oStrZero(ano,4)+oStrZero(mes,2)+'\'+trim(CadastroNFE_CHAV.AsString)+'-procNFe.xml';

  if Length(CadastroNFE_CHAV.AsString) = 44 then
  begin
    if not FileExists(NOME_FIL) then
      SBRodape.Panels[1].Text := ArquivoDistribuicaoNFe(CadastroNFE_CHAV.AsString);

      if (not fileexists(NOME_ARQ)) and (fileexists(NOME_FIL)) then
      begin
        ImprimeDanfe(NOME_FIL,NOME_ARQ,2,false);
        SleepEx(2000,False);
      end;
  end;
end;

procedure Tfrmctr_nfe.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGConsultaREST.Index] = 'C' then
    begin
      AFont.Color := clWhite;
      AColor      := $000024B3;
    end else
    if ANode.Values[DBGConsultaREST.Index] = 'D' then
    begin
      AFont.Color := clWhite;
      AColor      := clRed;
    end;

    if (AColumn = DBGConsultaNFE_CDNF) or (AColumn = DBGConsultaNFE_DEMI) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
    end;

    if (AColumn = DBGConsultaDTSA) and (ANode.Values[DBGConsultaDTSA.Index] > 0) then
    begin
      AColor      := clBtnFace;
      AFont.Color := clBlack;
      AFont.Style := [fsBold];
    end;

    if (AColumn = DBGConsultaTIPO_NF) and (ANode.Values[DBGConsultaTIPO_NF.Index] = 'DEVOLUÇÃO') then
    begin
      AColor      := clYellow;
      AFont.Color := clBlack;
    end;

    if (AColumn = DBGConsultaTIPO_NF) and (Pos(ANode.Values[DBGConsultaTIPO_NF.Index],'BENEFICIAMENTOSERVIÇO') > 0) then
    begin
      AColor      := clInfobk;
      AFont.Color := clBlack;
    end;

{    if (AColumn = DBGConsultaFINNFE) and (ANode.Values[DBGConsultaFINNFE.Index] = 'DEVOLUÇÃO') then
    begin
      AColor      := clYellow;
      AFont.Color := clBlack;
    end;

    if (AColumn = DBGConsultaFINNFE) and (ANode.Values[DBGConsultaFINNFE.Index] = 'TERCEIROS') then
    begin
      AColor      := clInfobk;
      AFont.Color := clBlack;
    end;
 }
    if AColumn = DBGConsultaDERO then
    begin
      AColor      := clBtnFace;
      AFont.Color := clBlack;

      if ANode.Values[DBGConsultaDERO.Index] = 'AVULSO' then
         AFont.Style := [fsBold];
    end;
  end;
end;

procedure Tfrmctr_nfe.CadastroBeforeEdit(DataSet: TDataSet);
begin
  {};
end;

procedure Tfrmctr_nfe.CadastroBeforeInsert(DataSet: TDataSet);
begin
  {};
end;

procedure Tfrmctr_nfe.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if nfe_ite.State = dsInactive then
     nfe_ite.Open;
  if nfe_tra.State = dsInactive then
     nfe_tra.Open;
end;

procedure Tfrmctr_nfe.CadastroAfterPost(DataSet: TDataSet);
begin
  oRefresh(Cadastro);
end;

procedure Tfrmctr_nfe.SINovoClick(Sender: TObject);
begin
  _GeraNF(1,1); { Emissão Normal + Vazio }
end;

procedure Tfrmctr_nfe.SIMNFTClick(Sender: TObject);
begin
  if CadastroNFE_CDNF.AsInteger = 0 then
     Abort;

  if oYesNo(handle,'TRIANGULAR Nota Fiscal Nº ' + CadastroNFE_CDNF.AsString + ' ?' + #13 +
                                                  CadastroNFE_DFAV.AsString) = mrNo then
     Abort;

  _GeraNF(0,0); { Emissão Triangular + Copiado}
end;

procedure Tfrmctr_nfe.siTRIClick(Sender: TObject);
begin
  if CadastroNFE_CDNF.AsInteger = 0 then
     Abort;

  if oYesNo(handle,'COPIAR Nota Fiscal Nº ' + CadastroNFE_CDNF.AsString + ' ?' + #13 +
                                              CadastroNFE_DFAV.AsString) = mrNo then
     Abort;

  _GeraNF(1,0); { Emissão Normal + Copiado }
end;

procedure Tfrmctr_nfe.DTSCadastroDataChange(Sender: TObject;
  Field: TField);
var
  PosCount: Word;
begin
  inherited;
  dbgConsultaNFE_DVEN.Visible  := (not oEmpty(CadastroNFE_DVEN.AsString));
  dbgConsultaNFE_DREP.Visible  := (not oEmpty(CadastroNFE_DREP.AsString));
  dbgConsultaNFE_VDESC.Visible := (CadastroNFE_VDESC.AsFloat > 0);

  DBGConsulta.ApplyBestFit(DBGConsultaDERO);

  { Informações Adicionais }
            PosCount := oPosCount(''#$D'',CadastroNFE_OBSE.AsString);
  PNLINFADCAD.Height := IFThen((PosCount = 00) and (CadastroNFE_OBSE.AsString =  EmptyStr) ,00,
                        IFThen((PosCount = 00) and (CadastroNFE_OBSE.AsString <> EmptyStr) ,30,
                        IFThen((PosCount = 01),040,
                        IFThen((PosCount = 02),055,
                        IFThen((PosCount = 03),070,
                        IFThen((PosCount = 04),080,
                        IFThen((PosCount = 05),090,
                        IFThen((PosCount = 06),100,
                        IFThen((PosCount = 07),110,
                        IFThen((PosCount = 08),120,
                        IFThen((PosCount = 09),130,
                        IFThen((PosCount = 10),140,140))))))))))));
end;

procedure Tfrmctr_nfe.nfe_iteCalcFields(DataSet: TDataSet);
begin
  nfe_iteC_CST.Value := nfe_iteNFE_ORIG.AsString+nfe_iteNFE_CST.AsString;
end;

procedure Tfrmctr_nfe.DTSCadastroStateChange(Sender: TObject);
begin
{}
end;

procedure Tfrmctr_nfe.siCONClick(Sender: TObject);
var
  rest,
  cStat,
  protNFe,
  procNFe: String;
begin
  if Length(CadastroNFE_CHAV.AsString) = 44 then
     try
       _ConectaSefaz;

       try
         FrmNFeConsultaSefaz := TFrmNFeConsultaSefaz.Create(Self,'Consultando NFe ...',CadastroNFE_CHAV.AsString);
         FrmNFeConsultaSefaz.ShowModal;
       finally
         cStat   := FrmNFeConsultaSefaz.EDcStat.Text;
         protNFe := FrmNFeConsultaSefaz.EDprotNFe.Text;

         FreeAndNil(FrmNFeConsultaSefaz);
       end;

       if Pos(cStat,'101151') > 0 then
       begin
         rest    := 'C';
         procNFe := protNFe;
         protNFe := EmptyStr;
       end else

       if Pos('110',cStat) > 0 then
       begin
         rest    := 'D';
         procNFe := EmptyStr;
       end else

       if Pos(cStat,'100150') > 0 then
       begin
         rest    := 'A';
         procNFe := EmptyStr;
       end else

       if Pos(cStat,'217') > 0 then
       begin
         protNFe := EmptyStr;
         procNFe := EmptyStr;
       end;

       try
         oOTransact(TEdicao);
         with SQLEdicao do
         begin
           Close;
           SQL.Clear;

           SQL.Add('UPDATE ' + oREPZero('NFE_CAB','_',RECParametros.EP_ID,3));
           SQL.Add('SET');

           SQL.Add('REST  = ''' + REST  + ''',');
           SQL.Add('CSTAT = ''' + CSTAT + ''',');

           if procNFe = EmptyStr then
           SQL.Add('NFE_PROT = ''' + protNFe + '''') else
           SQL.Add('NFE_PROC = ''' + procNFe + '''');

           SQL.Add('WHERE ID = ''' + CadastroId.AsString + '''');
           ExecQuery;
         end;
         oCTransact(TEdicao);
         oRefresh(Cadastro);
       except
         on E: Exception do
         begin
           oRefresh(Cadastro,False);
           oException(Nil,'Falha ao tentar liberar separação !' + #13 +
                          'Favor entrar em contato com o suporte técnico.' + #13 + #13 +
                           E.Message + '.');
         end;
       end;
     finally
       if (CadastroNFE_PROT.AsString <> EmptyStr) and (cStat <> '217') and (CadastroREST.AsString <> 'D') then
           _GeraDanfe;
     end;
end;

procedure Tfrmctr_nfe.siCNFClick(Sender: TObject);
var
  Justificativa,
  protNFe,
  cStat: String;
  ClickedOK: Boolean;
begin
  if oYesNo(handle,'Confirma Cancelamento ?'+#13+
                   'Nota Fiscal Nº '+CadastroNFE_CDNF.AsString+'.') = mrno then
     Abort;

  if CadastroID.AsInteger = 0 then
     oException(Nil,'Nota Fiscal não Informada !');
        
  if (RECUsuarios.Grupo = 'VEN') and (CadastroNFE_DVEN.AsString <> EmptyStr) and (CadastroNFE_DVEN.AsString <> RECUsuarios.Login) and (Pos('VENDA',CadastroTIPO_NF.AsString) > 0)  then
      oException(DBGConsulta,'ACESSO NEGADO !'+#13+
                             'Somente o vendedor responsável ou gerente do departamento.');

  if (Length(CadastroNFE_CHAV.AsString) = 44) and (CadastroNFE_PROT.AsString = EmptyStr) and (CadastroCSTAT.AsInteger <> 217)  then
      oException( DBGConsulta,'CANCELAMENTO NEGADO !'+#13+#13+
                              'Nota Fiscal sem protocolo de emissão registrado pelo SEFAZ !'+#13+
                              'Consulte a Nota Fsical e tente novamente.');

  if (CadastroNFE_CDRO.AsInteger > 0) and (Length(CadastroNFE_CHAV.AsString) = 44) and (CadastroCSTAT.AsInteger <> 217) and (Pos('VENDA',CadastroTIPO_NF.AsString) > 0) then
     with SQLConsulta do
     begin
       Close;
       SQL.Clear;
       SQL.Add('SELECT PK.CDBX,PK.FAPD FROM '+oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3)+' AS PK');
       SQL.Add('WHERE  CDNF = ''' +IntToStr(CadastroNFE_CDNF.AsInteger)+'''');
       ExecQuery;
       if Eof then
          oException(DBGConsulta,'CANCELAMENTO NEGADO !'+#13+
                                 'Pedido de Venda Nº '+CadastroDERO.AsString+' não Encontrado.');

       Close;
       SQL.Clear;
       SQL.Add('SELECT FIRST 1 TITULO,RECO,DTVC,VTPG,DTPG,DEST,API_ST,IIF(API_DTED > API_DTCA,API_DTED,API_DTCA) AS API_DT,API_CA,DTBC,CANCELA_NF');
       SQL.Add('FROM (');
       SQL.Add('SELECT   B.TITULO,B.RECO,B.FIN_DVEN AS DTVC,B.FIN_VPAG AS VTPG,B.FIN_DPAG AS DTPG,B.DEST,B.API_ST,B.API_DTCA,B.API_DTED,B.API_CA,B.FIN_DTBC AS DTBC,B.CANCELA_NF FROM ' + oREPZero('FIN_REC_BAN_BAI','_',RECParametros.EP_ID,3) + ' AS B');
       SQL.Add('WHERE    B.IDEP      = '''+CadastroIDEP.AsString    +'''');
       SQL.Add('AND      B.DOCUMENTO = '''+CadastroNFE_CDNF.AsString+'''');
       SQL.Add('AND      B.IDCD      = '''+CadastroNFE_CFAV.AsString+'''');
       SQL.Add('AND     (B.FIN_VPAG > 0 OR B.DEST <> ''PENDENTE'' AND B.DEST <> ''PRORROGADO'' OR POSITION(LEFT(B.API_ST,3) IN ''LIQREGSALEMI'') > 0)');
       SQL.Add('UNION');
       SQL.Add('SELECT   C.TITULO,C.RECO,C.FIN_DVEN AS DTVC,C.FIN_VPAG AS VTPG,C.FIN_DPAG AS DTPG,C.DEST,C.API_ST,C.API_DTCA,C.API_DTED,C.API_CA,C.FIN_DTBC AS DTBC,C.CANCELA_NF FROM ' + oREPZero('FIN_REC_CAR_BAI','_',RECParametros.EP_ID,3) + ' AS C');
       SQL.Add('WHERE    C.IDEP      = '''+CadastroIDEP.AsString    +'''');
       SQL.Add('AND      C.DOCUMENTO = '''+CadastroNFE_CDNF.AsString+'''');
       SQL.Add('AND      C.IDCD      = '''+CadastroNFE_CFAV.AsString+'''');
       SQL.Add('AND     (C.FIN_VPAG > 0 OR C.DEST <> ''PENDENTE'' AND C.DEST <> ''PRORROGADO'' OR POSITION(LEFT(C.API_ST,3) IN ''LIQREGSALEMI'') > 0)');
       SQL.Add('ORDER BY 1 DESC');
       SQL.Add(')');
       ExecQuery;

       if Current.ByName('TITULO').AsString <> EmptyStr then
          if Pos(LeftStr(Current.ByName('DEST').AsString,3),'BAICAN') = 0 then
             if Current.ByName('CANCELA_NF').AsInteger = 0 then
                oException(DBGConsulta,'CANCELAMENTO NEGADO !'+#13+
                                       'Cliente com título(s) ' + IFThen(Current.ByName('VTPG').AsFloat > 0,'pagos','abertos') + ' em contas a receber !'+#13+#13+
                                       'Título Nº '      + Current.ByName('TITULO').AsString + ' [ '+Current.ByName('RECO').AsString+' ] de '  + FormatDateTime('dd/mm/yy',Current.ByName('DTVC').AsDateTime) + #13  +
                                       'Recebimento(s)  '+ Current.ByName('DEST').AsString   + IFThen(Current.ByName('VTPG').AsFloat > 0,FormatFloat(' R$ ,##,0.00',Current.ByName('VTPG').AsFloat)+ ' em ' +FormatDateTime('dd/mm/yy',Current.ByName('DTPG').AsDateTime),'') + #13+#13+
                                       'Boleto '         + IFThen(Current.ByName('API_ST').AsString <> EmptyStr,Current.ByName('API_ST').AsString + '! ' + FormatDateTime('dd/mm/yy hh:mm',Current.ByName('API_DT').AsDateTime) + '.','NÃO REGISTRADO!') +#13+
                                       'Carteira Nº '    + IFThen(Length(Current.ByName('API_CA').AsString) > 1,Current.ByName('API_CA').AsString + '. ' + IFThen(Current.ByName('DTBC').AsDateTime > 0,FormatDateTime('dd/mm/yy hh:mm',Current.ByName('DTBC').AsDateTime) + '.',''),'NÃO ENVIADO!')+#13+#13+
                                       'Favor entrar em contato com o departamento financeiro.' );
     end;

  Justificativa := IFThen(CadastroCSTAT.AsInteger = 217  ,'Não consta na base de dados do SEFAZ',EmptyStr);
  ClickedOK     := InputQuery('Justifique o Cancelamento','Digite aqui a sua Justificativa',Justificativa);
  if not ClickedOK then
     Abort;

  Justificativa := Trim(Justificativa);
  if Length(Justificativa) < 15 then
     oException(DBGConsulta,'Justificativa de cancelamento Ínválido !'+#13+
                            'Informe ao menos 15 palavras.');

  _ConectaSefaz;

  protNFe := '999999999999999';
  if (CadastroNFE_PROT.AsString <> EmptyStr) and (Length(CadastroNFE_CHAV.AsString) = 44) and (CadastroCSTAT.AsInteger <> 217) then
  begin
    FrmNFeConsultaSefaz := TFrmNFeConsultaSefaz.Create(Self,'Cancelando NFe ...',CadastroNFE_CHAV.AsString);
    try
      FrmNFeConsultaSefaz.EMConsulta.Text := NFeCancelamentoEvento(
                                             CadastroNFE_CHAV.AsString,
                                             CadastroNFE_PROT.AsString,
                                             CadastroNFE_CDNF.AsString, // Número sequencial autoincremental único para identificação do Lote gerado pela aplicação
                                             '1',       // número sequencial do evento. A aplicação deve gerar sequencialmente esse valor para cada evento de uma nfe (pg. 3 da NT 2011/006)
                                             Justificativa);
      FrmNFeConsultaSefaz.ShowModal;
    finally
      cStat   := FrmNFeConsultaSefaz.EDcStat.Text;
      protNFe := FrmNFeConsultaSefaz.EDprotNFe.Text;

      FreeAndNil(FrmNFeConsultaSefaz);
    end;

    if (Pos(cStat,'101151') = 0) or (protNFe = EmptyStr) then
        oException(Nil,'Falha ao tentar cancelar nota fiscal !'+#13+
                       'Tente Novamente.');
  end;

  Justificativa := 'Nota Fiscal Nº '+CadastroNFE_CDNF.AsString+' Cancelada.'+' Motivo: '+ Justificativa+'.'+#13+
                   oPrimeiraLetraMaiuscula(RECUsuarios.Login)+' '+FormatDateTime('dd/mm/yy hh:mm',Now)+' '+RECParametros.Host+' '+RECParametros.IP+'.'+#13+#13;

  if protNFe <> EmptyStr then
     try
       oOTransact(TEdicao);
       with SQLEdicao do
       begin
         Close;
         SQL.Clear;

         SQL.Add('UPDATE ' + oREPZero('NFE_CAB','_',RECParametros.EP_ID,3));
         SQL.Add('SET');

         SQL.Add('REST      = ''C'',');
         SQL.Add('NFE_PROC  = ''' + protNFe + ''',');
         SQL.Add('NFE_OBSE  = ''' + Justificativa + '''||COALESCE(NFE_OBSE,'''')');

         SQL.Add('WHERE  ID = ''' + CadastroId.AsString + '''');
         ExecQuery;
       end;

       oCTransact(TEdicao);
       oAviso(Application.Handle,'Nota Fiscal Cancelada com Sucesso !');
       
       ACTEveExecute.Execute;
     except
       on E: Exception do
       begin
         oRefresh(Cadastro,False);
         oException(Nil,'Falha ao tentar liberar separação !' + #13 +
                        'Favor entrar em contato com o suporte técnico.' + #13 + #13 +
                         E.Message + '.');
       end;
     end;
end;

procedure Tfrmctr_nfe.dtsnfe_iteDataChange(Sender: TObject; Field: TField);
begin
  DBGItemNFE_CEST.Visible := (nfe_iteNFE_CEST.AsString <> EmptyStr);
end;

procedure Tfrmctr_nfe.CadastroBeforeOpen(DataSet: TDataSet);
begin
  DBGConsultaDTSA.Visible := False;
end;

procedure Tfrmctr_nfe.CadastroAfterScroll(DataSet: TDataSet);
begin
  if CadastroDTSA.AsDateTime > 0 then DBGConsultaDTSA.Visible := True;
end;

procedure Tfrmctr_nfe._ConectaSefaz;
begin
  if Pos('CONECTADO',Self.Caption) =  0 then
  begin
    Self.Caption := NfeStatusServico;
    Self.Caption := 'Controle Fiscal ' + IFThen(LeftStr(Self.Caption,3) = '107','SEFAZ CONECTADO','SEFAZ FORA DE OPERAÇÃO');
  end;
end;

procedure Tfrmctr_nfe._CAD_SQL_GETTEXT;
begin
  with Cadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PK.ID,PK.IDEP,PK.NFE_TPNF,PK.CDST,PK.REST,PK.DTSA,');
    SQL.Add('         PK.NFE_CDRO,PK.NFE_DERO,TRIM(IIF(NOT FEMPTY(PK.NFE_DERO),PK.NFE_DERO,''AVULSO'')) AS DERO,PK.NFE_CDBX,');
    SQL.Add('         PK.NFE_FINNFE,TB_FIN.DESCRICAO AS FINNFE,IIF(PK.NFE_FINNFE = 6,''NFe Contra'',IIF(PK.NFE_FINNFE = 5,''CFe'',''NFe'')) AS EMISSOR,');
    SQL.Add('         PK.NFE_CDNF,PK.NFE_DEMI,PK.NFE_DSAI,PK.NFE_HRSE,PK.NFE_ESTO,PK.NFE_CNAT,IIF(PK.NFE_FINNFE = 2,''COMPLEMENTAR'',TB_NAT.NAT_TIPO) AS TIPO_NF,TB_NAT.NAT_OPER AS TIPO_OP,');
    SQL.Add('         PK.NFE_CLFO,IIF(PK.NFE_CLFO = 0,''Cliente'',IIF(PK.NFE_CLFO = 1,''Fornecedor'',''Representante'')) AS CLFO,PK.NFE_CFAV,PK.NFE_DFAV,PK.NFE_CVEN,PK.NFE_DVEN,PK.NFE_CREP,PK.NFE_DREP,');
    SQL.Add('         PK.NFE_CTRA,PK.NFE_DTRA ,PK.CFRT,FK.NFE_MODFRETE AS MODFRETE,TB_FRT.DESCRICAO AS MODFRETE_DESC,FK.NFE_QVOL||'' ''||COALESCE(FK.NFE_ESP,'''') AS VOLUME,FK.NFE_PSBR AS PESOB,FK.NFE_PSLQ AS PESOL,');
    SQL.Add('         PK.NFE_QCOM,PK.NFE_VPROD,PK.NFE_VDESC,PK.NFE_VNF,PK.NFE_VICMS,PK.NFE_VIPI,PK.NFE_VPIS,PK.NFE_VCOFINS,');
    SQL.Add('         PK.NFE_VST,PK.NFE_VFRETE,PK.NFE_VSEG,PK.NFE_VII,');
    SQL.Add('         IIF(CHAR_LENGTH(PK.NFE_CHAV) = 44,EP.FANTASIA,''TERCEIROS'') AS EMPRESA,');
    SQL.Add('         PK.NFE_CHAV,PK.NFE_PROT,PK.NFE_PROC,PK.CSTAT,');
    SQL.Add('         PK.NFE_OBSE');

    SQL.Add('FROM ' + oREPZero('NFE_CAB','_',RECParametros.EP_ID,3) + ' AS PK');
    SQL.Add('JOIN TAB_PAR_SIS AS EP     ON (EP.ID             = PK.IDEP  )');
    SQL.Add('JOIN TAB_NAT     AS TB_NAT ON (TB_NAT.CFOP       = PK.CFOP  )');
    SQL.Add('JOIN TAB_TPO     AS TB_FIN ON (TB_FIN.FIS_FINNFE = PK.FINNFE)');

    SQL.Add('LEFT JOIN ' + oREPZero('NFE_TRA','_',RECParametros.EP_ID,3) + ' AS FK ON (FK.IDPK = PK.IDPK)');
    SQL.Add('LEFT JOIN TAB_TPO AS TB_FRT ON (TB_FRT.FIS_MFRT = FK.MFRT)');
  end;
end;

procedure TFrmCTR_NFE._GeraNF(AFinalidade: Word = 1; AEvento: Word = 1); { Finalidade = Emissão Normal Evento = Vazio }
begin
  if Assigned(frmven_nfe) then frmven_nfe.BringToFront else
  begin
    TFrmVEN_NFE._ExecForm(

    Self,       { Owner    }
    FrmVEN_NFE, { Form     }
    False,      { Pesquisa }
    fsMDIChild, { Tipo     }

    IFThen(AEvento = 0,CadastroID.AsInteger,0), { Código Principal }
    '', { Descrição Principal }

    AFinalidade, { Código Evento - 0: Triangular 1: Normal 2: Complementar 3: Ajustes 4:Devolução }
    AEvento    , { Tipo   Evento - 0: Copiado    1: Vazio  2: Romaneado }

    oREPZero('NFE_CAB','_',RECParametros.EP_ID,3), { Tabela }
    '' { Get }
    );
  end;
end;

procedure Tfrmctr_nfe.ACTPesquisaExecute(Sender: TObject);
begin
  inherited;
  try
    with nfe_ite do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM ' + oREPZero('NFE_ITE','_',RECParametros.EP_ID,3) + ' AS PK');
      SQL.Add('WHERE    PK.IDPK  = :ID');
      SQL.Add('ORDER BY PK.NFE_ITEMPED');
      Prepare;
    end;

    with cadastro do
    begin
      _CAD_SQL_GETTEXT;

      SQL.Add('WHERE    CAST(PK.DTCA AS DATE) BETWEEN ''' + RECParametros.SHE_DATA_MES_PK_FMT + ''' AND ''' + RECParametros.SHE_DATA_MES_FK_FMT + '''');
      SQL.Add('ORDER BY PK.DTCA DESC');

      Prepare;
      Open;
    end;
  finally
    { CONSULTA }
    DBGConsulta.Filter.Clear; { Filters }

    if Cadastro.RecNo > 0 then
    begin
      { DBGConsulta }
      PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(DBGConsulta).SetFocus;
    end;
  end;
end;
  
end.
