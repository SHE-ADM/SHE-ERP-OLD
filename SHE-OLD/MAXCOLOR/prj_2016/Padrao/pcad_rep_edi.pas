unit pcad_rep_edi;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, IBStoredProc, IBEvents, IBDatabase, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxEditor, dxEdLib, ExtCtrls, StdCtrls,
  dxExEdtr, dxPageControl, ImgList,  ComCtrls,
  dxDBELib, Shellapi, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms,
  rxSpeedbar;

type
  Tfrmcad_rep_edi = class(Tfrmpadr3)
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
    cad_rep_ban: TIBDataSet;
    dtscad_rep_ban: TDataSource;
    cad_rep_obs: TIBDataSet;
    dtscad_rep_obs: TDataSource;
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
    cad_rep: TIBDataSet;
    pcinfo: TdxPageControl;
    tsicad: TdxTabSheet;
    Label1: TLabel;
    edcrep: TdxEdit;
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
    cad_rep_obsID: TIntegerField;
    cad_rep_obsOBS_DCAD: TDateField;
    cad_rep_obsOBS_OBSE: TMemoField;
    cad_rep_banID: TIntegerField;
    cad_rep_banREP_CREP: TIntegerField;
    cad_rep_banREP_DCAD: TDateField;
    cad_rep_banREP_BANC: TIBStringField;
    cad_rep_banREP_DESC: TIBStringField;
    cad_rep_banREP_AGEN: TIBStringField;
    cad_rep_banREP_CONT: TIBStringField;
    cad_rep_banREP_OBSE: TMemoField;
    cad_rep_banREP_TIPO: TIBStringField;
    cad_rep_banREP_DOCU: TIBStringField;
    cad_rep_obsOBS_CREP: TIntegerField;
    cad_repID: TIntegerField;
    cad_repREP_RAZA: TIBStringField;
    cad_repREP_FANT: TIBStringField;
    cad_repREP_CONT: TIBStringField;
    cad_repREP_DCAD: TDateField;
    cad_repREP_STA: TIBStringField;
    cad_repREP_MAIL: TIBStringField;
    cad_repREP_DDD: TIBStringField;
    cad_repREP_TEL1: TIBStringField;
    cad_repREP_TEL2: TIBStringField;
    cad_repREP_FAX: TIBStringField;
    cad_repREP_CEL: TIBStringField;
    cad_repREP_RG: TIBStringField;
    cad_repREP_CPF: TIBStringField;
    cad_repREP_INSC: TIBStringField;
    cad_repREP_CNPJ: TIBStringField;
    cad_repREP_TLOG: TIBStringField;
    cad_repREP_LOGR: TIBStringField;
    cad_repREP_CEP: TIBStringField;
    cad_repREP_NUME: TIBStringField;
    cad_repREP_COMP: TIBStringField;
    cad_repREP_BAI: TIBStringField;
    cad_repREP_CID: TIBStringField;
    cad_repREP_ESTA: TIBStringField;
    cad_repREP_TLOC: TIBStringField;
    cad_repREP_LOGC: TIBStringField;
    cad_repREP_CEPC: TIBStringField;
    cad_repREP_NUMC: TIBStringField;
    cad_repREP_COMC: TIBStringField;
    cad_repREP_BAIC: TIBStringField;
    cad_repREP_CIDC: TIBStringField;
    cad_repREP_ESTC: TIBStringField;
    cad_repREP_OBSO: TMemoField;
    cad_repREP_STAV: TIBStringField;
    cad_repREP_VULT: TIBBCDField;
    cad_repREP_TPVE: TIBStringField;
    cad_repREP_OBSE: TMemoField;
    cad_repREP_TLOV: TIBStringField;
    cad_repREP_LOGV: TIBStringField;
    cad_repREP_CEPV: TIBStringField;
    cad_repREP_NUMV: TIBStringField;
    cad_repREP_COMV: TIBStringField;
    cad_repREP_BAIV: TIBStringField;
    cad_repREP_CIDV: TIBStringField;
    cad_repREP_ESTV: TIBStringField;
    cad_repREP_RICM: TIBStringField;
    cad_repREP_CPAG: TIBStringField;
    cad_repREP_DPAG: TIBStringField;
    cad_repREP_CMUN: TIBStringField;
    cad_repREP_DALT: TDateField;
    cad_repREP_CTRA: TIntegerField;
    cad_repREP_DTRA: TIBStringField;
    cad_repREP_DFUN: TDateField;
    cad_repREP_CICM: TIBStringField;
    cad_repREP_RAMO: TIBStringField;
    cad_repREP_CMUV: TIBStringField;
    cad_repREP_CMUC: TIBStringField;
    cad_repREP_DD2: TIBStringField;
    cad_repREP_DD3: TIBStringField;
    cad_repREP_DD4: TIBStringField;
    cad_repREP_DD5: TIBStringField;
    cad_repREP_DD6: TIBStringField;
    cad_repREP_TEL3: TIBStringField;
    cad_repREP_TCE1: TIBStringField;
    cad_repREP_TCE2: TIBStringField;
    cad_repREP_NCEL: TIBStringField;
    cad_repREP_NEID: TIBStringField;
    cad_repREP_FCON: TIBStringField;
    cad_repREP_FMAI: TIBStringField;
    cad_repREP_FDDD: TIBStringField;
    cad_repREP_FTE1: TIBStringField;
    cad_repREP_FDD2: TIBStringField;
    cad_repREP_FTE2: TIBStringField;
    cad_repREP_FDD3: TIBStringField;
    cad_repREP_FTE3: TIBStringField;
    cad_repREP_FDD4: TIBStringField;
    cad_repREP_FFAX: TIBStringField;
    cad_repREP_FDD5: TIBStringField;
    cad_repREP_FCEL: TIBStringField;
    cad_repREP_FTC1: TIBStringField;
    cad_repREP_FDD6: TIBStringField;
    cad_repREP_FNCE: TIBStringField;
    cad_repREP_FTC2: TIBStringField;
    cad_repREP_FNID: TIBStringField;
    cad_repREP_CCON: TIBStringField;
    cad_repREP_CMAI: TIBStringField;
    cad_repREP_CDDD: TIBStringField;
    cad_repREP_CTE1: TIBStringField;
    cad_repREP_CDD2: TIBStringField;
    cad_repREP_CTE2: TIBStringField;
    cad_repREP_CDD3: TIBStringField;
    cad_repREP_CTE3: TIBStringField;
    cad_repREP_CDD4: TIBStringField;
    cad_repREP_CFAX: TIBStringField;
    cad_repREP_CDD5: TIBStringField;
    cad_repREP_CCEL: TIBStringField;
    cad_repREP_CTC1: TIBStringField;
    cad_repREP_CDD6: TIBStringField;
    cad_repREP_CNCE: TIBStringField;
    cad_repREP_CTC2: TIBStringField;
    cad_repREP_CNID: TIBStringField;
    cad_repREP_VDSC: TIBBCDField;
    cad_repREP_CRED: TIBBCDField;
    cad_repREP_SITE: TIBStringField;
    cad_repREP_REVE: TIBStringField;
    cad_repREP_IMUN: TIBStringField;
    cad_repREP_CCM: TIBStringField;
    dbgbanREP_DCAD: TdxDBGridDateColumn;
    dbgbanREP_BANC: TdxDBGridMaskColumn;
    dbgbanREP_DESC: TdxDBGridPickColumn;
    dbgbanREP_AGEN: TdxDBGridMaskColumn;
    dbgbanREP_CONT: TdxDBGridMaskColumn;
    dbgbanREP_TIPO: TdxDBGridPickColumn;
    dbgbanREP_DOCU: TdxDBGridMaskColumn;
    dbgbanREP_OBSE: TdxDBGridBlobColumn;
    edcomi: TdxEdit;
    Label2: TLabel;
    cad_repREP_DULT: TDateField;
    cad_repREP_COMI: TIBBCDField;
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
    procedure edcrepValidate(Sender: TObject; var ErrorText: String;
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
    procedure cad_rep_banAfterCancel(DataSet: TDataSet);
    procedure cad_rep_banAfterDelete(DataSet: TDataSet);
    procedure cad_rep_banAfterEdit(DataSet: TDataSet);
    procedure cad_rep_banAfterPost(DataSet: TDataSet);
    procedure cad_rep_banNewRecord(DataSet: TDataSet);
    procedure cad_rep_banBeforeCancel(DataSet: TDataSet);
    procedure cad_rep_banBeforeDelete(DataSet: TDataSet);
    procedure dbgbanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure obsIClick(Sender: TObject);
    procedure obsEClick(Sender: TObject);
    procedure obsSClick(Sender: TObject);
    procedure obsCClick(Sender: TObject);
    procedure obsAClick(Sender: TObject);
    procedure cad_rep_obsAfterCancel(DataSet: TDataSet);
    procedure cad_rep_obsAfterDelete(DataSet: TDataSet);
    procedure cad_rep_obsAfterEdit(DataSet: TDataSet);
    procedure cad_rep_obsAfterPost(DataSet: TDataSet);
    procedure cad_rep_obsBeforeCancel(DataSet: TDataSet);
    procedure cad_rep_obsBeforeDelete(DataSet: TDataSet);
    procedure cad_rep_obsNewRecord(DataSet: TDataSet);
    procedure edcepcClick(Sender: TObject);
    procedure edcepcEnter(Sender: TObject);
    procedure edcepvClick(Sender: TObject);
    procedure edcepvEnter(Sender: TObject);
    procedure cbstavKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cad_rep_banREP_DESCValidate(Sender: TField);
    procedure edcomiValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure siCONClick(Sender: TObject);
  private
    { Private declarations }
    procedure NOVO_REPRESENTANTE;
    procedure BUSCA_CEP_COM;
    procedure BUSCA_CEP_COB;
    procedure BUSCA_CEP_ENT;
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmcad_rep_edi: Tfrmcad_rep_edi;

implementation

uses bDados, pcad_rep, uPrincipal, unLocaliza_Cep, ptab_mun, psintegra;

{$R *.dfm}
procedure Tfrmcad_rep_edi.FormCreate(Sender: TObject);
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
      dbgbanREP_DESC.Items.Add(fields[0].AsString);
      next;
    end;
  end;
end;

procedure Tfrmcad_rep_edi.siSAVClick(Sender: TObject);
begin
  if (Length(edcnpj.Text) >= 14) and (edinsc.Text = '') then
  begin
    pcinfo.ActivePageIndex := 0;
    edinsc.SetFocus;
    raise exception.Create('Inscrição estadual não informada !');
  end;

  if (edcrep.Text = '')  or (edcrep.Text = '00000') then
     raise exception.Create('Código do representante não informado !');

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
    raise exception.Create('Situação do representante não informado !');
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
      ibSP.StoredProcName := 'SP_CAD_REP';
      ibSP.Prepare;

      case frmcad_rep_edi.Tag of
        0: ibSP.Params[0].Value := null;
        1: ibSP.Params[0].Value := edcrep.Text;
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
      ibSP.ParamByName('comi').Value  := edcomi.Text;
      ibSP.ExecProc;

      case frmcad_rep_edi.Tag of
        0: frmprincipal.Log_Eve('Representantes','Cadastro de Representantes','Inclusão' ,edcrep.Text,edcrep.Text,LOWERCASE(edfant.Text),'','');
        1: frmprincipal.Log_Eve('Representantes','Cadastro de Representantes','Alteração',edcrep.Text,edcrep.Text,LOWERCASE(edfant.Text),'','');
      end;

      editado := true;
      IBTra.Commit;
      IBTra.StartTransaction;

      if (frmcad_rep_edi.Tag = 0) then
         NOVO_REPRESENTANTE
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

procedure Tfrmcad_rep_edi.edcepButtonClick(Sender: TObject;
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

procedure Tfrmcad_rep_edi.edcepcButtonClick(Sender: TObject;
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

procedure Tfrmcad_rep_edi.edcepcValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BUSCA_CEP_COB;
end;

procedure Tfrmcad_rep_edi.FormShow(Sender: TObject);
begin
  inherited;
  if tag = 1 then
  begin
    with cad_rep do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_REP');
      SelectSQL.Add('WHERE ID = '''+frmcad_rep.cadastroID.AsString+'''');
      Open;

      edcrep.Text := oStrZero(FieldByName('ID').AsInteger,5);
      edfant.Text := FieldByName('REP_FANT').AsString;
      eddcad.Date := FieldByName('REP_DCAD').AsDateTime;
      eddalt.Date := strtodate(SLPrincipal.Values['data_sistema']);
      edraza.Text := FieldByName('REP_RAZA').AsString;
      edcont.Text := FieldByName('REP_CONT').AsString;
      edfcon.Text := FieldByName('REP_FCON').AsString;
      edccon.Text := FieldByName('REP_CCON').AsString;
      edmail.Text := FieldByName('REP_MAIL').AsString;
      edfmai.Text := FieldByName('REP_FMAI').AsString;
      edcmai.Text := FieldByName('REP_CMAI').AsString;
      edddd.Text  := FieldByName('REP_DDD').AsString;
      eddd2.Text  := FieldByName('REP_DD2').AsString;
      eddd3.Text  := FieldByName('REP_DD3').AsString;
      eddd4.Text  := FieldByName('REP_DD4').AsString;
      eddd5.Text  := FieldByName('REP_DD5').AsString;
      eddd6.Text  := FieldByName('REP_DD6').AsString;
      edfddd.Text := FieldByName('REP_FDDD').AsString;
      edfdd2.Text := FieldByName('REP_FDD2').AsString;
      edfdd3.Text := FieldByName('REP_FDD3').AsString;
      edfdd4.Text := FieldByName('REP_FDD4').AsString;
      edfdd5.Text := FieldByName('REP_FDD5').AsString;
      edfdd6.Text := FieldByName('REP_FDD6').AsString;
      edcddd.Text := FieldByName('REP_CDDD').AsString;
      edcdd2.Text := FieldByName('REP_CDD2').AsString;
      edcdd3.Text := FieldByName('REP_CDD3').AsString;
      edcdd4.Text := FieldByName('REP_CDD4').AsString;
      edcdd5.Text := FieldByName('REP_CDD5').AsString;
      edcdd6.Text := FieldByName('REP_CDD6').AsString;
      edtel1.Text := FieldByName('REP_TEL1').AsString;
      edtel2.Text := FieldByName('REP_TEL2').AsString;
      edtel3.Text := FieldByName('REP_TEL3').AsString;
      edfax.Text  := FieldByName('REP_FAX').AsString;
      edffax.Text := FieldByName('REP_FFAX').AsString;
      edcfax.Text := FieldByName('REP_CFAX').AsString;
      edfte1.Text := FieldByName('REP_FTE1').AsString;
      edfte2.Text := FieldByName('REP_FTE2').AsString;
      edfte3.Text := FieldByName('REP_FTE3').AsString;
      edcte1.Text := FieldByName('REP_CTE1').AsString;
      edcte2.Text := FieldByName('REP_CTE2').AsString;
      edcte3.Text := FieldByName('REP_CTE3').AsString;
      edcel.Text  := FieldByName('REP_CEL').AsString;
      edfcel.Text := FieldByName('REP_FCEL').AsString;
      edccel.Text := FieldByName('REP_CCEL').AsString;
      edneid.Text := FieldByName('REP_NEID').AsString;
      edfnid.Text := FieldByName('REP_FNID').AsString;
      edcnid.Text := FieldByName('REP_CNID').AsString;
      edncel.Text := FieldByName('REP_NCEL').AsString;
      edfnce.Text := FieldByName('REP_FNCE').AsString;
      edcnce.Text := FieldByName('REP_CNCE').AsString;
      cbtce1.Text := FieldByName('REP_TCE1').AsString;
      cbtce2.Text := FieldByName('REP_TCE2').AsString;
      cbftc1.Text := FieldByName('REP_FTC1').AsString;
      cbftc2.Text := FieldByName('REP_FTC2').AsString;
      cbctc1.Text := FieldByName('REP_CTC1').AsString;
      cbctc2.Text := FieldByName('REP_CTC2').AsString;
      edccm.Text  := FieldByName('REP_CCM').AsString;
      edimun.Text := FieldByName('REP_IMUN').AsString;
      edcomi.Text := formatfloat('0.00',FieldByName('REP_COMI').AsFloat);

      if FieldByName('REP_CNPJ').AsString <> '' then
      begin
        edcnpj.Text   := FieldByName('REP_CNPJ').AsString;
        edinsc.Text   := FieldByName('REP_INSC').AsString;
      end;

      if FieldByName('REP_CPF').AsString <> '' then
      begin
        edcpf.Text     := FieldByName('REP_CPF').AsString;
        edrg.Text      := FieldByName('REP_RG').AsString;
      end;

      edtlog.Text := FieldByName('REP_TLOG').AsString;
      edlogr.Text := FieldByName('REP_LOGR').AsString;
      edcep.Text  := FieldByName('REP_CEP').AsString;
      edcmun.Text := FieldByName('REP_CMUN').AsString;
      edcmuv.Text := FieldByName('REP_CMUV').AsString;
      edcmuc.Text := FieldByName('REP_CMUC').AsString;
      ednume.Text := FieldByName('REP_NUME').AsString;
      edcomp.Text := FieldByName('REP_COMP').AsString;
      edbai.Text  := FieldByName('REP_BAI').AsString;
      edcid.Text  := FieldByName('REP_CID').AsString;
      eduf.Text   := FieldByName('REP_ESTA').AsString;
      edtloc.Text := FieldByName('REP_TLOC').AsString;
      edlogc.Text := FieldByName('REP_LOGC').AsString;
      edcepc.Text := FieldByName('REP_CEPC').AsString;
      ednumc.Text := FieldByName('REP_NUMC').AsString;
      edcomc.Text := FieldByName('REP_COMC').AsString;
      edbaic.Text := FieldByName('REP_BAIC').AsString;
      edcidc.Text := FieldByName('REP_CIDC').AsString;
      edufc.Text  := FieldByName('REP_ESTC').AsString;
      edtlov.Text := FieldByName('REP_TLOV').AsString;
      edlogv.Text := FieldByName('REP_LOGV').AsString;
      edcepv.Text := FieldByName('REP_CEPV').AsString;
      ednumv.Text := FieldByName('REP_NUMV').AsString;
      edcomv.Text := FieldByName('REP_COMV').AsString;
      edbaiv.Text := FieldByName('REP_BAIV').AsString;
      edcidv.Text := FieldByName('REP_CIDV').AsString;
      edufv.Text  := FieldByName('REP_ESTV').AsString;
      edobse.Text := FieldByName('REP_OBSE').Value;
      edobso.Text := FieldByName('REP_OBSO').Value;
      cbstav.Text := FieldByName('REP_STAV').AsString;
    end
  end
  else
    NOVO_REPRESENTANTE;

  edfant.SetFocus;

  with cad_rep_ban do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_REP_BAN');
    SelectSQL.Add('WHERE REP_CREP = '''+edcrep.Text+'''');
    Open;
  end;

  with cad_rep_obs do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_rep_OBS');
    SelectSQL.Add('WHERE OBS_CREP = '''+edcrep.Text+'''');
    Open;
  end;
end;

procedure Tfrmcad_rep_edi.NOVO_REPRESENTANTE;
begin
  pcinfo.ActivePageIndex := 0;
  pcmain.ActivePageIndex := 0;
  
  edcrep.Text := '00000';
  edfant.Text := '';
  eddcad.Date := strtodate(SLPrincipal.Values['data_sistema']);
  eddalt.Date := strtodate(SLPrincipal.Values['data_sistema']);
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
  edcomi.Text := '3,00';
  
  if pcinfo.ActivePageIndex = 0 then
     edfant.SetFocus;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_CAD_REP,0) FROM RDB$DATABASE');
    Open;

    edcrep.Text := oStrZero(fields[0].AsInteger+1,5);
  end;
end;

procedure Tfrmcad_rep_edi.edcepvButtonClick(Sender: TObject;
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

procedure Tfrmcad_rep_edi.edcepvValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BUSCA_CEP_ENT;
end;

procedure Tfrmcad_rep_edi.ednumeValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if ednumc.Text = '' then
     ednumc.Text := ednume.Text;
  if ednumv.Text = '' then
     ednumv.Text := ednume.Text;
end;

procedure Tfrmcad_rep_edi.edcompValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcomc.Text = '' then
     edcomc.Text := edcomp.Text;
  if edcomv.Text = '' then
     edcomv.Text := edcomp.Text;
end;

procedure Tfrmcad_rep_edi.edcpfValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcpf.Text <> '' then
  begin
    if not oCPF(edcpf.Text) then
    begin
      edcpf.SetFocus;
      raise exception.Create('C.P.F. Inválido !');
    end;

    if frmcad_rep_edi.Tag =0 then    
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT REP_RAZA,REP_DCAD,ID,REP_STA FROM CAD_REP');
      SQL.Add('WHERE  REP_CPF = '''+edcpf.Text+'''');
      Open;

      if fields[3].AsString = '1' then
      begin
        edcpf.SetFocus;
        raise exception.Create('Não é possível cadastrar representante enviado à lixeira !'+#13+'Favor esvaziar a lixeira.');
      end;
      if (not fields[0].IsNull) and (edcrep.Text <> fields[2].AsString) then
      begin
        edcpf.SetFocus;
        raise exception.Create('C.P.F. já cadastrado.'+#13+'Razão Social: '+fields[0].AsString+'. '+#13+'Cadastrado em: '+fields[1].AsString);
      end;
    end;
  end;  
end;

procedure Tfrmcad_rep_edi.edcnpjValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcnpj.Text <> '' then
  begin
    if (not oCNPJ(edcnpj.Text)) then
    begin
      edcnpj.SetFocus;
      raise exception.Create('C.N.P.J. Inválido !');
    end;

    if frmcad_rep_edi.Tag =0 then
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT REP_RAZA,REP_DCAD,ID,REP_STA FROM CAD_REP');
      SQL.Add('WHERE  REP_CNPJ = '''+edcnpj.Text+'''');
      Open;

      if fields[3].AsString = '1' then
      begin
        edcnpj.SetFocus;
        raise exception.Create('Não é possível cadastrar representante enviado à lixeira !'+#13+'Favor esvaziar a lixeira.');
      end;
      if (not fields[0].IsNull) and (edcrep.Text <> fields[2].AsString) then
      begin
        edcnpj.SetFocus;
        raise exception.Create('C.N.P.J. já cadastrado.'+#13+'Razão Social: '+fields[0].AsString+'. '+#13+'Cadastrado em: '+fields[1].AsString);
      end;
    end;
  end;
end;

procedure Tfrmcad_rep_edi.edcrepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcrep.Text = '' then
     edcrep.Text := '00000';

  edcrep.Text := oStrZero(strtoint(edcrep.Text),5);

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT REP_RAZA FROM CAD_REP');
    SQL.Add('WHERE  ID = '''+edcrep.Text+'''');
    Open;

    if not fields[0].IsNull then
    begin
      edcrep.SetFocus;
      raise exception.Create('Representante já cadastrado com o mesmo código '+#13+fields[0].AsString);
    end;
  end;
end;

procedure Tfrmcad_rep_edi.edufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
     siSAV.Click;
end;

procedure Tfrmcad_rep_edi.edcmunValidate(Sender: TObject;
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

procedure Tfrmcad_rep_edi.edcmunButtonClick(Sender: TObject;
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

procedure Tfrmcad_rep_edi.FormDestroy(Sender: TObject);
begin
  frmcad_rep_edi := nil;
end;

procedure Tfrmcad_rep_edi.edcepClick(Sender: TObject);
begin
  if length(edcep.Text) > 9 then
     edcep.Text := '';
end;

procedure Tfrmcad_rep_edi.edcepEnter(Sender: TObject);
begin
  if length(edcep.Text) > 9 then
     edcep.Text := '';
end;

procedure Tfrmcad_rep_edi.edtel2DblClick(Sender: TObject);
begin
  edtel2.Text := '';
end;

procedure Tfrmcad_rep_edi.edtel1DblClick(Sender: TObject);
begin
  edtel1.Text := '';
end;

procedure Tfrmcad_rep_edi.edfaxDblClick(Sender: TObject);
begin
  edfax.Text := '';
end;

procedure Tfrmcad_rep_edi.edcelDblClick(Sender: TObject);
begin
  edcel.Text := '';
end;

procedure Tfrmcad_rep_edi.edcmucValidate(Sender: TObject;
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

procedure Tfrmcad_rep_edi.edcmuvValidate(Sender: TObject;
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

procedure Tfrmcad_rep_edi.edcmucButtonClick(Sender: TObject;
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

procedure Tfrmcad_rep_edi.edcmuvButtonClick(Sender: TObject;
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

procedure Tfrmcad_rep_edi.BUSCA_CEP_COM;
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

procedure Tfrmcad_rep_edi.BUSCA_CEP_COB;
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

procedure Tfrmcad_rep_edi.BUSCA_CEP_ENT;
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


procedure Tfrmcad_rep_edi.edcepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BUSCA_CEP_COM;
end;

procedure Tfrmcad_rep_edi.edvdscKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    pcMAIN.ActivePageIndex := 0;
    edcont.SetFocus;
  end
end;

procedure Tfrmcad_rep_edi.banIClick(Sender: TObject);
begin
  cad_rep_ban.Append;
end;

procedure Tfrmcad_rep_edi.banAClick(Sender: TObject);
begin
  cad_rep_ban.Edit;
end;

procedure Tfrmcad_rep_edi.banEClick(Sender: TObject);
begin
  cad_rep_ban.Delete;
end;

procedure Tfrmcad_rep_edi.banCClick(Sender: TObject);
begin
  cad_rep_ban.Cancel;
end;

procedure Tfrmcad_rep_edi.banSClick(Sender: TObject);
begin
  cad_rep_ban.Post;
end;

procedure Tfrmcad_rep_edi.cad_rep_banAfterCancel(DataSet: TDataSet);
begin
  banI.Enabled := true;
  banA.Enabled := true;
  banE.Enabled := true;
  banS.Enabled := false;
  banC.Enabled := false;
end;

procedure Tfrmcad_rep_edi.cad_rep_banAfterDelete(DataSet: TDataSet);
begin
  IBtra.CommitRetaining;
  banI.Enabled := true;
  banA.Enabled := true;
  banE.Enabled := true;
  banS.Enabled := false;
  banC.Enabled := false;
end;

procedure Tfrmcad_rep_edi.cad_rep_banAfterEdit(DataSet: TDataSet);
begin
  banI.Enabled := false;
  banA.Enabled := false;
  banE.Enabled := false;
  banS.Enabled := true;
  banC.Enabled := true;

  if pcMAIN.ActivePage = tsBAN then
     dbgban.SetFocus;
end;

procedure Tfrmcad_rep_edi.cad_rep_banAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  banI.Enabled := true;
  banA.Enabled := true;
  banE.Enabled := true;
  banS.Enabled := false;
  banC.Enabled := false;

  wRec := cad_rep_ban.GetBookmark;
  IBTra.CommitRetaining;

  cad_rep_ban.Close;
  cad_rep_ban.Open;
  if (wRec = Nil) or (cad_rep_ban.Fields[0].IsNull) then cad_rep_ban.last
     else cad_rep_ban.GotoBookmark(wRec);
  cad_rep_ban.FreeBookmark(wRec);

  if pcMAIN.ActivePage = tsban then
     dbgban.SetFocus;
end;

procedure Tfrmcad_rep_edi.cad_rep_banBeforeCancel(DataSet: TDataSet);
begin
  if cad_rep_ban.RecordCount = 0 then
  begin
    banI.Enabled := true;
    banA.Enabled := true;
    banE.Enabled := true;
    banS.Enabled := false;
    banC.Enabled := false;

    cad_rep_ban.Close;
    cad_rep_ban.Open;
    ABORT;
  end;
end;

procedure Tfrmcad_rep_edi.cad_rep_banBeforeDelete(DataSet: TDataSet);
begin
  if not cad_rep_ban.Fields[0].IsNull then
  begin
    if oYesNo(handle,'Excluir Registro ?') = mrno then
       abort;
  end;
end;

procedure Tfrmcad_rep_edi.cad_rep_banNewRecord(DataSet: TDataSet);
begin
  cad_rep_banID.Value       := 0;
  cad_rep_banREP_CREP.Value := strtoint(edcrep.Text);
  cad_rep_banREP_DCAD.Value := StrToDate(SLPrincipal.Values['data_sistema']);
end;

procedure Tfrmcad_rep_edi.dbgbanKeyDown(Sender: TObject; var Key: Word;
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

                     cad_rep_banREP_BANC.Value := fields[0].AsString;
                     cad_rep_banREP_DESC.Value := fields[1].AsString;
                   end
                   else
                   begin
                     cad_rep_banREP_BANC.Value := '';
                     cad_rep_banREP_DESC.Value := '';
                   end;
                   dbgban.FocusedColumn := 3;
                 end
                 else if dbgban.FocusedColumn = 6 then
                 begin
                   cad_rep_ban.Next;
                   if cad_rep_ban.Eof then
                      cad_rep_ban.Append;

                   dbgban.FocusedColumn := 1
                 end
                 else
                    dbgban.FocusedColumn := dbgban.FocusedColumn + 1;
               end;
    VK_INSERT: if cad_rep_ban.State = dsBrowse then banI.Click;
    VK_DELETE: if cad_rep_ban.State = dsBrowse then banE.Click;
    VK_ESCAPE: if cad_rep_ban.State = dsBrowse then {nothing} else banC.Click;
  end;
end;

procedure Tfrmcad_rep_edi.obsIClick(Sender: TObject);
begin
  cad_rep_obs.Append;
end;

procedure Tfrmcad_rep_edi.obsEClick(Sender: TObject);
begin
  cad_rep_obs.Delete;
end;

procedure Tfrmcad_rep_edi.obsSClick(Sender: TObject);
begin
  cad_rep_obs.Post;
end;

procedure Tfrmcad_rep_edi.obsCClick(Sender: TObject);
begin
  cad_rep_obs.Cancel;
end;

procedure Tfrmcad_rep_edi.obsAClick(Sender: TObject);
begin
  cad_rep_obs.Edit;
end;

procedure Tfrmcad_rep_edi.cad_rep_obsAfterCancel(DataSet: TDataSet);
begin
  obsI.Enabled := true;
  obsA.Enabled := true;
  obsE.Enabled := true;
  obsS.Enabled := false;
  obsC.Enabled := false;
end;

procedure Tfrmcad_rep_edi.cad_rep_obsAfterDelete(DataSet: TDataSet);
begin
  IBtra.CommitRetaining;
  obsI.Enabled := true;
  obsA.Enabled := true;
  obsE.Enabled := true;
  obsS.Enabled := false;
  obsC.Enabled := false;
end;

procedure Tfrmcad_rep_edi.cad_rep_obsAfterEdit(DataSet: TDataSet);
begin
  obsI.Enabled := false;
  obsA.Enabled := false;
  obsE.Enabled := false;
  obsS.Enabled := true;
  obsC.Enabled := true;

  if pcMAIN.ActivePage = tsobs then
     dbgobs.SetFocus;
end;

procedure Tfrmcad_rep_edi.cad_rep_obsAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  obsI.Enabled := true;
  obsA.Enabled := true;
  obsE.Enabled := true;
  obsS.Enabled := false;
  obsC.Enabled := false;

  wRec := cad_rep_obs.GetBookmark;
  IBTra.CommitRetaining;

  cad_rep_obs.Close;
  cad_rep_obs.Open;
  if (wRec = Nil) or (cad_rep_obs.Fields[0].IsNull) then cad_rep_obs.last
     else cad_rep_obs.GotoBookmark(wRec);
  cad_rep_obs.FreeBookmark(wRec);

  if pcMAIN.ActivePage = tsobs then
     dbgobs.SetFocus;
end;

procedure Tfrmcad_rep_edi.cad_rep_obsBeforeCancel(DataSet: TDataSet);
begin
  if cad_rep_obs.RecordCount = 0 then
  begin
    obsI.Enabled := true;
    obsA.Enabled := true;
    obsE.Enabled := true;
    obsS.Enabled := false;
    obsC.Enabled := false;

    cad_rep_obs.Close;
    cad_rep_obs.Open;
    ABORT;
  end;
end;

procedure Tfrmcad_rep_edi.cad_rep_obsBeforeDelete(DataSet: TDataSet);
begin
  if not cad_rep_obs.Fields[0].IsNull then
  begin
    if oYesNo(handle,'Excluir Registro ?') = mrno then
       abort;
  end;
end;

procedure Tfrmcad_rep_edi.cad_rep_obsNewRecord(DataSet: TDataSet);
begin
  cad_rep_obsID.Value       := 0;
  cad_rep_obsOBS_CREP.Value := strtoint(edcrep.Text);
  cad_rep_obsOBS_DCAD.Value := StrToDate(SLPrincipal.Values['data_sistema']);
end;

procedure Tfrmcad_rep_edi.edcepcClick(Sender: TObject);
begin
  if length(edcepc.Text) > 9 then
     edcepc.Text := '';
end;

procedure Tfrmcad_rep_edi.edcepcEnter(Sender: TObject);
begin
  if length(edcepc.Text) > 9 then
     edcepc.Text := '';
end;

procedure Tfrmcad_rep_edi.edcepvClick(Sender: TObject);
begin
  if length(edcepv.Text) > 9 then
     edcepv.Text := '';
end;

procedure Tfrmcad_rep_edi.edcepvEnter(Sender: TObject);
begin
  if length(edcepv.Text) > 9 then
     edcepv.Text := '';
end;

procedure Tfrmcad_rep_edi.cbstavKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    pcmain.ActivePageIndex := 0;
    edcont.SetFocus;
  end;
end;
    
procedure Tfrmcad_rep_edi.cad_rep_banREP_DESCValidate(Sender: TField);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT BAN_BANC FROM TAB_BAN');
    SQL.Add('WHERE  BAN_DESC = '''+cad_rep_banREP_DESC.AsString+'''');
    Open;

    if fields[0].IsNull then
       DataBaseError('Banco não cadastrado !');

    cad_rep_banREP_BANC.Value := fields[0].AsString;
  end
end;

procedure Tfrmcad_rep_edi.edcomiValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcomi.Text = '' then
     edcomi.Text := '0';

  edcomi.Text := formatfloat('0.00',strtofloat(edcomi.Text));   
end;

procedure Tfrmcad_rep_edi.siCONClick(Sender: TObject);
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
      edcep.Text  := copy(frmsintegra.EditCEP.Text,1,5)+copy(frmsintegra.EditCEP.Text,7,3);
      edobse.Text := frmsintegra.ListCNAE2.Items.Text;

      edddd.Text  := frmsintegra.EditDDD.Text;
      edtel1.Text := frmsintegra.EditFone.Text;
      eddd2.Text  := frmsintegra.EditDDD2.Text;
      edtel2.Text := frmsintegra.EditFone2.Text;
      edInsc.Text := frmsintegra.EDIE.Text;

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



