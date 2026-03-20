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
    CadastroPRO_QEST: TIBBCDField;
    CadastroPRO_REST: TLargeintField;
    CadastroPRO_QRES: TIBBCDField;
    CadastroPRO_RRES: TLargeintField;
    CadastroPRO_QSEP: TIBBCDField;
    CadastroPRO_RSEP: TLargeintField;
    CadastroPRO_QPRG: TIBBCDField;
    CadastroPRO_RPRG: TLargeintField;
    CadastroPRO_QCOM: TIBBCDField;
    CadastroPRO_QPRD: TIBBCDField;
    CadastroPRO_RCOM: TLargeintField;
    CadastroPRO_QDEF: TIBBCDField;
    CadastroPRO_RDEF: TLargeintField;
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
  ppesquisa, pven_ped, pven_nfe;

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

        Close;
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

        SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST,');
        SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST,');
        SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES,');
        SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES,');
        SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP     WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP,');
        SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP     WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP,');

        SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_prg']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QPRG,');
        SQL.Add('         (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_prg']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RPRG,');
        SQL.Add('         (SELECT SUM(EST_CRED)          FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QCOM,');
        SQL.Add('         (SELECT SUM(EST_DEBI)          FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QPRD,');
        SQL.Add('         (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RCOM,');
        SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_def']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QDEF,');
        SQL.Add('         (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_def']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RDEF ');

        SQL.Add('FROM     CAD_PRO,CAD_PRO_IMG');
        SQL.Add('WHERE    CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');
        SQL.Add('AND      CAD_PRO.PRO_STAV <> ''I''');

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
  if Assigned(frmven_nfe) then
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
  CadastroC_QEST.Value := CadastroPRO_QEST.AsFloat;
  CadastroC_QRES.Value := CadastroPRO_QRES.AsFloat;
  CadastroC_QSEP.Value := CadastroPRO_QSEP.AsFloat;

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
