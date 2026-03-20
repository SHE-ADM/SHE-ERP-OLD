unit pSegmentos;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefaultEditGrid, dxExEdtr, cxGraphics, IBCustomDataSet, dxsbar,
  dxBar, ImgList, ActnList, dxDockControl, dxBarExtItems, IBEvents, DB,
  IBStoredProc, IBSQL, IBDatabase, cxControls, dxStatusBar, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDockPanel, ExtCtrls, dxDBTLCl, dxGrClms,
  math, StrUtils;

type
  TFrmSegmentos = class(TFrmDefaultEditGrid)
    BLBPesquisaReferencia: TdxBarLargeButton;
    BLBPesquisaDescricao: TdxBarLargeButton;
    BLBPesquisaDTCA: TdxBarLargeButton;
    BLBPesquisaDTED: TdxBarLargeButton;
    BLBPesquisaDTST: TdxBarLargeButton;
    EdicaoID: TSmallintField;
    EdicaoIDEP: TSmallintField;
    EdicaoDEEP: TIBStringField;
    EdicaoIDCA: TSmallintField;
    EdicaoNOCA: TIBStringField;
    EdicaoDTCA: TDateTimeField;
    EdicaoIDED: TSmallintField;
    EdicaoNOED: TIBStringField;
    EdicaoDTED: TDateTimeField;
    EdicaoIDST: TSmallintField;
    EdicaoNOST: TIBStringField;
    EdicaoDTST: TDateTimeField;
    EdicaoCDST: TSmallintField;
    EdicaoREST: TIBStringField;
    EdicaoDEST: TIBStringField;
    EdicaoREFERENCIA: TIBStringField;
    EdicaoDESCRICAO: TIBStringField;
    EdicaoIP: TIBStringField;
    EdicaoHOST: TIBStringField;
    DBGEdicaoID: TdxDBGridMaskColumn;
    DBGEdicaoDESCRICAO: TdxDBGridMaskColumn;
    DBGEdicaoDEEP: TdxDBGridPickColumn;
    DBGEdicaoDEST: TdxDBGridPickColumn;
    DBGEdicaoREST: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure DBGEdicaoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGEdicaoDESTValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DBGEdicaoDEEPValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EdicaoAfterOpen(DataSet: TDataSet);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure DTSEdicaoDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure _WM_AFTER_ACTIVATE (var Msg: TMessage); message WM_AFTER_ACTIVATE;
    procedure _WM_AFTER_CREATE   (var Msg: TMessage); message WM_AFTER_CREATE;
  end;

var
  FrmSegmentos: TFrmSegmentos;

implementation

{$R *.dfm}

procedure TFrmSegmentos._WM_AFTER_CREATE(var Msg: TMessage);
begin
  inherited;
  with SQLConsulta do
  begin
    { Empresas }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.FANTASIA FROM TAB_PAR_SIS AS PK WHERE PK.REST = ''A'' ORDER BY FANTASIA');
    ExecQuery;
    while not SQLConsulta.Eof do
    begin
      DBGEdicaoDEEP.Items.Add(Current.Vars[0].AsString);
      next;
    end;
  end;
end;

procedure TFrmSegmentos._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
  inherited;
  ACTPesquisa.Execute;
end;

procedure TFrmSegmentos.FormCreate(Sender: TObject);
begin
  { ADMIN }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_PRO_ADM'; { Eventos }

  { GRANT }
  REC_SHE_DEF.GDescricao  := 'Produtos';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;
end;

procedure TFrmSegmentos.ACTPesquisaExecute(Sender: TObject);
begin
  BBPesquisaCadastro.Hint := IFThen(BBPesquisaCadastro.Caption = 'Pesquisa Rápida','Descrição, Referência, etc',EmptyStr);
  BEPesquisaCadastro.Hint := BBPesquisaCadastro.Hint;
  inherited;

  try
    with Edicao do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT PK.* FROM VW_TAB_SEG AS PK');
      SelectSQL.Add('WHERE  PK.ID <> 0');

      { Load Default }
      if ACTPesquisa.Tag = 1 then
      { nothing } else
      begin
        { Pesquisa }
        if BBPesquisaCadastro.Caption = 'Referência' then
           SelectSQL.Add('AND PK.REFERENCIA = '''+BEPesquisaCadastro.Text+'''') else
        if BBPesquisaCadastro.Caption = 'Descrição' then
           SelectSQL.Add('AND PK.DESCRICAO CONTAINING '''+BEPesquisaCadastro.Text+'''') else

        { Pesquisa Rápida }
        if BEPesquisaCadastro.Text <> EmptyStr then
           SelectSQL.Add('AND (PK.REFERENCIA CONTAINING '''+BEPesquisaCadastro.Text+''' CONTAINING PK.DESCRICAO = '''+BEPesquisaCadastro.Text+''')');

        { Pesquisa Período }
        if (BDCPesquisaPeriodoI.Date > 0) and (BDCPesquisaPeriodoF.Date > 0) then
            if BBPesquisaPeriodo.Caption = 'Edição'  then
               SelectSQL.Add('AND CAST(PK.DTED AS DATE) BETWEEN '''+formatDateTime('mm/dd/yy',BDCPesquisaPeriodoI.Date)+''' AND '''+formatDateTime('mm/dd/yy',BDCPesquisaPeriodoF.Date)+'''') else
            if BBPesquisaPeriodo.Caption = 'Situação'  then
               SelectSQL.Add('AND CAST(PK.DTST AS DATE) BETWEEN '''+formatDateTime('mm/dd/yy',BDCPesquisaPeriodoI.Date)+''' AND '''+formatDateTime('mm/dd/yy',BDCPesquisaPeriodoF.Date)+'''') else
               SelectSQL.Add('AND CAST(PK.DTCA AS DATE) BETWEEN '''+formatDateTime('mm/dd/yy',BDCPesquisaPeriodoI.Date)+''' AND '''+formatDateTime('mm/dd/yy',BDCPesquisaPeriodoF.Date)+'''');
      end;

      SelectSQL.Add('ORDER BY PK.ID');
      Open;
    end;
  finally
    ACTPesquisa.Tag := 0;

    BEPesquisaCadastro.Text     := EmptyStr;
    BEPesquisaCadastro.CurText  := EmptyStr;

    BDCPesquisaPeriodoI.Text    := EmptyStr;
    BDCPesquisaPeriodoI.CurText := EmptyStr;

    BDCPesquisaPeriodoF.Text    := EmptyStr;
    BDCPesquisaPeriodoF.CurText := EmptyStr;

    Application.ProcessMessages;
  end;
end;

procedure TFrmSegmentos.EdicaoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DBGEdicao.FocusedAbsoluteIndex := DBGEdicaoDESCRICAO.Index;
end;

procedure TFrmSegmentos.EdicaoNewRecord(DataSet: TDataSet);
begin
  inherited;
  EdicaoDTCA.Value := Now;

  EdicaoIDEP.Value := RECParametros.EP_ID;
  EdicaoDEEP.Value := RECParametros.EP_NO;
  
  EdicaoREST.Value := 'A';
  EdicaoDEST.Value := 'ATIVO';
end;

procedure TFrmSegmentos.EdicaoBeforePost(DataSet: TDataSet);
begin
  inherited;
  { Check Usuário }
  EdicaoIDCA.Value := RECUsuarios.Id;

  { Check Empresa }
  if EdicaoIDEP.AsInteger = 0 then
     DataBaseError('Empresa não informada ou incorreta !');

  { Check Situação }
  EdicaoREST.Value := IFThen(EdicaoDEST.AsString = 'ATIVO'       ,'A',
                      IFThen(EdicaoDEST.AsString = 'INATIVO'     ,'I',
                      IFThen(EdicaoDEST.AsString = 'PRÉ-CADASTRO','PRÉ',EmptyStr)));

  if EdicaoREST.AsString = EmptyStr then
     DataBaseError('Situação não informada ou incorreta !');

  { Check Dispositivos }
  EdicaoIP.Value   := RECParametros.IP;
  EdicaoHOST.Value := RECParametros.HOST;
end;

procedure TFrmSegmentos.DTSEdicaoDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
{  DBGEdicaoNOCA.Visible := (EdicaoIDCA.AsInteger > 0);
  DBGEdicaoNOST.Visible := (EdicaoIDST.AsInteger > 0);
  DBGEdicaoDTST.Visible := (EdicaoIDST.AsInteger > 0);

  DBGEdicao.Bands[3].Visible := (EdicaoIDED.AsInteger > 0);
  DBGEdicao.Bands[4].Visible := (EdicaoHOST.AsString <> EmptyStr) or (EdicaoIP.AsString <> EmptyStr);
}

  if Edicao.State = dsBrowse then
  begin
    DBGEdicao.ApplyBestFit(DBGEdicaoDESCRICAO);
    DBGEdicao.ApplyBestFit(DBGEdicaoDEEP);
  end;
end;

procedure TFrmSegmentos.DBGEdicaoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if not ASelected then
  begin
    if ANode.Values[DBGEdicaoREST.Index] = 'I' then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end else
    if ANode.Values[DBGEdicaoREST.Index] = 'PRÉ' then
    begin
      AColor      := clInfoBk;
      AFont.Color := clBlack;
    end;

    if (AColumn = DBGEdicaoDEST) and (ANode.Values[DBGEdicaoREST.Index] = 'A') then
    begin
      AColor      := $00C4FFC4;
      AFont.Color := clBlack;
    end;
  end;
end;

procedure TFrmSegmentos.DBGEdicaoDESTValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  inherited;
  if (Edicao.State in [dsInsert,dsEdit]) and (Trim(DBGEdicao.EditingText) <> EmptyStr) and (Trim(DBGEdicao.EditingText) <> EdicaoDEST.AsString) then
      try
        oOTransact(TConsulta);
        with SQLConsulta do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT PK.REST FROM TAB_STA AS PK WHERE PK.DESCRICAO = '''+Trim(DBGEdicao.EditingText)+'''');
          ExecQuery;

          EdicaoREST.Value := Current.Vars[0].AsString;
          EdicaoDEST.Value := Trim(DBGEdicao.EditingText);
        end;
      finally
        oCTransact(TConsulta);
      end;
end;

procedure TFrmSegmentos.DBGEdicaoDEEPValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  inherited;
  if (Edicao.State in [dsInsert,dsEdit]) and (Trim(DBGEdicao.EditingText) <> EmptyStr) and (Trim(DBGEdicao.EditingText) <> EdicaoDEEP.AsString) then
      try
        oOTransact(TConsulta);
        with SQLConsulta do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT PK.ID FROM TAB_PAR_SIS AS PK WHERE PK.FANTASIA = '''+Trim(DBGEdicao.EditingText)+'''');
          ExecQuery;

          EdicaoIDEP.Value := Current.Vars[0].AsInteger;
          EdicaoDEEP.Value := Trim(DBGEdicao.EditingText);
        end;
      finally
        oCTransact(TConsulta);
      end;
end;

end.
