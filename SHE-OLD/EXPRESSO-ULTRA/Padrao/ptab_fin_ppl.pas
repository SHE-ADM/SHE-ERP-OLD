unit ptab_fin_ppl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxDBGrid, IBDatabase, DB, IBCustomDataSet, ComCtrls, dxtree,
  dxdbtree,  ExtCtrls, ImgList, IBTable, IBQuery, rxSpeedbar;

type
  Tfrmtab_fin_ppl = class(TForm)
    imageOPC: TImageList;
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    siITE: TSpeedItem;
    siSUB: TSpeedItem;
    siSAIR: TSpeedItem;
    siALT: TSpeedItem;
    siDEL: TSpeedItem;
    dbgconsulta: TdxDBTreeView;
    cadastro: TIBDataSet;
    ibTRA: TIBTransaction;
    cadastroID: TIntegerField;
    cadastroFIN_CPPL: TIBStringField;
    cadastroFIN_DFIN: TIBStringField;
    cadastroFIN_TFIN: TIBStringField;
    dtscadastro: TDataSource;
    cadastroFIN_CCON: TIntegerField;
    sbMSG: TStatusBar;
    consulta: TIBQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure siSUBClick(Sender: TObject);
    procedure siITEClick(Sender: TObject);
    procedure cadastroAfterDelete(DataSet: TDataSet);
    procedure cadastroAfterPost(DataSet: TDataSet);
    procedure cadastroAfterEdit(DataSet: TDataSet);
    procedure cadastroAfterInsert(DataSet: TDataSet);
    procedure cadastroAfterCancel(DataSet: TDataSet);
    procedure siALTClick(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure dbgconsultaDragDropTreeNode(Destination, Source: TTreeNode;
      var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure siSAIRClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure cadastroIDChange(Sender: TField);
    procedure dbgconsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgconsultaDblClick(Sender: TObject);
  private
    function IsLoop : Boolean;  
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtab_fin_ppl: Tfrmtab_fin_ppl;

implementation

uses p_funcoes,uPrincipal, prec_cad;

{$R *.dfm}

procedure Tfrmtab_fin_ppl.FormCreate(Sender: TObject);
begin
  top    := 0;
  left   := 0;
  Height := frmprincipal.pnCustomize.Height-4;
  Width  := 483;
  screen.Cursor:=crHourGlass;
  screen.Cursor:=crDefault;

  cadastro.Close;
  cadastro.Open;
end;

procedure Tfrmtab_fin_ppl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
  if frmtab_fin_ppl <> nil then
  begin
    frmtab_fin_ppl.Release;
    frmtab_fin_ppl := nil;
  end;
end;

procedure Tfrmtab_fin_ppl.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       40,vk_return: if not (activeControl is TdxDBGrid) then
                     selectNext (activecontrol, true, true);
       38       : if not (activeControl is TdxDBGrid) then
                     selectNext (activecontrol, false, true);
       119      : if cadastro.State = dsBrowse then
                     begin
                       cadastro.Close;
                       cadastro.Open;
                     end;
       27       : close;
  end;
end;

procedure Tfrmtab_fin_ppl.siSUBClick(Sender: TObject);
var
  ippl,i: word;
  cppl  : string;
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT MAX(FIN_CPPL),COUNT(*) FROM FIN_PPL');
    SQL.Add('WHERE  FIN_CCON = '''+cadastroID.AsString+'''');
    Open;
  end;

  if not consulta.Fields[0].IsNull then
  begin
    if consulta.Fields[1].AsInteger > 1 then
    begin
      for i := Length(consulta.Fields[0].AsString) downto 1 do
      begin
        if copy(consulta.Fields[0].AsString,i,1) = '.' then
           break;
      end;
      ippl := strtoint(copy(consulta.Fields[0].AsString,i+1,4))+1;
      cppl := trim(copy(consulta.Fields[0].AsString,1,i-1))+'.'+strzero(ippl,4);
    end
    else
      cppl := trim(consulta.Fields[0].AsString)+'.0001';
  end
  else
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT MAX(FIN_CPPL) FROM FIN_PPL');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      Open;
    end;
    cppl := trim(consulta.Fields[0].AsString)+'.0001';
  end;

  if (dbgconsulta.Selected <> Nil) then
  begin
    dbgconsulta.ListField := 'FIN_CPPL';
    dbgconsulta.Items.AddChild(dbgconsulta.Selected,cppl);
    dbgconsulta.ListField := 'FIN_DFIN';
    dbgconsulta.Selected.EditText;
  end;
end;

procedure Tfrmtab_fin_ppl.siITEClick(Sender: TObject);
var
  ippl,i,j: integer;
  cppl  : string;
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT MAX(FIN_CCON) FROM FIN_PPL');
    Open;
    i := fields[0].AsInteger;

    for j := i to i+10 do
    begin
      SQL.Clear;
      SQL.Add('SELECT FIN_CPPL FROM FIN_PPL');
      SQL.Add('WHERE  ID = '''+inttostr(j)+'''');
      Open;

      if not fields[0].IsNull then
      begin
        i := j;
        break;
      end;
    end;

    if fields[0].IsNull then
    for j := i-10 to i do
    begin
      SQL.Clear;
      SQL.Add('SELECT FIN_CPPL FROM FIN_PPL');
      SQL.Add('WHERE  ID = '''+inttostr(j)+'''');
      Open;

      if not fields[0].IsNull then
      begin
        i := j;
        break;
      end;
    end;
  end;

  for i := Length(consulta.Fields[0].AsString) downto 1 do
  begin
    if copy(consulta.Fields[0].AsString,i,1) = '.' then
       break;
  end;
  if copy(consulta.Fields[0].AsString,i+1,1) = '' then
  ippl := 1;
  ippl := strtoint(copy(consulta.Fields[0].AsString,i+1,4))+1;
  cppl := trim(copy(consulta.Fields[0].AsString,1,i-1))+'.'+inttostr(ippl);

  dbgconsulta.ListField := 'FIN_CPPL';
  dbgconsulta.Items.Add(dbgconsulta.Selected,cppl);
  dbgconsulta.ListField := 'FIN_DFIN';
  dbgconsulta.Selected.EditText;
end;

procedure Tfrmtab_fin_ppl.cadastroAfterDelete(DataSet: TDataSet);
begin
  IBTra.CommitRetaining;
end;

procedure Tfrmtab_fin_ppl.cadastroAfterPost(DataSet: TDataSet);
begin
  sbMSG.Panels[0].Text := 'Consulta';
  sbMSG.Update;

  IBTra.CommitRetaining;
end;

procedure Tfrmtab_fin_ppl.cadastroAfterEdit(DataSet: TDataSet);
begin
  sbMSG.Panels[0].Text := 'Alteração';
  sbMSG.Update;
end;

procedure Tfrmtab_fin_ppl.cadastroAfterInsert(DataSet: TDataSet);
begin
  if varIsNull(cadastro.FindField('id').Value) then begin
    if varIsNull(dbgconsulta.DBTreeNodes.MaxKeyFieldValue) then
      cadastro.FindField('id').AsInteger := 0
    else cadastro.FindField('id').Value := dbgconsulta.DBTreeNodes.MaxKeyFieldValue + 1;
  end;

  sbMSG.Panels[0].Text := 'Inclusão';
  sbMSG.Update;
end;

procedure Tfrmtab_fin_ppl.cadastroAfterCancel(DataSet: TDataSet);
begin
  sbMSG.Panels[0].Text := 'Consulta';
  sbMSG.Update;
end;

procedure Tfrmtab_fin_ppl.siALTClick(Sender: TObject);
begin
  if (dbgconsulta.Selected <> Nil) then
    dbgconsulta.Selected.EditText;
end;

procedure Tfrmtab_fin_ppl.siDELClick(Sender: TObject);
begin
  if yesno(handle,'Confirma Exclusão ?') = mrno then
  abort;

  if (dbgconsulta.Selected <> Nil) then
    dbgconsulta.Selected.Delete;
end;

procedure Tfrmtab_fin_ppl.dbgconsultaDragDropTreeNode(Destination,
  Source: TTreeNode; var Accept: Boolean);
begin
  if Destination = nil then
  begin
    Accept := False;
    exit;
  end;

  Accept := Not (Source.Parent = Nil);
end;

procedure Tfrmtab_fin_ppl.FormShow(Sender: TObject);
begin
  dbgconsulta.DragMode := dmAutomatic
end;

procedure Tfrmtab_fin_ppl.siSAIRClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmtab_fin_ppl.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if cadastro.State in [dsEdit,dsInsert] then
  begin
    case messageBox(handle,PChar('Existem alterações pendentes. Deseja salvar antes de fechar '),
                           PChar(caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
         mrCancel: Abort;
         mrYes   : cadastro.Post;
         mrNo    : cadastro.Cancel;
    end;
  end;
end;

procedure Tfrmtab_fin_ppl.cadastroBeforeInsert(DataSet: TDataSet);
begin
  cadastro.Last;
end;

function Tfrmtab_fin_ppl.IsLoop : Boolean;
Var
  dbItemP, dbItem : TdxDBTreeNode;
begin
  Result := False;
  {Get Selected DBTreeNode}
  dbItem := dbgconsulta.DBTreeNodes.GetDBTreeNode(cadastro.FindField('ID').Value);
  {Get Parent DBTreeNode}
  dbItemP := dbgconsulta.DBTreeNodes.GetDBTreeNode(cadastro.FindField('FIN_CCON').Value);
  {Is it loop ?}
  if(dbItem <> Nil) and  (dbItemP <> Nil) and (dbItemP <> dbItem)
  and dbItemP.HasAsParent(dbItem) then
    Result := True;
end;

procedure Tfrmtab_fin_ppl.cadastroIDChange(Sender: TField);
begin
  if(IsLoop) then
    ShowMessage('Erro em Loop');
end;

procedure Tfrmtab_fin_ppl.dbgconsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 27) and (cadastro.State = dsBrowse) then
     close;

  if (key = 13) then
     dbgconsultaDblClick(Self);
end;

{var arq: TextFile;
linha: String;
begin
  AssignFile ( arq, 'C:\DEV\DOCS\PLANO_DE_CONTA.TXT');
  Rewrite    ( arq );

  cadastro.First;
  while not cadastro.Eof do
  begin
    Write ( arq, AjustaStr   ( cadastroID.AsString      , 3  ) );
    Write ( arq, AjustaStr   ( cadastroFIN_CPPL.AsString, 15 ) );
    Write ( arq, AjustaStr   ( cadastroFIN_DFIN.AsString, 60 ) );
    Write ( arq, AjustaStr   ( cadastroFIN_CCON.AsString, 3  ) );
    WriteLn ( arq );
    cadastro.Next;
  end;
  CloseFile ( arq );
  close;
end;}

procedure Tfrmtab_fin_ppl.dbgconsultaDblClick(Sender: TObject);
begin
  if Assigned(frmrec_cad) and (cadastro.State = dsBrowse) then
  begin
    frmrec_cad.edippl.Text := cadastroID.AsString;
    frmrec_cad.edcppl.Text := cadastroFIN_CPPL.AsString;
    frmrec_cad.cbdppl.Text := cadastroFIN_DFIN.AsString;
    frmrec_cad.edccus.SetFocus;
    Close;
  end;
end;

end.
