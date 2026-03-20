unit pcad_cli;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, DB,
  IBCustomDataSet, IBQuery, ImgList, dxCntner,  ComCtrls, ExtCtrls,
  dxExEdtr, dxEdLib, dxEditor, StdCtrls, DateUtils, DBCtrls, dxPageControl,
  dxDBELib, Menus, IBStoredProc, IBDatabase, IBEvents, Shellapi,
  jpeg, math, StrUtils, rxSpeedbar, cxGraphics, IBSQL, cxControls, dxStatusBar,
  pConsulta, ActnList;

type
  Tfrmcad_cli = class(TFrmConsulta)
    SIMInfoComercial: TSpeedItem;
    CadastroC_CnpjCpf: TStringField;
    CadastroC_Endereco: TStringField;
    DBGConsultaC_CnpjCpf: TdxDBGridColumn;
    CadastroId: TIntegerField;
    CadastroFantasia: TIBStringField;
    CadastroRazao: TIBStringField;
    CadastroDTCadastro: TDateField;
    CadastroDTFundacao: TDateField;
    CadastroDTEdicao: TDateField;
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
    DBGConsultaFantasia: TdxDBGridMaskColumn;
    DBGConsultaRazao: TdxDBGridMaskColumn;
    DBGConsultaXMun: TdxDBGridMaskColumn;
    DBGConsultaUF: TdxDBGridMaskColumn;
    DBGConsultaSTCadastro: TdxDBGridMaskColumn;
    DBGConsultaC_Endereco: TdxDBGridColumn;
    DBGConsultaDEVendedor: TdxDBGridMaskColumn;
    DBGConsultaDERepresentante: TdxDBGridMaskColumn;
    CadastroIDTransportadora: TIntegerField;
    CadastroDETransportadora: TIBStringField;
    DBGConsultaDTCadastro: TdxDBGridDateColumn;
    DBGConsultaDTFundacao: TdxDBGridDateColumn;
    DBGConsultaDETransportadora: TdxDBGridMaskColumn;
    CadastroDTPEDIDO: TDateTimeField;
    DBGConsultaId: TdxDBGridMaskColumn;
    CadastroC_Fone_Celular: TStringField;
    DBGConsultaC_Fone_Celular: TdxDBGridColumn;
    PNLINFADCAD: TPanel;
    DBINFADCAD: TdxDBMemo;
    CadastroINFADCAD: TIBStringField;
    DBGConsultaEmail: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure SIMInfoComercialClick(Sender: TObject);
    procedure SIMPesquisaClick(Sender: TObject);
    procedure SIEIncluiClick(Sender: TObject);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure DTSCadastroDataChange(Sender: TObject; Field: TField);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SIEAlteraClick(Sender: TObject);
    procedure CadastroAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure _Edicao(AEdicao: Word);
    procedure _Cadastro(AIDEmpresa: Integer = 0;AIDCliente: Integer = 0);
  public
    { Public declarations }
    procedure _WM_AFTER_ACTIVATE  (var Msg: TMessage); message WM_AFTER_ACTIVATE;
  end;

var
  frmcad_cli: Tfrmcad_cli;

implementation

uses uPrincipal, bPrincipal,
  {$IFDEF DEF_COMPRAS} pcad_cli_edi {$ELSE} pcad_cli_edi, ppesquisa_geral {$ENDIF};

{$R *.dfm}

procedure Tfrmcad_cli._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
  inherited;
  _Cadastro(RECParametros.EP_ID);
end;

procedure Tfrmcad_cli.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_CLI_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Clientes';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmcad_cli.SIMPesquisaClick(Sender: TObject);
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
        SQL.Add('SELECT PK.ID "Id",CLI_FANT "Fantasia",CLI_RAZA "Razao",');
        SQL.Add('       CLI_DCAD "DTCadastro",CLI_DFUN "DTFundacao",CLI_DALT "DTEdicao",PK.DTPV AS DTPEDIDO,');
        SQL.Add('       COALESCE(CLI_VULT,0) "VLPedido",COALESCE(CLI_VDSC,0) "VLDesc",COALESCE(CRD.CLI_CRED,0) "VLCredito",');
        SQL.Add('       CLI_CNPJ "Cnpj"      ,CLI_INSC "IE"       ,CLI_CPF "Cpf",CLI_RG "RG",CLI_ISUF "ISUF",CLI_IM "IM",');
        SQL.Add('       CLI_CICM "CICMS"     ,CLI_RICM "RICMS"    ,CLI_IDESTRANGEIRO "IDEstrangeiro",');
        SQL.Add('       CLI_CONT "Contato"   ,CLI_DDD  "DDD"      ,CLI_TEL1 "TEL1"  ,CLI_CEL "Celular",CLI_MAIL "Email",');
        SQL.Add('       CLI_TLOG "TLgr"      ,CLI_LOGR "XLgr"     ,CLI_NUME "NRO"   ,CLI_COMP "XCpl"  ,CLI_CEP  "Cep",');
        SQL.Add('       CLI_BAI  "XBairro"   ,CLI_CMUN "CMun"     ,CLI_CID  "XMun"  ,CLI_ESTA "UF"    ,CLI_REGI "Regiao",');
        SQL.Add('       CLI_TLOV "ETLgr"     ,CLI_LOGV "EXLgr"    ,CLI_NUMV "ENRO"  ,CLI_COMV "EXCpl" ,CLI_CEP  "ECep",');
        SQL.Add('       CLI_BAIV "EXBairro"  ,CLI_CMUV "ECMun"    ,CLI_CIDV "EXMun" ,CLI_ESTV "EUF"   ,');
        SQL.Add('       CLI_TLOR "RTLgr"     ,CLI_LORE "RXLgr"    ,CLI_NUMR "RNRO"  ,CLI_COMR "RXCpl" ,CLI_CEPR "RCep",');
        SQL.Add('       CLI_BAIR "RXBairro"  ,CLI_CMUR "RCMun"    ,CLI_CIDR "RXMun" ,CLI_ESTR "RUF"   ,');
        SQL.Add('       CV.ID "IDVendedor",CV.LOGIN "DEVendedor",CR.ID "IDRepresentante",CR.REP_FANT "DERepresentante",');
        SQL.Add('       CLI_DPAG "Prazo"     ,PK.IDCT "IDTransportadora",CLI_DTRA "DETransportadora",');
        SQL.Add('       TRIM(CASE CLI_STAV');
        SQL.Add('            WHEN ''A'' THEN ''ATIVO''');
        SQL.Add('            WHEN ''I'' THEN ''INATIVO''');
        SQL.Add('            WHEN ''S'' THEN ''SUSPENSO''');
        SQL.Add('            WHEN ''PRÉ'' THEN ''PRÉ CADASTRO''');
        SQL.Add('       END) AS "STCadastro",');
        SQL.Add('       NULLIF(TRIM(CAST(');
        SQL.Add('       IIF(PK.INFADCAD IS NULL,'''',TRIM(SUBSTRING(PK.INFADCAD FROM 1 FOR 812)) || ASCII_CHAR(13) || ASCII_CHAR(10)) ||');
        SQL.Add('       IIF(PK.INFADFIN IS NULL,'''',TRIM(SUBSTRING(PK.INFADFIN FROM 1 FOR 812)) || ASCII_CHAR(13) || ASCII_CHAR(10)) AS VARCHAR(1064))),'''') AS INFADCAD');

        SQL.Add('FROM      CAD_CLI     AS PK');
        SQL.Add('LEFT JOIN CAD_CLI_CRD AS CRD     ON (PK.ID   = CRD.IDCD AND CRD.IDEP = ''' + RECParametros.EP_ID + ''')');
        SQL.Add('LEFT JOIN TAB_USER    AS CV     ON (PK.IDCV = CV.ID    )');
        SQL.Add('LEFT JOIN CAD_REP     AS CR ON (PK.IDCR = CR.ID)');

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

procedure Tfrmcad_cli.SIMInfoComercialClick(Sender: TObject);
begin
  uPSQSCORE(self,CadastroID.AsString,EmptyStr);
end;

procedure Tfrmcad_cli.SIEIncluiClick(Sender: TObject);
begin
  inherited;
  _Edicao(0);
end;

procedure Tfrmcad_cli.SIEAlteraClick(Sender: TObject);
begin
  inherited;
  _Edicao(CadastroID.AsInteger);
end;

procedure Tfrmcad_cli._Edicao(AEdicao: Word);
begin
  frmcad_cli_edi           := TFrmcad_cli_edi.Create(Self);
  frmcad_cli_edi.Tag       := AEdicao;
  frmcad_cli_edi.IDCliente := IntToStr(AEdicao);

  try frmcad_cli_edi.ShowModal;
  finally
    FreeAndNil(frmcad_cli_edi);
    oRefresh(Cadastro);
  end;
end;

procedure Tfrmcad_cli.CadastroCalcFields(DataSet: TDataSet);
begin
  CadastroC_CnpjCpf.Value := IFThen(not oEmpty(CadastroCnpj.AsString),oCNPJ_Mask(CadastroCnpj.AsString),oCPF_Mask(CadastroCpf.AsString));

  if not oEmpty(CadastroXLgr.AsString) then
         CadastroC_Endereco.Value := CadastroTLgr.AsString+' '+CadastroXLgr.AsString +', ' +CadastroNRO.AsString+' '+CadastroXCpl.AsString+' '+'Cep '+LeftStr(CadastroCep.AsString,5)+'-'+RightStr(CadastroCep.AsString,3);

  if not oEmpty(CadastroTEL1.AsString) then
     CadastroC_Fone_Celular.Value := '('+CadastroDDD.AsString+') '+IFThen(Length(CadastroTEL1.AsString) > 8,
                                LeftStr(CadastroTEL1.AsString,5)+'-'+RightStr(CadastroTEL1.AsString,4),
                                LeftStr(CadastroTEL1.AsString,4)+'-'+RightStr(CadastroTEL1.AsString,4));

  if not oEmpty(CadastroCelular.AsString) then
     CadastroC_Fone_Celular.Value := IFThen(Length(CadastroCelular.AsString) > 8,
                               LeftStr(CadastroCelular.AsString,5)+'-'+RightStr(CadastroCelular.AsString,4),
                               LeftStr(CadastroCelular.AsString,4)+'-'+RightStr(CadastroCelular.AsString,4));

  CadastroC_Fone_Celular.Value := Trim(CadastroC_Fone_Celular.AsString);
end;

procedure Tfrmcad_cli.DTSCadastroDataChange(Sender: TObject;
  Field: TField);
var
  PosCount: Word;
begin
  inherited;
  DBGConsultaC_Endereco.Visible := (CadastroC_ENDERECO.AsString  <> EmptyStr);
  DBGConsultaDEVendedor.Visible := (CadastroIDVendedor.AsInteger <> RECUsuarios.Id);

  DBGConsulta.ApplyBestFit(DBGConsultaC_CnpjCpf       );
  DBGConsulta.ApplyBestFit(DBGConsultaDEVendedor      );
  DBGConsulta.ApplyBestFit(DBGConsultaC_Fone_Celular  );
  DBGConsulta.ApplyBestFit(DBGConsultaXMun            );

  { Informações Adicionais }
            PosCount := oPosCount(''#$D'',CadastroINFADCAD.AsString);
  PNLINFADCAD.Height := IFThen(Length(CadastroINFADCAD.AsString) <= 2,0,
                        IFThen((PosCount = 00) and (CadastroINFADCAD.AsString =  EmptyStr) ,00,
                        IFThen((PosCount = 00) and (CadastroINFADCAD.AsString <> EmptyStr) ,30,
                        IFThen((PosCount = 01),040,
                        IFThen((PosCount = 02),055,
                        IFThen((PosCount = 03),070,
                        IFThen((PosCount = 04),080,
                        IFThen((PosCount = 05),090,
                        IFThen((PosCount = 06),100,
                        IFThen((PosCount = 07),110,
                        IFThen((PosCount = 08),120,
                        IFThen((PosCount = 09),130,
                        IFThen((PosCount = 10),140,
                        IFThen((PosCount = 11),150,
                        IFThen((PosCount = 12),160,
                        IFThen((PosCount = 13),170,
                        IFThen((PosCount = 14),180,
                        IFThen((PosCount = 15),190,200))))))))))))))))));
end;

procedure Tfrmcad_cli.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if (AColumn = DBGConsultaSTCadastro) and (ANode.Values[DBGConsultaSTCadastro.Index] <> Null) then
        if ANode.Values[DBGConsultaSTCadastro.Index] = 'PRÉ-CADASTRO' then
        begin
          AFont.Color := clBlack;
          AColor      := clInfoBk;
        end else
        if ANode.Values[DBGConsultaSTCadastro.Index] = 'INATIVO' then
        begin
          AFont.Color := clWhite;
          AColor      := $000024B3;
       end;
  end;
end;

procedure Tfrmcad_cli.DBGConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: SIMSaida.Click;
       vk_insert: SIEInclui.Click;
       vk_return: DBGConsultaDblClick(Self);
       vk_delete: SIEExclui.Click;
  end;
end;

procedure Tfrmcad_cli.dbgConsultaDblClick(Sender: TObject);
begin
  SIEAltera.Click;
end;

procedure TFrmcad_cli._Cadastro(AIDEmpresa: Integer = 0;AIDCliente: Integer = 0);
begin
  with Cadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID "Id",CLI_FANT "Fantasia",CLI_RAZA "Razao",');
    SQL.Add('       CLI_DCAD "DTCadastro",CLI_DFUN "DTFundacao",CLI_DALT "DTEdicao",PK.DTPV AS DTPEDIDO,');
    SQL.Add('       COALESCE(CLI_VULT,0) "VLPedido",COALESCE(CLI_VDSC,0) "VLDesc",COALESCE(CRD.CLI_CRED,0) "VLCredito",');
    SQL.Add('       CLI_CNPJ "Cnpj"      ,CLI_INSC "IE"       ,CLI_CPF "Cpf",CLI_RG "RG",CLI_ISUF "ISUF",CLI_IM "IM",');
    SQL.Add('       CLI_CICM "CICMS"     ,CLI_RICM "RICMS"    ,CLI_IDESTRANGEIRO "IDEstrangeiro",');
    SQL.Add('       CLI_CONT "Contato"   ,CLI_DDD  "DDD"      ,CLI_TEL1 "TEL1"  ,CLI_CEL  "Celular",CLI_MAIL "Email",');
    SQL.Add('       CLI_TLOG "TLgr"      ,CLI_LOGR "XLgr"     ,CLI_NUME "NRO"   ,CLI_COMP "XCpl"   ,CLI_CEP  "Cep",');
    SQL.Add('       CLI_BAI  "XBairro"   ,CLI_CMUN "CMun"     ,CLI_CID  "XMun"  ,CLI_ESTA "UF"     ,CLI_REGI "Regiao",');
    SQL.Add('       CLI_TLOV "ETLgr"     ,CLI_LOGV "EXLgr"    ,CLI_NUMV "ENRO"  ,CLI_COMV "EXCpl"  ,CLI_CEP  "ECep",');
    SQL.Add('       CLI_BAIV "EXBairro"  ,CLI_CMUV "ECMun"    ,CLI_CIDV "EXMun" ,CLI_ESTV "EUF"    ,');
    SQL.Add('       CLI_TLOR "RTLgr"     ,CLI_LORE "RXLgr"    ,CLI_NUMR "RNRO"  ,CLI_COMR "RXCpl"  ,CLI_CEPR "RCep",');
    SQL.Add('       CLI_BAIR "RXBairro"  ,CLI_CMUR "RCMun"    ,CLI_CIDR "RXMun" ,CLI_ESTR "RUF"    ,');
    SQL.Add('       CV.ID "IDVendedor",CV.LOGIN "DEVendedor",CR.ID "IDRepresentante",CR.REP_FANT "DERepresentante",');
    SQL.Add('       CLI_DPAG "Prazo"     ,PK.IDCT "IDTransportadora",CLI_DTRA "DETransportadora",');
    SQL.Add('       TRIM(CASE CLI_STAV');
    SQL.Add('            WHEN ''A'' THEN ''ATIVO''');
    SQL.Add('            WHEN ''I'' THEN ''INATIVO''');
    SQL.Add('            WHEN ''S'' THEN ''SUSPENSO''');
    SQL.Add('            WHEN ''PRÉ'' THEN ''PRÉ CADASTRO''');
    SQL.Add('       END) AS "STCadastro",');
    SQL.Add('       NULLIF(TRIM(CAST(');
    SQL.Add('       IIF(PK.INFADCAD IS NULL,'''',TRIM(SUBSTRING(PK.INFADCAD FROM 1 FOR 812)) || ASCII_CHAR(13) || ASCII_CHAR(10)) ||');
    SQL.Add('       IIF(PK.INFADFIN IS NULL,'''',TRIM(SUBSTRING(PK.INFADFIN FROM 1 FOR 812)) || ASCII_CHAR(13) || ASCII_CHAR(10)) AS VARCHAR(1064))),'''') AS INFADCAD');

    SQL.Add('FROM      CAD_CLI     AS PK');
    SQL.Add('LEFT JOIN CAD_CLI_CRD AS CRD     ON (PK.ID   = CRD.IDCD AND CRD.IDEP = :IDEmpresa)');
    SQL.Add('LEFT JOIN TAB_USER    AS CV     ON (PK.IDCV = CV.ID    )');
    SQL.Add('LEFT JOIN CAD_REP     AS CR ON (PK.IDCR = CR.ID)');

    if REC_SHE_DEF.IDPK = -3 then
       SQL.Add('WHERE '+IFThen(REC_SHE_DEF.FB_PSQ_TB_NO_PK = 'I','PK.ID = ','PK.CLI_FANT CONTAINING ')+''''+REC_SHE_DEF.ID+'''') else
    if AIDCliente > 0 then
       SQL.Add('WHERE PK.ID = ''' + IntToStr(AIDCliente) + '''') else
    begin
      SQL.Add('WHERE (CAST(PK.DTCA AS DATE) BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) ');
      SQL.Add('OR     CAST(PK.DTPV AS DATE) BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) ');
      SQL.Add('OR     CAST(PK.DTNF AS DATE) BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))))');

      if RECUsuarios.Grupo = 'VEN' then
      SQL.Add('AND PK.IDCV = ''' + RECUsuarios.Id + '''');
    end;

    SQL.Add('ORDER BY DTPEDIDO DESC');
    Prepare;
    Open;
  end;
end;

procedure Tfrmcad_cli.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DBGConsulta.FocusedColumn := 1;
end;

end.
