unit pcad_con_edi;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxExEdtr,
  dxEdLib, dxDBELib, DBCtrls, StdCtrls, dxCntner, dxEditor, rxSpeedbar,
  IBEvents, IBSQL, ActnList;

type
  Tfrmcad_con_edi = class(Tfrmpadr3)
    Label1: TLabel;
    edctnr: TdxEdit;
    Label5: TLabel;
    eddtnr: TdxEdit;
    Label2: TLabel;
    edpsbr: TdxEdit;
    Label3: TLabel;
    edpslq: TdxEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    GroupBox4: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBText11: TDBText;
    DBText12: TDBText;
    Label13: TLabel;
    Label19: TLabel;
    GroupBox3: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    GroupBox2: TGroupBox;
    edvcol: TdxEdit;
    edvcop: TdxEdit;
    edvicms: TdxEdit;
    edvipi: TdxEdit;
    edvpis: TdxEdit;
    edvcofins: TdxEdit;
    edvII: TdxEdit;
    edvli: TdxEdit;
    edvmultaLI: TdxEdit;
    edvfrete: TdxEdit;
    edvdesp: TdxEdit;
    edvextra: TdxEdit;
    edvtransp: TdxEdit;
    edvarmazen: TdxEdit;
    edvhono: TdxEdit;
    edvoutro: TdxEdit;
    eddcad: TdxDateEdit;
    Label22: TLabel;
    eddcol: TdxDateEdit;
    eddcop: TdxDateEdit;
    edid: TdxEdit;
    edobse: TdxMemo;
    cbdemp: TdxImageEdit;
    Label29: TLabel;
    Label30: TLabel;
    edvdump: TdxEdit;
    edvcusto: TdxEdit;
    Label31: TLabel;
    PKConsulta: TIBQuery;
    SQLConsulta: TIBSQL;
    procedure edpsbrValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpslqValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvcolValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvcopValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvicmsValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvipiValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvpisValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvcofinsValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvIIValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvliValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvmultaLIValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvfreteValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvdespValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvextraValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvtranspValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvarmazenValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvhonoValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvoutroValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edvdumpValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure edvcustoValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure ACTMPostExecute(Sender: TObject);
  private
    { Private declarations }
    procedure NOVO_LANCAMENTO;
    procedure ALTERA_LANCAMENTO;
  public
    { Public declarations }
  end;

var
  frmcad_con_edi: Tfrmcad_con_edi;

implementation

uses uPrincipal, pcad_con;

{$R *.dfm}

procedure Tfrmcad_con_edi.FormCreate(Sender: TObject);
begin
  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_CTNR_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Cadastro';
  REC_SHE_DEF.GReferencia := 'Containers';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
  inherited;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FANTASIA FROM TAB_PAR_SIS');
    SQL.Add('ORDER BY FANTASIA');
    Open;

    while not eof do
    begin
      cbdemp.Descriptions.Add(fields[0].AsString);
      cbdemp.Values.Add(fields[0].AsString);
      next;
    end;
  end;
  cbdemp.Text := RECParametros.EP_NO;
end;

procedure Tfrmcad_con_edi.FormShow(Sender: TObject);
begin
  inherited;
  NOVO_LANCAMENTO;
  ALTERA_LANCAMENTO;
end;


procedure Tfrmcad_con_edi.FormDestroy(Sender: TObject);
begin
  inherited;
  frmcad_con_edi := Nil;
end;

procedure Tfrmcad_con_edi.ALTERA_LANCAMENTO;
begin
  if REC_SHE_DEF.IDPK > 0 then
  begin
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CAD_CON');
      SQL.Add('WHERE  ID = ''' + REC_SHE_DEF.IDPK + '''');
      ExecQuery;

      edid.Text       := Current.ByName('ID').AsString;
      edctnr.Text     := Current.ByName('CON_CTNR').AsString;
      eddcad.Date     := Current.ByName('CON_DCAD').AsDateTime;
      eddtnr.Text     := Current.ByName('CON_DTNR').AsString;
      edpsbr.Text     := formatfloat('#,0.00',Current.ByName('CON_PSBR').AsFloat);
      edpslq.Text     := formatfloat('#,0.00',Current.ByName('CON_PSLQ').AsFloat);

      if Current.ByName('CON_DCOL').AsDateTime > 0 then
      eddcol.Date     := Current.ByName('CON_DCOL').AsDateTime;
      edvcol.Text     := formatfloat('#,0.00',Current.ByName('CON_VCOL').AsFloat);
      if Current.ByName('CON_DCOP').AsDateTime > 0 then
      eddcop.Date     := Current.ByName('CON_DCOP').AsDateTime;

      edvcop.Text     := formatfloat('#,0.00',Current.ByName('CON_VCOP'    ).AsFloat);
      edvicms.Text    := formatfloat('#,0.00',Current.ByName('CON_VICMS'   ).AsFloat);
      edvipi.Text     := formatfloat('#,0.00',Current.ByName('CON_VIPI'    ).AsFloat);
      edvpis.Text     := formatfloat('#,0.00',Current.ByName('CON_VPIS'    ).AsFloat);
      edvcofins.Text  := formatfloat('#,0.00',Current.ByName('CON_VCOFINS' ).AsFloat);
      edvdump.Text    := formatfloat('#,0.00',Current.ByName('CON_VDUMP'   ) .AsFloat);
      edvII.Text      := formatfloat('#,0.00',Current.ByName('CON_VII'     ).AsFloat);
      edvLI.Text      := formatfloat('#,0.00',Current.ByName('CON_VLI'     ).AsFloat);
      edvMULTALI.Text := formatfloat('#,0.00',Current.ByName('CON_VMULTALI').AsFloat);
      edvfrete.Text   := formatfloat('#,0.00',Current.ByName('CON_VFRETE'  ).AsFloat);
      edvdesp.Text    := formatfloat('#,0.00',Current.ByName('CON_VDESP'   ).AsFloat);
      edvextra.Text   := formatfloat('#,0.00',Current.ByName('CON_VEXTRA'  ).AsFloat);
      edvtransp.Text  := formatfloat('#,0.00',Current.ByName('CON_VTRANSP' ).AsFloat);
      edvarmazen.Text := formatfloat('#,0.00',Current.ByName('CON_VARMAZEN').AsFloat);
      edvhono.Text    := formatfloat('#,0.00',Current.ByName('CON_VHONO'   ).AsFloat);
      edvoutro.Text   := formatfloat('#,0.00',Current.ByName('CON_VOUTRO'  ).AsFloat);
      edvcusto.Text   := formatfloat('#,0.00',Current.ByName('CON_VCUSTO'  ).AsFloat);
      edobse.Text     := Current.ByName('CON_OBSE').AsString;
    end;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FANTASIA FROM TAB_PAR_SIS');
      SQL.Add('WHERE  ID = ''' + SQLConsulta.Current.ByName('CON_CEMP').AsString+'''');
      Open;
      cbdemp.Text := fields[0].AsString;
    end;
  end;  
end;

procedure Tfrmcad_con_edi.NOVO_LANCAMENTO;
begin
  edid.Text       := '0';
  edctnr.Text     := '';
  eddcad.Date     := RECParametros.SHE_DATA;
  eddtnr.Text     := '';
  edpsbr.Text     := '0,000';
  edpslq.Text     := '0,000';
  eddcol.Text     := '';
  edvcol.Text     := '0,00';
  eddcop.Text     := '';
  edvcop.Text     := '0,00';
  edvicms.Text    := '0,00';
  edvipi.Text     := '0,00';
  edvpis.Text     := '0,00';
  edvcofins.Text  := '0,00';
  edvdump.Text    := '0,00';
  edvII.Text      := '0,00';
  edvLI.Text      := '0,00';
  edvMULTALI.Text := '0,00';
  edvfrete.Text   := '0,00';
  edvdesp.Text    := '0,00';
  edvextra.Text   := '0,00';
  edvtransp.Text  := '0,00';
  edvarmazen.Text := '0,00';
  edvhono.Text    := '0,00';
  edvoutro.Text   := '0,00';
  edvcusto.Text   := '0.00';

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_CAD_CON,0) FROM RDB$DATABASE');
    Open;

    edid.Text := oStrZero(fields[0].AsInteger+1,5);
  end;
end;

procedure Tfrmcad_con_edi.edpsbrValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpsbr.Text = '' then
  edpsbr.Text := '0,000';

  edpsbr.Text := formatfloat('#,0.00',oTextToValor(edpsbr.Text));
end;

procedure Tfrmcad_con_edi.edpslqValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpslq.Text = '' then
  edpslq.Text := '0,000';

  edpslq.Text := formatfloat('#,0.00',oTextToValor(edpslq.Text));
end;

procedure Tfrmcad_con_edi.edvcolValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvcol.Text = '' then
  edvcol.Text := '0,00';

  edvcol.Text := formatfloat('#,0.00',oTextToValor(edvcol.Text));
end;

procedure Tfrmcad_con_edi.edvcopValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvcop.Text = '' then
  edvcop.Text := '0,00';

  edvcop.Text := formatfloat('#,0.00',oTextToValor(edvcop.Text));
end;

procedure Tfrmcad_con_edi.edvicmsValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvicms.Text = '' then
  edvicms.Text := '0,00';

  edvicms.Text := formatfloat('#,0.00',oTextToValor(edvicms.Text));
end;

procedure Tfrmcad_con_edi.edvipiValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvipi.Text = '' then
  edvipi.Text := '0,00';

  edvipi.Text := formatfloat('#,0.00',oTextToValor(edvipi.Text));
end;

procedure Tfrmcad_con_edi.edvpisValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvpis.Text = '' then
  edvpis.Text := '0,00';

  edvpis.Text := formatfloat('#,0.00',oTextToValor(edvpis.Text));
end;

procedure Tfrmcad_con_edi.edvcofinsValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvcofins.Text = '' then
  edvcofins.Text := '0,00';

  edvcofins.Text := formatfloat('#,0.00',oTextToValor(edvcofins.Text));
end;

procedure Tfrmcad_con_edi.edvIIValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvII.Text = '' then
  edvII.Text := '0,00';

  edvII.Text := formatfloat('#,0.00',oTextToValor(edvII.Text));
end;

procedure Tfrmcad_con_edi.edvliValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvli.Text = '' then
  edvli.Text := '0,00';

  edvli.Text := formatfloat('#,0.00',oTextToValor(edvli.Text));
end;

procedure Tfrmcad_con_edi.edvmultaLIValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvmultaLI.Text = '' then
  edvmultaLI.Text := '0,00';

  edvmultaLI.Text := formatfloat('#,0.00',oTextToValor(edvmultaLI.Text));
end;

procedure Tfrmcad_con_edi.edvfreteValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvfrete.Text = '' then
  edvfrete.Text := '0,00';

  edvfrete.Text := formatfloat('#,0.00',oTextToValor(edvfrete.Text));
end;

procedure Tfrmcad_con_edi.edvdespValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvdesp.Text = '' then
  edvdesp.Text := '0,00';

  edvdesp.Text := formatfloat('#,0.00',oTextToValor(edvdesp.Text));
end;

procedure Tfrmcad_con_edi.edvextraValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvextra.Text = '' then
  edvextra.Text := '0,00';

  edvextra.Text := formatfloat('#,0.00',oTextToValor(edvextra.Text));
end;

procedure Tfrmcad_con_edi.edvtranspValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvtransp.Text = '' then
  edvtransp.Text := '0,00';

  edvtransp.Text := formatfloat('#,0.00',oTextToValor(edvtransp.Text));
end;

procedure Tfrmcad_con_edi.edvarmazenValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvarmazen.Text = '' then
  edvarmazen.Text := '0,00';

  edvarmazen.Text := formatfloat('#,0.00',oTextToValor(edvarmazen.Text));
end;

procedure Tfrmcad_con_edi.edvhonoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvhono.Text = '' then
  edvhono.Text := '0,00';

  edvhono.Text := formatfloat('#,0.00',oTextToValor(edvhono.Text));
end;

procedure Tfrmcad_con_edi.edvoutroValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvoutro.Text = '' then
  edvoutro.Text := '0,00';

  edvoutro.Text := formatfloat('#,0.00',oTextToValor(edvoutro.Text));
end;

procedure Tfrmcad_con_edi.edvdumpValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvdump.Text = '' then
  edvdump.Text := '0,00';

  edvdump.Text := formatfloat('#,0.00',oTextToValor(edvdump.Text));
end;

procedure Tfrmcad_con_edi.edvcustoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvcusto.Text = '' then
  edvcusto.Text := '0,00';

  edvcusto.Text := formatfloat('#,0.00',oTextToValor(edvcusto.Text));
end;

procedure Tfrmcad_con_edi.ACTMPostExecute(Sender: TObject);
var
  cemp: integer;
begin
  inherited;
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_PAR_SIS');
    SQL.Add('WHERE  FANTASIA = '''+cbdemp.Text+'''');
    Open;
    cemp := fields[0].AsInteger;
  end;

  try
    ibSP.StoredProcName := 'SP_CAD_CON';
    ibSP.Prepare;

    ibSP.ParamByName('con').Value := 'CAD_CON';

    ibSP.ParamByName('ID'  ).Value      := REC_SHE_DEF.IDPK;
    ibSP.ParamByName('CTNR').Value      := edctnr.Text;
    ibSP.ParamByName('DTNR').Value      := eddtnr.Text;
    ibSP.ParamByName('CEMP').Value      := cemp;
    ibSP.ParamByName('DCAD').Value      := eddcad.Date;
    ibSP.ParamByName('DCOL').Value      := 0;
    if eddcol.Date > 0 then
    ibSP.ParamByName('DCOL').Value      := eddcol.Date;
    ibSP.ParamByName('DCOP').Value      := 0;
    if eddcop.Date > 0 then
    ibSP.ParamByName('DCOP').Value      := eddcop.Date;
    ibSP.ParamByName('PSBR').Value      := edpsbr.Text;
    ibSP.ParamByName('PSLQ').Value      := edpslq.Text;
    ibSP.ParamByName('VICMS').Value     := edvicms.Text;
    ibSP.ParamByName('VIPI').Value      := edvipi.Text;
    ibSP.ParamByName('VPIS').Value      := edvpis.Text;
    ibSP.ParamByName('VCOFINS').Value   := edvcofins.Text;
    ibSP.ParamByName('VDUMP').Value     := edvdump.Text;
    ibSP.ParamByName('VFRETE').Value    := edvfrete.Text;
    ibSP.ParamByName('VDESP').Value     := edvdesp.Text;
    ibSP.ParamByName('VII').Value       := edvII.Text;
    ibSP.ParamByName('VEXTRA').Value    := edvextra.Text;
    ibSP.ParamByName('VLI').Value       := edvLI.Text;
    ibSP.ParamByName('VMULTALI').Value  := edvmultaLI.Text;
    ibSP.ParamByName('VTRANSP').Value   := edvtransp.Text;
    ibSP.ParamByName('VARMAZEN').Value  := edvarmazen.Text;
    ibSP.ParamByName('VHONO').Value     := edvhono.Text;
    ibSP.ParamByName('VOUTRO').Value    := edvoutro.Text;
    ibSP.ParamByName('VCOL').Value      := edvcol.Text;
    ibSP.ParamByName('VCOP').Value      := edvcop.Text;
    ibSP.ParamByName('VCUSTO').Value    := edvcusto.Text;
    ibSP.ParamByName('OBSE').Value      := edobse.Text;
    ibSP.ParamByName('sta').Value       := '0';
    ibSP.ExecProc;

    editado := true;
    IBTra.Commit;
    IBTra.StartTransaction;

    oAviso(Application.Handle,'Container atualizado coom sucesso !');

    REC_SHE_DEF.Editing := False;
    ACTExecEvent.Execute;
    Close;
  except
    editado := false;
    IBTRA.Rollback;
    IBTra.StartTransaction;
  end;
end;

end.

