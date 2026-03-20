unit pcai_sar_edi;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, StdCtrls,
  dxExEdtr, dxEdLib, dxEditor, dxCntner, rxSpeedbar, IBEvents, IBSQL;

type
  Tfrmcai_sar_edi = class(Tfrmpadr3)
    Label3: TLabel;
    edctsr: TdxButtonEdit;
    GroupBox1: TGroupBox;
    eddoct: TdxEdit;
    Label1: TLabel;
    eddcad: TdxDateEdit;
    Label4: TLabel;
    edtcad: TdxTimeEdit;
    Label5: TLabel;
    Label6: TLabel;
    Timer1: TTimer;
    edid: TdxEdit;
    edtipo: TdxEdit;
    edcdcx: TdxEdit;
    eddesc: TdxPickEdit;
    edvalo: TdxButtonEdit;
    consulta_s: TIBQuery;
    tSHEILD: TIBTransaction;
    lan_chq: TIBDataSet;
    lan_chqID: TIntegerField;
    lan_chqFIN_DOCT: TIBStringField;
    lan_chqFIN_DVEN: TDateField;
    lan_chqFIN_TIPO: TIBStringField;
    lan_chqFIN_BANC: TIBStringField;
    lan_chqFIN_AGEN: TIBStringField;
    lan_chqFIN_CONT: TIBStringField;
    lan_chqFIN_NCHQ: TIBStringField;
    lan_chqFIN_OBSE: TMemoField;
    lan_chqFIN_STA: TIBStringField;
    lan_chqFIN_PRAZ: TSmallintField;
    lan_chqFIN_DPAG: TDateField;
    lan_chqFIN_DBAN: TIBStringField;
    lan_chqFIN_STFI: TIBStringField;
    lan_chqFIN_VALO: TIBBCDField;
    lan_chqFIN_VPAG: TIBBCDField;
    lan_chqFIN_VPEN: TIBBCDField;
    lan_chqFIN_COBR: TIBStringField;
    lan_chqFIN_STDO: TIBStringField;
    lan_chqFIN_CCAB: TIntegerField;
    lan_chqFIN_CDBX: TIntegerField;
    lan_chqFIN_CDCX: TIntegerField;
    lan_chqFIN_CCLI: TIntegerField;
    lan_chqFIN_DCLI: TIBStringField;
    lan_chqFIN_CVEN: TIntegerField;
    lan_chqFIN_VEND: TIBStringField;
    lan_chqFIN_CREP: TIntegerField;
    lan_chqFIN_DREP: TIBStringField;
    lan_chqFIN_ATRA: TSmallintField;
    lan_chqFIN_CONC: TSmallintField;
    lan_chqFIN_DCAD: TDateField;
    lan_chqFIN_DMED: TDateField;
    lan_chqFIN_DATR: TDateField;
    lan_chqFIN_MCHQ: TSmallintField;
    lan_chqFIN_STCO: TIBStringField;
    lan_chqFIN_RCLI: TIBStringField;
    lan_chqFIN_RREP: TIBStringField;
    lan_chqFIN_DBAI: TDateField;
    lan_chqFIN_CPF: TIBStringField;
    lan_chqFIN_VENC: TIBBCDField;
    fin_rec: TIBQuery;
    fin_recID: TIntegerField;
    fin_recFIN_CCAB: TIntegerField;
    fin_recFIN_CDBX: TIntegerField;
    fin_recFIN_CDCX: TIntegerField;
    fin_recFIN_CCLI: TIntegerField;
    fin_recFIN_CVEN: TIntegerField;
    fin_recFIN_CREP: TIntegerField;
    fin_recFIN_PRAZ: TSmallintField;
    fin_recFIN_ATRA: TSmallintField;
    fin_recFIN_CONC: TSmallintField;
    fin_recFIN_DCAD: TDateField;
    fin_recFIN_DVEN: TDateField;
    fin_recFIN_DPAG: TDateField;
    fin_recFIN_DMED: TDateField;
    fin_recFIN_DATR: TDateField;
    fin_recFIN_STDO: TIBStringField;
    fin_recFIN_DOCT: TIBStringField;
    fin_recFIN_BANC: TIBStringField;
    fin_recFIN_DBAN: TIBStringField;
    fin_recFIN_AGEN: TIBStringField;
    fin_recFIN_CONT: TIBStringField;
    fin_recFIN_NCHQ: TIBStringField;
    fin_recFIN_MCHQ: TSmallintField;
    fin_recFIN_TIPO: TIBStringField;
    fin_recFIN_STFI: TIBStringField;
    fin_recFIN_STCO: TIBStringField;
    fin_recFIN_VALO: TIBBCDField;
    fin_recFIN_VPAG: TIBBCDField;
    fin_recFIN_VPEN: TIBBCDField;
    fin_recFIN_OBSE: TMemoField;
    fin_recFIN_STA: TIBStringField;
    fin_recFIN_DCAN: TDateField;
    fin_recFIN_CPPL: TIntegerField;
    fin_recFIN_CCUS: TIntegerField;
    fin_recFIN_CBCO: TIntegerField;
    fin_recFIN_PORT: TIBStringField;
    fin_recFIN_VMUL: TIBBCDField;
    fin_recFIN_PMUL: TIBBCDField;
    fin_recFIN_VJUR: TIBBCDField;
    fin_recFIN_PJUR: TIBBCDField;
    fin_recFIN_VDES: TIBBCDField;
    fin_recFIN_PDES: TIBBCDField;
    fin_recFIN_DESC: TIBStringField;
    fin_recFIN_CDCO: TIntegerField;
    fin_recFIN_CDBA: TIBStringField;
    fin_recFIN_DEBA: TIBStringField;
    fin_recFIN_DBAI: TDateField;
    fin_recFIN_IDBX: TIBStringField;
    fin_recFIN_VENC: TIBBCDField;
    fin_recCLI_FANT: TIBStringField;
    fin_recCLI_RAZA: TIBStringField;
    fin_recCLI_CNPJ: TIBStringField;
    fin_recCLI_CPF: TIBStringField;
    edcdbx: TdxEdit;
    cai_mov: TIBQuery;
    cai_movID: TIntegerField;
    cai_movCAI_CCAB: TIntegerField;
    cai_movCAI_CTSR: TIntegerField;
    cai_movCAI_DESC: TIBStringField;
    cai_movCAI_DOCT: TIBStringField;
    cai_movCAI_DCAD: TDateField;
    cai_movCAI_HCAD: TTimeField;
    cai_movCAI_SANT: TIBBCDField;
    cai_movCAI_CRED: TIBBCDField;
    cai_movCAI_DEBI: TIBBCDField;
    cai_movCAI_SATU: TIBBCDField;
    cai_movCAI_CONC: TSmallintField;
    cai_movCAI_CDBX: TIntegerField;
    Label2: TLabel;
    edbcon: TdxButtonEdit;
    eddcon: TdxPickEdit;
    cai_movCAI_BCON: TIntegerField;
    cai_movCAI_DCON: TIBStringField;
    aux: TIBQuery;
    lan_chqFIN_CDRD: TIntegerField;
    lan_chqFIN_DFIN: TIBStringField;
    lan_chqFIN_CPPL: TIntegerField;
    lan_chqFIN_CCUS: TIntegerField;
    lan_chqFIN_CDCO: TIntegerField;
    lan_chqFIN_CDBA: TIBStringField;
    lan_chqFIN_DEBA: TIBStringField;
    lan_chqFIN_CTNR: TIBStringField;
    lan_chqFIN_VMUL: TIBBCDField;
    lan_chqFIN_PMUL: TIBBCDField;
    lan_chqFIN_VJUR: TIBBCDField;
    lan_chqFIN_PJUR: TIBBCDField;
    lan_chqFIN_VDES: TIBBCDField;
    lan_chqFIN_PDES: TIBBCDField;
    lan_chqFIN_VCHQ: TIBBCDField;
    lan_chqFIN_DERD: TIBStringField;
    lan_chqFIN_DTST: TDateTimeField;
    procedure edctsrButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edctsrValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edvaloValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure siSAVClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure siSAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure eddescExit(Sender: TObject);
    procedure edbconValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure eddconExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    procedure NOVO_LANCTO;
    procedure ALTERA_LANCTO;
    procedure ABRE_TABELA;
    procedure SALVA_LANCTO;
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmcai_sar_edi: Tfrmcai_sar_edi;

implementation

uses uPrincipal, pcai_tsr, pcai_mov;

{$R *.dfm}

procedure Tfrmcai_sar_edi.ALTERA_LANCTO;
begin
  edctsr.Tag  := 1;
  edctsr.Text := cai_movCAI_CTSR.AsString;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAI_DESC,CAI_TIPO FROM CAI_TSR');
    SQL.Add('WHERE  ID = '''+edctsr.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      edctsr.SetFocus;
      raise exception.Create('Código do tipo de sangria \ reforço não encontrado !');
    end;
    eddesc.Text := fields[0].AsString;
    edtipo.Text := fields[1].AsString;
  end;

  eddoct.Text := cai_movCAI_DOCT.AsString;
  eddcad.Date := cai_movCAI_DCAD.AsDateTime;
  edtcad.Time := cai_movCAI_HCAD.AsDateTime;
  edcdbx.Text := cai_movCAI_CDBX.AsString;
  edbcon.Text := cai_movCAI_BCON.AsString;
  eddcon.Text := cai_movCAI_DCON.AsString;

  if edtipo.Text = 'SAÍDA' then
  edvalo.Text := formatFloat('#,0.00###',cai_movCAI_DEBI.AsFloat) else
  edvalo.Text := formatFloat('#,0.00###',cai_movCAI_CRED.AsFloat);

  if cai_movCAI_CDBX.AsInteger > 0 then
  begin
    with fin_rec do
    begin
      SQL.Clear;
      SQL.Add('SELECT FIN_REC_CAR_REC.*,CAD_CLI.CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF');
      SQL.Add('FROM   CAD_CLI,'+SLPrincipal.Values['fin_rec_car_rec']+' "FIN_REC_CAR_REC"');
      SQL.Add('WHERE  CAD_CLI.ID = FIN_REC_CAR_REC.FIN_CCLI');
      SQL.Add('AND    FIN_CDBX   = '''+edcdbx.Text+'''');
      Open;
    end;

    while not fin_rec.Eof do
    begin
      lan_chq.Append;
      lan_chqID.Value       := 0;
      lan_chqFIN_CCAB.Value := fin_recFIN_CCAB.Value;
      lan_chqFIN_CDBX.Value := fin_recFIN_CDBX.Value;
      lan_chqFIN_CDCX.Value := fin_recFIN_CDCX.Value;
      lan_chqFIN_CCLI.Value := fin_recFIN_CCLI.Value;
      lan_chqFIN_DCLI.Value := fin_recCLI_FANT.Value;
      lan_chqFIN_RCLI.Value := fin_recCLI_RAZA.Value;
      lan_chqFIN_CVEN.Value := fin_recFIN_CVEN.Value;
      lan_chqFIN_CREP.Value := fin_recFIN_CREP.Value;
      lan_chqFIN_CONC.Value := fin_recFIN_CONC.Value;
      lan_chqFIN_DCAD.Value := fin_recFIN_DCAD.Value;
      lan_chqFIN_DVEN.Value := fin_recFIN_DVEN.Value;
      lan_chqFIN_DPAG.Value := fin_recFIN_DPAG.Value;
      lan_chqFIN_DMED.Value := fin_recFIN_DMED.Value;
      lan_chqFIN_DATR.Value := fin_recFIN_DATR.Value;
      lan_chqFIN_STDO.Value := fin_recFIN_STDO.Value;
      lan_chqFIN_DOCT.Value := fin_recFIN_DOCT.Value;
      lan_chqFIN_BANC.Value := fin_recFIN_BANC.Value;
      lan_chqFIN_DBAN.Value := fin_recFIN_DBAN.Value;
      lan_chqFIN_AGEN.Value := fin_recFIN_AGEN.Value;
      lan_chqFIN_CONT.Value := fin_recFIN_CONT.Value;
      lan_chqFIN_NCHQ.Value := fin_recFIN_NCHQ.Value;
      lan_chqFIN_MCHQ.Value := fin_recFIN_MCHQ.Value;
      lan_chqFIN_TIPO.Value := fin_recFIN_TIPO.Value;
      lan_chqFIN_STFI.Value := fin_recFIN_STFI.Value;
      lan_chqFIN_STCO.Value := fin_recFIN_STCO.Value;
      lan_chqFIN_VALO.Value := fin_recFIN_VALO.Value;
      lan_chqFIN_VPAG.Value := fin_recFIN_VPAG.Value;
      lan_chqFIN_VPEN.Value := fin_recFIN_VPEN.Value;
      lan_chqFIN_OBSE.Value := fin_recFIN_OBSE.Value;
      lan_chqFIN_STA.Value  := fin_recFIN_STA.Value ;
      lan_chqFIN_DBAI.Value := fin_recFIN_DBAI.Value;
      lan_chqFIN_VENC.Value := fin_recFIN_VENC.Value;
      if fin_recCLI_CNPJ.AsString <> '' then
      lan_chqFIN_CPF.Value  := fin_recCLI_CNPJ.AsString else
      lan_chqFIN_CPF.Value  := fin_recCLI_CPF.AsString;
      lan_chq.Post;
      tSHEILD.CommitRetaining;

      fin_rec.Next;
    end;
  end;
end;

procedure Tfrmcai_sar_edi.NOVO_LANCTO;
begin
  edid.Text   := '0';
  edctsr.Tag  := 0;
  edbcon.Text := '0';
  eddcon.Text := '';
  edctsr.Text := '';
  eddoct.Text := '';
  eddcad.Date := strtodate(SLPrincipal.Values['data_sistema']);
  edtcad.Time := time;

  if frmcai_sar_edi.edcdcx.Hint <> 'Custodia' then
  eddesc.Text := '';
end;

procedure Tfrmcai_sar_edi.edctsrButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmcai_tsr := Tfrmcai_tsr.Create(self);
  try
    frmcai_tsr.FormStyle := fsNormal;
    frmcai_tsr.Visible   := false;
    frmcai_tsr.Position  := poDesktopCenter;
    frmcai_tsr.ShowModal;
  finally
    if frmcai_tsr.editado then
    begin
      eddesc.Items.Clear;
      frmcai_tsr.cadastro.First;
      while not frmcai_tsr.cadastro.Eof do
      begin
        eddesc.Items.Add(frmcai_tsr.cadastroCAI_DESC.AsString);
        frmcai_tsr.cadastro.Next;
      end;
    end;
    freeAndnil(frmcai_tsr);
    frmcai_tsr.Free;
  end;
end;

procedure Tfrmcai_sar_edi.edctsrValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edctsr.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAI_DESC FROM CAI_TSR');
    SQL.Add('WHERE  ID = '''+edctsr.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      edctsr.SetFocus;
      raise exception.Create('Código do tipo de sangria \ suprimento não encontrado !');
    end;
    eddesc.Text := fields[0].AsString;
  end
  else
    eddesc.Text := '';

  edbcon.SetFocus;
end;

procedure Tfrmcai_sar_edi.ABRE_TABELA;
begin
  if not tSHEILD.Active then
  tSHEILD.StartTransaction;

  with lan_chq do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM FIN_REC_REC');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_REC_REC');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;
end;

procedure Tfrmcai_sar_edi.FormCreate(Sender: TObject);
begin
  campo_pesquisa := '';

  Top    := 0;
  Left   := 0;
  if (frmprincipal.WindowState = wsMaximized) and (position = poDesigned) then
  Height := frmprincipal.Height-17;

  if not IBTra.Active then
  IBTra.StartTransaction;

  edcdbx.Text := '0';
  ABRE_TABELA;

  if tag = 1 then
  timer1.Enabled := false;
end;

procedure Tfrmcai_sar_edi.Timer1Timer(Sender: TObject);
begin
  edtcad.Time := time;
  edtcad.Update;
end;

procedure Tfrmcai_sar_edi.edvaloValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  siSAV.Click;
end;

procedure Tfrmcai_sar_edi.siSAVClick(Sender: TObject);
begin
  activecontrol := nil;

  if oYesNo(handle,'Salvar Lançamento ?') = mrno then
  abort;

  if frmcai_sar_edi.edcdcx.Hint = 'Custodia' then
  begin
    if (edbcon.Text = '') or (edbcon.Text = '') then
    raise exception.Create('Conta não Selecionada !');
  end;
    
  lan_chq.First;

  with consulta do
  begin
    if (not lan_chq.Fields[0].IsNull) and (edcdbx.Text = '0') then
    begin
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_BAI_REC,1) FROM RDB$DATABASE');
      Open;
      IBtra.CommitRetaining;
      edcdbx.Text := fields[0].AsString;
    end;

    if frmcai_sar_edi.Tag = 0 then
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAI_MOV');
      SQL.Add('WHERE  CAI_CCAB = '''+edcdcx.Text+'''');
      SQL.Add('AND    CAI_DOCT = '''+eddoct.Text+'''');
      Open;

      if not fields[0].IsNull then
      raise exception.Create('Número de documento já lançado para esse caixa !');
    end;  
  end;

  if (edctsr.Text = '') or (edctsr.Text = '0') then
  raise exception.Create('Código do tipo de sangria \ reforço não selecionado !');

  if (eddesc.Text = '') then
  raise exception.Create('Descrição do tipo de sangria \ reforço não selecionado !');

  if oTextToValor(edvalo.Text) <= 0 then
  raise exception.Create('Valor do tipo de sangria \ reforço não selecionado !');

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAI_TSR');
    SQL.Add('WHERE  CAI_DESC = '''+eddesc.Text+'''');
    Open;

    if fields[0].IsNull then
    raise exception.Create('Descrição do tipo de sangria \ reforço não cadastro !');
  end;  

  if edbcon.Text = '' then
  begin
    edbcon.Text := '0';
    eddcon.Text := '';
  end;
    
  try
    timer1.Enabled        := false;
    try
      ibSP.StoredProcName := 'SP_CAI_MOV';
      ibSP.Prepare;

      case frmcai_sar_edi.Tag of
        0: ibSP.Params[0].Value := null;
        1: ibSP.Params[0].Value := edid.Text;
      end;

      ibSP.ParamByName('CCAB').Value := edcdcx.Text;
      ibSP.ParamByName('CTSR').Value := edctsr.Text;
      ibSP.ParamByName('CDBX').Value := edcdbx.Text;
      ibSP.ParamByName('DESC').Value := eddesc.Text;
      ibSP.ParamByName('DOCT').Value := eddoct.Text;
      ibSP.ParamByName('DCAD').Value := eddcad.Text;
      ibSP.ParamByName('HCAD').Value := edtcad.text;
      ibSP.ParamByName('SANT').Value := 0;

      if edtipo.Text = 'SAÍDA' then
      begin
        ibSP.ParamByName('CRED').Value := 0;
        ibSP.ParamByName('DEBI').Value := oTextToValor(edvalo.Text);
      end
      else
      begin
        ibSP.ParamByName('CRED').Value := oTextToValor(edvalo.Text);
        ibSP.ParamByName('DEBI').Value := 0;
      end;

      ibSP.ParamByName('SATU').Value := 0;
      ibSP.ParamByName('CONC').Value := 1;
      ibSP.ParamByName('BCON').Value := edbcon.Text;
      ibSP.ParamByName('DCON').Value := eddcon.Text;
      ibSP.ExecProc;
      IBTra.CommitRetaining;

      case frmcai_sar_edi.Tag of
        0: frmprincipal.Log_Eve('Caixa','Sangria \ Suprimento',LOWERCASE(edtipo.Text),cai_movID.AsString,cai_movID.AsString,LOWERCASE(eddesc.Text),'','');
        1: frmprincipal.Log_Eve('Caixa','Sangria \ Suprimento',LOWERCASE(edtipo.Text),cai_movID.AsString,cai_movID.AsString,LOWERCASE(eddesc.Text),'','');
      end;

      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT SUM(CAI_CRED),SUM(CAI_DEBI),SUM(CAI_CRED-CAI_DEBI) FROM CAI_MOV');
        SQL.Add('WHERE  CAI_CCAB = '''+edcdcx.Text+'''');
        Open;
      end;

      with Aux do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE CAI_LAF');
        SQL.Add('SET    CAI_CRED = '''+oStrTran(consulta.Fields[0].AsString,',','.')+''',');
        SQL.Add('       CAI_DEBI = '''+oStrTran(consulta.Fields[1].AsString,',','.')+''',');
        SQL.Add('       CAI_SATU = '''+oStrTran(consulta.Fields[2].AsString,',','.')+'''');
        SQL.Add('WHERE  ID       = '''+edcdcx.Text+'''');
        ExecSQL;
      end;

      if not lan_chq.Fields[0].IsNull then
      SALVA_LANCTO;

      editado := true;
      IBTra.Commit;
      IBTra.StartTransaction;

      Close;
    except
      editado := false;
      IBTRA.Rollback;
      IBTra.StartTransaction;
    end;
  finally
    timer1.Enabled := true;
  end;
end;

procedure Tfrmcai_sar_edi.SALVA_LANCTO;
begin
  with Consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM '+SLPrincipal.Values['fin_rec_car_bai']);
    SQL.Add('WHERE  FIN_CDBX = '''+edcdbx.Text+'''');
    ExecSQL;

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM '+SLPrincipal.Values['fin_rec_car_rec']);
    SQL.Add('WHERE  FIN_CDBX = '''+edcdbx.Text+'''');
    ExecSQL;
  end;

  lan_chq.First;
  
  ibSP.StoredProcName := 'SP_FIN_REC_BAI';
  ibSP.Prepare;

  ibSP.ParamByName('fin').Value := 'FIN_REC_CAR_BAI';
  if frmprincipal.parametrosID.AsInteger > 1 then
  ibSP.ParamByName('fin').Value := 'FIN_REC_CAR_BAI_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

  ibSP.ParamByName('id').Value   := 0;
  ibSP.ParamByName('CCAB').Value := 0;
  ibSP.ParamByName('DFIN').Value := eddesc.Text;
  ibSP.ParamByName('CDBX').Value := edcdbx.Text;
  ibSP.ParamByName('CDCX').Value := edcdcx.Text;
  ibSP.ParamByName('STDO').Value := 'C 0';
  ibSP.ParamByName('CONC').Value := 1;
  ibSP.ParamByName('CCLI').Value := lan_chqFIN_CCLI.AsInteger;
  ibSP.ParamByName('CVEN').Value := lan_chqFIN_CVEN.AsInteger;
  ibSP.ParamByName('CREP').Value := lan_chqFIN_CREP.AsInteger;
  ibSP.ParamByName('CTNR').Value := '';

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM FIN_PPL');
    SQL.Add('WHERE  FIN_DFIN = ''VENDA DIRETA''');
    Open;
    ibSP.ParamByName('CPPL').Value := fields[0].AsInteger;

    SQL.Clear;
    SQL.Add('SELECT ID FROM FIN_CUS');
    SQL.Add('WHERE  FIN_DCUS = ''VENDAS''');
    Open;
    ibSP.ParamByName('CCUS').Value := fields[0].AsInteger;
  end;

  ibSP.ParamByName('DCAD').Value := eddcad.Date;
  ibSP.ParamByName('DBAI').Value := eddcad.Date;
  ibSP.ParamByName('DVEN').Value := eddcad.Date;
  ibSP.ParamByName('DOCT').Value := copy(eddesc.Text,1,2)+oStrZero(lan_chqFIN_CCLI.AsInteger,5)+oStrZero(strtoint(edctsr.Text),13);
  ibSP.ParamByName('BANC').Value := '';
  ibSP.ParamByName('DBAN').Value := '';
  ibSP.ParamByName('AGEN').Value := '';
  ibSP.ParamByName('CONT').Value := '';
  ibSP.ParamByName('NCHQ').Value := '';
  ibSP.ParamByName('TIPO').Value := eddesc.Text;
  ibSP.ParamByName('STFI').Value := 'PAGO';
  ibSP.ParamByName('CDCO').Value := 0;
  ibSP.ParamByName('CDBA').Value := '';
  ibSP.ParamByName('DEBA').Value := '';
  ibSP.ParamByName('VALO').Value := oTextToValor(edvalo.Text);
  ibSP.ParamByName('DPAG').Value := eddcad.Date;
  ibSP.ParamByName('VPAG').Value := oTextToValor(edvalo.Text);
  ibSP.ParamByName('VPEN').Value := 0;
  ibSP.ParamByName('OBSE').Value := '';
  ibSP.ParamByName('STA').Value  := '0';
  ibSP.ParamByName('BCON').Value := edbcon.Text;
  ibSP.ParamByName('DCON').Value := eddcon.Text;
  ibSP.ParamByName('LOTE').Value := 0;
  ibSP.ParamByName('DLOT').Value := 0;
  ibSP.ParamByName('CDCH').Value := 0;
  ibSP.ExecProc;

  while not lan_chq.Eof do
  begin
    ibSP.StoredProcName := 'SP_FIN_REC_REC';
    ibSP.Prepare;

    ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_REC';
    if frmprincipal.parametrosID.AsInteger > 1 then
    ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_REC_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

    ibSP.ParamByName('id').Value   := 0;
    ibSP.ParamByName('CCAB').Value := 0;
    ibSP.ParamByName('DFIN').Value := eddesc.Text;
    ibSP.ParamByName('CDBX').Value := edcdbx.Text;
    ibSP.ParamByName('CDCX').Value := edcdcx.Text;
    ibSP.ParamByName('STDO').Value := 'C 0';
    ibSP.ParamByName('CONC').Value := 1;

    ibSP.ParamByName('CCLI').Value := lan_chqFIN_CCLI.AsInteger;
    ibSP.ParamByName('CVEN').Value := lan_chqFIN_CVEN.AsInteger;
    ibSP.ParamByName('CREP').Value := lan_chqFIN_CREP.AsInteger;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM FIN_PPL');
      SQL.Add('WHERE  FIN_DFIN = ''VENDA DIRETA''');
      Open;
      ibSP.ParamByName('CPPL').Value := fields[0].AsInteger;

      SQL.Clear;
      SQL.Add('SELECT ID FROM FIN_CUS');
      SQL.Add('WHERE  FIN_DCUS = ''VENDAS''');
      Open;
      ibSP.ParamByName('CCUS').Value := fields[0].AsInteger;
    end;

    ibSP.ParamByName('DCAD').Value := eddcad.Date;
    ibSP.ParamByName('DBAI').Value := eddcad.Date;
    ibSP.ParamByName('DVEN').Value := lan_chqFIN_DVEN.AsDateTime;
    ibSP.ParamByName('DOCT').Value := eddoct.Text;
    ibSP.ParamByName('BANC').Value := lan_chqFIN_BANC.AsString;
    ibSP.ParamByName('DBAN').Value := eddesc.Text;
    ibSP.ParamByName('AGEN').Value := lan_chqFIN_AGEN.AsString;
    ibSP.ParamByName('CONT').Value := lan_chqFIN_CONT.AsString;
    ibSP.ParamByName('NCHQ').Value := lan_chqFIN_NCHQ.AsString;

    ibSP.ParamByName('TIPO').Value := lan_chqFIN_TIPO.AsString;
    ibSP.ParamByName('STFI').Value := 'PAGO';
    ibSP.ParamByName('CDCO').Value := 0;
    ibSP.ParamByName('CDBA').Value := '';
    ibSP.ParamByName('DEBA').Value := '';
    ibSP.ParamByName('VALO').Value := lan_chqFIN_VALO.AsFloat;
    ibSP.ParamByName('DPAG').Value := lan_chqFIN_DVEN.AsDateTime;
    ibSP.ParamByName('VPAG').Value := lan_chqFIN_VALO.AsFloat;
    ibSP.ParamByName('VPEN').Value := 0;
    ibSP.ParamByName('OBSE').Value := lan_chqFIN_OBSE.AsString;
    ibSP.ParamByName('STA').Value  := '0';
    ibSP.ParamByName('BCON').Value := edbcon.Text;
    ibSP.ParamByName('DCON').Value := eddcon.Text;
    ibSP.ParamByName('LOTE').Value := 0;
    ibSP.ParamByName('DLOT').Value := 0;
    ibSP.ParamByName('CDCH').Value := 0;
    ibSP.ExecProc;

    lan_chq.Next;
  end;
end;

procedure Tfrmcai_sar_edi.FormShow(Sender: TObject);
begin
  inherited;
  if tag = 1 then
  ALTERA_LANCTO
  else
  NOVO_LANCTO;
end;

procedure Tfrmcai_sar_edi.siSAIRClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcai_sar_edi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if frmcai_sar_edi <> nil then
  begin
    frmcai_sar_edi.Release;
    frmcai_sar_edi := nil;
  end;
end;

procedure Tfrmcai_sar_edi.eddescExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if eddesc.Text = eddesc.Hint then
    exit;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,CAI_TIPO FROM CAI_TSR');
      SQL.Add('WHERE  CAI_DESC = '''+eddesc.Text+'''');
      Open;

      if not fields[0].IsNull then
      begin
        edctsr.Text := fields[0].AsString;
        edtipo.Text := fields[1].AsString;
        eddoct.Text := copy(eddesc.Text,1,2)+oStrZero(strtoint(edctsr.Text),18);

        if edcdcx.Hint = 'Custodia' then
        begin
          aux.SQL.Clear;
          aux.SQL.Add('SELECT GEN_ID(ID_NO_BAI_REC,1) FROM RDB$DATABASE');
          aux.Open;
          IBtra.CommitRetaining;

          eddoct.Text := copy(eddesc.Text,1,2)+'CUSTODIA'+oStrZero(aux.Fields[0].AsInteger,10);
        end;  
      end else
      begin
        messageBox(handle,'Descrição do Tipo de Lançamento não encontrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
        exit;
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

procedure Tfrmcai_sar_edi.edbconValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edbcon.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT BAN_DCON FROM CAD_BAN_CON');
    SQL.Add('WHERE  ID = '''+edbcon.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      edbcon.SetFocus;
      raise exception.Create('Código da conta bancária não encontrada !');
    end;
    eddcon.Text := fields[0].AsString;
  end
  else
  eddcon.Text := '';
end;

procedure Tfrmcai_sar_edi.eddconExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_BAN_CON');
      SQL.Add('WHERE  BAN_DCON = '''+eddcon.Text+'''');
      Open;

      if not fields[0].IsNull then
      edbcon.Text := fields[0].AsString else
      begin
        edbcon.Text := '0';
        eddcon.Text := '';
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

procedure Tfrmcai_sar_edi.FormActivate(Sender: TObject);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT    BAN_DCON FROM CAD_BAN_CON');
    SQL.Add('GROUP  BY BAN_DCON');
    SQL.Add('ORDER  BY BAN_DCON');
    Open;

    eddcon.Items.Clear;;
    while not eof do
    begin
      eddcon.Items.Add(fields[0].AsString);
      next;
    end;

    if edcdcx.Hint = 'Custodia' then
    begin
      eddesc.Items.Add('CHEQUE A VISTA');
      eddesc.Items.Add('CHEQUE PRE-DATADO');
    end else
    begin
      SQL.Clear;
      SQL.Add('SELECT    CAI_DESC FROM CAI_TSR');
      SQL.Add('GROUP  BY CAI_DESC');
      SQL.Add('ORDER  BY CAI_DESC');
      Open;

      eddesc.Items.Clear;
      while not eof do
      begin
        eddesc.Items.Add(fields[0].AsString);
        next;
      end;
    end;  
  end;
end;

end.















