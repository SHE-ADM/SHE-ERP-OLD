unit pPadr3_2025;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBStoredProc, IBEvents, IBDatabase, DB, math, StrUtils,
  IBCustomDataSet, IBQuery, ExtCtrls, StdCtrls, ComCtrls, ImgList, 
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  DBCtrls, Grids, DBGrids, rxSpeedbar, IBSQL, ActnList, dxsbar,
  dxDockControl;
type
  TFrmPadr3_2025 = class(TForm)
    PNLTOP: TPanel;
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
    ACTValidateEdit: TAction;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TEvent: TIBTransaction;
    SQLEvent: TIBSQL;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    ILMenu: TImageList;
    ILEdicao: TImageList;
    ACTMValid: TAction;
    SBMenu: TSpeedBar;
    SSMenu: TSpeedbarSection;
    SIRefresh: TSpeedItem;
    SIMAppend: TSpeedItem;
    SIMEdit: TSpeedItem;
    SIMDelete: TSpeedItem;
    SIMCancel: TSpeedItem;
    SIMPost: TSpeedItem;
    SIMValid: TSpeedItem;
    SIMRelatorios: TSpeedItem;
    SISaida: TSpeedItem;
    PNLLE: TPanel;
    PNLLD: TPanel;
    PNLBOT: TPanel;
    PNLPrincipal: TPanel;
    DMPrincipal: TdxDockingManager;
    StyleController: TdxEditStyleController;
    SCBPrincipal: TScrollBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ACTExecEventExecute(Sender: TObject);
    procedure ACTRefreshExecute(Sender: TObject);
    procedure ACTMAppendExecute(Sender: TObject);
    procedure ACTMEditExecute(Sender: TObject);
    procedure ACTMDeleteExecute(Sender: TObject);
    procedure ACTMCancelExecute(Sender: TObject);
    procedure ACTMPostExecute(Sender: TObject);
    procedure ACTMValidExecute(Sender: TObject);
    procedure ACTValidateEditExecute(Sender: TObject);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    { Private declarations }
 private
    FCurrentEvent: String;
    FForceClose  : Boolean;

    { método para atribuição\validação de valor }
    procedure _SetCurrentEvent(const AValue: String);
    procedure _SetForceClose  (const AValue: Boolean);

  public
    { Public declarations }
    REC_SHE_DEF: TREC_SHE_DEF;

    { Thread apenas fsMDIChild }
    procedure _WM_CREATE(var Msg: TMessage); message WM_CREATE;
    procedure _SW_SHOWNOACTIVATE(var Msg: TMessage); message SW_SHOWNOACTIVATE;
    procedure _WM_ACTIVATE(var Msg: TMessage); message WM_ACTIVATE;
    procedure _WM_BEFORE_RESIZE(var Message: TMessage); message WM_ENTERSIZEMOVE;
    procedure _WM_AFTER_RESIZE(var Message: TMessage); message WM_EXITSIZEMOVE;

    property CurrentEvent: String  read FCurrentEvent write _SetCurrentEvent;
    property ForceClose  : Boolean read FForceClose   write _SetForceClose;

    Constructor Create(AOwner: TComponent;
                  const AIDPK: LongInt = 0;
                        AIDFK: LongInt = 0); reintroduce; overload;

    class procedure _ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AIDPK: LongInt = 0; AIDFK: LongInt = 0);

    Destructor  Destroy; override;
  end;

var
  FrmPadr3_2025: TFrmPadr3_2025;

  _Form: TStringList = Nil;
  _FormPesquisa: Boolean;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TFrmPadr3_2025._WM_CREATE(var Msg: TMessage);
begin
  { nothing }
end;

procedure TFrmPadr3_2025._SW_SHOWNOACTIVATE(var Msg: TMessage);
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

procedure TFrmPadr3_2025._WM_ACTIVATE(var Msg: TMessage);
begin
  { Limpa Eventos }
  REC_SHE_DEF.FB_Event000 := EmptyStr; { Login ou Sistema }
  REC_SHE_DEF.FB_Event001 := EmptyStr; { Sistema }
  REC_SHE_DEF.FB_Event002 := EmptyStr; { Usuário }

  EEvent.UnregisterEvents;
  EEvent.Events.Clear;

  { Registra Eventos }
  if REC_SHE_DEF.FB_Event <> EmptyStr then
     with EEvent do
     try
       { Sistema }
       if RECUsuarios.AIS_Event then
       begin
         REC_SHE_DEF.FB_Event000 := oREPZero(REC_SHE_DEF.FB_Event,'_',RECParametros.ID,3);
         EEvent.Events.Add(REC_SHE_DEF.FB_Event000);
       end else

       { Login }
       begin
         REC_SHE_DEF.FB_Event000 := REC_SHE_DEF.FB_Event + '_' + oStrZero(RECUsuarios.ID,3);
         EEvent.Events.Add(REC_SHE_DEF.FB_Event000);
       end;

       RegisterEvents;
     except
       on E: Exception do
       begin
         oErro(Application.Handle,'Falha ao tentar executar evento !' + #13 +
                                   REC_SHE_DEF.FB_Event   + '.' + #13 + #13 +
                                   E.Message              + '.' + #13 + #13 +
                                  'Favor entrar em contato com o administrador do sistema.');
       end;
     end;
end;

procedure TFrmPadr3_2025._WM_BEFORE_RESIZE(var Message: TMessage);
begin
  { Before Resize }
  SBMenu.Tag := SBMenu.Tag + 1;

  { VER TAM TELA }
  REC_SHE_DEF.FWorkArea := ((REC_SHE_DEF.FWorkArea) and (Screen.Width <= 1024));
  REC_SHE_DEF.FMainArea := ((REC_SHE_DEF.FMainArea) and (Screen.Width <= 1366));

  if (REC_SHE_DEF.FWorkArea) or (REC_SHE_DEF.FMainArea) then
  begin
    HelpKeyword := '3';
    REC_SHE_DEF.FrmPosition := poDefault;
  end else

  { Posição Padrão }
  if (HelpKeyword = '5') and (Screen.Width >= 1360) and (Screen.Width <= 1366) then {MainArea, mas sem desabilitar botões }
  begin
    REC_SHE_DEF.FrmPosition := poDefault;
  end;

  { VER DIM TELA }
  REC_SHE_DEF.FHeight := Self.Height;
  REC_SHE_DEF.FWidth  := Self.Width ;

  if RECUsuarios.Id = 0 then
  if Pos('APP',Self.Caption) = 0 then
  Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_DEF.FWidth)  + ' x ' + IntToStr(REC_SHE_DEF.FHeight) + '. ' + Self.Caption;
end;

procedure TFrmPadr3_2025._WM_AFTER_RESIZE(var Message: TMessage);
begin
  { After Resize }
  if SBMenu.Tag >= 1 then
     try
       SBMenu.Tag := 0; { zera controle }

       //oResize(DBGConsulta);
       //Paint;
     finally
       { Focused }
       //if (BEPSQ_CAD.Visible <> ivNever) and (_FormPesquisa) then
       //    BEPSQ_CAD.SetFocus(False);

       { Pesquisa }
       if ACTPesquisa.Tag = 0 then
       begin
         ACTPesquisa.Tag := 1;
         ACTPesquisa.Execute;
       end;  
     end;
end;

procedure TFrmPadr3_2025._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmPadr3_2025._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

Class procedure TFrmPadr3_2025._ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AIDPK : LongInt = 0; AIDFK : LongInt = 0);
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

  if TForm(AForm)  = Nil then
     TForm(AForm) := Self.Create (AOwner,
                     AIDPK ,
                     AIDFK);

  _Form.Objects[idxForm] := TObject(@AForm);
  TForm(AForm).Show;
end;

Destructor TFrmPadr3_2025.Destroy;
type
  PtrForm = ^TForm;
var
  idxForm: Integer;
begin
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
           end;
         end;

       finally
         PtrForm(_Form.Objects[idxForm])^ := Nil;
         _Form.Objects[idxForm] := Nil;
       end;
  finally
    inherited;
  end;
end;


Constructor TFrmPadr3_2025.Create(AOwner: TComponent;
                        const AIDPK: LongInt;
                              AIDFK: LongInt);
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.AIDPK       := INTTOSTR(AIDPK);
  REC_SHE_DEF.AIDFK       := INTTOSTR(AIDFK);
  REC_SHE_DEF.FForceCaixa := False; { Caixa }

  inherited Create(AOwner);
end;

procedure TFrmPadr3_2025.FormCreate(Sender: TObject);
begin
  { FORM MANAGER }
  Self.Position := REC_SHE_DEF.FrmPosition;

  { FB PROC }
  REC_SHE_DEF.FB_SP := SPEdicao;
  
  { VER USER }
  if ((REC_SHE_DEF.GDescricao = EmptyStr) and (REC_SHE_DEF.GReferencia = EmptyStr) and (REC_SHE_DEF.GRegra = EmptyStr)) or
      (REC_SHE_DEF.GAdmin) then
  begin
    REC_SHE_DEF.GAppend := True;
    REC_SHE_DEF.GEdit   := True;
    REC_SHE_DEF.GDelete := True;
    REC_SHE_DEF.GView   := True;
    REC_SHE_DEF.GPrint  := True;
  end else
  begin
    oUSER(REC_SHE_DEF);
  end;

  { VER FEC }
  if not ForceClose then
  ForceClose := (not REC_SHE_DEF.GView); { Apenas quando parâmetro não setado }

  REC_SHE_DEF.FForceClose := ForceClose;
  REC_SHE_DEF.FAlert      := 'Usuário não Autorizado.' + #13 +
                             'Favor entrar em contato com o administrador do sistema.';

  { DEF FEC }
  if (not REC_SHE_DEF.FForceClose) and (REC_SHE_DEF.FForceCaixa) and (REC_SHE_DEF.AIDEV = 0) and
     (RECParametros.STCX <> 'Caixa Aberto') then
  begin
    ForceClose := True;
    REC_SHE_DEF.FForceClose := ForceClose;
    REC_SHE_DEF.FAlert      := 'Caixa não Aberto.' + #13 +
                               'Favor entrar em contato com o administrador do sistema.';
  end;

  if not REC_SHE_DEF.FForceClose then
         PostMessage( Handle, WM_CREATE, 0, 0 ) else
  begin
    oErro(Application.Handle,'ACESSO NEGADO !' + #13 + #13 +
                              REC_SHE_DEF.FAlert);

    Self.Visible := False;
    Self.Height  := 0;
    Self.Width   := 0;

    PostMessage(Handle, WM_CLOSE, 0, 0);
  end;
end;

procedure TFrmPadr3_2025.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;

  PostMessage(Handle, SW_SHOWNOACTIVATE, 0, 0 );
end;

procedure TFrmPadr3_2025.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;

  PostMessage(Handle, WM_ACTIVATE, 0, 0 );
end;

procedure TFrmPadr3_2025.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if REC_SHE_DEF.Edited then
     Case messageBox(handle,'Existem Alterações Pendentes !'+#13+
                            'Deseja Salvar ?',
                             PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
          mrCancel: Abort;
          mrNo    : ACTMCancel.Execute;
          mrYes   : ACTMPost.Execute;
     end;
end;

procedure TFrmPadr3_2025.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action  := caFree;
  OnClose := Nil;
end;

procedure TFrmPadr3_2025.FormKeyDown(Sender: TObject; var Key: Word;
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
  end;
end;

procedure TFrmPadr3_2025.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmPadr3_2025.FormPaint(Sender: TObject);
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

  if REC_SHE_DEF.FrmPosition = poDesigned then
  begin
    if (HelpContext = 0) then { % da altura }
    if (AMainFormScreen.Bottom - AMainFormScreen.Top < Self.Height) then { Área livre menor que página }
    HelpContext := 95; { % }

    { Altura }
    FHeight := IFThen(HelpContext > 0,Trunc((H-T) * (HelpContext / 100)),0);
    FHeight := IFThen(FHeight     > 0,FHeight,Height);

    { Largura }
    FWidth := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);
    FWidth := IFThen(FWidth          > 0,FWidth,Width);

    if (REC_SHE_DEF.FTop > 0) and (REC_SHE_DEF.FLeft > 0) then
    begin
      Top    := REC_SHE_DEF.FTop;
      Left   := REC_SHE_DEF.FLeft;

      if Top + FHeight > B then
      begin
        Top := Top - ((Top + FHeight) - B);
      end;

      if Left + FWidth > R then
      begin
        Left := Left - ((Left + FWidth) - R);
      end;

    end else
    begin
      if FHeight > 0 then Height := FHeight;
      if FWidth  > 0 then Width  := FWidth;

      if FormStyle = fsNormal then
      begin
        //if FHeight > 0 then
        Top := (T  + (H - FHeight)) div 2;

        //if FWidth > 0 then
        Left := ((R + L) - FWidth )  div 2;
      end else
      //if (FHeight > 0) or (FWidth  > 0) then
      begin
        Top  := ((B - T ) - FHeight) div 2;
        Left := ((R - L)  - FWidth ) div 2;
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
  if REC_SHE_DEF.FrmPosition = poDefault then
  begin
    Top    := IFThen(FormStyle = fsNormal,T,0);
    Left   := IFThen(FormStyle = fsNormal,L,0);
    Width  := IFThen(REC_SHE_DEF.FrmPosition = poDefault,R - L - 5,0);
    Height := IFThen(REC_SHE_DEF.FrmPosition = poDefault,H - T - 5,0);
  end;

  { Risize }
  PostMessage(Handle, WM_ENTERSIZEMOVE , 0, 0); { Before }
  PostMessage(Handle, WM_EXITSIZEMOVE  , 0, 0); { After }
end;

procedure TFrmPadr3_2025.FormResize(Sender: TObject);
begin
  if (not Showing) or (REC_SHE_DEF.FForceClose) then
  Exit;

end;

procedure TFrmPadr3_2025.ACTRefreshExecute(Sender: TObject);
begin
  if (not ACTRefresh.Enabled) or { Habilitado }
     (not ACTRefresh.Visible) or { Visível    }
     (ALockWindowUpdate) then    { Destravado }

  Abort;
end;

procedure TFrmPadr3_2025.ACTMAppendExecute(Sender: TObject);
begin
  if (not ACTMAppend.Enabled) or { Habilitado }
     (not ACTMAppend.Visible) or { Visível    }
     (ALockWindowUpdate) then    { Destravado }

  Abort;
end;

procedure TFrmPadr3_2025.ACTMEditExecute(Sender: TObject);
begin
  if (not ACTMEdit.Enabled) or { Habilitado }
     (not ACTMEdit.Visible) or { Visível    }
     (ALockWindowUpdate) then  { Destravado }

  Abort;
end;

procedure TFrmPadr3_2025.ACTMDeleteExecute(Sender: TObject);
begin
  if (not ACTMDelete.Enabled) or { Habilitado }
     (not ACTMDelete.Visible) or { Visível    }
     (ALockWindowUpdate) then    { Destravado }

  Abort;
end;

procedure TFrmPadr3_2025.ACTMPostExecute(Sender: TObject);
begin
  if (not ACTMPost.Enabled) or { Habilitado }
     (not ACTMPost.Visible) or { Visível    }
     (ALockWindowUpdate) then    { Destravado }

  Abort else
  ACTValidateEdit.Execute;
end;

procedure TFrmPadr3_2025.ACTMValidExecute(Sender: TObject);
begin
  if (not ACTMValid.Enabled) or { Habilitado }
     (not ACTMValid.Visible) or { Visível    }
     (ALockWindowUpdate) then    { Destravado }

  Abort else
  ACTValidateEdit.Execute;
end;

procedure TFrmPadr3_2025.ACTValidateEditExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3_2025.ACTMCancelExecute(Sender: TObject);
begin
  REC_SHE_DEF.Edited := False;
  Close;
end;

procedure TFrmPadr3_2025.ACTRelatoriosExecute(Sender: TObject);
begin
  if (not ACTRelatorios.Enabled) or { Habilitado }
     (not ACTRelatorios.Visible) or { Visível    }
     (ALockWindowUpdate) then    { Destravado }

  Abort else
  ActiveControl := Nil;
end;

procedure TFrmPadr3_2025.ACTSaidaExecute(Sender: TObject);
begin
  REC_SHE_DEF.PSQ_OK := False;
  Close;
end;

procedure TFrmPadr3_2025.ACTExecEventExecute(Sender: TObject);
var
  i: word;
begin
  try
    if REC_SHE_DEF.FB_Event <> EmptyStr then
       try
         { Set }
         REC_SHE_DEF.FB_Event000 := REC_SHE_DEF.FB_Event + '_' + oStrZero(RECUsuarios.ID  ,3); { Login   }
         REC_SHE_DEF.FB_Event001 := oREPZero(REC_SHE_DEF.FB_Event, '_' ,RECParametros.ID  ,3); { Sistema }
         REC_SHE_DEF.FB_Event002 := REC_SHE_DEF.FB_Event + '_' + oStrZero(ACTExecEvent.Tag,3); { Usuário }

         oOTransact(TEvent);

         SPEvent.Close;
         SPEvent.StoredProcName := 'SP_EVE_ERP';
         SPEvent.Prepare;

         for i := 0 to SPEvent.ParamCount - 1 do
         SPEvent.Params[i].Value := Null;

         SPEvent.Params[0].Value := REC_SHE_DEF.FB_Event000;
         SPEvent.Params[1].Value := REC_SHE_DEF.FB_Event001;
         SPEvent.Params[2].Value := REC_SHE_DEF.FB_Event002;
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
  finally
    ACTExecEvent.Tag := 0;
  end;
end;

procedure TFrmPadr3_2025.ACTPesquisaExecute(Sender: TObject);
begin
  { RESET TRANSACTION }
  oCTransact(TConsulta);
  oOTransact(TConsulta);
end;

end.
