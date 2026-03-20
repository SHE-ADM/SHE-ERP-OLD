unit pProduto_Grupo;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefaultEdicaoGrid, cxGraphics, dxExEdtr, IBCustomDataSet,
  ActnList, dxDockControl, dxBar, dxBarExtItems, ImgList, IBEvents,
  IBStoredProc, IBSQL, IBDatabase, DB, IBQuery, ComCtrls, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDockPanel, ExtCtrls, dxPageControl, cxControls,
  dxStatusBar, dxDBTLCl, dxGrClms;

type
  TFrmProduto_Grupo = class(TFrmDefaultEdicaoGrid)
    DBGConsultaID: TdxDBGridMaskColumn;
    DBGConsultaREFERENCIA: TdxDBGridMaskColumn;
    DBGConsultaDESCRICAO: TdxDBGridMaskColumn;
    CadastroC_ID: TIntegerField;
    DBGConsultaC_ID: TdxDBGridColumn;
    CadastroID: TSmallintField;
    CadastroIDEP: TSmallintField;
    CadastroIDCA: TSmallintField;
    CadastroDTCA: TDateTimeField;
    CadastroIDED: TSmallintField;
    CadastroDTED: TDateTimeField;
    CadastroIDST: TSmallintField;
    CadastroDTST: TDateTimeField;
    CadastroCDST: TSmallintField;
    CadastroREST: TIBStringField;
    CadastroREFERENCIA: TIBStringField;
    CadastroDESCRICAO: TIBStringField;
    CadastroIP: TIBStringField;
    CadastroHOST: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure CadastroBeforePost(DataSet: TDataSet);
    procedure CadastroNewRecord(DataSet: TDataSet);
    procedure CadastroAfterEdit(DataSet: TDataSet);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto_Grupo: TFrmProduto_Grupo;

implementation

{$R *.dfm}

procedure TFrmProduto_Grupo.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_PRO_GRP'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Produtos';
  REC_SHE_DEF.GReferencia := 'Grupos';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
  inherited;

  Cadastro.Open;
end;

procedure TFrmProduto_Grupo.FormActivate(Sender: TObject);
begin
  inherited;
  DBGConsulta.FocusedColumn := DBGConsultaDescricao.ColIndex;
end;

procedure TFrmProduto_Grupo.CadastroCalcFields(DataSet: TDataSet);
begin
  CadastroC_ID.Value := Cadastro.RecNo;
end;

procedure TFrmProduto_Grupo.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGConsultaC_ID.Index] mod 2 = 0 then
       AColor := $00EFF0F1;

    if ((AColor = $00EFF0F1) and (AFont.Color = clWhite)) then
         AFont.Color := clBlack;
  end;
end;

procedure TFrmProduto_Grupo.CadastroBeforePost(DataSet: TDataSet);
begin
  if oEmpty(CadastroDescricao.AsString) then
     DataBaseError('Descrição não Informada ou Incorreta !');

  with SQLConsulta do
  try
    oOTransact(TConsulta);
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_GRP');
    SQL.Add('WHERE  DESCRICAO = '''+CadastroDescricao.AsString    +'''');
    SQL.Add('AND          ID <> '''+IntToStr(CadastroId.AsInteger)+'''');
    ExecQuery;
    if not Eof then
       DataBaseError('Descrição já Cadastrada !');
  finally
    oCTransact(TConsulta);
  end;
end;

procedure TFrmProduto_Grupo.CadastroNewRecord(DataSet: TDataSet);
begin
  CadastroId.Value   := 0;
  CadastroIDEP.Value := RECParametros.EP_ID;
  CadastroIDCA.Value := RECUsuarios.Id;

  CadastroCDST.Value := 30;
  CadastroREST.Value := 'A';
end;

procedure TFrmProduto_Grupo.CadastroAfterEdit(DataSet: TDataSet);
begin
  CadastroIDED.Value := RECUsuarios.Id;
end;

procedure TFrmProduto_Grupo.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DBGConsultaDescricao.Field.FocusControl;
  DBGConsulta.SetFocus;
end;

end.
