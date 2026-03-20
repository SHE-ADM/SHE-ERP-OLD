unit uEventos;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBDatabase, IBEvents, IBCustomDataSet,
  IBStoredProc, IBSQL;

type
  TFrmEventos = class(TForm)
    TEvent: TIBTransaction;
    SQLEvent: TIBSQL;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    DBERP: TIBDatabase;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEventos: TFrmEventos;

implementation

{$R *.dfm}

procedure TFrmEventos.Button1Click(Sender: TObject);
begin
  { UNREGISTER EVENT }
  if EEvent.Registered then
  begin
    EEvent.UnRegisterEvents;
    EEvent.Events.Clear;
  end;
end;

procedure TFrmEventos.Button2Click(Sender: TObject);
begin
  EEvent.Events.Add('adm');
  EEvent.Events.Add('pad');
  EEvent.Events.Add('edt');
  EEvent.RegisterEvents;
end;

procedure TFrmEventos.Button3Click(Sender: TObject);
var
  i: word;
begin
     try
       oOTransact(TEvent);

       { ADMIN }
       SPEvent.Close;
       SPEvent.StoredProcName := 'SP_SHE_EVE';
       SPEvent.Prepare;

       for i := 0 to SPEvent.ParamCount - 1 do
       SPEvent.Params[i].Value := Null;

       SPEvent.Params[0].Value := 'adm';
       SPEvent.Params[1].Value := Edit1.Text;
       SPEvent.ExecProc;

       oCTransact(TEvent);
     except
       on E: Exception do
       begin
         oCTransact(TEvent,ltRollback);
         oErro(Application.Handle,'Falha ao tentar executar evento !' + #13 +
                                   E.Message              + '.');
       end;
     end;
end;

procedure TFrmEventos.EEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  showmessage(EventName);
end;

end.
