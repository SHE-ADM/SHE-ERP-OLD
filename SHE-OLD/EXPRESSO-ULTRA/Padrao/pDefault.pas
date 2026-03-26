unit pDefault;

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
  TFrmDefault = class(TForm)
    DMPrincipal: TdxDockingManager;
    BMPrincipal: TdxBarManager;
    ALPrincipal: TActionList;
    IPrincipal: TImageList;
    PNLPrincipal: TPanel;

    SBRodape: TdxStatusBar;

    DSConsulta: TdxDockSite;
    DPConsulta: TdxDockPanel;
    LDSConsulta: TdxLayoutDockSite;
    PNLConsulta: TPanel;

    PNLFKConsulta: TPanel;

    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    Consulta: TIBQuery;
    DTSConsulta: TDataSource;
    DBGConsulta: TdxDBGrid;

    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;

    TEvent: TIBTransaction;
    SQLEvent: TIBSQL;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;

    BLBRefresh: TdxBarLargeButton;
    ACTRefresh: TAction;

    BLBPSQ_PER: TdxBarLargeButton;
    PMPSQ_PER: TdxBarPopupMenu;
    BBPSQ_PER: TdxBarButton;
    BDPSQ_PER_INI: TdxBarDateCombo;
    BDPSQ_PER_FIM: TdxBarDateCombo;
    ACTPSQ_PER: TAction;

    BLBPSQ_CAD: TdxBarLargeButton;
    PMPSQ_CAD: TdxBarPopupMenu;
    BBPSQ_CAD: TdxBarButton;
    BEPSQ_CAD: TdxBarEdit;
    ACTPSQ_CAD: TAction;

    ACTPesquisa: TAction;

    BLBNovo: TdxBarLargeButton;
    ACTNovo: TAction;

    BLBEdicao: TdxBarLargeButton;
    ACTEdicao: TAction;

    BLBConfirma: TdxBarLargeButton;
    ACTValida: TAction;

    BLBCancela: TdxBarLargeButton;
    ACTCancela: TAction;

    BLBRelatorios: TdxBarLargeButton;
    ACTRelatorios: TAction;

    BLBSaida: TdxBarLargeButton;
    ACTSaida: TAction;

    ACTEvent: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);

    procedure ACTRefreshExecute(Sender: TObject);

    procedure ACTPSQ_PERExecute(Sender: TObject);
    procedure ACTPSQ_CADExecute(Sender: TObject);
    procedure BEPSQ_CADKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ACTPesquisaExecute(Sender: TObject);

    procedure ACTNovoExecute(Sender: TObject);
    procedure ACTEdicaoExecute(Sender: TObject);
    procedure ACTValidaExecute(Sender: TObject);
    procedure ACTCancelaExecute(Sender: TObject);

    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);

    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ConsultaBeforeOpen(DataSet: TDataSet);
    procedure ConsultaAfterOpen(DataSet: TDataSet);

    procedure EEventEventAlert(Sender: TObject; EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
    procedure ACTEventExecute(Sender: TObject);
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
  FrmDefault: TFrmDefault;
  _Form: TStringList = Nil;

implementation

uses uPrincipal, bDados;

{$R *.dfm}

procedure TFrmDefault._WM_AFTER_CREATE(var Msg: TMessage);
begin
  Screen.Cursor     := crAppStart;
  ALockWindowUpdate := True;
  oOTransact(TConsulta);
end;

procedure TFrmDefault._WM_AFTER_SHOW(var Msg: TMessage);
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

procedure TFrmDefault._WM_AFTER_ACTIVATE(var Msg: TMessage);
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
  end;

  ACTPesquisa.Execute;
end;

procedure TFrmDefault.SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmDefault.SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

Class procedure TFrmDefault.ExecForm(AOwner: TComponent;var AForm;AFormStyle: TFormStyle = fsMDIChild;AId: LongInt = -1;AEvento: String = '';ACodigo: String = '';ATabela: String = '');
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

Constructor TFrmDefault.Create(AOwner: TComponent;Const AId: LongInt;AEvento: String; ACodigo: String;ATabela: String);
begin
  oIRECDefault(RECDefault);

  RECDefault.Id     := IntToStr(IFThen((AId > 0) or (AId = -3),AId,0));
  RECDefault.IdEv   := TRIM(ACodigo);
  RECDefault.DeEv   := TRIM(AEvento);
  RECDefault.Tabela := TRIM(UPPERCASE(ATabela));

  CurrentEvent :=  RECDefault.DEEV;
  ForceClose   := (RECParametros.STCX <> 'Caixa Aberto') and (RECDefault.Id = 0) and (RECDefault.ForceClose);

  inherited Create(AOwner);
end;

Destructor TFrmDefault.Destroy;
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
           oFTransact(TConsulta);
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

procedure TFrmDefault.FormCreate(Sender: TObject);
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
    RECDefault.Append := bPSQUSER('USU_NOVO',RECDefault.Funcao,RECDefault.Rotina,RECDefault.Nome);
    RECDefault.Edit   := bPSQUSER('USU_EDIT',RECDefault.Funcao,RECDefault.Rotina,RECDefault.Nome);
    RECDefault.Delete := bPSQUSER('USU_DELE',RECDefault.Funcao,RECDefault.Rotina,RECDefault.Nome);
    RECDefault.View   := bPSQUSER('USU_VISU',RECDefault.Funcao,RECDefault.Rotina,RECDefault.Nome);
    RECDefault.Print  := bPSQUSER('USU_PRIN',RECDefault.Funcao,RECDefault.Rotina,RECDefault.Nome);
    RECDefault.Auto   := bPSQUSER('USU_AUTO',RECDefault.Funcao,RECDefault.Rotina,RECDefault.Nome);
  end;
  RECDefault.Post := (RECDefault.Append) or (RECDefault.Edit) or (RECDefault.Delete);

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

procedure TFrmDefault.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if not ForceClose then
     PostMessage( handle, WM_AFTER_SHOW, 0, 0 );
end;

procedure TFrmDefault.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if not ForceClose then
     PostMessage( handle, WM_AFTER_ACTIVATE, 0, 0 );
end;

procedure TFrmDefault.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ACTValida.Tag = 1 then
     Case MessageBox(Handle,'Existem Alterações Pendentes !'+#13+
                            'Deseja Salvar ?',
                             PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
          mrCancel: Abort;
          mrYes   : ACTValida.Execute;
     end;
end;

procedure TFrmDefault.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmDefault.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: ACTCancela.Execute;
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

procedure TFrmDefault.FormPaint(Sender: TObject);
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
    GetWindowRect(FrmPrincipal.ClientHandle,S);
    T := S.Top;
    B := S.Bottom;
    L := S.Left;
    R := S.Right;
    H := B;

    if RECDefault.FrmPosition = poDesigned then
    begin
      FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
      FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

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
    end else
    if (RECDefault.WorkArea) and (FormStyle = fsNormal) then
    begin
      Top    := Screen.WorkAreaTop;
      Left   := Screen.WorkAreaLeft;
      Width  := Screen.WorkAreaWidth;
      Height := Screen.WorkAreaHeight;
    end else
    if (RECDefault.MainArea) and (FormStyle = fsNormal) then
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
    end;

    if RECUsuarios.Id = 0 then
       Caption := 'DIMENSÕES: Monitor: Altura = '+IntToStr(Screen.Height)+' Largura: '+IntToStr(Screen.Width)+' / '+
                  'Tela: Altura = '              +IntToStr(Self.Height  )+' Largura: '+IntToStr(Self.Width  )+' - '+
                  'Font Size: '+IntToSTr(DBGConsulta.Font.Size);
  end;
end;

procedure TFrmDefault.FormResize(Sender: TObject);
begin
  if Self <> Nil then
  begin
    if Screen.Width <= 1366 then
       Self.Font.Size := 8;

    if (RECDefault.Id = -3) and (Showing) and (DBGConsulta.Visible) then
    begin
      PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(DBGConsulta).SetFocus;
    end else
    if BEPSQ_CAD.Visible <> ivNever then
       BEPSQ_CAD.SetFocus(False);

    oExecResize(DBGConsulta);
    Paint;
  end;
end;

procedure TFrmDefault.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Consulta);
end;

procedure TFrmDefault.ACTNovoExecute(Sender: TObject);
begin
  if Consulta.State = dsInactive then
     oException(Nil,'Banco de dados desconectado '+#13+
                    'Favor entrar em contato com o administrador do sistema.');

  if not RECDefault.Append then
     oException(Nil,'Acesso Negado !'+#13+
                    'Favor entrar em contato com o administrador do sistema.');

  SBRodape.Panels[0].Text := 'Incluindo ...';
  SBRodape.Refresh;
end;

procedure TFrmDefault.ACTEdicaoExecute(Sender: TObject);
begin
  if (Consulta.State = dsInactive) or (Consulta.RecNo = 0) then
      oException(Nil,'Registro não Informado !');

  if not RECDefault.Edit then
     oException(Nil,'Acesso Negado !'+#13+
                    'Favor entrar em contato com o administrador do sistema.');

  SBRodape.Panels[0].Text := 'Alterando ...';
  SBRodape.Refresh;
end;

procedure TFrmDefault.ACTCancelaExecute(Sender: TObject);
begin
  if (Consulta.State = dsInactive) or (Consulta.RecNo = 0) then
      oException(Nil,'Registro não Informado !');

  if not RECDefault.Delete then
     oException(Nil,'Acesso Negado !'+#13+
                    'Favor entrar em contato com o administrador do sistema.');

  SBRodape.Panels[0].Text := 'Excluindo ...';
  SBRodape.Refresh;
end;

procedure TFrmDefault.ACTValidaExecute(Sender: TObject);
begin
  if not RECDefault.Post then
     oException(Nil,'Acesso Negado !'+#13+
                    'Favor entrar em contato com o administrador do sistema.');

  SBRodape.Panels[0].Text := 'Validando ...';
  SBRodape.Refresh;
end;

procedure TFrmDefault.ACTSaidaExecute(Sender: TObject);
begin
  if BEPSQ_CAD.Text <> EmptyStr then
     BEPSQ_CAD.Text := EmptyStr else
     Close;
end;

procedure TFrmDefault.ACTRelatoriosExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmDefault.ACTPSQ_PERExecute(Sender: TObject);
begin
  ACTPesquisa.Tag := 0;

  if Sender.ClassType = TdxBarLargeButton then
     BBPSQ_PER.Caption := TdxBarLargeButton(Sender).Caption;

  if (BEPSQ_CAD.Text = EmptyStr) and (BDPSQ_PER_INI.Date <= 0) and (BDPSQ_PER_FIM.Date <= 0) then
      Abort;

  if (BDPSQ_PER_INI.Date > 0) and (BDPSQ_PER_FIM.Date > 0) then
  begin
    if BDPSQ_PER_INI.Date > BDPSQ_PER_FIM.Date then
       oException(Nil,'Data Inicial não pode ser maior que Data Final !');

    ACTPesquisa.Execute;
  end;
end;

procedure TFrmDefault.ACTPSQ_CADExecute(Sender: TObject);
begin
  ACTPesquisa.Tag := 0;

  if Sender.ClassType = TdxBarLargeButton then
     BBPSQ_CAD.Caption := TdxBarLargeButton(Sender).Caption;

  if (BEPSQ_CAD.Text = EmptyStr) and (BDPSQ_PER_INI.Date <= 0) and (BDPSQ_PER_FIM.Date <= 0) then
      Abort;

  ACTPesquisa.Execute;
end;

procedure TFrmDefault.ACTPesquisaExecute(Sender: TObject);
begin
  { laNotReOpen não deixa re-abrir as tabelas mesmo quando configuradas para isso
    oCTransaction -> oOTransaction }
  oRTransact(TConsulta,ltCommit,laNotReOpen);

  if (ACTPesquisa.Tag = 1) and (TConsulta.InTransaction) then
      Consulta.Prepare;
end;

procedure TFrmDefault.BEPSQ_CADKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_escape then ACTSaida.Execute;
  if key = vk_return then ACTPSQ_CAD.Execute;
  if key = VK_DOWN   then
  begin
    PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
    TWinControl(DBGConsulta).SetFocus;
  end;
end;

procedure TFrmDefault.ACTEventExecute(Sender: TObject);
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
             oRefresh(Consulta,False);

             oException(Nil,'Falha ao tentar salvar evento !'  +#13+
                            'Evento: '    +RECDefault.Event+'.'+#13+#13+
                            'Formulário: '+Self.Name+'.'       +#13+#13+
                            'Error Code: '+E.Message+'.');
           end;
         end else oRefresh(Consulta);
end;

procedure TFrmDefault.EEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  oRefresh(Consulta,True,RECDefault.InsertValue);
end;

procedure TFrmDefault.ConsultaBeforeOpen(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
     Screen.Cursor := crAppStart;
end;

procedure TFrmDefault.ConsultaAfterOpen(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
     Screen.Cursor := crDefault;
end;

procedure TFrmDefault.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
       vk_tab   : key := 0;
       vk_escape: ACTSaida.Execute;
  end;
end;

end.
