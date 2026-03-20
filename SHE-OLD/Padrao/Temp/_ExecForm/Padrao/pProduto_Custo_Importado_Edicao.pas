unit pProduto_Custo_Importado_Edicao;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefaultEdicaoGrid, cxGraphics, dxExEdtr, IBCustomDataSet,
  ActnList, dxDockControl, dxBar, dxBarExtItems, ImgList, IBEvents,
  IBStoredProc, IBSQL, IBDatabase, DB, IBQuery, ComCtrls, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDockPanel, ExtCtrls, dxPageControl, cxControls,
  dxStatusBar, dxEdLib, dxEditor, StdCtrls, rxSpeedbar, dxDBTLCl, dxGrClms,
  math,StrUtils;

type
  TFrmProduto_Custo_Importado_Edicao = class(TFrmDefaultEdicaoGrid)
    DSPedido: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    DPPlanilha: TdxDockPanel;
    SBEdicao: TSpeedBar;
    SSEdicao: TSpeedbarSection;
    SIAppend: TSpeedItem;
    ILEdicao: TImageList;
    BLBNovo: TdxBarLargeButton;
    ACTNovo: TAction;
    ACTSalva: TAction;
    BLBSalva: TdxBarLargeButton;
    FT: TIBQuery;
    DTSFT: TDataSource;
    SQLConsulta_Aux: TIBSQL;
    BLBItem: TdxBarLargeButton;
    ACTItem: TAction;
    SQLEdicao_Aux: TIBSQL;
    GBInfAdic: TGroupBox;
    LANome: TLabel;
    EDNome: TdxMaskEdit;
    GBInfCpl: TGroupBox;
    EMINFCOM: TdxMemo;
    SIEdit: TSpeedItem;
    SIDelete: TSpeedItem;
    SIPost: TSpeedItem;
    SICancel: TSpeedItem;
    IETipo: TdxImageEdit;
    LATipo: TLabel;
    LADEED: TLabel;
    IEEmpresa: TdxImageEdit;
    LAEmpresa: TLabel;
    CadastroID: TLargeintField;
    CadastroIDEP: TSmallintField;
    CadastroIDEV: TLargeintField;
    CadastroCDEV: TSmallintField;
    CadastroDTEV: TDateTimeField;
    CadastroITEM: TIntegerField;
    CadastroDTCA: TDateTimeField;
    CadastroCTNR: TIBStringField;
    CadastroARTIGO: TIBStringField;
    CadastroDESCRICAO: TIBStringField;
    CadastroVUPKG: TIBBCDField;
    CadastroVULKG: TIBBCDField;
    CadastroVUMKG: TIBBCDField;
    CadastroQTRL: TIntegerField;
    CadastroPESOB: TIBBCDField;
    CadastroVPROD: TIBBCDField;
    CadastroVUCOTA: TFloatField;
    CadastroVUTAXA: TFloatField;
    CadastroTSDE: TIBBCDField;
    CadastroTCDE: TIBBCDField;
    CadastroC_ID: TLargeintField;
    CadastroFLAG: TSmallintField;
    CadastroQTDE: TIBBCDField;
    CadastroNSEQ: TIntegerField;
    DBGConsultaDTCA: TdxDBGridDateColumn;
    DBGConsultaCTNR: TdxDBGridPickColumn;
    DBGConsultaARTIGO: TdxDBGridMaskColumn;
    DBGConsultaDESCRICAO: TdxDBGridPickColumn;
    DBGConsultaVUPKG: TdxDBGridMaskColumn;
    DBGConsultaVULKG: TdxDBGridMaskColumn;
    DBGConsultaVUMKG: TdxDBGridMaskColumn;
    DBGConsultaQTRL: TdxDBGridMaskColumn;
    DBGConsultaPESOB: TdxDBGridMaskColumn;
    DBGConsultaVPROD: TdxDBGridMaskColumn;
    DBGConsultaVUCOTA: TdxDBGridMaskColumn;
    DBGConsultaVUTAXA: TdxDBGridMaskColumn;
    DBGConsultaTSDE: TdxDBGridMaskColumn;
    DBGConsultaQTDE: TdxDBGridMaskColumn;
    DBGConsultaTCDE: TdxDBGridMaskColumn;
    DBGConsultaFLAG: TdxDBGridMaskColumn;
    DBGConsultaC_ID: TdxDBGridColumn;
    CadastroCOMPLEMENTO: TIBStringField;
    DBGConsultaCOMPLEMENTO: TdxDBGridMaskColumn;
    FTID: TIntegerField;
    FTPRO_CART: TIBStringField;
    FTPRO_FOTO: TBlobField;
    procedure FormCreate(Sender: TObject);
    procedure ACTNovoExecute(Sender: TObject);
    procedure ACTSalvaExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CadastroNewRecord(DataSet: TDataSet);
    procedure CadastroAfterPost(DataSet: TDataSet);
    procedure CadastroAfterDelete(DataSet: TDataSet);
    procedure CadastroVUCOTAValidate(Sender: TField);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure CadastroVUTAXAValidate(Sender: TField);
    procedure CadastroBeforeInsert(DataSet: TDataSet);
    procedure DTSCadastroStateChange(Sender: TObject);
    procedure ACTDeleteExecute(Sender: TObject);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure CadastroBeforePost(DataSet: TDataSet);
    procedure IETipoChange(Sender: TObject);
    procedure DBGConsultaARTIGOValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGConsultaCTNRValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure CadastroVUPKGValidate(Sender: TField);
    procedure CadastroVUMKGValidate(Sender: TField);
    procedure CadastroPESOBValidate(Sender: TField);
    procedure CadastroVPRODValidate(Sender: TField);
    procedure CadastroQTDEValidate(Sender: TField);
    procedure DBGConsultaVULKGValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGConsultaPESOBValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGConsultaVUCOTAValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGConsultaDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure _Edicao;
    procedure _Pedido;
    procedure _Menu;
    procedure _Checkout;
    procedure _CheckConstraints;
  public
    { Public declarations }
  end;

var
  FrmProduto_Custo_Importado_Edicao: TFrmProduto_Custo_Importado_Edicao;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmProduto_Custo_Importado_Edicao.FormCreate(Sender: TObject);
begin
  { ADMIN }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM MANAGER }
  REC_SHE_DEF.FB_Event := 'CUSTOS'; { Eventos }

  { GRANT }
  REC_SHE_DEF.GDescricao  := 'Custos';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;

  _Edicao;
  try
    oOTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID,FANTASIA FROM TAB_PAR_SIS GROUP BY 1,2 ORDER BY 1 ');
      Prepare;
      ExecQuery;
      while not Eof do
      begin
        IEEmpresa.Values.Add(Current.Vars[0].AsString);
        IEEmpresa.Descriptions.Add(Current.Vars[1].AsString);
        Next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT DESCRICAO FROM TAB_SCT WHERE ID > 0 ORDER BY DESCRICAO');
      Prepare;
      ExecQuery;
      while not Eof do
      begin
        DBGConsultaDESCRICAO.Items.Add(Current.Vars[0].AsString);
        Next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT CON_CTNR FROM CAD_CON GROUP BY CON_CTNR ORDER BY CON_CTNR');
      Prepare;
      ExecQuery;
      while not eof do
      begin
        DBGConsultaCTNR.Items.Add(Current.Vars[0].AsString);
        next;
      end;

      if StrToInt(REC_SHE_DEF.IDPK) > 0 then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM '+REC_SHE_DEF.FB_PSQ_TB_NO_PK);
        SQL.Add('WHERE  ID = '''+REC_SHE_DEF.IDPK+'''');
        ExecQuery;

        REC_SHE_DEF.LG_ID := Current.ByName('IDCA').AsInteger;
        IEEmpresa.Text    := Current.ByName('IDEP').AsString;
        EDNome.Text       := Current.ByName('DESCRICAO').AsString;
        IETipo.Text       := Current.ByName('CDTP').AsString;

        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM CAD_PRO_PCI_RFK');
        SQL.Add('WHERE    CDFK = '''+REC_SHE_DEF.IDPK+'''');
        SQL.Add('ORDER BY ITEM');
        ExecQuery;
        while not Eof do
        begin
          Cadastro.Append;
          CadastroNSEQ.Value        := Current.ByName('ID').AsInteger;
          CadastroITEM.Value        := Current.ByName('ITEM').AsInteger;
          CadastroDTCA.Value        := Current.ByName('DTEN').AsDate;
          CadastroCTNR.Value        := Current.ByName('CTNR').AsString;
          CadastroARTIGO.Value      := Current.ByName('CPTP').AsString;
          CadastroDESCRICAO.Value   := Current.ByName('DETP').AsString;
          CadastroCOMPLEMENTO.Value := Current.ByName('Detalhe').AsString;
          CadastroVUPKG.Value       := Current.ByName('CPKG').AsFloat;
          CadastroVULKG.Value       := Current.ByName('CLKG').AsFloat;
          CadastroVUMKG.Value       := Current.ByName('CMKG').AsFloat;
          CadastroQTRL.Value        := Current.ByName('QTRL').AsInteger;
          CadastroPESOB.Value       := Current.ByName('PESOB').AsFloat;
          CadastroVPROD.Value       := Current.ByName('CMDTOT').AsFloat;
          CadastroVUCOTA.Value      := Current.ByName('VUCOTA').AsFloat;
          CadastroVUTAXA.Value      := Current.ByName('VUTAXA').AsFloat;
          CadastroTSDE.Value        := Current.ByName('CMRTOT').AsFloat;
          CadastroQTDE.Value        := Current.ByName('QTUCOM').AsInteger;
          CadastroTCDE.Value        := Current.ByName('CMUCOM').AsFloat;
          Cadastro.Post;
          Next;
        end;
        oRTransact(TEdicao);
        ACTSalva.Enabled := False;
      end;
    end;
  finally
    oCTransact(TConsulta);
  end;
end;

procedure TFrmProduto_Custo_Importado_Edicao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Cadastro.State in [dsEdit,dsInsert] then
     if not oEmpty(CadastroQTDE.AsFloat) then Cadastro.Post else Cadastro.Cancel;

  if ACTSalva.Enabled then
     case MessageBox(handle,'Existem Alterações Pendentes !'+#13+
                            'Deseja Salvar ?',
                            PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
          MRCancel: Abort;
          MRNo    : ACTSalva.Enabled := False;
          MRYes   : try ACTSalva.Execute;
                    finally if ACTSalva.Enabled then Abort;
                    end;
     end;
end;

procedure TFrmProduto_Custo_Importado_Edicao.ACTNovoExecute(Sender: TObject);
begin
  if Cadastro.State in [dsEdit,dsInsert] then
     if not oEmpty(CadastroQTDE.AsFloat) then Cadastro.Post else Cadastro.Cancel;

  if ACTSalva.Enabled then
     case MessageBox(handle,'Existem Alterações Pendentes !'+#13+
                            'Deseja Salvar ?',
                            PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
          MRCancel: Abort;
          MRYes   : try ACTSalva.Execute;
                    finally if ACTSalva.Enabled then Abort;
                    end;
     end;

  _Edicao;
  _Menu;
  _Pedido;

  REC_SHE_DEF.IDPK := '0';
  EDNome.Text := '';
  EDNome.SetFocus;
end;

procedure TFrmProduto_Custo_Importado_Edicao.ACTSalvaExecute(Sender: TObject);
begin
  if oYesNo(handle,'Salvar Planilha ?') = mrNo then
     Abort;

  _Checkout;
  _CheckConstraints;
  try
    if oEmpty(StrToInt(REC_SHE_DEF.IDPK)) then
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(IDG_CAD_PRO_PCI_RPK,0) FROM RDB$DATABASE');
      ExecQuery;
      REC_SHE_DEF.IDPK := Current.Vars[0].AsInteger + 1;
    end;
    bSP_CAD_PRO_PCI_RPK(SPEdicao,REC_SHE_DEF.IDPK,StrToInt(IEEmpresa.Text),REC_SHE_DEF.LG_ID,IETipo.Text,EDNome.Text,EMINFCOM.Text);
    while not Cadastro.Eof do
    begin
      SPEdicao.Tag := CadastroFLAG.AsInteger;
      bSP_CAD_PRO_PCI_RFK(SPEdicao,REC_SHE_DEF.IDPK,CadastroITEM.AsInteger,CadastroDTCA.AsDateTime,CadastroCTNR.AsString,
                                   CadastroArtigo.AsString,CadastroDescricao.AsString,CadastroCOMPLEMENTO.AsString,
                                   CadastroVUPKG.AsFloat,CadastroVULKG.AsFloat,CadastroVUMKG.AsFloat,CadastroQTRL.AsInteger,CadastroPESOB.AsFloat,
                                   CadastroVPROD.AsFloat,CadastroVUCOTA.AsFloat,CadastroVUTAXA.AsFloat,CadastroTSDE.AsFloat,CadastroQTDE.AsFloat,CadastroTCDE.AsFloat);
      Cadastro.Next;
    end;
    oRTransact(TEdicao);
  except
    on E: Exception do
    begin
      ACTSalva.Enabled := True;
      oRTransact(TEdicao,ltRead_Only_Release_Rollback);
      oException(Nil,'Falha ao tentar salvar lançamento !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;

  oAviso(handle,'Lançamentos Efetuados com Sucesso !');

  ACTSalva.Enabled := False;
  Close;
end;

procedure TFrmProduto_Custo_Importado_Edicao._Edicao;
begin
  with SQLEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(IDG_EVENTO,1) FROM RDB$DATABASE');
    ExecQuery;
    REC_SHE_DEF.IDEV := Current.Vars[0].AsString;
  end;

  with Cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   ID,IDEP,IDEV,CDEV,DTEV,ITEM,');
    SelectSQL.Add('         DTCA,CTNR,ARTIGO,DESCRICAO,COMPLEMENTO,');
    SelectSQL.Add('         VUPKG,VULKG,VUMKG,');
    SelectSQL.Add('         QTDE,QTRL,PESOB,VPROD,');
    SelectSQL.Add('         VUCOTA,VUTAXA,');
    SelectSQL.Add('         TSDE,TCDE,');
    SelectSQL.Add('         NSEQ,FLAG');
    SelectSQL.Add('FROM     TAB_EDI_PRO');
    SelectSQL.Add('WHERE    IDEV = '''+REC_SHE_DEF.IDEV+'''');
    SelectSQL.Add('AND      CDEV = '''+REC_SHE_DEF.CDEV+'''');
    SelectSQL.Add('ORDER BY ITEM');
  end;

  oRTransact(TEdicao);
end;

procedure TFrmProduto_Custo_Importado_Edicao._Pedido;
begin
{}
end;

procedure TFrmProduto_Custo_Importado_Edicao.CadastroNewRecord(DataSet: TDataSet);
begin
  CadastroIDEP.Value   := RECParametros.EP_ID;
  CadastroIDEV.Value   := REC_SHE_DEF.IDEV;
  CadastroCDEV.Value   := REC_SHE_DEF.CDEV;
  CadastroDTCA.Value   := RECParametros.SHE_DATA;
  CadastroVUPKG.Value  := 0;
  CadastroVULKG.Value  := 0;
  CadastroVUMKG.Value  := 0;
  CadastroQTRL.Value   := 0;
  CadastroPESOB.Value  := 0;
  CadastroVPROD.Value  := 0;
  CadastroVUCOTA.Value := 0;
  CadastroVUTAXA.Value := 0;
  CadastroTSDE.Value   := 0;
  CadastroQTDE.Value   := 0;
  CadastroTCDE.Value   := 0;
  CadastroNSEQ.Value   := 0;
  CadastroFLAG.Value   := 0;

  if Showing then
  with SQLEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COALESCE(MAX(ITEM),0) + 1');
    SQL.Add('FROM   TAB_EDI_PRO');
    SQL.Add('WHERE  IDEV = '''+REC_SHE_DEF.IDEV+'''');
    SQL.Add('AND    CDEV = '''+REC_SHE_DEF.CDEV+'''');
    ExecQuery;
    CadastroITEM.Value := Current.Vars[0].AsInteger;
  end;
end;

procedure TFrmProduto_Custo_Importado_Edicao._Menu;
begin
  ACTSalva.Enabled      := (Cadastro.RecNo > 0);
  ACTRelatorios.Enabled := (not ACTSalva.Enabled);
end;

procedure TFrmProduto_Custo_Importado_Edicao.CadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
  _Menu;
end;

procedure TFrmProduto_Custo_Importado_Edicao.CadastroAfterDelete(DataSet: TDataSet);
begin
  inherited;
  _Menu;
end;

procedure TFrmProduto_Custo_Importado_Edicao.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
   { if ANode.Values[DBGConsultaC_ID.Index] mod 2 = 0 then
       AColor := $00EFF0F1;

    if ((AColor = $00EFF0F1) and (AFont.Color = clWhite)) then
       AFont.Color := clBlack;
    }
    if AColumn = DBGConsultaVUMKG then
    begin
      AColor      := $00F0D7A2;
      AFont.Color := clBlack;
    end;

    if AColumn = DBGConsultaVPROD then
    begin
      AColor      := $00CCE0F7;
      AFont.Color := clBlack;
    end;

    if AColumn = DBGConsultaTSDE then
    begin
      AColor      := $007EB1EB;
      AFont.Color := clBlack;
    end;

    if AColumn = DBGConsultaVUCOTA then
    begin
      AColor      := clWhite;
      AFont.Color := $000024B3;
    end;

    if AColumn = DBGConsultaTCDE then
    begin
      AColor      := $00C4FFC4;
      AFont.Color := clBlack;
    end;

    if ANode.Values[DBGConsultaFLAG.Index] = '1' then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end;

    if AColumn = DBGConsultaDESCRICAO then
       if DBGConsultaDESCRICAO.DisableEditor then
       begin
         AColor      := clBtnFace;
         AFont.Color := clBlack;
       end;

    if AColumn.DisableEditor then
    begin
      AColor      := clBtnFace;
      AFont.Color := clBlack;
    end;
  end;
end;

procedure TFrmProduto_Custo_Importado_Edicao.CadastroCalcFields(DataSet: TDataSet);
begin
  CadastroC_ID.Value := Cadastro.RecNo;
end;

procedure TFrmProduto_Custo_Importado_Edicao._Checkout;
begin
  if Cadastro.State in [dsEdit,dsInsert] then
     Cadastro.Post else
     Cadastro.Cancel;
     Cadastro.First;

  ActiveControl := Nil;

  if oEmpty(IEEmpresa.Text) then oException(IEEmpresa,'Nome da Empresa não Informada !');
  if oEmpty(EDNome.Text)    then oException(EDNome   ,'Nome da Planilha não Informada !');
  if oEmpty(IETipo.Text)    then oException(IETipo   ,'Tipo de Pesquisa não Informada !');
end;

procedure TFrmProduto_Custo_Importado_Edicao._CheckConstraints;
begin
  if not oEmpty(EDNome.Text) then
  try
    oOTransact(TConsulta);
    with SQLConsulta do
    begin
      if not oEmpty(EDNome.Text) then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM CAD_PRO_PCI_RPK');
        SQL.Add('WHERE  DESCRICAO = '''+EDNome.Text    +'''');
        SQL.Add('AND          ID <> '''+REC_SHE_DEF.IDPK+'''');
        ExecQuery;
        if not Eof then
           oException(EDNome,'Nome já Cadastrado !');
      end;
    end;
  finally
    oCTransact(TConsulta);
  end;
end;

procedure TFrmProduto_Custo_Importado_Edicao.CadastroBeforeInsert(
  DataSet: TDataSet);
begin
  if oEmpty(IETipo.Text) then
     DataBaseError('Tipo de Pesquisa não Informada !');
end;

procedure TFrmProduto_Custo_Importado_Edicao.DTSCadastroStateChange(
  Sender: TObject);
begin
  inherited;
  oState(Cadastro,SBEdicao);
end;

procedure TFrmProduto_Custo_Importado_Edicao.ACTDeleteExecute(
  Sender: TObject);
begin
  if oEmpty(CadastroNSEQ.AsInteger) then
     inherited else
  if CadastroId.AsInteger > 0 then
  begin
    Cadastro.Edit;
    CadastroFLAG.Value := 1;
    Cadastro.Post;
  end
end;

procedure TFrmProduto_Custo_Importado_Edicao.CadastroAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DBGConsulta.FocusedColumn := 0;
end;

procedure TFrmProduto_Custo_Importado_Edicao.CadastroBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  CadastroVUCOTA.Value := RoundTo(CadastroVUCOTA.AsFloat,-2);
  CadastroVUTAXA.Value := RoundTo(CadastroVUTAXA.AsFloat,-2);
end;

procedure TFrmProduto_Custo_Importado_Edicao.IETipoChange(
  Sender: TObject);
begin
  DBGConsultaARTIGO.Visible    := (Pos(IETipo.Text,'01') > 0);
  DBGConsultaDESCRICAO.Caption := IFThen(DBGConsultaARTIGO.Visible,'Descrição',IETipo.Descriptions[IETipo.Values.IndexOf(IETipo.Text)]);
  DBGConsultaDESCRICAO.Items.Clear;

  if IETipo.Text = '2' then
  with FBird do
  try
    oOTransact(TFBConsulta);
    with SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT DESCRICAO FROM TAB_SCT WHERE ID > 0 ORDER BY DESCRICAO');
      Prepare;
      ExecQuery;
      while not Eof do
      begin
        DBGConsultaDESCRICAO.Items.Add(Current.Vars[0].AsString);
        Next;
      end;
    end;
  finally
    oCTransact(TFBConsulta);
  end;
end;

procedure TFrmProduto_Custo_Importado_Edicao.DBGConsultaARTIGOValidate(
  Sender: TObject; var ErrorText: String; var Accept: Boolean);
begin
  DBGConsulta.EditingText := Trim(DBGConsulta.EditingText);
  if ((not oEmpty(DBGConsulta.EditingText)) and (Cadastro.State in [dsInsert,dsEdit])) then
  try
    oOTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT FIRST 1 PRO_CART,PRO_DPRO FROM CAD_PRO');
      SQL.Add('WHERE  PRO_CART = '''+DBGConsulta.EditingText+'''');
      Prepare;
      ExecQuery;
      CadastroArtigo.Value    := Current.Vars[0].AsString;
      CadastroDescricao.Value := Current.Vars[1].AsString;

      if oEmpty(CadastroArtigo.AsString) then
         DataBaseError('Artigo não Cadastrado !');

      DBGConsultaCOMPLEMENTO.Field.FocusControl;
    end;
  finally
    oCTransact(TConsulta);
  end;
end;

procedure TFrmProduto_Custo_Importado_Edicao.DBGConsultaCTNRValidate(
  Sender: TObject; var ErrorText: String; var Accept: Boolean);
begin
  DBGConsulta.EditingText := Trim(DBGConsulta.EditingText);
  if ((not oEmpty(DBGConsulta.EditingText)) and (Cadastro.State in [dsInsert,dsEdit])) then
  try
    oOTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CON_CTNR FROM CAD_CON');
      SQL.Add('WHERE  CON_CTNR = '''+DBGConsulta.EditingText+'''');
      Prepare;
      ExecQuery;
      CadastroCTNR.Value := Current.Vars[0].AsString;

      if oEmpty(CadastroCTNR.AsString) then
         DataBaseError('Nº do container não Cadastrado !');
    end;
  finally
    oCTransact(TConsulta);
  end;
end;

procedure TFrmProduto_Custo_Importado_Edicao.CadastroVUPKGValidate(
  Sender: TField);
begin
  CadastroVUMKG.Value := CadastroVUPKG.AsFloat + CadastroVULKG.AsFloat;
end;

procedure TFrmProduto_Custo_Importado_Edicao.CadastroVUMKGValidate(
  Sender: TField);
begin
  CadastroVPROD.Value := CadastroPESOB.AsFloat * CadastroVUMKG.AsFloat;
end;

procedure TFrmProduto_Custo_Importado_Edicao.CadastroVUCOTAValidate(Sender: TField);
begin
  CadastroVUTAXA.Value := IFThen(CadastroVUCOTA.AsFloat > 0,CadastroVUCOTA.AsFloat + 0.15,0);
end;

procedure TFrmProduto_Custo_Importado_Edicao.CadastroPESOBValidate(
  Sender: TField);
begin
  CadastroVPROD.Value := CadastroPESOB.AsFloat * CadastroVUMKG.AsFloat;
end;

procedure TFrmProduto_Custo_Importado_Edicao.CadastroVPRODValidate(
  Sender: TField);
begin
  CadastroTSDE.Value := CadastroVPROD.AsFloat * CadastroVUTAXA.AsFloat;
end;

procedure TFrmProduto_Custo_Importado_Edicao.CadastroVUTAXAValidate(
  Sender: TField);
begin
  CadastroTSDE.Value := CadastroVPROD.AsFloat * CadastroVUTAXA.AsFloat;
end;

procedure TFrmProduto_Custo_Importado_Edicao.CadastroQTDEValidate(
  Sender: TField);
begin
  if ((CadastroTSDE.AsFloat > 0) and (CadastroQTDE.AsFloat > 0)) then
       CadastroTCDE.Value := RoundTO(CadastroTSDE.AsFloat / CadastroQTDE.AsFloat,-2)
  else
       CadastroTCDE.Value := 0;
end;

procedure TFrmProduto_Custo_Importado_Edicao.DBGConsultaVULKGValidate(
  Sender: TObject; var ErrorText: String; var Accept: Boolean);
begin
{ Ricardo - Corrigir
  if Cadastro.State in [dsInsert,dsEdit] then
     DBGConsulta.FocusedColumn := DBGConsultaQTRL.ColIndex;}
end;

procedure TFrmProduto_Custo_Importado_Edicao.DBGConsultaPESOBValidate(
  Sender: TObject; var ErrorText: String; var Accept: Boolean);
begin
{  if Cadastro.State in [dsInsert,dsEdit] then
     DBGConsulta.FocusedColumn := DBGConsultaVUCOTA.ColIndex;}
end;

procedure TFrmProduto_Custo_Importado_Edicao.DBGConsultaVUCOTAValidate(
  Sender: TObject; var ErrorText: String; var Accept: Boolean);
begin
{  if Cadastro.State in [dsInsert,dsEdit] then
     DBGConsulta.FocusedColumn := DBGConsultaQTDE.ColIndex;}
end;

procedure TFrmProduto_Custo_Importado_Edicao.DBGConsultaDblClick(
  Sender: TObject);
begin
  DBGConsulta.SaveToHTML('C:\Sheild\Documentos\' + EDNome.Text + '.html',False);
end;

end.




