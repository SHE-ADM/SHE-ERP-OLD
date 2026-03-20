unit pPSQ_CAD_PAD;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pSHE_DEF_PSQ, dxExEdtr, DB, IBQuery, dxDockControl, IBEvents,
  IBCustomDataSet, IBStoredProc, IBSQL, IBDatabase, dxCntner, ImgList,
  ActnList, dxBar, dxsbar, dxBarExtItems, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls, dxDockPanel, dxEditor, dxEdLib, dxDBELib, IDGlobal, math, StrUtils;

type
  TFrmPSQ_CAD_PAD = class(TFrmSHE_DEF_PSQ)
    DBGConsultaREST: TdxDBGridMaskColumn;
    DBGConsultaFANTASIA: TdxDBGridMaskColumn;
    DBGConsultaRAZAO: TdxDBGridMaskColumn;
    DBGConsultaGRUPO: TdxDBGridMaskColumn;
    DBGConsultaCNPJ: TdxDBGridMaskColumn;
    DBGConsultaCPF: TdxDBGridMaskColumn;
    DBCAD_PRO_INF: TdxDBMemo;
    ConsultaID: TLargeintField;
    ConsultaEP_ID: TSmallintField;
    ConsultaEP_NO: TIBStringField;
    ConsultaEP_NO_ABREV: TIBStringField;
    ConsultaEP_NO_SG: TIBStringField;
    ConsultaEP_NO_RZ: TIBStringField;
    ConsultaEP_NO_GP: TIBStringField;
    ConsultaEP_GC: TSmallintField;
    ConsultaEP_GV: TSmallintField;
    ConsultaEP_GE: TSmallintField;
    ConsultaEP_GR: TSmallintField;
    ConsultaEP_GF: TSmallintField;
    ConsultaIDEV: TLargeintField;
    ConsultaCDEV: TSmallintField;
    ConsultaDTEV: TDateTimeField;
    ConsultaIDCA: TSmallintField;
    ConsultaDTCA: TDateTimeField;
    ConsultaIDED: TSmallintField;
    ConsultaDTED: TDateTimeField;
    ConsultaIDST: TSmallintField;
    ConsultaDTST: TDateTimeField;
    ConsultaCDST: TSmallintField;
    ConsultaREST: TIBStringField;
    ConsultaDEST: TIBStringField;
    ConsultaSTA_NO_ABREV: TIBStringField;
    ConsultaCD_ID: TIntegerField;
    ConsultaFANTASIA: TIBStringField;
    ConsultaFANTASIA_ABREV: TIBStringField;
    ConsultaFANTASIA_SIGLA: TIBStringField;
    ConsultaRAZAO: TIBStringField;
    ConsultaGRUPO: TIBStringField;
    ConsultaCR_ID: TSmallintField;
    ConsultaCR_NO: TIBStringField;
    ConsultaCR_NO_ABREV: TIBStringField;
    ConsultaCR_NO_SG: TIBStringField;
    ConsultaCR_NO_RZ: TIBStringField;
    ConsultaCR_NO_GP: TIBStringField;
    ConsultaCR_DTCA: TDateField;
    ConsultaCR_CNPJ: TIBStringField;
    ConsultaCR_CEP: TIBStringField;
    ConsultaCR_UF: TIBStringField;
    ConsultaCR_CDST: TSmallintField;
    ConsultaCR_REST: TIBStringField;
    ConsultaCV_ID: TSmallintField;
    ConsultaCV_NO: TIBStringField;
    ConsultaCV_DTCA: TDateField;
    ConsultaCV_CDST: TSmallintField;
    ConsultaCV_REST: TIBStringField;
    ConsultaCT_ID: TSmallintField;
    ConsultaCT_NO: TIBStringField;
    ConsultaCT_NO_ABREV: TIBStringField;
    ConsultaCT_NO_SG: TIBStringField;
    ConsultaCT_NO_RZ: TIBStringField;
    ConsultaCT_NO_GP: TIBStringField;
    ConsultaCT_DTCA: TDateField;
    ConsultaCT_CNPJ: TIBStringField;
    ConsultaCT_CEP: TIBStringField;
    ConsultaCT_UF: TIBStringField;
    ConsultaCT_CDST: TSmallintField;
    ConsultaCT_REST: TIBStringField;
    ConsultaCNPJ: TIBStringField;
    ConsultaIE: TIBStringField;
    ConsultaISUF: TIBStringField;
    ConsultaIM: TIBStringField;
    ConsultaCPF: TIBStringField;
    ConsultaIDESTRANGEIRO: TIBStringField;
    ConsultaFIS_CREDICMS: TSmallintField;
    ConsultaFIS_INDIEDEST: TSmallintField;
    ConsultaFIS_INDIEDEST_NO: TIBStringField;
    ConsultaFIS_INDFINAL: TSmallintField;
    ConsultaFIS_INDFINAL_NO: TIBStringField;
    ConsultaFIS_CRT: TSmallintField;
    ConsultaFIS_CRT_NO: TIBStringField;
    ConsultaFIS_CREGTRIB: TSmallintField;
    ConsultaFIS_CREGTRIB_NO: TIBStringField;
    ConsultaCONTATO_NO: TIBStringField;
    ConsultaDDD_NU: TIBStringField;
    ConsultaTEL_NU: TIBStringField;
    ConsultaCONTATO2_NO: TIBStringField;
    ConsultaDDD2_NU: TIBStringField;
    ConsultaTEL2_NU: TIBStringField;
    ConsultaCONTATO3_NO: TIBStringField;
    ConsultaDDD3_NU: TIBStringField;
    ConsultaTEL3_NU: TIBStringField;
    ConsultaCEL_CONTATO_NO: TIBStringField;
    ConsultaCEL_DDD_NU: TIBStringField;
    ConsultaCEL_NU: TIBStringField;
    ConsultaCEL_CONTATO2_NO: TIBStringField;
    ConsultaCEL_DDD2_NU: TIBStringField;
    ConsultaCEL2_NU: TIBStringField;
    ConsultaZAP_CONTATO_NO: TIBStringField;
    ConsultaZAP_DDD_NU: TIBStringField;
    ConsultaZAP_NU: TIBStringField;
    ConsultaZAP_CONTATO2_NO: TIBStringField;
    ConsultaZAP_DDD2_NU: TIBStringField;
    ConsultaZAP2_NU: TIBStringField;
    ConsultaEMAIL: TIBStringField;
    ConsultaEMAIL2: TIBStringField;
    ConsultaEMAIL3: TIBStringField;
    ConsultaENVEMAIL: TSmallintField;
    ConsultaLOG_NU: TLargeintField;
    ConsultaTLO_TX: TIBStringField;
    ConsultaLOG_NO: TIBStringField;
    ConsultaLOG_NO_ABREV: TIBStringField;
    ConsultaNRO: TIBStringField;
    ConsultaXCPL: TIBStringField;
    ConsultaBAI_NO: TIBStringField;
    ConsultaBAI_NO_ABREV: TIBStringField;
    ConsultaLOC_NO: TIBStringField;
    ConsultaLOC_NO_ABREV: TIBStringField;
    ConsultaCEP: TIBStringField;
    ConsultaCMUN: TLargeintField;
    ConsultaUF: TIBStringField;
    ConsultaUF_NO: TIBStringField;
    ConsultaCPAIS: TSmallintField;
    ConsultaENT_LOG_NU: TLargeintField;
    ConsultaENT_TLO_TX: TIBStringField;
    ConsultaENT_LOG_NO: TIBStringField;
    ConsultaENT_LOG_NO_ABREV: TIBStringField;
    ConsultaENT_NRO: TIBStringField;
    ConsultaENT_XCPL: TIBStringField;
    ConsultaENT_BAI_NO: TIBStringField;
    ConsultaENT_BAI_NO_ABREV: TIBStringField;
    ConsultaENT_LOC_NO: TIBStringField;
    ConsultaENT_LOC_NO_ABREV: TIBStringField;
    ConsultaENT_CEP: TIBStringField;
    ConsultaENT_CMUN: TLargeintField;
    ConsultaENT_UF: TIBStringField;
    ConsultaENT_CNPJ_CPF: TIBStringField;
    ConsultaRET_LOG_NU: TLargeintField;
    ConsultaRET_TLO_TX: TIBStringField;
    ConsultaRET_LOG_NO: TIBStringField;
    ConsultaRET_LOG_NO_ABREV: TIBStringField;
    ConsultaRET_NRO: TIBStringField;
    ConsultaRET_XCPL: TIBStringField;
    ConsultaRET_BAI_NO: TIBStringField;
    ConsultaRET_BAI_NO_ABREV: TIBStringField;
    ConsultaRET_LOC_NO: TIBStringField;
    ConsultaRET_LOC_NO_ABREV: TIBStringField;
    ConsultaRET_CEP: TIBStringField;
    ConsultaRET_CMUN: TLargeintField;
    ConsultaRET_UF: TIBStringField;
    ConsultaRET_CNPJ_CPF: TIBStringField;
    ConsultaCOB_CONTATO_NO: TIBStringField;
    ConsultaCOB_DDD_NU: TIBStringField;
    ConsultaCOB_TEL_NU: TIBStringField;
    ConsultaCOB_CONTATO2_NO: TIBStringField;
    ConsultaCOB_DDD2_NU: TIBStringField;
    ConsultaCOB_TEL2_NU: TIBStringField;
    ConsultaCOB_CONTATO3_NO: TIBStringField;
    ConsultaCOB_DDD3_NU: TIBStringField;
    ConsultaCOB_TEL3_NU: TIBStringField;
    ConsultaCOB_CEL_CONTATO_NO: TIBStringField;
    ConsultaCOB_CEL_DDD_NU: TIBStringField;
    ConsultaCOB_CEL_NU: TIBStringField;
    ConsultaCOB_CEL_CONTATO2_NO: TIBStringField;
    ConsultaCOB_CEL_DDD2_NU: TIBStringField;
    ConsultaCOB_CEL2_NU: TIBStringField;
    ConsultaCOB_ZAP_CONTATO_NO: TIBStringField;
    ConsultaCOB_ZAP_DDD_NU: TIBStringField;
    ConsultaCOB_ZAP_NU: TIBStringField;
    ConsultaCOB_ZAP_CONTATO2_NO: TIBStringField;
    ConsultaCOB_ZAP_DDD2_NU: TIBStringField;
    ConsultaCOB_ZAP2_NU: TIBStringField;
    ConsultaCOB_EMAIL: TIBStringField;
    ConsultaCOB_EMAIL2: TIBStringField;
    ConsultaCOB_EMAIL3: TIBStringField;
    ConsultaCOB_LOG_NU: TLargeintField;
    ConsultaCOB_TLO_TX: TIBStringField;
    ConsultaCOB_LOG_NO: TIBStringField;
    ConsultaCOB_LOG_NO_ABREV: TIBStringField;
    ConsultaCOB_NRO: TIBStringField;
    ConsultaCOB_XCPL: TIBStringField;
    ConsultaCOB_BAI_NO: TIBStringField;
    ConsultaCOB_BAI_NO_ABREV: TIBStringField;
    ConsultaCOB_LOC_NO: TIBStringField;
    ConsultaCOB_LOC_NO_ABREV: TIBStringField;
    ConsultaCOB_CEP: TIBStringField;
    ConsultaCOB_CMUN: TLargeintField;
    ConsultaCOB_UF: TIBStringField;
    ConsultaINFADCAD: TIBStringField;
    ConsultaINFADCPL: TIBStringField;
    DBGConsultaCR_NO_ABREV: TdxDBGridMaskColumn;
    DBGConsultaCV_NO: TdxDBGridMaskColumn;
    DBGConsultaIE: TdxDBGridMaskColumn;
    DBGConsultaISUF: TdxDBGridMaskColumn;
    DBGConsultaID: TdxDBGridColumn;
    ConsultaCF_ID: TSmallintField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPSQ_CAD_PAD: TFrmPSQ_CAD_PAD;

implementation

{$R *.dfm}

procedure TFrmPSQ_CAD_PAD.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_PSQ.FPosition := poDesigned; { Posição }

  REC_SHE_PSQ.FMainArea := False; { Aplicativo }
  REC_SHE_PSQ.FWorkArea := False; { Windows    }

  { GRANT USER }
  REC_SHE_PSQ.GDescricao  := 'Clientes';
  REC_SHE_PSQ.GReferencia := 'Cadastro';
  REC_SHE_PSQ.GRegra      := 'Permissões Gerais';
  REC_SHE_PSQ.GAdmin      := False;
  inherited;
end;

end.
