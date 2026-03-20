unit pcad_con_edi;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxExEdtr,
  dxEdLib, dxDBELib, DBCtrls, StdCtrls, dxCntner, dxEditor, rxSpeedbar,
  IBEvents, IBSQL, ActnList, cxGraphics, cxControls, dxStatusBar,
  rxAnimate, rxGIFCtrl;

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
    procedure _WM_AFTER_ACTIVATE(var Msg: TMessage); message WM_AFTER_ACTIVATE;
  end;

var
  frmcad_con_edi: Tfrmcad_con_edi;

implementation

uses uPrincipal, pcad_con;

{$R *.dfm}

procedure TFrmCAD_CON_EDI._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
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

  if tag = 1 then
  ALTERA_LANCAMENTO else NOVO_LANCAMENTO;
end;

procedure Tfrmcad_con_edi.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CONTAINERS'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GAdmin := True; { Grant }
  inherited;
end;

procedure Tfrmcad_con_edi.FormDestroy(Sender: TObject);
begin
  inherited;
  frmcad_con_edi := Nil;
end;

procedure Tfrmcad_con_edi.ALTERA_LANCAMENTO;
begin
  with frmcad_con do
  begin
    edid.Text       := CadastroID.AsString;
    edctnr.Text     := CadastroCON_CTNR.AsString;
    eddcad.Date     := CadastroCON_DCAD.AsDateTime;
    eddtnr.Text     := CadastroCON_DTNR.AsString;
    edpsbr.Text     := formatfloat('#,0.00',CadastroCON_PSBR.AsFloat);
    edpslq.Text     := formatfloat('#,0.00',CadastroCON_PSLQ.AsFloat);
    if CadastroCON_DCOL.AsDateTime > 0 then
    eddcol.Date     := CadastroCON_DCOL.AsDateTime;
    edvcol.Text     := formatfloat('#,0.00',CadastroCON_VCOL.AsFloat);
    if CadastroCON_DCOP.AsDateTime > 0 then
    eddcop.Date     := CadastroCON_DCOP.AsDateTime;
    edvcop.Text     := formatfloat('#,0.00',CadastroCON_VCOP.AsFloat);
    edvicms.Text    := formatfloat('#,0.00',CadastroCON_VICMS.AsFloat);
    edvipi.Text     := formatfloat('#,0.00',CadastroCON_VIPI.AsFloat);
    edvpis.Text     := formatfloat('#,0.00',CadastroCON_VPIS.AsFloat);
    edvcofins.Text  := formatfloat('#,0.00',CadastroCON_VCOFINS.AsFloat);
    edvdump.Text    := formatfloat('#,0.00',CadastroCON_VDUMP.AsFloat);
    edvII.Text      := formatfloat('#,0.00',CadastroCON_VII.AsFloat);
    edvLI.Text      := formatfloat('#,0.00',CadastroCON_VLI.AsFloat);
    edvMULTALI.Text := formatfloat('#,0.00',CadastroCON_VMULTALI.AsFloat);
    edvfrete.Text   := formatfloat('#,0.00',CadastroCON_VFRETE.AsFloat);
    edvdesp.Text    := formatfloat('#,0.00',CadastroCON_VDESP.AsFloat);
    edvextra.Text   := formatfloat('#,0.00',CadastroCON_VEXTRA.AsFloat);
    edvtransp.Text  := formatfloat('#,0.00',CadastroCON_VTRANSP.AsFloat);
    edvarmazen.Text := formatfloat('#,0.00',CadastroCON_VARMAZEN.AsFloat);
    edvhono.Text    := formatfloat('#,0.00',CadastroCON_VHONO.AsFloat);
    edvoutro.Text   := formatfloat('#,0.00',CadastroCON_VOUTRO.AsFloat);
    edvcusto.Text   := formatfloat('#,0.00',CadastroCON_VCUSTO.AsFloat);
    edobse.Text     := CadastroCON_OBSE.AsString;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT FANTASIA FROM TAB_PAR_SIS');
    SQL.Add('WHERE  ID = '''+frmcad_con.CadastroCON_CEMP.AsString+'''');
    Open;
    cbdemp.Text := fields[0].AsString;
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

  REC_SHE_DEF.Edited := False;
  try
    oOTransact(TEdicao);

    SPEdicao.Close;
    SPEdicao.StoredProcName := 'SP_CAD_CON';
    SPEdicao.Prepare;

    SPEdicao.ParamByName('con').Value := 'CAD_CON';

    case frmcad_con_edi.Tag of
      0: SPEdicao.Params[1].Value := '0';
      1: SPEdicao.Params[1].Value := edid.Text;
    end;

    SPEdicao.ParamByName('CTNR').Value      := edctnr.Text;
    SPEdicao.ParamByName('DTNR').Value      := eddtnr.Text;
    SPEdicao.ParamByName('CEMP').Value      := cemp;
    SPEdicao.ParamByName('DCAD').Value      := eddcad.Date;
    SPEdicao.ParamByName('DCOL').Value      := 0;
    if eddcol.Date > 0 then
    SPEdicao.ParamByName('DCOL').Value      := eddcol.Date;
    SPEdicao.ParamByName('DCOP').Value      := 0;
    if eddcop.Date > 0 then
    SPEdicao.ParamByName('DCOP').Value      := eddcop.Date;
    SPEdicao.ParamByName('PSBR').Value      := edpsbr.Text;
    SPEdicao.ParamByName('PSLQ').Value      := edpslq.Text;
    SPEdicao.ParamByName('VICMS').Value     := edvicms.Text;
    SPEdicao.ParamByName('VIPI').Value      := edvipi.Text;
    SPEdicao.ParamByName('VPIS').Value      := edvpis.Text;
    SPEdicao.ParamByName('VCOFINS').Value   := edvcofins.Text;
    SPEdicao.ParamByName('VDUMP').Value     := edvdump.Text;
    SPEdicao.ParamByName('VFRETE').Value    := edvfrete.Text;
    SPEdicao.ParamByName('VDESP').Value     := edvdesp.Text;
    SPEdicao.ParamByName('VII').Value       := edvII.Text;
    SPEdicao.ParamByName('VEXTRA').Value    := edvextra.Text;
    SPEdicao.ParamByName('VLI').Value       := edvLI.Text;
    SPEdicao.ParamByName('VMULTALI').Value  := edvmultaLI.Text;
    SPEdicao.ParamByName('VTRANSP').Value   := edvtransp.Text;
    SPEdicao.ParamByName('VARMAZEN').Value  := edvarmazen.Text;
    SPEdicao.ParamByName('VHONO').Value     := edvhono.Text;
    SPEdicao.ParamByName('VOUTRO').Value    := edvoutro.Text;
    SPEdicao.ParamByName('VCOL').Value      := edvcol.Text;
    SPEdicao.ParamByName('VCOP').Value      := edvcop.Text;
    SPEdicao.ParamByName('VCUSTO').Value    := edvcusto.Text;
    SPEdicao.ParamByName('OBSE').Value      := edobse.Text;
    SPEdicao.ParamByName('sta').Value       := '0';
    SPEdicao.ExecProc;

    oCTransact(TEdicao);
    oAviso(Application.Handle,'Registro atualizado com sucesso !');
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(Nil,'Falha ao tentar atualizar registro !' + #13 +
                      E.Message);
    end;
  end;

  REC_SHE_DEF.Edited := True;
  ACTEveExecute.Execute;
  Close;
end;

end.

