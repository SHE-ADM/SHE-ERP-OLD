unit pEtiqueta_Geral;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, ImgList, StdCtrls,
  ComCtrls, ExtCtrls, RxSpeedBar, dxDBGrid, dxDBCtrl, dxEditor, dxExEdtr, dxEdLib,
  QRCtrls, QuickRpt, IBDatabase, DateUtils, dxPageControl, dxCntner,
  dxTL, strutils, math, dxDBTLCl, dxGrClms, Buttons, ACBrBarCode, jpeg,
  QRDBTextRotate, cxGraphics, cxControls, dxStatusBar, dxDBELib, IBSQL;

type
  TFrmEtiqueta_Geral = class(TForm)
    SBMenu: TSpeedBar;
    SSMenu: TSpeedbarSection;
    BSai: TSpeedItem;
    BVis: TSpeedItem;
    BPri: TSpeedItem;
    BSav: TSpeedItem;
    Consulta: TIBQuery;
    imageOPC: TImageList;
    ibTRA: TIBTransaction;
    Aux: TIBQuery;
    PNLPrincipal: TPanel;
    PNLRodape: TPanel;
    Edicao: TIBDataSet;
    DTSEdicao: TDataSource;
    tSHEILD: TIBTransaction;
    consulta_s: TIBQuery;
    siLI: TSpeedItem;
    EdicaoID: TIntegerField;
    EdicaoPRO_CUSU: TIntegerField;
    EdicaoPRO_IDNO: TIntegerField;
    EdicaoPRO_DTNO: TDateField;
    EdicaoPRO_CDPD: TIntegerField;
    EdicaoPRO_CDRO: TIntegerField;
    EdicaoPRO_CDNF: TIntegerField;
    EdicaoPRO_CDEP: TIntegerField;
    EdicaoPRO_CDFO: TIntegerField;
    EdicaoPRO_ITEM: TIBStringField;
    EdicaoPRO_IPRO: TIntegerField;
    EdicaoPRO_CART: TIBStringField;
    EdicaoPRO_CPRO: TIBStringField;
    EdicaoPRO_CCOR: TIntegerField;
    EdicaoPRO_RCOR: TIBStringField;
    EdicaoPRO_DCOR: TIBStringField;
    EdicaoPRO_IPR2: TIntegerField;
    EdicaoPRO_CPR2: TIBStringField;
    EdicaoPRO_CCO2: TIntegerField;
    EdicaoPRO_RCO2: TIBStringField;
    EdicaoPRO_DCO2: TIBStringField;
    EdicaoPRO_DPRO: TIBStringField;
    EdicaoPRO_COMP: TIBStringField;
    EdicaoPRO_DUNI: TIBStringField;
    EdicaoPRO_QTDE: TIBBCDField;
    EdicaoPRO_QTRL: TSmallintField;
    EdicaoPRO_PREC: TFloatField;
    EdicaoPRO_UNIT: TFloatField;
    EdicaoPRO_TOTA: TIBBCDField;
    EdicaoPRO_CBAR: TIBStringField;
    EdicaoPRO_CCLF: TIBStringField;
    EdicaoPRO_CCST: TIBStringField;
    EdicaoPRO_DORI: TIBStringField;
    EdicaoPRO_INST: TIBStringField;
    EdicaoPRO_CDET: TIBStringField;
    EdicaoPRO_CFOR: TIBStringField;
    EdicaoPRO_QEST: TIBBCDField;
    EdicaoPRO_REST: TSmallintField;
    EdicaoPRO_QRES: TIBBCDField;
    EdicaoPRO_RRES: TSmallintField;
    EdicaoPRO_QSEP: TIBBCDField;
    EdicaoPRO_RSEP: TSmallintField;
    EdicaoPRO_QDIS: TIBBCDField;
    EdicaoPRO_RDIS: TSmallintField;
    EdicaoPRO_QDEF: TIBBCDField;
    EdicaoPRO_RDEF: TSmallintField;
    EdicaoPRO_QPRC: TIBBCDField;
    EdicaoPRO_QPRG: TIBBCDField;
    EdicaoPRO_PDIS: TIBBCDField;
    EdicaoPRO_PESO: TIBBCDField;
    EdicaoPRO_METR: TIBBCDField;
    EdicaoPRO_REND: TIBBCDField;
    EdicaoPRO_GRAM: TIBBCDField;
    EdicaoPRO_LARG: TIBBCDField;
    EdicaoPRO_UTIL: TIBBCDField;
    EdicaoPRO_STLN: TIBStringField;
    EdicaoPRO_STAV: TIBStringField;
    EdicaoPRO_CCOL: TIntegerField;
    EdicaoPRO_DCOL: TIBStringField;
    EdicaoPRO_CGRP: TIntegerField;
    EdicaoPRO_RGRP: TIBStringField;
    EdicaoPRO_DGRP: TIBStringField;
    EdicaoPRO_CCAT: TIntegerField;
    EdicaoPRO_RCAT: TIBStringField;
    EdicaoPRO_DCAT: TIBStringField;
    EdicaoPRO_CTNR: TIBStringField;
    EdicaoPRO_DMAP: TIBStringField;
    EdicaoPRO_LOTE: TIBStringField;
    EdicaoPRO_OBSE: TMemoField;
    EdicaoPRO_FOTO: TBlobField;
    EdicaoPRO_PRN1: TBlobField;
    EdicaoPRO_PRN2: TBlobField;
    EdicaoPRO_PRN3: TBlobField;
    EdicaoPRO_PRN4: TBlobField;
    EdicaoPRO_PRN5: TBlobField;
    EdicaoPRO_PRN6: TBlobField;
    EdicaoPRO_PRN7: TBlobField;
    EdicaoPRO_PRN8: TBlobField;
    EdicaoPRO_FLAG: TSmallintField;
    EdicaoPRO_STA: TIBStringField;
    EdicaoCOMP1: TStringField;
    EdicaoCOMP2: TStringField;
    EdicaoProduto: TStringField;
    EdicaoFabricante: TStringField;
    EdicaoCOMP3: TStringField;
    SBRodape: TdxStatusBar;
    EdicaoC_COMP1: TStringField;
    EdicaoC_COMP2: TStringField;
    rgpsqp: TGroupBox;
    Label11: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    EDTexto: TdxMaskEdit;
    cbCAMPO: TdxImageEdit;
    cbstat: TdxImageEdit;
    rgTIPO: TRadioGroup;
    EdicaoPRO_COM1: TIBStringField;
    EdicaoPRO_COM2: TIBStringField;
    EdicaoPRO_COM3: TIBStringField;
    EdicaoPRO_COM4: TIBStringField;
    EdicaoPRO_COM5: TIBStringField;
    EdicaoPRO_DEEP: TIBStringField;
    EdicaoPRO_CNPE: TIBStringField;
    EdicaoPRO_DEFO: TIBStringField;
    EdicaoPRO_CNPF: TIBStringField;
    EdicaoPRO_PSCN: TIBBCDField;
    Label2: TLabel;
    EdicaoPRO_QVOL: TIBBCDField;
    EdicaoPRO_ESP: TIBStringField;
    PNLEdicao: TPanel;
    GBEdicao: TGroupBox;
    SBEdicao: TSpeedBar;
    SSEdicao: TSpeedbarSection;
    SIEInclui: TSpeedItem;
    SIEAltera: TSpeedItem;
    SIEExclui: TSpeedItem;
    SIESalva: TSpeedItem;
    SIECancela: TSpeedItem;
    PNLConsulta: TPanel;
    PNLSumario: TPanel;
    GBConsulta: TGroupBox;
    DBGEdicao: TdxDBGrid;
    DBGEdicaoPRO_CPRO: TdxDBGridMaskColumn;
    DBGEdicaoPRO_DCOR: TdxDBGridPickColumn;
    DBGEdicaoPRO_FLAG: TdxDBGridMaskColumn;
    DBGEdicaoPRO_DUNI: TdxDBGridPickColumn;
    DBGEdicaoPRO_PESO: TdxDBGridMaskColumn;
    DBGEdicaoPRO_METR: TdxDBGridMaskColumn;
    DBGEdicaoPRO_REND: TdxDBGridMaskColumn;
    DBGEdicaoPRO_GRAM: TdxDBGridMaskColumn;
    DBGEdicaoPRO_LARG: TdxDBGridMaskColumn;
    GBInfAdProd: TGroupBox;
    GBInfCplProd: TGroupBox;
    DBComposicao: TdxDBMaskEdit;
    LAFabricante: TLabel;
    DBIEFabricante: TdxDBImageEdit;
    LAComposicao: TLabel;
    DBGEdicaoPRO_CART: TdxDBGridMaskColumn;
    DBGEdicaoPRO_DPRO: TdxDBGridMaskColumn;
    DBGEdicaoPRO_QVOL: TdxDBGridCurrencyColumn;
    DBGEdicaoPRO_ESP: TdxDBGridMaskColumn;
    DBGEdicaoPRO_UTIL: TdxDBGridCurrencyColumn;
    DBGEdicaoPRO_STLN: TdxDBGridMaskColumn;
    DBGEdicaoPRO_PSCN: TdxDBGridCurrencyColumn;
    ILEdicao: TImageList;
    dxDBMemo1: TdxDBMemo;
    SECopias: TdxSpinEdit;
    SERepete: TdxSpinEdit;
    Label3: TLabel;
    EdicaoPRO_RUNI: TIBStringField;
    EdicaoPRO_CSGP: TIntegerField;
    EdicaoPRO_RSGP: TIBStringField;
    EdicaoPRO_DSGP: TIBStringField;
    EdicaoPRO_PTABI: TFloatField;
    EdicaoPRO_PTABF: TFloatField;
    EdicaoPRO_PSBR: TIBBCDField;
    EdicaoPRO_PSLQ: TIBBCDField;
    EdicaoPRO_QTUN: TIBBCDField;
    SQLConsulta: TIBSQL;
    SQLSEdicao: TIBSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSaiClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure siDELClick(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure siCANClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure EdicaoAfterDelete(DataSet: TDataSet);
    procedure EdicaoBeforeCancel(DataSet: TDataSet);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure BVisClick(Sender: TObject);
    procedure siLIClick(Sender: TObject);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure BPriClick(Sender: TObject);
    procedure EdicaoCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DTSEdicaoStateChange(Sender: TObject);
    procedure DTSEdicaoDataChange(Sender: TObject; Field: TField);
    procedure EdicaoAfterEdit(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure EDTextoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure EdicaoPRO_FLAGValidate(Sender: TField);
    procedure EDTextoChange(Sender: TObject);
    procedure DBGEdicaoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EdicaoAfterOpen(DataSet: TDataSet);
    procedure EdicaoBeforeOpen(DataSet: TDataSet);
    procedure SIEIncluiClick(Sender: TObject);
    procedure SIEAlteraClick(Sender: TObject);
    procedure SIEExcluiClick(Sender: TObject);
    procedure SIESalvaClick(Sender: TObject);
    procedure SIECancelaClick(Sender: TObject);
    procedure EdicaoBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    FrmStyle   : TFormStyle;
    FrmPosition: TPosition;

    procedure _Append(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
    procedure _Edit(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
    procedure _Delete(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
    procedure _Post(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
    procedure _Cancel(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
    procedure _AppendPesquisa;
    procedure _ImprimeEtiquetas(PrintTAG: Word);
    procedure ABRE_TABELA;
    procedure _PSQProduto(ATexto: String;ACampo: String = 'CAD_PRO.ID');
    procedure _DTSRefresh(ACommit: Boolean = True);
  public
    { Public declarations }
  end;

var
  FrmEtiqueta_Geral: TFrmEtiqueta_Geral;
  wRecord: TBookMark;
  IdNo: Integer;

implementation

uses uPrincipal, bPrincipal,
  qEtiqueta_Cartela, qEtiqueta_Cartela2, qEtiqueta_Id;

{$R *.dfm}

procedure TFrmEtiqueta_Geral.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;

  oOTransact(IBTra);
  oOTransact(TSheild);
  Edicao.Open;

  IdNo         := EdicaoPRO_IDNO.AsInteger;
  cbCAMPO.Text := IFThen(RECParametros.EP_NO = 'DONA AMELIA','Produto','Artigo');
end;

procedure TFrmEtiqueta_Geral.FormShow(Sender: TObject);
begin
  { Herança }
  FrmStyle    := FormStyle;
  FrmPosition := Position;
end;

procedure TFrmEtiqueta_Geral.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Screen.Cursor := crDefault;
end;

procedure TFrmEtiqueta_Geral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Screen.Cursor := crAppStart;
  Action := caFree;
end;

procedure TFrmEtiqueta_Geral.FormDestroy(Sender: TObject);
begin
  try     oFTransact(IBTra);
  finally Screen.Cursor := crDefault;
  end;

  OnDestroy         := Nil;
  FrmEtiqueta_Geral := Nil;
end;

procedure TFrmEtiqueta_Geral.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_ESCAPE: BSai.Click;
       VK_RETURN: if (not (activeControl is TdxDBGrid) and
                      not (activeControl is TdxMemo)   and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       40       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       38       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, false, true);
  end;
end;

procedure TFrmEtiqueta_Geral.FormPaint(Sender: TObject);
var
  R: TRect;
begin
  if Showing then
  begin
    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,R);

    if FrmPosition = poDefault then
    begin
      Top    := IFThen(FrmStyle    = fsNormal ,R.Top ,0);
      Left   := IFThen(FrmStyle    = fsNormal ,R.Left,0);
      Width  := IFThen(FrmPosition = poDefault,R.Right -R.Left-5,0);
      Height := IFThen(FrmPosition = poDefault,R.Bottom-R.Top -5,0);
    end else
    begin
      Top  := R.Top + ((R.Bottom - R.Top ) - Height) div 2;
      Left :=         ((R.Right  + R.Left) - Width ) div 2;
    end;
  end;
end;

procedure TFrmEtiqueta_Geral.FormResize(Sender: TObject);
begin
  if FrmEtiqueta_Geral <> Nil then
  Paint;
end;

procedure TFrmEtiqueta_Geral.DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: SIECancela.Click;
       vk_insert: SIEInclui.Click;
       vk_return: if Edicao.State = dsBrowse then SIEAltera.Click else
                     Edicao.Next;
       vk_delete: SIEExclui.Click;
  end;
end;

procedure TFrmEtiqueta_Geral.ABRE_TABELA;
begin
  IdNo := 0;
  oOTransact(TSheild);
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM CAD_PRO_ETI');
    ExecSQL;
  end;
  oRTransact(TSheild);
end;

procedure TFrmEtiqueta_Geral.siLIClick(Sender: TObject);
begin
  if oYesNo(handle,'Confirma limpeza do produtos selecionados ?') = mrno then
  Abort;

  ABRE_TABELA;
end;

procedure TFrmEtiqueta_Geral.BVisClick(Sender: TObject);
begin
  _ImprimeEtiquetas(0);
end;

procedure TFrmEtiqueta_Geral.BPriClick(Sender: TObject);
begin
  _ImprimeEtiquetas(1);
end;

procedure TFrmEtiqueta_Geral.BSaiClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEtiqueta_Geral.siALTClick(Sender: TObject);
begin
  if (Edicao.State = dsBrowse) and (not Edicao.Fields[0].IsNull) then
  Edicao.Edit;
end;

procedure TFrmEtiqueta_Geral.siDELClick(Sender: TObject);
begin
  if (Edicao.State = dsBrowse) and (not Edicao.Fields[0].IsNull) then
  Edicao.Delete;
end;

procedure TFrmEtiqueta_Geral.siSAVClick(Sender: TObject);
begin
  if Edicao.State in [dsInsert,dsEdit] then
  Edicao.Post;
end;

procedure TFrmEtiqueta_Geral.siCANClick(Sender: TObject);
begin
  if Edicao.State in [dsInsert,dsEdit] then
  Edicao.Cancel else
  BSai.Click;
end;

procedure TFrmEtiqueta_Geral.EdicaoNewRecord(DataSet: TDataSet);
begin
  if IdNo = 0 then
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(IDG_SEQUENCIA,1) FROM RDB$DATABASE');
    Open;
    IdNo := Fields[0].AsInteger;
  end;

  EdicaoID.Value       := 0;
  EdicaoPRO_IDNO.Value := IdNo;
  EdicaoPRO_CUSU.Value := RECUsuarios.Id;
  EdicaoPRO_DTNO.Value := RECParametros.SHE_DATA;
  EdicaoPRO_Flag.Value := 0;
end;

procedure TFrmEtiqueta_Geral.EdicaoBeforeCancel(DataSet: TDataSet);
begin
  if Edicao.Eof then
  begin
    Edicao.Close;
    Edicao.Open;
    Abort;
  end;
end;

procedure TFrmEtiqueta_Geral.EdicaoAfterDelete(DataSet: TDataSet);
begin
  TSheild.CommitRetaining;
end;

procedure TFrmEtiqueta_Geral.EdicaoBeforePost(DataSet: TDataSet);
begin
  EdicaoPRO_COMP.Value := EdicaoCOMP3.AsString;
  EdicaoPRO_DORI.Value := EdicaoFabricante.AsString;

  if ((not oEmpty(EdicaoPRO_FLAG.AsInteger)) and (EdicaoPRO_FLAG.NewValue <> EdicaoPRO_FLAG.OldValue) and
     ((DBGEdicao.FocusedColumn = DBGEdicaoPRO_FLAG.ColIndex) or (DBGEdicao.FocusedColumn = DBGEdicaoPRO_DCOR.ColIndex))) then
  with Consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT PRO_CPRO,PRO_DCOR FROM CAD_PRO_ETI');
    SQL.Add('WHERE  PRO_FLAG = '''+EdicaoPRO_FLAG.AsString+'''');
    Open;
    if not Fields[0].IsNull then
    DataBaseError('Sequência já Cadastrada !'+#13+
                  'Produto: '+Fields[0].AsString+' '+Fields[1].AsString);
  end;
end;

procedure TFrmEtiqueta_Geral.DTSEdicaoStateChange(Sender: TObject);
begin
  oState(Edicao,SBEdicao);
end;

procedure TFrmEtiqueta_Geral.EdicaoCalcFields(DataSet: TDataSet);
begin
  { Ricardo - Crie campos para composições de base e superficie no cadastro de produtos - salve na tabela cad_pro }
  EdicaoCOMP3.Value := oRETComposicao(EdicaoPRO_COMP.AsString);
  EdicaoCOMP1.Value := IFThen(Pos('|',EdicaoCOMP3.AsString) = 0,EdicaoCOMP3.AsString,LeftStr(EdicaoCOMP3.AsString ,Pos('|',EdicaoCOMP3.AsString) - 1));
  EdicaoCOMP2.Value := IFThen(Pos('|',EdicaoCOMP3.AsString) = 0,'',RightStr(EdicaoCOMP3.AsString,Length(EdicaoCOMP3.AsString)  - Pos('|',EdicaoCOMP3.AsString)));
  EdicaoCOMP3.Value := oStrTran(EdicaoPRO_COMP.AsString,'00,%','%');

  EdicaoProduto.Value    := EdicaoPRO_CPRO.AsString+IFThen(EdicaoPRO_DCOR.AsString <> '',' - '+EdicaoPRO_DCOR.AsString,'');
  EdicaoFabricante.Value := EdicaoPRO_DORI.AsString;
end;

procedure TFrmEtiqueta_Geral.DTSEdicaoDataChange(Sender: TObject;
  Field: TField);
begin
  DBGEdicaoPRO_STLN.Visible := (not oEmpty(EdicaoPRO_STLN.AsString));
  DBGEdicaoPRO_QVOL.Visible := (not oEmpty(EdicaoPRO_QVOL.AsFloat));
  DBGEdicaoPRO_ESP.Visible  := (not oEmpty(EdicaoPRO_ESP.AsString));
end;

procedure TFrmEtiqueta_Geral.EdicaoAfterEdit(DataSet: TDataSet);
begin
  if ((Edicao.State = dsEdit) and (oEmpty(EdicaoPRO_FLAG.AsInteger)) and
     ((DBGEdicao.FocusedColumn = DBGEdicaoPRO_FLAG.ColIndex) or (DBGEdicao.FocusedColumn = DBGEdicaoPRO_DCOR.ColIndex))) then
  with Consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT COALESCE(MAX(PRO_FLAG),0) FROM CAD_PRO_ETI');
    Open;
    EdicaoPRO_FLAG.Value := Fields[0].AsInteger + 1;
  end;
end;

procedure TFrmEtiqueta_Geral.EDTextoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
     _PSQProduto(EDTexto.Text,cbCAMPO.Text);
end;

procedure TFrmEtiqueta_Geral._DTSRefresh(ACommit: Boolean = True);
begin
  WRecord := Nil;
  if not Edicao.Fields[0].IsNull then
  WRecord := Edicao.GetBookmark;

  if Tag = 0 then
  begin
    oRTransact(TSheild);
    if WRecord <> Nil then
    begin
      Edicao.GotoBookmark(WRecord);
      Edicao.FreeBookmark(WRecord);
    end else Edicao.Last;
  end;
end;

procedure TFrmEtiqueta_Geral.EdicaoAfterPost(DataSet: TDataSet);
begin
  _DTSRefresh;
end;

procedure TFrmEtiqueta_Geral.EdicaoPRO_FLAGValidate(Sender: TField);
begin
  EdicaoPRO_RCOR.Value := IFThen(EdicaoPRO_FLAG.AsInteger mod 2 = 0,'2','1');
end;

procedure TFrmEtiqueta_Geral.EDTextoChange(Sender: TObject);
begin
  cbCAMPO.Text := IFThen(oPosCount('.',EDTexto.Text) > 1,'Produto','Artigo');
end;

procedure TFrmEtiqueta_Geral.DBGEdicaoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if AColumn = DBGEdicaoPRO_FLAG then
    begin
      AFont.Style := [fsBold];
      AFont.Color := clBlack;
      AColor      := $00F4E2BD;
    end;
  end;
end;

procedure TFrmEtiqueta_Geral.EdicaoAfterOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crDefault;
end;

procedure TFrmEtiqueta_Geral.EdicaoBeforeOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crAppStart;
end;

procedure TFrmEtiqueta_Geral.SIEIncluiClick(Sender: TObject);
begin
  _Append(Edicao,DBGEdicao,SIEInclui);
end;

procedure TFrmEtiqueta_Geral.SIEAlteraClick(Sender: TObject);
begin
  _Edit(Edicao,DBGEdicao,SIEAltera);
end;

procedure TFrmEtiqueta_Geral.SIEExcluiClick(Sender: TObject);
begin
  _Delete(Edicao,DBGEdicao,SIEExclui);
end;

procedure TFrmEtiqueta_Geral.SIESalvaClick(Sender: TObject);
begin
  _Post(Edicao,DBGEdicao,SIESalva);
end;

procedure TFrmEtiqueta_Geral.SIECancelaClick(Sender: TObject);
begin
  _Cancel(Edicao,DBGEdicao,SIECancela);
end;

procedure TFrmEtiqueta_Geral._Append(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
begin
  if (ASIOrigem.Enabled) and (ASIOrigem.Visible) and (ADSOrigem.State = dsBrowse) then
  begin
    ADBGOrigem.SetFocus;
    ADSOrigem.Append;
  end;
end;

procedure TFrmEtiqueta_Geral._Edit(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
begin
  if (ASIOrigem.Enabled) and (ASIOrigem.Visible) and (ADSOrigem.State = dsBrowse) and (not ADSOrigem.Fields[0].IsNull) then
  begin
    ADBGOrigem.SetFocus;
    ADSOrigem.Edit;
  end;
end;
procedure TFrmEtiqueta_Geral._Delete(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
begin
  if (ASIOrigem.Enabled) and (ASIOrigem.Visible) and (ADSOrigem.State = dsBrowse) and (not ADSOrigem.Fields[0].IsNull) then
  begin
    ADBGOrigem.SetFocus;
    ADSOrigem.Delete;
  end;
end;
procedure TFrmEtiqueta_Geral._Post(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
begin
  if (ASIOrigem.Enabled) and (ASIOrigem.Visible) and (ADSOrigem.State in [dsInsert,dsEdit]) then
  begin
    ADBGOrigem.SetFocus;
    ADSOrigem.Post;
  end;
end;

procedure TFrmEtiqueta_Geral._Cancel(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
begin
  if (ASIOrigem.Enabled) and (ASIOrigem.Visible) and (ADSOrigem.State in [dsInsert,dsEdit]) then
  begin
    ADBGOrigem.SetFocus;
    ADSOrigem.Cancel;
  end else
  BSai.Click;
end;

procedure TFrmEtiqueta_Geral.EdicaoBeforeDelete(DataSet: TDataSet);
begin
  if oYesNo(handle,'Excluir Produto '+EdicaoPRO_CPRO.AsString+#13+
                   'Sequência: '     +EdicaoPRO_FLAG.AsString+' ?') =   mrNo then
  Abort;
end;

procedure TFrmEtiqueta_Geral._ImprimeEtiquetas(PrintTAG: Word);
var
  RECRelatorios: TRECRelatorios;
begin
  if Edicao.State in [dsInsert,dsEdit] then
  Edicao.Post;

  Initialize(RECRelatorios);
  FillChar(RECRelatorios,SizeOf(RECRelatorios),0);

  RECRelatorios.PrintTAG := PrintTAG;
  RECRelatorios.Handle   := Handle;

  case rgTIPO.ItemIndex of
    4: begin
         if qrpEtiqueta_Id = Nil then
         begin
           qrpEtiqueta_Id := TqrpEtiqueta_Id.Create(Self,RECRelatorios);
           qrpEtiqueta_Id.PrinterSettings.Copies := SECopias.IntValue;
           with qrpEtiqueta_Id do
           try WinControlFormCreate(qrpEtiqueta_Id);
           finally WinControlFormDestroy(qrpEtiqueta_Id);
           end;
         end;
       end;
    5: begin
         if qrpEtiqueta_Cartela = Nil then
         begin
           qrpEtiqueta_Cartela := TqrpEtiqueta_Cartela.Create(Self,RECRelatorios);
           qrpEtiqueta_Cartela.PrinterSettings.Copies := SECopias.IntValue;
           with qrpEtiqueta_Cartela do
           try WinControlFormCreate(qrpEtiqueta_Cartela);
           finally WinControlFormDestroy(qrpEtiqueta_Cartela);
           end;
         end;
       end;
    6: begin
         if qrpEtiqueta_Cartela2 = Nil then
         begin
           qrpEtiqueta_Cartela2 := TqrpEtiqueta_Cartela2.Create(Self,RECRelatorios);
           qrpEtiqueta_Cartela2.PrinterSettings.Copies := SECopias.IntValue;
           with qrpEtiqueta_Cartela2 do
           try WinControlFormCreate(qrpEtiqueta_Cartela2);
           finally WinControlFormDestroy(qrpEtiqueta_Cartela2);
           end;
         end;
       end;
  end;
end;

procedure TFrmEtiqueta_Geral._PSQProduto(ATexto: String;ACampo: String = 'CAD_PRO.ID');
var
  cField: String;
begin
  if not oEmpty(ATexto) then
  try
    cField := '';
    if ACampo = 'Artigo' then
    cField := 'CP.ARTIGO' else
    if ACampo = 'Produto' then
    cField := 'CP.SKU' else
    if ACampo = 'Ref. Fornecedor' then
    cField := 'CDCF' else
    if ACampo = 'Categoria' then
    cField := 'PRO_DCAT' else
    if ACampo = 'Grupo' then
    cField := 'PRO_DGRP' else
    cField := 'CP.ID';

    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT    COALESCE(CP.ID,0) AS ID,CP.ARTIGO,CP.SKU,CP.CEAN,');
      SQL.Add('          CP.PRO_DPRO,CP.PRO_COMP,COALESCE(CP.IDCOR,0) AS IDCOR,TC.DESCRICAO AS DECOR,');
      SQL.Add('          CP.UCOM,COALESCE(CP.UQVOL,0) AS UQVOL,CP.UESP,');
      SQL.Add('          TRIM(TRAILING ''.'' FROM COALESCE(TRIM(TRAILING ''0'' FROM CAST(CP.PRO_PREC AS VARCHAR(12))),0)) AS PRO_PREC,');
      SQL.Add('          TRIM(TRAILING ''.'' FROM COALESCE(TRIM(TRAILING ''0'' FROM CAST(CP.PRO_PESO AS VARCHAR(12))),0)) AS PRO_PESO,TRIM(TRAILING ''.'' FROM COALESCE(TRIM(TRAILING ''0'' FROM CAST(CP.PRO_PSCN AS VARCHAR(12))),0)) AS PRO_PSCN,');
      SQL.Add('          TRIM(TRAILING ''.'' FROM COALESCE(TRIM(TRAILING ''0'' FROM CAST(CP.PRO_METR AS VARCHAR(12))),0)) AS PRO_METR,TRIM(TRAILING ''.'' FROM COALESCE(TRIM(TRAILING ''0'' FROM CAST(CP.PRO_REND AS VARCHAR(12))),0)) AS PRO_REND,');
      SQL.Add('          TRIM(TRAILING ''.'' FROM COALESCE(TRIM(TRAILING ''0'' FROM CAST(CP.PRO_GRAM AS VARCHAR(12))),0)) AS PRO_GRAM,');
      SQL.Add('          TRIM(TRAILING ''.'' FROM COALESCE(TRIM(TRAILING ''0'' FROM CAST(CP.PRO_UTIL AS VARCHAR(12))),0)) AS PRO_UTIL,TRIM(TRAILING ''.'' FROM COALESCE(TRIM(TRAILING ''0'' FROM CAST(CP.PRO_LARG AS VARCHAR(12))),0)) AS PRO_LARG,');
      SQL.Add('          CP.ORIG,IIF(POSITION(CP.ORIG IN ''1267'') > 0,''PRODUTO IMPORTADO'',''PRODUTO NACIONAL'') AS FPAIS,');
      SQL.Add('          CP.INFADCAD,');
      SQL.Add('          ILA.ILA_BMP1,ILA.ILA_BMP2,ILA.ILA_BMP3,ILA.ILA_BMP4,ILA.ILA_BMP5,ILA.ILA_BMP6,ILA.ILA_BMP7,ILA.ILA_BMP8');
      SQL.Add('FROM      CAD_PRO        AS CP');
      SQL.Add('JOIN      TAB_COR        AS TC  ON (TC.ID  = CP.IDCOR)');
      SQL.Add('LEFT JOIN VW_CAD_PRO_ILA AS ILA ON (ILA.ID = CP.IDAK )');

      SQL.Add('WHERE  '+CField  +' = '''+ATexto+'''');
      SQL.Add('AND      CP.REST <> ''I''');

      if cbstat.Text <> 'Todos' then
      SQL.Add('AND CP.PRO_STLN = '''+copy(cbstat.Text,1,1)+'''');
      SQL.Add('ORDER BY CP.ARTIGO,CP.PRO_DCOR');
      ExecQuery;

      if Current.Vars[0].AsInteger = 0 then
         oException(EDTexto,ACampo+' não Cadastrado !');
    end;

    _AppendPesquisa;
  finally
    Tag := 0;
  end;
end;

procedure TFrmEtiqueta_Geral._AppendPesquisa;
var
  i: Word;
  IMGILA1,IMGILA2,IMGILA3,IMGILA4,IMGILA5,IMGILA6,IMGILA7,IMGILA8: TStream;
begin
  IMGILA1 := TMemoryStream.Create;
  IMGILA2 := TMemoryStream.Create;
  IMGILA3 := TMemoryStream.Create;
  IMGILA4 := TMemoryStream.Create;
  IMGILA5 := TMemoryStream.Create;
  IMGILA6 := TMemoryStream.Create;
  IMGILA7 := TMemoryStream.Create;
  IMGILA8 := TMemoryStream.Create;

  try
    if IdNo = 0 then
    with SQLSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(IDG_SEQUENCIA,1) FROM RDB$DATABASE');
      ExecQuery;
      IdNo := Current.Vars[0].AsInteger;
    end;

    while not SQLConsulta.Eof do
    begin
      SQLConsulta.Current.ByName('ILA_BMP1').SaveToStream(IMGILA1);
      SQLConsulta.Current.ByName('ILA_BMP2').SaveToStream(IMGILA2);
      SQLConsulta.Current.ByName('ILA_BMP3').SaveToStream(IMGILA3);
      SQLConsulta.Current.ByName('ILA_BMP4').SaveToStream(IMGILA4);
      SQLConsulta.Current.ByName('ILA_BMP5').SaveToStream(IMGILA5);
      SQLConsulta.Current.ByName('ILA_BMP6').SaveToStream(IMGILA6);
      SQLConsulta.Current.ByName('ILA_BMP7').SaveToStream(IMGILA7);
      SQLConsulta.Current.ByName('ILA_BMP8').SaveToStream(IMGILA8);

      for i := 1 to SERepete.IntValue do
      with SQLSEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO CAD_PRO_ETI (PRO_IDNO,PRO_CUSU,PRO_DTNO,PRO_FLAG,');
        SQL.Add('                         PRO_IPRO,PRO_IPR2,PRO_CART,PRO_CPRO,PRO_CPR2,PRO_CBAR,');
        SQL.Add('                         PRO_DPRO,PRO_COMP,PRO_CCOR,PRO_DCOR,');
        SQL.Add('                         PRO_DUNI,PRO_QVOL,PRO_ESP,');
        SQL.Add('                         PRO_PREC,');
        SQL.Add('                         PRO_PESO,PRO_PSCN,');
        SQL.Add('                         PRO_METR,PRO_REND,PRO_GRAM,');
        SQL.Add('                         PRO_UTIL,PRO_LARG,');
        SQL.Add('                         PRO_CCST,PRO_DORI,');
        SQL.Add('                         PRO_OBSE,');
        SQL.Add('                         PRO_PRN1,PRO_PRN2,PRO_PRN3,PRO_PRN4,PRO_PRN5,PRO_PRN6,PRO_PRN7,PRO_PRN8)');
        SQL.Add('VALUES (');
        SQL.Add(''''+IntToStr(IdNo)+''',');
        SQL.Add(''''+RECUsuarios.Id+''',');
        SQL.Add(''''+FormatDateTime('mm/dd/yy',RECParametros.SHE_DATA)+''',');
        SQL.Add('0,');
        SQL.Add(''''+SQLConsulta.Current.ByName('ID').AsString      +''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('ID').AsString      +''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('ARTIGO').AsString  +''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('SKU').AsString     +''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('SKU').AsString     +''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('CEAN').AsString    +''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('PRO_DPRO').AsString+''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('PRO_COMP').AsString+''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('IDCOR').AsString   +''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('DECOR').AsString   +''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('UCOM').AsString    +''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('UQVOL').AsString   +''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('UESP').AsString    +''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('PRO_PREC').AsString+''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('PRO_PESO').AsString+''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('PRO_PSCN').AsString+''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('PRO_METR').AsString+''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('PRO_REND').AsString+''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('PRO_GRAM').AsString+''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('PRO_UTIL').AsString+''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('PRO_LARG').AsString+''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('ORIG').AsString    +''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('FPAIS').AsString   +''',');
        SQL.Add(''''+SQLConsulta.Current.ByName('INFADCAD').AsString+''',');

        SQL.Add(':IMGILA1,');
        SQL.Add(':IMGILA2,');
        SQL.Add(':IMGILA3,');
        SQL.Add(':IMGILA4,');
        SQL.Add(':IMGILA5,');
        SQL.Add(':IMGILA6,');
        SQL.Add(':IMGILA7,');
        SQL.Add(':IMGILA8)');

        ParamByName('IMGILA1').LoadFromStream(IMGILA1);
        ParamByName('IMGILA2').LoadFromStream(IMGILA2);
        ParamByName('IMGILA3').LoadFromStream(IMGILA3);
        ParamByName('IMGILA4').LoadFromStream(IMGILA4);
        ParamByName('IMGILA5').LoadFromStream(IMGILA5);
        ParamByName('IMGILA6').LoadFromStream(IMGILA6);
        ParamByName('IMGILA7').LoadFromStream(IMGILA7);
        ParamByName('IMGILA8').LoadFromStream(IMGILA8);
        ExecQuery;
      end;
      SQLConsulta.Next;
    end;
    oRTransact(TSheild);
  finally
    IMGILA1.Free;
    IMGILA2.Free;
    IMGILA3.Free;
    IMGILA4.Free;
    IMGILA5.Free;
    IMGILA6.Free;
    IMGILA7.Free;
    IMGILA8.Free;

    DBGEdicao.SetFocus;
    DBGEdicao.FocusedColumn := DBGEdicaoPRO_DCOR.ColIndex;
  end;
end;

end.
