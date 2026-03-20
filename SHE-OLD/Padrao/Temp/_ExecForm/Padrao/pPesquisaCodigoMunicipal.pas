unit pPesquisaCodigoMunicipal;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefaultConsultaGrid, cxGraphics, dxExEdtr, dxsbar, ActnList,
  dxDockControl, dxBar, dxBarExtItems, ImgList, IBEvents, IBStoredProc,
  IBSQL, IBDatabase, DB, IBCustomDataSet, IBQuery, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDockPanel, ExtCtrls, dxPageControl, cxControls,
  dxStatusBar, dxDBTLCl, dxGrClms, math, StrUtils, DBCtrls, StdCtrls,
  ComCtrls,DateUtils;

type
  TFrmPesquisaCodigoMunicipal = class(TFrmDefaultConsultaGrid)
    ILDockIcons: TImageList;
    PMPesquisa: TdxBarPopupMenu;
    BBPesquisa: TdxBarButton;
    BLBUF: TdxBarLargeButton;
    ACTPesquisa_UF: TAction;
    BEPesquisa: TdxBarEdit;
    CadastroUF: TIBStringField;
    CadastroCIDADE: TIBStringField;
    CadastroID: TIntegerField;
    CadastroCMUN: TIBStringField;
    DBGConsultaUF: TdxDBGridMaskColumn;
    DBGConsultaCIDADE: TdxDBGridMaskColumn;
    DBGConsultaCMUN: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure BEPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACTPesquisa_UFExecute(Sender: TObject);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGConsultaDblClick(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    procedure _Pesquisa;
    procedure _Saida;
  public
    { Public declarations }
  end;

var
  FrmPesquisaCodigoMunicipal: TFrmPesquisaCodigoMunicipal;

implementation

{$R *.dfm}

procedure TFrmPesquisaCodigoMunicipal.FormCreate(Sender: TObject);
begin
  { ADMIN }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM MANAGER }
  REC_SHE_DEF.GAdmin := True; { Grant   }
  REC_SHE_DEF.Id     := -3;   { Grid Focus }

  BEPesquisa.Text := REC_SHE_DEF.ID;
  inherited;

  with Cadastro do
  begin
    Prepare;
    Open;
  end;
  _Pesquisa;
end;

procedure TFrmPesquisaCodigoMunicipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  REC_SHE_DEF.Selected := ((REC_SHE_DEF.FB_PSQ_TB_NO_PK <> 'AUSENTE') and (REC_SHE_DEF.FB_PSQ_TB_NO_PK <> EmptyStr));
  inherited;
end;

procedure TFrmPesquisaCodigoMunicipal.DBGConsultaCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
     if AColumn = DBGConsultaCMUN then
        if ANode.Values[DBGConsultaCMUN.Index] = 'AUSENTE' then
        begin
          AColor      := $000024B3;
          AFont.Color := clWhite;
        end;
end;

procedure TFrmPesquisaCodigoMunicipal.DBGConsultaDblClick(
  Sender: TObject);
begin
  _Saida;
end;

procedure TFrmPesquisaCodigoMunicipal.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
     _Saida
  else
     inherited;
end;

procedure TFrmPesquisaCodigoMunicipal.BEPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
     _Pesquisa;
end;

procedure TFrmPesquisaCodigoMunicipal.ACTPesquisa_UFExecute(
  Sender: TObject);
begin
  DPConsulta.SetFocus;
  BEPesquisa.SetFocus();

  BBPesquisa.Caption := TAction(Sender).Caption;
  BBPesquisa.Hint    := TAction(Sender).Hint;

  _Pesquisa;
end;

procedure TFrmPesquisaCodigoMunicipal._Pesquisa;
begin
  if oEmpty(BEPesquisa.Text) then
  begin
    BEPesquisa.SetFocus(False);
    Exit;
  end;

  with Cadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   ID,UF,LOC_NO AS CIDADE,IIF(CMUN IS NULL,''AUSENTE'',CMUN) AS CMUN');
    SQL.Add('FROM     TAB_CEP_LOC');
    SQL.Add('WHERE ' +IFThen(Pos('TODO',UPPERCASE(BEPesquisa.Text)) > 0,'ID > 0','UF = '''+BEPesquisa.Text)+'''');
    SQL.Add('ORDER BY UF,CIDADE');
    Open;
  end;

  if Cadastro.Eof then
  begin
    oErro(handle,BBPesquisa.Hint+' não Encontrado !');
    BEPesquisa.SetFocus(False);
    Abort;
  end else
  begin
    BEPesquisa.Text := '';
    if Showing then
       DBGConsulta.SetFocus;
  end;
end;

procedure TFrmPesquisaCodigoMunicipal._Saida;
begin
  REC_SHE_DEF.FB_PSQ_TB_NO_PK := CadastroCMUN.AsString;
  Close;
end;

procedure TFrmPesquisaCodigoMunicipal.FormActivate(Sender: TObject);
begin
  inherited;
  DBGConsulta.FocusedColumn := DBGConsultaCIDADE.Index;
end;

end.

