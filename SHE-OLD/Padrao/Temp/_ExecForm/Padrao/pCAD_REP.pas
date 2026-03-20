unit pCAD_REP;

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
  TFrmCAD_REP = class(TFrmDefaultConsultaGrid)
    DSRodape: TdxDockSite;
    ILDockIcons: TImageList;
    DPContato: TdxDockPanel;
    LayoutRodape: TdxLayoutDockSite;
    DPPedidos: TdxDockPanel;
    DPProgramados: TdxDockPanel;
    ContainerRodape: TdxTabContainerDockSite;
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
    CadastroC_CEP: TStringField;
    PP: TIBQuery;
    DTSPP: TDataSource;
    CL: TIBQuery;
    DTSCL: TDataSource;
    dxLayoutDockSite2: TdxLayoutDockSite;
    PV: TIBQuery;
    DTSPV: TDataSource;
    CadastroID: TSmallintField;
    CadastroFANTASIA: TIBStringField;
    CadastroRAZAO_SOCIAL: TIBStringField;
    CadastroDTCA: TDateField;
    CadastroDTFU: TDateField;
    CadastroDTMV: TDateField;
    CadastroCNPJ: TIBStringField;
    CadastroIE: TIBStringField;
    CadastroINDIEDEST: TIBStringField;
    CadastroREGIMETRIB: TIBStringField;
    CadastroCREDICMS: TIBStringField;
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
    CadastroCEP: TIBStringField;
    CadastroXBAIRRO: TIBStringField;
    CadastroXMUN: TIBStringField;
    CadastroCMUN: TIBStringField;
    CadastroUF: TIBStringField;
    CadastroLE_TLGR: TIBStringField;
    CadastroLE_XLGR: TIBStringField;
    CadastroLE_NRO: TIBStringField;
    CadastroLE_XCPL: TIBStringField;
    CadastroLE_CEP: TIBStringField;
    CadastroLE_XBAIRRO: TIBStringField;
    CadastroLE_XMUN: TIBStringField;
    CadastroLE_CMUN: TIBStringField;
    CadastroLE_UF: TIBStringField;
    CadastroCPAIS: TSmallintField;
    CadastroXPAIS: TIBStringField;
    CadastroINFADCAD: TIBStringField;
    CadastroINFADFIN: TIBStringField;
    CadastroIDST: TSmallintField;
    CadastroDEST: TIBStringField;
    DPClientes: TdxDockPanel;
    PVCLIENTE: TIBStringField;
    PVCDPV: TIBStringField;
    PVCDNF: TIntegerField;
    PVPRODUTO: TIBStringField;
    PVUNIDADE: TIBStringField;
    PVQTPV: TIBBCDField;
    PVVUPV: TFloatField;
    PVVTPV: TIBBCDField;
    PVEMPRESA: TIBStringField;
    DBGPV: TdxDBGrid;
    PVID: TIntegerField;
    DBGPVCLIENTE: TdxDBGridMaskColumn;
    DBGPVCDPV: TdxDBGridMaskColumn;
    DBGPVCDNF: TdxDBGridMaskColumn;
    DBGPVPRODUTO: TdxDBGridMaskColumn;
    DBGPVUNIDADE: TdxDBGridMaskColumn;
    DBGPVQTPV: TdxDBGridMaskColumn;
    DBGPVVUPV: TdxDBGridMaskColumn;
    DBGPVVTPV: TdxDBGridMaskColumn;
    DBGPVEMPRESA: TdxDBGridMaskColumn;
    DBGConsultaDTUTPD: TdxDBGridDateColumn;
    PPID: TIntegerField;
    PPCLIENTE: TIBStringField;
    PPCDPV: TIBStringField;
    PPPRODUTO: TIBStringField;
    PPUNIDADE: TIBStringField;
    PPQTPV: TIBBCDField;
    PPVUPV: TFloatField;
    PPVTPV: TIBBCDField;
    PPEMPRESA: TIBStringField;
    DBGPP: TdxDBGrid;
    DBGPPCLIENTE: TdxDBGridMaskColumn;
    DBGPPCDPV: TdxDBGridMaskColumn;
    DBGPPPRODUTO: TdxDBGridMaskColumn;
    DBGPPUNIDADE: TdxDBGridMaskColumn;
    DBGPPQTPV: TdxDBGridMaskColumn;
    DBGPPVUPV: TdxDBGridMaskColumn;
    DBGPPVTPV: TdxDBGridMaskColumn;
    DBGPPEMPRESA: TdxDBGridMaskColumn;
    PPSTFI: TIBStringField;
    DBGPPSTFI: TdxDBGridMaskColumn;
    PVSTCO: TIBStringField;
    PVSTPD: TIBStringField;
    PVSTFI: TIBStringField;
    DBGPVSTCO: TdxDBGridMaskColumn;
    DBGPVSTPD: TdxDBGridMaskColumn;
    DBGPVSTFI: TdxDBGridMaskColumn;
    PVPRAZO: TIBStringField;
    DBGPVPRAZO: TdxDBGridMaskColumn;
    PPSTCO: TIBStringField;
    PPPRAZO: TIBStringField;
    PPSTPD: TIBStringField;
    DBGPPSTCO: TdxDBGridMaskColumn;
    DBGPPPRAZO: TdxDBGridMaskColumn;
    PVARTIGO: TIBStringField;
    DBGPVARTIGO: TdxDBGridMaskColumn;
    PPARTIGO: TIBStringField;
    DBGPPARTIGO: TdxDBGridMaskColumn;
    PVCPROD: TIBStringField;
    PPCPROD: TIBStringField;
    CLFANTASIA: TIBStringField;
    CLRAZAO_SOCIAL: TIBStringField;
    CLDTCA: TDateField;
    CLDTMV: TDateField;
    DBGCL: TdxDBGrid;
    DBGCLFANTASIA: TdxDBGridMaskColumn;
    DBGCLRAZAO_SOCIAL: TdxDBGridMaskColumn;
    DBGCLDTCA: TdxDBGridDateColumn;
    DBGCLDTMV: TdxDBGridDateColumn;
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
    CadastroDTUTPD: TDateTimeField;
    PVDTNF: TDateTimeField;
    PVDTPV: TDateTimeField;
    DBGPVDTPV: TdxDBGridDateColumn;
    DBGPVDTNF: TdxDBGridDateColumn;
    PPDTPV: TDateTimeField;
    DBGPPDTPV: TdxDBGridDateColumn;
    procedure FormCreate(Sender: TObject);
    procedure ACTPesquisaFantasiaExecute(Sender: TObject);
    procedure ACTPesquisaRazaoSocialExecute(Sender: TObject);
    procedure ACTPesquisaCNPJExecute(Sender: TObject);
    procedure BBPesquisaClick(Sender: TObject);
    procedure BEPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure ACTAppendExecute(Sender: TObject);
    procedure ACTEditExecute(Sender: TObject);
    procedure DBGPVCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGPPCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSPVDataChange(Sender: TObject; Field: TField);
    procedure DTSPPDataChange(Sender: TObject; Field: TField);
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
  FrmCAD_REP: TFrmCAD_REP;

implementation

uses pcad_rep_edi;

{$R *.dfm}

procedure TFrmCAD_REP.FormCreate(Sender: TObject);
begin
  { ADMIN }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_REP_ADM'; { Eventos }

  { GRANT }
  REC_SHE_DEF.GDescricao  := 'Representantes';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;

  DSRodape.Height := IFThen(Screen.Height > 768,350,250);
  ContainerRodape.ActiveChildIndex := 0;

  with PV do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   FK.ID,');
    SQL.Add('         CL.CLI_FANT AS CLIENTE,');
    SQL.Add('         PK.ROM_DERO AS CDPV,PK.DTCA AS DTPV,COALESCE(PK.ROM_CDNF,0) AS CDNF,PK.DTNF,');
    SQL.Add('         CP.PRO_CART AS ARTIGO,CP.PRO_CPRO AS CPROD,CP.PRO_CPRO||'' - ''||CP.PRO_DPRO||'' ''||TRIM(COALESCE(CP.DEGRD,'''')||'' ''||TRIM(COALESCE(CP.DECOR,'''')||'' ''||TRIM(COALESCE(CP.CDGRD,'''')||'' ''||TRIM(COALESCE(CP.REGRD,''''))))) AS PRODUTO,');
    SQL.Add('         FK.ROM_DUNI AS UNIDADE,FK.ROM_QTDE AS QTPV,FK.ROM_UNIT AS VUPV,IIF(PK.ROM_STPD = ''DEVOLUÇÃO'',FK.ROM_TOTA*-1,FK.ROM_TOTA) AS VTPV,');
    SQL.Add('         PK.ROM_STCO AS STCO,PRZ.PAG_DPAG AS PRAZO,');
    SQL.Add('         PK.ROM_STPD AS STPD,PK.ROM_STFI  AS STFI,');
    SQL.Add('         PS.FANTASIA AS EMPRESA');
    SQL.Add('FROM   '+SLPrincipal.Values['ped_ven_cab']+' AS PK');
    SQL.Add('JOIN   '+SLPrincipal.Values['ped_ven_ite']+' AS FK ON (FK.IDPK = PK.ID)');
    SQL.Add('JOIN     CAD_CLI     AS CL  ON (CL.ID  = PK.IDCD)');
    SQL.Add('JOIN     TAB_PAG     AS PRZ ON (PRZ.ID = PK.CDPG)');
    SQL.Add('JOIN     CAD_PRO     AS CP  ON (CP.ID  = FK.IDCP)');
    SQL.Add('JOIN     TAB_PAR_SIS AS PS  ON (PS.ID  = CP.IDEP)');
    SQL.Add('WHERE    PK.IDCR = :ID');
    SQL.Add('AND     (CAST(PK.DTCA AS DATE) BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) OR');
    SQL.Add('         CAST(PK.DTNF AS DATE) BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) OR');
    SQL.Add('         CAST(PK.DTBX AS DATE) BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) OR');
    SQL.Add('         PK.REST = ''EXP'' OR PK.REST = ''PEN'')');
    SQL.Add('ORDER BY PK.DTCA DESC');
    Prepare;
  end;

  with PP do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   FK.ID,');
    SQL.Add('         CL.CLI_FANT AS CLIENTE,');
    SQL.Add('         PK.ROM_DERO AS CDPV,PK.DTCA AS DTPV,');
    SQL.Add('         CP.PRO_CART AS ARTIGO,CP.PRO_CPRO AS CPROD,CP.PRO_CPRO||'' - ''||CP.PRO_DPRO||'' ''||TRIM(COALESCE(CP.DEGRD,'''')||'' ''||TRIM(COALESCE(CP.DECOR,'''')||'' ''||TRIM(COALESCE(CP.CDGRD,'''')||'' ''||TRIM(COALESCE(CP.REGRD,''''))))) AS PRODUTO,');
    SQL.Add('         FK.ROM_DUNI AS UNIDADE,FK.ROM_QTDE AS QTPV,FK.ROM_UNIT AS VUPV,IIF(PK.ROM_STPD = ''DEVOLUÇÃO'',FK.ROM_TOTA*-1,FK.ROM_TOTA) AS VTPV,');
    SQL.Add('         PK.ROM_STCO AS STCO,PRZ.PAG_DPAG AS PRAZO,');
    SQL.Add('         PK.ROM_STPD AS STPD,PK.ROM_STFI  AS STFI,');
    SQL.Add('         PS.FANTASIA AS EMPRESA');
    SQL.Add('FROM   '+SLPrincipal.Values['ped_prg_cab']+' AS PK');
    SQL.Add('JOIN   '+SLPrincipal.Values['ped_prg_ite']+' AS FK ON (FK.IDPK = PK.ID)');
    SQL.Add('JOIN     CAD_CLI     AS CL  ON (CL.ID  = PK.IDCD)');
    SQL.Add('JOIN     TAB_PAG     AS PRZ ON (PRZ.ID = PK.CDPG)');
    SQL.Add('JOIN     CAD_PRO     AS CP  ON (CP.ID  = FK.IDCP)');
    SQL.Add('JOIN     TAB_PAR_SIS AS PS  ON (PS.ID  = CP.IDEP)');
    SQL.Add('WHERE    PK.IDCR = :ID');
    SQL.Add('AND     (CAST(PK.DTCA AS DATE) BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) OR');
    SQL.Add('         PK.REST = ''PEN'')');
    SQL.Add('ORDER BY PK.DTCA DESC');
    Prepare;
  end;

  with CL do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   CL.CLI_FANT AS FANTASIA,CL.CLI_RAZA AS RAZAO_SOCIAL,CL.CLI_DCAD AS DTCA,CL.CLI_DULT AS DTMV');
    SQL.Add('FROM '  +SLPrincipal.Values['ped_ven_cab']+' AS PV ');
    SQL.Add('JOIN     CAD_CLI     AS CL ON (CL.ID = PV.ROM_CCLI)');
    SQL.Add('WHERE    PV.ROM_CREP = :ID');
    SQL.Add('GROUP BY 1,2,3,4');
    Prepare;
  end;

  with Cadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CR.* FROM SP_PSQ_CAD_REP(''TODOS'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,''CP.DTUTPP DESC'') AS CR');

    SQL.Add('WHERE (CAST(CR.DTCA   AS DATE) BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) ');
    SQL.Add('OR     CAST(CR.DTMV   AS DATE) BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))) ');
    SQL.Add('OR     CAST(CR.DTUTPD AS DATE) BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DATE))))');

    if RECUsuarios.Grupo = 'VEN' then
       SQL.Add('AND CR.IDCV = ''' + RECUsuarios.Id + '''');

    Prepare;
    Open;
  end;
end;

procedure TFrmCAD_REP.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if PV.State = dsInactive then
     PV.Open;
  if PP.State = dsInactive then
     PP.Open;
  if CL.State = dsInactive then
     CL.Open;

  DBGConsulta.FocusedColumn := 1;
end;

procedure TFrmCAD_REP.ACTPesquisaFantasiaExecute(Sender: TObject);
begin
  BBPesquisa.Caption := ACTPEsquisaFantasia.Caption;
  _Pesquisa;
end;

procedure TFrmCAD_REP.ACTPesquisaRazaoSocialExecute(Sender: TObject);
begin
  BBPesquisa.Caption := ACTPesquisaRazaoSocial.Caption;
  _Pesquisa;
end;

procedure TFrmCAD_REP.ACTPesquisaCNPJExecute(Sender: TObject);
begin
  BBPesquisa.Caption := ACTPesquisaCNPJ.Caption;
  _Pesquisa;
end;

procedure TFrmCAD_REP.BBPesquisaClick(Sender: TObject);
begin
  _Pesquisa;
end;

procedure TFrmCAD_REP.BEPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
     _Pesquisa;
end;

procedure TFrmCAD_REP._Pesquisa;
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
      SQL.Add('SELECT * FROM SP_PSQ_CAD_REP(');
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

procedure TFrmCAD_REP.CadastroCalcFields(DataSet: TDataSet);
begin
  CadastroC_LOGRADOURO.Value := CadastroTLGR.AsString+' '+CadastroXLGR.AsString;
  CadastroC_CEP.Value        := LeftStr(CadastroCEP.AsString,5)+'-'+RightStr(CadastroCEP.AsString,3);
end;

procedure TFrmCAD_REP._Edicao(AEdicao: Word);
begin
  frmcad_rep_edi     := Tfrmcad_rep_edi.Create(Self);
  frmcad_rep_edi.Tag := AEdicao;
  try frmcad_rep_edi.ShowModal;
  finally FreeAndNil(frmcad_rep_edi);
  end;
end;

procedure TFrmCAD_REP.ACTAppendExecute(Sender: TObject);
begin
  inherited;
  _Edicao(0);
end;

procedure TFrmCAD_REP.ACTEditExecute(Sender: TObject);
begin
  inherited;
  _Edicao(1);
end;

procedure TFrmCAD_REP.DBGPVCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGPVSTFI.Index] = 'FATURADO' then
    begin
      if Pos(ANode.Values[DBGPVSTPD.Index],'ABATIMENTODEVOLUÇÃO') = 0 then
      AFont.Color := clBlack else
      AFont.Color := $000024B3;
      AColor      := $00C4FFC4;
    end else
    if Pos('AGUARDANDO',ANode.Values[DBGPVSTFI.Index]) > 0 then
    begin
      AFont.Color := clBlack;
      AColor      := $0080FFFF;
    end else
    if ANode.Values[DBGPVSTFI.Index] = 'PENDENTE' then
    begin
      AFont.Color := clBlack;
      AColor      := clWhite;
    end else
    if ANode.Values[DBGPVSTFI.Index] = 'SEPARANDO' then
    begin
      AFont.Color := clWhite;
      AColor      := clBlack;
    end else
    begin
      AFont.Color := clWhite;
      AColor      := $000024B3;
    end;

    if (AColumn = DBGPVCLIENTE) or (AColumn = DBGPVCDPV) or (AColumn = DBGPVDTPV) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
    end;

    if (AColumn = DBGPVCDNF) or (AColumn = DBGPVDTNF) then
    begin
      AColor      := clBtnFace;
      AFont.Color := clBlack;

      if ANode.Values[DBGPVCDNF.Index] > 0 then
         AFont.Style := [fsBold];
    end;
  end;
end;

procedure TFrmCAD_REP.DBGPPCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGPPSTFI.Index] = 'PENDENTE' then
    begin
      AColor      := clWhite;
      AFont.Color := clBlack;
    end;

    if (AColumn = DBGPPCLIENTE) or (AColumn = DBGPPCDPV) or (AColumn = DBGPPDTPV) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure TFrmCAD_REP.DTSPVDataChange(Sender: TObject; Field: TField);
begin
  DBGPVARTIGO.Visible := (PVArtigo.AsString <> PVCPROD.AsString);
end;

procedure TFrmCAD_REP.DTSPPDataChange(Sender: TObject; Field: TField);
begin
  DBGPPARTIGO.Visible := (PPArtigo.AsString <> PPCPROD.AsString);
end;

end.
