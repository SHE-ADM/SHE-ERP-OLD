unit pcad_for;

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
  Tfrmcad_for = class(Tfrmpadr2)
    Label8: TLabel;
    cadastroID: TIntegerField;
    cadastroFOR_FANT: TIBStringField;
    cadastroFOR_RAZA: TIBStringField;
    cadastroFOR_CNPJ: TIBStringField;
    cadastroFOR_CPF: TIBStringField;
    cadastroFOR_CRED: TIBBCDField;
    cadastroFOR_CID: TIBStringField;
    cadastroFOR_BAI: TIBStringField;
    cadastroFOR_LOGR: TIBStringField;
    cadastroFOR_ESTA: TIBStringField;
    cadastroFOR_STA: TIBStringField;
    cadastroFOR_STAV: TIBStringField;
    cadastroFOR_DPAG: TIBStringField;
    cadastroFOR_VDSC: TIBBCDField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaFOR_FANT: TdxDBGridMaskColumn;
    dbgConsultaFOR_RAZA: TdxDBGridMaskColumn;
    dbgConsultaFOR_CNPJ: TdxDBGridMaskColumn;
    dbgConsultaFOR_CPF: TdxDBGridMaskColumn;
    dbgConsultaFOR_CID: TdxDBGridMaskColumn;
    dbgConsultaFOR_BAI: TdxDBGridMaskColumn;
    dbgConsultaFOR_LOGR: TdxDBGridMaskColumn;
    dbgConsultaFOR_ESTA: TdxDBGridMaskColumn;
    dbgConsultaFOR_STAV: TdxDBGridMaskColumn;
    cadastroFOR_CDEP: TIntegerField;
    CadastroFOR_TLOG: TIBStringField;
    CadastroFOR_NUME: TIBStringField;
    CadastroFOR_CEP: TIBStringField;
    CadastroFOR_COMP: TIBStringField;
    CadastroFOR_DCAD: TDateField;
    CadastroFOR_DFUN: TDateField;
    CadastroFOR_DALT: TDateField;
    CadastroFOR_DULT: TDateField;
    CadastroFOR_VULT: TIBBCDField;
    CadastroFOR_DDD: TIBStringField;
    CadastroFOR_TEL1: TIBStringField;
    CadastroFOR_DTRA: TIBStringField;
    CadastroFOR_OBSO: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure siINCClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siDELClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure siPSQClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcad_for: Tfrmcad_for;

implementation

uses uPrincipal, pcad_for_edi,  pven_nfe, ppesquisa;

{$R *.dfm}

procedure Tfrmcad_for.FormCreate(Sender: TObject);
begin
  RECDefault.Event := 'CAD_FOR';
  inherited;

  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAD_FOR.ID,FOR_FANT,FOR_RAZA,FOR_CNPJ,FOR_CPF,FOR_CRED,FOR_CID,FOR_BAI,FOR_TLOG,FOR_LOGR,FOR_NUME,FOR_CEP,FOR_COMP,FOR_ESTA,FOR_STA,FOR_STAV,FOR_DPAG,');
    SQL.Add('       FOR_VDSC,FOR_DCAD,FOR_DFUN,FOR_DALT,FOR_DULT,FOR_VULT,FOR_DDD,FOR_TEL1,FOR_DTRA,FOR_CDEP,');
    SQL.Add('       TRIM(CAST(SUBSTRING(FOR_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) FOR_OBSO');
    SQL.Add('FROM   CAD_FOR');
    SQL.Add('ORDER BY FOR_FANT');
    Prepare;
  end;
end;

procedure Tfrmcad_for.FormDestroy(Sender: TObject);
begin
  inherited;
  frmcad_for := Nil;
end;

procedure Tfrmcad_for.siINCClick(Sender: TObject);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Fornecedores';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  frmcad_for_edi := Tfrmcad_for_edi.Create(self);
  try
    frmcad_for_edi.Tag := frmcad_for.Tag;
    frmcad_for_edi.ShowModal;
  finally
    ExecuteEvent;
    freeAndNil(frmcad_for_edi);
    frmcad_for_edi.Free;
  end;
end;

procedure Tfrmcad_for.siALTClick(Sender: TObject);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Fornecedores';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  Application.CreateForm (Tfrmcad_for_edi, frmcad_for_edi);
  try
    frmcad_for_edi.Tag := frmcad_for.Tag;
    frmcad_for_edi.ShowModal;
  finally
    if frmcad_for_edi.editado then
       ExecuteEvent;
    freeAndNil(frmcad_for_edi);
    frmcad_for_edi.Free;
  end;
end;

procedure Tfrmcad_for.dbgConsultaCustomDrawCell(Sender: TObject;
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

procedure Tfrmcad_for.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Fornecedores';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  if oYesNo(handle,'Excluir Fornecedor ?'+CadastroFOR_FANT.AsString+' ?') = mrNo then
     Abort;

  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_FOR');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecQuery;
    end;

    oCTransact(TEdicao);
    frmprincipal.Log_Eve('Fornecedores','Cadastro de Fornecedores','Exclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroFOR_FANT.AsString),'','');
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oErro(Application.Handle,'Falha ao tentar excluir fornecedor !'+#13+#13+
                               'Error Code: '+E.Message+'.'          +#13+
                                Caption+'.');
    end;
  end;

  ExecuteEvent;
end;

procedure Tfrmcad_for.dbgConsultaDblClick(Sender: TObject);
begin
  if Assigned(frmven_nfe) then
  begin
    frmven_nfe.cad_for.Close;
    frmven_nfe.cad_for.Params[0].Value := cadastroID.AsString;
    frmven_nfe.cad_for.Open;
    close;
  end else
  inherited;
end;

procedure Tfrmcad_for.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 4;
    frmpesquisa.cbCAMPO.Text := 'Fantasia';
    frmpesquisa.cbDATA.Text  := 'Última Compra';
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      if (edTXT.Text = '') and (dxdt1.Date < 0) then
         {nothing}
      else
      with cadastro do
      begin
        SQL.Clear;
        SQL.Add('SELECT CAD_FOR.ID,FOR_FANT,FOR_RAZA,FOR_CNPJ,FOR_CPF,FOR_CRED,FOR_CID,FOR_BAI,FOR_TLOG,FOR_LOGR,FOR_NUME,FOR_CEP,FOR_COMP,FOR_ESTA,FOR_STA,FOR_STAV,FOR_DPAG,');
        SQL.Add('       FOR_VDSC,FOR_DCAD,FOR_DFUN,FOR_DALT,FOR_DULT,FOR_VULT,FOR_DDD,FOR_TEL1,FOR_DTRA,FOR_CDEP,');
        SQL.Add('       TRIM(CAST(SUBSTRING(FOR_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) FOR_OBSO');
        SQL.Add('FROM   CAD_FOR');
        SQL.Add('WHERE  FOR_STA  = ''0''');
        SQL.Add('AND    FOR_CDEP = ''0''');
        SQL.Add('OR     FOR_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

        if edtxt.Text <> '' then
        begin
           if cField = 'ID' then
           SQL.Add('AND CAD_FOR.ID = '''+edtxt.Text+'''')
           else
           SQL.Add('AND '+cField+' LIKE ''%'+edtxt.Text+'%''');
        end;

        if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
           SQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

        Open;
      end;
      dbgconsulta.SetFocus;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

end.

