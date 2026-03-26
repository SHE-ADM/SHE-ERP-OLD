unit pcad_com;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, DB,
  IBCustomDataSet, IBQuery, ImgList, dxCntner,  ComCtrls, ExtCtrls,
  dxExEdtr, dxEdLib, dxEditor, StdCtrls, DateUtils, DBCtrls, dxPageControl,
  dxDBELib, Menus, IBStoredProc, IBDatabase, IBEvents, Shellapi,
  jpeg, math, rxSpeedbar;

type
  Tfrmcad_com = class(Tfrmpadr2)
    Label8: TLabel;
    cadastroID: TIntegerField;
    cadastroCOM_FANT: TIBStringField;
    cadastroCOM_RAZA: TIBStringField;
    cadastroCOM_CNPJ: TIBStringField;
    cadastroCOM_CPF: TIBStringField;
    cadastroCOM_CRED: TIBBCDField;
    cadastroCOM_CID: TIBStringField;
    cadastroCOM_BAI: TIBStringField;
    cadastroCOM_LOGR: TIBStringField;
    cadastroCOM_ESTA: TIBStringField;
    cadastroCOM_STA: TIBStringField;
    cadastroCOM_STAV: TIBStringField;
    cadastroCOM_DPAG: TIBStringField;
    cadastroCOM_OBSO: TMemoField;
    cadastroCOM_VDSC: TIBBCDField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaCOM_FANT: TdxDBGridMaskColumn;
    dbgConsultaCOM_RAZA: TdxDBGridMaskColumn;
    dbgConsultaCOM_CNPJ: TdxDBGridMaskColumn;
    dbgConsultaCOM_CPF: TdxDBGridMaskColumn;
    dbgConsultaCOM_CID: TdxDBGridMaskColumn;
    dbgConsultaCOM_BAI: TdxDBGridMaskColumn;
    dbgConsultaCOM_LOGR: TdxDBGridMaskColumn;
    dbgConsultaCOM_ESTA: TdxDBGridMaskColumn;
    dbgConsultaCOM_STAV: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure siINCClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siDELClick(Sender: TObject);
    procedure siLIXOClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure siPRNClick(Sender: TObject);
  private
    { Private declarations }
    procedure AjustaForm;
  public
    { Public declarations }
  end;

var
  frmcad_com: Tfrmcad_com;

implementation

uses p_funcoes, uPrincipal, pcad_com_edi, prelatorio_geral;

{$R *.dfm}

procedure Tfrmcad_com.AjustaForm;
begin
  screen.Cursor:=crHourGlass;
  screen.Cursor:=crDefault;

  Self.top    := 0;
  Self.left   := 0;
  Self.Height := frmprincipal.pnCustomize.Height-4;

  if (Screen.Width > 1024) and (Screen.Width <= 1280) then
  dbgConsultaCOM_RAZA.Width := 300
  else if (Screen.Width > 1280) and (Screen.Width <= 1360) then
  dbgConsultaCOM_RAZA.Width := 396
  else if Screen.Width = 1366 then
  dbgConsultaCOM_RAZA.Width := 400;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
    Left    := 7;
    Top     := 50;
    Width   := Screen.Width-15;
    dbgConsultaCOM_RAZA.Width := 300;

    if frmprincipal.pnbot.Visible then
       Top := frmprincipal.ToolBar1.Height+53;

    if Top <= 50 then
       Height := frmprincipal.pnCustomize.Height+3
    else
       Height := frmprincipal.pnCustomize.Height+4;
  end;
end;

procedure Tfrmcad_com.FormCreate(Sender: TObject);
begin
  cEvent         := 'CAD_COM';
  siLIXO.Enabled := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_NOVO','Compradores','Cadastro','Permissões Gerais',false);
  siPRN.Enabled  := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_PRIN','Compradores','Cadastro','Permissões Gerais',false);

  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ID,COM_FANT,COM_RAZA,COM_CNPJ,COM_CPF,COM_CRED,COM_CID,COM_BAI,COM_LOGR,COM_ESTA,COM_STA,COM_STAV,COM_DPAG,COM_OBSO,COM_VDSC');
    SQL.Add('FROM     CAD_COM');
    SQL.Add('WHERE    COM_STA = ''0''');
    SQL.Add('ORDER BY COM_FANT');
  end;

  inherited;
  Ajustaform;
end;

procedure Tfrmcad_com.siINCClick(Sender: TObject);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Compradores';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  frmcad_com_edi := Tfrmcad_com_edi.Create(self);
  try
    frmcad_com_edi.Tag := frmcad_com.Tag;
    frmcad_com_edi.ShowModal;
  finally
    ExecuteEvent;
    freeAndNil(frmcad_com_edi);
    frmcad_com_edi.Free;
  end;
end;

procedure Tfrmcad_com.siALTClick(Sender: TObject);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Compradores';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  Application.CreateForm (Tfrmcad_com_edi, frmcad_com_edi);
  try
    frmcad_com_edi.Tag := frmcad_com.Tag;
    frmcad_com_edi.ShowModal;
  finally
    if frmcad_com_edi.editado then
       ExecuteEvent;
    freeAndNil(frmcad_com_edi);
    frmcad_com_edi.Free;
  end;
end;

procedure Tfrmcad_com.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
  var Value: Variant;
begin
  if not ASelected then
  begin
    Value := ANode.Values[9];

    AFont.Color := clBlack;
    if dbgconsulta.Tag = 0 then
       AColor := clWhite
    else
       AColor := clBtnface;

    if not VarIsNull(Value) then
    begin
      if Value = 'I' then
      begin
         AFont.Color := clwhite;
         AColor      := clRed;
      end;
    end;

    Value := ANode.Values[4];
    if (Value = '') or (VarIsNull(Value)) then
    begin
      AColor      := clWhite;
      AFont.Color := clBlack;
    end
    else
    begin
      AColor      := $00BEEFF8;
      AFont.Color := clBlack;
    end;
  end;
end;

procedure Tfrmcad_com.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Compradores';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  with consulta do
  begin
    if cadastroCOM_STA.Value = '1' then
    begin
      if yesno(handle,'Confirma a exclusão do comprador '+cadastroCOM_FANT.AsString+' ?') = mrno then
         abort;

      SQL.Clear;
      SQL.Add('DELETE FROM CAD_COM');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecSQL;
      frmprincipal.Log_Eve('Compradores','Cadastro de Compradores','Exclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroCOM_FANT.AsString),'','');
    end
    else
    begin
      if yesno(handle,'Enviar para a lixeira o comprador '+cadastroCOM_FANT.AsString+' ?') = mrno then
         abort;

      SQL.Clear;
      SQL.Add('UPDATE CAD_COM');
      SQL.Add('SET    COM_STA = ''1''');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecSQL;
      frmprincipal.Log_Eve('Compradores','Cadastro de Compradores','Lixeira' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroCOM_FANT.AsString),'','');      
    end;
  end;
  ExecuteEvent;
  if dbgconsulta.Tag = 1 then
     siLIXO.Click;
end;

procedure Tfrmcad_com.siLIXOClick(Sender: TObject);
begin
  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,COM_FANT,COM_RAZA,COM_CNPJ,COM_CPF,COM_CRED,COM_CID,COM_BAI,COM_LOGR,COM_ESTA,COM_STA,COM_STAV,COM_DPAG,COM_OBSO,COM_VDSC');
    SQL.Add('FROM CAD_COM');
    if dbgconsulta.Tag = 0 then
    begin
      dbgconsulta.Tag   := 1;
      dbgconsulta.Color := clBtnface;
      SQL.Add('WHERE COM_STA = ''1''');
    end
    else
    begin
      dbgconsulta.Tag   := 0;
      dbgconsulta.Color := clWhite;
      SQL.Add('WHERE COM_STA = ''0''');
    end;

    SQL.Add('ORDER BY COM_FANT');
    Open;
  end;
end;

procedure Tfrmcad_com.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmcad_com <> nil then
  begin
    frmcad_com.Release;
    frmcad_com := nil;
  end;  
end;

procedure Tfrmcad_com.dbgConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_return   : dbgConsultaDblClick(self);
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

procedure Tfrmcad_com.FormShow(Sender: TObject);
begin
  inherited;
  dbgconsulta.SetFocus;
end;

procedure Tfrmcad_com.siPRNClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
//    frmrelatorio_geral.tsCAD_COM.TabVisible := true;
//    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsCAD_COM;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

end.

