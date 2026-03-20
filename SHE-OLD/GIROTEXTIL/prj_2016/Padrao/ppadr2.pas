unit ppadr2;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc, math, StrUtils,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, dxDBELib, dxExEdtr, rxSpeedbar;

type
  Tfrmpadr2 = class(TForm)
    sbMSG: TStatusBar;
    SpeedBar9: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    siPSQ: TSpeedItem;
    siREF: TSpeedItem;
    siSAIR: TSpeedItem;
    siLIXO: TSpeedItem;
    Consulta: TIBQuery;
    DTSCadastro: TDataSource;
    Cadastro: TIBQuery;
    siPRN: TSpeedItem;
    IBTra: TIBTransaction;
    ibSP: TIBStoredProc;
    pnldir: TPanel;
    pnlpri: TPanel;
    pnldbg: TPanel;
    pnlbot: TPanel;
    imageITEM: TImageList;
    imageOPC: TImageList;
    siEVE: TSpeedItem;
    pTRA: TIBTransaction;
    pEVE: TIBEvents;
    pSP: TIBStoredProc;
    gbDET: TGroupBox;
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
    DBGConsulta: TdxDBGrid;
    procedure siINCClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure pEVEEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure siREFClick(Sender: TObject);
    procedure siSAIRClick(Sender: TObject);
    procedure siPRNClick(Sender: TObject);
    procedure siPSQClick(Sender: TObject);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure DBGConsultaBackgroundDrawEvent(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect);
    procedure DBGConsultaDblClick(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
  frmpadr2: Tfrmpadr2;

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmpadr2.FormCreate(Sender: TObject);
begin
  Screen.Cursor  := crAppStart;
  campo_pesquisa := '';
  Tag := 1;

  AUTORIZACAO      := '';
  TP_AUTORIZACAO   := '';
  
  SetLength(PCampo,5);
  oOTransact(IBTra);
end;

procedure Tfrmpadr2.FormShow(Sender: TObject);
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

procedure Tfrmpadr2.FormActivate(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  OnActivate    := Nil;
  Tag := 0;
end;

procedure Tfrmpadr2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnClose := Nil;
  Screen.Cursor := crAppStart;

  pEve.UnRegisterEvents;
  Action := caFree;
end;

procedure Tfrmpadr2.FormDestroy(Sender: TObject);
begin
  OnDestroy := Nil;
  oFTransact(IBTra);
  Screen.Cursor := crDefault;
end;

procedure Tfrmpadr2.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tfrmpadr2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #5 then
  {[Ctrl+E]} else
  if key = #8 then
  {[Ctrl+H]} else
  if key = #9 then
  {[Ctrl+I]} else
  if key = #16 then
  SIPrn.Click else
  if key = #19 then
  {[Ctrl+S]} else
  if key = #22 then
  {[Ctrl+V]};
end;

procedure Tfrmpadr2.FormPaint(Sender: TObject);
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

procedure Tfrmpadr2.FormResize(Sender: TObject);
begin
  if Self <> Nil then
  Paint;
end;

procedure Tfrmpadr2.siREFClick(Sender: TObject);
begin
  DTSRefresh;
end;

procedure Tfrmpadr2.siPSQClick(Sender: TObject);
begin
  if (not SpeedBar9.Enabled) or (not SpeedBar9.Visible) or (not SIPsq.Enabled) or (not SIPsq.Visible) then
  Abort;
  ActiveControl := Nil;
end;

procedure Tfrmpadr2.siPRNClick(Sender: TObject);
begin
  if (not SpeedBar9.Enabled) or (not SpeedBar9.Visible) or (not SIPrn.Enabled) or (not SIPrn.Visible) then
  Abort;
  ActiveControl := Nil;
end;

procedure Tfrmpadr2.siSAIRClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmpadr2.siINCClick(Sender: TObject);
begin
  if (not SpeedBar1.Enabled ) or (not SpeedBar1.Visible ) or
     (not SIInc.Enabled)      or (not SIInc.Visible) or
     (Cadastro.State <> dsBrowse) then
  Abort;

  ActiveControl := Nil;

  if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,PCampo[0],PCampo[1],PCampo[2],PCampo[3],false) then
  raise exception.Create('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');

  Tag := 0;
  sbMSG.Panels[0].Text := 'Inclusão';
end;

procedure Tfrmpadr2.siALTClick(Sender: TObject);
begin
  if (not SpeedBar1.Enabled )     or (not SpeedBar1.Visible ) or
     (not SIAlt.Enabled)          or (not SIAlt.Visible) or
     (Cadastro.State <> dsBrowse) or (Cadastro.Fields[0].IsNull) then
  Abort;

  ActiveControl := Nil;

  if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,PCampo[0],PCampo[1],PCampo[2],PCampo[3],false) then
  raise exception.Create('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');

  Tag := 1;
  sbMSG.Panels[0].Text := 'Alteração';
end;

procedure Tfrmpadr2.siDELClick(Sender: TObject);
begin
  if (not SpeedBar1.Enabled )     or (not SpeedBar1.Visible )    or
     (not SIDel.Enabled)          or (not SIDel.Visible)         or
     (Cadastro.State <> dsBrowse) or (Cadastro.Fields[0].IsNull) then
  Abort;

  ActiveControl := Nil;

  if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,PCampo[0],PCampo[1],PCampo[2],PCampo[3],false) then
  raise exception.Create('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
end;

procedure Tfrmpadr2.CadastroAfterOpen(DataSet: TDataSet);
begin
  SBMsg.Panels[0].Text := 'Consulta';
end;

procedure Tfrmpadr2.DBGConsultaBackgroundDrawEvent(Sender: TObject;
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

procedure Tfrmpadr2.DBGConsultaDblClick(Sender: TObject);
begin
  SIAlt.Click;
end;

procedure Tfrmpadr2.DBGConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: SISair.Click;
       vk_insert: SIInc.Click;
       vk_return: SIAlt.Click;
       vk_delete: SIDel.Click;
  end;
end;

procedure Tfrmpadr2.pEVEEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  DTSRefresh;
end;

procedure Tfrmpadr2.ExecuteEvent;
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

procedure TFrmPadr2.DTSRefresh(ACommit: Boolean = True);
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

end.
