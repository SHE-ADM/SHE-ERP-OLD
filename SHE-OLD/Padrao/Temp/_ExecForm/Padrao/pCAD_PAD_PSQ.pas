unit pCAD_PAD_PSQ;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pSHE_DEF_PSQ, cxGraphics, dxExEdtr, dxsbar, DB, ImgList,
  IBEvents, IBStoredProc, IBCustomDataSet, IBQuery, IBSQL, IBDatabase,
  ActnList, dxBar, dxBarExtItems, dxDockControl, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDockPanel, dxPageControl, ExtCtrls, cxControls, dxStatusBar,
  dxDBTLCl, dxGrClms,
  math, StrUtils, IDGlobal, DBCtrls, dxEditor, dxEdLib, dxDBELib;

type
  TFrmCAD_PAD_PSQ = class(TFrmSHE_DEF_PSQ)
    BLBPSQ_ART: TdxBarLargeButton;
    PNLDSConsulta_BOT: TPanel;
    PNLINFADCAD: TPanel;
    DSINFADCAD: TdxDockSite;
    LDSCAD_PRO_PRC: TdxLayoutDockSite;
    DPINFADCAD: TdxDockPanel;
    DBINFADCAD: TdxDBMemo;
    ConsultaIDCD: TIntegerField;
    ConsultaCDCD: TIntegerField;
    ConsultaDECD: TIBStringField;
    ConsultaRZCD: TIBStringField;
    ConsultaGPCD: TIBStringField;
    ConsultaFIN_IDEP: TIntegerField;
    ConsultaFIN_VCRD: TIBBCDField;
    ConsultaFIN_CSPD: TIntegerField;
    ConsultaFIN_PDSC: TIBBCDField;
    ConsultaFIN_VDSC: TIBBCDField;
    ConsultaFIN_INFADCAD_L1: TIBStringField;
    ConsultaFIN_INFADCAD_L2: TIBStringField;
    ConsultaFIN_PDSC_001: TIBBCDField;
    ConsultaFIN_VDSC_INI_001: TIBBCDField;
    ConsultaFIN_VDSC_FIM_001: TIBBCDField;
    ConsultaFIN_INFADCAD_L1_001: TIBStringField;
    ConsultaFIN_INFADCAD_L2_001: TIBStringField;
    ConsultaFIN_PDSC_002: TIBBCDField;
    ConsultaFIN_VDSC_INI_002: TIBBCDField;
    ConsultaFIN_VDSC_FIM_002: TIBBCDField;
    ConsultaFIN_INFADCAD_L1_002: TIBStringField;
    ConsultaFIN_INFADCAD_L2_002: TIBStringField;
    ConsultaFIN_PDSC_003: TIBBCDField;
    ConsultaFIN_VDSC_INI_003: TIBBCDField;
    ConsultaFIN_VDSC_FIM_003: TIBBCDField;
    ConsultaFIN_INFADCAD_L1_003: TIBStringField;
    ConsultaFIN_INFADCAD_L2_003: TIBStringField;
    ConsultaDTCA: TDateTimeField;
    ConsultaDTFU: TDateField;
    ConsultaDTPC: TDateTimeField;
    ConsultaDTPP: TDateTimeField;
    ConsultaDTPV: TDateTimeField;
    ConsultaCDST: TSmallintField;
    ConsultaREST: TIBStringField;
    ConsultaDEST: TIBStringField;
    ConsultaCNPJ: TIBStringField;
    ConsultaFIS_CRT: TSmallintField;
    ConsultaFIS_CREDICMS: TSmallintField;
    ConsultaIE: TIBStringField;
    ConsultaFIS_INDIEDEST: TSmallintField;
    ConsultaFIS_INDFINAL: TSmallintField;
    ConsultaISUF: TIBStringField;
    ConsultaIM: TIBStringField;
    ConsultaCPF: TIBStringField;
    ConsultaIDESTRANGEIRO: TIBStringField;
    ConsultaIDCV: TSmallintField;
    ConsultaDECV: TIBStringField;
    ConsultaIDCR: TSmallintField;
    ConsultaDECR: TIBStringField;
    ConsultaIDCC: TSmallintField;
    ConsultaDECC: TIBStringField;
    ConsultaCDPD: TSmallintField;
    ConsultaCDCO: TSmallintField;
    ConsultaCDPG: TSmallintField;
    ConsultaDEPG: TIBStringField;
    ConsultaIDCT: TSmallintField;
    ConsultaDECT: TIBStringField;
    ConsultaMFRT: TSmallintField;
    ConsultaCONTATO: TIBStringField;
    ConsultaDDD: TIBStringField;
    ConsultaTEL: TIBStringField;
    ConsultaEMAIL: TIBStringField;
    ConsultaENVEMAIL: TSmallintField;
    ConsultaD_FONE: TIBStringField;
    ConsultaD_CONTATO: TIBStringField;
    ConsultaD_CONTATO2: TIBStringField;
    ConsultaD_CONTATO3: TIBStringField;
    ConsultaD_CEL_CONTATO: TIBStringField;
    ConsultaD_CEL_CONTATO2: TIBStringField;
    ConsultaD_ZAP_CONTATO: TIBStringField;
    ConsultaLOG_NU: TLargeintField;
    ConsultaTLO_TX: TIBStringField;
    ConsultaLOG_NO: TIBStringField;
    ConsultaNRO: TIBStringField;
    ConsultaXCPL: TIBStringField;
    ConsultaCEP: TIBStringField;
    ConsultaBAI_NO: TIBStringField;
    ConsultaLOC_NO: TIBStringField;
    ConsultaCMUN: TLargeintField;
    ConsultaZFM_CMUN: TLargeintField;
    ConsultaZFM_CENQ: TIBStringField;
    ConsultaUF: TIBStringField;
    ConsultaCPAIS: TSmallintField;
    ConsultaXPAIS: TIBStringField;
    ConsultaD_LOG: TIBStringField;
    ConsultaENT_LOG_NU: TLargeintField;
    ConsultaENT_TLO_TX: TIBStringField;
    ConsultaENT_LOG_NO: TIBStringField;
    ConsultaENT_NRO: TIBStringField;
    ConsultaENT_XCPL: TIBStringField;
    ConsultaENT_CEP: TIBStringField;
    ConsultaENT_BAI_NO: TIBStringField;
    ConsultaENT_LOC_NO: TIBStringField;
    ConsultaENT_CMUN: TLargeintField;
    ConsultaENT_UF: TIBStringField;
    ConsultaINFADCAD: TIBStringField;
    ConsultaINFADFIN: TIBStringField;
    ConsultaC_ID: TLargeintField;
    DBGConsultaIDCD: TdxDBGridMaskColumn;
    DBGConsultaCDCD: TdxDBGridColumn;
    DBGConsultaDECD: TdxDBGridMaskColumn;
    DBGConsultaRZCD: TdxDBGridMaskColumn;
    DBGConsultaGPCD: TdxDBGridMaskColumn;
    DBGConsultaFIN_IDEP: TdxDBGridMaskColumn;
    DBGConsultaFIN_VCRD: TdxDBGridCurrencyColumn;
    DBGConsultaFIN_CSPD: TdxDBGridMaskColumn;
    DBGConsultaFIN_PDSC: TdxDBGridCurrencyColumn;
    DBGConsultaFIN_VDSC: TdxDBGridCurrencyColumn;
    DBGConsultaFIN_INFADCAD_L1: TdxDBGridMaskColumn;
    DBGConsultaFIN_INFADCAD_L2: TdxDBGridMaskColumn;
    DBGConsultaFIN_PDSC_001: TdxDBGridCurrencyColumn;
    DBGConsultaFIN_VDSC_INI_001: TdxDBGridCurrencyColumn;
    DBGConsultaFIN_VDSC_FIM_001: TdxDBGridCurrencyColumn;
    DBGConsultaFIN_INFADCAD_L1_001: TdxDBGridMaskColumn;
    DBGConsultaFIN_INFADCAD_L2_001: TdxDBGridMaskColumn;
    DBGConsultaFIN_PDSC_002: TdxDBGridCurrencyColumn;
    DBGConsultaFIN_VDSC_INI_002: TdxDBGridCurrencyColumn;
    DBGConsultaFIN_VDSC_FIM_002: TdxDBGridCurrencyColumn;
    DBGConsultaFIN_INFADCAD_L1_002: TdxDBGridMaskColumn;
    DBGConsultaFIN_INFADCAD_L2_002: TdxDBGridMaskColumn;
    DBGConsultaFIN_PDSC_003: TdxDBGridCurrencyColumn;
    DBGConsultaFIN_VDSC_INI_003: TdxDBGridCurrencyColumn;
    DBGConsultaFIN_VDSC_FIM_003: TdxDBGridCurrencyColumn;
    DBGConsultaFIN_INFADCAD_L1_003: TdxDBGridMaskColumn;
    DBGConsultaFIN_INFADCAD_L2_003: TdxDBGridMaskColumn;
    DBGConsultaDTCA: TdxDBGridDateColumn;
    DBGConsultaDTFU: TdxDBGridDateColumn;
    DBGConsultaDTPC: TdxDBGridDateColumn;
    DBGConsultaDTPP: TdxDBGridDateColumn;
    DBGConsultaDTPV: TdxDBGridDateColumn;
    DBGConsultaCDST: TdxDBGridMaskColumn;
    DBGConsultaREST: TdxDBGridMaskColumn;
    DBGConsultaDEST: TdxDBGridMaskColumn;
    DBGConsultaCNPJ: TdxDBGridMaskColumn;
    DBGConsultaFIS_CRT: TdxDBGridMaskColumn;
    DBGConsultaFIS_CREDICMS: TdxDBGridMaskColumn;
    DBGConsultaIE: TdxDBGridMaskColumn;
    DBGConsultaFIS_INDIEDEST: TdxDBGridMaskColumn;
    DBGConsultaFIS_INDFINAL: TdxDBGridMaskColumn;
    DBGConsultaISUF: TdxDBGridMaskColumn;
    DBGConsultaIM: TdxDBGridMaskColumn;
    DBGConsultaCPF: TdxDBGridMaskColumn;
    DBGConsultaIDESTRANGEIRO: TdxDBGridMaskColumn;
    DBGConsultaIDCV: TdxDBGridMaskColumn;
    DBGConsultaDECV: TdxDBGridMaskColumn;
    DBGConsultaIDCR: TdxDBGridMaskColumn;
    DBGConsultaDECR: TdxDBGridMaskColumn;
    DBGConsultaIDCC: TdxDBGridColumn;
    DBGConsultaDECC: TdxDBGridColumn;
    DBGConsultaCDPD: TdxDBGridMaskColumn;
    DBGConsultaCDCO: TdxDBGridMaskColumn;
    DBGConsultaCDPG: TdxDBGridMaskColumn;
    DBGConsultaDEPG: TdxDBGridMaskColumn;
    DBGConsultaIDCT: TdxDBGridMaskColumn;
    DBGConsultaDECT: TdxDBGridMaskColumn;
    DBGConsultaMFRT: TdxDBGridMaskColumn;
    DBGConsultaCONTATO: TdxDBGridMaskColumn;
    DBGConsultaDDD: TdxDBGridMaskColumn;
    DBGConsultaTEL: TdxDBGridMaskColumn;
    DBGConsultaEMAIL: TdxDBGridMaskColumn;
    DBGConsultaENVEMAIL: TdxDBGridMaskColumn;
    DBGConsultaD_FONE: TdxDBGridColumn;
    DBGConsultaD_CONTATO: TdxDBGridColumn;
    DBGConsultaD_CONTATO2: TdxDBGridColumn;
    DBGConsultaD_CONTATO3: TdxDBGridColumn;
    DBGConsultaD_CEL_CONTATO: TdxDBGridColumn;
    DBGConsultaD_CEL_CONTATO2: TdxDBGridColumn;
    DBGConsultaD_ZAP_CONTATO: TdxDBGridColumn;
    DBGConsultaLOG_NU: TdxDBGridColumn;
    DBGConsultaTLO_TX: TdxDBGridMaskColumn;
    DBGConsultaLOG_NO: TdxDBGridMaskColumn;
    DBGConsultaNRO: TdxDBGridMaskColumn;
    DBGConsultaXCPL: TdxDBGridMaskColumn;
    DBGConsultaCEP: TdxDBGridMaskColumn;
    DBGConsultaBAI_NO: TdxDBGridMaskColumn;
    DBGConsultaLOC_NO: TdxDBGridMaskColumn;
    DBGConsultaCMUN: TdxDBGridColumn;
    DBGConsultaZFM_CMUN: TdxDBGridColumn;
    DBGConsultaZFM_CENQ: TdxDBGridColumn;
    DBGConsultaUF: TdxDBGridMaskColumn;
    DBGConsultaCPAIS: TdxDBGridMaskColumn;
    DBGConsultaXPAIS: TdxDBGridMaskColumn;
    DBGConsultaD_LOG: TdxDBGridColumn;
    DBGConsultaENT_LOG_NU: TdxDBGridColumn;
    DBGConsultaENT_TLO_TX: TdxDBGridMaskColumn;
    DBGConsultaENT_LOG_NO: TdxDBGridMaskColumn;
    DBGConsultaENT_NRO: TdxDBGridMaskColumn;
    DBGConsultaENT_XCPL: TdxDBGridMaskColumn;
    DBGConsultaENT_CEP: TdxDBGridMaskColumn;
    DBGConsultaENT_BAI_NO: TdxDBGridMaskColumn;
    DBGConsultaENT_LOC_NO: TdxDBGridMaskColumn;
    DBGConsultaENT_CMUN: TdxDBGridColumn;
    DBGConsultaENT_UF: TdxDBGridMaskColumn;
    DBGConsultaINFADCAD: TdxDBGridColumn;
    DBGConsultaINFADFIN: TdxDBGridColumn;
    DBGConsultaC_ID: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGConsultaDblClick(Sender: TObject);
  private
    { Private declarations }
    APSQ_DG: String;
  public
    { Public declarations }
    procedure _WM_AFTER_ACTIVATE(var Msg: TMessage); message WM_AFTER_ACTIVATE;
  end;

var
  FrmCAD_PAD_PSQ: TFrmCAD_PAD_PSQ;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TFrmCAD_PAD_PSQ._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
  inherited;

  Consulta.Prepare;
  Consulta.Open;
end;

procedure TFrmCAD_PAD_PSQ.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := EmptyStr; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := EmptyStr;
  REC_SHE_DEF.GReferencia := EmptyStr;
  REC_SHE_DEF.GRegra      := EmptyStr;
  REC_SHE_DEF.GAdmin      := True;
  inherited;

  { Pesquisa }
  BBPSQ_CAD.Hint := IFThen(BBPSQ_CAD.Caption = 'Pesquisa Rápida' ,'Artigo, Produtos, Grade, Descrições, etc',EmptyStr); { Cadastro }
  BBPSQ_PER.Hint := IFThen(BBPSQ_PER.Caption = 'Pesquisa Período',EmptyStr,EmptyStr); { Período }
end;

procedure TFrmCAD_PAD_PSQ.ACTPesquisaExecute(Sender: TObject);
var
  i: Integer;
begin
  { RESET TRANSACTION }
  oCTransact(TConsulta);
  oOTransact(TConsulta);

  { RESET FILTER DEFAULT }
  DBGConsulta.Filter.Clear; { Consulta }

  { DIVERSOS }
  REC_SHE_DEF.FB_PSQ_SUB := False; { Sub Query }
  REC_SHE_DEF.FB_PSQ_PAD := True;  { Padrão }

  { Texto Pesquisa }
  REC_SHE_DEF.PSQ_FB_FD := BLBPSQ_CAD_MENU.Description; { Campo }
  REC_SHE_DEF.PSQ_FB_VD := BEPSQ_CAD.Text;
  REC_SHE_DEF.PSQ_FB_PK := BEPSQ_CAD.Text;
  REC_SHE_DEF.PSQ_FB_FK := EmptyStr;

  { ÂNCORAS PRINCIPAIS }
  { Situações }
  REC_SHE_DEF.PSQ_FB_DEST       := EmptyStr; { Descrição }
  REC_SHE_DEF.PSQ_FB_STFI := EmptyStr; { Descrição Abreviada }

  { Empresas }
  REC_SHE_DEF.PSQ_FB_EP := EmptyStr; { Empresa }
  REC_SHE_DEF.PSQ_FB_CF := EmptyStr; { Fabricante }

  { Produtos }
  REC_SHE_DEF.PSQ_FB_CP_ARTIGO := EmptyStr; { Artigo }
  REC_SHE_DEF.PSQ_FB_CP_SKU    := EmptyStr; { SKU }
  REC_SHE_DEF.PSQ_FB_CP_NCM    := EmptyStr; { NCM }
  REC_SHE_DEF.PSQ_FB_CP_DGCP   := EmptyStr; { Grade }
  REC_SHE_DEF.PSQ_FB_CP_DECP   := EmptyStr; { Nome / Descrição }
  REC_SHE_DEF.PSQ_FB_CP_DCCP   := EmptyStr; { Composição }

  { Lista Digitada }
  if REC_SHE_DEF.PSQ_FB_SL_PK = Nil then
  REC_SHE_DEF.PSQ_FB_SL_PK := TStringList.Create else
  REC_SHE_DEF.PSQ_FB_SL_PK.Clear;

  if (REC_SHE_DEF.PSQ_FB_VD <> EmptyStr) and (REC_SHE_DEF.PSQ_FB_VD <> '0') then
  begin
    { SEARCH DEFAULT }
    REC_SHE_DEF.FB_PSQ_PAD := False; { Padrão }

    { Capturar as palavras separadamente }
    While Length(REC_SHE_DEF.PSQ_FB_VD) > 0 do
    begin
      REC_SHE_DEF.PSQ_FB_FK := Trim(Fetch(REC_SHE_DEF.PSQ_FB_VD    ,' '));
      REC_SHE_DEF.PSQ_FB_FK := oStrTran(REC_SHE_DEF.PSQ_FB_FK, '+' ,' ');
      REC_SHE_DEF.PSQ_FB_SL_PK.Add(REC_SHE_DEF.PSQ_FB_FK);

      with SQLConsulta do
      begin
        { Descrição Situação }
        if (REC_SHE_DEF.PSQ_FB_DEST = EmptyStr) and (REC_SHE_DEF.PSQ_FB_FK <> EmptyStr) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT FIRST 1 FK.ID FROM TAB_STA_PED AS FK');
          SQL.Add('WHERE  FK.DESCRICAO LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.PSQ_FB_DEST := REC_SHE_DEF.PSQ_FB_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.PSQ_FB_SL_PK.Delete(REC_SHE_DEF.PSQ_FB_SL_PK.IndexOf(REC_SHE_DEF.PSQ_FB_FK)); { Array }
            REC_SHE_DEF.PSQ_FB_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;

        { Situação Abreviada }
        if (REC_SHE_DEF.PSQ_FB_DEST = EmptyStr) and (REC_SHE_DEF.PSQ_FB_STFI = EmptyStr) and (REC_SHE_DEF.PSQ_FB_FK <> EmptyStr) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT FIRST 1 FK.ID FROM TAB_STA_PED AS FK');
          SQL.Add('WHERE  FK.ABREV LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.PSQ_FB_STFI := REC_SHE_DEF.PSQ_FB_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.PSQ_FB_SL_PK.Delete(REC_SHE_DEF.PSQ_FB_SL_PK.IndexOf(REC_SHE_DEF.PSQ_FB_FK)); { Array }
            REC_SHE_DEF.PSQ_FB_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;
      end;
    end;
  end;

  { Pesquisa }
  try
    oLockWindowUpdate; { Trava }

    { Consulta Principal }
    with Consulta do
    begin
      Close;
      SQL.Clear;

      { RECURSIVE INI }
      SQL.Add('WITH RECURSIVE PK');
      SQL.Add('AS (');

      SQL.Add('SELECT PK.ID  ,PK.IDEP,');
      SQL.Add('       PK.DTEV,PK.DTCA,');
      SQL.Add('       PK.STFI,PK.APST,PK.FPST,PK.FAST,PK.LQST,PK.BQST,');
      SQL.Add('       PK.IDPK,PK.DEPK,PK.DTPK,PK.HTPK,PK.CDCX,');
      SQL.Add('       PK.CDOS,PK.DSOS,');
      SQL.Add('       PK.CDSP,PK.LGSP,PK.DTSP,PK.HTSP,');
      SQL.Add('       PK.CDRO,PK.DSRO,');
      SQL.Add('       PK.CDNF,PK.DTNF,PK.HTNF,PK.FIS_DSSA,');
      SQL.Add('       PK.CDBX,PK.DSBX,');
      SQL.Add('       PK.IDCD,PK.DECD,PK.CD_CDST,PK.GPCD,PK.CD_CNPJ,PK.CD_UF,');
      SQL.Add('       PK.IDCV,PK.DECV,PK.CV_CDST,PK.CV_VCOM,PK.CV_PCOM,');
      SQL.Add('       PK.IDCR,PK.ABCR,PK.CR_CDST,PK.CR_VCOM,PK.CR_PCOM,');
      SQL.Add('       PK.IDCT,PK.DECT,PK.CT_CDST,PK.CT_MOTORISTA,PK.CT_AJUDANTE,PK.CT_PLACA,');
      SQL.Add('       PK.FRT_MFRT,PK.FRT_DFRT,PK.FRT_VFRT,');
      SQL.Add('       PK.FRT_PSBR,PK.FRT_PSLQ,');
      SQL.Add('       PK.VDSC,PK.PDSC,');
      SQL.Add('       PK.TCDE,PK.RLPK,PK.LV_TCDE,PK.LV_RLPK,');
      SQL.Add('       PK.VTSP,PK.RLSP,PK.PPSP   ,PK.LV_VTSP,PK.LV_RLSP,PK.LV_PPSP,');
      SQL.Add('       PK.VTLQ,PK.VTBQ   ,');
      SQL.Add('       PK.VTAP,PK.LV_VTAP,');
      SQL.Add('       PK.VTDV,PK.LV_VTDV,');
      SQL.Add('       PK.VTAB,PK.LV_VTAB,');
      SQL.Add('       PK.VTBX,PK.VTFP   ,');
      SQL.Add('       PK.CDPD,PK.STPD,PK.DVPD,PK.ABPD,PK.FAPD  ,PK.LQPD,');
      SQL.Add('       PK.CDCO,PK.STCO,PK.TPCO,PK.RECO,PK.D_STCO,');
      SQL.Add('       PK.PRZ_CDPG,PRZ_DEPG   ,');  
      SQL.Add('       PK.INFADCAD,PK.INFADPRN ');

      SQL.Add('FROM ' + oREPZero('VW_PSQ_PED_PDV_ADM','_',RECParametros.VW_IDEP,3) + ' AS PK');

      { Inicialização }
      if REC_SHE_DEF.FB_PSQ_PAD then { Padrão }
      begin
        SQL.Add('WHERE (PK.APST = 1 ');
        SQL.Add('OR     PK.DTPK BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) ');
        SQL.Add('OR     PK.DTSP BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) ');
        SQL.Add('OR     PK.DTNF BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) ');
        SQL.Add('OR     PK.DTBX BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))))');
      end;

      { Situação }
      if REC_SHE_DEF.PSQ_FB_DEST <> EmptyStr then
      begin
        SQL.Add(IFThen(Pos('WHERE',Consulta.SQL.Text) = 0,'WHERE','AND'));
        SQL.Add('PK.DEST LIKE ''' + REC_SHE_DEF.PSQ_FB_DEST + '%''');
      end;

      { Situação Abreviada }
      if REC_SHE_DEF.PSQ_FB_STFI <> EmptyStr then
      begin
        SQL.Add(IFThen(Pos('WHERE',Consulta.SQL.Text) = 0,'WHERE','AND'));
        SQL.Add('PK.STFI LIKE ''' + REC_SHE_DEF.PSQ_FB_STFI + '%''');
      end;

      { Período }
      if (BDPSQ_PER_INI.Date > 0) and (BDPSQ_PER_FIM.Date > 0) then
      begin
        SQL.Add(IFThen(Pos('WHERE',Consulta.SQL.Text) = 0,'WHERE','AND'));
        SQL.Add(BBPSQ_PER_MENU.Description + ' BETWEEN ''' + FormatDateTime('mm/dd/yy',BDPSQ_PER_INI.Date) +  ''' AND ''' + FormatDateTime('mm/dd/yy',BDPSQ_PER_FIM.Date) + '''');
      end;

      SQL.Add('),'); { RECURSIVE FIM }

      { CTE INI }
      SQL.Add('CTE_PSQ');
      SQL.Add('AS    (');

      if REC_SHE_DEF.PSQ_FB_SL_PK.Count = 0 then
         SQL.Add('SELECT PK.* FROM PK') else
      begin
        { Âncora Principal }
        { Pedido }
        SQL.Add('SELECT PK.* FROM PK');
        SQL.Add('WHERE  PK.DEPK LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[0] + '%''');

        for i := 0 to REC_SHE_DEF.PSQ_FB_SL_PK.Count - 1 do
        begin
          { Apenas Números }
          if oBSONumero(REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i]) then
          begin
            { Romaneios }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.CDRO = ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '''');

            { Nota Fiscais }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.CDNF = ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '''');

            { CNPJ Cliente }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.CD_CNPJ LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '%''');
          end else

          { Outros }
          begin
            { Cliente }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.DECD CONTAINING ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '''');

            { Grupo Comercial }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.GPCD LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '%''');

            { Vendedor }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.DECV LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '%''');

            { Representante }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.ABCR LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '%''');

            { Transportadora }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.DECT CONTAINING ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '''');

            { Separador }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.LGSP LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '%''');

            { Tipo Pedido }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.STPD LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '%''');

            { Tipo Cobrança }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.STCO LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '%''');

            { Crédito }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.RECO LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '%''');

            { Prazo }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.PRZ_DEPG CONTAINING ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '''');
          end;
        end;
      end;

      SQL.Add(')'); { CTE FIM }

      { CTE SELECT }
      SQL.Add('SELECT PK.* FROM CTE_PSQ AS PK');

      { Sub Query }
      if REC_SHE_DEF.FB_PSQ_SUB then
      begin
      end;

      SQL.Add('ORDER BY PK.DTCA DESC ');
      Prepare;
      Open;
    end;
  finally
    { DOCK MANAGER }
    { Rodapé }
    FDockControlPrincipal1RodapeLE := VCDSPrincipal1RodapeLE.Tag; { EST_EPE }
    VCDSPrincipal1RodapeLE.Tag     := IFThen(VCDSPrincipal1RodapeLE.Tag < 400,400,VCDSPrincipal1RodapeLE.Tag);

    if FDockControlPrincipal1RodapeLE <> VCDSPrincipal1RodapeLE.Tag then
    begin
      _SetDockControl(VCDSPrincipal1RodapeLE,VCDSPrincipal1RodapeLE.Tag,lHorizontal,True ,True);
      _SetDockControl(TCDSPrincipal1RodapeLE,VCDSPrincipal1RodapeLE.Tag,lHorizontal,False,True);
    end;

    { DOCK MANAGER }
    if (DPPrincipal1RodapeLEB.Height <> 75) and (PED_PDV_ITEC_INFADPRC.AsString <> EmptyStr) then
     _SetDockControl(DPPrincipal1RodapeLEB,75,lVertical,True,True) else

     if PED_PDV_ITEC_INFADPRC.AsString <> EmptyStr then

    _SetDockControl(DPPrincipal1RodapeLEB,30,lVertical,True,True);

    { CONSULTA }
    DBGConsulta.Filter.Clear; { Filters }
    DBGConsultaDEPK.Field.FocusControl; { Focused }

    { PED_PDV_ITE }
    DBGPED_PDV_ITE.Filter.Clear; { Filters }
    DBGPED_PDV_ITESKU.Field.FocusControl; { SKU }

    if Consulta.RecNo > 0 then
    begin
      { DBGConsulta }
      PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(DBGConsulta).SetFocus;
    end else
    begin
      { Pesquisa }
      DPPrincipal1Consulta1.Caption := 'Registro(s) não Encontrado(s)';
      BEPSQ_CAD.SetFocus(False);
    end;

    if TCDSPrincipal.Tag = 0 then
    _SetDockControl(TCDSPrincipal1Rodape,DSPrincipal1.Width - VCDSPrincipal1RodapeLE.Tag,lHorizontal,False,True);

    oUnLockWindowUpdate; { Destrava }
  end;
end;

procedure TFrmCAD_PAD_PSQ.BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
     with REC_SHE_DEF do
     begin
       FB_VD_ED_PK := TRIM(BEPSQ_CAD.Text);

       FB_PSQ_WHERE := ' LIKE ';
       FB_PSQ_LKPK := '''' ;
       FB_PSQ_LKFK := '%''';

       if ((Length(FB_VD_ED_PK) <= 2) or (Pos('.',FB_VD_ED_PK) > 0)) then
       FB_FD_ED_PK := 'ARTIGO';

       if oBSONumero(FB_VD_ED_PK) then
       begin
         FB_PSQ_WHERE := ' = ';
         FB_PSQ_LKPK := '''' ;
         FB_PSQ_LKFK := '''' ;
       end;
     end;

  inherited;
end;

procedure TFrmCAD_PAD_PSQ.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  if Consulta.RecNo > 0 then
  begin
    REC_SHE_DEF.FB_PSQ_OK := True;
    Close;
  end;
end;

procedure TFrmCAD_PAD_PSQ.DBGConsultaDblClick(Sender: TObject);
begin
  if Consulta.RecNo > 0 then
  begin
    REC_SHE_DEF.FB_PSQ_OK := True;
    Close;
  end;  
end;

end.


