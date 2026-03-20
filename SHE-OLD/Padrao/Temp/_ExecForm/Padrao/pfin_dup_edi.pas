unit pfin_dup_edi;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB, DateUtils,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxExEdtr,
  dxEdLib, dxCntner, dxEditor, StdCtrls, dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms, math, StrUtils, rxSpeedbar, IBEvents, IBSQL, ActnList,
  cxGraphics, cxControls, dxStatusBar, rxAnimate, rxGIFCtrl;

type
  Tfrmfin_dup_edi = class(Tfrmpadr3)
    PNLCabecalho: TPanel;
    dup_001: TIBDataSet;
    dup_001ID: TIntegerField;
    dup_001NFE_CDRO: TIntegerField;
    dup_001NFE_CCAB: TIntegerField;
    dup_001NFE_CFAV: TIntegerField;
    dup_001NFE_DROM: TDateField;
    dup_001NFE_CDNF: TIntegerField;
    dup_001NFE_DNFE: TDateField;
    dup_001NFE_TITU: TIBStringField;
    dup_001NFE_DVEN: TDateField;
    dup_001NFE_PARC: TIntegerField;
    dup_001NFE_VDUP: TIBBCDField;
    dup_001NFE_DPAG: TDateField;
    dup_001NFE_VPAG: TIBBCDField;
    dup_001NFE_VPEN: TIBBCDField;
    dup_001NFE_OBSE: TMemoField;
    dup_001NFE_STA: TIBStringField;
    dup_001NFE_STPD: TIBStringField;
    dup_001NFE_STCO: TIBStringField;
    dup_001NFE_STFI: TIBStringField;
    dtsdup_001: TDataSource;
    Prazo: TIBQuery;
    PrazoID: TIntegerField;
    PrazoPAG_DPAG: TIBStringField;
    PrazoPAG_D001: TIntegerField;
    PrazoPAG_D002: TIntegerField;
    PrazoPAG_D003: TIntegerField;
    PrazoPAG_D004: TIntegerField;
    PrazoPAG_D005: TIntegerField;
    PrazoPAG_D006: TIntegerField;
    PrazoPAG_D007: TIntegerField;
    PrazoPAG_D008: TIntegerField;
    PrazoPAG_D009: TIntegerField;
    PrazoPAG_D010: TIntegerField;
    PrazoPAG_STA: TIBStringField;
    PrazoPAG_PARC: TSmallintField;
    PrazoPAG_DUPL: TIBStringField;
    psq_rom: TIBQuery;
    tSHEILD: TIBTransaction;
    consulta_S: TIBQuery;
    PrazoPAG_D011: TIntegerField;
    PrazoPAG_D012: TIntegerField;
    PrazoPAG_D013: TIntegerField;
    PrazoPAG_D014: TIntegerField;
    PrazoPAG_D015: TIntegerField;
    PrazoPAG_D016: TIntegerField;
    PrazoPAG_D017: TIntegerField;
    PrazoPAG_D018: TIntegerField;
    PrazoPAG_PRAZ: TSmallintField;
    PrazoPAG_ENVWEB: TSmallintField;
    PrazoPAG_D019: TIntegerField;
    PrazoPAG_D020: TIntegerField;
    GBFatura: TGroupBox;
    Label14: TLabel;
    decdnf: TdxDateEdit;
    lacfav: TLabel;
    eddfav: TdxMaskEdit;
    edrfav: TdxMaskEdit;
    Label5: TLabel;
    edstpd: TdxMaskEdit;
    edstco: TdxMaskEdit;
    Label2: TLabel;
    Label8: TLabel;
    cbconc: TdxImageEdit;
    Label9: TLabel;
    IEPrazo: TdxImageEdit;
    Label37: TLabel;
    Label13: TLabel;
    PNLFormRodape: TPanel;
    GBTitulo: TGroupBox;
    dbgdup: TdxDBGrid;
    dbgdupNFE_TITU: TdxDBGridMaskColumn;
    dbgdupNFE_DVEN: TdxDBGridDateColumn;
    dbgdupNFE_VDUP: TdxDBGridCurrencyColumn;
    SpeedBar1: TSpeedBar;
    SpeedbarSection10: TSpeedbarSection;
    SpeedbarSection11: TSpeedbarSection;
    SpeedbarSection12: TSpeedbarSection;
    SpeedbarSection13: TSpeedbarSection;
    siIDU: TSpeedItem;
    siDDU: TSpeedItem;
    siSDU: TSpeedItem;
    siCDU: TSpeedItem;
    siADU: TSpeedItem;
    decdpd: TdxDateEdit;
    Label1: TLabel;
    decdro: TdxDateEdit;
    Label3: TLabel;
    CEVNF: TdxCurrencyEdit;
    dup_001NFE_TSEQ: TIBStringField;
    dup_001NFE_PSEQ: TIBStringField;
    CECDNF: TdxCurrencyEdit;
    CECDRO: TdxCurrencyEdit;
    CECFav: TdxCurrencyEdit;
    edcdpd: TdxMaskEdit;
    psq_romIDN: TIntegerField;
    psq_romNFE_CDNF: TIntegerField;
    psq_romNFE_DEMI: TDateField;
    psq_romNFE_VNF: TIBBCDField;
    psq_romIDCC: TIntegerField;
    psq_romCLI_FANT: TIBStringField;
    psq_romCLI_RAZA: TIBStringField;
    psq_romIDR: TIntegerField;
    psq_romDTR: TDateField;
    psq_romIDP: TIntegerField;
    psq_romROM_CDBX: TIntegerField;
    psq_romROM_DERO: TIBStringField;
    psq_romDTP: TDateField;
    psq_romROM_CONC: TSmallintField;
    psq_romROM_STCO: TIBStringField;
    psq_romROM_STPD: TIBStringField;
    psq_romROM_STFI: TIBStringField;
    psq_romUSU_CUSU: TIntegerField;
    psq_romUSU_DUSU: TIBStringField;
    psq_romIDCR: TIntegerField;
    psq_romREP_FANT: TIBStringField;
    psq_romREP_RAZA: TIBStringField;
    psq_romIDTP: TIntegerField;
    psq_romPAG_DPAG: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure dup_001AfterEdit(DataSet: TDataSet);
    procedure dup_001AfterPost(DataSet: TDataSet);
    procedure dup_001BeforeCancel(DataSet: TDataSet);
    procedure dup_001NewRecord(DataSet: TDataSet);
    procedure siDDUClick(Sender: TObject);
    procedure siSDUClick(Sender: TObject);
    procedure siCDUClick(Sender: TObject);
    procedure siADUClick(Sender: TObject);
    procedure dup_001BeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure CEVNFValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure psq_romAfterOpen(DataSet: TDataSet);
    procedure CECDNFValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure dup_001AfterDelete(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ACTMPostExecute(Sender: TObject);
  private
    { Private declarations }
    procedure PESQUISA_NOTA_FISCAL;
    procedure DUPLICATAS;
    procedure ABRE_TABELA;
  public
    { Public declarations }
    procedure _WM_AFTER_ACTIVATE(var Msg: TMessage); message WM_AFTER_ACTIVATE;
  end;

var
  frmfin_dup_edi: Tfrmfin_dup_edi;

implementation

uses uprincipal, bPrincipal;

{$R *.dfm}

procedure TFrmFIN_DUP_EDI._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
  inherited;
  ABRE_TABELA;
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ID,PAG_DPAG FROM TAB_PAG');
    SQL.Add('WHERE    PAG_STA = ''0''');
    SQL.Add('ORDER BY PAG_DPAG');
    Open;
    while not eof do
    begin
      IEPrazo.Values.Add(fields[0].AsString);
      IEPrazo.Descriptions.Add(fields[1].AsString);
      next;
    end;
  end;
end;

procedure Tfrmfin_dup_edi.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'FIN_REC_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GAdmin := True; { Grant }
  inherited;

  { Grant }
  REC_SHE_DEF.GDescricao  := 'Representantes';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmfin_dup_edi.FormDestroy(Sender: TObject);
begin
  inherited;
  frmfin_dup_edi := Nil;
end;

procedure Tfrmfin_dup_edi.ABRE_TABELA;
begin
  oOTransact(TSheild);
  with Consulta_S do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM NFE_DUP');
    ExecSQL;
  end;

  with dup_001 do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM NFE_DUP');
    SelectSQL.Add('ORDER BY ID');
    Prepare;
  end;
  oRTransact(TSheild);
end;

procedure Tfrmfin_dup_edi.DUPLICATAS;
var
  i: word;
  valNFE,valDUP,valTOT: double;
const
  aDup : array [1..24] of string = ('A','B','C','D','E','F','G',
                                    'H','I','J','K','L','M','N',
                                    'O','P','Q','R','S','T','U',
                                    'V','X','Z');
begin
  ABRE_TABELA;

  Prazo.Close;
  Prazo.Params[0].Value := IEPrazo.Text;
  Prazo.Prepare;
  Prazo.Open;

  valNFE := CEVNF.Value;
  valDUP := ROUNDTO(valNFE/PrazoPAG_PARC.AsInteger,-2);
  valTOT := 0;

  for i  := 1 to PrazoPAG_PARC.AsInteger do
  begin
    valTOT := valTOT + valDUP;
    dup_001.Append;

    dup_001NFE_CDRO.Value := psq_romIDR.AsInteger;
    dup_001NFE_DROM.Value := decdnf.Date;
    dup_001NFE_CFAV.Value := Trunc(CECFav.Value);
    dup_001NFE_CDNF.Value := Trunc(CECDNF.Value);
    dup_001NFE_DNFE.Value := decdnf.Date;
    dup_001NFE_TITU.Value := Trim(dup_001NFE_CDNF.AsString+IFThen(PrazoPAG_PARC.AsInteger > 1,'-'+aDUP[i],''));
    dup_001NFE_DVEN.Value := uRETDTVencimento(incDay(decdnf.Date,Prazo.Fields[i+1].Value));
    dup_001NFE_STPD.Value := psq_romROM_STPD.AsString;
    dup_001NFE_STCO.Value := psq_romROM_STCO.AsString;
    dup_001NFE_STFI.Value := psq_romROM_STFI.AsString;
    dup_001NFE_PARC.Value := i;
    dup_001NFE_VDUP.Value := valDUP;
    dup_001.Post;
  end;
  oRTransact(TSheild);

  if valTOT > valNFE then
     valDUP := valDUP - (valTOT - valNFE) else
  if valNFE > valTOT then
     valDUP := valDUP + (valNFE - valTOT) else
     valDUP := 0;

  if valDUP > 0 then
  begin
    dup_001.Last;
    dup_001.Edit;
    dup_001NFE_VDUP.Value := valDUP;
    dup_001.Post;
  end;
  oRTransact(TSheild);
end;

procedure Tfrmfin_dup_edi.dup_001AfterDelete(DataSet: TDataSet);
begin
  TSheild.CommitRetaining;
end;

procedure Tfrmfin_dup_edi.dup_001AfterEdit(DataSet: TDataSet);
begin
  siIDU.Enabled := false;
  siADU.Enabled := false;
  siDDU.Enabled := false;
  siSDU.Enabled := true;
  siCDU.Enabled := true;
end;

procedure Tfrmfin_dup_edi.dup_001AfterPost(DataSet: TDataSet);
begin
  siIDU.Enabled := true;
  siADU.Enabled := true;
  siDDU.Enabled := true;
  siSDU.Enabled := false;
  siCDU.Enabled := false;

  TSheild.CommitRetaining;
end;

procedure Tfrmfin_dup_edi.dup_001BeforeCancel(DataSet: TDataSet);
begin
  siIDU.Enabled := true;
  siADU.Enabled := true;
  siDDU.Enabled := true;
  siSDU.Enabled := false;
  siCDU.Enabled := false;

  if dup_001.RecordCount = 0 then
  begin
    dup_001.Close;
    dup_001.Open;
    ABORT;
  end;
end;

procedure Tfrmfin_dup_edi.dup_001NewRecord(DataSet: TDataSet);
begin
  dup_001ID.Value := 0;
end;

procedure Tfrmfin_dup_edi.siDDUClick(Sender: TObject);
begin
  dup_001.Delete;
end;

procedure Tfrmfin_dup_edi.siSDUClick(Sender: TObject);
begin
  dup_001.Post;
end;

procedure Tfrmfin_dup_edi.siCDUClick(Sender: TObject);
begin
  dup_001.Cancel;
end;

procedure Tfrmfin_dup_edi.siADUClick(Sender: TObject);
begin
  dup_001.Edit;
end;

procedure Tfrmfin_dup_edi.dup_001BeforePost(DataSet: TDataSet);
begin
  dup_001NFE_DVEN.Value := uRETDTVencimento(dup_001NFE_DVEN.AsDateTime);
end;

procedure Tfrmfin_dup_edi.CEVNFValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  Duplicatas;
end;

procedure Tfrmfin_dup_edi.PESQUISA_NOTA_FISCAL;
begin
  with psq_rom do
  begin
    SQL.Clear;
    SQL.Add('SELECT N.ID AS IDN,N.NFE_CDNF,N.NFE_DEMI,N.NFE_VNF,');
    SQL.Add('       CC.ID AS IDCC,CC.CLI_FANT,CC.CLI_RAZA,');
    SQL.Add('              R.ID AS IDR,R.ROM_DROM AS DTR,');
    SQL.Add('       P.ID AS IDP,P.ROM_CDBX,P.ROM_DERO,P.ROM_DROM AS DTP,P.ROM_CONC,P.ROM_STCO,P.ROM_STPD,P.ROM_STFI,');
    SQL.Add('       CV.USU_CUSU,CV.USU_DUSU,');
    SQL.Add('       CR.ID AS IDCR,CR.REP_FANT,CR.REP_RAZA,');
    SQL.Add('       TP.ID AS IDTP,TP.PAG_DPAG');
    SQL.Add('FROM '+SLPrincipal.Values['nfe_cab']+' AS N');
    SQL.Add('JOIN   CAD_CLI AS CC ON (CC.ID = N.NFE_CFAV)');
    SQL.Add('LEFT OUTER JOIN '+SLPrincipal.Values['rom_cab']    +' AS R  ON (R.ID       = N.NFE_CDNF)');
    SQL.Add('LEFT OUTER JOIN '+SLPrincipal.Values['ped_ven_cab']+'  AS P ON (P.ROM_CDNF = N.NFE_CDNF)');
    SQL.Add('LEFT OUTER JOIN CAD_USU AS CV ON (CV.USU_CUSU = P.ROM_CVEN)');
    SQL.Add('LEFT OUTER JOIN CAD_REP AS CR ON (CR.ID       = P.ROM_CREP)');
    SQL.Add('LEFT OUTER JOIN TAB_PAG AS TP ON (TP.ID       = P.ROM_CPAG)');
    SQL.Add('WHERE  N.NFE_CDNF = '''+CECDNF.Text+'''');
    SQL.Add('AND    N.NFE_CHAV <> '' ''');
    Open;
  end;
end;

procedure Tfrmfin_dup_edi.psq_romAfterOpen(DataSet: TDataSet);
begin
  if psq_rom.Fields[0].IsNull then
  begin
    CECDNF.SetFocus;
    DataBaseError('Nota Fiscal não Encontrada !');
  end;  

  if psq_romNFE_DEMI.AsDateTime > 0 then decdnf.Date  := psq_romNFE_DEMI.AsDateTime else decdnf.Clear;
  if psq_romDTR.AsDateTime      > 0 then decdro.Date  := psq_romDTR.AsDateTime      else decdro.Clear;
  if psq_romDTP.AsDateTime      > 0 then decdpd.Date  := psq_romDTP.AsDateTime      else decdpd.Clear;


  CECDNF.Tag   := psq_romROM_CDBX.AsInteger;
  CECDNF.Value := psq_romNFE_CDNF.AsInteger;
  CECDRO.Value := psq_romIDR.AsInteger;
  CECFav.Value := psq_romIDCC.AsInteger;
  eddfav.Text  := psq_romCLI_FANT.AsString;
  edrfav.Text  := psq_romCLI_RAZA.AsString;
  edcdpd.Text  := psq_romROM_DERO.AsString;
  edstpd.Text  := psq_romROM_STPD.AsString;
  edstco.Text  := psq_romROM_STCO.AsString;
  cbconc.Text  := IntToStr(psq_romROM_CONC.AsInteger);
  CEVNF.Value  := psq_romNFE_VNF.AsFloat;
  IEPrazo.Text := IFThen(not oEmpty(IEPrazo.Text),IEPrazo.Text,
                  IFThen(psq_romIDTP.AsInteger > 0,psq_romIDTP.AsString,RECParametros.PED_PRZ_ID));

  if (RECUsuarios.Grupo <> 'ADM') and (RECUsuarios.Grupo <> 'FIN') then
     if (CECDNF.Tag > 0) and (psq_romROM_STCO.AsString = 'BANCÁRIO') then
     begin
       DataBaseError('Nota fiscal já faturada !'+#13+
                     'Pedido Nº '+psq_romROM_DERO.AsString);
       CECDNF.SetFocus;              
     end;
     
  Duplicatas;
end;

procedure Tfrmfin_dup_edi.CECDNFValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  Pesquisa_Nota_Fiscal;
end;

procedure Tfrmfin_dup_edi.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if dup_001.State in [dsInsert,dsEdit] then
    case messageBox(handle,'Existem Alterações Pendentes !'+#13+
                           'Deseja Salvar ?',
                            PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
         mrCancel: Abort;
         mrNo    : begin
                     REC_SHE_DEF.Edited := False;
                     dup_001.Cancel;
                   end;
         mrYes   : begin
                     REC_SHE_DEF.Edited := True;
                     dup_001.Post;
                   end;
    end;
end;

procedure Tfrmfin_dup_edi.ACTMPostExecute(Sender: TObject);
begin
  inherited;
  if CECDNF.Value = 0 then
  oException(CECDNF,'Nota fiscal não selecionada para geração de duplicata !');

  if oYesNo(handle,'Gerar Duplicatas ?') = mrno then
  abort;

  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['nfe_dup']);
      SQL.Add('WHERE  NFE_CDNF = '''+CECDNF.Text+'''');
      ExecSQL;
    end;

    dup_001.DisableControls;
    dup_001.First;
    while not dup_001.Eof do
    begin
      SPEdicao.StoredProcName := 'SP_NFE_DUP';
      SPEdicao.Prepare;

      SPEdicao.ParamByName('nfe').Value  := 'NFE_DUP';
      if RECParametros.EP_ID > 1 then
      SPEdicao.ParamByName('nfe').Value  := 'NFE_DUP_'+oStrZero(RECParametros.EP_ID,3);

      SPEdicao.ParamByName('id').Value    := 0;
      SPEdicao.ParamByName('CCAB').Value  := psq_romIDN.AsInteger;
      SPEdicao.ParamByName('CDRO').Value  := dup_001NFE_CDRO.AsInteger;
      SPEdicao.ParamByName('CFAV').Value  := dup_001NFE_CFAV.AsInteger;
      SPEdicao.ParamByName('DROM').Value  := dup_001NFE_DROM.AsDateTime;
      SPEdicao.ParamByName('CDNF').Value  := dup_001NFE_CDNF.AsInteger;
      SPEdicao.ParamByName('DNFE').Value  := dup_001NFE_DNFE.AsDateTime;
      SPEdicao.ParamByName('TITU').Value  := dup_001NFE_TITU.AsString;
      SPEdicao.ParamByName('STPD').Value  := dup_001NFE_STPD.AsString;
      SPEdicao.ParamByName('STCO').Value  := dup_001NFE_STCO.AsString;
      SPEdicao.ParamByName('STFI').Value  := dup_001NFE_STFI.AsString;
      SPEdicao.ParamByName('STFI').Value  := 'PENDENTE';
      SPEdicao.ParamByName('PARC').Value  := dup_001NFE_PARC.AsInteger;
      SPEdicao.ParamByName('DVEN').Value  := dup_001NFE_DVEN.AsDateTime;
      SPEdicao.ParamByName('VDUP').Value  := dup_001NFE_VDUP.AsFloat;
      SPEdicao.ParamByName('DPAG').Value  := dup_001NFE_DPAG.AsDateTime;
      SPEdicao.ParamByName('VPAG').Value  := 0;
      SPEdicao.ParamByName('VPEN').Value  := dup_001NFE_VDUP.AsFloat;
      SPEdicao.ParamByName('OBSE').Value  := dup_001NFE_OBSE.Text;
      SPEdicao.ParamByName('STA').Value   := '0';
      SPEdicao.ExecProc;

      dup_001.Next;
    end;
    dup_001.EnableControls;
    oRTransact(TEdicao);

    REC_SHE_DEF.Edited := True;

    oAviso(Application.Handle,'Título atualizado coom sucesso !');
    ACTEveExecute.Execute;
    Close;
  except
    on E: Exception do
    begin
      dup_001.EnableControls;
      oRTransact(TEdicao,ltRollback);
      oErro(Handle,'Falha ao tentar salvar duplicatas !' +#13+
                   'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                   'Erro: '+E.Message);
    end;
  end;
end;

end.
