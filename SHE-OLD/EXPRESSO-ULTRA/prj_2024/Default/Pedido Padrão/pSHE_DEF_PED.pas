unit pSHE_DEF_PED;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, StrUtils, Math, dxExEdtr, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxEdLib, dxDBELib, dxEditor, ExtCtrls, ActnList, ImgList,
  dxBar, dxBarExtItems, dxDockControl, dxPageControl, dxDockPanel,
  cxGraphics, cxControls, dxStatusBar, IBEvents, IBStoredProc, DB,
  IBCustomDataSet, IBQuery, IBSQL, IBDatabase, rxSpeedbar;

type
  TFrmSHE_DEF_PED = class(TForm)
    DMPrincipal: TdxDockingManager;
    BMPrincipal: TdxBarManager;
    BLBRefresh: TdxBarLargeButton;
    BLBRelatorios: TdxBarLargeButton;
    BBPSQ_CAD: TdxBarButton;
    BLBPSQ_CAD: TdxBarLargeButton;
    BEPSQ_CAD: TdxBarEdit;
    BBPSQ_PER: TdxBarButton;
    BDPSQ_PER_INI: TdxBarDateCombo;
    BDPSQ_PER_FIM: TdxBarDateCombo;
    BLBMAppend: TdxBarLargeButton;
    BLBMEdit: TdxBarLargeButton;
    BLBMCancel: TdxBarLargeButton;
    BLBPSQ_PER: TdxBarLargeButton;
    BLBConfirma: TdxBarLargeButton;
    BLBSaida: TdxBarLargeButton;
    PMPSQ_CAD: TdxBarPopupMenu;
    PMPSQ_PER: TdxBarPopupMenu;
    SBRodape: TdxStatusBar;
    PNLPrincipal: TPanel;
    PCPrincipal: TdxPageControl;
    TSPrincipal: TdxTabSheet;
    PNLConsulta: TPanel;
    DSConsulta: TdxDockSite;
    LDSConsulta: TdxLayoutDockSite;
    DPConsulta: TdxDockPanel;
    PNLTOP: TPanel;
    PNLBOT: TPanel;
    ALPrincipal: TActionList;
    ACTRefresh: TAction;
    ACTExecEvent: TAction;
    ACTPesquisa: TAction;
    ACTRelatorios: TAction;
    ACTSaida: TAction;
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
    Edicao: TIBDataSet;
    DTSEdicao: TDataSource;
    GBEdicao: TGroupBox;
    SBEdicao: TSpeedBar;
    SSEdicao: TSpeedbarSection;
    SIAppend: TSpeedItem;
    SIEdit: TSpeedItem;
    SIDelete: TSpeedItem;
    SIPost: TSpeedItem;
    SICancel: TSpeedItem;
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
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EdicaoAfterInsert(DataSet: TDataSet);
    procedure EdicaoAfterEdit(DataSet: TDataSet);
    procedure EdicaoAfterDelete(DataSet: TDataSet);
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure EdicaoAfterCancel(DataSet: TDataSet);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DTSEdicaoStateChange(Sender: TObject);
    procedure ACTRefreshExecute(Sender: TObject);
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
    procedure EdicaoEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EdicaoDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EdicaoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EdicaoUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
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

    class procedure _ExecForm(AOwner: TComponent;var AForm; AFormStyle: TFormStyle = fsMDIChild;
                              AIDEP : Integer = 0;
                              AIDPK : LongInt = 0;
                              AIDEV : LongInt = 0;
                              ACDEV : Word    = 0;
                              AFBEV : String  = '';
                              ATPEV : String  = '');

  end;

var
  FrmSHE_DEF_PED: TFrmSHE_DEF_PED;
  _Form: TStringList = Nil;
  REC_SHE_DEF: TREC_SHE_DEF;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmSHE_DEF_PED._WM_AFTER_CREATE(var Msg: TMessage);
begin
  Screen.Cursor := crDefault;

  { Transações }
  oOTransact(TEdicao);
end;

procedure TFrmSHE_DEF_PED._WM_AFTER_SHOW(var Msg: TMessage);
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

procedure TFrmSHE_DEF_PED._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
  try
    if REC_SHE_DEF.FB_Event <> EmptyStr then
       with EEvent do
            try
              UnregisterEvents;
              Events.Add(TRIM(oREPZero(REC_SHE_DEF.FB_Event,'_',RECParametros.ID,3) + IFThen(Pos(RECUsuarios.Grupo,'VENEXPPCPQLDCOMCRI') > 0, '_' + oStrZero(RECUsuarios.ID,3),'')));
              RegisterEvents;
            except
              on E: Exception do
                   oException(Nil,'Falha ao tentar criar evento !' + #13 +
                                  'Evento: ' + oREPZero(REC_SHE_DEF.FB_Event,'_',RECParametros.Id,3) + '.' + #13 + #13 +
                                   E.Message + '.');
            end;

  finally
    Screen.Cursor := crDefault;
    TEdicao.Tag   := 0;
  end;
end;

procedure TFrmSHE_DEF_PED.SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmSHE_DEF_PED.SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

Class procedure TFrmSHE_DEF_PED._ExecForm(AOwner: TComponent;var AForm; AFormStyle: TFormStyle = fsMDIChild;
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

  if not _Form.Find(ClassName,idxForm) then
  idxForm := _Form.Add(ClassName);

  if ((TForm(AForm)  = Nil) or (AIDPK = -2)) then
  TForm(AForm) := Self.Create(AOwner,
                              AIDEP ,
                              AIDPK ,
                              AIDEV ,
                              ACDEV ,
                              AFBEV ,
                              ATPEV);

  _Form.Objects[idxForm] := TObject(@AForm);

  if TForm(AForm).Tag = 1976 then
     TForm(AForm).Close else

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

Destructor TFrmSHE_DEF_PED.Destroy;
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
         { Transação Principal }
         try
           oFTransact(TEdicao);
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                      'Error Code: '+E.Message+'.'      +#13+
                                       Caption+'.');
           end;
         end;

         { Eventos }
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
       finally
         PtrForm(_Form.Objects[idxForm])^ := Nil;
         _Form.Objects[idxForm] := Nil;
       end;
  finally
    Screen.Cursor := crDefault;
    inherited;
  end;
end;

Constructor TFrmSHE_DEF_PED.Create(AOwner: TComponent;
                              const AIDEP: Integer;
                                    AIDPK: LongInt;
                                    AIDEV: LongInt;
                                    ACDEV: Word;
                                    AFBEV: String;
                                    ATPEV: String);
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.AIDEP := INTTOSTR(AIDEP);
  REC_SHE_DEF.AIDPK := INTTOSTR(AIDPK);

  REC_SHE_DEF.AIDEV := INTTOSTR(AIDEV);
  REC_SHE_DEF.ACDEV := INTTOSTR(ACDEV);

  REC_SHE_DEF.AFBEV := Trim(AFBEV);
  REC_SHE_DEF.ATPEV := Trim(ATPEV);

  inherited Create(AOwner);
end;


procedure TFrmSHE_DEF_PED.FormCreate(Sender: TObject);
begin
  { Edições }
  if REC_SHE_DEF.GAdmin then
  begin
    REC_SHE_DEF.GAppend := True;
    REC_SHE_DEF.GEdit   := True;
    REC_SHE_DEF.GDelete := True;
    REC_SHE_DEF.GView   := True;
    REC_SHE_DEF.GPrint  := True;
  end else
  begin
    REC_SHE_DEF.GAppend := bPSQUSER('INCLUI'   ,REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GEdit   := bPSQUSER('ALTERA'   ,REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GDelete := bPSQUSER('EXCLUI'   ,REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GView   := bPSQUSER('VISUALIZA',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GPrint  := bPSQUSER('IMPRIME'  ,REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GAdmin  := bPSQUSER('CONTROLE' ,REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
  end;

  if not ForceClose then
  ForceClose := (not REC_SHE_DEF.GView); { Apenas quando parâmetro não setado }

  REC_SHE_DEF.FForceClose      := ForceClose;
  REC_SHE_DEF.FForceCloseAlert := 'Usuário não Autorizado.' + #13 +
                                  'Favor entrar em contato com o administrador do sistema.';

  if (not REC_SHE_DEF.FForceClose) and (REC_SHE_DEF.FForceCaixa) and (REC_SHE_DEF.AIDEV = 0) and
     (RECParametros.STCX <> 'Caixa Aberto') then
  begin
    ForceClose := True;
    REC_SHE_DEF.FForceClose      := ForceClose;
    REC_SHE_DEF.FForceCloseAlert := 'Caixa não Aberto.' + #13 +
                                    'Favor entrar em contato com o administrador do sistema.';
  end;

  if not REC_SHE_DEF.FForceClose then
         PostMessage( handle, WM_AFTER_CREATE, 0, 0 ) else
  begin
    oErro(Application.Handle,'ACESSO NEGADO !' + #13 + #13 +
                              REC_SHE_DEF.FForceCloseAlert);

    PostMessage(Handle, WM_CLOSE, 0, 0);
  end;
end;

procedure TFrmSHE_DEF_PED.FormShow(Sender: TObject);
begin
  OnShow := Nil;

  if not REC_SHE_DEF.FForceClose then
  PostMessage(Handle, WM_AFTER_SHOW, 0, 0 );
end;

procedure TFrmSHE_DEF_PED.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;

  if not REC_SHE_DEF.FForceClose then
  PostMessage(Handle, WM_AFTER_ACTIVATE, 0, 0 );
end;

procedure TFrmSHE_DEF_PED.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try uRepaintMainForm(TForm(Self));
  finally
    Action  := caFree;
    OnClose := Nil;
  end;
end;

procedure TFrmSHE_DEF_PED.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmSHE_DEF_PED.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmSHE_DEF_PED.FormPaint(Sender: TObject);
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

    if REC_SHE_DEF.FrmPosition = poDesigned then
    begin
      FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
      FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

      if (REC_SHE_DEF.FTop > 0) and (REC_SHE_DEF.FLeft > 0) then
      begin
        Top    := REC_SHE_DEF.FTop;
        Left   := REC_SHE_DEF.FLeft;
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
    if REC_SHE_DEF.FrmPosition = poDefault then
    begin
      Top    := IFThen(FormStyle = fsNormal,T,0);
      Left   := IFThen(FormStyle = fsNormal,L,0);
      Width  := IFThen(REC_SHE_DEF.FrmPosition = poDefault,R - L - 5,0);
      Height := IFThen(REC_SHE_DEF.FrmPosition = poDefault,H - T - 5,0);
    end;

    { Ajusta o rodapé conforme o form }
    SBRodape.Panels[SBRodape.Panels.Count - 2].Width := SBRodape.Width - (SBRodape.Panels[SBRodape.Panels.Count - 1].Width + 115);

    { Dimensões }
    if RECUsuarios.Id = 0 then
       Self.Caption := 'DIMENSÕES: Monitor: Altura = ' + IntToStr(Screen.Height) + ' Largura: ' + IntToStr(Screen.Width) + ' / ' +
                                     'Tela: Altura = ' + IntToStr(Self.Height  ) + ' Largura: ' + IntToStr(Self.Width  );
  end;
end;

procedure TFrmSHE_DEF_PED.FormResize(Sender: TObject);
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
      REC_SHE_DEF.FrmPosition := poDefault;
      uDisabledMainForm;
    end else
    if (HelpKeyword = '5') and (Screen.Width >= 1360) and (Screen.Width <= 1366) then {MainArea, mas sem desabilitar botões }
    begin
      if FrmPrincipal.PNLPrincipal.Visible then
         REC_SHE_DEF.FrmPosition := poDefault;
    end else
    if REC_SHE_DEF.AIDPK = -3 then
    begin
      REC_SHE_DEF.FrmPosition := poDesigned;
      Self.HelpContext        := 90;
      Self.AlphaBlendValue    := 90;
    end;

    if Screen.Width <= 1366 then
    Self.Font.Size  := 8;

    if (REC_SHE_DEF.AIDPK = -3) and (Showing) then  //and (DBGConsulta.Visible) then
    begin
//      PostMessage(TWinControl(DBGEdicao).Handle, WM_SETFOCUS, 0, 0);
  //    TWinControl(DBGEdicao).SetFocus;
    end else
    {if BEPSQ_CAD.Visible <> ivNever then
       BEPSQ_CAD.SetFocus(False); }

   // oExecResize(DBGEdicao);
    Paint;
  end;
end;

procedure TFrmSHE_DEF_PED.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ANode.Selected then
  begin
    AColor      := $00E1AD40;
    AFont.Color := clHighlightText;
  end;

  if ASelected then
  begin
    AColor      := clHighlight;
    AFont.Color := clHighlightText;
  end;
end;

procedure TFrmSHE_DEF_PED.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
       VK_insert: ACTEAppend.Execute;
       vk_return: ACTEEdit.Execute;
       VK_delete: ACTEDelete.Execute;
       VK_escape: ACTECancel.Execute;
  end;
end;

procedure TFrmSHE_DEF_PED.DTSEdicaoStateChange(Sender: TObject);
begin
  oState(Edicao,SBEdicao);

  if Edicao.State in [dsInsert] then
  SBRodape.Panels[0].Text := 'Inclusão' else

  if Edicao.State in [dsEdit] then
  SBRodape.Panels[0].Text := 'Alteração' else

  if Edicao.State in [dsBrowse] then
  SBRodape.Panels[0].Text := 'Consulta' else

  if Edicao.State in [dsInactive] then
  SBRodape.Panels[0].Text := 'Conexão não estabelecida';

  if Edicao.State in [dsInsert,dsEdit] then
  begin
    DBGConsulta.OptionsBehavior := ([edgoCaseInsensitive,edgoCollapsedReload,edgoDragCollapse,edgoDragExpand,edgoDragScroll,edgoEditing,edgoEnterShowEditor,edgoImmediateEditor,edgoSeekDetail,edgoShowHourGlass,edgoTabThrough,edgoVertThrough]);
    DBGConsulta.OptionsView     := ([edgoAutoCalcPreviewLines,edgoBandHeaderWidth,edgoHotTrack,edgoPreview,edgoUseBitmap]);
  end else
  begin
    DBGConsulta.OptionsBehavior := ([edgoAutoSearch,edgoAutoSort,edgoCaseInsensitive,edgoCollapsedReload,edgoDragCollapse,edgoDragExpand,edgoDragScroll,edgoEnterShowEditor,edgoImmediateEditor,edgoSeekDetail,edgoShowHourGlass,edgoTabThrough,edgoVertThrough]);
    DBGConsulta.OptionsView     := ([edgoAutoCalcPreviewLines,edgoBandHeaderWidth,edgoHotTrack,edgoInvertSelect,edgoPreview,edgoUseBitmap]);
  end;
end;

procedure TFrmSHE_DEF_PED.EdicaoAfterInsert(DataSet: TDataSet);
begin
  if  Showing then
  if (DBGConsulta.Visible) and (DBGConsulta.Enabled) then
  DBGConsulta.SetFocus;
end;

procedure TFrmSHE_DEF_PED.EdicaoAfterEdit(DataSet: TDataSet);
begin
  if  Showing then
  if (DBGConsulta.Visible) and (DBGConsulta.Enabled) then
  DBGConsulta.SetFocus;
end;

procedure TFrmSHE_DEF_PED.EdicaoAfterDelete(DataSet: TDataSet);
begin
  oRefresh(Edicao);
end;

procedure TFrmSHE_DEF_PED.EdicaoAfterPost(DataSet: TDataSet);
begin
  if  Showing then
  if (DBGConsulta.Visible) and (DBGConsulta.Enabled) then
  DBGConsulta.SetFocus;
end;

procedure TFrmSHE_DEF_PED.EdicaoAfterCancel(DataSet: TDataSet);
begin
  if  Showing then
  if (DBGConsulta.Visible) and (DBGConsulta.Enabled) then
  DBGConsulta.SetFocus;
end;

procedure TFrmSHE_DEF_PED.ACTRefreshExecute(Sender: TObject);
begin
  if not (Edicao.State in [dsInsert,dsEdit]) then
  oRefresh(Edicao);
end;

procedure TFrmSHE_DEF_PED.ACTMAppendExecute(Sender: TObject);
begin
  if (not ACTMAppend.Enabled) or (not ACTMAppend.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PED.ACTMEditExecute(Sender: TObject);
begin
  if (not ACTMEdit.Enabled) or (not ACTMEdit.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PED.ACTMDeleteExecute(Sender: TObject);
begin
  if (not ACTMDelete.Enabled) or (not ACTMDelete.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PED.ACTMPostExecute(Sender: TObject);
begin
  if (not ACTMPost.Enabled) or (not ACTMPost.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PED.ACTMCancelExecute(Sender: TObject);
begin
  if (not ACTMCancel.Enabled) or (not ACTMCancel.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PED.ACTSaidaExecute(Sender: TObject);
begin
  if BEPSQ_CAD.Text <> EmptyStr then
     BEPSQ_CAD.Text := EmptyStr else
     Close;
end;

procedure TFrmSHE_DEF_PED.ACTEAppendExecute(Sender: TObject);
begin
  if (not ACTEAppend.Enabled) or (not ACTEAppend.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PED.ACTEEditExecute(Sender: TObject);
begin
  if (not ACTEEdit.Enabled) or (not ACTEEdit.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PED.ACTEDeleteExecute(Sender: TObject);
begin
  if (not ACTEDelete.Enabled) or (not ACTEDelete.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PED.ACTEPostExecute(Sender: TObject);
begin
  if (not ACTEPost.Enabled) or (not ACTEPost.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PED.ACTECancelExecute(Sender: TObject);
begin
  if (not ACTECancel.Enabled) or (not ACTECancel.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PED.EdicaoEditError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmSHE_DEF_PED.EdicaoDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmSHE_DEF_PED.EdicaoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmSHE_DEF_PED.EdicaoUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
  DataBaseError(oFBException(E.Message));
end;

end.
