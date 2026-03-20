unit uPrincipal;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBCustomDataSet, IBQuery, IBDatabase, IBTable,
  Grids, DBGrids;

const
isc_lock_timeout                     = 335544510;

type
  TFrmPrincipal = class(TForm)
    DBErp: TIBDatabase;
    TEdicao: TIBTransaction;
    COR: TIBTable;
    DTSCOR: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    consulta: TIBQuery;
    Edit1: TEdit;
    Button8: TButton;
    Button9: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure TEdicaoIdleTimer(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Button1Click(Sender: TObject);
var i: word;
begin
  i := 0;
  repeat
  try
    COr.Post;
    break;
  except
    if oYesno(handle,'continuar?') = mrno then break;

    inc(i)
  end;
  until i = 3;
end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
begin
  TEdicao.StartTransaction;
  cor.Open;
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
begin
  Cor.Cancel;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  DBErp.Connected := TRue;
end;

procedure TFrmPrincipal.Button4Click(Sender: TObject);
begin
  Cor.Edit;
end;

procedure TFrmPrincipal.Button5Click(Sender: TObject);
begin
  TEdicao.Commit;
end;

procedure TFrmPrincipal.Button6Click(Sender: TObject);
begin
  TEdicao.Rollback;
end;

procedure TFrmPrincipal.TEdicaoIdleTimer(Sender: TObject);
begin
{  if oYesNo(handle,'aguardar ?') = mrno then
  begin
    cor.Cancel;
    tedicao.Rollback;
  end;}
  tag := 0;
end;

procedure TFrmPrincipal.Button7Click(Sender: TObject);
var i: word;
begin
  { wait fica esperando a outra transação acabar
    equanto não conseguir configurar set time via ibexpert pro, melhor trabalhar com NOWAIT}
  i := 0;
  repeat
    try
      oOTransact(tedicao);
      with consulta do
      begin
        close;
        sql.Clear;
        sql.Add('update tab_cor');
        sql.Add('set descricao = ''caralhooooooo''');
        sql.Add('where id =2');
        execsql;
      end;
      oCTransact(tedicao);
      Break;
    except
      oCTransact(tedicao,ltRollback);
      SleepEx(1000,False);

      inc(i);
      Edit1.Text := inttostr(i);
      Edit1.Refresh;
    end;
  until i = 5;
end;

procedure TFrmPrincipal.Button8Click(Sender: TObject);
begin
  { usando IdleTimer para definir quantos segundos a transação ficará em aberto
    PODE SER ATRIBUIDO DEPOIS DE TRANSAÇÃO ESTAR ABERTA
    só serve se a transação estiver à toa.... caso haja uma chamada de commit, vai ficar esperando
    normalmente (wait)
     mas se estiver apenas editando, ela cai fora !

    }
  TEdicao.IdleTimer := 5000;
end;

end.
