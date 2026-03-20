unit pent_pro;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math, StrUtils,
  rxSpeedbar,IBEvents, IBSQL, IBTable;

type
  Tfrment_pro = class(TForm)
    SBMenu: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    BNov: TSpeedItem;
    BSair: TSpeedItem;
    BSal: TSpeedItem;
    Edicao: TIBDataSet;
    DTSEdicao: TDataSource;
    BVis: TSpeedItem;
    pnlconsulta: TPanel;
    imageOPC3: TImageList;
    DBGEdicao: TdxDBGrid;
    SpeedBar4: TSpeedBar;
    SpeedbarSection17: TSpeedbarSection;
    SpeedbarSection18: TSpeedbarSection;
    SpeedbarSection19: TSpeedbarSection;
    SpeedbarSection20: TSpeedbarSection;
    siINC: TSpeedItem;
    siDEL: TSpeedItem;
    siSAV: TSpeedItem;
    siCAN: TSpeedItem;
    siALT: TSpeedItem;
    DBGEdicaoITEM: TdxDBGridMaskColumn;
    DBGEdicaoSKU: TdxDBGridMaskColumn;
    DBGEdicaoDECP: TdxDBGridMaskColumn;
    DBGEdicaoDGCP: TdxDBGridMaskColumn;
    DBGEdicaoUCOM: TdxDBGridMaskColumn;
    DBGEdicaoQTDE: TdxDBGridMaskColumn;
    DBGEdicaoEST_QTDE: TdxDBGridMaskColumn;
    pnlpri: TPanel;
    pnped: TPanel;
    Label3: TLabel;
    Shape9: TShape;
    Label17: TLabel;
    Shape10: TShape;
    Shape24: TShape;
    Shape11: TShape;
    Label28: TLabel;
    Label18: TLabel;
    Label5: TLabel;
    edcdro: TdxMaskEdit;
    edcfor: TdxMaskEdit;
    edrfor: TdxMaskEdit;
    pcobs: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    edobse: TdxMemo;
    dxTabSheet2: TdxTabSheet;
    edobso: TdxMemo;
    edtqtrl: TdxMaskEdit;
    edtqtde: TdxMaskEdit;
    cbdfor: TdxPickEdit;
    DBGEdicaoCDET: TdxDBGridMaskColumn;
    IECDOP: TdxImageEdit;
    siIMP: TSpeedItem;
    latipo: TLabel;
    IECDTP: TdxImageEdit;
    Label11: TLabel;
    cbdmap: TdxPickEdit;
    Label12: TLabel;
    cblote: TdxPickEdit;
    cbctnr: TdxPickEdit;
    ILMenu: TImageList;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    TSEdicao: TIBTransaction;
    SQLSEdicao: TIBSQL;
    Consulta: TIBQuery;
    DBGEdicaoREOP: TdxDBGridMaskColumn;
    pnlpesquisa: TGroupBox;
    Shape2: TShape;
    Label2: TLabel;
    Shape21: TShape;
    Label6: TLabel;
    edTXT: TdxMaskEdit;
    edQTDE: TdxMaskEdit;
    cbCAMPO: TdxImageEdit;
    PNLAmostras: TPanel;
    PCAmostras: TdxPageControl;
    TSIMG_PAD: TdxTabSheet;
    EDIMG_PAD: TdxEdit;
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
    Label1: TLabel;
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
    PNLIMG_PAD: TPanel;
    IMG_PAD: TImage;
    EdicaoID: TIntegerField;
    EdicaoCDRO: TLargeintField;
    EdicaoCDET: TLargeintField;
    EdicaoCTNR: TIBStringField;
    EdicaoLOTE: TIBStringField;
    EdicaoMAPA: TIBStringField;
    EdicaoCDTP: TSmallintField;
    EdicaoCDOP: TSmallintField;
    EdicaoREOP: TIBStringField;
    EdicaoITEM: TIntegerField;
    EdicaoIDCP: TIntegerField;
    EdicaoIDAK: TLargeintField;
    EdicaoIDSK: TLargeintField;
    EdicaoARTIGO: TIBStringField;
    EdicaoSKU: TIBStringField;
    EdicaoDGCP: TIBStringField;
    EdicaoDECP: TIBStringField;
    EdicaoUCOM: TIBStringField;
    EdicaoEST_QTDE: TIBBCDField;
    EdicaoEST_QTRL: TIntegerField;
    EdicaoQTDE: TIBBCDField;
    EdicaoQTRL: TIntegerField;
    EdicaoCF_VPRC_PAD_ORI: TIBStringField;
    EdicaoCF_VPRC_PAD: TFloatField;
    EdicaoVPRC_PAD_INI: TFloatField;
    EdicaoVPRC_PAD_FIM: TFloatField;
    EdicaoPDSC: TIBBCDField;
    EdicaoVPRC_PAD: TFloatField;
    EdicaoVPRC_COM: TFloatField;
    EdicaoNFCI: TIBStringField;
    EdicaoDEF_ID: TSmallintField;
    EdicaoDEF_NO: TIBStringField;
    EdicaoFLAG: TSmallintField;
    IEIDEP: TdxImageEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSairClick(Sender: TObject);
    procedure edtsdeKeyPress(Sender: TObject; var Key: Char);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
    procedure siINCClick(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure siCANClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure EdicaoAfterCancel(DataSet: TDataSet);
    procedure EdicaoAfterEdit(DataSet: TDataSet);
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edderoKeyPress(Sender: TObject; var Key: Char);
    procedure EdicaoAfterInsert(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BSalClick(Sender: TObject);
    procedure EdicaoBeforeCancel(DataSet: TDataSet);
    procedure BNovClick(Sender: TObject);
    procedure EdicaoAfterOpen(DataSet: TDataSet);
    procedure EdicaoAfterDelete(DataSet: TDataSet);
    procedure DBGEdicaoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSEdicaoDataChange(Sender: TObject; Field: TField);
    procedure edobseChange(Sender: TObject);
    procedure cbCAMPOChange(Sender: TObject);
    procedure cbstveChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure IECDOPChange(Sender: TObject);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure cbdforChange(Sender: TObject);
    procedure edQTDEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure siIMPClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure edTXTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IECDTPChange(Sender: TObject);
    procedure IMG_PADClick(Sender: TObject);
    procedure DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject; Field: TField);
  private
    RECDefault: TRECDefault;

    procedure _SP_CAD_PRO_EST_RFK(AREOP: String; AITEM: Integer; AQTDE: Double; AQTRL: Integer);
    procedure ExecuteEvent;
    { Private declarations }
  public
    focus: word;
    procedure PESQUISA_PRODUTO(campo: String; cpro: String);
    procedure ABRE_TABELA;
    procedure SALVA_ENTRADA;
    { Public declarations }
  end;

var
  frment_pro: Tfrment_pro;
  BRet: boolean;

implementation

uses uPrincipal, uFrmLogin, pcad_pro_con,
  pctr_pro,  pimporta_geral, pIMG_PAD_INF;

{$R *.dfm}

procedure Tfrment_pro.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
  oIRECDefault(RECDefault);

  { Amostras }
  PCAmostras.ActivePageIndex := 0;

  { Evento }
  RECDefault.Event := 'CAD_PRO';

  { Paginação }
  RECDefault.FrmPosition := poDesigned; { Abertura Controlada  }
  RECDefault.WorkArea    := True;       { Toda Tela do Windows }
  RECDefault.MainArea    := False;      { Toda Tela MainForm + Exclusão Botões }

  oOTransact(TConsulta);
  cbcampo.Text := 'Produto';

  tag   := 1;
  focus := 6;

  ABRE_TABELA;

  with consulta do
  begin
    { Empresa }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.FANTASIA FROM TAB_PAR_SIS AS PK ORDER BY PK.ID');
    Open;
    while not eof do
    begin
      IEIDEP.Values.Add(Current.Vars[0].AsString);
      IEIDEP.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    { Tipo de Operação }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO AS PK WHERE PK.EST_TIPO_OPE = 1 AND PK.REST = ''A'' ORDER BY PK.DESCRICAO');
    Open;
    while not eof do
    begin
      IECDOP.Values.Add(Current.Vars[0].AsString);
      IECDOP.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID,PAR_RAZA FROM PAR_SIS');
    SQL.Add('WHERE  PAR_FANT = '''+frmprincipal.parametrosPAR_FANT.AsString+'''');
    Open;

    edcfor.Text := fields[0].AsString;
    cbdfor.Text := frmprincipal.parametrosPAR_FANT.AsString;
    edrfor.Text := fields[1].AsString;

    SQL.Clear;
    SQL.Add('SELECT   PAR_FANT FROM PAR_SIS');
    SQL.Add('ORDER BY PAR_FANT');
    Open;
    while not eof do
    begin
      cbdfor.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   EPO_DESC');
    SQL.Add('FROM     TAB_EPO');
    SQL.Add('ORDER BY EPO_DESC');
    Open;
    while not eof do
    begin
      cbdmap.Items.Add(fields[0].AsString);
      next;
    end;
  end;

  IEIDEP.Text := RECParametros.Id; { Empresa }
  IECDOP.Text := '40'; { Entrada }
end;

procedure Tfrment_pro.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  { Registra Evento }
  try
    if RECDefault.Event <> EmptyStr then
       with EEvent do
            try
              UnregisterEvents;
              Events.Add(oREPZero(Trim(RECDefault.Event),'_',RECParametros.Id,3));
              RegisterEvents;
            except
              on E: Exception do
                    oErro(Handle,'Falha ao tentar registrar evento !'+#13+
                                 'Evento: '    +RECDefault.Event +'.'+#13+
                                 'Form: '      +Self.Name+'.'    +#13+#13+
                                 'Error Code: '+E.Message);
            end;
  finally
    Screen.Cursor := crDefault;
    Tag := 0;
  end;
end;

procedure Tfrment_pro.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Edicao.State in [dsEdit,dsInsert] then
  begin
    if (EdicaoDECP.AsString = '') or (EdicaoQTDE.AsFloat = 0) then
       Edicao.Cancel
    else
       Edicao.Post;
  end;

  Edicao.First;
  if (BSal.Enabled) and (EdicaoDECP.AsString <> '') then
  begin
    case messageBox(handle,PChar('Existem alterações pendentes. Deseja salvar antes de fechar '),
                           PChar(caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
         mrCancel: Abort;
         mrYes   : Begin
                     if BSal.Enabled then
                     begin
                       try
                         SALVA_ENTRADA;
                       finally
                         if BSal.Enabled then
                            abort;
                       end;
                     end;
                   end;
    end;
  end;
end;

procedure Tfrment_pro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnClose := Nil;
  Screen.Cursor := crAppStart;

  Action := caFree;
end;

procedure Tfrment_pro.FormDestroy(Sender: TObject);
begin
  try
    Screen.Cursor := crAppStart;
    OnDestroy     := Nil;

    { Transação Principal }
    try
      oFTransact(TConsulta);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                 'Error Code: '+E.Message+'.'      +#13+
                                  Caption+'.');
      end;
    end;

    { Eventos }
    try
      EEvent.UnRegisterEvents;
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar fechar eventos !'+#13+#13+
                                 'Error Code: '+E.Message+'.'      +#13+
                                  Caption+'.');
      end;
    end;

    { record e afins }
    try
      oFRECDefault(RECDefault);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                 'Error Code: '+E.Message+'.'        +#13+
                                  Caption+'.');
      end;
    end;
  finally
    try
      uRepaintMainForm(TForm(Self));
    finally
      Screen.Cursor := crDefault;
      frment_pro    := Nil;
    end;
  end;
end;

procedure Tfrment_pro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_RETURN: if (not (activeControl is TdxDBGrid) and
                      not (activeControl is TDBMemo)   and
                      not (activeControl is TdxMemo)   and
                      not (activeControl is TdxDBMemo) and
                      not (activeControl is TdbGrid)   and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       40       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       38       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and                                             
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, false, true);
       113      : if BNov.Enabled then BNov.Click;
       121      : if BSal.Enabled then BSal.Click;
  end;
end;

procedure Tfrment_pro.FormPaint(Sender: TObject);
var
  S: TRect;
  H,
  T,
  B,
  L,
  R,
  FHeight,
  FWidth: Word;
begin
  if Showing then
  begin
    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,S);
    T := S.Top;
    B := S.Bottom;
    L := S.Left;
    R := S.Right;
    H := B;

    if RECDefault.FrmPosition = poDesigned then
    begin
      FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
      FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

      if (RECDefault.Top > 0) and (RECDefault.Left > 0) then
      begin
        Top    := RECDefault.Top;
        Left   := RECDefault.Left;
      end else
      begin
        if FHeight > 0 then Height := FHeight;
        if FWidth  > 0 then Width  := FWidth;

        if FormStyle = fsNormal then
        begin
          Top  := (T  + (H - Height)) div 2;
          Left := ((R + L) - Width )  div 2;
        end else
        begin
          Top  := ((B - T ) - Height) div 2;
          Left := ((R - L)  - Width ) div 2;
        end;
      end;
    end else
    if (RECDefault.WorkArea) and (FormStyle = fsNormal) then
    begin
      Top    := Screen.WorkAreaTop;
      Left   := Screen.WorkAreaLeft;
      Width  := Screen.WorkAreaWidth;
      Height := Screen.WorkAreaHeight;
    end else
    if (RECDefault.MainArea) and (FormStyle = fsNormal) then
    begin
      Top    := 0;
      Left   := 0;
      Width  := R - L - 5;
      Height := H - T - 5;
    end else
    if RECDefault.FrmPosition = poDefault then
    begin
      Top    := IFThen(FormStyle = fsNormal,T,0);
      Left   := IFThen(FormStyle = fsNormal,L,0);
      Width  := IFThen(RECDefault.FrmPosition = poDefault,R - L - 5,0);
      Height := IFThen(RECDefault.FrmPosition = poDefault,H - T - 5,0);
    end;

    if RECUsuarios.Id = 0 then
       Caption := 'DIMENSÕES: Monitor: Altura = '+IntToStr(Screen.Height)+' Largura: '+IntToStr(Screen.Width)+' / '+
                  'Tela: Altura = '              +IntToStr(Self.Height  )+' Largura: '+IntToStr(Self.Width  )+' - '+
                  'Font Size: '+IntToSTr(DBGEdicao.Font.Size);
  end;
end;

procedure Tfrment_pro.FormResize(Sender: TObject);
begin
  if Self <> Nil then
  begin
    if (RECDefault.WorkArea) and (Screen.Width > 1024) then
        RECDefault.WorkArea := False;

    if (RECDefault.MainArea) and (Screen.Width > 1366) then
        RECDefault.MainArea := False;

    if (RECDefault.WorkArea) or (RECDefault.MainArea) then
    begin
      HelpKeyword := '3';
      RECDefault.FrmPosition := poDefault;
      uDisabledMainForm;
    end else
    if (HelpKeyword = '5') and (Screen.Width >= 1360) and (Screen.Width <= 1366) then {MainArea, mas sem desabilitar botões }
    begin
      if FrmPrincipal.PNLPrincipal.Visible then
         RECDefault.FrmPosition := poDefault;
    end else
    if RECDefault.Id = -3 then
    begin
      RECDefault.FrmPosition := poDesigned;
      Self.HelpContext       := 90;
      Self.AlphaBlendValue   := 90;
    end;

    if Screen.Width <= 1366 then
       Self.Font.Size := 8;

    Paint;
  end;
end;

procedure Tfrment_pro.PESQUISA_PRODUTO(campo: String; cpro: String);
var
  nRecNo: integer;
begin
  BSal.Enabled := True;
  edQTDE.Text  := oStrTran(edQTDE.Text,'.',',');
  edQTDE.Text  := formatfloat('#,0.00',oTextToValor(edQTDE.Text));

  if Edicao.State in [dsEdit,dsInsert] then
  begin
    if (EdicaoDECP.AsString = '') or (EdicaoQTDE.AsFloat = 0) then
    Edicao.Cancel else
    Edicao.Post;
  end;

  nRecNo := frmprincipal.PESQUISA_PRODUTO(campo,cpro);

  if nRecNo = 0 then
     oException(EDTXT,'Produto não Cadastrado !');

  if nRecNo  > 1 then
  begin
    if cbcampo.Text = 'Referencia' then
    begin
      try
        Tag := 1;

        frmprincipal.psq_pro.First;
        while not frmprincipal.psq_pro.Eof do
        begin
          Edicao.Append;
          EdicaoIDCP.Value := frmprincipal.psq_proIDCP.AsInteger;
          EdicaoIDSK.Value := frmprincipal.psq_proIDSK.AsInteger;

          EdicaoArtigo.Value := frmprincipal.psq_proARTIGO.AsString;
          EdicaoSKU.Value    := frmprincipal.psq_proSKU.AsString;
          EdicaoIDSK.Value   := frmprincipal.psq_proIDSK.Value;

          EdicaoDGCP.Value := frmprincipal.psq_proDGCP.AsString;
          EdicaoDECP.Value := frmprincipal.psq_proDECP.AsString;
          EdicaoUCOM.Value := frmprincipal.psq_proUCOM.AsString;

          EdicaoEST_QTDE.Value := frmprincipal.psq_proEST_QTDE.AsFloat;
          EdicaoEST_QTRL.Value := frmprincipal.psq_proEST_QTRL.AsInteger;

          EdicaoCF_VPRC_PAD_ORI.Value := frmprincipal.psq_proCF_VPRC_PAD_ORI.AsString;
          EdicaoCF_VPRC_PAD.Value     := frmprincipal.psq_proCF_VPRC_PAD.AsFloat;

          EdicaoVPRC_PAD_INI.Value := frmprincipal.psq_proVPRC_PAD_INI.AsFloat;
          EdicaoVPRC_PAD_FIM.Value := frmprincipal.psq_proVPRC_PAD_FIM.AsFloat;

          EdicaoVPRC_PAD.Value := frmprincipal.psq_proVPRC_PAD.AsFloat;
          EdicaoVPRC_COM.Value := 0;
          EdicaoPDSC.Value     := 0;

          EdicaoQTDE.Value := oTextToValor(edQTDE.Text);
          Edicao.Post;

          frmprincipal.psq_pro.Next;
        end;
      finally
        Tag := 0;
        oRefresh(Edicao);
      end;
    end else
    begin
      frmcad_pro_con := Tfrmcad_pro_con.Create(self);
      with frmcad_pro_con.cadastro do
      begin
        SQL.Clear;
        SQL.Add(frmprincipal.psq_pro.Text);
        Open;
      end;
      try
        frmcad_pro_con.ShowModal;
        if frmcad_pro_con.Editado then
           PESQUISA_PRODUTO('PK.ID',IntToStr(frmcad_pro_con.CadastroIDCP.AsInteger));
      finally
        FreeAndNil(frmcad_pro_con);
      end;
    end;
  end else
  if nRecNo = 1 then
     try
       Tag := 1;

       if FrmPrincipal.PSQ_PRODEST.AsString <> 'ATIVO' then
          oException(EDTXT,'Produto ' + FrmPrincipal.PSQ_PRODEST.AsString);

       Edicao.Append;
       EdicaoIDCP.Value := frmprincipal.psq_proIDCP.AsInteger;
       EdicaoIDSK.Value     := frmprincipal.psq_proIDSK.AsInteger;

       EdicaoArtigo.Value := frmprincipal.psq_proARTIGO.AsString;
       EdicaoSKU.Value    := frmprincipal.psq_proSKU.AsString;
       EdicaoIDSK.Value  := frmprincipal.psq_proIDSK.Value;

       EdicaoDGCP.Value := frmprincipal.psq_proDGCP.AsString;
       EdicaoDECP.Value := frmprincipal.psq_proDECP.AsString;
       EdicaoUCOM.Value := frmprincipal.psq_proUCOM.AsString;



       EdicaoEST_QTDE.Value := frmprincipal.psq_proEST_QTDE.AsFloat;
       EdicaoEST_QTRL.Value := frmprincipal.psq_proEST_QTRL.AsInteger;

       EdicaoCF_VPRC_PAD_ORI.Value := frmprincipal.psq_proCF_VPRC_PAD_ORI.AsString;
       EdicaoCF_VPRC_PAD.Value     := frmprincipal.psq_proCF_VPRC_PAD.AsFloat;

       EdicaoVPRC_PAD_INI.Value := frmprincipal.psq_proVPRC_PAD_INI.AsFloat;
       EdicaoVPRC_PAD_FIM.Value := frmprincipal.psq_proVPRC_PAD_FIM.AsFloat;

       EdicaoVPRC_PAD.Value := frmprincipal.psq_proVPRC_PAD.AsFloat;
       EdicaoVPRC_COM.Value := 0;
       EdicaoPDSC.Value     := 0;

       EdicaoQTDE.Value := oTextToValor(edQTDE.Text);
       Edicao.Post;
     finally
       Tag := 0;
       oRefresh(Edicao);
     end;

  DBGEdicaoQTDE.Field.FocusControl;
  Edicao.Last;
end;

procedure Tfrment_pro.ABRE_TABELA;
begin
  oOTransact(TSEdicao);
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM CAD_PRO_ENI');
    ExecQuery;
  end;
  oRTransact(TSEdicao);

  with consulta do
  begin
    { Romaneio }
    Close;
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_CAD_PRO_ENC,0) FROM RDB$DATABASE');
    Open;
    EDCDRO.Text := oStrZero(Fields[0].AsInteger + 1,1);
  end;
end;

procedure Tfrment_pro.BSairClick(Sender: TObject);
begin
  close;
end;

procedure Tfrment_pro.edtsdeKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrment_pro.EdicaoNewRecord(DataSet: TDataSet);
begin
  EdicaoID.Value   := 0;
  EdicaoFLAG.Value := 0;

  EdicaoCDRO.Value := 0;
  EdicaoIDCP.Value := 0;
  
  EdicaoCDTP.Value := StrToInt(IECDTP.Text);
  EdicaoCDOP.Value := StrToInt(IECDOP.Text);
  EdicaoREOP.Value := IECDOP.HelpKeyword;

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_PRO_CDET,1) FROM RDB$DATABASE');
    ExecQuery;
    EdicaoCDET.Value := fields[0].AsInteger;
  end;

  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT MAX(ITEM) FROM CAD_PRO_ENI');
    SQL.Add('WHERE  FLAG = 0');
    ExecQuery;
    EdicaoITEM.Value := Current.Vars[0].AsInteger + 1;
  end;
end;

procedure Tfrment_pro.siDELClick(Sender: TObject);
begin
  if oYesNo(handle,'Excluir Item ?') =   mrNo then
     abort;

  if (EdicaoCDRO.AsInteger = 0) then
     Edicao.Delete
  else
  begin
    Edicao.Edit;
    EdicaoFLAG.Value := 1;
    Edicao.Post;
  end;
  edTXT.SetFocus;
end;

procedure Tfrment_pro.siINCClick(Sender: TObject);
begin
  Edicao.Append;
end;

procedure Tfrment_pro.siSAVClick(Sender: TObject);
begin
  Edicao.Post;
end;

procedure Tfrment_pro.siCANClick(Sender: TObject);
begin
  Edicao.Cancel;
end;

procedure Tfrment_pro.siALTClick(Sender: TObject);
begin
  Edicao.Edit;
end;

procedure Tfrment_pro.EdicaoAfterCancel(DataSet: TDataSet);
begin
  siDEL.Enabled := true;
end;

procedure Tfrment_pro.EdicaoAfterEdit(DataSet: TDataSet);
begin
  siDEL.Enabled := false;

  if not DBGEdicao.CanFocus then
  DBGEdicao.FocusedColumn := 6;

  if not edTXT.CanFocus then
  DBGEdicao.SetFocus;
end;

procedure Tfrment_pro.EdicaoAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  TSEdicao.CommitRetaining;

  siDEL.Enabled := true;

  if tag = 0 then
  begin
    if (EdicaoDECP.AsString <> '') then
        BSal.Enabled := true;

    wRec := Edicao.GetBookmark;
    
    Edicao.Close;
    Edicao.Open;
    if (wRec = Nil) or (Edicao.Current.Vars[0].IsNull) then Edicao.last
       else Edicao.GotoBookmark(wRec);
    Edicao.FreeBookmark(wRec);

    if DBGEdicao.Focused then
    DBGEdicao.SetFocus;
  end;
end;

procedure Tfrment_pro.DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if DBGEdicao.FocusedColumn = focus then
                 Edicao.Next else
                 DBGEdicao.FocusedColumn := DBGEdicao.FocusedColumn + 1;
               end;
    VK_DELETE: if Edicao.State = dsBrowse then siDEL.Click;
    VK_ESCAPE: if Edicao.State = dsBrowse then close else Edicao.Cancel;
    VK_INSERT: if not siSAV.Enabled then siINC.Click;
  end;
end;

procedure Tfrment_pro.edderoKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrment_pro.EdicaoAfterInsert(DataSet: TDataSet);
begin
  siDEL.Enabled := false;

  if not edTXT.CanFocus then
     DBGEdicao.SetFocus;
end;

procedure Tfrment_pro.SALVA_ENTRADA;
var
  AITEM: Integer;
begin
  ActiveControl := Nil;
  AITEM := 0;

  if Edicao.State in [dsEdit,dsInsert] then
     if (EdicaoDECP.AsString <> EmptyStr) and (EdicaoQTDE.AsFloat > 0) then
         Edicao.Post else
         Edicao.Cancel;
         Edicao.First;

  if Edicao.Fields[0].IsNull then
  begin
    messageBox(handle,'Peças não cadastradas !',PChar(self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if (IEIDEP.Text = '0') or (IEIDEP.Text = EmptyStr) then
      oException(IEIDEP,'Empresa não Informada !');

  if IECDOP.Text = '' then
  begin
    IECDOP.SetFocus;
    messageBox(handle,'Tipo de operação não informado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if cbdmap.Text <> '' then
  with consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_EPO');
    SQL.Add('WHERE  EPO_DESC = '''+cbdmap.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      cbdmap.SetFocus;
      messageBox(handle,'Posição de Estoque não cadastrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;

  BSal.Enabled := False;
  try
    oOTransact(TEdicao);

    SPEdicao.Close;
    SPEdicao.StoredProcName := 'SP_CAD_PRO_EST_RPK';
    SPEdicao.Prepare;

    SPEdicao.ParamByName('AIDEP').Value := IEIDEP.Text;
    SPEdicao.ParamByName('AIDCA').Value := RECUsuarios.ID;
    SPEdicao.ParamByName('ALGCA').Value := RECUsuarios.Login;
    SPEdicao.ParamByName('AIDCE').Value := edcfor.Text;
    SPEdicao.ParamByName('ADECE').Value := CBDFOR.Text;
    SPEdicao.ParamByName('AUFCE').Value := CBDFOR.Hint;
    SPEdicao.ParamByName('ACTNR').Value := cbctnr.Text;
    SPEdicao.ParamByName('ALOTE').Value := cblote.Text;
    SPEdicao.ParamByName('AMAPA').Value := cbdmap.Text;
    SPEdicao.ParamByName('ACDTP').Value := IECDTP.Text;
    SPEdicao.ParamByName('ADETP').Value := IECDTP.Descriptions[IECDTP.Values.IndexOf(IECDTP.Text)];
    SPEdicao.ParamByName('ACDOP').Value := IECDOP.Text;
    SPEdicao.ParamByName('AREOP').Value := IECDOP.HelpKeyword;
    SPEdicao.ParamByName('ADEOP').Value := IECDOP.Descriptions[IECDOP.Values.IndexOf(IECDOP.Text)];
    SPEdicao.ParamByName('AQTDE').Value := oTextToValor(edtqtde.Text);
    SPEdicao.ParamByName('AQTRL').Value := StrToInt(edtqtrl.Text);
    SPEdicao.ParamByName('AINFADCAD').Value := EDOBSE.Text;
    SPEdicao.ExecProc;

    EDCDRO.Text := oStrZero(SPEdicao.ParamByName('RID').AsInteger,5);
    try
      Edicao.DisableControls;
      Edicao.First;

      while not Edicao.Eof do
      begin
        INC(AITEM);

        if Pos('INVENTÁRIO',IECDOP.Descriptions[IECDOP.Values.IndexOf(IECDOP.Text)]) > 0 then
        begin
          _SP_CAD_PRO_EST_RFK(IFThen(EdicaoEST_QTDE.AsFloat <= 0,'E','S'),AITEM,EdicaoEST_QTDE.AsFloat,EdicaoEST_QTRL.AsInteger);
          INC(AITEM);
        end;

        _SP_CAD_PRO_EST_RFK(EdicaoREOP.AsString,AITEM,EdicaoQTDE.AsFloat,EdicaoQTRL.AsInteger);
        Edicao.Next;
      end;
    finally
      Edicao.EnableControls;
    end;

    oCTransact(TEdicao);
    oAviso(self.Handle,'Estoque gerado com sucesso !');
  except
    on E: Exception do
    begin
      BSal.Enabled := True;
      oCTransact(TEdicao,ltRollback);

      oException(DBGEdicao,'Falha ao tentar registrar estoque !'    +#13+
                           'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                           'Error Code: '+E.Message+'.'+#13+
                            Caption+'.');
    end;
  end;

  ExecuteEvent;
  Close;
end;

procedure Tfrment_pro.BSalClick(Sender: TObject);
begin
  try
    SALVA_ENTRADA;
  finally
    if BSal.Enabled then
       abort;
  end;

  Close;
end;

procedure Tfrment_pro.EdicaoBeforeCancel(DataSet: TDataSet);
begin
  edTXT.Text := '';
  if not DBGEdicao.CanFocus then
     edTXT.SetFocus;

  if Edicao.RecordCount = 0 then
  begin
    Edicao.Close;
    Edicao.Open;
    ABORT;
  end;
end;

procedure Tfrment_pro.BNovClick(Sender: TObject);
begin
  try
    if not BSal.Enabled then
       SALVA_ENTRADA;
  finally
    if BSal.Enabled then
       abort;
  end;

  edcdro.Text  := '00000';
  edtqtrl.Text := '0';
  edtqtde.Text := '0';

  edcfor.Text := frmprincipal.parametrosPAR_CCLI.AsString;
  cbdfor.Text := frmprincipal.parametrosPAR_FANT.AsString;

  ABRE_TABELA;
end;

procedure Tfrment_pro.EdicaoAfterOpen(DataSet: TDataSet);
begin
  if CAD_PRO_IMG_CDN.State = dsInactive then
     CAD_PRO_IMG_CDN.Open;

  siDEL.Enabled := true;
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(*),SUM(QTDE) FROM CAD_PRO_ENI');
    SQL.Add('WHERE  FLAG = 0');
    ExecQuery;
    edtqtrl.Text := formatfloat('0'     ,Current.Vars[0].AsInteger);
    edtqtde.Text := formatfloat('#,0.00',Current.Vars[1].AsFloat  );
  end;
end;

procedure Tfrment_pro.EdicaoAfterDelete(DataSet: TDataSet);
begin
 oRefresh(Edicao);
end;

procedure Tfrment_pro.DBGEdicaoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    AFont.Color := clBlack;
    AColor      := clWhite;

    if AColumn = DBGEdicaoEST_QTDE then
    begin
      AColor      := clBtnFace;
      AFont.Color := clBlack;
    end;

    if AColumn = DBGEdicaoQTDE then
       AFont.Style := [fsBold];

    if AColumn = DBGEdicaoREOP then
    begin
      AColor      := clBtnFace;
      AFont.Color := clBlack;
      AFont.Style := [fsBold];
    end;

    if AColumn = DBGEdicaoCDET then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure Tfrment_pro.DTSEdicaoDataChange(Sender: TObject; Field: TField);
begin
  IF Edicao.State = DSBrowse then
  begin
    DBGEdicao.ApplyBestFit(DBGEdicaoSKU );
    DBGEdicao.ApplyBestFit(DBGEdicaoDGCP);
    DBGEdicao.ApplyBestFit(DBGEdicaoDECP);
  end;     
end;

procedure Tfrment_pro.edobseChange(Sender: TObject);
begin
  if tag = 0 then
     BSal.Enabled := true;
end;

procedure Tfrment_pro.cbCAMPOChange(Sender: TObject);
begin
  edTXT.SetFocus;
end;

procedure Tfrment_pro.cbstveChange(Sender: TObject);
begin
  if tag = 0 then
     BSal.Enabled := true;
end;

procedure Tfrment_pro.IECDOPChange(Sender: TObject);
begin
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.REFERENCIA FROM TAB_TPO AS PK');
    SQL.Add('WHERE  PK.ID  = ''' + IECDOP.Text + '''');
    ExecQuery;

    if Eof then
       oException(Nil,'Tipo de Operação não Encontrada !');

    IECDOP.HelpKeyword := SQLConsulta.Current.Vars[0].AsString;
    IECDOP.Refresh;
  end;

  if Pos(IECDOP.Descriptions[IECDOP.Values.IndexOf(IECDOP.Text)],'ZERARINVENTÁRIO') > 0 then
     DBGEdicaoQTDE.DisableEditor := True else
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CAD_PRO_ENI');
    SQL.Add('SET    CDOP = ''' + IECDOP.Text        + ''',');
    SQL.Add('       REOP = ''' + IECDOP.HelpKeyword + '''' );
    ExecQuery;

    DBGEdicaoQTDE.DisableEditor := False;
    oRefresh(Edicao);
  end;
end;

procedure Tfrment_pro.IECDTPChange(Sender: TObject);
begin
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CAD_PRO_ENI');
    SQL.Add('SET    CDTP = ''' + IECDTP.Text + '''');
    ExecQuery;

    oRefresh(Edicao);
  end;
end;

procedure Tfrment_pro.EdicaoBeforePost(DataSet: TDataSet);
begin
  if Pos(IECDOP.Descriptions[IECDOP.Values.IndexOf(IECDOP.Text)],'ZERARINVENTÁRIO') > 0 then
  begin
    EdicaoCDET.Value := 9999999999;
    EdicaoQTDE.Value := ABS(EdicaoEST_QTDE.AsFloat);
    EdicaoQTRL.Value := ABS(EdicaoEST_QTRL.AsInteger);
    EdicaoREOP.Value     := IFThen(EdicaoEST_QTDE.AsFloat <= 0,'E','S');
  end;
end;

procedure Tfrment_pro.cbdforChange(Sender: TObject);
begin
  if (tag = 0) and (cbdfor.Text <> '') then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,PAR_RAZA,PAR_UF FROM PAR_SIS');
    SQL.Add('WHERE  PAR_FANT = '''+cbdfor.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      cbdfor.SetFocus;
      raise exception.Create('Nome do fornecedor não encontrado !');
    end;
    edcfor.Text := fields[0].AsString;
    edrfor.Text := fields[1].AsString;
    CBDFOR.Hint := fields[2].AsString;
  end;
end;

procedure Tfrment_pro.edTXTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    if IECDOP.Descriptions[IECDOP.Values.IndexOf(IECDOP.Text)] = 'ZERAR' then
    begin
      PESQUISA_PRODUTO(cbCAMPO.Text,EDTXT.Text);
      edTXT.SetFocus;
    end else
    edQTDE.SetFocus;
  end;
end;

procedure Tfrment_pro.edQTDEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    PESQUISA_PRODUTO(cbCAMPO.Text,EDTXT.Text);
    edTXT.SetFocus;
  end;
end;

procedure Tfrment_pro.siIMPClick(Sender: TObject);
begin
  Application.CreateForm (Tfrmimporta_geral, frmimporta_geral);

  frmimporta_geral.cbFANT.Text := frmprincipal.parametrosPAR_FANT.AsString;
  frmimporta_geral.ShowModal;

  try
    if frmimporta_geral.editado then
    begin
      frmimporta_geral.imp_ite.First;
      while not frmimporta_geral.imp_ite.Eof do
      begin
        Edicao.Append;
        EdicaoIDCP.Value := frmimporta_geral.imp_iteROM_IPRO.Value;
        EdicaoIDSK.Value     := 0;//frmimporta_geral.imp_iteIDSK.AsInteger;

        EdicaoArtigo.Value := frmimporta_geral.imp_iteROM_CART.Value;
        EdicaoSKU.Value := frmimporta_geral.imp_iteROM_CPRO.Value;

        EdicaoDGCP.Value := frmimporta_geral.imp_iteROM_DCOR.Value;
        EdicaoDECP.Value := frmimporta_geral.imp_iteROM_DPRO.Value;
        EdicaoUCOM.Value := frmimporta_geral.imp_iteROM_DUNI.Value;

        EdicaoEST_QTDE.Value := frmimporta_geral.imp_iteROM_QDIS.Value;
        EdicaoEST_QTRL.Value := frmimporta_geral.imp_iteROM_RLDI.Value;

        EdicaoQTDE.Value := frmimporta_geral.imp_iteROM_QTDE.Value;
        EdicaoQTRL.Value := frmimporta_geral.imp_iteROM_QTRL.Value;

        Edicao.Post;
        frmimporta_geral.imp_ite.Next;
      end;
    end;
  finally
    freeandNil(frmimporta_geral);
    frmimporta_geral.Free;
  end;
end;

procedure Tfrment_pro.ExecuteEvent;
begin
  if not ALockWindowUpdate then
     if (EEvent.Registered) and (RECDefault.Event <> EmptyStr) then
         try
           oOTransact(TEvent);

           SPEvent.StoredProcName := 'SP_EVENT';
           SPEvent.Prepare;
           SPEvent.Params[0].AsString := RECDefault.Event;
           SPEvent.ExecProc;

           oCTransact(TEvent);

           RECDefault.Edited := True;
         except
           on E: Exception do
           begin
             RECDefault.Selected := False;
             RECDefault.Edited   := False;

             oCTransact(TEvent,ltRollback);
             oException(Nil,'Falha ao tentar salvar evento !'  +#13+
                            'Evento: '    +RECDefault.Event+'.'+#13+#13+
                            'Formulário: '+Self.Name+'.'       +#13+#13+
                            'Error Code: '+E.Message+'.');
           end;
         end;
end;

procedure Tfrment_pro._SP_CAD_PRO_EST_RFK(AREOP: String; AITEM: Integer; AQTDE: Double; AQTRL: Integer);
begin
  SPEdicao.Close;
  SPEdicao.StoredProcName := 'SP_CAD_PRO_EST_RFK';
  SPEdicao.Prepare;

  SPEdicao.ParamByName('AIDEP').Value := IEIDEP.Text;
  SPEdicao.ParamByName('ACDRO').Value := edcdro.Text;

  SPEdicao.ParamByName('ACDTP').Value := EdicaoCDTP.AsInteger;
  SPEdicao.ParamByName('ACDOP').Value := EdicaoCDOP.AsInteger;
  SPEdicao.ParamByName('AREOP').Value := AREOP;

  SPEdicao.ParamByName('ACDET').Value := oStrZero(EdicaoCDET.AsInteger,10);
  SPEdicao.ParamByName('ACTNR').Value := cbctnr.Text;
  SPEdicao.ParamByName('ALOTE').Value := cblote.Text;
  SPEdicao.ParamByName('AMAPA').Value := cbdmap.Text;

  SPEdicao.ParamByName('AITEM').Value := oStrZero(AITEM,4);
  SPEdicao.ParamByName('AIDCP').Value := EdicaoIDCP.AsInteger;

  SPEdicao.ParamByName('AEST_QTDE').Value := EdicaoEST_QTDE.AsFloat + (AQTDE * IFThen(AREOP = 'E',1,-1));
  SPEdicao.ParamByName('AEST_QTRL').Value := EdicaoEST_QTDE.AsFloat + (    1 * IFThen(AREOP = 'E',1,-1));

  SPEdicao.ParamByName('AQTDE').Value := IFThen(AREOP = 'E',AQTDE,0);
  SPEdicao.ParamByName('AQTRL').Value := IFThen(AREOP = 'E',AQTRL,0);

  SPEdicao.ParamByName('AQTDS').Value := IFThen(AREOP = 'S',AQTDE,0);
  SPEdicao.ParamByName('AQTRS').Value := IFThen(AREOP = 'S',AQTRL,0);

  SPEdicao.ParamByName('ACF_VPRC_PAD_ORI').Value := EdicaoCF_VPRC_PAD_ORI.AsString;
  SPEdicao.ParamByName('ACF_VPRC_PAD'    ).Value := EdicaoCF_VPRC_PAD.AsFloat;

  SPEdicao.ParamByName('AVPRC_PAD_INI').Value := EdicaoVPRC_PAD_INI.AsFloat;
  SPEdicao.ParamByName('AVPRC_PAD_FIM').Value := EdicaoVPRC_PAD_FIM.AsFloat;

  SPEdicao.ParamByName('AVPRC_PAD').Value := EdicaoVPRC_PAD.AsFloat;
  SPEdicao.ParamByName('AVPRC_COM').Value := EdicaoVPRC_COM.AsFloat;
  SPEdicao.ParamByName('APDSC'    ).Value := EdicaoPDSC.AsFloat;

  SPEdicao.ParamByName('ANFCI').Value := EdicaoNFCI.AsString;
  SPEdicao.ExecProc;
end;

procedure Tfrment_pro.DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject;
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

procedure Tfrment_pro.IMG_PADClick(Sender: TObject);
begin
  if Assigned(FRMIMG_PAD_INF) then FRMIMG_PAD_INF.BringToFront else
  begin
    FRMIMG_PAD_INF := TFRMIMG_PAD_INF.Create(Self,IMG_PAD.Picture,EDIMG_PAD.Text,EdicaoSKU.AsString,EdicaoDGCP.AsString,EdicaoDECP.AsString,EmptyStr,EmptyStr,EmptyStr,EmptyStr,EmptyStr);
    FRMIMG_PAD_INF.Show;
  end;
end;

end.
