unit pThread;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, rxAnimate, rxGIFCtrl, ExtCtrls, cxGraphics,
  cxControls, dxStatusBar, BMDThread, IBSQL, IBDatabase;

type
  TFrmThread = class(TForm)
    LAMain: TLabel;
    LAChild: TLabel;
    GFAPrincipal: TRxGIFAnimator;
    BVPrincipal: TBevel;
    BVGFA: TBevel;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    REC_SHE_DEF: TREC_SHE_DEF;
  public
    { Public declarations }
    Constructor Create(AOwner: TComponent; const AREC_SHE_DEF: TREC_SHE_DEF); reintroduce; overload;
  end;

var
  FrmThread: TFrmThread;
  Value: Integer;

implementation

uses bPrincipal;

{$R *.dfm}

Constructor TFrmThread.Create(AOwner: TComponent; const AREC_SHE_DEF: TREC_SHE_DEF);
begin
  REC_SHE_DEF := AREC_SHE_DEF;
  inherited Create(AOwner);
end;

procedure TFrmThread.FormActivate(Sender: TObject);
begin
  GFAPrincipal.Animate := True;
end;

procedure TFrmThread.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmThread.FormDestroy(Sender: TObject);
begin
  if FrmThread <> Nil then
  begin
    GFAPrincipal.Animate := False;
    FreeAndNil(GFAPrincipal);

    FreeAndNil(FrmThread);
  end;  
end;

procedure TFrmThread.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f4 then
  Abort;
end;

procedure TFrmThread.FormPaint(Sender: TObject);
begin
  if Showing then
  begin
    Top  := Screen.WorkAreaHeight - Height;
    Left := Screen.WorkAreaLeft;
  end;
end;

procedure TFrmThread.FormResize(Sender: TObject);
begin
  if FrmThread <> Nil then
  Paint;
end;

end.
