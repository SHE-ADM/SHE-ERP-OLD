unit pPSQ_CAD;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pSHE_DEF_PSQ, cxGraphics, dxExEdtr, dxsbar, DB, ImgList,
  IBEvents, IBStoredProc, IBCustomDataSet, IBQuery, IBSQL, IBDatabase,
  ActnList, dxBar, dxBarExtItems, dxDockControl, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDockPanel, dxPageControl, ExtCtrls, cxControls, dxStatusBar;

type
  TFrmPSQ_CAD = class(TFrmSHE_DEF_PSQ)
    DBGConsultaIDCD: TdxDBGridMaskColumn;
    DBGConsultaFANTASIA: TdxDBGridMaskColumn;
    DBGConsultaRAZAO: TdxDBGridMaskColumn;
    DBGConsultaGRUPO: TdxDBGridMaskColumn;
    DBGConsultaCNPJ: TdxDBGridMaskColumn;
    DBGConsultaCPF: TdxDBGridMaskColumn;
    ConsultaID: TLargeintField;
    ConsultaREST: TIBStringField;
    ConsultaDEST: TIBStringField;
    ConsultaIDCD: TIntegerField;
    ConsultaCNPJ: TIBStringField;
    ConsultaCPF: TIBStringField;
    ConsultaINFADCPL: TIBStringField;
    ConsultaIDCV: TSmallintField;
    ConsultaIDCR: TSmallintField;
    ConsultaIDCT: TSmallintField;
    ConsultaMFRT: TSmallintField;
    ConsultaFANTASIA: TIBStringField;
    ConsultaRAZAO: TIBStringField;
    ConsultaGRUPO: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure _WM_AFTER_CREATE  (var Msg: TMessage); message WM_AFTER_CREATE;
  end;

var
  FrmPSQ_CAD: TFrmPSQ_CAD;

implementation

{$R *.dfm}

procedure TFrmPSQ_CAD._WM_AFTER_CREATE(var Msg: TMessage);
begin
  inherited;
  Consulta.Open;
end;

procedure TFrmPSQ_CAD.FormCreate(Sender: TObject);
begin
  oIREC_SHE_DEF(REC_SHE_DEF);
  REC_SHE_DEF.FB_Event    := 'PED_VEN'; { Eventos }
  REC_SHE_DEF.FForceCaixa := False; { Caixa }

  { Grant }
  REC_SHE_DEF.GDescricao  := 'Pedidos';
  REC_SHE_DEF.GReferencia := 'Vendas';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;
end;

procedure TFrmPSQ_CAD.DBGConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  ACTPSQ_OK.Execute;
end;

procedure TFrmPSQ_CAD.ConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DBGConsultaFANTASIA.Field.FocusControl;
end;

end.
