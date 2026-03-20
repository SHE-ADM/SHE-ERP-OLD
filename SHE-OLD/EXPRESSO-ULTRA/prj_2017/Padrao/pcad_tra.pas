unit pcad_tra;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, DB,
  IBCustomDataSet, IBQuery, ImgList, dxCntner,  ComCtrls, ExtCtrls,
  dxExEdtr, dxEdLib, dxEditor, StdCtrls, DateUtils, DBCtrls, dxPageControl,
  dxDBELib, Menus, IBStoredProc, IBDatabase, IBEvents, Shellapi,
  jpeg, math, rxSpeedbar, IBSQL;

type
  Tfrmcad_tra = class(Tfrmpadr2)
    Label8: TLabel;
    cadastroID: TIntegerField;
    cadastroTRA_FANT: TIBStringField;
    cadastroTRA_RAZA: TIBStringField;
    cadastroTRA_CNPJ: TIBStringField;
    cadastroTRA_CPF: TIBStringField;
    cadastroTRA_CRED: TIBBCDField;
    cadastroTRA_CID: TIBStringField;
    cadastroTRA_BAI: TIBStringField;
    cadastroTRA_LOGR: TIBStringField;
    cadastroTRA_ESTA: TIBStringField;
    cadastroTRA_STA: TIBStringField;
    cadastroTRA_STAV: TIBStringField;
    cadastroTRA_DPAG: TIBStringField;
    cadastroTRA_OBSO: TMemoField;
    cadastroTRA_VDSC: TIBBCDField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaTRA_FANT: TdxDBGridMaskColumn;
    dbgConsultaTRA_RAZA: TdxDBGridMaskColumn;
    dbgConsultaTRA_CNPJ: TdxDBGridMaskColumn;
    dbgConsultaTRA_CPF: TdxDBGridMaskColumn;
    dbgConsultaTRA_CID: TdxDBGridMaskColumn;
    dbgConsultaTRA_BAI: TdxDBGridMaskColumn;
    dbgConsultaTRA_LOGR: TdxDBGridMaskColumn;
    dbgConsultaTRA_ESTA: TdxDBGridMaskColumn;
    dbgConsultaTRA_STAV: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure siINCClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siDELClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcad_tra: Tfrmcad_tra;

implementation

uses uPrincipal, pcad_tra_edi;

{$R *.dfm}

procedure Tfrmcad_tra.FormCreate(Sender: TObject);
begin
  RECDefault.Event := 'CAD_TRA';
  inherited;

  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ID,TRA_FANT,TRA_RAZA,TRA_CNPJ,TRA_CPF,TRA_CRED,TRA_CID,TRA_BAI,TRA_LOGR,TRA_ESTA,TRA_STA,TRA_STAV,TRA_DPAG,TRA_OBSO,TRA_VDSC');
    SQL.Add('FROM     CAD_TRA');
    SQL.Add('ORDER BY TRA_FANT');
    Prepare;
  end;
end;

procedure Tfrmcad_tra.FormDestroy(Sender: TObject);
begin
  inherited;
  frmcad_tra := Nil;
end;

procedure Tfrmcad_tra.siINCClick(Sender: TObject);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Transportadoras';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  frmcad_TRA_edi := Tfrmcad_TRA_edi.Create(self);
  try
    frmcad_TRA_edi.Tag := frmcad_tra.Tag;
    frmcad_TRA_edi.ShowModal;
  finally
    ExecuteEvent;
    freeAndNil(frmcad_TRA_edi);
    frmcad_TRA_edi.Free;
  end;
end;

procedure Tfrmcad_tra.siALTClick(Sender: TObject);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Transportadoras';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  Application.CreateForm (Tfrmcad_TRA_edi, frmcad_TRA_edi);
  try
    frmcad_TRA_edi.Tag := frmcad_tra.Tag;
    frmcad_TRA_edi.ShowModal;
  finally
    if frmcad_TRA_edi.editado then
       ExecuteEvent;
    freeAndNil(frmcad_TRA_edi);
    frmcad_TRA_edi.Free;
  end;
end;

procedure Tfrmcad_tra.dbgConsultaCustomDrawCell(Sender: TObject;
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

procedure Tfrmcad_tra.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Transportadoras';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';                          
  inherited;

  if oYesNo(handle,'Excluir Transportadora ?'+CadastroTRA_FANT.AsString+' ?') = mrNo then
     Abort;

  with Consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT FIRST 1 ID FROM PED_VEN_CAB');
    SQL.Add('WHERE  ROM_CTRA = '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
       oException(DBGConsulta,'Falha ao tentar excluir !'+#13+
                              'Transportadora possui venda efetuada !');
  end;

  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_TRA');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecQuery;
    end;

    oCTransact(TEdicao);
    frmprincipal.Log_Eve('Transportadoras','Cadastro de Transportadoras','Exclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroTRA_FANT.AsString),'','');
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oErro(Application.Handle,'Falha ao tentar excluir Transportadora !'+#13+#13+
                               'Error Code: '+E.Message+'.'             +#13+
                                Caption+'.');
    end;
  end;

  ExecuteEvent;
end;

end.

