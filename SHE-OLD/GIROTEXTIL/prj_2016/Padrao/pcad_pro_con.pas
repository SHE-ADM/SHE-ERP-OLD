unit pcad_pro_con;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxExEdtr, dxEdLib,
  StdCtrls, ExtCtrls, DB, IBCustomDataSet, IBQuery, ComCtrls,jpeg, FMTBcd,
  IBDatabase, dxPageControl, DBCtrls, ImgList, Buttons,  math, rxSpeedbar,
  dxDBELib;

type
  Tfrmcad_pro_con = class(TForm)
    Cadastro: TIBQuery;
    DTSCadastro: TDataSource;
    TCadastro: TIBTransaction;
    PNLRodape: TPanel;
    PNLPrincipal: TPanel;
    SBMenu: TSpeedBar;
    SSMenu: TSpeedbarSection;
    SIMRefresh: TSpeedItem;
    SIMPesquisa: TSpeedItem;
    SIMSaida: TSpeedItem;
    PNLDetalhe: TPanel;
    GBDetalhes: TGroupBox;
    Label2: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    DBText2: TDBText;
    Label4: TLabel;
    DBText3: TDBText;
    Label5: TLabel;
    DBText4: TDBText;
    Label6: TLabel;
    DBText5: TDBText;
    Label8: TLabel;
    DBText7: TDBText;
    Label10: TLabel;
    DBText9: TDBText;
    Label13: TLabel;
    DBText11: TDBText;
    Label14: TLabel;
    DBText12: TDBText;
    Label15: TLabel;
    DBText14: TDBText;
    Label16: TLabel;
    DBText15: TDBText;
    Label17: TLabel;
    DBText16: TDBText;
    Label18: TLabel;
    DBText17: TDBText;
    Label19: TLabel;
    DBText18: TDBText;
    Label20: TLabel;
    DBText19: TDBText;
    PNLFotos: TPanel;
    GBFotos: TGroupBox;
    IFoto: TImage;
    GBConsulta: TGroupBox;
    DBGConsulta: TdxDBGrid;
    DBGConsultaPRO_CPRO: TdxDBGridMaskColumn;
    DBGConsultaPRO_CCLF: TdxDBGridMaskColumn;
    DBGConsultaPRO_DCOR: TdxDBGridMaskColumn;
    DBGConsultaPRO_CART: TdxDBGridMaskColumn;
    ILMenu: TImageList;
    ILEdicao: TImageList;
    CadastroID: TIntegerField;
    CadastroPRO_CBAR: TIBStringField;
    CadastroPRO_CFOR: TIBStringField;
    CadastroPRO_CART: TIBStringField;
    CadastroPRO_CPRO: TIBStringField;
    CadastroPRO_CCOR: TIntegerField;
    CadastroPRO_PCOR: TIBStringField;
    CadastroPRO_DCOR: TIBStringField;
    CadastroPRO_DUNI: TIBStringField;
    CadastroPRO_GRAD: TIBStringField;
    CadastroPRO_COMP: TIBStringField;
    CadastroPRO_DPRO: TIBStringField;
    CadastroPRO_DPR2: TIBStringField;
    CadastroPRO_DPR3: TIBStringField;
    CadastroPRO_DPR4: TIBStringField;
    CadastroPRO_DPR5: TIBStringField;
    CadastroPRO_CDEP: TIntegerField;
    CadastroPRO_DEEP: TIBStringField;
    CadastroPRO_CDFO: TIntegerField;
    CadastroPRO_DEFO: TIBStringField;
    CadastroPRO_CCOL: TIntegerField;
    CadastroPRO_DCOL: TIBStringField;
    CadastroPRO_CGRP: TIntegerField;
    CadastroPRO_DGRP: TIBStringField;
    CadastroPRO_CCAT: TIntegerField;
    CadastroPRO_DCAT: TIBStringField;
    CadastroPRO_PREC: TFloatField;
    CadastroPRO_PPRO: TFloatField;
    CadastroPRO_PDSC: TIBBCDField;
    CadastroPRO_VPRC: TFloatField;
    CadastroPRO_VPRO: TFloatField;
    CadastroPRO_VDSC: TIBBCDField;
    CadastroPRO_RPRC: TFloatField;
    CadastroPRO_RPRO: TFloatField;
    CadastroPRO_RDSC: TIBBCDField;
    CadastroPRO_APRC: TIBStringField;
    CadastroPRO_LDSC: TIBBCDField;
    CadastroPRO_CUST: TFloatField;
    CadastroPRO_PCOM: TFloatField;
    CadastroPRO_CLIB: TFloatField;
    CadastroPRO_PIPI: TSmallintField;
    CadastroPRO_CCLF: TIBStringField;
    CadastroPRO_CCST: TIBStringField;
    CadastroPRO_DORI: TIBStringField;
    CadastroPRO_REPR: TIBStringField;
    CadastroPRO_METR: TIBBCDField;
    CadastroPRO_REND: TIBBCDField;
    CadastroPRO_PESO: TIBBCDField;
    CadastroPRO_PSCN: TIBBCDField;
    CadastroPRO_PSMR: TIBBCDField;
    CadastroPRO_STLN: TIBStringField;
    CadastroPRO_LARG: TIBBCDField;
    CadastroPRO_GRAM: TIBBCDField;
    CadastroPRO_UTIL: TIBBCDField;
    CadastroPRO_DENS: TIBStringField;
    CadastroPRO_TITF: TIBStringField;
    CadastroPRO_APRO: TMemoField;
    CadastroPRO_OBSE: TMemoField;
    CadastroPRO_OBSF: TMemoField;
    CadastroPRO_STA: TIBStringField;
    CadastroPRO_STAV: TIBStringField;
    CadastroPRO_FOTO: TBlobField;
    CadastroPRO_FOT2: TBlobField;
    CadastroPRO_FOT3: TBlobField;
    CadastroPRO_FOT4: TBlobField;
    CadastroPRO_FOT5: TBlobField;
    CadastroPRO_FOT6: TBlobField;
    CadastroPRO_FOT7: TBlobField;
    CadastroPRO_FOT8: TBlobField;
    CadastroPRO_INS1: TBlobField;
    CadastroPRO_INS2: TBlobField;
    CadastroPRO_INS3: TBlobField;
    CadastroPRO_INS4: TBlobField;
    CadastroPRO_INS5: TBlobField;
    CadastroPRO_INS6: TBlobField;
    CadastroPRO_INS7: TBlobField;
    CadastroPRO_INS8: TBlobField;
    CadastroC_DCST: TStringField;
    CadastroC_STAV: TStringField;
    CadastroC_QEST: TFloatField;
    CadastroC_REST: TIntegerField;
    CadastroC_QRES: TFloatField;
    CadastroC_RRES: TIntegerField;
    CadastroC_QSEP: TFloatField;
    CadastroC_RSEP: TIntegerField;
    CadastroC_QDIS: TFloatField;
    CadastroC_RDIS: TIntegerField;
    CadastroC_QDEF: TFloatField;
    CadastroC_RDEF: TIntegerField;
    CadastroC_QCOM: TFloatField;
    CadastroC_RCOM: TIntegerField;
    CadastroC_QPRG: TFloatField;
    CadastroC_RPRG: TIntegerField;
    CadastroC_QSLD: TFloatField;
    CadastroC_RSLD: TIntegerField;
    DBGConsultaC_QDIS: TdxDBGridColumn;
    DBGConsultaC_RDIS: TdxDBGridColumn;
    Consulta: TIBQuery;
    DBGConsultaPRO_DPRO: TdxDBGridMaskColumn;
    DBGConsultaPRO_DUNI: TdxDBGridMaskColumn;
    PNLInfoAdicional: TPanel;
    GBInfoAdicional: TGroupBox;
    DBInfoAdicional: TdxDBMemo;
    GBLavagem: TGroupBox;
    Bevel4: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    DBImage1: TDBImage;
    DBImage2: TDBImage;
    DBImage3: TDBImage;
    DBImage4: TDBImage;
    DBImage5: TDBImage;
    DBImage6: TDBImage;
    DBImage7: TDBImage;
    DBGConsultaPRO_PREC: TdxDBGridMaskColumn;
    DBGConsultaPRO_VPRC: TdxDBGridMaskColumn;
    DBGConsultaPRO_RPRC: TdxDBGridMaskColumn;
    DBText6: TDBText;
    CadastroPRO_QEST: TIBBCDField;
    CadastroPRO_REST: TIntegerField;
    CadastroPRO_QRES: TIBBCDField;
    CadastroPRO_RRES: TIntegerField;
    CadastroPRO_QSEP: TIBBCDField;
    CadastroPRO_RSEP: TIntegerField;
    CadastroPRO_QCOM: TIBBCDField;
    CadastroPRO_RCOM: TIntegerField;
    CadastroPRO_QPRG: TIBBCDField;
    CadastroPRO_RPRG: TIntegerField;
    CadastroPRO_QDEF: TIBBCDField;
    CadastroPRO_RDEF: TIntegerField;
    CadastroPRO_QEST2: TIBBCDField;
    CadastroPRO_REST2: TIntegerField;
    CadastroPRO_QEST3: TIBBCDField;
    CadastroPRO_REST3: TIntegerField;
    CadastroPRO_QEST4: TIBBCDField;
    CadastroPRO_REST4: TIntegerField;
    CadastroPRO_QEST5: TIBBCDField;
    CadastroPRO_REST5: TIntegerField;
    CadastroPRO_QEST6: TIBBCDField;
    CadastroPRO_REST6: TIntegerField;
    CadastroPRO_QEST7: TIBBCDField;
    CadastroPRO_REST7: TIntegerField;
    CadastroPRO_QEST8: TIBBCDField;
    CadastroPRO_REST8: TIntegerField;
    CadastroPRO_QEST9: TIBBCDField;
    CadastroPRO_REST9: TIntegerField;
    CadastroPRO_QRES2: TIBBCDField;
    CadastroPRO_RRES2: TIntegerField;
    CadastroPRO_QRES3: TIBBCDField;
    CadastroPRO_RRES3: TIntegerField;
    CadastroPRO_QRES4: TIBBCDField;
    CadastroPRO_RRES4: TIntegerField;
    CadastroPRO_QRES5: TIBBCDField;
    CadastroPRO_RRES5: TIntegerField;
    CadastroPRO_QRES6: TIBBCDField;
    CadastroPRO_RRES6: TIntegerField;
    CadastroPRO_QRES7: TIBBCDField;
    CadastroPRO_RRES7: TIntegerField;
    CadastroPRO_QRES8: TIBBCDField;
    CadastroPRO_RRES8: TIntegerField;
    CadastroPRO_QRES9: TIBBCDField;
    CadastroPRO_RRES9: TIntegerField;
    CadastroPRO_QSEP2: TIBBCDField;
    CadastroPRO_RSEP2: TIntegerField;
    CadastroPRO_QSEP3: TIBBCDField;
    CadastroPRO_RSEP3: TIntegerField;
    CadastroPRO_QSEP4: TIBBCDField;
    CadastroPRO_RSEP4: TIntegerField;
    CadastroPRO_QSEP5: TIBBCDField;
    CadastroPRO_RSEP5: TIntegerField;
    CadastroPRO_QSEP6: TIBBCDField;
    CadastroPRO_RSEP6: TIntegerField;
    CadastroPRO_QSEP7: TIBBCDField;
    CadastroPRO_RSEP7: TIntegerField;
    CadastroPRO_QSEP8: TIBBCDField;
    CadastroPRO_RSEP8: TIntegerField;
    CadastroPRO_QSEP9: TIBBCDField;
    CadastroPRO_RSEP9: TIntegerField;
    CadastroPRO_QPRD: TIBBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DBGConsultaDblClick(Sender: TObject);
    procedure DTSCadastroDataChange(Sender: TObject; Field: TField);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure SIMPesquisaClick(Sender: TObject);
    procedure SIMRefreshClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SIMSaidaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FrmStyle   : TFormStyle;
    FrmPosition: TPosition;
  public
    { Public declarations }
    Editado: Boolean;
  end;

var
  frmcad_pro_con: Tfrmcad_pro_con;

implementation

uses uPrincipal, bDados, 
  ppesquisa, pven_ped, pven_oca, pent_pro, pven_nfe;

{$R *.dfm}

procedure Tfrmcad_pro_con.FormCreate(Sender: TObject);
begin
  oOTransact(TCadastro);
  cadastro.Open;
end;

procedure Tfrmcad_pro_con.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmcad_pro_con.FormDestroy(Sender: TObject);
begin
  OnDestroy := Nil;
  oFTransact(TCadastro);
  frmcad_pro_con := Nil;
end;

procedure Tfrmcad_pro_con.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: SIMSaida.Click;
       118      : SIMPesquisa.Click;
       116      : SIMRefresh.Click;
  end;     
end;

procedure Tfrmcad_pro_con.FormShow(Sender: TObject);
begin
  { Herança }
  FrmStyle    := FormStyle;
  FrmPosition := Position;
end;

procedure Tfrmcad_pro_con.FormPaint(Sender: TObject);
var
  R: TRect;
begin
  if (Showing) and ((HelpContext = 0) or (HelpContext = 1)) then
  begin
    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,R);

    if (FrmPosition = poDefault) and (AlphaBlendValue <> 0) then
    begin
      Top    := IFThen(FrmStyle    = fsNormal ,R.Top ,0);
      Left   := IFThen(FrmStyle    = fsNormal ,R.Left,0);
      Width  := IFThen(FrmPosition = poDefault,R.Right -R.Left-5,0);
      Height := IFThen(FrmPosition = poDefault,R.Bottom-R.Top -5,0);
    end else
    begin
      Width  := IFThen(Screen.Height > 768,1020,916);
      Height := IFThen(Screen.Height > 768, 665,630);

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

procedure Tfrmcad_pro_con.FormResize(Sender: TObject);
begin
  if frmcad_pro_con <> Nil then
  Paint;
end;

procedure Tfrmcad_pro_con.SIMRefreshClick(Sender: TObject);
begin
  oRTransact(TCadastro);
end;

procedure Tfrmcad_pro_con.SIMPesquisaClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(Nil);
  try
    frmpesquisa.Tag          := 1;
    frmpesquisa.cbCAMPO.Text := 'Referencia';
    if RECParametros.Fantasia = 'OTIMOTEX FARDO' then
    frmpesquisa.cbCAMPO.Text := 'NCM';
    frmpesquisa.cbDATA.Text  := 'Cadastro';
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      if (edTXT.Text = '') and (dxdt1.Date < 0) then
      {nothing} else
      with cadastro do
      begin
        oCTransact(TCadastro);
        oOTransact(TCadastro);
        
        SQL.Clear;
        SQL.Add('SELECT CAD_PRO.ID          ,CAD_PRO.PRO_CBAR    ,CAD_PRO.PRO_CFOR    ,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,');
        SQL.Add('       CAD_PRO.PRO_CCOR    ,CAD_PRO.PRO_PCOR    ,CAD_PRO.PRO_DCOR    ,CAD_PRO.PRO_DUNI    ,CAD_PRO.PRO_GRAD,CAD_PRO.PRO_COMP,');
        SQL.Add('       CAD_PRO.PRO_DPRO    ,CAD_PRO.PRO_DPR2    ,CAD_PRO.PRO_DPR3    ,CAD_PRO.PRO_DPR4    ,CAD_PRO.PRO_DPR5,');
        SQL.Add('       CAD_PRO.PRO_CDEP    ,CAD_PRO.PRO_DEEP    ,CAD_PRO.PRO_CDFO    ,CAD_PRO.PRO_DEFO    ,');
        SQL.Add('       CAD_PRO.PRO_CCOL    ,CAD_PRO.PRO_DCOL    ,CAD_PRO.PRO_CGRP    ,CAD_PRO.PRO_DGRP    ,CAD_PRO.PRO_CCAT,CAD_PRO.PRO_DCAT,');
        SQL.Add('       CAD_PRO.PRO_PREC    ,CAD_PRO.PRO_PPRO    ,CAD_PRO.PRO_PDSC    ,CAD_PRO.PRO_VPRC    ,CAD_PRO.PRO_VPRO,CAD_PRO.PRO_VDSC,');
        SQL.Add('       CAD_PRO.PRO_RPRC    ,CAD_PRO.PRO_RPRO    ,CAD_PRO.PRO_RDSC    ,CAD_PRO.PRO_APRC    ,CAD_PRO.PRO_LDSC,');
        SQL.Add('       CAD_PRO.PRO_CUST    ,CAD_PRO.PRO_PCOM    ,CAD_PRO.PRO_CLIB,');
        SQL.Add('       CAD_PRO.PRO_PIPI    ,CAD_PRO.PRO_CCLF    ,CAD_PRO.PRO_CCST    ,CAD_PRO.PRO_DORI    ,CAD_PRO.PRO_REPR,CAD_PRO.PRO_METR,');
        SQL.Add('       CAD_PRO.PRO_REND    ,CAD_PRO.PRO_PESO    ,CAD_PRO.PRO_PSCN    ,CAD_PRO.PRO_PSMR    ,CAD_PRO.PRO_STLN,CAD_PRO.PRO_LARG,');
        SQL.Add('       CAD_PRO.PRO_GRAM    ,CAD_PRO.PRO_UTIL    ,CAD_PRO.PRO_DENS    ,CAD_PRO.PRO_TITF,');
        SQL.Add('       CAD_PRO.PRO_APRO    ,CAD_PRO.PRO_OBSE    ,CAD_PRO.PRO_OBSF    ,CAD_PRO.PRO_STA     ,CAD_PRO.PRO_STAV,');
        SQL.Add('       CAD_PRO_IMG.PRO_FOTO,CAD_PRO_IMG.PRO_FOT2,CAD_PRO_IMG.PRO_FOT3,CAD_PRO_IMG.PRO_FOT4,');
        SQL.Add('       CAD_PRO_IMG.PRO_FOT5,CAD_PRO_IMG.PRO_FOT6,CAD_PRO_IMG.PRO_FOT7,CAD_PRO_IMG.PRO_FOT8,');
        SQL.Add('       CAD_PRO_IMG.PRO_INS1,CAD_PRO_IMG.PRO_INS2,CAD_PRO_IMG.PRO_INS3,CAD_PRO_IMG.PRO_INS4,');
        SQL.Add('       CAD_PRO_IMG.PRO_INS5,CAD_PRO_IMG.PRO_INS6,CAD_PRO_IMG.PRO_INS7,CAD_PRO_IMG.PRO_INS8,');

        { Estoque por Peças }
        if FrmPrincipal.ParametrosPAR_PECA.AsString = '1' then
        begin
          SQL.Add('     (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_est']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST,');
          SQL.Add('     (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_est']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST,');
        end else
        { Estoque Normal }
        begin
          SQL.Add('     (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_est']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST,');
          SQL.Add('     (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_est']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST,');
        end;

        SQL.Add('       (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES,');
        SQL.Add('       (SELECT COUNT(*)               FROM CAD_PRO_RES WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES,');
        SQL.Add('       (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP,');
        SQL.Add('       (SELECT COUNT(*)               FROM CAD_PRO_SEP WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP,');
        SQL.Add('       (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_PRG WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QPRG,');
        SQL.Add('       (SELECT COUNT(*)               FROM CAD_PRO_PRG WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RPRG,');
        SQL.Add('       (SELECT SUM(EST_CRED)          FROM CAD_PRO_PRC WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QCOM,');
        SQL.Add('       (SELECT COUNT(*)               FROM CAD_PRO_PRC WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RCOM,');
        SQL.Add('       (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_DEF WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QDEF,');
        SQL.Add('       (SELECT COUNT(*)               FROM CAD_PRO_DEF WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RDEF ');

        SQL.Add('FROM   CAD_PRO,CAD_PRO_IMG');
        SQL.Add('WHERE  CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');
        SQL.Add('AND    CAD_PRO.PRO_STAV = ''A''');

        if cbcampo.text <> 'Todos' then
        begin
          if (CField = 'CAD_PRO.ID')       or (CField = 'CAD_PRO.PRO_CBAR') or (CField = 'CAD_PRO.PRO_CART') or (cbcampo.text = 'Grade') then
          SQL.Add('AND '+CField+' = '''    +EDTxt.Text+'''' ) else
          if (CField = 'CAD_PRO.PRO_CART') or (CField = 'CAD_PRO.PRO_CPRO') then
          SQL.Add('AND '+CField+' LIKE ''' +EDTxt.Text+'%''') else
          SQL.Add('AND '+CField+' LIKE ''%'+EDTxt.Text+'%''');
        end;

        SQL.Add('ORDER BY CAD_PRO.PRO_CART,CAD_PRO.PRO_DCOR');
        Prepare;
        Open;
      end;
      dbgconsulta.SetFocus;
    end;
    freeAndNil(frmpesquisa);
  end;
end;

procedure Tfrmcad_pro_con.SIMSaidaClick(Sender: TObject);
begin
  Editado := False;
  Close;
end;

procedure Tfrmcad_pro_con.DBGConsultaDblClick(Sender: TObject);
begin
  if Assigned(frmven_oca) then
  begin
    if cadastroPRO_STAV.AsString = 'I' then
    begin
      messageBox(handle,'Produto inativo !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if cadastroPRO_STAV.AsString = 'P' then
    begin
      messageBox(handle,'Produto em desenvolvimento !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if cadastroPRO_STA.AsString <> '0' then
    begin
      messageBox(handle,'Produto enviado para a lixeira !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if ((frmprincipal.parametrosPAR_TIPO.AsString = '0') and (frmven_oca.edqtsp.Text = '1')) or
       ((frmprincipal.parametrosPAR_TIPO.AsString = '4') and (frmven_oca.edqtsp.Text = '1')) then
    begin
      if copy(cadastroPRO_DUNI.AsString,1,1) = 'M' then
      begin
        if cadastroPRO_METR.AsFloat <= 0 then
        begin
          messageBox(handle,'Produto sem metragem cadastrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
          Abort;
        end;
      end
      else if copy(cadastroPRO_DUNI.AsString,1,1) = 'K' then
      begin
        if cadastroPRO_PESO.AsFloat <= 0 then
        begin
          messageBox(handle,'Produto sem peso da peça cadastrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
          Abort;
        end;

        if cadastroPRO_PSCN.AsFloat <= 0 then
        begin
          messageBox(handle,'Produto sem peso do canudo cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
          Abort;
        end;
      end;
    end;

    if frmven_oca.rom_001.State = dsBrowse then
    begin
      if (frmven_oca.edQTPC.Text = 'PC') or (frmven_oca.cbstpd.Text = 'DEVOLUÇÃO') then
         frmven_oca.rom_001.Append
      else
      begin
        frmven_oca.rom_001.First;
        if frmven_oca.rom_001.Locate('ROM_CPRO',cadastroPRO_CPRO.AsString,[]) then
        frmven_oca.rom_001.Edit
        else
        frmven_oca.rom_001.Append;
      end;
    end;

    frmven_oca.rom_001ROM_PRCA.Value := cadastroPRO_PREC.AsFloat;
    frmven_oca.rom_001ROM_PRPA.Value := cadastroPRO_PPRO.AsFloat;
    frmven_oca.rom_001ROM_VPRC.Value := cadastroPRO_VPRC.AsFloat;
    frmven_oca.rom_001ROM_VPRO.Value := cadastroPRO_VPRO.AsFloat;
    frmven_oca.rom_001ROM_RPRC.Value := cadastroPRO_RPRC.AsFloat;
    frmven_oca.rom_001ROM_RPRO.Value := cadastroPRO_RPRO.AsFloat;
    frmven_oca.rom_001ROM_PCOM.Value := cadastroPRO_PCOM.AsFloat;
    frmven_oca.rom_001ROM_CUST.Value := cadastroPRO_CUST.AsFloat;
    frmven_oca.rom_001ROM_TPRC.Value := TRIM(frmven_oca.cbprec.Text);

    frmven_oca.aux.SQL.Clear;
    frmven_oca.aux.SQL.Add('SELECT CLI_PDSC,CLI_VDSC FROM CAD_CLI_DSC');
    frmven_oca.aux.SQL.Add('WHERE  CLI_CCLI = '''+frmven_oca.edccli.Text+'''');
    frmven_oca.aux.SQL.Add('AND    CLI_CPRO = '''+cadastroPRO_CPRO.AsString+'''');
    frmven_oca.aux.Open;

    if frmven_oca.aux.Fields[0].AsFloat > 0 then
    frmven_oca.rom_001ROM_VDSC.Value := frmven_oca.aux.fields[0].AsFloat
    else if frmven_oca.aux.Fields[1].AsFloat > 0 then
    frmven_oca.rom_001ROM_UNIT.Value := frmven_oca.aux.Fields[1].AsFloat;
    frmven_oca.rom_001ROM_DPRO.Value := cadastroPRO_DPRO.AsString;

    if frmven_oca.rom_001ROM_PREC.AsFloat = 0 then
    frmven_oca.rom_001ROM_PREC.Value := frmven_oca.rom_001ROM_UNIT.AsFloat;

    if (oTextToValor(frmven_oca.edpacr.Text) > 0) and (frmven_oca.rom_001ROM_PREC.AsFloat > 0) then
    begin
      frmven_oca.rom_001ROM_PREC.Value := frmven_oca.rom_001ROM_PREC.AsFloat + ((frmven_oca.rom_001ROM_PREC.AsFloat * oTextToValor(frmven_oca.edpacr.Text)/100));
      frmven_oca.rom_001ROM_UNIT.Value := frmven_oca.rom_001ROM_PREC.AsFloat;
    end;

    frmven_oca.rom_001ROM_IPRO.Value := cadastroID.AsInteger;
    frmven_oca.rom_001ROM_IPR2.Value := cadastroID.AsInteger;
    frmven_oca.rom_001ROM_CART.Value := cadastroPRO_CART.AsString;
    frmven_oca.rom_001ROM_CPRO.Value := cadastroPRO_CPRO.AsString;
    frmven_oca.rom_001ROM_CPR2.Value := cadastroPRO_CPRO.AsString;
    frmven_oca.rom_001ROM_CCOR.Value := cadastroPRO_CCOR.AsInteger;
    frmven_oca.rom_001ROM_CCO2.Value := cadastroPRO_CCOR.AsInteger;
    frmven_oca.rom_001ROM_DCOR.Value := cadastroPRO_DCOR.AsString;
    frmven_oca.rom_001ROM_DCO2.Value := cadastroPRO_DCOR.AsString;
    frmven_oca.rom_001ROM_DUNI.Value := cadastroPRO_DUNI.AsString;
    frmven_oca.rom_001ROM_FOTO.Value := cadastroPRO_FOTO.Value;
    frmven_oca.rom_001ROM_CBAR.Value := cadastroPRO_CBAR.AsString;
    frmven_oca.rom_001ROM_PPRO.Value := cadastroPRO_PPRO.AsFloat;
    frmven_oca.rom_001ROM_METR.Value := cadastroPRO_METR.AsFloat;
    frmven_oca.rom_001ROM_PESO.Value := cadastroPRO_PESO.AsFloat;
    frmven_oca.rom_001ROM_REND.Value := cadastroPRO_REND.AsFloat;
    frmven_oca.rom_001ROM_PSCN.Value := cadastroPRO_PSCN.AsFloat;
    frmven_oca.rom_001ROM_PSMR.Value := cadastroPRO_PSMR.AsFloat;
    frmven_oca.rom_001ROM_PIPI.Value := cadastroPRO_PIPI.AsFloat;
    frmven_oca.rom_001ROM_QDIS.Value := cadastroC_QDIS.AsFloat;
    frmven_oca.rom_001ROM_RLDI.Value := cadastroC_RDIS.AsInteger;
    frmven_oca.rom_001ROM_APRC.Value := cadastroPRO_APRC.AsString;
    frmven_oca.rom_001ROM_LDSC.Value := cadastroPRO_LDSC.AsFloat;
    frmven_oca.rom_001ROM_QTRL.Value := 1;

    if (copy(frmven_oca.rom_001ROM_DUNI.AsString,1,1) = 'P') or (copy(frmven_oca.rom_001ROM_DUNI.AsString,1,1) = 'C') then
    frmven_oca.rom_001ROM_QTRL.Value := trunc(frmven_oca.rom_001ROM_QTDE.AsFloat);

    if frmprincipal.parametrosPAR_FANT.AsString = 'LEBIANCO' then
    begin
      if frmven_oca.rom_001ROM_QTRL.AsInteger = 0 then
      frmven_oca.rom_001ROM_QTRL.Value := 1;

      if copy(frmven_oca.rom_001ROM_DUNI.AsString,1,1) = 'K' then
      frmven_oca.rom_001ROM_QTDE.Value := roundto(frmven_oca.rom_001ROM_QTRL.AsFloat*(frmven_oca.rom_001ROM_PESO.AsFloat+frmven_oca.rom_001ROM_PSCN.AsFloat),-2)
      else if (copy(frmven_oca.rom_001ROM_DUNI.AsString,1,1) = 'M') then
      frmven_oca.rom_001ROM_QTDE.Value := roundto(frmven_oca.rom_001ROM_QTRL.AsFloat*frmven_oca.rom_001ROM_METR.AsFloat,-2);
    end;

    if not oEmpty(cadastroPRO_GRAD.AsString) then
    with Consulta do
    begin
      Consulta.SQL.Clear;
      Consulta.SQL.Add('SELECT GRD_CGRD,GRD_DGRD FROM TAB_GRD');
      Consulta.SQL.Add('WHERE  GRD_CGRD = '''+cadastroPRO_GRAD.AsString+'''');
      Consulta.Open;

      frmven_oca.rom_001ROM_CGRD.Value := Consulta.Fields[0].AsString;
      frmven_oca.rom_001ROM_DGRD.Value := Consulta.Fields[1].AsString;
    end;

    if frmven_oca.rom_001.State = dsInsert then
    frmven_oca.CARREGAFOTO(frmven_oca.rom_001ROM_FOTO.BlobSize,frmven_oca.rom_001ROM_FOTO,frmven_oca.rom_001);

    Close;
  end
  else if Assigned(frmven_ped) then
  begin
  end
  else if Assigned(frment_pro) then
  begin
    if cadastroPRO_STAV.AsString = 'I' then
    begin
      messageBox(handle,'Produto inativo !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if cadastroPRO_STA.AsString <> '0' then
    begin
      messageBox(handle,'Produto enviado para a lixeira !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if frment_pro.rom_001.State = dsBrowse then
       frment_pro.rom_001.Append;

    frment_pro.rom_001PRO_IPRO.Value := cadastroID.Value;
    frment_pro.rom_001PRO_IPR2.Value := cadastroID.Value;
    frment_pro.rom_001PRO_CART.Value := cadastroPRO_CART.Value;
    frment_pro.rom_001PRO_CPRO.Value := cadastroPRO_CPRO.Value;
    frment_pro.rom_001PRO_CPR2.Value := cadastroPRO_CPRO.Value;
    frment_pro.rom_001PRO_CCOR.Value := cadastroPRO_CCOR.Value;
    frment_pro.rom_001PRO_DCOR.Value := cadastroPRO_DCOR.Value;
    frment_pro.rom_001PRO_CCO2.Value := cadastroPRO_CCOR.Value;
    frment_pro.rom_001PRO_DCO2.Value := cadastroPRO_DCOR.Value;
    frment_pro.rom_001PRO_DPRO.Value := cadastroPRO_DPRO.Value;
    frment_pro.rom_001PRO_DUNI.Value := cadastroPRO_DUNI.Value;
    frment_pro.rom_001PRO_FOTO.Value := cadastroPRO_FOTO.Value;
    frment_pro.rom_001PRO_CBAR.Value := cadastroPRO_CBAR.Value;
    frment_pro.rom_001PRO_QDIS.Value := cadastroC_QDIS.Value;
    frment_pro.rom_001PRO_RDIS.Value := cadastroC_RDIS.Value;

    frment_pro.edTXT.Text            := cadastroPRO_CPRO.AsString;
    frment_pro.dbgrom.FocusedColumn  := 7;
    frment_pro.carregaFoto(frment_pro.rom_001PRO_FOTO.BlobSize,frment_pro.rom_001PRO_FOTO,frment_pro.rom_001);

    try
      frment_pro.rom_001PRO_QTDE.Value := oTextToValor(frment_pro.edQTDE.Text);
      if copy(frment_pro.cboper.Text,1,5) = 'ZERAR' then
      frment_pro.rom_001PRO_QTDE.Value := abs(cadastroC_QDIS.AsFloat);
      frment_pro.rom_001.Post;
      frment_pro.rom_001.Last;
    finally
      if (frmprincipal.parametrosPAR_TIPO.AsString = '0') or (frmprincipal.parametrosPAR_TIPO.AsString = '4') then
         frment_pro.edQTDE.SetFocus else frment_pro.edTXT.SetFocus;
    end;

    Close;
  end
  else if Assigned(frmven_nfe) then
  begin
    if frmven_nfe.nfe_001.State = dsBrowse then
       frmven_nfe.nfe_001.Append;

    frmven_nfe.nfe_001NFE_IPRO.value      := cadastroID.AsInteger;
    frmven_nfe.nfe_001NFE_CPROD.value     := cadastroPRO_CPRO.AsString;
    frmven_nfe.nfe_001NFE_XPROD.Value     := cadastroPRO_DPRO.AsString;
    frmven_nfe.nfe_001NFE_PREC.Value      := cadastroPRO_PREC.AsFloat;
    frmven_nfe.nfe_001NFE_VUNCOM.Value    := cadastroPRO_PREC.AsFloat;
    frmven_nfe.nfe_001NFE_UCOM.Value      := cadastroPRO_DUNI.AsString;
    frmven_nfe.nfe_001NFE_NCM.Value       := cadastroPRO_CCLF.AsString;
    frmven_nfe.nfe_001NFE_ORIG.Value      := cadastroPRO_CCST.AsString;
    frmven_nfe.nfe_001NFE_PIPI.Value      := cadastroPRO_PIPI.AsFloat;
    frmven_nfe.nfe_001NFE_METR.Value      := cadastroPRO_METR.AsFloat;
    frmven_nfe.nfe_001NFE_PESO.Value      := cadastroPRO_PESO.AsFloat;
    frmven_nfe.nfe_001NFE_REND.Value      := cadastroPRO_REND.AsFloat;
    frmven_nfe.nfe_001NFE_PSCN.Value      := cadastroPRO_PSCN.AsFloat;
    frmven_nfe.nfe_001NFE_PSMR.Value      := cadastroPRO_PSMR.AsFloat;
    frmven_nfe.nfe_001NFE_REPR.Value      := cadastroPRO_REPR.AsString;
    frmven_nfe.nfe_001NFE_INFADPROD.Value := cadastroPRO_APRO.AsString;

    if frmven_nfe.nfe_001NFE_INFADPROD.AsString <> '' then
       frmven_nfe.nfe_001NFE_INFADPROD.Value := frmven_nfe.nfe_001NFE_INFADPROD.AsString+' ';
    frmven_nfe.nfe_001NFE_INFADPROD.Value    := frmven_nfe.nfe_001NFE_INFADPROD.AsString+TRIM(cadastroPRO_COMP.AsString);

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PRO_ORIG FROM CAD_PRO_ORI');
      SQL.Add('WHERE  PRO_CART = '''+cadastroPRO_CART.AsString+'''');
      SQL.Add('AND    PRO_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      Open;

      if not fields[0].IsNull then
      frmven_nfe.nfe_001NFE_ORIG.Value := fields[0].AsString;
    end;

    if (frmven_nfe.nfe_001NFE_CFOP.AsString = '5102') and (frmven_nfe.nfe_001NFE_ORIG.AsString = '0') and (frmprincipal.parametrosPAR_FANT.AsString = 'LEBIANCO') then
    begin
      frmven_nfe.nfe_001NFE_VUNCOM.Value := frmven_nfe.nfe_001NFE_PREC.AsFloat;
      frmven_nfe.nfe_001NFE_REPR.Value   := 'L';
    end;

    frmven_nfe.dbgnfe.FocusedColumn := 4;
    close;
  end;
end;

procedure Tfrmcad_pro_con.DTSCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  DBGConsultaPRO_VPRC.Visible := (not oEmpty(CadastroPRO_VPRC.AsFloat));
  DBGConsultaPRO_RPRC.Visible := (not oEmpty(CadastroPRO_RPRC.AsFloat));
  DBGConsultaC_RDIS.Visible   := (not oEmpty(CadastroC_RDIS.AsInteger));
  DBGConsultaPRO_DCOR.Visible := (not oEmpty(CadastroPRO_DCOR.AsString));
  DBGConsultaPRO_DPRO.Width   := DBGConsultaPRO_DPRO.Tag + IFThen(DBGConsultaPRO_DCOR.Visible,0,DBGConsultaPRO_DCOR.Width);
  if Screen.Height > 768 then
  begin
    DBGConsultaPRO_DPRO.Width := DBGConsultaPRO_DPRO.Width + IFThen(DBGConsultaPRO_VPRC.Visible,0,DBGConsultaPRO_VPRC.Width);
    DBGConsultaPRO_DPRO.Width := DBGConsultaPRO_DPRO.Width + IFThen(DBGConsultaPRO_RPRC.Visible,0,DBGConsultaPRO_RPRC.Width);
  end;

  GBLavagem.Visible := (CadastroPRO_INS1.BlobSize > 0);
  uJPEGStream(CadastroPRO_FOTO,IFoto.Picture);
end;

procedure Tfrmcad_pro_con.CadastroCalcFields(DataSet: TDataSet);
begin
  if frmprincipal.parametrosPAR_ESEG.AsString <> '1' then
  begin
    case frmprincipal.parametrosID.AsInteger of
    1: begin
         CadastroC_QEST.Value := CadastroPRO_QEST.AsFloat;
         CadastroC_QRES.Value := CadastroPRO_QRES.AsFloat;
         CadastroC_QSEP.Value := CadastroPRO_QSEP.AsFloat;
       end;
    2: begin
         CadastroC_QEST.Value := CadastroPRO_QEST2.AsFloat;
         CadastroC_QRES.Value := CadastroPRO_QRES2.AsFloat;
         CadastroC_QSEP.Value := CadastroPRO_QSEP2.AsFloat;
       end;
    3: begin
         CadastroC_QEST.Value := CadastroPRO_QEST3.AsFloat;
         CadastroC_QRES.Value := CadastroPRO_QRES3.AsFloat;
         CadastroC_QSEP.Value := CadastroPRO_QSEP3.AsFloat;
       end;
    4: begin
         CadastroC_QEST.Value := CadastroPRO_QEST4.AsFloat;
         CadastroC_QRES.Value := CadastroPRO_QRES4.AsFloat;
         CadastroC_QSEP.Value := CadastroPRO_QSEP4.AsFloat;
       end;
    5: begin
         CadastroC_QEST.Value := CadastroPRO_QEST5.AsFloat;
         CadastroC_QRES.Value := CadastroPRO_QRES5.AsFloat;
         CadastroC_QSEP.Value := CadastroPRO_QSEP5.AsFloat;
       end;
    6: begin
         CadastroC_QEST.Value := CadastroPRO_QEST6.AsFloat;
         CadastroC_QRES.Value := CadastroPRO_QRES6.AsFloat;
         CadastroC_QSEP.Value := CadastroPRO_QSEP6.AsFloat;
       end;
    7: begin
         CadastroC_QEST.Value := CadastroPRO_QEST7.AsFloat;
         CadastroC_QRES.Value := CadastroPRO_QRES7.AsFloat;
         CadastroC_QSEP.Value := CadastroPRO_QSEP7.AsFloat;
       end;
    8: begin
         CadastroC_QEST.Value := CadastroPRO_QEST8.AsFloat;
         CadastroC_QRES.Value := CadastroPRO_QRES8.AsFloat;
         CadastroC_QSEP.Value := CadastroPRO_QSEP8.AsFloat;
       end;
    9: begin
         CadastroC_QEST.Value := CadastroPRO_QEST9.AsFloat;
         CadastroC_QRES.Value := CadastroPRO_QRES9.AsFloat;
         CadastroC_QSEP.Value := CadastroPRO_QSEP9.AsFloat;
       end;
    end;
  end else
  begin
    CadastroC_QEST.Value := CadastroPRO_QEST.AsFloat + CadastroPRO_QEST2.AsFloat + CadastroPRO_QEST3.AsFloat + CadastroPRO_QEST4.AsFloat + CadastroPRO_QEST5.AsFloat + CadastroPRO_QEST6.AsFloat + CadastroPRO_QEST7.AsFloat + CadastroPRO_QEST8.AsFloat + CadastroPRO_QEST9.AsFloat;
    CadastroC_QRES.Value := CadastroPRO_QRES.AsFloat + CadastroPRO_QRES2.AsFloat + CadastroPRO_QRES3.AsFloat + CadastroPRO_QRES4.AsFloat + CadastroPRO_QRES5.AsFloat + CadastroPRO_QRES6.AsFloat + CadastroPRO_QRES7.AsFloat + CadastroPRO_QRES8.AsFloat + CadastroPRO_QRES9.AsFloat;
    CadastroC_QSEP.Value := CadastroPRO_QSEP.AsFloat + CadastroPRO_QSEP2.AsFloat + CadastroPRO_QSEP3.AsFloat + CadastroPRO_QSEP4.AsFloat + CadastroPRO_QSEP5.AsFloat + CadastroPRO_QSEP6.AsFloat + CadastroPRO_QSEP7.AsFloat + CadastroPRO_QSEP8.AsFloat + CadastroPRO_QSEP9.AsFloat;
  end;

  CadastroC_QDEF.Value := CadastroPRO_QDEF.AsFloat;
  CadastroC_QEST.Value := CadastroC_QEST.AsFloat + CadastroC_QSEP.AsFloat;
  CadastroC_QDIS.Value := CadastroC_QEST.AsFloat - CadastroC_QRES.AsFloat - CadastroC_QSEP.AsFloat;
  if CadastroC_QDIS.AsFloat < 0 then
  CadastroC_QDIS.Value := 0;

  if CadastroPRO_STAV.AsString = 'P' then
  CadastroC_STAV.Value := 'PRÉ-CADASTRO' else
  if CadastroPRO_STAV.AsString = 'I' then
  CadastroC_STAV.Value := 'INATIVO';

  if CadastroPRO_CCST.AsString = '0' then
  CadastroC_DCST.Value := 'Nacional' else
  if CadastroPRO_CCST.AsString = '1' then
  CadastroC_DCST.Value := 'Estrangeira - Importação Direta' else
  if CadastroPRO_CCST.AsString = '2' then
  CadastroC_DCST.Value := 'Estrangeira - Adiquirida no Mercado Interno';
end;

procedure Tfrmcad_pro_con.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
  DBGConsultaDblClick(Self);
end;

end.
