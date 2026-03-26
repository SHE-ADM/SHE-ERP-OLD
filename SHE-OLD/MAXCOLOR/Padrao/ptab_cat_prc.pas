unit ptab_cat_prc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxCntner,
  dxEditor, dxEdLib, StdCtrls, dxPageControl, rxSpeedbar;

type
  Tfrmtab_cat_prc = class(Tfrmpadr3)
    pcprc: TdxPageControl;
    tsata: TdxTabSheet;
    Bevel11: TBevel;
    Label17: TLabel;
    Label19: TLabel;
    Label16: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    edprec: TdxMaskEdit;
    edppro: TdxMaskEdit;
    edpdsc: TdxMaskEdit;
    edpper: TdxMaskEdit;
    edpprz: TdxMaskEdit;
    tsvar: TdxTabSheet;
    Bevel12: TBevel;
    Label22: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    Label49: TLabel;
    Label52: TLabel;
    edvprc: TdxMaskEdit;
    edvpro: TdxMaskEdit;
    edvdsc: TdxMaskEdit;
    edvper: TdxMaskEdit;
    edvprz: TdxMaskEdit;
    tsrep: TdxTabSheet;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Bevel15: TBevel;
    Label53: TLabel;
    Label54: TLabel;
    edrprc: TdxMaskEdit;
    edrpro: TdxMaskEdit;
    edrdsc: TdxMaskEdit;
    edrper: TdxMaskEdit;
    edrprz: TdxMaskEdit;
    tssite: TdxTabSheet;
    Label34: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Bevel17: TBevel;
    edsprc: TdxMaskEdit;
    edspro: TdxMaskEdit;
    edsdsc: TdxMaskEdit;
    edsper: TdxMaskEdit;
    edsprz: TdxMaskEdit;
    tsout: TdxTabSheet;
    Label2: TLabel;
    Label13: TLabel;
    Bevel13: TBevel;
    edcust: TdxMaskEdit;
    edpcom: TdxMaskEdit;
    cad_pro_cac: TIBQuery;
    cad_pro_cacID: TIntegerField;
    cad_pro_cacCAT_CCAT: TIBStringField;
    cad_pro_cacCAT_DCAT: TIBStringField;
    cad_pro_cacCAT_PESO: TIBBCDField;
    cad_pro_cacCAT_METR: TIBBCDField;
    cad_pro_cacCAT_REND: TIBBCDField;
    cad_pro_cacCAT_STA: TIBStringField;
    cad_pro_cacCAT_CCLF: TIBStringField;
    cad_pro_cacCAT_PIPI: TSmallintField;
    cad_pro_cacCAT_LARG: TIBBCDField;
    cad_pro_cacCAT_PCOM: TFloatField;
    cad_pro_cacCAT_CUST: TFloatField;
    cad_pro_cacCAT_PREC: TFloatField;
    cad_pro_cacCAT_PPRO: TFloatField;
    cad_pro_cacCAT_PDSC: TIBBCDField;
    cad_pro_cacCAT_PPER: TIBBCDField;
    cad_pro_cacCAT_PPRZ: TFloatField;
    cad_pro_cacCAT_VPRC: TFloatField;
    cad_pro_cacCAT_VPRO: TFloatField;
    cad_pro_cacCAT_VDSC: TIBBCDField;
    cad_pro_cacCAT_VPER: TIBBCDField;
    cad_pro_cacCAT_VPRZ: TFloatField;
    cad_pro_cacCAT_RPRC: TFloatField;
    cad_pro_cacCAT_RPRO: TFloatField;
    cad_pro_cacCAT_RDSC: TIBBCDField;
    cad_pro_cacCAT_RPER: TIBBCDField;
    cad_pro_cacCAT_RPRZ: TFloatField;
    cad_pro_cacCAT_SPRC: TFloatField;
    cad_pro_cacCAT_SPRO: TFloatField;
    cad_pro_cacCAT_SDSC: TIBBCDField;
    cad_pro_cacCAT_SPER: TIBBCDField;
    cad_pro_cacCAT_SPRZ: TFloatField;
    cad_pro_cacCAT_DCAD: TDateField;
    cad_pro_cacCAT_CDEP: TIntegerField;
    procedure siSAVClick(Sender: TObject);
    procedure edprecValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpproValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpdscValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpperValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpprzValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvprcValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvproValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvdscValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvperValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvprzValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edrprcValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edrproValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edrdscValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edrperValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edrprzValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edsprcValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edsproValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edsdscValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edsperValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edsprzValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpcomValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcustValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtab_cat_prc: Tfrmtab_cat_prc;

implementation

uses p_funcoes, uPrincipal;

{$R *.dfm}

procedure Tfrmtab_cat_prc.siSAVClick(Sender: TObject);
begin
  if yesno(handle,'Salvar Edições ?') = mrno then
  abort;

  with frmprincipal.sp_sql do
  begin
    ibSP.StoredProcName := 'SP_SQL';

    if RETORNA_REAL(edprec.Text) <> cad_pro_cacCAT_PREC.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_PREC = '''+strtran(edprec.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_PREC = '''+strtran(edprec.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edppro.Text) <> cad_pro_cacCAT_PPRO.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_PPRO = '''+strtran(edppro.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_PPRO = '''+strtran(edppro.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edpdsc.Text) <> cad_pro_cacCAT_PDSC.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_PDSC = '''+strtran(edpdsc.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_PDSC = '''+strtran(edpdsc.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edpper.Text) <> cad_pro_cacCAT_PPER.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_PPER = '''+strtran(edpper.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_PPER = '''+strtran(edpper.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edpprz.Text) <> cad_pro_cacCAT_PPRZ.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_PPRZ = '''+strtran(edpprz.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_PPRZ = '''+strtran(edpprz.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edvprc.Text) <> cad_pro_cacCAT_VPRC.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_VPRC = '''+strtran(edvprc.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_VPRC = '''+strtran(edvprc.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edvpro.Text) <> cad_pro_cacCAT_VPRO.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_VPRO = '''+strtran(edvpro.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_VPRO = '''+strtran(edvpro.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edvdsc.Text) <> cad_pro_cacCAT_VDSC.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_VDSC = '''+strtran(edvdsc.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_VDSC = '''+strtran(edvdsc.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edvper.Text) <> cad_pro_cacCAT_VPER.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_VPER = '''+strtran(edvper.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_VPER = '''+strtran(edvper.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edvprz.Text) <> cad_pro_cacCAT_VPRZ.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_VPRZ = '''+strtran(edvprz.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_VPRZ = '''+strtran(edvprz.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edrprc.Text) <> cad_pro_cacCAT_RPRC.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_RPRC = '''+strtran(edrprc.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_RPRC = '''+strtran(edrprc.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edrpro.Text) <> cad_pro_cacCAT_RPRO.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_RPRO = '''+strtran(edrpro.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_RPRO = '''+strtran(edrpro.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edrdsc.Text) <> cad_pro_cacCAT_RDSC.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_VDSC = '''+strtran(edrdsc.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_VDSC = '''+strtran(edrdsc.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edrper.Text) <> cad_pro_cacCAT_RPER.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_RPER = '''+strtran(edrper.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_RPER = '''+strtran(edrper.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edrprz.Text) <> cad_pro_cacCAT_RPRZ.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_RPRZ = '''+strtran(edrprz.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_RPRZ = '''+strtran(edrprz.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edsprc.Text) <> cad_pro_cacCAT_SPRC.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_SPRC = '''+strtran(edsprc.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_SPRC = '''+strtran(edsprc.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edspro.Text) <> cad_pro_cacCAT_SPRO.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_SPRO = '''+strtran(edspro.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_SPRO = '''+strtran(edspro.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edsdsc.Text) <> cad_pro_cacCAT_SDSC.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_SDSC = '''+strtran(edsdsc.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_SDSC = '''+strtran(edsdsc.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edsper.Text) <> cad_pro_cacCAT_SPER.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_SPER = '''+strtran(edsper.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_SPER = '''+strtran(edsper.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edsprz.Text) <> cad_pro_cacCAT_SPRZ.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_SPRZ = '''+strtran(edsprz.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_SPRZ = '''+strtran(edsprz.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edpcom.Text) <> cad_pro_cacCAT_PCOM.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_PCOM = '''+strtran(edpcom.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_PCOM = '''+strtran(edpcom.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if RETORNA_REAL(edcust.Text) <> cad_pro_cacCAT_CUST.AsFloat then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO');
      SQL.Add('SET    PRO_CUST = '''+strtran(edcust.Text,',','.')+'''');
      SQL.Add('WHERE  PRO_CCAT = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_CAC');
      SQL.Add('SET    CAT_CUST = '''+strtran(edcust.Text,',','.')+'''');
      SQL.Add('WHERE  ID       = '''+cad_pro_cacID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    IBTra.CommitRetaining;
  end;

  close;
end;

procedure Tfrmtab_cat_prc.edprecValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edprec.Text = '' then
     edprec.Text := '0';

  edprec.Text := formatfloat('#,0.00########',strtofloat(edprec.Text));
end;

procedure Tfrmtab_cat_prc.edpproValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edppro.Text = '' then
     edppro.Text := '0';

  edppro.Text := formatfloat('#,0.00########',strtofloat(edppro.Text));
end;

procedure Tfrmtab_cat_prc.edpdscValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpdsc.Text = '' then
     edpdsc.Text := '0';

  edpdsc.Text := formatfloat('#,0.00########',strtofloat(edpdsc.Text));
end;

procedure Tfrmtab_cat_prc.edpperValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpper.Text = '' then
     edpper.Text := '0';

  edpper.Text := formatfloat('#,0.00########',strtofloat(edpper.Text));
end;

procedure Tfrmtab_cat_prc.edpprzValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpprz.Text = '' then
     edpprz.Text := '0';

  edpprz.Text := formatfloat('#,0.00########',strtofloat(edpprz.Text));
end;

procedure Tfrmtab_cat_prc.edvprcValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvprc.Text = '' then
     edvprc.Text := '0';

  edvprc.Text := formatfloat('#,0.00########',strtofloat(edvprc.Text));
end;

procedure Tfrmtab_cat_prc.edvproValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvpro.Text = '' then
     edvpro.Text := '0';

  edvpro.Text := formatfloat('#,0.00########',strtofloat(edvpro.Text));
end;

procedure Tfrmtab_cat_prc.edvdscValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvdsc.Text = '' then
     edvdsc.Text := '0';

  edvdsc.Text := formatfloat('#,0.00########',strtofloat(edvdsc.Text));
end;

procedure Tfrmtab_cat_prc.edvperValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvper.Text = '' then
     edvper.Text := '0';

  edvper.Text := formatfloat('#,0.00########',strtofloat(edvper.Text));
end;

procedure Tfrmtab_cat_prc.edvprzValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvprz.Text = '' then
     edvprz.Text := '0';

  edvprz.Text := formatfloat('#,0.00########',strtofloat(edvprz.Text));
end;

procedure Tfrmtab_cat_prc.edrprcValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edrprc.Text = '' then
     edrprc.Text := '0';

  edrprc.Text := formatfloat('#,0.00########',strtofloat(edrprc.Text));
end;

procedure Tfrmtab_cat_prc.edrproValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edrpro.Text = '' then
     edrpro.Text := '0';

  edrpro.Text := formatfloat('#,0.00########',strtofloat(edrpro.Text));
end;

procedure Tfrmtab_cat_prc.edrdscValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edrdsc.Text = '' then
     edrdsc.Text := '0';

  edrdsc.Text := formatfloat('#,0.00########',strtofloat(edrdsc.Text));
end;

procedure Tfrmtab_cat_prc.edrperValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edrper.Text = '' then
     edrper.Text := '0';

  edrper.Text := formatfloat('#,0.00########',strtofloat(edrper.Text));
end;

procedure Tfrmtab_cat_prc.edrprzValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edrprz.Text = '' then
     edrprz.Text := '0';

  edrprz.Text := formatfloat('#,0.00########',strtofloat(edrprz.Text));
end;

procedure Tfrmtab_cat_prc.edsprcValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edsprc.Text = '' then
     edsprc.Text := '0';

  edsprc.Text := formatfloat('#,0.00########',strtofloat(edsprc.Text));
end;

procedure Tfrmtab_cat_prc.edsproValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edspro.Text = '' then
     edspro.Text := '0';

  edspro.Text := formatfloat('#,0.00########',strtofloat(edspro.Text));
end;

procedure Tfrmtab_cat_prc.edsdscValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edsdsc.Text = '' then
     edsdsc.Text := '0';

  edsdsc.Text := formatfloat('#,0.00########',strtofloat(edsdsc.Text));
end;

procedure Tfrmtab_cat_prc.edsperValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edsper.Text = '' then
     edsper.Text := '0';

  edsper.Text := formatfloat('#,0.00########',strtofloat(edsper.Text));
end;

procedure Tfrmtab_cat_prc.edsprzValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edsprz.Text = '' then
     edsprz.Text := '0';

  edsprz.Text := formatfloat('#,0.00########',strtofloat(edsprz.Text));
end;

procedure Tfrmtab_cat_prc.edpcomValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpcom.Text = '' then
     edpcom.Text := '0';

  edpcom.Text := formatfloat('#,0.00########',strtofloat(edpcom.Text));
end;

procedure Tfrmtab_cat_prc.edcustValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcust.Text = '' then
     edcust.Text := '0';

  edcust.Text := formatfloat('#,0.00########',strtofloat(edcust.Text));
end;

end.
