unit pTRunProcessThread;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TRunProcessThread = class(TThread)
  protected
    procedure Execute; override;
  public
    ADEPK: String;

    constructor Create(const VDEPK: String);
    destructor  Destroy; override;
  end;

type
  TFrmTRunProcessThread = class(TForm)
    EDDEPK: TEdit;
    BTNINI: TButton;
    BTNFIM: TButton;
    EDINI: TEdit;
    EDFIM: TEdit;
    Label1: TLabel;
    procedure BTNINIClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ProcessDone(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FrmTRunProcessThread: TFrmTRunProcessThread;
  Value: Integer;

implementation

uses bPrincipal;

{$R *.dfm}

threadvar                // <==== ONLY CHANGE IS HERE
  Sum: integer;

constructor TRunProcessThread.Create(const VDEPK: String);
begin
  inherited Create(True);

  FreeOnTerminate := True;
  ADEPK := VDEPK;
end;

destructor TRunProcessThread.Destroy;
begin
  inherited;
end;

procedure TRunProcessThread.Execute;
var
  i : Integer;
begin
  inherited;

  Value := 0;
  for i := 0 to 20 - 1 do
    begin
    SleepEx ( 20, false );

    Inc ( Value );

    with FBird do
    begin
      oOTransact(TTHREdicao);
      with SQLTHREdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO SHE_DEV_DEB (IDEV,DEEV) VALUES (');
        SQL.Add('''' + INTTOSTR(VALUE) + ''',');
        SQL.Add('''' + ADEPK + ''')');
        ExecQuery;
      end;
      oCTransact(TTHREdicao);
    end;

    FrmTRunProcessThread.EDINI.Text := INTTOSTR(VALUE);
  end;

end;

procedure TFrmTRunProcessThread.FormCreate(Sender: TObject);
begin
    with FBird do
    begin
      oOTransact(TTHREdicao);
      with SQLTHREdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM SHE_DEV_DEB');
        ExecQuery;
      end;
      oCTransact(TTHREdicao);
    end;

end;

procedure TFrmTRunProcessThread.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TFrmTRunProcessThread.BTNINIClick(Sender: TObject);
var
  Thread: TRunProcessThread;
begin
  Thread := TRunProcessThread.Create(EDDEPK.Text);             //Create(AnsiQuotedStr(EDDEPK.Text, #34));
  Thread.OnTerminate := ProcessDone;
  Thread.Resume;
end;

procedure TFrmTRunProcessThread.ProcessDone(Sender: TObject);
begin
  EDFIM.Text := 'Estoque atualizado com sucesso !';
end;

end.
