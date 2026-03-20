unit pPesquisaPRO;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefault, dxExEdtr, cxGraphics, IBQuery, dxBar, ImgList,
  ActnList, dxDockControl, dxBarExtItems, IBEvents, DB, IBCustomDataSet,
  IBStoredProc, IBSQL, IBDatabase, cxControls, dxStatusBar, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDockPanel, ExtCtrls, dxDBTLCl, dxGrClms, math, StrUtils,
  DBCtrls, dxPageControl, dxEditor, dxEdLib, dxDBELib, StdCtrls, dxsbar;

type
  TFrmPesquisaPRO = class(TFrmDefault)
    ConsultaC_ID: TIntegerField;
    DBGConsultaC_ID: TdxDBGridColumn;
    Pedidos: TIBQuery;
    DTSPedidos: TDataSource;
    ConsultaID: TIntegerField;
    ConsultaIDEP: TSmallintField;
    ConsultaDEEP: TIBStringField;
    ConsultaCDST: TSmallintField;
    ConsultaREST: TIBStringField;
    ConsultaDEST: TIBStringField;
    ConsultaARTIGO: TIBStringField;
    ConsultaNCM: TIBStringField;
    ConsultaPIPI: TIBBCDField;
    ConsultaEXTIPI: TIBStringField;
    ConsultaCEST: TIBStringField;
    ConsultaSKU: TIBStringField;
    ConsultaCEAN: TIBStringField;
    ConsultaDECP: TIBStringField;
    ConsultaDGCP: TIBStringField;
    ConsultaCOMPBASE: TIBStringField;
    ConsultaUCOM: TIBStringField;
    ConsultaUTRIB: TIBStringField;
    ConsultaUCON: TIBStringField;
    ConsultaUQTRL: TSmallintField;
    ConsultaUPSBR: TIBBCDField;
    ConsultaUPSLQ: TIBBCDField;
    ConsultaVPRC_PAD_INI: TFloatField;
    ConsultaVPRC_PAD_FIM: TFloatField;
    ConsultaVPRC_PAD: TFloatField;
    ConsultaEST_QTDE: TIBBCDField;
    ConsultaEST_QTRL: TIntegerField;
    ConsultaIMG_PAD: TBlobField;
    PedidosDEPD: TIBStringField;
    PedidosDTPD: TDateTimeField;
    PedidosSTPD: TIBStringField;
    PedidosQTDE: TIBBCDField;
    PedidosQTRL: TIntegerField;
    PedidosVPRC_COM: TFloatField;
    PedidosTCDE: TIBBCDField;
    PedidosIDCP: TIntegerField;
    DBGConsultaDEEP: TdxDBGridMaskColumn;
    DBGConsultaREST: TdxDBGridMaskColumn;
    DBGConsultaDEST: TdxDBGridMaskColumn;
    DBGConsultaNCM: TdxDBGridMaskColumn;
    DBGConsultaSKU: TdxDBGridMaskColumn;
    DBGConsultaDECP: TdxDBGridMaskColumn;
    DBGConsultaDGCP: TdxDBGridMaskColumn;
    DBGConsultaUCOM: TdxDBGridMaskColumn;
    DBGConsultaVPRC_PAD: TdxDBGridMaskColumn;
    DBGConsultaEST_QTRL: TdxDBGridMaskColumn;
    DBGConsultaPIPI: TdxDBGridMaskColumn;
    DBGConsultaEST_QTDE: TdxDBGridMaskColumn;
    PNLINFADCAD: TPanel;
    Bevel2: TBevel;
    DBINFADCAD: TdxDBMemo;
    ConsultaINFADCAD: TIBStringField;
    DSPedidos: TdxDockSite;
    DPPedidos: TdxDockPanel;
    DBGPedidos: TdxDBGrid;
    DBGPedidosDEPD: TdxDBGridMaskColumn;
    DBGPedidosDTPD: TdxDBGridDateColumn;
    DBGPedidosSTPD: TdxDBGridMaskColumn;
    DBGPedidosQTDE: TdxDBGridMaskColumn;
    DBGPedidosQTRL: TdxDBGridMaskColumn;
    DBGPedidosVPRC_COM: TdxDBGridMaskColumn;
    DSAmostras: TdxDockSite;
    dxLayoutDockSite2: TdxLayoutDockSite;
    DPAmostras: TdxDockPanel;
    PNLAmostras: TPanel;
    PCAmostras: TdxPageControl;
    TSIMG_PAD: TdxTabSheet;
    PNLIMG_PAD: TPanel;
    IMG_PAD: TImage;
    TSILA: TdxTabSheet;
    PNLILA_BMP: TPanel;
    BILA_BMP1: TBevel;
    BILA_BMP2: TBevel;
    BILA_BMP3: TBevel;
    BILA_BMP4: TBevel;
    BILA_BMP5: TBevel;
    BILA_BMP6: TBevel;
    BILA_BMP7: TBevel;
    BILA_BMP8: TBevel;
    DBILA_BMP1: TDBImage;
    DBILA_BMP2: TDBImage;
    DBILA_BMP3: TDBImage;
    DBILA_BMP4: TDBImage;
    DBILA_BMP5: TDBImage;
    DBILA_BMP6: TDBImage;
    DBILA_BMP7: TDBImage;
    DBILA_BMP8: TDBImage;
    ConsultaIMG_ID: TLargeintField;
    ConsultaILA_BMP1: TBlobField;
    ConsultaILA_INS1: TIBStringField;
    ConsultaILA_BMP2: TBlobField;
    ConsultaILA_INS2: TIBStringField;
    ConsultaILA_BMP3: TBlobField;
    ConsultaILA_INS3: TIBStringField;
    ConsultaILA_BMP4: TBlobField;
    ConsultaILA_INS4: TIBStringField;
    ConsultaILA_BMP5: TBlobField;
    ConsultaILA_INS5: TIBStringField;
    ConsultaILA_BMP6: TBlobField;
    ConsultaILA_INS6: TIBStringField;
    ConsultaILA_BMP7: TBlobField;
    ConsultaILA_INS7: TIBStringField;
    ConsultaILA_BMP8: TBlobField;
    ConsultaILA_INS8: TIBStringField;
    PedidosPCOM: TIBBCDField;
    DBGPedidosPCOM: TdxDBGridMaskColumn;
    PNLTAB_PRC: TPanel;
    LALPRC_TAB_ABAIXO: TLabel;
    LALPRC_TAB_ACIMA_MIN: TLabel;
    LALPRC_TAB_ACIMA_MAX: TLabel;
    LAPRC_TAB_ACIMA_MIN: TLabel;
    LAPRC_TAB_ACIMA_MAX: TLabel;
    PNLPRC_TAB_ABAIXO: TPanel;
    PNLPRC_TAB_ACIMA_MIN: TPanel;
    PNLPRC_TAB_ACIMA_MAX: TPanel;
    PedidosPDSC: TIBBCDField;
    PedidosVPRC_PAD_INI: TFloatField;
    PedidosVPRC_PAD_FIM: TFloatField;
    DBGPedidosVPRC_PAD_INI: TdxDBGridMaskColumn;
    DBGPedidosVPRC_PAD_FIM: TdxDBGridMaskColumn;
    DBGPedidosPDSC: TdxDBGridMaskColumn;
    ConsultaCOMPFORRO: TIBStringField;
    PedidosPIPI: TIBBCDField;
    DBGPedidosPIPI: TdxDBGridMaskColumn;
    PedidosUCOM: TIBStringField;
    DBGPedidosUCOM: TdxDBGridMaskColumn;
    ConsultaUQTMD: TIBBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure ConsultaAfterScroll(DataSet: TDataSet);
    procedure ConsultaCalcFields(DataSet: TDataSet);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGConsultaDblClick(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DTSConsultaDataChange(Sender: TObject; Field: TField);
    procedure DTSPedidosDataChange(Sender: TObject; Field: TField);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure DBGPedidosCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ConsultaBeforeScroll(DataSet: TDataSet);
    procedure PedidosAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    RECProdutos: TRECProdutos;
    procedure _WM_AFTER_ACTIVATE  (var Msg: TMessage); message WM_AFTER_ACTIVATE;
  end;

var
  FrmPesquisaPRO: TFrmPesquisaPRO;

implementation

{$R *.dfm}

procedure TFrmPesquisaPRO._WM_AFTER_ACTIVATE(var Msg: TMessage);
var
  TAB_PK,TAB_FK: String;
begin
  inherited;
  TAB_PK := IFThen(Pos(RECDefault.DEEV,'COMPRAS')     > 0,'PED_COM_CAB',
            IFThen(Pos(RECDefault.DEEV,'PROGRAMADOS') > 0,'PED_PRG_CAB',
            IFThen(Pos(RECDefault.DEEV,'NFe')         > 0,'NFE_CAB','PED_VEN_CAB')));

  TAB_FK := IFThen(Pos(RECDefault.DEEV,'COMPRAS')     > 0,'PED_COM_ITE',
            IFThen(Pos(RECDefault.DEEV,'PROGRAMADOS') > 0,'PED_PRG_ITE',
            IFThen(Pos(RECDefault.DEEV,'NFe')         > 0,'NFE_ITE','PED_VEN_ITE')));

  { Cliente }
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.FANTASIA FROM CAD_CLI AS PK');
    SQL.Add('WHERE  PK.ID = ''' + RECDefault.IDEV + '''');
    ExecQuery;

    if not Eof then
       DPPedidos.Caption := 'HISTÓRICO DE PREÇOS '+Current.Vars[0].AsString;
  end;

  with Pedidos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PK.DEPV AS DEPD,PK.DTCA AS DTPD,PK.STPD,');
    SQL.Add('         FK.IDCP,FK.QTDE,FK.QTRL,FK.UCOM,');
    SQL.Add('         FK.VPRC_PAD_INI,FK.VPRC_PAD_FIM,FK.PDSC,FK.VPRC_COM,FK.TCDE,FK.PCOM,FK.PIPI');
    SQL.Add('FROM   '+oREPZero(TAB_PK,'_',RECParametros.Id,3)+' AS PK');
    SQL.Add('JOIN   '+oREPZero(TAB_FK,'_',RECParametros.Id,3)+' AS FK ON (FK.IDPK = PK.ID)');
    SQL.Add('WHERE    PK.IDEP = ''' + RECParametros.Id + '''');
    SQL.Add('AND      PK.IDCL = ''' + RECDefault.IDEV  + '''');
    SQL.Add('AND      FK.IDCP = :ID');
    SQL.Add('ORDER BY 2 DESC');
    Prepare;
  end;
  Consulta.Open;
end;

procedure TFrmPesquisaPRO.FormCreate(Sender: TObject);
begin
  oIRECProdutos(RECProdutos);
  
  RECDefault.Auto := True;
  RECDefault.Id   := -3; { Grid Focus }
  inherited;
end;

procedure TFrmPesquisaPRO.FormActivate(Sender: TObject);
begin
  inherited;
  DBGConsulta.FocusedColumn := DBGConsultaDGCP.Index;
end;

procedure TFrmPesquisaPRO.FormDestroy(Sender: TObject);
begin
  inherited;
  oFRECProdutos(RECProdutos);
end;

procedure TFrmPesquisaPRO.ACTPesquisaExecute(Sender: TObject);
begin
  inherited;
  if (BEPSQ_CAD.Text <> EmptyStr) or ((BDPSQ_PER_INI.Date > 0) and (BDPSQ_PER_FIM.Date > 0)) then
  try
    with Consulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID    ,PK.IDEP ,PK.DEEP,');
      SQL.Add('       PK.CDST  ,PK.REST ,PK.DEST,');
      SQL.Add('       PK.ARTIGO,PK.NCM  ,PK.PIPI,PK.EXTIPI,PK.CEST,');
      SQL.Add('       PK.SKU   ,PK.CEAN ,');
      SQL.Add('       PK.DECP  ,PK.DGCP ,');
      SQL.Add('       PK.UCOM  ,PK.UTRIB,PK.UCON,PK.UQTMD,PK.UQTRL,PK.UPSBR,PK.UPSLQ,');
      SQL.Add('       PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,');

      { Tipo de Tabela de Preço }
      SQL.Add(IFThen(Pos('ATACAREJO'    ,RECDefault.DEEV) > 0,'PK.VPRC_ATV',
              IFThen(Pos('COMPRAS'      ,RECDefault.DEEV) > 0,'PK.VPRC_COM_PAD',
              IFThen(Pos('LOJA VIRTUAL' ,RECDefault.DEEV) > 0,'PK.VPRC_LJV',
              IFThen(Pos('REPRESENTANTE',RECDefault.DEEV) > 0,'PK.VPRC_REP',
              IFThen(Pos('VAREJO'       ,RECDefault.DEEV) > 0,'PK.VPRC_VAR',
                                                              'PK.VPRC_PAD')))))+' AS VPRC_PAD,');
      { Tipo de Estoque }
      SQL.Add('COALESCE(E.' + IFThen(Pos('VENDAS',RECDefault.DEEV) > 0,'EPE_QTDE','EEP_QTDE') + ',0) AS EST_QTDE,');
      SQL.Add('COALESCE(E.' + IFThen(Pos('VENDAS',RECDefault.DEEV) > 0,'EPE_QTRL','EEP_QTRL') + ',0) AS EST_QTRL,');

      { Imagem do Produto }
      SQL.Add('PK.IMG_ID,PK.IMG_PAD ,');

      { Instruções de Lavagem }
      SQL.Add('PK.ILA_BMP1,PK.ILA_INS1,PK.ILA_BMP2,PK.ILA_INS2,PK.ILA_BMP3,PK.ILA_INS3,PK.ILA_BMP4,PK.ILA_INS4,');
      SQL.Add('PK.ILA_BMP5,PK.ILA_INS5,PK.ILA_BMP6,PK.ILA_INS6,PK.ILA_BMP7,PK.ILA_INS7,PK.ILA_BMP8,PK.ILA_INS8,');

      SQL.Add('PK.COMPBASE,PK.COMPFORRO,PK.INFADCAD');

      SQL.Add('FROM VW_CAD_PRO AS PK');
      SQL.Add('JOIN SP_CAD_PRO_EST_PSQ(:IDEP,PK.IDEP,PK.IDEK) AS E ON (1 = 1)');

      { Pesquisa Texto }
      if BEPSQ_CAD.Text <> EmptyStr then
         SQL.Add('WHERE (PK.ARTIGO CONTAINING '''+BEPSQ_CAD.Text+''' OR PK.SKU CONTAINING '''+BEPSQ_CAD.Text+''' OR PK.DECP CONTAINING '''+BEPSQ_CAD.Text+''' OR PK.NCM  CONTAINING '''+BEPSQ_CAD.Text+''')');

      { Pesquisa Período }
      if (BDPSQ_PER_INI.Date > 0) and (BDPSQ_PER_FIM.Date > 0) then
      begin
        SQL.Add(IFThen(BEPSQ_CAD.Text = EmptyStr,'WHERE','AND'));
        if BBPSQ_PER.Caption = 'Vendas' then
           SQL.Add('CAST(PK.DTUTPV AS DATE) BETWEEN '''+formatDateTime('mm/dd/yy',BDPSQ_PER_INI.Date)+''' AND '''+formatDateTime('mm/dd/yy',BDPSQ_PER_FIM.Date)+'''') else
           SQL.Add('CAST(PK.DTCA   AS DATE) BETWEEN '''+formatDateTime('mm/dd/yy',BDPSQ_PER_INI.Date)+''' AND '''+formatDateTime('mm/dd/yy',BDPSQ_PER_FIM.Date)+'''');
      end;

      { Ordenação }
      SQL.Add('ORDER BY PK.DGCP');

      { Parâmetros }
      ParamByName('IDEP').Value := RECParametros.Id;
      Open;
    end;

    if (Consulta.Eof) and (BEPSQ_CAD.Text <> EmptyStr) then
        oAviso(Self.Handle,BBPSQ_CAD.Caption+' não Encontrado !');
  finally
    BEPSQ_CAD.Text := EmptyStr;
    DPConsulta.Caption      := 'Produto(s) Encontrado(s)';

    if Showing then
    begin
      ActiveControl := Nil;
      PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(DBGConsulta).SetFocus;
    end;
  end;
end;

procedure TFrmPesquisaPRO.ConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  PCAmostras.ActivePage := TSIMG_PAD;
  DBGConsulta.FocusedAbsoluteIndex := IFThen(RECUsuarios.PED_GRID_FOCUSED = 1,DBGConsultaNCM.Index,DBGConsultaDGCP.Index);

  if Pedidos.State = dsInactive then
     Pedidos.Open;
end;

procedure TFrmPesquisaPRO.ConsultaBeforeScroll(DataSet: TDataSet);
begin
  DBGConsultaDGCP.Visible := False;

  DBGPedidosPDSC.Visible := False;
  DBGPedidosPCOM.Visible := False;
  DBGPedidosPIPI.Visible := False;
end;

procedure TFrmPesquisaPRO.ConsultaAfterScroll(DataSet: TDataSet);
begin
  if ConsultaDGCP.AsString <> EmptyStr then DBGConsultaDGCP.Visible := True;
end;

procedure TFrmPesquisaPRO.ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  ConsultaC_ID.Value := Consulta.RecNo;
end;

procedure TFrmPesquisaPRO.DTSConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  DBGConsultaDEST.Visible := (ConsultaREST.AsString <> 'A');

  { Imagem }
  if IMG_PAD.Tag <> ConsultaIMG_ID.AsInteger then
  begin
    IMG_PAD.Tag := ConsultaIMG_ID.AsInteger;
    oLoadJPG(ConsultaIMG_PAD,IMG_PAD.Picture);
  end;

  { Instruções de Lavagem }
  DBILA_BMP1.Hint := ConsultaILA_INS1.AsString;
  BILA_BMP1.Hint  := DBILA_BMP1.Hint;

  DBILA_BMP2.Hint := ConsultaILA_INS2.AsString;
  BILA_BMP2.Hint  := DBILA_BMP2.Hint;

  DBILA_BMP3.Hint := ConsultaILA_INS3.AsString;
  BILA_BMP3.Hint  := DBILA_BMP3.Hint;

  DBILA_BMP4.Hint := ConsultaILA_INS4.AsString;
  BILA_BMP4.Hint  := DBILA_BMP4.Hint;

  DBILA_BMP5.Hint := ConsultaILA_INS5.AsString;
  BILA_BMP5.Hint  := DBILA_BMP5.Hint;

  DBILA_BMP6.Hint := ConsultaILA_INS6.AsString;
  BILA_BMP6.Hint  := DBILA_BMP6.Hint;

  DBILA_BMP7.Hint := ConsultaILA_INS7.AsString;
  BILA_BMP7.Hint  := DBILA_BMP7.Hint;

  DBILA_BMP8.Hint := ConsultaILA_INS8.AsString;
  BILA_BMP8.Hint  := DBILA_BMP8.Hint;

  { Ajusta Colunas }
  DBGConsulta.ApplyBestFit(DBGConsultaSKU);

  { Informações Adicionais }
  PNLINFADCAD.Height := IFThen(DBINFADCAD.Lines.Count = 0,00,
                        IFThen(DBINFADCAD.Lines.Count = 1,30,
                        IFThen(DBINFADCAD.Lines.Count = 2,35,
                        IFThen(DBINFADCAD.Lines.Count = 3,50,
                        IFThen(DBINFADCAD.Lines.Count = 4,60,75)))));
end;

procedure TFrmPesquisaPRO.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if not ASelected then
  begin
    { Linha Zebrada }
    if ANode.Values[DBGConsultaC_ID.Index] mod 2 <> 0 then
       AColor := $00E8E6E6;

    { Status }   
    if ANode.Values[DBGConsultaREST.Index] = 'P' then
    begin
      AColor      := clInfoBk;
      AFont.Color := clBlack;
    end else
    if ANode.Values[DBGConsultaREST.Index] = 'I' then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end else
    if ANode.Values[DBGConsultaREST.Index] = 'S' then
    begin
      AColor      := clRed;
      AFont.Color := clWhite;
    end else
    if (AColumn = DBGConsultaDEST) and (ANode.Values[DBGConsultaREST.Index] = 'A') then
    begin
      AColor      := $00C4FFC4;
      AFont.Color := clBlack;
    end;

    { NCM }
    if (AColumn = DBGConsultaNCM) or (AColumn = DBGConsultaPIPI) then
    begin
      AColor      := $00CCCACA;
      AFont.Color := clBlack;
    end;

    { IPI }
    if (AColumn = DBGConsultaPIPI) and (ANode.Values[DBGConsultaPIPI.Index] > 0) then
        AFont.Style := [fsBold];

    { Estoque }    
    if (AColumn = DBGConsultaEST_QTDE) and (ANode.Values[DBGConsultaEST_QTDE.Index] > 0) then
        AFont.Style := [fsBold];
  end;
end;

procedure TFrmPesquisaPRO.DBGConsultaDblClick(Sender: TObject);
begin
  inherited;
  if ConsultaREST.AsString <> 'A' then
     oException(DBGConsulta,'Consulta '+ConsultaDEST.AsString+' !');

  RECDefault.Selected := (ConsultaID.AsInteger > 0);
  Close;
end;

procedure TFrmPesquisaPRO.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_escape then
     Close else
  if key = vk_return then
     DBGConsultaDblClick(Self);
end;

procedure TFrmPesquisaPRO.DTSPedidosDataChange(Sender: TObject;
  Field: TField);
begin
  { Tabela de Preços }
  LAPRC_TAB_ACIMA_MIN.Caption := FormatFloat('R$ #,0.00',PedidosVPRC_PAD_INI.AsFloat);
  LAPRC_TAB_ACIMA_MAX.Caption := FormatFloat('R$ #,0.00',PedidosVPRC_PAD_FIM.AsFloat);
  if (PedidosVPRC_COM.AsFloat <> PedidosVPRC_PAD_INI.AsFloat) or (PedidosVPRC_COM.AsFloat <> PedidosVPRC_PAD_FIM.AsFloat) or (PedidosVPRC_PAD_INI.AsFloat <> PedidosVPRC_PAD_FIM.AsFloat) then
      PNLTAB_PRC.Height := 22 else
      PNLTAB_PRC.Height := 0;

  { Ajuste de Colunas }
  DBGPedidos.ApplyBestFit(DBGPedidosDEPD);
  DBGPedidos.ApplyBestFit(DBGPedidosSTPD);
end;

procedure TFrmPesquisaPRO.DBGPedidosCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if AColumn = DBGPedidosSTPD then
       if ANode.Values[DBGPedidosSTPD.Index] = 'CANCELADO' then
       begin
         AColor      := $000024B3;
         AFont.Color := clWhite;
       end else
       if Pos(LeftStr(ANode.Values[DBGPedidosSTPD.Index],3),'ABADEV') > 0 then
       begin
         AColor      := clInfoBk;
         AFont.Color := clBlack;
       end else

    if (AColumn = DBGPedidosPDSC) and (ANode.Values[DBGPedidosPDSC.Index] > 0) then
        AFont.Style := [fsBold];
  end;

  if ((AColumn = DBGPedidosVPRC_COM) or (AColumn = DBGPedidosPCOM)) and (ANode.Values[DBGPedidosVPRC_COM.Index] > 0) then
  begin
    if ANode.Values[DBGPedidosVPRC_COM.Index] < ANode.Values[DBGPedidosVPRC_PAD_INI.Index] then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end else
    if ANode.Values[DBGPedidosVPRC_COM.Index] >= ANode.Values[DBGPedidosVPRC_PAD_FIM.Index] then
    begin
      AColor      := $00E1AD40;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end else
    if ANode.Values[DBGPedidosVPRC_COM.Index] > ANode.Values[DBGPedidosVPRC_PAD_INI.Index] then
    begin
      AColor      := $007DFF7D;
      AFont.Color := clBlack;
      AFont.Style := [fsBold];
    end;
  end;
end;

procedure TFrmPesquisaPRO.PedidosAfterScroll(DataSet: TDataSet);
begin
  if PedidosPDSC.AsFloat > 0 then
     DBGPedidosPDSC.Visible := True;

  if PedidosPCOM.AsFloat > 0 then
     DBGPedidosPCOM.Visible := True;

  if (PedidosPIPI.AsFloat > 0) and (PedidosPIPI.AsFloat <> ConsultaPIPI.AsFloat) then
      DBGPedidosPIPI.Visible := True;
end;

end.
