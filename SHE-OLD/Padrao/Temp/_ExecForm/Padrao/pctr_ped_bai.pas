unit pctr_ped_bai;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, ImgList, dxPageControl, dxCntner, dxTL, StrUtils, 
  dxDBCtrl, dxDBGrid, DB, IBCustomDataSet, IBDatabase, dxDBTLCl, dxGrClms,
  StdCtrls, dxEditor, dxEdLib, dxExEdtr, IBQuery, IBStoredProc, Math, DateUtils,
  IBEvents, rxSpeedbar, IBSQL;

type
  Tfrmctr_ped_bai = class(TForm)
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    siPSQ: TSpeedItem;
    siREF: TSpeedItem;
    siSAIR: TSpeedItem;
    pnlpri: TPanel;
    imageITEM: TImageList;
    fin_rec: TIBDataSet;
    dtsfin_rec: TDataSource;
    TSheild: TIBTransaction;
    pnlbot: TPanel;
    PNLMERecebidos: TPanel;
    gbPED: TGroupBox;
    Label1: TLabel;
    edtotr: TdxEdit;
    GroupBox2: TGroupBox;
    edDROM: TdxDateEdit;
    Label7: TLabel;
    Label6: TLabel;
    edtotb: TdxEdit;
    Label2: TLabel;
    edtotd: TdxEdit;
    fin_rec_bai: TIBDataSet;
    dtsfin_rec_bai: TDataSource;
    fin_rec_baiID: TIntegerField;
    fin_rec_baiFIN_DVEN: TDateField;
    fin_rec_baiFIN_TIPO: TIBStringField;
    fin_rec_baiFIN_BANC: TIBStringField;
    fin_rec_baiFIN_AGEN: TIBStringField;
    fin_rec_baiFIN_CONT: TIBStringField;
    fin_rec_baiFIN_NCHQ: TIBStringField;
    fin_rec_baiFIN_OBSE: TMemoField;
    fin_rec_baiFIN_STA: TIBStringField;
    fin_rec_baiFIN_PRAZ: TSmallintField;
    ImageList1: TImageList;
    consulta_s: TIBQuery;
    siSAV: TSpeedItem;
    fin_rec_baiFIN_DPAG: TDateField;
    fin_rec_baiFIN_DBAN: TIBStringField;
    fin_recID: TIntegerField;
    fin_recFIN_CCLI: TIntegerField;
    fin_recFIN_CVEN: TIntegerField;
    fin_recFIN_CREP: TIntegerField;
    fin_recFIN_CDRO: TIntegerField;
    fin_recFIN_CDNF: TIntegerField;
    fin_recFIN_IPPL: TIntegerField;
    fin_recFIN_CPPL: TIBStringField;
    fin_recFIN_DPPL: TIBStringField;
    fin_recFIN_CCUS: TIntegerField;
    fin_recFIN_DCUS: TIBStringField;
    fin_recFIN_DROM: TDateField;
    fin_recFIN_DNFE: TDateField;
    fin_recFIN_DVEN: TDateField;
    fin_recFIN_DTCO: TDateField;
    fin_recFIN_VEND: TIBStringField;
    fin_recFIN_DREP: TIBStringField;
    fin_recFIN_VALO: TIBBCDField;
    fin_recFIN_DCLI: TIBStringField;
    fin_recFIN_CONC: TSmallintField;
    fin_rec_baiFIN_STFI: TIBStringField;
    fin_recFIN_STCO: TIBStringField;
    fin_recFIN_STPD: TIBStringField;
    fin_recFIN_STDO: TIBStringField;
    fin_rec_baiFIN_DOCT: TIBStringField;
    fin_rec_baiFIN_VALO: TIBBCDField;
    fin_rec_baiFIN_VPAG: TIBBCDField;
    fin_rec_baiFIN_VPEN: TIBBCDField;
    fin_recFIN_DOCT: TIBStringField;
    Label3: TLabel;
    aux_S: TIBQuery;
    fin_rec_baiFIN_COBR: TIBStringField;
    fin_recFIN_COBR: TIBStringField;
    fin_rec_baiFIN_STDO: TIBStringField;
    fin_rec_baiFIN_CCAB: TIntegerField;
    fin_rec_baiFIN_CDBX: TIntegerField;
    fin_rec_baiFIN_CDCX: TIntegerField;
    fin_rec_baiFIN_CCLI: TIntegerField;
    fin_rec_baiFIN_DCLI: TIBStringField;
    fin_rec_baiFIN_CVEN: TIntegerField;
    fin_rec_baiFIN_VEND: TIBStringField;
    fin_rec_baiFIN_CREP: TIntegerField;
    fin_rec_baiFIN_DREP: TIBStringField;
    fin_rec_baiFIN_ATRA: TSmallintField;
    fin_rec_baiFIN_CONC: TSmallintField;
    fin_rec_baiFIN_DCAD: TDateField;
    fin_rec_baiFIN_DMED: TDateField;
    fin_rec_baiFIN_DATR: TDateField;
    fin_rec_baiFIN_MCHQ: TSmallintField;
    fin_rec_baiFIN_STCO: TIBStringField;
    fin_recFIN_CDBX: TIntegerField;
    fin_recFIN_CDCX: TIntegerField;
    fin_recFIN_CBCO: TIntegerField;
    fin_recFIN_PRAZ: TSmallintField;
    fin_recFIN_ATRA: TSmallintField;
    fin_recFIN_DCAD: TDateField;
    fin_recFIN_DPAG: TDateField;
    fin_recFIN_DMED: TDateField;
    fin_recFIN_DATR: TDateField;
    fin_recFIN_PORT: TIBStringField;
    fin_recFIN_STFI: TIBStringField;
    fin_recFIN_VPAG: TIBBCDField;
    fin_recFIN_VPEN: TIBBCDField;
    fin_recFIN_VMUL: TIBBCDField;
    fin_recFIN_PMUL: TIBBCDField;
    fin_recFIN_VJUR: TIBBCDField;
    fin_recFIN_PJUR: TIBBCDField;
    fin_recFIN_VDES: TIBBCDField;
    fin_recFIN_PDES: TIBBCDField;
    fin_recFIN_OBSE: TMemoField;
    fin_recFIN_STA: TIBStringField;
    fin_recFIN_DPRA: TIBStringField;
    fin_recFIN_CDPD: TIntegerField;
    Label5: TLabel;
    edDBAI: TdxDateEdit;
    fin_rec_baiFIN_RCLI: TIBStringField;
    fin_rec_baiFIN_RREP: TIBStringField;
    fin_rec_baiFIN_DBAI: TDateField;
    fin_recFIN_RCLI: TIBStringField;
    fin_recFIN_RREP: TIBStringField;
    fin_recFIN_PCOM: TIBBCDField;
    fin_recFIN_DBAI: TDateField;
    fin_recFIN_VENC: TIBBCDField;
    fin_recFIN_CPF: TIBStringField;
    fin_recFIN_CTNR: TIBStringField;
    fin_rec_baiFIN_DFIN: TIBStringField;
    fin_rec_baiFIN_CPPL: TIntegerField;
    fin_rec_baiFIN_CCUS: TIntegerField;
    fin_rec_baiFIN_CDCO: TIntegerField;
    fin_rec_baiFIN_CDBA: TIBStringField;
    fin_rec_baiFIN_DEBA: TIBStringField;
    fin_rec_baiFIN_VENC: TIBBCDField;
    fin_rec_baiFIN_CTNR: TIBStringField;
    fin_rec_baiFIN_VMUL: TIBBCDField;
    fin_rec_baiFIN_PMUL: TIBBCDField;
    fin_rec_baiFIN_VJUR: TIBBCDField;
    fin_rec_baiFIN_PJUR: TIBBCDField;
    fin_rec_baiFIN_VDES: TIBBCDField;
    fin_rec_baiFIN_PDES: TIBBCDField;
    fin_rec_baiFIN_CPF: TIBStringField;
    fin_rec_baiFIN_CDRD: TIntegerField;
    fin_rec_baiFIN_VCHQ: TIBBCDField;
    fin_recFIN_CDRD: TIntegerField;
    fin_recFIN_VCHQ: TIBBCDField;
    fin_recFIN_DERD: TIBStringField;
    fin_rec_baiFIN_DERD: TIBStringField;
    fin_recFIN_DTST: TDateTimeField;
    fin_recFIN_TITU: TIBStringField;
    fin_rec_baiFIN_DTST: TDateTimeField;
    fin_rec_baiFIN_TITU: TIBStringField;
    ILMenu: TImageList;
    GBPedidos: TGroupBox;
    GBINFADPED: TGroupBox;
    dbgConsulta: TdxDBGrid;
    dbgConsultaFIN_DCLI: TdxDBGridMaskColumn;
    dbgConsultaFIN_STDO: TdxDBGridMaskColumn;
    dbgConsultaFIN_DOCT: TdxDBGridMaskColumn;
    dbgConsultaFIN_DROM: TdxDBGridDateColumn;
    dbgConsultaFIN_VALO: TdxDBGridMaskColumn;
    edobse: TdxMemo;
    SQLPedido: TIBSQL;
    IEPrazo: TdxImageEdit;
    PNLMRRecebidos: TPanel;
    DBGPrazo: TdxDBGrid;
    DBGPrazoFIN_TIPO: TdxDBGridImageColumn;
    DBGPrazoFIN_VALO: TdxDBGridMaskColumn;
    DBGPrazoFIN_PRAZ: TdxDBGridMaskColumn;
    DBGPrazoFIN_DVEN: TdxDBGridDateColumn;
    DBGPrazoFIN_BANC: TdxDBGridMaskColumn;
    DBGPrazoFIN_AGEN: TdxDBGridMaskColumn;
    DBGPrazoFIN_CONT: TdxDBGridMaskColumn;
    DBGPrazoFIN_NCHQ: TdxDBGridMaskColumn;
    DBGPrazoFIN_STA: TdxDBGridCheckColumn;
    DBGPrazoFIN_CPF: TdxDBGridMaskColumn;
    sblan: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedbarSection2: TSpeedbarSection;
    SpeedbarSection3: TSpeedbarSection;
    SpeedbarSection4: TSpeedbarSection;
    b1I: TSpeedItem;
    b1A: TSpeedItem;
    b1D: TSpeedItem;
    b1S: TSpeedItem;
    b1C: TSpeedItem;
    dbgConsultaFIN_VEND: TdxDBGridMaskColumn;
    dbgConsultaFIN_DREP: TdxDBGridMaskColumn;
    dbgConsultaFIN_STPD: TdxDBGridMaskColumn;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    SQLFKConsulta: TIBSQL;
    SQLSEdicao: TIBSQL;
    SQLFKPedido: TIBSQL;
    SQLFKEdicao: TIBSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure siSAIRClick(Sender: TObject);
    procedure fin_recAfterPost(DataSet: TDataSet);
    procedure fin_recAfterOpen(DataSet: TDataSet);
    procedure fin_rec_baiNewRecord(DataSet: TDataSet);
    procedure b1IClick(Sender: TObject);
    procedure b1AClick(Sender: TObject);
    procedure b1DClick(Sender: TObject);
    procedure b1SClick(Sender: TObject);
    procedure b1CClick(Sender: TObject);
    procedure fin_rec_baiAfterPost(DataSet: TDataSet);
    procedure fin_rec_baiAfterCancel(DataSet: TDataSet);
    procedure fin_rec_baiAfterDelete(DataSet: TDataSet);
    procedure fin_rec_baiAfterEdit(DataSet: TDataSet);
    procedure fin_rec_baiBeforeCancel(DataSet: TDataSet);
    procedure fin_rec_baiBeforePost(DataSet: TDataSet);
    procedure siSAVClick(Sender: TObject);
    procedure DBGPrazoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fin_rec_baiFIN_PRAZValidate(Sender: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDROMExit(Sender: TObject);
    procedure DBGPrazoFIN_VALOValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGPrazoFIN_TIPOChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure IEPrazoChange(Sender: TObject);
  private
    { Private declarations }
    FrmStyle   : TFormStyle;
    FrmPosition: TPosition;
    procedure _Empty;
    procedure _Edicao(ASTCO: String);
    procedure _Sumario;

    procedure LANCA_CAIXA(cobr: string;conc: word);
  public
    { Public declarations }
    Editado: Boolean;
    Constructor Create(AOwner: TComponent; const AIDPedido: Integer); reintroduce; overload;
  end;

var
  frmctr_ped_bai: Tfrmctr_ped_bai;
  AIDPD,
  ACDCX,
  ACDBX: Variant;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

Constructor Tfrmctr_ped_bai.Create(AOwner: TComponent; const AIDPedido: Integer);
begin
  AIDPD := IntToStr(AIDPedido);
  inherited Create(AOwner);
end;

procedure Tfrmctr_ped_bai.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
  _Empty;

  oOTransact(TConsulta);
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   VEN_TIPO FROM TAB_COB');
    SQL.Add('WHERE    VEN_STA  = ''1''');
    SQL.Add('ORDER BY ID');
    ExecQuery;
    while not eof do
    begin
      DBGPrazoFIN_TIPO.Descriptions.Add(Current.Vars[0].AsString);
      DBGPrazoFIN_TIPO.Values.Add(Current.Vars[0].AsString);
      Next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,PAG_DPAG FROM TAB_PAG ORDER BY PAG_DPAG');
    ExecQuery;
    while not Eof do
    begin
      IEPrazo.Values.Add(Current.Vars[0].AsString);
      IEPrazo.Descriptions.Add(Current.Vars[1].AsString);
      Next;
    end;
  end;

  with SQLPedido do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.*,COALESCE((SELECT FK.TCDE FROM '+oREPZero('ROM_CAB','_',RECParametros.EP_ID,3)+' AS FK WHERE FK.IDEP = PK.IDEP AND FK.ID = PK.CDRO),0) AS FK_TCDE');
    SQL.Add('FROM '+oREPZero('VW_PED_VEN_CAB','_',RECParametros.EP_ID,3)+' AS PK');
    SQL.Add('WHERE  PK.IDEP = '''+RECParametros.EP_ID+'''');
    SQL.Add('AND    PK.IDPK = '''+AIDPD           +'''');
    ExecQuery;
  end;

  DBGPrazoFIN_TIPO.DisableEditor := (Pos(LeftStr(SQLPedido.Current.ByName('STPD').AsString,3),'ABADEV') > 0);

  IEPrazo.Enabled := (Pos(LeftStr(SQLPedido.Current.ByName('STPD').AsString,3),'ABADEV') = 0) and (LeftStr(SQLPedido.Current.ByName('RECO').AsString,1) <> 'B');
  edDROM.Enabled  := (Pos(LeftStr(SQLPedido.Current.ByName('STPD').AsString,3),'ABADEV') = 0);
  edDBAI.Enabled  := (Pos(LeftStr(SQLPedido.Current.ByName('STPD').AsString,3),'ABADEV') = 0);

  ACDCX := SQLPedido.Current.ByName('CDCX').AsString;

  eddrom.Date := IFThen(not oEmpty(SQLPedido.Current.ByName('DTNF').AsDateTime),SQLPedido.Current.ByName('DTNF').AsDatetime,SQLPedido.Current.ByName('DTPK').AsDateTime);
  eddbai.Date := IFThen(not oEmpty(SQLPedido.Current.ByName('DTNF').AsDateTime),SQLPedido.Current.ByName('DTNF').AsDatetime,SQLPedido.Current.ByName('DTPK').AsDateTime);

  _Edicao(SQLPedido.Current.ByName('STCO').AsString);
end;

procedure Tfrmctr_ped_bai.FormShow(Sender: TObject);
begin
  { Herança }
  FrmStyle    := FormStyle;
  FrmPosition := Position;
end;

procedure Tfrmctr_ped_bai.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Screen.Cursor := crDefault;
end;

procedure Tfrmctr_ped_bai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Screen.Cursor := crAppStart;
  Action := caFree;
end;

procedure Tfrmctr_ped_bai.FormDestroy(Sender: TObject);
begin
  OnDestroy := Nil;

  try
    Screen.Cursor := crAppStart;

    try
      oFTransact(TConsulta);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                 'Error Code: '+E.Message+'.'      +#13+
                                  Self.Caption+'.');
      end;
    end;
  finally
    Screen.Cursor  := crDefault;
    Frmctr_ped_bai := Nil;
  end;
end;

procedure Tfrmctr_ped_bai.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_return,40: if (not (activeControl is TdxDBGrid) and
                         not (activeControl is TdxMaskEdit)) then
                        selectNext (activecontrol, true, true);
       38          : if (not (activeControl is TdxDBGrid) and
                         not (activeControl is TdxMaskEdit)) then
                       selectNext (activecontrol, false, true);
       118         : if fin_rec_bai.State = dsBrowse then siPSQ.Click;
       116         : if fin_rec_bai.State = dsBrowse then
                     begin
                       fin_rec.Close;
                       fin_rec.Open;
                       fin_rec_bai.Close;
                       fin_rec_bai.Open;
                     end;
       121         : siSAV.Click;
  end;
end;

procedure Tfrmctr_ped_bai.FormPaint(Sender: TObject);
var
  R: TRect;
begin
  if Showing then
  begin
    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,R);

    if FrmPosition = poDefault then
    begin
      Top    := IFThen(FrmStyle    = fsNormal ,R.Top ,0);
      Left   := IFThen(FrmStyle    = fsNormal ,R.Left,0);
      Width  := IFThen(FrmPosition = poDefault,R.Right -R.Left-5,0);
      Height := IFThen(FrmPosition = poDefault,R.Bottom-R.Top -5,0);
    end else
    begin
      if AlphaBlendValue = 0 then
      Height := Trunc((R.Bottom - R.Top ) * 0.8);

      if FrmStyle = fsNormal then
      begin
        Top  := R.Top + ((R.Bottom - R.Top ) - Height) div 2;
        Left :=         ((R.Right  + R.Left) - Width ) div 2;
      end else
      begin
        Top  := ((R.Bottom - R.Top ) - Height) div 2;
        Left := ((R.Right  - R.Left) - Width ) div 2;
      end;
    end;
  end;
end;

procedure Tfrmctr_ped_bai.FormResize(Sender: TObject);
begin
  if frmctr_ped_bai <> Nil then
  Paint;
end;

procedure Tfrmctr_ped_bai.siSAVClick(Sender: TObject);
var
  i,
  NuParcelas: Word;
begin
  ActiveControl := Nil;
  i := 0;

  if oYesNo(handle,'Confirma Recebimento ?') = mrNo then
     Abort;

  fin_rec.First;
  if fin_rec.RecNo = 0 then
     oException(Nil,'Pedido não Localizado !');

  if (ACDCX = 0) or (ACDCX = EmptyStr) then
      oException(Nil,'Pedido não possui caixa registrado !');

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAI_LAF');
    SQL.Add('WHERE  CAI_CDEP = '''+RECParametros.EP_ID+'''');
    SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',edDBAI.Date)+'''');
    ExecQuery;

    if Eof then
       oException(EDDROM,'Data de baixa informada não possui fluxo de caixa !');
  end;

  oOTransact(TEdicao);
  with SQLEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_BAI_REC,1) FROM RDB$DATABASE');
    ExecQuery;
    ACDBX := fields[0].AsString;
  end;

  if Pos('SEM COB',SQLPedido.Current.ByName('STCO').AsString) = 0 then
  begin
    if oTextToValor(edtotd.Text) <> 0 then
       if oYesNo(handle,'Total de Pedidos Difere do Total Recebido !'+#13+
                        'Confirma os Valores Digitados ?') = mrno then
       Abort;

    if fin_rec_bai.State in [dsEdit,dsInsert] then
       if fin_rec_baiFIN_VALO.AsFloat > 0 then
          fin_rec_bai.Post else fin_rec_bai.Cancel;

    fin_rec_bai.First;
    while not fin_rec_bai.Eof do
    begin
      if (Pos('CH',fin_rec_baiFIN_TIPO.AsString) > 0) and (Length(fin_rec_baiFIN_NCHQ.AsString) < 3) then
          oException(Nil,'Número do cheque em branco ou incorreto !');
      fin_rec_bai.Next;
    end;

    NuParcelas := fin_rec_bai.RecNo;
    if NuParcelas = 0 then
       oException(Nil,'Recebimento(s) não Localizado(s) !');

    { Financeiro }
    try
      fin_rec_bai.First;
      while not fin_rec_bai.Eof do
      begin
        inc(i);

        { Bancário ou Carteira }
        SPEdicao.Close;
        SPEdicao.StoredProcName := 'SP_FIN_REC_BAI';
        SPEdicao.Prepare;

        SPEdicao.ParamByName('fin').Value  := oREPZero(IFThen(fin_recFIN_COBR.AsString = 'B','FIN_REC_BAN_BAI','FIN_REC_CAR_BAI'),'_',RECParametros.EP_ID,3);
        SPEdicao.ParamByName('id').Value   := 0;
        SPEdicao.ParamByName('CDBX').Value := ACDBX;
        SPEdicao.ParamByName('CDCX').Value := ACDCX;
        SPEdicao.ParamByName('TIPO').Value := fin_rec_baiFIN_TIPO.AsString;
        SPEdicao.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
        SPEdicao.ParamByName('CONC').Value := IFThen(fin_recFIN_COBR.AsString = 'B',1,fin_recFIN_CONC.AsInteger);
        SPEdicao.ParamByName('DOCT').Value := fin_recFIN_DOCT.AsString;
        SPEdicao.ParamByName('TITU').Value := IFThen(fin_recFIN_COBR.AsString = 'B',fin_rec_baiFIN_TITU.AsString,fin_recFIN_DOCT.AsString+IFThen(NuParcelas > 1,'-'+aSequenciaL[i],''));
        SPEdicao.ParamByName('CTNR').Value := fin_recFIN_CTNR.AsString;
        SPEdicao.ParamByName('DCAD').Value := EDDBAI.Date;
        SPEdicao.ParamByName('DBAI').Value := EDDBAI.Date;
        SPEdicao.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
        SPEdicao.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
        SPEdicao.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
        SPEdicao.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
        SPEdicao.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
        SPEdicao.ParamByName('CDPG').Value := fin_recFIN_CBCO.AsInteger;
        SPEdicao.ParamByName('STFI').Value := fin_rec_baiFIN_STFI.AsString;

        if LeftStr(fin_rec_baiFIN_STFI.AsString,4) = 'PAGO' then
        begin
          SPEdicao.ParamByName('DPAG').Value := EDDBAI.Date;
          SPEdicao.ParamByName('VPAG').Value := fin_rec_baiFIN_VALO.AsFloat;
          SPEdicao.ParamByName('VPEN').Value := 0;
        end else
        begin
          SPEdicao.ParamByName('DPAG').Value := 0;
          SPEdicao.ParamByName('VPAG').Value := 0;
          SPEdicao.ParamByName('VPEN').Value := fin_rec_baiFIN_VALO.AsFloat;
        end;

        SPEdicao.ParamByName('OBSE').Value := fin_rec_baiFIN_OBSE.AsString;
        SPEdicao.ExecProc;

        LANCA_CAIXA(fin_recFIN_COBR.AsString,IFThen(fin_recFIN_COBR.AsString = 'B',1,fin_recFIN_CONC.AsInteger));

        { Carteira Complementar }
        if (fin_recFIN_CONC.AsInteger > 1) and (fin_recFIN_COBR.AsString = 'B') then
        begin
          SPEdicao.Close;
          SPEdicao.StoredProcName := 'SP_FIN_REC_BAI';
          SPEdicao.Prepare;

          SPEdicao.ParamByName('fin').Value  := oREPZero('FIN_REC_CAR_BAI','_',RECParametros.EP_ID,3);
          SPEdicao.ParamByName('id').Value   := 0;
          SPEdicao.ParamByName('CDBX').Value := ACDBX;
          SPEdicao.ParamByName('CDCX').Value := ACDCX;
          SPEdicao.ParamByName('TIPO').Value := IFThen(fin_recFIN_COBR.AsString = 'B',IFThen(Pos(LeftStr(SQLPedido.Current.ByName('STPD').AsString,3),'ABADEV') = 0,'CARTEIRA',fin_rec_baiFIN_TIPO.AsString),fin_rec_baiFIN_TIPO.AsString);
          SPEdicao.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
          SPEdicao.ParamByName('CONC').Value := IFThen(fin_recFIN_COBR.AsString = 'B',fin_recFIN_CONC.AsInteger - 1,fin_recFIN_CONC.AsInteger);
          SPEdicao.ParamByName('DOCT').Value := fin_recFIN_DOCT.AsString;
          SPEdicao.ParamByName('TITU').Value := IFThen(fin_recFIN_COBR.AsString = 'B',fin_rec_baiFIN_TITU.AsString,fin_recFIN_DOCT.AsString+IFThen(NuParcelas > 1,'-'+aSequenciaL[i],''));
          SPEdicao.ParamByName('CTNR').Value := fin_recFIN_CTNR.AsString;
          SPEdicao.ParamByName('DCAD').Value := EDDBAI.Date;
          SPEdicao.ParamByName('DBAI').Value := EDDBAI.Date;
          SPEdicao.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
          SPEdicao.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
          SPEdicao.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
          SPEdicao.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
          SPEdicao.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
          SPEdicao.ParamByName('CDPG').Value := fin_recFIN_CBCO.AsInteger;
          SPEdicao.ParamByName('STFI').Value := fin_rec_baiFIN_STFI.AsString;

          if LeftStr(fin_rec_baiFIN_STFI.AsString,4) = 'PAGO' then
          begin
            SPEdicao.ParamByName('DPAG').Value := EDDBAI.Date;
            SPEdicao.ParamByName('VPAG').Value := fin_rec_baiFIN_VALO.AsFloat;
            SPEdicao.ParamByName('VPEN').Value := 0;
          end else
          begin
            SPEdicao.ParamByName('DPAG').Value := 0;
            SPEdicao.ParamByName('VPAG').Value := 0;
            SPEdicao.ParamByName('VPEN').Value := fin_rec_baiFIN_VALO.AsFloat;
          end;

          SPEdicao.ParamByName('OBSE').Value := fin_rec_baiFIN_OBSE.AsString;
          SPEdicao.ExecProc;

          LANCA_CAIXA('C',IFThen(fin_recFIN_COBR.AsString = 'B',fin_recFIN_CONC.AsInteger - 1,fin_recFIN_CONC.AsInteger));
        end;

        if Pos('CH',fin_rec_baiFIN_TIPO.AsString) > 0 then
        begin
          SPEdicao.Close;
          SPEdicao.StoredProcName := 'SP_CAD_CHQ';
          SPEdicao.Prepare;

          SPEdicao.ParamByName('id').Value   := 0;
          SPEdicao.ParamByName('CDEP').Value := RECParametros.EP_ID;
          SPEdicao.ParamByName('CDCX').Value := ACDCX;
          SPEdicao.ParamByName('CDBX').Value := ACDBX;
          SPEdicao.ParamByName('CDLT').Value := 0;
          SPEdicao.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
          SPEdicao.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
          SPEdicao.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
          SPEdicao.ParamByName('BANC').Value := fin_rec_baiFIN_BANC.AsString;
          SPEdicao.ParamByName('DBAN').Value := fin_rec_baiFIN_DBAN.AsString;
          SPEdicao.ParamByName('AGEN').Value := fin_rec_baiFIN_AGEN.AsString;
          SPEdicao.ParamByName('CONT').Value := fin_rec_baiFIN_CONT.AsString;
          SPEdicao.ParamByName('NCHQ').Value := fin_rec_baiFIN_NCHQ.AsString;
          SPEdicao.ParamByName('STFI').Value := 'PAGO';
          SPEdicao.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
          SPEdicao.ParamByName('VTER').Value := 0;
          SPEdicao.ParamByName('VPRO').Value := 0;                                            
          SPEdicao.ParamByName('DCAD').Value := eddrom.Date;
          SPEdicao.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
          SPEdicao.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
          SPEdicao.ParamByName('CPF').Value  := null;
          SPEdicao.ParamByName('DOCT').Value := Trim(fin_recFIN_DOCT.AsString+IFThen(NuParcelas > 1,'-'+aSequenciaL[i],''));
          SPEdicao.ParamByName('CADA').Value := RECUsuarios.Login;
          SPEdicao.ExecProc;
        end;
        fin_rec_bai.Next;
      end;
    except
      on E: Exception do
      begin
        oCTransact(TEdicao ,ltRollback);
        oException(DBGPrazo,'Falha ao tentar baixa recebimentos !'+#13+
                            'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                            'Error Code: '+E.Message+'.'+#13+
                             Caption+'.');
      end;
    end;
  end;

  { Estoque }
  if SQLPedido.Current.ByName('BEPD').AsString = '1' then
     try
       with SQLEdicao do
       begin
         Close;
         SQL.Clear;
         SQL.Add('DELETE FROM CAD_PRO_SEP');
         SQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID+'''');
         SQL.Add('AND    IDPK = '''+SQLPedido.Current.ByName('ID').AsString+'''');
         ExecQuery;

         Close;
         SQL.Clear;
         SQL.Add('DELETE FROM CAD_PRO_RES');
         SQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID+'''');
         SQL.Add('AND    IDPK = '''+SQLPedido.Current.ByName('ID').AsString+'''');
         ExecQuery;
       end;
     except
       on E: Exception do
       begin
         oCTransact(TEdicao ,ltRollback);
         oException(DBGPrazo,'Falha ao tentar atualizar estoque !'+#13+
                             'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                             'Error Code: '+E.Message+'.'+#13+
                              Caption+'.');
       end;
     end;

  try
    { Pedido }
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('SET   ROM_CDCX = '''+ACDCX+''',');
      SQL.Add('      ROM_CDBX = '''+ACDBX+''',');
      SQL.Add('      ROM_DBAI = '''+formatDateTime('mm/dd/yy',edDBAI.Date)           +''',');
      SQL.Add('      DTBX     = '''+formatDateTime('mm/dd/yy hh:mm',edDBAI.Date+Time)+''',');
      SQL.Add('      ROM_STFI = '''+IFThen(Pos('SEM COB',SQLPedido.Current.ByName('STCO').AsString) = 0,'BAIXADO','FATURADO')+'''');
      SQL.Add('WHERE ID       = '''+SQLPedido.Current.ByName('ID').AsString+'''');
      ExecQuery;
    end;

    oCTransact(TEdicao);
    Editado := True;
    Close;
  except
    on E: Exception do
    begin
      oCTransact(TEdicao ,ltRollback);
      oException(DBGPrazo,'Falha ao tentar finalizar pedido !'+#13+
                          'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                          'Error Code: '+E.Message+'.'+#13+
                           Caption+'.');
    end;
  end;
end;

procedure Tfrmctr_ped_bai.siSAIRClick(Sender: TObject);
begin
  Editado := False;
  Close;
end;

procedure Tfrmctr_ped_bai._Edicao(ASTCO: String);
begin
  ASTCO := IFThen(Pos(ASTCO,'BANCÁRIOBOLETODUPLICATA') > 0,'DUPLICATA',ASTCO);

  fin_rec.Append;
  fin_recID.Value       := 0;
  fin_recFIN_CDPD.Value := SQLPedido.Current.ByName('ID').AsInteger;
  fin_recFIN_PORT.Value := SQLPedido.Current.ByName('DEPK').AsString;
  fin_recFIN_DROM.Value := SQLPedido.Current.ByName('DTPK').AsDateTime;
  fin_recFIN_CDRO.Value := SQLPedido.Current.ByName('CDRO').AsInteger;
  fin_recFIN_CDNF.Value := SQLPedido.Current.ByName('CDNF').AsInteger;
  fin_recFIN_DOCT.Value := IFThen(SQLPedido.Current.ByName('CDNF').AsInteger > 0,SQLPedido.Current.ByName('CDNF').AsString,SQLPedido.Current.ByName('DEPK').AsString);
  fin_recFIN_TITU.Value := fin_recFIN_DOCT.Value;
  fin_recFIN_CTNR.Value := SQLPedido.Current.ByName('CTNR').AsString;

  fin_recFIN_CCLI.Value := SQLPedido.Current.ByName('IDCD').AsInteger;
  fin_recFIN_DCLI.Value := SQLPedido.Current.ByName('DECD').AsString;
  fin_recFIN_CVEN.Value := SQLPedido.Current.ByName('IDCV').AsInteger;
  fin_recFIN_VEND.Value := SQLPedido.Current.ByName('DECV').AsString;
  fin_recFIN_CREP.Value := SQLPedido.Current.ByName('IDCR').AsInteger;
  fin_recFIN_DREP.Value := SQLPedido.Current.ByName('DECR').AsString;

  fin_recFIN_STCO.Value := ASTCO;
  fin_recFIN_CONC.Value := SQLPedido.Current.ByName('TPCO').AsInteger;
  fin_recFIN_STDO.Value := IFThen(ASTCO = 'DUPLICATA','B ','C ')+SQLPedido.Current.ByName('TPCO').AsString;
  fin_recFIN_VALO.Value := IFThen(SQLPedido.Current.ByName('VNF').AsFloat <> 0,SQLPedido.Current.ByName('VNF').AsFloat,RoundTO(SQLPedido.Current.ByName('TCDE').AsFloat/IFThen(fin_recFIN_CONC.AsFloat > 0,fin_recFIN_CONC.AsFloat,1),-2));

  if (SQLPedido.Current.ByName('TPCO').AsInteger = 0) and (SQLPedido.Current.ByName('FK_TCDE').AsInteger > 0) then
      fin_recFIN_VALO.Value := SQLPedido.Current.ByName('FK_TCDE').AsInteger;

  fin_recFIN_CBCO.Value := SQLPedido.Current.ByName('CDPG').AsInteger;
  fin_recFIN_DPRA.Value := SQLPedido.Current.ByName('DEPG').AsString;
  fin_recFIN_STPD.Value := SQLPedido.Current.ByName('STPD').AsString;

  fin_recFIN_COBR.Value := IFThen(ASTCO = 'DUPLICATA','B','C');
  fin_rec.Post;

  IEPrazo.Text    := SQLPedido.Current.ByName('CDPG').AsString;
  PNLMRRecebidos.Enabled := IEPrazo.Enabled;
end;

procedure Tfrmctr_ped_bai.IEPrazoChange(Sender: TObject);
var
  i: Word;
begin
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM FIN_REC_BAI');
    ExecSQL;
  end;
  oRTransact(TSheild);

  if fin_recFIN_COBR.AsString = 'B' then
  begin
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   PK.NFE_TITU,PK.NFE_DVEN,PK.NFE_VDUP FROM '+SLPrincipal.Values['nfe_dup']+' AS PK ');
      SQL.Add('WHERE    PK.NFE_CDNF = '''+IntToStr(SQLPedido.Current.ByName('CDNF').AsInteger)+'''');
      SQL.Add('ORDER BY PK.NFE_TITU');
      ExecQuery;
    end;

    while not SQLConsulta.Eof do
    begin
      fin_rec_bai.Append;
      fin_rec_baiFIN_TIPO.Value := IFThen(Pos(LeftStr(SQLPedido.Current.ByName('STPD').AsString,3),'ABADEV') = 0,'DUPLICATA',fin_rec_baiFIN_TIPO.AsString);
      fin_rec_baiFIN_TITU.Value := SQLConsulta.Current.Vars[0].AsString;
      fin_rec_baiFIN_DVEN.Value := SQLConsulta.Current.Vars[1].AsDateTime;
      fin_rec_baiFIN_VALO.Value := SQLConsulta.Current.Vars[2].AsFloat;
      fin_rec_bai.Post;
      
      SQLConsulta.Next;
    end;
 end else
 begin
   with SQLConsulta do
   begin
     Close;
     SQL.Clear;
     SQL.Add('SELECT PAG_PARC,');
     SQL.Add('       PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,PAG_D010,');
     SQL.Add('       PAG_D011,PAG_D012,PAG_D013,PAG_D014,PAG_D015,PAG_D016,PAG_D017,PAG_D018,PAG_D019,PAG_D020 ');
     SQL.Add('FROM   TAB_PAG');
     SQL.Add('WHERE  ID = '''+IEPrazo.Text+'''');
     ExecQuery;
   end;

   for i := 1 to SQLConsulta.Current.Vars[0].AsInteger do
   begin
     fin_rec_bai.Append;
     fin_rec_baiFIN_TIPO.Value := IFThen(Pos(LeftStr(SQLPedido.Current.ByName('STPD').AsString,3),'ABADEV') = 0,SQLPedido.Current.ByName('STCO').AsString,SQLPedido.Current.ByName('STPD').AsString);

     case i of
         1: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[1].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[1].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
         2: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[2].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[2].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
         3: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[3].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[3].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
         4: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[4].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[4].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
         5: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[5].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[5].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
         6: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[6].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[6].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
         7: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[7].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[7].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
         8: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[8].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[8].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
         9: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[9].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[9].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
        10: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[10].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[10].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
        11: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[11].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[11].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
        12: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[12].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[12].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
        13: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[13].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[13].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
        14: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[14].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[14].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
        15: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[15].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[15].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
        16: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[16].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[16].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
        17: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[17].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[17].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
        18: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[18].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[18].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
        19: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[19].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[19].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
        20: begin
              fin_rec_baiFIN_PRAZ.Value := SQLConsulta.Current.Vars[20].AsInteger;
              fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,SQLConsulta.Current.Vars[20].Value));
              fin_rec_baiFIN_VALO.Value := roundto(fin_recFIN_VALO.AsFloat/SQLConsulta.Current.Vars[0].AsInteger,-2);
            end;
     end;

     fin_rec_bai.Post;
   end;
 end;  
end;

procedure Tfrmctr_ped_bai._Empty;
begin
  oOTransact(TSheild);
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM FIN_REC');
    ExecSQL;

    SQL.Clear;
    SQL.Add('DELETE FROM FIN_REC_BAI');
    ExecSQL;
  end;

  oRTransact(TSheild);  
  with fin_rec do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_REC');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;

  with fin_rec_bai do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_REC_BAI');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;
end;

procedure Tfrmctr_ped_bai.fin_recAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  wRec := fin_rec.GetBookmark;
  tSHEILD.CommitRetaining;

  fin_rec.Close;
  fin_rec.Open;
  if (wRec = Nil) or (fin_rec.Fields[0].IsNull) then fin_rec.last
     else fin_rec.GotoBookmark(wRec);
  fin_rec.FreeBookmark(wRec);
end;

procedure Tfrmctr_ped_bai.fin_recAfterOpen(DataSet: TDataSet);
begin
  _Sumario;
end;

procedure Tfrmctr_ped_bai._Sumario;
begin
  edtotr.Text := '0,00';
  edtotd.Text := '0,00';
  edtotb.Text := '0,00';

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(FIN_VALO) FROM FIN_REC');
    Open;
    edtotr.Text := formatfloat('#,0.00',fields[0].AsFloat);

    SQL.Clear;
    SQL.Add('SELECT SUM(FIN_VALO) FROM FIN_REC_BAI');
    Open;
    edtotb.Text := formatfloat('#,0.00',fields[0].AsFloat);
  end;

  if (fin_rec.RecNo = 1) and (fin_recFIN_STCO.AsString = 'DEVOLUÇÃO') then
  edtotd.Text   := formatfloat('#,0.00',0) else
  edtotd.Text   := formatfloat('#,0.00',oTextToValor(edtotr.Text)-oTextToValor(edtotb.Text));
end;

procedure Tfrmctr_ped_bai.fin_rec_baiNewRecord(DataSet: TDataSet);
begin
  fin_rec_baiID.Value       := 0;
  fin_rec_baiFIN_STA.Value  := '0';
  fin_rec_baiFIN_PRAZ.Value := 0;
  fin_rec_baiFIN_DVEN.Value := edDROM.Date;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(FIN_VALO) FROM FIN_REC_BAI');
    Open;
    fin_rec_baiFIN_VALO.Value := oTextToValor(edtotr.Text) - fields[0].AsFloat;

    SQL.Clear;
    SQL.Add('SELECT   FIN_TIPO,FIN_BANC,FIN_AGEN,FIN_CONT,FIN_STA FROM FIN_REC_BAI');
    SQL.Add('ORDER BY ID DESC');
    Open;
    fin_rec_baiFIN_TIPO.Value := fields[0].AsString;

    if Pos('CH',fin_rec_baiFIN_TIPO.AsString) > 0 then
    begin
      fin_rec_baiFIN_BANC.Value := fields[1].AsString;
      fin_rec_baiFIN_AGEN.Value := fields[2].AsString;
      fin_rec_baiFIN_CONT.Value := fields[3].AsString;
      fin_rec_baiFIN_VALO.Value := 0;
    end;
  end;
end;

procedure Tfrmctr_ped_bai.b1IClick(Sender: TObject);
begin
  fin_rec_bai.Append;
end;

procedure Tfrmctr_ped_bai.b1AClick(Sender: TObject);
begin
  fin_rec_bai.Edit;
end;

procedure Tfrmctr_ped_bai.b1DClick(Sender: TObject);
begin
  fin_rec_bai.Delete;
end;

procedure Tfrmctr_ped_bai.b1SClick(Sender: TObject);
begin
  fin_rec_bai.Post;
end;

procedure Tfrmctr_ped_bai.b1CClick(Sender: TObject);
begin
  fin_rec_bai.Cancel;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  b1I.Enabled := true;
  b1A.Enabled := true;
  b1D.Enabled := true;
  b1S.Enabled := false;
  b1C.Enabled := false;

  wRec := fin_rec_bai.GetBookmark;
  tSHEILD.CommitRetaining;

  fin_rec_bai.Close;
  fin_rec_bai.Open;
  if (wRec = Nil) or (fin_rec_bai.Fields[0].IsNull) then fin_rec_bai.last
     else fin_rec_bai.GotoBookmark(wRec);
  fin_rec_bai.FreeBookmark(wRec);

  _Sumario;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiAfterCancel(DataSet: TDataSet);
begin
  b1I.Enabled := true;
  b1A.Enabled := true;
  b1D.Enabled := true;
  b1S.Enabled := false;
  b1C.Enabled := false;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiAfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
  _Sumario;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiAfterEdit(DataSet: TDataSet);
begin
  b1I.Enabled := false;
  b1A.Enabled := false;
  b1D.Enabled := false;
  b1S.Enabled := true;
  b1C.Enabled := true;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiBeforeCancel(DataSet: TDataSet);
begin
  b1I.Enabled := true;
  b1A.Enabled := true;
  b1D.Enabled := true;
  b1S.Enabled := false;
  b1C.Enabled := false;

  if fin_rec_bai.RecordCount = 0 then
  begin
    fin_rec_bai.Close;
    fin_rec_bai.Open;
    ABORT;
  end;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiBeforePost(DataSet: TDataSet);
begin
  fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(fin_rec_baiFIN_DVEN.AsDateTime);

  if fin_rec_baiFIN_TIPO.AsString = '' then
     DataBaseError('Tipo de Recebimento não Selecionado !');

  if fin_rec_baiFIN_VALO.AsFloat = 0 then
     DataBaseError('Valor de Recebimento não Informado !');

  if (fin_rec_baiFIN_TIPO.AsString = 'CHEQUE PRE-DATADO') and (fin_rec_baiFIN_DVEN.AsDateTime = edDROM.Date) then
      fin_rec_baiFIN_TIPO.AsString := 'CHEQUE A VISTA';

  if (fin_rec_baiFIN_TIPO.AsString = 'CHEQUE A VISTA') and (fin_rec_baiFIN_DVEN.AsDateTime <> edDROM.Date) then
      fin_rec_baiFIN_TIPO.AsString := 'CHEQUE PRE-DATADO';

  if (fin_rec_baiFIN_TIPO.AsString = 'DEVOLUÇÃO') or (fin_rec_baiFIN_TIPO.AsString = 'ABATIMENTO') then
      fin_rec_baiFIN_STFI.Value := 'BAIXADO' else
  if  (fin_rec_baiFIN_DVEN.AsDateTime = EDDBAI.Date) and (fin_recFIN_COBR.AsString <> 'B') and (RECParametros.FIN_PAG_AUTO) then
      fin_rec_baiFIN_STFI.Value := 'PAGO' else
      fin_rec_baiFIN_STFI.Value := 'PENDENTE';

  if fin_rec_baiFIN_NCHQ.AsString <> '' then
  begin
    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,FIN_TITU FROM FIN_REC_BAI');
      SQL.Add('WHERE  FIN_NCHQ = '''+fin_rec_baiFIN_NCHQ.AsString+'''');
      Open;

      if (not consulta_S.fields[0].IsNull) and (consulta_S.fields[0].AsInteger <> fin_rec_baiID.AsInteger) then
      DataBaseError('Número do cheque já cadastrado !');
    end;

    if fin_rec_baiFIN_BANC.AsString <> '' then
    with SQLFKConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CAD_CHQ.ID,CHQ_NCHQ,CLI_FANT FROM CAD_CHQ,CAD_CLI');
      SQL.Add('WHERE  CHQ_CCLI = CAD_CLI.ID');
      SQL.Add('AND    CHQ_NCHQ = '''+fin_rec_baiFIN_NCHQ.AsString+'''');
      SQL.Add('AND    CHQ_BANC = '''+fin_rec_baiFIN_BANC.AsString+'''');
      SQL.Add('AND    CHQ_AGEN = '''+fin_rec_baiFIN_AGEN.AsString+'''');
      SQL.Add('AND    CHQ_CONT = '''+fin_rec_baiFIN_CONT.AsString+'''');
      SQL.Add('AND    CHQ_STFI <> ''CANCELADO''');
      ExecQuery;

      if not Current.Vars[0].AsInteger > 0 then
         DataBaseError('Cheque No '+Current.Vars[1].AsString+' já Cadastrado !'+#13+
                       'Cliente '  +Current.Vars[2].AsString);
    end;
  end;
end;

procedure Tfrmctr_ped_bai.DBGPrazoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if ((DBGPrazo.FocusedColumn = 1) and (Pos('CH',fin_rec_baiFIN_TIPO.AsString) = 0)) or
                     (DBGPrazo.FocusedColumn = 7) then
                 begin
                   fin_rec_bai.Next;
                   if fin_rec_bai.Eof then
                   begin
                     if oTextToValor(edtotb.Text) < oTextToValor(edtotr.Text) then
                        fin_rec_bai.Append;
                     DBGPrazo.FocusedColumn := 1;
                   end;
                 end
                 else
                   DBGPrazo.FocusedColumn := DBGPrazo.FocusedColumn + 1;
               end;
    VK_DELETE: if fin_rec_bai.State = dsBrowse then
                  b1D.Click;
    VK_ESCAPE: if fin_rec_bai.State = dsBrowse then close else fin_rec_bai.Cancel;
    VK_INSERT: if not b1S.Enabled then b1I.Click;
  end;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiFIN_PRAZValidate(Sender: TField);
begin
  if fin_rec_baiFIN_PRAZ.AsInteger > 0 then
  fin_rec_baiFIN_DVEN.Value := uRETDTVencimento(incDay(edDROM.Date,fin_rec_baiFIN_PRAZ.AsInteger));
end;

procedure Tfrmctr_ped_bai.edDROMExit(Sender: TObject);
  var
    Ctrl: TWinControl;
begin
  if fin_rec_bai.State in [dsEdit,dsInsert] then
     if fin_rec_baiFIN_VALO.AsFloat > 0 then
        fin_rec_bai.Post else fin_rec_bai.Cancel;

  try
    with SQLFKConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAI_LAF');
      SQL.Add('WHERE  CAI_CDEP = '''+RECParametros.EP_ID+'''');
      SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',edDBAI.Date)+'''');
      ExecQuery;

      if Eof then
         oException(EDDROM,'Data de baixa informada não possui fluxo de caixa !');

      ACDCX := Current.Vars[0].AsString;
    end;

    while not fin_rec_bai.Eof do
    begin
      fin_rec_bai.Edit;
      if fin_rec_baiFIN_DVEN.AsDateTime <= fin_rec_baiFIN_DCAD.AsDateTime then
      fin_rec_baiFIN_DVEN.Value := edDROM.Date;
      fin_rec_baiFIN_DCAD.Value := edDROM.Date;
      fin_rec_bai.Post;
      fin_rec_bai.Next;
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

procedure Tfrmctr_ped_bai.DBGPrazoFIN_VALOValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var
  NewString: string;
  ClickedOK: Boolean;
begin
  if DBGPrazo.EditingText <> '' then
  fin_rec_baiFIN_VALO.Value := strtofloat(DBGPrazo.EditingText);

  if Pos('CH',fin_rec_baiFIN_TIPO.AsString) = 0 then
  exit;
  
  if not (fin_rec_bai.State in [dsInsert,dsEdit]) then
  exit;

  ClickedOK := InputQuery('Passe o cheque pela leitora', 'Cheque', NewString);
  if (ClickedOK) and (length(NewString) > 30) then
  begin
    fin_rec_baiFIN_BANC.Value := copy(NewString,02,03);
    fin_rec_baiFIN_AGEN.Value := copy(NewString,05,04);
    fin_rec_baiFIN_CONT.Value := copy(NewString,22,12);
    fin_rec_baiFIN_NCHQ.Value := copy(NewString,14,06);
  end;
end;

procedure Tfrmctr_ped_bai.DBGPrazoFIN_TIPOChange(Sender: TObject);
begin
  if not (fin_rec_bai.State in [dsInsert,dsEdit]) then
  exit;

  fin_rec_baiFIN_TIPO.Value := DBGPrazo.EditingText;
  if Pos('CH',fin_rec_baiFIN_TIPO.AsString) > 0 then
  fin_rec_baiFIN_VALO.Value := 0;
end;

procedure Tfrmctr_ped_bai.LANCA_CAIXA(cobr: string;conc: word);
var
  doct: string;
  valo: double;
  ctsr: integer;
begin
  with SQLEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAI_TSR');
    SQL.Add('WHERE  CAI_DESC = ''CAIXA INICIAL''');
    ExecQuery;
    ctsr := fields[0].AsInteger;
  end;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FIN_TIPO FROM FIN_REC_BAI');
    SQL.Add('GROUP BY FIN_TIPO');
    Open;
  end;

  while not consulta_S.Eof do
  begin
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM TAB_COB');
      SQL.Add('WHERE  VEN_TIPO = '''+consulta_S.Fields[0].AsString+'''');
      ExecQuery;

      if Current.Vars[0].IsNull then
      doct := '1'
      else
      doct := Current.Vars[0].AsString;
      doct := inttostr(conc)+oStrZero(strtoint(doct),19);

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAI_MOV');
      SQL.Add('WHERE  CAI_CCAB = '''+ACDCX+'''');
      SQL.Add('AND    CAI_DESC = '''+consulta_S.Fields[0].AsString+'''');
      SQL.Add('AND    CAI_CONC = '''+inttostr(conc)+'''');
      ExecQuery;

      Close;
      SQL.Clear;
      if cobr = 'B' then
      SQL.Add('SELECT SUM(FIN_VALO) FROM '+SLPrincipal.Values['fin_rec_ban_bai']) else
      SQL.Add('SELECT SUM(FIN_VALO) FROM '+SLPrincipal.Values['fin_rec_car_bai']);
      SQL.Add('WHERE  FIN_CDCX = '''+ACDCX+'''');
      SQL.Add('AND    FIN_TIPO = '''+consulta_S.Fields[0].AsString+'''');
      SQL.Add('AND    FIN_CONC = '''+inttostr(conc)+'''');
      ExecQuery;
      valo := Current.Vars[0].AsFloat;
    end;

    SPEdicao.Close;
    SPEdicao.StoredProcName := 'SP_CAI_MOV';
    SPEdicao.Prepare;
    
    SPEdicao.ParamByName('ID').Value   := 0;
    SPEdicao.ParamByName('CCAB').Value := ACDCX;
    SPEdicao.ParamByName('CTSR').Value := ctsr;
    SPEdicao.ParamByName('CONC').Value := conc;
    SPEdicao.ParamByName('DOCT').Value := doct;
    SPEdicao.ParamByName('DEMV').Value := consulta_S.Fields[0].AsString;
    SPEdicao.ParamByName('DCAD').Value := edDROM.Date;
    SPEdicao.ParamByName('CRED').Value := valo;
    SPEdicao.ParamByName('DEBI').Value := 0;
    SPEdicao.ExecProc;

    consulta_S.Next;
  end;

  with SQLEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(CAI_CRED),SUM(CAI_DEBI),SUM(CAI_CRED-CAI_DEBI) FROM CAI_MOV');
    SQL.Add('WHERE  CAI_CCAB = '''+ACDCX+'''');
    SQL.Add('AND    CAI_CTSR <> 533');
    ExecQuery;
  end;

  with SQLFKEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CAI_LAF');
    SQL.Add('SET    CAI_CRED = '''+oStrTran(SQLEdicao.Current.Vars[0].AsString,',','.')+''',');
    SQL.Add('       CAI_DEBI = '''+oStrTran(SQLEdicao.Current.Vars[1].AsString,',','.')+''',');
    SQL.Add('       CAI_SATU = '''+oStrTran(SQLEdicao.Current.Vars[2].AsString,',','.')+'''');
    SQL.Add('WHERE  ID       = '''+ACDCX+'''');
    ExecQuery;
  end;
end;

end.
