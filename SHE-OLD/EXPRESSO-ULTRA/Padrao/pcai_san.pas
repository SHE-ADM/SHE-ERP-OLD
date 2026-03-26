unit pcai_san;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, DB, IBCustomDataSet, IBStoredProc, IBDatabase, ImgList,
  IBEvents, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ComCtrls, ExtCtrls, dxDBTLCl, dxGrClms, dxExEdtr, IBSQL,
  StdCtrls, rxSpeedbar;

type
  Tfrmcai_san = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroCAI_DATA: TDateField;
    cadastroCAI_RESP: TIBStringField;
    cadastroCAI_MOTI: TIBStringField;
    cadastroCAI_CRED: TIBBCDField;
    cadastroCAI_DEBI: TIBBCDField;
    cadastroCAI_SALD: TIBBCDField;
    cadastroCAI_OBSE: TMemoField;
    dbgConsultaCAI_DATA: TdxDBGridDateColumn;
    dbgConsultaCAI_MOTI: TdxDBGridMaskColumn;
    dbgConsultaCAI_CRED: TdxDBGridMaskColumn;
    dbgConsultaCAI_DEBI: TdxDBGridMaskColumn;
    dbgConsultaCAI_SALD: TdxDBGridMaskColumn;
    dbgConsultaCAI_RESP: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedItem1Click(Sender: TObject);
    procedure dbgConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcai_san: Tfrmcai_san;

implementation

uses p_funcoes, uPrincipal;

{$R *.dfm}

procedure Tfrmcai_san.FormCreate(Sender: TObject);
begin
  RECDefault.Event := 'CAI_SAN';
  inherited;

  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAI_SAN');
    Open;
  end;
end;

procedure Tfrmcai_san.cadastroBeforeEdit(DataSet: TDataSet);
begin
  {}
end;

procedure Tfrmcai_san.cadastroBeforeInsert(DataSet: TDataSet);
begin
  {}
end;

procedure Tfrmcai_san.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value       := 0;
  cadastroCAI_DATA.Value := DATE;
end;

procedure Tfrmcai_san.siDELClick(Sender: TObject);
begin
  {}

  if yesno(handle,'Confirma a exclusão da sangria '+cadastroCAI_MOTI.AsString+' ?') = mrno then
     abort;
  cadastro.Delete
end;

procedure Tfrmcai_san.FormDestroy(Sender: TObject);
begin
  inherited;
  freeAndNil(frmcai_san);
end;

procedure Tfrmcai_san.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmcai_san <> nil then
  begin
    frmcai_san.Release;
    frmcai_san := nil;
  end;
end;

procedure Tfrmcai_san.SpeedItem1Click(Sender: TObject);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM CAI_SAN');
    ExecSQL;
    TEdicao.CommitRetaining;
  end;

  cadastro.Append;
  cadastroCAI_MOTI.Value := 'CAIXA INICIAL';
  cadastro.Post;
end;

procedure Tfrmcai_san.dbgConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_return   : begin
                       if dbgconsulta.FocusedColumn = 5 then
                       begin
                         cadastro.Next;
                         if cadastro.Eof then
                            cadastro.Append;

                         dbgconsulta.FocusedColumn := 0
                       end
                       else
                         dbgconsulta.FocusedColumn := dbgconsulta.FocusedColumn + 1;
                     end;
       VK_escape   : begin
                       if siSAV.Enabled then
                          siCAN.Click
                       else
                          close;
                     end;
       VK_delete   : if not siSAV.Enabled then siDEL.Click;
       VK_insert   : if not siSAV.Enabled then siINC.Click;
  end;
end;

end.
