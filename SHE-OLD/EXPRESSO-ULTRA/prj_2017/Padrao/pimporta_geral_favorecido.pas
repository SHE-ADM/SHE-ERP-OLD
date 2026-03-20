unit pimporta_geral_favorecido;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB, IBCustomDataSet,
  IBQuery, RxSpeedBar, ComCtrls, ExtCtrls, dxExEdtr, dxEdLib, dxEditor,
  dxCntner, StdCtrls, IBEvents, IBSQL;

type
  Tfrmimporta_geral_favorecido = class(Tfrmpadr3)
    Label5: TLabel;
    edfant: TdxEdit;
    Label4: TLabel;
    edraza: TdxEdit;
    Label13: TLabel;
    edcnpj: TdxMaskEdit;
    Label14: TLabel;
    edinsc: TdxEdit;
    Label7: TLabel;
    edddd: TdxMaskEdit;
    edtel1: TdxMaskEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label53: TLabel;
    Label66: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label57: TLabel;
    edtlog: TdxEdit;
    edlogr: TdxEdit;
    edcep: TdxButtonEdit;
    ednume: TdxEdit;
    edcomp: TdxEdit;
    edcmun: TdxButtonEdit;
    edbai: TdxEdit;
    eduf: TdxEdit;
    edcid: TdxEdit;
    cbregi: TdxPickEdit;
    procedure siSAVClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmimporta_geral_favorecido: Tfrmimporta_geral_favorecido;

implementation

{$R *.dfm}

uses uPrincipal;

procedure Tfrmimporta_geral_favorecido.FormDestroy(Sender: TObject);
begin
  inherited;
  frmimporta_geral_favorecido := Nil;
end;

procedure Tfrmimporta_geral_favorecido.siSAVClick(Sender: TObject);
begin
  inherited;
  if tag = 0 then
  begin
    if oYesNo(handle,'Salvar Cliente ?') = mrno then
    abort;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_CAD_CLI,0) FROM RDB$DATABASE');
      Open;
      edfant.Tag := fields[0].AsInteger+1;
    end;

    ibSP.StoredProcName := 'SP_CAD_CLI';
    ibSP.Prepare;

    ibSP.ParamByName('dusu').Value := RECUsuarios.Login;
    ibSP.ParamByName('stpd').Value := '0';
    ibSP.ParamByName('cven').Value := '0';
    ibSP.ParamByName('crep').Value := '0';
    ibSP.ParamByName('regi').Value := cbregi.Text;
    ibSP.ParamByName('dusu').Value := RECUsuarios.Login;
  end else
  begin
    if oYesNo(handle,'Salvar Fornecedor ?') = mrno then
    abort;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_CAD_FOR,0) FROM RDB$DATABASE');
      Open;
      edfant.Tag := fields[0].AsInteger+1;
    end;

    ibSP.StoredProcName := 'SP_CAD_FOR';
    ibSP.Prepare;
    ibSP.ParamByName('cdep').Value := '0';
  end;

  ibSP.Params[0].Value           := null;
  ibSP.ParamByName('dcad').Value := RECParametros.DTSERVER;
  ibSP.ParamByName('dalt').Value := RECParametros.DTSERVER;
  ibSP.ParamByName('dfun').Value := RECParametros.DTSERVER;
  ibSP.ParamByName('raza').Value := edraza.Text;
  ibSP.ParamByName('site').Value := '';
  ibSP.ParamByName('cred').Value := 0;
  ibSP.ParamByName('vdsc').Value := 0;
  ibSP.ParamByName('fant').Value := edfant.Text;
  ibSP.ParamByName('ramo').Value := '';
  ibSP.ParamByName('sta').Value  := '0';
  ibSP.ParamByName('cont').Value := '';
  ibSP.ParamByName('fcon').Value := '';
  ibSP.ParamByName('ccon').Value := '';
  ibSP.ParamByName('mail').Value := '';
  ibSP.ParamByName('fmai').Value := '';
  ibSP.ParamByName('cmai').Value := '';
  ibSP.ParamByName('ddd').Value  := edddd.Text;
  ibSP.ParamByName('dd2').Value  := '';
  ibSP.ParamByName('dd3').Value  := '';
  ibSP.ParamByName('dd4').Value  := '';
  ibSP.ParamByName('dd5').Value  := '';
  ibSP.ParamByName('dd6').Value  := '';
  ibSP.ParamByName('fddd').Value := '';
  ibSP.ParamByName('fdd2').Value := '';
  ibSP.ParamByName('fdd3').Value := '';
  ibSP.ParamByName('fdd4').Value := '';
  ibSP.ParamByName('fdd5').Value := '';
  ibSP.ParamByName('fdd6').Value := '';
  ibSP.ParamByName('cddd').Value := '';
  ibSP.ParamByName('cdd2').Value := '';
  ibSP.ParamByName('cdd3').Value := '';
  ibSP.ParamByName('cdd4').Value := '';
  ibSP.ParamByName('cdd5').Value := '';
  ibSP.ParamByName('cdd6').Value := '';
  ibSP.ParamByName('tel1').Value := edtel1.Text;
  ibSP.ParamByName('fte1').Value := '';
  ibSP.ParamByName('cte1').Value := '';
  ibSP.ParamByName('tel2').Value := '';
  ibSP.ParamByName('fte2').Value := '';
  ibSP.ParamByName('cte2').Value := '';
  ibSP.ParamByName('tel3').Value := '';
  ibSP.ParamByName('fte3').Value := '';
  ibSP.ParamByName('cte3').Value := '';
  ibSP.ParamByName('fax').Value  := '';
  ibSP.ParamByName('ffax').Value := '';
  ibSP.ParamByName('cfax').Value := '';
  ibSP.ParamByName('cel').Value  := '';
  ibSP.ParamByName('fcel').Value := '';
  ibSP.ParamByName('ccel').Value := '';
  ibSP.ParamByName('ncel').Value := '';
  ibSP.ParamByName('fnce').Value := '';
  ibSP.ParamByName('cnce').Value := '';
  ibSP.ParamByName('neid').Value := '';
  ibSP.ParamByName('fnid').Value := '';
  ibSP.ParamByName('cnid').Value := '';
  ibSP.ParamByName('tce1').Value := '';
  ibSP.ParamByName('tce2').Value := '';
  ibSP.ParamByName('ftc1').Value := '';
  ibSP.ParamByName('ftc2').Value := '';
  ibSP.ParamByName('ctc1').Value := '';
  ibSP.ParamByName('ctc2').Value := '';
  ibSP.ParamByName('rg').Value   := '';
  ibSP.ParamByName('cpf').Value  := '';
  ibSP.ParamByName('insc').Value := edinsc.Text;
  ibSP.ParamByName('cnpj').Value := edcnpj.Text;
  ibSP.ParamByName('ccm').Value  := '';
  ibSP.ParamByName('imun').Value := '';
  ibSP.ParamByName('tlog').Value := edtlog.Text;
  ibSP.ParamByName('logr').Value := edlogr.Text;
  ibSP.ParamByName('cep').Value  := edcep.Text;
  ibSP.ParamByName('cmun').Value := edcmun.Text;
  ibSP.ParamByName('cmuv').Value := '';
  ibSP.ParamByName('cmuc').Value := '';
  ibSP.ParamByName('nume').Value := ednume.Text;
  ibSP.ParamByName('comp').Value := edcomp.Text;
  ibSP.ParamByName('bai').Value  := edbai.Text;
  ibSP.ParamByName('cid').Value  := edcid.Text;
  ibSP.ParamByName('esta').Value := eduf.Text;
  ibSP.ParamByName('tloc').Value := '';
  ibSP.ParamByName('logc').Value := '';
  ibSP.ParamByName('cepc').Value := '';
  ibSP.ParamByName('numc').Value := '';
  ibSP.ParamByName('comc').Value := '';
  ibSP.ParamByName('baic').Value := '';
  ibSP.ParamByName('cidc').Value := '';
  ibSP.ParamByName('estc').Value := '';
  ibSP.ParamByName('tlov').Value := '';
  ibSP.ParamByName('logv').Value := '';
  ibSP.ParamByName('cepv').Value := '';
  ibSP.ParamByName('numv').Value := '';
  ibSP.ParamByName('comv').Value := '';
  ibSP.ParamByName('baiv').Value := '';
  ibSP.ParamByName('cidv').Value := '';
  ibSP.ParamByName('estv').Value := '';
  ibSP.ParamByName('stav').Value := 'A';
  ibSP.ParamByName('tpve').Value := 'ATACADO';
  ibSP.ParamByName('obso').Value := '';
  ibSP.ParamByName('obse').Value := '';

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,TRA_FANT FROM CAD_TRA');
    SQL.Add('WHERE  ID = ''1''');
    Open;
    ibSP.ParamByName('ctra').Value := fields[0].AsInteger;
    ibSP.ParamByName('dtra').Value := fields[1].AsString;

    SQL.Clear;
    SQL.Add('SELECT ID,PAG_DPAG FROM TAB_PAG');
    SQL.Add('WHERE  ID = ''1''');
    Open;
    ibSP.ParamByName('cpag').Value := oStrZero(fields[0].AsInteger,2);
    ibSP.ParamByName('dpag').Value := fields[1].AsString;
  end;

  ibSP.ParamByName('reve').Value := '0';
  ibSP.ParamByName('ricm').Value := '0';
  ibSP.ParamByName('cicm').Value := '0';
  ibSP.ExecProc;
  Close;
end;

end.
