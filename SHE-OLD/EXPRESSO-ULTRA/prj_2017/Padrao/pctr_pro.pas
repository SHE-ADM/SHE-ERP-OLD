unit pctr_pro;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, dxExEdtr, IBEvents, IBStoredProc, IBSQL, IBDatabase,
  ImgList, DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, math, StrUtils,
  dxDBGrid, rxSpeedbar, StdCtrls, ExtCtrls, ComCtrls, dxDBTLCl, dxGrClms,
  DBCtrls, dxEditor, dxEdLib, dxPageControl;

type
  Tfrmctr_pro = class(Tfrmpadr2)
    CadastroID: TIntegerField;
    CadastroIDEP: TIntegerField;
    CadastroDEEP: TIBStringField;
    CadastroIDCA: TIntegerField;
    CadastroDTRO: TDateField;
    CadastroDEOP: TIBStringField;
    CadastroQTDE: TIBBCDField;
    CadastroQTRL: TIntegerField;
    CadastroINFADCAD: TIBStringField;
    DBGConsultaLGCA: TdxDBGridMaskColumn;
    DBGConsultaCDRO: TdxDBGridMaskColumn;
    DBGConsultaDTCA: TdxDBGridDateColumn;
    DBGConsultaDETP: TdxDBGridMaskColumn;
    DBGConsultaDECE: TdxDBGridMaskColumn;
    DBGConsultaQTRL: TdxDBGridMaskColumn;
    DBGConsultaQTDE: TdxDBGridMaskColumn;
    FKCadastro: TIBQuery;
    DTSFKCadastro: TDataSource;
    GBFKCadastro: TGroupBox;
    DBGFKConsulta: TdxDBGrid;
    CadastroLGCA: TIBStringField;
    CadastroDTCA: TDateTimeField;
    CadastroCDRO: TLargeintField;
    FKCadastroID: TIntegerField;
    FKCadastroIDEP: TSmallintField;
    FKCadastroDEEP: TIBStringField;
    FKCadastroIDCA: TSmallintField;
    FKCadastroLGCA: TIBStringField;
    FKCadastroDTCA: TDateTimeField;
    FKCadastroIDST: TSmallintField;
    FKCadastroLGST: TIBStringField;
    FKCadastroDTST: TDateTimeField;
    FKCadastroCDST: TSmallintField;
    FKCadastroDEST: TIBStringField;
    FKCadastroREST: TIBStringField;
    FKCadastroCDRO: TLargeintField;
    FKCadastroDTRO: TDateField;
    FKCadastroCDET: TLargeintField;
    FKCadastroIDCP: TIntegerField;
    FKCadastroARTIGO: TIBStringField;
    FKCadastroSKU: TIBStringField;
    FKCadastroDECP: TIBStringField;
    FKCadastroDGCP: TIBStringField;
    DBGFKConsultaITEM: TdxDBGridMaskColumn;
    DBGFKConsultaARTIGO: TdxDBGridMaskColumn;
    DBGFKConsultaSKU: TdxDBGridMaskColumn;
    DBGFKConsultaDECP: TdxDBGridMaskColumn;
    DBGFKConsultaDGCP: TdxDBGridMaskColumn;
    FKCadastroREOP: TIBStringField;
    DBGFKConsultaREOP: TdxDBGridMaskColumn;
    DBGFKConsultaQTDE: TdxDBGridColumn;
    SINovo: TSpeedItem;
    SICancela: TSpeedItem;
    CadastroIDCE: TIntegerField;
    CadastroDECE: TIBStringField;
    CadastroCDOP: TSmallintField;
    CadastroREOP: TIBStringField;
    CadastroCDTP: TSmallintField;
    CadastroDETP: TIBStringField;
    CadastroIDST: TSmallintField;
    CadastroDTST: TDateTimeField;
    CadastroCDST: TSmallintField;
    CadastroREST: TIBStringField;
    CadastroDEST: TIBStringField;
    DBGConsultaDEST: TdxDBGridMaskColumn;
    FKCadastroIDCE: TIntegerField;
    FKCadastroDECE: TIBStringField;
    FKCadastroCDOP: TSmallintField;
    FKCadastroDEOP: TIBStringField;
    FKCadastroCDTP: TSmallintField;
    FKCadastroDETP: TIBStringField;
    FKCadastroIDFK: TLargeintField;
    FKCadastroCTNR: TIBStringField;
    FKCadastroLOTE: TIBStringField;
    FKCadastroMAPA: TIBStringField;
    FKCadastroIDAK: TLargeintField;
    FKCadastroIDEK: TLargeintField;
    FKCadastroNCM: TIBStringField;
    FKCadastroPIPI: TIBBCDField;
    FKCadastroCEAN: TIBStringField;
    FKCadastroCMP_PAD: TIBStringField;
    FKCadastroUCOM: TIBStringField;
    FKCadastroQTDE: TIBBCDField;
    FKCadastroQTRL: TIntegerField;
    FKCadastroINFADCAD: TIBStringField;
    FKCadastroINFADPRO: TIBStringField;
    FKCadastroCP_IDEP: TSmallintField;
    DBGFKConsultaQTRL: TdxDBGridMaskColumn;
    DBGFKConsultaDEST: TdxDBGridMaskColumn;
    CadastroRETP: TIBStringField;
    CadastroD_DEOP: TIBStringField;
    FKCadastroITEM: TIntegerField;
    DBGConsultaDEOP: TdxDBGridMaskColumn;
    FKCadastroEST_QTDE: TIBBCDField;
    FKCadastroEST_QTRL: TIntegerField;
    FKCadastroQTDS: TIBBCDField;
    FKCadastroQTRS: TIntegerField;
    DBGFKConsultaEST_QTDE: TdxDBGridMaskColumn;
    DBGFKConsultaEST_QTRL: TdxDBGridMaskColumn;
    DBGFKConsultaQTDS: TdxDBGridMaskColumn;
    DBGFKConsultaQTRS: TdxDBGridMaskColumn;
    DBGConsultaREST: TdxDBGridMaskColumn;
    SIProdutos: TSpeedItem;
    FKCadastroUFCE: TIBStringField;
    FKCadastroRETP: TIBStringField;
    FKCadastroD_DEOP: TIBStringField;
    FKCadastroCDI: TSmallintField;
    FKCadastroIDSK: TLargeintField;
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
    FKCadastroCOL_NO: TIBStringField;
    FKCadastroGRP_NO: TIBStringField;
    FKCadastroCAT_NO: TIBStringField;
    FKCadastroXPAIS: TIBStringField;
    FKCadastroFPAIS: TIBStringField;
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
    DBGConsultaDEEP: TdxDBGridMaskColumn;
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SINovoClick(Sender: TObject);
    procedure SICancelaClick(Sender: TObject);
    procedure siPSQClick(Sender: TObject);
    procedure DTSFKCadastroDataChange(Sender: TObject; Field: TField);
    procedure DTSCadastroDataChange(Sender: TObject; Field: TField);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGFKConsultaCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure SIProdutosClick(Sender: TObject);
    procedure DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject; Field: TField);
    procedure IMG_PADClick(Sender: TObject);
    procedure FKCadastroAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmctr_pro: Tfrmctr_pro;

implementation

uses uPrincipal,
  ppesquisa, pent_pro, pcad_pro, pIMG_PAD_INF;

{$R *.dfm}

procedure Tfrmctr_pro.FormCreate(Sender: TObject);
begin
  inherited;
  { Amostras }
  PCAmostras.ActivePageIndex := 0;

  { Evento }
  RECDefault.Event := 'CAD_PRO';

  { Paginação }
  RECDefault.FrmPosition := poDesigned; { Abertura Controlada  }
  RECDefault.WorkArea    := True;       { Toda Tela do Windows }
  RECDefault.MainArea    := False;      { Toda Tela MainForm + Exclusão Botões }

  Cadastro.Open;
end;

procedure Tfrmctr_pro.FormDestroy(Sender: TObject);
begin
  inherited;
  frmctr_pro := Nil;
end;

procedure Tfrmctr_pro.siPSQClick(Sender: TObject);
begin
  if not Assigned(FrmPesquisa) then
  try
    FrmPesquisa := TFrmPesquisa.Create(Nil);
    frmpesquisa.Tag := 99;
    frmpesquisa.ShowModal;
  finally
    if   frmpesquisa.editado then
    with frmpesquisa do
    begin
      if (edTXT.Text <> EmptyStr) or (dxdt1.Date > 0) then
          with Cadastro do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT PK.* FROM VW_CAD_PRO_EST_RPK AS PK');
            SQL.Add('WHERE  PK.ID > 0');

            { Texto }
            if EDTXT.Text <> EmptyStr then
               if Pos(CField,'ARTIGOSKUDGCPDECP') > 0 then
               begin
                 SQL.Add('AND EXISTS (SELECT FK.ID');
                 SQL.Add('            FROM   CAD_PRO_EST AS FK');
                 SQL.Add('            JOIN   CAD_PRO     AS CP ON (CP.ID = FK.IDCP)');
                 SQL.Add('            WHERE  FK.CDRO   = PK.CDRO');

                 SQL.Add('AND ' + CField + ' ' + CWhere + ' ''' + EDTXT.Text + '' + IFThen(CWhere = 'LIKE','%','') + ''')');
               end else
                 SQL.Add('AND ' + CField + ' ' + CWhere + ' ''' + EDTXT.Text + '''');

            { Data }
            if (cData <> EmptyStr) and (dxDT1.Date > 0) and (dxDT2.Date > 0) then
            SQL.Add('AND ' + cData + ' BETWEEN ''' + FormatDateTime('mm/dd/yy',dxDT1.Date) +  ''' AND ''' + FormatDateTime('mm/dd/yy',dxDT2.Date) + '''');

            SQL.Add('ORDER BY PK.DTCA DESC');
            Open;

            APSQ_ROM_EST := FrmPesquisa.cbCAMPO.Text;
          end;
    end;

    FreeAndNil(FrmPesquisa);
  end;

  DBGConsulta.SetFocus;
end;

procedure Tfrmctr_pro.SINovoClick(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrment_pro,frment_pro);
end;

procedure Tfrmctr_pro.SICancelaClick(Sender: TObject);
begin
  if oYesNo(handle,'Confirma Cancelamento ?') = mrNo then
     Abort;
end;

procedure Tfrmctr_pro.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if FKCadastro.State      = dsInactive then FKCadastro.Open;
  if CAD_PRO_IMG_CDN.State = dsInactive then CAD_PRO_IMG_CDN.Open;
end;

procedure Tfrmctr_pro.FKCadastroAfterOpen(DataSet: TDataSet);
begin
  if CAD_PRO_IMG_CDN.State = dsInactive then
     CAD_PRO_IMG_CDN.Open;
end;

procedure Tfrmctr_pro.DTSCadastroDataChange(Sender: TObject;
  Field: TField);
begin
//  DBGConsultaDECE.Visible := (RECParametros.ID <> CadastroIDCE.AsString);

  DBGConsulta.ApplyBestFit(DBGConsultaDEST);
  DBGConsulta.ApplyBestFit(DBGConsultaQTDE); DBGConsultaQTDE.Width := DBGConsultaQTDE.Width + 10;
end;

procedure Tfrmctr_pro.DTSFKCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaSKU );
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaDECP);
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaDGCP);

  DBGFKConsulta.ApplyBestFit(DBGFKConsultaQTDE); DBGFKConsultaQTDE.Width := DBGFKConsultaQTDE.Width + 10;
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaQTDS); DBGFKConsultaQTDS.Width := DBGFKConsultaQTDS.Width + 10;

  DBGFKConsulta.ApplyBestFit(DBGFKConsultaEST_QTDE); DBGFKConsultaEST_QTDE.Width := DBGFKConsultaEST_QTDE.Width + 10;
end;

procedure Tfrmctr_pro.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGConsultaREST.Index] = 'PRÉ' then
    begin
      AColor      := $00BEEFF8;
      AFont.Color := clBlack;
    end else
    if ANode.Values[DBGConsultaREST.Index] = 'I' then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end else
    begin
      if (AColumn = DBGConsultaDEST) and (ANode.Values[DBGConsultaREST.Index] = 'A') then
      begin
        AColor      := $00C4FFC4;
        AFont.Color := clBlack;
      end;
    end;
  end;  
end;

procedure Tfrmctr_pro.DBGFKConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if Pos('CAN',ANode.Values[DBGFKConsultaDEST.Index]) > 0 then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end;

    if ((AColumn = DBGFKConsultaQTDE) or (AColumn = DBGFKConsultaQTRL)) and (ANode.Values[DBGFKConsultaQTDE.Index] > 0) then
         AFont.Style := [fsBold];

    if ((AColumn = DBGFKConsultaQTDS) or (AColumn = DBGFKConsultaQTRS)) and (ANode.Values[DBGFKConsultaQTDS.Index] > 0) then
         AFont.Style := [fsBold];
  end;
end;

procedure Tfrmctr_pro.SIProdutosClick(Sender: TObject);
begin
  uFrmCreate(Self,Tfrmcad_pro,frmcad_pro);
end;

procedure Tfrmctr_pro.DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject;
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

procedure Tfrmctr_pro.IMG_PADClick(Sender: TObject);
begin
  if Assigned(FRMIMG_PAD_INF) then FRMIMG_PAD_INF.BringToFront else
  begin
    FRMIMG_PAD_INF := TFRMIMG_PAD_INF.Create(Self,IMG_PAD.Picture,EDIMG_PAD.Text,FKCadastroSKU.AsString,FKCadastroDGCP.AsString,FKCadastroDECP.AsString,FKCadastroCMP_PAD.AsString,FKCadastroGRP_NO.AsString,FKCadastroCAT_NO.AsString,FKCadastroXPAIS.AsString,FKCadastroFPAIS.AsString);
    FRMIMG_PAD_INF.Show;
  end;
end;

end.
