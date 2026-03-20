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
    RECDefault: TRECDefault;

    property CurrentEvent: String  read FCurrentEvent write SetCurrentEvent;
    property ForceClose  : Boolean read FForceClose   write SetForceClose;

    procedure _WM_AFTER_CREATE  (var Msg: TMessage); message WM_AFTER_CREATE;
    procedure _WM_AFTER_SHOW    (var Msg: TMessage); message WM_AFTER_SHOW;
    procedure _WM_AFTER_ACTIVATE(var Msg: TMessage); message WM_AFTER_ACTIVATE;

    Constructor Create(AOwner: TComponent;const AId: LongInt;AEvento: String; ACodigo: String;ATabela: String); reintroduce; overload;
    Destructor  Destroy; override;

    class procedure ExecForm(AOwner: TComponent;var AForm;AFormStyle: TFormStyle = fsMDIChild;AId: LongInt = -1;AEvento: String = '';ACodigo: String = '';ATabela: String = '');
  end;

var
  FrmDefaultEditGrid: TFrmDefaultEditGrid;
  _Form: TStringList = Nil;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

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
  { Registra Evento }
  try
    if RECDefault.Event <> EmptyStr then
       with EEvent do
            try
              UnregisterEvents;
              Events.Add(oREPZero(RECDefault.Event,'_',RECParametros.Id,3));
              RegisterEvents;
            except
              on E: Exception do
                    oErro(Handle,'Falha ao tentar registrar evento !'+#13+
                                 'Evento: '    +RECDefault.Event +'.'+#13+
                                 'Form: '      +Self.Name+'.'    +#13+#13+
                                 'Error Code: '+E.Message);
            end;
  finally
    Screen.Cursor := crDefault;
    ALockWindowUpdate := False; //Libera Commit;

    oCTransact(TConsulta);
  end;
end;

procedure TFrmDefaultEditGrid.SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmDefaultEditGrid.SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

Class procedure TFrmDefaultEditGrid.ExecForm(AOwner: TComponent;var AForm;AFormStyle: TFormStyle = fsMDIChild;AId: LongInt = -1;AEvento: String = '';ACodigo: String = '';ATabela: String = '');
var
  idxForm: Integer;
begin
  if ((not Assigned(_Form)) or (AId = -2)) then
  begin
    _Form := TStringList.Create;
    _Form.Sorted := True;
  end;

  if not _Form.Find(ClassName,idxForm) then
     idxForm := _Form.Add(ClassName);

  if ((TForm(AForm)  = Nil) or (AId = -2)) then
       TForm(AForm) := Self.Create(AOwner,AId,AEvento,ACodigo,ATabela);

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

Constructor TFrmDefaultEditGrid.Create(AOwner: TComponent;Const AId: LongInt;AEvento: String; ACodigo: String;ATabela: String);
begin
  oIRECDefault(RECDefault);

  RECDefault.Id     := IntToStr(IFThen((AId > 0) or (AId = -3),AId,0));
  RECDefault.IDEV   := TRIM(ACodigo);
  RECDefault.DEEV   := TRIM(AEvento);
  RECDefault.Tabela := TRIM(UPPERCASE(ATabela));

  CurrentEvent :=  RECDefault.DEEV;
  ForceClose   := (RECParametros.STCX <> 'Caixa Aberto') and (RECDefault.Id = 0) and (RECDefault.ForceClose);

  inherited Create(AOwner);
end;

Destructor TFrmDefaultEditGrid.Destroy;
type
  PtrForm = ^TForm;
var
  idxForm: Integer;
begin
  try
     Screen.Cursor := crAppStart;
     OnDestroy     := Nil;

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
           oFRECDefault(RECDefault);
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

procedure TFrmDefaultEditGrid.FormCreate(Sender: TObject);
begin
  { Edições }
  if RECDefault.Auto then
  begin
    RECDefault.Append := True;
    RECDefault.Edit   := True;
    RECDefault.Delete := True;
    RECDefault.View   := True;
    RECDefault.Print  := True;
  end else
  begin
    RECDefault.Append := bPSQUSER('INCLUI'   ,RECDefault.Funcao,RECDefault.Rotina,RECDefault.Nome);
    RECDefault.Edit   := bPSQUSER('ALTERA'   ,RECDefault.Funcao,RECDefault.Rotina,RECDefault.Nome);
    RECDefault.Delete := bPSQUSER('EXCLUI'   ,RECDefault.Funcao,RECDefault.Rotina,RECDefault.Nome);
    RECDefault.View   := bPSQUSER('VISUALIZA',RECDefault.Funcao,RECDefault.Rotina,RECDefault.Nome);
    RECDefault.Print  := bPSQUSER('IMPRIME'  ,RECDefault.Funcao,RECDefault.Rotina,RECDefault.Nome);
    RECDefault.Auto   := bPSQUSER('CONTROLE' ,RECDefault.Funcao,RECDefault.Rotina,RECDefault.Nome);
  end;

  { Botões }
  if ACTAppend.Enabled then ACTAppend.Enabled := RECDefault.Append;
  if ACTEdit.Enabled   then ACTEdit.Enabled   := RECDefault.Edit;
  if ACTDelete.Enabled then ACTDelete.Enabled := RECDefault.Delete;

  ACTPost.Enabled   := (RECDefault.Append or RECDefault.Edit);
  ACTCancel.Enabled := (RECDefault.Append or RECDefault.Edit);

  { Posição Página }
  RECDefault.FrmPosition := Self.Position;
  
  if not ForceClose then
         ForceClose := (not RECDefault.View);
         
  if not ForceClose then
         PostMessage( handle, WM_AFTER_CREATE, 0, 0 ) else
  begin
    oErro(Handle,'ACESSO NEGADO !'+#13+
                 IFThen(not RECDefault.View,'Usuário não Autorizado.','Abertura de caixa não registrada.'));
    PostMessage(Handle, WM_CLOSE, 0, 0);
  end;
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
  if not ForceClose then
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
  S: TRect;
  H,
  T,
  B,
  L,
  R,
  FHeight,
  FWidth: Word;
begin
  if (RECDefault.WorkArea) and (Screen.Height > 768) then
      RECDefault.WorkArea := False;

  if (RECDefault.MainArea) and (Screen.Height > 900) then
      RECDefault.MainArea := False;

  if RECDefault.MainArea then
     uDisabledMainForm;

  if Showing then
  begin
    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,S);
    T := S.Top;
    B := S.Bottom;
    L := S.Left;
    R := S.Right;
    H := B;

    FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
    FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

    if RECDefault.WorkArea then
    begin
      Top    := Screen.WorkAreaTop;
      Left   := Screen.WorkAreaLeft;
      Width  := Screen.WorkAreaWidth;
      Height := Screen.WorkAreaHeight;
    end else
    if RECDefault.MainArea then
    begin
      Top    := 0;
      Left   := 0;
      Width  := R - L - 5;
      Height := H - T - 5;
    end else
    if RECDefault.FrmPosition = poDefault then
    begin
      Top    := IFThen(FormStyle = fsNormal,T,0);
      Left   := IFThen(FormStyle = fsNormal,L,0);
      Width  := IFThen(RECDefault.FrmPosition = poDefault,R - L - 5,0);
      Height := IFThen(RECDefault.FrmPosition = poDefault,H - T - 5,0);
    end else
    if RECDefault.FrmPosition = poDesigned then
       if (RECDefault.Top > 0) and (RECDefault.Left > 0) then
       begin
         Top    := RECDefault.Top;
         Left   := RECDefault.Left;
       end else
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

    { Ajusta o rodapé conforme o form }
    SBRodape.Panels[SBRodape.Panels.Count - 2].Width := SBRodape.Width - (SBRodape.Panels[SBRodape.Panels.Count - 1].Width + 137);

    if RECUsuarios.Id = 0 then
       Caption := 'DIMENSÕES: Monitor: Altura = '+IntToStr(Screen.Height)+' Largura: '+IntToStr(Screen.Width)+' / '+
                  'Tela: Altura = '              +IntToStr(Self.Height  )+' Largura: '+IntToStr(Self.Width  );
  end;
end;

procedure TFrmDefaultEditGrid.FormResize(Sender: TObject);
begin
  if Self <> Nil then
  begin
    { Pesquisa }
    BEPesquisaCadastro.Width := Self.Width - 475;

    { Consulta Externa }
    if (RECDefault.Id = -3) and (Showing) and (DBGEdicao.Visible) then
    begin
      PostMessage(TWinControl(DBGEdicao).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(DBGEdicao).SetFocus;
    end else
    if BEPesquisaCadastro.Visible <> ivNever then
       BEPesquisaCadastro.SetFocus(False);

    oResize(DBGEdicao);
    Paint;
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

procedure TFrmDefaultEditGrid.ACTExecEventExecute(Sender: TObject);
begin
  if not ALockWindowUpdate then
  if RECDefault.Event <> EmptyStr then
     try
       oOTransact(TEvent);

       SPEvent.StoredProcName := 'SP_EVENT';
       SPEvent.Prepare;
       SPEvent.Params[0].AsString := oREPZero(RECDefault.Event,'_',RECParametros.Id,3);
       SPEvent.ExecProc;

       oCTransact(TEvent);

       RECDefault.Edited := True;
     except
       on E: Exception do
       begin
         RECDefault.Selected := False;
         RECDefault.Edited   := False;

         oCTransact(TEvent,ltRollback);
         oRefresh(Edicao,False);

         oException(Nil,'Falha ao tentar salvar evento !'  +#13+
                        'Evento: '    +RECDefault.Event+'.'+#13+#13+
                        'Formulário: '+Self.Name+'.'       +#13+#13+
                        'Error Code: '+E.Message+'.');
       end;
     end else oRefresh(Edicao);
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
  if RECDefault.GEN_ID <> EmptyStr then
     try
       oOTransact(TConsulta);
       with SQLConsulta do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT GEN_ID('+RECDefault.GEN_ID+',0) + 1 AS ID FROM RDB$DATABASE');
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

  if not RECDefault.Append then
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

  if not RECDefault.Edit then
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
  if not RECDefault.Delete then
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
    oGridOptionsEdit(DBGEdicao,RECDefault.GridOptionsEdit);

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

procedure TFrmDefaultEditGrid.EEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  oRefresh(Edicao,True,RECDefault.InsertValue);
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

end.
