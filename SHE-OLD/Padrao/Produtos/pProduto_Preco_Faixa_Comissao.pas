unit pProduto_Preco_Faixa_Comissao;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefaultEdicao, cxGraphics, dxsbar, ActnList, dxDockControl,
  dxBar, dxBarExtItems, ImgList, IBEvents, IBStoredProc, DB,
  IBCustomDataSet, IBQuery, IBSQL, IBDatabase, dxDockPanel, ExtCtrls,
  dxPageControl, cxControls, dxStatusBar, StdCtrls, dxExEdtr, dxEdLib,
  dxCntner, dxEditor, math;

type
  TFrmProduto_Preco_Faixa_Comissao = class(TFrmDefaultEdicao)
    PNLEdicao: TPanel;
    LAPUCOM_FLOAT: TLabel;
    LAVUPRC_FLOAT: TLabel;
    LAREPETE: TLabel;
    LAVUPRC: TLabel;
    LAPUCOM_DIF: TLabel;
    LAPUCOM: TLabel;
    LAVUPRC_PRZ: TLabel;
    LAVUPRC_PRO: TLabel;
    CEPUCOM_FLOAT: TdxCurrencyEdit;
    CEVUPRC_FLOAT: TdxCurrencyEdit;
    CEREPETE: TdxCurrencyEdit;
    CEVUPRC_PAD: TdxCurrencyEdit;
    CEPUCOM_PAD: TdxCurrencyEdit;
    CEPUCOM_DIF: TdxCurrencyEdit;
    CEVUPRC_PRZ: TdxCurrencyEdit;
    CEVUPRC_PRO: TdxCurrencyEdit;
    PNLPRC_COMPRA: TPanel;
    DSPRC_COMPRA: TdxDockSite;
    dxLayoutDockSite2: TdxLayoutDockSite;
    DPPRC_COMPRA: TdxDockPanel;
    LAVUCOMPRA: TLabel;
    LAVUCOMPRA_IMP: TLabel;
    CEVUPRC_COMPRA: TdxCurrencyEdit;
    CEVUPRC_COMPRA_IMP: TdxCurrencyEdit;
    procedure FormCreate(Sender: TObject);
    procedure ACTValidaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto_Preco_Faixa_Comissao: TFrmProduto_Preco_Faixa_Comissao;

implementation

{$R *.dfm}

procedure TFrmProduto_Preco_Faixa_Comissao.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_PRO_SCT'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := '';
  REC_SHE_DEF.GReferencia := '';
  REC_SHE_DEF.GRegra      := '';
  REC_SHE_DEF.GAdmin      := True;
  inherited;
end;

procedure TFrmProduto_Preco_Faixa_Comissao.ACTValidaExecute(Sender: TObject);
begin
  inherited;
  if oYesNo(handle,'Validar Atualização ?') = mrNo then
  Abort;

  REC_SHE_DEF.Edited := True;
  ACTSaida.Execute;
end;

end.
