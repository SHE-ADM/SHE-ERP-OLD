unit pDefaultEdicaoGrid;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc, math, StrUtils,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, dxDBELib, dxExEdtr, rxSpeedbar,
  IBSQL, cxGraphics, cxControls, dxStatusBar, dxPageControl, dxBar,
  dxBarExtItems, dxsbar, dxDockPanel, dxDockControl, ActnList,
  XPStyleActnCtrls, ActnMan;

type
  TFrmDefaultEdicaoGrid = class(TForm)
    QEdicao: TIBQuery;
    DTSCadastro: TDataSource;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    SBRodape: TdxStatusBar;
    ILMenu: TImageList;
    BMMain: TdxBarManager;
    BLBRefresh: TdxBarLargeButton;
    BLBPesquisa: TdxBarLargeButton;
    PMMain: TdxBarPopupMenu;
    BLBSaida: TdxBarLargeButton;
    DMMain: TdxDockingManager;
    ALMain: TActionList;
    ACTAppend: TAction;
    ACTEdit: TAction;
    ACTDelete: TAction;
    ACTRefresh: TAction;
    ACTPesquisa: TAction;
    ACTSaida: TAction;
    BLBRelatorios: TdxBarLargeButton;
    ACTRelatorios: TAction;
    PCPrincipal: TdxPageControl;
    TSPrincipal: TdxTabSheet;
    PNLPrincipal: TPanel;
    DSConsulta: TdxDockSite;
    DPConsulta: TdxDockPanel;
    dxLayoutDockSite3: TdxLayoutDockSite;
    PNLConsulta: TPanel;
    BLBAppend: TdxBarLargeButton;
    BLBEdit: TdxBarLargeButton;
    BLBDelete: TdxBarLargeButton;
    BLBCancel: TdxBarLargeButton;
    BLBPost: TdxBarLargeButton;
    Cadastro: TIBDataSet;
    ACTCancel: TAction;
    ACTPost: TAction;
    SQLConsulta: TIBSQL;
    TConsulta: TIBTransaction;
    QConsulta: TIBQuery;
    PNLConsultaProc: TPanel;
    PBConsultaProc: TProgressBar;
    PCConsulta: TdxPageControl;
    TSConsulta: TdxTabSheet;
    DBGConsulta: TdxDBGrid;
    SQLEvent: TIBSQL;
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
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure ACTAppendExecute(Sender: TObject);
    procedure ACTEditExecute(Sender: TObject);
    procedure ACTDeleteExecute(Sender: TObject);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeOpen(DataSet: TDataSet);
    procedure ACTCancelExecute(Sender: TObject);
    procedure ACTPostExecute(Sender: TObject);
    procedure DTSCadastroStateChange(Sender: TObject);
    procedure CadastroBeforeInsert(DataSet: TDataSet);
    procedure CadastroBeforeDelete(DataSet: TDataSet);
    procedure CadastroBeforeCancel(DataSet: TDataSet);
    procedure CadastroBeforeEdit(DataSet: TDataSet);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CadastroAfterPost(DataSet: TDataSet);
    procedure CadastroAfterDelete(DataSet: TDataSet);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure CadastroPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure CadastroUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ACTExecEventExecute(Sender: TObject);
    procedure EEventAdminEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    AResize: Word;

    FCurrentEvent,
    FCurrentAlert: String;
    FForceClose  : Boolean;

    { método para atribuição\validação de valor }
    procedure _SetCurrentEvent(const AValue: String);
    procedure _SetCurrentAlert(const AValue: String);
    procedure _SetForceClose  (const AValue: Boolean);
  public
    { Public declarations }
    REC_SHE_DEF : TREC_SHE_DEF;

    property CurrentAlert: String  read FCurrentAlert write _SetCurrentAlert;
    property CurrentEvent: String  read FCurrentEvent write _SetCurrentEvent;
    property ForceClose  : Boolean read FForceClose   write _SetForceClose;

    Constructor Create(AOwner   : TComponent;
                 const AIDPK    : LongInt = 0 ;
                       ADEPK    : String  = '';
                       AIDEV    : LongInt = 0 ;
                       ACDEV    : Word    = 0 ;
                       AFB_TB_PK: String  = ''); reintroduce; overload;

    procedure _WM_AFTER_CREATE  (var Msg: TMessage); message WM_AFTER_CREATE;
    procedure _WM_CREATE(var Msg: TMessage); message WM_CREATE;

    procedure _WM_AFTER_SHOW    (var Msg: TMessage); message WM_AFTER_SHOW;
    procedure _WM_AFTER_ACTIVATE(var Msg: TMessage); message WM_AFTER_ACTIVATE;

    procedure _SW_SHOWNOACTIVATE(var Msg: TMessage); message SW_SHOWNOACTIVATE;
    procedure _WM_ACTIVATE(var Msg: TMessage); message WM_ACTIVATE;

    procedure _WM_BEFORE_RESIZE(var Message: TMessage); message WM_ENTERSIZEMOVE;
    procedure _WM_AFTER_RESIZE(var Message: TMessage); message WM_EXITSIZEMOVE;

    class procedure _ExecForm(AOwner   : TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                              AIDPK    : LongInt = 0 ;
                              ADEPK    : String  = '';
                              AIDEV    : LongInt = 0 ;
                              ACDEV    : Word    = 0 ;
                              AFB_TB_PK: String  = '');

    Destructor  Destroy; override;
  end;

var
  FrmDefaultEdicaoGrid: TFrmDefaultEdicaoGrid;

  _Form: TStringList = Nil;
  _FormPesquisa: Boolean;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

Class procedure TFrmDefaultEdicaoGrid._ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
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

  TForm(AForm).FormStyle   := AFormStyle;
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

Destructor TFrmDefaultEdicaoGrid.Destroy;
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

procedure TFrmDefaultEdicaoGrid._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmDefaultEdicaoGrid._SetCurrentAlert(const AValue: String);
begin
  FCurrentAlert := AValue;
end;

procedure TFrmDefaultEdicaoGrid._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

procedure TFrmDefaultEdicaoGrid._WM_CREATE(var Msg: TMessage);
begin
  Screen.Cursor := crAppStart;

  { VER TAM TELA }
  REC_SHE_DEF.FWorkArea := not ((REC_SHE_DEF.FWorkArea) and (Screen.Width <= 1024));
  REC_SHE_DEF.FMainArea := not ((REC_SHE_DEF.FMainArea) and (Screen.Width <= 1360));
end;

procedure TFrmDefaultEdicaoGrid._WM_AFTER_CREATE(var Msg: TMessage);
begin
  { INICIALIZAÇÃO }
  Self.Caption := FCurrentEvent; { Caption }
  oOTransact(TConsulta); { Transação }
end;

procedure TFrmDefaultEdicaoGrid._SW_SHOWNOACTIVATE(var Msg: TMessage);
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

procedure TFrmDefaultEdicaoGrid._WM_AFTER_SHOW(var Msg: TMessage);
begin
  AResize := 0;
end;

procedure TFrmDefaultEdicaoGrid._WM_ACTIVATE(var Msg: TMessage);
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

procedure TFrmDefaultEdicaoGrid._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
  Screen.Cursor := crDefault;

  { Focused
  if (BEPesquisa.Visible <> ivNever) and (_FormPesquisa) then
      BEPesquisa.SetFocus(False); }
end;

procedure TFrmDefaultEdicaoGrid._WM_BEFORE_RESIZE(var Message: TMessage);
begin
  { Before Resize }
  AResize := AResize + 1;

  { VER TAM TELA }
  if (REC_SHE_DEF.FWorkArea) or (REC_SHE_DEF.FMainArea) then
  begin
    HelpKeyword := '3';
    REC_SHE_DEF.FPosition := poDefault;
  end else

  { Posição Padrão }
  if (HelpKeyword = '5') and (Screen.Width >= 1360) and (Screen.Width <= 1366) then {MainArea, mas sem desabilitar botões }
  begin
    REC_SHE_DEF.FPosition := poDefault;
  end;

  { VER DIM TELA }
  REC_SHE_DEF.FHeight := Self.Height;
  REC_SHE_DEF.FWidth  := Self.Width ;
end;

procedure TFrmDefaultEdicaoGrid._WM_AFTER_RESIZE(var Message: TMessage);
begin
  { After Resize }
  if AResize >= 2 then
     try
       oResize(DBGConsulta);
       Paint;
     finally
       AResize := 0; { zera controle }

       { RODAPÉ }
       if RECUsuarios.Id = 0 then
       Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_DEF.FWidth)  + ' x ' + IntToStr(REC_SHE_DEF.FHeight) + '. ' + Self.Caption;
       SBRodape.Panels[SBRodape.Panels.Count - 2].Width := SBRodape.Width - (SBRodape.Panels[SBRodape.Panels.Count - 1].Width + 140); { Ajusta o rodapé conforme o form }
     end;
end;

Constructor TFrmDefaultEdicaoGrid.Create(AOwner: TComponent;
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

  REC_SHE_DEF.FB_PSQ_TB_NO_PK := TRIM(AFB_TB_PK);

  inherited Create(AOwner);
end;

procedure TFrmDefaultEdicaoGrid.FormCreate(Sender: TObject);
begin
  { FORM MANAGER }
  REC_SHE_DEF.FPosition := Self.Position; { Página }
  SetCursorPos(500,Self.Top); { Cursor }

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
  FForceClose := False;

  if oEmpty(FCurrentEvent) then
  FCurrentEvent := Self.Caption;

  { ACCESS DENIED }
  if (FForceClose) and (RECParametros.STCX <> 'Caixa Aberto') then
  begin
    FCurrentAlert := FCurrentEvent    + #13 + #13 +
                    'ACESSO NEGADO !' + #13 +
                     RECParametros.STCX ;
  end else

  if (FForceClose) and (RECParametros.STCX = 'Caixa Aberto') then
  begin
    FCurrentAlert := FCurrentEvent    + #13 + #13 +
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

procedure TFrmDefaultEdicaoGrid.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, SW_SHOWNOACTIVATE, 0, 0 );
  PostMessage(Handle, WM_AFTER_SHOW, 0, 0 );
end;

procedure TFrmDefaultEdicaoGrid.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_ACTIVATE, 0, 0 );
  PostMessage(Handle, WM_AFTER_ACTIVATE, 0, 0 );
end;


procedure TFrmDefaultEdicaoGrid.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action  := caFree;
  OnClose := Nil;
end;

procedure TFrmDefaultEdicaoGrid.FormKeyDown(Sender: TObject; var Key: Word;
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
       116      : ACTRefresh.Execute;
  end;
end;

procedure TFrmDefaultEdicaoGrid.FormKeyPress(Sender: TObject;
  var Key: Char);
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

procedure TFrmDefaultEdicaoGrid.FormPaint(Sender: TObject);
var
  AMainFormScreen: TRect;
  FHeight,
  FWidth ,
  H,
  T,
  B,
  L,R: Word;
begin
  if (not Showing) or (REC_SHE_DEF.FForceClose) then
  Exit;

  { Ajusta o Form para o tamanho da area livre do MainForm }
  GetWindowRect(FrmPrincipal.ClientHandle,AMainFormScreen);

  T := AMainFormScreen.Top;
  B := AMainFormScreen.Bottom;
  L := AMainFormScreen.Left;
  R := AMainFormScreen.Right;
  H := B;

  if REC_SHE_DEF.FPosition = poDesigned then
  begin
    if (HelpContext = 0) then { % da altura }
    if (AMainFormScreen.Bottom - AMainFormScreen.Top < Self.Height) then { Área livre menor que página }
    HelpContext := 95; { % }

    FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
    FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

    if (REC_SHE_DEF.FTop > 0) and (REC_SHE_DEF.FLeft > 0) then
    begin
      Top    := REC_SHE_DEF.FTop;
      Left   := REC_SHE_DEF.FLeft;

      if Top + Height > B then
      begin
        Top := Top - ((Top + Height) - B);
      end;

      if Left + Width > R then
      begin
        Left := Left - ((Left + Width) - R);
      end;

    end else
    begin
      if FHeight > 0 then Height := FHeight;
      if FWidth  > 0 then Width  := FWidth;

      if FormStyle = fsNormal then
      begin
        //if FHeight > 0 then
        Top := (T  + (H - Height)) div 2;

        //if FWidth > 0 then
        Left := ((R + L) - Width )  div 2;
      end else
      //if (FHeight > 0) or (FWidth  > 0) then
      begin
        Top  := ((B - T ) - Height) div 2;
        Left := ((R - L)  - Width ) div 2;
      end;
    end;
  end else
  if (REC_SHE_DEF.FWorkArea) and (FormStyle = fsNormal) then
  begin
    Top    := Screen.WorkAreaTop;
    Left   := Screen.WorkAreaLeft;
    Width  := Screen.WorkAreaWidth;
    Height := Screen.WorkAreaHeight;
  end else
  if (REC_SHE_DEF.FMainArea) and (FormStyle = fsNormal) then
  begin
    Top    := 0;
    Left   := 0;
    Width  := R - L - 5;
    Height := H - T - 5;
  end else
  if REC_SHE_DEF.FPosition = poDefault then
  begin
    Top    := IFThen(FormStyle = fsNormal,T,0);
    Left   := IFThen(FormStyle = fsNormal,L,0);
    Width  := IFThen(REC_SHE_DEF.FPosition = poDefault,R - L - 5,0);
    Height := IFThen(REC_SHE_DEF.FPosition = poDefault,H - T - 5,0);
  end;
end;

procedure TFrmDefaultEdicaoGrid.FormResize(Sender: TObject);
begin
  if (not Showing) or (FForceClose) then
  Exit;

  { Risize }
  PostMessage(Handle, WM_ENTERSIZEMOVE , 0, 0); { Before }
  PostMessage(Handle, WM_EXITSIZEMOVE  , 0, 0); { After }
end;

procedure TFrmDefaultEdicaoGrid.CadastroAfterDelete(DataSet: TDataSet);
begin
//  _ExecEvent;
end;

procedure TFrmDefaultEdicaoGrid.CadastroAfterOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crDefault;
end;

procedure TFrmDefaultEdicaoGrid.CadastroAfterPost(DataSet: TDataSet);
begin
//  _ExecEvent;
end;

procedure TFrmDefaultEdicaoGrid.CadastroBeforeOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crAppStart;
end;

procedure TFrmDefaultEdicaoGrid.DBGConsultaBackgroundDrawEvent(Sender: TObject;
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

procedure TFrmDefaultEdicaoGrid.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Cadastro);
end;

procedure TFrmDefaultEdicaoGrid.ACTPesquisaExecute(Sender: TObject);
begin
//  if ACTPesquisa.Enabled then uPesquisa(REC_SHE_DEF);
end;

procedure TFrmDefaultEdicaoGrid.ACTRelatoriosExecute(Sender: TObject);
begin
  if Cadastro.State in [dsInsert,dsEdit] then
     Cadastro.Post;
end;

procedure TFrmDefaultEdicaoGrid.ACTSaidaExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmDefaultEdicaoGrid.ACTAppendExecute(Sender: TObject);
begin
  if ((ACTAppend.Enabled) and (ACTAppend.Visible) and (Cadastro.State = dsBrowse)) then
       Cadastro.Append;
end;

procedure TFrmDefaultEdicaoGrid.ACTEditExecute(Sender: TObject);
begin
  if ((ACTEdit.Enabled) and (ACTEdit.Visible)  and (Cadastro.RecNo > 0) and (Cadastro.State = dsBrowse)) then
       Cadastro.Edit;
end;

procedure TFrmDefaultEdicaoGrid.ACTDeleteExecute(Sender: TObject);
begin
  if ((ACTDelete.Enabled) and (ACTDelete.Visible)  and (Cadastro.RecNo > 0) and (Cadastro.State = dsBrowse)) then
       Cadastro.Delete;
end;

procedure TFrmDefaultEdicaoGrid.ACTPostExecute(Sender: TObject);
begin
  if Cadastro.State in [dsInsert,dsEdit] then
     Cadastro.Post;
end;

procedure TFrmDefaultEdicaoGrid.ACTCancelExecute(Sender: TObject);
begin
  if Cadastro.State in [dsInsert,dsEdit] then
     Cadastro.Cancel;
end;

procedure TFrmDefaultEdicaoGrid.DTSCadastroStateChange(Sender: TObject);
begin
  if Cadastro.State in [dsInsert,dsEdit] then
  begin
    SBRodape.Panels[0].Text := IFThen(Cadastro.State = dsInsert,'Inclusão','Alteração');
    oGridOptionsEdit(DBGConsulta,True);
  end else
  begin
    SBRodape.Panels[0].Text := 'Consulta';
    //oGridOptionsEdit(DBGConsulta,REC_SHE_DEF.GridOptionsBehavior);
  end;
end;

procedure TFrmDefaultEdicaoGrid.CadastroBeforeInsert(DataSet: TDataSet);
begin
  if not REC_SHE_DEF.GAppend then
     DataBaseError('Acesso Negado !'+#13+
                   'Favor entrar em contato com o administrador do sistema.');
end;

procedure TFrmDefaultEdicaoGrid.CadastroBeforeEdit(DataSet: TDataSet);
begin
  if not REC_SHE_DEF.GEdit then
     DataBaseError('Acesso Negado !'+#13+
                   'Favor entrar em contato com o administrador do sistema.');
end;

procedure TFrmDefaultEdicaoGrid.CadastroBeforeDelete(DataSet: TDataSet);
begin
  if not REC_SHE_DEF.GDelete then
     DataBaseError('Acesso Negado !'+#13+
                   'Favor entrar em contato com o administrador do sistema.');

  if oYesNo(handle,'Confirma Exclusão do Registro ?') = mrNo then
     Abort;                 
end;

procedure TFrmDefaultEdicaoGrid.CadastroBeforeCancel(DataSet: TDataSet);
begin
  if Cadastro.RecordCount = 0 then
  begin
    Cadastro.Close;
    Cadastro.Open;
    Abort;
  end;
end;

procedure TFrmDefaultEdicaoGrid.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
       vk_tab   : key := 0;
       vk_escape: if Cadastro.State in [dsInsert,dsEdit] then ACTCancel.Execute else ACTSaida.Execute;
       vk_insert: ACTAppend.Execute;
       vk_return: begin
                    DBGConsulta.SetFocus;
                    if Cadastro.State in [dsInsert,dsEdit] then
                       DBGConsulta.FocusedColumn := DBGConsulta.FocusedColumn + 1
                    else
                       ACTEdit.Execute;
                  end;
       vk_delete: ACTDelete.Execute;
  end;
end;

procedure TFrmDefaultEdicaoGrid.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if (Aselected) and (AFocused) and (Cadastro.State in [dsInsert,dsEdit]) then
  begin
    AFont.Color := clWhite;
    AFont.Style := [fsBold];
    AColor      := $00D77D11;
  end;
end;

procedure TFrmDefaultEdicaoGrid.CadastroPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmDefaultEdicaoGrid.CadastroUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmDefaultEdicaoGrid.EEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  if Cadastro.State = dsBrowse then
     oRefresh(Cadastro);
end;

procedure TFrmDefaultEdicaoGrid.EEventAdminEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  if RECUsuarios.IS_EVE_ADM then
  oRefresh(Cadastro);
end;

procedure TFrmDefaultEdicaoGrid.ACTExecEventExecute(Sender: TObject);
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
