unit plan_chq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxDBTLCl,
  dxGrClms, dxDBCtrl, dxDBGrid, dxTL, dxCntner, dxPageControl, dxEditor,
  dxEdLib, StdCtrls, dxExEdtr, DAteUtils, math, Buttons, rxSpeedbar;

type
  Tfrmlan_chq = class(Tfrmpadr3)
    cadastro: TIBDataSet;
    cadastroID: TIntegerField;
    cadastroFIN_DOCT: TIBStringField;
    cadastroFIN_DVEN: TDateField;
    cadastroFIN_TIPO: TIBStringField;
    cadastroFIN_BANC: TIBStringField;
    cadastroFIN_AGEN: TIBStringField;
    cadastroFIN_CONT: TIBStringField;
    cadastroFIN_NCHQ: TIBStringField;
    cadastroFIN_OBSE: TMemoField;
    cadastroFIN_STA: TIBStringField;
    cadastroFIN_PRAZ: TSmallintField;
    cadastroFIN_DPAG: TDateField;
    cadastroFIN_DBAN: TIBStringField;
    cadastroFIN_STFI: TIBStringField;
    cadastroFIN_VALO: TIBBCDField;
    cadastroFIN_VPAG: TIBBCDField;
    cadastroFIN_VPEN: TIBBCDField;
    cadastroFIN_COBR: TIBStringField;
    cadastroFIN_STDO: TIBStringField;
    cadastroFIN_CCAB: TIntegerField;
    cadastroFIN_CDBX: TIntegerField;
    cadastroFIN_CDCX: TIntegerField;
    cadastroFIN_CCLI: TIntegerField;
    cadastroFIN_DCLI: TIBStringField;
    cadastroFIN_CVEN: TIntegerField;
    cadastroFIN_VEND: TIBStringField;
    cadastroFIN_CREP: TIntegerField;
    cadastroFIN_DREP: TIBStringField;
    cadastroFIN_ATRA: TSmallintField;
    cadastroFIN_CONC: TSmallintField;
    cadastroFIN_DCAD: TDateField;
    cadastroFIN_DMED: TDateField;
    cadastroFIN_DATR: TDateField;
    cadastroFIN_MCHQ: TSmallintField;
    cadastroFIN_STCO: TIBStringField;
    dtscadastro: TDataSource;
    tSHEILD: TIBTransaction;
    ibSHEILD: TIBStoredProc;
    consulta_s: TIBQuery;
    tab_pag: TIBQuery;
    tab_pagID: TIntegerField;
    tab_pagPAG_DPAG: TIBStringField;
    tab_pagPAG_D001: TIntegerField;
    tab_pagPAG_D002: TIntegerField;
    tab_pagPAG_D003: TIntegerField;
    tab_pagPAG_D004: TIntegerField;
    tab_pagPAG_D005: TIntegerField;
    tab_pagPAG_D006: TIntegerField;
    tab_pagPAG_D007: TIntegerField;
    tab_pagPAG_D008: TIntegerField;
    tab_pagPAG_D009: TIntegerField;
    tab_pagPAG_D010: TIntegerField;
    tab_pagPAG_STA: TIBStringField;
    tab_pagPAG_PARC: TSmallintField;
    aux: TIBQuery;
    aux_S: TIBQuery;
    ImageList1: TImageList;
    cadastroFIN_RCLI: TIBStringField;
    cadastroFIN_RREP: TIBStringField;
    cadastroFIN_DBAI: TDateField;
    cadastroFIN_CPF: TIBStringField;
    cadastroFIN_VENC: TIBBCDField;
    psq_cli: TIBDataSet;
    psq_cliID: TIntegerField;
    psq_cliCLI_RAZA: TIBStringField;
    psq_cliCLI_FANT: TIBStringField;
    psq_cliCLI_CONT: TIBStringField;
    psq_cliCLI_DCAD: TDateField;
    psq_cliCLI_STA: TIBStringField;
    psq_cliCLI_MAIL: TIBStringField;
    psq_cliCLI_DDD: TIBStringField;
    psq_cliCLI_TEL1: TIBStringField;
    psq_cliCLI_TEL2: TIBStringField;
    psq_cliCLI_FAX: TIBStringField;
    psq_cliCLI_CEL: TIBStringField;
    psq_cliCLI_RG: TIBStringField;
    psq_cliCLI_CPF: TIBStringField;
    psq_cliCLI_INSC: TIBStringField;
    psq_cliCLI_CNPJ: TIBStringField;
    psq_cliCLI_TLOG: TIBStringField;
    psq_cliCLI_LOGR: TIBStringField;
    psq_cliCLI_CEP: TIBStringField;
    psq_cliCLI_NUME: TIBStringField;
    psq_cliCLI_COMP: TIBStringField;
    psq_cliCLI_BAI: TIBStringField;
    psq_cliCLI_CID: TIBStringField;
    psq_cliCLI_ESTA: TIBStringField;
    psq_cliCLI_TLOC: TIBStringField;
    psq_cliCLI_LOGC: TIBStringField;
    psq_cliCLI_CEPC: TIBStringField;
    psq_cliCLI_NUMC: TIBStringField;
    psq_cliCLI_COMC: TIBStringField;
    psq_cliCLI_BAIC: TIBStringField;
    psq_cliCLI_CIDC: TIBStringField;
    psq_cliCLI_ESTC: TIBStringField;
    psq_cliCLI_OBSO: TMemoField;
    psq_cliCLI_STAV: TIBStringField;
    psq_cliCLI_VULT: TIBBCDField;
    psq_cliCLI_TPVE: TIBStringField;
    psq_cliCLI_OBSE: TMemoField;
    psq_cliCLI_TLOV: TIBStringField;
    psq_cliCLI_LOGV: TIBStringField;
    psq_cliCLI_CEPV: TIBStringField;
    psq_cliCLI_NUMV: TIBStringField;
    psq_cliCLI_COMV: TIBStringField;
    psq_cliCLI_BAIV: TIBStringField;
    psq_cliCLI_CIDV: TIBStringField;
    psq_cliCLI_ESTV: TIBStringField;
    psq_cliCLI_RICM: TIBStringField;
    psq_cliCLI_CPAG: TIBStringField;
    psq_cliCLI_DPAG: TIBStringField;
    psq_cliCLI_CMUN: TIBStringField;
    psq_cliCLI_DALT: TDateField;
    psq_cliCLI_CTRA: TIntegerField;
    psq_cliCLI_DTRA: TIBStringField;
    psq_cliCLI_DFUN: TDateField;
    psq_cliCLI_CICM: TIBStringField;
    psq_cliCLI_RAMO: TIBStringField;
    psq_cliCLI_CMUV: TIBStringField;
    psq_cliCLI_CMUC: TIBStringField;
    psq_cliCLI_DD2: TIBStringField;
    psq_cliCLI_DD3: TIBStringField;
    psq_cliCLI_DD4: TIBStringField;
    psq_cliCLI_DD5: TIBStringField;
    psq_cliCLI_DD6: TIBStringField;
    psq_cliCLI_TEL3: TIBStringField;
    psq_cliCLI_TCE1: TIBStringField;
    psq_cliCLI_TCE2: TIBStringField;
    psq_cliCLI_NCEL: TIBStringField;
    psq_cliCLI_NEID: TIBStringField;
    psq_cliCLI_FCON: TIBStringField;
    psq_cliCLI_FMAI: TIBStringField;
    psq_cliCLI_FDDD: TIBStringField;
    psq_cliCLI_FTE1: TIBStringField;
    psq_cliCLI_FDD2: TIBStringField;
    psq_cliCLI_FTE2: TIBStringField;
    psq_cliCLI_FDD3: TIBStringField;
    psq_cliCLI_FTE3: TIBStringField;
    psq_cliCLI_FDD4: TIBStringField;
    psq_cliCLI_FFAX: TIBStringField;
    psq_cliCLI_FDD5: TIBStringField;
    psq_cliCLI_FCEL: TIBStringField;
    psq_cliCLI_FTC1: TIBStringField;
    psq_cliCLI_FDD6: TIBStringField;
    psq_cliCLI_FNCE: TIBStringField;
    psq_cliCLI_FTC2: TIBStringField;
    psq_cliCLI_FNID: TIBStringField;
    psq_cliCLI_CCON: TIBStringField;
    psq_cliCLI_CMAI: TIBStringField;
    psq_cliCLI_CDDD: TIBStringField;
    psq_cliCLI_CTE1: TIBStringField;
    psq_cliCLI_CDD2: TIBStringField;
    psq_cliCLI_CTE2: TIBStringField;
    psq_cliCLI_CDD3: TIBStringField;
    psq_cliCLI_CTE3: TIBStringField;
    psq_cliCLI_CDD4: TIBStringField;
    psq_cliCLI_CFAX: TIBStringField;
    psq_cliCLI_CDD5: TIBStringField;
    psq_cliCLI_CCEL: TIBStringField;
    psq_cliCLI_CTC1: TIBStringField;
    psq_cliCLI_CDD6: TIBStringField;
    psq_cliCLI_CNCE: TIBStringField;
    psq_cliCLI_CTC2: TIBStringField;
    psq_cliCLI_CNID: TIBStringField;
    psq_cliCLI_VDSC: TIBBCDField;
    psq_cliCLI_CRED: TIBBCDField;
    psq_cliCLI_SITE: TIBStringField;
    psq_cliCLI_REVE: TIBStringField;
    psq_cliCLI_IMUN: TIBStringField;
    psq_cliCLI_CCM: TIBStringField;
    psq_cliCLI_DULT: TDateField;
    psq_cliCLI_REGI: TIBStringField;
    psq_cliCLI_CVEN: TIntegerField;
    psq_cliCLI_CREP: TIntegerField;
    psq_cliCLI_DUSU: TIBStringField;
    psq_cliCLI_STPD: TSmallintField;
    pnlBOR: TPanel;
    dxPageControl1: TdxPageControl;
    tsVEN: TdxTabSheet;
    dbgVEN: TdxDBGrid;
    dxPageControl2: TdxPageControl;
    tsBOR: TdxTabSheet;
    dbgconsulta: TdxDBGrid;
    dbgconsultaFIN_PRAZ: TdxDBGridMaskColumn;
    dbgconsultaFIN_DVEN: TdxDBGridDateColumn;
    dbgconsultaFIN_VALO: TdxDBGridMaskColumn;
    dbgconsultaFIN_BANC: TdxDBGridMaskColumn;
    dbgconsultaFIN_AGEN: TdxDBGridMaskColumn;
    dbgconsultaFIN_CONT: TdxDBGridMaskColumn;
    dbgconsultaFIN_NCHQ: TdxDBGridMaskColumn;
    dbgconsultaFIN_STA: TdxDBGridCheckColumn;
    dbgconsultaFIN_CPF: TdxDBGridMaskColumn;
    dbgconsultaFIN_OBSE: TdxDBGridBlobColumn;
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
    fin_rec_bai: TIBDataSet;
    dtsfin_rec_bai: TDataSource;
    fin_rec_baiID: TIntegerField;
    fin_rec_baiFIN_CCAB: TIntegerField;
    fin_rec_baiFIN_CDBX: TIntegerField;
    fin_rec_baiFIN_CDCX: TIntegerField;
    fin_rec_baiFIN_CDRD: TIntegerField;
    fin_rec_baiFIN_CCLI: TIntegerField;
    fin_rec_baiFIN_DFIN: TIBStringField;
    fin_rec_baiFIN_DCLI: TIBStringField;
    fin_rec_baiFIN_RCLI: TIBStringField;
    fin_rec_baiFIN_CVEN: TIntegerField;
    fin_rec_baiFIN_VEND: TIBStringField;
    fin_rec_baiFIN_CREP: TIntegerField;
    fin_rec_baiFIN_DREP: TIBStringField;
    fin_rec_baiFIN_RREP: TIBStringField;
    fin_rec_baiFIN_PRAZ: TSmallintField;
    fin_rec_baiFIN_ATRA: TSmallintField;
    fin_rec_baiFIN_CONC: TSmallintField;
    fin_rec_baiFIN_DCAD: TDateField;
    fin_rec_baiFIN_DVEN: TDateField;
    fin_rec_baiFIN_DPAG: TDateField;
    fin_rec_baiFIN_DMED: TDateField;
    fin_rec_baiFIN_DATR: TDateField;
    fin_rec_baiFIN_DBAI: TDateField;
    fin_rec_baiFIN_CPPL: TIntegerField;
    fin_rec_baiFIN_CCUS: TIntegerField;
    fin_rec_baiFIN_CDCO: TIntegerField;
    fin_rec_baiFIN_CDBA: TIBStringField;
    fin_rec_baiFIN_DEBA: TIBStringField;
    fin_rec_baiFIN_STDO: TIBStringField;
    fin_rec_baiFIN_DOCT: TIBStringField;
    fin_rec_baiFIN_BANC: TIBStringField;
    fin_rec_baiFIN_DBAN: TIBStringField;
    fin_rec_baiFIN_AGEN: TIBStringField;
    fin_rec_baiFIN_CONT: TIBStringField;
    fin_rec_baiFIN_NCHQ: TIBStringField;
    fin_rec_baiFIN_MCHQ: TSmallintField;
    fin_rec_baiFIN_TIPO: TIBStringField;
    fin_rec_baiFIN_STFI: TIBStringField;
    fin_rec_baiFIN_STCO: TIBStringField;
    fin_rec_baiFIN_VALO: TIBBCDField;
    fin_rec_baiFIN_VPAG: TIBBCDField;
    fin_rec_baiFIN_VPEN: TIBBCDField;
    fin_rec_baiFIN_VENC: TIBBCDField;
    fin_rec_baiFIN_CTNR: TIBStringField;
    fin_rec_baiFIN_VMUL: TIBBCDField;
    fin_rec_baiFIN_PMUL: TIBBCDField;
    fin_rec_baiFIN_VJUR: TIBBCDField;
    fin_rec_baiFIN_PJUR: TIBBCDField;
    fin_rec_baiFIN_VDES: TIBBCDField;
    fin_rec_baiFIN_PDES: TIBBCDField;
    fin_rec_baiFIN_VCHQ: TIBBCDField;
    fin_rec_baiFIN_CPF: TIBStringField;
    fin_rec_baiFIN_STA: TIBStringField;
    fin_rec_baiFIN_COBR: TIBStringField;
    fin_rec_baiFIN_OBSE: TMemoField;
    fin_rec_baiFIN_DERD: TIBStringField;
    dbgVENFIN_DOCT: TdxDBGridMaskColumn;
    dbgVENFIN_VALO: TdxDBGridMaskColumn;
    sbVEN: TSpeedBar;
    SpeedbarSection9: TSpeedbarSection;
    SpeedbarSection10: TSpeedbarSection;
    SpeedbarSection11: TSpeedbarSection;
    SpeedbarSection12: TSpeedbarSection;
    SpeedItem1: TSpeedItem;
    SpeedItem2: TSpeedItem;
    SpeedItem3: TSpeedItem;
    SpeedItem4: TSpeedItem;
    SpeedItem5: TSpeedItem;
    dbgVENFIN_STDO: TdxDBGridMaskColumn;
    dbgVENFIN_DVEN: TdxDBGridDateColumn;
    dbgVENFIN_TIPO: TdxDBGridMaskColumn;
    pnlPSQ: TPanel;
    gbPSQ: TGroupBox;
    Label1: TLabel;
    eddoct: TdxButtonEdit;
    cbdoct: TdxImageEdit;
    btnBUSCAR: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    edTVEN: TdxEdit;
    Label3: TLabel;
    edTCHQ: TdxEdit;
    Label4: TLabel;
    edSALD: TdxEdit;
    Label5: TLabel;
    edcdcx: TdxEdit;
    siLIM: TSpeedItem;
    siBOR: TSpeedItem;
    dbgVENFIN_DCAD: TdxDBGridDateColumn;
    procedure FormCreate(Sender: TObject);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure cadastroAfterCancel(DataSet: TDataSet);
    procedure cadastroAfterDelete(DataSet: TDataSet);
    procedure cadastroAfterEdit(DataSet: TDataSet);
    procedure cadastroAfterPost(DataSet: TDataSet);
    procedure cadastroBeforeCancel(DataSet: TDataSet);
    procedure cadastroBeforePost(DataSet: TDataSet);
    procedure b1IClick(Sender: TObject);
    procedure b1AClick(Sender: TObject);
    procedure b1DClick(Sender: TObject);
    procedure b1SClick(Sender: TObject);
    procedure b1CClick(Sender: TObject);
    procedure dbgconsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cadastroAfterInsert(DataSet: TDataSet);
    procedure siVALClick(Sender: TObject);
    procedure dbgconsultaFIN_VALOValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure btnBUSCARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgVENCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure fin_rec_baiAfterOpen(DataSet: TDataSet);
    procedure cadastroFIN_PRAZValidate(Sender: TField);
    procedure SpeedItem3Click(Sender: TObject);
    procedure siLIMClick(Sender: TObject);
    procedure fin_rec_baiBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure AjustaForm;
  public
    { Public declarations }
    editado: boolean;
    valor_inicial: double;
    procedure PESQUISA_CLIENTE(pesq,chave: string;cdsc: double;pevr,impo: boolean);
    procedure ATUALIZA_SALDO;
  end;

var
  frmlan_chq: Tfrmlan_chq;

implementation

uses p_funcoes, uPrincipal, prec_pag_ban, prec_pag_car;

{$R *.dfm}

procedure Tfrmlan_chq.ATUALIZA_SALDO;
begin
  with aux_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(FIN_VALO) FROM FIN_REC_BAI');
    Open;
    edTVEN.Text := formatfloat('R$ #,0.00',aux_S.Fields[0].AsFloat);

    SQL.Clear;
    SQL.Add('SELECT SUM(FIN_VALO) FROM FIN_REC_CHQ');
    Open;
    edTCHQ.Text := formatfloat('R$ #,0.00',aux_S.Fields[0].AsFloat);
  end;
  edSALD.Text   := formatfloat('R$ #,0.00',RETORNA_REAL(edTVEN.Text)-RETORNA_REAL(edTCHQ.Text));
end;

procedure Tfrmlan_chq.AjustaForm;
begin
  screen.Cursor:=crHourGlass;
  screen.Cursor:=crDefault;

  Self.top    := frmprincipal.pnbot.Height+frmprincipal.pnCustomize.Top;
  Self.left   := frmprincipal.pnCustomize.Width+4;
  Self.Height := frmprincipal.pnCustomize.Height-4;
  Self.Width  := TELA_WIDTH;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
   self.Height := screen.Height;
   self.Width  :=  screen.Width;

   if frmprincipal.pnbot.Visible then
      self.Height := self.Height - frmprincipal.pnbot.Height;
  end;
end;

procedure Tfrmlan_chq.PESQUISA_CLIENTE(pesq,chave: string;cdsc: double;pevr,impo: boolean);
begin
  if (chave = '') or (chave = '0') then
  exit;

  try
    tag := 1;

    with psq_cli do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_CLI');

      if pesq = 'I' then
      SelectSQL.Add('WHERE  CAD_CLI.ID  = '''+chave+'''')
      else if pesq = 'F' then
      SelectSQL.Add('WHERE  CLI_FANT LIKE ''%'+chave+'%''')
      else if pesq = 'R' then
      SelectSQL.Add('WHERE  CLI_CPF  LIKE ''%'+chave+'%''');

      Open;
      Last;
    end;
  finally
    tag := 0;
  end;
end;

procedure Tfrmlan_chq.FormCreate(Sender: TObject);
begin
  ajustaform;

  if not tSHEILD.Active then
  tSHEILD.StartTransaction;

 { with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM FIN_REC_BAI');
    ExecSQL;
    tSHEILD.CommitRetaining;

    SQL.Clear;
    SQL.Add('DELETE FROM FIN_REC_CHQ');
    ExecSQL;
    tSHEILD.CommitRetaining;
  end;}

  fin_rec_bai.Close;
  fin_rec_bai.Open;

  cadastro.Close;
  cadastro.Open;
end;

procedure Tfrmlan_chq.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value       := 0;
  cadastroFIN_CCAB.Value := 0;
  cadastroFIN_DVEN.Value := strtodate(TSConsulta.Values['data_sistema']);
  cadastroFIN_DCAD.Value := strtodate(TSConsulta.Values['data_sistema']);

  if cadastro.RecNo > 1 then
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FIN_TIPO,FIN_BANC,FIN_AGEN,FIN_CONT,FIN_STA FROM FIN_REC_CHQ');
    SQL.Add('ORDER BY ID DESC');
    Open;

    cadastroFIN_BANC.Value := fields[1].AsString;
    cadastroFIN_AGEN.Value := fields[2].AsString;
    cadastroFIN_CONT.Value := fields[3].AsString;
    cadastroFIN_STA.Value  := fields[4].AsString;
    cadastroFIN_VALO.Value := 0;
 end;

 if valor_inicial > 0 then
 begin
   cadastroFIN_VALO.Value := valor_inicial;
   valor_inicial := 0;
 end;
end;

procedure Tfrmlan_chq.cadastroAfterCancel(DataSet: TDataSet);
begin
  b1I.Enabled := true;
  b1A.Enabled := true;
  b1D.Enabled := true;
  b1S.Enabled := false;
  b1C.Enabled := false;
end;

procedure Tfrmlan_chq.cadastroAfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
end;

procedure Tfrmlan_chq.cadastroAfterEdit(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    b1I.Enabled := false;
    b1A.Enabled := false;
    b1D.Enabled := false;
    b1S.Enabled := true;
    b1C.Enabled := true;

    dbgconsulta.SetFocus;
  end;
end;

procedure Tfrmlan_chq.cadastroAfterInsert(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    b1I.Enabled := false;
    b1A.Enabled := false;
    b1D.Enabled := false;
    b1S.Enabled := true;
    b1C.Enabled := true;

    dbgconsulta.FocusedColumn := 0;
    dbgconsulta.SetFocus;
  end;
end;

procedure Tfrmlan_chq.cadastroAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  tSHEILD.CommitRetaining;

  if tag = 0 then
  begin
    b1I.Enabled := true;
    b1A.Enabled := true;
    b1D.Enabled := true;
    b1S.Enabled := false;
    b1C.Enabled := false;

    wRec := cadastro.GetBookmark;
    cadastro.Close;
    cadastro.Open;
    
    if (wRec = Nil) or (cadastro.Fields[0].IsNull) then cadastro.last
    else cadastro.GotoBookmark(wRec);
    cadastro.FreeBookmark(wRec);

    ATUALIZA_SALDO;
  end;
end;

procedure Tfrmlan_chq.cadastroBeforeCancel(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    b1I.Enabled := true;
    b1A.Enabled := true;
    b1D.Enabled := true;
    b1S.Enabled := false;
    b1C.Enabled := false;

    if cadastro.RecordCount = 0 then
    begin
      cadastro.Close;
      cadastro.Open;
      ABORT;
    end;
  end;  
end;

procedure Tfrmlan_chq.cadastroBeforePost(DataSet: TDataSet);
begin
  cadastroFIN_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(cadastroFIN_DVEN.AsDateTime);

  if cadastroFIN_DVEN.AsDateTime = strtodate(TSConsulta.Values['data_sistema']) then
  cadastroFIN_TIPO.Value := 'CHEQUE A VISTA' else
  cadastroFIN_TIPO.Value := 'CHEQUE PRE-DATADO';

  if cadastroFIN_VALO.AsFloat = 0 then
  begin
    dbgconsulta.FocusedColumn := 2;
    DataBaseError('Valor de Recebimento não informado !');
  end;

  if cadastroFIN_BANC.AsString = '' then
  begin
    dbgconsulta.FocusedColumn := 3;
    DataBaseError('Banco não informado !');
  end;

  if cadastroFIN_AGEN.AsString = '' then
  begin
    dbgconsulta.FocusedColumn := 4;
    DataBaseError('Agencia não informada !');
  end;

  if cadastroFIN_CONT.AsString = '' then
  begin
    dbgconsulta.FocusedColumn := 5;
    DataBaseError('Conta não informada !');
  end;

  if cadastroFIN_NCHQ.AsString = '' then
  begin
    dbgconsulta.FocusedColumn := 6;
    DataBaseError('Número do Cheque não informado !');
  end;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,FIN_DOCT FROM FIN_REC_CHQ');
    SQL.Add('WHERE  FIN_NCHQ = '''+cadastroFIN_NCHQ.AsString+'''');
    SQL.Add('AND    FIN_BANC = '''+cadastroFIN_BANC.AsString+'''');
    Open;

    if (not consulta_S.fields[0].IsNull) and (consulta_S.fields[0].AsInteger <> cadastroID.AsInteger) then
    DataBaseError('Número do cheque já cadastrado !');
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT CHQ_NCHQ,CLI_FANT FROM CAD_CHQ,CAD_CLI');
    SQL.Add('WHERE  CHQ_CCLI = CAD_CLI.ID');
    SQL.Add('AND    CHQ_NCHQ = '''+cadastroFIN_NCHQ.AsString+'''');
    SQL.Add('AND    CHQ_BANC = '''+cadastroFIN_BANC.AsString+'''');
    SQL.Add('AND    CHQ_STFI <> ''CANCELADO''');
    Open;

    if not consulta.Fields[0].IsNull then
    DataBaseError('Cheque No '+fields[0].AsString+' já cadastrado !'+#13+'Cliente '+fields[1].AsString);

    SQL.Clear;
    SQL.Add('SELECT BAN_DESC FROM '+TSConsulta.Values['tab_ban']+' "TAB_BAN"');
    SQL.Add('WHERE  BAN_BANC = '''+cadastroFIN_BANC.AsString+'''');
    Open;

    if fields[0].IsNull then
    DataBaseError('Banco não identificado !');

    cadastroFIN_DBAN.Value := fields[0].AsString;
  end;
end;

procedure Tfrmlan_chq.b1IClick(Sender: TObject);
begin
  cadastro.Append;
end;

procedure Tfrmlan_chq.b1AClick(Sender: TObject);
begin
  cadastro.Edit;
end;

procedure Tfrmlan_chq.b1DClick(Sender: TObject);
begin
  cadastro.Delete;
end;

procedure Tfrmlan_chq.b1SClick(Sender: TObject);
begin
  cadastro.Post;
end;

procedure Tfrmlan_chq.b1CClick(Sender: TObject);
begin
  cadastro.Cancel;
end;

procedure Tfrmlan_chq.dbgconsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgconsulta.FocusedColumn >= 6 then
                 begin
                   cadastro.Next;
                   if cadastro.Eof then
                   cadastro.Append;
                 end else
                 dbgconsulta.FocusedColumn := dbgconsulta.FocusedColumn + 1;
               end;
    VK_INSERT: if cadastro.State = dsBrowse then            b1I.Click;
    VK_DELETE: if cadastro.State = dsBrowse then            b1D.Click;
    VK_ESCAPE: if cadastro.State = dsBrowse then close else b1C.Click;
  end;
end;

procedure Tfrmlan_chq.siVALClick(Sender: TObject);
var
  cdbx,cdlt: integer;
begin
  if yesno(handle,'Confirma Lançamentos ?') = mrno then
  abort;

  fin_rec_bai.First;
  if fin_rec_baiID.IsNull then
  raise exception.Create('Vendas à vincular não informadas !');

  if cadastro.Active then
  begin
    if cadastro.State in [dsEdit,dsInsert] then
    begin
      if cadastroFIN_VALO.AsFloat = 0 then
      cadastro.Cancel else
      cadastro.Post;
    end;
  end;

  cadastro.First;
  if cadastroID.IsNull then
  raise exception.Create('Cheques não relacionados !');


  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FIN_CDBX,COUNT(*) FROM FIN_REC_BAI');
    SQL.Add('GROUP BY FIN_CDBX');
    Open;
    Last;
  end;

  with consulta do
  begin
    if consulta_S.RecNo > 1 then
    begin
      tag := 1;

      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_BAI_REC,1) FROM RDB$DATABASE');
      Open;
      IBtra.CommitRetaining;

      cdbx := fields[0].AsInteger;
    end else
    begin
      tag  := 0;
      cdbx := consulta_S.Fields[0].AsInteger;
    end;


    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_BAI_LOT,1) FROM RDB$DATABASE');
    Open;
    IBtra.CommitRetaining;

    cdlt := fields[0].AsInteger;
  end;

  try
    while not cadastro.Eof do
    begin
      ibSP.StoredProcName := 'SP_CAD_CHQ';
      ibSP.Prepare;

      ibSP.ParamByName('id').Value   := 0;
      ibSP.ParamByName('CDEP').Value := frmprincipal.parametrosID.AsInteger;
      ibSP.ParamByName('CDCX').Value := edcdcx.Text;
      ibSP.ParamByName('CDBX').Value := cdbx;
      ibSP.ParamByName('CDLT').Value := cdlt;
      ibSP.ParamByName('CCLI').Value := fin_rec_baiFIN_CCLI.AsInteger;
      ibSP.ParamByName('CVEN').Value := fin_rec_baiFIN_CVEN.AsInteger;
      ibSP.ParamByName('CREP').Value := fin_rec_baiFIN_CREP.AsInteger;
      ibSP.ParamByName('BANC').Value := cadastroFIN_BANC.AsString;
      ibSP.ParamByName('DBAN').Value := cadastroFIN_DBAN.AsString;
      ibSP.ParamByName('AGEN').Value := cadastroFIN_AGEN.AsString;
      ibSP.ParamByName('CONT').Value := cadastroFIN_CONT.AsString;
      ibSP.ParamByName('NCHQ').Value := cadastroFIN_NCHQ.AsString;

      if strtodate(TSConsulta.Values['data_sistema']) = cadastroFIN_DVEN.AsDateTime then
      ibSP.ParamByName('STFI').Value := 'PAGO' else
      ibSP.ParamByName('STFI').Value := 'PENDENTE';

      ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
      ibSP.ParamByName('DCAD').Value := strtodate(TSConsulta.Values['data_sistema']);
      ibSP.ParamByName('DVEN').Value := cadastroFIN_DVEN.AsDateTime;
      ibSP.ParamByName('STDO').Value := fin_rec_baiFIN_STDO.AsString;
      ibSP.ParamByName('OBSE').Value := TRIM(cadastroFIN_OBSE.AsString);
      ibSP.ParamByName('CPF').Value  := cadastroFIN_CPF.AsString;

      if consulta_S.Fields[1].AsInteger > 1 then
      ibSP.ParamByName('DOCT').Value := fin_rec_baiFIN_DOCT.AsString+'*' else
      ibSP.ParamByName('DOCT').Value := fin_rec_baiFIN_DOCT.AsString;

      ibSP.ParamByName('CADA').Value := frmprincipal.cad_usuUSU_DUSU.AsString;
      ibSP.ExecProc;

      cadastro.Next;
    end;

    IBTra.CommitRetaining;
  except
    IBTra.RollbackRetaining;
    raise exception.Create('Erro na gravação do Cheque !'+#13+'Favor entrar em contato com o administrador do sistema.');
  end;

  editado := true;
end;

procedure Tfrmlan_chq.dbgconsultaFIN_VALOValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var
  NewString: string;
  ClickedOK: Boolean;
begin
  if dbgconsulta.EditingText <> '' then
  cadastroFIN_VALO.Value := strtofloat(dbgconsulta.EditingText);

  if (not (cadastro.State in [dsInsert,dsEdit])) then
  exit;

  ClickedOK := InputQuery('Passe o cheque pela leitora', 'Cheque', NewString);
  if (ClickedOK) and (length(NewString) > 30) then
  begin
    cadastroFIN_BANC.Value := copy(NewString,02,03);
    cadastroFIN_AGEN.Value := copy(NewString,05,04);
    cadastroFIN_CONT.Value := copy(NewString,22,12);
    cadastroFIN_NCHQ.Value := copy(NewString,14,06);
  end;
end;

procedure Tfrmlan_chq.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  var
    BSal: boolean;
begin
  if cadastro.Active then
  begin
    if cadastro.State in [dsEdit,dsInsert] then
    cadastro.Post;
    cadastro.First;

    BSal := false;
    if cadastroFIN_VALO.AsFloat > 0 then
    BSal := true;

    if (BSal) and (not editado) then
    begin
      case messageBox(handle,PChar('Existem alterações pendentes.'+#13+'Confirma cancelamento dos lançamentos efetuados ?'),
                             PChar(caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
           mrCancel,mrNo: Abort;
      end;
    end;
  end;
end;

procedure Tfrmlan_chq.FormDestroy(Sender: TObject);
begin
  frmprincipal.pnbot.Visible := true;
end;

procedure Tfrmlan_chq.btnBUSCARClick(Sender: TObject);
var
  cdbx: integer;
begin
  try
    if eddoct.Text = '' then
    abort;

    with aux do
    begin
      SQL.Clear;
      SQL.Add('SELECT ROM_CDBX FROM '+TSConsulta.Values['ped_ven_cab']);
      if cbdoct.Text = 'Pedido' then
      SQL.Add('WHERE  ROM_DERO = '''+eddoct.Text+'''') else
      SQL.Add('WHERE  ROM_CDNF = '''+eddoct.Text+'''');
      Open;

      if fields[0].IsNull then
      raise exception.Create(cbdoct.Text+' não encontrado !');
    end;
    cdbx := aux.Fields[0].AsInteger;

    if cbdoct.Text = 'Bancário' then
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT FIN_DOCT,FIN_STDO,FIN_TIPO,FIN_DCAD,FIN_DVEN,FIN_VALO,FIN_CCLI,FIN_CVEN,FIN_CREP,FIN_STDO FROM '+TSConsulta.Values['fin_rec_ban_bai']);
        SQL.Add('WHERE  FIN_CDBX = '''+intToStr(cdbx)+'''');
        Open;

        if fields[0].IsNull then
        raise exception.Create('Documento não encontrado !');
      end;

      while not consulta.Eof do
      begin
        with consulta_S do
        begin
          SQL.Clear;
          SQL.Add('SELECT ID FROM FIN_REC_BAI');
          SQL.Add('WHERE  FIN_DOCT = '''+consulta.Fields[0].AsString+'''');
          SQL.Add('AND    FIN_STDO = '''+consulta.Fields[1].AsString+'''');
          SQL.Add('AND    FIN_TIPO = '''+consulta.Fields[2].AsString+'''');
          Open;
        end;

        if consulta_S.Fields[0].IsNull then
        begin
          fin_rec_bai.Append;
          fin_rec_baiID.Value       := 0;
          fin_rec_baiFIN_DOCT.Value := consulta.Fields[0].AsString;
          fin_rec_baiFIN_STDO.Value := consulta.Fields[1].AsString;
          fin_rec_baiFIN_TIPO.Value := consulta.Fields[2].AsString;
          fin_rec_baiFIN_DCAD.Value := consulta.Fields[3].AsDateTime;
          fin_rec_baiFIN_DVEN.Value := consulta.Fields[4].AsDateTime;
          fin_rec_baiFIN_VALO.Value := consulta.Fields[5].AsFloat;
          fin_rec_baiFIN_CCLI.Value := consulta.Fields[6].AsInteger;
          fin_rec_baiFIN_CVEN.Value := consulta.Fields[7].AsInteger;
          fin_rec_baiFIN_CREP.Value := consulta.Fields[8].AsInteger;
          fin_rec_baiFIN_STDO.Value := consulta.Fields[9].AsString;
          fin_rec_baiFIN_STA.Value  := copy(cbdoct.Text,1,1);
          fin_rec_baiFIN_CDBX.Value := cdbx;
          fin_rec_bai.Post;
        end;

        consulta.Next;
      end;
    end;

    if cbdoct.Text = 'Carteira' then
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT FIN_DOCT,FIN_STDO,FIN_TIPO,FIN_DCAD,FIN_DVEN,FIN_VALO,FIN_CCLI,FIN_CVEN,FIN_CREP,FIN_STDO FROM '+TSConsulta.Values['fin_rec_car_bai']);
        SQL.Add('WHERE  FIN_CDBX = '''+IntToStr(cdbx)+'''');
        Open;

        if fields[0].IsNull then
        raise exception.Create('Documento não encontrado !');
      end;

      while not consulta.Eof do
      begin
        with consulta_S do
        begin
          SQL.Clear;
          SQL.Add('SELECT ID FROM FIN_REC_BAI');
          SQL.Add('WHERE  FIN_DOCT = '''+consulta.Fields[0].AsString+'''');
          SQL.Add('AND    FIN_STDO = '''+consulta.Fields[1].AsString+'''');
          SQL.Add('AND    FIN_TIPO = '''+consulta.Fields[2].AsString+'''');
          Open;
        end;

        if consulta_S.Fields[0].IsNull then
        begin
          fin_rec_bai.Append;
          fin_rec_baiID.Value       := 0;
          fin_rec_baiFIN_DOCT.Value := consulta.Fields[0].AsString;
          fin_rec_baiFIN_STDO.Value := consulta.Fields[1].AsString;
          fin_rec_baiFIN_TIPO.Value := consulta.Fields[2].AsString;
          fin_rec_baiFIN_DCAD.Value := consulta.Fields[3].AsDateTime;
          fin_rec_baiFIN_DVEN.Value := consulta.Fields[4].AsDateTime;
          fin_rec_baiFIN_VALO.Value := consulta.Fields[5].AsFloat;
          fin_rec_baiFIN_CCLI.Value := consulta.Fields[6].AsInteger;
          fin_rec_baiFIN_CVEN.Value := consulta.Fields[7].AsInteger;
          fin_rec_baiFIN_CREP.Value := consulta.Fields[8].AsInteger;
          fin_rec_baiFIN_STDO.Value := consulta.Fields[9].AsString;
          fin_rec_baiFIN_STA.Value  := copy(cbdoct.Text,1,1);
          fin_rec_baiFIN_CDBX.Value := cdbx;
          fin_rec_bai.Post;
        end;

        consulta.Next;
      end;
    end;

    tSHEILD.CommitRetaining;
    fin_rec_bai.Close;
    fin_rec_bai.Open;
  finally
    if fin_rec_bai.RecNo > 0 then
    dbgVEN.SetFocus else
    eddoct.SetFocus;
  end;
end;

procedure Tfrmlan_chq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmlan_chq <> nil then
  begin
    frmlan_chq.Release;
    frmlan_chq := nil;
  end;
end;

procedure Tfrmlan_chq.dbgVENCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  if not ASelected then
  begin
    AFont.Color := clBlack;
    AColor      := $00EFD092;

    Value := ANode.Values[2];

    if (not VarIsNull(Value)) then
    begin
      if (Value = 'BANCÁRIO') or (Value = 'BOLETO') or (Value = 'DUPLICATA') then
      AColor    := $00F4E1BB;
    end;
  end;
end;

procedure Tfrmlan_chq.fin_rec_baiAfterOpen(DataSet: TDataSet);
begin
  ATUALIZA_SALDO;
end;

procedure Tfrmlan_chq.cadastroFIN_PRAZValidate(Sender: TField);
begin
  if cadastroFIN_PRAZ.AsInteger > 0 then
  cadastroFIN_DVEN.Value := incDay(cadastroFIN_DCAD.AsDateTime,cadastroFIN_PRAZ.AsInteger);
end;

procedure Tfrmlan_chq.SpeedItem3Click(Sender: TObject);
begin
  fin_rec_bai.Delete;
  tSHEILD.CommitRetaining;
end;

procedure Tfrmlan_chq.siLIMClick(Sender: TObject);
begin
  if yesno(handle,'Confirma Limpeza dos Registros ?') = mrno then
  abort;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM FIN_REC_BAI');
    ExecSQL;
    tSHEILD.CommitRetaining;

    SQL.Clear;
    SQL.Add('DELETE FROM FIN_REC_CHQ');
    ExecSQL;
    tSHEILD.CommitRetaining;
  end;

  fin_rec_bai.Close;
  fin_rec_bai.Open;

  cadastro.Close;
  cadastro.Open;
end;

procedure Tfrmlan_chq.fin_rec_baiBeforePost(DataSet: TDataSet);
begin
  if fin_rec_bai.State = dsInsert then
  begin
    with aux do
    begin
      if fin_rec_baiFIN_CCLI.AsInteger > 0 then
      begin
        SQL.Clear;
        SQL.Add('SELECT CLI_FANT,CLI_RAZA FROM CAD_CLI');
        SQL.Add('WHERE  ID = '''+fin_rec_baiFIN_CCLI.AsString+'''');
        Open;

        fin_rec_baiFIN_DCLI.Value := fields[0].AsString;
        fin_rec_baiFIN_RCLI.Value := fields[1].AsString;
      end;

      if fin_rec_baiFIN_CVEN.AsInteger > 0 then
      begin
        SQL.Clear;
        SQL.Add('SELECT USU_DUSU FROM CAD_USU');
        SQL.Add('WHERE  USU_CUSU = '''+fin_rec_baiFIN_CVEN.AsString+'''');
        Open;

        fin_rec_baiFIN_VEND.Value := fields[0].AsString;
      end;

      if fin_rec_baiFIN_CREP.AsInteger > 0 then
      begin
        SQL.Clear;
        SQL.Add('SELECT REP_FANT FROM CAD_REP');
        SQL.Add('WHERE  ID = '''+fin_rec_baiFIN_CREP.AsString+'''');
        Open;

        fin_rec_baiFIN_DREP.Value := fields[0].AsString;
      end;
    end;
  end;
end;

end.
