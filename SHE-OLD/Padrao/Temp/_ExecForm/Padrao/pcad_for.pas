unit pcad_for;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, DB,
  IBCustomDataSet, IBQuery, ImgList, dxCntner,  ComCtrls, ExtCtrls,
  dxExEdtr, dxEdLib, dxEditor, StdCtrls, DateUtils, DBCtrls, dxPageControl,
  dxDBELib, Menus, IBStoredProc, IBDatabase, IBEvents, Shellapi,
  jpeg, math, rxSpeedbar, cxGraphics, IBSQL, cxControls, dxStatusBar,
  StrUtils, pConsulta, ActnList;

type
  Tfrmcad_for = class(TFrmConsulta)
    CadastroC_CnpjCpf: TStringField;
    CadastroC_Fone: TStringField;
    CadastroC_Celular: TStringField;
    CadastroC_Endereco: TStringField;
    CadastroC_InfoC: TStringField;
    DBGConsultaID: TdxDBGridMaskColumn;
    DBGConsultaC_CnpjCpf: TdxDBGridColumn;
    CadastroC_Email: TStringField;
    CadastroId: TIntegerField;
    CadastroFantasia: TIBStringField;
    CadastroRazao: TIBStringField;
    CadastroDTCadastro: TDateField;
    CadastroDTFundacao: TDateField;
    CadastroDTEdicao: TDateField;
    CadastroDTPedido: TDateField;
    CadastroVLPedido: TIBBCDField;
    CadastroVLDesc: TIBBCDField;
    CadastroVLCredito: TIBBCDField;
    CadastroCnpj: TIBStringField;
    CadastroIE: TIBStringField;
    CadastroCpf: TIBStringField;
    CadastroRG: TIBStringField;
    CadastroISUF: TIBStringField;
    CadastroIM: TIBStringField;
    CadastroCICMS: TIBStringField;
    CadastroRICMS: TIBStringField;
    CadastroIDEstrangeiro: TIBStringField;
    CadastroContato: TIBStringField;
    CadastroDDD: TIBStringField;
    CadastroTEL1: TIBStringField;
    CadastroCelular: TIBStringField;
    CadastroEmail: TIBStringField;
    CadastroTLgr: TIBStringField;
    CadastroXLgr: TIBStringField;
    CadastroNRO: TIBStringField;
    CadastroXCpl: TIBStringField;
    CadastroCep: TIBStringField;
    CadastroXBairro: TIBStringField;
    CadastroCMun: TIBStringField;
    CadastroXMun: TIBStringField;
    CadastroUF: TIBStringField;
    CadastroRegiao: TIBStringField;
    CadastroETLgr: TIBStringField;
    CadastroEXLgr: TIBStringField;
    CadastroENRO: TIBStringField;
    CadastroEXCpl: TIBStringField;
    CadastroECep: TIBStringField;
    CadastroEXBairro: TIBStringField;
    CadastroECMun: TIBStringField;
    CadastroEXMun: TIBStringField;
    CadastroEUF: TIBStringField;
    CadastroRTLgr: TIBStringField;
    CadastroRXLgr: TIBStringField;
    CadastroRNRO: TIBStringField;
    CadastroRXCpl: TIBStringField;
    CadastroRCep: TIBStringField;
    CadastroRXBairro: TIBStringField;
    CadastroRCMun: TIBStringField;
    CadastroRXMun: TIBStringField;
    CadastroRUF: TIBStringField;
    CadastroIDVendedor: TIntegerField;
    CadastroDEVendedor: TIBStringField;
    CadastroIDRepresentante: TIntegerField;
    CadastroDERepresentante: TIBStringField;
    CadastroPrazo: TIBStringField;
    CadastroSTCadastro: TIBStringField;
    CadastroInfoA: TIBStringField;
    CadastroInfoC: TIBStringField;
    DBGConsultaFantasia: TdxDBGridMaskColumn;
    DBGConsultaRazao: TdxDBGridMaskColumn;
    DBGConsultaDTCadastro: TdxDBGridDateColumn;
    DBGConsultaXMun: TdxDBGridMaskColumn;
    DBGConsultaUF: TdxDBGridMaskColumn;
    DBGConsultaSTCadastro: TdxDBGridMaskColumn;
    DBGConsultaC_Endereco: TdxDBGridColumn;
    CadastroIDTransportadora: TIntegerField;
    CadastroDETransportadora: TIBStringField;
    GBProdutos: TGroupBox;
    Produtos: TIBQuery;
    ProdutosID: TIntegerField;
    ProdutosIDSCT: TSmallintField;
    ProdutosARTIGO: TIBStringField;
    ProdutosSKU: TIBStringField;
    ProdutosDTCA: TDateField;
    ProdutosUCOM: TIBStringField;
    ProdutosVPRC_PAD: TFloatField;
    ProdutosEPE_QTDE: TIBBCDField;
    ProdutosEPE_QTRL: TIntegerField;
    ProdutosCDCF: TIBStringField;
    ProdutosDECF: TIBStringField;
    ProdutosFPAIS: TIBStringField;
    ProdutosXPAIS: TIBStringField;
    ProdutosC_ID: TIntegerField;
    DTSProdutos: TDataSource;
    DBGProdutos: TdxDBGrid;
    DBGProdutosARTIGO: TdxDBGridMaskColumn;
    DBGProdutosSKU: TdxDBGridMaskColumn;
    DBGProdutosDESCRICAO: TdxDBGridMaskColumn;
    DBGProdutosDTCA: TdxDBGridDateColumn;
    DBGProdutosDEST: TdxDBGridMaskColumn;
    DBGProdutosUCOM: TdxDBGridMaskColumn;
    DBGProdutosUCON: TdxDBGridMaskColumn;
    DBGProdutosVPRC_PAD: TdxDBGridMaskColumn;
    DBGProdutosVPRC_COM_PAD: TdxDBGridMaskColumn;
    DBGProdutosEPE_QTDE: TdxDBGridMaskColumn;
    DBGProdutosEPE_QTRL: TdxDBGridMaskColumn;
    DBGProdutosCDCF: TdxDBGridMaskColumn;
    DBGProdutosDECF: TdxDBGridMaskColumn;
    DBGProdutosFPAIS: TdxDBGridMaskColumn;
    DBGProdutosXPAIS: TdxDBGridMaskColumn;
    DBGProdutosC_ID: TdxDBGridColumn;
    ProdutosUCON: TIBStringField;
    ProdutosDESCRICAO: TIBStringField;
    ProdutosVPRC_COM_PAD: TFloatField;
    ProdutosDEST: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure SIMPesquisaClick(Sender: TObject);
    procedure SIEIncluiClick(Sender: TObject);
    procedure SIEAlteraClick(Sender: TObject);
    procedure DBGConsultaDblClick(Sender: TObject);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure DTSCadastroDataChange(Sender: TObject; Field: TField);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure ProdutosCalcFields(DataSet: TDataSet);
    procedure DBGProdutosCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
    procedure _Edicao(AEdicao: Word);
  public
    { Public declarations }
    procedure _WM_AFTER_ACTIVATE  (var Msg: TMessage); message WM_AFTER_ACTIVATE;
  end;

var
  frmcad_for: Tfrmcad_for;

implementation

uses uPrincipal, bPrincipal,
  pcad_for_edi, ppesquisa_geral;

{$R *.dfm}

procedure Tfrmcad_for._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
  inherited;
  with Produtos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,IDSCT,ARTIGO,SKU,CAST(DTCA AS DATE) AS DTCA,DECP||'' ''||COALESCE(DGCP,'''') AS DESCRICAO,CDCF,DECF,UCOM,UCON,');
    SQL.Add('       VPRC_PAD,VPRC_COM_PAD,FPAIS,XPAIS,');
    SQL.Add('       EPE_QTDE,EPE_QTRL,DEST');
    SQL.Add('FROM   SP_CAD_PRO_PSQ('''+RECParametros.EP_ID+''',:ID,''CP.IDCF'')');
    Prepare;
  end;

  with cadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID "Id",FOR_FANT "Fantasia",FOR_RAZA "Razao",');
    SQL.Add('       FOR_DCAD "DTCadastro",FOR_DFUN "DTFundacao",FOR_DALT "DTEdicao",FOR_DULT "DTPedido",');
    SQL.Add('       COALESCE(FOR_VULT,0) "VLPedido",COALESCE(FOR_VDSC,0) "VLDesc",0.00 "VLCredito",');
    SQL.Add('       FOR_CNPJ "Cnpj"      ,FOR_INSC "IE"       ,FOR_CPF "Cpf",FOR_RG "RG",FOR_ISUF "ISUF",FOR_IM "IM",');
    SQL.Add('       FOR_CICM "CICMS"     ,FOR_RICM "RICMS"    ,FOR_IDESTRANGEIRO "IDEstrangeiro",');
    SQL.Add('       FOR_CONT "Contato"   ,FOR_DDD  "DDD"      ,FOR_TEL1 "TEL1"  ,FOR_CEL "Celular",FOR_MAIL "Email",');
    SQL.Add('       FOR_TLOG "TLgr"      ,FOR_LOGR "XLgr"     ,FOR_NUME "NRO"   ,FOR_COMP "XCpl"  ,FOR_CEP  "Cep",');
    SQL.Add('       FOR_BAI  "XBairro"   ,FOR_CMUN "CMun"     ,FOR_CID  "XMun"  ,FOR_ESTA "UF"    ,FOR_REGI "Regiao",');
    SQL.Add('       FOR_TLOV "ETLgr"     ,FOR_LOGV "EXLgr"    ,FOR_NUMV "ENRO"  ,FOR_COMV "EXCpl" ,FOR_CEP  "ECep",');
    SQL.Add('       FOR_BAIV "EXBairro"  ,FOR_CMUV "ECMun"    ,FOR_CIDV  "EXMun",FOR_ESTV "EUF"   ,');
    SQL.Add('       FOR_TLOR "RTLgr"     ,FOR_LORE "RXLgr"    ,FOR_NUMR "RNRO"  ,FOR_COMR "RXCpl" ,FOR_CEPR "RCep",');
    SQL.Add('       FOR_BAIR "RXBairro"  ,FOR_CMUR "RCMun"    ,FOR_CIDR  "RXMun",FOR_ESTR "RUF"   ,');
    SQL.Add('       CV.USU_CUSU  "IDVendedor",CV.USU_DUSU "DEVendedor",CR.ID "IDRepresentante",CR.REP_FANT "DERepresentante",');
    SQL.Add('       FOR_DPAG "Prazo"     ,FOR_CTRA "IDTransportadora",FOR_DTRA "DETransportadora",');
    SQL.Add('       TRIM(CASE FOR_STAV');
    SQL.Add('            WHEN ''A'' THEN ''ATIVO''');
    SQL.Add('            WHEN ''I'' THEN ''INATIVO''');
    SQL.Add('            WHEN ''S'' THEN ''SUSPENSO''');
    SQL.Add('            WHEN ''PRÉ'' THEN ''PRÉ CADASTRO''');
    SQL.Add('       END) AS "STCadastro",');
    SQL.Add('       TRIM(CAST(SUBSTRING(FOR_OBSE FROM 1 FOR 512) AS VARCHAR(512))) "InfoA",');
    SQL.Add('       TRIM(CAST(SUBSTRING(FOR_OBSO FROM 1 FOR 512) AS VARCHAR(512))) "InfoC"');
    SQL.Add('FROM   CAD_FOR AS PK');
    SQL.Add('LEFT   OUTER JOIN CAD_USU     AS CV     ON (FOR_CVEN        = CV.USU_CUSU)');
    SQL.Add('LEFT   OUTER JOIN CAD_REP     AS CR ON (FOR_CREP        = CR.ID)');

    SQL.Add('WHERE (CAST(PK.DTCA AS DATE) BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) ');
    SQL.Add('OR     CAST(PK.DTPC AS DATE) BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) ');
    SQL.Add('OR     CAST(PK.DTNF AS DATE) BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))))');

    SQL.Add('ORDER BY PK.ID');
    Open;
  end;
end;

procedure Tfrmcad_for.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_FOR_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Fornecedores';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmcad_for.FormActivate(Sender: TObject);
begin
  inherited;
  DBGConsulta.SetFocus;
end;

procedure Tfrmcad_for.SIMPesquisaClick(Sender: TObject);
begin
  inherited;
  FrmPesquisa_Geral := TFrmPesquisa_Geral.Create(Self);
  try
    FrmPesquisa_Geral.Tag := 94;
    FrmPesquisa_Geral.ShowModal;
  finally
    try
      if FrmPesquisa_Geral.Editado then
      with Cadastro do
      begin
        oCTransact(TConsulta);
        oOTransact(TConsulta);

        Close;
        SQL.Clear;
        SQL.Add('SELECT   PK.ID "Id",FOR_FANT "Fantasia",FOR_RAZA "Razao",');
        SQL.Add('         FOR_DCAD "DTCadastro",FOR_DFUN "DTFundacao",FOR_DALT "DTEdicao",FOR_DULT "DTPedido",');
        SQL.Add('         COALESCE(FOR_VULT,0) "VLPedido",COALESCE(FOR_VDSC,0) "VLDesc",0.00 "VLCredito",');
        SQL.Add('         FOR_CNPJ "Cnpj"      ,FOR_INSC "IE"       ,FOR_CPF "Cpf",FOR_RG "RG",FOR_ISUF "ISUF",FOR_IM "IM",');
        SQL.Add('         FOR_CICM "CICMS"     ,FOR_RICM "RICMS"    ,FOR_IDESTRANGEIRO "IDEstrangeiro",');
        SQL.Add('         FOR_CONT "Contato"   ,FOR_DDD  "DDD"      ,FOR_TEL1   "TEL1" ,FOR_CEL "Celular",FOR_MAIL "Email",');
        SQL.Add('         FOR_TLOG "TLgr"      ,FOR_LOGR "XLgr"     ,FOR_NUME   "NRO"  ,FOR_COMP "XCpl"  ,FOR_CEP  "Cep",');
        SQL.Add('         FOR_BAI  "XBairro"   ,FOR_CMUN "CMun"     ,FOR_CID    "XMun" ,FOR_ESTA "UF"    ,FOR_REGI "Regiao",');
        SQL.Add('         FOR_TLOV "ETLgr"     ,FOR_LOGV "EXLgr"    ,FOR_NUMV   "ENRO" ,FOR_COMV "EXCpl" ,FOR_CEP  "ECep",');
        SQL.Add('         FOR_BAIV "EXBairro"  ,FOR_CMUV "ECMun"    ,FOR_CIDV   "EXMun",FOR_ESTV "EUF"   ,');
        SQL.Add('         FOR_TLOR "RTLgr"     ,FOR_LORE "RXLgr"    ,FOR_NUMR   "RNRO" ,FOR_COMR "RXCpl" ,FOR_CEPR "RCep",');
        SQL.Add('         FOR_BAIR "RXBairro"  ,FOR_CMUR "RCMun"    ,FOR_CIDR   "RXMun",FOR_ESTR "RUF"   ,');
        SQL.Add('         CV.USU_CUSU  "IDVendedor",CV.USU_DUSU "DEVendedor",CR.ID "IDRepresentante",CR.REP_FANT "DERepresentante",');
        SQL.Add('         FOR_DPAG "Prazo"     ,FOR_CTRA "IDTransportadora",FOR_DTRA "DETransportadora",');
        SQL.Add('         TRIM(CASE FOR_STAV');
        SQL.Add('              WHEN ''A'' THEN ''ATIVO''');
        SQL.Add('              WHEN ''I'' THEN ''INATIVO''');
        SQL.Add('              WHEN ''S'' THEN ''SUSPENSO''');
        SQL.Add('              WHEN ''PRÉ'' THEN ''PRÉ CADASTRO''');
        SQL.Add('         END) AS "STCadastro",');
        SQL.Add('         TRIM(CAST(SUBSTRING(FOR_OBSE FROM 1 FOR 512) AS VARCHAR(512))) "InfoA",');
        SQL.Add('         TRIM(CAST(SUBSTRING(FOR_OBSO FROM 1 FOR 512) AS VARCHAR(512))) "InfoC"');
        SQL.Add('FROM     CAD_FOR AS PK');
        SQL.Add('LEFT   OUTER JOIN CAD_USU     AS CV     ON (FOR_CVEN        = CV.USU_CUSU)');
        SQL.Add('LEFT   OUTER JOIN CAD_REP     AS CR ON (FOR_CREP        = CR.ID)');

        if FrmPesquisa_Geral.EDTXT.Text <> EmptyStr then
        SQL.Add('WHERE ' + FrmPesquisa_Geral.CField + ' LIKE ''' + FrmPesquisa_Geral.EDTXT.Text + '%''');

        if (FrmPesquisa_Geral.dxDT1.Date > 0) and (FrmPesquisa_Geral.dxDT2.Date > 0) then
        SQL.Add(IFThen(Pos('WHERE',Cadastro.SQL.Text) = 0,'WHERE ','AND ') + FrmPesquisa_Geral.cData + ' BETWEEN ''' + formatDateTime('mm/dd/yy',FrmPesquisa_Geral.dxDT1.Date) + ''' AND ''' + formatDateTime('mm/dd/yy',FrmPesquisa_Geral.dxDT2.Date) + '''');

        SQL.Add('ORDER BY PK.FANTASIA');
        Open;
        APSQ_CAD := FrmPesquisa_Geral.cbCAMPO.Text;
      end;
    finally
      FreeAndNil(FrmPesquisa_Geral);
    end;
  end;

  DBGConsultaFANTASIA.Field.FocusControl;
  DBGConsulta.SetFocus;
end;

procedure Tfrmcad_for.SIEIncluiClick(Sender: TObject);
begin
  inherited;
  _Edicao(0);
end;

procedure Tfrmcad_for.SIEAlteraClick(Sender: TObject);
begin
  inherited;
  _Edicao(1);
end;

procedure Tfrmcad_for.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
  var Value: Variant;
begin
  if not ASelected then
  begin
    Value := ANode.Values[5];
    if not VarIsNull(Value) then
       if Value = 'I' then
       begin
         AFont.Color := clwhite;
         AColor      := $000D3EFF;
       end else
       if Value = 'S' then
       begin
         AFont.Color := clwhite;
         AColor      := clBlack;
       end else
       if Value = 'PRÉ' then
       begin
         AFont.Color := clBlack;
         AColor      := $00BEEFF8;
       end;
  end;
end;

procedure Tfrmcad_for.DBGConsultaDblClick(Sender: TObject);
begin
  SIEAltera.Click;
end;

procedure Tfrmcad_for.DBGConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin  case key of
       vk_escape: SIMSaida.Click;
       vk_insert: SIEInclui.Click;
       vk_return: DBGConsultaDblClick(Self);
       vk_delete: SIEExclui.Click;
  end;
end;

procedure Tfrmcad_for.CadastroCalcFields(DataSet: TDataSet);
begin
  CadastroC_CnpjCpf.Value  := IFThen(not oEmpty(CadastroCnpj.AsString),oCNPJ_Mask(CadastroCnpj.AsString),oCPF_Mask(CadastroCpf.AsString));
  CadastroC_Endereco.Value := CadastroTLgr.AsString    +' '    +CadastroXLgr.AsString +', ' +CadastroNRO.AsString+' '+CadastroXCpl.AsString+' '+'Cep: '+LeftStr(CadastroCep.AsString,5)+'-'+RightStr(CadastroCep.AsString,3)+#13+
                              CadastroXBairro.AsString +' - '  +CadastroXMun.AsString +' - '+CadastroUF.AsString;
  CadastroC_Fone.Value     := '('+CadastroDDD.AsString+') '+IFThen(Length(CadastroTEL1.AsString) > 8,
                              LeftStr(CadastroTEL1.AsString,5)+'-'+RightStr(CadastroTEL1.AsString,4),
                              LeftStr(CadastroTEL1.AsString,4)+'-'+RightStr(CadastroTEL1.AsString,4));

  CadastroC_Celular.Value  := IFThen(Length(CadastroCelular.AsString) > 8,
                              LeftStr(CadastroCelular.AsString,5)+'-'+RightStr(CadastroCelular.AsString,4),
                              LeftStr(CadastroCelular.AsString,4)+'-'+RightStr(CadastroCelular.AsString,4));

  if not oEmpty(oREPMemoEsp(CadastroInfoA.AsString)) then
  CadastroC_InfoC.Value := 'Observações: '+LeftStr(oREPMemoEsp(CadastroInfoA.AsString),250);

  if not oEmpty(oREPMemoEsp(CadastroInfoC.AsString)) then
  begin
    if not oEmpty(CadastroC_InfoC.AsString) then
    CadastroC_InfoC.Value := CadastroC_InfoC.AsString + #13;
    CadastroC_InfoC.Value := CadastroC_InfoC.AsString + 'Financeiro: '+LeftStr(oREPMemoEsp(CadastroInfoC.AsString),250);
  end;

  CadastroC_Email.Value := IFThen(not oEmpty(CadastroEmail.AsString),CadastroEmail.AsString,'Email não cadastrado');
end;

procedure Tfrmcad_for.DTSCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  DBGConsultaC_CnpjCpf.Caption := IFThen(not oEmpty(CadastroCnpj.AsString),'Cnpj','Cpf');
end;

procedure Tfrmcad_for._Edicao(AEdicao: Word);
begin
  frmcad_for_edi     := TFrmcad_for_edi.Create(Self);
  frmcad_for_edi.Tag := AEdicao;
  try frmcad_for_edi.ShowModal;
  finally FreeAndNil(frmcad_for_edi);
  end;
end;

procedure Tfrmcad_for.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if Produtos.State = dsInactive then Produtos.Open;

  DBGConsulta.FocusedColumn := 1;
end;

procedure Tfrmcad_for.ProdutosCalcFields(DataSet: TDataSet);
begin
  ProdutosC_ID.Value := Produtos.RecNo;
end;

procedure Tfrmcad_for.DBGProdutosCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGProdutosC_ID.Index] mod 2 <> 0 then
       AColor := $00EFF0F1;

    if ((AColor = $00EFF0F1) and (AFont.Color = clWhite)) then
         AFont.Color := clBlack;

     if ((AColumn = DBGProdutosEPE_QTDE) or (AColumn = DBGProdutosEPE_QTRL)) then
          if ANode.Values[DBGProdutosEPE_QTDE.Index] > 0 then
          begin
            AFont.Color := clBlack;
            AColor      := $00C4FFC4;
          end else
          if ANode.Values[DBGProdutosEPE_QTDE.Index] < 0 then
          begin
            AFont.Color := clWhite;
            AColor      := $000024B3;
          end;

    if (AColumn = DBGProdutosDEST) then
        if ANode.Values[DBGProdutosDEST.Index] = 'PRÉ-CADASTRO' then
        begin
          AFont.Color := clBlack;
          AColor      := clInfoBk;
        end else
        if ANode.Values[DBGProdutosDEST.Index] = 'INATIVO' then
        begin
          AFont.Color := clWhite;
          AColor      := $000024B3;
       end;

    if ((AColumn = DBGProdutosVPRC_PAD) or (AColumn = DBGProdutosVPRC_COM_PAD)) then
    begin
      AFont.Color := clWhite;
      AColor      := clGray;
    end;
  end;
end;

end.

