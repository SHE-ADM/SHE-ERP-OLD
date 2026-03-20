unit ppar_sis_edi;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, IBStoredProc, IBDatabase, ImgList, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, StdCtrls, jpeg,
  dxCntner, dxEditor, dxEdLib, dxPageControl, dxExEdtr, Dateutils, Buttons,
  ExtDlgs, rxSpeedbar, IBEvents;

type
  Tfrmpar_sis_edi = class(Tfrmpadr3)
    Label47: TLabel;
    cbstpd: TdxImageEdit;
    Label54: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    edfant: TdxEdit;
    edraza: TdxEdit;
    edddd: TdxMaskEdit;
    edfone: TdxMaskEdit;
    edramo: TdxEdit;
    edcnpj: TdxMaskEdit;
    edinsc: TdxEdit;
    Bevel3: TBevel;
    edid: TdxEdit;
    edcnae: TdxEdit;
    Label57: TLabel;
    pcMAIN: TdxPageControl;
    tsGERAL: TdxTabSheet;
    Label17: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label48: TLabel;
    Label59: TLabel;
    Label68: TLabel;
    eddcli: TdxEdit;
    edccli: TdxEdit;
    edcdnf: TdxEdit;
    edseri: TdxEdit;
    edcpag: TdxEdit;
    eddpag: TdxEdit;
    edctra: TdxEdit;
    eddtra: TdxEdit;
    edtvol: TdxEdit;
    tsEND: TdxTabSheet;
    Bevel6: TBevel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    edtlog: TdxEdit;
    edlogr: TdxEdit;
    ednume: TdxEdit;
    edbai: TdxEdit;
    edcid: TdxEdit;
    eduf: TdxEdit;
    edcep: TdxButtonEdit;
    edcomp: TdxEdit;
    edccid: TdxButtonEdit;
    cep_log: TIBQuery;
    cep_logID: TIntegerField;
    cep_logLOG_TIT: TIBStringField;
    cep_logLOG_NO: TIBStringField;
    cep_logLOG_CEP: TIBStringField;
    cep_logBAI_NO: TIBStringField;
    cep_logLOC_NO: TIBStringField;
    cep_logLOG_UF: TIBStringField;
    tsFOTO: TdxTabSheet;
    OpenPictureDialogEdit: TOpenPictureDialog;
    cbstco: TdxImageEdit;
    PaintBox1: TPaintBox;
    Label61: TLabel;
    cbdupl: TdxImageEdit;
    eddna2: TdxEdit;
    edcna2: TdxEdit;
    Label51: TLabel;
    edcna1: TdxEdit;
    Label50: TLabel;
    eddna1: TdxEdit;
    Label3: TLabel;
    edfmai: TdxEdit;
    tsOUT: TdxTabSheet;
    Label4: TLabel;
    eddola: TdxEdit;
    Bevel1: TBevel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    cbgrad: TdxImageEdit;
    cbtcli: TdxImageEdit;
    cbtpro: TdxImageEdit;
    Label10: TLabel;
    edcicm: TdxEdit;
    edcuf: TdxEdit;
    Label62: TLabel;
    cbfret: TdxImageEdit;
    Bevel2: TBevel;
    Bevel4: TBevel;
    gbdentro: TGroupBox;
    cbccrt: TdxImageEdit;
    Label1: TLabel;
    pcfoto: TdxPageControl;
    tsfoto1: TdxTabSheet;
    tsfoto2: TdxTabSheet;
    imag1: TImage;
    sb_imag1: TSpeedButton;
    imag2: TImage;
    sb_imag2: TSpeedButton;
    par_sis: TIBQuery;
    par_sisPAR_FOTO: TBlobField;
    par_sisPAR_FOT2: TBlobField;
    cbtipo: TdxImageEdit;
    Label13: TLabel;
    Label15: TLabel;
    cbpgrd: TdxImageEdit;
    Label2: TLabel;
    cbnvia: TdxImageEdit;
    Label11: TLabel;
    cbcaix: TdxImageEdit;
    Label16: TLabel;
    edcfor: TdxEdit;
    eddfor: TdxEdit;
    Label18: TLabel;
    edcrep: TdxEdit;
    eddrep: TdxEdit;
    tsfoto3: TdxTabSheet;
    imag3: TImage;
    sb_imag3: TSpeedButton;
    par_sisPAR_FOT3: TBlobField;
    Label19: TLabel;
    edmail: TdxEdit;
    edsite: TdxEdit;
    Label20: TLabel;
    edlogo: TdxEdit;
    Label21: TLabel;
    cbcanh: TdxImageEdit;
    Label22: TLabel;
    cbcend: TdxImageEdit;
    Label30: TLabel;
    cbspro: TdxImageEdit;
    Label31: TLabel;
    cbricm: TdxImageEdit;
    Label32: TLabel;
    cbpeca: TdxImageEdit;
    tsFIN: TdxTabSheet;
    Bevel5: TBevel;
    Label33: TLabel;
    edlimc: TdxEdit;
    edlimb: TdxEdit;
    Label34: TLabel;
    Label35: TLabel;
    cblime: TdxImageEdit;
    Label38: TLabel;
    cbeseg: TdxImageEdit;
    Label39: TLabel;
    cbDIOR: TdxImageEdit;
    Label44: TLabel;
    cbpsep: TdxImageEdit;
    Label49: TLabel;
    cbrfor: TdxImageEdit;
    dxPageControl2: TdxPageControl;
    dxTabSheet4: TdxTabSheet;
    dxTabSheet5: TdxTabSheet;
    Label12: TLabel;
    edcnsd: TdxEdit;
    clcstd: TLabel;
    cbcstd: TdxImageEdit;
    Bevel7: TBevel;
    edcnsf: TdxEdit;
    Label14: TLabel;
    Bevel8: TBevel;
    cbcstf: TdxImageEdit;
    clcstf: TLabel;
    Label52: TLabel;
    cbIEST: TdxImageEdit;
    Label53: TLabel;
    edBPAG: TdxEdit;
    Label55: TLabel;
    cbCSEQ: TdxImageEdit;
    tsOBS: TdxTabSheet;
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    edonfe: TdxMemo;
    dxTabSheet2: TdxTabSheet;
    edocrt: TdxMemo;
    dxTabSheet3: TdxTabSheet;
    edoped: TdxMemo;
    Label56: TLabel;
    edpvar: TdxEdit;
    Label58: TLabel;
    edprep: TdxEdit;
    Label60: TLabel;
    cbdsep: TdxEdit;
    Label63: TLabel;
    edBCHQ: TdxEdit;
    Label64: TLabel;
    edMCRD: TdxEdit;
    Label65: TLabel;
    edPCRD: TdxEdit;
    Label66: TLabel;
    cbprel: TdxImageEdit;
    Label67: TLabel;
    cbrend: TdxImageEdit;
    Label69: TLabel;
    cbdcrd: TdxImageEdit;
    Label70: TLabel;
    cbDMAP: TdxImageEdit;
    dxTabSheet6: TdxTabSheet;
    imag4: TImage;
    sb_imag4: TSpeedButton;
    par_sisPAR_CBAR: TBlobField;
    procedure siSAVClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edcepValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcepButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edccidValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edccidButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure sb_imag1Click(Sender: TObject);
    procedure tsFOTOShow(Sender: TObject);
    procedure eddolaValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcicmValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edfantExit(Sender: TObject);
    procedure edcnpjExit(Sender: TObject);
    procedure edcna1Exit(Sender: TObject);
    procedure edcna2Exit(Sender: TObject);
    procedure edccliExit(Sender: TObject);
    procedure edctraExit(Sender: TObject);
    procedure edcpagExit(Sender: TObject);
    procedure edcnsdExit(Sender: TObject);
    procedure edcnsfExit(Sender: TObject);
    procedure cbccrtChange(Sender: TObject);
    procedure sb_imag2Click(Sender: TObject);
    procedure edcforExit(Sender: TObject);
    procedure edcrepExit(Sender: TObject);
    procedure sb_imag3Click(Sender: TObject);
    procedure edpvarValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edprepValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edlimcValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edlimbValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edBPAGValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edBCHQValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edMCRDValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edPCRDValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure sb_imag4Click(Sender: TObject);
  private
    { Private declarations }
    procedure DEFINE_CST;
    procedure NOVO_PARAMETRO;
    procedure carregaFOTO(tam: Integer; valor: TBlobField; tab: TIbQuery);
    procedure carregaFOT2(tam: Integer; valor: TBlobField; tab: TIbQuery);
    procedure carregaFOT3(tam: Integer; valor: TBlobField; tab: TIbQuery);    
    procedure carregaFOT4(tam: Integer; valor: TBlobField; tab: TIbQuery);
  public
    { Public declarations }
    editado: Boolean;
  end;

var
  frmpar_sis_edi: Tfrmpar_sis_edi;
  tcli,tpro     : string;
  
implementation

{$R *.dfm}

uses ppar_sis, unLocaliza_Cep, ptab_mun, uPrincipal;

procedure Tfrmpar_sis_edi.DEFINE_CST;
begin
  edocrt.Lines.Clear;
  
  cbcstd.Values.Clear;
  cbcstd.Descriptions.Clear;
  cbcstf.Values.Clear;
  cbcstf.Descriptions.Clear;

  if cbccrt.Text = '3' then
  begin
    clcstd.Caption := 'C.S.T.';
    clcstd.Update;

    cbcstd.Values.Add('00');
    cbcstd.Descriptions.Add('00 - Tributada Integralmente');
    cbcstd.Values.Add('10');
    cbcstd.Descriptions.Add('10 - Tributada e com cobrança do I.C.M.S. por Substituição Tributária');
    cbcstd.Values.Add('20');
    cbcstd.Descriptions.Add('20 - Com Redução de Base de Cálculo');
    cbcstd.Values.Add('30');
    cbcstd.Descriptions.Add('30 - Isenta ou não Tributada e com Cobrança do I.C.M.S. por Substituição Tributária');
    cbcstd.Values.Add('40');
    cbcstd.Descriptions.Add('40 - Isenta');
    cbcstd.Values.Add('41');
    cbcstd.Descriptions.Add('41 - Não Tributada');
    cbcstd.Values.Add('50');
    cbcstd.Descriptions.Add('50 - Suspensão');
    cbcstd.Values.Add('51');
    cbcstd.Descriptions.Add('51 - Diferimento');
    cbcstd.Values.Add('60');
    cbcstd.Descriptions.Add('60 - I.C.M.S. Cobrado Anteriormente por Substituição Tributária');
    cbcstd.Values.Add('70');
    cbcstd.Descriptions.Add('70 - Com Redução de Base de Cálculo e Cobrança do I.C.M.S. por Substituição Tributária');
    cbcstd.Values.Add('90');
    cbcstd.Descriptions.Add('90 - Outras');

    clcstf.Caption := 'C.S.T.';
    clcstf.Update;

    cbcstf.Values.Add('00');
    cbcstf.Descriptions.Add('00 - Tributada Integralmente');
    cbcstf.Values.Add('10');
    cbcstf.Descriptions.Add('10 - Tributada e com cobrança do I.C.M.S. por Substituição Tributária');
    cbcstf.Values.Add('20');
    cbcstf.Descriptions.Add('20 - Com Redução de Base de Cálculo');
    cbcstf.Values.Add('30');
    cbcstf.Descriptions.Add('30 - Isenta ou não Tributada e com Cobrança do I.C.M.S. por Substituição Tributária');
    cbcstf.Values.Add('40');
    cbcstf.Descriptions.Add('40 - Isenta');
    cbcstf.Values.Add('41');
    cbcstf.Descriptions.Add('41 - Não Tributada');
    cbcstf.Values.Add('50');
    cbcstf.Descriptions.Add('50 - Suspensão');
    cbcstf.Values.Add('51');
    cbcstf.Descriptions.Add('51 - Diferimento');
    cbcstf.Values.Add('60');
    cbcstf.Descriptions.Add('60 - I.C.M.S. Cobrado Anteriormente por Substituição Tributária');
    cbcstf.Values.Add('70');
    cbcstf.Descriptions.Add('70 - Com Redução de Base de Cálculo e Cobrança do I.C.M.S. por Substituição Tributária');
    cbcstf.Values.Add('90');
    cbcstf.Descriptions.Add('90 - Outras');
  end
  else
  begin
    edocrt.Lines.Append('I  - DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL.');
    edocrt.Lines.Append('II - NAO GERA DIREITO A CREDITO FISCAL DE IPI.');

    clcstd.Caption := 'C.S.O.S.N.';
    clcstd.Update;

    cbcstd.Values.Add('101');
    cbcstd.Descriptions.Add('101 – Tributada pelo Simples Nacional com Permissão de Crédito');
    cbcstd.Values.Add('102');
    cbcstd.Descriptions.Add('102 – Tributada pelo Simples Nacional sem Permissão de Crédito');
    cbcstd.Values.Add('103');
    cbcstd.Descriptions.Add('103 – Isenção do I.C.M.S. no Simples Nacional para Faixa de Receita Bruta');
    cbcstd.Values.Add('201');
    cbcstd.Descriptions.Add('201 – Tributada pelo Simples Nacional com Permissão de Crédito e com Cobrança do I.C.M.S. por sSbstituição Tributária');
    cbcstd.Values.Add('202');
    cbcstd.Descriptions.Add('202 – Tributada pelo Simples Nacional sem Permissão de Crédito e com Cobrança do I.C.M.S. por Substituição Tributária');
    cbcstd.Values.Add('203');
    cbcstd.Descriptions.Add('203 – Isenção do I.C.M.S. no Simples Nacional para Faixa de Receita Bruta e com Cobrança do I.C.M.S. por Substituição Tributária');
    cbcstd.Values.Add('300');
    cbcstd.Descriptions.Add('300 – Imune');
    cbcstd.Values.Add('400');
    cbcstd.Descriptions.Add('400 – Não Tributada pelo Simples Nacional');
    cbcstd.Values.Add('500');
    cbcstd.Descriptions.Add('500 – I.C.M.S. Cobrado Anteriormente por Substituição Tributária (Substituído) ou por Antecipação');
    cbcstd.Values.Add('900');
    cbcstd.Descriptions.Add('900 – Outros');

    clcstf.Caption := 'C.S.O.S.N.';
    clcstf.Update;

    cbcstf.Values.Add('101');
    cbcstf.Descriptions.Add('101 – Tributada pelo Simples Nacional com Permissão de Crédito');
    cbcstf.Values.Add('102');
    cbcstf.Descriptions.Add('102 – Tributada pelo Simples Nacional sem Permissão de Crédito');
    cbcstf.Values.Add('103');
    cbcstf.Descriptions.Add('103 – Isenção do I.C.M.S. no Simples Nacional para Faixa de Receita Bruta');
    cbcstf.Values.Add('201');
    cbcstf.Descriptions.Add('201 – Tributada pelo Simples Nacional com Permissão de Crédito e com Cobrança do I.C.M.S. por sSbstituição Tributária');
    cbcstf.Values.Add('202');
    cbcstf.Descriptions.Add('202 – Tributada pelo Simples Nacional sem Permissão de Crédito e com Cobrança do I.C.M.S. por Substituição Tributária');
    cbcstf.Values.Add('203');
    cbcstf.Descriptions.Add('203 – Isenção do I.C.M.S. no Simples Nacional para Faixa de Receita Bruta e com Cobrança do I.C.M.S. por Substituição Tributária');
    cbcstf.Values.Add('300');
    cbcstf.Descriptions.Add('300 – Imune');
    cbcstf.Values.Add('400');
    cbcstf.Descriptions.Add('400 – Não Tributada pelo Simples Nacional');
    cbcstf.Values.Add('500');
    cbcstf.Descriptions.Add('500 – I.C.M.S. Cobrado Anteriormente por Substituição Tributária (Substituído) ou por Antecipação');
    cbcstf.Values.Add('900');
    cbcstf.Descriptions.Add('900 – Outros');
  end    
end;

procedure Tfrmpar_sis_edi.carregaFOTO(tam: Integer; valor: TBlobField; tab: TIbQuery);
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam <> 0 then
  begin
    BlobStream := tab.CreateBlobStream(valor,bmRead);
    JPEGImage  := TJPEGImage.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      imag1.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
    imag1.Picture := nil;
end;

procedure Tfrmpar_sis_edi.carregaFOT2(tam: Integer; valor: TBlobField; tab: TIbQuery);
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam <> 0 then
  begin
    BlobStream := tab.CreateBlobStream(valor,bmRead);
    JPEGImage  := TJPEGImage.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      imag2.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
    imag2.Picture := nil;
end;

procedure Tfrmpar_sis_edi.carregaFOT3(tam: Integer; valor: TBlobField; tab: TIbQuery);
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam <> 0 then
  begin
    BlobStream := tab.CreateBlobStream(valor,bmRead);
    JPEGImage  := TJPEGImage.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      imag3.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
    imag3.Picture := nil;
end;

procedure Tfrmpar_sis_edi.carregaFOT4(tam: Integer; valor: TBlobField; tab: TIbQuery);
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam <> 0 then
  begin
    BlobStream := tab.CreateBlobStream(valor,bmRead);
    JPEGImage  := TJPEGImage.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      imag4.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
    imag4.Picture := nil;
end;

procedure Tfrmpar_sis_edi.siSAVClick(Sender: TObject);
var
  foto1,foto2,foto3,foto4: TStream;
begin
  foto1 := TMemoryStream.Create;
  if imag1.Picture.Graphic <> nil then
     imag1.Picture.Graphic.SaveToStream(foto1);

  foto2 := TMemoryStream.Create;
  if imag2.Picture.Graphic <> nil then
     imag2.Picture.Graphic.SaveToStream(foto2);

  foto3 := TMemoryStream.Create;
  if imag3.Picture.Graphic <> nil then
     imag3.Picture.Graphic.SaveToStream(foto3);

  foto4 := TMemoryStream.Create;
  if imag4.Picture.Graphic <> nil then
     imag4.Picture.Graphic.SaveToStream(foto4);

  try
    ibSP.StoredProcName := 'SP_PAR_SIS';
    ibSP.Prepare;
    case frmpar_sis_edi.Tag of
      0: ibSP.Params[0].Value := null;
      1: ibSP.Params[0].Value := edid.Text;
    end;

    ibSP.ParamByName('STA').Value  := '0';
    ibSP.ParamByName('CDNF').Value := edcdnf.Text;
    ibSP.ParamByName('SERI').Value := edseri.Text;
    ibSP.ParamByName('CCRT').Value := cbccrt.Text;
    ibSP.ParamByName('CNA1').Value := edCNA1.Text;
    ibSP.ParamByName('CNA2').Value := edCNA2.Text;
    ibSP.ParamByName('CNSD').Value := edCNSD.Text;
    ibSP.ParamByName('CSTD').Value := cbCSTD.Text;
    ibSP.ParamByName('CNSF').Value := edCNSF.Text;
    ibSP.ParamByName('CSTF').Value := cbCSTF.Text;
    ibSP.ParamByName('STPD').Value := cbSTPD.Text;
    ibSP.ParamByName('STCO').Value := cbSTCO.Text;
    ibSP.ParamByName('CCLI').Value := edCCLI.Text;
    ibSP.ParamByName('FANT').Value := edFANT.Text;
    ibSP.ParamByName('RAZA').Value := edRAZA.Text;
    ibSP.ParamByName('RAMO').Value := edRAMO.Text;
    ibSP.ParamByName('TIPO').Value := cbtipo.Text;
    ibSP.ParamByName('PECA').Value := cbpeca.Text;
    ibSP.ParamByName('ESEG').Value := cbeseg.Text;
    ibSP.ParamByName('LIMC').Value := edLIMC.Text;
    ibSP.ParamByName('LIMB').Value := edLIMB.Text;
    ibSP.ParamByName('BPAG').Value := edBPAG.Text;
    ibSP.ParamByName('BCHQ').Value := edBCHQ.Text;
    ibSP.ParamByName('MCRD').Value := oTextToValor(edMCRD.Text);
    ibSP.ParamByName('PCRD').Value := oTextToValor(edPCRD.Text);
    ibSP.ParamByName('CNAE').Value := edCNAE.Text;
    ibSP.ParamByName('CNPJ').Value := edCNPJ.Text;
    ibSP.ParamByName('INSC').Value := edINSC.Text;
    ibSP.ParamByName('DDD' ).Value := edDDD.Text;
    ibSP.ParamByName('FONE').Value := edFONE.Text;
    ibSP.ParamByName('TLOG').Value := edTLOG.Text;
    ibSP.ParamByName('LOGR').Value := edLOGR.Text;
    ibSP.ParamByName('NUME').Value := edNUME.Text;
    ibSP.ParamByName('COMP').Value := edCOMP.Text;
    ibSP.ParamByName('CEP' ).Value := edCEP.Text;
    ibSP.ParamByName('BAI' ).Value := edBAI.Text;
    ibSP.ParamByName('CCID').Value := edCCID.Text;
    ibSP.ParamByName('CID' ).Value := edCID.Text;
    ibSP.ParamByName('CUF' ).Value := copy(edCCID.Text,1,2);
    ibSP.ParamByName('UF'  ).Value := edUF.Text;
    ibSP.ParamByName('FMAI').Value := edFMAI.Text;
    ibSP.ParamByName('DOLA').Value := edDOLA.Text;
    ibSP.ParamByName('CICM').Value := edCICM.Text;
    ibSP.ParamByName('PVAR').Value := edPVAR.Text;
    ibSP.ParamByName('PREP').Value := edPREP.Text;
    ibSP.ParamByName('PREL').Value := cbPREL.Text;
    ibSP.ParamByName('RICM').Value := cbRICM.Text;
    ibSP.ParamByName('RFOR').Value := cbRFOR.Text;
    ibSP.ParamByName('LIME').Value := cbLIME.Text;
    ibSP.ParamByName('DUPL').Value := cbDUPL.Text;
    ibSP.ParamByName('CAIX').Value := cbCAIX.Text;
    ibSP.ParamByName('FRET').Value := cbFRET.Text;
    ibSP.ParamByName('TCLI').Value := cbTCLI.Text;
    ibSP.ParamByName('TPRO').Value := cbTPRO.Text;
    ibSP.ParamByName('SPRO').Value := cbSPRO.Text;
    ibSP.ParamByName('DIOR').Value := cbDIOR.Text;
    ibSP.ParamByName('IEST').Value := cbIEST.Text;
    ibSP.ParamByName('DSEP').Value := cbDSEP.Text;
    ibSP.ParamByName('CSEQ').Value := cbCSEQ.Text;
    ibSP.ParamByName('GRAD').Value := cbGRAD.Text;
    ibSP.ParamByName('PGRD').Value := cbPGRD.Text;
    ibSP.ParamByName('NVIA').Value := cbNVIA.Text;
    ibSP.ParamByName('CANH').Value := cbcanh.Text;
    ibSP.ParamByName('CEND').Value := cbcend.Text;
    ibSP.ParamByName('REND').Value := cbrend.Text;
    ibSP.ParamByName('DCRD').Value := cbdcrd.Text;
    ibSP.ParamByName('PSEP').Value := cbpsep.Text;
    ibSP.ParamByName('CPAG').Value := edCPAG.Text;
    ibSP.ParamByName('CTRA').Value := edCTRA.Text;
    ibSP.ParamByName('CFOR').Value := edCFOR.Text;
    ibSP.ParamByName('CREP').Value := edCREP.Text;
    ibSP.ParamByName('TVOL').Value := edTVOL.Text;
    ibSP.ParamByName('DMAP').Value := cbDMAP.Text;
    ibSP.ParamByName('OCRT').Value := edOCRT.Lines.Text;
    ibSP.ParamByName('ONFE').Value := edONFE.Lines.Text;
    ibSP.ParamByName('OPED').Value := edOPED.Lines.Text;
    ibSP.ParamByName('MAIL').Value := edmail.Text;
    ibSP.ParamByName('SITE').Value := edsite.Text;
    ibSP.ParamByName('FOTO').LoadFromStream(foto1,ftBlob);
    ibSP.ParamByName('FOT2').LoadFromStream(foto2,ftBlob);
    ibSP.ParamByName('FOT3').LoadFromStream(foto3,ftBlob);
    ibSP.ParamByName('CBAR').LoadFromStream(foto4,ftBlob);
    ibSP.ExecProc;

    IBTra.Commit;
    IBTra.StartTransaction;

    frmprincipal.parametros.Close;
    frmprincipal.parametros.Open;
    editado := true;
    Close;
  except
    editado := false;
    IBTRA.Rollback;
    IBTra.StartTransaction;
  end;
end;

procedure Tfrmpar_sis_edi.FormShow(Sender: TObject);
begin
  inherited;
  if tag = 1 then
  with frmpar_sis.cadastro do
  begin
    edid.Text   := FieldByName('ID').Value;
    edcdnf.Text := FieldByName('PAR_CDNF').AsString;
    edseri.Text := FieldByName('PAR_SERI').AsString;
    cbccrt.Text := FieldByName('PAR_CCRT').AsString;
    edCNA1.Text := FieldByName('PAR_CNA1').AsString;
    edCNA2.Text := FieldByName('PAR_CNA2').AsString;
    edCNSD.Text := FieldByName('PAR_CNSD').AsString;
    cbCSTD.Text := FieldByName('PAR_CSTD').AsString;
    edCNSF.Text := FieldByName('PAR_CNSF').AsString;
    cbCSTF.Text := FieldByName('PAR_CSTF').AsString;
    cbSTPD.Text := FieldByName('PAR_STPD').AsString;
    cbSTCO.Text := FieldByName('PAR_STCO').AsString;
    edCCLI.Text := FieldByName('PAR_CCLI').AsString;
    edFANT.Text := FieldByName('PAR_FANT').AsString;
    edRAZA.Text := FieldByName('PAR_RAZA').AsString;
    edRAMO.Text := FieldByName('PAR_RAMO').AsString;
    cbTIPO.Text := FieldByName('PAR_TIPO').AsString;
    cbPECA.Text := FieldByName('PAR_PECA').AsString;
    cbESEG.Text := FieldByName('PAR_ESEG').AsString;
    edLIMC.Text := FieldByName('PAR_LIMC').AsString;
    edLIMB.Text := FieldByName('PAR_LIMB').AsString;
    edBPAG.Text := FieldByName('PAR_BPAG').AsString;
    edBCHQ.Text := FieldByName('PAR_BCHQ').AsString;
    edMCRD.Text := formatFloat('#,0.00',FieldByName('PAR_MCRD').AsFloat);
    edPCRD.Text := formatFloat('#,0.00',FieldByName('PAR_PCRD').AsFloat);
    edCNAE.Text := FieldByName('PAR_CNAE').AsString;
    edCNPJ.Text := FieldByName('PAR_CNPJ').AsString;
    edINSC.Text := FieldByName('PAR_INSC').AsString;
    edDDD.Text  := FieldByName('PAR_DDD').AsString;
    edFONE.Text := FieldByName('PAR_FONE').AsString;
    edTLOG.Text := FieldByName('PAR_TLOG').AsString;
    edLOGR.Text := FieldByName('PAR_LOGR').AsString;
    edNUME.Text := FieldByName('PAR_NUME').AsString;
    edCOMP.Text := FieldByName('PAR_COMP').AsString;
    edCEP.Text  := FieldByName('PAR_CEP').AsString;
    edBAI.Text  := FieldByName('PAR_BAI').AsString;
    edCID.Text  := FieldByName('PAR_CID').AsString;
    edCCID.Text := FieldByName('PAR_CCID').AsString;
    edUF.Text   := FieldByName('PAR_UF').AsString;
    edFMAI.Text := FieldByName('PAR_FMAI').AsString;
    edDOLA.Text := FieldByName('PAR_DOLA').AsString;
    cbDUPL.Text := FieldByName('PAR_DUPL').AsString;
    cbCAIX.Text := FieldByName('PAR_CAIX').AsString;
    cbFRET.Text := FieldByName('PAR_FRET').AsString;
    cbTCLI.Text := FieldByName('PAR_TCLI').AsString;
    cbTPRO.Text := FieldByName('PAR_TPRO').AsString;
    cbSPRO.Text := FieldByName('PAR_SPRO').AsString;
    cbDIOR.Text := FieldByName('PAR_DIOR').AsString;
    cbIEST.Text := FieldByName('PAR_IEST').AsString;
    cbDSEP.Text := FieldByName('PAR_DSEP').AsString;
    cbCSEQ.Text := FieldByName('PAR_CSEQ').AsString;
    cbGRAD.Text := FieldByName('PAR_GRAD').AsString;
    cbPGRD.Text := FieldByName('PAR_PGRD').AsString;    
    cbNVIA.Text := FieldByName('PAR_NVIA').AsString;
    cbCANH.Text := FieldByName('PAR_CANH').AsString;
    cbCEND.Text := FieldByName('PAR_CEND').AsString;
    cbREND.Text := FieldByName('PAR_REND').AsString;
    cbDCRD.Text := FieldByName('PAR_DCRD').AsString;
    cbPSEP.Text := FieldByName('PAR_PSEP').AsString;
    edCPAG.Text := FieldByName('PAR_CPAG').AsString;
    edCTRA.Text := FieldByName('PAR_CTRA').AsString;
    edCFOR.Text := FieldByName('PAR_CFOR').AsString;
    edCREP.Text := FieldByName('PAR_CREP').AsString;
    edTVOL.Text := FieldByName('PAR_TVOL').AsString;
    cbDMAP.Text := FieldByName('PAR_DMAP').AsString;
    edmail.Text := FieldByName('PAR_MAIL').AsString;
    edsite.Text := FieldByName('PAR_SITE').AsString;
    edcicm.Text := formatfloat('0.00',FieldByName('PAR_CICM').AsFloat);
    edpvar.Text := formatfloat('0.00',FieldByName('PAR_PVAR').AsFloat);
    edprep.Text := formatfloat('0.00',FieldByName('PAR_PREP').AsFloat);
    cbRICM.Text := FieldByName('PAR_RICM').AsString;
    cbPREL.Text := FieldByName('PAR_PREL').AsString;
    cbRFOR.Text := FieldByName('PAR_RFOR').AsString;
    cbLIME.Text := FieldByName('PAR_LIME').AsString;
    edONFE.Text := FieldByName('PAR_ONFE').AsString;
    edOCRT.Text := FieldByName('PAR_OCRT').AsString;
    edOPED.Text := FieldByName('PAR_OPED').AsString;

    carregaFOTO(frmpar_sis.cadastroPAR_FOTO.BlobSize,frmpar_sis.cadastroPAR_FOTO,frmpar_sis.cadastro);
    carregaFOT2(frmpar_sis.cadastroPAR_FOT2.BlobSize,frmpar_sis.cadastroPAR_FOT2,frmpar_sis.cadastro);
    carregaFOT3(frmpar_sis.cadastroPAR_FOT3.BlobSize,frmpar_sis.cadastroPAR_FOT3,frmpar_sis.cadastro);
    carregaFOT4(frmpar_sis.cadastroPAR_CBAR.BlobSize,frmpar_sis.cadastroPAR_CBAR,frmpar_sis.cadastro);
  end
  else
     NOVO_PARAMETRO;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT NAT_DNAT FROM TAB_NAT');
    SQL.Add('WHERE  NAT_CNAT = '''+edcna1.Text+'''');
    Open;
    eddna1.Text := fields[0].AsString;

    SQL.Clear;
    SQL.Add('SELECT NAT_DNAT FROM TAB_NAT');
    SQL.Add('WHERE  NAT_CNAT = '''+edcna2.Text+'''');
    Open;
    eddna2.Text := fields[0].AsString;

    SQL.Clear;
    SQL.Add('SELECT CLI_RAZA FROM CAD_CLI');
    SQL.Add('WHERE  ID = '''+edccli.Text+'''');
    Open;
    eddcli.Text := fields[0].AsString;

    SQL.Clear;
    SQL.Add('SELECT TRA_RAZA FROM CAD_TRA');
    SQL.Add('WHERE  ID = '''+edctra.Text+'''');
    Open;
    eddtra.Text := fields[0].AsString;

    SQL.Clear;
    SQL.Add('SELECT FOR_RAZA FROM CAD_FOR');
    SQL.Add('WHERE  ID = '''+edcfor.Text+'''');
    Open;
    eddfor.Text := fields[0].AsString;

    SQL.Clear;
    SQL.Add('SELECT REP_RAZA FROM CAD_REP');
    SQL.Add('WHERE  ID = '''+edcrep.Text+'''');
    Open;
    eddrep.Text := fields[0].AsString;

    SQL.Clear;
    SQL.Add('SELECT PAG_DPAG FROM TAB_PAG');
    SQL.Add('WHERE  ID = '''+edcpag.Text+'''');
    Open;
    eddpag.Text := fields[0].AsString;
  end;
  edfant.SetFocus;
end;

procedure Tfrmpar_sis_edi.NOVO_PARAMETRO;
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_PAR_SIS,0) FROM RDB$DATABASE');
    Open;
    edid.Text := oStrZero(fields[0].AsInteger+1,5);
  end;

  with par_sis do
  begin
    SQL.Clear;
    SQL.Add('SELECT PAR_FOTO,PAR_FOT2,PAR_FOT3,PAR_CBAR FROM PAR_SIS');
    SQL.Add('WHERE  ID = 1');
    Open;
    carregaFOTO(par_sisPAR_FOTO.BlobSize,par_sisPAR_FOTO,par_sis);
    carregaFOT2(par_sisPAR_FOT2.BlobSize,par_sisPAR_FOT2,par_sis);
    carregaFOT3(par_sisPAR_FOT3.BlobSize,par_sisPAR_FOT3,par_sis);
    carregaFOT3(par_sisPAR_CBAR.BlobSize,par_sisPAR_CBAR,par_sis);
  end;

  edOPED.Text := '';
  edONFE.Text := '';
  edOCRT.Text := '';
  edcdnf.Text := '000001';
  edseri.Text := '1';
  cbccrt.Text := '3';
  edCNA1.Text := '5101';
  edCNA2.Text := '6101';
  edCNSD.Text := '';
  cbCSTD.Text := '';
  edCNSF.Text := '';
  cbCSTF.Text := '';
  cbSTPD.Text := 'VENDA DIRETA';
  cbSTCO.Text := 'DINHEIRO';
  edCCLI.Text := '00001';
  edFANT.Text := '';
  edRAZA.Text := '';
  edRAMO.Text := '';
  cbTIPO.Text := '';
  edCNAE.Text := '';
  edCNPJ.Text := '';
  edINSC.Text := '';
  edDDD.Text  := '11';
  edFONE.Text := '';
  edTLOG.Text := '';
  edLOGR.Text := '';
  edNUME.Text := '';
  edCOMP.Text := '';
  edCEP.Text  := '';
  edBAI.Text  := '';
  edCID.Text  := '';
  edUF.Text   := '';
  edFMAI.Text := '';
  edDOLA.Text := '0,00';
  cbDUPL.Text := '0';
  cbCAIX.Text := '1';
  cbFRET.Text := '0';
  cbTCLI.Text := '0';
  cbTPRO.Text := '0';
  cbSPRO.Text := '0';
  cbDIOR.Text := '0';
  cbIEST.Text := '0';
  cbDSEP.Text := '0';
  cbCSEQ.Text := '0';
  cbGRAD.Text := '0';
  cbPGRD.Text := '0';
  cbNVIA.Text := '1';
  cbCANH.Text := '1';
  cbCANH.Text := '0';
  cbRICM.Text := '0';
  cbRFOR.Text := '0';
  cbLIME.Text := '0';
  cbCEND.Text := '0';
  cbREND.Text := '0';
  cbDCRD.Text := '0';
  cbPSEP.Text := '0';
  edCPAG.Text := '1';
  edCTRA.Text := '1';
  edCFOR.Text := '1';
  edCREP.Text := '1';
  cbPECA.Text := '0';
  cbESEG.Text := '0';
  edLIMC.Text := '0';
  edLIMB.Text := '0';
  edBPAG.Text := '0';
  edBCHQ.Text := '0';
  edMCRD.Text := '0,00';
  edPCRD.Text := '0,00';
  edTVOL.Text := 'VOLUME';
  cbDMAP.Text := '';
  edmail.Text := '';
  edsite.Text := '';
end;

procedure Tfrmpar_sis_edi.edcepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
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
    edbai.Text  := cep_logBAI_NO.AsString;
    edcid.Text  := cep_logLOC_NO.AsString;
    eduf.Text   := cep_logLOG_UF.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT MUN_CMUN FROM TAB_MUN');
      SQL.Add('WHERE  MUN_DMUN = '''+edcid.Text+'''');
      Open;
      edccid.Text := fields[0].AsString;
      edcuf.Text  := copy(edccid.Text,1,2);
    end;
  end;
  ednume.SetFocus;
end;

procedure Tfrmpar_sis_edi.edcepButtonClick(Sender: TObject;
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

      edtlog.Text := frmLocaliza_Cep.caTipo.Caption;
      edlogr.Text := frmLocaliza_Cep.caLogradouro.Caption;
      edbai.Text  := frmLocaliza_Cep.caBairro.Caption;
      eduf.Text   := frmLocaliza_Cep.caUf.Caption;
      edcid.Text  := frmLocaliza_Cep.caCidade.Caption;
      edcep.Text  := cCEP;

      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT MUN_CMUN FROM TAB_MUN');
        SQL.Add('WHERE  MUN_DMUN = '''+edcid.Text+'''');
        Open;
        edccid.Text := fields[0].AsString;
        edcuf.Text  := copy(edccid.Text,1,2);
      end;
    end;
    freeAndNil(frmLocaliza_cep);
    frmLocaliza_cep.Free;
  end;
end;

procedure Tfrmpar_sis_edi.edccidValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_MUN');
    SQL.Add('WHERE  MUN_CMUN = '''+edccid.Text+'''');
    Open;

    if fields[0].IsNull then
       raise exception.Create('Código Municipal Inválido !');

    edcuf.Text := copy(edccid.Text,1,2);   
  end;
end;

procedure Tfrmpar_sis_edi.edccidButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmtab_mun := TFrmtab_mun.Create(self);
  try
    frmtab_mun.FormStyle := fsNormal;
    frmtab_mun.Visible   := false;
    frmtab_mun.Position  := poDesktopCenter;
    frmtab_mun.ShowModal;
  finally
    if frmtab_mun.editado then
    begin
      edccid.Text := frmtab_mun.cadastroMUN_CMUN.AsString;
      edcuf.Text  := copy(edccid.Text,1,2);
    end;  
    freeAndnil(frmtab_mun);  
    frmtab_mun.Free;
  end;
end;

procedure Tfrmpar_sis_edi.FormCreate(Sender: TObject);
begin
  pcmain.ActivePageIndex := 0;
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   VEN_TIPO FROM TAB_PED');
    SQL.Add('WHERE    VEN_STA  = ''1''');
    SQL.Add('ORDER BY VEN_TIPO');
    Open;

    while not eof do
    begin
      cbstpd.Values.Add(fields[0].AsString);
      cbstpd.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   VEN_TIPO FROM TAB_COB');
    SQL.Add('WHERE    VEN_STA = ''1''');
    SQL.Add('ORDER BY VEN_TIPO');
    Open;

    while not eof do
    begin
      cbstco.Values.Add(fields[0].AsString);
      cbstco.Descriptions.Add(fields[0].AsString);
      next;
    end;
  end;
end;

procedure Tfrmpar_sis_edi.sb_imag1Click(Sender: TObject);
begin
  if OpenPictureDialogEdit.Execute then
     imag1.Picture.LoadFromFile(OpenPictureDialogEdit.FileName);
end;

procedure Tfrmpar_sis_edi.sb_imag2Click(Sender: TObject);
begin
  if OpenPictureDialogEdit.Execute then
     imag2.Picture.LoadFromFile(OpenPictureDialogEdit.FileName);
end;

procedure Tfrmpar_sis_edi.sb_imag3Click(Sender: TObject);
begin
  if OpenPictureDialogEdit.Execute then
     imag3.Picture.LoadFromFile(OpenPictureDialogEdit.FileName);
end;

procedure Tfrmpar_sis_edi.sb_imag4Click(Sender: TObject);
begin
  if OpenPictureDialogEdit.Execute then
  imag4.Picture.LoadFromFile(OpenPictureDialogEdit.FileName);
end;

procedure Tfrmpar_sis_edi.tsFOTOShow(Sender: TObject);
begin
  messageBox(handle,'Atenção !'+#13+'A fotografia para a tela principal deverá seguir as seguintes orientações: '
                               +#13+'Largura: 1024'
                               +#13+'Altura: 619','Parametros do Sistema',MB_ICONWARNING+MB_OK);
end;

procedure Tfrmpar_sis_edi.eddolaValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if eddola.Text = '' then
     eddola.Text := '0';

  eddola.Text := formatfloat('#,0.00########',strtofloat(eddola.Text));
end;

procedure Tfrmpar_sis_edi.edcicmValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcicm.Text = '' then
     edcicm.Text := '0';

  edcicm.Text := formatfloat('#,0.00########',strtofloat(edcicm.Text));
end;

procedure Tfrmpar_sis_edi.edfantExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if edfant.Text = frmpar_sis.cadastroPAR_FANT.AsString then
       exit;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM PAR_SIS');
      SQL.Add('WHERE  PAR_FANT = '''+edfant.Text+'''');
      SQL.Add('AND    ID <> '''+edid.Text+'''');
      SQL.Add('AND    PAR_STA = ''0''');
      Open;

      if not fields[0].IsNull then
      begin
        edfant.SetFocus;
        raise exception.Create('Nome Fantasia já Cadastrado !');
      end;
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmpar_sis_edi.edcnpjExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if edcnpj.Text = frmpar_sis.cadastroPAR_CNPJ.AsString then
       exit;

    if (not oCNPJ(edcnpj.Text)) then
    begin
      edcnpj.SetFocus;
      raise exception.Create('C.N.P.J. Inválido !');
    end;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM PAR_SIS');
      SQL.Add('WHERE  PAR_CNPJ = '''+edcnpj.Text+'''');
      SQL.Add('AND    ID <> '''+edid.Text+'''');
      SQL.Add('AND    PAR_STA = ''0''');      
      Open;

      if not fields[0].IsNull then
      begin
        edfant.SetFocus;
        raise exception.Create('C.N.P.J. já Cadastrado !');
      end;
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmpar_sis_edi.edcna1Exit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if (edcna1.Text = frmpar_sis.cadastroPAR_CNA1.AsString) and (frmpar_sis_edi.Tag = 0) then
       exit;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT NAT_CNAT,NAT_DNAT FROM TAB_NAT');
      SQL.Add('WHERE  NAT_CNAT = '''+edcna1.Text+'''');
      Open;

      if fields[0].IsNull then
      begin
        edcna1.SetFocus;
        raise exception.Create('C.F.O.P. não Encontrado !');
      end;
      eddna1.Text := fields[1].AsString;
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmpar_sis_edi.edcna2Exit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if (edcna2.Text = frmpar_sis.cadastroPAR_CNA2.AsString)  and (frmpar_sis_edi.Tag = 0) then
       exit;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT NAT_CNAT,NAT_DNAT FROM TAB_NAT');
      SQL.Add('WHERE  NAT_CNAT = '''+edcna2.Text+'''');
      Open;

      if fields[0].IsNull then
      begin
        edcna2.SetFocus;
        raise exception.Create('C.F.O.P. não Encontrado !');
      end;
      eddna2.Text := fields[1].AsString;
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmpar_sis_edi.edccliExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if (edccli.Text = frmpar_sis.cadastroPAR_CCLI.AsString)  and (frmpar_sis_edi.Tag = 0) then
       exit;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT CLI_RAZA,CLI_STA,CLI_STAV FROM CAD_CLI');
      SQL.Add('WHERE  ID = '''+edccli.Text+'''');
      Open;

      if fields[0].IsNull then
      begin
        edccli.SetFocus;
        raise exception.Create('Código do Cliente não Cadastrado !');
      end;

      if fields[1].AsString = '1' then
      begin
        edccli.SetFocus;
        raise exception.Create('Cliente Enviado para a Lixeira !');
      end;

      if fields[1].AsString = '2' then
      begin
        edccli.SetFocus;
        raise exception.Create('Cliente Inativo !');
      end;
      eddcli.Text := fields[0].AsString;
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmpar_sis_edi.edcforExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if (edcfor.Text = frmpar_sis.cadastroPAR_CFOR.AsString)  and (frmpar_sis_edi.Tag = 0) then
       exit;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FOR_RAZA,FOR_STA,FOR_STAV FROM CAD_FOR');
      SQL.Add('WHERE  ID = '''+edcfor.Text+'''');
      Open;

      if fields[0].IsNull then
      begin
        edcfor.SetFocus;
        raise exception.Create('Código do fornecedor não cadastrado !');
      end;

      if fields[1].AsString = '1' then
      begin
        edcfor.SetFocus;
        raise exception.Create('Fornecedor enviado para a lixeira !');
      end;

      if fields[1].AsString = '2' then
      begin
        edcfor.SetFocus;
        raise exception.Create('Fornecedor inativo !');
      end;
      eddfor.Text := fields[0].AsString;
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmpar_sis_edi.edcrepExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if (edcrep.Text = frmpar_sis.cadastroPAR_CREP.AsString)  and (frmpar_sis_edi.Tag = 0) then
       exit;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT REP_RAZA,REP_STA,REP_STAV FROM CAD_REP');
      SQL.Add('WHERE  ID = '''+edcrep.Text+'''');
      Open;

      if fields[0].IsNull then
      begin
        edcrep.SetFocus;
        raise exception.Create('Código do representante não cadastrado !');
      end;

      if fields[1].AsString = '1' then
      begin
        edcrep.SetFocus;
        raise exception.Create('Representante enviado para a lixeira !');
      end;

      if fields[1].AsString = '2' then
      begin
        edcrep.SetFocus;
        raise exception.Create('Representante inativo !');
      end;
      eddrep.Text := fields[0].AsString;
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmpar_sis_edi.edctraExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if (edctra.Text = frmpar_sis.cadastroPAR_CTRA.AsString) and (frmpar_sis_edi.Tag = 0) then
       exit;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT TRA_RAZA,TRA_STA,TRA_STAV FROM CAD_TRA');
      SQL.Add('WHERE  ID = '''+edctra.Text+'''');
      Open;

      if fields[0].IsNull then
      begin
        edctra.SetFocus;
        raise exception.Create('Código da Transportadora não Cadastrado !');
      end;

      if fields[1].AsString = '1' then
      begin
        edctra.SetFocus;
        raise exception.Create('Transportadora Enviada para a Lixeira !');
      end;

      if fields[1].AsString = '2' then
      begin
        edctra.SetFocus;
        raise exception.Create('Transportadora Inativa !');
      end;
      eddtra.Text := fields[0].AsString;
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmpar_sis_edi.edcpagExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if edcpag.Text = frmpar_sis.cadastroPAR_CPAG.AsString then
       exit;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PAG_DPAG,PAG_STA FROM TAB_PAG');
      SQL.Add('WHERE  ID = '''+edcpag.Text+'''');
      Open;

      if fields[0].IsNull then
      begin
        edcpag.SetFocus;
        raise exception.Create('Código da Condição de Pagamento não Cadastrado !');
      end;

      if fields[1].AsString = '1' then
      begin
        edcpag.SetFocus;
        raise exception.Create('Condição de Pagamento Enviado para a Lixeira !');
      end;
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmpar_sis_edi.edcnsdExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if edcnsd.Text = frmpar_sis.cadastroPAR_CNSD.AsString then
       exit;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT NAT_CNAT,NAT_DNAT FROM TAB_NAT');
      SQL.Add('WHERE  NAT_CNAT = '''+edcnsd.Text+'''');
      Open;

      if fields[0].IsNull then
      begin
        edcnsd.SetFocus;
        raise exception.Create('C.F.O.P. não Encontrado !');
      end;
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmpar_sis_edi.edcnsfExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if edcnsf.Text = frmpar_sis.cadastroPAR_CNSF.AsString then
       exit;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT NAT_CNAT,NAT_DNAT FROM TAB_NAT');
      SQL.Add('WHERE  NAT_CNAT = '''+edcnsf.Text+'''');
      Open;

      if fields[0].IsNull then
      begin
        edcnsf.SetFocus;
        raise exception.Create('C.F.O.P. não Encontrado !');
      end;
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmpar_sis_edi.cbccrtChange(Sender: TObject);
begin
  DEFINE_CST;
end;

procedure Tfrmpar_sis_edi.edpvarValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpvar.Text = '' then
     edpvar.Text := '0';

  edpvar.Text := formatfloat('#,0.00########',strtofloat(edpvar.Text));
end;

procedure Tfrmpar_sis_edi.edprepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edprep.Text = '' then
  edprep.Text := '0';

  edprep.Text := formatfloat('#,0.00########',strtofloat(edprep.Text));
end;

procedure Tfrmpar_sis_edi.edlimcValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edlimc.Text = '' then
  edlimc.Text := '0';
end;

procedure Tfrmpar_sis_edi.edlimbValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edlimb.Text = '' then
  edlimb.Text := '0';
end;

procedure Tfrmpar_sis_edi.edBPAGValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edBPAG.Text = '' then
  edBPAG.Text := '0';
end;

procedure Tfrmpar_sis_edi.edBCHQValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edBCHQ.Text = '' then
  edBCHQ.Text := '0';
end;

procedure Tfrmpar_sis_edi.edMCRDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edMCRD.Text = '' then
  edMCRD.Text := '0';

  edMCRD.Text := formatfloat('#,0.00########',strtofloat(edMCRD.Text));
end;

procedure Tfrmpar_sis_edi.edPCRDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edPCRD.Text = '' then
  edPCRD.Text := '0';

  edPCRD.Text := formatfloat('#,0.00########',strtofloat(edPCRD.Text));
end;

end.


