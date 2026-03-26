unit pcad_age;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, IBStoredProc, IBDatabase, ImgList, DB, IBCustomDataSet,
  IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,  ComCtrls, ExtCtrls,
  DBCtrls, StdCtrls, dxPageControl, IBEvents, dxDBTLCl,
  dxGrClms, IBUpdateSQL, dxExEdtr, dxEdLib, dxEditor,dxDBELib, rxSpeedbar;

type
  Tfrmcad_age = class(Tfrmpadr2)
    pcdet: TdxPageControl;
    tsdet: TdxTabSheet;
    pnlfic: TPanel;
    Shape3: TShape;
    Label7: TLabel;
    linha2: TShape;
    Label48: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cadastroID: TIntegerField;
    cadastroAGE_NOME: TIBStringField;
    cadastroAGE_TIPO: TIBStringField;
    cadastroAGE_CONT: TIBStringField;
    cadastroAGE_DCAD: TDateField;
    cadastroAGE_DDD1: TIBStringField;
    cadastroAGE_TEL1: TIBStringField;
    cadastroAGE_DDD2: TIBStringField;
    cadastroAGE_TEL2: TIBStringField;
    cadastroAGE_DDD3: TIBStringField;
    cadastroAGE_TEL3: TIBStringField;
    cadastroAGE_DDD4: TIBStringField;
    cadastroAGE_FAX: TIBStringField;
    cadastroAGE_DDD5: TIBStringField;
    cadastroAGE_CEL: TIBStringField;
    cadastroAGE_TCE1: TIBStringField;
    cadastroAGE_DDD6: TIBStringField;
    cadastroAGE_NCEL: TIBStringField;
    cadastroAGE_TCE2: TIBStringField;
    cadastroAGE_NEID: TIBStringField;
    cadastroAGE_TLOG: TIBStringField;
    cadastroAGE_LOGR: TIBStringField;
    cadastroAGE_CEP: TIBStringField;
    cadastroAGE_NUME: TIBStringField;
    cadastroAGE_COMP: TIBStringField;
    cadastroAGE_BAI: TIBStringField;
    cadastroAGE_CID: TIBStringField;
    cadastroAGE_ESTA: TIBStringField;
    cadastroAGE_TLO2: TIBStringField;
    cadastroAGE_LOG2: TIBStringField;
    cadastroAGE_CEP2: TIBStringField;
    cadastroAGE_NUM2: TIBStringField;
    cadastroAGE_COM2: TIBStringField;
    cadastroAGE_BAI2: TIBStringField;
    cadastroAGE_CID2: TIBStringField;
    cadastroAGE_EST2: TIBStringField;
    cadastroAGE_OBSE: TMemoField;
    cadastroAGE_STA: TIBStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    cadastroAGE_MAIL: TIBStringField;
    DBText7: TDBText;
    dbgConsultaAGE_NOME: TdxDBGridMaskColumn;
    dbgConsultaAGE_TIPO: TdxDBGridMaskColumn;
    dbgConsultaAGE_DCAD: TdxDBGridDateColumn;
    dbgConsultaAGE_DDD1: TdxDBGridMaskColumn;
    dbgConsultaAGE_TEL1: TdxDBGridMaskColumn;
    dbgConsultaAGE_LOGR: TdxDBGridMaskColumn;
    dbgConsultaAGE_BAI: TdxDBGridMaskColumn;
    dbgConsultaAGE_CID: TdxDBGridMaskColumn;
    DBText6: TDBText;
    DBText8: TDBText;
    Label5: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    Label6: TLabel;
    DBText11: TDBText;
    DBText12: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    Label10: TLabel;
    DBText16: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    Label11: TLabel;
    DBText19: TDBText;
    Panel1: TPanel;
    Shape1: TShape;
    Label12: TLabel;
    Shape2: TShape;
    dxDBMemo1: TdxDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure siINCClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure siLIXOClick(Sender: TObject);
    procedure siEVEClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure AjustaForm;
  public
    { Public declarations }
  end;

var
  frmcad_age: Tfrmcad_age;

implementation

uses uPrincipal, pcad_age_edi, plog_eve;

{$R *.dfm}

procedure Tfrmcad_age.AjustaForm;
begin
  screen.Cursor:=crHourGlass;
  screen.Cursor:=crDefault;

  Self.top    := 0;
  Self.left   := 0;
  Self.Height := frmprincipal.pnCustomize.Height-4;

  if (Screen.Width > 1280)  and (Screen.Width <= 1360) then
  linha2.Width := 467
  else if (Screen.Width > 1360) and (Screen.Width <= 1440) then
  linha2.Width := 473
  else if (Screen.Width > 1440)  and (Screen.Width <= 1600) then
  linha2.Width := 707
  else if (Screen.Width > 1600)  and (Screen.Width < 1920) then
  linha2.Width := 1027;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
   self.Height := screen.Height;
   self.Width  :=  screen.Width;

   if frmprincipal.pnbot.Visible then
      self.Height := self.Height - frmprincipal.pnbot.Height;
  end;
end;

procedure Tfrmcad_age.FormCreate(Sender: TObject);
begin
  cEvent := 'CAD_AGE';

  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM CAD_AGE');
    SQL.Add('WHERE    AGE_STA = ''0''');
    SQL.Add('ORDER BY AGE_NOME');
  end;

  inherited;
  ajustaform;
end;

procedure Tfrmcad_age.siINCClick(Sender: TObject);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Utilitários';
  PCampo[2] := 'Agenda';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  frmcad_age_edi := TFrmcad_age_edi.Create(self);
  try
    frmcad_age_edi.Tag := frmcad_age.Tag;
    frmcad_age_edi.ShowModal;
  finally
    if frmcad_age_edi.editado then
       ExecuteEvent;
    freeAndNil(frmcad_age_edi);
    frmcad_age_edi.Free;
  end;
end;

procedure Tfrmcad_age.siALTClick(Sender: TObject);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Utilitários';
  PCampo[2] := 'Agenda';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  frmcad_age_edi := TFrmcad_age_edi.Create(self);
  try
    frmcad_age_edi.Tag := frmcad_age.Tag;
    frmcad_age_edi.ShowModal;
  finally
    if frmcad_age_edi.editado then
       ExecuteEvent;
    freeAndNil(frmcad_age_edi);
    frmcad_age_edi.Free;
  end;
end;

procedure Tfrmcad_age.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Utilitários';
  PCampo[2] := 'Agenda';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  with consulta do
  begin
    if cadastroAGE_STA.Value = '1' then
    begin
      if oYesNo(handle,'Confirma a exclusão do cliente '+cadastroAGE_NOME.AsString+' ?') = mrno then
         abort;

      SQL.Clear;
      SQL.Add('DELETE FROM CAD_age');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecSQL;
      frmprincipal.Log_Eve('Agenda','Cadastro de Agenda','Exclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroAGE_NOME.AsString),'','');
    end
    else
    begin
      if oYesNo(handle,'Enviar para a lixeira o cliente '+cadastroAGE_NOME.AsString+' ?') = mrno then
         abort;

      SQL.Clear;
      SQL.Add('UPDATE CAD_age');
      SQL.Add('SET    AGE_STA = ''1''');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecSQL;
      frmprincipal.Log_Eve('AGENDA','Cadastro de Agenda','Lixeira' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroAGE_NOME.AsString),'','');
    end;
  end;
  ExecuteEvent;
end;

procedure Tfrmcad_age.siLIXOClick(Sender: TObject);
begin
  with cadastro do    
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM CAD_AGE');
    SQL.Add('WHERE  ID > 0');

    if dbgconsulta.Tag = 0 then
    begin
      dbgconsulta.Tag   := 1;
      dbgconsulta.Color := clBtnface;
      SQL.Add('AND AGE_STA = ''1''');
    end
    else
    begin
      dbgconsulta.Tag   := 0;
      dbgconsulta.Color := clWhite;
      SQL.Add('AND AGE_STA = ''0''');
    end;

    SQL.Add('ORDER BY AGE_NOME');
    Open;
  end;
end;

procedure Tfrmcad_age.siEVEClick(Sender: TObject);
begin
  frmlog_eve := tfrmlog_eve.create(self);
  with frmlog_eve.cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT LOG_EVE.*,PAR_SIS.PAR_FANT,CAD_FUN.FUN_FOTO');
    SQL.Add('FROM   LOG_EVE,PAR_SIS');
    SQL.Add('LEFT   OUTER JOIN CAD_FUN ON LOG_EVE.EVE_CLOG = CAD_FUN.ID');
    SQL.Add('WHERE  LOG_EVE.EVE_CDEP = PAR_SIS.ID');
    SQL.Add('AND    LOG_EVE.EVE_FUNC = ''Agenda''');
    SQL.Add('ORDER BY ID DESC');
    Open;
  end;
  frmlog_eve.show;
end;

procedure Tfrmcad_age.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmcad_age <> nil then
  begin
    frmcad_age.Release;
    frmcad_age := nil;
  end;
end;

end.




