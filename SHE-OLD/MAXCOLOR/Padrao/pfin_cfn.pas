unit pfin_cfn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, IBEvents, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, ExtCtrls,  ComCtrls, dxDBTLCl, dxGrClms, dxEditor,
  dxEdLib, StdCtrls, Dateutils, dxExEdtr, rxSpeedbar;

type
  Tfrmfin_cfn = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroFIN_DATA: TDateField;
    cadastroFIN_VALO: TIBBCDField;
    dbgConsultaFIN_DATA: TdxDBGridDateColumn;
    dbgConsultaFIN_VALO: TdxDBGridMaskColumn;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    edtchq: TdxEdit;
    edvpon: TdxEdit;
    edmpond: TLabel;
    siLIM: TSpeedItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cadastroAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cadastroAfterDelete(DataSet: TDataSet);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure dbgConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure siDELClick(Sender: TObject);
    procedure siLIMClick(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CALCULA_DATA_MEDIA;
  public
    { Public declarations }
  end;

var
  frmfin_cfn: Tfrmfin_cfn;

implementation

uses p_funcoes, uprincipal;

{$R *.dfm}

procedure Tfrmfin_cfn.CALCULA_DATA_MEDIA;
var
  dia: word;
  dtpri,dtmed: TDateTime;
  subtot, total: double;
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FIN_DATA,FIN_VALO FROM FIN_CFN');
    SQL.Add('ORDER BY FIN_DATA');
    Open;

    dtpri  := Fields[0].AsDateTime;
    subtot := Fields[1].AsFloat;
    total  := Fields[1].AsFloat;

    next;
    while not Eof do
    begin
      dia    := daysbetween(dtpri,Fields[0].AsDateTime);
      subtot := subtot + (Fields[1].AsFloat * dia);
      total  := total  +  Fields[1].AsFloat;

      next;
    end;

    dtmed := incday(dtpri,round((subtot / total)));
  end;

  edtchq.Text := formatfloat('R$ #,0.00########'    ,total);
  edvpon.Text := formatDateTime('dd/mm/yyyy',dtmed);
  if dtmed = 0 then
  edvpon.Text := '';
end;

procedure Tfrmfin_cfn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmfin_cfn <> nil then
  begin
    frmfin_cfn.Release;
    frmfin_cfn := nil;
  end;
end;

procedure Tfrmfin_cfn.cadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
  CALCULA_DATA_MEDIA;
end;

procedure Tfrmfin_cfn.FormCreate(Sender: TObject);
begin
  cEvent  := 'FIN_CFN';
  inherited;
  CALCULA_DATA_MEDIA;
end;

procedure Tfrmfin_cfn.cadastroAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CALCULA_DATA_MEDIA;
end;

procedure Tfrmfin_cfn.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value       := 0;
  cadastroFIN_DATA.Value := strtodate(SLPrincipal.Values['data_sistema']);
end;

procedure Tfrmfin_cfn.dbgConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgconsulta.FocusedColumn = 1 then
                 begin
                   cadastro.Next;
                   if cadastro.Eof then
                   cadastro.Append;

                   dbgconsulta.FocusedColumn := 0;
                 end else
                 dbgconsulta.FocusedColumn := dbgconsulta.FocusedColumn + 1;
               end;
    VK_INSERT: if cadastro.State = dsBrowse then            siINC.Click;
    VK_DELETE: if cadastro.State = dsBrowse then            siDEL.Click;
    VK_ESCAPE: if cadastro.State = dsBrowse then close else siCAN.Click;
  end;
end;

procedure Tfrmfin_cfn.siDELClick(Sender: TObject);
begin
  if cadastro.Fields[0].IsNull then
  abort;

  if yesno(handle,'Excluir Lançamento ?') = mrno then
  abort;

  cadastro.Delete;
end;

procedure Tfrmfin_cfn.siLIMClick(Sender: TObject);
begin
  if yesno(handle,'Confirma a limpeza de todos os lançamentos ?') = mrno then
  abort;

  with cadastro do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM FIN_CFN');
    ExecSQL;
    IBTra.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_CFN');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;
  CALCULA_DATA_MEDIA;
end;

procedure Tfrmfin_cfn.cadastroBeforeEdit(DataSet: TDataSet);
begin
  {nothing};
end;

end.
