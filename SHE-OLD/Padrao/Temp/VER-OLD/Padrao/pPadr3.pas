unit pPadr3;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBStoredProc, IBEvents, IBDatabase, DB, math, StrUtils,
  IBCustomDataSet, IBQuery, ExtCtrls, StdCtrls, ComCtrls, ImgList, 
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  DBCtrls, Grids, DBGrids, rxSpeedbar, IBSQL, ActnList;
type
  TFrmPadr3 = class(TForm)
    Consulta: TIBQuery;
    PNLCadastro: TPanel;
    sbMSG: TStatusBar;
    IBTra: TIBTransaction;
    ibSP: TIBStoredProc;
    PaintBox: TPaintBox;
    imageOPC: TImageList;
    imageITEM: TImageList;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    SQLEvent: TIBSQL;
    PNLMenu: TPanel;
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    siSAV: TSpeedItem;
    siCAN: TSpeedItem;
    siVAL: TSpeedItem;
    siSAIR: TSpeedItem;
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
    EEventAdmin: TIBEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ACTRefreshExecute(Sender: TObject);
    procedure ACTMAppendExecute(Sender: TObject);
    procedure ACTMEditExecute(Sender: TObject);
    procedure ACTMDeleteExecute(Sender: TObject);
    procedure ACTMPostExecute(Sender: TObject);
    procedure ACTMCancelExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ACTExecEventExecute(Sender: TObject);
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

    property CurrentEvent: String  read FCurrentEvent write _SetCurrentEvent;
    property ForceClose  : Boolean read FForceClose   write _SetForceClose;

    Constructor Create(AOwner: TComponent;
                 const AIDPK : LongInt = 0;
                       ADEPK : String  = '';
                       AIDEV : LongInt = 0;
                       ACDEV : Word    = 0); reintroduce; overload;

  end;

var
  FrmPadr3: TFrmPadr3;

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

Constructor TFrmPadr3.Create(AOwner: TComponent;
                         const AIDPK : LongInt = 0;
                               ADEPK : String  = '';
                               AIDEV : LongInt = 0;
                               ACDEV : Word    = 0);
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.IDPK  := INTTOSTR(AIDPK);
  REC_SHE_DEF.DEPK  := TRIM(ADEPK);

  REC_SHE_DEF.IDEV  := INTTOSTR(AIDEV);
  REC_SHE_DEF.CDEV  := INTTOSTR(ACDEV);

  { Set }
  if REC_SHE_DEF.IDPK > 0 then
  begin
    CurrentEvent := 'Alteração de Pedido de Compras';
    ForceClose   := False;
  end else
  begin
    CurrentEvent := 'Inclusão de Pedido de Compras';
    ForceClose   := not (RECParametros.STCX = 'Caixa Aberto');
  end;

  inherited Create(AOwner);
end;

procedure TFrmPadr3.FormCreate(Sender: TObject);
begin
  { INICIALIZAÇÃO }
  Self.Caption := FCurrentEvent; { Caption }
  oOTransact(IBTRA); { Transação }

  { FORM MANAGER }
  REC_SHE_DEF.FrmPosition := Self.Position; { Página }
  SetCursorPos(500,Self.Top); { Cursor }

  { ACCESS MANAGER }
  REC_SHE_DEF.FForceClose := ForceClose;
  REC_SHE_DEF.FAlert      := 'Usuário não Autorizado.' + #13 +
                             'Favor entrar em contato com o administrador do sistema.';

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

  if not REC_SHE_DEF.GAdmin then
  FForceClose := False;

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
  end;
end;

procedure TFrmPadr3.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;
end;

procedure TFrmPadr3.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if FForceClose then
  Exit;

  { EVENTOS }
  try
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

  finally
    Screen.Cursor := crDefault;
    oUnLockWindowUpdate; { Desbloqueia Tela }
  end;
end;

procedure TFrmPadr3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnClose := Nil;
  Action  := caFree;
end;

procedure TFrmPadr3.FormDestroy(Sender: TObject);
begin
  try
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
             oFTransact(IBTRA);
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
       { nothing }
     end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmPadr3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: SISair.Click;
       vk_return: if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo)) then
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

procedure TFrmPadr3.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #5 then
  {[Ctrl+E]} else
  if key = #8 then
  {[Ctrl+H]} else
  if key = #9 then
  {[Ctrl+I]} else
  if key = #16 then
  //SIRel.Click else
  if key = #19 then
  {[Ctrl+S]} else
  if key = #22 then
  {[Ctrl+V]};
end;

procedure TFrmPadr3.FormPaint(Sender: TObject);
var
  S: TRect;
  H,
  T,
  B,
  L,
  R,
  FHeight,
  FWidth: Word;
begin
  if Showing then
  begin
    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(Application.MainForm.ClientHandle,S);
    T := S.Top;
    B := S.Bottom;
    L := S.Left;
    R := S.Right;
    H := B;

    FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
    FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

    if REC_SHE_DEF.FrmPosition = poDefault then
    begin
      Top    := IFThen(FormStyle = fsNormal,T,0);
      Left   := IFThen(FormStyle = fsNormal,L,0);
      Width  := IFThen(REC_SHE_DEF.FrmPosition = poDefault,R - L - 5,0);
      Height := IFThen(REC_SHE_DEF.FrmPosition = poDefault,H - T - 5,0);
    end else
    begin
      if REC_SHE_DEF.FrmPosition = poDesigned then
      begin
        if FHeight > 0 then Height := FHeight;
        if FWidth  > 0 then Width  := FWidth;

        if FormStyle = fsNormal then
        begin
          Top  := (T  + (H - Height)) div 2;
          Left := ((R + L) - Width )  div 2;
        end else
        begin
          Top  := ((B - T ) - Height) div 2;
          Left := ((R - L)  - Width ) div 2;
        end;
      end;
    end;

    { Ajusta o rodapé conforme o form }
    SBMSG.Panels[SBMSG.Panels.Count - 2].Width := SBMSG.Width - (SBMSG.Panels[SBMSG.Panels.Count - 1].Width + 140);
    
    if RECUsuarios.Id = 0 then
       Caption := 'DIMENSÕES: Monitor: Altura = '+IntToStr(Screen.Height)+' Largura: '+IntToStr(Screen.Width)+' / '+
                  'Tela: Altura = '              +IntToStr(Self.Height  )+' Largura: '+IntToStr(Self.Width  );
  end;
end;

procedure TFrmPadr3.FormResize(Sender: TObject);
begin
  if (not Showing) or (FForceClose) then
  Exit;

  if Self <> Nil then
     try
       { VER DIM TELA }
       REC_SHE_DEF.FHeight := Self.Height;
       REC_SHE_DEF.FWidth  := Self.Width ;

       { Ajusta o rodapé conforme o form }
       SBMSG.Panels[SBMSG.Panels.Count - 2].Width := SBMSG.Width - (SBMSG.Panels[SBMSG.Panels.Count - 1].Width + 115);

       if RECUsuarios.Id = 0 then
       Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_DEF.FWidth)  + ' x ' + IntToStr(REC_SHE_DEF.FHeight) + '. ' + Self.Caption;
       Paint;
    finally
      { After Resize }
       //oResize(DBGConsulta);
    end;
end;

procedure TFrmPadr3.ACTRefreshExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3.ACTMAppendExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3.ACTMEditExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3.ACTMDeleteExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr3.ACTMPostExecute(Sender: TObject);
begin
  ActiveControl := Nil;
  if oYesNo(handle,'Salvar Registro ?') = mrNo then
  Abort;
end;

procedure TFrmPadr3.ACTMCancelExecute(Sender: TObject);
begin
  REC_SHE_DEF.Edited := False;
  Close;
end;

procedure TFrmPadr3.ACTSaidaExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmPadr3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure TFrmPadr3.ACTExecEventExecute(Sender: TObject);
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
