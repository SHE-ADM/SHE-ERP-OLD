unit oPrincipal;

{$LONGSTRINGS ON}

interface

uses
  Windows, Messages, SysUtils, Variants, StrUtils, Math, MidasLib, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, Grids, DBGrids, ExtCtrls, Db, DBTables, DBClient, StdCtrls, dxEdLib, Registry,
  DBCtrls, Buttons, Menus, Mask, RXLookup, RxToolEdit, IBCustomDataSet, IBTable, dxEditor, dxsbar, dxBar,
  IBdatabase, IBEvents, IBQuery, RxSpeedBar, ActnList,imglist,MaskUtils, TypInfo, Jpeg, quickrpt, IBSQL,
  ShellApi, RXDBCtrl, dxDBELib, DateUtils, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid,dxPageControl,
  dxDockControl,dxDockPanel, IBStoredProc,
  QRCtrls,QRPDFFilt, QRExport,
  ActiveX, ComObj, ShlObj, StrInt, StrIntImp, Printers,
  IDGlobal;

Type
   TReturning          = (lrNone ,lrVariant,lrString,lrInteger,lrFloat);
   TWarning            = (lwNone ,lwShowWarning);
   TValidateAction     = (lvNone ,lvAbort,lvRaise,lvDelete);
   TAlign              = (lcLeft ,lcRight,lcCenter);
   TDefaultTransaction = (ltNone ,ltRead_Only,ltRead_Only_Release,ltRead_Only_Release_Commit,ltRead_Only_Release_Rollback,ltRead_Committed,ltCommit,ltCommitRetaining,ltRollback,ltRollbackRetaining); { Define o tipo de execução da transação }
   TDefaultAction      = (laNone ,laDefault,laOpen,laClose,laEnableControls,laDisableControls,laOpenEnableControls,laCloseEnableControls,laOpenDisableControls,laCloseDisableControls,laSavePoint,laNotReOpen); { Define se será usado ponteiro de bookmark (lcSavePoint) }

Type TRECParametros = record
    ID: Variant;
    
    DTSERVER,
    DTMES_INI,
    DTMES_FIM: TDate;

    DTMES_INI_FMT,
    DTMES_FIM_FMT: String[10];

    FANTASIA,
    RAZAO,
    GRUPO,
    GRP_EST: String[60];
    REGIME: String[2];
    DTFU: TDate;
    CNPJ,
    IE: String[14];
    ISUF: String[9];
    IM: String[15];

    NUDDD: String[2];
    NUTEL: String[9];
    EMAIL,
    SITE: String[60];

    IDLOG,
    CDUF : Variant;
    TPLOG: String[36];
    NOLOG: String[76];
    NULOG: String[15];
    COLOG: String[40];
    NUCEP: String[8];
    NOBAI,
    NOCID: String[72];
    CMUN: String[7];
    SGUF: String[2];

    EMP_CNAE: String[10];
    EMP_CNAE_DESC: String[60];
    EMP_IDIND_FIM: Variant;
    EMP_REIND_FIM: String[10];
    EMP_DEIND_FIM: String[60];
    EMP_CDI: Boolean;

    IDCL_PAD,
    IDCV_PAD,
    IDCR_PAD,
    IDCF_PAD,
    IDCT_PAD,
    IDCT_RET_PAD,
    IDCT_SEM_PAD: Variant;

    DECL_PAD,
    RZCL_PAD,
    DECV_PAD,
    DECR_PAD,
    DECF_PAD,
    RZCF_PAD,
    DECT_PAD,
    DECT_RET_PAD,
    DECT_SEM_PAD: String[60];

    CNPJCL_PAD,
    CNPJCF_PAD: String[14];

    PRO_COD_NUM,
    PRO_COD_GRD,
    PRO_COD_COR,
    PRO_QTRL: Boolean;
    PRO_COD_ORD: String[2];
    PRO_PSCN,
    PRO_AJU_PRC_VAR,
    PRO_AJU_PRC_REP: Double;
    PRO_GRD_PAD,
    PRO_COR_PAD,
    PRO_COR_PED_TIN,
    PRO_COR_PED_PRC,
    PRO_IDFIN_CAD,
    PRO_IDFIN_EST: Variant;
    PRO_COR_SIS,
    PRO_UCOM,
    PRO_REFIN_CAD,
    PRO_REFIN_EST: String[10];
    PRO_DEFIN_CAD,
    PRO_DEFIN_EST: String[60];
    PRO_ABNT_SIL,
    PRO_ABNT_DIM: String[40];

    EST_CDI: Variant;
    EST_CONTROLE,
    EST_UNIFICADO,
    EST_QTRL,
    EST_DEVOLUCAO: Boolean;
    EST_IDTIPO,
    EST_IDOPERACAO,
    EST_IDFINALIDADE,
    EST_IDFILTRO: Variant;
    EST_CDBE: String[2];
    EST_RETIPO,
    EST_REOPERACAO,
    EST_REFINALIDADE,
    EST_REFILTRO: String[10];
    EST_DETIPO,
    EST_DEOPERACAO,
    EST_DEFINALIDADE,
    EST_DEFILTRO: String[60];

    PED_CUPOM,
    PED_CANHOTO,
    PED_BX_A_VISTA,
    PED_DESCONTO,
    PED_EXPEDICAO,
    PED_DELIVERY,
    PED_IPI: Boolean;
    PED_PRECO: String[25];

    PED_NUVIA,
    PED_DESCONTO_LIMITE,
    PED_EXPEDICAO_LIMITE: Word;

    PED_CDPD,
    PED_CDCO,
    PED_CDPG,
    PED_CDST: Variant;

    PED_REST: String[10];
    
    PED_STPD,
    PED_STCO,
    PED_DEPG,
    PED_STFI: String[60];

    PED_VPRC_PAD: String[3];
    
    PED_PCOM_VEN,
    PED_PCOM_REP: Double;

    PED_NUPG: Word;

    FIN_API: Boolean;
    FIN_API_TOKEN: String[40];
    FIN_VER_PROC: String[10];
    FIN_VER_PROC_EDICAO: TDate;

    FIN_CONTROLE,
    FIN_PED_BAIXA,
    FIN_PED_BAIXA_CANCELA,
    FIN_PAG_AUTO,

    FIN_LIMITE_CREDITO: Boolean;
    FIN_LIMITE_CREDITO_VMAX: Double;
    FIN_LIMITE_CREDITO_PMAX: Word;

    FIN_LIMITE_BANCARIO,
    FIN_LIMITE_CARTEIRA: Word;

    FIN_PATH_PRINCIPAL: String[40];
    FIN_PATH_BOLETO,
    FIN_PATH_JSON: String[60];

    FIN_PATH_PRINCIPAL_BKP: String[40];
    FIN_PATH_BOLETO_BKP,
    FIN_PATH_JSON_BKP: String[60];

    NFE_API: Boolean;
    NFE_API_TOKEN: String[40];
    NFE_VER_PROC: String[10];
    NFE_VER_PROC_EDICAO: TDate;

    NFE_CRT,
    NFE_MODELO,
    NFE_SERIE,
    NFE_CFOP_IDFIN: Variant;
    NFE_CFOP_REFIN,
    NFE_CFOPDUF,
    NFE_CFOPFUF: String[10];
    NFE_CFOP_DEFIN: String[60];

    NFE_MODFRETE: Variant;
    NFE_MODFRETE_REF: String[10];
    NFE_MODFRETE_DESC: String[60];

    NFE_ICMS: Word;
    NFE_CREDITO_ICMS: Double;
    NFE_REDUCAO_PISCOFINS: Boolean;

    NFE_CABECALHO,
    NFE_CANHOTO,
    NFE_FONT_SIZE_ITEM,
    NFE_FONT_SIZE_INFADCAD,
    NFE_TIPO_DESCONTO: Variant;
    NFE_FORMAT_QTDE,
    NFE_FORMAT_VUNIT: String[15];
    NFE_TOTAL_PISCOFINS,
    NFE_TOTAL_CFOP: Variant;

    NFE_PATH_PRINCIPAL,
    NFE_PATH_XML,
    NFE_PATH_DANFE,
    NFE_PATH_CCE,

    NFE_PATH_PRINCIPAL_BKP,
    NFE_PATH_XML_BKP,
    NFE_PATH_DANFE_BKP,
    NFE_PATH_CCE_BKP,

    NFE_PATH_SCHEMAS,
    NFE_DATA_PACKET,
    NFE_DATA_PACKET_CCE,
    NFE_DATA_PACKET_FORM_SEG,
    NFE_DATA_PACKET_FS: String;

    NFE_ENV_EMAIL_AUTO: Variant;
    NFE_CAD_PRO_DI: Boolean;
    NFE_LOGO: String[60];

    CFE_API: Boolean;
    CFE_API_TOKEN: String;
    CFE_CNPJ: String[14];
    CFE_VER_PROC: String[10];
    CFE_VER_PROC_EDICAO: TDate;

    CFE_PATH_PRINCIPAL,
    CFE_PATH_XML,
    CFE_PATH_CUPOM,

    CFE_PATH_PRINCIPAL_BKP,
    CFE_PATH_XML_BKP,
    CFE_PATH_CUPOM_BKP,
    CFE_LOGO: String;

    CONTABIL_NUDDD: String[2];
    CONTABIL_NUTEL: String[9];
    CONTABIL_EMAIL: String[60];

    API_B2B,
    API_B2C,
    API_MKP: Variant;
    
    STA_IDCAD: Variant;
    STA_RECAD: String[10];
    STA_DECAD: String[60];

    SHEILD_CNPJ: String[14];
    SHEILD_RESPONSAVEL: String[40];
    SHEILD_EMAIL: String[40];
    SHEILD_NUTEL: String[11];
    SHEILD_TIMEZONE: String[6];

    SHEILD_LICENCA_VENCIMENTO: TDate;
    SHEILD_LICENCA_VENCIDO,
    SHEILD_LICENCA_AVISAR,
    SHEILD_LICENCA_SUSPENDER: Word;

    SHEILD_PATH_PRINCIPAL,
    SHEILD_PATH_PRINCIPAL_BKP,
    SHEILD_PATH_IMAGENS,
    SHEILD_PATH_DOCUMENTOS,
    SHEILD_PATH_DESKTOP: String;

    IMG_JPG_SPLASH,
    IMG_JPG_REL,
    IMG_JPG_ETQ,
    IMG_JPG_BLANK,
    IMG_BMP_ETQ,
    IMG_BMP_ETQ_MONO,
    IMG_BMP_BLANK,
    IMG_BMP_BLANK_MONO: TBlobField;

    CDCX: Variant;
    DTCX: TDate;
    STCX: String[40];
    IPCX: String[60];

    IP,
    HOST,
    ServerIP,
    ServerHOST,
    REL_PAD: String[60];

    C_CNPJ,
    C_NUTEL: String[25];

    DataBaseError: String;

    SecondsIdle: DWord;

    DEFHintWindowClass: THintWindowClass; { Default }
End;

Type TRECDefault = record
     ID: Variant;
     CD: String[30];

     IDEP,
     IDPK,
     IDFK,
     IDAK,
     IDEK: Variant;

     GEN_ID: String[30];

     IDEV,
     CDEV: Variant;
     REEV: String[30];
     DEEV: String[60];

     Tabela: String[60];

     { Acessos e Permissões }
     Funcao,
     Rotina,
     Nome,
     InsertValue: String[120];

     View,
     Append,
     Edit,
     Delete,
     Post,
     Print,
     Auto,

     Editing,
     Edited,

     Selected: Boolean;

     { Grid }
     GridOptionsEdit: Boolean;

     { Pesquisa }
     PSQValue: String[120];
     PSQField: String[30];

     PSQDTField: String[30];
     PSQDTINI,
     PSQDTFIM: TDate;

     { Screen }
     WorkArea,
     MainArea: Boolean;
     FrmPosition: TPosition;

     Top ,
     Left,
     FHeight,
     FWidth : Word;
     PBCount: Integer;

     { Motivos e Justificativas }
     Justificativa: TStringList;

     { IBX }
     ASQLConsulta,
     ASQLEdicao: TIBSQL;

     { Outros }
     EventAlert: Boolean;
     Event: String;

     ForceClose: Boolean;
End;

Type TRECPedidos = record
     { Cadastro }
     ID,
     IDEP,
     IDCA: Variant;

     { Cabeçalho }
     IDPK: Variant;
     DEPK: String[30];
     DTPK: TDateTime;

     { Itens }
     IDFK: Variant;
     DEFK: String[30];
     DTFK: TDateTime;
     ITEM: Variant;

     { Pedidos }
     IDPD, { Usuário }
     CDPD: Variant; { Código }
     DEPD, { Número }
     D_DEPD: String[30]; { Descritivo Número }
     TPPD: Variant; { Tipo Emissor }
     DTPD: TDateTime; { Data Emissão }

     { Nota Fiscal }
     IDNF, { Usuário }
     CDNF, { Número }
     TPNF: Variant; { Tipo Emissor }
     DTNF: TDateTime; { Data Emissão }

     CDRO, { Romaneios }
     CDBX: Variant; { Baixa }

     { Destinatário }
     CDCD, { Código do tipo de destinatário: 0) Cliente 1) Fornecedor 2) Representante 3) Transportadora }
     IDCD: Variant;
     RSCD: String[10]; { Referência Status }
     DECD,
     RZCD,
     GPCD: String[60];
     VWCD: String[10]; { View de pesquisa }

     CNPJ: String[14];
     IE: String[20];
     ISUF: String[20];
     IM: String[15];
     CPF: String[11];
     IDESTRANGEIRO: String[20];

     CONTATO: String[30];
     DDD: String[2];
     TEL: String[9];
     EMAIL: String[60];
     ENVEMAIL: Boolean;
     D_FONE: String[11];

     { Endereço Comercial }
     LOG_NU: Variant;
     TLO_TX: String[15];
     LOG_NO: String[76];
     LOG_NO_ABREV: String[36];
     NRO: String[10];
     XCPL: String[40];
     CEP: String[8];
     BAI_NO: String[76];
     BAI_NO_ABREV: String[36];
     LOC_NO: String[76];
     LOC_NO_ABREV: String[36];
     CMUN: String[7];
     ZFM_CENQ: Variant;
     ZFM_CMUN: Boolean;
     UF: String[2];
     UF_NO: String[20];
     CPAIS: Variant;
     XPAIS: String[60];
     D_LOG: String;

     { Endereço Endereço }
     ENT_LOG_NU: Variant;
     ENT_TLO_TX: String[15];
     ENT_LOG_NO: String[76];
     ENT_LOG_NO_ABREV: String[36];
     ENT_NRO: String[10];
     ENT_XCPL: String[40];
     ENT_CEP: String[8];
     ENT_BAI_NO: String[76];
     ENT_BAI_NO_ABREV: String[36];
     ENT_LOC_NO: String[76];
     ENT_LOC_NO_ABREV: String[36];
     ENT_CMUN: String[7];
     ENT_UF: String[2];
     ENT_UF_NO: String[20];

     { Vendedores }
     IDCV: Variant; { Interno }
     DECV: String[60];
     IDCR: Variant; { Interno }
     DECR: String[60];
     IDCC: Variant; { Comprador }
     DECC: String[60];

     { Tipo }
     PED_CDPD: Variant;
     STPD: String[60];
     FIPD: String[15]; { Finalidade }
     FAPD,             { Fatura }
     SVPD,             { Serviço }
     BQPD: Boolean;    { Bloqueável pelo financeiro }

     { Produto }
     PKPD: String[10]; { Pesquisa Padrão }
     TGPD: Boolean;    { Permite Tingimento }

     { Totais }
     PK_QTDE,         { Pedido }
     PK_QTSP: Double; { Expedição }

     PK_QTRL,          { Rolos Pedido }
     PK_RLSP: Integer; { Rolos Separados }

     PK_TSDE,         { Total Produtos }
     PK_PDSC,         { % Desconto }
     PK_VDSC,         { R$ Desconto }
     PK_VTSP,         { Total Separado }
     PK_TCDE,         { Total Pedido }
     PK_VIPI: Double; { Total IPI }

     PK_TDSC: String[2]; { Tipo de Desconto }

     TIPD,             { Soma IPI no Total }
     PDPD: Boolean;    { Permite Desconto }
     MDPD: Word;       { % Máximo de Desconto }

     { Estoque }
     BXEK,          { Baixa  }
     SPEK,          { Separa }
     RLEK: Boolean; { Peças  }
     CDEK: Variant;    { Tipo }
     REEK: String[10];
     DEEK: String[30];

     { Fiscal }
     CFOP: String[10]; { CFOP }

     { Financeiro }
     FIN_IDEP: Variant;
     FIN_VCRD,          { Crédito }
     FIN_PDSC,          { Desconto Geral  }
     FIN_VDSC,

     FIN_PDSC_001,
     FIN_VDSC_INI_001,  { Desconto Especial }
     FIN_VDSC_FIM_001,

     FIN_PDSC_002,
     FIN_VDSC_INI_002,
     FIN_VDSC_FIM_002,

     FIN_PDSC_003,
     FIN_VDSC_INI_003,
     FIN_VDSC_FIM_003: Double;

     { Informações Adicionais Desconto Especial }
     FIN_INFADCAD_L1,
     FIN_INFADCAD_L2,

     FIN_INFADCAD_L1_001,
     FIN_INFADCAD_L2_001,

     FIN_INFADCAD_L1_002,
     FIN_INFADCAD_L2_002,

     FIN_INFADCAD_L1_003,
     FIN_INFADCAD_L2_003: String[60];

     FIN_CSPD: Boolean; { Consignado   }
     FIN_BXPG: Boolean; { Baixa automático como pago }

     { Cobrança }
     CDCO: Variant;
     STCO: String[60];
     TPCO: Variant;   { Crédito }
     RECO: String[3]; { Referência }
     CDPG: Variant;   { Prazo }
     DEPG: String[60];
     BXPG: Boolean;    { Baixa Automática }

     { Fiscal }
     FIS_INDIEDEST,
     FIS_INDFINAL,
     FIS_CRT,
     FIS_CREDICMS: Variant;

     { Status }
     PK_CDST,
     CDCX: Variant; { Caixa }
     PK_REST: String[10];
     PK_DEST: String[60];

     { Transportadora }
     IDCT: Variant;
     DECT: String[60];
     CFRT: String[10];
     MFRT: Variant; { Modalidade }
     VFRT,          { Valor }
     PK_PSBR,
     PK_PSLQ: Double;

     { Produtos }
     IDCP,
     CP_IDEP: Variant;

     IDAK, { Artigos }
     IDEK: Variant; { Estoque }

     CEAN: String[20];
     DECP: String[120];
     DGCP: String[60];

      { Unidade Comercial }
     UCOM: String[10];
     UCON: String[40];

     { Estoque }
     EST_QTDE: Double;
     EST_QTRL: Integer;

     { Quantidade }
     QTDE: Double;
     QTRL: Integer;

     { Peso }
     PSBR: Double;
     PSLQ: Double;

     { Preços }
     VPRC_PAD_ORI: String[2];  { Moeda }
     VPRC_PAD_REF,             { Tabela Referência }
     VPRC_PAD_TAB: String[30]; { Tabela Campo }

     VPRC_PAD_INI, { Valor Mínimo }
     VPRC_PAD_FIM, { Valor Máximo }
     VPRC_PAD,         { Valor Padrão }
     VPRC_COM: Double; { Valor Comercial }

     CF_VPRC_PAD_ORI: String[2];  { Moeda }
     CF_VPRC_PAD_REF,             { Tabela Referência }
     CF_VPRC_PAD_TAB: String[30]; { Tabela Campo }

     CF_VPRC_PAD,         { Valor Padrão }
     CF_VPRC_COM: Double; { Valor Comercial }

     { Descontos }
     TDSC: String[1];
     PDSC,
     VDSC: Double;

     { Totais }
     TSDE,
     TCDE: Double;

     { Fiscal }
     ORIG: Variant; { Indústria Brasileira / Produto Importado }
     NCM: String[8];
     PIPI,
     VIPI: Double;

     { Etiquetas }
     CDET: Variant;
     CTNR,
     LOTE,
     MAPA: String[30];

     { Operação de Estoque }
     EST_CDOP: Variant;
     EST_REOP: String[10];
     EST_DEOP: String[30];

     { Tipo de Estoque }
     EST_CDTP: Variant;
     EST_RETP: String[10];
     EST_DETP: String[30];

     { Expedição }
     CDSP, { Ordem de Separação }
     IDSP: Variant; { Estoquista }

     { Defeitos }
     EST_CDDF: Variant;
     EST_DEDF: String[120];

     { Ficha de Conteúdo de Importação }
     NFCI: String[40];

     { Categorização }
     IDCOL: Variant;
     
     { Status }
     CDST: Variant;
     REST: String[10];
     DEST: String[60];

     { Informações Adicionais }
     INFADCAD,
     INFADCPL: WideString; { Cadastro }

     { Motivos e Justificativas }
     Motivo,
     MSGAction: String;
     Justificativa: TStringList;
     Lista: TList;

     { Form }
     AWinControl: TWinControl;
     APoint: TPoint;

     { Pesquisa }
     Value: String[60];
     FKValue: Variant;
     Field,
     Where: String[30];
     Selected: Boolean;

     { IBX }
     ASPEdicao : TIBStoredProc;
     AQConsulta: TIBQuery;
     AEdicao   : TIBDataSet;

     ASQLConsulta,
     ASQLEdicao,
     ASQLFKEdicao: TIBSQL;

     { Outros }
     AException: String;

     EST_CDI,
     FB_IDG, { Generators }
     IDEV,
     FLAG: Variant;
End;

Type TRECCadastros = record
     { Destinatário }
     IDCD,
     CDCD, // Código do tipo de destinatário: 0) Cliente 1) Fornecedor 2) Representante 3) Transportadora
     IDEP: Variant;
     DECD,
     RZCD,
     GPCD: String[60];
     VWCD: String[10]; // View de pesquisa
     DTFU,
     DTMV: TDate;

     { Inclusão }
     IDCA: Variant;
     DECA: String[60];
     DTCA,
     DTPV: TDateTime;

     { Alteração }
     IDED: Variant;
     DEED: String[60];
     DTED: TDateTime;

     { Status }
     IDST: Variant;
     CDST: Variant;
     NOST: String[40];
     REST: String[10];
     DEST: String[60];
     DTST: TDateTime;

     { Vendedor }
     IDCV: Variant;
     DECV: String[60];

     { Representante }
     IDCR: Variant;
     DECR: String[60];

     { Cadastro }
     CNPJ: String[14];
     IE: String[20];
     ISUF: String[20];
     IM: String[15];
     CPF: String[11];
     IDESTRANGEIRO: String[20];

     { Fiscal }
     FIS_CRT,
     FIS_CREDICMS,
     FIS_INDIEDEST,
     FIS_INDFINAL: Variant;

     CONTATO: String[30];
     DDD: String[2];
     TEL: String[9];
     EMAIL: String[60];
     ENVEMAIL: Boolean;
     D_FONE: String[11];

     CONTATO2: String[30];
     DDD2: String[2];
     TEL2: String[9];
     EMAIL2: String[60];

     CONTATO3: String[30];
     DDD3: String[2];
     TEL3: String[9];
     EMAIL3: String[60];

     CEL_CONTATO: String[30];
     CEL_DDD: String[2];
     CEL_TEL: String[9];
     CEL_EMAIL: String[60];

     CEL_CONTATO2: String[30];
     CEL_DDD2: String[2];
     CEL_TEL2: String[9];
     CEL_EMAIL2: String[60];

     ZAP_CONTATO2: String[30];
     ZAP_DDD2: String[2];
     ZAP_TEL2: String[9];
     ZAP_EMAIL2: String[60];
     D_ZAP: String[15];

     { Endereço Principal - Comercial }
     LOG_NU: Variant;
     TLO_TX: String[15];
     LOG_NO: String[76];
     LOG_NO_ABREV: String[36];
     NRO: String[10];
     XCPL: String[40];
     CEP: String[8];
     BAI_NO: String[76];
     BAI_NO_ABREV: String[36];
     LOC_NO: String[76];
     LOC_NO_ABREV: String[36];
     CMUN: String[7];
     ZFM_CENQ: Variant;
     ZFM_CMUN: Boolean;
     UF: String[2];
     UF_NO: String[20];
     CPAIS: Variant;
     XPAIS: String[60];
     D_LOG: String;

     { Endereço de Cobrança }
     COB_LOG_NU: Variant;
     COB_TLO_TX: String[15];
     COB_LOG_NO: String[76];
     COB_LOG_NO_ABREV: String[36];
     COB_NRO: String[10];
     COB_XCPL: String[40];
     COB_CEP: String[8];
     COB_BAI_NO: String[76];
     COB_BAI_NO_ABREV: String[36];
     COB_LOC_NO: String[76];
     COB_LOC_NO_ABREV: String[36];
     COB_CMUN: String[7];
     COB_UF: String[2];
     COB_D_LOG: String;

     { Endereço de Entrega - Delivery }
     ENT_CNPJ_CPF,
     ENT_LOG_NU: Variant;
     ENT_TLO_TX: String[15];
     ENT_LOG_NO: String[76];
     ENT_LOG_NO_ABREV: String[36];
     ENT_NRO: String[10];
     ENT_XCPL: String[40];
     ENT_CEP: String[8];
     ENT_BAI_NO: String[76];
     ENT_BAI_NO_ABREV: String[36];
     ENT_LOC_NO: String[76];
     ENT_LOC_NO_ABREV: String[36];
     ENT_CMUN: String[7];
     ENT_UF: String[2];

     { Endereço de Retirada }
     RET_CNPJ_CPF,
     RET_LOG_NU: Variant;
     RET_TLO_TX: String[15];
     RET_LOG_NO: String[76];
     RET_LOG_NO_ABREV: String[36];
     RET_NRO: String[10];
     RET_XCPL: String[40];
     RET_CEP: String[8];
     RET_BAI_NO: String[76];
     RET_BAI_NO_ABREV: String[36];
     RET_LOC_NO: String[76];
     RET_LOC_NO_ABREV: String[36];
     RET_CMUN: String[7];
     RET_UF: String[2];

     { Transporte }
     IDCT: Variant;
     DECT: String[60];
     MFRT: Word;

     { Financeiro }
     FIN_IDEP: Variant;
     FIN_VCRD,          // Crédito
     FIN_PDSC,          // Descontos %
     FIN_VDSC: Double;  // Descontos R$
     FIN_CSPD: Boolean; // Consignado

     { Prazo }
     CDPG: Variant;
     DEPG: String[60];
     
     { Informações Adicionais }
     INFADCAD,
     INFADFIN,
     INFADFIS,
     INFADCNAE: WideString;

     { Pesquisa }
     Value: String[60];
     Field,
     Where: String[30];
     Selected: Boolean;

     AIBCustomDataSet: TIBCustomDataSet;
End;

Type TRECEdicao = record
     { Cadastro }
     ID,
     IDEP,
     IDCA,
     CDCX: Variant;

     { Primary }
     IDPK: Variant;      { Usuário    }
     DTPK: TDateTime;    { Emissão    }
     CDPK: Variant;      { Número     }
     DEPK: String[30];   { Nome       }
     D_DEPK: String[60]; { Descritivo }
     TPPK: Variant;      { Tipo       }
     TBPK: String[30];   { Tabela     }

     { Foreign }
     IDFK: Variant;      { Usuário    }
     DTFK: TDateTime;    { Emissão    }
     CDFK: Variant;      { Número     }
     DEFK: String[30];   { Nome       }
     D_DEFK: String[60]; { Descritivo }
     TPFK: Variant;      { Tipo       }
     TBFK: String[30];   { Tabela     }

     { Expedição }
     IDSP: Variant;   { Usuário }
     DTSP: TDateTime; { Emissão }
     CDSP: Variant;   { OSP - Ordem de Separação }
     QTSP: Double;    { Quantidade }
     RLSP: Integer;   { Rolos }

     { Romaneios }
     IDRO: Variant;    { Usuário }
     DTRO: TDateTime;  { Emissão }
     CDRO: Variant;    { Número  }
     DERO: String[30]; { Nome    }
     TPRO: Variant;    { Tipo    }

     { Nota Fiscal }
     IDNF: Variant;    { Usuário    }
     DTNF,             { Emissão    }
     DTSA: TDateTime;  { Saída      }
     CDNF: Variant;    { Número     }
     TPNF,             { Operação   }
     FINNFE: Variant;  { Finalidade }

     { Baixas }
     IDBX: Variant;    { Usuário }
     DTBX: TDateTime;  { Emissão }
     CDBX: Variant;    { Número  }

     { Destinatario }
     LGCD,             { Usuário }
     IDCD: Variant;    { Código  }
     RSCD: String[10]; { Referência Status }
     DECD,             { Nome Fantasia }
     RZCD,             { Razão Social  }
     GPCD: String[60]; { Grupo }
     TPCD: Variant;    { Tipo: 1) Cliente 2) Fornecedor 3) Representante 4) Transportadora }
     VWCD: String[10]; { View de pesquisa }

     { Emitente }
     LGCE,             { Usuário }
     IDCE: Variant;    { Código  }
     RSCE: String[10]; { Referência Status }
     DECE,             { Nome Fantasia }
     RZCE,             { Razão Social  }
     GPCE: String[60]; { Grupo }
     TPCE: Variant;    { Tipo: 0) Cliente 1) Fornecedor 2) Representante 3) Transportadora }
     VWCE: String[10]; { View de pesquisa }

     { Ficha Cadastral }
     CNPJ: String[14];
     IE: String[20];
     ISUF: String[20];
     IM: String[15];
     CPF: String[11];
     IDESTRANGEIRO: String[20];

     CONTATO: String[30];
     DDD: String[2];
     TEL: String[9];
     EMAIL: String[60];
     ENVEMAIL: Boolean;
     D_FONE: String[11];

     { Endereço Principal }
     LOG_NU: Variant;
     TLO_TX: String[15];
     LOG_NO: String[76];
     LOG_NO_ABREV: String[36];
     NRO: String[10];
     XCPL: String[40];
     CEP: String[8];
     BAI_NO: String[76];
     BAI_NO_ABREV: String[36];
     LOC_NO: String[76];
     LOC_NO_ABREV: String[36];
     CMUN: String[7];
     ZFM_CENQ: Variant;
     ZFM_CMUN: Boolean;
     UF: String[2];
     UF_NO: String[20];
     CPAIS: Variant;
     XPAIS: String[60];
     D_LOG: String;

     { Vendedores Internos }
     IDCV: Variant;    { Código }
     DECV: String[60]; { Nome   }

     { Vendedores Externos }
     IDCR: Variant;    { Código }
     DECR: String[60]; { Nome   }

     { Compradores }
     IDCC: Variant;    { Código }
     DECC: String[60]; { Nome   }

     { Parâmetros dos Pedidos }
     CDPD: Variant;    { Código }
     STPD: String[60]; { Nome   }
     FIPD: String[15]; { Finalidade }

     FAPD,             { Fatura }
     SVPD,             { Serviço }
     BQPD: Boolean;    { Bloqueável pelo financeiro }

     PKPD: String[10]; { Pesquisa Padrão }
     TGPD: Boolean;    { Permite Tingimento }

     { Totais }
     PDPD: Boolean;    { Permite Desconto }
     MDPD: Word;       { % Máximo de Desconto }

     { Estoque }
     BXEK,             { Baixa  }
     SPEK,             { Separa }
     RLEK: Boolean;    { Peças  }
     CDEK: Variant;    { Tipo   }
     REEK: String[10]; { Referência }
     DEEK: String[30]; { Descrição  }

     { Financeiro }
     FIN_IDEP: Variant;
     FIN_VCRD,          { Crédito }
     FIN_PDSC,          { %  Desconto }
     FIN_VDSC,          { R$ Desconto }

     { Descontos Especiais }
     FIN_PDSC_001,
     FIN_VDSC_INI_001,
     FIN_VDSC_FIM_001,

     FIN_PDSC_002,
     FIN_VDSC_INI_002,
     FIN_VDSC_FIM_002,

     FIN_PDSC_003,
     FIN_VDSC_INI_003,
     FIN_VDSC_FIM_003: Double;

     { Informações Adicionais Descontos Especiais }
     FIN_INFADCAD_L1,
     FIN_INFADCAD_L2,

     FIN_INFADCAD_L1_001,
     FIN_INFADCAD_L2_001,

     FIN_INFADCAD_L1_002,
     FIN_INFADCAD_L2_002,

     FIN_INFADCAD_L1_003,
     FIN_INFADCAD_L2_003: String[60];

     FIN_CSPD: Boolean; { Consignado   }
     FIN_BXPG: Boolean; { Baixa automático como pago }

     { Cobrança }
     CDCO: Variant;    { Código }
     STCO: String[60]; { Nome   }

     TPCO: Variant;    { Crédito }
     RECO: String[3];  { Referência }
     CDPG: Variant;    { Prazo }
     DEPG: String[60];
     BXPG: Boolean;    { Baixa Automática }

     { Fiscal }
     CFOP: String[10]; { CFOP }
     TIPD: Boolean;    { Soma IPI no Total }

     ORIG: Variant; { Indústria Brasileira / Produto Importado }
     NCM : String[8];

     PIPI,
     VIPI: Double;

     FIS_INDIEDEST,
     FIS_INDFINAL,
     FIS_CRT,
     FIS_CREDICMS: Variant;

     { Status }
     IDST: Variant;    { Usuário }
     DTST: TDateTime;  { Emissão }
     CDST: Variant;    { Código  }
     REST: String[10]; { Referência }
     DEST: String[60]; { Descrição }

     { Transportadora }
     IDCT: Variant;     { Código }
     DECT: String[60];  { Nome Fantasia }
     CFRT: String[10];  { Coleta }
     MFRT: Variant;     { Modalidade Frete }
     VFRT,              { Valor Frte }
     PSBR,              { Peso em KG Bruto }
     PSLQ: Double;      { Peso em KG Líquido }

     { Produtos }
     ITEM,
     IDCP,              { Código  }
     CP_IDEP: Variant;  { Empresa }
     IDAK,              { Artigos }
     IDEK: Variant;     { Estoque }
     CEAN: String[20];  { Cód. Barras }

     DECP,              { Descrição }
     TICP: String[120]; { Título }
     DGCP: String[60];  { Grade  }

     { Unidade }
     UCOM : String[10]; { Comercial  }
     UTRIB: String[10]; { Tributária }
     UCON : String[40]; { Conteúdo   }
     UCDBE: String[02]; { Tipo de Manipulação do Estoque Vendável }
     UQTDE: Double;     { Quantidade Média }

     { Estoque }
     EPE_QTDE: Double;  { Quantidade }
     EPE_QTRL: Integer; { Peça }

     { Quantidade }
     QTDE: Double;
     QTRL: Integer;

     { Preços Comerciais }
     VPRC_PAD_ORI: String[2];  { Moeda }
     VPRC_PAD_REF,             { Tabela Referência }
     VPRC_PAD_TAB: String[30]; { Tabela Campo }

     VPRC_PAD_INI, { Valor Mínimo }
     VPRC_PAD_FIM, { Valor Máximo }
     VPRC_PAD,         { Valor Padrão }
     VPRC_COM: Double; { Valor Comercial }

     { Preços Compras }
     CF_VPRC_PAD_ORI: String[2];  { Moeda }
     CF_VPRC_PAD_REF,             { Tabela Referência }
     CF_VPRC_PAD_TAB: String[30]; { Tabela Campo }

     CF_VPRC_PAD,         { Valor Padrão }
     CF_VPRC_COM: Double; { Valor Comercial }

     { Descontos }
     TDSC: String[1];
     PDSC,
     VDSC: Double;

     { Totais }
     TSDE,
     TCDE: Double;

     { Etiquetas }
     CDET,
     CDI : Variant;
     CTNR,
     LOTE,
     MAPA: String[30];

     { Operação de Estoque }
     CDOP: Variant;
     REOP: String[10];
     DEOP: String[30];

     { Tipo de Estoque }
     CDTP: Variant;
     RETP: String[10];
     DETP: String[30];

     { Categorização }
     COL_ID: Variant; { Coleção }

     { Ficha de Conteúdo de Importação }
     NFCI: String[40];

     { Defeitos }
     IDDF: Variant;     { Usuário   }
     DTDF: TDateTime;   { Emissão   }
     CDDF: Variant;     { Código    }
     DEDF: String[120]; { Descrição }

     { Informações Adicionais }
     INFADCAD,
     INFADCPL: WideString; { Cadastro }

     { Motivos e Justificativas }
     MSGMotivo,
     MSGAction: String;

     AJustificativa: TStringList;
     ALista: TList;

     { Form }
     AWinControl: TWinControl;
     APoint: TPoint;

     { Pesquisa }
     AValue: String[60];
     FKAValue: Variant;
     AField,
     AWhere: String[30];
     Selected: Boolean;

     { IBX }
     ASPEdicao : TIBStoredProc;
     AQConsulta: TIBQuery;
     AEdicao   : TIBDataSet;

     ASQLConsulta,
     ASQLEdicao,
     ASQLFKEdicao: TIBSQL;

     { Generators }
     IDG_FB,           { ID Tabelas }
     IDG_EV: Variant;  { Eventos }

     { Outros }
     AException: String;
     FLAG,
     IDEV: Variant;
End;

Type TRECProdutos = record
     { Cadastro }
     IDEP,
     IDCA: Variant;

     { Pedido }
     IDPK: Variant;
     DEPK: String[30];
     DTPK: TDateTime;

     { Destinatário }
     IDCD: Variant;

     { Vendedores / Compradores }
     IDCV,          { Interno }
     IDCR,          { Externo }
     IDCC: Variant; { Comprador }

     { Preços }
     RPPD: String[30]; { Referência }
     VPPD: String[15]; { Tabela }
     MPPD: String[2];  { Origem Moeda }

     { Tipo }
     CDPD: Variant;
     FIPD: String[15]; { Finalidade }

     { Cobrança }
     CDCO,
     TPCO: Variant;   { Crédito }
     RECO: String[3]; { Referência }
     CDPG: Variant;   { Prazo }

     { Status }
     CDST,
     CDCX: Variant; { Caixa }
     REST: String[10];
     DEST: String[60];

     { Itens }
     IDFK,
     ITEM: Variant;

     { Produtos }
     IDCP,
     CP_IDEP: Variant;

     IDAK, { Artigos }
     IDEK: Variant; { Estoque }

     CEAN: String[20];
     DECP: String[120];
     DGCP: String[60];

      { Unidade Comercial }
     UCOM: String[10];
     UCON: String[40];

     { Estoque }
     EST_QTDE: Double;
     EST_QTRL: Integer;

     { Quantidade }
     QTDE: Double;
     QTRL: Integer;

     { Peso }
     PSBR: Double;
     PSLQ: Double;

     { Preços }
     VPRC_PAD_ORI: String[2]; { Tipo de Moeda }
     VPRC_PAD_INI,
     VPRC_PAD_FIM,
     VPRC_PAD,
     VPRC_COM: Double;

     { Descontos }
     PDSC,
     VDSC: Double;

     { Totais }
     TSDE,
     TCDE: Double;

     { Fiscal }
     ORIG: Variant; { Indústria Brasileira / Produto Importado }
     NCM: String[8];
     PIPI,
     VIPI: Double;

     { Etiquetas }
     CDET: Variant;
     CTNR,
     LOTE: String[30];

     { Estoque }
     REOP: String[10];
     CDOP, { Operação }
     CDTP, { Tipo }
     CDSP, { Ordem de Separação }
     IDSP: Variant; { Estoquista }

     { Defeitos }
     IDDF,
     CDDF: Variant;
     DEDF: String[120];

     { Ficha de Conteúdo de Importação }
     NFCI: String[40];

     { Informações Adicionais }
     INFADPED, { Pedido }
     INFADFIN, { Financeiro }
     INFADCAD: WideString; { Cadastro }

     { Form }
     AWinControl: TWinControl;
     APoint: TPoint;

     { Pesquisa }
     Value: String[60];
     FKValue: Variant;
     Field,
     Where: String[30];
     Selected: Boolean;

     { IBX }
     ASPEdicao : TIBStoredProc;
     AQConsulta: TIBQuery;
     AEdicao   : TIBDataSet;

     ASQLConsulta,
     ASQLEdicao,
     ASQLFKEdicao: TIBSQL;

     { Outros }
     IDEV,
     FLAG: Variant;
End;

Type TRECUsuarios = record
     ID,
     IDEP: Variant;
     DTAcesso: TDate;
     DEEP: String[60];

     Login: String[30];
     Nome : String[60];

     Cargo,
     Departamento: String[60];
     
     Grupo: String[3];
     Comprador,
     Caixa: Boolean;

     PED_DESCONTO,
     PED_TOTALIZADOR,
     PED_RELATORIOS: Boolean;
     PED_DESCONTO_LIMITE: Double;
     PED_GRID_FOCUSED: Word;

     FIN_LIMITE_CREDITO: Boolean;
     FIN_LIMITE_CREDITO_VMAX: Double;

     API_BOLETO: Boolean;
     API_BANCO,
     API_AMBIENTE: String[30];

     API_B2B,
     API_B2C,
     API_MKP: Boolean;

     EMAIL,
     EMAIL_NOME,
     EMAIL_SMTP: String[60];

     EMAIL_PORTA,
     EMAIL_SSL  : String[5];
     EMAIL_TOKEN: String[15];

     NUDDD,
     NUDDDCEL: String[2];

     NUTEL,
     NUCEL: String[9];

     Relatorio,
     CurrentPrinter: String[60];

     Selected: Boolean;
End;

Type TRECPrincipal = record
     IDPK,
     IDFK,
     IDSelected,
     IDEV,
     CDEV,
     CDCX,
     cStat: Variant;
     DEEV: String[30];
     IDCA,
     IDED,
     PED_CREDITO,
     Top,
     Left: Word;
     PSQTexto,
     PSQTextoCaption,
     PSQComplemento,
     PSQComplemento2,
     PSQComplementoCaption,
     PSQComplementoCaption2,
     Funcao,
     Rotina,
     Nome,
     CDPK,
     CDFK,
     chNFe,
     protNFe,
     PED_TIPO,
     PED_COBRANCA,
     PED_STATUS,
     PED_PRAZO: String[60];
     PSQComplementoSelect,
     PSQComplementoSelect2,
     InsertValue: String[120];
     Field,
     Event,
     Perfil,
     Tabela: String;
     PSQWhere,
     PSQLike1,
     PSQLike2,
     PSQData,
     PSQTextoField: String[30];
     PSQDT1,
     PSQDT2: TDate;
     DTPK,
     DTFK: TDateTime;
     Append,
     Edit,
     Delete,
     View,
     Print,
     Auto,
     Selected,
     Edited,
     EventAlert,
     TBPrincipal,
     PNLPrincipal,
     WorkArea,
     MainArea,
     GridOptionsBehavior,
     GridOptionsView,
     PED_SEPARA,
     PED_FATURA,
     PED_EST_QTRL,
     PED_ESTOQUE,
     Abort: Boolean;
     FrmPosition: TPosition;
     Lista: TList;
     PBCount: Integer;
End;

Type TRECRelatorios = record
     Id,
     IDEP,
     PEC1CodigoText,
     PEC2CodigoText,
     PEC1ConsultaText,
     PEC2ConsultaText,
     PEC3ConsultaText,
     PEC4ConsultaText: Variant;
     IEC1ConsultaWhere,
     IEC1ConsultaLike1,
     IEC1ConsultaLike2,
     IEC2ConsultaWhere,
     IEC2ConsultaLike1,
     IEC2ConsultaLike2,
     IEC3ConsultaWhere,
     IEC3ConsultaLike1,
     IEC3ConsultaLike2,
     IEC4ConsultaWhere,
     IEC4ConsultaLike1,
     IEC4ConsultaLike2,
     WhereORAnd: String[10];
     CNPJEP,
     CDArtigo,
     CDProduto,
     CEAN: String[20];
     Event,
     TAB_PK,
     TAB_PK_ITE,
     TAB_FK,
     TAB_FK_ITE,
     PEC1CodigoCaption,
     PEC2CodigoCaption,
     IEC1ConsultaCaption,
     IEC2ConsultaCaption,
     IEC3ConsultaCaption,
     IEC4ConsultaCaption,
     PEC1CodigoField,
     PEC1CodigoFieldTable,
     PEC2CodigoField,
     PEC2CodigoFieldTable,
     IEC1ConsultaField,
     IEC1ConsultaTable,
     IEC2ConsultaField,
     IEC2ConsultaTable,
     IEC3ConsultaField,
     IEC3ConsultaTable,
     IEC4ConsultaField,
     IEC4ConsultaTable,
     IEDataCaption,
     IEDataTable,
     IEDataField,
     OrderField: String[40];
     TipoValor: String[30];
     Tipo,
     Status,
     Nome,
     DEEP,
     Modelo: String[60];
     RZEP,
     IEDataAnd,
     IEFKDataAnd,
     TAB_COL,
     TAB_SQL,
     Titulo,
     SubTitulo,
     RodapeRelatorio,
     RodapeFiltros,
     PrintName,
     ConsultaCaption,
     ConsultaText,
     ConsultaField: String[120];
     IEC1ConsultaAnd,
     IEC2ConsultaAnd,
     IEC3ConsultaAnd,
     IEC4ConsultaAnd,
     IEC5ConsultaAnd,
     SelectSQL: String[255];
     IEDataText1,
     IEDataText2: TDate;
     Sequencia,
     PrintTag: smallint;
     Perfil: Word;
     Handle,
     SyncMRecNo,
     SyncMRecordCount,
     SyncCRecNo,
     SyncCRecordCount,
     Copias,
     Pecas,
     ForDO: Integer;
     Quantidade,
     Estoque,
     Preco,
     Desconto,
     Total: Double;

     Editado: Boolean;

     { IBX }
     ATConsulta: TIBTransaction;
     ASQLConsulta: TIBSQL;

     AQRImage: TQRImage;
     AQRLabel: TQRLabel;

     AFrmArea: TRect;
     AFrmStyle: TFormStyle;
     AFrmPosition: TPosition;
End;

Type TRECVendedores = record
     Id,
     IDEmpresa: Variant;
     Vendedor,
     Tipo,
     STCadastro: String[30];
     Nome: String[60];
     DTCadastro: TDate;
     DTAcesso: TDateTime;
     Limite: Word;
     Menu: String[3];
     Admin: String[1];
End;

Type TRECEnderecos = record
     Id: Variant;
     Tipo: String[36];
     Logradouro: String[100];
     Logradouro_Abrev: String[36];
     Complemento: String[100];
     Cep: String[8];
     Bairro: String[72];
     Bairro_Abrev: String[36];
     Cidade: String[72];
     Cidade_Abrev: String[36];
     CMUN: String[7];
     UF: String[2];
     UF_NO: String[20];

     Selected: Boolean;

     Value: String[60];
     Field,
     Where: String[30];
End;

Const
  WM_AFTER_SHOW     = WM_USER + 1; // custom message
  WM_AFTER_CREATE   = WM_USER + 2; // custom message
  WM_AFTER_ACTIVATE = WM_USER + 3; // custom message

  KEY_WOW64_64KEY = $0100;
  KEY_WOW64_32KEY = $00200;

  dllNFe = 'C:\Sheild\NotaFiscal\NFe.dll';

  aDup : array [1..24] of string = ('A','B','C','D','E','F','G',
                                    'H','I','J','K','L','M','N',
                                    'O','P','Q','R','S','T','U',
                                    'V','X','Z');

  aSequenciaL: Array [1..12] of String = ('A','B','C','D','E','F','G',
                                          'H','I','J','K','L');
  aSequenciaN: Array [1..12] of String = ('1','2','3' ,'4' ,'5','6','7',
                                          '8','9','10','11','12');

  { Matriz para pesquisas avançadas
      aPesquisa[i,00] - Perfil
      aPesquisa[i,01] - Descrição
      aPesquisa[i,02] - Campo
      aPesquisa[i,03] - Default RGPesquisaCampo
      aPesquisa[i,04] - Default RGPesquisaLike
      aPesquisa[i,05] - Default IEDataCampo
      aPesquisa[i,06] - Default Tipo de Campo
      aPesquisa[i,07] - Where
      aPesquisa[i,08] - Like1
      aPesquisa[i,09] - Like2
      aPesquisa[i,10] - Texto
      aPesquisa[i,11] - Data Inicial
      aPesquisa[i,12] - Data Final
  }

  aPerfilPesquisa: Array[00..68,00..05] of String = (('Produtos'  ,'Código'               ,'ID'        ,'' ,'2','N'),
                                                     ('Produtos'  ,'Artigo'               ,'_CART'     ,'1','1','S'),  { Default = Artigo(1) }
                                                     ('Produtos'  ,'Produto'              ,'_CPRO'     ,'' ,'1','S'),  { Like    = Ambos(0)   Inicio (1) Exato(2) Final(3) }
                                                     ('Produtos'  ,'Descrição'            ,'_DPRO'     ,'' ,'1','S'),  { Tipo    = Numeros(N) String(S)  Datas(D) }
                                                     ('Produtos'  ,'Referencia Fornecedor','_CFOR'     ,'' ,'1','S'),
                                                     ('Produtos'  ,'Nome Fornecedor'      ,'_DEFO'     ,'' ,'1','S'),
                                                     ('Produtos'  ,'Coleção'              ,'_DCOL'     ,'' ,'1','S'),
                                                     ('Produtos'  ,'Grupo'                ,'_DGRP'     ,'' ,'1','S'),
                                                     ('Produtos'  ,'Sub Grupo'            ,'_DSGP'     ,'' ,'1','S'),
                                                     ('Produtos'  ,'Categoria'            ,'_DCAT'     ,'' ,'1','S'),
                                                     ('Produtos'  ,'Cor'                  ,'_DCOR'     ,'' ,'1','S'),
                                                     ('Produtos'  ,'Dt. Cadastro'         ,'_DCAD'     ,'' ,'' ,'D'),  { Default = Dt. Cadastro }
                                                     ('Produtos'  ,'Dt. Alteração'        ,'_DALT'     ,'' ,'' ,'D'),
                                                     ('Produtos'  ,'Dt. Entrada'          ,'_DENT'     ,'' ,'' ,'D'),
                                                     ('Produtos'  ,'Dt. Venda'            ,'_DULT'     ,'' ,'' ,'D'),
                                                     ('Produtos'  ,'Dt. Programado'       ,'_DPRG'     ,'' ,'' ,'D'),
                                                     ('Produtos'  ,'Dt. Compra'           ,'_DCOM'     ,'' ,'' ,'D'),
                                                     ('Cadastros' ,'Código'               ,'ID'        ,'' ,'2','N'),
                                                     ('Cadastros' ,'Fantasia'             ,'_FANT'     ,'1','0','S'),  
                                                     ('Cadastros' ,'Nota Fiscal'          ,'_CDNF'     ,'' ,'2','N'),
                                                     ('Cadastros' ,'Razão Social'         ,'_RAZA'     ,'' ,'0','S'),
                                                     ('Cadastros' ,'Grupo Comercial'      ,'_DEGP'     ,'' ,'0','S'),
                                                     ('Cadastros' ,'Cnpj'                 ,'_CNPJ'     ,'' ,'0','S'),
                                                     ('Cadastros' ,'Cpf'                  ,'_CPF'      ,'' ,'0','S'),
                                                     ('Cadastros' ,'Fone'                 ,'_TEL1'     ,'' ,'0','S'),
                                                     ('Cadastros' ,'Celular'              ,'_CEL'      ,'' ,'0','S'),
                                                     ('Cadastros' ,'Logradouro'           ,'_LOGR'     ,'' ,'0','S'),
                                                     ('Cadastros' ,'Bairro'               ,'_BAI'      ,'' ,'0','S'),
                                                     ('Cadastros' ,'Cidade'               ,'_CID'      ,'' ,'0','S'),
                                                     ('Cadastros' ,'UF'                   ,'_ESTA'     ,'' ,'2','S'),
                                                     ('Cadastros' ,'Dt. Cadastro'         ,'_DCAD'     ,'' ,'' ,'D'),  
                                                     ('Cadastros' ,'Dt. Alteração'        ,'_DALT'     ,'' ,'' ,'D'),
                                                     ('Cadastros' ,'Dt. Venda'            ,'_DULT'     ,'' ,'' ,'D'),
                                                     ('Financeiro','Título'               ,'PK.TITULO'  ,'1','1','S'),
                                                     ('Financeiro','Fatura'               ,'PK.DOCUMENTO'  ,'' ,'1','S'),
                                                     ('Financeiro','Container'            ,'PK.CTNR'  ,'' ,'1','S'),
                                                     ('Financeiro','Cód. Cliente'         ,'PK.IDCD'  ,'' ,'2','N'),
                                                     ('Financeiro','Fantasia'             ,'CD.FANTASIA'  ,'' ,'0','S'),
                                                     ('Financeiro','Razão Social'         ,'CD.RAZAO'  ,'' ,'0','S'),
                                                     ('Financeiro','Grupo Comercial'      ,'CD.GRUPO'  ,'' ,'0','S'),
                                                     ('Financeiro','Cnpj'                 ,'CD.CNPJ'  ,'' ,'0','S'),
                                                     ('Financeiro','Vendedor'             ,'CV.LOGIN'  ,'' ,'0','S'),
                                                     ('Financeiro','Representante'        ,'CR.FANTASIA'  ,'' ,'0','S'),
                                                     ('Financeiro','Status Documento'     ,'PK.DEST'  ,'' ,'0','S'),
                                                     ('Financeiro','Status Boleto'        ,'PK.API_ID','' ,'0','S'),
                                                     ('Financeiro','Dt. Fatura'           ,'PK.DTFA'  ,'' ,'' ,'D'),
                                                     ('Financeiro','Dt. Vencimento'       ,'PK.DTVC'  ,'' ,'' ,'D'),
                                                     ('Financeiro','Dt. Pagamento'        ,'PK.DTPG'  ,'' ,'' ,'D'),
                                                     ('Financeiro','Dt. Baixa'            ,'PK.DTBX'  ,'' ,'' ,'D'),
                                                     ('Entradas'  ,'Romaneio'             ,'EST.ID'    ,'1','2','N'),
                                                     ('Entradas'  ,'Documento'            ,'PRO_CDNF'  ,'' ,'1','S'),
                                                     ('Entradas'  ,'Container'            ,'PRO_CTNR'  ,'' ,'1','S'),
                                                     ('Entradas'  ,'Fornecedor'           ,'FOR_FANT'  ,'' ,'0','S'),
                                                     ('Entradas'  ,'Nº Etiqueta'          ,'PRO_CDET'  ,'' ,'0','S'),
                                                     ('Entradas'  ,'Artigo'               ,'PRO_CART'  ,'' ,'2','S'),
                                                     ('Entradas'  ,'Dt. Lancto'           ,'PRO_DCAD'  ,'' ,'' ,'D'),
                                                     ('Pedidos'   ,'Pedido'               ,'ROM_DERO'  ,'1','0','S'),
                                                     ('Pedidos'   ,'Nota Fiscal'          ,'ROM_CDNF'  ,'' ,'2','N'),
                                                     ('Pedidos'   ,'Cliente'              ,'CLI_FANT'  ,'' ,'0','S'),
                                                     ('Pedidos'   ,'Vendedor'             ,'USU_DUSU'  ,'' ,'0','S'),
                                                     ('Pedidos'   ,'Representante'        ,'REP_FANT'  ,'' ,'0','S'),
                                                     ('Pedidos'   ,'Transportadora'       ,'TRA_FANT'  ,'' ,'0','S'),
                                                     ('Pedidos'   ,'Código Produto'       ,'PRO_CPRO'  ,'' ,'1','S'),
                                                     ('Pedidos'   ,'Descrição Produto'    ,'PRO_DPRO'  ,'' ,'0','S'),
                                                     ('Pedidos'   ,'Dt. Pedido'           ,'ROM_DROM'  ,'' ,'' ,'D'),
                                                     ('Pedidos'   ,'Dt. Nota Fiscal'      ,'ROM_DNFS'  ,'' ,'' ,'D'),
                                                     ('Pedidos'   ,'Dt. Separação'        ,'ROM_DROM'  ,'' ,'' ,'D'),
                                                     ('Pedidos'   ,'Dt. Baixa'            ,'ROM_DBAI'  ,'' ,'' ,'D'),
                                                     ('Pedidos'   ,'Dt. Cancelamento'     ,'ROM_DCAN'  ,'' ,'' ,'D'));

aTiposPrecos: Array[00..07,00..01] of String = (('ATACADO - NORMAL'        ,'0'),
                                                ('ATACADO - PROMOÇÃO'      ,'1'),
                                                ('VAREJO - NORMAL'         ,'2'),
                                                ('VAREJO - PROMOÇÃO'       ,'3'),
                                                ('REPRESENTAÇÃO - NORMAL'  ,'4'),
                                                ('REPRESENTAÇÃO - PROMOÇÃO','5'),
                                                ('COMPRAS'                 ,'6'),
                                                ('CUSTO'                   ,'7'));

aAlfabeto: Array[00..35,00..01] of String = (('A','0'),
                                             ('B','1'),
                                             ('C','2'),
                                             ('D','3'),
                                             ('E','4'),
                                             ('F','5'),
                                             ('G','6'),
                                             ('H','7'),
                                             ('I','8'),
                                             ('J','9'),
                                             ('K','10'),
                                             ('L','11'),
                                             ('M','12'),
                                             ('N','13'),
                                             ('O','14'),
                                             ('P','15'),
                                             ('Q','16'),
                                             ('R','17'),
                                             ('S','18'),
                                             ('T','19'),
                                             ('U','20'),
                                             ('V','21'),
                                             ('W','22'),
                                             ('X','23'),
                                             ('Y','24'),
                                             ('Z','25'),
                                             ('0','0'),
                                             ('1','1'),
                                             ('2','2'),
                                             ('3','3'),
                                             ('4','4'),
                                             ('5','5'),
                                             ('6','6'),
                                             ('7','7'),
                                             ('8','8'),
                                             ('9','9'));

  { Criptografia }
  Crypt1 = 52845;
  Crypt2 = 22719;

  { Numérica }
  Numeros = '0123456789';

  { Caracteres Especiais }

  iso    : array[0..93] of string = ( 'Æ',  'Á', 'Â',
                                      'Å',  'Ã', 'Ä',
                                      'Ç', 'Ð',    'É',
                                      'Ê',  'È', 'Í',
                                      'Î',  'Ì', 'Ï',
                                      'Ñ', 'Ô',  'Ò',
                                      'Ø', 'Ö',   'Þ',
                                      'Ú', 'Û',  'Ù',
                                      'Ü',   'Ý', 'á',
                                      'â',  'æ',  'à',
                                      'å',  'ã', 'ä',
                                      'ç', 'é', 'ê',
                                      'è', 'ð',    'ë',
                                      'í', 'î',  'ì',
                                      'ï',   'ñ', 'ó',
                                      'ô',  'ò', 'õ',
                                      'ö',   'ß',  'þ',
                                      'ú', 'û',  'ù',
                                      'ü',   'ý', '¡',
                                      '¢',   '£',   '¥',
                                      '¦',   '§',   '¨',
                                      '©',   '©',   'ª',
                                      '«',   '­',   '®',
                                      '®',    '¯',   '°',
                                      '±',   '²',   '³',
                                      '´',   'µ',   '¶',
                                      '·',   '¸',   '¹',
                                      'º',   '»',   '¼',
                                      '½',   '¾',   '¿',
                                      '×',   'Þ',   '÷',
                                      '&',    '<',     '>',
                                      '"'
                                     );


  aCarLW : Array[01..15] of String = ('á','â','ã','à','é','ê','í','ó','ô','õ','ú','ü','û','ç','ñ');
  aCarUP : Array[01..15] of String = ('Á','Â','Ã','À','É','Ê','Í','Ó','Ô','Õ','Ú','Ü','Û','Ç','Ñ');
  aCarEsp: Array[01..40] of String = ('á','à','ã','â','ä','Á','À','Ã','Â','Ä','é','è','ê','É','È','Ê','í','ì','Í','Ì','ó','ò','ö','õ','ô','Ó','Ò','Ö','Õ','Ô','ú','ù','ü','Ú','Ù','Ü','ç','Ç','ñ','Ñ');
  aCarTro: Array[01..40] of String = ('a','a','a','a','a','A','A','A','A','A','e','e','e','E','E','E','i','i','I','I','o','o','o','o','o','O','O','O','O','O','u','u','u','u','u','u','c','C','n','N');
  aCarExt: array[01..47] of string = ('<','>','!','@','#','$','%','¨','&','*','_','+','=','{','}','[',']','?',';',':',',','|','*','"','~','^','´','`',
                                     '¨','æ','Æ','ø','£','Ø','ƒ','ª','º','¿','®','½','¼','ß','µ','þ','ý','Ý','''');

  { de Calendário }
  aSemana  : Array[00..07] of String = ('','Domingo','Segunda Feira','Terça Feira','Quarta Feira','Quinta Feira','Sexta Feira','Sábado');
  aMes     : Array[00..12] of String = ('','Janeiro','Fevereiro'    ,'Março'      ,'Abril'       ,'Maio'        ,'Junho'      ,'Julho',
                                           'Agosto' ,'Setembro'     ,'Outubro'    ,'Novembro'    ,'Dezembro');
  { de Valor Por Extenso }
	aUnidades: Array[01..19] of String = ('Um'    ,'Dois'    ,'Tres'     ,'Quatro'      ,'Cinco'     ,'Seis'      ,'Sete'      ,'Oito'      ,'Nove'   ,
                                        'Dez'   ,'Onze'    ,'Doze'     ,'Treze'       ,'Quatorze'  ,'Quinze'    ,'Dezesseis' ,'Dezessete' ,'Dezoito','Dezenove');
	aDezenas : Array[02..09] of String = ('Vinte' ,'Trinta'  ,'Quarenta' ,'Cinquenta'   ,'Sessenta'  ,'Setenta'   ,'Oitenta'   ,'Noventa'                        );
  aCentenas: Array[01..09] of String = ('Cento' ,'Duzentos','Trezentos','Quatrocentos','Quinhentos','Seiscentos','Setecentos','Oitocentos','Novecentos'        );
	aMilhar  : Array[00..05] of String = ('','Mil','Milhao'  ,'Bilhao'   ,'Trilhao'     ,'Quatrilhao' );
	aMilhares: Array[00..05] of String = ('','Mil','Milhoes' ,'Bilhoes'  ,'Trilhoes'    ,'Quatrilhoes');

  type     aNFe = Array of Array of shortstring;
  function GeraNFe(ide, emit, dest : Array of shortstring; detProd : aNFe;
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

  { Biblioteca de Funções Gerais - Última Versão 13/03/2019 15:07 - oRefresh }
  function oFillAllForm(ASender: TWinControl;ANotNull,ANotEnabled,AEnabled: Boolean): Boolean; STDCall;
  function oTreeGetItem(var Sender: TTreeView; ItemList: TStrings): TTreeNode; STDCall;
  function oTreeFindItem(var Sender: TTreeView; NodeItem: TTreeNode; Name: String): TTreeNode; STDCall;
  function oTreeAddItem(var Sender: TTreeView; ItemList: TStrings; Bookmark: TBookmark; Resort: Boolean): TTreeNode; STDCall;
  function oREPZero(ATexto,ATexto2: String; nInt,nTam: Integer): String; STDCall;
  function oREPAcentos(ATexto: String): String; STDCall;
  function oREPMemoEsp(ATexto: String): String; STDCall;
  function oDELCharEsp(ATexto: String): String; STDCall;
  function oREPApostrofos(ATexto: String;ASQLSelect: Boolean = False): String; STDCall;
  function oLowerCase(ATexto: String): String; STDCall;
  function oUpperCase(ATexto: String): String; STDCall;
  function oPrimeiraLetraMaiuscula(ATexto: String): String; STDCall;
  function oREPTXT(ATexto: String): String; STDCall;
  function oTXTMemo(ATexto: String; Largura: Integer):TStringList; STDCall;
  function oTXTBreakApart(BaseString,BreakString: String; StringList: TStringList): TStringList; STDCall;
  function oTryStrToDate(AValue: String): Variant; STDCall;
  function oRETDia(Data:TDateTime): Integer; STDCall;
  function oRETMes(Data:TDateTime): Integer; STDCall;
  function oRETAno(Data:TDateTime): Integer; STDCall;
  function oRETDataExtenso(Data : TDate): String; STDCall;
  function oRETDataBetWeen(Data: TDate;Dia: Integer;SouE: String): TDate; STDCall;
  function oRETMesExtenso(Data : TDate): String; STDCall;
  function oRETValorExtenso(Valor: Real) : String; STDCall;
  function oPosCount(const ASubTexto: string; ATexto: string): Integer; STDCall;

  function oCNPJ(ATexto: String): Boolean; STDCall;
  function oCNPJ_Mask(ATexto: String): String; STDCall;

  function oCPF(ATexto: String): Boolean; STDCall;
  function oCPF_Mask(ATexto: String): String; STDCall;

  function oCNPJouCPF(ATexto: String): Boolean; STDCall;
  function oCNPJouCPF_Mask(ATexto: String): String; STDCall;

  function oDDD_Mask(ATexto: String): String; STDCall;
  function oTEL_Mask(ATexto: String): String; STDCall;
  function oCEP_Mask(ATexto: String): String; STDCall;

  function oEMail(ATexto: String): Boolean; STDCall;
  function oBarCode(ARECDefault: TRECDefault): String; STDCall;
  function oRETEAN13(ABarCode: String): String; STDCall;
  function oRETComposicao(AComposicao: String; ATamMaxLin: Word = 55): String; STDCall;
  function oRETQComposicao(AComposicao: String;AQTPos: Word): String; STDCall;
  function oEncrypt(ATexto: String; Key: Word): String; STDCall;
  function oDecrypt(ATexto: String; Key: Word): String; STDCall;
  function oDecimalCount(AValor: Extended): Integer; STDCall;
  function oDecimalDelete(AValor: Extended): Real; STDCall;
  function oTruncValor(AValor: Double; ADigitos: Integer): Double; STDCall;
  function oTrimValor(AValor: String;AReturning: TReturning = lrVariant): Variant; STDCall;
  function oFloatToText(AValor: Extended; APrecisao,ADigitos: Word): String; STDCall;
  function oCurrToText(AValor: Currency; APrecisao,ADigitos: Word): String; STDCall;
  function oTextToValor(AValor: Variant; ADigitos: Word = 2;AXmlFormat: Boolean = False): Variant; STDCall;
  function oEscolha(AMensagem, ATitulo, ABTNYES, ABTNNO: String): TModalResult; STDCall;
  function oAviso(AHandle: Integer; AMensagem: String): Integer; STDCall;
  function oErro(AHandle: Integer; AMensagem: String): Integer; STDCall;
  function oYesNo(AHandle: Integer; AMensagem: String): Integer; STDCall;
  function oOkCancel(AHandle: Integer; AMensagem: String): Integer; STDCall;
  function oYesNoCancel(AHandle: Integer; AMensagem: String): Integer; STDCall;
  function oBWinMemory(WndTit : String): Boolean ; STDCall;
  function oFileExec(Arquivo: String;Estado: Integer):Cardinal; STDCall;
  function oRETNumero(ATexto: String): String ; STDCall;
  function oEditNumero(Key: Char; ATexto: String = ''; ADigitos: Boolean = False): Char; STDCall;
  function oBSONumero(ATexto: String): Boolean; STDCall;
  function oRETCodigo(ATexto: String): String ; STDCall;
  function oRETRegiao(AUf,ACep: String): String ; STDCall;
  function oRETXYPoint(var AControl: TObject): TPoint; STDCall;
  function oPesquisaPerfil(APerfil,ACampo: String): String ; STDCall;
  function oTdxDBGrid_ColumnWidth(AdxDBGrid: TdxDBGrid): Word; STDCall;
  function oRETTiposPrecos(ATipoPreco: String): Word; STDCall;
  function oFBException(AMensagem: String): String; STDCall;
  function oRETFileSize(const AFileName: String): LongInt; STDCall;
  function oGetPCNome: String; STDCall;
  function oGetLinha(AValue: String;ADelimitador: String = ';'): String; STDCall;
  function oUTF8ToStr(const AValue: AnsiString): WideString; STDCall;
  function oStrToUTF8(const AValue: WideString): AnsiString; STDCall;
  function oStrZero(nInt,nTam: Integer): String; STDCall;
  function oStrTran(InString : String; Search: String; New: String): String; STDCall;
  function oStrFormat(AValue,ACaracter: String; Size: Word; Local: TAlign): String; STDCall;
  function oPadr(AString: String; AQuant: Integer): String; STDCall;
  function oLoadJPG(ACampo: TField; AImagem: TPicture;APAD: Boolean = True): LongInt; STDCall;
  function _oLoadJPG(FIMG_ID,FIMG_PAD: TField; AIMG_PAD: TObject;AIMG_PAD_SHOW: Boolean = True): String; STDCall;
  function oLoadBMP(ACampo: TField; AImagem: TPicture): LongInt; STDCall;
  function oNullIF(AValue: Variant): Variant; STDCall;
  function oCoalesce(AVLPK: Variant; AVLFK: Variant): Variant; STDCall;
  function oEmpty(AValue: Variant): Boolean; STDCall;
  function oLast(ASQLConsulta: TIBSQL): Integer; STDCAll;

  function oLoadStream(AImagem: TPicture): TMemoryStream; STDCall;


  { Biblioteca de procedures - Última Versão 21/09/2017 09:42 }
  procedure oTreeDeleteItem(var Sender: TTreeView; ItemList: TStrings; Level: Integer); STDCall;

  procedure oOdatabase(Adatabase: TIBdatabase;AWarning: TWarning = lwNone;Adatabasename: String = ''); STDCall;
  procedure oRdatabase(Adatabase: TIBdatabase;AWarning: TWarning = lwNone;Adatabasename: String = ''); STDCall;
  procedure oCdatabase(Adatabase: TIBdatabase;AWarning: TWarning = lwNone;Adatabasename: String = ''); STDCall;

  procedure oFirst(ASQLConsulta: TIBSQL); STDCAll;
  procedure oState(AIBCustomDataSet: TIBCustomDataSet; ASpeedBar: TSpeedBar); STDCall;
  procedure oRefresh(AIBCustomDataSet: TIBCustomDataSet;ACommit: Boolean = True;AInsertValue: String = ''); STDCAll;
  procedure oAppend(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem: TSpeedItem); STDCall;
  procedure oEdit(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem: TSpeedItem); STDCall;
  procedure oDelete(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem: TSpeedItem); STDCall;
  procedure oPost(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem: TSpeedItem); STDCall;
  procedure oCancel(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem,ABTNSaida: TSpeedItem); STDCall;

  procedure oGridOptionsEdit(AdxDBGrid: TdxDBGrid; AEditing: Boolean); STDCall;

  procedure oSTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltCommit         ;ADefaultAction: TDefaultAction = laNone)              ; STDCall;
  procedure oOTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltRead_Committed ;ADefaultAction: TDefaultAction = laNone)              ; STDCall;
  procedure oRTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltCommit         ;ADefaultAction: TDefaultAction = laOpenEnableControls); STDCall;
  procedure oCTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltCommit         ;ADefaultAction: TDefaultAction = laClose)             ; STDCall;
  procedure oFTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltCommit         ;ADefaultAction: TDefaultAction = laClose)             ; STDCall;

  procedure oFileCopy(ArqEnt,ArqSai: String); STDCall;
  procedure oDirectoryDel(Pasta: String); STDCall;
  procedure oRETFormatBancos(var Sender: TObject); STDCall;
  procedure oFormatValorEnter(var Sender: TObject); STDCall;
  procedure oFormatValorKeyDown(var Sender: TObject; var Key: Word); STDCall;
  procedure oFormatValorKeyPress(var Sender: TObject; var Key: Char); STDCall;
  procedure oFormatValor(var Sender: TObject); STDCall;
  procedure oRETRateio(var ARECPrincipal: TRECPrincipal;ADigitos: Word = 2); STDCall;
  procedure oFillEdicao(var Sender: TIBQuery); STDCall;

  procedure oException(ASender: TWinControl;AMensagem: String;ATitulo: String = ''); STDCall;
  procedure oExceptionFocus(ASender: TWinControl); STDCall;
  procedure oLockWindowUpdate(AIBCustomDataSet: TIBCustomDataSet = Nil); STDCall;
  procedure oUnLockWindowUpdate(AIBCustomDataSet: TIBCustomDataSet = Nil); STDCall;

  procedure oReportPageHeader (AReport: TQuickRep;var ARECRelatorios: TRECRelatorios); STDCall;
  procedure oReportPageFooter (AReport: TQuickRep;var ARECRelatorios: TRECRelatorios); STDCall;
  procedure oReportVencimentos(AReport: TQuickRep;var ARECRelatorios: TRECRelatorios); STDCall;

  procedure oRegister_Export; STDCall;
  procedure oRegister_Export_Usuario; STDCall;
  procedure oRegister_Import_Usuario(var ARECUSuarios: TRECUsuarios); STDCall;
  procedure oRegister_DEL_Email; STDCall;
  procedure oRegister_UPD_SizeFont(ACount: Word); STDCall;

  procedure oScrollMemo(AMemo: TdxMemo; ADirection: Integer); STDCall;

  procedure oRegEvent(var ARECDefault: TRECDefault; AEEvent: TIBEvents); STDCall;
  procedure oExecEvent(var ARECDefault: TRECDefault; AIBCustomDataSet: TIBCustomDataSet); STDCall;
  procedure oExecResize(ADBGrid: TdxDBGrid); STDCall;

  procedure oIRECDefault(var ARECDefault: TRECDefault); STDCall;
  procedure oFRECDefault(var ARECDefault: TRECDefault); STDCall;

  procedure oIRECPedidos(var ARECPedido: TRECPEdidos; ADefaultAction: TDefaultAction = laDefault); STDCall;
  procedure oFRECPedidos(var ARECPedido: TRECPEdidos); STDCall;

  procedure oIRECEdicao(var ARECEdicao: TRECEdicao; ADefaultAction: TDefaultAction = laDefault); STDCall;
  procedure oFRECEdicao(var ARECEdicao: TRECEdicao); STDCall;

  procedure oIRECProdutos(var ARECProduto: TRECProdutos); STDCall;
  procedure oFRECProdutos(var ARECProduto: TRECProdutos); STDCall;

  procedure oIRECRelatorios(var ARECRelatorio: TRECRelatorios); STDCall;
  procedure oFRECRelatorios(var ARECRelatorio: TRECRelatorios); STDCall;

  procedure oIRECEnderecos(var ARECEndereco: TRECEnderecos); STDCall;
  procedure oFRECEnderecos(var ARECEndereco: TRECEnderecos); STDCall;

  procedure oIRECCadastros(var ARECCadastro: TRECCadastros); STDCall;
  procedure oFRECCadastros(var ARECCadastro: TRECCadastros); STDCall;

  procedure oCAdobe; STDCall;

  procedure oCMDIChild; STDCall;
  function  oISMDIChild: Boolean; STDCall;

  { Pedidos }
  procedure oSP_PED_VEN_CAB(var ARECPedido: TRECPedidos); STDCall;
  procedure oSP_PED_VEN_ITE(var ARECFKPedido: TRECPedidos); STDCall;

  { Romaneios }
  procedure oSP_ROM_CAB(var ARECSP_ROM_CAB: TRECPedidos); STDCall;
  procedure oSP_ROM_ITE(var ARECSP_ROM_ITE: TRECProdutos); STDCall;

  { Estoque }
  procedure oSP_CAD_PRO_EST_RPK(var ARECEdicao: TRECEdicao); STDCall;
  procedure oSP_CAD_PRO_EST_RFK(var ARECEdicao: TRECEdicao); STDCall;
  procedure oSP_CAD_PRO_EST_SEP(var ARECEdicao: TRECEdicao); STDCall;

  procedure oSP_CAD_PRO_EST_RES(var ARECEstoque: TRECPedidos); STDCall;
  procedure oSP_CAD_PRO_EST_UPD(ATIBSQL: TIBSQL;ATabela: String;AIDEP: Word;AIDPK: Variant;FIDEP: String = 'IDEP';FIDPK: String = 'IDPK';FIDCP: String = 'IDCP');
  procedure oSP_CAD_PRO_EST_LAN(ATIBSQL: TIBSQL;AIDEP,AIDCP: String); STDCall;
  procedure oExecEstoque(ATEdicao: TIBTransaction;ASQLEdicao: TIBSQL;AIDCP: Array Of String); STDCall;

  { Separação de Pedidos com código repetido}
  procedure oPED_SEP_DUP(ATConsulta: TIBTransaction); STDCall;

var
  RECUsuarios      : TRECUsuarios;
  RECParametros    : TRECParametros;
  SLPrincipal      : TStringList;
  aNumeros         : Array[0..10] of Integer;
  aPesquisa        : Array of Array of String;
  sExtensoParcial  : String;
  sExtensoTotal    : String;
  Delimitador      : Integer;
  ALockWindowUpdate: LongBool;

  _Form: TStringList = Nil;

implementation

uses bDados;

{ Inicializa TRecord Default - Principal }
(*************************************************************)
procedure oIRECDefault(var ARECDefault: TRECDefault); STDCall;
(*************************************************************)
begin
  Initialize(ARECDefault);
  FillChar  (ARECDefault,SizeOf(ARECDefault),0);

  with ARECDefault do
  begin
     ID   := '0';
     IDEP := RECParametros.ID;
     
     IDPK := '0';
     IDFK := '0';

     IDAK := '0';
     IDEK := '0';

     IDEV := '0';
     CDEV := '0';

     { Pesquisa }
     PSQValue := '0' ;
     PSQField := 'ID';

     PSQDTField := EmptyStr;
     PSQDTINI   := 0;
     PSQDTFIM   := 0;

     { Motivos e Justificativas }
     Justificativa := TStringList.Create;
     Justificativa.Clear;
  end;
end;

{ Finaliza TRecord Default - Principal }
(*************************************************************)
procedure oFRECDefault(var ARECDefault: TRECDefault); STDCall;
(*************************************************************)
begin
  with ARECDefault do
  begin
    { Motivos e Justificativas }
    if Justificativa <> Nil then
       FreeAndNil(Justificativa);

    { IBX }
    if ASQLConsulta <> Nil  then
       ASQLConsulta := Nil;

    if ASQLEdicao <> Nil  then
       ASQLEdicao := Nil;
  end;
  
  Finalize(ARECDefault);
  FillChar(ARECDefault,SizeOf(ARECDefault),0);
end;

{ Inicializa TRecord de Pedidos }
(*******************************************************************************************************)
procedure oIRECPedidos(var ARECPedido: TRECPEdidos; ADefaultAction: TDefaultAction = laDefault); STDCall;
(*******************************************************************************************************)
begin
  Initialize(ARECPedido);
  FillChar  (ARECPedido,SizeOf(ARECPedido),0);

  with ARECPedido do
  begin
    { Cadastro }
    ID   := '0';
    IDEP := RECParametros.Id;
    IDCA := RECusuarios.Id;

    { Cabeçalho }
    IDPK := '0';
    DTPK := IFThen(ADefaultAction = laDefault,RECParametros.DTSERVER,0);

    { Itens }
    IDFK := '0';
    ITEM := '0';

    { Pedidos }
    IDPD := '0'; { Usuário }
    CDPD := '0'; { Número }
    TPPD := '0'; { Tipo }
    CDRO := '0'; { Romaneios }
    CDBX := '0'; { Baixa }

    { Nota Fiscal }
    IDNF := '0'; { Usuário }
    CDNF := '0'; { Número }
    TPNF := '0'; { Tipo }

    { Destinatário }
    CDCD := '0';
    IDCD := IFThen(ADefaultAction = laDefault,RECParametros.IDCL_PAD,'0');
    DECD := IFThen(ADefaultAction = laDefault,RECParametros.DECL_PAD,EmptyStr);

    LOG_NU   := '0'; { Código CEP }
    ZFM_CENQ := '0';

    UF := IFThen(ADefaultAction = laDefault,RECParametros.SGUF,EmptyStr);

    CPAIS := '1058';
    XPAIS := 'BRASIL';

    { Vendedores / Compradores }
    IDCV := IFThen(ADefaultAction = laDefault,IFThen(RECUsuarios.Grupo = 'VEN',RECUsuarios.Id   ,RECParametros.IDCV_PAD),0); { Interno }
    DECV := IFThen(ADefaultAction = laDefault,IFThen(RECUsuarios.Grupo = 'VEN',RECUsuarios.Login,RECParametros.DECR_PAD),EmptyStr);
    IDCR := IFThen(ADefaultAction = laDefault,RECParametros.IDCR_PAD,'0'); { Externo }
    DECR := IFThen(ADefaultAction = laDefault,RECParametros.DECR_PAD,EmptyStr);
    IDCC := IFThen(ADefaultAction = laDefault,IFThen(RECUsuarios.Comprador,RECUsuarios.Id,'0'),'0'); { Comprador }
    DECC := IFThen(ADefaultAction = laDefault,IFThen(RECUsuarios.Comprador,RECUsuarios.Login,EmptyStr),EmptyStr);

    { Tipo }
    PED_CDPD := IFThen(ADefaultAction = laDefault,RECParametros.PED_CDPD,'0');
    STPD := IFThen(ADefaultAction = laDefault,RECParametros.PED_STPD,EmptyStr);
    FIPD := 'VENDAS'; { Finalidade }
    FAPD := True; { Fatura }

    CDEK := IFThen(ADefaultAction = laDefault,RECParametros.EST_IDTIPO,'0'); { Tipo Estoque }
    CFOP := IFThen(ADefaultAction = laDefault,RECParametros.NFE_CFOPDUF,EmptyStr); { Fiscal }
    FIN_IDEP := '0'; { Financeiro }

    { Cobrança }
    CDCO := IFThen(ADefaultAction = laDefault,RECParametros.PED_CDCO,'0');
    STCO := IFThen(ADefaultAction = laDefault,RECParametros.PED_STCO,EmptyStr);
    TPCO := '1';   { Crédito }
    RECO := 'C 1'; { Referência }
    CDPG := IFThen(ADefaultAction = laDefault,RECParametros.PED_CDPG,'0'); { Prazo }
    DEPG := IFThen(ADefaultAction = laDefault,RECParametros.PED_DEPG,EmptyStr);

    { Fiscal }
    FIS_INDIEDEST := '0';
    FIS_INDFINAL  := '0';
    FIS_CRT       := '0';
    FIS_CREDICMS  := '0';

    { Status }
    PK_CDST := IFThen(ADefaultAction = laDefault,RECParametros.PED_CDST,'0');
    PK_REST := IFThen(ADefaultAction = laDefault,RECParametros.PED_REST,EmptyStr);
    PK_DEST := IFThen(ADefaultAction = laDefault,RECParametros.PED_STFI,EmptyStr);
    CDCX := IFThen(RECParametros.STCX = 'Caixa Aberto',RECParametros.CDCX,'0');

    { Transportadora }
    IDCT := IFThen(ADefaultAction = laDefault,RECParametros.IDCT_PAD,'0');
    DECT := IFThen(ADefaultAction = laDefault,RECParametros.DECT_PAD,EmptyStr);
    MFRT := IFThen(ADefaultAction = laDefault,RECParametros.NFE_MODFRETE,EmptyStr); { Modalidade Frete }

    { Produtos }
    IDCP    := '0';
    CP_IDEP := '0';

    IDAK := '0'; { Artigos }
    IDEK := '0'; { Estoque }

    { Preços }
    VPRC_PAD_ORI := 'R$'; { Moeda }
    VPRC_PAD_REF := 'ATACADO';  { Tabela Referência }
    VPRC_PAD_TAB := 'VPRC_PAD'; { Tabela Campo }

    CF_VPRC_PAD_ORI := '$'; { Moeda }
    CF_VPRC_PAD_REF := 'NACIONAL';  { Tabela Referência }
    CF_VPRC_PAD_TAB := 'CF_VPRC_PAD'; { Tabela Campo }

    { Fiscal }
    ORIG := '0'; { Indústria Brasileira / Produto Importado }

    { Etiquetas }
    CDET := '0';
    CDSP := '0'; { Ordem de Separação }
    IDSP := '0'; { Estoquista }

    { Estoque }
    EST_CDOP := RECParametros.EST_IDOPERACAO; { Operação }
    EST_REOP := RECParametros.EST_REOPERACAO;
    EST_DEOP := RECParametros.EST_DEOPERACAO;

    EST_CDTP := RECParametros.EST_IDTIPO; { Tipo }
    EST_RETP := 'A';
    EST_DETP := RECParametros.EST_DETIPO;

    EST_CDDF := '0'; { Defeitos }

    { Categorizações }
    IDCOL := '0';

    { Status }
    CDST := RECParametros.PED_CDST;
    REST := RECParametros.PED_REST;
    DEST := RECParametros.PED_STFI;

    { Pesquisa }
    FKValue := '';

    { Motivos e Justificativas }
    Justificativa := TStringList.Create;
    Justificativa.Clear;

    { Outros }
    EST_CDI := '0';
    FB_IDG  := '0'; { Generators }
    IDEV := '0';
    FLAG := '0';
  end;
end;

{ Finaliza TRecord de Pedidos }
(*************************************************************)
procedure oFRECPedidos(var ARECPedido: TRECPEdidos); STDCall;
(*************************************************************)
begin
  with ARECPedido do
  begin
    { Motivos e Justificativas }
    if Justificativa <> Nil then
       FreeAndNil(Justificativa);

    if Lista <> Nil then
       FreeAndNil(Lista);

    { Form }
    if AWinControl <> Nil then
       AwinControl := Nil;

    { IBX }
    if ASPEdicao <> Nil then
    begin
      ASPEdicao.Close;
      ASPEdicao := Nil;
    end;

    if AQConsulta <> Nil  then
       AQConsulta := Nil;

    if ASQLConsulta <> Nil  then
       ASQLConsulta := Nil;

    if ASQLEdicao <> Nil  then
       ASQLEdicao := Nil;

    if ASQLFKEdicao <> Nil  then
       ASQLFKEdicao := Nil;
  end;     

  Finalize(ARECPedido);
  FillChar(ARECPedido,SizeOf(ARECPedido),0);
end;

{ Inicializa TRecord de Edição }
(*******************************************************************************************************)
procedure oIRECEdicao(var ARECEdicao: TRECEdicao; ADefaultAction: TDefaultAction = laDefault); STDCall;
(*******************************************************************************************************)
begin
  Initialize(ARECEdicao);
  FillChar  (ARECEdicao,SizeOf(ARECEdicao),0);

  with ARECEdicao do
  begin
    { Cadastro }
    ID   := '0';
    IDEP := RECParametros.ID;
    IDCA := RECUsuarios.ID;
    CDCX := RECParametros.CDCX;

    { Primary }
    IDPK := '0';    { Usuário }
    CDPK := '0';    { Número  }
    TPPK := '0';    { Tipo    }

    { Primary }
    IDFK := '0';    { Usuário }
    CDFK := '0';    { Número  }
    TPFK := '0';    { Tipo    }

    { Expedição }
    IDSP := '0';   { Usuário }
    CDSP := '0';   { OSP - Ordem de Separação }

    { Romaneios }
    IDRO := '0';    { Usuário }
    CDRO := '0';    { Número  }
    TPRO := '0';    { Tipo    }

    { Nota Fiscal }
    IDNF := '0';    { Usuário }
    CDNF := '0';    { Número  }
    TPNF := '0';    { Tipo    }

    { Baixas }
    IDBX := '0';    { Usuário }
    CDBX := '0';    { Número  }

    { Destinatario }
    LGCD := '0';    { Usuário }
    IDCD := '0';    { Código  }
    TPCD := '0';    { Tipo: 0) Cliente 1) Fornecedor 2) Representante 3) Transportadora }

    { Emitente }
    LGCE := '0';    { Usuário }
    IDCE := '0';    { Código  }
    TPCE := '0';    { Tipo: 0) Cliente 1) Fornecedor 2) Representante 3) Transportadora }

    { Endereço Principal }
    LOG_NU   := '0';
    ZFM_CENQ := '0';
    CPAIS    := '0';

    { Vendedores Internos }
    IDCV := '0';    { Código }

    { Vendedores Externos }
    IDCR := '0';    { Código }

    { Compradores }
    IDCC := '0';    { Código }

    { Parâmetros dos Pedidos }
    CDPD := '0';    { Código }

    { Estoque }
    CDEK := '0';    { Tipo   }

    { Financeiro }
    FIN_IDEP := '0';

    { Cobrança }
    CDCO := '0';    { Código }
    TPCO := '0';    { Crédito }
    CDPG := '0';    { Prazo }

    { Fiscal }
    ORIG := '0'; { Indústria Brasileira / Produto Importado }
    FIS_INDIEDEST := '0';
    FIS_INDFINAL  := '0';
    FIS_CRT       := '0';
    FIS_CREDICMS  := '0';

    { Status }
    IDST := '0';    { Usuário }
    CDST := '0';    { Código  }

    { Transportadora }
    IDCT := '0';     { Código }
    MFRT := '0';     { Modalidade Frete }

    { Produtos }
    ITEM    := '0';
    IDCP    := '0';  { Código  }
    CP_IDEP := '0';  { Empresa }
    IDAK    := '0';  { Artigos }
    IDEK    := '0';  { Estoque }

    { Etiquetas }
    CDET := '0';
    CDI  := '0';

    { Operação de Estoque }
    CDOP := '0';

    { Tipo de Estoque }
    CDTP := '0';

    { Categorização }
    COL_ID := '0'; { Coleção }

    { Defeitos }
    IDDF := '0';  { Usuário   }
    CDDF := '0';  { Código    }

    { Generators }
    IDG_FB := '0'; { ID Tabelas }
    IDG_EV := '0'; { Eventos }

    { Outros }
    IDEV := '0'; { Evento }
    FLAG := '0';
  end;  
end;

{ Finaliza TRecord de Edição }
(*************************************************************)
procedure oFRECEdicao(var ARECEdicao: TRECEdicao); STDCall;
(*************************************************************)
begin
  with ARECEdicao do
  begin
    { Motivos e Justificativas }
    if AJustificativa <> Nil then
       FreeAndNil(AJustificativa);

    if ALista <> Nil then
       FreeAndNil(ALista);

    { Form }
    if AWinControl <> Nil then
       AwinControl := Nil;

    { IBX }
    if ASPEdicao <> Nil then
    begin
      ASPEdicao.Close;
      ASPEdicao := Nil;
    end;

    if AQConsulta <> Nil  then
       AQConsulta := Nil;

    if ASQLConsulta <> Nil  then
       ASQLConsulta := Nil;

    if ASQLEdicao <> Nil  then
       ASQLEdicao := Nil;

    if ASQLFKEdicao <> Nil  then
       ASQLFKEdicao := Nil;
  end;

  Finalize(ARECEdicao);
  FillChar(ARECEdicao,SizeOf(ARECEdicao),0);
end;

{ Inicializa TRecord dos Itens do Pedido }
(*****************************************************************)
procedure oIRECProdutos(var ARECProduto: TRECProdutos); STDCall;
(*****************************************************************)
begin
  Initialize(ARECProduto);
  FillChar  (ARECProduto,SizeOf(ARECProduto),0);

  with ARECProduto do
  begin
    { Cadastro }
    IDEP := RECParametros.Id;
    IDCA := RECusuarios.Id;

    { Pedido }
    IDPK := '0';

    { Destinatário }
    IDCD := '0';

    { Vendedores / Compradores }
    IDCV := IFThen(RECUsuarios.Grupo = 'VEN',RECUsuarios.Id,'0'); { Interno }
    IDCR := '0'; { Externo }
    IDCC := '0'; { Comprador }

    { Tipo }
    CDPD := '0';
    FIPD := 'VENDAS'; { Finalidade }

    { Cobrança }
    CDCO := '0';
    TPCO := '1'; { Crédito }
    CDPG := '1'; { Prazo }

    { Status }
    CDST := RECParametros.PED_CDST;
    REST := RECParametros.PED_REST;
    DEST := RECParametros.PED_STFI;
    CDCX := IFThen(RECParametros.STCX = 'Caixa Aberto',RECParametros.CDCX,'0');

    { Itens }
    IDFK := '0';
    ITEM := '0';

    { Produtos }
    IDCP    := '0';
    CP_IDEP := '0';

    IDAK := '0'; { Artigos }
    IDEK := '0'; { Estoque }

    { Preços }
    RPPD := 'ATACADO';
    VPPD := 'VPRC_PAD'; { Tabela }
    MPPD := 'R$'; { Origem Moeda }

    { Fiscal }
    ORIG := '0'; { Indústria Brasileira / Produto Importado }

    { Etiquetas }
    CDET := '0';
    CDSP := '0'; { Ordem de Separação }
    IDSP := '0'; { Estoquista }

    { Estoque }
    CDOP := RECParametros.EST_IDOPERACAO; { Operação }
    REOP := RECParametros.EST_REOPERACAO;
    CDTP := RECParametros.EST_IDTIPO; { Tipo }

    { Defeitos }
    IDDF := '0';
    CDDF := '0';

    { Pesquisa }
    FKValue := EmptyStr;

    { Outros }
    IDEV := '0';
    FLAG := '0';
  end;
end;

{ Finaliza TRecord dos Itens do Pedido }
(***************************************************************)
procedure oFRECProdutos(var ARECProduto: TRECProdutos); STDCall;
(***************************************************************)
begin
  with ARECProduto do
  begin
    { Form }
    if AWinControl <> Nil then
       AwinControl := Nil;

    { IBX }
    if ASPEdicao <> Nil then
    begin
      ASPEdicao.Close;
      ASPEdicao := Nil;
    end;  

    if AQConsulta <> Nil  then
       AQConsulta := Nil;

    if ASQLConsulta <> Nil  then
       ASQLConsulta := Nil;

    if ASQLEdicao <> Nil  then
       ASQLEdicao := Nil;

    if ASQLFKEdicao <> Nil  then
       ASQLFKEdicao := Nil;
  end;

  Finalize(ARECProduto);
  FillChar(ARECProduto,SizeOf(ARECProduto),0);
end;

{ Inicializa TRecord de Relatórios }
(********************************************************************)
procedure oIRECRelatorios(var ARECRelatorio: TRECRelatorios); STDCall;
(********************************************************************)
begin
  Initialize(ARECRelatorio);
  FillChar  (ARECRelatorio,SizeOf(ARECRelatorio),0);

  with ARECRelatorio do
  begin
    Id   := '0';
    IDEP := RECParametros.Id;
    DEEP := RECParametros.FANTASIA;

    Tipo   := 'TODOS';
    Status := 'TODOS';

    IEDataText1 := RECParametros.DTMES_INI;
    IEDataText2 := RECParametros.DTMES_FIM;

    PEC1CodigoText := 'TODOS';
    PEC2CodigoText := 'TODOS';

    PEC1ConsultaText := 'TODOS';
    PEC2ConsultaText := 'TODOS';
    PEC3ConsultaText := 'TODOS';
    PEC4ConsultaText := 'TODOS';

    IEC1ConsultaWhere := '=';
    IEC2ConsultaWhere := '=';
    IEC3ConsultaWhere := '=';
    IEC4ConsultaWhere := '=';

    IEC1ConsultaCaption := 'Selecionar tipo de consulta';
    IEC2ConsultaCaption := 'Selecionar tipo de consulta';
    IEC3ConsultaCaption := 'Selecionar tipo de consulta';
    IEC4ConsultaCaption := 'Selecionar tipo de consulta';

    IEC1ConsultaField := 'Selecionar tipo de consulta';
    IEC2ConsultaField := 'Selecionar tipo de consulta';
    IEC3ConsultaField := 'Selecionar tipo de consulta';
    IEC4ConsultaField := 'Selecionar tipo de consulta';

    PrintTAG  := 0;
    PrintName := 'Relatórios';
  end;
end;

{ Finaliza TRecord de Relatorios }
(********************************************************************)
procedure oFRECRelatorios(var ARECRelatorio: TRECRelatorios); STDCall;
(********************************************************************)
begin
  with ARECRelatorio do
  begin
    { IBX }
    if ATConsulta <> Nil then
       ATConsulta := Nil;

    if ASQLConsulta <> Nil  then
       ASQLConsulta := Nil;

    if AQRImage <> Nil then
       AQRImage.Free;

    if AQRLabel <> Nil then
       AQRLabel.Free;
  end;

  Finalize(ARECRelatorio);
  FillChar(ARECRelatorio,SizeOf(ARECRelatorio),0);
end;

{ Inicializa TRecord de Cadastros }
(*******************************************************************)
procedure oIRECCadastros(var ARECCadastro: TRECCadastros); STDCall;
(*******************************************************************)
begin
  Initialize(ARECCadastro);
  FillChar  (ARECCadastro,SizeOf(ARECCadastro),0);

  with ARECCadastro do
  begin
    IDEP     := RECParametros.Id;
    FIN_IDEP := RECParametros.Id;

    IDCD := '0';
    CDCD := '0';

    IDED := RECUsuarios.Id;
    IDCA := RECUsuarios.Id;
    IDED := '0';

    IDST := RECUsuarios.Id;
    CDST := RECParametros.STA_IDCAD;
    REST := RECParametros.STA_RECAD;

    IDCV := '0';
    IDCR := '0';
    IDCT := '0';

    CDPG := RECParametros.PED_CDPG;
    DEPG := RECParametros.PED_DEPG;

    { Fiscal }
    FIS_INDIEDEST := '0';
    FIS_INDFINAL  := '0';
    FIS_CRT       := '0';
    FIS_CREDICMS  := '0';

    { Logradouro }
    LOG_NU     := '0';
    COB_LOG_NU := '0';
    ENT_LOG_NU := '0';
    RET_LOG_NU := '0';
    ZFM_CENQ   := '0';

    CPAIS := '1058';
    XPAIS := 'BRASIL';
  end;
end;

{ Finaliza TRecord de Cadastros }
(************************************************************)
procedure oFRECCadastros(var ARECCadastro: TRECCadastros); STDCall;
(************************************************************)
begin
  if ARECCadastro.AIBCustomDataSet <> Nil then if ARECCadastro.AIBCustomDataSet.State <> dsInactive then ARECCadastro.AIBCustomDataSet.Close;
  
  Finalize(ARECCadastro);
  FillChar(ARECCadastro,SizeOf(ARECCadastro),0);
end;

{ Inicializa TRecord de Enderecos }
(*******************************************************************)
procedure oIRECEnderecos(var ARECEndereco: TRECEnderecos); STDCall;
(*******************************************************************)
begin
  Initialize(ARECEndereco);
  FillChar  (ARECEndereco,SizeOf(ARECEndereco),0);

  ARECEndereco.Id := '0';
end;

{ Finaliza TRecord de Enderecos }
(************************************************************)
procedure oFRECEnderecos(var ARECEndereco: TRECEnderecos); STDCall;
(************************************************************)
begin
  Finalize(ARECEndereco);
  FillChar(ARECEndereco,SizeOf(ARECEndereco),0);
end;

{ Executa Evento }
(*****************************************************************************)
procedure oRegEvent(var ARECDefault: TRECDefault; AEEvent: TIBEvents); STDCall;
(*****************************************************************************)
begin
  if ARECDefault.Event <> EmptyStr then
     with AEEvent do
          try
            UnregisterEvents;
            Events.Add(oREPZero(ARECDefault.Event,'_',RECParametros.Id,3));
            RegisterEvents;
          except
            on E: Exception do
                  oErro(Application.Handle,'Falha ao tentar registrar evento !'     +#13+
                                           'Evento: '     + ARECDefault.Event + '.' +#13+#13+
                                           'Error Code: ' + E.Message);
          end;
end;

{ Executa Evento }
(**********************************************************************************************)
procedure oExecEvent(var ARECDefault: TRECDefault; AIBCustomDataSet: TIBCustomDataSet); STDCall;
(**********************************************************************************************)
var
  AForm: TForm;
begin
  ARECDefault.Selected := False;
  ARECDefault.Edited   := False;

  { Descobre quem é o pai da criança }
  AForm := Nil;
  if AIBCustomDataSet.Owner is TForm then
  AForm := AIBCustomDataSet.Owner as TForm;

  if AForm <> Nil then
     with AForm do
     begin
       if ARECDefault.Event <> EmptyStr then
          if (TIBTransaction(FindComponent('TEvent')) <> Nil) and (TIBEvents(FindComponent('EEvent')) <> Nil) and (TIBStoredProc(FindComponent('SPEvent')) <> Nil) then
              if TIBEvents(FindComponent('EEvent')).Registered then
                 try
                   oOTransact(TIBTransaction(FindComponent('TEvent')));

                   TIBStoredProc(FindComponent('SPEvent')).Close;
                   TIBStoredProc(FindComponent('SPEvent')).StoredProcName  := 'SP_EVENT';
                   TIBStoredProc(FindComponent('SPEvent')).Prepare;
                   TIBStoredProc(FindComponent('SPEvent')).Params[0].Value := ARECDefault.Event;
                   TIBStoredProc(FindComponent('SPEvent')).ExecProc;

                   oCTransact(TIBTransaction(FindComponent('TEvent')));
                 except
                   on E: Exception do
                   begin
                     oCTransact(TIBTransaction(FindComponent('TEvent')),ltRollback);
                     oRefresh(AIBCustomDataSet,False);

                     oException(Nil,'Falha ao tentar registrar evento !'  +#13+#13+
                                    'Evento: '    +ARECDefault.Event+'.'+#13+
                                    'Form: '      +AForm.Name+'.'         +#13+
                                    'Error Code: '+E.Message+'.');
                   end;
                 end;

       try
         oRefresh(AIBCustomDataSet);
         ARECDefault.Edited := True;
       except
         on E: Exception do
         begin
           oCTransact(TIBTransaction(FindComponent('TEvent')),ltRollback);
           oRefresh(AIBCustomDataSet,False);

           oException(Nil,'Falha ao tentar salvar registro !'+#13+#13+
                          'Form: '      +AForm.Name+'.'      +#13+
                          'Error Code: '+E.Message+'.');
         end;
       end;
     end;
end;

(*************************************************)
procedure oExecResize(ADBGrid: TdxDBGrid); STDCall;
(*************************************************)
var
  AForm: TForm;
begin
  { Descobre quem é o pai da criança }
  AForm := Nil;
  if ADBGrid.Owner is TForm then
  AForm := ADBGrid.Owner as TForm;

  if AForm <> Nil then
     if Screen.Height <= 900 then
        with AForm do
        begin
          AForm.Font.Size := 8;
          
          ADBGrid.Font.Size        := 8;
          ADBGrid.BandFont.Size    := 9;
          ADBGrid.HeaderFont.Size  := 9;
          ADBGrid.PreviewFont.Size := 7;

          Application.ProcessMessages;
        end;
end;




{ Define a rolagem do texto }
(****************************************************************)
procedure oScrollMemo(AMemo: TdxMemo; ADirection: Integer); STDCall;
(****************************************************************)
var
  ScrollMessage: TWMVScroll;
  I: Integer;
  Form: TForm;
begin
  { Descobre quem é o pai da criança }
  Form := Nil;
  if AMemo.Owner is TForm then
  Form := AMemo.Owner as TForm;

  if Form <> Nil then
     with Form do
     begin
       ScrollMessage.Msg := WM_VSCROLL;
       AMemo.Lines.BeginUpdate;
       try
         for I := 0 to AMemo.Lines.Count do
         begin
          ScrollMessage.ScrollCode := ADirection;
          ScrollMessage.Pos := 0;
          AMemo.Dispatch(ScrollMessage);
         end;
       finally
         AMemo.Lines.EndUpdate;
         Application.ProcessMessages;
       end;
     end;
end;

{ Ativa trava de repaginação }
(*****************************************************************************)
procedure oLockWindowUpdate(AIBCustomDataSet: TIBCustomDataSet = Nil); STDCall;
(*****************************************************************************)
var
  i: Word;
begin
  if Application.MainForm <> Nil then
     Application.MainForm.Cursor := crAppStart;

  if AIBCustomDataSet <> Nil then
     AIBCustomDataSet.DisableControls;

  for i := 1 to 5 do
      if not ALockWindowUpdate then
             ALockWindowUpdate := LockWindowUpdate(GetDesktopWindow()) else
             Break;
end;

{ Desativa trava de repaginação }
(*******************************************************************************)
procedure oUnLockWindowUpdate(AIBCustomDataSet: TIBCustomDataSet = Nil); STDCall;
(*******************************************************************************)
var
  i: Word;
begin
  if Application.MainForm <> Nil then
     Application.MainForm.Cursor := crDefault;

  if AIBCustomDataSet <> Nil then
     AIBCustomDataSet.EnableControls;

  for i := 1 to 5 do
      if ALockWindowUpdate then
         ALockWindowUpdate := LockWindowUpdate(0) else
         Break;
end;

{ Consisteência dos campos }
(*******************************************************************************************************)
function oFillAllForm(ASender: TWinControl;ANotNull,ANotEnabled,AEnabled: Boolean): Boolean; STDCall;
(*******************************************************************************************************)
var
   aEntrada : Array [0..500] of TControl;
   iLoop    : Integer;
   iIndice  : Integer;
   Objeto   : TWinControl;
   ObjetoAux: TWinControl;
   iWhile   : Integer;
begin
  Result  := False;
  objeto  := ASender;
  iIndice := 0;
  iWhile  := 0;

  for iLoop := 0 to 500 do
  aEntrada[iLoop] := Nil;

  for iLoop := 0 to (ASender.ControlCount - 1) do
  begin
    if (((ASender.Controls[iLoop] is TdxEdit) or
        (ASender.Controls[iLoop] is TdxDBEdit) or
        (ASender.Controls[iLoop] is TdxMaskEdit) or
        (ASender.Controls[iLoop] is TdxDBMaskEdit) or
        (ASender.Controls[iLoop] is TdxMemo) or
        (ASender.Controls[iLoop] is TdxDBMemo) or
        (ASender.Controls[iLoop] is TdxDateEdit) or
        (ASender.Controls[iLoop] is TdxDBDateEdit) or
        (ASender.Controls[iLoop] is TdxButtonEdit) or
        (ASender.Controls[iLoop] is TdxDBButtonEdit) or
        (ASender.Controls[iLoop] is TdxImageEdit) or
        (ASender.Controls[iLoop] is TdxDBImageEdit) or
        (ASender.Controls[iLoop] is TdxSpinEdit) or
        (ASender.Controls[iLoop] is TdxDBSpinEdit) or
        (ASender.Controls[iLoop] is TdxPickEdit) or
        (ASender.Controls[iLoop] is TdxDBPickEdit) or
        (ASender.Controls[iLoop] is TdxTimeEdit) or
        (ASender.Controls[iLoop] is TdxDBTimeEdit) or
        (ASender.Controls[iLoop] is TdxCurrencyEdit) or
        (ASender.Controls[iLoop] is TdxDBCurrencyEdit) or
        (ASender.Controls[iLoop] is TdxPopUpEdit) or
        (ASender.Controls[iLoop] is TdxDBPopUpEdit) or
        (ASender.Controls[iLoop] is TdxLookUpEdit) or
        (ASender.Controls[iLoop] is TdxDBLookUpEdit)) and
        (ASender.Controls[iLoop].HelpContext = 1)) then
    begin
       aEntrada[iIndice] := ASender.Controls[iLoop];
       inc (iIndice);
    end else
    if ((ASender.Controls[iLoop] is TGroupBox) or
        (ASender.Controls[iLoop] is TPanel) or
        (ASender.Controls[iLoop] is TRadioGroup) or
        (ASender.Controls[iLoop] is TdxPageControl) or
        (ASender.Controls[iLoop] is TdxTabSheet)) then
    begin
      if ASender.Controls[iLoop] is TGroupBox then
      Objeto := ASender.Controls[iLoop] as TGroupBox;

      if ASender.Controls[iLoop] is TPanel then
      Objeto := ASender.Controls[iLoop] as TPanel;

      if ASender.Controls[iLoop] is TRadioGroup then
      Objeto := ASender.Controls[iLoop] as TRadioGroup;

      if ASender.Controls[iLoop] is TdxPageControl then
      Objeto := ASender.Controls[iLoop] as TdxPageControl;

      if ASender.Controls[iLoop] is TdxTabSheet then
      Objeto := ASender.Controls[iLoop] as TdxTabSheet;

      oFillAllForm(Objeto,ANotNull,ANotEnabled,AEnabled);
    end;
  end;

  if  iIndice <> 0 then
  for iLoop := 0 to (iIndice - 1) do
  begin
    if not (aEntrada[iLoop] is TRadioGroup) then
    begin
       if ((aEntrada[iLoop] is TdxEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxEdit(aEntrada[iLoop]).Text)) and (TdxEdit(aEntrada[iLoop]).Enabled) and (TdxEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBEdit(aEntrada[iLoop]).Text)) and (TdxDBEdit(aEntrada[iLoop]).Enabled) and (TdxDBEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxMaskEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxMaskEdit(aEntrada[iLoop]).Text)) and (TdxMaskEdit(aEntrada[iLoop]).Enabled) and (TdxMaskEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxMaskEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxMaskEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBMaskEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBMaskEdit(aEntrada[iLoop]).Text)) and (TdxDBMaskEdit(aEntrada[iLoop]).Enabled) and (TdxDBMaskEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBMaskEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBMaskEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxMemo)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxMemo(aEntrada[iLoop]).Text)) and (TdxMemo(aEntrada[iLoop]).Enabled) and (TdxMemo(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxMemo(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxMemo(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBMemo)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBMemo(aEntrada[iLoop]).Text)) and (TdxDBMemo(aEntrada[iLoop]).Enabled) and (TdxDBMemo(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBMemo(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBMemo(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDateEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDateEdit(aEntrada[iLoop]).Text)) and (TdxDateEdit(aEntrada[iLoop]).Enabled) and (TdxDateEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDateEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDateEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBDateEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBDateEdit(aEntrada[iLoop]).Text)) and (TdxDBDateEdit(aEntrada[iLoop]).Enabled) and (TdxDBDateEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBDateEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBDateEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxButtonEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxButtonEdit(aEntrada[iLoop]).Text)) and (TdxButtonEdit(aEntrada[iLoop]).Enabled) and (TdxButtonEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxButtonEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxButtonEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBButtonEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBButtonEdit(aEntrada[iLoop]).Text)) and (TdxDBButtonEdit(aEntrada[iLoop]).Enabled) and (TdxDBButtonEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBButtonEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBButtonEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxImageEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxImageEdit(aEntrada[iLoop]).Text)) and (TdxImageEdit(aEntrada[iLoop]).Enabled) and (TdxImageEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxImageEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxImageEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBImageEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBImageEdit(aEntrada[iLoop]).Text)) and (TdxDBImageEdit(aEntrada[iLoop]).Enabled) and (TdxDBImageEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBImageEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBImageEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxSpinEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxSpinEdit(aEntrada[iLoop]).Text)) and (TdxSpinEdit(aEntrada[iLoop]).Enabled) and (TdxSpinEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxSpinEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxSpinEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBSpinEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBSpinEdit(aEntrada[iLoop]).Text)) and (TdxDBSpinEdit(aEntrada[iLoop]).Enabled)  and (TdxDBSpinEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBSpinEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBSpinEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxPickEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxPickEdit(aEntrada[iLoop]).Text)) and (TdxPickEdit(aEntrada[iLoop]).Enabled) and (TdxPickEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxPickEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxPickEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBPickEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBPickEdit(aEntrada[iLoop]).Text)) and (TdxDBPickEdit(aEntrada[iLoop]).Enabled) and (TdxDBPickEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBPickEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBPickEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxTimeEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxTimeEdit(aEntrada[iLoop]).Text)) and (TdxTimeEdit(aEntrada[iLoop]).Enabled) and (TdxTimeEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxTimeEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxTimeEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBTimeEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBTimeEdit(aEntrada[iLoop]).Text)) and (TdxDBTimeEdit(aEntrada[iLoop]).Enabled) and (TdxDBTimeEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBTimeEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBTimeEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxCurrencyEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxCurrencyEdit(aEntrada[iLoop]).Text)) and (TdxCurrencyEdit(aEntrada[iLoop]).Enabled) and (TdxCurrencyEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxCurrencyEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxCurrencyEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBCurrencyEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBCurrencyEdit(aEntrada[iLoop]).Text)) and (TdxDBCurrencyEdit(aEntrada[iLoop]).Enabled) and (TdxDBCurrencyEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBCurrencyEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBCurrencyEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxPopUpEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxPopUpEdit(aEntrada[iLoop]).Text)) and (TdxPopUpEdit(aEntrada[iLoop]).Enabled) and (TdxPopUpEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxPopUpEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxPopUpEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBPopUpEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBPopUpEdit(aEntrada[iLoop]).Text)) and (TdxDBPopUpEdit(aEntrada[iLoop]).Enabled) and (TdxDBPopUpEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBPopUpEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBPopUpEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxLookUpEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxLookUpEdit(aEntrada[iLoop]).Text)) and (TdxLookUpEdit(aEntrada[iLoop]).Enabled) and (TdxLookUpEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxLookUpEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxLookUpEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBLookUpEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBLookUpEdit(aEntrada[iLoop]).Text)) and (TdxDBLookUpEdit(aEntrada[iLoop]).Enabled) and (TdxDBLookUpEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBLookUpEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBLookUpEdit(aEntrada[iLoop]).Enabled := True;
       end;
    end else
    if (TDBRadioGroup(aEntrada[iLoop]).Itemindex = -1) and
       (TDBRadioGroup(aEntrada[iLoop]).Enabled = True) then
    Result := True;

    if ((Result) and (ANotNull)) then
    begin
      oErro(ASender.handle,GetShortHint(TWinControl(aEntrada[iLoop]).Hint)+#13+'Campo Obrigatório.');
      ObjetoAux := ASender.parent;
      while (ObjetoAux is TPanel) or
            (ObjetoAux is TGroupBox) or
            (ObjetoAux is TRadioGroup) do
      begin
        inc(iWhile);
        ObjetoAux := ASender.Parent;
        if (objeto is TdxTabSheet) or
           (iWhile > 500) then
        Break;
      end;

      if ObjetoAux is TdxTabSheet then
      TdxPageControl(TdxTabSheet(ObjetoAux).Parent).Activepage := TdxTabSheet(ObjetoAux);

      TWinControl(aEntrada[iLoop]).SetFocus;
      Abort;
    end;
  end;
end;

{ Exclui Item }
(********************************************************************************************)
procedure oTreeDeleteItem(var Sender: TTreeView; ItemList: TStrings; Level: Integer); STDCall;
(********************************************************************************************)
var
  Node,Parent: TTreeNode;
begin
  Node := oTreeGetItem(Sender, ItemList);
  while Node.level >= Level do
  begin
    Parent := Node.parent;
    Node.delete;
    if (Parent = Nil) or (Parent.hasChildren) then Break;
    Node := Parent;
  end;
end;

{ Pega o nó da arvore }
(***********************************************************************************)
function oTreeGetItem(var Sender: TTreeView; ItemList: TStrings): TTreeNode; STDCall;
(***********************************************************************************)
begin
  Result := oTreeAddItem(Sender, ItemList, Nil, false);
end;

{ Adiciona Itens }
(*************************************************************************************************************************)
function oTreeAddItem(var Sender: TTreeView; ItemList: TStrings; Bookmark: TBookmark; Resort: Boolean): TTreeNode; STDCall;
(*************************************************************************************************************************)
var
  ThisNode,Node: TTreeNode;
  i: Integer;
begin
  Node := Nil;

  for i := 0 to ItemList.count -1 do
  begin
    ThisNode := oTreeFindItem(Sender, node, ItemList[i]);

    if ThisNode <> Nil then Node := ThisNode else
    begin
      if i < ItemList.count -1 then
      begin
        if i = 0 then
        Node := Sender.items.Add(Node, ItemList[i]) else
        Node := Sender.items.AddChild(Node, ItemList[i]);
      end else
      begin
        if i = 0 then
        Node := Sender.items.AddObject(Node, ItemList[i], Bookmark) else
        Node := Sender.items.AddChildObject(Node, ItemList[i], Bookmark);
      end;

      Node.stateIndex := Node.level + 1;
      if Resort and (Node.parent <> Nil) then
      Node.parent.alphasort;
    end;
  end;

  Result := Node;
end;

{ Pesquisa Itens }
(***************************************************************************************************)
function oTreeFindItem(var Sender: TTreeView; NodeItem: TTreeNode; Name: String): TTreeNode; STDCall;
(***************************************************************************************************)
begin
  if NodeItem =  Nil then
  NodeItem := Sender.Items.GetFirstNode else
  NodeItem := NodeItem.GetFirstChild;

  if (NodeItem <> Nil) and (NodeItem.text <> Name) then
  repeat NodeItem := NodeItem.GetNextSibling;
  until (NodeItem = Nil) or (NodeItem.text = Name);

  Result := NodeItem;
end;

{ ir até o primeiro registro  }
(****************************************)
procedure oFirst(ASQLConsulta: TIBSQL); STDCAll;
(****************************************)
begin
  ASQLConsulta.Close;
  ASQLConsulta.ExecQuery;
end;

{ ir até o último registro  }
(***********************************************)
function oLast(ASQLConsulta: TIBSQL): Integer; STDCAll;
(***********************************************)
begin
  result := 0;
  while not ASQLConsulta.Eof do
  begin
    result := result + 1;
    ASQLConsulta.Next;
  end;
end;

{ Propriedade SpeedBar de Edição }
(**********************************************************************************)
procedure oState(AIBCustomDataSet: TIBCustomDataSet; ASpeedBar: TSpeedBar); STDCall;
(**********************************************************************************)
var
  i: Word;
begin
  if not ALockWindowUpdate then
     if (ASpeedBar.Enabled) and (ASpeedBar.Visible) then
         for i := 0 to ASpeedBar.ItemsCount(0) - 1 do
             if ASpeedBar.Items(0,i).GroupIndex = 0 then
                if ASpeedBar.Items(0,i).Tag <> 9 then { não mexe com quem tá quieto }
                   ASpeedBar.Items(0,i).Enabled := ((AIBCustomDataSet.State = dsBrowse)           and (ASpeedBar.Items(0,i).Tag = 0)) or
                                                   ((AIBCustomDataSet.State = dsBrowse)           and (ASpeedBar.Items(0,i).Tag = 1)) or
                                                   ((AIBCustomDataSet.State in [dsInsert,dsEdit]) and (ASpeedBar.Items(0,i).Tag = 2));
end;

{ Atualiza Registros }
(****************************************************************************************************************)
procedure oRefresh(AIBCustomDataSet: TIBCustomDataSet;ACommit: Boolean = True;AInsertValue: String = ''); STDCall;
(****************************************************************************************************************)
var
  BMRecord: TBookMark;
begin
  if (AIBCustomDataSet <> Nil) and (not ALockWindowUpdate) then
  begin
    BMRecord := Nil;

    if AIBCustomDataSet.State  = dsBrowse then
       if AIBCustomDataSet.RecNo > 0 then
          BMRecord := AIBCustomDataSet.GetBookmark;

    if ACommit then
       oRTransact(AIBCustomDataSet.Transaction,ltRead_Only_Release_Commit) else
       oRTransact(AIBCustomDataSet.Transaction,ltRead_Only_Release_Rollback);

    if AIBCustomdataSet.State = dsInactive then
       AIBCustomdataSet.Open;

    if AIBCustomDataSet.RecNo = 0 then
    begin
      AIBCustomDataSet.FreeBookmark(BMRecord);
      BMRecord := Nil;
    end;

    if AInsertValue <> EmptyStr then
       AIBCustomdataSet.Locate('Descricao',AInsertValue,[]) else
    begin
      if BMRecord <> Nil then
      begin
        AIBCustomDataSet.GotoBookmark(BMRecord);
        AIBCustomDataSet.FreeBookmark(BMRecord);
      end else
      AIBCustomDataSet.Last;
    end;
  end;
end;

{ Append Registros }
(**************************************************************************************************)
procedure oAppend(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem: TSpeedItem); STDCall;
(**************************************************************************************************)
var
  Form: TForm;
begin
  { Descobre quem é o pai da criança }
  Form := Nil;
  if ASpeedItem.Owner is TForm then
  Form := ASpeedItem.Owner as TForm;
  if Form <> Nil then
  with Form do
  if (ASpeedItem.Enabled) and (ASpeedItem.Visible) and (AIBCustomDataSet.State = dsBrowse) then
  begin
    AdxDBGrid.SetFocus;
    AIBCustomDataSet.Append;
  end;
end;

{ Altera Edição Registros }
(************************************************************************************************)
procedure oEdit(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem: TSpeedItem); STDCall;
(************************************************************************************************)
var
  Form: TForm;
begin
  { Descobre quem é o pai da criança }
  Form := Nil;
  if ASpeedItem.Owner is TForm then
  Form := ASpeedItem.Owner as TForm;
  if Form <> Nil then
  with Form do
  if (ASpeedItem.Enabled) and (ASpeedItem.Visible) and (AIBCustomDataSet.State = dsBrowse) and (not AIBCustomDataSet.Fields[0].IsNull) then
  begin
    AdxDBGrid.SetFocus;
    AIBCustomDataSet.Edit;
  end;
end;

{ Delete Registros }
(**************************************************************************************************)
procedure oDelete(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem: TSpeedItem); STDCall;
(**************************************************************************************************)
var
  Form: TForm;
begin
  { Descobre quem é o pai da criança }
  Form := Nil;
  if ASpeedItem.Owner is TForm then
  Form := ASpeedItem.Owner as TForm;
  if Form <> Nil then
  with Form do
  if (ASpeedItem.Enabled) and (ASpeedItem.Visible) and (AIBCustomDataSet.State = dsBrowse) and (not AIBCustomDataSet.Fields[0].IsNull) then
  begin
    AdxDBGrid.SetFocus;
    AIBCustomDataSet.Delete;
  end;
end;

{ Grava Edição Registros }
(************************************************************************************************)
procedure oPost(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem: TSpeedItem); STDCall;
(************************************************************************************************)
var
  Form: TForm;
begin
  { Descobre quem é o pai da criança }
  Form := Nil;
  if ASpeedItem.Owner is TForm then
  Form := ASpeedItem.Owner as TForm;
  if Form <> Nil then
  with Form do
  if (ASpeedItem.Enabled) and (ASpeedItem.Visible) and (AIBCustomDataSet.State in [dsInsert,dsEdit]) then
  begin
    AdxDBGrid.SetFocus;
    AIBCustomDataSet.Post;
  end;
end;

{ Cancela Edição Registros }
(*********************************************************************************************************************)
procedure oCancel(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem,ABTNSaida: TSpeedItem); STDCall;
(*********************************************************************************************************************)
var
  Form: TForm;
begin
  { Descobre quem é o pai da criança }
  Form := Nil;
  if ASpeedItem.Owner is TForm then
  Form := ASpeedItem.Owner as TForm;
  if Form <> Nil then
  with Form do
  if (ASpeedItem.Enabled) and (ASpeedItem.Visible) and (AIBCustomDataSet.State in [dsInsert,dsEdit]) then
  begin
    AdxDBGrid.SetFocus;
    AIBCustomDataSet.Cancel;
  end else
  if ABTNSaida <> Nil then
     ABTNSaida.Click;
end;

{ Habilita ou desabilita Edição automática do Grid }
(***************************************************************************)
procedure oGridOptionsEdit(AdxDBGrid: TdxDBGrid; AEditing: Boolean); STDCall;
(***************************************************************************)
var
  Form: TForm;
begin
  { Descobre quem é o pai da criança }
  Form := Nil;
  if AdxDBGrid.Owner is TForm then
  Form := AdxDBGrid.Owner as TForm;

  if Form <> Nil then
     with Form do
          if AEditing then
          begin
            AdxDBGrid.OptionsBehavior := ([edgoCaseInsensitive,edgoCollapsedReload,edgoDragCollapse ,edgoDragExpand,edgoDragScroll,edgoEditing,edgoEnterShowEditor,
                                           edgoImmediateEditor,edgoSeekDetail     ,edgoShowHourGlass,edgoTabThrough,edgoVertThrough]);
            AdxDBGrid.OptionsView     := ([edgoAutoCalcPreviewLines,edgoBandHeaderWidth,edgoHotTrack,edgoPreview]);
          end else
          begin
            AdxDBGrid.OptionsBehavior := ([edgoAutoSearch     ,edgoAutoSort       ,edgoCaseInsensitive,edgoCollapsedReload,edgoDragCollapse,edgoDragExpand,edgoDragScroll,
                                           edgoEnterShowEditor,edgoImmediateEditor,edgoSeekDetail     ,edgoShowHourGlass  ,edgoTabThrough  ,edgoVertThrough]);
            AdxDBGrid.OptionsView     := ([edgoAutoCalcPreviewLines,edgoBandHeaderWidth,edgoHotTrack,edgoPreview]);
          end;
end;

{ Abre database }
(***********************************************************************************************************)
procedure oOdatabase(Adatabase: TIBdatabase;AWarning: TWarning = lwNone;Adatabasename: String = ''); STDCall;
(***********************************************************************************************************)
begin
  if Adatabase <> Nil then
  begin
    oCdatabase(Adatabase,AWarning,Adatabasename);
    try
      with Adatabase do
      try
        if not oEmpty(Adatabasename) then
        begin
          databasename := '';
          databasename := PChar(Adatabasename);
        end;

        Connected := True;
        RECParametros.DataBaseError := EmptyStr;
      except
        on E: Exception do
        begin
          RECParametros.DataBaseError := 'Erro ao tentar abrir '+databasename+'.'+#13+
                                          Trim(E.Message)+'. '                   +#13+
                                          FormatDateTime('dd/mm/yy hh:mm',Now)   +'.';
        end;
      end;
    finally
      if ((not oEmpty(RECParametros.DataBaseError)) and (AWarning = lwShowWarning)) then
      begin
        oErro(Application.Handle,RECParametros.DataBaseError);
              Application.Terminate;
      end;
    end;
  end;  
end;

{ Re-Abre database }
(***********************************************************************************************************)
procedure oRdatabase(Adatabase: TIBdatabase;AWarning: TWarning = lwNone;Adatabasename: String = ''); STDCall;
(***********************************************************************************************************)
begin
  if Adatabase <> Nil then
  begin
                                                oCdatabase(Adatabase,AWarning,Adatabasename);
    if oEmpty(RECParametros.DataBaseError) then oOdatabase(Adatabase,AWarning,Adatabasename);
  end;
end;

{ Fecha database }
(***********************************************************************************************************)
procedure oCdatabase(Adatabase: TIBdatabase;AWarning: TWarning = lwNone;Adatabasename: String = ''); STDCall;
(***********************************************************************************************************)
var
  i: Word;
begin
  if Adatabase <> Nil then
  try
    with Adatabase do
    try
      if Adatabase.TestConnected then
      begin
        CloseDataSets;

        for i := 0 to Pred(TransactionCount) do
            if Transactions[i].InTransaction then
               Transactions[i].Rollback;

        Connected := False;
        if TestConnected then
           ForceClose;
      end;
    except
      on E: Exception do
      begin
        RECParametros.DataBaseError := 'Erro ao tentar fechar '+databasename+'.'+#13+
                                        Trim(E.Message)+'. '                    +#13+
                                        FormatDateTime('dd/mm/yy hh:mm',Now)    +'.';
      end;
    end;
  finally
    if ((not oEmpty(RECParametros.DataBaseError)) and (AWarning = lwShowWarning)) then
         oException(Nil,RECParametros.DataBaseError);
  end;
end;


{ Seta Controles das Querys }
(********************************************************************************************************************************************************)
procedure oSTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltCommit;ADefaultAction: TDefaultAction = laNone); STDCall;
(********************************************************************************************************************************************************)
var
  Component: TComponent;
  i   : Word;
  Nome: String;
begin
  if  ADefaultTransaction = ltRead_Only then oLockWindowUpdate;
  if (ADefaultTransaction = ltRead_Only_Release) or (ADefaultTransaction = ltRead_Only_Release_Commit) or (ADefaultTransaction = ltRead_Only_Release_Rollback) then oUnLockWindowUpdate;

  if (AIBTransaction <> Nil) and (ADefaultAction <> laNone) then
  begin
         Component := AIBTransaction.Owner;
    with Component do
         for i := 0 to ComponentCount - 1 do
         begin
           if Components[i].ClassType = TIBSQL then
           begin
             Nome := TIBSQL(Components[i]).Name;
             if TIBSQL(Components[i]).Transaction = AIBTransaction then
                Case ADefaultAction of
                     laClose: TIBSQL(Components[i]).Close;
                end;
           end else
           if ((Components[i].ClassType = TIBQuery) or (Components[i].ClassType = TIBDataSet) or (Components[i].ClassType = TIBTable)) then
                if TIBCustomDataSet(Components[i]).Transaction = AIBTransaction then
                begin
                  Nome := TIBCustomDataSet(Components[i]).Name;

                  Case ADefaultAction of
                    laEnableControls:
                    begin
                      TIBCustomDataSet(Components[i]).EnableControls;
                    end;

                    laDisableControls:
                    begin
                      TIBCustomDataSet(Components[i]).DisableControls;
                    end;

                    laOpenEnableControls,laOpenDisableControls,
                    laOpen:  begin
                               Case ADefaultAction of
                                    laOpenEnableControls : TIBCustomDataSet(Components[i]).EnableControls;
                                    laOpenDisableControls: TIBCustomDataSet(Components[i]).DisableControls;
                               end;

                               if ((TIBCustomDataSet(Components[i]).Tag = 1) and (TIBCustomDataSet(Components[i]).State = dsInactive)) then
                                    TIBCustomDataSet(Components[i]).Open;
                             end;
                    laClose: begin
                               if TIBCustomDataSet(Components[i]).State <> dsInactive then
                               begin
                                 TIBCustomDataSet(Components[i]).EnableControls;
                                 TIBCustomDataSet(Components[i]).Close;
                               end;
                             end;
                  end;
                end;
        end;
    end;
end;

{ Abre Transação }
(****************************************************************************************************************************************************************)
procedure oOTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltRead_Committed;ADefaultAction: TDefaultAction = laNone); STDCall;
(****************************************************************************************************************************************************************)
begin
  if AIBTransaction <> Nil then
     try
       if not AIBTransaction.InTransaction then
              AIBTransaction.StartTransaction;

       if ADefaultAction <> laNotReOpen then
       begin
         if ADefaultAction <> laOpenDisableControls then
            if ADefaultTransaction = ltRead_Only         then ADefaultAction := laDisableControls else
            if ADefaultTransaction = ltRead_Only_Release then ADefaultAction := laEnableControls;

         oSTransact(AIBTransaction,ADefaultTransaction,ADefaultAction);
       end;
     except
       oUnLockWindowUpdate;
     end;
end;

{ Reabre transação }
(**********************************************************************************************************************************************************************)
procedure oRTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltCommit;ADefaultAction: TDefaultAction = laOpenEnableControls); STDCall;
(**********************************************************************************************************************************************************************)
begin
  if AIBTransaction <> Nil then
     try
       if ADefaultAction <> laNotReOpen then
          if ADefaultTransaction = ltRead_Only         then ADefaultAction := laOpenDisableControls else
          if ADefaultTransaction = ltRead_Only_Release then ADefaultAction := laOpenEnableControls;

       try
         oCTransact(AIBTransaction,ADefaultTransaction,laClose);
       finally
         SleepEx(100,False);
         oOTransact(AIBTransaction,ADefaultTransaction,ADefaultAction);
       end;
     except
       oUnLockWindowUpdate;
     end;
end;

{ Fecha Transação }
(*********************************************************************************************************************************************************)
procedure oCTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltCommit;ADefaultAction: TDefaultAction = laClose); STDCall;
(*********************************************************************************************************************************************************)
begin
  if AIBTransaction <> Nil then
     try
       oSTransact(AIBTransaction,ADefaultTransaction,ADefaultAction);
       if AIBTransaction.InTransaction then
          Case ADefaultTransaction of
            ltRead_Only_Release_Commit  ,
            ltCommit                    : AIBTransaction.Commit;
            ltCommitRetaining           : AIBTransaction.CommitRetaining;
            ltRead_Only_Release_Rollback,
            ltRollback                  : AIBTransaction.Rollback;
            ltRollbackRetaining         : AIBTransaction.RollbackRetaining;
          end;
     except
       oUnLockWindowUpdate;
     end;
end;

{ Fecha Todas as transações }
(*********************************************************************************************************************************************************)
procedure oFTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltCommit;ADefaultAction: TDefaultAction = laClose); STDCall;
(*********************************************************************************************************************************************************)
var
  Component: TComponent;
  i: Word;
begin
  if AIBTransaction <> Nil then
     try
       Component := AIBTransaction.Owner;
       with Component do
            for i := 0 to ComponentCount - 1 do
                if (Components[i]).ClassName = 'TIBTransaction' then
                begin
                  AIBTransaction.Tag := 0;
                  oCTransact(TIBTransaction(Components[i]),ADefaultTransaction,ADefaultAction);
                end;
     finally
       oUnLockWindowUpdate;
     end;
end;

{ Alinha String }
(****************************************************************************************)
function oStrFormat(AValue,ACaracter: String; Size: Word; Local: TAlign): String; STDCall;
(****************************************************************************************)
var
  i: Integer;
begin
  AValue := Trim(AValue);
  Result := Copy(AValue,1,Size);
  for i := Length( AValue ) to Size - 1 do
      case Local of
        lcLeft  : Result := ACaracter + Result;
        lcRight : Result := Result    + ACaracter;
        lcCenter: if (i mod 2) = 0 then Result := Result + ACaracter else
                                        Result := ACaracter + Result;
      end;
end;

{ Preencher com zeros à esquerda }
(****************************************************)
function oStrZero(nInt,nTam: Integer):String; STDCall;
(****************************************************)
var
  x : String;
  nI: Integer;
begin
  For nI := 1 To nTam Do x := x + '0';
      x  := x + IntToStr(nInt);
  Result := Trim(Copy(x,Length(x)-nTam+1,nTam));
end;

{ Retorna 0 a Direita }
(****************************************************************)
function oPadr(AString: String; AQuant: Integer): String; STDCall;
(****************************************************************)
begin
  Result := AString;
  AQuant  := AQuant - Length(Result);
  if AQuant > 0 then
  Result := Result + StringOfChar('0', AQuant);
end;

{ Substitui caracteres selecionados }
(*******************************************************************************)
function oStrTran(InString: String;Search: String; New: String): String; STDCall;
(*******************************************************************************)
begin
  Search   := Trim(Search);
  New      := Trim(New);
  InString := Trim(InString);
  result   := Trim(StringReplace(InString,Search,New,[rfreplaceall]));
end;

{ Preencher com textos zeros à esquerda }
(******************************************************************************)
function  oREPZero(ATexto,ATexto2: String; nInt,nTam: Integer): String; STDCall;
(******************************************************************************)
begin
  Result := Trim(ATexto);
  if nInt > 1 then
  Result := Trim(ATexto+ATexto2+oStrZero(nInt,3));
end;

{ Substitui acentos }
(****************************************************)
function oREPAcentos(ATexto: String): String; STDCall;
(****************************************************)
var
  i: Word;
begin
  ATexto := Trim(ATexto);
  for i  := 1 to 40 do
  ATexto := StringReplace(ATexto, aCarEsp[i],aCarTro[i],[rfreplaceall]);
  Result := Trim(ATexto);
end;

{ Substitui Apostrofos}
(***********************************************************************************)
function oREPApostrofos(ATexto: String;ASQLSelect: Boolean = False): String; STDCall;
(***********************************************************************************)
var
  NewStr: String;
begin
  NewStr := IFThen(ASQLSelect,QuotedStr(''' '),''' ');

  ATexto := Trim(ATexto);
  ATexto := StringReplace(ATexto,Char(39),NewStr,[rfReplaceAll]);
  ATexto := StringReplace(ATexto,'¨'     ,NewStr,[rfReplaceAll]);
  ATexto := StringReplace(ATexto,'"'     ,NewStr,[rfReplaceAll]);
  ATexto := StringReplace(ATexto,'´'     ,NewStr,[rfReplaceAll]);
  ATexto := StringReplace(ATexto,'`'     ,NewStr,[rfReplaceAll]);

  Result := Trim(ATexto);
end;

{ Exclui caracteres especiais }
(****************************************************)
function oDELCharEsp(ATexto: String): String; STDCall;
(****************************************************)
var
  i: Word;
begin
  ATexto := Trim(ATexto);
  for i  := 1 to 49 do
  ATexto := StringReplace(ATexto,aCarExt[i],' ',[rfreplaceall]);
  ATexto := StringReplace(ATexto,Char(39)  ,' ',[rfReplaceAll]);
  Result := Trim(ATexto);
end;

{ Limpa a string retirando os caracters especiais e inválidos }
(*************************************************************)
function oREPMemoEsp(ATexto: String): String; STDCall;
(*************************************************************)
begin
  ATexto := StringReplace(ATexto,Char(0)   ,' ',[rfReplaceAll]);
  ATexto := StringReplace(ATexto,''#$D#$A'',' ',[rfReplaceAll]);
  ATexto := StringReplace(ATexto,''#$D''   ,' ',[rfReplaceAll]);
  ATexto := StringReplace(ATexto,''#$A''   ,' ',[rfReplaceAll]);
  Result := Trim(ATexto);
end;

{ Converte para minúsculo - Considera Acentos }
(***************************************************)
function oLowerCase(ATexto: String): String; STDCall;
(***************************************************)
var
  i: Word;
begin
  ATexto := Trim(LowerCase(ATexto));
  for i  := 1 to High(aCarUP) do
  ATexto := StringReplace(ATexto, aCarUP[i],aCarLW[i],[rfreplaceall]);
  result := Trim(ATexto);
end;

{ Converte para maiúsculo - Considera Acentos }
(***************************************************)
function oUpperCase(ATexto: String): String; STDCall;
(***************************************************)
var
  i: Word;
begin
  ATexto := Trim(UpperCase(ATexto));
  for i  := 1 to High(aCarLW) do
  ATexto := StringReplace(ATexto, aCarLW[i],aCarUP[i],[rfreplaceall]);
  result := Trim(ATexto);
end;

{ Formata String }
(****************************************************************)
function oPrimeiraLetraMaiuscula(ATexto: String): String; STDCall;
(****************************************************************)
var
  i: Integer;
begin
  ATexto :=  oLowerCase(ATexto);
  for i  :=  1 to Length(ATexto) do
      if i = 1 then ATexto[i] := UpCase(ATexto[i]) else
      if i <> Length(ATexto) then
      if (ATexto[i] = ' ') then
      if (ATexto[i+1]+ATexto[i+2]+ATexto[i+3] <> 'de ') and (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'pôr ') and (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'por ') and
                                                            (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'até ') and (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'ate ') and
                                                            (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'não ') and (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'nao ') and
                                                            (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'já ' ) and (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'ja ' ) and
                                                            (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'sim ') and
                                                            (not oEmpty(ATexto[i+2])) then
      ATexto[i+1] := UpCase(ATexto[i+1]) else
      ATexto[i+1] := ATexto[i+1];
  Result := ATexto;
end;

{ Limpa as sugeiras (-./) de uma string }
(************************************************)
function oREPTXT(ATexto: String): String; STDCall;
(************************************************)
begin
  ATexto := Trim(ATexto);

  While Pos(' ',ATexto) <> 0 Do
  Delete(ATexto,Pos(' ',ATexto),1);

  While Pos('-',ATexto) <> 0 Do
  Delete(ATexto,Pos('-',ATexto),1);

  While Pos('_',ATexto) <> 0 Do
  Delete(ATexto,Pos('_',ATexto),1);

  While Pos('=',ATexto) <> 0 Do
  Delete(ATexto,Pos('=',ATexto),1);

  While Pos('.',ATexto) <> 0 Do
  Delete(ATexto,Pos('.',ATexto),1);

  While Pos(',',ATexto) <> 0 Do
  Delete(ATexto,Pos(',',ATexto),1);

  While Pos(';',ATexto) <> 0 Do
  Delete(ATexto,Pos(';',ATexto),1);

  While Pos('/',ATexto) <> 0 Do
  Delete(ATexto,Pos('/',ATexto),1);

  While Pos('\',ATexto) <> 0 Do
  Delete(ATexto,Pos('\',ATexto),1);

  While Pos('|',ATexto) <> 0 Do
  Delete(ATexto,Pos('|',ATexto),1);

  result := Trim(ATexto);
end;

{ Imprime ATexto com quebra de linha }
(***********************************************************************)
function oTXTMemo(ATexto: String; Largura: Integer):TStringList; STDCall;
(***********************************************************************)
var
  Original,Quebrado: TStringList;
  i,esp: Integer;
  Frase  : String;
begin
  ATexto   := oREPMemoEsp(ATexto);
  Original := TStringList.Create;
  Quebrado := TStringList.Create;
  Esp      := Largura;
  
  oTXTBreakApart(ATexto,' ',Original);

  Frase := '';
  for i := 0 to Original.Count - 1 do
  begin
    if Length(Frase) = Esp then
    begin
      Quebrado.Add(Frase);
      Frase := '';
    end;
    if( Length(Frase+' '+Original.Strings[i]) > Esp) then
    begin
      Quebrado.Add(Frase);
      Frase := '';
    end;
    Frase := Frase+' '+Original.Strings[i];
    if i = Original.Count-1 then
    Quebrado.Add(Frase);
  end;

  Result := Quebrado;
end;

{ Separa as Strings }
(*****************************************************************************************************)
function oTXTBreakApart(BaseString,BreakString: String; StringList: TStringList): TStringList; STDCall;
(*****************************************************************************************************)
var
  EndOfCurrentString: Byte;
begin
  Repeat
    EndOfCurrentString := Pos(BreakString, BaseString);
    if EndOfCurrentString = 0 then
    StringList.add(BaseString) else
    StringList.add(Copy(BaseString,1,EndOfCurrentString - 1));
    BaseString :=  Copy(BaseString,  EndOfCurrentString + length(BreakString), length(BaseString) - EndOfCurrentString);
  Until EndOfCurrentString = 0;

  Result := StringList;
end;

{ Verifica a validade de uma data }
(********************************************************)
function oTryStrToDate(AValue: String): Variant; STDCall;
(********************************************************)
var
  dtTemp: TDateTime;
  stTemp: String;
begin
  stTemp := AValue;
  if Length(stTemp) >= 6 then
  try
    if ((stTemp[3] <> '/') or (stTemp[6] <> '/')) then
    Result := Copy(stTemp,1,2)+'/'+Copy(stTemp,3,2)+'/'+Copy(stTemp,5,4);

    TryStrToDate(stTemp,dtTemp);
    Result := VarToDateTime(stTemp);
  except
    ;
  end;
end;

{ Retorna a Data por Extenso }
(*****************************************************)
function oRETDataExtenso(Data: TDate): String; STDCall;
(*****************************************************)
var
  DiaSemana: Word;
begin
  if Data > 0 then
  DiaSemana := DayOfWeek(Data) else
  DiaSemana := 0;
  Result    := aSemana[DiaSemana];
end;

{ Retorna a data limite (anterior e posterior) conforme data selecionada }
(********************************************************************************)
function oRETDataBetWeen(Data: TDate; Dia: Integer; SouE: String): TDate; STDCall;
(********************************************************************************)
var
  DRet: TDate;
begin
  DRet   := IncDay(Data,0-Dia);
  if (Dia = 0) and (SouE = 'S') then
  DRet   := StartOfTheMonth(DRet);
  if (Dia = 0) and (SouE = 'E') then
  DRet   := EndOfTheMonth(DRet);
  Result := DRet;
end;

{ Sub function MesPorExtenso(Ano) }
(*************************************************)
function oRETAno(Data:TDateTime): Integer; STDCall;
(*************************************************)
var
  d,m,a: Word;
begin
  DecodeDate(Data,a,m,d);
  oRETAno := a;
end;

{ Sub function MesPorExtenso(Mes) }
(*************************************************)
function oRETMes(Data:TDateTime): Integer; STDCall;
(*************************************************)
var
  d,m,a: Word;
begin
  DecodeDate(Data,a,m,d);
  oRETMes := m;
end;

{ Sub function MesPorExtenso(Dia) }
(*************************************************)
function oRETDia(Data:TDateTime): Integer; STDCall;
(*************************************************)
var
  d,m,a: Word;
begin
  DecodeDate(Data,a,m,d);
  oRETDia := d;
end;

{ Retorna o Mes por Extenso }
(****************************************************)
function oRETMesExtenso(Data: TDate): String; STDCall;
(****************************************************)
var
  Mes: Word;
begin
  if Data > 0 then
  Mes    := oRETMes(Data) else
  Mes    := 0;
  Result := aMes[Mes];
end;

{ Sub function ValorExtenso(valores menores ou iguais a 19) }
(***************************************************)
function oRETUnidade(ValorUN: Real): String; STDCall;
(***************************************************)
var
  iIndice: Integer;
begin
  iIndice     := Trunc(ValorUN);
  oRETUnidade := aUnidades[iIndice];
end;

{ Sub function ValorExtenso(valores maiores ou iguais a 20) }
(**************************************************)
function oRETDezena(ValorDZ: Real): String; STDCall;
(**************************************************)
var
  iIndice    : Integer;
  sExtensoAux: String;
begin
  {Quebrar Numero em Dezena e Unidade}
  iIndice     := StrToInt(copy(IntToStr(Trunc(ValorDZ)),1,1));
  sExtensoAux := aDezenas[iIndice];
  iIndice     := StrToInt(Copy(IntToStr(Trunc(ValorDZ)),2,1));

  {Verifica se 2º Dígito é maior que zero}
  if iIndice > 0 then
  sExtensoAux := sExtensoAux + ' e ' + oRETUnidade(iIndice);
  oRETDezena  := sExtensoAux;
end;

{ Sub function ValorExtenso(valores de centenas) }
(**************************************************)
function oRETCentena(ValorCE:Real): String; STDCall;
(**************************************************)
var
  iIndCentena       : Integer;
  iIndDezena        : Integer;
  sExtParcialDezena : String;
  sExtParcialCentena: String;
begin
  {Quebrar Numero em Centena e Dezena}
  iIndCentena        := StrToInt(Copy(IntToStr(Trunc(ValorCE)),1,1));
  iIndDezena         := StrToInt(Copy(IntToStr(Trunc(ValorCE)),2,2));
  sExtParcialCentena := aCentenas[iIndCentena];

  if iIndDezena <> 0 then
  begin
    {Irá Processar números menores ou iguais a dezenove}
    if iIndDezena <= 19 then
    sExtParcialDezena  := oRETUnidade(iIndDezena);

    {Irá Processar números maiores ou iguais a vinte}
    if iIndDezena >= 20 then
    sExtParcialDezena  := oRETDezena (iIndDezena);

	  sExtParcialCentena := sExtParcialCentena + ' e ' + sExtParcialDezena;
	end;

  oRETCentena := sExtParcialCentena;
end;

{ Sub function ValorExtenso(valores de milhares) }
(*******************************************************)
function oRETMilhar(iCasasMI: Integer): Boolean; STDCall;
(*******************************************************)
var
  iLoopMI: Integer;
begin
  Result := False;
  for iLoopMI := iCasasMI to 9 do
  begin
    if aNumeros[iLoopMI] = 0 then
    Result := True else
    Result := False;

    if not (Result) then
    Break;
  end;
end;

{ Sub function ValorExtenso
(valores de milhares II) }
(*********************************************************)
function oRETMilharII(iCasasMI: Integer): Boolean; STDCall;
(*********************************************************)
var
  iLoopMI: Integer;
begin
  Result := False;
  if (aNumeros[9] <> 1) then
  begin
    Result := True;
    exit;
  end;

  for iLoopMI := iCasasMI to 8 do
  begin
    if aNumeros[iLoopMI] <> 0 then
    Result := True else
    Result := False;

    if (Result) then
    Break;
  end;
end;

{ Retorna o Valor por Extenso }
(******************************************************)
function oRETValorExtenso(Valor: Real): String; STDCall;
(******************************************************)
var
  iLoop,iControle: Integer; {Controla o grupo de três números}
  iCasas         : Integer; {Controla o numero de casas de milhares}
  iTamanho       : Integer; {O número de caracteres digitados}
  iPosPonto      : Integer;
  iNumeroAux     : Real;
  sNumeroAux     : String;
begin
  sExtensoTotal   := '';
  sExtensoParcial := '';
	sNumeroAux      := FormatFloat('000000000000000000000000000000.00',Valor);
  sNumeroAux      := copy(sNumeroAux,1,Pos(',',sNumeroAux));
  iCasas          := 0;

  iLoop := 1;
  fillChar(aNumeros,SizeOF(aNumeros),0);
  while iLoop <= 30 do
  begin
    {Recebe sub-número do numero principal}
    aNumeros[iCasas] := StrToInt(Copy(sNumeroAux,iLoop,3));
    iLoop := iLoop + 3;
    Inc(iCasas);
  end;

  iCasas    := 9;
  iControle := 0;
  iLoop     := 1;
  while iLoop <= 30 do
  begin
    if (aNumeros[iControle] <= 019) and (aNumeros[iControle]  > 000) then
    sExtensoParcial := oRETUnidade(aNumeros[iControle]);

    if (aNumeros[iControle] >= 020) and (aNumeros[iControle] <= 099) then
    sExtensoParcial:=oRETDezena  (aNumeros[iControle]);

    if aNumeros[iControle]   > 100 then
    sExtensoParcial:=oRETCentena (aNumeros[iControle]);

    if aNumeros[iControle]   = 100 then
    sExtensoParcial:='Cem ';

    if aNumeros[iControle]  <> 000 then
    begin
      {Acrescenta na forma de plural}
      if aNumeros[iControle] > 001 then
      sExtensoParcial := sExtensoParcial + ' ' + aMilhares[iCasas];

      {Acrescenta na forma de singular}
      if aNumeros[iControle] = 001 then
      sExtensoParcial := sExtensoParcial + ' ' + aMilhar[iCasas];
    end;

    iLoop := iLoop + 3;

    if (Trim(LowerCase(sExtensoParcial)) = 'Um') and (iControle = 9) and (Trim(sExtensoTotal) = '') then
    begin
      sExtensoTotal := sExtensoTotal + sExtensoParcial;
      Break;
    end;

    if (iControle = 9) and (aNumeros[iControle] =  1) then
	  Insert(' e ',sExtensoParcial,1);

    sExtensoTotal := sExtensoTotal + sExtensoParcial;

    if (oRETMilhar (iControle+1))  then
    begin
      if (iControle <= 7)  then
      sExtensoTotal := sExtensoTotal + ' de ';
      Break;
    end else
    if (iControle <= 8) and (aNumeros[iControle] <> 0) and (oRETMilharII(iControle+1)) then
    sExtensoTotal   := sExtensoTotal +  ', ';
	  sExtensoParcial :='';

    Dec(iCasas);
    Inc(iControle);
  end;

  if Trim(LowerCase(sExtensoTotal)) = 'Um'  then
  sExtensoTotal := sExtensoTotal + ' Real ' else
  sExtensoTotal := sExtensoTotal + ' Reais ';

  // Processa centavos
  sExtensoParcial := '';
  sNumeroAux      := FormatFloat('000000000000000000000000000000.00',Valor);
	iTamanho        := Length( sNumeroAux);
	iPosPonto       := Pos('.',sNumeroAux);
	if iPosPonto = 0 then
  iPosPonto       := Pos(',',sNumeroAux);

	if iPosPonto <> 0 then
	begin
 	  iNumeroAux := StrToFloat(Copy(sNumeroAux,(iPosPonto+1),iTamanho));
    if iNumeroAux <> 0 then
    begin
      sExtensoParcial := sExtensoParcial + ' e ';

      if (iNumeroAux <= 019) and (iNumeroAux  > 000) then
      sExtensoParcial := sExtensoParcial + oRETUnidade(iNumeroAux);

      if (iNumeroAux >= 020) and (iNumeroAux <= 099) then
      sExtensoParcial := sExtensoParcial + oRETDezena(iNumeroAux);

      if iNumeroAux   > 100 then
      sExtensoParcial := sExtensoParcial + oRETCentena(iNumeroAux);

      if iNumeroAux   = 100 then
      sExtensoParcial := sExtensoParcial + 'Cem ';

      if iNumeroAux  >= 100 then
      sExtensoParcial := sExtensoParcial + 'centesimos de reais ' else
      begin
    	  if iNumeroAux = 1 then
	   	  sExtensoParcial := sExtensoParcial + ' Centavo';

	   	  if iNumeroAux > 1 then
        sExtensoParcial := sExtensoParcial + ' Centavos';
      end;
    end;
    sExtensoTotal := sExtensoTotal + sExtensoParcial;
  end;

  Result := sExtensoTotal
end;

{ Validar Email }
(************************************************)
function oEMail(ATexto: String): Boolean; STDCall;
(************************************************)
var
  i,cont: integer;
  EMail : ShortString;
begin
  Result := True;
  cont   := 0;
  EMail  := LOWERCase(ATexto);

  if EMail <> '' then
     if (Pos('@', EMail)<>0) and (Pos('.', EMail)<>0) then    // existe @ .
     begin
       if (Pos('@', EMail)=1) or (Pos('@', EMail)= Length(EMail)) or (Pos('.', EMail)=1) or (Pos('.', EMail)= Length(EMail)) or (Pos(' ', EMail)<>0) or (Pos('''', EMail)<>0) then
         Result := False
       else                                   // @ seguido de . e vice-versa
         if (abs(Pos('@', EMail) - Pos('.', EMail)) = 1) then
           Result := False
         else
           begin
             for i := 1 to 40 do            // se existe Caracter Especial
               if Pos(aCarEsp[i], EMail)<>0 then
                  Result := False;
             for i := 1 to 40 do            // se existe Caracter Especial
               if (Pos(aCarExt[i], EMail)<>0) and (aCarExt[i] <> '@') then
                  Result := False;
             for i := 1 to length(EMail) do
             begin                                 // se existe apenas 1 @
               if EMail[i] = '@' then
                  cont := cont + 1;                    // . seguidos de .
               if (EMail[i] = '.') and (EMail[i+1] = '.') then
                  Result := false;
             end;
                                   // . no f, 2ou+ @, . no i, - no i, _ no i
             if (cont >=2) or ( EMail[length(EMail)]= '.' )
               or ( EMail[1]= '.' ) or ( EMail[1]= '_' )
               or ( EMail[1]= '-' )  then
                 Result := false;
                                            // @ seguido de COM e vice-versa
             if (abs(Pos('@', EMail) - Pos('com', EMail)) = 1) then
                Result := False;
                                              // @ seguido de - e vice-versa
             if (abs(Pos('@', EMail) - Pos('-', EMail)) = 1) then
                Result := False;
                                              // @ seguido de _ e vice-versa
             if (abs(Pos('@', EMail) - Pos('_', EMail)) = 1) then
                Result := False;

             if (Pos('.br',EMail) > 0) and (Pos('.br',EMail) + 3 < Length(email)) then
                Result := False;
           end;
     end else
     Result := False;
end;
{ Criptografia - usar nas senhas de usuários }
(***********************************************************)
function oEncrypt(ATexto: String; Key: Word): String; STDCall;
(***********************************************************)
var
  SRet: String;
  i   : LongInt;
begin
  ATexto     := Trim(ATexto);
  SRet      := '';

  for     i := 1 to Length(ATexto) do
  begin
    SRet[i] := Char(Byte(ATexto[i]) xor (Key shr 8));
    Key     := (Byte(SRet[i])+Key) * Crypt1 + Crypt2;
  end;
  Result    := SRet;
end;

{ DesCriptografia - usar nas senhas de usuários }
(***********************************************************)
function oDecrypt(ATexto: String; Key: Word): String; STDCall;
(***********************************************************)
var
  SRet: String;
  i   : LongInt;
begin
  ATexto     := Trim(ATexto);
  SRet      := '';
  for     i := 1 to Length(ATexto) do
  begin
    SRet[i] := Char(Byte(ATexto[i]) xor (Key shr 8));
    Key     := (Byte(SRet[i])+Key) * Crypt1 + Crypt2;
  end;
  Result    := SRet;
end;

{ Avisos padrões de warnings }
(*********************************************************************)
function oAviso(AHandle: Integer; AMensagem: String): Integer; STDCall;
(*********************************************************************)
begin
  oUnLockWindowUpdate;
  Result := MessageBox(AHandle,PChar(AMensagem),'Aviso',
            MB_ICONWARNING+MB_OK);
end;

{ Avisos padrões de erros }
(********************************************************************)
function oErro(AHandle: Integer; AMensagem: String): Integer; STDCall;
(********************************************************************)
begin
  oUnLockWindowUpdate;
  Result := MessageBox(AHandle,PChar(AMensagem),'Erro !',
            MB_ICONERROR+MB_OK);
end;

(*********************************************************************)
function oYesNo(AHandle: Integer; AMensagem: String): Integer; STDCall;
(*********************************************************************)
begin
  oUnLockWindowUpdate;
  Result := MessageBox(AHandle,PChar(AMensagem),'Atenção !',
            MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON1);
end;

(************************************************************************)
function oOkCancel(AHandle: Integer; AMensagem: String): Integer; STDCall;
(************************************************************************)
begin
  oUnLockWindowUpdate;
  Result := MessageBox(AHandle,PChar(AMensagem),'Atenção !',
            MB_ICONQUESTION+MB_OKCANCEL);
end;

(***************************************************************************)
function oYesNoCancel(AHandle: Integer; AMensagem: String): Integer; STDCall;
(***************************************************************************)
begin
  oUnLockWindowUpdate;
  Result := MessageBox(AHandle,PChar(AMensagem),'Atenção !',
            MB_ICONQUESTION+MB_YESNOCANCEL+MB_DEFBUTTON1);
end;

(************************************************************************************)
function oEscolha(AMensagem, ATitulo, ABTNYES, ABTNNO: String): TModalResult; STDCall;
(************************************************************************************)
var
 Form: TForm;
 i   : Integer;
 Texto: TLabel;
begin
  oUnLockWindowUpdate;
  Form := CreateMessageDialog(AMensagem,MTConfirmation,[MBYES,MBNO,MBCANCEL]);
  try
    Texto := TLabel(Form.FindComponent('Message'));
    Texto.Width := Texto.Width + 100;

    Form.Caption     := ATitulo; 
    Form.ClientWidth := Form.ClientWidth + 150;


    for i := 0 to Form.ComponentCount -1 do
        if Form.Components[i] is TButton then
           with TButton(Form.Components[i]) do
           begin
             Width := Width + 50;
             case ModalResult of
                  MRYES   : Caption   := ABTNYES;
                  MRNO    : begin
                              Left    := Left + 50;
                              Caption := ABTNNO;
                            end;
                  MRCANCEL: begin
                              Left    := Left + 100;
                              Caption := 'Cancelar';
                            end;
                      { Aqui vc personaliza os botoes a mais q vc colocou. }
             end;
           end;

    Form.Position := poScreenCenter;
    Form.Showmodal;
  finally
    Form.Free;
  end;

  Result := Form.ModalResult;
end;

{ Avisos padrões de exceptions + abort }
(*****************************************************************************************)
procedure oException(ASender: TWinControl;AMensagem: String;ATitulo: String = ''); STDCall;
(*****************************************************************************************)
begin
  oUnLockWindowUpdate;
  if oEmpty(ATitulo) then
  begin
    ATitulo := 'Sheild';
    if Application.MainForm <> Nil then
       ATitulo := Application.MainForm.Caption;
  end;

  if not oEmpty(AMensagem) then
  try
    Application.MessageBox(PChar(AMensagem),PChar(ATitulo),MB_ICONERROR+MB_OK);
    oExceptionFocus(ASender);
  finally Abort;
  end;
end;

{ Avisos padrões de exceptions do FBird }
(********************************************************)
function oFBException(AMensagem: String): String; STDCall;
(********************************************************)
var
  VMensagem: String;
begin
  oUnLockWindowUpdate;

     VMensagem := Copy(AMensagem,Pos('[',AMensagem) + 1,(Pos(']',AMensagem) - Pos('[',AMensagem)) - 1);
  if VMensagem  = EmptyStr then
  begin
     VMensagem := IFThen(Pos('IDSEG',AMensagem) > 0,'Código do segmento',
                  IFThen(Pos('DESEG',AMensagem) > 0,'Descrição do segmento',
                  EmptyStr));

     VMensagem := VMensagem +
                  IFThen(Pos('NAO_INF',AMensagem) > 0,' não informado !',
                  IFThen(Pos('JA_CAD' ,AMensagem) > 0,' já cadastrado !',
                  EmptyStr));
  end;

  result := IFThen(not oEmpty(VMensagem),VMensagem,AMensagem);
end;

{ Constrol Avançado de Foco }
(*******************************************************)
procedure oExceptionFocus(ASender: TWinControl); STDCall;
(*******************************************************)
var
  OBJParent: TWinControl;
  BRet: Boolean;
begin
  if ASender = Nil then
  Exit;

  { Descobre quem é o pai da criança e o amante }
  BREt := ((ASender.ClassType = TdxEdit)         or (ASender.ClassType = TdxDBEdit)         or
           (ASender.ClassType = TdxMaskEdit)     or (ASender.ClassType = TdxDBMaskEdit)     or
           (ASender.ClassType = TdxMemo)         or (ASender.ClassType = TdxDBMemo)         or
           (ASender.ClassType = TdxDateEdit)     or (ASender.ClassType = TdxDBDateEdit)     or
           (ASender.ClassType = TdxButtonEdit)   or (ASender.ClassType = TdxDBButtonEdit)   or
           (ASender.ClassType = TdxImageEdit)    or (ASender.ClassType = TdxDBImageEdit)    or
           (ASender.ClassType = TdxSpinEdit)     or (ASender.ClassType = TdxDBSpinEdit)     or
           (ASender.ClassType = TdxPickEdit)     or (ASender.ClassType = TdxDBPickEdit)     or
           (ASender.ClassType = TdxTimeEdit)     or (ASender.ClassType = TdxDBTimeEdit)     or
           (ASender.ClassType = TdxCurrencyEdit) or (ASender.ClassType = TdxDBCurrencyEdit) or
           (ASender.ClassType = TdxPopUpEdit)    or (ASender.ClassType = TdxDBPopUpEdit)    or
           (ASender.ClassType = TdxLookUpEdit)   or (ASender.ClassType = TdxDBLookUpEdit)   or
           (ASender.ClassType = TdxDBGrid));

  OBJParent := Nil;
  if ASender.Parent is TPanel       then OBJParent := ASender.Parent as TPanel;
  if ASender.Parent is TGroupBox    then OBJParent := ASender.Parent as TGroupBox;
  if ASender.Parent is TRadioGroup  then OBJParent := ASender.Parent as TRadioGroup;
  if ASender.Parent is TdxDockPanel then OBJParent := ASender.Parent as TdxDockPanel;
  if ASender.Parent is TdxTabSheet  then OBJParent := ASender.Parent as TdxTabSheet;

  if OBJParent <> Nil then
     if OBJParent.Parent is TdxTabSheet then
     begin
       TdxPageControl(TdxTabSheet(OBJParent).Parent).Activepage := TdxTabSheet(OBJParent);
       if TdxPageControl(TdxTabSheet(OBJParent).Parent).Parent is TdxTabSheet then
       begin
         OBJParent := TdxPageControl(TdxTabSheet(OBJParent).Parent).Parent as TdxTabSheet;
         TdxPageControl(TdxTabSheet(OBJParent).Parent).Activepage := TdxTabSheet(OBJParent);
       end;
     end;

  if BRet then
     if OBJParent <> Nil then
        BRet := (OBJParent.Enabled) and (OBJParent.Visible);

  if (BRet) and (ASender.Enabled) and (ASender.Visible) then
  begin
    if ASender.ClassType = TdxEdit then
       TdxEdit(ASender).Reset else
    if ASender.ClassType = TdxMaskEdit then
       TdxMaskEdit(ASender).Reset else
    if ASender.ClassType = TdxCurrencyEdit then
       TdxCurrencyEdit(ASender).Reset else
    if ASender.ClassType = TdxButtonEdit then
       TdxButtonEdit(ASender).Reset else
    if ASender.ClassType = TdxMemo then
       TdxMemo(ASender).Reset else
    if ASender.ClassType = TdxImageEdit then
       TdxImageEdit(ASender).Reset;

    PostMessage(TWinControl(ASender).Handle, WM_SETFOCUS, 0, 0);
    TWinControl(ASender).SetFocus;
  end;
end;

{ Verificar Programa que já Esteja em Execução }
(******************************************************)
function oBWinMemory(WndTit: String): Boolean ; STDCall;
(******************************************************)
var
  hSem  : THandle;
  hWndMe: HWnd;
begin
  Result := False;
  hSem   := CreateSemaphore(Nil,0,1,'NomeDoSemaforo');

  if (hSem <> 0) and (GetLastError() = ERROR_ALREADY_EXISTS) then
  begin
    CloseHandle(hSem);
    hWndMe := FindWindow(Nil,PChar(WndTit));
    if hWndMe <> 0 then
    begin
      if IsIconic(hWndMe) then
      ShowWindow (hWndMe,SW_SHOWNORMAL) else
      SetForegroundWindow(hWndMe);

      Result := True;
    end;
  end;
end;

{ Executar arquivos externos }
(**********************************************************************)
function oFileExec(Arquivo: String; Estado: Integer): Cardinal; STDCall;
(**********************************************************************)
var
  Programa   : Array[0..512] of Char;
  CurDir     : Array[0..255] of Char;
  WorkDir    : String;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
begin
{
    SW_SHOWNORMAL - Janela em modo normal
    SW_MAXIMIZE - Janela maximizada
    SW_MINIMIZE - Janela minimizada
    SW_HIDE - Janela Escondida
}

  StrPCopy(Programa   ,Arquivo);
  GetDir  (0          ,WorkDir);
  StrPCopy(CurDir     ,WorkDir);
  FillChar(StartupInfo,SizeOF(StartupInfo),#0);

  StartupInfo.cb          := SizeOF(StartupInfo);
  StartupInfo.dwFlags     := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Estado;

  if not CreateProcess(Nil,Programa,Nil,Nil,false,CREATE_New_CONSOLE or NORMAL_PRIORITY_CLASS,Nil,Nil,StartupInfo,ProcessInfo) then
  Result := 0 else
  begin
    WaitForSingleObject(ProcessInfo.hProcess,Infinite);
    GetExitCodeProcess (ProcessInfo.hProcess,Result  );
  end;
end;

{ Copiar arquivos }
(**************************************************)
procedure oFileCopy(ArqEnt,ArqSai: String); STDCall;
(**************************************************)
var
  Dados: TSHFileOpStruct;
begin
  SetLength(ArqEnt,Length(ArqEnt)+1);
  ArqEnt[Length(ArqEnt)] := #0;
  FillChar(Dados,SizeOF(Dados), 0);

  with Dados do
  begin
    wFunc  := FO_COPY;
    pFrom  := PChar(ArqEnt);
    pTo    := PChar(ArqSai);
    fFlags := FOF_ALLOWUNDO+FOF_NOCONFIRMATION;
  end;

  SHFileOperation(Dados);
end;

{ Excluir Pastas }
(**********************************************)
procedure oDirectoryDel(Pasta: String); STDCall;
(**********************************************)
var
  Arquivo: TSearchRec;
begin
  if FindFirst(pasta+'*.*',0,Arquivo) = 0 then
  begin
    repeat
      DeleteFile(pasta+Arquivo.Name);
    until
      FindNext (Arquivo) <> 0;
      FindClose(Arquivo);
  end;
end;

{ Retorna Formatação dos bancos }
(*******************************************************)
procedure oRETFormatBancos(var Sender: TObject); STDCall;
(*******************************************************)
var
  Count,
  Posic,
  Tamanho: Integer;
  ATexto1,
  ATexto2,
  ATexto  : String;
  BRet   : Boolean;
begin
  BRet := false;
  if Sender.ClassType = TdxEdit then
  begin
    BRet  := (TdxEdit(Sender).Tag = 0);
    ATexto := TdxEdit(Sender).Text;
  end;

  if BRet then
  begin
    Tamanho := Length(ATexto);
    ATexto1  := ATexto;
    ATexto2  := '';

    { Remove pontos }
    if Tamanho > 6 then
    begin
      Delete(ATexto, Pos('.',ATexto), 1);
      ATexto := ATexto;
    end;

    { Retira pontos e reformata a string }
    Posic := 0;
    for Count := Length(ATexto1) downto 1 do
        if (Copy(ATexto1,Count,1) >= '0') and (Copy(ATexto1,Count,1) <= '9') then
        begin
          Posic := Posic + 1;
          if Posic = 3 then ATexto2 := Copy(ATexto1,Count,1)+','+ATexto2 else
          if Posic = 6 then ATexto2 := Copy(ATexto1,Count,1)+'.'+ATexto2 else
          if Posic = 9 then ATexto2 := Copy(ATexto1,Count,1)+'.'+ATexto2 else
          ATexto2 := Copy(ATexto1,Count,1)+ATexto2;
        end;

    ATexto := ATexto2;

    { Ajusta os zeros }
    if Tamanho = 1  then ATexto := '00,0'+ATexto;
    if Tamanho = 2  then ATexto := '0'   +ATexto;
    if ATexto   = '' then ATexto := '000';

    if Tamanho <= 6 then
    ATexto := FormatFloat('#,##0.00', StrToCurr(ATexto));
  end;

  if Sender.ClassType = TdxEdit then
  begin
    TdxEdit(Sender).Text     := IFThen(ATexto='','0,00',ATexto);
    TdxEdit(Sender).SelStart := Length(TdxEdit(Sender).Text);
  end;
end;

{ Retorna apenas os números }
(***************************************************)
function oRETNumero(ATexto: String): String ; STDCall;
(***************************************************)
var
  SRet: String;
  i   : Word;
begin
  ATexto := Trim(ATexto);
  SRet   := '';
  for i  := 1 to Length(ATexto) do
  if Pos(ATexto[i],Numeros) > 0 then  SRet := SRet + ATexto[i];

  Result := Trim(SRet);
end;

{ Retorna verdadeiro para string que possuam apenas números }
(************************************/**************)
function oBSONumero(ATexto: String): Boolean; STDCall;
(************************************/**************)
var
  BRet: Boolean;
  i   : Word;
begin
  ATexto  := TRIM(ATexto);
  BRet   := False;
  for i  := 1 to Length(ATexto) do
  begin
    BRet := (Pos(ATexto[i],Numeros) > 0);
    if not BRet then
    Break;
  end;
  Result := BRet;
end;

{ Permite apenas números }
(*********************************************************************************************)
function oEditNumero(Key: Char; ATexto: String = ''; ADigitos: Boolean = False): Char; STDCall;
(*********************************************************************************************)
begin
  if not ADigitos then
  begin
    if  not (Key in ['0'..'9', #8, #27, #32]) then
    Key := #0
  end else
  begin
    if  Key = #46 then
    Key := DecimalSeparator;
    if  not (Key in ['0'..'9',Chr(8),Chr(13)]) then
    Key := #0 else
    if (Key = DecimalSeparator) and (Pos(Key,ATexto) > 0) then
    Key := #0;
  end;

  if Key = #0 then
     BEEP;

  Result := Key;
end;

{ Retorna código de produto formatado }
(***************************************************)
function oRETCodigo(ATexto: String): String ; STDCall;
(***************************************************)
var
  cCOR: String;
  cART: String;
  i,j : Word;
begin
  j      := 0;
  ATexto := Trim(ATexto);
  cART   := ATexto;

  if not oBSoNumero(LeftStr(ATexto,1)) then
  begin
    for i := 0 to Length(ATexto) do
    if copy(ATexto,i,1) = '.' then
    Inc(j);

    if j <= 2 then
    begin
      j      := 0;
      cART   := '';
      for i  := 1 to Length(ATexto) do
      begin
        cART := cART+copy(ATexto,i,1);
        if copy(ATexto,i,1) = '.' then
        Inc(j);

        if j = 2 then
        Break;
      end;

      if j <> 2 then
      cART := ATexto else
      begin
        Inc(i);
        cCOR := Trim(copy(ATexto,i,4));

        if not oBSONumero(cCOR) then
        cART := ATexto else
        cART := cART+oStrZero(StrToInt(cCOR),4);
      end;
    end;
  end;
  Result := cART;
end;

{ Retorna as regiões conforme estado ou cep }
(*****************************************************)
function oRETRegiao(AUf,ACep: String): String; STDCall;
(*****************************************************)
var
  SRet: String;
begin
  AUf   := Trim(AUf);
  ACep  := Trim(ACep);
  SRet := '';

  if AUf <> '' then
  begin
    if (AUf = 'AM') or (AUf = 'AC') or (AUf = 'RO') or (AUf = 'RR') or (AUf = 'PA') or (AUf = 'AP') or (AUf = 'TO') then
    SRet := 'REGIÃO NORTE'        else
    if (AUf = 'MT') or (AUf = 'MS') or (AUf = 'DF') or (AUf = 'GO') then
    SRet := 'REGIÃO CENTRO-OESTE' else
    if (AUf = 'MA') or (AUf = 'PI') or (AUf = 'CE') or (AUf = 'RN') or (AUf = 'PB') or (AUf = 'PE') or (AUf = 'AL') or (AUf = 'SE') or (AUf = 'BA') then
    SRet := 'REGIÃO NORDESTE'     else
    if (AUf = 'SP') or (AUf = 'RJ') or (AUf = 'MG') or (AUf = 'ES') then
    SRet := 'REGIÃO SUDESTE'      else
    if (AUf = 'PR') or (AUf = 'SC') or (AUf = 'RS') then
    SRet := 'REGIÃO SUL';
  end;

  if Length(Trim(ACep)) >= 8 then
  begin
    if (StrToInt(copy(ACep,1,5)) >= 01000) and (StrToInt(copy(ACep,1,5)) <= 09999) then
    SRet := 'CAPITAL DE SÃO PAULO';

    if (StrToInt(copy(ACep,1,5)) >= 12000) and (StrToInt(copy(ACep,1,5)) <= 19999) then
    SRet := 'INTERIOR DE SÃO PAULO';
  end;

  Result := SRet;
end;

{ Retorna campo ou descriçao de pesquisa }
(*****************************************************************)
function oPesquisaPerfil(APerfil,ACampo: String): String ; STDCall;
(*****************************************************************)
var
  SRet: String;
begin
  SRet   := '';
  if APerfil = 'Produtos' then
  begin
    if ACampo = 'Código de Barras' then
    SRet := 'PRO_CBAR' else
    if ACampo = 'Produto' then
    SRet := 'PRO_CPRO' else
    if ACampo = 'Referencia' then
    SRet := 'PRO_CART' else
    if ACampo = 'Ref. Fornecedor' then
    SRet := 'PRO_CFOR' else
    if ACampo = 'Descrição' then
    SRet := 'PRO_DPRO' else
    if ACampo = 'Grupo' then
    SRet := 'PRO_DGRP' else
    if ACampo = 'Categoria (Sub Grupo)' then
    SRet := 'PRO_DCAT' else
    if ACampo = 'Coleção' then
    SRet := 'PRO_DCOL';
  end else
  if APerfil = 'Fornecedores' then
  begin
    if ACampo = 'Código' then
    SRet := 'ID' else
    if ACampo = 'Fantasia' then
    SRet := 'FOR_FANT' else
    if ACampo = 'Razão Social' then
    SRet := 'FOR_RAZA' else
    if ACampo = 'CNPJ' then
    SRet := 'FOR_CNPJ' else
    if ACampo = 'CPF' then
    SRet := 'FOR_CPF' else
    if ACampo = 'Telefone ( sem DDD )' then
    SRet := 'FOR_TEL1' else
    if ACampo = 'Celular ( sem DDD )' then
    SRet := 'FOR_CEL' else
    if ACampo = 'Logradouro' then
    SRet := 'FOR_LOGR' else
    if ACampo = 'Bairro' then
    SRet := 'FOR_BAI' else
    if ACampo = 'Cidade' then
    SRet := 'FOR_CID';
  end else
  if APerfil = 'Nota Fiscal' then
  begin
    if ACampo = 'Nota Fiscal' then
    SRet := 'NFE_CAB.NFE_CDNF' else
    if ACampo = 'Dt. Emissão' then
    SRet := 'NFE_CAB.NFE_DEMI' else
    if ACampo = 'Dt. Cancelamento' then
    SRet := 'NFE_CAB.NFE_DCAN' else
    if ACampo = 'Favorecido' then
    SRet := 'NFE_CAB.NFE_DFAV' else
    if ACampo = 'Vendedor' then
    SRet := 'NFE_CAB.NFE_DVEN' else
    if ACampo = 'Representante' then
    SRet := 'NFE_CAB.NFE_DREP';
  end else
  if APerfil = 'Pedidos' then
  begin
    if ACampo = 'Dt. Pedido' then
    SRet := 'Pedidos.ROM_DROM' else
    if ACampo = 'Dt. Venda' then
    SRet := 'Pedidos.ROM_DBAI' else
    if ACampo = 'Dt. Nota Fiscal' then
    SRet := 'Pedidos.ROM_DNFE';
  end;

  Result := SRet;
end;

{ Retorna Posição X,Y }
(***********************************************************)
function oRETXYPoint(var AControl: TObject): TPoint; STDCall;
(***********************************************************)
var
  XY: TPoint;
begin
  XY := Point(0,0);
  XY := TControl(AControl).ClientToScreen(XY);

  Result := XY
end;

{ Retorna a soma das dos widths das colunas visíveis }
(*******************************************************************)
function oTdxDBGrid_ColumnWidth(AdxDBGrid: TdxDBGrid): Word; STDCall;
(*******************************************************************)
var
  i: Word;
begin
  result := 0;
  if AdxDBGrid.ColumnCount > 0 then
     for i := 0 to AdxDBGrid.ColumnCount - 1 do
         if ((AdxDBGrid.Columns[i].Tag = 0) and (AdxDBGrid.Columns[i].Visible)) then
              Result := Result + AdxDBGrid.Columns[i].Width;
end;

{ Retorna a quantidade de casas decimais }
(*********************************************************)
function oDecimalCount(AValor: Extended): Integer; STDCall;
(*********************************************************)
Var
  x: String;
  i,
  c: Word;
begin
  i := Length(FloatToStr(Trunc(AValor)))+2;
  x := FloatToStr(AValor);
  c := Length(Trim(Copy(x,i,10)));

  Result := IFThen(c = 1,2,c);
end;

{ Elimina casas decimais de números reais }
(*******************************************************)
function oDecimalDelete(AValor: Extended): Real; STDCall;
(*******************************************************)
begin
  Result := (Trunc(AValor*100)/100);
end;

{ Retorna o valor conforme o número de casas decimais desejadas }
(***********************************************************************)
function oTruncValor(AValor: Double; ADigitos: Integer): Double; STDCall;
(***********************************************************************)
var
  DFactor: Double;
begin
  if oDecimalCount(AValor) <> ADigitos then
  begin
    ADigitos := ADigitos * -1;
    DFactor := IntPower(10, ADigitos);
    Result  := AValor / DFactor;
    Result  := Trunc(Result);
    Result  := Result * DFactor;
  end else
  begin
    DFactor := AValor;
    Result  := DFactor;
  end;
end;

{ Retorna valor formatado Extended }
(*********************************************************************************)
function oFloatToText(AValor: Extended; APrecisao,ADigitos: Word): String; STDCall;
(*********************************************************************************)
var
  FormatSettings: TFormatSettings;
  Buffer: Array[0..63] of Char;
begin
  AValor := oTruncValor(AValor,ADigitos);
  GetLocaleFormatSettings(GetUserDefaultLCID, FormatSettings);
  SetString(Result, Buffer, FloatToText(Buffer, AValor, fvExtended, ffGeneral, APrecisao, ADigitos, FormatSettings));
end;

{ Retorna valor formatado Currency }
(*********************************************************************************)
function oCurrToText(AValor: Currency; APrecisao,ADigitos: Word): String; STDCall;
(*********************************************************************************)
var
  FormatSettings: TFormatSettings;
  Buffer: Array[0..63] of Char;
begin
  AValor := oTruncValor(AValor,ADigitos);
  GetLocaleFormatSettings(GetUserDefaultLCID, FormatSettings);
  SetString(Result, Buffer, FloatToText(Buffer, AValor, fvCurrency, ffGeneral, 0, ADigitos, FormatSettings));
end;

{ Retorna apenas os números e a vírgula }
(***************************************************************************************)
function oTrimValor(AValor: String;AReturning: TReturning = lrVariant): Variant; STDCall;
(***************************************************************************************)
var
  i   : Word;
  SRet: String;
begin
  if ((AValor = Null) or (oEmpty(AValor))) then
       AValor := '0';
       AValor := Trim(AValor);

  SRet   := '';
  for i  := 1 to Length(AValor) do
      if (Pos(AValor[i],Numeros) > 0) or
         (Pos(AValor[i],',') > 0) or
         (Pos(AValor[i],'-') > 0) then
  SRet   := SRet + AValor[i];
  SRet   := IFThen(SRet = '','0',SRet);

  if AReturning = lrFloat then
     Result := StrToFloat(SRet) else
  if AReturning = lrInteger then
     Result := StrToInt(SRet)
  else
     Result := SRet;
end;

{ Retorna valor formatado - até 4 casas decimais = currency, > 4 Extended }
(*******************************************************************************************************)
function oTextToValor(AValor: Variant; ADigitos: Word = 2;AXmlFormat: Boolean = False): Variant; STDCall;
(*******************************************************************************************************)
var
  WPrecisao: Word;
begin
    {
      Precisões
      Digitos de 0 até 2 = 13 - Currency
      Digitos de 3 até 4 = 12 - Currency
      Digitos Acima de 4 = 11 - Extended

      Decidi tratar como currency os digitos até 4, pois assim terei menos problemas com arredondamentos
    }

  try
    Result := IFThen(ADigitos > 0,'0,00','0');
    if not oEmpty(AValor) then
    begin
      if (Pos('.',AValor) > 0) and (Pos(',',AValor) = 0) then
      AValor := oStrTran(AValor,'.',',');

      Case ADigitos of
        1..2: begin
                ADigitos  := 02;
                WPrecisao := 13;
              end;
        3..4: WPrecisao := 12;
        else  WPrecisao := 18;
      end;

      if ADigitos = 0 then
      begin
        Result := oFloatToText(StrToFloat(oTrimValor(AValor)),WPrecisao,ADigitos);
        Result := FormatFloat('0',StrToFloat(oTrimValor(Result)));
      end else
      if ADigitos = 2 then
      begin
        Result := oCurrToText (StrToCurr (oTrimValor(AValor)),WPrecisao,ADigitos);
        Result := FormatFloat(IFThen(AXMLFormat,'0.00',',##,0.00'),StrToCurr(oTrimValor(Result)));
      end else
      if ADigitos = 3 then
      begin
        Result := oCurrToText (StrToCurr (oTrimValor(AValor)),WPrecisao,ADigitos);
        Result := FormatFloat(IFThen(AXMLFormat,'0.000',',##,0.000'),StrToCurr(oTrimValor(Result)));
      end else
      if ADigitos = 4 then
      begin
        Result := oCurrToText (StrToCurr (oTrimValor(AValor)),WPrecisao,ADigitos);
        Result := FormatFloat(IFThen(AXMLFormat,'0.0000',',##,0.0000'),StrToCurr(oTrimValor(Result)));
      end else
      begin
        Result := oFloatToText(StrToFloat(oTrimValor(AValor)),WPrecisao,ADigitos);
        Result := FormatFloat(IFThen(AXMLFormat,'0.########',',##,0.########'),StrToFloat(oTrimValor(Result)));
      end;
    end;
  except
    Result := IFThen(ADigitos > 0,'0,00','0');
  end;

  if ADigitos > 0 then
  begin
    if Pos(',',Result) = 0 then
    Result := Result + ',00';

    if AXmlFormat then //and (VarType(AValor) = varString) then
    begin
      if Result = 0 then Result := '0,00';
      Result := oStrTran(Result,',','.');
    end;
  end;
end;

{ Obter a versão do Windows }
(***********************************)
function oGetPCNome: String; STDCall;
(***********************************)
var ipbuffer : string;
      nsize : dword;
begin
  nsize := 255;
  SetLength(ipbuffer,nsize);
  if GetComputerName(pchar(ipbuffer),nsize) then
  result := LeftStr(ipbuffer,nSize);
end;

{ Formata key conforme padrão dos bancos }
(*************************************************************************)
procedure oFormatValorKeyDown(var Sender: TObject; var Key: Word); STDCall;
(*************************************************************************)
begin
  if Sender.ClassType = TdxEdit then
  TdxEdit(Sender).Tag := IFThen((key = vk_back) or (key = vk_delete),1,0) else
  if Sender.ClassType = TdxMaskEdit then
  TdxMaskEdit(Sender).Tag := IFThen((key = vk_back) or (key = vk_delete),1,0) else
  if Sender.ClassType = TdxCurrencyEdit then
  TdxCurrencyEdit(Sender).Tag := IFThen((key = vk_back) or (key = vk_delete),1,0);
end;

{ Formata key conforme padrão dos bancos }
(**************************************************************************)
procedure oFormatValorKeyPress(var Sender: TObject; var Key: Char); STDCall;
(**************************************************************************)
begin
  if not (key in ['0'..'9',',',#8]) then key := #0;
end;


{ Formata key conforme padrão dos bancos }
(********************************************************)
procedure oFormatValorEnter(var Sender: TObject); STDCall;
(********************************************************)
begin
  if Sender.ClassType = TdxEdit then
  TdxEdit(Sender).SelStart := Length(TdxEdit(Sender).Text) else
  if Sender.ClassType = TdxMaskEdit then
  TdxMaskEdit(Sender).SelStart := Length(TdxMaskEdit(Sender).Text) else
  if Sender.ClassType = TdxCurrencyEdit then
  TdxCurrencyEdit(Sender).SelStart := Length(TdxCurrencyEdit(Sender).Text);
end;

{ Formata valor conforme padrão dos bancos }
(***************************************************)
procedure oFormatValor(var Sender: TObject); STDCall;
(***************************************************)
var
  WCount,
  WPosic,
  WTamanho: Integer;
  SATexto,
  SATexto1,
  SATexto2: String;
  BRet    : Boolean;
begin
  BRet := False;
  if Sender.ClassType = TdxEdit then
  begin
    BRet   := (TdxEdit(Sender).Tag = 0);
    SATexto :=  TdxEdit(Sender).Text;
  end else
  if Sender.ClassType = TdxMaskEdit then
  begin
    BRet   := (TdxMaskEdit(Sender).Tag = 0);
    SATexto :=  TdxMaskEdit(Sender).Text;
  end else
  if Sender.ClassType = TdxCurrencyEdit then
  begin
    BRet   := (TdxCurrencyEdit(Sender).Tag = 0);
    SATexto :=  TdxCurrencyEdit(Sender).Text;
  end;

  if BRet then
  begin
    if SATexto <> '' then
       if SATexto[Length(SATexto)] = '0' then
          if Pos(',',SATexto) = 0 then
          SATexto := SATexto+'00' else
          if Length(Copy(SATexto,Pos(',',SATexto)+1,3)) = 2 then
          SATexto := SATexto+'0';

    WTamanho := Length(SATexto);
    SATexto1  := SATexto;
    SATexto2  := '';

    { Remove pontos }
    if WTamanho > 6 then
    begin
      Delete(SATexto, Pos('.',SATexto), 1);
      SATexto := SATexto;
    end;

    { Retira pontos e reformata a string }
    WPosic := 0;
    for WCount := Length(SATexto1) downto 1 do
        if (Copy(SATexto1,WCount,1) >= '0') and (Copy(SATexto1,WCount,1) <= '9') then
        begin
          WPosic := WPosic + 1;
          if WPosic = 3 then SATexto2 := Copy(SATexto1,WCount,1)+','+SATexto2 else
          if WPosic = 6 then SATexto2 := Copy(SATexto1,WCount,1)+'.'+SATexto2 else
          if WPosic = 9 then SATexto2 := Copy(SATexto1,WCount,1)+'.'+SATexto2 else
          SATexto2 := Copy(SATexto1,WCount,1)+SATexto2;
        end;

    SATexto := SATexto2;

    { Ajusta os zeros }
    if WTamanho = 1  then SATexto := '00,0'+SATexto;
    if WTamanho = 2  then SATexto := '0'   +SATexto;
    if SATexto   = '' then SATexto := '000';

    if WTamanho <= 6 then
    SATexto := FormatFloat('#,##0.00', StrToCurr(oTrimValor(SATexto)));
  end;

  SATexto := IFThen(SATexto = '','0,00', SATexto);

  if Sender.ClassType = TdxEdit then
  begin
    TdxEdit(Sender).Text     := SATexto;
    TdxEdit(Sender).SelStart := Length(SATexto);
  end else
  if Sender.ClassType = TdxMaskEdit then
  begin
    TdxMaskEdit(Sender).Text     := SATexto;
    TdxMaskEdit(Sender).SelStart := Length(SATexto);
  end else
  if Sender.ClassType = TdxCurrencyEdit then
  begin
    TdxCurrencyEdit(Sender).Value    := oTrimValor(SATexto);
    TdxCurrencyEdit(Sender).SelStart := Length(SATexto);
  end;
end;

{ Preenche os Edits do Form }
(***************************************************)
procedure oFillEdicao(var Sender: TIBQuery); STDCall;
(***************************************************)
var
  Form : TForm;
  Value: Variant;
  i: Word;
begin
  { Descobre quem é o pai da criança }
  if Sender.FieldCount = 0 then
  Exit;

  Form := Sender.Owner as TForm;
  if Form <> Nil then
  with Form do
  for i := 0 to Sender.FieldCount - 1 do
  begin
    Value := Sender.Fields[i].Value;
    if Sender.Fields[i].IsNull then
    begin
      Value := '';
      if (Sender.Fields[i].DataType = ftSmallint) or (Sender.Fields[i].DataType = ftWord)     or (Sender.Fields[i].DataType = ftInteger)  or (Sender.Fields[i].DataType = ftLargeint) then
      Value := '0' else
      if (Sender.Fields[i].DataType = ftFloat)    or (Sender.Fields[i].DataType = ftCurrency) or (Sender.Fields[i].DataType = ftBCD) then
      Value := 0;

      { Sender.Fields[i].Tag = 1 - usado para inclusões, ele será instanciado antes do chamado da função oFillEdicao }
      if (Sender.Fields[i].DataType = ftDate) or (Sender.Fields[i].DataType = ftDateTime) then
         if Sender.Fields[i].Tag = 1 then Value := Date else Value := 0;
    end;

    { Tag Componente e Tag do Form <> 0 enabled = false nas alterações }
    if Copy(Sender.Fields[i].FieldName,1,2) = 'ED' then
    begin
      if (Form.Tag <> 0) and (TdxEdit(FindComponent(Sender.Fields[i].FieldName)).Tag <> 0) then
      TdxEdit(FindComponent(Sender.Fields[i].FieldName)).Enabled := False;
      TdxEdit(FindComponent(Sender.Fields[i].FieldName)).Text    := Trim(Value);
    end else
    if Copy(Sender.Fields[i].FieldName,1,1) = 'M'  then
    begin
      if (Form.Tag <> 0) and (TdxMemo(FindComponent(Sender.Fields[i].FieldName)).Tag <> 0) then
      TdxMemo(FindComponent(Sender.Fields[i].FieldName)).Enabled := False;
      TdxMemo(FindComponent(Sender.Fields[i].FieldName)).Text    := Trim(Value);
    end else
    if Copy(Sender.Fields[i].FieldName,1,2) = 'BE' then
    begin
      if (Form.Tag <> 0) and (TdxButtonEdit(FindComponent(Sender.Fields[i].FieldName)).Tag <> 0) then
      TdxButtonEdit(FindComponent(Sender.Fields[i].FieldName)).Enabled := False;
      TdxButtonEdit(FindComponent(Sender.Fields[i].FieldName)).Text    := Value;
    end else
    if Copy(Sender.Fields[i].FieldName,1,2) = 'IE' then
    begin
      if (Form.Tag <> 0) and (TdxImageEdit(FindComponent(Sender.Fields[i].FieldName)).Tag <> 0) then
      TdxImageEdit(FindComponent(Sender.Fields[i].FieldName)).Enabled := False;
      TdxImageEdit(FindComponent(Sender.Fields[i].FieldName)).Text    := Value;
    end else
    if Copy(Sender.Fields[i].FieldName,1,2) = 'PE' then
    begin
      if (Form.Tag <> 0) and (TdxPickEdit(FindComponent(Sender.Fields[i].FieldName)).Tag <> 0) then
      TdxPickEdit(FindComponent(Sender.Fields[i].FieldName)).Enabled := False;
      TdxPickEdit(FindComponent(Sender.Fields[i].FieldName)).Text    := Value;
    end else
    if Copy(Sender.Fields[i].FieldName,1,2) = 'CE' then
    begin
      if (Form.Tag <> 0) and (TdxCurrencyEdit(FindComponent(Sender.Fields[i].FieldName)).Tag <> 0) then
      TdxCurrencyEdit(FindComponent(Sender.Fields[i].FieldName)).Enabled := False;
      TdxCurrencyEdit(FindComponent(Sender.Fields[i].FieldName)).Text    := Value;
    end else
    if Copy(Sender.Fields[i].FieldName,1,2) = 'DE' then
    begin
      if (Form.Tag <> 0) and (TdxDateEdit(FindComponent(Sender.Fields[i].FieldName)).Tag <> 0) then
      TdxDateEdit(FindComponent(Sender.Fields[i].FieldName)).Enabled := False;
      if Value > 0 then
      TdxDateEdit(FindComponent(Sender.Fields[i].FieldName)).Date := Value else
      TdxDateEdit(FindComponent(Sender.Fields[i].FieldName)).Clear;
    end;
  end;
end;

{ Retorna Dígito para EAN13 }
(****************************************************)
function oRETEAN13(ABarCode: String): String; STDCall;
(****************************************************)
var nX    : Integer;
   nPeso  : Integer;
   nSoma  : Double;
   nMaior : Double;
   nDigito: Integer;
Begin
  nPeso := 3;
  nSoma := 0;

  For nX := 12 DownTo 1 do
  Begin
    nSoma := nSoma + StrToInt( ABarCode[ nX ] ) * nPeso;
    If nPeso = 3 Then
    nPeso := 1 Else
    nPeso := 3;
  End;

  nMaior  := ( ( Trunc( nSoma / 10 ) + 1 ) * 10 );
  nDigito := Trunc( nMaior ) - Trunc( nSoma );
  If nDigito = 10 Then
  nDigito := 0;

  Result := IntToStr( nDigito );
End;

{ Retorna BarCode Conforme Alfabeto }
(***********************************************************)
function oBarCode(ARECDefault: TRECDefault): String; STDCall;
(***********************************************************)
var
  i,j    : Word;
  BarCode: String;
begin
  if oEmpty(ARECDefault.CD) then
     oException(Nil,'Código do Produto não Informado !');

  if ARECDefault.ID = 0 then
     with ARECDefault.ASQLEdicao do
     begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(IDG_CAD_PRO,0) FROM RDB$DATABASE');
      ExecQuery;
      ARECDefault.ID := IntToStr(Current.Vars[0].AsInteger + 1);
     end;

  if ARECDefault.ID = 0 then
     oException(Nil,'ID do Produto não Informado !');

  ARECDefault.CD := Trim(UpperCase(ARECDefault.CD));
  ARECDefault.CD := Trim(StringReplace(ARECDefault.CD,'.','',[rfReplaceAll,rfIgnoreCase]));
  ARECDefault.CD := Trim(StringReplace(ARECDefault.CD,'/','',[rfReplaceAll,rfIgnoreCase]));
  ARECDefault.CD := Trim(StringReplace(ARECDefault.CD,'\','',[rfReplaceAll,rfIgnoreCase]));
  ARECDefault.CD := Trim(StringReplace(ARECDefault.CD,'-','',[rfReplaceAll,rfIgnoreCase]));
  ARECDefault.CD := Trim(StringReplace(ARECDefault.CD,'_','',[rfReplaceAll,rfIgnoreCase]));
  ARECDefault.CD := Trim(StringReplace(ARECDefault.CD,',','',[rfReplaceAll,rfIgnoreCase]));
  ARECDefault.CD := Trim(StringReplace(ARECDefault.CD,'`','',[rfReplaceAll,rfIgnoreCase]));
  ARECDefault.CD := Trim(StringReplace(ARECDefault.CD,'´','',[rfReplaceAll,rfIgnoreCase]));

  BarCode := '';
  for i := 1 to Length(ARECDefault.CD) do
      for j := Low(aAlfabeto) to High(aAlfabeto) do
             if aAlfabeto[j,0] = UpperCase(ARECDefault.CD[i]) then
             begin
               BarCode := BarCode + aAlfabeto[j,1];
               Break;
             end;

  BarCode := Trim(StringReplace(BarCode,'0','',[rfReplaceAll,rfIgnoreCase]));
  BarCode := LeftStr('789' + ARECDefault.ID + oStrZero(StrToInt(LeftStr(BarCode,8)),9-Length(ARECDefault.ID)),12);
  BarCode := BarCode + oRETEAN13(BarCode);

  result := BarCode;
end;

{ Retorna Número de repetições de uma String }
(*******************************************************************************)
function oPosCount(const ASubTexto: string; ATexto: string): Integer; STDCall;
(*******************************************************************************)
begin
  if (Length(ASubTexto) = 0) or (Length(ATexto) = 0) or (Pos(ASubTexto, ATexto) = 0) then
  Result := 0 else
  Result := (Length(ATexto) - Length(StringReplace(ATexto,ASubTexto,'',
      [rfReplaceAll]))) div Length(ASubTexto);
end;

{ Retorna Tipo de Preço }
(**********************************************************)
function oRETTiposPrecos(ATipoPreco: String): Word; STDCall;
(**********************************************************)
var
  i: Word;
begin
  result     := 0;
  ATipoPreco := Trim(ATipoPreco);
  for i := Low(aTiposPrecos) to High(aTiposPrecos) do
      if (aTiposPrecos[i,0] = ATipoPreco) or (aTiposPrecos[i,1] = ATipoPreco) then
      begin
        result := StrToInt(aTiposPrecos[i,1]);
        Break;
      end;
end;

{ Retorna Saldo do Rateio }
(*********************************************************************************)
procedure oRETRateio(var ARECPrincipal: TRECPrincipal;ADigitos: Word = 2); STDCall;
(*********************************************************************************)
begin
{  ARECPrincipal.VLRRateio := oTextToValor(ARECPrincipal.TOTRateio / ARECPrincipal.QTDRateio,ADigitos);
  ARECPrincipal.SLDRateio := ARECPrincipal.VLRRateio + (ARECPrincipal.TOTRateio - (ARECPrincipal.VLRRateio * ARECPrincipal.QTDRateio));




  try
    RECPrincipal.TOTRateio := oTextToValor(edvfrete.Text);
    RECPrincipal.QTDRateio := EDTRCom.Tag;
    oRETRateio(RECPrincipal);

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE NFE_ITE');
      SQL.Add('SET    NFE_VFRETE = '''+oTextToValor(RECPrincipal.VLRRateio,2,True)+'''');
      ExecQuery;

      SQL.Add('UPDATE NFE_ITE');
      SQL.Add('SET    NFE_VFRETE = '''+oTextToValor(RECPrincipal.SLDRateio,2,True)+'''');
      SQL.Add('WHERE )
      ExecQuery;

select t.* from tab_cor t
where t.id = (select first 1 t2.id
              from tab_cor t2
              order by t2.id desc)
 }
end;

{ Retorna Composicao }
(***********************************************************************************)
function oRETComposicao(AComposicao: String; ATamMaxLin: Word = 55): String; STDCall;
(***********************************************************************************)
var
  QTLin: Word;
begin
  AComposicao := Trim(StringReplace(AComposicao,',00%','%',[rfreplaceall]));

  QTLin := IFThen(oPosCount('%',AComposicao) < 4,1,
           IFThen(oPosCount('%',AComposicao) > 4,2,
           IFThen((Length(AComposicao) > ATamMaxLin) and
                  (ATamMaxLin > 0),2,1)));

  if QTLin = 1 then
  result := AComposicao else
  begin
    result := oRETQComposicao(AComposicao,3);
    result := result + '|' + Trim(Copy(AComposicao,Length(result) + 1,Length(AComposicao)));
  end;
end;

{ Retorna Quebra de Composicao }
(**************************************************************************)
function oRETQComposicao(AComposicao: String;AQTPos: Word): String; STDCall;
(**************************************************************************)
var
  i,
  QTPos: word;
begin
  QTPos  := 0;
  result := '';
  for i  := 1 to Length(AComposicao) do
  begin
    result := Trim(LeftStr(AComposicao,i));
    if (AComposicao[i]   = '%') then inc(QTPos);
    if (QTPos = AQTPos) and
       ((AComposicao[i+1] = '%') or (AComposicao[i+2] = '%') or
        (AComposicao[i+3] = '%')) then
    Break;
  end;
end;

{ Retorna em KB o tamanho de um arquivo }
(***************************************************************)
function oRETFileSize(const AFileName: String): LongInt; STDCall;
(***************************************************************)
var
  SearchRec: TSearchRec;
begin
  try
    if FindFirst(ExpandFileName(AFileName), faAnyFile, SearchRec) = 0 then
    Result := SearchRec.Size else
    Result := -1;
  finally
    SysUtils.FindClose(SearchRec);
  end;
end;

{ Retorna Linha Delimitada }
(*****************************************************************************)
function oGetLinha(AValue: String;ADelimitador: String = ';'): String; STDCall;
(*****************************************************************************)
begin
  result := '';
  AValue := Trim(AValue);

  inc(Delimitador);
  if not oEmpty(AValue) then
  while AValue[Delimitador] >= ' ' do
  begin
    if AValue[Delimitador] = ADelimitador then Break;
    result := result + AValue[Delimitador];
    inc(Delimitador);
  end;
  result := Trim(Result);                                     
end;

{ Converte String para UTF8 }
(*****************************************************************)
function oStrToUTF8(const AValue: WideString): AnsiString; STDCall;
(*****************************************************************)
var
  BufferLen: Integer;
begin
  result := '';
  if AValue <> '' then
  begin
    BufferLen := WideCharToMultiByte(CP_UTF8, 0, PWideChar(AValue), -1, nil, 0, nil, nil);
    SetLength(Result, BufferLen - 1);
    if BufferLen > 1 then
    WideCharToMultiByte(CP_UTF8, 0, PWideChar(AValue), -1, PAnsiChar(Result), BufferLen - 1, nil, nil);
    result := Trim(result);
  end;
end;

{ Converte UTF8 para String }
(*****************************************************************)
function oUTF8ToStr(const AValue: AnsiString): WideString; STDCall;
(*****************************************************************)
var
  BufferLen: integer;
begin
  result := '';
  if AValue <> '' then
  begin
    BufferLen := MultiByteToWideChar(CP_UTF8, 0, PAnsiChar(AValue), -1, nil, 0);
    SetLength(Result, BufferLen - 1);
    if BufferLen > 1 then
    MultiByteToWideChar(CP_UTF8, 0, PAnsiChar(AValue), -1, PWideChar(Result), BufferLen - 1);
    result := Trim(result);
  end;
end;

{ Assign Imagem Jpeg }
(*************************************************************************************************************)
function _oLoadJPG(FIMG_ID,FIMG_PAD: TField; AIMG_PAD: TObject;AIMG_PAD_SHOW: Boolean = True): String; STDCall;
(*************************************************************************************************************)
var
  FTStream: TMemoryStream;
  FTJpeg  : TJpegImage;
begin
  if not ALockWindowUpdate then
     if not (TDataSetState(FIMG_ID) in [dsInsert,dsEdit]) then
        if  (FIMG_PAD.Tag = 0) or (FIMG_ID.Tag <> FIMG_ID.AsInteger) then
             try
               FTJpeg   := TJpegImage.Create;
               FTStream := TMemoryStream.Create;
               FTStream.Clear;

               FIMG_ID.Tag  := FIMG_ID.AsInteger;
               FIMG_PAD.Tag := 1;

               if not FIMG_PAD.IsNull then
                  TBlobField(FIMG_PAD).SaveToStream(FTStream)
               else
                  if (AIMG_PAD_SHOW) and (RECParametros.Id > 0) then
                      TBlobField(RECParametros.IMG_JPG_BLANK).SaveToStream(FTStream);

                  FTStream.Position := 0;
               if FTStream.Size      > 0 then
               begin
                 FTJpeg.LoadFromStream(FTStream);
                 if AIMG_PAD.ClassType = TImage then
                 begin
                   TImage(AIMG_PAD).Picture.Assign(FTJpeg);
                   TImage(AIMG_PAD).Hint := 'Dimensões: ' + IntToStr(FTJpeg.Width) + 'x' + IntToStr(FTJpeg.Height) + ' - ' + Format('Tamanho: %f KB',[FTStream.Size / 1000]);
                 end;
               end else
               if AIMG_PAD.ClassType = TImage then
               begin
                 TImage(AIMG_PAD).Picture.Assign(Nil);
                 TImage(AIMG_PAD).Hint := EmptyStr;
               end;
             finally
               FreeAndNil(FTStream);
               FreeAndNil(FTJpeg);
             end;

  if AIMG_PAD.ClassType = TImage then
     result := TImage(AIMG_PAD).Hint else
     result := EmptyStr;
end;

{ Assign Imagem Jpeg }
(******************************************************************************************)
function oLoadJPG(ACampo: TField; AImagem: TPicture;APAD: Boolean = True): LongInt; STDCall;
(******************************************************************************************)
var
  FTStream: TMemoryStream;
  FTJpeg  : TJpegImage;
begin
  FTJpeg   := TJpegImage.Create;
  FTStream := TMemoryStream.Create;
  FTStream.Clear;

  try
    if not ACampo.IsNull then
       TBlobField(ACampo).SaveToStream(FTStream) else
       if (APAD) and (RECParametros.Id > 0) then
           TBlobField(RECParametros.IMG_JPG_BLANK).SaveToStream(FTStream);

    FTStream.Position := 0;
    if FTStream.Size   > 0 then
    begin
      FTJpeg.LoadFromStream(FTStream);
      AImagem.Assign(FTJpeg);
    end else
    AImagem.Assign(Nil);
  finally
    Result := FTStream.Size;

    FreeAndNil(FTStream);
    FreeAndNil(FTJpeg);
  end;
end;

{ Assign Imagem Bitmap }
(*********************************************************************)
function oLoadBMP(ACampo: TField; AImagem: TPicture): LongInt; STDCall;
(*********************************************************************)
var
  FTBitmap: TBitmap;
  FTStream: TMemoryStream;
begin
  FTBitmap := TBitmap.Create;
  FTStream := TMemoryStream.Create;
  FTStream.Clear;

  try
    if not ACampo.IsNull then
       TBlobField(ACampo).SaveToStream(FTStream);

    FTStream.Position := 0;
    if FTStream.Size   > 0 then
    begin
      FTBitmap.LoadFromStream(FTStream);
      AImagem.Assign(FTBitmap);
    end else
    AImagem.Assign(Nil);
  finally
    Result := FTStream.Size;

    FreeAndNil(FTStream);
    FreeAndNil(FTBitmap);
  end;
end;

{ Assign Stream de Imagem }
(**************************************************************)
function oLoadStream(AImagem: TPicture): TMemoryStream; STDCall;
(**************************************************************)
var
  AFTStream: TMemoryStream;
begin
  AFTStream := TMemoryStream.Create;
  AFTStream.Clear;

  if AImagem.Graphic <> Nil then
  begin
    AImagem.Graphic.SaveToStream(AFTStream);
    AFTStream.Position := 0;
  end;
  
  result := AFTStream;
end;

{ Retorna Null para variáveis vazias - Usado em Insert/Update Querys }
(*********************************************************************)
function oNullIF(AValue: Variant): Variant; STDCall;
(*********************************************************************)
begin
  //result := IFThen(AValue <> Null,IFThen(oEmpty(AValue),NullAsStringValue,Trim(AValue)),Null);

  if AValue <> Null then
     if oEmpty(AValue) then
        AValue := NullAsStringValue else
        AValue := Trim(AValue);

  result := AValue;
end;

{ Retorna valor pré-determinado para variáveis vazias ou nulas }
(*******************************************************************)
function oCoalesce(AVLPK: Variant; AVLFK: Variant): Variant; STDCall;
(*******************************************************************)
begin
  if oEmpty(AVLPK) then
     AVLPK  := AVLFK;
     result := AVLPK;
end;

{ Verificar se a variável está vazia }
(*************************************************)
function oEmpty(AValue: Variant): Boolean; STDCall;
(*************************************************)
begin
{  AValue := Trim(AValue);
  if (oPosCount('/',AValue) = 2) or (oPosCount(':',AValue) = 2) then
      Result := (AValue <= '12/30/1899') or (AValue <= '30/12/1899') or (AValue = '  /  /    ') or (AValue = '  /  /  ')  or (AValue = '//') or (AValue = '00/00/0000') or (AValue = '00/00/00') or (AValue = '::') or (AValue = '00:00:00'  )
  else
      Result := ((AValue = EmptyStr   ) or (VarIsClear(AValue)) or (VarIsEmpty(AValue)   ) or  (VarIsNull(AValue )) or (VarCompareValue(AValue,Unassigned) = vrEqual)) or
                ((VarIsNumeric(AValue)) or (VarIsFloat(AValue)) or (VarIsOrdinal(AValue))) and ((AValue = 0       ) or (AValue = '0') or (AValue = -700000));}

  Result := VarIsClear(AValue) or VarIsEmpty(AValue ) or VarIsNull(AValue ) or (VarCompareValue (AValue , Unassigned) = vrEqual);
  if (not Result) then
      if VarIsStr(AValue) then
         Result := (Trim(AValue) = EmptyStr) else
         if oPosCount('/',AValue) = 2 then
            Result := (AValue <= '12/30/1899') or (AValue <= '30/12/1899') or (AValue <= '17/11/1858')
         else
            Result := (AValue = 0) or (AValue = -700000);
                
end;

{ Retorna Verdadeiro para CNPJ Válido }
(***********************************************)
function oCNPJ(ATexto: String): Boolean; STDCall;
(***********************************************)
var
  CalcCNPJ,S1,S2: String;
  i,Soma,Digito : Integer;
begin
  ATexto := Trim(ATexto);
  Result := False;

  { CNPJ somente com dígitos }
  S1    := '';
  for i := 1 to Length(ATexto) do
  begin
    S2  := Copy(ATexto,i,1);
    if Pos(S2,Numeros) > 0 then
    S1  := S1 + S2;
  end;
  S1    := Trim(S1);

  { Não é CNPJ, pois não são 14 dígitos }
  if S1 = '' then
  begin
    Result := True;
    Exit;
  end;
    
  if Length(S1) <> 14 then
  Exit;

  if S1 = '00000000000000' then
  Exit;

  CalcCNPJ := Copy(S1,1,12);

  { Cálculo do 1º dígito }
  Soma     := 0;
  for    i := 1 to 4 do
  Soma     := Soma + StrToInt(Copy(CalcCNPJ,i,1))     * (6 - i);

  for    i := 1 to 8 do
  Soma     := Soma + StrToInt(Copy(CalcCNPJ,i + 4,1)) * (10 - I);

  Digito   := 11   - (Soma mod 11);
  if Digito in [10,11] then
  CalcCNPJ := CalcCNPJ + '0' else
  CalcCNPJ := CalcCNPJ + IntToStr(Digito);

  { Cálculo do 2º dígito }
  Soma     := 0;
  for    i := 1 to 5 do
  Soma     := Soma + StrToInt(Copy(CalcCNPJ,i,1))     * (7 - i);

  for    i := 1 to 8 do
  Soma     := Soma + StrToInt(Copy(CalcCNPJ,i + 5,1)) * (10 - i);

  Digito   := 11 - (Soma mod 11);
  if Digito in [ 10, 11 ] then
  CalcCNPJ := CalcCNPJ + '0' else
  CalcCNPJ := CalcCNPJ + IntToStr(Digito);

  if CalcCNPJ = S1 then
  Result   := True;
end;

{ Retorna a String formatada como CNPJ }
(***************************************************)
function oCNPJ_Mask(ATexto: String): String; STDCall;
(***************************************************)
begin
  result := oRETNumero(ATexto);
  result := IFThen(Length(result) < 14,'00000000000000',result);

  result := Copy(result,01,02) + '.' +
            Copy(result,03,03) + '.' +
            Copy(result,06,03) + '/' +
            Copy(result,09,04) + '-' +
            Copy(result,13,02);
end;

{ Retorna Verdadeiro para CPF Válido }
(**********************************************)
function oCPF(ATexto: String): Boolean; STDCall;
(**********************************************)
var
  B: Boolean;
  i, Soma, Digito: Integer;
  CalcCPF, S1, S2: String;
  C: Char;
begin
  ATexto := Trim(ATexto);
  Result := False;

  { CPF somente com dígitos }
  S1    := '';
  for i := 1 to Length(ATexto) do
  begin
    S2  := Copy(ATexto,i,1);
    if Pos(S2,Numeros) > 0 then
    S1  := S1 + S2;
  end;
  S1    := Trim(S1);

  { Não é CPF, pois não são 11 dígitos }
  if S1 = '' then
  begin
    Result := True;
    Exit;
  end;

  if Length(S1) <> 11 then
  Exit;

  if S1 = '00000000000' then
  Exit;

  { Teste se os 11 dígitos são iguais }
  B     := true;
  C     := S1[1];
  for i := 2 to 11 do
  begin
    B   := B and (S1[i] = C);
    C   := S1[I];
  end;

  { Todos dígitos iguais }
  if B then
  Exit;

  CalcCPF := Copy(S1,1,9);

  { Cálculo do 1º dígito }
  Soma    := 0;
  for   i := 1 to 9 do
  Soma    := Soma + StrToInt(Copy(CalcCPF,i,1)) * (11 - i);

  Digito  := 11   - (Soma mod 11);
  if Digito in [10,11] then
  CalcCPF := CalcCPF + '0' else
  CalcCPF := CalcCPF + IntToStr(Digito);

  { Cálculo do 2º dígito }
  Soma    := 0;
  for   i := 1 to 10 do
  Soma    := Soma + StrToInt(Copy(CalcCPF,i,1)) * (12 - i);

  Digito  := 11   - (Soma mod 11);
  if Digito in [ 10, 11 ] then
  CalcCPF := CalcCPF + '0' else
  CalcCPF := CalcCPF + IntToStr(Digito);

  if CalcCPF = S1 then
  Result  := True;
end;

{ Retorna String Formatada como CPF }
(**************************************************)
function oCPF_Mask(ATexto: String): String; STDCall;
(**************************************************)
begin
  result := oRETNumero(ATexto);
  result := IFThen(Length(result) < 11,'00000000000',result);

  result := Copy(result,01,03) + '.' +
            Copy(result,04,03) + '.' +
            Copy(result,07,03) + '-' +
            Copy(result,10,02);
end;

{ Retorna Verdadeiro para CPF OU CNPJ Válido }
(****************************************************)
function oCNPJouCPF(ATexto: String): Boolean; STDCall;
(****************************************************)
begin
  Result := (oCPF(ATexto) or oCNPJ(ATexto));
end;

{ Retorna a String formatada como CPF se tiver 11 dígitos,
  ou como CNPJ se tiver 14 dígitos }
(********************************************************)
function oCNPJouCPF_Mask(ATexto: String): String; STDCall;
(********************************************************)
begin
  if oCNPJ(ATexto) then oCNPJ_Mask(ATexto) else
  if oCPF (ATexto) then oCPF_Mask (ATexto) else
  result := EmptyStr;
end;

{ Retorna a String formatada como DDD }
(**************************************************)
function oDDD_Mask(ATexto: String): String; STDCall;
(**************************************************)
begin
  result := oRETNumero(ATexto);
  result := IFThen(Length(result) < 2,'00',result);

  result := '('+result+')';
end;

{ Retorna a String formatada como Telefone }
(**************************************************)
function oTEL_Mask(ATexto: String): String; STDCall;
(**************************************************)
begin
  result := oRETNumero(ATexto);
  result := IFThen(Length(result) < 8,'00000000',result);

  result := IFThen(Length(result) = 8,LeftStr(result,4) + '-' + RightStr(result,4),
                                      LeftStr(result,5) + '-' + RightStr(result,4));
end;

{ Retorna a String formatada como Cep }
(**************************************************)
function oCEP_Mask(ATexto: String): String; STDCall;
(**************************************************)
begin
  result := oRETNumero(ATexto);
  result := IFThen(Length(result) < 8,'00000000',result);

  result := IFThen(Length(result) = 8,LeftStr(result,4) + '-' + RightStr(result,4),
                                      LeftStr(result,5) + '-' + RightStr(result,4));
end;

{ Imprime cabeçalho do relatório }
(******************************************************************************************)
procedure oReportPageHeader(AReport: TQuickRep;var ARECRelatorios: TRECRelatorios); STDCall;
(******************************************************************************************)
          function _QRLEmpresa: String;
          var
            DString,DField: String;
            SLPesquisa: TStringList;
          begin
            result     := RECParametros.RAZAO;
            SLPesquisa := TStringList.Create;
            try
              SLPesquisa.Clear;
              DString := RECParametros.FANTASIA;
              While Length(DString) > 0 do
              begin
                DField := Fetch(DString,' ');
                if Length(DField) > 0 then
                   SLPesquisa.Add(DField);
              end;

              if SLPesquisa.Count > 0 then
                 if Pos(Trim(SLPesquisa.Strings[0]),RECParametros.RAZAO) = 0 then
                    result := RECParametros.FANTASIA+' - '+RECParametros.RAZAO;
            finally
              FreeAndNil(SLPesquisa);
            end;
          end;
begin
  { Executa impressora desejada }
  if Application.MainForm <> Nil then
     with Application.MainForm do
     begin
       if TAction(FindComponent('ACTExecPrinter')) <> Nil then
       begin
         TAction(FindComponent('ACTExecPrinter')).Hint := ARECRelatorios.PrintName;
         TAction(FindComponent('ACTExecPrinter')).Execute;
       end;
     end;

  if (RECUsuarios.CurrentPrinter = EmptyStr) or ((RECUsuarios.CurrentPrinter <> ARECRelatorios.PrintName) and (ARECRelatorios.PrintTAG < 2)) then
      ARECRelatorios.PrintTAG := 0;

  if AReport <> Nil then
     with AReport do
     begin
       { LOGO }
       if TQRImage(FindComponent('QRILogo')) <> Nil then
          oLoadJPG(RECParametros.IMG_JPG_REL,TQRImage(FindComponent('QRILogo')).Picture);

       { EMPRESA }
       if TQRLabel(FindComponent('QRLEmpresa')) <> Nil then
          TQRLabel(FindComponent('QRLEmpresa')).Caption := _QRLEmpresa;

       { TÍTULO }
       if TQRLabel(FindComponent('QRLPageHeaderTitulo')) <> Nil then { Ricardo - Manter esse nome e trocar os outros }
          TQRLabel(FindComponent('QRLPageHeaderTitulo')).Caption := ARECRelatorios.Titulo else

       if TQRLabel(FindComponent('QRLTitulo')) <> Nil then
          TQRLabel(FindComponent('QRLTitulo')).Caption := ARECRelatorios.Titulo;

       if TQRLabel(FindComponent('QRLPageHeaderSubTitulo')) <> Nil then
          TQRLabel(FindComponent('QRLPageHeaderSubTitulo')).Caption := ARECRelatorios.SubTitulo;

       ReportTitle := Trim(ARECRelatorios.Titulo+' '+oPrimeiraLetraMaiuscula(RECUsuarios.Login)+' IP '+RECParametros.IP+' '+RECParametros.HOST);
     end;
end;

{ Imprime rodapé do relatório }
(******************************************************************************************)
procedure oReportPageFooter(AReport: TQuickRep;var ARECRelatorios: TRECRelatorios); STDCall;
(******************************************************************************************)
begin
  if AReport <> Nil then
     with AReport do
     begin
       { FILTROS }
       if TQRLabel(FindComponent('QRLPageFooterFiltros')) <> Nil then { Ricardo - Manter esse nome e trocar os outros }
          TQRLabel(FindComponent('QRLPageFooterFiltros')).Caption := ARECRelatorios.RodapeFiltros else

       if TQRLabel(FindComponent('QRLRodapeFiltro')) <> Nil then
          TQRLabel(FindComponent('QRLRodapeFiltro')).Caption := ARECRelatorios.RodapeFiltros;

       { LOGIN }
       if TQRLabel(FindComponent('QRLPageFooterLogin')) <> Nil then
          TQRLabel(FindComponent('QRLPageFooterLogin')).Caption := 'Usuário ' + oPrimeiraLetraMaiuscula(RECUsuarios.Login) + ' ' + RECParametros.HOST + ' [' + RECParametros.IP +']' else

       if TQRLabel(FindComponent('QRLRodapeUsuario')) <> Nil then
          TQRLabel(FindComponent('QRLRodapeUsuario')).Caption := 'Usuário: ' + oPrimeiraLetraMaiuscula(RECUsuarios.Login) + ' - Dispositivo: ' + RECParametros.HOST + ' [' + RECParametros.IP +']';

       { PÁGINA }
       if TQRSysData(FindComponent('QRSPageFooterPagina')) <> Nil then
          TQRSysData(FindComponent('QRSPageFooterPagina')).Text :=  TQRSysData(FindComponent('QRSPageFooterPagina')).Text else

       if TQRSysData(FindComponent('QRSDRodapePagina')) <> Nil then
          TQRSysData(FindComponent('QRSDRodapePagina')).Text := 'Emissão: ' + FormatDateTime('dd/mm/yyyy hh:mm',Now) + ' - Página: ' + TQRSysData(FindComponent('QRSDRodapePagina')).Text;

       { HOST }
       if TQRLabel(FindComponent('QRLPageFooterHost')) <> Nil then
          TQRLabel(FindComponent('QRLPageFooterHost')).Caption := AReport.Name + ' - ' + FormatDateTime('dd.mm.yy hh:mm',Now) else

       if TQRLabel(FindComponent('QRLRodapeRelatorio')) <> Nil then
          TQRLabel(FindComponent('QRLRodapeRelatorio')).Caption := oPrimeiraLetraMaiuscula(RECParametros.FANTASIA) + ': ' + AReport.Name;
     end;
end;

{ Imprime fatura do relatório }
(*******************************************************************************************)
procedure oReportVencimentos(AReport: TQuickRep;var ARECRelatorios: TRECRelatorios); STDCall;
(*******************************************************************************************)
var
  i: Word;
begin
  ARECRelatorios.Sequencia := 0;
  if AReport <> Nil then
     with AReport do
     begin
       if (ARECRelatorios.ATConsulta<> Nil) and (ARECRelatorios.ASQLConsulta <> Nil) then
           if ARECRelatorios.ATConsulta.InTransaction then
           begin
             with ARECRelatorios.ASQLConsulta do
             begin
               Close;
               SQL.Clear;
               SQL.Add('SELECT FRC.FIN_TITU AS F_TITULO,FRC.FIN_DVEN AS F_VENCIMENTO,FRC.FIN_VALO AS F_VALOR,');
               SQL.Add('       IIF(FEMPTY(FRC.FIN_STFI),PK.STFI,FRC.FIN_STFI) AS STFI,PK.PZPG,PK.TCDE,');
               SQL.Add('       IIF((PK.VDUP*PK.PZPG) = PK.TCDE,PK.VDUP,IIF((PK.VDUP*PK.PZPG) > PK.TCDE,PK.VDUP + ((PK.VDUP*PK.PZPG)-PK.TCDE),PK.VDUP + (PK.TCDE-(PK.VDUP*PK.PZPG)))) AS VUDUP,');
               SQL.Add('       IIF(PK.PZPG >=  1,PK.PZPG - (PK.PZPG-1),0)  AS PZPG1,IIF(PK.PZPG >=  1,PK.DEPV,NULL)  AS P_TITULO1, IIF(PK.PZPG >=  1,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P1 ),NULL) AS P_VENCIMENTO1, IIF(PK.PZPG >=  1,PK.VDUP,0) AS P_VALOR1, ');
               SQL.Add('       IIF(PK.PZPG >=  2,PK.PZPG - (PK.PZPG-2),0)  AS PZPG2,IIF(PK.PZPG >=  2,PK.DEPV,NULL)  AS P_TITULO2, IIF(PK.PZPG >=  2,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P2 ),NULL) AS P_VENCIMENTO2, IIF(PK.PZPG >=  2,PK.VDUP,0) AS P_VALOR2, ');
               SQL.Add('       IIF(PK.PZPG >=  3,PK.PZPG - (PK.PZPG-3),0)  AS PZPG3,IIF(PK.PZPG >=  3,PK.DEPV,NULL)  AS P_TITULO3, IIF(PK.PZPG >=  3,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P3 ),NULL) AS P_VENCIMENTO3, IIF(PK.PZPG >=  3,PK.VDUP,0) AS P_VALOR3, ');
               SQL.Add('       IIF(PK.PZPG >=  4,PK.PZPG - (PK.PZPG-4),0)  AS PZPG4,IIF(PK.PZPG >=  4,PK.DEPV,NULL)  AS P_TITULO4, IIF(PK.PZPG >=  4,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P4 ),NULL) AS P_VENCIMENTO4, IIF(PK.PZPG >=  4,PK.VDUP,0) AS P_VALOR4, ');
               SQL.Add('       IIF(PK.PZPG >=  5,PK.PZPG - (PK.PZPG-5),0)  AS PZPG5,IIF(PK.PZPG >=  5,PK.DEPV,NULL)  AS P_TITULO5, IIF(PK.PZPG >=  5,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P5 ),NULL) AS P_VENCIMENTO5, IIF(PK.PZPG >=  5,PK.VDUP,0) AS P_VALOR5, ');
               SQL.Add('       IIF(PK.PZPG >=  6,PK.PZPG - (PK.PZPG-6),0)  AS PZPG6,IIF(PK.PZPG >=  6,PK.DEPV,NULL)  AS P_TITULO6, IIF(PK.PZPG >=  6,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P6 ),NULL) AS P_VENCIMENTO6, IIF(PK.PZPG >=  6,PK.VDUP,0) AS P_VALOR6, ');
               SQL.Add('       IIF(PK.PZPG >=  7,PK.PZPG - (PK.PZPG-7),0)  AS PZPG7,IIF(PK.PZPG >=  7,PK.DEPV,NULL)  AS P_TITULO7, IIF(PK.PZPG >=  7,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P7 ),NULL) AS P_VENCIMENTO7, IIF(PK.PZPG >=  7,PK.VDUP,0) AS P_VALOR7, ');
               SQL.Add('       IIF(PK.PZPG >=  8,PK.PZPG - (PK.PZPG-8),0)  AS PZPG8,IIF(PK.PZPG >=  8,PK.DEPV,NULL)  AS P_TITULO8, IIF(PK.PZPG >=  8,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P8 ),NULL) AS P_VENCIMENTO8, IIF(PK.PZPG >=  8,PK.VDUP,0) AS P_VALOR8, ');
               SQL.Add('       IIF(PK.PZPG >=  9,PK.PZPG - (PK.PZPG-9),0)  AS PZPG9,IIF(PK.PZPG >=  9,PK.DEPV,NULL)  AS P_TITULO9, IIF(PK.PZPG >=  9,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P9 ),NULL) AS P_VENCIMENTO9, IIF(PK.PZPG >=  9,PK.VDUP,0) AS P_VALOR9, ');

               SQL.Add('       IIF(PK.PZPG >= 10,PK.PZPG - (PK.PZPG-10),0) AS PZPG10,IIF(PK.PZPG >= 10,PK.DEPV,NULL) AS P_TITULO10,IIF(PK.PZPG >= 10,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P10),NULL) AS P_VENCIMENTO10,IIF(PK.PZPG >= 10,PK.VDUP,0) AS P_VALOR10,');
               SQL.Add('       IIF(PK.PZPG >= 11,PK.PZPG - (PK.PZPG-11),0) AS PZPG11,IIF(PK.PZPG >= 11,PK.DEPV,NULL) AS P_TITULO11,IIF(PK.PZPG >= 11,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P11),NULL) AS P_VENCIMENTO11,IIF(PK.PZPG >= 11,PK.VDUP,0) AS P_VALOR11,');
               SQL.Add('       IIF(PK.PZPG >= 12,PK.PZPG - (PK.PZPG-12),0) AS PZPG12,IIF(PK.PZPG >= 12,PK.DEPV,NULL) AS P_TITULO12,IIF(PK.PZPG >= 12,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P12),NULL) AS P_VENCIMENTO12,IIF(PK.PZPG >= 12,PK.VDUP,0) AS P_VALOR12,');
               SQL.Add('       IIF(PK.PZPG >= 13,PK.PZPG - (PK.PZPG-13),0) AS PZPG13,IIF(PK.PZPG >= 13,PK.DEPV,NULL) AS P_TITULO13,IIF(PK.PZPG >= 13,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P13),NULL) AS P_VENCIMENTO13,IIF(PK.PZPG >= 13,PK.VDUP,0) AS P_VALOR13,');
               SQL.Add('       IIF(PK.PZPG >= 14,PK.PZPG - (PK.PZPG-14),0) AS PZPG14,IIF(PK.PZPG >= 14,PK.DEPV,NULL) AS P_TITULO14,IIF(PK.PZPG >= 14,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P14),NULL) AS P_VENCIMENTO14,IIF(PK.PZPG >= 14,PK.VDUP,0) AS P_VALOR14,');
               SQL.Add('       IIF(PK.PZPG >= 15,PK.PZPG - (PK.PZPG-15),0) AS PZPG15,IIF(PK.PZPG >= 15,PK.DEPV,NULL) AS P_TITULO15,IIF(PK.PZPG >= 15,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P15),NULL) AS P_VENCIMENTO15,IIF(PK.PZPG >= 15,PK.VDUP,0) AS P_VALOR15,');
               SQL.Add('       IIF(PK.PZPG >= 16,PK.PZPG - (PK.PZPG-16),0) AS PZPG16,IIF(PK.PZPG >= 16,PK.DEPV,NULL) AS P_TITULO16,IIF(PK.PZPG >= 16,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P16),NULL) AS P_VENCIMENTO16,IIF(PK.PZPG >= 16,PK.VDUP,0) AS P_VALOR16,');
               SQL.Add('       IIF(PK.PZPG >= 17,PK.PZPG - (PK.PZPG-17),0) AS PZPG17,IIF(PK.PZPG >= 17,PK.DEPV,NULL) AS P_TITULO17,IIF(PK.PZPG >= 17,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P17),NULL) AS P_VENCIMENTO17,IIF(PK.PZPG >= 17,PK.VDUP,0) AS P_VALOR17,');
               SQL.Add('       IIF(PK.PZPG >= 18,PK.PZPG - (PK.PZPG-18),0) AS PZPG18,IIF(PK.PZPG >= 18,PK.DEPV,NULL) AS P_TITULO18,IIF(PK.PZPG >= 18,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P18),NULL) AS P_VENCIMENTO18,IIF(PK.PZPG >= 18,PK.VDUP,0) AS P_VALOR18,');
               SQL.Add('       IIF(PK.PZPG >= 19,PK.PZPG - (PK.PZPG-19),0) AS PZPG19,IIF(PK.PZPG >= 19,PK.DEPV,NULL) AS P_TITULO19,IIF(PK.PZPG >= 19,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P19),NULL) AS P_VENCIMENTO19,IIF(PK.PZPG >= 19,PK.VDUP,0) AS P_VALOR19,');
               SQL.Add('       IIF(PK.PZPG >= 20,PK.PZPG - (PK.PZPG-20),0) AS PZPG20,IIF(PK.PZPG >= 20,PK.DEPV,NULL) AS P_TITULO20,IIF(PK.PZPG >= 20,(IIF(PK.DTBX IS NOT NULL,PK.DTBX,DTPV) + P20),NULL) AS P_VENCIMENTO20,IIF(PK.PZPG >= 20,PK.VDUP,0) AS P_VALOR20 ');
               SQL.Add('FROM (');

               SQL.Add('       SELECT PK.IDCL,PK.STFI,PK.DEPV,PK.DTPV,PK.CDRO,PK.DTRO,PK.CDNF,PK.DTNF,PK.CDBX,PK.DTBX,PK.TCDE,');
               SQL.Add('              PK.PZPG,PK.TCDE/PK.PZPG AS VDUP,');
               SQL.Add('              TPG.PAG_D001 AS P1  ,TPG.PAG_D002 AS P2 ,TPG.PAG_D003 AS P3 ,TPG.PAG_D004 AS P4 ,TPG.PAG_D005 AS P5 ,');
               SQL.Add('              TPG.PAG_D006 AS P6  ,TPG.PAG_D007 AS P7 ,TPG.PAG_D008 AS P8 ,TPG.PAG_D009 AS P9 ,TPG.PAG_D010 AS P10,');
               SQL.Add('              TPG.PAG_D011 AS P11 ,TPG.PAG_D012 AS P12,TPG.PAG_D013 AS P13,TPG.PAG_D014 AS P14,TPG.PAG_D015 AS P15,');
               SQL.Add('              TPG.PAG_D016 AS P16 ,TPG.PAG_D017 AS P17,TPG.PAG_D018 AS P18,TPG.PAG_D019 AS P19,TPG.PAG_D020 AS P20 ');
               SQL.Add('       FROM '+ARECRelatorios.TAB_PK+' AS PK');
               SQL.Add('       JOIN   TAB_PAG AS TPG ON (TPG.ID = PK.CDPG)');
               SQL.Add('WHERE  PK.IDEP = '''+ARECRelatorios.IDEP+'''');
               SQL.Add('AND    PK.ID   = '''+ARECRelatorios.Id  +'''');
               SQL.Add(') AS PK');
               SQL.Add('LEFT JOIN FIN_REC_BAN_BAI_004 AS FRC ON (FRC.FIN_CDBX = CDBX AND FRC.FIN_CCLI = PK.IDCL)');
               ExecQuery;
             end;

             if not ARECRelatorios.ASQLConsulta.Eof then
             begin
               TQRShape (FindComponent('QRSVENCIMENTO')).Enabled := True;
               TQRLabel (FindComponent('QRLVENCIMENTO')).Enabled := True;
               TQRDBText(FindComponent('QRDVENCIMENTO')).Enabled := True;

               TQRShape(FindComponent('QRSVENCIMENTO_L1')).Enabled := True;
               TQRShape(FindComponent('QRSVENCIMENTO_L2')).Enabled := True;

               TQRLabel(FindComponent('QRLTITULO_C1')).Enabled     := True;
               TQRLabel(FindComponent('QRLVENCIMENTO_C1')).Enabled := True;
               TQRLabel(FindComponent('QRLVALOR_C1')).Enabled      := True;
               TQRShape(FindComponent('QRSVENCIMENTO_DESTAQUE_C2')).Enabled := True;

               if ARECRelatorios.ASQLConsulta.Current.ByName('PZPG').AsInteger > 8 then
               begin
                 TQRLabel(FindComponent('QRLTITULO_C2')).Enabled     := True;
                 TQRLabel(FindComponent('QRLVENCIMENTO_C2')).Enabled := True;
                 TQRLabel(FindComponent('QRLVALOR_C2')).Enabled      := True;
               end;

               if ARECRelatorios.ASQLConsulta.Current.ByName('PZPG').AsInteger > 16 then
               begin
                 TQRLabel(FindComponent('QRLTITULO_C3')).Enabled     := True;
                 TQRLabel(FindComponent('QRLVENCIMENTO_C3')).Enabled := True;
                 TQRLabel(FindComponent('QRLVALOR_C3')).Enabled      := True;
                 TQRShape(FindComponent('QRSVENCIMENTO_DESTAQUE_C3')).Enabled := True;
               end;
               
               if ARECRelatorios.ASQLConsulta.Current.ByName('F_VALOR').AsFloat > 0 then
                  while not ARECRelatorios.ASQLConsulta.eof do
                  begin
                    INC(ARECRelatorios.Sequencia);

                    if TQRLabel(FindComponent(Format('QRLTITULO%d',[ARECRelatorios.Sequencia]))) <> Nil then
                    begin
                      TQRLabel(FindComponent(Format('QRLTITULO%d',[ARECRelatorios.Sequencia]))).Caption := ARECRelatorios.ASQLConsulta.Current.ByName('F_TITULO').AsString;
                      TQRLabel(FindComponent(Format('QRLTITULO%d',[ARECRelatorios.Sequencia]))).Enabled := True;
                    end;

                    if TQRLabel(FindComponent(Format('QRLVENCIMENTO%d',[ARECRelatorios.Sequencia]))) <> Nil then
                    begin
                      TQRLabel(FindComponent(Format('QRLVENCIMENTO%d',[ARECRelatorios.Sequencia]))).Caption := FormatDateTime('dd/mm/yy',ARECRelatorios.ASQLConsulta.Current.ByName('F_VENCIMENTO').AsDate);
                      TQRLabel(FindComponent(Format('QRLVENCIMENTO%d',[ARECRelatorios.Sequencia]))).Enabled := True;
                    end;

                    if TQRLabel(FindComponent(Format('QRLVALOR%d',[ARECRelatorios.Sequencia]))) <> Nil then
                    begin
                      TQRLabel(FindComponent(Format('QRLVALOR%d',[ARECRelatorios.Sequencia]))).Caption := FormatFloat(',##,0.00;-,##,0.00',ARECRelatorios.ASQLConsulta.Current.ByName('F_VALOR').AsFloat);
                      TQRLabel(FindComponent(Format('QRLVALOR%d',[ARECRelatorios.Sequencia]))).Enabled := True;
                    end;

                    ARECRelatorios.ASQLConsulta.Next;
                  end
               else
               begin
                 for i := 1 to ARECRelatorios.ASQLConsulta.Current.ByName('PZPG').AsInteger do
                 begin
                    if TQRLabel(FindComponent(Format('QRLTITULO%d',[i]))) <> Nil then
                    begin
                      TQRLabel(FindComponent(Format('QRLTITULO%d',[i]))).Caption := Trim(ARECRelatorios.ASQLConsulta.Current.ByName(Format('P_TITULO%d',[i])).AsString+IFThen(ARECRelatorios.ASQLConsulta.Current.ByName('PZPG').AsInteger > 1,'-'+aDup[i],''));
                      TQRLabel(FindComponent(Format('QRLTITULO%d',[i]))).Enabled := True;

                      if Length(TQRLabel(FindComponent(Format('QRLTITULO%d',[i]))).Caption) >= 10 then
                                TQRLabel(FindComponent(Format('QRLTITULO%d',[i]))).Caption := RightStr(TQRLabel(FindComponent(Format('QRLTITULO%d',[i]))).Caption,9);
                    end;

                    if TQRLabel(FindComponent(Format('QRLVENCIMENTO%d',[i]))) <> Nil then
                    begin
                      TQRLabel(FindComponent(Format('QRLVENCIMENTO%d',[i]))).Caption := FormatDateTime('dd/mm/yy',ARECRelatorios.ASQLConsulta.Current.ByName(Format('P_VENCIMENTO%d',[i])).AsDate);
                      TQRLabel(FindComponent(Format('QRLVENCIMENTO%d',[i]))).Enabled := True;
                    end;

                    if TQRLabel(FindComponent(Format('QRLVALOR%d',[i]))) <> Nil then
                    begin
                      TQRLabel(FindComponent(Format('QRLVALOR%d',[i]))).Caption := FormatFloat(',##,0.00;-,##,0.00',ARECRelatorios.ASQLConsulta.Current.ByName(Format('P_VALOR%d',[i])).AsFloat);
                      TQRLabel(FindComponent(Format('QRLVALOR%d',[i]))).Enabled := True;
                    end;
                 end;

                 if TQRLabel(FindComponent(Format('QRLVALOR%d',[ARECRelatorios.ASQLConsulta.Current.ByName('PZPG').AsInteger]))) <> Nil then
                 begin
                   TQRLabel(FindComponent(Format('QRLVALOR%d',[ARECRelatorios.ASQLConsulta.Current.ByName('PZPG').AsInteger]))).Caption := FormatFloat(',##,0.00;-,##,0.00',ARECRelatorios.ASQLConsulta.Current.ByName('VUDUP').AsFloat);
                   TQRLabel(FindComponent(Format('QRLVALOR%d',[ARECRelatorios.ASQLConsulta.Current.ByName('PZPG').AsInteger]))).Enabled := True;
                 end;
               end;
             end;
           end;
     end;
end;

{ Exporta Register de parâmetros }
(**********************************)
procedure oRegister_Export; STDCall;
(**********************************)
var
  RegEdit: TRegistry;
        lParam: Integer;
        Buf : Array[0..10] of Char;
        //aResult : cardinal;
begin
  RegEdit := TRegistry.Create(KEY_WRITE OR KEY_WOW64_64KEY);
  RegEdit.Access  := KEY_WRITE;
  RegEdit.RootKey := HKEY_CURRENT_USER;

  Buf    := 'Environment';
  lParam := Integer(@Buf[0]);

  try
    { NFe }
    if not RegEdit.KeyExists('NFe\') then
       oAviso(Application.Handle,'Regitry de Parâmetros para exportação não encontrado !' + #13 +
                                 'Chave: NFe' + #13 +
                                 'Favor entrar em contato com o administrador do sistema.');

    if not RegEdit.OpenKey('NFe\',False) then
           oAviso(Application.Handle,'Falha ao tentar acessar o seu dispositivo !' + #13 +
                                     'Chave: NFe' + #13 +
                                     'Favor entrar em contato com o administrador do sistema.') else

       try
         RegEdit.WriteString('CCeLogo'              ,RECParametros.NFE_LOGO                );
         RegEdit.WriteString('CNPJ'                 ,RECParametros.CNPJ                    );
         RegEdit.WriteString('DanfeCanhoto'         ,RECParametros.NFE_CANHOTO             );
         RegEdit.WriteString('DanfeLogo'            ,RECParametros.NFE_LOGO                );
         RegEdit.WriteString('DanfeRepCabecalho'    ,RECParametros.NFE_CABECALHO           );
         RegEdit.WriteString('DanfeTpDesc'          ,RECParametros.NFE_TIPO_DESCONTO       );
         RegEdit.WriteString('DataPacket'           ,RECParametros.NFE_DATA_PACKET         );
         RegEdit.WriteString('DataPacketCCe'        ,RECParametros.NFE_DATA_PACKET_CCE     );
         RegEdit.WriteString('DataPacketFormSeg'    ,RECParametros.NFE_DATA_PACKET_FORM_SEG);
         RegEdit.WriteString('DataPacketFS'         ,RECParametros.NFE_DATA_PACKET_FS      );
         RegEdit.WriteString('FormatoItemQtd'       ,RECParametros.NFE_FORMAT_QTDE         );
         RegEdit.WriteString('FormatoItemUnt'       ,RECParametros.NFE_FORMAT_VUNIT        );
         RegEdit.WriteString('IE'                   ,RECParametros.IE                      );
         RegEdit.WriteString('Modelo'               ,RECParametros.NFE_MODELO              );
         RegEdit.WriteString('NoSerieCertificado'   ,RECParametros.NFE_API_TOKEN           );
         RegEdit.WriteString('PathPrincipal'        ,RECParametros.NFE_PATH_PRINCIPAL      );
         RegEdit.WriteString('Schemas'              ,RECParametros.NFE_PATH_SCHEMAS        );
         RegEdit.WriteString('Serie'                ,RECParametros.NFE_SERIE               );
         RegEdit.WriteString('SizeDescItem'         ,RECParametros.NFE_FONT_SIZE_ITEM      );
         RegEdit.WriteString('SizeFontObs'          ,RECParametros.NFE_FONT_SIZE_INFADCAD  );
         RegEdit.WriteString('TimeZone'             ,RECParametros.SHEILD_TIMEZONE         );
         RegEdit.WriteString('TotalizadorPisCofins' ,RECParametros.NFE_TOTAL_PISCOFINS     );
         RegEdit.WriteString('TotalizarCfop'        ,RECParametros.NFE_TOTAL_CFOP          );
         RegEdit.WriteString('UnidadeFederada'      ,RECParametros.SGUF                    );
         RegEdit.WriteString('UnidadeFederadaCodigo',RECParametros.CDUF                    );
         RegEdit.WriteString('VerProc'              ,RECParametros.NFE_VER_PROC            );
       finally
         RegEdit.CloseKey;
       end;

    { NFe\Path
    if not RegEdit.KeyExists('NFe\Path\') then
       try
         REGEdit.CreateKey('NFe\Path\');
         RegEdit.OpenKey  ('NFe\Path\',False);
         RegEdit.WriteString('Path','C:\Sheild');
       finally
         RegEdit.CloseKey;
       end;
    }

    { NFeApp }
    if RegEdit.KeyExists('NFe\NFeApp\') then
    begin
      if not RegEdit.OpenKey('NFe\NFeApp\',False) then
             oAviso(Application.Handle,'Falha ao tentar abrir as configurações da NFe !'+#13+
                                       'Chave: NFeApp'+#13+
                                       'Favor entrar em contato com o administrador do sistema.') else
      try
        RegEdit.WriteString('CodMunicipio',RECParametros.CMUN );
        RegEdit.WriteString('IE'          ,RECParametros.IE   );
        RegEdit.WriteString('Municipio'   ,RECParametros.NOCID);
      finally
        RegEdit.CloseKey;
      end;
    end;

    { RespTec }
    if not RegEdit.KeyExists('NFe\RespTec\') then
       oAviso(Application.Handle,'Regitry de Parâmetros para exportação não encontrado !'+#13+
                                 'Chave: RespTec'+#13+
                                 'Favor entrar em contato com o administrador do sistema.') else

       if not RegEdit.OpenKey('NFe\RespTec\',False) then
              oAviso(Application.Handle,'Falha ao tentar abrir as configurações da NFe !'+#13+
                                        'Chave: RespTec'+#13+
                                        'Favor entrar em contato com o administrador do sistema.') else
       try
         RegEdit.WriteString('CNPJ'    ,RECParametros.SHEILD_CNPJ);
         RegEdit.WriteString('CSRT'    ,'');
         RegEdit.WriteString('CSRTid'  ,'');
         RegEdit.WriteString('email'   ,RECParametros.SHEILD_EMAIL);
         RegEdit.WriteString('fone'    ,RECParametros.SHEILD_NUTEL);
         RegEdit.WriteString('xContato',RECParametros.SHEILD_RESPONSAVEL);
       finally
         RegEdit.CloseKey;
       end;
  finally
    Regedit.Free;
  end;

  { Em alguns computadores não funciona
    SendMessage(HWND_BROADCAST      , WM_SETTINGCHANGE, 0,lParam);
  }

  { Vou usar esse, mas dizem q está ocioso }
  SendNotifyMessage(HWND_BROADCAST, WM_SETTINGCHANGE, 0,lParam);

  { Esse aguardo o tempo estabelecido

   SendMessageTimeout(
       HWND_BROADCAST,
       WM_SETTINGCHANGE,
       0,
       lParam,
       SMTO_NORMAL,
       1000,
       aresult);
  }
end;

{ Exporta Register de Usuários }
(******************************************)
procedure oRegister_Export_Usuario; STDCall;
(******************************************)
var
  RegEdit: TRegistry;
        lParam: Integer;
        Buf : Array[0..10] of Char;
        //aResult : cardinal;

begin
  RegEdit := TRegistry.Create(KEY_WRITE OR KEY_WOW64_64KEY);
  RegEdit.Access  := KEY_WRITE;
  RegEdit.RootKey := HKEY_CURRENT_USER;

  Buf    := 'Environment';
  lParam := Integer(@Buf[0]);

  try
    { User }
    if not RegEdit.KeyExists('NFe\FBird\') then
           oAviso(Application.Handle,'Regitry de Parâmetros para exportação não encontrado !'+#13+
                                     'Chave: User'+#13+
                                     'Favor entrar em contato com o administrador do sistema.') else
           if not RegEdit.OpenKey('NFe\FBird\',False) then
                  oAviso(Application.Handle,'Falha ao tentar abrir as configurações da NFe !'+#13+
                                            'Chave: User'+#13+
                                            'Favor entrar em contato com o administrador do sistema.') else
           try
             RegEdit.WriteString('User'   ,RECUsuarios.Login);
             RegEdit.WriteString('Empresa',RECParametros.ID+' - '+RECParametros.FANTASIA);
           finally
             RegEdit.CloseKey;
           end;

    { eMail }
    if not RegEdit.KeyExists('NFe\eMail\') then
           oAviso(Application.Handle,'Regitry de Parâmetros para exportação não encontrado !'+#13+
                                     'Chave: eMail'+#13+
                                     'Favor entrar em contato com o administrador do sistema.') else
           if not RegEdit.OpenKey('NFe\eMail\',False) then
                  oAviso(Application.Handle,'Falha ao tentar abrir as configurações da NFe !'+#13+
                                            'Chave: eMail'+#13+
                                            'Favor entrar em contato com o administrador do sistema.') else
           try
             RegEdit.WriteString('eMail'       ,RECUsuarios.EMAIL);
             RegEdit.WriteString('NomeExibicao',RECUsuarios.EMAIL_NOME);
             RegEdit.WriteString('Porta'       ,RECUsuarios.EMAIL_PORTA);
             RegEdit.WriteString('Senha'       ,RECUsuarios.EMAIL_TOKEN);
             RegEdit.WriteString('ServidorSMTP',RECUsuarios.EMAIL_SMTP);
             RegEdit.WriteString('SSL'         ,RECUsuarios.EMAIL_SSL);
           finally
             RegEdit.CloseKey;
           end;
  finally
    Regedit.Free;
  end;
  SendNotifyMessage(HWND_BROADCAST, WM_SETTINGCHANGE, 0,lParam);
end;

{ Retira Envio Email Automático }
(*************************************)
procedure oRegister_DEL_Email; STDCall;
(*************************************)
var
  RegEdit: TRegistry;
        lParam: Integer;
        Buf : Array[0..10] of Char;
        //aResult : cardinal;

begin
  { Desabilita Envio Automático }
  RECParametros.NFE_ENV_EMAIL_AUTO := '0';

  { Retira todos os dados de email do Register }
  RegEdit := TRegistry.Create(KEY_WRITE OR KEY_WOW64_64KEY);
  RegEdit.Access  := KEY_WRITE;
  RegEdit.RootKey := HKEY_CURRENT_USER;

  Buf    := 'Environment';
  lParam := Integer(@Buf[0]);

  try
    { eMail }
    if not RegEdit.KeyExists('NFe\eMail\') then
           oAviso(Application.Handle,'Regitry de Parâmetros para exportação não encontrado !'+#13+
                                     'Chave: eMail'+#13+
                                     'Favor entrar em contato com o administrador do sistema.') else
           if not RegEdit.OpenKey('NFe\eMail\',False) then
                  oAviso(Application.Handle,'Falha ao tentar abrir as configurações da NFe !'+#13+
                                            'Chave: eMail'+#13+
                                            'Favor entrar em contato com o administrador do sistema.') else
           try
             RegEdit.WriteString('eMail'       ,EmptyStr);
             RegEdit.WriteString('NomeExibicao',EmptyStr);
             RegEdit.WriteString('Porta'       ,EmptyStr);
             RegEdit.WriteString('Senha'       ,EmptyStr);
             RegEdit.WriteString('ServidorSMTP',EmptyStr);
             RegEdit.WriteString('SSL'         ,EmptyStr);
           finally
             RegEdit.CloseKey;
           end;
  finally
    Regedit.Free;
  end;
  SendNotifyMessage(HWND_BROADCAST, WM_SETTINGCHANGE, 0,lParam);
end;

{ Altera o tamanho da fonte da NFe }
(******************************************************)
procedure oRegister_UPD_SizeFont(ACount: Word); STDCall;
(******************************************************)
var
  RegEdit: TRegistry;
        lParam: Integer;
        Buf : Array[0..10] of Char;
        //aResult : cardinal;
begin
  RegEdit := TRegistry.Create(KEY_WRITE OR KEY_WOW64_64KEY);
  RegEdit.Access  := KEY_WRITE;
  RegEdit.RootKey := HKEY_CURRENT_USER;

  Buf    := 'Environment';
  lParam := Integer(@Buf[0]);

  try
    { NFe }
    if not RegEdit.KeyExists('NFe\') then
           oAviso(Application.Handle,'Regitry de Parâmetros para exportação não encontrado !'+#13+
                                     'Chave: NFe'+#13+
                                     'Favor entrar em contato com o administrador do sistema.') else
           if not RegEdit.OpenKey('NFe\',False) then
                  oAviso(Application.Handle,'Falha ao tentar abrir as configurações da NFe !'+#13+
                                            'Chave: NFe'+#13+
                                            'Favor entrar em contato com o administrador do sistema.') else
           try
             RegEdit.WriteString('SizeFontObs',IFThen(ACount > 3,'6',RECParametros.NFE_FONT_SIZE_INFADCAD));
           finally
             RegEdit.CloseKey;
           end;
  finally
    Regedit.Free;
  end;

  { Em alguns computadores não funciona
    SendMessage(HWND_BROADCAST      , WM_SETTINGCHANGE, 0,lParam);
  }

  { Vou usar esse, mas dizem q está ocioso }
  SendNotifyMessage(HWND_BROADCAST, WM_SETTINGCHANGE, 0,lParam);
  Application.ProcessMessages;

  { Esse aguardo o tempo estabelecido

   SendMessageTimeout(
       HWND_BROADCAST,
       WM_SETTINGCHANGE,
       0,
       lParam,
       SMTO_NORMAL,
       1000,
       aresult);
  }
end;

{ Importa Register }
(**************************************************************************)
procedure oRegister_Import_Usuario(var ARECUSuarios: TRECUsuarios); STDCall;
(**************************************************************************)
var
  RegEdit: TRegistry;
begin
  RegEdit := TRegistry.Create(KEY_READ OR KEY_WOW64_64KEY);
  RegEdit.Access  := KEY_READ;
  RegEdit.RootKey := HKEY_CURRENT_USER;

  try
    { User }
    if not RegEdit.KeyExists('NFe\FBird\') then
           oAviso(Application.Handle,'Regitry de Parâmetros para exportação não encontrado !'+#13+
                                     'Chave: User'+#13+
                                     'Favor entrar em contato com o administrador do sistema.') else
           if not RegEdit.OpenKey('NFe\FBird\',False) then
                  oAviso(Application.Handle,'Falha ao tentar abrir as configurações da NFe !'+#13+
                                            'Chave: User'+#13+
                                            'Favor entrar em contato com o administrador do sistema.') else
           try
             ARECUsuarios.DEEP  := RegEdit.ReadString('Empresa');
             ARECUsuarios.Login := RegEdit.ReadString('User');
           finally
             RegEdit.CloseKey;
           end;
  finally
    Regedit.Free;
  end;
end;

{ Close Abode Reader }
(*************************)
procedure oCAdobe; STDCall;
(*************************)
var
  AdobeHandle: THandle;
begin
  try
    Application.ProcessMessages;
    AdobeHandle := FindWindow(Nil,'AdobeAcrobat');

    if AdobeHandle = 0 then
       AdobeHandle := FindWindow(Nil,'Adobe Reader');
    if AdobeHandle = 0 then
       AdobeHandle := FindWindow(Nil,'Acrobat Reader DC');
    if AdobeHandle = 0 then
       AdobeHandle := FindWindow(Nil,'Adobe Acrobat Reader DC');
    if AdobeHandle = 0 then
       AdobeHandle := FindWindow(Nil,'AcroRd32');
    if AdobeHandle = 0 then
       AdobeHandle := FindWindow(Nil,'Adobe');

    if AdobeHandle > 0 then
       PostMessage(AdobeHandle,WM_CLOSE,0,0);
  finally
    Application.ProcessMessages;
  end;
end;

{ Fecha páginas filhas }
(****************************)
procedure oCMDIChild; STDCall;
(****************************)
var
  i: integer;
begin
  if   Application.MainForm <> Nil then
  with Application.MainForm do
  try
    for i := MDIChildCount - 1 downto 0 do
          if MDIChildren[i] <> Nil then
             MDIChildren[i].Close;
  except
    on E: Exception do
       oException(Nil,'Falha ao tentar fechar automaticamente as páginas !'+#13+
                      'Favor fechá-los manualmente.'+#13+#13+
                      'Error Code: '+E.Message);
  end;
end;

{ Verifica páginas filhas abertas }
(*************************************)
function oISMDIChild: Boolean; STDCall;
(*************************************)
var
  i: integer;
begin
  result := True;
  if   Application.MainForm <> Nil then
  with Application.MainForm do
       for i := MDIChildCount - 1 downto 0 do
             if MDIChildren[i] <> Nil then
             begin
               result := False;
               Break;
             end;
end;

{ Romaneio de Estoque }
(*****************************************************************)
procedure oSP_CAD_PRO_EST_RPK(var ARECEdicao: TRECEdicao); STDCall;
(*****************************************************************)
begin
  with ARECEdicao,ARECEdicao.ASPEdicao do
  begin
    Close;
    StoredProcName := 'SP_CAD_PRO_EST_RPK';
    Prepare;

    { Inicializar Parâmetros: FLAG + campos de pesquisa (IDEP,IDPK,IDFK) }
    ARECEdicao.ASPEdicao.ParamByName('AFLAG').Value := 0;
    ARECEdicao.ASPEdicao.ParamByName('AID'  ).Value := 0;

    { Cadastro }
    ARECEdicao.ASPEdicao.ParamByName('AIDEP').Value := ARECEdicao.IDEP;
    ARECEdicao.ASPEdicao.ParamByName('AIDCA').Value := ARECEdicao.IDCA;

    { Situação }
    ARECEdicao.ASPEdicao.ParamByName('ACDST').Value := ARECEdicao.CDST;
    ARECEdicao.ASPEdicao.ParamByName('AREST').Value := ARECEdicao.REST;
    ARECEdicao.ASPEdicao.ParamByName('ADEST').Value := ARECEdicao.DEST;

    { Lançamentos }
    ARECEdicao.ASPEdicao.ParamByName('ACTNR').Value := ARECEdicao.CTNR;
    ARECEdicao.ASPEdicao.ParamByName('ALOTE').Value := ARECEdicao.LOTE;
    ARECEdicao.ASPEdicao.ParamByName('ACDI' ).Value := ARECEdicao.CDI;

    { Operação }
    ARECEdicao.ASPEdicao.ParamByName('ACDOP').Value := ARECEdicao.CDOP;
    ARECEdicao.ASPEdicao.ParamByName('AREOP').Value := ARECEdicao.REOP;
    ARECEdicao.ASPEdicao.ParamByName('ACDTP').Value := ARECEdicao.CDTP;

    { Emissor }
    ARECEdicao.ASPEdicao.ParamByName('AIDCE').Value := ARECEdicao.IDCD;
    ARECEdicao.ASPEdicao.ParamByName('ADECE').Value := ARECEdicao.DECD;
    ARECEdicao.ASPEdicao.ParamByName('ATPCE').Value := ARECEdicao.TPCD;

    { Pedido }
    ARECEdicao.ASPEdicao.ParamByName('AIDPD').Value := ARECEdicao.IDPK;
    ARECEdicao.ASPEdicao.ParamByName('ADTPD').Value := ARECEdicao.DTPK;
    ARECEdicao.ASPEdicao.ParamByName('ACDPD').Value := ARECEdicao.CDPK;
    ARECEdicao.ASPEdicao.ParamByName('ADEPD').Value := ARECEdicao.DEPK;
    ARECEdicao.ASPEdicao.ParamByName('ATPPD').Value := ARECEdicao.TPPK;
    ARECEdicao.ASPEdicao.ParamByName('ANNPD').Value := EmptyStr;

    { Nota Fiscal }
    ARECEdicao.ASPEdicao.ParamByName('AIDNF').Value := ARECEdicao.IDNF;
    ARECEdicao.ASPEdicao.ParamByName('ADTNF').Value := ARECEdicao.DTNF;
    ARECEdicao.ASPEdicao.ParamByName('ACDNF').Value := ARECEdicao.CDNF;
    ARECEdicao.ASPEdicao.ParamByName('ATPNF').Value := ARECEdicao.TPNF;

    { Informações Adicionais }
    ARECEdicao.ASPEdicao.ParamByName('AINFADCAD').Value := ARECEdicao.INFADCAD;

    { Registro }
    ARECEdicao.ASPEdicao.ParamByName('AIDEV').Value := ARECEdicao.IDEV;
    ARECEdicao.ASPEdicao.ParamByName('AIP'  ).Value := RECParametros.IP;
    ARECEdicao.ASPEdicao.ParamByName('AHOST').Value := RECParametros.HOST;
    ExecProc;

    CDRO := ParamByName('rID').AsInteger;
  end;
end;

{ Itens do Romaneio de Estoque }
(*****************************************************************)
procedure oSP_CAD_PRO_EST_RFK(var ARECEdicao: TRECEdicao); STDCall;
(*****************************************************************)
begin
  with ARECEdicao,ARECEdicao.ASPEdicao do
  begin
    Close;
    StoredProcName := 'SP_CAD_PRO_EST_RFK';
    Prepare;

    { Inicializar Parâmetros: FLAG + campos de pesquisa (IDEP,IDPK,IDFK) }
    ARECEdicao.ASPEdicao.ParamByName('AFLAG').Value := 0;
    ARECEdicao.ASPEdicao.ParamByName('ACDET').Value := ARECEdicao.CDET;

    { Cadastro }
    ARECEdicao.ASPEdicao.ParamByName('AIDEP').Value := ARECEdicao.IDEP;
    ARECEdicao.ASPEdicao.ParamByName('AIDCA').Value := ARECEdicao.IDCA;

    { Situação }
    ARECEdicao.ASPEdicao.ParamByName('ACDST').Value := ARECEdicao.CDST;
    ARECEdicao.ASPEdicao.ParamByName('AREST').Value := ARECEdicao.REST;
    ARECEdicao.ASPEdicao.ParamByName('ADEST').Value := ARECEdicao.DEST;

    { Romaneio }
    ARECEdicao.ASPEdicao.ParamByName('ACDRO').Value := ARECEdicao.CDRO;
    ARECEdicao.ASPEdicao.ParamByName('AITEM').Value := ARECEdicao.ITEM;

    { Etiqueta }
    ARECEdicao.ASPEdicao.ParamByName('ACTNR').Value := ARECEdicao.CTNR;
    ARECEdicao.ASPEdicao.ParamByName('ALOTE').Value := ARECEdicao.LOTE;
    ARECEdicao.ASPEdicao.ParamByName('ACDI' ).Value := ARECEdicao.CDI;
    ARECEdicao.ASPEdicao.ParamByName('AMAPA').Value := ARECEdicao.MAPA;

    { Processos }
    ARECEdicao.ASPEdicao.ParamByName('ACDOP').Value := ARECEdicao.CDOP;
    ARECEdicao.ASPEdicao.ParamByName('AREOP').Value := ARECEdicao.REOP;
    ARECEdicao.ASPEdicao.ParamByName('ACDTP').Value := ARECEdicao.CDTP;

    { Produtos }
    ARECEdicao.ASPEdicao.ParamByName('AIDCP').Value    := ARECEdicao.IDCP;
    ARECEdicao.ASPEdicao.ParamByName('ACP_IDEP').Value := ARECEdicao.CP_IDEP;
    ARECEdicao.ASPEdicao.ParamByName('AIDAK').Value    := ARECEdicao.IDAK;
    ARECEdicao.ASPEdicao.ParamByName('ACEAN').Value    := ARECEdicao.CEAN;

    { Lançamento }
    ARECEdicao.ASPEdicao.ParamByName('AQTDE').Value := ARECEdicao.QTDE;
    ARECEdicao.ASPEdicao.ParamByName('AQTRL').Value := ARECEdicao.QTRL;

    { Custo }
    ARECEdicao.ASPEdicao.ParamByName('ACF_VPRC_PAD_ORI').Value := ARECEdicao.CF_VPRC_PAD_ORI;
    ARECEdicao.ASPEdicao.ParamByName('ACF_VPRC_PAD').Value     := ARECEdicao.CF_VPRC_PAD;
    ARECEdicao.ASPEdicao.ParamByName('ACF_VPRC_COM').Value     := ARECEdicao.CF_VPRC_PAD;

    { Classificações }
    ARECEdicao.ASPEdicao.ParamByName('ACOL_ID').Value := ARECEdicao.COL_ID; { Coleção - Compras }
    ARECEdicao.ASPEdicao.ParamByName('ANFCI'  ).Value := ARECEdicao.NFCI; { Ficha de Conteúdo de Importação }

    { Defeitos }
    ARECEdicao.ASPEdicao.ParamByName('AIDDF').Value := RECUsuarios.ID;
    ARECEdicao.ASPEdicao.ParamByName('ACDDF').Value := ARECEdicao.CDDF;

    { Informações Adicionais }
    ARECEdicao.ASPEdicao.ParamByName('AINFADCAD').Value := ARECEdicao.INFADCAD;

    { Registros }
    ARECEdicao.ASPEdicao.ParamByName('AIDEV').Value := ARECEdicao.IDG_EV;
    ARECEdicao.ASPEdicao.ParamByName('AIP'  ).Value := RECParametros.IP;
    ARECEdicao.ASPEdicao.ParamByName('AHOST').Value := RECParametros.HOST;
    ARECEdicao.ASPEdicao.ExecProc;
  end;
end;

procedure oSP_PED_VEN_CAB(var ARECPedido: TRECPedidos); STDCall;
begin
  with ARECPedido,ARECPedido.ASPEdicao do
  begin
    Close;
    StoredProcName := 'SP_PED_VEN_CAB';
    Prepare;

    ParamByName('AID'  ).Value := IDPK;
    ParamByName('AIDEP').Value := RECParametros.Id;
    ParamByName('AIDEV').Value := 0;

    ParamByName('AIDCA').Value := RECUsuarios.Id;
    ParamByName('ADTCA').Value := DTPK;

    ParamByName('AIDPD').Value := IDPK;
    ParamByName('ADEPD').Value := DEPK;
    ParamByName('ACTNR').Value := CTNR;
    ParamByName('ACDCX').Value := CDCX;

    ParamByName('AIDCL').Value := IDCD;
    ParamByName('AIDCV').Value := IDCV;
    ParamByName('AIDCR').Value := IDCR;

    ParamByName('AQTDE').Value := PK_QTDE;
    ParamByName('AQTRL').Value := PK_QTRL;

    ParamByName('ATSDE').Value := PK_TSDE;
    ParamByName('APDSC').Value := PK_PDSC;
    ParamByName('AVDSC').Value := PK_VDSC;
    ParamByName('ATCDE').Value := PK_TCDE;
    ParamByName('AVIPI').Value := PK_VIPI;

    ParamByName('AIDCT').Value := IDCT;
    ParamByName('AMFRT').Value := MFRT;
    ParamByName('AVFRT').Value := VFRT;
    ParamByName('ACFRT').Value := CFRT;
    ParamByName('APSBR').Value := PK_PSBR;
    ParamByName('APSLQ').Value := PK_PSLQ;

    ParamByName('ACDDV').Value := IDFK;
    ParamByName('ADEDV').Value := DEFK;
    ParamByName('ADTDV').Value := DTFK;

    ParamByName('ACDPD').Value := PED_CDPD;
    ParamByName('ASTPD').Value := STPD;

    ParamByName('ACDCO').Value := CDCO;
    ParamByName('ASTCO').Value := STCO;
    ParamByName('ATPCO').Value := TPCO;
    ParamByName('ACDPG').Value := CDPG;

    ParamByName('ACDST').Value := PK_CDST;
    ParamByName('ADEST').Value := PK_DEST;

    ParamByName('AINFADPED').Value := INFADCAD;

    ParamByName('AIP'  ).Value := RECParametros.IP;
    ParamByName('AHOST').Value := RECParametros.HOST;
    ExecProc;

    IDPK := IntToStr(ParamByName('ID').AsInteger);
    DEPK := ParamByName('DEPD').AsString;
  end;
end;

procedure oSP_PED_VEN_ITE(var ARECFKPedido: TRECPedidos); STDCall;
begin
  with ARECFKPedido,ARECFKPedido.ASPEdicao do
  begin
    Close;
    StoredProcName := 'SP_PED_VEN_ITE';
    Prepare;

    ParamByName('AID'  ).Value := IDFK;
    ParamByName('AIDEP').Value := RECParametros.Id;
    ParamByName('AIDCA').Value := RECUsuarios.Id;

    ParamByName('AIDPK').Value := IDPK;
    ParamByName('AITEM').Value := ITEM;

    ParamByName('AIDCP').Value := IDCP;
    ParamByName('ACEAN').Value := CEAN;

    ParamByName('ADECP').Value := DECP;
    ParamByName('ADGCP').Value := DGCP;

    ParamByName('AUCOM').Value := UCOM;
    ParamByName('AUCON').Value := UCON;

    ParamByName('AQTDE').Value := QTDE;
    ParamByName('AQTRL').Value := QTRL;

    ParamByName('AVPRC_PAD_INI').Value := VPRC_PAD_INI;
    ParamByName('AVPRC_PAD_FIM').Value := VPRC_PAD_FIM;

    ParamByName('AVPRC_PAD').Value := VPRC_PAD;
    ParamByName('APDSC'    ).Value := PDSC;
    ParamByName('AVDSC'    ).Value := VDSC;
    ParamByName('AVPRC_COM').Value := VPRC_COM;

    ParamByName('ATSDE').Value := TSDE;
    ParamByName('ATCDE').Value := TCDE;

    ParamByName('ANCM' ).Value := NCM;
    ParamByName('APIPI').Value := PIPI;
    ParamByName('AVIPI').Value := VIPI;

    ParamByName('APSBR').Value := PSBR;
    ParamByName('APSLQ').Value := PSLQ;

    ParamByName('AIP'  ).Value := RECParametros.IP;
    ParamByName('AHOST').Value := RECParametros.HOST;
    ParamByName('AFLAG').Value := FLAG;

    ExecProc;
    IDFK := IntToStr(ParamByName('ID').AsInteger);
  end;
end;

{ Estoque Reservado }
procedure oSP_CAD_PRO_EST_RES(var ARECEstoque: TRECPedidos); STDCall;
begin
  with ARECEstoque,ARECEstoque.ASPEdicao do
  begin
    Close;
    StoredProcName := 'SP_CAD_PRO_EST_RES';
    Prepare;

    ParamByName('AFLAG').Value := FLAG;
    ParamByName('AIDEP').Value := RECParametros.Id;
    ParamByName('AIDPK').Value := IDPK;
    ParamByName('AIDFK').Value := IDFK;

    ParamByName('AIDCA').Value := RECUsuarios.Id;
    ParamByName('ACDST').Value := 30;
    ParamByName('AREST').Value := 'A';
    ParamByName('ADEST').Value := 'ATIVO';
      
    ParamByName('ADEPK').Value := DEPK;
    ParamByName('ADTPK').Value := DTPK;

    ParamByName('ACTNR').Value := CTNR;

    ParamByName('AIDCL').Value := IDCD;
    ParamByName('AIDCV').Value := IDCV;
    ParamByName('AIDCR').Value := IDCR;

    ParamByName('AITEM').Value := ITEM;
    ParamByName('AIDCP').Value := IDCP;
    ParamByName('ACEAN').Value := CEAN;

    ParamByName('ADECP').Value := DECP;
    ParamByName('ADGCP').Value := DGCP;

    ParamByName('AUCOM').Value := UCOM;
    ParamByName('AUCON').Value := UCON;

    ParamByName('AQTDE').Value := QTDE;
    ParamByName('AQTRL').Value := QTRL;

    ParamByName('AVPRC_PAD_INI').Value := VPRC_PAD_INI;
    ParamByName('AVPRC_PAD_FIM').Value := VPRC_PAD_FIM;

    ParamByName('AVPRC_PAD').Value := VPRC_PAD;
    ParamByName('APDSC'    ).Value := PDSC;
    ParamByName('AVDSC'    ).Value := VDSC;
    ParamByName('AVPRC_COM').Value := VPRC_COM;

    ParamByName('ATSDE').Value := TSDE;
    ParamByName('ATCDE').Value := TCDE;

    ParamByName('ANCM' ).Value := NCM;
    ParamByName('APIPI').Value := PIPI;
    ParamByName('AVIPI').Value := VIPI;

    ParamByName('APSBR').Value := PSBR;
    ParamByName('APSLQ').Value := PSLQ;

    ParamByName('AINFADCAD').Value := INFADCAD;

    ParamByName('AIP'  ).Value := RECParametros.IP;
    ParamByName('AHOST').Value := RECParametros.HOST;

    ExecProc;
  end;
end;

{ Estoque Separado }
procedure oSP_CAD_PRO_EST_SEP(var ARECEdicao: TRECEdicao); STDCall;
begin
  with ARECEdicao,ARECEdicao.ASPEdicao do
  begin
    Close;
    StoredProcName := 'SP_CAD_PRO_EST_SEP';
    Prepare;

    { Inicializar Parâmetros: FLAG + campos de pesquisa (IDEP,IDPK,IDFK) }
    ParamByName('AFLAG').Value := 0;
    ParamByName('ACDET').Value := ARECEdicao.CDET;

    { Cadastro }
    ParamByName('AIDEP').Value := RECParametros.Id;
    ParamByName('AIDCA').Value := RECUsuarios.Id;

    { Romaneio }
    ParamByName('ACDRO').Value := CDRO; { Número }
    ParamByName('ACDSP').Value := CDSP; { OSP }

    { Etiqueta }
    ParamByName('ACTNR').Value := CTNR; { Container }
    ParamByName('ALOTE').Value := LOTE; { Lote }
    ParamByName('ACDI' ).Value := CDI;  { Armazenagem }
    ParamByName('AMAPA').Value := MAPA; { Local }

    { Processos }
    ParamByName('ACDOP').Value := ARECEdicao.CDOP;
    ParamByName('AREOP').Value := ARECEdicao.REOP;
    ParamByName('ACDTP').Value := ARECEdicao.CDTP;

    { Pedido }
    ParamByName('AIDPK').Value := IDPK;
    ParamByName('ADTPK').Value := DTPK;
    ParamByName('ADEPK').Value := DEPK;

    ParamByName('AIDCD').Value := IDCD; { Cliente }
    ParamByName('AIDCV').Value := IDCV; { Vendedor }
    ParamByName('AIDCR').Value := IDCR; { Representante }

    { Item Pedido }
    ParamByName('AIDFK').Value := IDFK;
    ParamByName('AITEM').Value := ITEM;

    { Produtos }
    ParamByName('AIDCP').Value    := ARECEdicao.IDCP;    { Main ID }
    ParamByName('ACP_IDEP').Value := ARECEdicao.CP_IDEP; { Empresa }
    ParamByName('AIDAK').Value    := ARECEdicao.IDAK;    { Artigo  }
    ParamByName('ACEAN').Value    := ARECEdicao.CEAN;    { Código Barra }

    { Lançamento }
    ParamByName('AQTDE').Value := ARECEdicao.QTDE;
    ParamByName('AQTRL').Value := ARECEdicao.QTRL;

    { Custos }
    ParamByName('ACF_VPRC_PAD_ORI').Value := ARECEdicao.CF_VPRC_PAD_ORI;
    ParamByName('ACF_VPRC_PAD').Value     := ARECEdicao.CF_VPRC_PAD;
    ParamByName('ACF_VPRC_COM').Value     := ARECEdicao.CF_VPRC_PAD;

    { Vendas }
    ParamByName('AVPRC_PAD_ORI').Value := ARECEdicao.VPRC_PAD_ORI;
    ParamByName('AVPRC_PAD_INI').Value := VPRC_PAD_INI;
    ParamByName('AVPRC_PAD_FIM').Value := VPRC_PAD_FIM;
    ParamByName('AVPRC_PAD').Value := VPRC_PAD;
    ParamByName('AVPRC_COM').Value := VPRC_COM;

    { Classificações }
    ParamByName('ACOL_ID').Value := ARECEdicao.COL_ID; { Coleção - Compras }
    ParamByName('ANFCI'  ).Value := ARECEdicao.NFCI; { Ficha de Conteúdo de Importação }

    { Defeitos }
    ParamByName('AIDDF').Value := RECUsuarios.ID;
    ParamByName('ACDDF').Value := ARECEdicao.CDDF;

    { Informações Adicionais }
    ParamByName('AINFADCAD').Value := ARECEdicao.INFADCAD;

    { Registros }
    ParamByName('AIDEV').Value := ARECEdicao.IDG_EV;
    ParamByName('AIP'  ).Value := RECParametros.IP;
    ParamByName('AHOST').Value := RECParametros.HOST;
    ExecProc;
  end;
end;

procedure oSP_ROM_CAB(var ARECSP_ROM_CAB: TRECPedidos); STDCall;
begin
  with ARECSP_ROM_CAB,ARECSP_ROM_CAB.ASPEdicao do
  begin
    Close;
    StoredProcName := 'SP_ROM_CAB_TMP';
    Prepare;

    ParamByName('AID'  ).Value := IDPK;
    ParamByName('AIDEP').Value := RECParametros.Id;
    ParamByName('AIDCA').Value := RECUsuarios.Id;

    ParamByName('ACDRO').Value := IDPK;
    ParamByName('ADERO').Value := DEPK;
    ParamByName('ACTNR').Value := CTNR;
    ParamByName('ACDCX').Value := CDCX;

    ParamByName('AIDCL').Value := IDCD;
    ParamByName('ACSPD').Value := FIN_CSPD;
    ParamByName('AIDCV').Value := IDCV;
    ParamByName('AIDCR').Value := IDCR;

    ParamByName('AQTDE').Value := PK_QTDE;
    ParamByName('AQTRL').Value := PK_QTRL;

    ParamByName('ATSDE').Value := PK_TSDE;
    ParamByName('ATDSC').Value := '%';
    ParamByName('APDSC').Value := PK_PDSC;
    ParamByName('AVDSC').Value := PK_VDSC;
    ParamByName('ATCDE').Value := PK_TCDE;
    ParamByName('AVIPI').Value := PK_VIPI;

    ParamByName('AIDCT').Value := IDCT;
    ParamByName('AMFRT').Value := MFRT;
    ParamByName('ACFRT').Value := CFRT;
    ParamByName('AVFRT').Value := VFRT;
    ParamByName('APSBR').Value := PK_PSBR;
    ParamByName('APSLQ').Value := PK_PSLQ;

    ParamByName('ACDPD').Value := PED_CDPD;
    ParamByName('ASTPD').Value := STPD;
    ParamByName('AFAPD').Value := FAPD;
    ParamByName('ASVPD').Value := SVPD;

    ParamByName('ACDCO').Value := CDCO;
    ParamByName('ASTCO').Value := STCO;
    ParamByName('ATPCO').Value := TPCO;
    ParamByName('ARECO').Value := RECO;
    ParamByName('ACDPG').Value := CDPG;

    ParamByName('ACDST').Value := PK_CDST;
    ParamByName('AREST').Value := PK_REST;
    ParamByName('ASTFI').Value := PK_DEST;

    ParamByName('AINFADPED').Value := INFADCAD;
    ParamByName('AINFADFIN').Value := INFADCPL;

    ParamByName('AIP'  ).Value := RECParametros.IP;
    ParamByName('AHOST').Value := RECParametros.HOST;
    ExecProc;

    IDPK := IntToStr(ParamByName('ID').AsInteger);
    DEPK := ParamByName('DERO').AsString;
  end;
end;

procedure oSP_ROM_ITE(var ARECSP_ROM_ITE: TRECProdutos); STDCall;
begin
  with ARECSP_ROM_ITE,ARECSP_ROM_ITE.ASPEdicao do
  begin
    Close;
    StoredProcName := 'SP_ROM_ITE_TMP';
    Prepare;

    ParamByName('AID'  ).Value := IDFK;
    ParamByName('AIDEP').Value := RECParametros.Id;
    ParamByName('AIDCA').Value := RECUsuarios.Id;

    ParamByName('AIDPK').Value := IDPK;
    ParamByName('AITEM').Value := ITEM;
    ParamByName('ACDET').Value := CDET;

    ParamByName('AIDCP').Value := IDCP;
    ParamByName('ACEAN').Value := CEAN;

    ParamByName('ADECP').Value := DECP;
    ParamByName('ADGCP').Value := DGCP;

    ParamByName('AUCOM').Value := UCOM;
    ParamByName('AUCON').Value := UCON;

    ParamByName('AQTDE').Value := QTDE;
    ParamByName('AQTRL').Value := QTRL;

    ParamByName('AVPRC_PAD_INI').Value := VPRC_PAD_INI;
    ParamByName('AVPRC_PAD_FIM').Value := VPRC_PAD_FIM;

    ParamByName('AVPRC_PAD').Value := VPRC_PAD;
    ParamByName('APDSC'    ).Value := PDSC;
    ParamByName('AVDSC'    ).Value := VDSC;
    ParamByName('AVPRC_COM').Value := VPRC_COM;

    ParamByName('ATSDE').Value := TSDE;
    ParamByName('ATCDE').Value := TCDE;

    ParamByName('ANCM' ).Value := NCM;
    ParamByName('APIPI').Value := PIPI;
    ParamByName('AVIPI').Value := VIPI;

    ParamByName('APSBR').Value := PSBR;
    ParamByName('APSLQ').Value := PSLQ;

    ParamByName('AIP'  ).Value := RECParametros.IP;
    ParamByName('AHOST').Value := RECParametros.HOST;
    ParamByName('AFLAG').Value := FLAG;

    ExecProc;
    IDFK := IntToStr(ParamByName('ID').AsInteger);
  end;
end;

procedure oSP_CAD_PRO_EST_UPD(ATIBSQL: TIBSQL;ATabela: String;AIDEP: Word;AIDPK: Variant;FIDEP: String = 'IDEP';FIDPK: String = 'IDPK';FIDCP: String = 'IDCP');
begin
  if (AIDEP > 0) and (AIDPK > 0) then
      try
        oOTransact(ATIBSQL.Transaction);
        try
          with ATIBSQL do
          begin
            Close;
            SQL.Clear;
            SQL.Add('EXECUTE PROCEDURE SP_CAD_PRO_EST_UPD(:ATabela,:AIDEP,:AIDPK,'''+FIDEP+''','''+FIDPK+''','''+FIDCP+''')');
            Prepare;

            ParamByName('ATabela').Value := ATabela;
            ParamByName('AIDEP'  ).Value := AIDEP;
            ParamByName('AIDPK'  ).Value := AIDPK;
            ExecQuery;
          end;
        except
          ;
        end;
      finally
        oCTransact(ATIBSQL.Transaction);
      end;
end;

procedure oSP_CAD_PRO_EST_LAN(ATIBSQL: TIBSQL;AIDEP,AIDCP: String); STDCall;
begin
  if (AIDEP <> '0') and (AIDCP <> '0') and (AIDEP <> EmptyStr) and (AIDCP <> EmptyStr) then
      try
        oOTransact(ATIBSQL.Transaction);
        with ATIBSQL do
        begin
          Close;
          SQL.Clear;

          SQL.Add('EXECUTE PROCEDURE SP_CAD_PRO_EST_LAN(');
          SQL.Add(''''+ AIDEP +''',');
          SQL.Add(''''+ AIDCP +''')');

          Prepare;
          ExecQuery;
        end;
        oCTransact(ATIBSQL.Transaction);
      except
        oCTransact(ATIBSQL.Transaction,ltRollback);
      end;
end;

procedure oExecEstoque(ATEdicao: TIBTransaction;ASQLEdicao: TIBSQL;AIDCP: Array Of String); STDCall;
var
  i: Word;
begin
  if (ATEdicao = Nil) or (not ATEdicao.InTransaction) or (ASQLEdicao = Nil) then
      Exit;

  if High(AIDCP) > 0 then
     if AIDCP[0] <> EmptyStr then
        for i := 0 To (High(AIDCP)) do
        begin
          if AIDCP[i] = EmptyStr then
             Break;

          try
            with ASQLEdicao do
            begin
              Close;
              SQL.Clear;
              SQL.Add('EXECUTE PROCEDURE SP_CAD_PRO_EST_LAN(');
              SQL.Add(''''+RECParametros.ID    +''',');
              SQL.Add(''''+AIDCP[i]            +''')');
              ExecQuery;
            end;
          except
            on E: Exception do
            begin
              oCTransact(ATEdicao, ltRollback);
              oException(Nil     ,'Falha ao tentar registrar estoque !'+#13+
                                  'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                                  'Error Code: '+E.Message+'.'+#13+
                                  'SP_CAD_PRO_EST_LAN.');
            end;
          end;
        end;
end;

procedure oPED_SEP_DUP(ATConsulta: TIBTransaction); STDCall;
var
  AComponent: TComponent;
  QTDE: Double;
begin
  if ATConsulta = Nil then
     Abort;

     AComponent := ATConsulta.Owner;
  if AComponent  = Nil then
     Abort;

  with AComponent do
  begin
    if TIBQuery(FindComponent('Consulta')) = Nil then
       Abort;

    if (TIBSQL(FindComponent('SQLSConsulta')) = Nil) or (TIBSQL(FindComponent('SQLSEdicao')) = Nil) then
        Abort;

    try
      with TIBQuery(FindComponent('Pedido')) do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT   PK.ID,PK.DEPV,FK.ID AS IDFK,FK.ITEM,FK.IDCP,CP.ARTIGO,CP.SKU,FK.DECP,FK.DGCP,FK.UCOM,FK.QTDE,FK.QTRL,FK.QTSP,FK.RLSP,FK.VPRC_COM,');
        SQL.Add('        (SELECT COUNT(*) FROM PED_VEN_ITE_004 AS PV WHERE PV.IDPK = FK.IDPK AND PV.IDCP = FK.IDCP) AS IS_UNQ');
        SQL.Add('FROM '  +SLPrincipal.Values['ped_ven_cab']+' AS PK');
        SQL.Add('JOIN '  +SLPrincipal.Values['ped_ven_ite']+' AS FK ON (FK.IDPK = PK.ID)');
        SQL.Add('JOIN     CAD_PRO AS CP ON (CP.ID = FK.IDCP)');
        SQL.Add('WHERE    PK.ID = ''' + IntToStr(ATConsulta.Tag) + '''');
        SQL.Add('ORDER BY FK.QTDE');
        Open;
      end;

      while not TIBQuery(FindComponent('Pedido')).Eof do
      begin
        with TIBSQL(FindComponent('SQLSConsulta')), AComponent do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT PK.ID,PK.PRO_CDET AS CDET,PK.PRO_QTDE AS QTDE');
          SQL.Add('FROM   ETIQUETAS AS PK');
          SQL.Add('WHERE  PK.PRO_CDPD = ''' + IntToStr(ATConsulta.Tag) + '''');
        //SQL.Add('AND    PK.HOST     = ''' + RECParametros.HOST + '''');
          SQL.Add('AND    PK.PRO_IPRO = ''' + TIBQuery(FindComponent('Pedido')).FieldByName('IDCP').AsString + '''');
          SQL.Add('AND    PK.PRO_FLAG = 0');
          SQL.Add('AND    PK.PRO_ITEM = 0');
          ExecQuery;
        end;

        QTDE := 0;
        while not TIBSQL(FindComponent('SQLSConsulta')).Eof do
        begin
          QTDE := QTDE + TIBSQL(FindComponent('SQLSConsulta')).Current.ByName('QTDE').AsFloat;

          if (TIBQuery(FindComponent('Pedido')).FieldByName('IS_UNQ').AsInteger = 1) or ((TIBQuery(FindComponent('Pedido')).FieldByName('IS_UNQ').AsInteger > 1) and (QTDE <= TIBQuery(FindComponent('Pedido')).FieldByName('QTDE').AsFloat)) then
              with TIBSQL(FindComponent('SQLSEdicao')), AComponent do
              begin
                Close;
                SQL.Clear;
                SQL.Add('UPDATE ETIQUETAS');
                SQL.Add('SET    PRO_ITEM = ''' + TIBQuery(FindComponent('Pedido')).FieldByName('ITEM').AsString                       + ''',');
                SQL.Add('       PRO_UNIT = ''' + oStrTran(TIBQuery(FindComponent('Pedido')).FieldByName('VPRC_COM').AsString,',','.') + '''' );
                SQL.Add('WHERE  ID       = ''' + TIBSQL(FindComponent('SQLSConsulta')).Current.ByName('ID').AsString                  + '''' );
                ExecQuery;

                TIBTransaction(FindComponent('TSEdicao')).CommitRetaining;
              end;

          TIBSQL(FindComponent('SQLSConsulta')).Next;
        end;

        TIBQuery(FindComponent('Pedido')).Next;
      end;

      { Incorpora as etiquetas não relacionadas }
      with TIBSQL(FindComponent('SQLSEdicao')), AComponent do
      begin
        Close;
        SQL.Clear;
        SQL.Add('MERGE INTO ETIQUETAS AS PK');
        SQL.Add('USING (');
        SQL.Add('       SELECT PK.IDCP,FK.PRO_ITEM AS ITEM,PK.VPRC_COM');
        SQL.Add('       FROM (');
        SQL.Add('       SELECT PK.PRO_IPRO AS IDCP,MAX(PK.PRO_UNIT) AS VPRC_COM');
        SQL.Add('       FROM   ETIQUETAS   AS PK');
        SQL.Add('       WHERE  PK.PRO_CDPD = ''' + TIBQuery(FindComponent('Pedido')).FieldByName('ID').AsString + '''');
        SQL.Add('       AND    PK.PRO_FLAG = 0');
        SQL.Add('       AND    PK.PRO_ITEM > 0');
        SQL.Add('       AND    PK.PRO_UNIT > 0');
        SQL.Add('       GROUP BY 1)     AS PK');
        SQL.Add('       JOIN ETIQUETAS  AS FK ON (FK.PRO_IPRO = PK.IDCP AND FK.PRO_UNIT = PK.VPRC_COM)');
        SQL.Add('       GROUP BY 1,2,3) AS FK');
        SQL.Add('ON');
        SQL.Add('PK.PRO_IPRO = FK.IDCP AND PK.PRO_ITEM = 0');
        SQL.Add('WHEN   MATCHED THEN');
        SQL.Add('UPDATE SET');
        SQL.Add('       PK.PRO_ITEM = FK.ITEM,');
        SQL.Add('       PK.PRO_UNIT = FK.VPRC_COM');
        ExecQuery;
      end;
      oRTransact(TIBTransaction(FindComponent('TSEdicao')));
    except
      on E: Exception do
      begin
        oRTransact(TIBTransaction(FindComponent('TSEdicao')),ltRollback);
        oException(Nil,'Falha ao tentar incorporar pedido !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                        E.Message);
      end;
    end;
  end;
end;

end.
