unit ptab_cat_edi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxCntner,
  dxEditor, dxEdLib, StdCtrls, dxExEdtr, Buttons, rxSpeedbar;

type
  Tfrmtab_cat_edi = class(Tfrmpadr3)
    Label11: TLabel;
    edfcom: TdxMaskEdit;
    Label1: TLabel;
    edfprc: TdxMaskEdit;
    Label2: TLabel;
    ednrep: TdxMaskEdit;
    linha1: TShape;
    Shape4: TShape;
    Label4: TLabel;
    PaintBox1: TPaintBox;
    Shape1: TShape;
    Shape2: TShape;
    Label7: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    edprec: TdxMaskEdit;
    Label5: TLabel;
    edcomi: TdxMaskEdit;
    eddcat: TdxMaskEdit;
    Label8: TLabel;
    edcoms: TdxMaskEdit;
    procedure siSAVClick(Sender: TObject);
    procedure edfcomValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edfprcValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure ednrepValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edprecValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcomiValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcomsValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmtab_cat_edi: Tfrmtab_cat_edi;

implementation

uses p_funcoes, pcad_pro_con, uPrincipal;

{$R *.dfm}

procedure Tfrmtab_cat_edi.siSAVClick(Sender: TObject);
begin
  inherited;

  if edfcom.Text = '0' then
     raise exception.Create('Flutuação do percentual da comissão não infomado !');
     
  if edfcom.Text = '0' then
     raise exception.Create('Flutuação do percentual do preço não infomado !');

  if ednrep.Text = '0' then
     raise exception.Create('Número de repetições não informado !');

  if eddcat.Text = '0' then
     raise exception.Create('Categoria do produto não informado !');

  if RETORNA_REAL(edprec.Text) = 0 then
     raise exception.Create('Preço net não informado !');

  if RETORNA_REAL(edcomi.Text) = 0 then
     raise exception.Create('Comissão net não informado !');

  if yesno(handle,'Deseja alterar a tabela de preços conforme preço NET ?') = mryes then
  begin
    with frmprincipal.sp_sql do
    begin
      ibSP.StoredProcName := 'SP_SQL';

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_PREC = '''+strtran(edprec.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+inttostr(frmtab_cat_edi.Tag)+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_PREC = '''+strtran(edprec.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+inttostr(frmtab_cat_edi.Tag)+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      IBTra.CommitRetaining;
    end;
  end;

  editado := true;
  close;
end;

procedure Tfrmtab_cat_edi.edfcomValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edfcom.Text = '' then
     edfcom.Text := '0';

  edfcom.Text := formatfloat('#,0.00########',RETORNA_REAL(edfcom.Text));   
end;

procedure Tfrmtab_cat_edi.edfprcValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edfprc.Text = '' then
     edfprc.Text := '0';

  edfprc.Text := formatfloat('#,0.00########',RETORNA_REAL(edfprc.Text));
end;

procedure Tfrmtab_cat_edi.ednrepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if ednrep.Text = '' then
     ednrep.Text := '0';

  ednrep.Text := formatfloat('0',RETORNA_REAL(ednrep.Text));
end;

procedure Tfrmtab_cat_edi.edprecValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edprec.Text = '' then
     edprec.Text := '0';

  edprec.Text := formatfloat('#,0.00########',RETORNA_REAL(edprec.Text));
end;

procedure Tfrmtab_cat_edi.edcomiValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcomi.Text = '' then
     edcomi.Text := '0';

  edcomi.Text := formatfloat('#,0.00########',RETORNA_REAL(edcomi.Text));
end;

procedure Tfrmtab_cat_edi.edcomsValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcoms.Text = '' then
     edcoms.Text := '0';

  edcoms.Text := formatfloat('#,0.00########',RETORNA_REAL(edcoms.Text));
end;

end.
