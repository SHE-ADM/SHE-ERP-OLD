unit pcad_tec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, IBEvents, IBStoredProc, IBDatabase,
  ImgList, DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, SpeedBar, ComCtrls, ExtCtrls, dxDBTLCl, dxGrClms, Buttons,
  DBCtrls, StdCtrls, dxPageControl, jpeg, dxExEdtr, dxEdLib, dxEditor, DateUtils,
  dxDBELib, QRCtrls, math, shellapi, Menus;

type
  Tfrmcad_tec = class(Tfrmpadr2)
    cadastroID: TIntegerField;
    cadastroPRO_CART: TIBStringField;
    cadastroPRO_CPRO: TIBStringField;
    cadastroPRO_DPRO: TIBStringField;
    cadastroPRO_FOTO: TBlobField;
    cadastroPRO_CBAR: TIBStringField;
    cadastroPRO_STA: TIBStringField;
    cadastroPRO_DCOR: TIBStringField;
    cadastroPRO_DGRP: TIBStringField;
    cadastroPRO_DCOL: TIBStringField;
    cadastroPRO_OBSE: TMemoField;
    cadastroPRO_PREC: TIBBCDField;
    dbgConsultaPRO_CPRO: TdxDBGridMaskColumn;
    dbgConsultaPRO_DPRO: TdxDBGridMaskColumn;
    dbgConsultaPRO_DGRP: TdxDBGridMaskColumn;
    dbgConsultaPRO_PREC: TdxDBGridMaskColumn;
    cadastroPRO_DUNI: TIBStringField;
    dbgConsultaPRO_DUNI: TdxDBGridMaskColumn;
    ImageOPC2: TImageList;
    cadastroPRO_CUST: TIBBCDField;
    cadastroPRO_PCOM: TIBBCDField;
    dbgConsultaPRO_DCOL: TdxDBGridMaskColumn;
    dbgConsultaPRO_DCOR: TdxDBGridMaskColumn;
    dbgConsultaPRO_CART: TdxDBGridMaskColumn;
    cadastroPRO_GRAD: TIBStringField;
    dbgConsultaPRO_GRAD: TdxDBGridMaskColumn;
    cadastroPRO_DCAD: TDateField;
    dbgConsultaPRO_DCAD: TdxDBGridDateColumn;
    cadastroPRO_DPRG: TDateField;
    cadastroPRO_DENT: TDateField;
    cadastroPRO_DULT: TDateField;
    dbgConsultaPRO_DPRG: TdxDBGridDateColumn;
    dbgConsultaPRO_DENT: TdxDBGridDateColumn;
    dbgConsultaPRO_DULT: TdxDBGridDateColumn;
    cadastroPRO_CDFO: TIntegerField;
    cadastroPRO_DCAT: TIBStringField;
    dbgConsultaPRO_DCAT: TdxDBGridMaskColumn;
    cadastroPRO_REPR: TIBStringField;
    GroupBox1: TGroupBox;
    cad_pro_est: TIBQuery;
    dtscad_pro_est: TDataSource;
    pnlfoto: TPanel;
    GroupBox2: TGroupBox;
    imag: TImage;
    cad_pro_estPRO_CPRO: TIBStringField;
    cad_pro_estPRO_QEST: TIBBCDField;
    cad_pro_estPRO_QRES: TIBBCDField;
    cad_pro_estPRO_QPRG: TIBBCDField;
    cad_pro_estPRO_QPRC: TIBBCDField;
    cad_pro_estPRO_QDEF: TIBBCDField;
    cad_pro_estPRO_QDIS: TCurrencyField;
    cad_pro_estPRO_RDIS: TIntegerField;
    pcEST: TdxPageControl;
    tsGER: TdxTabSheet;
    dbgger: TdxDBGrid;
    dbggerPRO_CPRO: TdxDBGridMaskColumn;
    dbggerPRO_DCOR: TdxDBGridMaskColumn;
    dbggerPRO_QRES: TdxDBGridMaskColumn;
    dbggerPRO_QDEF: TdxDBGridMaskColumn;
    dbggerPRO_QDIS: TdxDBGridColumn;
    cad_pro_estPRO_DCOR: TIBStringField;
    cad_pro_estPRO_DUNI: TIBStringField;
    cad_pro_estPRO_METR: TIBBCDField;
    cad_pro_estPRO_PESO: TIBBCDField;
    cad_pro_estPRO_PSCN: TIBBCDField;
    cad_pro_estPRO_REST: TIntegerField;
    cad_pro_estPRO_RRES: TIntegerField;
    cad_pro_estPRO_RPRG: TIntegerField;
    cad_pro_estPRO_RPRC: TIntegerField;
    cad_pro_estPRO_RDEF: TIntegerField;
    cadastroPRO_PCOR: TIBStringField;
    cadastroPRO_STAV: TIBStringField;
    cadastroSTAV: TStringField;
    dbgConsultaSTAV: TdxDBGridColumn;
    dbggerPRO_QPRG: TdxDBGridMaskColumn;
    cad_pro_estPRO_PDIS: TFloatField;
    dbggerPRO_PDIS: TdxDBGridColumn;
    dbgConsultaID: TdxDBGridMaskColumn;
    cad_pro_estPRO_PPRC: TCurrencyField;
    dbggerPRO_PPRC: TdxDBGridColumn;
    cad_pro_estPRO_QPRD: TIBBCDField;
    cad_pro_estPRO_QEST2: TIBBCDField;
    cad_pro_estPRO_REST2: TIntegerField;
    cad_pro_estPRO_QEST3: TIBBCDField;
    cad_pro_estPRO_REST3: TIntegerField;
    cad_pro_estPRO_QEST4: TIBBCDField;
    cad_pro_estPRO_REST4: TIntegerField;
    cad_pro_estPRO_QEST5: TIBBCDField;
    cad_pro_estPRO_REST5: TIntegerField;
    cad_pro_estPRO_QEST6: TIBBCDField;
    cad_pro_estPRO_REST6: TIntegerField;
    cad_pro_estPRO_QRES2: TIBBCDField;
    cad_pro_estPRO_RRES2: TIntegerField;
    cad_pro_estPRO_QRES3: TIBBCDField;
    cad_pro_estPRO_RRES3: TIntegerField;
    cad_pro_estPRO_QRES4: TIBBCDField;
    cad_pro_estPRO_RRES4: TIntegerField;
    cad_pro_estPRO_QRES5: TIBBCDField;
    cad_pro_estPRO_RRES5: TIntegerField;
    cad_pro_estPRO_QRES6: TIBBCDField;
    cad_pro_estPRO_RRES6: TIntegerField;
    dbggerPRO_RRES: TdxDBGridMaskColumn;
    dbggerPRO_RDEF: TdxDBGridMaskColumn;
    dbggerPRO_RDIS: TdxDBGridColumn;
    cad_pro_estPRO_QEST7: TIBBCDField;
    cad_pro_estPRO_REST7: TIntegerField;
    cad_pro_estPRO_QEST8: TIBBCDField;
    cad_pro_estPRO_REST8: TIntegerField;
    cad_pro_estPRO_QEST9: TIBBCDField;
    cad_pro_estPRO_REST9: TIntegerField;
    cad_pro_estPRO_QRES7: TIBBCDField;
    cad_pro_estPRO_RRES7: TIntegerField;
    cad_pro_estPRO_QRES8: TIBBCDField;
    cad_pro_estPRO_RRES8: TIntegerField;
    cad_pro_estPRO_QRES9: TIBBCDField;
    cad_pro_estPRO_RRES9: TIntegerField;
    cadastroPRO_DUSU: TIBStringField;
    dbgConsultaPRO_DUSU: TdxDBGridMaskColumn;
    cadastroPRO_DALT: TDateField;
    dbgConsultaPRO_DALT: TdxDBGridDateColumn;
    procedure FormCreate(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure siINCClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure dtscadastroDataChange(Sender: TObject; Field: TField);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siPSQClick(Sender: TObject);
    procedure siEVEClick(Sender: TObject);
    procedure cadastroCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure AjustaForm;
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
  public
    { Public declarations }
  end;

var
  frmcad_tec: Tfrmcad_tec;

implementation

uses p_funcoes, ppesquisa, uPrincipal, plog_eve;

{$R *.dfm}

procedure Tfrmcad_tec.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 1;
    frmpesquisa.cbCAMPO.Text := 'Produto';
    if frmprincipal.parametrosPAR_PGRD.AsString = '0' then
    frmpesquisa.cbCAMPO.Text := 'Referencia'
    else if frmprincipal.parametrosPAR_PGRD.AsString = '4' then
    frmpesquisa.cbCAMPO.Text := 'Descrição';
    frmpesquisa.cbDATA.Text  := 'Cadastro';
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      if (edTXT.Text = '') and (dxdt1.Date < 0) then
         {nothing}
      else
      with cadastro do
      begin
        SQL.Clear;
        SQL.Add('SELECT CAD_PRO.ID,CAD_PRO.PRO_CART,PRO_CPRO,PRO_DPRO,PRO_FOTO,');
        SQL.Add('       PRO_CBAR,PRO_DCOR,PRO_PCOR,PRO_DGRP,PRO_DCAT,PRO_DCOL,PRO_STA ,PRO_OBSE,PRO_CUST,PRO_PCOM,PRO_PREC,');
        SQL.Add('       PRO_CDFO,PRO_DUNI,PRO_GRAD,PRO_DCAD,PRO_DPRG,PRO_DENT,PRO_DULT,PRO_REPR,PRO_STAV,PRO_DUSU,PRO_DALT');
        SQL.Add('FROM   CAD_PRO,CAD_PRO_IMG');
        SQL.Add('WHERE  CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');
        SQL.Add('AND    PRO_STA = ''0''');

        if frmprincipal.parametrosPAR_SPRO.AsString = '1' then
           SQL.Add('AND PRO_CDFO = '''+frmprincipal.parametrosID.AsString+'''');

        if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
           SQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

        if edtxt.Text <> '' then
        begin
          if cField = 'CAD_PRO.PRO_STAV' then
          SQL.Add('AND '+cField+' = '''+copy(edtxt.Text,1,1)+'''')
          else
          SQL.Add('AND '+cField+' LIKE ''%'+edtxt.Text+'%''');
          SQL.Add('ORDER BY CAD_PRO.PRO_CART,CAD_PRO.PRO_DCOR');
        end;  
        Open;
      end;
      dbgconsulta.SetFocus;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmcad_tec.AjustaForm;
begin
  screen.Cursor:=crHourGlass;
  screen.Cursor:=crDefault;

  Self.top    := 0;
  Self.left   := 0;
  Self.Height := frmprincipal.pnCustomize.Height-4;

  if (Screen.Width > 1024) and (Screen.Width <= 1280) then
  begin
    Width                       := 1030;
    pnldir.Width                := 300;
    dbgConsultaPRO_CPRO.Width   := 90;
    dbgConsultaPRO_DPRO.Width   := 190;
  end
  else if (Screen.Width > 1280) and (Screen.Width <= 1360) then
  begin
    Width                       := 1108;
    pnldir.Width                := 300;
    dbgConsultaPRO_CPRO.Width   := 90;
    dbgConsultaPRO_DPRO.Width   := 264;
  end
  else if Screen.Width = 1366 then
  begin
    Width                       := 1114;
    pnldir.Width                := 300;
    dbgConsultaPRO_CPRO.Width   := 90;
    dbgConsultaPRO_DPRO.Width   := 270;
  end
  else if Screen.Width = 1600 then
  begin
    Width                       := 1350;
    pnldir.Width                := 500;
    dbgConsultaPRO_CPRO.Width   := 110;
    dbgConsultaPRO_DPRO.Width   := 390;
  end
  else if Screen.Width = 1680 then
  begin
    Width                       := 1430;
    pnldir.Width                := 500;
    dbgConsultaPRO_CPRO.Width   := 110;
    dbgConsultaPRO_DPRO.Width   := 390;
  end
  else if Screen.Width = 1920 then
  begin
    Width                       := 1670;
    pnldir.Width                := 600;
    dbgConsultaPRO_CPRO.Width   := 110;
    dbgConsultaPRO_DPRO.Width   := 400;
  end;

  if (Screen.Width <= 1024) or (Screen.Width <= 1280) then
  begin
    Left    := 7;
    Top     := 50;
    Width   := Screen.Width-15;

    if frmprincipal.pnbot.Visible then
       Top := frmprincipal.ToolBar1.Height+53;

    if Top <= 50 then
       Height := frmprincipal.pnCustomize.Height+3
    else
       Height := frmprincipal.pnCustomize.Height+4;
  end;
end;

procedure Tfrmcad_tec.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
     BlobStream := tab.CreateBlobStream(valor,bmRead);

  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    imag.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmcad_tec.FormCreate(Sender: TObject);
begin
  frmprincipal.pnbot.Visible := false;

  pcEST.ActivePageIndex := 0;

  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAD_PRO.ID,CAD_PRO.PRO_CART,PRO_CPRO,PRO_DPRO,PRO_FOTO,');
    SQL.Add('       PRO_CBAR,PRO_DCOR,PRO_PCOR,PRO_DGRP,PRO_DCAT,PRO_DCOL,PRO_STA ,PRO_OBSE,PRO_CUST,PRO_PCOM,PRO_PREC,');
    SQL.Add('       PRO_CDFO,PRO_DUNI,PRO_GRAD,PRO_DCAD,PRO_DPRG,PRO_DENT,PRO_DULT,PRO_REPR,PRO_STAV,PRO_DUSU,PRO_DALT');
    SQL.Add('FROM   CAD_PRO,CAD_PRO_IMG');
    SQL.Add('WHERE  CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');
    SQL.Add('AND    PRO_STA = ''0''');

    if frmprincipal.parametrosPAR_TPRO.AsString = '0' then
       SQL.Add('AND CAD_PRO.ID = 0');

    if frmprincipal.parametrosPAR_SPRO.AsString = '1' then
       SQL.Add('AND PRO_CDFO = '''+frmprincipal.parametrosID.AsString+'''');

    SQL.Add('ORDER BY PRO_CPRO');
    Open;
  end;

  with cad_pro_est do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PRO_CPRO,PRO_DCOR,PRO_DUNI,PRO_METR,PRO_PESO,PRO_PSCN,');

    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_002 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST2,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_002 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST2,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_003 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST3,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_003 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST3,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_004 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST4,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_004 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST4,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_005 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST5,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_005 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST5,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_006 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST6,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_006 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST6,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_007 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST7,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_007 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST7,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_008 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST8,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_008 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST8,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_009 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST9,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_009 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST9,');

    SQL.Add('FROM     CAD_PRO');
    SQL.Add('WHERE    PRO_CART = :PRO_CART');
    SQL.Add('ORDER BY PRO_DCOR');
    Open;
  end;

  cEvent := 'CAD_TEC';
  Ajustaform;
end;

procedure Tfrmcad_tec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmcad_tec <> nil then
  begin
    frmcad_tec.Release;
    frmcad_tec := nil;
  end;
end;

procedure Tfrmcad_tec.FormShow(Sender: TObject);
begin
  inherited;
  dbgconsulta.SetFocus;
end;

procedure Tfrmcad_tec.siINCClick(Sender: TObject);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Produtos';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  Application.CreateForm (Tfrmcad_tec_edi, frmcad_tec_edi);
  frmcad_tec_edi.Tag := frmcad_tec.Tag;
  try
    frmcad_tec_edi.ShowModal;
  finally
    if frmcad_tec_edi.editado then
    begin
      wRecord := nil;
      ExecuteEvent;
    end;

    freeAndNil(frmcad_tec_edi);
    frmcad_tec_edi.Free;
  end;
end;

procedure Tfrmcad_tec.siALTClick(Sender: TObject);
begin
  sbMSG.Panels[0].Text := 'Alteração';
  sbMSG.Update;

  wRecord := cadastro.GetBookmark;

  if cadastro.Fields[0].IsNull then abort;

  if not SpeedBar1.Visible then exit;

  Application.CreateForm (Tfrmcad_tec_edi, frmcad_tec_edi);
  try
    frmcad_tec_edi.Tag := 1;
    frmcad_tec_edi.ShowModal;
  finally
    if frmcad_tec_edi.editado then
    ExecuteEvent;

    freeAndNil(frmcad_tec_edi);
    frmcad_tec_edi.Free;
  end;
end;

procedure Tfrmcad_tec.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Produtos';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmcad_tec.dtscadastroDataChange(Sender: TObject;
  Field: TField);
begin
  carregaFoto(cadastroPRO_FOTO.BlobSize,cadastroPRO_FOTO,cadastro,frmprincipal.parametros);
end;

procedure Tfrmcad_tec.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  if not ASelected then
  begin
    Value  := ANode.Values[16];

    if Value = 'PRÉ-CADASTRO' then
    begin
       AFont.Color := clBlack;
       AColor      := $00BEEFF8;
    end
    else if Value = 'INATIVO' then
    begin
       AFont.Color := clwhite;
       AColor      := RGB(StrToInt( '$ED') ,
                          StrToInt( '$1F') ,
                          StrToInt( '$43') );
    end;

    if (AColumn = dbgConsultaPRO_PREC) then
    begin
      AColor      := $00F0D4A1;
      AFont.Color := clBlack;
    end;
  end;
end;

procedure Tfrmcad_tec.siEVEClick(Sender: TObject);
begin
  frmlog_eve := tfrmlog_eve.create(self);
  with frmlog_eve.cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT LOG_EVE.*,PAR_SIS.PAR_FANT,CAD_FUN.FUN_FOTO');
    SQL.Add('FROM   LOG_EVE,PAR_SIS');
    SQL.Add('LEFT   OUTER JOIN CAD_FUN ON LOG_EVE.EVE_CLOG = CAD_FUN.ID');
    SQL.Add('WHERE  LOG_EVE.EVE_CDEP = PAR_SIS.ID');
    SQL.Add('AND    LOG_EVE.EVE_FUNC = ''Produtos''');
    SQL.Add('and    LOG_EVE.EVE_CEVE LIKE '''+cadastroPRO_CART.AsString+'%''');
    SQL.Add('ORDER BY ID DESC');
    Open;
  end;
  frmlog_eve.show;
end;


procedure Tfrmcad_tec.cadastroCalcFields(DataSet: TDataSet);
begin
  if cadastroPRO_STAV.AsString = 'A' then
  cadastroSTAV.Value := 'ATIVO' else
  if cadastroPRO_STAV.AsString = 'P' then
  cadastroSTAV.Value := 'PRÉ-CADASTRO' else
  if cadastroPRO_STAV.AsString = 'I' then
  cadastroSTAV.Value := 'INATIVO';
end;

end.

