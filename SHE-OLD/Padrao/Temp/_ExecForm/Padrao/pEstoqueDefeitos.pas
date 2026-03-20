unit pEstoqueDefeitos;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefaultGrid, dxExEdtr, cxGraphics, IBCustomDataSet, dxBar,
  ImgList, ActnList, dxDockControl, dxBarExtItems, IBEvents, DB,
  IBStoredProc, IBSQL, IBDatabase, cxControls, dxStatusBar, rxSpeedbar,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDockPanel, ExtCtrls, dxDBTLCl,
  math, strutils,dxGrClms, IBQuery, dxEditor, dxEdLib, dxDBELib;

type
  TFrmEstoqueDefeitos = class(TFrmDefaultGrid)
    EdicaoID: TSmallintField;
    EdicaoIDCA: TSmallintField;
    EdicaoIDED: TSmallintField;
    EdicaoIDST: TSmallintField;
    EdicaoREST: TIBStringField;
    EdicaoFADF: TIBStringField;
    EdicaoDEDF: TIBStringField;
    EdicaoINFADCAD: TMemoField;
    EdicaoIP: TIBStringField;
    EdicaoHOST: TIBStringField;
    DBGConsultaFADF: TdxDBGridPickColumn;
    DBGConsultaDEDF: TdxDBGridMaskColumn;
    DBGConsultaINFADCAD: TdxDBGridBlobColumn;
    DBGConsultaREST: TdxDBGridPickColumn;
    PNLFKConsulta: TPanel;
    DSFKConsulta: TdxDockSite;
    DPFKConsulta: TdxDockPanel;
    dxLayoutDockSite2: TdxLayoutDockSite;
    FKEdicao: TIBQuery;
    DTSFKEdicao: TDataSource;
    FKEdicaoID: TIntegerField;
    FKEdicaoIDEP: TSmallintField;
    FKEdicaoIDPK: TLargeintField;
    FKEdicaoIDCA: TIntegerField;
    FKEdicaoDECA: TIBStringField;
    FKEdicaoDTCA: TDateTimeField;
    FKEdicaoCDET: TLargeintField;
    FKEdicaoCTNR: TIBStringField;
    FKEdicaoLOTE: TIBStringField;
    FKEdicaoIDCP: TIntegerField;
    FKEdicaoARTIGO: TIBStringField;
    FKEdicaoSKU: TIBStringField;
    FKEdicaoDECP: TIBStringField;
    FKEdicaoDGCP: TIBStringField;
    FKEdicaoUCOM: TIBStringField;
    FKEdicaoUCON: TIBStringField;
    FKEdicaoQTDE: TIBBCDField;
    FKEdicaoQTRL: TIntegerField;
    FKEdicaoCDTP: TSmallintField;
    FKEdicaoDETP: TIBStringField;
    FKEdicaoCDDF: TSmallintField;
    FKEdicaoDEDF: TIBStringField;
    FKEdicaoINFADETQ: TIBStringField;
    FKEdicaoCDPD: TIntegerField;
    FKEdicaoDEPV: TIBStringField;
    FKEdicaoDTPV: TDateField;
    FKEdicaoDECL: TIBStringField;
    FKEdicaoDECV: TIBStringField;
    FKEdicaoDECR: TIBStringField;
    FKEdicaoROLO: TIBStringField;
    FKEdicaoC_DECP: TStringField;
    FKEdicaoDEEP: TIBStringField;
    FKEdicaoCDOP: TSmallintField;
    FKEdicaoDEOP: TIBStringField;
    DBC_DECP: TdxDBEdit;
    DBGFKConsulta: TdxDBGrid;
    DBGFKConsultaSKU: TdxDBGridMaskColumn;
    DBGFKConsultaDETP: TdxDBGridMaskColumn;
    DBGFKConsultaCDET: TdxDBGridColumn;
    DBGFKConsultaROLO: TdxDBGridMaskColumn;
    DBGFKConsultaDTCA: TdxDBGridColumn;
    DBGFKConsultaDECA: TdxDBGridColumn;
    DBGFKConsultaCTNR: TdxDBGridColumn;
    DBGFKConsultaDEPV: TdxDBGridMaskColumn;
    DBGFKConsultaDTPV: TdxDBGridDateColumn;
    DBGFKConsultaDECL: TdxDBGridMaskColumn;
    DBGFKConsultaDECV: TdxDBGridMaskColumn;
    DBGFKConsultaDECR: TdxDBGridMaskColumn;
    FKEdicaoIDDV: TSmallintField;
    FKEdicaoCDDV: TLargeintField;
    FKEdicaoDTDV: TDateTimeField;
    FKEdicaoPK_CDET: TLargeintField;
    FKEdicaoPK_DTCA: TDateTimeField;
    DBGFKConsultaPK_CDET: TdxDBGridColumn;
    DBGFKConsultaPK_DTCA: TdxDBGridColumn;
    DBGConsultaID: TdxDBGridMaskColumn;
    PNLINFADCAD: TPanel;
    BVInfadPed: TBevel;
    DBINFADCAD: TdxDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSEdicaoStateChange(Sender: TObject);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure DTSFKEdicaoDataChange(Sender: TObject; Field: TField);
    procedure EdicaoAfterOpen(DataSet: TDataSet);
    procedure FKEdicaoCalcFields(DataSet: TDataSet);
    procedure DBGFKConsultaCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure FKEdicaoAfterScroll(DataSet: TDataSet);
    procedure EdicaoBeforeScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure _WM_AFTER_CREATE  (var Msg: TMessage); message WM_AFTER_CREATE;
  end;

var
  FrmEstoqueDefeitos: TFrmEstoqueDefeitos;

implementation

{$R *.dfm}

procedure TFrmEstoqueDefeitos._WM_AFTER_CREATE(var Msg: TMessage);
begin
  inherited;
  try
    oOTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   FADF FROM TAB_DEF');
      SQL.Add('WHERE    FADF IS NOT NULL ');
      SQL.Add('GROUP BY 1');
      SQL.Add('ORDER BY 1');
      ExecQuery;

      while not Eof do
      begin
        DBGConsultaFADF.Items.Add(Current.Vars[0].AsString);
        next;
      end;
    end;
  finally
    oCTransact(TConsulta);
  end;

  with FKEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PK.*,');
    SQL.Add('         PV.ROM_DERO AS DEPV,PV.ROM_DROM AS DTPV,');
    SQL.Add('         CL.CLI_FANT AS DECL,CV.LOGIN    AS DECV,CR.REP_FANT AS DECR');
    SQL.Add('FROM     VW_CAD_PRO_EST_REV AS PK');
    SQL.Add('LEFT     JOIN '+SLPrincipal.Values['ped_ven_cab']+' AS PV ON (PV.IDEP = PK.IDEP AND PV.ID = PK.CDPD)');
    SQL.Add('LEFT     JOIN CAD_CLI  AS CL ON (CL.ID = PV.ROM_CCLI)');
    SQL.Add('LEFT     JOIN TAB_USER AS CV ON (CV.ID = PV.ROM_CVEN)');
    SQL.Add('LEFT     JOIN CAD_REP  AS CR ON (CR.ID = PV.ROM_CREP)');
    SQL.Add('WHERE    PK.CDDF = :ID');
    SQL.Add('ORDER BY PK.ID DESC');
    Prepare;
    Open;
  end;

  Edicao.Prepare;
  Edicao.Open;

  DBGConsulta.FocusedColumn := DBGConsultaDEDF.Index;
end;

procedure TFrmEstoqueDefeitos.FormCreate(Sender: TObject);
begin
  { ADMIN }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_PRO_EST_DEF'; { Eventos }

  { GRANT }
  REC_SHE_DEF.GDescricao  := 'Estoque';
  REC_SHE_DEF.GReferencia := 'Produtos';
  REC_SHE_DEF.GRegra      := 'Qualidade';
  inherited;
end;

procedure TFrmEstoqueDefeitos.EdicaoAfterOpen(DataSet: TDataSet);
begin
  if FKEdicao.State = dsInactive then
     FKEdicao.Open;
  inherited;
end;

procedure TFrmEstoqueDefeitos.EdicaoNewRecord(DataSet: TDataSet);
begin
  EdicaoREST.Value := 'ATIVO';
end;

procedure TFrmEstoqueDefeitos.EdicaoBeforePost(DataSet: TDataSet);
begin
  EdicaoREST.Value := LeftStr(EdicaoREST.AsString,1);
  inherited;
end;

procedure TFrmEstoqueDefeitos.EdicaoBeforeScroll(DataSet: TDataSet);
begin
  DBGFKConsulta.Bands[2].Visible := False;
  DBGFKConsultaCTNR.Visible := False;
end;

procedure TFrmEstoqueDefeitos.FKEdicaoAfterScroll(DataSet: TDataSet);
begin
  if (FKEdicaoPK_CDET.AsInteger > 0) or (FKEdicaoCTNR.AsString <> EmptyStr) then
      DBGFKConsulta.Bands[2].Visible := True;

  if FKEdicaoCTNR.AsString <> EmptyStr then
     DBGFKConsultaCTNR.Visible := True;
end;

procedure TFrmEstoqueDefeitos.FKEdicaoCalcFields(DataSet: TDataSet);
begin
  FKEdicaoC_DECP.Value := TRIM(FKEdicaoDECP.AsString+' '+TRIM(FKEdicaoDGCP.AsString+' '+TRIM(FKEdicaoUCON.AsString+' '+TRIM(FKEdicaoDEEP.AsString))));
  inherited;
end;

procedure TFrmEstoqueDefeitos.DTSEdicaoStateChange(Sender: TObject);
begin
  inherited;
  if Edicao.State = dsBrowse then
     DBGConsulta.ApplyBestFit(DBGConsultaDEDF);
end;

procedure TFrmEstoqueDefeitos.DTSFKEdicaoDataChange(Sender: TObject;
  Field: TField);
begin
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaSKU );
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaDETP);
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaDECA);

  PNLINFADCAD.Height := IFThen(DBINFADCAD.Lines.Count = 0,00,
                        IFThen(DBINFADCAD.Lines.Count = 1,35,
                        IFThen(DBINFADCAD.Lines.Count = 2,40,
                        IFThen(DBINFADCAD.Lines.Count = 3,55,
                        IFThen(DBINFADCAD.Lines.Count = 4,65,75)))));
end;

procedure TFrmEstoqueDefeitos.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
     if ANode.Values[DBGConsultaREST.Index] = 'INATIVO' then
     begin
       AColor      := $000024B3;
       AFont.Color := clWhite;
     end;
end;

procedure TFrmEstoqueDefeitos.DBGFKConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if (AColumn = DBGFKConsultaDETP) or (AColumn = DBGFKConsultaCDET) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
    end;

    if AColumn = DBGFKConsultaCTNR then
       if not oEmpty(ANode.Values[DBGFKConsultaCTNR.Index]) then
       begin
         AColor      := clGray;
         AFont.Color := clWhite;
       end;

    if AColumn = DBGFKConsultaDEPV then
       if not oEmpty(ANode.Values[DBGFKConsultaDEPV.Index]) then
       begin
         AColor      := clGray;
         AFont.Color := clWhite;
       end;
  end;
end;

end.

