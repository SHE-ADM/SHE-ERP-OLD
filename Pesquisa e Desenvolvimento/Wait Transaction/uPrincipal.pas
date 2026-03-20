unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, IBCustomDataSet, StdCtrls, IBStoredProc, IBQuery,
  IBSQL;

type
  TFrmPrincipal = class(TForm)
    Button1: TButton;
    Edicao: TIBDataSet;
    TEdicao: TIBTransaction;
    SPEdit: TIBStoredProc;
    SQLEdicao: TIBSQL;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
FIDPK: Integer;
    procedure _DoIBWork;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses bPrincipal, oPrincipal, oIBXRetryTransaction;

{$R *.dfm}


procedure TFrmPrincipal._DoIBWork;
begin
  // garante SP na transação atual

  //SPEdit.Close;
  //SPEdit.Unprepare;
  //SPEdit.StoredProcName := 'SP_PED_VEN_CAB';
  //SPEdit.Params.Clear;
  //SPEdit.Prepare;

  //SPEdit.ParamByName('AID'  ).AsInteger := FIDPK;
  //SPEdit.ParamByName('AIDEP').AsInteger := RECParametros.EP_ID;
  //SPEdit.ParamByName('AIDEV').AsInteger := 0;

  //SPEdit.ExecProc;

  //FIDPK := SPEdit.ParamByName('ID').AsInteger;

  //SPEdit.Unprepare;
  //SPEdit.Close;

  with SQLEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CAD_PRO');
    SQL.Add('SET    IDED   = ');
    SQL.Add('WHERE  ID = 1');
    ExecQuery;
  end;
end;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
  if oCommit(TEdicao,_DoIBWork) then
  begin
    ShowMessage('ok');
  end;

  caption := 'ok';
end;

end.
