unit pCAD_TRA;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefaultConsultaGrid, cxGraphics, dxExEdtr, dxsbar, ActnList,
  dxDockControl, dxBar, dxBarExtItems, ImgList, IBEvents, IBStoredProc,
  IBSQL, IBDatabase, DB, IBCustomDataSet, IBQuery, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDockPanel, ExtCtrls, dxPageControl, cxControls,
  dxStatusBar, dxDBTLCl, dxGrClms, math, StrUtils, DBCtrls, StdCtrls,
  ComCtrls;

type
  TFrmCAD_TRA = class(TFrmDefaultConsultaGrid)
    DSRodape: TdxDockSite;
    ILDockIcons: TImageList;
    DPContato: TdxDockPanel;
    LayoutRodape: TdxLayoutDockSite;
    DPHistorico: TdxDockPanel;
    dxDockPanel2: TdxDockPanel;
    ContainerRodape: TdxTabContainerDockSite;
    CadastroID: TSmallintField;
    CadastroFANTASIA: TIBStringField;
    CadastroRAZAO_SOCIAL: TIBStringField;
    CadastroDTCA: TDateField;
    CadastroDTFU: TDateField;
    CadastroDTMV: TDateField;
    CadastroCNPJ: TIBStringField;
    CadastroIE: TIBStringField;
    CadastroINDIEDEST: TIBStringField;
    CadastroCPF: TIBStringField;
    CadastroCONTATO: TIBStringField;
    CadastroFONE: TIBStringField;
    CadastroEMAIL: TIBStringField;
    CadastroFONE2: TIBStringField;
    CadastroEMAIL2: TIBStringField;
    CadastroFONE3: TIBStringField;
    CadastroEMAIL3: TIBStringField;
    CadastroCELULAR: TIBStringField;
    CadastroEMAILCEL: TIBStringField;
    CadastroTLGR: TIBStringField;
    CadastroXLGR: TIBStringField;
    CadastroNRO: TIBStringField;
    CadastroXCPL: TIBStringField;
    CadastroXBAIRRO: TIBStringField;
    CadastroXMUN: TIBStringField;
    CadastroCMUN: TIBStringField;
    CadastroUF: TIBStringField;
    CadastroCPAIS: TSmallintField;
    CadastroXPAIS: TIBStringField;
    CadastroINFADCAD: TIBStringField;
    CadastroIDST: TSmallintField;
    CadastroDEST: TIBStringField;
    DBGConsultaID: TdxDBGridMaskColumn;
    DBGConsultaFANTASIA: TdxDBGridMaskColumn;
    DBGConsultaRAZAO_SOCIAL: TdxDBGridMaskColumn;
    DBGConsultaDTCA: TdxDBGridDateColumn;
    DBGConsultaCNPJ: TdxDBGridMaskColumn;
    DBGConsultaCONTATO: TdxDBGridMaskColumn;
    DBGConsultaXBAIRRO: TdxDBGridMaskColumn;
    DBGConsultaXMUN: TdxDBGridMaskColumn;
    DBGConsultaUF: TdxDBGridMaskColumn;
    DBGConsultaDEST: TdxDBGridMaskColumn;
    DBGConsultaFONE: TdxDBGridMaskColumn;
    DBGConsultaCELULAR: TdxDBGridMaskColumn;
    DBGConsultaCPF: TdxDBGridMaskColumn;
    PMPesquisa: TdxBarPopupMenu;
    BBPesquisa: TdxBarButton;
    BLBFantasia: TdxBarLargeButton;
    BLBRazao_Social: TdxBarLargeButton;
    BLBCNPJ: TdxBarLargeButton;
    ACTPesquisaFantasia: TAction;
    ACTPesquisaRazaoSocial: TAction;
    ACTPesquisaCNPJ: TAction;
    BEPesquisa: TdxBarEdit;
    CadastroC_LOGRADOURO: TStringField;
    CadastroCEP: TIBStringField;
    CadastroC_CEP: TStringField;
    Historico: TIBQuery;
    DTSHistorico: TDataSource;
    HistoricoFK: TIBQuery;
    DTSHistoricoFK: TDataSource;
    HistoricoCDNF: TIntegerField;
    HistoricoDTNF: TDateField;
    HistoricoDESTINATARIO: TIBStringField;
    HistoricoVENDEDOR: TIBStringField;
    HistoricoREPRESENTANTE: TIBStringField;
    HistoricoSTCA: TIBStringField;
    dxLayoutDockSite2: TdxLayoutDockSite;
    HistoricoFKNFE_CPROD: TIBStringField;
    HistoricoFKNFE_NCM: TIBStringField;
    HistoricoFKNFE_QCOM: TIBBCDField;
    HistoricoFKNFE_VUNCOM: TFloatField;
    HistoricoFKNFE_VPROD: TIBBCDField;
    GBNotas: TGroupBox;
    DBGHistorico: TdxDBGrid;
    DBGHistoricoCDNF: TdxDBGridMaskColumn;
    DBGHistoricoDTNF: TdxDBGridDateColumn;
    DBGHistoricoDESTINATARIO: TdxDBGridMaskColumn;
    DBGHistoricoVENDEDOR: TdxDBGridMaskColumn;
    DBGHistoricoREPRESENTANTE: TdxDBGridMaskColumn;
    DBGHistoricoSTCA: TdxDBGridMaskColumn;
    GBProdutos: TGroupBox;
    DBGHistoricoFK: TdxDBGrid;
    DBGHistoricoFKNFE_CPROD: TdxDBGridMaskColumn;
    DBGHistoricoFKNFE_NCM: TdxDBGridMaskColumn;
    DBGHistoricoFKNFE_QCOM: TdxDBGridMaskColumn;
    DBGHistoricoFKNFE_VUNCOM: TdxDBGridMaskColumn;
    DBGHistoricoFKNFE_VPROD: TdxDBGridMaskColumn;
    HistoricoFKID: TIntegerField;
    DBGLOG: TdxDBGrid;
    LOG: TIBQuery;
    DTSLOG: TDataSource;
    LOGID: TIntegerField;
    LOGIDCT: TSmallintField;
    LOGDESTINO: TIBStringField;
    LOGPRAZO: TIBStringField;
    LOGFXCEPI: TIBStringField;
    LOGFXCEPF: TIBStringField;
    LOGPFRETE: TIBBCDField;
    LOGKFRETE: TIBBCDField;
    LOGMFRETE: TIBBCDField;
    LOGCAT: TIBBCDField;
    DBGLOGDESTINO: TdxDBGridMaskColumn;
    DBGLOGPRAZO: TdxDBGridMaskColumn;
    DBGLOGFXCEPI: TdxDBGridMaskColumn;
    DBGLOGFXCEPF: TdxDBGridMaskColumn;
    DBGLOGPFRETE: TdxDBGridMaskColumn;
    DBGLOGKFRETE: TdxDBGridMaskColumn;
    DBGLOGMFRETE: TdxDBGridMaskColumn;
    DBGLOGCAT: TdxDBGridMaskColumn;
    BLBNFSaida: TdxBarLargeButton;
    ACTTabFrete: TAction;
    CadastroREGIMETRIB: TIBStringField;
    CadastroCREDICMS: TIBStringField;
    CadastroLE_TLGR: TIBStringField;
    CadastroLE_XLGR: TIBStringField;
    CadastroLE_NRO: TIBStringField;
    CadastroLE_XCPL: TIBStringField;
    CadastroLE_CEP: TIBStringField;
    CadastroLE_XBAIRRO: TIBStringField;
    CadastroLE_XMUN: TIBStringField;
    CadastroLE_CMUN: TIBStringField;
    CadastroLE_UF: TIBStringField;
    CadastroINFADFIN: TIBStringField;
    BVContato: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText4: TDBText;
    DBText6: TDBText;
    DBText8: TDBText;
    DBText3: TDBText;
    DBText5: TDBText;
    DBText7: TDBText;
    DBText9: TDBText;
    DBText16: TDBText;
    DBText15: TDBText;
    DBText14: TDBText;
    DBText13: TDBText;
    DBText11: TDBText;
    DBText10: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ACTPesquisaFantasiaExecute(Sender: TObject);
    procedure ACTPesquisaRazaoSocialExecute(Sender: TObject);
    procedure ACTPesquisaCNPJExecute(Sender: TObject);
    procedure BBPesquisaClick(Sender: TObject);
    procedure BEPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure DBGHistoricoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure HistoricoAfterOpen(DataSet: TDataSet);
    procedure LOGAfterOpen(DataSet: TDataSet);
    procedure ACTAppendExecute(Sender: TObject);
    procedure ACTEditExecute(Sender: TObject);
    procedure ACTTabFreteExecute(Sender: TObject);
  private
    { Private declarations }
    ADTXT,
    AFTXT,
    AWHERE,
    ALIKE1,
    ALIKE2,
    AFDT: String;
    ADDT1,
    ADDT2: TDate;

    procedure _Pesquisa;
    procedure _Edicao(AEdicao: Word);
  public
    { Public declarations }
  end;

var
  FrmCAD_TRA: TFrmCAD_TRA;

implementation

uses pcad_tra_edi;

{$R *.dfm}

procedure TFrmCAD_TRA.FormCreate(Sender: TObject);
begin
  { ADMIN }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_TRA_ADM'; { Eventos }

  { GRANT }
  REC_SHE_DEF.GDescricao  := 'Transportadoras';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;

  with Historico do
  begin
    SQL.Clear;
    SQL.Add('SELECT   NF.NFE_CDNF AS CDNF,NF.NFE_DEMI AS DTNF,NF.NFE_DFAV AS DESTINATARIO,NF.NFE_DVEN AS VENDEDOR,NF.NFE_DREP AS REPRESENTANTE,NF.NFE_STA AS STCA');
    SQL.Add('FROM   '+SLPrincipal.Values['nfe_cab']+' AS NF');
    SQL.Add('WHERE    NF.NFE_CTRA    = :ID');
    SQL.Add('AND      NF.NFE_CNPJREF = '''+RECParametros.CNPJ+'''');
    SQL.Add('AND      NF.NFE_DEMI >= '''+FormatDateTime('mm/dd/yy',IncMonth(Date,-11))+'''');
    SQL.Add('ORDER BY NF.NFE_DEMI DESC');
    Prepare;
  end;

  with HistoricoFK do
  begin
    SQL.Clear;
    SQL.Add('SELECT   NF.ID,NF.NFE_CPROD,NF.NFE_NCM,NF.NFE_QCOM,NF.NFE_VUNCOM,NF.NFE_VPROD');
    SQL.Add('FROM   '+SLPrincipal.Values['nfe_ite']+' AS NF');
    SQL.Add('WHERE    NF.NFE_CDNF = :CDNF');
    SQL.Add('ORDER BY NF.NFE_CPROD');
    Prepare;
  end;

  Cadastro.Open;
end;

procedure TFrmCAD_TRA.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if LOG.State = dsInactive then
     LOG.Open;
  if Historico.State = dsInactive then
     Historico.Open;

  DBGConsulta.FocusedColumn := 1;
end;

procedure TFrmCAD_TRA.HistoricoAfterOpen(DataSet: TDataSet);
begin
  if HistoricoFK.State = dsInactive then
     HistoricoFK.Open;
end;

procedure TFrmCAD_TRA.ACTPesquisaFantasiaExecute(Sender: TObject);
begin
  BBPesquisa.Caption := ACTPEsquisaFantasia.Caption;
  _Pesquisa;
end;

procedure TFrmCAD_TRA.ACTPesquisaRazaoSocialExecute(Sender: TObject);
begin
  BBPesquisa.Caption := ACTPesquisaRazaoSocial.Caption;
  _Pesquisa;
end;

procedure TFrmCAD_TRA.ACTPesquisaCNPJExecute(Sender: TObject);
begin
  BBPesquisa.Caption := ACTPesquisaCNPJ.Caption;
  _Pesquisa;
end;

procedure TFrmCAD_TRA.BBPesquisaClick(Sender: TObject);
begin
  _Pesquisa;
end;

procedure TFrmCAD_TRA.BEPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
     _Pesquisa;
end;

procedure TFrmCAD_TRA._Pesquisa;
begin
  if oEmpty(BEPesquisa.Text) then
     Exit;

  ADTXT  := BEPesquisa.Text;
  AFTXT  := BBPesquisa.Caption;
  AWHERE := 'LIKE';
  ALIKE1 := IFThen(Pos('%',BEPesquisa.Text) > 0,'%','');
  ALIKE2 := '%';

  try
    with Cadastro do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM SP_PSQ_CAD_TRA(');
      SQL.Add(''''+ADTXT+'''');
      if ADTXT <> 'TODOS' then
      begin
        SQL.Add(',');
        SQL.Add(''''+AFTXT +''',');
        SQL.Add(''''+AWHERE+''',');
        SQL.Add(''''+ALIKE1+''',');
        SQL.Add(''''+ALIKE2+''',');
        SQL.Add(''''+FormatDateTime('mm/dd/yy',ADDT1)+''',');
        SQL.Add(''''+FormatDateTime('mm/dd/yy',ADDT2)+''',');
        SQL.Add(''''+AFDT  +'''' );
      end;
      SQL.Add(')');
      Prepare;
      Open;
    end;
  finally
    AFDT  := '';
    ADDT1 := 0;
    ADDT2 := 0;

    if Cadastro.Eof then
       oException(DBGConsulta,BBPesquisa.Caption+' não Encontrado !');
  end;
end;

procedure TFrmCAD_TRA.CadastroCalcFields(DataSet: TDataSet);
begin
  CadastroC_LOGRADOURO.Value := CadastroTLGR.AsString+' '+CadastroXLGR.AsString;
  CadastroC_CEP.Value        := LeftStr(CadastroCEP.AsString,5)+'-'+RightStr(CadastroCEP.AsString,3);
end;

procedure TFrmCAD_TRA.DBGHistoricoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGHistoricoSTCA.Index] = '1' then
    begin
      AFont.Color := clWhite;
      AColor      := $000024B3;
    end;
  end;
end;

procedure TFrmCAD_TRA.LOGAfterOpen(DataSet: TDataSet);
begin
  ContainerRodape.ActiveChildIndex := IFThen(LOG.Eof,0,1);
end;

procedure Tfrmcad_tra._Edicao(AEdicao: Word);
begin
  frmcad_tra_edi     := TFrmcad_tra_edi.Create(Self);
  frmcad_tra_edi.Tag := AEdicao;
  try frmcad_tra_edi.ShowModal;
  finally FreeAndNil(frmcad_tra_edi);
  end;
end;

procedure TFrmCAD_TRA.ACTAppendExecute(Sender: TObject);
begin
  inherited;
  _Edicao(0);
end;

procedure TFrmCAD_TRA.ACTEditExecute(Sender: TObject);
begin
  inherited;
  _Edicao(1);
end;

procedure TFrmCAD_TRA.ACTTabFreteExecute(Sender: TObject);
begin
{  if CadastroId.AsInteger > 0 then
  try
    TFrmCAD_TRA_LOG._ExecForm(Self,FrmCAD_TRA_LOG,'',CadastroId.AsInteger,'',fsNormal);
  finally
    FreeAndNil(FrmCAD_TRA_LOG);
  end;
  _ExecEvent;}
end;

end.
