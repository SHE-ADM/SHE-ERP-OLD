unit pPSQCAD;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefault, dxExEdtr, cxGraphics, IBQuery, dxBar, ImgList,
  ActnList, dxDockControl, dxBarExtItems, IBEvents, DB, IBCustomDataSet,
  IBStoredProc, IBSQL, IBDatabase, cxControls, dxStatusBar, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDockPanel, ExtCtrls, dxDBTLCl, dxGrClms, math, StrUtils,
  dxsbar;

type
  TFrmPSQCAD = class(TFrmDefault)
    DBGConsultaIDCD: TdxDBGridMaskColumn;
    DBGConsultaDECD: TdxDBGridMaskColumn;
    DBGConsultaRZCD: TdxDBGridMaskColumn;
    DBGConsultaDTCA: TdxDBGridDateColumn;
    DBGConsultaDTPV: TdxDBGridDateColumn;
    DBGConsultaDEST: TdxDBGridMaskColumn;
    DBGConsultaCNPJ: TdxDBGridMaskColumn;
    ConsultaC_ID: TIntegerField;
    DBGConsultaC_ID: TdxDBGridColumn;
    ConsultaIDCD: TIntegerField;
    ConsultaIDEP: TSmallintField;
    ConsultaIDCA: TSmallintField;
    ConsultaDTCA: TDateTimeField;
    ConsultaLGCA: TIBStringField;
    ConsultaIDED: TSmallintField;
    ConsultaDTED: TDateTimeField;
    ConsultaLGED: TIBStringField;
    ConsultaIDST: TSmallintField;
    ConsultaDTST: TDateTimeField;
    ConsultaLGST: TIBStringField;
    ConsultaCDST: TSmallintField;
    ConsultaREST: TIBStringField;
    ConsultaDEST: TIBStringField;
    ConsultaDECD: TIBStringField;
    ConsultaRZCD: TIBStringField;
    ConsultaGPCD: TIBStringField;
    ConsultaTPCD: TSmallintField;
    ConsultaCSCD: TSmallintField;
    ConsultaDTCD: TDateField;
    ConsultaDTFU: TDateField;
    ConsultaDTPV: TDateTimeField;
    ConsultaDTNF: TDateTimeField;
    ConsultaIDCC: TSmallintField;
    ConsultaDECC: TIBStringField;
    ConsultaIDCV: TSmallintField;
    ConsultaDECV: TIBStringField;
    ConsultaIDCR: TSmallintField;
    ConsultaDECR: TIBStringField;
    ConsultaIDCT: TSmallintField;
    ConsultaDECT: TIBStringField;
    ConsultaMFRT: TSmallintField;
    ConsultaCDPG: TSmallintField;
    ConsultaDEPG: TIBStringField;
    ConsultaCNPJ: TIBStringField;
    ConsultaIE: TIBStringField;
    ConsultaISUF: TIBStringField;
    ConsultaIM: TIBStringField;
    ConsultaCPF: TIBStringField;
    ConsultaIDESTRANGEIRO: TIBStringField;
    ConsultaFIS_CREDICMS: TSmallintField;
    ConsultaFIS_INDIEDEST: TSmallintField;
    ConsultaD_FIS_INDIEDEST: TIBStringField;
    ConsultaFIS_INDFINAL: TSmallintField;
    ConsultaD_FIS_INDFINAL: TIBStringField;
    ConsultaFIS_CRT: TSmallintField;
    ConsultaD_FIS_CRT: TIBStringField;
    ConsultaCONTATO: TIBStringField;
    ConsultaDDD: TIBStringField;
    ConsultaTEL: TIBStringField;
    ConsultaEMAIL: TIBStringField;
    ConsultaENVEMAIL: TSmallintField;
    ConsultaD_CONTATO: TIBStringField;
    ConsultaD_FONE: TIBStringField;
    ConsultaCONTATO2: TIBStringField;
    ConsultaDDD2: TIBStringField;
    ConsultaTEL2: TIBStringField;
    ConsultaEMAIL2: TIBStringField;
    ConsultaD_CONTATO2: TIBStringField;
    ConsultaCONTATO3: TIBStringField;
    ConsultaDDD3: TIBStringField;
    ConsultaTEL3: TIBStringField;
    ConsultaEMAIL3: TIBStringField;
    ConsultaD_CONTATO3: TIBStringField;
    ConsultaCEL_CONTATO: TIBStringField;
    ConsultaCEL_DDD: TIBStringField;
    ConsultaCEL_TEL: TIBStringField;
    ConsultaCEL_EMAIL: TIBStringField;
    ConsultaD_CEL_CONTATO: TIBStringField;
    ConsultaCEL_CONTATO2: TIBStringField;
    ConsultaCEL_DDD2: TIBStringField;
    ConsultaCEL_TEL2: TIBStringField;
    ConsultaCEL_EMAIL2: TIBStringField;
    ConsultaD_CEL_CONTATO2: TIBStringField;
    ConsultaZAP_CONTATO: TIBStringField;
    ConsultaZAP_DDD: TIBStringField;
    ConsultaZAP_TEL: TIBStringField;
    ConsultaZAP_EMAIL: TIBStringField;
    ConsultaD_ZAP_CONTATO: TIBStringField;
    ConsultaLOG_NU: TLargeintField;
    ConsultaTLO_TX: TIBStringField;
    ConsultaLOG_NO: TIBStringField;
    ConsultaLOG_NO_ABREV: TIBStringField;
    ConsultaNRO: TIBStringField;
    ConsultaXCPL: TIBStringField;
    ConsultaCEP: TIBStringField;
    ConsultaBAI_NO: TIBStringField;
    ConsultaBAI_NO_ABREV: TIBStringField;
    ConsultaLOC_NO: TIBStringField;
    ConsultaLOC_NO_ABREV: TIBStringField;
    ConsultaCMUN: TLargeintField;
    ConsultaUF: TIBStringField;
    ConsultaCPAIS: TSmallintField;
    ConsultaD_LOG: TIBStringField;
    ConsultaENT_LOG_NU: TLargeintField;
    ConsultaENT_TLO_TX: TIBStringField;
    ConsultaENT_LOG_NO: TIBStringField;
    ConsultaENT_LOG_NO_ABREV: TIBStringField;
    ConsultaENT_NRO: TIBStringField;
    ConsultaENT_XCPL: TIBStringField;
    ConsultaENT_CEP: TIBStringField;
    ConsultaENT_BAI_NO: TIBStringField;
    ConsultaENT_BAI_NO_ABREV: TIBStringField;
    ConsultaENT_LOC_NO: TIBStringField;
    ConsultaENT_LOC_NO_ABREV: TIBStringField;
    ConsultaENT_CMUN: TLargeintField;
    ConsultaENT_UF: TIBStringField;
    ConsultaENT_CNPJ_CPF: TIBStringField;
    ConsultaRET_LOG_NU: TLargeintField;
    ConsultaRET_TLO_TX: TIBStringField;
    ConsultaRET_LOG_NO: TIBStringField;
    ConsultaRET_LOG_NO_ABREV: TIBStringField;
    ConsultaRET_NRO: TIBStringField;
    ConsultaRET_XCPL: TIBStringField;
    ConsultaRET_CEP: TIBStringField;
    ConsultaRET_BAI_NO: TIBStringField;
    ConsultaRET_BAI_NO_ABREV: TIBStringField;
    ConsultaRET_LOC_NO: TIBStringField;
    ConsultaRET_LOC_NO_ABREV: TIBStringField;
    ConsultaRET_UF: TIBStringField;
    ConsultaRET_CNPJ_CPF: TIBStringField;
    ConsultaINFADCAD: TIBStringField;
    ConsultaINFADFIN: TIBStringField;
    DBGConsultaREST: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure ConsultaCalcFields(DataSet: TDataSet);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGConsultaDblClick(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    RECCadastro: TRECCadastros;
  end;

var
  FrmPSQCAD: TFrmPSQCAD;

implementation

{$R *.dfm}

procedure TFrmPSQCAD.FormCreate(Sender: TObject);
begin
  oIRECCadastros(RECCadastro);

  RECDefault.Auto := True;
  RECDefault.Id   := -3; { Grid Focus }
  inherited;

  RECCadastro.CDCD := RECDefault.CDEV;
  RECCadastro.VWCD := 'VW_CAD_'+IFThen(RECCadastro.CDCD = 0,'CLI',
                                IFThen(RECCadastro.CDCD = 1,'FOR',
                                IFThen(RECCadastro.CDCD = 2,'REP',
                                IFThen(RECCadastro.CDCD = 3,'TRA'))));
end;

procedure TFrmPSQCAD.FormDestroy(Sender: TObject);
begin
  inherited;
  oFRECCadastros(RECCadastro);
end;

procedure TFrmPSQCAD.ACTPesquisaExecute(Sender: TObject);
begin
  BBPSQ_CAD.Hint := IFThen(BBPSQ_CAD.Caption = 'Pesquisa Rápida','Romaneio, Container, Nota Fiscal, Pedido, Fornecedor, etc',EmptyStr);
  BEPSQ_CAD.Hint := BBPSQ_CAD.Hint;
  Application.ProcessMessages;

  { Verifica integridade da pesquisa
    Evita campos alphanuméricos em campos apenas numéricos
  }
  if (Pos(BBPSQ_CAD.Caption,'Código') > 0) and (not oBSONumero(BEPSQ_CAD.Text)) then
      Abort;

  inherited;

  { Load Default }
  if ACTPesquisa.Tag = 1 then
     Consulta.Open else
  if (BEPSQ_CAD.Text <> EmptyStr) or (BDPSQ_PER_INI.Date > 0) and (BDPSQ_PER_FIM.Date > 0) then
  try

       with Consulta do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT PK.* FROM ' + RECCadastro.VWCD + ' AS PK');

         if BEPSQ_CAD.Text <> EmptyStr then
         begin
           SQL.Add('WHERE ');

           if BBPSQ_CAD.Caption = 'Código' then
              SQL.Add('PK.IDCD  = ''' + BEPSQ_CAD.Text + '''') else
           if BBPSQ_CAD.Caption = 'Nome Fantasia' then
              SQL.Add('PK.DECD  = ''' + BEPSQ_CAD.Text + '''') else
           if BBPSQ_CAD.Caption = 'Razão Social' then
              SQL.Add('PK.RZCD  = ''' + BEPSQ_CAD.Text + '''') else

           if oBSONumero(BEPSQ_CAD.Text) then
              SQL.Add('(PK.IDCD =          ''' + BEPSQ_CAD.Text + ''' OR PK.CEP  CONTAINING ''' + BEPSQ_CAD.Text + ''' OR PK.CNPJ CONTAINING ''' + BEPSQ_CAD.Text + ''' OR PK.D_FONE CONTAINING ''' + BEPSQ_CAD.Text + ''')') else
              SQL.Add('(PK.DECD CONTAINING ''' + BEPSQ_CAD.Text + ''' OR PK.RZCD CONTAINING ''' + BEPSQ_CAD.Text + ''' OR PK.DECR CONTAINING ''' + BEPSQ_CAD.Text + ''' OR PK.D_LOG  CONTAINING ''' + BEPSQ_CAD.Text + ''')');
         end;

         { Pesquisa Período }
         if (BDPSQ_PER_INI.Date > 0) and (BDPSQ_PER_FIM.Date > 0) then
         begin
           SQL.Add(IFThen(BEPSQ_CAD.Text = EmptyStr,'WHERE','AND'));
           SQL.Add('CAST(PK.DTCA AS DATE) BETWEEN ''' + FormatDateTime('mm/dd/yy',BDPSQ_PER_INI.Date) + ''' AND ''' + FormatDateTime('mm/dd/yy',BDPSQ_PER_FIM.Date) + '''');
         end;

         SQL.Add('ORDER BY PK.DECD');
       end;

       Consulta.Open;
       if (Consulta.Eof) and (BEPSQ_CAD.Text <> EmptyStr) then
           oAviso(Self.Handle,BBPSQ_CAD.Caption + ' não Encontrado !');
  finally
    DPConsulta.Caption := 'Cadastro(s) Encontrado(s)';

    BEPSQ_CAD.Text    := EmptyStr;
    BEPSQ_CAD.CurText := EmptyStr;

    BDPSQ_PER_INI.Text    := EmptyStr;
    BDPSQ_PER_INI.CurText := EmptyStr;

    BDPSQ_PER_FIM.Text    := EmptyStr;
    BDPSQ_PER_FIM.CurText := EmptyStr;

    Application.ProcessMessages;
  end;
end;

procedure TFrmPSQCAD.ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  ConsultaC_ID.Value := Consulta.RecNo;
end;

procedure TFrmPSQCAD.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if not ASelected then
  begin
    if ANode.Values[DBGConsultaREST.Index] = 'PRÉ' then
    begin
      AFont.Color := clBlack;
      AColor      := clInfoBk;
    end else
    if ANode.Values[DBGConsultaREST.Index] = 'I' then
    begin
      AFont.Color := clWhite;
      AColor      := $000024B3;
    end else
    if ANode.Values[DBGConsultaREST.Index] = 'S' then
    begin
      AFont.Color := clWhite;
      AColor      := clRed;
    end;
  end;
end;

procedure TFrmPSQCAD.DBGConsultaDblClick(Sender: TObject);
begin
  inherited;
  if ConsultaREST.AsString <> 'A' then
     oException(DBGConsulta,'Consulta '+ConsultaDEST.AsString+' !');

  RECDefault.Selected := (ConsultaIDCD.AsInteger > 0);
  Close;
end;

procedure TFrmPSQCAD.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_escape then
     Close else
  if key = vk_return then
     DBGConsultaDblClick(Self);
end;

procedure TFrmPSQCAD.ConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DBGConsultaDECD.Field.FocusControl;
end;

end.
