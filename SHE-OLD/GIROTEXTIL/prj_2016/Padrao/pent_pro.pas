unit pent_pro;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math, rxSpeedbar,
  IBEvents;

type
  Tfrment_pro = class(TForm)
    imageOPC: TImageList;
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    BNov: TSpeedItem;
    BSair: TSpeedItem;
    BSal: TSpeedItem;
    imageOPC2: TImageList;
    IBTra: TIBTransaction;
    ibSP: TIBStoredProc;
    rom_001: TIBDataSet;
    dtsrom_001: TDataSource;
    aux: TIBQuery;
    BVis: TSpeedItem;
    tSHEILD: TIBTransaction;
    consulta_s: TIBQuery;
    pnlconsulta: TPanel;
    Timer1: TTimer;
    imageOPC3: TImageList;
    dbgrom: TdxDBGrid;
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
    consulta: TIBQuery;
    BHst: TSpeedItem;
    dbgromPRO_ITEM: TdxDBGridMaskColumn;
    dbgromPRO_CPRO: TdxDBGridMaskColumn;
    dbgromPRO_DPRO: TdxDBGridMaskColumn;
    dbgromPRO_DCOR: TdxDBGridMaskColumn;
    dbgromPRO_DUNI: TdxDBGridMaskColumn;
    dbgromPRO_QTDE: TdxDBGridMaskColumn;
    dbgromPRO_CPR2: TdxDBGridMaskColumn;
    dbgromPRO_QDIS: TdxDBGridMaskColumn;
    pnlpri: TPanel;
    pnped: TPanel;
    Shape4: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    linha1: TShape;
    Label1: TLabel;
    Label10: TLabel;
    linha2: TShape;
    Shape3: TShape;
    Label7: TLabel;
    Label8: TLabel;
    linha3: TShape;
    Shape7: TShape;
    Label16: TLabel;
    Shape9: TShape;
    Label17: TLabel;
    Shape10: TShape;
    Shape24: TShape;
    Shape11: TShape;
    Label28: TLabel;
    Label18: TLabel;
    Label5: TLabel;
    Label15: TLabel;
    edvdsc: TdxMaskEdit;
    edpdsc: TdxMaskEdit;
    edcdro: TdxMaskEdit;
    eddcad: TdxDateEdit;
    edcfor: TdxMaskEdit;
    edrfor: TdxMaskEdit;
    pcobs: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    edobse: TdxMemo;
    dxTabSheet2: TdxTabSheet;
    edobso: TdxMemo;
    edcdnf: TdxMaskEdit;
    edtqtrl: TdxMaskEdit;
    edtqtde: TdxMaskEdit;
    cbdfor: TdxPickEdit;
    eddtnf: TdxDateEdit;
    pnlfoto: TPanel;
    Shape1: TShape;
    Label9: TLabel;
    Shape5: TShape;
    Panel3: TPanel;
    pro_foto: TImage;
    pnlpesquisa: TGroupBox;
    Shape2: TShape;
    Label2: TLabel;
    Shape21: TShape;
    Label6: TLabel;
    edTXT: TdxMaskEdit;
    edQTDE: TdxMaskEdit;
    cbCAMPO: TdxImageEdit;
    dbgromPRO_RDIS: TdxDBGridMaskColumn;
    rom_002: TIBDataSet;
    dbgromPRO_CDET: TdxDBGridMaskColumn;
    rom_002ID: TIntegerField;
    rom_002PRO_CDRO: TIntegerField;
    rom_002PRO_IPRO: TIntegerField;
    rom_002PRO_IPR2: TIntegerField;
    rom_002PRO_ITEM: TIBStringField;
    rom_002PRO_CART: TIBStringField;
    rom_002PRO_CPRO: TIBStringField;
    rom_002PRO_CPR2: TIBStringField;
    rom_002PRO_CDET: TIBStringField;
    rom_002PRO_CBAR: TIBStringField;
    rom_002PRO_DPRO: TIBStringField;
    rom_002PRO_DUNI: TIBStringField;
    rom_002PRO_CCOR: TIntegerField;
    rom_002PRO_RCOR: TIBStringField;
    rom_002PRO_DCOR: TIBStringField;
    rom_002PRO_CCO2: TIntegerField;
    rom_002PRO_RCO2: TIBStringField;
    rom_002PRO_DCO2: TIBStringField;
    rom_002PRO_CCOL: TIntegerField;
    rom_002PRO_DCOL: TIBStringField;
    rom_002PRO_CGRP: TIntegerField;
    rom_002PRO_RGRP: TIBStringField;
    rom_002PRO_DGRP: TIBStringField;
    rom_002PRO_CCAT: TIntegerField;
    rom_002PRO_RCAT: TIBStringField;
    rom_002PRO_DCAT: TIBStringField;
    rom_002PRO_REST: TSmallintField;
    rom_002PRO_RPRG: TSmallintField;
    rom_002PRO_RDIS: TSmallintField;
    rom_002PRO_QTRL: TSmallintField;
    rom_002PRO_QEST: TIBBCDField;
    rom_002PRO_QPRG: TIBBCDField;
    rom_002PRO_QDIS: TIBBCDField;
    rom_002PRO_QTDE: TIBBCDField;
    rom_002PRO_PPRO: TIBBCDField;
    rom_002PRO_PEMB: TIBBCDField;
    rom_002PRO_METR: TIBBCDField;
    rom_002PRO_PESO: TIBBCDField;
    rom_002PRO_REND: TIBBCDField;
    rom_002PRO_PSCN: TIBBCDField;
    rom_002PRO_PSMR: TIBBCDField;
    rom_002PRO_FOTO: TBlobField;
    rom_002PRO_FLAG: TSmallintField;
    rom_001ID: TIntegerField;
    rom_001PRO_CDRO: TIntegerField;
    rom_001PRO_IPRO: TIntegerField;
    rom_001PRO_IPR2: TIntegerField;
    rom_001PRO_ITEM: TIBStringField;
    rom_001PRO_CART: TIBStringField;
    rom_001PRO_CPRO: TIBStringField;
    rom_001PRO_CPR2: TIBStringField;
    rom_001PRO_CDET: TIBStringField;
    rom_001PRO_CBAR: TIBStringField;
    rom_001PRO_DPRO: TIBStringField;
    rom_001PRO_DUNI: TIBStringField;
    rom_001PRO_CCOR: TIntegerField;
    rom_001PRO_RCOR: TIBStringField;
    rom_001PRO_DCOR: TIBStringField;
    rom_001PRO_CCO2: TIntegerField;
    rom_001PRO_RCO2: TIBStringField;
    rom_001PRO_DCO2: TIBStringField;
    rom_001PRO_CCOL: TIntegerField;
    rom_001PRO_DCOL: TIBStringField;
    rom_001PRO_CGRP: TIntegerField;
    rom_001PRO_RGRP: TIBStringField;
    rom_001PRO_DGRP: TIBStringField;
    rom_001PRO_CCAT: TIntegerField;
    rom_001PRO_RCAT: TIBStringField;
    rom_001PRO_DCAT: TIBStringField;
    rom_001PRO_REST: TSmallintField;
    rom_001PRO_RPRG: TSmallintField;
    rom_001PRO_RDIS: TSmallintField;
    rom_001PRO_QTRL: TSmallintField;
    rom_001PRO_QEST: TIBBCDField;
    rom_001PRO_QPRG: TIBBCDField;
    rom_001PRO_QDIS: TIBBCDField;
    rom_001PRO_QTDE: TIBBCDField;
    rom_001PRO_PPRO: TIBBCDField;
    rom_001PRO_PEMB: TIBBCDField;
    rom_001PRO_METR: TIBBCDField;
    rom_001PRO_PESO: TIBBCDField;
    rom_001PRO_REND: TIBBCDField;
    rom_001PRO_PSCN: TIBBCDField;
    rom_001PRO_PSMR: TIBBCDField;
    rom_001PRO_FOTO: TBlobField;
    rom_001PRO_FLAG: TSmallintField;
    cboper: TdxImageEdit;
    siIMP: TSpeedItem;
    latipo: TLabel;
    cbtipo: TdxImageEdit;
    rom_001PRO_CSEP: TIntegerField;
    rom_002PRO_CSEP: TIntegerField;
    rom_002PRO_DSEP: TIBStringField;
    rom_001PRO_DSEP: TIBStringField;
    rom_002PRO_DMAP: TIBStringField;
    rom_002PRO_CTNR: TIBStringField;
    rom_001PRO_DMAP: TIBStringField;
    rom_001PRO_CTNR: TIBStringField;
    Label11: TLabel;
    cbdmap: TdxPickEdit;
    Label12: TLabel;
    rom_002PRO_LOTE: TIBStringField;
    rom_001PRO_LOTE: TIBStringField;
    cblote: TdxPickEdit;
    cbctnr: TdxPickEdit;
    pTRA: TIBTransaction;
    pSP: TIBStoredProc;
    pEVE: TIBEvents;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSairClick(Sender: TObject);
    procedure edtsdeKeyPress(Sender: TObject; var Key: Char);
    procedure rom_001NewRecord(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
    procedure siINCClick(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure siCANClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure rom_001AfterCancel(DataSet: TDataSet);
    procedure rom_001AfterEdit(DataSet: TDataSet);
    procedure rom_001AfterPost(DataSet: TDataSet);
    procedure dbgromKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edderoKeyPress(Sender: TObject; var Key: Char);
    procedure rom_001AfterInsert(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BSalClick(Sender: TObject);
    procedure rom_001BeforeCancel(DataSet: TDataSet);
    procedure BNovClick(Sender: TObject);
    procedure rom_001AfterOpen(DataSet: TDataSet);
    procedure rom_001AfterDelete(DataSet: TDataSet);
    procedure dbgromCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dtsrom_001DataChange(Sender: TObject; Field: TField);
    procedure dbgromBackgroundDrawEvent(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect);
    procedure edobseChange(Sender: TObject);
    procedure cbCAMPOChange(Sender: TObject);
    procedure cbstveChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cboperChange(Sender: TObject);
    procedure edtqtrlKeyPress(Sender: TObject; var Key: Char);
    procedure edcdnfValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure rom_001PRO_QTDEValidate(Sender: TField);
    procedure edcdnfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rom_001BeforePost(DataSet: TDataSet);
    procedure cbdforChange(Sender: TObject);
    procedure rom_002AfterPost(DataSet: TDataSet);
    procedure edTXTExit(Sender: TObject);
    procedure edQTDEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rom_002NewRecord(DataSet: TDataSet);
    procedure rom_002BeforePost(DataSet: TDataSet);
    procedure siIMPClick(Sender: TObject);
    procedure cboperExit(Sender: TObject);
    procedure pro_fotoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    FrmStyle   : TFormStyle;
    FrmPosition: TPosition;
    ID: integer;
    { Private declarations }
  public
    focus: word;
    procedure MONTA_PECA(Peca: boolean; Quant: double);
    procedure DISPLAY_GRID;
    procedure CARREGAFOTO(tam: Integer; valor: TBlobField; tab: TIbDataSet);
    procedure PESQUISA_PRODUTO(campo,cpro:string);
    procedure ABRE_TABELA;
    procedure TOTAL;
    procedure SALVA_ENTRADA;
    function  RETORNA_ESTOQUE(ipro: integer): double;
    function  RETORNA_PECA(Quant: double): integer;
    { Public declarations }
  end;

var
  frment_pro: Tfrment_pro;
  BRet: boolean;

implementation

uses uPrincipal, uFrmLogin, pcad_pro_con,
  pctr_pro, prelatorio_geral, pimporta_geral, pcad_pro_img;

{$R *.dfm}

procedure Tfrment_pro.FormCreate(Sender: TObject);
begin
  oOTransact(IBTra);
  cbcampo.Text := 'Referencia';
  if (frmprincipal.parametrosPAR_PGRD.AsString = '1') or
     (frmprincipal.parametrosPAR_TIPO.AsString = '1') then
  cbcampo.Text := 'Produto';

  tag   := 1;
  focus := 6;

  ABRE_TABELA;

  edcdro.Text  := '00000';
  eddcad.Date  := strtodate(SLPrincipal.Values['data_sistema']);
  edcdnf.Text  := '000000';
  eddtnf.Date  := strtodate(SLPrincipal.Values['data_sistema']);
  cboper.Text  := '';
  edobse.Text  := '';
  edtqtrl.Text := '0';
  edtqtde.Text := '0';

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CON_CTNR FROM CAD_CON');
    SQL.Add('GROUP BY CON_CTNR');
    SQL.Add('ORDER BY CON_CTNR');
    Open;

    while not eof do
    begin
      cbctnr.Items.Add(fields[0].AsString);
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
end;

procedure Tfrment_pro.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  { Herança }
  FrmStyle    := FormStyle;
  FrmPosition := Position;

  { Eventos }
  with pEVE do
  begin
    UnregisterEvents;
    Events.Add('CAD_PRO');
    RegisterEvents;
  end;
end;

procedure Tfrment_pro.FormActivate(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  OnActivate    := Nil;
  Tag := 0;

  EDTxt.SetFocus;
end;

procedure Tfrment_pro.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if rom_001.State in [dsEdit,dsInsert] then
  begin
    if (rom_001PRO_DPRO.AsString = '') or (rom_001PRO_QTDE.AsFloat = 0) then
       rom_001.Cancel
    else
       rom_001.Post;
  end;

  rom_001.First;
  if (BSal.Enabled) and (rom_001PRO_DPRO.AsString <> '') then
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

  pEve.UnRegisterEvents;
  Action := caFree;
end;

procedure Tfrment_pro.FormDestroy(Sender: TObject);
begin
  OnDestroy := Nil;
  oFTransact(IBTra);
  Screen.Cursor := crDefault;
  frment_pro := Nil;
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
       117      : if BHst.Enabled then BHst.Click;
  end;
end;

procedure Tfrment_pro.FormPaint(Sender: TObject);
var
  R: TRect;
begin
  if (Showing) and ((HelpContext = 0) or (HelpContext = 1)) then
  begin
    { Definição sobre o Painel de utilitários do form principal }
    FrmPrincipal.PNBot.Visible := (Screen.Height > 768);
    HelpContext := IFThen((Screen.Height > 768),0,1);

    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,R);

    if FrmPosition = poDefault then
    begin
      if (AlphaBlendValue = 0) and (HelpContext = 0) then
      begin
        { Width padrão acima de 768 = 1032 }
        Height := Trunc((R.Bottom - R.Top) * 0.9);
        Top    := ((R.Bottom - R.Top ) - Height) div 2;
        Left   := ((R.Right  - R.Left) - Width ) div 2;
      end else
      begin
        Top    := IFThen(FrmStyle    = fsNormal ,R.Top ,0);
        Left   := IFThen(FrmStyle    = fsNormal ,R.Left,0);
        Width  := IFThen(FrmPosition = poDefault,R.Right -R.Left-5,0);
        Height := IFThen(FrmPosition = poDefault,R.Bottom-R.Top -5,0);
      end;
    end else
    begin
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

procedure Tfrment_pro.FormResize(Sender: TObject);
begin
  if frment_pro <> Nil then
  Paint;
end;

function Tfrment_pro.RETORNA_PECA(Quant: double): integer;
var
  qtrl: integer;
begin
  qtrl := 1;
  if copy(rom_001PRO_DUNI.AsString,1,1) = 'K' then
  begin
    if (rom_001PRO_PESO.AsFloat > 0) and (rom_001PRO_PSCN.AsFloat > 0) then
       qtrl := trunc(roundto(Quant/(rom_001PRO_PESO.AsFloat+rom_001PRO_PSCN.AsFloat),-2));
  end
  else if (copy(rom_001PRO_DUNI.AsString,1,1) = 'M') or  (copy(rom_001PRO_DUNI.AsString,1,1) = 'C') then
  begin
    if rom_001PRO_METR.AsFloat > 0 then
       qtrl := trunc(roundto(Quant/(rom_001PRO_METR.AsFloat),-2));
  end;
  result := qtrl;
end;

procedure Tfrment_pro.MONTA_PECA(Peca: boolean; Quant: double);
type
  Trom_001 = Record
    PRO_CDRO  : INTEGER;
    PRO_IPRO  : INTEGER;
    PRO_IPR2  : INTEGER;
    PRO_ITEM  : string[4];
    PRO_CART  : string[20];
    PRO_CPRO  : string[20];
    PRO_CPR2  : string[20];
    PRO_CDET  : string[10];
    PRO_CBAR  : string[20];
    PRO_DPRO  : string[120];
    PRO_DUNI  : string[3];
    PRO_CCOR  : INTEGER;
    PRO_RCOR  : string[3];
    PRO_DCOR  : string[30];
    PRO_CCO2  : INTEGER;
    PRO_RCO2  : string[3];
    PRO_DCO2  : string[30];
    PRO_CCOL  : INTEGER;
    PRO_DCOL  : string[30];
    PRO_CGRP  : INTEGER;
    PRO_RGRP  : string[5];
    PRO_DGRP  : string[30];
    PRO_CCAT  : INTEGER;
    PRO_RCAT  : string[5];
    PRO_DCAT  : string[30];
    PRO_REST  : word;
    PRO_RPRG  : word;
    PRO_RDIS  : word;
    PRO_QTRL  : word;
    PRO_QEST  : double;
    PRO_QPRG  : double;
    PRO_QDIS  : double;
    PRO_QTDE  : double;
    PRO_FLAG  : word;
    PRO_PPRO  : double;
    PRO_PEMB  : double;
    PRO_METR  : double;
    PRO_PESO  : double;
    PRO_REND  : double;
    PRO_PSCN  : double;
    PRO_PSMR  : double;
  end;

var
  qtrl: integer;
     i: word;
  rom_003: Trom_001;

begin
  qtrl := trunc(Quant);
  if Peca then
     qtrl := RETORNA_PECA(Quant);

  if (qtrl <= 1) or (Quant <= 0) then
     exit;

  with rom_003 do
  begin
    PRO_CDRO := rom_001PRO_CDRO.Value;
    PRO_IPRO := rom_001PRO_IPRO.Value;
    PRO_IPR2 := rom_001PRO_IPR2.Value;
    PRO_ITEM := rom_001PRO_ITEM.Value;
    PRO_CART := rom_001PRO_CART.Value;
    PRO_CPRO := rom_001PRO_CPRO.Value;
    PRO_CPR2 := rom_001PRO_CPR2.Value;
    PRO_CDET := rom_001PRO_CDET.Value;
    PRO_CBAR := rom_001PRO_CBAR.Value;
    PRO_DPRO := rom_001PRO_DPRO.Value;
    PRO_DUNI := rom_001PRO_DUNI.Value;
    PRO_CCOR := rom_001PRO_CCOR.Value;
    PRO_RCOR := rom_001PRO_RCOR.Value;
    PRO_DCOR := rom_001PRO_DCOR.Value;
    PRO_CCO2 := rom_001PRO_CCO2.Value;
    PRO_RCO2 := rom_001PRO_RCO2.Value;
    PRO_DCO2 := rom_001PRO_DCO2.Value;
    PRO_CCOL := rom_001PRO_CCOL.Value;
    PRO_DCOL := rom_001PRO_DCOL.Value;
    PRO_CGRP := rom_001PRO_CGRP.Value;
    PRO_RGRP := rom_001PRO_RGRP.Value;
    PRO_DGRP := rom_001PRO_DGRP.Value;
    PRO_CCAT := rom_001PRO_CCAT.Value;
    PRO_RCAT := rom_001PRO_RCAT.Value;
    PRO_DCAT := rom_001PRO_DCAT.Value;
    PRO_REST := rom_001PRO_REST.Value;
    PRO_RPRG := rom_001PRO_RPRG.Value;
    PRO_RDIS := rom_001PRO_RDIS.Value;
    PRO_QTRL := rom_001PRO_QTRL.Value;
    PRO_QEST := rom_001PRO_QEST.Value;
    PRO_QPRG := rom_001PRO_QPRG.Value;
    PRO_QDIS := rom_001PRO_QDIS.Value;
    PRO_QTDE := rom_001PRO_QTDE.Value;
    PRO_FLAG := rom_001PRO_FLAG.Value;
    PRO_PPRO := rom_001PRO_PPRO.Value;
    PRO_PEMB := rom_001PRO_PEMB.Value;
    PRO_METR := rom_001PRO_METR.Value;
    PRO_PESO := rom_001PRO_PESO.Value;
    PRO_REND := rom_001PRO_REND.Value;
    PRO_PSCN := rom_001PRO_PSCN.Value;
    PRO_PSMR := rom_001PRO_PSMR.Value;
  end;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM CAD_PRO_ENI');
    SQL.Add('WHERE  PRO_CPRO = '''+rom_003.PRO_CPRO+'''');
    ExecSQL;
    tSHEILD.CommitRetaining;
  end;  

  with rom_002 do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_PRO_ENI');
    SelectSQL.Add('WHERE    PRO_FLAG = 0');
    SelectSQL.Add('AND      PRO_CPRO = '''+rom_003.PRO_CPRO+'''');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;

  for i := 1 to qtrl do
  begin
    with rom_003 do
    begin
      rom_002.Append;
      rom_002ID.Value       := 0;
      rom_001PRO_CDRO.Value := PRO_CDRO;
      rom_001PRO_IPRO.Value := PRO_IPRO;
      rom_001PRO_IPR2.Value := PRO_IPR2;
      rom_001PRO_ITEM.Value := PRO_ITEM;
      rom_001PRO_CART.Value := PRO_CART;
      rom_001PRO_CPRO.Value := PRO_CPRO;
      rom_001PRO_CPR2.Value := PRO_CPR2;
      rom_001PRO_CDET.Value := PRO_CDET;
      rom_001PRO_CBAR.Value := PRO_CBAR;
      rom_001PRO_DPRO.Value := PRO_DPRO;
      rom_001PRO_DUNI.Value := PRO_DUNI;
      rom_001PRO_CCOR.Value := PRO_CCOR;
      rom_001PRO_RCOR.Value := PRO_RCOR;
      rom_001PRO_DCOR.Value := PRO_DCOR;
      rom_001PRO_CCO2.Value := PRO_CCO2;
      rom_001PRO_RCO2.Value := PRO_RCO2;
      rom_001PRO_DCO2.Value := PRO_DCO2;
      rom_001PRO_CCOL.Value := PRO_CCOL;
      rom_001PRO_DCOL.Value := PRO_DCOL;
      rom_001PRO_CGRP.Value := PRO_CGRP;
      rom_001PRO_RGRP.Value := PRO_RGRP;
      rom_001PRO_DGRP.Value := PRO_DGRP;
      rom_001PRO_CCAT.Value := PRO_CCAT;
      rom_001PRO_RCAT.Value := PRO_RCAT;
      rom_001PRO_DCAT.Value := PRO_DCAT;
      rom_001PRO_REST.Value := PRO_REST;
      rom_001PRO_RPRG.Value := PRO_RPRG;
      rom_001PRO_RDIS.Value := PRO_RDIS;
      rom_001PRO_QTRL.Value := PRO_QTRL;
      rom_001PRO_QEST.Value := PRO_QEST;
      rom_001PRO_QPRG.Value := PRO_QPRG;
      rom_001PRO_QDIS.Value := PRO_QDIS;
      rom_001PRO_QTDE.Value := PRO_QTDE;
      rom_001PRO_FLAG.Value := PRO_FLAG;
      rom_001PRO_PPRO.Value := PRO_PPRO;
      rom_001PRO_PEMB.Value := PRO_PEMB;
      rom_001PRO_METR.Value := PRO_METR;
      rom_001PRO_PESO.Value := PRO_PESO;
      rom_001PRO_REND.Value := PRO_REND;
      rom_001PRO_PSCN.Value := PRO_PSCN;
      rom_001PRO_PSMR.Value := PRO_PSMR;
      rom_002.Post;
    end;
  end;

  qtrl := 1;

  rom_002.Close;
  rom_002.Open;
  while not rom_002.Eof do
  begin
    rom_002.Edit;
    rom_002PRO_ITEM.Value := oStrZero(qtrl,4);
    rom_002.Post;
    rom_002.Next;

    inc(qtrl);
  end;
  rom_001.Close;
  rom_001.Open;

  while not rom_001.Eof do
  begin
    if rom_001PRO_CPRO.AsString = rom_003.PRO_CPRO then
       break;
    rom_001.next;
  end;
  TOTAL;
end;

procedure Tfrment_pro.DISPLAY_GRID;
var
  tam: word;
begin
  tam := dbgromPRO_DPRO.Tag;

  if screen.Width >= 1360 then
     tam := tam + 85;

  dbgromPRO_RDIS.Visible := (frmprincipal.parametrosPAR_PECA.AsString = '1');

  if (frmprincipal.parametrosPAR_TIPO.AsString <> '0') and (frmprincipal.parametrosPAR_TIPO.AsString <> '1') then
  begin
    if rom_001PRO_DCOR.AsString = '' then
    dbgromPRO_DCOR.Visible := false
    else
    dbgromPRO_DCOR.Visible := true;
  end;
  
  if dbgromPRO_DCOR.Visible then
     tam := (tam - dbgromPRO_DCOR.Width);

  dbgromPRO_DPRO.Width := tam;
end;

function Tfrment_pro.RETORNA_ESTOQUE(ipro: integer): double;
begin
  with aux do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_est']);
    SQL.Add('WHERE  EST_CPRO = '''+inttostr(ipro)+'''');
    SQL.Add('AND    EST_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    Open;
  end;
  result := aux.Fields[0].AsFloat;
end;

procedure Tfrment_pro.PESQUISA_PRODUTO(campo,cpro:string);
var
  nRecNo: integer;
begin
  edQTDE.Text := oStrTran(edQTDE.Text,'.',',');
  edQTDE.Text := formatfloat('#,0.00',oTextToValor(edQTDE.Text));

  if rom_001.State in [dsEdit,dsInsert] then
  begin
    if (rom_001PRO_DPRO.AsString = '') or (rom_001PRO_QTDE.AsFloat = 0) then
    rom_001.Cancel
    else
    rom_001.Post;
  end;

  if campo = 'Referencia' then
  nRecNo := frmprincipal.PESQUISA_PRODUTO('Referencia',cpro) else
  nRecNo := frmprincipal.PESQUISA_PRODUTO(campo,cpro);

  if nRecNo = 0 then
  begin
    edTXT.SetFocus;
    messageBox(handle,PChar(campo+' não cadastrado !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end
  else if nRecNo  > 1 then
  begin
    if ((frmprincipal.parametrosPAR_GRAD.AsString = '1') and (cbCAMPO.Text = 'Referencia')) or
        (cbCAMPO.Text = 'Categoria')                     or  (cbCAMPO.Text = 'Grupo')       or
        (cbCAMPO.Text = 'Coleção')   then
    begin
      rom_002.Close;
      rom_002.Open;

      frmprincipal.psq_pro.First;
      while not frmprincipal.psq_pro.Eof do
      begin
        BRet := true;
        if (copy(cboper.Text,1,5) = 'ZERAR') and (abs(frmprincipal.psq_proC_QDIS.AsFloat) = 0) then
        BRet := false;

        if BRet then
        begin
          rom_002.Append;
          rom_002PRO_DPRO.Value := frmprincipal.psq_proPRO_DPRO.AsString;
          rom_002PRO_IPRO.Value := frmprincipal.psq_proID.AsInteger;
          rom_002PRO_IPR2.Value := frmprincipal.psq_proID.AsInteger;
          rom_002PRO_CART.Value := frmprincipal.psq_proPRO_CART.AsString;
          rom_002PRO_CPRO.Value := frmprincipal.psq_proPRO_CPRO.AsString;
          rom_002PRO_CPR2.Value := frmprincipal.psq_proPRO_CPRO.AsString;
          rom_002PRO_CCOR.Value := frmprincipal.psq_proPRO_CCOR.AsInteger;
          rom_002PRO_DCOR.Value := frmprincipal.psq_proPRO_DCOR.AsString;
          rom_002PRO_DUNI.Value := frmprincipal.psq_proPRO_DUNI.AsString;
          rom_002PRO_FOTO.Value := frmprincipal.psq_proPRO_FOTO.Value;
          rom_002PRO_CBAR.Value := frmprincipal.psq_proPRO_CBAR.AsString;
          rom_002PRO_PPRO.Value := frmprincipal.psq_proPRO_PPRO.AsFloat;
          rom_002PRO_METR.Value := frmprincipal.psq_proPRO_METR.AsFloat;
          rom_002PRO_PESO.Value := frmprincipal.psq_proPRO_PESO.AsFloat;
          rom_002PRO_REND.Value := frmprincipal.psq_proPRO_REND.AsFloat;
          rom_002PRO_PSCN.Value := frmprincipal.psq_proPRO_PSCN.AsFloat;
          rom_002PRO_PSMR.Value := frmprincipal.psq_proPRO_PSMR.AsFloat;
          rom_002PRO_QDIS.Value := frmprincipal.psq_proC_QDIS.AsFloat;
          rom_002PRO_RDIS.Value := frmprincipal.psq_proC_RDIS.AsInteger;
          rom_002PRO_QTDE.Value := oTextToValor(edQTDE.Text);

          if copy(cboper.Text,1,5) = 'ZERAR' then
          rom_002PRO_QTDE.Value := abs(frmprincipal.psq_proC_QDIS.AsFloat);

          rom_002.Post;
        end;
        frmprincipal.psq_pro.Next;
      end;

      rom_001.Close;
      rom_001.Open;
      rom_001.Last;

      edTXT.SetFocus;
    end
    else
    begin
      frmcad_pro_con := Tfrmcad_pro_con.Create(self);
      with frmcad_pro_con.cadastro do
      begin
        SQL.Clear;
        SQL.Add(frmprincipal.psq_pro.Text);
        Open;
      end;
      frmcad_pro_con.ShowModal;
    end;
  end
  else if nRecNo = 1 then
  begin
     if frmprincipal.psq_proPRO_STAV.AsString = 'I' then
     begin
       messageBox(handle,'Produto inativo !',PChar(self.Caption),MB_ICONERROR+MB_OK);
       edTXT.SetFocus;
       Abort;
     end;

     if frmprincipal.psq_proPRO_STA.AsString <> '0' then
     begin
       messageBox(handle,'Produto enviado para a lixeira !',PChar(self.Caption),MB_ICONERROR+MB_OK);
       edTXT.SetFocus;
       Abort;
     end;

     if rom_001.State = dsBrowse then
     begin
       if (frmprincipal.parametrosPAR_TIPO.AsString = '0') or (frmprincipal.parametrosPAR_TIPO.AsString = '4') then
          rom_001.Append
       else
       begin
         rom_001.First;
         if rom_001.Locate('PRO_CPRO',frmprincipal.psq_proPRO_CPRO.AsString,[]) then
         rom_001.Edit
         else
         rom_001.Append;
       end;
     end;

     if rom_001.State = dsInsert then
     rom_001PRO_DPRO.Value := frmprincipal.psq_proPRO_DPRO.AsString;

     rom_001PRO_IPRO.Value := frmprincipal.psq_proID.AsInteger;
     rom_001PRO_IPR2.Value := frmprincipal.psq_proID.AsInteger;
     rom_001PRO_CART.Value := frmprincipal.psq_proPRO_CART.AsString;
     rom_001PRO_CPRO.Value := frmprincipal.psq_proPRO_CPRO.AsString;
     rom_001PRO_CPR2.Value := frmprincipal.psq_proPRO_CPRO.AsString;
     rom_001PRO_CCOR.Value := frmprincipal.psq_proPRO_CCOR.AsInteger;
     rom_001PRO_DCOR.Value := frmprincipal.psq_proPRO_DCOR.AsString;
     rom_001PRO_DUNI.Value := frmprincipal.psq_proPRO_DUNI.AsString;
     rom_001PRO_FOTO.Value := frmprincipal.psq_proPRO_FOTO.Value;
     rom_001PRO_CBAR.Value := frmprincipal.psq_proPRO_CBAR.AsString;
     rom_001PRO_PPRO.Value := frmprincipal.psq_proPRO_PPRO.AsFloat;
     rom_001PRO_METR.Value := frmprincipal.psq_proPRO_METR.AsFloat;
     rom_001PRO_PESO.Value := frmprincipal.psq_proPRO_PESO.AsFloat;
     rom_001PRO_REND.Value := frmprincipal.psq_proPRO_REND.AsFloat;
     rom_001PRO_PSCN.Value := frmprincipal.psq_proPRO_PSCN.AsFloat;
     rom_001PRO_PSMR.Value := frmprincipal.psq_proPRO_PSMR.AsFloat;
     rom_001PRO_QDIS.Value := frmprincipal.psq_proC_QDIS.AsFloat;
     rom_001PRO_RDIS.Value := frmprincipal.psq_proC_RDIS.AsInteger;

     try
       rom_001PRO_QTDE.Value := oTextToValor(edQTDE.Text);
       if copy(cboper.Text,1,5) = 'ZERAR' then
       rom_001PRO_QTDE.Value := abs(frmprincipal.psq_proC_QDIS.AsFloat);

       rom_001.Post;
       rom_001.Last;
     finally
       if (frmprincipal.parametrosPAR_TIPO.AsString = '0') or (frmprincipal.parametrosPAR_TIPO.AsString = '4') then
          edQTDE.SetFocus else edTXT.SetFocus;
     end;
  end;
end;

procedure Tfrment_pro.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet);
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    valor := frmprincipal.parametrosPAR_FOT2;
    tab   := frmprincipal.parametros;
  end;

  BlobStream := tab.CreateBlobStream(valor,bmRead);
  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    pro_foto.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrment_pro.ABRE_TABELA;
begin
  oOTransact(TSheild);
  with rom_001 do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM CAD_PRO_ENI');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_PRO_ENI');
    SelectSQL.Add('WHERE    PRO_FLAG = 0');
    SelectSQL.Add('ORDER BY ID');
    Open;
    tSHEILD.CommitRetaining;
  end;
  DISPLAY_GRID;
end;

procedure Tfrment_pro.BSairClick(Sender: TObject);
begin
  close;
end;

procedure Tfrment_pro.edtsdeKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrment_pro.rom_001NewRecord(DataSet: TDataSet);
begin
  rom_001ID.Value       := 0;
  rom_001PRO_FLAG.Value := 0;
  rom_001PRO_CDRO.Value := 0;
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT MAX(PRO_ITEM) FROM CAD_PRO_ENI');
    SQL.Add('WHERE  PRO_FLAG = 0');
    Open;
    if fields[0].IsNull then
       rom_001PRO_ITEM.Value := '0001'
    else
       rom_001PRO_ITEM.Value := oStrZero(fields[0].AsInteger + 1,4);
  end;
end;

procedure Tfrment_pro.siDELClick(Sender: TObject);
begin
  if oYesNo(handle,'Excluir Item ?') =   mrNo then
     abort;

  if (rom_001PRO_CDRO.AsInteger = 0) then
     rom_001.Delete
  else
  begin
    rom_001.Edit;
    rom_001PRO_FLAG.Value := 1;
    rom_001.Post;
  end;
  edTXT.SetFocus;
end;

procedure Tfrment_pro.siINCClick(Sender: TObject);
begin
  rom_001.Append;
end;

procedure Tfrment_pro.siSAVClick(Sender: TObject);
begin
  rom_001.Post;
end;

procedure Tfrment_pro.siCANClick(Sender: TObject);
begin
  rom_001.Cancel;
end;

procedure Tfrment_pro.siALTClick(Sender: TObject);
begin
  rom_001.Edit;
end;

procedure Tfrment_pro.rom_001AfterCancel(DataSet: TDataSet);
begin
  siDEL.Enabled := true;
end;

procedure Tfrment_pro.rom_001AfterEdit(DataSet: TDataSet);
begin
  siDEL.Enabled := false;

  if not dbgrom.CanFocus then
  dbgrom.FocusedColumn := 6;

  if not edTXT.CanFocus then
  dbgrom.SetFocus;
end;

procedure Tfrment_pro.rom_001AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  tSHEILD.CommitRetaining;

  siDEL.Enabled := true;

  if tag = 0 then
  begin
    if (rom_001PRO_DPRO.AsString <> '') then
        BSal.Enabled := true;

    wRec := rom_001.GetBookmark;
    
    rom_001.Close;
    rom_001.Open;
    if (wRec = Nil) or (rom_001.Fields[0].IsNull) then rom_001.last
       else rom_001.GotoBookmark(wRec);
    rom_001.FreeBookmark(wRec);

    if dbgrom.Focused then
    dbgrom.SetFocus;

    TOTAL;
  end;
end;

procedure Tfrment_pro.TOTAL;
begin
  if rom_001.State in [dsEdit,dsInsert] then
  begin
    if rom_001PRO_QTDE.AsFloat = 0 then
       rom_001.Cancel
    else
       rom_001.Post;
  end;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT COUNT(*),SUM(PRO_QTDE) FROM CAD_PRO_ENI');
    SQL.Add('WHERE  PRO_CPRO <> '' ''');
    SQL.Add('AND    PRO_FLAG = 0');
    Open;

    edtqtrl.Text := formatfloat('0'     ,fields[0].AsInteger);
    edtqtde.Text := formatfloat('#,0.00########',fields[1].AsFloat);
  end;
end;

procedure Tfrment_pro.dbgromKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgrom.FocusedColumn = focus then
                 rom_001.Next
                 else
                 dbgrom.FocusedColumn := dbgrom.FocusedColumn + 1;
               end;
    VK_DELETE: if rom_001.State = dsBrowse then
                  siDEL.Click;
    VK_ESCAPE: if rom_001.State = dsBrowse then close else rom_001.Cancel;
    VK_INSERT: if not siSAV.Enabled then siINC.Click;
  end;
end;

procedure Tfrment_pro.edderoKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrment_pro.rom_001AfterInsert(DataSet: TDataSet);
begin
  siDEL.Enabled := false;

  if not edTXT.CanFocus then
     dbgrom.SetFocus;
end;

procedure Tfrment_pro.SALVA_ENTRADA;
var
  flag: string;
begin
  activecontrol := nil;
  ID   := 0;
  flag := copy(cboper.Text,1,1);
  if (flag = 'Z') or (cboper.Text = 'DEVOLUÇÃO') then
  flag := 'E';

  if rom_001.State in [dsEdit,dsInsert] then
  begin
    if rom_001PRO_DPRO.AsString <> '' then
       rom_001.Post
    else
       rom_001.Cancel;
  end
  else
     rom_001.Cancel;

  rom_001.First;
  if rom_001.Fields[0].IsNull then
  begin
    messageBox(handle,'Peças não cadastradas !',PChar(self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  try
    rom_001.DisableControls;
    while not rom_001.Eof do
    begin
      if rom_001PRO_QTDE.AsFloat = 0 then
      begin
        messageBox(handle,'Quantidade não informada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;
      rom_001.Next;
    end;
  finally
    rom_001.EnableControls;
  end;

  if cboper.Text = '' then
  begin
    cboper.SetFocus;
    messageBox(handle,'Tipo de operação não informado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if (cboper.Text <> 'ENTRADA') and (cboper.Text <> 'SAÍDA') and (copy(cboper.Text,1,5) <> 'ZERAR') and
     (cboper.Text <> 'DEFEITO') and (cboper.Text <> 'DEVOLUÇÃO') then
  begin
    cboper.SetFocus;
    messageBox(handle,'Tipo de operação informado incorretamente !',PChar(self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if cbctnr.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_CON');
    SQL.Add('WHERE  CON_CTNR = '''+cbctnr.Text+'''');
    Open;

    if fields[0].IsNull then

  end;

  if cbdmap.Text <> '' then
  with consulta do
  begin
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

  if (edcdro.Text = '00000') or (edcdro.Text = '') or (edcdro.Text = ' ') then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_CAD_PRO_ENC,0) FROM RDB$DATABASE');
    Open;
    edcdro.Text := oStrZero(Fields[0].AsInteger+1,5);
             ID := 0;
  end
  else       ID := strtoint(edcdro.Text);

  if edcdnf.Text = '000000' then
     edcdnf.Text := edcdro.Text;

  // ========== * SALVA CABEÇALHO DO ROMANEIO * ========== //

  if (edcfor.Text = '') or (edcfor.Text = '0') then
  begin
    messageBox(handle,'Código da empresa não selecionada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if cbdfor.Text = '' then
  begin
    messageBox(handle,'Nome fantasia do fornecedor não selecionado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  try
    try
      ibSP.StoredProcName := 'SP_CAD_PRO_ENC';
      ibSP.Prepare;
      ibSP.ParamByName('id').Value   := ID;
      ibSP.ParamByName('cdep').Value := edcfor.Text;
      ibSP.ParamByName('cfor').Value := edcfor.Text;
      ibSP.ParamByName('cusu').Value := frmprincipal.cad_usuUSU_CUSU.AsInteger;
      ibSP.ParamByName('dusu').Value := frmprincipal.cad_usuUSU_DUSU.AsString;
      ibSP.ParamByName('dcad').Value := eddcad.Date;
      ibSP.ParamByName('dnfs').Value := NULL;
      if eddtnf.Date > 0 then
      ibSP.ParamByName('dnfs').Value := eddtnf.Date;
      ibSP.ParamByName('cdnf').Value := edcdnf.Text;
      ibSP.ParamByName('oper').Value := cboper.Text;
      ibSP.ParamByName('peca').Value := strtoint(edtqtrl.Text);
      ibSP.ParamByName('qtde').Value := oTextToValor(edtqtde.Text);
      ibSP.ParamByName('obse').Value := edobse.Lines.Text;
      ibSP.ParamByName('sta').Value  := '0';
      ibSP.ParamByName('tipo').Value := cbtipo.Text;
      ibSP.ParamByName('DMAP').Value := cbdmap.Text;
      ibSP.ParamByName('CTNR').Value := cbctnr.Text;
      ibSP.ParamByName('LOTE').Value := cblote.Text;
      ibSP.ExecProc;
    except
      BSal.Enabled := true;
      IBTra.RollbackRetaining;
      messageBox(handle,'Problemas na gravação do cabeçalho !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar('P.D.V.'),MB_ICONERROR+MB_OK);
      Abort;
    end;

    // ========== * SALVA ITENS DO ROMANEIO * ========== //

    with rom_001 do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_PRO_ENI');
      SelectSQL.Add('ORDER BY ID');
      Open;
    end;

    with frmprincipal.sp_sql do
    begin
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_ENI');
      SQL.Add('WHERE  PRO_CDRO = '''+edcdro.Text+'''');
      SQL.Add('AND    PRO_CDEP = '''+frmprincipal.parametrosID.AsString+'''');

      ibSP.StoredProcName := 'SP_SQL';
      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_est']);
      SQL.Add('WHERE  EST_CDRO = '''+edcdro.Text+'''');
      SQL.Add('AND    EST_FLAG = '''+flag+'''');

      ibSP.StoredProcName := 'SP_SQL';
      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    try
      rom_001.DisableControls;
      rom_001.First;
      while not rom_001.Eof do
      begin
        if rom_001PRO_FLAG.AsInteger = 0 then
        begin
          with frmprincipal.sp_sql do
          begin
            SQL.Clear;
            SQL.Add('UPDATE CAD_PRO');
            SQL.Add('SET    PRO_DMAP = '''+cbdmap.Text+'''');
            SQL.Add('WHERE  ID       = '''+rom_001PRO_IPRO.AsString+'''');

            ibSP.StoredProcName := 'SP_SQL';
            ibSP.Prepare;
            ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
            ibSP.ExecProc;
          end;

          ibSP.StoredProcName := 'SP_CAD_PRO_ENI';
          ibSP.Prepare;
          ibSP.ParamByName('id').Value   := 0;
          ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
          ibSP.ParamByName('cdro').Value := edcdro.Text;
          ibSP.ParamByName('item').Value := rom_001PRO_ITEM.Value;
          ibSP.ParamByName('cpro').Value := rom_001PRO_IPRO.AsInteger;
          ibSP.ParamByName('cpr2').Value := rom_001PRO_IPR2.AsInteger;
          ibSP.ParamByName('cdet').Value := rom_001PRO_CDET.AsString;
          ibSP.ParamByName('qtde').Value := rom_001PRO_QTDE.AsFloat;
          ibSP.ParamByName('dmap').Value := cbdmap.Text;
          ibSP.ParamByName('ctnr').Value := cbctnr.Text;
          ibSP.ParamByName('lote').Value := cblote.Text;
          ibSP.ExecProc;

          if (copy(cboper.Text,1,5) = 'ZERAR') and (frmprincipal.parametrosPAR_PECA.AsString = '1') then
          begin
            with frmprincipal.sp_sql do
            begin
              SQL.Clear;
              SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_est']);
              SQL.Add('WHERE  EST_CPRO = '''+rom_001PRO_IPRO.AsString+'''');
              SQL.Add('AND    EST_CRED > 0 AND EST_FLAG = ''E''');
              SQL.Add('AND    EST_CDPD IS NULL');

              ibSP.StoredProcName := 'SP_SQL';
              ibSP.Prepare;
              ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
              ibSP.ExecProc;
            end;
          end
          else
          begin
            if cboper.Text = 'DEFEITO' then
            begin
              ibSP.StoredProcName := 'SP_CAD_PRO_DEF';
              ibSP.Prepare;

              ibSP.ParamByName('est').Value  := 'CAD_PRO_DEF';
              if frmprincipal.parametrosID.AsInteger > 1 then
              ibSP.ParamByName('est').Value  := 'CAD_PRO_DEF_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

              ibSP.ParamByName('id').Value   := 0;
              ibSP.ParamByName('cdep').Value := edcfor.Text;
              ibSP.ParamByName('cdro').Value := edcdro.Text;
              ibSP.ParamByName('cdpd').Value := 0;
              ibSP.ParamByName('cdbx').Value := 0;
              ibSP.ParamByName('cpro').Value := rom_001PRO_IPRO.AsInteger;
              ibSP.ParamByName('cusu').Value := frmprincipal.cad_usuUSU_CUSU.AsInteger;
              ibSP.ParamByName('dusu').Value := frmprincipal.cad_usuUSU_DUSU.AsString;
              ibSP.ParamByName('cfav').Value := edcfor.Text;
              ibSP.ParamByName('dfav').Value := cbdfor.Text;
              ibSP.ParamByName('dcad').Value := eddcad.Date;
              ibSP.ParamByName('docu').Value := oStrZero(strtoint(edcdnf.Text),6);
              ibSP.ParamByName('flag').Value := flag;
              ibSP.ParamByName('cdet').Value := rom_001PRO_CDET.AsString;
              ibSP.ParamByName('dsep').Value := rom_001PRO_DSEP.AsString;
              ibSP.ParamByName('debi').Value := 0;
              ibSP.ParamByName('cred').Value := rom_001PRO_QTDE.AsFloat;
              ibSP.ParamByName('dmap').Value := cbdmap.Text;
              ibSP.ParamByName('ctnr').Value := cbctnr.Text;
              ibSP.ParamByName('lote').Value := cblote.Text;

              frmprincipal.Log_Eve('Produtos','Lançamentos de Produtos com Defeitos',copy(cboper.Text,1,1)+LOWERCASE(trim(copy(cboper.Text,2,Length(cboper.Text)))),rom_001PRO_CPRO.AsString,rom_001PRO_CPRO.AsString,LOWERCASE(rom_001PRO_DPRO.AsString),'','');
              ibSP.ExecProc;
            end
            else
            begin
              ibSP.StoredProcName := 'SP_CAD_PRO_EST';
              ibSP.Prepare;

              ibSP.ParamByName('est').Value  := 'CAD_PRO_EST';
              if frmprincipal.parametrosID.AsInteger > 1 then
              ibSP.ParamByName('est').Value  := 'CAD_PRO_EST_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

              ibSP.ParamByName('id').Value   := 0;
              ibSP.ParamByName('cdep').Value := edcfor.Text;
              ibSP.ParamByName('cdro').Value := edcdro.Text;
              ibSP.ParamByName('cdpd').Value := 0;
              ibSP.ParamByName('cdbx').Value := 0;
              ibSP.ParamByName('cpro').Value := rom_001PRO_IPRO.AsInteger;
              ibSP.ParamByName('cusu').Value := frmprincipal.cad_usuUSU_CUSU.AsInteger;
              ibSP.ParamByName('dusu').Value := frmprincipal.cad_usuUSU_DUSU.AsString;
              ibSP.ParamByName('cfav').Value := edcfor.Text;
              ibSP.ParamByName('dfav').Value := cbdfor.Text;
              ibSP.ParamByName('dcad').Value := eddcad.Date;
              ibSP.ParamByName('docu').Value := oStrZero(strtoint(edcdnf.Text),6);
              ibSP.ParamByName('flag').Value := flag;
              ibSP.ParamByName('cdet').Value := rom_001PRO_CDET.AsString;
              ibSP.ParamByName('dsep').Value := rom_001PRO_DSEP.AsString;
              ibSP.ParamByName('dmap').Value := cbdmap.Text;
              ibSP.ParamByName('ctnr').Value := cbctnr.Text;
              ibSP.ParamByName('lote').Value := cblote.Text;

              if (copy(cboper.Text,1,5) = 'ZERAR') then
              begin
                ibSP.ParamByName('cdet').Value := '9999999999';
                ibSP.ParamByName('dmap').Value := '';
                ibSP.ParamByName('ctnr').Value := '';
                ibSP.ParamByName('lote').Value := '';

                if rom_001PRO_QDIS.AsFloat < 0 then
                begin
                  ibSP.ParamByName('debi').Value := 0;
                  ibSP.ParamByName('cred').Value := rom_001PRO_QTDE.AsFloat;
                end
                else
                begin
                  ibSP.ParamByName('flag').Value := 'S';
                  ibSP.ParamByName('debi').Value := rom_001PRO_QTDE.AsFloat;
                  ibSP.ParamByName('cred').Value := 0;
                end;
              end
              else
              begin
                if (cboper.Text = 'ENTRADA') or (cboper.Text = 'DEVOLUÇÃO') then
                begin
                  ibSP.ParamByName('debi').Value := 0;
                  ibSP.ParamByName('cred').Value := rom_001PRO_QTDE.AsFloat;
                end
                else
                begin
                  ibSP.ParamByName('debi').Value := rom_001PRO_QTDE.AsFloat;
                  ibSP.ParamByName('cred').Value := 0;
                end;
              end;
              ibSP.ExecProc;
              frmprincipal.Log_Eve('Produtos','Lançamentos de Produtos',copy(cboper.Text,1,1)+LOWERCASE(trim(copy(cboper.Text,2,Length(cboper.Text)))),rom_001PRO_CPRO.AsString,rom_001PRO_CPRO.AsString,LOWERCASE(rom_001PRO_DPRO.AsString),'','');
            end;
          end;
        end;
        IBTra.CommitRetaining;
        rom_001.Next;
      end;
    except
      BSal.Enabled := true;
      IBTra.RollbackRetaining;
      messageBox(handle,'Problemas na gravação dos itens do romaneio !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar('P.D.V.'),MB_ICONERROR+MB_OK);
      Abort;
    end;
  finally
    IBTra.CommitRetaining;  
    edcdro.Text  := oStrZero(ID,5);
    BSal.Enabled := false;

    rom_001.First;
    rom_001.EnableControls;
  end;
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

procedure Tfrment_pro.rom_001BeforeCancel(DataSet: TDataSet);
begin
  edTXT.Text := '';
  if not dbgrom.CanFocus then
     edTXT.SetFocus;

  if rom_001.RecordCount = 0 then
  begin
    rom_001.Close;
    rom_001.Open;
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

  eddcad.Date := strtodate(SLPrincipal.Values['data_sistema']);
  edcfor.Text := frmprincipal.parametrosPAR_CCLI.AsString;
  cbdfor.Text := frmprincipal.parametrosPAR_FANT.AsString;

  with rom_001 do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM CAD_PRO_ENI');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_PRO_ENI');
    SelectSQL.Add('WHERE    PRO_FLAG = 0');
    SelectSQL.Add('ORDER BY ID');
    Open;
    tSHEILD.CommitRetaining;
  end;
end;

procedure Tfrment_pro.rom_001AfterOpen(DataSet: TDataSet);
begin
  siDEL.Enabled := true;
end;

procedure Tfrment_pro.rom_001AfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
  TOTAL;
end;

procedure Tfrment_pro.dbgromCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    AFont.Color := clBlack;
    AColor      := clWhite;

    if (AColumn = dbgromPRO_QDIS) or (AColumn = dbgromPRO_RDIS) or (AColumn = dbgromPRO_CDET) then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure Tfrment_pro.dtsrom_001DataChange(Sender: TObject; Field: TField);
begin
  if rom_001.State = dsBrowse then
  begin
    carregaFoto(rom_001PRO_FOTO.BlobSize,rom_001PRO_FOTO,rom_001);
    DISPLAY_GRID;
  end;  
end;

procedure Tfrment_pro.dbgromBackgroundDrawEvent(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect);
var
  Text : String;
begin
  with ACanvas do
  begin
    Brush.Color := clBtnShadow;
    FillRect(ARect);
    if (Sender as TdxDBGrid).GroupColumnCount = 0 then

    begin
      Font.Color := clMenu;
      Text := 'Arraste as colunas para poder agrupá-las.';
      TextOut(ARect.Left, ARect.Top, Text);
    end;
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

procedure Tfrment_pro.cboperChange(Sender: TObject);
begin
  if tag = 0 then
  begin
    dbgromPRO_CPR2.Visible := false;
    dbgromPRO_DPRO.Width   := dbgromPRO_DPRO.Tag;
    focus := 6;
    if cboper.Text = 'TRANSFERENCIA' then
    begin
      dbgromPRO_CPR2.Visible := true;
      dbgromPRO_DPRO.Width   := dbgromPRO_DPRO.Tag - dbgromPRO_CPR2.Width;      
      focus := 7
    end;
  end;

  latipo.Enabled := (cboper.Text = 'DEFEITO');
end;

procedure Tfrment_pro.edtqtrlKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrment_pro.edcdnfValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcdnf.Text = '' then
     edcdnf.Text := '0';

  edcdnf.Text := oStrZero(strtoint(edcdnf.Text),6);
  if edcdnf.Text <> '000000' then
     eddtnf.Date := strtodate(SLPrincipal.Values['data_sistema']);
end;

procedure Tfrment_pro.rom_001PRO_QTDEValidate(Sender: TField);
begin
  if cboper.Text = 'ENTRADA' then
  rom_001PRO_QEST.Value := rom_001PRO_QDIS.AsFloat + rom_001PRO_QTDE.AsFloat
  else
  rom_001PRO_QEST.Value := rom_001PRO_QDIS.AsFloat - rom_001PRO_QTDE.AsFloat;
end;

procedure Tfrment_pro.edcdnfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if edcdnf.Text = '000000' then
     edTXT.SetFocus;
end;

procedure Tfrment_pro.rom_001BeforePost(DataSet: TDataSet);
begin
  with consulta do
  begin
    if rom_001PRO_CDET.AsString = '' then
    begin
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_PRO_CDET, 1) FROM RDB$DATABASE');
      Open;
      IBtra.CommitRetaining;

      rom_001PRO_CDET.Value := oStrZero(fields[0].AsInteger,10);
    end;
  end;
end;

procedure Tfrment_pro.cbdforChange(Sender: TObject);
begin
  if (tag = 0) and (cbdfor.Text <> '') then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,PAR_RAZA FROM PAR_SIS');
    SQL.Add('WHERE  PAR_FANT = '''+cbdfor.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      cbdfor.SetFocus;
      raise exception.Create('Nome do fornecedor não encontrado !');
    end;
    edcfor.Text := fields[0].AsString;
    edrfor.Text := fields[1].AsString;
  end;
end;

procedure Tfrment_pro.rom_002AfterPost(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
  BSal.Enabled := true;
end;

procedure Tfrment_pro.edTXTExit(Sender: TObject);
begin
  if frmprincipal.parametrosPAR_PGRD.AsString <> '3' then
  edQTDE.SetFocus;
end;

procedure Tfrment_pro.edQTDEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  cpro: string;
begin
  if key = VK_RETURN then
  begin
    cpro := edTXT.Text;

    if cpro = '' then
    begin
      edTXT.SetFocus;
      raise exception.Create(cbCAMPO.Text+' não informado !');
    end;

    PESQUISA_PRODUTO(cbCAMPO.Text,cpro);
    if oTextToValor(edQTDE.Text) = 0 then
    edTXT.SetFocus;
  end;
end;

procedure Tfrment_pro.rom_002NewRecord(DataSet: TDataSet);
begin
  rom_002ID.Value       := 0;
  rom_002PRO_FLAG.Value := 0;
  rom_002PRO_CDRO.Value := 0;
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT MAX(PRO_ITEM) FROM CAD_PRO_ENI');
    SQL.Add('WHERE  PRO_FLAG = 0');
    Open;
    if fields[0].IsNull then
       rom_002PRO_ITEM.Value := '0001'
    else
       rom_002PRO_ITEM.Value := oStrZero(fields[0].AsInteger + 1,4);
  end;
end;

procedure Tfrment_pro.rom_002BeforePost(DataSet: TDataSet);
begin
  if rom_002PRO_CDET.AsString = '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_PRO_CDET, 1) FROM RDB$DATABASE');
    Open;
    IBtra.CommitRetaining;
    
    rom_002PRO_CDET.Value := oStrZero(fields[0].AsInteger,10);
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
        rom_001.Append;
        rom_001PRO_DPRO.Value := frmimporta_geral.imp_iteROM_DPRO.Value;
        rom_001PRO_IPRO.Value := frmimporta_geral.imp_iteROM_IPRO.Value;
        rom_001PRO_IPR2.Value := frmimporta_geral.imp_iteROM_IPR2.Value;
        rom_001PRO_CART.Value := frmimporta_geral.imp_iteROM_CART.Value;
        rom_001PRO_CPRO.Value := frmimporta_geral.imp_iteROM_CPRO.Value;
        rom_001PRO_CPR2.Value := frmimporta_geral.imp_iteROM_CPR2.Value;
        rom_001PRO_CCOR.Value := frmimporta_geral.imp_iteROM_CCOR.Value;
        rom_001PRO_DCOR.Value := frmimporta_geral.imp_iteROM_DCOR.Value;
        rom_001PRO_CCO2.Value := frmimporta_geral.imp_iteROM_CCO2.Value;
        rom_001PRO_DCO2.Value := frmimporta_geral.imp_iteROM_DCO2.Value;
        rom_001PRO_DUNI.Value := frmimporta_geral.imp_iteROM_DUNI.Value;
        rom_001PRO_FOTO.Value := frmimporta_geral.imp_iteROM_FOTO.Value;
        rom_001PRO_CBAR.Value := frmimporta_geral.imp_iteROM_CBAR.Value;
        rom_001PRO_PPRO.Value := frmimporta_geral.imp_iteROM_PPRO.Value;
        rom_001PRO_METR.Value := frmimporta_geral.imp_iteROM_METR.Value;
        rom_001PRO_PESO.Value := frmimporta_geral.imp_iteROM_PESO.Value;
        rom_001PRO_REND.Value := frmimporta_geral.imp_iteROM_REND.Value;
        rom_001PRO_PSCN.Value := frmimporta_geral.imp_iteROM_PSCN.Value;
        rom_001PRO_PSMR.Value := frmimporta_geral.imp_iteROM_PSMR.Value;
        rom_001PRO_QDIS.Value := frmimporta_geral.imp_iteROM_QDIS.Value;
        rom_001PRO_RDIS.Value := frmimporta_geral.imp_iteROM_RLDI.Value;
        rom_001PRO_QTDE.Value := frmimporta_geral.imp_iteROM_QTDE.Value;
        rom_001PRO_QTRL.Value := frmimporta_geral.imp_iteROM_QTRL.Value;
        rom_001.Post;
        frmimporta_geral.imp_ite.Next;
      end;
    end;
  finally
    freeandNil(frmimporta_geral);
    frmimporta_geral.Free;
  end;
end;

procedure Tfrment_pro.cboperExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
   with consulta do
   begin
     SQL.Clear;
     SQL.Add('SELECT LAN_DESC FROM TAB_LAN');
     SQL.Add('WHERE  LAN_TIPO = '''+cboper.Text+'''');
     Open;
   end;

   cbtipo.Descriptions.Clear;
   cbtipo.Values.Clear;
   while not consulta.Eof do
   begin
     cbtipo.Descriptions.Add(consulta.Fields[0].AsString);
     cbtipo.Values.Add(consulta.Fields[0].AsString);
     consulta.Next;
   end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrment_pro.pro_fotoClick(Sender: TObject);
begin
  frmcad_pro_img := tfrmcad_pro_img.create(self);
  try
    frmcad_pro_img.carregaFoto2(rom_001PRO_FOTO.BlobSize,rom_001PRO_FOTO,rom_001,frmprincipal.parametros);
    frmcad_pro_img.Caption := rom_001PRO_DPRO.AsString;
    frmcad_pro_img.showmodal;
  finally
    FreeAndNil(frmcad_pro_img);
    frmcad_pro_img.free;
  end;
end;

end.


