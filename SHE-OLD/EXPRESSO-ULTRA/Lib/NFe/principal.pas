unit principal;

interface

uses
  Dialogs, Mask, StdCtrls, MidasLib, Windows, Messages, SysUtils, Variants,
  Classes, Graphics, Controls, Forms, xmldom, XMLIntf, msxmldom, XMLDoc,
  ComCtrls, Provider, DB, DBClient, Xmlxform, Grids,
  DBGrids, ExtCtrls, Buttons, Registry, jpeg, StrInt, StrIntImp;

const
 dllNfe = 'nfe.dll';

type
  ArrayBi = Array of Array of shortstring;

  TfrmPrincipal = class(TForm)
    ckbAssinar: TCheckBox;
    OpenDialog1: TOpenDialog;
    Button6: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Button11: TButton;
    PageControl1: TPageControl;
    tbsGerarNfe: TTabSheet;
    tbsAssinarArquivo: TTabSheet;
    tbsValidarArquivo: TTabSheet;
    tbsGerarLote: TTabSheet;
    tbsImprimirDanfe: TTabSheet;
    tbsWSStatus: TTabSheet;
    tbsConsultaProc: TTabSheet;
    tbsConsultarSituacao: TTabSheet;
    tbsCancelamento: TTabSheet;
    tbsInutilizacao: TTabSheet;
    Label3: TLabel;
    EditCodMunicipio: TEdit;
    Label4: TLabel;
    EditMunicipio: TEdit;
    Label5: TLabel;
    Label2: TLabel;
    EditQtdItens: TEdit;
    Label6: TLabel;
    btnGeraNfe: TButton;
    Label7: TLabel;
    btnAssinar: TButton;
    Label8: TLabel;
    Label9: TLabel;
    EditPathArqAssinar: TEdit;
    SpeedButton1: TSpeedButton;
    btnValidarArquivo: TButton;
    Label10: TLabel;
    Label11: TLabel;
    EditPathValidarArquivo: TEdit;
    btnProcurarValidarArquivo: TSpeedButton;
    Label12: TLabel;
    btnGerarLote: TButton;
    rdgOpcoesLote: TRadioGroup;
    Label13: TLabel;
    EditIDLote: TEdit;
    CheckBox1: TCheckBox;
    Label14: TLabel;
    Label15: TLabel;
    btnPesqDanfe: TSpeedButton;
    EditPathDanfe: TEdit;
    btnImprimeDanfe: TButton;
    rdgOpcoesDanfe: TRadioGroup;
    mmoStatusServico: TMemo;
    mmoConsultaProcessamento: TMemo;
    Label16: TLabel;
    EditConsultaProc: TEdit;
    btnSituacaoNFe: TButton;
    mmoConsultaSituacao: TMemo;
    mmoCancelamento: TMemo;
    Label18: TLabel;
    EditNFe: TEdit;
    Label19: TLabel;
    EditProtocoloCancelamento: TEdit;
    Label20: TLabel;
    EditJustificativa: TEdit;
    mmoInutilizacao: TMemo;
    Label21: TLabel;
    EditAno: TEdit;
    Label22: TLabel;
    EditIni: TEdit;
    Label23: TLabel;
    EditFim: TEdit;
    Label24: TLabel;
    EditJustInutilizacao: TEdit;
    Label17: TLabel;
    edtNFeSituacao: TEdit;
    Label25: TLabel;
    EditIE: TEdit;
    Label1: TLabel;
    EditICMSCST: TEdit;
    Label26: TLabel;
    EditIPI: TEdit;
    Label27: TLabel;
    EditCofins: TEdit;
    Label28: TLabel;
    EditPis: TEdit;
    Label29: TLabel;
    EditPathPDF: TEdit;
    EditStatus: TEdit;
    Label31: TLabel;
    SpeedButton2: TSpeedButton;
    EditPathNFeLote: TEdit;
    rdbSaida: TRadioButton;
    rdbEntrada: TRadioButton;
    TabSheet1: TTabSheet;
    Label32: TLabel;
    mmoDistribuicao: TMemo;
    EditDistNFe: TEdit;
    btnDistribuicao: TButton;
    Label35: TLabel;
    chkFormSeguranca: TCheckBox;
    Label36: TLabel;
    Label37: TLabel;
    TabSheet2: TTabSheet;
    btnEnviaEmail: TButton;
    Label39: TLabel;
    Label40: TLabel;
    Label38: TLabel;
    EdtEmail: TEdit;
    Label41: TLabel;
    EdtAssunto: TEdit;
    Label42: TLabel;
    EdtPathXML: TEdit;
    cbbSchema: TComboBox;
    TabSheet3: TTabSheet;
    lb1: TLabel;
    edtUF: TEdit;
    btnConsultaCad: TButton;
    mmoCsCadastro: TMemo;                 
    Label43: TLabel;
    edtCnpj: TEdit;
    tabCCe: TTabSheet;
    Label33: TLabel;
    chnfeCce: TEdit;
    mmoCCe: TMemo;
    mmoCorrecao: TMemo;
    btnCCeExecutar: TButton;
    Label44: TLabel;
    tsImprimeCCe: TTabSheet;
    Label45: TLabel;
    Label46: TLabel;
    edtPathCCe: TEdit;
    editPDF: TEdit;
    impCCe: TButton;
    Button1: TButton;
    rdgOpcoesCCe: TRadioGroup;
    Label47: TLabel;
    ckboxEvento: TCheckBox;
    btnGerarDPEC: TButton;
    Label48: TLabel;
    editNFeDPEC: TEdit;
    Button3: TButton;
    Label49: TLabel;
    GroupBox1: TGroupBox;
    arqnfe: TRadioButton;
    arqdpec: TRadioButton;
    tbsRecepcaoDPEC: TTabSheet;
    Button4: TButton;
    mmoRecepcaoDPEC: TMemo;
    Label50: TLabel;
    chkFormDPEC: TCheckBox;
    Label51: TLabel;
    edtProtDpec: TEdit;
    tbsConsDPEC: TTabSheet;
    edtChaveRegDPEC: TEdit;
    lbl1: TLabel;
    btnConsultaDPEC: TButton;
    mmoconsultaDPEC: TMemo;
    TabSheet4: TTabSheet;
    edtNSU: TTabSheet;
    TabSheet6: TTabSheet;
    cbEvento: TComboBox;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    edtChave: TEdit;
    mmoJust: TMemo;
    btnGeraManifestacao: TButton;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    cbIndNFe: TComboBox;
    cbIndEmi: TComboBox;
    txtNSU: TEdit;
    btnConsDest: TButton;
    mmoRetorno: TMemo;
    Label59: TLabel;
    mmoRet: TMemo;
    Label60: TLabel;
    Label61: TLabel;
    edtChNFe: TEdit;
    btnDownload: TButton;
    mmoResultado: TMemo;
    Label62: TLabel;
    btnGeraFCI: TButton;
    txtXml: TEdit;
    txtFci: TEdit;
    tsWSautorizacao: TTabSheet;
    btnAutorizacao: TButton;
    mmoAutorizacao: TMemo;
    lblIdentOpera: TLabel;
    cbboxIdOpera: TComboBox;
    cbbTpEmis: TComboBox;
    lbltpEmis: TLabel;
    tsWSObsoletos: TTabSheet;
    pgcWSObsoletos: TPageControl;
    wsRecepcao: TTabSheet;
    Label63: TLabel;
    btnRecepcao: TButton;
    mmoRecepcao: TMemo;
    tsDistribuicaoDFe: TTabSheet;
    edtNumNSU: TEdit;
    chkUltNSU: TCheckBox;
    mmoRetDist: TMemo;
    Label34: TLabel;
    btnDistDFe: TButton;
    Label66: TLabel;
    edtChaveRegEPEC: TEdit;
    edtchNFeDistInt: TEdit;
    Label67: TLabel;
    Label68: TLabel;
    EdtSerieInutilizacao: TEdit;
    Label69: TLabel;
    TabSheet5: TTabSheet;
    Label70: TLabel;
    Label71: TLabel;
    mnoEntrega: TMemo;
    edtEntregaChNfe: TEdit;
    edtEntregaDh: TEdit;
    Label72: TLabel;
    edtEntregaNome: TEdit;
    Label73: TLabel;
    edtEntregaDoc: TEdit;
    btnEntrega: TButton;
    ckbDanfeSimplificado: TCheckBox;
    TabSheet7: TTabSheet;
    Label30: TLabel;
    edtGtin: TEdit;
    btnGtin: TButton;
    mmoGtin: TMemo;
    procedure btnGeraNfe_Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
//    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnAssinarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnProcurarValidarArquivoClick(Sender: TObject);
    procedure btnValidarArquivoClick(Sender: TObject);
    procedure btnGerarLoteClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure btnPesqDanfeClick(Sender: TObject);
    procedure btnImprimeDanfeClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btnSituacaoNFeClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnDistribuicaoClick(Sender: TObject);
    procedure chkFormSegurancaClick(Sender: TObject);
    procedure btnEnviaEmailClick(Sender: TObject);
    procedure btnConsultaCadClick(Sender: TObject);
    procedure btnCCeExecutarClick(Sender: TObject);
    procedure impCCeClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnGerarDPECClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure chkFormDPECClick(Sender: TObject);
    procedure btnConsultaDPECClick(Sender: TObject);
    procedure btnGeraManifestacaoClick(Sender: TObject);
    procedure btnConsDestClick(Sender: TObject);
    procedure btnDownloadClick(Sender: TObject);
    procedure btnGeraFCIClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnAutorizacaoClick(Sender: TObject);
    procedure cbbTpEmisChange(Sender: TObject);
    procedure btnRecepcaoClick(Sender: TObject);
    procedure btnDistDFeClick(Sender: TObject);
    procedure btnEntregaClick(Sender: TObject);
    procedure btnGtinClick(Sender: TObject);

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

function VersaoDLL () : WideString; stdcall; external dllNfe; far;

function ImprimeDanfeSimplificado(pathXML : ShortString; tipoImp : integer; formSeguranca : boolean) : boolean;  stdcall;  external dllNfe; far;

function ConsultaGtin(chave : shortstring) : shortstring; stdcall; External dllNfe; far;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses Unit2;


{$R *.dfm}

procedure TfrmPrincipal.btnGeraNfe_Click(Sender: TObject);
var
 tIde, tEmit, tDest, tTotal, tTransp, tCobr, tPag, tInfAdic, autXML : array of shortstring; //prefixo t = tag, ex: tag Ide
 tProd : ArrayBi;
 x, qtdItens,nNF : integer;
 ret : shortstring;
 TimeZone: TTimeZoneInformation;
 ZonaTime: String;
 registro: TRegistry;
begin
try
 registro.OpenKey('NFe', True);
 registro.ReadString('UnidadeFederadaCodigo');
 Screen.cursor:=crAppStart;
 btnGeraNfe.Enabled:=false;
 EditStatus.Text:='Gerando NF-e';
 Panel2.Refresh;

 qtdItens:=StrToInt(EditQtdItens.text);
 randomize;
 nNF:=Random(9999);

 { Atenção! Atentar-se nos tamanhos dos array's abaixo
   sempre que houver atualizacoes. }

 SetLength(tIde,44);              //ide
 SetLength(tEmit,15);             //emit
 SetLength(tDest,56);             //dest
 SetLength(tProd, qtdItens, 217); //prod
 SetLength(tTotal,42);            //total
 SetLength(tTransp,28);           //transp
 SetLength(tCobr,11);             //cobr
 SetLength(tPag,9);               //pag
 SetLength(tInfAdic,25);          //infAdic
 SetLength(autXML,1);             //autXML

 { <ide> TAG de grupo das informações de identificação da NF-e }

 tIde[0]:=registro.ReadString('UnidadeFederadaCodigo');            //<cUF> Código da UF do emitente do Documento Fiscal
 tIde[1]:=intTostr(nNF);                                           //<cNF> Código Numérico que compõe a Chave de Acesso - Numero aleatorio: apenas 8 digitos: NF-e 2.00
 tIde[2]:='VENDA DE PROD. ESTAB';                                  //<natOp> Descrição da Natureza da Operação
 tIde[3]:='';                                                      //<indPag> Indicador da forma de pagamento - Retirado na versão 4.00
 tIde[4]:='55';                                                    //<mod>  Código do Modelo do Documento Fiscal
 tIde[5]:='1';                                                     //<serie> Série do Documento Fiscal
 tIde[6]:=intTostr(nNf);                                           //<nNF> Número do Documento Fiscal
 GetTimeZoneInformation(TimeZone);
 ZonaTime := FormatFloat('00',Timezone.Bias div -60) + ':00';
 tIde[7]:=FormatDatetime('yyyy-mm-dd',date) + 'T' + FormatDateTime('hh:nn:ss',now) + ZonaTime;          //<dhEmi>  Data e hora de emissão do Documento Fiscal
 tIde[8]:=FormatDatetime('yyyy-mm-dd',date) + 'T' + FormatDateTime('hh:nn:ss',now) + ZonaTime;          //<dhSaiEnt>  Data e hora de Saída ou da Entrada da Mercadoria/Produto

 if (rdbSaida.Checked) then
  tIde[9]:='1' else              //<tpNF> Tipo de Operação - 0=Entrada; 1=Saída
 if (rdbEntrada.Checked) then
  tIde[9]:='0';                  //<tpNF>

 tIde[10]:=EditCodMunicipio.text;//<cMunFG> Código do Município de Ocorrência do Fato Gerador - composto de 7 dígitos numéricos

 tIde[11]:= Copy(cbbTpEmis.Text,1,1); //<tpEmis> Tipo de Emissão da NF-e

 tIde[12]:='1';    //<finNFe> Finalidade de emissão da NF-e - 1=NF-e Normal; 2=NF-e Complementar; 3=NF-e Ajuste; 4=Devolução de mercadoria

 { Grupo de informação das NF-e´s referenciadas. Informar ";" no final de cada ocorrência do grupo.}
 tIde[13]:='';     //<refNFe>  - chave da nfe referenciada  (Grupo 1/5: até 5 chaves de NF-e)
 tIde[34]:='';     //<refNFe>  - chave da nfe referenciada  (Grupo 2/5: até 5 chaves de NF-e)
 tIde[37]:='';     //<refNFe>  - chave da nfe referenciada  (Grupo 3/5: até 5 chaves de NF-e)
 tIde[38]:='';     //<refNFe>  - chave da nfe referenciada  (Grupo 4/5: até 5 chaves de NF-e)
 tIde[39]:='';     //<refNFe>  - chave da nfe referenciada  (Grupo 5/5: até 5 chaves de NF-e)

 { Grupo de informação de NF´s modelo 1/1A referenciadas. Se for informar, informar todos os dados pois todas as tags são obrigatórias(1-1).  Informar ";" no final de cada ocorrência do grupo.}
 tIde[19]:='';     //<cUF>    --> Utilizar a Tabela do IBGE
 tIde[20]:='';     //<AAMM>   --> AAMM da emissão da NF
 tIde[21]:='';     //<CNPJ>   --> CNPJ do emitente da NF
 tIde[22]:='';     //<mod>    --> Informar o código do modelo do Documento fiscal: 01 – modelo 01
 tIde[23]:='';     //<serie>  --> informar a série do documento fiscal 1-3 caracteres
 tIde[24]:=IntToStr(nNF);     //<nNF>    --> 1 – 999999999

 { Grupo de informação de cupons fiscais referenciados.  Informar ";" no final de cada ocorrência do grupo.}
 tIde[17]:='';     //<mod>  (2 dígitos. Valores possíveis: 2B - para cupom fiscal emitido por máquina registradora, 2C - para cupom PDV ou 2D - para cupom emitido por ECF)
 tIde[18]:='';     //<nECF> (1-3 dígitos)
 tIde[25]:= '';    //<nCOO>

 {Grupo de informação de NF´S de produtor rural referenciada. Se for informar, informar todos os dados pois todas as tags são obrigatórias(1-1).  Informar ";" no final de cada ocorrência do grupo.}
 tIde[26]:='';     //<cUF>   --> Utilizar a Tabela do IBGE
 tIde[27]:='';     //<AAMM>  --> AAMM da emissão da NF
 tIde[28]:='';     //<CNPJ> OU <CPF> do Produtor Rural emitente da NF. Se for informado CNPJ (14 dígitos) será gerada tag <CNPJ> e se for informado cpf (11 dígitos) será gerada tag <CPF>
 tIde[29]:='';     //<IE>
 tIde[30]:='';     //<mod>   2 dígitos, valores: 04 - para nf de produtor ou 01 - para nf avulsa.
 tIde[31]:='';     //<serie>   1-3 caracteres
 tIde[32]:='';     //<nNF> da nota fiscal - Informar para gerar esse grupo de tags.

 {Grupo de informação de CTe´S referenciadas.  Informar ";" no final de cada ocorrência do grupo.}

 tide[33]:='';     //<refCTe> informar aqui a Chave de acesso do CT-e referenciado. Para não informar nenhuma Cte referenciada, deixar vazio.

 tIde[14]:='1';    //<indFinal> Indica operação com Consumidor final - 0=Normal; 1=Consumidor final; -> A Tag hSaiEnt foi removida, por isso, em sua posição, foi adicionada a tag indFinal

 tIde[15]:='';     //<dhCont> Data da entrada em contingência - Formado -> AAAA-MM-DDTHH:MM:SSTZD
 tIde[16]:='';     //<xJust> Justificativa da entrada em contingência

 tIde[35]:= Copy(cbboxIdOpera.Text,1,1);    //<idDest> Identificador de local de destino da operação
 tIde[36]:='0';                             //<indPres> Indicador de presença do comprador no estabelecimento comercial no momento da operação

 tIde[40] := 'Versao Aplicativo'; //verProc

 tIde[41] := '1'; //indIntermed; 0 - Operação sem intermediador (em site ou plataforma própria); 1 - Operação em site ou plataforma de terceiros (intermediadores/marketplace)
 tIde[42] := '05915656000158'; //CNPJ - Informar o CNPJ do Intermediador da Transação (agenciador, plataforma de delivery, marketplace e similar) de serviços e de negócios.
 tIde[43] := 'TESTE NOME'; //idCadIntTran  - Nome do usuário ou identificação do perfil do vendedor no site do intermediador (agenciador, plataforma de delivery, marketplace e similar) de serviços e de negócios.


 { <emit> TAG de grupo de identificação do emitente da NF-e }

 tEmit[0]:='Emitente ASS Comp test';                    //<xNome>
 tEmit[1]:='ASS Test';                                  //<xFant>
 tEmit[2]:='Av. Norte Miguel Arraes de Alencar';        //<xLgr>
 tEmit[3]:='1048';                                      //<nro>
 tEmit[4]:='LOJA';                                      //<xCpl>
 tEmit[5]:='Cruzeiro';                                  //<xBairro>
 tEmit[6]:=EditCodMunicipio.Text;                       //<cMun> composto de 7 dígitos numéricos
 tEmit[7]:=EditMunicipio.Text;                          //<xMun>
 tEmit[8]:='58400100';                                  //<CEP>
 tEmit[9]:='8121190161';                                //<fone>
 tEmit[10]:=EditIE.Text;                                //<IE>
 tEmit[11]:='';                                         //<IM> Inscrição Municipal do Prestador de Serviço
 tEmit[12]:='';                                         //<CNAE> CNAE fiscal
 tEmit[13]:='';                                         //<IEST> IE do Substituto Tributário
 tEmit[14]:='3';                                        //<CRT> Código de Regime Tributário -> 1 – Simples Nacional; 2 – Simples Nacional – excesso de sublimite de receita bruta; 3 – Regime Normal

 { <dest> TAG de grupo de identificação do Destinatário da NF-e }

 tDest[0]:='33977402587';                   //<CNPJ> ou <CPF>
 tDest[38]:='';                             //<idEstrangeiro>
 tDest[1]:='RAZÃO DESTINATÁRIO';            //<xNome>
 tDest[41]:='';                             //<xFant>
 tDest[2]:='Rua Padre Casemiro Quiroga';    //<xLgr>
 tDest[3]:='236';                           //<nro>
 tDest[4]:='Complemento';                   //<xCpl>
 tDest[5]:='Bairro Teste';                  //<xBairro>
 tDest[6]:='3550308';                       //<cMun>
 tDest[7]:='Sao Paulo';                     //<xMun>
 tDest[8]:='SP';                            //<UF>
 tDest[9]:='04859230';                      //<CEP>
 tDest[10]:='1058';                         //<cPais>
 tDest[11]:='BRASIL';                       //<xPais>
 tDest[12]:='8330638053';                   //<fone>
 tDest[13]:='';                             //<IE>
 tDest[14]:='';                             //<ISUF>
 tDest[40]:= '';                            //<IM>

 { exporta }
 tDest[15]:='';                             //<UFSaidaPais> Sigla da UF de Embarque ou de transposição de fronteira
 tDest[16]:='';                             //<xLocExporta> Descrição do Local de Embarque ou de transposição de fronteira
 tDest[39]:='';                             //<xLocDespacho> Descrição do local de despacho

 { compra }
 tDest[17]:='';                             //<xNEmp> Nota de Empenho
 tDest[18]:='';                             //<xPed> Pedido
 tDest[19]:='';                             //<xCont> Contrato

 tDest[20]:='';                             //<email> Email do Emitente



 { Grupo de identificação do Local de RETIRADA }
 { Informar apenas quando for diferente do endereço do remetente. }

 tDest[21]:='';                   //RETIRADA <CNPJ> ou <CPF>
 tDest[22]:='';                   //RETIRADA <xLgr>
 tDest[23]:='';                   //RETIRADA <nro>
 tDest[24]:='';                   //RETIRADA <xCpl>
 tDest[25]:='';                   //RETIRADA <xBairro>
 tDest[26]:='';                   //RETIRADA <cMun>
 tDest[27]:='';                   //RETIRADA <xMun>
 tDest[28]:='';                   //RETIRADA <UF>

 {NT 2018_005 v1.20}

 tDest[42]:='';                   //RETIRADA <xNome>
 tDest[43]:='';                   //RETIRADA <CEP>
 tDest[44]:='';                   //RETIRADA <cPais>
 tDest[45]:='';                   //RETIRADA <xPais>
 tDest[46]:='';                   //RETIRADA <fone>
 tDest[47]:='';                   //RETIRADA <email>
 tDest[48]:='';                   //RETIRADA <IE>

 { Grupo de identificação do Local de ENTREGA }
 { Informar apenas quando for diferente do endereço do destinatário. }

 tDest[29]:='';                              //ENTREGA <CNPJ> ou <CPF>
 tDest[30]:='';                              //ENTREGA <xLgr>
 tDest[31]:='';                              //ENTREGA <nro>
 tDest[32]:='';                              //ENTREGA <xCpl>
 tDest[33]:='';                              //ENTREGA <xBairro>
 tDest[34]:='';                              //ENTREGA <cMun>
 tDest[35]:='';                              //ENTREGA <xMun>
 tDest[36]:='';                              //ENTREGA <UF>

 {NT 2018_005 v1.20}

 tDest[49]:='';                              //ENTREGA <xNome>
 tDest[50]:='';                              //ENTREGA <CEP>
 tDest[51]:='';                              //ENTREGA <cPais>
 tDest[52]:='';                              //ENTREGA <xPais>
 tDest[53]:='';                              //ENTREGA <fone>
 tDest[54]:='';                              //ENTREGA <email>
 tDest[55]:='';                              //ENTREGA <IE>

 tDest[37]:='9';                             //<indIEDest> Indicador da IE do Destinatário -> 1=Contribuinte ICMS (informar a IE do destinatário);2=Contribuinte isento de Inscrição no cadastro de Contribuintes do ICMS; 9=Não Contribuinte, que pode ou não possuir Inscrição

 autXML[0] := '';                            //<autXML>  Pessoas autorizadas a acessar o XML da NF-e CNPJ ou CPF


 { <prod> TAG de grupo do detalhamento de Produtos e Serviços da NF-e }

 for x:=0 to (length(tProd)-1) do
 begin
   tProd[x,0]:='55';                                                 //<cProd> Código do produto ou serviço
   tProd[x,1]:='7898357410015';                                      //<cEAN> GTIN (Global Trade Item Number) do produto, antigo código EAN ou código de barras
   tProd[x,2]:='MEU PRODUTO DE TESTE '+IntToStr(x+1);                //<xProd> Descrição do produto ou serviço
   tProd[x,3]:='73181500';                                           //<NCM> Código NCM com 8 dígitos
   tProd[x,109]:='';                                                 //<NVE> Codificação NVE - Nomenclatura de Valor Aduaneiro e Estatística
   tProd[x,146]:='1231237';                                          //<CEST>
   tProd[x,156]:='N';                                                //<indEscala> Indicador de Escala Relevante - S - Produzido em Escala Relevante; N – Produzido em Escala NÃO Relevante. -> Campo Novo Obrigatorio NFE 4.0
   tProd[x,157]:='09245135000191';                                   //<CNPJFab> CNPJ do Fabricante da Mercadoria, obrigatório para produto em escala NÃO relevante -> Campo Novo NFE 4.0
   tProd[x,158]:='0123456789';                                       //<cBenef> Código de Benefício Fiscal utilizado pela UF, aplicado ao item. -> Campo Novo NFE 4.0
   tProd[x,4]:='';                                                   //<EXTIPI>
   tProd[x,5]:='6102';                                               //<CFOP> Código Fiscal de Operações e Prestações
   tProd[x,6]:='UN';                                                 //<uCom> Uniade Comercial
   tProd[x,7]:='15.0000';                                            //<qCom> Quantidade Comercial
   tProd[x,8]:='25.0000000000';                                      //<vUnCom> Valor Unitário de Comercialização
   tProd[x,9]:='375.00';                                             //<vProd> Valor Total Bruto do Produto ou Serviço
   tProd[x,10]:='7898357410015';                                     //<cEANTrib> GTIN (Global Trade Item Number) da unidade tributável, antigo código EAN ou código de barras
   tProd[x,11]:='UN';                                                //<uTrib> Unidade Tributável
   tProd[x,12]:='15.0000';                                           //<qTrib> Quantidade Tributável
   tProd[x,13]:='25.0000000000';                                     //<vUnTrib> Valor Unitário de tributação
   tProd[x,14]:='';                                                  //<vFrete> Valor Total do Frete
   tProd[x,15]:='';                                                  //<vSeg> Valor Total do Seguro
   tProd[x,16]:='';                                                  //<vDesc> Valor do Desconto
   tProd[x,86]:='';                                                  //<voutro> Outras despesas acessórias

   { Grupo do ISSQN }
   { Se ISSQN for informado os grupos ICMS, IPI e II não serão informados e vice-versa (NF-e v2.0) }
   tProd[x,39]:='';//'10.00';                //ISSQN <vBC> Valor da Base de Cálculo ISSQN
   tProd[x,40]:='';//'5.00';                 //ISSQN <vAliq> Valor da Aliquota ISSQN
   tProd[x,41]:='';//'0.50';                 //ISSQN <vISSQN> Valor do ISSQN
   tProd[x,42]:='';//EditCodMunicipio.text;  //ISSQN <cMunFG> Código do município de ocorrência do fato gerador do ISSQN
   tProd[x,43]:='';//'101';                  //ISSQN <cListServ>  Item da Lista de Serviços
   tProd[x,70]:='';//'N';                    //ISSQN <cSitTrib> Código da tributação do ISSQN: N – NORMAL; R – RETIDA; S –SUBSTITUTA; I – ISENTA. (v.2.0)

   //NF-e 3.10
   tprod[x, 119] := '';            	   	//ISSQN <vDeducao> Valor dedução para redução da Base de Cálculo
   tprod[x, 120] := '';            	   	//ISSQN <vOutro> Valor outras retenções
   tprod[x, 121] := '';            	   	//ISSQN <vDescIncond> Valor desconto incondicionado
   tprod[x, 122] := '';            	   	//ISSQN <vDescCond> Valor desconto condicionado
   tprod[x, 123] := '';            	   	//ISSQN <vISSRet> Valor retenção ISS
   tprod[x, 124] := '';            	   	//ISSQN <indISS> Indicador da exigibilidade do ISS
   tprod[x, 125] := '';            	   	//ISSQN <cMun> Código do Município de incidência do imposto
   tprod[x, 126] := '';            	   	//ISSQN <cPais> Código do País onde o serviço foi prestado
   tprod[x, 127] := '';            	   	//ISSQN <nProcesso> Número do processo judicial ou administrativo de suspensão da exigibilidade
   tprod[x, 128] := '';            	   	//ISSQN <indIncentivo> Indicador de incentivo Fiscal
   tprod[x, 136] := '';                 //ISSQN <cServico> Código do serviço prestado dentro do município


   { tag ICMS e CSOSN }
   tProd[x,17]:='0';                //<orig> Origem da mercadoria
   tProd[x,18]:=EditICMSCST.Text;   //<CST> ou <CSOSN> Tributação do ICMS
   tProd[x,19]:='3';                //<modBC> Modalidade de determinação da BC do ICMS
   tProd[x,20]:='375.00'; //'10.00';      //<vBC> Valor da BC do ICMS
   tProd[x,21]:='12.00'; //'17.00';      //<pICMS> Alíquota do imposto ICMS
   tProd[x,22]:='45.00'; //'1.70';       //<vICMS> Valor do ICMS

   {Tags NFE4.00}
   tProd[x,166]:='';                //<pFCP> Percentual do Fundo de Combate à Pobreza (FCP)
   tProd[x,167]:='';                //<vFCP> Valor do Fundo de Combate à Pobreza (FCP)
   tProd[x,168]:='';                //<vBCFCP> Valor da Base de Cálculo do FCP
   tProd[x,169]:='';                //<vBCFCPST> Valor da Base de Cálculo do FCP retido por Substituição Tributária
   tProd[x,170]:='';                //<pFCPST> Percentual do FCP retido por Substituição Tributária
   tProd[x,171]:='';                //<vFCPST> Valor do FCP retido por Substituição Tributária
   tProd[x,172]:='';                //<pST> Alíquota suportada pelo Consumidor Final
   tProd[x,173]:='';                //<vBCFCPSTRet> Valor da Base de Cálculo do FCP retido anteriormente
   tProd[x,174]:='';                //<pFCPSTRet> Percentual do FCP retido anteriormente por Substituição Tributária
   tProd[x,175]:='';                //<vFCPSTRet> Valor do FCP retido anteriormente por Substituição Tributária

   tProd[x,46]:='';                 //<modBCST> Modalidade de determinação da BC do ICMS ST

   tProd[x,47]:='';                 //<pMVAST> Percentual da margem de valor Adicionado do ICMS ST
   tProd[x,48]:='';                 //<pRedBCST> Percentual da Redução de BC do ICMS ST

   tProd[x,49]:='';                 //<vBCST>    //icms60, icmspart, ICMSSN500: <vBCSTRet>
   tProd[x,50]:='';                 //<pICMSST>
   tProd[x,51]:='';                 //<vICMSST>  //icms60,ICMSSN500: <vICMSSTRet>
   tProd[x,52]:='';                 //<pRedBC>

   tProd[x,80]:='';                 //<pCredSN> Alíquota aplicável de cálculo do crédito (Simples Nacional).
   tProd[x,81]:='';                 //<vCredICMSSN> Valor crédito do ICMS que pode ser aproveitado nos termos do art. 23 da LC 123 (Simples Nacional)

   tProd[x,85]:='';                 //<motDesICMS> Informar o motivo da desoneração: 0 a 9, ver tabela no manual do contribuinte NF-e.
   tProd[x,96]:='';                 //<pBCOp> informar apenas para gerar o grupo ICMSPART - Grupo de partilha do ICMS entre a UF de origem e UF de destino ou a UF definida na legislação.
   tProd[x,97]:='';                 //<UFST> informar apenas para o grupo ICMSPART

   { tag IPI }
   tProd[x,23]:=EditIPI.Text;       //IPI <CST> Código da situação tributária do IPI
   { obs: Informar os campos INDEX 24 e 25 caso o cálculo do IPI seja por alíquota ou os campos INDEX
   78 e 79 caso o cálculo do IPI seja valor por unidade. }

   tProd[x,78]:='';                 //IPI <qUnid> Quantidade total na unidade padrão para tributação (somente para os produtos tributados por unidade)
   tProd[x,79]:='';                 //IPI <vUnid> Valor por Unidade Tributável

   tProd[x,24]:='';                 //IPI <vBC> Valor da BC do IPI
   tProd[x,25]:='';                 //IPI <pIPI> Alíquota do IPI

   { fim obs }

   tProd[x,26]:='';                 //IPI <vIPI> Valor do IPI

   tProd[x,87]:='';                 //IPI <clEnq> Classe de enquadramento do IPI para Cigarros e Bebidas
   tProd[x,88]:='';                 //IPI <CNPJProd> CNPJ do produtor da mercadoria, quando diferente do emitente. Somente para os casos de exportação direta ou indireta.
   tProd[x,89]:='';                 //IPI <cSelo> Código do selo de controle IPI
   tProd[x,90]:='';                 //IPI <qSelo> Quantidade de selo de controle
   tProd[x,91]:='';                 //IPI <cEnq> Código de Enquadramento Legal do IPI


   tProd[x,27]:='';                 //II <vBC> Valor BC do Imposto de Importação
   tProd[x,28]:='';                 //II <vDespAdu> Valor despesas aduaneiras
   tProd[x,29]:='';                 //II <vII> Valor Imposto de Importação
   tProd[x,30]:='';                 //II <vIOF> Valor Imposto sobre Operações Financeiras

   { tag PIS }
   tProd[x,31]:=EditPis.Text;       //<CST> Código de Situação Tributária do PIS
   tProd[x,32]:='375.00';            //<vBC> Valor da Base de Cálculo do PIS
   tProd[x,33]:='1.65';             //<pPIS> Alíquota do PIS (em percentual)
   tProd[x,34]:='6.19'; //'0.10';    //<vPis> Valor do PIS
   tProd[x,45]:=''; //'0.1';        //<vAliqProd> Alíquota do PIS (em reais)

   { tag COFINS }
   tProd[x,35]:=EditCofins.text;    //<CST> Código de Situação Tributária do Cofins
   tProd[x,36]:='375.00';           //<vBC> Valor da Base de Cálculo da COFINS
   tProd[x,37]:='7.60';             //<pCOFINS> Alíquota da COFINS (em percentual)
   tProd[x,38]:='28.50'; //'0.30';  //<vCOFINS> Valor da COFINS
   tProd[x,44]:=''; //'0.3';        //<vAliqProd> Alíquota da COFINS (em reais)

   { tag PISST }
   tProd[x,54]:='';                 //<vBC> Valor da Base de Cálculo do PIS
   tProd[x,55]:='';                 //<pPIS> Alíquota do PIS (em percentual)
   tProd[x,56]:='';                 //<vPIS> Valor do PIS

   { tag COFINSST }
   tProd[x,57]:='';                 //<vBC> Valor da Base de Cálculo da COFINS
   tProd[x,58]:='';                 //<pCOFINS> Alíquota da COFINS (em percentual)
   tProd[x,59]:='';                 //<vCOFINS> Valor da COFINS


{ Tag da Declaração de Importação (Ocorrência 0-n). Se houver declaração de inportação informar. Para muitas ocorrências, informe os dados separados por ";"}
   tProd[x,60]:='';                 //<nDI> Número do Documento de Importação (DI, DSI, DIRE, ...)
   tProd[x,61]:='';                //<dDI> Data de Registro do documento - Formato: “AAAA-MM-DD”
   tProd[x,62]:='';         //<xLocDesemb> Local de desembaraço
   tProd[x,63]:='';                        //<UFDesemb> Sigla da UF onde ocorreu o Desembaraço Aduaneiro
   tProd[x,64]:='';                //<dDesemb> Data do Desembaraço Aduaneiro
   tProd[x,65]:='';                 //<cExportador> Código do Exportador
   tProd[x,133]:='';                         //<vAFRMM> Valor da AFRMM - Adicional ao Frete para Renovação da Marinha Mercante

   {grupo de adição de importação(Ocorrência 1-N). Atenção: em cada grupo <DI> pode ocorrer 1-n vezes as tags <adi> . Separar usando | as informações de cada grupo <adi> como
   descrito no exemplo abaixo que gera 3 grupos <adi> em cada um dos 2 grupos <DI>}

   tProd[x,66]:='';                           //adi: <nAdicao> Numero da Adição (1-1) 
   tProd[x,67]:='';                           //adi: <nSeqAdic> Numero sequencial do item dentro da Adição (1-1)
   tProd[x,68]:='';                           //adi: <cFabricante> Código do fabricante estrangeiro (1-1)
   tProd[x,69]:='';                           //adi: <vDescDI> Valor do desconto do item da DI – Adição (0-1)
   tProd[x,155]:='';                          //adi: <nDraw> Número do ato concessório de Drawback

   tProd[x,83]:='';                           //<xPed>  Número do Pedido de Compra (0-1)
   tProd[x,84]:='';                           //<nItemPed> Item do Pedido de Compra (0-1)


  { Grupo do detalhamento de Medicamentos e de matérias primas farmacêuticas.
    Atenção! Separe por ";" para informar mais de 1 grupo de Medicamentos.
   Neste exemplo abaixo temos 3 grupos por produto. Deve-se inserir ; no final de cada registro, inclusive no final do último, como no exemplo}
   tProd[x,71]:='';          //<nLote> Número do Lote do produto. Ex: [x,71]:='123' ou [x,71]:='123;124;125;'
   tProd[x,72]:='';          //<qLote> Quantidade de produto no Lote. Ex: [x,72]:='1.000' ou [x,72]:='1.000;1.200;1.300;'
   tProd[x,73]:='';          //<dFab> Data de fabricação/ Produção. Ex: [x,73]:='2018-06-01' ou [x,73]:='2018-06-01;2018-06-01;2018-06-01;'
   tProd[x,74]:='';          //<dVal> Data de validade. Ex: [x,74]:='2019-06-01' ou [x,74]:='2019-06-01;2019-06-01;2019-06-01;'
   
   tProd[x,75]:='';          //<vPMC> Preço máximo consumidor
   tProd[x,160]:='';         //<cProdANVISA> Código de Produto da ANVISA -> Novo campo da versão 4.0   

   //NOTA: Caso este item nao possua dados de meedicamentos, informe: tProd[x,71]:='';

   tProd[x,159]:='';                //<cAgreg> Código de Agregação

  {Grupo do detalhamento de Combustíveis. Informar apenas para operações com combustíveis líquidos e lubrificantes}
   tProd[x,92]:= '';                //<cProdANP> Código de produto da ANP (ocorrência 1-1) --> Nota: se não for informada essa posição, não será gerado o grupo <comb>
   tProd[x, 132]:= '';              //<pMixGN> Percentual de Gás Natural para o produto GLP (cProdANP=210203001)

   tProd[x,161]:='';                //<descANP> Descrição do Produto v4.00
   tProd[x,162]:='';                //<pGLP> Percentual do GLP derivado do petróleo v4.00
   tProd[x,163]:='';                //<pGNn> Percentual do Gás Natural Nacional v4.00
   tProd[x,164]:='';                //<pGNi> Percentual de Gás Natural Importado v4.00
   tProd[x,165]:='';                //<vPart> Valor de Partida v4.00

   tProd[x,93]:= '';                //<CODIF> Código de autorização / registro do CODIF    (ocorrência 0-1)
   tProd[x,94]:= '';                //<qTemp> Quantidade de combustível faturada à temperatura ambiente.   (ocorrência 0-1)
   tProd[x,95]:= '';                //<UFCons> Sigla da UF de consumo  (ocorrência 1-1)
   //NOTA: Caso este item nao possua dados de combustíveis ou lubrificantes, informe: tProd[x,92]:='';

   { infAdProd - 2 posicoes p/ completar 500 caracteres }
   tProd[x,53]:='';//'REFERÊNCIA index primeiro '+IntToStr(x+1);
   tProd[x,77]:='';//'REFERÊNCIA index segundo '+IntToStr(x+1);

   tProd[x,76]:='1';                //<indTot> Indica se valor do Item (vProd) entra no valor total da NF-e (vProd) - 0 = Valor do item (vProd) não compõe o valor total da NF-e; 1 = Valor do item (vProd) compõe o valor total da NF-e (vProd) (v2.0);

   { Grupo do detalhamento de Veículos novos }
   { Informar apenas quando se tratar de veículos novos
     ATENCAO! Informe sempre o delimitador ";" para este grupo }


   tProd[x,82]:= ''; {'1'                 +';'+       //<tpOp> Tipo da operação - 1=Venda concessionária; 2=Faturamento direto para consumidor final; 3=Venda direta para grandes consumidores (frotista, governo, ...); 0=Outros
                '12345678901234567' +';'+             //<chassi> Chassi do veículo
                '123'               +';'+             //<cCor> Cor - Código de cada montadora
                'PRETO'             +';'+             //<xCor> Descrição da Cor
                '220'               +';'+             //<pot> Potência Motor (CV)
                '220'               +';'+             //<cilin> Cilindradas
                '2'                 +';'+             //<pesoL> Peso Líquido
                '2'                 +';'+             //<pesoB> Peso Bruto
                '21311213'          +';'+             //<nSerie> Serial (série)
                '02'                +';'+             //<tpComb> Tipo de combustível - Utilizar Tabela RENAVAM (v2.0); 01=Álcool, 02=Gasolina, 03=Diesel, (...); 16=Álcool/Gasolina; 17=Gasolina/Álcool/GNV; 18=Gasolina/Elétrico
                '123'               +';'+             //<nMotor> Número de Motor
                '500'               +';'+             //<CMT> Capacidade Máxima de Tração
                '15'                +';'+             //<dist> Distância entre eixos
                '2011'              +';'+             //<anoMod> Ano Modelo de Fabricação
                '2010'              +';'+             //<anoFab> Ano de Fabricação
                '1'                 +';'+             //<tpPint> Tipo de Pintura
                '06'                +';'+             //<tpVeic> Tipo de Veículo
                '1'                 +';'+             //<espVeic> Espécie de Veículo - 1=PASSAGEIRO; 2=CARGA; 3=MISTO; 4 = CORRIDA; 5 = TRAÇÃO; 6 = ESPECIAL;
                'N'                 +';'+             //<VIN> Condição do VIN(chassi) - R=Remarcado; N=Normal
                '1'                 +';'+             //<condVeic> Condição do Veículo - 1=Acabado; 2=Inacabado; 3=Semiacabado
                '1234'              +';'+             //<cMod> Código Marca Modelo
                '11'                +';'+             //<cCorDENATRAN> Código da Cor - 01=AMARELO, 02=AZUL, 03=BEGE, 04=BRANCA, 05=CINZA, 06=-DOURADA, 07=GRENÁ, 08=LARANJA, 09=MARROM, 10=PRATA, 11=PRETA, 12=ROSA, 13=ROXA, 14=VERDE, 15=VERMELHA, 16=FANTASIA
                '5'                 +';'+             //<lota> Capacidade máxima de lotação
                '0'                 +';';             //<tpRest> Restrição - 0=Não há; 1=Alienação Fiduciária; 2=Arrendamento Mercantil; 3=Reserva de Domínio; 4=Penhor de Veículos; 9=Outras. (v2.0)
                  }


  //NOTA: Caso este item nao possua dados de veiculo, informe: tProd[x,82]:='';

    tProd[x,99]:='79.69';            //<vtotTrib> Valor aproximado dos tributos do produto
    tProd[x,105]:='';               //<nFCI>  Número de controle da FCI - Ficha de Conteúdo de Importação
    tProd[x,106]:='7;';             //<tpViaTransp> Via de transporte internacional informada na Declaração de Importação (DI) -> 1=Marítima; 2=Fluvial; 3=Lacustre; 4=Aérea; 5=Postal 6=Ferroviária; 7=Rodoviária;  8=Conduto / Rede Transmissão; 9=Meios Próprios; 10=Entrada / Saída ficta
    tProd[x,107]:='2;';             //<tpIntermedio> Forma de importação quanto a intermediação -> 1=Importação por conta própria; 2=Importação por conta e ordem; 3=Importação por encomenda;

    tProd[x,108]:='';               //<vICMSDeson> Valor do ICMS desonerado - Informar apenas nos motivos de desoneração  3=Uso na agropecuária; 9=Outros; 12=Órgão de fomento e desenvolvimento agropecuário.(ocorrência 1-1)

    //<detExport> - Tag destinada a Exportação
    tprod[x, 110] := '';            //<nDraw> Número do ato concessório de Drawback - Tag destinada a Exportação
    tprod[x, 111] := '';            //<chNFe> Chave de Acesso da NF-e recebida para exportação - Tag destinada a Exportação
    tprod[x, 112] := '';            //<nRE> Número do Registro de Exportação - Tag destinada a Exportação
    tprod[x, 113] := '';            //<qExport> Quantidade do item realmente exportado - Tag destinada a Exportação
    tprod[x, 114] := '';            //<nRECOPI> Número do RECOPI - Tag para operações com Papel Imune.

    //Grupo do detalhamento de Armas */
    tprod[x, 115] := '';            //<tpArma> Indicador do tipo de arma de fogo - 0=Uso permitido; 1=Uso restrito;
    tprod[x, 116] := '';            //<nSerie> Número de série da arma
    tprod[x, 117] := '';            //<nCano> Número de série do cano
    tprod[x, 118] := '';            //<desc> Descrição completa da arma, compreendendo: calibre, marca, capacidade, tipo de funcionamento, comprimento e demais elementos que permitam a sua perfeita identificação

    //Gruno para detalhamento de Devolução. <finNFe> igual a 4.
    tprod[x, 129] := '';            //<pDevol> Percentual da mercadoria devolvida
    tprod[x, 130] := '';            //<IPI> Informação do IPI devolvido
    tprod[x, 131] := '';            //<vIPIDevol> Valor do IPI devolvido

    tprod[x, 134] := '';           //<CNPJ> CNPJ do adquirente ou do encomendante
    tprod[x, 135] := '';           //<UFTerceiro> Sigla da UF do adquirente ou do encomendante

    //ICMS 51
    tProd[x, 137] := '';            //<vICMSOp> Valor do ICMS da Operação
    tProd[x, 138] := '';            //<pDif> Percentual do diferimento
    tProd[x, 139] := '';            //<vICMSDif> Valor do ICMS diferido

    //ICMSST
    //Para gerar o ICMSST todos os indices do vetor devem conter dados
    tProd[x, 140] := '';            //<vBCSTRet> Valor da BC do ICMS Retido Anteriormente
    tProd[x, 141] := '';            //<vICMSSTRet> Valor do ICMS Retido Anteriormente
    tProd[x, 142] := '';            //<vBCSTDest> Valor da BC do ICMS ST da UF destino
    tProd[x, 143] := '';            //<vICMSSTDest> Valor do ICMS ST da UF destino

    
    //ICMSUFDest
    // Para gerar o ICMSUFDest todos os indices do vetor devem conter dados
    tProd[x, 147] := '375.00';       //<vBCUFDest> Valor da BC do ICMS na UF de destino
    tProd[x, 148] := '0.00';        //<pFCPUFDest> Percentual do ICMS relativo ao Fundo de Combate à Pobreza (FCP) na UF de destino
    tProd[x, 149] := '18.00';       //<pICMSUFDest> Alíquota interna da UF de destino
    tProd[x, 150] := '12.00';       //<pICMSInter> Alíquota interestadual das UF envolvidas
    tProd[x, 151] := '100.00';       //<pICMSInterPart> Percentual provisório de partilha do ICMS Interestadual
    tprod[x, 152] := '0.00';        //<vFCPUFDest> alor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) da UF de destino
    tProd[x, 153] := '22.50';        //<vICMSUFDest> Valor do ICMS Interestadual para a UF de destino
    tProd[x, 154] := '0.00';        //<vICMSUFRemet> Valor do ICMS Interestadual para a UF do remetente
    tProd[x, 176] := '';            //<vBCFCPUFDest> Valor da BC FCP na UF de destino
	
	{ NT 2016.002 v1.60 - Jun/2018}
	tProd[x, 200] := '';			//pRedBCEfet
	tProd[x, 201] := '';			//vBCEfet
	tProd[x, 202] := '';			//pICMSEfet
	tProd[x, 203] := '';			//vICMSEfet
	
	{ NT 2018_005 v1.20 mar/2019}
	tProd[x, 204] := '';		 //vICMSSubstituto NT 2018_005 v1.20
	tProd[x, 205] := '';     //<xMotivoIsencao> CMotivo da isenção da ANVISA   NT 2018_005 v1.20

 tProd[x, 206] := '';     //<cBarra> Código de barras diferente do padrão GTIN NT 2017_001 v1.40
 tProd[x, 207] := '';     //<cBarraTrib> Código de Barras da unidade tributável que seja diferente do padrão GTIN. NT 2017_001 v1.40
 tProd[x, 208] := '';     //<indSomaPISST> Indica se o valor do PISST compõe o valor total da NF-e. NT 2017_001 v1.40
 tProd[x, 209] := '';     //<indSomaCOFINSST> Indica se o valor da COFINS ST compõe o valor total da NFe. NT 2017_001 v1.40

 tProd[x, 210] := '';     //<pFCPDif> Percentual do diferimento do ICMS relativo ao FCP
 tProd[x, 211] := '';     //<vFCPDif> Valor do ICMS relativo ao FCP
 tProd[x, 212] := '';     //<vFCPEfet> Valor efetivo do ICMS relativo ao FCP

 tProd[x, 213] := '';     //<vICMSSTDeson> Valor do ICMS- ST desonerado
 tProd[x, 214] := '';     //<motDesICMSST> Motivo da desoneração do ICMS-ST

 tProd[x, 215] := '';     //pBCOp
 tProd[x, 216] := '';     //UFST  


 end;

 { <total> TAG de grupo de Valores Totais da NF-e }

 tTotal[0]:='375.00';      //ICMSTot <vBC> Base de Cálculo do ICMS
 tTotal[1]:='45.00';      //ICMSTot <vICMS> Valor Total do ICMS
 tTotal[27]:='0.00';     //ICMSTot <vICMSDeson> Valor Total do ICMS desonerado
 tTotal[2]:='';          //ICMSTot <vBCST> Base de Cálculo do ICMS ST
 tTotal[3]:='';          //ICMSTot <vST> Valor Total do ICMS ST
 tTotal[4]:='375.00';     //ICMSTot <vProd> Valor Total dos produtos e serviços
 tTotal[5]:='0.00';      //ICMSTot <vFrete> Valor Total do Frete
 tTotal[6]:='0.00';      //ICMSTot <vSeg> Valor Total do Seguro
 tTotal[7]:='0.00';      //ICMSTot <vDesc> Valor Total do Desconto
 tTotal[8]:='';          //ICMSTot <vII> Valor Total do II
 tTotal[9]:='0.00';      //ICMSTot <vIPI> Valor Total do IPI
 tTotal[10]:='6.19';     //ICMSTot <vPIS> Valor do PIS
 tTotal[11]:='28.50';     //ICMSTot <vCOFINS> Valor da COFINS
 tTotal[12]:='0.00';     //ICMSTot <vOutro> Outras Despesas acessórias
 tTotal[13]:='375.00';    //ICMSTot <vNF> Valor Total da NF-e
 tTotal[39]:='0.00';     //ICMSTot <vFCPST> Valor Total do FCP (Fundo de Combate à Pobreza) retido por substituição tributária
 tTotal[40]:='0.00';     //ICMSTot <vFCPSTRet> Valor Total do FCP retido anteriormente por Substituição Tributária
 tTotal[41]:='0.00';     //ICMSTot <vIPIDevol> Valor Total do IPI devolvido

 tTotal[26]:='79.69';     //<vTotTrib> Valor aproximado total de tributos federais, estaduais e municipais.

 { Totais ICMSUF  }
 tTotal[37]:='0.00';      //ICMSTot <vFCPUFDest> Valor total do ICMS relativo Fundo de Combate à Pobreza (FCP) da UF de destino
 tTotal[35]:='22.50';     //ICMSTot <vICMSUFDest> Valor total do ICMS Interestadual para a UF de destino
 tTotal[36]:='0.00';      //ICMSTot <vICMSUFRemet> Valor total do ICMS Interestadual para a UF do remetente
 tTotal[38]:='0.00';      //ICMSTot <vFCP> Valor Total do FCP (Fundo de Combate à Pobreza)

 { grupo ISSQN }
 tTotal[14]:='';         //ISSQNtot <vServ> Valor total dos Serviços sob não-incidência ou não tributados pelo ICMS
 tTotal[15]:='';         //ISSQNtot <vBC> Valor total Base de Cálculo do ISS
 tTotal[16]:='';         //ISSQNtot <vISS> Valor total do ISS
 tTotal[17]:='';         //ISSQNtot <vPIS> Valor total do PIS sobre serviços
 tTotal[18]:='';         //ISSQNtot <vCOFINS> Valor total da COFINS sobre serviços
 tTotal[28]:=FormatDatetime('yyyy-mm-dd',date); //ISSQNtot <dCompet> Data da prestação do serviço - Formato: “AAAA-MM-DD”
 tTotal[29]:='';         //ISSQNtot <vDeducao> Valor total dedução para redução da Base de Cálculo
 tTotal[30]:='';         //ISSQNtot <vOutro> Valor total outras retenções
 tTotal[31]:='';         //ISSQNtot <vDescIncond> Valor total desconto incondicionado
 tTotal[32]:='';         //ISSQNtot <vDescCond> Valor total desconto condicionado
 tTotal[33]:='';         //ISSQNtot <vISSRet> Valor total retenção ISS
 tTotal[34]:='';         //ISSQNtot <cRegTrib> Código do Regime Especial de Tributação - 1=Microempresa Municipal; 2=Estimativa; 3=Sociedade de Profissionais; 4=Cooperativa; 5=Microempresário Individual (MEI); 6=Microempresário e Empresa de Pequeno Porte (ME/EPP)

 { retTrib: Grupo de Retenções de Tributos }
 tTotal[19]:='';                 //<vRetPIS> Valor Retido de PIS
 tTotal[20]:='';                 //<vRetCOFINS> Valor Retido de COFINS
 tTotal[21]:='';                 //<vRetCSLL> Valor Retido de CSLL
 tTotal[22]:='';                 //<vBCIRRF> Base de Cálculo do IRRF
 tTotal[23]:='';                 //<vIRRF> Valor Retido do IRRF
 tTotal[24]:='';                 //<vBCRetPrev> Base de Cálculo da Retenção da Previdência Social
 tTotal[25]:='';                 //<vRetPrev> Valor da Retenção da Previdência Social

 { <transp> Informações do Transporte da NF-e }

 tTransp[0]:='9';              //<modFrete> Modalidade do frete - 0=Por conta do emitente; 1=Por conta do destinatário/remetente; 2=Por conta de terceiros; 9=Sem frete.
 tTransp[1]:='';               //<CNPJ> ou <CPF> CNPJ ou CPF do Transportador
 tTransp[2]:='';               //<xNome> Razão Social ou nome
 tTransp[3]:='';               //<IE> Inscrição Estadual do Transportador - ATENCAO! Informe "." (ponto) para não incluir a tag no XML
 tTransp[4]:='';               //<xEnder> Endereço Completo
 tTransp[5]:='';               //<xMun> Nome do município
 tTransp[6]:='';               //<UF> Sigla da UF

 tTransp[7]:='';               //<placa> Placa do Veículo
 tTransp[8]:='';               //<UF> Sigla da UF
 tTransp[25]:='';              //<vagao> Identificação do vagão
 tTransp[26]:='';              //<balsa> Identificação da balsa

 { Grupo Volumes
   Atenção! Separe por ";" para informar mais de 1 grupo de volume.
   Neste exemplo abaixo temos 3 grupos de volumes. }


 tTransp[9]:='';               //<qVol> Quantidade de volumes transportados
 tTransp[10]:='';              //<esp> Espécie dos volumes transportados
 tTransp[11]:='';              //<marca> Marca dos volumes transportados
 tTransp[12]:='';              //<nVol> Numeração dos volumes transportados
 tTransp[13]:='';              //<pesoL> Peso Líquido (em kg)
 tTransp[14]:='';              //<pesoB> Peso Bruto (em kg)
 tTransp[27]:='';              //<nLacre> Número dos Lacres

 tTransp[15]:='';              //<RNTC> Registro Nacional de Transportador de Carga (ANTT)

 // retTransp: Grupo de Retenção do ICMS do transporte
 tTransp[16] := '';            //<vServ> Valor do Serviço
 tTransp[17] := '';            //<vBCRet> BC da Retenção do ICMS
 tTransp[18] := '';            //<pICMSRet> Alíquota da Retenção
 tTransp[19] := '';            //<vICMSRet> Valor do ICMS Retido
 tTransp[20] := '';            //<CFOP> CFOP
 tTransp[21] := '';            //<cMunFG> Código do município de ocorrência do fato gerador do ICMS do transporte

 { <cobr> tag cobrança }

 tCobr[0]:='';                //fat <nFat> Número da Fatura
 tCobr[1]:='';                //fat <vOrig> Valor Original da Fatura
 tCobr[2]:='';                //fat <vLiq> Valor Líquido da Fatura
 tCobr[10]:='';                //fat <vDesc> Valor do desconto

 { 3 parcelas neste caso }
 tCobr[3]:='';           //dup <nDup> Número da Duplicata
 tCobr[4]:='';           //dup <dVenc> Data de vencimento - Formato: “AAAA-MM-DD”
 tCobr[5]:='';           //dup <vDup> Valor da duplicata

 //Posições 6,7 e 8 para atender a parcelas grandes, maiores que 24. Sol.: 1071 - Em: 11/11/2014
 //Só preencher caso as posições 3,4 e 5 não sejam suficientes.
 //Atentar para, se tiverem 24 nDups (na posição tCobr[3]) terão que ter 24 datas e 24 valores, para então preencher as posições abaixo.
 //Lembrar de finalizar cada posição [6], [7] e [8] com um ponto e vírgula (;).
 tCobr[6]:='';           //dup <nDup>
 tCobr[7]:='';           //dup <dVenc>
 tCobr[8]:='';           //dup <vDup>

 {Grupo de Informações de Pagamento}
 {*01=Dinheiro
  *02=Cheque
  *03=Cartão de Crédito
  *04=Cartão de Débito
  *05=Crédito Loja
  *10=Vale Alimentação
  *11=Vale Refeição
  *12=Vale Presente
  *13=Vale Combustível
  *14=Duplicata Mercantil
  *90= Sem pagamento 99=Outros *}
 tPag[0]:= '01;';                 //<tPag> Forma de Pagamento
 tPag[1]:= '375.00;';             //<vPag> Valor do Pagamento
 {* 1=Pagamento integrado com o sistema de automação da empresa (Ex.: equipamento TEF, Comércio Eletrônico);
  * 2= Pagamento não integrado com o sistema de automação da empresa (Ex.: equipamento POS); }
 tPag[2]:= '';//'01;';            //<tpIntegra> Tipo de Integração do processo de pagamento com o sistema de automação da empresa
 tPag[3]:= '';//'9999999999999;'; //<CNPJ> CNPJ da Credenciadora do Cartão
 tPag[4]:= '';//'visa;';          //<tBand> Bandeira da Operadora do Cartão
 tPag[5]:= '';//'1234;';          //<cAut> Numero de Autorização da Operação
 tPag[6]:= '';//'0.00';           //<vTroco> Valor do Troco
 tPag[7]:= '1';                   //<indPag> Indicador de pgto 0|1
 tPag[8]:= '';                    //<xPag> 'descrição do meio de pagamento' (xPag) - NT 2020.006 v1.20


 tInfAdic[0]:='O destinatario devera com relacao as operacoes com mercadoria'+ //infAdFisco
              ' Informacoes Adicionais de Interesse do Fisco - Informacoes Adicionais de Interesse do Fisco ';  //infCpl

  tInfAdic[1]:=''; //Informacoes Complementares de interesse do Contribuinte
  tInfAdic[2]:=''; //'complemento 02 das informacoes complementares, pode ter ate 255 caractesre (limitacao var shortstring)';
  tInfAdic[3]:=''; //'complemento 03 das informacoes complementares, pode ter ate 255 caractesre (limitacao var shortstring)';
  tInfAdic[4]:=''; //'complemento 04 das informacoes complementares, pode ter ate 255 caractesre (limitacao var shortstring)';
  tInfAdic[5]:=''; //'complemento 05 das informacoes complementares, pode ter ate 255 caractesre (limitacao var shortstring)';
  tInfAdic[6]:=''; //'complemento 06 das informacoes complementares, pode ter ate 255 caractesre (limitacao var shortstring)';
  tInfAdic[7]:=''; //'complemento 07 das informacoes complementares, pode ter ate 255 caractesre (limitacao var shortstring)';
  tInfAdic[8]:=''; //'complemento 08 das informacoes complementares, pode ter ate 255 caractesre (limitacao var shortstring)';
  tInfAdic[9]:=''; //'complemento 09 das informacoes complementares, pode ter ate 255 caractesre (limitacao var shortstring)';
 tInfAdic[10]:=''; //'complemento 10 das informacoes complementares, pode ter ate 255 caractesre (limitacao var shortstring)';
 tInfAdic[11]:=''; //'complemento 11 das informacoes complementares, pode ter ate 255 caractesre (limitacao var shortstring)';
 tInfAdic[12]:=''; //'complemento 12 das informacoes complementares, pode ter ate 255 caractesre (limitacao var shortstring)';
 tInfAdic[13]:=''; //'complemento 13 das informacoes complementares, pode ter ate 255 caractesre (limitacao var shortstring)';
 tInfAdic[14]:=''; //'complemento 14 das informacoes complementares, pode ter ate 255 caractesre (limitacao var shortstring)';
 tInfAdic[15]:=''; //'complemento 15 das informacoes complementares, pode ter ate 255 caractesre (limitacao var shortstring)';
 tInfAdic[16]:=''; //'complemento 16 das informacoes complementares, pode ter ate 255 caractesre (limitacao var shortstring)';
 tInfAdic[17]:=''; //'complemento 17 das informacoes complementares, pode ter ate 255 caractesre (limitacao var shortstring)';
 tInfAdic[18]:=''; //'complemento 18 das informacoes complementares, pode ter ate 255 caractesre (limitacao var shortstring)';
 tInfAdic[19]:=''; //'complemento 19 das informacoes complementares, pode ter ate 255 caractesre (limitacao var shortstring)';
 tInfAdic[20]:=''; //'complemento 20 das informacoes complementares, pode ter ate 255 caractesre (limitacao var shortstring)';


 tInfAdic[21]:='Vendedor;Pedido;Outros';              //obsCont <xCampo>
 tInfAdic[22]:='Meu vendedor;00001;Diversos';         //obsCont <xTexto>

 tInfAdic[23]:='';         //ProcRef <nProc>
 tInfAdic[24]:='';         //ProcRef <indProc>

 ret := GeraNFe(tIde,tEmit,tDest,tProd,tTotal,tTransp,tCobr,tPag,tInfAdic, autXML,ckbAssinar.Checked);

 if Length(ret) > 44 then
 begin
  if (ckbAssinar.Checked) then
    EditStatus.Text:='NF-e Gerada e Assinada: '+ret
  else
    EditStatus.Text:='NF-e Gerada: '+ret;
  end else
    EditStatus.Text:= ret;


 finally
  btnGeraNfe.enabled:=true;
  btnGeraNfe.SetFocus;
  Screen.cursor:=crDefault;
 end;
end;

procedure TfrmPrincipal.Button6Click(Sender: TObject);
var
 ret: shortstring;
begin
 Screen.Cursor:=crAppStart;
 EditStatus.Text:='Aguarde...';
 panel2.Refresh;

 Button6.Enabled:=false;

 ret:='';
 ret:=NfeStatusServico;

 if (trim(ret)<>'') then
  mmoStatusServico.Text:=ret
 else
  mmoStatusServico.text:='Não obteve retorno.';

 Button6.Enabled:=true;
 EditStatus.Text:='Concluído.';
 Screen.Cursor:=crDefault;
end;

{procedure TfrmPrincipal.Button7Click(Sender: TObject);
begin
 Screen.Cursor:=crAppStart;
 Button7.Enabled:=false;
 EditStatus.Text:='Aguarde...';

 OpenDialog1.InitialDir:=ExtractFilePath(ParamStr(0))+'nfe\lotes';
 panel2.Refresh;


 if (OpenDialog1.Execute) then
 begin
  mmoRecepcao.text:=NFeRecepcao(OpenDialog1.FileName)
 end else
  mmoRecepcao.text:='Não obteve retorno.';

 Button7.Enabled:=true;
 EditStatus.Text:='Concluído.';
 Screen.Cursor:=crDefault;
end;}

function RetornaString(pathArquivo : shortstring) : TStrings;
var
 r : TextFile;
 linha : string;
 ret : TStrings;
begin
  try
   AssignFile(r,pathArquivo);
   Reset(r);
   ret:=TStringList.Create;

   while not Eof(r) do
   begin
    ReadLn(r,linha);
    ret.Add(linha);
   end;

  finally
   CloseFile(r);
  end;

  result:=ret;
end;


procedure TfrmPrincipal.Button8Click(Sender: TObject);
var
 pathRet : shortstring;
 nRec : pChar;
 registro : TRegistry;
begin
 Button8.enabled:=false;
 Screen.Cursor:=crAppStart;
 EditStatus.Text:='Aguarde...';
 panel2.Refresh;

  nRec := pChar(EditConsultaProc.Text);
  mmoConsultaProcessamento.Text:= NfeRetAutorizacao(nRec); 

 Button8.Enabled:=true;
 EditStatus.Text:='Concluído.';
 Screen.Cursor:=crDefault;

end;

procedure TfrmPrincipal.Button9Click(Sender: TObject);
begin

 Button9.enabled:=false;
 Screen.Cursor:=crAppStart;
 EditStatus.Text:='Aguarde...';
 panel2.Refresh;

 mmoInutilizacao.Text:=NfeInutilizacao(EditAno.Text,
                                        EditIni.Text,
                                        EditFim.Text,
                                        EditJustInutilizacao.Text,
                                        EdtSerieInutilizacao.Text);

 Button9.Enabled:=true;
 EditStatus.Text:='Concluído.';
 Screen.Cursor:=crDefault;
end;

procedure TfrmPrincipal.Button10Click(Sender: TObject);
begin
 Button10.enabled:=false;
 Screen.Cursor:=crAppStart;
 EditStatus.Text:='Aguarde...';
 panel2.Refresh;

 if (ckboxEvento.Checked) then
      mmoCancelamento.Text:=NFeCancelamentoEvento(
        EditNFe.text,
        EditProtocoloCancelamento.text,
        '0000121',  //Número sequencial autoincremental único para identificação do Lote gerado pela aplicação
        '1',  //número sequencial do evento. A aplicação deve gerar sequencialmente esse valor para cada evento de uma nfe (pg. 3 da NT 2011/006)
        EditJustificativa.Text)

 else

 mmoCancelamento.Text:=NFeCancelamento(
        EditNFe.text,
        EditProtocoloCancelamento.text,
        EditJustificativa.Text);

 Button10.Enabled:=true;
 EditStatus.Text:='Concluído.';
 Screen.Cursor:=crDefault;
end;

function FormataValor(valor : Currency; decimais : integer) : shortstring;
begin
 result:=StringReplace(FormatFloat('0.'+StringOfChar('0',decimais),valor),',','.',[rfReplaceAll]);
end;

procedure TfrmPrincipal.Button11Click(Sender: TObject);
var
 registro : TRegistry;
begin
 Registro:=TRegistry.Create;

 if Registro.OpenKey('nfeapp',true) then
  try
    Registro.WriteString('IE',EditIE.Text);
    Registro.WriteString('CodMunicipio',EditCodMunicipio.Text);
    Registro.WriteString('Municipio',EditMunicipio.Text);

    registro.CloseKey;
  finally
   Registro.Free;
  end;

 Application.Terminate;
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
 OpenDialog1.Filter:='Arquivos XML|*.xml';
 OpenDialog1.Title:= 'Escolha XML correspondente';
 OpenDialog1.InitialDir:=ExtractFilePath(ParamStr(0))+'nfe';

 if (OpenDialog1.Execute) then
  EditPathArqAssinar.text:=OpenDialog1.FileName
 else
  EditPathArqAssinar.text:='';

end;

procedure TfrmPrincipal.btnAssinarClick(Sender: TObject);
begin
 Screen.Cursor:=crAppStart;
 btnAssinar.Enabled:=false;
 EditStatus.Text:='Solicitando assinatura, aguarde...';
 Panel2.Refresh;

 {verifica qual será a tag de assinatura. Se for NF-e, assina o arquivo na tag infNFe,
   se for DPEC, assina na tag infDPEC}

 if (arqnfe.Checked = True) then
     EditStatus.Text:= AssinaArquivoXML(OpenDialog1.FileName,'infNFe')
 else
 if (arqdpec.Checked = True) then
    EditStatus.Text:= AssinaArquivoXML(OpenDialog1.FileName,'infDPEC');
 if not (EditStatus.Text[1] = 'F') then
 EditStatus.Text:='Concluído.';
 btnAssinar.Enabled:=true;
 Screen.Cursor:=crDefault;

end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
var
 registro : TRegistry;
begin
 Caption := 'SHEILD | API NFEDLL ' + VersaoDLL;

 Registro:=TRegistry.Create;
 try
  if Registro.OpenKey('nfeapp',true) then
  begin
   EditIE.Text:=Registro.ReadString('IE');
   EditCodMunicipio.Text:=Registro.REadString('CodMunicipio');
   EditMunicipio.Text:=Registro.REadString('Municipio');
  end;

  registro.CloseKey;

 finally
  Registro.Free;
 end;

 if (EditCodMunicipio.Text <> '') then
  if (copy(EditCodMunicipio.Text,1,2) = '35') then
    cbboxIdOpera.ItemIndex := 0   //operacao interna SP
   else
    cbboxIdOpera.itemindex := 1;


end;

procedure TfrmPrincipal.btnProcurarValidarArquivoClick(Sender: TObject);
begin

 OpenDialog1.Filter:='Arquivos XML|*.xml';
 OpenDialog1.Title:= 'Escolha XML correspondente';
 OpenDialog1.InitialDir:=ExtractFilePath(ParamStr(0))+'nfe\arquivos\assinado';

 if (OpenDialog1.Execute) then
  EditPathValidarArquivo.text:=OpenDialog1.FileName
 else
  EditPathValidarArquivo.text:='';
end;

procedure TfrmPrincipal.btnValidarArquivoClick(Sender: TObject);
begin
 Screen.cursor:=crAppStart;
 btnValidarArquivo.Enabled:=false;

 EditStatus.Text:='';

 if ValidarArquivoXML(EditPathValidarArquivo.text, cbbSchema.Text, true) = 'OK' then
  EditStatus.Text:='Arquivo Validado. Nenhum erro identificado.'
 else
  EditStatus.Text:='Problemas na validação.';


 btnValidarArquivo.Enabled:=true;
 btnValidarArquivo.SetFocus;
 Screen.cursor:=crDefault;
end;

procedure TfrmPrincipal.btnGerarLoteClick(Sender: TObject);
var
 x,idLote : integer;
 listaArquivos:boolean;
begin
 Screen.cursor:=crAppStart;
 btnGerarLote.Enabled:=false;
 Randomize;

 if (CheckBox1.Checked) then
  idLote:=Random(999)
 else
  idLote:=StrToInt(EditIDLote.text);


 case rdgOpcoesLote.ItemIndex of
  0 : listaArquivos:=true;
  1 : listaArquivos:=false;
 end;


 x:=GerarLote(idLote,EditPathNFeLote.Text,listaArquivos);

 if (x=1) then
  EditStatus.Text:='Lote gerado com sucesso!'
 else
  if (x=-1) then
  EditStatus.Text:='Erro desconhecido'
 else
  if (x=0) then
  EditStatus.Text:='Operação cancelada'
 else
  if (x=2) then
  EditStatus.Text:='Não existe(m) arquivo(s) assinado(s)!'
 else
  EditStatus.Text := 'Falha na geração do lote.';

 EditIDLote.Text:=IntToStr(idLote);

 btnGerarLote.Enabled:=true;
 btnGerarLote.SetFocus;
 Screen.cursor:=crDefault;
end;

procedure TfrmPrincipal.CheckBox1Click(Sender: TObject);
begin
 Label13.Enabled:=not(CheckBox1.checked);
 EditIDLote.Enabled:=not(CheckBox1.checked);
end;

procedure TfrmPrincipal.btnPesqDanfeClick(Sender: TObject);
begin
 OpenDialog1.Filter:='Arquivos XML|*.xml';
 OpenDialog1.Title:= 'Escolha XML correspondente';
 OpenDialog1.InitialDir:=ExtractFilePath(ParamStr(0))+'nfe\arquivos';

 if (OpenDialog1.Execute) then
  EditPathDanfe.text:=OpenDialog1.FileName
 else
  EditPathDanfe.text:='';
end;

procedure TfrmPrincipal.btnImprimeDanfeClick(Sender: TObject);
var
 x: integer;
 contingencia : Boolean;
begin
     Screen.cursor:=crAppStart;
     btnImprimeDanfe.Enabled:=false;
     EditStatus.Text:='Gerando DANFE, aguarde...';
     Panel2.Refresh;

     {  verifica se a DANFE deve ser impressa em contingência (FS ou DPEC)   }
 contingencia:=False;
 if (chkFormSeguranca.Checked) or (chkFormDPEC.Checked)then
 contingencia:=True;

 begin
 {pode-se passar o path do xml assinado diretamente no parametro
 se passar o parametro string vazio o sistema ira solicitar o arquivo, ex: ImprimeDanfe('',3); }

  //EditPathPDF.text: se estiver = '', a dll irá exibir um formulario solicitando o local e arquivo para salvar o PDF.


    {verifica se a impressão é em contingência DPEC. O parâmetro edtProtDpec deve conter uma string com o número do protocolo DPEC, data e hora do registro DPEC para serem impressos na DANFE}
    if (chkFormDPEC.Checked) then
    begin
    if (ImprimeEPEC(EditPathDanfe.Text, EditPathPDF.Text, (rdgOpcoesDanfe.ItemIndex+1), edtProtDpec.Text)) then
      EditStatus.Text:='DANFE Emitido em Contingência DPEC.'
    else
      EditStatus.Text:='Falha na emissão do DANFE.';
    end else
    begin

      if (ckbDanfeSimplificado.Checked) then
      begin

        if (ImprimeDanfeSimplificado(EditPathDanfe.text, (rdgOpcoesDanfe.ItemIndex+1), contingencia)) then
          EditStatus.Text:='DANFE Simplificado emitido com sucesso.'
        else
          EditStatus.Text:='Falha na emissão do DANFE Simplificado.';


      end else
      begin
        if (ImprimeDanfe(EditPathDanfe.text, EditPathPDF.Text,(rdgOpcoesDanfe.ItemIndex+1), contingencia)) then
          EditStatus.Text:='DANFE Emitido com sucesso.'
        else
          EditStatus.Text:='Falha na emissão do DANFE.';

      end;

    end;
 end;
 btnImprimeDanfe.Enabled:=true;
 Screen.cursor:=crDefault
end;

procedure TfrmPrincipal.PageControl1Change(Sender: TObject);
begin
 EditStatus.Text:='Status';
end;

procedure TfrmPrincipal.btnSituacaoNFeClick(Sender: TObject);
begin
 btnSituacaoNFe.Enabled:=False;
 Screen.Cursor:=crAppStart;
 EditStatus.Text:='Aguarde...';
 panel2.Refresh;

 mmoConsultaSituacao.Text:=NFeConsulta(edtNFeSituacao.Text);

 btnSituacaoNFe.Enabled:=true;
 EditStatus.Text:='Concluído.';
 Screen.Cursor:=crDefault;
end;

procedure TfrmPrincipal.SpeedButton2Click(Sender: TObject);
begin
 OpenDialog1.Filter:='Arquivos XML|*.xml';
 OpenDialog1.Title:= 'Escolha XML correspondente';
 OpenDialog1.InitialDir:=ExtractFilePath(ParamStr(0))+'nfe\arquivos\assinado';

 if (OpenDialog1.Execute) then
 begin
  EditPathNFeLote.text:=OpenDialog1.FileName;
  rdgOpcoesLote.ItemIndex:=1;
 end
 else
  EditPathNFeLote.text:='';
end;

procedure TfrmPrincipal.btnDistribuicaoClick(Sender: TObject);
begin
 btnDistribuicao.enabled:=false;
 Screen.Cursor:=crAppStart;
 EditStatus.Text:='Aguarde...';
 panel2.Refresh;


 mmoDistribuicao.TExt:=ArquivoDistribuicaoNFe(
        EditDistNFe.text);

 btnDistribuicao.Enabled:=true;
 EditStatus.Text:='Concluído.';
 Screen.Cursor:=crDefault;
end;

procedure TfrmPrincipal.chkFormSegurancaClick(Sender: TObject);
begin
 Label36.Visible:=chkFormSeguranca.checked;
end;

procedure TfrmPrincipal.btnEnviaEmailClick(Sender: TObject);
var
mail, assunto, mensagem, caminho : TStringList;
mailText, assuntoText, mensagemText, caminhoText : IString;
mensagemEnvio : String;

begin
  //Myrella - 20/10/2011
  //Reimplementação da função EnviarEmail para que receba tipo string(mais de 256 caracteres)
  btnEnviaEmail.enabled:=false;
  Screen.Cursor:=crAppStart;
  EditStatus.Text:='Aguarde...';
  panel2.Refresh;

  mail := TStringList.Create;
  assunto := TStringList.Create;
  mensagem := TStringList.Create;
  caminho := TStringList.Create;

  //Mensagens maior que 256 caracteres devem ser concatenadas antes de serem gravadas no Append
  mensagemEnvio := EdtAssunto.text + '.Minha mensagem para envio ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------';
  mensagemEnvio := mensagemEnvio + '.Minha mensagem para envio ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------';

  mail.Append(EdtEmail.text);
  assunto.Append(EdtAssunto.Text);
  mensagem.Append(mensagemEnvio);
  caminho.Append(EdtPathXML.text);

  mailText := TString.Create(mail.Text);
  assuntoText := TString.Create(assunto.Text);
  mensagemText := TString.Create(mensagem.Text);
  caminhoText := TString.Create(caminho.Text);

  {obs.: para enviar mais de 1 anexo, concatenar separados por ";" no parâmetro caminhoText }
  if EnviaEmail(mailText, assuntoText, mensagemText, caminhoText) then
     Showmessage('Email enviado.')
  else
     showmessage('Email não enviado.');

  btnEnviaEmail.Enabled:=true;
  EditStatus.Text:='Concluído.';
  Screen.Cursor:=crDefault;

  mail.Free;
  assunto.Free;
  mensagem.Free;
  caminho.Free;

end;

procedure TfrmPrincipal.btnConsultaCadClick(Sender: TObject);
begin
 btnConsultaCad.enabled:=false;
 Screen.Cursor:=crAppStart;
 EditStatus.Text:='Aguarde...';
 panel2.Refresh;

//chamando a função NFeCadastro depois de criado o objeto IString
 mmoCsCadastro.Text:=NFeCadastro(edtUF.Text, edtCnpj.text).Str;

 btnConsultaCad.Enabled:=true;
 EditStatus.Text:='Concluído.';
 Screen.Cursor:=crDefault;
end;

procedure TfrmPrincipal.btnCCeExecutarClick(Sender: TObject);
var
 xCorrecao : array of shortstring;
 x : integer;
 str : string;
begin

 SetLength(xCorrecao,4);

 btnCCeExecutar.enabled:=false;
 Screen.Cursor:=crAppStart;
 EditStatus.Text:='Aguarde...';


 if (chnfeCce.Text <> '') then
  if (mmoCorrecao.Text <> '') then
  begin
     mmoCCe.Lines.Add('## Metodo: GeraCCe');
     mmoCCe.Lines.Add('Retorno:');

     str := mmocorrecao.text;

     for x := 0 to 3 do
     begin
      xCorrecao[x] := copy(str,0,250);

      if (length(str) >= 250) then
       Delete(str,1,250)
      else
       Delete(str,1,length(str));

     end;




     mmoCCe.Lines.Add(
      GeraCCe(chnfeCce.text,   //chave NFE (apenas numeros)
      '1',                     //Seqüencial do evento para o mesmo tipo de evento. Para maioria dos eventos será 1, nos casos em que possa existir mais de um evento, como é o caso da carta de correção, o autor do evento deve numerar de forma seqüencial.
      '110110',                //Código do de evento, conforme NT2011.03, default = 110110
      FormatDateTime('yyyy-mm-dd',date)+'T'+FormatDatetime('hh:mm:ss',now)+'-02:00', //Data e hora do evento no formato AAAA-MMDDThh:mm:ssTZD
      xCorrecao)); //Correção a ser considerada, texto livre. A correção mais recente substitui as anteriores.

      { ATENÇÃO! Cuidado com o horario de verao.
        Data e hora do evento no formato AAAA-MMDDThh:mm:ssTZD (UTC - Universal Coordinated Time,
        onde TZD pode ser -02:00 (Fernando de Noronha), -03:00
        (Brasília) ou -04:00 (Manaus), no horário de verão serão:
        01:00, -02:00 e -03:00.
        Ex.: 2010-08-19T13:00:15-03:00. }

      mmoCCe.Lines.Add('');
      mmoCCe.Lines.Add('');



  end;

 btnCCeExecutar.Enabled:=true;
 EditStatus.Text:='Concluído.';
 Screen.Cursor:=crDefault;
end;

procedure TfrmPrincipal.impCCeClick(Sender: TObject);

begin
    Screen.cursor:=crAppStart;
    btnImprimeDanfe.Enabled:=false;
    EditStatus.Text:='Imprimindo CCe, aguarde...';
    Panel2.Refresh;

 {Se não for passado pela aplicação o path do xml da CCe autorizada, ex: ImprimeCCe('', '', 3)),
  a dll solicitará  o caminho}

  if (ImprimeCCe(edtPathCCe.Text, editPDF.Text, (rdgOpcoesCCe.ItemIndex+1))) then
    EditStatus.Text:='Impressão realizada com sucesso.'
  else
    EditStatus.Text:='Falha na impressão do CCe.';
    btnImprimeDanfe.Enabled:=true;
    Screen.cursor:=crDefault
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
    OpenDialog1.Filter:='Arquivos XML|*.xml';
    OpenDialog1.Title:= 'Escolha XML correspondente';
    OpenDialog1.InitialDir:=ExtractFilePath(ParamStr(0))+'nfe\arquivos';

    if (OpenDialog1.Execute) then
      edtPathCCe.text:=OpenDialog1.FileName
     else
     edtPathCCe.text:='';
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
    OpenDialog1.Filter:='Arquivos XML|*.xml';
    OpenDialog1.Title:= 'Escolha XML correspondente';
    OpenDialog1.InitialDir:=ExtractFilePath(ParamStr(0))+'nfe\arquivos';

    if (OpenDialog1.Execute) then
      editPDF.text:=OpenDialog1.FileName
     else
     editPDF.text:='';
end;

procedure TfrmPrincipal.btnGerarDPECClick(Sender: TObject);
var
 listaArquivos : boolean;
 x : Integer;
 begin
 Screen.cursor:=crAppStart;
 btnGerarDPEC.Enabled:=false;
 Randomize;
 if (editNFeDPEC.Text<>'') then
  // x:=GeraDPEC(editNFeDPEC.Text)
   X:=GeraEPEC(editNFeDPEC.Text)
 else
 ShowMessage('Selecione o Lote de NF-e emitido em contingência DPEC para gerar o arquivo.');

 if (x=1) then
  EditStatus.Text:='DPEC gerado com sucesso!'
 else
  if (x=-1) then
  EditStatus.Text:='Erro desconhecido'
 else
  if (x=0) then
  EditStatus.Text:='Operação cancelada'
 else
  if (x=2) then
   EditStatus.Text:='Não existe(m) arquivo(s) assinado(s)!'
  else
   EditStatus.Text:='Falha na geração do DPEC.';


 btnGerarDPEC.Enabled:=true;
 btnGerarDPEC.SetFocus;
 Screen.cursor:=crDefault;
end;

procedure TfrmPrincipal.Button3Click(Sender: TObject);
begin
 OpenDialog1.Filter:='Arquivos XML|*.xml';
 OpenDialog1.Title:= 'Escolha XML correspondente';
 OpenDialog1.InitialDir:=ExtractFilePath(ParamStr(0))+'nfe\lotes';

 if (OpenDialog1.Execute) then
 begin
  editNFeDPEC.text:=OpenDialog1.FileName;
 end
 else
  editNFeDPEC.text:='';
end;

procedure TfrmPrincipal.Button4Click(Sender: TObject);
begin
Screen.Cursor:=crAppStart;
 Button4.Enabled:=false;
 EditStatus.Text:='Aguarde...';

 OpenDialog1.Title:= 'Escolha XML correspondente';
 OpenDialog1.InitialDir:=ExtractFilePath(ParamStr(0))+'nfe\arquivos\assinado';
 panel2.Refresh;


 if (OpenDialog1.Execute) then
 begin
  mmoRecepcaoDPEC.text:=RecepcaoEPEC(OpenDialog1.FileName)//RecepcaoDPEC(OpenDialog1.FileName)
 end else
  mmoRecepcaoDPEC.text:='Não obteve retorno.';

 Button4.Enabled:=true;
 EditStatus.Text:='Concluído.';
 Screen.Cursor:=crDefault;
end;

procedure TfrmPrincipal.chkFormDPECClick(Sender: TObject);
begin
    Label51.Visible:=chkFormDPEC.checked;
    Label36.Visible:=chkFormDPEC.checked;
    edtProtDpec.Visible:=chkFormDPEC.Checked;
end;

procedure TfrmPrincipal.btnConsultaDPECClick(Sender: TObject);
begin
    btnConsultaDPEC.Enabled:=False;
    Screen.Cursor:=crAppStart;
    EditStatus.Text:='Aguarde...';
    panel2.Refresh;
    if(edtChaveRegDPEC.Text<>'')then
    begin
      mmoconsultaDPEC.Lines.Clear;
      mmoconsultaDPEC.Text := EPECConsulta(edtChaveRegEPEC.text);//DPECConsulta(edtChaveRegDPEC.Text);
      edtChaveRegEPEC.Clear;
    end
    else
    if(edtChaveRegEPEC.Text<>'')then
    begin
      mmoconsultaDPEC.Lines.Clear;
      mmoconsultaDPEC.Text:= EPECConsulta(edtChaveRegEPEC.text);
      edtChaveRegDPEC.Clear;
    end;


    btnConsultaDPEC.Enabled:=true;
    EditStatus.Text:='Concluído.';
    Screen.Cursor:=crDefault;
end;

procedure TfrmPrincipal.btnGeraManifestacaoClick(Sender: TObject);
var
  tpEvento : Integer;
  evento : ShortString;

begin
     btnGeraManifestacao.Enabled := False;
     screen.Cursor := crAppStart;
     EditStatus.Text := 'Aguarde...';
     Panel2.Refresh;

     tpEvento := cbEvento.ItemIndex;

     case tpEvento of
       0 : evento := '210200';
       1 : evento := '210210';
       2 : evento := '210220';
       3 : evento := '210240';
     end;


     mmoRet.Text := GeraManifestacao(edtChave.Text, //chave NFE (apenas numeros)
      '1',                                 //Seqüencial do evento para o mesmo tipo de evento. Informar 1
      evento,                              //Código do de evento, conforme NT2012.02, valores possíveis: 210200, 210210, 210220 e 210240
      FormatDateTime('yyyy-mm-dd',date)+'T'+FormatDatetime('hh:mm:ss',now)+'-02:00', //Data e hora do evento no formato AAAA-MMDDThh:mm:ssTZD
      mmoJust.Text);                       //Justificativa caso seja escolhido evento Operação não Realizada.


      { ATENÇÃO! Cuidado com o horario de verao.
        Data e hora do evento no formato AAAA-MMDDThh:mm:ssTZD (UTC - Universal Coordinated Time,
        onde TZD pode ser -02:00 (Fernando de Noronha), -03:00
        (Brasília) ou -04:00 (Manaus), no horário de verão serão:
        01:00, -02:00 e -03:00.
        Ex.: 2010-08-19T13:00:15-03:00. }

        btnGeraManifestacao.Enabled:=true;
        EditStatus.Text:='Concluído.';
        Screen.Cursor:=crDefault;

end;

procedure TfrmPrincipal.btnConsDestClick(Sender: TObject);
var
  indNFe, indEmi : ShortString;
begin
     btnConsDest.Enabled := False;
     screen.Cursor := crAppStart;
     EditStatus.Text := 'Aguarde...';
     Panel2.Refresh;

     indNFe := IntToStr(cbIndNFe.ItemIndex);
     indEmi := IntToStr(cbIndEmi.ItemIndex);

     mmoRetorno.Text := ConsultaDest(indNFe, indEmi, txtNSU.Text);

     btnConsDest.Enabled:=true;
     EditStatus.Text:='Concluído.';
     Screen.Cursor:=crDefault;
end;

procedure TfrmPrincipal.btnDownloadClick(Sender: TObject);
begin
     btnDownload.Enabled := False;
     screen.Cursor := crAppStart;
     EditStatus.Text := 'Aguarde...';
     Panel2.Refresh;

     {  Parâmetros:
        1. chave da nfe a ser baixada
        2. path do arquivo a ser gravado com a nota baixada. Se informar vazio, será gravado na pasta downloadNFe com o nome "chave.xml"
     }
     mmoResultado.Text :=  DonwloadNFe(edtChNFe.Text, '');

     btnDownload.Enabled:=true;
     EditStatus.Text:='Concluído.';
     Screen.Cursor:=crDefault;

end;

procedure TfrmPrincipal.btnGeraFCIClick(Sender: TObject);
begin {
EditStatus.Text := 'Processando...';

 if (CarregaFCI(txtxml.Text, txtFCI.Text)) then
  EditStatus.Text := 'Concluído com sucesso!'
 else
  EditStatus.Text := 'Falha.';
  }
end;

procedure TfrmPrincipal.btn2Click(Sender: TObject);
begin
 try
  if not Assigned(frmHelp2) then
  frmHelp2 := TfrmHelp2.Create(Application);
  frmHelp2.Showmodal;

 finally
    frmHelp2.Release;
        frmHelp2.Free;
 end;
end;

procedure TfrmPrincipal.btnAutorizacaoClick(Sender: TObject);
begin
 Screen.Cursor:=crAppStart;
 btnAutorizacao.Enabled:=false;
 EditStatus.Text:='Aguarde...';

 OpenDialog1.InitialDir:=ExtractFilePath(ParamStr(0))+'nfe\lotes';
 OpenDialog1.Filter:='Arquivos XML|*.xml';
 OpenDialog1.Title:= 'Escolha XML correspondente';

 panel2.Refresh;


 if (OpenDialog1.Execute) then
 begin
  mmoAutorizacao.text:= NFeAutorizacao(OpenDialog1.FileName);
 end else
  mmoAutorizacao.text:='Não obteve retorno.';

 btnAutorizacao.Enabled:=true;
 EditStatus.Text:='Concluído.';
 Screen.Cursor:=crDefault;
end;

procedure TfrmPrincipal.cbbTpEmisChange(Sender: TObject);
var Registro : TRegistry;
begin
Registro := TRegistry.Create;
Registro:=TRegistry.Create;
if Registro.OpenKey('nfe',false) then
begin
   if (Registro.ValueExists('TipoEmissao')) then
    Registro.WriteString('TipoEmissao',Copy(cbbTpEmis.Text,1,1));
end
end;

procedure TfrmPrincipal.btnRecepcaoClick(Sender: TObject);
begin
 Screen.Cursor:=crAppStart;
 btnRecepcao.Enabled:=false;
 EditStatus.Text:='Aguarde...';

 OpenDialog1.InitialDir:=ExtractFilePath(ParamStr(0))+'nfe\lotes';
 OpenDialog1.Title:= 'Escolha XML correspondente';
 panel2.Refresh;


 if (OpenDialog1.Execute) then
 begin
  mmoRecepcao.text:=NFeRecepcao(OpenDialog1.FileName)
 end else
  mmoRecepcao.text:='Não obteve retorno.';

 btnRecepcao.Enabled:=true;
 EditStatus.Text:='Concluído.';
 Screen.Cursor:=crDefault;
end;

procedure TfrmPrincipal.btnDistDFeClick(Sender: TObject);
begin
     btnDistDFe.Enabled := False;
     screen.Cursor := crAppStart;
     EditStatus.Text := 'Aguarde...';
     tsDistribuicaoDFe.Refresh;

     mmoRetDist.Text := NFeDistribuicaoDFe(edtchNFeDistInt.Text, edtNumNSU.Text, chkUltNSU.Checked);

     btnDistDFe.Enabled:=true;
     EditStatus.Text:='Concluído.';
     Screen.Cursor:=crDefault;
end;

procedure TfrmPrincipal.btnEntregaClick(Sender: TObject);
var
 xCorrecao : array of shortstring;
 x : integer;
 str : string;
begin

 SetLength(xCorrecao,4);

 btnEntrega.enabled:=false;
 Screen.Cursor:=crAppStart;
 EditStatus.Text:='Aguarde...';


 if (chnfeCce.Text <> '') then
  if (mmoCorrecao.Text <> '') then
  begin
     mnoEntrega.Lines.Add('## Metodo: Entrega');
     mnoEntrega.Lines.Add('Retorno:');

     str := mnoEntrega.text;


     mnoEntrega.Lines.Add(
      EventoEntrega( '1',    //Identificador de controle do Lote de envio do Evento
      edtEntregaChNfe.Text,  //Chave de Acesso da NF-e à qual o evento será vinculado
      '1',                   //Sequencial do evento para o mesmo tipo de evento.
      edtEntregaDh.Text,     //Data e hora do final da entrega. Formato AAAA-MMDDThh:mm:ssTZD
      edtEntregaDoc.Text,    //Número do documento de identificação da pessoa que assinou o Comprovante de Entrega da NF-e
      edtEntregaNome.Text,   //Nome da pessoa que assinou o Comprovante de Entrega da NF-e
      ''));                   //Latitude e Longitude (ex: -23.573593, -46.706675)

      { ATENÇÃO! Cuidado com o horario de verao.
        Data e hora do evento no formato AAAA-MMDDThh:mm:ssTZD (UTC - Universal Coordinated Time,
        onde TZD pode ser -02:00 (Fernando de Noronha), -03:00
        (Brasília) ou -04:00 (Manaus), no horário de verão serão:
        01:00, -02:00 e -03:00.
        Ex.: 2010-08-19T13:00:15-03:00. }

      mnoEntrega.Lines.Add('');
      mnoEntrega.Lines.Add('');  

  end;

 btnEntrega.Enabled:=true;
 EditStatus.Text:='Concluído.';
 Screen.Cursor:=crDefault;
end;

procedure TfrmPrincipal.btnGtinClick(Sender: TObject);
begin
     btnGtin.Enabled := False;
     screen.Cursor := crAppStart;
     EditStatus.Text := 'Aguarde...';  

     mmoGtin.Text := ConsultaGtin(Trim(edtGtin.Text));

     btnGtin.Enabled:=true;
     EditStatus.Text:='Concluído.';
     Screen.Cursor:=crDefault;

end;

end.


