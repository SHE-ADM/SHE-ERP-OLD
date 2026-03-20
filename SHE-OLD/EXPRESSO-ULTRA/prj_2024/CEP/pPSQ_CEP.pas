unit pPSQ_CEP;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pSHE_DEF_PSQ, cxGraphics, dxExEdtr, dxsbar, DB, ImgList,
  IBEvents, IBStoredProc, IBCustomDataSet, IBQuery, IBSQL, IBDatabase,
  ActnList, dxBar, dxBarExtItems, dxDockControl, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDockPanel, dxPageControl, ExtCtrls, cxControls, dxStatusBar;

type
  TFrmPSQ_CEP = class(TFrmSHE_DEF_PSQ)
    DBGConsultaLOG_NO: TdxDBGridMaskColumn;
    DBGConsultaCEP: TdxDBGridMaskColumn;
    DBGConsultaBAI_NO: TdxDBGridMaskColumn;
    DBGConsultaCMUN: TdxDBGridColumn;
    DBGConsultaLOC_NO: TdxDBGridMaskColumn;
    DBGConsultaUF: TdxDBGridMaskColumn;
    ConsultaID: TLargeintField;
    ConsultaLOG_NU: TLargeintField;
    ConsultaTLO_NU: TLargeintField;
    ConsultaTLO_NO: TIBStringField;
    ConsultaLOG_NO: TIBStringField;
    ConsultaCEP: TIBStringField;
    ConsultaBAI_NU: TLargeintField;
    ConsultaBAI_NO: TIBStringField;
    ConsultaLOC_NU: TLargeintField;
    ConsultaCMUN: TLargeintField;
    ConsultaLOC_NO: TIBStringField;
    ConsultaUF: TIBStringField;
    ConsultaINFADCPL: TIBStringField;
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
  FrmPSQ_CEP: TFrmPSQ_CEP;

implementation

{$R *.dfm}

procedure TFrmPSQ_CEP._WM_AFTER_CREATE(var Msg: TMessage);
begin
  inherited;
  Consulta.Open;
end;

procedure TFrmPSQ_CEP.FormCreate(Sender: TObject);
begin
  { Eventos }
  REC_SHE_DEF.FB_Event := EmptyStr;

  { Grant }
  REC_SHE_DEF.GAdmin      := True;
  REC_SHE_DEF.GDescricao  := EmptyStr;
  REC_SHE_DEF.GReferencia := EmptyStr;
  REC_SHE_DEF.GRegra      := EmptyStr;

  { Caixa }
  REC_SHE_DEF.FForceCaixa := False;
  inherited;
end;

procedure TFrmPSQ_CEP.DBGConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
     ACTPSQ_OK.Execute;
end;

procedure TFrmPSQ_CEP.ConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DBGConsultaCEP.Field.FocusControl;
end;

end.
