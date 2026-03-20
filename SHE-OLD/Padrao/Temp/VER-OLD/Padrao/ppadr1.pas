unit pPadr1;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc, math, StrUtils,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, dxDBELib, dxExEdtr, rxSpeedbar,
  IBSQL, ActnList;

type
  TFrmPadr1 = class(TForm)
    sbMSG: TStatusBar;
    Consulta: TIBQuery;
    Cadastro: TIBDataSet;
    DTSCadastro: TDataSource;
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    siPSQ: TSpeedItem;
    siREF: TSpeedItem;
    siSAIR: TSpeedItem;
    siLIXO: TSpeedItem;
    siREL: TSpeedItem;
    IBTra: TIBTransaction;
    ibSP: TIBStoredProc;
    pnldir: TPanel;
    pnldbg: TPanel;
    pnlbot: TPanel;
    imageITEM: TImageList;
    imageOPC: TImageList;
    siEVE: TSpeedItem;
    gbDET: TGroupBox;
    DBGConsulta: TdxDBGrid;
    SpeedBar1: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedbarSection2: TSpeedbarSection;
    SpeedbarSection3: TSpeedbarSection;
    SpeedbarSection4: TSpeedbarSection;
    siINC: TSpeedItem;
    siALT: TSpeedItem;
    siDEL: TSpeedItem;
    siSAV: TSpeedItem;
    siCAN: TSpeedItem;
    ConsultaAux: TIBQuery;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    SQLEvent: TIBSQL;
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
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure siREFClick(Sender: TObject);
    procedure CadastroAfterDelete(DataSet: TDataSet);
    procedure DBGConsultaBackgroundDrawEvent(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect);
    procedure CadastroAfterPost(DataSet: TDataSet);
    procedure siINCClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure siCANClick(Sender: TObject);
    procedure siSAIRClick(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure siDELClick(Sender: TObject);
    procedure DBGConsultaDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure CadastroNewRecord(DataSet: TDataSet);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DTSCadastroStateChange(Sender: TObject);
    procedure siPSQClick(Sender: TObject);
    procedure siRELClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CadastroPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure CadastroUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure CadastroBeforeCancel(DataSet: TDataSet);
    procedure CadastroAfterCancel(DataSet: TDataSet);
    procedure ACTExecEventExecute(Sender: TObject);
    procedure EEventAdminEventAlert(Sender: TObject; EventName: String;
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

    property CurrentEvent: String  read FCurrentEvent write _SetCurrentEvent;
    property ForceClose  : Boolean read FForceClose   write _SetForceClose;

    Constructor Create(AOwner: TComponent;
                 const AIDPK : LongInt = 0;
                       ADEPK : String  = '';
                       AIDEV : LongInt = 0;
                       ACDEV : Word    = 0); reintroduce; overload;

  end;

var
  FrmPadr1: TFrmPadr1;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmPadr1._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmPadr1._SetCurrentAlert(const AValue: String);
begin
  FCurrentAlert := AValue;
end;

procedure TFrmPadr1._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

Constructor TFrmPadr1.Create(AOwner: TComponent;
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

procedure TFrmPadr1.FormCreate(Sender: TObject);
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

procedure TFrmPadr1.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;
end;

procedure TFrmPadr1.FormActivate(Sender: TObject);
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

procedure TFrmPadr1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnClose := Nil;
  Action  := caFree;
end;

procedure TFrmPadr1.FormDestroy(Sender: TObject);
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

procedure TFrmPadr1.FormKeyDown(Sender: TObject; var Key: Word;
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
       118      : SIPsq.Click;
       116      : SIRef.Click;
  end;
end;

procedure TFrmPadr1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #5 then
  {[Ctrl+E]} else
  if key = #8 then
  {[Ctrl+H]} else
  if key = #9 then
  {[Ctrl+I]} else
  if key = #16 then
  SIRel.Click else
  if key = #19 then
  {[Ctrl+S]} else
  if key = #22 then
  {[Ctrl+V]};
end;

procedure TFrmPadr1.FormPaint(Sender: TObject);
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

procedure TFrmPadr1.FormResize(Sender: TObject);
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
       oResize(DBGConsulta);
    end;
end;

procedure TFrmPadr1.siPSQClick(Sender: TObject);
begin
  if (not SpeedBar2.Enabled) or (not SpeedBar2.Visible) or (not SIPsq.Enabled) or (not SIPsq.Visible) then
  Abort;

  DBGConsulta.SetFocus;
end;

procedure TFrmPadr1.siREFClick(Sender: TObject);
begin
  oRefresh(Cadastro);
end;

procedure TFrmPadr1.siRELClick(Sender: TObject);
begin
  if (not SpeedBar2.Enabled) or (not SpeedBar2.Visible) or (not SIRel.Enabled) or (not SIRel.Visible) then
  Abort;

  DBGConsulta.SetFocus;
end;

procedure TFrmPadr1.siSAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPadr1.siINCClick(Sender: TObject);
begin
  DBGConsulta.SetFocus;
  if ((SpeedBar1.Visible) and (SpeedBar1.Enabled) and
      (siINC.Visible)     and (siINC.Enabled) and
      (Cadastro.State = dsBrowse)) then
  Cadastro.Append;
end;

procedure TFrmPadr1.siALTClick(Sender: TObject);
begin
  DBGConsulta.SetFocus;
  if ((SpeedBar1.Visible)             and (SpeedBar1.Enabled) and
      (siALT.Visible)                 and (siALT.Enabled) and
      (not Cadastro.Fields[0].IsNull) and (Cadastro.State = dsBrowse)) then
  Cadastro.Edit;
end;

procedure TFrmPadr1.siDELClick(Sender: TObject);
begin
  DBGConsulta.SetFocus;
  if ((not SpeedBar1.Visible)     or (not SpeedBar1.Enabled) or
      (not siDEL.Visible)         or (not siDEL.Enabled) or
      (Cadastro.Fields[0].IsNull) or (Cadastro.State in [dsInsert,dsEdit])) then
  Abort;
end;

procedure TFrmPadr1.siSAVClick(Sender: TObject);
begin
  DBGConsulta.SetFocus;
  if cadastro.State in [dsEdit,dsInsert] then
  cadastro.Post;
end;

procedure TFrmPadr1.siCANClick(Sender: TObject);
begin
  if cadastro.State in [dsEdit,dsInsert] then
     cadastro.Cancel else SISAIR.Click;
end;

procedure TFrmPadr1.CadastroAfterDelete(DataSet: TDataSet);
begin
  oRefresh(Cadastro);
end;

procedure TFrmPadr1.CadastroNewRecord(DataSet: TDataSet);
begin
  Cadastro.Fields[0].Value := 0;
end;

procedure TFrmPadr1.CadastroAfterPost(DataSet: TDataSet);
begin
  ACTExecEvent.Execute;
end;

procedure TFrmPadr1.DBGConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_return   : siALT.Click;
       VK_escape   : SICAN.Click;
       VK_delete   : if not siSAV.Enabled then siDEL.Click;
       VK_insert   : if not siSAV.Enabled then siINC.Click;
  end;
end;

procedure TFrmPadr1.DBGConsultaBackgroundDrawEvent(Sender: TObject;
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

procedure TFrmPadr1.DBGConsultaDblClick(Sender: TObject);
begin
  siALT.Click;
end;

procedure TFrmPadr1.DTSCadastroStateChange(Sender: TObject);
begin
  oState(Cadastro,SpeedBar1);
  if Cadastro.State = dsBrowse then
  begin
    DBGConsulta.OptionsBehavior := ([edgoAutoSearch,edgoAutoSort,edgoCaseInsensitive,edgoCollapsedReload,edgoDragCollapse,edgoDragExpand,edgoDragScroll,edgoEnterShowEditor,edgoImmediateEditor,edgoSeekDetail,edgoShowHourGlass,edgoTabThrough,edgoVertThrough]);
    DBGConsulta.OptionsView     := ([edgoAutoCalcPreviewLines,edgoBandHeaderWidth,edgoHotTrack,edgoPreview,edgoUseBitmap]);
    SBMsg.Panels[0].Text        := IFThen(Cadastro.State = dsEdit,'Alteração','Inclusão');
  end else
  begin
    DBGConsulta.OptionsBehavior := ([edgoAutoSort,edgoCaseInsensitive,edgoCollapsedReload,edgoDragCollapse,edgoDragExpand,edgoDragScroll,edgoEditing,edgoEnterShowEditor,edgoImmediateEditor,edgoSeekDetail,edgoShowHourGlass,edgoTabThrough,edgoVertThrough]);
    DBGConsulta.OptionsView     := ([edgoAutoCalcPreviewLines,edgoBandHeaderWidth,edgoHotTrack,edgoInvertSelect,edgoPreview,edgoUseBitmap]);
    SBMsg.Panels[0].Text        := 'Consulta';
  end;
end;

procedure TFrmPadr1.CadastroPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmPadr1.CadastroUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmPadr1.CadastroBeforeCancel(DataSet: TDataSet);
begin
  siINC.Enabled := true;
  siALT.Enabled := true;
  siDEL.Enabled := true;
  siSAV.Enabled := false;
  siCAN.Enabled := false;

  DBGConsulta.SetFocus;
  if Cadastro.Eof then
  begin
    Cadastro.Close;
    Cadastro.Open;
    Abort;
  end;
end;

procedure TFrmPadr1.CadastroAfterCancel(DataSet: TDataSet);
begin
  siINC.Enabled := true;
  siALT.Enabled := true;
  siDEL.Enabled := true;
  siSAV.Enabled := false;
  siCAN.Enabled := false;
end;

procedure TFrmPadr1.EEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  oRefresh(Cadastro);
end;

procedure TFrmPadr1.EEventAdminEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  if RECUsuarios.IS_EVE_ADM then
  oRefresh(Cadastro);
end;

procedure TFrmPadr1.ACTExecEventExecute(Sender: TObject);
var
  i: word;
begin
  if REC_SHE_DEF.FB_Event = EmptyStr then
  begin
    if not ALockWindowUpdate then
    oRefresh(Cadastro);
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
