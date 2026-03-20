unit pProduto_Devolucao_Cancelamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefaultEdicao, cxGraphics, ActnList, dxDockControl, dxBar,
  dxBarExtItems, ImgList, IBEvents, IBStoredProc, DB, IBCustomDataSet,
  IBQuery, IBSQL, IBDatabase, dxsbar, dxDockPanel, ExtCtrls, dxPageControl,
  cxControls, dxStatusBar, dxExEdtr, dxEdLib, StdCtrls, dxCntner, dxEditor,
  ClipBrd;

type
  TFrmProduto_Devolucao_Cancelamento = class(TFrmDefaultEdicao)
    PNLEdicao: TPanel;
    GBInfAd: TGroupBox;
    GBMotivo: TGroupBox;
    IEMotivo: TdxImageEdit;
    EMINFADCAD: TdxMemo;
    procedure ACTSalvaExecute(Sender: TObject);
    procedure ACTCancelaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EMINFADCADKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Editado: Boolean;
  end;

var
  FrmProduto_Devolucao_Cancelamento: TFrmProduto_Devolucao_Cancelamento;

implementation

{$R *.dfm}

procedure TFrmProduto_Devolucao_Cancelamento.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'PED_PDV_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := '';
  REC_SHE_DEF.GReferencia := '';
  REC_SHE_DEF.GRegra      := '';
  REC_SHE_DEF.GAdmin      := True;
  inherited;
end;

procedure TFrmProduto_Devolucao_Cancelamento.ACTSalvaExecute(Sender: TObject);
begin
  inherited;
  
  REC_SHE_DEF.Selected := True;
  Editado := True;
  Close;
end;

procedure TFrmProduto_Devolucao_Cancelamento.ACTCancelaExecute(Sender: TObject);
begin
  inherited;
  Editado := False;
  Close;
end;

procedure TFrmProduto_Devolucao_Cancelamento.EMINFADCADKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if ((Shift = [ssCtrl]) and (Key = 86)) or ((Shift = [ssCtrl]) and (Key = 118)) then
      EMINFADCAD.Text := Clipboard.AsText;
end;

end.
