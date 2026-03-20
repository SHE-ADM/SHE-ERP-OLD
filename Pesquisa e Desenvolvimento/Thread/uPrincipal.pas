unit uPrincipal;

interface

uses oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, dxStatusBar, jpeg, ExtCtrls, Menus, ibsql,
  BMDThread, math;

type
  TFrmPrincipal = class(TForm)
    IPrincipal: TImage;
    PNLRodape: TPanel;
    MMPrincipal: TMainMenu;
    MPPrincipal: TMenuItem;
    SBRodape: TdxStatusBar;
    MITRunProcessThread: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure MITRunProcessThreadClick(Sender: TObject);
  private
    { Private declarations }
    procedure _Login(AIDUSER,AIDEP: Variant);
  public
    { Public declarations }
  end;
  
var
  FrmPrincipal: TFrmPrincipal;

implementation


uses bPrincipal, pThread, pTRunProcessThread;

{$R *.dfm}

function ClientWindowProc(wnd: HWND; msg: Cardinal; wparam, lparam: Integer ): Integer; STDCall;
var
  Ponteiro: Pointer;
begin
  Ponteiro := Pointer(GetWindowLong(wnd,GWL_USERDATA));
  case msg of
       WM_NCCALCSIZE: if (GetWindowLong(wnd,GWL_STYLE) and (WS_HSCROLL or WS_VSCROLL)) <> 0 then
                      SetWindowLong(wnd,GWL_STYLE,GetWindowLong(wnd,GWL_STYLE) and Not (WS_HSCROLL or WS_VSCROLL));
  end;
  Result := CallWindowProc(Ponteiro,wnd,msg,wparam,lparam);
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  if ClientHandle <> 0 then
     if (not (GetWindowLong(ClientHandle, GWL_USERDATA) <> 0)) then
              SetWindowLong(ClientHandle, GWL_USERDATA, SetWindowLong(ClientHandle, GWL_WNDPROC, integer(@ClientWindowProc)));

  CurrencyString    := 'R$';
  ThousandSeparator := '.';
  DecimalSeparator  := ',';

  _Login('0','4');
end;

procedure TFrmPrincipal.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  oCDatabase(FBird.DBErp);
  FrmPrincipal := Nil;
end;

procedure TFrmPrincipal.FormPaint(Sender: TObject);
var
  WLargura: Word;
begin
  if Showing then
  begin
    WLargura := SBRodape.Panels[3].MinWidth;
    Case Length(SBRodape.Panels[3].Text) of
      25..30: WLargura := 185;
          31: WLargura := 190;
          32: WLargura := 195;
      33..40: WLargura := 210;
    end;
    SBRodape.Panels[3].Width := WLargura;

    { Painel Usuário }
    WLargura := SBRodape.Panels[1].MinWidth;
    Case Length(SBRodape.Panels[1].Text) of
      31..35: WLargura := 250;
      36..40: WLargura := 300;
      41..45: WLargura := 350;
      46..50: WLargura := 400;
      51..55: WLargura := 450;
      56..60: WLargura := 500;
      61..65: WLargura := 550;
      66..70: WLargura := 600;
    end;
    SBRodape.Panels[1].Width := WLargura;
    SBRodape.Panels[0].Width := SBRodape.Width - 20 - (SBRodape.Panels[1].Width+SBRodape.Panels[2].Width+SBRodape.Panels[3].Width+
                                                       SBRodape.Panels[4].Width+SBRodape.Panels[5].Width+SBRodape.Panels[6].Width);
    if Screen.Height <= 768 then
       for WLargura := MDIChildCount - 1 downto 0 do
           if MDIChildren[WLargura] <> Nil then
              MDIChildren[WLargura].Repaint;
  end;
end;

procedure TFrmPrincipal.FormResize(Sender: TObject);
var
  XRect: TRect;
begin
  if FrmPrincipal <> Nil then
  begin
    GetWindowRect(Application.MainForm.ClientHandle,XRect);
    XRect.Top := IPrincipal.Top;

    Canvas.FillRect(XRect);
    Canvas.StretchDraw(xRect,IPrincipal.Picture.Graphic);

    Paint;
  end;  
end;

procedure TFrmPrincipal._Login(AIDUSER,AIDEP: Variant);
begin
  if (not oEmpty(AIDUSER)) and (not oEmpty(AIDEP)) and (oEmpty(RECParametros.DataBaseError)) then
  try
    FreeAndNil(SLPrincipal);
    SLPrincipal := TStringList.Create;

    with FBird do
    begin
      bExecParametros(AIDEP);
      bExecUsuarios(AIDUSER);
      bExecPrinter;
      bExecCaixa;
    end;
    
    { Foto de Fundo da Tela Principal}
    oLoadJPG(RECParametros.IMG_JPG_SPLASH,IPrincipal.Picture);

    { Preenchendo o rodapé do Form Principal }
    SBRodape.Width          := Screen.Width + 1;
    SBRodape.Panels[0].Text := RECParametros.Fantasia;
    SBRodape.Panels[1].Text := RECParametros.ServerHost;

    SLPrincipal.Values['fin_pag']         := oREPZero('fin_pag'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_pag_rec']     := oREPZero('fin_pag_rec'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_pag_bai']     := oREPZero('fin_pag_bai'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_pag_coc']     := oREPZero('fin_pag_coc'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_pag_coi']     := oREPZero('fin_pag_coi'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_pag_dup']     := oREPZero('fin_pag_dup'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_pag_obs']     := oREPZero('fin_pag_obs'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_rec']         := oREPZero('fin_rec'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_rec_dup']     := oREPZero('fin_rec_dup'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_rec_obs']     := oREPZero('fin_rec_obs'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_rec_ban_bai'] := oREPZero('fin_rec_ban_bai','_',RECParametros.Id,3);
    SLPrincipal.Values['fin_rec_car_bai'] := oREPZero('fin_rec_car_bai','_',RECParametros.Id,3);
    SLPrincipal.Values['nfe_cab']         := oREPZero('nfe_cab'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['nfe_dup']         := oREPZero('nfe_dup'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['nfe_ite']         := oREPZero('nfe_ite'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['nfe_tra']         := oREPZero('nfe_tra'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_avi_cab']     := oREPZero('ped_avi_cab'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_avi_ite']     := oREPZero('ped_avi_ite'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_oca_cab']     := oREPZero('ped_oca_cab'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_oca_ite']     := oREPZero('ped_oca_ite'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_com_cab']     := oREPZero('ped_com_cab'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_com_ite']     := oREPZero('ped_com_ite'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_prg_cab']     := oREPZero('ped_prg_cab'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_prg_ite']     := oREPZero('ped_prg_ite'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_tec_cab']     := oREPZero('ped_tec_cab'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_tec_ite']     := oREPZero('ped_tec_ite'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_ven_cab']     := oREPZero('ped_ven_cab'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_ven_ite']     := oREPZero('ped_ven_ite'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['rom_cab']         := oREPZero('rom_cab'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['rom_ite']         := oREPZero('rom_ite'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['rom_des']         := oREPZero('rom_des'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['tab_alq']         := oREPZero('tab_alq'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['tab_ban']         := oREPZero('tab_ban'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_caption']     := 'Consultas em Carteira';
    SLPrincipal.Values['fin_hint']        := '';
    SLPrincipal.Values['fin_baixa']       := '';
    SLPrincipal.Values['fin_consulta']    := '';
  Finally
    FrmPrincipal.Repaint;
    Application.ProcessMessages;
  end;
end;

procedure TFrmPrincipal.MITRunProcessThreadClick(Sender: TObject);
begin
  FrmTRunProcessThread := TFrmTRunProcessThread.Create(Application);
  FrmTRunProcessThread.ShowModal;
end;

end.
