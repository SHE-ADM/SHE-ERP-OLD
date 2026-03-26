unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, Menus, RXCtrls, ExtCtrls, ZTransact,
  ZIbSqlTr, ZConnect, ZIbSqlCon, ImgList;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Movimentao1: TMenuItem;
    Consulta1: TMenuItem;
    Relatrios1: TMenuItem;
    Utilitrios1: TMenuItem;
    Ferramentas1: TMenuItem;
    Ajuda1: TMenuItem;
    Contedo1: TMenuItem;
    N2: TMenuItem;
    Sobre1: TMenuItem;
    BancodeDados1: TMenuItem;
    N3: TMenuItem;
    Usurios1: TMenuItem;
    Backup1: TMenuItem;
    Restore1: TMenuItem;
    N4: TMenuItem;
    ParmetrosdoSistema1: TMenuItem;
    BlocodeNotas1: TMenuItem;
    Calculadora1: TMenuItem;
    N5: TMenuItem;
    NavegadordaInternet1: TMenuItem;
    GerenciadordaInternet1: TMenuItem;
    N6: TMenuItem;
    Configuras1: TMenuItem;
    sbPrincipal: TStatusBar;
    tbPrincipal: TToolBar;
    RxSpeedButton1: TRxSpeedButton;
    ToolButton1: TToolButton;
    RxSpeedButton2: TRxSpeedButton;
    tmrData: TTimer;
    zdbDados: TZIbSqlDatabase;
    ztrDados: TZIbSqlTransact;
    imagelist_normal: TImageList;
    ImageList_hot: TImageList;
    ImageList_disable: TImageList;
    Calendrio1: TMenuItem;
    N9: TMenuItem;
    Empresa1: TMenuItem;
    RxSpeedButton5: TRxSpeedButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    RxSpeedButton6: TRxSpeedButton;
    RxSpeedButton7: TRxSpeedButton;
    RxSpeedButton8: TRxSpeedButton;
    RxSpeedButton9: TRxSpeedButton;
    RxSpeedButton10: TRxSpeedButton;
    RxSpeedButton11: TRxSpeedButton;
    abelaseCampos1: TMenuItem;
    procedure tmrDataTimer(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxSpeedButton2Click(Sender: TObject);
    procedure Backup1Click(Sender: TObject);
    procedure Restore1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure Calendrio1Click(Sender: TObject);
    procedure BlocodeNotas1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure zdbDadosBeforeConnect(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure NavegadordaInternet1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure Fecha_forms;
    { Private declarations }
  public
    { Public declarations }
     sUsuario : String;
     sBancoDados : String;
     cor_grid_selecionado,
     cor_grid_texto_selecionado,
     cor_grid_nao_selecionado,
     cor_grid_texto_nao_selecionado,
     cor_grid_posicionado,
     cor_grid_texto_posicionado,
     cor_grid_posicionado_nao_selecionado,
     cor_grid_texto_posicionado_nao_selecionado : TColor;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation
Uses pFrmBackup, pCalculadora, pFormCalendario, pFrmEditor, pFrmEmpresas, pFrmUsuarios,
     pFrmWebBrowser;

{$R *.dfm}

procedure TFrmPrincipal.tmrDataTimer(Sender: TObject);
begin
   sbPrincipal.Panels[3].Text:=timetostr(time());

end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
    Close;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if messagebox(handle,'Deseja Sair do Sistema','Atenção',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2)=MrNo then
       abort;
   tmrData.Enabled := False;
   Action := caFree;       
end;

procedure TFrmPrincipal.RxSpeedButton2Click(Sender: TObject);
begin
    Close;
end;

procedure TFrmPrincipal.Backup1Click(Sender: TObject);
begin
    Fecha_forms;
    Application.CreateForm (TfrmBackup, frmBackup);
    frmBackup.FormStyle             := fsMdiChild;
    frmBackup.WindowState           := wsNormal;
    frmBackup.Show;
end;

procedure TFrmPrincipal.Restore1Click(Sender: TObject);
begin
    Fecha_forms;
    Application.CreateForm (TfrmBackup, frmBackup);
    frmBackup.FormStyle             := fsMdiChild;
    frmBackup.WindowState           := wsNormal;
    frmBackup.Show;
end;

procedure TFrmPrincipal.Calculadora1Click(Sender: TObject);
begin
    Fecha_forms;
    Application.CreateForm (TFormCalculadora, FormCalculadora);
    FormCalculadora.FormStyle             := fsMdiChild;
    FormCalculadora.WindowState           := wsNormal;
    FormCalculadora.Show;
end;



procedure TFrmPrincipal.Calendrio1Click(Sender: TObject);
begin
    Fecha_forms;
    Application.CreateForm (TFormCalendario, FormCalendario);
    FormCalendario.FormStyle             := fsMdiChild;
    FormCalendario.WindowState           := wsNormal;
    FormCalendario.Show;
end;

procedure TFrmPrincipal.BlocodeNotas1Click(Sender: TObject);
begin
    Fecha_forms;
    Application.CreateForm (TFrmEditor, FrmEditor);
    FrmEditor.FormStyle             := fsMdiChild;
    FrmEditor.WindowState           := wsmaximized;
    FrmEditor.Show;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
    cor_grid_selecionado                       := clRed;
    cor_grid_texto_selecionado                 := clWhite;
    cor_grid_nao_selecionado                   := clWindow; //$00BEEFF8;
    cor_grid_texto_nao_selecionado             := clBlack;
    cor_grid_posicionado                       := $00A8C5FF;
    cor_grid_texto_posicionado                 := clBlack;
    cor_grid_posicionado_nao_selecionado       := clHighLight; //$00BEEFF8;
    cor_grid_texto_posicionado_nao_selecionado := clHighLightText ;

    sbPrincipal.Panels[2].Text:=datetostr(Date());
end;

procedure TFrmPrincipal.zdbDadosBeforeConnect(Sender: TObject);
begin
    zdbDados.BeforeConnect := nil;
    zdbDados.Connected := False;
    try
        zdbDados.Connected := True;
    except
        zdbDados.Connected := False;
        Exit;
    end;
end;

procedure TFrmPrincipal.Empresa1Click(Sender: TObject);
begin
    Fecha_forms;
    Application.CreateForm (TFrmEmpresas, frmEmpresas);
    FrmEmpresas.pnlParametros.Visible := False;
    FrmEmpresas.pnlRodape.Visible     := False;
    FrmEmpresas.FormStyle             := fsMdiChild;
    FrmEmpresas.WindowState           := wsMaximized;
    FrmEmpresas.Show;
end;

procedure TFrmPrincipal.Usurios1Click(Sender: TObject);
begin
    Fecha_forms;
    Application.CreateForm (TFrmusuarios, frmusuarios);
    Frmusuarios.pnlParametros.Visible := False;
    Frmusuarios.pnlRodape.Visible     := False;
    Frmusuarios.FormStyle             := fsMdiChild;
    Frmusuarios.WindowState           := wsMaximized;
    Frmusuarios.Show;
end;

procedure TFrmPrincipal.NavegadordaInternet1Click(Sender: TObject);
begin
    Fecha_forms;
    Application.CreateForm (TFrmWebBrowser, frmWebBrowser);
    FrmWebBrowser.FormStyle             := fsMdiChild;
    FrmWebBrowser.WindowState           := wsMaximized;
    FrmWebBrowser.Show;
end;

procedure TFrmPrincipal.Fecha_forms;
var
    i : Integer;
begin
    // Fecha form anteriores
    with frmPrincipal do
        for I := MDIChildCount-1 downto 0 do
            MDIChildren[I].Close;
end;


procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
    if not (zdbDados.Connected) then
    begin
        zdbDados.Disconnect;
        zdbDados.Connect;
    end;
end;

end.
