unit pRelatorios;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc, math, StrUtils,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, dxDBELib, dxExEdtr, rxSpeedbar,
  IBSQL, cxGraphics, cxControls, dxStatusBar, dxPageControl, dxEditor,
  ActnList, XPStyleActnCtrls, ActnMan, QRPDFFilt, QRExport, DateUtils,
  dxBar,
  dxBarExtItems, dxsbar, dxDockPanel, dxDockControl;

Type
  TFrmRelatorios = class(TForm)
    TConsulta: TIBTransaction;
    AMPrincipal: TActionManager;
    ACTRECTitulos: TAction;
    ACTRECTitulosConsolidados: TAction;
    ACTGER_CRD: TAction;
    ACTEST_ETQ_PAD: TAction;
    ACTEST_ENT_ROM: TAction;
    ACTGerencial_Estoque_Unidade_Medida: TAction;
    ACTGerencial_NF_Tipo_Operacao: TAction;
    ACTEST_ETQ_PEQ: TAction;
    ILMenu: TImageList;
    BMMain: TdxBarManager;
    BLBSalva: TdxBarLargeButton;
    BLBValida: TdxBarLargeButton;
    BLBCancela: TdxBarLargeButton;
    BLBSaida: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    BLBImprime: TdxBarLargeButton;
    BLBConverte: TdxBarLargeButton;
    BLBVisualiza: TdxBarLargeButton;
    DMMain: TdxDockingManager;
    ALMain: TActionList;
    ACTSaida: TAction;
    ACTImprime: TAction;
    ACTVisualiza: TAction;
    ACTConverte: TAction;
    DSMenu: TdxDockSite;
    LDSMenu: TdxLayoutDockSite;
    LDSEdicao: TdxLayoutDockSite;
    DPMenu: TdxDockPanel;
    SBMenu: TdxSideBar;
    DPEdicao: TdxDockPanel;
    PNLEdicao: TPanel;
    PNLRelatorios: TPanel;
    SANome: TShape;
    SBNome: TShape;
    SAEmpresa: TShape;
    SBEmpresa: TShape;
    LANome: TLabel;
    LAEmpresa: TLabel;
    SBTipo: TShape;
    SATipo: TShape;
    LATipo: TLabel;
    SAStatus: TShape;
    SBStatus: TShape;
    LAStatus: TLabel;
    IENome: TdxImageEdit;
    IEEmpresa: TdxImageEdit;
    IETipo: TdxImageEdit;
    IEStatus: TdxImageEdit;
    PNLData: TPanel;
    GBData1: TGroupBox;
    MCData1: TMonthCalendar;
    GBData2: TGroupBox;
    MCData2: TMonthCalendar;
    PNLPeriodo: TPanel;
    GBPeriodo: TGroupBox;
    SAData: TShape;
    LAData: TLabel;
    SBData: TShape;
    IEData: TdxImageEdit;
    GBIntervalo: TGroupBox;
    LADEData: TLabel;
    PNLCodigos: TPanel;
    GB1Codigo: TGroupBox;
    PEC1Codigo: TdxPickEdit;
    GB2Codigo: TGroupBox;
    PEC2Codigo: TdxPickEdit;
    PNLRodape: TPanel;
    GBConsulta: TGroupBox;
    SBC2Consulta: TShape;
    SAC2Consulta: TShape;
    SAC1Consulta: TShape;
    SBC1Consulta: TShape;
    SAC3Consulta: TShape;
    SBC3Consulta: TShape;
    LAC2Consulta: TLabel;
    SAC4Consulta: TShape;
    SBC4Consulta: TShape;
    LAC3Consulta: TLabel;
    LAC4Consulta: TLabel;
    LAC1Consulta: TLabel;
    SAC1ConsultaWhere: TShape;
    SAC2ConsultaWhere: TShape;
    SAC3ConsultaWhere: TShape;
    SAC4ConsultaWhere: TShape;
    IEC1Consulta: TdxImageEdit;
    IEC2Consulta: TdxImageEdit;
    PEC1Consulta: TdxPickEdit;
    PEC2Consulta: TdxPickEdit;
    IEC3Consulta: TdxImageEdit;
    PEC3Consulta: TdxPickEdit;
    IEC4Consulta: TdxImageEdit;
    PEC4Consulta: TdxPickEdit;
    IEC1ConsultaWhere: TdxImageEdit;
    IEC2ConsultaWhere: TdxImageEdit;
    IEC3ConsultaWhere: TdxImageEdit;
    IEC4ConsultaWhere: TdxImageEdit;
    ACTProduto_Compra_Planejamento: TAction;
    SQLConsulta: TIBSQL;
    ACTProduto_Custo_Importado: TAction;
    ACTPROSpedFiscal: TAction;
    ACTProduto_Devolucao_Cancelamento: TAction;
    ACTFinanceiro_Abatimento: TAction;
    ACTGCadastros_Venda_Produto: TAction;
    SAModelo: TShape;
    SBModelo: TShape;
    LAModelo: TLabel;
    IEModelo: TdxImageEdit;
    ACTProduto_Venda: TAction;
    ACTCliente_Produto_Atendido: TAction;
    ACTCadastros_Listagem: TAction;
    ACTProduto_Estoque: TAction;
    ACTProduto_Estoque_Etiqueta: TAction;
    ACTProduto_Ficha_Tecnica: TAction;
    ACTGFinanceiro_Cadastros_Duplicata: TAction;
    ACTProduto_Ranking: TAction;
    ACTProduto_Tabela_Preco: TAction;
    ACTGProduto_Tabela_Preco: TAction;
    ACTGerencial_Tipo_Venda: TAction;
    ACTGerencial_NF_Peso: TAction;
    ACTGGerencial_Performance_Venda: TAction;
    ACTProduto_Venda_Inativo: TAction;
    ACTCadastros_Ranking: TAction;
    ACTProduto_Venda_Mensal: TAction;
    ACTProduto_Venda_Regiao_Nacional: TAction;
    ACTProduto_Venda_Regiao_UF: TAction;
    ACTPedidos: TAction;
    SQLFKConsulta: TIBSQL;
    ACTRomaneio: TAction;
    ACTREL_FOR_CAD_PRO: TAction;
    ACTCliente_Produto_Nao_Atendido: TAction;
    ACTREL_PED_COM: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure IENomeChange(Sender: TObject);
    procedure IEEmpresaChange(Sender: TObject);
    procedure IETipoChange(Sender: TObject);
    procedure IEDataChange(Sender: TObject);
    procedure PEC1CodigoChange(Sender: TObject);
    procedure ACTGER_CRDExecute(Sender: TObject);
    procedure ACTEST_ETQ_PADExecute(Sender: TObject);
    procedure IEStatusChange(Sender: TObject);
    procedure IEC1ConsultaChange(Sender: TObject);
    procedure IEC1ConsultaWhereChange(Sender: TObject);
    procedure PEC1ConsultaChange(Sender: TObject);
    procedure MCData1Click(Sender: TObject);
    procedure ACTEST_ENT_ROMExecute(Sender: TObject);
    procedure ACTGerencial_Estoque_Unidade_MedidaExecute(Sender: TObject);
    procedure ACTGerencial_NF_Tipo_OperacaoExecute(Sender: TObject);
    procedure ACTEST_ETQ_PEQExecute(Sender: TObject);
    procedure ACTImprimeExecute(Sender: TObject);
    procedure ACTConverteExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure ACTProduto_Compra_PlanejamentoExecute(Sender: TObject);
    procedure ACTVisualizaExecute(Sender: TObject);
    procedure ACTProduto_Custo_ImportadoExecute(Sender: TObject);
    procedure ACTPROSpedFiscalExecute(Sender: TObject);
    procedure ACTProduto_Devolucao_CancelamentoExecute(Sender: TObject);
    procedure ACTGCadastros_Venda_ProdutoExecute(Sender: TObject);
    procedure ACTProduto_VendaExecute(Sender: TObject);
    procedure ACTCliente_Produto_AtendidoExecute(Sender: TObject);
    procedure ACTCadastros_ListagemExecute(Sender: TObject);
    procedure IEModeloChange(Sender: TObject);
    procedure ACTProduto_EstoqueExecute(Sender: TObject);
    procedure ACTProduto_Estoque_EtiquetaExecute(Sender: TObject);
    procedure ACTProduto_Ficha_TecnicaExecute(Sender: TObject);
    procedure ACTProduto_RankingExecute(Sender: TObject);
    procedure PEC2CodigoChange(Sender: TObject);
    procedure ACTProduto_Tabela_PrecoExecute(Sender: TObject);
    procedure ACTGProduto_Tabela_PrecoExecute(Sender: TObject);
    procedure ACTGerencial_Tipo_VendaExecute(Sender: TObject);
    procedure ACTGerencial_NF_PesoExecute(Sender: TObject);
    procedure ACTGGerencial_Performance_VendaExecute(Sender: TObject);
    procedure ACTProduto_Venda_InativoExecute(Sender: TObject);
    procedure ACTCadastros_RankingExecute(Sender: TObject);
    procedure ACTProduto_Venda_MensalExecute(Sender: TObject);
    procedure ACTProduto_Venda_Regiao_NacionalExecute(Sender: TObject);
    procedure ACTProduto_Venda_Regiao_UFExecute(Sender: TObject);
    procedure ACTPedidosExecute(Sender: TObject);
    procedure ACTREL_FOR_CAD_PROExecute(Sender: TObject);
    procedure ACTCliente_Produto_Nao_AtendidoExecute(Sender: TObject);
    procedure MCData2Click(Sender: TObject);
    procedure ACTCOM_POR_PEDExecute(Sender: TObject);
    procedure ACTREL_PED_COMExecute(Sender: TObject);
  private
    { Private declarations }
    FMSGCaption: Variant;
    FCaixa     : Boolean;

    { Definindo uma propriedade no form
      Criado um atributo FMSGCaption e um método SetMSGCaption para trabalhar com a propriedade
      FMSGCaption   - Encapsula a informação
      SetMSGCaption - Método de acesso que recebe a atualização da informação MSGCaption
      Não usarei o método SetMSGCaption para atribuir informação a FMSGRodpae,
      vou apenas utilizar a propriedade }

    { método para atribuição\validação de valor }
    procedure SetMSGCaption(const AValue: Variant);
    procedure SetCaixa    (const AValue: Boolean);

    procedure _Perfis;
    procedure _FillParams(ATipo,AStatus,AData: String;AConsultas: Array of String);
    procedure _Empresas;
    procedure _Relatorios;
    procedure _Parametros;
    procedure _Hints(AComponente: Word);
    procedure _Tabelas(AComponente: Word);
    procedure _Visualizar_Todos;
  public
    { Public declarations }
    property SMSGCaption: Variant read FMSGCaption write SetMSGCaption;
    property BCaixa     : Boolean read FCaixa     write SetCaixa;

    Constructor Create(AOwner: TComponent;Const ANome: String; APerfil: Word; AId: Integer = 0;ACD1: String = '';ACD2: String = ''); reintroduce; overload;
  end;

var
  FrmRelatorios: TFrmRelatorios;
  ExecRelat    : TAction;
  RECRelatorios: TRECRelatorios;

implementation

uses uPrincipal,

  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
       qEST_ENT_ROM, qEST_ETQ_PAD, qEST_ETQ_PEQ,
       bPrincipal
  {$ELSE}
    bPrincipal,
     { Fornecedores }
     qREL_PED_COM, { Pedidos de Compras }
     qREL_FOR_CAD_PRO, { Produtos Cadastrados }



     qEST_ENT_ROM, qGER_CRD, qEST_ETQ_PAD, qEST_ETQ_PEQ,
     qGerencial_Tipo_Venda, qGerencial_Estoque_Unidade_Medida,
     qGerencial_NF_Peso,
     qGerencial_NF_Tipo_Operacao,
     qProduto_Compra_Planejamento,
     qProduto_Custo_Importado,
     qProduto_Venda,
     qCadastros_Listagem, qProduto_Estoque, qProduto_Estoque_Etiqueta,
     qProduto_Ranking, qGProduto_Tabela_Preco,
     qProduto_Tabela_Preco, qProduto_Venda_Inativo, qCadastros_Ranking,
     qGGerencial_Performance_Venda, qProduto_Venda_Mensal,
     qProduto_Venda_Regiao_Nacional, qProduto_Venda_Regiao_UF,
     qProduto_Devolucao_Cancelamento,
     qCliente_Produto_Atendido, qGCadastros_Venda_Produto,
     qPROSpedFiscal, qFicha_Tecnica,
     qGGerencial_Performance_Venda_Agrupado
  {$IFEND};


{$R *.dfm}

procedure TFrmRelatorios.SetMSGCaption(const AValue: Variant);
begin
  case AValue of
    1: FMSGCaption := 'Gerenciais';
  end;
  Caption := FMSGCaption;
end;

procedure TFrmRelatorios.SetCaixa(const AValue: Boolean);
begin
  FCaixa := AValue;
end;

Constructor TFrmRelatorios.Create(AOwner: TComponent;Const ANome: String; APerfil: Word; AId: Integer = 0;ACD1: String = '';ACD2: String = '');
begin
  oIRECRelatorios(RECRelatorios);

  RECRelatorios.Id   := IntToStr(AID);
  RECRelatorios.IDEP := '0';
  RECRelatorios.DEEP := EmptyStr;

  RECRelatorios.Perfil := APerfil;
  RECRelatorios.Nome   := ANome;

  RECRelatorios.PEC1CodigoText := IFThen(((not oEmpty(ACD1)) and (not oEmpty(ACD2))),ACD1,'TODOS');
  RECRelatorios.PEC2CodigoText := IFThen(((not oEmpty(ACD1)) and (not oEmpty(ACD2))),ACD2,'TODOS');

  inherited Create(AOwner);
end;

procedure TFrmRelatorios.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
  oOTransact(TConsulta);

  { Métodos }
  SMSGCaption := RECRelatorios.Perfil;
  BCaixa      := False;

  { Parâmetros }
  MCData1.Date := RECRelatorios.IEDataText1;
  MCData2.Date := RECRelatorios.IEDataText2;

  { Empresa }
//  IEEmpresa.Enabled := RECUsuarios.TodasEmpresas;

  try
    IEEmpresa.Descriptions.BeginUpdate;
    IEEmpresa.Values.BeginUpdate;
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.FANTASIA FROM TAB_PAR_SIS AS PK');
      SQL.Add('WHERE  PK.FANTASIA IS NOT NULL');
      Prepare;
      ExecQuery;
      while not eof do
      begin
        IEEmpresa.Descriptions.Add(Current.Vars[0].AsString);
        IEEmpresa.Values.Add(Current.Vars[0].AsString);
        Next;
      end;
    end;
  finally
    IEEmpresa.Descriptions.EndUpdate;
    IEEmpresa.Values.EndUpdate;
  end;

  _Perfis;
  Height := Height - IFThen(not PNLCodigos.Visible,PNLCodigos.Height,0);
end;

procedure TFrmRelatorios.FormShow(Sender: TObject);
begin
  { Herança }
  RECRelatorios.AFrmStyle    := FormStyle;
  RECRelatorios.AFrmPosition := Position;
end;

procedure TFrmRelatorios.FormActivate(Sender: TObject);
begin
  OnActivate    := Nil;
  Screen.Cursor := crDefault;

  if (oEmpty(RECParametros.CDCX)) and (BCaixa) then
  begin
    oErro(Handle,'Acesso Negado !'+#13+
                 'Abertura de caixa não registrada.'+#13+
                 'Motivo: '+RECParametros.CDCX);
    PostMessage(Handle, WM_CLOSE, 0, 0);
  end;
end;

procedure TFrmRelatorios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Screen.Cursor := crAppStart;
  Action := caFree;
end;

procedure TFrmRelatorios.FormDestroy(Sender: TObject);
begin
  try
    Screen.Cursor := crAppStart;
    OnDestroy     := Nil;

    { Transação Principal }
    try
      oFTransact(TConsulta);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                 'Error Code: '+E.Message+'.'      +#13+
                                  Caption+'.');
      end;
    end;

    { record e afins }
    try
      oFRECRelatorios(RECRelatorios);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                 'Error Code: '+E.Message+'.'        +#13+
                                  Caption+'.');
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    FrmRelatorios := Nil;
  end;
end;

procedure TFrmRelatorios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: ACTSaida.Execute;
       vk_return: if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo)) then
                  SelectNext (ActiveControl, True, True);
       40       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext (ActiveControl, True, True);
       38       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext(ActiveControl, False, True);
  end;
end;

procedure TFrmRelatorios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #5 then
  {[Ctrl+E]} else
  if key = #8 then
  {[Ctrl+H]} else
  if key = #9 then
  {[Ctrl+I]} else
  if key = #16 then
  {[Ctrl+P]} else
  if key = #19 then
  {[Ctrl+S]} else
  if key = #22 then
  {[Ctrl+V]};
end;

procedure TFrmRelatorios.ACTImprimeExecute(Sender: TObject);
begin
  RECRelatorios.PrintTAG := 1;
  RECRelatorios.Handle   := Self.Handle;
  
  _Relatorios;
end;

procedure TFrmRelatorios.ACTVisualizaExecute(Sender: TObject);
begin
  RECRelatorios.PrintTAG := 0;
  RECRelatorios.Handle   := Self.Handle;

  _Relatorios;
end;

procedure TFrmRelatorios.ACTConverteExecute(Sender: TObject);
begin
  RECRelatorios.PrintTAG := 3;
  RECRelatorios.Handle   := Self.Handle;

  _Relatorios;
end;

procedure TFrmRelatorios.ACTSaidaExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmRelatorios.IENomeChange(Sender: TObject);
begin
  if IENome.Text <> RECRelatorios.Nome then
  begin
    RECRelatorios.Nome := IENome.Descriptions[IENome.Values.IndexOf(IENome.Text)];
    IENome.Hint        := RECRelatorios.Nome;

    if RECRelatorios.Nome = 'VENDAS FATURADAS' then
    begin
      IETipo.Text   := 'POR TIPO DE CRÉDITO';
      IEStatus.Text := 'FATURADO';
    end else
    if RECRelatorios.Nome = 'ESTOQUE DE PRODUTOS POR UNIDADE DE MEDIDA' then
    begin
      IETipo.Text   := 'TODOS';
      IEStatus.Text := 'TODOS';
    end else
    if RECRelatorios.Nome = 'Planejamento de Compras de Produtos' then
    begin
      MCData1.Date := StartOfTheMonth(IncMonth(Date,-11));
      MCData2.Date := Date;
    end else
    if RECRelatorios.Nome = 'Vendas Mensais de Produtos' then
    begin
      MCData1.Date := StrToDate('01/01/'+oStrZero(oRETAno(Date),4));
      MCData2.Date := StrToDate('31/12/'+oStrZero(oRETAno(Date),4));
    end;
  end;
  _Empresas;
end;

procedure TFrmRelatorios.IEModeloChange(Sender: TObject);
begin
  RECRelatorios.Modelo := IEModelo.Text;
  IEModelo.Enabled     := (IEModelo.Text <> 'Padrão');
end;

procedure TFrmRelatorios.IETipoChange(Sender: TObject);
begin
  RECRelatorios.Tipo      := IETipo.Descriptions[IETipo.Values.IndexOf(IETipo.Text)];
  RECRelatorios.TipoValor := IETipo.Text;

  _Empresas;
end;

procedure TFrmRelatorios.IEStatusChange(Sender: TObject);
begin
  RECRelatorios.Status   := IEStatus.Text;
  RECRelatorios.Situacao := IEStatus.Descriptions[IEStatus.Values.IndexOf(IEStatus.Text)];
  _Empresas;
end;

procedure TFrmRelatorios.IEEmpresaChange(Sender: TObject);
begin
  if RECRelatorios.DEEP <> IEEmpresa.Text then
     with SQLConsulta do
     begin
       Close;
       SQL.Clear;
       SQL.Add('SELECT ID,CNPJ,RAZAO FROM TAB_PAR_SIS');
       SQL.Add('WHERE  FANTASIA = '''+IEEmpresa.Text+'''');
       ExecQuery;

       RECRelatorios.IDEP   := IFThen(Current.Vars[0].AsInteger > 0,Current.Vars[0].AsString,'0');
       RECRelatorios.DEEP   := IEEmpresa.Text;
       RECRelatorios.RZEP   := Current.Vars[2].AsString;
       RECRelatorios.CNPJEP := IFThen(Current.Vars[0].AsInteger > 0,Current.Vars[1].AsString,RECParametros.Cnpj);
     end;
end;

procedure TFrmRelatorios.MCData1Click(Sender: TObject);
begin
  MCData2.Date := EndOfTheMonth(MCData1.Date);
  IEDataChange(Self);
end;

procedure TFrmRelatorios.MCData2Click(Sender: TObject);
begin
  IEDataChange(Self);
end;

procedure TFrmRelatorios.IEDataChange(Sender: TObject);
begin
  if not oEmpty(IEData.Text) then
  begin
    if MCData2.Date < MCData1.Date then
       oException(Nil,'Data Inicial ( '+FormatDateTime('dd/mm/yy',MCData1.Date)+' ) não pode ser maior que Data Final ( '+FormatDateTime('dd/mm/yy',MCData2.Date)+' ).');

    RECRelatorios.IEDataCaption := IEData.Descriptions[IEData.Values.IndexOf(IEData.Text)];
    RECRelatorios.IEDataField   := IEData.Values[IEData.Values.IndexOf(IEData.Text)];

    if  RECRelatorios.Nome = 'Listagem de Clientes' then
        RECRelatorios.IEDataField := 'CLI_'+RECRelatorios.IEDataField else
    if  RECRelatorios.Nome = 'Listagem de Representantes' then
        RECRelatorios.IEDataField := 'REP_'+RECRelatorios.IEDataField;

    RECRelatorios.IEDataText1 := MCData1.Date;
    RECRelatorios.IEDataText2 := MCData2.Date;

    GBPeriodo.Font.Color   := clBlack;
    LAData.Font.Color      := clBlack;
    GBIntervalo.Font.Color := clBlack;
    GBData1.Font.Color     := clBlack;
    GBData2.Font.Color     := clBlack;

    MCData1.CalColors.BackColor         := $00FDF9F4;
    MCData1.CalColors.MonthBackColor    := $00FDF9F4;
    MCData1.CalColors.TextColor         := clBlack;
    MCData1.CalColors.TitleBackColor    := $00E1AD40;
    MCData1.CalColors.TitleTextColor    := clBlack;
    MCData1.CalColors.TrailingTextColor := clBlack;
    MCData1.Refresh;

    MCData2.CalColors.BackColor         := $00FDF9F4;
    MCData2.CalColors.MonthBackColor    := $00FDF9F4;
    MCData2.CalColors.TextColor         := clBlack;
    MCData2.CalColors.TitleBackColor    := $00E1AD40;
    MCData2.CalColors.TitleTextColor    := clBlack;
    MCData2.CalColors.TrailingTextColor := clBlack;
    MCData2.Refresh;

    LADEData.Caption := IFThen(IEData.Text <> '',FormatDateTime('dd/mm/yyyy',MCData1.Date)+' '+'até '+FormatDateTime('dd/mm/yyyy',MCData2.Date),'');
    LADEData.Visible := True;
    LADEData.Refresh;

    if IENome.Text = 'ACTProduto_Estoque' then
       IEEmpresa.Text := RECParametros.Fantasia;
  end else
  begin
    RECRelatorios.IEDataCaption := '';
    RECRelatorios.IEDataField   := '';
    RECRelatorios.IEDataText1   := 0;
    RECRelatorios.IEDataText2   := 0;

    GBPeriodo.Font.Color   := clSilver;
    LAData.Font.Color      := clSilver;
    GBIntervalo.Font.Color := clSilver;
    GBData1.Font.Color     := clSilver;
    GBData2.Font.Color     := clSilver;

    MCData1.Date := RECParametros.DTMES_INI;
    MCData1.CalColors.BackColor         := clBtnFace;
    MCData1.CalColors.MonthBackColor    := clBtnFace;
    MCData1.CalColors.TextColor         := clSilver;
    MCData1.CalColors.TitleBackColor    := clBtnFace;
    MCData1.CalColors.TitleTextColor    := clSilver;
    MCData1.CalColors.TrailingTextColor := clBtnFace;
    MCData1.Refresh;

    MCData2.Date := RECParametros.DTMES_FIM;
    MCData2.CalColors.BackColor         := clBtnFace;
    MCData2.CalColors.MonthBackColor    := clBtnFace;
    MCData2.CalColors.TextColor         := clSilver;
    MCData2.CalColors.TitleBackColor    := clBtnFace;
    MCData2.CalColors.TitleTextColor    := clSilver;
    MCData2.CalColors.TrailingTextColor := clBtnFace;
    MCData2.Refresh;

    LADEData.Caption := '';
    LADEData.Visible := False;
    LADEData.Refresh;
  end;
end;

procedure TFrmRelatorios.PEC1CodigoChange(Sender: TObject);
begin
  RECRelatorios.PEC1CodigoText := PEC1Codigo.Text;
  if PNLCodigos.Tag = 0 then
  PEC2Codigo.Text := PEC1Codigo.Text;
end;

procedure TFrmRelatorios.PEC2CodigoChange(Sender: TObject);
begin
  RECRelatorios.PEC2CodigoText := PEC2Codigo.Text;
end;

procedure TFrmRelatorios.IEC1ConsultaChange(Sender: TObject);
var
  IEConsultaCaption,
  IEConsultaField,
  IEConsultaAlias: String;
  IEConsultaWhere: TdxImageEdit;
begin
  IEConsultaCaption := TdxImageEdit(Sender).Descriptions[TdxImageEdit(Sender).Values.IndexOf(TdxImageEdit(Sender).Text)];
  IEConsultaField   := TdxImageEdit(Sender).Values[TdxImageEdit(Sender).Values.IndexOf(TdxImageEdit(Sender).Text)];
  IEConsultaAlias   := '';

  if IEConsultaCaption = 'Região Metropolitana' then
     IEConsultaAlias := 'RM.' else
  if IEConsultaCaption = 'Região Nacional' then
     IEConsultaAlias := 'RN.' else
  if IEConsultaCaption = 'UF' then
     IEConsultaAlias := 'UF.';

  if (((Pos('ACTProduto_Venda_Inativo',IENome.Text) > 0) or (Pos('ACTProduto_Ficha',IENome.Text) > 0)) and (Pos('PRO_CART',IEConsultaField) > 0)) then
        IEConsultaAlias := 'PSQ.';

  if (((Pos('ACTProduto',IENome.Text) > 0) or (Pos('ACTGProduto',IENome.Text) > 0) or (Pos('Ranking',IENome.Text) > 0)) and (IEConsultaField = 'CAD_FOR.FOR_FANT')) then
        if Pos(IENome.Text,'ACTProduto_EstoqueACTProduto_Compra_PlanejamentoACTProduto_Custo_Importado') = 0 then
           IEConsultaField := 'PRO_DPSQ';

  if (IEConsultaField = 'CP.ARTIGO') OR (IEConsultaField = 'CP.SKU') then
       IEConsultaAlias := 'CP.';

  if ((Pos('Produto',IENome.Text) > 0) and (IEConsultaCaption = 'Bairro')) then
       IEConsultaAlias := 'CL.CLI_';

  case TdxImageEdit(Sender).Tag of
    1: begin
         RECRelatorios.IEC1ConsultaCaption := IEConsultaCaption;
         RECRelatorios.IEC1ConsultaTable   := Trim(LeftStr(IEConsultaField,Pos('.',IEConsultaField) - 1));
         RECRelatorios.IEC1ConsultaField   := Trim(IEConsultaAlias + Trim(Copy(IEConsultaField   ,Pos('.',IEConsultaField) + 1,Length(IEConsultaField))));
       end;
    2: begin
         RECRelatorios.IEC2ConsultaCaption := IEConsultaCaption;
         RECRelatorios.IEC2ConsultaTable   := Trim(LeftStr(IEConsultaField,Pos('.',IEConsultaField) - 1));
         RECRelatorios.IEC2ConsultaField   := Trim(IEConsultaAlias + Trim(Copy(IEConsultaField   ,Pos('.',IEConsultaField) + 1,Length(IEConsultaField))));
       end;
    3: begin
         RECRelatorios.IEC3ConsultaCaption := IEConsultaCaption;
         RECRelatorios.IEC3ConsultaTable   := Trim(LeftStr(IEConsultaField,Pos('.',IEConsultaField) - 1));
         RECRelatorios.IEC3ConsultaField   := Trim(IEConsultaAlias + Trim(Copy(IEConsultaField   ,Pos('.',IEConsultaField) + 1,Length(IEConsultaField))));
       end;
    4: begin
         RECRelatorios.IEC4ConsultaCaption := IEConsultaCaption;
         RECRelatorios.IEC4ConsultaTable   := Trim(LeftStr(IEConsultaField,Pos('.',IEConsultaField) - 1));
         RECRelatorios.IEC4ConsultaField   := Trim(IEConsultaAlias + Trim(Copy(IEConsultaField   ,Pos('.',IEConsultaField) + 1,Length(IEConsultaField))));
       end;
  end;

  { Localizando Componente no Form }
  IEConsultaWhere         := FindComponent(Format('IEC%dConsultaWhere',[TdxImageEdit(Sender).Tag])) as TdxImageEdit;
  IEConsultaWhere.Text    := IFThen((Pos(UpperCase(IEConsultaCaption),'IDIDCPPEDIDOROMANEIO') > 0),'=',
                             IFThen((Pos(UpperCase(IEConsultaCaption),'ARTIGOSKU'           ) > 0),'Início','Ambos'));
  IEConsultaWhere.Enabled := not (IEConsultaCaption = 'Selecionar tipo de consulta');

  _Tabelas(TdxImageEdit(Sender).Tag);
end;

procedure TFrmRelatorios.IEC1ConsultaWhereChange(Sender: TObject);
var
  IEConsultaWhere,
  IEConsultaLike1,
  IEConsultaLike2: String;
begin
  IEConsultaWhere := IFThen(Pos(TdxImageEdit(Sender).Text,'='          ) > 0,'=','LIKE');
  IEConsultaLike1 := IFThen(Pos(TdxImageEdit(Sender).Text,'FinalAmbos' ) > 0,'%','');
  IEConsultaLike2 := IFThen(Pos(TdxImageEdit(Sender).Text,'InícioAmbos') > 0,'%','');

  case TdxImageEdit(Sender).Tag of
    1: begin
         RECRelatorios.IEC1ConsultaWhere := IEConsultaWhere;
         RECRelatorios.IEC1ConsultaLike1 := IEConsultaLike1;
         RECRelatorios.IEC1ConsultaLike2 := IEConsultaLike2;
       end;
    2: begin
         RECRelatorios.IEC2ConsultaWhere := IEConsultaWhere;
         RECRelatorios.IEC2ConsultaLike1 := IEConsultaLike1;
         RECRelatorios.IEC2ConsultaLike2 := IEConsultaLike2;
       end;
    3: begin
         RECRelatorios.IEC3ConsultaWhere := IEConsultaWhere;
         RECRelatorios.IEC3ConsultaLike1 := IEConsultaLike1;
         RECRelatorios.IEC3ConsultaLike2 := IEConsultaLike2;
       end;
    4: begin
         RECRelatorios.IEC4ConsultaWhere := IEConsultaWhere;
         RECRelatorios.IEC4ConsultaLike1 := IEConsultaLike1;
         RECRelatorios.IEC4ConsultaLike2 := IEConsultaLike2;
       end;
  end;

  _Hints(TdxImageEdit(Sender).Tag);
end;

procedure TFrmRelatorios.PEC1ConsultaChange(Sender: TObject);
begin
  case TdxImageEdit(Sender).Tag of
    1: RECRelatorios.PEC1ConsultaText := TdxImageEdit(Sender).Text;
    2: RECRelatorios.PEC2ConsultaText := TdxImageEdit(Sender).Text;
    3: RECRelatorios.PEC3ConsultaText := TdxImageEdit(Sender).Text;
    4: RECRelatorios.PEC4ConsultaText := TdxImageEdit(Sender).Text;
  end;
end;

procedure TFrmRelatorios.ACTPedidosExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_EXP) OR DEFINED(DEF_QLD)}
  {$ELSE}
    {
    if IETipo.Text = 'Ordem de Separação' then
    begin
      qrpGPedidosExpedicao := TqrpGPedidosExpedicao.Create(Self,RECRelatorios);
      qrpGPedidosExpedicao.WinControlFormCreate(qrpGPedidosExpedicao);
    end else
    begin
      qrpPedidos := TqrpPedidos.Create(Self,RECRelatorios);
      qrpPedidos.WinControlFormCreate(qrpPedidos);
    end;
    }
  {$IFEND};
end;

procedure TFrmRelatorios.ACTPROSpedFiscalExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpPROSpedFiscal) then
    begin
      qrpPROSpedFiscal := TqrpPROSpedFiscal.Create(Self,RECRelatorios);
      qrpPROSpedFiscal.WinControlFormCreate(qrpPROSpedFiscal);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTProduto_Devolucao_CancelamentoExecute(
  Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpProduto_Devolucao_Cancelamento) then
    begin
      qrpProduto_Devolucao_Cancelamento := TqrpProduto_Devolucao_Cancelamento.Create(Self,RECRelatorios);
      qrpProduto_Devolucao_Cancelamento.WinControlFormCreate(qrpProduto_Devolucao_Cancelamento);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTProduto_Venda_InativoExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpProduto_Venda_Inativo) then
    begin
      qrpProduto_Venda_Inativo := TqrpProduto_Venda_Inativo.Create(Self,RECRelatorios);
      qrpProduto_Venda_Inativo.WinControlFormCreate(qrpProduto_Venda_Inativo);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTGCadastros_Venda_ProdutoExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpGCadastros_Venda_Produto) then
    begin
      qrpGCadastros_Venda_Produto := TqrpGCadastros_Venda_Produto.Create(Self,RECRelatorios);
      qrpGCadastros_Venda_Produto.WinControlFormCreate(qrpGCadastros_Venda_Produto);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTProduto_VendaExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpProduto_Venda) then
    begin
      qrpProduto_Venda := TqrpProduto_Venda.Create(Self,RECRelatorios);
      qrpProduto_Venda.WinControlFormCreate(qrpProduto_Venda);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTProduto_Venda_MensalExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpProduto_Venda_Mensal) then
    begin
      qrpProduto_Venda_Mensal := TqrpProduto_Venda_Mensal.Create(Self,RECRelatorios);
      qrpProduto_Venda_Mensal.WinControlFormCreate(qrpProduto_Venda_Mensal);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTProduto_Venda_Regiao_NacionalExecute(
  Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpProduto_Venda_Regiao_Nacional) then
    begin
      qrpProduto_Venda_Regiao_Nacional := TqrpProduto_Venda_Regiao_Nacional.Create(Self,RECRelatorios);
      qrpProduto_Venda_Regiao_Nacional.WinControlFormCreate(qrpProduto_Venda_Regiao_Nacional);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTProduto_Venda_Regiao_UFExecute(
  Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpProduto_Venda_Regiao_UF) then
    begin
      qrpProduto_Venda_Regiao_UF := TqrpProduto_Venda_Regiao_UF.Create(Self,RECRelatorios);
      qrpProduto_Venda_Regiao_UF.WinControlFormCreate(qrpProduto_Venda_Regiao_UF);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTProduto_EstoqueExecute(Sender: TObject);
begin
  _Visualizar_Todos;

  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpProduto_Estoque) then
    begin
      qrpProduto_Estoque := TqrpProduto_Estoque.Create(Self,RECRelatorios);
      qrpProduto_Estoque.WinControlFormCreate(qrpProduto_Estoque);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTProduto_Estoque_EtiquetaExecute(
  Sender: TObject);
begin
  _Visualizar_Todos;
  
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpProduto_Estoque_Etiqueta) then
    begin
      qrpProduto_Estoque_Etiqueta := TqrpProduto_Estoque_Etiqueta.Create(Self,RECRelatorios);
      qrpProduto_Estoque_Etiqueta.WinControlFormCreate(qrpProduto_Estoque_Etiqueta);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTProduto_Ficha_TecnicaExecute(Sender: TObject);
begin
  _Visualizar_Todos;
  
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpFicha_Tecnica) then
    begin
      qrpFicha_Tecnica := TqrpFicha_Tecnica.Create(Self,RECRelatorios);
      qrpFicha_Tecnica.WinControlFormCreate(qrpFicha_Tecnica);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTProduto_RankingExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpProduto_Ranking) then
    begin
      qrpProduto_Ranking := TqrpProduto_Ranking.Create(Self,RECRelatorios);
      qrpProduto_Ranking.WinControlFormCreate(qrpProduto_Ranking);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTProduto_Custo_ImportadoExecute(
  Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpProduto_Custo_Importado) then
    begin
      qrpProduto_Custo_Importado := TqrpProduto_Custo_Importado.Create(Self,RECRelatorios);
      qrpProduto_Custo_Importado.WinControlFormCreate(qrpProduto_Custo_Importado);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTProduto_Compra_PlanejamentoExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpProduto_Compra_Planejamento) then
    begin
      qrpProduto_Compra_Planejamento := TqrpProduto_Compra_Planejamento.Create(Self,RECRelatorios);
      qrpProduto_Compra_Planejamento.WinControlFormCreate(qrpProduto_Compra_Planejamento);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTCliente_Produto_AtendidoExecute(
  Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpCliente_Produto_Atendido) then
    begin
      qrpCliente_Produto_Atendido := TqrpCliente_Produto_Atendido.Create(Self,RECRelatorios);
      qrpCliente_Produto_Atendido.WinControlFormCreate(qrpCliente_Produto_Atendido);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTCliente_Produto_Nao_AtendidoExecute(
  Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpCliente_Produto_Atendido) then
    begin
      qrpCliente_Produto_Atendido := TqrpCliente_Produto_Atendido.Create(Self,RECRelatorios);
      qrpCliente_Produto_Atendido.WinControlFormCreate(qrpCliente_Produto_Atendido);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTCadastros_ListagemExecute(
  Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpCadastros_Listagem) then
    begin
      qrpCadastros_Listagem := TqrpCadastros_Listagem.Create(Self,RECRelatorios);
      qrpCadastros_Listagem.WinControlFormCreate(qrpCadastros_Listagem);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTCadastros_RankingExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpCadastros_Ranking) then
    begin
      qrpCadastros_Ranking := TqrpCadastros_Ranking.Create(Self,RECRelatorios);
      qrpCadastros_Ranking.WinControlFormCreate(qrpCadastros_Ranking);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTEST_ETQ_PADExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
    if Assigned(qrpEST_ETQ_PAD) then qrpEST_ETQ_PAD.BringToFront else
    begin
      qrpEST_ETQ_PAD     := TqrpEST_ETQ_PAD.Create(Self,RECRelatorios);
      qrpEST_ETQ_PAD.Tag := 1;
      qrpEST_ETQ_PAD.WinControlFormCreate(qrpEST_ETQ_PAD);
  end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTEST_ETQ_PEQExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
    if Assigned(qrpEST_ETQ_PEQ) then qrpEST_ETQ_PEQ.BringToFront else
    begin
      qrpEST_ETQ_PEQ     := TqrpEST_ETQ_PEQ.Create(Self,RECRelatorios);
      qrpEST_ETQ_PEQ.Tag := 2;
      qrpEST_ETQ_PEQ.WinControlFormCreate(qrpEST_ETQ_PEQ);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTEST_ENT_ROMExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
    if Assigned(qrpEST_ENT_ROM) then qrpEST_ENT_ROM.BringToFront else
    begin
      qrpEST_ENT_ROM     := TqrpEST_ENT_ROM.Create(Self,RECRelatorios);
      qrpEST_ENT_ROM.Tag := 5;
      qrpEST_ENT_ROM.WinControlFormCreate(qrpEST_ENT_ROM);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTGGerencial_Performance_VendaExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if RECRelatorios.Modelo = 'Artigo' then
    begin
      if not Assigned(qrpGGerencial_Performance_Venda) then
      begin
        qrpGGerencial_Performance_Venda := TqrpGGerencial_Performance_Venda.Create(Self,RECRelatorios);
        qrpGGerencial_Performance_Venda.WinControlFormCreate(qrpGGerencial_Performance_Venda);
      end;
    end else
    begin
      if Assigned(qrpGGerencial_Performance_Venda_Agrupado) then qrpGGerencial_Performance_Venda_Agrupado.BringToFront else
      begin
        qrpGGerencial_Performance_Venda_Agrupado := TqrpGGerencial_Performance_Venda_Agrupado.Create(Self,RECRelatorios);
        qrpGGerencial_Performance_Venda_Agrupado.WinControlFormCreate(qrpGGerencial_Performance_Venda_Agrupado);
      end;
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTProduto_Tabela_PrecoExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpProduto_Tabela_Preco) then
    begin
      qrpProduto_Tabela_Preco := TqrpProduto_Tabela_Preco.Create(Self,RECRelatorios);
      qrpProduto_Tabela_Preco.WinControlFormCreate(qrpProduto_Tabela_Preco);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTGProduto_Tabela_PrecoExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpGProduto_Tabela_Preco) then
    begin
      qrpGProduto_Tabela_Preco := TqrpGProduto_Tabela_Preco.Create(Self,RECRelatorios);
      qrpGProduto_Tabela_Preco.WinControlFormCreate(qrpGProduto_Tabela_Preco);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTGER_CRDExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if Assigned(QRPGER_CRD) then QRPGER_CRD.BringToFront else
    begin
      QRPGER_CRD := TQRPGER_CRD.Create(Self,RECRelatorios);
      QRPGER_CRD.WinControlFormCreate(QRPGER_CRD);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTGerencial_Tipo_VendaExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpGerencial_Tipo_Venda) then
    begin
      qrpGerencial_Tipo_Venda := TqrpGerencial_Tipo_Venda.Create(Self,RECRelatorios);
      qrpGerencial_Tipo_Venda.WinControlFormCreate(qrpGerencial_Tipo_Venda);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTGerencial_Estoque_Unidade_MedidaExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpGerencial_Estoque_Unidade_Medida) then
    begin
      qrpGerencial_Estoque_Unidade_Medida := TqrpGerencial_Estoque_Unidade_Medida.Create(Self,RECRelatorios);
      qrpGerencial_Estoque_Unidade_Medida.WinControlFormCreate(qrpGerencial_Estoque_Unidade_Medida);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTGerencial_NF_Tipo_OperacaoExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpGerencial_NF_Tipo_Operacao) then
    begin
      qrpGerencial_NF_Tipo_Operacao := TqrpGerencial_NF_Tipo_Operacao.Create(Self,RECRelatorios);
      qrpGerencial_NF_Tipo_Operacao.WinControlFormCreate(qrpGerencial_NF_Tipo_Operacao);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTGerencial_NF_PesoExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if not Assigned(qrpGerencial_NF_Peso) then
    begin
      qrpGerencial_NF_Peso := TqrpGerencial_NF_Peso.Create(Self,RECRelatorios);
      qrpGerencial_NF_Peso.WinControlFormCreate(qrpGerencial_NF_Peso);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTREL_FOR_CAD_PROExecute(
  Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if (RECRelatorios.IDEP = EmptyStr) or (RECRelatorios.IDEP = '0') then
        oException(Nil,'Empresa não Informada !');

    if (RECRElatorios.PEC1ConsultaText = EmptyStr) or (RECRelatorios.PEC1ConsultaText = 'TODOS') then
        oException(Nil,RECRelatorios.IEC1ConsultaCaption + ' não Informado !');

    if Assigned(QRPREL_FOR_CAD_PRO) then QRPREL_FOR_CAD_PRO.BringToFront else
    begin
      QRPREL_FOR_CAD_PRO := TQRPREL_FOR_CAD_PRO.Create(Self,RECRelatorios);
      QRPREL_FOR_CAD_PRO.WinControlFormCreate(QRPREL_FOR_CAD_PRO);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTREL_PED_COMExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
    if Assigned(QRPREL_PED_COM) then QRPREL_PED_COM.BringToFront else
    begin
      QRPREL_PED_COM := TQRPREL_PED_COM.Create(Self,RECRelatorios);
      QRPREL_PED_COM.WinControlFormCreate(QRPREL_PED_COM);
    end;
  {$IFEND};
end;

procedure TFrmRelatorios.ACTCOM_POR_PEDExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
  {$ELSE}
{    if Assigned(QRPCOM_POR_PED) then QRPCOM_POR_PED.BringToFront else
    begin
      QRPCOM_POR_PED := TQRPCOM_POR_PED.Create(Self,RECRelatorios);
      QRPCOM_POR_PED.WinControlFormCreate(QRPCOM_POR_PED);
    end;  }
  {$IFEND};
end;

procedure TFrmRelatorios._Empresas;
begin
  case RECRelatorios.Perfil of
    14,
    15,
    16,
    17: IEEmpresa.Text := IFThen(IEEmpresa.Enabled,'TODAS AS EMPRESAS',RECParametros.Fantasia);
    9:  IEEmpresa.Text := IFThen(IEEmpresa.Enabled,'TODAS AS EMPRESAS',RECParametros.Fantasia);
  end;

end;

procedure TFrmRelatorios._Relatorios;
begin
  ActiveControl := Nil;

  RECRelatorios.Titulo := RECRelatorios.Nome;
  if ((RECRelatorios.Tipo <> EmptyStr) and (RECRelatorios.Tipo <> 'TODOS')) or ((IEStatus.Text <> EmptyStr) and (IEStatus.Text <> 'TODOS')) then
  begin
    RECRelatorios.Titulo := RECRelatorios.Titulo + ' [ ';
    RECRelatorios.Titulo := RECRelatorios.Titulo + IFThen((RECRelatorios.Tipo <> EmptyStr) and (RECRelatorios.Tipo  <> 'TODOS') and (IEStatus.Text <> EmptyStr) and (IEStatus.Text <> 'TODOS'),RECRelatorios.Tipo+' + '+RECRelatorios.Situacao,
                                                   IFThen(RECRelatorios.Tipo  <> 'TODOS',RECRelatorios.Tipo,
                                                   IFThen(IEStatus.Text       <> 'TODOS',RECRelatorios.Situacao,'')));
    RECRelatorios.Titulo := RECRelatorios.Titulo + ' ]';
  end;

  { Range Diversos }
  RECRelatorios.PEC1CodigoCaption := PEC1Codigo.Text;
  RECRelatorios.PEC2CodigoCaption := PEC2Codigo.Text;

  { Rodapés }
  RECRelatorios.RodapeRelatorio := EmptyStr;
  RECRelatorios.RodapeFiltros   := EmptyStr;

  ExecRelat := FindComponent(IENome.Text) as TAction;
  if ExecRelat <> Nil then
  try
    RECRelatorios.Titulo    := ExecRelat.Caption;
    RECRelatorios.SubTitulo := ExecRelat.Hint;

    ExecRelat.Execute;
  finally _Parametros;
  end;
end;

procedure TFrmRelatorios._Parametros;
begin
  if (IENome.Text = 'ACTPROESTEtiquetas') or
     (IENome.Text = 'ACTEST_ENT_ROM') then
  PEC1Consulta.Text  := RECRelatorios.Id;
end;

procedure TFrmRelatorios._Hints(AComponente: Word);
var
  PEConsulta: TdxPickEdit;
  IEConsulta,
  IEConsultaWhere: TdxImageEdit;
begin
  { Localizando Componente no Form }
  GBConsulta.Hint := '';
  IEConsulta      := FindComponent(Format('IEC%dConsulta'     ,[AComponente])) as TdxImageEdit;
  IEConsultaWhere := FindComponent(Format('IEC%dConsultaWhere',[AComponente])) as TdxImageEdit;
  PEConsulta      := FindComponent(Format('PEC%dConsulta'     ,[AComponente])) as TdxPickEdit;

  if IEConsulta.Text <> 'Selecionar tipo de consulta' then
  GBConsulta.Hint := 'Pesquisar campo '+IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)]+' '+
                                        IFThen(IEConsultaWhere.Text = '='     ,'que seja = a expressão: ',
                                        IFThen(IEConsultaWhere.Text = 'Início','que comece com a expressão: ',
                                        IFThen(IEConsultaWhere.Text = 'Final' ,'que termine com a expressão: ',
                                        IFThen(IEConsultaWhere.Text = 'Ambos' ,'que contenha no começo, meio ou fim a expressão: '+PEConsulta.Text))));

  IEConsulta.Hint      := GBConsulta.Hint;
  IEConsulta.Refresh;
  IEConsultaWhere.Hint := GBConsulta.Hint;
  IEConsultaWhere.Refresh;
  PEConsulta.Hint      := GBConsulta.Hint;
  PEConsulta.Refresh;
  GBConsulta.Refresh;
end;

procedure TFrmRelatorios._Tabelas(AComponente: Word);
var
  PEConsulta: TdxPickEdit;
  IEConsulta: TdxImageEdit;
begin
  { Localizando Componente no Form }
  IEConsulta := FindComponent(Format('IEC%dConsulta',[AComponente])) as TdxImageEdit;
  PEConsulta := FindComponent(Format('PEC%dConsulta',[AComponente])) as TdxPickEdit;
  PEConsulta.Items.Clear;
  PEConsulta.Items.Add('TODOS');
  PEConsulta.Text    := 'TODOS';
  PEConsulta.Enabled := not (IEConsulta.Text = 'Selecionar tipo de consulta');

  try
    PEConsulta.Items.BeginUpdate;
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;

      if IEConsulta.Text = 'PK.CF_NO' then
      SQL.Add('SELECT PK.FANTASIA FROM CAD_FOR AS PK WHERE PK.ID > 0 GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Planilha' then
      SQL.Add('SELECT DESCRICAO FROM CAD_PRO_PCI_RPK WHERE NOT FEMPTY(DESCRICAO) GROUP BY 1 ORDER BY 1 DESC') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Grupo de Clientes' then
      SQL.Add('SELECT CLI_DEGP  FROM CAD_CLI     WHERE NOT FEMPTY(CLI_DEGP) GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Fornecedor' then
      SQL.Add('SELECT FOR_FANT  FROM CAD_FOR     WHERE FOR_STAV = ''A'' AND NOT FEMPTY(FOR_FANT) GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Vendedor' then
      SQL.Add('SELECT USU_DUSU  FROM CAD_USU     WHERE USU_STAV = ''A'' AND USU_MENU = ''VEN'' AND NOT FEMPTY(USU_DUSU) GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Representante' then
      SQL.Add('SELECT REP_FANT  FROM CAD_REP     WHERE REP_STAV = ''A'' AND NOT FEMPTY(REP_FANT) GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Cor' then
      SQL.Add('SELECT DESCRICAO FROM TAB_COR WHERE ID > 0 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Categoria' then
      SQL.Add('SELECT DESCRICAO FROM TAB_SCT     WHERE NOT FEMPTY(DESCRICAO) GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Grupo' then
      SQL.Add('SELECT DESCRICAO FROM TAB_GRP     WHERE NOT FEMPTY(DESCRICAO) GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Market Place' then
      SQL.Add('SELECT DESCRICAO FROM TAB_MKP     WHERE NOT FEMPTY(DESCRICAO) GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Coleção' then
      SQL.Add('SELECT DESCRICAO FROM TAB_COL    WHERE NOT FEMPTY(DESCRICAO) GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Empresa' then
      SQL.Add('SELECT FANTASIA  FROM TAB_PAR_SIS  GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Região Metropolitana' then
      SQL.Add('SELECT RMT_NO FROM TAB_CEP_RMT WHERE NOT FEMPTY(RMT_NO) ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Região Nacional' then
      SQL.Add('SELECT RNA_NO FROM TAB_CEP_RNA WHERE NOT FEMPTY(RNA_NO) ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'UF' then
      SQL.Add('SELECT SIGLA     FROM TAB_CEP_UFE WHERE NOT FEMPTY(SIGLA) ORDER BY 1');

      if not oEmpty(SQL.Text) then
      begin
        Prepare;
        ExecQuery;
        while not eof do
        begin
          PEConsulta.Items.Add(Current.Vars[0].AsString);
          next;
        end;
      end;  
    end;
  finally
    PEConsulta.Items.EndUpdate;
  end;
end;

procedure TFrmRelatorios._Visualizar_Todos;
begin
  if (PEC1Consulta.Text = 'TODOS') and (PEC2Consulta.Text = 'TODOS') and (PEC3Consulta.Text = 'TODOS') and (PEC4Consulta.Text = 'TODOS') and (IEData.Text = EmptyStr) then
      if oYesNo(handle,'Nenhum filtro selecionado.'+#13+
                       'Tem certeza que quer visualizar todo o cadastro ?') = mrNo then
         Abort;
end;

procedure TFrmRelatorios._Perfis;
begin
//  IEEmpresa.Enabled := ((Pos(RECUsuarios.Grupo,'DEVDIR') > 0) or (RECUSuarios.Comprador));
//  IEEmpresa.Text    := IFThen(IEEmpresa.Enabled,'TODAS AS EMPRESAS',RECParametros.Fantasia);
  IEEmpresa.Text := 'TODAS AS EMPRESAS';
  IENome.Descriptions.Add(RECRelatorios.Nome);
  IENome.Text    := EmptyStr;
  IEModelo.Text  := 'Padrão';
  IETipo.Text    := EmptyStr;
  IEStatus.Text  := EmptyStr;
  IEData.Text    := EmptyStr;

  if ((RECRelatorios.Nome = 'Ranking de Produtos')             or (RECRelatorios.Nome = 'Vendas de Produtos') or (RECRelatorios.Nome = 'Vendas Mensais de Produtos') or
      (RECRelatorios.Nome = 'Vendas de Produtos por Clientes') or (RECRelatorios.Nome = 'Vendas de Produtos por Grupos de Clientes')) then
  begin
    IEModelo.Descriptions.Clear;
    IEModelo.Descriptions.Add('Produto_X_Valor');
    IEModelo.Descriptions.Add('Produto_X_Metro_X_Kilo');
    IEModelo.Descriptions.Add('Artigo_X_Valor');
    IEModelo.Descriptions.Add('Artigo_X_Metro_X_Kilo');
    IEModelo.Descriptions.Add('Categoria_X_Valor');
    IEModelo.Descriptions.Add('Categoria_X_Metro_X_Kilo');
    IEModelo.Descriptions.Add('Sub-Categoria_X_Valor');
    IEModelo.Descriptions.Add('Sub-Categoria_X_Metro_X_Kilo');


    IEModelo.Values.Clear;
    IEModelo.Values.Add('Produto_X_Valor');
    IEModelo.Values.Add('Produto_X_Metro_X_Kilo');
    IEModelo.Values.Add('Artigo_X_Valor');
    IEModelo.Values.Add('Artigo_X_Metro_X_Kilo');
    IEModelo.Values.Add('Categoria_X_Valor');
    IEModelo.Values.Add('Categoria_X_Metro_X_Kilo');
    IEModelo.Values.Add('Sub-Categoria_X_Valor');
    IEModelo.Values.Add('Sub-Categoria_X_Metro_X_Kilo');
    IEModelo.Text := 'Artigo_X_Valor';
  end;

  if ((RECRelatorios.Nome = 'Vendas Mensais de Produtos') or (RECRelatorios.Nome = 'Vendas por UF') or (RECRelatorios.Nome = 'Vendas por Região Nacional')) then
  begin
    IEModelo.Descriptions.Clear;
    IEModelo.Descriptions.Add('Produto_X_Valor');
    IEModelo.Descriptions.Add('Produto_X_Quantidade');
    IEModelo.Descriptions.Add('Produto_X_Metro');
    IEModelo.Descriptions.Add('Produto_X_Kilo');

    IEModelo.Descriptions.Add('Artigo_X_Valor');
    IEModelo.Descriptions.Add('Artigo_X_Quantidade');
    IEModelo.Descriptions.Add('Artigo_X_Metro');
    IEModelo.Descriptions.Add('Artigo_X_Kilo');

    IEModelo.Values.Clear;
    IEModelo.Values.Add('Produto_X_Valor');
    IEModelo.Values.Add('Produto_X_Quantidade');
    IEModelo.Values.Add('Produto_X_Metro');
    IEModelo.Values.Add('Produto_X_Kilo');

    IEModelo.Values.Add('Artigo_X_Valor');
    IEModelo.Values.Add('Artigo_X_Quantidade');
    IEModelo.Values.Add('Artigo_X_Metro');
    IEModelo.Values.Add('Artigo_X_Kilo');
    IEModelo.Text := 'Artigo_X_Quantidade';
  end;

  if (RECRelatorios.Nome = 'Performance de Vendas') or (RECRelatorios.Nome = 'Performance de Preços') or (RECRelatorios.Nome = 'Tabela de Preços') then
  begin
    IEEmpresa.Text := RECParametros.Fantasia;

    IEModelo.Descriptions.Clear;
    IEModelo.Descriptions.Add('Artigo');
    IEModelo.Descriptions.Add('Segmento');
    IEModelo.Descriptions.Add('Grupo');
    IEModelo.Descriptions.Add('Sub Grupo');
    IEModelo.Descriptions.Add('Categoria');
    IEModelo.Descriptions.Add('Sub Categoria');

    IEModelo.Values.Clear;
    IEModelo.Values.Add('Artigo');
    IEModelo.Values.Add('Segmento');
    IEModelo.Values.Add('Grupo');
    IEModelo.Values.Add('Sub Grupo');
    IEModelo.Values.Add('Categoria');
    IEModelo.Values.Add('Sub Categoria');

    IEModelo.Text    := 'Artigo';
    IEModelo.Enabled := True;
  end;

  case RECRelatorios.Perfil of
    0: begin
         if RECRelatorios.Nome = 'Produtos não Atendidos' then
         begin
           IEEmpresa.Text := RECParametros.Fantasia;

           IENome.Values.Add('ACTProduto_Venda_Inativo');
           IENome.Text := 'ACTProduto_Venda_Inativo';

           _FillParams('cadastro_listagem','produto_não_atendido','cadastro_listagem',['PSQ_artigo_produto_descrição','categorias','fornecedor']);
         end else
         if RECRelatorios.Nome = 'Ranking de Produtos' then
         begin
           IEEmpresa.Text := RECParametros.Fantasia;

           IENome.Values.Add('ACTProduto_Ranking');
           IENome.Text := 'ACTProduto_Ranking';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['artigo_produto_descrição','categorias','fornecedor','cliente_vendedor_representante']);
         end else
         if RECRelatorios.Nome = 'Ficha Técnica de Produtos' then
         begin
           IEEmpresa.Text := RECParametros.Fantasia;

           IENome.Values.Add('ACTProduto_Ficha_Tecnica');
           IENome.Text := 'ACTProduto_Ficha_Tecnica';

           _FillParams('TODOS','TODOS','',['artigo_produto_descrição','categorias','fornecedor']);
         end else
         if RECRelatorios.Nome = 'Estoque de Produtos' then
         begin
           IEEmpresa.Text := RECParametros.Fantasia;

           IENome.Values.Add('ACTProduto_Estoque');
           IENome.Text := 'ACTProduto_Estoque';

           _FillParams('estoque','estoque','cadastro_listagem',['artigo_produto_descrição','categorias','fornecedor']);
           IEData.Text := EmptyStr;
         end else
         if RECRelatorios.Nome = 'Estoque de produtos por número de etiquetas' then
         begin
           IENome.Values.Add('ACTProduto_Estoque_Etiqueta');
           IENome.Text := 'ACTProduto_Estoque_Etiqueta';

           _FillParams('estoque_etiqueta','','',['artigo_produto_descrição','categorias','fornecedor']);
         end else
         if RECRelatorios.Nome = 'Vendas por Região Nacional' then
         begin
           IEEmpresa.Text := RECParametros.Fantasia;

           IENome.Values.Add('ACTProduto_Venda_Regiao_Nacional');
           IENome.Text := 'ACTProduto_Venda_Regiao_Nacional';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['artigo_produto_descrição','categorias','fornecedor','cliente_vendedor_representante']);
         end else
         if RECRelatorios.Nome = 'Vendas por UF' then
         begin
           IEEmpresa.Text := RECParametros.Fantasia;

           IENome.Values.Add('ACTProduto_Venda_Regiao_UF');
           IENome.Text := 'ACTProduto_Venda_Regiao_UF';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['artigo_produto_descrição','categorias','cliente_vendedor_representante_fornecedor','cep_região_nacional']);
         end else
         if RECRelatorios.Nome = 'Vendas Mensais de Produtos' then
         begin
           IEModelo.Text := 'Artigo_X_Quantidade';

           IENome.Values.Add('ACTProduto_Venda_Mensal');
           IENome.Text := 'ACTProduto_Venda_Mensal';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['artigo_produto_descrição','categorias','cliente_vendedor_representante_fornecedor','cep_região_nacional_metropolitana_UF']);
         end else
         if RECRelatorios.Nome = 'Vendas de Produtos' then
         begin
           IENome.Values.Add('ACTProduto_Venda');
           IENome.Text := 'ACTProduto_Venda';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['artigo_produto_descrição','categorias','cliente_vendedor_representante_fornecedor','cep_região_nacional_metropolitana_UF']);
         end else
         if RECRelatorios.Nome = 'Devoluções & Cancelamentos' then
         begin
           IEEmpresa.Text := RECParametros.Fantasia;
           
           IENome.Values.Add('ACTProduto_Devolucao_Cancelamento');
           IENome.Text := 'ACTProduto_Devolucao_Cancelamento';

           _FillParams('devolução_cancelamento','devolução_cancelamento','devolução_cancelamento',['artigo_produto_descrição','categorias','fornecedor','cliente_vendedor_representante']);
         end else
         if RECRelatorios.Nome = 'SPED Fiscal' then
         begin
           IENome.Values.Add('ACTPROSpedFiscal');
           IENome.Text := 'ACTPROSpedFiscal';

           IEData.Descriptions.Add('DATA');
           IEData.Values.Add('DATA');
           IEData.Text := 'DATA';
         end else
         if RECRelatorios.Nome = 'Planejamento de Compras de Produtos' then
         begin
           IEEmpresa.Text := RECParametros.Fantasia;

           IENome.Values.Add('ACTProduto_Compra_Planejamento');
           IENome.Text := 'ACTProduto_Compra_Planejamento';

           _FillParams('planejamento','pedido_venda','pedido_venda',['artigo_produto_descrição','categorias','fornecedor']);
         end else
         if RECRelatorios.Nome = 'Performance de Vendas' then
         begin
           IENome.Values.Add('ACTGGerencial_Performance_Venda');
           IENome.Text := 'ACTGGerencial_Performance_Venda';

           _FillParams('periodo_diario_mensal','pedido_venda','pedido_venda',['']);
         end else
         if RECRelatorios.Nome = 'Performance de Preços' then
         begin
           IENome.Values.Add('ACTProduto_Tabela_Preco');
           IENome.Text := 'ACTProduto_Tabela_Preco';

           _FillParams('todos','todos','pedido_venda',['artigo_produto_descrição','categorias','fornecedor']);
         end else
         if RECRelatorios.Nome = 'Tabela de Preços' then
         begin
           IENome.Values.Add('ACTGProduto_Tabela_Preco');
           IENome.Text := 'ACTGProduto_Tabela_Preco';

           _FillParams('preco','estoque','',['artigo_produto_descrição','categorias','fornecedor','cep_UF']);
         end else
         begin
           IEEmpresa.Text := RECParametros.Fantasia;

           IENome.Enabled := True;
           IENome.Descriptions.Clear;
           IENome.Descriptions.Add('Romaneio de estoque para simples conferência');
           IENome.Descriptions.Add('Etiquetas de estoque modelo 1');
           IENome.Descriptions.Add('Etiquetas de estoque modelo 2');

           IENome.Values.Clear;
           IENome.Values.Add('ACTEST_ENT_ROM');
           IENome.Values.Add('ACTEST_ETQ_PAD');
           IENome.Values.Add('ACTEST_ETQ_PEQ');

           IENome.Text := 'ACTEST_ETQ_PAD';

           RECRelatorios.PEC1CodigoField   := 'Itens.EST_CDET';
           RECRelatorios.PEC1CodigoCaption := 'Etiqueta Inicial';
           RECRelatorios.PEC2CodigoField   := 'Itens.EST_CDET';
           RECRelatorios.PEC2CodigoCaption := 'Etiqueta Final';

           _FillParams('estoque_pcp','','',['etiqueta_estoque','categorias','PSQ_artigo_produto_descrição']);

           IETipo.Descriptions.Add('TODOS');
           IETipo.Values.Add('TODOS');
           IETipo.Text := 'TODOS';

           IEStatus.Descriptions.Clear;
           IEStatus.Values.Clear;
           IEStatus.Enabled := True;

           IEStatus.Descriptions.Add('TODOS');
           IEStatus.Descriptions.Add('DISPONÍVEL');

           IEStatus.Values.Add('TODOS');
           IEStatus.Values.Add('DISPONÍVEL');
           IEStatus.Text := 'TODOS';

           if not bPSQUSER('IMPRIME','Estoque','Etiquetas','Permissões Gerais') then
           begin
             IEStatus.Enabled := False;
             IEStatus.Text := 'DISPONÍVEL';
           end;
         end;
       end;
    1: begin
         {}
       end;
    3: begin
         { Produtos: Kardex }
       end;
    4: begin
         { Clientes }
         IEEmpresa.Enabled := ((Pos(RECUsuarios.Grupo,'DEVDIR') > 0) or (RECUSuarios.Comprador));

         if RECRelatorios.Nome = 'Ranking de Clientes' then
         begin
           IENome.Values.Add('ACTCadastros_Ranking');
           IENome.Text := 'ACTCadastros_Ranking';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['grupo de clientes','artigo_produto_descrição','fornecedor','categorias']);
         end else
         if RECRelatorios.Nome = 'Vendas de Produtos por Clientes' then
         begin
           IENome.Values.Add('ACTGCadastros_Venda_Produto');
           IENome.Text := 'ACTGCadastros_Venda_Produto';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['cliente','grupo de clientes','artigo_produto_descrição','categorias']);
         end else
         if RECRelatorios.Nome = 'Vendas de Produtos por Grupos de Clientes' then
         begin
           IENome.Values.Add('ACTGCadastros_Venda_Produto');
           IENome.Text := 'ACTGCadastros_Venda_Produto';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['grupo de clientes','artigo_produto_descrição','categorias']);
         end else
         if RECRelatorios.Nome = 'Relação de Produtos Atendidos' then
         begin
           IEEmpresa.Enabled := ((Pos(RECUsuarios.Grupo,'DEVDIR') > 0) or (RECUSuarios.Comprador));

           IEModelo.Descriptions.Clear;
           IEModelo.Descriptions.Add('Produto_X_Quantidade');
           IEModelo.Descriptions.Add('Artigo_X_Quantidade');
           IEModelo.Values.Clear;
           IEModelo.Values.Add('Produto');
           IEModelo.Values.Add('Artigo');
           IEModelo.Text := 'Produto';

           IENome.Descriptions.Add(RECRelatorios.Nome);
           IENome.Values.Add('ACTCliente_Produto_Atendido');
           IENome.Text := 'ACTCliente_Produto_Atendido';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['artigo_produto_descrição','categorias','fornecedor']);
         end else
         if RECRelatorios.Nome = 'Relação de Produtos Não Atendidos' then
         begin
           IEEmpresa.Enabled := ((Pos(RECUsuarios.Grupo,'DEVDIR') > 0) or (RECUSuarios.Comprador));

           IEModelo.Descriptions.Clear;
           IEModelo.Descriptions.Add('Produto_X_Quantidade');
           IEModelo.Descriptions.Add('Artigo_X_Quantidade');
           IEModelo.Values.Clear;
           IEModelo.Values.Add('Produto');
           IEModelo.Values.Add('Artigo');
           IEModelo.Text := 'Produto';

           IENome.Descriptions.Add(RECRelatorios.Nome);
           IENome.Values.Add('ACTCliente_Produto_Nao_Atendido');
           IENome.Text := 'ACTCliente_Produto_Nao_Atendido';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['artigo_produto_descrição','categorias','fornecedor']);
         end else
         if RECRelatorios.Nome = 'Listagem de Clientes' then
         begin
           IEEmpresa.Enabled := True;

           IENome.Descriptions.Add(RECRelatorios.Nome);
           IENome.Values.Add('ACTCadastros_Listagem');
           IENome.Text := 'ACTCadastros_Listagem';

           _FillParams('Listagem de Cadastros','TODOS','Listagem de Cadastros',['vendedor_representante','cep_região_metropolitana','cep_região_nacional','cep_UF']);
         end;
       end;
    5: begin
         { Representantes }
         IENome.Descriptions.Add(RECRelatorios.Nome);
         if RECRelatorios.Nome = 'Ranking de Representantes' then
         begin
           IENome.Values.Add('ACTCadastros_Ranking');
           IENome.Text := 'ACTCadastros_Ranking';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['','artigo_produto_descrição','fornecedor','categorias']);
         end else
         if RECRelatorios.Nome = 'Vendas de Produtos por Representantes' then
         begin
           IEEmpresa.Enabled := ((Pos(RECUsuarios.Grupo,'DEVDIR') > 0) or (RECUSuarios.Comprador));

           IEModelo.Descriptions.Clear;
           IEModelo.Descriptions.Add('Produto_X_Quantidade');
           IEModelo.Descriptions.Add('Artigo_X_Quantidade');
           IEModelo.Values.Clear;
           IEModelo.Values.Add('Produto');
           IEModelo.Values.Add('Artigo');
           IEModelo.Text := 'Produto';

           IENome.Values.Add('ACTGCadastros_Venda_Produto');
           IENome.Text := 'ACTGCadastros_Venda_Produto';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['representante','cep_região_metropolitana','cep_região_nacional','cep_UF']);
         end else
         if RECRelatorios.Nome = 'Listagem de Representantes' then
         begin
           IEEmpresa.Enabled := ((Pos(RECUsuarios.Grupo,'DEVDIR') > 0) or (RECUSuarios.Comprador));
           IEEmpresa.Text    := RECParametros.Fantasia;

           IENome.Descriptions.Add(RECRelatorios.Nome);
           IENome.Values.Add('ACTCadastros_Listagem');
           IENome.Text := 'ACTCadastros_Listagem';

           _FillParams('cadastro_listagem','TODOS','cadastro_listagem',['vendedor_representante','cep_região_metropolitana','cep_região_nacional','cep_UF']);

           IEData.Text       := EmptyStr;
           IEC1Consulta.Text := 'CAD_USU.USU_DUSU';
           PEC1Consulta.Text := IFThen(RECUsuarios.Grupo = 'VEN',RECUsuarios.Login,'TODOS');
         end;
       end;
    6: begin
         { Fornecedores }
         IENome.Descriptions.Add(RECRelatorios.Nome);
         IEEmpresa.Text := RECParametros.Fantasia;

         if RECRelatorios.Nome = 'Produtos cadastrados por fornecedor' then
         begin
           IENome.Values.Add('ACTREL_FOR_CAD_PRO');
           IENome.Text :=    'ACTREL_FOR_CAD_PRO';

           _FillParams('TODOS','estoque_tmp','fornecedor',['Fornecedores','','','']);
         end else

         if RECRelatorios.Nome = 'Pedidos recebidos por fornecedor' then
         begin
           IENome.Values.Add('ACTREL_PED_COM');
           IENome.Text :=    'ACTREL_PED_COM';

           _FillParams('TODOS','pedido_compra','fornecedor_tmp',['Fornecedores','','','']);
         end;

       end;
    7: begin
         { Fornecedores: Financeiro }
       end;
    8: begin
         { Transportadoras: BI }
       end;
    9: begin
         { Transportadoras: Financeiro }
       end;
   10: begin
         { Vendedores: BI }
       end;
   11: begin
         { Vendedores: Financeiro }
       end;
   12: begin
         { Representantes: BI }
       end;
   13: begin
         { Representantes: Financeiro }
       end;
   14: begin
         { Gerenciais: Vendas }
         if RECRelatorios.Nome = 'Faturamento por tipo de crédito' then
         begin
           IEEmpresa.Enabled := (Pos(RECUsuarios.Grupo,'DEVDIR') > 0);
           if not IEEmpresa.Enabled then
                  IEEmpresa.Text := RECParametros.Fantasia; 

           IENome.Values.Add('ACTGER_CRD');
           IENome.Text := 'ACTGER_CRD';

           _FillParams('todos','todos','pedido_venda',['']);
         end else
         if RECRelatorios.Nome = 'Faturamento por tipo de venda' then
         begin
           IEEmpresa.Enabled := (Pos(RECUsuarios.Grupo,'DEVDIR') > 0);
           if not IEEmpresa.Enabled then
                  IEEmpresa.Text := RECParametros.Fantasia; 

           IENome.Values.Add('ACTGerencial_Tipo_Venda');
           IENome.Text := 'ACTGerencial_Tipo_Venda';

           _FillParams('todos','todos','pedido_venda',['']);
         end else
         if RECRelatorios.Nome = 'Estoque total de produtos por unidade de medida' then
         begin
           IEEmpresa.Enabled := (Pos(RECUsuarios.Grupo,'DEVDIR') > 0);
           if not IEEmpresa.Enabled then
                  IEEmpresa.Text := RECParametros.Fantasia; 

           IENome.Values.Add('ACTGerencial_Estoque_Unidade_Medida');
           IENome.Text := 'ACTGerencial_Estoque_Unidade_Medida';

           _FillParams('todos','todos','',['estoque_unidade']);

           if (RECParametros.GRP_EST <> EmptyStr) and (IEEmpresa.Enabled) then
           begin
             PEC1Consulta.Items.Add(RECParametros.GRP_EST);
             PEC1Consulta.Text := RECParametros.GRP_EST;
           end;
         end else
         if RECRelatorios.Nome = 'Emissão de nota fiscal por tipo de operação' then
         begin
           IENome.Values.Add('ACTGerencial_NF_Tipo_Operacao');
           IENome.Text := 'ACTGerencial_NF_Tipo_Operacao';

           _FillParams('todos','todos','pedido_venda',['']);
         end else
         if RECRelatorios.Nome = 'Emissão de nota fiscal por peso transportado' then
         begin
           IENome.Values.Add('ACTGerencial_NF_Peso');
           IENome.Text := 'ACTGerencial_NF_Peso';

           _FillParams('todos','todos','pedido_venda',['']);
         end;
       end;
   15: begin
         { Gerenciais: Compras }
         { Fornecedores }
         IENome.Descriptions.Add(RECRelatorios.Nome);
         IEEmpresa.Text := RECParametros.Fantasia;

         if RECRelatorios.Nome = 'Listagem de Produtos Cadastrados por Fornecedor' then
         begin
           IENome.Values.Add('ACTREL_FOR_CAD_PRO');
           IENome.Text :=    'ACTREL_FOR_CAD_PRO';

           _FillParams('TODOS','estoque_tmp','fornecedor',['Fornecedores','','','']);
         end else
       end;
   16: begin
         { Gerenciais: Financeiro }
         if RECRelatorios.Nome = 'Emissão de Abatimentos Financeiros' then
         begin
           IENome.Descriptions.Add(RECRelatorios.Nome);
           IENome.Values.Add('ACTFinanceiro_Abatimento');
           IENome.Text := 'ACTFinanceiro_Abatimento';

           _FillParams('TODOS','TODOS','abatimento',['cliente','grupo de clientes','vendedor','representante']);
         end else
         if RECRelatorios.Nome = 'Emissão de Duplicatas por Cliente' then
         begin
           IENome.Descriptions.Add(RECRelatorios.Nome);
           IENome.Values.Add('ACTGFinanceiro_Cadastros_Duplicata');
           IENome.Text := 'ACTGFinanceiro_Cadastros_Duplicata';

           _FillParams('duplicata_cliente','duplicata_cliente','duplicata_cliente',['cliente','grupo de clientes','vendedor','representante']);
         end;
       end;
   18: begin
         { Custo }
         IENome.Values.Add('ACTProduto_Custo_Importado');
         IENome.Text := 'ACTProduto_Custo_Importado';

         _FillParams('todos','todos','',['custo_produto_importado']);
       end;
   19: begin
         { Tabela de Preço }
       end;
   20: begin
         { Pedidos de Vendas }
         IEEmpresa.Text    := RECParametros.Fantasia;
         IEEmpresa.Enabled := False;

         IEModelo.Descriptions.Clear;
         IEModelo.Descriptions.Add('Padrão');
         IEModelo.Descriptions.Add('Canhoto de Venda');
         IEModelo.Descriptions.Add('Cupom Fiscal');

         IEModelo.Values.Clear;
         IEModelo.Values.Add('Padrão');
         IEModelo.Values.Add('Canhoto de Venda');
         IEModelo.Values.Add('Cupom Fiscal');
         IEModelo.Enabled := True;
         IEModelo.Text    := 'Padrão';

         IENome.Descriptions.Clear;
         IENome.Descriptions.Add('Pedido de Venda');

         IENome.Values.Clear;
         IENome.Values.Add('ACTPedidos');
         IENome.Text    := 'ACTPedidos';
         IENome.Enabled := False;

         _FillParams('pedido_venda_caixa','','',['pedido_venda_caixa']);

         PEC1Consulta.Text := RECRelatorios.Id;
         IEStatus.Text     := RECRelatorios.PEC1CodigoText;
                              RECRelatorios.PEC1CodigoText := 'TODOS';
                              RECRelatorios.PEC2CodigoText := 'TODOS';
       end;
  end;

  { Rankings }
  if Pos('Ranking',RECRelatorios.Nome) > 0 then
  begin
    PNLCodigos.Tag := 1;
    RECRelatorios.PEC1CodigoCaption := 'Quantidade de Itens';
    RECRelatorios.PEC1CodigoField   := 'First';
    RECRelatorios.PEC2CodigoCaption := 'Relevância';
    RECRelatorios.PEC2CodigoField   := 'OrderBy';

    PEC1Codigo.Items.Clear;
    PEC1Codigo.Items.Add('5');
    PEC1Codigo.Items.Add('10');
    PEC1Codigo.Items.Add('50');
    PEC1Codigo.Items.Add('100');
    PEC1Codigo.Text := '100';

    PEC2Codigo.Items.Clear;
    PEC2Codigo.Items.Add('Mais Vendidos');
    PEC2Codigo.Items.Add('Menos Vendidos');
    PEC2Codigo.Text := PEC2Codigo.Items.Strings[0];
  end;

  { Datas }
  PNLData.Enabled := not ((IEData.Values.Count <= 1) and (oEmpty(IEData.Text)));
  IEData.Enabled  := PNLData.Enabled;
  IEDataChange(Self);

  { Códigos }
  PNLCodigos.Visible := (not oEmpty(RECRelatorios.PEC1CodigoCaption));
  if PNLCodigos.Visible then
  begin
    GB1Codigo.Caption := '  '+RECRelatorios.PEC1CodigoCaption+'  ';
    GB2Codigo.Caption := '  '+RECRelatorios.PEC2CodigoCaption+'  ';
  end;
end;

procedure TFrmRelatorios._FillParams(ATipo,AStatus,AData: String;AConsultas: Array of String);
var
  i: Word;
  IEComponente: TdxImageEdit;
begin
  try
    IETipo.Values.BeginUpdate;
    IETipo.Values.Clear;
    IETipo.Descriptions.BeginUpdate;
    IETipo.Descriptions.Clear;

    IEStatus.Values.BeginUpdate;
    IEStatus.Values.Clear;
    IEStatus.Descriptions.BeginUpdate;
    IEStatus.Descriptions.Clear;

    IEData.Values.BeginUpdate;
    IEData.Values.Clear;
    IEData.Descriptions.BeginUpdate;
    IEData.Descriptions.Clear;

    with SQLFKConsulta do
    begin
      { Tipo }
      Close;
      SQL.Clear;

      if ATipo <> 'estoque_pcp' then
         SQL.Add('SELECT DESCRICAO ,VALOR,MAIN FROM TAB_REL_TIP WHERE CHAVE = '''+ATipo+''' ORDER BY ID')
      else
         SQL.Add('SELECT PK.DESCRICAO,PK.ID AS VALOR,0 AS MAIN FROM TAB_TPO AS PK WHERE PK.EST_ENT = 1 AND PK.REST = ''A'' ORDER BY PK.DESCRICAO');

      ExecQuery;
      IETipo.Enabled := (not Eof);

      while not eof do
      begin
        IETipo.Descriptions.Add(Current.ByName('DESCRICAO').AsString);
        IETipo.Values.Add(Current.ByName('VALOR').AsString);

        if Current.ByName('MAIN').AsInteger = 1 then
           IETipo.Text := Current.ByName('VALOR').AsString;
        next;
      end;

      { Status }
      Close;
      SQL.Clear;
      SQL.Add('SELECT DESCRICAO,VALOR,MAIN FROM TAB_REL_STA WHERE CHAVE = '''+AStatus+''' ORDER BY ID');
      ExecQuery;
      IEStatus.Enabled := (not Eof);

      while not eof do
      begin
        IEStatus.Descriptions.Add(Current.ByName('DESCRICAO').AsString);
        IEStatus.Values.Add(Current.ByName('VALOR').AsString);

        if Current.ByName('MAIN').AsInteger = 1 then
           IEStatus.Text := Current.ByName('VALOR').AsString;
        next;
      end;

      { Data }
      Close;
      SQL.Clear;
      SQL.Add('SELECT DESCRICAO,VALOR,MAIN FROM TAB_REL_DAT WHERE CHAVE = '''+AData+''' ORDER BY ID');
      ExecQuery;
      IEData.Enabled := (not Eof);

      while not eof do
      begin
        IEData.Descriptions.Add(Current.ByName('DESCRICAO').AsString);
        IEData.Values.Add(Current.ByName('VALOR').AsString);

        if Current.ByName('MAIN').AsInteger = 1 then
           IEData.Text := Current.ByName('VALOR').AsString;
        next;
      end;
    end;

      { Consulta }
      for i := 0 to high(AConsultas) do
      begin
        SQLFKConsulta.Close;
        SQLFKConsulta.SQL.Clear;
        SQLFKConsulta.SQL.Add('SELECT DESCRICAO,VALOR,MAIN FROM TAB_REL_CON WHERE CHAVE = '''+AConsultas[i]+''' ORDER BY DESCRICAO');
        SQLFKConsulta.Prepare;
        SQLFKConsulta.ExecQuery;

        while not SQLFKConsulta.Eof do
        begin
          { Localizando Componente no Form }
          IEComponente := FindComponent(Format('IEC%dConsulta',[i + 1])) as TdxImageEdit;

          { Definindo Atributos }
          try
            IEComponente.Descriptions.BeginUpdate;
            IEComponente.Values.BeginUpdate;

            IEComponente.Descriptions.Add(SQLFKConsulta.Current.ByName('DESCRICAO').AsString);
            IEComponente.Values.Add(SQLFKConsulta.Current.ByName('VALOR').AsString);

            if SQLFKConsulta.Current.ByName('MAIN').AsInteger = 1 then
               IEComponente.Text := SQLFKConsulta.Current.ByName('VALOR').AsString;
          finally
            IEComponente.Descriptions.EndUpdate;
            IEComponente.Values.EndUpdate;
          end;

          SQLFKConsulta.Next;
        end;
      end;
  finally
    IETipo.Descriptions.EndUpdate;
    IETipo.Values.EndUpdate;

    IEStatus.Descriptions.EndUpdate;
    IEStatus.Values.EndUpdate;

    IEData.Descriptions.EndUpdate;
    IEData.Values.EndUpdate;
  end;
end;

procedure TFrmRelatorios._Tabelas(AComponente: Word);
var
  PEConsulta: TdxPickEdit;
  IEConsulta: TdxImageEdit;
begin
  { Localizando Componente no Form }
  IEConsulta := FindComponent(Format('IEC%dConsulta',[AComponente])) as TdxImageEdit;
  PEConsulta := FindComponent(Format('PEC%dConsulta',[AComponente])) as TdxPickEdit;
  PEConsulta.Items.Clear;
  PEConsulta.Items.Add('TODOS');
  PEConsulta.Text    := 'TODOS';
  PEConsulta.Enabled := not (IEConsulta.Text = 'Selecionar tipo de consulta');

  try
    PEConsulta.Items.BeginUpdate;
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;

      if IEConsulta.Text = 'PK.CF_NO' then
      SQL.Add('SELECT PK.FANTASIA FROM CAD_FOR AS PK WHERE PK.ID > 0 GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Planilha' then
      SQL.Add('SELECT DESCRICAO FROM CAD_PRO_PCI_RPK WHERE NOT FEMPTY(DESCRICAO) GROUP BY 1 ORDER BY 1 DESC') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Grupo de Clientes' then
      SQL.Add('SELECT CLI_DEGP  FROM CAD_CLI     WHERE NOT FEMPTY(CLI_DEGP) GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Fornecedor' then
      SQL.Add('SELECT FOR_FANT  FROM CAD_FOR     WHERE FOR_STAV = ''A'' AND NOT FEMPTY(FOR_FANT) GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Vendedor' then
      SQL.Add('SELECT USU_DUSU  FROM CAD_USU     WHERE USU_STAV = ''A'' AND USU_MENU = ''VEN'' AND NOT FEMPTY(USU_DUSU) GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Representante' then
      SQL.Add('SELECT REP_FANT  FROM CAD_REP     WHERE REP_STAV = ''A'' AND NOT FEMPTY(REP_FANT) GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Cor' then
      SQL.Add('SELECT DESCRICAO FROM TAB_COR WHERE ID > 0 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Categoria' then
      SQL.Add('SELECT DESCRICAO FROM TAB_SCT     WHERE NOT FEMPTY(DESCRICAO) GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Grupo' then
      SQL.Add('SELECT DESCRICAO FROM TAB_GRP     WHERE NOT FEMPTY(DESCRICAO) GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Market Place' then
      SQL.Add('SELECT DESCRICAO FROM TAB_MKP     WHERE NOT FEMPTY(DESCRICAO) GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Coleção' then
      SQL.Add('SELECT DESCRICAO FROM TAB_COL    WHERE NOT FEMPTY(DESCRICAO) GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Empresa' then
      SQL.Add('SELECT FANTASIA  FROM TAB_PAR_SIS  GROUP BY 1 ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Região Metropolitana' then
      SQL.Add('SELECT RMT_NO FROM TAB_CEP_RMT WHERE NOT FEMPTY(RMT_NO) ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Região Nacional' then
      SQL.Add('SELECT RNA_NO FROM TAB_CEP_RNA WHERE NOT FEMPTY(RNA_NO) ORDER BY 1') else

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'UF' then
      SQL.Add('SELECT SIGLA     FROM TAB_CEP_UFE WHERE NOT FEMPTY(SIGLA) ORDER BY 1');

      if not oEmpty(SQL.Text) then
      begin
        Prepare;
        ExecQuery;
        while not eof do
        begin
          PEConsulta.Items.Add(Current.Vars[0].AsString);
          next;
        end;
      end;  
    end;
  finally
    PEConsulta.Items.EndUpdate;
  end;
end;

end.
