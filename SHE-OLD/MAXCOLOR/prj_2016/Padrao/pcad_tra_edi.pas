unit pcad_tra_edi;

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
  Tfrmcad_tra_edi = class(Tfrmpadr3)
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
    cad_tra_ban: TIBDataSet;
    dtscad_tra_ban: TDataSource;
    cad_tra_obs: TIBDataSet;
    dtscad_tra_obs: TDataSource;
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
    cad_tra: TIBDataSet;
    pcinfo: TdxPageControl;
    tsicad: TdxTabSheet;
    Label1: TLabel;
    edctra: TdxEdit;
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
    cad_tra_banID: TIntegerField;
    cad_tra_banTRA_CTRA: TIntegerField;
    cad_tra_banTRA_DCAD: TDateField;
    cad_tra_banTRA_BANC: TIBStringField;
    cad_tra_banTRA_DESC: TIBStringField;
    cad_tra_banTRA_AGEN: TIBStringField;
    cad_tra_banTRA_CONT: TIBStringField;
    cad_tra_banTRA_OBSE: TMemoField;
    cad_tra_banTRA_TIPO: TIBStringField;
    cad_tra_banTRA_DOCU: TIBStringField;
    cad_tra_obsID: TIntegerField;
    cad_tra_obsOBS_CTRA: TIntegerField;
    cad_tra_obsOBS_DCAD: TDateField;
    cad_tra_obsOBS_OBSE: TMemoField;
    cad_traID: TIntegerField;
    cad_traTRA_RAZA: TIBStringField;
    cad_traTRA_FANT: TIBStringField;
    cad_traTRA_CONT: TIBStringField;
    cad_traTRA_DCAD: TDateField;
    cad_traTRA_STA: TIBStringField;
    cad_traTRA_MAIL: TIBStringField;
    cad_traTRA_DDD: TIBStringField;
    cad_traTRA_TEL1: TIBStringField;
    cad_traTRA_TEL2: TIBStringField;
    cad_traTRA_FAX: TIBStringField;
    cad_traTRA_CEL: TIBStringField;
    cad_traTRA_RG: TIBStringField;
    cad_traTRA_CPF: TIBStringField;
    cad_traTRA_INSC: TIBStringField;
    cad_traTRA_CNPJ: TIBStringField;
    cad_traTRA_TLOG: TIBStringField;
    cad_traTRA_LOGR: TIBStringField;
    cad_traTRA_CEP: TIBStringField;
    cad_traTRA_NUME: TIBStringField;
    cad_traTRA_COMP: TIBStringField;
    cad_traTRA_BAI: TIBStringField;
    cad_traTRA_CID: TIBStringField;
    cad_traTRA_ESTA: TIBStringField;
    cad_traTRA_TLOC: TIBStringField;
    cad_traTRA_LOGC: TIBStringField;
    cad_traTRA_CEPC: TIBStringField;
    cad_traTRA_NUMC: TIBStringField;
    cad_traTRA_COMC: TIBStringField;
    cad_traTRA_BAIC: TIBStringField;
    cad_traTRA_CIDC: TIBStringField;
    cad_traTRA_ESTC: TIBStringField;
    cad_traTRA_OBSO: TMemoField;
    cad_traTRA_STAV: TIBStringField;
    cad_traTRA_VULT: TIBBCDField;
    cad_traTRA_TPVE: TIBStringField;
    cad_traTRA_OBSE: TMemoField;
    cad_traTRA_TLOV: TIBStringField;
    cad_traTRA_LOGV: TIBStringField;
    cad_traTRA_CEPV: TIBStringField;
    cad_traTRA_NUMV: TIBStringField;
    cad_traTRA_COMV: TIBStringField;
    cad_traTRA_BAIV: TIBStringField;
    cad_traTRA_CIDV: TIBStringField;
    cad_traTRA_ESTV: TIBStringField;
    cad_traTRA_RICM: TIBStringField;
    cad_traTRA_CPAG: TIBStringField;
    cad_traTRA_DPAG: TIBStringField;
    cad_traTRA_CMUN: TIBStringField;
    cad_traTRA_DALT: TDateField;
    cad_traTRA_CTRA: TIntegerField;
    cad_traTRA_DTRA: TIBStringField;
    cad_traTRA_DFUN: TDateField;
    cad_traTRA_CICM: TIBStringField;
    cad_traTRA_RAMO: TIBStringField;
    cad_traTRA_CMUV: TIBStringField;
    cad_traTRA_CMUC: TIBStringField;
    cad_traTRA_DD2: TIBStringField;
    cad_traTRA_DD3: TIBStringField;
    cad_traTRA_DD4: TIBStringField;
    cad_traTRA_DD5: TIBStringField;
    cad_traTRA_DD6: TIBStringField;
    cad_traTRA_TEL3: TIBStringField;
    cad_traTRA_TCE1: TIBStringField;
    cad_traTRA_TCE2: TIBStringField;
    cad_traTRA_NCEL: TIBStringField;
    cad_traTRA_NEID: TIBStringField;
    cad_traTRA_FCON: TIBStringField;
    cad_traTRA_FMAI: TIBStringField;
    cad_traTRA_FDDD: TIBStringField;
    cad_traTRA_FTE1: TIBStringField;
    cad_traTRA_FDD2: TIBStringField;
    cad_traTRA_FTE2: TIBStringField;
    cad_traTRA_FDD3: TIBStringField;
    cad_traTRA_FTE3: TIBStringField;
    cad_traTRA_FDD4: TIBStringField;
    cad_traTRA_FFAX: TIBStringField;
    cad_traTRA_FDD5: TIBStringField;
    cad_traTRA_FCEL: TIBStringField;
    cad_traTRA_FTC1: TIBStringField;
    cad_traTRA_FDD6: TIBStringField;
    cad_traTRA_FNCE: TIBStringField;
    cad_traTRA_FTC2: TIBStringField;
    cad_traTRA_FNID: TIBStringField;
    cad_traTRA_CCON: TIBStringField;
    cad_traTRA_CMAI: TIBStringField;
    cad_traTRA_CDDD: TIBStringField;
    cad_traTRA_CTE1: TIBStringField;
    cad_traTRA_CDD2: TIBStringField;
    cad_traTRA_CTE2: TIBStringField;
    cad_traTRA_CDD3: TIBStringField;
    cad_traTRA_CTE3: TIBStringField;
    cad_traTRA_CDD4: TIBStringField;
    cad_traTRA_CFAX: TIBStringField;
    cad_traTRA_CDD5: TIBStringField;
    cad_traTRA_CCEL: TIBStringField;
    cad_traTRA_CTC1: TIBStringField;
    cad_traTRA_CDD6: TIBStringField;
    cad_traTRA_CNCE: TIBStringField;
    cad_traTRA_CTC2: TIBStringField;
    cad_traTRA_CNID: TIBStringField;
    cad_traTRA_VDSC: TIBBCDField;
    cad_traTRA_CRED: TIBBCDField;
    cad_traTRA_SITE: TIBStringField;
    cad_traTRA_REVE: TIBStringField;
    cad_traTRA_IMUN: TIBStringField;
    cad_traTRA_CCM: TIBStringField;
    dbgbanTRA_DCAD: TdxDBGridDateColumn;
    dbgbanTRA_BANC: TdxDBGridMaskColumn;
    dbgbanTRA_DESC: TdxDBGridPickColumn;
    dbgbanTRA_AGEN: TdxDBGridMaskColumn;
    dbgbanTRA_CONT: TdxDBGridMaskColumn;
    dbgbanTRA_TIPO: TdxDBGridPickColumn;
    dbgbanTRA_DOCU: TdxDBGridMaskColumn;
    dbgbanTRA_OBSE: TdxDBGridBlobColumn;
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
    procedure edctraValidate(Sender: TObject; var ErrorText: String;
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
    procedure cad_tra_banAfterCancel(DataSet: TDataSet);
    procedure cad_tra_banAfterDelete(DataSet: TDataSet);
    procedure cad_tra_banAfterEdit(DataSet: TDataSet);
    procedure cad_tra_banAfterPost(DataSet: TDataSet);
    procedure cad_tra_banNewRecord(DataSet: TDataSet);
    procedure cad_tra_banBeforeCancel(DataSet: TDataSet);
    procedure cad_tra_banBeforeDelete(DataSet: TDataSet);
    procedure dbgbanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure obsIClick(Sender: TObject);
    procedure obsEClick(Sender: TObject);
    procedure obsSClick(Sender: TObject);
    procedure obsCClick(Sender: TObject);
    procedure obsAClick(Sender: TObject);
    procedure cad_tra_obsAfterCancel(DataSet: TDataSet);
    procedure cad_tra_obsAfterDelete(DataSet: TDataSet);
    procedure cad_tra_obsAfterEdit(DataSet: TDataSet);
    procedure cad_tra_obsAfterPost(DataSet: TDataSet);
    procedure cad_tra_obsBeforeCancel(DataSet: TDataSet);
    procedure cad_tra_obsBeforeDelete(DataSet: TDataSet);
    procedure cad_tra_obsNewRecord(DataSet: TDataSet);
    procedure edcepcClick(Sender: TObject);
    procedure edcepcEnter(Sender: TObject);
    procedure edcepvClick(Sender: TObject);
    procedure edcepvEnter(Sender: TObject);
    procedure cbstavKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cad_tra_banTRA_DESCValidate(Sender: TField);
    procedure siCONClick(Sender: TObject);
  private
    { Private declarations }
    procedure NOVO_TRANSPORTADOR;
    procedure BUSCA_CEP_COM;
    procedure BUSCA_CEP_COB;
    procedure BUSCA_CEP_ENT;
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmcad_tra_edi: Tfrmcad_tra_edi;

implementation

uses bDados, pcad_tra, uPrincipal, unLocaliza_Cep, ptab_mun, psintegra;

{$R *.dfm}
procedure Tfrmcad_tra_edi.FormCreate(Sender: TObject);
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
      dbgbanTRA_DESC.Items.Add(fields[0].AsString);
      next;
    end;
  end;
end;

procedure Tfrmcad_tra_edi.siSAVClick(Sender: TObject);
begin
  if edinsc.Text = '' then
  begin
    pcinfo.ActivePageIndex := 0;
    edinsc.SetFocus;
    raise exception.Create('Inscrição estadual não informada !');
  end;

  if (edctra.Text = '')  or (edctra.Text = '00000') then
     raise exception.Create('Código do transportador não informado !');

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
    raise exception.Create('Situação da transportadora não informada !');
  end;

  if edtlog.Text = '' then
  begin
    if (pcmain.ActivePage = tsEND) and (pcEND.ActivePage = tsCEP_COM) then
    edtlog.SetFocus;
    raise exception.Create('Título do logradouro do endereço não cadastrado !');
  end;
  
  if edlogr.Text = '' then
  begin
    if (pcmain.ActivePage = tsEND) and (pcEND.ActivePage = tsCEP_COM) then
    edlogr.SetFocus;
    raise exception.Create('Nome do logradouro do endereço não cadastrado !');
  end;

  if ednume.Text = '' then
  begin
    if (pcmain.ActivePage = tsEND) and (pcEND.ActivePage = tsCEP_COM) then
    ednume.SetFocus;
    raise exception.Create('Número do logradouro do endereço não cadastrado !');
  end;

  if (length(edcep.Text) < 8) and (Length(edlogr.Text) > 1) then
  begin
    if (pcmain.ActivePage = tsEND) and (pcEND.ActivePage = tsCEP_COM) then
    edcep.SetFocus;
    raise exception.Create('Cep não informado ou digitado incorretamente !');
  end;

  try
    try
      ibSP.StoredProcName := 'SP_CAD_TRA';
      ibSP.Prepare;

      case frmcad_tra_edi.Tag of
        0: ibSP.Params[0].Value := null;
        1: ibSP.Params[0].Value := edctra.Text;
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

      case frmcad_tra_edi.Tag of
        0: frmprincipal.Log_Eve('TRANSPORTADORES','CADASTRO DE TRANSPORTADORES','INCLUSÃO' ,edctra.Text,edctra.Text,edfant.Text,'','');
        1: frmprincipal.Log_Eve('TRANSPORTADORES','CADASTRO DE TRANSPORTADORES','ALTERAÇÃO',edctra.Text,edctra.Text,edfant.Text,'','');
      end;

      editado := true;
      IBTra.Commit;
      IBTra.StartTransaction;

      if (frmcad_tra_edi.Tag = 0) then
         NOVO_TRANSPORTADOR
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

procedure Tfrmcad_tra_edi.edcepButtonClick(Sender: TObject;
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

procedure Tfrmcad_tra_edi.edcepcButtonClick(Sender: TObject;
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

procedure Tfrmcad_tra_edi.edcepcValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BUSCA_CEP_COB;
end;

procedure Tfrmcad_tra_edi.FormShow(Sender: TObject);
begin
  inherited;
  if tag = 1 then
  begin
    with cad_tra do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_TRA');
      SelectSQL.Add('WHERE ID = '''+frmcad_tra.cadastroID.AsString+'''');
      Open;

      edctra.Text := oStrZero(FieldByName('ID').AsInteger,5);
      edfant.Text := FieldByName('TRA_FANT').AsString;
      eddcad.Date := FieldByName('TRA_DCAD').AsDateTime;
      eddalt.Date := strtodate(SLPrincipal.Values['data_sistema']);
      edraza.Text := FieldByName('TRA_RAZA').AsString;
      edcont.Text := FieldByName('TRA_CONT').AsString;
      edfcon.Text := FieldByName('TRA_FCON').AsString;
      edccon.Text := FieldByName('TRA_CCON').AsString;
      edmail.Text := FieldByName('TRA_MAIL').AsString;
      edfmai.Text := FieldByName('TRA_FMAI').AsString;
      edcmai.Text := FieldByName('TRA_CMAI').AsString;
      edddd.Text  := FieldByName('TRA_DDD').AsString;
      eddd2.Text  := FieldByName('TRA_DD2').AsString;
      eddd3.Text  := FieldByName('TRA_DD3').AsString;
      eddd4.Text  := FieldByName('TRA_DD4').AsString;
      eddd5.Text  := FieldByName('TRA_DD5').AsString;
      eddd6.Text  := FieldByName('TRA_DD6').AsString;
      edfddd.Text := FieldByName('TRA_FDDD').AsString;
      edfdd2.Text := FieldByName('TRA_FDD2').AsString;
      edfdd3.Text := FieldByName('TRA_FDD3').AsString;
      edfdd4.Text := FieldByName('TRA_FDD4').AsString;
      edfdd5.Text := FieldByName('TRA_FDD5').AsString;
      edfdd6.Text := FieldByName('TRA_FDD6').AsString;
      edcddd.Text := FieldByName('TRA_CDDD').AsString;
      edcdd2.Text := FieldByName('TRA_CDD2').AsString;
      edcdd3.Text := FieldByName('TRA_CDD3').AsString;
      edcdd4.Text := FieldByName('TRA_CDD4').AsString;
      edcdd5.Text := FieldByName('TRA_CDD5').AsString;
      edcdd6.Text := FieldByName('TRA_CDD6').AsString;
      edtel1.Text := FieldByName('TRA_TEL1').AsString;
      edtel2.Text := FieldByName('TRA_TEL2').AsString;
      edtel3.Text := FieldByName('TRA_TEL3').AsString;
      edfax.Text  := FieldByName('TRA_FAX').AsString;
      edffax.Text := FieldByName('TRA_FFAX').AsString;
      edcfax.Text := FieldByName('TRA_CFAX').AsString;
      edfte1.Text := FieldByName('TRA_FTE1').AsString;
      edfte2.Text := FieldByName('TRA_FTE2').AsString;
      edfte3.Text := FieldByName('TRA_FTE3').AsString;
      edcte1.Text := FieldByName('TRA_CTE1').AsString;
      edcte2.Text := FieldByName('TRA_CTE2').AsString;
      edcte3.Text := FieldByName('TRA_CTE3').AsString;
      edcel.Text  := FieldByName('TRA_CEL').AsString;
      edfcel.Text := FieldByName('TRA_FCEL').AsString;
      edccel.Text := FieldByName('TRA_CCEL').AsString;
      edneid.Text := FieldByName('TRA_NEID').AsString;
      edfnid.Text := FieldByName('TRA_FNID').AsString;
      edcnid.Text := FieldByName('TRA_CNID').AsString;
      edncel.Text := FieldByName('TRA_NCEL').AsString;
      edfnce.Text := FieldByName('TRA_FNCE').AsString;
      edcnce.Text := FieldByName('TRA_CNCE').AsString;
      cbtce1.Text := FieldByName('TRA_TCE1').AsString;
      cbtce2.Text := FieldByName('TRA_TCE2').AsString;
      cbftc1.Text := FieldByName('TRA_FTC1').AsString;
      cbftc2.Text := FieldByName('TRA_FTC2').AsString;
      cbctc1.Text := FieldByName('TRA_CTC1').AsString;
      cbctc2.Text := FieldByName('TRA_CTC2').AsString;
      edccm.Text  := FieldByName('TRA_CCM').AsString;
      edimun.Text := FieldByName('TRA_IMUN').AsString;
      edinsc.Text := FieldByName('TRA_INSC').AsString;

      if FieldByName('TRA_CNPJ').AsString <> '' then
      begin
        edcnpj.Text   := FieldByName('TRA_CNPJ').AsString;
        edinsc.Text   := FieldByName('TRA_INSC').AsString;
        edcpf.Enabled := false;
        edrg.Enabled  := false;
      end;

      if FieldByName('TRA_CPF').AsString <> '' then
      begin
        edcpf.Text     := FieldByName('TRA_CPF').AsString;
        edrg.Text      := FieldByName('TRA_RG').AsString;
        edcnpj.Enabled := false;
        edinsc.Enabled := false;
      end;

      edtlog.Text := FieldByName('TRA_TLOG').AsString;
      edlogr.Text := FieldByName('TRA_LOGR').AsString;
      edcep.Text  := FieldByName('TRA_CEP').AsString;
      edcmun.Text := FieldByName('TRA_CMUN').AsString;
      edcmuv.Text := FieldByName('TRA_CMUV').AsString;
      edcmuc.Text := FieldByName('TRA_CMUC').AsString;
      ednume.Text := FieldByName('TRA_NUME').AsString;
      edcomp.Text := FieldByName('TRA_COMP').AsString;
      edbai.Text  := FieldByName('TRA_BAI').AsString;
      edcid.Text  := FieldByName('TRA_CID').AsString;
      eduf.Text   := FieldByName('TRA_ESTA').AsString;
      edtloc.Text := FieldByName('TRA_TLOC').AsString;
      edlogc.Text := FieldByName('TRA_LOGC').AsString;
      edcepc.Text := FieldByName('TRA_CEPC').AsString;
      ednumc.Text := FieldByName('TRA_NUMC').AsString;
      edcomc.Text := FieldByName('TRA_COMC').AsString;
      edbaic.Text := FieldByName('TRA_BAIC').AsString;
      edcidc.Text := FieldByName('TRA_CIDC').AsString;
      edufc.Text  := FieldByName('TRA_ESTC').AsString;
      edtlov.Text := FieldByName('TRA_TLOV').AsString;
      edlogv.Text := FieldByName('TRA_LOGV').AsString;
      edcepv.Text := FieldByName('TRA_CEPV').AsString;
      ednumv.Text := FieldByName('TRA_NUMV').AsString;
      edcomv.Text := FieldByName('TRA_COMV').AsString;
      edbaiv.Text := FieldByName('TRA_BAIV').AsString;
      edcidv.Text := FieldByName('TRA_CIDV').AsString;
      edufv.Text  := FieldByName('TRA_ESTV').AsString;
      edobse.Text := FieldByName('TRA_OBSE').Value;
      edobso.Text := FieldByName('TRA_OBSO').Value;
      cbstav.Text := FieldByName('TRA_STAV').AsString;
    end
  end
  else
    NOVO_TRANSPORTADOR;

  edfant.SetFocus;

  with cad_tra_ban do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_TRA_BAN');
    SelectSQL.Add('WHERE TRA_CTRA = '''+edctra.Text+'''');
    Open;
  end;

  with cad_tra_obs do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_TRA_OBS');
    SelectSQL.Add('WHERE OBS_CTRA = '''+edctra.Text+'''');
    Open;
  end;
end;

procedure Tfrmcad_tra_edi.NOVO_TRANSPORTADOR;
begin
  pcinfo.ActivePageIndex := 0;
  pcmain.ActivePageIndex := 0;
  
  edctra.Text := '00000';
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
  if pcinfo.ActivePageIndex = 0 then
     edfant.SetFocus;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_CAD_TRA,0) FROM RDB$DATABASE');
    Open;

    edctra.Text := oStrZero(fields[0].AsInteger+1,5);
  end;
end;

procedure Tfrmcad_tra_edi.edcepvButtonClick(Sender: TObject;
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

procedure Tfrmcad_tra_edi.edcepvValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BUSCA_CEP_ENT;
end;

procedure Tfrmcad_tra_edi.ednumeValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if ednumc.Text = '' then
     ednumc.Text := ednume.Text;
  if ednumv.Text = '' then
     ednumv.Text := ednume.Text;
end;

procedure Tfrmcad_tra_edi.edcompValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcomc.Text = '' then
     edcomc.Text := edcomp.Text;
  if edcomv.Text = '' then
     edcomv.Text := edcomp.Text;
end;

procedure Tfrmcad_tra_edi.edcpfValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcpf.Text <> '' then
  begin
    if not oCPF(edcpf.Text) then
    begin
      edcpf.SetFocus;
      raise exception.Create('C.P.F. Inválido !');
    end;

    if frmcad_tra_edi.Tag =0 then    
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT TRA_RAZA,TRA_DCAD,ID,TRA_STA FROM CAD_TRA');
      SQL.Add('WHERE  TRA_CPF = '''+edcpf.Text+'''');
      Open;

      if fields[3].AsString = '1' then
      begin
        edcpf.SetFocus;
        raise exception.Create('Não é possível cadastrar comprador enviado à lixeira !'+#13+'Favor esvaziar a lixeira.');
      end;
      if (not fields[0].IsNull) and (edctra.Text <> fields[2].AsString) then
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

procedure Tfrmcad_tra_edi.edcnpjValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcnpj.Text <> '' then
  begin
    if (not oCNPJ(edcnpj.Text)) then
    begin
      edcnpj.SetFocus;
      raise exception.Create('C.N.P.J. Inválido !');
    end;

    if frmcad_tra_edi.Tag =0 then
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT TRA_RAZA,TRA_DCAD,ID,TRA_STA FROM CAD_TRA');
      SQL.Add('WHERE  TRA_CNPJ = '''+edcnpj.Text+'''');
      Open;

      if fields[3].AsString = '1' then
      begin
        edcnpj.SetFocus;
        raise exception.Create('Não é possível cadastrar comprador enviado à lixeira !'+#13+'Favor esvaziar a lixeira.');
      end;
      if (not fields[0].IsNull) and (edctra.Text <> fields[2].AsString) then
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

procedure Tfrmcad_tra_edi.edctraValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edctra.Text = '' then
     edctra.Text := '00000';

  edctra.Text := oStrZero(strtoint(edctra.Text),5);

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT TRA_RAZA FROM CAD_TRA');
    SQL.Add('WHERE  ID = '''+edctra.Text+'''');
    Open;

    if not fields[0].IsNull then
    begin
      edctra.SetFocus;
      raise exception.Create('Comprador já cadastrado com o mesmo código '+#13+fields[0].AsString);
    end;
  end;
end;

procedure Tfrmcad_tra_edi.edufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
     siSAV.Click;
end;

procedure Tfrmcad_tra_edi.edcmunValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcmun.Text <> '' then
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

procedure Tfrmcad_tra_edi.edcmunButtonClick(Sender: TObject;
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

procedure Tfrmcad_tra_edi.FormDestroy(Sender: TObject);
begin
  frmcad_tra_edi := nil;
end;

procedure Tfrmcad_tra_edi.edcepClick(Sender: TObject);
begin
  if length(edcep.Text) > 9 then
     edcep.Text := '';
end;

procedure Tfrmcad_tra_edi.edcepEnter(Sender: TObject);
begin
  if length(edcep.Text) > 9 then
     edcep.Text := '';
end;

procedure Tfrmcad_tra_edi.edtel2DblClick(Sender: TObject);
begin
  edtel2.Text := '';
end;

procedure Tfrmcad_tra_edi.edtel1DblClick(Sender: TObject);
begin
  edtel1.Text := '';
end;

procedure Tfrmcad_tra_edi.edfaxDblClick(Sender: TObject);
begin
  edfax.Text := '';
end;

procedure Tfrmcad_tra_edi.edcelDblClick(Sender: TObject);
begin
  edcel.Text := '';
end;

procedure Tfrmcad_tra_edi.edcmucValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
 if edcmuc.Text <> '' then
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

procedure Tfrmcad_tra_edi.edcmuvValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcmuv.Text <> '' then
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

procedure Tfrmcad_tra_edi.edcmucButtonClick(Sender: TObject;
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

procedure Tfrmcad_tra_edi.edcmuvButtonClick(Sender: TObject;
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

procedure Tfrmcad_tra_edi.BUSCA_CEP_COM;
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

procedure Tfrmcad_tra_edi.BUSCA_CEP_COB;
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

procedure Tfrmcad_tra_edi.BUSCA_CEP_ENT;
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


procedure Tfrmcad_tra_edi.edcepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BUSCA_CEP_COM;
end;

procedure Tfrmcad_tra_edi.edvdscKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    pcMAIN.ActivePageIndex := 0;
    edcont.SetFocus;
  end
end;

procedure Tfrmcad_tra_edi.banIClick(Sender: TObject);
begin
  cad_tra_ban.Append;
end;

procedure Tfrmcad_tra_edi.banAClick(Sender: TObject);
begin
  cad_tra_ban.Edit;
end;

procedure Tfrmcad_tra_edi.banEClick(Sender: TObject);
begin
  cad_tra_ban.Delete;
end;

procedure Tfrmcad_tra_edi.banCClick(Sender: TObject);
begin
  cad_tra_ban.Cancel;
end;

procedure Tfrmcad_tra_edi.banSClick(Sender: TObject);
begin
  cad_tra_ban.Post;
end;

procedure Tfrmcad_tra_edi.cad_tra_banAfterCancel(DataSet: TDataSet);
begin
  banI.Enabled := true;
  banA.Enabled := true;
  banE.Enabled := true;
  banS.Enabled := false;
  banC.Enabled := false;
end;

procedure Tfrmcad_tra_edi.cad_tra_banAfterDelete(DataSet: TDataSet);
begin
  IBtra.CommitRetaining;
  banI.Enabled := true;
  banA.Enabled := true;
  banE.Enabled := true;
  banS.Enabled := false;
  banC.Enabled := false;
end;

procedure Tfrmcad_tra_edi.cad_tra_banAfterEdit(DataSet: TDataSet);
begin
  banI.Enabled := false;
  banA.Enabled := false;
  banE.Enabled := false;
  banS.Enabled := true;
  banC.Enabled := true;

  if pcMAIN.ActivePage = tsBAN then
     dbgban.SetFocus;
end;

procedure Tfrmcad_tra_edi.cad_tra_banAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  banI.Enabled := true;
  banA.Enabled := true;
  banE.Enabled := true;
  banS.Enabled := false;
  banC.Enabled := false;

  wRec := cad_tra_ban.GetBookmark;
  IBTra.CommitRetaining;

  cad_tra_ban.Close;
  cad_tra_ban.Open;
  if (wRec = Nil) or (cad_tra_ban.Fields[0].IsNull) then cad_tra_ban.last
     else cad_tra_ban.GotoBookmark(wRec);
  cad_tra_ban.FreeBookmark(wRec);

  if pcMAIN.ActivePage = tsban then
     dbgban.SetFocus;
end;

procedure Tfrmcad_tra_edi.cad_tra_banBeforeCancel(DataSet: TDataSet);
begin
  if cad_tra_ban.RecordCount = 0 then
  begin
    banI.Enabled := true;
    banA.Enabled := true;
    banE.Enabled := true;
    banS.Enabled := false;
    banC.Enabled := false;

    cad_tra_ban.Close;
    cad_tra_ban.Open;
    ABORT;
  end;
end;

procedure Tfrmcad_tra_edi.cad_tra_banBeforeDelete(DataSet: TDataSet);
begin
  if not cad_tra_ban.Fields[0].IsNull then
  begin
    if oYesNo(handle,'Excluir Registro ?') = mrno then
       abort;
  end;
end;

procedure Tfrmcad_tra_edi.cad_tra_banNewRecord(DataSet: TDataSet);
begin
  cad_tra_banID.Value       := 0;
  cad_tra_banTRA_CTRA.Value := strtoint(edctra.Text);
  cad_tra_banTRA_DCAD.Value := StrToDate(SLPrincipal.Values['data_sistema']);
end;

procedure Tfrmcad_tra_edi.dbgbanKeyDown(Sender: TObject; var Key: Word;
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

                     cad_tra_banTRA_BANC.Value := fields[0].AsString;
                     cad_tra_banTRA_DESC.Value := fields[1].AsString;
                   end
                   else
                   begin
                     cad_tra_banTRA_BANC.Value := '';
                     cad_tra_banTRA_DESC.Value := '';
                   end;
                   dbgban.FocusedColumn := 3;
                 end
                 else if dbgban.FocusedColumn = 6 then
                 begin
                   cad_tra_ban.Next;
                   if cad_tra_ban.Eof then
                      cad_tra_ban.Append;

                   dbgban.FocusedColumn := 1
                 end
                 else
                    dbgban.FocusedColumn := dbgban.FocusedColumn + 1;
               end;
    VK_INSERT: if cad_tra_ban.State = dsBrowse then banI.Click;
    VK_DELETE: if cad_tra_ban.State = dsBrowse then banE.Click;
    VK_ESCAPE: if cad_tra_ban.State = dsBrowse then {nothing} else banC.Click;
  end;
end;

procedure Tfrmcad_tra_edi.obsIClick(Sender: TObject);
begin
  cad_tra_obs.Append;
end;

procedure Tfrmcad_tra_edi.obsEClick(Sender: TObject);
begin
  cad_tra_obs.Delete;
end;

procedure Tfrmcad_tra_edi.obsSClick(Sender: TObject);
begin
  cad_tra_obs.Post;
end;

procedure Tfrmcad_tra_edi.obsCClick(Sender: TObject);
begin
  cad_tra_obs.Cancel;
end;

procedure Tfrmcad_tra_edi.obsAClick(Sender: TObject);
begin
  cad_tra_obs.Edit;
end;

procedure Tfrmcad_tra_edi.cad_tra_obsAfterCancel(DataSet: TDataSet);
begin
  obsI.Enabled := true;
  obsA.Enabled := true;
  obsE.Enabled := true;
  obsS.Enabled := false;
  obsC.Enabled := false;
end;

procedure Tfrmcad_tra_edi.cad_tra_obsAfterDelete(DataSet: TDataSet);
begin
  IBtra.CommitRetaining;
  obsI.Enabled := true;
  obsA.Enabled := true;
  obsE.Enabled := true;
  obsS.Enabled := false;
  obsC.Enabled := false;
end;

procedure Tfrmcad_tra_edi.cad_tra_obsAfterEdit(DataSet: TDataSet);
begin
  obsI.Enabled := false;
  obsA.Enabled := false;
  obsE.Enabled := false;
  obsS.Enabled := true;
  obsC.Enabled := true;

  if pcMAIN.ActivePage = tsobs then
     dbgobs.SetFocus;
end;

procedure Tfrmcad_tra_edi.cad_tra_obsAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  obsI.Enabled := true;
  obsA.Enabled := true;
  obsE.Enabled := true;
  obsS.Enabled := false;
  obsC.Enabled := false;

  wRec := cad_tra_obs.GetBookmark;
  IBTra.CommitRetaining;

  cad_tra_obs.Close;
  cad_tra_obs.Open;
  if (wRec = Nil) or (cad_tra_obs.Fields[0].IsNull) then cad_tra_obs.last
     else cad_tra_obs.GotoBookmark(wRec);
  cad_tra_obs.FreeBookmark(wRec);

  if pcMAIN.ActivePage = tsobs then
     dbgobs.SetFocus;
end;

procedure Tfrmcad_tra_edi.cad_tra_obsBeforeCancel(DataSet: TDataSet);
begin
  if cad_tra_obs.RecordCount = 0 then
  begin
    obsI.Enabled := true;
    obsA.Enabled := true;
    obsE.Enabled := true;
    obsS.Enabled := false;
    obsC.Enabled := false;

    cad_tra_obs.Close;
    cad_tra_obs.Open;
    ABORT;
  end;
end;

procedure Tfrmcad_tra_edi.cad_tra_obsBeforeDelete(DataSet: TDataSet);
begin
  if not cad_tra_obs.Fields[0].IsNull then
  begin
    if oYesNo(handle,'Excluir Registro ?') = mrno then
       abort;
  end;
end;

procedure Tfrmcad_tra_edi.cad_tra_obsNewRecord(DataSet: TDataSet);
begin
  cad_tra_obsID.Value       := 0;
  cad_tra_obsOBS_CTRA.Value := strtoint(edctra.Text);
  cad_tra_obsOBS_DCAD.Value := StrToDate(SLPrincipal.Values['data_sistema']);
end;

procedure Tfrmcad_tra_edi.edcepcClick(Sender: TObject);
begin
  if length(edcepc.Text) > 9 then
     edcepc.Text := '';
end;

procedure Tfrmcad_tra_edi.edcepcEnter(Sender: TObject);
begin
  if length(edcepc.Text) > 9 then
     edcepc.Text := '';
end;

procedure Tfrmcad_tra_edi.edcepvClick(Sender: TObject);
begin
  if length(edcepv.Text) > 9 then
     edcepv.Text := '';
end;

procedure Tfrmcad_tra_edi.edcepvEnter(Sender: TObject);
begin
  if length(edcepv.Text) > 9 then
     edcepv.Text := '';
end;

procedure Tfrmcad_tra_edi.cbstavKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    pcmain.ActivePageIndex := 0;
    edcont.SetFocus;
  end;
end;
    
procedure Tfrmcad_tra_edi.cad_tra_banTRA_DESCValidate(Sender: TField);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT BAN_BANC FROM TAB_BAN');
    SQL.Add('WHERE  BAN_DESC = '''+cad_tra_banTRA_DESC.AsString+'''');
    Open;

    if fields[0].IsNull then
       DataBaseError('Banco não cadastrado !');

    cad_tra_banTRA_BANC.Value := fields[0].AsString;
  end
end;

procedure Tfrmcad_tra_edi.siCONClick(Sender: TObject);
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



