unit pPedidos;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pPadrao, dxExEdtr, cxGraphics, ImgList, ActnList, IBEvents,
  IBStoredProc, IBSQL, IBDatabase, DB, IBCustomDataSet, IBQuery,
  rxSpeedbar, cxControls, dxStatusBar, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  dxPageControl, ExtCtrls, dxDBTLCl, dxGrClms,

  Math, StrUtils, DateUtils;

type
  TFrmPedidos = class(TFrmPadrao)
    CadastroID: TIntegerField;
    CadastroIDEP: TSmallintField;
    CadastroIDCA: TSmallintField;
    CadastroDTCA: TDateTimeField;
    CadastroCDST: TSmallintField;
    CadastroREST: TIBStringField;
    CadastroDEST: TIBStringField;
    CadastroD_DEST: TIBStringField;
    CadastroAPST: TSmallintField;
    CadastroFBST: TSmallintField;
    CadastroBXST: TSmallintField;
    CadastroLQST: TSmallintField;
    CadastroBQST: TSmallintField;
    CadastroIDPK: TLargeintField;
    CadastroDEPK: TIBStringField;
    CadastroDTPK: TDateField;
    CadastroHTPK: TTimeField;
    CadastroD_DTPK: TDateTimeField;
    CadastroCDDV: TLargeintField;
    CadastroDEDV: TIBStringField;
    CadastroDTDV: TDateField;
    CadastroCDCX: TLargeintField;
    CadastroCDPP: TLargeintField;
    CadastroCTNR: TIBStringField;
    CadastroIDCD: TIntegerField;
    CadastroDECD: TIBStringField;
    CadastroRZCD: TIBStringField;
    CadastroPJCD: TIBStringField;
    CadastroGPCD: TIBStringField;
    CadastroCNCD: TSmallintField;
    CadastroCSCD: TSmallintField;
    CadastroUFCD: TIBStringField;
    CadastroRSCD: TIBStringField;
    CadastroIDCV: TSmallintField;
    CadastroDECV: TIBStringField;
    CadastroRSCV: TIBStringField;
    CadastroIDCR: TSmallintField;
    CadastroDECR: TIBStringField;
    CadastroUFCR: TIBStringField;
    CadastroRSCR: TIBStringField;
    CadastroIDCT: TSmallintField;
    CadastroDECT: TIBStringField;
    CadastroUFCT: TIBStringField;
    CadastroRSCT: TIBStringField;
    CadastroIDOS: TSmallintField;
    CadastroCDOS: TLargeintField;
    CadastroDTOS: TDateField;
    CadastroHTOS: TTimeField;
    CadastroD_DTOS: TDateTimeField;
    CadastroD_NUOS: TSmallintField;
    CadastroIDSP: TSmallintField;
    CadastroDESP: TIBStringField;
    CadastroDTSP: TDateField;
    CadastroHTSP: TTimeField;
    CadastroD_DTSP: TDateTimeField;
    CadastroD_NUSP: TSmallintField;
    CadastroQTSP: TIBBCDField;
    CadastroRLSP: TIntegerField;
    CadastroD_QTSP: TIBBCDField;
    CadastroD_RLSP: TIntegerField;
    CadastroVTSP: TIBBCDField;
    CadastroD_VTSP: TIBBCDField;
    CadastroPPSP: TIBBCDField;
    CadastroD_PPSP: TIBBCDField;
    CadastroCDRO: TLargeintField;
    CadastroDTRO: TDateField;
    CadastroHTRO: TTimeField;
    CadastroD_DTRO: TDateTimeField;
    CadastroCDNF: TLargeintField;
    CadastroD_CDNF: TLargeintField;
    CadastroDTNF: TDateField;
    CadastroHTNF: TTimeField;
    CadastroD_DTNF: TDateTimeField;
    CadastroD_NUNF: TSmallintField;
    CadastroVNF: TIBBCDField;
    CadastroVIPI: TIBBCDField;
    CadastroVST: TIBBCDField;
    CadastroCFOP: TIBStringField;
    CadastroD_DTSA: TDateTimeField;
    CadastroD_NUSA: TSmallintField;
    CadastroIDSC: TSmallintField;
    CadastroTDSC: TIBStringField;
    CadastroPDSC: TIBBCDField;
    CadastroVDSC: TIBBCDField;
    CadastroTSDE: TIBBCDField;
    CadastroD_TSDE: TIBBCDField;
    CadastroTCDE: TIBBCDField;
    CadastroD_TCDE: TIBBCDField;
    CadastroVTFA: TIBBCDField;
    CadastroVTAP: TIBBCDField;
    CadastroPCOM: TIBBCDField;
    CadastroVCOM: TIBBCDField;
    CadastroMFRT: TSmallintField;
    CadastroD_MFRT: TIBStringField;
    CadastroVFRT: TIBBCDField;
    CadastroPSBR: TIBBCDField;
    CadastroPSLQ: TIBBCDField;
    CadastroCDPD: TSmallintField;
    CadastroSTPD: TIBStringField;
    CadastroSVPD: TSmallintField;
    CadastroABPD: TSmallintField;
    CadastroDVPD: TSmallintField;
    CadastroFAPD: TSmallintField;
    CadastroBQPD: TSmallintField;
    CadastroBEPD: TSmallintField;
    CadastroQEPD: TSmallintField;
    CadastroSEPD: TSmallintField;
    CadastroSDPD: TSmallintField;
    CadastroCDCO: TSmallintField;
    CadastroSTCO: TIBStringField;
    CadastroD_STCO: TIBStringField;
    CadastroTPCO: TSmallintField;
    CadastroRECO: TIBStringField;
    CadastroCDPG: TSmallintField;
    CadastroDEPG: TIBStringField;
    CadastroCDBX: TLargeintField;
    CadastroDTBX: TDateField;
    CadastroHTBX: TTimeField;
    CadastroD_DTBX: TDateTimeField;
    CadastroINFADCAD: TIBStringField;
    CadastroINFADOS: TIBStringField;
    CadastroINFSTOS: TIBStringField;
    CadastroLOG_PRN_CDEV: TSmallintField;
    CadastroLOG_PRN_QTEV: TSmallintField;
    CadastroINFADPRN: TIBStringField;
    CadastroAPI_B2B: TSmallintField;
    CadastroAPI_B2B_PZSP: TIntegerField;
    CadastroIP: TIBStringField;
    CadastroHOST: TIBStringField;
    CadastroC_IDPK: TLargeintField;
    DBGConsultaD_DEST: TdxDBGridMaskColumn;
    DBGConsultaDEPK: TdxDBGridMaskColumn;
    DBGConsultaDTPK: TdxDBGridColumn;
    DBGConsultaHTPK: TdxDBGridColumn;
    DBGConsultaSTPD: TdxDBGridMaskColumn;
    DBGConsultaD_CDNF: TdxDBGridColumn;
    DBGConsultaDTNF: TdxDBGridColumn;
    DBGConsultaHTNF: TdxDBGridColumn;
    DBGConsultaD_NUNF: TdxDBGridColumn;
    DBGConsultaD_DTSA: TdxDBGridDateColumn;
    DBGConsultaD_NUSA: TdxDBGridColumn;
    DBGConsultaAPST: TdxDBGridMaskColumn;
    DBGConsultaFBST: TdxDBGridMaskColumn;
    DBGConsultaBXST: TdxDBGridMaskColumn;
    DBGConsultaLQST: TdxDBGridMaskColumn;
    DBGConsultaBQST: TdxDBGridMaskColumn;
    DBGConsultaSVPD: TdxDBGridMaskColumn;
    DBGConsultaABPD: TdxDBGridMaskColumn;
    DBGConsultaDVPD: TdxDBGridMaskColumn;
    DBGConsultaFAPD: TdxDBGridMaskColumn;
    DBGConsultaBQPD: TdxDBGridMaskColumn;
    DBGConsultaBEPD: TdxDBGridMaskColumn;
    DBGConsultaQEPD: TdxDBGridMaskColumn;
    DBGConsultaSEPD: TdxDBGridMaskColumn;
    DBGConsultaSDPD: TdxDBGridMaskColumn;
    DBGConsultaC_IDPK: TdxDBGridColumn;
    DBGConsultaCTNR: TdxDBGridMaskColumn;
    DBGConsultaDECD: TdxDBGridMaskColumn;
    DBGConsultaGPCD: TdxDBGridMaskColumn;
    DBGConsultaUFCD: TdxDBGridMaskColumn;
    DBGConsultaDECV: TdxDBGridMaskColumn;
    DBGConsultaDECR: TdxDBGridMaskColumn;
    DBGConsultaCNCD: TdxDBGridMaskColumn;
    DBGConsultaCSCD: TdxDBGridMaskColumn;
    DBGConsultaPDSC: TdxDBGridMaskColumn;
    DBGConsultaVDSC: TdxDBGridMaskColumn;
    DBGConsultaTCDE: TdxDBGridMaskColumn;
    DBGConsultaD_TCDE: TdxDBGridMaskColumn;
    DBGConsultaCDOS: TdxDBGridColumn;
    DBGConsultaDTOS: TdxDBGridColumn;
    DBGConsultaHTOS: TdxDBGridColumn;
    DBGConsultaD_NUOS: TdxDBGridColumn;
    DBGConsultaDTSP: TdxDBGridColumn;
    DBGConsultaHTSP: TdxDBGridColumn;
    DBGConsultaD_NUSP: TdxDBGridColumn;
    DBGConsultaVTSP: TdxDBGridMaskColumn;
    DBGConsultaD_VTSP: TdxDBGridColumn;
    DBGConsultaPPSP: TdxDBGridMaskColumn;
    DBGConsultaVTFA: TdxDBGridMaskColumn;
    DBGConsultaVTAP: TdxDBGridMaskColumn;
    DBGConsultaD_STCO: TdxDBGridColumn;
    DBGConsultaRECO: TdxDBGridMaskColumn;
    DBGConsultaTPCO: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure _GetText;
  public
    { Public declarations }
    procedure _WM_AFTER_CREATE  (var Msg: TMessage); message WM_AFTER_CREATE;
  end;

var
  FrmPedidos: TFrmPedidos;

implementation

{$R *.dfm}

procedure TFrmPedidos._WM_AFTER_CREATE(var Msg: TMessage);
begin
  inherited;
  with Cadastro do
  begin
    _GetText;

    SQL.Add('WHERE (PK.APST = 1');
    SQL.Add('OR     PK.DTPK BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE)))');
    SQL.Add('OR     PK.DTNF BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE)))');
    SQL.Add('OR     PK.DTBX BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE)))');
    SQL.Add(')');

    if RECUsuarios.Grupo = 'VEN' then
    SQL.Add('AND PK.IDCV = ''' + RECUsuarios.Id + '''');

    SQL.Add('ORDER BY PK.DTCA DESC');
    Prepare;
    Open;
  end;
end;

procedure TFrmPedidos.FormCreate(Sender: TObject);
begin
  { Eventos }
  REC_SHE_DEF.FB_Event := 'TAB_PAG';

  { Posição Página }
  REC_SHE_DEF.FrmPosition := Self.Position;
  Self.Left := 0;

  { Grant }
  REC_SHE_DEF.GDescricao  := 'Tabelas';
  REC_SHE_DEF.GReferencia := 'Prazos';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';

  inherited;
end;

procedure TFrmPedidos.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmPedidos := Nil;
end;

procedure TfrmPedidos._GetText;
begin
  with Cadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID  ,PK.IDEP,');
    SQL.Add('       PK.IDCA,PK.DTCA,PK.CDST,PK.REST,PK.DEST,PK.D_DEST,');
    SQL.Add('       PK.APST,PK.FBST,PK.BXST,PK.LQST,PK.BQST  ,');
    SQL.Add('       PK.IDPK,PK.DEPK,PK.DTPK,PK.HTPK,PK.D_DTPK,');
    SQL.Add('       PK.CDCX,PK.CDPP,PK.CTNR,');
    SQL.Add('       PK.CDDV,PK.DEDV,PK.DTDV,');
    SQL.Add('       PK.IDCD,PK.DECD,PK.RZCD,PK.PJCD,PK.GPCD,PK.CNCD,PK.CSCD,PK.UFCD,PK.RSCD,');
    SQL.Add('       PK.IDCV,PK.DECV,PK.RSCV,');
    SQL.Add('       PK.IDCR,PK.DECR,PK.UFCR,PK.RSCR,');
    SQL.Add('       PK.IDCT,PK.DECT,PK.UFCT,PK.RSCT,');
    SQL.Add('       PK.IDOS,PK.CDOS,PK.DTOS,PK.HTOS,PK.D_DTOS,PK.D_NUOS,');
    SQL.Add('       PK.IDSP,PK.DESP,PK.DTSP,PK.HTSP,PK.D_DTSP,PK.D_NUSP,');
    SQL.Add('       PK.QTSP,PK.RLSP,PK.D_QTSP,PK.D_RLSP,');
    SQL.Add('       PK.VTSP,PK.D_VTSP,PK.PPSP,PK.D_PPSP,');
    SQL.Add('       PK.CDRO,PK.DTRO  ,PK.HTRO,PK.D_DTRO,');
    SQL.Add('       PK.CDNF,PK.D_CDNF,PK.DTNF,PK.HTNF,PK.D_DTNF,PK.D_NUNF,');
    SQL.Add('       PK.VNF ,PK.VIPI  ,PK.VST ,PK.CFOP,');
    SQL.Add('       PK.D_DTSA,PK.D_NUSA,');
    SQL.Add('       PK.IDSC,PK.TDSC  ,PK.PDSC,PK.VDSC  ,');
    SQL.Add('       PK.TSDE,PK.D_TSDE,PK.TCDE,PK.D_TCDE,');
    SQL.Add('       PK.VTFA,PK.VTAP,');
    SQL.Add('       PK.PCOM,PK.VCOM,');
    SQL.Add('       PK.MFRT,PK.D_MFRT,PK.VFRT,PK.PSBR,PK.PSLQ,');
    SQL.Add('       PK.CDPD,PK.STPD,');
    SQL.Add('       PK.SVPD,PK.ABPD,PK.DVPD,PK.FAPD,PK.BQPD,');
    SQL.Add('       PK.BEPD,PK.QEPD,PK.SEPD,PK.SDPD,');
    SQL.Add('       PK.CDCO,PK.STCO,PK.D_STCO,');
    SQL.Add('       PK.TPCO,PK.RECO,');
    SQL.Add('       PK.CDPG,PK.DEPG,');
    SQL.Add('       PK.CDBX,PK.DTBX,PK.HTBX,PK.D_DTBX,');
    SQL.Add('       PK.INFADCAD,PK.INFADOS,PK.INFSTOS,');
    SQL.Add('       PK.LOG_PRN_CDEV,PK.LOG_PRN_QTEV,PK.INFADPRN,');
    SQL.Add('       PK.API_B2B,PK.API_B2B_PZSP,');
    SQL.Add('       PK.IP,PK.HOST');

    SQL.Add('FROM ' + oREPZero('VW_PED_VEN_CAB_TMP','_',RECParametros.Id,3) + ' AS PK');
  end;
end;

end.

