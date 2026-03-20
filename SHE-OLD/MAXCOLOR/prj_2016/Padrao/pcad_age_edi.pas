unit pcad_age_edi;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, IBStoredProc, IBDatabase, ImgList, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, StdCtrls,
  dxEdLib, dxEditor, dxCntner, dxExEdtr, dxPageControl, rxSpeedbar;

type
  Tfrmcad_age_edi = class(Tfrmpadr3)
    pcobse: TdxPageControl;
    ts1: TdxTabSheet;
    edobse: TdxMemo;
    pcend: TdxPageControl;
    tsend1: TdxTabSheet;
    cep_log: TIBQuery;
    cep_logID: TIntegerField;
    cep_logLOG_TIT: TIBStringField;
    cep_logLOG_NO: TIBStringField;
    cep_logLOG_CEP: TIBStringField;
    cep_logBAI_NO: TIBStringField;
    cep_logLOC_NO: TIBStringField;
    cep_logLOG_UF: TIBStringField;
    Label1: TLabel;
    edcage: TdxEdit;
    Label41: TLabel;
    eddcad: TdxDateEdit;
    Label5: TLabel;
    ednome: TdxEdit;
    Label2: TLabel;
    edmail: TdxEdit;
    edcont: TdxEdit;
    Label3: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label71: TLabel;
    Label11: TLabel;
    edddd1: TdxMaskEdit;
    edtel1: TdxMaskEdit;
    edtel2: TdxMaskEdit;
    edfax: TdxMaskEdit;
    edcel: TdxMaskEdit;
    edneid: TdxMaskEdit;
    edncel: TdxMaskEdit;
    edDDD2: TdxMaskEdit;
    edDDD3: TdxMaskEdit;
    edtel3: TdxMaskEdit;
    edDDD4: TdxMaskEdit;
    edDDD5: TdxMaskEdit;
    edDDD6: TdxMaskEdit;
    cbtce1: TdxImageEdit;
    cbtce2: TdxImageEdit;
    tsend2: TdxTabSheet;
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
    edesta: TdxEdit;
    edcid: TdxEdit;
    cbregi: TdxPickEdit;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    edcid2: TdxEdit;
    edtlo2: TdxEdit;
    edlog2: TdxEdit;
    edcep2: TdxButtonEdit;
    ednum2: TdxEdit;
    edcom2: TdxEdit;
    edcmu2: TdxButtonEdit;
    edbai2: TdxEdit;
    edest2: TdxEdit;
    Bevel3: TBevel;
    Bevel1: TBevel;
    Label4: TLabel;
    edtipo: TdxEdit;
    procedure siSAVClick(Sender: TObject);
    procedure edcepButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edcepValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edcep2ButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edcep2Validate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edneidKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure NOVA_AGENDA;
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmcad_age_edi: Tfrmcad_age_edi;

implementation

uses bDados, pcad_age, uPrincipal, unLocaliza_Cep;

{$R *.dfm}

procedure Tfrmcad_age_edi.NOVA_AGENDA;
begin
  edcage.Text := '00000';
  eddcad.Date := strtodate(SLPrincipal.Values['data_sistema']);
  ednome.Text := '';
  edmail.Text := '';
  edcont.Text := '';
  edddd1.Text := '11';
  edddd2.Text := '11';
  edddd3.Text := '11';
  edddd4.Text := '11';
  edddd5.Text := '11';
  edddd6.Text := '11';
  edtel1.Text := '';
  edtel2.Text := '';
  edtel3.Text := '';
  edfax.Text  := '';
  edcel.Text  := '';
  edncel.Text := '';
  edneid.Text := '';
  cbtce1.Text := '';
  cbtce2.Text := '';
  edtlog.Text := '';
  edlogr.Text := '';
  edcep.Text  := '';
  edcmun.Text := '';
  ednume.Text := '';
  edcomp.Text := '';
  edbai.Text  := '';
  edcid.Text  := '';
  edesta.Text := '';
  cbregi.Text := '';
  edtlo2.Text := '';
  edlog2.Text := '';
  edcep2.Text := '';
  edcmu2.Text := '';
  ednum2.Text := '';
  edcom2.Text := '';
  edbai2.Text := '';
  edcid2.Text := '';
  edest2.Text := '';

  edobse.Lines.Clear;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_CAD_AGE,0) FROM RDB$DATABASE');
    Open;

    edcage.Text := oStrZero(fields[0].AsInteger+1,3);
  end;
end;

procedure Tfrmcad_age_edi.FormCreate(Sender: TObject);
begin
  pcend.ActivePageIndex := 0;
  inherited;
end;

procedure Tfrmcad_age_edi.siSAVClick(Sender: TObject);
begin
  if (edlogr.Text <> '') and (copy(ednume.Text,1,1) = ' ') then
  begin
    ednume.SetFocus;
    raise exception.Create('Número do logradouro do endereço não cadastrado !');
  end;

  if (edlogr.Text <> '') and (edtlog.Text = '') then
  begin
    edtlog.SetFocus;
    raise exception.Create('Título do logradouro do endereço não cadastrado !');
  end;

  try
    try
      ibSP.StoredProcName := 'SP_CAD_AGE';
      ibSP.Prepare;
      case frmcad_age_edi.Tag of
        0: ibSP.Params[0].Value := 0;
        1: ibSP.Params[0].Value := edcage.Text;
      end;

      ibSP.ParamByName('NOME').Value := ednome.Text;
      ibSP.ParamByName('TIPO').Value := edTIPO.Text;
      ibSP.ParamByName('CONT').Value := edCONT.Text;
      ibSP.ParamByName('DCAD').Value := edDCAD.Text;
      ibSP.ParamByName('DDD1').Value := edDDD1.Text;
      ibSP.ParamByName('TEL1').Value := edTEL1.Text;
      ibSP.ParamByName('DDD2').Value := edDDD2.Text;
      ibSP.ParamByName('TEL2').Value := edTEL2.Text;
      ibSP.ParamByName('DDD3').Value := edDDD3.Text;
      ibSP.ParamByName('TEL3').Value := edTEL3.Text;
      ibSP.ParamByName('DDD4').Value := edDDD4.Text;
      ibSP.ParamByName('FAX').Value  := edFAX.Text;
      ibSP.ParamByName('DDD5').Value := edDDD5.Text;
      ibSP.ParamByName('CEL').Value  := edCEL.Text;
      ibSP.ParamByName('TCE1').Value := cbTCE1.Text;
      ibSP.ParamByName('DDD6').Value := edDDD6.Text;
      ibSP.ParamByName('NCEL').Value := edNCEL.Text;
      ibSP.ParamByName('TCE2').Value := cbTCE2.Text;
      ibSP.ParamByName('NEID').Value := edNEID.Text;
      ibSP.ParamByName('TLOG').Value := edTLOG.Text;
      ibSP.ParamByName('LOGR').Value := edLOGR.Text;
      ibSP.ParamByName('CEP').Value  := edCEP.Text;
      ibSP.ParamByName('NUME').Value := edNUME.Text;
      ibSP.ParamByName('COMP').Value := edCOMP.Text;
      ibSP.ParamByName('BAI').Value  := edBAI.Text;
      ibSP.ParamByName('CID').Value  := edCID.Text;
      ibSP.ParamByName('ESTA').Value := edESTA.Text;
      ibSP.ParamByName('TLO2').Value := edTLO2.Text;
      ibSP.ParamByName('LOG2').Value := edLOG2.Text;
      ibSP.ParamByName('CEP2').Value := edCEP2.Text;
      ibSP.ParamByName('NUM2').Value := edNUM2.Text;
      ibSP.ParamByName('COM2').Value := edCOM2.Text;
      ibSP.ParamByName('BAI2').Value := edBAI2.Text;
      ibSP.ParamByName('CID2').Value := edCID2.Text;
      ibSP.ParamByName('EST2').Value := edEST2.Text;
      ibSP.ParamByName('MAIL').Value := edMAIL.Text;
      ibSP.ParamByName('OBSE').Value := edOBSE.Text;
      ibSP.ParamByName('STA').Value  := '0';
      ibSP.ExecProc;

      case frmcad_age_edi.Tag of
        0: frmprincipal.Log_Eve('Agenda','Cadastro de Agenda','Inclusão' ,edcage.Text,edcage.Text,LOWERCASE(ednome.Text),'','');
        1: frmprincipal.Log_Eve('Agenda','Cadastro de Agenda','Alteração',edcage.Text,edcage.Text,LOWERCASE(ednome.Text),'','');
      end;

      editado := true;
      IBTra.Commit;
      IBTra.StartTransaction;

      if (frmcad_age_edi.Tag = 0) then
         NOVA_AGENDA
      else
         Close;
    except
      editado := false;
      IBTra.Rollback;
      IBtra.StartTransaction;
    end;
  finally
  end;
end;

procedure Tfrmcad_age_edi.edcepButtonClick(Sender: TObject;
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
      edesta.Text := frmLocaliza_Cep.caUf.Caption;
      edcid.Text  := frmLocaliza_Cep.caCidade.Caption;
      edcep.Text  := cCEP;
    end;
    freeAndNil(frmLocaliza_cep);
    frmLocaliza_cep.Free;
  end;
end;

procedure Tfrmcad_age_edi.edcepValidate(Sender: TObject;
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
    edesta.Text   := cep_logLOG_UF.AsString;
  end;
  ednume.SetFocus;
end;

procedure Tfrmcad_age_edi.FormShow(Sender: TObject);
begin
  inherited;
  if tag = 1 then
  with frmcad_age.cadastro do
  begin
    edcage.Text := fieldByName('ID').AsString;
    edNOME.Text := fieldByName('AGE_NOME').AsString;
    edTIPO.Text := fieldByName('AGE_TIPO').AsString;
    edCONT.Text := fieldByName('AGE_CONT').AsString;
    edDCAD.Text := fieldByName('AGE_DCAD').AsString;
    edDDD1.Text := fieldByName('AGE_DDD1').AsString;
    edTEL1.Text := fieldByName('AGE_TEL1').AsString;
    edDDD2.Text := fieldByName('AGE_DDD2').AsString;
    edTEL2.Text := fieldByName('AGE_TEL2').AsString;
    edDDD3.Text := fieldByName('AGE_DDD3').AsString;
    edTEL3.Text := fieldByName('AGE_TEL3').AsString;
    edDDD4.Text := fieldByName('AGE_DDD4').AsString;
    edFAX.Text  := fieldByName('AGE_FAX').AsString;
    edDDD5.Text := fieldByName('AGE_DDD5').AsString;
    edCEL.Text  := fieldByName('AGE_CEL').AsString;
    cbTCE1.Text := fieldByName('AGE_TCE1').AsString;
    edDDD6.Text := fieldByName('AGE_DDD6').AsString;
    edNCEL.Text := fieldByName('AGE_NCEL').AsString;
    cbTCE2.Text := fieldByName('AGE_TCE2').AsString;
    edNEID.Text := fieldByName('AGE_NEID').AsString;
    edTLOG.Text := fieldByName('AGE_TLOG').AsString;
    edLOGR.Text := fieldByName('AGE_LOGR').AsString;
    edCEP.Text  := fieldByName('AGE_CEP').AsString;
    edNUME.Text := fieldByName('AGE_NUME').AsString;
    edCOMP.Text := fieldByName('AGE_COMP').AsString;
    edBAI.Text  := fieldByName('AGE_BAI').AsString;
    edCID.Text  := fieldByName('AGE_CID').AsString;
    edESTA.Text := fieldByName('AGE_ESTA').AsString;
    edTLO2.Text := fieldByName('AGE_TLO2').AsString;
    edLOG2.Text := fieldByName('AGE_LOG2').AsString;
    edCEP2.Text := fieldByName('AGE_CEP2').AsString;
    edNUM2.Text := fieldByName('AGE_NUM2').AsString;
    edCOM2.Text := fieldByName('AGE_COM2').AsString;
    edBAI2.Text := fieldByName('AGE_BAI2').AsString;
    edCID2.Text := fieldByName('AGE_CID2').AsString;
    edEST2.Text := fieldByName('AGE_EST2').AsString;
    edMAIL.Text := fieldByName('AGE_MAIL').AsString;
    edOBSE.Text := fieldByName('AGE_OBSE').AsString;
  end                           
  else
    NOVA_AGENDA;

  ednome.SetFocus;
end;

procedure Tfrmcad_age_edi.edcep2ButtonClick(Sender: TObject;
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

      edtlo2.Text := frmLocaliza_Cep.caTipo.Caption;
      edlog2.Text := frmLocaliza_Cep.caLogradouro.Caption;
      edbai2.Text := frmLocaliza_Cep.caBairro.Caption;
      edest2.Text := frmLocaliza_Cep.caUf.Caption;
      edcid2.Text := frmLocaliza_Cep.caCidade.Caption;
      edcep2.Text := cCEP;
    end;
    freeAndNil(frmLocaliza_cep);
    frmLocaliza_cep.Free;
  end;
end;

procedure Tfrmcad_age_edi.edcep2Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
var
  cCEP: string;
  i: word;
begin
  for i := 1 to length(edcep2.Text) do
    if copy(edcep2.Text,i,1) <> '-' then
       cCEP := cCEP+copy(edcep2.Text,i,1);

  cep_log.Close;
  cep_log.Params[0].Value := cCEP;
  cep_log.Open;

  if not cep_log.Fields[0].IsNull then
  begin
    edtlo2.Text := cep_logLOG_TIT.AsString;
    edlog2.Text := cep_logLOG_NO.AsString;
    edcep2.Text := cep_logLOG_CEP.AsString;
    edbai2.Text := cep_logBAI_NO.AsString;
    edcid2.Text := cep_logLOC_NO.AsString;
    edest2.Text := cep_logLOG_UF.AsString;
  end;
  ednum2.SetFocus;
end;

procedure Tfrmcad_age_edi.edneidKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    pcend.ActivePageIndex := 0;
    edcep.SetFocus;
  end;  
end;

end.

