unit pcad_for_edi;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, IBStoredProc, IBEvents, IBDatabase, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxEditor, dxEdLib, ExtCtrls, StdCtrls,
  dxExEdtr, dxPageControl, ImgList, RxSpeedBar, ComCtrls,
  dxDBELib, Shellapi, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms,
  cxGraphics, cxControls, dxStatusBar, IBSQL, Math, StrUtils, ActnList;

type
  Tfrmcad_for_edi = class(Tfrmpadr3)
    Panel1: TPanel;
    pcmain: TdxPageControl;
    tscon: TdxTabSheet;
    tsEND: TdxTabSheet;
    cad_for: TIBDataSet;
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
    cad_forFOR_DULT: TDateField;
    cad_forFOR_REGI: TIBStringField;
    cad_forFOR_CDEP: TIntegerField;
    pcinfo: TdxPageControl;
    tsicad: TdxTabSheet;
    Bevel4: TBevel;
    Label1: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label21: TLabel;
    Label25: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label41: TLabel;
    Label37: TLabel;
    Label56: TLabel;
    Label40: TLabel;
    eddalt: TdxDateEdit;
    edcfor: TdxEdit;
    edfant: TdxEdit;
    edraza: TdxEdit;
    edcnpj: TdxMaskEdit;
    edinsc: TdxEdit;
    edCCM: TdxEdit;
    edimun: TdxEdit;
    edcpf: TdxMaskEdit;
    edrg: TdxEdit;
    eddcad: TdxDateEdit;
    cbstav: TdxImageEdit;
    cbramo: TComboBox;
    cbcdep: TdxImageEdit;
    dxTabSheet2: TdxTabSheet;
    Bevel6: TBevel;
    Label55: TLabel;
    Label67: TLabel;
    Label54: TLabel;
    Label47: TLabel;
    Label46: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    eddfun: TdxDateEdit;
    cbreve: TdxImageEdit;
    cbdtra: TdxImageEdit;
    cbdpag: TdxImageEdit;
    cbcicm: TdxImageEdit;
    cbricm: TdxImageEdit;
    edsite: TdxEdit;
    tsobs: TdxTabSheet;
    pcOBS: TdxPageControl;
    ts1: TdxTabSheet;
    Bevel10: TBevel;
    edobse: TdxMemo;
    ts2: TdxTabSheet;
    Bevel11: TBevel;
    edobso: TdxMemo;
    QConsulta: TIBQuery;
    PCEnderecos: TdxPageControl;
    tsCEP_COM: TdxTabSheet;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label53: TLabel;
    Label66: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Bevel1: TBevel;
    EDCOM_TLO_TX: TdxEdit;
    EDCOM_LOG_NO: TdxEdit;
    BECOM_CEP: TdxButtonEdit;
    EDCOM_NRO: TdxEdit;
    EDCOM_XCPL: TdxEdit;
    BECOM_CMUN: TdxButtonEdit;
    EDCOM_BAI_NO: TdxEdit;
    EDCOM_UF: TdxEdit;
    EDCOM_LOC_NO: TdxEdit;
    tsCEP_COB: TdxTabSheet;
    Label3: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Bevel2: TBevel;
    EDCOB_TLO_TX: TdxEdit;
    EDCOB_LOG_NO: TdxEdit;
    BECOB_CEP: TdxButtonEdit;
    EDCOB_NRO: TdxEdit;
    EDCOB_XCPL: TdxEdit;
    BECOB_CMUN: TdxButtonEdit;
    EDCOB_BAI_NO: TdxEdit;
    EDCOB_UF: TdxEdit;
    EDCOB_LOC_NO: TdxEdit;
    tsCEP_ENT: TdxTabSheet;
    Bevel3: TBevel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    EDENT_LOC_NO: TdxEdit;
    EDENT_TLO_TX: TdxEdit;
    EDENT_LOG_NO: TdxEdit;
    BEENT_CEP: TdxButtonEdit;
    EDENT_NRO: TdxEdit;
    EDENT_XCPL: TdxEdit;
    BEENT_CMUN: TdxButtonEdit;
    EDENT_BAI_NO: TdxEdit;
    EDENT_UF: TdxEdit;
    LAPSQCEP: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edcpfValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcnpjValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcforValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure edtel2DblClick(Sender: TObject);
    procedure edtel1DblClick(Sender: TObject);
    procedure edfaxDblClick(Sender: TObject);
    procedure edcelDblClick(Sender: TObject);
    procedure edvdscKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCOM_LOG_NOValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure BECOM_CMUNButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure LAPSQCEPClick(Sender: TObject);
    procedure ACTMPostExecute(Sender: TObject);
  private
    { Private declarations }
    RECEndereco: TRECPedidos;

    procedure NOVO_FORNECEDOR;
    function  PESQUISA_FORNECEDOR(pesq,chave: string): boolean;
  public
    { Public declarations }
  end;

var
  frmcad_for_edi: Tfrmcad_for_edi;

implementation

uses uPrincipal,
     bPrincipal;

{$R *.dfm}

procedure Tfrmcad_for_edi.FormCreate(Sender: TObject);
begin
  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_FOR_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Cadastro';
  REC_SHE_DEF.GReferencia := 'Fornecedores';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
  inherited;

  edobso.Enabled    := (Pos(RECUsuarios.Grupo,'DEVFIN') > 0);
  edobso.Font.Color := IFThen(edobso.Enabled,clWhite,clBlack);
  with Consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ID,FANTASIA FROM TAB_PAR_SIS');
    SQL.Add('ORDER BY FANTASIA');
    Open;

    while not eof do
    begin
      cbcdep.Values.Add(fields[0].AsString);
      cbcdep.Descriptions.Add(fields[1].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   TRA_FANT FROM CAD_TRA');
    SQL.Add('WHERE    TRA_STAV = ''A''');
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

procedure Tfrmcad_for_edi.FormShow(Sender: TObject);
begin
  inherited;
  NOVO_FORNECEDOR;

  if REC_SHE_DEF.IDPK > 0 then
  with cad_for do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_FOR');
    SelectSQL.Add('WHERE ID = '''+ REC_SHE_DEF.IDPK +'''');
    Open;

    edcfor.Text := oStrZero(FieldByName('ID').AsInteger,5);
    edfant.Text := FieldByName('FOR_FANT').AsString;
    eddcad.Date := FieldByName('FOR_DCAD').AsDateTime;
    eddalt.Date := RECParametros.SHE_DATA;
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
    edtel1.Text := oRETNumero(FieldByName('FOR_TEL1').AsString);
    edtel2.Text := oRETNumero(FieldByName('FOR_TEL2').AsString);
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
    edcel.Text  := oRETNumero(FieldByName('FOR_CEL').AsString);
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

  EDCOM_TLO_TX.Text := FieldByName('FOR_TLOG').AsString;
  EDCOM_LOG_NO.Text := FieldByName('FOR_LOGR').AsString;
  EDCOM_NRO.Text    := FieldByName('FOR_NUME').AsString;
  BECOM_CEP.Text    := FieldByName('FOR_CEP').AsString;
  EDCOM_XCPL.Text   := FieldByName('FOR_COMP').AsString;
  BECOM_CMUN.Text   := FieldByName('FOR_CMUN').AsString;
  EDCOM_BAI_NO.Text := FieldByName('FOR_BAI').AsString;
  EDCOM_LOC_NO.Text := FieldByName('FOR_CID').AsString;
  EDCOM_UF.Text     := FieldByName('FOR_ESTA').AsString;

  EDCOB_TLO_TX.Text := FieldByName('FOR_TLOC').AsString;
  EDCOB_LOG_NO.Text := FieldByName('FOR_LOGC').AsString;
  EDCOB_NRO.Text    := FieldByName('FOR_NUMC').AsString;
  BECOB_CEP.Text    := FieldByName('FOR_CEPC').AsString;
  EDCOB_XCPL.Text   := FieldByName('FOR_COMC').AsString;
  BECOB_CMUN.Text   := FieldByName('FOR_CMUC').AsString;
  EDCOB_BAI_NO.Text := FieldByName('FOR_BAIC').AsString;
  EDCOB_LOC_NO.Text := FieldByName('FOR_CIDC').AsString;
  EDCOB_UF.Text     := FieldByName('FOR_ESTC').AsString;

  EDENT_TLO_TX.Text := FieldByName('FOR_TLOV').AsString;
  EDENT_LOG_NO.Text := FieldByName('FOR_LOGV').AsString;
  EDENT_NRO.Text    := FieldByName('FOR_NUMV').AsString;
  BEENT_CEP.Text    := FieldByName('FOR_CEPV').AsString;
  EDENT_XCPL.Text   := FieldByName('FOR_COMV').AsString;
  BEENT_CMUN.Text   := FieldByName('FOR_CMUV').AsString;
  EDENT_BAI_NO.Text := FieldByName('FOR_BAIV').AsString;
  EDENT_LOC_NO.Text := FieldByName('FOR_CIDV').AsString;
  EDENT_UF.Text     := FieldByName('FOR_ESTV').AsString;

    cbdtra.Text := FieldByName('FOR_DTRA').AsString;
    edobse.Text := FieldByName('FOR_OBSE').Value;
    edobso.Text := FieldByName('FOR_OBSO').Value;
    cbdpag.Text := FieldByName('FOR_DPAG').AsString;
    cbricm.Text := FieldByName('FOR_RICM').AsString;
    cbcicm.Text := FieldByName('FOR_CICM').AsString;
    cbstav.Text := FieldByName('FOR_STAV').AsString;
    cbcdep.Text := FieldByName('FOR_CDEP').AsString;
  end;
end;

procedure Tfrmcad_for_edi.FormDestroy(Sender: TObject);
begin
  inherited;
  { record e afins }
  try
    oFRECPedidos(RECEndereco);
  except
    on E: Exception do
    begin
      oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                               'Error Code: '+E.Message+'.'        +#13+
                                Caption+'.');
    end;
  end;
  frmcad_for_edi := nil;
end;

procedure Tfrmcad_for_edi.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not (ActiveControl is TdxButtonEdit) then
     inherited;
end;

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

      with Consulta do
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

procedure Tfrmcad_for_edi.NOVO_FORNECEDOR;
begin
  pcinfo.ActivePageIndex := 0;
  pcmain.ActivePageIndex := 0;

  cbcdep.Text := '0';
  edcfor.Text := '00000';
  edfant.Text := '';
  eddcad.Date := RECParametros.SHE_DATA;
  eddalt.Date := RECParametros.SHE_DATA;
  eddfun.Date := RECParametros.SHE_DATA;
  cbcdep.Text := RECParametros.EP_ID;
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
  edobse.Text := '';
  edobso.Text := '';
  cbdtra.Text := 'CLIENTE RETIRA';
  if pcinfo.ActivePageIndex = 0 then
     edfant.SetFocus;

  with Consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_CAD_FOR,0) FROM RDB$DATABASE');
    Open;

    edcfor.Text := oStrZero(fields[0].AsInteger+1,5);
  end;
end;

procedure Tfrmcad_for_edi.edcpfValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not oCPF(edcpf.Text) then
  raise Exception.Create('CPF Inválido !');

  if edcpf.Text <> '' then
  PESQUISA_FORNECEDOR('FOR_CPF',edcpf.Text);
end;

procedure Tfrmcad_for_edi.edcnpjValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not oCNPJ(edcnpj.Text) then
  raise Exception.Create('CNPJ Inválido !');

  if edcnpj.Text <> '' then
  PESQUISA_FORNECEDOR('FOR_CNPJ',edcnpj.Text);
end;

procedure Tfrmcad_for_edi.edcforValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcfor.Text = '' then
     edcfor.Text := '00000';

  edcfor.Text := oStrZero(strtoint(edcfor.Text),5);
  
  with Consulta do
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

procedure Tfrmcad_for_edi.edvdscKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    pcMAIN.ActivePageIndex := 0;
    edcont.SetFocus;
  end
end;

procedure Tfrmcad_for_edi.EDCOM_LOG_NOValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var
    SenderName: String;
begin
 if LAPSQCEP.Tag = 1 then
    Exit;

  oIRECPedidos(RECEndereco);
  RECEndereco.AWinControl := TWinControl(Sender);
  RECEndereco.AQConsulta  := QConsulta;

  try
    if Sender.ClassType = TdxButtonEdit then
       SenderName := Copy(TdxButtonEdit(Sender).Name,3,4) else SenderName := Copy(TdxEdit(Sender).Name,3,4);

    uPSQEND(RECEndereco);
  finally
    if RECEndereco.Selected then
    begin
      REC_SHE_DEF.Editing := (not ALockWindowUpdate);

      TdxEdit(FindComponent(Format('ED%sTLO_TX',[SenderName]))).Text := RECEndereco.TLO_TX;
      TdxEdit(FindComponent(Format('ED%sLOG_NO',[SenderName]))).Tag  := RECEndereco.LOG_NU;
      TdxEdit(FindComponent(Format('ED%sLOG_NO',[SenderName]))).Text := RECEndereco.LOG_NO;
      TdxEdit(FindComponent(Format('ED%sXCPL'  ,[SenderName]))).Text := RECEndereco.XCPL;
      TdxEdit(FindComponent(Format('ED%sBAI_NO',[SenderName]))).Text := RECEndereco.BAI_NO;
      TdxEdit(FindComponent(Format('ED%sLOC_NO',[SenderName]))).Text := RECEndereco.LOC_NO;
      TdxEdit(FindComponent(Format('ED%sCMUN'  ,[SenderName]))).Text := RECEndereco.LOC_NO;
      TdxEdit(FindComponent(Format('ED%sUF'    ,[SenderName]))).Text := RECEndereco.UF;

      TdxButtonEdit(FindComponent(Format('BE%sCEP' ,[SenderName]))).Text := RECEndereco.CEP;
      TdxButtonEdit(FindComponent(Format('BE%sCMUN',[SenderName]))).Text := RECEndereco.CMUN;

      TdxEdit(FindComponent(Format('ED%sNRO',[SenderName]))).SetFocus;
    end;

    if Sender.ClassType = TdxButtonEdit then
       TdxButtonEdit(Sender).Modified := False else TdxEdit(Sender).Modified := False;
  end;
end;

procedure Tfrmcad_for_edi.BECOM_CMUNButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  RECEndereco.UF := TdxEdit(FindComponent(Format('ED%sUF',[Copy(TdxButtonEdit(Sender).Name,3,4)]))).Text;

  if Length(RECEndereco.UF) < 2 then
     oException(TdxEdit(FindComponent(Format('ED%sUF',[Copy(TdxButtonEdit(Sender).Name,3,4)]))),'UF não informada ou incorreta !');

  try
    RECEndereco.CMUN := TdxButtonEdit(Sender).Text;
    uPSQCMUN(RECEndereco);
  finally TdxButtonEdit(Sender).Text := RECEndereco.CMUN;
  end;
end;

procedure Tfrmcad_for_edi.LAPSQCEPClick(Sender: TObject);
begin
  if LAPSQCEP.Tag = 0 then
  begin
    LAPSQCEP.Tag := 1;
    LAPSQCEP.Font.Color := clRed;
  end else
  begin
    LAPSQCEP.Tag := 0;
    LAPSQCEP.Font.Color := $00D69F30;
  end;
  Application.ProcessMessages;
end;

procedure Tfrmcad_for_edi.ACTMPostExecute(Sender: TObject);
begin
  inherited;
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

  if eddfun.Date <= 0 then
  eddfun.Date := eddcad.Date;

  if cbreve.Text = '' then
     cbreve.Text := '0';
  if cbricm.Text = '' then
     cbricm.Text := '0';
  if cbcicm.Text = '' then
     cbcicm.Text := '0';

  if Tag = 0 then
     EDCFOR.Text := '0';

  try
    ibSP.Close;
    ibSP.StoredProcName := 'SP_CAD_FOR';
    ibSP.Prepare;

    { Cadastro }
    ibSP.ParamByName('ID'  ).Value := REC_SHE_DEF.IDPK;
    ibSP.ParamByName('IDEP').Value := RECParametros.EP_ID;
    ibSP.ParamByName('IDCA').Value := RECUsuarios.Id;

    ibSP.ParamByName('dfun').Value := IFThen(eddfun.Date > 0,eddfun.Date,0);
    ibSP.ParamByName('NAFA').Value := 0;

    { Sintegra }
    ibSP.ParamByName('fant').Value := edfant.Text;
    ibSP.ParamByName('raza').Value := edraza.Text;
    ibSP.ParamByName('DEGP').Value := EmptyStr;
    ibSP.ParamByName('ramo').Value := cbramo.Text;

    ibSP.ParamByName('cnpj').Value := edcnpj.Text;
    ibSP.ParamByName('insc').Value := edinsc.Text;
    ibSP.ParamByName('imun').Value := edimun.Text;
    ibSP.ParamByName('ccm' ).Value := edccm.Text;
    ibSP.ParamByName('cpf' ).Value := edcpf.Text;

    { Fiscal }
    ibSP.ParamByName('reve').Value := cbreve.Text;
    ibSP.ParamByName('ricm').Value := cbricm.Text;
    ibSP.ParamByName('cicm').Value := cbcicm.Text;

    { Programações }
    ibSP.ParamByName('tipo'   ).Value := 0;
    ibSP.ParamByName('reserva').Value := 0;

    { Vendedores }
    ibSP.ParamByName('cven').Value := RECUsuarios.Id;         { Interno }
    ibSP.ParamByName('crep').Value := RECParametros.CR_ID; { Externo }

    { Comercial }
    ibSP.ParamByName('cont').Value := edcont.Text;
    ibSP.ParamByName('mail').Value := edmail.Text;

    { Fone }
    ibSP.ParamByName('ddd' ).Value := edddd.Text;
    ibSP.ParamByName('tel1').Value := edtel1.Text;
    ibSP.ParamByName('dd2' ).Value := eddd2.Text;
    ibSP.ParamByName('tel2').Value := edtel2.Text;
    ibSP.ParamByName('dd3' ).Value := eddd3.Text;
    ibSP.ParamByName('tel3').Value := edtel3.Text;

    { Celular }
    ibSP.ParamByName('dd5' ).Value := eddd5.Text;
    ibSP.ParamByName('cel' ).Value := edcel.Text;
    ibSP.ParamByName('neid').Value := edneid.Text;

    { Endereço }
    ibSP.ParamByName('tlog').Value := EDCOM_TLO_TX.Text;
    ibSP.ParamByName('logr').Value := EDCOM_LOG_NO.Text;
    ibSP.ParamByName('nume').Value := Trim(LeftStr(EDCOM_NRO.Text,10));
    ibSP.ParamByName('cep').Value  := BECOM_CEP.Text;
    ibSP.ParamByName('comp').Value := Trim(LeftStr(EDCOM_XCPL.Text,40));
    ibSP.ParamByName('bai').Value  := EDCOM_BAI_NO.Text;
    ibSP.ParamByName('cid').Value  := EDCOM_LOC_NO.Text;
    ibSP.ParamByName('cmun').Value := BECOM_CMUN.Text;
    ibSP.ParamByName('esta').Value := EDCOM_UF.Text;

    { Financeiro }
    ibSP.ParamByName('fcon').Value := edfcon.Text;
    ibSP.ParamByName('fmai').Value := edfmai.Text;

    { Fone }
    ibSP.ParamByName('fddd').Value := edfddd.Text;
    ibSP.ParamByName('fte1').Value := edfte1.Text;
    ibSP.ParamByName('fdd2').Value := edfdd2.Text;
    ibSP.ParamByName('fte2').Value := edfte2.Text;
    ibSP.ParamByName('fdd3').Value := edfdd3.Text;
    ibSP.ParamByName('fte3').Value := edfte3.Text;

    { Celular }
    ibSP.ParamByName('fdd5').Value := edfdd5.Text;
    ibSP.ParamByName('fcel').Value := edfcel.Text;
    ibSP.ParamByName('fnid').Value := EmptyStr;

    { Endereço }
    ibSP.ParamByName('tloc').Value := EDCOB_TLO_TX.Text;
    ibSP.ParamByName('logc').Value := EDCOB_LOG_NO.Text;
    ibSP.ParamByName('numc').Value := Trim(LeftStr(EDCOB_NRO.Text,10));
    ibSP.ParamByName('cepc').Value := BECOB_CEP.Text;
    ibSP.ParamByName('comc').Value := Trim(LeftStr(EDCOB_XCPL.Text,40));
    ibSP.ParamByName('baic').Value := EDCOB_BAI_NO.Text;
    ibSP.ParamByName('cidc').Value := EDCOB_LOC_NO.Text;
    ibSP.ParamByName('cmuc').Value := BECOB_CMUN.Text;
    ibSP.ParamByName('estc').Value := EDCOB_UF.Text;

    { Compras }
    ibSP.ParamByName('ccon').Value := edccon.Text;
    ibSP.ParamByName('cmai').Value := edcmai.Text;

    { Fone }
    ibSP.ParamByName('cddd').Value := edcddd.Text;
    ibSP.ParamByName('cte1').Value := edcte1.Text;
    ibSP.ParamByName('cdd2').Value := edcdd2.Text;
    ibSP.ParamByName('cte2').Value := edcte2.Text;
    ibSP.ParamByName('cdd3').Value := edcdd3.Text;
    ibSP.ParamByName('cte3').Value := edcte3.Text;

    { Celular }
    ibSP.ParamByName('cdd5').Value := edcdd5.Text;
    ibSP.ParamByName('ccel').Value := edccel.Text;
    ibSP.ParamByName('cnid').Value := EmptyStr;

    { Endereço }
    ibSP.ParamByName('tlov').Value := EDENT_TLO_TX.Text;
    ibSP.ParamByName('logv').Value := EDENT_LOG_NO.Text;
    ibSP.ParamByName('numv').Value := Trim(LeftStr(EDENT_NRO.Text,10));
    ibSP.ParamByName('cepv').Value := BEENT_CEP.Text;
    ibSP.ParamByName('comv').Value := Trim(LeftStr(EDENT_XCPL.Text,40));
    ibSP.ParamByName('baiv').Value := EDENT_BAI_NO.Text;
    ibSP.ParamByName('cidv').Value := EDENT_LOC_NO.Text;
    ibSP.ParamByName('cmuv').Value := BEENT_CMUN.Text;
    ibSP.ParamByName('estv').Value := EDENT_UF.Text;

    { Informações Adicionais }
    ibSP.ParamByName('obse').Value := EDOBSE.Text;
    ibSP.ParamByName('obso').Value := EDOBSO.Text;

    { Usuário }
    ibSP.ParamByName('dusu').Value := RECUsuarios.Login;

    { Status }
    ibSP.ParamByName('stav').Value := CBSTAV.Text;

    { Dispositivos }
    ibSP.ParamByName('IP'  ).Value := RECParametros.IP;
    ibSP.ParamByName('HOST').Value := RECParametros.HOST;
    
    { Dropar }
    ibSP.ParamByName('dd4').Value  := EmptyStr;
    ibSP.ParamByName('dd6').Value  := EmptyStr;
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

    oRTransact(IBTra);
    Editado := true;

    oAviso(Application.Handle,'Fornecedor atualizado coom sucesso !');
    REC_SHE_DEF.Editing := False;
    ACTExecEvent.Execute;
    Close;
  except
    oRTransact(IBTra,ltRollback);
    Editado := false;
  end;
end;

end.
