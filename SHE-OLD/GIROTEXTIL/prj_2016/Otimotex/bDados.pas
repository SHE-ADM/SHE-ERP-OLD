unit bDados;

interface

uses
  oPrincipal,
  SysUtils, Classes, DB, IBCustomDataSet, IBStoredProc, IBDatabase, Shellapi,
  Windows, Messages, Variants,  Graphics, Controls, Forms, Dialogs,
  IBEvents, IBSQL, IBQuery;


type
  TdmDADOS = class(TDataModule)
    ibDB: TIBDatabase;
    tTRA: TIBTransaction;
    ibSP: TIBStoredProc;
    bSHEILD: TIBDatabase;
    tSHEILD: TIBTransaction;
    bCEP: TIBDatabase;
    tCEP: TIBTransaction;
    TFBCadastro: TIBTransaction;
    QFBCadastro: TIBQuery;
    SQLFBCadastro: TIBSQL;
    DTSQFBCadastro: TDataSource;
    TFBEdicao: TIBTransaction;
    QFBEdicao: TIBQuery;
    SPFBEdicao: TIBStoredProc;
    DTSQFBEdicao: TDataSource;
    SQLFBEdicao: TIBSQL;
    QFBConsulta: TIBQuery;
    TFBConsulta: TIBTransaction;
    DSTQFBConsulta: TDataSource;
    SQLFBConsulta: TIBSQL;
    FBProdutos: TIBQuery;
    FBProdutosC_DCST: TStringField;
    FBProdutosC_STAV: TStringField;
    FBProdutosC_QEST: TFloatField;
    FBProdutosC_REST: TIntegerField;
    FBProdutosC_QRES: TFloatField;
    FBProdutosC_RRES: TIntegerField;
    FBProdutosC_QSEP: TFloatField;
    FBProdutosC_RSEP: TIntegerField;
    FBProdutosC_QDIS: TFloatField;
    FBProdutosC_RDIS: TIntegerField;
    FBProdutosC_QDEF: TFloatField;
    FBProdutosC_RDEF: TIntegerField;
    FBProdutosC_QCOM: TFloatField;
    FBProdutosC_RCOM: TIntegerField;
    FBProdutosC_QPRG: TFloatField;
    FBProdutosC_RPRG: TIntegerField;
    FBProdutosC_QSLD: TFloatField;
    FBProdutosC_RSLD: TIntegerField;
    DTSFBProdutos: TDataSource;
    FBProdutosID: TIntegerField;
    FBProdutosPRO_CBAR: TIBStringField;
    FBProdutosPRO_CFOR: TIBStringField;
    FBProdutosPRO_CART: TIBStringField;
    FBProdutosPRO_CPRO: TIBStringField;
    FBProdutosPRO_CCOR: TIntegerField;
    FBProdutosPRO_PCOR: TIBStringField;
    FBProdutosPRO_DCOR: TIBStringField;
    FBProdutosPRO_DUNI: TIBStringField;
    FBProdutosPRO_GRAD: TIBStringField;
    FBProdutosPRO_COMP: TIBStringField;
    FBProdutosPRO_DPRO: TIBStringField;
    FBProdutosPRO_DPR2: TIBStringField;
    FBProdutosPRO_DPR3: TIBStringField;
    FBProdutosPRO_DPR4: TIBStringField;
    FBProdutosPRO_DPR5: TIBStringField;
    FBProdutosPRO_CDEP: TIntegerField;
    FBProdutosPRO_DEEP: TIBStringField;
    FBProdutosPRO_CDFO: TIntegerField;
    FBProdutosPRO_DEFO: TIBStringField;
    FBProdutosPRO_CCOL: TIntegerField;
    FBProdutosPRO_DCOL: TIBStringField;
    FBProdutosPRO_CGRP: TIntegerField;
    FBProdutosPRO_DGRP: TIBStringField;
    FBProdutosPRO_CCAT: TIntegerField;
    FBProdutosPRO_DCAT: TIBStringField;
    FBProdutosPRO_PREC: TFloatField;
    FBProdutosPRO_PPRO: TFloatField;
    FBProdutosPRO_PDSC: TIBBCDField;
    FBProdutosPRO_VPRC: TFloatField;
    FBProdutosPRO_VPRO: TFloatField;
    FBProdutosPRO_VDSC: TIBBCDField;
    FBProdutosPRO_RPRC: TFloatField;
    FBProdutosPRO_RPRO: TFloatField;
    FBProdutosPRO_RDSC: TIBBCDField;
    FBProdutosPRO_APRC: TIBStringField;
    FBProdutosPRO_LDSC: TIBBCDField;
    FBProdutosPRO_CUST: TFloatField;
    FBProdutosPRO_PCOM: TFloatField;
    FBProdutosPRO_CLIB: TFloatField;
    FBProdutosPRO_PIPI: TSmallintField;
    FBProdutosPRO_CCLF: TIBStringField;
    FBProdutosPRO_CCST: TIBStringField;
    FBProdutosPRO_DORI: TIBStringField;
    FBProdutosPRO_REPR: TIBStringField;
    FBProdutosPRO_METR: TIBBCDField;
    FBProdutosPRO_REND: TIBBCDField;
    FBProdutosPRO_PESO: TIBBCDField;
    FBProdutosPRO_PSCN: TIBBCDField;
    FBProdutosPRO_PSMR: TIBBCDField;
    FBProdutosPRO_STLN: TIBStringField;
    FBProdutosPRO_LARG: TIBBCDField;
    FBProdutosPRO_GRAM: TIBBCDField;
    FBProdutosPRO_UTIL: TIBBCDField;
    FBProdutosPRO_DENS: TIBStringField;
    FBProdutosPRO_TITF: TIBStringField;
    FBProdutosPRO_APRO: TMemoField;
    FBProdutosPRO_OBSE: TMemoField;
    FBProdutosPRO_OBSF: TMemoField;
    FBProdutosPRO_STA: TIBStringField;
    FBProdutosPRO_STAV: TIBStringField;
    FBProdutosPRO_FOTO: TBlobField;
    FBProdutosPRO_FOT2: TBlobField;
    FBProdutosPRO_FOT3: TBlobField;
    FBProdutosPRO_FOT4: TBlobField;
    FBProdutosPRO_FOT5: TBlobField;
    FBProdutosPRO_FOT6: TBlobField;
    FBProdutosPRO_FOT7: TBlobField;
    FBProdutosPRO_FOT8: TBlobField;
    FBProdutosPRO_INS1: TBlobField;
    FBProdutosPRO_INS2: TBlobField;
    FBProdutosPRO_INS3: TBlobField;
    FBProdutosPRO_INS4: TBlobField;
    FBProdutosPRO_INS5: TBlobField;
    FBProdutosPRO_INS6: TBlobField;
    FBProdutosPRO_INS7: TBlobField;
    FBProdutosPRO_INS8: TBlobField;
    FBProdutosPRO_QEST: TIBBCDField;
    FBProdutosPRO_REST: TIntegerField;
    FBProdutosPRO_QRES: TIBBCDField;
    FBProdutosPRO_RRES: TIntegerField;
    FBProdutosPRO_QSEP: TIBBCDField;
    FBProdutosPRO_RSEP: TIntegerField;
    FBProdutosPRO_QCOM: TIBBCDField;
    FBProdutosPRO_RCOM: TIntegerField;
    FBProdutosPRO_QPRG: TIBBCDField;
    FBProdutosPRO_RPRG: TIntegerField;
    FBProdutosPRO_QDEF: TIBBCDField;
    FBProdutosPRO_RDEF: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function bRETNotaFiscal: Variant; STDCall;
function bPSQProdutos(Campo,Texto: String): Integer; STDCall;

var
  dmDADOS: TdmDADOS;
  LAN: string;

implementation

uses uPrincipal;

{$R *.dfm}

function bPSQProdutos(Campo,Texto: String): Integer; STDCall;
var
  CField: String;
begin
  with DMDados do
  begin
    CField := 'CAD_PRO.ID';
    if campo = 'Código de Barras'      then
    CField := 'CAD_PRO.PRO_CBAR'       else
    if campo = 'Produto'               then
    CField := 'CAD_PRO.PRO_CPRO'       else
    if campo = 'WEB'                   then
    CField := 'CAD_PRO.PRO_CPRO'       else
    if campo = 'Referencia'            then
    CField := 'CAD_PRO.PRO_CART'       else
    if campo = 'Ref. Fornecedor'       then
    CField := 'CAD_PRO.PRO_CFOR'       else
    if campo = 'Descrição'             then
    CField := 'CAD_PRO.PRO_DPRO'       else
    if campo = 'Grade'                 then
    CField := 'CAD_PRO.PRO_CPRO'       else
    if campo = 'Grupo'                 then
    CField := 'CAD_PRO.PRO_DGRP'       else
    if campo = 'Categoria (Sub Grupo)' then
    CField := 'CAD_PRO.PRO_DCAT'       else
    if campo = 'Coleção'               then
    CField := 'CAD_PRO.PRO_DCOL' else
    if campo = 'NCM' then
    CField := 'CAD_PRO.PRO_CCLF';

    if oEmpty(Texto) then
    begin
      CField := 'CAD_PRO.ID';
      Texto  := '0';
    end;
      
    Try
      with FBProdutos do
      begin
        SQL.Clear;
        UnPrepare;
        SQL.Add('SELECT CAD_PRO.ID          ,CAD_PRO.PRO_CBAR    ,CAD_PRO.PRO_CFOR    ,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,');
        SQL.Add('       CAD_PRO.PRO_CCOR    ,CAD_PRO.PRO_PCOR    ,CAD_PRO.PRO_DCOR    ,CAD_PRO.PRO_DUNI    ,CAD_PRO.PRO_GRAD,CAD_PRO.PRO_COMP,');
        SQL.Add('       CAD_PRO.PRO_DPRO    ,CAD_PRO.PRO_DPR2    ,CAD_PRO.PRO_DPR3    ,CAD_PRO.PRO_DPR4    ,CAD_PRO.PRO_DPR5,');
        SQL.Add('       CAD_PRO.PRO_CDEP    ,CAD_PRO.PRO_DEEP    ,CAD_PRO.PRO_CDFO    ,CAD_PRO.PRO_DEFO    ,');
        SQL.Add('       CAD_PRO.PRO_CCOL    ,CAD_PRO.PRO_DCOL    ,CAD_PRO.PRO_CGRP    ,CAD_PRO.PRO_DGRP    ,CAD_PRO.PRO_CCAT,CAD_PRO.PRO_DCAT,');
        SQL.Add('       CAD_PRO.PRO_PREC    ,CAD_PRO.PRO_PPRO    ,CAD_PRO.PRO_PDSC    ,CAD_PRO.PRO_VPRC    ,CAD_PRO.PRO_VPRO,CAD_PRO.PRO_VDSC,');
        SQL.Add('       CAD_PRO.PRO_RPRC    ,CAD_PRO.PRO_RPRO    ,CAD_PRO.PRO_RDSC    ,CAD_PRO.PRO_APRC    ,CAD_PRO.PRO_LDSC,');
        SQL.Add('       CAD_PRO.PRO_CUST    ,CAD_PRO.PRO_PCOM    ,CAD_PRO.PRO_CLIB,');
        SQL.Add('       CAD_PRO.PRO_PIPI    ,CAD_PRO.PRO_CCLF    ,CAD_PRO.PRO_CCST    ,CAD_PRO.PRO_DORI    ,CAD_PRO.PRO_REPR,CAD_PRO.PRO_METR,');
        SQL.Add('       CAD_PRO.PRO_REND    ,CAD_PRO.PRO_PESO    ,CAD_PRO.PRO_PSCN    ,CAD_PRO.PRO_PSMR    ,CAD_PRO.PRO_STLN,CAD_PRO.PRO_LARG,');
        SQL.Add('       CAD_PRO.PRO_GRAM    ,CAD_PRO.PRO_UTIL    ,CAD_PRO.PRO_DENS    ,CAD_PRO.PRO_TITF,');
        SQL.Add('       CAD_PRO.PRO_APRO    ,CAD_PRO.PRO_OBSE    ,CAD_PRO.PRO_OBSF    ,CAD_PRO.PRO_STA     ,CAD_PRO.PRO_STAV,');
        SQL.Add('       CAD_PRO_IMG.PRO_FOTO,CAD_PRO_IMG.PRO_FOT2,CAD_PRO_IMG.PRO_FOT3,CAD_PRO_IMG.PRO_FOT4,');
        SQL.Add('       CAD_PRO_IMG.PRO_FOT5,CAD_PRO_IMG.PRO_FOT6,CAD_PRO_IMG.PRO_FOT7,CAD_PRO_IMG.PRO_FOT8,');
        SQL.Add('       CAD_PRO_IMG.PRO_INS1,CAD_PRO_IMG.PRO_INS2,CAD_PRO_IMG.PRO_INS3,CAD_PRO_IMG.PRO_INS4,');
        SQL.Add('       CAD_PRO_IMG.PRO_INS5,CAD_PRO_IMG.PRO_INS6,CAD_PRO_IMG.PRO_INS7,CAD_PRO_IMG.PRO_INS8,');

        { Estoque por Peças }
        if RECParametros.EstoquePecas then
        begin
          SQL.Add('     (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_est']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST,');
          SQL.Add('     (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_est']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST,');
        end else
        { Estoque Normal }
        begin
          SQL.Add('     (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_est']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST,');
          SQL.Add('     (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_est']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST,');
        end;
        SQL.Add('       (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_res']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES,');
        SQL.Add('       (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_res']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES,');
        SQL.Add('       (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_sep']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP,');
        SQL.Add('       (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_sep']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP,');
        SQL.Add('       (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_prg']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QPRG,');
        SQL.Add('       (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_prg']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RPRG,');
        SQL.Add('       (SELECT SUM(EST_CRED)          FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QCOM,');
        SQL.Add('       (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RCOM,');
        SQL.Add('       (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_def']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QDEF,');
        SQL.Add('       (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_def']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RDEF ');

        SQL.Add('FROM   CAD_PRO,CAD_PRO_IMG');
        SQL.Add('WHERE  CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');
        if Campo <> 'Todos' then
        begin
          if (CField = 'CAD_PRO.ID') or (CField = 'CAD_PRO.PRO_CBAR') or (CField = 'CAD_PRO.PRO_CART') or
             (Campo  = 'Grade')      or (Campo = 'WEB') then
          SQL.Add('AND '+CField+' = '''    +Texto+'''' ) else
          SQL.Add('AND '+CField+' LIKE ''%'+Texto+'%''');
        end;
        if FrmPrincipal.ParametrosPAR_SPRO.AsString = '1' then
        SQL.Add('AND      CAD_PRO.PRO_CDEP = '''+RECParametros.Id+'''');
        SQL.Add('ORDER BY CAD_PRO.PRO_CART,CAD_PRO.PRO_DCOR');
        Prepare;
        Open;
        Next;
      end;
    Finally
      Result := FBProdutos.RecNo;
    End;
  end;
end;

function bRETNotaFiscal: Variant; STDCall;
var
  i: Word;
begin
  result := '0';
  with DMDados,QFBCadastro do
  try
    oOTransact(TFBCadastro);
    SQL.Clear;
    SQL.Add('SELECT MAX(NFE_CDNF) FROM (');
    for i := 1 to 9 do
    begin
      SQL.Add('SELECT MAX(NFE_CDNF) "NFE_CDNF"');
      SQL.Add('FROM   PAR_SIS,'+oREPZero('nfe_cab','_',i,3)+ ' "NFE_CAB"');
      SQL.Add('WHERE  PAR_SIS.ID       = '''+IntToStr(i)+'''');
      SQL.Add('AND    PAR_SIS.PAR_CNPJ = '''+FrmPrincipal.ParametrosPAR_CNPJ.AsString+'''');
      SQL.Add('AND    NFE_CAB.NFE_CHAV <> '' ''');
      if i < 9 then
      SQL.Add('UNION');
    end;
    SQL.Add(')');
    Open;
    result := Fields[0].AsInteger + 1;
  finally
    oCTransact(TFBCadastro);
  end;
end;

procedure TdmDADOS.DataModuleCreate(Sender: TObject);
var
  IP: string;
begin
  RECParametros.PathPrincipal   := 'C:\Sheild';
  RECParametros.PathDocumentos  := RECParametros.PathPrincipal +'\Documentos\';
  RECParametros.PathImagens     := RECParametros.PathPrincipal +'\Imagens\';
  RECParametros.PathNotaFiscal  := RECParametros.PathPrincipal +'\NotaFiscal\';
  RECParametros.PathCupomFiscal := RECParametros.PathPrincipal +'\CupomFiscal\';

  {IP_FIXO OTIMOTEX    = '200.232.176.73';}
  {IP_FIXO DONA AMELIA = '177.68.148.249';}
  {IP_FiXO TRIMS21     = '201.27.148.155';}
  {IP_FiXO ABC         = '177.103.176.111';
   IP_FiXO EXPRESSO    = '189.111.104.110';
  }

 //IP  := '192.168.0.200:'; // trims21
 IP  := '192.168.2.113:'; // expresso
// IP  := '10.15.7.60:';    // abc
//   IP  := '10.15.7.60:';
   LAN := 'REDE LOCAL';

  ibDB.Connected    := false;
  bSHEILD.Connected := false;
  bCEP.Connected    := false;

  if NOT FileExists('C:\Sheild\NotaFiscal\local.txt') THEN
  begin
    ibDB.DatabaseName := IP+ibDB.DatabaseName;
    bCEP.DatabaseName := IP+bCEP.DatabaseName;
    bCEP.Connected    := true;
    LAN := 'REDE PRIVADA';
  end;
  ibDB.Connected := true;
  bSHEILD.Connected := true;
end;

procedure TdmDADOS.DataModuleDestroy(Sender: TObject);
var
  i: Word;
begin
  if ibDB.TestConnected    then ibDB.CloseDataSets;
  if bSheild.TestConnected then bSheild.CloseDataSets;
  if bCep.TestConnected    then bCep.CloseDataSets;

  with ibDB do
  if TestConnected then
     try
       for i := 0 to Pred(TransactionCount) do
           if Transactions[i].InTransaction then
              Transactions[i].Commit;
     finally
       Connected := False;
       ForceClose;
     end;

  with bSheild do
  if TestConnected then
     try
       for i := 0 to Pred(TransactionCount) do
           if Transactions[i].InTransaction then
              Transactions[i].Commit;
     finally
       Connected := False;
       ForceClose;
     end;

  with bCep do
  if TestConnected then
     try
       for i := 0 to Pred(TransactionCount) do
           if Transactions[i].InTransaction then
              Transactions[i].Commit;
     finally
       Connected := False;
       ForceClose;
     end;

  dmDados := Nil;
end;

end.

