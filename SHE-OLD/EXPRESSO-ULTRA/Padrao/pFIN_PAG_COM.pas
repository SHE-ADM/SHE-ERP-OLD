unit pFIN_PAG_COM;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math,
  Buttons, rxSpeedbar, StrUtils, IBSQL, cxGraphics, cxControls, dxStatusBar;

type
  TFrmFIN_PAG_COM = class(TForm)
    PNLPrincipal: TPanel;
    PNLPedido: TPanel;
    linha2: TShape;
    Shape3: TShape;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    LADATA1: TLabel;
    DXDATA1: TdxDateEdit;
    LADATA2: TLabel;
    DXDATA2: TdxDateEdit;
    BTNValida: TBitBtn;
    Edicao: TIBDataSet;
    DTSEdicao: TDataSource;
    Pedidos: TIBQuery;
    DTSPedidos: TDataSource;
    PCPrincipal: TdxPageControl;
    TSRelatorio: TdxTabSheet;
    DBGEdicao: TdxDBGrid;
    TSSemBaixa: TdxTabSheet;
    LADATA: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label3: TLabel;
    edobse: TdxMemo;
    DBGSemBaixa: TdxDBGrid;
    SQLTEdicao: TIBSQL;
    PedidosIDPK: TLargeintField;
    PedidosDEPK: TIBStringField;
    PedidosDTPK: TDateField;
    PedidosTCDE: TIBBCDField;
    PedidosCDNF: TLargeintField;
    PedidosDTNF: TDateTimeField;
    PedidosVNF: TIBBCDField;
    PedidosDECV: TIBStringField;
    PedidosDEST: TIBStringField;
    DBGSemBaixaDEPK: TdxDBGridMaskColumn;
    DBGSemBaixaDTPK: TdxDBGridDateColumn;
    DBGSemBaixaTCDE: TdxDBGridCurrencyColumn;
    DBGSemBaixaCDNF: TdxDBGridColumn;
    DBGSemBaixaDTNF: TdxDBGridDateColumn;
    DBGSemBaixaDECV: TdxDBGridMaskColumn;
    DBGSemBaixaDEST: TdxDBGridMaskColumn;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    IEIDCV: TdxImageEdit;
    IEIDCR: TdxImageEdit;
    IEDATA: TdxImageEdit;
    TTEdicao: TIBTransaction;
    SBRodape: TdxStatusBar;
    EdicaoID: TLargeintField;
    EdicaoIDPK: TLargeintField;
    EdicaoIDEP: TSmallintField;
    EdicaoDEEP: TIBStringField;
    EdicaoEP_CNPJ: TIBStringField;
    EdicaoDOCUMENTO: TIBStringField;
    EdicaoDTFA: TDateField;
    EdicaoSTPD: TIBStringField;
    EdicaoTPCO: TSmallintField;
    EdicaoRECO: TIBStringField;
    EdicaoIDCD: TIntegerField;
    EdicaoDECD: TIBStringField;
    EdicaoIDCV: TIntegerField;
    EdicaoDECV: TIBStringField;
    EdicaoCV_PCOM: TIBBCDField;
    EdicaoCV_VCOM_FAT: TIBBCDField;
    EdicaoCV_VCOM_PAG: TIBBCDField;
    EdicaoIDCR: TIntegerField;
    EdicaoDECR: TIBStringField;
    EdicaoCR_PCOM: TIBBCDField;
    EdicaoCR_VCOM_FAT: TIBBCDField;
    EdicaoCR_VCOM_PAG: TIBBCDField;
    EdicaoTITULO: TIBStringField;
    EdicaoDTVC: TDateField;
    EdicaoVDUP: TIBBCDField;
    EdicaoDTPG: TDateField;
    EdicaoVPAG: TIBBCDField;
    EdicaoVPEN: TIBBCDField;
    EdicaoDEST: TIBStringField;
    EdicaoCDBX: TLargeintField;
    EdicaoDTBX: TDateField;
    EdicaoPCOM: TIBBCDField;
    EdicaoVCOM: TIBBCDField;
    DBGEdicaoDOCUMENTO: TdxDBGridMaskColumn;
    DBGEdicaoDTFA: TdxDBGridDateColumn;
    DBGEdicaoSTPD: TdxDBGridMaskColumn;
    DBGEdicaoRECO: TdxDBGridMaskColumn;
    DBGEdicaoDECD: TdxDBGridMaskColumn;
    DBGEdicaoDECV: TdxDBGridMaskColumn;
    DBGEdicaoDECR: TdxDBGridMaskColumn;
    DBGEdicaoTITULO: TdxDBGridMaskColumn;
    DBGEdicaoDTVC: TdxDBGridDateColumn;
    DBGEdicaoDTPG: TdxDBGridDateColumn;
    DBGEdicaoDEST: TdxDBGridMaskColumn;
    DBGEdicaoVDUP: TdxDBGridMaskColumn;
    DBGEdicaoVPAG: TdxDBGridMaskColumn;
    DBGEdicaoVPEN: TdxDBGridMaskColumn;
    DBGEdicaoPCOM: TdxDBGridMaskColumn;
    DBGEdicaoVCOM: TdxDBGridMaskColumn;
    ILMenu: TImageList;
    ILEdicao: TImageList;
    SBMenu: TSpeedBar;
    SSMenu: TSpeedbarSection;
    SBEdicao: TSpeedBar;
    SpeedbarSection17: TSpeedbarSection;
    SpeedbarSection18: TSpeedbarSection;
    SpeedbarSection19: TSpeedbarSection;
    SpeedbarSection20: TSpeedbarSection;
    SIENovo: TSpeedItem;
    SIEEdicao: TSpeedItem;
    SIEDelete: TSpeedItem;
    SIEPost: TSpeedItem;
    SIECancel: TSpeedItem;
    SMFIN_PAG_COM: TSpeedItem;
    SMSaida: TSpeedItem;
    LATipo: TLabel;
    IETipo: TdxImageEdit;
    EdicaoTIPO: TIBStringField;
    EdicaoUFCD: TIBStringField;
    EdicaoUFCV: TIBStringField;
    EdicaoUFCR: TIBStringField;
    EdicaoTCOM: TIBStringField;
    DBGEdicaoUFCD: TdxDBGridMaskColumn;
    DBGEdicaoUFCR: TdxDBGridMaskColumn;
    PNLRunning: TPanel;
    PNLDescRunning: TPanel;
    PBRunning: TProgressBar;
    SMFIN_PAG_COM_PED: TSpeedItem;
    EdicaoDEPK: TIBStringField;
    EdicaoDTPK: TDateField;
    EdicaoCDNF: TLargeintField;
    EdicaoDTNF: TDateField;
    EdicaoVMUL: TIBBCDField;
    EdicaoVJUR: TIBBCDField;
    EdicaoVDSC: TIBBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTNValidaClick(Sender: TObject);
    procedure EdicaoAfterDelete(DataSet: TDataSet);
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure SIEDeleteClick(Sender: TObject);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DTSEdicaoStateChange(Sender: TObject);
    procedure SIEEdicaoClick(Sender: TObject);
    procedure SIEPostClick(Sender: TObject);
    procedure SIECancelClick(Sender: TObject);
    procedure DXDATA1Change(Sender: TObject);
    procedure IEIDCVChange(Sender: TObject);
    procedure IEIDCRChange(Sender: TObject);
    procedure SMFIN_PAG_COMClick(Sender: TObject);
    procedure SMSaidaClick(Sender: TObject);
    procedure DBGEdicaoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure SMFIN_PAG_COM_PEDClick(Sender: TObject);
    procedure DTSEdicaoDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    RECDefault: TRECDefault;

    procedure _Empty;
    procedure _Financeiro(ATabela: String);
  public
    { Public declarations }
  end;

var
  FrmFIN_PAG_COM: TFrmFIN_PAG_COM;

implementation

uses bDados, prelatorio_geral, uPrincipal, qFIN_PAG_COM, QFIN_PAG_COM_PED;

{$R *.dfm}

procedure TFrmFIN_PAG_COM.FormCreate(Sender: TObject);
begin
  oIRECDefault(RECDefault);

  { Paginação }
  RECDefault.FrmPosition := poDesigned; { Abertura Controlada  }
  RECDefault.WorkArea    := False;      { Toda Tela do Windows }
  RECDefault.MainArea    := True;       { Toda Tela MainForm + Exclusão Botões }

  DXDATA1.Date := RECParametros.DTMES_INI;

  oOTransact(TConsulta);
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.LOGIN FROM TAB_USER AS PK WHERE PK.ID > 0 AND PK.CDST = 30 AND PK.GRUPO = ''VEN'' ORDER BY 2');
    ExecQuery;
    while not eof do
    begin
      IEIDCV.Values.Add(Current.Vars[0].AsString);
      IEIDCV.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.FANTASIA FROM CAD_REP AS PK WHERE PK.ID > 0 AND PK.CDST = 30 ORDER BY 2');
    ExecQuery;
    while not eof do
    begin
      IEIDCR.Values.Add(Current.Vars[0].AsString);
      IEIDCR.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;
  end;

  _Empty;
end;

procedure TFrmFIN_PAG_COM.FormDestroy(Sender: TObject);
begin
  try
    Screen.Cursor := crAppStart;
    OnDestroy     := Nil;

    { Transação Principal }
    try
      oFTransact(TConsulta);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                 'Error Code: '+E.Message+'.'      +#13+
                                  Caption+'.');
      end;
    end;

    { record e afins }
    try
      oFRECDefault(RECDefault);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                 'Error Code: '+E.Message+'.'        +#13+
                                  Caption+'.');
      end;
    end;
  finally
    try
      uRepaintMainForm(TForm(Self));
    finally
      Screen.Cursor  := crDefault;
      FrmFIN_PAG_COM := Nil;
    end;
  end;
end;

procedure TFrmFIN_PAG_COM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmFIN_PAG_COM.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmFIN_PAG_COM.FormPaint(Sender: TObject);
var
  S: TRect;
  H,
  T,
  B,
  L,
  R,
  FHeight,
  FWidth: Word;
begin
  if Showing then
  begin
    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,S);
    T := S.Top;
    B := S.Bottom;
    L := S.Left;
    R := S.Right;
    H := B;

    if RECDefault.FrmPosition = poDesigned then
    begin
      FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
      FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

      if (RECDefault.Top > 0) and (RECDefault.Left > 0) then
      begin
        Top    := RECDefault.Top;
        Left   := RECDefault.Left;
      end else
      begin
        if FHeight > 0 then Height := FHeight;
        if FWidth  > 0 then Width  := FWidth;

        if FormStyle = fsNormal then
        begin
          Top  := (T  + (H - Height)) div 2;
          Left := ((R + L) - Width )  div 2;
        end else
        begin
          Top  := ((B - T ) - Height) div 2;
          Left := ((R - L)  - Width ) div 2;
        end;
      end;
    end else
    if (RECDefault.WorkArea) and (FormStyle = fsNormal) then
    begin
      Top    := Screen.WorkAreaTop;
      Left   := Screen.WorkAreaLeft;
      Width  := Screen.WorkAreaWidth;
      Height := Screen.WorkAreaHeight;
    end else
    if (RECDefault.MainArea) and (FormStyle = fsNormal) then
    begin
      Top    := 0;
      Left   := 0;
      Width  := R - L - 5;
      Height := H - T - 5;
    end else
    if RECDefault.FrmPosition = poDefault then
    begin
      Top    := IFThen(FormStyle = fsNormal,T,0);
      Left   := IFThen(FormStyle = fsNormal,L,0);
      Width  := IFThen(RECDefault.FrmPosition = poDefault,R - L - 5,0);
      Height := IFThen(RECDefault.FrmPosition = poDefault,H - T - 5,0);
    end;

    { Ajusta o rodapé conforme o form }
    SBRodape.Panels[SBRodape.Panels.Count - 2].Width := SBRodape.Width - (SBRodape.Panels[SBRodape.Panels.Count - 1].Width + 125);

    if RECUsuarios.Id = 0 then
       Caption := 'DIMENSÕES: Monitor: Altura = '+IntToStr(Screen.Height)+' Largura: '+IntToStr(Screen.Width)+' / '+
                  'Tela: Altura = '              +IntToStr(Self.Height  )+' Largura: '+IntToStr(Self.Width  );
  end;
end;

procedure TFrmFIN_PAG_COM.FormResize(Sender: TObject);
begin
  if Self <> Nil then
  begin
    if (RECDefault.WorkArea) and (Screen.Width > 1024) then
        RECDefault.WorkArea := False;

    if (RECDefault.MainArea) and (Screen.Width > 1366) then
        RECDefault.MainArea := False;

    if (RECDefault.WorkArea) or (RECDefault.MainArea) then
    begin
      HelpKeyword := '3';
      RECDefault.FrmPosition := poDefault;
      uDisabledMainForm;
    end else
    if (HelpKeyword = '5') and (Screen.Width >= 1360) and (Screen.Width <= 1600) then {MainArea, mas sem desabilitar botões }
    begin
      FrmPrincipal.PNLPrincipal.Visible := False;
      RECDefault.FrmPosition := poDefault;
    end else
    if RECDefault.Id = -3 then
    begin
      RECDefault.FrmPosition := poDesigned;
      Self.HelpContext       := 90;
      Self.AlphaBlendValue   := 90;
    end;

    if Screen.Width > 1680 then
    begin
      DBGEdicaoDECD.Width := 200;
      DBGEdicaoDECR.Width := 130;
    end else
    if Screen.Width > 1400 then
    begin
      DBGEdicaoDECD.Width := 220;
      DBGEdicaoDECR.Width := 130;
    end;

    if Screen.Width <= 1366 then
       Self.Font.Size := 8;

    Paint;
  end;
end;

procedure TFrmFIN_PAG_COM.SMFIN_PAG_COMClick(Sender: TObject);
var
  RECRelatorios: TRECRelatorios;
begin
  RECRelatorios.PrintTAG  := 0;
  RECRelatorios.PrintName := 'Relatórios';
  RECRelatorios.Handle    :=  Self.Handle;

  RECRelatorios.Tipo        := IETipo.Text;
  RECRelatorios.IEDataText1 := DXData1.Date;
  RECRelatorios.IEDataText2 := DXData2.Date;

  if IEIDCV.Enabled then
  begin
    RECRelatorios.Titulo          := 'Pagamentos de Comissões de Vendas por Vendedor';
    RECRelatorios.ConsultaCaption := 'Vendedor';
    RECRelatorios.ConsultaText    := IEIDCV.Descriptions[IEIDCV.Values.IndexOf(IEIDCV.Text)];
    RECRelatorios.ConsultaField   := 'DECV';
  end else
  begin
    RECRelatorios.Titulo          := 'Pagamentos de Comissões de Vendas por Representante';
    RECRelatorios.ConsultaCaption := 'Representante';
    RECRelatorios.ConsultaText    := IEIDCR.Descriptions[IEIDCR.Values.IndexOf(IEIDCR.Text)];
    RECRelatorios.ConsultaField   := 'DECR';
  end;

  if IEDATA.Text = 'FIN_DCAD' then
  begin
    RECRelatorios.SubTitulo     := 'Títulos Faturados';
    RECRelatorios.IEDataCaption := 'Fatura';
    RECRelatorios.IEDataField   := IEData.Text;
  end else
  begin
    RECRelatorios.SubTitulo     := 'Títulos Pagos';
    RECRelatorios.IEDataCaption := 'Pagto';
    RECRelatorios.IEDataField   := IEData.Text;
  end;

  if Assigned(qrpFIN_PAG_COM) then qrpFIN_PAG_COM.BringToFront else
  begin
    qrpFIN_PAG_COM := TqrpFIN_PAG_COM.Create(Self,RECRelatorios);
    qrpFIN_PAG_COM.WinControlFormCreate(qrpFIN_PAG_COM);
  end;
end;

procedure TFrmFIN_PAG_COM.SMFIN_PAG_COM_PEDClick(Sender: TObject);
var
  RECRelatorios: TRECRelatorios;
begin
  RECRelatorios.PrintTAG  := 0;
  RECRelatorios.PrintName := 'Relatórios';
  RECRelatorios.Handle    :=  Self.Handle;

  RECRelatorios.Tipo        := IETipo.Text;
  RECRelatorios.IEDataText1 := DXData1.Date;
  RECRelatorios.IEDataText2 := DXData2.Date;

  if IEIDCV.Enabled then
  begin
    RECRelatorios.Titulo          := 'Pagamentos de Comissões de Vendas por Vendedor';
    RECRelatorios.ConsultaCaption := 'Vendedor';
    RECRelatorios.ConsultaText    := IEIDCV.Descriptions[IEIDCV.Values.IndexOf(IEIDCV.Text)];
    RECRelatorios.ConsultaField   := 'DECV';
  end else
  begin
    RECRelatorios.Titulo          := 'Pagamentos de Comissões de Vendas por Representante';
    RECRelatorios.ConsultaCaption := 'Representante';
    RECRelatorios.ConsultaText    := IEIDCR.Descriptions[IEIDCR.Values.IndexOf(IEIDCR.Text)];
    RECRelatorios.ConsultaField   := 'DECR';
  end;

  if IEDATA.Text = 'FIN_DCAD' then
  begin
    RECRelatorios.SubTitulo     := 'Títulos Faturados';
    RECRelatorios.IEDataCaption := 'Fatura';
    RECRelatorios.IEDataField   := IEData.Text;
  end else
  begin
    RECRelatorios.SubTitulo     := 'Títulos Pagos';
    RECRelatorios.IEDataCaption := 'Pagto';
    RECRelatorios.IEDataField   := IEData.Text;
  end;

  if Assigned(qrpFIN_PAG_COM_PED) then qrpFIN_PAG_COM_PED.BringToFront else
  begin
    qrpFIN_PAG_COM_PED := TqrpFIN_PAG_COM_PED.Create(Self,RECRelatorios);
    qrpFIN_PAG_COM_PED.WinControlFormCreate(qrpFIN_PAG_COM_PED);
  end;
end;

procedure TFrmFIN_PAG_COM.SMSaidaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmFIN_PAG_COM.BTNValidaClick(Sender: TObject);
begin
  PCPrincipal.ActivePageIndex := 0;

  if oYesNo(handle,'Validar Pesquisa ?') = mrNo then
  Abort;

  if ((IEIDCV.Enabled) and ((IEIDCV.Text = '0') or (IEIDCV.Text = EmptyStr))) then
  oException(IEIDCV,'Vendedor não informado ou inválido !');


  if ((IEIDCR.Enabled) and ((IEIDCR.Text = '0') or (IEIDCR.Text = EmptyStr))) then
  oException(IEIDCR,'Representante não informado ou inválido !');

  try
    Self.Enabled := False;
    try
      _Empty; { Limpa Tabela }
      _Financeiro('FIN_REC_BAN_BAI'); { Bancário }
      _Financeiro('FIN_REC_CAR_BAI'); { Carteira }

      oRTransact(TTEdicao);
    except
      on E: Exception do
      begin
        oRTransact(TTEdicao,ltRollback);
        oException(Nil,'Falha ao tentar gerar comissão !' + #13 + #13 +
                        E.Message+'.');
      end;
    end;
  finally
    Self.Enabled := True;
    Application.ProcessMessages;
  end;
end;

procedure TFrmFIN_PAG_COM.EdicaoAfterDelete(DataSet: TDataSet);
begin
  oRefresh(Edicao);
end;

procedure TFrmFIN_PAG_COM.EdicaoAfterPost(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  oRefresh(Edicao);
end;

procedure TFrmFIN_PAG_COM.EdicaoBeforePost(DataSet: TDataSet);
begin
  if (EdicaoSTPD.AsString = 'DEVOLUÇÃO') or (EdicaoSTPD.AsString = 'ABATIMENTO') then
  EdicaoDEST.Value := EdicaoSTPD.AsString;

  if (Pos('PROTESTADO',EdicaoDEST.AsString) > 0) or (EdicaoDEST.AsString = 'NÃO PAGO') or
     (EdicaoDEST.AsString = 'DEVOLUÇÃO') or (EdicaoDEST.AsString = 'ABATIMENTO') then
    if EdicaoVDUP.AsFloat > 0 then
    begin
      EdicaoVDUP.Value := -1*EdicaoVDUP.AsFloat;
      EdicaoVPEN.Value := abs(EdicaoVDUP.AsFloat);
      EdicaoVPAG.Value := 0;
    end;

  if Pos('/P',EdicaoDOCUMENTO.AsString) > 0 then
  EdicaoDEST.Value := 'PAGO PROTESTO';

  if Pos('/N',EdicaoDOCUMENTO.AsString) > 0 then
  EdicaoDEST.Value := 'NÃO PAGO';

 // if EdicaoFIN_PCOM.AsFloat = 0 then
 //    EdicaoFIN_PCOM.Value := PCOM;

  EdicaoVCOM.Value := EdicaoVDUP.AsFloat * (EdicaoPCOM.AsFloat / 100);
end;

procedure TFrmFIN_PAG_COM.DTSEdicaoDataChange(Sender: TObject;
  Field: TField);
begin
  DBGEdicao.ApplyBestFit(DBGEdicaoDOCUMENTO);
  DBGEdicao.ApplyBestFit(DBGEdicaoTITULO   );
end;

procedure TFrmFIN_PAG_COM.DTSEdicaoStateChange(Sender: TObject);
begin
  oState(Edicao,SBEdicao);
end;

procedure TFrmFIN_PAG_COM.SIEEdicaoClick(Sender: TObject);
begin
  oEdit(Edicao,DBGEdicao,SIEEdicao);
end;

procedure TFrmFIN_PAG_COM.SIEDeleteClick(Sender: TObject);
begin
  if Edicao.RecNo > 0 then
  if Edicao.State = dsBrowse then
  Edicao.Delete;
end;

procedure TFrmFIN_PAG_COM.SIEPostClick(Sender: TObject);
begin
  oPost(Edicao,DBGEdicao,SIEPost);
end;

procedure TFrmFIN_PAG_COM.SIECancelClick(Sender: TObject);
begin
  oCancel(Edicao,DBGEdicao,SIECancel,Nil);
end;

procedure TFrmFIN_PAG_COM.DXDATA1Change(Sender: TObject);
begin
  DXDATA2.Date := EndOfTheMonth(DXDATA1.Date)
end;

procedure TFrmFIN_PAG_COM.IEIDCVChange(Sender: TObject);
begin
  IEIDCR.Enabled := (IEIDCV.Text = '0');
end;

procedure TFrmFIN_PAG_COM.IEIDCRChange(Sender: TObject);
begin
  IEIDCV.Enabled := (IEIDCR.Text = '0');
end;

procedure TFrmFIN_PAG_COM._Financeiro(ATabela: String);
var
  ATIPO,
  ATCOM: String;
  ATPCO,
  i: Word;
begin
  ATIPO := IFThen(Pos('CAR',ATabela) > 0,'Carteira','Bancário');
  ATCOM := 'Títulos ' + IFThen(IEDATA.Text = 'FIN_DCAD','Faturados','Pagos');

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.IDEP,EP.FANTASIA AS DEEP,EP.CNPJ AS EP_CNPJ,');

    SQL.Add('PK.FIN_DOCT AS DOCUMENTO,PK.FIN_TITU AS TITULO,PK.FIN_DCAD AS DTFA,');
    SQL.Add('PK.FIN_TIPO AS STPD,'); { Tipo }
    SQL.Add('PK.FIN_CONC AS TPCO,PK.FIN_STDO AS RECO,'); { Cobrança }

    SQL.Add('PV.IDPK,CAST(PV.DTCA AS DATE) AS DTPK,PV.DEPK,'); { Pedido }
    SQL.Add('PV.CDNF,CAST(PV.DTNF AS DATE) AS DTNF,'); { Nota Fiscal }

    { Cadastros }
    SQL.Add('PK.FIN_CCLI AS IDCD,CD.FANTASIA AS DECD,CD.GRUPO AS GPCD,CD.UF AS UFCD,');
    SQL.Add('PK.FIN_CVEN AS IDCV,CV.LOGIN    AS DECV,CV.GRUPO AS GPCV,CV.UF AS UFCV,');
    SQL.Add('PK.FIN_CREP AS IDCR,CR.FANTASIA AS DECR,CR.GRUPO AS GPCR,CR.UF AS UFCR,'); { aqui, subst pela comissão diretamente do pedido no futuro }

    { Recebimentos }
    SQL.Add('PK.FIN_DVEN AS DTVC,PK.FIN_VALO AS VDUP,'); { Vencimentos }
    SQL.Add('PK.FIN_VMUL AS VMUL,PK.FIN_VJUR AS VJUR,PK.FIN_VDES AS VDSC,'); { Encargos / Descontos }
    SQL.Add('PK.FIN_DPAG AS DTPG,PK.FIN_VPAG AS VPAG,PK.FIN_VPEN AS VPEN,'); { Baixas   }
    SQL.Add('IIF(POSITION(LEFT(PK.FIN_TIPO,3) IN ''ABADEV'') > 0,PK.FIN_TIPO,PK.FIN_STFI) AS DEST,PK.FIN_CDBX AS CDBX,PK.FIN_DBAI AS DTBX,'); { Situação }

    { Comissões }
    { Vendedor  }
    SQL.Add('CV.PCOM AS CV_PCOM,');
    SQL.Add('CAST(PK.FIN_VALO * (CAST(CV.PCOM AS DECIMAL(15,5)) / 100) AS NUMERIC(15,2)) AS CV_VCOM_FAT,');
    SQL.Add('CAST(PK.FIN_VPAG * (CAST(CV.PCOM AS DECIMAL(15,5)) / 100) AS NUMERIC(15,2)) AS CV_VCOM_PAG,');

    { Representante }
    SQL.Add('CR.PCOM AS CR_PCOM,');
    SQL.Add('CAST(PK.FIN_VALO * (CAST(CR.PCOM AS DECIMAL(15,5)) / 100) AS NUMERIC(15,2)) AS CR_VCOM_FAT,');
    SQL.Add('CAST(PK.FIN_VPAG * (CAST(CR.PCOM AS DECIMAL(15,5)) / 100) AS NUMERIC(15,2)) AS CR_VCOM_PAG ');

    SQL.Add('FROM ' + oREPZero(ATabela,'_',RECParametros.Id,3) + ' AS PK');
    SQL.Add('JOIN TAB_PAR_SIS AS EP ON (EP.ID = PK.IDEP)');

    SQL.Add('JOIN CAD_CLI  AS CD ON (CD.ID = PK.FIN_CCLI)');
    SQL.Add('JOIN CAD_REP  AS CR ON (CR.ID = PK.FIN_CREP)');
    SQL.Add('JOIN TAB_USER AS CV ON (CV.ID = PK.FIN_CVEN)');

    SQL.Add('LEFT JOIN PED_VEN_CAB AS PV ON (PV.IDEP = PK.IDEP AND PV.CDBX = PK.FIN_CDBX)');

    SQL.Add('WHERE PK.IDEP = ''' + RECParametros.ID + '''');
    SQL.Add('AND   PK.' + IEDATA.Text + ' BETWEEN ''' + FormatDateTime('mm/dd/yy',DXDATA1.Date) + ''' AND ''' + FormatDateTime('mm/dd/yy',DXDATA2.Date) + '''');
    SQL.Add('AND   PK.FIN_STFI <> ''CANCELADO''');
//    SQL.Add('AND   PK.FIN_STFI <> ''BAIXADO'''  ); { Quando implantar otimotex fazer devolução e abatimento de forma individual para não conflitar com os baixados }

    if (IEIDCV.Enabled) and (IEIDCV.Text <> '0') and (IEIDCV.Text <> '999') then
    SQL.Add('AND PK.FIN_CVEN = ''' + IEIDCV.Text + '''');

    if (IEIDCR.Enabled) and (IEIDCR.Text <> '0') and (IEIDCR.Text <> '999') then
    SQL.Add('AND PK.FIN_CREP = ''' + IEIDCR.Text + '''');

    SQL.Add('ORDER BY ' + IEDATA.Text + ',TITULO');
    ExecQuery;
  end;

  PBRunning.Max := oLast(SQLConsulta);
  oFirst(SQLConsulta);

  if PBRunning.Max > 0 then
  try
    SBRodape.Panels[0].Text := 'Processando ...';

    { Running }
    PNLDescRunning.Caption := ATIPO;
    PNLDescRunning.Width   := 100;

    PNLRunning.Height  := 20;
    PBRunning.Position := 0;
    RECDefault.PBCount := 0;

    while not SQLConsulta.Eof do
    begin
      { Running }
      Inc(RECDefault.PBCount);
      PBRunning.Position := PBRunning.Position  + 1;
      Application.ProcessMessages;

      { Créditos }
      ATPCO := IFThen(SQLConsulta.Current.ByName('TPCO').AsInteger = 0,1,SQLConsulta.Current.ByName('TPCO').AsInteger);

      { Filtros }
      if ((IETIPO.Text = '999') or { Todos }
         ((IETIPO.Text = '1'  ) and (ATabela = 'FIN_REC_BAN_BAI')) or { Bancário + Tabela Bancária}
         ((IETIPO.Text = '1'  ) and (ATabela = 'FIN_REC_CAR_BAI') and (ATPCO > 1)) or { Bancário + Tabela em Carteira + Crédito }
         ((IETIPO.Text = '2'  ) and (ATabela = 'FIN_REC_CAR_BAI'))) then { Carteira + Tabela em Carteira }

      for  i := 1 to ATPCO do
      with SQLTEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO FIN_PAG');

        SQL.Add('(');

        SQL.Add('IDEP,DEEP,EP_CNPJ,');

        SQL.Add('DOCUMENTO,TITULO,DTFA,');
        SQL.Add('STPD,TIPO,');
        SQL.Add('TPCO,RECO,');

        SQL.Add('IDPK,DTPK,DEPK,');
        SQL.Add('CDNF,DTNF,');

        SQL.Add('IDCD,DECD,GPCD,UFCD,');
        SQL.Add('IDCV,DECV,GPCV,UFCV,');
        SQL.Add('IDCR,DECR,GPCR,UFCR,');

        SQL.Add('DTVC,VDUP,');
        SQL.Add('VMUL,VJUR,VDSC,');
        SQL.Add('DTPG,VPAG,VPEN,');

        SQL.Add('DEST,CDBX,DTBX,');

        SQL.Add('CV_PCOM,CV_VCOM_FAT,CV_VCOM_PAG,');
        SQL.Add('CR_PCOM,CR_VCOM_FAT,CR_VCOM_PAG,');

        SQL.Add('TCOM,PCOM,VCOM');

        SQL.Add(')');

        SQL.Add('VALUES (');

        SQL.Add('''' + SQLConsulta.Current.ByName('IDEP'   ).AsString + ''',');
        SQL.Add('''' + SQLConsulta.Current.ByName('DEEP'   ).AsString + ''',');
        SQL.Add('''' + SQLConsulta.Current.ByName('EP_CNPJ').AsString + ''',');

        SQL.Add('''' + SQLConsulta.Current.ByName('DOCUMENTO').AsString + ''',');
        SQL.Add('''' + SQLConsulta.Current.ByName('TITULO'   ).AsString + ''',');
        SQL.Add('''' + FormatDateTime('mm/dd/yy',SQLConsulta.Current.ByName('DTFA').AsDateTime) + ''',');

        SQL.Add('''' + SQLConsulta.Current.ByName('STPD').AsString + ''',');
        SQL.Add('''' + ATIPO + ''',');

        SQL.Add('''' + SQLConsulta.Current.ByName('TPCO').AsString + ''',');
        SQL.Add('''' + SQLConsulta.Current.ByName('RECO').AsString + ''',');

        SQL.Add('''' + SQLConsulta.Current.ByName('IDPK').AsString + ''',');
        SQL.Add('''' + FormatDateTime('mm/dd/yy',SQLConsulta.Current.ByName('DTPK').AsDateTime) + ''',');
        SQL.Add('''' + SQLConsulta.Current.ByName('DEPK').AsString + ''',');

        SQL.Add('''' + SQLConsulta.Current.ByName('CDNF').AsString + ''',');
        SQL.Add('''' + FormatDateTime('mm/dd/yy',SQLConsulta.Current.ByName('DTNF').AsDateTime) + ''',');

        SQL.Add('''' + SQLConsulta.Current.ByName('IDCD').AsString + ''',');
        SQL.Add('''' + SQLConsulta.Current.ByName('DECD').AsString + ''',');
        SQL.Add('''' + SQLConsulta.Current.ByName('GPCD').AsString + ''',');
        SQL.Add('''' + SQLConsulta.Current.ByName('UFCD').AsString + ''',');

        SQL.Add('''' + SQLConsulta.Current.ByName('IDCV').AsString + ''',');
        SQL.Add('''' + SQLConsulta.Current.ByName('DECV').AsString + ''',');
        SQL.Add('''' + SQLConsulta.Current.ByName('GPCV').AsString + ''',');
        SQL.Add('''' + SQLConsulta.Current.ByName('UFCV').AsString + ''',');

        SQL.Add('''' + SQLConsulta.Current.ByName('IDCR').AsString + ''',');
        SQL.Add('''' + SQLConsulta.Current.ByName('DECR').AsString + ''',');
        SQL.Add('''' + SQLConsulta.Current.ByName('GPCR').AsString + ''',');
        SQL.Add('''' + SQLConsulta.Current.ByName('UFCR').AsString + ''',');

        SQL.Add('''' + FormatDateTime('mm/dd/yy',SQLConsulta.Current.ByName('DTVC').AsDateTime) + ''',');
        SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('VDUP').AsString,',','.') + ''',');

        SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('VMUL').AsString,',','.') + ''',');
        SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('VJUR').AsString,',','.') + ''',');
        SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('VDSC').AsString,',','.') + ''',');

        SQL.Add('''' + FormatDateTime('mm/dd/yy',SQLConsulta.Current.ByName('DTPG').AsDateTime) + ''',');
        SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('VPAG').AsString,',','.') + ''',');
        SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('VPEN').AsString,',','.') + ''',');

        SQL.Add('''' + SQLConsulta.Current.ByName('DEST').AsString + ''',');
        SQL.Add('''' + SQLConsulta.Current.ByName('CDBX').AsString + ''',');
        SQL.Add('''' + FormatDateTime('mm/dd/yy',SQLConsulta.Current.ByName('DTBX').AsDateTime) + ''',');

        SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('CV_PCOM'    ).AsString,',','.') + ''',');
        SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('CV_VCOM_FAT').AsString,',','.') + ''',');
        SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('CV_VCOM_PAG').AsString,',','.') + ''',');

        SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('CR_PCOM'    ).AsString,',','.') + ''',');
        SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('CR_VCOM_FAT').AsString,',','.') + ''',');
        SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('CR_VCOM_PAG').AsString,',','.') + ''',');

        SQL.Add('''' + ATCOM + ''',');
        if IEIDCV.Enabled then
        begin
          SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('CV_PCOM').AsString,',','.') + ''',');

          if IEDATA.Text = 'FIN_DCAD' then
          SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('CV_VCOM_FAT').AsString,',','.') + '''') else
          SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('CV_VCOM_PAG').AsString,',','.') + '''');
        end else
        begin
          SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('CR_PCOM').AsString,',','.') + ''',');

          if IEDATA.Text = 'FIN_DCAD' then
          SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('CR_VCOM_FAT').AsString,',','.') + '''') else
          SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('CR_VCOM_PAG').AsString,',','.') + '''');
        end;

        SQL.Add(')');
        ExecQuery;
      end;

      SQLConsulta.Next;
    end;
  finally
    SBRodape.Panels[0].Text := 'Consulta';
    PNLRunning.Height := 0;
  end;
end;

procedure TFrmFIN_PAG_COM._Empty;
begin
  oOTransact(TTEdicao);
  with SQLTEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM FIN_PAG');
    ExecQuery;
  end;
  oRTransact(TTEdicao);
end;

procedure TFrmFIN_PAG_COM.DBGEdicaoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if (Pos(LeftStr(ANode.Values[DBGEdicaoDEST.Index],3),'ABADEV') > 0) then
    begin
      AColor      := $0080FFFF; //$00002FEC $000031F4 $00C4FFC4 $00CCCACA;
      AFont.Color := clBlack;
    end;

    if AColumn = DBGEdicaoVPAG then
    begin
      AColor      := $00C4FFC4;
      AFont.Color := clBlack;

      if ANode.Values[DBGEdicaoVPAG.Index] > 0 THEN
         AFont.Style := [fsBold];
    end;

    if AColumn = DBGEdicaoVPEN then
    begin
      AColor      := $00D9FFFF; //$00002FEC $000031F4 $00C4FFC4 $00CCCACA;
      AFont.Color := clBlack;

      if ANode.Values[DBGEdicaoVPEN.Index] > 0 THEN
         AFont.Style := [fsBold];
    end;

    if (AColumn = DBGEdicaoPCOM) or (AColumn = DBGEdicaoVCOM) then
    begin
      AColor      := $00E1AD40;
      AFont.Color := clHighLightText;

      if ANode.Values[DBGEdicaoVCOM.Index] <> 0 THEN
         AFont.Style := [fsBold];
    end;
  end;
end;

end.
