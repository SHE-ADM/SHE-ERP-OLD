unit pDefaultEditGrid;

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
  TFrmDefaultEditGrid = class(TForm)
    DTSEdicao: TDataSource;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    BMMain: TdxBarManager;
    BLBRefresh: TdxBarLargeButton;
    DMMain: TdxDockingManager;
    ALMain: TActionList;
    ACTAppend: TAction;
    ACTEdit: TAction;
    ACTDelete: TAction;
    ACTRefresh: TAction;
    ACTSaida: TAction;
    BLBRelatorios: TdxBarLargeButton;
    ACTRelatorios: TAction;
    SQLConsulta: TIBSQL;
    TConsulta: TIBTransaction;
    PNLPrincipal: TPanel;
    DSConsulta: TdxDockSite;
    SBRodape: TdxStatusBar;
    BBPesquisaCadastro: TdxBarButton;
    BEPesquisaCadastro: TdxBarEdit;
    BLBPesquisaCadastroRapida: TdxBarLargeButton;
    PMPesquisaCadastro: TdxBarPopupMenu;
    ACTCancel: TAction;
    ACTPost: TAction;
    BBPesquisaPeriodo: TdxBarButton;
    BDCPesquisaPeriodoI: TdxBarDateCombo;
    BDCPesquisaPeriodoF: TdxBarDateCombo;
    PMPesquisaPeriodo: TdxBarPopupMenu;
    ACTPesquisa: TAction;
    ACTPesquisaPeriodo: TAction;
    ACTPesquisaCadastro: TAction;
    ACTExecEvent: TAction;
    PMRelatorios: TdxBarPopupMenu;
    ACTValida: TAction;
    ACTCancela: TAction;
    BLBValida: TdxBarLargeButton;
    BLBCancela: TdxBarLargeButton;
    BLBSaida: TdxBarLargeButton;
    DPEdicao: TdxDockPanel;
    dxLayoutDockSite1: TdxLayoutDockSite;
    DPConsulta: TdxDockPanel;
    LDSConsulta: TdxLayoutDockSite;
    PNLConsulta: TPanel;
    DBGEdicao: TdxDBGrid;
    SBSEdicao: TdxSideBarStore;
    SBSAppend: TdxStoredSideItem;
    SBSEdit: TdxStoredSideItem;
    SBSDelete: TdxStoredSideItem;
    SBSPost: TdxStoredSideItem;
    SBSCancel: TdxStoredSideItem;
    SBEdicao: TdxSideBar;
    Edicao: TIBDataSet;
    BLBPesquisaPeriodo: TdxBarLargeButton;
    PNLFKConsulta: TPanel;
    ILPrincipal: TImageList;
    EEventAdmin: TIBEvents;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure ACTRefreshExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure ACTAppendExecute(Sender: TObject);
    procedure ACTEditExecute(Sender: TObject);
    procedure ACTDeleteExecute(Sender: TObject);
    procedure DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure BEPesquisaCadastroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACTCancelExecute(Sender: TObject);
    procedure ACTPostExecute(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure ACTPesquisaPeriodoExecute(Sender: TObject);
    procedure ACTPesquisaCadastroExecute(Sender: TObject);
    procedure ACTExecEventExecute(Sender: TObject);
    procedure EdicaoBeforeOpen(DataSet: TDataSet);
    procedure EdicaoAfterOpen(DataSet: TDataSet);
    procedure DTSEdicaoStateChange(Sender: TObject);
    procedure EdicaoBeforeInsert(DataSet: TDataSet);
    procedure EdicaoBeforeEdit(DataSet: TDataSet);
    procedure EdicaoBeforeDelete(DataSet: TDataSet);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure EdicaoBeforeCancel(DataSet: TDataSet);
    procedure ACTValidaExecute(Sender: TObject);
    procedure ACTCancelaExecute(Sender: TObject);
    procedure EdicaoAfterInsert(DataSet: TDataSet);
    procedure EdicaoAfterEdit(DataSet: TDataSet);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure EdicaoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EdicaoUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure EdicaoDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EdicaoEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EEventAdminEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
  private
    { Private declarations }
    FCurrentEvent: String;
    FForceClose  : Boolean;

    { método para atribuição\validação de valor }
    procedure _SetCurrentEvent(const AValue: String);
    procedure _SetForceClose  (const AValue: Boolean);
  public
    { Public declarations }
    REC_SHE_DEF: TREC_SHE_DEF;

    property CurrentEvent: String  read FCurrentEvent write _SetCurrentEvent;
    property ForceClose  : Boolean read FForceClose   write _SetForceClose;

    procedure _WM_AFTER_CREATE  (var Msg: TMessage); message WM_AFTER_CREATE;
    procedure _WM_AFTER_SHOW    (var Msg: TMessage); message WM_AFTER_SHOW;
    procedure _WM_AFTER_ACTIVATE(var Msg: TMessage); message WM_AFTER_ACTIVATE;

    Constructor Create(AOwner   : TComponent;
                 const AEP_ID   : Integer;
                       AIDPK    : LongInt;
                       AIDEV    : LongInt;
                       ACDEV    : Word;
                       AFB_TB_PK: String); reintroduce; overload;

    class procedure _ExecForm(AOwner   : TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                              AEP_ID   : Integer = 0;
                              AIDPK    : LongInt = 0;
                              AIDEV    : LongInt = 0;
                              ACDEV    : Word    = 0;
                              AFB_TB_PK: String  = '');

    Destructor  Destroy; override;
  end;

var
  FrmDefaultEditGrid: TFrmDefaultEditGrid;

  _Form: TStringList = Nil;
  _FormPesquisa: Boolean;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmDefaultEditGrid._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmDefaultEditGrid._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

Class procedure TFrmDefaultEditGrid._ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                              AEP_ID   : Integer = 0;
                              AIDPK    : LongInt = 0;
                              AIDEV    : LongInt = 0;
                              ACDEV    : Word    = 0;
                              AFB_TB_PK: String  = '');
var
  idxForm: Integer;
begin
  oLockWindowUpdate;
  
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
                               AEP_ID,
                               AIDPK ,
                               AIDEV ,
                               ACDEV ,
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

Constructor TFrmDefaultEditGrid.Create(AOwner: TComponent;
                                const AEP_ID   : Integer;
                                      AIDPK    : LongInt;
                                      AIDEV    : LongInt;
                                      ACDEV    : Word;
                                      AFB_TB_PK: String);
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.EP_ID := INTTOSTR(AEP_ID);
  REC_SHE_DEF.IDPK  := INTTOSTR(AIDPK );

  REC_SHE_DEF.IDEV  := INTTOSTR(AIDEV);
  REC_SHE_DEF.CDEV  := INTTOSTR(ACDEV);

  REC_SHE_DEF.FB_TB_PK := AFB_TB_PK;
  
  inherited Create(AOwner);
end;

Destructor TFrmDefaultEditGrid.Destroy;
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
    inherited;
  end;
end;

procedure TFrmDefaultEditGrid._WM_AFTER_CREATE(var Msg: TMessage);
begin
  Screen.Cursor     := crAppStart;
  ALockWindowUpdate := True;
  oOTransact(TConsulta);
end;

procedure TFrmDefaultEditGrid._WM_AFTER_SHOW(var Msg: TMessage);
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

procedure TFrmDefaultEditGrid._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
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
    oUnLockWindowUpdate; { Desbloqueia Tela }

    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmDefaultEditGrid.FormCreate(Sender: TObject);
begin
  { INICIALIZAÇÃO }
  oOTransact(TConsulta); { Transação }

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

  { ACCESS DENIED }
  if (not REC_SHE_DEF.FForceClose) and (REC_SHE_DEF.FForceCaixa) and (REC_SHE_DEF.IDEV = 0) and
     (RECParametros.STCX <> 'Caixa Aberto') then
  begin
    ForceClose := True;

    REC_SHE_DEF.FForceClose := ForceClose;
    REC_SHE_DEF.FAlert      := 'Caixa não Aberto.' + #13 +
                               'Favor entrar em contato com o administrador do sistema.';
  end;

  { ACCESS ABORT }
  if (REC_SHE_DEF.FForceClose) or (not REC_SHE_DEF.GView) then
  begin
    oErro(Application.Handle,'ACESSO NEGADO !' + #13 + #13 +
                              REC_SHE_DEF.FAlert);

    Self.Visible := False;
    Self.Height  := 0;
    Self.Width   := 0;

    PostMessage(Handle, WM_CLOSE, 0, 0);
  end else
  PostMessage( handle, WM_AFTER_CREATE, 0, 0 );
end;

procedure TFrmDefaultEditGrid.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if not ForceClose then
         PostMessage( handle, WM_AFTER_SHOW, 0, 0 );
end;

procedure TFrmDefaultEditGrid.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;

  PostMessage( handle, WM_AFTER_ACTIVATE, 0, 0 );
end;

procedure TFrmDefaultEditGrid.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Edicao.State in [dsInsert,dsEdit] then
     Case MessageBox(Handle,'Existem Alterações Pendentes !'+#13+
                            'Deseja Salvar ?',
                             PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
          mrCancel: Abort;
          mrNo    : Edicao.Cancel;
          mrYes   : Edicao.Post;
     end;
end;

procedure TFrmDefaultEditGrid.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmDefaultEditGrid.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: ACTCancel.Execute;
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

procedure TFrmDefaultEditGrid.FormPaint(Sender: TObject);
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
  if REC_SHE_DEF.FrmPosition = poDefault then
  begin
    Top    := IFThen(FormStyle = fsNormal,T,0);
    Left   := IFThen(FormStyle = fsNormal,L,0);
    Width  := IFThen(REC_SHE_DEF.FrmPosition = poDefault,R - L - 5,0);
    Height := IFThen(REC_SHE_DEF.FrmPosition = poDefault,H - T - 5,0);
  end;
end;

procedure TFrmDefaultEditGrid.FormResize(Sender: TObject);
begin
  if (not Showing) or (REC_SHE_DEF.FForceClose) then
  Exit;

  if Self <> Nil then
     try
       { VER DIM TELA }
       REC_SHE_DEF.FHeight := Self.Height;
       REC_SHE_DEF.FWidth  := Self.Width ;

       if RECUsuarios.Id = 0 then
       Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_DEF.FWidth)  + ' x ' + IntToStr(REC_SHE_DEF.FHeight) + '. ' + Self.Caption;
       Paint;
    finally
      { After Resize }
       oResize(DBGEdicao);

       if BEPesquisaCadastro.Visible <> ivNever then
          BEPesquisaCadastro.SetFocus(False);
     end;
end;

procedure TFrmDefaultEditGrid.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Edicao);
end;

procedure TFrmDefaultEditGrid.ACTPesquisaPeriodoExecute(Sender: TObject);
begin
  if Sender.ClassType = TdxBarLargeButton then
     BBPesquisaPeriodo.Caption := TdxBarLargeButton(Sender).Caption;

  if (BEPesquisaCadastro.Text = EmptyStr) and (BDCPesquisaPeriodoI.Date <= 0) and (BDCPesquisaPeriodoF.Date <= 0) then
      Abort;

  if (BDCPesquisaPeriodoI.Date > 0) and (BDCPesquisaPeriodoF.Date > 0) then
  begin
    if BDCPesquisaPeriodoI.Date > BDCPesquisaPeriodoF.Date then
       oException(Nil,'Data Inicial não pode ser maior que Data Final !');

    ACTPesquisa.Execute;
  end;
end;

procedure TFrmDefaultEditGrid.ACTPesquisaCadastroExecute(Sender: TObject);
begin
  if Sender.ClassType = TdxBarLargeButton then
     BBPesquisaCadastro.Caption := TdxBarLargeButton(Sender).Caption;

  if (BEPesquisaCadastro.Text = EmptyStr) and (BDCPesquisaPeriodoI.Date <= 0) and (BDCPesquisaPeriodoF.Date <= 0) then
      Abort;

  ACTPesquisa.Execute;
end;

procedure TFrmDefaultEditGrid.ACTPesquisaExecute(Sender: TObject);
begin
  { laNotReOpen não deixa re-abrir as tabelas mesmo quando configuradas para isso
    oCTransaction -> oOTransaction }
  oRTransact(TEdicao,ltCommit,laNotReOpen);

  if (ACTPesquisa.Tag = 1) and (TEdicao.InTransaction) then
     Edicao.Prepare;
end;

procedure TFrmDefaultEditGrid.BEPesquisaCadastroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_escape then ACTSaida.Execute;
  if key = vk_return then ACTPesquisaCadastro.Execute else
  if key = VK_DOWN   then
  begin
    PostMessage(TWinControl(DBGEdicao).Handle, WM_SETFOCUS, 0, 0);
    TWinControl(DBGEdicao).SetFocus;
  end;
end;

procedure TFrmDefaultEditGrid.ACTValidaExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmDefaultEditGrid.ACTCancelaExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmDefaultEditGrid.ACTRelatoriosExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmDefaultEditGrid.ACTSaidaExecute(Sender: TObject);
begin
  if BEPesquisaCadastro.Text <> EmptyStr then
     BEPesquisaCadastro.Text := EmptyStr else
     Close;
end;

procedure TFrmDefaultEditGrid.ACTAppendExecute(Sender: TObject);
begin
  if (SBEdicao.Enabled ) and (SBEdicao.Visible ) and (not SBEdicao.Locked) and
     (ACTAppend.Enabled) and (ACTAppend.Visible) and
     (Edicao.State = dsBrowse) then
      Edicao.Append;
end;

procedure TFrmDefaultEditGrid.ACTEditExecute(Sender: TObject);
begin
  if (SBEdicao.Enabled)        and (SBEdicao.Visible) and (not SBEdicao.Locked) and
     (ACTEdit.Enabled )        and (ACTEdit.Visible ) and
     (Edicao.State = dsBrowse) and (Edicao.Fields[0].AsInteger > 0) then // Sempre Field[0] = 'ID'
      Edicao.Edit;
end;

procedure TFrmDefaultEditGrid.ACTDeleteExecute(Sender: TObject);
begin
  if (SBEdicao.Enabled )       and (SBEdicao.Visible ) and (not SBEdicao.Locked) and
     (ACTDelete.Enabled)       and (ACTDelete.Visible) and
     (Edicao.State = dsBrowse) and (Edicao.Fields[0].AsInteger > 0) then // Sempre Field[0] = 'ID'
      Edicao.Delete;
end;

procedure TFrmDefaultEditGrid.ACTPostExecute(Sender: TObject);
begin
  if Edicao.State in [dsInsert,dsEdit] then
     Edicao.Post;
end;

procedure TFrmDefaultEditGrid.ACTCancelExecute(Sender: TObject);
begin
  if Edicao.State in [dsInsert,dsEdit] then
     Edicao.Cancel
  else
     ACTSaida.Execute;
end;

procedure TFrmDefaultEditGrid.EdicaoBeforeOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crAppStart;
end;

procedure TFrmDefaultEditGrid.EdicaoAfterOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crDefault;
end;

procedure TFrmDefaultEditGrid.EdicaoNewRecord(DataSet: TDataSet);
begin
  Edicao.Fields[0].Value := 0;
  if REC_SHE_DEF.FB_GEN_ID <> EmptyStr then
     try
       oOTransact(TConsulta);
       with SQLConsulta do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT GEN_ID('+REC_SHE_DEF.FB_GEN_ID+',0) + 1 AS ID FROM RDB$DATABASE');
         ExecQuery;
         Edicao.Fields[0].Value := Current.Vars[0].AsInteger;
       end;
     finally
       oCTransact(TConsulta);
     end;
end;

procedure TFrmDefaultEditGrid.EdicaoBeforeInsert(DataSet: TDataSet);
begin
  Edicao.Fields[0].Tag := Edicao.Fields[0].AsInteger;
  
  if DPEdicao.CanFocus then
  begin
    DPEdicao.Hide;
    DPEdicao.Show;
  end;

  if not REC_SHE_DEF.GAppend then
     oException(Nil,'Acesso Negado !'+#13+
                    'Favor entrar em contato com o administrador do sistema.');
end;

procedure TFrmDefaultEditGrid.EdicaoAfterInsert(DataSet: TDataSet);
begin
  if (Showing) and (DBGEdicao.Visible) and (DBGEdicao.Enabled) then
  begin
    PostMessage(TWinControl(DBGEdicao).Handle, WM_SETFOCUS, 0, 0);
    TWinControl(DBGEdicao).SetFocus;
  end;
end;

procedure TFrmDefaultEditGrid.EdicaoBeforeEdit(DataSet: TDataSet);
begin
  Edicao.Fields[0].Tag := Edicao.Fields[0].AsInteger;

  if DPEdicao.CanFocus then
  begin
    DPEdicao.Hide;
    DPEdicao.Show;
  end;

  if not REC_SHE_DEF.GEdit then
     oException(Nil,'Acesso Negado !'+#13+
                    'Favor entrar em contato com o administrador do sistema.');
end;

procedure TFrmDefaultEditGrid.EdicaoAfterEdit(DataSet: TDataSet);
begin
  if (Showing) and (DBGEdicao.Visible) and (DBGEdicao.Enabled) then
  begin
    PostMessage(TWinControl(DBGEdicao).Handle, WM_SETFOCUS, 0, 0);
    TWinControl(DBGEdicao).SetFocus;
  end;
end;

procedure TFrmDefaultEditGrid.EdicaoBeforeDelete(DataSet: TDataSet);
begin
  if not REC_SHE_DEF.GDelete then
     oException(Nil,'Acesso Negado !'+#13+
                    'Favor entrar em contato com o administrador do sistema.');

  if DPEdicao.CanFocus then
  begin
    DPEdicao.Hide;
    DPEdicao.Show;
  end;
end;

procedure TFrmDefaultEditGrid.EdicaoBeforePost(DataSet: TDataSet);
begin
  if DPEdicao.CanFocus then
  begin
    DPEdicao.Hide;
    DPEdicao.Show;
  end;
end;

procedure TFrmDefaultEditGrid.EdicaoAfterPost(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
     oRefresh(Edicao);
end;

procedure TFrmDefaultEditGrid.EdicaoBeforeCancel(DataSet: TDataSet);
begin
  if DPEdicao.CanFocus then
  begin
    DPEdicao.Hide;
    DPEdicao.Show;
  end;

  if Edicao.Fields[0].Tag = 0 then
  begin
    Edicao.Close;
    Edicao.Open;

    ABORT;
  end;
end;

procedure TFrmDefaultEditGrid.EdicaoDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmDefaultEditGrid.EdicaoEditError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmDefaultEditGrid.EdicaoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmDefaultEditGrid.EdicaoUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmDefaultEditGrid.DTSEdicaoStateChange(Sender: TObject);
begin
  if Edicao.State in [dsInsert,dsEdit] then
  begin
    SBRodape.Panels[0].Text := IFThen(Edicao.State = dsInsert,'Inclusão','Alteração');
    oGridOptionsEdit(DBGEdicao,True);

    SBSAppend.Enabled    := False;
    SBSAppend.SmallImage := 4;

    SBSEdit.Enabled      := False;
    SBSEdit.SmallImage   := 6;

    SBSDelete.Enabled    := False;
    SBSDelete.SmallImage := 8;

    SBSPost.Enabled      := True;
    SBSPost.SmallImage   := 9;

    SBSCancel.Enabled    := True;
    SBSCancel.SmallImage := 11;
  end else
  begin
    SBRodape.Panels[0].Text := IFThen(Edicao.State = dsBrowse,'Consulta','Fechado');
   // oGridOptionsEdit(DBGEdicao,REC_SHE_DEF.GridOptionsEdit);

    SBSAppend.Enabled    := True;
    SBSAppend.SmallImage := 3;

    SBSEdit.Enabled      := True;
    SBSEdit.SmallImage   := 5;

    SBSDelete.Enabled    := True;
    SBSDelete.SmallImage := 7;

    SBSPost.Enabled      := False;
    SBSPost.SmallImage   := 10;

    SBSCancel.Enabled    := False;
    SBSCancel.SmallImage := 12;
  end;
end;

procedure TFrmDefaultEditGrid.DBGEdicaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
       vk_tab   : key := 0;
       vk_insert: ACTAppend.Execute;
       vk_return: ACTEdit.Execute;
       vk_delete: ACTDelete.Execute;
  end;
end;

procedure TFrmDefaultEditGrid.EEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  oRefresh(Edicao);
end;

procedure TFrmDefaultEditGrid.EEventAdminEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  if RECUsuarios.IS_EVE_ADM then
  oRefresh(Edicao);
end;

procedure TFrmDefaultEditGrid.ACTExecEventExecute(Sender: TObject);
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
