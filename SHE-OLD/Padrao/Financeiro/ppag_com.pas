unit ppag_com;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math,
  Buttons, rxSpeedbar, StrUtils, IBSQL;

type
  Tfrmpag_com = class(TForm)
    pnlbot: TPanel;
    imageOPC3: TImageList;
    imageOPC: TImageList;
    imageOPC2: TImageList;
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    BSair: TSpeedItem;
    BPri: TSpeedItem;
    pnlped: TPanel;
    linha2: TShape;
    Shape3: TShape;
    Label7: TLabel;
    Label9: TLabel;
    edcven: TdxMaskEdit;
    cbdven: TdxPickEdit;
    Label10: TLabel;
    edcrep: TdxMaskEdit;
    cbdrep: TdxPickEdit;
    Label13: TLabel;
    cbstco: TdxPickEdit;
    Label6: TLabel;
    cbstfi: TdxPickEdit;
    Label4: TLabel;
    dxDT1: TdxDateEdit;
    Label1: TLabel;
    dxDT2: TdxDateEdit;
    IBTra: TIBTransaction;
    ibSP: TIBStoredProc;
    TSEdicao: TIBTransaction;
    consulta_s: TIBQuery;
    consulta: TIBQuery;
    fin_rec_ban_bai: TIBQuery;
    dtsfin_rec_ban: TDataSource;
    fin_rec_car_bai: TIBQuery;
    dtsfin_rec_car: TDataSource;
    BitBtn1: TBitBtn;
    imageITEM: TImageList;
    Edicao: TIBDataSet;
    DTSEdicao: TDataSource;
    EdicaoID: TIntegerField;
    EdicaoFIN_CDBX: TIntegerField;
    EdicaoFIN_CDCX: TIntegerField;
    EdicaoFIN_CDRO: TIntegerField;
    EdicaoFIN_CCLI: TIntegerField;
    EdicaoFIN_DCLI: TIBStringField;
    EdicaoFIN_CVEN: TIntegerField;
    EdicaoFIN_VEND: TIBStringField;
    EdicaoFIN_CREP: TIntegerField;
    EdicaoFIN_DREP: TIBStringField;
    EdicaoFIN_CCUS: TIntegerField;
    EdicaoFIN_DCUS: TIBStringField;
    EdicaoFIN_CBCO: TIntegerField;
    EdicaoFIN_PRAZ: TSmallintField;
    EdicaoFIN_ATRA: TSmallintField;
    EdicaoFIN_CONC: TSmallintField;
    EdicaoFIN_DCAD: TDateField;
    EdicaoFIN_DROM: TDateField;
    EdicaoFIN_DVEN: TDateField;
    EdicaoFIN_DPAG: TDateField;
    EdicaoFIN_DMED: TDateField;
    EdicaoFIN_DATR: TDateField;
    EdicaoFIN_STDO: TIBStringField;
    EdicaoFIN_DOCT: TIBStringField;
    EdicaoFIN_PORT: TIBStringField;
    EdicaoFIN_STCO: TIBStringField;
    EdicaoFIN_STFI: TIBStringField;
    EdicaoFIN_VALO: TIBBCDField;
    EdicaoFIN_VPAG: TIBBCDField;
    EdicaoFIN_VPEN: TIBBCDField;
    EdicaoFIN_VMUL: TIBBCDField;
    EdicaoFIN_PMUL: TIBBCDField;
    EdicaoFIN_VJUR: TIBBCDField;
    EdicaoFIN_PJUR: TIBBCDField;
    EdicaoFIN_VDES: TIBBCDField;
    EdicaoFIN_PDES: TIBBCDField;
    EdicaoFIN_PCOM: TIBBCDField;
    EdicaoFIN_OBSE: TMemoField;
    EdicaoFIN_STA: TIBStringField;
    EdicaoFIN_COBR: TIBStringField;
    EdicaoFIN_VCOM: TIBBCDField;
    ped_ven_cab: TIBQuery;
    dtsped_ven_cab: TDataSource;
    ped_ven_cabID: TIntegerField;
    ped_ven_cabROM_CDOC: TIntegerField;
    ped_ven_cabROM_CDPR: TIntegerField;
    ped_ven_cabROM_CDPD: TIntegerField;
    ped_ven_cabROM_CDRO: TIntegerField;
    ped_ven_cabROM_CDRD: TIntegerField;
    ped_ven_cabROM_CDNF: TIntegerField;
    ped_ven_cabROM_CDBX: TIntegerField;
    ped_ven_cabROM_CDCX: TIntegerField;
    ped_ven_cabROM_DERO: TIBStringField;
    ped_ven_cabROM_STPD: TIBStringField;
    ped_ven_cabROM_STCO: TIBStringField;
    ped_ven_cabROM_STFI: TIBStringField;
    ped_ven_cabROM_DROM: TDateField;
    ped_ven_cabROM_HROM: TTimeField;
    ped_ven_cabROM_DBAI: TDateField;
    ped_ven_cabROM_DCAN: TDateField;
    ped_ven_cabROM_DNFS: TDateField;
    ped_ven_cabROM_DEXP: TDateField;
    ped_ven_cabROM_HEXP: TTimeField;
    ped_ven_cabROM_CEXP: TIntegerField;
    ped_ven_cabROM_CCLI: TIntegerField;
    ped_ven_cabROM_CVEN: TIntegerField;
    ped_ven_cabROM_CREP: TIntegerField;
    ped_ven_cabROM_CPAG: TIntegerField;
    ped_ven_cabROM_QTVE: TIBBCDField;
    ped_ven_cabROM_QTSP: TIBBCDField;
    ped_ven_cabROM_QTPD: TIBBCDField;
    ped_ven_cabROM_RLVE: TIntegerField;
    ped_ven_cabROM_TSDE: TIBBCDField;
    ped_ven_cabROM_TDSC: TIBStringField;
    ped_ven_cabROM_PDSC: TIBBCDField;
    ped_ven_cabROM_CDSC: TIBBCDField;
    ped_ven_cabROM_ADSC: TIBBCDField;
    ped_ven_cabROM_TCDE: TIBBCDField;
    ped_ven_cabROM_CONC: TSmallintField;
    ped_ven_cabROM_OBSE: TMemoField;
    ped_ven_cabROM_STA: TIBStringField;
    ped_ven_cabROM_COMI: TIBBCDField;
    ped_ven_cabCLI_FANT: TIBStringField;
    ped_ven_cabREP_FANT: TIBStringField;
    ped_ven_cabPAG_DPAG: TIBStringField;
    aux: TIBQuery;
    PCPrincipal: TdxPageControl;
    TSRelatorio: TdxTabSheet;
    DBGEdicao: TdxDBGrid;
    SBEdicao: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SIENovo: TSpeedItem;
    SIEEdicao: TSpeedItem;
    SIEDelete: TSpeedItem;
    SIEPost: TSpeedItem;
    SIECancel: TSpeedItem;
    TSSemBaixa: TdxTabSheet;
    Label2: TLabel;
    cbper: TdxPickEdit;
    Shape1: TShape;
    Shape2: TShape;
    Label3: TLabel;
    edobse: TdxMemo;
    ped_ven_cabUSU_DUSU: TIBStringField;
    ped_ven_cabROM_DPRD: TDateField;
    ped_ven_cabROM_CTNR: TIBStringField;
    ped_ven_cabROM_DEMB: TDateField;
    ped_ven_cabROM_DDES: TDateField;
    EdicaoFIN_RCLI: TIBStringField;
    EdicaoFIN_RREP: TIBStringField;
    EdicaoFIN_VENC: TIBBCDField;
    EdicaoFIN_CCAB: TIntegerField;
    EdicaoFIN_CFOR: TIntegerField;
    EdicaoFIN_CPPL: TIntegerField;
    EdicaoFIN_CDCO: TIntegerField;
    EdicaoFIN_MCHQ: TSmallintField;
    EdicaoFIN_DCAN: TDateField;
    EdicaoFIN_DBAI: TDateField;
    EdicaoFIN_DDES: TDateField;
    EdicaoFIN_PREV: TIBStringField;
    EdicaoFIN_DUPL: TIBStringField;
    EdicaoFIN_DESC: TIBStringField;
    EdicaoFIN_DFOR: TIBStringField;
    EdicaoFIN_BANC: TIBStringField;
    EdicaoFIN_DBAN: TIBStringField;
    EdicaoFIN_AGEN: TIBStringField;
    EdicaoFIN_CONT: TIBStringField;
    EdicaoFIN_NCHQ: TIBStringField;
    EdicaoFIN_TIPO: TIBStringField;
    EdicaoFIN_IDBX: TIBStringField;
    EdicaoFIN_IPPL: TIBStringField;
    EdicaoFIN_DFIN: TIBStringField;
    EdicaoFIN_CDBA: TIBStringField;
    EdicaoFIN_DEBA: TIBStringField;
    EdicaoFIN_VFAT: TIBBCDField;
    DBGEdicaoFIN_DOCT: TdxDBGridMaskColumn;
    DBGEdicaoFIN_STDO: TdxDBGridMaskColumn;
    DBGEdicaoFIN_DCAD: TdxDBGridDateColumn;
    DBGEdicaoFIN_DCLI: TdxDBGridMaskColumn;
    DBGEdicaoFIN_VEND: TdxDBGridMaskColumn;
    DBGEdicaoFIN_DREP: TdxDBGridMaskColumn;
    DBGEdicaoFIN_VALO: TdxDBGridMaskColumn;
    DBGEdicaoFIN_PCOM: TdxDBGridMaskColumn;
    DBGEdicaoFIN_VCOM: TdxDBGridMaskColumn;
    DBGEdicaoFIN_STFI: TdxDBGridMaskColumn;
    DBGSemBaixa: TdxDBGrid;
    DBGSemBaixaROM_DERO: TdxDBGridMaskColumn;
    DBGSemBaixaROM_CDNF: TdxDBGridMaskColumn;
    DBGSemBaixaROM_DROM: TdxDBGridDateColumn;
    DBGSemBaixaCLI_FANT: TdxDBGridMaskColumn;
    DBGSemBaixaUSU_DUSU: TdxDBGridMaskColumn;
    DBGSemBaixaREP_FANT: TdxDBGridMaskColumn;
    DBGSemBaixaROM_STCO: TdxDBGridMaskColumn;
    DBGSemBaixaROM_TCDE: TdxDBGridMaskColumn;
    DBGSemBaixaROM_STFI: TdxDBGridMaskColumn;
    fin_rec_car_baiCLI_FANT: TIBStringField;
    fin_rec_car_baiREP_FANT: TIBStringField;
    fin_rec_car_baiUSU_DUSU: TIBStringField;
    fin_rec_car_baiID: TIntegerField;
    fin_rec_car_baiFIN_CDBX: TIntegerField;
    fin_rec_car_baiFIN_DOCT: TIBStringField;
    fin_rec_car_baiFIN_TITU: TIBStringField;
    fin_rec_car_baiFIN_CCLI: TIntegerField;
    fin_rec_car_baiFIN_CVEN: TIntegerField;
    fin_rec_car_baiFIN_CREP: TIntegerField;
    fin_rec_car_baiFIN_CONC: TSmallintField;
    fin_rec_car_baiFIN_DCAD: TDateField;
    fin_rec_car_baiFIN_DVEN: TDateField;
    fin_rec_car_baiFIN_DPAG: TDateField;
    fin_rec_car_baiFIN_STDO: TIBStringField;
    fin_rec_car_baiFIN_TIPO: TIBStringField;
    fin_rec_car_baiFIN_STFI: TIBStringField;
    fin_rec_car_baiFIN_VALO: TIBBCDField;
    fin_rec_car_baiFIN_VPAG: TIBBCDField;
    fin_rec_car_baiFIN_VPEN: TIBBCDField;
    fin_rec_car_baiFIN_DCAN: TDateField;
    fin_rec_car_baiFIN_VMUL: TIBBCDField;
    fin_rec_car_baiFIN_VJUR: TIBBCDField;
    fin_rec_car_baiFIN_VDES: TIBBCDField;
    fin_rec_car_baiFIN_DBAI: TDateField;
    fin_rec_car_baiFIN_CTNR: TIBStringField;
    fin_rec_car_baiFIN_CDDP: TIBStringField;
    fin_rec_car_baiFIN_DTDP: TDateTimeField;
    fin_rec_car_baiFIN_CDBC: TIBStringField;
    fin_rec_car_baiFIN_DTBC: TDateTimeField;
    fin_rec_car_baiFIN_OBSE: TMemoField;
    fin_rec_car_baiFIN_CDCX: TIntegerField;
    fin_rec_ban_baiCLI_FANT: TIBStringField;
    fin_rec_ban_baiREP_FANT: TIBStringField;
    fin_rec_ban_baiUSU_DUSU: TIBStringField;
    fin_rec_ban_baiID: TIntegerField;
    fin_rec_ban_baiFIN_CDBX: TIntegerField;
    fin_rec_ban_baiFIN_TIPO: TIBStringField;
    fin_rec_ban_baiFIN_STDO: TIBStringField;
    fin_rec_ban_baiFIN_CONC: TSmallintField;
    fin_rec_ban_baiFIN_DOCT: TIBStringField;
    fin_rec_ban_baiFIN_CTNR: TIBStringField;
    fin_rec_ban_baiFIN_DCAD: TDateField;
    fin_rec_ban_baiFIN_DCAN: TDateField;
    fin_rec_ban_baiFIN_CCLI: TIntegerField;
    fin_rec_ban_baiFIN_CVEN: TIntegerField;
    fin_rec_ban_baiFIN_CREP: TIntegerField;
    fin_rec_ban_baiFIN_TITU: TIBStringField;
    fin_rec_ban_baiFIN_DVEN: TDateField;
    fin_rec_ban_baiFIN_VALO: TIBBCDField;
    fin_rec_ban_baiFIN_VJUR: TIBBCDField;
    fin_rec_ban_baiFIN_VMUL: TIBBCDField;
    fin_rec_ban_baiFIN_VDES: TIBBCDField;
    fin_rec_ban_baiFIN_DPAG: TDateField;
    fin_rec_ban_baiFIN_VPAG: TIBBCDField;
    fin_rec_ban_baiFIN_VPEN: TIBBCDField;
    fin_rec_ban_baiFIN_STFI: TIBStringField;
    fin_rec_ban_baiFIN_DBAI: TDateField;
    fin_rec_ban_baiFIN_CDDP: TIBStringField;
    fin_rec_ban_baiFIN_DTDP: TDateTimeField;
    fin_rec_ban_baiFIN_CDBC: TIBStringField;
    fin_rec_ban_baiFIN_DTBC: TDateTimeField;
    fin_rec_ban_baiFIN_OBSE: TMemoField;
    fin_rec_ban_baiFIN_CDCX: TIntegerField;
    SQLSEdicao: TIBSQL;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtcarKeyPress(Sender: TObject; var Key: Char);
    procedure edderoKeyPress(Sender: TObject; var Key: Char);
    procedure dbgromBackgroundDrawEvent(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect);
    procedure edcvenValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbdvenExit(Sender: TObject);
    procedure edcrepValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbdrepExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EdicaoAfterDelete(DataSet: TDataSet);
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure BPriClick(Sender: TObject);
    procedure SIEDeleteClick(Sender: TObject);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cbperChange(Sender: TObject);
    procedure SIENovoClick(Sender: TObject);
    procedure DTSEdicaoStateChange(Sender: TObject);
    procedure SIEEdicaoClick(Sender: TObject);
    procedure SIEPostClick(Sender: TObject);
    procedure SIECancelClick(Sender: TObject);
  private
    { Private declarations }
    FrmStyle   : TFormStyle;
    FrmPosition: TPosition;
    procedure PESQUISA_VENDEDOR(pesq,chave: string);
    procedure PESQUISA_REPRESENTANTE(pesq,chave: string);
  public
    procedure ABRE_TABELA;
    { Public declarations }
  end;

var
  frmpag_com: Tfrmpag_com;
  conc: word;
  PCOM: Double;

implementation

uses uPrincipal, prelatorio_geral;

{$R *.dfm}

procedure Tfrmpag_com.FormCreate(Sender: TObject);
begin
  { Herança }
  FrmPosition := poDesigned;
  FrmStyle    := fsMDIChild;

  oOTransact(IBTra);
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   USU_DUSU FROM CAD_USU');
    SQL.Add('WHERE    USU_MENU = ''VEN''');
    SQL.Add('AND      USU_STA  = ''0''');
    SQL.Add('ORDER BY USU_DUSU');
    Open;
    cbdven.Items.Add('TODOS');
    while not eof do
    begin
      cbdven.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   REP_FANT FROM CAD_REP');
    SQL.Add('WHERE    REP_STA = ''0''');
    SQL.Add('ORDER BY REP_FANT');
    Open;
    cbdrep.Items.Add('TODOS');
    while not eof do
    begin
      cbdrep.Items.Add(fields[0].AsString);
      next;
    end;
  end;

  dxDT1.Date := RECParametros.SHE_DATA_MES_PK;
  dxDT2.Date := RECParametros.SHE_DATA_MES_FK;
  
  ABRE_TABELA;
end;

procedure Tfrmpag_com.FormDestroy(Sender: TObject);
begin
  OnDestroy  := Nil;
  frmpag_com := Nil;
end;

procedure Tfrmpag_com.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try oFTransact(IBTra);
  finally Action := caFree;
  end;
end;

procedure Tfrmpag_com.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_RETURN: if (not (activeControl is TdxDBGrid) and
                      not (activeControl is TDBMemo)   and
                      not (activeControl is TdxMemo)   and
                      not (activeControl is TdxDBMemo) and
                      not (activeControl is TdbGrid)   and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       40       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       38       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, false, true);
  end;
end;

procedure Tfrmpag_com.FormPaint(Sender: TObject);
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
         Height := Trunc((R.Bottom - R.Top ) * 0.95);

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

procedure Tfrmpag_com.FormResize(Sender: TObject);
begin
  if frmpag_com <> Nil then
  Paint;
end;

procedure Tfrmpag_com.PESQUISA_VENDEDOR(pesq,chave: string);
begin
  try
    tag := 1;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT USU_CUSU,USU_DUSU,USU_STA,USU_MENU,USU_STAV,USU_RELA FROM CAD_USU');

      if pesq = 'C' then
      SQL.Add('WHERE  USU_CUSU = '''+chave+'''')
      else if pesq = 'F' then
      SQL.Add('WHERE  USU_DUSU = '''+chave+'''');

      Open;

      if fields[0].IsNull then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
        begin
        edcven.SetFocus;
        messageBox(handle,'Código do vendedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end
        else if pesq = 'F' then
        begin
        cbdven.SetFocus;
        messageBox(handle,'Nome do vendedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;

        Abort;
      end;

      if fields[2].AsString <> '0' then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
           edcven.SetFocus
        else if pesq = 'F' then
           cbdven.SetFocus;

        messageBox(handle,PChar('Vendedor '+fields[1].AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if fields[3].AsString <> 'VEN' then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
           edcven.SetFocus
        else if pesq = 'F' then
           cbdven.SetFocus;

        messageBox(handle,PChar('Vendedor '+fields[1].AsString+' não está habilitado para efetuar vendas !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if fields[4].AsString <> 'A' then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
        edcven.SetFocus
        else if pesq = 'F' then
        cbdven.SetFocus;

        if fields[4].AsString = 'I' then
        messageBox(handle,PChar('Login do Vendedor '+fields[1].AsString+' está inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK) else
        if fields[4].AsString = 'S' then
        messageBox(handle,PChar('Login do Vendedor '+fields[1].AsString+' está suspenso !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        abort;
      end;
      
      edcven.Text := fields[0].AsString;
      cbdven.Text := fields[1].AsString;

      edcrep.Enabled := false;
      cbdrep.Enabled := false;
      dxDT1.SetFocus;
    end;
  finally
    tag := 0;
  end;
end;

procedure Tfrmpag_com.PESQUISA_REPRESENTANTE(pesq,chave: string);
begin
  try
    tag := 1;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,REP_FANT,REP_STA,REP_STAV FROM CAD_REP');
      if pesq = 'C' then
         SQL.Add('WHERE  ID = '''+chave+'''')
      else if pesq = 'F' then
         SQL.Add('WHERE  REP_FANT = '''+chave+'''');
      Open;

      if fields[0].IsNull then
      begin
        edcrep.Text := '';
        cbdrep.Text := '';

        edcven.Enabled := true;
        cbdven.Enabled := true;

        if pesq = 'C' then
        begin
          edcrep.SetFocus;
          messageBox(handle,'Código do representante não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end
        else if pesq = 'F' then
        begin
          cbdrep.SetFocus;
          messageBox(handle,'Nome do representante não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;
        Abort;
      end;

      if fields[2].AsString = '1' then
      begin
        edcrep.Text    := '';
        cbdrep.Text    := '';

        edcven.Enabled := true;
        cbdven.Enabled := true;

        if pesq = 'C' then
           edcrep.SetFocus
        else if pesq = 'F' then
           cbdrep.SetFocus;

        messageBox(handle,PChar('Representante '+fields[1].AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if fields[3].AsString <> 'A' then
      begin
        edcrep.Text    := '';
        cbdrep.Text    := '';

        edcven.Enabled := true;
        cbdven.Enabled := true;

        if pesq = 'C' then
           edcrep.SetFocus
        else if pesq = 'F' then
           cbdrep.SetFocus;

        if fields[3].AsString = 'I' then
           messageBox(handle,PChar('Representante '+fields[1].AsString+' inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
        else if fields[3].AsString = 'P' then
           messageBox(handle,PChar('Representante '+fields[1].AsString+' aguardando autorização para efetuar vendas !'),PChar(self.Caption),MB_ICONERROR+MB_OK);

        Abort;
      end;
      edcrep.Text    := fields[0].AsString;
      cbdrep.Text    := fields[1].AsString;

      edcven.Enabled := false;
      cbdven.Enabled := false;
      dxDT1.SetFocus;
    end;
  finally
    tag := 0;
  end;
end;

procedure Tfrmpag_com.ABRE_TABELA;
begin
  oOTransact(TSEdicao);
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM FIN_PAG');
    ExecQuery;
  end;

  oRTransact(TSEdicao);
end;

procedure Tfrmpag_com.BSairClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmpag_com.edtcarKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmpag_com.edderoKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmpag_com.dbgromBackgroundDrawEvent(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect);
var
  Text : String;
begin
  with ACanvas do
  begin
    Brush.Color := clBtnShadow;
    FillRect(ARect);
    if (Sender as TdxDBGrid).GroupColumnCount = 0 then

    begin
      Font.Color := clMenu;
      Text := 'Arraste as colunas para poder agrupá-las.';
      TextOut(ARect.Left, ARect.Top, Text);
    end;
  end;
end;

procedure Tfrmpag_com.edcvenValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcven.Text = '' then
  begin
    cbdven.Text    := '';
    edcrep.Enabled := true;
    cbdrep.Enabled := true;
    abort;
  end;

  if cbdven.Text <> 'TODOS' then
  PESQUISA_VENDEDOR('C',edcven.Text) else
  begin
    edcrep.Enabled := false;
    cbdrep.Enabled := false;
  end;
end;

procedure Tfrmpag_com.cbdvenExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  if cbdven.Text = '' then
  begin
    edcven.Text    := '';
    edcrep.Enabled := true;
    cbdrep.Enabled := true;

    abort;
  end;

  try
    if cbdven.Text <> 'TODOS' then
    PESQUISA_VENDEDOR('F',cbdven.Text) else
    begin
      edcrep.Enabled := false;
      cbdrep.Enabled := false;
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

procedure Tfrmpag_com.edcrepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcrep.Text = '' then
  begin
    cbdrep.Text    := '';
    edcven.Enabled := true;
    cbdven.Enabled := true;

    abort;
  end;

  if cbdrep.Text <> 'TODOS' then
  PESQUISA_REPRESENTANTE('C',edcrep.Text) else
  begin
    edcven.Enabled := false;
    cbdven.Enabled := false;
  end;
end;

procedure Tfrmpag_com.cbdrepExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  if cbdrep.Text = '' then
  begin
    edcrep.Text    := '';
    edcven.Enabled := true;
    cbdven.Enabled := true;
    
    abort;
  end;

  try
    if cbdrep.Text <> 'TODOS' then
    PESQUISA_REPRESENTANTE('F',cbdrep.Text) else
    begin
      edcven.Enabled := false;
      cbdven.Enabled := false;
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

procedure Tfrmpag_com.BitBtn1Click(Sender: TObject);
procedure PESQUISA_PEDIDO(cdbx: integer);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,ROM_STCO,ROM_COMI,ROM_DERO,(ROM_VNF*ROM_CONC) FROM '+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
    SQL.Add('WHERE  CDBX = '''+inttostr(cdbx)+'''');
    Open;

    EdicaoFIN_CDRO.Value := fields[0].AsInteger;
    EdicaoFIN_STCO.Value := fields[1].AsString;
    EdicaoFIN_PCOM.Value := fields[2].AsFloat;
    EdicaoFIN_PORT.Value := fields[3].AsString;
    EdicaoFIN_VMUL.Value := fields[4].AsFloat;

    if (EdicaoFIN_PCOM.AsFloat = 0) or (cbdven.Enabled) then
    begin
      if (cbdven.Enabled) and (edcven.Text <> '') then
      begin
        aux.SQL.Clear;
        aux.SQL.Add('SELECT PCOM FROM TAB_USER');
        aux.SQL.Add('WHERE  ID = '''+edcven.Text+'''');
        aux.Open;
        EdicaoFIN_PCOM.Value := aux.Fields[0].AsFloat;
      end else
      if (cbdrep.Enabled) and (edcrep.Text <> '') then
      begin
        aux.SQL.Clear;
        aux.SQL.Add('SELECT REP_COMI FROM CAD_REP');
        aux.SQL.Add('WHERE  ID = '''+edcrep.Text+'''');
        aux.Open;
        EdicaoFIN_PCOM.Value := aux.Fields[0].AsFloat;
      end;
    end;
  end;
end;

function RETORNA_TITULO(doct: string): string;
var i:word;
    titu: string;
begin
  titu := doct;
  for i := 1 to length(titu) do
  begin
    if copy(doct,i,1) = '-' then
       break;
  end;
  titu := titu + copy(doct,i,3);

  result := titu;
end;
var
  i: word;

begin
  ActiveControl := Nil;
  cbper.Hint    := IFThen(cbper.Text = 'DATA FATURAMENTO','Dt. Fatura','Dt. Pagto');

  PCPrincipal.ActivePageIndex := 0;
  Application.ProcessMessages;

  if (cbdven.Text = '') and (cbdrep.Text = '') then
      oException(cbdven,'Vendedor ou Representante não selecionado !');

  if (dxDT1.Date < 0) or (dxDT2.Date < 0) then
      oException(dxDT1,'Período não selecionado ou incorreto !');

  try
    oRTransact(IBTra);
    oOTransact(TSEdicao,ltRead_Only);
    ABRE_TABELA;

    with consulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PED_COMISSAO FROM TAB_USER WHERE LOGIN = '''+cbdven.Text+'''');
      Open;
      PCOM := Fields[0].AsFloat;
    end;

    if PCOM = 0 then
       if cbdven.Enabled then
          PCOM := RECParametros.PED_PCOM_VEN else
          PCOM := RECParametros.PED_PCOM_REP;

    with ped_ven_cab do
    begin
      SQL.Clear;
      SQL.Add('SELECT PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
      SQL.Add('FROM   CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,TAB_PED,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE  PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND    PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND    PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND    PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND    PED_VEN_CAB.ROM_STPD = TAB_PED.VEN_TIPO');
      SQL.Add('AND    PED_VEN_CAB.FAPD     = 1');
      SQL.Add('AND    PED_VEN_CAB.ROM_STFI <> ''CANCELADO''');
      SQL.Add('AND    PED_VEN_CAB.ROM_STFI NOT LIKE ''BAIXADO%''');
      SQL.Add('AND    PED_VEN_CAB.ROM_DNFS BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');
      SQL.Add('AND    PED_VEN_CAB.ROM_CDBX IS NULL');

      if cbstfi.Text <> 'TODOS' then
      SQL.Add('AND PED_VEN_CAB.ROM_STFI LIKE '''+cbstfi.Text+'%''');
      if (cbdven.Enabled) and (cbdven.Text <> 'TODOS') then
      SQL.Add('AND CAD_USU.USU_CUSU = '''+edcven.Text+'''');
      if (cbdrep.Enabled) and (cbdrep.Text <> 'TODOS') then
      SQL.Add('AND CAD_REP.ID = '''+edcrep.Text+'''');

      SQL.Add('ORDER BY PED_VEN_CAB.ID DESC');
      Open;
    end;

    if (cbstco.Text = 'TODOS') or (cbstco.Text = 'CARTEIRA') then
    with fin_rec_car_bai do
    begin
      SQL.Clear;
      SQL.Add('SELECT FIN_REC_CAR_BAI.*,CAD_CLI.CLI_FANT,CAD_REP.REP_FANT,CAD_USU.USU_DUSU');
      SQL.Add('FROM   CAD_CLI,CAD_REP,CAD_USU,'+SLPrincipal.Values['fin_rec_car_bai']+' "FIN_REC_CAR_BAI"');
      SQL.Add('WHERE  CAD_CLI.ID       = FIN_REC_CAR_BAI.FIN_CCLI');
      SQL.Add('AND    CAD_REP.ID       = FIN_REC_CAR_BAI.FIN_CREP');
      SQL.Add('AND    CAD_USU.USU_CUSU = FIN_REC_CAR_BAI.FIN_CVEN');
      SQL.Add('AND    FIN_REC_CAR_BAI.FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_REC_CAR_BAI.FIN_STFI <> ''CARTÓRIO''');
      SQL.Add('AND    NOT EXISTS (SELECT ID FROM ' + SLPrincipal.Values['ped_ven_cab'] + ' AS PD WHERE PD.CDBX = FIN_CDBX AND PD.CSPD = 1)');

      if cbper.Text = 'DATA FATURAMENTO' then
      begin
        if (cbdrep.Enabled) and (cbdrep.Text <> '') then
        SQL.Add('AND FIN_REC_CAR_BAI.FIN_STFI <> ''PAGO CARTÓRIO''');
        SQL.Add('AND FIN_REC_CAR_BAI.FIN_DCAD BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');
      end else
      SQL.Add('AND FIN_REC_CAR_BAI.FIN_DPAG BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

      if (cbdven.Enabled) and (cbdven.Text <> 'TODOS') then
      SQL.Add('AND CAD_USU.USU_CUSU = '''+edcven.Text+'''');

      if (cbdrep.Enabled) and (cbdrep.Text <> 'TODOS') then
      SQL.Add('AND CAD_REP.ID = '''+edcrep.Text+'''');

      if cbstfi.Text <> 'TODOS' then
      SQL.Add('AND FIN_REC_CAR_BAI.FIN_STFI LIKE '''+cbstfi.Text+'%''');

      if cbper.Text = 'DATA FATURAMENTO' then
      begin
        SQL.Add('UNION');
        SQL.Add('SELECT FIN_REC_CAR_BAI.*,CAD_CLI.CLI_FANT,CAD_REP.REP_FANT,CAD_USU.USU_DUSU');
        SQL.Add('FROM   CAD_CLI,CAD_REP,CAD_USU,'+SLPrincipal.Values['fin_rec_car_bai']+' "FIN_REC_CAR_BAI"');
        SQL.Add('WHERE  CAD_CLI.ID       = FIN_REC_CAR_BAI.FIN_CCLI');
        SQL.Add('AND    CAD_REP.ID       = FIN_REC_CAR_BAI.FIN_CREP');
        SQL.Add('AND    CAD_USU.USU_CUSU = FIN_REC_CAR_BAI.FIN_CVEN');
        SQL.Add('AND    FIN_REC_CAR_BAI.FIN_STFI <> ''CANCELADO''');
        SQL.Add('AND    FIN_REC_CAR_BAI.FIN_STFI <> ''CARTÓRIO''');
        SQL.Add('AND    FIN_REC_CAR_BAI.FIN_STFI <> ''PENDENTE''');
        SQL.Add('AND    FIN_REC_CAR_BAI.FIN_STFI NOT LIKE ''PRORROGADO%''');
        SQL.Add('AND    FIN_REC_CAR_BAI.FIN_STFI NOT LIKE ''PAGO%''');
        SQL.Add('AND    FIN_REC_CAR_BAI.FIN_TIPO <> ''ABATIMENTO''');
        SQL.Add('AND    FIN_REC_CAR_BAI.FIN_TIPO <> ''DEVOLUÇÃO''');
        SQL.Add('AND    FIN_REC_CAR_BAI.FIN_DBAI     BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');
        SQL.Add('AND    FIN_REC_CAR_BAI.FIN_DCAD NOT BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');
        SQL.Add('AND    NOT EXISTS (SELECT ID FROM ' + SLPrincipal.Values['ped_ven_cab'] + ' AS PD WHERE PD.CDBX = FIN_CDBX AND PD.CSPD = 1)');

        if (cbdven.Enabled) and (cbdven.Text <> 'TODOS') then
        SQL.Add('AND CAD_USU.USU_CUSU = '''+edcven.Text+'''');

        if (cbdrep.Enabled) and (cbdrep.Text <> 'TODOS') then
        SQL.Add('AND CAD_REP.ID = '''+edcrep.Text+'''');

        if (cbdrep.Enabled) and (cbdrep.Text <> '') then
        SQL.Add('AND FIN_REC_CAR_BAI.FIN_STFI <> ''PAGO CARTÓRIO''');

        if cbstfi.Text <> 'TODOS' then
        SQL.Add('AND FIN_REC_CAR_BAI.FIN_STFI LIKE '''+cbstfi.Text+'%''');
      end;

      SQL.Add('ORDER BY 20,4');
      Open;
      while not fin_rec_car_bai.Eof do
      begin
        conc := IFThen(oEmpty(fin_rec_car_baiFIN_CONC.AsInteger),1,fin_rec_car_baiFIN_CONC.AsInteger);
        if not ((LeftStr(fin_rec_car_baiFIN_STFI.AsString,7) = 'BAIXADO') and (Pos(fin_rec_car_baiFIN_TIPO.AsString,'ABATIMENTODEVOLUÇÃO') = 0)) then
        for i := 1 to conc do
        begin
          Edicao.Append;
          EdicaoID.Value       := 0;
          EdicaoFIN_STDO.Value := fin_rec_car_baiFIN_STDO.AsString;
          EdicaoFIN_CDBX.Value := fin_rec_car_baiFIN_CDBX.AsInteger;
          EdicaoFIN_CDCX.Value := fin_rec_car_baiFIN_CDCX.AsInteger;
          EdicaoFIN_CCLI.Value := fin_rec_car_baiFIN_CCLI.AsInteger;
          EdicaoFIN_DCLI.Value := fin_rec_car_baiCLI_FANT.AsString;
          EdicaoFIN_CVEN.Value := fin_rec_car_baiFIN_CVEN.AsInteger;
          EdicaoFIN_VEND.Value := fin_rec_car_baiUSU_DUSU.AsString;
          EdicaoFIN_CREP.Value := fin_rec_car_baiFIN_CREP.AsInteger;
          EdicaoFIN_DREP.Value := fin_rec_car_baiREP_FANT.AsString;
          EdicaoFIN_CONC.Value := conc;
          EdicaoFIN_DCAD.Value := IFThen(cbper.Text = 'DATA FATURAMENTO',
                                   IFThen(Pos(fin_rec_car_baiFIN_STFI.AsString,'PENDENTEPAGO') > 0,fin_rec_car_baiFIN_DCAD.AsDateTime,fin_rec_car_baiFIN_DBAI.AsDateTime),fin_rec_car_baiFIN_DPAG.AsDateTime);
          EdicaoFIN_DROM.Value := fin_rec_car_baiFIN_DVEN.AsDateTime;
          EdicaoFIN_DVEN.Value := fin_rec_car_baiFIN_DVEN.AsDateTime;
          EdicaoFIN_DPAG.Value := fin_rec_car_baiFIN_DPAG.AsDateTime;
          EdicaoFIN_DOCT.Value := fin_rec_car_baiFIN_TITU.AsString;
          EdicaoFIN_STFI.Value := fin_rec_car_baiFIN_STFI.AsString;
          EdicaoFIN_TIPO.Value := fin_rec_car_baiFIN_TIPO.AsString;
          EdicaoFIN_VALO.Value := fin_rec_car_baiFIN_VALO.AsFloat;
          EdicaoFIN_VPAG.Value := fin_rec_car_baiFIN_VPAG.AsFloat;
          EdicaoFIN_VPEN.Value := fin_rec_car_baiFIN_VPEN.AsFloat;
          EdicaoFIN_OBSE.Value := fin_rec_car_baiFIN_OBSE.AsString;

          PESQUISA_PEDIDO(fin_rec_car_baiFIN_CDBX.AsInteger);
          Edicao.Post;
        end;
        fin_rec_car_bai.Next;
      end;
    end;

    if (cbstco.Text = 'TODOS') or (cbstco.Text = 'BANCÁRIO') then
    with fin_rec_ban_bai do
    begin
      SQL.Clear;
      SQL.Add('SELECT FIN_REC_BAN_BAI.*,CAD_CLI.CLI_FANT,CAD_REP.REP_FANT,CAD_USU.USU_DUSU');
      SQL.Add('FROM   CAD_CLI,CAD_REP,CAD_USU,'+SLPrincipal.Values['fin_rec_ban_bai']+' "FIN_REC_BAN_BAI"');
      SQL.Add('WHERE  CAD_CLI.ID       = FIN_REC_BAN_BAI.FIN_CCLI');
      SQL.Add('AND    CAD_REP.ID       = FIN_REC_BAN_BAI.FIN_CREP');
      SQL.Add('AND    CAD_USU.USU_CUSU = FIN_REC_BAN_BAI.FIN_CVEN');
      SQL.Add('AND    FIN_REC_BAN_BAI.FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_REC_BAN_BAI.FIN_STFI <> ''CARTÓRIO''');
      SQL.Add('AND    NOT EXISTS (SELECT ID FROM ' + SLPrincipal.Values['ped_ven_cab'] + ' AS PD WHERE PD.CDBX = FIN_CDBX AND PD.CSPD = 1)');

      if cbper.Text = 'DATA FATURAMENTO' then
      begin
        if (cbdrep.Enabled) and (cbdrep.Text <> '') then
        SQL.Add('AND FIN_REC_BAN_BAI.FIN_STFI <> ''PAGO BANTÓRIO''');
        SQL.Add('AND FIN_REC_BAN_BAI.FIN_DCAD BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');
      end else
      SQL.Add('AND FIN_REC_BAN_BAI.FIN_DPAG BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

      if (cbdven.Enabled) and (cbdven.Text <> 'TODOS') then
      SQL.Add('AND CAD_USU.USU_CUSU = '''+edcven.Text+'''');

      if (cbdrep.Enabled) and (cbdrep.Text <> 'TODOS') then
      SQL.Add('AND CAD_REP.ID = '''+edcrep.Text+'''');

      if cbstfi.Text <> 'TODOS' then
      SQL.Add('AND FIN_REC_BAN_BAI.FIN_STFI LIKE '''+cbstfi.Text+'%''');

      if cbper.Text = 'DATA FATURAMENTO' then
      begin
        SQL.Add('UNION');
        SQL.Add('SELECT FIN_REC_BAN_BAI.*,CAD_CLI.CLI_FANT,CAD_REP.REP_FANT,CAD_USU.USU_DUSU');
        SQL.Add('FROM   CAD_CLI,CAD_REP,CAD_USU,'+SLPrincipal.Values['fin_rec_ban_bai']+' "FIN_REC_BAN_BAI"');
        SQL.Add('WHERE  CAD_CLI.ID       = FIN_REC_BAN_BAI.FIN_CCLI');
        SQL.Add('AND    CAD_REP.ID       = FIN_REC_BAN_BAI.FIN_CREP');
        SQL.Add('AND    CAD_USU.USU_CUSU = FIN_REC_BAN_BAI.FIN_CVEN');
        SQL.Add('AND    FIN_REC_BAN_BAI.FIN_STFI <> ''CANCELADO''');
        SQL.Add('AND    FIN_REC_BAN_BAI.FIN_STFI <> ''CARTÓRIO''');
        SQL.Add('AND    FIN_REC_BAN_BAI.FIN_STFI <> ''PENDENTE''');
        SQL.Add('AND    FIN_REC_BAN_BAI.FIN_STFI NOT LIKE ''PRORROGADO%''');
        SQL.Add('AND    FIN_REC_BAN_BAI.FIN_STFI NOT LIKE ''PAGO%''');
        SQL.Add('AND    FIN_REC_BAN_BAI.FIN_TIPO <> ''ABATIMENTO''');
        SQL.Add('AND    FIN_REC_BAN_BAI.FIN_TIPO <> ''DEVOLUÇÃO''');
        SQL.Add('AND    FIN_REC_BAN_BAI.FIN_DBAI     BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');
        SQL.Add('AND    FIN_REC_BAN_BAI.FIN_DCAD NOT BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');
        SQL.Add('AND    NOT EXISTS (SELECT ID FROM ' + SLPrincipal.Values['ped_ven_cab'] + ' AS PD WHERE PD.CDBX = FIN_CDBX AND PD.CSPD = 1)');

        if (cbdven.Enabled) and (cbdven.Text <> 'TODOS') then
        SQL.Add('AND CAD_USU.USU_CUSU = '''+edcven.Text+'''');

        if (cbdrep.Enabled) and (cbdrep.Text <> 'TODOS') then
        SQL.Add('AND CAD_REP.ID = '''+edcrep.Text+'''');

        if (cbdrep.Enabled) and (cbdrep.Text <> '') then
        SQL.Add('AND FIN_REC_BAN_BAI.FIN_STFI <> ''PAGO CARTÓRIO''');

        if cbstfi.Text <> 'TODOS' then
        SQL.Add('AND FIN_REC_BAN_BAI.FIN_STFI LIKE '''+cbstfi.Text+'%''');
      end;

      SQL.Add('ORDER BY 20,4');
      Open;
      while not fin_rec_ban_bai.Eof do
      begin
        if not ((LeftStr(fin_rec_ban_baiFIN_STFI.AsString,7) = 'BAIXADO') and (Pos(fin_rec_ban_baiFIN_TIPO.AsString,'ABATIMENTODEVOLUÇÃO') = 0)) then
        begin
          Edicao.Append;
          EdicaoID.Value       := 0;
          EdicaoFIN_STDO.Value := fin_rec_ban_baiFIN_STDO.AsString;
          EdicaoFIN_CDBX.Value := fin_rec_ban_baiFIN_CDBX.AsInteger;
          EdicaoFIN_CDCX.Value := fin_rec_ban_baiFIN_CDCX.AsInteger;
          EdicaoFIN_CCLI.Value := fin_rec_ban_baiFIN_CCLI.AsInteger;
          EdicaoFIN_DCLI.Value := fin_rec_ban_baiCLI_FANT.AsString;
          EdicaoFIN_CVEN.Value := fin_rec_ban_baiFIN_CVEN.AsInteger;
          EdicaoFIN_VEND.Value := fin_rec_ban_baiUSU_DUSU.AsString;
          EdicaoFIN_CREP.Value := fin_rec_ban_baiFIN_CREP.AsInteger;
          EdicaoFIN_DREP.Value := fin_rec_ban_baiREP_FANT.AsString;
          EdicaoFIN_CONC.Value := conc;
          EdicaoFIN_DCAD.Value := IFThen(cbper.Text = 'DATA FATURAMENTO',
                                   IFThen(Pos(fin_rec_ban_baiFIN_STFI.AsString,'PENDENTEPAGO') > 0,fin_rec_ban_baiFIN_DCAD.AsDateTime,fin_rec_ban_baiFIN_DBAI.AsDateTime),fin_rec_ban_baiFIN_DPAG.AsDateTime);
          EdicaoFIN_DROM.Value := fin_rec_ban_baiFIN_DVEN.AsDateTime;
          EdicaoFIN_DVEN.Value := fin_rec_ban_baiFIN_DVEN.AsDateTime;
          EdicaoFIN_DPAG.Value := fin_rec_ban_baiFIN_DPAG.AsDateTime;
          EdicaoFIN_DOCT.Value := fin_rec_ban_baiFIN_TITU.AsString;
          EdicaoFIN_STFI.Value := fin_rec_ban_baiFIN_STFI.AsString;
          EdicaoFIN_TIPO.Value := fin_rec_ban_baiFIN_TIPO.AsString;
          EdicaoFIN_VALO.Value := fin_rec_ban_baiFIN_VALO.AsFloat;
          EdicaoFIN_VPAG.Value := fin_rec_ban_baiFIN_VPAG.AsFloat;
          EdicaoFIN_VPEN.Value := fin_rec_ban_baiFIN_VPEN.AsFloat;
          EdicaoFIN_OBSE.Value := fin_rec_ban_baiFIN_OBSE.AsString;

          PESQUISA_PEDIDO(fin_rec_ban_baiFIN_CDBX.AsInteger);
          Edicao.Post;
        end;
        fin_rec_ban_bai.Next;
      end;
    end;
  finally
    oRTransact(TSEdicao,ltRead_Only_Release_Commit);
  end;

  if not ped_ven_cab.Fields[0].IsNull then
  begin
    PCPrincipal.ActivePageIndex := 1;
    oAviso(Handle,'A pesquisa encontrou pedidos em aberto (sem baixa financeria) !'+#13+
                  'Favor entrar em contato com o responsável pelo(s) pedido(s)');
  end;

  Application.ProcessMessages;
end;

procedure Tfrmpag_com.EdicaoAfterDelete(DataSet: TDataSet);
begin
  oRefresh(Edicao);
end;

procedure Tfrmpag_com.EdicaoAfterPost(DataSet: TDataSet);
begin
  oRefresh(Edicao);
end;

procedure Tfrmpag_com.BPriClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(Nil);
  try
    frmrelatorio_geral.tsPAG_COM.TabVisible := true;
    frmrelatorio_geral.tsPAG_COM.Hint       := cbstco.Text;
    frmrelatorio_geral.PCMain.ActivePage    := frmrelatorio_geral.tsPAG_COM;
    frmrelatorio_geral.cbPAG_COM_DATA.Text  := '';
    frmrelatorio_geral.dxDT1.Hint           := formatDatetime('dd/mm/yy',dxDT1.Date);
    frmrelatorio_geral.dxDT2.Hint           := formatDatetime('dd/mm/yy',dxDT2.Date);    
    frmrelatorio_geral.cbPAG_COM_TREL.Text  := 'PAGAMENTO DE COMISSÃO DE VENDA';
    frmrelatorio_geral.cbPAG_COM_DESC.Hint  := cbper.Hint;

    frmrelatorio_geral.cbPAG_COM_DATA.Hint := IFThen(cbstco.Text = 'TODOS'   ,'VENDAS',
                                              IFThen(cbstco.Text = 'CARTEIRA','CARTEIRAS','DUPLICATAS'));

    if Pos('PAG',cbper.Text) > 0 then
    begin
      frmrelatorio_geral.cbPAG_COM_DATA.Tag  := 0;
      frmrelatorio_geral.cbPAG_COM_DATA.Hint := frmrelatorio_geral.cbPAG_COM_DATA.Hint + ' PAGAS';
    end else
    begin
      frmrelatorio_geral.cbPAG_COM_DATA.Tag := 1;
      frmrelatorio_geral.cbPAG_COM_DATA.Hint := frmrelatorio_geral.cbPAG_COM_DATA.Hint + ' FATURADAS';
    end;

    if cbdven.Enabled then
    begin
      frmrelatorio_geral.cbPAG_COM_TREL.Tag  := 0;
      frmrelatorio_geral.cbPAG_COM_TREL.Hint := cbdven.Text;
    end else
    begin
      frmrelatorio_geral.cbPAG_COM_TREL.Tag  := 1;
      frmrelatorio_geral.cbPAG_COM_TREL.Hint := cbdrep.Text;
    end;

    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
  end;
end;

procedure Tfrmpag_com.EdicaoBeforePost(DataSet: TDataSet);
begin
  if (EdicaoFIN_TIPO.AsString = 'DEVOLUÇÃO') or (EdicaoFIN_TIPO.AsString = 'ABATIMENTO') then
  EdicaoFIN_STFI.Value := EdicaoFIN_TIPO.AsString;

  if (Pos('PROTESTADO',EdicaoFIN_STFI.AsString) > 0) or (EdicaoFIN_STFI.AsString = 'NÃO PAGO') or
     (EdicaoFIN_STFI.AsString = 'DEVOLUÇÃO') or (EdicaoFIN_STFI.AsString = 'ABATIMENTO') then
    if EdicaoFIN_VALO.AsFloat > 0 then
    begin
      EdicaoFIN_VALO.Value := -1*EdicaoFIN_VALO.AsFloat;
      EdicaoFIN_VPEN.Value := abs(EdicaoFIN_VALO.AsFloat);
      EdicaoFIN_VPAG.Value := 0;
    end;

  if Pos('/P',EdicaoFIN_DOCT.AsString) > 0 then
  EdicaoFIN_STFI.Value := 'PAGO PROTESTO';

  if Pos('/N',EdicaoFIN_DOCT.AsString) > 0 then
  EdicaoFIN_STFI.Value := 'NÃO PAGO';

  if EdicaoFIN_PCOM.AsFloat = 0 then
     EdicaoFIN_PCOM.Value := PCOM;

  EdicaoFIN_VCOM.Value := (EdicaoFIN_VALO.AsFloat * EdicaoFIN_PCOM.AsFloat) / 100;
end;

procedure Tfrmpag_com.cbperChange(Sender: TObject);
begin
  cbstfi.Text := IFThen(cbper.Text = 'DATA PAGAMENTO','PAGO','TODOS');
  dxDT1.SetFocus;
end;

procedure Tfrmpag_com.SIENovoClick(Sender: TObject);
begin
  if (EdicaoID.AsInteger > 0) and (Edicao.State = dsBrowse) then
      with SQLSEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO FIN_PAG');
        SQL.Add('SELECT * FROM FIN_PAG WHERE ID = ''' + EdicaoID.AsString + '''');
        ExecQuery;
        oRefresh(Edicao);
      end;
end;

procedure Tfrmpag_com.DTSEdicaoStateChange(Sender: TObject);
begin
  oState(Edicao,SBEdicao);
end;

procedure Tfrmpag_com.SIEEdicaoClick(Sender: TObject);
begin
  oEdit(Edicao);
end;

procedure Tfrmpag_com.SIEDeleteClick(Sender: TObject);
begin
  if (EdicaoID.AsInteger = 0) or (Edicao.State in [dsInsert,dsEdit]) then
      Abort;

  if oYesNo(handle,'Excluir Título Nº ' + EdicaoFIN_DOCT.AsString + ' ?') = mrNo then
     Abort;

  Edicao.Delete;
end;

procedure Tfrmpag_com.SIEPostClick(Sender: TObject);
begin
  oPost(Edicao);
end;

procedure Tfrmpag_com.SIECancelClick(Sender: TObject);
begin
  oCancel(Edicao);
end;

end.


