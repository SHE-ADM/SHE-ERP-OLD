unit ptab_ban;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, IBStoredProc, IBDatabase, ImgList, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
   ComCtrls, ExtCtrls, IBEvents, dxExEdtr, StdCtrls, rxSpeedbar;

type
  Tfrmtab_ban = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroBAN_BANC: TIBStringField;
    cadastroBAN_DESC: TIBStringField;
    dbgConsultaBAN_BANC: TdxDBGridMaskColumn;
    dbgConsultaBAN_DESC: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure AjustaForm;
  public
    { Public declarations }
  end;

var
  frmtab_ban: Tfrmtab_ban;

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmtab_ban.AjustaForm;
begin
  screen.Cursor:=crHourGlass;
  screen.Cursor:=crDefault;

  Self.top    := 0;
  Self.left   := 0;
  Self.Height := frmprincipal.pnCustomize.Height-4;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
   self.Height := screen.Height;
   self.Width  :=  screen.Width;

   if frmprincipal.pnbot.Visible then
      self.Height := self.Height - frmprincipal.pnbot.Height;
  end;
end;

procedure Tfrmtab_ban.FormCreate(Sender: TObject);
begin
  with cadastro do
  begin
    DeleteSQL.Clear;
    DeleteSQL.Add('delete from tab_ban');
    DeleteSQL.Add('where');
    DeleteSQL.Add('ID = :OLD_ID');

    InsertSQL.Clear;
    InsertSQL.Add('insert into tab_ban');
    InsertSQL.Add('  (BAN_BANC, BAN_DESC, ID)');
    InsertSQL.Add('values');
    InsertSQL.Add('  (:BAN_BANC, :BAN_DESC, :ID)');

    ModifySQL.Clear;
    ModifySQL.Add('update tab_ban');
    ModifySQL.Add('set');
    ModifySQL.Add('  BAN_BANC = :BAN_BANC,');
    ModifySQL.Add('  BAN_DESC = :BAN_DESC,');
    ModifySQL.Add('  ID = :ID');
    ModifySQL.Add('where');
    ModifySQL.Add('  ID = :OLD_ID');
  end;

  cEvent := 'TAB_BAN';
  inherited;
  ajustaform;
end;

procedure Tfrmtab_ban.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value := 0;
end;

procedure Tfrmtab_ban.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmtab_ban <> nil then
  begin
    frmtab_ban.Release;
    frmtab_ban := nil;
  end;
end;

end.
