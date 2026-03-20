unit pPadr3;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBStoredProc, IBEvents, IBDatabase, DB, math, StrUtils,
  IBCustomDataSet, IBQuery, ExtCtrls, StdCtrls, ComCtrls, ImgList, 
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  DBCtrls, Grids, DBGrids, rxSpeedbar, IBSQL, ActnList, cxGraphics,
  cxControls, dxStatusBar, rxAnimate, rxGIFCtrl;
type
  TFrmPadr3 = class(TForm)
    PNLCadastro: TPanel;
    PaintBox: TPaintBox;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    SQLEvent: TIBSQL;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TSEdicao: TIBTransaction;
    SQLSConsulta: TIBSQL;
    SQLSEdicao: TIBSQL;
    Consulta: TIBQuery;
    ILMenuEdicao: TImageList;
    PNLSBRodape: TPanel;
    PNLSBRodapeSyncEvent: TPanel;
    GFASyncEvent: TRxGIFAnimator;
    PNLSyncEvent: TPanel;
    ALPrincipal: TActionList;
    ACTRefresh: TAction;
    ACTEveRegister: TAction;
    ACTEveExecute: TAction;
    ACTConsulta: TAction;
    ACTPesquisa: TAction;
    ACTRelatorios: TAction;
    ACTMEAppend: TAction;
    ACTMEEdit: TAction;
    ACTMEDelete: TAction;
    ACTMEPost: TAction;
    ACTMECancel: TAction;
    ACTMPAppend: TAction;
    ACTMPEdit: TAction;
    ACTMPDelete: TAction;
    ACTMPPost: TAction;
    ACTMPCancel: TAction;
    ACTEveExpress: TAction;
    ACTProgressBar: TAction;
    ACTDashboards: TAction;
    ACTCheckConstraints: TAction;
    ACTCheckErrors: TAction;
    ACTSaida: TAction;
    ACTEdicao: TAction;
    ILMenuPrincipal: TImageList;
    SBMenuPrincipal: TSpeedBar;
    SSMenuPrincipal: TSpeedbarSection;
    SIRefresh: TSpeedItem;
    SIPesquisa: TSpeedItem;
    SIRelatorios: TSpeedItem;
    SISaida: TSpeedItem;
    SIMPAppend: TSpeedItem;
    SIMPEdita: TSpeedItem;
    SIMPDelete: TSpeedItem;
    SIMPPost: TSpeedItem;
    SIMPCancel: TSpeedItem;
    SBRodape: TdxStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);

    procedure ACTRefreshExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);

    procedure ACTConsultaExecute(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);

    procedure ACTEdicaoExecute(Sender: TObject);
    procedure ACTMPAppendExecute(Sender: TObject);
    procedure ACTMPEditExecute(Sender: TObject);
    procedure ACTMPDeleteExecute(Sender: TObject);
    procedure ACTMPPostExecute(Sender: TObject);
    procedure ACTMPCancelExecute(Sender: TObject);
    procedure ACTMEAppendExecute(Sender: TObject);
    procedure ACTMEEditExecute(Sender: TObject);
    procedure ACTMEDeleteExecute(Sender: TObject);
    procedure ACTMEPostExecute(Sender: TObject);
    procedure ACTMECancelExecute(Sender: TObject);

    procedure ACTCheckConstraintsExecute(Sender: TObject);
    procedure ACTCheckErrorsExecute(Sender: TObject);

    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTDashboardsExecute(Sender: TObject);
    procedure ACTProgressBarExecute(Sender: TObject);

    procedure ACTEveRegisterExecute(Sender: TObject);
    procedure ACTEveExecuteExecute(Sender: TObject);
    procedure ACTEveExpressExecute(Sender: TObject);

    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
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

    Constructor Create(AOwner: TComponent;
                 const AIDPK : LongInt = 0 ;
                       ADEPK : String  = '';
                       AIDEV : LongInt = 0 ;
                       ACDEV : Word    = 0 ;

                       AFB_PSQ_TB_NO_PK: String  = '';
                       AFB_PSQ_GET_SQL : String  = ''); reintroduce; overload;

    class procedure _ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                              AIDPK : LongInt = 0 ;
                              ADEPK : String  = '';
                              AIDEV : LongInt = 0 ;
                              ACDEV : Word    = 0 ;

                              AFB_PSQ_TB_NO_PK: String  = '';
                              AFB_PSQ_GET_SQL : String = '');

    Destructor  Destroy; override;
  end;

var
  FrmPadr3: TFrmPadr3;
  _Form: TStringList = Nil;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmPadr3._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmPadr3._SetCurrentAlert(const AValue: String);
begin
  FCurrentAlert := AValue;
end;

procedure TFrmPadr3._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

procedure TFrmPadr3._WM_CREATE(var Msg: TMessage);
begin
  { INICIALIZA FORM SCREEN }
  Screen.Cursor := crAppStart;
  Randomize;

  { INICIALIZAÇÃO DOS OBJETOS DECLARADOS }
end;

procedure TFrmPadr3._WM_AFTER_CREATE(var Msg: TMessage);
begin
  { FORM SCREEN }
  SetCursorPos(500,Self.Top);

  { FORM CAPTION }
  if FCurrentEvent  = EmptyStr then
  _GetCurrentEvent := Self.Caption;

  { FORM AREA }
  REC_SHE_DEF.FMainArea := (REC_SHE_DEF.FMainArea) and (Screen.Width >= 1360) and (Screen.Width <= 1366); { Aplicação }
  REC_SHE_DEF.FWorkArea := (REC_SHE_DEF.FWorkArea) and (Screen.Width <= 1280); { Windows }

  { FORM CONTROL }
  { PAGE CONTROL }
  { INICIALIZAÇÃO PADRÃO }
end;

procedure TFrmPadr3._WM_ACTIVATE(var Msg: TMessage);
begin
  { EVENTOS }
  ACTEveRegister.Execute;
end;

procedure TFrmPadr3._SW_SHOWNOACTIVATE(var Msg: TMessage);
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

procedure TFrmPadr3._WM_SHOW(var Msg: TMessage);
begin
  { FORM RESIZE }
  REC_SHE_DEF.FResize := 0;

  { TABELAS }
  ACTConsulta.Execute;

  { EDIÇÕES }
  ACTEdicao.Execute;
end;

procedure TFrmPadr3._WM_AFTER_SHOW(var Msg: TMessage);
begin
  { INICIALIZAÇÃO DOS COMPONENTES }
  { VER REGISTROS }
  ACTPesquisa.Execute; { Pesquisa Principal }
end;

procedure TFrmPadr3._WM_RESIZE(var Message: TMessage);
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

procedure TFrmPadr3._WM_AFTER_RESIZE(var Message: TMessage);
begin
  { After Resize }
  if REC_SHE_DEF.FResize >= 2 then

     try
       { DIMENSIONAMENTO }
       //oResize(DBGConsulta);
       Paint;

     finally
       REC_SHE_DEF.FResize := 0;
     end;
end;

Constructor TFrmPadr3.Create(AOwner: TComponent;
                       const AIDPK: LongInt = 0 ;
                             ADEPK: String  = '';
                             AIDEV: LongInt = 0 ;
                             ACDEV: Word    = 0 ;

                             AFB_PSQ_TB_NO_PK: String  = '';
                             AFB_PSQ_GET_SQL : String  = '');
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.IDPK := INTTOSTR(AIDPK);
  REC_SHE_DEF.DEPK := TRIM(ADEPK);

  REC_SHE_DEF.IDEV := INTTOSTR(AIDEV);
  REC_SHE_DEF.CDEV := INTTOSTR(ACDEV);

  REC_SHE_DEF.FB_PSQ_TB_NO_PK := TRIM(AFB_PSQ_TB_NO_PK );
  REC_SHE_DEF.FB_PSQ_GET_SQL  := TRIM(AFB_PSQ_GET_SQL);

  inherited Create(AOwner);
end;

Class procedure TFrmPadr3._ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                                    AIDPK : LongInt = 0 ;
                                    ADEPK : String  = '';
                                    AIDEV : LongInt = 0 ;
                                    ACDEV : Word    = 0 ;

                                    AFB_PSQ_TB_NO_PK: String  = '';
                                    AFB_PSQ_GET_SQL : String  = '');
var
  idxForm: Integer;
begin
  if not Assigned(_Form) then
  begin
    _Form := TStringList.Create;
    _Form.Sorted := True;
  end;

  if not _Form.Find(ClassName,idxForm) then
  idxForm := _Form.Add(ClassName);

  if TForm(AForm) = Nil then
  TForm(AForm) := Self.Create (AOwner    ,
                               AIDPK     ,
                               ADEPK     ,
                               AIDEV     ,
                               ACDEV     ,
                               AFB_PSQ_TB_NO_PK ,
                               AFB_PSQ_GET_SQL);

  _Form.Objects[idxForm] := TObject(@AForm); { Cria Objeto }

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

Destructor TFrmPadr3.Destroy;
type
  PtrForm = ^TForm;
var
  idxForm: Integer;
begin
  { INICIALIZA FORM SCREEN }
  Screen.Cursor := crAppStart;

  try

    if TForm(Self).Name <> EmptyStr then
    if Assigned(_Form) and _Form.Find(ClassName,idxForm) and (_Form.Objects[idxForm] <> Nil) then

    { Ponteiros }
    try
      try
        { UNREGISTER EVENT }
        if EEvent.Registered then
           try
             EEvent.UnRegisterEvents;
             EEvent.Events.Clear;
           except
             on E: Exception do
             begin
               oErro(Application.Handle,'Falha ao tentar finalizar evento !' + #13 +
                                        'Evento: ' + REC_SHE_DEF.FB_Event    + '.' + #13 + #13 +
                                        'Erro: '   + E.Message + '.');
             end;
           end;
      finally

        { Transações }
        try
          try
            oFTransact(TConsulta); { Edições }
          except
            on E: Exception do
            begin
              oErro(Application.Handle,'Falha ao tentar finalizar transações !' + #13 + #13+
                                       'Erro: ' + E.Message + '.');
            end;
          end;

        finally

         { TRecords Padrão }
          try
            oFREC_SHE_DEF(REC_SHE_DEF);
          except
            on E: Exception do
            begin
              oErro(Application.Handle,'Falha ao tentar esvaziar memórias !' + #13 + #13+
                                       'Erro: ' + E.Message + '.');
            end;
          end;
        end;
      end;
    finally

      { Limpa e Destroy Ponteiros }
      PtrForm(_Form.Objects[idxForm])^ := Nil;
      _Form.Objects[idxForm] := Nil;

      inherited;
    end;

  finally

    { FINALIZA FORM SCREEN }
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmPadr3.FormCreate(Sender: TObject);
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
  if not REC_SHE_DEF.GView then _GetForceClose := False

  else { ACCESS DENIED }
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

procedure TFrmPadr3.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_ACTIVATE      , 0, 0);
  PostMessage(Handle, SW_SHOWNOACTIVATE, 0, 0);
end;

procedure TFrmPadr3.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_SHOW      , 0, 0);
  PostMessage(Handle, WM_AFTER_SHOW, 0, 0);
end;

procedure TFrmPadr3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  { VER ANTES DE SAIR }
end;

procedure TFrmPadr3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnClose := Nil;
  Action  := caFree;
end;

procedure TFrmPadr3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_return: if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo) and
                      not (ActiveControl is TdxBlobEdit) and
                      not (ActiveControl is TdxDBBlobEdit) and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);

       38       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo) and
                      not (ActiveControl is TdxBlobEdit) and
                      not (ActiveControl is TdxDBBlobEdit) and
                      not (ActiveControl is TListBox)) then
                      SelectNext(ActiveControl,False,True);

       40       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TdxBlobEdit) and
                      not (ActiveControl is TdxDBBlobEdit) and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);
  end;
end;

procedure TFrmPadr3.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #5 then
  {[Ctrl+E]} else
  if key = #8 then
  {[Ctrl+H]} else
  if key = #9 then
  {[Ctrl+I]} else
  if key = #19 then
  {[Ctrl+S]} else
  if key = #22 then
  {[Ctrl+V]};
end;

procedure TFrmPadr3.FormPaint(Sender: TObject);
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

  { RODAPÉ }
  REC_SHE_DEF.FMainWidth := SBRodape.Width;
  for i  := 0 to SBRodape.Panels.Count - 1 do
  if  i  <> 1 then
  REC_SHE_DEF.FMainWidth   := REC_SHE_DEF.FMainWidth - SBRodape.Panels[i].Width;
  SBRodape.Panels[1].Width := REC_SHE_DEF.FMainWidth - 25;

  { SCREEN CAPTION }
  if RECUsuarios.Id = 0 then
  Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_DEF.FMainWidth)  + ' x ' + IntToStr(REC_SHE_DEF.FMainHeight) + '. ' + Self.Caption;
end;

procedure TFrmPadr3.FormResize(Sender: TObject);
begin
  if (not Showing) or (FForceClose) then
  Exit;

  { Risize }
  PostMessage(Handle, WM_ENTERSIZEMOVE , 0, 0); { Before }
  PostMessage(Handle, WM_EXITSIZEMOVE  , 0, 0); { After }
end;

procedure TFrmPadr3.ACTRefreshExecute(Sender: TObject);
begin
  //oRefresh(Cadastro);
end;

procedure TFrmPadr3.ACTSaidaExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmPadr3.ACTConsultaExecute(Sender: TObject);
begin
  { INICIALIZAÇÃO DE TRANSAÇÕES }
  oOTransact(TConsulta); { Tabelas }

  { TABELAS }
end;

procedure TFrmPadr3.ACTPesquisaExecute(Sender: TObject);
begin
  { INICIALIZA FORM SCREEN }
  Screen.Cursor := crHourGlass;

  { INICIALIZA PARÂMETROS DA PESQUISA }
  with REC_SHE_DEF do
  begin
    { FIREBIRD PESQUISA PRIMÁRIA }
    { PADRÃO }
    FB_PSQ_ID  := '0';      { Identificador }
    FB_PSQ_CPL := EmptyStr; { Complemento }
    FB_PSQ_SBQ := False;    { Sub Query }
    FB_PSQ_OK  := False;    { Validação }

    { TEXTO }
    FB_PSQ_FD_NO_PK := EmptyStr; { Campo  }
    FB_PSQ_FD_VD_PK := EmptyStr; { Valor  }

    { DATAS }
    FB_PSQ_DT_NO_PK := EmptyStr; { Campo  }
    FB_PSQ_DT_VD_PK := 0;        { Valor  }

    { FIREBIRD PESQUISA SECUNDÁRIA }
    { TEXTO }
    FB_PSQ_FD_NO_FK := EmptyStr; { Campo  }
    FB_PSQ_FD_VD_FK := EmptyStr; { Valor  }

    { DATAS }
    FB_PSQ_DT_NO_FK := EmptyStr; { Campo  }
    FB_PSQ_DT_VD_FK := 0;        { Valor  }

    { ÂNCORAS PRINCIPAIS }
    { Empresas }
    EP_NO := EmptyStr; { Empresa }
    CF_NO := EmptyStr; { Fabricante }

    { Situações }
    DEST := EmptyStr; { Descrição }
    STFI := EmptyStr; { Descrição Abreviada }

    { Produtos }
    ARTIGO     := EmptyStr; { Artigo }
    SKU        := EmptyStr; { SKU }
    NCM        := EmptyStr; { NCM }
    GRADE      := EmptyStr; { Grade }
    DESCRICAO  := EmptyStr; { Nome / Descrição }
    COMPOSICAO := EmptyStr; { Composição }

    { Lista Digitada }
    if LISTA = Nil then
    LISTA := TStringList.Create else
    LISTA.Clear;
  end;
end;

procedure TFrmPadr3.ACTEdicaoExecute(Sender: TObject);
begin
  { INICIALIZAÇÃO DE TRANSAÇÕES }
end;

procedure TFrmPadr3.ACTMPAppendExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3.ACTMPEditExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3.ACTMPDeleteExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3.ACTMPPostExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3.ACTMPCancelExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3.ACTMEAppendExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3.ACTMEEditExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3.ACTMEDeleteExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3.ACTMEPostExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3.ACTMECancelExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3.ACTCheckConstraintsExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3.ACTCheckErrorsExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3.ACTRelatoriosExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3.ACTDashboardsExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3.ACTProgressBarExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3.ACTEveRegisterExecute(Sender: TObject);
begin
  { UNREGISTER EVENTS }
  if EEvent.Registered then
     try
       EEvent.UnregisterEvents;
       EEvent.Events.Clear;

       REC_SHE_DEF.FB_EVE_ADM := EmptyStr; { Admin  }
       REC_SHE_DEF.FB_EVE_PAD := EmptyStr; { Padrão }
       REC_SHE_DEF.FB_EVE_EDT := EmptyStr; { Edição }
     except
       on E: Exception do
       begin
         oErro(Handle,'Falha ao tentar limpar evento Padrão !' + #13 +
                      'Erro: ' + E.Message + '.');
       end;
     end;

  { REGISTER EVENTS }
  REC_SHE_DEF.FB_Event := TRIM(REC_SHE_DEF.FB_Event);
  if REC_SHE_DEF.FB_Event <> EmptyStr then
     try
       { ADMIN }
       REC_SHE_DEF.FB_EVE_ADM := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-ADM';
       EEvent.Events.Add(REC_SHE_DEF.FB_EVE_ADM);

       { PADRÃO }
       if not RECUsuarios.IS_EVE_ADM then
       begin
         REC_SHE_DEF.FB_EVE_PAD := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-' + oStrZero(RECUsuarios.ID,3);
         EEvent.Events.Add(REC_SHE_DEF.FB_EVE_PAD);
       end;

       { EDIÇÃO }
       if ACTEveRegister.Tag > 0 then
       begin
         REC_SHE_DEF.FB_EVE_EDT := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-EDT' + oStrZero(ACTEveRegister.Tag,3);
         EEvent.Events.Add(REC_SHE_DEF.FB_EVE_EDT);

         ACTEveRegister.Tag := 0;
       end;

       EEvent.RegisterEvents;
     except
       on E: Exception do
       begin
         oErro(Application.Handle,'Falha ao tentar registrar evento !' + #13 +
                                  'Erro: '   + E.Message + '.');
       end;
     end;
end;

procedure TFrmPadr3.ACTEveExecuteExecute(Sender: TObject);
var
  i: word;
begin
  if REC_SHE_DEF.FB_Event = EmptyStr then
  begin
    if not ALockWindowUpdate then
    //oRefresh(Cadastro);
  end else

  try
    oOTransact(TEvent);

    { ADMIN }
    SPEvent.Close;
    SPEvent.StoredProcName := 'SP_SHE_EVE';
    SPEvent.Prepare;

    for i := 0 to SPEvent.ParamCount - 1 do
    SPEvent.Params[i].Value := Null;

    SPEvent.Params[0].Value := REC_SHE_DEF.FB_EVE_ADM;
    SPEvent.Params[1].Value := REC_SHE_DEF.FB_EVE_PAD;
    SPEvent.Params[2].Value := REC_SHE_DEF.FB_EVE_EDT;
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

procedure TFrmPadr3.ACTEveExpressExecute(Sender: TObject);
begin
  ACTEveRegister.Execute;
  ACTEveExecute.Execute;
end;

procedure TFrmPadr3.EEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  ActiveControl := Nil;
end;

end.
