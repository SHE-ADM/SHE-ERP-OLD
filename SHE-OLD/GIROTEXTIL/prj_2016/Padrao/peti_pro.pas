unit peti_pro;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, StdCtrls,
  dxCntner, dxEditor, dxEdLib, dxExEdtr, rxSpeedbar;

type
  Tfrmeti_pro = class(Tfrmpadr3)
    siPRI: TSpeedItem;
    siVIS: TSpeedItem;
    siCSE: TSpeedItem;
    Panel1: TPanel;
    Label1: TLabel;
    lanlan: TLabel;
    Label3: TLabel;
    ladlan: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    laqped: TLabel;
    ladped: TLabel;
    lanped: TLabel;
    Label13: TLabel;
    laeped: TLabel;
    Label15: TLabel;
    lannfe: TLabel;
    Label17: TLabel;
    ladnfe: TLabel;
    Label19: TLabel;
    lacped: TLabel;
    Label21: TLabel;
    lavped: TLabel;
    Label23: TLabel;
    larped: TLabel;
    Label2: TLabel;
    larlan: TLabel;
    Label4: TLabel;
    laolan: TLabel;
    Label6: TLabel;
    laelan: TLabel;
    Label10: TLabel;
    lapped: TLabel;
    laipro: TLabel;
    lacpro: TLabel;
    Label12: TLabel;
    ladpro: TLabel;
    ladcor: TLabel;
    Label16: TLabel;
    Label33: TLabel;
    edcdet: TdxMaskEdit;
    Shape21: TShape;
    Label14: TLabel;
    linha2: TShape;
    Shape1: TShape;
    Label18: TLabel;
    Shape2: TShape;
    cbTIPO: TdxImageEdit;
    edqlan: TdxMaskEdit;
    siALT: TSpeedItem;
    Label20: TLabel;
    ladsep: TLabel;
    aux: TIBQuery;
    ped_ven_cab: TIBQuery;
    ped_ven_cabID: TIntegerField;
    ped_ven_cabROM_DERO: TIBStringField;
    ped_ven_cabROM_DROM: TDateField;
    ped_ven_cabROM_CDRO: TIntegerField;
    ped_ven_cabROM_CDNF: TIntegerField;
    ped_ven_cabROM_QTVE: TIBBCDField;
    ped_ven_cabROM_RLVE: TIntegerField;
    ped_ven_cabROM_STPD: TIBStringField;
    ped_ven_cabROM_STFI: TIBStringField;
    ped_ven_cabROM_STCO: TIBStringField;
    ped_ven_cabROM_CVEN: TIntegerField;
    ped_ven_cabFUN_APEL: TIBStringField;
    ped_ven_cabROM_CCLI: TIntegerField;
    ped_ven_cabCLI_FANT: TIBStringField;
    ped_ven_cabROM_TCDE: TIBBCDField;
    ped_ven_ite: TIBQuery;
    ped_ven_iteID: TIntegerField;
    ped_ven_iteROM_CCAB: TIntegerField;
    ped_ven_iteROM_CDOC: TIntegerField;
    ped_ven_iteROM_CDPR: TIntegerField;
    ped_ven_iteROM_CDPD: TIntegerField;
    ped_ven_iteROM_CDRO: TIntegerField;
    ped_ven_iteROM_CDRD: TIntegerField;
    ped_ven_iteROM_CDNF: TIntegerField;
    ped_ven_iteROM_ITEM: TIBStringField;
    ped_ven_iteROM_CPRO: TIntegerField;
    ped_ven_iteROM_CPR2: TIntegerField;
    ped_ven_iteROM_CDET: TIBStringField;
    ped_ven_iteROM_QTDE: TIBBCDField;
    ped_ven_iteROM_QTRL: TIntegerField;
    ped_ven_iteROM_QTSP: TIBBCDField;
    ped_ven_iteROM_RLSP: TIntegerField;
    ped_ven_iteROM_QTPD: TIBBCDField;
    ped_ven_iteROM_RLPD: TIntegerField;
    ped_ven_iteROM_VDSC: TIBBCDField;
    ped_ven_iteROM_TOTA: TIBBCDField;
    ped_ven_iteROM_FLAG: TIBStringField;
    ped_ven_iteROM_COMI: TIBBCDField;
    ped_ven_iteROM_DPRO: TIBStringField;
    ped_ven_iteROM_TPRC: TIBStringField;
    ped_ven_iteROM_ABCD: TIBStringField;
    ped_ven_iteROM_DCOR: TIBStringField;
    ped_ven_iteROM_PCOR: TIBStringField;
    ped_ven_iteID1: TIntegerField;
    ped_ven_itePRO_CART: TIBStringField;
    ped_ven_itePRO_CPRO: TIBStringField;
    ped_ven_itePRO_CCOR: TIntegerField;
    ped_ven_itePRO_RCOR: TIBStringField;
    ped_ven_itePRO_DCOR: TIBStringField;
    ped_ven_itePRO_DUNI: TIBStringField;
    ped_ven_itePRO_PIPI: TSmallintField;
    ped_ven_itePRO_REPR: TIBStringField;
    ped_ven_itePRO_CBAR: TIBStringField;
    ped_ven_itePRO_CEMB: TIntegerField;
    ped_ven_itePRO_GRAD: TIBStringField;
    ped_ven_itePRO_FOTO: TBlobField;
    ped_ven_iteROM_UNIT: TFloatField;
    ped_ven_iteROM_PREC: TFloatField;
    ped_ven_iteROM_DCO2: TIBStringField;
    ped_ven_iteROM_PCO2: TIBStringField;
    ped_ven_itePRO_PPRO: TFloatField;
    ped_ven_iteROM_DSEP: TIBStringField;
    psq_cli: TIBQuery;
    psq_cliID: TIntegerField;
    psq_cliCLI_FANT: TIBStringField;
    psq_cliCLI_RAZA: TIBStringField;
    psq_cliCLI_CNPJ: TIBStringField;
    psq_cliCLI_CPF: TIBStringField;
    psq_cliCLI_CRED: TIBBCDField;
    psq_cliCLI_CID: TIBStringField;
    psq_cliCLI_TLOG: TIBStringField;
    psq_cliCLI_BAI: TIBStringField;
    psq_cliCLI_LOGR: TIBStringField;
    psq_cliCLI_NUME: TIBStringField;
    psq_cliCLI_CEP: TIBStringField;
    psq_cliCLI_COMP: TIBStringField;
    psq_cliCLI_ESTA: TIBStringField;
    psq_cliCLI_STA: TIBStringField;
    psq_cliCLI_STAV: TIBStringField;
    psq_cliCLI_DPAG: TIBStringField;
    psq_cliCLI_OBSO: TMemoField;
    psq_cliCLI_VDSC: TIBBCDField;
    psq_cliCLI_DCAD: TDateField;
    psq_cliCLI_DFUN: TDateField;
    psq_cliCLI_DALT: TDateField;
    psq_cliCLI_DULT: TDateField;
    psq_cliCLI_DDD: TIBStringField;
    psq_cliCLI_TEL1: TIBStringField;
    psq_cliREP_FANT: TIBStringField;
    psq_cliUSU_DUSU: TIBStringField;
    psq_cliCLI_STPD: TSmallintField;
    psq_cliCLI_DTRA: TIBStringField;
    psq_cliCLI_VULT: TIBBCDField;
    cli_sta: TIBQuery;
    cli_staFIN_DOCT: TIBStringField;
    cli_staFIN_DVEN: TDateField;
    cli_staFIN_VALO: TIBBCDField;
    edfatu: TdxMaskEdit;
    cad_cli_crd: TIBDataSet;
    cad_cli_crdID: TIntegerField;
    cad_cli_crdCLI_CDEP: TIntegerField;
    cad_cli_crdCLI_CCLI: TIntegerField;
    cad_cli_crdCLI_CRED: TIBBCDField;
    procedure edcdetKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure siVISClick(Sender: TObject);
    procedure siPRIClick(Sender: TObject);
    procedure siCANClick(Sender: TObject);
    procedure siCSEClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbTIPOChange(Sender: TObject);
    procedure siALTClick(Sender: TObject);
  private
    { Private declarations }
    procedure STATUS_ETIQUETA;
    procedure ALTERA_ETIQUETA;
    procedure CANCELA_ETIQUETA;
    procedure CANCELA_SEPARACAO;
    procedure LIMPA_ETIQUETA;
    procedure PESQUISA_ETIQUETA;
    procedure ENT_PRO_ETIQUETAS;
    function RETORNA_STFI: string;
  public
    { Public declarations }
  end;

var
  frmeti_pro: Tfrmeti_pro;
  test: string;

implementation

uses uPrincipal, qeti_pro_mat, uFrmLogin;

{$R *.dfm}

function Tfrmeti_pro.RETORNA_STFI: string;
var
  stfi: string;
begin
  stfi := '';

  if (ped_ven_cabROM_STPD.AsString <> 'DEVOLUÇÃO') and (ped_ven_cabROM_STPD.AsString <> 'ABATIMENTO') and (ped_ven_cabROM_STCO.AsString <> 'SEM COBRANÇA') then
  begin
    if psq_cliCLI_STAV.AsString = 'S' then
    begin
      stfi := 'SUSPENSO';

      cli_sta.Close;
      cli_sta.ParamByName('FIN_STFI').Value := 'PROTESTADO';
      cli_sta.ParamByName('FIN_CCLI').Value := psq_cliID.AsString;
      cli_sta.Open;

      if not cli_sta.Fields[0].IsNull then
      stfi := 'PROTESTADO' else
      begin
        cli_sta.Close;
        cli_sta.ParamByName('FIN_STFI').Value := 'NÃO PAGO';
        cli_sta.ParamByName('FIN_CCLI').Value := psq_cliID.AsString;
        cli_sta.Open;

        if not cli_sta.Fields[0].IsNull then
        stfi := 'NÃO PAGO';
      end;
    end
    else
    begin
      if frmprincipal.parametrosPAR_FANT.AsString <> 'OTIMOTEX FARDO' then
      stfi := frmprincipal.CALCULA_LIMITE_VENDA(true,ped_ven_cabROM_STCO.AsString,edfatu.Text,psq_cliID.AsString,ped_ven_cabROM_TCDE.AsString,cad_cli_crdCLI_CRED.AsString);

      if stfi = '' then
      stfi := frmprincipal.CALCULA_LIMITE_BANCARIO(true,ped_ven_cabROM_STCO.AsString,edfatu.Text,psq_cliID.AsString);

      if stfi = '' then
      stfi := frmprincipal.CALCULA_LIMITE_CARTEIRA(true,ped_ven_cabROM_STCO.AsString,edfatu.Text,psq_cliID.AsString);
    end;
  end;

  if stfi = '' then
  stfi := 'PENDENTE';

  result := stfi;
end;

procedure Tfrmeti_pro.STATUS_ETIQUETA;
begin
  siVIS.Enabled := false;
  siALT.Enabled := false;
  siCAN.Enabled := false;
  siCSE.Enabled := false;

  if laolan.Caption = 'ENTRADA' then
  begin
    siVIS.Enabled := true;
    siALT.Enabled := true;
    siCAN.Enabled := true;
  end;

  if laeped.Caption = 'SEPARADO' then
  begin
    siVIS.Enabled := false;
    siALT.Enabled := false;
    siCAN.Enabled := false;
    siCSE.Enabled := true;
  end;

  if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Produtos','Estoque','Alterar Estoque'   ,false) then
  siALT.Enabled := false;

  if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Produtos','Estoque','Cancelar Separação',false) then
  siCSE.Enabled := false;

  if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Produtos','Estoque','Cancelar Estoque'  ,false) then
  siCAN.Enabled := false;
end;

procedure Tfrmeti_pro.ALTERA_ETIQUETA;
begin
  if oYesNo(handle,'Confirma alteração da separação ?') = mrno then
     abort;

  if laeped.Caption = 'SEPARADO' then
  raise exception.Create('Não é possível alterar etiqueta em separação.');

  if laolan.Caption <> 'ENTRADA' then
  raise exception.Create('Etiqueta inválida. '+#13+'Apenas etiquetas de entrada de estoque podem ser alteradas.');

  with frmprincipal.sp_sql do
  begin
    ibSP.StoredProcName := 'SP_SQL';

    SQL.Clear;
    if cbTIPO.Text = 'ETIQUETA NORMAL' then
    SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_est']) else
    SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_def']);
    SQL.Add('SET    EST_CRED = '''+oStrTran(floattostr(oTextToValor(edqlan.Text)),',','.')+'''');
    SQL.Add('WHERE  EST_CDET = '''+edcdet.Text+'''');

    ibSP.Prepare;
    ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
    ibSP.ExecProc;
    IBTra.CommitRetaining;
    frmprincipal.Log_Eve('Produtos','Alteração de Etiqueta',LOWERCASE(cbTIPO.Text),edcdet.Text,lacpro.Caption,LOWERCASE(ladpro.Caption),'','');
  end;

  messageBox(handle,'Alteração de etiqueta efetuado com sucesso !',PChar(Self.Caption),MB_ICONINFORMATION+MB_OK);
end;

procedure Tfrmeti_pro.CANCELA_SEPARACAO;

function RETORNA_LOGIN(texto: string): boolean;
var
  BRet: boolean;
begin
  AUTORIZACAO      := '';
  TP_AUTORIZACAO   := '';
  frmlogin         := TFrmlogin.Create(self);
  frmlogin.Caption := texto;

  try
    frmlogin.Tag := 2;
    frmlogin.ShowModal;
  finally
    if frmlogin.cad_usuUSU_CUSU.AsString = '' then
    BRet := false
    else
    BRet := (frmprincipal.ACESSO(frmlogin.cad_usuUSU_CUSU.AsString,'USU_AUTO','Produtos','Estoque','Encarregado',false));

    if frmlogin.cad_usuUSU_ADM.AsString = '1' then
    BRet := true;

    if frmlogin.cad_usuUSU_DUSU.AsString = ladsep.Caption then
    BRet := true;
    
    if BRet then
    begin
      AUTORIZACAO    := frmlogin.cad_usuUSU_DUSU.AsString;
      TP_AUTORIZACAO := texto;
    end;

    freeAndNil(frmlogin);
    frmlogin.Free;
  end;

  result := BRet;
end;

begin
  if oYesNo(handle,'Confirma cancelamento da separação ?') = mrno then
  abort;

  if laeped.Caption <> 'SEPARADO' then
  raise exception.Create('Etiqueta não reservada para separação !');

  if frmprincipal.cad_usuUSU_DUSU.AsString <> ladsep.Caption then
  begin
    if not RETORNA_LOGIN('Permissão para cancelar separação de outro separador') then
    begin
      ShowMessage('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
      abort;
    end;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,EST_DOCU FROM '+SLPrincipal.Values['cad_pro_est']);
    SQL.Add('WHERE  EST_CDET = '''+edcdet.Text+'''');
    SQL.Add('AND    EST_FLAG = ''V''');
    Open;

    if not fields[0].IsNull then
    raise exception.Create('Não é possível cancelar separação de etiqueta que já foi faturada !'+#13+
                           'Pedido No '+fields[1].AsString);

    SQL.Clear;
    SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_est']);
    SQL.Add('SET    EST_CDPD = NULL,');
    SQL.Add('       EST_DSEP = NULL');
    SQL.Add('WHERE  EST_CDET = '''+edcdet.Text+'''');
    ExecSQL;

    SQL.Clear;
    SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_sep']);
    SQL.Add('WHERE  EST_CDET = '''+edcdet.Text+'''');
    ExecSQL;
    IBTra.CommitRetaining;

    aux.SQL.Clear;
    aux.SQL.Add('SELECT SUM(EST_CRED),COUNT(*) FROM '+SLPrincipal.Values['cad_pro_sep']);
    aux.SQL.Add('WHERE  EST_CDPD = '''+inttostr(lanped.Tag)+'''');
    aux.SQL.Add('AND    EST_CPRO = '''+inttostr(lacpro.Tag) +'''');
    aux.Open;

    SQL.Clear;
    SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
    SQL.Add('SET    ROM_QTPD = '''+oStrTran(FloatToStr(aux.Fields[0].AsFloat),',','.')+''',');
    SQL.Add('       ROM_RLPD = '''+aux.Fields[1].AsString+'''');

    if aux.Fields[0].AsFloat = 0 then
    SQL.Add(',ROM_DSEP = NULL');

    SQL.Add('WHERE  ROM_CCAB = '''+inttostr(lanped.Tag)+'''');
    SQL.Add('AND    ROM_CPRO = '''+inttostr(lacpro.Tag) +'''');
    ExecSQL;

    SQL.Clear;
    SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_res']);
    SQL.Add('WHERE  EST_CDPD = '''+inttostr(lanped.Tag)              +'''');
    SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    ExecSQL;
    IBTra.CommitRetaining;

    aux.SQL.Clear;
    aux.SQL.Add('SELECT SUM(EST_CRED),COUNT(*) FROM '+SLPrincipal.Values['cad_pro_sep']);
    aux.SQL.Add('WHERE  EST_CDPD = '''+inttostr(lanped.Tag)+'''');
    aux.Open;

    if aux.Fields[0].AsFloat = 0 then
    begin
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('SET    ROM_STFI = '''+RETORNA_STFI+''',');
      SQL.Add('       ROM_QTPD = NULL,');
      SQL.Add('       ROM_DSEP = NULL');
      SQL.Add('WHERE  ID = '''+inttostr(lanped.Tag)+'''');
      ExecSQL;

      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
      SQL.Add('SET    ROM_QTPD = NULL,');
      SQL.Add('       ROM_RLPD = NULL,' );
      SQL.Add('       ROM_DSEP = NULL');
      SQL.Add('WHERE  ROM_CCAB = '''+inttostr(lanped.Tag)+'''');
      ExecSQL;
    end else
    begin
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('SET    ROM_QTPD = '''+oStrTran(FloatToStr(aux.Fields[0].AsFloat),',','.')+'''');
      SQL.Add('WHERE  ID = '''+inttostr(lanped.Tag)+'''');
      ExecSQL;
    end;
    IBTra.CommitRetaining;

    ped_ven_ite.First;
    while not ped_ven_ite.Eof do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM '+SLPrincipal.Values['cad_pro_sep']);
      SQL.Add('WHERE  EST_CPRO = '''+ped_ven_iteROM_CPRO.AsString+'''');
      SQL.Add('AND    EST_CDPD = '''+inttostr(lanped.Tag)+'''');
      Open;

      if fields[0].IsNull then
      begin
        ibSP.StoredProcName := 'SP_CAD_PRO_RES';
        ibSP.Prepare;

        ibSP.ParamByName('est').Value  := 'CAD_PRO_RES';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('est').Value  := 'CAD_PRO_RES_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

        ibSP.ParamByName('id').Value   := 0;
        ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
        ibSP.ParamByName('cdro').Value := 0;
        ibSP.ParamByName('cdpd').Value := ped_ven_iteROM_CCAB.AsInteger;
        ibSP.ParamByName('cdbx').Value := 0;
        ibSP.ParamByName('cpro').Value := ped_ven_iteROM_CPRO.AsInteger;
        ibSP.ParamByName('cusu').Value := ped_ven_cabROM_CVEN.AsInteger;
        ibSP.ParamByName('dusu').Value := ped_ven_cabFUN_APEL.AsString;
        ibSP.ParamByName('cfav').Value := ped_ven_cabROM_CCLI.AsInteger;
        ibSP.ParamByName('dfav').Value := ped_ven_cabCLI_FANT.AsString;
        ibSP.ParamByName('dcad').Value := strtodate(SLPrincipal.Values['data_sistema']);
        ibSP.ParamByName('docu').Value := ped_ven_cabROM_DERO.AsString;
        ibSP.ParamByName('flag').Value := 'R';
        ibSP.ParamByName('cdet').Value := '';
        ibSP.ParamByName('dsep').Value := '';
        ibSP.ParamByName('debi').Value := 0;
        ibSP.ParamByName('cred').Value := ped_ven_iteROM_QTDE.AsFloat;
        ibSP.ParamByName('dmap').Value := '';
        ibSP.ParamByName('ctnr').Value := '';
        ibSP.ParamByName('lote').Value := '';
        ibSP.ExecProc;
        IBTra.CommitRetaining;
      end;

      ped_ven_ite.Next;
    end;
    
    frmprincipal.Log_Eve('Produtos','Cancelamento de Separação',LOWERCASE(cbTIPO.Text),edcdet.Text,lacpro.Caption,LOWERCASE(ladpro.Caption),'','');
  end;

  PESQUISA_ETIQUETA;
  messageBox(handle,'Cancelamento de separação de etiqueta efetuado com sucesso !',PChar(Self.Caption),MB_ICONINFORMATION+MB_OK);
end;

procedure Tfrmeti_pro.CANCELA_ETIQUETA;
begin
  if oYesNo(handle,'Confirma exclusão do estoque ?') = mrno then
     abort;

  if laeped.Caption  = 'SEPARADO' then
  raise exception.Create('Não é possível cancelar. '+#13+'Etiqueta em separação.');

  with frmprincipal.sp_sql do
  begin
    ibSP.StoredProcName := 'SP_SQL';

    if cbTIPO.Text = 'ETIQUETA NORMAL' then
    begin
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_ENI');
      SQL.Add('WHERE  PRO_CDET = '''+edcdet.Text+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_est']);
      SQL.Add('WHERE  EST_CDET = '''+edcdet.Text+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end else
    begin
      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_def']);
      SQL.Add('WHERE  EST_CDET = '''+edcdet.Text+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    IBTra.CommitRetaining;
    frmprincipal.Log_Eve('Produtos','Cancelamento de Etiqueta',LOWERCASE(cbTIPO.Text),edcdet.Text,lacpro.Caption,LOWERCASE(ladpro.Caption),'','');
  end;

  messageBox(handle,'Exclusão do estoque efetuado com sucesso !',PChar(Self.Caption),MB_ICONINFORMATION+MB_OK);

  edcdet.Text := '';
  LIMPA_ETIQUETA;
end;

procedure Tfrmeti_pro.ENT_PRO_ETIQUETAS;
begin
  if edcdet.Text = '' then
     raise exception.Create('Número de etiqueta não informado !');
     
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Etiqueta de Estoque');

  if qrpeti_pro_mat = nil then
     qrpeti_pro_mat := Tqrpeti_pro_mat.Create(self);

  try
    with qrpeti_pro_mat.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT EST_CPRO,PRO_CPRO,PRO_DPRO,PRO_DUNI,PRO_DCOR,PRO_COMP,PRO_CCST,EST_CDET,EST_CRED FROM CAD_PRO,'+SLPrincipal.Values['cad_pro_est']);
      SQL.Add('WHERE  CAD_PRO.ID = EST_CPRO');
      SQL.Add('AND    EST_CDET = '''+edcdet.Text+'''');
      Open;
    end;

    qrpeti_pro_mat.ReportTitle := 'ETIQUETAS DE CONTROLE DE ESTOQUE';
    qrpeti_pro_mat.Prepare;
    
    if tag = 0 then
       qrpeti_pro_mat.Preview
    else if tag = 1 then
       qrpeti_pro_mat.Print;
  finally
    freeAndNil(qrpeti_pro_mat);
    qrpeti_pro_mat.Free;
  end;
end;

procedure Tfrmeti_pro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {};
end;

procedure Tfrmeti_pro.LIMPA_ETIQUETA;
begin
  lacpro.Caption := 'NADA CONSTA';
  ladpro.Caption := 'NADA CONSTA';
  ladcor.Caption := 'NADA CONSTA';
  lanlan.Caption := 'NADA CONSTA';
  ladlan.Caption := 'NADA CONSTA';
  laelan.Caption := 'NADA CONSTA';
  edqlan.Text    := 'NADA CONSTA';
  edqlan.Hint    := 'NADA CONSTA';
  laolan.Caption := 'NADA CONSTA';
  larlan.Caption := 'NADA CONSTA';
  lanped.Caption := 'NADA CONSTA';
  ladped.Caption := 'NADA CONSTA';
  lacped.Caption := 'NADA CONSTA';
  lavped.Caption := 'NADA CONSTA';
  larped.Caption := 'NADA CONSTA';
  laqped.Caption := 'NADA CONSTA';
  laeped.Caption := 'NADA CONSTA';
  lannfe.Caption := 'NADA CONSTA';
  ladnfe.Caption := 'NADA CONSTA';
  ladsep.Caption := 'NADA CONSTA';
  lapped.Caption := 'NADA CONSTA';
end;

procedure Tfrmeti_pro.PESQUISA_ETIQUETA;
begin
  LIMPA_ETIQUETA;

  if edcdet.Text = '' then
  exit;

  if not oBSONumero(edcdet.Text) then
     raise exception.Create('Número da etiqueta inválido !');

  edcdet.Text := oStrZero(strtoint(edcdet.Text),10);

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   EST_DFAV,EST_CDRO,EST_DCAD,EST_FLAG,EST_DUSU,EST_CRED,EST_DEBI,EST_CPRO,PRO_CPRO,PRO_DCOR,PRO_DPRO,EST_CDPD,EST_DOCU,EST_DSEP');
    if cbTIPO.Text = 'ETIQUETA NORMAL' then
    SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['cad_pro_est']) else
    SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['cad_pro_def']);
    SQL.Add('WHERE    EST_CPRO = CAD_PRO.ID');
    SQL.Add('AND      EST_CDET = '''+edcdet.Text+'''');
    SQL.Add('ORDER BY EST_FLAG DESC');
    Open;
  end;

  if consulta.Fields[0].IsNull then
  raise exception.Create('Número de etiqueta não encontrado !');

  lanlan.Caption := consulta.Fields[1].AsString;
  ladlan.Caption := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
  laelan.Caption := consulta.Fields[0].AsString;
  edqlan.text    := formatFloat('#,0.00',consulta.Fields[5].AsFloat);
  edqlan.Hint    := formatFloat('#,0.00',consulta.Fields[5].AsFloat);
  larlan.Caption := consulta.Fields[4].AsString;
  lacpro.Tag     := consulta.Fields[7].AsInteger;
  lacpro.Caption := consulta.Fields[8].AsString;
  ladcor.Caption := consulta.Fields[9].AsString;
  ladpro.Caption := consulta.Fields[10].AsString;
  lanped.Tag     := consulta.Fields[11].AsInteger;
  ladsep.Caption := consulta.Fields[13].AsString;

  if consulta.Fields[3].AsString = 'V' then
  label7.Hint := consulta.Fields[12].AsString;

  if cbTIPO.Text = 'ETIQUETA NORMAL' then
  begin
    if consulta.Fields[3].AsString = 'E' then
    begin
      laolan.Caption := 'ENTRADA';
      laeped.Caption := 'NADA CONSTA';
      if lanped.Tag > 0 then
      laeped.Caption := 'SEPARADO';
    end else
    if consulta.Fields[3].AsString = 'S' then
    laolan.Caption := 'SAÍDA' else
    if consulta.Fields[3].AsString = 'I' then
    laolan.Caption := 'INVENTÁRIO' else
    if consulta.Fields[3].AsString = 'V' then
    laolan.Caption := 'FATURADO';

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PED_VEN_CAB.ID,ROM_DERO,ROM_DROM,CLI_FANT,FUN_APEL,REP_FANT,ROM_QTVE,ROM_RLVE,PED_VEN_CAB.ROM_CDNF,PED_VEN_CAB.ROM_DNFS');
      SQL.Add('FROM   CAD_CLI,CAD_FUN,CAD_REP,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE" ,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE  PED_VEN_CAB.ID       = PED_VEN_ITE.ROM_CCAB');
      SQL.Add('AND    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND    PED_VEN_CAB.ROM_CVEN = CAD_FUN.ID');
      SQL.Add('AND    PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
      if laolan.Caption <> 'FATURADO' then
      SQL.Add('AND    PED_VEN_CAB.ID       = '''+inttostr(lanped.Tag)+'''') else
      SQL.Add('AND    PED_VEN_CAB.ROM_DERO = '''+label7.Hint+'''');
      SQL.Add('AND    PED_VEN_ITE.ROM_CPRO = '''+inttostr(lacpro.Tag)+'''');
      Open;

      if not fields[0].IsNull then
      begin
        lanped.Tag     := fields[0].AsInteger;
        lanped.Caption := fields[1].AsString;
        ladped.Caption := formatDateTime('dd/mm/yy',fields[2].AsDateTime);
        if fields[2].AsDateTime < 0 then
        ladped.Caption := 'NADA CONSTA';
        lacped.Caption := fields[3].AsString;
        lavped.Caption := fields[4].AsString;
        larped.Caption := fields[5].AsString;
        laqped.Caption := formatFloat('#,0.00',fields[6].AsFloat);
        lapped.Caption := fields[7].AsString;
        if fields[8].AsString <> '' then
        lannfe.Caption := fields[8].AsString;
        ladnfe.Caption := 'NADA CONSTA';
        if fields[9].AsDateTime > 0 then
        ladnfe.Caption := formatDateTime('dd/mm/yy',fields[9].AsDateTime);

        if laolan.Caption <> 'FATURADO' then
        begin
          SQL.Clear;
          SQL.Add('SELECT ID FROM '+SLPrincipal.Values['cad_pro_res']);
          SQL.Add('WHERE  EST_CDPD = '''+inttostr(lanped.Tag)+'''');
          SQL.Add('AND    EST_CPRO = '''+inttostr(lacpro.Tag)+'''');
          Open;
        end;
      end;
    end;
  end else
  if consulta.Fields[3].AsString = 'D' then
  laolan.Caption := 'ENTRADA';

  STATUS_ETIQUETA;

  if lanped.Tag > 0 then
  begin
    with ped_ven_cab do
    begin
      SQL.Clear;
      SQL.Add('SELECT PED_VEN_CAB.ID,ROM_DERO,ROM_DROM,ROM_CDRO,ROM_CDNF,ROM_QTVE,ROM_RLVE,ROM_STPD,ROM_STFI,ROM_STCO,ROM_CVEN,ROM_CCLI,ROM_TCDE,FUN_APEL,CLI_FANT');
      SQL.Add('FROM   CAD_FUN,CAD_CLI,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE  PED_VEN_CAB.ROM_CVEN = CAD_FUN.ID');
      SQL.Add('AND    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND    PED_VEN_CAB.ID       = '''+inttostr(lanped.Tag)+'''');
      Open;
    end;

    with ped_ven_ite do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_VEN_ITE.*,CAD_PRO.ID,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_CCOR,');
      SQL.Add('         CAD_PRO.PRO_RCOR,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
      SQL.Add('         CAD_PRO.PRO_CBAR,CAD_PRO.PRO_PPRO,CAD_PRO.PRO_CEMB,CAD_PRO.PRO_GRAD,');
      SQL.Add('         CAD_PRO.PRO_PIPI,CAD_PRO.PRO_REPR,CAD_PRO_IMG.PRO_FOTO');
      SQL.Add('FROM     CAD_PRO_IMG,CAD_PRO,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
      SQL.Add('WHERE    PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND      CAD_PRO_IMG.PRO_CART = CAD_PRO.PRO_CART');
      SQL.Add('AND      PED_VEN_ITE.ROM_CCAB = '''+inttostr(lanped.Tag)+'''');
      SQL.Add('ORDER BY PED_VEN_ITE.ROM_ITEM');
      Open;
    end;

    with psq_cli do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CLI_BAI,CLI_TLOG,CLI_LOGR,CLI_NUME,CLI_CEP,CLI_COMP,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,');
      SQL.Add('       CLI_OBSO,CLI_VDSC,CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,CLI_VULT,CLI_DDD,CLI_TEL1,REP_FANT,USU_DUSU,CLI_STPD,CLI_DTRA');
      SQL.Add('FROM   CAD_CLI');
      SQL.Add('LEFT   OUTER JOIN CAD_USU ON CAD_CLI.CLI_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('LEFT   OUTER JOIN CAD_REP ON CAD_CLI.CLI_CREP = CAD_REP.ID');
      SQL.Add('WHERE  CAD_CLI.ID = '''+ped_ven_cabROM_CCLI.AsString+'''');
      Open;
    end;

    with cad_cli_crd do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_CLI_CRD');
      SelectSQL.Add('WHERE  CLI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SelectSQL.Add('AND    CLI_CCLI = '''+psq_cliID.AsString+'''');
      Open;
    end;

    if ped_ven_cabID.AsInteger > 0 then
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT VEN_TEST,VEN_FATU FROM TAB_PED');
        SQL.Add('WHERE  VEN_TIPO = '''+ped_ven_cabROM_STPD.AsString+'''');
        Open;
        test        := fields[0].AsString;
        edfatu.Text := fields[1].AsString;
      end;
    end;
  end;
end;

procedure Tfrmeti_pro.edcdetKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  PESQUISA_ETIQUETA;
end;

procedure Tfrmeti_pro.siVISClick(Sender: TObject);
begin
  try
    tag := 0;
    ENT_PRO_ETIQUETAS;
  finally
    tag := 0;
  end;
end;

procedure Tfrmeti_pro.siPRIClick(Sender: TObject);
begin
  try
    tag := 1;
    ENT_PRO_ETIQUETAS;
  finally
    tag := 1;
  end;
end;

procedure Tfrmeti_pro.siCANClick(Sender: TObject);
begin
  if Length(edcdet.Text) < 10 then
  raise exception.Create('Número da etiqueta não informado !');
     
  CANCELA_ETIQUETA;
end;

procedure Tfrmeti_pro.siCSEClick(Sender: TObject);
begin
  if Length(edcdet.Text) < 10 then
  raise exception.Create('Número da etiqueta não informado !');

  CANCELA_SEPARACAO;
end;

procedure Tfrmeti_pro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmeti_pro<> nil then
  begin
    frmeti_pro.Release;
    frmeti_pro:= nil;
  end;
end;

procedure Tfrmeti_pro.cbTIPOChange(Sender: TObject);
begin
  PESQUISA_ETIQUETA;
end;

procedure Tfrmeti_pro.siALTClick(Sender: TObject);
begin
  if Length(edcdet.Text) < 10 then
  raise exception.Create('Número da etiqueta não informado !');

  ALTERA_ETIQUETA;
end;

end.
