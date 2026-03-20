unit pfin_rec_con;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, IBStoredProc, IBDatabase, DB, StrUtils,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls, RxSpeedBar, ComCtrls, dxDBTLCl, dxGrClms, dxEditor, dxExEdtr,
  dxEdLib, dxDBELib, DBCtrls, StdCtrls, dxPageControl, DateUtils, math,
  IBEvents, cxGraphics, IBSQL, cxControls, dxStatusBar,
  pConsulta, Menus, ActnList;

type
  Tfrmfin_rec_con = class(TFrmConsulta)
    SIMAltera: TSpeedItem;
    SIMPendente: TSpeedItem;
    SIMCancela: TSpeedItem;
    PMPrincipal: TPopupMenu;
    ExpXLS: TMenuItem;
    SIMNovo: TSpeedItem;
    SIMRECEBE: TSpeedItem;
    SIMCAD_CLI: TSpeedItem;
    SIMCAD_CLI_INF: TSpeedItem;
    CadastroIDEP: TSmallintField;
    CadastroTITULO: TIBStringField;
    CadastroCTNR: TIBStringField;
    CadastroGRUPO: TIBStringField;
    CadastroIDCV: TIntegerField;
    CadastroDECV: TIBStringField;
    CadastroIDCR: TIntegerField;
    CadastroDECR: TIBStringField;
    CadastroVJUR: TIBBCDField;
    CadastroVMUL: TIBBCDField;
    CadastroVDSC: TIBBCDField;
    CadastroVPAG: TIBBCDField;
    CadastroVPEN: TIBBCDField;
    CadastroDTBX: TDateField;
    CadastroDEEP: TIBStringField;
    DBGConsultaDEEP: TdxDBGridMaskColumn;
    DBGConsultaDOCUMENTO: TdxDBGridMaskColumn;
    DBGConsultaTITULO: TdxDBGridMaskColumn;
    DBGConsultaCTNR: TdxDBGridMaskColumn;
    DBGConsultaSTPD: TdxDBGridMaskColumn;
    DBGConsultaRECO: TdxDBGridMaskColumn;
    DBGConsultaDTFA: TdxDBGridDateColumn;
    DBGConsultaVDUP: TdxDBGridMaskColumn;
    DBGConsultaDTVC: TdxDBGridDateColumn;
    DBGConsultaIDCD: TdxDBGridMaskColumn;
    DBGConsultaDECD: TdxDBGridMaskColumn;
    DBGConsultaGRUPO: TdxDBGridMaskColumn;
    DBGConsultaDECV: TdxDBGridMaskColumn;
    DBGConsultaDECR: TdxDBGridMaskColumn;
    DBGConsultaVJUR: TdxDBGridMaskColumn;
    DBGConsultaVMUL: TdxDBGridMaskColumn;
    DBGConsultaVDSC: TdxDBGridMaskColumn;
    DBGConsultaDTPG: TdxDBGridDateColumn;
    DBGConsultaVPAG: TdxDBGridMaskColumn;
    DBGConsultaVPEN: TdxDBGridMaskColumn;
    DBGConsultaDEST: TdxDBGridMaskColumn;
    DBGConsultaAPI_DTCA: TdxDBGridDateColumn;
    DBGConsultaAPI_CA: TdxDBGridMaskColumn;
    DBGConsultaAPI_NN: TdxDBGridColumn;
    DBGConsultaAPI_DTED: TdxDBGridDateColumn;
    DBGConsultaAPI_INFADCAD: TdxDBGridBlobColumn;
    DBGConsultaAPI_ST: TdxDBGridMaskColumn;
    DBGConsultaAPI_MT: TdxDBGridMaskColumn;
    CadastroDTDP: TDateTimeField;
    DBGConsultaCDDP: TdxDBGridMaskColumn;
    DBGConsultaDTDP: TdxDBGridDateColumn;
    CadastroVCRD: TIBBCDField;
    CadastroNAFA: TSmallintField;
    DBGConsultaNAFA: TdxDBGridMaskColumn;
    PNLINFADCAD: TPanel;
    Bevel2: TBevel;
    DBINFADCAD: TdxDBMemo;
    DBGConsultaDTBX: TdxDBGridDateColumn;
    CadastroAPI_ID: TIBStringField;
    CadastroAPI_DTCA: TDateTimeField;
    CadastroAPI_NN: TLargeintField;
    CadastroAPI_ST: TIBStringField;
    CadastroAPI_MT: TIBStringField;
    CadastroAPI_DTED: TDateTimeField;
    CadastroAPI_CA: TSmallintField;
    CadastroDOCUMENTO: TIBStringField;
    CadastroDTFA: TDateField;
    CadastroSTPD: TIBStringField;
    CadastroTPCO: TSmallintField;
    CadastroRECO: TIBStringField;
    CadastroDTVC: TDateField;
    CadastroVDUP: TIBBCDField;
    CadastroIDCD: TIntegerField;
    CadastroDECD: TIBStringField;
    CadastroDTPG: TDateField;
    CadastroDEST: TIBStringField;
    CadastroCDBX: TLargeintField;
    CadastroCDCX: TLargeintField;
    CadastroCDDP: TSmallintField;
    CadastroINFADCAD: TIBStringField;
    CadastroID: TLargeintField;
    CadastroAPI_INFADCAD: TMemoField;
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SIMAlteraClick(Sender: TObject);
    procedure SIMPendenteClick(Sender: TObject);
    procedure SIMPesquisaClick(Sender: TObject);
    procedure SIMCancelaClick(Sender: TObject);
    procedure ExpXLSClick(Sender: TObject);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure SIMNovoClick(Sender: TObject);
    procedure SIMRelatoriosClick(Sender: TObject);
    procedure SIMRECEBEClick(Sender: TObject);
    procedure SIMCAD_CLIClick(Sender: TObject);
    procedure SIMCAD_CLI_INFClick(Sender: TObject);
    procedure CadastroAfterScroll(DataSet: TDataSet);
    procedure DTSCadastroDataChange(Sender: TObject; Field: TField);
    procedure CadastroBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    fin_baixa: String;
  public
    { Public declarations }
    procedure _WM_AFTER_ACTIVATE  (var Msg: TMessage); message WM_AFTER_ACTIVATE;
  end;

var
  frmfin_rec_con: Tfrmfin_rec_con;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pFRecebimento_Edicao, prelatorio_geral, pfin_rec_bai,
  pcad_cli_edi, ppesquisa_geral;

{$R *.dfm}

procedure Tfrmfin_rec_con._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
  inherited;
  with Cadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CAST(PK.ID AS BIGINT) AS ID ,PK.IDEP,EP.FANTASIA AS DEEP,');
    SQL.Add('       PK.DOCUMENTO,PK.DTFA,PK.CTNR,PK.STPD,PK.TPCO,PK.RECO,PK.CDCX,');
    SQL.Add('       PK.TITULO,PK.DTVC,PK.VDUP,');
    SQL.Add('       PK.IDCD,IIF(POSITION(LEFT(CD.FANTASIA,10) IN CD.RAZAO) > 0,CD.FANTASIA,CD.FANTASIA||'' ''||CD.RAZAO) AS DECD,CD.GRUPO,COALESCE(CRD.VCRD,0) AS VCRD,COALESCE(CRD.NAFA,0) AS NAFA,');
    SQL.Add('       PK.IDCV,CV.LOGIN AS DECV,PK.IDCR,CR.FANTASIA AS DECR,');
    SQL.Add('       PK.VJUR,PK.VMUL,PK.VDSC,');
    SQL.Add('       PK.DTPG,PK.VPAG,PK.VPEN,PK.DEST,');
    SQL.Add('       PK.CDBX,PK.DTBX,');
    SQL.Add('       PK.CDDP,PK.DTDP,');
    SQL.Add('       PK.API_ID,PK.API_CA,PK.API_DTCA,PK.API_DTED,PK.API_NN,PK.API_ST,PK.API_MT,PK.API_INFADCAD,');
    SQL.Add('       NULLIF(TRIM(CAST(SUBSTRING(PK.INFADCAD FROM 1 FOR 1064) AS VARCHAR(1064))),'''') AS INFADCAD');

    SQL.Add('FROM ' + fin_baixa + ' AS PK');

    SQL.Add('JOIN  TAB_PAR_SIS      AS EP  ON (EP.ID = PK.IDEP)');
    SQL.Add('JOIN  CAD_CLI          AS CD  ON (CD.ID = PK.IDCD)');
    SQL.Add('JOIN  TAB_USER         AS CV  ON (CV.ID = PK.IDCV)');
    SQL.Add('JOIN  CAD_REP          AS CR  ON (CAST(CR.ID AS SMALLINT) = PK.IDCR)');
    SQL.Add('LEFT  JOIN CAD_CLI_CRD AS CRD ON (CRD.IDEP = PK.IDEP AND CRD.IDCD = PK.IDCD)');
    SQL.Add('WHERE CAST(PK.DTPG AS DATE) = ''' + FormatDateTime('mm/dd/yy',IncDay(RECParametros.SHE_DATA,IFThen(DayOfWeek(RECParametros.SHE_DATA) = 2,-3, // Segunda
                                                                                                         IFThen(DayOfWeek(RECParametros.SHE_DATA) = 1,-2, // Domingo
                                                                                                                                     -1))))+'''');
    SQL.Add('ORDER BY TITULO');
    Prepare;
    Open;
  end;
end;

procedure Tfrmfin_rec_con.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'FIN_REC_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Financeiro';
  REC_SHE_DEF.GReferencia := 'Contas a Receber';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;

  fin_baixa := SLPrincipal.Values['fin_baixa'];
  Caption   := SLPrincipal.Values['fin_caption'];
  Hint      := SLPrincipal.Values['fin_hint'];

  GBCadastro.Caption   := IFThen(Pos('fin_rec_ban',fin_baixa) > 0,'Bancário','Carteira');
  GBCadastro.Tag       := IFThen(Pos('fin_rec_ban',fin_baixa) > 0,0,1);
  SIMRECEBE.ImageIndex := IFThen(Pos('fin_rec_ban',fin_baixa) > 0,8,9);
end;

procedure Tfrmfin_rec_con.FormActivate(Sender: TObject);
begin
  inherited;
  DBGConsultaTitulo.Field.FocusControl;
end;

procedure Tfrmfin_rec_con.SIMPesquisaClick(Sender: TObject);
begin
  inherited;
  FrmPesquisa_Geral := TFrmPesquisa_Geral.Create(Self);
  try
    FrmPesquisa_Geral.Tag := 95;
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
        SQL.Add('SELECT CAST(PK.ID AS BIGINT) AS ID ,PK.IDEP,EP.FANTASIA AS DEEP,');
        SQL.Add('       PK.DOCUMENTO,PK.DTFA,PK.CTNR,PK.STPD,PK.TPCO,PK.RECO,PK.CDCX,');
        SQL.Add('       PK.TITULO,PK.DTVC,PK.VDUP,');
        SQL.Add('       PK.IDCD,IIF(POSITION(LEFT(CD.FANTASIA,10) IN CD.RAZAO) > 0,CD.FANTASIA,CD.FANTASIA||'' ''||CD.RAZAO) AS DECD,CD.GRUPO,COALESCE(CRD.VCRD,0) AS VCRD,COALESCE(CRD.NAFA,0) AS NAFA,');
        SQL.Add('       PK.IDCV,CV.LOGIN AS DECV,PK.IDCR,CR.FANTASIA AS DECR,');
        SQL.Add('       PK.VJUR,PK.VMUL,PK.VDSC,');
        SQL.Add('       PK.DTPG,PK.VPAG,PK.VPEN,PK.DEST,');
        SQL.Add('       PK.CDBX,PK.DTBX,');
        SQL.Add('       PK.CDDP,PK.DTDP,');
        SQL.Add('       PK.API_ID,PK.API_CA,PK.API_DTCA,PK.API_DTED,PK.API_NN,PK.API_ST,PK.API_MT,PK.API_INFADCAD,');
        SQL.Add('       NULLIF(TRIM(CAST(SUBSTRING(PK.INFADCAD FROM 1 FOR 1064) AS VARCHAR(1064))),'''') AS INFADCAD');

        SQL.Add('FROM ' + fin_baixa + ' AS PK');

        SQL.Add('JOIN  TAB_PAR_SIS      AS EP  ON (EP.ID = PK.IDEP)');
        SQL.Add('JOIN  CAD_CLI          AS CD  ON (CD.ID = PK.IDCD)');
        SQL.Add('JOIN  TAB_USER         AS CV  ON (CV.ID = PK.IDCV)');
        SQL.Add('JOIN  CAD_REP          AS CR  ON (CAST(CR.ID AS SMALLINT) = PK.IDCR)');
        SQL.Add('LEFT  JOIN CAD_CLI_CRD AS CRD ON (CRD.IDEP = PK.IDEP AND CRD.IDCD = PK.IDCD)');

        SQL.Add('WHERE PK.IDEP = ''' + RECParametros.EP_ID + '''');

        if FrmPesquisa_Geral.EDTXT.Text <> EmptyStr then
        begin
          if FrmPesquisa_Geral.EDTXT.Text = 'PENDENTE' then
          begin
            SQL.Add('AND PK.DEST NOT LIKE ''PAGO%''');
            SQL.Add('AND PK.DEST <> ''BAIXADO''');
          end else

          if FrmPesquisa_Geral.EDTXT.Text = 'VENCIDO'  then SQL.Add('AND PK.DEST = ''PENDENTE''') else
          if FrmPesquisa_Geral.EDTXT.Text = 'A VENCER' then SQL.Add('AND PK.DEST = ''PENDENTE''') else
          SQL.Add('AND ' + FrmPesquisa_Geral.CField + ' LIKE ''' + FrmPesquisa_Geral.EDTXT.Text + '%''');
        end;

        if (FrmPesquisa_Geral.dxDT1.Date > 0) and (FrmPesquisa_Geral.dxDT2.Date > 0) then
        SQL.Add('AND ' + FrmPesquisa_Geral.cData + ' BETWEEN ''' + formatDateTime('mm/dd/yy',FrmPesquisa_Geral.dxDT1.Date) + ''' AND ''' + formatDateTime('mm/dd/yy',FrmPesquisa_Geral.dxDT2.Date) + '''');

        SQL.Add('ORDER BY PK.TITULO');
        Open;
        APSQ_REC := FrmPesquisa_Geral.cbCAMPO.Text;
      end;
    finally
      FreeAndNil(FrmPesquisa_Geral);
    end;
  end;

  DBGConsultaTITULO.Field.FocusControl;
  DBGConsulta.SetFocus;
end;

procedure Tfrmfin_rec_con.SIMCAD_CLI_INFClick(Sender: TObject);
begin
  uPSQSCORE(self,CadastroIDCD.AsString,EmptyStr);
end;

procedure Tfrmfin_rec_con.SIMCAD_CLIClick(Sender: TObject);
begin
  frmcad_cli_edi     := TFrmcad_cli_edi.Create(Self);
  frmcad_cli_edi.Tag := 1;
  frmcad_cli_edi.IDCliente := IntToStr(CadastroIDCD.AsInteger);
  try frmcad_cli_edi.ShowModal;
  finally
    if frmcad_cli_edi.REC_SHE_DEF.Edited then
       oRefresh(Cadastro);

    FreeAndNil(frmcad_cli_edi);
  end;
end;

procedure Tfrmfin_rec_con.SIMNovoClick(Sender: TObject);
begin
  TFrmFRecebimento_Edicao._ExecForm(
              Nil, { Owner }
              FrmFRecebimento_Edicao, { Form }
              False, { inicia pela pesquisa }
              fsStayOnTop, { Style }
              0 , { Empresa }
              '', { Código Principal }
              0 , { Código Evento }
              0 , { Tipo Evento }
              FIN_BAIXA); { Tabela }
end;

procedure Tfrmfin_rec_con.SIMAlteraClick(Sender: TObject);
begin
  TFrmFRecebimento_Edicao._ExecForm(
              Nil, { Owner }
              FrmFRecebimento_Edicao, { Form }
              False, { inicia pela pesquisa }
              fsStayOnTop, { Style }
              CadastroID.AsInteger, { Código Principal }
              '', { Empresa }
              0 , { Código Evento }
              0 , { Tipo Evento }
              FIN_BAIXA); { Tabela }
end;

procedure Tfrmfin_rec_con.SIMPendenteClick(Sender: TObject);
begin
{  if oYesNo(Handle,'Alterar Status ?') = mrNo then
  Abort;

  if not oEmpty(CadastroIDIntegracao.AsString) then
     oException(DBGConsulta,'Título possui boleto registrado !');

  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+fin_baixa);
      SQL.Add('SET   FIN_STFI = ''PENDENTE'',');
      SQL.Add('      FIN_DBAI = '''+FormatDateTime('mm/dd/yy',RECParametros.SHE_DATA)+''',');
      SQL.Add('      FIN_DPAG = NULL,');
      SQL.Add('      FIN_VPAG = 0,');
      SQL.Add('      FIN_VPEN = ((FIN_VALO-FIN_VDES) + (FIN_VJUR+FIN_VMUL))');
      SQL.Add('WHERE ID = '''+cadastroID.AsString+'''');
      Prepare;
      ExecQuery;
    end;
    TEdicao.Commit;
    _ExecEvent;

    oAviso(handle,'Status da conta alterado com sucesso !'+#13+
                   IFThen(SIMPendente.Tag = 0,'Pedido de venda liberado.',''));
  except
    on E: Exception do
    begin
      TEdicao.Rollback;
      raise exception.Create('Falha ao tentar alterar status !'+#13+
                             'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                             'Erro: '+E.Message);
    end;
  end; }
end;

procedure Tfrmfin_rec_con.SIMCancelaClick(Sender: TObject);
var
  AEscolha: Word;
  AWhere  : String;
begin
     AEscolha := oEscolha('Confirma Cancelamento ?','Aviso','Documento','Título');
  if AEscolha  = MRCANCEL then
     Abort;

  if AEscolha = MRYES then
     AWhere  := IFThen(CadastroCDBX.AsInteger > 0,'FIN_CDBX = '''+CadastroCDBX.AsString+'''','FIN_DOCT = '''+CadastroDOCUMENTO.AsString+'''') else
     AWhere  := 'ID = '+CadastroID.AsString;

  if CadastroId.AsInteger = 0 then
     oException(DBGConsulta,'Conta não Selecionada !');

  if Pos(LeftStr(CadastroAPI_ST.AsString,3),'LIQ') > 0 then
     oException(DBGConsulta,'Cancelamento não Permitido !'+#13+#13+
                            'Conta possui boleto bancário liquidado.');

  if Pos(LeftStr(CadastroAPI_ST.AsString,3),'REGSALEMI') > 0 then
     oException(DBGConsulta,'Cancelamento não Permitido !'+#13+#13+
                            'Conta possui boleto bancário registrado.');

  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM '+FIN_BAIXA);
      SQL.Add('WHERE '+AWhere);
      ExecQuery;

      if CadastroCDBX.AsInteger > 0 then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT MAX(ID) AS ID');
        SQL.Add('FROM (');
        SQL.Add('SELECT MAX(ID) AS ID FROM FIN_REC_BAN_BAI');
        SQL.Add('WHERE  FIN_CDBX = :CDBX');
        SQL.Add('UNION');
        SQL.Add('SELECT MAX(ID) AS ID FROM FIN_REC_CAR_BAI');
        SQL.Add('WHERE  FIN_CDBX = :CDBX');
        SQL.Add(')');
        Prepare;

        Params[0].Value := CadastroCDBX.AsString;
        ExecQuery;

        if Current.Vars[0].AsInteger = 0 then
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
          SQL.Add('SET    ROM_CDBX = NULL');
          SQL.Add('WHERE  ROM_CDBX = '''+CadastroCDBX.AsString+'''');
          ExecQuery;
        end;
      end;  
    end;

    oCTransact(TEdicao);
    oAviso(Handle,'Cancelamento concluído com sucesso !');
    ACTEveExecute.Execute;
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(Nil,'Falha ao tentar cancelar recebimento !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;
end;

procedure Tfrmfin_rec_con.SIMRECEBEClick(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmfin_rec_bai,Frmfin_rec_bai);
end;

procedure Tfrmfin_rec_con.ExpXLSClick(Sender: TObject);
begin
  try
    DBGConsulta.SaveToXLS('C:\Sheild\Documentos\Consulta.XLS',False);
    oAviso(Handle,'Planilha gerada com sucesso !');
  except
    raise exception.Create('Erro !');
  end;
end;

procedure Tfrmfin_rec_con.CadastroCalcFields(DataSet: TDataSet);
begin
  CadastroC_ID.Value := Cadastro.RecNo;
end;

procedure Tfrmfin_rec_con.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Cadastro.Next;
  if Showing then
     DBGConsultaTitulo.Field.FocusControl;
end;

procedure Tfrmfin_rec_con.CadastroBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  { Acréscimos }
  DBGConsulta.Bands[1].Visible := False;
  DBGConsultaVJUR.Width := 60;
  DBGConsultaVMUL.Width := 60;

  { Descontos  }
  DBGConsulta.Bands[2].Visible := False;

  { Instruções Bancárias }
  DBGConsulta.Bands[4].Visible := False;

  { Carteira }
  DBGConsultaAPI_CA.Visible   := False;
  DBGConsultaAPI_DTCA.Visible := False;

  { API }
  DBGConsultaAPI_NN.Visible       := False;
  DBGConsultaAPI_INFADCAD.Visible := False;
  DBGConsultaAPI_ST.Visible       := False;
  DBGConsultaAPI_MT.Visible       := False;
  DBGConsultaAPI_DTED.Visible     := False;

  { Envio Bancário }
  DBGConsultaCDDP.Visible := False;
  DBGConsultaDTDP.Visible := False;

  DBGConsultaCTNR.Visible  := False;
  DBGConsultaGRUPO.Visible := False;
  DBGConsultaDTPG.Visible  := False;
  DBGConsultaVPAG.Visible  := False;
  DBGConsultaDTBX.Visible  := False;
end;

procedure Tfrmfin_rec_con.CadastroAfterScroll(DataSet: TDataSet);
begin
  { Acréscimos }
  if CadastroVJUR.AsFloat + CadastroVMUL.AsFloat > 0 then
  begin
    DBGConsulta.Bands[1].Visible := True;

    if CadastroVJUR.AsFloat > 0 then
       DBGConsultaVJUR.Width := 75;

    if CadastroVMUL.AsFloat > 0 then
       DBGConsultaVMUL.Width := 75;
  end;

  { Descontos  }
  if CadastroVDSC.AsFloat > 0 then
     DBGConsulta.Bands[2].Visible := True;

  { Instruções Bancárias }   
  if (CadastroAPI_CA.AsInteger > 0) or (CadastroAPI_ID.AsString <> EmptyStr) or (CadastroCDDP.AsInteger > 0) then
  begin
    DBGConsulta.Bands[4].Visible := True;

    { Carteira }
    if CadastroAPI_CA.AsInteger > 0 then
    begin
      DBGConsultaAPI_CA.Visible   := True;
      DBGConsultaAPI_DTCA.Visible := True;
    end;

    { API }
    if CadastroAPI_ID.AsString <> EmptyStr then
    begin
      DBGConsultaAPI_NN.Visible       := True;
      DBGConsultaAPI_INFADCAD.Visible := True;
      DBGConsultaAPI_ST.Visible       := True;
      DBGConsultaAPI_MT.Visible       := True;
      DBGConsultaAPI_DTED.Visible     := True;
    end;

    { Envio Bancário }
    if CadastroCDDP.AsInteger > 0 then
    begin
      DBGConsultaCDDP.Visible := True;
      DBGConsultaDTDP.Visible := True;
    end;
  end;
  
  if CadastroCTNR.AsString <> EmptyStr then
     DBGConsultaCTNR.Visible := True;

  if CadastroGRUPO.AsString <> EmptyStr then
     DBGConsultaGRUPO.Visible := True;

  if CadastroVPAG.AsFloat > 0 then
  begin
    DBGConsultaDTPG.Visible := True;
    DBGConsultaVPAG.Visible := True;
  end;

  if (CadastroDTBX.AsDateTime > 0) and (CadastroDEST.AsString <> 'PENDENTE') then
      DBGConsultaDTBX.Visible := True;
end;

procedure Tfrmfin_rec_con.DTSCadastroDataChange(Sender: TObject;
  Field: TField);
var
  PosCount: Word;
begin
  { Botões }
  SIMAltera.Enabled   := (not CadastroID.IsNull) and (CadastroDEST.AsString <> 'CANCELADO');
  SIMCancela.Enabled  := (not CadastroID.IsNull) and (CadastroDEST.AsString <> 'CANCELADO');
  SIMPendente.Enabled := (not CadastroID.IsNull) and (CadastroDEST.AsString <> 'CANCELADO') and (CadastroDEST.AsString <> 'PENDENTE');

  { Colunas }
  DBGConsulta.ApplyBestFit(DBGConsultaDOCUMENTO);
  DBGConsulta.ApplyBestFit(DBGConsultaTITULO);
  DBGConsulta.ApplyBestFit(DBGConsultaGRUPO );
  DBGConsulta.ApplyBestFit(DBGConsultaDECV  );
  DBGConsulta.ApplyBestFit(DBGConsultaDECR  );
  DBGConsulta.ApplyBestFit(DBGConsultaDEEP  );
  DBGConsulta.ApplyBestFit(DBGConsultaSTPD  );
  DBGConsulta.ApplyBestFit(DBGConsultaDEST  );
  DBGConsulta.ApplyBestFit(DBGConsultaAPI_NN);
  DBGConsulta.ApplyBestFit(DBGConsultaAPI_ST);
  DBGConsulta.ApplyBestFit(DBGConsultaAPI_MT);

  { Informações Adicionais }
            PosCount := oPosCount(''#$D'',CadastroINFADCAD.AsString);
  PNLINFADCAD.Height := IFThen((PosCount = 0) and (CadastroINFADCAD.AsString =  EmptyStr) ,00,
                        IFThen((PosCount = 0) and (CadastroINFADCAD.AsString <> EmptyStr) ,30,
                        IFThen((PosCount = 1),040,
                        IFThen((PosCount = 2),055,
                        IFThen((PosCount = 3),075,
                        IFThen((PosCount = 4),090,
                        IFThen((PosCount = 5),105,
                        IFThen((PosCount = 6),130,
                        IFThen((PosCount = 7),145,
                        IFThen((PosCount = 8),160,180))))))))));
end;

procedure Tfrmfin_rec_con.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGConsultaC_ID.Index] mod 2 <> 0 then
       AColor := $00EFF0F1;

    if ((AColor = $00EFF0F1) and (AFont.Color = clWhite)) then
         AFont.Color := clBlack;

    if (ANode.Values[DBGConsultaDEST.Index] = 'CARTÓRIO')           or (ANode.Values[DBGConsultaDEST.Index] = 'NÃO PAGO')        or
       (Pos('RECUPERAÇÃO',ANode.Values[DBGConsultaDEST.Index]) > 0) or (Pos('JUDICIAL',ANode.Values[DBGConsultaDEST.Index]) > 0) or
       (Pos('JURÍDICO'   ,ANode.Values[DBGConsultaDEST.Index]) > 0) or (Pos('ADVOGADO',ANode.Values[DBGConsultaDEST.Index]) > 0) or
       (Pos('SUSPENSO'   ,ANode.Values[DBGConsultaDEST.Index]) > 0) or (Pos('CANCELAD',ANode.Values[DBGConsultaDEST.Index]) > 0) or
       (Pos(LeftStr(ANode.Values[DBGConsultaDEST.Index],10),'PROTESTADO') > 0) then
    begin
      AFont.Color := clwhite;
      AColor      := clRed;
    end else
    if Pos(LeftStr(ANode.Values[DBGConsultaSTPD.Index],3),'ABADEV') > 0 then
    begin
      AFont.Color := clBlack;
      AColor      := clYellow;
    end else
    begin
      if (AColumn = DBGConsultaDOCUMENTO) or (AColumn = DBGConsultaTITULO) or (AColumn = DBGConsultaVDUP) then
      begin
        AColor      := clGray;
        AFont.Color := clWhite;
        AFont.Style := [fsBold];
      end;

      if (AColumn = DBGConsultaRECO) and (RightStr(ANode.Values[DBGConsultaRECO.Index],1) <> '1') then
      begin
        AColor      := clGray;
        AFont.Color := clWhite;
        AFont.Style := [fsBold];
      end;

      if (AColumn = DBGConsultaVJUR) and (ANode.Values[DBGConsultaVJUR.Index] > 0) then
      begin
        AFont.Color := clWhite;
        AColor      := clGray;
      end;

      if (AColumn = DBGConsultaVMUL) and (ANode.Values[DBGConsultaVMUL.Index] > 0) then
      begin
        AFont.Color := clWhite;
        AColor      := clGray;
      end;

      if (AColumn = DBGConsultaVDSC) and (ANode.Values[DBGConsultaVDSC.Index] > 0) then
      begin
        AFont.Color := clWhite;
        AColor      := clGray;
      end;

      { Situações NÃO PAGAS }
      if (AColumn = DBGConsultaDEST) or (AColumn = DBGConsultaDTBX) then
         if Pos('PRORROGADO',ANode.Values[DBGConsultaDEST.Index]) > 0 then
         begin
           AFont.Color := clBlack;
           AColor      := $008CC6FF;
         end else
         if Pos('BAIXA',ANode.Values[DBGConsultaDEST.Index]) > 0 then
         begin
           AFont.Color := clWhite;
           AColor      := clGray;
         end;

      { Pagos }
      if AColumn = DBGConsultaVPAG then
      begin
        if ANode.Values[DBGConsultaDEST.Index] = 'PAGO' then
        begin
          AFont.Color := clBlack;
          AColor      := $00C4FFC4;
        end else
        begin
          AFont.Color := clBlack;
          AColor      := $009FFF9F;
        end;

        if LeftStr(ANode.Values[DBGConsultaDEST.Index],4) = 'PAGO' then
           AFont.Style := [fsBold];
      end;

      if ((AColumn = DBGConsultaDTPG) or (AColumn = DBGConsultaDEST)) and (LeftStr(ANode.Values[DBGConsultaDEST.Index],4) = 'PAGO') then
      begin
        if ANode.Values[DBGConsultaDEST.Index] = 'PAGO' then
        begin
          AFont.Color := clBlack;
          AColor      := $00C4FFC4;
        end else
        begin
          AFont.Color := clBlack;
          AColor      := $009FFF9F;
        end;
      end;

      { Pendentes }
      if AColumn = DBGConsultaVPEN then
      begin
        AColor      := clInfobk;
        AFont.Color := clBlack;

        if ANode.Values[DBGConsultaVPEN.Index] <> 0 then
           AFont.Style := [fsBold];
      end;

      { Baixas }
      if AColumn = DBGConsultaDTBX then
      begin
        AColor      := clWhite;
        AFont.Color := clBlack;
      end;

      { API BOL }    
      if (AColumn = DBGConsultaAPI_CA) or (AColumn = DBGConsultaAPI_DTCA) or (AColumn = DBGConsultaAPI_DTED) or (AColumn = DBGConsultaAPI_NN) or (AColumn = DBGConsultaAPI_ST) or (AColumn = DBGConsultaAPI_MT) or (AColumn = DBGConsultaAPI_INFADCAD) then
      begin
        AColor      := $00E5E5E5;
        AFont.Color := clBlack;
      end;

      if AColumn = DBGConsultaAPI_INFADCAD then
         if ANode.Values[DBGConsultaAPI_INFADCAD.Index] <> Null then
            if ANode.Values[DBGConsultaAPI_INFADCAD.Index] <> EmptyStr then
            begin
              AColor      := clInfobk;
              AFont.Color := clBlack;
            end;
    end;
  end;
end;

procedure Tfrmfin_rec_con.SIMRelatoriosClick(Sender: TObject);
begin
  inherited;
  frmrelatorio_geral := TFrmrelatorio_geral.Create(Nil);
  with frmrelatorio_geral do
  try
    tsFIN_REC.TabVisible := true;
    pcMAIN.ActivePage    := tsFIN_REC;
    cbFIN_REC_TREL.Tag   := GBCadastro.Tag;

    cbFIN_REC_TREL.Descriptions.Clear;
    cbFIN_REC_TREL.Descriptions.Add(IFThen(GBCadastro.Tag = 0,'RECEBIMENTOS DE TÍTULOS BANCÁRIOS','RECEBIMENTOS DE TÍTULOS EM CARTEIRA'));
    cbFIN_REC_TREL.Descriptions.Add(IFThen(GBCadastro.Tag = 0,'RECEBIMENTOS DE CONTAS BANCÁRIAS','RECEBIMENTOS DE CONTAS EM CARTEIRA'));

    cbFIN_REC_TREL.Values.Clear;
    cbFIN_REC_TREL.Values.Add(IFThen(GBCadastro.Tag = 0,'RECEBIMENTOS DE TÍTULOS BANCÁRIOS','RECEBIMENTOS DE TÍTULOS EM CARTEIRA'));
    cbFIN_REC_TREL.Values.Add(IFThen(GBCadastro.Tag = 0,'RECEBIMENTOS DE CONTAS BANCÁRIAS' ,'RECEBIMENTOS DE CONTAS EM CARTEIRA'));
    cbFIN_REC_TREL.Text :=    IFThen(GBCadastro.Tag = 0,'RECEBIMENTOS DE TÍTULOS BANCÁRIOS','RECEBIMENTOS DE TÍTULOS EM CARTEIRA');

    cbFIN_REC_DATA.Text  := '';

    with SQLConsulta do
    begin
      { Cliente }
      Close;
      SQL.Clear;
      SQL.Add('SELECT   PK.FANTASIA,MAX(PK.RAZAO)');
      SQL.Add('FROM     CAD_CLI     AS PK');
      SQL.Add('JOIN     CAD_CLI_CRD AS FK ON (FK.IDCD = PK.ID AND FK.IDEP = ''' + RECParametros.EP_ID + ''')');
      SQL.Add('GROUP BY 1');
      SQL.Add('ORDER BY 1');
      ExecQuery;
      while not eof do
      begin
        cbFIN_REC_DCLI.Items.Add(Current.Vars[0].AsString);
        cbFIN_REC_RCLI.Items.Add(Current.Vars[1].AsString);
        next;
      end;

      { Vendedor }
      Close;
      SQL.Clear;
      SQL.Add('SELECT   PK.LOGIN');
      SQL.Add('FROM     TAB_USER AS PK');
      SQL.Add('WHERE    PK.ID > 0');
      SQL.Add('AND      PK.GRUPO = ''VEN''');
      SQL.Add('ORDER BY 1');
      ExecQuery;
      while not eof do
      begin
        cbFIN_REC_DVEN.Items.Add(Current.Vars[0].AsString);
        next;
      end;

      { Representante }
      Close;
      SQL.Clear;
      SQL.Add('SELECT   PK.FANTASIA');
      SQL.Add('FROM     CAD_REP  AS PK');
      SQL.Add('WHERE    PK.ID > 0');
      SQL.Add('ORDER BY 1');
      ExecQuery;
      while not eof do
      begin
        cbFIN_REC_DREP.Items.Add(Current.Vars[0].AsString);
        next;
      end;

      { Tipos }
      Close;
      SQL.Clear;
      SQL.Add('SELECT   PK.DESCRICAO FROM TAB_TPO AS PK');
      SQL.Add('WHERE    PK.FIN_REC_' + IFThen(GBCadastro.Tag = 0,'BAN','CAR') + ' = 1');
      SQL.Add('ORDER BY 1');
      ExecQuery;
      while not eof do
      begin
        frmrelatorio_geral.cbFIN_REC_STPD.Values.Add(Current.Vars[0].AsString);
        frmrelatorio_geral.cbFIN_REC_STPD.Descriptions.Add(Current.Vars[0].AsString);
        next;
      end;

      { Situação }
      Close;
      SQL.Clear;
      SQL.Add('SELECT   PK.DESCRICAO FROM TAB_STA AS PK');
      SQL.Add('WHERE    PK.FIN_REC = 1');
      SQL.Add('ORDER BY 1');
      ExecQuery;
      while not eof do
      begin
        frmrelatorio_geral.cbFIN_REC_STFI.Values.Add(Current.Vars[0].AsString);
        frmrelatorio_geral.cbFIN_REC_STFI.Descriptions.Add(Current.Vars[0].AsString);
        next;
      end;
    end;

    cbFIN_REC_STPD.Text  := IFThen(GBCadastro.Tag = 0,'DUPLICATA','CARTEIRA');
    cbFIN_REC_STFI.Text  := 'PENDENTE';
    ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
  end;
end;

end.


