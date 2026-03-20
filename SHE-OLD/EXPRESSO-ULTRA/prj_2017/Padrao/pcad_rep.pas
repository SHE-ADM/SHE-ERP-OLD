unit pcad_rep;

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
  Tfrmcad_rep = class(Tfrmpadr2)
    Label8: TLabel;
    cadastroID: TIntegerField;
    cadastroREP_FANT: TIBStringField;
    cadastroREP_RAZA: TIBStringField;
    cadastroREP_CNPJ: TIBStringField;
    cadastroREP_CPF: TIBStringField;
    cadastroREP_CRED: TIBBCDField;
    cadastroREP_CID: TIBStringField;
    cadastroREP_BAI: TIBStringField;
    cadastroREP_LOGR: TIBStringField;
    cadastroREP_ESTA: TIBStringField;
    cadastroREP_STA: TIBStringField;
    cadastroREP_STAV: TIBStringField;
    cadastroREP_DPAG: TIBStringField;
    cadastroREP_OBSO: TMemoField;
    cadastroREP_VDSC: TIBBCDField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaREP_FANT: TdxDBGridMaskColumn;
    dbgConsultaREP_RAZA: TdxDBGridMaskColumn;
    dbgConsultaREP_CNPJ: TdxDBGridMaskColumn;
    dbgConsultaREP_CPF: TdxDBGridMaskColumn;
    dbgConsultaREP_CID: TdxDBGridMaskColumn;
    dbgConsultaREP_BAI: TdxDBGridMaskColumn;
    dbgConsultaREP_LOGR: TdxDBGridMaskColumn;
    dbgConsultaREP_ESTA: TdxDBGridMaskColumn;
    dbgConsultaREP_STAV: TdxDBGridMaskColumn;
    cadastroREP_COMI: TIBBCDField;
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
  frmcad_rep: Tfrmcad_rep;

implementation

uses uPrincipal, pcad_rep_edi;

{$R *.dfm}

procedure Tfrmcad_rep.FormCreate(Sender: TObject);
begin
  RECDefault.Event := 'CAD_REP';
  inherited;
  
  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ID,REP_FANT,REP_RAZA,REP_CNPJ,REP_CPF,REP_CRED,REP_CID,REP_BAI,REP_LOGR,REP_ESTA,REP_STA,REP_STAV,REP_DPAG,REP_OBSO,REP_VDSC,REP_COMI');
    SQL.Add('FROM     CAD_REP');
    SQL.Add('ORDER BY REP_FANT');
    Prepare;
  end;
end;

procedure Tfrmcad_rep.FormDestroy(Sender: TObject);
begin
  inherited;
  frmcad_rep := Nil;
end;

procedure Tfrmcad_rep.siINCClick(Sender: TObject);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Representantes';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  frmcad_REP_edi := Tfrmcad_REP_edi.Create(self);
  try
    frmcad_rep_edi.Tag := frmcad_rep.Tag;
    frmcad_rep_edi.ShowModal;
  finally
    ExecuteEvent;
    freeAndNil(frmcad_rep_edi);
    frmcad_rep_edi.Free;
  end;
end;

procedure Tfrmcad_rep.siALTClick(Sender: TObject);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Representantes';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  Application.CreateForm (Tfrmcad_rep_edi, frmcad_rep_edi);
  try
    frmcad_rep_edi.Tag := frmcad_rep.Tag;
    frmcad_rep_edi.ShowModal;
  finally
    if frmcad_rep_edi.editado then
       ExecuteEvent;
    freeAndNil(frmcad_rep_edi);
    frmcad_rep_edi.Free;
  end;
end;

procedure Tfrmcad_rep.dbgConsultaCustomDrawCell(Sender: TObject;
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

procedure Tfrmcad_rep.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Representantes';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  if oYesNo(handle,'Excluir Representante ?'+CadastroREP_FANT.AsString+' ?') = mrNo then
     Abort;

  with Consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT FIRST 1 ID FROM PED_VEN_CAB');
    SQL.Add('WHERE  ROM_CREP = '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
       oException(DBGConsulta,'Falha ao tentar excluir !'+#13+
                              'Representante possui venda efetuada !');
  end;

  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_REP');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecQuery;
    end;

    oCTransact(TEdicao);
    frmprincipal.Log_Eve('Representantes','Cadastro de Representantes','Exclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroREP_FANT.AsString),'','');
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oErro(Application.Handle,'Falha ao tentar excluir representante !'+#13+#13+
                               'Error Code: '+E.Message+'.'             +#13+
                                Caption+'.');
    end;
  end;

  ExecuteEvent;
end;

end.


