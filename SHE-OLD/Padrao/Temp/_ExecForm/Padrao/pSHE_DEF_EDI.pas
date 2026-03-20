unit pSHE_DEF_EDI;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, StrUtils, Math, dxExEdtr, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxEdLib, dxDBELib, dxEditor, ExtCtrls, ActnList, ImgList,
  dxBar, dxBarExtItems, dxDockControl, dxPageControl, dxDockPanel,
  cxGraphics, cxControls, dxStatusBar, IBEvents, IBStoredProc, DB,
  IBCustomDataSet, IBQuery, IBSQL, IBDatabase, rxSpeedbar,
  IDGlobal, DSiWin32, dxsbar;

type
  TFrmSHE_DEF_EDI = class(TForm)
    DMPrincipal: TdxDockingManager;
    BMPrincipal: TdxBarManager;
    BLBRefresh: TdxBarLargeButton;
    BLBRelatorios: TdxBarLargeButton;
    BLBMAppend: TdxBarLargeButton;
    BLBMEdit: TdxBarLargeButton;
    BLBMCancel: TdxBarLargeButton;
    BLBConfirma: TdxBarLargeButton;
    BLBSaida: TdxBarLargeButton;
    SBRodape: TdxStatusBar;
    PNLPrincipal: TPanel;
    PCPrincipal: TdxPageControl;
    TSPrincipal: TdxTabSheet;
    PNLTOP: TPanel;
    PNLBOT: TPanel;
    ALPrincipal: TActionList;
    ACTRefresh: TAction;
    ACTExecEvent: TAction;
    ACTPesquisa: TAction;
    ACTRelatorios: TAction;
    ACTSaida: TAction;
    ACTMAppend: TAction;
    ACTMEdit: TAction;
    ACTMDelete: TAction;
    ACTMPost: TAction;
    ACTMCancel: TAction;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    Consulta: TIBQuery;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TEvent: TIBTransaction;
    SQLEvent: TIBSQL;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    ILEdicao: TImageList;
    ILMenu: TImageList;
    BLBMDelete: TdxBarLargeButton;
    PNLConsulta: TPanel;
    PNLPKConsulta: TPanel;
    PNLDSConsulta: TPanel;
    DSConsulta: TdxDockSite;
    LDSConsulta: TdxLayoutDockSite;
    DPConsulta: TdxDockPanel;
    StyleController: TdxEditStyleController;
    BLBPesquisa: TdxBarLargeButton;
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
    procedure ACTRefreshExecute(Sender: TObject);
    procedure ACTMAppendExecute(Sender: TObject);
    procedure ACTMEditExecute(Sender: TObject);
    procedure ACTMDeleteExecute(Sender: TObject);
    procedure ACTMPostExecute(Sender: TObject);
    procedure ACTMCancelExecute(Sender: TObject);
    procedure ACTExecEventExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    FCurrentEvent: String;
    FForceClose  : Boolean;
    { Definindo uma propriedade no form
      Criado um atributo FMSGCaption e um método SetMSGCaption para trabalhar com a propriedade
      FMSGCaption   - Encapsula a informação
      SetMSGCaption - Método de acesso que recebe a atualização da informação MSGCaption
      Não usarei o método SetMSGCaption para atribuir informação a FMSGRodpae,
      vou apenas utilizar a propriedade }

    { método para atribuição\validação de valor }
    procedure SetCurrentEvent(const AValue: String);
    procedure SetForceClose(const AValue: Boolean);
  public
    { Public declarations }
    REC_SHE_DEF: TREC_SHE_DEF;
    
    property CurrentEvent: String  read FCurrentEvent write SetCurrentEvent;
    property ForceClose  : Boolean read FForceClose   write SetForceClose;

    procedure _WM_AFTER_CREATE  (var Msg: TMessage); message WM_AFTER_CREATE;
    procedure _WM_AFTER_SHOW    (var Msg: TMessage); message WM_AFTER_SHOW;
    procedure _WM_AFTER_ACTIVATE(var Msg: TMessage); message WM_AFTER_ACTIVATE;

    Constructor Create(AOwner: TComponent;
                  const AIDEP: Integer;
                        AIDPK: LongInt;
                        AIDEV: LongInt;
                        ACDEV: Word;
                        AFBEV: String;
                        ATPEV: String); reintroduce; overload;

    Destructor  Destroy; override;

    class procedure _ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                              AIDEP    : Integer = 0;
                              AIDPK    : LongInt = 0;
                              AIDEV    : LongInt = 0;
                              ACDEV    : Word    = 0;
                              AFBEV    : String  = '';
                              ATPEV    : String  = '');

  end;

var
  FrmSHE_DEF_EDI: TFrmSHE_DEF_EDI;

  _Form: TStringList = Nil;
  _FormPesquisa: Boolean;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmSHE_DEF_EDI._WM_AFTER_CREATE(var Msg: TMessage);
begin
  oOTransact(TConsulta);
end;

procedure TFrmSHE_DEF_EDI._WM_AFTER_SHOW(var Msg: TMessage);
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

procedure TFrmSHE_DEF_EDI._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
  if REC_SHE_DEF.FB_Event <> EmptyStr then
     with EEvent do
     try
       UnregisterEvents;

       Events.Add(TRIM(oREPZero(REC_SHE_DEF.FB_Event,'_',RECParametros.EP_ID,3))); { Padrão }
       Events.Add(TRIM(oREPZero(REC_SHE_DEF.FB_Event,'_',RECUsuarios.ID  ,3))); { Login }

       if (ACTExecEvent.Tag > 0) and (ACTExecEvent.Tag <> RECUsuarios.ID) then
       Events.Add(TRIM(oREPZero(REC_SHE_DEF.FB_Event,'_',ACTExecEvent.Tag,3))); { Responsável }

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

procedure TFrmSHE_DEF_EDI.SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmSHE_DEF_EDI.SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

Class procedure TFrmSHE_DEF_EDI._ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                                          AIDEP : Integer = 0;
                                          AIDPK : LongInt = 0;
                                          AIDEV : LongInt = 0;
                                          ACDEV : Word    = 0;
                                          AFBEV : String  = '';
                                          ATPEV : String  = '');

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
  TForm(AForm) := Self.Create (AOwner,
                               AIDEP ,
                               AIDPK ,
                               AIDEV ,
                               ACDEV ,
                               AFBEV ,
                               ATPEV);

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

Destructor TFrmSHE_DEF_EDI.Destroy;
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

Constructor TFrmSHE_DEF_EDI.Create(AOwner: TComponent;
                              const AIDEP: Integer;
                                    AIDPK: LongInt;
                                    AIDEV: LongInt;
                                    ACDEV: Word;
                                    AFBEV: String;
                                    ATPEV: String);
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.EP_ID := INTTOSTR(AIDEP);
  REC_SHE_DEF.IDPK := INTTOSTR(AIDPK);

  REC_SHE_DEF.IDEV := INTTOSTR(AIDEV);
  REC_SHE_DEF.CDEV := INTTOSTR(ACDEV);

  REC_SHE_DEF.FB_PSQ_TB_NO_PK := Trim(AFBEV);
  REC_SHE_DEF.TPEV := Trim(ATPEV);

  REC_SHE_DEF.FForceCaixa := False; { Caixa }
  
  inherited Create(AOwner);
end;

procedure TFrmSHE_DEF_EDI.FormCreate(Sender: TObject);
begin
  { Posição Página }
  REC_SHE_DEF.FPosition := Self.Position;

  { Edições }
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

  if not ForceClose then
  ForceClose := (not REC_SHE_DEF.GView); { Apenas quando parâmetro não setado }

  REC_SHE_DEF.FForceClose := ForceClose;
  REC_SHE_DEF.FAlert      := 'Usuário não Autorizado.' + #13 +
                             'Favor entrar em contato com o administrador do sistema.';

  if (not REC_SHE_DEF.FForceClose) and (REC_SHE_DEF.FForceCaixa) and (REC_SHE_DEF.IDEV = 0) and
     (RECParametros.STCX <> 'Caixa Aberto') then
  begin
    ForceClose := True;
    REC_SHE_DEF.FForceClose := ForceClose;
    REC_SHE_DEF.FAlert      := 'Caixa não Aberto.' + #13 +
                               'Favor entrar em contato com o administrador do sistema.';
  end;

  if not REC_SHE_DEF.FForceClose then
         PostMessage( handle, WM_AFTER_CREATE, 0, 0 ) else
  begin
    oErro(Application.Handle,'ACESSO NEGADO !' + #13 + #13 +
                              REC_SHE_DEF.FAlert);

    PostMessage(Handle, WM_CLOSE, 0, 0);

    OnShow     := Nil;
    OnActivate := Nil;

    Self.Visible := False;
    Self.Tag     := 1976;
  end;
end;

procedure TFrmSHE_DEF_EDI.FormShow(Sender: TObject);
begin
  OnShow := Nil;

  if not REC_SHE_DEF.FForceClose then
  PostMessage(Handle, WM_AFTER_SHOW, 0, 0 );
end;

procedure TFrmSHE_DEF_EDI.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;

  if not REC_SHE_DEF.FForceClose then
  PostMessage(Handle, WM_AFTER_ACTIVATE, 0, 0 );
end;

procedure TFrmSHE_DEF_EDI.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if REC_SHE_DEF.Editing then
     case messageBox(handle,'Edição em andamento !' + #13 +
                            'Sair mesmo assim ?',
                             PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
          mrCancel: Abort;
          mrNo    : Abort;
     end;
end;

procedure TFrmSHE_DEF_EDI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action  := caFree;
  OnClose := Nil;
end;

procedure TFrmSHE_DEF_EDI.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmSHE_DEF_EDI.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmSHE_DEF_EDI.FormPaint(Sender: TObject);
var
  AMainFormScreen: TRect;
  FHeight,
  FWidth ,
  H,
  T,
  B,
  L,R: Word;
begin
  if Showing then
  begin
    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,AMainFormScreen);

    T := AMainFormScreen.Top;
    B := AMainFormScreen.Bottom;
    L := AMainFormScreen.Left;
    R := AMainFormScreen.Right;
    H := B;

    if REC_SHE_DEF.FPosition = poDesigned then
    begin
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
          if FHeight > 0 then
          Top := (T  + (H - Height)) div 2;

          if FWidth > 0 then
          Left := ((R + L) - Width )  div 2;
        end else
        if (FHeight > 0) or (FWidth  > 0) then
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

    { Ajusta o rodapé conforme o form }
    SBRodape.Panels[SBRodape.Panels.Count - 2].Width := SBRodape.Width - (SBRodape.Panels[SBRodape.Panels.Count - 1].Width + 115);

    { Dimensões }
    if RECUsuarios.Id = 0 then
       Self.Caption := 'DIMENSÕES: Monitor: Altura = ' + IntToStr(Screen.Height) + ' Largura: ' + IntToStr(Screen.Width) + ' / ' +
                                     'Tela: Altura = ' + IntToStr(Self.Height  ) + ' Largura: ' + IntToStr(Self.Width  );
  end;
end;

procedure TFrmSHE_DEF_EDI.FormResize(Sender: TObject);
begin
  if Self <> Nil then
  begin
    if (REC_SHE_DEF.FWorkArea) and (Screen.Width > 1024) then
        REC_SHE_DEF.FWorkArea := False;

    if (REC_SHE_DEF.FMainArea) and (Screen.Width > 1366) then
        REC_SHE_DEF.FMainArea := False;

    if (REC_SHE_DEF.FWorkArea) or (REC_SHE_DEF.FMainArea) then
    begin
      HelpKeyword := '3';
      REC_SHE_DEF.FPosition := poDefault;
    end else


    if (HelpKeyword = '5') and (Screen.Width >= 1360) and (Screen.Width <= 1366) then {MainArea, mas sem desabilitar botões }
    begin
      REC_SHE_DEF.FPosition := poDefault;
    end else

    if REC_SHE_DEF.CDEV = 1 then
    begin
    {  REC_SHE_DEF.FPosition := poDesigned;
      Self.HelpContext        := 90;
      Self.AlphaBlendValue    := 90; }
    end;

    Paint;
  end;
end;

procedure TFrmSHE_DEF_EDI.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Consulta);
end;

procedure TFrmSHE_DEF_EDI.ACTMAppendExecute(Sender: TObject);
begin
  if (not ACTMAppend.Enabled) or (not ACTMAppend.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_EDI.ACTMEditExecute(Sender: TObject);
begin
  if (not ACTMEdit.Enabled) or (not ACTMEdit.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_EDI.ACTMDeleteExecute(Sender: TObject);
begin
  if (not ACTMDelete.Enabled) or (not ACTMDelete.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_EDI.ACTMPostExecute(Sender: TObject);
begin
  if (not ACTMPost.Enabled) or (not ACTMPost.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_EDI.ACTMCancelExecute(Sender: TObject);
begin
  if (not ACTMCancel.Enabled) or (not ACTMCancel.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_EDI.ACTSaidaExecute(Sender: TObject);
begin
  REC_SHE_DEF.FB_PSQ_OK := False;
  Close;
end;

procedure TFrmSHE_DEF_EDI.ACTExecEventExecute(Sender: TObject);
var
  i: word;
begin
  if REC_SHE_DEF.FB_Event <> EmptyStr then
  begin
    with EEvent do
    try
      UnregisterEvents;

      Events.Add(TRIM(oREPZero(REC_SHE_DEF.FB_Event,'_',RECParametros.EP_ID,3))); { Padrão }
      Events.Add(TRIM(oREPZero(REC_SHE_DEF.FB_Event,'_',RECUsuarios.ID  ,3))); { Login }

      if (ACTExecEvent.Tag > 0) and (ACTExecEvent.Tag <> RECUsuarios.ID) then
      Events.Add(TRIM(oREPZero(REC_SHE_DEF.FB_Event,'_',ACTExecEvent.Tag,3))); { Responsável }

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

    try
      oOTransact(TEvent);

      SPEvent.Close;
      SPEvent.StoredProcName := 'SP_FB_EVENT';
      SPEvent.Prepare;

      for i := 0 to SPEvent.ParamCount - 1 do
      SPEvent.Params[i].Value := Null;

      for i := 0 to EEvent.Events.Count - 1 do
      SPEvent.Params[i].Value := EEvent.Events.Strings[i];
      SPEvent.ExecProc;

      oCTransact(TEvent);
    except
      on E: Exception do
      begin
        oCTransact(TEvent,ltRollback);
        oErro(Application.Handle,'Falha ao tentar executar evento !' + #13 +
                                  REC_SHE_DEF.FB_Event   + '.' + #13 + #13 +
                                  E.Message              + '.' + #13 + #13 +
                                 'Favor entrar em contato com o administrador do sistema.');
      end;
    end;
  end;
end;

end.
