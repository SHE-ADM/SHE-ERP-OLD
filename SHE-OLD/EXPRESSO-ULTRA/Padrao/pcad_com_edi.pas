unit pcad_com_edi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, IBStoredProc, IBEvents, IBDatabase, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxEditor, dxEdLib, ExtCtrls, StdCtrls,
  dxExEdtr, dxPageControl, ImgList,  ComCtrls,
  dxDBELib, Shellapi, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms,
  rxSpeedbar;

type
  Tfrmcad_com_edi = class(Tfrmpadr3)
    cep_log: TIBQuery;
    cep_logID: TIntegerField;
    cep_logLOG_TIT: TIBStringField;
    cep_logLOG_NO: TIBStringField;
    cep_logLOG_CEP: TIBStringField;
    cep_logBAI_NO: TIBStringField;
    cep_logLOC_NO: TIBStringField;
    cep_logLOG_UF: TIBStringField;
    siCON: TSpeedItem;
    Panel1: TPanel;
    pcmain: TdxPageControl;
    tscon: TdxTabSheet;
    tsEND: TdxTabSheet;
    pcEND: TdxPageControl;
    tsCEP_COM: TdxTabSheet;
    tsCEP_COB: TdxTabSheet;
    tsCEP_ENT: TdxTabSheet;
    tsBAN: TdxTabSheet;
    dbgban: TdxDBGrid;
    SpeedBar6: TSpeedBar;
    SpeedbarSection21: TSpeedbarSection;
    SpeedbarSection22: TSpeedbarSection;
    SpeedbarSection23: TSpeedbarSection;
    SpeedbarSection24: TSpeedbarSection;
    banI: TSpeedItem;
    banE: TSpeedItem;
    banS: TSpeedItem;
    banC: TSpeedItem;
    banA: TSpeedItem;
    cad_com_ban: TIBDataSet;
    dtscad_com_ban: TDataSource;
    cad_com_obs: TIBDataSet;
    dtscad_com_obs: TDataSource;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label53: TLabel;
    Label66: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    edtlog: TdxEdit;
    edlogr: TdxEdit;
    edcep: TdxButtonEdit;
    ednume: TdxEdit;
    edcomp: TdxEdit;
    edcmun: TdxButtonEdit;
    edbai: TdxEdit;
    eduf: TdxEdit;
    edcid: TdxEdit;
    ImageOPC2: TImageList;
    Bevel1: TBevel;
    Label3: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    edtloc: TdxEdit;
    edlogc: TdxEdit;
    edcepc: TdxButtonEdit;
    ednumc: TdxEdit;
    edcomc: TdxEdit;
    edcmuc: TdxButtonEdit;
    edbaic: TdxEdit;
    edufc: TdxEdit;
    edcidc: TdxEdit;
    Bevel2: TBevel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    edtlov: TdxEdit;
    edlogv: TdxEdit;
    edcepv: TdxButtonEdit;
    ednumv: TdxEdit;
    edcomv: TdxEdit;
    edcmuv: TdxButtonEdit;
    edbaiv: TdxEdit;
    edufv: TdxEdit;
    edcidv: TdxEdit;
    Bevel3: TBevel;
    Label39: TLabel;
    cad_com: TIBDataSet;
    pcinfo: TdxPageControl;
    tsicad: TdxTabSheet;
    Label1: TLabel;
    edccom: TdxEdit;
    edfant: TdxEdit;
    Label5: TLabel;
    edraza: TdxEdit;
    Label4: TLabel;
    edcnpj: TdxMaskEdit;
    edinsc: TdxEdit;
    Label13: TLabel;
    Label14: TLabel;
    edCCM: TdxEdit;
    Label21: TLabel;
    edimun: TdxEdit;
    Label25: TLabel;
    edcpf: TdxMaskEdit;
    Label15: TLabel;
    edrg: TdxEdit;
    Label16: TLabel;
    eddcad: TdxDateEdit;
    Label41: TLabel;
    cbstav: TdxImageEdit;
    Label37: TLabel;
    tsobs: TdxTabSheet;
    pccom: TdxPageControl;
    tsccom: TdxTabSheet;
    Label10: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label71: TLabel;
    Label11: TLabel;
    Bevel7: TBevel;
    edddd: TdxMaskEdit;
    edmail: TdxEdit;
    edcont: TdxEdit;
    edtel1: TdxMaskEdit;
    edtel2: TdxMaskEdit;
    edfax: TdxMaskEdit;
    edcel: TdxMaskEdit;
    edneid: TdxMaskEdit;
    edncel: TdxMaskEdit;
    edDD2: TdxMaskEdit;
    edDD3: TdxMaskEdit;
    edtel3: TdxMaskEdit;
    edDD4: TdxMaskEdit;
    edDD5: TdxMaskEdit;
    edDD6: TdxMaskEdit;
    cbtce1: TdxImageEdit;
    cbtce2: TdxImageEdit;
    tscfin: TdxTabSheet;
    Label44: TLabel;
    Label45: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label52: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Bevel8: TBevel;
    edfddd: TdxMaskEdit;
    edfmai: TdxEdit;
    edfcon: TdxEdit;
    edfte1: TdxMaskEdit;
    edfte2: TdxMaskEdit;
    edffax: TdxMaskEdit;
    edfcel: TdxMaskEdit;
    edfnid: TdxMaskEdit;
    edfnce: TdxMaskEdit;
    edfdd2: TdxMaskEdit;
    edfdd3: TdxMaskEdit;
    edfte3: TdxMaskEdit;
    edfdd4: TdxMaskEdit;
    edfdd5: TdxMaskEdit;
    edfdd6: TdxMaskEdit;
    cbftc1: TdxImageEdit;
    cbftc2: TdxImageEdit;
    tsccco: TdxTabSheet;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Bevel9: TBevel;
    edcddd: TdxMaskEdit;
    edcmai: TdxEdit;
    edccon: TdxEdit;
    edcte1: TdxMaskEdit;
    edcte2: TdxMaskEdit;
    edcfax: TdxMaskEdit;
    edccel: TdxMaskEdit;
    edcnid: TdxMaskEdit;
    edcnce: TdxMaskEdit;
    edcdd2: TdxMaskEdit;
    edcdd3: TdxMaskEdit;
    edcte3: TdxMaskEdit;
    edcdd4: TdxMaskEdit;
    edcdd5: TdxMaskEdit;
    edcdd6: TdxMaskEdit;
    cbctc1: TdxImageEdit;
    cbctc2: TdxImageEdit;
    pcOBS: TdxPageControl;
    ts1: TdxTabSheet;
    ts2: TdxTabSheet;
    dxTabSheet3: TdxTabSheet;
    dbgobs: TdxDBGrid;
    dbgobsOBS_DCAD: TdxDBGridDateColumn;
    dbgobsOBS_OBSE: TdxDBGridBlobColumn;
    SpeedBar1: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedbarSection2: TSpeedbarSection;
    SpeedbarSection3: TSpeedbarSection;
    SpeedbarSection4: TSpeedbarSection;
    obsI: TSpeedItem;
    obsE: TSpeedItem;
    obsS: TSpeedItem;
    obsC: TSpeedItem;
    obsA: TSpeedItem;
    Bevel10: TBevel;
    edobse: TdxMemo;
    Bevel11: TBevel;
    edobso: TdxMemo;
    eddalt: TdxDateEdit;
    Bevel4: TBevel;
    cad_com_banCOM_CCOM: TIntegerField;
    cad_com_banCOM_DCAD: TDateField;
    cad_com_banCOM_BANC: TIBStringField;
    cad_com_banCOM_DESC: TIBStringField;
    cad_com_banCOM_AGEN: TIBStringField;
    cad_com_banCOM_CONT: TIBStringField;
    cad_com_banCOM_OBSE: TMemoField;
    cad_com_banCOM_TIPO: TIBStringField;
    cad_com_banCOM_DOCU: TIBStringField;
    cad_com_banID: TIntegerField;
    cad_comID: TIntegerField;
    cad_comCOM_RAZA: TIBStringField;
    cad_comCOM_FANT: TIBStringField;
    cad_comCOM_CONT: TIBStringField;
    cad_comCOM_DCAD: TDateField;
    cad_comCOM_STA: TIBStringField;
    cad_comCOM_MAIL: TIBStringField;
    cad_comCOM_DDD: TIBStringField;
    cad_comCOM_TEL1: TIBStringField;
    cad_comCOM_TEL2: TIBStringField;
    cad_comCOM_FAX: TIBStringField;
    cad_comCOM_CEL: TIBStringField;
    cad_comCOM_RG: TIBStringField;
    cad_comCOM_CPF: TIBStringField;
    cad_comCOM_INSC: TIBStringField;
    cad_comCOM_CNPJ: TIBStringField;
    cad_comCOM_TLOG: TIBStringField;
    cad_comCOM_LOGR: TIBStringField;
    cad_comCOM_CEP: TIBStringField;
    cad_comCOM_NUME: TIBStringField;
    cad_comCOM_COMP: TIBStringField;
    cad_comCOM_BAI: TIBStringField;
    cad_comCOM_CID: TIBStringField;
    cad_comCOM_ESTA: TIBStringField;
    cad_comCOM_TLOC: TIBStringField;
    cad_comCOM_LOGC: TIBStringField;
    cad_comCOM_CEPC: TIBStringField;
    cad_comCOM_NUMC: TIBStringField;
    cad_comCOM_COMC: TIBStringField;
    cad_comCOM_BAIC: TIBStringField;
    cad_comCOM_CIDC: TIBStringField;
    cad_comCOM_ESTC: TIBStringField;
    cad_comCOM_OBSO: TMemoField;
    cad_comCOM_STAV: TIBStringField;
    cad_comCOM_VULT: TIBBCDField;
    cad_comCOM_TPVE: TIBStringField;
    cad_comCOM_OBSE: TMemoField;
    cad_comCOM_TLOV: TIBStringField;
    cad_comCOM_LOGV: TIBStringField;
    cad_comCOM_CEPV: TIBStringField;
    cad_comCOM_NUMV: TIBStringField;
    cad_comCOM_COMV: TIBStringField;
    cad_comCOM_BAIV: TIBStringField;
    cad_comCOM_CIDV: TIBStringField;
    cad_comCOM_ESTV: TIBStringField;
    cad_comCOM_RICM: TIBStringField;
    cad_comCOM_CPAG: TIBStringField;
    cad_comCOM_DPAG: TIBStringField;
    cad_comCOM_CMUN: TIBStringField;
    cad_comCOM_DALT: TDateField;
    cad_comCOM_CTRA: TIntegerField;
    cad_comCOM_DTRA: TIBStringField;
    cad_comCOM_DFUN: TDateField;
    cad_comCOM_CICM: TIBStringField;
    cad_comCOM_RAMO: TIBStringField;
    cad_comCOM_CMUV: TIBStringField;
    cad_comCOM_CMUC: TIBStringField;
    cad_comCOM_DD2: TIBStringField;
    cad_comCOM_DD3: TIBStringField;
    cad_comCOM_DD4: TIBStringField;
    cad_comCOM_DD5: TIBStringField;
    cad_comCOM_DD6: TIBStringField;
    cad_comCOM_TEL3: TIBStringField;
    cad_comCOM_TCE1: TIBStringField;
    cad_comCOM_TCE2: TIBStringField;
    cad_comCOM_NCEL: TIBStringField;
    cad_comCOM_NEID: TIBStringField;
    cad_comCOM_FCON: TIBStringField;
    cad_comCOM_FMAI: TIBStringField;
    cad_comCOM_FDDD: TIBStringField;
    cad_comCOM_FTE1: TIBStringField;
    cad_comCOM_FDD2: TIBStringField;
    cad_comCOM_FTE2: TIBStringField;
    cad_comCOM_FDD3: TIBStringField;
    cad_comCOM_FTE3: TIBStringField;
    cad_comCOM_FDD4: TIBStringField;
    cad_comCOM_FFAX: TIBStringField;
    cad_comCOM_FDD5: TIBStringField;
    cad_comCOM_FCEL: TIBStringField;
    cad_comCOM_FTC1: TIBStringField;
    cad_comCOM_FDD6: TIBStringField;
    cad_comCOM_FNCE: TIBStringField;
    cad_comCOM_FTC2: TIBStringField;
    cad_comCOM_FNID: TIBStringField;
    cad_comCOM_CCON: TIBStringField;
    cad_comCOM_CMAI: TIBStringField;
    cad_comCOM_CDDD: TIBStringField;
    cad_comCOM_CTE1: TIBStringField;
    cad_comCOM_CDD2: TIBStringField;
    cad_comCOM_CTE2: TIBStringField;
    cad_comCOM_CDD3: TIBStringField;
    cad_comCOM_CTE3: TIBStringField;
    cad_comCOM_CDD4: TIBStringField;
    cad_comCOM_CFAX: TIBStringField;
    cad_comCOM_CDD5: TIBStringField;
    cad_comCOM_CCEL: TIBStringField;
    cad_comCOM_CTC1: TIBStringField;
    cad_comCOM_CDD6: TIBStringField;
    cad_comCOM_CNCE: TIBStringField;
    cad_comCOM_CTC2: TIBStringField;
    cad_comCOM_CNID: TIBStringField;
    cad_comCOM_VDSC: TIBBCDField;
    cad_comCOM_CRED: TIBBCDField;
    cad_comCOM_SITE: TIBStringField;
    cad_comCOM_REVE: TIBStringField;
    cad_comCOM_IMUN: TIBStringField;
    cad_comCOM_CCM: TIBStringField;
    cad_com_obsID: TIntegerField;
    cad_com_obsOBS_CCOM: TIntegerField;
    cad_com_obsOBS_DCAD: TDateField;
    cad_com_obsOBS_OBSE: TMemoField;
    dbgbanCOM_DCAD: TdxDBGridDateColumn;
    dbgbanCOM_BANC: TdxDBGridMaskColumn;
    dbgbanCOM_DESC: TdxDBGridPickColumn;
    dbgbanCOM_AGEN: TdxDBGridMaskColumn;
    dbgbanCOM_CONT: TdxDBGridMaskColumn;
    dbgbanCOM_TIPO: TdxDBGridPickColumn;
    dbgbanCOM_DOCU: TdxDBGridMaskColumn;
    dbgbanCOM_OBSE: TdxDBGridBlobColumn;
    procedure FormCreate(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure edcepButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edcepcButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edcepcValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure edcepvButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edcepvValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure ednumeValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcompValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcpfValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcnpjValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edccomValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edcmunValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcmunButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure edcepClick(Sender: TObject);
    procedure edcepEnter(Sender: TObject);
    procedure edtel2DblClick(Sender: TObject);
    procedure edtel1DblClick(Sender: TObject);
    procedure edfaxDblClick(Sender: TObject);
    procedure edcelDblClick(Sender: TObject);
    procedure edcmucValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcmuvValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcmucButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edcmuvButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edcepValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvdscKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure banIClick(Sender: TObject);
    procedure banEClick(Sender: TObject);
    procedure banSClick(Sender: TObject);
    procedure banCClick(Sender: TObject);
    procedure banAClick(Sender: TObject);
    procedure cad_com_banAfterCancel(DataSet: TDataSet);
    procedure cad_com_banAfterDelete(DataSet: TDataSet);
    procedure cad_com_banAfterEdit(DataSet: TDataSet);
    procedure cad_com_banAfterPost(DataSet: TDataSet);
    procedure cad_com_banNewRecord(DataSet: TDataSet);
    procedure cad_com_banBeforeCancel(DataSet: TDataSet);
    procedure cad_com_banBeforeDelete(DataSet: TDataSet);
    procedure dbgbanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure obsIClick(Sender: TObject);
    procedure obsEClick(Sender: TObject);
    procedure obsSClick(Sender: TObject);
    procedure obsCClick(Sender: TObject);
    procedure obsAClick(Sender: TObject);
    procedure cad_com_obsAfterCancel(DataSet: TDataSet);
    procedure cad_com_obsAfterDelete(DataSet: TDataSet);
    procedure cad_com_obsAfterEdit(DataSet: TDataSet);
    procedure cad_com_obsAfterPost(DataSet: TDataSet);
    procedure cad_com_obsBeforeCancel(DataSet: TDataSet);
    procedure cad_com_obsBeforeDelete(DataSet: TDataSet);
    procedure cad_com_obsNewRecord(DataSet: TDataSet);
    procedure edcepcClick(Sender: TObject);
    procedure edcepcEnter(Sender: TObject);
    procedure edcepvClick(Sender: TObject);
    procedure edcepvEnter(Sender: TObject);
    procedure cad_com_banCOM_DESCValidate(Sender: TField);
    procedure cbstavKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure siCONClick(Sender: TObject);
  private
    { Private declarations }
    procedure NOVO_COMPRADOR;
    procedure BUSCA_CEP_COM;
    procedure BUSCA_CEP_COB;
    procedure BUSCA_CEP_ENT;
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmcad_com_edi: Tfrmcad_com_edi;

implementation

uses p_funcoes, bDados, pcad_com, uPrincipal, unLocaliza_Cep, ptab_mun, psintegra;

{$R *.dfm}
procedure Tfrmcad_com_edi.FormCreate(Sender: TObject);
begin
  pcinfo.ActivePageIndex := 0;
  pcmain.ActivePageIndex := 0;
  pccom.ActivePageIndex  := 0;
  pcobs.ActivePageIndex  := 0;
  pcend.ActivePageIndex  := 0;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   BAN_DESC FROM TAB_BAN');
    SQL.Add('GROUP BY BAN_DESC');
    SQL.Add('ORDER BY BAN_DESC');
    Open;

    while not eof do
    begin
      dbgbanCOM_DESC.Items.Add(fields[0].AsString);
      next;
    end;
  end;
end;

procedure Tfrmcad_com_edi.siSAVClick(Sender: TObject);
begin
  if (Length(edcnpj.Text) >= 14) and (edinsc.Text = '') then
  begin
    pcinfo.ActivePageIndex := 0;
    edinsc.SetFocus;
    raise exception.Create('Inscrição estadual não informada !');
  end;

  if (edccom.Text = '')  or (edccom.Text = '00000') then
     raise exception.Create('Código do comprador não informado !');

  if edfant.Text = '' then
  begin
    if pcinfo.ActivePageIndex = 0 then
       edfant.SetFocus;
    raise exception.Create('Nome Fantasia não informado !');
  end;

  if edraza.Text = '' then
  begin
    if pcinfo.ActivePageIndex = 0 then
       edraza.SetFocus;
    raise exception.Create('Razão Social não informado !');
  end;

  if cbstav.Text = '' then
  begin
    if pcinfo.ActivePageIndex = 0 then
       cbstav.SetFocus;
    raise exception.Create('Situação do comprador não informado !');
  end;

  if (edlogr.Text <> '') and (copy(ednume.Text,1,1) = ' ') then
  begin
    if (pcmain.ActivePage = tsEND) and (pcEND.ActivePage = tsCEP_COM) then
        ednume.SetFocus;
    raise exception.Create('Número do logradouro do endereço não cadastrado !');
  end;

  if (edlogr.Text <> '') and (edtlog.Text = '') then
  begin
    if (pcmain.ActivePage = tsEND) and (pcEND.ActivePage = tsCEP_COM) then
        edtlog.SetFocus;
    raise exception.Create('Título do logradouro do endereço não cadastrado !');
  end;

  if (length(edcep.Text) < 8) and (edlogr.Text <> '') then
  begin
    if (pcmain.ActivePage = tsEND) and (pcEND.ActivePage = tsCEP_COM) then
        edcep.SetFocus;
    raise exception.Create('Cep não informado ou digitado incorretamente !');
  end;

  try
    try
      ibSP.StoredProcName := 'SP_CAD_COM';
      ibSP.Prepare;

      case frmcad_com_edi.Tag of
        0: ibSP.Params[0].Value := null;
        1: ibSP.Params[0].Value := edccom.Text;
      end;

      ibSP.ParamByName('dcad').Value := eddcad.Date;
      ibSP.ParamByName('dalt').Value := eddalt.Date;
      ibSP.ParamByName('dfun').Value := null;
      ibSP.ParamByName('raza').Value := edraza.Text;
      ibSP.ParamByName('site').Value := null;
      ibSP.ParamByName('cred').Value := null;
      ibSP.ParamByName('vdsc').Value := null;
      ibSP.ParamByName('fant').Value := edfant.Text;
      ibSP.ParamByName('ramo').Value := null;
      ibSP.ParamByName('sta').Value  := '0';
      ibSP.ParamByName('cont').Value := edcont.Text;
      ibSP.ParamByName('fcon').Value := edfcon.Text;
      ibSP.ParamByName('ccon').Value := edccon.Text;
      ibSP.ParamByName('mail').Value := edmail.Text;
      ibSP.ParamByName('fmai').Value := edfmai.Text;
      ibSP.ParamByName('cmai').Value := edcmai.Text;
      ibSP.ParamByName('ddd').Value  := edddd.Text;
      ibSP.ParamByName('dd2').Value  := eddd2.Text;
      ibSP.ParamByName('dd3').Value  := eddd3.Text;
      ibSP.ParamByName('dd4').Value  := eddd4.Text;
      ibSP.ParamByName('dd5').Value  := eddd5.Text;
      ibSP.ParamByName('dd6').Value  := eddd6.Text;
      ibSP.ParamByName('fddd').Value  := edfddd.Text;
      ibSP.ParamByName('fdd2').Value  := edfdd2.Text;
      ibSP.ParamByName('fdd3').Value  := edfdd3.Text;
      ibSP.ParamByName('fdd4').Value  := edfdd4.Text;
      ibSP.ParamByName('fdd5').Value  := edfdd5.Text;
      ibSP.ParamByName('fdd6').Value  := edfdd6.Text;
      ibSP.ParamByName('cddd').Value  := edcddd.Text;
      ibSP.ParamByName('cdd2').Value  := edcdd2.Text;
      ibSP.ParamByName('cdd3').Value  := edcdd3.Text;
      ibSP.ParamByName('cdd4').Value  := edcdd4.Text;
      ibSP.ParamByName('cdd5').Value  := edcdd5.Text;
      ibSP.ParamByName('cdd6').Value  := edcdd6.Text;
      ibSP.ParamByName('tel1').Value  := edtel1.Text;
      ibSP.ParamByName('fte1').Value  := edfte1.Text;
      ibSP.ParamByName('cte1').Value  := edcte1.Text;
      ibSP.ParamByName('tel2').Value  := edtel2.Text;
      ibSP.ParamByName('fte2').Value  := edfte2.Text;
      ibSP.ParamByName('cte2').Value  := edcte2.Text;
      ibSP.ParamByName('tel3').Value  := edtel3.Text;
      ibSP.ParamByName('fte3').Value  := edfte3.Text;
      ibSP.ParamByName('cte3').Value  := edcte3.Text;
      ibSP.ParamByName('fax').Value   := edfax.Text;
      ibSP.ParamByName('ffax').Value  := edffax.Text;
      ibSP.ParamByName('cfax').Value  := edcfax.Text;
      ibSP.ParamByName('cel').Value   := edcel.Text;
      ibSP.ParamByName('fcel').Value  := edfcel.Text;
      ibSP.ParamByName('ccel').Value  := edccel.Text;
      ibSP.ParamByName('ncel').Value  := edncel.Text;
      ibSP.ParamByName('fnce').Value  := edfnce.Text;
      ibSP.ParamByName('cnce').Value  := edcnce.Text;
      ibSP.ParamByName('neid').Value  := edneid.Text;
      ibSP.ParamByName('fnid').Value  := edfnid.Text;
      ibSP.ParamByName('cnid').Value  := edcnid.Text;
      ibSP.ParamByName('tce1').Value  := cbtce1.Text;
      ibSP.ParamByName('tce2').Value  := cbtce2.Text;
      ibSP.ParamByName('ftc1').Value  := cbftc1.Text;
      ibSP.ParamByName('ftc2').Value  := cbftc2.Text;
      ibSP.ParamByName('ctc1').Value  := cbctc1.Text;
      ibSP.ParamByName('ctc2').Value  := cbctc2.Text;
      ibSP.ParamByName('rg').Value    := edrg.Text;
      ibSP.ParamByName('cpf').Value   := edcpf.Text;
      ibSP.ParamByName('insc').Value  := edinsc.Text;
      ibSP.ParamByName('cnpj').Value  := edcnpj.Text;
      ibSP.ParamByName('ccm').Value   := edccm.Text;
      ibSP.ParamByName('imun').Value  := edimun.Text;
      ibSP.ParamByName('tlog').Value  := edtlog.Text;
      ibSP.ParamByName('logr').Value  := edlogr.Text;
      ibSP.ParamByName('cep').Value   := edcep.Text;
      ibSP.ParamByName('cmun').Value  := edcmun.Text;
      ibSP.ParamByName('cmuv').Value  := edcmuv.Text;
      ibSP.ParamByName('cmuc').Value  := edcmuc.Text;
      ibSP.ParamByName('nume').Value  := ednume.Text;
      ibSP.ParamByName('comp').Value  := edcomp.Text;
      ibSP.ParamByName('bai').Value   := edbai.Text;
      ibSP.ParamByName('cid').Value   := edcid.Text;
      ibSP.ParamByName('esta').Value  := eduf.Text;
      ibSP.ParamByName('tloc').Value  := edtloc.Text;
      ibSP.ParamByName('logc').Value  := edlogc.Text;
      ibSP.ParamByName('cepc').Value  := edcepc.Text;
      ibSP.ParamByName('numc').Value  := ednumc.Text;
      ibSP.ParamByName('comc').Value  := edcomc.Text;
      ibSP.ParamByName('baic').Value  := edbaic.Text;
      ibSP.ParamByName('cidc').Value  := edcidc.Text;
      ibSP.ParamByName('estc').Value  := edufc.Text;
      ibSP.ParamByName('tlov').Value  := edtlov.Text;
      ibSP.ParamByName('logv').Value  := edlogv.Text;
      ibSP.ParamByName('cepv').Value  := edcepv.Text;
      ibSP.ParamByName('numv').Value  := ednumv.Text;
      ibSP.ParamByName('comv').Value  := edcomv.Text;
      ibSP.ParamByName('baiv').Value  := edbaiv.Text;
      ibSP.ParamByName('cidv').Value  := edcidv.Text;
      ibSP.ParamByName('estv').Value  := edufv.Text;
      ibSP.ParamByName('stav').Value  := cbstav.Text;
      ibSP.ParamByName('tpve').Value  := 'ATACADO';
      ibSP.ParamByName('obso').Value  := edobso.Lines.Text;
      ibSP.ParamByName('obse').Value  := edobse.Lines.Text;
      ibSP.ParamByName('ctra').Value  := null;
      ibSP.ParamByName('dtra').Value  := null;
      ibSP.ParamByName('cpag').Value  := null;
      ibSP.ParamByName('dpag').Value  := null;
      ibSP.ParamByName('reve').Value  := null;
      ibSP.ParamByName('ricm').Value  := null;
      ibSP.ParamByName('cicm').Value  := null;
      ibSP.ExecProc;

      case frmcad_com_edi.Tag of
        0: frmprincipal.Log_Eve('Compradores','Cadastro de Compradores','Inclusão' ,edccom.Text,edccom.Text,LOWERCASE(edfant.Text),'','');
        1: frmprincipal.Log_Eve('Compradores','Cadastro de Compradores','Alteração',edccom.Text,edccom.Text,LOWERCASE(edfant.Text),'','');
      end;

      editado := true;
      IBTra.Commit;
      IBTra.StartTransaction;

      if (frmcad_com_edi.Tag = 0) then
         NOVO_COMPRADOR
      else
         Close;
    except
      editado := false;
      IBTRA.Rollback;
      IBTra.StartTransaction;
    end;
  finally
  end;
end;

procedure Tfrmcad_com_edi.edcepButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  cCEP: string;
  i: word;
begin
  frmLocaliza_cep := TFrmLocaliza_cep.Create(self);
  try
    frmLocaliza_cep.ShowModal;
  finally
    if frmLocaliza_cep.editado then
    begin
      for i := 1 to length(frmLocaliza_Cep.caCep.Caption) do
      if copy(frmLocaliza_Cep.caCep.Caption,i,1) <> '-' then
         cCEP := cCEP+copy(frmLocaliza_Cep.caCep.Caption,i,1);

      if edtloc.Text = '' then
      begin
        edtloc.Text := frmLocaliza_Cep.caTipo.Caption;
        edlogc.Text := frmLocaliza_Cep.caLogradouro.Caption;
        edcepc.Text := cCEP;
        edbaic.Text := copy(frmLocaliza_Cep.caBairro.Caption,1,40);
        edcidc.Text := copy(frmLocaliza_Cep.caCidade.Caption,1,40);
        edufc.Text  := frmLocaliza_Cep.caUf.Caption;

        with consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT MUN_CMUN FROM TAB_MUN');
          SQL.Add('WHERE  MUN_DMUN = '''+edcidc.Text+'''');
          Open;
          edcmuc.Text := fields[0].AsString;
        end;
      end;

      if edtlov.Text = '' then
      begin
        edtlov.Text := frmLocaliza_Cep.caTipo.Caption;
        edlogv.Text := frmLocaliza_Cep.caLogradouro.Caption;
        edcepv.Text := cCEP;
        edbaiv.Text := copy(frmLocaliza_Cep.caBairro.Caption,1,40);
        edcidv.Text := copy(frmLocaliza_Cep.caCidade.Caption,1,40);
        edufv.Text  := frmLocaliza_Cep.caUf.Caption;

        with consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT MUN_CMUN FROM TAB_MUN');
          SQL.Add('WHERE  MUN_DMUN = '''+edcidv.Text+'''');
          Open;
          edcmuv.Text := fields[0].AsString;
        end;
      end;

      edtlog.Text := frmLocaliza_Cep.caTipo.Caption;
      edlogr.Text := frmLocaliza_Cep.caLogradouro.Caption;
      edbai.Text  := copy(frmLocaliza_Cep.caBairro.Caption,1,40);
      edcid.Text  := copy(frmLocaliza_Cep.caCidade.Caption,1,40);
      eduf.Text   := frmLocaliza_Cep.caUf.Caption;
      edcep.Text  := cCEP;

      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT MUN_CMUN FROM TAB_MUN');
        SQL.Add('WHERE  MUN_DMUN = '''+edcid.Text+'''');
        Open;
        edcmun.Text := fields[0].AsString;
      end;
    end;
    freeAndNil(frmLocaliza_cep);    
    frmLocaliza_cep.Free;
  end;
end;

procedure Tfrmcad_com_edi.edcepcButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmLocaliza_cep := TFrmLocaliza_cep.Create(self);
  try
    frmLocaliza_cep.ShowModal;
  finally
    if frmLocaliza_cep.editado then
    begin
      edtloc.Text := frmLocaliza_Cep.caTipo.Caption;
      edlogc.Text := frmLocaliza_Cep.caLogradouro.Caption;
      edcepc.Text := frmLocaliza_Cep.caCep.Caption;
      edbaic.Text := copy(cep_logBAI_NO.AsString,1,40);
      edcidc.Text := copy(cep_logLOC_NO.AsString,1,40);
      edufc.Text  := frmLocaliza_Cep.caUf.Caption;
    end;
    freeAndNil(frmLocaliza_cep);
    frmLocaliza_cep.Free;
    
    if (pcmain.ActivePage = tsEND) and (pcend.ActivePage = tsCEP_COB) then
       ednumc.SetFocus;
  end;
end;

procedure Tfrmcad_com_edi.edcepcValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BUSCA_CEP_COB;
end;

procedure Tfrmcad_com_edi.FormShow(Sender: TObject);
begin
  inherited;
  if tag = 1 then
  begin
    with cad_com do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_COM');
      SelectSQL.Add('WHERE ID = '''+frmcad_com.cadastroID.AsString+'''');
      Open;

      edccom.Text := strzero(FieldByName('ID').AsInteger,5);
      edfant.Text := FieldByName('COM_FANT').AsString;
      eddcad.Date := FieldByName('COM_DCAD').AsDateTime;
      eddalt.Date := strtodate(TSConsulta.Values['data_sistema']);
      edraza.Text := FieldByName('COM_RAZA').AsString;
      edcont.Text := FieldByName('COM_CONT').AsString;
      edfcon.Text := FieldByName('COM_FCON').AsString;
      edccon.Text := FieldByName('COM_CCON').AsString;
      edmail.Text := FieldByName('COM_MAIL').AsString;
      edfmai.Text := FieldByName('COM_FMAI').AsString;
      edcmai.Text := FieldByName('COM_CMAI').AsString;
      edddd.Text  := FieldByName('COM_DDD').AsString;
      eddd2.Text  := FieldByName('COM_DD2').AsString;
      eddd3.Text  := FieldByName('COM_DD3').AsString;
      eddd4.Text  := FieldByName('COM_DD4').AsString;
      eddd5.Text  := FieldByName('COM_DD5').AsString;
      eddd6.Text  := FieldByName('COM_DD6').AsString;
      edfddd.Text := FieldByName('COM_FDDD').AsString;
      edfdd2.Text := FieldByName('COM_FDD2').AsString;
      edfdd3.Text := FieldByName('COM_FDD3').AsString;
      edfdd4.Text := FieldByName('COM_FDD4').AsString;
      edfdd5.Text := FieldByName('COM_FDD5').AsString;
      edfdd6.Text := FieldByName('COM_FDD6').AsString;
      edcddd.Text := FieldByName('COM_CDDD').AsString;
      edcdd2.Text := FieldByName('COM_CDD2').AsString;
      edcdd3.Text := FieldByName('COM_CDD3').AsString;
      edcdd4.Text := FieldByName('COM_CDD4').AsString;
      edcdd5.Text := FieldByName('COM_CDD5').AsString;
      edcdd6.Text := FieldByName('COM_CDD6').AsString;
      edtel1.Text := FieldByName('COM_TEL1').AsString;
      edtel2.Text := FieldByName('COM_TEL2').AsString;
      edtel3.Text := FieldByName('COM_TEL3').AsString;
      edfax.Text  := FieldByName('COM_FAX').AsString;
      edffax.Text := FieldByName('COM_FFAX').AsString;
      edcfax.Text := FieldByName('COM_CFAX').AsString;
      edfte1.Text := FieldByName('COM_FTE1').AsString;
      edfte2.Text := FieldByName('COM_FTE2').AsString;
      edfte3.Text := FieldByName('COM_FTE3').AsString;
      edcte1.Text := FieldByName('COM_CTE1').AsString;
      edcte2.Text := FieldByName('COM_CTE2').AsString;
      edcte3.Text := FieldByName('COM_CTE3').AsString;
      edcel.Text  := FieldByName('COM_CEL').AsString;
      edfcel.Text := FieldByName('COM_FCEL').AsString;
      edccel.Text := FieldByName('COM_CCEL').AsString;
      edneid.Text := FieldByName('COM_NEID').AsString;
      edfnid.Text := FieldByName('COM_FNID').AsString;
      edcnid.Text := FieldByName('COM_CNID').AsString;
      edncel.Text := FieldByName('COM_NCEL').AsString;
      edfnce.Text := FieldByName('COM_FNCE').AsString;
      edcnce.Text := FieldByName('COM_CNCE').AsString;
      cbtce1.Text := FieldByName('COM_TCE1').AsString;
      cbtce2.Text := FieldByName('COM_TCE2').AsString;
      cbftc1.Text := FieldByName('COM_FTC1').AsString;
      cbftc2.Text := FieldByName('COM_FTC2').AsString;
      cbctc1.Text := FieldByName('COM_CTC1').AsString;
      cbctc2.Text := FieldByName('COM_CTC2').AsString;
      edccm.Text  := FieldByName('COM_CCM').AsString;
      edimun.Text := FieldByName('COM_IMUN').AsString;

      if FieldByName('COM_CNPJ').AsString <> '' then
      begin
        edcnpj.Text   := FieldByName('COM_CNPJ').AsString;
        edinsc.Text   := FieldByName('COM_INSC').AsString;
        edcpf.Enabled := false;
        edrg.Enabled  := false;
      end;

      if FieldByName('COM_CPF').AsString <> '' then
      begin
        edcpf.Text     := FieldByName('COM_CPF').AsString;
        edrg.Text      := FieldByName('COM_RG').AsString;
        edcnpj.Enabled := false;
        edinsc.Enabled := false;
      end;

      edtlog.Text := FieldByName('COM_TLOG').AsString;
      edlogr.Text := FieldByName('COM_LOGR').AsString;
      edcep.Text  := FieldByName('COM_CEP').AsString;
      edcmun.Text := FieldByName('COM_CMUN').AsString;
      edcmuv.Text := FieldByName('COM_CMUV').AsString;
      edcmuc.Text := FieldByName('COM_CMUC').AsString;
      ednume.Text := FieldByName('COM_NUME').AsString;
      edcomp.Text := FieldByName('COM_COMP').AsString;
      edbai.Text  := FieldByName('COM_BAI').AsString;
      edcid.Text  := FieldByName('COM_CID').AsString;
      eduf.Text   := FieldByName('COM_ESTA').AsString;
      edtloc.Text := FieldByName('COM_TLOC').AsString;
      edlogc.Text := FieldByName('COM_LOGC').AsString;
      edcepc.Text := FieldByName('COM_CEPC').AsString;
      ednumc.Text := FieldByName('COM_NUMC').AsString;
      edcomc.Text := FieldByName('COM_COMC').AsString;
      edbaic.Text := FieldByName('COM_BAIC').AsString;
      edcidc.Text := FieldByName('COM_CIDC').AsString;
      edufc.Text  := FieldByName('COM_ESTC').AsString;
      edtlov.Text := FieldByName('COM_TLOV').AsString;
      edlogv.Text := FieldByName('COM_LOGV').AsString;
      edcepv.Text := FieldByName('COM_CEPV').AsString;
      ednumv.Text := FieldByName('COM_NUMV').AsString;
      edcomv.Text := FieldByName('COM_COMV').AsString;
      edbaiv.Text := FieldByName('COM_BAIV').AsString;
      edcidv.Text := FieldByName('COM_CIDV').AsString;
      edufv.Text  := FieldByName('COM_ESTV').AsString;
      edobse.Text := FieldByName('COM_OBSE').Value;
      edobso.Text := FieldByName('COM_OBSO').Value;
      cbstav.Text := FieldByName('COM_STAV').AsString;
    end
  end
  else
    NOVO_COMPRADOR;

  edfant.SetFocus;

  with cad_com_ban do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_COM_BAN');
    SelectSQL.Add('WHERE COM_CCOM = '''+edccom.Text+'''');
    Open;
  end;

  with cad_com_obs do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_COM_OBS');
    SelectSQL.Add('WHERE OBS_CCOM = '''+edccom.Text+'''');
    Open;
  end;
end;

procedure Tfrmcad_com_edi.NOVO_COMPRADOR;
begin
  pcinfo.ActivePageIndex := 0;
  pcmain.ActivePageIndex := 0;
  
  edccom.Text := '00000';
  edfant.Text := '';
  eddcad.Date := strtodate(TSConsulta.Values['data_sistema']);
  eddalt.Date := strtodate(TSConsulta.Values['data_sistema']);
  cbstav.Text := 'A';
  edraza.Text := '';
  edcont.Text := '';
  edfcon.Text := '';
  edccon.Text := '';
  edmail.Text := '';
  edfmai.Text := '';
  edcmai.Text := '';
  edfant.Text := '';
  edddd.Text  := '11';
  eddd2.Text  := '11';
  eddd3.Text  := '11';
  eddd4.Text  := '11';
  eddd5.Text  := '11';
  eddd6.Text  := '11';
  edfddd.Text := '11';
  edfdd2.Text := '11';
  edfdd3.Text := '11';
  edfdd4.Text := '11';
  edfdd5.Text := '11';
  edfdd6.Text := '11';
  edcddd.Text := '11';
  edcdd2.Text := '11';
  edcdd3.Text := '11';
  edcdd4.Text := '11';
  edcdd5.Text := '11';
  edcdd6.Text := '11';
  edtel1.Text := '';
  edtel2.Text := '';
  edtel3.Text := '';
  edfte1.Text := '';
  edfte2.Text := '';
  edfte3.Text := '';
  edcte1.Text := '';
  edcte2.Text := '';
  edcte3.Text := '';
  edfax.Text  := '';
  edffax.Text := '';
  edcfax.Text := '';
  edcel.Text  := '';
  edfcel.Text := '';
  edccel.Text := '';
  edncel.Text := '';
  edfnce.Text := '';
  edcnce.Text := '';
  edneid.Text := '';
  edfnid.Text := '';
  edcnid.Text := '';
  cbtce1.Text := '';
  cbtce2.Text := '';
  cbftc1.Text := '';
  cbftc2.Text := '';
  cbctc1.Text := '';
  cbctc2.Text := '';
  edcnpj.Text := '';
  edinsc.Text := '';
  edcpf.Text  := '';
  edccm.Text  := '';
  edimun.Text := '';
  edrg.Text   := '';
  edfant.Text := '';
  edtlog.Text := '';
  edlogr.Text := '';
  edcep.Text  := '';
  edcmun.Text := '';
  edcmuv.Text := '';
  edcmuc.Text := '';
  ednume.Text := '';
  edcomp.Text := '';
  edbai.Text  := '';
  edcid.Text  := '';
  eduf.Text   := '';
  edtloc.Text := '';
  edlogc.Text := '';
  edcepc.Text := '';
  ednumc.Text := '';
  edcomc.Text := '';
  edbaic.Text := '';
  edcidc.Text := '';
  edufc.Text  := '';
  edtlov.Text := '';
  edlogv.Text := '';
  edcepv.Text := '';
  ednumv.Text := '';
  edcomv.Text := '';
  edbaiv.Text := '';
  edcidv.Text := '';
  edufv.Text  := '';
  edobse.Text := '';
  edobso.Text := '';
  if pcinfo.ActivePageIndex = 0 then
     edfant.SetFocus;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_CAD_COM,0) FROM RDB$DATABASE');
    Open;

    edccom.Text := strzero(fields[0].AsInteger+1,5);
  end;
end;

procedure Tfrmcad_com_edi.edcepvButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmLocaliza_cep := TFrmLocaliza_cep.Create(self);
  try
    frmLocaliza_cep.ShowModal;
  finally
    if frmLocaliza_cep.editado then
    begin
      edtlov.Text := frmLocaliza_Cep.caTipo.Caption;
      edlogv.Text := frmLocaliza_Cep.caLogradouro.Caption;
      edcepv.Text := frmLocaliza_Cep.caCep.Caption;
      edbaiv.Text := copy(cep_logBAI_NO.AsString,1,40);
      edcidv.Text := copy(cep_logLOC_NO.AsString,1,40);
      edufv.Text  := frmLocaliza_Cep.caUf.Caption;
    end;
    freeAndNil(frmLocaliza_cep);
    frmLocaliza_cep.Free;

    if (pcmain.ActivePage = tsEND) and (pcend.ActivePage = tsCEP_ENT) then
        ednumv.SetFocus;
  end;
end;

procedure Tfrmcad_com_edi.edcepvValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BUSCA_CEP_ENT;
end;

procedure Tfrmcad_com_edi.ednumeValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if ednumc.Text = '' then
     ednumc.Text := ednume.Text;
  if ednumv.Text = '' then
     ednumv.Text := ednume.Text;
end;

procedure Tfrmcad_com_edi.edcompValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcomc.Text = '' then
     edcomc.Text := edcomp.Text;
  if edcomv.Text = '' then
     edcomv.Text := edcomp.Text;
end;

procedure Tfrmcad_com_edi.edcpfValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcpf.Text <> '' then
  begin
    if not tbIsCPF(edcpf.Text) then
    begin
      edcpf.SetFocus;
      raise exception.Create('C.P.F. Inválido !');
    end;

    if frmcad_com_edi.Tag =0 then    
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT COM_RAZA,COM_DCAD,ID,COM_STA FROM CAD_COM');
      SQL.Add('WHERE  COM_CPF = '''+edcpf.Text+'''');
      Open;

      if fields[3].AsString = '1' then
      begin
        edcpf.SetFocus;
        raise exception.Create('Não é possível cadastrar comprador enviado à lixeira !'+#13+'Favor esvaziar a lixeira.');
      end;
      if (not fields[0].IsNull) and (edccom.Text <> fields[2].AsString) then
      begin
        edcpf.SetFocus;
        raise exception.Create('C.P.F. já cadastrado.'+#13+'Razão Social: '+fields[0].AsString+'. '+'Cadastrado em: '+fields[1].AsString);
      end;
    end;
    edcnpj.Enabled := false;
    edinsc.Enabled := false;
  end
  else
  begin
    edcnpj.Enabled := true;
    edinsc.Enabled := true;
  end;
end;

procedure Tfrmcad_com_edi.edcnpjValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcnpj.Text <> '' then
  begin
    if (not tbIsCGC(edcnpj.Text)) then
    begin
      edcnpj.SetFocus;
      raise exception.Create('C.N.P.J. Inválido !');
    end;

    if frmcad_COM_edi.Tag =0 then
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT COM_RAZA,COM_DCAD,ID,COM_STA FROM CAD_COM');
      SQL.Add('WHERE  COM_CNPJ = '''+edcnpj.Text+'''');
      Open;

      if fields[3].AsString = '1' then
      begin
        edcnpj.SetFocus;
        raise exception.Create('Não é possível cadastrar comprador enviado à lixeira !'+#13+'Favor esvaziar a lixeira.');
      end;
      if (not fields[0].IsNull) and (edccom.Text <> fields[2].AsString) then
      begin
        edcnpj.SetFocus;
        raise exception.Create('C.N.P.J. já cadastrado.'+#13+'Razão Social: '+fields[0].AsString+'. '+'Cadastrado em: '+fields[1].AsString);
      end;
    end;
    edcpf.Enabled := false;
    edrg.Enabled  := false;
  end
  else
  begin
    edcpf.Enabled := true;
    edrg.Enabled  := true;
  end;
end;

procedure Tfrmcad_com_edi.edccomValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edccom.Text = '' then
     edccom.Text := '00000';

  edccom.Text := strzero(strtoint(edccom.Text),5);

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT COM_RAZA FROM CAD_COM');
    SQL.Add('WHERE  ID = '''+edccom.Text+'''');
    Open;

    if not fields[0].IsNull then
    begin
      edccom.SetFocus;
      raise exception.Create('Comprador já cadastrado com o mesmo código '+#13+fields[0].AsString);
    end;
  end;
end;

procedure Tfrmcad_com_edi.edufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
     siSAV.Click;
end;

procedure Tfrmcad_com_edi.edcmunValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_MUN');
    SQL.Add('WHERE  MUN_CMUN = '''+edcmun.Text+'''');
    Open;

    if fields[0].IsNull then
       raise exception.Create('Código Municipal Inválido !');
  end;
end;

procedure Tfrmcad_com_edi.edcmunButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmtab_mun := TFrmtab_mun.Create(self);
  try
    frmtab_mun.FormStyle := fsNormal;
    frmtab_mun.Visible   := false;
    frmtab_mun.Position  := poDesktopCenter;
    frmtab_mun.ShowModal;
  finally
    freeAndnil(frmtab_mun);
    frmtab_mun.Free;
  end;
end;

procedure Tfrmcad_com_edi.FormDestroy(Sender: TObject);
begin
  frmcad_COM_edi := nil;
end;

procedure Tfrmcad_com_edi.edcepClick(Sender: TObject);
begin
  if length(edcep.Text) > 9 then
     edcep.Text := '';
end;

procedure Tfrmcad_com_edi.edcepEnter(Sender: TObject);
begin
  if length(edcep.Text) > 9 then
     edcep.Text := '';
end;

procedure Tfrmcad_com_edi.edtel2DblClick(Sender: TObject);
begin
  edtel2.Text := '';
end;

procedure Tfrmcad_com_edi.edtel1DblClick(Sender: TObject);
begin
  edtel1.Text := '';
end;

procedure Tfrmcad_com_edi.edfaxDblClick(Sender: TObject);
begin
  edfax.Text := '';
end;

procedure Tfrmcad_com_edi.edcelDblClick(Sender: TObject);
begin
  edcel.Text := '';
end;

procedure Tfrmcad_com_edi.edcmucValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
 with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_MUN');
    SQL.Add('WHERE  MUN_CMUN = '''+edcmuc.Text+'''');
    Open;

    if fields[0].IsNull then
       raise exception.Create('Código Municipal do local de cobrança Inválido !');
  end;
end;

procedure Tfrmcad_com_edi.edcmuvValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_MUN');
    SQL.Add('WHERE  MUN_CMUN = '''+edcmuv.Text+'''');
    Open;

    if fields[0].IsNull then
       raise exception.Create('Código Municipal do local de entrega Inválido !');
  end;
end;

procedure Tfrmcad_com_edi.edcmucButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmtab_mun := TFrmtab_mun.Create(self);
  try
    frmtab_mun.FormStyle := fsNormal;
    frmtab_mun.Visible   := false;
    frmtab_mun.Position  := poDesktopCenter;
    frmtab_mun.ShowModal;
  finally
    freeAndnil(frmtab_mun);
    frmtab_mun.Free;
  end;
end;

procedure Tfrmcad_com_edi.edcmuvButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmtab_mun := TFrmtab_mun.Create(self);
  try
    frmtab_mun.FormStyle := fsNormal;
    frmtab_mun.Visible   := false;
    frmtab_mun.Position  := poDesktopCenter;
    frmtab_mun.ShowModal;
  finally
    freeAndnil(frmtab_mun);
    frmtab_mun.Free;
  end;
end;

procedure Tfrmcad_com_edi.BUSCA_CEP_COM;
var
  cCEP: string;
  i: word;
begin
  for i := 1 to length(edcep.Text) do
    if copy(edcep.Text,i,1) <> '-' then
       cCEP := cCEP+copy(edcep.Text,i,1);

  cep_log.Close;
  cep_log.Params[0].Value := cCEP;
  cep_log.Open;

  if not cep_log.Fields[0].IsNull then
  begin
    edtlog.Text := cep_logLOG_TIT.AsString;
    edlogr.Text := cep_logLOG_NO.AsString;
    edcep.Text  := cep_logLOG_CEP.AsString;
    edbai.Text  := copy(cep_logBAI_NO.AsString,1,40);
    edcid.Text  := copy(cep_logLOC_NO.AsString,1,40);
    eduf.Text   := cep_logLOG_UF.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT MUN_CMUN FROM TAB_MUN');
      SQL.Add('WHERE  MUN_DMUN = '''+edcid.Text+'''');
      Open;
      edcmun.Text := fields[0].AsString;
    end;
  end;
  if (pcmain.ActivePage = tsEND) and (pcend.ActivePage = tsCEP_COM) then
      ednume.SetFocus;
end;

procedure Tfrmcad_com_edi.BUSCA_CEP_COB;
var
  cCEP: string;
  i: word;
begin
  for i := 1 to length(edcepc.Text) do
    if copy(edcepc.Text,i,1) <> '-' then
       cCEP := cCEP+copy(edcepc.Text,i,1);

  cep_log.Close;
  cep_log.Params[0].Value := cCEP;
  cep_log.Open;

  if not cep_log.Fields[0].IsNull then
  begin
    edtloc.Text := cep_logLOG_TIT.AsString;
    edlogc.Text := cep_logLOG_NO.AsString;
    edbaic.Text := copy(cep_logBAI_NO.AsString,1,40);
    edcidc.Text := copy(cep_logLOC_NO.AsString,1,40);
    edufc.Text  := cep_logLOG_UF.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT MUN_CMUN FROM TAB_MUN');
      SQL.Add('WHERE  MUN_DMUN = '''+edcidc.Text+'''');
      Open;
      edcmuc.Text := fields[0].AsString;
    end;
  end;
  
  if (pcmain.ActivePage = tsEND) and (pcend.ActivePage = tsCEP_COB) then
      ednumc.SetFocus;
end;

procedure Tfrmcad_com_edi.BUSCA_CEP_ENT;
var
  cCEP: string;
  i: word;
begin
  for i := 1 to length(edcepv.Text) do
    if copy(edcepv.Text,i,1) <> '-' then
       cCEP := cCEP+copy(edcepv.Text,i,1);

  cep_log.Close;
  cep_log.Params[0].Value := cCEP;
  cep_log.Open;

  if not cep_log.Fields[0].IsNull then
  begin
    edtlov.Text := cep_logLOG_TIT.AsString;
    edlogv.Text := cep_logLOG_NO.AsString;
    edbaiv.Text := copy(cep_logBAI_NO.AsString,1,40);
    edcidv.Text := copy(cep_logLOC_NO.AsString,1,40);
    edufv.Text  := cep_logLOG_UF.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT MUN_CMUN FROM TAB_MUN');
      SQL.Add('WHERE  MUN_DMUN = '''+edcidv.Text+'''');
      Open;
      edcmuv.Text := fields[0].AsString;
    end;
  end;
  
  if (pcmain.ActivePage = tsEND) and (pcend.ActivePage = tsCEP_ENT) then
      ednumv.SetFocus;
end;


procedure Tfrmcad_com_edi.edcepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BUSCA_CEP_COM;
end;

procedure Tfrmcad_com_edi.edvdscKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    pcMAIN.ActivePageIndex := 0;
    edcont.SetFocus;
  end
end;

procedure Tfrmcad_com_edi.banIClick(Sender: TObject);
begin
  cad_COM_ban.Append;
end;

procedure Tfrmcad_com_edi.banAClick(Sender: TObject);
begin
  cad_COM_ban.Edit;
end;

procedure Tfrmcad_com_edi.banEClick(Sender: TObject);
begin
  cad_COM_ban.Delete;
end;

procedure Tfrmcad_com_edi.banCClick(Sender: TObject);
begin
  cad_COM_ban.Cancel;
end;

procedure Tfrmcad_com_edi.banSClick(Sender: TObject);
begin
  cad_COM_ban.Post;
end;

procedure Tfrmcad_com_edi.cad_com_banAfterCancel(DataSet: TDataSet);
begin
  banI.Enabled := true;
  banA.Enabled := true;
  banE.Enabled := true;
  banS.Enabled := false;
  banC.Enabled := false;
end;

procedure Tfrmcad_com_edi.cad_com_banAfterDelete(DataSet: TDataSet);
begin
  IBtra.CommitRetaining;
  banI.Enabled := true;
  banA.Enabled := true;
  banE.Enabled := true;
  banS.Enabled := false;
  banC.Enabled := false;
end;

procedure Tfrmcad_com_edi.cad_com_banAfterEdit(DataSet: TDataSet);
begin
  banI.Enabled := false;
  banA.Enabled := false;
  banE.Enabled := false;
  banS.Enabled := true;
  banC.Enabled := true;

  if pcMAIN.ActivePage = tsBAN then
     dbgban.SetFocus;
end;

procedure Tfrmcad_com_edi.cad_com_banAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  banI.Enabled := true;
  banA.Enabled := true;
  banE.Enabled := true;
  banS.Enabled := false;
  banC.Enabled := false;

  wRec := cad_COM_ban.GetBookmark;
  IBTra.CommitRetaining;

  cad_COM_ban.Close;
  cad_COM_ban.Open;
  if (wRec = Nil) or (cad_COM_ban.Fields[0].IsNull) then cad_COM_ban.last
     else cad_COM_ban.GotoBookmark(wRec);
  cad_COM_ban.FreeBookmark(wRec);

  if pcMAIN.ActivePage = tsban then
     dbgban.SetFocus;
end;

procedure Tfrmcad_com_edi.cad_com_banBeforeCancel(DataSet: TDataSet);
begin
  if cad_COM_ban.RecordCount = 0 then
  begin
    banI.Enabled := true;
    banA.Enabled := true;
    banE.Enabled := true;
    banS.Enabled := false;
    banC.Enabled := false;

    cad_COM_ban.Close;
    cad_COM_ban.Open;
    ABORT;
  end;
end;

procedure Tfrmcad_com_edi.cad_com_banBeforeDelete(DataSet: TDataSet);
begin
  if not cad_COM_ban.Fields[0].IsNull then
  begin
    if yesno(handle,'Excluir Registro ?') = mrno then
       abort;
  end;
end;

procedure Tfrmcad_com_edi.cad_com_banNewRecord(DataSet: TDataSet);
begin
  cad_com_banID.Value       := 0;
  cad_com_banCOM_CCOM.Value := strtoint(edccom.Text);
  cad_com_banCOM_DCAD.Value := StrToDate(TSConsulta.Values['data_sistema']);
end;

procedure Tfrmcad_com_edi.dbgbanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgban.FocusedColumn = 1 then
                 begin
                   if dbgban.EditingText <> '' then
                   with consulta do
                   begin
                     SQL.Clear;
                     SQL.Add('SELECT BAN_BANC,BAN_DESC FROM TAB_BAN');
                     SQL.Add('WHERE  BAN_BANC = '''+dbgban.EditingText+'''');
                     Open;

                     if fields[0].IsNull then
                        DataBaseError('Banco não cadastrado !');

                     cad_COM_banCOM_BANC.Value := fields[0].AsString;
                     cad_COM_banCOM_DESC.Value := fields[1].AsString;
                   end
                   else
                   begin
                     cad_COM_banCOM_BANC.Value := '';
                     cad_COM_banCOM_DESC.Value := '';
                   end;
                   dbgban.FocusedColumn := 3;
                 end
                 else if dbgban.FocusedColumn = 6 then
                 begin
                   cad_COM_ban.Next;
                   if cad_COM_ban.Eof then
                      cad_COM_ban.Append;

                   dbgban.FocusedColumn := 1
                 end
                 else
                    dbgban.FocusedColumn := dbgban.FocusedColumn + 1;
               end;
    VK_INSERT: if cad_COM_ban.State = dsBrowse then banI.Click;
    VK_DELETE: if cad_COM_ban.State = dsBrowse then banE.Click;
    VK_ESCAPE: if cad_COM_ban.State = dsBrowse then {nothing} else banC.Click;
  end;
end;

procedure Tfrmcad_com_edi.obsIClick(Sender: TObject);
begin
  cad_com_obs.Append;
end;

procedure Tfrmcad_com_edi.obsEClick(Sender: TObject);
begin
  cad_com_obs.Delete;
end;

procedure Tfrmcad_com_edi.obsSClick(Sender: TObject);
begin
  cad_com_obs.Post;
end;

procedure Tfrmcad_com_edi.obsCClick(Sender: TObject);
begin
  cad_com_obs.Cancel;
end;

procedure Tfrmcad_com_edi.obsAClick(Sender: TObject);
begin
  cad_com_obs.Edit;
end;

procedure Tfrmcad_com_edi.cad_com_obsAfterCancel(DataSet: TDataSet);
begin
  obsI.Enabled := true;
  obsA.Enabled := true;
  obsE.Enabled := true;
  obsS.Enabled := false;
  obsC.Enabled := false;
end;

procedure Tfrmcad_com_edi.cad_com_obsAfterDelete(DataSet: TDataSet);
begin
  IBtra.CommitRetaining;
  obsI.Enabled := true;
  obsA.Enabled := true;
  obsE.Enabled := true;
  obsS.Enabled := false;
  obsC.Enabled := false;
end;

procedure Tfrmcad_com_edi.cad_com_obsAfterEdit(DataSet: TDataSet);
begin
  obsI.Enabled := false;
  obsA.Enabled := false;
  obsE.Enabled := false;
  obsS.Enabled := true;
  obsC.Enabled := true;

  if pcMAIN.ActivePage = tsobs then
     dbgobs.SetFocus;
end;

procedure Tfrmcad_com_edi.cad_com_obsAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  obsI.Enabled := true;
  obsA.Enabled := true;
  obsE.Enabled := true;
  obsS.Enabled := false;
  obsC.Enabled := false;

  wRec := cad_com_obs.GetBookmark;
  IBTra.CommitRetaining;

  cad_com_obs.Close;
  cad_com_obs.Open;
  if (wRec = Nil) or (cad_com_obs.Fields[0].IsNull) then cad_com_obs.last
     else cad_com_obs.GotoBookmark(wRec);
  cad_com_obs.FreeBookmark(wRec);

  if pcMAIN.ActivePage = tsobs then
     dbgobs.SetFocus;
end;

procedure Tfrmcad_com_edi.cad_com_obsBeforeCancel(DataSet: TDataSet);
begin
  if cad_com_obs.RecordCount = 0 then
  begin
    obsI.Enabled := true;
    obsA.Enabled := true;
    obsE.Enabled := true;
    obsS.Enabled := false;
    obsC.Enabled := false;

    cad_com_obs.Close;
    cad_com_obs.Open;
    ABORT;
  end;
end;

procedure Tfrmcad_com_edi.cad_com_obsBeforeDelete(DataSet: TDataSet);
begin
  if not cad_com_obs.Fields[0].IsNull then
  begin
    if yesno(handle,'Excluir Registro ?') = mrno then
       abort;
  end;
end;

procedure Tfrmcad_com_edi.cad_com_obsNewRecord(DataSet: TDataSet);
begin
  cad_com_obsID.Value       := 0;
  cad_com_obsOBS_CCOM.Value := strtoint(edccom.Text);
  cad_com_obsOBS_DCAD.Value := StrToDate(TSConsulta.Values['data_sistema']);
end;

procedure Tfrmcad_com_edi.edcepcClick(Sender: TObject);
begin
  if length(edcepc.Text) > 9 then
     edcepc.Text := '';
end;

procedure Tfrmcad_com_edi.edcepcEnter(Sender: TObject);
begin
  if length(edcepc.Text) > 9 then
     edcepc.Text := '';
end;

procedure Tfrmcad_com_edi.edcepvClick(Sender: TObject);
begin
  if length(edcepv.Text) > 9 then
     edcepv.Text := '';
end;

procedure Tfrmcad_com_edi.edcepvEnter(Sender: TObject);
begin
  if length(edcepv.Text) > 9 then
     edcepv.Text := '';
end;

procedure Tfrmcad_com_edi.cad_com_banCOM_DESCValidate(Sender: TField);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT BAN_BANC FROM TAB_BAN');
    SQL.Add('WHERE  BAN_DESC = '''+cad_com_banCOM_DESC.AsString+'''');
    Open;

    if fields[0].IsNull then
       DataBaseError('Banco não cadastrado !');

    cad_com_banCOM_BANC.Value := fields[0].AsString;
  end
end;

procedure Tfrmcad_com_edi.cbstavKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    pcmain.ActivePageIndex := 0;
    edcont.SetFocus;
  end;
end;
    
procedure Tfrmcad_com_edi.siCONClick(Sender: TObject);
function RETORNA_TEL(fone: string): string;
var
  i: word;
  s: string;
begin
  s := '';

  if (fone <> '') and (copy(fone,1,1) <> '*') then
  begin
    if copy(fone,1,1) = '(' then
    edDDD.Text := copy(fone,2,2);

    for i := 5 to length(fone) do
    begin
      if copy(fone,i,1) = '-' then
      break;

      if copy(fone,i,1) <> ' ' then
      s := s + copy(fone,i,1)
    end;

    s := trim(s + copy(fone,i+1,5));

    if Length(fone) >= 15 then
    begin
      inc(i);
      edTEL2.Tag := i;

      for i := edTEL2.Tag to length(fone) do
      begin
        if copy(fone,i,1) = ')' then
        break;
      end;

      edTEL2.Tag := i+1;

      for i := edTEL2.Tag to length(fone) do
      begin
        if copy(fone,i,1) = '-' then
        break;

        if copy(fone,i,1) <> ' ' then
        edTEL2.Text := edTEL2.Text + copy(fone,i,1)
      end;
      edTEL2.Text := trim(edTEL2.Text + copy(fone,i+1,5));
    end;
  end;

  if edTEL2.Text = s then
  edTEL2.Text := '';
  
  result := s;
end;

function RETORNA_LOGR(endereco: string) : string;
var
  i: word;
begin
  for i := 1 to length(endereco) do
  begin
    if copy(endereco,i,1) = ' ' then
    break;
  end;

  if copy(endereco,1,1) = 'R' then
  edtlog.Text := 'RUA' else
  if copy(endereco,1,1) = 'A' then
  edtlog.Text := 'AVENIDA' else
  if copy(endereco,1,2) = 'AL' then
  edtlog.Text := 'ALAMEDA' else
  if copy(endereco,1,1) = 'P' then
  edtlog.Text := 'PRAÇA' else
  if copy(endereco,1,2) = 'PQ' then
  edtlog.Text := 'PARQUE' else
  if copy(endereco,1,2) = 'PÇ' then
  edtlog.Text := 'PRAÇA' else
  if copy(endereco,1,2) = 'RO' then
  edtlog.Text := 'RODOVIA' else
  if copy(endereco,1,1) = 'T' then
  edtlog.Text := 'TRAVESSA';

  if edtlog.Text = '' then
  edtlog.Text := TRIM(copy(endereco,1,i));

  result := TRIM(copy(endereco,i+1,Length(endereco)));
end;

begin
  frmsintegra := tfrmsintegra.create(self);
  frmsintegra.EditCNPJ.Text := trim(edcnpj.Text);
  try
    frmsintegra.ShowModal;
  finally
    if (frmsintegra.EditUF.Text <> '') and (copy(frmsintegra.EditUF.Text,1,1) <> '*') then
    begin
      edcnpj.Text := frmsintegra.EditCNPJ.Text;
      EdRaza.Text := frmsintegra.EditRazaoSocial.Text;
      edlogr.Text := RETORNA_LOGR(frmsintegra.EditEndereco.Text);
      EdComp.Text := frmsintegra.EditComplemento.Text;
      edbai.Text  := frmsintegra.EditBairro.Text;
      edcid.Text  := frmsintegra.EditCidade.Text;
      eduf.Text   := frmsintegra.EditUF.Text;
      ednume.Text := frmsintegra.EditNumero.Text;
      edtel1.Text := RETORNA_TEL(frmsintegra.EditFone.Text);
      edcep.Text  := copy(frmsintegra.EditCEP.Text,1,5)+copy(frmsintegra.EditCEP.Text,7,3);
      edobse.Text := frmsintegra.ListCNAE2.Items.Text;

      if copy(frmsintegra.EditEmail.Text,1,1) <> '*' then
      edmail.Text := LOWERCASE(frmsintegra.EditEmail.Text);

      if copy(frmsintegra.EditFantasia.Text,1,1) <> '*' then
      edfant.Text := frmsintegra.EditFantasia.Text;

      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT MUN_CMUN FROM TAB_MUN');
        SQL.Add('WHERE  MUN_DMUN = '''+edcid.Text+'''');
        Open;
        edcmun.Text := fields[0].AsString;
      end;
    end;
    freeAndNil(frmsintegra);
    frmsintegra.Free;
  end;
end;

end.



