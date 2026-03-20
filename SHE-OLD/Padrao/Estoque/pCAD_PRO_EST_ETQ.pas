unit pCAD_PRO_EST_ETQ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pPadr5, dxExEdtr, cxGraphics, ImgList, ActnList, dxBar,
  dxDockControl, IBEvents, IBStoredProc, IBSQL, IBDatabase, DB,
  IBCustomDataSet, IBQuery, cxControls, dxStatusBar, rxAnimate, rxGIFCtrl,
  rxSpeedbar, dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxPageControl, StdCtrls,
  dxDockPanel, ExtCtrls, dxEdLib, dxEditor, dxDBTLCl, dxGrClms;

type
  TFrmCAD_PRO_EST_ETQ = class(TFrmPadr5)
    PNLEtiqueta: TPanel;
    StyleController: TdxEditStyleController;
    DSEtiqueta: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    DPEtiqueta: TdxDockPanel;
    PNLDTCA: TPanel;
    SHDTCA: TShape;
    LADTCA: TLabel;
    PNLQTSP: TPanel;
    SHQTSP: TShape;
    LAQTSP: TLabel;
    PNLCTNR: TPanel;
    SHCTNR: TShape;
    LACTNR: TLabel;
    PNLCDET: TPanel;
    SHCDET: TShape;
    LACDET: TLabel;
    PNLQTDE: TPanel;
    SHQTDE: TShape;
    LAQTDE: TLabel;
    PNLLOTE: TPanel;
    SHLOTE: TShape;
    LALOTE: TLabel;
    CECDET: TdxCurrencyEdit;
    DEDTCA: TdxDateEdit;
    IECTNR: TdxImageEdit;
    EDLOTE: TdxEdit;
    CEQTDE: TdxCurrencyEdit;
    CEQTSP: TdxCurrencyEdit;
    PNLCDTP: TPanel;
    SHCDTP: TShape;
    LACDTP: TLabel;
    PNLCDDF: TPanel;
    SHCDDF: TShape;
    LACDDF: TLabel;
    IECDTP: TdxImageEdit;
    IECDDF: TdxImageEdit;
    PNLHST_EST: TPanel;
    SHPED_PDV_RDV: TShape;
    LAPED_PDV_RDV: TLabel;
    PNLINFADCAD: TPanel;
    SHINFADCAD: TShape;
    LAINFADCAD: TLabel;
    EMINFADCAD: TdxMemo;
    DBGHST_PED: TdxDBGrid;
    HST_EST: TIBQuery;
    DTSHST_EST: TDataSource;
    HST_ESTLBL_EST_CDRO: TIBStringField;
    HST_ESTEST_CDRO: TLargeintField;
    HST_ESTLBL_EST_DTCA: TIBStringField;
    HST_ESTEST_DTCA: TIBStringField;
    HST_ESTLBL_EST_DTED: TIBStringField;
    HST_ESTEST_DTED: TIBStringField;
    HST_ESTLBL_EST_DTSP: TIBStringField;
    HST_ESTEST_DTSP: TIBStringField;
    HST_ESTLBL_EST_DTST: TIBStringField;
    HST_ESTEST_DTST: TIBStringField;
    DTSHST_PED: TDataSource;
    HST_PED: TIBQuery;
    HST_PEDLBL_PED_DEPK: TIBStringField;
    HST_PEDPED_DEPK: TLargeintField;
    HST_PEDLBL_PED_DTPK: TIBStringField;
    HST_PEDPED_DTPK: TIBStringField;
    HST_PEDLBL_PED_CD_NO: TIBStringField;
    HST_PEDPED_CD_NO: TIBStringField;
    HST_PEDLBL_PED_CR_NO: TIBStringField;
    HST_PEDPED_CR_NO: TIBStringField;
    HST_PEDLBL_PED_CDRO: TIBStringField;
    HST_PEDPED_CDRO: TLargeintField;
    HST_PEDLBL_PED_DTRO: TIBStringField;
    HST_PEDPED_DTRO: TIBStringField;
    HST_PEDLBL_PED_CDNF: TIBStringField;
    HST_PEDPED_CDNF: TLargeintField;
    HST_PEDLBL_PED_DTNF: TIBStringField;
    HST_PEDPED_DTNF: TIBStringField;
    HST_PEDLBL_PED_IDSA: TIBStringField;
    HST_PEDPED_IDSA: TIBStringField;
    HST_PEDLBL_PED_DTSA: TIBStringField;
    HST_PEDPED_DTSA: TIBStringField;
    Panel1: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    DBGHST_EST: TdxDBGrid;
    DBGHST_PEDLBL_PED_DEPK: TdxDBGridMaskColumn;
    DBGHST_PEDPED_DEPK: TdxDBGridColumn;
    DBGHST_PEDLBL_PED_DTPK: TdxDBGridMaskColumn;
    DBGHST_PEDPED_DTPK: TdxDBGridMaskColumn;
    DBGHST_PEDLBL_PED_CD_NO: TdxDBGridMaskColumn;
    DBGHST_PEDPED_CD_NO: TdxDBGridMaskColumn;
    DBGHST_PEDLBL_PED_CR_NO: TdxDBGridMaskColumn;
    DBGHST_PEDPED_CR_NO: TdxDBGridMaskColumn;
    DBGHST_PEDLBL_PED_CDRO: TdxDBGridMaskColumn;
    DBGHST_PEDPED_CDRO: TdxDBGridColumn;
    DBGHST_PEDLBL_PED_DTRO: TdxDBGridMaskColumn;
    DBGHST_PEDPED_DTRO: TdxDBGridMaskColumn;
    DBGHST_PEDLBL_PED_CDNF: TdxDBGridMaskColumn;
    DBGHST_PEDPED_CDNF: TdxDBGridColumn;
    DBGHST_PEDLBL_PED_DTNF: TdxDBGridMaskColumn;
    DBGHST_PEDPED_DTNF: TdxDBGridMaskColumn;
    DBGHST_PEDLBL_PED_IDSA: TdxDBGridMaskColumn;
    DBGHST_PEDPED_IDSA: TdxDBGridMaskColumn;
    DBGHST_PEDLBL_PED_DTSA: TdxDBGridMaskColumn;
    DBGHST_PEDPED_DTSA: TdxDBGridMaskColumn;
    DBGHST_ESTLBL_EST_CDRO: TdxDBGridMaskColumn;
    DBGHST_ESTEST_CDRO: TdxDBGridColumn;
    DBGHST_ESTLBL_EST_DTCA: TdxDBGridMaskColumn;
    DBGHST_ESTEST_DTCA: TdxDBGridMaskColumn;
    DBGHST_ESTLBL_EST_DTED: TdxDBGridMaskColumn;
    DBGHST_ESTEST_DTED: TdxDBGridMaskColumn;
    DBGHST_ESTLBL_EST_DTSP: TdxDBGridMaskColumn;
    DBGHST_ESTEST_DTSP: TdxDBGridMaskColumn;
    DBGHST_ESTLBL_EST_DTST: TdxDBGridMaskColumn;
    DBGHST_ESTEST_DTST: TdxDBGridMaskColumn;
    HST_PEDLBL_PED_DEST: TIBStringField;
    HST_PEDPED_DTBX: TIBStringField;
    DBGHST_PEDLBL_PED_DEST: TdxDBGridMaskColumn;
    DBGHST_PEDPED_DTBX: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCAD_PRO_EST_ETQ: TFrmCAD_PRO_EST_ETQ;

implementation

{$R *.dfm}

procedure TFrmCAD_PRO_EST_ETQ.FormCreate(Sender: TObject);
begin
  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_PRO_EST'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Pedidos';
  REC_SHE_DEF.GReferencia := 'Vendas';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
  inherited;

  PCPrincipal.ActivePage := TSEdicao;
end;

end.
