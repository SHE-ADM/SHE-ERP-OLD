unit uPrincipal;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, math, StrUtils, cxGraphics, cxControls,
  dxStatusBar, dxExEdtr, DB, IBQuery, dxBar, ImgList, ActnList,
  dxDockControl, dxBarExtItems, IBEvents, IBCustomDataSet, IBStoredProc,
  IBSQL, IBDatabase, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDockPanel,
  dxDBTLCl, dxGrClms, dxEditor, dxEdLib, dxDBELib, StdCtrls,
  IDGlobal, DBCtrls;

type
  TFrmPrincipal = class(TForm)
    IPrincipal: TImage;
    SBRodape: TdxStatusBar;
    PNLMainForm: TPanel;
    PNLPrincipal: TPanel;
    DSConsulta: TdxDockSite;
    LDSConsulta: TdxLayoutDockSite;
    DPConsulta: TdxDockPanel;
    PNLConsulta: TPanel;
    DBGConsulta: TdxDBGrid;
    PNLFKConsulta: TPanel;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    BMPrincipal: TdxBarManager;
    BLBRefresh: TdxBarLargeButton;
    BLBRelatorios: TdxBarLargeButton;
    BBPSQ_CAD: TdxBarButton;
    BLBPSQ_CAD: TdxBarLargeButton;
    BEPSQ_CAD: TdxBarEdit;
    BBPSQ_PER: TdxBarButton;
    BDPSQ_PER_INI: TdxBarDateCombo;
    BDPSQ_PER_FIM: TdxBarDateCombo;
    BLBNovo: TdxBarLargeButton;
    BLBEdicao: TdxBarLargeButton;
    BLBCancela: TdxBarLargeButton;
    BLBPSQ_PER: TdxBarLargeButton;
    BLBConfirma: TdxBarLargeButton;
    BLBSaida: TdxBarLargeButton;
    DMPrincipal: TdxDockingManager;
    ALPrincipal: TActionList;
    ACTRefresh: TAction;
    ACTEvent: TAction;
    ACTPesquisa: TAction;
    ACTPSQ_CAD: TAction;
    ACTPSQ_PER: TAction;
    ACTSaida: TAction;
    SQLConsulta: TIBSQL;
    TConsulta: TIBTransaction;
    ILCadastro: TImageList;
    PMPSQ_CAD: TdxBarPopupMenu;
    PMPSQ_PER: TdxBarPopupMenu;
    Consulta: TIBQuery;
    DTSConsulta: TDataSource;
    SQLEvent: TIBSQL;
    DBGConsultaARTIGO: TdxDBGridMaskColumn;
    DBGConsultaDECP: TdxDBGridMaskColumn;
    DBGConsultaCF_NO: TdxDBGridMaskColumn;
    DBGConsultaUCOM: TdxDBGridMaskColumn;
    DBGConsultaGRP_NO: TdxDBGridMaskColumn;
    DBGConsultaDECA: TdxDBGridMaskColumn;
    DBGConsultaDTCA: TdxDBGridDateColumn;
    DBGConsultaDTED: TdxDBGridDateColumn;
    DSAmostras: TdxDockSite;
    DPIMG_PAD: TdxDockPanel;
    dxLayoutDockSite1: TdxLayoutDockSite;
    DPIMG_ILA: TdxDockPanel;
    TCDDSAmostras: TdxTabContainerDockSite;
    DSEstoque: TdxDockSite;
    DPCAD_PRO_EST: TdxDockPanel;
    dxLayoutDockSite2: TdxLayoutDockSite;
    DPCAD_PRO_EST_RES: TdxDockPanel;
    TCDSProdutos: TdxTabContainerDockSite;
    DPCAD_PRO_EST_SEP: TdxDockPanel;
    DPCAD_PRO_EST_FIS: TdxDockPanel;
    PNLAmostras: TPanel;
    PNLIMG_PAD: TPanel;
    IMG_PAD: TImage;
    EDIMG_PAD: TdxEdit;
    ConsultaIDEP: TSmallintField;
    ConsultaIDAK: TLargeintField;
    ConsultaARTIGO: TIBStringField;
    ConsultaDECP: TIBStringField;
    ConsultaCMP_PAD: TIBStringField;
    ConsultaUCOM: TIBStringField;
    ConsultaGRP_ID: TIntegerField;
    ConsultaGRP_NO: TIBStringField;
    ConsultaORIG: TSmallintField;
    ConsultaD_ORIG: TIBStringField;
    ConsultaINFADCAD: TIBStringField;
    ConsultaDECA: TIBStringField;
    ConsultaDTCA: TDateTimeField;
    ConsultaDTED: TDateTimeField;
    ConsultaCF_ID: TSmallintField;
    ConsultaCF_NO: TIBStringField;
    ConsultaIDCP: TIntegerField;
    ConsultaIDSK: TLargeintField;
    ConsultaCAT_ID: TIntegerField;
    ConsultaCAT_NO: TIBStringField;
    ConsultaXPAIS: TIBStringField;
    ConsultaFPAIS: TIBStringField;
    CAD_PRO_EST: TIBQuery;
    CAD_PRO_ESTIDCP: TIntegerField;
    CAD_PRO_ESTIDEP: TSmallintField;
    CAD_PRO_ESTIDCA: TSmallintField;
    CAD_PRO_ESTDECA: TIBStringField;
    CAD_PRO_ESTDTCA: TDateTimeField;
    CAD_PRO_ESTIDED: TSmallintField;
    CAD_PRO_ESTDTED: TDateTimeField;
    CAD_PRO_ESTIDST: TSmallintField;
    CAD_PRO_ESTDTST: TDateTimeField;
    CAD_PRO_ESTCDST: TSmallintField;
    CAD_PRO_ESTREST: TIBStringField;
    CAD_PRO_ESTDEST: TIBStringField;
    CAD_PRO_ESTSKU: TIBStringField;
    CAD_PRO_ESTDGCP: TIBStringField;
    CAD_PRO_ESTCEAN: TIBStringField;
    CAD_PRO_ESTIDSK: TLargeintField;
    CAD_PRO_ESTIDEK: TLargeintField;
    CAD_PRO_ESTDTEK: TDateTimeField;
    CAD_PRO_ESTDTSP: TDateTimeField;
    CAD_PRO_ESTDTPV: TDateTimeField;
    CAD_PRO_ESTCF_ID: TSmallintField;
    CAD_PRO_ESTCF_NO: TIBStringField;
    CAD_PRO_ESTCF_SKU: TIBStringField;
    CAD_PRO_ESTCF_CEAN: TIBStringField;
    CAD_PRO_ESTVPRC_PAD: TFloatField;
    CAD_PRO_ESTVPRC_VAR: TFloatField;
    CAD_PRO_ESTVPRC_REP: TFloatField;
    CAD_PRO_ESTEPE_QTDE: TIBBCDField;
    CAD_PRO_ESTEPE_QTRL: TIntegerField;
    CAD_PRO_ESTEST_QTDE: TIBBCDField;
    CAD_PRO_ESTEST_QTRL: TIntegerField;
    CAD_PRO_ESTERS_QTDE: TIBBCDField;
    CAD_PRO_ESTERS_QTRL: TIntegerField;
    CAD_PRO_ESTESP_QTDE: TIBBCDField;
    CAD_PRO_ESTESP_QTRL: TIntegerField;
    CAD_PRO_ESTC_ID: TIntegerField;
    CAD_PRO_EST_RES: TIBQuery;
    CAD_PRO_EST_RESID: TIntegerField;
    CAD_PRO_EST_RESIDEP: TSmallintField;
    CAD_PRO_EST_RESDTCA: TDateTimeField;
    CAD_PRO_EST_RESEST_DOCU: TIBStringField;
    CAD_PRO_EST_RESEST_CFAV: TIntegerField;
    CAD_PRO_EST_RESEST_DFAV: TIBStringField;
    CAD_PRO_EST_RESEST_CUSU: TIntegerField;
    CAD_PRO_EST_RESEST_DUSU: TIBStringField;
    CAD_PRO_EST_RESIDCP: TIntegerField;
    CAD_PRO_EST_RESSKU: TIBStringField;
    CAD_PRO_EST_RESDGCP: TIBStringField;
    CAD_PRO_EST_RESQTDE: TIBBCDField;
    CAD_PRO_EST_SEP: TIBQuery;
    CAD_PRO_EST_SEPID: TIntegerField;
    CAD_PRO_EST_SEPIDEP: TSmallintField;
    CAD_PRO_EST_SEPDTCA: TDateTimeField;
    CAD_PRO_EST_SEPEST_DSEP: TIBStringField;
    CAD_PRO_EST_SEPEST_DCAD: TDateField;
    CAD_PRO_EST_SEPEST_DOCU: TIBStringField;
    CAD_PRO_EST_SEPEST_CFAV: TIntegerField;
    CAD_PRO_EST_SEPEST_DFAV: TIBStringField;
    CAD_PRO_EST_SEPEST_CUSU: TIntegerField;
    CAD_PRO_EST_SEPEST_DUSU: TIBStringField;
    CAD_PRO_EST_SEPIDCP: TIntegerField;
    CAD_PRO_EST_SEPSKU: TIBStringField;
    CAD_PRO_EST_SEPDGCP: TIBStringField;
    CAD_PRO_EST_SEPQTDE: TIBBCDField;
    CAD_PRO_EST_FIS: TIBQuery;
    CAD_PRO_EST_FISID: TLargeintField;
    CAD_PRO_EST_FISIDEP: TSmallintField;
    CAD_PRO_EST_FISIDCA: TSmallintField;
    CAD_PRO_EST_FISDTCA: TDateTimeField;
    CAD_PRO_EST_FISLGCA: TIBStringField;
    CAD_PRO_EST_FISDETP: TIBStringField;
    CAD_PRO_EST_FISREOP: TIBStringField;
    CAD_PRO_EST_FISD_DEOP: TIBStringField;
    CAD_PRO_EST_FISIDCE: TIntegerField;
    CAD_PRO_EST_FISDECE: TIBStringField;
    CAD_PRO_EST_FISDEPK: TIBStringField;
    CAD_PRO_EST_FISDTPK: TDateTimeField;
    CAD_PRO_EST_FISCDSP: TLargeintField;
    CAD_PRO_EST_FISIDSP: TSmallintField;
    CAD_PRO_EST_FISDTSP: TDateTimeField;
    CAD_PRO_EST_FISDESP: TIBStringField;
    CAD_PRO_EST_FISIDCP: TIntegerField;
    CAD_PRO_EST_FISARTIGO: TIBStringField;
    CAD_PRO_EST_FISSKU: TIBStringField;
    CAD_PRO_EST_FISDECP: TIBStringField;
    CAD_PRO_EST_FISDGCP: TIBStringField;
    CAD_PRO_EST_FISQTDE: TIBBCDField;
    CAD_PRO_EST_FISQTDS: TIBBCDField;
    CAD_PRO_EST_FISEST_QTDE: TIBBCDField;
    CAD_PRO_EST_FISC_ID: TIntegerField;
    DTSCAD_PRO_EST_FIS: TDataSource;
    DSTCAD_PRO_EST_SEP: TDataSource;
    DTSCAD_PRO_EST_RES: TDataSource;
    DTSCAD_PRO_EST: TDataSource;
    DBGCAD_PRO_EST: TdxDBGrid;
    DBGCAD_PRO_ESTC_ID: TdxDBGridColumn;
    DBGCAD_PRO_ESTSKU: TdxDBGridMaskColumn;
    DBGCAD_PRO_ESTDGCP: TdxDBGridMaskColumn;
    DBGCAD_PRO_ESTREST: TdxDBGridMaskColumn;
    DBGCAD_PRO_ESTDEST: TdxDBGridMaskColumn;
    DBGCAD_PRO_ESTEPE_QTDE: TdxDBGridColumn;
    DBGCAD_PRO_ESTERS_QTDE: TdxDBGridColumn;
    DBGCAD_PRO_ESTESP_QTDE: TdxDBGridColumn;
    DBGCAD_PRO_ESTEST_QTDE: TdxDBGridColumn;
    DBGCAD_PRO_ESTDTEK: TdxDBGridDateColumn;
    DBGCAD_PRO_ESTVPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_ESTVPRC_VAR: TdxDBGridMaskColumn;
    DBGCAD_PRO_ESTVPRC_REP: TdxDBGridMaskColumn;
    DBGCAD_PRO_ESTDTPV: TdxDBGridDateColumn;
    DBGCAD_PRO_ESTDTSP: TdxDBGridDateColumn;
    DBGCAD_PRO_EST_RES: TdxDBGrid;
    DBGCAD_PRO_EST_RESSKU: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_RESDGCP: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_RESQTDE: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_RESEST_DOCU: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_RESDTCA: TdxDBGridDateColumn;
    DBGCAD_PRO_EST_RESEST_DFAV: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_RESEST_DUSU: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_SEP: TdxDBGrid;
    DBGCAD_PRO_EST_SEPSKU: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_SEPDGCP: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_SEPQTDE: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_SEPEST_DSEP: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_SEPEDTCA: TdxDBGridDateColumn;
    DBGCAD_PRO_EST_SEPEST_DOCU: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_SEPEST_DCAD: TdxDBGridDateColumn;
    DBGCAD_PRO_EST_SEPEST_DFAV: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_SEPEST_DUSU: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_FIS: TdxDBGrid;
    DBGCAD_PRO_EST_FISC_ID: TdxDBGridColumn;
    DBGCAD_PRO_EST_FISSKU: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_FISDGCP: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_FISDTPK: TdxDBGridDateColumn;
    DBGCAD_PRO_EST_FISQTDE: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_FISQTDS: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_FISEST_QTDE: TdxDBGridColumn;
    DBGCAD_PRO_EST_FISD_DEOP: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_FISREOP: TdxDBGridColumn;
    DBGCAD_PRO_EST_FISDEPK: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_FISDECE: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_FISLGCA: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_FISDESP: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_FISDTSP: TdxDBGridDateColumn;
    CAD_PRO_IMG_CDN: TIBQuery;
    CAD_PRO_IMG_CDNIMG_ID: TLargeintField;
    CAD_PRO_IMG_CDNIMG_PAD: TBlobField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP1: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS1: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP2: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS2: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP3: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS3: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP4: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS4: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP5: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS5: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP6: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS6: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP7: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS7: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP8: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS8: TIBStringField;
    DTSCAD_PRO_IMG_CDN: TDataSource;
    PNLInstLavagem: TPanel;
    PNLILA_BMP: TPanel;
    BILA_BMP1: TBevel;
    BILA_BMP2: TBevel;
    BILA_BMP3: TBevel;
    BILA_BMP4: TBevel;
    BILA_BMP5: TBevel;
    BILA_BMP6: TBevel;
    BILA_BMP7: TBevel;
    BILA_BMP8: TBevel;
    DBILA_BMP1: TDBImage;
    DBILA_BMP2: TDBImage;
    DBILA_BMP3: TDBImage;
    DBILA_BMP4: TDBImage;
    DBILA_BMP5: TDBImage;
    DBILA_BMP6: TDBImage;
    DBILA_BMP7: TDBImage;
    DBILA_BMP8: TDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACTEventExecute(Sender: TObject);
    procedure ACTRefreshExecute(Sender: TObject);
    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure ConsultaBeforeOpen(DataSet: TDataSet);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure ACTPSQ_PERExecute(Sender: TObject);
    procedure ACTPSQ_CADExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject; Field: TField);
    procedure DTSCAD_PRO_ESTDataChange(Sender: TObject; Field: TField);
    procedure CAD_PRO_ESTAfterOpen(DataSet: TDataSet);
    procedure CAD_PRO_ESTCalcFields(DataSet: TDataSet);
    procedure ConsultaAfterClose(DataSet: TDataSet);
    procedure DTSCAD_PRO_EST_RESDataChange(Sender: TObject; Field: TField);
    procedure CAD_PRO_EST_RESAfterOpen(DataSet: TDataSet);
    procedure DTSConsultaDataChange(Sender: TObject; Field: TField);
    procedure DSTCAD_PRO_EST_SEPDataChange(Sender: TObject; Field: TField);
    procedure DTSCAD_PRO_EST_FISDataChange(Sender: TObject; Field: TField);
    procedure DBGCAD_PRO_ESTCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure DBGCAD_PRO_EST_FISCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure IMG_PADClick(Sender: TObject);
  private
    { Private declarations }
    APSQ_DG: String;
  public
    { Public declarations }
    { Public declarations }
    RECDefault: TRECDefault;

    procedure _WM_AFTER_CREATE  (var Msg: TMessage); message WM_AFTER_CREATE;
    procedure _WM_AFTER_SHOW    (var Msg: TMessage); message WM_AFTER_SHOW;
    procedure _WM_AFTER_ACTIVATE(var Msg: TMessage); message WM_AFTER_ACTIVATE;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses bPrincipal, pIMG_PAD_INF;

{$R *.dfm}

procedure TFrmPrincipal._WM_AFTER_CREATE(var Msg: TMessage);
begin
  Screen.Cursor     := crAppStart;
  ALockWindowUpdate := True;
  oOTransact(TConsulta);

  CAD_PRO_EST.ParamByName('IDEP').Value := RECParametros.ID;
  CAD_PRO_EST.Prepare;

  CAD_PRO_EST_RES.ParamByName('IDEP').Value := RECParametros.ID;
  CAD_PRO_EST_RES.Prepare;

  CAD_PRO_EST_SEP.ParamByName('IDEP').Value := RECParametros.ID;
  CAD_PRO_EST_SEP.Prepare;

  CAD_PRO_EST_FIS.ParamByName('IDEP').Value := RECParametros.ID;
  CAD_PRO_EST_FIS.Prepare;

  with FBird do
  begin
    bExecParametros('1');
   { bExecUsuarios('0');
    bExecPrinter;
    bExecCaixa; }
  end;
Send;

procedure TFrmPrincipal._WM_AFTER_SHOW(var Msg: TMessage);
          procedure _ProcessPaintMessages; // << not tested, pulled out of code
          var
            Msg: TMsg;
          begin
            while PeekMessage(msg, 0, WM_PAINT, WM_PAINT, PM_REMOVE) do
                  DispatchMessage(msg);
          end;
begin
  _ProcessPaintMessages;
end;

procedure TFrmPrincipal._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
  { Registra Evento }
  RECDefault.Event := Trim(RECDefault.Event);
  try
    if RECDefault.Event <> EmptyStr then
       with EEvent do
            try
              UnregisterEvents;
              Events.Add(oREPZero(RECDefault.Event,'_',RECParametros.Id,3));
              RegisterEvents;
            except
              on E: Exception do
                    oErro(Handle,'Falha ao tentar registrar evento !'+#13+
                                 'Evento: '    +RECDefault.Event +'.'+#13+
                                 'Form: '      +Self.Name+'.'    +#13+#13+
                                 'Error Code: '+E.Message);
            end;
  finally
    Screen.Cursor := crDefault;
    ALockWindowUpdate := False; //Libera Commit;
  end;

  ACTPesquisa.Execute;
end;

function ClientWindowProc(wnd: HWND; msg: Cardinal; wparam, lparam: Integer ): Integer; STDCall;
var
  Ponteiro: Pointer;
begin
  Ponteiro := Nil;
  Result   := 0;
  try
    Ponteiro := Pointer(GetWindowLong(wnd,GWL_USERDATA));
    case msg of
         WM_NCCALCSIZE: if (GetWindowLong(wnd,GWL_STYLE) and (WS_HSCROLL or WS_VSCROLL)) <> 0 then
                            SetWindowLong(wnd,GWL_STYLE,GetWindowLong(wnd,GWL_STYLE) and Not (WS_HSCROLL or WS_VSCROLL or WS_CAPTION));
    end;
    Result := CallWindowProc(Ponteiro,wnd,msg,wparam,lparam);
  except
    ;
  end;    
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  if ClientHandle <> 0 then
     if (not (GetWindowLong(ClientHandle, GWL_USERDATA) <> 0)) then
              SetWindowLong(ClientHandle, GWL_USERDATA, SetWindowLong(ClientHandle, GWL_WNDPROC, integer(@ClientWindowProc)));

  CurrencyString    := 'R$';
  ThousandSeparator := '.';
  DecimalSeparator  := ',';

  PostMessage( handle, WM_AFTER_CREATE, 0, 0 );
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  PostMessage( handle, WM_AFTER_SHOW, 0, 0 );
end;

procedure TFrmPrincipal.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  PostMessage( handle, WM_AFTER_ACTIVATE, 0, 0 );
end;

procedure TFrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: ACTSaida.Execute;
       vk_return: if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       then
                  SelectNext (ActiveControl, True, True);
       40       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext (ActiveControl, True, True);
       38       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext(ActiveControl, False, True);
  end;
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if oYesNo(handle,'Confirma saída do sistema ?') = mrNo then
     Abort;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  oCDatabase(FBird.DBErp);
end;

procedure TFrmPrincipal.FormPaint(Sender: TObject);
var
  FRect  : TRect;
begin
  if Showing then
  begin
    { Centraliza Form }
    GetWindowRect(FrmPrincipal.ClientHandle,FRect);
    Width  := IFThen(RECDefault.FWidth  > 0,Trunc((Screen.DesktopWidth  - Screen.DesktopLeft) * (RECDefault.FWidth  / 100)),Width );
    Height := IFThen(RECDefault.FHeight > 0,Trunc((Screen.DesktopHeight - Screen.DesktopTop ) * (RECDefault.FHeight / 100)),Height);

    Top    := ((Screen.DesktopHeight - Screen.DesktopTop ) - Height) div 2;
    Left   := ((Screen.DesktopWidth  - Screen.DesktopLeft) - Width ) div 2;

    { Pega novas cordenadas }
    GetWindowRect(FrmPrincipal.ClientHandle,FRect);

    { Ajusta Imagem
    FRect.Left   := 0;
    FRect.Top    := 0;
    FRect.Right  := FRect.Right - FRect.Left;
    FRect.Bottom := FRect.Bottom - FRect.Top;
    Canvas.StretchDraw(FRect,IPrincipal.Picture.Graphic); }

    { Ajusta o rodapé conforme o form }
    SBRodape.Panels[SBRodape.Panels.Count - 2].Width := SBRodape.Width - (SBRodape.Panels[SBRodape.Panels.Count - 1].Width + 137);
  end;
end;

procedure TFrmPrincipal.FormResize(Sender: TObject);
begin
  if FrmPrincipal <> Nil then
  begin
    { Form }
    RECDefault.FWidth  := Self.AlphaBlendValue;
    RECDefault.FHeight := Self.HelpContext;

    if (Screen.DesktopWidth = 1024) and (Screen.DesktopHeight = 768) then
        Self.Font.Size := 8;
    if  Self.Font.Size  = 8 then
    begin
      RECDefault.FWidth  := 99;
      RECDefault.FHeight := 90;

      PNLPrincipal.Height := 250;
      DSAmostras.Width    := 230;
      DPIMG_PAD.Caption   := ' Imagem Produto ';
      DPIMG_ILA.Caption   := ' Inst. Lavagem ';
    end else
    RECDefault.FWidth := 0;

    PNLIMG_PAD.Width := DSAmostras.Width - 19;
    IMG_PAD.Width    := PNLIMG_PAD.Width - 11;

    PNLIMG_PAD.Height := DSAmostras.Height - 78;
    IMG_PAD.Height    := PNLIMG_PAD.Height - 11;
    EDIMG_PAD.Width   := PNLIMG_PAD.Width;
    EDIMG_PAD.Top     := PNLIMG_PAD.Height + 10;

    Paint;
    if BEPSQ_CAD.Visible <> ivNever then
       BEPSQ_CAD.SetFocus(False);
  end;
end;

procedure TFrmPrincipal.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Consulta);
end;

procedure TFrmPrincipal.ACTSaidaExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.ACTPSQ_CADExecute(Sender: TObject);
begin
  ACTPesquisa.Tag := 0;

  if Sender.ClassType = TdxBarLargeButton then
     BBPSQ_CAD.Caption := TdxBarLargeButton(Sender).Caption;

  if (BEPSQ_CAD.Text = EmptyStr) and (BDPSQ_PER_INI.Date <= 0) and (BDPSQ_PER_FIM.Date <= 0) then
      Abort;

  RECDefault.PSQValue := Trim(BEPSQ_CAD.Text);
  ACTPesquisa.Execute;
end;

procedure TFrmPrincipal.ACTPSQ_PERExecute(Sender: TObject);
begin
  ACTPesquisa.Tag := 0;

  if Sender.ClassType = TdxBarLargeButton then
     BBPSQ_PER.Caption := TdxBarLargeButton(Sender).Caption;

  if (BEPSQ_CAD.Text = EmptyStr) and (BDPSQ_PER_INI.Date <= 0) and (BDPSQ_PER_FIM.Date <= 0) then
      Abort;

  if (BDPSQ_PER_INI.Date > 0) and (BDPSQ_PER_FIM.Date > 0) then
  begin
    if BDPSQ_PER_INI.Date > BDPSQ_PER_FIM.Date then
       oException(Nil,'Data Inicial não pode ser maior que Data Final !');

    ACTPesquisa.Execute;
  end;
end;

procedure TFrmPrincipal.BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then ACTSaida.Execute;
  if key = vk_return then ACTPSQ_CAD.Execute;
  if key = VK_DOWN   then
  begin
    PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
    TWinControl(DBGConsulta).SetFocus;
  end;
end;

procedure TFrmPrincipal.ACTPesquisaExecute(Sender: TObject);
var
  APSQ_SL: TStringList;
  APSQ_VL,
  APSQ_FD: String;

  i: Word;
begin
  { String List de Pesquisa }
  APSQ_SL := TStringList.Create;
  APSQ_SL.Clear;

  if RECDefault.PSQValue <> EmptyStr then
  try
    BBPSQ_CAD.Hint := IFThen(BBPSQ_CAD.Caption = 'Pesquisa Rápida','Romaneio, Container, Nota Fiscal, Pedido, Fornecedor, etc',EmptyStr);
    BEPSQ_CAD.Hint := BBPSQ_CAD.Hint;
    Application.ProcessMessages;

    APSQ_DG := EmptyStr; { Grade }
    APSQ_FD := EmptyStr; { Campo }
    APSQ_VL := RECDefault.PSQValue; { Texto Pesquisa }

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
      if APSQ_SL.Count > 1 then
      begin
        for i := 0 to APSQ_SL.Count - 1 do
        begin
          APSQ_DG := APSQ_DG + APSQ_SL.Strings[i] + ' ';

          with SQLConsulta do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT ID FROM TAB_COR WHERE COR_DCOR CONTAINING ''' + Trim(APSQ_SL.Strings[i]) + '''');
            ExecQuery;

            if Eof then
               APSQ_DG := oStrTran(APSQ_DG,APSQ_SL.Strings[i],'') + ' ';

            Close;   
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

    { laNotReOpen não deixa re-abrir as tabelas mesmo quando configuradas para isso oCTransaction -> oOTransaction }
    oRTransact(TConsulta,ltCommit,laNotReOpen);
    with Consulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(CP.IDCP) AS IDCP ,');
      SQL.Add('       CP.IDEP     ,CP.IDAK  ,CP.IDSK,');
      SQL.Add('       CP.ARTIGO   ,CP.DECP  ,');
      SQL.Add('       CP.CMP_PAD  ,CP.UCOM  ,');
      SQL.Add('       CP.GRP_ID   ,CP.GRP_NO,');
      SQL.Add('       CP.CAT_ID   ,CP.CAT_NO,');
      SQL.Add('       CP.ORIG     ,CP.D_ORIG,');
      SQL.Add('       CP.CF_ID    ,CP.CF_NO ,');
      SQL.Add('       CP.XPAIS    ,CP.FPAIS ,');
      SQL.Add('       CP.INFADCAD,');
      SQL.Add('       MAX(DECA) AS DECA,MAX(DTCA) AS DTCA,MAX(DTED) AS DTED');

      SQL.Add('FROM VW_CAD_PRO_PSQ AS CP');

      if APSQ_SL.Count = 0 then
         SQL.Add('WHERE CP.ID = 0') else
      for i := 0 to APSQ_SL.Count - 1 do
      begin
        SQL.Add(IFThen(Pos('WHERE',Consulta.SQL.Text) = 0,'WHERE','AND'));

        { Pesquisa Artigo \ SKU }
        if (i = 0) and (Pos('.',APSQ_SL.Strings[i]) > 0) then //or ((oBSoNumero(APSQ_SL.Strings[i]) and (Length(APSQ_SL.Strings[i]) <= 5))) then
        SQL.Add('CP.SKU LIKE ''' + APSQ_SL.Strings[i] + '%''') else

        { Pesquisa Grade }
        if APSQ_SL.Strings[i] = APSQ_DG then
        SQL.Add('CP.DGCP LIKE '''         + APSQ_SL.Strings[i] + '%''') else

        { Pesquisa Genérica }
        SQL.Add('CP.FT_KEY CONTAINING ''' + APSQ_SL.Strings[i] + '''' );
      end;

      { Pesquisa Período }
      if (BDPSQ_PER_INI.Date > 0) and (BDPSQ_PER_FIM.Date > 0) then
          if BBPSQ_PER.Caption = 'Pedido'  then
             SQL.Add('AND PK.DTNF BETWEEN '''+formatDateTime('mm/dd/yy',BDPSQ_PER_INI.Date)+''' AND '''+formatDateTime('mm/dd/yy',BDPSQ_PER_FIM.Date)+'''') else
          if BBPSQ_PER.Caption = 'Nota Fiscal'  then
             SQL.Add('AND PK.DTPD BETWEEN '''+formatDateTime('mm/dd/yy',BDPSQ_PER_INI.Date)+''' AND '''+formatDateTime('mm/dd/yy',BDPSQ_PER_FIM.Date)+'''') else
             SQL.Add('AND PK.DTRO BETWEEN '''+formatDateTime('mm/dd/yy',BDPSQ_PER_INI.Date)+''' AND '''+formatDateTime('mm/dd/yy',BDPSQ_PER_FIM.Date)+'''');

      SQL.Add('GROUP BY IDEP    ,IDAK,IDSK,IDAK,');
      SQL.Add('         ARTIGO  ,DECP  ,');
      SQL.Add('         CMP_PAD ,UCOM  ,');
      SQL.Add('         GRP_ID  ,GRP_NO,');
      SQL.Add('         CAT_ID  ,CAT_NO,');
      SQL.Add('         ORIG    ,D_ORIG,');
      SQL.Add('         CF_ID   ,CF_NO ,');
      SQL.Add('         XPAIS   ,FPAIS ,');
      SQL.Add('         INFADCAD');

      SQL.Add('ORDER BY CP.ARTIGO');
      Prepare;
      Open;
    end;
  finally
    { Libera Objetos }
    APSQ_SL.Free;

    BEPSQ_CAD.Text    := EmptyStr;
    BEPSQ_CAD.CurText := EmptyStr;

    BDPSQ_PER_INI.Text    := EmptyStr;
    BDPSQ_PER_INI.CurText := EmptyStr;

    BDPSQ_PER_FIM.Text    := EmptyStr;
    BDPSQ_PER_FIM.CurText := EmptyStr;

    { Limpa Filtros }
      DBGConsulta.Filter.Clear;  { Artigos  }
      DBGCAD_PRO_EST.Filter.Clear; { Produtos }

//    DBGPR.Filter.Clear; { Reservados }
//    DBGPS.Filter.Clear; { Separados }
//    DBGPP.Filter.Clear; { Programados }

//    DBGLF.Filter.Clear; { Físico }
//    DBGLE.Filter.Clear; { Entradas }
//    DBGLS.Filter.Clear; { Saídas }

//    DBGPCA.Filter.Clear; { Compras Aberto  }
//    DBGPCF.Filter.Clear; { Compras Fechado }

//    DBGRV.Filter.Clear; { Revisados }

    if (RECDefault.PSQValue = '0') or (Consulta.RecNo = 0) then
    BEPSQ_CAD.SetFocus(False) else
    if CAD_PRO_EST.RecNo > 0 then
    begin
      PostMessage(DBGCAD_PRO_EST.Handle, WM_SETFOCUS, 0, 0);
      DBGCAD_PRO_EST.SetFocus;
    end;
  end;
end;

procedure TFrmPrincipal.ACTEventExecute(Sender: TObject);
begin
  if not ALockWindowUpdate then
     if (EEvent.Registered) and (RECDefault.EventAlert) and (RECDefault.Event <> EmptyStr) then
         try
           oOTransact(TEvent);

           SPEvent.StoredProcName := 'SP_EVENT';
           SPEvent.Prepare;
           SPEvent.Params[0].AsString := RECDefault.Event;
           SPEvent.ExecProc;

           oCTransact(TEvent);

           RECDefault.Edited := True;
         except
           on E: Exception do
           begin
             RECDefault.Selected := False;
             RECDefault.Edited   := False;

             oCTransact(TEvent,ltRollback);
             oRefresh(Consulta,False);

             oException(Nil,'Falha ao tentar salvar evento !'  +#13+
                            'Evento: '    +RECDefault.Event+'.'+#13+#13+
                            'Formulário: '+Self.Name+'.'       +#13+#13+
                            'Error Code: '+E.Message+'.');
           end;
         end else oRefresh(Consulta);
end;

procedure TFrmPrincipal.EEventEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  oRefresh(Consulta,True,RECDefault.InsertValue);
end;

procedure TFrmPrincipal.ConsultaBeforeOpen(DataSet: TDataSet);
begin
//  if not ALockWindowUpdate then
//     Screen.Cursor := crAppStart;
end;

procedure TFrmPrincipal.ConsultaAfterOpen(DataSet: TDataSet);
begin
  if CAD_PRO_IMG_CDN.State = dsInactive then
     CAD_PRO_IMG_CDN.Open;

  if CAD_PRO_EST.State = dsInactive then
     CAD_PRO_EST.Open;

  if CAD_PRO_EST_RES.State = dsInactive then
     CAD_PRO_EST_RES.Open;

  if CAD_PRO_EST_SEP.State = dsInactive then
     CAD_PRO_EST_SEP.Open;

  if CAD_PRO_EST_FIS.State = dsInactive then
     CAD_PRO_EST_FIS.Open;

  if Showing then
  begin
    DBGCAD_PRO_EST.SetFocus;
    DBGCAD_PRO_ESTDGCP.Field.FocusControl;

    DBGCAD_PRO_EST_FISDGCP.Field.FocusControl;
  end;  
end;

procedure TFrmPrincipal.ConsultaAfterClose(DataSet: TDataSet);
begin
  if CAD_PRO_EST.State     = dsBrowse then CAD_PRO_EST.Close;
  if CAD_PRO_EST_RES.State = dsBrowse then CAD_PRO_EST_RES.Close;
  if CAD_PRO_EST_SEP.State = dsBrowse then CAD_PRO_EST_SEP.Close;
end;

procedure TFrmPrincipal.DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject;
  Field: TField);
begin
  EDIMG_PAD.Text := _oLoadJPG(CAD_PRO_IMG_CDNIMG_ID,CAD_PRO_IMG_CDNIMG_PAD,IMG_PAD);

  DBILA_BMP1.Hint := CAD_PRO_IMG_CDND_ILA_INS1.AsString;
  DBILA_BMP2.Hint := CAD_PRO_IMG_CDND_ILA_INS2.AsString;
  DBILA_BMP3.Hint := CAD_PRO_IMG_CDND_ILA_INS3.AsString;
  DBILA_BMP4.Hint := CAD_PRO_IMG_CDND_ILA_INS4.AsString;
  DBILA_BMP5.Hint := CAD_PRO_IMG_CDND_ILA_INS5.AsString;
  DBILA_BMP6.Hint := CAD_PRO_IMG_CDND_ILA_INS6.AsString;
  DBILA_BMP7.Hint := CAD_PRO_IMG_CDND_ILA_INS7.AsString;
  DBILA_BMP8.Hint := CAD_PRO_IMG_CDND_ILA_INS8.AsString;

  BILA_BMP1.Hint  := DBILA_BMP1.Hint;
  BILA_BMP2.Hint  := DBILA_BMP2.Hint;
  BILA_BMP3.Hint  := DBILA_BMP3.Hint;
  BILA_BMP4.Hint  := DBILA_BMP4.Hint;
  BILA_BMP5.Hint  := DBILA_BMP5.Hint;
  BILA_BMP6.Hint  := DBILA_BMP6.Hint;
  BILA_BMP7.Hint  := DBILA_BMP7.Hint;
  BILA_BMP8.Hint  := DBILA_BMP8.Hint;
end;

procedure TFrmPrincipal.CAD_PRO_ESTAfterOpen(DataSet: TDataSet);
begin
  if CAD_PRO_ESTDGCP.AsString <> EmptyStr then DBGCAD_PRO_ESTDGCP.Field.FocusControl else
     DBGCAD_PRO_ESTDGCP.Field.FocusControl;
end;

procedure TFrmPrincipal.DTSCAD_PRO_ESTDataChange(Sender: TObject;
  Field: TField);
begin
  DBGCAD_PRO_EST.ApplyBestFit(DBGCAD_PRO_ESTSKU );
  DBGCAD_PRO_EST.ApplyBestFit(DBGCAD_PRO_ESTDGCP);
end;

procedure TFrmPrincipal.CAD_PRO_ESTCalcFields(DataSet: TDataSet);
begin
  CAD_PRO_ESTC_ID.Value     := CAD_PRO_EST.RecNo;
  CAD_PRO_ESTEPE_QTDE.Value := CAD_PRO_ESTEST_QTDE.AsFloat - CAD_PRO_ESTERS_QTDE.AsFloat - CAD_PRO_ESTESP_QTDE.AsFloat;
  CAD_PRO_ESTEPE_QTRL.Value := 0;
end;

procedure TFrmPrincipal.CAD_PRO_EST_RESAfterOpen(DataSet: TDataSet);
begin
  if CAD_PRO_EST_RESDGCP.AsString <> EmptyStr then DBGCAD_PRO_EST_RESDGCP.Field.FocusControl else
     DBGCAD_PRO_EST_RESDGCP.Field.FocusControl;
end;

procedure TFrmPrincipal.DTSCAD_PRO_EST_RESDataChange(Sender: TObject;
  Field: TField);
begin
  { Colunas }
  DBGCAD_PRO_EST_RES.ApplyBestFit(DBGCAD_PRO_EST_RESSKU );
  DBGCAD_PRO_EST_RES.ApplyBestFit(DBGCAD_PRO_EST_RESDGCP);
end;

procedure TFrmPrincipal.DTSConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  DBGConsulta.ApplyBestFit(DBGConsultaDECP  );
  DBGConsulta.ApplyBestFit(DBGConsultaGRP_NO);
  DBGConsulta.ApplyBestFit(DBGConsultaCF_NO );
end;

procedure TFrmPrincipal.DSTCAD_PRO_EST_SEPDataChange(Sender: TObject;
  Field: TField);
begin
  DBGCAD_PRO_EST_SEP.ApplyBestFit(DBGCAD_PRO_EST_SEPSKU );
  DBGCAD_PRO_EST_SEP.ApplyBestFit(DBGCAD_PRO_EST_SEPDGCP);
end;

procedure TFrmPrincipal.DTSCAD_PRO_EST_FISDataChange(Sender: TObject;
  Field: TField);
begin
  DBGCAD_PRO_EST_FIS.ApplyBestFit(DBGCAD_PRO_EST_FISSKU   );
  DBGCAD_PRO_EST_FIS.ApplyBestFit(DBGCAD_PRO_EST_FISDGCP  );
  DBGCAD_PRO_EST_FIS.ApplyBestFit(DBGCAD_PRO_EST_FISD_DEOP);
end;

procedure TFrmPrincipal.DBGCAD_PRO_ESTCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGCAD_PRO_ESTREST.Index] = 'PRÉ' then
    begin
      AColor      := $00BEEFF8;
      AFont.Color := clBlack;
    end else
    if ANode.Values[DBGCAD_PRO_ESTREST.Index] = 'I' then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end else
    begin
      if (AColumn = DBGCAD_PRO_ESTDEST) and (ANode.Values[DBGCAD_PRO_ESTREST.Index] = 'A') then
      begin
        AColor      := $00C4FFC4;
        AFont.Color := clBlack;
      end;

      if (AColumn = DBGCAD_PRO_ESTSKU) or (AColumn = DBGCAD_PRO_ESTDGCP) or (AColumn = DBGCAD_PRO_ESTDEST) then
      begin
        AColor      := clGray;
        AFont.Color := clWhite;
      end;

      { Pronta Entrega }
      if AColumn = DBGCAD_PRO_ESTEPE_QTDE then
         if ANode.Values[DBGCAD_PRO_ESTEPE_QTDE.Index] <> 0 then
         if ANode.Values[DBGCAD_PRO_ESTEPE_QTDE.Index] <  0 then
         begin
           AColor      := $000024B3;
           AFont.Color := clWhite;
           AFont.Style := [fsBold];
         end else
         if ANode.Values[DBGCAD_PRO_ESTEPE_QTDE.Index] > 0 then
         begin
           AColor      := $00C4FFC4;
           AFont.Color := clBlack;
           AFont.Style := [fsBold];
         end;

      if (AColumn = DBGCAD_PRO_ESTERS_QTDE) and (ANode.Values[DBGCAD_PRO_ESTERS_QTDE.Index] > 0) then
      begin
        AColor      := clInfobk;
        AFont.Color := clBlack;
      end;

      if (AColumn = DBGCAD_PRO_ESTESP_QTDE) and (ANode.Values[DBGCAD_PRO_ESTESP_QTDE.Index] > 0) then
      begin
        AColor      := clInfobk;
        AFont.Color := clBlack;
      end;

      if (AColumn = DBGCAD_PRO_ESTDTPV) and (ANode.Values[DBGCAD_PRO_ESTDTPV.Index] <> Null) then
      begin
        AColor      := clWhite;
        AFont.Color := clBlack;
      end;

      if (AColumn = DBGCAD_PRO_ESTDTSP) and (ANode.Values[DBGCAD_PRO_ESTDTSP.Index] <> Null) then
      begin
        AColor      := clWhite;
        AFont.Color := clBlack;
      end;
    end;
  end;
end;

procedure TFrmPrincipal.DBGCAD_PRO_EST_FISCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    {
     if ANode.Values[DBGCAD_PRO_EST_FISC_ID.Index] <> Null then
     begin
       if ANode.Values[DBGCAD_PRO_EST_FISC_ID.Index] mod 2 <> 0 then
          AColor := $00EFF0F1;

       if (AColor = $00EFF0F1) and (AFont.Color = clWhite) then
           AFont.Color := clBlack;
     end;
    }

    if ANode.Values[DBGCAD_PRO_EST_FISREOP.Index] = 'Z' then
       AColor := clInfoBk else
    if ANode.Values[DBGCAD_PRO_EST_FISREOP.Index] = 'E' then
       AColor := $00F8F8F8 else
       AColor := clWhite;

    if (AColumn = DBGCAD_PRO_EST_FISQTDE) and (ANode.Values[DBGCAD_PRO_EST_FISQTDE.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGCAD_PRO_EST_FISQTDS) and (ANode.Values[DBGCAD_PRO_EST_FISQTDS.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGCAD_PRO_EST_FISSKU) or (AColumn = DBGCAD_PRO_EST_FISDGCP) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
    end;

    if AColumn = DBGCAD_PRO_EST_FISEST_QTDE then
       if ANode.Values[DBGCAD_PRO_EST_FISEST_QTDE.Index] < 0 then
       begin
         AColor      := $000024B3;
         AFont.Color := clWhite;
       end else
       begin
         AColor      := clBtnFace;
         AFont.Color := clBlack;
       end;
  end;
end;

procedure TFrmPrincipal.IMG_PADClick(Sender: TObject);
begin
  if Assigned(FRMIMG_PAD_INF) then FRMIMG_PAD_INF.BringToFront else
  begin
    FRMIMG_PAD_INF := TFRMIMG_PAD_INF.Create(Self,IMG_PAD.Picture,EDIMG_PAD.Text,CAD_PRO_ESTSKU.AsString,CAD_PRO_ESTDGCP.AsString,ConsultaDECP.AsString,ConsultaCMP_PAD.AsString,ConsultaGRP_NO.AsString,ConsultaCAT_NO.AsString,ConsultaXPAIS.AsString,ConsultaFPAIS.AsString);
    FRMIMG_PAD_INF.Show;
  end;
end;

end.
