unit pcad_usu_clo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  StdCtrls, ExtCtrls, IBQuery, DB, IBCustomDataSet, IBStoredProc,
  IBDatabase;

type
  Tfrmcad_usu_clo = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    cbddusu: TdxImageEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    cbodusu: TdxImageEdit;
    SpeedButton1: TSpeedButton;
    StatusBar1: TStatusBar;
    ibTRA: TIBTransaction;
    ibSP: TIBStoredProc;
    consulta: TIBQuery;
    cad_usu_adm: TIBDataSet;
    cad_usu_admID: TIntegerField;
    cad_usu_admUSU_CUSU: TIntegerField;
    cad_usu_admUSU_FUNC: TIBStringField;
    cad_usu_admUSU_ROTI: TIBStringField;
    cad_usu_admUSU_NOME: TIBStringField;
    cad_usu_admUSU_NOVO: TIBStringField;
    cad_usu_admUSU_EDIT: TIBStringField;
    cad_usu_admUSU_DELE: TIBStringField;
    cad_usu_admUSU_VISU: TIBStringField;
    cad_usu_admUSU_PRIN: TIBStringField;
    cad_usu_admUSU_AUTO: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cad_usu_admNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcad_usu_clo: Tfrmcad_usu_clo;

implementation

uses pcad_usu;

{$R *.dfm}

procedure Tfrmcad_usu_clo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcad_usu_clo.FormCreate(Sender: TObject);
begin
  if not IBTra.Active then
         IBTra.StartTransaction;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   USU_CUSU,USU_DUSU FROM CAD_USU');
    SQL.Add('WHERE    USU_STA  = ''0''');
    SQL.Add('AND      USU_STAV = ''A''');
    SQL.Add('ORDER BY USU_DUSU');
    Open;

    while not eof do
    begin
      cbodusu.Values.Add(fields[0].AsString);
      cbodusu.Descriptions.Add(fields[1].AsString);
      cbddusu.Values.Add(fields[0].AsString);
      cbddusu.Descriptions.Add(fields[1].AsString);
      next;
    end;
  end;
end;

procedure Tfrmcad_usu_clo.SpeedButton1Click(Sender: TObject);
begin
  if cbodusu.Text = '' then
     raise exception.Create('Usuário origem não selecionado !');

  if cbddusu.Text = '' then
     raise exception.Create('Usuário destino não selecionado !');

  if cbodusu.Text = cbddusu.Text then
     raise exception.Create('Usuário origem não pode ser igual ao usuário destino !');

  if yesno(handle,'Confirma clonagem ?') = mrno then
     abort;

  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_USU_ADM');
      SQL.Add('WHERE  USU_CUSU = '''+cbddusu.Text+'''');
      ExecSQL;
      IBTra.CommitRetaining;
    end;

    with cad_usu_adm do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_USU_ADM');
      SelectSQL.Add('ORDER BY USU_FUNC,ID');
      Open;
    end;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   USU_FUNC,USU_ROTI,USU_NOME,USU_NOVO,USU_EDIT,USU_DELE,USU_VISU,USU_PRIN,USU_AUTO');
      SQL.Add('FROM     CAD_USU_ADM');
      SQL.Add('WHERE    USU_CUSU = '''+cbodusu.Text+'''');
      SQL.Add('ORDER BY USU_FUNC,ID');
      Open;
    end;

    while not consulta.Eof do
    begin
      cad_usu_adm.Append;
      cad_usu_admID.Value       := 0;
      cad_usu_admUSU_CUSU.Value := strtoint(cbddusu.Text);
      cad_usu_admUSU_FUNC.Value := consulta.Fields[0].AsString;
      cad_usu_admUSU_ROTI.Value := consulta.Fields[1].AsString;
      cad_usu_admUSU_NOME.Value := consulta.Fields[2].AsString;
      cad_usu_admUSU_NOVO.Value := consulta.Fields[3].AsString;
      cad_usu_admUSU_EDIT.Value := consulta.Fields[4].AsString;
      cad_usu_admUSU_DELE.Value := consulta.Fields[5].AsString;
      cad_usu_admUSU_VISU.Value := consulta.Fields[6].AsString;
      cad_usu_admUSU_PRIN.Value := consulta.Fields[7].AsString;
      cad_usu_admUSU_AUTO.Value := consulta.Fields[8].AsString;
      cad_usu_adm.Post;
      IBTra.CommitRetaining;
      consulta.Next;
    end;
    if Assigned(frmcad_usu) then
    begin
      frmcad_usu.cadastro.close;
      frmcad_usu.cadastro.open;
    end;  
  finally
    messageBox(handle,'Clonagem concluída com sucesso !','Cadastro de Usuários',MB_ICONINFORMATION+MB_OK);
  end;
end;

procedure Tfrmcad_usu_clo.cad_usu_admNewRecord(DataSet: TDataSet);
begin
  cad_usu_admUSU_NOVO.Value := '0';
  cad_usu_admUSU_EDIT.Value := '0';
  cad_usu_admUSU_DELE.Value := '0';
  cad_usu_admUSU_VISU.Value := '0';
  cad_usu_admUSU_PRIN.Value := '0';
  cad_usu_admUSU_AUTO.Value := '0';
end;

end.
