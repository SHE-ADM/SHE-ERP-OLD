unit pDefaultConsultaOld;

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
  TFrmDefaultConsultaOld = class(TForm)
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    QConsulta: TIBQuery;
    Consulta: TIBQuery;
    DTSConsulta: TDataSource;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    SBRodape: TdxStatusBar;
    ILEdicao: TImageList;
    ILMenu: TImageList;
    BMMain: TdxBarManager;
    BLBRefresh: TdxBarLargeButton;
    BLBPesquisa: TdxBarLargeButton;
    PMMain: TdxBarPopupMenu;
    BLBSaida: TdxBarLargeButton;
    DMMain: TdxDockingManager;
    ALMain: TActionList;
    ACTAppend: TAction;
    SBSMain: TdxSideBarStore;
    SBSINovo: TdxStoredSideItem;
    SBSIAltera: TdxStoredSideItem;
    SBSIExclui: TdxStoredSideItem;
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
    DPEdicao: TdxDockPanel;
    dxLayoutDockSite2: TdxLayoutDockSite;
    SBEdicao: TdxSideBar;
    DPConsulta: TdxDockPanel;
    dxLayoutDockSite3: TdxLayoutDockSite;
    PNLConsulta: TPanel;
    DBGConsulta: TdxDBGrid;
    SQLEvent: TIBSQL;
    ACTExecEvent: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure ConsultaBeforeOpen(DataSet: TDataSet);
    procedure DBGConsultaBackgroundDrawEvent(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect);
    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure ACTRefreshExecute(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure ACTAppendExecute(Sender: TObject);
    procedure ACTEditExecute(Sender: TObject);
    procedure ACTDeleteExecute(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACTExecEventExecute(Sender: TObject);
  private
    { Private declarations }
    FCurrentEvent: String;
    FForceClose  : Boolean;

    { método para atribuição\validação de valor }
    procedure _SetCurrentEvent(const AValue: String);
    procedure _SetForceClose  (const AValue: Boolean);
  public
    { Public declarations }
    PBCount   : Integer;
    RECPrincipal: TRECPrincipal;
    REC_SHE_DEF: TREC_SHE_DEF;

    property CurrentEvent: String  read FCurrentEvent write _SetCurrentEvent;
    property ForceClose  : Boolean read FForceClose   write _SetForceClose;

    Constructor Create(AOwner: TComponent;const ATabela: String = '';AIDPK: Integer = -1;ACDPK: String = '';AFormStyle: TFormStyle = fsMDIChild); reintroduce; overload;
    Destructor  Destroy; override;

    class procedure ExecForm(AOwner: TComponent;var AForm;ATabela: String = '';AIDPK: Integer = -1;ACDPK: String = '';AFormStyle: TFormStyle = fsMDIChild);
  end;

var
  FrmDefaultConsultaOld: TFrmDefaultConsultaOld;
  _Form: TStringList = Nil;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

Class procedure TFrmDefaultConsultaOld.ExecForm(AOwner: TComponent;var AForm;ATabela: String = '';AIDPK: Integer = -1;ACDPK: String = '';AFormStyle: TFormStyle = fsMDIChild);
var
  idxForm: Integer;
begin
  if ((not Assigned(_Form)) or (AIDPK = -2)) then
  begin
    _Form := TStringList.Create;
    _Form.Sorted := True;
  end;

  if not _Form.Find(ClassName,idxForm) then
     idxForm := _Form.Add(ClassName);

  if ((TForm(AForm) = Nil) or (AIDPK = -2)) then
       TForm(AForm) := Self.Create(AOwner,ATabela,AIDPK);

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

Constructor TFrmDefaultConsultaOld.Create(AOwner: TComponent;const ATabela: String = '';AIDPK: Integer = -1;ACDPK: String = '';AFormStyle: TFormStyle = fsMDIChild);
begin
  Initialize(RECPrincipal);
  FillChar(RECPrincipal,SizeOf(RECPrincipal),0);

  RECPrincipal.Tabela := TRIM(UPPERCASE(ATabela));
  RECPrincipal.IDPK   := IntToStr(IFThen((AIDPK > 0) or (AIDPK = -3),AIDPK,0));
  RECPrincipal.CDPK   := TRIM(ACDPK);

  RECPrincipal.Perfil := EmptyStr;

  RECPrincipal.PSQTexto       := '0';
  RECPrincipal.PSQTextoField  := 'ID';
  RECPrincipal.PSQWhere       := '=';
  RECPrincipal.PSQLike1       := EmptyStr;
  RECPrincipal.PSQLike2       := EmptyStr;
  RECPrincipal.InsertValue    := EmptyStr;
  RECPrincipal.PSQComplemento := 'TODOS';

  RECPrincipal.Auto   := False;
  RECPrincipal.Append := False;
  RECPrincipal.Edit   := False;
  RECPrincipal.Delete := False;
  RECPrincipal.View   := False;
  RECPrincipal.Print  := False;

  RECPrincipal.EventAlert  := False;
  RECPrincipal.TBPrincipal := True;
  RECPrincipal.Selected    := False;
  RECPrincipal.Edited      := False;
  RECPrincipal.GridOptionsBehavior := True;

  inherited Create(AOwner);
end;

Destructor TFrmDefaultConsultaOld.Destroy;
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
         try
           Finalize(RECPrincipal);
           FillChar(RECPrincipal,SizeOf(RECPrincipal),0);
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                      'Error Code: '+E.Message+'.'        +#13+
                                       Caption+'.');
           end;
         end;

         try
           EEvent.UnRegisterEvents;
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
         PtrForm(_Form.Objects[idxForm])^ := Nil;
         _Form.Objects[idxForm] := Nil;
       end;
  finally
    Screen.Cursor := crDefault;
    inherited;
  end;
end;

procedure TFrmDefaultConsultaOld.FormCreate(Sender: TObject);
begin
  { Ajusta Posicionamento da Página }
             Screen.Cursor := crAppStart;
  RECPrincipal.FrmPosition := Self.Position;

  if RECPrincipal.IDPK = -3 then
  begin
    RECPrincipal.FrmPosition := poDesigned;
    Self.HelpContext     := 90;
    Self.AlphaBlendValue := 90;
  end;

  if (RECPrincipal.WorkArea) and (Screen.Height > 768) then
      RECPrincipal.WorkArea := False;

  if (RECPrincipal.MainArea) and (Screen.Height > 900) then
      RECPrincipal.MainArea := False;

  if RECPrincipal.MainArea then
     uDisabledMainForm;

  { Inicializa Variáveis }
  Tag := 1;

  { Inicializa Transação Principal }
  oOTransact(TConsulta);

  { Grant }
  if RECPrincipal.Auto then
  begin
    RECPrincipal.Append := True;
    RECPrincipal.Edit   := True;
    RECPrincipal.Delete := True;
    RECPrincipal.View   := True;
    RECPrincipal.Print  := True;
  end else
  if ((not RECPrincipal.View) and (not RECPrincipal.Print)) then
  begin
    RECPrincipal.Append := bPSQUSER('USU_NOVO',RECPrincipal.Funcao,RECPrincipal.Rotina,RECPrincipal.Nome);
    RECPrincipal.Edit   := bPSQUSER('USU_EDIT',RECPrincipal.Funcao,RECPrincipal.Rotina,RECPrincipal.Nome);
    RECPrincipal.Delete := bPSQUSER('USU_DELE',RECPrincipal.Funcao,RECPrincipal.Rotina,RECPrincipal.Nome);
    RECPrincipal.View   := bPSQUSER('USU_VISU',RECPrincipal.Funcao,RECPrincipal.Rotina,RECPrincipal.Nome);
    RECPrincipal.Print  := bPSQUSER('USU_PRIN',RECPrincipal.Funcao,RECPrincipal.Rotina,RECPrincipal.Nome);
    RECPrincipal.Auto   := bPSQUSER('USU_AUTO',RECPrincipal.Funcao,RECPrincipal.Rotina,RECPrincipal.Nome);
  end;

  { Botões }
  if ACTAppend.Enabled then ACTAppend.Enabled := RECPrincipal.Append;
  if ACTEdit.Enabled   then ACTEdit.Enabled   := RECPrincipal.Edit;
  if ACTDelete.Enabled then ACTDelete.Enabled := RECPrincipal.Delete;

  REC_SHE_DEF.FB_Event := 'CAD_PRO';

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

  if REC_SHE_DEF.FForceClose then
  begin
    oErro(Application.Handle,'ACESSO NEGADO !' + #13 + #13 +
                              REC_SHE_DEF.FAlert);

    Self.Visible := False;
    Self.Height  := 0;
    Self.Width   := 0;

    PostMessage(Handle, WM_CLOSE, 0, 0);
  end;
end;

procedure TFrmDefaultConsultaOld.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;
end;

procedure TFrmDefaultConsultaOld.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;

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
         REC_SHE_DEF.FB_Event000 := oREPZero(REC_SHE_DEF.FB_Event,'_',rECParametros.EP_ID,3);
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

procedure TFrmDefaultConsultaOld.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmDefaultConsultaOld.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
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

procedure TFrmDefaultConsultaOld.FormPaint(Sender: TObject);
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

    FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
    FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

    if RECPrincipal.WorkArea then
    begin
      Top    := Screen.WorkAreaTop;
      Left   := Screen.WorkAreaLeft;
      Width  := Screen.WorkAreaWidth;
      Height := Screen.WorkAreaHeight;
    end else
    if RECPrincipal.MainArea then
    begin
      Top    := 0;
      Left   := 0;
      Width  := R - L - 5;
      Height := H - T - 5;
    end else
    if RECPrincipal.FrmPosition = poDefault then
    begin
      Top    := IFThen(FormStyle = fsNormal,T,0);
      Left   := IFThen(FormStyle = fsNormal,L,0);
      Width  := IFThen(RECPrincipal.FrmPosition = poDefault,R - L - 5,0);
      Height := IFThen(RECPrincipal.FrmPosition = poDefault,H - T - 5,0);
    end else
    begin
      if RECPrincipal.FrmPosition = poDesigned then
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
    SBRodape.Panels[SBRodape.Panels.Count - 2].Width := SBRodape.Width - (SBRodape.Panels[SBRodape.Panels.Count - 1].Width + 140);

    if RECUsuarios.Id = 0 then
       Caption := 'DIMENSÕES: Monitor: Altura = '+IntToStr(Screen.Height)+' Largura: '+IntToStr(Screen.Width)+' / '+
                  'Tela: Altura = '              +IntToStr(Self.Height  )+' Largura: '+IntToStr(Self.Width  );

    { Consulta Externa }              
    if RECPrincipal.IDPK = -3 then
    begin
      PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(DBGConsulta).SetFocus;
    end;
  end;
end;

procedure TFrmDefaultConsultaOld.FormResize(Sender: TObject);
begin
  if Self <> Nil then
     Paint;
end;

procedure TFrmDefaultConsultaOld.ConsultaAfterOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crDefault;
  SBRodape.Panels[0].Text := 'Consulta';
end;

procedure TFrmDefaultConsultaOld.ConsultaBeforeOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crAppStart;
end;

procedure TFrmDefaultConsultaOld.DBGConsultaBackgroundDrawEvent(Sender: TObject;
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

procedure TFrmDefaultConsultaOld.EEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  oRefresh(Consulta);
end;

procedure TFrmDefaultConsultaOld.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Consulta);
end;

procedure TFrmDefaultConsultaOld.ACTPesquisaExecute(Sender: TObject);
begin
  if ACTPesquisa.Enabled then
    // uPesquisa(RECPrincipal);
end;

procedure TFrmDefaultConsultaOld.ACTRelatoriosExecute(Sender: TObject);
begin
  uConstrucao('Relatório');
end;

procedure TFrmDefaultConsultaOld.ACTSaidaExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmDefaultConsultaOld.ACTAppendExecute(Sender: TObject);
begin
  if ((not ACTAppend.Enabled) or (not ACTAppend.Visible) or (Consulta.State <> dsBrowse)) then
     Exit;

  if not RECPrincipal.Append then
     oException(Nil,'Acesso Negado !'+#13+
                    'Favor entrar em contato com o administrador do sistema.'+#13+
                    'Administrador: ');

  SBRodape.Panels[0].Text := 'Inclusão';
end;

procedure TFrmDefaultConsultaOld.ACTEditExecute(Sender: TObject);
begin
  if ((not ACTEdit.Enabled) or (not ACTEdit.Visible) or (Consulta.State <> dsBrowse) or (Consulta.Fields[0].IsNull)) then
     Exit;

  if not RECPrincipal.Edit then
     oException(Nil,'Acesso Negado !'+#13+
                    'Favor entrar em contato com o administrador do sistema.');

  SBRodape.Panels[0].Text := 'Alteração';
end;

procedure TFrmDefaultConsultaOld.ACTDeleteExecute(Sender: TObject);
begin
  if ((not ACTDelete.Enabled) or (not ACTDelete.Visible) or (Consulta.State <> dsBrowse) or (Consulta.Fields[0].IsNull)) then
     Exit;

  if not RECPrincipal.Delete then
     oException(Nil,'Acesso Negado !'+#13+
                    'Favor entrar em contato com o administrador do sistema.');

  SBRodape.Panels[0].Text := 'Exclusão';
end;

procedure TFrmDefaultConsultaOld.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
     ACTEdit.Execute;
end;

procedure TFrmDefaultConsultaOld._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmDefaultConsultaOld._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

procedure TFrmDefaultConsultaOld.ACTExecEventExecute(Sender: TObject);
var
  i: word;
begin
  try
    if REC_SHE_DEF.FB_Event <> EmptyStr then
       try
         { Set }
         REC_SHE_DEF.FB_Event000 := REC_SHE_DEF.FB_Event + '_' + oStrZero(RECUsuarios.ID  ,3); { Login   }
         REC_SHE_DEF.FB_Event001 := oREPZero(REC_SHE_DEF.FB_Event, '_' ,rECParametros.EP_ID  ,3); { Sistema }
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

end.
