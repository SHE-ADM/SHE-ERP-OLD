unit pcad_pro;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, IBEvents, IBStoredProc, IBDatabase,
  ImgList, DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid,  ComCtrls, ExtCtrls, dxDBTLCl, dxGrClms, Buttons,
  DBCtrls, StdCtrls, dxPageControl, jpeg, dxExEdtr, dxEdLib, dxEditor, DateUtils,
  dxDBELib, QRCtrls, math, StrUtils, shellapi, Menus, rxSpeedbar, IBSQL;

type
  Tfrmcad_pro = class(Tfrmpadr2)
    dbgConsultaDECP: TdxDBGridMaskColumn;
    dbgConsultaGRP_NO: TdxDBGridMaskColumn;
    dbgConsultaUCOM: TdxDBGridMaskColumn;
    ImageOPC2: TImageList;
    dbgConsultaARTIGO: TdxDBGridMaskColumn;
    dbgConsultaDTCA: TdxDBGridDateColumn;
    GBEstoque: TGroupBox;
    DTSCAD_PRO_EST: TDataSource;
    PCPrincipal: TdxPageControl;
    TSProntaEntrega: TdxTabSheet;
    CAD_PRO_RES: TIBQuery;
    DTSCAD_PRO_RES: TDataSource;
    dbgConsultaID: TdxDBGridMaskColumn;
    aux: TIBQuery;
    dbgConsultaDECA: TdxDBGridMaskColumn;
    dbgConsultaDTED: TdxDBGridDateColumn;
    dbgConsultaCF_NO: TdxDBGridMaskColumn;
    CAD_PRO_SEP: TIBQuery;
    DSTCAD_PRO_SEP: TDataSource;
    CAD_PRO_EST: TIBQuery;
    DBGCAD_PRO_EST: TdxDBGrid;
    DBGCAD_PRO_ESTSKU: TdxDBGridMaskColumn;
    DBGCAD_PRO_ESTDGCP: TdxDBGridMaskColumn;
    DBGCAD_PRO_ESTEPE_QTDE: TdxDBGridColumn;
    DBGCAD_PRO_ESTERS_QTDE: TdxDBGridColumn;
    DBGCAD_PRO_ESTESP_QTDE: TdxDBGridColumn;
    DBGCAD_PRO_ESTVPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_ESTVPRC_VAR: TdxDBGridMaskColumn;
    DBGCAD_PRO_ESTVPRC_REP: TdxDBGridMaskColumn;
    DBGCAD_PRO_ESTDTEK: TdxDBGridDateColumn;
    DBGCAD_PRO_ESTDTPV: TdxDBGridDateColumn;
    CAD_PRO_ESTC_ID: TIntegerField;
    DBGCAD_PRO_ESTEST_QTDE: TdxDBGridColumn;
    TSReservados: TdxTabSheet;
    DBGCAD_PRO_RES: TdxDBGrid;
    DBGCAD_PRO_RESSKU: TdxDBGridMaskColumn;
    DBGCAD_PRO_RESDGCP: TdxDBGridMaskColumn;
    DBGCAD_PRO_RESQTDE: TdxDBGridMaskColumn;
    DBGCAD_PRO_RESEST_DOCU: TdxDBGridMaskColumn;
    DBGCAD_PRO_RESDTCA: TdxDBGridDateColumn;
    DBGCAD_PRO_RESEST_DFAV: TdxDBGridMaskColumn;
    DBGCAD_PRO_RESEST_DUSU: TdxDBGridMaskColumn;
    TSSeparados: TdxTabSheet;
    DBGCAD_PRO_SEP: TdxDBGrid;
    DBGCAD_PRO_SEPSKU: TdxDBGridMaskColumn;
    DBGCAD_PRO_SEPDGCP: TdxDBGridMaskColumn;
    DBGCAD_PRO_SEPQTDE: TdxDBGridMaskColumn;
    DBGCAD_PRO_SEPEST_DOCU: TdxDBGridMaskColumn;
    DBGCAD_PRO_SEPEDTCA: TdxDBGridDateColumn;
    DBGCAD_PRO_SEPEST_DFAV: TdxDBGridMaskColumn;
    DBGCAD_PRO_SEPEST_DUSU: TdxDBGridMaskColumn;
    DBGCAD_PRO_SEPEST_DSEP: TdxDBGridMaskColumn;
    DBGCAD_PRO_SEPEST_DCAD: TdxDBGridDateColumn;
    TSFisico: TdxTabSheet;
    DBGCAD_PRO_EST_FIS: TdxDBGrid;
    CAD_PRO_EST_FIS: TIBQuery;
    DTSCAD_PRO_EST_FIS: TDataSource;
    DBGCAD_PRO_EST_FISD_DEOP: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_FISDEPK: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_FISDTPK: TdxDBGridDateColumn;
    DBGCAD_PRO_EST_FISDECE: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_FISLGCA: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_FISDTSP: TdxDBGridDateColumn;
    DBGCAD_PRO_EST_FISDESP: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_FISSKU: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_FISDGCP: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_FISQTDE: TdxDBGridMaskColumn;
    DBGCAD_PRO_EST_FISQTDS: TdxDBGridMaskColumn;
    CAD_PRO_EST_FISID: TLargeintField;
    CAD_PRO_EST_FISIDEP: TSmallintField;
    CAD_PRO_EST_FISIDCA: TSmallintField;
    CAD_PRO_EST_FISDTCA: TDateTimeField;
    CAD_PRO_EST_FISDETP: TIBStringField;
    CAD_PRO_EST_FISDEPK: TIBStringField;
    CAD_PRO_EST_FISDTPK: TDateTimeField;
    CAD_PRO_EST_FISCDSP: TLargeintField;
    CAD_PRO_EST_FISIDSP: TSmallintField;
    CAD_PRO_EST_FISDTSP: TDateTimeField;
    CAD_PRO_EST_FISDESP: TIBStringField;
    CAD_PRO_EST_FISIDCP: TIntegerField;
    CAD_PRO_EST_FISARTIGO: TIBStringField;
    CAD_PRO_EST_FISSKU: TIBStringField;
    CAD_PRO_EST_FISDECP: TIBStringField;
    CAD_PRO_EST_FISDGCP: TIBStringField;
    CAD_PRO_EST_FISREOP: TIBStringField;
    CAD_PRO_EST_FISQTDE: TIBBCDField;
    CAD_PRO_EST_FISQTDS: TIBBCDField;
    CadastroIDEP: TSmallintField;
    CadastroARTIGO: TIBStringField;
    CadastroDECP: TIBStringField;
    CadastroUCOM: TIBStringField;
    CadastroORIG: TSmallintField;
    CadastroD_ORIG: TIBStringField;
    CadastroINFADCAD: TIBStringField;
    CadastroDECA: TIBStringField;
    CadastroDTCA: TDateTimeField;
    CadastroDTED: TDateTimeField;
    CAD_PRO_ESTIDCA: TSmallintField;
    CAD_PRO_ESTDTCA: TDateTimeField;
    CAD_PRO_ESTIDED: TSmallintField;
    CAD_PRO_ESTDTED: TDateTimeField;
    CAD_PRO_ESTIDST: TSmallintField;
    CAD_PRO_ESTDTST: TDateTimeField;
    CAD_PRO_ESTCDST: TSmallintField;
    CAD_PRO_ESTREST: TIBStringField;
    CAD_PRO_ESTDEST: TIBStringField;
    CAD_PRO_ESTSKU: TIBStringField;
    CAD_PRO_ESTDGCP: TIBStringField;
    DBGCAD_PRO_ESTDEST: TdxDBGridMaskColumn;
    DBGCAD_PRO_ESTC_ID: TdxDBGridColumn;
    CAD_PRO_ESTDTEK: TDateTimeField;
    CAD_PRO_ESTDTPV: TDateTimeField;
    CAD_PRO_RESID: TIntegerField;
    CAD_PRO_RESIDEP: TSmallintField;
    CAD_PRO_RESDTCA: TDateTimeField;
    CAD_PRO_RESEST_DOCU: TIBStringField;
    CAD_PRO_RESEST_CFAV: TIntegerField;
    CAD_PRO_RESEST_DFAV: TIBStringField;
    CAD_PRO_RESEST_CUSU: TIntegerField;
    CAD_PRO_RESEST_DUSU: TIBStringField;
    CAD_PRO_RESIDCP: TIntegerField;
    CAD_PRO_RESSKU: TIBStringField;
    CAD_PRO_RESDGCP: TIBStringField;
    CAD_PRO_RESQTDE: TIBBCDField;
    CAD_PRO_SEPID: TIntegerField;
    CAD_PRO_SEPIDEP: TSmallintField;
    CAD_PRO_SEPDTCA: TDateTimeField;
    CAD_PRO_SEPEST_DSEP: TIBStringField;
    CAD_PRO_SEPEST_DOCU: TIBStringField;
    CAD_PRO_SEPEST_CFAV: TIntegerField;
    CAD_PRO_SEPEST_DFAV: TIBStringField;
    CAD_PRO_SEPEST_CUSU: TIntegerField;
    CAD_PRO_SEPEST_DUSU: TIBStringField;
    CAD_PRO_SEPIDCP: TIntegerField;
    CAD_PRO_SEPSKU: TIBStringField;
    CAD_PRO_SEPDGCP: TIBStringField;
    CAD_PRO_SEPQTDE: TIBBCDField;
    CAD_PRO_SEPEST_DCAD: TDateField;
    DBGCAD_PRO_EST_FISEST_QTDE: TdxDBGridColumn;
    DBGCAD_PRO_ESTREST: TdxDBGridMaskColumn;
    CAD_PRO_EST_FISC_ID: TIntegerField;
    DBGCAD_PRO_EST_FISC_ID: TdxDBGridColumn;
    DBGCAD_PRO_EST_FISREOP: TdxDBGridColumn;
    CadastroIDAK: TLargeintField;
    CadastroCMP_PAD: TIBStringField;
    CadastroGRP_ID: TIntegerField;
    CadastroGRP_NO: TIBStringField;
    CAD_PRO_ESTIDCP: TIntegerField;
    CAD_PRO_ESTDECA: TIBStringField;
    CAD_PRO_ESTCEAN: TIBStringField;
    CAD_PRO_ESTIDEK: TLargeintField;
    CAD_PRO_ESTDTSP: TDateTimeField;
    CAD_PRO_ESTCF_ID: TSmallintField;
    CAD_PRO_ESTCF_NO: TIBStringField;
    CAD_PRO_ESTCF_SKU: TIBStringField;
    CAD_PRO_ESTCF_CEAN: TIBStringField;
    CadastroIDCP: TIntegerField;
    CadastroCF_ID: TSmallintField;
    CadastroCF_NO: TIBStringField;
    CAD_PRO_ESTVPRC_PAD: TFloatField;
    CAD_PRO_ESTVPRC_VAR: TFloatField;
    CAD_PRO_ESTVPRC_REP: TFloatField;
    CAD_PRO_ESTEPE_QTDE: TIBBCDField;
    CAD_PRO_ESTEPE_QTRL: TIntegerField;
    CAD_PRO_ESTEST_QTDE: TIBBCDField;
    CAD_PRO_ESTEST_QTRL: TIntegerField;
    CAD_PRO_ESTERS_QTDE: TIBBCDField;
    CAD_PRO_ESTERS_QTRL: TIntegerField;
    CAD_PRO_ESTESP_QTDE: TIBBCDField;
    CAD_PRO_ESTESP_QTRL: TIntegerField;
    CAD_PRO_EST_FISLGCA: TIBStringField;
    CAD_PRO_EST_FISIDCE: TIntegerField;
    CAD_PRO_EST_FISDECE: TIBStringField;
    CAD_PRO_EST_FISEST_QTDE: TIBBCDField;
    CAD_PRO_EST_FISD_DEOP: TIBStringField;
    SIFCP: TSpeedItem;
    DBGCAD_PRO_ESTDTSP: TdxDBGridDateColumn;
    CAD_PRO_ESTIDSK: TLargeintField;
    CadastroIDSK: TLargeintField;
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
    CadastroCAT_ID: TIntegerField;
    CadastroCAT_NO: TIBStringField;
    CadastroXPAIS: TIBStringField;
    CadastroFPAIS: TIBStringField;
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
    procedure FormCreate(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure siINCClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure siPSQClick(Sender: TObject);
    procedure CAD_PRO_ESTCalcFields(DataSet: TDataSet);
    procedure cadastroAfterOpen(DataSet: TDataSet);
    procedure DSTCAD_PRO_SEPDataChange(Sender: TObject; Field: TField);
    procedure FormDestroy(Sender: TObject);
    procedure DTSCAD_PRO_ESTDataChange(Sender: TObject; Field: TField);
    procedure DBGCAD_PRO_ESTCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSCAD_PRO_RESDataChange(Sender: TObject; Field: TField);
    procedure DTSCAD_PRO_EST_FISDataChange(Sender: TObject; Field: TField);
    procedure DBGCAD_PRO_EST_FISCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure CAD_PRO_EST_FISCalcFields(DataSet: TDataSet);
    procedure SIFCPClick(Sender: TObject);
    procedure IMG_PADClick(Sender: TObject);
    procedure DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject; Field: TField);
    procedure FormActivate(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcad_pro: Tfrmcad_pro;

implementation

uses uPrincipal, pcad_pro_edi,
  ppesquisa,  qFicha_Tecnica, pIMG_PAD_INF;

{$R *.dfm}

procedure Tfrmcad_pro.FormCreate(Sender: TObject);
begin
  inherited;
  { Evento }
  RECDefault.Event := 'CAD_PRO';

  { Paginação }
  RECDefault.FrmPosition := poDesigned; { Abertura Controlada  }
  RECDefault.WorkArea    := True;       { Toda Tela do Windows }
  RECDefault.MainArea    := False;      { Toda Tela MainForm + Exclusão Botões }

  { Amostras }
  PCAmostras.ActivePageIndex := 0;

  with cadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   MAX(CP.IDCP) AS IDCP ,');
    SQL.Add('         CP.IDEP     ,CP.IDAK  ,CP.IDSK,');
    SQL.Add('         CP.ARTIGO   ,CP.DECP  ,');
    SQL.Add('         CP.CMP_PAD  ,CP.UCOM  ,');
    SQL.Add('         CP.GRP_ID   ,CP.GRP_NO,');
    SQL.Add('         CP.CAT_ID   ,CP.CAT_NO,');
    SQL.Add('         CP.ORIG     ,CP.D_ORIG,');
    SQL.Add('         CP.CF_ID    ,CP.CF_NO ,');
    SQL.Add('         CP.XPAIS    ,CP.FPAIS ,');
    SQL.Add('         CP.INFADCAD,');

    SQL.Add('         MAX(DECA) AS DECA,MAX(DTCA) AS DTCA,MAX(DTED) AS DTED');

    SQL.Add('FROM     VW_CAD_PRO_PSQ AS CP');
    SQL.Add('WHERE    CP.IDCP = 0');

    SQL.Add('GROUP BY IDEP    ,IDAK,IDSK,IDAK,');
    SQL.Add('         ARTIGO  ,DECP  ,');
    SQL.Add('         CMP_PAD ,UCOM  ,');
    SQL.Add('         GRP_ID  ,GRP_NO,');
    SQL.Add('         CAT_ID  ,CAT_NO,');
    SQL.Add('         ORIG    ,D_ORIG,');
    SQL.Add('         CF_ID   ,CF_NO ,');
    SQL.Add('         XPAIS   ,FPAIS ,');
    SQL.Add('         INFADCAD');

    Prepare;
  end;

  CAD_PRO_EST.Prepare;
  CAD_PRO_EST_FIS.Prepare;

  CAD_PRO_RES.ParamByName('IDEP').Value := RECParametros.ID;
  CAD_PRO_RES.Prepare;

  CAD_PRO_SEP.ParamByName('IDEP').Value := RECParametros.ID;
  CAD_PRO_SEP.Prepare;

end;

procedure Tfrmcad_pro.FormActivate(Sender: TObject);
begin
  inherited;
  TAG := 98;
end;

procedure Tfrmcad_pro.FormResize(Sender: TObject);
begin
  inherited;
  if (Showing) and (TAG = 98) then
  try
    SIPSQ.Click;
  finally
    TAG := 0;
  end;
end;

procedure Tfrmcad_pro.FormDestroy(Sender: TObject);
begin
  inherited;
  frmcad_pro := Nil;
end;

procedure Tfrmcad_pro.siPSQClick(Sender: TObject);
begin
  if not Assigned(FrmPesquisa) then
  try
    FrmPesquisa := TFrmPesquisa.Create(Nil);
    FrmPesquisa.Tag := 98;
    FrmPesquisa.ShowModal;
  finally
    try
      if FrmPesquisa.Editado then
      with Cadastro do
      begin
        oCTransact(TConsulta);
        oOTransact(TConsulta);

        Close;
        SQL.Clear;
        SQL.Add('SELECT MAX(PK.IDCP) AS IDCP ,');
        SQL.Add('       PK.IDEP     ,PK.IDAK  ,PK.IDSK,');
        SQL.Add('       PK.ARTIGO   ,PK.DECP  ,');
        SQL.Add('       PK.CMP_PAD  ,PK.UCOM  ,');
        SQL.Add('       PK.GRP_ID   ,PK.GRP_NO,');
        SQL.Add('       PK.CAT_ID   ,PK.CAT_NO,');
        SQL.Add('       PK.ORIG     ,PK.D_ORIG,');
        SQL.Add('       PK.CF_ID    ,PK.CF_NO ,');
        SQL.Add('       PK.XPAIS    ,PK.FPAIS ,');
        SQL.Add('       PK.INFADCAD,');

        SQL.Add('       MAX(PK.DECA) AS DECA,MAX(PK.DTCA) AS DTCA,MAX(PK.DTED) AS DTED');

        SQL.Add('FROM VW_CAD_PRO_PSQ AS PK');

        { Texto }
        if FrmPesquisa.EDTXT.Text <> EmptyStr then
        SQL.Add('WHERE ' + FrmPesquisa.cField + ' ' + FrmPesquisa.cWhere + ' ''' + FrmPesquisa.EDTXT.Text + IFThen(FrmPesquisa.cWhere = 'LIKE','%''',''''));

        { Data }
        if (FrmPesquisa.cData <> EmptyStr) and (FrmPesquisa.dxDT1.Date > 0) and (FrmPesquisa.dxDT2.Date > 0) then
        SQL.Add(IFThen(FrmPesquisa.EDTXT.Text <> EmptyStr,'AND ','WHERE') + FrmPesquisa.cData + ' BETWEEN ''' + FormatDateTime('mm/dd/yy',FrmPesquisa.dxDT1.Date) +  ''' AND ''' + FormatDateTime('mm/dd/yy',FrmPesquisa.dxDT2.Date) + '''');

        SQL.Add('GROUP BY IDEP    ,IDAK,IDSK,IDAK,');
        SQL.Add('         ARTIGO  ,DECP  ,');
        SQL.Add('         CMP_PAD ,UCOM  ,');
        SQL.Add('         GRP_ID  ,GRP_NO,');
        SQL.Add('         CAT_ID  ,CAT_NO,');
        SQL.Add('         ORIG    ,D_ORIG,');
        SQL.Add('         CF_ID   ,CF_NO ,');
        SQL.Add('         XPAIS   ,FPAIS ,');
        SQL.Add('         INFADCAD');

        SQL.Add('ORDER BY ARTIGO');
        Open;

        APSQ_CAD_PRO := FrmPesquisa.cbCAMPO.Text;
      end;
    finally
      FreeAndNil(FrmPesquisa);
    end;
  end;

  DBGConsulta.SetFocus;
  DBGConsultaARTIGO.Field.FocusControl;
end;

procedure Tfrmcad_pro.dbgConsultaDblClick(Sender: TObject);
begin
{Ricarod  if cadastroPRO_STA.AsString <> '0' then
  raise exception.Create('Produto Enviado para a Lixeira !');}
  inherited;
end;

procedure Tfrmcad_pro.siINCClick(Sender: TObject);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Produtos';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  PCampo[0] := 'USU_VISU';
  PCampo[1] := 'Fornecedores';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  Application.CreateForm (Tfrmcad_pro_edi, frmcad_pro_edi);
  frmcad_pro_edi.Tag := frmcad_pro.Tag;
  try
    frmcad_pro_edi.ShowModal;
  finally
    if frmcad_pro_edi.editado then
    ExecuteEvent;

    freeAndNil(frmcad_pro_edi);
  end;
end;

procedure Tfrmcad_pro.siALTClick(Sender: TObject);
begin                                                                                                           
  sbMSG.Panels[0].Text := 'Alteração';
  sbMSG.Update;

  if cadastro.Fields[0].IsNull then abort;

  if not SBEdicao.Visible then exit;

  Application.CreateForm (Tfrmcad_pro_edi, frmcad_pro_edi);
  try
    frmcad_pro_edi.Tag := 1;
    frmcad_pro_edi.ShowModal;
  finally
    if frmcad_pro_edi.editado then
    ExecuteEvent;

    freeAndNil(frmcad_pro_edi);
  end;
end;

procedure Tfrmcad_pro.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Produtos';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  if oYesNo(handle,'Confirma a exclusão do produto '+cadastroDECP.AsString+' ?') = mrno then
     Abort;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FIRST 1 PV.ROM_DERO,PV.ROM_DROM,CC.CLI_FANT,CV.USU_DUSU');
    SQL.Add('FROM     PED_VEN_CAB AS PV');
    SQL.Add('JOIN     CAD_CLI     AS CC   ON (CC.ID         = PV.ROM_CCLI)');
    SQL.Add('JOIN     CAD_USU     AS CV   ON (CV.USU_CUSU   = PV.ROM_CVEN)');
    SQL.Add('JOIN     PED_VEN_ITE AS PVFK ON (PVFK.ROM_CCAB = PV.ID)');
    SQL.Add('JOIN     CAD_PRO     AS CP   ON (CP.ID         = PVFK.ROM_CPRO)');
    SQL.Add('WHERE    CP.ID = '''+CadastroIDCP.AsString+'''');
    SQL.Add('ORDER BY 1 DESC');
    Prepare;
    Open;

    if not Fields[0].IsNull then
       oException(DBGConsulta,'Falha ao tentar excluir !'+#13+
                              'Produto possui venda efetuada !');
  end;

  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO');
      SQL.Add('WHERE  ID = '''+CadastroIDCP.AsString+'''');
      ExecQuery;
    end;

    oCTransact(TEdicao);
    frmprincipal.Log_Eve('Produtos','Cadastro de Produtos','Exclusão' ,CadastroIDCP.AsString,CadastroIDCP.AsString,LOWERCASE(cadastroDECP.AsString),'','');
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oErro(Application.Handle,'Falha ao tentar excluir produto !'+#13+#13+
                               'Error Code: '+E.Message+'.'       +#13+
                                Caption+'.');
    end;
  end;

  ExecuteEvent;
end;

procedure Tfrmcad_pro.CAD_PRO_ESTCalcFields(DataSet: TDataSet);
begin
  cad_pro_estC_ID.Value     := cad_pro_est.RecNo;
  cad_pro_estEPE_QTDE.Value := cad_pro_estEST_QTDE.AsFloat - cad_pro_estERS_QTDE.AsFloat - cad_pro_estESP_QTDE.AsFloat;
  cad_pro_estEPE_QTRL.Value := 0;
end;

procedure Tfrmcad_pro.cadastroAfterOpen(DataSet: TDataSet);
begin
  PCPrincipal.ActivePage := TSProntaEntrega;

  if CAD_PRO_IMG_CDN.State = dsInactive then
     CAD_PRO_IMG_CDN.Open;

  if CAD_PRO_EST.State = dsInactive then
     CAD_PRO_EST.Open;

  if CAD_PRO_RES.State = dsInactive then
     CAD_PRO_RES.Open;

  if CAD_PRO_SEP.State = dsInactive then
     CAD_PRO_SEP.Open;

  if CAD_PRO_EST_FIS.State = dsInactive then
     CAD_PRO_EST_FIS.Open;

  if Showing then
  begin
    DBGCAD_PRO_EST.SetFocus;
    DBGCAD_PRO_ESTDGCP.Field.FocusControl;

    DBGCAD_PRO_EST_FISDGCP.Field.FocusControl;
  end;  

end;

procedure Tfrmcad_pro.DTSCAD_PRO_ESTDataChange(Sender: TObject;
  Field: TField);
begin
  DBGCAD_PRO_EST.ApplyBestFit(DBGCAD_PRO_ESTSKU );
  DBGCAD_PRO_EST.ApplyBestFit(DBGCAD_PRO_ESTDGCP);
end;

procedure Tfrmcad_pro.DBGCAD_PRO_ESTCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGCAD_PRO_ESTREST.Index] = 'PRÉ' then
    begin
      AColor      := $00BEEFF8;
      AFont.Color := clBlack;
    end else
    if ANode.Values[DBGCAD_PRO_ESTREST.Index] = 'I' then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end else
    begin
      if (AColumn = DBGCAD_PRO_ESTDEST) and (ANode.Values[DBGCAD_PRO_ESTREST.Index] = 'A') then
      begin
        AColor      := $00C4FFC4;
        AFont.Color := clBlack;
      end;

      if (AColumn = DBGCAD_PRO_ESTSKU) or (AColumn = DBGCAD_PRO_ESTDGCP) or (AColumn = DBGCAD_PRO_ESTDEST) then
      begin
        AColor      := clGray;
        AFont.Color := clWhite;
      end;

      { Pronta Entrega }
      if AColumn = DBGCAD_PRO_ESTEPE_QTDE then
         if ANode.Values[DBGCAD_PRO_ESTEPE_QTDE.Index] <> 0 then
         if ANode.Values[DBGCAD_PRO_ESTEPE_QTDE.Index] <  0 then
         begin
           AColor      := $000024B3;
           AFont.Color := clWhite;
           AFont.Style := [fsBold];
         end else
         if ANode.Values[DBGCAD_PRO_ESTEPE_QTDE.Index] > 0 then
         begin
           AColor      := $00C4FFC4;
           AFont.Color := clBlack;
           AFont.Style := [fsBold];
         end;

      if (AColumn = DBGCAD_PRO_ESTERS_QTDE) and (ANode.Values[DBGCAD_PRO_ESTERS_QTDE.Index] > 0) then
      begin
        AColor      := clInfobk;
        AFont.Color := clBlack;
      end;

      if (AColumn = DBGCAD_PRO_ESTESP_QTDE) and (ANode.Values[DBGCAD_PRO_ESTESP_QTDE.Index] > 0) then
      begin
        AColor      := clInfobk;
        AFont.Color := clBlack;
      end;

      if (AColumn = DBGCAD_PRO_ESTDTPV) and (ANode.Values[DBGCAD_PRO_ESTDTPV.Index] <> Null) then
      begin
        AColor      := clWhite;
        AFont.Color := clBlack;
      end;

      if (AColumn = DBGCAD_PRO_ESTDTSP) and (ANode.Values[DBGCAD_PRO_ESTDTSP.Index] <> Null) then
      begin
        AColor      := clWhite;
        AFont.Color := clBlack;
      end;
    end;
  end;
end;

procedure Tfrmcad_pro.DTSCAD_PRO_RESDataChange(Sender: TObject;
  Field: TField);
begin
  { Fit Colunas }
  DBGCAD_PRO_RES.ApplyBestFit(DBGCAD_PRO_RESSKU );
  DBGCAD_PRO_RES.ApplyBestFit(DBGCAD_PRO_RESDGCP);
end;

procedure Tfrmcad_pro.DSTCAD_PRO_SEPDataChange(Sender: TObject;
  Field: TField);
begin
  { Fit Colunas }
  DBGCAD_PRO_SEP.ApplyBestFit(DBGCAD_PRO_SEPSKU );
  DBGCAD_PRO_SEP.ApplyBestFit(DBGCAD_PRO_SEPDGCP);
end;

procedure Tfrmcad_pro.CAD_PRO_EST_FISCalcFields(DataSet: TDataSet);
begin
  CAD_PRO_EST_FISC_ID.Value := CAD_PRO_EST_FIS.RecNo;
end;

procedure Tfrmcad_pro.DTSCAD_PRO_EST_FISDataChange(Sender: TObject;
  Field: TField);
begin
  DBGCAD_PRO_EST_FIS.ApplyBestFit(DBGCAD_PRO_EST_FISSKU );
  DBGCAD_PRO_EST_FIS.ApplyBestFit(DBGCAD_PRO_EST_FISDGCP);
  DBGCAD_PRO_EST_FIS.ApplyBestFit(DBGCAD_PRO_EST_FISD_DEOP);
end;

procedure Tfrmcad_pro.DBGCAD_PRO_EST_FISCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    {
     if ANode.Values[DBGCAD_PRO_EST_FISC_ID.Index] <> Null then
     begin
       if ANode.Values[DBGCAD_PRO_EST_FISC_ID.Index] mod 2 <> 0 then
          AColor := $00EFF0F1;

       if (AColor = $00EFF0F1) and (AFont.Color = clWhite) then
           AFont.Color := clBlack;
     end;
    }

    if ANode.Values[DBGCAD_PRO_EST_FISREOP.Index] = 'Z' then
       AColor := clInfoBk else
    if ANode.Values[DBGCAD_PRO_EST_FISREOP.Index] = 'E' then
       AColor := $00F8F8F8 else
       AColor := clWhite;

    if (AColumn = DBGCAD_PRO_EST_FISQTDE) and (ANode.Values[DBGCAD_PRO_EST_FISQTDE.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGCAD_PRO_EST_FISQTDS) and (ANode.Values[DBGCAD_PRO_EST_FISQTDS.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGCAD_PRO_EST_FISSKU) or (AColumn = DBGCAD_PRO_EST_FISDGCP) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
    end;

    if AColumn = DBGCAD_PRO_EST_FISEST_QTDE then
       if ANode.Values[DBGCAD_PRO_EST_FISEST_QTDE.Index] < 0 then
       begin
         AColor      := $000024B3;
         AFont.Color := clWhite;
       end else
       begin
         AColor      := clBtnFace;
         AFont.Color := clBlack;
       end;
  end;
end;

procedure Tfrmcad_pro.SIFCPClick(Sender: TObject);
var
  RECRelatorios: TRECRelatorios;
begin
  if CadastroIDCP.AsInteger = 0 then
     Abort;
     
  frmprincipal.FazPrnAtualVirarDefault('Ficha Técnica');

  Initialize(RECRelatorios);
  FillChar(RECRelatorios,SizeOf(RECRelatorios),0);

  RECRelatorios.PrintTAG := 0;
  RECRelatorios.Handle   := Self.Handle;

  RECRelatorios.PEC1CodigoText    := 'TODOS';
  RECRelatorios.PEC2CodigoText    := 'TODOS';
  RECRelatorios.IEC1ConsultaField := 'CP.ARTIGO';
  RECRelatorios.PEC1ConsultaText  := CadastroARTIGO.AsString;
  RECRelatorios.IEC1ConsultaWhere := '=';
  RECRelatorios.PEC2ConsultaText  := 'TODOS';
  RECRelatorios.PEC3ConsultaText  := 'TODOS';
  RECRelatorios.PEC4ConsultaText  := 'TODOS';
  RECRelatorios.IEDataField       := '';

  if Assigned(qrpFicha_Tecnica) then qrpFicha_Tecnica.BringToFront else
  begin
    qrpFicha_Tecnica := TqrpFicha_Tecnica.Create(Self,RECRelatorios);
    qrpFicha_Tecnica.WinControlFormCreate(qrpFicha_Tecnica);
  end;
end;

procedure Tfrmcad_pro.DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject;
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

procedure Tfrmcad_pro.IMG_PADClick(Sender: TObject);
begin
  if Assigned(FRMIMG_PAD_INF) then FRMIMG_PAD_INF.BringToFront else
  begin
    FRMIMG_PAD_INF := TFRMIMG_PAD_INF.Create(Self,IMG_PAD.Picture,EDIMG_PAD.Text,CAD_PRO_ESTSKU.AsString,CAD_PRO_ESTDGCP.AsString,CadastroDECP.AsString,CadastroCMP_PAD.AsString,CadastroGRP_NO.AsString,CadastroCAT_NO.AsString,CadastroXPAIS.AsString,CadastroFPAIS.AsString);
    FRMIMG_PAD_INF.Show;
  end;
end;

end.

