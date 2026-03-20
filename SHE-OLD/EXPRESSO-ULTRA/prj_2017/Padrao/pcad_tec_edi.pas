unit pcad_tec_edi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBEvents,
  IBDatabase, DB, IBCustomDataSet, IBQuery, SpeedBar, ComCtrls, ExtCtrls,
  StdCtrls, dxExEdtr, dxEdLib, Buttons, dxPageControl, dxEditor, dxCntner,
  ExtDlgs, dxTL, dxDBCtrl, dxDBGrid, jpeg, dxDBTLCl, dxGrClms, ACBrBarCode;

type
  Tfrmcad_tec_edi = class(Tfrmpadr3)
    Label1: TLabel;
    Label7: TLabel;
    eddpro: TdxEdit;
    OpenPictureDialogEdit: TOpenPictureDialog;
    Label5: TLabel;
    Label6: TLabel;
    Label18: TLabel;
    Label33: TLabel;
    edcomp: TdxEdit;
    edcfor: TdxMaskEdit;
    dtscad_pro_com: TDataSource;
    cad_pro_com: TIBDataSet;
    cad_pro_comID: TIntegerField;
    cad_pro_comCOM_COMP: TIBStringField;
    cad_pro_comCOM_QTDE: TIBBCDField;
    cad_pro_comCOM_CART: TIBStringField;
    cad_pro_comCOM_BASE: TIBStringField;
    cbdcol: TdxImageEdit;
    cbdgrp: TdxImageEdit;
    cad_pro: TIBQuery;
    cad_pro_img: TIBQuery;
    sbtab_grp: TSpeedButton;
    sbtab_col: TSpeedButton;
    Label10: TLabel;
    GroupBox6: TGroupBox;
    pnlpri: TPanel;
    pcMAIN: TdxPageControl;
    tscom: TdxTabSheet;
    tstec: TdxTabSheet;
    gbfoto: TGroupBox;
    rgcont: TGroupBox;
    Label26: TLabel;
    Label3: TLabel;
    Label31: TLabel;
    cbccst: TdxImageEdit;
    edvmva: TdxEdit;
    edpipi: TdxEdit;
    edpeso: TdxEdit;
    Label15: TLabel;
    Label14: TLabel;
    cbdemb: TdxImageEdit;
    pcobs: TdxPageControl;
    tsobs: TdxTabSheet;
    edobse: TdxMemo;
    tscomp: TdxTabSheet;
    Panel1: TPanel;
    dbgcom: TdxDBGrid;
    dbgcomCOM_COMP: TdxDBGridMaskColumn;
    dbgcomCOM_BASE: TdxDBGridMaskColumn;
    dbgcomCOM_QTDE: TdxDBGridMaskColumn;
    SpeedBar1: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedbarSection2: TSpeedbarSection;
    SpeedbarSection3: TSpeedbarSection;
    SpeedbarSection4: TSpeedbarSection;
    siINC: TSpeedItem;
    siALT: TSpeedItem;
    siDEL: TSpeedItem;
    siS: TSpeedItem;
    siC: TSpeedItem;
    Bevel2: TBevel;
    Bevel3: TBevel;
    edrend: TdxEdit;
    Label8: TLabel;
    edlarg: TdxEdit;
    Label11: TLabel;
    edmetr: TdxEdit;
    lametr: TLabel;
    edpscn: TdxEdit;
    Label9: TLabel;
    edpsmr: TdxEdit;
    Label12: TLabel;
    edgram: TdxEdit;
    Label21: TLabel;
    edutil: TdxEdit;
    Label24: TLabel;
    edelac: TdxEdit;
    Label27: TLabel;
    edelas: TdxEdit;
    Label28: TLabel;
    cbstal: TdxImageEdit;
    Label29: TLabel;
    Label30: TLabel;
    cbdori: TdxImageEdit;
    cbstav: TdxImageEdit;
    Label37: TLabel;
    edcart: TdxEdit;
    eddcad: TdxMaskEdit;
    Label39: TLabel;
    edvocx: TdxEdit;
    edvosc: TdxEdit;
    Label40: TLabel;
    edvofd: TdxEdit;
    Label41: TLabel;
    edid: TdxEdit;
    cbduni: TdxImageEdit;
    Label4: TLabel;
    Label45: TLabel;
    cbdcat: TdxImageEdit;
    sbtab_cat: TSpeedButton;
    cad_pro_imgID: TIntegerField;
    cad_pro_imgPRO_CART: TIBStringField;
    cad_pro_imgPRO_FOTO: TBlobField;
    cad_pro_imgPRO_FOT2: TBlobField;
    cad_pro_imgPRO_FOT3: TBlobField;
    cad_pro_imgPRO_FOT4: TBlobField;
    cad_pro_imgPRO_FOT5: TBlobField;
    cad_pro_imgPRO_FOT6: TBlobField;
    cad_pro_imgPRO_FOT7: TBlobField;
    cad_pro_imgPRO_DEF1: TBlobField;
    cad_pro_imgPRO_DEF2: TBlobField;
    cad_pro_imgPRO_DEF3: TBlobField;
    cad_pro_imgPRO_DEF4: TBlobField;
    cad_pro_imgPRO_DEF5: TBlobField;
    cad_pro_imgPRO_DEF6: TBlobField;
    cad_pro_imgPRO_DEF7: TBlobField;
    cad_pro_imgPRO_INS1: TBlobField;
    cad_pro_imgPRO_INS2: TBlobField;
    cad_pro_imgPRO_INS3: TBlobField;
    cad_pro_imgPRO_INS4: TBlobField;
    cad_pro_imgPRO_INS5: TBlobField;
    cad_pro_imgPRO_INS6: TBlobField;
    cad_pro_imgPRO_INS7: TBlobField;
    cbrepr: TdxImageEdit;
    Label46: TLabel;
    cbcclf: TdxPickEdit;
    cad_pro_imgPRO_FOT8: TBlobField;
    cad_pro_imgPRO_INS8: TBlobField;
    cad_pro_imgPRO_DEF8: TBlobField;
    dxTabSheet1: TdxTabSheet;
    pcLAVA: TdxPageControl;
    tsLAVA: TdxTabSheet;
    Bevel1: TBevel;
    edons1: TdxEdit;
    Bevel10: TBevel;
    Bevel9: TBevel;
    Bevel8: TBevel;
    Bevel7: TBevel;
    Bevel6: TBevel;
    Bevel5: TBevel;
    Bevel4: TBevel;
    img1: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    img6: TImage;
    img7: TImage;
    img2: TImage;
    Bevel16: TBevel;
    img8: TImage;
    Label25: TLabel;
    edons2: TdxEdit;
    Label59: TLabel;
    edons3: TdxEdit;
    Label60: TLabel;
    edons4: TdxEdit;
    Label61: TLabel;
    edons5: TdxEdit;
    Label62: TLabel;
    edons6: TdxEdit;
    Label63: TLabel;
    edons7: TdxEdit;
    Label64: TLabel;
    edons8: TdxEdit;
    Label65: TLabel;
    cad_pro_imgPRO_ONS1: TIBStringField;
    cad_pro_imgPRO_ONS2: TIBStringField;
    cad_pro_imgPRO_ONS3: TIBStringField;
    cad_pro_imgPRO_ONS4: TIBStringField;
    cad_pro_imgPRO_ONS5: TIBStringField;
    cad_pro_imgPRO_ONS6: TIBStringField;
    cad_pro_imgPRO_ONS7: TIBStringField;
    cad_pro_imgPRO_ONS8: TIBStringField;
    cbdfor: TdxPickEdit;
    edcbar: TACBrBarCode;
    imag: TImage;
    sbfoto: TSpeedButton;
    tSHEILD: TIBTransaction;
    consulta_S: TIBQuery;
    cad_proID: TIntegerField;
    cad_proPRO_DCAD: TDateField;
    cad_proPRO_DALT: TDateField;
    cad_proPRO_DENT: TDateField;
    cad_proPRO_DPRG: TDateField;
    cad_proPRO_DULT: TDateField;
    cad_proPRO_CART: TIBStringField;
    cad_proPRO_CPRO: TIBStringField;
    cad_proPRO_CFOR: TIBStringField;
    cad_proPRO_CBAR: TIBStringField;
    cad_proPRO_DPRO: TIBStringField;
    cad_proPRO_DPR2: TIBStringField;
    cad_proPRO_DPR3: TIBStringField;
    cad_proPRO_DPR4: TIBStringField;
    cad_proPRO_DPR5: TIBStringField;
    cad_proPRO_COMP: TIBStringField;
    cad_proPRO_APRO: TMemoField;
    cad_proPRO_OBSE: TMemoField;
    cad_proPRO_DUNI: TIBStringField;
    cad_proPRO_GRAD: TIBStringField;
    cad_proPRO_CEMB: TIntegerField;
    cad_proPRO_DEMB: TIBStringField;
    cad_proPRO_CGRP: TIntegerField;
    cad_proPRO_RGRP: TIBStringField;
    cad_proPRO_DGRP: TIBStringField;
    cad_proPRO_CCOR: TIntegerField;
    cad_proPRO_RCOR: TIBStringField;
    cad_proPRO_DCOR: TIBStringField;
    cad_proPRO_CCOL: TIntegerField;
    cad_proPRO_DCOL: TIBStringField;
    cad_proPRO_DORI: TIBStringField;
    cad_proPRO_CCST: TIBStringField;
    cad_proPRO_CCLF: TIBStringField;
    cad_proPRO_METR: TIBBCDField;
    cad_proPRO_PESO: TIBBCDField;
    cad_proPRO_UTIL: TIBBCDField;
    cad_proPRO_LARG: TIBBCDField;
    cad_proPRO_GRAM: TIBBCDField;
    cad_proPRO_REND: TIBBCDField;
    cad_proPRO_PSCN: TIBBCDField;
    cad_proPRO_PSMR: TIBBCDField;
    cad_proPRO_ELAS: TIBBCDField;
    cad_proPRO_ELAC: TIBBCDField;
    cad_proPRO_STLN: TIBStringField;
    cad_proPRO_STAL: TIBStringField;
    cad_proPRO_LAVA: TIBStringField;
    cad_proPRO_STA: TIBStringField;
    cad_proPRO_STAV: TIBStringField;
    cad_proPRO_PCOM: TFloatField;
    cad_proPRO_CUST: TFloatField;
    cad_proPRO_PDSC: TIBBCDField;
    cad_proPRO_PREC: TFloatField;
    cad_proPRO_PPRO: TFloatField;
    cad_proPRO_VDSC: TIBBCDField;
    cad_proPRO_VPRC: TFloatField;
    cad_proPRO_VPRO: TFloatField;
    cad_proPRO_RDSC: TIBBCDField;
    cad_proPRO_RPRC: TFloatField;
    cad_proPRO_RPRO: TFloatField;
    cad_proPRO_PIPI: TSmallintField;
    cad_proPRO_VOCX: TSmallintField;
    cad_proPRO_VOSC: TSmallintField;
    cad_proPRO_VOFD: TSmallintField;
    cad_proPRO_CDFO: TIntegerField;
    cad_proPRO_CCAT: TIntegerField;
    cad_proPRO_RCAT: TIBStringField;
    cad_proPRO_DCAT: TIBStringField;
    cad_proPRO_REPR: TIBStringField;
    cad_proPRO_DCOM: TDateField;
    cad_proPRO_CNA1: TIBStringField;
    cad_proPRO_CNA2: TIBStringField;
    cad_proPRO_PCOR: TIBStringField;
    cad_proPRO_PPRZ: TFloatField;
    cad_proPRO_PPER: TIBBCDField;
    cad_proPRO_VPRZ: TFloatField;
    cad_proPRO_VPER: TIBBCDField;
    cad_proPRO_RPRZ: TFloatField;
    cad_proPRO_RPER: TIBBCDField;
    cad_proPRO_OBSF: TMemoField;
    cad_proPRO_SPRC: TFloatField;
    cad_proPRO_SPRO: TFloatField;
    cad_proPRO_SDSC: TIBBCDField;
    cad_proPRO_SPER: TIBBCDField;
    cad_proPRO_SPRZ: TFloatField;
    cad_proPRO_CLIB: TFloatField;
    cad_proPRO_DUSU: TIBStringField;
    cad_proPRO_APRC: TIBStringField;
    cad_proPRO_LDSC: TIBBCDField;
    cad_proPRO_DMAP: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure sbfotoClick(Sender: TObject);
    procedure imagDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edvmvaValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpipiValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure siINCClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure siSClick(Sender: TObject);
    procedure siCANClick(Sender: TObject);
    procedure cad_pro_comAfterCancel(DataSet: TDataSet);
    procedure cad_pro_comAfterPost(DataSet: TDataSet);
    procedure cad_pro_comBeforeCancel(DataSet: TDataSet);
    procedure cad_pro_comNewRecord(DataSet: TDataSet);
    procedure dbgcomKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cad_pro_comAfterEdit(DataSet: TDataSet);
    procedure img1Click(Sender: TObject);
    procedure sbtab_corClick(Sender: TObject);
    procedure edrendValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edlargValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edmetrValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpscnValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpsmrValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edgramValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edutilValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edelacValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edelasValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure sbtab_colClick(Sender: TObject);
    procedure sbtab_grpClick(Sender: TObject);
    procedure eddproKeyPress(Sender: TObject; var Key: Char);
    procedure edcartExit(Sender: TObject);
    procedure cad_pro_comAfterDelete(DataSet: TDataSet);
    procedure cbccstExit(Sender: TObject);
    procedure cbdcatExit(Sender: TObject);
  private
    procedure MONTA_COMPOSICAO;
    procedure ABRE_COMPOSICAO;
    procedure NOVA_REFERENCIA;
    procedure ALTERA_REFERENCIA;
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
    { Private declarations }
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmcad_tec_edi: Tfrmcad_tec_edi;

implementation

uses p_funcoes, uPrincipal, pcad_for_edi, pcad_pro, peti_sel, ptab_cor,
  ptab_col, ptab_grp, ptab_cat, pcad_tec;

{$R *.dfm}

procedure Tfrmcad_tec_edi.ABRE_COMPOSICAO;
begin
  if not tSHEILD.Active then
  tSHEILD.StartTransaction;

  with cad_pro_com do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM CAD_PRO_COM');
    ExecSQL;
    tSHEILD.CommitRetaining;

    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_PRO_COM');
    SelectSQL.Add('ORDER BY COM_QTDE DESC,COM_BASE');
    Open;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   COM_CART,COM_BASE,COM_COMP,COM_QTDE FROM CAD_PRO_COM');
    SQL.Add('WHERE    COM_CART = '''+edcart.Text+'''');
    SQL.Add('ORDER BY COM_QTDE DESC,COM_BASE');
    Open;

    while not eof do
    begin
      cad_pro_com.Append;
      cad_pro_comCOM_CART.Value := fields[0].AsString;
      cad_pro_comCOM_BASE.Value := fields[1].AsString;
      cad_pro_comCOM_COMP.Value := fields[2].AsString;
      cad_pro_comCOM_QTDE.Value := fields[3].AsFloat;
      cad_pro_com.Post;
      next;
    end;
  end;
  MONTA_COMPOSICAO;
end;

procedure Tfrmcad_tec_edi.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    imag.Tag   := 0;
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
  begin
    imag.Tag   := 1;
    BlobStream := tab.CreateBlobStream(valor,bmRead);
  end;

  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    imag.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmcad_tec_edi.FormCreate(Sender: TObject);
begin
  tscomp.Enabled := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Composição',false);
  rgcont.Enabled := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Contábil',false);

  pcMAIN.ActivePageIndex := 0;
  pcobs.ActivePageIndex  := 0;

  edcart.Tag := 1;
  inherited;

  top  := 0;
  left := 0;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   EMB_DEMB FROM TAB_EMB');
    SQL.Add('WHERE    EMB_STA = ''0''');
    SQL.Add('ORDER BY EMB_DEMB');
    Open;
    while not eof do
    begin
      cbdemb.Values.Add(fields[0].AsString);
      cbdemb.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   COL_DCOL FROM TAB_COL');
    SQL.Add('WHERE    COL_STA = ''0''');
    SQL.Add('ORDER BY COL_DCOL');
    Open;
    while not eof do
    begin
      cbdcol.Values.Add(fields[0].AsString);
      cbdcol.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT CLF_CCLF FROM TAB_CLF');
    SQL.Add('ORDER  BY CLF_CCLF');
    Open;

    while not eof do
    begin
      cbcclf.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   GRP_DGRP FROM CAD_PRO_GRP');
    SQL.Add('WHERE    GRP_STA = ''0''');
    SQL.Add('AND      GRP_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    SQL.Add('ORDER BY GRP_DGRP');
    Open;
    while not eof do
    begin
      cbdgrp.Values.Add(fields[0].AsString);
      cbdgrp.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   CAT_DCAT FROM CAD_PRO_CAC');
    SQL.Add('WHERE    CAT_STA = ''0''');
    SQL.Add('ORDER BY CAT_DCAT');
    Open;
    while not eof do
    begin
      cbdcat.Values.Add(fields[0].AsString);
      cbdcat.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT FOR_FANT FROM CAD_FOR');
    SQL.Add('WHERE  FOR_STA = ''0''');
    SQL.Add('ORDER  BY FOR_FANT');
    Open;

    while not eof do
    begin
      cbdfor.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   UNI_REFE FROM TAB_UNI');
    SQL.Add('WHERE    UNI_STA = ''0''');
    SQL.Add('ORDER BY UNI_REFE');
    Open;

    while not eof do
    begin
      cbduni.Values.Add(fields[0].AsString);
      cbduni.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   ORI_DORI FROM TAB_ORI');
    SQL.Add('WHERE    ORI_STA = ''0''');
    SQL.Add('ORDER BY ORI_DORI');
    Open;

    while not eof do
    begin
      cbdori.Values.Add(fields[0].AsString);
      cbdori.Descriptions.Add(fields[0].AsString);
      next;
    end;
  end;
end;

procedure Tfrmcad_tec_edi.siSAVClick(Sender: TObject);
var
  ccol,cdfo,cgrp,cemb,ccat: integer;
  foto,pic1,pic2,pic3,pic4,pic5,pic6,pic7,pic8: TStream;
  rgrp,rcat: string;
begin
  activecontrol := nil;

  if tag = 1 then
  begin
    if frmprincipal.cad_usuUSU_ADM.AsString <> '1' then
    begin
      if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_EDIT','Produtos','Cadastro','Permissões Gerais',false) then
         raise exception.Create('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
    end;
  end;

  if (Campo_Obrigatorio(PnlCadastro)) then
     Abort;

  if edcart.Text = '' then
  begin
    edcart.SetFocus;
    raise exception.Create('Referencia não informada !');
  end;

  if cbdfor.Text = '' then
  begin
    cbdfor.SetFocus;
    raise exception.Create('Fornecedor não informado !');
  end;

  if cbdori.Text = '' then
  begin                                
    pcmain.ActivePage := tstec;
    cbdori.SetFocus;
    raise exception.Create('Origem da mercadoria não informada !');
  end;

  if cbrepr.Text = '' then
  begin
    pcmain.ActivePage := tstec;
    cbrepr.SetFocus;
    raise exception.Create('Finalidade do produto não informada !');
  end;

  if cbduni.Text = '' then
  begin
    pcmain.ActivePage := tstec;
    cbduni.SetFocus;
    raise exception.Create('Unidade de medida não informada !');
  end;

  if (cbcclf.Text = '') and (cbstav.Text = 'ATIVO') then
  begin
    cbcclf.SetFocus;
    raise exception.Create('N.C.M. não informado !');
  end;

  if ((cbccst.Text = '0') and (cbdori.Text <> 'BRASIL')) or
     ((cbccst.Text = '1') and (cbdori.Text = 'BRASIL')) then
  begin
    pcmain.ActivePage := tstec;
    cbdori.SetFocus;
    raise exception.Create('Origem da mercadoria incorreta para o tipo de C.S.T. !');
  end;

  foto := TMemoryStream.Create;
  if (imag.Picture.Graphic <> nil) and (imag.Tag = 1) then
     imag.Picture.Graphic.SaveToStream(foto);

  pic1 := TMemoryStream.Create;
  if img1.Picture.Graphic <> nil then
     Img1.Picture.Graphic.SaveToStream(pic1);
  pic2 := TMemoryStream.Create;
  if img2.Picture.Graphic <> nil then
     Img2.Picture.Graphic.SaveToStream(pic2);
  pic3 := TMemoryStream.Create;
  if img3.Picture.Graphic <> nil then
     Img3.Picture.Graphic.SaveToStream(pic3);
  pic4 := TMemoryStream.Create;
  if img4.Picture.Graphic <> nil then
     Img4.Picture.Graphic.SaveToStream(pic4);
  pic5 := TMemoryStream.Create;
  if img5.Picture.Graphic <> nil then
     Img5.Picture.Graphic.SaveToStream(pic5);
  pic6 := TMemoryStream.Create;
  if img6.Picture.Graphic <> nil then
     Img6.Picture.Graphic.SaveToStream(pic6);
  pic7 := TMemoryStream.Create;
  if img7.Picture.Graphic <> nil then
     Img7.Picture.Graphic.SaveToStream(pic7);
  pic8 := TMemoryStream.Create;
  if img8.Picture.Graphic <> nil then
     Img8.Picture.Graphic.SaveToStream(pic8);

  with consulta do
  begin
    cemb := 0;
    if cbdemb.Text <> '' then
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM TAB_EMB');
      SQL.Add('WHERE  EMB_DEMB = '''+cbdemb.Text+'''');
      Open;
      cemb := fields[0].AsInteger;
    end;

    ccol := 0;
    if cbdcol.Text <> '' then
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM TAB_COL');
      SQL.Add('WHERE  COL_DCOL = '''+cbdcol.Text+'''');
      Open;
      ccol := fields[0].AsInteger;
    end;

    cdfo := 0;
    if cbdfor.Text <> '' then
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_FOR');
      SQL.Add('WHERE  FOR_FANT = '''+cbdfor.Text+'''');
      Open;
      cdfo := fields[0].AsInteger;
    end;

    cgrp := 0;
    rgrp := '';
    if cbdgrp.Text <> '' then
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,GRP_CGRP FROM CAD_PRO_GRP');
      SQL.Add('WHERE  GRP_DGRP = '''+cbdgrp.Text+'''');
      Open;
      cgrp := fields[0].AsInteger;
      rgrp := fields[1].AsString;
    end;

    ccat := 0;
    rcat := '';
    if cbdcat.Text <> '' then
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,CAT_CCAT FROM CAD_PRO_CAC');
      SQL.Add('WHERE  CAT_DCAT = '''+cbdcat.Text+'''');
      Open;
      ccat := fields[0].AsInteger;
      rcat := fields[1].AsString;
    end;
  end;

  with consulta do
  begin
    if (edcart.Text <> cad_proPRO_CART.AsString) and (edcfor.Tag = 1) then
    begin
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_IMG');
      SQL.Add('WHERE  PRO_CART = '''+cad_proPRO_CART.AsString+'''');
      ExecSQL;

      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_COM');
      SQL.Add('WHERE  COM_CART = '''+cad_proPRO_CART.AsString+'''');
      ExecSQL;
    end;

    SQL.Clear;
    SQL.Add('DELETE FROM CAD_PRO_COM');
    SQL.Add('WHERE  COM_CART = '''+edcart.Text+'''');
    ExecSQL;
  end;

//  if (frmprincipal.parametrosPAR_RFOR.AsString = '1') and (frmcad_pro_edi.Tag = 0) then
//  PESQUISA_DUPLICIDADE;

  try
    try
      ibSP.StoredProcName := 'SP_CAD_PRO';
      ibSP.Prepare;
      ibSP.ParamByName('ID').Value   := edid.Text;

      if edid.Text = '0' then
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT GEN_ID(ID_NO_CAD_PRO, 0) FROM RDB$DATABASE');
        Open;
        edid.Text := inttostr(fields[0].AsInteger+1);
      end;

      ibSP.ParamByName('DCAD').Value := eddcad.Text;
      ibSP.ParamByName('DALT').Value := strtodate(TSConsulta.Values['data_sistema']);
      ibSP.ParamByName('DUSU').Value := frmprincipal.cad_usuUSU_DUSU.AsString;
      ibSP.ParamByName('CART').Value := edcart.Text;
      ibSP.ParamByName('CPRO').Value := edcart.Text;
      ibSP.ParamByName('CFOR').Value := edcfor.Text;
      ibSP.ParamByName('CBAR').Value := TRIM('5501'+strzero(strtoint(edid.Text),8));
      ibSP.ParamByName('DPRO').Value := eddpro.Text;
      ibSP.ParamByName('OBSE').Value := edobse.Text;
      ibSP.ParamByName('COMP').Value := edcomp.Text;
      ibSP.ParamByName('DUNI').Value := cbduni.Text;
      ibSP.ParamByName('GRAD').Value := '';
      ibSP.ParamByName('CEMB').Value := cemb;
      ibSP.ParamByName('DEMB').Value := cbdemb.Text;
      ibSP.ParamByName('CGRP').Value := cgrp;
      ibSP.ParamByName('RGRP').Value := rgrp;
      ibSP.ParamByName('DGRP').Value := cbdgrp.Text;
      ibSP.ParamByName('CCAT').Value := ccat;
      ibSP.ParamByName('RCAT').Value := rcat;
      ibSP.ParamByName('DCAT').Value := cbdcat.Text;
      ibSP.ParamByName('CCOR').Value := null;
      ibSP.ParamByName('RCOR').Value := null;
      ibSP.ParamByName('DCOR').Value := null;
      ibSP.ParamByName('CCOL').Value := ccol;
      ibSP.ParamByName('DCOL').Value := cbdcol.Text;
      ibSP.ParamByName('CDFO').Value := cdfo;
      ibSP.ParamByName('DORI').Value := cbdori.Text;
      ibSP.ParamByName('REPR').Value := cbrepr.Text;
      ibSP.ParamByName('CCST').Value := cbccst.Text;
      ibSP.ParamByName('CCLF').Value := cbcclf.Text;
      ibSP.ParamByName('METR').Value := edmetr.Text;
      ibSP.ParamByName('PESO').Value := edpeso.Text;
      ibSP.ParamByName('UTIL').Value := edutil.Text;
      ibSP.ParamByName('LARG').Value := edlarg.Text;
      ibSP.ParamByName('GRAM').Value := edgram.Text;
      ibSP.ParamByName('REND').Value := edrend.Text;
      ibSP.ParamByName('PSCN').Value := edpscn.Text;
      ibSP.ParamByName('PSMR').Value := edpsmr.Text;
      ibSP.ParamByName('ELAS').Value := edelas.Text;
      ibSP.ParamByName('ELAC').Value := edelac.Text;
      ibSP.ParamByName('STLN').Value := 'L';
      ibSP.ParamByName('STAL').Value := cbstal.Text;
      ibSP.ParamByName('LAVA').Value := 'N';
      ibSP.ParamByName('STA').Value  := '0';
      ibSP.ParamByName('STAV').Value := cbstav.Text;
      ibSP.ParamByName('PIPI').Value := edpipi.Text;
      ibSP.ParamByName('VOCX').Value := edvocx.Text;
      ibSP.ParamByName('VOSC').Value := edvosc.Text;
      ibSP.ParamByName('VOFD').Value := edvofd.Text;
      ibSP.ParamByName('PCOR').Value := null;
      ibSP.ExecProc;
      IBTra.CommitRetaining;

      if cad_pro_com.Active then
      try
        cad_pro_com.DisableControls;
        cad_pro_com.First;

        while not cad_pro_com.Eof do
        begin
          ibSP.StoredProcName  := 'SP_CAD_PRO_COM';
          ibSP.Prepare;

          ibSP.ParamByName('ID').Value   := 0;
          ibSP.ParamByName('CART').Value := cad_pro_comCOM_CART.AsString;
          ibSP.ParamByName('BASE').Value := cad_pro_comCOM_BASE.AsString;
          ibSP.ParamByName('COMP').Value := cad_pro_comCOM_COMP.AsString;
          ibSP.ParamByName('QTDE').Value := cad_pro_comCOM_QTDE.AsString;
          ibSP.ExecProc;

          cad_pro_com.Next;
        end;
      finally
        cad_pro_com.EnableControls;
      end;

      ibSP.StoredProcName  := 'SP_CAD_PRO_IMG';
      ibSP.Prepare;
      ibSP.ParamByName('ID').Value   := 0;
      ibSP.ParamByName('CART').Value := edcart.Text;
      ibSP.ParamByName('ONS1').Value := edons1.Text;
      ibSP.ParamByName('ONS2').Value := edons2.Text;
      ibSP.ParamByName('ONS3').Value := edons3.Text;
      ibSP.ParamByName('ONS4').Value := edons4.Text;
      ibSP.ParamByName('ONS5').Value := edons5.Text;
      ibSP.ParamByName('ONS6').Value := edons6.Text;
      ibSP.ParamByName('ONS7').Value := edons7.Text;
      ibSP.ParamByName('ONS8').Value := edons8.Text;

      if foto.Size > 0 then
      ibSP.ParamByName('FOTO').LoadFromStream(foto ,ftBlob)
      else
      ibSP.ParamByName('FOTO').Value := null;

      if pic1.Size > 0 then
      ibSP.ParamByName('INS1').LoadFromStream(pic1,ftBlob)
      else
      ibSP.ParamByName('INS1').Value := null;

      if pic2.Size > 0 then
      ibSP.ParamByName('INS2').LoadFromStream(pic2,ftBlob)
      else
      ibSP.ParamByName('INS2').Value := null;

      if pic3.Size > 0 then
      ibSP.ParamByName('INS3').LoadFromStream(pic3,ftBlob)
      else
      ibSP.ParamByName('INS3').Value := null;

      if pic4.Size > 0 then
      ibSP.ParamByName('INS4').LoadFromStream(pic4,ftBlob)
      else
      ibSP.ParamByName('INS4').Value := null;

      if pic5.Size > 0 then
      ibSP.ParamByName('INS5').LoadFromStream(pic5,ftBlob)
      else
      ibSP.ParamByName('INS5').Value := null;

      if pic6.Size > 0 then
      ibSP.ParamByName('INS6').LoadFromStream(pic6 ,ftBlob)
      else
      ibSP.ParamByName('INS6').Value := null;

      if pic7.Size > 0 then
      ibSP.ParamByName('INS7').LoadFromStream(pic7,ftBlob)
      else
      ibSP.ParamByName('INS7').Value := null;

      if pic8.Size > 0 then
      ibSP.ParamByName('INS8').LoadFromStream(pic8,ftBlob)
      else
      ibSP.ParamByName('INS8').Value := null;
      ibSP.ExecProc;
      IBTra.CommitRetaining;

      editado := true;
    except
      editado := false;
      ibTRA.Rollback;
      IBTra.StartTransaction;
   end;
  finally
    close;
  end;
end;

procedure Tfrmcad_tec_edi.NOVA_REFERENCIA;
begin
  if edcart.Text = '' then
     abort;

  carregaFoto(0,cad_pro_imgPRO_FOTO,cad_pro_img,frmprincipal.parametros);

  edons1.Text := '';
  edons2.Text := '';
  edons3.Text := '';
  edons4.Text := '';
  edons5.Text := '';
  edons6.Text := '';
  edons7.Text := '';
  edons8.Text := '';

  img1.Picture.Graphic := nil;
  img2.Picture.Graphic := nil;
  img3.Picture.Graphic := nil;
  img4.Picture.Graphic := nil;
  img5.Picture.Graphic := nil;
  img6.Picture.Graphic := nil;
  img7.Picture.Graphic := nil;
  img8.Picture.Graphic := nil;

  edid.Text    := '0';
  eddcad.Text  := TSConsulta.Values['data_sistema'];
  cbduni.Text  := '';
  edcomp.Text  := '';
  cbdcol.Text  := '';
  cbdgrp.Text  := '';
  cbdcat.Text  := '';
  cbcclf.Text  := '';
  cbstav.Text  := 'A';
  edcbar.Text  := '';
  cbccst.Text  := '0';
  edvmva.Text  := '0,00';
  edpipi.Text  := '0';
  edobse.Text  := '';
  cbdemb.Text  := '';
  cbstal.Text  := '';
  edpeso.Text  := '0,00';
  edrend.Text  := '0,00';
  edlarg.Text  := '0,00';
  edmetr.Text  := '0,00';
  edpscn.Text  := '0,00';
  edpsmr.Text  := '0,00';
  edgram.Text  := '0,00';
  edutil.Text  := '0,00';
  edelac.Text  := '0,00';
  edelas.Text  := '0,00';
  cbdori.Text  := '';
  cbrepr.Text  := 'R';
  if frmprincipal.parametrosPAR_CNA1.AsString = '5101' then
  cbrepr.Text  := 'P';

  if cbccst.Text = '0' then
  cbdori.Text := 'BRASIL';

  with consulta do
  begin
    if (frmprincipal.parametrosPAR_FANT.AsString = 'OTIMOTEX TECIDO') or
       (frmprincipal.parametrosPAR_FANT.AsString = 'LEBIANCO') then
    begin
      if length(edcart.Text) = 2 then
      begin
        SQL.Clear;
        SQL.Add('SELECT SUBSTRING(PRO_CART FROM 4 FOR 2) FROM CAD_PRO');
        SQL.Add('WHERE  PRO_CART LIKE '''+copy(edcart.Text,1,2)+'%''');
        SQL.Add('ORDER BY 1');
        Open;
        Last;

        if fields[0].IsNull then
           edcart.Text := copy(edcart.Text,1,2)+'.01' else
        begin
          if fields[0].AsInteger >= 99 then
             edcart.Text := copy(edcart.Text,1,2)+'.'+strzero(fields[0].AsInteger+1,3) else
             edcart.Text := copy(edcart.Text,1,2)+'.'+strzero(fields[0].AsInteger+1,2);
        end;
      end;
    end;
  end;

  ABRE_COMPOSICAO;
  edcart.Enabled := false;
end;

procedure Tfrmcad_tec_edi.ALTERA_REFERENCIA;
var
  b:TStream;
begin
  with cad_pro do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM CAD_PRO');
    if frmprincipal.parametrosPAR_GRAD.AsString = '1' then
    SQL.Add('WHERE    PRO_CART = '''+edcart.Text+'''')
    else
    SQL.Add('WHERE    PRO_CPRO = '''+frmcad_tec.cadastroPRO_CPRO.AsString+'''');
    SQL.Add('AND      PRO_STA = '''+inttostr(frmcad_tec.dbgConsulta.Tag)+'''');
    SQL.Add('ORDER BY PRO_DCOR');
    Open;
  end;

  with cad_pro_img do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM CAD_PRO_IMG');
    SQL.Add('WHERE PRO_CART = '''+edcart.Text+'''');
    Open;
  end;

  edons1.Text := cad_pro_imgPRO_ONS1.AsString;
  edons2.Text := cad_pro_imgPRO_ONS2.AsString;
  edons3.Text := cad_pro_imgPRO_ONS3.AsString;
  edons4.Text := cad_pro_imgPRO_ONS4.AsString;
  edons5.Text := cad_pro_imgPRO_ONS5.AsString;
  edons6.Text := cad_pro_imgPRO_ONS6.AsString;
  edons7.Text := cad_pro_imgPRO_ONS7.AsString;
  edons8.Text := cad_pro_imgPRO_ONS8.AsString;

  carregaFoto(cad_pro_imgPRO_FOTO.BlobSize,cad_pro_imgPRO_FOTO,cad_pro_img,frmprincipal.parametros);

  img1.Picture.Bitmap := nil;
  b :=  cad_pro_img.CreateBlobStream(cad_pro_img.FieldByName('PRO_INS1'),bmRead);
  img1.Picture.Bitmap.LoadFromStream(b);

  img2.Picture.Bitmap := nil;
  b :=  cad_pro_img.CreateBlobStream(cad_pro_img.FieldByName('PRO_INS2'),bmRead);
  img2.Picture.Bitmap.LoadFromStream(b);

  img3.Picture.Bitmap := nil;
  b :=  cad_pro_img.CreateBlobStream(cad_pro_img.FieldByName('PRO_INS3'),bmRead);
  img3.Picture.Bitmap.LoadFromStream(b);

  img4.Picture.Bitmap := nil;
  b :=  cad_pro_img.CreateBlobStream(cad_pro_img.FieldByName('PRO_INS4'),bmRead);
  img4.Picture.Bitmap.LoadFromStream(b);

  img5.Picture.Bitmap := nil;
  b :=  cad_pro_img.CreateBlobStream(cad_pro_img.FieldByName('PRO_INS5'),bmRead);
  img5.Picture.Bitmap.LoadFromStream(b);

  img6.Picture.Bitmap := nil;
  b :=  cad_pro_img.CreateBlobStream(cad_pro_img.FieldByName('PRO_INS6'),bmRead);
  img6.Picture.Bitmap.LoadFromStream(b);

  img7.Picture.Bitmap := nil;
  b :=  cad_pro_img.CreateBlobStream(cad_pro_img.FieldByName('PRO_INS7'),bmRead);
  img7.Picture.Bitmap.LoadFromStream(b);

  img8.Picture.Bitmap := nil;
  b :=  cad_pro_img.CreateBlobStream(cad_pro_img.FieldByName('PRO_INS8'),bmRead);
  img8.Picture.Bitmap.LoadFromStream(b);

  cad_pro.First;
  while not cad_pro.Eof do
  begin
    if cad_proID.AsInteger = frmcad_tec.cadastroID.AsInteger then
       break;
    cad_pro.Next;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT FOR_FANT FROM CAD_FOR');
    SQL.Add('WHERE  ID = '''+cad_proPRO_CDFO.AsString+'''');
    Open;
    cbdfor.Text := fields[0].AsString;
  end;

  edcbar.Text  := cad_proPRO_CBAR.AsString;
  eddcad.Text  := cad_proPRO_DCAD.AsString;
  edcfor.Text  := cad_proPRO_CFOR.AsString;
  eddpro.Text  := cad_proPRO_DPRO.AsString;
  cbduni.Text  := cad_proPRO_DUNI.AsString;
  cbdcol.Text  := cad_proPRO_DCOL.AsString;
  cbdcat.Text  := cad_proPRO_DCAT.AsString;
  cbdgrp.Text  := cad_proPRO_DGRP.AsString;
  cbcclf.Text  := cad_proPRO_CCLF.AsString;
  cbccst.Text  := cad_proPRO_CCST.AsString;
  cbstav.Text  := cad_proPRO_STAV.AsString;
  edobse.Text  := cad_proPRO_OBSE.AsString;
  cbdori.Text  := cad_proPRO_DORI.AsString;
  cbrepr.Text  := cad_proPRO_REPR.AsString;
  cbdemb.Text  := cad_proPRO_DEMB.AsString;
  cbstal.Text  := cad_proPRO_STAL.AsString;
  edpeso.Text  := formatfloat('#,0.00########',cad_proPRO_PESO.AsFloat);
  edrend.Text  := formatfloat('#,0.00########',cad_proPRO_REND.AsFloat);
  edlarg.Text  := formatfloat('#,0.00########',cad_proPRO_LARG.AsFloat);
  edmetr.Text  := formatfloat('#,0.00########',cad_proPRO_METR.AsFloat);
  edpscn.Text  := formatfloat('#,0.00########',cad_proPRO_PSCN.AsFloat);
  edpsmr.Text  := formatfloat('#,0.00########',cad_proPRO_PSMR.AsFloat);
  edgram.Text  := formatfloat('#,0.00########',cad_proPRO_GRAM.AsFloat);
  edutil.Text  := formatfloat('#,0.00########',cad_proPRO_UTIL.AsFloat);
  edelac.Text  := formatfloat('#,0.00########',cad_proPRO_ELAC.AsFloat);
  edelas.Text  := formatfloat('#,0.00########',cad_proPRO_ELAS.AsFloat);

  edid.Text := cad_proID.AsString;

  if cbstav.Text = 'P' then
  edcart.Enabled := true;

  ABRE_COMPOSICAO;
end;

procedure Tfrmcad_tec_edi.FormShow(Sender: TObject);
begin
  inherited;
  if tag = 1 then
  begin
    edcart.Enabled := false;
    edcart.Text    := frmcad_tec.cadastroPRO_CART.AsString;
    ALTERA_REFERENCIA;
  end;
  edcart.Tag := 0;
end;


procedure Tfrmcad_tec_edi.siINCClick(Sender: TObject);
begin
  cad_pro_com.Append;
end;

procedure Tfrmcad_tec_edi.siALTClick(Sender: TObject);
begin
  cad_pro_com.Edit;
end;

procedure Tfrmcad_tec_edi.siDELClick(Sender: TObject);
begin
  cad_pro_com.Delete;
end;

procedure Tfrmcad_tec_edi.siSClick(Sender: TObject);
begin
  if cad_pro_com.State in [dsInsert,dsEdit] then
  begin
    if cad_pro_comCOM_COMP.AsString = '' then
       cad_pro_com.Cancel
    else
       cad_pro_com.Post;
  end;
end;

procedure Tfrmcad_tec_edi.siCANClick(Sender: TObject);
begin
  if cad_pro_com.State in [dsInsert,dsEdit] then
     cad_pro_com.Cancel;
end;

procedure Tfrmcad_tec_edi.cad_pro_comAfterCancel(DataSet: TDataSet);
begin
  siINC.Enabled := true;
  siALT.Enabled := true;
  siDEL.Enabled := true;
  siS.Enabled   := false;
  siC.Enabled   := false;

  if pcMAIN.ActivePageIndex = 3 then
     dbgcom.SetFocus;
end;

procedure Tfrmcad_tec_edi.cad_pro_comAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  siINC.Enabled := true;
  siALT.Enabled := true;
  siDEL.Enabled := true;
  siS.Enabled   := false;
  siC.Enabled   := false;

  if pcMAIN.ActivePageIndex = 3 then
     dbgcom.SetFocus;

  wRec := cad_pro_com.GetBookmark;
  tSHEILD.CommitRetaining;

  cad_pro_com.Close;
  cad_pro_com.Open;
  if (wRec = Nil) or (cad_pro_com.Fields[0].IsNull) then cad_pro_com.last
     else cad_pro_com.GotoBookmark(wRec);
  cad_pro_com.FreeBookmark(wRec);
  MONTA_COMPOSICAO;
end;

procedure Tfrmcad_tec_edi.cad_pro_comAfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
  MONTA_COMPOSICAO;
end;

procedure Tfrmcad_tec_edi.cad_pro_comBeforeCancel(DataSet: TDataSet);
begin
  siINC.Enabled := true;
  siALT.Enabled := true;
  siDEL.Enabled := true;
  siS.Enabled   := false;
  siC.Enabled   := false;

  if pcMAIN.ActivePageIndex = 3 then
     dbgcom.SetFocus;

  if cad_pro_com.RecordCount = 0 then
  begin
    cad_pro_com.Close;
    cad_pro_com.Open;
  end;
end;

procedure Tfrmcad_tec_edi.cad_pro_comNewRecord(DataSet: TDataSet);
begin
  cad_pro_comID.Value       := 0;
  cad_pro_comCOM_QTDE.Value := 0;
  cad_pro_comCOM_CART.Value := edcart.Text;
end;

procedure Tfrmcad_tec_edi.dbgcomKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgcom.FocusedColumn = 2 then
                 begin
                   cad_pro_com.Next;
                   if cad_pro_com.Eof then
                      cad_pro_com.Append;
                   dbgcom.FocusedColumn := 0;
                 end
                 else
                    dbgcom.FocusedColumn := dbgcom.FocusedColumn + 1;
               end;
    VK_DELETE: if cad_pro_com.State = dsBrowse then
                  siDEL.Click;
    VK_ESCAPE: if cad_pro_com.State = dsBrowse then close else cad_pro_com.Cancel;
    VK_INSERT: if not siSAV.Enabled then siINC.Click;
  end;
end;

procedure Tfrmcad_tec_edi.MONTA_COMPOSICAO;
var
  base,comp: string;
begin
  base := '';
  comp := '';

  try
    cad_pro_com.DisableControls;
    cad_pro_com.First;
    while not cad_pro_com.Eof do
    begin
      if base <> cad_pro_comCOM_BASE.AsString then
      begin
        base := cad_pro_comCOM_BASE.AsString;
        if comp = '' then
           comp := comp + cad_pro_comCOM_BASE.AsString+': '
        else
           comp := comp + '   '+cad_pro_comCOM_BASE.AsString+': ';
      end;

      comp := comp +' '+formatfloat('0.00',cad_pro_comCOM_QTDE.AsFloat)+'%'+' '+cad_pro_comCOM_COMP.AsString;
      cad_pro_com.Next;
    end;
  finally
    cad_pro_com.First;
    cad_pro_com.EnableControls;
  end;

  edcomp.Text := comp;
  if copy(edcomp.Text,1,1) = ' ' then
     edcomp.Text := copy(edcomp.Text,2,length(edcomp.Text));
  edcomp.Text := TRIM(copy(edcomp.Text,1,120));
end;

procedure Tfrmcad_tec_edi.cad_pro_comAfterEdit(DataSet: TDataSet);
begin
  siINC.Enabled := false;
  siALT.Enabled := false;
  siDEL.Enabled := false;
  siS.Enabled   := true;
  siC.Enabled   := true;

  if pcMAIN.ActivePageIndex = 3 then
     dbgcom.SetFocus;
end;

procedure Tfrmcad_tec_edi.sbfotoClick(Sender: TObject);
var
   foto_stream : TMemoryStream;
begin
  foto_stream := TMemoryStream.Create;
  foto_stream.Clear;

  if OpenPictureDialogEdit.Execute then
  begin
    foto_stream.LoadFromFile(OpenPictureDialogEdit.FileName );

    if ( foto_stream.Size < 350000 ) then
    begin
      imag.Picture.LoadFromFile(OpenPictureDialogEdit.FileName);
      imag.Tag := 1;
    end
    else
       raise exception.Create('O Tamanho Máximo Permitido para uma Imagem é de 350 KB !'+#13+'Altere o Tamanho da Foto ou Diminua a Qualidade da Mesma.');
  end;
end;

procedure Tfrmcad_tec_edi.imagDblClick(Sender: TObject);
begin
  imag.Picture := nil;
  imag.Update;

  carregaFoto(0,cad_pro_imgPRO_FOTO,cad_pro_img,frmprincipal.parametros);
end;

procedure Tfrmcad_tec_edi.img1Click(Sender: TObject);
begin
  if not DirectoryExists('C:\Dev\Imagens\ImageP') then
  raise exception.Create('Diretório de imagens de lavagens não existe !');

  frmeti_sel := TFrmeti_sel.Create(self);
  try
    frmeti_sel.ShowModal;
  finally
     if frmeti_sel.Imagem <> nil then
     begin
       (Sender as TImage).Picture := frmeti_sel.Imagem.Picture;

       case (Sender as TImage).Tag of
          1: img1.Picture.LoadFromFile('C:\Dev\Imagens\ImageP\'+frmeti_sel.Imagem.Name+'.BMP');
          2: img2.Picture.LoadFromFile('C:\Dev\Imagens\ImageP\'+frmeti_sel.Imagem.Name+'.BMP');
          3: img3.Picture.LoadFromFile('C:\Dev\Imagens\ImageP\'+frmeti_sel.Imagem.Name+'.BMP');
          4: img4.Picture.LoadFromFile('C:\Dev\Imagens\ImageP\'+frmeti_sel.Imagem.Name+'.BMP');
          5: img5.Picture.LoadFromFile('C:\Dev\Imagens\ImageP\'+frmeti_sel.Imagem.Name+'.BMP');
          6: img6.Picture.LoadFromFile('C:\Dev\Imagens\ImageP\'+frmeti_sel.Imagem.Name+'.BMP');
          7: img7.Picture.LoadFromFile('C:\Dev\Imagens\ImageP\'+frmeti_sel.Imagem.Name+'.BMP');
          8: img8.Picture.LoadFromFile('C:\Dev\Imagens\ImageP\'+frmeti_sel.Imagem.Name+'.BMP');
       end;
     end;
     frmeti_sel.Free;
  end;
end;

procedure Tfrmcad_tec_edi.sbtab_corClick(Sender: TObject);
begin
  frmtab_cor := tfrmtab_cor.create(self);
  frmtab_cor.Hint      := '';
  frmtab_cor.FormStyle := fsNormal;
  frmtab_cor.Position  := poDesktopCenter;
  frmtab_cor.Visible   := false;
  frmtab_cor.ShowModal;
end;

procedure Tfrmcad_tec_edi.edvmvaValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvmva.Text = '' then
     edvmva.Text := '0';

  edvmva.Text := formatfloat('0.00',strtofloat(edvmva.Text));
end;

procedure Tfrmcad_tec_edi.edpipiValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpipi.Text = '' then
     edpipi.Text := '0';

  edpipi.Text := formatfloat('0',strtofloat(edpipi.Text));
end;

procedure Tfrmcad_tec_edi.edrendValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edrend.Text = '' then
     edrend.Text := '0';

  edrend.Text := formatfloat('0.00',strtofloat(edrend.Text));
end;

procedure Tfrmcad_tec_edi.edlargValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edlarg.Text = '' then
     edlarg.Text := '0';

  edlarg.Text := formatfloat('0.00',strtofloat(edlarg.Text));
end;

procedure Tfrmcad_tec_edi.edmetrValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edmetr.Text = '' then
     edmetr.Text := '0';

  edmetr.Text := formatfloat('0.00',strtofloat(edmetr.Text));
end;

procedure Tfrmcad_tec_edi.edpscnValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpscn.Text = '' then
     edpscn.Text := '0';

  edpscn.Text := formatfloat('0.00',strtofloat(edpscn.Text));
end;

procedure Tfrmcad_tec_edi.edpsmrValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpsmr.Text = '' then
     edpsmr.Text := '0';

  edpsmr.Text := formatfloat('0.00',strtofloat(edpsmr.Text));
end;

procedure Tfrmcad_tec_edi.edgramValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edgram.Text = '' then
     edgram.Text := '0';

  edgram.Text := formatfloat('0.00',strtofloat(edgram.Text));
end;

procedure Tfrmcad_tec_edi.edutilValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edutil.Text = '' then
     edutil.Text := '0';

  edutil.Text := formatfloat('0.00',strtofloat(edutil.Text));
end;

procedure Tfrmcad_tec_edi.edelacValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edelac.Text = '' then
     edelac.Text := '0';

  edelac.Text := formatfloat('0.00',strtofloat(edelac.Text));
end;

procedure Tfrmcad_tec_edi.edelasValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edelas.Text = '' then
     edelas.Text := '0';

  edelas.Text := formatfloat('0.00',strtofloat(edelas.Text));
end;

procedure Tfrmcad_tec_edi.sbtab_colClick(Sender: TObject);
begin
  frmtab_col           := Tfrmtab_col.create(self);
  frmtab_col.FormStyle := fsNormal;
  frmtab_col.Position  := poDesktopCenter;
  frmtab_col.Visible   := false;
  try
    frmtab_col.ShowModal;
  finally
    if frmtab_col.editado then
    begin
      cbdcol.Values.Clear;
      cbdcol.Descriptions.Clear;
      frmtab_col.cadastro.First;
      while not frmtab_col.cadastro.Eof do
      begin
        cbdcol.Values.Add(frmtab_col.cadastroCOL_DCOL.AsString);
        cbdcol.Descriptions.Add(frmtab_col.cadastroCOL_DCOL.AsString);
        frmtab_col.cadastro.Next;
      end;
    end;
    freeAndNil(frmtab_col);
  end;
end;

procedure Tfrmcad_tec_edi.sbtab_grpClick(Sender: TObject);
begin
  frmtab_grp           := Tfrmtab_grp.create(self);
  frmtab_grp.FormStyle := fsNormal;
  frmtab_grp.Position  := poDesktopCenter;
  frmtab_grp.Visible   := false;
  try
    frmtab_grp.ShowModal;
  finally
    if frmtab_grp.editado then
    begin
      cbdgrp.Values.Clear;
      cbdgrp.Descriptions.Clear;
      frmtab_grp.cadastro.First;
      while not frmtab_grp.cadastro.Eof do
      begin
        cbdgrp.Values.Add(frmtab_grp.cadastrogrp_DGRP.AsString);
        cbdgrp.Descriptions.Add(frmtab_grp.cadastrogrp_DGRP.AsString);
        frmtab_grp.cadastro.Next;
      end;
    end;
    freeAndNil(frmtab_grp);
  end;
end;

procedure Tfrmcad_tec_edi.eddproKeyPress(Sender: TObject; var Key: Char);
begin
  if key = '''' then
     key := #0;
end;

procedure Tfrmcad_tec_edi.edcartExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if tag = 0 then
    begin
      with cad_pro do
      begin
        SQL.Clear;
        SQL.Add('SELECT * FROM CAD_PRO');
        SQL.Add('WHERE PRO_CART = '''+edcart.Text+'''');
        Open;
      end;

      if cad_pro.fields[0].IsNull then
         NOVA_REFERENCIA
      else
      begin
        edcart.SetFocus;
        if cad_proPRO_STA.AsString = '1' then
        raise exception.Create('Referencia enviada para a lixeira !') else
        raise exception.Create('Referencia já cadastrada !');
      end;
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmcad_tec_edi.cbccstExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if cbccst.Text = '0' then
    cbdori.Text := 'BRASIL' else
    cbdori.Text := 'CHINA';
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmcad_tec_edi.cbdcatExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if cbdcat.Text = cad_proPRO_DCAT.AsString then
       exit;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAT_PESO,CAT_CCLF,CAT_PIPI FROM CAD_PRO_CAC');
      SQL.Add('WHERE  CAT_DCAT = '''+cbdcat.Text+'''');
      Open;

      if not fields[0].IsNull then
      begin
        edpeso.Text := formatfloat('#,0.00########',fields[0].AsFloat);
        cbcclf.Text := fields[1].AsString;
        edpipi.Text := formatfloat('#,0.00########',fields[2].AsFloat);
      end;
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

end.

