unit pcad_tra_edi;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, IBStoredProc, IBEvents, IBDatabase, DB, math, StrUtils,
  IBCustomDataSet, IBQuery, dxCntner, dxEditor, dxEdLib, ExtCtrls, StdCtrls,
  dxExEdtr, dxPageControl, ImgList, RxSpeedBar, ComCtrls,
  dxDBELib, Shellapi, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms,
  cxGraphics, cxControls, dxStatusBar, IBSQL, ActnList, rxAnimate,
  rxGIFCtrl;

type
  Tfrmcad_tra_edi = class(Tfrmpadr3)
    Panel1: TPanel;
    pcmain: TdxPageControl;
    tscon: TdxTabSheet;
    tsEND: TdxTabSheet;
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
    cad_tra: TIBDataSet;
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
    Label37: TLabel;
    eddalt: TdxDateEdit;
    edctra: TdxEdit;
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
    procedure FormShow(Sender: TObject);
    procedure edcpfValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcnpjValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edctraValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure edtel2DblClick(Sender: TObject);
    procedure edtel1DblClick(Sender: TObject);
    procedure edfaxDblClick(Sender: TObject);
    procedure edcelDblClick(Sender: TObject);
    procedure edvdscKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbstavKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCOM_LOG_NOValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure BECOM_CMUNButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure LAPSQCEPClick(Sender: TObject);
    procedure ACTMPostExecute(Sender: TObject);
  private
    { Private declarations }
    RECEndereco: TRECPEdidos;

    procedure NOVO_TRANSPORTADOR;
  public
    { Public declarations }
    procedure _WM_AFTER_ACTIVATE(var Msg: TMessage); message WM_AFTER_ACTIVATE;
  end;

var
  frmcad_tra_edi: Tfrmcad_tra_edi;

implementation

uses uPrincipal, bPrincipal,
     pcad_tra;

{$R *.dfm}

procedure TFrmCAD_TRA_EDI._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
  inherited;
end;

procedure Tfrmcad_tra_edi.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_TRA_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GAdmin := True; { Grant }
  inherited;
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
      SelectSQL.Add('WHERE ID = '''+frmcad_tra.CadastroID.AsString+'''');
      Open;

      edctra.Text := oStrZero(FieldByName('ID').AsInteger,5);
      edfant.Text := FieldByName('TRA_FANT').AsString;
      eddcad.Date := FieldByName('TRA_DCAD').AsDateTime;
      eddalt.Date := RECParametros.SHE_DATA;
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
      edtel1.Text := oRETNumero(FieldByName('TRA_TEL1').AsString);
      edtel2.Text := oRETNumero(FieldByName('TRA_TEL2').AsString);
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
      edcel.Text  := oRETNumero(FieldByName('TRA_CEL').AsString);
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

    EDCOM_TLO_TX.Text := FieldByName('TRA_TLOG').AsString;
    EDCOM_LOG_NO.Text := FieldByName('TRA_LOGR').AsString;
    EDCOM_NRO.Text    := FieldByName('TRA_NUME').AsString;
    BECOM_CEP.Text    := FieldByName('TRA_CEP').AsString;
    EDCOM_XCPL.Text   := FieldByName('TRA_COMP').AsString;
    BECOM_CMUN.Text   := FieldByName('TRA_CMUN').AsString;
    EDCOM_BAI_NO.Text := FieldByName('TRA_BAI').AsString;
    EDCOM_LOC_NO.Text := FieldByName('TRA_CID').AsString;
    EDCOM_UF.Text     := FieldByName('TRA_ESTA').AsString;

    EDCOB_TLO_TX.Text := FieldByName('TRA_TLOC').AsString;
    EDCOB_LOG_NO.Text := FieldByName('TRA_LOGC').AsString;
    EDCOB_NRO.Text    := FieldByName('TRA_NUMC').AsString;
    BECOB_CEP.Text    := FieldByName('TRA_CEPC').AsString;
    EDCOB_XCPL.Text   := FieldByName('TRA_COMC').AsString;
    BECOB_CMUN.Text   := FieldByName('TRA_CMUC').AsString;
    EDCOB_BAI_NO.Text := FieldByName('TRA_BAIC').AsString;
    EDCOB_LOC_NO.Text := FieldByName('TRA_CIDC').AsString;
    EDCOB_UF.Text     := FieldByName('TRA_ESTC').AsString;

    EDENT_TLO_TX.Text := FieldByName('TRA_TLOV').AsString;
    EDENT_LOG_NO.Text := FieldByName('TRA_LOGV').AsString;
    EDENT_NRO.Text    := FieldByName('TRA_NUMV').AsString;
    BEENT_CEP.Text    := FieldByName('TRA_CEPV').AsString;
    EDENT_XCPL.Text   := FieldByName('TRA_COMV').AsString;
    BEENT_CMUN.Text   := FieldByName('TRA_CMUV').AsString;
    EDENT_BAI_NO.Text := FieldByName('TRA_BAIV').AsString;
    EDENT_LOC_NO.Text := FieldByName('TRA_CIDV').AsString;
    EDENT_UF.Text     := FieldByName('TRA_ESTV').AsString;

      edobse.Text := FieldByName('TRA_OBSE').Value;
      edobso.Text := FieldByName('TRA_OBSO').Value;
      cbstav.Text := FieldByName('TRA_STAV').AsString;
    end
  end else
  NOVO_TRANSPORTADOR;
end;

procedure Tfrmcad_tra_edi.FormDestroy(Sender: TObject);
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
  frmcad_tra_edi := nil;
end;

procedure Tfrmcad_tra_edi.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not (ActiveControl is TdxButtonEdit) then
     inherited;
end;

procedure Tfrmcad_tra_edi.NOVO_TRANSPORTADOR;
begin
  pcinfo.ActivePageIndex := 0;
  pcmain.ActivePageIndex := 0;
  
  edctra.Text := '00000';
  edfant.Text := '';
  eddcad.Date := RECParametros.SHE_DATA;
  eddalt.Date := RECParametros.SHE_DATA;
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
  edobse.Text := '';
  edobso.Text := '';
  if pcinfo.ActivePageIndex = 0 then
     edfant.SetFocus;

  with Consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_CAD_TRA,0) FROM RDB$DATABASE');
    Open;

    edctra.Text := oStrZero(fields[0].AsInteger+1,5);
  end;
end;

procedure Tfrmcad_tra_edi.edcpfValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not oCPF(edcpf.Text) then
  raise Exception.Create('CPF Inválido !');

  if edcpf.Text <> '' then
  with Consulta do
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
end;

procedure Tfrmcad_tra_edi.edcnpjValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not oCNPJ(edcnpj.Text) then
  raise Exception.Create('CNPJ Inválido !');

  if edcnpj.Text <> '' then
  with Consulta do
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
end;

procedure Tfrmcad_tra_edi.edctraValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edctra.Text = '' then
     edctra.Text := '00000';

  edctra.Text := oStrZero(strtoint(edctra.Text),5);

  with Consulta do
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

procedure Tfrmcad_tra_edi.edvdscKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    pcMAIN.ActivePageIndex := 0;
    edcont.SetFocus;
  end
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

procedure Tfrmcad_tra_edi.EDCOM_LOG_NOValidate(Sender: TObject;
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
      REC_SHE_DEF.Edited := (not ALockWindowUpdate);

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

procedure Tfrmcad_tra_edi.BECOM_CMUNButtonClick(Sender: TObject;
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

procedure Tfrmcad_tra_edi.LAPSQCEPClick(Sender: TObject);
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

procedure Tfrmcad_tra_edi.ACTMPostExecute(Sender: TObject);
begin
  inherited;
  if Pos(edfant.Text,'O PROPIOO PRÓPRIOPROPRIAPRÓPRIA') > 0 then
  raise exception.Create('Transportadora já cadastrada como padrão do sistema !');

  if Pos(edfant.Text,'SEM FRETE') > 0 then
  raise exception.Create('Transportadora já cadastrada como padrão do sistema !');

  if Pos(edfant.Text,'CLIENTE RETIRA') > 0 then
  raise exception.Create('Transportadora já cadastrada como padrão do sistema !');

  if Pos('CARRETO',edfant.Text) > 0 then
  raise exception.Create('Transportadora já cadastrada como padrão do sistema !');

  if Pos('NOSSO',edfant.Text) > 0 then
  raise exception.Create('Transportadora já cadastrada como padrão do sistema !');

  if (edinsc.Text = '') and (not oEmpty(edcnpj.Text)) then
  begin
    pcinfo.ActivePageIndex := 0;
    edinsc.SetFocus;
    raise exception.Create('Inscrição estadual não informada !');
  end;

  if ((edctra.Text = '')  or (edctra.Text = '00000')) and (frmcad_tra_edi.Tag = 1) then
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

  try
    SPEdicao.StoredProcName := 'SP_CAD_TRA';
    SPEdicao.Prepare;

    case frmcad_tra_edi.Tag of
      0: SPEdicao.Params[0].Value := null;
      1: SPEdicao.Params[0].Value := edctra.Text;
    end;

    { Cadastro }
    SPEdicao.ParamByName('IDEP').Value := RECParametros.EP_ID;
    SPEdicao.ParamByName('IDCA').Value := RECUsuarios.Id;

    SPEdicao.ParamByName('dcad').Value := eddcad.Date;
    SPEdicao.ParamByName('dalt').Value := eddalt.Date;
    SPEdicao.ParamByName('dfun').Value := null;
    SPEdicao.ParamByName('raza').Value := edraza.Text;
    SPEdicao.ParamByName('site').Value := null;
    SPEdicao.ParamByName('cred').Value := null;
    SPEdicao.ParamByName('vdsc').Value := null;
    SPEdicao.ParamByName('fant').Value := edfant.Text;
    SPEdicao.ParamByName('ramo').Value := null;
    SPEdicao.ParamByName('sta').Value  := '0';
    SPEdicao.ParamByName('cont').Value := edcont.Text;
    SPEdicao.ParamByName('fcon').Value := edfcon.Text;
    SPEdicao.ParamByName('ccon').Value := edccon.Text;
    SPEdicao.ParamByName('mail').Value := edmail.Text;
    SPEdicao.ParamByName('fmai').Value := edfmai.Text;
    SPEdicao.ParamByName('cmai').Value := edcmai.Text;
    SPEdicao.ParamByName('ddd').Value  := edddd.Text;
    SPEdicao.ParamByName('dd2').Value  := eddd2.Text;
    SPEdicao.ParamByName('dd3').Value  := eddd3.Text;
    SPEdicao.ParamByName('dd4').Value  := eddd4.Text;
    SPEdicao.ParamByName('dd5').Value  := eddd5.Text;
    SPEdicao.ParamByName('dd6').Value  := eddd6.Text;
    SPEdicao.ParamByName('fddd').Value  := edfddd.Text;
    SPEdicao.ParamByName('fdd2').Value  := edfdd2.Text;
    SPEdicao.ParamByName('fdd3').Value  := edfdd3.Text;
    SPEdicao.ParamByName('fdd4').Value  := edfdd4.Text;
    SPEdicao.ParamByName('fdd5').Value  := edfdd5.Text;
    SPEdicao.ParamByName('fdd6').Value  := edfdd6.Text;
    SPEdicao.ParamByName('cddd').Value  := edcddd.Text;
    SPEdicao.ParamByName('cdd2').Value  := edcdd2.Text;
    SPEdicao.ParamByName('cdd3').Value  := edcdd3.Text;
    SPEdicao.ParamByName('cdd4').Value  := edcdd4.Text;
    SPEdicao.ParamByName('cdd5').Value  := edcdd5.Text;
    SPEdicao.ParamByName('cdd6').Value  := edcdd6.Text;
    SPEdicao.ParamByName('tel1').Value  := edtel1.Text;
    SPEdicao.ParamByName('fte1').Value  := edfte1.Text;
    SPEdicao.ParamByName('cte1').Value  := edcte1.Text;
    SPEdicao.ParamByName('tel2').Value  := edtel2.Text;
    SPEdicao.ParamByName('fte2').Value  := edfte2.Text;
    SPEdicao.ParamByName('cte2').Value  := edcte2.Text;
    SPEdicao.ParamByName('tel3').Value  := edtel3.Text;
    SPEdicao.ParamByName('fte3').Value  := edfte3.Text;
    SPEdicao.ParamByName('cte3').Value  := edcte3.Text;
    SPEdicao.ParamByName('fax').Value   := edfax.Text;
    SPEdicao.ParamByName('ffax').Value  := edffax.Text;
    SPEdicao.ParamByName('cfax').Value  := edcfax.Text;
    SPEdicao.ParamByName('cel').Value   := edcel.Text;
    SPEdicao.ParamByName('fcel').Value  := edfcel.Text;
    SPEdicao.ParamByName('ccel').Value  := edccel.Text;
    SPEdicao.ParamByName('ncel').Value  := edncel.Text;
    SPEdicao.ParamByName('fnce').Value  := edfnce.Text;
    SPEdicao.ParamByName('cnce').Value  := edcnce.Text;
    SPEdicao.ParamByName('neid').Value  := edneid.Text;
    SPEdicao.ParamByName('fnid').Value  := edfnid.Text;
    SPEdicao.ParamByName('cnid').Value  := edcnid.Text;
    SPEdicao.ParamByName('tce1').Value  := cbtce1.Text;
    SPEdicao.ParamByName('tce2').Value  := cbtce2.Text;
    SPEdicao.ParamByName('ftc1').Value  := cbftc1.Text;
    SPEdicao.ParamByName('ftc2').Value  := cbftc2.Text;
    SPEdicao.ParamByName('ctc1').Value  := cbctc1.Text;
    SPEdicao.ParamByName('ctc2').Value  := cbctc2.Text;
    SPEdicao.ParamByName('rg').Value    := edrg.Text;
    SPEdicao.ParamByName('cpf').Value   := edcpf.Text;
    SPEdicao.ParamByName('insc').Value  := edinsc.Text;
    SPEdicao.ParamByName('cnpj').Value  := edcnpj.Text;
    SPEdicao.ParamByName('ccm').Value   := edccm.Text;
    SPEdicao.ParamByName('imun').Value  := edimun.Text;

    SPEdicao.ParamByName('tlog').Value := EDCOM_TLO_TX.Text;
    SPEdicao.ParamByName('logr').Value := EDCOM_LOG_NO.Text;
    SPEdicao.ParamByName('nume').Value := Trim(LeftStr(EDCOM_NRO.Text,10));
    SPEdicao.ParamByName('cep').Value  := BECOM_CEP.Text;
    SPEdicao.ParamByName('comp').Value := Trim(LeftStr(EDCOM_XCPL.Text,40));
    SPEdicao.ParamByName('bai').Value  := EDCOM_BAI_NO.Text;
    SPEdicao.ParamByName('cid').Value  := EDCOM_LOC_NO.Text;
    SPEdicao.ParamByName('cmun').Value := BECOM_CMUN.Text;
    SPEdicao.ParamByName('esta').Value := EDCOM_UF.Text;

    SPEdicao.ParamByName('tloc').Value := EDCOB_TLO_TX.Text;
    SPEdicao.ParamByName('logc').Value := EDCOB_LOG_NO.Text;
    SPEdicao.ParamByName('numc').Value := Trim(LeftStr(EDCOB_NRO.Text,10));
    SPEdicao.ParamByName('cepc').Value := BECOB_CEP.Text;
    SPEdicao.ParamByName('comc').Value := Trim(LeftStr(EDCOB_XCPL.Text,40));
    SPEdicao.ParamByName('baic').Value := EDCOB_BAI_NO.Text;
    SPEdicao.ParamByName('cidc').Value := EDCOB_LOC_NO.Text;
    SPEdicao.ParamByName('cmuc').Value := BECOB_CMUN.Text;
    SPEdicao.ParamByName('estc').Value := EDCOB_UF.Text;

    SPEdicao.ParamByName('tlov').Value := EDENT_TLO_TX.Text;
    SPEdicao.ParamByName('logv').Value := EDENT_LOG_NO.Text;
    SPEdicao.ParamByName('numv').Value := Trim(LeftStr(EDENT_NRO.Text,10));
    SPEdicao.ParamByName('cepv').Value := BEENT_CEP.Text;
    SPEdicao.ParamByName('comv').Value := Trim(LeftStr(EDENT_XCPL.Text,40));
    SPEdicao.ParamByName('baiv').Value := EDENT_BAI_NO.Text;
    SPEdicao.ParamByName('cidv').Value := EDENT_LOC_NO.Text;
    SPEdicao.ParamByName('cmuv').Value := BEENT_CMUN.Text;
    SPEdicao.ParamByName('estv').Value := EDENT_UF.Text;

    SPEdicao.ParamByName('stav').Value  := cbstav.Text;
    SPEdicao.ParamByName('tpve').Value  := 'ATACADO';
    SPEdicao.ParamByName('obso').Value  := edobso.Lines.Text;
    SPEdicao.ParamByName('obse').Value  := edobse.Lines.Text;
    SPEdicao.ParamByName('ctra').Value  := null;
    SPEdicao.ParamByName('dtra').Value  := null;
    SPEdicao.ParamByName('cpag').Value  := null;
    SPEdicao.ParamByName('dpag').Value  := null;
    SPEdicao.ParamByName('reve').Value  := null;
    SPEdicao.ParamByName('ricm').Value  := null;
    SPEdicao.ParamByName('cicm').Value  := null;

    { Dispositivos }
    SPEdicao.ParamByName('IP'  ).Value := RECParametros.IP;
    SPEdicao.ParamByName('HOST').Value := RECParametros.HOST;
    SPEdicao.ExecProc;

    oRTransact(TEdicao);

    REC_SHE_DEF.Edited := true;
    if (frmcad_tra_edi.Tag = 0) then
    NOVO_TRANSPORTADOR else
    Close;
  except
    oRTransact(TEdicao,ltRollback);
    REC_SHE_DEF.Edited := false;
  end;
end;

end.
