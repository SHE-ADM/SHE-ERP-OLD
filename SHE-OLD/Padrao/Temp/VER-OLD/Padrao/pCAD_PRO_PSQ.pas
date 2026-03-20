unit pCAD_PRO_PSQ;

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
  TFrmCAD_PRO_PSQ = class(TFrmSHE_DEF_PSQ)
    BLBPSQ_ART: TdxBarLargeButton;
    PNLDSConsulta_BOT: TPanel;
    PNLCAD_PRO_PRC: TPanel;
    DSCAD_PRO_PRC: TdxDockSite;
    LDSCAD_PRO_PRC: TdxLayoutDockSite;
    DPCAD_PRO_PRC: TdxDockPanel;
    PNLFKConsulta: TPanel;
    PNLCAD_PRO_FIC_INF: TPanel;
    PNLMD_FKConsulta: TPanel;
    PNLART_CAD_PRO_FIC: TPanel;
    PNLCAD_PRO_FIC: TPanel;
    DSCAD_PRO_FIC: TdxDockSite;
    LDSCAD_PRO_FIC: TdxLayoutDockSite;
    DPCAD_PRO_FIC: TdxDockPanel;
    PNLBOT_CAD_PRO_FIC: TPanel;
    PNLINFADCAD: TPanel;
    DSINFADCAD: TdxDockSite;
    LDSINFADCAD: TdxLayoutDockSite;
    DPINFADCAD: TdxDockPanel;
    DBINFADCAD: TdxDBMemo;
    PNLART_CAD_PRO_IMG: TPanel;
    PNLCAD_PRO_IMG: TPanel;
    DSCAD_PRO_IMG: TdxDockSite;
    LDSCAD_PRO_IMG: TdxLayoutDockSite;
    TCDSCAD_PRO_IMG: TdxTabContainerDockSite;
    DPCAD_PRO_IMG_PAD: TdxDockPanel;
    DPCAD_PRO_IMG_ILA: TdxDockPanel;
    DBGConsultaSKU: TdxDBGridMaskColumn;
    DBGConsultaFIS_NCM: TdxDBGridMaskColumn;
    DBGConsultaCP_NO_GRD: TdxDBGridMaskColumn;
    DBGConsultaREST: TdxDBGridMaskColumn;
    DBGConsultaFIS_PIPI: TdxDBGridMaskColumn;
    DBGConsultaC_EPE_QTDE: TdxDBGridColumn;
    DBGConsultaEPE_QTRL: TdxDBGridMaskColumn;
    DBGConsultaCEAN: TdxDBGridMaskColumn;
    DBGConsultaCP_NO: TdxDBGridMaskColumn;
    DBGConsultaUCOM: TdxDBGridMaskColumn;
    DBGConsultaLJV_UCOM: TdxDBGridMaskColumn;
    DBGConsultaGRD_SG: TdxDBGridMaskColumn;
    ConsultaC_EPE_QTDE: TStringField;
    ConsultaC_ID: TIntegerField;
    ConsultaID: TLargeintField;
    ConsultaEP_ID: TSmallintField;
    ConsultaEP_NO: TIBStringField;
    ConsultaCF_ID: TSmallintField;
    ConsultaCF_NO: TIBStringField;
    ConsultaIDEV: TLargeintField;
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
    ConsultaAK_ID: TLargeintField;
    ConsultaARTIGO: TIBStringField;
    ConsultaCP_ID: TLargeintField;
    ConsultaSKU: TIBStringField;
    ConsultaCF_SKU: TIBStringField;
    ConsultaCEAN: TIBStringField;
    ConsultaEK_ID: TLargeintField;
    ConsultaIMG_ID: TLargeintField;
    ConsultaFIS_NCM: TIBStringField;
    ConsultaFIS_CEST: TIBStringField;
    ConsultaFIS_PIPI: TIBBCDField;
    ConsultaFIS_EXTIPI: TIBStringField;
    ConsultaCP_NO: TIBStringField;
    ConsultaCP_NO_GRD: TIBStringField;
    ConsultaCP_NO_TLO: TIBStringField;
    ConsultaCP_NO_CMP: TIBStringField;
    ConsultaUCOM: TIBStringField;
    ConsultaUTRIB: TIBStringField;
    ConsultaUCON: TIBStringField;
    ConsultaUCDBE: TIBStringField;
    ConsultaUQTDE: TIBBCDField;
    ConsultaUQTDE_VEN_MIN: TSmallintField;
    ConsultaUQTDE_VEN_MUL: TSmallintField;
    ConsultaLJV_UCOM: TIBStringField;
    ConsultaLJV_UCON: TIBStringField;
    ConsultaLJV_UQTDE: TIBBCDField;
    ConsultaUPSBR: TIBBCDField;
    ConsultaUPSLQ: TIBBCDField;
    ConsultaUPSCN: TIBBCDField;
    ConsultaMPESO: TIBBCDField;
    ConsultaMMETRO: TIBBCDField;
    ConsultaMGRAMA: TIBBCDField;
    ConsultaMREND: TIBBCDField;
    ConsultaVPRC_PAD: TFloatField;
    ConsultaVPRC_PRZ: TFloatField;
    ConsultaVPRC_PRO: TFloatField;
    ConsultaLJV_VPRC_PAD: TFloatField;
    ConsultaLJV_VPRC_PRZ: TFloatField;
    ConsultaLJV_VPRC_PRO: TFloatField;
    ConsultaATJ_VPRC_PAD: TFloatField;
    ConsultaATJ_VPRC_PRZ: TFloatField;
    ConsultaATJ_VPRC_PRO: TFloatField;
    ConsultaREP_VPRC_PAD: TFloatField;
    ConsultaREP_VPRC_PRZ: TFloatField;
    ConsultaREP_VPRC_PRO: TFloatField;
    ConsultaVAR_VPRC_PAD: TFloatField;
    ConsultaVAR_VPRC_PRZ: TFloatField;
    ConsultaVAR_VPRC_PRO: TFloatField;
    ConsultaCF_VPRC_PAD_ORI: TIBStringField;
    ConsultaCF_VPRC_PAD: TFloatField;
    ConsultaCOL_ID: TSmallintField;
    ConsultaCOL_NO: TIBStringField;
    ConsultaSEG_ID: TSmallintField;
    ConsultaSEG_NO: TIBStringField;
    ConsultaGRP_ID: TSmallintField;
    ConsultaGRP_NO: TIBStringField;
    ConsultaSGP_ID: TSmallintField;
    ConsultaSGP_NO: TIBStringField;
    ConsultaCAT_ID: TSmallintField;
    ConsultaCAT_NO: TIBStringField;
    ConsultaSCT_ID: TSmallintField;
    ConsultaSCT_NO: TIBStringField;
    ConsultaD_SCT_NO: TIBStringField;
    ConsultaFIS_ORIG: TSmallintField;
    ConsultaFIS_XORIG: TIBStringField;
    ConsultaFIS_CPAIS: TSmallintField;
    ConsultaFIS_XPAIS: TIBStringField;
    ConsultaFIS_FPAIS: TIBStringField;
    ConsultaINFADCAD: TIBStringField;
    ConsultaE_DTEV: TDateTimeField;
    ConsultaEPE_QTDE: TIBBCDField;
    ConsultaEPE_QTRL: TIntegerField;
    ConsultaEST_QTDE: TIBBCDField;
    ConsultaEST_QTRL: TIntegerField;
    ConsultaEAA_QTDE: TIBBCDField;
    ConsultaEAA_QTRL: TIntegerField;
    ConsultaEAT_QTDE: TIBBCDField;
    ConsultaEAT_QTRL: TIntegerField;
    ConsultaERV_QTDE: TIBBCDField;
    ConsultaERV_QTRL: TIntegerField;
    ConsultaEA_QTDE: TIBBCDField;
    ConsultaEA_QTRL: TIntegerField;
    ConsultaEB_QTDE: TIBBCDField;
    ConsultaEB_QTRL: TIntegerField;
    ConsultaEC_QTDE: TIBBCDField;
    ConsultaEC_QTRL: TIntegerField;
    ConsultaEPI_QTDE: TIBBCDField;
    ConsultaEPI_QTRL: TIntegerField;
    ConsultaESU_QTDE_ENT: TIBBCDField;
    ConsultaESU_QTRL_ENT: TIntegerField;
    ConsultaESU_QTDE_SAI: TIBBCDField;
    ConsultaESU_QTRL_SAI: TIntegerField;
    ConsultaEPC_QTDE: TIBBCDField;
    ConsultaEPC_QTRL: TIntegerField;
    ConsultaEPC_CTNR: TIBStringField;
    ConsultaEPP_QTDE: TIBBCDField;
    ConsultaEPP_QTRL: TIntegerField;
    ConsultaEPP_QTDE_CTNR: TIBBCDField;
    ConsultaEPP_QTRL_CTNR: TIntegerField;
    ConsultaEEP_QTDE: TIBBCDField;
    ConsultaEEP_QTRL: TIntegerField;
    ConsultaEPV_QTDE: TIBBCDField;
    ConsultaEPV_QTRL: TIntegerField;
    ConsultaESP_QTDE: TIBBCDField;
    ConsultaESP_QTRL: TIntegerField;
    ConsultaGRD_SG: TIBStringField;
    CAD_PRO_FIC: TIBQuery;
    CAD_PRO_FICCP_ID: TLargeintField;
    CAD_PRO_FICUCOM: TIBStringField;
    CAD_PRO_FICMPESO: TIBBCDField;
    CAD_PRO_FICUPSCN: TIBBCDField;
    CAD_PRO_FICPPSBR: TIBBCDField;
    CAD_PRO_FICMMETRO: TIBBCDField;
    CAD_PRO_FICMGRAMA: TIBBCDField;
    CAD_PRO_FICMREND: TIBBCDField;
    CAD_PRO_FICMLGRU: TIBBCDField;
    CAD_PRO_FICMLGRT: TIBBCDField;
    CAD_PRO_FICMELAL: TIBBCDField;
    CAD_PRO_FICMELAC: TIBBCDField;
    CAD_PRO_FICMENCL: TIBBCDField;
    CAD_PRO_FICMENCC: TIBBCDField;
    CAD_PRO_FICUCDBE_NO: TIBStringField;
    CAD_PRO_FICUQTDE: TIBBCDField;
    CAD_PRO_FICUQTDE_VEN_MUL: TSmallintField;
    CAD_PRO_FICMABNT_NO: TIBStringField;
    CAD_PRO_FICINFADCAD: TIBStringField;
    CAD_PRO_FICINFADCPL: TIBStringField;
    CAD_PRO_FICC_UQTDE: TStringField;
    DTSCAD_PRO_FIC: TDataSource;
    CAD_PRO_PRC: TIBQuery;
    CAD_PRO_PRCCP_ID: TLargeintField;
    CAD_PRO_PRCCF_VPRC_PAD: TFloatField;
    CAD_PRO_PRCCF_VPRC_ORI: TIBStringField;
    CAD_PRO_PRCVPRC_PAD: TFloatField;
    CAD_PRO_PRCVPRC_PRZ: TFloatField;
    CAD_PRO_PRCVPRC_PRO: TFloatField;
    CAD_PRO_PRCATJ_VPRC_PAD: TFloatField;
    CAD_PRO_PRCATJ_VPRC_PRZ: TFloatField;
    CAD_PRO_PRCATJ_VPRC_PRO: TFloatField;
    CAD_PRO_PRCVAR_VPRC_PAD: TFloatField;
    CAD_PRO_PRCVAR_VPRC_PRZ: TFloatField;
    CAD_PRO_PRCVAR_VPRC_PRO: TFloatField;
    CAD_PRO_PRCREP_VPRC_PAD: TFloatField;
    CAD_PRO_PRCREP_VPRC_PRZ: TFloatField;
    CAD_PRO_PRCREP_VPRC_PRO: TFloatField;
    CAD_PRO_PRCLJV_VPRC_PAD: TFloatField;
    CAD_PRO_PRCLJV_VPRC_PRZ: TFloatField;
    CAD_PRO_PRCLJV_VPRC_PRO: TFloatField;
    CAD_PRO_PRCC_CF_VPRC_PAD: TStringField;
    DTSCAD_PRO_PRC: TDataSource;
    CAD_PRO_IMG: TIBQuery;
    CAD_PRO_IMGIMG_ID: TLargeintField;
    CAD_PRO_IMGIMG_NO: TIBStringField;
    CAD_PRO_IMGIMG_PAD: TBlobField;
    CAD_PRO_IMGPDF_NO: TIBStringField;
    CAD_PRO_IMGILA_BMP1: TBlobField;
    CAD_PRO_IMGILA_INS1: TIBStringField;
    CAD_PRO_IMGD_ILA_INS1: TIBStringField;
    CAD_PRO_IMGILA_BMP2: TBlobField;
    CAD_PRO_IMGILA_INS2: TIBStringField;
    CAD_PRO_IMGD_ILA_INS2: TIBStringField;
    CAD_PRO_IMGILA_BMP3: TBlobField;
    CAD_PRO_IMGILA_INS3: TIBStringField;
    CAD_PRO_IMGD_ILA_INS3: TIBStringField;
    CAD_PRO_IMGILA_BMP4: TBlobField;
    CAD_PRO_IMGILA_INS4: TIBStringField;
    CAD_PRO_IMGD_ILA_INS4: TIBStringField;
    CAD_PRO_IMGILA_BMP5: TBlobField;
    CAD_PRO_IMGILA_INS5: TIBStringField;
    CAD_PRO_IMGD_ILA_INS5: TIBStringField;
    CAD_PRO_IMGILA_BMP6: TBlobField;
    CAD_PRO_IMGILA_INS6: TIBStringField;
    CAD_PRO_IMGD_ILA_INS6: TIBStringField;
    CAD_PRO_IMGILA_BMP7: TBlobField;
    CAD_PRO_IMGILA_INS7: TIBStringField;
    CAD_PRO_IMGD_ILA_INS7: TIBStringField;
    CAD_PRO_IMGILA_BMP8: TBlobField;
    CAD_PRO_IMGILA_INS8: TIBStringField;
    CAD_PRO_IMGD_ILA_INS8: TIBStringField;
    DTSCAD_PRO_IMG: TDataSource;
    DBGCAD_PRO_PRC: TdxDBGrid;
    DBGCAD_PRO_PRCC_CF_VPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCVPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCVPRC_PRZ: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCVPRC_PRO: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCATJ_VPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCATJ_VPRC_PRZ: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCATJ_VPRC_PRO: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCVAR_VPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCVAR_VPRC_PRZ: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCVAR_VPRC_PRO: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCLJV_VPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCLJV_VPRC_PRZ: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCLJV_VPRC_PRO: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCREP_VPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCREP_VPRC_PRZ: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCREP_VPRC_PRO: TdxDBGridMaskColumn;
    DBGCAD_PRO_FIC: TdxDBGrid;
    DBGCAD_PRO_FICMMETRO: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMGRAMA: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMREND: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMPESO: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICUPSCN: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICPPSBR: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMLGRU: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMLGRT: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMENCC: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMENCL: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMELAC: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMELAL: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICUCDBE_NO: TdxDBGridColumn;
    DBGCAD_PRO_FICC_UQTDE: TdxDBGridColumn;
    PNLCAD_PRO_IMG_PIX: TPanel;
    PNLCAD_PRO_IMG_PAD: TPanel;
    PNLCAD_PRO_ILA_PAD: TPanel;
    BVCAD_PRO_IMG_ILA1: TBevel;
    BVCAD_PRO_IMG_ILA2: TBevel;
    BVCAD_PRO_IMG_ILA4: TBevel;
    BVCAD_PRO_IMG_ILA5: TBevel;
    BVCAD_PRO_IMG_ILA6: TBevel;
    BVCAD_PRO_IMG_ILA7: TBevel;
    BVCAD_PRO_IMG_ILA8: TBevel;
    BVCAD_PRO_IMG_ILA3: TBevel;
    DBCAD_PRO_IMG_ILA1: TDBImage;
    DBCAD_PRO_IMG_ILA2: TDBImage;
    DBCAD_PRO_IMG_ILA3: TDBImage;
    DBCAD_PRO_IMG_ILA4: TDBImage;
    DBCAD_PRO_IMG_ILA5: TDBImage;
    DBCAD_PRO_IMG_ILA6: TDBImage;
    DBCAD_PRO_IMG_ILA7: TDBImage;
    DBCAD_PRO_IMG_ILA8: TDBImage;
    IMGCAD_PRO_IMG_PAD: TImage;
    DBGConsultaEPE_QTDE: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSConsultaDataChange(Sender: TObject; Field: TField);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure ConsultaAfterClose(DataSet: TDataSet);
    procedure DTSCAD_PRO_IMGDataChange(Sender: TObject; Field: TField);
    procedure CAD_PRO_PRCCalcFields(DataSet: TDataSet);
    procedure IMGCAD_PRO_IMG_PADClick(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DTSCAD_PRO_PRCDataChange(Sender: TObject; Field: TField);
    procedure ConsultaCalcFields(DataSet: TDataSet);
    procedure ConsultaBeforeOpen(DataSet: TDataSet);
    procedure ConsultaAfterScroll(DataSet: TDataSet);
    procedure DBGConsultaDblClick(Sender: TObject);
    procedure CAD_PRO_FICAfterOpen(DataSet: TDataSet);
    procedure CAD_PRO_PRCAfterOpen(DataSet: TDataSet);
    procedure CAD_PRO_FICCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    APSQ_DG: String;
  public
    { Public declarations }
    procedure _WM_AFTER_CREATE  (var Msg: TMessage); message WM_AFTER_CREATE;
    procedure _WM_AFTER_ACTIVATE(var Msg: TMessage); message WM_AFTER_ACTIVATE;
  end;

var
  FrmCAD_PRO_PSQ: TFrmCAD_PRO_PSQ;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TFrmCAD_PRO_PSQ._WM_AFTER_CREATE(var Msg: TMessage);
begin
  inherited;

  oOTransact(TConsulta);
  Consulta.Prepare;
  Consulta.Open;
end;

procedure TFrmCAD_PRO_PSQ._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
  inherited;

  CAD_PRO_IMG.Close;
  CAD_PRO_IMG.Open;
end;

procedure TFrmCAD_PRO_PSQ.FormCreate(Sender: TObject);
begin
  REC_SHE_DEF.FB_Event := 'CAD_PRO'; { Eventos }
  REC_SHE_DEF.GAdmin   := True;      { Grant   }
  inherited;

  TCDSCAD_PRO_IMG.ActiveChildIndex := 0; { Imagens }
  APSQ_DG := EmptyStr;

  { Pesquisa }
  BBPSQ_CAD.Hint := IFThen(BBPSQ_CAD.Caption = 'Pesquisa Rápida' ,'Artigo, Produtos, Grade, Descrições, etc',EmptyStr); { Cadastro }
  BBPSQ_PER.Hint := IFThen(BBPSQ_PER.Caption = 'Pesquisa Período',EmptyStr,EmptyStr); { Período }
end;

procedure TFrmCAD_PRO_PSQ.ACTPesquisaExecute(Sender: TObject);
          procedure _Pesquisa;
          var
            APSQ_SL: TStringList;
            APSQ_VL,
            APSQ_FD: String;
            i: Word;
          begin
            { String List de Pesquisa }
            APSQ_SL := TStringList.Create;
            APSQ_SL.Clear;

            if REC_SHE_DEF.FB_VD_ED_PK <> EmptyStr then
               try
                 APSQ_DG := EmptyStr; { Grade }
                 APSQ_FD := EmptyStr; { Campo }
                 APSQ_VL := REC_SHE_DEF.FB_VD_ED_PK; { Texto Pesquisa }

                 if (APSQ_VL <> EmptyStr) and (APSQ_VL <> '0') then
                 begin
                   { Capturar as palavras separadamente }
                   While Length(APSQ_VL) > 0 do
                   begin
                     APSQ_FD := Fetch(APSQ_VL,' ');

                     if Length(APSQ_FD) > 0 then
                     APSQ_SL.Add(Trim(APSQ_FD));
                   end;

                   { Captura grade indicada na segunda posição }
                   if APSQ_SL.Count > 0 then
                   begin
                     for i := 0 to APSQ_SL.Count - 1 do
                     begin
                       APSQ_DG := APSQ_DG + APSQ_SL.Strings[i] + ' ';

                       with
                        SQLConsulta do
                       begin
                         Close;
                         SQL.Clear;
                         SQL.Add('SELECT ID FROM TAB_COR WHERE DESCRICAO CONTAINING ''' + Trim(APSQ_SL.Strings[i]) + '''');
                         ExecQuery;

                         if Eof then
                            APSQ_DG := oStrTran(APSQ_DG,APSQ_SL.Strings[i],'') + ' ';
                       end;
                     end;
                     APSQ_DG := Trim(APSQ_DG);

                     { Retira as cores individuais da pesquisa }
                     if APSQ_DG <> EmptyStr then
                     begin
                       for i := APSQ_SL.Count - 1 downto 0 do
                           if Pos(APSQ_SL.Strings[i],APSQ_DG) > 0 then
                              APSQ_SL.Delete(i);

                       APSQ_SL.Add(APSQ_DG);
                     end;
                   end;
                 end;

                 { Artigo }
                 with Consulta do
                 begin
                   Close;
                   SQL.Clear;
                   SQL.Add('SELECT     DISTINCT');
                   SQL.Add('           PK.ID,PK.CP_IDEP,PK.CP_DEEP,');

                   SQL.Add('           PK.IDCA,PK.DTCA,');
                   SQL.Add('           PK.IDED,PK.DTED,');
                   SQL.Add('           PK.IDEV,PK.DTEV,');
                   SQL.Add('           PK.IDST,PK.DTST,PK.CDST,PK.REST,PK.DEST,');

                   SQL.Add('           PK.IDCP  ,PK.IDAK,PK.IDGK,PK.IDEK,PK.IDSK,');
                   SQL.Add('           PK.ARTIGO,PK.SKU ,PK.CEAN,                ');
                   SQL.Add('           PK.NCM   ,PK.CEST,PK.PIPI,PK.EXTIPI,      ');
                   SQL.Add('           PK.DECP  ,PK.DCCP,PK.DGCP,PK.GRD_SG,      ');

                   SQL.Add('           PK.IDCF,PK.DECF,PK.CF_SKU,PK.CF_CEAN,');

                   SQL.Add('           PK.UCOM,PK.UTRIB,');
                   SQL.Add('           PK.UCON,         ');
                   SQL.Add('           PK.UCDBE,PK.UQTDE,PK.UQTDE_VEN_MIN,PK.UQTDE_VEN_MUL,');
                   SQL.Add('           PK.LJV_UCOM,PK.LJV_UCON,PK.LJV_UQTDE,               ');

                   SQL.Add('           PK.UPSBR,PK.UPSLQ ,PK.UPSCN,          ');
                   SQL.Add('           PK.MPESO,PK.MMETRO,PK.MGRAMA,PK.MREND,');

                   SQL.Add('           PK.VPRC_PAD,PK.VPRC_PRZ,PK.VPRC_PRO,            ');
                   SQL.Add('           PK.LJV_VPRC_PAD,PK.LJV_VPRC_PRZ,PK.LJV_VPRC_PRO,');
                   SQL.Add('           PK.ATJ_VPRC_PAD,PK.ATJ_VPRC_PRZ,PK.ATJ_VPRC_PRO,');
                   SQL.Add('           PK.REP_VPRC_PAD,PK.REP_VPRC_PRZ,PK.REP_VPRC_PRO,');
                   SQL.Add('           PK.VAR_VPRC_PAD,PK.VAR_VPRC_PRZ,PK.VAR_VPRC_PRO,');
                   SQL.Add('           PK.CF_VPRC_ORI,PK.CF_VPRC_PAD,                  ');

                   SQL.Add('           PK.COL_ID,PK.COL_NO,PK.SEG_ID,PK.SEG_NO,');
                   SQL.Add('           PK.GRP_ID,PK.GRP_NO,PK.SGP_ID,PK.SGP_NO,');
                   SQL.Add('           PK.CAT_ID,PK.CAT_NO,PK.SCT_ID,PK.SCT_NO,');

                   SQL.Add('           PK.ORIG ,PK.XORIG,         ');
                   SQL.Add('           PK.CPAIS,PK.XPAIS,PK.FPAIS,');

                   SQL.Add('           PK.INFADCAD,');

                   SQL.Add('           MAX(FK.EF_DTEV) OVER(PARTITION BY PK.IDCP) AS EF_DTEV, -- Evento');

                   SQL.Add('           -- Estoque Consolidado');
                   SQL.Add('           CAST(SUM(FK.EFI_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2)) AS EFI_QTDE,CAST(SUM(FK.EFI_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EFI_QTRL,');

                   SQL.Add('           -- Estoque Pronta Entrega');
                   SQL.Add('           CAST(SUM(FK.EPE_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EPE_QTDE,CAST(SUM(FK.EPE_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EPE_QTRL,');
                   SQL.Add('           CAST(SUM(FK.EST_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EST_QTDE,CAST(SUM(FK.EST_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EST_QTRL,');
                   SQL.Add('           CAST(SUM(FK.EAA_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EAA_QTDE,CAST(SUM(FK.EAA_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EAA_QTRL,');

                   SQL.Add('           -- Estoque Antecipado');
                   SQL.Add('           CAST(SUM(FK.EAT_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EAT_QTDE,CAST(SUM(FK.EAT_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EAT_QTRL,');

                   SQL.Add('           -- Estoque Revisado');
                   SQL.Add('           CAST(SUM(FK.ERV_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS ERV_QTDE,CAST(SUM(FK.ERV_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS ERV_QTRL,');
                   SQL.Add('           CAST(SUM(FK.EA_QTDE ) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EA_QTDE ,CAST(SUM(FK.EA_QTRL ) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EA_QTRL ,');
                   SQL.Add('           CAST(SUM(FK.EB_QTDE ) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EB_QTDE ,CAST(SUM(FK.EB_QTRL ) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EB_QTRL ,');
                   SQL.Add('           CAST(SUM(FK.EC_QTDE ) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EC_QTDE ,CAST(SUM(FK.EC_QTRL ) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EC_QTRL ,');

                   SQL.Add('           -- Pilotagem');
                   SQL.Add('           CAST(SUM(FK.EPI_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EPI_QTDE,CAST(SUM(FK.EPI_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EPI_QTRL,');

                   SQL.Add('           -- Estoque Substituto');
                   SQL.Add('           CAST(SUM(FK.ESU_QTDE_ENT) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS ESU_QTDE_ENT,CAST(SUM(FK.ESU_QTRL_ENT) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS ESU_QTRL_ENT,');
                   SQL.Add('           CAST(SUM(FK.ESU_QTDE_SAI) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS ESU_QTDE_SAI,CAST(SUM(FK.ESU_QTRL_SAI) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS ESU_QTRL_SAI,');

                   SQL.Add('           -- Compras');
                   SQL.Add('           CAST(SUM(FK.EPC_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EPC_QTDE,CAST(SUM(FK.EPC_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EPC_QTRL,');
                   SQL.Add('           MAX(FK.EPC_CTNR) OVER(PARTITION BY PK.IDCP) AS EPC_CTNR,');

                   SQL.Add('           -- Vendas Programadas');
                   SQL.Add('           CAST(SUM(FK.EPP_QTDE     ) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EPP_QTDE     ,CAST(SUM(FK.EPP_QTRL     ) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EPP_QTRL     ,');
                   SQL.Add('           CAST(SUM(FK.EPP_QTDE_CTNR) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EPP_QTDE_CTNR,CAST(SUM(FK.EPP_QTRL_CTNR) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EPP_QTRL_CTNR,');
                   SQL.Add('           CAST(SUM(FK.EEP_QTDE     ) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EEP_QTDE     ,CAST(SUM(FK.EEP_QTRL     ) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EEP_QTRL     ,');

                   SQL.Add('           -- Vendas Pronta Entrega');
                   SQL.Add('           CAST(SUM(FK.EPV_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EPV_QTDE,CAST(SUM(FK.EPV_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EPV_QTRL,');

                   SQL.Add('           -- Vendas Separadas');
                   SQL.Add('           CAST(SUM(FK.ESP_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS ESP_QTDE,CAST(SUM(FK.EPV_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS ESP_QTRL');

                   SQL.Add('FROM      VW_PSQ_CAD_PRO     AS PK -- Cadastro');
                   SQL.Add('LEFT JOIN VW_PSQ_CAD_PRO_EST AS FK     ON (FK.EL_IDEP  = :EL_IDEP AND FK.IDCP = PK.IDCP) -- Estoque');
                   SQL.Add('LEFT JOIN VW_PSQ_CAD_PRO_SCT AS TB_SCT ON (TB_SCT.IDAK = PK.IDAK) -- Categorias                    ');

                   if APSQ_SL.Count = 0 then
                      SQL.Add('WHERE PK.IDCP = 0') else

                   for i := 0 to APSQ_SL.Count - 1 do
                   begin
                     SQL.Add(IFThen(Pos('WHERE',Consulta.SQL.Text) = 0,'WHERE','AND'));

                     { Pesquisa Artigo \ SKU }
                     if (i = 0) and (Pos('.',APSQ_SL.Strings[i]) > 0) then
                     SQL.Add('PK.SKU  LIKE ''' + APSQ_SL.Strings[i] + '%''') else

                     { Pesquisa Grade }
                     if APSQ_SL.Strings[i] = APSQ_DG then
                     SQL.Add('PK.DGCP LIKE ''' + APSQ_SL.Strings[i] + '%''') else

                     { Pesquisa Genérica }
                     SQL.Add('PK.FT_KEY CONTAINING ''' + APSQ_SL.Strings[i] + '''' );
                   end;

                   SQL.Add('ORDER BY DTEV DESC');
                   ParamByName('EL_IDEP').Value := RECParametros.EP_ID;
                   Prepare;
                   Open;
                 end;
               finally
                 { Libera Objetos }
                 APSQ_SL.Free;

                 { Limpa Filtros }
                 DBGConsulta.Filter.Clear; { Consulta }

                 if (REC_SHE_DEF.FB_VD_ED_PK = '0') or (Consulta.RecNo = 0) then
                 BEPSQ_CAD.SetFocus(False) else

                 if Showing then

                 { Consulta
                 if (DPConsulta.Visible) and (TCDSPKEstoque.ActiveChild = DPConsulta) then
                 begin
                   PostMessage(DBGConsulta.Handle, WM_SETFOCUS, 0, 0);
                   TWinControl(DBGConsulta).SetFocus;
                 end; }

               end;
          end;
begin
  oCTransact(TConsulta);
  oOTransact(TConsulta);
  inherited;

  try _Pesquisa;
  finally
    if Consulta.RecNo = 0 then
    begin
      DPConsulta.Caption := 'Registro(s) não Encontrado(s) !';
      BEPSQ_CAD.SetFocus(False);
    end else

    if Showing then
    begin
      DPConsulta.Caption := 'Produtos Cadastrados';

      PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(DBGConsulta).SetFocus;
    end;
  end;
end;

procedure TFrmCAD_PRO_PSQ.BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
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

{ *********************** ARTIGOS *********************** }

procedure TFrmCAD_PRO_PSQ.ConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;

  if ConsultaCP_NO_GRD.AsString <> EmptyStr then DBGConsultaCP_NO_GRD.Field.FocusControl else
  DBGConsultaSKU.Field.FocusControl; { SKU }

  { Preços }
  if CAD_PRO_PRC.State = dsInactive then
  begin
    CAD_PRO_PRC.Prepare;
    CAD_PRO_PRC.Open;
  end;

  { Ficha Técnica }
  if CAD_PRO_FIC.State = dsInactive then
  begin
    CAD_PRO_FIC.Prepare;
    CAD_PRO_FIC.Open;
  end;

  { Catálogo }
  if  CAD_PRO_IMG.State = dsInactive then
  begin
    CAD_PRO_IMG.Prepare;
    CAD_PRO_IMG.Open;
  end;

  if Consulta.RecNo > 0 then
  begin
    { DBGConsulta }
    PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
    TWinControl(DBGConsulta).SetFocus;
  end else
  begin
    { Pesquisa }
    DPConsulta.Caption := 'Registro(s) não Encontrado(s)';
    BEPSQ_CAD.SetFocus(False);
  end;
end;

procedure TFrmCAD_PRO_PSQ.ConsultaAfterClose(DataSet: TDataSet);
begin
  inherited;
  { Cadastro }
  CAD_PRO_PRC.Close; { Preços }
  CAD_PRO_FIC.Close; { Ficha Técnica }
  CAD_PRO_IMG.Close; { Catálogo }
end;

procedure TFrmCAD_PRO_PSQ.DTSConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  { Produtos }
  DBGConsulta.ApplyBestFit(DBGConsultaSKU );
  DBGConsulta.ApplyBestFit(DBGConsultaCEAN);

  { Grade }
  DBGConsulta.ApplyBestFit(DBGConsultaGRD_SG);
  DBGConsulta.ApplyBestFit(DBGConsultaCP_NO_GRD);
  if DBGConsultaCP_NO_GRD.Width  > 220 then
     DBGConsultaCP_NO_GRD.Width := 220; { Limita o tamanho da coluna }

  { Descrição }
  DBGConsulta.ApplyBestFit(DBGConsultaCP_NO);
  if DBGConsultaCP_NO.Width  > 400 then
     DBGConsultaCP_NO.Width := 400; { Limita o tamanho da coluna }
end;

procedure TFrmCAD_PRO_PSQ.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { SITUAÇÕES  }
    { Pré Cadastro }
    if AColumn = DBGConsultaREST then
    if ANode.Values[DBGConsultaREST.Index] = 'PRÉ' then
       AFont.Color := $00C8F0F0 else

    { Cancelados }
    if ANode.Values[DBGConsultaREST.Index] = 'C' then
       AFont.Color := $000024B3 else

    { Fora Linha / Prazo }
    if LeftStr(ANode.Values[DBGConsultaREST.Index],1) = 'F' then
       AFont.Color := $000024B3 else

    { Inativos }
    if ANode.Values[DBGConsultaREST.Index] = 'I' then
       AFont.Color := $00002EE6 else

    { Suspenso }
    if ANode.Values[DBGConsultaREST.Index] = 'S' then
       AFont.Color := $00002EE6 else

    { Exclusivo }
    if ANode.Values[DBGConsultaREST.Index] = 'VIP' then
       AFont.Color := clPurple;

    { Produtos }
    if AColumn = DBGConsultaSKU THEN
       AFont.Color := clWindowText;

    { Lançamentos }
    if (AColumn = DBGConsultaC_EPE_QTDE) or (AColumn = DBGConsultaEPE_QTRL) then
    if (ANode.Values[DBGConsultaEPE_QTDE.Index] <> Null) then
    begin
      AColor      := $00FAFEE9;
      AFont.Color := clWindowText;

      if (ANode.Values[DBGConsultaEPE_QTDE.Index] < 0) then
          AFont.Color := $000024B3;
    end;

    { IPI }
    if (AColumn = DBGConsultaFIS_PIPI) then
    if (ANode.Values[DBGConsultaFIS_PIPI.Index] <> Null) then
    if (ANode.Values[DBGConsultaFIS_PIPI.Index]  > 0) then
    AFont.Color := $000024B3; 

    { Size Fonts }
    { SKU }
    if (AColumn = DBGConsultaSKU) then
    if (Length(ANode.Values[DBGConsultaSKU.Index]) > 17) then AFont.Size := 7 else
    if (Length(ANode.Values[DBGConsultaSKU.Index]) > 14) then AFont.Size := 8;

    { Grade }
    if (AColumn = DBGConsultaCP_NO_GRD) then
    if (Length(ANode.Values[DBGConsultaCP_NO_GRD.Index]) > 30) then
    AFont.Size := 8;

    { Descrição }
    if (AColumn = DBGConsultaCP_NO) then
    if (Length(ANode.Values[DBGConsultaCP_NO.Index]) > 80) then AFont.Size := 7 else
    if (Length(ANode.Values[DBGConsultaCP_NO.Index]) > 60) then AFont.Size := 8;
  end;

  if ANode.Selected then
  begin
    { Pré Cadastro }
    if ANode.Values[DBGConsultaREST.Index] = 'PRÉ' then
    begin
      AColor      := $00C8F0F0;
      AFont.Color := clWindowText;
    end else

    { Cancelados }
    if ANode.Values[DBGConsultaREST.Index] = 'C' then
    begin
      AColor      := $000024B3;
      AFont.Color := clHighlightText;
    end else

    { Fora de Linha / Prazo }
    if LeftStr(ANode.Values[DBGConsultaREST.Index],1) = 'F' then
    begin
      AColor      := $000024B3;
      AFont.Color := clHighlightText;
    end else

    { Inativos }
    if ANode.Values[DBGConsultaREST.Index] = 'I' then
    begin
      AColor      := $00002EE6;
      AFont.Color := clHighlightText;
    end else

    { Suspenso }
    if ANode.Values[DBGConsultaREST.Index] = 'S' then
    begin
      AColor      := $00002EE6;
      AFont.Color := clHighlightText;
    end else

    { Exclusivo }
    if ANode.Values[DBGConsultaREST.Index] = 'VIP' then
    begin
      AColor      := clPurple;
      AFont.Color := clHighlightText;
    end else
    begin
      AColor      := clHighlight;
      AFont.Color := clHighlightText;
    end;
  end;
  
  if ASelected then
  begin
    AColor      := $00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;

end;


{ ********************* TABELA DE PREÇOS ******************** }

procedure TFrmCAD_PRO_PSQ.CAD_PRO_PRCCalcFields(DataSet: TDataSet);
begin
  CAD_PRO_PRCC_CF_VPRC_PAD.Value := FormatFloat(CAD_PRO_PRCCF_VPRC_ORI.AsString + ' ,##,0.00#',CAD_PRO_PRCCF_VPRC_PAD.AsFloat);
end;

{ *************************** CATÁLOGO ************************** }

procedure TFrmCAD_PRO_PSQ.DTSCAD_PRO_IMGDataChange(Sender: TObject;
  Field: TField);
begin
  if Consulta.State <> dsInactive then
  begin
    PNLCAD_PRO_IMG_PIX.Caption := _oLoadJPG(CAD_PRO_IMGIMG_ID,CAD_PRO_IMGIMG_PAD,IMGCAD_PRO_IMG_PAD,True); { True - força visualização }

    DBCAD_PRO_IMG_ILA1.Hint := CAD_PRO_IMGD_ILA_INS1.AsString;
    DBCAD_PRO_IMG_ILA2.Hint := CAD_PRO_IMGD_ILA_INS2.AsString;
    DBCAD_PRO_IMG_ILA3.Hint := CAD_PRO_IMGD_ILA_INS3.AsString;
    DBCAD_PRO_IMG_ILA4.Hint := CAD_PRO_IMGD_ILA_INS4.AsString;
    DBCAD_PRO_IMG_ILA5.Hint := CAD_PRO_IMGD_ILA_INS5.AsString;
    DBCAD_PRO_IMG_ILA6.Hint := CAD_PRO_IMGD_ILA_INS6.AsString;
    DBCAD_PRO_IMG_ILA7.Hint := CAD_PRO_IMGD_ILA_INS7.AsString;
    DBCAD_PRO_IMG_ILA8.Hint := CAD_PRO_IMGD_ILA_INS8.AsString;

    BVCAD_PRO_IMG_ILA1.Hint := DBCAD_PRO_IMG_ILA1.Hint;
    BVCAD_PRO_IMG_ILA2.Hint := DBCAD_PRO_IMG_ILA2.Hint;
    BVCAD_PRO_IMG_ILA3.Hint := DBCAD_PRO_IMG_ILA3.Hint;
    BVCAD_PRO_IMG_ILA4.Hint := DBCAD_PRO_IMG_ILA4.Hint;
    BVCAD_PRO_IMG_ILA5.Hint := DBCAD_PRO_IMG_ILA5.Hint;
    BVCAD_PRO_IMG_ILA6.Hint := DBCAD_PRO_IMG_ILA6.Hint;
    BVCAD_PRO_IMG_ILA7.Hint := DBCAD_PRO_IMG_ILA7.Hint;
    BVCAD_PRO_IMG_ILA8.Hint := DBCAD_PRO_IMG_ILA8.Hint;
  end;
end;

procedure TFrmCAD_PRO_PSQ.IMGCAD_PRO_IMG_PADClick(Sender: TObject);
begin
  uLoadZoom(IMGCAD_PRO_IMG_PAD.Picture,

           [ConsultaArtigo.AsString,
            ConsultaSKU.AsString,
            ConsultaCP_NO_GRD.AsString,
            ConsultaCP_NO.AsString,
            EmptyStr,
            EmptyStr]);
end;

procedure TFrmCAD_PRO_PSQ.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  if Consulta.RecNo > 0 then
  begin
    REC_SHE_DEF.FB_PSQ_OK := True;
    Close;
  end;
end;

procedure TFrmCAD_PRO_PSQ.DBGConsultaDblClick(Sender: TObject);
begin
  if Consulta.RecNo > 0 then
  begin
    REC_SHE_DEF.FB_PSQ_OK := True;
    Close;
  end;  
end;

procedure TFrmCAD_PRO_PSQ.DTSCAD_PRO_PRCDataChange(Sender: TObject;
  Field: TField);
begin
  { Atacado }
  DBGCAD_PRO_PRC.ApplyBestFit(DBGCAD_PRO_PRCVPRC_PAD); { Padrão }
  DBGCAD_PRO_PRC.ApplyBestFit(DBGCAD_PRO_PRCVPRC_PRZ); { Prazo }
  DBGCAD_PRO_PRC.ApplyBestFit(DBGCAD_PRO_PRCVPRC_PRO); { Promoção }

  { Atacarejo }
  DBGCAD_PRO_PRC.ApplyBestFit(DBGCAD_PRO_PRCATJ_VPRC_PAD); { Padrão }
  DBGCAD_PRO_PRC.ApplyBestFit(DBGCAD_PRO_PRCATJ_VPRC_PRZ); { Prazo }
  DBGCAD_PRO_PRC.ApplyBestFit(DBGCAD_PRO_PRCATJ_VPRC_PRO); { Promoção }

  { Varejo }
  DBGCAD_PRO_PRC.ApplyBestFit(DBGCAD_PRO_PRCVAR_VPRC_PAD); { Padrão }
  DBGCAD_PRO_PRC.ApplyBestFit(DBGCAD_PRO_PRCVAR_VPRC_PRZ); { Prazo }
  DBGCAD_PRO_PRC.ApplyBestFit(DBGCAD_PRO_PRCVAR_VPRC_PRO); { Promoção }

  { Loja Virtual }
  DBGCAD_PRO_PRC.ApplyBestFit(DBGCAD_PRO_PRCLJV_VPRC_PAD); { Padrão }
  DBGCAD_PRO_PRC.ApplyBestFit(DBGCAD_PRO_PRCLJV_VPRC_PRZ); { Prazo }
  DBGCAD_PRO_PRC.ApplyBestFit(DBGCAD_PRO_PRCLJV_VPRC_PRO); { Promoção }

  { Representante }
  DBGCAD_PRO_PRC.ApplyBestFit(DBGCAD_PRO_PRCREP_VPRC_PAD); { Padrão }
  DBGCAD_PRO_PRC.ApplyBestFit(DBGCAD_PRO_PRCREP_VPRC_PRZ); { Prazo }
  DBGCAD_PRO_PRC.ApplyBestFit(DBGCAD_PRO_PRCREP_VPRC_PRO); { Promoção }
end;

procedure TFrmCAD_PRO_PSQ.ConsultaCalcFields(DataSet: TDataSet);
begin
  if ConsultaEPE_QTDE.AsFloat <> 0 then
     ConsultaC_EPE_QTDE.Value := FormatFloat(',##,0.00',ConsultaEPE_QTDE.AsFloat) + ' ' + LeftStr(ConsultaUCOM.AsString,2); { Pedido }
end;

procedure TFrmCAD_PRO_PSQ.ConsultaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  DBGConsultaREST.Visible      := False; { Situação }
  DBGConsulta.Bands[1].Visible := False; { Grade }
end;

procedure TFrmCAD_PRO_PSQ.ConsultaAfterScroll(DataSet: TDataSet);
begin
  if Consulta.State <> dsInactive then
  begin
    { Situação }
    if ConsultaREST.AsString <> 'A' then
    DBGConsultaREST.Visible := True;

    { Grade }
    if ConsultaCP_NO_GRD.AsString <> EmptyStr then
    DBGConsulta.Bands[1].Visible := True;
  end;
end;

procedure TFrmCAD_PRO_PSQ.CAD_PRO_FICAfterOpen(DataSet: TDataSet);
begin
  if Consulta.State <> dsInactive then
  begin
    { Focused }
    if (CAD_PRO_FICUCOM.AsString = 'M') and (CAD_PRO_FICMGRAMA.AsFloat > 0) then
    DBGCAD_PRO_FICMGRAMA.Field.FocusControl else

    if (CAD_PRO_FICUCOM.AsString = 'M') and (CAD_PRO_FICMGRAMA.AsFloat > 0) then
    DBGCAD_PRO_FICMMETRO.Field.FocusControl else

    if CAD_PRO_FICMPESO.AsFloat > 0 then
    DBGCAD_PRO_FICMPESO.Field.FocusControl else

    if CAD_PRO_FICMMETRO.AsFloat > 0 then
    DBGCAD_PRO_FICMMETRO.Field.FocusControl;
  end;  
end;

procedure TFrmCAD_PRO_PSQ.CAD_PRO_PRCAfterOpen(DataSet: TDataSet);
begin
  if Consulta.State <> dsInactive then
  begin
    { Focused }
    DBGCAD_PRO_PRCC_CF_VPRC_PAD.Field.FocusControl; { Preço Atacado }
  end;  
end;

procedure TFrmCAD_PRO_PSQ.CAD_PRO_FICCalcFields(DataSet: TDataSet);
begin
  CAD_PRO_FICC_UQTDE.Value := FormatFloat(',##,0.00',CAD_PRO_FICUQTDE.AsFloat) + ' x ' + CAD_PRO_FICUQTDE_VEN_MUL.AsString;
end;

end.


