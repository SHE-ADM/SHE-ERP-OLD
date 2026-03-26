unit ppadr1;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, dxDBELib, dxExEdtr, rxSpeedbar,
  math, StrUtils, IBSQL;

type
  Tfrmpadr1 = class(TForm)
    sbMSG: TStatusBar;
    Consulta: TIBQuery;
    Cadastro: TIBDataSet;
    DTSCadastro: TDataSource;
    SBMenu: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    siPSQ: TSpeedItem;
    siREF: TSpeedItem;
    siSAIR: TSpeedItem;
    siREL: TSpeedItem;
    TEdicao: TIBTransaction;
    SPEdicao: TIBStoredProc;
    pnldir: TPanel;
    pnldbg: TPanel;
    pnlbot: TPanel;
    ILEdicao: TImageList;
    ILMenu: TImageList;
    gbDET: TGroupBox;
    DBGConsulta: TdxDBGrid;
    SBEdicao: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedbarSection2: TSpeedbarSection;
    SpeedbarSection3: TSpeedbarSection;
    SpeedbarSection4: TSpeedbarSection;
    siINC: TSpeedItem;
    siALT: TSpeedItem;
    siDEL: TSpeedItem;
    siSAV: TSpeedItem;
    siCAN: TSpeedItem;
    SQLConsulta: TIBSQL;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
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
    procedure CadastroBeforeEdit(DataSet: TDataSet);
    procedure siSAIRClick(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure siDELClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGConsultaDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure CadastroBeforeInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure siPSQClick(Sender: TObject);
    procedure siRELClick(Sender: TObject);
    procedure DTSCadastroStateChange(Sender: TObject);
    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure CadastroBeforeCancel(DataSet: TDataSet);
    procedure CadastroNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    RECDefault: TRECDefault;

    Editado: Boolean;
    Campo_Pesquisa: String;

    procedure ExecuteEvent;
  end;

var
  frmpadr1: Tfrmpadr1;

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmpadr1.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
  oIRECDefault(RECDefault);

  { Paginação }
  RECDefault.FrmPosition := self.Position; { Abertura Controlada  }
  RECDefault.WorkArea    := False;         { Toda Tela do Windows }
  RECDefault.MainArea    := False;         { Toda Tela MainForm + Exclusão Botões }

  oOTransact(TEdicao);

  campo_pesquisa := EmptyStr;
  AUTORIZACAO    := EmptyStr;
  TP_AUTORIZACAO := EmptyStr;

  SetLength(PCampo,5);
  Tag := 1;
end;

procedure Tfrmpadr1.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if Cadastro.State = dsInactive then
     Cadastro.Open;
end;

procedure Tfrmpadr1.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  { Registra Evento }
  try
    if RECDefault.Event <> EmptyStr then
       with EEvent do
            try
              UnregisterEvents;
              Events.Add(oREPZero(Trim(RECDefault.Event),'_',RECParametros.Id,3));
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
  end;
end;

procedure Tfrmpadr1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if cadastro.State in [dsEdit,dsInsert] then
  case messageBox(handle,PChar('Existem alterações pendentes. Deseja salvar antes de fechar '),
                         PChar(caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
       mrCancel: Abort;
       mrYes   : cadastro.Post;
       mrNo    : cadastro.Cancel;
  end;
end;

procedure Tfrmpadr1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmpadr1.FormDestroy(Sender: TObject);
begin
  try
    Screen.Cursor := crAppStart;
    OnDestroy     := Nil;

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
    try
      uRepaintMainForm(TForm(Self));
    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure Tfrmpadr1.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tfrmpadr1.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpadr1.FormPaint(Sender: TObject);
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

procedure Tfrmpadr1.FormResize(Sender: TObject);
begin
  if Self <> Nil then
  begin
    if (RECDefault.WorkArea) and (Screen.Width > 1024) then
        RECDefault.WorkArea := False;

    if (RECDefault.MainArea) and (Screen.Width > 1366) then
        RECDefault.MainArea := False;

    if (RECDefault.WorkArea) or (RECDefault.MainArea) then
    begin
      HelpKeyword := '3';
      RECDefault.FrmPosition := poDefault;
      uDisabledMainForm;
    end else
    if (HelpKeyword = '5') and (Screen.Width >= 1360) and (Screen.Width <= 1366) then {MainArea, mas sem desabilitar botões }
    begin
      if FrmPrincipal.PNLPrincipal.Visible then
         RECDefault.FrmPosition := poDefault;
    end else
    if RECDefault.Id = -3 then
    begin
      RECDefault.FrmPosition := poDesigned;
      Self.HelpContext       := 90;
      Self.AlphaBlendValue   := 90;
    end;

    if Screen.Width <= 1366 then
       Self.Font.Size := 8;

    Paint;
  end;
end;

procedure Tfrmpadr1.siREFClick(Sender: TObject);
begin
  oRefresh(Cadastro);
end;

procedure Tfrmpadr1.siPSQClick(Sender: TObject);
begin
  ActiveControl := Nil;
  if (not SBMenu.Enabled) or (not SBMenu.Visible) or (not SIPsq.Enabled) or (not SIPsq.Visible) then
      Abort;
end;

procedure Tfrmpadr1.siRELClick(Sender: TObject);
begin
  ActiveControl := Nil;
  if (not SBMenu.Enabled) or (not SBMenu.Visible) or (not SIRel.Enabled) or (not SIRel.Visible) then
      Abort;
end;

procedure Tfrmpadr1.siSAIRClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmpadr1.siINCClick(Sender: TObject);
begin
  DBGConsulta.SetFocus;
  if ((SBEdicao.Visible) and (SBEdicao.Enabled) and
      (siINC.Visible)     and (siINC.Enabled) and
      (Cadastro.State = dsBrowse)) then
  Cadastro.Append;
end;

procedure Tfrmpadr1.siALTClick(Sender: TObject);
begin
  DBGConsulta.SetFocus;
  if ((SBEdicao.Visible)             and (SBEdicao.Enabled) and
      (siALT.Visible)                 and (siALT.Enabled) and
      (not Cadastro.Fields[0].IsNull) and (Cadastro.State = dsBrowse)) then
  Cadastro.Edit;
end;

procedure Tfrmpadr1.siDELClick(Sender: TObject);
begin
  DBGConsulta.SetFocus;
  if ((not SBEdicao.Visible)     or (not SBEdicao.Enabled) or
      (not siDEL.Visible)         or (not siDEL.Enabled) or
      (Cadastro.Fields[0].IsNull) or (Cadastro.State in [dsInsert,dsEdit])) then
  Abort;
end;

procedure Tfrmpadr1.siSAVClick(Sender: TObject);
begin
  DBGConsulta.SetFocus;
  if cadastro.State in [dsEdit,dsInsert] then
  cadastro.Post;
end;

procedure Tfrmpadr1.siCANClick(Sender: TObject);
begin
  if cadastro.State in [dsEdit,dsInsert] then
     cadastro.Cancel else SISAIR.Click;
end;

procedure Tfrmpadr1.CadastroBeforeEdit(DataSet: TDataSet);
begin
  if not frmprincipal.ACESSO(RECUsuarios.ID,PCampo[0],PCampo[1],PCampo[2],PCampo[3],false) then
     Databaseerror('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
end;

procedure Tfrmpadr1.CadastroBeforeInsert(DataSet: TDataSet);
begin
  if not frmprincipal.ACESSO(RECUsuarios.ID,PCampo[0],PCampo[1],PCampo[2],PCampo[3],false) then
     Databaseerror('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');

  Cadastro.Fields[0].Tag := Cadastro.Fields[0].AsInteger;   
end;

procedure Tfrmpadr1.CadastroAfterDelete(DataSet: TDataSet);
begin
  ExecuteEvent;
end;

procedure Tfrmpadr1.CadastroAfterPost(DataSet: TDataSet);
begin
  ExecuteEvent;
end;

procedure Tfrmpadr1.CadastroBeforeCancel(DataSet: TDataSet);
begin
  if Cadastro.Fields[0].Tag = 0 then
  begin
    Cadastro.Close;
    Cadastro.Open;

    ABORT;
  end;
end;

procedure Tfrmpadr1.CadastroNewRecord(DataSet: TDataSet);
begin
  Cadastro.Fields[0].Value := 0;
end;

procedure Tfrmpadr1.DBGConsultaBackgroundDrawEvent(Sender: TObject;
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

procedure Tfrmpadr1.DBGConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_return   : siALT.Click;
       VK_escape   : if siSAV.Enabled then
                     siCAN.Click else
                     siSAIR.Click;
       VK_delete   : if not siSAV.Enabled then siDEL.Click;
       VK_insert   : if not siSAV.Enabled then siINC.Click;
  end;
end;

procedure Tfrmpadr1.DBGConsultaDblClick(Sender: TObject);
begin
  if cadastro.State = dsBrowse then
     siALT.Click;
end;

procedure Tfrmpadr1.DTSCadastroStateChange(Sender: TObject);
begin
  oState(Cadastro,SBEdicao);
  if Cadastro.State = dsBrowse then
  begin
    DBGConsulta.OptionsBehavior := ([edgoAutoSearch,edgoAutoSort,edgoCaseInsensitive,edgoCollapsedReload,edgoDragCollapse,edgoDragExpand,edgoDragScroll,edgoEnterShowEditor,edgoImmediateEditor,edgoSeekDetail,edgoShowHourGlass,edgoTabThrough,edgoVertThrough]);
  //  DBGConsulta.OptionsView     := ([edgoAutoCalcPreviewLines,edgoBandHeaderWidth,edgoHotTrack,edgoPreview,edgoUseBitmap]);
    SBMsg.Panels[0].Text        := IFThen(Cadastro.State = dsEdit,'Alteração','Inclusão');
  end else
  begin
    DBGConsulta.OptionsBehavior := ([edgoAutoSort,edgoCaseInsensitive,edgoCollapsedReload,edgoDragCollapse,edgoDragExpand,edgoDragScroll,edgoEditing,edgoEnterShowEditor,edgoImmediateEditor,edgoSeekDetail,edgoShowHourGlass,edgoTabThrough,edgoVertThrough]);
  //  DBGConsulta.OptionsView     := ([edgoAutoCalcPreviewLines,edgoBandHeaderWidth,edgoHotTrack,edgoInvertSelect,edgoPreview,edgoUseBitmap]);
    SBMsg.Panels[0].Text        := 'Consulta';
  end;
end;

procedure Tfrmpadr1.EEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  oRefresh(Cadastro);
end;

procedure Tfrmpadr1.ExecuteEvent;
begin
  if not ALockWindowUpdate then
     if (EEvent.Registered) and (RECDefault.Event <> EmptyStr) then
         try
           oOTransact(TEvent);

           SPEvent.StoredProcName := 'SP_EVENT';
           SPEvent.Prepare;
           SPEvent.Params[0].AsString := RECDefault.Event;
           SPEvent.ExecProc;

           oCTransact(TEvent);

           RECDefault.Edited := True;
         except
           on E: Exception do
           begin
             RECDefault.Selected := False;
             RECDefault.Edited   := False;

             oCTransact(TEvent,ltRollback);
             oRefresh(Cadastro,False);

             oException(Nil,'Falha ao tentar salvar evento !'  +#13+
                            'Evento: '    +RECDefault.Event+'.'+#13+#13+
                            'Formulário: '+Self.Name+'.'       +#13+#13+
                            'Error Code: '+E.Message+'.');
           end;
         end else oRefresh(Cadastro);
end;

end.
