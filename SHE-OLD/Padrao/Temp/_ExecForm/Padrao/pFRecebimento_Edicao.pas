unit pFRecebimento_Edicao;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefaultEdicao, cxGraphics, ActnList, dxDockControl, dxBar,
  dxBarExtItems, ImgList, IBEvents, IBStoredProc, DB, IBCustomDataSet,
  IBQuery, IBSQL, IBDatabase, ExtCtrls, dxsbar, dxDockPanel, cxControls,
  dxStatusBar, dxExEdtr, dxEdLib, dxCntner, dxEditor, StdCtrls,
  StrUtils, math;

type
  TFrmFRecebimento_Edicao = class(TFrmDefaultEdicao)
    GBDocumento: TGroupBox;
    LAFatura: TLabel;
    LATitulo: TLabel;
    LAVTitulo: TLabel;
    LAStatus: TLabel;
    LAVPago: TLabel;
    LAVPendente: TLabel;
    LACliente: TLabel;
    LAVendedor: TLabel;
    LARepresentante: TLabel;
    LAVJuros: TLabel;
    LAVMulta: TLabel;
    LAVDesconto: TLabel;
    LADTFatura: TLabel;
    LADTVencimento: TLabel;
    LADTPagamento: TLabel;
    LATipo: TLabel;
    LABoleto: TLabel;
    CEVTitulo: TdxCurrencyEdit;
    DEVencto: TdxDateEdit;
    DEFatura: TdxDateEdit;
    CEVPago: TdxCurrencyEdit;
    DEPago: TdxDateEdit;
    CEVPendente: TdxCurrencyEdit;
    IEVendedor: TdxImageEdit;
    IERepresentante: TdxImageEdit;
    CECliente: TdxCurrencyEdit;
    CEVJuros: TdxCurrencyEdit;
    CEVMulta: TdxCurrencyEdit;
    CEVDesconto: TdxCurrencyEdit;
    IEStatus: TdxImageEdit;
    EDCliente: TdxMaskEdit;
    EDFatura: TdxMaskEdit;
    EDTitulo: TdxMaskEdit;
    IETipo: TdxImageEdit;
    IEBoleto: TdxImageEdit;
    GBEMINFADCAD: TGroupBox;
    EMINFADCAD: TdxMemo;
    IEBoletoBX: TdxImageEdit;
    IEDesvinculaNF: TdxImageEdit;
    LADesvinculaNF: TLabel;
    IECancelaNF: TdxImageEdit;
    LACancelaNF: TLabel;
    IEBanco: TdxImageEdit;
    LABanco: TLabel;
    PEContainer: TdxPickEdit;
    LAContainer: TLabel;
    LABoletoST: TLabel;
    procedure ACTSalvaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CEClienteValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EDTituloValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEVPagoValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DEFaturaChange(Sender: TObject);
    procedure DEFaturaValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure IEBoletoChange(Sender: TObject);
    procedure EDFaturaValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEVTituloValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFRecebimento_Edicao: TFrmFRecebimento_Edicao;
  ACDCX,
  ACDBX: Variant;
  ASTDO,
  AINFADPED: String;

implementation

{$R *.dfm}

procedure TFrmFRecebimento_Edicao.FormCreate(Sender: TObject);
begin
  { ADMIN }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM MANAGER }
  REC_SHE_DEF.FB_Event := 'FIN_REC_ADM'; { Eventos }

  { GRANT }
  REC_SHE_DEF.GDescricao  := 'Financeiro';
  REC_SHE_DEF.GReferencia := 'Contas a Receber';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;

  oOTransact(TConsulta);
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
      SQL.Add('SELECT PK.ID,PK.LOGIN FROM TAB_USER AS PK WHERE PK.ID > 0 AND PK.REST = ''A'' AND PK.GRUPO = ''VEN'' ORDER BY 2');
      ExecQuery;
      while not eof do
      begin
        IEVendedor.Values.Add(Current.Vars[0].AsString);
        IEVendedor.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.REP_FANT FROM CAD_REP AS PK WHERE PK.ID > 0 AND PK.REP_STAV = ''A'' ORDER BY 2');
      ExecQuery;
      while not eof do
      begin
        IERepresentante.Values.Add(Current.Vars[0].AsString);
        IERepresentante.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_STA AS PK WHERE PK.ID > 0 ORDER BY 2');
      ExecQuery;
      while not eof do
      begin
        IEStatus.Values.Add(Current.Vars[1].AsString);
        IEStatus.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT FIN_TIPO FROM '+REC_SHE_DEF.FB_PSQ_TB_NO_PK+' WHERE NOT FEMPTY(FIN_TIPO) GROUP BY 1 ORDER BY 1');
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
    SQL.Add('SELECT FR.FIN_CDCX,FR.FIN_CDBX,FR.FIN_STDO,FR.FIN_TIPO,FR.FIN_CTNR,');
    SQL.Add('       FR.FIN_DOCT,FR.FIN_DCAD,FR.FIN_TITU,FR.FIN_DVEN,FR.FIN_VALO,');
    SQL.Add('       FR.FIN_CCLI,CL.CLI_FANT,FR.FIN_CVEN,FR.FIN_CREP,');
    SQL.Add('       FR.FIN_VJUR,FR.FIN_VMUL,FR.FIN_VDES,');
    SQL.Add('       FR.FIN_DPAG,FR.FIN_VPAG,FR.FIN_VPEN,FR.FIN_STFI,');
    SQL.Add('       FR.CANCELA_NF,FR.DESVINCULA_NF,');
    SQL.Add('       FR.API_ST,');
    SQL.Add('       FR.FIN_CDBC,FR.FIN_OBSE');
    SQL.Add('FROM '+REC_SHE_DEF.FB_PSQ_TB_NO_PK+' AS FR');
    SQL.Add('JOIN   CAD_CLI AS CL ON (CL.ID = FR.FIN_CCLI)');
    SQL.Add('WHERE  FR.IDEP = '''+RECParametros.EP_ID +'''');
    SQL.Add('AND    FR.ID   = '''+REC_SHE_DEF.IDPK+'''');
    ExecQuery;

    ACDCX := IntToStr(Current.ByName('FIN_CDCX').AsInteger);
    ACDBX := IntToStr(Current.ByName('FIN_CDBX').AsInteger);
    ASTDO := Current.ByName('FIN_STDO').AsString;

    AINFADPED := EmptyStr;

    IETipo.Text      := Current.ByName('FIN_TIPO').AsString;
    PEContainer.Text := Current.ByName('FIN_CTNR').AsString;

    EDFatura.Text   := Current.ByName('FIN_DOCT').AsString;
    DEFatura.Date   := Current.ByName('FIN_DCAD').AsDateTime;
    DEFatura.Hint   := FormatDateTime('dd/mm/yyyy',Current.ByName('FIN_DCAD').AsDateTime);
    EDTitulo.Text   := Current.ByName('FIN_TITU').AsString;
    DEVencto.Date   := Current.ByName('FIN_DVEN').AsDateTime;
    CEVTitulo.Value := Current.ByName('FIN_VALO').AsCurrency;

    CECliente.Value      := Current.ByName('FIN_CCLI').AsInteger;
    EDCliente.Text       := Current.ByName('CLI_FANT').AsString;
    IEVendedor.Text      := Current.ByName('FIN_CVEN').AsString;
    IERepresentante.Text := Current.ByName('FIN_CREP').AsString;

    CEVJuros.Value    := Current.ByName('FIN_VJUR').AsCurrency;
    CEVMulta.Value    := Current.ByName('FIN_VMUL').AsCurrency;
    CEVDesconto.Value := Current.ByName('FIN_VDES').AsCurrency;

    DEPago.Date       := Current.ByName('FIN_DPAG').AsDateTime;
    CEVPago.Value     := Current.ByName('FIN_VPAG').AsCurrency;
    CEVPendente.Value := Current.ByName('FIN_VPEN').AsCurrency;
    IEStatus.Text     := Current.ByName('FIN_STFI').AsString;
    EMINFADCAD.Text   := Current.ByName('FIN_OBSE').AsString;

    { Bancos }
    LABoletoST.Caption := Current.ByName('API_ST'  ).AsString;
    IEBanco.Text       := Current.ByName('FIN_CDBC').AsString;

    { Nota Fiscal }
    IECancelaNF.Text := Current.ByName('CANCELA_NF').AsString;
    IECancelaNF.Tag  := Current.ByName('CANCELA_NF').AsInteger;

    IEDesvinculaNF.Text := Current.ByName('DESVINCULA_NF').AsString;
    IEDesvinculaNF.Tag  := Current.ByName('DESVINCULA_NF').AsInteger;

    if Current.Vars[0].AsInteger = 0 then
    begin
      ACDCX := RECParametros.CDCX;
      ACDBX := '0';
      ASTDO := IFThen(Pos('BAN',UpperCase(REC_SHE_DEF.FB_PSQ_TB_NO_PK)) > 0,'B 1','C 1');

      DEFatura.Date := RECParametros.SHE_DATA;
      DEFatura.Hint := FormatDateTime('dd/mm/yyyy',RECParametros.SHE_DATA);
      DEVencto.Date := RECParametros.SHE_DATA;

      IETipo.Text   := IFThen(Pos('BAN',UpperCase(REC_SHE_DEF.FB_PSQ_TB_NO_PK)) > 0,'DUPLICATA','CARTEIRA');
      IEStatus.Text := 'PENDENTE';
    end;
  end;

  IECancelaNF.Enabled := (ACDBX > 0) and (IECancelaNF.Text = '0');
  LACancelaNF.Enabled :=  IECancelaNF.Enabled;

  IEDesvinculaNF.Enabled := (ACDBX > 0) and (IEDesvinculaNF.Text = '0');
  LADesvinculaNF.Enabled :=  IEDesvinculaNF.Enabled;
end;

procedure TFrmFRecebimento_Edicao.ACTSalvaExecute(Sender: TObject);
begin
  inherited;
  if oYesNo(handle,'Confirma Edição ?') = mrNo then
     Abort;

  if (DEFatura.Date <= 0) then
      oException(DEFatura,'Data de fatura não informada ou inválida !');

  { Verifica se houve alteração da data de fatura }
  if DEFatura.Tag = 1 then
     with SQLConsulta do
     begin
       Close;
       SQL.Clear;
       SQL.Add('SELECT ID FROM CAI_LAF WHERE CAI_DABR = '''+FormatDateTime('mm/dd/yy',DEFatura.Date)+'''');
       SQL.Add('AND    CAI_CDEP = '''+RECParametros.EP_ID+'''');
       ExecQuery;
       if Eof then
          oException(DEFatura,'Data de fatura informada não possui caixa registrado !');

       ACDCX := IntToStr(Current.Vars[0].AsInteger);
     end;

  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE OR INSERT');
      SQL.Add('INTO '+REC_SHE_DEF.FB_PSQ_TB_NO_PK);
      SQL.Add('(');
      SQL.Add('ID,FIN_CDCX,');
      SQL.Add('   FIN_STDO,FIN_TIPO,FIN_CTNR,');
      SQL.Add('   FIN_DOCT,FIN_DCAD,FIN_TITU,FIN_DVEN,FIN_VALO,');
      SQL.Add('   FIN_CCLI,FIN_CVEN,FIN_CREP,');
      SQL.Add('   FIN_VJUR,FIN_VMUL,FIN_VDES,');
      SQL.Add('   FIN_DPAG,FIN_VPAG,FIN_VPEN,FIN_STFI,');
      SQL.Add('   FIN_CDBC,FIN_OBSE');
      SQL.Add(')');

      SQL.Add('VALUES (');
      SQL.Add(''''+REC_SHE_DEF.IDPK+''',');
      SQL.Add(''''+ACDCX+''',');
      SQL.Add(''''+ASTDO+''',');

      SQL.Add(''''+IETipo.Text     +''',');
      SQL.Add(''''+PEContainer.Text+''',');

      SQL.Add(''''+EDFatura.Text +''',');
      SQL.Add(''''+FormatDateTime('mm/dd/yy',DEFatura.Date)+''',');
      SQL.Add(''''+EDTitulo.Text +''',');
      SQL.Add(''''+FormatDateTime('mm/dd/yy',DEVencto.Date)+''',');
      SQL.Add(''''+oStrTran(CEVTitulo.Text,',','.')+''',');

      SQL.Add(''''+CECliente.Text      +''',');
      SQL.Add(''''+IEVendedor.Text     +''',');
      SQL.Add(''''+IERepresentante.Text+''',');

      SQL.Add(''''+oStrTran(CEVJuros.Text   ,',','.')+''',');
      SQL.Add(''''+oStrTran(CEVMulta.Text   ,',','.')+''',');
      SQL.Add(''''+oStrTran(CEVDesconto.Text,',','.')+''',');

      SQL.Add(''''+FormatDateTime('mm/dd/yyyy',IFThen(DEPago.Date > 0,DEPago.Date,StrToDate('30/12/1899')))+''',');
      SQL.Add(''''+oStrTran(CEVPago.Text    ,',','.')+''',');
      SQL.Add(''''+oStrTran(CEVPendente.Text,',','.')+''',');
      SQL.Add(''''+IEStatus.Text+''',');

      SQL.Add(''''+IEBanco.Text    +''',');
      SQL.Add(''''+EMINFADCAD.Text +'''' );
      SQL.Add(')');

      SQL.Add('MATCHING (ID)');
      ExecQuery;

      if IEBoleto.Text = '1' then
      begin
        { Bancário }
        Close;
        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['fin_rec_ban_bai']);
        SQL.Add('SET    API_ST   = ''BAIXADO'',');
        SQL.Add('       API_MT   = API_MT || ''. ' + RECUsuarios.Login + ' - ' + FormatDateTime('dd/mm/yy hh:mm',Now) + ''',');
        SQL.Add('       FIN_OBSE = ''' + EMINFADCAD.Text + '''');

        SQL.Add('WHERE  FIN_CCLI = ''' + CECliente.Text + '''');
        if IEBoletoBX.Text = 'Título' then
           SQL.Add('AND FIN_TITU = '''+EDTitulo.Text+'''') else
           SQL.Add('AND FIN_DOCT = '''+EDFatura.Text+'''');
        ExecQuery;

        { Carteira }
        Close;
        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['fin_rec_car_bai']);
        SQL.Add('SET    FIN_STFI = ''BAIXADO'',');
        SQL.Add('       FIN_OBSE = ''' + EMINFADCAD.Text + '''');

        SQL.Add('WHERE  FIN_CCLI = ''' + CECliente.Text  + '''');
        if IEBoletoBX.Text = 'Título' then
           SQL.Add('AND FIN_TITU = '''+EDTitulo.Text+'''') else
           SQL.Add('AND FIN_DOCT = '''+EDFatura.Text+'''');
        ExecQuery;
      end;

      if ACDBX > 0 then
      begin
        { Permissão para Cancelamento de NF }
        if (IECancelaNF.Text = '1') and (IECancelaNF.Text <> IntToStr(IECancelaNF.Tag)) then
        begin
          { Bancário }
          Close;
          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['fin_rec_ban_bai']);

          SQL.Add('SET CANCELA_NF = ''' + IECancelaNF.Text + ''',');
          if (IEStatus.Text = 'PENDENTE') or (IEStatus.Text = 'PRORROGADO') then
              SQL.Add('FIN_STFI = ''BAIXADO'',');
              SQL.Add('FIN_OBSE = ''' + EMINFADCAD.Text + '''' );

          SQL.Add('WHERE FIN_CCLI = '''+CECliente.Text +'''');
          SQL.Add('AND   FIN_DOCT = '''+EDFatura.Text  +'''');
          ExecQuery;

          { Carteira }
          Close;
          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['fin_rec_car_bai']);
          SQL.Add('SET   FIN_STFI   = ''BAIXADO'',');
          SQL.Add('      CANCELA_NF = ''' + IECancelaNF.Text + ''',');
          SQL.Add('      FIN_OBSE   = ''' + EMINFADCAD.Text  + '''' );

          SQL.Add('WHERE FIN_CCLI = '''+CECliente.Text +'''');
          SQL.Add('AND   FIN_DOCT = '''+EDFatura.Text  +'''');
          ExecQuery;
        end;

        { Desvinculação da NF do Pedido }
        if (IEDesvinculaNF.Text = '1') and (IEDesvinculaNF.Text <> IntToStr(IEDesvinculaNF.Tag)) then
        begin
          { Bancário }
          Close;
          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['fin_rec_ban_bai']);

          SQL.Add('SET DESVINCULA_NF = ''' + IEDesvinculaNF.Text + ''',');
          if (IEStatus.Text = 'PENDENTE') or (IEStatus.Text = 'PRORROGADO') then
              SQL.Add('FIN_STFI = ''BAIXADO'',');
              SQL.Add('FIN_OBSE = ''' + EMINFADCAD.Text + '''' );

          SQL.Add('WHERE FIN_CCLI = '''+CECliente.Text +'''');
          SQL.Add('AND   FIN_DOCT = '''+EDFatura.Text  +'''');
          ExecQuery;

          { Carteira }
          Close;
          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['fin_rec_car_bai']);
          SQL.Add('SET   FIN_STFI      = ''BAIXADO'',');
          SQL.Add('      DESVINCULA_NF = ''' + IEDesvinculaNF.Text + ''',');
          SQL.Add('      FIN_OBSE      = ''' + EMINFADCAD.Text     + '''' );

          SQL.Add('WHERE FIN_CCLI = '''+CECliente.Text +'''');
          SQL.Add('AND   FIN_DOCT = '''+EDFatura.Text  +'''');
          ExecQuery;

          { Pedidos }
          Close;
          SQL.Clear;
          SQL.Add('SELECT PK.INFADCAD FROM ' + SLPrincipal.Values['ped_ven_cab'] + ' AS PK');
          SQL.Add('WHERE  PK.CDBX = ''' + ACDBX + '''');
          ExecQuery;
          AINFADPED := Current.Vars[0].AsString + #13 +
                      'Nota Fiscal desvinculada com sucesso. ' + RECUsuarios.Login + ' - ' + FormatDateTime('dd/mm/yy hh:mm',Now);

          Close;
          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['rom_cab']);
          SQL.Add('SET   ROM_DROM = CURRENT_DATE,');
          SQL.Add('      DTCA     = CURRENT_TIMESTAMP');
          SQL.Add('WHERE CDBX     = '''+ACDBX+'''');
          ExecQuery;

          Close;
          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
          SQL.Add('SET   ROM_CDNF = NULL,');
          SQL.Add('      DTSA     = NULL,');
          SQL.Add('      ROM_CDBX = NULL,');
          SQL.Add('      ROM_OBSE = ''' + AINFADPED       + ''',');
          SQL.Add('      INFADFIN = ''' + EMINFADCAD.Text + '''' );
          SQL.Add('WHERE CDBX     = '''+ACDBX+'''');
          ExecQuery;
        end;
      end;
    end;
    
    oCTransact(TEdicao);
    oAviso(Handle,'Título Atualizado com Sucesso !');
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(Nil,'Falha ao tentar salvar edição !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;

  Close;
end;

procedure TFrmFRecebimento_Edicao.CEClienteValidate(Sender: TObject;
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
  end;
end;

procedure TFrmFRecebimento_Edicao.EDTituloValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CEVPendente.Value := ((CEVTitulo.Value - CEVDesconto.Value) + (CEVJuros.Value + CEVMulta.Value)) - CEVPago.Value;
end;

procedure TFrmFRecebimento_Edicao.CEVPagoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CEVPendente.Value := ((CEVTitulo.Value - CEVDesconto.Value) + (CEVJuros.Value + CEVMulta.Value)) - CEVPago.Value;
  if CEVPago.Value > 0 then
  begin
    if DEPago.Date <= 0 then
       DEPago.Date := RECParametros.SHE_DATA;
    if LeftStr(IEStatus.Text,4) <> 'PAGO' then
       IEStatus.Text := 'PAGO';
  end else
  begin
    DEPago.Date   := 0;
    IEStatus.Text := 'PENDENTE';
  end
end;

procedure TFrmFRecebimento_Edicao.DEFaturaChange(Sender: TObject);
begin
  if (Sender as TdxDateEdit).Date <= 0 then
     (Sender as TdxDateEdit).Text := EmptyStr;
end;

procedure TFrmFRecebimento_Edicao.DEFaturaValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DEFatura.Tag := IFThen(DEFatura.Text = DEFatura.Hint,0,1);
end;

procedure TFrmFRecebimento_Edicao.IEBoletoChange(Sender: TObject);
begin
  if (IEBoleto.Text = '1') and (Pos(LeftStr(LABoletoST.Caption,3),'LIQREGSALEMI') > 0) then
      oAviso(handle,'Não esquecer de efetuar a baixa manualmente' +#13+ 'no internet banking.');
end;

procedure TFrmFRecebimento_Edicao.EDFaturaValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  EDTitulo.Text := EDFatura.Text;
end;

procedure TFrmFRecebimento_Edicao.CEVTituloValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CEVPendente.Value := CEVTitulo.Value;
end;

end.
