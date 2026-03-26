unit pcad_con_edi;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxExEdtr,
  dxEdLib, dxDBELib, DBCtrls, StdCtrls, dxCntner, dxEditor, rxSpeedbar;

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
    procedure siSAVClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edvdumpValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
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

uses p_funcoes, uPrincipal, pcad_con;

{$R *.dfm}

procedure Tfrmcad_con_edi.ALTERA_LANCAMENTO;
begin
  with frmcad_con do
  begin
    edid.Text       := cadastroID.AsString;
    edctnr.Text     := cadastroCON_CTNR.AsString;
    eddcad.Date     := cadastroCON_DCAD.AsDateTime;
    eddtnr.Text     := cadastroCON_DTNR.AsString;
    edpsbr.Text     := formatfloat('#,0.00########0',cadastroCON_PSBR.AsFloat);
    edpslq.Text     := formatfloat('#,0.00########0',cadastroCON_PSLQ.AsFloat);
    if cadastroCON_DCOL.AsDateTime > 0 then
    eddcol.Date     := cadastroCON_DCOL.AsDateTime;
    edvcol.Text     := formatfloat('#,0.00########',cadastroCON_VCOL.AsFloat);
    if cadastroCON_DCOP.AsDateTime > 0 then
    eddcop.Date     := cadastroCON_DCOP.AsDateTime;
    edvcop.Text     := formatfloat('#,0.00########',cadastroCON_VCOP.AsFloat);
    edvicms.Text    := formatfloat('#,0.00########',cadastroCON_VICMS.AsFloat);
    edvipi.Text     := formatfloat('#,0.00########',cadastroCON_VIPI.AsFloat);
    edvpis.Text     := formatfloat('#,0.00########',cadastroCON_VPIS.AsFloat);
    edvcofins.Text  := formatfloat('#,0.00########',cadastroCON_VCOFINS.AsFloat);
    edvdump.Text    := formatfloat('#,0.00########',cadastroCON_VDUMP.AsFloat);
    edvII.Text      := formatfloat('#,0.00########',cadastroCON_VII.AsFloat);
    edvLI.Text      := formatfloat('#,0.00########',cadastroCON_VLI.AsFloat);
    edvMULTALI.Text := formatfloat('#,0.00########',cadastroCON_VMULTALI.AsFloat);
    edvfrete.Text   := formatfloat('#,0.00########',cadastroCON_VFRETE.AsFloat);
    edvdesp.Text    := formatfloat('#,0.00########',cadastroCON_VDESP.AsFloat);
    edvextra.Text   := formatfloat('#,0.00########',cadastroCON_VEXTRA.AsFloat);
    edvtransp.Text  := formatfloat('#,0.00########',cadastroCON_VTRANSP.AsFloat);
    edvarmazen.Text := formatfloat('#,0.00########',cadastroCON_VARMAZEN.AsFloat);
    edvhono.Text    := formatfloat('#,0.00########',cadastroCON_VHONO.AsFloat);
    edvoutro.Text   := formatfloat('#,0.00########',cadastroCON_VOUTRO.AsFloat);
    edobse.Text     := cadastroCON_OBSE.AsString;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT PAR_FANT FROM PAR_SIS');
    SQL.Add('WHERE  ID = '''+frmcad_con.cadastroCON_CEMP.AsString+'''');
    Open;
    cbdemp.Text := fields[0].AsString;
  end;
end;

procedure Tfrmcad_con_edi.NOVO_LANCAMENTO;
begin
  edid.Text       := '0';
  edctnr.Text     := '';
  eddcad.Date     := StrToDate(SLPrincipal.Values['data_sistema']);
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

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_CAD_CON,0) FROM RDB$DATABASE');
    Open;

    edid.Text := strzero(fields[0].AsInteger+1,5);
  end;
end;

procedure Tfrmcad_con_edi.edpsbrValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpsbr.Text = '' then
  edpsbr.Text := '0,000';

  edpsbr.Text := formatfloat('#,0.00########0',RETORNA_REAL(edpsbr.Text));
end;

procedure Tfrmcad_con_edi.edpslqValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpslq.Text = '' then
  edpslq.Text := '0,000';

  edpslq.Text := formatfloat('#,0.00########0',RETORNA_REAL(edpslq.Text));
end;

procedure Tfrmcad_con_edi.edvcolValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvcol.Text = '' then
  edvcol.Text := '0,00';

  edvcol.Text := formatfloat('#,0.00########',RETORNA_REAL(edvcol.Text));
end;

procedure Tfrmcad_con_edi.edvcopValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvcop.Text = '' then
  edvcop.Text := '0,00';

  edvcop.Text := formatfloat('#,0.00########',RETORNA_REAL(edvcop.Text));
end;

procedure Tfrmcad_con_edi.edvicmsValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvicms.Text = '' then
  edvicms.Text := '0,00';

  edvicms.Text := formatfloat('#,0.00########',RETORNA_REAL(edvicms.Text));
end;

procedure Tfrmcad_con_edi.edvipiValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvipi.Text = '' then
  edvipi.Text := '0,00';

  edvipi.Text := formatfloat('#,0.00########',RETORNA_REAL(edvipi.Text));
end;

procedure Tfrmcad_con_edi.edvpisValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvpis.Text = '' then
  edvpis.Text := '0,00';

  edvpis.Text := formatfloat('#,0.00########',RETORNA_REAL(edvpis.Text));
end;

procedure Tfrmcad_con_edi.edvcofinsValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvcofins.Text = '' then
  edvcofins.Text := '0,00';

  edvcofins.Text := formatfloat('#,0.00########',RETORNA_REAL(edvcofins.Text));
end;

procedure Tfrmcad_con_edi.edvIIValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvII.Text = '' then
  edvII.Text := '0,00';

  edvII.Text := formatfloat('#,0.00########',RETORNA_REAL(edvII.Text));
end;

procedure Tfrmcad_con_edi.edvliValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvli.Text = '' then
  edvli.Text := '0,00';

  edvli.Text := formatfloat('#,0.00########',RETORNA_REAL(edvli.Text));
end;

procedure Tfrmcad_con_edi.edvmultaLIValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvmultaLI.Text = '' then
  edvmultaLI.Text := '0,00';

  edvmultaLI.Text := formatfloat('#,0.00########',RETORNA_REAL(edvmultaLI.Text));
end;

procedure Tfrmcad_con_edi.edvfreteValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvfrete.Text = '' then
  edvfrete.Text := '0,00';

  edvfrete.Text := formatfloat('#,0.00########',RETORNA_REAL(edvfrete.Text));
end;

procedure Tfrmcad_con_edi.edvdespValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvdesp.Text = '' then
  edvdesp.Text := '0,00';

  edvdesp.Text := formatfloat('#,0.00########',RETORNA_REAL(edvdesp.Text));
end;

procedure Tfrmcad_con_edi.edvextraValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvextra.Text = '' then
  edvextra.Text := '0,00';

  edvextra.Text := formatfloat('#,0.00########',RETORNA_REAL(edvextra.Text));
end;

procedure Tfrmcad_con_edi.edvtranspValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvtransp.Text = '' then
  edvtransp.Text := '0,00';

  edvtransp.Text := formatfloat('#,0.00########',RETORNA_REAL(edvtransp.Text));
end;

procedure Tfrmcad_con_edi.edvarmazenValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvarmazen.Text = '' then
  edvarmazen.Text := '0,00';

  edvarmazen.Text := formatfloat('#,0.00########',RETORNA_REAL(edvarmazen.Text));
end;

procedure Tfrmcad_con_edi.edvhonoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvhono.Text = '' then
  edvhono.Text := '0,00';

  edvhono.Text := formatfloat('#,0.00########',RETORNA_REAL(edvhono.Text));
end;

procedure Tfrmcad_con_edi.edvoutroValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvoutro.Text = '' then
  edvoutro.Text := '0,00';

  edvoutro.Text := formatfloat('#,0.00########',RETORNA_REAL(edvoutro.Text));
end;

procedure Tfrmcad_con_edi.FormShow(Sender: TObject);
begin
  inherited;
  if tag = 1 then
  ALTERA_LANCAMENTO else
  NOVO_LANCAMENTO;
end;

procedure Tfrmcad_con_edi.siSAVClick(Sender: TObject);
var
  cemp: integer;
begin
  activecontrol := nil;

  if (Campo_Obrigatorio(PnlCadastro)) then
     Abort;

  if tag = 1 then
  begin
    if frmprincipal.cad_usuUSU_ADM.AsString <> '1' then
    begin
      if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Clientes','Cadastro','Permissões Gerais',false) then
         raise exception.Create('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
    end;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM PAR_SIS');
    SQL.Add('WHERE  PAR_FANT = '''+cbdemp.Text+'''');
    Open;
    cemp := fields[0].AsInteger;
  end;

  try
    ibSP.StoredProcName := 'SP_CAD_CON';
    ibSP.Prepare;

    ibSP.ParamByName('con').Value := 'CAD_CON';

    case frmcad_con_edi.Tag of
      0: ibSP.Params[1].Value := '0';
      1: ibSP.Params[1].Value := edid.Text;
    end;

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
    ibSP.ParamByName('OBSE').Value      := edobse.Text;
    ibSP.ParamByName('sta').Value       := '0';
    ibSP.ExecProc;

    case frmcad_con_edi.Tag of
      0: frmprincipal.Log_Eve('Container','Cadastro de Container','Inclusão' ,edctnr.Text,edctnr.Text,LOWERCASE(edctnr.Text),'','');
      1: frmprincipal.Log_Eve('Container','Cadastro de Container','Alteração',edctnr.Text,edctnr.Text,LOWERCASE(edctnr.Text),'','');
    end;

    editado := true;
    IBTra.Commit;
    IBTra.StartTransaction;

    if (frmcad_con_edi.Tag = 0) then
    NOVO_LANCAMENTO else
    Close;
  except
    editado := false;
    IBTRA.Rollback;
    IBTra.StartTransaction;
  end;
end;

procedure Tfrmcad_con_edi.FormCreate(Sender: TObject);
begin
  inherited;
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PAR_FANT FROM PAR_SIS');
    SQL.Add('WHERE    PAR_STA = ''0''');
    SQL.Add('ORDER BY PAR_FANT');
    Open;

    while not eof do
    begin
      cbdemp.Descriptions.Add(fields[0].AsString);
      cbdemp.Values.Add(fields[0].AsString);
      next;
    end;
  end;
  cbdemp.Text := frmprincipal.parametrosPAR_FANT.AsString;
end;

procedure Tfrmcad_con_edi.edvdumpValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvdump.Text = '' then
  edvdump.Text := '0,00';

  edvdump.Text := formatfloat('#,0.00########',RETORNA_REAL(edvdump.Text));
end;

end.

