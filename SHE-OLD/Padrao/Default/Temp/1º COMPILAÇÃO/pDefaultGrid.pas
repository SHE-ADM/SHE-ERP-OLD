unit pDefaultGrid;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc, math, StrUtils,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, dxDBELib, dxExEdtr, rxSpeedbar,
  IBSQL, cxGraphics, cxControls, dxStatusBar, dxPageControl, dxBar,
  dxBarExtItems, dxsbar, dxDockPanel, dxDockControl, ActnList,
  XPStyleActnCtrls, ActnMan, IDGlobal;

type
  TFrmDefaultGrid = class(TForm)
    DTSEdicao: TDataSource;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    BMMain: TdxBarManager;
    BLBRefresh: TdxBarLargeButton;
    BLBSaida: TdxBarLargeButton;
    DMMain: TdxDockingManager;
    ALMain: TActionList;
    ACTAppend: TAction;
    ACTEdit: TAction;
    ACTDelete: TAction;
    ACTRefresh: TAction;
    ACTSaida: TAction;
    BLBRelatorios: TdxBarLargeButton;
    ACTRelatorios: TAction;
    BLBAppend: TdxBarLargeButton;
    BLBEdit: TdxBarLargeButton;
    BLBDelete: TdxBarLargeButton;
    SQLConsulta: TIBSQL;
    TConsulta: TIBTransaction;
    ILMenu: TImageList;
    PNLPrincipal: TPanel;
    DSConsulta: TdxDockSite;
    LDSConsulta: TdxLayoutDockSite;
    DPConsulta: TdxDockPanel;
    PNLConsulta: TPanel;
    PNLConsultaGrid: TPanel;
    PNLConsultaME: TPanel;
    PNLConsultaTOP: TPanel;
    PNLConsultaBOT: TPanel;
    PNLConsultaMD: TPanel;
    DBGConsulta: TdxDBGrid;
    SBRodape: TdxStatusBar;
    DPMenu: TdxDockPanel;
    TCDSConsulta: TdxTabContainerDockSite;
    BBPesquisa: TdxBarButton;
    BEPesquisa: TdxBarEdit;
    BLBPesquisa_Rapida: TdxBarLargeButton;
    PMPesquisa: TdxBarPopupMenu;
    ACTPesquisa_Rapida: TAction;
    Edicao: TIBDataSet;
    SQLFKEdicao: TIBSQL;
    SQLFKConsulta: TIBSQL;
    BLBSalva: TdxBarLargeButton;
    ACTSalva: TAction;
    DSEdicao: TdxDockSite;
    DPEdicao: TdxDockPanel;
    dxLayoutDockSite1: TdxLayoutDockSite;
    SBEdicao: TSpeedBar;
    SSEdicao: TSpeedbarSection;
    SIAppend: TSpeedItem;
    SIEdit: TSpeedItem;
    SIDelete: TSpeedItem;
    SIPost: TSpeedItem;
    SICancel: TSpeedItem;
    ACTCancel: TAction;
    ACTPost: TAction;
    BLBPost: TdxBarLargeButton;
    BLBCancel: TdxBarLargeButton;
    PNLPrincipalBOT: TPanel;
    EEventAdmin: TIBEvents;
    ACTExecEvent: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGConsultaBackgroundDrawEvent(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect);
    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure ACTRefreshExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure ACTAppendExecute(Sender: TObject);
    procedure ACTEditExecute(Sender: TObject);
    procedure ACTDeleteExecute(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTPesquisa_RapidaExecute(Sender: TObject);
    procedure BEPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdicaoAfterOpen(DataSet: TDataSet);
    procedure EdicaoBeforeOpen(DataSet: TDataSet);
    procedure EdicaoAfterDelete(DataSet: TDataSet);
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure EdicaoBeforeCancel(DataSet: TDataSet);
    procedure EdicaoBeforeDelete(DataSet: TDataSet);
    procedure EdicaoBeforeEdit(DataSet: TDataSet);
    procedure EdicaoBeforeInsert(DataSet: TDataSet);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure EdicaoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EdicaoUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure DTSEdicaoStateChange(Sender: TObject);
procedure EdicaoDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure ACTSalvaExecute(Sender: TObject);
    procedure ACTCancelExecute(Sender: TObject);
    procedure ACTPostExecute(Sender: TObject);
    procedure DBGConsultaDblClick(Sender: TObject);
    procedure ACTExecEventExecute(Sender: TObject);
    procedure EEventAdminEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    FCurrentEvent,
    FCurrentAlert: String;
    FForceClose  : Boolean;

    { método para atribuição\validação de valor }
    procedure _SetCurrentEvent(const AValue: String);
    procedure _SetCurrentAlert(const AValue: String);
    procedure _SetForceClose  (const AValue: Boolean);
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

    Constructor Create(AOwner    : TComponent;
                 const AIDPK     : LongInt = 0 ;
                       ADEPK     : String  = '';
                       AIDEV     : LongInt = 0 ;
                       ACDEV     : Word    = 0 ;
                       AFB_TB_PK : String  = '';
                       AFB_GETSQL: String  = ''); reintroduce; overload;

    class procedure _ExecForm(AOwner    : TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                              AIDPK     : LongInt = 0 ;
                              ADEPK     : String  = '';
                              AIDEV     : LongInt = 0 ;
                              ACDEV     : Word    = 0 ;
                              AFB_TB_PK : String  = '';
                              AFB_GETSQL: String = '');

    Destructor  Destroy; override;
  end;

var
  FrmDefaultGrid: TFrmDefaultGrid;

  _Form: TStringList = Nil;
  _FormPesquisa: Boolean;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmDefaultGrid._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmDefaultGrid._SetCurrentAlert(const AValue: String);
begin
  FCurrentAlert := AValue;
end;

procedure TFrmDefaultGrid._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

procedure TFrmDefaultGrid._WM_CREATE(var Msg: TMessage);
begin
  { FORM SCREEN }
  Screen.Cursor := crAppStart;
  Randomize;

  { INICIALIZAÇÃO DOS OBJETOS DECLARADOS }
end;

procedure TFrmDefaultGrid._WM_AFTER_CREATE(var Msg: TMessage);
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
end;

procedure TFrmDefaultGrid._WM_ACTIVATE(var Msg: TMessage);
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

procedure TFrmDefaultGrid._SW_SHOWNOACTIVATE(var Msg: TMessage);
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

procedure TFrmDefaultGrid._WM_SHOW(var Msg: TMessage);
begin
  { FORM SHOW }
  Screen.Cursor := crHourGlass;
  REC_SHE_DEF.FResize := 0; { FORM RESIZE }

  { INICIALIZAÇÃO DE TRANSAÇÕES }
  oOTransact(TConsulta); { Consultas }

  { TABELAS }
  { EDIÇÕES }
end;

procedure TFrmDefaultGrid._WM_AFTER_SHOW(var Msg: TMessage);
begin
  { FORM SHOW }
  Screen.Cursor := crHourGlass;
  REC_SHE_DEF.FResize := 0; { FORM RESIZE }

  { INICIALIZAÇÃO DE TRANSAÇÕES }
  oOTransact(TConsulta); { Consultas }

  { TABELAS }
  { EDIÇÕES }
end;

procedure TFrmDefaultGrid._WM_RESIZE(var Message: TMessage);
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

procedure TFrmDefaultGrid._WM_AFTER_RESIZE(var Message: TMessage);
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

Constructor TFrmDefaultGrid.Create(AOwner: TComponent;
                     const AIDPK     : LongInt = 0 ;
                           ADEPK     : String  = '';
                           AIDEV     : LongInt = 0 ;
                           ACDEV     : Word    = 0 ;
                           AFB_TB_PK : String  = '';
                           AFB_GETSQL: String  = '');
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.IDPK := INTTOSTR(AIDPK);
  REC_SHE_DEF.DEPK := TRIM(ADEPK);

  REC_SHE_DEF.IDEV := INTTOSTR(AIDEV);
  REC_SHE_DEF.CDEV := INTTOSTR(ACDEV);

  REC_SHE_DEF.FB_TB_PK  := TRIM(AFB_TB_PK );
  REC_SHE_DEF.FB_GETSQL := TRIM(AFB_GETSQL);
  inherited Create(AOwner);
end;

Class procedure TFrmDefaultGrid._ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                                  AIDPK     : LongInt = 0 ;
                                  ADEPK     : String  = '';
                                  AIDEV     : LongInt = 0 ;
                                  ACDEV     : Word    = 0 ;
                                  AFB_TB_PK : String  = '';
                                  AFB_GETSQL: String  = '');
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
  TForm(AForm) := Self.Create (AOwner    ,
                               AIDPK     ,
                               ADEPK     ,
                               AIDEV     ,
                               ACDEV     ,
                               AFB_TB_PK ,
                               AFB_GETSQL);

  _Form.Objects[idxForm] := TObject(@AForm);

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

Destructor TFrmDefaultGrid.Destroy;
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

procedure TFrmDefaultGrid.FormCreate(Sender: TObject);
begin
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

procedure TFrmDefaultGrid.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_ACTIVATE      , 0, 0);
  PostMessage(Handle, SW_SHOWNOACTIVATE, 0, 0);
end;

procedure TFrmDefaultGrid.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_SHOW      , 0, 0);
  PostMessage(Handle, WM_AFTER_SHOW, 0, 0);
end;

procedure TFrmDefaultGrid.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  { VER ANTES DE SAIR }
end;

procedure TFrmDefaultGrid.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action  := caFree;
  OnClose := Nil;
end;

procedure TFrmDefaultGrid.FormKeyDown(Sender: TObject; var Key: Word;
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
{       118      : if (ACTPesquisa.Enabled) and (BEPSQ_CAD.Enabled) then
                      BEPSQ_CAD.SetFocus(False);
 }
       116      : ACTRefresh.Execute;
  end;
end;

procedure TFrmDefaultGrid.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #5 then
  {[Ctrl+E]} else
  if key = #8 then
  {[Ctrl+H]} else
  if key = #9 then
  {[Ctrl+I]} else
  if key = #16 then
  ACTRelatorios.Execute else
  if key = #19 then
  {[Ctrl+S]} else
  if key = #22 then
  {[Ctrl+V]};
end;

procedure TFrmDefaultGrid.FormPaint(Sender: TObject);
var
  AMainFormScreen: TRect;
  i: Word;
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
    Self.HelpContext := 95; { % }

    REC_SHE_DEF.FMainHeight := IFThen(Self.HelpContext     > 0,Trunc((REC_SHE_DEF.FHeight - REC_SHE_DEF.FTop ) * (Self.HelpContext     / 100)),0);
    REC_SHE_DEF.FMainWidth  := IFThen(Self.AlphaBlendValue > 0,Trunc((REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft) * (Self.AlphaBlendValue / 100)),0);

    if (REC_SHE_DEF.FMainTop > 0) and (REC_SHE_DEF.FMainLeft > 0) then
    begin
      Self.Top  := REC_SHE_DEF.FTop + 5;
      Self.Left := REC_SHE_DEF.FLeft;

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

  { ricardo RODAPÉ }
  REC_SHE_DEF.FMainWidth := SBRodape.Width;
  for i  := 0 to SBRodape.Panels.Count - 1 do
  if  i  <> 1 then
  REC_SHE_DEF.FMainWidth   := REC_SHE_DEF.FMainWidth - SBRodape.Panels[i].Width;
  SBRodape.Panels[1].Width := REC_SHE_DEF.FMainWidth - 30;

  { SCREEN CAPTION }
  if RECUsuarios.Id = 0 then
  Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_DEF.FMainWidth)  + ' x ' + IntToStr(REC_SHE_DEF.FMainHeight) + '. ' + Self.Caption;
end;

procedure TFrmDefaultGrid.FormResize(Sender: TObject);
begin
  if (not Showing) or (FForceClose) then
  Exit;

  { Risize }
  PostMessage(Handle, WM_ENTERSIZEMOVE , 0, 0); { Before }
  PostMessage(Handle, WM_EXITSIZEMOVE  , 0, 0); { After }
end;

procedure TFrmDefaultGrid.EdicaoAfterDelete(DataSet: TDataSet);
begin
  oExecEvent(REC_SHE_DEF,Edicao);
end;

procedure TFrmDefaultGrid.EdicaoAfterOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crDefault;
  Edicao.Fields[0].Tag := Edicao.Fields[0].AsInteger;
end;

procedure TFrmDefaultGrid.EdicaoAfterPost(DataSet: TDataSet);
begin
  oExecEvent(REC_SHE_DEF,Edicao);
end;

procedure TFrmDefaultGrid.EdicaoBeforeCancel(DataSet: TDataSet);
begin
  if Edicao.Fields[0].Tag = 0 then
  begin
    Edicao.Close;
    Edicao.Open;
    ABORT;
  end;
end;

procedure TFrmDefaultGrid.EdicaoBeforeDelete(DataSet: TDataSet);
begin
  if oYesNo(handle,'Confirma Exclusão ?') = mrNo then
     Abort;

  if not REC_SHE_DEF.GDelete then
         oException(Nil,'Acesso Negado !'+#13+
                        'Favor entrar em contato com o administrador do sistema.');
end;

procedure TFrmDefaultGrid.EdicaoBeforeEdit(DataSet: TDataSet);
begin
  if not REC_SHE_DEF.GEdit then
         oException(Nil,'Acesso Negado !'+#13+
                        'Favor entrar em contato com o administrador do sistema.');
end;

procedure TFrmDefaultGrid.EdicaoBeforeInsert(DataSet: TDataSet);
begin
  if not REC_SHE_DEF.GAppend then
         oException(Nil,'Acesso Negado !'+#13+
                        'Favor entrar em contato com o administrador do sistema.');
end;

procedure TFrmDefaultGrid.EdicaoBeforeOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crAppStart;
end;

procedure TFrmDefaultGrid.EdicaoBeforePost(DataSet: TDataSet);
begin
  if Pos('IDCA',Edicao.RefreshSQL.Text) > 0 then Edicao.FieldByName('IDCA').Value := RECUsuarios.Id;
  if Pos('IP'  ,Edicao.RefreshSQL.Text) > 0 then Edicao.FieldByName('IP').Value   := RECParametros.IP;
  if Pos('HOST',Edicao.RefreshSQL.Text) > 0 then Edicao.FieldByName('Host').Value := RECParametros.HOST;
end;

procedure TFrmDefaultGrid.EdicaoDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  oException(Nil,'Falha ao tentar excluir registro !'+#13+
                  oFBException(E.Message)+'.');

end;

procedure TFrmDefaultGrid.EdicaoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  oException(Nil,'Falha ao tentar salvar registro !'+#13+
                  oFBException(E.Message)+'.');
end;

procedure TFrmDefaultGrid.EdicaoUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
  oException(Nil,'Falha ao tentar alterior registro !'+#13+
                  oFBException(E.Message)+'.');
end;

procedure TFrmDefaultGrid.DTSEdicaoStateChange(Sender: TObject);
begin
  if Edicao.State in [dsInsert] then
     SBRodape.Panels[0].Text := 'Incluindo ...' else
  if Edicao.State in [dsEdit] then
     SBRodape.Panels[0].Text := 'Alterando ...' else
  if Edicao.State in [dsBrowse] then
     SBRodape.Panels[0].Text := 'Consultando ...' else
  if Edicao.State in [dsInactive] then
     SBRodape.Panels[0].Text := 'OFF LINE !';

  if Edicao.State in [dsInsert,dsEdit] then
  begin
    SBRodape.Panels[0].Text := IFThen(Edicao.State = dsInsert,'Incluindo ...','Alterando ...');
    oGridOptionsEdit(DBGConsulta,True);
  end else
  begin
    SBRodape.Panels[0].Text := IFThen(Edicao.State = dsBrowse,'Consulta','OFF LINE');
  end;
end;

procedure TFrmDefaultGrid.DBGConsultaBackgroundDrawEvent(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect);
var
  Text : String;
begin
  with ACanvas do
  begin
    Brush.Color := clBtnShadow;
    FillRect(ARect);

    if (Sender as TdxDBGrid).GroupColumnCount = 0 then
    begin
      Font.Color := clMenu;
      Text := 'Arraste as colunas para poder agrupá-las.';
      TextOut(ARect.Left, ARect.Top, Text);
    end;
  end;
end;

procedure TFrmDefaultGrid.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Edicao);
end;

procedure TFrmDefaultGrid.ACTRelatoriosExecute(Sender: TObject);
begin
  if Edicao.State in [dsInsert,dsEdit] then
     Edicao.Post;

  ActiveControl := Nil;
end;

procedure TFrmDefaultGrid.ACTSaidaExecute(Sender: TObject);
begin
  if BEPesquisa.Text <> EmptyStr then
     BEPesquisa.Text := EmptyStr else
  Close;
end;

procedure TFrmDefaultGrid.ACTSalvaExecute(Sender: TObject);
begin
  if oYesNo(handle,'Salvar Edição ?') = mrNo then
     Abort;

  if Edicao.State in [dsInsert,dsEdit] then
     Edicao.Post;

  ActiveControl := Nil;
end;

procedure TFrmDefaultGrid.ACTAppendExecute(Sender: TObject);
begin
  if Edicao.State = dsBrowse then
     Edicao.Append;
end;

procedure TFrmDefaultGrid.ACTEditExecute(Sender: TObject);
begin
  if (Edicao.State = dsBrowse) and (not Edicao.Fields[0].IsNull) then
      Edicao.Edit;
end;

procedure TFrmDefaultGrid.ACTDeleteExecute(Sender: TObject);
begin
  if (Edicao.State = dsBrowse) and (not Edicao.Fields[0].IsNull) then
      if not REC_SHE_DEF.GDelete then
             oException(Nil,'Acesso Negado !'+#13+
                            'Favor entrar em contato com o administrador do sistema.');
end;

procedure TFrmDefaultGrid.ACTPostExecute(Sender: TObject);
begin
  if (ACTCancel.Enabled) and (ACTCancel.Visible) and (Edicao.State in [dsInsert,dsEdit]) then
      Edicao.Post;
end;

procedure TFrmDefaultGrid.ACTCancelExecute(Sender: TObject);
begin
  if (ACTCancel.Enabled) and (ACTCancel.Visible) and (Edicao.State in [dsInsert,dsEdit]) then
      Edicao.Cancel;
end;

procedure TFrmDefaultGrid.DBGConsultaDblClick(Sender: TObject);
begin
  ACTEdit.Execute;
end;

procedure TFrmDefaultGrid.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
       vk_tab   : key := 0;
       vk_insert: ACTAppend.Execute;
       vk_return: ACTEdit.Execute;
       vk_delete: ACTDelete.Execute;
  end;
end;

procedure TFrmDefaultGrid.BEPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_escape then ACTSaida.Execute;
  if key = vk_return then ActiveControl := Nil else
  if key = VK_DOWN   then
  begin
    PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
    TWinControl(DBGConsulta).SetFocus;
  end;
end;

procedure TFrmDefaultGrid.ACTPesquisa_RapidaExecute(Sender: TObject);
begin
  BBPesquisa.Caption := TAction(Sender).Caption;
end;

procedure TFrmDefaultGrid.EEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  oRefresh(Edicao,True);
end;

procedure TFrmDefaultGrid.EEventAdminEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  if RECUsuarios.IS_EVE_ADM then
  oRefresh(Edicao);
end;

procedure TFrmDefaultGrid.ACTExecEventExecute(Sender: TObject);
var
  i: word;
begin
  if REC_SHE_DEF.FB_Event <> EmptyStr then
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

end.
