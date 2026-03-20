unit pven_rom;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math, StrUtils, FMTBcd,
  IBEvents, rxSpeedbar, IBSQL, cxGraphics, cxControls, dxStatusBar;

type
  Tfrmven_rom = class(TForm)
    DTSEdicao: TDataSource;
    PNLConsulta: TPanel;
    pnlpri: TPanel;
    TSEdicao: TIBTransaction;
    Edicao: TIBDataSet;
    FKPedidos: TIBQuery;
    Pedidos: TIBQuery;
    GBEtiquetas: TGroupBox;
    ILMenu: TImageList;
    SBMenu: TSpeedBar;
    SSMenu: TSpeedbarSection;
    SIMSalva: TSpeedItem;
    SIMNFe: TSpeedItem;
    SIMSaida: TSpeedItem;
    EdicaoID: TIntegerField;
    EdicaoROM_ITEM: TIBStringField;
    EdicaoROM_IPRO: TIntegerField;
    EdicaoROM_CART: TIBStringField;
    EdicaoROM_CPRO: TIBStringField;
    EdicaoROM_CBAR: TIBStringField;
    EdicaoROM_DPRO: TIBStringField;
    EdicaoROM_COMP: TIBStringField;
    EdicaoROM_CDET: TIBStringField;
    EdicaoROM_CTNR: TIBStringField;
    EdicaoROM_LOTE: TIBStringField;
    EdicaoROM_DUNI: TIBStringField;
    EdicaoROM_QTDE: TIBBCDField;
    EdicaoROM_QTRL: TIntegerField;
    EdicaoROM_VDSC: TIBBCDField;
    EdicaoROM_PREC: TFloatField;
    EdicaoROM_UNIT: TFloatField;
    EdicaoROM_TSDE: TIBBCDField;
    EdicaoROM_TOTA: TIBBCDField;
    EdicaoROM_CCLF: TIBStringField;
    EdicaoROM_PIPI: TIBBCDField;
    EdicaoROM_VIPI: TIBBCDField;
    EdicaoROM_IDSP: TIntegerField;
    EdicaoROM_DSEP: TIBStringField;
    EdicaoROM_PSBR: TIBBCDField;
    EdicaoROM_PSLQ: TIBBCDField;
    EdicaoROM_CCST: TIBStringField;
    EdicaoROM_NFCI: TIBStringField;
    EdicaoROM_STAV: TIBStringField;
    EdicaoROM_FLAG: TSmallintField;
    EdicaoROM_APRO: TIBStringField;
    EdicaoROM_OBSE: TMemoField;
    DBGConsulta: TdxDBGrid;
    DBGConsultaROM_ITEM: TdxDBGridMaskColumn;
    DBGConsultaROM_CART: TdxDBGridMaskColumn;
    DBGConsultaROM_CPRO: TdxDBGridMaskColumn;
    DBGConsultaROM_DUNI: TdxDBGridPickColumn;
    DBGConsultaROM_CDET: TdxDBGridMaskColumn;
    DBGConsultaROM_QTDE: TdxDBGridCalcColumn;
    DBGConsultaROM_QTRL: TdxDBGridMaskColumn;
    DBGConsultaROM_COMP: TdxDBGridMaskColumn;
    PNLDescricao: TPanel;
    EdicaoROM_PESO: TIBBCDField;
    EdicaoROM_PSCN: TIBBCDField;
    EdicaoROM_REND: TIBBCDField;
    FKPedidosIDPK: TLargeintField;
    FKPedidosITEM: TIntegerField;
    FKPedidosIDCP: TIntegerField;
    FKPedidosCP_IDEP: TSmallintField;
    FKPedidosARTIGO: TIBStringField;
    FKPedidosSKU: TIBStringField;
    FKPedidosCEAN: TIBStringField;
    FKPedidosDECP: TIBStringField;
    FKPedidosDGCP: TIBStringField;
    FKPedidosUCOM: TIBStringField;
    FKPedidosQTDE: TIBBCDField;
    FKPedidosQTRL: TIntegerField;
    FKPedidosVPRC_PAD: TFloatField;
    FKPedidosPDSC: TIBBCDField;
    FKPedidosVPRC_COM: TFloatField;
    FKPedidosTSDE: TIBBCDField;
    FKPedidosTCDE: TIBBCDField;
    FKPedidosNCM: TIBStringField;
    FKPedidosPIPI: TIBBCDField;
    FKPedidosPSBR: TIBBCDField;
    FKPedidosPSLQ: TIBBCDField;
    FKPedidosORIG: TSmallintField;
    FKPedidosCPAIS: TSmallintField;
    FKPedidosHOST: TIBStringField;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    SQLSEdicao: TIBSQL;
    FKPedidosID: TIntegerField;
    SQLEtiquetas: TIBSQL;
    DBGConsultaROM_PSBR: TdxDBGridMaskColumn;
    DBGConsultaROM_PSLQ: TdxDBGridMaskColumn;
    EdicaoROM_CDTP: TSmallintField;
    EdicaoROM_CDDF: TSmallintField;
    EdicaoROM_DEDF: TIBStringField;
    EdicaoROM_PDSC: TIBBCDField;
    FKPedidosUPESO: TIBBCDField;
    FKPedidosUPSCN: TIBBCDField;
    FKPedidosUMETRO: TIBBCDField;
    FKPedidosUREND: TIBBCDField;
    FKPedidosINFADCAD: TIBStringField;
    FKPedidosIP: TIBStringField;
    SQLEvent: TIBSQL;
    DBGConsultaROM_TSDE: TdxDBGridMaskColumn;
    DBGConsultaROM_TOTA: TdxDBGridMaskColumn;
    DBGConsultaROM_VIPI: TdxDBGridMaskColumn;
    SBRodape: TdxStatusBar;
    EdicaoROM_PTABI: TFloatField;
    EdicaoROM_PTABF: TFloatField;
    FKPedidosVPRC_PAD_INI: TFloatField;
    FKPedidosVPRC_PAD_FIM: TFloatField;
    PedidosID: TIntegerField;
    PedidosIDEP: TSmallintField;
    PedidosCDST: TSmallintField;
    PedidosREST: TIBStringField;
    PedidosDEST: TIBStringField;
    PedidosIDPK: TLargeintField;
    PedidosDEPK: TIBStringField;
    PedidosDTPK: TDateField;
    PedidosCTNR: TIBStringField;
    PedidosIDCD: TIntegerField;
    PedidosDECD: TIBStringField;
    PedidosUFCD: TIBStringField;
    PedidosCSCD: TSmallintField;
    PedidosIDCV: TSmallintField;
    PedidosDECV: TIBStringField;
    PedidosIDCR: TSmallintField;
    PedidosDECR: TIBStringField;
    PedidosPDSC: TIBBCDField;
    PedidosVDSC: TIBBCDField;
    PedidosTDSC: TIBStringField;
    PedidosCDPD: TSmallintField;
    PedidosSTPD: TIBStringField;
    PedidosFAPD: TSmallintField;
    PedidosBEPD: TSmallintField;
    PedidosSEPD: TSmallintField;
    PedidosCDCO: TSmallintField;
    PedidosSTCO: TIBStringField;
    PedidosRECO: TIBStringField;
    PedidosTPCO: TSmallintField;
    PedidosCDPG: TSmallintField;
    PedidosDEPG: TIBStringField;
    PedidosCFOP: TIBStringField;
    PedidosIDCT: TSmallintField;
    PedidosDECT: TIBStringField;
    PedidosMFRT: TSmallintField;
    PedidosVFRT: TIBBCDField;
    PedidosINFADCAD: TIBStringField;
    DBGConsultaROM_UNIT: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SIMSalvaClick(Sender: TObject);
    procedure SIMSaidaClick(Sender: TObject);
    procedure DTSEdicaoDataChange(Sender: TObject; Field: TField);
    procedure FormPaint(Sender: TObject);
    procedure SIMNFeClick(Sender: TObject);
    procedure EdicaoBeforeScroll(DataSet: TDataSet);
    procedure EdicaoAfterScroll(DataSet: TDataSet);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
    REC_SHE_DEF: TREC_SHE_DEF;
    RECPedido : TRECPedidos;

    FMSGRodape: String;
    FCaixa,
    ForceClose: Boolean;

    { Definindo uma propriedade no form
      Criado um atributo FMSGCaption e um método SetMSGCaption para trabalhar com a propriedade
      FMSGCaption   - Encapsula a informação
      SetMSGCaption - Método de acesso que recebe a atualização da informação MSGCaption
      Não usarei o método SetMSGCaption para atribuir informação a FMSGRodpae,
      vou apenas utilizar a propriedade }

    { método para atribuição\validação de valor }
    procedure SetMSGRodape(const AValue: String);
    procedure SetCaixa(const AValue: Boolean);
  public
    { Public declarations }
    ROM_QTDE,
    ROM_TSDE,
    ROM_TCDE,
    ROM_PSBR,
    ROM_PSLQ: Double;
    ROM_QTRL: Integer;

    property SMSGRodape: String read FMSGRodape write SetMSGRodape;
    property BCaixa: Boolean    read FCaixa     write SetCaixa;

    procedure _Etiquetas;
    procedure _Produtos;
    procedure _Salva;
    procedure _NFEmissao(ATIPO_NF: String = 'NORMAL');

    Constructor Create(AOwner: TComponent; const AIDPK: Integer); reintroduce; overload;
  end;

var
  frmven_rom: Tfrmven_rom;

implementation

uses uPrincipal, bPrincipal,
  pven_nfe, pctr_ped;

{$R *.dfm}

procedure Tfrmven_rom.SetMSGRodape(const AValue: String);
begin
  FMSGRodape := AValue;
end;

procedure Tfrmven_rom.SetCaixa(const AValue: Boolean);
begin
  FCaixa := AValue;
end;

Constructor TFrmven_rom.Create(AOwner: TComponent; const AIDPK: Integer);
begin
  oIRECPedidos(RECPedido);
  RECPedido.IDPK := IntToStr(AIDPK);

  inherited Create(AOwner);
end;

procedure Tfrmven_rom.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;

  { Default }
  oIREC_SHE_DEF(REC_SHE_DEF);
  REC_SHE_DEF.FPosition := Self.Position;
  REC_SHE_DEF.FB_Event       := 'CTR_PED';

  { Métodos }
  SMSGRodape := 'Inclusão de Romaneios';
  BCaixa     := True;

  if (RECParametros.STCX <> 'Caixa Aberto') and (BCaixa) then
  begin
    oErro(Handle,'Acesso Negado !'+#13+
                 'Abertura de caixa não registrada.');
    PostMessage(Handle, WM_CLOSE, 0, 0);
    ForceClose := True;
    Abort;
  end;

  oOTransact(TConsulta);
  with Pedidos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.IDEP,');
    SQL.Add('       PK.CDST,PK.REST,PK.DEST,');
    SQL.Add('       PK.IDPK,PK.DEPK,PK.DTPK,PK.CTNR,');
    SQL.Add('       PK.IDCD,PK.DECD,PK.UFCD,PK.CSCD,');
    SQL.Add('       PK.IDCV,PK.DECV,');
    SQL.Add('       PK.IDCR,PK.DECR,');
    SQL.Add('       PK.PDSC,PK.VDSC,PK.TDSC,');
    SQL.Add('       PK.CDPD,PK.STPD,PK.FAPD,PK.BEPD,PK.SEPD,');
    SQL.Add('       PK.CDCO,PK.STCO,PK.RECO,PK.TPCO,PK.CDPG,PK.DEPG,');
    SQL.Add('       PK.CFOP,');
    SQL.Add('       PK.IDCT,PK.DECT,PK.MFRT,PK.VFRT,');
    SQL.Add('       PK.INFADCAD');

    SQL.Add('FROM '+oREPZero('VW_PED_VEN_CAB','_',RECParametros.EP_ID,3)+' AS PK');
    SQL.Add('WHERE  PK.IDEP = '''+RECParametros.EP_ID+'''');
    SQL.Add('AND    PK.ID   = '''+RECPedido.IDPK  +'''');
  end;

  with FKPedidos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PK.ID    ,PK.IDPK   ,PK.ITEM,');
    SQL.Add('         PK.IDCP  ,PK.CP_IDEP,');
    SQL.Add('         PK.ARTIGO,PK.SKU    ,PK.CEAN,');
    SQL.Add('         PK.DECP  ,PK.DGCP   ,');
    SQL.Add('         PK.UCOM  ,PK.UPESO,PK.UPSCN ,PK.UMETRO,PK.UREND,');
    SQL.Add('         IIF(PK.QTSP > 0,PK.QTSP,PK.QTDE) AS QTDE,');
    SQL.Add('         IIF(PK.QTSP > 0,PK.RLSP,PK.QTRL) AS QTRL,');
    SQL.Add('         PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,');
    SQL.Add('         PK.VPRC_PAD,PK.PDSC,PK.VPRC_COM,');
    SQL.Add('         PK.TSDE,PK.TCDE ,');
    SQL.Add('         PK.NCM ,PK.PIPI ,');
    SQL.Add('         PK.PSBR,PK.PSLQ ,');
    SQL.Add('         PK.ORIG,PK.CPAIS,');
    SQL.Add('         PK.INFADCAD,');
    SQL.Add('         PK.IP,PK.HOST');
    SQL.Add('FROM '+oREPZero('VW_PED_VEN_ITE','_',RECParametros.EP_ID,3)+' AS PK');
    SQL.Add('WHERE    PK.IDEP = '''+RECParametros.EP_ID+'''');
    SQL.Add('AND      PK.IDPK = '''+RECPedido.IDPK  +'''');
    SQL.Add('ORDER BY PK.ITEM');
  end;
end;

procedure Tfrmven_rom.FormShow(Sender: TObject);
begin
  OnShow := Nil;
end;

procedure Tfrmven_rom.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if ForceClose then
     Abort;

  try
    { Registra Evento }
    if REC_SHE_DEF.FB_Event <> EmptyStr then
       with EEvent do
            try
              UnregisterEvents;
              Events.Add(oREPZero(Trim(REC_SHE_DEF.FB_Event),'_',RECParametros.EP_ID,3));
              RegisterEvents;
            except
              on E: Exception do
                    oErro(Handle,'Falha ao tentar registrar evento !'+#13+
                                 'Evento: '    +REC_SHE_DEF.FB_Event +'.'+#13+
                                 'Form: '      +Self.Name+'.'    +#13+#13+
                                 'Error Code: '+E.Message);
            end;
  finally
    Screen.Cursor := crDefault;
    Tag := 0;
  end;

  oOTransact(TSEdicao);
  try
    with SQLSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM ROM_ITE');
      ExecQuery;
    end;
    oRTransact(TSEdicao);
  except
    on E: Exception do
    begin
      oCTransact(TSEdicao,ltRollback);
      oErro(Handle,'Falha ao tentar incluir os itens !'+#13+
                   'Evento: '    +oREPZero('CTR_PED','_',RECParametros.EP_ID,3)+'.'+#13+
                   'Form: '      +Self.Name+'.'+#13+#13+
                   'Error Code: '+E.Message);
    end;
  end;
  oRTransact(TSEdicao);
end;

procedure Tfrmven_rom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmven_rom.FormDestroy(Sender: TObject);
var
  MainHandle: THandle;
begin
  try
    Screen.Cursor := crAppStart;
    OnDestroy     := Nil;

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

    try
      EEvent.UnRegisterEvents;
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar fechar eventos !'+#13+#13+
                                 'Error Code: '+E.Message+'.'      +#13+
                                  Caption+'.');
      end;
    end;

    try
      oFRECPedidos(RECPedido );
      oFREC_SHE_DEF(REC_SHE_DEF);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                 'Error Code: '+E.Message+'.'        +#13+
                                  Caption+'.');
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    Frmven_rom    := Nil;
  end;

  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, False, GetCurrentProcessID);
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF);
    CloseHandle(MainHandle);
  except
    ;
  end;
end;

procedure Tfrmven_rom.FormKeyDown(Sender: TObject; var Key: Word;
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
       121      : if SIMSalva.Enabled then SIMSalva.Click;
  end;
end;

procedure Tfrmven_rom.FormPaint(Sender: TObject);
var
  AScreen: TRect;
begin
  { Ajusta o Form para o tamanho da area livre do MainForm }
  GetWindowRect(FrmPrincipal.ClientHandle,AScreen);

  Left   := 0;
  Top    := 0;
  Height := AScreen.Bottom - AScreen.Top - 5;
end;

procedure Tfrmven_rom.FormResize(Sender: TObject);
begin
  if frmven_rom <> Nil then
     Paint;
end;

procedure Tfrmven_rom.SIMSalvaClick(Sender: TObject);
begin
  _Salva;
  if not SIMSalva.Enabled then
     Close;
end;

procedure Tfrmven_rom.SIMNFeClick(Sender: TObject);
begin
  _Salva; if SIMSalva.Enabled then
             Abort;

  _NFEmissao;
  Close;
end;

procedure Tfrmven_rom.SIMSaidaClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmven_rom.EdicaoNewRecord(DataSet: TDataSet);
begin
  EdicaoID.Value       := 0;
  EdicaoROM_FLAG.Value := 0;
end;

procedure Tfrmven_rom.EdicaoBeforePost(DataSet: TDataSet);
begin
  if EdicaoROM_DPRO.AsString  = '' then EdicaoROM_DPRO.Value := 'DESCRIÇÂO NÃO CADASTRADA ! OBRIGATÓRIO CADASTRAR DESCRIÇÃO ';
  if EdicaoROM_QTRL.AsInteger = 0  then EdicaoROM_QTRL.Value := 1;

  { Redução }
  if (RECParametros.PED_IPI) and (RECParametros.NFE_CRT = 3) and (PedidosTPCO.AsInteger > 0) and (EdicaoROM_PIPI.AsFloat > 0) and (EdicaoROM_CCST.AsInteger = 1) then
      EdicaoROM_UNIT.AsFloat := EdicaoROM_UNIT.AsFloat / ((EdicaoROM_PIPI.AsFloat / 100) + 1);

  { Crédito }
  EdicaoROM_PREC.AsFloat := EdicaoROM_PREC.AsFloat / IFThen(PedidosTPCO.AsInteger > 1,PedidosTPCO.AsInteger,1);
  EdicaoROM_UNIT.AsFloat := EdicaoROM_UNIT.AsFloat / IFThen(PedidosTPCO.AsInteger > 1,PedidosTPCO.AsInteger,1);

  { Totais }
  EdicaoROM_TSDE.AsCurrency := RoundTO(EdicaoROM_QTDE.AsCurrency *  EdicaoROM_UNIT.AsFloat, -2);
  EdicaoROM_TOTA.AsCurrency := RoundTO(EdicaoROM_QTDE.AsCurrency *  EdicaoROM_UNIT.AsFloat, -2);
  EdicaoROM_VDSC.AsCurrency := EdicaoROM_TOTA.AsCurrency         * (EdicaoROM_PDSC.AsFloat / 100);

  { IPI }
  EdicaoROM_VIPI.Value := EdicaoROM_TSDE.AsFloat * (EdicaoROM_PIPI.AsFloat / 100);

  { Peso Líquido }
  if  LeftStr(EdicaoROM_DUNI.AsString,1) = 'K' then EdicaoROM_PSLQ.Value := EdicaoROM_QTDE.AsCurrency else
      if EdicaoROM_REND.AsFloat > 0 then
         EdicaoROM_PSLQ.Value := EdicaoROM_QTDE.AsCurrency / EdicaoROM_REND.AsFloat else
         EdicaoROM_PSLQ.Value := EdicaoROM_PESO.AsFloat;
  { Peso Bruto }
  EdicaoROM_PSBR.Value := EdicaoROM_PSLQ.AsFloat + (EdicaoROM_QTRL.AsInteger * EdicaoROM_PSCN.AsFloat);
end;

procedure Tfrmven_rom.DTSEdicaoDataChange(Sender: TObject; Field: TField);
begin
  if Edicao.State = dsBrowse then
  begin
    DBGConsulta.ApplyBestFit(DBGConsultaROM_CPRO);
    DBGConsulta.ApplyBestFit(DBGConsultaROM_COMP);

    PNLDescricao.Caption := EdicaoROM_DPRO.AsString;
    PNLDescricao.Height  := IFThen(PNLDescricao.Caption = EmptyStr,0,35);
  end;
end;

procedure Tfrmven_rom._Etiquetas;
begin
  try
    FKPedidos.DisableControls;
    FKPedidos.First;
    while not FKPedidos.Eof do
    begin
      with SQLEtiquetas do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT   PK.ID  ,PK.IDEP,');
        SQL.Add('         PK.CDET,PK.CTNR,PK.LOTE,');
        SQL.Add('         PK.CDOP,PK.CDTP,');
        SQL.Add('         PK.QTDE,PK.QTRL,');
        SQL.Add('         PK.IDSP,PK.DESP,PK.DTSP,');
        SQL.Add('         PK.NFCI,PK.CDDF,PK.DEDF,');
        SQL.Add('         PK.INFADETQ');
        SQL.Add('FROM     VW_CAD_PRO_EST_SEP AS PK');
        SQL.Add('WHERE    PK.IDEP = '''+RECParametros.EP_ID      +'''');
        SQL.Add('AND      PK.CDPV = '''+PedidosId.AsString    +'''');
        SQL.Add('AND      PK.IDCP = '''+FKPedidosIDCP.AsString+'''');
        SQL.Add('AND      PK.ITEM = '''+FKPedidosITEM.AsString+'''');
        SQL.Add('ORDER BY PK.CDET');
        ExecQuery;
      end;
      while not SQLEtiquetas.Eof do
      begin
        Edicao.Append;
        EdicaoROM_ITEM.Value := FKPedidosITEM.AsString;
        EdicaoROM_IPRO.Value := FKPedidosIDCP.AsInteger;

        EdicaoROM_CART.Value := FKPedidosArtigo.AsString;
        EdicaoROM_CPRO.Value := FKPedidosSKU.AsString;
        EdicaoROM_CBAR.Value := FKPedidosCEAN.AsString;

        EdicaoROM_DPRO.Value := FKPedidosDECP.AsString;
        EdicaoROM_COMP.Value := FKPedidosDGCP.AsString;

        EdicaoROM_DUNI.Value := FKPedidosUCOM.AsString;
        EdicaoROM_PESO.Value := FKPedidosUPESO.AsFloat;
        EdicaoROM_PSCN.Value := FKPedidosUPSCN.AsFloat;
        EdicaoROM_REND.Value := FKPedidosUREND.AsFloat;

        EdicaoROM_CCLF.Value := FKPedidosNCM.AsString;
        EdicaoROM_PIPI.Value := FKPedidosPIPI.AsFloat;
        EdicaoROM_CCST.Value := FKPedidosORIG.AsString;

        EdicaoROM_CDET.Value := oStrZero(SQLEtiquetas.Current.ByName('CDET').AsInteger,10);
        EdicaoROM_CTNR.Value := SQLEtiquetas.Current.ByName('CTNR').AsString;
        EdicaoROM_LOTE.Value := SQLEtiquetas.Current.ByName('LOTE').AsString;

        EdicaoROM_IDSP.Value := SQLEtiquetas.Current.ByName('IDSP').AsInteger;
        EdicaoROM_DSEP.Value := SQLEtiquetas.Current.ByName('DESP').AsString;

        EdicaoROM_CDTP.Value := SQLEtiquetas.Current.ByName('CDTP').AsInteger;
        EdicaoROM_QTDE.Value := SQLEtiquetas.Current.ByName('QTDE').AsCurrency;
        EdicaoROM_QTRL.Value := SQLEtiquetas.Current.ByName('QTRL').AsInteger;

        EdicaoROM_CDDF.Value := SQLEtiquetas.Current.ByName('CDDF').AsInteger;
        EdicaoROM_DEDF.Value := SQLEtiquetas.Current.ByName('DEDF').AsString;
        EdicaoROM_NFCI.Value := SQLEtiquetas.Current.ByName('NFCI').AsString;

        EdicaoROM_PTABI.AsFloat := FKPedidosVPRC_PAD_INI.AsFloat;
        EdicaoROM_PTABF.AsFloat := FKPedidosVPRC_PAD_FIM.AsFloat;

        EdicaoROM_PREC.AsFloat := FKPedidosVPRC_PAD.AsFloat;
        EdicaoROM_PDSC.Value   := FKPedidosPDSC.AsFloat;
        EdicaoROM_UNIT.AsFloat := FKPedidosVPRC_PAD.AsFloat;

        EdicaoROM_APRO.Value := FKPedidosINFADCAD.AsString;
        EdicaoROM_OBSE.Value := SQLEtiquetas.Current.ByName('INFADETQ').AsString;
        Edicao.Post;

        SQLEtiquetas.Next;
      end;
      FKPedidos.Next;
    end;
  finally
    FKPedidos.EnableControls;
  end;
end;

procedure Tfrmven_rom._Produtos;
begin
  while not FKPedidos.Eof do
  begin
    Edicao.Append;
    EdicaoROM_ITEM.Value := FKPedidosITEM.AsString;
    EdicaoROM_IPRO.Value := FKPedidosIDCP.AsInteger;
    EdicaoROM_CDET.Value := '0';


    EdicaoROM_CART.Value := FKPedidosArtigo.AsString;
    EdicaoROM_CPRO.Value := FKPedidosSKU.AsString;
    EdicaoROM_CBAR.Value := FKPedidosCEAN.AsString;

    EdicaoROM_DPRO.Value := FKPedidosDECP.AsString;
    EdicaoROM_COMP.Value := FKPedidosDGCP.AsString;

    EdicaoROM_DUNI.Value := FKPedidosUCOM.AsString;

    EdicaoROM_CCLF.Value := FKPedidosNCM.AsString;
    EdicaoROM_PIPI.Value := FKPedidosPIPI.AsFloat;
    EdicaoROM_CCST.Value := FKPedidosORIG.AsString;

    EdicaoROM_CDTP.Value := 78;
    EdicaoROM_QTDE.Value := FKPedidosQTDE.AsCurrency;
    EdicaoROM_QTRL.Value := FKPedidosQTRL.AsInteger;

    EdicaoROM_PTABI.AsFloat := FKPedidosVPRC_PAD_INI.AsFloat;
    EdicaoROM_PTABF.AsFloat := FKPedidosVPRC_PAD_FIM.AsFloat;

    EdicaoROM_PREC.AsFloat := FKPedidosVPRC_PAD.AsFloat;
    EdicaoROM_PDSC.Value   := FKPedidosPDSC.AsFloat;
    EdicaoROM_UNIT.AsFloat := FKPedidosVPRC_PAD.AsFloat;

    EdicaoROM_PESO.Value := FKPedidosUPESO.AsFloat;
    EdicaoROM_PSCN.Value := FKPedidosUPSCN.AsFloat;
    EdicaoROM_REND.Value := FKPedidosUREND.AsFloat;

    EdicaoROM_PSBR.Value := FKPedidosPSBR.AsFloat;
    EdicaoROM_PSLQ.Value := FKPedidosPSLQ.AsFloat;

    EdicaoROM_APRO.Value := FKPedidosINFADCAD.AsString;
    Edicao.Post;

    FKPedidos.Next;
  end;
end;

procedure Tfrmven_rom._Salva;
begin
  oRTransact(TSEdicao);

  try
    Pedidos.DisableControls;
    Pedidos.First;
    if PedidosId.AsInteger = 0 then
       oException(Nil,'Pedido não Encontrado !');

    Edicao.DisableControls;
    Edicao.First;
    if EdicaoId.AsInteger = 0 then
       oException(Nil,'Itens do Pedido não Encontrado !');

    { Verifica Duplicidades }
    with SQLSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ROM_CDET,COUNT(*) AS QT FROM ROM_ITE');
      SQL.Add('WHERE  ROM_CDET <> ''0''');
      SQL.Add('AND    ROM_CDET <> '' ''');
      SQL.Add('GROUP  BY 1');
      SQL.Add('HAVING COUNT(*) > 1');
      ExecQuery;

      if Current.Vars[1].AsInteger > 0 then
         oException(Nil,'Falha ao tentar salvar romaneio !' + #13 +
                        'Etiqueta Nº ' + Current.Vars[0].AsString + ' em duplicidade.' + #13 + #13 +
                        'Favor entrar em contato com o responsável pela separação.');
    end;
    
    { Auto Increment }
    try
      oOTransact(TEdicao);
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT GEN_ID(ID_NO_'+SLPrincipal.Values['rom_cab']+',0) FROM RDB$DATABASE');
        ExecQuery;
        RECPedido.IDFK := IntToStr(Current.Vars[0].AsInteger + 1);
      end;
    except
      on E: Exception do
      begin
        SIMSalva.Enabled := True;

        oCTransact(TEdicao,ltRollback);
        oException(Nil    ,'Falha ao tentar atribuir ID de Identificação !'         +#13+
                           'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                           'Erro: '+E.Message);
      end;
    end;
    SIMSalva.Enabled := False;

    { Itens }
    try
      while not Edicao.Eof do
      begin
        Application.ProcessMessages;

        SPEdicao.Close;
        SPEdicao.StoredProcName := 'SP_ROM_ITE';
        SPEdicao.Prepare;

        SPEdicao.ParamByName('AID'  ).Value := 0;
        SPEdicao.ParamByName('AIDEP').Value := RECParametros.EP_ID;
        SPEdicao.ParamByName('AIDCA').Value := RECUsuarios.ID;
        SPEdicao.ParamByName('AIDPK').Value := RECPedido.IDFK;

        SPEdicao.ParamByName('AITEM').Value := EdicaoROM_ITEM.AsString;
        SPEdicao.ParamByName('ACDET').Value := EdicaoROM_CDET.AsString;
        SPEdicao.ParamByName('AIDCP').Value := EdicaoROM_IPRO.AsInteger;
        SPEdicao.ParamByName('ACEAN').Value := EdicaoROM_CBAR.AsString;
        SPEdicao.ParamByName('ADECP').Value := EdicaoROM_DPRO.AsString;
        SPEdicao.ParamByName('ADGCP').Value := EdicaoROM_COMP.AsString;

        SPEdicao.ParamByName('AUCOM').Value := EdicaoROM_DUNI.AsString;
        SPEdicao.ParamByName('AUCON').Value := '';

        SPEdicao.ParamByName('AQTDE').Value := EdicaoROM_QTDE.AsCurrency;
        SPEdicao.ParamByName('AQTRL').Value := EdicaoROM_QTRL.AsCurrency;
        SPEdicao.ParamByName('APSBR').Value := EdicaoROM_PSBR.AsFloat;
        SPEdicao.ParamByName('APSLQ').Value := EdicaoROM_PSLQ.AsFloat;

        SPEdicao.ParamByName('AVPRC_PAD_INI').Value := EdicaoROM_PTABI.AsFloat;
        SPEdicao.ParamByName('AVPRC_PAD_FIM').Value := EdicaoROM_UNIT.AsFloat;
        SPEdicao.ParamByName('AVPRC_PAD').Value := EdicaoROM_PREC.AsFloat;
        SPEdicao.ParamByName('AVPRC_COM').Value := EdicaoROM_UNIT.AsFloat;

        SPEdicao.ParamByName('APDSC').Value := EdicaoROM_PDSC.AsFloat;
        SPEdicao.ParamByName('AVDSC').Value := EdicaoROM_VDSC.AsFloat;

        SPEdicao.ParamByName('ATSDE').Value := EdicaoROM_TSDE.AsCurrency;
        SPEdicao.ParamByName('ATCDE').Value := EdicaoROM_TOTA.AsCurrency;

        SPEdicao.ParamByName('ANCM' ).Value := EdicaoROM_CCLF.AsString;
        SPEdicao.ParamByName('APIPI').Value := EdicaoROM_PIPI.AsCurrency;
        SPEdicao.ParamByName('AVIPI').Value := EdicaoROM_VIPI.AsCurrency;
        SPEdicao.ParamByName('AIP'  ).Value := RECParametros.IP;
        SPEdicao.ParamByName('AHOST').Value := RECParametros.HOST;
        SPEdicao.ParamByName('AFLAG').Value := 0;
        SPEdicao.ExecProc;

        Edicao.Next;
      end;

      { Sumário }
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM '+SLPrincipal.Values['rom_ite'] + ' AS PK');
        SQL.Add('WHERE  PK.CDRO = ''' + RECPedido.IDFK + '''');
        ExecQuery;

        if Current.Vars[0].AsInteger  = 0 then
           oException(Nil,'Itens não Encontrados !');

        { Exatamente o mesmo valor do agrupamento e também não agrupados }
        Close;
        SQL.Clear;
        SQL.Add('SELECT SUM(PK.QTDE) AS QTDE,SUM(PK.QTRL) AS QTRL,SUM(PK.TCDE) AS TCDE,SUM(PK.PSBR) AS PSBR,SUM(PK.PSLQ) AS PSLQ');
        SQL.Add('FROM (');
        SQL.Add('SELECT   FK.ID AS IDCP,FK.SKU AS CPROD,PK.ROM_DPRO||'' ''||COALESCE(PK.DGCP,'''') AS XPROD,PK.ROM_DUNI AS UCOM,');
        SQL.Add('         FK.CEAN,FK.NCM,FK.PIPI,FK.CEST,FK.EXTIPI,FK.UTRIB,FK.ORIG,');
        SQL.Add('         FK.PESO,FK.PSCN,FK.METRO,FK.REND,FK.UQTDE,');
        SQL.Add('         FK.CMP_PAD ,FK.REST,');
        SQL.Add('         FK.UQVOL,FK.UESP,');
        SQL.Add('         PK.ROM_PREC,PK.ROM_UNIT AS VUNCOM,PK.ROM_NFCI,');
        SQL.Add('         SUM(PK.QTDE) AS QTDE,SUM(PK.QTRL) AS QTRL,CAST(SUM(CAST(PK.QTDE AS NUMERIC(15,2)) * PK.VPRC_COM)  AS NUMERIC(15,2)) AS TCDE,SUM(PK.PSBR) AS PSBR,SUM(PK.PSLQ) AS PSLQ');
        SQL.Add('FROM   '+SLPrincipal.Values['rom_ite'] + ' AS PK');
        SQL.Add('JOIN     SP_CAD_PRO_PSQ('+RECParametros.EP_ID+', PK.IDCP,''ID'') AS FK ON (1=1)');
        SQL.Add('WHERE    PK.CDRO = '''+RECPedido.IDFK+'''');
        SQL.Add('GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23) AS PK');
        ExecQuery;

        RECPedido.PK_QTDE := 0;

        RECPedido.PK_QTDE := Current.ByName('QTDE').AsCurrency;
        RECPedido.PK_QTRL := Current.ByName('QTRL').AsInteger;
        RECPedido.PK_TSDE := Current.ByName('TCDE').AsCurrency;
        //RECPedido.PK_PDSC := PedidosPDSC.AsFloat;
        //RECPedido.PK_VDSC := RoundTO(IFThen(PedidosTDSC.AsString = '%',(RECPedido.PK_PDSC / 100) * RECPedido.PK_TSDE,RECPedido.PK_PDSC),-2);

        RECPedido.PK_VDSC := PedidosVDSC.AsFloat;
        RECPedido.PK_PDSC := RoundTO((RECPedido.PK_VDSC * 100) / RECPedido.PK_TSDE,-2);

        RECPedido.PK_TCDE := RECPedido.PK_TSDE - RECPedido.PK_VDSC;
        RECPedido.PK_PSBR := Current.ByName('PSBR').AsFloat;
        RECPedido.PK_PSLQ := Current.ByName('PSLQ').AsFloat;
      end;
    except
      on E: Exception do
      begin
        SIMSalva.Enabled := True;

        oCTransact(TEdicao,ltRollback);
        oException(Nil    ,'Falha ao tentar registrar os itens do romaneio !'       +#13+
                           'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                           'Erro: '+E.Message);
      end;
    end;

    { Cabeçalho }
    try
      SPEdicao.Close;
      SPEdicao.StoredProcName := 'SP_ROM_CAB';
      SPEdicao.Prepare;

      SPEdicao.ParamByName('ped').Value  := oREPZero('ROM_CAB','_',RECParametros.EP_ID,3);
      SPEdicao.ParamByName('id').Value   := 0;

      SPEdicao.ParamByName('dero').Value := PedidosDEPK.AsString;
      SPEdicao.ParamByName('ctnr').Value := PedidosCTNR.AsString;
      SPEdicao.ParamByName('cdcx').Value := RECParametros.CDCX;

      SPEdicao.ParamByName('ccli').Value := PedidosIDCD.AsInteger;
      SPEdicao.ParamByName('cven').Value := PedidosIDCV.AsInteger;
      SPEdicao.ParamByName('crep').Value := PedidosIDCR.AsInteger;

      SPEdicao.ParamByName('qtve').Value := RECPedido.PK_QTDE;
      SPEdicao.ParamByName('rlve').Value := RECPedido.PK_QTRL;

      SPEdicao.ParamByName('tsde').Value := RECPedido.PK_TSDE;
      SPEdicao.ParamByName('tdsc').Value := PedidosTDSC.AsString;
      SPEdicao.ParamByName('pdsc').Value := RECPedido.PK_PDSC;
      SPEdicao.ParamByName('vdsc').Value := RECPedido.PK_VDSC;
      SPEdicao.ParamByName('tcde').Value := RECPedido.PK_TCDE;

      SPEdicao.ParamByName('ctra').Value := PedidosIDCT.AsInteger;
      SPEdicao.ParamByName('dtra').Value := PedidosDECT.AsString;
      SPEdicao.ParamByName('mfrt').Value := PedidosMFRT.AsString;
      SPEdicao.ParamByName('cfrt').Value := EmptyStr;
      SPEdicao.ParamByName('vfrt').Value := 0;
      SPEdicao.ParamByName('psbr').Value := RECPEdido.PK_PSBR;
      SPEdicao.ParamByName('pslq').Value := RECPEdido.PK_PSLQ;

      SPEdicao.ParamByName('stpd').Value := PedidosSTPD.AsString;
      SPEdicao.ParamByName('stco').Value := PedidosSTCO.AsString;
      SPEdicao.ParamByName('conc').Value := PedidosTPCO.AsInteger;
      SPEdicao.ParamByName('cpag').Value := PedidosCDPG.AsInteger;
      SPEdicao.ParamByName('stfi').Value := PedidosDEST.AsString;
      SPEdicao.ExecProc;
    except
      on E: Exception do
      begin
        SIMSalva.Enabled := True;

        oCTransact(TEdicao,ltRollback);
        oException(Nil    ,'Falha ao tentar registrar romaneio !'+#13+
                           'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                           'Erro: '+E.Message);
      end;
    end;

    { Pedido }
    try
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('EXECUTE BLOCK');
        SQL.Add('RETURNS (CDRO bigint)');
        SQL.Add('AS');
        SQL.Add('BEGIN');

        SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
        SQL.Add('SET    ROM_CDRO = '''+RECPedido.IDFK+''',');
        SQL.Add('       DTRO     = CURRENT_TIMESTAMP,');
        SQL.Add('       ROM_QTPD = '''+oStrTran(FloatToStr(RECPedido.PK_QTDE),',','.')+''',');
        SQL.Add('       ROM_RLPD = '''+oStrTran(IntToStr  (RECPedido.PK_QTRL),',','.')+'''');
        SQL.Add('WHERE  IDEP     = '''+RECParametros.EP_ID  +'''');
        SQL.Add('AND    ID       = '''+PedidosId.AsString+'''');
        SQL.Add('RETURNING CDRO INTO :CDRO;');

        SQL.Add('SUSPEND;');
        SQL.Add('END;');

        ParamCheck := False;
        Prepare;
        ExecQuery;
        ParamCheck := True;
      end;

      if RECPedido.IDFK <> SQLEdicao.Current.Vars[0].AsInteger then
         oException(Nil,'Falha ao tentar gerar romaneio !');
    except
      on E: Exception do
      begin
        SIMSalva.Enabled := True;

        oCTransact(TEdicao,ltRollback);
        oException(Nil    ,'Falha ao tentar atualizar pedido(s) !'+#13+
                           'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                           'Erro: '+E.Message);
      end;
    end;

    try
      oCTransact(TEdicao);
      oAviso(handle,'Romaneio Gerado com Sucesso !');
    except
      on E: Exception do
      begin
        SIMSalva.Enabled := True;

        oCTransact(TEdicao,ltRollback);
        oException(Nil    ,'Falha ao tentar completar os registros do romaneio !'   +#13+
                           'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                           'Erro: '+E.Message);
      end;
    end;
  finally
    Pedidos.First;
    Pedidos.EnableControls;

    Edicao.First;
    Edicao.EnableControls;
  end;

  oSP_CAD_PRO_EST_LAN_UPD(SQLEvent,'PED_VEN_ITE',RECParametros.EP_ID,PedidosId.AsInteger);

  if Assigned(frmctr_ped) then
     frmctr_ped.EEvent.Tag := 0;

  oExecEvent(REC_SHE_DEF,Edicao);
end;

procedure Tfrmven_rom._NFEmissao(ATIPO_NF: String = 'NORMAL');
begin
  if PedidosId.AsInteger = 0 then
     oException(Nil,'Pedido não Encontrado !');

  if EdicaoId.AsInteger = 0 then
     oException(Nil,'Itens do Pedido não Encontrado !');

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID FROM '  + oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3)+' AS PK');
    SQL.Add('WHERE  PK.CDRO = ''' + RECPedido.IDFK       + '''');
    SQL.Add('AND    PK.IDCD = ''' + PedidosIDCD.AsString + '''');
    ExecQuery;

    if Eof then
       oException(Nil,'Pedido não Encontrado !' + #13+
                      'Favor cancelar e refazer romaneio.');
  end;

  try
    oLockWindowUpdate;
    if Assigned(frmven_nfe) then frmven_nfe.BringToFront else
       //frmven_nfe := tfrmven_nfe.create(Nil,'CTR_PED');

    with frmven_nfe do
    begin
      Tag   := 1;
      BCalc := False;

      EDCDPD.Text     := PedidosDEPK.AsString;
      EDCDPD.ReadOnly := True;

      CECDRO.Value    := RECPedido.IDFK;
      CECDRO.ReadOnly := True;
      CETSDE.Value    := RECPedido.PK_TSDE;
      CEVTRO.Value    := RECPedido.PK_TCDE;

      CEPDSC.Value    := RECPedido.PK_PDSC;
      CEPDSC.ReadOnly := True;
      CEVDSC.Value    := RECPedido.PK_VDSC;
      LAPDSC.Tag      := IFThen(RECPedido.PK_PDSC > 0,1,0);

      CEIDCD.Value    := PedidosIDCD.AsInteger;
      CEIDCD.Modified := True;
      CEIDCD.ValidateEdit;

      with SQLFKConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT   FIRST 1 NF.CDNF,NF.CFOP,NT.NFE_ESP');
        SQL.Add('FROM ' + oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3) + ' AS PK');
        SQL.Add('JOIN ' + oREPZero('NFE_CAB'    ,'_',RECParametros.EP_ID,3) + ' AS NF ON (NF.CDNF = PK.CDNF AND NF.IDCD = PK.IDCD)');
        SQL.Add('JOIN ' + oREPZero('NFE_TRA'    ,'_',RECParametros.EP_ID,3) + ' AS NT ON (NT.IDPK = NF.ID)');
        SQL.Add('JOIN     TAB_NAT AS TN ON (TN.NAT_CNAT = NF.CFOP)');

        SQL.Add('WHERE    PK.IDCD     = ''' + CEIDCD.Text + '''');
        SQL.Add('AND      NF.NNFE     = 1');
        SQL.Add('AND      TN.NAT_FATU = 1');
        SQL.Add('ORDER BY NF.CDNF DESC');
        ExecQuery;

        CBCNAT.Text := Current.Vars[1].AsString;

        if Current.Vars[2].AsString <> EmptyStr then
           V1_EDESP.Text := Current.Vars[2].AsString;
      end;

      if CBCNAT.Text  = EmptyStr then
         CBCNAT.Text := IFThen(PedidosUFCD.AsString = RECParametros.LOG_UF,
                        IFThen(not oEmpty(PedidosCFOP.AsString),PedidosCFOP.AsString,RECParametros.NFE_CFOPDUF),
                        IFThen(not oEmpty(PedidosCFOP.AsString),PedidosCFOP.AsString,RECParametros.NFE_CFOPFUF));
      PESQUISA_NATUREZA(CBCNAT.Text,'C');

      CEIDCT.Value := PedidosIDCT.AsInteger;
      PEDECT.Text  := PedidosDECT.AsString;
      PESQUISA_TRANSPORTADORA(PEDECT.Text,'F');

      if (PedidosMFRT.AsString <> EmptyStr) and (PedidosMFRT.AsString <> '9') then
          IEModFrete.Text := PedidosMFRT.AsString;

      CEVFRT.Value    := PedidosVFRT.AsFloat;
      V1_CEQVOL.Value := RECPedido.PK_QTRL;

      EDInfAdPed.Text := PedidosINFADCAD.AsString;
      BCalc := True;

      with SQLFKConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT   ID,SUM(TCDE) FROM '+SLPrincipal.Values['ped_ven_cab']+' AS PK');
        SQL.Add('WHERE    CDRO = ''' + CECDRO.Text + '''');
        SQL.Add('GROUP BY 1');
        ExecQuery;
        RECRomaneio.IDFK := Current.Vars[0].AsInteger;
        CEVTPV.Value     := Current.Vars[1].AsFloat;

        Close;
        SQL.Clear;
        SQL.Add('SELECT   PK.ITEM,FK.ID AS IDCP,FK.SKU AS CPROD,PK.ROM_DPRO||'' ''||COALESCE(PK.DGCP,'''') AS XPROD,PK.ROM_DUNI AS UCOM,');
        SQL.Add('         FK.CEAN,FK.NCM,FK.PIPI,FK.CEST,FK.EXTIPI,FK.UTRIB,FK.ORIG,');
        SQL.Add('         FK.PESO,FK.PSCN,FK.METRO,FK.REND,FK.UQTDE,');
        SQL.Add('         FK.CMP_PAD,FK.REST,');
        SQL.Add('         FK.UQVOL,FK.UESP,');
        SQL.Add('         PK.ROM_PREC,PK.ROM_UNIT AS VUNCOM,PK.ROM_NFCI,');
        SQL.Add('         SUM(PK.ROM_QTDE) AS ROM_QTDE,SUM(PK.ROM_QTRL) AS ROM_QTRL,SUM(PK.VDSC) AS VDSC,CAST(SUM(CAST(PK.QTDE AS NUMERIC(15,2)) * PK.VPRC_COM)  AS NUMERIC(15,2)) AS TCDE');
        SQL.Add('FROM   '+SLPrincipal.Values['rom_ite']+' AS PK');
        SQL.Add('JOIN     SP_CAD_PRO_PSQ(' + RECParametros.EP_ID + ',PK.IDCP,''ID'') AS FK ON (1=1)');
        SQL.Add('WHERE    PK.CDRO =    ''' + RECPedido.IDFK   + '''');
        SQL.Add('GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24');
        SQL.Add('ORDER BY 1');
        ExecQuery;
      end;
      while not SQLFKConsulta.Eof do
      begin
        nfe_001.Append;
        nfe_001NFE_ITEMPED.Value := SQLFKConsulta.Current.ByName('ITEM').AsInteger;
        nfe_001NFE_IPRO.Value    := SQLFKConsulta.Current.ByName('IDCP').AsInteger;
        nfe_001NFE_CPROD.Value   := SQLFKConsulta.Current.ByName('CPROD').AsString;
        nfe_001NFE_XPROD.Value   := SQLFKConsulta.Current.ByName('XPROD').AsString;
        nfe_001NFE_UCOM.Value    := SQLFKConsulta.Current.ByName('UCOM').AsString;
        nfe_001NFE_CEAN.Value    := SQLFKConsulta.Current.ByName('CEAN').AsString;

        nfe_001NFE_NCM.Value    := SQLFKConsulta.Current.ByName('NCM').AsString;
        nfe_001NFE_PIPI.Value   := SQLFKConsulta.Current.ByName('PIPI').AsFloat;
        nfe_001NFE_CEST.Value   := SQLFKConsulta.Current.ByName('CEST').AsString;
        nfe_001NFE_EXTIPI.Value := SQLFKConsulta.Current.ByName('EXTIPI').AsString;

        if LeftStr(nfe_001NFE_CFOP.AsString,1) = '7' then
        nfe_001NFE_UTRIB.Value := SQLFKConsulta.Current.ByName('UTRIB').AsString;
        nfe_001NFE_ORIG.Value  := SQLFKConsulta.Current.ByName('ORIG').AsString;

        nfe_001NFE_PESO.Value := SQLFKConsulta.Current.ByName('PESO').AsFloat;
        nfe_001NFE_PSCN.Value := SQLFKConsulta.Current.ByName('PSCN').AsFloat;
        nfe_001NFE_METR.Value := SQLFKConsulta.Current.ByName('METRO').AsFloat;
        nfe_001NFE_REND.Value := SQLFKConsulta.Current.ByName('REND').AsFloat;
        nfe_001NFE_QTUN.Value := SQLFKConsulta.Current.ByName('UQTDE').AsFloat;

        nfe_001NFE_QCOM.Value := SQLFKConsulta.Current.ByName('ROM_QTDE').Value;
        nfe_001NFE_RCOM.Value := SQLFKConsulta.Current.ByName('ROM_QTRL').AsInteger;

        nfe_001NFE_PREC.Value   := SQLFKConsulta.Current.ByName('VUNCOM').Value;
        nfe_001NFE_VDESC.Value  := SQLFKConsulta.Current.ByName('VDSC').Value;
        nfe_001NFE_VUNCOM.Value := SQLFKConsulta.Current.ByName('VUNCOM').Value;

        nfe_001NFE_VPROD.Value := SQLFKConsulta.Current.ByName('TCDE').Value;

        nfe_001NFE_STAV.Value      := SQLFKConsulta.Current.ByName('REST').AsString;
        nfe_001NFE_COMP.Value      := SQLFKConsulta.Current.ByName('CMP_PAD').AsString;
        nfe_001NFE_INFADPROD.Value := SQLFKConsulta.Current.ByName('CMP_PAD').AsString;
        nfe_001NFE_NFCI.Value      := SQLFKConsulta.Current.ByName('ROM_NFCI').AsString;

        if not oEmpty(nfe_001NFE_INFADPROD.AsString) then
           nfe_001NFE_INFADPROD.Value := 'COMPOSICAO: '+nfe_001NFE_INFADPROD.AsString;

        if ((SQLFKConsulta.Current.ByName('UQVOL').AsFloat > 0) and (not oEmpty(SQLFKConsulta.Current.ByName('UESP').AsString))) then
             nfe_001NFE_INFADPROD.Value := nfe_001NFE_INFADPROD.AsString+#13+'CONTEUDO: '+SQLFKConsulta.Current.ByName('UQVOL').AsString+' '+SQLFKConsulta.Current.ByName('UESP').AsString
        else
             if Pos(LeftStr(nfe_001NFE_UCOM.AsString,1),'KMY') = 0 then
                if  nfe_001NFE_METR.AsFloat > 0 then
                    nfe_001NFE_INFADPROD.Value := nfe_001NFE_INFADPROD.AsString+#13+'CONTEUDO: '+FormatFloat('0.00M',nfe_001NFE_METR.AsFloat);

        nfe_001NFE_INFADPROD.Value := Trim(nfe_001NFE_INFADPROD.AsString);
        nfe_001NFE_REPR.Value      := 'R';//FBird.FBCAD_PROPRO_REPR.AsString;
        nfe_001.Post;
        
        SQLFKConsulta.Next;
      end;

      RECRomaneio.IDFK     :=  PedidosIDPK.AsInteger;
      RECRomaneio.FIN_CSPD := (PedidosCSCD.AsInteger = 1);

      RECRomaneio.CDRO := CECDRO.Value;
      RECRomaneio.IDCV := PedidosIDCV.AsInteger;
      RECRomaneio.DECV := PedidosDECV.AsString;
      RECRomaneio.IDCR := PedidosIDCR.AsInteger;
      RECRomaneio.DECR := PedidosDECR.AsString;

      RECRomaneio.STPD :=  PedidosSTPD.AsString;
      RECRomaneio.FAPD := (PedidosFAPD.AsInteger = 1);
      RECRomaneio.TPCO :=  PedidosTPCO.AsInteger;
      RECRomaneio.STCO :=  PedidosSTCO.AsString;
      RECRomaneio.PK_DEST :=  PedidosDEST.AsString;

      RECRomaneio.CDPG := PedidosCDPG.AsString;
      RECRomaneio.DEPG := PedidosDEPG.AsString;

      cbdpag.Text    := RECRomaneio.DEPG;
      cbdupl.Text    := IFThen((RECRomaneio.FAPD) and (Pos(LeftStr(RECRomaneio.STCO,3),'BANBOLDUP') > 0),'SIM','NÃO');
      cbdupl.Enabled := (RECRomaneio.FAPD) and (Pos(LeftStr(RECRomaneio.STCO,3),'BANBOLDUP') > 0);

      LAIDCD.Enabled := False;
      CEIDCD.Enabled := False;
      EDDECD.Enabled := False;

      CALCULA_FRETE;
      CALCULA_NF;

      Show;
    end;
  finally
    oUnLockWindowUpdate;
    Application.ProcessMessages;
  end;

  if Showing then
  if (frmven_nfe.CER_CDNF.Value > 0) and (frmven_nfe.PCEdicao.ActivePage = frmven_nfe.TSNFTriangular) then
  begin
    PostMessage(TWinControl(frmven_nfe.EDR_DECD).Handle, WM_SETFOCUS, 0, 0);
    TWinControl(frmven_nfe.EDR_DECD).SetFocus;
  end else
  begin
    PostMessage(TWinControl(frmven_nfe.V1_CEQVOL).Handle, WM_SETFOCUS, 0, 0);
    TWinControl(frmven_nfe.V1_CEQVOL).SetFocus;
  end;
end;

procedure Tfrmven_rom.EdicaoBeforeScroll(DataSet: TDataSet);
begin
  DBGConsultaROM_TSDE.Visible := False;
end;

procedure Tfrmven_rom.EdicaoAfterScroll(DataSet: TDataSet);
begin
  if EdicaoROM_TSDE.AsCurrency <> EdicaoROM_TOTA.AsCurrency then
     DBGConsultaROM_TSDE.Visible := True;
end;

procedure Tfrmven_rom.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
     if (AColumn = DBGConsultaROM_VIPI) and (ANode.Values[DBGConsultaROM_VIPI.Index] > 0) then
         AFont.Style := [fsBold];
end;

end.
