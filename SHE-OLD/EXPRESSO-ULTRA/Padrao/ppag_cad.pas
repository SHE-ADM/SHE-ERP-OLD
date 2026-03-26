unit ppag_cad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxEditor,
  dxExEdtr, dxEdLib, dxCntner, StdCtrls, dxPageControl, Buttons, rxSpeedbar;

type
  Tfrmpag_cad = class(Tfrmpadr3)
    psq_for: TIBQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label27: TLabel;
    Label13: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    edconc: TdxEdit;
    edccab: TdxEdit;
    edcdbx: TdxEdit;
    edcdcx: TdxEdit;
    edid: TdxEdit;
    edcppl: TdxButtonEdit;
    cbdppl: TdxPickEdit;
    edccus: TdxButtonEdit;
    cbdcus: TdxPickEdit;
    edcfor: TdxButtonEdit;
    eddven: TdxDateEdit;
    cbstfi: TdxImageEdit;
    GroupBox1: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label34: TLabel;
    edvmul: TdxCalcEdit;
    edpmul: TdxCalcEdit;
    edvjur: TdxCalcEdit;
    edpjur: TdxCalcEdit;
    edvdes: TdxCalcEdit;
    edpdes: TdxCalcEdit;
    edddes: TdxDateEdit;
    edvpen: TdxEdit;
    edvenc: TdxEdit;
    eddcad: TdxDateEdit;
    eddpag: TdxDateEdit;
    eddoct: TdxButtonEdit;
    GroupBox2: TGroupBox;
    edobse: TdxMemo;
    cbprev: TdxImageEdit;
    Label67: TLabel;
    cbdupl: TdxImageEdit;
    Label14: TLabel;
    psq_forID: TIntegerField;
    psq_forFOR_FANT: TIBStringField;
    psq_forFOR_RAZA: TIBStringField;
    psq_forFOR_CNPJ: TIBStringField;
    psq_forFOR_CPF: TIBStringField;
    psq_forFOR_CRED: TIBBCDField;
    psq_forFOR_CID: TIBStringField;
    psq_forFOR_BAI: TIBStringField;
    psq_forFOR_LOGR: TIBStringField;
    psq_forFOR_ESTA: TIBStringField;
    psq_forFOR_STA: TIBStringField;
    psq_forFOR_STAV: TIBStringField;
    psq_forFOR_DPAG: TIBStringField;
    psq_forFOR_OBSO: TMemoField;
    psq_forFOR_VDSC: TIBBCDField;
    psq_forFOR_DCAD: TDateField;
    psq_forFOR_DFUN: TDateField;
    psq_forFOR_DALT: TDateField;
    psq_forFOR_DULT: TDateField;
    eddbai: TdxDateEdit;
    cbdfor: TdxPickEdit;
    edippl: TdxEdit;
    Label5: TLabel;
    eddfin: TdxEdit;
    edvalo: TdxButtonEdit;
    cadastro: TIBDataSet;
    cadastroID: TIntegerField;
    cadastroFIN_CCAB: TIntegerField;
    cadastroFIN_CDBX: TIntegerField;
    cadastroFIN_CDCX: TIntegerField;
    cadastroFIN_CFOR: TIntegerField;
    cadastroFIN_CVEN: TIntegerField;
    cadastroFIN_CREP: TIntegerField;
    cadastroFIN_PRAZ: TSmallintField;
    cadastroFIN_ATRA: TSmallintField;
    cadastroFIN_CONC: TSmallintField;
    cadastroFIN_DCAD: TDateField;
    cadastroFIN_DVEN: TDateField;
    cadastroFIN_DPAG: TDateField;
    cadastroFIN_DMED: TDateField;
    cadastroFIN_DATR: TDateField;
    cadastroFIN_STDO: TIBStringField;
    cadastroFIN_DOCT: TIBStringField;
    cadastroFIN_BANC: TIBStringField;
    cadastroFIN_DBAN: TIBStringField;
    cadastroFIN_AGEN: TIBStringField;
    cadastroFIN_CONT: TIBStringField;
    cadastroFIN_NCHQ: TIBStringField;
    cadastroFIN_MCHQ: TSmallintField;
    cadastroFIN_TIPO: TIBStringField;
    cadastroFIN_STFI: TIBStringField;
    cadastroFIN_STCO: TIBStringField;
    cadastroFIN_VALO: TIBBCDField;
    cadastroFIN_VPAG: TIBBCDField;
    cadastroFIN_VPEN: TIBBCDField;
    cadastroFIN_OBSE: TMemoField;
    cadastroFIN_STA: TIBStringField;
    cadastroFIN_PREV: TIBStringField;
    cadastroFIN_DUPL: TIBStringField;
    cadastroFIN_DCAN: TDateField;
    cadastroFIN_CPPL: TIntegerField;
    cadastroFIN_CCUS: TIntegerField;
    cadastroFIN_CBCO: TIntegerField;
    cadastroFIN_PORT: TIBStringField;
    cadastroFIN_VMUL: TIBBCDField;
    cadastroFIN_PMUL: TIBBCDField;
    cadastroFIN_VJUR: TIBBCDField;
    cadastroFIN_PJUR: TIBBCDField;
    cadastroFIN_VDES: TIBBCDField;
    cadastroFIN_PDES: TIBBCDField;
    cadastroFIN_DESC: TIBStringField;
    cadastroFIN_CDCO: TIntegerField;
    cadastroFIN_CDBA: TIBStringField;
    cadastroFIN_DEBA: TIBStringField;
    cadastroFIN_DBAI: TDateField;
    cadastroFIN_IDBX: TIBStringField;
    cadastroFIN_VENC: TIBBCDField;
    cadastroFIN_DDES: TDateField;
    tSHEILD: TIBTransaction;
    edvpag: TdxButtonEdit;
    consulta_S: TIBQuery;
    fin_rec_rec: TIBQuery;
    fin_rec_recID: TIntegerField;
    fin_rec_recFIN_CCAB: TIntegerField;
    fin_rec_recFIN_CDBX: TIntegerField;
    fin_rec_recFIN_CDCX: TIntegerField;
    fin_rec_recFIN_CCLI: TIntegerField;
    fin_rec_recFIN_DCLI: TIBStringField;
    fin_rec_recFIN_RCLI: TIBStringField;
    fin_rec_recFIN_CVEN: TIntegerField;
    fin_rec_recFIN_VEND: TIBStringField;
    fin_rec_recFIN_CREP: TIntegerField;
    fin_rec_recFIN_DREP: TIBStringField;
    fin_rec_recFIN_RREP: TIBStringField;
    fin_rec_recFIN_PRAZ: TSmallintField;
    fin_rec_recFIN_ATRA: TSmallintField;
    fin_rec_recFIN_CONC: TSmallintField;
    fin_rec_recFIN_DCAD: TDateField;
    fin_rec_recFIN_DVEN: TDateField;
    fin_rec_recFIN_DPAG: TDateField;
    fin_rec_recFIN_DMED: TDateField;
    fin_rec_recFIN_DATR: TDateField;
    fin_rec_recFIN_STDO: TIBStringField;
    fin_rec_recFIN_DOCT: TIBStringField;
    fin_rec_recFIN_BANC: TIBStringField;
    fin_rec_recFIN_DBAN: TIBStringField;
    fin_rec_recFIN_AGEN: TIBStringField;
    fin_rec_recFIN_CONT: TIBStringField;
    fin_rec_recFIN_NCHQ: TIBStringField;
    fin_rec_recFIN_MCHQ: TSmallintField;
    fin_rec_recFIN_TIPO: TIBStringField;
    fin_rec_recFIN_STFI: TIBStringField;
    fin_rec_recFIN_STCO: TIBStringField;
    fin_rec_recFIN_VALO: TIBBCDField;
    fin_rec_recFIN_VPAG: TIBBCDField;
    fin_rec_recFIN_VPEN: TIBBCDField;
    fin_rec_recFIN_OBSE: TMemoField;
    fin_rec_recFIN_STA: TIBStringField;
    fin_rec_recFIN_COBR: TIBStringField;
    fin_rec_recFIN_DBAI: TDateField;
    fin_rec_recFIN_VENC: TIBBCDField;
    fin_pag_rec: TIBQuery;
    fin_pag_recID: TIntegerField;
    fin_pag_recFIN_CDBX: TIntegerField;
    fin_pag_recFIN_DCAD: TDateField;
    fin_pag_recFIN_DVEN: TDateField;
    fin_pag_recFIN_TIPO: TIBStringField;
    fin_pag_recFIN_BANC: TIBStringField;
    fin_pag_recFIN_DBAN: TIBStringField;
    fin_pag_recFIN_AGEN: TIBStringField;
    fin_pag_recFIN_CONT: TIBStringField;
    fin_pag_recFIN_NCHQ: TIBStringField;
    fin_pag_recFIN_PRAZ: TSmallintField;
    fin_pag_recFIN_VALO: TIBBCDField;
    fin_pag_recFIN_OBSE: TMemoField;
    fin_pag_recFIN_STA: TIBStringField;
    fin_pag_recFIN_DOCT: TIBStringField;
    fin_pag_recFIN_CCAB: TIntegerField;
    SpeedButton1: TSpeedButton;
    fin_rec_recFIN_CPF: TIBStringField;
    procedure edcpplButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edcpplValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edccusValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edccusButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edcforButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edcforValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure siSAVClick(Sender: TObject);
    procedure edvmulValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpmulValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvjurValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpjurValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvdesValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpdesValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbdpplExit(Sender: TObject);
    procedure cbdcusExit(Sender: TObject);
    procedure cbdforExit(Sender: TObject);
    procedure cbstfiChange(Sender: TObject);
    procedure eddoctValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvmulExit(Sender: TObject);
    procedure edvaloButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edvpagButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edvpagKeyPress(Sender: TObject; var Key: Char);
    procedure edvaloValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    editado: boolean;
    procedure NOVO_LANCAMENTO;
    procedure PESQUISA_FORNECEDOR(pesq,chave: string;cdsc: double);
    procedure ALTERA_ENCARGO;
  end;

var
  frmpag_cad: Tfrmpag_cad;

implementation

uses p_funcoes, ptab_fin_ppl, ptab_fin_cus, uPrincipal, pcad_for,
  ppag_cad_dup, plan_chq, prec_pag_ban, ppag_cad_grd, ppag_ven_dup;

{$R *.dfm}

procedure Tfrmpag_cad.NOVO_LANCAMENTO;
begin
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM FIN_REC_REC');
    ExecSQL;
    tSHEILD.CommitRetaining;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_'+TSConsulta.Values['fin_pag']+',0) FROM RDB$DATABASE');
    Open;
    eddoct.Text := inttostr(fields[0].AsInteger+1);
    edcfor.Text := '';
    cbdfor.Text := '';

    SQL.Clear;
    SQL.Add('SELECT ID,FOR_FANT FROM CAD_FOR');
    SQL.Add('WHERE  ID = '''+frmprincipal.parametrosID.AsString+'''');
    Open;
    if fields[1].AsString = frmprincipal.parametrosPAR_FANT.AsString then
    begin
      edcfor.Text := fields[0].AsString;
      cbdfor.Text := fields[1].AsString;
    end;
  end;

  eddcad.Date := strtodate(TSConsulta.Values['data_sistema']);
  edccab.Text := '0';
  edcdbx.Text := '0';
  edid.Text   := '0';
  eddfin.Text := '';
  edippl.Text := '0';
  edcppl.Text := '';
  cbdppl.Text := '';
  edccus.Text := '';
  cbdcus.Text := '';
  cbstfi.Text := 'PENDENTE';
  cbprev.Text := 'NÃO';
  cbdupl.Text := 'NÃO';
  eddbai.Text := '';
  eddpag.Text := '';
  edddes.Text := '';
  edvalo.Text := '0,00';
  edvpen.Text := '0,00';
  edvpag.Text := '0,00';
  edvenc.Text := '0,00';
  edvmul.Text := '0,00';
  edpmul.Text := '0,00';
  edvjur.Text := '0,00';
  edpjur.Text := '0,00';
  edvdes.Text := '0,00';
  edpdes.Text := '0,00';
end;

procedure Tfrmpag_cad.PESQUISA_FORNECEDOR(pesq,chave: string;cdsc: double);
begin
  try
    tag := 1;

    with psq_for do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAD_FOR.ID,FOR_FANT,FOR_RAZA,FOR_CNPJ,FOR_CPF,FOR_CRED,FOR_CID,FOR_BAI,FOR_LOGR,FOR_ESTA,FOR_STA,FOR_STAV,FOR_DPAG,FOR_OBSO,FOR_VDSC,');
      SQL.Add('       FOR_DCAD,FOR_DFUN,FOR_DALT,FOR_DULT,FOR_DDD,FOR_TEL1');
      SQL.Add('FROM   CAD_FOR');

      if pesq = 'I' then
      SQL.Add('WHERE  CAD_FOR.ID = '''+chave+'''')
      else if pesq = 'F' then
      SQL.Add('WHERE  FOR_FANT LIKE ''%'+chave+'%''');

      Open;
      Last;
    end;

    if psq_for.recordcount = 0 then
    begin
      if pesq = 'I' then
      messageBox(handle,'Código do fornecedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK)
      else if pesq = 'F' then
      messageBox(handle,'Nome fantasia do fornecedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end
    else if psq_for.recordcount = 1 then
    begin
      if psq_forFOR_STA.AsString <> '0' then
      begin
        messageBox(handle,PChar('Fornecedor '+psq_forFOR_FANT.AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      edcfor.Text := psq_forID.AsString;
      cbdfor.Text := psq_forFOR_FANT.AsString;
    end
    else
    begin
      frmcad_for := TFrmcad_for.Create(self);
      with frmcad_for.cadastro do
      begin
        SQL.Clear;
        SQL.Add('SELECT CAD_FOR.ID,FOR_FANT,FOR_RAZA,FOR_CNPJ,FOR_CPF,FOR_CRED,FOR_CID,FOR_BAI,FOR_LOGR,FOR_ESTA,FOR_STA,FOR_STAV,FOR_DPAG,FOR_OBSO,FOR_VDSC,');
        SQL.Add('       FOR_DCAD,FOR_DFUN,FOR_DALT,FOR_DULT,FOR_DDD,FOR_TEL1');
        SQL.Add('FROM   CAD_FOR');
        SQL.Add('WHERE  CAD_FOR.ID > 0');

        if pesq = 'F' then
           SQL.Add('AND FOR_FANT LIKE ''%'+cbdfor.Text+'%''');
        SQL.Add('AND    FOR_STA  = 0');
        SQL.Add('AND    FOR_STAV = ''A''');

        if pesq = 'I' then
        begin
          SQL.Add('ORDER BY CAD_FOR.ID');
          frmcad_for.dbgConsulta.FocusedColumn := 0;
        end
        else if pesq = 'F' then
        begin
          SQL.Add('ORDER BY FOR_FANT');
          frmcad_for.dbgConsulta.FocusedColumn := 1;
        end;
        Open;
      end;

      frmcad_for := tfrmcad_for.Create(self);
      frmcad_for.FormStyle := fsNormal;
      frmcad_for.Visible   := false;
      frmcad_for.Position  := poDesktopCenter;

      try
        frmcad_for.ShowModal;
      finally
        freeAndNil(frmcad_for);
        frmcad_for.Free;
      end;
    end;
  finally
    tag := 0;
  end;
end;

procedure Tfrmpag_cad.edcpplButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmtab_fin_ppl := Tfrmtab_fin_ppl.Create(self);
  frmtab_fin_ppl.FormStyle := fsNormal;
  frmtab_fin_ppl.Visible   := false;

  try
    frmtab_fin_ppl.ShowModal;
  finally
    freeAndNil(frmtab_fin_ppl);
    frmtab_fin_ppl.Free;
  end;
end;

procedure Tfrmpag_cad.edcpplValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcppl.Text = '' then
  begin
    edippl.Text := '0';
    edcppl.Text := '0';
  end;

  if edcppl.Text = '0' then
  begin
    cbdppl.Text := '';
    abort;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,FIN_DFIN FROM FIN_PPL');
    SQL.Add('WHERE  FIN_CPPL = '''+edcppl.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      edcppl.SetFocus;
      raise exception.Create('Plano de Conta não encontrado !');
    end;

    edippl.Text := fields[0].AsString;
    cbdppl.Text := fields[1].AsString;
    edccus.SetFocus;
  end;
end;

procedure Tfrmpag_cad.edccusButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmtab_fin_cus := Tfrmtab_fin_cus.Create(self);
  frmtab_fin_cus.FormStyle := fsNormal;
  frmtab_fin_cus.Visible   := false;

  try
    frmtab_fin_cus.ShowModal;
  finally
    freeAndNil(frmtab_fin_cus);
    frmtab_fin_cus.Free;
  end;
end;

procedure Tfrmpag_cad.edccusValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edccus.Text = '' then
     edccus.Text := '0';

  if edccus.Text = '0' then
  begin
    cbdcus.Text := '';
    abort;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT FIN_DCUS FROM FIN_CUS');
    SQL.Add('WHERE  ID = '''+edccus.Text+'''');
    SQL.Add('AND    FIN_STA = ''0''');
    Open;

    if fields[0].IsNull then
    begin
      edccus.SetFocus;
      raise exception.Create('Centro de Custo não encontrado !');
    end;

    cbdcus.Text := fields[0].AsString;
    edcfor.SetFocus;
  end;
end;

procedure Tfrmpag_cad.edcforButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmcad_for := tfrmcad_for.Create(self);
  frmcad_for.FormStyle := fsNormal;
  frmcad_for.Visible   := false;
  frmcad_for.Position  := poDesktopCenter;
  
  try
    frmcad_for.ShowModal;
  finally
    freeAndNil(frmcad_for);
    frmcad_for.Free;
  end;  
end;

procedure Tfrmpag_cad.edcforValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcfor.Text = '' then
  begin
    cbdfor.Text := '';
    abort;
  end;
  PESQUISA_FORNECEDOR('I',edcfor.Text,0);
end;

procedure Tfrmpag_cad.siSAVClick(Sender: TObject);

procedure PAGA_LANCAMENTO;
begin
  fin_rec_rec.Close;
  fin_rec_rec.Open;
  
  try
    while not fin_rec_rec.Eof do
    begin
      ibSP.StoredProcName := 'SP_FIN_PAG_REC';
      ibSP.Prepare;

      ibSP.ParamByName('fin').Value := 'FIN_PAG_REC';
      if frmprincipal.parametrosID.AsInteger > 1 then
      ibSP.ParamByName('fin').Value := 'FIN_PAG_REC_'+strzero(frmprincipal.parametrosID.AsInteger,3);

      ibSP.ParamByName('id').Value   := 0;
      ibSP.ParamByName('CDBX').Value := strtoint(edcdbx.Text);
      ibSP.ParamByName('CCAB').Value := edcdbx.Tag;
      ibSP.ParamByName('DCAD').Value := fin_rec_recFIN_DCAD.AsDateTime;
      ibSP.ParamByName('DVEN').Value := fin_rec_recFIN_DVEN.AsDateTime;
      ibSP.ParamByName('DOCT').Value := fin_rec_recFIN_CPF.AsString;
      ibSP.ParamByName('TIPO').Value := fin_rec_recFIN_TIPO.AsString;
      ibSP.ParamByName('BANC').Value := fin_rec_recFIN_BANC.AsString;
      ibSP.ParamByName('DBAN').Value := fin_rec_recFIN_DBAN.AsString;
      ibSP.ParamByName('AGEN').Value := fin_rec_recFIN_AGEN.AsString;
      ibSP.ParamByName('CONT').Value := fin_rec_recFIN_CONT.AsString;
      ibSP.ParamByName('NCHQ').Value := fin_rec_recFIN_NCHQ.AsString;
      ibSP.ParamByName('PRAZ').Value := fin_rec_recFIN_PRAZ.AsInteger;
      ibSP.ParamByName('VALO').Value := fin_rec_recFIN_VALO.AsFloat;
      ibSP.ParamByName('OBSE').Value := fin_rec_recFIN_OBSE.AsString;
      ibSP.ParamByName('STA').Value  := '0';
      ibSP.ExecProc;

      fin_rec_rec.Next;
    end;
  except
    messageBox(handle,'Problemas na gravação do recebimento da conta !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
    Abort;
  end;
end;

procedure SALVA_PARCELAS;
var
  id: integer;
  BRet: boolean;
begin
  cadastro.Close;
  cadastro.Open;

  frmprincipal.sp_sql.SQL.Clear;
  frmprincipal.sp_sql.SQL.Add('DELETE FROM '+TSConsulta.Values['fin_pag']+' "FIN_PAG"');
  frmprincipal.sp_sql.SQL.Add('WHERE  FIN_DOCT = '''+eddoct.Text+'''');

  frmprincipal.ibSP.StoredProcName := 'SP_SQL';
  frmprincipal.ibSP.Prepare;
  frmprincipal.ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
  frmprincipal.ibSP.ExecProc;
  IBTra.CommitRetaining;

  while not cadastro.Eof do
  begin
    id   := 0;
    BRet := true;
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FIN_PAG.ID,FOR_FANT,FIN_DFIN');
      SQL.Add('FROM   CAD_FOR,FIN_PPL,'+TSConsulta.Values['fin_pag']+'"FIN_PAG"');
      SQL.Add('WHERE  FIN_DOCT   = '''+cadastroFIN_DOCT.AsString+'''');
      SQL.Add('AND    CAD_FOR.ID = '''+cadastroFIN_CFOR.AsString+'''');
      SQL.Add('AND    FIN_PPL.ID = '''+cadastroFIN_CPPL.AsString+'''');
      Open;

      if not fields[0].IsNull then
      begin
        BRet := (yesno(frmpag_cad.Handle,'Documento já cadastrado !'+#13+'Fornecedor '+fields[1].AsString+#13+'Conta '+fields[2].AsString+#13+'Substituir ?') = mrno);
        if BRet then
        id := fields[0].AsInteger;
      end;
    end;

    if BRet then
    begin
      try
        ibSP.StoredProcName := 'SP_FIN_PAG';
        ibSP.Prepare;

        ibSP.ParamByName('fin').Value := 'FIN_PAG';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('fin').Value := 'FIN_PAG_'+strzero(frmprincipal.parametrosID.AsInteger,3);

        ibSP.ParamByName('id').Value   := id;
        ibSP.ParamByName('CCAB').Value := cadastroFIN_CCAB.AsInteger;
        ibSP.ParamByName('CDBX').Value := cadastroFIN_CDBX.AsInteger;
        ibSP.ParamByName('CDCX').Value := cadastroFIN_CDCX.AsInteger;
        ibSP.ParamByName('DOCT').Value := cadastroFIN_DOCT.AsString;
        ibSP.ParamByName('DFIN').Value := cadastroFIN_DESC.AsString;
        ibSP.ParamByName('CPPL').Value := cadastroFIN_CPPL.AsInteger;
        ibSP.ParamByName('CCUS').Value := cadastroFIN_CCUS.AsInteger;
        ibSP.ParamByName('CFOR').Value := cadastroFIN_CFOR.AsInteger;
        ibSP.ParamByName('STFI').Value := cadastroFIN_STFI.AsString;
        ibSP.ParamByName('PREV').Value := cadastroFIN_PREV.AsString;
        ibSP.ParamByName('DUPL').Value := cadastroFIN_DUPL.AsString;
        ibSP.ParamByName('DCAD').Value := cadastroFIN_DCAD.AsDateTime;
        ibSP.ParamByName('DBAI').Value := cadastroFIN_DBAI.AsDateTime;
        ibSP.ParamByName('DVEN').Value := cadastroFIN_DVEN.AsDateTime;
        ibSP.ParamByName('DPAG').Value := cadastroFIN_DPAG.AsDateTime;
        ibSP.ParamByName('DDES').Value := cadastroFIN_DDES.AsDateTime;
        ibSP.ParamByName('VALO').Value := cadastroFIN_VALO.AsFloat;
        ibSP.ParamByName('VPAG').Value := cadastroFIN_VPAG.AsFloat;
        ibSP.ParamByName('VPEN').Value := cadastroFIN_VPEN.AsFloat;
        ibSP.ParamByName('VENC').Value := cadastroFIN_VENC.AsFloat;
        ibSP.ParamByName('VMUL').Value := cadastroFIN_VMUL.AsFloat;
        ibSP.ParamByName('PMUL').Value := cadastroFIN_PMUL.AsFloat;
        ibSP.ParamByName('VJUR').Value := cadastroFIN_VJUR.AsFloat;
        ibSP.ParamByName('PJUR').Value := cadastroFIN_PJUR.AsFloat;
        ibSP.ParamByName('VDES').Value := cadastroFIN_VDES.AsFloat;
        ibSP.ParamByName('PDES').Value := cadastroFIN_PDES.AsFloat;
        ibSP.ParamByName('OBSE').Value := '';
        ibSP.ParamByName('STA').Value  := '0';

        if id = 0 then
        with consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT GEN_ID(ID_NO_'+TSConsulta.Values['fin_pag']+',0) FROM RDB$DATABASE');
          Open;
          id := fields[0].AsInteger+1;
        end;

        ibSP.ExecProc;

        with frmprincipal.sp_sql do
        begin
          SQL.Clear;
          SQL.Add('UPDATE '+TSConsulta.Values['fin_pag']);
          SQL.Add('SET    FIN_OBSE = '''+cadastroFIN_OBSE.AsString+'''');
          SQL.Add('WHERE  ID       = '''+inttostr(id)+'''');

          ibSP.StoredProcName := 'SP_SQL';
          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;
        end;
        IBTra.CommitRetaining;
      except
        IBTra.RollbackRetaining;
        messageBox(handle,'Problemas na gravação das parcelas da conta !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
        Abort;
      end;
    end;
    cadastro.Next;
  end;
end;

begin
  activecontrol := nil;

  if yesno(handle,'Confirma Lançamento ?') = mrno then
     abort;

  if (Campo_Obrigatorio(PnlCadastro)) then
     Abort;

  if edcdbx.Text = '' then
  edcdbx.Text := '0';

  if RETORNA_REAL(edvalo.Text) = 0 then
  raise exception.Create('Valor não informado !');

  if (edcfor.Text = '0') or (edcfor.Text = '') then
  raise exception.Create('Fornecedor não informado !');

  if cbstfi.Text = '' then
  raise exception.Create('Status não informado !');

  if eddoct.Text = '' then
  raise exception.Create('Documento não informado !');

  if eddcad.Date < 0 then
  raise exception.Create('Data de lançamento não informado !');

  if eddven.Date < 0 then
  raise exception.Create('Data de vencimento não informado !');

  if eddpag.Date > 0 then
  begin
    if (edvpag.Text = '') or (edvpag.Text = '0') or (edvpag.Text = '0,00') then
    raise exception.Create('Valor do pagamento não informado !');
  end;

  if cbstfi.Text = 'PAGO' then
  begin
    if (edvpag.Text = '') or (edvpag.Text = '0') or (edvpag.Text = '0,00') then
    raise exception.Create('Valor do pagamento não informado !');

    if eddpag.Date <= 0 then
    raise exception.Create('Data de pagamento não informada !');

    if (edcdbx.Text = '') or (edcdbx.Text = '0') then
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_BAI_PAG,1) FROM RDB$DATABASE');
      Open;
      edcdbx.Text := fields[0].AsString;
    end;
  end;

  if (edid.Text = '') or (edid.Text = '0') then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_'+TSConsulta.Values['fin_pag']+',0) FROM RDB$DATABASE');
    Open;
    edcdbx.Tag := fields[0].AsInteger+1;
  end;

  try
    ibSP.StoredProcName := 'SP_FIN_PAG';
    ibSP.Prepare;

    ibSP.ParamByName('fin').Value := 'FIN_PAG';
    if frmprincipal.parametrosID.AsInteger > 1 then
    ibSP.ParamByName('fin').Value := 'FIN_PAG_'+strzero(frmprincipal.parametrosID.AsInteger,3);

    ibSP.ParamByName('id').Value   := edid.Text;
    ibSP.ParamByName('CCAB').Value := edccab.Text;
    ibSP.ParamByName('CDBX').Value := strtoint(edcdbx.Text);
    ibSP.ParamByName('CDCX').Value := edcdcx.Text;
    ibSP.ParamByName('DOCT').Value := eddoct.Text;
    ibSP.ParamByName('DFIN').Value := eddfin.Text;

    ibSP.ParamByName('CPPL').Value := edippl.Text;
    if (edippl.Text = '') or (edippl.Text = '0') then
    ibSP.ParamByName('CPPL').Value := '0';

    ibSP.ParamByName('CCUS').Value := edccus.Text;
    if (edccus.Text = '') or (edccus.Text = '0') then
    ibSP.ParamByName('CCUS').Value := '0';

    ibSP.ParamByName('CFOR').Value := edcfor.Text;
    if (edcfor.Text = '') or (edcfor.Text = '0') then
    ibSP.ParamByName('CFOR').Value := 0;

    ibSP.ParamByName('STFI').Value := cbstfi.Text;
    ibSP.ParamByName('PREV').Value := '0';
    if cbprev.Text = 'SIM' then
    ibSP.ParamByName('PREV').Value := '1';
    ibSP.ParamByName('DUPL').Value := '0';
    if cbdupl.Text = 'SIM' then
    ibSP.ParamByName('DUPL').Value := '1';

    ibSP.ParamByName('DCAD').Value := eddcad.Date;
    ibSP.ParamByName('DBAI').Value := 0;
    if eddbai.date > 0 then
    ibSP.ParamByName('DBAI').Value := eddbai.Date;
    ibSP.ParamByName('DVEN').Value := eddven.Date;
    ibSP.ParamByName('DPAG').Value := 0;
    if eddpag.Date > 0 then
    ibSP.ParamByName('DPAG').Value := eddpag.Date;
    ibSP.ParamByName('DDES').Value := 0;
    if edddes.Date > 0 then
    ibSP.ParamByName('DDES').Value := edddes.Date;

    ibSP.ParamByName('VALO').Value := RETORNA_REAL(edvalo.Text);
    ibSP.ParamByName('VPAG').Value := RETORNA_REAL(edvpag.Text);
    ibSP.ParamByName('VPEN').Value := RETORNA_REAL(edvpen.Text);
    ibSP.ParamByName('VENC').Value := RETORNA_REAL(edvenc.Text);
    ibSP.ParamByName('VMUL').Value := RETORNA_REAL(edvmul.Text);
    ibSP.ParamByName('PMUL').Value := RETORNA_REAL(edpmul.Text);
    ibSP.ParamByName('VJUR').Value := RETORNA_REAL(edvjur.Text);
    ibSP.ParamByName('PJUR').Value := RETORNA_REAL(edpjur.Text);
    ibSP.ParamByName('VDES').Value := RETORNA_REAL(edvdes.Text);
    ibSP.ParamByName('PDES').Value := RETORNA_REAL(edpdes.Text);
    ibSP.ParamByName('OBSE').Value := '';
    ibSP.ParamByName('STA').Value  := '0';
    ibSP.ExecProc;

    with frmprincipal.sp_sql do
    begin
      SQL.Clear;
      SQL.Add('UPDATE '+TSConsulta.Values['fin_pag']);
      SQL.Add('SET    FIN_OBSE = '''+edobse.Text+'''');
      SQL.Add('WHERE  ID       = '''+inttostr(edcdbx.Tag)+'''');

      ibSP.StoredProcName := 'SP_SQL';
      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    if cbstfi.Text = 'PAGO' then
    begin
      with frmprincipal.sp_sql do
      begin
        SQL.Clear;
        SQL.Add('DELETE FROM '+TSConsulta.Values['fin_pag_rec']);
        SQL.Add('WHERE  FIN_CDBX = '''+edcdbx.Text+'''');
        SQL.Add('AND    FIN_CCAB = '''+inttostr(edcdbx.Tag)+'''');

        ibSP.StoredProcName := 'SP_SQL';
        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;
      end;

      PAGA_LANCAMENTO;
    end;

    IBTra.CommitRetaining;

    try
      if edid.Tag <> 1 then
      begin
        if cbstfi.Text = 'PENDENTE' then
        begin
          if yesno(handle,'Deseja lançar parcelas para esse pagamento ?') = mryes then
          begin
            frmpag_cad_dup := tfrmpag_cad_dup.Create(self);
            frmpag_cad_dup.eddoct.Text := eddoct.Text;
            frmpag_cad_dup.eddoct.Hint := edvalo.Text;

            try
              frmpag_cad_dup.ShowModal;
            finally
              freeAndNil(frmpag_cad_dup);
              frmpag_cad_dup.Free;

              SALVA_PARCELAS;
            end;
          end;
        end;
      end;
    finally
      frmpag_cad.close;
    end;  
  except
    IBTra.RollbackRetaining;
    messageBox(handle,'Problemas na gravação da conta !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
    Abort;
  end;
end;

procedure Tfrmpag_cad.edvmulValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edVMUL.Text = '' then
     edVMUL.Text := '0,00';

  if RETORNA_REAL(edvalo.Text) = 0 then
  begin
    edvalo.SetFocus;
    raise exception.Create('Valor a Pagar não Preenchido !');
  end;

  edVMUL.Text := formatfloat('#,0.00########',RETORNA_REAL(edVMUL.Text));
  edPMUL.Text := formatfloat('#,0.00########',(RETORNA_REAL(edVMUL.Text)*100)/RETORNA_REAL(edVALO.Text));

  ALTERA_ENCARGO;
end;

procedure Tfrmpag_cad.edpmulValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edPMUL.Text = '' then
     edPMUL.Text := '0,00';

  if RETORNA_REAL(edvalo.Text) = 0 then
  begin
    edvalo.SetFocus;
    raise exception.Create('Valor a Pagar não Preenchido !');
  end;

  edPMUL.Text := formatfloat('#,0.00########',RETORNA_REAL(edPMUL.Text));
  edVMUL.Text := formatfloat('#,0.00########',(RETORNA_REAL(edVALO.Text)*RETORNA_REAL(edPMUL.Text))/100);

  ALTERA_ENCARGO;
end;

procedure Tfrmpag_cad.edvjurValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edVJUR.Text = '' then
     edVJUR.Text := '0,00';

  if RETORNA_REAL(edvalo.Text) = 0 then
  begin
    edvalo.SetFocus;
    raise exception.Create('Valor a Pagar não Preenchido !');
  end;

  edVJUR.Text := formatfloat('#,0.00########',RETORNA_REAL(edVJUR.Text));
  edPJUR.Text := formatfloat('#,0.00########',(RETORNA_REAL(edVJUR.Text)*100)/RETORNA_REAL(edVALO.Text));

  ALTERA_ENCARGO;
end;

procedure Tfrmpag_cad.edpjurValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edPJUR.Text = '' then
     edPJUR.Text := '0,00';

  if RETORNA_REAL(edvalo.Text) = 0 then
  begin
    edvalo.SetFocus;
    raise exception.Create('Valor a Pagar não Preenchido !');
  end;

  edPJUR.Text := formatfloat('#,0.00########',RETORNA_REAL(edPJUR.Text));
  edVJUR.Text := formatfloat('#,0.00########',(RETORNA_REAL(edVALO.Text)*RETORNA_REAL(edPJUR.Text))/100);

  ALTERA_ENCARGO;
end;

procedure Tfrmpag_cad.edvdesValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edVDES.Text = '' then
     edVDES.Text := '0,00';

  if RETORNA_REAL(edvalo.Text) = 0 then
  begin
    edvalo.SetFocus;
    raise exception.Create('Valor a Pagar não Preenchido !');
  end;

  edVDES.Text := formatfloat('#,0.00########',RETORNA_REAL(edVDES.Text));
  edPDES.Text := formatfloat('#,0.00########',(RETORNA_REAL(edVDES.Text)*100)/RETORNA_REAL(edVALO.Text));

  ALTERA_ENCARGO;
end;

procedure Tfrmpag_cad.edpdesValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edPDES.Text = '' then
     edPDES.Text := '0,00';

  if RETORNA_REAL(edvalo.Text) = 0 then
  begin
    edvalo.SetFocus;
    raise exception.Create('Valor a Pagar não Preenchido !');
  end;

  edPDES.Text := formatfloat('#,0.00########',RETORNA_REAL(edPDES.Text));
  edVDES.Text := formatfloat('#,0.00########',(RETORNA_REAL(edVALO.Text)*RETORNA_REAL(edPDES.Text))/100);

  ALTERA_ENCARGO;
end;

procedure Tfrmpag_cad.ALTERA_ENCARGO;
var
  venc: double;
begin
  venc := 0;

  if (RETORNA_REAL(edvmul.Text) > 0) or (RETORNA_REAL(edvjur.Text) > 0) or (RETORNA_REAL(edvdes.Text) > 0) then
  venc := (RETORNA_REAL(edvmul.Text)+RETORNA_REAL(edvjur.Text))-RETORNA_REAL(edvdes.Text);

  edvenc.Text := formatfloat('#,0.00########',venc);
  edvpen.Text := formatfloat('#,0.00########',(RETORNA_REAL(edvalo.Text) + venc)-RETORNA_REAL(edvpag.Text));
end;

procedure Tfrmpag_cad.FormDestroy(Sender: TObject);
begin
  frmpag_cad := nil;
end;

procedure Tfrmpag_cad.edvaloButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  Application.CreateForm (Tfrmpag_cad_grd, frmpag_cad_grd);
  try
    frmpag_cad_grd.ShowModal;
  finally
    if frmpag_cad_grd.editado then
    begin
      with frmpag_cad_grd.consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT SUM(ROM_TOTA) FROM ROM_ITE');
        Open;
      end;

      edobse.Lines.Clear;

      frmpag_cad_grd.cadastro.First;
      while not frmpag_cad_grd.cadastro.Eof do
      begin
        edobse.Lines.Add(TRIM(TRIM('Ref. '  +TRIM(frmpag_cad_grd.cadastroROM_CPRO.AsString))+' '+
                              TRIM('Quant. '+formatFloat(   '#,0.00########',frmpag_cad_grd.cadastroROM_QTDE.AsFloat))+' '+
                              TRIM('Preço ' +formatFloat('R$ #,0.00########',frmpag_cad_grd.cadastroROM_UNIT.AsFloat))+' '+
                              TRIM('Total ' +formatFloat('R$ #,0.00########',frmpag_cad_grd.cadastroROM_TOTA.AsFloat))));

       if frmpag_cad_grd.cadastro.RecNo = 1 then
        begin
          edobse.Text := trim(edobse.Text);
          edobse.Text := StringReplace(edobse.Text,char(0)   ,'',[rfReplaceAll]);
          edobse.Text := StringReplace(edobse.Text,''#$D#$A'','',[rfReplaceAll]);
          edobse.Text := StringReplace(edobse.Text,''#$D''   ,'',[rfReplaceAll]);
          edobse.Text := StringReplace(edobse.Text,''#$A''   ,'',[rfReplaceAll]);
        end;
        frmpag_cad_grd.cadastro.Next;
      end;
      edobse.Lines.Add(TRIM('TOTAL R$: '+formatFloat('R$ #,0.00########',frmpag_cad_grd.consulta.Fields[0].AsFloat)));

      edvalo.Text := formatfloat('#,0.00########',frmpag_cad_grd.consulta.Fields[0].AsFloat);
      ALTERA_ENCARGO;

      if cbstfi.Text = 'PAGO' then
      begin
        edvpag.Text := edvalo.Text;
        eddpag.Date := eddven.Date;
      end;
    end;
    freeAndNil(frmpag_cad_grd);
    frmpag_cad_grd.Free;
  end;
end;

procedure Tfrmpag_cad.FormCreate(Sender: TObject);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FIN_DFIN FROM FIN_PPL');
    SQL.Add('ORDER BY FIN_DFIN');
    Open;

    while not eof do
    begin
      cbdppl.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FIN_DCUS FROM FIN_CUS');
    SQL.Add('ORDER BY FIN_DCUS');
    Open;

    while not eof do
    begin
      cbdcus.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FOR_FANT FROM CAD_FOR');
    SQL.Add('ORDER BY FOR_FANT');
    Open;

    while not eof do
    begin
      cbdfor.Items.Add(fields[0].AsString);
      next;
    end;
  end;
  NOVO_LANCAMENTO;
end;

procedure Tfrmpag_cad.cbdpplExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,FIN_CPPL FROM FIN_PPL');
      SQL.Add('WHERE  FIN_DFIN = '''+cbdppl.Text+'''');
      Open;
      edippl.Text := fields[0].AsString;
      edcppl.Text := fields[1].AsString;
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

procedure Tfrmpag_cad.cbdcusExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM FIN_CUS');
      SQL.Add('WHERE  FIN_DCUS = '''+cbdcus.Text+'''');
      Open;
      edccus.Text := fields[0].AsString;
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

procedure Tfrmpag_cad.cbdforExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_FOR');
      SQL.Add('WHERE  FOR_FANT = '''+cbdfor.Text+'''');
      Open;
      edcfor.Text := fields[0].AsString;
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

procedure Tfrmpag_cad.cbstfiChange(Sender: TObject);
begin
  eddpag.Enabled := (cbstfi.Text = 'PAGO');
  edvpag.Enabled := (cbstfi.Text = 'PAGO');
  
  if (cbstfi.Text = 'PAGO') and (eddpag.Date <= 0) then
  eddpag.Date := strtodate(TSConsulta.Values['data_sistema']);
end;

procedure Tfrmpag_cad.eddoctValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM '+TSConsulta.Values['fin_pag']);
    SQL.Add('WHERE    FIN_DOCT = '''+eddoct.Text+'''');
    SQL.Add('ORDER BY FIN_DOCT');
    Open;

    if not fields[0].IsNull then
    begin
      eddoct.SetFocus;
      raise exception.Create('Número de documento já cadastrado !');
    end;  
  end;
end;

procedure Tfrmpag_cad.edvmulExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if (RETORNA_REAL(edvmul.Text) > 0) or (RETORNA_REAL(edpmul.Text) > 0) or
       (RETORNA_REAL(edvjur.Text) > 0) or (RETORNA_REAL(edpjur.Text) > 0) or
       (RETORNA_REAL(edvdes.Text) > 0) or (RETORNA_REAL(edpdes.Text) > 0) then
    begin
      if (eddpag.Enabled) and (eddpag.Date <= 0) then
      eddpag.SetFocus else
      begin
        if edvpag.Enabled then
        edvpag.SetFocus;
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

procedure Tfrmpag_cad.edvpagButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmlan_chq     := tfrmlan_chq.create(self);
  frmlan_chq.Tag := 1;

  frmlan_chq.cadastro.Close;
  frmlan_chq.cadastro.Open;

  try
    frmlan_chq.Tag := 0;
    frmlan_chq.ShowModal;
  finally
    if frmlan_chq.editado then
    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT SUM(FIN_VALO) FROM FIN_REC_REC');
      Open;
      edvpag.Text := formatfloat('#,0.00########',Fields[0].AsFloat);
      ALTERA_ENCARGO;
    end;

    freeAndNil(frmlan_chq);
    frmlan_chq.Free;
  end;
end;

procedure Tfrmpag_cad.edvpagKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmpag_cad.edvaloValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  ALTERA_ENCARGO;
end;

procedure Tfrmpag_cad.SpeedButton1Click(Sender: TObject);
begin
  frmpag_ven_dup := tfrmpag_ven_dup.create(self);
  try
    frmpag_ven_dup.ShowModal;
  finally
    freeAndNil(frmpag_ven_dup);
    frmpag_ven_dup.free;
  end;    
end;

end.


