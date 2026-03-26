unit ptab_emb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, DB, IBStoredProc, IBEvents,
  IBDatabase, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
   ComCtrls, ExtCtrls, dxExEdtr, StdCtrls, rxSpeedbar;

type
  Tfrmtab_emb = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroEMB_DEMB: TIBStringField;
    cadastroEMB_PESO: TIBBCDField;
    dbgConsultaEMB_DEMB: TdxDBGridMaskColumn;
    dbgConsultaEMB_PESO: TdxDBGridMaskColumn;
    cadastroEMB_STA: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure cadastroBeforePost(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
    procedure siLIXOClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cadastroAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtab_emb: Tfrmtab_emb;

implementation

uses p_funcoes, uPrincipal;

{$R *.dfm}

procedure Tfrmtab_emb.FormCreate(Sender: TObject);
begin
//  siLIXO.Enabled   := (frmprincipal.cad_usuUSU_TAB_EMBI.AsString = '1');
  siREL.Enabled    := false;

  cEvent := 'TAB_EMB';

  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM TAB_EMB');
    SelectSQL.Add('WHERE EMB_STA = ''0''');
  end;

  inherited;
end;

procedure Tfrmtab_emb.cadastroBeforeEdit(DataSet: TDataSet);
begin
//  PCampo := 'USU_TAB_EMBA';
  inherited;
end;

procedure Tfrmtab_emb.cadastroBeforeInsert(DataSet: TDataSet);
begin
//  PCampo := 'USU_TAB_EMBI';
  inherited;
end;

procedure Tfrmtab_emb.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value := 0;
end;

procedure Tfrmtab_emb.cadastroBeforePost(DataSet: TDataSet);
begin
  cadastroEMB_STA.Value := '0';
  inherited;
end;

procedure Tfrmtab_emb.siDELClick(Sender: TObject);
begin
//  PCampo := 'USU_TAB_EMBD';
  inherited;

  if cadastroEMB_STA.Value = '1' then
  begin
    if yesno(handle,'Confirma a exclusão da embalagem '+cadastroEMB_DEMB.AsString+' ?') = mrno then
       abort;
     cadastro.Delete
  end
  else
  with consulta do
  begin
    if yesno(handle,'Enviar para a lixeira a embalagem '+cadastroEMB_DEMB.AsString+' ?') = mrno then
       abort;

    SQL.Clear;
    SQL.Add('UPDATE TAB_EMB');
    SQL.Add('SET EMB_STA = ''1''');
    SQL.Add('WHERE    ID = '''+cadastroID.AsString+'''');
    ExecSQL;

    ibTRA.CommitRetaining;
    ExecuteEvent;
  end;
end;

procedure Tfrmtab_emb.siLIXOClick(Sender: TObject);
begin
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM TAB_EMB');
    if dbgconsulta.Tag = 0 then
    begin
      dbgconsulta.Tag   := 1;
      dbgconsulta.Color := clBtnface;
      SelectSQL.Add('WHERE EMB_STA = ''1''');
    end
    else
    begin
      dbgconsulta.Tag   := 0;
      dbgconsulta.Color := clWhite;
      SelectSQL.Add('WHERE EMB_STA = ''0''');
    end;
    Open;
  end;
end;

procedure Tfrmtab_emb.FormDestroy(Sender: TObject);
begin
  inherited;
  frmtab_emb := nil;
end;

procedure Tfrmtab_emb.dbgConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if (dbgconsulta.FocusedColumn = 1) then
                 begin
                   cadastro.Next;
                   if cadastro.Eof then
                      cadastro.Append;
                   dbgconsulta.FocusedColumn := 0;
                 end
                 else
                    dbgconsulta.FocusedColumn := dbgconsulta.FocusedColumn + 1;
               end;
    VK_DELETE: if cadastro.State = dsBrowse then
                  siDEL.Click;
    VK_ESCAPE: if cadastro.State = dsBrowse then close else cadastro.Cancel;
    VK_INSERT: if not siSAV.Enabled then siINC.Click;
  end;
end;

procedure Tfrmtab_emb.cadastroAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  siINC.Enabled := true;
  siALT.Enabled := true;
  siDEL.Enabled := true;
  siSAV.Enabled := false;
  siCAN.Enabled := false;

  wRec := cadastro.GetBookmark;
  IBTra.CommitRetaining;

  cadastro.Close;
  cadastro.Open;
  if (wRec = Nil) or (cadastro.Fields[0].IsNull) then cadastro.last
     else cadastro.GotoBookmark(wRec);
  cadastro.FreeBookmark(wRec);

  dbgconsulta.SetFocus;
end;

procedure Tfrmtab_emb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmtab_emb <> nil then
  begin
    frmtab_emb.Release;
    frmtab_emb := nil;
  end;  
end;

end.
