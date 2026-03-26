unit pctr_ped_bai;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, ImgList, dxPageControl, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, DB, IBCustomDataSet, IBDatabase, dxDBTLCl, dxGrClms,
  StdCtrls, dxEditor, dxEdLib, dxExEdtr, IBQuery, IBStoredProc, Math, DateUtils,
  IBEvents, rxSpeedbar;

type
  Tfrmctr_ped_bai = class(TForm)
    imageOPC: TImageList;
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    siPSQ: TSpeedItem;
    siREF: TSpeedItem;
    siSAIR: TSpeedItem;
    pnlpri: TPanel;
    pcPED: TdxPageControl;
    tsPED: TdxTabSheet;
    imageITEM: TImageList;
    dbgConsulta: TdxDBGrid;
    fin_rec: TIBDataSet;
    dtsfin_rec: TDataSource;
    ibTRA: TIBTransaction;
    tSHEILD: TIBTransaction;
    pnlbot: TPanel;
    pnldir: TPanel;
    pnlesq: TPanel;
    gbPED: TGroupBox;
    Label1: TLabel;
    edtotr: TdxEdit;
    GroupBox2: TGroupBox;
    edDROM: TdxDateEdit;
    Label7: TLabel;
    Label8: TLabel;
    tab_pag: TIBQuery;
    dtstab_pag: TDataSource;
    tab_pagID: TIntegerField;
    tab_pagPAG_DPAG: TIBStringField;
    tab_pagPAG_D001: TIntegerField;
    tab_pagPAG_D002: TIntegerField;
    tab_pagPAG_D003: TIntegerField;
    tab_pagPAG_D004: TIntegerField;
    tab_pagPAG_D005: TIntegerField;
    tab_pagPAG_D006: TIntegerField;
    tab_pagPAG_D007: TIntegerField;
    tab_pagPAG_D008: TIntegerField;
    tab_pagPAG_D009: TIntegerField;
    tab_pagPAG_D010: TIntegerField;
    tab_pagPAG_STA: TIBStringField;
    tab_pagPAG_PARC: TSmallintField;
    tab_pagPAG_DUPL: TIBStringField;
    edcdbx: TdxEdit;
    consulta: TIBQuery;
    ibSP: TIBStoredProc;
    Label6: TLabel;
    edtotb: TdxEdit;
    Label2: TLabel;
    edtotd: TdxEdit;
    dbgConsultaFIN_DCUS: TdxDBGridMaskColumn;
    dbgConsultaFIN_VALO: TdxDBGridMaskColumn;
    fin_rec_bai: TIBDataSet;
    dtsfin_rec_bai: TDataSource;
    fin_rec_baiID: TIntegerField;
    fin_rec_baiFIN_DVEN: TDateField;
    fin_rec_baiFIN_TIPO: TIBStringField;
    fin_rec_baiFIN_BANC: TIBStringField;
    fin_rec_baiFIN_AGEN: TIBStringField;
    fin_rec_baiFIN_CONT: TIBStringField;
    fin_rec_baiFIN_NCHQ: TIBStringField;
    fin_rec_baiFIN_OBSE: TMemoField;
    fin_rec_baiFIN_STA: TIBStringField;
    fin_rec_baiFIN_PRAZ: TSmallintField;
    ImageList1: TImageList;
    ibSHEILD: TIBStoredProc;
    consulta_s: TIBQuery;
    siSAV: TSpeedItem;
    aux: TIBQuery;
    dbgConsultaFIN_CPPL: TdxDBGridMaskColumn;
    dbgConsultaFIN_DPPL: TdxDBGridMaskColumn;
    edvend: TdxEdit;
    Label4: TLabel;
    eddrep: TdxEdit;
    dxTabSheet1: TdxTabSheet;
    GroupBox1: TGroupBox;
    edobse: TdxMemo;
    fin_rec_baiFIN_DPAG: TDateField;
    fin_rec_baiFIN_DBAN: TIBStringField;
    fin_recID: TIntegerField;
    fin_recFIN_CCLI: TIntegerField;
    fin_recFIN_CVEN: TIntegerField;
    fin_recFIN_CREP: TIntegerField;
    fin_recFIN_CDRO: TIntegerField;
    fin_recFIN_CDNF: TIntegerField;
    fin_recFIN_IPPL: TIntegerField;
    fin_recFIN_CPPL: TIBStringField;
    fin_recFIN_DPPL: TIBStringField;
    fin_recFIN_CCUS: TIntegerField;
    fin_recFIN_DCUS: TIBStringField;
    fin_recFIN_DROM: TDateField;
    fin_recFIN_DNFE: TDateField;
    fin_recFIN_DVEN: TDateField;
    fin_recFIN_DTCO: TDateField;
    fin_recFIN_VEND: TIBStringField;
    fin_recFIN_DREP: TIBStringField;
    fin_recFIN_VALO: TIBBCDField;
    dbgConsultaFIN_DROM: TdxDBGridDateColumn;
    fin_recFIN_DCLI: TIBStringField;
    dbgConsultaFIN_DCLI: TdxDBGridMaskColumn;
    fin_recFIN_CONC: TSmallintField;
    fin_rec_baiFIN_STFI: TIBStringField;
    fin_recFIN_STCO: TIBStringField;
    fin_recFIN_STPD: TIBStringField;
    fin_recFIN_STDO: TIBStringField;
    dbgConsultaFIN_STDO: TdxDBGridMaskColumn;
    fin_rec_baiFIN_DOCT: TIBStringField;
    fin_rec_baiFIN_VALO: TIBBCDField;
    fin_rec_baiFIN_VPAG: TIBBCDField;
    fin_rec_baiFIN_VPEN: TIBBCDField;
    fin_recFIN_DOCT: TIBStringField;
    dbgConsultaFIN_DOCT: TdxDBGridMaskColumn;
    Label3: TLabel;
    eddpag: TdxEdit;
    edcdcx: TdxEdit;
    aux_S: TIBQuery;
    pclan: TdxPageControl;
    tslan: TdxTabSheet;
    tscar: TdxTabSheet;
    dbgprz1: TdxDBGrid;
    sblan: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedbarSection2: TSpeedbarSection;
    SpeedbarSection3: TSpeedbarSection;
    SpeedbarSection4: TSpeedbarSection;
    b1I: TSpeedItem;
    b1A: TSpeedItem;
    b1D: TSpeedItem;
    b1S: TSpeedItem;
    b1C: TSpeedItem;
    dbgprz2: TdxDBGrid;
    SpeedBar3: TSpeedBar;
    SpeedbarSection9: TSpeedbarSection;
    SpeedbarSection10: TSpeedbarSection;
    SpeedbarSection11: TSpeedbarSection;
    SpeedbarSection12: TSpeedbarSection;
    c1I: TSpeedItem;
    c1A: TSpeedItem;
    c1D: TSpeedItem;
    c1S: TSpeedItem;
    c1C: TSpeedItem;
    fin_rec_baiFIN_COBR: TIBStringField;
    fin_recFIN_COBR: TIBStringField;
    fin_rec_baiFIN_STDO: TIBStringField;
    fin_rec_baiFIN_CCAB: TIntegerField;
    fin_rec_baiFIN_CDBX: TIntegerField;
    fin_rec_baiFIN_CDCX: TIntegerField;
    fin_rec_baiFIN_CCLI: TIntegerField;
    fin_rec_baiFIN_DCLI: TIBStringField;
    fin_rec_baiFIN_CVEN: TIntegerField;
    fin_rec_baiFIN_VEND: TIBStringField;
    fin_rec_baiFIN_CREP: TIntegerField;
    fin_rec_baiFIN_DREP: TIBStringField;
    fin_rec_baiFIN_ATRA: TSmallintField;
    fin_rec_baiFIN_CONC: TSmallintField;
    fin_rec_baiFIN_DCAD: TDateField;
    fin_rec_baiFIN_DMED: TDateField;
    fin_rec_baiFIN_DATR: TDateField;
    fin_rec_baiFIN_MCHQ: TSmallintField;
    fin_rec_baiFIN_STCO: TIBStringField;
    fin_recFIN_CDBX: TIntegerField;
    fin_recFIN_CDCX: TIntegerField;
    fin_recFIN_CBCO: TIntegerField;
    fin_recFIN_PRAZ: TSmallintField;
    fin_recFIN_ATRA: TSmallintField;
    fin_recFIN_DCAD: TDateField;
    fin_recFIN_DPAG: TDateField;
    fin_recFIN_DMED: TDateField;
    fin_recFIN_DATR: TDateField;
    fin_recFIN_PORT: TIBStringField;
    fin_recFIN_STFI: TIBStringField;
    fin_recFIN_VPAG: TIBBCDField;
    fin_recFIN_VPEN: TIBBCDField;
    fin_recFIN_VMUL: TIBBCDField;
    fin_recFIN_PMUL: TIBBCDField;
    fin_recFIN_VJUR: TIBBCDField;
    fin_recFIN_PJUR: TIBBCDField;
    fin_recFIN_VDES: TIBBCDField;
    fin_recFIN_PDES: TIBBCDField;
    fin_recFIN_OBSE: TMemoField;
    fin_recFIN_STA: TIBStringField;
    fin_recFIN_DPRA: TIBStringField;
    fin_recFIN_CDPD: TIntegerField;
    psq_ped: TIBQuery;
    psq_pedID: TIntegerField;
    psq_pedROM_CDOC: TIntegerField;
    psq_pedROM_CDPR: TIntegerField;
    psq_pedROM_CDPD: TIntegerField;
    psq_pedROM_CDRO: TIntegerField;
    psq_pedROM_CDRD: TIntegerField;
    psq_pedROM_CDNF: TIntegerField;
    psq_pedROM_CDBX: TIntegerField;
    psq_pedROM_CDCX: TIntegerField;
    psq_pedROM_DERO: TIBStringField;
    psq_pedROM_STPD: TIBStringField;
    psq_pedROM_STCO: TIBStringField;
    psq_pedROM_STFI: TIBStringField;
    psq_pedROM_DROM: TDateField;
    psq_pedROM_HROM: TTimeField;
    psq_pedROM_DBAI: TDateField;
    psq_pedROM_DCAN: TDateField;
    psq_pedROM_DNFS: TDateField;
    psq_pedROM_DEXP: TDateField;
    psq_pedROM_HEXP: TTimeField;
    psq_pedROM_CEXP: TIntegerField;
    psq_pedROM_CCLI: TIntegerField;
    psq_pedROM_CVEN: TIntegerField;
    psq_pedROM_CREP: TIntegerField;
    psq_pedROM_CPAG: TIntegerField;
    psq_pedROM_QTVE: TIBBCDField;
    psq_pedROM_QTSP: TIBBCDField;
    psq_pedROM_QTPD: TIBBCDField;
    psq_pedROM_RLVE: TIntegerField;
    psq_pedROM_TSDE: TIBBCDField;
    psq_pedROM_TDSC: TIBStringField;
    psq_pedROM_PDSC: TIBBCDField;
    psq_pedROM_CDSC: TIBBCDField;
    psq_pedROM_ADSC: TIBBCDField;
    psq_pedROM_TCDE: TIBBCDField;
    psq_pedROM_CONC: TSmallintField;
    psq_pedROM_OBSE: TMemoField;
    psq_pedROM_STA: TIBStringField;
    psq_pedCLI_FANT: TIBStringField;
    psq_pedREP_FANT: TIBStringField;
    psq_pedPAG_DPAG: TIBStringField;
    Label5: TLabel;
    edDBAI: TdxDateEdit;
    fin_rec_baiFIN_RCLI: TIBStringField;
    fin_rec_baiFIN_RREP: TIBStringField;
    fin_rec_baiFIN_DBAI: TDateField;
    fin_recFIN_RCLI: TIBStringField;
    fin_recFIN_RREP: TIBStringField;
    fin_recFIN_PCOM: TIBBCDField;
    fin_recFIN_DBAI: TDateField;
    psq_ped_ite: TIBQuery;
    psq_pedROM_COMI: TIBBCDField;
    psq_pedROM_DPRD: TDateField;
    psq_pedROM_CTNR: TIBStringField;
    psq_pedROM_DEMB: TDateField;
    psq_pedROM_DDES: TDateField;
    psq_pedUSU_DUSU: TIBStringField;
    pEVE: TIBEvents;
    pSP: TIBStoredProc;
    pTRA: TIBTransaction;
    fin_recFIN_VENC: TIBBCDField;
    fin_recFIN_CPF: TIBStringField;
    fin_recFIN_CTNR: TIBStringField;
    psq_ped_iteID: TIntegerField;
    psq_ped_iteROM_CCAB: TIntegerField;
    psq_ped_iteROM_CDOC: TIntegerField;
    psq_ped_iteROM_CDPR: TIntegerField;
    psq_ped_iteROM_CDPD: TIntegerField;
    psq_ped_iteROM_CDRO: TIntegerField;
    psq_ped_iteROM_CDRD: TIntegerField;
    psq_ped_iteROM_CDNF: TIntegerField;
    psq_ped_iteROM_ITEM: TIBStringField;
    psq_ped_iteROM_CPRO: TIntegerField;
    psq_ped_iteROM_CPR2: TIntegerField;
    psq_ped_iteROM_CDET: TIBStringField;
    psq_ped_iteROM_QTDE: TIBBCDField;
    psq_ped_iteROM_QTRL: TIntegerField;
    psq_ped_iteROM_QTSP: TIBBCDField;
    psq_ped_iteROM_RLSP: TIntegerField;
    psq_ped_iteROM_QTPD: TIBBCDField;
    psq_ped_iteROM_RLPD: TIntegerField;
    psq_ped_iteROM_UNIT: TFloatField;
    psq_ped_iteROM_PREC: TFloatField;
    psq_ped_iteROM_VDSC: TIBBCDField;
    psq_ped_iteROM_TOTA: TIBBCDField;
    psq_ped_iteROM_FLAG: TIBStringField;
    psq_ped_iteROM_COMI: TIBBCDField;
    psq_ped_iteROM_DPRO: TIBStringField;
    psq_ped_iteROM_TPRC: TIBStringField;
    psq_ped_iteROM_ABCD: TIBStringField;
    psq_ped_iteROM_DCOR: TIBStringField;
    psq_ped_iteROM_PCOR: TIBStringField;
    psq_ped_iteROM_DCO2: TIBStringField;
    psq_ped_iteROM_PCO2: TIBStringField;
    fin_rec_baiFIN_DFIN: TIBStringField;
    fin_rec_baiFIN_CPPL: TIntegerField;
    fin_rec_baiFIN_CCUS: TIntegerField;
    fin_rec_baiFIN_CDCO: TIntegerField;
    fin_rec_baiFIN_CDBA: TIBStringField;
    fin_rec_baiFIN_DEBA: TIBStringField;
    fin_rec_baiFIN_VENC: TIBBCDField;
    fin_rec_baiFIN_CTNR: TIBStringField;
    fin_rec_baiFIN_VMUL: TIBBCDField;
    fin_rec_baiFIN_PMUL: TIBBCDField;
    fin_rec_baiFIN_VJUR: TIBBCDField;
    fin_rec_baiFIN_PJUR: TIBBCDField;
    fin_rec_baiFIN_VDES: TIBBCDField;
    fin_rec_baiFIN_PDES: TIBBCDField;
    fin_rec_baiFIN_CPF: TIBStringField;
    dbgprz1FIN_TIPO: TdxDBGridImageColumn;
    dbgprz1FIN_PRAZ: TdxDBGridMaskColumn;
    dbgprz1FIN_DVEN: TdxDBGridDateColumn;
    dbgprz1FIN_VALO: TdxDBGridMaskColumn;
    dbgprz1FIN_BANC: TdxDBGridMaskColumn;
    dbgprz1FIN_AGEN: TdxDBGridMaskColumn;
    dbgprz1FIN_CONT: TdxDBGridMaskColumn;
    dbgprz1FIN_NCHQ: TdxDBGridMaskColumn;
    dbgprz1FIN_STA: TdxDBGridCheckColumn;
    dbgprz1FIN_CPF: TdxDBGridMaskColumn;
    dbgprz1FIN_OBSE: TdxDBGridBlobColumn;
    dbgprz2FIN_TIPO: TdxDBGridImageColumn;
    dbgprz2FIN_VALO: TdxDBGridMaskColumn;
    dbgprz2FIN_PRAZ: TdxDBGridMaskColumn;
    dbgprz2FIN_DVEN: TdxDBGridDateColumn;
    dbgprz2FIN_BANC: TdxDBGridMaskColumn;
    dbgprz2FIN_AGEN: TdxDBGridMaskColumn;
    dbgprz2FIN_CONT: TdxDBGridMaskColumn;
    dbgprz2FIN_NCHQ: TdxDBGridMaskColumn;
    dbgprz2FIN_STA: TdxDBGridCheckColumn;
    dbgprz2FIN_CPF: TdxDBGridMaskColumn;
    dbgprz2FIN_OBSE: TdxDBGridBlobColumn;
    fin_rec_baiFIN_CDRD: TIntegerField;
    fin_rec_baiFIN_VCHQ: TIBBCDField;
    fin_recFIN_CDRD: TIntegerField;
    fin_recFIN_VCHQ: TIBBCDField;
    fin_recFIN_DERD: TIBStringField;
    fin_rec_baiFIN_DERD: TIBStringField;
    fin_rec_baiFIN_DTST: TDateTimeField;
    fin_recFIN_DTST: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure siSAIRClick(Sender: TObject);
    procedure fin_recAfterPost(DataSet: TDataSet);
    procedure fin_recAfterOpen(DataSet: TDataSet);
    procedure fin_rec_baiNewRecord(DataSet: TDataSet);
    procedure b1IClick(Sender: TObject);
    procedure b1AClick(Sender: TObject);
    procedure b1DClick(Sender: TObject);
    procedure b1SClick(Sender: TObject);
    procedure b1CClick(Sender: TObject);
    procedure fin_rec_baiAfterPost(DataSet: TDataSet);
    procedure fin_rec_baiAfterCancel(DataSet: TDataSet);
    procedure fin_rec_baiAfterDelete(DataSet: TDataSet);
    procedure fin_rec_baiAfterEdit(DataSet: TDataSet);
    procedure fin_rec_baiBeforeCancel(DataSet: TDataSet);
    procedure fin_rec_baiBeforePost(DataSet: TDataSet);
    procedure siSAVClick(Sender: TObject);
    procedure dbgprz1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fin_rec_baiFIN_PRAZValidate(Sender: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fin_recBeforePost(DataSet: TDataSet);
    procedure dtsfin_recDataChange(Sender: TObject; Field: TField);
    procedure tslanShow(Sender: TObject);
    procedure tscarShow(Sender: TObject);
    procedure dbgprz2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDROMExit(Sender: TObject);
    procedure siPSQClick(Sender: TObject);
    procedure tab_pagAfterOpen(DataSet: TDataSet);
    procedure dbgprz1FIN_VALOValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgprz1FIN_TIPOChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    FrmStyle   : TFormStyle;
    FrmPosition: TPosition;
    procedure TOTAL;
    procedure ABRE_TABELA;
    procedure BAIXA_CARTEIRA(cdbx,cdlt: integer);
    procedure BAIXA_BANCARIO(cdbx,cdlt: integer);
    procedure BAIXA_ESTOQUE(cdbx,cdlt: integer);
    procedure INCLUI_CARTEIRA;
    procedure INCLUI_BANCARIO;
    procedure LANCA_CAIXA(cobr: string;conc: word);
  public
    { Public declarations }

  end;

var
  frmctr_ped_bai: Tfrmctr_ped_bai;

const
  aParc : array [1..24] of string = ('A','B','C','D','E','F','G',
                                     'H','I','J','K','L','M','N',
                                     'O','P','Q','R','S','T','U',
                                     'V','X','Z');

implementation

uses uPrincipal, ppesquisa;

{$R *.dfm}

procedure Tfrmctr_ped_bai.FormCreate(Sender: TObject);
begin
  oOTransact(IBTra);
  campo_pesquisa := '';

  ABRE_TABELA;
end;

procedure Tfrmctr_ped_bai.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  { Herança }
  FrmStyle    := FormStyle;
  FrmPosition := Position;

  { Eventos }
  with pEVE do
  begin
    UnregisterEvents;
    Events.Add('CTR_PED');
    RegisterEvents;
  end;
end;

procedure Tfrmctr_ped_bai.FormActivate(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  OnActivate    := Nil;
  Tag := 0;
end;

procedure Tfrmctr_ped_bai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnClose := Nil;
  Screen.Cursor := crAppStart;

  pEve.UnRegisterEvents;
  Action := caFree;
end;

procedure Tfrmctr_ped_bai.FormDestroy(Sender: TObject);
begin
  OnDestroy := Nil;
  oFTransact(IBTra);
  Screen.Cursor := crDefault;
  frmctr_ped_bai := Nil;
end;

procedure Tfrmctr_ped_bai.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_return,40: if (not (activeControl is TdxDBGrid) and
                         not (activeControl is TdxMaskEdit)) then
                        selectNext (activecontrol, true, true);
       38          : if (not (activeControl is TdxDBGrid) and
                         not (activeControl is TdxMaskEdit)) then
                       selectNext (activecontrol, false, true);
       118         : if fin_rec_bai.State = dsBrowse then siPSQ.Click;
       116         : if fin_rec_bai.State = dsBrowse then
                     begin
                       fin_rec.Close;
                       fin_rec.Open;
                       fin_rec_bai.Close;
                       fin_rec_bai.Open;
                     end;
       121         : siSAV.Click;
  end;
end;

procedure Tfrmctr_ped_bai.FormPaint(Sender: TObject);
var
  R: TRect;
begin
  if (Showing) and ((HelpContext = 0) or (HelpContext = 1)) then
  begin
    { Definição sobre o Painel de utilitários do form principal }
    FrmPrincipal.PNBot.Visible := (Screen.Height > 768);
    HelpContext := IFThen((Screen.Height > 768),0,1);

    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,R);

    if FrmPosition = poDefault then
    begin
      if (AlphaBlendValue = 0) and (HelpContext = 0) then
      begin
        { Width padrão acima de 768 = 1032 }
        Height := Trunc((R.Bottom - R.Top) * 0.9);
        Top    := ((R.Bottom - R.Top ) - Height) div 2;
        Left   := ((R.Right  - R.Left) - Width ) div 2;
      end else
      begin
        Top    := IFThen(FrmStyle    = fsNormal ,R.Top ,0);
        Left   := IFThen(FrmStyle    = fsNormal ,R.Left,0);
        Width  := IFThen(FrmPosition = poDefault,R.Right -R.Left-5,0);
        Height := IFThen(FrmPosition = poDefault,R.Bottom-R.Top -5,0);
      end;
    end else
    begin
      if FrmStyle = fsNormal then
      begin
        Top  := R.Top + ((R.Bottom - R.Top ) - Height) div 2;
        Left :=         ((R.Right  + R.Left) - Width ) div 2;
      end else
      begin
        Top  := ((R.Bottom - R.Top ) - Height) div 2;
        Left := ((R.Right  - R.Left) - Width ) div 2;
      end;
    end;
  end;
end;

procedure Tfrmctr_ped_bai.FormResize(Sender: TObject);
begin
  if frmctr_ped_bai <> Nil then
  Paint;
end;

procedure Tfrmctr_ped_bai.BAIXA_ESTOQUE(cdbx,cdlt: integer);
begin
  with psq_ped do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
    SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
    SQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
    SQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
    SQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
    SQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');
    SQL.Add('AND      PED_VEN_CAB.ROM_CDBX = '''+inttostr(cdbx)+'''');
    SQL.Add('ORDER BY ID DESC');
    Open;
  end;

  while not psq_ped.Eof do
  begin
    with aux do
    begin
      SQL.Clear;
      SQL.Add('SELECT VEN_BEST FROM TAB_PED');
      SQL.Add('WHERE  VEN_TIPO = '''+psq_pedROM_STPD.AsString+'''');
      Open;
    end;

    if aux.Fields[0].AsString = '1' then
    begin
      with psq_ped_ite do
      begin
        SQL.Clear;
        SQL.Add('SELECT   * FROM '+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
        SQL.Add('WHERE    PED_VEN_ITE.ROM_CCAB = '''+psq_pedID.AsString+'''');
        SQL.Add('ORDER BY PED_VEN_ITE.ROM_ITEM');
        Open;
      end;

      with frmprincipal.sp_sql do
      begin
        ibSP.StoredProcName := 'SP_SQL';

        SQL.Clear;
        SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_sep']);
        SQL.Add('WHERE  EST_CDPD = '''+psq_pedID.AsString+'''');
        SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;

        SQL.Clear;
        SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_res']);
        SQL.Add('WHERE  EST_CDPD = '''+psq_pedID.AsString+'''');
        SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;

        SQL.Clear;
        SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_est']+' "CAD_PRO_EST"');
        SQL.Add('WHERE  EST_CDRO = '''+psq_pedID.AsString+'''');
        SQL.Add('AND    EST_FLAG = ''V''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;
      end;

      while not psq_ped_ite.Eof do
      begin
        ibSP.StoredProcName := 'SP_CAD_PRO_EST';
        ibSP.Prepare;

        ibSP.ParamByName('est').Value  := 'CAD_PRO_EST';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('est').Value  := 'CAD_PRO_EST_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

        ibSP.ParamByName('dmap').Value := '';
        ibSP.ParamByName('ctnr').Value := '';
        ibSP.ParamByName('lote').Value := '';

        if psq_ped_iteROM_CDET.AsString <> '' then
        with consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT EST_DMAP,EST_CTNR,EST_LOTE FROM '+ibSP.ParamByName('est').AsString);
          SQL.Add('WHERE  EST_CDET = '''+psq_ped_iteROM_CDET.AsString+'''');
          Open;

          ibSP.ParamByName('dmap').Value := fields[0].AsString;
          ibSP.ParamByName('ctnr').Value := fields[1].AsString;
          ibSP.ParamByName('lote').Value := fields[2].AsString;
        end;

        ibSP.ParamByName('id').Value   := 0;
        ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
        ibSP.ParamByName('cdro').Value := psq_pedID.AsInteger;
        ibSP.ParamByName('cdpd').Value := 0;
        ibSP.ParamByName('cdbx').Value := 0;
        ibSP.ParamByName('cpro').Value := psq_ped_iteROM_CPR2.AsInteger;
        ibSP.ParamByName('cusu').Value := psq_pedROM_CVEN.AsInteger;
        ibSP.ParamByName('dusu').Value := psq_pedUSU_DUSU.AsString;
        ibSP.ParamByName('cfav').Value := psq_pedROM_CCLI.AsInteger;
        ibSP.ParamByName('dfav').Value := psq_pedCLI_FANT.AsString;
        ibSP.ParamByName('dcad').Value := psq_pedROM_DROM.AsDateTime;
        ibSP.ParamByName('docu').Value := trim(copy(psq_pedROM_DERO.AsString,1,10));
        ibSP.ParamByName('flag').Value := 'V';
        ibSP.ParamByName('cdet').Value := psq_ped_iteROM_CDET.AsString;
        ibSP.ParamByName('dsep').Value := '';
        ibSP.ParamByName('debi').Value := psq_ped_iteROM_QTDE.AsFloat;
        ibSP.ParamByName('cred').Value := 0;
        ibSP.ExecProc;
        IBTra.CommitRetaining;

        psq_ped_ite.Next;
      end;
    end;
    psq_ped.Next;
  end;
end;

procedure Tfrmctr_ped_BAI.INCLUI_CARTEIRA;
var
  stdo: string;
  valo: double;
  conc: word;

begin
  conc := psq_pedROM_CONC.AsInteger;
  if conc = 0 then
  conc := 1;

  if psq_pedROM_CDNF.AsInteger > 0 then
     stdo := 'C '+psq_pedROM_CONC.AsString else stdo := 'C 0';

  valo := psq_pedROM_TCDE.AsFloat;


  if psq_pedROM_CDNF.AsInteger > 0 then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT NFE_VNF FROM '+SLPrincipal.Values['nfe_cab']);
    SQL.Add('WHERE  NFE_CDNF = '''+psq_pedROM_CDNF.AsString+'''');
    Open;
    if fields[0].AsFloat > 0 then
       valo := fields[0].AsFloat;
  end
  else
  conc := 1;

  frmctr_ped_bai.fin_rec.Append;
  frmctr_ped_bai.fin_recID.Value       := 0;
  frmctr_ped_bai.fin_recFIN_CDPD.Value := psq_pedID.AsInteger;
  frmctr_ped_bai.fin_recFIN_CDRO.Value := psq_pedROM_CDRO.AsInteger;
  frmctr_ped_bai.fin_recFIN_CDNF.Value := psq_pedROM_CDNF.AsInteger;
  frmctr_ped_bai.fin_recFIN_STDO.Value := stdo;
  frmctr_ped_bai.fin_recFIN_DROM.Value := edDROM.Date;
  frmctr_ped_bai.fin_recFIN_CCLI.Value := psq_pedROM_CCLI.AsInteger;
  frmctr_ped_bai.fin_recFIN_CVEN.Value := psq_pedROM_CVEN.AsInteger;
  frmctr_ped_bai.fin_recFIN_CREP.Value := psq_pedROM_CREP.AsInteger;
  frmctr_ped_bai.fin_recFIN_DCLI.Value := psq_pedCLI_FANT.AsString;
  frmctr_ped_bai.fin_recFIN_STCO.Value := psq_pedROM_STCO.AsString;
  frmctr_ped_bai.fin_recFIN_STPD.Value := psq_pedROM_STPD.AsString;
  frmctr_ped_bai.fin_recFIN_CONC.Value := conc;
  frmctr_ped_bai.fin_recFIN_VEND.Value := psq_pedUSU_DUSU.AsString;
  frmctr_ped_bai.fin_recFIN_DREP.Value := psq_pedREP_FANT.AsString;
  frmctr_ped_bai.fin_recFIN_DPRA.Value := psq_pedPAG_DPAG.AsString;
  if psq_pedROM_CDNF.AsInteger > 0 then
  frmctr_ped_bai.fin_recFIN_DOCT.Value := psq_pedROM_CDNF.AsString else
  frmctr_ped_bai.fin_recFIN_DOCT.Value := psq_pedROM_DERO.AsString;
  frmctr_ped_bai.fin_recFIN_VALO.Value := roundto(valo,-2);
  frmctr_ped_bai.fin_recFIN_COBR.Value := 'C';
  frmctr_ped_bai.fin_recFIN_CTNR.Value := psq_pedROM_CTNR.AsString;
  frmctr_ped_bai.fin_rec.Post;
end;

procedure Tfrmctr_ped_bai.INCLUI_BANCARIO;
begin
  frmctr_ped_bai.siPSQ.Enabled  := false;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT NFE_TITU,NFE_DNFE,NFE_DVEN,NFE_VDUP FROM '+SLPrincipal.Values['nfe_dup']);
    SQL.Add('WHERE  NFE_CDNF = '''+psq_pedROM_CDNF.AsString+'''');
    Open;
  end;

  if consulta.Fields[0].IsNull then
  begin
    messageBox(handle,'Tipo de cobrança "BANCÁRIO" sem duplicatas emitidas !'+#13+'Você precisa alterar o tipo de cobrança para prosseguir.',PChar(caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  while not consulta.Eof do
  begin
    frmctr_ped_bai.pclan.ActivePageIndex := 0;
    frmctr_ped_bai.fin_rec_bai.Append;
    frmctr_ped_bai.fin_rec_baiID.Value       := 0;
    frmctr_ped_bai.fin_rec_baiFIN_DOCT.Value := consulta.Fields[0].AsString;
    frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := consulta.Fields[2].AsDateTime;
    frmctr_ped_bai.fin_rec_baiFIN_TIPO.Value := 'DUPLICATA';
    frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := consulta.Fields[3].AsFloat;
    frmctr_ped_bai.fin_rec_bai.Post;

    if frmctr_ped_bai.tscar.TabVisible then
    begin
      frmctr_ped_bai.pclan.ActivePageIndex := 1;
      frmctr_ped_bai.fin_rec_bai.Append;
      frmctr_ped_bai.fin_rec_baiID.Value       := 0;
      frmctr_ped_bai.fin_rec_baiFIN_DOCT.Value := consulta.Fields[0].AsString;
      frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := consulta.Fields[2].AsDateTime;
      frmctr_ped_bai.fin_rec_baiFIN_TIPO.Value := 'CARTEIRA';
      frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := consulta.Fields[3].AsFloat;
      frmctr_ped_bai.fin_rec_baiFIN_COBR.Value := '1';
      frmctr_ped_bai.fin_rec_bai.Post;
    end;
    consulta.Next;
  end;
  frmctr_ped_bai.fin_rec_bai.First;
  frmctr_ped_bai.pclan.ActivePageIndex := 0;

  if not frmctr_ped_bai.fin_rec_bai.Fields[0].IsNull then
  begin
    frmctr_ped_bai.sblan.Enabled                 := false;
    frmctr_ped_bai.edDROM.Enabled                := false;
    frmctr_ped_bai.dbgprz1FIN_TIPO.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_PRAZ.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_DVEN.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_VALO.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_BANC.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_AGEN.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_CONT.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_NCHQ.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_OBSE.DisableEditor := true;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT NFE_VNF FROM '+SLPrincipal.Values['nfe_cab']);
    SQL.Add('WHERE  NFE_CDNF = '''+psq_pedROM_CDNF.AsString+'''');
    Open;
  end;

  frmctr_ped_bai.fin_rec.Append;
  frmctr_ped_bai.fin_recID.Value       := 0;
  frmctr_ped_bai.fin_recFIN_CDPD.Value := psq_pedID.AsInteger;
  frmctr_ped_bai.fin_recFIN_CDRO.Value := psq_pedROM_CDRO.AsInteger;
  frmctr_ped_bai.fin_recFIN_CDNF.Value := psq_pedROM_CDNF.AsInteger;
  frmctr_ped_bai.fin_recFIN_STDO.Value := 'B '+psq_pedROM_CONC.AsString;
  frmctr_ped_bai.fin_recFIN_DROM.Value := edDROM.Date;
  frmctr_ped_bai.fin_recFIN_CCLI.Value := psq_pedROM_CCLI.AsInteger;
  frmctr_ped_bai.fin_recFIN_CVEN.Value := psq_pedROM_CVEN.AsInteger;
  frmctr_ped_bai.fin_recFIN_CREP.Value := psq_pedROM_CREP.AsInteger;
  frmctr_ped_bai.fin_recFIN_DCLI.Value := psq_pedCLI_FANT.AsString;
  frmctr_ped_bai.fin_recFIN_STCO.Value := psq_pedROM_STCO.AsString;
  frmctr_ped_bai.fin_recFIN_STPD.Value := psq_pedROM_STPD.AsString;
  frmctr_ped_bai.fin_recFIN_CONC.Value := psq_pedROM_CONC.AsInteger;
  frmctr_ped_bai.fin_recFIN_VEND.Value := psq_pedUSU_DUSU.AsString;
  frmctr_ped_bai.fin_recFIN_DREP.Value := psq_pedREP_FANT.AsString;
  frmctr_ped_bai.fin_recFIN_DPRA.Value := psq_pedPAG_DPAG.AsString;
  frmctr_ped_bai.fin_recFIN_VALO.Value := consulta.Fields[0].AsFloat;
  frmctr_ped_bai.fin_recFIN_COBR.Value := 'B';
  frmctr_ped_bai.fin_recFIN_CTNR.Value := psq_pedROM_CTNR.AsString;
  frmctr_ped_bai.fin_rec.Post;
end;

procedure Tfrmctr_ped_bai.LANCA_CAIXA(cobr: string;conc: word);
var
  doct: string;
  valo: double;
  ctsr: integer;
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAI_TSR');
    SQL.Add('WHERE  CAI_DESC = ''CAIXA INICIAL''');
    Open;

    ctsr := fields[0].AsInteger;
  end;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FIN_TIPO FROM FIN_REC_BAI');
    SQL.Add('WHERE    FIN_COBR = '''+inttostr(pclan.ActivePageIndex)+'''');
    SQL.Add('GROUP BY FIN_TIPO');
    Open;
  end;

  while not consulta_S.Eof do
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM TAB_COB');
      SQL.Add('WHERE  VEN_TIPO = '''+consulta_S.Fields[0].AsString+'''');
      Open;

      if fields[0].IsNull then
      doct := '1'
      else
      doct := fields[0].AsString;
      doct := inttostr(conc)+oStrZero(strtoint(doct),19);

      SQL.Clear;
      SQL.Add('DELETE FROM CAI_MOV');
      SQL.Add('WHERE  CAI_CCAB = '''+edcdcx.Text+'''');
      SQL.Add('AND    CAI_DESC = '''+consulta_S.Fields[0].AsString+'''');
      SQL.Add('AND    CAI_DOCT = '''+doct+'''');
      SQL.Add('AND    CAI_CONC = '''+inttostr(conc)+'''');
      ExecSQL;

      SQL.Clear;
      if cobr = 'B' then
      SQL.Add('SELECT SUM(FIN_VALO) FROM '+SLPrincipal.Values['fin_rec_ban_bai'])
      else
      SQL.Add('SELECT SUM(FIN_VALO) FROM '+SLPrincipal.Values['fin_rec_car_bai']);
      SQL.Add('WHERE  FIN_CDCX = '''+edcdcx.Text+'''');
      SQL.Add('AND    FIN_TIPO = '''+consulta_S.Fields[0].AsString+'''');
      SQL.Add('AND    FIN_CONC = '''+inttostr(conc)+'''');
      Open;
      valo := Fields[0].AsFloat;
    end;

    ibSP.StoredProcName := 'SP_CAI_MOV';
    ibSP.Prepare;
    ibSP.ParamByName('ID').Value   := 0;
    ibSP.ParamByName('CCAB').Value := edcdcx.Text;
    ibSP.ParamByName('CDBX').Value := 0;
    ibSP.ParamByName('CTSR').Value := ctsr;
    ibSP.ParamByName('CONC').Value := conc;
    ibSP.ParamByName('DESC').Value := consulta_S.Fields[0].AsString;
    ibSP.ParamByName('DOCT').Value := doct;
    ibSP.ParamByName('DCAD').Value := edDROM.Date;
    ibSP.ParamByName('HCAD').Value := time;
    ibSP.ParamByName('SANT').Value := 0;
    ibSP.ParamByName('CRED').Value := valo;
    ibSP.ParamByName('DEBI').Value := 0;
    ibSP.ParamByName('SATU').Value := 0;
    ibSP.ParamByName('BCON').Value := 0;
    ibSP.ParamByName('DCON').Value := '';
    ibSP.ExecProc;
    consulta_S.Next;
  end;
  IBTra.CommitRetaining;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(CAI_CRED),SUM(CAI_DEBI),SUM(CAI_CRED-CAI_DEBI) FROM CAI_MOV');
    SQL.Add('WHERE  CAI_CCAB = '''+edcdcx.Text+'''');
    Open;
  end;


  with frmprincipal.sp_sql do
  begin
    ibSP.StoredProcName := 'SP_SQL';
    SQL.Clear;
    SQL.Add('UPDATE CAI_LAF');
    SQL.Add('SET    CAI_CRED = '''+oStrTran(consulta.Fields[0].AsString,',','.')+''',');
    SQL.Add('       CAI_DEBI = '''+oStrTran(consulta.Fields[1].AsString,',','.')+''',');
    SQL.Add('       CAI_SATU = '''+oStrTran(consulta.Fields[2].AsString,',','.')+'''');
    SQL.Add('WHERE  ID       = '''+edcdcx.Text+'''');

    ibSP.Prepare;
    ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
    ibSP.ExecProc;
  end;
end;

procedure Tfrmctr_ped_bai.BAIXA_CARTEIRA(cdbx,cdlt: integer);
var
  doct,stfi: string;
  cdpd,cdro: Array of Integer;
  i: word;
  conc,ccab: integer;
begin
  conc := fin_recFIN_CONC.AsInteger;
  if (fin_rec.RecordCount > 1) or (conc = 0) then
  conc := 1;

  SetLength(cdpd,10);
  SetLength(cdro,10);  

  with consulta_s do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FIN_CDPD FROM FIN_REC');
    SQL.Add('GROUP BY FIN_CDPD');
    SQL.Add('ORDER BY FIN_CDPD');
    Open;

    i := 0;
    while not eof do
    begin
      cdpd[i] := fields[0].AsInteger;
      inc(i);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FIN_CDRO FROM FIN_REC');
    SQL.Add('GROUP BY FIN_CDRO');
    SQL.Add('ORDER BY FIN_CDRO');
    Open;

    i := 0;
    while not eof do
    begin
      cdro[i] := fields[0].AsInteger;
      inc(i);
      next;
    end;
  end;

  if fin_recFIN_STCO.AsString = 'SEM COBRANÇA' then
  stfi := 'SEM COBRANÇA';

  doct := '';
  for i := 0 to 9 do
  begin
    if cdpd[i] = 0 then
    break;

    doct := doct + inttostr(cdpd[i]);

    if cdpd[i+1] > 0 then
    doct := doct + '/' else break;
  end;

  ccab := 0;
  i    := 0;

  with aux_s do
  begin
    SQL.Clear;
    SQL.Add('SELECT COUNT(*) FROM FIN_REC_BAI');
    Open;
  end;

  if stfi <> 'SEM COBRANÇA' then
  begin
    try
      fin_rec_bai.DisableControls;
      fin_rec_bai.First;
      while not fin_rec_bai.Eof do
      begin
        inc(i);
        try
          ibSP.StoredProcName := 'SP_FIN_REC_BAI';
          ibSP.Prepare;

          ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_BAI';
          if frmprincipal.parametrosID.AsInteger > 1 then
          ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_BAI_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

          ibSP.ParamByName('id').Value   := 0;
          ibSP.ParamByName('CCAB').Value := ccab;
          ibSP.ParamByName('DFIN').Value := fin_recFIN_STCO.AsString;
          ibSP.ParamByName('CDBX').Value := cdbx;
          ibSP.ParamByName('CDCX').Value := edcdcx.Text;
          ibSP.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
          ibSP.ParamByName('CONC').Value := conc;
          ibSP.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
          ibSP.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
          ibSP.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
          ibSP.ParamByName('DCAD').Value := edDROM.Date;
          ibSP.ParamByName('DBAI').Value := edDBAI.Date;
          ibSP.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
          if aux_S.Fields[0].AsInteger = 1 then
          ibSP.ParamByName('DOCT').Value := fin_recFIN_DOCT.AsString else
          ibSP.ParamByName('DOCT').Value := fin_recFIN_DOCT.AsString+'-'+aParc[i];
          ibSP.ParamByName('BANC').Value := '';
          ibSP.ParamByName('DBAN').Value := '';
          ibSP.ParamByName('AGEN').Value := '';
          ibSP.ParamByName('CONT').Value := '';
          ibSP.ParamByName('NCHQ').Value := '';
          ibSP.ParamByName('TIPO').Value := fin_rec_baiFIN_TIPO.AsString;
          ibSP.ParamByName('CPPL').Value := fin_recFIN_IPPL.AsInteger;
          ibSP.ParamByName('CCUS').Value := fin_recFIN_CCUS.AsInteger;
          ibSP.ParamByName('CDCO').Value := 0;
          ibSP.ParamByName('CDBA').Value := 0;
          ibSP.ParamByName('DEBA').Value := '';
          ibSP.ParamByName('BCON').Value := 0;
          ibSP.ParamByName('DCON').Value := '';
          ibSP.ParamByName('LOTE').Value := 0;
          ibSP.ParamByName('DLOT').Value := 0;
          ibSP.ParamByName('CDCH').Value := 0;

          if edDROM.Date = fin_rec_baiFIN_DVEN.AsDateTime then
          stfi := 'PAGO' else
          stfi := 'PENDENTE';

          if stfi = 'PAGO' then
          begin
            ibSP.ParamByName('STFI').Value := 'PAGO';
            ibSP.ParamByName('DPAG').Value := edDROM.Date;
            ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPAG').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPEN').Value := 0;
          end
          else
          begin
            ibSP.ParamByName('STFI').Value := 'PENDENTE';
            ibSP.ParamByName('DPAG').Value := 0;
            ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPAG').Value := 0;
            ibSP.ParamByName('VPEN').Value := fin_rec_baiFIN_VALO.AsFloat;
          end;

          ibSP.ParamByName('CTNR').Value := fin_recFIN_CTNR.AsString;
          ibSP.ParamByName('OBSE').Value := fin_rec_baiFIN_OBSE.AsString;
          ibSP.ParamByName('STA').Value  := '0';
          ibSP.ExecProc;

          if stfi = 'PAGO' then
          begin
            ibSP.StoredProcName := 'SP_FIN_REC_REC';
            ibSP.Prepare;

            ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_REC';
            if frmprincipal.parametrosID.AsInteger > 1 then
            ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_REC_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

            ibSP.ParamByName('id').Value   := 0;
            ibSP.ParamByName('CCAB').Value := ccab;
            ibSP.ParamByName('DFIN').Value := fin_recFIN_STCO.AsString;
            ibSP.ParamByName('CDBX').Value := cdbx;
            ibSP.ParamByName('CDCX').Value := edcdcx.Text;
            ibSP.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
            ibSP.ParamByName('CONC').Value := conc;
            ibSP.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
            ibSP.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
            ibSP.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
            ibSP.ParamByName('DCAD').Value := edDROM.Date;
            ibSP.ParamByName('DBAI').Value := edDBAI.Date;
            ibSP.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
            if aux_S.Fields[0].AsInteger = 1 then
            ibSP.ParamByName('DOCT').Value := fin_recFIN_DOCT.AsString else
            ibSP.ParamByName('DOCT').Value := fin_recFIN_DOCT.AsString+'-'+aParc[i];
            ibSP.ParamByName('BANC').Value := fin_rec_baiFIN_BANC.AsString;
            ibSP.ParamByName('DBAN').Value := fin_rec_baiFIN_DBAN.AsString;
            ibSP.ParamByName('AGEN').Value := fin_rec_baiFIN_AGEN.AsString;
            ibSP.ParamByName('CONT').Value := fin_rec_baiFIN_CONT.AsString;
            ibSP.ParamByName('NCHQ').Value := fin_rec_baiFIN_NCHQ.AsString;
            ibSP.ParamByName('TIPO').Value := fin_rec_baiFIN_TIPO.AsString;
            ibSP.ParamByName('STFI').Value := 'PAGO';
            ibSP.ParamByName('CPPL').Value := fin_recFIN_IPPL.AsInteger;
            ibSP.ParamByName('CCUS').Value := fin_recFIN_CCUS.AsInteger;
            ibSP.ParamByName('CDCO').Value := 0;
            ibSP.ParamByName('CDBA').Value := 0;
            ibSP.ParamByName('DEBA').Value := '';
            ibSP.ParamByName('DPAG').Value := edDROM.Date;
            ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPAG').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPEN').Value := 0;
            ibSP.ParamByName('OBSE').Value := fin_rec_baiFIN_OBSE.AsString;
            ibSP.ParamByName('STA').Value  := '0';
            ibSP.ParamByName('BCON').Value := 0;
            ibSP.ParamByName('DCON').Value := '';
            ibSP.ParamByName('LOTE').Value := 0;
            ibSP.ParamByName('DLOT').Value := 0;
            ibSP.ParamByName('CDCH').Value := 0;
            ibSP.ExecProc;
          end;

          if Pos('CH',fin_rec_baiFIN_TIPO.AsString) > 0 then
          begin
            ibSP.StoredProcName := 'SP_CAD_CHQ';
            ibSP.Prepare;

            ibSP.ParamByName('id').Value   := 0;
            ibSP.ParamByName('CDEP').Value := frmprincipal.parametrosID.AsInteger;
            ibSP.ParamByName('CDCX').Value := edcdcx.Text;
            ibSP.ParamByName('CDBX').Value := cdbx;
            ibSP.ParamByName('CDLT').Value := cdlt;
            ibSP.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
            ibSP.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
            ibSP.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
            ibSP.ParamByName('BANC').Value := fin_rec_baiFIN_BANC.AsString;
            ibSP.ParamByName('DBAN').Value := fin_rec_baiFIN_DBAN.AsString;
            ibSP.ParamByName('AGEN').Value := fin_rec_baiFIN_AGEN.AsString;
            ibSP.ParamByName('CONT').Value := fin_rec_baiFIN_CONT.AsString;
            ibSP.ParamByName('NCHQ').Value := fin_rec_baiFIN_NCHQ.AsString;
            ibSP.ParamByName('STFI').Value := 'PAGO';
            ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('DCAD').Value := eddrom.Date;
            ibSP.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
            ibSP.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
            ibSP.ParamByName('OBSE').Value := TRIM(fin_rec_baiFIN_OBSE.AsString);
            ibSP.ParamByName('CPF').Value  := null;

            if aux_S.Fields[0].AsInteger = 1 then
            ibSP.ParamByName('DOCT').Value := fin_recFIN_DOCT.AsString else
            ibSP.ParamByName('DOCT').Value := fin_recFIN_DOCT.AsString+'-'+aParc[i];

            ibSP.ParamByName('CADA').Value := frmprincipal.cad_usuUSU_DUSU.AsString;
            ibSP.ExecProc;
          end;

          IBTra.CommitRetaining;
        except
          IBTra.RollbackRetaining;
          messageBox(handle,'Problemas na gravação da carteira !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
          Abort;
        end;
        fin_rec_bai.Next;
      end;
    finally
      fin_rec_bai.EnableControls;
    end;
  end;
  LANCA_CAIXA('C',conc);

  if stfi <> 'SEM COBRANÇA' then
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM FIN_REC_BAI');
    SQL.Add('WHERE  FIN_STFI <> ''PAGO''');
    SQL.Add('AND    FIN_COBR = ''0''');
    Open;

    if not fields[0].IsNull then
    stfi := 'FATURADO';
  end;

  fin_rec.First;
  for i := 0 to 9 do
  begin
    if cdpd[i] = 0 then
       break;

    with frmprincipal.sp_sql do
    begin
      ibSP.StoredProcName := 'SP_SQL';
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('SET    ROM_STFI = '''+stfi+''',');
      SQL.Add('       ROM_DBAI = '''+formatDateTime('mm/dd/yy',edDBAI.Date)+''',');
      SQL.Add('       ROM_CDBX = '''+inttostr(cdbx)+''',');
      SQL.Add('       ROM_CBAI = '''+frmprincipal.cad_usuUSU_CUSU.AsString+''',');
      SQL.Add('       ROM_CDCX = '''+edcdcx.Text+''',');
      SQL.Add('       ROM_TBAI = '''+formatDateTime('mm/dd/yy hh:mm:ss',now)+'''');

      if (i = 0) and (fin_recFIN_CDRO.AsInteger > 0) then
      SQL.Add('WHERE  ROM_CDRO = '''+fin_recFIN_CDRO.AsString+'''') else
      SQL.Add('WHERE  ID       = '''+inttostr(cdpd[i])+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['rom_cab']);
      SQL.Add('SET    ROM_CDBX = '''+inttostr(cdbx)+''',');
      SQL.Add('       ROM_CDCX = '''+edcdcx.Text+''',');
      SQL.Add('       ROM_STFI = ''FATURADO''');

      if (i = 0) and (fin_recFIN_CDRO.AsInteger > 0) then
      SQL.Add('WHERE  ROM_CDRO = '''+fin_recFIN_CDRO.AsString+'''') else
      SQL.Add('WHERE  ID       = '''+inttostr(cdpd[i])+'''');


      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      IBTra.CommitRetaining;
    end;
  end;

  close;
end;

procedure Tfrmctr_ped_bai.BAIXA_BANCARIO(cdbx,cdlt: integer);
var
  stfi: string;
  ccab: integer;
begin
  ccab := 0;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FIN_STPD,FIN_CDPD,FIN_PORT,FIN_CCLI,FIN_DCLI FROM FIN_REC');
    SQL.Add('GROUP BY FIN_STPD,FIN_CDPD,FIN_PORT,FIN_CCLI,FIN_DCLI');
    Open;

    while not eof do
    begin
      frmprincipal.Log_Eve('Vendas',LOWERCASE(fields[0].AsString),'Baixa',fields[1].AsString,fields[1].AsString,fields[3].AsString+' - '+LOWERCASE(fields[4].AsString),'','');
      next;
    end;  
  end;

  if fin_recFIN_STCO.AsString = 'SEM COBRANÇA' then
  stfi := 'SEM COBRANÇA';

  if stfi <> 'SEM COBRANÇA' then
  begin
    try
      tslan.Show;

      fin_rec_bai.DisableControls;
      fin_rec_bai.First;
      while not fin_rec_bai.Eof do
      begin
        try
          ibSP.StoredProcName := 'SP_FIN_REC_BAI';
          ibSP.Prepare;

          ibSP.ParamByName('fin').Value  := 'FIN_REC_BAN_BAI';
          if frmprincipal.parametrosID.AsInteger > 1 then
          ibSP.ParamByName('fin').Value  := 'FIN_REC_BAN_BAI_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

          ibSP.ParamByName('id').Value   := 0;
          ibSP.ParamByName('CCAB').Value := ccab;
          ibSP.ParamByName('DFIN').Value := fin_recFIN_STCO.AsString;
          ibSP.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
          ibSP.ParamByName('CDBX').Value := cdbx;
          ibSP.ParamByName('CDCX').Value := strtoint(edcdcx.Text);
          ibSP.ParamByName('CONC').Value := 1;
          ibSP.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
          ibSP.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
          ibSP.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
          ibSP.ParamByName('DCAD').Value := edDROM.Date;
          ibSP.ParamByName('DBAI').Value := edDBAI.Date;
          ibSP.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
          ibSP.ParamByName('DOCT').Value := fin_rec_baiFIN_DOCT.AsString;
          ibSP.ParamByName('BANC').Value := fin_rec_baiFIN_BANC.AsString;
          ibSP.ParamByName('DBAN').Value := fin_rec_baiFIN_DBAN.AsString;
          ibSP.ParamByName('AGEN').Value := fin_rec_baiFIN_AGEN.AsString;
          ibSP.ParamByName('CONT').Value := fin_rec_baiFIN_CONT.AsString;
          ibSP.ParamByName('NCHQ').Value := fin_rec_baiFIN_NCHQ.AsString;
          ibSP.ParamByName('TIPO').Value := fin_rec_baiFIN_TIPO.AsString;

          if edDROM.Date = fin_rec_baiFIN_DVEN.AsDateTime then
          stfi := 'PAGO' else
          stfi := 'PENDENTE';

          if stfi = 'PAGO' then
          begin
            ibSP.ParamByName('STFI').Value := 'PAGO';
            ibSP.ParamByName('DPAG').Value := edDROM.Date;
            ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPAG').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPEN').Value := 0;
          end
          else
          begin
            ibSP.ParamByName('STFI').Value := 'PENDENTE';
            ibSP.ParamByName('DPAG').Value := 0;
            ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPAG').Value := 0;
            ibSP.ParamByName('VPEN').Value := fin_rec_baiFIN_VALO.AsFloat;
          end;

          ibSP.ParamByName('CTNR').Value := fin_recFIN_CTNR.AsString;
          ibSP.ParamByName('OBSE').Value := fin_rec_baiFIN_OBSE.AsString;
          ibSP.ParamByName('STA').Value  := '0';
          ibSP.ExecProc;

          if stfi = 'PAGO' then
          begin
            ibSP.StoredProcName := 'SP_FIN_REC_REC';
            ibSP.Prepare;

            ibSP.ParamByName('fin').Value  := 'FIN_REC_BAN_REC';
            if frmprincipal.parametrosID.AsInteger > 1 then
            ibSP.ParamByName('fin').Value  := 'FIN_REC_BAN_REC_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

            ibSP.ParamByName('id').Value   := 0;
            ibSP.ParamByName('CCAB').Value := ccab;
            ibSP.ParamByName('DFIN').Value := fin_recFIN_STCO.AsString;
            ibSP.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
            ibSP.ParamByName('CDBX').Value := cdbx;
            ibSP.ParamByName('CDCX').Value := strtoint(edcdcx.Text);
            ibSP.ParamByName('CONC').Value := 1;
            ibSP.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
            ibSP.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
            ibSP.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
            ibSP.ParamByName('DCAD').Value := edDROM.Date;
            ibSP.ParamByName('DBAI').Value := edDBAI.Date;
            ibSP.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
            ibSP.ParamByName('DOCT').Value := fin_rec_baiFIN_DOCT.AsString;
            ibSP.ParamByName('BANC').Value := fin_rec_baiFIN_BANC.AsString;
            ibSP.ParamByName('DBAN').Value := fin_rec_baiFIN_DBAN.AsString;
            ibSP.ParamByName('AGEN').Value := fin_rec_baiFIN_AGEN.AsString;
            ibSP.ParamByName('CONT').Value := fin_rec_baiFIN_CONT.AsString;
            ibSP.ParamByName('NCHQ').Value := fin_rec_baiFIN_NCHQ.AsString;
            ibSP.ParamByName('TIPO').Value := fin_rec_baiFIN_TIPO.AsString;
            ibSP.ParamByName('STFI').Value := 'PAGO';
            ibSP.ParamByName('DPAG').Value := edDROM.Date;
            ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPAG').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPEN').Value := 0;
            ibSP.ParamByName('OBSE').Value := fin_rec_baiFIN_OBSE.AsString;
            ibSP.ParamByName('STA').Value  := '0';
            ibSP.ExecProc;
          end;

          IBTra.CommitRetaining;
        except
          IBTra.RollbackRetaining;
          messageBox(handle,'Problemas na gravação da bancário !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
          Abort;
        end;

        fin_rec_bai.Next;
      end;
    finally
      fin_rec_bai.First;
      fin_rec_bai.EnableControls;
    end;
  end;
  LANCA_CAIXA('B',1);

  if (fin_recFIN_CONC.AsInteger > 1) and (stfi <> 'SEM COBRANÇA') then
  begin
    try
      tscar.Show;

      fin_rec_bai.DisableControls;
      fin_rec_bai.First;
      while not fin_rec_bai.Eof do
      begin
        try
          ibSP.StoredProcName := 'SP_FIN_REC_BAI';
          ibSP.Prepare;

          ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_BAI';
          if frmprincipal.parametrosID.AsInteger > 1 then
          ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_BAI_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

          ibSP.ParamByName('id').Value   := 0;
          ibSP.ParamByName('CCAB').Value := ccab;
          ibSP.ParamByName('CDBX').Value := cdbx;
          ibSP.ParamByName('DFIN').Value := fin_recFIN_STCO.AsString;
          ibSP.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
          ibSP.ParamByName('CDCX').Value := edcdcx.Text;
          ibSP.ParamByName('CONC').Value := fin_recFIN_CONC.AsInteger-1;
          ibSP.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
          ibSP.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
          ibSP.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
          ibSP.ParamByName('DCAD').Value := edDROM.Date;
          ibSP.ParamByName('DBAI').Value := edDBAI.Date;
          ibSP.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
          ibSP.ParamByName('DOCT').Value := fin_rec_baiFIN_DOCT.AsString;
          ibSP.ParamByName('BANC').Value := fin_rec_baiFIN_BANC.AsString;
          ibSP.ParamByName('DBAN').Value := fin_rec_baiFIN_DBAN.AsString;
          ibSP.ParamByName('AGEN').Value := fin_rec_baiFIN_AGEN.AsString;
          ibSP.ParamByName('CONT').Value := fin_rec_baiFIN_CONT.AsString;
          ibSP.ParamByName('NCHQ').Value := fin_rec_baiFIN_NCHQ.AsString;
          ibSP.ParamByName('TIPO').Value := fin_rec_baiFIN_TIPO.AsString;

          if edDROM.Date = fin_rec_baiFIN_DVEN.AsDateTime then
          stfi := 'PAGO' else
          stfi := 'PENDENTE';

          if stfi = 'PAGO' then
          begin
            ibSP.ParamByName('STFI').Value := 'PAGO';
            ibSP.ParamByName('DPAG').Value := edDROM.Date;
            ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPAG').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPEN').Value := 0;
          end
          else
          begin
            ibSP.ParamByName('STFI').Value := 'PENDENTE';
            ibSP.ParamByName('DPAG').Value := 0;
            ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPAG').Value := 0;
            ibSP.ParamByName('VPEN').Value := fin_rec_baiFIN_VALO.AsFloat;
          end;

          ibSP.ParamByName('CTNR').Value := fin_recFIN_CTNR.AsString;
          ibSP.ParamByName('OBSE').Value := fin_rec_baiFIN_OBSE.AsString;
          ibSP.ParamByName('STA').Value  := '0';
          ibSP.ExecProc;

          if stfi = 'PAGO' then
          begin
            ibSP.StoredProcName := 'SP_FIN_REC_REC';
            ibSP.Prepare;

            ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_REC';
            if frmprincipal.parametrosID.AsInteger > 1 then
            ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_REC_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

            ibSP.ParamByName('id').Value   := 0;
            ibSP.ParamByName('CCAB').Value := ccab;
            ibSP.ParamByName('CDBX').Value := cdbx;
            ibSP.ParamByName('DFIN').Value := fin_recFIN_STCO.AsString;
            ibSP.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
            ibSP.ParamByName('CDCX').Value := edcdcx.Text;
            ibSP.ParamByName('CONC').Value := fin_recFIN_CONC.AsInteger-1;
            ibSP.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
            ibSP.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
            ibSP.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
            ibSP.ParamByName('DCAD').Value := edDROM.Date;
            ibSP.ParamByName('DBAI').Value := edDBAI.Date;
            ibSP.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
            ibSP.ParamByName('DOCT').Value := fin_rec_baiFIN_DOCT.AsString;
            ibSP.ParamByName('BANC').Value := fin_rec_baiFIN_BANC.AsString;
            ibSP.ParamByName('DBAN').Value := fin_rec_baiFIN_DBAN.AsString;
            ibSP.ParamByName('AGEN').Value := fin_rec_baiFIN_AGEN.AsString;
            ibSP.ParamByName('CONT').Value := fin_rec_baiFIN_CONT.AsString;
            ibSP.ParamByName('NCHQ').Value := fin_rec_baiFIN_NCHQ.AsString;
            ibSP.ParamByName('TIPO').Value := fin_rec_baiFIN_TIPO.AsString;
            ibSP.ParamByName('STFI').Value := 'PAGO';
            ibSP.ParamByName('DPAG').Value := edDROM.Date;
            ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPAG').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPEN').Value := 0;
            ibSP.ParamByName('OBSE').Value := fin_rec_baiFIN_OBSE.AsString;
            ibSP.ParamByName('STA').Value  := '0';
            ibSP.ExecProc;
          end;

          if Pos('CH',fin_rec_baiFIN_TIPO.AsString) > 0 then
          begin
            ibSP.StoredProcName := 'SP_CAD_CHQ';
            ibSP.Prepare;

            ibSP.ParamByName('id').Value   := 0;
            ibSP.ParamByName('CDEP').Value := frmprincipal.parametrosID.AsInteger;
            ibSP.ParamByName('CDCX').Value := edcdcx.Text;
            ibSP.ParamByName('CDBX').Value := cdbx;
            ibSP.ParamByName('CDLT').Value := cdlt;
            ibSP.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
            ibSP.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
            ibSP.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
            ibSP.ParamByName('BANC').Value := fin_rec_baiFIN_BANC.AsString;
            ibSP.ParamByName('DBAN').Value := fin_rec_baiFIN_DBAN.AsString;
            ibSP.ParamByName('AGEN').Value := fin_rec_baiFIN_AGEN.AsString;
            ibSP.ParamByName('CONT').Value := fin_rec_baiFIN_CONT.AsString;
            ibSP.ParamByName('NCHQ').Value := fin_rec_baiFIN_NCHQ.AsString;
            ibSP.ParamByName('STFI').Value := 'PAGO';
            ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('DCAD').Value := eddrom.Date;
            ibSP.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
            ibSP.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
            ibSP.ParamByName('OBSE').Value := TRIM(fin_rec_baiFIN_OBSE.AsString);
            ibSP.ParamByName('CPF').Value  := null;
            ibSP.ParamByName('DOCT').Value := fin_recFIN_DOCT.AsString;
            ibSP.ParamByName('CADA').Value := frmprincipal.cad_usuUSU_DUSU.AsString;
            ibSP.ExecProc;
          end;

          IBTra.CommitRetaining;
        except
          IBTra.RollbackRetaining;
          messageBox(handle,'Problemas na gravação da carteira !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
          Abort;
        end;

        fin_rec_bai.Next;
      end;
    finally
      fin_rec_bai.First;
      fin_rec_bai.EnableControls;
    end;
    LANCA_CAIXA('C',fin_recFIN_CONC.AsInteger-1);
  end;

  if stfi <> 'SEM COBRANÇA' then
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM FIN_REC_BAI');
    SQL.Add('WHERE  FIN_STFI <> ''PAGO''');
    SQL.Add('AND    FIN_COBR = ''0''');
    Open;

    if not fields[0].IsNull then
    stfi := 'FATURADO';
  end;

  with frmprincipal.sp_sql do
  begin
    ibSP.StoredProcName := 'SP_SQL';

    SQL.Clear;
    SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('SET    ROM_STFI = '''+stfi+''',');
    SQL.Add('       ROM_DBAI = '''+formatDateTime('mm/dd/yy',edDBAI.Date)+''',');
    SQL.Add('       ROM_CDBX = '''+inttostr(cdbx)+''',');
    SQL.Add('       ROM_CBAI = '''+frmprincipal.cad_usuUSU_CUSU.AsString+''',');
    SQL.Add('       ROM_CDCX = '''+edcdcx.Text+''',');
    SQL.Add('       ROM_TBAI = '''+formatDateTime('mm/dd/yy hh:mm:ss',now)+'''');
    SQL.Add('WHERE  ROM_CDRO = '''+fin_recFIN_CDRO.AsString+'''');

    ibSP.Prepare;
    ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
    ibSP.ExecProc;

    SQL.Clear;
    SQL.Add('UPDATE '+SLPrincipal.Values['rom_cab']);
    SQL.Add('SET    ROM_CDBX = '''+inttostr(cdbx)+''',');
    SQL.Add('       ROM_CDCX = '''+edcdcx.Text+''',');
    SQL.Add('       ROM_STFI = ''FATURADO''');
    SQL.Add('WHERE  ID = '''+fin_recFIN_CDRO.AsString+'''');

    ibSP.Prepare;
    ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
    ibSP.ExecProc;

    IBTra.CommitRetaining;
  end;
  close;
end;

procedure Tfrmctr_ped_bai.siSAVClick(Sender: TObject);
var
  cdbx,cdlt: integer;
begin
  fin_rec.First;
  if fin_recID.IsNull then
  abort;

  if fin_rec_bai.State in [dsEdit,dsInsert] then
  begin
    if fin_rec_baiFIN_VALO.AsFloat > 0 then
    fin_rec_bai.Post else
    fin_rec_bai.Cancel;
  end;

  ActiveControl := Nil;
  fin_rec.First;
  while not fin_rec.Eof do
  begin
    if fin_recFIN_IPPL.AsInteger = 0 then
    begin
      messageBox(handle,'Plano de conta não encontrado !',PChar(caption),MB_ICONERROR+MB_OK);
      abort;
    end;

    fin_rec.Next;
  end;

  fin_rec_bai.First;
  while not fin_rec_bai.Eof do
  begin
    if (Pos('CH',fin_rec_baiFIN_TIPO.AsString) > 0) and (Length(fin_rec_baiFIN_NCHQ.AsString) < 3) then
    begin
      messageBox(handle,'Número do cheque em branco ou digitado incorretamente !',PChar(caption),MB_ICONERROR+MB_OK);
      abort;
    end;

    fin_rec_bai.Next;
  end;
  fin_rec_bai.First;

  if fin_rec_baiID.IsNull then
  begin
    messageBox(handle,'Pedido (s) sem lançamento de baixas !',PChar(caption),MB_ICONERROR+MB_OK);
    abort;
  end;

  if oYesNo(handle,'Confirma baixa dos Lançamentos ?') = mrno then
     abort;

  if oTextToValor(edtotd.Text) <> 0 then
  begin
    if oYesNo(handle,'Total de Pedidos Diferente do Total Recebido !'+#13+'Confirma os Valores Digitados ?') = mrno then
       abort;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_BAI_REC,1) FROM RDB$DATABASE');
    Open;
    IBtra.CommitRetaining;
    cdbx := fields[0].AsInteger;
    cdlt := 0;
  end;

  try
    if copy(fin_recFIN_STDO.AsString,1,1) = 'C' then
    begin
      BAIXA_CARTEIRA(cdbx,cdlt);

      fin_rec.First;
      while not fin_rec.Eof do
      begin
        if (fin_recFIN_CDNF.AsInteger = 0) then
        BAIXA_ESTOQUE(cdbx,cdlt);
        fin_rec.Next;
      end;
    end
    else
    BAIXA_BANCARIO(cdbx,cdlt);
  finally
    pTRA.StartTransaction;

    pSP.StoredProcName := 'SP_EVENT';
    pSP.Prepare;
    pSP.Params[0].AsString := 'CTR_PED';
    pSP.ExecProc;

    pTRA.Commit;
  end;
end;

procedure Tfrmctr_ped_bai.ABRE_TABELA;
begin
  oOTransact(TSheild);
  with fin_rec do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM FIN_REC');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_REC');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;

  with fin_rec_bai do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM FIN_REC_BAI');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_REC_BAI');
    SelectSQL.Add('WHERE FIN_COBR = ''0''');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   VEN_TIPO FROM TAB_COB');
    SQL.Add('WHERE    VEN_STA  = ''1''');
    SQL.Add('ORDER BY ID');
    Open;

    while not eof do
    begin
      dbgprz1FIN_TIPO.Descriptions.Add(fields[0].AsString);
      dbgprz1FIN_TIPO.Values.Add(fields[0].AsString);
      dbgprz2FIN_TIPO.Descriptions.Add(fields[0].AsString);
      dbgprz2FIN_TIPO.Values.Add(fields[0].AsString);
      next;
    end;
  end;
end;

procedure Tfrmctr_ped_bai.siSAIRClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmctr_ped_bai.fin_recAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  wRec := fin_rec.GetBookmark;
  tSHEILD.CommitRetaining;

  fin_rec.Close;
  fin_rec.Open;
  if (wRec = Nil) or (fin_rec.Fields[0].IsNull) then fin_rec.last
     else fin_rec.GotoBookmark(wRec);
  fin_rec.FreeBookmark(wRec);
end;

procedure Tfrmctr_ped_bai.fin_recAfterOpen(DataSet: TDataSet);
begin
  TOTAL;
end;

procedure Tfrmctr_ped_bai.TOTAL;
begin
  edtotr.Text := '0,00';
  edtotd.Text := '0,00';
  edtotb.Text := '0,00';

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(FIN_VALO) FROM FIN_REC');
    Open;
    edtotr.Text := formatfloat('#,0.00########',fields[0].AsFloat);

    SQL.Clear;
    SQL.Add('SELECT SUM(FIN_VALO) FROM FIN_REC_BAI');
    SQL.Add('WHERE  FIN_COBR = ''0''');
    Open;
    edtotb.Text := formatfloat('#,0.00########',fields[0].AsFloat);
  end;

  if (fin_rec.RecNo = 1) and (fin_recFIN_STCO.AsString = 'DEVOLUÇÃO') then
  edtotd.Text   := formatfloat('#,0.00########',0)
  else
  edtotd.Text   := formatfloat('#,0.00########',oTextToValor(edtotr.Text)-oTextToValor(edtotb.Text));
end;

procedure Tfrmctr_ped_bai.fin_rec_baiNewRecord(DataSet: TDataSet);
begin
  fin_rec_baiID.Value       := 0;
  fin_rec_baiFIN_STA.Value  := '0';
  fin_rec_baiFIN_PRAZ.Value := 0;
  fin_rec_baiFIN_DVEN.Value := edDROM.Date;

  if tab_pagPAG_PARC.AsInteger = 1 then
  fin_rec_baiFIN_DVEN.Value := incDay(edDROM.Date,tab_pagPAG_D001.AsInteger);

  if fin_rec_bai.Tag = 0 then
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(FIN_VALO) FROM FIN_REC_BAI');
    SQL.Add('WHERE  FIN_COBR = '''+inttostr(pclan.ActivePageIndex)+'''');
    Open;
    fin_rec_baiFIN_VALO.Value := oTextToValor(edtotr.Text) - fields[0].AsFloat;

    SQL.Clear;
    SQL.Add('SELECT   FIN_TIPO,FIN_BANC,FIN_AGEN,FIN_CONT,FIN_STA FROM FIN_REC_BAI');
    SQL.Add('WHERE    FIN_COBR = '''+inttostr(pclan.ActivePageIndex)+'''');
    SQL.Add('ORDER BY ID DESC');
    Open;
    fin_rec_baiFIN_TIPO.Value := fields[0].AsString;

    if Pos('CH',fin_rec_baiFIN_TIPO.AsString) > 0 then
    begin
      fin_rec_baiFIN_BANC.Value := fields[1].AsString;
      fin_rec_baiFIN_AGEN.Value := fields[2].AsString;
      fin_rec_baiFIN_CONT.Value := fields[3].AsString;
      fin_rec_baiFIN_VALO.Value := 0;
    end;
  end;
end;

procedure Tfrmctr_ped_bai.b1IClick(Sender: TObject);
begin
  fin_rec_bai.Append;
end;

procedure Tfrmctr_ped_bai.b1AClick(Sender: TObject);
begin
  fin_rec_bai.Edit;
end;

procedure Tfrmctr_ped_bai.b1DClick(Sender: TObject);
begin
  fin_rec_bai.Delete;
end;

procedure Tfrmctr_ped_bai.b1SClick(Sender: TObject);
begin
  fin_rec_bai.Post;
end;

procedure Tfrmctr_ped_bai.b1CClick(Sender: TObject);
begin
  fin_rec_bai.Cancel;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  case pclan.ActivePageIndex of
     0 : begin
           b1I.Enabled := true;
           b1A.Enabled := true;
           b1D.Enabled := true;
           b1S.Enabled := false;
           b1C.Enabled := false;
         end;
     1 : begin
           c1I.Enabled := true;
           c1A.Enabled := true;
           c1D.Enabled := true;
           c1S.Enabled := false;
           c1C.Enabled := false;
         end;
  end;

  wRec := fin_rec_bai.GetBookmark;
  tSHEILD.CommitRetaining;

  fin_rec_bai.Close;
  fin_rec_bai.Open;
  if (wRec = Nil) or (fin_rec_bai.Fields[0].IsNull) then fin_rec_bai.last
     else fin_rec_bai.GotoBookmark(wRec);
  fin_rec_bai.FreeBookmark(wRec);

  TOTAL;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiAfterCancel(DataSet: TDataSet);
begin
  case pclan.ActivePageIndex of
     0 : begin
           b1I.Enabled := true;
           b1A.Enabled := true;
           b1D.Enabled := true;
           b1S.Enabled := false;
           b1C.Enabled := false;
         end;
     1 : begin
           c1I.Enabled := true;
           c1A.Enabled := true;
           c1D.Enabled := true;
           c1S.Enabled := false;
           c1C.Enabled := false;
         end;
  end;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiAfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
  TOTAL;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiAfterEdit(DataSet: TDataSet);
begin
  case pclan.ActivePageIndex of
     0 : begin
           b1I.Enabled := false;
           b1A.Enabled := false;
           b1D.Enabled := false;
           b1S.Enabled := true;
           b1C.Enabled := true;
         end;
     1 : begin
           c1I.Enabled := false;
           c1A.Enabled := false;
           c1D.Enabled := false;
           c1S.Enabled := true;
           c1C.Enabled := true;
         end;
  end;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiBeforeCancel(DataSet: TDataSet);
begin
  case pclan.ActivePageIndex of
     0 : begin
           b1I.Enabled := true;
           b1A.Enabled := true;
           b1D.Enabled := true;
           b1S.Enabled := false;
           b1C.Enabled := false;
         end;
     1 : begin
           c1I.Enabled := true;
           c1A.Enabled := true;
           c1D.Enabled := true;
           c1S.Enabled := false;
           c1C.Enabled := false;
         end;
  end;

  if fin_rec_bai.RecordCount = 0 then
  begin
    fin_rec_bai.Close;
    fin_rec_bai.Open;
    ABORT;
  end;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiBeforePost(DataSet: TDataSet);
begin
  fin_rec_baiFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(fin_rec_baiFIN_DVEN.AsDateTime);

  if fin_rec_baiFIN_TIPO.AsString = '' then
  DataBaseError('Tipo de Recebimento não Selecionado !');

  if fin_rec_baiFIN_VALO.AsFloat = 0 then
  DataBaseError('Valor de Recebimento não Informado !');

  if (fin_rec_baiFIN_TIPO.AsString = 'CHEQUE PRE-DATADO') and (fin_rec_baiFIN_DVEN.AsDateTime = edDROM.Date) then
  fin_rec_baiFIN_TIPO.AsString := 'CHEQUE A VISTA';

  if (fin_rec_baiFIN_TIPO.AsString = 'CHEQUE A VISTA') and (fin_rec_baiFIN_DVEN.AsDateTime <> edDROM.Date) then
  fin_rec_baiFIN_TIPO.AsString := 'CHEQUE PRE-DATADO';

  if fin_rec_baiFIN_DVEN.AsDateTime = edDROM.Date then
  fin_rec_baiFIN_STFI.Value := 'PAGO'
  else
  fin_rec_baiFIN_STFI.Value := 'PENDENTE';

  if tag = 0 then
  begin
    if (Pos('CH',fin_rec_baiFIN_TIPO.AsString) > 0) and (Length(fin_rec_baiFIN_NCHQ.AsString) < 3) then
    DataBaseError('Número do cheque em branco ou digitado incorretamente !');
  end;

  if fin_rec_baiFIN_NCHQ.AsString <> '' then
  begin
    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,FIN_DOCT FROM FIN_REC_BAI');
      SQL.Add('WHERE  FIN_NCHQ = '''+fin_rec_baiFIN_NCHQ.AsString+'''');
      Open;

      if (not consulta_S.fields[0].IsNull) and (consulta_S.fields[0].AsInteger <> fin_rec_baiID.AsInteger) then
      DataBaseError('Número do cheque já cadastrado !');
    end;

    if fin_rec_baiFIN_BANC.AsString <> '' then
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT CHQ_NCHQ,CLI_FANT FROM CAD_CHQ,CAD_CLI');
      SQL.Add('WHERE  CHQ_CCLI = CAD_CLI.ID');
      SQL.Add('AND    CHQ_NCHQ = '''+fin_rec_baiFIN_NCHQ.AsString+'''');
      SQL.Add('AND    CHQ_BANC = '''+fin_rec_baiFIN_BANC.AsString+'''');
      SQL.Add('AND    CHQ_STFI <> ''CANCELADO''');
      Open;

      if not consulta.Fields[0].IsNull then
      DataBaseError('Cheque No '+fields[0].AsString+' já cadastrado !'+#13+'Cliente '+fields[1].AsString);

      SQL.Clear;
      SQL.Add('SELECT BAN_DESC FROM '+SLPrincipal.Values['tab_ban']+' "TAB_BAN"');
      SQL.Add('WHERE  BAN_BANC = '''+fin_rec_baiFIN_BANC.AsString+'''');
      Open;

      if fields[0].IsNull then
      DataBaseError('Banco não identificado !');

      fin_rec_baiFIN_DBAN.Value := fields[0].AsString;
    end;
  end;

  fin_rec_baiFIN_COBR.Value := inttostr(pclan.ActivePageIndex);
end;

procedure Tfrmctr_ped_bai.dbgprz1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if ((dbgprz1.FocusedColumn = 1) and (Pos('CH',fin_rec_baiFIN_TIPO.AsString) = 0)) or
                     (dbgprz1.FocusedColumn = 7) then
                 begin
                   fin_rec_bai.Next;
                   if fin_rec_bai.Eof then
                   begin
                     if oTextToValor(edtotb.Text) < oTextToValor(edtotr.Text) then
                        fin_rec_bai.Append;
                     dbgprz1.FocusedColumn := 1;
                   end;
                 end
                 else
                   dbgprz1.FocusedColumn := dbgprz1.FocusedColumn + 1;
               end;
    VK_DELETE: if fin_rec_bai.State = dsBrowse then
                  b1D.Click;
    VK_ESCAPE: if fin_rec_bai.State = dsBrowse then close else fin_rec_bai.Cancel;
    VK_INSERT: if not b1S.Enabled then b1I.Click;
  end;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiFIN_PRAZValidate(Sender: TField);
begin
  if fin_rec_baiFIN_PRAZ.AsInteger > 0 then
  fin_rec_baiFIN_DVEN.Value := incDay(edDROM.Date,fin_rec_baiFIN_PRAZ.AsInteger);
end;

procedure Tfrmctr_ped_bai.fin_recBeforePost(DataSet: TDataSet);
begin
  with aux do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,FIN_CPPL,FIN_DFIN FROM FIN_PPL');
    SQL.Add('WHERE  FIN_DFIN = '''+fin_recFIN_STPD.AsString+'''');
    Open;
    frmctr_ped_bai.FIN_RECFIN_IPPL.Value := fields[0].AsInteger;
    frmctr_ped_bai.FIN_RECFIN_CPPL.Value := fields[1].AsString;
    frmctr_ped_bai.FIN_RECFIN_DPPL.Value := fields[2].AsString;

    SQL.Clear;
    SQL.Add('SELECT ID,FIN_DCUS FROM FIN_CUS');
    SQL.Add('WHERE  FIN_DCUS = ''VENDAS''');
    Open;
    frmctr_ped_bai.FIN_RECFIN_CCUS.Value := fields[0].AsInteger;
    frmctr_ped_bai.FIN_RECFIN_DCUS.Value := fields[1].AsString;
  end;
end;

procedure Tfrmctr_ped_bai.dtsfin_recDataChange(Sender: TObject;
  Field: TField);
begin
  edvend.Text := fin_recFIN_VEND.AsString;
  eddrep.Text := fin_recFIN_DREP.AsString;
  eddpag.Text := fin_recFIN_DPRA.AsString;
end;

procedure Tfrmctr_ped_bai.tslanShow(Sender: TObject);
begin
  if fin_rec_bai.State in [dsEdit,dsInsert] then
     fin_rec_bai.Post;

  with fin_rec_bai do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_REC_BAI');
    SelectSQL.Add('WHERE FIN_COBR = ''0''');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;
end;

procedure Tfrmctr_ped_bai.tscarShow(Sender: TObject);
begin
  with fin_rec_bai do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_REC_BAI');
    SelectSQL.Add('WHERE FIN_COBR = ''1''');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;
end;

procedure Tfrmctr_ped_bai.dbgprz2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if ((dbgprz2.FocusedColumn = 1) and (Pos('CH',fin_rec_baiFIN_TIPO.AsString) = 0)) or
                     (dbgprz2.FocusedColumn = 7) then
                 begin
                   fin_rec_bai.Next;
                   if fin_rec_bai.Eof then
                   begin
                     if oTextToValor(edtotb.Text) < oTextToValor(edtotr.Text) then
                        fin_rec_bai.Append;
                     dbgprz2.FocusedColumn := 1;
                   end;
                 end
                 else
                   dbgprz2.FocusedColumn := dbgprz2.FocusedColumn + 1;
               end;
    VK_DELETE: if fin_rec_bai.State = dsBrowse then
                  c1D.Click;
    VK_ESCAPE: if fin_rec_bai.State = dsBrowse then close else fin_rec_bai.Cancel;
    VK_INSERT: if not c1S.Enabled then c1I.Click;
  end;
end;

procedure Tfrmctr_ped_bai.edDROMExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAI_LAF');
      SQL.Add('WHERE  CAI_DABR = '''+formatDateTime('mm/dd/yy',edDBAI.Date)+'''');
      SQL.Add('AND    CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      Open;

      if fields[0].IsNull then
         raise exception.Create('Data de baixa informada não possui fluxo de caixa !');
      edcdcx.Text := fields[0].AsString;

      try
        if fin_rec_bai.State in [dsEdit,dsInsert] then
        begin
          if fin_rec_baiFIN_VALO.AsFloat > 0 then
          fin_rec_bai.Post
          else
          fin_rec_bai.Cancel;
        end;

        fin_rec_bai.DisableControls;
        fin_rec_bai.First;
        while not fin_rec_bai.Eof do
        begin
          fin_rec_bai.Edit;
          if fin_rec_baiFIN_DVEN.AsDateTime <= fin_rec_baiFIN_DCAD.AsDateTime then
          fin_rec_baiFIN_DVEN.Value := edDROM.Date;
          fin_rec_baiFIN_DCAD.Value := edDROM.Date;
          fin_rec_bai.Post;
          fin_rec_bai.Next;
        end;
      finally
        fin_rec_bai.First;
        fin_rec_bai.EnableControls;
      end;
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmctr_ped_bai.siPSQClick(Sender: TObject);
begin
  activecontrol := nil;
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 2;
    if campo_pesquisa = '' then
    frmpesquisa.cbCAMPO.Text := 'Número' else
    frmpesquisa.cbCAMPO.Text := campo_pesquisa;
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      with consulta_S do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID FROM FIN_REC');
        SQL.Add('WHERE  FIN_DOCT = '''+edtxt.Text+'''');
        Open;

        if not fields[0].IsNull then
           raise exception.Create('Número do pedido já selecionado !');
      end;

      with psq_ped do
      begin
        SQL.Clear;
        SQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
        SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
        SQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
        SQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
        SQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
        SQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');
        SQL.Add('AND      PED_VEN_CAB.ID       = '''+edtxt.Text+'''');
        SQL.Add('ORDER BY ID DESC');
        Open;
      end;

      if psq_ped.Fields[0].IsNull then
         raise exception.Create('Número do pedido não encontrado !');

      if psq_pedROM_STCO.AsString <> 'BANCÁRIO' then
      begin
        frmctr_ped_bai.tscar.TabVisible := false;
        INCLUI_CARTEIRA;
      end
      else
      begin
        if psq_pedROM_CONC.AsInteger = 1 then
           frmctr_ped_bai.tscar.TabVisible := false;
        INCLUI_BANCARIO;
      end;

      dbgconsulta.SetFocus;
      campo_pesquisa := frmpesquisa.cbCAMPO.Text;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmctr_ped_bai.tab_pagAfterOpen(DataSet: TDataSet);
begin
  eddpag.Text := tab_pagPAG_DPAG.AsString;
end;

procedure Tfrmctr_ped_bai.dbgprz1FIN_VALOValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var
  NewString: string;
  ClickedOK: Boolean;
begin
  if dbgprz1.EditingText <> '' then
  fin_rec_baiFIN_VALO.Value := strtofloat(dbgprz1.EditingText);

  if Pos('CH',fin_rec_baiFIN_TIPO.AsString) = 0 then
  exit;
  
  if not (fin_rec_bai.State in [dsInsert,dsEdit]) then
  exit;

  ClickedOK := InputQuery('Passe o cheque pela leitora', 'Cheque', NewString);
  if (ClickedOK) and (length(NewString) > 30) then
  begin
    fin_rec_baiFIN_BANC.Value := copy(NewString,02,03);
    fin_rec_baiFIN_AGEN.Value := copy(NewString,05,04);
    fin_rec_baiFIN_CONT.Value := copy(NewString,22,12);
    fin_rec_baiFIN_NCHQ.Value := copy(NewString,14,06);
  end;
end;

procedure Tfrmctr_ped_bai.dbgprz1FIN_TIPOChange(Sender: TObject);
begin
  if not (fin_rec_bai.State in [dsInsert,dsEdit]) then
  exit;

  fin_rec_baiFIN_TIPO.Value := dbgprz1.EditingText;
  if Pos('CH',fin_rec_baiFIN_TIPO.AsString) > 0 then
  fin_rec_baiFIN_VALO.Value := 0;
end;
end.
