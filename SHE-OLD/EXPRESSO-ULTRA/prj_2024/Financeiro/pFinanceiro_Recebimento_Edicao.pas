unit pFinanceiro_Recebimento_Edicao;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pEdicao, cxGraphics, ImgList, IBEvents, IBStoredProc, DB,
  IBCustomDataSet, IBQuery, IBSQL, IBDatabase, rxSpeedbar, StdCtrls, math, StrUtils,
  ExtCtrls, cxControls, dxStatusBar, dxExEdtr, dxEdLib, dxCntner, dxEditor;

type
  TFrmFinanceiro_Recebimento_Edicao =  class(TFrmEdicao)
    GBDocumento: TGroupBox;
    LAFatura: TLabel;
    LATitulo: TLabel;
    LAVTitulo: TLabel;
    LAStatus: TLabel;
    CEVTitulo: TdxCurrencyEdit;
    DEVencto: TdxDateEdit;
    DEFatura: TdxDateEdit;
    GBInfAdCad: TGroupBox;
    EMInfAdCad: TdxMemo;
    CEVPago: TdxCurrencyEdit;
    DEPago: TdxDateEdit;
    LAVPago: TLabel;
    CEVPendente: TdxCurrencyEdit;
    LAVPendente: TLabel;
    LACliente: TLabel;
    IEVendedor: TdxImageEdit;
    LAVendedor: TLabel;
    LARepresentante: TLabel;
    IERepresentante: TdxImageEdit;
    CECliente: TdxCurrencyEdit;
    CEVendedor: TdxCurrencyEdit;
    CERepresentante: TdxCurrencyEdit;
    LAVJuros: TLabel;
    CEVJuros: TdxCurrencyEdit;
    LAVMulta: TLabel;
    CEVMulta: TdxCurrencyEdit;
    LAVDesconto: TLabel;
    CEVDesconto: TdxCurrencyEdit;
    LADTFatura: TLabel;
    LADTVencimento: TLabel;
    LADTPagamento: TLabel;
    IEStatus: TdxImageEdit;
    PNLContainer: TPanel;
    GBBanco: TGroupBox;
    LABanco: TLabel;
    IEBanco: TdxImageEdit;
    GBContainer: TGroupBox;
    LAContainer: TLabel;
    PEContainer: TdxPickEdit;
    EDCliente: TdxMaskEdit;
    EDFatura: TdxMaskEdit;
    EDTitulo: TdxMaskEdit;
    IETipo: TdxImageEdit;
    LATipo: TLabel;
    IEBoleto: TdxImageEdit;
    LABoleto: TLabel;
    LASTIntegracao: TLabel;
    DEBaixa: TdxDateEdit;
    LADTBaixa: TLabel;
    LADTCaixa: TLabel;
    DECaixa: TdxDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure SIMValidaClick(Sender: TObject);
    procedure CEClienteValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure IEVendedorChange(Sender: TObject);
    procedure IERepresentanteChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure IEVendedorValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure SIMSaidaClick(Sender: TObject);
    procedure CEVendedorValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CERepresentanteValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure CEVTituloValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEVPagoValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DEFaturaDateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFinanceiro_Recebimento_Edicao: TFrmFinanceiro_Recebimento_Edicao;
  CDCX,
  CDBX,
  CONC: Integer;
  STDO: String;

implementation

{$R *.dfm}

procedure TFrmFinanceiro_Recebimento_Edicao.FormCreate(Sender: TObject);
begin
  RECPrincipal.Funcao := 'Financeiro';
  RECPrincipal.Rotina := 'Contas a Receber';
  RECPrincipal.Nome   := 'Recebimento de Contas';
  inherited;

  with SQLConsulta do
  begin
    try
      PEContainer.Items.BeginUpdate;
      Close;
      SQL.Clear;
      SQL.Add('SELECT CON_CTNR FROM CAD_CON GROUP BY 1 ORDER BY 1');
      ExecQuery;
      while not eof do
      begin
        PEContainer.Items.Add(Current.Vars[0].AsString);
        next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT ID,USU_DUSU FROM CAD_USU ORDER BY 1');
      ExecQuery;
      while not eof do
      begin
        IEVendedor.Values.Add(Current.Vars[0].AsString);
        IEVendedor.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT ID,REP_FANT FROM CAD_REP ORDER BY 1');
      ExecQuery;
      while not eof do
      begin
        IERepresentante.Values.Add(Current.Vars[0].AsString);
        IERepresentante.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_STA AS PK WHERE PK.FIN_REC = 1 AND PK.REST = ''A'' ORDER BY PK.DESCRICAO');
      ExecQuery;
      while not eof do
      begin
        IEStatus.Values.Add(Current.Vars[0].AsString);
        IEStatus.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT FIN_TIPO FROM '+RECPrincipal.Tabela+' WHERE NOT FEMPTY(FIN_TIPO) GROUP BY 1 ORDER BY 1');
      ExecQuery;
      while not eof do
      begin
        IETipo.Values.Add(Current.Vars[0].AsString);
        IETipo.Descriptions.Add(Current.Vars[0].AsString);
        next;
      end;
    finally
      PEContainer.Items.EndUpdate;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT FR.FIN_CCLI,CL.CLI_FANT,FR.FIN_CVEN,FR.FIN_CREP,');
    SQL.Add('       FR.FIN_DOCT,FR.FIN_CDBX,FR.FIN_CDCX,FR.FIN_STDO,FR.FIN_CONC,');
    SQL.Add('       FR.FIN_TITU,FR.FIN_DCAD,FR.FIN_DVEN,FR.FIN_VALO,');
    SQL.Add('       FR.FIN_VJUR,FR.FIN_VMUL,FR.FIN_VDES,');
    SQL.Add('       FR.FIN_DPAG,FR.FIN_VPAG,FR.FIN_VPEN,');
    SQL.Add('       FR.FIN_TIPO,FR.FIN_STFI,FR.FIN_DBAI,');
    SQL.Add('       FR.FIN_CDBC,');
    SQL.Add('       FR.FIN_CTNR,');
    SQL.Add('       FR.FIN_OBSE,');
    SQL.Add('       FR.STINTEGRACAO');
    SQL.Add('FROM '+RECPrincipal.Tabela+' AS FR');
    SQL.Add('JOIN   CAD_CLI AS CL ON (CL.ID = FR.FIN_CCLI)');
    SQL.Add('WHERE  FR.ID = '''+RECPrincipal.IDPK+'''');
    Prepare;
    ExecQuery;

    if Current.Vars[0].AsInteger > 0 then
    begin
      CECliente.Value        := Current.ByName('FIN_CCLI').AsInteger;
      EDCliente.Text         := Current.ByName('CLI_FANT').AsString;
      IEVendedor.Text        := Current.ByName('FIN_CVEN').AsString;
      IERepresentante.Text   := Current.ByName('FIN_CREP').AsString;
      EDFatura.Text          := Current.ByName('FIN_DOCT').AsString;
      CDBX                   := Current.ByName('FIN_CDBX').AsInteger;
      CDCX                   := Current.ByName('FIN_CDCX').AsInteger;
      CONC                   := Current.ByName('FIN_CONC').AsInteger;
      STDO                   := Current.ByName('FIN_STDO').AsString;
      DEFatura.Date          := Current.ByName('FIN_DCAD').AsDateTime;
      DEBaixa.Date           := Current.ByName('FIN_DBAI').AsDateTime;
      EDTitulo.Text          := Current.ByName('FIN_TITU').AsString;
      DEVencto.Date          := Current.ByName('FIN_DVEN').AsDateTime;
      CEVTitulo.Value        := Current.ByName('FIN_VALO').AsCurrency;
      CEVJuros.Value         := Current.ByName('FIN_VJUR').AsCurrency;
      CEVMulta.Value         := Current.ByName('FIN_VMUL').AsCurrency;
      CEVDesconto.Value      := Current.ByName('FIN_VDES').AsCurrency;
      DEPago.Date            := Current.ByName('FIN_DPAG').AsDateTime;
      CEVPago.Value          := Current.ByName('FIN_VPAG').AsCurrency;
      CEVPendente.Value      := Current.ByName('FIN_VPEN').AsCurrency;
      IETipo.Text            := Current.ByName('FIN_TIPO').AsString;
      IEStatus.Text          := Current.ByName('FIN_STFI').AsString;
      IEBanco.Text           := Current.ByName('FIN_CDBC').AsString;
      PEContainer.Text       := Current.ByName('FIN_CTNR').AsString;
      EMInfAdCad.Text        := Current.ByName('FIN_OBSE').AsString;
      LASTIntegracao.Caption := Current.ByName('STINTEGRACAO').AsString;
    end else
    begin
      DEFatura.Date          := RECParametros.DTServer;
      DEBaixa.Date           := RECParametros.DTServer;
      DEVencto.Date          := RECParametros.DTServer;
      CDCX                   := RECParametros.CAIXA;
      CDBX                   := 0;
      CONC                   := 1;
      STDO                   := IFThen(Pos('BAN',UpperCase(RECPrincipal.Tabela)) > 0,'B 1','C 1');
      CEVTitulo.Value        := 0;
      CEVJuros.Value         := 0;
      CEVMulta.Value         := 0;
      CEVDesconto.Value      := 0;
      CEVPago.Value          := 0;
      CEVPendente.Value      := 0;
      IETipo.Text            := IFThen(Pos('BAN',UpperCase(RECPrincipal.Tabela)) > 0,'DUPLICATA','CARTEIRA');
      IEStatus.Text          := 'PENDENTE';
      LASTIntegracao.Caption := '';
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT CAI_DABR FROM CAI_LAF WHERE ID = '''+IntToStr(CDCX)+'''');
    ExecQuery;
    DECaixa.Date := Current.Vars[0].AsDate;
  end;
end;

procedure TFrmFinanceiro_Recebimento_Edicao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if SIMValida.Tag = 1 then
  case messageBox(handle,'Existem Alterações Pendentes !'+#13+
                         'Deseja Salvar ?',
                          PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
       mrCancel: Abort;
       mrNo    : SIMValida.Tag := 0;
       mrYes   : try SIMValida.Click;
                 finally if SIMValida.Tag = 1 then Abort;
                 end;
  end;
end;

procedure TFrmFinanceiro_Recebimento_Edicao.IEVendedorValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  SIMValida.Tag := 1;
end;

procedure TFrmFinanceiro_Recebimento_Edicao.SIMSaidaClick(Sender: TObject);
begin
  ActiveControl := Nil;
  inherited;
end;

procedure TFrmFinanceiro_Recebimento_Edicao.SIMValidaClick(Sender: TObject);
begin
  inherited;
  if oYesNo(handle,'Confirma Edição ?') = mrNo then
     Abort;

  if (DECaixa.Date <= 0) or (CDCX = 0) then
     oException(DECaixa,'Data de registro do caixa não informada ou inválida !');

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAI_LAF WHERE CAI_DABR = '''+FormatDateTime('mm/dd/yy',DECaixa.Date)+'''');
    SQL.Add('AND    CAI_CDEP = '''+RECParametros.Id+'''');
    ExecQuery;
    if Eof then
       oException(DECaixa,'Data Informada não possui caixa registrado !');

    CDCX := Current.Vars[0].AsInteger;
  end;

  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE OR INSERT');
      SQL.Add('INTO '+RECPrincipal.Tabela);
      SQL.Add('(');
      SQL.Add('ID,');
      SQL.Add('FIN_CCLI,FIN_CVEN,FIN_CREP,');
      SQL.Add('FIN_DOCT,FIN_CDBX,FIN_CDCX,');
      SQL.Add('FIN_STDO,FIN_CONC,');
      SQL.Add('FIN_TITU,FIN_DCAD,FIN_DBAI,FIN_DVEN,FIN_VALO,');
      SQL.Add('FIN_VJUR,FIN_VMUL,FIN_VDES,');
      SQL.Add('FIN_DPAG,FIN_VPAG,FIN_VPEN,');
      SQL.Add('FIN_TIPO,FIN_STFI,FIN_CDBC,FIN_CTNR,');
      SQL.Add('FIN_OBSE');
      SQL.Add(')');
      SQL.Add('VALUES (');
      SQL.Add(''''+RECPrincipal.IDPK+''',');
      SQL.Add(''''+CECliente.Text+''',');
      SQL.Add(''''+CEVendedor.Text+''',');
      SQL.Add(''''+CERepresentante.Text+''',');
      SQL.Add(''''+EDFatura.Text +''',');
      SQL.Add(''''+IntToStr(CDBX)+''',');
      SQL.Add(''''+IntToStr(CDCX)+''',');
      SQL.Add(''''+STDO          +''',');
      SQL.Add(''''+IntToStr(CONC)+''',');
      SQL.Add(''''+EDTitulo.Text +''',');
      SQL.Add(''''+FormatDateTime('mm/dd/yy',DEFatura.Date)+''',');
      SQL.Add(''''+FormatDateTime('mm/dd/yy',DEBaixa.Date) +''',');
      SQL.Add(''''+FormatDateTime('mm/dd/yy',DEVencto.Date)+''',');
      SQL.Add(''''+oStrTran(CEVTitulo.Text  ,',','.')+''',');
      SQL.Add(''''+oStrTran(CEVJuros.Text   ,',','.')+''',');
      SQL.Add(''''+oStrTran(CEVMulta.Text   ,',','.')+''',');
      SQL.Add(''''+oStrTran(CEVDesconto.Text,',','.')+''',');
      SQL.Add(''''+FormatDateTime('mm/dd/yyyy',IFThen(DEPago.Date > 0,DEPago.Date,StrToDate('30/12/1899')))+''',');
      SQL.Add(''''+oStrTran(CEVPago.Text    ,',','.')+''',');
      SQL.Add(''''+oStrTran(CEVPendente.Text,',','.')+''',');
      SQL.Add(''''+IETipo.Text  +''',');
      SQL.Add(''''+IEStatus.Text+''',');
      SQL.Add(''''+IEBanco.Text +''',');
      SQL.Add(''''+PEContainer.Text+''',');
      SQL.Add(''''+EMInfAdCad.Text +'''');
      SQL.Add(')');
      SQL.Add('MATCHING (ID)');
      ExecQuery;

      if IEBoleto.Text = 'SIM' then
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE '+RECPrincipal.Tabela);
        SQL.Add('SET   NOSSONUMERO  = NULL,');
        SQL.Add('      IDINTEGRACAO = NULL,');
        SQL.Add('      DTINTEGRACAO = NULL,');
        SQL.Add('      STINTEGRACAO = NULL');
        SQL.Add('WHERE ID = '''+RECPrincipal.IDPK+'''');
        ExecQuery;

        if FileExists(PChar(RECParametros.FIN_PATH_JSON_BKP + '\' + EDTitulo.Text + '.tx2')) then
        try
          DeleteFile (PChar(RECParametros.FIN_PATH_JSON_BKP + '\' + EDTitulo.Text + '.tx2'));
        except
          on E: Exception do
          begin
            oException(Nil,'Falha ao tentar excluir arquivo !'+#13+
                           PChar(RECParametros.FIN_PATH_JSON_BKP + '\' + EDTitulo.Text + '.tx2')+#13+#13+
                           'Erro: '+E.Message);
          end;
        end;

        if FileExists(PChar(RECParametros.FIN_PATH_JSON_BKP + '\' + EDFatura.Text + '.tx2')) then
        try
          DeleteFile (PChar(RECParametros.FIN_PATH_JSON_BKP + '\' + EDFatura.Text + '.tx2'));
        except
          on E: Exception do
          begin
            oException(Nil,'Falha ao tentar excluir arquivo !'+#13+
                           PChar(RECParametros.FIN_PATH_JSON_BKP + '\' + EDFatura.Text + '.tx2')+#13+#13+
                           'Erro: '+E.Message);
          end;
        end;
      end;

      if CDBX > 0 then
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
        SQL.Add('SET      ROM_CDCX = '''+IntToStr(CDCX)+''',');
        SQL.Add('         ROM_DBAI = '''+FormatDateTime('mm/dd/yy',DECaixa.Date)+''',');
        SQL.Add('         ROM_CONC = '''+IntToStr(CONC)      +''',');
        SQL.Add('         ROM_CVEN = '''+CEVendedor.Text     +''',');
        SQL.Add('         ROM_CREP = '''+CERepresentante.Text+'''' );
        SQL.Add('WHERE    ROM_CDBX = '''+IntToStr(CDBX)      +'''' );
        ExecQuery;

        Close;
        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['rom_cab']);
        SQL.Add('SET      ROM_CDCX = '''+IntToStr(CDCX)+''',');
        SQL.Add('         ROM_DBAI = '''+FormatDateTime('mm/dd/yy',DECaixa.Date)+''',');
        SQL.Add('         ROM_CONC = '''+IntToStr(CONC)      +''',');
        SQL.Add('         ROM_CVEN = '''+CEVendedor.Text     +''',');
        SQL.Add('         ROM_CREP = '''+CERepresentante.Text+'''' );
        SQL.Add('WHERE    ROM_CDBX = '''+IntToStr(CDBX)      +'''' );
        ExecQuery;
      end;
    end;
    oCTransact(TEdicao);

    SIMValida.Tag := 0;
    oAviso(Handle,'Título Salvo com Sucesso !');
    Close;
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(Nil,'Falha ao tentar salvar edição !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;
end;

procedure TFrmFinanceiro_Recebimento_Edicao.CEClienteValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,CLI_FANT FROM CAD_CLI');
    SQL.Add('WHERE  ID = '''+CECliente.Text+'''');
    Prepare;
    ExecQuery;
    CECliente.Value := Current.Vars[0].AsInteger;
    EDCliente.Text  := Current.Vars[1].AsString;

    if oEmpty(CECliente.Value) then
       oException(CECliente,'Código do Cliente não Encontrado !');

    SIMValida.Tag := 1;
  end;
end;

procedure TFrmFinanceiro_Recebimento_Edicao.CEVendedorValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_USU');
    SQL.Add('WHERE  ID = '''+CEVendedor.Text+'''');
    Prepare;
    ExecQuery;
    IEVendedor.Text := Current.Vars[0].AsString;

    if oEmpty(CEVendedor.Value) then
       oException(CEVendedor,'Código do Vendedor não Encontrado !');

    SIMValida.Tag := 1;
  end;
end;

procedure TFrmFinanceiro_Recebimento_Edicao.IEVendedorChange(Sender: TObject);
begin
  CEVendedor.Text := IEVendedor.Text;
end;

procedure TFrmFinanceiro_Recebimento_Edicao.CERepresentanteValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_REP');
    SQL.Add('WHERE  ID = '''+CERepresentante.Text+'''');
    Prepare;
    ExecQuery;
    IERepresentante.Text := Current.Vars[0].AsString;

    if oEmpty(CERepresentante.Value) then
       oException(CERepresentante,'Código do Representante não Encontrado !');

    SIMValida.Tag := 1;
  end;
end;

procedure TFrmFinanceiro_Recebimento_Edicao.IERepresentanteChange(Sender: TObject);
begin
  CERepresentante.Text := IERepresentante.Text;
end;

procedure TFrmFinanceiro_Recebimento_Edicao.CEVTituloValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CEVPendente.Value := ((CEVTitulo.Value - CEVDesconto.Value) + (CEVJuros.Value + CEVMulta.Value)) - CEVPago.Value;
end;

procedure TFrmFinanceiro_Recebimento_Edicao.CEVPagoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CEVPendente.Value := ((CEVTitulo.Value - CEVDesconto.Value) + (CEVJuros.Value + CEVMulta.Value)) - CEVPago.Value;
  if CEVPago.Value > 0 then
  begin
    if DEPago.Date <= 0 then
       DEPago.Date := RECParametros.DTServer;
    if LeftStr(IEStatus.Text,4) <> 'PAGO' then
       IEStatus.Text := 'PAGO';
  end else
  begin
    DEPago.Date   := 0;
    IEStatus.Text := 'PENDENTE';
  end
end;

procedure TFrmFinanceiro_Recebimento_Edicao.DEFaturaDateChange(Sender: TObject);
begin
  if (Sender as TdxDateEdit).Date <= 0 then
     (Sender as TdxDateEdit).Text := EmptyStr;
end;

end.
