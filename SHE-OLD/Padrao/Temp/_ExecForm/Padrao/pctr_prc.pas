unit pctr_prc;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, DB, IBStoredProc, IBEvents,
  IBDatabase, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ComCtrls, ExtCtrls, DBCtrls, dxPageControl, dxEditor, dxEdLib,
  StdCtrls, dxDBTLCl, dxGrClms, DateUtils, dxExEdtr, jpeg, Menus, Shellapi,
  Math, StrUtils, dxDBELib, rxSpeedbar, IBSQL, ActnList, pPadr2, dxBar,
  dxDockControl, dxDockPanel, cxGraphics, cxControls, dxStatusBar;

type
  Tfrmctr_prc = class(Tfrmpadr2)
    siARO: TSpeedItem;
    siCRO: TSpeedItem;
    FKCadastro: TIBQuery;
    DTSFKCadastro: TDataSource;
    Label23: TLabel;
    siBRO: TSpeedItem;
    PNLIT: TPanel;
    GBItens: TGroupBox;
    DBGItem: TdxDBGrid;
    DBGItemITEM: TdxDBGridMaskColumn;
    DBGItemSKU: TdxDBGridMaskColumn;
    DBGItemDECP: TdxDBGridMaskColumn;
    DBGItemROM_DUNI: TdxDBGridMaskColumn;
    DBGItemROM_QTDE: TdxDBGridMaskColumn;
    DBGItemROM_UNIT: TdxDBGridMaskColumn;
    DBGItemROM_TOTA: TdxDBGridMaskColumn;
    DBGItemROM_QTPD: TdxDBGridMaskColumn;
    DBGItemROM_CTNR: TdxDBGridMaskColumn;
    DBGItemROM_DROM: TdxDBGridDateColumn;
    DBGItemROM_DPRD: TdxDBGridDateColumn;
    DBGItemROM_DEMB: TdxDBGridDateColumn;
    DBGItemROM_DDES: TdxDBGridDateColumn;
    DBGItemROM_DEXP: TdxDBGridDateColumn;
    DBGItemROM_DBAI: TdxDBGridDateColumn;
    DBGItemROM_STAV: TdxDBGridMaskColumn;
    DBGItemROM_CDNF: TdxDBGridMaskColumn;
    SINovo: TSpeedItem;
    DBGItemROM_NFCI: TdxDBGridMaskColumn;
    DBGItemDGCP: TdxDBGridMaskColumn;
    DBGItemDECOL: TdxDBGridMaskColumn;
    FKCadastroID: TIntegerField;
    FKCadastroIDEP: TSmallintField;
    FKCadastroIDPK: TLargeintField;
    FKCadastroIDFK: TLargeintField;
    FKCadastroROM_CTNR: TIBStringField;
    FKCadastroROM_CDNF: TIntegerField;
    FKCadastroITEM: TIntegerField;
    FKCadastroIDCP: TIntegerField;
    FKCadastroIDAK: TLargeintField;
    FKCadastroIDEK: TLargeintField;
    FKCadastroCP_IDEP: TSmallintField;
    FKCadastroCP_DEEP: TIBStringField;
    FKCadastroARTIGO: TIBStringField;
    FKCadastroSKU: TIBStringField;
    FKCadastroDECP: TIBStringField;
    FKCadastroDGCP: TIBStringField;
    FKCadastroDECOL: TIBStringField;
    FKCadastroROM_DUNI: TIBStringField;
    FKCadastroROM_QTDE: TIBBCDField;
    FKCadastroROM_QTRL: TIntegerField;
    FKCadastroROM_QTPD: TIBBCDField;
    FKCadastroROM_RLPD: TIntegerField;
    FKCadastroROM_PREC: TFloatField;
    FKCadastroROM_UNIT: TFloatField;
    FKCadastroROM_TOTA: TIBBCDField;
    FKCadastroROM_DROM: TDateField;
    FKCadastroROM_DPRD: TDateField;
    FKCadastroROM_RPRD: TDateField;
    FKCadastroROM_DEMB: TDateField;
    FKCadastroROM_REMB: TDateField;
    FKCadastroROM_DDES: TDateField;
    FKCadastroROM_RDES: TDateField;
    FKCadastroROM_DEXP: TDateField;
    FKCadastroROM_DBAI: TDateField;
    FKCadastroROM_NFCI: TIBStringField;
    FKCadastroROM_STAV: TIBStringField;
    FKCadastroIDCOL: TSmallintField;
    FKCadastroROM_CDPD: TIntegerField;
    FKCadastroROM_QPRD: TSmallintField;
    FKCadastroROM_QEMB: TSmallintField;
    FKCadastroROM_QDES: TSmallintField;
    FKCadastroROM_QEXP: TSmallintField;
    FKCadastroPSBR: TIBBCDField;
    FKCadastroPSLQ: TIBBCDField;
    DBGItemPSBR: TdxDBGridMaskColumn;
    DBGItemPSLQ: TdxDBGridMaskColumn;
    PNLINFADCAD: TPanel;
    DBINFADCAD: TdxDBMemo;
    PPSheild: TPopupMenu;
    AtualizarEstoque1: TMenuItem;
    DBGConsultaDEPK: TdxDBGridMaskColumn;
    DBGConsultaDTPK: TdxDBGridColumn;
    DBGConsultaCD_NO: TdxDBGridMaskColumn;
    DBGConsultaCR_NO: TdxDBGridMaskColumn;
    DBGConsultaCV_NO: TdxDBGridMaskColumn;
    DBGConsultaCT_NO: TdxDBGridMaskColumn;
    DBGConsultaFRT_NO: TdxDBGridMaskColumn;
    DBGConsultaTPD_NO: TdxDBGridMaskColumn;
    DBGConsultaTCO_NO_PRZ: TdxDBGridMaskColumn;
    DBGConsultaDEST: TdxDBGridMaskColumn;
    CadastroID: TLargeintField;
    CadastroEP_ID: TSmallintField;
    CadastroIDPK: TSmallintField;
    CadastroDEPK: TIBStringField;
    CadastroDTPK: TDateField;
    CadastroCD_ID: TIntegerField;
    CadastroCD_NO: TIBStringField;
    CadastroCR_ID: TSmallintField;
    CadastroCR_NO: TIBStringField;
    CadastroCV_ID: TSmallintField;
    CadastroCV_NO: TIBStringField;
    CadastroTSDE: TIBBCDField;
    CadastroTCDE: TIBBCDField;
    CadastroVDSC: TIBBCDField;
    CadastroCT_ID: TSmallintField;
    CadastroCT_NO: TIBStringField;
    CadastroFRT_MODELO: TSmallintField;
    CadastroFRT_PSBR: TIBBCDField;
    CadastroFRT_PSLQ: TIBBCDField;
    CadastroTPD_NO: TIBStringField;
    CadastroSTFI: TIBStringField;
    CadastroINFADCAD: TIBStringField;
    CadastroFRT_NO: TIBStringField;
    CadastroTPD_ID: TSmallintField;
    CadastroTCO_ID: TSmallintField;
    CadastroTCO_NO_PRZ: TIBStringField;
    CadastroPRZ_ID: TSmallintField;
    CadastroCDST: TSmallintField;
    CadastroREST: TIBStringField;
    CadastroDEST: TIBStringField;
    DBGConsultaVDSC: TdxDBGridMaskColumn;
    DBGConsultaFRT_PSBR: TdxDBGridMaskColumn;
    DBGConsultaFRT_PSLQ: TdxDBGridMaskColumn;
    CadastroBXD_DTPK: TDateField;
    CadastroCD_CNPJ: TIBStringField;
    CadastroCTNR: TIBStringField;
    CadastroCTNR_PCHP: TDateField;
    CadastroCTNR_RCHP: TDateField;
    CadastroTCO_NO: TIBStringField;
    CadastroFRT_VFRT: TIBBCDField;
    CadastroTDSC: TIBStringField;
    CadastroPDSC: TIBBCDField;
    DBGConsultaC_TSDE: TdxDBGridMaskColumn;
    DBGConsultaC_TCDE: TdxDBGridMaskColumn;
    DBGConsultaQTRL: TdxDBGridMaskColumn;
    DBGConsultaFRT_VFRT: TdxDBGridMaskColumn;
    CadastroC_TSDE: TStringField;
    CadastroC_TCDE: TStringField;
    FKCadastroVPRC_ORIG: TIBStringField;
    DBGConsultaTSDE: TdxDBGridMaskColumn;
    DBGConsultaTCDE: TdxDBGridMaskColumn;
    CadastroBXD_IDPK: TLargeintField;
    DBGConsultaIDPK: TdxDBGridMaskColumn;
    CadastroQTDE: TIBBCDField;
    CadastroQTRL: TIntegerField;
    DBGItemROM_QTRL: TdxDBGridMaskColumn;
    DBGItemROM_RLPD: TdxDBGridMaskColumn;
    CadastroIDEV: TLargeintField;
    CadastroCDCX: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure siAROClick(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure dtscadastroDataChange(Sender: TObject; Field: TField);
    procedure cadastroAfterOpen(DataSet: TDataSet);
    procedure siPSQClick(Sender: TObject);
    procedure DTSFKCadastroDataChange(Sender: TObject; Field: TField);
    procedure siCROClick(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siBROClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGItemCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure SINovoClick(Sender: TObject);
    procedure siRELClick(Sender: TObject);
    procedure CadastroBeforeScroll(DataSet: TDataSet);
    procedure FKCadastroAfterScroll(DataSet: TDataSet);
    procedure DTSCadastroStateChange(Sender: TObject);
    procedure AtualizarEstoque1Click(Sender: TObject);
    procedure CadastroBeforeOpen(DataSet: TDataSet);
    procedure CadastroAfterScroll(DataSet: TDataSet);
    procedure CadastroCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
     procedure FINALIZA;
     procedure REABRE;
  public
    { Public declarations }
    procedure _WM_AFTER_CREATE  (var Msg: TMessage); message WM_AFTER_CREATE;
  end;

var
  frmctr_prc: Tfrmctr_prc;

implementation

uses uPrincipal, bPrincipal,
  ppesquisa_geral, pven_prc, prelatorio_geral;

{$R *.dfm}

procedure Tfrmctr_prc._WM_AFTER_CREATE(var Msg: TMessage);
begin
  inherited;
  with Cadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PK.ID  ,PK.EP_ID ,PK.IDEV  ,');
    SQL.Add('         PK.IDPK,PK.DEPK  ,PK.DTPK  ,PK.CDCX,');
    SQL.Add('         PK.CTNR,CTNR_PCHP,CTNR_RCHP,');

    SQL.Add('         PK.CD_ID,PK.CD_NO,PK.CD_CNPJ,');
    SQL.Add('         PK.CR_ID,PK.CR_NO,');
    SQL.Add('         PK.CV_ID,PK.CV_NO,');

    SQL.Add('         PK.QTDE,PK.QTRL,');
    SQL.Add('         PK.TSDE,PK.TCDE,');
    SQL.Add('         PK.TDSC,PK.VDSC,PK.PDSC,');

    SQL.Add('         PK.CT_ID,PK.CT_NO,');
    SQL.Add('         PK.FRT_MODELO,PK.FRT_NO,PK.FRT_VFRT,PK.FRT_PSBR,PK.FRT_PSLQ,');

    SQL.Add('         PK.TPD_ID,PK.TPD_NO,');
    SQL.Add('         PK.TCO_ID,PK.TCO_NO,PK.TCO_NO_PRZ,PK.PRZ_ID,');
    SQL.Add('         PK.CDST,PK.REST,PK.DEST,PK.STFI,');
    SQL.Add('         PK.BXD_IDPK,PK.BXD_DTPK,');

    SQL.Add('         PK.INFADCAD');

    SQL.Add('FROM ' + oREPZero('VW_PSQ_PED_PDC_ADM','_',RECParametros.EP_ID,3) + ' AS PK');

    SQL.Add('WHERE    PK.EP_ID = ''' + RECParametros.EP_ID + '''');
    SQL.Add('AND      PK.DTPK >= DATEADD(MONTH,-12,DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE))');
    SQL.Add('ORDER BY PK.ID DESC');
    Prepare;
    Open;
  end;
end;

procedure Tfrmctr_prc.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'PED_PRC_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Clientes';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmctr_prc.FormDestroy(Sender: TObject);
begin
  inherited;
  oFREC_SHE_DEF(REC_SHE_DEF);
  frmctr_prc := nil;
end;

procedure Tfrmctr_prc.siPSQClick(Sender: TObject);
begin
  inherited;
  FrmPesquisa_Geral     := TFrmPesquisa_Geral.Create(self);
  FrmPesquisa_Geral.Tag := 17;

  with FrmPesquisa_Geral do
  try
    cbCAMPO.Text := 'Nº Pedido';
    cbDATA.Text  := 'Emissão';
    ShowModal;

    if Editado then
    begin
      oCTransact(TConsulta);
      oOTransact(TConsulta);

      with Cadastro do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT   PK.ID  ,PK.EP_ID ,PK.IDEV  ,');
        SQL.Add('         PK.IDPK,PK.DEPK  ,PK.DTPK  ,PK.CDCX,');
        SQL.Add('         PK.CTNR,CTNR_PCHP,CTNR_RCHP,');

        SQL.Add('         PK.CD_ID,PK.CD_NO,PK.CD_CNPJ,');
        SQL.Add('         PK.CR_ID,PK.CR_NO,');
        SQL.Add('         PK.CV_ID,PK.CV_NO,');

        SQL.Add('         PK.TSDE,PK.TCDE,PK.RLFK,');
        SQL.Add('         PK.TDSC,PK.VDSC,PK.PDSC,');

        SQL.Add('         PK.CT_ID,PK.CT_NO,');
        SQL.Add('         PK.FRT_MODELO,PK.FRT_NO,PK.FRT_VFRT,PK.FRT_PSBR,PK.FRT_PSLQ,');

        SQL.Add('         PK.TPD_ID,PK.TPD_NO,');
        SQL.Add('         PK.TCO_ID,PK.TCO_NO,PK.TCO_NO_PRZ,PK.PRZ_ID,');
        SQL.Add('         PK.CDST,PK.REST,PK.DEST,PK.STFI,');
        SQL.Add('         PK.BXD_IDPK,PK.BXD_DTPK,');

        SQL.Add('         PK.INFADCAD');

        SQL.Add('FROM ' + oREPZero('VW_PSQ_PED_PDC_ADM','_',RECParametros.EP_ID,3) + ' AS PK');
        SQL.Add('WHERE    PK.EP_ID = ''' + RECParametros.EP_ID + '''');

        if EDTXT.Text <> EmptyStr then
        SQL.Add('AND ' + CField + ' LIKE ''' + EDTXT.Text + '%''');

        if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
        SQL.Add('AND ' + cData + ' BETWEEN ''' + formatDateTime('mm/dd/yy',dxDT1.Date) + ''' AND ''' + formatDateTime('mm/dd/yy',dxDT2.Date) + '''');

        SQL.Add('ORDER BY PK.ID DESC');
        Prepare;
        Open;
      end;
    end;
  finally
    freeAndNil(FrmPesquisa_Geral);
  end;

  if Showing then
  DBGConsulta.SetFocus;
end;

procedure Tfrmctr_prc.SINovoClick(Sender: TObject);
begin
  siARO.Tag  := 0;
  frmven_prc := tfrmven_prc.Create(Self);
  frmven_prc.Show;
end;

procedure Tfrmctr_prc.siAROClick(Sender: TObject);
begin
  siARO.Tag  := 1;
  frmven_prc := tfrmven_prc.Create(Self,CadastroIDPK.AsInteger,CadastroDEPK.AsString,CadastroIDEV.AsInteger,1);
  frmven_prc.Show;
end;

procedure Tfrmctr_prc.siCROClick(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
  inherited;
  if oYesNo(handle,'Cancelar Pedido No ' + cadastroDEPK.AsString + ' ?') = mrNo then
  Abort;

  ClickedOK := InputQuery('Cancelamento de Pedido', 'Motivo', NewString);
  if not ClickedOK then
  Abort;

  if Length(NewString) < 5 then
  oException(Nil,'Motivo de cancelamento inválido !' +#13 +
                 'Mínimo de 5 dígitos.'); 

  try
    oOTransact(TEdicao);

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE ' + oREPZero('PED_COM_CAB','_',RECParametros.EP_ID,3));
      SQL.Add('SET IDCA = ''' + RECUsuarios.ID + ''',');

      SQL.Add('ROM_STFI = ''CANCELADO'',');
      SQL.Add('ROM_OBSE = ''' + CadastroINFADCAD.AsString + #13 + #13 +
                          'Pedido Cancelado: ' + RECUsuarios.Login + ' ' + FormatDateTime('dd.mm.yy hh:mm',Now) + ' ' + RECParametros.HOST +  #13 +
                          'Motivo: ' + NewString + '''');

      SQL.Add('WHERE IDPK = ''' + CadastroIDPK.AsString + '''');
      ExecQuery;
    end;

    oCTransact(TEdicao);
    oAviso(Application.Handle,'Pedido cancelado com sucesso !');
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(Nil,'Falha ao tentar cancelar pedido !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: ' + E.Message);
    end;
  end;

  ACTEveExecute.Execute;
end;

procedure Tfrmctr_prc.siBROClick(Sender: TObject);
begin
  if uppercase(siBRO.BtnCaption) = 'FINALIZAR' then
     FINALIZA
  else
     REABRE;
end;

procedure Tfrmctr_prc.cadastroBeforeEdit(DataSet: TDataSet);
begin
  {};
end;

procedure Tfrmctr_prc.cadastroBeforeInsert(DataSet: TDataSet);
begin
  {};
end;

procedure Tfrmctr_prc.CadastroBeforeScroll(DataSet: TDataSet);
begin
  DBGItemDGCP.Visible     := False;
  DBGItemDECOL.Visible    := False;
  DBGItemROM_CDNF.Visible := False;
  DBGItemROM_CTNR.Visible := False;
  DBGItemROM_NFCI.Visible := False;
end;

procedure Tfrmctr_prc.FKCadastroAfterScroll(DataSet: TDataSet);
begin
  if FKCadastroDGCP.AsString <> EmptyStr then
     DBGItemDGCP.Visible := True;

  if FKCadastroDECOL.AsString <> EmptyStr then
     DBGItemDECOL.Visible := True;

  if FKCadastroROM_CDNF.AsInteger > 0 then
     DBGItemROM_CDNF.Visible := True;

  if FKCadastroROM_CTNR.AsString <> EmptyStr then
     DBGItemROM_CTNR.Visible := True;

  if FKCadastroROM_NFCI.AsString <> EmptyStr then
     DBGItemROM_NFCI.Visible := True;
end;

procedure Tfrmctr_prc.dtscadastroDataChange(Sender: TObject;
  Field: TField);
var
  PosCount: Word;
begin
  DBGConsultaVDSC.Visible := (CadastroVDSC.AsFloat   > 0);

  siNovo.Enabled := (REC_SHE_DEF.GAppend);
  siARO.Enabled  := (REC_SHE_DEF.GEdit  ) and (CadastroDEST.AsString <> 'CANCELADO') and (CadastroDEST.AsString <> 'FINALIZADO');
  siCRO.Enabled  := (REC_SHE_DEF.GDelete) and (CadastroDEST.AsString <> 'CANCELADO');
  siBRO.Enabled  := (REC_SHE_DEF.GAdmin ) and (CadastroDEST.AsString <> 'CANCELADO');

  if (CadastroDEST.AsString  = 'PENDENTE') or (CadastroDEST.AsString  = 'EMBARCADO') then
  begin
    siBRO.ImageIndex := 12;
    siBRO.BtnCaption := 'Finalizar';
  end else if Pos('FIN',CadastroDEST.AsString) > 0 then
  begin
    siBRO.ImageIndex := 14;
    siBRO.BtnCaption := 'Re-abrir';
  end;

  { Informações Adicionais }
            PosCount := oPosCount(''#$D'',CadastroINFADCAD.AsString);
  PNLINFADCAD.Height := IFThen((PosCount = 00) and (CadastroINFADCAD.AsString =  EmptyStr) ,00,
                        IFThen((PosCount = 00) and (CadastroINFADCAD.AsString <> EmptyStr) ,30,
                        IFThen((PosCount = 01),040,
                        IFThen((PosCount = 02),055,
                        IFThen((PosCount = 03),070,
                        IFThen((PosCount = 04),080,
                        IFThen((PosCount = 05),090,
                        IFThen((PosCount = 06),100,
                        IFThen((PosCount = 07),110,
                        IFThen((PosCount = 08),120,
                        IFThen((PosCount = 09),130,
                        IFThen((PosCount = 10),140,140))))))))))));

  if RECParametros.EP_ID <> CadastroEP_ID.AsInteger then
  begin
    siARO.Enabled := False;
    siCRO.Enabled := False;
    siBRO.Enabled := False;
  end;
end;

procedure Tfrmctr_prc.cadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not FKCadastro.Active then
         FKCadastro.Open;
end;

procedure Tfrmctr_prc.DTSFKCadastroDataChange(Sender: TObject; Field: TField);
begin
  DBGItemROM_CDNF.Visible := (FKCadastroROM_CDNF.AsInteger > 0);
  DBGItemROM_CTNR.Visible := (FKCadastroROM_CTNR.AsString <> EmptyStr);

  DBGITEM.ApplyBestFit(DBGITEMSKU  );
  DBGITEM.ApplyBestFit(DBGITEMDECP );
  DBGITEM.ApplyBestFit(DBGITEMDGCP );
  DBGITEM.ApplyBestFit(DBGITEMDECOL);
  DBGITEM.ApplyBestFit(DBGITEMROM_NFCI);
end;

procedure Tfrmctr_prc.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if Pos('FINALIZADO',ANode.Values[DBGConsultaDEST.Index]) > 0 then
    begin
      AFont.Color := clwhite;
      AColor      := $00A4A400;
    end else
    if Pos('EMBARCADO',ANode.Values[DBGConsultaDEST.Index]) > 0 then
    begin
      AFont.Color := clBlack;
      AColor      := $0080FFFF;
    end else
    if Pos('CANCELADO',ANode.Values[DBGConsultaDEST.Index]) > 0 then
    begin
      AFont.Color := clWhite;
      AColor      := $000024B3;
    end;

    if (AColumn = DBGConsultaDEPK) or (AColumn = DBGConsultaTCDE) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;
  end;
end;

procedure Tfrmctr_prc.DBGItemCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGItemROM_STAV.Index] <> Null then
    if Pos('FINALIZADO',ANode.Values[DBGItemROM_STAV.Index]) > 0 then
    begin
      AFont.Color := clwhite;
      AColor      := $00A4A400;
    end else
    if Pos('EMBARCADO',ANode.Values[DBGItemROM_STAV.Index]) > 0 then
    begin
      AFont.Color := clBlack;
      AColor      := $0080FFFF;
    end else
    if Pos('CANCELADO',ANode.Values[DBGItemROM_STAV.Index]) > 0 then
    begin
      AFont.Color := clWhite;
      AColor      := $000024B3;
    end;

    if (AColumn = DBGItemROM_CTNR) and (ANode.Values[DBGItemROM_CTNR.Index] <> EmptyStr) then
    begin
      AColor := clGray;
      AFont.Color := clWhite;
    end;

    if (AColumn = DBGItemITEM) or (AColumn = DBGItemROM_STAV) then
    begin
      AColor      := $00F4F4F4;
      //AFont.Color := clWindowText;
    end;
  end;
end;

procedure Tfrmctr_prc.siRELClick(Sender: TObject);
begin
  inherited;
  frmrelatorio_geral := TFrmrelatorio_geral.Create(Self);
  try
    frmrelatorio_geral.CDPD                 := CadastroIDPK.AsString;
    frmrelatorio_geral.CDRO                 := EmptyStr;
    frmrelatorio_geral.CDBX                 := IntToStr(CadastroBXD_IDPK.AsInteger);
    frmrelatorio_geral.CDNF                 := EmptyStr;
    frmrelatorio_geral.tsVEN_PRC.TabVisible := True;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsVEN_PRC;

    with SQLConsulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   FOR_FANT');
      SQL.Add('FROM     CAD_FOR,'+SLPrincipal.Values['ped_com_cab']+' "PED_COM_CAB"');
      SQL.Add('WHERE    PED_COM_CAB.CD_ID = CAD_FOR.ID');
      SQL.Add('GROUP BY FOR_FANT');
      SQL.Add('ORDER BY FOR_FANT');
      ExecQuery;
      while not eof do
      begin
        frmrelatorio_geral.cbVEN_PRC_DFOR.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   USU_DUSU');
      SQL.Add('FROM     CAD_USU,'+SLPrincipal.Values['ped_com_cab']+' "PED_COM_CAB"');
      SQL.Add('WHERE    PED_COM_CAB.CD_ID = CAD_USU.USU_CUSU');
      SQL.Add('GROUP BY USU_DUSU');
      SQL.Add('ORDER BY USU_DUSU');
      ExecQuery;
      while not eof do
      begin
        frmrelatorio_geral.cbVEN_PRC_DUSU.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   DEST');
      SQL.Add('FROM     '+SLPrincipal.Values['ped_com_cab']+' "PED_COM_CAB"');
      SQL.Add('GROUP BY DEST');
      SQL.Add('ORDER BY DEST');
      ExecQuery;
      while not eof do
      begin
        frmrelatorio_geral.cbVEN_PRC_STFI.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbVEN_PRC_STFI.Descriptions.Add(fields[0].AsString);
        next;
      end;
    end;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
  end;
end;

procedure Tfrmctr_prc.DTSCadastroStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure Tfrmctr_prc.AtualizarEstoque1Click(Sender: TObject);
begin
  { Ricardo - Não esquece de pesquisar antes por situação }

  if oYesNo(handle,'Atualizar Estoque ?') = mrNo then
  Abort;

  try
    FKCadastro.DisableControls;
    Cadastro.First;

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_PRC');
      SQL.Add('WHERE  IDEP = ''' + CadastroEP_ID.AsString + '''');
      SQL.Add('AND    IDPK = ''' + CadastroIDPK.AsString  + '''');
      ExecQuery;

      TConsulta.CommitRetaining;
    end;

    while not Cadastro.Eof do
    begin
      if Pos(LeftStr(CadastroDEST.AsString,3),'PENEMB') > 0 then
      begin
        FKCadastro.First;
        while not FKCadastro.Eof do
        begin
          if Pos(LeftStr(FKCadastroROM_STAV.AsString,3),'PENEMB') > 0 then
          begin
            SPEdicao.StoredProcName := 'SP_CAD_PRO_PRC';
            SPEdicao.Prepare;
            SPEdicao.ParamByName('AIDEP').Value := CadastroEP_ID.AsInteger;
            SPEdicao.ParamByName('ACDFK').Value := CadastroIDPK.AsInteger;
            SPEdicao.ParamByName('ADEFK').Value := CadastroDEPK.AsString;
            SPEdicao.ParamByName('ADTFK').Value := FKCadastroROM_DROM.AsDateTime;
            SPEdicao.ParamByName('ADTPC').Value := IFThen(FKCadastroROM_DBAI.AsDateTime > 0,FKCadastroROM_DBAI.AsDateTime,FKCadastroROM_DEXP.AsDateTime);
            SPEdicao.ParamByName('ADTRD').Value := IFThen(FKCadastroROM_RDES.AsDateTime > 0,FKCadastroROM_RDES.AsDateTime,FKCadastroROM_DDES.AsDateTime);
            SPEdicao.ParamByName('AIDCF').Value := cadastroCD_ID.AsInteger;
            SPEdicao.ParamByName('ADECF').Value := CadastroCD_NO.AsString;
            SPEdicao.ParamByName('AIDCO').Value := CadastroCV_ID.AsInteger;
            SPEdicao.ParamByName('ADECO').Value := CadastroCV_NO.AsString;
            SPEdicao.ParamByName('AIDCP').Value := FKCadastroIDCP.AsInteger;
            SPEdicao.ParamByName('AQTDE').Value := IFThen(FKCadastroROM_QTPD.AsFloat   > 0,FKCadastroROM_QTPD.AsFloat  ,FKCadastroROM_QTDE.AsFloat);
            SPEdicao.ParamByName('AQTRL').Value := IFThen(FKCadastroROM_RLPD.AsInteger > 0,FKCadastroROM_RLPD.AsInteger,FKCadastroROM_QTRL.AsInteger);
            SPEdicao.ParamByName('AVUPC').Value := FKCadastroROM_UNIT.AsFloat;
            SPEdicao.ParamByName('ACTNR').Value := FKCadastroROM_CTNR.AsString;
            SPEdicao.ParamByName('ASTFI').Value := FKCadastroROM_STAV.AsString;
            SPEdicao.ParamByName('DECP' ).Value := FKCadastroDECP.AsString;
            SPEdicao.ParamByName('DGCP' ).Value := FKCadastroDGCP.AsString;
            SPEdicao.ExecProc;
          end;
          
          FKCadastro.Next;
        end;
      end;

      Cadastro.Next;
    end;
  finally
    FKCadastro.EnableControls;
    oRTransact(TConsulta);
  end;

  oAviso(handle,'Estoque atualizado com sucesso !');
end;

procedure Tfrmctr_prc.CadastroBeforeOpen(DataSet: TDataSet);
begin
  DBGConsultaTPD_NO.Visible     := False;
  DBGConsultaTCO_NO_PRZ.Visible := False;
  DBGConsultaCR_NO.Visible      := False;
  DBGConsultaC_TSDE.Visible     := False;
  DBGConsultaVDSC.Visible       := False;
end;

procedure Tfrmctr_prc.CadastroAfterScroll(DataSet: TDataSet);
begin
  if CadastroTPD_NO.AsString <> 'COMPRAS' then
  DBGConsultaTPD_NO.Visible := True;

  if (Pos('SEM',CadastroTCO_NO_PRZ.AsString) = 0) and (Pos('VISTA',CadastroTCO_NO_PRZ.AsString) = 0) then
  DBGConsultaTCO_NO_PRZ.Visible := True;

  if CadastroCR_NO.AsString <> RECParametros.CR_NO then
  DBGConsultaCR_NO.Visible := True;

  if CadastroTSDE.AsFloat <> CadastroTCDE.AsFloat then
  begin
    DBGConsultaC_TSDE.Visible := True;
    DBGConsultaVDSC.Visible   := True;
  end;
end;

procedure Tfrmctr_prc.CadastroCalcFields(DataSet: TDataSet);
begin
  CadastroC_TSDE.Value := FormatFloat(FKCadastroVPRC_ORIG.AsString + ' ,##,0.00#',CadastroTSDE.AsFloat);
  CadastroC_TCDE.Value := FormatFloat(FKCadastroVPRC_ORIG.AsString + ' ,##,0.00#',CadastroTCDE.AsFloat);
end;

procedure Tfrmctr_prc.FINALIZA;
var
  BRet: Boolean;
  AQTDE,
  AQTSP: Double;

  AQTRL,
  ARLSP: Integer;

begin
  AQTDE := 0;
  AQTRL := 0;

  AQTSP := 0;
  ARLSP := 0;

  BRet := False;
  if oYesNo(handle,'Confirma a finalização do Pedido No.: '+cadastroDEPK.AsString+' ?') = mrno then
  Abort;

  FKCadastro.First;
  while not FKCadastro.Eof do
  begin
    if FKCadastroROM_DBAI.AsDateTime > 0 then
    begin
      BRet := True;
      Break;
    end;

    FKCadastro.Next;
  end;

  if not BRet then
  oException(Nil,'Finalização Negada !' + #13 +
                 'Data(s) de Chegda(s) não Informada(s) !');

  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_PRC');
      SQL.Add('WHERE  IDEP = ''' + CadastroEP_ID.AsString + '''');
      SQL.Add('AND    IDPK = ''' + CadastroIDPK.AsString  + '''');
      ExecQuery;
    end;

    FKCadastro.First;
    while not FKCadastro.Eof do
    begin
      AQTDE := AQTDE + FKCadastroROM_QTDE.AsFloat;
      AQTRL := AQTRL + FKCadastroROM_QTRL.AsInteger;

      if   FKCadastroROM_DBAI.AsDateTime > 0 then
      begin
        AQTSP := AQTSP + IFThen(FKCadastroROM_QTPD.AsFloat   > 0,FKCadastroROM_QTPD.AsFloat  ,FKCadastroROM_QTDE.AsFloat);
        ARLSP := ARLSP + IFThen(FKCadastroROM_RLPD.AsInteger > 0,FKCadastroROM_RLPD.AsInteger,FKCadastroROM_QTRL.AsInteger);
      end else BRet := False;

      FKCadastro.Next;
    end;

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE ' + oREPZero('PED_COM_CAB','_',RECParametros.EP_ID,3));
      SQL.Add('SET IDCA = ''' + RECUsuarios.ID + ''',');

      SQL.Add('ROM_STFI = ''' + IFThen(BRet,'FINALIZADO','FINALIZADO PARCIAL') + ''',');
      SQL.Add('ROM_OBSE = ''' + CadastroINFADCAD.AsString + #13 + #13 +
                          'Pedido ' + IFThen(BRet,'Finalizado','Finalizad Parcialmente') + ': ' + RECUsuarios.Login + ' ' + FormatDateTime('dd.mm.yy hh:mm',Now) + ' ' + RECParametros.HOST + ''',');


      SQL.Add('ROM_QTVE = ''' + oStrTran(FLOATTOSTR(AQTDE),',','.') + ''',');
      SQL.Add('ROM_QTPD = ''' + oStrTran(FLOATTOSTR(AQTSP),',','.') + ''',');

      SQL.Add('ROM_RLVE = ''' + INTTOSTR(AQTRL) + ''',');
      SQL.Add('ROM_RLPD = ''' + INTTOSTR(ARLSP) + '''' );


      SQL.Add('WHERE IDPK = ''' + CadastroIDPK.AsString + '''');
      ExecQuery;

      oCTransact(TEdicao);
      oAviso(Application.Handle,'Pedido finalizado com sucesso !');
    end;  
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(Nil,'Falha ao tentar finalizar pedido !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: ' + E.Message);
    end;
  end;

  ACTEveExecute.Execute;
end;

procedure Tfrmctr_prc.REABRE;
begin
  if oYesNo(handle,'Confirma a reabertura do Pedido No.: '+cadastroDEPK.AsString+' ?') = mrno then
  Abort;

  try
    oOTransact(TEdicao);

    with SQLEdicao do
    begin
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_com_ite']);
      SQL.Add('SET   ROM_DBAI = NULL,');
      SQL.Add('      ROM_STAV = ''PENDENTE''');
      SQL.Add('WHERE ROM_CCAB = '''+CadastroIDPK.AsString+'''');
      ExecQuery;

      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_PRC');
      SQL.Add('WHERE  IDEP = '''+CadastroEP_ID.AsString+'''');
      SQL.Add('AND    IDPK = '''+CadastroIDPK.AsString  +'''');
      ExecQuery;
    end;

    FKCadastro.First;
    while not FKCadastro.Eof do
    begin
      SPEdicao.StoredProcName := 'SP_CAD_PRO_PRC';
      SPEdicao.Prepare;
      SPEdicao.ParamByName('AIDEP').Value := CadastroEP_ID.AsInteger;
      SPEdicao.ParamByName('ACDFK').Value := CadastroIDPK.AsInteger;
      SPEdicao.ParamByName('ADEFK').Value := CadastroDEPK.AsString;
      SPEdicao.ParamByName('ADTFK').Value := FKCadastroROM_DROM.AsDateTime;
      SPEdicao.ParamByName('ADTPC').Value := IFThen(FKCadastroROM_DBAI.AsDateTime > 0,FKCadastroROM_DBAI.AsDateTime,FKCadastroROM_DEXP.AsDateTime);
      SPEdicao.ParamByName('ADTRD').Value := IFThen(FKCadastroROM_RDES.AsDateTime > 0,FKCadastroROM_RDES.AsDateTime,FKCadastroROM_DDES.AsDateTime);
      SPEdicao.ParamByName('AIDCF').Value := cadastroCD_ID.AsInteger;
      SPEdicao.ParamByName('ADECF').Value := CadastroCD_NO.AsString;
      SPEdicao.ParamByName('AIDCO').Value := CadastroCV_ID.AsInteger;
      SPEdicao.ParamByName('ADECO').Value := CadastroTCO_NO_PRZ.AsString;
      SPEdicao.ParamByName('AIDCP').Value := FKCadastroIDCP.AsInteger;
      SPEdicao.ParamByName('AQTDE').Value := IFThen(FKCadastroROM_QTPD.AsFloat > 0,FKCadastroROM_QTPD.AsFloat,FKCadastroROM_QTDE.AsFloat);
      SPEdicao.ParamByName('AQTRL').Value := IFThen(FKCadastroROM_RLPD.AsInteger  > 0,FKCadastroROM_RLPD.AsInteger ,FKCadastroROM_QTRL.AsInteger);
      SPEdicao.ParamByName('AVUPC').Value := FKCadastroROM_UNIT.AsFloat;
      SPEdicao.ParamByName('ACTNR').Value := FKCadastroROM_CTNR.AsString;
      SPEdicao.ParamByName('ASTFI').Value := FKCadastroROM_STAV.AsString;
      SPEdicao.ParamByName('DECP' ).Value := FKCadastroDECP.AsString;
      SPEdicao.ParamByName('DGCP' ).Value := FKCadastroDGCP.AsString;
      SPEdicao.ExecProc;

      FKCadastro.Next;
    end;

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE ' + oREPZero('PED_COM_CAB','_',RECParametros.EP_ID,3));
      SQL.Add('SET IDCA = ''' + RECUsuarios.ID + ''',');

      SQL.Add('ROM_STFI = ''PENDENTE'',');
      SQL.Add('ROM_OBSE = ''' + CadastroINFADCAD.AsString + #13 + #13 +
                          'Pedido Re-Aberto: ' + RECUsuarios.Login + ' ' + FormatDateTime('dd.mm.yy hh:mm',Now) + ' ' + RECParametros.HOST + '''');

      SQL.Add('WHERE IDPK = ''' + CadastroIDPK.AsString + '''');
      ExecQuery;

      oCTransact(TEdicao);
      oAviso(Application.Handle,'Pedido re-aberto com sucesso !');
    end;  
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(Nil,'Falha ao tentar finalizar pedido !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: ' + E.Message);
    end;
  end;

  ACTEveExecute.Execute;
end;

end.
