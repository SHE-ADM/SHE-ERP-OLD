unit pimporta_geral_favorecido;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB, IBCustomDataSet,
  IBQuery, RxSpeedBar, ComCtrls, ExtCtrls, dxExEdtr, dxEdLib, dxEditor,
  dxCntner, StdCtrls, IBEvents, IBSQL, ActnList, cxGraphics, cxControls,
  dxStatusBar, rxAnimate, rxGIFCtrl;

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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure _WM_AFTER_ACTIVATE(var Msg: TMessage); message WM_AFTER_ACTIVATE;
  end;

var
  frmimporta_geral_favorecido: Tfrmimporta_geral_favorecido;

implementation

{$R *.dfm}

uses uPrincipal;

procedure TFrmIMPORTA_GERAL_FAVORECIDO._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
  inherited;
end;

procedure Tfrmimporta_geral_favorecido.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'FIS_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GAdmin := True; { Grant }
  inherited;
end;

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

    SPEdicao.Close;
    SPEdicao.StoredProcName := 'SP_CAD_CLI';
    SPEdicao.Prepare;
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

    SPEdicao.Close;
    SPEdicao.StoredProcName := 'SP_CAD_FOR';
    SPEdicao.Prepare;
  end;

  { Cadastro }
  SPEdicao.ParamByName('ID'  ).Value := 0;
  SPEdicao.ParamByName('IDEP').Value := RECParametros.EP_ID;
  SPEdicao.ParamByName('IDCA').Value := RECUsuarios.Id;
  
  SPEdicao.ParamByName('dfun').Value := RECParametros.SHE_DATA;
  SPEdicao.ParamByName('NAFA').Value := 0;

  { Sintegra }
  SPEdicao.ParamByName('fant').Value := StringReplace(oREPApostrofos(EDFANT.Text),Char(39),'',[rfReplaceAll]);
  SPEdicao.ParamByName('raza').Value := StringReplace(oREPApostrofos(EDRAZA.Text),Char(39),'',[rfReplaceAll]);
  SPEdicao.ParamByName('degp').Value := EmptyStr;
  SPEdicao.ParamByName('ramo').Value := EmptyStr;

  SPEdicao.ParamByName('cnpj').Value := edcnpj.Text;
  SPEdicao.ParamByName('insc').Value := edinsc.Text;
  SPEdicao.ParamByName('imun').Value := EmptyStr;
  SPEdicao.ParamByName('ccm').Value  := EmptyStr;
  SPEdicao.ParamByName('cpf').Value  := EmptyStr;

  { Fiscal }
  SPEdicao.ParamByName('reve').Value := 0;
  SPEdicao.ParamByName('ricm').Value := 1;
  SPEdicao.ParamByName('cicm').Value := 0;

  { Programações }
  SPEdicao.ParamByName('tipo'   ).Value := 0;
  SPEdicao.ParamByName('reserva').Value := 0;

  { Vendedores }
  SPEdicao.ParamByName('cven').Value := RECUsuarios.Id;         { Interno }
  SPEdicao.ParamByName('crep').Value := RECParametros.CR_ID; { Externo }

  { Comercial }
  SPEdicao.ParamByName('cont').Value := EmptyStr;
  SPEdicao.ParamByName('mail').Value := EmptyStr;

  { Fone }
  SPEdicao.ParamByName('ddd' ).Value := edddd.Text;
  SPEdicao.ParamByName('tel1').Value := edtel1.Text;
  SPEdicao.ParamByName('dd2' ).Value := EmptyStr;
  SPEdicao.ParamByName('tel2').Value := EmptyStr;
  SPEdicao.ParamByName('dd3' ).Value := EmptyStr;
  SPEdicao.ParamByName('tel3').Value := EmptyStr;

  { Celular }
  SPEdicao.ParamByName('dd5' ).Value := EmptyStr;
  SPEdicao.ParamByName('cel' ).Value := EmptyStr;
  SPEdicao.ParamByName('neid').Value := EmptyStr;

  { Endereço }
  SPEdicao.ParamByName('tlog').Value := edtlog.Text;
  SPEdicao.ParamByName('logr').Value := edlogr.Text;
  SPEdicao.ParamByName('nume').Value := ednume.Text;
  SPEdicao.ParamByName('comp').Value := edcomp.Text;
  SPEdicao.ParamByName('cep' ).Value := edcep.Text;
  SPEdicao.ParamByName('cmun').Value := edcmun.Text;
  SPEdicao.ParamByName('bai' ).Value := edbai.Text;
  SPEdicao.ParamByName('cid' ).Value := edcid.Text;
  SPEdicao.ParamByName('esta').Value := eduf.Text;

  { Financeiro }
  SPEdicao.ParamByName('fcon').Value := EmptyStr;
  SPEdicao.ParamByName('fmai').Value := EmptyStr;

  { Fone }
  SPEdicao.ParamByName('fddd').Value := EmptyStr;
  SPEdicao.ParamByName('fte1').Value := EmptyStr;
  SPEdicao.ParamByName('fdd2').Value := EmptyStr;
  SPEdicao.ParamByName('fte2').Value := EmptyStr;
  SPEdicao.ParamByName('fdd3').Value := EmptyStr;
  SPEdicao.ParamByName('fte3').Value := EmptyStr;

  { Celular }
  SPEdicao.ParamByName('fdd5').Value := EmptyStr;
  SPEdicao.ParamByName('fcel').Value := EmptyStr;
  SPEdicao.ParamByName('fnid').Value := EmptyStr;

  { Endereço }
  SPEdicao.ParamByName('tloc').Value := EmptyStr; 
  SPEdicao.ParamByName('logc').Value := EmptyStr;
  SPEdicao.ParamByName('numc').Value := EmptyStr;
  SPEdicao.ParamByName('comc').Value := EmptyStr;
  SPEdicao.ParamByName('cepc').Value := EmptyStr;
  SPEdicao.ParamByName('baic').Value := EmptyStr;
  SPEdicao.ParamByName('cidc').Value := EmptyStr;
  SPEdicao.ParamByName('cmuc').Value := EmptyStr;
  SPEdicao.ParamByName('estc').Value := EmptyStr;

  { Compras }
  SPEdicao.ParamByName('ccon').Value := EmptyStr;
  SPEdicao.ParamByName('cmai').Value := EmptyStr;

  { Fone }
  SPEdicao.ParamByName('cddd').Value := EmptyStr;
  SPEdicao.ParamByName('cte1').Value := EmptyStr;
  SPEdicao.ParamByName('cdd2').Value := EmptyStr;
  SPEdicao.ParamByName('cte2').Value := EmptyStr;
  SPEdicao.ParamByName('cdd3').Value := EmptyStr;
  SPEdicao.ParamByName('cte3').Value := EmptyStr;

  { Celular }
  SPEdicao.ParamByName('cdd5').Value := EmptyStr;
  SPEdicao.ParamByName('ccel').Value := EmptyStr;
  SPEdicao.ParamByName('cnid').Value := EmptyStr;

  { Endereço }
  SPEdicao.ParamByName('tlov').Value := EmptyStr;
  SPEdicao.ParamByName('logv').Value := EmptyStr;
  SPEdicao.ParamByName('numv').Value := EmptyStr;
  SPEdicao.ParamByName('comv').Value := EmptyStr;
  SPEdicao.ParamByName('cepv').Value := EmptyStr;
  SPEdicao.ParamByName('baiv').Value := EmptyStr;
  SPEdicao.ParamByName('cidv').Value := EmptyStr;
  SPEdicao.ParamByName('cmuv').Value := EmptyStr;
  SPEdicao.ParamByName('estv').Value := EmptyStr;

  { Informações Adicionais }
  SPEdicao.ParamByName('obso').Value := EmptyStr;
  SPEdicao.ParamByName('obse').Value := EmptyStr;

  { Usuário }
  SPEdicao.ParamByName('dusu').Value := RECUsuarios.Login;

  { Status }
  SPEdicao.ParamByName('stav').Value := 'A';

  { Dispositivos }
  SPEdicao.ParamByName('IP'  ).Value := RECParametros.IP;
  SPEdicao.ParamByName('HOST').Value := RECParametros.HOST;

  { Dropar }
  SPEdicao.ParamByName('dd4' ).Value := EmptyStr;
  SPEdicao.ParamByName('dd6' ).Value := EmptyStr;
  SPEdicao.ParamByName('fdd4').Value := EmptyStr;
  SPEdicao.ParamByName('cdd4').Value := EmptyStr;
  SPEdicao.ParamByName('fdd6').Value := EmptyStr;
  SPEdicao.ParamByName('cdd6').Value := EmptyStr;
  SPEdicao.ParamByName('tce1').Value := EmptyStr;
  SPEdicao.ParamByName('ftc1').Value := EmptyStr;
  SPEdicao.ParamByName('fnce').Value := EmptyStr;
  SPEdicao.ParamByName('ftc2').Value := EmptyStr;
  SPEdicao.ParamByName('ncel').Value := EmptyStr;
  SPEdicao.ParamByName('cnce').Value := EmptyStr;
  SPEdicao.ParamByName('tce2').Value := EmptyStr;
  SPEdicao.ParamByName('ctc1').Value := EmptyStr;
  SPEdicao.ParamByName('ctc2').Value := EmptyStr;
  SPEdicao.ExecProc;

  TEdicao.Commit;
  Close;
end;

end.
