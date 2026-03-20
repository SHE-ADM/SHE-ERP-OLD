unit pcad_for_edi;

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
  Tfrmcad_for_edi = class(Tfrmpadr3)
    cep_log: TIBQuery;
    cep_logID: TIntegerField;
    cep_logLOG_TIT: TIBStringField;
    cep_logLOG_NO: TIBStringField;
    cep_logLOG_CEP: TIBStringField;
    cep_logBAI_NO: TIBStringField;
    cep_logLOC_NO: TIBStringField;
    cep_logLOG_UF: TIBStringField;
    siCON: TSpeedItem;
    cad_for_ram: TIBDataSet;
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
    cad_for_ban: TIBDataSet;
    dtscad_for_ban: TDataSource;
    cad_for_obs: TIBDataSet;
    dtscad_for_obs: TDataSource;
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
    cad_for: TIBDataSet;
    pcinfo: TdxPageControl;
    tsicad: TdxTabSheet;
    Label1: TLabel;
    edcfor: TdxEdit;
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
    dxTabSheet2: TdxTabSheet;
    Label55: TLabel;
    eddfun: TdxDateEdit;
    Bevel6: TBevel;
    cbstav: TdxImageEdit;
    Label37: TLabel;
    Label67: TLabel;
    cbreve: TdxImageEdit;
    Label54: TLabel;
    cbdtra: TdxImageEdit;
    Label47: TLabel;
    cbdpag: TdxImageEdit;
    Label46: TLabel;
    cbcicm: TdxImageEdit;
    cbricm: TdxImageEdit;
    Label18: TLabel;
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
    Label56: TLabel;
    Label2: TLabel;
    edsite: TdxEdit;
    cbramo: TComboBox;
    eddalt: TdxDateEdit;
    cad_for_rep: TIBDataSet;
    dtscad_for_rep: TDataSource;
    Bevel4: TBevel;
    cad_for_repID: TIntegerField;
    cad_for_repREP_CFOR: TIntegerField;
    cad_for_repREP_DVEN: TIBStringField;
    cad_for_repREP_DREP: TIBStringField;
    cad_for_repREP_DEMP: TIBStringField;
    cad_for_ramID: TIntegerField;
    cad_for_ramFOR_RAMO: TIBStringField;
    cad_for_obsID: TIntegerField;
    cad_for_obsOBS_CFOR: TIntegerField;
    cad_for_obsOBS_DCAD: TDateField;
    cad_for_obsOBS_OBSE: TMemoField;
    cad_for_banFOR_CFOR: TIntegerField;
    cad_for_banFOR_DCAD: TDateField;
    cad_for_banFOR_BANC: TIBStringField;
    cad_for_banFOR_DESC: TIBStringField;
    cad_for_banFOR_AGEN: TIBStringField;
    cad_for_banFOR_CONT: TIBStringField;
    cad_for_banFOR_OBSE: TMemoField;
    cad_for_banFOR_TIPO: TIBStringField;
    cad_for_banFOR_DOCU: TIBStringField;
    dbgbanFOR_DCAD: TdxDBGridDateColumn;
    dbgbanFOR_BANC: TdxDBGridMaskColumn;
    dbgbanFOR_DESC: TdxDBGridPickColumn;
    dbgbanFOR_AGEN: TdxDBGridMaskColumn;
    dbgbanFOR_CONT: TdxDBGridMaskColumn;
    dbgbanFOR_OBSE: TdxDBGridBlobColumn;
    dbgbanFOR_TIPO: TdxDBGridPickColumn;
    dbgbanFOR_DOCU: TdxDBGridMaskColumn;
    cad_for_banID: TIntegerField;
    cad_forID: TIntegerField;
    cad_forFOR_RAZA: TIBStringField;
    cad_forFOR_FANT: TIBStringField;
    cad_forFOR_CONT: TIBStringField;
    cad_forFOR_DCAD: TDateField;
    cad_forFOR_STA: TIBStringField;
    cad_forFOR_MAIL: TIBStringField;
    cad_forFOR_DDD: TIBStringField;
    cad_forFOR_TEL1: TIBStringField;
    cad_forFOR_TEL2: TIBStringField;
    cad_forFOR_FAX: TIBStringField;
    cad_forFOR_CEL: TIBStringField;
    cad_forFOR_RG: TIBStringField;
    cad_forFOR_CPF: TIBStringField;
    cad_forFOR_INSC: TIBStringField;
    cad_forFOR_CNPJ: TIBStringField;
    cad_forFOR_TLOG: TIBStringField;
    cad_forFOR_LOGR: TIBStringField;
    cad_forFOR_CEP: TIBStringField;
    cad_forFOR_NUME: TIBStringField;
    cad_forFOR_COMP: TIBStringField;
    cad_forFOR_BAI: TIBStringField;
    cad_forFOR_CID: TIBStringField;
    cad_forFOR_ESTA: TIBStringField;
    cad_forFOR_TLOC: TIBStringField;
    cad_forFOR_LOGC: TIBStringField;
    cad_forFOR_CEPC: TIBStringField;
    cad_forFOR_NUMC: TIBStringField;
    cad_forFOR_COMC: TIBStringField;
    cad_forFOR_BAIC: TIBStringField;
    cad_forFOR_CIDC: TIBStringField;
    cad_forFOR_ESTC: TIBStringField;
    cad_forFOR_OBSO: TMemoField;
    cad_forFOR_STAV: TIBStringField;
    cad_forFOR_VULT: TIBBCDField;
    cad_forFOR_TPVE: TIBStringField;
    cad_forFOR_OBSE: TMemoField;
    cad_forFOR_TLOV: TIBStringField;
    cad_forFOR_LOGV: TIBStringField;
    cad_forFOR_CEPV: TIBStringField;
    cad_forFOR_NUMV: TIBStringField;
    cad_forFOR_COMV: TIBStringField;
    cad_forFOR_BAIV: TIBStringField;
    cad_forFOR_CIDV: TIBStringField;
    cad_forFOR_ESTV: TIBStringField;
    cad_forFOR_RICM: TIBStringField;
    cad_forFOR_CPAG: TIBStringField;
    cad_forFOR_DPAG: TIBStringField;
    cad_forFOR_CMUN: TIBStringField;
    cad_forFOR_DALT: TDateField;
    cad_forFOR_CTRA: TIntegerField;
    cad_forFOR_DTRA: TIBStringField;
    cad_forFOR_DFUN: TDateField;
    cad_forFOR_CICM: TIBStringField;
    cad_forFOR_RAMO: TIBStringField;
    cad_forFOR_CMUV: TIBStringField;
    cad_forFOR_CMUC: TIBStringField;
    cad_forFOR_DD2: TIBStringField;
    cad_forFOR_DD3: TIBStringField;
    cad_forFOR_DD4: TIBStringField;
    cad_forFOR_DD5: TIBStringField;
    cad_forFOR_DD6: TIBStringField;
    cad_forFOR_TEL3: TIBStringField;
    cad_forFOR_TCE1: TIBStringField;
    cad_forFOR_TCE2: TIBStringField;
    cad_forFOR_NCEL: TIBStringField;
    cad_forFOR_NEID: TIBStringField;
    cad_forFOR_FCON: TIBStringField;
    cad_forFOR_FMAI: TIBStringField;
    cad_forFOR_FDDD: TIBStringField;
    cad_forFOR_FTE1: TIBStringField;
    cad_forFOR_FDD2: TIBStringField;
    cad_forFOR_FTE2: TIBStringField;
    cad_forFOR_FDD3: TIBStringField;
    cad_forFOR_FTE3: TIBStringField;
    cad_forFOR_FDD4: TIBStringField;
    cad_forFOR_FFAX: TIBStringField;
    cad_forFOR_FDD5: TIBStringField;
    cad_forFOR_FCEL: TIBStringField;
    cad_forFOR_FTC1: TIBStringField;
    cad_forFOR_FDD6: TIBStringField;
    cad_forFOR_FNCE: TIBStringField;
    cad_forFOR_FTC2: TIBStringField;
    cad_forFOR_FNID: TIBStringField;
    cad_forFOR_CCON: TIBStringField;
    cad_forFOR_CMAI: TIBStringField;
    cad_forFOR_CDDD: TIBStringField;
    cad_forFOR_CTE1: TIBStringField;
    cad_forFOR_CDD2: TIBStringField;
    cad_forFOR_CTE2: TIBStringField;
    cad_forFOR_CDD3: TIBStringField;
    cad_forFOR_CTE3: TIBStringField;
    cad_forFOR_CDD4: TIBStringField;
    cad_forFOR_CFAX: TIBStringField;
    cad_forFOR_CDD5: TIBStringField;
    cad_forFOR_CCEL: TIBStringField;
    cad_forFOR_CTC1: TIBStringField;
    cad_forFOR_CDD6: TIBStringField;
    cad_forFOR_CNCE: TIBStringField;
    cad_forFOR_CTC2: TIBStringField;
    cad_forFOR_CNID: TIBStringField;
    cad_forFOR_VDSC: TIBBCDField;
    cad_forFOR_CRED: TIBBCDField;
    cad_forFOR_SITE: TIBStringField;
    cad_forFOR_REVE: TIBStringField;
    cad_forFOR_IMUN: TIBStringField;
    cad_forFOR_CCM: TIBStringField;
    cbcdep: TdxImageEdit;
    Label40: TLabel;
    cad_forFOR_DULT: TDateField;
    cad_forFOR_REGI: TIBStringField;
    cad_forFOR_CDEP: TIntegerField;
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
    procedure edcpfValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcnpjValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcforValidate(Sender: TObject; var ErrorText: String;
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
    procedure cad_for_banAfterCancel(DataSet: TDataSet);
    procedure cad_for_banAfterDelete(DataSet: TDataSet);
    procedure cad_for_banAfterEdit(DataSet: TDataSet);
    procedure cad_for_banAfterPost(DataSet: TDataSet);
    procedure cad_for_banNewRecord(DataSet: TDataSet);
    procedure cad_for_banBeforeCancel(DataSet: TDataSet);
    procedure cad_for_banBeforeDelete(DataSet: TDataSet);
    procedure dbgbanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure obsIClick(Sender: TObject);
    procedure obsEClick(Sender: TObject);
    procedure obsSClick(Sender: TObject);
    procedure obsCClick(Sender: TObject);
    procedure obsAClick(Sender: TObject);
    procedure cad_for_obsAfterCancel(DataSet: TDataSet);
    procedure cad_for_obsAfterDelete(DataSet: TDataSet);
    procedure cad_for_obsAfterEdit(DataSet: TDataSet);
    procedure cad_for_obsAfterPost(DataSet: TDataSet);
    procedure cad_for_obsBeforeCancel(DataSet: TDataSet);
    procedure cad_for_obsBeforeDelete(DataSet: TDataSet);
    procedure cad_for_obsNewRecord(DataSet: TDataSet);
    procedure edcepcClick(Sender: TObject);
    procedure edcepcEnter(Sender: TObject);
    procedure edcepvClick(Sender: TObject);
    procedure edcepvEnter(Sender: TObject);
    procedure cad_for_banFOR_DESCValidate(Sender: TField);
    procedure ednumeValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcompValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure siCONClick(Sender: TObject);
  private
    { Private declarations }
    procedure NOVO_FORNECEDOR;
    procedure BUSCA_CEP_COM;
    procedure BUSCA_CEP_COB;
    procedure BUSCA_CEP_ENT;
    function  PESQUISA_FORNECEDOR(pesq,chave: string): boolean;
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmcad_for_edi: Tfrmcad_for_edi;

implementation

uses bDados, pcad_for, uPrincipal, unLocaliza_Cep, ptab_mun, psintegra;

{$R *.dfm}

function Tfrmcad_for_edi.PESQUISA_FORNECEDOR(pesq,chave: string): boolean;
var
  bret: boolean;
begin
  bret := false;
  try
    if Length(chave) > 10 then
    begin
      edcnpj.Enabled := true;
      edinsc.Enabled := true;
      edcpf.Enabled  := true;
      edrg.Enabled   := true;

      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT FOR_RAZA,FOR_DCAD,ID,FOR_STA FROM CAD_FOR');
        SQL.Add('WHERE '+pesq+' = '''+chave +'''');
        SQL.Add('AND   ID <> '''+edcfor.Text+'''');
        Open;

        if fields[3].AsString = '1' then
        begin
          edcnpj.SetFocus;
          messageBox(handle,'Não é possível cadastrar fornecedor enviado à lixeira !','Pré-Cadastro de Fornecedores',MB_ICONERROR+MB_OK);
          abort;
        end;

        if (not fields[0].IsNull) then
        begin
          if pesq = 'FOR_CNPJ' then
          begin
            edcnpj.Text := '';
            edcnpj.SetFocus;
            messageBox(handle,PChar('C.N.P.J. já cadastrado.'+#13+
                                    fields[2].AsString+' - '+fields[0].AsString),'Pré-Cadastro de Fornecedores',MB_ICONERROR+MB_OK);
          end
          else
          begin
            edcpf.Text := '';
            edcpf.SetFocus;
            messageBox(handle,PChar('C.P.F. já cadastrado.'+#13+
                                    fields[2].AsString+' - '+fields[0].AsString),'Pré-Cadastro de Fornecedores',MB_ICONERROR+MB_OK);
          end;
          abort;
        end;

        bret := true;
        edcnpj.Enabled := (pesq = 'FOR_CNPJ');
        edinsc.Enabled := (pesq = 'FOR_CNPJ');
        edcpf.Enabled  := (pesq = 'FOR_CPF');
        edrg.Enabled   := (pesq = 'FOR_CNPJ');
      end;
    end;
  finally
    result := bret;
  end;    
end;

procedure Tfrmcad_for_edi.FormCreate(Sender: TObject);
begin
  pcinfo.ActivePageIndex := 0;
  pcmain.ActivePageIndex := 0;
  pccom.ActivePageIndex  := 0;
  pcobs.ActivePageIndex  := 0;
  pcend.ActivePageIndex  := 0;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ID,PAR_FANT FROM PAR_SIS');
    SQL.Add('ORDER BY PAR_FANT');
    Open;

    while not eof do
    begin
      cbcdep.Values.Add(fields[0].AsString);
      cbcdep.Descriptions.Add(fields[1].AsString);
      next;
    end;
      
    SQL.Clear;
    SQL.Add('SELECT   BAN_DESC FROM TAB_BAN');
    SQL.Add('GROUP BY BAN_DESC');
    SQL.Add('ORDER BY BAN_DESC');
    Open;

    while not eof do
    begin
      dbgbanFOR_DESC.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FOR_RAMO FROM CAD_FOR_RAM');
    SQL.Add('ORDER BY FOR_RAMO');
    Open;

    while not eof do
    begin
      cbramo.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   TRA_FANT FROM CAD_TRA');
    SQL.Add('WHERE    TRA_STA  = 0');
    SQL.Add('ORDER BY TRA_FANT');
    Open;

    while not eof do
    begin
      cbdtra.Values.Add(fields[0].AsString);
      cbdtra.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   PAG_DPAG FROM TAB_PAG');
    SQL.Add('WHERE    PAG_STA = 0');
    SQL.Add('ORDER BY PAG_DPAG');
    Open;

    while not eof do
    begin
      cbdpag.Values.Add(fields[0].AsString);
      cbdpag.Descriptions.Add(fields[0].AsString);
      next;
    end;
  end;
end;

procedure Tfrmcad_for_edi.siSAVClick(Sender: TObject);
begin
  if (Length(edcnpj.Text) >= 14) and (edinsc.Text = '') then
  begin
    pcinfo.ActivePageIndex := 0;
    edinsc.SetFocus;
    raise exception.Create('Inscrição estadual não informada !');
  end;

  if (edcfor.Text = '')  or (edcfor.Text = '00000') then
     raise exception.Create('Código do fornecedor não informado !');

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
    raise exception.Create('Situação do fornecedor não informado !');
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

  if eddfun.Date <= 0 then
     eddfun.Date := eddcad.Date;

  try
    if cbramo.Text <> '' then
    with cad_for_ram do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_FOR_RAM');
      SelectSQL.Add('WHERE FOR_RAMO = '''+cbramo.Text+'''');
      Open;

      if fields[0].IsNull then
      begin
        Append;
        fields[0].Value := 0;
        fields[1].Value := cbramo.Text;
        Post;
      end;
    end;

    if cbreve.Text = '' then
       cbreve.Text := '0';
    if cbricm.Text = '' then
       cbricm.Text := '0';
    if cbcicm.Text = '' then
       cbcicm.Text := '0';

    try
      ibSP.StoredProcName := 'SP_CAD_FOR';
      ibSP.Prepare;

      case frmcad_for_edi.Tag of
        0: ibSP.Params[0].Value := null;
        1: ibSP.Params[0].Value := edcfor.Text;
      end;

      ibSP.ParamByName('dcad').Value := eddcad.Date;
      ibSP.ParamByName('dalt').Value := eddalt.Date;
      ibSP.ParamByName('dfun').Value := eddfun.Text;
      ibSP.ParamByName('raza').Value := edraza.Text;
      ibSP.ParamByName('site').Value := edsite.Text;
      ibSP.ParamByName('cred').Value := 0;
      ibSP.ParamByName('vdsc').Value := 0;
      ibSP.ParamByName('fant').Value := edfant.Text;
      ibSP.ParamByName('ramo').Value := cbramo.Text;
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
      ibSP.ParamByName('cdep').Value  := cbcdep.Text;
      ibSP.ParamByName('tpve').Value  := 'ATACADO';
      ibSP.ParamByName('obso').Value  := edobso.Lines.Text;
      ibSP.ParamByName('obse').Value  := edobse.Lines.Text;

      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID FROM CAD_TRA');
        SQL.Add('WHERE  TRA_FANT = '''+cbdtra.Text+'''');
        Open;
        ibSP.ParamByName('ctra').Value := fields[0].AsInteger;
        ibSP.ParamByName('dtra').Value := cbdtra.Text;

        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_PAG');
        SQL.Add('WHERE  PAG_DPAG = '''+cbdpag.Text+'''');
        Open;
        ibSP.ParamByName('cpag').Value := oStrZero(fields[0].AsInteger,2);
        ibSP.ParamByName('dpag').Value := cbdpag.Text;
      end;

      ibSP.ParamByName('reve').Value := cbreve.Text;
      ibSP.ParamByName('ricm').Value := cbricm.Values.IndexOf(cbricm.Text);
      ibSP.ParamByName('cicm').Value := cbcicm.Text;
      ibSP.ExecProc;

      case frmcad_for_edi.Tag of
        0: frmprincipal.Log_Eve('Fornecedores','Cadastro de Fornecedores','Inclusão' ,edcfor.Text,edcfor.Text,LOWERCASE(edfant.Text),'','');
        1: frmprincipal.Log_Eve('Fornecedores','Cadastro de Fornecedores','Alteração',edcfor.Text,edcfor.Text,LOWERCASE(edfant.Text),'','');
      end;

      editado := true;
      IBTra.Commit;
      IBTra.StartTransaction;

      if (frmcad_for_edi.Tag = 0) then
         NOVO_FORNECEDOR
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

procedure Tfrmcad_for_edi.edcepButtonClick(Sender: TObject;
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

procedure Tfrmcad_for_edi.edcepcButtonClick(Sender: TObject;
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

procedure Tfrmcad_for_edi.edcepcValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BUSCA_CEP_COB;
end;

procedure Tfrmcad_for_edi.FormShow(Sender: TObject);
begin
  inherited;
  if tag = 1 then
  begin
    with cad_for do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_FOR');
      SelectSQL.Add('WHERE ID = '''+frmcad_for.cadastroID.AsString+'''');
      Open;

      edcfor.Text := oStrZero(FieldByName('ID').AsInteger,5);
      edfant.Text := FieldByName('FOR_FANT').AsString;
      eddcad.Date := FieldByName('FOR_DCAD').AsDateTime;
      eddalt.Date := strtodate(SLPrincipal.Values['data_sistema']);
      eddfun.Date := FieldByName('FOR_DFUN').AsDateTime;
      edraza.Text := FieldByName('FOR_RAZA').AsString;
      edsite.Text := FieldByName('FOR_SITE').AsString;
      cbreve.Text := FieldByName('FOR_REVE').AsString;
      cbramo.Text := FieldByName('FOR_RAMO').AsString;
      edcont.Text := FieldByName('FOR_CONT').AsString;
      edfcon.Text := FieldByName('FOR_FCON').AsString;
      edccon.Text := FieldByName('FOR_CCON').AsString;
      edmail.Text := FieldByName('FOR_MAIL').AsString;
      edfmai.Text := FieldByName('FOR_FMAI').AsString;
      edcmai.Text := FieldByName('FOR_CMAI').AsString;
      edddd.Text  := FieldByName('FOR_DDD').AsString;
      eddd2.Text  := FieldByName('FOR_DD2').AsString;
      eddd3.Text  := FieldByName('FOR_DD3').AsString;
      eddd4.Text  := FieldByName('FOR_DD4').AsString;
      eddd5.Text  := FieldByName('FOR_DD5').AsString;
      eddd6.Text  := FieldByName('FOR_DD6').AsString;
      edfddd.Text := FieldByName('FOR_FDDD').AsString;
      edfdd2.Text := FieldByName('FOR_FDD2').AsString;
      edfdd3.Text := FieldByName('FOR_FDD3').AsString;
      edfdd4.Text := FieldByName('FOR_FDD4').AsString;
      edfdd5.Text := FieldByName('FOR_FDD5').AsString;
      edfdd6.Text := FieldByName('FOR_FDD6').AsString;
      edcddd.Text := FieldByName('FOR_CDDD').AsString;
      edcdd2.Text := FieldByName('FOR_CDD2').AsString;
      edcdd3.Text := FieldByName('FOR_CDD3').AsString;
      edcdd4.Text := FieldByName('FOR_CDD4').AsString;
      edcdd5.Text := FieldByName('FOR_CDD5').AsString;
      edcdd6.Text := FieldByName('FOR_CDD6').AsString;
      edtel1.Text := FieldByName('FOR_TEL1').AsString;
      edtel2.Text := FieldByName('FOR_TEL2').AsString;
      edtel3.Text := FieldByName('FOR_TEL3').AsString;
      edfax.Text  := FieldByName('FOR_FAX').AsString;
      edffax.Text := FieldByName('FOR_FFAX').AsString;
      edcfax.Text := FieldByName('FOR_CFAX').AsString;
      edfte1.Text := FieldByName('FOR_FTE1').AsString;
      edfte2.Text := FieldByName('FOR_FTE2').AsString;
      edfte3.Text := FieldByName('FOR_FTE3').AsString;
      edcte1.Text := FieldByName('FOR_CTE1').AsString;
      edcte2.Text := FieldByName('FOR_CTE2').AsString;
      edcte3.Text := FieldByName('FOR_CTE3').AsString;
      edcel.Text  := FieldByName('FOR_CEL').AsString;
      edfcel.Text := FieldByName('FOR_FCEL').AsString;
      edccel.Text := FieldByName('FOR_CCEL').AsString;
      edneid.Text := FieldByName('FOR_NEID').AsString;
      edfnid.Text := FieldByName('FOR_FNID').AsString;
      edcnid.Text := FieldByName('FOR_CNID').AsString;
      edncel.Text := FieldByName('FOR_NCEL').AsString;
      edfnce.Text := FieldByName('FOR_FNCE').AsString;
      edcnce.Text := FieldByName('FOR_CNCE').AsString;
      cbtce1.Text := FieldByName('FOR_TCE1').AsString;
      cbtce2.Text := FieldByName('FOR_TCE2').AsString;
      cbftc1.Text := FieldByName('FOR_FTC1').AsString;
      cbftc2.Text := FieldByName('FOR_FTC2').AsString;
      cbctc1.Text := FieldByName('FOR_CTC1').AsString;
      cbctc2.Text := FieldByName('FOR_CTC2').AsString;
      edccm.Text  := FieldByName('FOR_CCM').AsString;
      edimun.Text := FieldByName('FOR_IMUN').AsString;

      if FieldByName('FOR_CNPJ').AsString <> '' then
      begin
        edcnpj.Text   := FieldByName('FOR_CNPJ').AsString;
        edinsc.Text   := FieldByName('FOR_INSC').AsString;
        edcpf.Enabled := false;
        edrg.Enabled  := false;
      end;

      if FieldByName('FOR_CPF').AsString <> '' then
      begin
        edcpf.Text     := FieldByName('FOR_CPF').AsString;
        edrg.Text      := FieldByName('FOR_RG').AsString;
        edcnpj.Enabled := false;
        edinsc.Enabled := false;
      end;

      edtlog.Text := FieldByName('FOR_TLOG').AsString;
      edlogr.Text := FieldByName('FOR_LOGR').AsString;
      edcep.Text  := FieldByName('FOR_CEP').AsString;
      edcmun.Text := FieldByName('FOR_CMUN').AsString;
      edcmuv.Text := FieldByName('FOR_CMUV').AsString;
      edcmuc.Text := FieldByName('FOR_CMUC').AsString;
      ednume.Text := FieldByName('FOR_NUME').AsString;
      edcomp.Text := FieldByName('FOR_COMP').AsString;
      edbai.Text  := FieldByName('FOR_BAI').AsString;
      edcid.Text  := FieldByName('FOR_CID').AsString;
      eduf.Text   := FieldByName('FOR_ESTA').AsString;
      edtloc.Text := FieldByName('FOR_TLOC').AsString;
      edlogc.Text := FieldByName('FOR_LOGC').AsString;
      edcepc.Text := FieldByName('FOR_CEPC').AsString;
      ednumc.Text := FieldByName('FOR_NUMC').AsString;
      edcomc.Text := FieldByName('FOR_COMC').AsString;
      edbaic.Text := FieldByName('FOR_BAIC').AsString;
      edcidc.Text := FieldByName('FOR_CIDC').AsString;
      edufc.Text  := FieldByName('FOR_ESTC').AsString;
      edtlov.Text := FieldByName('FOR_TLOV').AsString;
      edlogv.Text := FieldByName('FOR_LOGV').AsString;
      edcepv.Text := FieldByName('FOR_CEPV').AsString;
      ednumv.Text := FieldByName('FOR_NUMV').AsString;
      edcomv.Text := FieldByName('FOR_COMV').AsString;
      edbaiv.Text := FieldByName('FOR_BAIV').AsString;
      edcidv.Text := FieldByName('FOR_CIDV').AsString;
      edufv.Text  := FieldByName('FOR_ESTV').AsString;
      cbdtra.Text := FieldByName('FOR_DTRA').AsString;
      edobse.Text := FieldByName('FOR_OBSE').Value;
      edobso.Text := FieldByName('FOR_OBSO').Value;
      cbdpag.Text := FieldByName('FOR_DPAG').AsString;
      cbricm.Text := FieldByName('FOR_RICM').AsString;
      cbcicm.Text := FieldByName('FOR_CICM').AsString;
      cbstav.Text := FieldByName('FOR_STAV').AsString;
      cbcdep.Text := FieldByName('FOR_CDEP').AsString;
    end
  end
  else
    NOVO_FORNECEDOR;

  edfant.SetFocus;

  with cad_for_ban do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_FOR_BAN');
    SelectSQL.Add('WHERE FOR_CFOR = '''+edcfor.Text+'''');
    Open;
  end;

  with cad_FOR_obs do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_FOR_OBS');
    SelectSQL.Add('WHERE OBS_CFOR = '''+edcfor.Text+'''');
    Open;
  end;
end;

procedure Tfrmcad_for_edi.NOVO_FORNECEDOR;
begin
  pcinfo.ActivePageIndex := 0;
  pcmain.ActivePageIndex := 0;

  cbcdep.Text := '0';
  edcfor.Text := '00000';
  edfant.Text := '';
  eddcad.Date := strtodate(SLPrincipal.Values['data_sistema']);
  eddalt.Date := strtodate(SLPrincipal.Values['data_sistema']);
  eddfun.Date := strtodate(SLPrincipal.Values['data_sistema']);
  cbcdep.Text := frmprincipal.parametrosID.AsString;
  cbstav.Text := 'A';
  edraza.Text := '';
  edsite.Text := '';
  cbramo.Text := '';
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
  cbdtra.Text := 'CLIENTE RETIRA';
  if pcinfo.ActivePageIndex = 0 then
     edfant.SetFocus;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_CAD_FOR,0) FROM RDB$DATABASE');
    Open;

    edcfor.Text := oStrZero(fields[0].AsInteger+1,5);
  end;
end;

procedure Tfrmcad_for_edi.edcepvButtonClick(Sender: TObject;
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

procedure Tfrmcad_for_edi.edcepvValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BUSCA_CEP_ENT;
end;

procedure Tfrmcad_for_edi.edcpfValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcpf.Text <> '' then
  begin
    if (not oCPF(edcpf.Text)) then
    begin
      edcpf.Text := '';
      edcpf.SetFocus;
      messageBox(handle,'C.P.F. inválido !','Cadastro de Fornecedores',MB_ICONERROR+MB_OK);
      Abort;
    end;
    PESQUISA_FORNECEDOR('FOR_CPF',edcpf.Text);
  end;
end;

procedure Tfrmcad_for_edi.edcnpjValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcnpj.Text <> '' then
  begin
    if (not oCNPJ(edcnpj.Text)) then
    begin
      edcnpj.Text := '';
      edcnpj.SetFocus;
      messageBox(handle,'C.N.P.J. inválido !','Cadastro de Fornecedores',MB_ICONERROR+MB_OK);
      Abort;
    end;
    PESQUISA_FORNECEDOR('FOR_CNPJ',edcnpj.Text);
  end;
end;

procedure Tfrmcad_for_edi.edcforValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcfor.Text = '' then
     edcfor.Text := '00000';

  edcfor.Text := oStrZero(strtoint(edcfor.Text),5);
  
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT FOR_RAZA FROM CAD_FOR');
    SQL.Add('WHERE  ID = '''+edcfor.Text+'''');
    Open;

    if not fields[0].IsNull then
    begin
      edcfor.SetFocus;
      raise exception.Create('Fornecedor já Cadastrado com o mesmo código '+#13+fields[0].AsString);
    end;
  end;
end;

procedure Tfrmcad_for_edi.edufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
     siSAV.Click;
end;

procedure Tfrmcad_for_edi.edcmunValidate(Sender: TObject;
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

procedure Tfrmcad_for_edi.edcmunButtonClick(Sender: TObject;
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

procedure Tfrmcad_for_edi.FormDestroy(Sender: TObject);
begin
  frmcad_for_edi := nil;
end;

procedure Tfrmcad_for_edi.edcepClick(Sender: TObject);
begin
  if length(edcep.Text) > 9 then
     edcep.Text := '';
end;

procedure Tfrmcad_for_edi.edcepEnter(Sender: TObject);
begin
  if length(edcep.Text) > 9 then
     edcep.Text := '';
end;

procedure Tfrmcad_for_edi.edtel2DblClick(Sender: TObject);
begin
  edtel2.Text := '';
end;

procedure Tfrmcad_for_edi.edtel1DblClick(Sender: TObject);
begin
  edtel1.Text := '';
end;

procedure Tfrmcad_for_edi.edfaxDblClick(Sender: TObject);
begin
  edfax.Text := '';
end;

procedure Tfrmcad_for_edi.edcelDblClick(Sender: TObject);
begin
  edcel.Text := '';
end;

procedure Tfrmcad_for_edi.edcmucValidate(Sender: TObject;
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

procedure Tfrmcad_for_edi.edcmuvValidate(Sender: TObject;
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

procedure Tfrmcad_for_edi.edcmucButtonClick(Sender: TObject;
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

procedure Tfrmcad_for_edi.edcmuvButtonClick(Sender: TObject;
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

procedure Tfrmcad_for_edi.BUSCA_CEP_COM;
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

procedure Tfrmcad_for_edi.BUSCA_CEP_COB;
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

procedure Tfrmcad_for_edi.BUSCA_CEP_ENT;
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


procedure Tfrmcad_for_edi.edcepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BUSCA_CEP_COM;
end;

procedure Tfrmcad_for_edi.edvdscKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    pcMAIN.ActivePageIndex := 0;
    edcont.SetFocus;
  end
end;

procedure Tfrmcad_for_edi.banIClick(Sender: TObject);
begin
  cad_FOR_ban.Append;
end;

procedure Tfrmcad_for_edi.banAClick(Sender: TObject);
begin
  cad_FOR_ban.Edit;
end;

procedure Tfrmcad_for_edi.banEClick(Sender: TObject);
begin
  cad_FOR_ban.Delete;
end;

procedure Tfrmcad_for_edi.banCClick(Sender: TObject);
begin
  cad_FOR_ban.Cancel;
end;

procedure Tfrmcad_for_edi.banSClick(Sender: TObject);
begin
  cad_FOR_ban.Post;
end;

procedure Tfrmcad_for_edi.cad_for_banAfterCancel(DataSet: TDataSet);
begin
  banI.Enabled := true;
  banA.Enabled := true;
  banE.Enabled := true;
  banS.Enabled := false;
  banC.Enabled := false;
end;

procedure Tfrmcad_for_edi.cad_for_banAfterDelete(DataSet: TDataSet);
begin
  IBtra.CommitRetaining;
  banI.Enabled := true;
  banA.Enabled := true;
  banE.Enabled := true;
  banS.Enabled := false;
  banC.Enabled := false;
end;

procedure Tfrmcad_for_edi.cad_for_banAfterEdit(DataSet: TDataSet);
begin
  banI.Enabled := false;
  banA.Enabled := false;
  banE.Enabled := false;
  banS.Enabled := true;
  banC.Enabled := true;

  if pcMAIN.ActivePage = tsBAN then
     dbgban.SetFocus;
end;

procedure Tfrmcad_for_edi.cad_for_banAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  banI.Enabled := true;
  banA.Enabled := true;
  banE.Enabled := true;
  banS.Enabled := false;
  banC.Enabled := false;

  wRec := cad_FOR_ban.GetBookmark;
  IBTra.CommitRetaining;

  cad_FOR_ban.Close;
  cad_FOR_ban.Open;
  if (wRec = Nil) or (cad_FOR_ban.Fields[0].IsNull) then cad_FOR_ban.last
     else cad_FOR_ban.GotoBookmark(wRec);
  cad_FOR_ban.FreeBookmark(wRec);

  if pcMAIN.ActivePage = tsban then
     dbgban.SetFocus;
end;

procedure Tfrmcad_for_edi.cad_for_banBeforeCancel(DataSet: TDataSet);
begin
  if cad_FOR_ban.RecordCount = 0 then
  begin
    banI.Enabled := true;
    banA.Enabled := true;
    banE.Enabled := true;
    banS.Enabled := false;
    banC.Enabled := false;

    cad_FOR_ban.Close;
    cad_FOR_ban.Open;
    ABORT;
  end;
end;

procedure Tfrmcad_for_edi.cad_for_banBeforeDelete(DataSet: TDataSet);
begin
  if not cad_FOR_ban.Fields[0].IsNull then
  begin
    if oYesNo(handle,'Excluir Registro ?') = mrno then
       abort;
  end;
end;

procedure Tfrmcad_for_edi.cad_for_banNewRecord(DataSet: TDataSet);
begin
  cad_for_banID.Value       := 0;
  cad_for_banFOR_CFOR.Value := strtoint(edcfor.Text);
  cad_for_banFOR_DCAD.Value := StrToDate(SLPrincipal.Values['data_sistema']);
end;

procedure Tfrmcad_for_edi.dbgbanKeyDown(Sender: TObject; var Key: Word;
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

                     cad_FOR_banFOR_BANC.Value := fields[0].AsString;
                     cad_FOR_banFOR_DESC.Value := fields[1].AsString;
                   end
                   else
                   begin
                     cad_FOR_banFOR_BANC.Value := '';
                     cad_FOR_banFOR_DESC.Value := '';
                   end;
                   dbgban.FocusedColumn := 3;
                 end
                 else if dbgban.FocusedColumn = 6 then
                 begin
                   cad_FOR_ban.Next;
                   if cad_FOR_ban.Eof then
                      cad_FOR_ban.Append;

                   dbgban.FocusedColumn := 1
                 end
                 else
                    dbgban.FocusedColumn := dbgban.FocusedColumn + 1;
               end;
    VK_INSERT: if cad_FOR_ban.State = dsBrowse then banI.Click;
    VK_DELETE: if cad_FOR_ban.State = dsBrowse then banE.Click;
    VK_ESCAPE: if cad_FOR_ban.State = dsBrowse then {nothing} else banC.Click;
  end;
end;

procedure Tfrmcad_for_edi.obsIClick(Sender: TObject);
begin
  cad_FOR_obs.Append;
end;

procedure Tfrmcad_for_edi.obsEClick(Sender: TObject);
begin
  cad_FOR_obs.Delete;
end;

procedure Tfrmcad_for_edi.obsSClick(Sender: TObject);
begin
  cad_FOR_obs.Post;
end;

procedure Tfrmcad_for_edi.obsCClick(Sender: TObject);
begin
  cad_FOR_obs.Cancel;
end;

procedure Tfrmcad_for_edi.obsAClick(Sender: TObject);
begin
  cad_FOR_obs.Edit;
end;

procedure Tfrmcad_for_edi.cad_for_obsAfterCancel(DataSet: TDataSet);
begin
  obsI.Enabled := true;
  obsA.Enabled := true;
  obsE.Enabled := true;
  obsS.Enabled := false;
  obsC.Enabled := false;
end;

procedure Tfrmcad_for_edi.cad_for_obsAfterDelete(DataSet: TDataSet);
begin
  IBtra.CommitRetaining;
  obsI.Enabled := true;
  obsA.Enabled := true;
  obsE.Enabled := true;
  obsS.Enabled := false;
  obsC.Enabled := false;
end;

procedure Tfrmcad_for_edi.cad_for_obsAfterEdit(DataSet: TDataSet);
begin
  obsI.Enabled := false;
  obsA.Enabled := false;
  obsE.Enabled := false;
  obsS.Enabled := true;
  obsC.Enabled := true;

  if pcMAIN.ActivePage = tsobs then
     dbgobs.SetFocus;
end;

procedure Tfrmcad_for_edi.cad_for_obsAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  obsI.Enabled := true;
  obsA.Enabled := true;
  obsE.Enabled := true;
  obsS.Enabled := false;
  obsC.Enabled := false;

  wRec := cad_for_obs.GetBookmark;
  IBTra.CommitRetaining;

  cad_for_obs.Close;
  cad_for_obs.Open;
  if (wRec = Nil) or (cad_for_obs.Fields[0].IsNull) then cad_for_obs.last
     else cad_for_obs.GotoBookmark(wRec);
  cad_for_obs.FreeBookmark(wRec);

  if pcMAIN.ActivePage = tsobs then
     dbgobs.SetFocus;
end;

procedure Tfrmcad_for_edi.cad_for_obsBeforeCancel(DataSet: TDataSet);
begin
  if cad_FOR_obs.RecordCount = 0 then
  begin
    obsI.Enabled := true;
    obsA.Enabled := true;
    obsE.Enabled := true;
    obsS.Enabled := false;
    obsC.Enabled := false;

    cad_FOR_obs.Close;
    cad_FOR_obs.Open;
    ABORT;
  end;
end;

procedure Tfrmcad_for_edi.cad_for_obsBeforeDelete(DataSet: TDataSet);
begin
  if not cad_FOR_obs.Fields[0].IsNull then
  begin
    if oYesNo(handle,'Excluir Registro ?') = mrno then
       abort;
  end;
end;

procedure Tfrmcad_for_edi.cad_for_obsNewRecord(DataSet: TDataSet);
begin
  cad_FOR_obsID.Value       := 0;
  cad_FOR_obsOBS_CFOR.Value := strtoint(edcfor.Text);
  cad_FOR_obsOBS_DCAD.Value := StrToDate(SLPrincipal.Values['data_sistema']);
end;

procedure Tfrmcad_for_edi.edcepcClick(Sender: TObject);
begin
  if length(edcepc.Text) > 9 then
     edcepc.Text := '';
end;

procedure Tfrmcad_for_edi.edcepcEnter(Sender: TObject);
begin
  if length(edcepc.Text) > 9 then
     edcepc.Text := '';
end;

procedure Tfrmcad_for_edi.edcepvClick(Sender: TObject);
begin
  if length(edcepv.Text) > 9 then
     edcepv.Text := '';
end;

procedure Tfrmcad_for_edi.edcepvEnter(Sender: TObject);
begin
  if length(edcepv.Text) > 9 then
     edcepv.Text := '';
end;

procedure Tfrmcad_for_edi.cad_for_banFOR_DESCValidate(Sender: TField);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT BAN_BANC FROM TAB_BAN');
    SQL.Add('WHERE  BAN_DESC = '''+cad_for_banFOR_DESC.AsString+'''');
    Open;

    if fields[0].IsNull then
       DataBaseError('Banco não cadastrado !');

    cad_for_banFOR_BANC.Value := fields[0].AsString;
  end
end;

procedure Tfrmcad_for_edi.ednumeValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if ednumc.Text = '' then
     ednumc.Text := ednume.Text;
  if ednumv.Text = '' then
     ednumv.Text := ednume.Text;
end;

procedure Tfrmcad_for_edi.edcompValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcomc.Text = '' then
     edcomc.Text := edcomp.Text;
  if edcomv.Text = '' then
     edcomv.Text := edcomp.Text;
end;

procedure Tfrmcad_for_edi.siCONClick(Sender: TObject);
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
      if PESQUISA_FORNECEDOR('FOR_CNPJ',frmsintegra.EditCNPJ.Text) then
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
        cbramo.Text := frmsintegra.EditCNAE1.Text;
        edobse.Text := frmsintegra.ListCNAE2.Items.Text;

        eddfun.Clear;
        if frmsintegra.EditAbertura.Text <> '' then
        eddfun.Date := strtodate(frmsintegra.EditAbertura.Text);
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
    end;
    freeAndNil(frmsintegra);
    frmsintegra.Free;
  end;
end;

end.



