unit pSHE_DEF_PSQ;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, StrUtils, Math, dxExEdtr, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxEdLib, dxDBELib, dxEditor, ExtCtrls, ActnList, ImgList,
  dxBar, dxBarExtItems, dxDockControl, dxPageControl, dxDockPanel,
  cxGraphics, cxControls, dxStatusBar, IBEvents, IBStoredProc, DB,
  IBCustomDataSet, IBQuery, IBSQL, IBDatabase, rxSpeedbar,
  IDGlobal, DSiWin32, dxsbar, ComCtrls, DBCtrls, dxDBTLCl, dxGrClms, Menus;

type
  TFrmSHE_DEF_PSQ = class(TForm)
    BMPrincipal: TdxBarManager;

    BLBRefresh: TdxBarLargeButton;
    BLBRelatorios: TdxBarLargeButton;
    BLBPSQ_CAD: TdxBarLargeButton;
    BEPSQ_CAD: TdxBarEdit;
    BBPSQ_PER_MENU: TdxBarButton;
    BDPSQ_PER_INI: TdxBarDateCombo;
    BDPSQ_PER_FIM: TdxBarDateCombo;
    BLBMAppend: TdxBarLargeButton;
    BLBMEdit: TdxBarLargeButton;
    BLBMCancel: TdxBarLargeButton;
    BLBConfirma: TdxBarLargeButton;
    BLBSaida: TdxBarLargeButton;
    BLBMDelete: TdxBarLargeButton;
    BLBPesquisa: TdxBarLargeButton;
    BSProgresso: TdxBarStatic;
    BPProcesso: TdxBarProgressItem;
    BLBPSQ_CAD_MENU: TdxBarLargeButton;
    SBSMenu: TdxSideBarStore;
    SSIEAppend: TdxStoredSideItem;
    SSIEEdit: TdxStoredSideItem;
    SSIEDelete: TdxStoredSideItem;
    SSIEPost: TdxStoredSideItem;
    SSIECancel: TdxStoredSideItem;
    SSIMAppend: TdxStoredSideItem;
    SSIMEdit: TdxStoredSideItem;
    SSIMDelete: TdxStoredSideItem;
    PMPSQ_CAD: TdxBarPopupMenu;
    PMPSQ_PER: TdxBarPopupMenu;
    ALPrincipal: TActionList;
    ACTRefresh: TAction;
    ACTExecEvent: TAction;
    ACTPesquisa: TAction;
    ACTRelatorios: TAction;
    ACTEAppend: TAction;
    ACTEEdit: TAction;
    ACTEDelete: TAction;
    ACTEPost: TAction;
    ACTECancel: TAction;
    ACTMAppend: TAction;
    ACTMEdit: TAction;
    ACTMDelete: TAction;
    ACTMPost: TAction;
    ACTMCancel: TAction;
    ACTSaida: TAction;
    ACTPSQ_OK: TAction;
    ACTPSQ_FOCUS: TAction;
    ILMenu: TImageList;
    ILEdicao: TImageList;
    StyleController: TdxEditStyleController;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TEvent: TIBTransaction;
    SQLEvent: TIBSQL;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    DMPrincipal: TdxDockingManager;
    DSPrincipal: TdxDockSite;
    DPMenu: TdxDockPanel;
    LDSMenu: TdxLayoutDockSite;
    SBPrincipal: TdxSideBar;
    DPSubMenu5: TdxDockPanel;
    LDSSubMenu5: TdxLayoutDockSite;
    DPSubMenu4: TdxDockPanel;
    DPSubMenu3: TdxDockPanel;
    DPSubMenu2: TdxDockPanel;
    DPSubMenu1: TdxDockPanel;
    LDSSubMenu4: TdxLayoutDockSite;
    LDSSubMenu3: TdxLayoutDockSite;
    LDSSubMenu2: TdxLayoutDockSite;
    LDSSubMenu1: TdxLayoutDockSite;
    DPPrincipal1: TdxDockPanel;
    LDSPrincipal1: TdxLayoutDockSite;
    DPPrincipal2: TdxDockPanel;
    TCDSPrincipal: TdxTabContainerDockSite;
    PNLPrincipal1: TPanel;
    DSPrincipal1: TdxDockSite;
    LDSPrincipal1ConsultaINFADCAD: TdxLayoutDockSite;
    DPPrincipal1Consulta1: TdxDockPanel;
    DPPrincipal1RodapeLE1: TdxDockPanel;
    LDSPrincipal1Rodape1: TdxLayoutDockSite;
    DPPrincipal1RodapeLE2: TdxDockPanel;
    DPPrincipal1RodapeLEB: TdxDockPanel;
    TCDSPrincipal1RodapeLE: TdxTabContainerDockSite;
    VCDSPrincipal1RodapeLE: TdxVertContainerDockSite;
    DPPrincipal1LE: TdxDockPanel;
    LDSPrincipal1LE: TdxLayoutDockSite;
    DPPrincipal1LD: TdxDockPanel;
    LDSPrincipal1LD: TdxLayoutDockSite;
    DPPrincipal1Titulo: TdxDockPanel;
    LDSPrincipal1Titulo: TdxLayoutDockSite;
    DPPrincipal1INFADCAD: TdxDockPanel;
    LDSPrincipal1INFADCAD: TdxLayoutDockSite;
    DPPrincipal1INFADCPL: TdxDockPanel;
    LDSPrincipal1INFADCPL: TdxLayoutDockSite;
    HCDSPrincipal1Consulta: TdxHorizContainerDockSite;
    DPPrincipal1ConsultaLD1: TdxDockPanel;
    DPPrincipal1ConsultaLD2: TdxDockPanel;
    TCDSPrincipal1ConsultaLD: TdxTabContainerDockSite;
    DPPrincipal1Consulta2: TdxDockPanel;
    TCDSPrincipal1Consulta: TdxTabContainerDockSite;
    DPPrincipal1RodapeTitulo: TdxDockPanel;
    LDSPrincipal1RodapeTitulo: TdxLayoutDockSite;
    DPPrincipal1Rodape: TdxDockPanel;
    LDSPrincipal1RodapeLE: TdxLayoutDockSite;
    DPPrincipal1Rodape1: TdxDockPanel;
    LDSPrincipal1Rodape2: TdxLayoutDockSite;
    DPPrincipal1Rodape2: TdxDockPanel;
    TCDSPrincipal1Rodape: TdxTabContainerDockSite;
    PNLDBGConsulta: TPanel;
    DPPrincipal1Rodape3: TdxDockPanel;
    ILDockingManager: TImageList;
    Consulta: TIBQuery;
    DTSConsulta: TDataSource;
    PNLCAD_PRO_IMG_PIX: TPanel;
    BBPSQ_PER2: TdxBarButton;
    BBPSQ_PER3: TdxBarButton;
    BBPSQ_PER4: TdxBarButton;
    BBPSQ_PER: TdxBarButton;
    EEventAdmin: TIBEvents;
    BLBPSQ_CAD2: TdxBarLargeButton;
    BLBPSQ_CAD3: TdxBarLargeButton;
    BLBPSQ_CAD4: TdxBarLargeButton;
    BLBPSQ_CAD5: TdxBarLargeButton;
    BBPSQ_PER5: TdxBarButton;
    DBGConsulta: TdxDBGrid;




    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ACTMAppendExecute(Sender: TObject);
    procedure ACTMEditExecute(Sender: TObject);
    procedure ACTMDeleteExecute(Sender: TObject);
    procedure ACTMPostExecute(Sender: TObject);
    procedure ACTMCancelExecute(Sender: TObject);
    procedure ACTEAppendExecute(Sender: TObject);
    procedure ACTEEditExecute(Sender: TObject);
    procedure ACTEDeleteExecute(Sender: TObject);
    procedure ACTEPostExecute(Sender: TObject);
    procedure ACTECancelExecute(Sender: TObject);
    procedure ACTPSQ_OKExecute(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACTPSQ_FOCUSExecute(Sender: TObject);
    procedure BEPSQ_CADCurChange(Sender: TObject);
    procedure BDPSQ_PER_INICurChange(Sender: TObject);
    procedure BDPSQ_PER_FIMCurChange(Sender: TObject);
    procedure ACTExecEventExecute(Sender: TObject);
    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure DPPrincipal1RodapeLEBUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
    procedure TCDSPrincipal1RodapeLEUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
    procedure ACTRefreshExecute(Sender: TObject);
    procedure VCDSPrincipal1RodapeLEUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
    procedure TCDSPrincipal1RodapeUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    FCurrentEvent,
    FCurrentAlert: String;
    FForceClose  : Boolean;

    { DOCKERS }
    FDockControl: TdxCustomDockControl;
    FDockControlPrincipal1RodapeLE: Integer;

    { método para atribuição\validação de valor }
    procedure _SetCurrentEvent(const AValue: String);
    procedure _SetCurrentAlert(const AValue: String);
    procedure _SetForceClose  (const AValue: Boolean);
    procedure _SetDockControl (const AValue: TdxCustomDockControl; AXYPos: Integer = 0; ADirection: TDirection = lNone; ARepeat: boolean = False; AUpdateZones: Boolean = False);
  public
    { Public declarations }
    REC_SHE_DEF: TREC_SHE_DEF;

    property _GetCurrentAlert: String  read FCurrentAlert write _SetCurrentAlert;
    property _GetCurrentEvent: String  read FCurrentEvent write _SetCurrentEvent;
    property _GetForceClose  : Boolean read FForceClose   write _SetForceClose;

    procedure _WM_CREATE(var Msg: TMessage); message WM_CREATE;
    procedure _WM_AFTER_CREATE(var Msg: TMessage); message WM_AFTER_CREATE;

    procedure _WM_ACTIVATE(var Msg: TMessage); message WM_ACTIVATE;
    procedure _SW_SHOWNOACTIVATE(var Msg: TMessage); message SW_SHOWNOACTIVATE;

    procedure _WM_SHOW(var Msg: TMessage); message WM_SHOW;
    procedure _WM_AFTER_SHOW(var Msg: TMessage); message WM_AFTER_SHOW;

    procedure _WM_RESIZE(var Message: TMessage); message WM_ENTERSIZEMOVE;
    procedure _WM_AFTER_RESIZE(var Message: TMessage); message WM_EXITSIZEMOVE;

    Constructor Create(AOwner   : TComponent;
                 const AIDPK    : LongInt = 0 ;
                       ADEPK    : String  = '';
                       AIDEV    : LongInt = 0 ;
                       ACDEV    : Word    = 0 ;
                       AFB_TB_PK: String  = ''); reintroduce; overload;

    class procedure _ExecForm(AOwner   : TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                              AIDPK    : LongInt = 0 ;
                              ADEPK    : String  = '';
                              AIDEV    : LongInt = 0 ;
                              ACDEV    : Word    = 0 ;
                              AFB_TB_PK: String  = '');

    Destructor  Destroy; override;
  end;

var
  FrmSHE_DEF_PSQ: TFrmSHE_DEF_PSQ;


  _Form: TStringList = Nil;
  _FormPesquisa: Boolean;

implementation

uses uPrincipal, bPrincipal,
  pemail, pctr_rom,
  pctr_nfe, pimporta_geral,
  pNFeConsultaSefaz;

{$R *.dfm}

procedure TFrmSHE_DEF_PSQ._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmSHE_DEF_PSQ._SetCurrentAlert(const AValue: String);
begin
  FCurrentAlert := AValue;
end;

procedure TFrmSHE_DEF_PSQ._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

procedure TFrmSHE_DEF_PSQ._WM_CREATE(var Msg: TMessage);
begin
  { FORM SCREEN }
  Screen.Cursor := crAppStart;
  Randomize;

  { INICIALIZAÇÃO DOS OBJETOS DECLARADOS }
end;

procedure TFrmSHE_DEF_PSQ._WM_AFTER_CREATE(var Msg: TMessage);
begin
  { FORM SCREEN }
  SetCursorPos(500,Self.Top);

  { FORM CAPTION }
  if FCurrentEvent  = EmptyStr then
  _GetCurrentEvent := Self.Caption;

  { FORM AREA }
  REC_SHE_DEF.FMainArea := (REC_SHE_DEF.FMainArea) and (Screen.Width >= 1360) and (Screen.Width <= 1366); { Aplicação }
  REC_SHE_DEF.FWorkArea := (REC_SHE_DEF.FWorkArea) and (Screen.Width <= 1280); { Windows }

  { PAGE CONTROL }

  { INICIALIZAÇÃO PADRÃO }
  DPMENU.Visible := False;
  DPMENU.Width   := 0;

  DPSUBMENU1.Visible := False;
  DPSUBMENU1.Width   := 0;

  DPSUBMENU2.Visible := False;
  DPSUBMENU2.Width   := 0;


  { PRINCIPAL DOCK MANAGER }
  { Largura }
  _SetDockControl(DPPrincipal1LE,DPPrincipal1LE.Tag,lHorizontal); { LE }
  _SetDockControl(DPPrincipal1LD,DPPrincipal1LD.Tag,lHorizontal); { LD }

  { Altura }
  _SetDockControl(DPPrincipal1Titulo  ,DPPrincipal1Titulo.Tag  ,lVertical); { Título }
  _SetDockControl(DPPrincipal1INFADCAD,DPPrincipal1INFADCAD.Tag,lVertical); { Informações Adicionais }
  _SetDockControl(DPPrincipal1INFADCPL,DPPrincipal1INFADCPL.Tag,lVertical); { Informações Complementares }

  { CONSULTA DOCK MANAGER }
  { Largura LE }
//_SetDockControl(TCDSPrincipal1ConsultaLE,TCDSPrincipal1ConsultaLE.Tag,lHorizontal);
//  _SetDockControl(DPPrincipal1ConsultaLE1 ,DPPrincipal1ConsultaLE1.Tag ,lHorizontal);
//_SetDockControl(DPPrincipal1ConsultaLE2 ,DPPrincipal1ConsultaLE2.Tag ,lHorizontal);

  { Largura LD }
  _SetDockControl(TCDSPrincipal1ConsultaLD,TCDSPrincipal1ConsultaLD.Tag,lHorizontal);
  _SetDockControl(DPPrincipal1ConsultaLD1 ,DPPrincipal1ConsultaLD1.Tag ,lHorizontal);
  _SetDockControl(DPPrincipal1ConsultaLD2 ,DPPrincipal1ConsultaLD2.Tag ,lHorizontal);

  { RODAPÉ DOCK MANAGER }
  { Largura LE }
  _SetDockControl(VCDSPrincipal1RodapeLE,VCDSPrincipal1RodapeLE.Tag,lHorizontal);
  _SetDockControl(TCDSPrincipal1RodapeLE,TCDSPrincipal1RodapeLE.Tag,lHorizontal);
  _SetDockControl(DPPrincipal1RodapeLE1 ,DPPrincipal1RodapeLE1.Tag ,lHorizontal);
  _SetDockControl(DPPrincipal1RodapeLE2 ,DPPrincipal1RodapeLE2.Tag ,lHorizontal);


  { Altura }
  _SetDockControl(DPPrincipal1RodapeLEB,DPPrincipal1RodapeLEB.Tag,lVertical); { LEB }

  _SetDockControl(DPPrincipal1RodapeTitulo,DPPrincipal1RodapeTitulo.Tag,lVertical);
  _SetDockControl(DPPrincipal1Rodape      ,DPPrincipal1Rodape.Tag      ,lVertical);

  { CONSULTAS DOCK MANAGER }
  DPPrincipal1Consulta2.Visible := (DPPrincipal1Consulta2.Tag > 0); { Principal }
  DPPrincipal1Rodape2.Visible   := (DPPrincipal1Rodape2.Tag   > 0); { Rodapé }
  DPPrincipal1Rodape3.Visible   := (DPPrincipal1Rodape3.Tag   > 0); { Rodapé }

  { CONTAINERS MANAGER }
  { Consulta }
//TCDSPrincipal1ConsultaLE.ActiveChildIndex := 0;
  TCDSPrincipal1ConsultaLD.ActiveChildIndex := 0;
  TCDSPrincipal1Consulta.ActiveChildIndex   := 0;

  { Rodapé Principal }
  TCDSPrincipal1RodapeLE.ActiveChildIndex := 0;
  TCDSPrincipal1Rodape.ActiveChildIndex   := 0;

  { CONTAINERS MANAGER }
  { Altura }
  if HCDSPrincipal1Consulta.Tag = 0 then
  begin
    HCDSPrincipal1Consulta.Tag    := DSPrincipal1.Height - DPPrincipal1Titulo.Height - DPPrincipal1INFADCPL.Height;
    HCDSPrincipal1Consulta.Height := HCDSPrincipal1Consulta.Tag;

    TCDSPrincipal1Rodape.Visible  := False;
    TCDSPrincipal1Rodape.Tag      := 0;
    TCDSPrincipal1Rodape.Width    := 0;
    TCDSPrincipal1Rodape.Height   := 0;

    TCDSPrincipal1Rodape.Repaint;
  end else
  begin
    HCDSPrincipal1Consulta.Tag    := IFThen(Screen.Height > 864,315,315) + DPPrincipal1Titulo.Height;
    HCDSPrincipal1Consulta.Height := HCDSPrincipal1Consulta.Tag;

    TCDSPrincipal1Rodape.Visible  := True;
    TCDSPrincipal1Rodape.Tag      := 1;
    TCDSPrincipal1Rodape.Width    := DSPrincipal1.Width  - HCDSPrincipal1Consulta.Tag;
    TCDSPrincipal1Rodape.Height   := DSPrincipal1.Height - HCDSPrincipal1Consulta.Height - DPPrincipal1INFADCAD.Height;

    TCDSPrincipal1Rodape.Repaint;
  end;
end;

procedure TFrmSHE_DEF_PSQ._WM_ACTIVATE(var Msg: TMessage);
begin
  { EVENTOS }
  { Limpa Eventos }
  REC_SHE_DEF.FB_EVE_ADM := EmptyStr; { Admin    }
  REC_SHE_DEF.FB_EVE_CTR := EmptyStr; { Controle }
  REC_SHE_DEF.FB_EVE_PAD := EmptyStr; { Login    }

  try
    { Addmin }
    EEventAdmin.UnregisterEvents;
    EEventAdmin.Events.Clear;

    { Padrão }
    EEvent.UnregisterEvents;
    EEvent.Events.Clear;

    { Registra Eventos }
    if REC_SHE_DEF.FB_Event <> EmptyStr then
    begin
      { Admin }
      REC_SHE_DEF.FB_EVE_ADM := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-ADM';
      EEventAdmin.Events.Add(REC_SHE_DEF.FB_EVE_ADM);
      EEventAdmin.RegisterEvents;

      if not RECUsuarios.IS_EVE_ADM then
      begin
        { Padrão }
        REC_SHE_DEF.FB_EVE_PAD := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-' + oStrZero(RECUsuarios.ID,3);
        EEvent.Events.Add(REC_SHE_DEF.FB_EVE_PAD);
        EEvent.RegisterEvents;
      end;
    end;
  except
    on E: Exception do
    begin
      { Limpa Eventos }
      REC_SHE_DEF.FB_EVE_ADM := EmptyStr; { Admin    }
      REC_SHE_DEF.FB_EVE_CTR := EmptyStr; { Controle }
      REC_SHE_DEF.FB_EVE_PAD := EmptyStr; { Login    }

      oErro(Application.Handle,'Falha ao tentar executar evento !' + #13 +
                                REC_SHE_DEF.FB_Event   + '.' + #13 + #13 +
                                E.Message              + '.' + #13 + #13 +
                               'Favor entrar em contato com o administrador do sistema.');
    end;
  end;
end;

procedure TFrmSHE_DEF_PSQ._SW_SHOWNOACTIVATE(var Msg: TMessage);
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

procedure TFrmSHE_DEF_PSQ._WM_SHOW(var Msg: TMessage);
begin
  { FORM SHOW }
  Screen.Cursor := crHourGlass;
  REC_SHE_DEF.FResize := 0; { FORM RESIZE }

  { INICIALIZAÇÃO DE TRANSAÇÕES }
  oOTransact(TConsulta); { Consultas }

  { TABELAS }
  { EDIÇÕES }
end;

procedure TFrmSHE_DEF_PSQ._WM_AFTER_SHOW(var Msg: TMessage);
begin
  { INICIALIZAÇÃO DOS COMPONENTES }
  { VER REGISTRO }

  { FORM SHOW }
  Screen.Cursor := crDefault;
end;

procedure TFrmSHE_DEF_PSQ._WM_RESIZE(var Message: TMessage);
begin
  { Before Resize }
  REC_SHE_DEF.FResize := REC_SHE_DEF.FResize + 1;

  { FORM SCREEN }
  if REC_SHE_DEF.FMainArea then {MainArea, mas sem desabilitar botões }
  begin
    REC_SHE_DEF.FPosition := poDefault;
    REC_SHE_DEF.FWorkArea := False;
  end else

  if REC_SHE_DEF.FWorkArea then
  begin
    REC_SHE_DEF.FPosition := poDefault;
    REC_SHE_DEF.FMainArea := False;
  end;

  { VER DIM TELA }
  REC_SHE_DEF.FHeight := Self.Height;
  REC_SHE_DEF.FWidth  := Self.Width ;
end;

procedure TFrmSHE_DEF_PSQ._WM_AFTER_RESIZE(var Message: TMessage);
begin
  { After Resize }
  if REC_SHE_DEF.FResize >= 2 then
     try
       oResize(DBGConsulta);
       Paint;
     finally
       Screen.Cursor := crDefault;
       REC_SHE_DEF.FResize := 0;
     end;
end;

Constructor TFrmSHE_DEF_PSQ.Create(AOwner: TComponent;
                                 const AIDPK    : LongInt = 0 ;
                                       ADEPK    : String  = '';
                                       AIDEV    : LongInt = 0 ;
                                       ACDEV    : Word    = 0 ;
                                       AFB_TB_PK: String  = '');
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.IDPK := INTTOSTR(AIDPK);
  REC_SHE_DEF.DEPK := TRIM(ADEPK);

  REC_SHE_DEF.IDEV := INTTOSTR(AIDEV);
  REC_SHE_DEF.CDEV := INTTOSTR(ACDEV);

  REC_SHE_DEF.FB_TB_PK := TRIM(AFB_TB_PK);
  inherited Create(AOwner);
end;

Class procedure TFrmSHE_DEF_PSQ._ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                                              AIDPK    : LongInt = 0 ;
                                              ADEPK    : String  = '';
                                              AIDEV    : LongInt = 0 ;
                                              ACDEV    : Word    = 0 ;
                                              AFB_TB_PK: String  = '');
var
  idxForm: Integer;
begin
  if not Assigned(_Form) then
  begin
    _Form := TStringList.Create;
    _Form.Sorted := True;
  end;

  { Inicia pela pesquisa }
  _FormPesquisa := AFormPesquisa;

  if not _Form.Find(ClassName,idxForm) then
  idxForm := _Form.Add(ClassName);

  if ((TForm(AForm) = Nil) or (ACDEV = 1)) then
  TForm(AForm) := Self.Create (AOwner   ,
                               AIDPK    ,
                               ADEPK    ,
                               AIDEV    ,
                               ACDEV    ,
                               AFB_TB_PK);

  _Form.Objects[idxForm] := TObject(@AForm);

  if TForm(AForm).Tag <> 1976  then
  if AFormStyle <> fsStayOnTop then
  begin
    TForm(AForm).FormStyle := AFormStyle;

    if TForm(AForm).FormStyle = fsNormal then
    begin
      TForm(AForm).Visible := False;
      TForm(AForm).ShowModal;
    end else
    begin
      TForm(AForm).Visible := True;
      TForm(AForm).Show;
    end;
  end;
end;

Destructor TFrmSHE_DEF_PSQ.Destroy;
type
  PtrForm = ^TForm;
var
  idxForm: Integer;
begin
  Screen.Cursor := crAppStart;
  try
    if TForm(Self).Name <> EmptyStr then
    if Assigned(_Form) and _Form.Find(ClassName,idxForm) and (_Form.Objects[idxForm] <> Nil) then

       try
         { Eventos }
         try
           try
             EEvent.UnRegisterEvents;
           except
             on E: Exception do
             begin
               oErro(Application.Handle,'Falha ao tentar fechar eventos !'+#13+#13+
                                        'Error Code: '+E.Message+'.'      +#13+
                                         Caption+'.');
             end;
           end;

         finally
           try
             { Transação Principal }
             try
               oFTransact(TConsulta);
             except
               on E: Exception do
               begin
                 oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                          'Error Code: '+E.Message+'.'      +#13+
                                           Caption+'.');
               end;
             end;

           finally
             { record e afins }
             try
               Finalize(REC_SHE_DEF);
               FillChar(REC_SHE_DEF,SizeOf(REC_SHE_DEF),0);
             except
               on E: Exception do
               begin
                oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                         'Error Code: '+E.Message+'.'        +#13+
                                          Caption+'.');
               end;
             end;

             { record e afins }
             try
               oFREC_SHE_DEF(REC_SHE_DEF);
             except
               on E: Exception do
               begin
                oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                         'Error Code: '+E.Message+'.'        +#13+
                                          Caption+'.');
               end;
             end;

           end;
         end;

       finally
         PtrForm(_Form.Objects[idxForm])^ := Nil;
         _Form.Objects[idxForm] := Nil;
       end;
  finally
    Screen.Cursor := crDefault;
    inherited;
  end;
end;

procedure TFrmSHE_DEF_PSQ.FormCreate(Sender: TObject);
begin
REC_SHE_DEF.FPosition := poDesigned; { Posição }
  { GRANT USER }
  if REC_SHE_DEF.GAdmin then
  begin
    REC_SHE_DEF.GAppend := True;
    REC_SHE_DEF.GEdit   := True;
    REC_SHE_DEF.GDelete := True;
    REC_SHE_DEF.GView   := True;
    REC_SHE_DEF.GPrint  := True;
  end else
  if ((not REC_SHE_DEF.GView) and (not REC_SHE_DEF.GPrint)) then
  begin
    REC_SHE_DEF.GAppend := bPSQUSER('USU_NOVO',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GEdit   := bPSQUSER('USU_EDIT',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GDelete := bPSQUSER('USU_DELE',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GView   := bPSQUSER('USU_VISU',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GPrint  := bPSQUSER('USU_PRIN',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GAdmin  := bPSQUSER('USU_AUTO',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
  end;

  { ACCESS MANAGER }
  if not REC_SHE_DEF.GView then
  _GetForceClose := False;

  { ACCESS DENIED }
  if (FForceClose) and (RECParametros.STCX <> 'Caixa Aberto') then
  begin
    _GetCurrentAlert := FCurrentEvent    + #13 + #13 +
                       'ACESSO NEGADO !' + #13 +
                        RECParametros.STCX ;
  end else

  if (FForceClose) and (RECParametros.STCX = 'Caixa Aberto') then
  begin
    _GetCurrentAlert := FCurrentEvent    + #13 + #13 +
                       'ACESSO NEGADO !' + #13 +
                       'Usuário não Autorizado';
  end;

  { ACCESS ABORT }
  if FForceClose then
  begin
    oErro(Application.Handle,FCurrentAlert);

    Self.Visible := False;
    Self.Height  := 0;
    Self.Width   := 0;

    PostMessage(Handle, WM_CLOSE, 0, 0);
    Exit;
  end else
  PostMessage( Handle, WM_AFTER_CREATE, 0, 0);
end;

procedure TFrmSHE_DEF_PSQ.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_ACTIVATE      , 0, 0);
  PostMessage(Handle, SW_SHOWNOACTIVATE, 0, 0);
end;

procedure TFrmSHE_DEF_PSQ.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_SHOW      , 0, 0);
  PostMessage(Handle, WM_AFTER_SHOW, 0, 0);
end;

procedure TFrmSHE_DEF_PSQ.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  { VER ANTES DE SAIR }
end;

procedure TFrmSHE_DEF_PSQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action  := caFree;
  OnClose := Nil;
end;

procedure TFrmSHE_DEF_PSQ.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: Close; //ACTCancela.Execute;
       vk_return: if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);

       38       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext(ActiveControl,False,True);

       40       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);
       118      : { nothing };
       116      : { nothing };
  end;
end;

procedure TFrmSHE_DEF_PSQ.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #5 then
  {[Ctrl+E]} else
  if key = #8 then
  {[Ctrl+H]} else
  if key = #9 then
  {[Ctrl+I]} else
  if key = #16 then
  {[Ctrl+P]} else
  if key = #19 then
  {[Ctrl+S]} else
  if key = #22 then
  {[Ctrl+V]};
end;

procedure TFrmSHE_DEF_PSQ.FormPaint(Sender: TObject);
var
  AMainFormScreen: TRect;
begin
  if (not Showing) or (FForceClose) then
  Exit;

  { Ajusta o Form para o tamanho da area livre do MainForm }
  GetWindowRect(FrmPrincipal.ClientHandle,AMainFormScreen);

  REC_SHE_DEF.FTop    := AMainFormScreen.Top;
  REC_SHE_DEF.FBottom := AMainFormScreen.Bottom;
  REC_SHE_DEF.FLeft   := AMainFormScreen.Left;
  REC_SHE_DEF.FRight  := AMainFormScreen.Right;
  REC_SHE_DEF.FHeight := AMainFormScreen.Bottom;

  if REC_SHE_DEF.FPosition = poDesigned then
  begin
    if (HelpContext = 0) then { % da altura }
    if (AMainFormScreen.Bottom - AMainFormScreen.Top < Self.Height) then { Área livre menor que página }
    HelpContext := 95; { % }

    REC_SHE_DEF.FMainHeight := IFThen(Self.HelpContext     > 0,Trunc((REC_SHE_DEF.FHeight - REC_SHE_DEF.FTop ) * (Self.HelpContext     / 100)),0);
    REC_SHE_DEF.FMainWidth  := IFThen(Self.AlphaBlendValue > 0,Trunc((REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft) * (Self.AlphaBlendValue / 100)),0);

    if (REC_SHE_DEF.FTop > 0) and (REC_SHE_DEF.FLeft > 0) then
    begin
      Self.Top    := REC_SHE_DEF.FTop;
      Self.Left   := REC_SHE_DEF.FLeft;

      if Self.Top + Self.Height > REC_SHE_DEF.FBottom then
      begin
        Self.Top := Self.Top - ((Self.Top + Self.Height) - REC_SHE_DEF.FBottom);
      end;

      if Self.Left + Self.Width > REC_SHE_DEF.FRight then
      begin
        Self.Left := Self.Left - ((Self.Left + Self.Width) - REC_SHE_DEF.FRight);
      end;

    end else
    begin
      if REC_SHE_DEF.FMainHeight > 0 then Self.Height := REC_SHE_DEF.FMainHeight;
      if REC_SHE_DEF.FMainWidth  > 0 then Self.Width  := REC_SHE_DEF.FMainWidth;

      if FormStyle = fsNormal then
      begin
        Self.Top  := ( REC_SHE_DEF.FTop   + (REC_SHE_DEF.FHeight - Self.Height)) div 2;
        Self.Left := ((REC_SHE_DEF.FRight +  REC_SHE_DEF.FLeft)  - Self.Width)   div 2;
      end else
      //if (FHeight > 0) or (FWidth  > 0) then
      begin
        Self.Top  := ((REC_SHE_DEF.FBottom - REC_SHE_DEF.FTop ) - Self.Height) div 2;
        Self.Left := ((REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft) - Self.Width ) div 2;
      end;
    end;
  end else
  if (REC_SHE_DEF.FWorkArea) and (FormStyle = fsNormal) then
  begin
    Self.Top    := Screen.WorkAreaTop;
    Self.Left   := Screen.WorkAreaLeft;
    Self.Width  := Screen.WorkAreaWidth;
    Self.Height := Screen.WorkAreaHeight;
  end else
  if (REC_SHE_DEF.FMainArea) and (FormStyle = fsNormal) then
  begin
    Self.Top    := 0;
    Self.Left   := 0;
    Self.Width  := REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft - 5;
    Self.Height := REC_SHE_DEF.FHeight - REC_SHE_DEF.FTop  - 5;
  end else
  if REC_SHE_DEF.FPosition = poDefault then
  begin
    Self.Top    := IFThen(FormStyle = fsNormal,REC_SHE_DEF.FTop ,0);
    Self.Left   := IFThen(FormStyle = fsNormal,REC_SHE_DEF.FLeft,0);
    Self.Width  := IFThen(REC_SHE_DEF.FPosition = poDefault,REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft - 5,0);
    Self.Height := IFThen(REC_SHE_DEF.FPosition = poDefault,REC_SHE_DEF.FHeight - REC_SHE_DEF.FTop  - 5,0);
  end;
end;

procedure TFrmSHE_DEF_PSQ.FormResize(Sender: TObject);
begin
  if (not Showing) or (FForceClose) then
  Exit;

  { Risize }
  PostMessage(Handle, WM_ENTERSIZEMOVE , 0, 0); { Before }
  PostMessage(Handle, WM_EXITSIZEMOVE  , 0, 0); { After }
end;

procedure TFrmSHE_DEF_PSQ._SetDockControl (const AValue: TdxCustomDockControl; AXYPos: Integer = 0; ADirection: TDirection = lNone; ARepeat: boolean = False; AUpdateZones: Boolean = False);
var
  FUpdateZones: Boolean;
begin
  FUpdateZones := AUpdateZones;
  
  if AValue <> Nil then
  begin
    if FDockControl <> AValue then
       FDockControl := AValue;

    TdxCustomDockControl(AValue).Tag     := AXYPOS;
    TdxCustomDockControl(AValue).Visible := not (TdxCustomDockControl(AValue).Tag = 0);

    if ADirection = lVertical then
    begin
      //if AUpdateZones then
      //   FUpdateZones := (TdxCustomDockControl(AValue).Height <> TdxCustomDockControl(AValue).Tag);

      if ARepeat then
      begin
        repeat  TdxCustomDockControl(AValue).Height := TdxCustomDockControl(AValue).Tag;
        until   TdxCustomDockControl(AValue).Tag     = TdxCustomDockControl(AValue).Height;
      end else
      begin
        TdxCustomDockControl(AValue).Height := TdxCustomDockControl(AValue).Tag;
      end;
    end else

    if ADirection = lHorizontal then
    begin
      //if AUpdateZones then
      //   FUpdateZones := (TdxCustomDockControl(AValue).Width <> TdxCustomDockControl(AValue).Tag);

      if ARepeat then
      begin
        repeat  TdxCustomDockControl(AValue).Width := TdxCustomDockControl(AValue).Tag;
        until   TdxCustomDockControl(AValue).Tag    = TdxCustomDockControl(AValue).Width;
      end else
      begin
        TdxCustomDockControl(AValue).Width := TdxCustomDockControl(AValue).Tag;
      end;
    end;
    
    if FUpdateZones then
    AValue.OnUpdateDockZones(AValue,Avalue.DockZones);
    AValue.Repaint;
  end;
end;

procedure TFrmSHE_DEF_PSQ.VCDSPrincipal1RodapeLEUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  i: Word;
begin
  i := 1;
  if (Showing) and (VCDSPrincipal1RodapeLE.HelpContext = 0) then
  repeat
    VCDSPrincipal1RodapeLE.HelpContext := 1;

    Sender.Width  := VCDSPrincipal1RodapeLE.Width;
    Sender.Height := VCDSPrincipal1RodapeLE.Height;
    Sender.Repaint;
  until
    i <= 1;
end;

procedure TFrmSHE_DEF_PSQ.TCDSPrincipal1RodapeLEUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  i: Word;
begin
  i := 1;
  if (Showing) and (TCDSPrincipal1RodapeLE.HelpContext = 0) then
  repeat
    TCDSPrincipal1RodapeLE.HelpContext := 1;

    Sender.Width  := VCDSPrincipal1RodapeLE.Width;
    Sender.Height := VCDSPrincipal1RodapeLE.Height;
    Sender.Repaint;
  until
    i <= 1;
end;

procedure TFrmSHE_DEF_PSQ.DPPrincipal1RodapeLEBUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  i: Word;
begin
  i := 1;
  if (Showing) and (DPPrincipal1RodapeLEB.HelpContext = 0) then
  repeat
    DPPrincipal1RodapeLEB.HelpContext := 1;

    Sender.Width  := VCDSPrincipal1RodapeLE.Width;
    Sender.Height := Sender.Tag;
    Sender.Repaint;
  until
    i <= 1;
end;

procedure TFrmSHE_DEF_PSQ.TCDSPrincipal1RodapeUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  I: Integer;
begin
  if (Showing) and (TCDSPrincipal1Rodape.HelpContext = 0) then
  begin
    TCDSPrincipal1Rodape.HelpContext := 1;
    I := 0;
    while I < AZones.Count do
    begin
      Sender.Width  := Sender.Width  - 1;
      Sender.Height := Sender.Height - 1;
      Sender.Repaint;

      Inc(I);
    end;

    TCDSPrincipal.Tag := 1;
  end;
end;

procedure TFrmSHE_DEF_PSQ.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Consulta);
end;

procedure TFrmSHE_DEF_PSQ.ACTMAppendExecute(Sender: TObject);
begin
  if (not ACTMAppend.Enabled) or (not ACTMAppend.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PSQ.ACTMEditExecute(Sender: TObject);
begin
  if (not ACTMEdit.Enabled) or (not ACTMEdit.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PSQ.ACTMDeleteExecute(Sender: TObject);
begin
  if (not ACTMDelete.Enabled) or (not ACTMDelete.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PSQ.ACTMPostExecute(Sender: TObject);
begin
  if (not ACTMPost.Enabled) or (not ACTMPost.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PSQ.ACTMCancelExecute(Sender: TObject);
begin
  if (not ACTMCancel.Enabled) or (not ACTMCancel.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PSQ.ACTSaidaExecute(Sender: TObject);
begin
  REC_SHE_DEF.FB_PSQ_OK := False;
  Close;
end;

procedure TFrmSHE_DEF_PSQ.ACTEAppendExecute(Sender: TObject);
begin
  if (not ACTEAppend.Enabled) or (not ACTEAppend.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PSQ.ACTEEditExecute(Sender: TObject);
begin
  if (not ACTEEdit.Enabled) or (not ACTEEdit.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PSQ.ACTEDeleteExecute(Sender: TObject);
begin
  if (not ACTEDelete.Enabled) or (not ACTEDelete.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PSQ.ACTEPostExecute(Sender: TObject);
begin
  if (not ACTEPost.Enabled) or (not ACTEPost.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PSQ.ACTECancelExecute(Sender: TObject);
begin
  if (not ACTECancel.Enabled) or (not ACTECancel.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PSQ.ACTPesquisaExecute(Sender: TObject);
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
  REC_SHE_DEF.FB_NO_ED_PAD := BLBPSQ_CAD_MENU.Description; { Campo }
  REC_SHE_DEF.FB_VD_ED_PAD := BEPSQ_CAD.Text;
  REC_SHE_DEF.FB_VD_ED_PK  := BEPSQ_CAD.Text;
  REC_SHE_DEF.FB_VD_ED_FK  := EmptyStr;

  { ÂNCORAS PRINCIPAIS }
  { Situações }
  REC_SHE_DEF.DEST       := EmptyStr; { Descrição }
  REC_SHE_DEF.STFI := EmptyStr; { Descrição Abreviada }

  { Empresas }
  REC_SHE_DEF.EP_NO := EmptyStr; { Empresa }
  REC_SHE_DEF.CF_NO := EmptyStr; { Fabricante }

  { Produtos }
  REC_SHE_DEF.ARTIGO := EmptyStr; { Artigo }
  REC_SHE_DEF.SKU    := EmptyStr; { SKU }
  REC_SHE_DEF.NCM    := EmptyStr; { NCM }
  REC_SHE_DEF.GRADE   := EmptyStr; { Grade }
  REC_SHE_DEF.DESCRICAO   := EmptyStr; { Nome / Descrição }
  REC_SHE_DEF.COMPOSICAO   := EmptyStr; { Composição }

  { Lista Digitada }
  if REC_SHE_DEF.LISTA = Nil then
  REC_SHE_DEF.LISTA := TStringList.Create else
  REC_SHE_DEF.LISTA.Clear;

  if (REC_SHE_DEF.FB_VD_ED_PAD <> EmptyStr) and (REC_SHE_DEF.FB_VD_ED_PAD <> '0') then
  begin
    { SEARCH DEFAULT }
    REC_SHE_DEF.FB_PSQ_PAD := False; { Padrão }

    { Capturar as palavras separadamente }
    While Length(REC_SHE_DEF.FB_VD_ED_PAD) > 0 do
    begin
      REC_SHE_DEF.FB_VD_ED_FK := Trim(Fetch(REC_SHE_DEF.FB_VD_ED_PAD    ,' '));
      REC_SHE_DEF.FB_VD_ED_FK := oStrTran(REC_SHE_DEF.FB_VD_ED_FK, '+' ,' ');
      REC_SHE_DEF.LISTA.Add(REC_SHE_DEF.FB_VD_ED_FK);

      with SQLConsulta do
      begin
        { Descrição Situação }
        if (REC_SHE_DEF.DEST = EmptyStr) and (REC_SHE_DEF.FB_VD_ED_FK <> EmptyStr) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT FIRST 1 FK.ID FROM TAB_STA_PED AS FK');
          SQL.Add('WHERE  FK.DESCRICAO LIKE ''' + REC_SHE_DEF.FB_VD_ED_FK + '%''');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.DEST := REC_SHE_DEF.FB_VD_ED_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.FB_VD_ED_PK := oStrTran(REC_SHE_DEF.FB_VD_ED_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.FB_VD_ED_PK := oStrTran(REC_SHE_DEF.FB_VD_ED_PK,REC_SHE_DEF.FB_VD_ED_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.LISTA.Delete(REC_SHE_DEF.LISTA.IndexOf(REC_SHE_DEF.FB_VD_ED_FK)); { Array }
            REC_SHE_DEF.FB_VD_ED_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;

        { Situação Abreviada }
        if (REC_SHE_DEF.DEST = EmptyStr) and (REC_SHE_DEF.STFI = EmptyStr) and (REC_SHE_DEF.FB_VD_ED_FK <> EmptyStr) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT FIRST 1 FK.ID FROM TAB_STA_PED AS FK');
          SQL.Add('WHERE  FK.ABREV LIKE ''' + REC_SHE_DEF.FB_VD_ED_FK + '%''');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.STFI := REC_SHE_DEF.FB_VD_ED_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.FB_VD_ED_PK := oStrTran(REC_SHE_DEF.FB_VD_ED_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.FB_VD_ED_PK := oStrTran(REC_SHE_DEF.FB_VD_ED_PK,REC_SHE_DEF.FB_VD_ED_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.LISTA.Delete(REC_SHE_DEF.LISTA.IndexOf(REC_SHE_DEF.FB_VD_ED_FK)); { Array }
            REC_SHE_DEF.FB_VD_ED_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;

        { Revendedor }
        if (REC_SHE_DEF.EP_NO = EmptyStr) and (Length(REC_SHE_DEF.FB_VD_ED_FK) > 3) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT FIRST 1 FK.ID FROM TAB_PAR_SIS AS FK');
          SQL.Add('WHERE  FK.FANTASIA LIKE ''' + REC_SHE_DEF.FB_VD_ED_FK + '%''');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.FB_PSQ_SUB := True; { Sub Query }
            REC_SHE_DEF.EP_NO := REC_SHE_DEF.FB_VD_ED_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.FB_VD_ED_PK := oStrTran(REC_SHE_DEF.FB_VD_ED_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.FB_VD_ED_PK := oStrTran(REC_SHE_DEF.FB_VD_ED_PK,REC_SHE_DEF.FB_VD_ED_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.LISTA.Delete(REC_SHE_DEF.LISTA.IndexOf(REC_SHE_DEF.FB_VD_ED_FK)); { Array }
            REC_SHE_DEF.FB_VD_ED_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;

        { Fabricante }
        if (REC_SHE_DEF.CF_NO = EmptyStr) and (Length(REC_SHE_DEF.FB_VD_ED_FK) > 3) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT   FIRST 1 FK.ID FROM CAD_FOR AS FK');
          SQL.Add('WHERE    FK.FANTASIA LIKE ''' + REC_SHE_DEF.FB_VD_ED_FK + '%''');
          SQL.Add('ORDER BY FK.DTEV DESC');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.FB_PSQ_SUB := True; { Sub Query }
            REC_SHE_DEF.CF_NO := REC_SHE_DEF.FB_VD_ED_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.FB_VD_ED_PK := oStrTran(REC_SHE_DEF.FB_VD_ED_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.FB_VD_ED_PK := oStrTran(REC_SHE_DEF.FB_VD_ED_PK,REC_SHE_DEF.FB_VD_ED_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.LISTA.Delete(REC_SHE_DEF.LISTA.IndexOf(REC_SHE_DEF.FB_VD_ED_FK)); { Array }
            REC_SHE_DEF.FB_VD_ED_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;

        { Artigo }
        if (REC_SHE_DEF.ARTIGO = EmptyStr) and (REC_SHE_DEF.FB_VD_ED_FK <> EmptyStr) then
        if (Pos('.',REC_SHE_DEF.FB_VD_ED_FK) > 0) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT   FIRST 1 FK.ID FROM CAD_PRO AS FK');
          SQL.Add('WHERE    FK.ARTIGO LIKE ''' + REC_SHE_DEF.FB_VD_ED_FK + '%''');
          SQL.Add('ORDER BY FK.DTEV DESC');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.FB_PSQ_SUB        := True; { Sub Query }
            REC_SHE_DEF.ARTIGO := REC_SHE_DEF.FB_VD_ED_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.FB_VD_ED_PK := oStrTran(REC_SHE_DEF.FB_VD_ED_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.FB_VD_ED_PK := oStrTran(REC_SHE_DEF.FB_VD_ED_PK,REC_SHE_DEF.FB_VD_ED_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.LISTA.Delete(REC_SHE_DEF.LISTA.IndexOf(REC_SHE_DEF.FB_VD_ED_FK)); { Array }
            REC_SHE_DEF.FB_VD_ED_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;

        { SKU }
        if (REC_SHE_DEF.SKU = EmptyStr) and (REC_SHE_DEF.FB_VD_ED_FK <> EmptyStr) then
        if (Pos('.',REC_SHE_DEF.FB_VD_ED_FK) > 0) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT   FIRST 1 FK.ID FROM CAD_PRO AS FK');
          SQL.Add('WHERE    FK.SKU  LIKE ''' + REC_SHE_DEF.FB_VD_ED_FK + '%''');
          SQL.Add('ORDER BY FK.DTEV DESC');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.FB_PSQ_SUB     := True; { Sub Query }
            REC_SHE_DEF.SKU := REC_SHE_DEF.FB_VD_ED_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.FB_VD_ED_PK := oStrTran(REC_SHE_DEF.FB_VD_ED_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.FB_VD_ED_PK := oStrTran(REC_SHE_DEF.FB_VD_ED_PK,REC_SHE_DEF.FB_VD_ED_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.LISTA.Delete(REC_SHE_DEF.LISTA.IndexOf(REC_SHE_DEF.FB_VD_ED_FK)); { Array }
            REC_SHE_DEF.FB_VD_ED_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;

        { NCM }
        if (REC_SHE_DEF.NCM = EmptyStr) and (Length(REC_SHE_DEF.FB_VD_ED_FK) > 3) then
        if (Pos('.',REC_SHE_DEF.FB_VD_ED_FK) > 0) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT   FIRST 1 FK.ID FROM CAD_PRO AS FK');
          SQL.Add('WHERE    FK.NCM  LIKE ''' + REC_SHE_DEF.FB_VD_ED_FK + '%''');
          SQL.Add('ORDER BY FK.DTEV DESC');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.FB_PSQ_SUB     := True; { Sub Query }
            REC_SHE_DEF.NCM := REC_SHE_DEF.FB_VD_ED_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.FB_VD_ED_PK := oStrTran(REC_SHE_DEF.FB_VD_ED_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.FB_VD_ED_PK := oStrTran(REC_SHE_DEF.FB_VD_ED_PK,REC_SHE_DEF.FB_VD_ED_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.LISTA.Delete(REC_SHE_DEF.LISTA.IndexOf(REC_SHE_DEF.FB_VD_ED_FK)); { Array }
            REC_SHE_DEF.FB_VD_ED_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;

        { Grade }
        if (REC_SHE_DEF.GRADE = EmptyStr) and (Length(REC_SHE_DEF.FB_VD_ED_FK) > 3) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT   FIRST 1 FK.ID FROM CAD_PRO AS FK');
          SQL.Add('WHERE    FK.DGCP CONTAINING ''' + REC_SHE_DEF.FB_VD_ED_FK + '''');
          SQL.Add('ORDER BY FK.DTEV DESC');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.FB_PSQ_SUB      := True; { Sub Query }
            REC_SHE_DEF.GRADE := REC_SHE_DEF.FB_VD_ED_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.FB_VD_ED_PK := oStrTran(REC_SHE_DEF.FB_VD_ED_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.FB_VD_ED_PK := oStrTran(REC_SHE_DEF.FB_VD_ED_PK,REC_SHE_DEF.FB_VD_ED_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.LISTA.Delete(REC_SHE_DEF.LISTA.IndexOf(REC_SHE_DEF.FB_VD_ED_FK)); { Array }
            REC_SHE_DEF.FB_VD_ED_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;

        { Nome / Descrição }
        if (REC_SHE_DEF.DESCRICAO = EmptyStr) and (Length(REC_SHE_DEF.FB_VD_ED_FK) > 3) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT   FIRST 1 FK.ID FROM CAD_PRO AS FK');
          SQL.Add('WHERE    FK.DECP CONTAINING ''' + REC_SHE_DEF.FB_VD_ED_FK + '''');
          SQL.Add('ORDER BY FK.DTEV DESC');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.FB_PSQ_SUB      := True; { Sub Query }
            REC_SHE_DEF.DESCRICAO := REC_SHE_DEF.FB_VD_ED_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.FB_VD_ED_PK := oStrTran(REC_SHE_DEF.FB_VD_ED_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.FB_VD_ED_PK := oStrTran(REC_SHE_DEF.FB_VD_ED_PK,REC_SHE_DEF.FB_VD_ED_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.LISTA.Delete(REC_SHE_DEF.LISTA.IndexOf(REC_SHE_DEF.FB_VD_ED_FK)); { Array }
            REC_SHE_DEF.FB_VD_ED_FK := EmptyStr; { Sub Pesquisa }
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

      SQL.Add('FROM ' + oREPZero('VW_PSQ_SHE_DEF_PSQ','_',RECParametros.EP_ID_VW,3) + ' AS PK');

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
      if REC_SHE_DEF.DEST <> EmptyStr then
      begin
        SQL.Add(IFThen(Pos('WHERE',Consulta.SQL.Text) = 0,'WHERE','AND'));
        SQL.Add('PK.DEST LIKE ''' + REC_SHE_DEF.DEST + '%''');
      end;

      { Situação Abreviada }
      if REC_SHE_DEF.STFI <> EmptyStr then
      begin
        SQL.Add(IFThen(Pos('WHERE',Consulta.SQL.Text) = 0,'WHERE','AND'));
        SQL.Add('PK.STFI LIKE ''' + REC_SHE_DEF.STFI + '%''');
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

      if REC_SHE_DEF.LISTA.Count = 0 then
         SQL.Add('SELECT PK.* FROM PK') else
      begin
        { Âncora Principal }
        { Pedido }
        SQL.Add('SELECT PK.* FROM PK');
        SQL.Add('WHERE  PK.DEPK LIKE ''' + REC_SHE_DEF.LISTA.Strings[0] + '%''');

        for i := 0 to REC_SHE_DEF.LISTA.Count - 1 do
        begin
          { Apenas Números }
          if oBSONumero(REC_SHE_DEF.LISTA.Strings[i]) then
          begin
            { Romaneios }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.CDRO = ''' + REC_SHE_DEF.LISTA.Strings[i] + '''');

            { Nota Fiscais }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.CDNF = ''' + REC_SHE_DEF.LISTA.Strings[i] + '''');

            { CNPJ Cliente }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.CD_CNPJ LIKE ''' + REC_SHE_DEF.LISTA.Strings[i] + '%''');
          end else

          { Outros }
          begin
            { Cliente }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.DECD CONTAINING ''' + REC_SHE_DEF.LISTA.Strings[i] + '''');

            { Grupo Comercial }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.GPCD LIKE ''' + REC_SHE_DEF.LISTA.Strings[i] + '%''');

            { Vendedor }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.DECV LIKE ''' + REC_SHE_DEF.LISTA.Strings[i] + '%''');

            { Representante }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.ABCR LIKE ''' + REC_SHE_DEF.LISTA.Strings[i] + '%''');

            { Transportadora }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.DECT CONTAINING ''' + REC_SHE_DEF.LISTA.Strings[i] + '''');

            { Separador }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.LGSP LIKE ''' + REC_SHE_DEF.LISTA.Strings[i] + '%''');

            { Tipo Pedido }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.STPD LIKE ''' + REC_SHE_DEF.LISTA.Strings[i] + '%''');

            { Tipo Cobrança }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.STCO LIKE ''' + REC_SHE_DEF.LISTA.Strings[i] + '%''');

            { Crédito }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.RECO LIKE ''' + REC_SHE_DEF.LISTA.Strings[i] + '%''');

            { Prazo }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.PRZ_DEPG CONTAINING ''' + REC_SHE_DEF.LISTA.Strings[i] + '''');
          end;
        end;
      end;

      SQL.Add(')'); { CTE FIM }

      { CTE SELECT }
      SQL.Add('SELECT PK.* FROM CTE_PSQ AS PK');

      { Sub Query }
      if REC_SHE_DEF.FB_PSQ_SUB then
      begin
        SQL.Add('WHERE EXISTS');
        SQL.Add('(');

        SQL.Add('SELECT FK.IDPK FROM ' + oREPZero('VW_PSQ_PED_PDV_ITE','_',RECParametros.EP_ID_VW,3) + ' AS FK');
        SQL.Add('WHERE  FK.IDPK = PK.IDPK');

        { Revendedor }
        if REC_SHE_DEF.EP_NO <> EmptyStr then
           SQL.Add('AND FK.CP_DEEP LIKE ''' + REC_SHE_DEF.EP_NO + '%''');

        { Fabricante }
        if REC_SHE_DEF.CF_NO <> EmptyStr then
           SQL.Add('AND FK.DECF LIKE ''' + REC_SHE_DEF.CF_NO + '%''');

        { Artigo }
        if REC_SHE_DEF.ARTIGO <> EmptyStr then
           SQL.Add('AND FK.ARTIGO LIKE ''' + REC_SHE_DEF.ARTIGO + '%''');

        { SKU }
        if REC_SHE_DEF.SKU <> EmptyStr then
           SQL.Add('AND FK.SKU LIKE ''' + REC_SHE_DEF.SKU + '%''');

        { NCM }
        if REC_SHE_DEF.NCM <> EmptyStr then
           SQL.Add('AND FK.FIS_NCM LIKE ''' + REC_SHE_DEF.NCM + '%''');

        { Grade }
        if REC_SHE_DEF.GRADE <> EmptyStr then
           SQL.Add('AND FK.DGCP CONTAINING ''' + REC_SHE_DEF.GRADE + '''');

        { Nome / Descrição }
        if REC_SHE_DEF.DESCRICAO <> EmptyStr then
           SQL.Add('AND FK.DECP CONTAINING ''' + REC_SHE_DEF.DESCRICAO + '''');

        { Composição }
        if REC_SHE_DEF.COMPOSICAO <> EmptyStr then
           SQL.Add('AND FK.DCCP CONTAINING ''' + REC_SHE_DEF.COMPOSICAO + '''');

        SQL.Add(')');
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
//    if (DPPrincipal1RodapeLEB.Height <> 75) and (PED_PDV_ITEC_INFADPRC.AsString <> EmptyStr) then
//     _SetDockControl(DPPrincipal1RodapeLEB,75,lVertical,True,True) else

//     if PED_PDV_ITEC_INFADPRC.AsString <> EmptyStr then

//    _SetDockControl(DPPrincipal1RodapeLEB,30,lVertical,True,True);

    { CONSULTA }
    DBGConsulta.Filter.Clear; { Filters }
//    DBGConsultaDEPK.Field.FocusControl; { Focused }

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

procedure TFrmSHE_DEF_PSQ.ACTPSQ_OKExecute(Sender: TObject);
begin
  if ACTPesquisa.Enabled then
  begin
    if Sender.ClassType = TdxBarLargeButton then
    begin
      BLBPSQ_CAD_MENU.Description := TdxBarLargeButton(Sender).Description;
      BLBPSQ_CAD_MENU.Caption     := TdxBarLargeButton(Sender).Caption;
      BLBPSQ_CAD_MENU.Hint        := TdxBarLargeButton(Sender).Hint;
      BLBPSQ_CAD_MENU.Tag         := TdxBarLargeButton(Sender).Tag;

      BEPSQ_CAD.SetFocus(False);
    end;

    if Sender.ClassType = TdxBarButton then
    begin
      BBPSQ_PER_MENU.Description := TdxBarButton(Sender).Description;
      BBPSQ_PER_MENU.Caption     := TdxBarButton(Sender).Caption;
      BBPSQ_PER_MENU.Hint        := TdxBarButton(Sender).Hint;
      BBPSQ_PER_MENU.Tag         := TdxBarButton(Sender).Tag;
    end;

    if ((BEPSQ_CAD.Text = EmptyStr) and
       ((BDPSQ_PER_INI.Date <= 0  ) or (BDPSQ_PER_FIM.Date <= 0))) then
    Abort;

    if BDPSQ_PER_FIM.Date > 0 then
    if BDPSQ_PER_INI.Date > BDPSQ_PER_FIM.Date then
       oException(Nil,'DATA INICIAL não pode ser maior que DATA FINAL !');

    ACTPesquisa.Execute;
  end;
end;

procedure TFrmSHE_DEF_PSQ.ACTPSQ_FOCUSExecute(Sender: TObject);
begin
  if (ACTPesquisa.Enabled) and (BEPSQ_CAD.Enabled) then
  BEPSQ_CAD.SetFocus(False);
end;

procedure TFrmSHE_DEF_PSQ.BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    BEPSQ_CAD.Text := Trim(BEPSQ_CAD.Text);
    with REC_SHE_DEF do
    begin
      if oBSONumero(BEPSQ_CAD.Text) then
      begin
        FB_PSQ_WHERE := ' = ';
        FB_PSQ_LKPK  := '''' ;
        FB_PSQ_LKFK  := '''' ;
      end else
      begin
        if (Pos('.',BEPSQ_CAD.Text) = 0) and
           (BEPSQ_CAD.Text <> 'AG'     ) and
           (BEPSQ_CAD.Text <> 'BLQ'    ) and
           (BEPSQ_CAD.Text <> 'FAT'    ) and
           (BEPSQ_CAD.Text <> 'FIM'    ) and
           (BEPSQ_CAD.Text <> 'FEC'    ) then
        begin
          if (BEPSQ_CAD.Text <> EmptyStr) and (Length(BEPSQ_CAD.Text) < 3) then
              oException(Nil,'Mínimo de 3 caracteres para prosseguir com a pesquisa !');

          if (BEPSQ_CAD.Text <> EmptyStr) and (Length(BEPSQ_CAD.Text) < 5) then
              oAviso(Application.Handle,'Pesquisas com pouco conteúdo infomado ...' + #13 +
                                        'tem impacto direto na velocidade das informações obtidas.');
        end;

        FB_PSQ_WHERE := ' LIKE ';
        FB_PSQ_LKPK  := '''' ;
        FB_PSQ_LKFK  := '%''';
      end;
    end;

    ACTPSQ_OK.Execute;
  end else

  if key = VK_DOWN then
  begin
    if (ACTPesquisa.Enabled) and (BEPSQ_CAD.Enabled) and (DBGConsulta.Enabled) then
    begin
      PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(DBGConsulta).SetFocus;
    end;
  end else

  if key = vk_escape then
  ACTSaida.Execute;
end;

procedure TFrmSHE_DEF_PSQ.BEPSQ_CADCurChange(Sender: TObject);
begin
  BEPSQ_CAD.Text := BEPSQ_CAD.CurText;
end;

procedure TFrmSHE_DEF_PSQ.BDPSQ_PER_INICurChange(Sender: TObject);
begin
  BDPSQ_PER_INI.Date := BDPSQ_PER_INI.CurDate;
end;

procedure TFrmSHE_DEF_PSQ.BDPSQ_PER_FIMCurChange(Sender: TObject);
begin
  BDPSQ_PER_FIM.Date := BDPSQ_PER_FIM.CurDate;
end;

procedure TFrmSHE_DEF_PSQ.ACTExecEventExecute(Sender: TObject);
var
  i: word;
begin
  if REC_SHE_DEF.FB_Event = EmptyStr then
  begin
    if not ALockWindowUpdate then
    oRefresh(Consulta);
  end else  

  try
    oOTransact(TEvent);

    { Admin }
    SPEvent.Close;
    SPEvent.StoredProcName := 'SP_SHE_EVE_ADM';
    SPEvent.Prepare;

    for i := 0 to SPEvent.ParamCount - 1 do
    SPEvent.Params[i].Value := Null;

    SPEvent.Params[0].Value := REC_SHE_DEF.FB_EVE_ADM;
    SPEvent.ExecProc;

    { Padrão }
    SPEvent.Close;
    SPEvent.StoredProcName := 'SP_SHE_EVE_PAD';
    SPEvent.Prepare;

    for i := 0 to SPEvent.ParamCount - 1 do
    SPEvent.Params[i].Value := Null;

    SPEvent.Params[0].Value := REC_SHE_DEF.FB_EVE_PAD;
    SPEvent.ExecProc;

    oCTransact(TEvent);
  except
    on E: Exception do
    begin
      oCTransact(TEvent,ltRollback);
      oErro(Application.Handle,'Falha ao tentar executar evento !' + #13 +
                                REC_SHE_DEF.FB_Event   + '.' + #13 + #13 +
                                E.Message              + '.');
    end;
  end;
end;

procedure TFrmSHE_DEF_PSQ.EEventEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  oRefresh(Consulta);
end;

end.
