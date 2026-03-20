unit pimporta_geral_favorecido;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB, IBCustomDataSet,
  IBQuery, RxSpeedBar, ComCtrls, ExtCtrls, dxExEdtr, dxEdLib, dxEditor,
  dxCntner, StdCtrls, IBEvents, IBSQL, ActnList;

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
    procedure FormDestroy(Sender: TObject);
    procedure ACTMPostExecute(Sender: TObject);
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

procedure Tfrmimporta_geral_favorecido.ACTMPostExecute(Sender: TObject);
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

    ibSP.Close;
    ibSP.StoredProcName := 'SP_CAD_CLI';
    ibSP.Prepare;
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

    ibSP.Close;
    ibSP.StoredProcName := 'SP_CAD_FOR';
    ibSP.Prepare;
  end;

  { Cadastro }
  ibSP.ParamByName('ID'  ).Value := 0;
  ibSP.ParamByName('IDEP').Value := RECParametros.Id;
  ibSP.ParamByName('IDCA').Value := RECUsuarios.Id;
  
  ibSP.ParamByName('dfun').Value := RECParametros.DTServer;
  ibSP.ParamByName('NAFA').Value := 0;

  { Sintegra }
  ibSP.ParamByName('fant').Value := StringReplace(oREPApostrofos(EDFANT.Text),Char(39),'',[rfReplaceAll]);
  ibSP.ParamByName('raza').Value := StringReplace(oREPApostrofos(EDRAZA.Text),Char(39),'',[rfReplaceAll]);
  ibSP.ParamByName('degp').Value := EmptyStr;
  ibSP.ParamByName('ramo').Value := EmptyStr;

  ibSP.ParamByName('cnpj').Value := edcnpj.Text;
  ibSP.ParamByName('insc').Value := edinsc.Text;
  ibSP.ParamByName('imun').Value := EmptyStr;
  ibSP.ParamByName('ccm').Value  := EmptyStr;
  ibSP.ParamByName('cpf').Value  := EmptyStr;

  { Fiscal }
  ibSP.ParamByName('reve').Value := 0;
  ibSP.ParamByName('ricm').Value := 1;
  ibSP.ParamByName('cicm').Value := 0;

  { Programações }
  ibSP.ParamByName('tipo'   ).Value := 0;
  ibSP.ParamByName('reserva').Value := 0;

  { Vendedores }
  ibSP.ParamByName('cven').Value := RECUsuarios.Id;         { Interno }
  ibSP.ParamByName('crep').Value := RECParametros.IDCR_PAD; { Externo }

  { Comercial }
  ibSP.ParamByName('cont').Value := EmptyStr;
  ibSP.ParamByName('mail').Value := EmptyStr;

  { Fone }
  ibSP.ParamByName('ddd' ).Value := edddd.Text;
  ibSP.ParamByName('tel1').Value := edtel1.Text;
  ibSP.ParamByName('dd2' ).Value := EmptyStr;
  ibSP.ParamByName('tel2').Value := EmptyStr;
  ibSP.ParamByName('dd3' ).Value := EmptyStr;
  ibSP.ParamByName('tel3').Value := EmptyStr;

  { Celular }
  ibSP.ParamByName('dd5' ).Value := EmptyStr;
  ibSP.ParamByName('cel' ).Value := EmptyStr;
  ibSP.ParamByName('neid').Value := EmptyStr;

  { Endereço }
  ibSP.ParamByName('tlog').Value := edtlog.Text;
  ibSP.ParamByName('logr').Value := edlogr.Text;
  ibSP.ParamByName('nume').Value := ednume.Text;
  ibSP.ParamByName('comp').Value := edcomp.Text;
  ibSP.ParamByName('cep' ).Value := edcep.Text;
  ibSP.ParamByName('cmun').Value := edcmun.Text;
  ibSP.ParamByName('bai' ).Value := edbai.Text;
  ibSP.ParamByName('cid' ).Value := edcid.Text;
  ibSP.ParamByName('esta').Value := eduf.Text;

  { Financeiro }
  ibSP.ParamByName('fcon').Value := EmptyStr;
  ibSP.ParamByName('fmai').Value := EmptyStr;

  { Fone }
  ibSP.ParamByName('fddd').Value := EmptyStr;
  ibSP.ParamByName('fte1').Value := EmptyStr;
  ibSP.ParamByName('fdd2').Value := EmptyStr;
  ibSP.ParamByName('fte2').Value := EmptyStr;
  ibSP.ParamByName('fdd3').Value := EmptyStr;
  ibSP.ParamByName('fte3').Value := EmptyStr;

  { Celular }
  ibSP.ParamByName('fdd5').Value := EmptyStr;
  ibSP.ParamByName('fcel').Value := EmptyStr;
  ibSP.ParamByName('fnid').Value := EmptyStr;

  { Endereço }
  ibSP.ParamByName('tloc').Value := EmptyStr; 
  ibSP.ParamByName('logc').Value := EmptyStr;
  ibSP.ParamByName('numc').Value := EmptyStr;
  ibSP.ParamByName('comc').Value := EmptyStr;
  ibSP.ParamByName('cepc').Value := EmptyStr;
  ibSP.ParamByName('baic').Value := EmptyStr;
  ibSP.ParamByName('cidc').Value := EmptyStr;
  ibSP.ParamByName('cmuc').Value := EmptyStr;
  ibSP.ParamByName('estc').Value := EmptyStr;

  { Compras }
  ibSP.ParamByName('ccon').Value := EmptyStr;
  ibSP.ParamByName('cmai').Value := EmptyStr;

  { Fone }
  ibSP.ParamByName('cddd').Value := EmptyStr;
  ibSP.ParamByName('cte1').Value := EmptyStr;
  ibSP.ParamByName('cdd2').Value := EmptyStr;
  ibSP.ParamByName('cte2').Value := EmptyStr;
  ibSP.ParamByName('cdd3').Value := EmptyStr;
  ibSP.ParamByName('cte3').Value := EmptyStr;

  { Celular }
  ibSP.ParamByName('cdd5').Value := EmptyStr;
  ibSP.ParamByName('ccel').Value := EmptyStr;
  ibSP.ParamByName('cnid').Value := EmptyStr;

  { Endereço }
  ibSP.ParamByName('tlov').Value := EmptyStr;
  ibSP.ParamByName('logv').Value := EmptyStr;
  ibSP.ParamByName('numv').Value := EmptyStr;
  ibSP.ParamByName('comv').Value := EmptyStr;
  ibSP.ParamByName('cepv').Value := EmptyStr;
  ibSP.ParamByName('baiv').Value := EmptyStr;
  ibSP.ParamByName('cidv').Value := EmptyStr;
  ibSP.ParamByName('cmuv').Value := EmptyStr;
  ibSP.ParamByName('estv').Value := EmptyStr;

  { Informações Adicionais }
  ibSP.ParamByName('obso').Value := EmptyStr;
  ibSP.ParamByName('obse').Value := EmptyStr;

  { Usuário }
  ibSP.ParamByName('dusu').Value := RECUsuarios.Login;

  { Status }
  ibSP.ParamByName('stav').Value := 'A';

  { Dispositivos }
  ibSP.ParamByName('IP'  ).Value := RECParametros.IP;
  ibSP.ParamByName('HOST').Value := RECParametros.HOST;

  { Dropar }
  ibSP.ParamByName('dd4' ).Value := EmptyStr;
  ibSP.ParamByName('dd6' ).Value := EmptyStr;
  ibSP.ParamByName('fdd4').Value := EmptyStr;
  ibSP.ParamByName('cdd4').Value := EmptyStr;
  ibSP.ParamByName('fdd6').Value := EmptyStr;
  ibSP.ParamByName('cdd6').Value := EmptyStr;
  ibSP.ParamByName('tce1').Value := EmptyStr;
  ibSP.ParamByName('ftc1').Value := EmptyStr;
  ibSP.ParamByName('fnce').Value := EmptyStr;
  ibSP.ParamByName('ftc2').Value := EmptyStr;
  ibSP.ParamByName('ncel').Value := EmptyStr;
  ibSP.ParamByName('cnce').Value := EmptyStr;
  ibSP.ParamByName('tce2').Value := EmptyStr;
  ibSP.ParamByName('ctc1').Value := EmptyStr;
  ibSP.ParamByName('ctc2').Value := EmptyStr;
  ibSP.ExecProc;

  IBTra.Commit;
  Close;
end;

end.
