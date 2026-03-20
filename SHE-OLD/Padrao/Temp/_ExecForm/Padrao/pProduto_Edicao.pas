unit pProduto_Edicao;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefaultEdicaoGrid, cxGraphics, dxExEdtr, IBCustomDataSet,
  ActnList, dxDockControl, dxBar, dxBarExtItems, ImgList, IBEvents, math, StrUtils,
  IBStoredProc, IBSQL, IBDatabase, DB, IBQuery, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, ComCtrls, dxDockPanel, ExtCtrls, dxPageControl, cxControls,
  dxStatusBar, dxEdLib, dxEditor, StdCtrls, rxSpeedbar, Buttons;

type
  TFrmProduto_Edicao = class(TFrmDefaultEdicaoGrid)
    TSFicha: TdxTabSheet;
    PNLArtigo: TPanel;
    DSArtigo: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    DPArtigo: TdxDockPanel;
    BArtigo: TBevel;
    LAArtigo: TLabel;
    LAIDEP: TLabel;
    LADescricao: TLabel;
    LATitulo: TLabel;
    LAIDCF: TLabel;
    LACDCF: TLabel;
    LAST: TLabel;
    LAIDFIN: TLabel;
    LACEANCF: TLabel;
    EDArtigo: TdxMaskEdit;
    IEIDEP: TdxImageEdit;
    EDDescricao: TdxMaskEdit;
    EDTitulo: TdxMaskEdit;
    EDCDCF: TdxMaskEdit;
    IECDST: TdxImageEdit;
    IEIDFIN: TdxImageEdit;
    EDCEANCF: TdxCurrencyEdit;
    IEIDCF: TdxImageEdit;
    PNLClassifica: TPanel;
    DSClassifica: TdxDockSite;
    dxLayoutDockSite2: TdxLayoutDockSite;
    DPClassifica: TdxDockPanel;
    TSPRECO: TdxTabSheet;
    PNLPRECO: TPanel;
    PCPRECO: TdxPageControl;
    TSPRECOATACADO: TdxTabSheet;
    BPRECOATACADO: TBevel;
    LAVUAT: TLabel;
    LAVUPRZAT: TLabel;
    LAVUPROAT: TLabel;
    LAPDSCAT: TLabel;
    LAPAJUAT: TLabel;
    CEVUAT: TdxCurrencyEdit;
    CEVUPRZAT: TdxCurrencyEdit;
    CEVUPROAT: TdxCurrencyEdit;
    CEPDSCAT: TdxCurrencyEdit;
    CEPAJUAT: TdxCurrencyEdit;
    TSPRECOVAREJO: TdxTabSheet;
    BPRECOVAREJO: TBevel;
    LAVUVA: TLabel;
    LAVUPRZVA: TLabel;
    LAVUPROVA: TLabel;
    LAPDSCVA: TLabel;
    LAPAJUVA: TLabel;
    CEVUVA: TdxCurrencyEdit;
    CEVUPRZVA: TdxCurrencyEdit;
    CEVUPROVA: TdxCurrencyEdit;
    CEPDSCVA: TdxCurrencyEdit;
    CEPAJUVA: TdxCurrencyEdit;
    TSPRECOREPRESENTANTE: TdxTabSheet;
    BPRECOREPRESENTANTE: TBevel;
    LAVURP: TLabel;
    LAVUPRZRP: TLabel;
    LAVUPRORP: TLabel;
    LAPDSCRP: TLabel;
    LAPAJURP: TLabel;
    CEVURP: TdxCurrencyEdit;
    CEVUPRZRP: TdxCurrencyEdit;
    CEVUPRORP: TdxCurrencyEdit;
    CEPDSCRP: TdxCurrencyEdit;
    CEPAJURP: TdxCurrencyEdit;
    dxTabSheet1: TdxTabSheet;
    PNLCUSTO: TPanel;
    BCUSTO: TBevel;
    LAVUCOMPRA: TLabel;
    LAVUCUSTO: TLabel;
    LAVULIBERA: TLabel;
    CEVUCOMPRA: TdxCurrencyEdit;
    CEVUCUSTO: TdxCurrencyEdit;
    CEVULIBERA: TdxCurrencyEdit;
    TSSite: TdxTabSheet;
    PNLSITE: TPanel;
    PCSITE: TdxPageControl;
    TSSITECadastro: TdxTabSheet;
    TSSITEComercial: TdxTabSheet;
    TSSITEGRADE: TdxTabSheet;
    TSSITEINFADCAD: TdxTabSheet;
    TSProduto: TdxTabSheet;
    PNLProduto: TPanel;
    PNLPEdicao: TPanel;
    GBPEdicao: TGroupBox;
    SBPEdicao: TSpeedBar;
    SSEdicao: TSpeedbarSection;
    SIPInclui: TSpeedItem;
    SIPAltera: TSpeedItem;
    SIPExclui: TSpeedItem;
    SIPSalva: TSpeedItem;
    SIPCancela: TSpeedItem;
    GBPConsulta: TGroupBox;
    DBGPConsulta: TdxDBGrid;
    TSComposicao: TdxTabSheet;
    PNLComposicao: TPanel;
    PNLCEdicao: TPanel;
    GBCEdicao: TGroupBox;
    SBCEdicao: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SICInclui: TSpeedItem;
    SICAltera: TSpeedItem;
    SICExclui: TSpeedItem;
    SICSalva: TSpeedItem;
    SICCancela: TSpeedItem;
    GBCConsulta: TGroupBox;
    DBGCConsulta: TdxDBGrid;
    PNLCadastro: TPanel;
    PNLImagem: TPanel;
    GBImagem: TGroupBox;
    IProduto: TImage;
    SBImagem: TSpeedButton;
    PNLCadastro_Medida_Fiscal: TPanel;
    PNLMEDTOP: TPanel;
    GBMEDUCOM: TGroupBox;
    LAUCOM: TLabel;
    LAUQVOL: TLabel;
    LAUESP: TLabel;
    IEIDUCOM: TdxImageEdit;
    CEUQVOL: TdxCurrencyEdit;
    EDUESP: TdxEdit;
    PNLEstoque: TPanel;
    GroupBox8: TGroupBox;
    LAIDDimensao: TLabel;
    LAAltura: TLabel;
    LALargura: TLabel;
    LAComprimento: TLabel;
    IEIDDimensao: TdxImageEdit;
    CEAltura: TdxCurrencyEdit;
    CELargura: TdxCurrencyEdit;
    CEComprimento: TdxCurrencyEdit;
    PNLMedida: TPanel;
    GBMedida: TGroupBox;
    PNLMEDME: TPanel;
    GBMEDMetragem: TGroupBox;
    LAMetro: TLabel;
    LARendimento: TLabel;
    LAGramatura: TLabel;
    CEMetro: TdxCurrencyEdit;
    CERendimento: TdxCurrencyEdit;
    CEGramatura: TdxCurrencyEdit;
    GBMEDPesagem: TGroupBox;
    LAPeso: TLabel;
    LAPSCN: TLabel;
    LAPESOB: TLabel;
    LAPESOL: TLabel;
    CEPeso: TdxCurrencyEdit;
    CEPSCN: TdxCurrencyEdit;
    CEPESOB: TdxCurrencyEdit;
    CEPESOL: TdxCurrencyEdit;
    GBMEDOUTRO: TGroupBox;
    LALARG_U: TLabel;
    LALARG_T: TLabel;
    LAENCO_C: TLabel;
    LAENCO_L: TLabel;
    LAELAS_C: TLabel;
    LAELAS_L: TLabel;
    CEELAS_C: TdxCurrencyEdit;
    CELARG_T: TdxCurrencyEdit;
    CELARG_U: TdxCurrencyEdit;
    CEENCO_C: TdxCurrencyEdit;
    CEELAS_L: TdxCurrencyEdit;
    CEENCO_L: TdxCurrencyEdit;
    PNLMEDMD: TPanel;
    GBMEDEstoque: TGroupBox;
    LAUCDBE: TLabel;
    LAUQTDE: TLabel;
    LAUEST_QTDE_MIN: TLabel;
    IEUCDBE: TdxImageEdit;
    IEUQTRL: TdxImageEdit;
    CEUQTDE: TdxCurrencyEdit;
    CEUEST_QTDE_MIN: TdxCurrencyEdit;
    GBMEDVenda: TGroupBox;
    LAUVEN_QTDE_MAX: TLabel;
    LAUVEN_QTDE_MIN: TLabel;
    LAUVEN_QTDE_MUL: TLabel;
    CEUVEN_QTDE_MAX: TdxCurrencyEdit;
    CEUVEN_QTDE_MIN: TdxCurrencyEdit;
    CEUVEN_QTDE_MUL: TdxCurrencyEdit;
    PNLFiscal: TPanel;
    GBFiscal: TGroupBox;
    LAORIG: TLabel;
    LACPAIS: TLabel;
    LANCM: TLabel;
    LATRIBIPI: TLabel;
    IEORIG: TdxImageEdit;
    IECPAIS: TdxImageEdit;
    PENCM: TdxPickEdit;
    CETRIBIPI: TdxCurrencyEdit;
    cad_pro: TIBQuery;
    cad_proID: TIntegerField;
    cad_proIDEP: TSmallintField;
    cad_proCDST: TSmallintField;
    cad_proREST: TIBStringField;
    cad_proPRO_CART: TIBStringField;
    cad_proIDJPG: TIBStringField;
    cad_proNCM: TIBStringField;
    cad_proTRIBIPI: TIBBCDField;
    cad_proPRO_CPRO: TIBStringField;
    cad_proCEAN: TIBStringField;
    cad_proPRO_DPRO: TIBStringField;
    cad_proPRO_TITU: TIBStringField;
    cad_proPRO_CGRD: TIBStringField;
    cad_proPRO_RGRD: TIBStringField;
    cad_proPRO_DGRD: TIBStringField;
    cad_proIDCOR: TSmallintField;
    cad_proRECOR: TIBStringField;
    cad_proSICOR: TIBStringField;
    cad_proESCOR: TIBStringField;
    cad_proDECOR: TIBStringField;
    cad_proIDCF: TSmallintField;
    cad_proCDCF: TIBStringField;
    cad_proCEANCF: TIBStringField;
    cad_proUCDBE: TIBStringField;
    cad_proUQTRL: TSmallintField;
    cad_proUQTDE: TSmallintField;
    cad_proUEST_QTDE_MIN: TSmallintField;
    cad_proUVEN_QTDE_MIN: TSmallintField;
    cad_proUVEN_QTDE_MAX: TSmallintField;
    cad_proUVEN_QTDE_MUL: TSmallintField;
    cad_proUCOM: TIBStringField;
    cad_proUQVOL: TSmallintField;
    cad_proUESP: TIBStringField;
    cad_proUCOM_SITE: TIBStringField;
    cad_proUQVOL_SITE: TSmallintField;
    cad_proUESP_SITE: TIBStringField;
    cad_proPRO_PESO: TIBBCDField;
    cad_proPRO_PSCN: TIBBCDField;
    cad_proUPESOB: TIBBCDField;
    cad_proUPESOL: TIBBCDField;
    cad_proPRO_METR: TIBBCDField;
    cad_proPRO_REND: TIBBCDField;
    cad_proPRO_GRAM: TIBBCDField;
    cad_proPRO_UTIL: TIBBCDField;
    cad_proPRO_LARG: TIBBCDField;
    cad_proPRO_ELAS: TIBBCDField;
    cad_proPRO_ELAC: TIBBCDField;
    cad_proPRO_ENCL: TIBBCDField;
    cad_proPRO_ENCC: TIBBCDField;
    cad_proIDDIMENSAO: TSmallintField;
    cad_proALTURA: TIBBCDField;
    cad_proLARGURA: TIBBCDField;
    cad_proCOMPRIMENTO: TIBBCDField;
    cad_proPRO_PCOM: TFloatField;
    cad_proPRO_CUST: TFloatField;
    cad_proPRO_CLIB: TFloatField;
    cad_proPRO_PREC: TFloatField;
    cad_proPRO_PPRZ: TFloatField;
    cad_proPRO_PPRO: TFloatField;
    cad_proPRO_PDSC: TIBBCDField;
    cad_proPRO_PPER: TIBBCDField;
    cad_proPRO_VPRC: TFloatField;
    cad_proPRO_VPRZ: TFloatField;
    cad_proPRO_VPRO: TFloatField;
    cad_proPRO_VDSC: TIBBCDField;
    cad_proPRO_VPER: TIBBCDField;
    cad_proPRO_RPRC: TFloatField;
    cad_proPRO_RPRZ: TFloatField;
    cad_proPRO_RPRO: TFloatField;
    cad_proPRO_RDSC: TIBBCDField;
    cad_proPRO_RPER: TIBBCDField;
    cad_proPUMARKUP_SITE: TIBBCDField;
    cad_proVU_SITE: TFloatField;
    cad_proVUPRZ_SITE: TFloatField;
    cad_proVUPRO_SITE: TFloatField;
    cad_proPUDSC_SITE: TIBBCDField;
    cad_proPUAJU_SITE: TIBBCDField;
    cad_proIDCOL: TSmallintField;
    cad_proIDSEG: TSmallintField;
    cad_proIDGRP: TSmallintField;
    cad_proIDSGP: TSmallintField;
    cad_proIDCAT: TSmallintField;
    cad_proIDSCT: TSmallintField;
    cad_proDECAT: TIBStringField;
    cad_proIDSEG_SITE: TSmallintField;
    cad_proIDGRP_SITE: TSmallintField;
    cad_proIDSGP_SITE: TSmallintField;
    cad_proIDCAT_SITE: TSmallintField;
    cad_proIDSCT_SITE: TSmallintField;
    cad_proIDMKP: TSmallintField;
    cad_proDEMKP: TIBStringField;
    cad_proIDMKP2: TSmallintField;
    cad_proDEMKP2: TIBStringField;
    cad_proIDMKP3: TSmallintField;
    cad_proDEMKP3: TIBStringField;
    cad_proPRO_DENS: TIBStringField;
    cad_proPRO_TITF: TIBStringField;
    cad_proPRO_TIPF: TIBStringField;
    cad_proPRO_REPR: TIBStringField;
    cad_proORIG: TSmallintField;
    cad_proCPAIS: TSmallintField;
    cad_proINFADCAD: TIBStringField;
    cad_proINFADTEC: TIBStringField;
    cad_proINFADCAD_SITE: TIBStringField;
    cad_proINFADTEC_SITE: TIBStringField;
    PCClassifica: TdxPageControl;
    TSClassifica: TdxTabSheet;
    TSClassifica_SITE: TdxTabSheet;
    BClassifica: TBevel;
    LAIDGRP: TLabel;
    LAIDCAT: TLabel;
    LAIDSGP: TLabel;
    LAIDSEG: TLabel;
    LAIDSCT: TLabel;
    LACOL: TLabel;
    IEIDGRP: TdxImageEdit;
    IEIDSGP: TdxImageEdit;
    IEIDCAT: TdxImageEdit;
    IEIDSEG: TdxImageEdit;
    IEIDSCT: TdxImageEdit;
    IEIDCOL: TdxImageEdit;
    Bevel1: TBevel;
    LAIDGRP_SITE: TLabel;
    LAIDCAT_SITE: TLabel;
    LAIDSGP_SITE: TLabel;
    LAIDSEG_SITE: TLabel;
    LAIDSCT_SITE: TLabel;
    IEIDGRP_SITE: TdxImageEdit;
    IEIDSGP_SITE: TdxImageEdit;
    IEIDCAT_SITE: TdxImageEdit;
    IEIDSEG_SITE: TdxImageEdit;
    IEIDSCT_SITE: TdxImageEdit;
    ACTCOR: TAction;
    ACTFornecedor: TAction;
    ACTGrupo: TAction;
    ACTColecao: TAction;
    ACTSegmento: TAction;
    ACTSub_Grupo: TAction;
    ACTCategoria: TAction;
    ACTSub_Categoria: TAction;
    ACTAplicacao: TAction;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    BLBFornecedor: TdxBarLargeButton;
    BLBCOR: TdxBarLargeButton;
    BLBColecao: TdxBarLargeButton;
    BLBSegmento: TdxBarLargeButton;
    BLBGrupo: TdxBarLargeButton;
    BLBSub_Grupo: TdxBarLargeButton;
    BLBCategoria: TdxBarLargeButton;
    BLBSub_Categoria: TdxBarLargeButton;
    IEIDTPV: TdxImageEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SIPIncluiClick(Sender: TObject);
    procedure SIPAlteraClick(Sender: TObject);
    procedure SIPExcluiClick(Sender: TObject);
    procedure SIPSalvaClick(Sender: TObject);
    procedure SIPCancelaClick(Sender: TObject);
    procedure SICIncluiClick(Sender: TObject);
    procedure SICAlteraClick(Sender: TObject);
    procedure SICExcluiClick(Sender: TObject);
    procedure SICSalvaClick(Sender: TObject);
    procedure SICCancelaClick(Sender: TObject);
    procedure ACTFornecedorExecute(Sender: TObject);
    procedure ACTCORExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto_Edicao: TFrmProduto_Edicao;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmProduto_Edicao.FormCreate(Sender: TObject);
begin
  RECPrincipal.Perfil      := 'Produtos';
  RECPrincipal.Event       := oREPZero('Produto','_',RECParametros.Id,3);
  RECPrincipal.Auto        := True;
  RECPrincipal.CDEV        := '8';
  RECPrincipal.GridOptionsBehavior := False;
  inherited;

  oOTransact(TConsulta,ltRead_Only);
  try
    with SQLConsulta do
    begin
      { ARTIGO }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.FANTASIA FROM TAB_PAR_SIS AS PK ORDER BY PK.FANTASIA');
      ExecQuery;
      while not eof do
      begin
        IEIDEP.Values.Add(Fields[0].AsString);
        IEIDEP.Descriptions.Add(Fields[1].AsString);
        Next;
      end;
      IEIDEP.Text := RECParametros.Id;

      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO AS PK WHERE PK.PRO_TIPO_FIN_VEN = 1 AND PK.REST = ''A'' ORDER BY PK.DESCRICAO');
      ExecQuery;
      while not eof do
      begin
        IEIDFIN.Values.Add(Current.Vars[0].AsString);
        IEIDFIN.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;
      IEIDFIN.Text := RECParametros.PRO_IDFIN_CAD;

      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_STA AS PK WHERE PK.CAD_EDI = 1 AND PK.REST = ''A'' ORDER BY PK.DESCRICAO');
      ExecQuery;
      while not eof do
      begin
        IECDST.Values.Add(Current.Vars[0].AsString);
        IECDST.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;
      IECDST.Text := RECParametros.STA_IDCAD;

      Close;
      SQL.Clear;
      SQL.Add('SELECT   PK.ID,TRIM(PK.FOR_FANT||IIF(PK.FOR_FANT <> PK.FOR_RAZA,'' - ''||PK.FOR_RAZA,'''')) AS DECF FROM CAD_FOR AS PK');
      SQL.Add('WHERE    FOR_STAV = ''A'' ORDER BY DECF');
      ExecQuery;
      while not eof do
      begin
        IEIDCF.Values.Add(fields[0].AsString);
        IEIDCF.Descriptions.Add(fields[1].AsString);
        next;
      end;
      IEIDCF.Text := RECParametros.IDFOR_PAD;

      { CLASSIFICAÇÕES }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_COL AS PK WHERE PK.REST = ''A'' ORDER BY PK.DESCRICAO');
      ExecQuery;
      while not eof do
      begin
        IEIDCOL.Values.Add(Current.Vars[0].AsString);
        IEIDCOL.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_SEG AS PK WHERE PK.REST = ''A'' ORDER BY PK.DESCRICAO');
      ExecQuery;
      while not eof do
      begin
        IEIDSEG.Values.Add(Current.Vars[0].AsString);
        IEIDSEG.Descriptions.Add(Current.Vars[1].AsString);
        IEIDSEG_SITE.Values.Add(Current.Vars[0].AsString);
        IEIDSEG_SITE.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_GRP AS PK WHERE PK.REST = ''A'' ORDER BY PK.DESCRICAO');
      ExecQuery;
      while not eof do
      begin
        IEIDGRP.Values.Add(Current.Vars[0].AsString);
        IEIDGRP.Descriptions.Add(Current.Vars[1].AsString);
        IEIDGRP_SITE.Values.Add(Current.Vars[0].AsString);
        IEIDGRP_SITE.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_SGP AS PK WHERE PK.REST = ''A'' ORDER BY PK.DESCRICAO');
      ExecQuery;
      while not eof do
      begin
        IEIDSGP.Values.Add(Current.Vars[0].AsString);
        IEIDSGP.Descriptions.Add(Current.Vars[1].AsString);
        IEIDSGP_SITE.Values.Add(Current.Vars[0].AsString);
        IEIDSGP_SITE.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_CAT AS PK WHERE PK.REST = ''A'' ORDER BY PK.DESCRICAO');
      ExecQuery;
      while not eof do
      begin
        IEIDCAT.Values.Add(Current.Vars[0].AsString);
        IEIDCAT.Descriptions.Add(Current.Vars[1].AsString);
        IEIDCAT_SITE.Values.Add(Current.Vars[0].AsString);
        IEIDCAT_SITE.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_SCT AS PK WHERE PK.ID > 0 ORDER BY PK.DESCRICAO');
      ExecQuery;
      while not eof do
      begin
        IEIDSCT.Values.Add(Current.Vars[0].AsString);
        IEIDSCT.Descriptions.Add(Current.Vars[1].AsString);
        IEIDSCT_SITE.Values.Add(Current.Vars[0].AsString);
        IEIDSCT_SITE.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

      { UNIDADES }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_UCOM AS PK WHERE PK.REST = ''A'' ORDER BY PK.DESCRICAO');
      ExecQuery;
      while not eof do
      begin
        IEIDUCOM.Values.Add(Current.Vars[0].AsString);
        IEIDUCOM.Descriptions.Add(Current.Vars[1].AsString);
//        IEIDUCOM_SITE.Values.Add(Current.Vars[0].AsString);
//        IEIDUCOM_SITE.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

      { VOLUMETRIA }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.REFERENCIA||'' - ''||PK.UCM||''x''||PK.UCM2||''x''||PK.UCM3||''x''||PK.VOLUME||''x''||ITEM AS DESCRICAO FROM TAB_DIM AS PK WHERE PK.REST = ''A'' ORDER BY PK.DESCRICAO');
      ExecQuery;
      while not eof do
      begin
        IEIDDIMENSAO.Values.Add(Current.Vars[0].AsString);
        IEIDDIMENSAO.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

      { ESTOQUE
        TIPO DE VENDA }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO AS PK WHERE PK.PRO_TIPO_EST_VEN = 1 AND PK.REST = ''A'' ORDER BY PK.DESCRICAO');
      ExecQuery;
      while not eof do
      begin
        IEIDTPV.Values.Add(Current.Vars[0].AsString);
        IEIDTPV.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;
      IEIDTPV.Text := RECParametros.PRO_IDFIN_EST;

    end;
  finally
    oCTransact(TConsulta);
  end;
end;

procedure TFrmProduto_Edicao.SIPIncluiClick(Sender: TObject);
begin
  ACTAppend.Execute;
end;

procedure TFrmProduto_Edicao.SIPAlteraClick(Sender: TObject);
begin
  ACTEdit.Execute;
end;

procedure TFrmProduto_Edicao.SIPExcluiClick(Sender: TObject);
begin
  ACTDelete.Execute;
end;

procedure TFrmProduto_Edicao.SIPSalvaClick(Sender: TObject);
begin
  ACTPost.Execute;
end;

procedure TFrmProduto_Edicao.SIPCancelaClick(Sender: TObject);
begin
  ACTCancel.Execute;
end;

procedure TFrmProduto_Edicao.SICIncluiClick(Sender: TObject);
begin
  ACTAppend.Execute;
end;

procedure TFrmProduto_Edicao.SICAlteraClick(Sender: TObject);
begin
  ACTEdit.Execute;
end;

procedure TFrmProduto_Edicao.SICExcluiClick(Sender: TObject);
begin
  ACTDelete.Execute;
end;

procedure TFrmProduto_Edicao.SICSalvaClick(Sender: TObject);
begin
  ACTPost.Execute;
end;

procedure TFrmProduto_Edicao.SICCancelaClick(Sender: TObject);
begin
  ACTCancel.Execute;
end;

procedure TFrmProduto_Edicao.ACTFornecedorExecute(Sender: TObject);
begin
  inherited;
  uEmConstrucao;
end;

procedure TFrmProduto_Edicao.ACTCORExecute(Sender: TObject);
begin
  FrmPrincipal.acttab_cor.Execute;
end;

end.
