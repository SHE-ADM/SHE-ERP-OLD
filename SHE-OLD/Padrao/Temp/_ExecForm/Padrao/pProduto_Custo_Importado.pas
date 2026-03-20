unit pProduto_Custo_Importado;

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
  TFrmProduto_Custo_Importado = class(TFrmDefaultConsultaGrid)
    DSRodape: TdxDockSite;
    ILDockIcons: TImageList;
    DPConsulta_Detalhe: TdxDockPanel;
    LayoutRodape: TdxLayoutDockSite;
    DPConsultaFK: TdxDockPanel;
    PMPesquisa: TdxBarPopupMenu;
    BBPesquisa: TdxBarButton;
    BLBPlanilha: TdxBarLargeButton;
    BLBEmpresa: TdxBarLargeButton;
    BLBNF: TdxBarLargeButton;
    ACTPesquisa_Planilha: TAction;
    ACTPesquisa_Empresa: TAction;
    BEPesquisa: TdxBarEdit;
    dxLayoutDockSite2: TdxLayoutDockSite;
    BLBNFSaida: TdxBarLargeButton;
    ACTPesquisa_CTNR: TAction;
    BLBCTNR: TdxBarLargeButton;
    DBGConsultaFK: TdxDBGrid;
    BLBEtiqueta: TdxBarLargeButton;
    BLBResponsavel: TdxBarLargeButton;
    BLBSeparador: TdxBarLargeButton;
    BLBTipo: TdxBarLargeButton;
    BLBOperacao: TdxBarLargeButton;
    BLBSituacao: TdxBarButton;
    ACTPesquisa_Tipo: TAction;
    DTSCadastroFK: TDataSource;
    CadastroID: TIntegerField;
    CadastroIDEP: TSmallintField;
    CadastroIDCA: TSmallintField;
    CadastroDTCA: TDateTimeField;
    CadastroIDED: TSmallintField;
    CadastroDTED: TDateTimeField;
    CadastroCDTP: TSmallintField;
    CadastroDESCRICAO: TIBStringField;
    CadastroFK: TIBQuery;
    CadastroDECA: TIBStringField;
    CadastroDEED: TIBStringField;
    CadastroDETP: TIBStringField;
    DBGConsultaDTCA: TdxDBGridDateColumn;
    DBGConsultaDTED: TdxDBGridDateColumn;
    DBGConsultaDESCRICAO: TdxDBGridMaskColumn;
    DBGConsultaDECA: TdxDBGridMaskColumn;
    DBGConsultaDEED: TdxDBGridMaskColumn;
    DBGConsultaDETP: TdxDBGridMaskColumn;
    CadastroDEEP: TIBStringField;
    DBGConsultaDEEP: TdxDBGridMaskColumn;
    CadastroFKID: TIntegerField;
    CadastroFKCDFK: TIntegerField;
    CadastroFKITEM: TIntegerField;
    CadastroFKDTEN: TDateField;
    CadastroFKCTNR: TIBStringField;
    CadastroFKDETP: TIBStringField;
    CadastroFKDETALHE: TIBStringField;
    CadastroFKCPKG: TIBBCDField;
    CadastroFKCLKG: TIBBCDField;
    CadastroFKCMKG: TIBBCDField;
    CadastroFKQTRL: TIntegerField;
    CadastroFKPESOB: TIBBCDField;
    CadastroFKCMDTOT: TIBBCDField;
    CadastroFKVUTAXA: TFloatField;
    CadastroFKVUCOTA: TFloatField;
    CadastroFKCMRTOT: TIBBCDField;
    CadastroFKQTUCOM: TIBBCDField;
    CadastroFKCMUCOM: TIBBCDField;
    DBGConsultaFKDTEN: TdxDBGridDateColumn;
    DBGConsultaFKCTNR: TdxDBGridMaskColumn;
    DBGConsultaFKDETP: TdxDBGridMaskColumn;
    DBGConsultaFKDETALHE: TdxDBGridMaskColumn;
    DBGConsultaFKCPKG: TdxDBGridCurrencyColumn;
    DBGConsultaFKCLKG: TdxDBGridCurrencyColumn;
    DBGConsultaFKCMKG: TdxDBGridCurrencyColumn;
    DBGConsultaFKQTRL: TdxDBGridMaskColumn;
    DBGConsultaFKPESOB: TdxDBGridMaskColumn;
    DBGConsultaFKCMDTOT: TdxDBGridCurrencyColumn;
    DBGConsultaFKVUTAXA: TdxDBGridMaskColumn;
    DBGConsultaFKVUCOTA: TdxDBGridMaskColumn;
    DBGConsultaFKCMRTOT: TdxDBGridCurrencyColumn;
    DBGConsultaFKQTUCOM: TdxDBGridMaskColumn;
    DBGConsultaFKCMUCOM: TdxDBGridCurrencyColumn;
    CadastroFKC_ID: TIntegerField;
    DBGConsultaFKC_ID: TdxDBGridColumn;
    CadastroFKCPTP: TIBStringField;
    DBGConsultaFKCPTP: TdxDBGridMaskColumn;
    CadastroIDEV: TLargeintField;
    CadastroCDCA: TSmallintField;
    CadastroCDED: TSmallintField;
    CadastroIDST: TSmallintField;
    CadastroCDST: TSmallintField;
    CadastroREST: TIBStringField;
    CadastroDTST: TDateTimeField;
    CadastroIP: TIBStringField;
    CadastroHOST: TIBStringField;
    CadastroINFADCAD: TMemoField;
    procedure FormCreate(Sender: TObject);
    procedure BEPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACTPesquisa_PlanilhaExecute(Sender: TObject);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure ACTAppendExecute(Sender: TObject);
    procedure ACTEditExecute(Sender: TObject);
    procedure DBGConsultaFKCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure CadastroFKCalcFields(DataSet: TDataSet);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
    ADTXT,
    AFTXT,
    AWHERE,
    ALIKE1,
    ALIKE2,
    AFDT: String;
    ADDT1,
    ADDT2: TDate;

    procedure _Pesquisa;
  public
    { Public declarations }
  end;

var
  FrmProduto_Custo_Importado: TFrmProduto_Custo_Importado;

implementation

uses pProduto_Custo_Importado_Edicao, pRelatorios;

{$R *.dfm}

procedure TFrmProduto_Custo_Importado.FormCreate(Sender: TObject);
begin
  { ADMIN }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM MANAGER }
  REC_SHE_DEF.FB_Event := 'CUSTO'; { Eventos }

  { GRANT }
  REC_SHE_DEF.GDescricao  := 'Custos';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;

  DBGConsultaFKCPKG.Visible   := REC_SHE_DEF.GAdmin;
  DBGConsultaFKCLKG.Visible   := REC_SHE_DEF.GAdmin;
  DBGConsultaFKCMKG.Visible   := REC_SHE_DEF.GAdmin;
  DBGConsultaFKQTRL.Visible   := REC_SHE_DEF.GAdmin;
  DBGConsultaFKPESOB.Visible  := REC_SHE_DEF.GAdmin;
  DBGConsultaFKCMDTOT.Visible := REC_SHE_DEF.GAdmin;
  DBGConsultaFKVUCOTA.Visible := REC_SHE_DEF.GAdmin;
  DBGConsultaFKVUTAXA.Visible := REC_SHE_DEF.GAdmin;

  with Cadastro do
  begin
    Prepare;
    Open;
  end;
  _Pesquisa;
end;

procedure TFrmProduto_Custo_Importado.BEPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
     _Pesquisa;
end;

procedure TFrmProduto_Custo_Importado.ACTPesquisa_PlanilhaExecute(
  Sender: TObject);
begin
  DPConsulta.SetFocus;
  BEPesquisa.SetFocus();

  BBPesquisa.Caption := TAction(Sender).Caption;
  BBPesquisa.Hint    := TAction(Sender).Hint;

  _Pesquisa;
end;

procedure TFrmProduto_Custo_Importado._Pesquisa;
          procedure _Pesquisa_Event;
          begin
            with Cadastro do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT * FROM SP_CAD_PRO_PSQ_EST_RPK(');
              SQL.Add(''''+RECParametros.EP_ID+''',');
              SQL.Add(''''+ADTXT+'''');
              if ADTXT <> 'TODOS' then
              begin
                SQL.Add(',');
                SQL.Add(''''+AFTXT +''',');
                SQL.Add('ARTIGO,CDGRD,REGRD,DEGRD,DECOR,');
                SQL.Add('NULL,');
                SQL.Add(''''+AWHERE+''',');
                SQL.Add(''''+ALIKE1+''',');
                SQL.Add(''''+ALIKE2+''',');
                SQL.Add(''''+FormatDateTime('mm/dd/yy',ADDT1)+''',');
                SQL.Add(''''+FormatDateTime('mm/dd/yy',ADDT2)+''',');
                SQL.Add(''''+AFDT  +'''' );
              end;
              SQL.Add(')');
              Prepare;
              Open;
            end;
          end;
begin
  if not oEmpty(BEPesquisa.Text) then
  begin
    ADTXT  := BEPesquisa.Text;
    AFTXT  := BBPesquisa.Caption;
    AWHERE := IFThen(Pos(AFTXT,'RomaneioNota FiscalEtiqueta') = 0,'LIKE','=');
    if AWHERE = 'LIKE' then
    begin
      if LeftStr(ADTXT,1) = '%' then
      begin
        ALIKE1 := '%';
        ALIKE2 := IFThen(RightStr(ADTXT,1) = '%','%','');
      end else
      begin
        ALIKE1 := '';
        ALIKE2 := '%';
      end;
    end else
    begin
      ALIKE1 := '';
      ALIKE2 := '';
    end;
    ADTXT := StringReplace(ADTXT,'%','',[rfReplaceAll]);

    try
      _Pesquisa_Event;
      if ((Cadastro.Eof) and (AWHERE = 'LIKE') and ((ALIKE1 <> '%') or (ALIKE2 <> '%'))) then
      begin
        ALIKE1 := '%';
        ALIKE2 := '%';

        _Pesquisa_Event;
      end;
    finally
      ADTXT  := '';
      AFTXT  := '';
      AWHERE := '';
      AFDT   := '';
      ADDT1  := 0;
      ADDT2  := 0;

      if Cadastro.Eof then
      begin
        oErro(handle,BBPesquisa.Hint+' não Encontrado !');
        BEPesquisa.SetFocus(False);
        Abort;
      end else
      begin
        BEPesquisa.Text := '';
        DBGConsulta.SetFocus;
      end;
    end;
  end;  
end;

procedure TFrmProduto_Custo_Importado.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if CadastroFK.State = dsInactive then
     CadastroFK.Open;
end;

procedure TFrmProduto_Custo_Importado.ACTAppendExecute(
  Sender: TObject);
begin
  TFrmProduto_Custo_Importado_Edicao._ExecForm(Nil,FrmProduto_Custo_Importado_Edicao);
end;

procedure TFrmProduto_Custo_Importado.ACTEditExecute(
  Sender: TObject);
begin
  TFrmProduto_Custo_Importado_Edicao._ExecForm(
              Nil, { Owner }
              FrmProduto_Custo_Importado_Edicao, { Form }
              False, { inicia pela pesquisa }
              fsStayOnTop, { Style }
              CadastroId.AsInteger, { Código Principal }
              '', { Empresa }
              0,  { Código Evento }
              0,  { Tipo Evento }
              'CAD_PRO_PCI_RPK'); { Tabela }
end;

procedure TFrmProduto_Custo_Importado.DBGConsultaFKCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGConsultaFKC_ID.Index] mod 2 = 0 then
       AColor := $00EFF0F1;

    if ((AColor = $00EFF0F1) and (AFont.Color = clWhite)) then
       AFont.Color := clBlack;

    if AColumn = DBGConsultaFKCMKG then
    begin
      AColor      := $00F0D7A2;
      AFont.Color := clBlack;
    end;

    if AColumn = DBGConsultaFKCMDTOT then
    begin
      AColor      := $00CCE0F7;
      AFont.Color := clBlack;
    end;

    if AColumn = DBGConsultaFKCMRTOT then
    begin
      AColor      := $007EB1EB;
      AFont.Color := clBlack;
    end;

    if AColumn = DBGConsultaFKVUCOTA then
    begin
      AColor      := clWhite;
      AFont.Color := $000024B3;
    end;

    if AColumn = DBGConsultaFKCMUCOM then
    begin
      AColor      := $00C4FFC4;
      AFont.Color := clBlack;
    end;
  end;
end;

procedure TFrmProduto_Custo_Importado.CadastroFKCalcFields(
  DataSet: TDataSet);
begin
  CadastroFKC_ID.Value := Cadastro.RecNo;
end;

procedure TFrmProduto_Custo_Importado.ACTRelatoriosExecute(
  Sender: TObject);
begin
  FrmRelatorios := TFrmRelatorios.Create(Nil,'CUSTO DE PRODUTOS IMPORTADOS',18);
  Try FrmRelatorios.ShowModal;
  Finally FreeAndNil(FrmRelatorios);
  End;
end;

procedure TFrmProduto_Custo_Importado.FormCanResize(
  Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  DBGConsultaDESCRICAO.Width := PNLConsulta.Width - oTdxDBGrid_ColumnWidth(DBGConsulta  ) - 50;
  DBGConsultaFKDETP.Width    := PNLConsulta.Width - oTdxDBGrid_ColumnWidth(DBGConsultaFK) - 50;
end;

end.

