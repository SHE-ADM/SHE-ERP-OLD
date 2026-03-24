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
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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
    procedure CadastroBeforePost(DataSet: TDataSet);
    procedure ACTExecEventExecute(Sender: TObject);
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
  FrmDefaultEdicaoGrid: TFrmDefaultEdicaoGrid;

  _Form: TStringList = Nil;
  _FormPesquisa: Boolean;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmDefaultEdicaoGrid._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmDefaultEdicaoGrid._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

Class procedure TFrmDefaultEdicaoGrid._ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
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

Constructor TFrmDefaultEdicaoGrid.Create(AOwner: TComponent;
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

Destructor TFrmDefaultEdicaoGrid.Destroy;
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

procedure TFrmDefaultEdicaoGrid.FormCreate(Sender: TObject);
begin
  { INICIALIZAÇÃO }
  oOTransact(TConsulta); { Consulta }
  oOTransact(TEdicao); { Edição }

  { FORM MANAGER }
  REC_SHE_DEF.FPosition := Self.Position; { Página }

  { ACCESS MANAGER }
  REC_SHE_DEF.FForceClose := ForceClose;
  REC_SHE_DEF.FAlert      := 'Usuário não Autorizado.' + #13 +
                             'Favor entrar em contato com o administrador do sistema.';

  { VALIDATE GRANT USER }
  REC_SHE_DEF.GAppend   := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GEdit     := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GDelete   := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);

  REC_SHE_DEF.GPost     := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GValidate := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GCancel   := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);

  REC_SHE_DEF.GView     := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GPrint    := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);

  REC_SHE_DEF.GControl  := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GAdmin    := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);

  if not REC_SHE_DEF.GAdmin then
  begin
    { SET GRANT USERT }
    oUSER(REC_SHE_DEF);
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
  end;

  { Botões }
  if ACTAppend.Enabled then ACTAppend.Enabled := REC_SHE_DEF.GAppend;
  if ACTEdit.Enabled   then ACTEdit.Enabled   := REC_SHE_DEF.GEdit;
  if ACTDelete.Enabled then ACTDelete.Enabled := REC_SHE_DEF.GDelete;

  if (not ACTAppend.Enabled) and (not ACTEdit.Enabled) then
  begin
    ACTPost.Enabled   := False;
    ACTCancel.Enabled := False;

    DTSCadastro.AutoEdit := False;
  end;  
end;

procedure TFrmDefaultEdicaoGrid.FormShow(Sender: TObject);
begin
  OnShow := Nil;
end;

procedure TFrmDefaultEdicaoGrid.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if REC_SHE_DEF.FForceClose then
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
    oUnLockWindowUpdate; { Desbloqueia Tela }

    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmDefaultEdicaoGrid.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmDefaultEdicaoGrid.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Cadastro.RecNo > 0 then
     if Cadastro.State in [dsInsert,dsEdit] then
     Case messageBox(handle,'Existem Alterações Pendentes !'+#13+
                            'Deseja Salvar ?',
                             PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
          mrCancel: Abort;
          mrNo    : Cadastro.Cancel;
          mrYes   : Cadastro.Post;
     end;
end;

procedure TFrmDefaultEdicaoGrid.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: ACTSaida.Execute;
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
       oResize(DBGConsulta);
    end;
end;

procedure TFrmDefaultEdicaoGrid.CadastroAfterDelete(DataSet: TDataSet);
begin
  oRefresh(Cadastro);
end;

procedure TFrmDefaultEdicaoGrid.CadastroAfterOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crDefault;
end;

procedure TFrmDefaultEdicaoGrid.CadastroBeforePost(DataSet: TDataSet);
begin
  if ((REC_SHE_DEF.FB_EventAlert) and (not oEmpty(REC_SHE_DEF.FB_Event))) then
       if (Pos('IDCA',Cadastro.RefreshSQL.Text) > 0) and (Pos('EVENTO',Cadastro.RefreshSQL.Text) > 0)  and (Pos('IP',Cadastro.RefreshSQL.Text) > 0) and (Pos('HOST',Cadastro.RefreshSQL.Text) > 0) then
       begin
         Cadastro.FieldByName('IDCA').Value   := RECUsuarios.Id;
         Cadastro.FieldByName('EVENTO').Value := SBRodape.Panels[0].Text;
         Cadastro.FieldByName('IP').Value     := RECParametros.IP;
         Cadastro.FieldByName('Host').Value   := RECParametros.HOST;
       end;
end;

procedure TFrmDefaultEdicaoGrid.CadastroAfterPost(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  oRefresh(Cadastro);
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
       SPEvent.StoredProcName := 'SP_SHE_EVE_ADM';
       SPEvent.Prepare;

       for i := 0 to SPEvent.ParamCount - 1 do
       SPEvent.Params[i].Value := Null;

       SPEvent.Params[0].Value := REC_SHE_DEF.FB_EVE_ADM;
       SPEvent.ExecProc;
       SPEvent.UnPrepare;

       { Padrão }
       SPEvent.StoredProcName := 'SP_SHE_EVE_PAD';
       SPEvent.Prepare;

       for i := 0 to SPEvent.ParamCount - 1 do
       SPEvent.Params[i].Value := Null;

       SPEvent.Params[0].Value := REC_SHE_DEF.FB_EVE_PAD;
       SPEvent.ExecProc;
       SPEvent.UnPrepare;

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
