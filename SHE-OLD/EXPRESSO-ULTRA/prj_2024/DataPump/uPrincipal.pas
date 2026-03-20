unit uPrincipal;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxEdLib, dxCntner, dxEditor, dxExEdtr, cxGraphics, math, StrUtils,
  ExtCtrls, Menus, cxControls, dxStatusBar, IBTable, DB, IBCustomDataSet,
  IBQuery, IBSQL, IBDatabase, ADODB, ComCtrls, ActnList;

type
  TFrmPrincipal = class(TForm)
    SBRodape: TdxStatusBar;
    MMPrincipal: TMainMenu;
    MITabela: TMenuItem;
    PNLCabecalho: TPanel;
    PNLME: TPanel;
    GBOPC: TGroupBox;
    BTNLimpa: TButton;
    FOpen: TOpenDialog;
    DBOrigem: TIBDatabase;
    TOrigem: TIBTransaction;
    SQLOConsulta: TIBSQL;
    QOConsulta: TIBQuery;
    TDOConsulta: TIBTable;
    DBDestino: TIBDatabase;
    TDestino: TIBTransaction;
    SQLDConsulta: TIBSQL;
    QDConsulta: TIBQuery;
    TDDConsulta: TIBTable;
    SQLDEdicao: TIBSQL;
    QDEdicao: TIBQuery;
    MIImporta_Todos: TMenuItem;
    SQLOrigem: TIBSQL;
    SQLDestino: TIBSQL;
    SQLFKDestino: TIBSQL;
    SQLFKOrigem: TIBSQL;
    SQLOGeral: TIBSQL;
    SQLDGeral: TIBSQL;
    Produtos1: TMenuItem;
    NovoCADPRO1: TMenuItem;
    N1Produtoss1: TMenuItem;
    N3Medidas1: TMenuItem;
    N4Foto1: TMenuItem;
    N4InstruesdeLavagem1: TMenuItem;
    N6FotosSite1: TMenuItem;
    Access1: TMenuItem;
    ImportarTabeladePreos1: TMenuItem;
    DBAccess: TADOConnection;
    TAccess: TADOTable;
    TAccessIdentificao: TIntegerField;
    TAccessPRO_CART: TWideStringField;
    TAccessPRO_PREC: TFloatField;
    TAccessPRO_PPRZ: TFloatField;
    PNLDBOrigem: TPanel;
    GBDBOrigem: TGroupBox;
    LAVersao: TLabel;
    LAOrigem: TLabel;
    LAOStatus: TLabel;
    BTNFOrigem: TButton;
    BTNAOrigem: TButton;
    BEOrigem: TdxButtonEdit;
    IEVersao: TdxImageEdit;
    PNLDBDestino: TPanel;
    GBDBDestino: TGroupBox;
    LADestino: TLabel;
    LADStatus: TLabel;
    BTNADestino: TButton;
    BTNFDestino: TButton;
    BEDestino: TdxButtonEdit;
    GerarTabeladePreos1: TMenuItem;
    Preos1: TMenuItem;
    NovosClientes1: TMenuItem;
    N1Grupo1: TMenuItem;
    N2Status1: TMenuItem;
    N3TiposdeEntregas1: TMenuItem;
    N4CNAE1: TMenuItem;
    N5Finalidade1: TMenuItem;
    N6AvisodeRecebimento1: TMenuItem;
    N7CNPJ1: TMenuItem;
    N8IE1: TMenuItem;
    N9ISUF1: TMenuItem;
    N10IM1: TMenuItem;
    N11RICMSCICMS1: TMenuItem;
    N12Contatos1: TMenuItem;
    N13Endereos1: TMenuItem;
    N14Vendedores1: TMenuItem;
    N15Representantes1: TMenuItem;
    N16Transportadoras1: TMenuItem;
    N17LimitedeCrdito1: TMenuItem;
    N17LimitedeCrdito2: TMenuItem;
    N18Principal1: TMenuItem;
    NovaTABCOR1: TMenuItem;
    NovaNFe1: TMenuItem;
    DatasStatus1: TMenuItem;
    Romaneio1: TMenuItem;
    ransferncias1: TMenuItem;
    Produtos2: TMenuItem;
    Parmetros1: TMenuItem;
    abelaCADFUN1: TMenuItem;
    abelaCADUSU1: TMenuItem;
    Usurio1: TMenuItem;
    Grade1: TMenuItem;
    abelaNFFITE1: TMenuItem;
    Clientes1: TMenuItem;
    ABNAT1: TMenuItem;
    CADTRAPADRO01: TMenuItem;
    CADTRANOSSOCARRO1: TMenuItem;
    CADCLIULTCOMPRA1: TMenuItem;
    CADTRASEMFRETE1: TMenuItem;
    ParmetrosTABPARSIS1: TMenuItem;
    CEP1: TMenuItem;
    DELTALOGBAIRRO1: TMenuItem;
    PNLRodape: TPanel;
    PBPrincipal: TProgressBar;
    FOpenCSV: TOpenDialog;
    DELTALOGFAIXABAI1: TMenuItem;
    DELTALOGLOCALIDADE1: TMenuItem;
    DELTALOGLOGRADOURO1: TMenuItem;
    Pedidos1: TMenuItem;
    CorrigirValorIPInoRomaneio1: TMenuItem;
    MercadoLivre1: TMenuItem;
    IncluirProdutos1: TMenuItem;
    DATAMDIA1: TMenuItem;
    Financeiro1: TMenuItem;
    BoletosnoRegistrados1: TMenuItem;
    abelas1: TMenuItem;
    MITAB_COB: TMenuItem;
    ActionList1: TActionList;
    ACTTAB_COB: TAction;
    DataPump1: TMenuItem;
    ACTTAB_COR: TAction;
    MITAB_COR: TMenuItem;
    MITAB_PAG: TMenuItem;
    ACTTAB_PAG: TAction;
    MTAB_PED: TMenuItem;
    ACTTAB_PED: TAction;
    Button1: TButton;
    Button2: TButton;
    procedure BEOrigemButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure BTNAOrigemClick(Sender: TObject);
    procedure BTNFOrigemClick(Sender: TObject);
    procedure BEDestinoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure BTNADestinoClick(Sender: TObject);
    procedure BTNFDestinoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBOrigemAfterConnect(Sender: TObject);
    procedure DBOrigemAfterDisconnect(Sender: TObject);
    procedure DBDestinoAfterDisconnect(Sender: TObject);
    procedure BTNLimpaClick(Sender: TObject);
    procedure MIImporta_TodosClick(Sender: TObject);
    procedure DBDestinoAfterConnect(Sender: TObject);
    procedure NovoCADPRO1Click(Sender: TObject);
    procedure N1Produtoss1Click(Sender: TObject);
    procedure N3Medidas1Click(Sender: TObject);
    procedure N4Foto1Click(Sender: TObject);
    procedure N4InstruesdeLavagem1Click(Sender: TObject);
    procedure ImportarTabeladePreos1Click(Sender: TObject);
    procedure GerarTabeladePreos1Click(Sender: TObject);
    procedure N1Grupo1Click(Sender: TObject);
    procedure N2Status1Click(Sender: TObject);
    procedure N3TiposdeEntregas1Click(Sender: TObject);
    procedure N4CNAE1Click(Sender: TObject);
    procedure N5Finalidade1Click(Sender: TObject);
    procedure N6AvisodeRecebimento1Click(Sender: TObject);
    procedure N7CNPJ1Click(Sender: TObject);
    procedure N8IE1Click(Sender: TObject);
    procedure N9ISUF1Click(Sender: TObject);
    procedure N10IM1Click(Sender: TObject);
    procedure N11RICMSCICMS1Click(Sender: TObject);
    procedure N18Principal1Click(Sender: TObject);
    procedure N12Contatos1Click(Sender: TObject);
    procedure NovaTABCOR1Click(Sender: TObject);
    procedure DatasStatus1Click(Sender: TObject);
    procedure Romaneio1Click(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure Parmetros1Click(Sender: TObject);
    procedure abelaCADFUN1Click(Sender: TObject);
    procedure abelaCADUSU1Click(Sender: TObject);
    procedure Usurio1Click(Sender: TObject);
    procedure Grade1Click(Sender: TObject);
    procedure abelaNFFITE1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure ABNAT1Click(Sender: TObject);
    procedure CADTRAPADRO01Click(Sender: TObject);
    procedure CADTRANOSSOCARRO1Click(Sender: TObject);
    procedure CADCLIULTCOMPRA1Click(Sender: TObject);
    procedure CADTRASEMFRETE1Click(Sender: TObject);
    procedure ParmetrosTABPARSIS1Click(Sender: TObject);
    procedure DELTALOGBAIRRO1Click(Sender: TObject);
    procedure DELTALOGFAIXABAI1Click(Sender: TObject);
    procedure DELTALOGLOCALIDADE1Click(Sender: TObject);
    procedure DELTALOGLOGRADOURO1Click(Sender: TObject);
    procedure CorrigirValorIPInoRomaneio1Click(Sender: TObject);
    procedure IncluirProdutos1Click(Sender: TObject);
    procedure DATAMDIA1Click(Sender: TObject);
    procedure BoletosnoRegistrados1Click(Sender: TObject);
    procedure ACTTAB_COBExecute(Sender: TObject);
    procedure ACTTAB_CORExecute(Sender: TObject);
    procedure ACTTAB_PAGExecute(Sender: TObject);
    procedure ACTTAB_PEDExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure _AtualizaTabelas(ATabela: String;AID: String = '0');
    procedure _DesativaTriggers(ATabela: String);
    procedure _ReAtivaTriggers(ATabela: String);
    procedure _AtualizaGenerators(ATabela: String);
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.BEOrigemButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  if FOpen.Execute then
     BEOrigem.Text := FOpen.FileName;
end;

procedure TFrmPrincipal.BTNAOrigemClick(Sender: TObject);
begin
  if DBOrigem.TestConnected then
     oException(Nil,'Banco de dados de origem já está aberto !');

  if oEmpty(IEVersao.Text) then
     oException(IEVersao,'Versão do banco de dados de origem não seleciondo !');

  DBOrigem.DatabaseName := BEOrigem.Text;     
  if oEmpty(DBOrigem.DatabaseName) then
     oException(BEOrigem,'Banco de dados de origem não selecionado !');

  try
    DBOrigem.Connected := True;
  except
    raise exception.Create('Falha ao tentar abrir o banco de dados de origem.'+#13+
                            FOpen.FileName);
  end;
end;

procedure TFrmPrincipal.BTNFOrigemClick(Sender: TObject);
begin
  if DBOrigem.TestConnected then
  try
    DBOrigem.Connected := False;
    DBOrigem.ForceClose;
  except
    raise exception.Create('Falha ao tentar fechar o banco de dados de origem.'+#13+
                            FOpen.FileName);
  end;
end;

procedure TFrmPrincipal.BEDestinoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  if FOpen.Execute then
     BEDestino.Text := FOpen.FileName;
end;

procedure TFrmPrincipal.BTNADestinoClick(Sender: TObject);
begin
  if DBDestino.TestConnected then
     oException(Nil,'Banco de dados de destino já está aberto !');

  DBDestino.DatabaseName := BEDestino.Text;
  if oEmpty(DBDestino.DatabaseName) then
     oException(BEDestino,'Banco de dados de destino não selecionado !');

  try
    DBDestino.Connected := True;
  except
    raise exception.Create('Falha ao tentar abrir o banco de dados de destino.'+#13+
                            FOpen.FileName);
  end;
end;

procedure TFrmPrincipal.BTNFDestinoClick(Sender: TObject);
begin
  if DBDestino.TestConnected then
  try
    DBDestino.Connected := False;
    DBDestino.ForceClose;
  except
    raise exception.Create('Falha ao tentar fechar o banco de dados de destino.'+#13+
                            FOpen.FileName);
  end;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  case messageBox(handle,'Fechar DataPump ?',
                         PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
       mrCancel,mrNo: Abort;
       mrYes: begin
                BTNFOrigem.Click;
                BTNFDestino.Click;
              end;
  end;

end;

procedure TFrmPrincipal.DBOrigemAfterConnect(Sender: TObject);
begin
  IEVersao.Enabled   := False;
  BEOrigem.Enabled   := False;
  BTNAOrigem.Enabled := False;
  BTNFOrigem.Enabled := True;

  LAOStatus.Caption    := '( CONECTADO )';
  LAOStatus.Font.Color := clGreen;
  LAOStatus.Refresh;

  BEDestino.Text   := oStrTran(BEOrigem.Text,'TEMP\','');
  BTNLimpa.Enabled := ((Pos('192.168.0.199',DBDestino.DatabaseName) = 0) and (Pos('192.168.0.199',DBOrigem.DatabaseName) = 0));
end;

procedure TFrmPrincipal.DBOrigemAfterDisconnect(Sender: TObject);
begin
  IEVersao.Enabled   := True;
  BEOrigem.Enabled   := True;
  BEOrigem.Text      := EmptyStr;
  BTNAOrigem.Enabled := True;
  BTNFOrigem.Enabled := False;

  LAOStatus.Caption    := '( DES-CONECTADO )';
  LAOStatus.Font.Color := clRed;
  LAOStatus.Refresh;
end;

procedure TFrmPrincipal.DBDestinoAfterConnect(Sender: TObject);
begin
  BEDestino.Enabled   := False;
  BTNADestino.Enabled := False;
  BTNFDestino.Enabled := True;
  BTNLimpa.Enabled    := True;

  LADStatus.Caption    := '( CONECTADO )';
  LADStatus.Font.Color := clGreen;
  LADStatus.Refresh;

  BTNLimpa.Enabled := ((Pos('192.168.0.199',DBDestino.DatabaseName) = 0) and (Pos('192.168.0.199',DBOrigem.DatabaseName) = 0));
end;

procedure TFrmPrincipal.DBDestinoAfterDisconnect(Sender: TObject);
begin
  BEDestino.Enabled   := True;
  BEDestino.Text      := EmptyStr;
  BTNADestino.Enabled := True;
  BTNFDestino.Enabled := False;
  BTNLimpa.Enabled    := False;

  LADStatus.Caption    := '( DES-CONECTADO )';
  LADStatus.Font.Color := clRed;
  LADStatus.Refresh;
end;

procedure TFrmPrincipal.BTNLimpaClick(Sender: TObject);
begin
  if Pos('192.168.0.199',BEDestino.Text) > 0 then
  oException(Nil,'Não é possível limpeza em banco conectado à rede !');

  if not DBDestino.TestConnected then
  oException(Nil,'Banco de dados de destino não está aberto !');

  if oYesNo(handle,'Executar Limpeza Geral ?') = mrNo then
     Abort;

  { Ricardo
    CAD_USU - UPDATE para refazer GEN_ID
  }

  Try
    oOTransact(TDestino);

    with QDConsulta do
    begin
      SQL.Clear;
      SQL.Add('select   rdb$relation_name from rdb$relations');
      SQL.Add('where    rdb$system_flag = 0');

      SQL.Add('and rdb$relation_name not like ''TAB_USE%'''); { Usuários }
      SQL.Add('and rdb$relation_name not like ''CEP%'''); { CEP }
      SQL.Add('and rdb$relation_name not like ''TAB_IMG%'''); { Catálogo }
      SQL.Add('and rdb$relation_name not like ''TAB_FER%'''); { Feriado }
      SQL.Add('and rdb$relation_name not like ''TAB_MKP%'''); { Marketing Place }
      SQL.Add('and rdb$relation_name not like ''TAB_UCO%'''); { Unidades }
      SQL.Add('and rdb$relation_name not like ''TAB_PAG%'''); { Prazos }

      { Parâmetros }
      SQL.Add('and rdb$relation_name not like ''TAB_PAR%''');
      SQL.Add('and rdb$relation_name not like ''TAB_REL%''');
      SQL.Add('and rdb$relation_name not like ''TAB_STA%''');
      SQL.Add('and rdb$relation_name not like ''TAB_TPO%''');

      { Fiscal }
      SQL.Add('and rdb$relation_name not like ''TAB_ALQ%''');
      SQL.Add('and rdb$relation_name not like ''TAB_NAT%''');
      SQL.Add('and rdb$relation_name not like ''TAB_NCM%''');
      SQL.Add('and rdb$relation_name not like ''TAB_CNA%''');

      SQL.Add('and rdb$relation_name not like ''TAB_GRD%''');
      SQL.Add('and rdb$relation_name not like ''TAB_NFE%''');
      SQL.Add('and rdb$relation_name not like ''TAB_PAI%''');

      SQL.Add('and rdb$relation_name not like ''VW%''' );
      SQL.Add('and rdb$relation_name not like ''IBE%''');

      SQL.Add('order by rdb$relation_name');
      Open;
    end;

    while not QDConsulta.Eof do
    begin
      { Desativa Triggers }
      SBRodape.Panels[0].Text := 'Desativando Triggers da Tabela... '+Trim(QDConsulta.Fields[0].AsString);
      Application.ProcessMessages;
      with SQLDConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select rdb$trigger_name');
        SQL.Add('from   rdb$triggers');
        SQL.Add('where  rdb$relation_name = '''+Trim(QDConsulta.Fields[0].AsString)+'''');
        ExecQuery;
      end;
      while not SQLDConsulta.Eof do
      begin
        if Pos('CHECK',Trim(SQLDConsulta.Current.Vars[0].AsString)) = 0 then
           with SQLDEdicao do
           begin
             Close;
             SQL.Clear;
             SQL.Add('ALTER TRIGGER '+Trim(SQLDConsulta.Current.Vars[0].AsString)+' INACTIVE');
             ExecQuery;
           end;
        SQLDConsulta.Next;
      end;

      { Limpa Tabelas }
      SBRodape.Panels[0].Text := 'Limpando Tabela... '+Trim(QDConsulta.Fields[0].AsString);
      Application.ProcessMessages;
      with SQLDEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM ' + Trim(QDConsulta.Fields[0].AsString));

        SQLDConsulta.Close;
        SQLDConsulta.SQL.Clear;
        SQLDConsulta.SQL.Add('select rdb$field_name from rdb$relation_fields');
        SQLDConsulta.SQL.Add('where  rdb$relation_name = ''' + Trim(QDConsulta.Fields[0].AsString) + '''');
        SQLDConsulta.SQL.Add('and    rdb$field_name    = ''ID''');
        SQLDConsulta.ExecQuery;

        if not SQLDConsulta.Eof then
        SQL.Add('WHERE ID > 0');

        ExecQuery;
      end;

      { Reinicia Generators }
      SBRodape.Panels[0].Text := 'Reiniciando Generators da tabela... '+Trim(QDConsulta.Fields[0].AsString);
      Application.ProcessMessages;
      with SQLDConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select rdb$generator_name');
        SQL.Add('from   rdb$generators');
        SQL.Add('where  rdb$system_flag = 0');
        SQL.Add('and    rdb$generator_name containing '''+Trim(QDConsulta.Fields[0].AsString)+'''');
        ExecQuery;
      end;
      if not oEmpty(Trim(SQLDConsulta.Current.Vars[0].AsString)) then
         with SQLDEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('SET GENERATOR '+Trim(SQLDConsulta.Current.Vars[0].AsString)+' TO 0');
           ExecQuery;
         end;

      QDConsulta.Next;
    end;

    oCTransact(TDestino);
  except
    on E: Exception do
    begin
      oCTransact(TDestino,ltRollback);
      oException(Nil,'Falha ao tentar gravar procedimento na tabela '+Trim(QDConsulta.Fields[0].AsString)+' !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;

  oAviso(handle,'Tabelas excluídas com sucesso !');
end;

procedure TFrmPrincipal.MIImporta_TodosClick(Sender: TObject);
begin
  if oYesNo(handle,'Transferir todas as tabelas ?') = mrNo then
     Abort;
  
  try
    oOTransact(TOrigem);
    oOTransact(TDestino);

    with SQLOGeral do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select   rdb$relation_name from rdb$relations');
      SQL.Add('where    rdb$system_flag   = 0');
      SQL.Add('and      rdb$relation_name not like ''TAB_ALQ%''');
      SQL.Add('and      rdb$relation_name not like ''TAB_CLF%''');
      SQL.Add('and      rdb$relation_name not like ''TAB_APL%''');
      SQL.Add('and      rdb$relation_name not like ''TAB_CAR%''');
      SQL.Add('and      rdb$relation_name not like ''TAB_CEP%''');
      SQL.Add('and      rdb$relation_name not like ''TAB_CNA%''');
      SQL.Add('and      rdb$relation_name not like ''TAB_COR%''');
      SQL.Add('and      rdb$relation_name not like ''TAB_DEF%''');
      SQL.Add('and      rdb$relation_name not like ''TAB_FER%''');
      SQL.Add('and      rdb$relation_name not like ''TAB_CNA%''');
      SQL.Add('and      rdb$relation_name not like ''TAB_IMG%''');
      SQL.Add('and      rdb$relation_name not like ''TAB_NCM%''');
      SQL.Add('and      rdb$relation_name not like ''TAB_PAI%''');
      SQL.Add('and      rdb$relation_name not like ''TAB_REL%''');
      SQL.Add('and      rdb$relation_name not like ''TAB_STA%''');
      SQL.Add('and      rdb$relation_name not like ''TAB_TPO%''');
      SQL.Add('and      rdb$relation_name not like ''TAB_COL%''');
      SQL.Add('and      rdb$relation_name not like ''TAB_MKP%''');
      SQL.Add('and      rdb$relation_name not like ''TAB_UCO%''');
      SQL.Add('and      rdb$relation_name not like ''TAB_USER%''');
      SQL.Add('and      rdb$relation_name not like ''VW%'''     );
      SQL.Add('and      rdb$relation_name not like ''CAD_USU%''');
      SQL.Add('and      rdb$relation_name not like ''CAD_FUN%''');
      SQL.Add('and      rdb$relation_name not like ''IBE%'''    );
      SQL.Add('and      rdb$relation_name not like ''CAD_PRO_ENC%''');
      SQL.Add('and      rdb$relation_name not like ''CAD_PRO_ENI%''');
      SQL.Add('and      rdb$relation_name not like ''CAD_PRO_EST%''');
      SQL.Add('and      rdb$relation_name not like ''CAD_PRO_RES%''');
      SQL.Add('and      rdb$relation_name not like ''CAD_PRO_PRC%''');
      SQL.Add('and      rdb$relation_name not like ''CAD_PRO_SEP%''');   
      SQL.Add('order by rdb$relation_name');
      ExecQuery;
    end;
    while not SQLOGeral.Eof do
    begin
      SBRodape.Panels[1].Text := 'Transferindo Tabela... '+Trim(SQLOGeral.Current.Vars[0].AsString);
      Application.ProcessMessages;

      { Verifica se há registros na tabela de origem }
      with SQLOrigem do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT COUNT(*) FROM '+Trim(SQLOGeral.Current.Vars[0].AsString));
        ExecQuery;
      end;
      if SQLOrigem.Current.Vars[0].AsInteger > 0 then
      begin
        { Verifica se existe a mesma tabela no banco de dados de destino }
        with SQLDGeral do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select   rdb$relation_name from rdb$relations');
          SQL.Add('where    rdb$relation_name = '''+Trim(SQLOGeral.Current.Vars[0].AsString)+'''');
          ExecQuery;

          if not oEmpty(Current.Vars[0].AsString) then
          begin
            { Verifica se há o campo Id na tabela de destino }
            Close;
            SQL.Clear;
            SQL.Add('select rdb$field_name from rdb$relation_fields');
            SQL.Add('where  rdb$relation_name = '''+Trim(SQLOGeral.Current.Vars[0].AsString)+'''');
            SQL.Add('and    rdb$field_name    = ''ID''');
            ExecQuery;

            if not oEmpty(Current.Vars[0].AsString) then
            begin
              { Verifica se os dados já foram transferido para a tabela de destino }
              Close;
              SQL.Clear;
              SQL.Add('SELECT COUNT(*) FROM '+Trim(SQLOGeral.Current.Vars[0].AsString));
              SQL.Add('WHERE ID > 0');
              ExecQuery;

              if Current.Vars[0].AsInteger = 0 then
              begin
                _DesativaTriggers(SQLOGeral.Current.Vars[0].AsString);
                _AtualizaTabelas(SQLOGeral.Current.Vars[0].AsString);
                _AtualizaGenerators(SQLOGeral.Current.Vars[0].AsString);
                _ReAtivaTriggers(SQLOGeral.Current.Vars[0].AsString);
              end;
            end;
          end;
        end;
      end;
      SQLOGeral.Next;
    end;
    oCTransact(TOrigem);
    oCTransact(TDestino);

    oAviso(handle,'Tabelas transferidades com sucesso !');
  except
    on E: Exception do
    begin
      oCTransact(TDestino,ltRollback);
      oException(Nil,'Falha ao tentar transferir tabela '+SQLOGeral.Current.Vars[0].AsString+' !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;
end;

procedure TFrmPrincipal.abelaCADFUN1Click(Sender: TObject);
begin
  if oYesNo(handle,'Transferir CAD_FUN ?') = mrNo then
     Abort;

  try
    oOTransact(TOrigem);
    oOTransact(TDestino);

    with SQLOGeral do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select   rdb$relation_name from rdb$relations');
      SQL.Add('where    rdb$system_flag   = 0');
      SQL.Add('and      rdb$relation_name = ''CAD_FUN''');
      SQL.Add('order by rdb$relation_name');
      ExecQuery;
    end;
    while not SQLOGeral.Eof do
    begin
      SBRodape.Panels[1].Text := 'Transferindo Tabela... '+Trim(SQLOGeral.Current.Vars[0].AsString);
      Application.ProcessMessages;

      { Verifica se há registros na tabela de origem }
      with SQLOrigem do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT COUNT(*) FROM '+Trim(SQLOGeral.Current.Vars[0].AsString));
        ExecQuery;
      end;
      if SQLOrigem.Current.Vars[0].AsInteger > 0 then
      begin
        { Verifica se existe a mesma tabela no banco de dados de destino }
        with SQLDGeral do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select   rdb$relation_name from rdb$relations');
          SQL.Add('where    rdb$relation_name = '''+Trim(SQLOGeral.Current.Vars[0].AsString)+'''');
          ExecQuery;

          if not oEmpty(Current.Vars[0].AsString) then
          begin
            { Verifica se há o campo Id na tabela de destino }
            Close;
            SQL.Clear;
            SQL.Add('select rdb$field_name from rdb$relation_fields');
            SQL.Add('where  rdb$relation_name = '''+Trim(SQLOGeral.Current.Vars[0].AsString)+'''');
            SQL.Add('and    rdb$field_name    = ''ID''');
            ExecQuery;

            if not oEmpty(Current.Vars[0].AsString) then
            begin
              { Verifica se os dados já foram transferido para a tabela de destino }
              Close;
              SQL.Clear;
              SQL.Add('SELECT COUNT(*) FROM '+Trim(SQLOGeral.Current.Vars[0].AsString));
              SQL.Add('WHERE ID > 0');
              ExecQuery;

              if Current.Vars[0].AsInteger = 0 then
              begin
                _DesativaTriggers(SQLOGeral.Current.Vars[0].AsString);
                _AtualizaTabelas(SQLOGeral.Current.Vars[0].AsString);
                _AtualizaGenerators(SQLOGeral.Current.Vars[0].AsString);
                _ReAtivaTriggers(SQLOGeral.Current.Vars[0].AsString);
              end;
            end;
          end;
        end;
      end;
      SQLOGeral.Next;
    end;
    oCTransact(TOrigem);
    oCTransact(TDestino);

    oAviso(handle,'CAD_FUN Transferido com sucesso !');
  except
    on E: Exception do
    begin
      oCTransact(TDestino,ltRollback);
      oException(Nil,'Falha ao tentar gravar tabela '+SQLOGeral.Current.Vars[0].AsString+' !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;
end;

procedure TFrmPrincipal.abelaCADUSU1Click(Sender: TObject);
begin
  if oYesNo(handle,'Transferir CAD_USU ?') = mrNo then
     Abort;

  try
    oOTransact(TOrigem);
    oOTransact(TDestino);

    with SQLOGeral do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select   rdb$relation_name from rdb$relations');
      SQL.Add('where    rdb$system_flag   = 0');
      SQL.Add('and      rdb$relation_name = ''CAD_USU''');
      SQL.Add('order by rdb$relation_name');
      ExecQuery;
    end;
    while not SQLOGeral.Eof do
    begin
      SBRodape.Panels[1].Text := 'Transferindo Tabela... '+Trim(SQLOGeral.Current.Vars[0].AsString);
      Application.ProcessMessages;

      { Verifica se há registros na tabela de origem }
      with SQLOrigem do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT COUNT(*) FROM '+Trim(SQLOGeral.Current.Vars[0].AsString));
        ExecQuery;
      end;
      if SQLOrigem.Current.Vars[0].AsInteger > 0 then
      begin
        { Verifica se existe a mesma tabela no banco de dados de destino }
        with SQLDGeral do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select   rdb$relation_name from rdb$relations');
          SQL.Add('where    rdb$relation_name = '''+Trim(SQLOGeral.Current.Vars[0].AsString)+'''');
          ExecQuery;

          if not oEmpty(Current.Vars[0].AsString) then
          begin
            { Verifica se há o campo Id na tabela de destino }
            Close;
            SQL.Clear;
            SQL.Add('select rdb$field_name from rdb$relation_fields');
            SQL.Add('where  rdb$relation_name = '''+Trim(SQLOGeral.Current.Vars[0].AsString)+'''');
            SQL.Add('and    rdb$field_name    = ''ID''');
            ExecQuery;

            if not oEmpty(Current.Vars[0].AsString) then
            begin
              { Verifica se os dados já foram transferido para a tabela de destino }
              Close;
              SQL.Clear;
              SQL.Add('SELECT COUNT(*) FROM '+Trim(SQLOGeral.Current.Vars[0].AsString));
              SQL.Add('WHERE ID > 0');
              ExecQuery;

              if Current.Vars[0].AsInteger = 0 then
              begin
                _DesativaTriggers(SQLOGeral.Current.Vars[0].AsString);
                _AtualizaTabelas(SQLOGeral.Current.Vars[0].AsString);
                _AtualizaGenerators(SQLOGeral.Current.Vars[0].AsString);
                _ReAtivaTriggers(SQLOGeral.Current.Vars[0].AsString);
              end;
            end;
          end;
        end;
      end;
      SQLOGeral.Next;
    end;
    oCTransact(TOrigem);
    oCTransact(TDestino);

    oAviso(handle,'CAD_USU Transferido com sucesso !');
  except
    on E: Exception do
    begin
      oCTransact(TDestino,ltRollback);
      oException(Nil,'Falha ao tentar gravar tabela '+SQLOGeral.Current.Vars[0].AsString+' !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;
end;

procedure TFrmPrincipal.abelaNFFITE1Click(Sender: TObject);
var
  NewString: String;
  ClickedOK: Boolean;
begin
  if oYesNo(handle,'Confirma atualização da tabela NFE_ITE ?') = mrNo then
     Abort;

  NewString := EmptyStr;
  ClickedOK := InputQuery('ID', 'Entre com o ID', NewString);
  NewString := Trim(NewString);

  if ((not ClickedOK) or (oEmpty(NewString))) then
       Abort;

  _AtualizaTabelas('NFE_ITE',NewString);
end;

procedure TFrmPrincipal.Usurio1Click(Sender: TObject);
var
  NewString,
  Tipo: String;
  ClickedOK: Boolean;
  IDUser: Word;
begin
  if oYesNo(handle,'Confirma atualização da tabela '+NewString+' ?') = mrNo then
     Abort;

  NewString := EmptyStr;
  ClickedOK := InputQuery('Cadastro de Usuários', 'Entre com o nome do usuário', NewString);
  NewString := Trim(NewString);

  if ((not ClickedOK) or (oEmpty(NewString))) then
       Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_USU WHERE USU_DUSU = '''+NewString+'''');
      ExecQuery;
      IDUser := Current.Vars[0].AsInteger;
      if Eof then
         oException(Nil,'Usuário não Encontrado !');
    end;

    NewString := EmptyStr;
    ClickedOK := InputQuery('Cadastro de Usuários', 'Entre com o tipo de usuário', NewString);
    Tipo      := Trim(NewString);

    if ((not ClickedOK) or (oEmpty(NewString))) then
         Abort;

    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_USU_ADM WHERE USU_CUSU = '''+IntToStr(IDUSER)+'''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('MERGE INTO CAD_USU_ADM AS PK');
      SQL.Add('  USING (SELECT  '+IntToStr(IDUSER)+' AS USU_CUSU,USU_FUNC,USU_ROTI,USU_NOME,USU_NOVO,USU_EDIT,USU_DELE,USU_VISU,USU_PRIN,USU_AUTO');
      SQL.Add('         FROM     CAD_USU_GRP  AS GRP');
      SQL.Add('         WHERE    USU_TIPO = '''+TIPO+''') AS FK');
      SQL.Add('         ON PK.USU_CUSU = FK.USU_CUSU');
      SQL.Add('  WHEN NOT MATCHED THEN');
      SQL.Add('       INSERT (USU_CUSU   ,USU_FUNC   ,USU_ROTI   ,USU_NOME   ,USU_NOVO   ,USU_EDIT   ,USU_DELE   ,USU_VISU   ,USU_PRIN   ,USU_AUTO   )');
      SQL.Add('       VALUES (FK.USU_CUSU,FK.USU_FUNC,FK.USU_ROTI,FK.USU_NOME,FK.USU_NOVO,FK.USU_EDIT,FK.USU_DELE,FK.USU_VISU,FK.USU_PRIN,FK.USU_AUTO)');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_USU');
      SQL.Add('SET    USU_MENU = '''+TIPO+'''');
      SQL.Add('WHERE  ID = '''+IntToStr(IDUSER)+'''');
      ExecQuery;
    end;
    oCTransact(TDestino);
    oAviso(handle,'Usuário atualizado com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar Usuário');
  end;
end;

procedure TFrmPrincipal.Parmetros1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar Parâmetros - PAR_SIS ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE PAR_SIS SET');
      SQL.Add('       PAR_BAIXA_PAGO = 0,            ');
      SQL.Add('       COR_PADRAO     = 0,            ');
      SQL.Add('       COR_PRECO      = 1,            ');
      SQL.Add('       COR_SISTEMA    = ''Pantone'',  ');
      SQL.Add('       IDFIN = 127,                   ');
      SQL.Add('       IDTPV = 78,                    ');
      SQL.Add('       IDTP = 78,                     ');
      SQL.Add('       IDOP = 40,                     ');
      SQL.Add('       PAR_UF = ''SP'',               ');
      SQL.Add('       PAR_UNIDADEFEDERADA = ''SP'',  ');
      SQL.Add('       PAR_UNIDADEFEDERADACODIGO = 35,');
      SQL.Add('       PAR_CUF = 35,                  ');
      SQL.Add('       PAR_CAIX = 1,                  ');
      SQL.Add('       PAR_GRAD = 1,                  ');
      SQL.Add('       PAR_NVIA = 1,                  ');
      SQL.Add('       PAR_STA = 0,                   ');
      SQL.Add('       PAR_STAV = ''A'',              ');
      SQL.Add('       PAR_CPAG = 1,                  ');
      SQL.Add('       PAR_CANH = 0,                  ');
      SQL.Add('       PAR_LIMC = 0,                  ');
      SQL.Add('       PAR_LIMB = 0,                  ');
      SQL.Add('       PAR_LIME = 0,                  ');
      SQL.Add('       PAR_IEST = 0,                  ');
      SQL.Add('       PAR_BPAG = 0,                  ');
      SQL.Add('       PAR_CSEQ = 0,                  ');
      SQL.Add('       PAR_BCHQ = 0,                  ');
      SQL.Add('       PAR_MCRD = 0,                  ');
      SQL.Add('       PAR_PCRD = 0,                  ');
      SQL.Add('       PAR_PREL = ''PEDIDO DE VENDA'',');
      SQL.Add('       PAR_PECA = 0,                  ');
      SQL.Add('       PAR_ETIQ = 0,                  ');
      SQL.Add('       PAR_QTDE = 0,                  ');
      SQL.Add('       PAR_EST_COMP = 1,              ');
      SQL.Add('       PAR_EST_CDI = 0                ');
      ExecQuery;
      { Ricardo
        Fique atento ao cnab no par_sis
      }
    end;
    oCTransact(TDestino);
    oAviso(handle,'Parâmetros - PAR_SIS atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar Parâmetros - PAR_SIS');
  end;
end;

procedure TFrmPrincipal.ParmetrosTABPARSIS1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar Parâmetros - TAB_PAR_SIS ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO TAB_PAR_SIS(ID,CDST,REST,');
      SQL.Add('                        FANTASIA,RAZAO,GRUPO,CNPJ,IE,');
      SQL.Add('                        NUDDD,NUTEL,EMAIL,');
      SQL.Add('                        IDLOG,TPLOG,NOLOG,NULOG,COLOG,NUCEP,NOBAI,NOCID,CMUN,CDUF,SGUF,');
      SQL.Add('                        IDCL_PAD,IDCV_PAD,IDCR_PAD,IDCF_PAD,IDCT_PAD,IDCT_RET_PAD,');
      SQL.Add('                        FIS_CRT,FIS_MOD,FIS_SERIE,FIS_CFOP_DENTRO_UF,FIS_CFOP_FORA_UF,');
      SQL.Add('                        IMG_JPG_PAD,IMG_JPG_REL,IMG_JPG_ETQ,IMG_JPG_BLANK,');
      SQL.Add('                        RAMO_ATIVIDADE,IDFIM,');
      SQL.Add('                        PRO_COD_NUM,PRO_COD_COR,PRO_COD_GRD,PRO_COD_ORD,');
      SQL.Add('                        PRO_GRD_PAD,PRO_COR_PAD,PRO_COR_PRC_PAD,PRO_COR_SIS,');
      SQL.Add('                        PRO_QTRL,PRO_IDFIN,EST_TIPO_VEN,PRO_AJU_PVAR,PRO_AJU_PREP,');
      SQL.Add('                        PED_TIPO,PED_COBRANCA,PED_IDPRZ)');
      SQL.Add('SELECT   ID,30,''A'',');
      SQL.Add('         PAR_FANT,PAR_RAZA,PAR_FANT,PAR_CNPJ,PAR_IE,');
      SQL.Add('         PAR_DDD,PAR_FONE,PAR_MAIL,');
      SQL.Add('        (SELECT ID FROM TAB_CEP_LOG WHERE  CEP = PAR_CEP) AS IDLOG,');
      SQL.Add('         PAR_TLOG,PAR_LOGR,PAR_NUME,PAR_COMP,PAR_CEP,PAR_BAI,PAR_CID,PAR_CCID,PAR_CUF,PAR_UF,');
      SQL.Add('         PAR_CCLI,PAR_CVEN,PAR_CREP,PAR_CFOR,PAR_CTRA,2,');
      SQL.Add('         PAR_CCRT,55,PAR_SERI,PAR_CNA1,PAR_CNA2,');
      SQL.Add('         par_foto,par_fot3,par_cbar,null,');
      SQL.Add('         PAR_RAMO,149,0,1,1,''GC'',1,0,1,NULL,');
      SQL.Add('         0,127,78,0,0,PAR_STPD,PAR_STCO,PAR_CPAG');
      SQL.Add('FROM     PAR_SIS');
      SQL.Add('ORDER BY ID');
      ExecQuery;
    end;
    oCTransact(TDestino);
    oAviso(handle,'Parâmetros - TAB_PAR_SIS atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar Parâmetros - TAB_PAR_SIS');
  end;
end;

procedure TFrmPrincipal.Grade1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar Grade ?') = mrNo then
     Abort;

  try
    oOTransact(TOrigem);
    oOTransact(TDestino);

    with SQLOrigem do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT DESCRICAO FROM TGRD ORDER BY ID');
      ExecQuery;
    end;
    while not SQLOrigem.Eof do
    begin
      with SQLDestino do
      begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO TAB_GRD (REFERENCIA)');
        SQL.Add('VALUES ('''+SQLOrigem.Current.Vars[0].AsString+''')');
        ExecQuery;
      end;
      SQLOrigem.Next;
    end;
    oCTransact(TOrigem );
    oCTransact(TDestino);
    oAviso(handle,'Grade atualizada com sucesso !');
  except
    oCTransact(TOrigem ,ltRollback);
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar Parâmetros');
  end;
end;

procedure TFrmPrincipal.Produtos2Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar Produtos ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO SET');
      SQL.Add('       IDEP          = PRO_CDEP, ');
      SQL.Add('       DTCA          = PRO_DCAD, ');
      SQL.Add('       DTED          = PRO_DALT, ');
      SQL.Add('       REST          = PRO_STAV, ');
      SQL.Add('       CDST          = IDST,     ');
      SQL.Add('       NCM           = PRO_CCLF, ');
      SQL.Add('       TRIBIPI       = PRO_PIPI, ');
      SQL.Add('       CEAN          = PRO_CBAR, ');
      SQL.Add('       IDCOR         = PRO_CCOR, ');
      SQL.Add('       IDCF          = PRO_CDFO, ');
      SQL.Add('       CDCF          = PRO_CFOR, ');
      SQL.Add('       CEANCF        = PRO_FBAR, ');
      SQL.Add('       UCOM          = PRO_DUNI, ');
      SQL.Add('       UQVOL         = PRO_QVOL, ');
      SQL.Add('       UESP          = PRO_ESP,  ');
      SQL.Add('       UCDBE         = PRO_CDBE, ');
      SQL.Add('       UQTRL         = PRO_QTRL, ');
      SQL.Add('       UQTDE         = PRO_QTUN, ');
      SQL.Add('       UPESOB        = PRO_PBUN, ');
      SQL.Add('       UPESOL        = PRO_PLUN, ');
      SQL.Add('       ORIG          = PRO_CCST, ');
      SQL.Add('       CPAIS         = PRO_CPAIS,');
      SQL.Add('       VUCOM_INI     = PRO_PTABI,');
      SQL.Add('       VUCOM_FIM     = PRO_PTABF,');
      SQL.Add('       PRO_CGRD      = PRO_GRAD ,');
      SQL.Add('       IDDIM         = 0,        ');
      SQL.Add('       IDCOL         = 0,        ');
      SQL.Add('       UVEN_QTDE_MIN = 1,        ');
      SQL.Add('       UVEN_QTDE_MUL = 1         ');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('MERGE INTO  CAD_PRO AS PK');
      SQL.Add('      USING TAB_STA AS FK ON (FK.DESCRICAO = ''ATIVO'')');
      SQL.Add('      WHEN  MATCHED THEN');
      SQL.Add('            UPDATE SET PK.CDST = FK.ID');
      ExecQuery;
      { Ricardo
        usar SELECT IDST,CDST,REST,DTST,PRO_STAV FROM CAD_PRO
             GROUP BY 1,2,3,4,5
        para testar status }
    end;
    oCTransact(TDestino);
    oAviso(handle,'Produtos atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar Produtos');
  end;
end;

procedure TFrmPrincipal.Clientes1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar Clientes ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_CLI SET');
      SQL.Add('       CLI_CICM = 0');
      SQL.Add('WHERE  FEMPTY(CLI_CICM)');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_CLI SET');
      SQL.Add('       CLI_RICM = 1');
      SQL.Add('WHERE  FEMPTY(CLI_RICM) OR CLI_RICM = 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_CLI SET');
      SQL.Add('       CLI_REVE = 1');
      SQL.Add('WHERE  FEMPTY(CLI_REVE)');
      ExecQuery;
    end;
    oCTransact(TDestino);
    oAviso(handle,'Clientes atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar Clientes');
  end;
end;

procedure TFrmPrincipal.ABNAT1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar TAB_NAT ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE TAB_NAT');
      SQL.Add('SET    NAT_PIPP = 0.65,NAT_PIPC = 3');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE TAB_NAT');
      SQL.Add('SET    NAT_OBSE = NULL');
      SQL.Add('WHERE  NAT_OBSE CONTAINING ''Somente''');
      ExecQuery;
    end;
    oCTransact(TDestino);
    oAviso(handle,'TAB_NAT atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar TAB_NAT');
  end;
end;

procedure TFrmPrincipal.CADTRAPADRO01Click(Sender: TObject);
var
  ID_NO_CAD_TRA: Integer;
begin
  if oYesNo(handle,'Atualizar CAD_TRA PADRÃO 0 ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_CAD_TRA,0) FROM RDB$DATABASE');
      ExecQuery;
      ID_NO_CAD_TRA := Current.Vars[0].AsInteger + 1;

      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_TRA (ID,TRA_STA,TRA_STAV,TRA_IDST)');
      SQL.Add('VALUES (0,0,''A'',30)');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_TRA');
      SQL.Add('SET   ID = 0');
      SQL.Add('WHERE ID = '''+IntToStr(ID_NO_CAD_TRA)+'''');
      ExecQuery;

      DEC(ID_NO_CAD_TRA);
      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR ID_NO_CAD_TRA TO '+IntToStr(ID_NO_CAD_TRA));
      ExecQuery;
    end;
    oCTransact(TDestino);
    oAviso(handle,'CAD_TRA PADRÃO 0 atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar CAD_TRA PADRÃO 0');
  end;
end;

procedure TFrmPrincipal.CADTRANOSSOCARRO1Click(Sender: TObject);
var
  ID_NO_CAD_TRA: Integer;
begin
  if oYesNo(handle,'Atualizar CAD_TRA NOSSO CARRO ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_CAD_TRA,0) FROM RDB$DATABASE');
      ExecQuery;
      ID_NO_CAD_TRA := Current.Vars[0].AsInteger + 1;

      Close;
      SQL.Clear;
      SQL.Add('MERGE INTO CAD_TRA AS PK');
      SQL.Add('  USING (SELECT ''NOSSO CARRO (''||FANTASIA||'')'' AS FANTASIA,RAZAO,DTCA,CNPJ,IE,');
      SQL.Add('                TPLOG,NOLOG,NULOG,COLOG,NUCEP,NOBAI,NOCID,CMUN,SGUF,');
      SQL.Add('                NUDDD,NUTEL,EMAIL,');
      SQL.Add('                0 AS STA,''A'' AS STAV,30 AS IDST');
      SQL.Add('                FROM  TAB_PAR_SIS');
      SQL.Add('                WHERE ID = 1) AS FK');
      SQL.Add('         ON PK.TRA_CNPJ = FK.CNPJ');
      SQL.Add('  WHEN NOT MATCHED THEN');
      SQL.Add('       INSERT (TRA_FANT,TRA_RAZA,TRA_DCAD,TRA_CNPJ,TRA_INSC,');
      SQL.Add('               TRA_TLOG,TRA_LOGR,TRA_NUME,TRA_COMP,TRA_CEP,TRA_BAI,TRA_CID,TRA_CMUN,TRA_ESTA,');
      SQL.Add('               TRA_DDD ,TRA_TEL1,TRA_MAIL,');
      SQL.Add('               TRA_STA ,TRA_STAV,TRA_IDST)');
      SQL.Add('      VALUES (FANTASIA,RAZAO,DTCA,CNPJ,IE,');
      SQL.Add('              TPLOG,NOLOG,NULOG,COLOG,NUCEP,NOBAI,NOCID,CMUN,SGUF,');
      SQL.Add('              NUDDD,NUTEL,EMAIL,');
      SQL.Add('              STA,STAV,IDST)');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE TAB_PAR_SIS');
      SQL.Add('SET    IDCT_PAD = '''+IntToStr(ID_NO_CAD_TRA)+'''');
      SQL.Add('WHERE  ID = 1');
    end;
    oCTransact(TDestino);
    oAviso(handle,'CAD_TRA NOSSO CARRO atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar CAD_TRA NOSSO CARRO');
  end;
end;

procedure TFrmPrincipal.CADTRASEMFRETE1Click(Sender: TObject);
var
  ID_NO_CAD_TRA: Integer;
begin
  if oYesNo(handle,'Atualizar CAD_TRA SEM FRETE ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_CAD_TRA,0) FROM RDB$DATABASE');
      ExecQuery;
      ID_NO_CAD_TRA := Current.Vars[0].AsInteger + 1;

      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_TRA (ID,TRA_FANT,TRA_RAZA,TRA_STA,TRA_STAV,TRA_IDST)');
      SQL.Add('VALUES (0,''SEM FRETE'',''SEM FRETE'',0,''A'',30)');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE TAB_PAR_SIS');
      SQL.Add('SET    IDCT_SEM_PAD = '''+IntToStr(ID_NO_CAD_TRA)+'''');
      ExecQuery;
    end;
    oCTransact(TDestino);
    oAviso(handle,'CAD_TRA SEM FRETE atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar CAD_TRA SEM FRETE');
  end;
end;

procedure TFrmPrincipal.CADCLIULTCOMPRA1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar CAD_CLI - ULT COMPRA ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('MERGE INTO  CAD_CLI AS PK');
      SQL.Add('      USING NFE_CAB AS FK ON (FK.NFE_CFAV = PK.ID)');
      SQL.Add('            WHEN MATCHED THEN');
      SQL.Add('                 UPDATE  SET');
      SQL.Add('                         PK.CLI_DULT = FK.NFE_DEMI');
      ExecQuery;
    end;
    oCTransact(TDestino);
    oAviso(handle,'CAD_CLI - ULT COMPRA atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar CAD_CLI - ULT COMPRA');
  end;
end;

procedure TFrmPrincipal.DATAMDIA1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar DATA MÉDIA ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select rdb$relation_name from rdb$relations');
      SQL.Add('where  rdb$system_flag   = 0');
      SQL.Add('and   (rdb$relation_name like ''FIN_REC_BAN_BAI%''' );
      SQL.Add('or     rdb$relation_name like ''FIN_REC_CAR_BAI%'')');
      ExecQuery;
    end;
    while not SQLDestino.Eof do
    begin
      SBRodape.Panels[0].Text := 'Atualizando Tabela Destino... '+Trim(SQLDestino.Current.Vars[0].AsString);
      Application.ProcessMessages;

      with SQLFKDestino do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT FIN_CDBX,FIN_TITU||'' de ''||FIN_DCAD FROM '+Trim(SQLDestino.Current.Vars[0].AsString));
        ExecQuery;
      end;
      while not SQLFKDestino.Eof do
      begin
        SBRodape.Panels[1].Text := SQLFKDestino.Current.Vars[1].AsString;
        Application.ProcessMessages;

        with SQLDEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('EXECUTE PROCEDURE SP_FIN_REC_DTMD('+IntToStr(SQLFKDestino.Current.Vars[0].AsInteger)+')');
          ExecQuery;
        end;
        SQLFKDestino.Next;
      end;

      SQLDestino.Next;
    end;
    oCTransact(TDestino);
    oAviso(handle,'DATA MÉDIA Atualizada com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar DATA MÉDIA');
  end;
end;

procedure TFrmPrincipal._DesativaTriggers(ATabela: String);
begin
  SBRodape.Panels[0].Text := 'Consultando Trigger da Tabela de Destino... '+ATabela;
  Application.ProcessMessages;

  try
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select rdb$trigger_name from rdb$triggers');
      SQL.Add('where  rdb$relation_name = '''+Trim(ATabela)+'''');
      ExecQuery;
    end;
    while not SQLDestino.Eof do
    begin
      SBRodape.Panels[0].Text := 'Desativando Triggers da Tabela Destino... '+Trim(ATabela)+' Trigger... '+Trim(SQLDestino.Current.Vars[0].AsString);
      Application.ProcessMessages;

      if Pos('CHECK',Trim(SQLDestino.Current.Vars[0].AsString)) = 0 then
         with SQLFKDestino do
         begin
           Close;
           SQL.Clear;
           SQL.Add('ALTER TRIGGER '+Trim(SQLDestino.Current.Vars[0].AsString)+' INACTIVE');
           ExecQuery;
         end;

      SQLDestino.Next;
    end;
    TDestino.CommitRetaining;
  except
    on E: Exception do
    begin
      oCTransact(TDestino,ltRollback);
      oException(Nil,'Falha ao tentar desativar trigger na tabela '+Trim(ATabela)+' !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;

  SBRodape.Panels[0].Text := EmptyStr;
  Application.ProcessMessages;
end;

procedure TFrmPrincipal._ReAtivaTriggers(ATabela: String);
begin
  SBRodape.Panels[0].Text := 'Consultando Trigger da Tabela de Destino... '+ATabela;
  Application.ProcessMessages;

  try
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select rdb$trigger_name from rdb$triggers');
      SQL.Add('where  rdb$relation_name = '''+Trim(ATabela)+'''');
      ExecQuery;
    end;
    while not SQLDestino.Eof do
    begin
      SBRodape.Panels[0].Text := 'Re-Ativando Triggers da Tabela Destino... '+Trim(ATabela)+' Trigger... '+Trim(SQLDestino.Current.Vars[0].AsString);
      Application.ProcessMessages;

      if Pos('CHECK',Trim(SQLDestino.Current.Vars[0].AsString)) = 0 then
         with SQLFKDestino do
         begin
           Close;
           SQL.Clear;
           SQL.Add('ALTER TRIGGER '+Trim(SQLDestino.Current.Vars[0].AsString)+' ACTIVE');
           ExecQuery;
         end;

      SQLDestino.Next;
    end;
    TDestino.CommitRetaining;
  except
    on E: Exception do
    begin
      oCTransact(TDestino,ltRollback);
      oException(Nil,'Falha ao tentar desativar trigger na tabela '+Trim(ATabela)+' !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;

  SBRodape.Panels[0].Text := EmptyStr;
  Application.ProcessMessages;
end;

procedure TFrmPrincipal._AtualizaGenerators(ATabela: String);
var
  nRecNo: Variant;
begin
  SBRodape.Panels[0].Text := 'Consultando Generator da Tabela de Origem... '+Trim(ATabela);
  Application.ProcessMessages;

  nRecNo := '0';
  try
    { Generator Origem }
    with SQLOrigem do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select rdb$generator_name');
      SQL.Add('from   rdb$generators');
      SQL.Add('where  rdb$system_flag = 0');
      SQL.Add('and    rdb$generator_name containing '''+Trim(ATabela)+'''');
      ExecQuery;
    end;

    while not SQLOrigem.Eof do
    begin
      SBRodape.Panels[0].Text := 'Obtendo Generator Origem... '+Trim(SQLOrigem.Current.Vars[0].AsString);
      Application.ProcessMessages;

      if SQLOrigem.Current.Vars[0].AsString <> EmptyStr then
      begin
        with SQLFKOrigem do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT GEN_ID('+Trim(SQLOrigem.Current.Vars[0].AsString)+',0) FROM RDB$DATABASE');
          ExecQuery;
          nRecNo := IntToStr(Current.Vars[0].AsInteger);
        end;

        { Generator Destino }
        SBRodape.Panels[0].Text := 'Consultando Generator da Tabela Destino... '+Trim(ATabela);
        Application.ProcessMessages;

        with SQLDestino do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select rdb$generator_name');
          SQL.Add('from   rdb$generators');
          SQL.Add('where  rdb$system_flag = 0');
          SQL.Add('and    rdb$generator_name containing '''+Trim(ATabela)+'''');
          ExecQuery;
        end;
        while not SQLDestino.Eof do
        begin
          SBRodape.Panels[0].Text := 'Ativando Generator da Tabela Destino... '+Trim(ATabela)+' Generator... '+Trim(SQLDestino.Current.Vars[0].AsString);
          Application.ProcessMessages;

          if SQLDestino.Current.Vars[0].AsString <> EmptyStr then
             with SQLFKDestino do
             begin
               Close;
               SQL.Clear;
               SQL.Add('SET GENERATOR '+Trim(SQLDestino.Current.Vars[0].AsString)+' TO '+IntToStr(nRecNo));
               ExecQuery;
             end;
          SQLDestino.Next;
        end;
      end;
      SQLOrigem.Next;
    end;
    TDestino.CommitRetaining;
  except
    on E: Exception do
    begin
      oCTransact(TDestino,ltRollback);
      oException(Nil,'Falha ao tentar atualizar generator na tabela '+Trim(ATabela)+' !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;

  SBRodape.Panels[0].Text := EmptyStr;
  Application.ProcessMessages;
end;

procedure TFrmPrincipal._AtualizaTabelas(ATabela: String;AID: String = '0');
var
  o,d: word;
begin
  ATabela := Trim(ATabela);

  if (LeftStr(ATabela,3) <> 'IBE') and (ATabela <> 'CAD_PRO_PCI_RPK') and (ATabela <> 'TAB_COR')then
  begin
    TDDConsulta.Close;
    TDDConsulta.TableName       := ATabela;
    TDDConsulta.IndexFieldNames := 'ID';
    TDDConsulta.Open;

    with QOConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select   * FROM '+ATabela);
      SQL.Add('WHERE    ID > '''+AID+'''');
      SQL.Add('ORDER BY ID');
      Open;
    end;

    while not QOConsulta.Eof do
    begin
      SBRodape.Panels[0].Text := 'Atualizando Registro Id ... '+QOConsulta.Current.ByName('Id').AsString;
      Application.ProcessMessages;

      TDDConsulta.Append;
      for d := 0 to TDDConsulta.FieldCount - 1 do
      begin
        if (TDDConsulta.Fields[d].Required) or (Pos(TDDConsulta.Fields[d].DisplayName,'IDCAIDED') > 0) then
            TDDConsulta.Fields[d].Value := 0;

           for o := 0 to QOConsulta.FieldCount - 1 do
               { atualiza quando campos correspondem }
               if QOConsulta.Fields[o].DisplayName = TDDConsulta.Fields[d].DisplayName then
               begin
                 if not QOConsulta.Fields[o].IsNull then
                    TDDConsulta.Fields[d].Value := QOConsulta.Fields[o].Value;
                 Break;
               end;
      end;

      TDDConsulta.Post;
      TDestino.CommitRetaining;

      QOConsulta.Next;
    end;
  end;
end;

procedure TFrmPrincipal.N1Produtoss1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar Artigo ?') = mrNo then
     Abort;

  { Ricardo - Verificar duplicidades nos artigos -> PRO_DPRO \ INFADCAD

                        SELECT   ARTIGO
                        FROM (
                        SELECT   PRO_CART AS ARTIGO,PRO_CCLF AS NCM,PRO_CDEP AS IDEP,PRO_CDFO AS IDCF,
                                 PRO_DPRO AS DESCRICAO,PRO_COMP AS COMPBASE,
                                 PRO_CCST AS ORIG,PRO_CPAIS,
                                 INFADCAD
                        FROM     CAD_PRO
                        WHERE    PRO_CDEP <> 5
                        GROUP BY 1,2,3,4,5,6,7,8,9
                        ORDER BY 1)
                        GROUP BY 1
                        HAVING COUNT(*) > 1
                        ORDER BY 1

              Verificar Descrição em branco
                        SELECT * FROM CAD_PRO WHERE FEMPTY(PRO_DPRO)

              Verificar inconsistência no cst, orig e pais
                        SELECT   PRO_CCST,PRO_CPAIS,PRO_DORI FROM CAD_PRO
                        GROUP BY 1,2,3
                        ORDER BY 1

                        CCST = '1267' - Produto importado

              Script CORREÇÃO
                   -> CORRIGE_DUPLICIDADE_DESCRICAO_ARTIGO
                   -> CORRIGE_DUPLICIDADE_INFADCA_ARTIGO
    }

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('MERGE INTO CAD_PRO_TMP AS PK');
      SQL.Add('  USING (SELECT   FK.PRO_CART AS ARTIGO,FK.PRO_CCLF AS NCM,FK.PRO_CDEP AS IDEP,FK.PRO_CDFO AS IDCF,');
      SQL.Add('                  FK.PRO_DPRO AS DESCRICAO,FK.PRO_COMP AS COMPBASE,');
      SQL.Add('                  FK.PRO_CCST AS ORIG,FK.PRO_CPAIS AS CPAIS,');
      SQL.Add('                  FK.INFADCAD');
      SQL.Add('         FROM     CAD_PRO AS FK');
      SQL.Add('         WHERE    FK.PRO_CDEP <> 5');
      SQL.Add('         GROUP BY 1,2,3,4,5,6,7,8,9');
      SQL.Add('         ORDER BY 1) AS FK');
      SQL.Add('         ON PK.ARTIGO = FK.ARTIGO');
      SQL.Add('  WHEN MATCHED THEN');
      SQL.Add('       UPDATE SET PK.ARTIGO    = FK.ARTIGO,');
      SQL.Add('                  PK.NCM       = FK.NCM,');
      SQL.Add('                  PK.IDEP      = FK.IDEP,');
      SQL.Add('                  PK.IDCF      = FK.IDCF,');
      SQL.Add('                  PK.DESCRICAO = FK.DESCRICAO,');
      SQL.Add('                  PK.COMPBASE  = FK.COMPBASE,');
      SQL.Add('                  PK.ORIG      = FK.ORIG,');
      SQL.Add('                  PK.CPAIS     = FK.CPAIS,');
      SQL.Add('                  PK.INFADCAD  = FK.INFADCAD');
      SQL.Add('  WHEN NOT MATCHED THEN');
      SQL.Add('       INSERT (ARTIGO,NCM,IDEP,IDCF,DESCRICAO,COMPBASE,ORIG,CPAIS,INFADCAD)');
      SQL.Add('       VALUES (FK.ARTIGO,FK.NCM,FK.IDEP,FK.IDCF,FK.DESCRICAO,FK.COMPBASE,FK.ORIG,FK.CPAIS,FK.INFADCAD)');
      ExecQuery;
    end;
    oCTransact(TDestino);
    oAviso(handle,'Artigo atualizado com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar Artigo');
  end;
end;

procedure TFrmPrincipal.NovoCADPRO1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar NCM ?') = mrNo then
     Abort;

  { Ricardo - Para NCM nulo ou diferente 8 digitos, gravar '00000000' }

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('MERGE INTO CAD_PRO_NCM_TMP AS PK');
      SQL.Add('  USING (SELECT   PRO_CCLF AS NCM,UTRIB,CEST,EXTIPI,TRIBIPI,TRIBFEDNAC,TRIBFEDIMP,TRIBUF,TRIBMUN');
      SQL.Add('         FROM     CAD_PRO  AS CP');
      SQL.Add('         LEFT');
      SQL.Add('         JOIN     TAB_NCM  AS TNCM ON (TNCM.NCM = CP.PRO_CCLF)');
      SQL.Add('         GROUP BY 1,2,3,4,5,6,7,8,9');
      SQL.Add('         ORDER BY 1) AS FK');
      SQL.Add('         ON PK.NCM = FK.NCM');
      SQL.Add('  WHEN MATCHED THEN');
      SQL.Add('       UPDATE SET PK.UTRIB      = FK.UTRIB,');
      SQL.Add('                  PK.CEST       = FK.CEST,');
      SQL.Add('                  PK.EXTIPI     = FK.EXTIPI,');
      SQL.Add('                  PK.TRIBIPI    = FK.TRIBIPI,');
      SQL.Add('                  PK.TRIBFEDNAC = FK.TRIBFEDNAC,');
      SQL.Add('                  PK.TRIBFEDIMP = FK.TRIBFEDIMP,');
      SQL.Add('                  PK.TRIBUF     = FK.TRIBUF,');
      SQL.Add('                  PK.TRIBMUN    = FK.TRIBMUN');
      SQL.Add('  WHEN NOT MATCHED THEN');
      SQL.Add('       INSERT (NCM,UTRIB,CEST,EXTIPI,TRIBIPI,TRIBFEDNAC,TRIBFEDIMP,TRIBUF,TRIBMUN)');
      SQL.Add('       VALUES (FK.NCM,FK.UTRIB,FK.CEST,FK.EXTIPI,FK.TRIBIPI,FK.TRIBFEDNAC,FK.TRIBFEDIMP,FK.TRIBUF,FK.TRIBMUN)');
      ExecQuery;
    end;
    oCTransact(TDestino);
    oAviso(handle,'NCM atualizado com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar NCM');
  end;
end;

procedure TFrmPrincipal.N3Medidas1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar Medida ?') = mrNo then
     Abort;

  { Ricardo - Verificar duplicidades nas Medidas

                        SELECT ARTIGO
                        FROM (
                                 SELECT   CP.ID AS IDPK,FK.PRO_CART AS ARTIGO ,
                                          FK.PRO_PESO AS PESO   ,FK.SPESO     AS PESOLSITE,FK.PRO_PSCN AS PSCN,
                                          FK.PRO_METR AS METRO  ,FK.PRO_REND  AS RENDIMENTO,FK.PRO_GRAM AS GRAMATURA,
                                          FK.PRO_UTIL AS LARG_U ,FK.PRO_LARG  AS LARG_T,
                                          FK.PRO_ELAS AS ELAST_L,FK.PRO_ELAC  AS ELAST_C,
                                          FK.PRO_ENCL AS ENCOL_L ,FK.PRO_ENCC AS ENCOL_C
                                 FROM     CAD_PRO     AS FK
                                 JOIN     CAD_PRO_TMP AS CP ON (CP.ARTIGO = FK.PRO_CART)
                                 WHERE    FK.PRO_CDEP <> 5
                                 GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14
                                 ORDER BY 1)
                        GROUP BY 1
                        HAVING COUNT(*) > 1

              Script CORRECAO
                   -> CORRIGE_DUPLICIDADE_MEDIDA_ARTIGO
    }

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('MERGE INTO CAD_PRO_MED_TMP AS PK');
      SQL.Add('  USING (SELECT   TMP.ID AS IDPK,FK.PRO_CART AS ARTIGO,');
      SQL.Add('                  FK.PRO_PESO AS PESO   ,FK.SPESO     AS PESOLSITE ,FK.PRO_PSCN AS PSCN,');
      SQL.Add('                  FK.PRO_METR AS METRO  ,FK.PRO_REND  AS RENDIMENTO,FK.PRO_GRAM AS GRAMATURA,');
      SQL.Add('                  FK.PRO_UTIL AS LARG_U ,FK.PRO_LARG  AS LARG_T ,');
      SQL.Add('                  FK.PRO_ELAS AS ELAST_L,FK.PRO_ELAC  AS ELAST_C,');
      SQL.Add('                  FK.PRO_ENCL AS ENCOL_L ,FK.PRO_ENCC AS ENCOL_C');
      SQL.Add('         FROM     CAD_PRO     AS FK');
      SQL.Add('         JOIN     CAD_PRO_TMP AS TMP ON (TMP.ARTIGO = FK.PRO_CART)');
      SQL.Add('         GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14');
      SQL.Add('         ORDER BY 1) AS FK');
      SQL.Add('         ON PK.IDPK = FK.IDPK');
      SQL.Add('  WHEN MATCHED THEN');
      SQL.Add('       UPDATE SET PK.IDPK       = FK.IDPK,');
      SQL.Add('                  PK.PESO       = FK.PESO,');
      SQL.Add('                  PK.PESOLSITE  = FK.PESOLSITE,');
      SQL.Add('                  PK.PSCN       = FK.PSCN,');
      SQL.Add('                  PK.METRO      = FK.METRO,');
      SQL.Add('                  PK.RENDIMENTO = FK.RENDIMENTO,');
      SQL.Add('                  PK.GRAMATURA  = FK.GRAMATURA,');
      SQL.Add('                  PK.LARG_U     = FK.LARG_U,');
      SQL.Add('                  PK.LARG_T     = FK.LARG_T,');
      SQL.Add('                  PK.ELAST_L    = FK.ELAST_L,');
      SQL.Add('                  PK.ELAST_C    = FK.ELAST_C,');
      SQL.Add('                  PK.ENCOL_L    = FK.ENCOL_L,');
      SQL.Add('                  PK.ENCOL_C    = FK.ENCOL_C');
      SQL.Add('  WHEN NOT MATCHED THEN');
      SQL.Add('       INSERT (IDPK,PESO,PESOLSITE,PSCN,METRO,RENDIMENTO,GRAMATURA,LARG_U,LARG_T,ELAST_L,ELAST_C,ENCOL_L,ENCOL_C)');
      SQL.Add('       VALUES (FK.IDPK,FK.PESO,FK.PESOLSITE,FK.PSCN,FK.METRO,FK.RENDIMENTO,FK.GRAMATURA,FK.LARG_U,FK.LARG_T,FK.ELAST_L,FK.ELAST_C,FK.ENCOL_L,FK.ENCOL_C)');
      ExecQuery;
    end;
    oCTransact(TDestino);
    oAviso(handle,'Medida atualizado com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar Medida');
  end;
end;

procedure TFrmPrincipal.N4Foto1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar Fotos ?') = mrNo then
     Abort;

  { Ricardo - Atualizar CAD_PRO_IMG.PRO_CDEP
              MERGE INTO  CAD_PRO_IMG AS PK
                    USING CAD_PRO     AS FK ON (FK.PRO_CART = PK.PRO_CART)
                    WHEN MATCHED THEN
                         UPDATE SET PK.PRO_CDEP = FK.PRO_CDEP
  }
  
  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('MERGE INTO TAB_IMG AS PK');
      SQL.Add('  USING (SELECT   FK.PRO_CART AS REFERENCIA,FK.PRO_FOTO AS IMG_PAD');
      SQL.Add('         FROM     CAD_PRO_IMG AS FK');
      SQL.Add('         WHERE    FK.PRO_FOTO IS NOT NULL');
      SQL.Add('         AND      FK.PRO_CDEP = 3');
      SQL.Add('         ORDER BY REFERENCIA) AS FK');
      SQL.Add('         ON PK.REFERENCIA = FK.REFERENCIA');
      SQL.Add('  WHEN MATCHED THEN');
      SQL.Add('       UPDATE SET PK.REFERENCIA = FK.REFERENCIA,');
      SQL.Add('                  PK.IMG_PAD    = FK.IMG_PAD');
      SQL.Add('  WHEN NOT MATCHED THEN');
      SQL.Add('       INSERT (REFERENCIA   ,IMG_PAD)');
      SQL.Add('       VALUES (FK.REFERENCIA,FK.IMG_PAD)');
      ExecQuery;
    end;
    oCTransact(TDestino);
    oAviso(handle,'Fotos atualizado com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar Fotos');
  end;
end;

procedure TFrmPrincipal.N4InstruesdeLavagem1Click(Sender: TObject);
var
  Pasta,
  Referencia,
  Campo,
  Codigo,
  IDILA: String;
  i: Word;
  F: TSearchRec;
  R: Integer;
begin
  FOpen.DefaultExt := '*.bmp';
  FOpen.Filter     := 'Bitmap|*.bmp';
  FOpen.InitialDir := 'C:\Sheild\Imagens\Instruções de Lavagem\CAD_PRO_IMG';

  if not FOpen.Execute then Abort;

  Pasta := ExtractFilePath(FOpen.FileName);
  for i := Pos('ILA',Pasta) to Length(Pasta) do
  begin
    Campo := Campo + Pasta[i];
    if Pasta[i] = '\' then
    begin
      Codigo := RightStr(Pasta,Length(Pasta)-i);
      Break;
    end;
  end;
  Campo  := oStrTran(Campo ,'\','');
  Codigo := oStrTran(Codigo,'\','');

  R := FindFirst(Pasta+'*.bmp',faAnyFile,F);
  try
    oOTransact(TDestino);
    while R = 0 do
    begin
      SBRodape.Panels[0].Text := Pasta+F.Name;
      Application.ProcessMessages;

      Referencia := Trim(LeftStr(F.Name,Pos('.bmp',LowerCase(F.Name)) - 1));

      with SQLDestino do
      begin
        ParamCheck := False;
        Close;
        SQL.Clear;
        SQL.Add('EXECUTE BLOCK');
        SQL.Add('RETURNS (ID smallint)');
        SQL.Add('AS');
        SQL.Add('BEGIN');

        SQL.Add('UPDATE OR INSERT');
        SQL.Add('INTO CAD_PRO_ILA_TMP (REFERENCIA,ID'+Campo+')');
        SQL.Add('VALUES (');
        SQL.Add(''''+REFERENCIA+''',');
        SQL.Add(''''+Codigo +''')');
        SQL.Add('MATCHING (REFERENCIA)');

        SQL.Add('RETURNING ID INTO :ID;');
        SQL.Add('SUSPEND;');
        SQL.Add('END;');

        ExecQuery;
        IDILA := Fields[0].AsString;

        ParamCheck := False;
        Close;
        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO_TMP');
        SQL.Add('SET    IDILA  = '''+IDILA     +'''');
        SQL.Add('WHERE  ARTIGO = '''+REFERENCIA+'''');
        ExecQuery;
      end;

      R := FindNext(F);
    end;
  finally
    FindClose(F);
    oCTransact(TDestino);
  end;

  oAviso(Application.Handle,'Instruções de Lavagem atualizadas com sucesso !'+#13+
                            'Campo ' +Campo+#13+
                            'Código '+Codigo);
end;

procedure TFrmPrincipal.ImportarTabeladePreos1Click(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
  NewString := UPPERCASE(oRETMesExtenso(Date));
  ClickedOK := InputQuery('Tabela de Preços', 'Entre com o nome da tabela', NewString);
  NewString := Trim(NewString);

  if ((not ClickedOK) or (oEmpty(NewString))) then
       Abort;

  if oYesNo(handle,'Confirma atualização da tabela '+NewString+' ?') = mrNo then
     Abort;

  try
    try
      DBAccess.Connected := True;
    except
      raise exception.Create('Falha ao tentar abrir banco de dados !');
    end;

    try
      TAccess.Close;
      TAccess.TableName := NewString;
      TAccess.Open;
    except
      raise exception.Create('Falha ao tentar abrir a tabela '+NewString+' !');
    end;

    try
      oOTransact(TDestino);
      while not TAccess.Eof do
      begin
        SBRodape.Panels[0].Text := 'Atualizando Artigo '+TAccessPRO_CART.AsString+' ...';
        Application.ProcessMessages;

        with SQLDestino do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE CAD_PRO');
          SQL.Add('SET    PRO_PREC = CAST( ''' + oStrTran(FloatToStr(TAccessPRO_PREC.AsFloat),',','.') + '''  AS NUMERIC(5,2)),');
          SQL.Add('       PRO_PPRZ = CAST( ''' + oStrTran(FloatToStr(TAccessPRO_PPRZ.AsFloat),',','.') + '''  AS NUMERIC(5,2))' );
          SQL.Add('WHERE  PRO_CART = ''' + TAccessPRO_CART.AsString+'''');
          ExecQuery;
        end;

        TAccess.Next;
      end;
      oCTransact(TDestino);
    except
      on E: Exception do
      begin
        oRTransact(TDestino,ltRollback);
        oException(Nil,'Falha ao tentar importar tabela '+NewString+' !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    if TAccess.Active then
       TAccess.Close;
       
    if DBAccess.Connected then
       DBAccess.Connected := False;
  end;

  SBRodape.Panels[0].Text := EmptyStr;
  oAviso(handle,'Tabela '+NewString+' importada com sucesso !');
end;

procedure TFrmPrincipal.GerarTabeladePreos1Click(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
  NewString := oRETMesExtenso(Date);
  ClickedOK := InputQuery('Tabela de Preços', 'Entre com o nome da tabela', NewString);
  NewString := Trim(NewString);

  if ((not ClickedOK) or (oEmpty(NewString))) then
       Abort;

  if oYesNo(handle,'Gerar tabela TAB_PRC_ART ?') = mrNo then
     Abort;

  try
    SBRodape.Panels[0].Text := 'Aguarde, Gerando Tabela TAB_PRC_ART ...';
    Application.ProcessMessages;

    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM TAB_PRC_ART');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR IDG_TAB_PRC_ART TO 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('INSERT   INTO TAB_PRC_ART');
      SQL.Add('SELECT   0,CP.PRO_CDEP,'''+NewString+'''||');
      SQL.Add('         IIF(CP.PRO_PPRO > 0,''-PROMOÇÃO'',''''),''FOB'',');
      SQL.Add('         CP.PRO_CART,CP.PRO_PREC,CP.PRO_PPRZ,CP.PRO_PPRO,CP.PRO_DUNI,CP.PRO_UTIL,CP.PRO_LARG,CP.PRO_GRAM,CP.PRO_REND,');
      SQL.Add('         IIF(POSITION(CP.PRO_CCST IN ''1267'') > 0,''PRODUTO IMPORTADO'',''PRODUTO NACIONAL''),FLAG');
      SQL.Add('FROM     CAD_PRO AS CP');
      SQL.Add('WHERE    CP.PRO_CDEP = ''1''');
      SQL.Add('AND      CP.PRO_STAV = ''A''');
      SQL.Add('GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15');
      SQL.Add('ORDER BY CP.PRO_CART');
      ExecQuery;
    end;
    oCTransact(TDestino);
  except
    on E: Exception do
    begin
      oRTransact(TDestino,ltRollback);
      oException(Nil,'Falha ao tentar gerar tabela TAB_PRC_ART !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;

  SBRodape.Panels[0].Text := EmptyStr;
  oAviso(handle,'Tabela TAB_PRC_ART gerada com sucesso !');
end;

procedure TFrmPrincipal.N1Grupo1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar Grupo ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('MERGE INTO TAB_CLI_GRP AS PK');
      SQL.Add('  USING (SELECT   CLI_DEGP');
      SQL.Add('         FROM     CAD_CLI  AS FK');
      SQL.Add('         WHERE    NOT FEMPTY(FK.CLI_DEGP)');
      SQL.Add('         GROUP BY 1');
      SQL.Add('         ORDER BY 1) AS FK');
      SQL.Add('         ON PK.DESCRICAO = FK.CLI_DEGP');
      SQL.Add('  WHEN MATCHED THEN');
      SQL.Add('       UPDATE SET PK.DESCRICAO = FK.CLI_DEGP');
      SQL.Add('  WHEN NOT MATCHED THEN');
      SQL.Add('       INSERT (DESCRICAO)');
      SQL.Add('       VALUES (FK.CLI_DEGP)');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('MERGE INTO CAD_CLI  AS PK');
      SQL.Add('  USING TAB_CLI_GRP AS FK ON (FK.DESCRICAO = PK.CLI_DEGP)');
      SQL.Add('  WHEN  MATCHED THEN');
      SQL.Add('        UPDATE  SET PK.CLI_IDGP = FK.ID');
      ExecQuery;
    end;

    oCTransact(TDestino);
    oAviso(handle,'Grupos atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar Grupos');
  end;
end;

procedure TFrmPrincipal.N2Status1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar Status ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('MERGE INTO CAD_CLI  AS PK');
      SQL.Add('  USING TAB_STA AS FK ON (FK.REFERENCIA = PK.CLI_STAV)');
      SQL.Add('  WHEN  MATCHED THEN');
      SQL.Add('        UPDATE  SET PK.CLI_IDST = FK.ID');
      ExecQuery;
    end;

    oCTransact(TDestino);
    oAviso(handle,'Status atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar Status');
  end;
end;

procedure TFrmPrincipal.N3TiposdeEntregas1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar Tipos de Entregas ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('MERGE INTO CAD_CLI  AS PK');
      SQL.Add('  USING TAB_TPO AS FK ON (FK.REFERENCIA = PK.CLI_TIPO AND FK.CLIENTE_TPE = 1)');
      SQL.Add('  WHEN  MATCHED THEN');
      SQL.Add('        UPDATE  SET PK.CLI_IDTPE = FK.ID');
      ExecQuery;
    end;

    oCTransact(TDestino);
    oAviso(handle,'Tipos de Entregas atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar Tipos de Entregas');
  end;
end;

procedure TFrmPrincipal.N4CNAE1Click(Sender: TObject);
begin
  { Ricardo - Usar esse Select para verificar CNAE
              Caso Id = 0 e Tenha Ramo de atividade cadastrado, será necessário atualizar TAB_CNAE

              SELECT CLI_IDCNAE,CLI_RAMO FROM CAD_CLI
              GROUP BY 1,2
  }
end;

procedure TFrmPrincipal.N5Finalidade1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar Finalidade ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_CLI');
      SQL.Add('SET    CLI_REVE = 0');
      SQL.Add('WHERE  FEMPTY(CLI_REVE))');
      ExecQuery;
      
      Close;
      SQL.Clear;
      SQL.Add('MERGE INTO CAD_CLI  AS PK');
      SQL.Add('  USING TAB_TPO AS FK ON (FK.REFERENCIA = PK.CLI_REVE AND FK.CLIENTE_FIN = 1)');
      SQL.Add('  WHEN MATCHED THEN');
      SQL.Add('  UPDATE SET PK.CLI_IDFIN = FK.ID');
      ExecQuery;
    end;

    oCTransact(TDestino);
    oAviso(handle,'Finalidade atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar Finalidade');
  end;
end;

procedure TFrmPrincipal.N6AvisodeRecebimento1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar Aviso de Recebimento ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_CLI');
      SQL.Add('SET    CLI_IDAVR = 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('MERGE INTO CAD_CLI     AS PK');
      SQL.Add('  USING    TAB_CLI_AVR AS FK ON (FK.REFERENCIA = PK.CLI_RESE)');
      SQL.Add('  WHEN MATCHED THEN');
      SQL.Add('       UPDATE  SET PK.CLI_IDAVR = FK.ID');
      ExecQuery;
    end;

    oCTransact(TDestino);
    oAviso(handle,'Aviso de Recebimento atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar Aviso de Recebimento');
  end;
end;

procedure TFrmPrincipal.N7CNPJ1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar CNPJ ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_CLI');
      SQL.Add('SET    CLI_CNPJ = TRIM(REPLACE(REPLACE(REPLACE(CLI_CNPJ,''-'',''''),''.'',''''),''/'',''''))');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_CLI');
      SQL.Add('SET    CLI_CNPJ = NULL');
      SQL.Add('WHERE  CHAR_LENGTH(CLI_CNPJ) < 14');
      ExecQuery;
    end;

    oCTransact(TDestino);
    oAviso(handle,'CNPJ atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar CNPJ');
  end;
end;

procedure TFrmPrincipal.N8IE1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar IE ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_CLI');
      SQL.Add('SET    CLI_INSC = ''ISENTO''');
      SQL.Add('WHERE  CLI_INSC = ''ISENTA''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_CLI');
      SQL.Add('SET    CLI_INSC = ''ISENTO''');
      SQL.Add('WHERE  CLI_INSC = ''ISENT''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_CLI');
      SQL.Add('SET    CLI_INSC = TRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CLI_INSC,''-'',''''),''.'',''''),''/'',''''),''SSP'',''''),''SP'',''''),''N'',''''),''M'',''''),''C'',''''),''G'',''''),'':'',''''),''F'',''''),''I'',''''),''E'',''''))');
      SQL.Add('WHERE  CLI_INSC <> ''ISENTO''');
      ExecQuery;
    end;

    oCTransact(TDestino);
    oAviso(handle,'IE atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar IE');
  end;
end;

procedure TFrmPrincipal.N9ISUF1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar ISUF ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_CLI');
      SQL.Add('SET    CLI_CCM = TRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CLI_CCM,''-'',''''),''.'',''''),''/'',''''),''SSP'',''''),''SP'',''''),''N'',''''),''M'',''''),''C'',''''),''G'',''''),'':'',''''),''F'',''''),''I'',''''),''E'',''''))');
      ExecQuery;
    end;

    oCTransact(TDestino);
    oAviso(handle,'ISUF atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar ISUF');
  end;
end;

procedure TFrmPrincipal.N10IM1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar IM ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_CLI');
      SQL.Add('SET    CLI_IMUN = TRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CLI_IMUN,''-'',''''),''.'',''''),''/'',''''),''SSP'',''''),''SP'',''''),''N'',''''),''M'',''''),''C'',''''),''G'',''''),'':'',''''),''F'',''''),''I'',''''),''E'',''''))');
      ExecQuery;
    end;

    oCTransact(TDestino);
    oAviso(handle,'IM atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar IM');
  end;
end;

procedure TFrmPrincipal.N11RICMSCICMS1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar RICMS / CICMS / CPAÍS?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_CLI');
      SQL.Add('SET    CLI_CICM = 0 WHERE FEMPTY(CLI_CICM)');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_CLI');
      SQL.Add('SET    CLI_RICM = 0 WHERE FEMPTY(CLI_RICM)');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_CLI');
      SQL.Add('SET    CLI_CPAIS = 1058 WHERE FEMPTY(CLI_CPAIS)');
      ExecQuery;
    end;

    oCTransact(TDestino);
    oAviso(handle,'RICMS / CICMS / CPAÍS atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar RICMS / CICMS / CPAÍS');
  end;

end;

procedure TFrmPrincipal.N18Principal1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar CAD_CLI ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('MERGE INTO CAD_CLI_TMP AS PK');
      SQL.Add('  USING (SELECT   FK.ID,FK.CLI_DCAD,FK.CLI_DALT,FK.CLI_IDST,FK.CLI_FANT,FK.CLI_RAZA,');
      SQL.Add('                  FK.CLI_DFUN,FK.CLI_IDGP,');
      SQL.Add('                  FK.CLI_CNPJ,FK.CLI_INSC,FK.CLI_CPF,FK.CLI_CCM,FK.CLI_IMUN,');
      SQL.Add('                  FK.CLI_IDTPE,FK.CLI_IDAVR,FK.CLI_IDCNAE,FK.CLI_IDFIN,');
      SQL.Add('                  FK.CLI_RICM,FK.CLI_CICM,');
      SQL.Add('                  FK.CLI_CPAIS,FK.CLI_IDESTRANGEIRO');
      SQL.Add('         FROM     CAD_CLI AS FK');
      SQL.Add('         WHERE    FK.ID > 0');
      SQL.Add('         ORDER BY FK.ID) AS FK');
      SQL.Add('         ON PK.ID = FK.ID');
      SQL.Add('  WHEN MATCHED THEN');
      SQL.Add('       UPDATE  SET PK.DTCA = FK.CLI_DCAD,PK.DTED = FK.CLI_DALT,PK.CDST = FK.CLI_IDST,');
      SQL.Add('                   PK.FANTASIA = FK.CLI_FANT,PK.RAZAO = FK.CLI_RAZA,');
      SQL.Add('                   PK.DTFU = FK.CLI_DFUN,PK.IDGP = FK.CLI_IDGP,');
      SQL.Add('                   PK.CNPJ = FK.CLI_CNPJ,PK.IE = FK.CLI_INSC,PK.CPF = FK.CLI_CPF,PK.ISUF = FK.CLI_CCM,PK.IM = FK.CLI_IMUN,');
      SQL.Add('                   PK.IDTPE = FK.CLI_IDTPE,PK.IDAVR = FK.CLI_IDAVR,PK.IDCNAE = FK.CLI_IDCNAE,PK.IDFIN = FK.CLI_IDFIN,');
      SQL.Add('                   PK.RICMS = FK.CLI_RICM,PK.CICMS = FK.CLI_CICM,PK.CPAIS = FK.CLI_CPAIS,PK.IDESTRANGEIRO = FK.CLI_IDESTRANGEIRO');
      SQL.Add('  WHEN NOT MATCHED THEN');
      SQL.Add('       INSERT (ID,DTCA,DTED,CDST,');
      SQL.Add('               FANTASIA,RAZAO,');
      SQL.Add('               DTFU,IDGP,');
      SQL.Add('               CNPJ,IE,CPF,ISUF,IM,IDTPE,IDAVR,IDCNAE,IDFIN,');
      SQL.Add('               RICMS,CICMS,CPAIS,IDESTRANGEIRO)');
      SQL.Add('       VALUES (FK.ID,FK.CLI_DCAD,FK.CLI_DALT,FK.CLI_IDST,');
      SQL.Add('               FK.CLI_FANT,FK.CLI_RAZA,');
      SQL.Add('               FK.CLI_DFUN,FK.CLI_IDGP,');
      SQL.Add('               FK.CLI_CNPJ,FK.CLI_INSC,FK.CLI_CPF,FK.CLI_CCM,FK.CLI_IMUN,');
      SQL.Add('               FK.CLI_IDTPE,FK.CLI_IDAVR,FK.CLI_IDCNAE,FK.CLI_IDFIN,');
      SQL.Add('               FK.CLI_RICM,FK.CLI_CICM,FK.CLI_CPAIS,FK.CLI_IDESTRANGEIRO)');
      ExecQuery;
    end;

    oCTransact(TDestino);
    oAviso(handle,'CAD_CLI atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar CAD_CLI');
  end;
end;

procedure TFrmPrincipal.N12Contatos1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar Contatos ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('MERGE INTO CAD_CLI_CON_TMP AS PK');
      SQL.Add('  USING (SELECT   FK.ID AS IDPK,');
      SQL.Add('                  FK.CLI_DCAD AS DTCA,FK.CLI_DALT AS DTED,');
      SQL.Add('                  FK.CLI_CONT AS CONTATO,FK.CLI_MAIL AS EMAIL,');
      SQL.Add('                  TRIM(FK.CLI_DDD) AS NUDDD   ,TRIM(REPLACE(FK.CLI_TEL1,'' '','''')) AS NUTEL,');
      SQL.Add('                  TRIM(FK.CLI_DD2) AS NUDDD2  ,TRIM(REPLACE(FK.CLI_TEL2,'' '','''')) AS NUTEL2,');
      SQL.Add('                  TRIM(FK.CLI_DD3) AS NUDDD3  ,TRIM(REPLACE(FK.CLI_TEL3,'' '','''')) AS NUTEL3,');
      SQL.Add('                  TRIM(FK.CLI_DD5) AS NUDDDCEL,TRIM(REPLACE(FK.CLI_CEL ,'' '','''')) AS NUCEL,');
      SQL.Add('                  TRIM(REPLACE(FK.CLI_NEID,''-'','''')) AS NUZAP,');
      SQL.Add('                  FK.CLI_FCON       AS FIN_CONTATO ,FK.CLI_FMAI AS FIN_EMAIL,');
      SQL.Add('                  TRIM(FK.CLI_FDDD) AS FIN_NUDDD   ,TRIM(REPLACE(FK.CLI_FTE1,'' '','''')) AS FIN_NUTEL,');
      SQL.Add('                  TRIM(FK.CLI_FDD2) AS FIN_NUDDD2  ,TRIM(REPLACE(FK.CLI_FTE2,'' '','''')) AS FIN_NUTEL2,');
      SQL.Add('                  TRIM(FK.CLI_FDD3) AS FIN_NUDDD3  ,TRIM(REPLACE(FK.CLI_FTE3,'' '','''')) AS FIN_NUTEL3,');
      SQL.Add('                  TRIM(FK.CLI_FDD5) AS FIN_NUDDDCEL,TRIM(REPLACE(FK.CLI_FCEL,'' '','''')) AS FIN_NUCEL');
      SQL.Add('         FROM     CAD_CLI AS FK');
      SQL.Add('         WHERE    FK.ID > 0');
      SQL.Add('         ORDER BY FK.ID) AS FK');
      SQL.Add('         ON PK.IDPK = FK.IDPK');
      SQL.Add('  WHEN MATCHED THEN');
      SQL.Add('       UPDATE  SET');
      SQL.Add('               PK.DTCA         = FK.DTCA,');
      SQL.Add('               PK.DTED         = FK.DTED,');
      SQL.Add('               PK.CONTATO      = FK.CONTATO,');
      SQL.Add('               PK.EMAIL        = FK.EMAIL,');
      SQL.Add('               PK.NUDDD        = FK.NUDDD,');
      SQL.Add('               PK.NUDDD2       = FK.NUDDD2,');
      SQL.Add('               PK.NUDDD3       = FK.NUDDD3,');
      SQL.Add('               PK.NUDDDCEL     = FK.NUDDDCEL,');
      SQL.Add('               PK.NUTEL        = FK.NUTEL,');
      SQL.Add('               PK.NUTEL2       = FK.NUTEL2,');
      SQL.Add('               PK.NUTEL3       = FK.NUTEL3,');
      SQL.Add('               PK.NUCEL        = FK.NUCEL,');
      SQL.Add('               PK.NUZAP        = FK.NUZAP,');
      SQL.Add('               PK.FIN_CONTATO  = FK.FIN_CONTATO,');
      SQL.Add('               PK.FIN_EMAIL    = FK.FIN_EMAIL,');
      SQL.Add('               PK.FIN_NUDDD    = FK.FIN_NUDDD,');
      SQL.Add('               PK.FIN_NUDDD2   = FK.FIN_NUDDD2,');
      SQL.Add('               PK.FIN_NUDDD3   = FK.FIN_NUDDD3,');
      SQL.Add('               PK.FIN_NUDDDCEL = FK.FIN_NUDDDCEL,');
      SQL.Add('               PK.FIN_NUTEL    = FK.FIN_NUTEL,');
      SQL.Add('               PK.FIN_NUTEL2   = FK.FIN_NUTEL2,');
      SQL.Add('               PK.FIN_NUTEL3   = FK.FIN_NUTEL3,');
      SQL.Add('               PK.FIN_NUCEL    = FK.FIN_NUCEL');
      SQL.Add('  WHEN NOT MATCHED THEN');
      SQL.Add('       INSERT (IDPK,');
      SQL.Add('               DTCA,DTED,');
      SQL.Add('               CONTATO,EMAIL,');
      SQL.Add('               NUDDD,NUDDD2,NUDDD3,NUDDDCEL,NUTEL,NUTEL2,NUTEL3,NUCEL,NUZAP,');
      SQL.Add('               FIN_CONTATO,FIN_EMAIL,');
      SQL.Add('               FIN_NUDDD,FIN_NUDDD2,FIN_NUDDD3,FIN_NUDDDCEL,FIN_NUTEL,FIN_NUTEL2,FIN_NUTEL3,FIN_NUCEL)');
      SQL.Add('       VALUES (FK.IDPK,');
      SQL.Add('               FK.DTCA,FK.DTED,');
      SQL.Add('               FK.CONTATO,FK.EMAIL,');
      SQL.Add('               FK.NUDDD,FK.NUDDD2,FK.NUDDD3,FK.NUDDDCEL,FK.NUTEL,FK.NUTEL2,FK.NUTEL3,FK.NUCEL,FK.NUZAP,');
      SQL.Add('               FK.FIN_CONTATO,FK.FIN_EMAIL,FK.FIN_NUDDD,FK.FIN_NUDDD2,FK.FIN_NUDDD3,FK.FIN_NUDDDCEL,FK.FIN_NUTEL,FK.FIN_NUTEL2,FK.FIN_NUTEL3,FK.FIN_NUCEL)');
      ExecQuery;
    end;

    oCTransact(TDestino);
    oAviso(handle,'Contatos atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar Contatos');
  end;
end;

procedure TFrmPrincipal.NovaTABCOR1Click(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar TAB_COR ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      Close;
      SQL.Clear;
      SQL.Add('MERGE INTO TAB_COR_TMP AS PK');
      SQL.Add('  USING (SELECT   FK.COR_CCOR AS ID,FK.COR_CCOR AS CODIGO,FK.COR_REFE AS REFERENCIA,FK.COR_PCOR AS ESCALA,FK.COR_DCOR AS DESCRICAO,1 AS PRECO,0 AS PADRAO');
      SQL.Add('         FROM     TAB_COR  AS FK');
      SQL.Add('         WHERE    FK.COR_CCOR > 0');
      SQL.Add('         ORDER BY ID) AS FK');
      SQL.Add('         ON PK.CODIGO = FK.CODIGO');
      SQL.Add('  WHEN MATCHED THEN');
      SQL.Add('       UPDATE  SET');
      SQL.Add('               PK.ID         = FK.ID,');
      SQL.Add('               PK.CODIGO     = FK.CODIGO,');
      SQL.Add('               PK.REFERENCIA = FK.REFERENCIA,');
      SQL.Add('               PK.ESCALA     = FK.ESCALA,');
      SQL.Add('               PK.DESCRICAO  = FK.DESCRICAO,');
      SQL.Add('               PK.PRECO      = FK.PRECO,');
      SQL.Add('               PK.PADRAO     = FK.PADRAO');
      SQL.Add('  WHEN NOT MATCHED THEN');
      SQL.Add('       INSERT (ID,CODIGO,REFERENCIA,ESCALA,DESCRICAO,PRECO,PADRAO)');
      SQL.Add('       VALUES (FK.ID,FK.CODIGO,FK.REFERENCIA,FK.ESCALA,FK.DESCRICAO,FK.PRECO,FK.PADRAO)');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE TAB_COR_TMP');
      SQL.Add('SET    SISTEMA = ''Pantone''');
      SQL.Add('WHERE  ESCALA IS NOT NULL');
      ExecQuery;
    end;

    oCTransact(TDestino);
    oAviso(handle,'TAB_COR atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar TAB_COR');
  end;
end;

procedure TFrmPrincipal.DatasStatus1Click(Sender: TObject);
var
  i: word;
begin
  if oYesNo(handle,'Atualizar Datas e Status ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    for i := 1 to 9 do
        with SQLDestino do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE '+oREPZero('nfe_cab','_',i,3));
          SQL.Add('SET');
          SQL.Add('IDEP = '''+IntToStr(i)+''',');
          SQL.Add('IDEV = 0,');
          SQL.Add('IDCA = 0,');
          SQL.Add('DTCA = NFE_DEMI+NFE_HRSE,');
          SQL.Add('IDED = 0,');
          SQL.Add('IDST = 0,');
          SQL.Add('CDST = IIF(NFE_STA = 0,30,43),');
          SQL.Add('REST = IIF(NFE_STA = 0,''A'',''C'')');
          ExecQuery;
        end;

    oCTransact(TDestino);
    oAviso(handle,'Datas e Status atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar Datas e Status');
  end;
end;

procedure TFrmPrincipal.Romaneio1Click(Sender: TObject);
var
  i: word;
begin
  if oYesNo(handle,'Atualizar Romaneios ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    for i := 1 to 9 do
    begin
      with SQLDestino do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ROM_CDNF,ID,ROM_DERO FROM '+oREPZero('rom_cab','_',i,3));
        SQL.Add('WHERE  ROM_CDNF > 0');
        SQL.Add('ORDER BY 1');
        ExecQuery;
      end;
      while not SQLDestino.Eof do
      begin
        with SQLFKDestino do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE '+oREPZero('nfe_cab','_',i,3));
          SQL.Add('SET');
          SQL.Add('NFE_CDRO = '''+SQLDestino.Current.ByName('ID').AsString      +''',');
          SQL.Add('NFE_DERO = '''+SQLDestino.Current.ByName('ROM_DERO').AsString+'''' );
          SQL.Add('WHERE');
          SQL.Add('NFE_CDNF = '''+SQLDestino.Current.ByName('ROM_CDNF').AsString+'''' );
          ExecQuery;
        end;
        SQLDestino.Next;
      end;
    end;

    oCTransact(TDestino);
    oAviso(handle,'Romaneios atualizados com sucesso !');
  except
    oCTransact(TDestino,ltRollback);
    oErro(handle,'Erro ao tentar atualizar Datas e Status');
  end;
end;

procedure TFrmPrincipal.DELTALOGBAIRRO1Click(Sender: TObject);
var
  TFArquivo: TextFile;
  SLTexto  : TStringList;
  Linha,
  BAI_NU,
  UFE_SG,
  LOC_NU,
  BAI_NO,
  BAI_NO_ABREV,
  BAI_OPERACAO: String;
  PBCount: Integer;
begin
  if not FOpenCSV.Execute then
     Abort;

  AssignFile(TFArquivo,FOpenCSV.FileName);
  Reset(TFArquivo);

  SLTexto := TStringList.Create;
  SLTexto.LoadFromFile(FOpenCSV.FileName);

  PBCount := 0;
  PBPrincipal.Max := SLTexto.Count -1;
  PBPrincipal.Position := 0;

  PNLRodape.Height  := 20;
  PNLRodape.Visible := True;
  try
    oOTransact(TDestino);
    try
      While not Eof(TFArquivo) do
      Begin
        Inc(PBCount);
        Readln(TFArquivo,Linha);
        Linha := oUTF8ToStr(Linha);
        if Pos('''',Linha) > 0 then //Crase
           Linha := oStrTran(Linha,'''','`');

        Caption := 'Lendo Linha ... ' + IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max);
        PBPrincipal.Position := PBPrincipal.Position + 1;
        Delimitador := 0;

        Application.ProcessMessages;

        BAI_NU := oStrTran(oGetLinha(Linha),'?','');
        UFE_SG := oGetLinha(Linha);
        LOC_NU := oGetLinha(Linha);
        BAI_NO := oGetLinha(Linha);
        BAI_NO_ABREV := oGetLinha(Linha);
        BAI_OPERACAO := oGetLinha(Linha);

        with SQLDestino do
        if ((not oEmpty(BAI_NU)) and (BAI_NU <> 'BAI_NU')) then
        begin
          if BAI_OPERACAO = 'DEL' then
          begin
            Close;
            SQL.Clear;
            SQL.Add('DELETE FROM TAB_CEP_BAI');
            SQL.Add('WHERE  ID = '''+BAI_NU+'''');
            ExecQuery;
          end else
          begin
            Close;
            SQL.Clear;
            SQL.Add('UPDATE OR INSERT');
            SQL.Add('INTO TAB_CEP_BAI (ID,UF,LOC_NU,BAI_NO,BAI_NO_ABREV)');
            SQL.Add('VALUES (');

            SQL.Add(''''+BAI_NU      +''',');
            SQL.Add(''''+UFE_SG      +''',');
            SQL.Add(''''+LOC_NU      +''',');
            SQL.Add(''''+BAI_NO      +''',');
            SQL.Add(''''+BAI_NO_ABREV+''')');

            SQL.Add('MATCHING (ID)');
            ExecQuery;
          end;
        end;
      end;
      oCTransact(TDestino);
      oAviso(handle,'DELTA_LOG_BAIRRO Atualizado com Sucesso !');
    except
      on E: Exception do
      begin
        oCTransact(TDestino,ltRollback);
        oException(Nil,'Erro de leitura na linha ... ' + IntToStr(PBCount)+' !' +#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    PNLRodape.Visible := False;
    PNLRodape.Height  := 0;

    CloseFile(TFArquivo);
    SLTexto.Free;

    Application.ProcessMessages;
  end;
end;

procedure TFrmPrincipal.DELTALOGFAIXABAI1Click(Sender: TObject);
var
  TFArquivo: TextFile;
  SLTexto  : TStringList;
  Linha,
  BAI_NU,
  FCB_CEP_INI,
  FCB_CEP_FIM,
  BAI_OPERACAO: String;
  PBCount: Integer;
begin
  if not FOpenCSV.Execute then
     Abort;

  AssignFile(TFArquivo,FOpenCSV.FileName);
  Reset(TFArquivo);

  SLTexto := TStringList.Create;
  SLTexto.LoadFromFile(FOpenCSV.FileName);

  PBCount := 0;
  PBPrincipal.Max := SLTexto.Count -1;
  PBPrincipal.Position := 0;

  PNLRodape.Height  := 20;
  PNLRodape.Visible := True;
  try
    oOTransact(TDestino);
    try
      While not Eof(TFArquivo) do
      Begin
        Inc(PBCount);
        Readln(TFArquivo,Linha);
        Linha := oUTF8ToStr(Linha);
        if Pos('''',Linha) > 0 then //Crase
           Linha := oStrTran(Linha,'''','`');

        Caption := 'Lendo Linha ... ' + IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max);
        PBPrincipal.Position := PBPrincipal.Position + 1;
        Delimitador := 0;

        Application.ProcessMessages;

        BAI_NU       := oStrTran(oGetLinha(Linha),'?','');
        FCB_CEP_INI  := oGetLinha(Linha);
        FCB_CEP_FIM  := oGetLinha(Linha);
        BAI_OPERACAO := oGetLinha(Linha);

        with SQLDestino do
        if ((not oEmpty(BAI_NU)) and (BAI_NU <> 'BAI_NU')) then
        begin
          if BAI_OPERACAO = 'DEL' then
          begin
            Close;
            SQL.Clear;
            SQL.Add('DELETE FROM TAB_CEP_BAI_FCB');
            SQL.Add('WHERE  ID = '''+BAI_NU+'''');
            ExecQuery;
          end else
          begin
            Close;
            SQL.Clear;
            SQL.Add('UPDATE OR INSERT');
            SQL.Add('INTO TAB_CEP_BAI_FCB (ID,FCB_CEP_INI,FCB_CEP_FIM)');
            SQL.Add('VALUES (');

            SQL.Add(''''+BAI_NU      +''',');
            SQL.Add(''''+FCB_CEP_INI +''',');
            SQL.Add(''''+FCB_CEP_FIM +''')');

            SQL.Add('MATCHING (ID)');
            ExecQuery;
          end;
        end;
      end;
      oCTransact(TDestino);
      oAviso(handle,'DELTA_LOG_FAIXA_BAI Atualizado com Sucesso !');
    except
      on E: Exception do
      begin
        oCTransact(TDestino,ltRollback);
        oException(Nil,'Erro de leitura na linha ... ' + IntToStr(PBCount)+' !' +#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    PNLRodape.Visible := False;
    PNLRodape.Height  := 0;

    CloseFile(TFArquivo);
    SLTexto.Free;

    Application.ProcessMessages;
  end;
end;

procedure TFrmPrincipal.DELTALOGLOCALIDADE1Click(Sender: TObject);
var
  TFArquivo: TextFile;
  SLTexto  : TStringList;
  Linha,
  LOC_NU,
  UFE_SG,
  LOC_NO,
  CEP,
  LOC_IN_SIT,
  LOC_IN_TIPO_LOC,
  LOC_NU_SUB,
  LOC_NO_ABREV,
  MUN_NU,
  BAI_OPERACAO,
  CEP_ANT: String;
  PBCount: Integer;
begin
  if not FOpenCSV.Execute then
     Abort;

  AssignFile(TFArquivo,FOpenCSV.FileName);
  Reset(TFArquivo);

  SLTexto := TStringList.Create;
  SLTexto.LoadFromFile(FOpenCSV.FileName);

  PBCount := 0;
  PBPrincipal.Max := SLTexto.Count -1;
  PBPrincipal.Position := 0;

  PNLRodape.Height  := 20;
  PNLRodape.Visible := True;
  try
    oOTransact(TDestino);
    try
      While not Eof(TFArquivo) do
      Begin
        Inc(PBCount);
        Readln(TFArquivo,Linha);
        Linha := oUTF8ToStr(Linha);
        if Pos('''',Linha) > 0 then //Crase
           Linha := oStrTran(Linha,'''','`');

        Caption := 'Lendo Linha ... ' + IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max);
        PBPrincipal.Position := PBPrincipal.Position + 1;
        Delimitador := 0;

        Application.ProcessMessages;
        
        LOC_NU          := oStrTran(oGetLinha(Linha),'?','');
        UFE_SG          := oGetLinha(Linha);
        LOC_NO          := oGetLinha(Linha);
        CEP             := oGetLinha(Linha);
        LOC_IN_SIT      := oGetLinha(Linha);
        LOC_IN_TIPO_LOC := oGetLinha(Linha);
        LOC_NU_SUB      := oGetLinha(Linha);
        LOC_NU_SUB      := IFThen(not oEmpty(LOC_NU_SUB),LOC_NU_SUB,'0');
        LOC_NO_ABREV    := oGetLinha(Linha);
        MUN_NU          := oGetLinha(Linha);
        BAI_OPERACAO    := oGetLinha(Linha);
        CEP_ANT         := oGetLinha(Linha);

        with SQLDestino do
        if ((not oEmpty(LOC_NU)) and (LOC_NU <> 'LOC_NU')) then
        begin
          if BAI_OPERACAO = 'DEL' then
          begin
            Close;
            SQL.Clear;
            SQL.Add('DELETE FROM TAB_CEP_LOC');
            SQL.Add('WHERE  ID = '''+LOC_NU+'''');
            ExecQuery;
          end else
          begin
            Close;
            SQL.Clear;
            SQL.Add('UPDATE OR INSERT');
            SQL.Add('INTO TAB_CEP_LOC (ID,UF,LOC_NO,CEP,LOC_IN_SIT,LOC_IN_TIPO_LOC,LOC_NU_SUB,LOC_NO_ABREV,CMUN,CEP_OLD)');
            SQL.Add('VALUES (');

            SQL.Add(''''+LOC_NU         +''',');
            SQL.Add(''''+UFE_SG         +''',');
            SQL.Add(''''+LOC_NO         +''',');
            SQL.Add(''''+CEP            +''',');
            SQL.Add(''''+LOC_IN_SIT     +''',');
            SQL.Add(''''+LOC_IN_TIPO_LOC+''',');
            SQL.Add(''''+LOC_NU_SUB     +''',');
            SQL.Add(''''+LOC_NO_ABREV   +''',');
            SQL.Add(''''+MUN_NU         +''',');
            SQL.Add(''''+CEP_ANT        +''')');

            SQL.Add('MATCHING (ID)');
            ExecQuery;
          end;
        end;
      end;
      oCTransact(TDestino);
      oAviso(handle,'DELTA_LOG_LOCALIDADE Atualizado com Sucesso !');
    except
      on E: Exception do
      begin
        oCTransact(TDestino,ltRollback);
        oException(Nil,'Erro de leitura na linha ... ' + IntToStr(PBCount)+' !' +#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    PNLRodape.Visible := False;
    PNLRodape.Height  := 0;

    CloseFile(TFArquivo);
    SLTexto.Free;

    Application.ProcessMessages;
  end;
end;

procedure TFrmPrincipal.DELTALOGLOGRADOURO1Click(Sender: TObject);
var
  TFArquivo: TextFile;
  SLTexto  : TStringList;
  Linha,
  LOG_NU,
  UFE_SG,
  LOC_NU,
  BAI_NU_INI,
  BAI_NU_FIM,
  LOG_NO,
  LOG_COMPLEMENTO,
  CEP,
  TLO_TX,
  LOG_STA_TLO,
  LOG_NO_ABREV,
  LOG_OPERACAO,
  CEP_ANT: String;
  PBCount: Integer;
begin
  if not FOpenCSV.Execute then
     Abort;

  AssignFile(TFArquivo,FOpenCSV.FileName);
  Reset(TFArquivo);

  SLTexto := TStringList.Create;
  SLTexto.LoadFromFile(FOpenCSV.FileName);

  PBCount := 0;
  PBPrincipal.Max := SLTexto.Count -1;
  PBPrincipal.Position := 0;

  PNLRodape.Height  := 20;
  PNLRodape.Visible := True;
  try
    oOTransact(TDestino);
    try
      While not Eof(TFArquivo) do
      Begin
        Inc(PBCount);
        Readln(TFArquivo,Linha);
        Linha := oUTF8ToStr(Linha);
        if Pos('''',Linha) > 0 then //Crase
           Linha := oStrTran(Linha,'''','`');

        Caption := 'Lendo Linha ... ' + IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max);
        PBPrincipal.Position := PBPrincipal.Position + 1;
        Delimitador := 0;

        Application.ProcessMessages;

        LOG_NU          := oStrTran(oGetLinha(Linha),'?','');
        UFE_SG          := oGetLinha(Linha);
        LOC_NU          := oGetLinha(Linha);
        BAI_NU_INI      := oGetLinha(Linha);
        BAI_NU_INI      := IFThen(not oEmpty(BAI_NU_INI),BAI_NU_INI,'0');
        BAI_NU_FIM      := oGetLinha(Linha);
        BAI_NU_FIM      := IFThen(not oEmpty(BAI_NU_FIM),BAI_NU_FIM,'0');
        LOG_NO          := oGetLinha(Linha);
        LOG_COMPLEMENTO := oGetLinha(Linha);
        CEP             := oGetLinha(Linha);
        TLO_TX          := oGetLinha(Linha);
        LOG_STA_TLO     := oGetLinha(Linha);
        LOG_NO_ABREV    := oGetLinha(Linha);
        LOG_OPERACAO    := oGetLinha(Linha);
        CEP_ANT         := oGetLinha(Linha);

        with SQLDestino do
        if ((not oEmpty(LOG_NU)) and (LOG_NU <> 'LOG_NU')) then
        begin
          if LOG_OPERACAO = 'DEL' then
          begin
            Close;
            SQL.Clear;
            SQL.Add('DELETE FROM TAB_CEP_LOG');
            SQL.Add('WHERE  ID = '''+LOG_NU+'''');
            ExecQuery;
          end else
          begin
            Close;
            SQL.Clear;
            SQL.Add('UPDATE OR INSERT');
            SQL.Add('INTO TAB_CEP_LOG (ID,UF,LOC_NU,BAI_NU_INI,BAI_NU_FIM,LOG_NO,LOG_COMPLEMENTO,CEP,TLO_TX,LOG_STA_TLO,LOG_NO_ABREV,CEP_OLD)');
            SQL.Add('VALUES (');

            SQL.Add(''''+LOG_NU         +''',');
            SQL.Add(''''+UFE_SG         +''',');
            SQL.Add(''''+LOC_NU         +''',');
            SQL.Add(''''+BAI_NU_INI     +''',');
            SQL.Add(''''+BAI_NU_FIM     +''',');
            SQL.Add(''''+LOG_NO         +''',');
            SQL.Add(''''+LOG_COMPLEMENTO+''',');
            SQL.Add(''''+CEP            +''',');
            SQL.Add(''''+TLO_TX         +''',');
            SQL.Add(''''+LOG_STA_TLO    +''',');
            SQL.Add(''''+LOG_NO_ABREV   +''',');
            SQL.Add(''''+CEP_ANT        +''')');

            SQL.Add('MATCHING (ID)');
            ExecQuery;
          end;
        end;
      end;
      oCTransact(TDestino);
      oAviso(handle,'DELTA_LOG_LOGRADOURO Atualizado com Sucesso !');
    except
      on E: Exception do
      begin
        oCTransact(TDestino,ltRollback);
        oException(Nil,'Erro de leitura na linha ... ' + IntToStr(PBCount)+' !' +#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    PNLRodape.Visible := False;
    PNLRodape.Height  := 0;

    CloseFile(TFArquivo);
    SLTexto.Free;

    Application.ProcessMessages;
  end;
end;

procedure TFrmPrincipal.CorrigirValorIPInoRomaneio1Click(Sender: TObject);
begin
  if oYesNo(handle,'Confirma Correção ?') = mrNo then
     Abort;

  try
    oOTransact(TDestino);
    with SQLDestino do
    begin
      SQL.Clear;
      SQL.Add('SELECT CDNF,IDPED,VPED,IDROM,VROM');
      SQL.Add('FROM (');
      SQL.Add('SELECT   CDNF,MAX(IDPED) AS IDPED,MAX(IDROM) AS IDROM,SUM(VPED) AS VPED,SUM(VROM) AS VROM');
      SQL.Add('FROM (');
      SQL.Add('SELECT   PK.ROM_CDNF AS CDNF,PK.ID AS IDPED,0 AS IDROM,');
      SQL.Add('         SUM(PK.ROM_VNF) AS VPED,');
      SQL.Add('         0 AS VROM');
      SQL.Add('FROM     PED_VEN_CAB_004 AS PK');
      SQL.Add('JOIN     TAB_PED         AS TPED ON (TPED.VEN_TIPO = PK.ROM_STPD)');
      SQL.Add('WHERE    PK.ROM_DNFS BETWEEN :Data1 AND :Data2');
      SQL.Add('AND      PK.ROM_STFI <> ''CANCELADO''');
      SQL.Add('AND      PK.ROM_CDNF   > 0');
      SQL.Add('AND      TPED.VEN_FATU = 1');
      SQL.Add('GROUP BY 1,2,3');
      SQL.Add('UNION');
      SQL.Add('SELECT   PK.ROM_CDNF AS CDNF,0 AS IDPED,PK.ID AS IDROM,');
      SQL.Add('         0 AS VPED,');
      SQL.Add('         SUM((FK.ROM_PREC/PK.ROM_CONC)*FK.ROM_QTDE) AS VROM');
      SQL.Add('FROM     rom_cab_004 AS PK');
      SQL.Add('JOIN     TAB_PED     AS TPED ON (TPED.VEN_TIPO = PK.ROM_STPD)');
      SQL.Add('JOIN     rom_ite_004 AS FK   ON (FK.ROM_CCAB = PK.ID)');
      SQL.Add('JOIN     CAD_PRO     AS CP   ON (CP.ID = FK.ROM_CPRO)');
      SQL.Add('JOIN     TAB_PAR_SIS AS PS   ON (PS.ID = CP.IDEP)');
      SQL.Add('WHERE    PK.ROM_DNFS BETWEEN :Data1 AND :Data2');
      SQL.Add('AND      PK.ROM_STFI <> ''CANCELADO''');
      SQL.Add('AND      PK.ROM_CDNF   > 0');
      SQL.Add('AND      TPED.VEN_FATU = 1');
      SQL.Add('GROUP BY 1,2,3)');
      SQL.Add('GROUP BY 1)');
      SQL.Add('WHERE (CAST(VPED AS NUMERIC(15,2)) - CAST(VROM AS NUMERIC(15,2))) > 1000');
      SQL.Add('ORDER BY 1');
      ExecQuery;
    end;

    PBPrincipal.Max := oLast(SQLDestino);
    PBPrincipal.Position := 0;

    if PBPrincipal.Max > 0 then
    begin
      PNLRodape.Height  := 20;
      PNLRodape.Visible := True;


    end;
  finally
    oCTransact(TDestino);
  end;
end;

procedure TFrmPrincipal.IncluirProdutos1Click(Sender: TObject);
var
  TFArquivo: TextFile;
  SLTexto  : TStringList;
  Linha,
  SKU: String;
  PBCount: Integer;
begin
  if not FOpenCSV.Execute then
     Abort;

  AssignFile(TFArquivo,FOpenCSV.FileName);
  Reset(TFArquivo);

  SLTexto := TStringList.Create;
  SLTexto.LoadFromFile(FOpenCSV.FileName);

  PBCount := 0;
  PBPrincipal.Max := SLTexto.Count -1;
  PBPrincipal.Position := 0;

  PNLRodape.Height  := 20;
  PNLRodape.Visible := True;
  try
    oOTransact(TDestino);
    try
      While not Eof(TFArquivo) do
      Begin
        Inc(PBCount);
        Readln(TFArquivo,Linha);
        Linha := oUTF8ToStr(Linha);
        if Pos('''',Linha) > 0 then //Crase
           Linha := oStrTran(Linha,'''','`');

        Caption := 'Lendo Linha ... ' + IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max);
        PBPrincipal.Position := PBPrincipal.Position + 1;
        Delimitador := 0;

        Application.ProcessMessages;

        SKU:= oStrTran(oGetLinha(Linha),'?','');

        if (not oEmpty(SKU)) and (SKU <> 'SKU') then
            with SQLDestino do
            begin
              Close;
              SQL.Clear;
              SQL.Add('UPDATE CAD_PRO');
              SQL.Add('SET    IDMKP2   = 2');
              SQL.Add('WHERE  PRO_CPRO = '''+SKU+'''');
              ExecQuery;
            end;
      end;
      oCTransact(TDestino);
      oAviso(handle,'Mercado Livre Adicionado com Sucesso !');
    except
      on E: Exception do
      begin
        oCTransact(TDestino,ltRollback);
        oException(Nil,'Erro de leitura na linha ... ' + IntToStr(PBCount)+' !' +#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    PNLRodape.Visible := False;
    PNLRodape.Height  := 0;

    CloseFile(TFArquivo);
    SLTexto.Free;

    Application.ProcessMessages;
  end;
end;

procedure TFrmPrincipal.BoletosnoRegistrados1Click(Sender: TObject);
var
  TFArquivo: TextFile;
  SLTexto  : TStringList;
  Linha,
  IDIntegracao,
  Cedente,
  Criado,
  Situacao,
  Sacado,
  Razao,
  Nome,
  Valor,
  Pago,
  PagoData,
  PagoTaxa,
  Titulo,
  TituloData: String;
  PBCount: Integer;
begin
  if not FOpenCSV.Execute then
     Abort;

  AssignFile(TFArquivo,FOpenCSV.FileName);
  Reset(TFArquivo);

  SLTexto := TStringList.Create;
  SLTexto.LoadFromFile(FOpenCSV.FileName);

  PBCount := 0;
  PBPrincipal.Max := SLTexto.Count -1;
  PBPrincipal.Position := 0;

  PNLRodape.Height  := 20;
  PNLRodape.Visible := True;
  try
    oOTransact(TDestino);
    try
      While not Eof(TFArquivo) do
      Begin
        Inc(PBCount);
        Readln(TFArquivo,Linha);
        Linha := oUTF8ToStr(Linha);
        if Pos('''',Linha) > 0 then //Crase
           Linha := oStrTran(Linha,'''','`');

        Caption := 'Lendo Linha ... ' + IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max);
        PBPrincipal.Position := PBPrincipal.Position + 1;
        Delimitador := 0;

        Application.ProcessMessages;

        IDIntegracao := oStrTran(oGetLinha(Linha),'?','');
        Cedente      := oGetLinha(Linha);
        Criado       := oGetLinha(Linha);
        Situacao     := oGetLinha(Linha);
        Sacado       := oGetLinha(Linha);
        Razao        := oGetLinha(Linha);
        Nome         := oGetLinha(Linha);
        Valor        := oGetLinha(Linha);
        Pago         := oGetLinha(Linha);
        PagoData     := oGetLinha(Linha);
        PagoTaxa     := oGetLinha(Linha);
        Titulo       := oGetLinha(Linha);
        TituloData   := oGetLinha(Linha);

        if (not oEmpty(IDIntegracao)) and (IDIntegracao <> 'IDIntegracao') then
            with SQLDestino do
            begin
              Close;
              SQL.Clear;
              SQL.Add('UPDATE FIN_REC_BAN_FALTA');
              SQL.Add('SET    IDINTEGRACAO = '''+IDIntegracao+'''');
              SQL.Add('WHERE  FIN_TITU     = '''+Titulo      +'''');
              ExecQuery;
            end;
      end;

      oCTransact(TDestino);
      oAviso(handle,'Títulos Importados com Sucesso !');
    except
      on E: Exception do
      begin
        oCTransact(TDestino,ltRollback);
        oException(Nil,'Erro de leitura na linha ... ' + IntToStr(PBCount)+' !' +#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    PNLRodape.Visible := False;
    PNLRodape.Height  := 0;

    CloseFile(TFArquivo);
    SLTexto.Free;

    Application.ProcessMessages;
  end;
end;

procedure TFrmPrincipal.ACTTAB_COBExecute(Sender: TObject);
var
  ID: Variant;
begin
  if oYesNo(handle,'Transferir TAB_COB ?') = mrNo then
     Abort;
  
  try
    oOTransact(TOrigem);
    try
      oOTransact(TDestino);
      _DesativaTriggers('TAB_COB');
      
      with SQLOrigem do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT   VEN_TIPO,VEN_STA');
        SQL.Add('FROM     TAB_COB' );
        SQL.Add('ORDER BY VEN_TIPO');
        ExecQuery;
      end;
      while not SQLOrigem.Eof do
      begin
        SBRodape.Panels[1].Text := 'Transferindo Registros ... '+SQLOrigem.Current.ByName('VEN_TIPO').AsString;
        Application.ProcessMessages;

        { Busca Id da cobrança }
        with SQLFKDestino do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT ID FROM TAB_TPO WHERE DESCRICAO = '''+SQLOrigem.Current.ByName('VEN_TIPO').AsString+'''');
          ExecQuery;

          if Eof then
          begin
            Close;
            ParamCheck := False;

            SQL.Clear;
            SQL.Add('EXECUTE BLOCK');
            SQL.Add('RETURNS (ID smallint)');
            SQL.Add('AS');
            SQL.Add('BEGIN');

            SQL.Add('UPDATE OR INSERT');
            SQL.Add('INTO TAB_TPO (DESCRICAO,PED_TIPO_COB)');
            SQL.Add('VALUES (');
            SQL.Add(''''+SQLOrigem.Current.ByName('VEN_TIPO').AsString+''',');
            SQL.Add('1)');
            SQL.Add('MATCHING (DESCRICAO)');

            SQL.Add('RETURNING ID INTO :ID;');
            SQL.Add('SUSPEND;');
            SQL.Add('END;');
            ExecQuery;
          end;

          ID := IntToStr(Current.Vars[0].AsInteger);

          Close;
          ParamCheck := True;
        end;

        with SQLDestino do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE OR INSERT');
          SQL.Add('INTO TAB_COB (ID,VEN_TIPO,VEN_STA)');
          SQL.Add('VALUES (');
          SQL.Add(''''+ID+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_TIPO').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_STA' ).AsString+''')');
          SQL.Add('MATCHING (VEN_TIPO)');
          ExecQuery;
        end;

        SQLOrigem.Next;
      end;
      _ReAtivaTriggers('TAB_COB');

      oCTransact(TDestino);
      oAviso(handle,'Transferências efetuadas com sucesso !');
    except
      on E: Exception do
      begin
        oCTransact(TOrigem ,ltRollback);
        oCTransact(TDestino,ltRollback);

        oException(Nil,'Falha ao tentar transferir tabela TAB_COB !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;

    SBRodape.Panels[0].Text := EmptyStr;
    SBRodape.Panels[1].Text := EmptyStr;
  finally
    Application.ProcessMessages;
    oCTransact(TOrigem);
  end;
end;

procedure TFrmPrincipal.ACTTAB_CORExecute(Sender: TObject);
begin
  if oYesNo(handle,'Transferir TAB_COR ?') = mrNo then
     Abort;
  
  try
    oOTransact(TOrigem);
    try
      oOTransact(TDestino);
      _DesativaTriggers('TAB_COR');
      
      with SQLOrigem do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT   ID,IDEP,IDCA,DTCA,CDST,REST,CODIGO,REFERENCIA,DESCRICAO,SISTEMA,ESCALA,PRECO,PADRAO');
        SQL.Add('FROM     TAB_COR');
        SQL.Add('ORDER BY ID');
        ExecQuery;
      end;
      while not SQLOrigem.Eof do
      begin
        SBRodape.Panels[1].Text := 'Transferindo Registros ... '+SQLOrigem.Current.ByName('DESCRICAO').AsString;
        Application.ProcessMessages;

        with SQLDestino do
        begin
          Close;
          SQL.Clear;
          SQL.Add('INSERT');
          SQL.Add('INTO TAB_COR (ID,IDEP,IDCA,CDST,REST,CODIGO,REFERENCIA,DESCRICAO,SISTEMA,ESCALA,PRECO,PADRAO)');
          SQL.Add('VALUES (');
          SQL.Add(''''+SQLOrigem.Current.ByName('ID'        ).AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('IDEP'      ).AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('IDCA'      ).AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('CDST'      ).AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('REST'      ).AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('CODIGO'    ).AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('REFERENCIA').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('DESCRICAO' ).AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('SISTEMA'   ).AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('ESCALA'    ).AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PRECO'     ).AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PADRAO'    ).AsString+''')');
          ExecQuery;
        end;

        SQLOrigem.Next;
      end;
      _ReAtivaTriggers('TAB_COR');
      _AtualizaGenerators('TAB_COR');

      oCTransact(TDestino);
      oAviso(handle,'Transferências efetuadas com sucesso !');
    except
      on E: Exception do
      begin
        oCTransact(TOrigem ,ltRollback);
        oCTransact(TDestino,ltRollback);

        oException(Nil,'Falha ao tentar transferir tabela TAB_COR !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;

    SBRodape.Panels[0].Text := EmptyStr;
    SBRodape.Panels[1].Text := EmptyStr;
  finally
    Application.ProcessMessages;
    oCTransact(TOrigem);
  end;
end;

procedure TFrmPrincipal.ACTTAB_PAGExecute(Sender: TObject);
begin
  if oYesNo(handle,'Transferir TAB_PAG ?') = mrNo then
     Abort;

  try
    oOTransact(TOrigem);
    try
      oOTransact(TDestino);
      _DesativaTriggers('TAB_PAG');
      
      with SQLOrigem do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT   ID,PAG_DPAG,');
        SQL.Add('         PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,PAG_D010,');
        SQL.Add('         PAG_D011,PAG_D012,PAG_D013,PAG_D014,PAG_D015,PAG_D016,PAG_D017,PAG_D018,PAG_D019,PAG_D020,');
        SQL.Add('         PAG_PARC,PAG_PRAZ,PAG_DUPL,PAG_STA');
        SQL.Add('FROM     TAB_PAG');
        SQL.Add('ORDER BY ID');
        ExecQuery;
      end;
      while not SQLOrigem.Eof do
      begin
        SBRodape.Panels[1].Text := 'Transferindo Registros ... '+SQLOrigem.Current.ByName('PAG_DPAG').AsString;
        Application.ProcessMessages;

        with SQLDestino do
        begin
          Close;
          SQL.Clear;
          SQL.Add('INSERT');
          SQL.Add('INTO TAB_PAG (ID,PAG_DPAG,DESCRICAO,');
          SQL.Add('              PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,PAG_D010,');
          SQL.Add('              PAG_D011,PAG_D012,PAG_D013,PAG_D014,PAG_D015,PAG_D016,PAG_D017,PAG_D018,PAG_D019,PAG_D020,');
          SQL.Add('              PAG_PARC,PAG_PRAZ,PAG_DUPL,PAG_STA)');
          SQL.Add('VALUES (');
          SQL.Add(''''+SQLOrigem.Current.ByName('ID'      ).AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_DPAG').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_DPAG').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D001').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D002').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D003').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D004').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D005').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D006').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D007').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D008').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D009').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D010').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D011').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D012').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D013').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D014').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D015').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D016').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D017').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D018').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D019').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_D020').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_PARC').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_PRAZ').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_DUPL').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('PAG_STA' ).AsString+''')');
          ExecQuery;
        end;

        SQLOrigem.Next;
      end;
      _ReAtivaTriggers('TAB_PAG');
      _AtualizaGenerators('TAB_PAG');

      oCTransact(TDestino);
      oAviso(handle,'Transferências efetuadas com sucesso !');
    except
      on E: Exception do
      begin
        oCTransact(TOrigem ,ltRollback);
        oCTransact(TDestino,ltRollback);

        oException(Nil,'Falha ao tentar transferir tabela TAB_PAG !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;

    SBRodape.Panels[0].Text := EmptyStr;
    SBRodape.Panels[1].Text := EmptyStr;
  finally
    Application.ProcessMessages;
    oCTransact(TOrigem);
  end;
end;

procedure TFrmPrincipal.ACTTAB_PEDExecute(Sender: TObject);
var
  ID: Variant;
begin
  if oYesNo(handle,'Transferir TAB_PED ?') = mrNo then
     Abort;

  try
    oOTransact(TOrigem);
    try
      oOTransact(TDestino);
      _DesativaTriggers('TAB_PED');

      with SQLOrigem do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID,VEN_TIPO,0 AS VEN_CTNR,''S'' AS VEN_TPSQ,VEN_STVE,VEN_FATU,VEN_DPAG,VEN_DESC,VEN_PDSC,VEN_PREC,''VEN_TPRC'' AS VEN_TPRC,0 AS VEN_TIPI,VEN_COMV,');
        SQL.Add('          VEN_COMR,VEN_QPRC,VEN_BEST,VEN_VEST,VEN_TEST,VEN_QTSP,VEN_QTPC,VEN_QTDE,VEN_PECA,VEN_BAIX,VEN_BAIP,VEN_NFEP,');
        SQL.Add('          VEN_AGRU,VEN_AGRP,VEN_TINT,VEN_PTNG,VEN_PACR,VEN_CNA1,VEN_CNA2,VEN_STA ,VEN_NFRO,0 AS VEN_MDSC,''PENDENTE'' AS VEN_STFI');
        SQL.Add('FROM      TAB_PED');
        SQL.Add('ORDER BY  ID');
        ExecQuery;
      end;
      while not SQLOrigem.Eof do
      begin
        SBRodape.Panels[1].Text := 'Transferindo Registros ... '+SQLOrigem.Current.ByName('VEN_TIPO').AsString;
        Application.ProcessMessages;

        { Busca Id da cobrança }
        with SQLFKDestino do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT ID FROM TAB_TPO WHERE DESCRICAO = '''+SQLOrigem.Current.ByName('VEN_TIPO').AsString+'''');
          ExecQuery;

          if Eof then
          begin
            Close;
            ParamCheck := False;

            SQL.Clear;
            SQL.Add('EXECUTE BLOCK');
            SQL.Add('RETURNS (ID smallint)');
            SQL.Add('AS');
            SQL.Add('BEGIN');

            SQL.Add('UPDATE OR INSERT');
            SQL.Add('INTO TAB_TPO (DESCRICAO,PED_TIPO_VEN,PED_FAT,PED_BLQ,PED_PRC,PED_PRC_PDSC,PED_EST,PED_EST_QTRL,PED_EST_CDTP,PED_CDCO,PED_CDPG,PED_CDST,PED_FIS_CFOPDUF,PED_FIS_CFOPFUF)');
            SQL.Add('VALUES (');
            SQL.Add(''''+SQLOrigem.Current.ByName('VEN_TIPO').AsString+''',');
            SQL.Add('1,');
            SQL.Add('1,');
            SQL.Add('0,');
            SQL.Add('''VPRC_PAD'',');
            SQL.Add('10,');
            SQL.Add('1,');
            SQL.Add('''QT'',');
            SQL.Add('78,');
            SQL.Add('23,');
            SQL.Add('1,');
            SQL.Add('116,');
            SQL.Add('5102,');
            SQL.Add('6102)');
            SQL.Add('MATCHING (DESCRICAO)');

            SQL.Add('RETURNING ID INTO :ID;');
            SQL.Add('SUSPEND;');
            SQL.Add('END;');
            ExecQuery;
          end;

          ID := IntToStr(Current.Vars[0].AsInteger);

          Close;
          ParamCheck := True;
        end;

        with SQLDestino do
        begin
          Close;
          SQL.Clear;
          SQL.Add('INSERT');
          SQL.Add('INTO TAB_PED (ID,VEN_TIPO,VEN_CTNR,VEN_TPSQ,VEN_STVE,VEN_FATU,VEN_DPAG,VEN_DESC,VEN_PDSC,VEN_PREC,VEN_TPRC,VEN_TIPI,VEN_COMV,');
          SQL.Add('                 VEN_COMR,VEN_QPRC,VEN_BEST,VEN_VEST,VEN_TEST,VEN_QTSP,VEN_QTPC,VEN_QTDE,VEN_PECA,VEN_BAIX,VEN_BAIP,VEN_NFEP,');
          SQL.Add('                 VEN_AGRU,VEN_AGRP,VEN_TINT,VEN_PTNG,VEN_PACR,VEN_CNA1,VEN_CNA2,VEN_STA ,VEN_NFRO,VEN_MDSC,VEN_STFI)');
          SQL.Add('VALUES (');
          SQL.Add(''''+SQLOrigem.Current.ByName('ID'      ).AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_TIPO').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_CTNR').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_TPSQ').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_STVE').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_FATU').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_DPAG').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_DESC').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_PDSC').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_PREC').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_TPRC').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_TIPI').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_COMV').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_COMR').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_QPRC').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_BEST').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_VEST').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_TEST').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_QTSP').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_QTPC').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_QTDE').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_PECA').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_BAIX').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_BAIP').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_NFEP').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_AGRU').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_AGRP').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_TINT').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_PTNG').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_PACR').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_CNA1').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_CNA2').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_STA' ).AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_NFRO').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_MDSC').AsString+''',');
          SQL.Add(''''+SQLOrigem.Current.ByName('VEN_STFI').AsString+''')');
          ExecQuery;
        end;

        SQLOrigem.Next;
      end;
      _ReAtivaTriggers('TAB_PED');
      _AtualizaGenerators('TAB_PED');

      oCTransact(TDestino);
      oAviso(handle,'Transferências efetuadas com sucesso !');
    except
      on E: Exception do
      begin
        oCTransact(TOrigem ,ltRollback);
        oCTransact(TDestino,ltRollback);

        oException(Nil,'Falha ao tentar transferir tabela TAB_PED !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;

    SBRodape.Panels[0].Text := EmptyStr;
    SBRodape.Panels[1].Text := EmptyStr;
  finally
    Application.ProcessMessages;
    oCTransact(TOrigem);
  end;
end;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
      { Re-Ativa Triggers }
      SBRodape.Panels[0].Text := 'Re-Ativando Triggers da Tabela... '+Trim(QDConsulta.Fields[0].AsString);
      Application.ProcessMessages;
      with SQLDConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select rdb$trigger_name');
        SQL.Add('from   rdb$triggers');
        SQL.Add('where  rdb$relation_name = '''+Trim(QDConsulta.Fields[0].AsString)+'''');
        ExecQuery;
      end;
      while not SQLDConsulta.Eof do
      begin
        if Pos('CHECK',Trim(SQLDConsulta.Current.Vars[0].AsString)) = 0 then
           with SQLDEdicao do
           begin
             Close;
             SQL.Clear;
             SQL.Add('ALTER TRIGGER '+Trim(SQLDConsulta.Current.Vars[0].AsString)+' ACTIVE');
             ExecQuery;
           end;

        SQLDConsulta.Next;
      end;

end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
begin
    { Generators Avulsos }
    with SQLDEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR IDGCDLE TO 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR IDG_BOLETO_BRADESCO TO 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR IDG_BOLETO_ITAU TO 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR IDG_BOLETO_BANCOBRASIL TO 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR IDG_BOLETO_VOITER TO 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR IDG_CDET TO 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR IDG_CDSP TO 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR IDG_IDEV TO 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR IDG_IDEV TO 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR IDG_RECNO TO 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR IDG_CAD_PRO_GRP TO 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR IDG_TAB_COL TO 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR ID_NO_BAI_LOT TO 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR ID_NO_BAI_REC TO 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR ID_NO_NFE_CAB TO 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR ID_NO_NFE_ITE TO 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR ID_NO_PRO_CDET TO 0');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR IDG_ROWNUMBER TO 0');
      ExecQuery;


      Close;
      SQL.Clear;
      SQL.Add('SET GENERATOR IDG_ROWNUMBER TO 0');
      ExecQuery;
    end;

end;

end.






































