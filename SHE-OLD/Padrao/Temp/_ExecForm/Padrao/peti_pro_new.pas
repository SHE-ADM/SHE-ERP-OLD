unit peti_pro_new;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, StdCtrls, StrUtils,
  dxCntner, dxEditor, dxEdLib, dxExEdtr, rxSpeedbar, IBEvents, IBSQL,
  math;

type
  Tfrmeti_pro_new = class(TFrmPadr3)
    siPRI: TSpeedItem;
    siVIS: TSpeedItem;
    SISEP_DEL: TSpeedItem;
    SIEST_EDI: TSpeedItem;
    PNLEdicao: TPanel;
    PNLEtiquetas: TPanel;
    CECDET: TdxCurrencyEdit;
    LACDET: TLabel;
    IECDTP: TdxImageEdit;
    LATipo: TLabel;
    LALote: TLabel;
    EDLote: TdxMaskEdit;
    IECTNR: TdxImageEdit;
    LAContainer: TLabel;
    LAUnidade: TLabel;
    EDUCOM: TdxMaskEdit;
    CEQTDE: TdxCurrencyEdit;
    LAQuantidade: TLabel;
    PNLINFADCAD: TPanel;
    SHINFADROM: TShape;
    LAINFADROM: TLabel;
    EMINFADROM: TdxMemo;
    SHINFADETQ: TShape;
    LAINFADETQ: TLabel;
    EMINFADETQ: TdxMemo;
    ESCMemos: TdxEditStyleController;
    PNLDefeitos: TPanel;
    IECDDF: TdxImageEdit;
    SHDefeitos: TShape;
    LADefeitos: TLabel;
    SQLConsulta: TIBSQL;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    SHConsultas: TShape;
    LAConsulta: TLabel;
    SHETQ_ST: TShape;
    LAETQ_ST: TLabel;
    SHETQ_QT: TShape;
    LAETQ_QT_EST: TLabel;
    LAETQ_QT_EPE: TLabel;
    PNLRomaneio: TPanel;
    SHRomaneio: TShape;
    LARomaneio: TLabel;
    LADERO: TLabel;
    LADEOP: TLabel;
    LAD_DOCTP: TLabel;
    LADECE: TLabel;
    LALGCA: TLabel;
    LAD_DOCNU: TLabel;
    PNLExpedicao: TPanel;
    LALGSP: TLabel;
    LADEPK: TLabel;
    LADECV: TLabel;
    LADECD: TLabel;
    SHPedido: TShape;
    Label23: TLabel;
    SHExpedicao: TShape;
    LAExpedicao: TLabel;
    Panel1: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Shape3: TShape;
    LALGSA: TLabel;
    LADECT: TLabel;
    Shape4: TShape;
    Label8: TLabel;
    Shape5: TShape;
    Label9: TLabel;
    Shape6: TShape;
    Label10: TLabel;
    Label2: TLabel;
    CEQTCO: TdxCurrencyEdit;
    IECDST: TdxImageEdit;
    Etiquetas: TIBQuery;
    DTSEtiquetas: TDataSource;
    EtiquetasID: TIntegerField;
    EtiquetasIDEP: TSmallintField;
    EtiquetasCDRO: TLargeintField;
    EtiquetasDTRO: TDateField;
    EtiquetasET_CDET: TLargeintField;
    EtiquetasEF_CDET: TLargeintField;
    EtiquetasET_IDCA: TSmallintField;
    EtiquetasET_DTCA: TDateTimeField;
    EtiquetasEF_IDCA: TSmallintField;
    EtiquetasEF_DTCA: TDateTimeField;
    EtiquetasET_IDED: TSmallintField;
    EtiquetasET_DTED: TDateTimeField;
    EtiquetasEF_IDED: TSmallintField;
    EtiquetasEF_DTED: TDateTimeField;
    EtiquetasET_IDST: TSmallintField;
    EtiquetasET_DTST: TDateTimeField;
    EtiquetasET_CDST: TSmallintField;
    EtiquetasET_REST: TIBStringField;
    EtiquetasET_DEST: TIBStringField;
    EtiquetasEF_IDST: TSmallintField;
    EtiquetasEF_DTST: TDateTimeField;
    EtiquetasEF_CDST: TSmallintField;
    EtiquetasEF_REST: TIBStringField;
    EtiquetasEF_DEST: TIBStringField;
    EtiquetasET_CDOP: TSmallintField;
    EtiquetasET_REOP: TIBStringField;
    EtiquetasET_DEOP: TIBStringField;
    EtiquetasET_ABOP: TIBStringField;
    EtiquetasEF_CDOP: TSmallintField;
    EtiquetasEF_REOP: TIBStringField;
    EtiquetasEF_DEOP: TIBStringField;
    EtiquetasEF_ABOP: TIBStringField;
    EtiquetasET_CDTP: TSmallintField;
    EtiquetasET_RETP: TIBStringField;
    EtiquetasET_ROTP: TIBStringField;
    EtiquetasET_DETP: TIBStringField;
    EtiquetasET_ABTP: TIBStringField;
    EtiquetasEF_CDTP: TSmallintField;
    EtiquetasEF_REFP: TIBStringField;
    EtiquetasEF_ROTP: TIBStringField;
    EtiquetasEF_DEFP: TIBStringField;
    EtiquetasEF_ABTP: TIBStringField;
    EtiquetasET_CTNR: TIBStringField;
    EtiquetasET_LOTE: TIBStringField;
    EtiquetasEF_CTNR: TIBStringField;
    EtiquetasEF_LOTE: TIBStringField;
    EtiquetasIDCP: TIntegerField;
    EtiquetasCP_IDEP: TSmallintField;
    EtiquetasARTIGO: TIBStringField;
    EtiquetasIDAK: TLargeintField;
    EtiquetasSKU: TIBStringField;
    EtiquetasIDEK: TLargeintField;
    EtiquetasCEAN: TIBStringField;
    EtiquetasDGCP: TIBStringField;
    EtiquetasDECP: TIBStringField;
    EtiquetasUCOM: TIBStringField;
    EtiquetasUCON: TIBStringField;
    EtiquetasET_QTDE: TIBBCDField;
    EtiquetasET_QTRL: TIntegerField;
    EtiquetasEF_QTDE: TIBBCDField;
    EtiquetasEF_QTRL: TIntegerField;
    EtiquetasET_CDDF: TSmallintField;
    EtiquetasET_DEDF: TIBStringField;
    EtiquetasEF_CDDF: TSmallintField;
    EtiquetasEF_DEDF: TIBStringField;
    EtiquetasINFADROM: TIBStringField;
    EtiquetasET_INFADETQ: TIBStringField;
    EtiquetasEF_INFADETQ: TIBStringField;
    EtiquetasEPE_QTDE: TIBBCDField;
    EtiquetasEPE_QTRL: TIntegerField;
    EtiquetasEAA_QTDE: TIBBCDField;
    EtiquetasEAA_QTRL: TIntegerField;
    EtiquetasEA_QTDE: TIBBCDField;
    EtiquetasEA_QTRL: TIntegerField;
    EtiquetasEB_QTDE: TIBBCDField;
    EtiquetasEB_QTRL: TIntegerField;
    EtiquetasEC_QTDE: TIBBCDField;
    EtiquetasEC_QTRL: TIntegerField;
    EtiquetasEPI_QTDE: TIBBCDField;
    EtiquetasEPI_QTRL: TIntegerField;
    EtiquetasESU_QTDE: TIBBCDField;
    EtiquetasESU_QTRL: TIntegerField;
    EtiquetasEPP_QTDE: TIBBCDField;
    EtiquetasEPP_QTRL: TIntegerField;
    EtiquetasEPR_QTDE: TIBBCDField;
    EtiquetasEPR_QTRL: TIntegerField;
    EtiquetasEPS_QTDE: TIBBCDField;
    EtiquetasEPS_QTRL: TIntegerField;
    EtiquetasECO_QTDE: TIBBCDField;
    EtiquetasECO_QTRL: TIntegerField;
    EtiquetasEEP_QTDE: TIBBCDField;
    EtiquetasEEP_QTRL: TIntegerField;
    EtiquetasECO_DECO: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CECDETValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure IECDTPChange(Sender: TObject);
    procedure IECDDFChange(Sender: TObject);
    procedure SISEP_DELClick(Sender: TObject);
    procedure SIEST_EDIClick(Sender: TObject);
    procedure siCANClick(Sender: TObject);
    procedure siVISClick(Sender: TObject);
    procedure siPRIClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EtiquetasAfterOpen(DataSet: TDataSet);
    procedure IECDSTChange(Sender: TObject);
  private
    { Private declarations }
    RECEstoque: TRECEdicao;

    procedure _PSQCDET(ACDET: Variant);
  public
    { Public declarations }
  end;

var
  frmeti_pro_new: Tfrmeti_pro_new;

implementation

uses uPrincipal, bPrincipal,
  qEST_ETQ_PAD;

{$R *.dfm}

procedure Tfrmeti_pro_new.FormCreate(Sender: TObject);
begin
  oIRECEdicao(RECEstoque);
  RECEstoque.ASPEdicao := SPEdicao;

  cEvent := 'Estoque';
  inherited;

  CECDET.Value := 0;
//  CECDET.Modified := True;
  ///CECDET.ValidateEdit;

  with SQLConsulta do
  begin
    { Tipo }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO AS PK WHERE PK.ID <> 0 AND PK.ID <> 78 AND PK.REST = ''A'' AND PK.EST_ENT = 1 ORDER BY 2'); { DEFAULT ID 78 JÁ INSERIDO NO OBJ }
    ExecQuery;
    while not eof do
    begin
      IECDTP.Values.Add(Current.Vars[0].AsString);
      IECDTP.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    { Situação }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_STA AS PK WHERE PK.ID <> 0 AND PK.ID <> 30 AND PK.REST = ''A'' AND PK.EST_ENT = 1 ORDER BY 2'); { DEFAULT ID 30 JÁ INSERIDO NO OBJ }
    ExecQuery;
    while not eof do
    begin
      IECDST.Values.Add(Current.Vars[0].AsString);
      IECDST.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    { Container }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.CON_CTNR FROM CAD_CON AS PK WHERE NOT FEMPTY(PK.CON_CTNR) ORDER BY 1 DESC');
    ExecQuery;
    while not eof do
    begin
      IECTNR.Values.Add(Current.Vars[1].AsString);
      IECTNR.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    { Defeitos }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,COALESCE(PK.FASE,'''') || '' - '' || COALESCE(PK.DESCRICAO,'''') AS DEDF FROM TAB_DEF AS PK WHERE PK.ID > 0 AND PK.REST = ''A'' AND PK.DESCRICAO IS NOT NULL ORDER BY 2');
    ExecQuery;
    while not eof do
    begin
      IECDDF.Values.Add(Current.Vars[0].AsString);
      IECDDF.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;
  end;
end;

procedure Tfrmeti_pro_new.FormDestroy(Sender: TObject);
begin
  oFRECEdicao(RECEstoque);
  inherited;

  frmeti_pro_new := Nil;
end;

procedure Tfrmeti_pro_new.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then Close else
  inherited;
end;

procedure Tfrmeti_pro_new.SISEP_DELClick(Sender: TObject);
begin
  CECDET.ValidateEdit;
  if (CECDET.Value = 0) or (CECDET.Value <> EtiquetasET_CDET.AsLargeInt) then
      Abort;
end;

procedure Tfrmeti_pro_new.SIEST_EDIClick(Sender: TObject);
begin
  TAG := 0;
end;

procedure Tfrmeti_pro_new.siCANClick(Sender: TObject);
begin
  TAG := 0;
end;

procedure Tfrmeti_pro_new.siVISClick(Sender: TObject);
begin
  TAG := 0;
end;

procedure Tfrmeti_pro_new.siPRIClick(Sender: TObject);
begin
  TAG := 0;
end;

procedure Tfrmeti_pro_new.IECDSTChange(Sender: TObject);
begin
  if IECDST.Text = EmptyStr then
  begin
    IECDST.Color      := clHighlightText;
    IECDST.Font.Color := clBlack;
  end else
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.TIPO FROM TAB_STA AS PK');
    SQL.Add('WHERE  PK.ID = ''' + IECDST.Text + '''');
    ExecQuery;

    if Current.Vars[0].AsString = 'C' then
    begin
      IECDST.Color      := $000024B3;
      IECDST.Font.Color := clWhite;
    end else
    if Current.Vars[0].AsString = 'E' then
    begin
      IECDST.Color      := clInfoBk;
      IECDST.Font.Color := clBlack;
    end else
    begin
      IECDST.Color      := $000024B3;
      IECDST.Font.Color := clBlack;
    end;
  end;
end;

procedure Tfrmeti_pro_new.IECDTPChange(Sender: TObject);
begin
  if IECDTP.Text <> EmptyStr then
  if IECDTP.Descriptions[IECDTP.Values.IndexOf(IECDTP.Text)] = '1º QUALIDADE AA' then
     EDLote.Text := '1' else
  if IECDTP.Descriptions[IECDTP.Values.IndexOf(IECDTP.Text)] = '1º QUALIDADE A' then
     EDLote.Text := '2' else
  if IECDTP.Descriptions[IECDTP.Values.IndexOf(IECDTP.Text)] = '1º QUALIDADE B' then
     EDLote.Text := '3' else
  if IECDTP.Descriptions[IECDTP.Values.IndexOf(IECDTP.Text)] = '2º QUALIDADE C' then
     EDLote.Text := '4';
end;

procedure Tfrmeti_pro_new.IECDDFChange(Sender: TObject);
begin
  if IECDDF.Text = '0' then
  begin
    IECDDF.Color      := clWhite;
    IECDDF.Font.Color := clBlack;
  end else
  begin
    IECDDF.Color      := $000024B3;
    IECDDF.Font.Color := clWhite;
  end;
end;

procedure Tfrmeti_pro_new.CECDETValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  _PSQCDET(CECDET.Text);
end;

procedure Tfrmeti_pro_new._PSQCDET(ACDET: Variant);
begin
  oCTransact(IBTra);
  oOTransact(IBTra);

  Etiquetas.ParamByName('IDEP').Value := RECParametros.EP_ID;
  Etiquetas.ParamByName('CDET').Value := ACDET;
  Etiquetas.Prepare;
  Etiquetas.Open;
end;

procedure Tfrmeti_pro_new.EtiquetasAfterOpen(DataSet: TDataSet);
begin
  { Edição }
  IECDST.Text := EtiquetasEF_CDST.AsString;
  IECDTP.Text := EtiquetasEF_CDTP.AsString;
  IECTNR.Text := EtiquetasEF_CTNR.AsString;
  EDLOTE.Text := EtiquetasEF_LOTE.AsString;
  EDUCOM.Text := EtiquetasUCOM.AsString;

  CEQTDE.Value := EtiquetasEF_QTDE.AsFloat;
  CEQTCO.Value := 0;

  SHETQ_ST.Visible := (Etiquetas.RecNo > 0);
  LAETQ_ST.Visible := (Etiquetas.RecNo > 0);

  SHETQ_QT.Visible     := (Etiquetas.RecNo > 0);
  LAETQ_QT_EST.Visible := (Etiquetas.RecNo > 0);
  LAETQ_QT_EPE.Visible := (Etiquetas.RecNo > 0);




  { Edição
  CECDET.Tag   := Current.ByName('IDFK').AsInteger;
  CECDET.Value := Current.ByName('CDET').AsInteger;

  CEQTDE.Value := Current.ByName('QTDE').AsFloat;
  EDUCOM.Text  := Current.ByName('UCOM').AsString;

  IECDTP.Text  := Current.ByName('CDTP').AsString;
  IECDDF.Text  := Current.ByName('CDDF').AsString;

  IECTNR.Text  := Current.ByName('CTNR').AsString;
  EDLote.Text  := Current.ByName('LOTE').AsString;

  EMINFADROM.Lines.Clear;
  EMINFADROM.Text := Current.ByName('INFADROM').AsString;

  EMINFADETQ.Lines.Clear;
  EMINFADETQ.Text := Current.ByName('INFADETQ').AsString;
           }

  Application.ProcessMessages;

  if (Etiquetas.RecNo = 0) and (CECDET.Value > 0) then
      oException(CECDET,'Número da etiqueta não encontrado !');
end;

end.
