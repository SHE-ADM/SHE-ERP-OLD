unit pCadastros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefault, dxExEdtr, cxGraphics, IBQuery, dxBar, ImgList,
  ActnList, dxDockControl, dxBarExtItems, IBEvents, DB, IBCustomDataSet,
  IBStoredProc, IBSQL, IBDatabase, cxControls, dxStatusBar, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDockPanel, ExtCtrls, dxDBTLCl, dxGrClms, dxsbar;

type
  TFrmCadastros = class(TFrmDefault)
    DBGConsultaIDCD: TdxDBGridMaskColumn;
    DBGConsultaDECD: TdxDBGridMaskColumn;
    DBGConsultaRZCD: TdxDBGridMaskColumn;
    DBGConsultaGPCD: TdxDBGridMaskColumn;
    DBGConsultaDTCA: TdxDBGridDateColumn;
    DBGConsultaDTFU: TdxDBGridDateColumn;
    DBGConsultaCNPJ: TdxDBGridMaskColumn;
    DBGConsultaIE: TdxDBGridMaskColumn;
    DBGConsultaISUF: TdxDBGridMaskColumn;
    DBGConsultaIM: TdxDBGridMaskColumn;
    DBGConsultaCPF: TdxDBGridMaskColumn;
    DBGConsultaIDESTRANGEIRO: TdxDBGridMaskColumn;
    ConsultaIDCD: TIntegerField;
    ConsultaIDEP: TSmallintField;
    ConsultaCDCD: TIntegerField;
    ConsultaDECD: TIBStringField;
    ConsultaRZCD: TIBStringField;
    ConsultaGPCD: TIBStringField;
    ConsultaIDCA: TSmallintField;
    ConsultaDECA: TIBStringField;
    ConsultaDTCA: TDateTimeField;
    ConsultaDTFU: TDateField;
    ConsultaIDED: TSmallintField;
    ConsultaDEED: TIBStringField;
    ConsultaDTED: TDateTimeField;
    ConsultaDTUTPC: TDateTimeField;
    ConsultaDTUTPP: TDateTimeField;
    ConsultaDTUTPV: TDateTimeField;
    ConsultaIDST: TSmallintField;
    ConsultaDEST: TIBStringField;
    ConsultaDTST: TDateTimeField;
    ConsultaCDST: TSmallintField;
    ConsultaREST: TIBStringField;
    ConsultaSTFI: TIBStringField;
    ConsultaFIS_CRT: TSmallintField;
    ConsultaD_FIS_CRT: TIBStringField;
    ConsultaFIS_CREGTRIB: TSmallintField;
    ConsultaD_FIS_CREGTRIB: TIBStringField;
    ConsultaFIS_INDFINAL: TSmallintField;
    ConsultaD_FIS_INDFINAL: TIBStringField;
    ConsultaFIS_CREDICMS: TSmallintField;
    ConsultaCNPJ: TIBStringField;
    ConsultaIE: TIBStringField;
    ConsultaFIS_INDIEDEST: TSmallintField;
    ConsultaD_FIS_INDIEDEST: TIBStringField;
    ConsultaISUF: TIBStringField;
    ConsultaIM: TIBStringField;
    ConsultaCPF: TIBStringField;
    ConsultaIDESTRANGEIRO: TIBStringField;
    DBGConsultaD_FIS_CRT: TdxDBGridColumn;
    DBGConsultaD_FIS_CREGTRIB: TdxDBGridColumn;
    DBGConsultaD_FIS_INDFINAL: TdxDBGridColumn;
    DBGConsultaD_FIS_INDIEDEST: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastros: TFrmCadastros;

implementation

{$R *.dfm}

end.
