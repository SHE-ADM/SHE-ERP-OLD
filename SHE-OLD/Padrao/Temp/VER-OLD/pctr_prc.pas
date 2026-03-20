unit pctr_prc;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, DB, IBStoredProc, IBEvents,
  IBDatabase, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ComCtrls, ExtCtrls, DBCtrls, dxPageControl, dxEditor, dxEdLib,
  StdCtrls, dxDBTLCl, dxGrClms, DateUtils, dxExEdtr, jpeg, Menus, Shellapi,
  Math, StrUtils, dxDBELib, rxSpeedbar, IBSQL, pPadr2, ActnList, dxBar,
  dxDockControl, dxDockPanel;

type
  Tfrmctr_prc = class(Tfrmpadr2)
    siARO: TSpeedItem;
    siCRO: TSpeedItem;
    rom_ite: TIBQuery;
    dtsrom_ite: TDataSource;
    Label23: TLabel;
    aux: TIBQuery;
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
    CadastroID: TIntegerField;
    CadastroIDEP: TSmallintField;
    CadastroDEEP: TIBStringField;
    CadastroROM_DERO: TIBStringField;
    CadastroROM_CTNR: TIBStringField;
    CadastroROM_DROM: TDateField;
    CadastroROM_DEXP: TDateField;
    CadastroROM_DCAN: TDateField;
    CadastroROM_CDCX: TIntegerField;
    CadastroROM_CDBX: TIntegerField;
    CadastroROM_DBAI: TDateField;
    CadastroROM_CFOR: TIntegerField;
    CadastroDECF: TIBStringField;
    CadastroFOR_CNPJ: TIBStringField;
    CadastroROM_CCOM: TIntegerField;
    CadastroDECC: TIBStringField;
    CadastroROM_CREP: TIntegerField;
    CadastroDECR: TIBStringField;
    CadastroROM_TSDE: TIBBCDField;
    CadastroROM_PDSC: TIBBCDField;
    CadastroROM_TDSC: TIBStringField;
    CadastroROM_TCDE: TIBBCDField;
    CadastroROM_CTRA: TIntegerField;
    CadastroROM_DTRA: TIBStringField;
    CadastroROM_MFRT: TSmallintField;
    CadastroROM_VFRT: TIBBCDField;
    CadastroROM_PSBR: TIBBCDField;
    CadastroROM_PSLQ: TIBBCDField;
    CadastroROM_STPD: TIBStringField;
    CadastroROM_STCO: TIBStringField;
    CadastroROM_CONC: TSmallintField;
    CadastroROM_CPAG: TIntegerField;
    CadastroDEPG: TIBStringField;
    CadastroROM_STFI: TIBStringField;
    CadastroROM_OBSE: TMemoField;
    DBGConsultaDEEP: TdxDBGridMaskColumn;
    DBGConsultaROM_DERO: TdxDBGridMaskColumn;
    DBGConsultaROM_DROM: TdxDBGridDateColumn;
    DBGConsultaDECF: TdxDBGridMaskColumn;
    DBGConsultaDECC: TdxDBGridMaskColumn;
    DBGConsultaDECR: TdxDBGridMaskColumn;
    DBGConsultaROM_TSDE: TdxDBGridMaskColumn;
    DBGConsultaROM_PDSC: TdxDBGridMaskColumn;
    DBGConsultaROM_TCDE: TdxDBGridMaskColumn;
    DBGConsultaROM_DTRA: TdxDBGridMaskColumn;
    DBGConsultaROM_PSBR: TdxDBGridMaskColumn;
    DBGConsultaROM_PSLQ: TdxDBGridMaskColumn;
    DBGConsultaROM_STPD: TdxDBGridMaskColumn;
    DBGConsultaROM_STCO: TdxDBGridMaskColumn;
    DBGConsultaDEPG: TdxDBGridMaskColumn;
    DBGConsultaROM_STFI: TdxDBGridMaskColumn;
    CadastroQTDE: TIBBCDField;
    CadastroQTRL: TIntegerField;
    CadastroQTSP: TIBBCDField;
    CadastroRLSP: TIntegerField;
    rom_iteID: TIntegerField;
    rom_iteIDEP: TSmallintField;
    rom_iteIDPK: TLargeintField;
    rom_iteIDFK: TLargeintField;
    rom_iteROM_CTNR: TIBStringField;
    rom_iteROM_CDNF: TIntegerField;
    rom_iteITEM: TIntegerField;
    rom_iteIDCP: TIntegerField;
    rom_iteIDAK: TLargeintField;
    rom_iteIDEK: TLargeintField;
    rom_iteCP_IDEP: TSmallintField;
    rom_iteCP_DEEP: TIBStringField;
    rom_iteARTIGO: TIBStringField;
    rom_iteSKU: TIBStringField;
    rom_iteDECP: TIBStringField;
    rom_iteDGCP: TIBStringField;
    rom_iteDECOL: TIBStringField;
    rom_iteROM_DUNI: TIBStringField;
    rom_iteROM_QTDE: TIBBCDField;
    rom_iteROM_QTRL: TIntegerField;
    rom_iteROM_QTPD: TIBBCDField;
    rom_iteROM_RLPD: TIntegerField;
    rom_iteROM_PREC: TFloatField;
    rom_iteROM_UNIT: TFloatField;
    rom_iteROM_TOTA: TIBBCDField;
    rom_iteROM_DROM: TDateField;
    rom_iteROM_DPRD: TDateField;
    rom_iteROM_RPRD: TDateField;
    rom_iteROM_DEMB: TDateField;
    rom_iteROM_REMB: TDateField;
    rom_iteROM_DDES: TDateField;
    rom_iteROM_RDES: TDateField;
    rom_iteROM_DEXP: TDateField;
    rom_iteROM_DBAI: TDateField;
    rom_iteROM_NFCI: TIBStringField;
    rom_iteROM_STAV: TIBStringField;
    rom_iteIDCOL: TSmallintField;
    rom_iteROM_CDPD: TIntegerField;
    rom_iteROM_QPRD: TSmallintField;
    rom_iteROM_QEMB: TSmallintField;
    rom_iteROM_QDES: TSmallintField;
    rom_iteROM_QEXP: TSmallintField;
    DBGConsultaROM_CTNR: TdxDBGridMaskColumn;
    CadastroCDEP: TIntegerField;
    CadastroRZCF: TIBStringField;
    rom_itePSBR: TIBBCDField;
    rom_itePSLQ: TIBBCDField;
    DBGItemPSBR: TdxDBGridMaskColumn;
    DBGItemPSLQ: TdxDBGridMaskColumn;
    PNLINFADCAD: TPanel;
    DBINFADCAD: TdxDBMemo;
    PopupMenu1: TPopupMenu;
    AtualizarCompras1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure siAROClick(Sender: TObject);
    procedure dtscadastroDataChange(Sender: TObject; Field: TField);
    procedure cadastroAfterOpen(DataSet: TDataSet);
    procedure siPSQClick(Sender: TObject);
    procedure dtsrom_iteDataChange(Sender: TObject; Field: TField);
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
    procedure rom_iteAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AtualizarCompras1Click(Sender: TObject);
  private
    { Private declarations }
     procedure FINALIZA;
     procedure REABRE;
  public
    { Public declarations }
  end;

var
  frmctr_prc: Tfrmctr_prc;

implementation

uses uPrincipal, bPrincipal,
  ppesquisa_geral, pven_prc, prelatorio_geral;

{$R *.dfm}

procedure Tfrmctr_prc.FormCreate(Sender: TObject);
begin
  oIREC_SHE_DEF(REC_SHE_DEF);
  REC_SHE_DEF.FB_Event    := 'PED_CPA'; { Eventos }
  REC_SHE_DEF.FForceCaixa := False; { Caixa }

  { Grant }
  REC_SHE_DEF.GDescricao  := 'Pedidos';
  REC_SHE_DEF.GReferencia := 'Compras';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;

  { Acessos }
  SINovo.Enabled := (REC_SHE_DEF.GAppend);
  SIREL.Enabled  := (REC_SHE_DEF.GPrint );
  
  with Cadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.* FROM VW_PED_COM_TMP AS PK');
    SQL.Add('WHERE  PK.IDEP = '''+RECParametros.Id+'''');
    SQL.Add('ORDER BY PK.ID DESC');

    Prepare;
    Open;
  end;
end;

procedure Tfrmctr_prc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try

  {$IF DEFINED(DEF_PCP) OR DEFINED(DEF_CPA)}
     {$ELSE}

     uRepaintMainForm(TForm(Self));

     {$IFEND} ;

  finally inherited;
  end;
end;

procedure Tfrmctr_prc.FormDestroy(Sender: TObject);
begin
  inherited;
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
        SQL.Add('SELECT PK.* FROM VW_PED_COM_TMP AS PK');
        SQL.Add('WHERE (PK.IDEP = '''+RECParametros.Id+''' '+IFThen(RECParametros.Id = 1,'OR PK.IDEP = ''6''','')+')');

        if EDTXT.Text <> EmptyStr then
           SQL.Add('AND '+CField+' LIKE '''+EDTXT.Text+'%''');

        if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
            SQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

        SQL.Add('ORDER BY PK.ID');
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
  siARO.Tag := 0;
  if Assigned(frmven_prc) then
  begin
    frmven_prc.BringToFront;
    frmven_prc.SetFocus;
  end else
  begin
    bExecEvent('Caixa',lwShowWarning);
    uFrmCreate(Nil,Tfrmven_prc,frmven_prc);
  end;
end;

procedure Tfrmctr_prc.siAROClick(Sender: TObject);
begin
  siARO.Tag  := 1;
  uFrmCreate(Nil,Tfrmven_prc,frmven_prc);
end;

procedure Tfrmctr_prc.siCROClick(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
 {}
end;

procedure Tfrmctr_prc.siBROClick(Sender: TObject);
begin
{  if uppercase(siBRO.BtnCaption) = 'FINALIZAR' then
     FINALIZA
  else}
     REABRE;
end;

procedure Tfrmctr_prc.CadastroBeforeScroll(DataSet: TDataSet);
begin
  DBGItemDGCP.Visible     := False;
  DBGItemDECOL.Visible    := False;
  DBGItemROM_CDNF.Visible := False;
  DBGItemROM_CTNR.Visible := False;
  DBGItemROM_NFCI.Visible := False;
end;

procedure Tfrmctr_prc.rom_iteAfterScroll(DataSet: TDataSet);
begin
  if rom_iteDGCP.AsString <> EmptyStr then
     DBGItemDGCP.Visible := True;

  if rom_iteDECOL.AsString <> EmptyStr then
     DBGItemDECOL.Visible := True;

  if rom_iteROM_CDNF.AsInteger > 0 then
     DBGItemROM_CDNF.Visible := True;

  if rom_iteROM_CTNR.AsString <> EmptyStr then
     DBGItemROM_CTNR.Visible := True;

  if rom_iteROM_NFCI.AsString <> EmptyStr then
     DBGItemROM_NFCI.Visible := True;
end;

procedure Tfrmctr_prc.dtscadastroDataChange(Sender: TObject;
  Field: TField);
var
  PosCount: Word;
begin
  DBGConsultaROM_PDSC.Visible := (CadastroROM_PDSC.AsFloat   > 0);
  DBGConsultaROM_CTNR.Visible := (CadastroROM_CTNR.AsString <> EmptyStr);

  siARO.Enabled  := (REC_SHE_DEF.GEdit  ) and (CadastroROM_STFI.AsString <> 'CANCELADO') and (CadastroROM_STFI.AsString <> 'FINALIZADO');
  siCRO.Enabled  := (REC_SHE_DEF.GCancel) and (CadastroROM_STFI.AsString <> 'CANCELADO');
  siBRO.Enabled  := (REC_SHE_DEF.GEdit  ) and (CadastroROM_STFI.AsString <> 'CANCELADO');

  if (CadastroROM_STFI.AsString  = 'PENDENTE') or (CadastroROM_STFI.AsString  = 'EMBARCADO') then
  begin
    siBRO.ImageIndex := 12;
    siBRO.BtnCaption := 'Finalizar';
  end else if Pos('FIN',CadastroROM_STFI.AsString) > 0 then
  begin
    siBRO.ImageIndex := 14;
    siBRO.BtnCaption := 'Re-abrir';
  end;

  { Informações Adicionais }
            PosCount := oPosCount(''#$D'',CadastroROM_OBSE.AsString);
  PNLINFADCAD.Height := IFThen((PosCount = 00) and (CadastroROM_OBSE.AsString =  EmptyStr) ,00,
                        IFThen((PosCount = 00) and (CadastroROM_OBSE.AsString <> EmptyStr) ,30,
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

  DBGConsulta.ApplyBestFit(DBGConsultaDECF);
  DBGConsulta.ApplyBestFit(DBGConsultaDEEP);

  if RECParametros.Id <> CadastroCDEP.AsInteger then
  begin
    siARO.Enabled := False;
    siCRO.Enabled := False;
    siBRO.Enabled := False;
  end;
end;

procedure Tfrmctr_prc.cadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not rom_ite.Active then
         rom_ite.Open;
end;

procedure Tfrmctr_prc.dtsrom_iteDataChange(Sender: TObject; Field: TField);
begin
  DBGItemROM_CDNF.Visible := (rom_iteROM_CDNF.AsInteger > 0);
  DBGItemROM_CTNR.Visible := (rom_iteROM_CTNR.AsString <> EmptyStr);

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
    if Pos('FINALIZADO',ANode.Values[DBGConsultaROM_STFI.Index]) > 0 then
    begin
      AFont.Color := clwhite;
      AColor      := $00A4A400;
    end else
    if Pos('EMBARCADO',ANode.Values[DBGConsultaROM_STFI.Index]) > 0 then
    begin
      AFont.Color := clBlack;
      AColor      := $0080FFFF;
    end else
    if Pos('CANCELADO',ANode.Values[DBGConsultaROM_STFI.Index]) > 0 then
    begin
      AFont.Color := clWhite;
      AColor      := $000024B3;
    end;

    if (AColumn = DBGConsultaROM_DERO) or (AColumn = DBGConsultaROM_TCDE) then
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
  end;
end;

procedure Tfrmctr_prc.siRELClick(Sender: TObject);
begin
  inherited;
  {}
end;

procedure Tfrmctr_prc.FINALIZA;
var
  BRet: boolean;
begin
  BRet := False;
  try
    if oYesNo(handle,'Confirma a finalização do Pedido No.: '+cadastroROM_DERO.AsString+' ?') = mrno then
       Abort;

    rom_ite.First;
    while not rom_ite.Eof do
    begin
      if rom_iteROM_DBAI.AsDateTime > 0 then
      begin
        BRet := True;
        Break;
      end;
      rom_ite.Next;
    end;

    if not BRet then
       raise exception.Create('Finalização negada !'+#13+'Data(s) de Chegda(s) não Informada(s) !');

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_PRC');
      SQL.Add('WHERE  IDEP = '''+cadastroIDEP.AsString+'''');
      SQL.Add('AND    IDPK = '''+cadastroID.AsString  +'''');
      ExecQuery;
    end;

    rom_ite.First;
    rom_ite.DisableControls;
    while not rom_ite.Eof do
    begin
      if rom_iteROM_DBAI.AsDateTime > 0 then
      with SQLEdicao do
      begin
        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['ped_com_ite']);
        SQL.Add('SET    ROM_DBAI = '''+formatDateTime('mm/dd/yy',rom_iteROM_DBAI.AsDateTime)+''',');
        if rom_iteROM_QTPD.AsFloat > 0 then
        SQL.Add('ROM_QTPD = '''+oStrTran(rom_iteROM_QTPD.AsString,',','.')+'''') else
        SQL.Add('ROM_QTPD = '''+oStrTran(rom_iteROM_QTDE.AsString,',','.')+'''');
        SQL.Add('WHERE ID = '''+rom_iteID.AsString+'''');
        ExecQuery;
      end else BRet := False;

      rom_ite.Next;
    end;

    { Baixa Estoque }
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE   ESTOQUE');
      SQL.Add('SET      ECO_RECO = ''A''');
      SQL.Add('WHERE    IDCP = (');
      SQL.Add('SELECT   ROM_CPRO FROM '+SLPrincipal.Values['ped_com_ite']);
      SQL.Add('WHERE    ROM_CCAB   = '''+CadastroId.AsString+'''');
      SQL.Add('AND      IDCP = ROM_CPRO');
      SQL.Add('GROUP BY 1)');
      ExecQuery;
    end;

    Cadastro.Edit;
    CadastroROM_STFI.Value := IFThen(BRet,'FINALIZADO','FINALIZADO PARCIAL');
    Cadastro.Post;
  finally
    rom_ite.EnableControls;
  end;
end;

procedure Tfrmctr_prc.REABRE;
begin
  if oYesNo(handle,'Confirma a re-abertura ?' + #13 +
                   'Pedido Nº ' + CadastroROM_DERO.AsString + '.') = mrno then
  Abort;

  try
    oLockWindowUpdate(rom_ite);
    oOTransact(TEdicao);

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_PRC');
      SQL.Add('WHERE  IDPK = ''' + cadastroID.AsString   + '''');
      SQL.Add('AND    IDEP = ''' + cadastroIDEP.AsString + '''');
      ExecQuery;
    end;

    rom_ite.First;
    while not rom_ite.Eof do
    begin
      SPEdicao.Close;
      SPEdicao.StoredProcName := 'SP_CAD_PRO_PRC';
      SPEdicao.Prepare;

      SPEdicao.ParamByName('AIDEP').Value := cadastroIDEP.AsInteger;
      SPEdicao.ParamByName('ACDFK').Value := CadastroId.AsInteger;
      SPEdicao.ParamByName('ADEFK').Value := CadastroROM_DERO.AsString;
      SPEdicao.ParamByName('ADTFK').Value := rom_iteROM_DROM.AsDateTime;
      SPEdicao.ParamByName('ADTPC').Value := IFThen(rom_iteROM_DBAI.AsDateTime > 0,rom_iteROM_DBAI.AsDateTime,rom_iteROM_DEXP.AsDateTime);
      SPEdicao.ParamByName('ADTRD').Value := IFThen(rom_iteROM_RDES.AsDateTime > 0,rom_iteROM_RDES.AsDateTime,rom_iteROM_DDES.AsDateTime);
      SPEdicao.ParamByName('AIDCF').Value := cadastroROM_CFOR.AsInteger;
      SPEdicao.ParamByName('ADECF').Value := cadastroDECF.AsString;
      SPEdicao.ParamByName('AIDCO').Value := cadastroROM_CCOM.AsInteger;
      SPEdicao.ParamByName('ADECO').Value := CadastroDECC.AsString;
      SPEdicao.ParamByName('AIDCP').Value := rom_iteIDCP.AsInteger;
      SPEdicao.ParamByName('AQTDE').Value := IFThen(rom_iteROM_QTPD.AsFloat > 0,rom_iteROM_QTPD.AsFloat,rom_iteROM_QTDE.AsFloat);
      SPEdicao.ParamByName('AQTRL').Value := IFThen(rom_iteROM_RLPD.AsInteger  > 0,rom_iteROM_RLPD.AsInteger ,rom_iteROM_QTRL.AsInteger);
      SPEdicao.ParamByName('AVUPC').Value := rom_iteROM_UNIT.AsFloat;
      SPEdicao.ParamByName('ACTNR').Value := rom_iteROM_CTNR.AsString;
      SPEdicao.ParamByName('ASTFI').Value := 'PENDENTE';
      SPEdicao.ParamByName('DECP' ).Value := rom_iteDECP.AsString;
      SPEdicao.ParamByName('DGCP' ).Value := rom_iteDGCP.AsString;
      SPEdicao.ExecProc;

      rom_ite.Next;
    end;

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE ' + oREPZero('PED_COM_CAB','_',RECParametros.Id,3));

      SQL.Add('SET   ROM_DBAI = NULL,');
      SQL.Add('      ROM_STFI = ''PENDENTE''');

      SQL.Add('WHERE IDPK = ''' + CadastroID.AsString + '''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE ' + oREPZero('PED_COM_ITE','_',RECParametros.Id,3));

      SQL.Add('SET   ROM_DBAI = NULL,');
      SQL.Add('      ROM_STAV = ''PENDENTE''');

      SQL.Add('WHERE IDPK = ''' + CadastroID.AsString + '''');
      ExecQuery;
    end;

    oCTransact(TEdicao);
    oAviso(Self.handle,'Pedido Nº ' + CadastroROM_DERO.AsString + ' re-aberto com sucesso !');

    //ACTExecEvent.Tag := PedidosIDCV.AsInteger;
    ACTExecEvent.Execute;
  except
    on E: Exception do
    begin
      oRefresh(Cadastro,False);
      oException(Nil,'Falha ao tentar liberar separação !' + #13 +
                     'Favor entrar em contato com o suporte técnico.' + #13 + #13 +
                      E.Message + '.');
    end;
  end;
end;

procedure Tfrmctr_prc.AtualizarCompras1Click(Sender: TObject);
begin
  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.IDEP,');
      SQL.Add('       PK.ID AS CDFK,PK.ROM_DERO AS DEFK,FK.ROM_DROM AS DTFK,');
      SQL.Add('       IIF(FK.ROM_DBAI IS NOT NULL,FK.ROM_DBAI,FK.ROM_DEXP) AS DTPC,');
      SQL.Add('       IIF(FK.ROM_DBAI IS NOT NULL,FK.ROM_DBAI,FK.ROM_DEXP) AS DTRD,');
      SQL.Add('       PK.ROM_CFOR AS IDCF,CF.FANTASIA AS DECF,');
      SQL.Add('       PK.ROM_CCOM AS IDCO,CC.LOGIN    AS DECO,');
      SQL.Add('       FK.IDCP,IIF(FK.ROM_QTPD > 0,FK.ROM_QTPD,FK.ROM_QTDE) AS QTDE,');
      SQL.Add('       FK.IDCP,IIF(FK.ROM_RLPD > 0,FK.ROM_RLPD,FK.ROM_QTRL) AS QTRL,');
      SQL.Add('       FK.ROM_UNIT AS VUPC,FK.ROM_CTNR AS CTNR,');
      SQL.Add('       FK.ROM_STAV AS STFI,');
      SQL.Add('       FK.DECP,FK.DGCP');

      SQL.Add('FROM ' + oREPZero('PED_COM_CAB','_',RECParametros.Id,3) + ' AS PK');
      SQL.Add('JOIN   CAD_FOR     AS CF ON (CF.ID   = PK.ROM_CFOR)');
      SQL.Add('JOIN   TAB_USER    AS CC ON (CC.ID   = PK.ROM_CCOM)');
      SQL.Add('JOIN ' + oREPZero('PED_COM_ITE','_',RECParametros.Id,3) + ' AS FK ON (FK.IDPK = PK.IDPK)    ');

      SQL.Add('WHERE PK.DEST <> ''CANCELADO''' );
      SQL.Add('AND   FK.DEST <> ''FINALIZADO''');
      SQL.Add('AND   FK.DEST <> ''CANCELADO''' );

      SQL.Add('AND   FK.ROM_DEXP > ''01/01/24''');

      SQL.Add('AND NOT EXISTS (SELECT ID FROM CAD_PRO_PRC AS ES WHERE ES.IDEP = FK.IDEP AND ES.IDPK = FK.IDPK AND ES.IDCP = FK.IDCP)');
      ExecQuery;
    end;

    while not SQLEdicao.Eof do
    begin
      Self.Caption := SQLEdicao.Current.ByName('DEFK').AsString + ' - ' + DateToStr(SQLEdicao.Current.ByName('DTFK').AsDate);
      Application.ProcessMessages;

      SPEdicao.Close;
      SPEdicao.StoredProcName := 'SP_CAD_PRO_PRC';
      SPEdicao.Prepare;

      SPEdicao.ParamByName('AIDEP').Value := SQLEdicao.Current.ByName('IDEP').AsInteger;
      SPEdicao.ParamByName('ACDFK').Value := SQLEdicao.Current.ByName('CDFK').AsInteger;
      SPEdicao.ParamByName('ADEFK').Value := SQLEdicao.Current.ByName('DEFK').AsString;
      SPEdicao.ParamByName('ADTFK').Value := SQLEdicao.Current.ByName('DTFK').AsDateTime;
      SPEdicao.ParamByName('ADTPC').Value := SQLEdicao.Current.ByName('DTPC').AsDateTime;
      SPEdicao.ParamByName('ADTRD').Value := SQLEdicao.Current.ByName('DTRD').AsDateTime;
      SPEdicao.ParamByName('AIDCF').Value := SQLEdicao.Current.ByName('IDCF').AsInteger;
      SPEdicao.ParamByName('ADECF').Value := SQLEdicao.Current.ByName('DECF').AsString;
      SPEdicao.ParamByName('AIDCO').Value := SQLEdicao.Current.ByName('IDCO').AsInteger;
      SPEdicao.ParamByName('ADECO').Value := SQLEdicao.Current.ByName('DECO').AsString;
      SPEdicao.ParamByName('AIDCP').Value := SQLEdicao.Current.ByName('IDCP').AsInteger;
      SPEdicao.ParamByName('AQTDE').Value := SQLEdicao.Current.ByName('QTDE').AsFloat;
      SPEdicao.ParamByName('AQTRL').Value := SQLEdicao.Current.ByName('QTRL').AsInteger;
      SPEdicao.ParamByName('AVUPC').Value := SQLEdicao.Current.ByName('VUPC').AsFloat;
      SPEdicao.ParamByName('ACTNR').Value := SQLEdicao.Current.ByName('CTNR').AsString;
      SPEdicao.ParamByName('ASTFI').Value := SQLEdicao.Current.ByName('STFI').AsString;
      SPEdicao.ParamByName('DECP' ).Value := SQLEdicao.Current.ByName('DECP').AsString;
      SPEdicao.ParamByName('DGCP' ).Value := SQLEdicao.Current.ByName('DGCP').AsString;
      SPEdicao.ExecProc;

      SQLEdicao.Next;
    end;

  oCTransact(TEdicao);
  oAviso(handle,'Pedidos atualizados com sucesso !');
  except
  rom_ite.EnableControls;
  oCTransact(TEdicao,ltRollback);
  end;
end;

end.
