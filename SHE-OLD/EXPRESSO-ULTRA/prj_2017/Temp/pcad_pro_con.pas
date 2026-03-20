unit pcad_pro_con;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxExEdtr, dxEdLib,
  StdCtrls, ExtCtrls, DB, IBCustomDataSet, IBQuery, ComCtrls,jpeg, FMTBcd,
  IBDatabase, dxPageControl, DBCtrls, ImgList, Buttons,  math, StrUtils,
  rxSpeedbar,dxDBELib;

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
    GBConsulta: TGroupBox;
    DBGConsulta: TdxDBGrid;
    DBGConsultaSKU: TdxDBGridMaskColumn;
    DBGConsultaNCM: TdxDBGridMaskColumn;
    DBGConsultaDGCP: TdxDBGridMaskColumn;
    DBGConsultaEPE_QTDE: TdxDBGridColumn;
    Consulta: TIBQuery;
    DBGConsultaDECP: TdxDBGridMaskColumn;
    DBGConsultaUCOM: TdxDBGridMaskColumn;
    DBGConsultaVPRC_PAD: TdxDBGridMaskColumn;
    DBGConsultaVPRC_VAR: TdxDBGridMaskColumn;
    DBGConsultaVPRC_REP: TdxDBGridMaskColumn;
    ILMenu: TImageList;
    DBGConsultaDEST: TdxDBGridMaskColumn;
    CadastroIDCP: TIntegerField;
    CadastroIDEP: TSmallintField;
    CadastroDEEP: TIBStringField;
    CadastroIDCA: TSmallintField;
    CadastroDTCA: TDateTimeField;
    CadastroDECA: TIBStringField;
    CadastroIDED: TSmallintField;
    CadastroDTED: TDateTimeField;
    CadastroIDST: TSmallintField;
    CadastroDTST: TDateTimeField;
    CadastroCDST: TSmallintField;
    CadastroREST: TIBStringField;
    CadastroDEST: TIBStringField;
    CadastroDTEK: TDateTimeField;
    CadastroDTSP: TDateTimeField;
    CadastroDTPV: TDateTimeField;
    CadastroARTIGO: TIBStringField;
    CadastroIDAK: TLargeintField;
    CadastroNCM: TIBStringField;
    CadastroPIPI: TIBBCDField;
    CadastroSKU: TIBStringField;
    CadastroCEAN: TIBStringField;
    CadastroIDEK: TLargeintField;
    CadastroDECP: TIBStringField;
    CadastroDGCP: TIBStringField;
    CadastroCMP_PAD: TIBStringField;
    CadastroUCOM: TIBStringField;
    CadastroCF_ID: TSmallintField;
    CadastroCF_NO: TIBStringField;
    CadastroCF_SKU: TIBStringField;
    CadastroCF_CEAN: TIBStringField;
    CadastroVPRC_PAD_INI: TFloatField;
    CadastroVPRC_PAD_FIM: TFloatField;
    CadastroVPRC_PAD: TFloatField;
    CadastroVPRC_PAD_PRZ: TFloatField;
    CadastroVPRC_PAD_PRO: TFloatField;
    CadastroVPRC_VAR: TFloatField;
    CadastroVPRC_VAR_PRZ: TFloatField;
    CadastroVPRC_VAR_PRO: TFloatField;
    CadastroVPRC_REP: TFloatField;
    CadastroVPRC_REP_PRZ: TFloatField;
    CadastroVPRC_REP_PRO: TFloatField;
    CadastroPESO: TIBBCDField;
    CadastroPSCN: TIBBCDField;
    CadastroMETRO: TIBBCDField;
    CadastroREND: TIBBCDField;
    CadastroGRAM: TIBBCDField;
    CadastroLARU: TIBBCDField;
    CadastroLART: TIBBCDField;
    CadastroELAL: TIBBCDField;
    CadastroELAC: TIBBCDField;
    CadastroCOL_ID: TIntegerField;
    CadastroCOL_NO: TIBStringField;
    CadastroGRP_ID: TIntegerField;
    CadastroGRP_NO: TIBStringField;
    CadastroORIG: TSmallintField;
    CadastroD_ORIG: TIBStringField;
    CadastroCPAIS: TSmallintField;
    CadastroXPAIS: TIBStringField;
    CadastroFPAIS: TIBStringField;
    CadastroINFADCAD: TIBStringField;
    GBInfoAdicional: TGroupBox;
    DBInfoAdicional: TdxDBMemo;
    CadastroCF_VPRC_PAD_ORI: TIBStringField;
    CadastroCF_VPRC_PAD: TFloatField;
    CadastroIDSK: TLargeintField;
    CadastroCAT_ID: TIntegerField;
    CadastroCAT_NO: TIBStringField;
    CadastroXPAIS_ABREV: TIBStringField;
    CadastroEPE_QTDE: TIBBCDField;
    CadastroEPE_QTRL: TIntegerField;
    CAD_PRO_IMG_CDN: TIBQuery;
    CAD_PRO_IMG_CDNIMG_ID: TLargeintField;
    CAD_PRO_IMG_CDNIMG_PAD: TBlobField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP1: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS1: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP2: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS2: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP3: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS3: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP4: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS4: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP5: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS5: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP6: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS6: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP7: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS7: TIBStringField;
    CAD_PRO_IMG_CDNIMG_ILA_BMP8: TBlobField;
    CAD_PRO_IMG_CDND_ILA_INS8: TIBStringField;
    DTSCAD_PRO_IMG_CDN: TDataSource;
    PNLAmostras: TPanel;
    PCAmostras: TdxPageControl;
    TSIMG_PAD: TdxTabSheet;
    EDIMG_PAD: TdxEdit;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DBGConsultaDblClick(Sender: TObject);
    procedure DTSCadastroDataChange(Sender: TObject; Field: TField);
    procedure SIMPesquisaClick(Sender: TObject);
    procedure SIMRefreshClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SIMSaidaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject; Field: TField);
    procedure IMG_PADClick(Sender: TObject);
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
  ppesquisa, pven_ped, pven_nfe, pIMG_PAD_INF;

{$R *.dfm}

procedure Tfrmcad_pro_con.FormCreate(Sender: TObject);
begin
  { Amostras }
  PCAmostras.ActivePageIndex := 0;

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
  begin
    if Screen.Width <= 1366 then
       Self.Font.Size := 8;

    Paint;
  end;  
end;

procedure Tfrmcad_pro_con.SIMRefreshClick(Sender: TObject);
begin
  oRTransact(TCadastro);
end;

procedure Tfrmcad_pro_con.SIMPesquisaClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(Self);
  try
    frmpesquisa.Tag          := 98;
    frmpesquisa.cbCAMPO.Text := 'Referencia';
    frmpesquisa.cbDATA.Text  := 'Cadastro';
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      CFIELD := oStrTran(CFIELD,'CAD_PRO','PK');

      if (edTXT.Text = '') and (dxdt1.Date < 0) then
      {nothing} else
      with cadastro do
      begin
        oRTransact(TCadastro);

        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.*,');
        SQL.Add('       COALESCE(FK.EPE_QTDE,0) AS EPE_QTDE,COALESCE(FK.EPE_QTRL,0) AS EPE_QTRL,');
        SQL.Add('       COALESCE(FK.EST_QTDE,0) AS EST_QTDE,COALESCE(FK.EST_QTRL,0) AS EST_QTRL,');
        SQL.Add('       COALESCE(FK.ERS_QTDE,0) AS ERS_QTDE,COALESCE(FK.ERS_QTRL,0) AS ERS_QTRL,');
        SQL.Add('       COALESCE(FK.ESP_QTDE,0) AS ESP_QTDE,COALESCE(FK.ESP_QTRL,0) AS ESP_QTRL ');

        SQL.Add('FROM      VW_CAD_PRO_PSQ  AS PK');
        SQL.Add('LEFT JOIN CAD_PRO_EST_LAN AS FK ON (FK.IDEP_LOG = ''' + RECParametros.ID + ''' AND FK.IDEK = PK.IDEK)');

        SQL.Add('WHERE FK.IDEP_LOG = ''' + RECParametros.ID + '''');

        { Texto }
        if EDTXT.Text <> EmptyStr then
        SQL.Add('AND ' + CField + ' ' + CWhere + ' ''' + EDTXT.Text + '' + IFThen(CWhere = 'LIKE','%','') + '''');

        { Data }
        if (cData <> EmptyStr) and (dxDT1.Date > 0) and (dxDT2.Date > 0) then
        SQL.Add('AND ' + cData + ' BETWEEN ''' + FormatDateTime('mm/dd/yy',dxDT1.Date) +  ''' AND ''' + FormatDateTime('mm/dd/yy',dxDT2.Date) + '''');

        SQL.Add('ORDER BY PK.CDST,PK.ARTIGO,PK.DGCP');
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
  if CadastroDEST.AsString <> 'ATIVO' then
     oException(Nil,'Produto ' + CadastroDEST.AsString);

  if Assigned(frmven_nfe) then
  begin
    if frmven_nfe.nfe_001.State = dsBrowse then
       frmven_nfe.nfe_001.Append;

    frmven_nfe.nfe_001NFE_IPRO.value      := cadastroIDCP.AsInteger;
    frmven_nfe.nfe_001NFE_CPROD.value     := CadastroSKU.AsString;
    frmven_nfe.nfe_001NFE_XPROD.Value     := CadastroDECP.AsString;
    frmven_nfe.nfe_001NFE_PREC.Value      := cadastroVPRC_PAD.AsFloat;
    frmven_nfe.nfe_001NFE_VUNCOM.Value    := cadastroVPRC_PAD.AsFloat;
    frmven_nfe.nfe_001NFE_UCOM.Value      := CadastroUCOM.AsString;
    frmven_nfe.nfe_001NFE_NCM.Value       := CadastroNCM.AsString;
    frmven_nfe.nfe_001NFE_ORIG.Value      := cadastroORIG.AsString;
    frmven_nfe.nfe_001NFE_PIPI.Value      := CadastroPIPI.AsFloat;
    frmven_nfe.nfe_001NFE_METR.Value      := cadastroMETRO.AsFloat;
    frmven_nfe.nfe_001NFE_PESO.Value      := cadastroPESO.AsFloat;
    frmven_nfe.nfe_001NFE_REND.Value      := cadastroREND.AsFloat;
    frmven_nfe.nfe_001NFE_PSCN.Value      := cadastroPSCN.AsFloat;
    frmven_nfe.nfe_001NFE_REPR.Value      := 'R';
    frmven_nfe.nfe_001NFE_INFADPROD.Value := CadastroCMP_PAD.AsString + ' ' + CadastroINFADCAD.AsString;

    if (frmven_nfe.nfe_001NFE_CFOP.AsString = '5102') and (frmven_nfe.nfe_001NFE_ORIG.AsString = '0') and (frmprincipal.parametrosPAR_FANT.AsString = 'LEBIANCO') then
    begin
      frmven_nfe.nfe_001NFE_VUNCOM.Value := frmven_nfe.nfe_001NFE_PREC.AsFloat;
      frmven_nfe.nfe_001NFE_REPR.Value   := 'L';
    end;

    frmven_nfe.dbgnfe.FocusedColumn := 4;
  end;

  Editado := True;
  Close;
end;

procedure Tfrmcad_pro_con.DTSCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  DBGConsultaDEST.Visible := (CadastroDEST.AsString <> 'ATIVO');
end;

procedure Tfrmcad_pro_con.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
  DBGConsultaDblClick(Self);
end;

procedure Tfrmcad_pro_con.CadastroAfterOpen(DataSet: TDataSet);
begin
  if CAD_PRO_IMG_CDN.State = dsInactive then
     CAD_PRO_IMG_CDN.Open;

  DBGConsulta.FocusedColumn := DBGConsultaDGCP.Index;
end;

procedure Tfrmcad_pro_con.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGConsultaDEST.Index] = 'PRÉ-CADASTRO' then
    begin
      AColor      := $00C1FFFF;
      AFont.Color := clBlack;
    end else
    if ANode.Values[DBGConsultaDEST.Index] = 'INATIVO' then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end else
    begin
      if AColumn = DBGConsultaEPE_QTDE then
      if ANode.Values[DBGConsultaEPE_QTDE.Index] = 0 then
      begin
        AColor      := $00C1FFFF;
        AFont.Color := clBlack;
      end else
      if ANode.Values[DBGConsultaEPE_QTDE.Index] < 0 then
      begin
        AColor      := $000024B3;
        AFont.Color := clWhite;
      end else
      begin
        AColor      := $00C4FFC4;
        AFont.Color := clBlack;
      end;
    end;
  end;

end;

procedure Tfrmcad_pro_con.DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject;
  Field: TField);
begin
  EDIMG_PAD.Text := _oLoadJPG(CAD_PRO_IMG_CDNIMG_ID,CAD_PRO_IMG_CDNIMG_PAD,IMG_PAD);

  DBILA_BMP1.Hint := CAD_PRO_IMG_CDND_ILA_INS1.AsString;
  DBILA_BMP2.Hint := CAD_PRO_IMG_CDND_ILA_INS2.AsString;
  DBILA_BMP3.Hint := CAD_PRO_IMG_CDND_ILA_INS3.AsString;
  DBILA_BMP4.Hint := CAD_PRO_IMG_CDND_ILA_INS4.AsString;
  DBILA_BMP5.Hint := CAD_PRO_IMG_CDND_ILA_INS5.AsString;
  DBILA_BMP6.Hint := CAD_PRO_IMG_CDND_ILA_INS6.AsString;
  DBILA_BMP7.Hint := CAD_PRO_IMG_CDND_ILA_INS7.AsString;
  DBILA_BMP8.Hint := CAD_PRO_IMG_CDND_ILA_INS8.AsString;

  BILA_BMP1.Hint  := DBILA_BMP1.Hint;
  BILA_BMP2.Hint  := DBILA_BMP2.Hint;
  BILA_BMP3.Hint  := DBILA_BMP3.Hint;
  BILA_BMP4.Hint  := DBILA_BMP4.Hint;
  BILA_BMP5.Hint  := DBILA_BMP5.Hint;
  BILA_BMP6.Hint  := DBILA_BMP6.Hint;
  BILA_BMP7.Hint  := DBILA_BMP7.Hint;
  BILA_BMP8.Hint  := DBILA_BMP8.Hint;
end;

procedure Tfrmcad_pro_con.IMG_PADClick(Sender: TObject);
begin
  if Assigned(FRMIMG_PAD_INF) then FRMIMG_PAD_INF.BringToFront else
  begin
    FRMIMG_PAD_INF := TFRMIMG_PAD_INF.Create(Self,IMG_PAD.Picture,EDIMG_PAD.Text,CadastroSKU.AsString,CadastroDGCP.AsString,CadastroDECP.AsString,CadastroCMP_PAD.AsString,CadastroGRP_NO.AsString,CadastroCAT_NO.AsString,CadastroXPAIS.AsString,CadastroFPAIS.AsString);
    FRMIMG_PAD_INF.Show;
  end;
end;

end.
