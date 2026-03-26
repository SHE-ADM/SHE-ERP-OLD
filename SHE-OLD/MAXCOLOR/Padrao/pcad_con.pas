unit pcad_con;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, IBEvents, ImgList, IBStoredProc,
  IBDatabase, DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, ExtCtrls,  ComCtrls, dxDBTLCl, dxGrClms, dxPageControl,
  StdCtrls, DBCtrls, dxEditor, dxExEdtr, dxEdLib, dxDBELib, rxSpeedbar;

type
  Tfrmcad_con = class(Tfrmpadr2)
    cadastroID: TIntegerField;
    cadastroCON_CTNR: TIBStringField;
    cadastroCON_DTNR: TIBStringField;
    cadastroCON_DCAD: TDateField;
    cadastroCON_DCOL: TDateField;
    cadastroCON_DCOP: TDateField;
    cadastroCON_PSBR: TIBBCDField;
    cadastroCON_PSLQ: TIBBCDField;
    cadastroCON_VICMS: TIBBCDField;
    cadastroCON_VIPI: TIBBCDField;
    cadastroCON_VPIS: TIBBCDField;
    cadastroCON_VCOFINS: TIBBCDField;
    cadastroCON_VFRETE: TIBBCDField;
    cadastroCON_VDESP: TIBBCDField;
    cadastroCON_VII: TIBBCDField;
    cadastroCON_VEXTRA: TIBBCDField;
    cadastroCON_VLI: TIBBCDField;
    cadastroCON_VMULTALI: TIBBCDField;
    cadastroCON_VTRANSP: TIBBCDField;
    cadastroCON_VARMAZEN: TIBBCDField;
    cadastroCON_VHONO: TIBBCDField;
    cadastroCON_VOUTRO: TIBBCDField;
    cadastroCON_VCOL: TIBBCDField;
    cadastroCON_VCOP: TIBBCDField;
    cadastroCON_OBSE: TMemoField;
    cadastroCON_STA: TIBStringField;
    dbgConsultaCON_CTNR: TdxDBGridMaskColumn;
    dbgConsultaCON_DCAD: TdxDBGridDateColumn;
    dbgConsultaCON_PSBR: TdxDBGridMaskColumn;
    dbgConsultaCON_PSLQ: TdxDBGridMaskColumn;
    dbgConsultaCON_STA: TdxDBGridMaskColumn;
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText2: TDBText;
    DBText1: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBText11: TDBText;
    DBText12: TDBText;
    Label13: TLabel;
    DBText13: TDBText;
    Label19: TLabel;
    DBText14: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    Label9: TLabel;
    DBText15: TDBText;
    Label20: TLabel;
    DBText16: TDBText;
    Label23: TLabel;
    DBText19: TDBText;
    Label24: TLabel;
    DBText20: TDBText;
    Label25: TLabel;
    DBText21: TDBText;
    Label26: TLabel;
    DBText22: TDBText;
    Label27: TLabel;
    DBText23: TDBText;
    Label28: TLabel;
    DBText24: TDBText;
    dxDBMemo1: TdxDBMemo;
    cadastroCON_CEMP: TIntegerField;
    cadastroPAR_FANT: TIBStringField;
    dbgConsultaPAR_FANT: TdxDBGridMaskColumn;
    GroupBox5: TGroupBox;
    Label12: TLabel;
    DBText8: TDBText;
    cadastroCON_VDUMP: TIBBCDField;
    Label10: TLabel;
    DBText7: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure siINCClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure dbgConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure siPRNClick(Sender: TObject);
  private
    { Private declarations }
    procedure AjustaForm;
  public
    { Public declarations }
  end;

var
  frmcad_con: Tfrmcad_con;

implementation

uses uPrincipal, pcad_con_edi, p_funcoes, prelatorio_geral;

{$R *.dfm}

procedure Tfrmcad_con.AjustaForm;
begin
  screen.Cursor:=crHourGlass;
  screen.Cursor:=crDefault;

  Self.Height := frmprincipal.pnCustomize.Height-4;
  Self.top    := 0;
  Self.left   := 0;
  Self.Width  := TELA_WIDTH;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
   self.Height := screen.Height;
   self.Width  :=  screen.Width;

   if frmprincipal.pnbot.Visible then
      self.Height := self.Height - frmprincipal.pnbot.Height;
  end;
end;

procedure Tfrmcad_con.FormCreate(Sender: TObject);
begin
  cEvent := 'CAD_CONTAINER';

  inherited;
  Ajustaform;
end;

procedure Tfrmcad_con.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmcad_con <> nil then
  begin
    frmcad_con.Release;
    frmcad_con := nil;
  end;
end;

procedure Tfrmcad_con.siINCClick(Sender: TObject);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Container';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  frmcad_con_edi := Tfrmcad_con_edi.Create(self);
  try
    frmcad_con_edi.Tag := frmcad_con.Tag;
    frmcad_con_edi.ShowModal;
  finally
    ExecuteEvent;
    freeAndNil(frmcad_con_edi);
    frmcad_con_edi.Free;
  end;
end;

procedure Tfrmcad_con.siALTClick(Sender: TObject);
begin
  sbMSG.Panels[0].Text := 'Alteração';
  sbMSG.Update;

  wRecord := cadastro.GetBookmark;

  if cadastro.Fields[0].IsNull then abort;

  if not SpeedBar1.Visible then exit;

  Application.CreateForm (Tfrmcad_con_edi, frmcad_con_edi);
  try
    frmcad_con_edi.Tag := 1;
    frmcad_con_edi.ShowModal;
  finally
    if frmcad_con_edi.editado then
       ExecuteEvent;

    freeAndNil(frmcad_con_edi);
    frmcad_con_edi.Free;
  end;
end;

procedure Tfrmcad_con.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Clientes';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  with consulta do
  begin
    if yesno(handle,'Confirma a exclusão do cliente '+cadastroCON_CTNR.AsString+' ?') = mrno then
       abort;

    SQL.Clear;
    SQL.Add('DELETE FROM CAD_CON');
    SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
    ExecSQL;
    frmprincipal.Log_Eve('Container','Cadastro de Container','Exclusão' ,cadastroCON_CTNR.AsString,cadastroCON_CTNR.AsString,LOWERCASE(cadastroCON_CTNR.AsString),'','');
  end;
  ExecuteEvent;
end;

procedure Tfrmcad_con.dbgConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_return   : dbgConsultaDblClick(self);
       VK_escape   : begin
                       if siSAV.Enabled then
                          siCAN.Click;
                     end;     
       VK_delete   : if not siSAV.Enabled then siDEL.Click;
       VK_insert   : if not siSAV.Enabled then siINC.Click;
  end;
end;

procedure Tfrmcad_con.siPRNClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.tsCAD_CON.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsCAD_CON;
    frmrelatorio_geral.cbCAD_CON_TREL.Text  := 'LISTAGEM GERAL DE CONTAINERS';

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   ID,PAR_FANT FROM PAR_SIS');
      SQL.Add('ORDER BY PAR_FANT');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_CON_CDEP.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbCAD_CON_CDEP.Descriptions.Add(fields[1].AsString);
        next;
      end;
    end;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

end.
