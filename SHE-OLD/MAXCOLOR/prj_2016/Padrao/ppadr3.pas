unit ppadr3;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBStoredProc, IBEvents, IBDatabase, DB, math, StrUtils,
  IBCustomDataSet, IBQuery, ExtCtrls, StdCtrls, ComCtrls, ImgList, 
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  DBCtrls, Grids, DBGrids, rxSpeedbar;
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
    FrmStyle   : TFormStyle;
    FrmPosition: TPosition;
  public
    Editado: boolean;
    { Public declarations }
  end;

var
  frmpadr3: Tfrmpadr3;

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmpadr3.FormCreate(Sender: TObject);
begin
  Screen.Cursor  := crAppStart;
  campo_pesquisa := '';

  AUTORIZACAO      := '';
  TP_AUTORIZACAO   := '';
  
  oOTransact(IBTra);
end;

procedure Tfrmpadr3.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  { Herança }
  FrmStyle    := FormStyle;
  FrmPosition := Position;
end;

procedure Tfrmpadr3.FormActivate(Sender: TObject);
begin
  OnActivate    := Nil;
  Screen.Cursor := crDefault;

  sbMSG.Panels[0].Text := IFThen(Tag = 0,'Inclusão','Alteração');
end;

procedure Tfrmpadr3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnClose := Nil;
  Screen.Cursor := crAppStart;

  Action := caFree;
end;

procedure Tfrmpadr3.FormDestroy(Sender: TObject);
begin
  OnDestroy := Nil;
  oFTransact(IBTra);
  Screen.Cursor := crDefault;
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
  R: TRect;
begin
  if (Showing) and ((HelpContext = 0) or (HelpContext = 1)) then
  begin
    { Definição sobre o Painel de utilitários do form principal }
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

procedure Tfrmpadr3.FormResize(Sender: TObject);
begin
  if Self <> Nil then
  Paint;
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
