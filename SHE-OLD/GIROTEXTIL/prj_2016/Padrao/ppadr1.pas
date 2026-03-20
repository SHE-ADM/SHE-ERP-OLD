unit ppadr1;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, dxDBELib, dxExEdtr, rxSpeedbar,
  math, StrUtils;

type
  Tfrmpadr1 = class(TForm)
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
    pEVE: TIBEvents;
    pSP: TIBStoredProc;
    pTRA: TIBTransaction;
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
    procedure pEVEEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure CadastroBeforeCancel(DataSet: TDataSet);
    procedure CadastroAfterCancel(DataSet: TDataSet);
    procedure CadastroAfterEdit(DataSet: TDataSet);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure CadastroAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    FrmStyle   : TFormStyle;
    FrmPosition: TPosition;
    procedure DTSRefresh(ACommit: Boolean = True);
  public
    { Public declarations }
    Editado: Boolean;
    Campo_Pesquisa,
    cEvent : String;
    wRecord: TBookMark;

    procedure ExecuteEvent;
  end;

var
  frmpadr1: Tfrmpadr1;

implementation

uses uPrincipal, bDados, pctr_ped, pctr_oca;

{$R *.dfm}

procedure Tfrmpadr1.FormCreate(Sender: TObject);
begin
  Screen.Cursor  := crAppStart;
  campo_pesquisa := '';
  Tag := 1;

  AUTORIZACAO      := '';
  TP_AUTORIZACAO   := '';
  
  SetLength(PCampo,5);
  oOTransact(IBTra);
end;

procedure Tfrmpadr1.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  { Herança }
  FrmStyle    := FormStyle;
  FrmPosition := Position;

  { Eventos }
  cEvent := Trim(cEvent);
  if cEvent <> '' then
  with pEVE do
  begin
    UnregisterEvents;
    Events.Add(cEvent);
    RegisterEvents;
  end;

  if not Cadastro.Active then
  Cadastro.Open;
end;

procedure Tfrmpadr1.FormActivate(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  OnActivate    := Nil;
  Tag := 0;
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
  OnClose := Nil;
  Screen.Cursor := crAppStart;

  pEve.UnRegisterEvents;
  Action := caFree;
end;

procedure Tfrmpadr1.FormDestroy(Sender: TObject);
begin
  OnDestroy := Nil;
  oFTransact(IBTra);
  Screen.Cursor := crDefault;
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
  R: TRect;
begin
  if (Showing) and ((HelpContext = 0) or (HelpContext = 1)) then
  begin
    { Definição sobre o Painel de utilitários do form principal }
    FrmPrincipal.PNBot.Visible := (Screen.Height > 768);
    HelpContext := IFThen((Screen.Height > 768),0,1);

    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,R);

    if FrmPosition = poDefault then
    begin
      if (AlphaBlendValue = 0) and (HelpContext = 0) then
      begin
        { Width padrão acima de 768 = 1032 }
        Height := Trunc((R.Bottom - R.Top) * 0.9);
        Top    := ((R.Bottom - R.Top ) - Height) div 2;
        Left   := ((R.Right  - R.Left) - Width ) div 2;
      end else
      begin
        Top    := IFThen(FrmStyle    = fsNormal ,R.Top ,0);
        Left   := IFThen(FrmStyle    = fsNormal ,R.Left,0);
        Width  := IFThen(FrmPosition = poDefault,R.Right -R.Left-5,0);
        Height := IFThen(FrmPosition = poDefault,R.Bottom-R.Top -5,0);
      end;
    end else
    begin
      if FrmStyle = fsNormal then
      begin
        Top  := R.Top + ((R.Bottom - R.Top ) - Height) div 2;
        Left :=         ((R.Right  + R.Left) - Width ) div 2;
      end else
      begin
        Top  := ((R.Bottom - R.Top ) - Height) div 2;
        Left := ((R.Right  - R.Left) - Width ) div 2;
      end;
    end;
  end;
end;

procedure Tfrmpadr1.FormResize(Sender: TObject);
begin
  if Self <> Nil then
  Paint;
end;

procedure Tfrmpadr1.siREFClick(Sender: TObject);
begin
  if Cadastro.State = dsBrowse then
  DTSRefresh;
end;

procedure Tfrmpadr1.siPSQClick(Sender: TObject);
begin
  if (not SpeedBar2.Enabled) or (not SpeedBar2.Visible) or (not SIPsq.Enabled) or (not SIPsq.Visible) then
  Abort;
  ActiveControl := Nil;
end;

procedure Tfrmpadr1.siRELClick(Sender: TObject);
begin
  if (not SpeedBar2.Enabled) or (not SpeedBar2.Visible) or (not SIRel.Enabled) or (not SIRel.Visible) then
  Abort;
  ActiveControl := Nil;
end;

procedure Tfrmpadr1.siSAIRClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmpadr1.siINCClick(Sender: TObject);
begin
  DBGConsulta.SetFocus;
  if ((SpeedBar1.Visible) and (SpeedBar1.Enabled) and
      (siINC.Visible)     and (siINC.Enabled) and
      (Cadastro.State = dsBrowse)) then
  Cadastro.Append;
end;

procedure Tfrmpadr1.siALTClick(Sender: TObject);
begin
  DBGConsulta.SetFocus;
  if ((SpeedBar1.Visible)             and (SpeedBar1.Enabled) and
      (siALT.Visible)                 and (siALT.Enabled) and
      (not Cadastro.Fields[0].IsNull) and (Cadastro.State = dsBrowse)) then
  Cadastro.Edit;
end;

procedure Tfrmpadr1.siDELClick(Sender: TObject);
begin
  DBGConsulta.SetFocus;
  if ((not SpeedBar1.Visible)     or (not SpeedBar1.Enabled) or
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
  DBGConsulta.SetFocus;
  if Cadastro.State in [dsInsert,dsEdit] then
  Cadastro.Cancel;
end;

procedure Tfrmpadr1.CadastroBeforeEdit(DataSet: TDataSet);
begin
  if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,PCampo[0],PCampo[1],PCampo[2],PCampo[3],false) then
  Databaseerror('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
end;

procedure Tfrmpadr1.CadastroBeforeInsert(DataSet: TDataSet);
begin
  if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,PCampo[0],PCampo[1],PCampo[2],PCampo[3],false) then
  Databaseerror('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
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

procedure Tfrmpadr1.pEVEEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  DTSRefresh;
end;

procedure Tfrmpadr1.ExecuteEvent;
begin
  if cEvent <> '' then
  try
    oOTransact(pTra);

    pSP.StoredProcName     := 'SP_EVENT';
    pSP.Prepare;
    pSP.Params[0].AsString := cEvent;
    pSP.ExecProc;

    pTra.Commit;
    Editado := True;
  except
    on E: Exception do
    begin
      pTra.Rollback;
      Editado := False;

      raise exception.Create('Falha ao tentar salvar cadastro !'+#13+
                             'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                             'Erro: '+E.Message);
    end;
  end;
end;

procedure TFrmPadr1.DTSRefresh(ACommit: Boolean = True);
begin
  if Cadastro.Fields[0].IsNull then
  WRecord := Nil else
  WRecord := Cadastro.GetBookmark;

  oRTransact(IBTra);
  Cadastro.Open;
  if WRecord <> Nil then
  begin
    Cadastro.GotoBookmark(WRecord);
    Cadastro.FreeBookmark(WRecord);
  end else Cadastro.Last;
  WRecord := Nil;
end;

procedure Tfrmpadr1.CadastroBeforeCancel(DataSet: TDataSet);
begin
  siINC.Enabled := true;
  siALT.Enabled := true;
  siDEL.Enabled := true;
  siSAV.Enabled := false;
  siCAN.Enabled := false;

  DBGConsulta.SetFocus;
  if Cadastro.RecNo = 0 then
  begin
    Cadastro.Close;
    Cadastro.Open;
    ABORT;
  end;
end;

procedure Tfrmpadr1.CadastroAfterCancel(DataSet: TDataSet);
begin
  siINC.Enabled := true;
  siALT.Enabled := true;
  siDEL.Enabled := true;
  siSAV.Enabled := false;
  siCAN.Enabled := false;
end;

procedure Tfrmpadr1.CadastroAfterDelete(DataSet: TDataSet);
begin
  ExecuteEvent;
end;

procedure Tfrmpadr1.CadastroAfterEdit(DataSet: TDataSet);
begin
  siINC.Enabled := false;
  siALT.Enabled := false;
  siDEL.Enabled := false;
  siSAV.Enabled := true;
  siCAN.Enabled := true;
end;

procedure Tfrmpadr1.CadastroAfterInsert(DataSet: TDataSet);
begin
  siINC.Enabled := false;
  siALT.Enabled := false;
  siDEL.Enabled := false;
  siSAV.Enabled := true;
  siCAN.Enabled := true;
end;

procedure Tfrmpadr1.CadastroAfterOpen(DataSet: TDataSet);
begin
  siINC.Enabled := true;
  siALT.Enabled := true;
  siDEL.Enabled := true;
  siSAV.Enabled := false;
  siCAN.Enabled := false;
end;

procedure Tfrmpadr1.CadastroAfterPost(DataSet: TDataSet);
begin
  ExecuteEvent;
end;

end.
