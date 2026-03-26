unit ppadr3;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBStoredProc, IBEvents, IBDatabase, DB, math, StrUtils,
  IBCustomDataSet, IBQuery, ExtCtrls, StdCtrls, ComCtrls, ImgList, 
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  DBCtrls, Grids, DBGrids, rxSpeedbar, IBSQL;
type
  Tfrmpadr3 = class(TForm)
    Consulta: TIBQuery;
    pnlcadastro: TPanel;
    sbMSG: TStatusBar;
    IBTra: TIBTransaction;
    ibSP: TIBStoredProc;
    PaintBox: TPaintBox;
    imageOPC: TImageList;
    imageITEM: TImageList;
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    siSAIR: TSpeedItem;
    siSAV: TSpeedItem;
    siCAN: TSpeedItem;
    siVAL: TSpeedItem;
    TConsulta: TIBTransaction;
    QConsulta: TIBQuery;
    SQLConsulta: TIBSQL;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    TSEdicao: TIBTransaction;
    SQLSEdicao: TIBSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure siCANClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure siSAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure siVALClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    RECDefault: TRECDefault;

    Editado: Boolean;
    Campo_Pesquisa: String;
  end;

var
  frmpadr3: Tfrmpadr3;

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmpadr3.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
  oIRECDefault(RECDefault);

  { Paginação }
  RECDefault.FrmPosition := self.Position; { Abertura Controlada  }
  RECDefault.WorkArea    := False;         { Toda Tela do Windows }
  RECDefault.MainArea    := False;         { Toda Tela MainForm + Exclusão Botões }

  oOTransact(IBTra);
  oOTransact(TConsulta);

  campo_pesquisa := EmptyStr;
  AUTORIZACAO    := EmptyStr;
  TP_AUTORIZACAO := EmptyStr;

  SetLength(PCampo,5);
end;

procedure Tfrmpadr3.FormShow(Sender: TObject);
begin
  OnShow := Nil;
end;

procedure Tfrmpadr3.FormActivate(Sender: TObject);
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

  sbMSG.Panels[0].Text := IFThen(Tag = 0,'Inclusão','Alteração');
end;

procedure Tfrmpadr3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmpadr3.FormDestroy(Sender: TObject);
begin
  try
    Screen.Cursor := crAppStart;
    OnDestroy     := Nil;

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
    try
      uRepaintMainForm(TForm(Self));
    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure Tfrmpadr3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_RETURN: if (not (activeControl is TdxDBGrid) and
                      not (activeControl is TDBMemo)   and
                      not (activeControl is TdxMemo)   and
                      not (activeControl is TdxDBMemo) and
                      not (activeControl is TdbGrid)   and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       40       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       38       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, false, true);
  end;

  if ((ssCtrl in Shift) and (Key in [83])) then
  siSAV.Click;
end;

procedure Tfrmpadr3.FormPaint(Sender: TObject);
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
  end;
end;

procedure Tfrmpadr3.FormResize(Sender: TObject);
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

procedure Tfrmpadr3.siSAVClick(Sender: TObject);
begin
  if (not siSAV.Enabled) or (not siSAV.Visible) then
      Abort;
  ActiveControl := Nil;
end;

procedure Tfrmpadr3.siVALClick(Sender: TObject);
begin
  if (not siVAL.Enabled) or (not siVAL.Visible) then
      Abort;
  ActiveControl := Nil;
end;

procedure Tfrmpadr3.siCANClick(Sender: TObject);
begin
  Editado := False;
  Close;
end;

procedure Tfrmpadr3.siSAIRClick(Sender: TObject);
begin
  Editado := False;
  Close;
end;

end.
