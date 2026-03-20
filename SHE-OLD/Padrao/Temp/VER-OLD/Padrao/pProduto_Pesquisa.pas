unit pProduto_Pesquisa;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, dxStatusBar, ExtCtrls, StdCtrls, DBCtrls,
  dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, Math, StrUtils,
  dxEditor, dxEdLib, dxDBELib, DB, IBCustomDataSet, IBQuery, dxPageControl;

type
  TFrmProduto_Pesquisa = class(TForm)
    SBRodape: TdxStatusBar;
    PNLPrincipal: TPanel;
    GBArtigo: TGroupBox;
    DBGConsulta: TdxDBGrid;
    DBGConsultaUCOM: TdxDBGridMaskColumn;
    DBGConsultaNCM: TdxDBGridMaskColumn;
    DTSConsulta: TDataSource;
    DBGConsultaDGCP: TdxDBGridMaskColumn;
    DBGConsultaSKU: TdxDBGridMaskColumn;
    DBGConsultaC_EST_QTDE: TdxDBGridMaskColumn;
    DBGConsultaC_EST_QTRL: TdxDBGridColumn;
    DBGConsultaC_VPRC_PAD: TdxDBGridMaskColumn;
    DBGConsultaPIPI: TdxDBGridCurrencyColumn;
    DBGConsultaDECP: TdxDBGridMaskColumn;
    PNLRodape: TPanel;
    PNLINFAD: TPanel;
    dxDBMemo1: TdxDBMemo;
    dxDBMemo2: TdxDBMemo;
    dxDBMemo4: TdxDBMemo;
    PNLDECP: TPanel;
    DBGConsultaVPRC_COMPRA: TdxDBGridMaskColumn;
    DBGConsultaVPRC_COMPRA_IMP: TdxDBGridMaskColumn;
    DBGConsultaVPRC_VAR: TdxDBGridMaskColumn;
    DBGConsultaVPRC_REP: TdxDBGridMaskColumn;
    DBGConsultaVPRC_SITE: TdxDBGridMaskColumn;
    DBGConsultaC_VPRC_PRZ: TdxDBGridColumn;
    DBGConsultaC_VPRC_PRO: TdxDBGridColumn;
    DBGConsultaREST: TdxDBGridMaskColumn;
    PNLAmostra: TPanel;
    PCAmostra: TdxPageControl;
    TSIMG_PAD: TdxTabSheet;
    PNLIMG_PAD: TPanel;
    IMG_PAD: TImage;
    TSILA: TdxTabSheet;
    PNLILA_BMP: TPanel;
    BILA_BMP1: TBevel;
    BILA_BMP2: TBevel;
    BILA_BMP3: TBevel;
    BILA_BMP4: TBevel;
    BILA_BMP5: TBevel;
    BILA_BMP6: TBevel;
    BILA_BMP7: TBevel;
    BILA_BMP8: TBevel;
    DBILA_BMP1: TDBImage;
    DBILA_BMP2: TDBImage;
    DBILA_BMP3: TDBImage;
    DBILA_BMP4: TDBImage;
    DBILA_BMP5: TDBImage;
    DBILA_BMP6: TDBImage;
    DBILA_BMP7: TDBImage;
    DBILA_BMP8: TDBImage;
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSConsultaDataChange(Sender: TObject; Field: TField);
    procedure IMG_PADClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGConsultaDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Editado: Boolean;
  end;

var
  FrmProduto_Pesquisa: TFrmProduto_Pesquisa;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmProduto_Pesquisa.FormCreate(Sender: TObject);
begin
  Editado := False;
end;

procedure TFrmProduto_Pesquisa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_return: begin
                    Editado := True;
                    Close;
                  end;
       vk_escape: begin
                    Editado := False;
                    Close;
                  end;
  end;

end;

procedure TFrmProduto_Pesquisa.DBGConsultaDblClick(Sender: TObject);
begin
  Editado := True;
  Close;
end;

procedure TFrmProduto_Pesquisa.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if (AColumn = DBGConsultaC_EST_QTDE) or (AColumn = DBGConsultaC_EST_QTRL) then
        if ANode.Values[DBGConsultaC_EST_QTDE.Index] > 0 then
        begin
          AFont.Color := clBlack;
          AColor      := $00C4FFC4;
        end else
        if ANode.Values[DBGConsultaC_EST_QTDE.Index] < 0 then
        begin
          AFont.Color := clWhite;
          AColor      := $000024B3;
        end;

    if (AColumn = DBGConsultaC_VPRC_PAD) and (ANode.Values[DBGConsultaC_VPRC_PAD.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaC_VPRC_PRZ) and (ANode.Values[DBGConsultaC_VPRC_PRZ.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaC_VPRC_PRO) and (ANode.Values[DBGConsultaC_VPRC_PRO.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaVPRC_VAR) and (ANode.Values[DBGConsultaVPRC_VAR.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaVPRC_REP) and (ANode.Values[DBGConsultaVPRC_REP.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaVPRC_SITE) and (ANode.Values[DBGConsultaVPRC_SITE.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPIPI) and (ANode.Values[DBGConsultaPIPI.Index] > 0) then
        AFont.Style := [fsBold];

    if ANode.Values[DBGConsultaREST.Index] = 'PRÉ' then
    begin
      AFont.Color := clBlack;
      AColor      := clInfoBk;
    end else
    if ANode.Values[DBGConsultaREST.Index] = 'I' then
    begin
      AFont.Color := clWhite;
      AColor      := $000024B3;
    end;
  end;
end;

procedure TFrmProduto_Pesquisa.DTSConsultaDataChange(Sender: TObject; Field: TField);
begin
  { Consteúdo }
  PNLDECP.Caption := FBird.FBCAD_PROUCON.AsString;

  { Imagem }
  if IMG_PAD.Tag <> FBird.FBCAD_PROIMG_ID.AsInteger then
  begin
    IMG_PAD.Tag := FBird.FBCAD_PROIMG_ID.AsInteger;
    oLoadJPG(FBird.FBCAD_PROIMG_PAD,IMG_PAD.Picture);
  end;

  { Preços }
  DBGConsultaC_EST_QTRL.Visible := (RECParametros.EST_QTRL);
  
  DBGConsulta.Bands[2].Caption := 'Preço '+IFThen(FBird.FBCAD_PROC_VPRC_PAD.Tag = 1,'Atacarejo','Atacado')+' R$';
  DBGConsulta.Bands[2].Visible := (FBird.FBCAD_PROC_VPRC_PAD.Tag <> 2);
  DBGConsulta.Bands[3].Visible := (FBird.FBCAD_PROC_VPRC_PAD.Tag <> 2) and (FBird.FBCAD_PROC_VPRC_PAD.Tag <> 3);
  DBGConsulta.Bands[4].Visible := (FBird.FBCAD_PROC_VPRC_PAD.Tag <> 2) and (FBird.FBCAD_PROC_VPRC_PAD.Tag <> 3);
  DBGConsulta.Bands[5].Visible := (FBird.FBCAD_PROC_VPRC_PAD.Tag  = 3);
  DBGConsulta.Bands[6].Visible := (FBird.FBCAD_PROC_VPRC_PAD.Tag  = 2);

  DBGConsulta.ApplyBestFit(DBGConsultaSKU);
end;

procedure TFrmProduto_Pesquisa.IMG_PADClick(Sender: TObject);
begin
{  uLoadZoom(IMG_PAD.Picture,[FBird.FBCAD_PROARTIGO.AsString,
                         '',
                         '',
                         FBird.FBCAD_PRODECP.AsString,
                         '',
                         '']);}
end;

procedure TFrmProduto_Pesquisa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Editado then
     Editado := (FBird.FBCAD_PRO.RecNo > 0);
  Action := caFree;
end;

procedure TFrmProduto_Pesquisa.FormActivate(Sender: TObject);
begin
  FBird.FBCAD_PRO.First;
end;

end.
