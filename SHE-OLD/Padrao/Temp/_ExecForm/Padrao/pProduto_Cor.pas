unit pProduto_Cor;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefaultEdicaoGrid, cxGraphics, dxExEdtr, IBCustomDataSet,
  ActnList, dxDockControl, dxBar, dxBarExtItems, ImgList, IBEvents,
  IBStoredProc, IBSQL, IBDatabase, DB, IBQuery, ComCtrls, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDockPanel, ExtCtrls, dxPageControl, cxControls,
  dxStatusBar, dxDBTLCl, dxGrClms, math, StrUtils;

type
  TFrmProduto_Cor = class(TFrmDefaultEdicaoGrid)
    CadastroC_ID: TIntegerField;
    CadastroID: TSmallintField;
    CadastroIDCA: TSmallintField;
    CadastroDTCA: TDateTimeField;
    CadastroIDED: TSmallintField;
    CadastroDTED: TDateTimeField;
    CadastroIDST: TSmallintField;
    CadastroCDST: TSmallintField;
    CadastroDTST: TDateTimeField;
    CadastroIP: TIBStringField;
    CadastroHOST: TIBStringField;
    CadastroREFERENCIA: TIBStringField;
    CadastroDESCRICAO: TIBStringField;
    CadastroSISTEMA: TIBStringField;
    CadastroESCALA: TIBStringField;
    CadastroPRECO: TSmallintField;
    CadastroPADRAO: TSmallintField;
    PNLConsultaFK: TPanel;
    DSConsultaFK: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    DPConsultaFK: TdxDockPanel;
    DBGConsultaFK: TdxDBGrid;
    ConsultaFK: TIBQuery;
    DSTConsultaFK: TDataSource;
    ConsultaFKARTIGO: TIBStringField;
    ConsultaFKPRODUTO: TIBStringField;
    ConsultaFKDESCRICAO: TIBStringField;
    ConsultaFKEEP_QTDE: TIBBCDField;
    ConsultaFKPREVISAO: TIBStringField;
    ConsultaFKSITUACAO: TIBStringField;
    ConsultaFKID: TIntegerField;
    DBGConsultaFKARTIGO: TdxDBGridMaskColumn;
    DBGConsultaFKPRODUTO: TdxDBGridMaskColumn;
    DBGConsultaFKDESCRICAO: TdxDBGridMaskColumn;
    DBGConsultaFKEEP_QTDE: TdxDBGridMaskColumn;
    DBGConsultaFKEEP_QTRL: TdxDBGridMaskColumn;
    DBGConsultaFKPREVISAO: TdxDBGridMaskColumn;
    DBGConsultaFKSITUACAO: TdxDBGridMaskColumn;
    ConsultaFKC_ID: TIntegerField;
    DBGConsultaFKC_ID: TdxDBGridColumn;
    ConsultaFKEEP_QTRL: TLargeintField;
    BBPesquisa: TdxBarButton;
    BEPesquisa: TdxBarEdit;
    PMPesquisa: TdxBarPopupMenu;
    BLBPesquisa_Rapida: TdxBarLargeButton;
    BLBPesquisa_Cor: TdxBarLargeButton;
    BLBPesquisa_Escala: TdxBarLargeButton;
    BLBPesquisa_Sistema: TdxBarLargeButton;
    ACTPesquisa_Rapida: TAction;
    ACTPesquisa_Cor: TAction;
    ACTPesquisa_Escala: TAction;
    ACTPesquisa_Sistema: TAction;
    DBGConsultaDESCRICAO: TdxDBGridMaskColumn;
    DBGConsultaESCALA: TdxDBGridPickColumn;
    DBGConsultaSISTEMA: TdxDBGridPickColumn;
    DBGConsultaID: TdxDBGridMaskColumn;
    DBGConsultaREFERENCIA: TdxDBGridMaskColumn;
    DBGConsultaPRECO: TdxDBGridCheckColumn;
    DBGConsultaPADRAO: TdxDBGridCheckColumn;
    DBGConsultaC_ID: TdxDBGridColumn;
    CadastroREST: TIBStringField;
    DBGConsultaCDST: TdxDBGridMaskColumn;
    CadastroFLAG: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure ConsultaFKCalcFields(DataSet: TDataSet);
    procedure DBGConsultaFKCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure ACTPesquisa_RapidaExecute(Sender: TObject);
    procedure BEPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure CadastroNewRecord(DataSet: TDataSet);
    procedure CadastroPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure CadastroUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure CadastroBeforePost(DataSet: TDataSet);
    procedure CadastroAfterEdit(DataSet: TDataSet);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure ACTDeleteExecute(Sender: TObject);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
    procedure _Pesquisa;
  public
    { Public declarations }
  end;

var
  FrmProduto_Cor: TFrmProduto_Cor;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TFrmProduto_Cor.FormCreate(Sender: TObject);
begin
  { ADMIN }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_PRO_ADM'; { Eventos }

  { GRANT }
  REC_SHE_DEF.GDescricao  := 'Produtos';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;

  oOTransact(TConsulta);
  with ConsultaFK do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   CP.ID,CP.PRO_CART AS ARTIGO,CP.PRO_CPRO AS PRODUTO,');
    SQL.Add('         TRIM(CP.PRO_DPRO||'' ''||TRIM(COALESCE(CP.DEGRD,'''')||'' ''||TRIM(COALESCE(CP.DECOR,'''')||'' ''||TRIM(COALESCE(CP.CDGRD,'''')||'' ''||TRIM(COALESCE(CP.REGRD,'''')))))) AS DESCRICAO,');
    SQL.Add('         TRIM(CASE CP.REST');
    SQL.Add('                   WHEN ''A'' THEN ''ATIVO''');
    SQL.Add('                   WHEN ''I'' THEN ''INATIVO''');
    SQL.Add('                   WHEN ''PRÉ'' THEN ''PRÉ-CADASTRO''');
    SQL.Add('                   WHEN ''C'' THEN ''CANCELADO''');
    SQL.Add('                   ELSE ''NÃO INFOMARDO''');
    SQL.Add('              END) AS SITUACAO,');
    SQL.Add('         COALESCE(SUM(EEP_QTDE),0) AS EEP_QTDE,COALESCE(SUM(EEP_QTRL),0) AS EEP_QTRL,MAX(ECO_DECO) AS PREVISAO');
    SQL.Add('FROM     CAD_PRO AS CP');
    SQL.Add('LEFT');
    SQL.Add('JOIN     ESTOQUE AS E ON (E.IDCP = CP.ID)');
    SQL.Add('WHERE    CP.IDEP  = :IDEP');
    SQL.Add('AND      CP.IDCOR = :ID  ');
    SQL.Add('GROUP BY 1,2,3,4,5');
    SQL.Add('ORDER BY EEP_QTDE DESC,PRODUTO');
    ParamByName('IDEP').Value := RECParametros.EP_ID;
    Prepare;
  end;

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ESCALA FROM TAB_COR WHERE ESCALA IS NOT NULL ORDER BY 1');
    ExecQuery;
    while not Eof do
    begin
      DBGConsultaESCALA.Items.Add(Current.Vars[0].AsString);
      next;
    end;
  end;

  Cadastro.Open;
  Cadastro.Last;
end;

procedure TFrmProduto_Cor.FormActivate(Sender: TObject);
begin
  inherited;
  DBGConsulta.FocusedColumn := DBGConsultaDescricao.ColIndex;
end;

procedure TFrmProduto_Cor.CadastroCalcFields(DataSet: TDataSet);
begin
  CadastroC_ID.Value := Cadastro.RecNo;
end;

procedure TFrmProduto_Cor.ConsultaFKCalcFields(DataSet: TDataSet);
begin
  ConsultaFKC_ID.Value := ConsultaFK.RecNo;
end;

procedure TFrmProduto_Cor.CadastroNewRecord(DataSet: TDataSet);
begin
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(IDG_TAB_COR,0) + 1 FROM RDB$DATABASE');
    ExecQuery;
    CadastroId.Value := Current.Vars[0].AsInteger;
  end;

  CadastroIDCA.Value := RECUsuarios.Id;
  CadastroREST.Value := 'A';

  CadastroPadrao.Value := RECParametros.PRO_COR_PAD;
  CadastroPreco.Value  := RECParametros.PRO_COR_PED_PRC;

  CadastroIP.Value   := RECParametros.IP;
  CadastroHOST.Value := RECParametros.Host;
end;

procedure TFrmProduto_Cor.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DBGConsulta.FocusedColumn := DBGConsultaDescricao.ColIndex;
  DBGConsulta.SetFocus;
end;

procedure TFrmProduto_Cor.CadastroAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DBGConsulta.SetFocus;
end;

procedure TFrmProduto_Cor.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ASelected then
    if Cadastro.State = dsEdit then
    begin
       AFont.Color := clBlack;
       AColor      := clInfoBk;
    end;
end;

procedure TFrmProduto_Cor.DBGConsultaFKCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGConsultaFKSITUACAO.Index] = 'PRÉ-CADASTRO' then
    begin
      AFont.Color := clBlack;
      AColor      := clInfoBk;
    end else
    if ANode.Values[DBGConsultaFKSITUACAO.Index] = 'INATIVO' then
    begin
      AFont.Color := clWhite;
      AColor      := $000024B3;
    end;
  end;
end;

procedure TFrmProduto_Cor.ACTPesquisa_RapidaExecute(Sender: TObject);
begin
  BBPesquisa.Caption := TAction(Sender).Caption;
  _Pesquisa;
end;

procedure TFrmProduto_cor._Pesquisa;
begin
  if oEmpty(BEPesquisa.Text) then
     Exit;

  with Cadastro do
  try
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM TAB_COR');
    SelectSQL.Add('WHERE');

    if UpperCase(BEPesquisa.Text) = 'TODOS' then
       SelectSQL.Add('ID > 0')
    else
      if BBPesquisa.Caption = 'Cor' then
         SelectSQL.Add('DESCRICAO CONTAINING '''+BEPesquisa.Text+'''')
      else
         if BBPesquisa.Caption = 'Escala' then
            SelectSQL.Add('ESCALA CONTAINING '''+BEPesquisa.Text+'''')
         else
            if BBPesquisa.Caption = 'Sistema' then
               SelectSQL.Add('SISTEMA CONTAINING '''+BEPesquisa.Text+'''')
            else
            begin
              SelectSQL.Add('DESCRICAO CONTAINING '''+BEPesquisa.Text+''' OR ');
              SelectSQL.Add('ESCALA    CONTAINING '''+BEPesquisa.Text+''' OR ');
              SelectSQL.Add('SISTEMA   CONTAINING '''+BEPesquisa.Text+''''    );
            end;

    SelectSQL.Add('ORDER BY DESCRICAO');
    Open;
    if Cadastro.Eof then
       oException(DBGConsulta,BBPesquisa.Caption+' não Encontrado !');
  finally
    BEPesquisa.Text := EmptyStr;
    
    DBGConsulta.FocusedColumn := DBGConsultaDescricao.ColIndex;
    DBGConsulta.SetFocus;
  end;
end;


procedure TFrmProduto_Cor.BEPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then _Pesquisa;
end;

procedure TFrmProduto_Cor.ACTRelatoriosExecute(Sender: TObject);
begin
  uConstrucao('Relatório de cores de produtos.');
end;

procedure TFrmProduto_Cor.CadastroPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmProduto_Cor.CadastroUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmProduto_Cor.CadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if ((not oEmpty(CadastroESCALA.AsString)) and (oEmpty(CadastroSISTEMA.AsString))) then
       CadastroSISTEMA.Value   := RECParametros.PRO_COR_SIS;
//  REC_SHE_DEF.InsertValue     := CadastroDescricao.AsString;
end;

procedure TFrmProduto_Cor.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if ConsultaFK.State = dsInactive then ConsultaFK.Open;
end;

procedure TFrmProduto_Cor.ACTDeleteExecute(Sender: TObject);
begin
  if not REC_SHE_DEF.GDelete then
     DataBaseError('Acesso Negado !'+#13+
                   'Favor entrar em contato com o administrador do sistema.');


  if ((ACTDelete.Enabled) and (ACTDelete.Visible)  and (Cadastro.RecNo > 0) and (Cadastro.State = dsBrowse)) then
       if oYesNo(handle,'Confirma Exclusão do Registro ?') = mrNo then
          Abort;

  Cadastro.Edit;
  CadastroIDST.Value := RECUsuarios.Id;
//  CadastroCDST.Value := RECParametros.EP_IDSE;
  Cadastro.Post;
end;

end.
