unit ptab_epo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, dxExEdtr, IBEvents, ImgList, IBStoredProc, IBDatabase,
  DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid, jpeg,
  ExtCtrls,  ComCtrls, dxEditor, dxEdLib, dxDBELib, StdCtrls, rxSpeedbar;

type
  Tfrmtab_epo = class(Tfrmpadr2)
    cadastroID: TIntegerField;
    cadastroEPO_DESC: TIBStringField;
    cadastroEPO_ANDA: TIBStringField;
    cadastroEPO_SETO: TIBStringField;
    cadastroEPO_SALA: TIBStringField;
    cadastroEPO_BOX: TIBStringField;
    cadastroEPO_DPRI: TIBStringField;
    cadastroEPO_OBSE: TMemoField;
    cadastroEPO_FOTO: TBlobField;
    dbgConsultaEPO_DESC: TdxDBGridMaskColumn;
    dbgConsultaEPO_ANDA: TdxDBGridMaskColumn;
    dbgConsultaEPO_SETO: TdxDBGridMaskColumn;
    dbgConsultaEPO_SALA: TdxDBGridMaskColumn;
    dbgConsultaEPO_BOX: TdxDBGridMaskColumn;
    dbgConsultaEPO_DPRI: TdxDBGridMaskColumn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    dxDBMemo1: TdxDBMemo;
    imag: TImage;
    cadastroEPO_DUSU: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure siINCClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure dtscadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure AjustaForm;
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
  public
    { Public declarations }
  end;

var
  frmtab_epo: Tfrmtab_epo;

implementation

uses p_funcoes, uPrincipal, ptab_epo_edi;

{$R *.dfm}

procedure Tfrmtab_epo.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
     BlobStream := tab.CreateBlobStream(valor,bmRead);

  JPEGImage  := TJPEGImage.Create;
  try
    try
      JPEGImage.LoadFromStream(BlobStream);
    except
      ;
    end;
    imag.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmtab_epo.AjustaForm;
begin
  screen.Cursor:=crHourGlass;
  screen.Cursor:=crDefault;

  Self.top    := 0;
  Self.left   := 0;
  Self.Height := frmprincipal.pnCustomize.Height-4;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
    Left    := 0;
    Top     := 0;
    Width   := Screen.Width;

    if frmprincipal.pnbot.Visible then
    Top := frmprincipal.ToolBar1.Height+53;

    if Top <= 50 then
    Height := frmprincipal.pnCustomize.Height+3
    else
    Height := frmprincipal.pnCustomize.Height+4;
  end;
end;

procedure Tfrmtab_epo.FormCreate(Sender: TObject);
begin
  cEvent := 'TAB_EPO';

  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM TAB_EPO');
    SQL.Add('ORDER BY ID');
  end;

  inherited;
  Ajustaform;
end;

procedure Tfrmtab_epo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmtab_epo <> nil then
  begin
    frmtab_epo.Release;
    frmtab_epo := nil;
  end;
end;

procedure Tfrmtab_epo.siINCClick(Sender: TObject);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Local de Estoque';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  frmtab_epo_edi := Tfrmtab_epo_edi.Create(self);
  try
    frmtab_epo_edi.Tag := frmtab_epo.Tag;
    frmtab_epo_edi.ShowModal;
  finally
    ExecuteEvent;
    freeAndNil(frmtab_epo_edi);
    frmtab_epo_edi.Free;
  end;
end;

procedure Tfrmtab_epo.siALTClick(Sender: TObject);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Local de Estoque';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  Application.CreateForm (Tfrmtab_epo_edi, frmtab_epo_edi);
  try
    frmtab_epo_edi.Tag := frmtab_epo.Tag;
    frmtab_epo_edi.ShowModal;
  finally
    if frmtab_epo_edi.editado then
       ExecuteEvent;
    freeAndNil(frmtab_epo_edi);
    frmtab_epo_edi.Free;
  end;
end;

procedure Tfrmtab_epo.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Fornecedores';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  with frmprincipal.sp_sql do
  begin
    ibSP.StoredProcName := 'SP_SQL';

    if yesno(handle,'Confirma a exclusão do cliente '+cadastroEPO_DESC.AsString+' ?') = mrno then
    abort;

    SQL.Clear;
    SQL.Add('DELETE FROM TAB_EPO');
    SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');

    ibSP.Prepare;
    ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
    ibSP.ExecProc;

    frmprincipal.Log_Eve('Local de Estoque','Cadastro','Exclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroEPO_DESC.AsString),'','');
  end;
  IBTra.CommitRetaining;
  wRecord := nil;
  ExecuteEvent;
end;

procedure Tfrmtab_epo.dtscadastroDataChange(Sender: TObject;
  Field: TField);
begin
  carregaFoto(cadastroEPO_FOTO.BlobSize,cadastroEPO_FOTO,cadastro,frmprincipal.parametros);
  sbMSG.Panels[0].Text := 'Usuário: '+cadastroEPO_DUSU.AsString;
end;

end.
