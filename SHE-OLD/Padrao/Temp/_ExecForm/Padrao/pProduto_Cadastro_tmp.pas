unit pProduto_Cadastro_tmp;

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
  TFrmProduto_Cadastro_tmp = class(TFrmDefaultEdicaoGrid)
    DSArtigo: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    DPArtigo: TdxDockPanel;
    ILEdicao: TImageList;
    BLBNovo: TdxBarLargeButton;
    ACTNovo: TAction;
    ACTSalva: TAction;
    BLBSalva: TdxBarLargeButton;
    FT: TIBQuery;
    FTPRO_CART: TIBStringField;
    FTPRO_FOTO: TBlobField;
    FTPRO_INS1: TBlobField;
    FTPRO_INS2: TBlobField;
    FTPRO_INS3: TBlobField;
    FTPRO_INS4: TBlobField;
    FTPRO_INS5: TBlobField;
    FTPRO_INS6: TBlobField;
    FTPRO_INS7: TBlobField;
    FTPRO_INS8: TBlobField;
    DTSFT: TDataSource;
    SQLConsulta_Aux: TIBSQL;
    BLBItem: TdxBarLargeButton;
    ACTItem: TAction;
    SQLEdicao_Aux: TIBSQL;
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
    CadastroDETALHE: TIBStringField;
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
    DSClassifica: TdxDockSite;
    dxLayoutDockSite2: TdxLayoutDockSite;
    DPClassifica: TdxDockPanel;
    BArtigo: TBevel;
    LAArtigo: TLabel;
    LAIDEP: TLabel;
    LADescricao: TLabel;
    LATitulo: TLabel;
    LAIDCF: TLabel;
    LACDCF: TLabel;
    LAST: TLabel;
    LACDFIN: TLabel;
    LACEANCF: TLabel;
    EDArtigo: TdxMaskEdit;
    IEIDEP: TdxImageEdit;
    EDDescricao: TdxMaskEdit;
    EDTitulo: TdxMaskEdit;
    EDCDCF: TdxMaskEdit;
    IEST: TdxImageEdit;
    IECDFIN: TdxImageEdit;
    EDCEANCF: TdxCurrencyEdit;
    IEIDCF: TdxImageEdit;
    PCClassifica: TdxPageControl;
    TSClassificaERP: TdxTabSheet;
    BClassifica: TBevel;
    LAGRP: TLabel;
    LACOL: TLabel;
    LACAT: TLabel;
    LASGRP: TLabel;
    LASEG: TLabel;
    IEColecao: TdxImageEdit;
    IEGrupo: TdxImageEdit;
    IESubGrupo: TdxImageEdit;
    IECategoria: TdxImageEdit;
    IESegmento: TdxImageEdit;
    TSClassificaSITE: TdxTabSheet;
    BClassificaSITE: TBevel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    dxImageEdit3: TdxImageEdit;
    dxImageEdit4: TdxImageEdit;
    dxImageEdit5: TdxImageEdit;
    dxImageEdit6: TdxImageEdit;
    SBEdicao: TSpeedBar;
    SSEdicao: TSpeedbarSection;
    SIEInclui: TSpeedItem;
    SIEAltera: TSpeedItem;
    SIEExclui: TSpeedItem;
    SIESalva: TSpeedItem;
    SIECancela: TSpeedItem;
    TSUCOM: TdxTabSheet;
    PNLUCOM: TPanel;
    PNLUCOMTOP: TPanel;
    GBUCOM: TGroupBox;
    BUCOM: TBevel;
    LAUCOM: TLabel;
    LAQVol: TLabel;
    LAEsp: TLabel;
    IEUnidade: TdxImageEdit;
    CEUQVol: TdxCurrencyEdit;
    EDUEsp: TdxEdit;
    GBUCOMMED: TGroupBox;
    BUCOMMED: TBevel;
    LAPSCN: TLabel;
    LAPeso: TLabel;
    LAMetro: TLabel;
    LARend: TLabel;
    LAGrama: TLabel;
    LALGU: TLabel;
    LALGT: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label19: TLabel;
    CEPeso: TdxCurrencyEdit;
    CEMetr: TdxCurrencyEdit;
    CEGrama: TdxCurrencyEdit;
    CELAUTI: TdxCurrencyEdit;
    CELATOT: TdxCurrencyEdit;
    CEPSCN: TdxCurrencyEdit;
    CERend: TdxCurrencyEdit;
    dxCurrencyEdit1: TdxCurrencyEdit;
    dxCurrencyEdit2: TdxCurrencyEdit;
    dxCurrencyEdit3: TdxCurrencyEdit;
    dxCurrencyEdit4: TdxCurrencyEdit;
    dxCurrencyEdit17: TdxCurrencyEdit;
    GBUCOMFRETE: TGroupBox;
    PNLUCOMFRETE: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    dxCurrencyEdit18: TdxCurrencyEdit;
    dxCurrencyEdit19: TdxCurrencyEdit;
    PNLUCOMMID: TPanel;
    GBUCOMSITE: TGroupBox;
    BUCOMSITE: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dxImageEdit1: TdxImageEdit;
    dxCurrencyEdit5: TdxCurrencyEdit;
    dxEdit1: TdxEdit;
    GBUCOMMEDSITE: TGroupBox;
    BUCOMMEDSITE: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    dxCurrencyEdit6: TdxCurrencyEdit;
    dxCurrencyEdit7: TdxCurrencyEdit;
    PNLUCOMBOT: TPanel;
    GBUCOMDIM: TGroupBox;
    BUCOMDIM: TBevel;
    Label8: TLabel;
    dxImageEdit2: TdxImageEdit;
    GBUCOMMEDDIM: TGroupBox;
    BUCOMMEDDIM: TBevel;
    Label13: TLabel;
    Label14: TLabel;
    Label11: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    dxCurrencyEdit9: TdxCurrencyEdit;
    dxCurrencyEdit10: TdxCurrencyEdit;
    dxCurrencyEdit8: TdxCurrencyEdit;
    dxCurrencyEdit15: TdxCurrencyEdit;
    dxCurrencyEdit16: TdxCurrencyEdit;
    TSESTVEN: TdxTabSheet;
    PNLESTVEN: TPanel;
    GBEstoque: TGroupBox;
    BEstoque: TBevel;
    Label24: TLabel;
    LAQTMI: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    CEQEMA: TdxCurrencyEdit;
    CEQEMI: TdxCurrencyEdit;
    IEQTRL: TdxImageEdit;
    dxImageEdit9: TdxImageEdit;
    dxCurrencyEdit11: TdxCurrencyEdit;
    GBVenda: TGroupBox;
    Bevel1: TBevel;
    Label27: TLabel;
    Label28: TLabel;
    Label31: TLabel;
    dxCurrencyEdit12: TdxCurrencyEdit;
    dxCurrencyEdit13: TdxCurrencyEdit;
    dxCurrencyEdit14: TdxCurrencyEdit;
    TSNCM: TdxTabSheet;
    PNLNCM: TPanel;
    BNCM: TBevel;
    Label22: TLabel;
    LAPIPI: TLabel;
    LACST: TLabel;
    LAORIG: TLabel;
    EDNCM: TdxMaskEdit;
    CEPIPI: TdxCurrencyEdit;
    IEOrigem: TdxImageEdit;
    IEPais: TdxImageEdit;
    dxMaskEdit1: TdxMaskEdit;
    Label18: TLabel;
    dxMaskEdit2: TdxMaskEdit;
    Label32: TLabel;
    dxMaskEdit3: TdxMaskEdit;
    Label33: TLabel;
    dxCurrencyEdit20: TdxCurrencyEdit;
    Label34: TLabel;
    dxCurrencyEdit21: TdxCurrencyEdit;
    Label35: TLabel;
    dxCurrencyEdit22: TdxCurrencyEdit;
    Label36: TLabel;
    TSComposicao: TdxTabSheet;
    PNLComposicao: TPanel;
    DBGComposicao: TdxDBGrid;
    SBComposicao: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedItem1: TSpeedItem;
    SpeedItem2: TSpeedItem;
    SpeedItem3: TSpeedItem;
    SpeedItem4: TSpeedItem;
    SpeedItem5: TSpeedItem;
    TSINFAD: TdxTabSheet;
    PNLINFAD: TPanel;
    GBINFADCAD: TGroupBox;
    GBINFADTEC: TGroupBox;
    TSPreco: TdxTabSheet;
    PCPreco: TdxPageControl;
    TSPrecoArtigo: TdxTabSheet;
    TSPrecoProduto: TdxTabSheet;
    dxDBGrid1: TdxDBGrid;
    SpeedBar1: TSpeedBar;
    SpeedbarSection2: TSpeedbarSection;
    SpeedItem6: TSpeedItem;
    SpeedItem7: TSpeedItem;
    SpeedItem8: TSpeedItem;
    SpeedItem9: TSpeedItem;
    SpeedItem10: TSpeedItem;
    dxDBGrid2: TdxDBGrid;
    SpeedBar2: TSpeedBar;
    SpeedbarSection3: TSpeedbarSection;
    SpeedItem11: TSpeedItem;
    SpeedItem12: TSpeedItem;
    SpeedItem13: TSpeedItem;
    SpeedItem14: TSpeedItem;
    SpeedItem15: TSpeedItem;
    TSILA: TdxTabSheet;
    PNLILA: TBevel;
    BILA: TBevel;
    Bevel2: TBevel;
    BIMG_ILA1: TBevel;
    IMG_ILA1: TImage;
    LAIMG_ILA1: TLabel;
    EDIMG_ILA1: TdxEdit;
    BIMG_ILA2: TBevel;
    IMG_ILA2: TImage;
    LAIMG_ILA2: TLabel;
    EDIMG_ILA2: TdxEdit;
    BIMG_ILA3: TBevel;
    IMG_ILA3: TImage;
    LAIMG_ILA3: TLabel;
    EDIMG_ILA3: TdxEdit;
    BIMG_ILA4: TBevel;
    IMG_ILA4: TImage;
    LAIMG_ILA4: TLabel;
    EDIMG_ILA4: TdxEdit;
    BIMG_ILA5: TBevel;
    IMG_ILA5: TImage;
    LAIMG_ILA5: TLabel;
    EDIMG_ILA5: TdxEdit;
    BIMG_ILA6: TBevel;
    IMG_ILA6: TImage;
    LAIMG_ILA6: TLabel;
    EDIMG_ILA6: TdxEdit;
    BIMG_ILA7: TBevel;
    IMG_ILA7: TImage;
    LAIMG_ILA7: TLabel;
    EDIMG_ILA7: TdxEdit;
    BIMG_ILA8: TBevel;
    IMG_ILA8: TImage;
    LAIMG_ILA8: TLabel;
    EDIMG_ILA8: TdxEdit;
    procedure ACTNovoExecute(Sender: TObject);
    procedure ACTSalvaExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CadastroAfterPost(DataSet: TDataSet);
    procedure CadastroAfterDelete(DataSet: TDataSet);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure DTSCadastroStateChange(Sender: TObject);
    procedure ACTDeleteExecute(Sender: TObject);
    procedure CadastroAfterInsert(DataSet: TDataSet);
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
  FrmProduto_Cadastro_tmp: TFrmProduto_Cadastro_tmp;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmProduto_Cadastro_tmp.FormCloseQuery(Sender: TObject;
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

procedure TFrmProduto_Cadastro_tmp.ACTNovoExecute(Sender: TObject);
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

  RECPrincipal.IDPK := '0';
end;

procedure TFrmProduto_Cadastro_tmp.ACTSalvaExecute(Sender: TObject);
begin
  if oYesNo(handle,'Salvar Planilha ?') = mrNo then
     Abort;

  _Checkout;
  _CheckConstraints;
  try
    oLockWindowUpdate;
    try
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
  finally
    oUnLockWindowUpdate;
  end;

  oAviso(handle,'Lançamentos Efetuados com Sucesso !');
  ACTSalva.Enabled := False;
  _ExecEvent;
  Close;
end;

procedure TFrmProduto_Cadastro_tmp._Edicao;
begin
  with SQLEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(IDG_EVENTO,1) FROM RDB$DATABASE');
    ExecQuery;
    RECPrincipal.IDEV := Current.Vars[0].AsString;
  end;

  Cadastro.Params[0].Value := RECPrincipal.IDEV;
  Cadastro.Params[1].Value := RECPrincipal.CDEV;
  oRTransact(TEdicao);
end;

procedure TFrmProduto_Cadastro_tmp._Pedido;
begin
{}
end;

procedure TFrmProduto_Cadastro_tmp._Menu;
begin
  ACTSalva.Enabled      := (Cadastro.RecNo > 0);
  ACTRelatorios.Enabled := (not ACTSalva.Enabled);
end;

procedure TFrmProduto_Cadastro_tmp.CadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
  _Menu;
end;

procedure TFrmProduto_Cadastro_tmp.CadastroAfterDelete(DataSet: TDataSet);
begin
  inherited;
  _Menu;
end;

procedure TFrmProduto_Cadastro_tmp.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
{    if ANode.Values[DBGConsultaC_ID.Index] mod 2 = 0 then
       AColor := $00EFF0F1;

    if ((AColor = $00EFF0F1) and (AFont.Color = clWhite)) then
       AFont.Color := clBlack;}
  end;
end;

procedure TFrmProduto_Cadastro_tmp.CadastroCalcFields(DataSet: TDataSet);
begin
  CadastroC_ID.Value := Cadastro.RecNo;
end;

procedure TFrmProduto_Cadastro_tmp._Checkout;
begin
  if Cadastro.State in [dsEdit,dsInsert] then
     Cadastro.Post else
     Cadastro.Cancel;
     Cadastro.First;

  ActiveControl := Nil;
end;

procedure TFrmProduto_Cadastro_tmp._CheckConstraints;
begin
end;

procedure TFrmProduto_Cadastro_tmp.DTSCadastroStateChange(
  Sender: TObject);
begin
  inherited;
  oSBState(Cadastro,SBEdicao);
end;

procedure TFrmProduto_Cadastro_tmp.ACTDeleteExecute(
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

procedure TFrmProduto_Cadastro_tmp.CadastroAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DBGConsulta.FocusedColumn := 0;
end;

end.
