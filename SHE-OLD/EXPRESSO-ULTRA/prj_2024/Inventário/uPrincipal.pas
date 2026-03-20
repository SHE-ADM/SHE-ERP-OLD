unit uPrincipal;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, IBCustomDataSet, IBQuery, IBDatabase, StdCtrls,
  ComCtrls, DateUtils, StrUtils, MATH, cxGraphics, cxControls, dxStatusBar;

type
  TFrmPrincipal = class(TForm)
    TConsulta: TIBTransaction;
    TEdicao: TIBTransaction;
    DSInventario: TIBDataSet;
    QEstoqueFardo: TIBQuery;
    QConsulta: TIBQuery;
    GBDatas: TGroupBox;
    GBGera: TGroupBox;
    GBData1: TGroupBox;
    GBData2: TGroupBox;
    MCData1: TMonthCalendar;
    MCData2: TMonthCalendar;
    CBTipo: TComboBox;
    BTNGera: TButton;
    Label1: TLabel;
    QEdicao: TIBQuery;
    QEstoque: TIBQuery;
    QConsultaEntrada: TIBQuery;
    QConsultaEntrada3102: TIBQuery;
    DSInventarioID: TIntegerField;
    DSInventarioIDEMPRESA: TIntegerField;
    DSInventarioDEEMPRESA: TIBStringField;
    DSInventarioANO: TIBStringField;
    DSInventarioMES: TIntegerField;
    DSInventarioDATA: TDateField;
    DSInventarioNCM: TIBStringField;
    DSInventarioPROREFERENCIA: TIBStringField;
    DSInventarioPROUNIDADE: TIBStringField;
    DSInventarioPROESTOQUE: TIBBCDField;
    DSInventarioPRORENDIMENTO: TIBBCDField;
    DSInventarioPROPESO: TIBBCDField;
    DSInventarioPROESTOQUEPESO: TIBBCDField;
    DSInventarioPROMETRO: TIBBCDField;
    DSInventarioPROESTOQUEMETRO: TIBBCDField;
    DSInventarioINVDESCRICAO: TIBStringField;
    DSInventarioINVUNIDADE: TIBStringField;
    DSInventarioINVESTOQUE: TIBBCDField;
    DSInventarioINVPRECO: TFloatField;
    DSInventarioINVTOTAL: TIBBCDField;
    QConsultaEntrada3102CDNF: TIntegerField;
    QConsultaEntrada3102DTNF: TDateField;
    QConsultaEntrada3102CFOP: TIBStringField;
    QConsultaEntrada3102DECP: TIBStringField;
    QConsultaEntrada3102UCOM: TIBStringField;
    QConsultaEntrada3102VPRC: TFloatField;
    QConsultaEntradaIDEP: TSmallintField;
    QConsultaEntradaCDNF: TIntegerField;
    QConsultaEntradaDTNF: TDateField;
    QConsultaEntradaCFOP: TIBStringField;
    QConsultaEntradaNCM: TIBStringField;
    QConsultaEntradaDECP: TIBStringField;
    QConsultaEntradaUCOM: TIBStringField;
    QConsultaEntradaVPRC: TFloatField;
    SBRodape: TdxStatusBar;
    QEstoqueNCM: TIBStringField;
    QEstoqueUCOM: TIBStringField;
    QEstoqueORIG: TIntegerField;
    QEstoqueDECP: TIBStringField;
    QEstoqueVPRC: TFloatField;
    QEstoqueEPE_QTDE: TIBBCDField;
    QEstoqueEPE_PESO: TFMTBCDField;
    QEstoqueFardoNCM: TIBStringField;
    QEstoqueFardoUCOM: TIBStringField;
    QEstoqueFardoDTNF: TDateField;
    QEstoqueFardoXPROD: TIBStringField;
    QEstoqueFardoVUNCOM: TFloatField;
    QEstoqueFardoQTDE: TIBBCDField;
    QEstoqueFardoQTDS: TIBBCDField;
    QEstoqueFardoEPE_QTDE: TIBBCDField;
    QEstoqueFardoQANF: TSmallintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BTNGeraClick(Sender: TObject);
    procedure DSInventarioNewRecord(DataSet: TDataSet);
    procedure DSInventarioBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure _Login(AIDUSER,AIDEP: Variant);
    procedure _TrimAppMemorySize;

    procedure GeraInventarioFardo;
    procedure GeraInventario;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;
  IDEmpresa: Variant;
  DEEmpresa: String;

implementation

uses bPrincipal;

{$R *.dfm}

function ClientWindowProc(wnd: HWND; msg: Cardinal; wparam, lparam: Integer ): Integer; STDCall;
var
  Ponteiro: Pointer;
begin
  Ponteiro := Pointer(GetWindowLong(wnd,GWL_USERDATA));
  case msg of
       WM_NCCALCSIZE: if (GetWindowLong(wnd,GWL_STYLE) and (WS_HSCROLL or WS_VSCROLL)) <> 0 then
                      SetWindowLong(wnd,GWL_STYLE,GetWindowLong(wnd,GWL_STYLE) and Not (WS_HSCROLL or WS_VSCROLL));
  end;
  Result := CallWindowProc(Ponteiro,wnd,msg,wparam,lparam);
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  if ClientHandle <> 0 then
     if (not (GetWindowLong(ClientHandle, GWL_USERDATA) <> 0)) then
              SetWindowLong(ClientHandle, GWL_USERDATA, SetWindowLong(ClientHandle, GWL_WNDPROC, integer(@ClientWindowProc)));

  CurrencyString    := 'R$';
  ThousandSeparator := '.';
  DecimalSeparator  := ',';

  MCData1.Date := StartOfTheMonth(Date);
  MCData2.Date := EndOfTheMonth(Date);

  _Login('0','1');
end;

procedure TFrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  _TrimAppMemorySize;
end;

procedure TFrmPrincipal.BTNGeraClick(Sender: TObject);
begin
  if oYesNo(handle,'Confirma '+CBTipo.Text+' no período de '+FormatDateTime('dd/mm/yy',MCData1.Date)+' até '+
                                                             FormatDateTime('dd/mm/yy',MCData2.Date)) = IdNo then
  Abort;

  if CBTipo.Text = '' then
     raise Exception.Create('Tipo de Inventário não Informado !');

  try
    oOTransact(TConsulta);

    if CBTipo.Text = 'PLÁSTICO' then
       IDEmpresa := '4' else
    if CBTipo.Text = 'FARDO' then
       IDEmpresa := '5' else
    if CBTipo.Text = 'VIDROS' then
       IDEmpresa := '8' else
    if CBTipo.Text = 'PATCHWORK' then
       IDEmpresa := '9' else
       IDEmpresa := '1';

    with QConsulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FANTASIA FROM TAB_PAR_SIS');
      SQL.Add('WHERE  ID = '''+IDEmpresa+'''');
      Open;
    end;
    DEEmpresa := QConsulta.Fields[0].AsString;

    oOTransact(TEdicao);
    with QEdicao do
    begin
      SQL.Clear;
      SQL.Add('DELETE FROM INVENTARIO');
      SQL.Add('WHERE  Data BETWEEN '''+formatDateTime('mm/dd/yy',MCData1.Date)+''' AND '''+formatDateTime('mm/dd/yy',MCData2.Date)+'''');
      SQL.Add('AND    IDEmpresa =  '''+IDEmpresa+'''');
      ExecSQL;
    end;
    oRTransact(TEdicao);

    if CBTipo.Text = 'FARDO' then
       GeraInventarioFardo else
       GeraInventario;
  finally
    SBRodape.Panels[1].Text := CBTipo.Text+' - Finalizado com Sucesso !';
    Application.ProcessMessages;

    oCTransact(TEdicao);
    oCTransact(TConsulta);
  end;
end;

procedure TFrmPrincipal.GeraInventarioFardo;
begin
  try
    { Apenas Fardo }
    QEstoqueFardo.Open;

    while not QEstoqueFardo.Eof do
    begin
      SBRodape.Panels[1].Text := CBTipo.Text+' - '+QEstoqueFardoNCM.AsString;
      Application.ProcessMessages;

      { Pesquisa NFE Entrada com unidade original }
      QConsultaEntrada3102.Close;
      QConsultaEntrada3102.ParamByName('NCM').Value  := QEstoqueFardoNCM.AsString;
      QConsultaEntrada3102.ParamByName('UCOM').Value := QEstoqueFardoUCOM.AsString;
      QConsultaEntrada3102.Open;

      if not QConsultaEntrada3102.Eof then
      begin
       // if (QConsultaEntrada3102DTNF.AsDateTime >= MCData1.Date) and (QConsultaEntrada3102DTNF.AsDateTime <= MCData2.Date) then
        begin

        { Produto }
        DSInventario.Append;
        DSInventarioNCM.Value        := QEstoqueFardoNCM.AsString;
        DSInventarioPROUnidade.Value := QEstoqueFardoUCOM.AsString;

        DSInventarioPROEstoquePeso.Value := IFThen(QEstoqueFardoUCOM.AsString = 'KG',QEstoqueFardoEPE_QTDE.AsFloat,0);
        DSInventarioPROEstoque.Value     := QEstoqueFardoEPE_QTDE.AsFloat;

        { Inventário }
        DSInventarioINVDescricao.Value := QConsultaEntrada3102DECP.AsString;
        DSInventarioINVUnidade.Value   := DSInventarioPROUnidade.AsString;
        DSInventarioINVEstoque.Value   := DSInventarioPROEstoque.AsFloat;

        DSInventarioINVPreco.Value := IFThen((QEstoqueFardoVUNCOM.AsFloat = 0) or (QEstoqueFardoVUNCOM.AsFloat > QConsultaEntrada3102VPRC.AsFloat),QConsultaEntrada3102VPRC.AsCurrency,QEstoqueFardoVUNCOM.AsCurrency);
        DSInventario.Post;
        end;
      end;
      
      QEstoqueFardo.Next;
    end;
  finally
    oCTransact(TConsulta);
    oCTransact(TEdicao);
  end;
end;

procedure TFrmPrincipal.GeraInventario;
begin
  try
    QEstoque.Close;
    QEstoque.Params[0].Value := IDEmpresa;
    QEstoque.Open;
    
    while not QEstoque.Eof do
    begin
      SBRodape.Panels[1].Text := CBTipo.Text+' - '+QEstoqueNCM.AsString+' ( '+FormatDateTime('dd/mm/yy',MCData2.Date)+' )';
      Application.ProcessMessages;

      { Produto }
      DSInventario.Append;
      DSInventarioNCM.Value        := QEstoqueNCM.AsString;
      DSInventarioPROUnidade.Value := QEstoqueUCOM.AsString;

      { Estoque }
      DSInventarioPROEstoquePeso.Value := IFThen(QEstoqueEPE_QTDE.AsFloat > 0,QEstoqueEPE_PESO.AsFloat,0);
      DSInventarioPROEstoque.Value     := IFThen(QEstoqueEPE_QTDE.AsFloat > 0,QEstoqueEPE_QTDE.AsFloat,0);

      { Inventário }
      DSInventarioINVDescricao.Value := QEstoqueDECP.AsString;
      DSInventarioINVUnidade.Value   := QEstoqueUCOM.AsString;
      DSInventarioINVEstoque.Value   := 0;
      DSInventarioINVPreco.Value     := 0;

      if QEstoqueORIG.AsInteger = 1 then
      begin
        { Pesquisa Importado - Unidade KG }
        QConsultaEntrada3102.Close;
        QConsultaEntrada3102.ParamByName('NCM').Value  := DSInventarioNCM.AsString;
        QConsultaEntrada3102.ParamByName('UCOM').Value := 'KG';
        QConsultaEntrada3102.Open;

        if QConsultaEntrada3102.Eof then
        begin
          { Pesquisa Importado - Unidade Original }
          QConsultaEntrada3102.Close;
          QConsultaEntrada3102.ParamByName('NCM').Value  := DSInventarioNCM.AsString;
          QConsultaEntrada3102.ParamByName('UCOM').Value := DSInventarioINVUnidade.AsString;
          QConsultaEntrada3102.Open;
        end;

        if not QConsultaEntrada3102.Eof then
        begin
          DSInventarioINVDescricao.Value := QConsultaEntrada3102DECP.AsString;
          DSInventarioINVUnidade.Value   := QConsultaEntrada3102UCOM.AsString;
          DSInventarioINVEstoque.Value   := IFThen((DSInventarioINVUnidade.AsString = 'KG') and (DSInventarioPROEstoquePeso.AsFloat > 0),DSInventarioPROEstoquePeso.AsFloat,DSInventarioPROEstoque.AsFloat);
          DSInventarioINVPreco.Value     := IFThen((QEstoqueVPRC.AsFloat > 0) and (QEstoqueVPRC.AsFloat < QConsultaEntrada3102VPRC.AsFloat),QEstoqueVPRC.AsFloat,QConsultaEntrada3102VPRC.AsFloat);
        end;
      end else
      begin
        { Pesquisa Nacional - Unidade KG }
        QConsultaEntrada.Close;
        QConsultaEntrada.ParamByName('IDEP').Value := IDEmpresa;
        QConsultaEntrada.ParamByName('NCM' ).Value := DSInventarioNCM.AsString;
        QConsultaEntrada.ParamByName('UCOM').Value := 'KG';
        QConsultaEntrada.Open;

        if QConsultaEntrada.Eof then
        begin
          { Pesquisa Nacional - Unidade Original }
          QConsultaEntrada.Close;
          QConsultaEntrada.ParamByName('IDEP').Value := IDEmpresa;
          QConsultaEntrada.ParamByName('NCM' ).Value := DSInventarioNCM.AsString;
          QConsultaEntrada.ParamByName('UCOM').Value := DSInventarioINVUnidade.AsString;
          QConsultaEntrada.Open;
        end;

        if not QConsultaEntrada.Eof then
        begin
          DSInventarioINVDescricao.Value := QConsultaEntradaDECP.AsString;
          DSInventarioINVUnidade.Value   := QConsultaEntradaUCOM.AsString;
          DSInventarioINVEstoque.Value   := IFThen((DSInventarioINVUnidade.AsString = 'KG') and (DSInventarioPROEstoquePeso.AsFloat > 0),DSInventarioPROEstoquePeso.AsFloat,DSInventarioPROEstoque.AsFloat);
          DSInventarioINVPreco.Value     := IFThen((QEstoqueVPRC.AsFloat > 0) and (QEstoqueVPRC.AsFloat < QConsultaEntradaVPRC.AsFloat),QEstoqueVPRC.AsFloat,QConsultaEntradaVPRC.AsFloat);
        end;
      end;

      DSInventario.Post;
      QEstoque.Next;
    end;
  finally
    oCTransact(TConsulta);
    oCTransact(TEdicao);
  end;
end;

procedure TFrmPrincipal.DSInventarioNewRecord(DataSet: TDataSet);
begin
  DSInventarioID.Value := 0;

  DSInventarioIDEmpresa.AsString := IDEmpresa;
  DSInventarioDEEmpresa.Value    := DEEmpresa;

  DSInventarioAno.Value    := oStrZero(YearOF (MCData2.Date),4);
  DSInventarioMes.AsString := oStrZero(MonthOF(MCData2.Date),2);
  DSInventarioData.Value   := MCData2.Date;
end;

procedure TFrmPrincipal.DSInventarioBeforePost(DataSet: TDataSet);
begin
  DSInventarioINVUnidade.Value   := UpperCase(DSInventarioINVUnidade.AsString);
  DSInventarioINVDescricao.Value := UpperCase(DSInventarioINVDescricao.AsString);
  DSInventarioINVTotal.Value     := DSInventarioINVEstoque.AsFloat*DSInventarioINVPreco.AsFloat;
end;

procedure TFrmPrincipal._TrimAppMemorySize;
var
  MainHandle: THandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID);
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF);
    CloseHandle(MainHandle);
  except
    ;
  end;
  Application.ProcessMessages;
end;

procedure TFrmPrincipal._Login(AIDUSER,AIDEP: Variant);
begin
  if (not oEmpty(AIDUSER)) and (not oEmpty(AIDEP)) and (oEmpty(RECParametros.DataBaseError)) then
  try
    FreeAndNil(SLPrincipal);
    SLPrincipal := TStringList.Create;

    with FBird do
    begin
      bExecParametros(AIDEP);
      bExecUsuarios(AIDUSER);
      bExecPrinter;
      bExecCaixa;
    end;
    
    { Preenchendo o rodapé do Form Principal }
    SBRodape.Width          := Screen.Width + 1;
    SBRodape.Panels[0].Text := RECParametros.Fantasia;
    SBRodape.Panels[1].Text := RECParametros.ServerHost;

    SLPrincipal.Values['fin_pag']         := oREPZero('fin_pag'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_pag_rec']     := oREPZero('fin_pag_rec'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_pag_bai']     := oREPZero('fin_pag_bai'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_pag_coc']     := oREPZero('fin_pag_coc'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_pag_coi']     := oREPZero('fin_pag_coi'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_pag_dup']     := oREPZero('fin_pag_dup'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_pag_obs']     := oREPZero('fin_pag_obs'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_rec']         := oREPZero('fin_rec'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_rec_dup']     := oREPZero('fin_rec_dup'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_rec_obs']     := oREPZero('fin_rec_obs'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_rec_ban_bai'] := oREPZero('fin_rec_ban_bai','_',RECParametros.Id,3);
    SLPrincipal.Values['fin_rec_car_bai'] := oREPZero('fin_rec_car_bai','_',RECParametros.Id,3);
    SLPrincipal.Values['nfe_cab']         := oREPZero('nfe_cab'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['nfe_dup']         := oREPZero('nfe_dup'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['nfe_ite']         := oREPZero('nfe_ite'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['nfe_tra']         := oREPZero('nfe_tra'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_avi_cab']     := oREPZero('ped_avi_cab'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_avi_ite']     := oREPZero('ped_avi_ite'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_oca_cab']     := oREPZero('ped_oca_cab'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_oca_ite']     := oREPZero('ped_oca_ite'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_com_cab']     := oREPZero('ped_com_cab'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_com_ite']     := oREPZero('ped_com_ite'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_prg_cab']     := oREPZero('ped_prg_cab'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_prg_ite']     := oREPZero('ped_prg_ite'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_tec_cab']     := oREPZero('ped_tec_cab'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_tec_ite']     := oREPZero('ped_tec_ite'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_ven_cab']     := oREPZero('ped_ven_cab'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_ven_ite']     := oREPZero('ped_ven_ite'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['rom_cab']         := oREPZero('rom_cab'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['rom_ite']         := oREPZero('rom_ite'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['rom_des']         := oREPZero('rom_des'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['tab_alq']         := oREPZero('tab_alq'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['tab_ban']         := oREPZero('tab_ban'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_caption']     := 'Consultas em Carteira';
    SLPrincipal.Values['fin_hint']        := '';
    SLPrincipal.Values['fin_baixa']       := '';
    SLPrincipal.Values['fin_consulta']    := '';
  Finally
    FrmPrincipal.Repaint;
    Application.ProcessMessages;
  end;
end;

end.
