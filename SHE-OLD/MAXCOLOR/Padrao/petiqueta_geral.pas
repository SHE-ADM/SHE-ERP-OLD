unit petiqueta_geral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, ImgList, StdCtrls,
  ComCtrls, ExtCtrls,  dxDBGrid, dxDBCtrl, dxEditor, dxExEdtr, dxEdLib,
  QRCtrls, QuickRpt, IBDatabase, DateUtils, dxPageControl, dxCntner,
  dxTL, math, dxDBTLCl, dxGrClms, Buttons, rxSpeedbar;

type
  Tfrmetiqueta_geral = class(TForm)
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    BSai: TSpeedItem;
    BVis: TSpeedItem;
    BPri: TSpeedItem;
    BSav: TSpeedItem;
    consulta: TIBQuery;
    imageOPC: TImageList;
    ibTRA: TIBTransaction;
    aux: TIBQuery;
    pnltop: TPanel;
    Panel9: TPanel;
    pnlbot: TPanel;
    imageOPC3: TImageList;
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
    dbgrom: TdxDBGrid;
    rom_001: TIBDataSet;
    dtsrom_001: TDataSource;
    tSHEILD: TIBTransaction;
    rom_001ID: TIntegerField;
    rom_001PRO_CART: TIBStringField;
    rom_001PRO_CPRO: TIBStringField;
    rom_001PRO_CFOR: TIBStringField;
    rom_001PRO_CBAR: TIBStringField;
    rom_001PRO_CDET: TIBStringField;
    rom_001PRO_DPRO: TIBStringField;
    rom_001PRO_COMP: TIBStringField;
    rom_001PRO_CCOR: TIntegerField;
    rom_001PRO_RCOR: TIBStringField;
    rom_001PRO_DCOR: TIBStringField;
    rom_001PRO_DUNI: TIBStringField;
    rom_001PRO_PRN1: TBlobField;
    rom_001PRO_PRN2: TBlobField;
    rom_001PRO_PRN3: TBlobField;
    rom_001PRO_PRN4: TBlobField;
    rom_001PRO_PRN5: TBlobField;
    rom_001PRO_PRN6: TBlobField;
    rom_001PRO_PRN7: TBlobField;
    rom_001PRO_FOTO: TBlobField;
    rom_001PRO_OBSE: TMemoField;
    rom_001PRO_INST: TIBStringField;
    rom_001PRO_LARG: TIBBCDField;
    rom_001PRO_METR: TIBBCDField;
    rom_001PRO_REND: TIBBCDField;
    rom_001PRO_STLN: TIBStringField;
    rom_001PRO_GRAM: TIBBCDField;
    consulta_s: TIBQuery;
    rgTIPO: TRadioGroup;
    rom_001PRO_CDRO: TIntegerField;
    rom_001PRO_IPRO: TIntegerField;
    rom_001PRO_IPR2: TIntegerField;
    rom_001PRO_ITEM: TIBStringField;
    rom_001PRO_CPR2: TIBStringField;
    rom_001PRO_CCOL: TIntegerField;
    rom_001PRO_DCOL: TIBStringField;
    rom_001PRO_CGRP: TIntegerField;
    rom_001PRO_RGRP: TIBStringField;
    rom_001PRO_DGRP: TIBStringField;
    rom_001PRO_REST: TSmallintField;
    rom_001PRO_RPRG: TSmallintField;
    rom_001PRO_RDIS: TSmallintField;
    rom_001PRO_QTRL: TSmallintField;
    rom_001PRO_QEST: TIBBCDField;
    rom_001PRO_QPRG: TIBBCDField;
    rom_001PRO_QDIS: TIBBCDField;
    rom_001PRO_DORI: TIBStringField;
    rom_001PRO_FLAG: TSmallintField;
    rom_001PRO_CDNF: TIntegerField;
    rom_001PRO_QTDE: TIBBCDField;
    rom_001PRO_CCAT: TIntegerField;
    rom_001PRO_RCAT: TIBStringField;
    rom_001PRO_DCAT: TIBStringField;
    siLI: TSpeedItem;
    rom_001PRO_STAT: TStringField;
    dbgromPRO_CPRO: TdxDBGridMaskColumn;
    dbgromPRO_DCOR: TdxDBGridPickColumn;
    dbgromPRO_DPRO: TdxDBGridMaskColumn;
    dbgromPRO_DUNI: TdxDBGridPickColumn;
    dbgromPRO_LARG: TdxDBGridMaskColumn;
    dbgromPRO_METR: TdxDBGridMaskColumn;
    dbgromPRO_REND: TdxDBGridMaskColumn;
    dbgromPRO_GRAM: TdxDBGridMaskColumn;
    dbgromPRO_DORI: TdxDBGridPickColumn;
    dbgromPRO_CDNF: TdxDBGridMaskColumn;
    dbgromPRO_OBSE: TdxDBGridBlobColumn;
    dbgromPRO_STAT: TdxDBGridPickColumn;
    Panel1: TPanel;
    rgpsqp: TGroupBox;
    Label11: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    edTXT: TdxMaskEdit;
    laqtde: TLabel;
    edqtde: TdxMaskEdit;
    rgpsqd: TGroupBox;
    dxDT1: TdxDateEdit;
    dxDT2: TdxDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    sbpsqp: TSpeedButton;
    sbpsqd: TSpeedButton;
    cbCAMPO: TdxImageEdit;
    cbstat: TdxImageEdit;
    rom_001PRO_PESO: TIBBCDField;
    dbgromPRO_PESO: TdxDBGridMaskColumn;
    cbDATA: TdxImageEdit;
    qprn_car_mat_cor: TQuickRep;
    QRBand8: TQRBand;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    qrgrom_dven: TQRGroup;
    qrllarg: TQRLabel;
    QRDBText30: TQRDBText;
    qrldbrend: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText33: TQRDBText;
    QRShape1: TQRShape;
    QRDBRichText2: TQRDBRichText;
    QRLabel27: TQRLabel;
    QRDBText42: TQRDBText;
    qrlcomp1: TQRLabel;
    qrlcomp2: TQRLabel;
    QRDBText32: TQRDBText;
    qrgrom_drep: TQRGroup;
    QRChildBand3: TQRChildBand;
    rom_002: TIBDataSet;
    rom_001PRO_SEQU: TSmallintField;
    dbgromPRO_SEQU: TdxDBGridMaskColumn;
    Label2: TLabel;
    cbobs: TdxImageEdit;
    qrpeti_ide_mat: TQuickRep;
    QRChildBand1: TQRChildBand;
    DetailBand1: TQRBand;
    qrlicnpj: TQRLabel;
    qrliraza: TQRLabel;
    qrlindu: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    qrliqtde: TQRLabel;
    rom_001PRO_PRN8: TBlobField;
    qprn_car_mat_sem: TQuickRep;
    QRBand1: TQRBand;
    QRChildBand2: TQRChildBand;
    QRDBText5: TQRDBText;
    qrlcomp3: TQRLabel;
    qrlcomp4: TQRLabel;
    QRDBText9: TQRDBText;
    qrlrend: TQRLabel;
    QRDBText3: TQRDBText;
    rom_001PRO_UTIL: TIBBCDField;
    qrpeti_ide_las: TQuickRep;
    QRChildBand4: TQRChildBand;
    QRBand2: TQRBand;
    qrlraza: TQRLabel;
    qrlcnpj: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBImage1: TQRDBImage;
    QRDBImage2: TQRDBImage;
    QRDBImage3: TQRDBImage;
    QRDBImage4: TQRDBImage;
    QRDBImage6: TQRDBImage;
    QRDBImage5: TQRDBImage;
    QRDBImage7: TQRDBImage;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    rom_002ID: TIntegerField;
    rom_002PRO_CDRO: TIntegerField;
    rom_002PRO_IPRO: TIntegerField;
    rom_002PRO_IPR2: TIntegerField;
    rom_002PRO_CDNF: TIntegerField;
    rom_002PRO_ITEM: TIBStringField;
    rom_002PRO_CART: TIBStringField;
    rom_002PRO_CPRO: TIBStringField;
    rom_002PRO_CPR2: TIBStringField;
    rom_002PRO_CFOR: TIBStringField;
    rom_002PRO_CDET: TIBStringField;
    rom_002PRO_CBAR: TIBStringField;
    rom_002PRO_DPRO: TIBStringField;
    rom_002PRO_COMP: TIBStringField;
    rom_002PRO_DUNI: TIBStringField;
    rom_002PRO_CCOR: TIntegerField;
    rom_002PRO_RCOR: TIBStringField;
    rom_002PRO_DCOR: TIBStringField;
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
    rom_002PRO_GRAM: TIBBCDField;
    rom_002PRO_LARG: TIBBCDField;
    rom_002PRO_METR: TIBBCDField;
    rom_002PRO_REND: TIBBCDField;
    rom_002PRO_DORI: TIBStringField;
    rom_002PRO_INST: TIBStringField;
    rom_002PRO_STLN: TIBStringField;
    rom_002PRO_PRN1: TBlobField;
    rom_002PRO_PRN2: TBlobField;
    rom_002PRO_PRN3: TBlobField;
    rom_002PRO_PRN4: TBlobField;
    rom_002PRO_PRN5: TBlobField;
    rom_002PRO_PRN6: TBlobField;
    rom_002PRO_PRN7: TBlobField;
    rom_002PRO_PRN8: TBlobField;
    rom_002PRO_FOTO: TBlobField;
    rom_002PRO_OBSE: TMemoField;
    rom_002PRO_FLAG: TSmallintField;
    rom_002PRO_PREC: TFloatField;
    rom_002PRO_PESO: TIBBCDField;
    rom_002PRO_SEQU: TSmallintField;
    rom_002PRO_UTIL: TIBBCDField;
    rom_001PRO_PREC: TFloatField;
    psq_pro: TIBQuery;
    psq_proQFIS: TFloatField;
    psq_proRFIS: TIntegerField;
    psq_proQRES: TFloatField;
    psq_proRRES: TIntegerField;
    psq_proQSEP: TFloatField;
    psq_proRSEP: TIntegerField;
    psq_proQDIS: TFloatField;
    psq_proRDIS: TIntegerField;
    psq_proPDIS: TFloatField;
    psq_proPPRC: TCurrencyField;
    psq_proID: TIntegerField;
    psq_proPRO_CART: TIBStringField;
    psq_proPRO_CPRO: TIBStringField;
    psq_proPRO_DPRO: TIBStringField;
    psq_proPRO_CCOR: TIntegerField;
    psq_proPRO_DCOR: TIBStringField;
    psq_proPRO_DUNI: TIBStringField;
    psq_proPRO_FOTO: TBlobField;
    psq_proPRO_CBAR: TIBStringField;
    psq_proPRO_STA: TIBStringField;
    psq_proPRO_OBSE: TMemoField;
    psq_proPRO_UTIL: TIBBCDField;
    psq_proFOR_FANT: TIBStringField;
    psq_proPRO_CEMB: TIntegerField;
    psq_proPRO_GRAD: TIBStringField;
    psq_proPRO_CCLF: TIBStringField;
    psq_proPRO_CCST: TIBStringField;
    psq_proPRO_DCAT: TIBStringField;
    psq_proPRO_DGRP: TIBStringField;
    psq_proPRO_APRC: TIBStringField;
    psq_proPRO_LDSC: TIBBCDField;
    psq_proPRO_CFOR: TIBStringField;
    psq_proPRO_DORI: TIBStringField;
    psq_proPRO_STAV: TIBStringField;
    psq_proPRO_PREC: TFloatField;
    psq_proPRO_PPRO: TFloatField;
    psq_proPRO_PDSC: TIBBCDField;
    psq_proPRO_VPRC: TFloatField;
    psq_proPRO_VPRO: TFloatField;
    psq_proPRO_VDSC: TIBBCDField;
    psq_proPRO_RPRC: TFloatField;
    psq_proPRO_RPRO: TFloatField;
    psq_proPRO_RDSC: TIBBCDField;
    psq_proPRO_PCOM: TFloatField;
    psq_proPRO_CUST: TFloatField;
    psq_proPRO_PCOR: TIBStringField;
    psq_proPRO_SPRC: TFloatField;
    psq_proPRO_METR: TIBBCDField;
    psq_proPRO_REND: TIBBCDField;
    psq_proPRO_PESO: TIBBCDField;
    psq_proPRO_PSCN: TIBBCDField;
    psq_proPRO_PSMR: TIBBCDField;
    psq_proPRO_STLN: TIBStringField;
    psq_proPRO_LARG: TIBBCDField;
    psq_proPRO_GRAM: TIBBCDField;
    psq_proPRO_COMP: TIBStringField;
    psq_proPRO_PIPI: TSmallintField;
    psq_proPRO_REPR: TIBStringField;
    psq_proPRO_APRO: TMemoField;
    psq_proPRO_INS1: TBlobField;
    psq_proPRO_INS2: TBlobField;
    psq_proPRO_INS3: TBlobField;
    psq_proPRO_INS4: TBlobField;
    psq_proPRO_INS5: TBlobField;
    psq_proPRO_INS6: TBlobField;
    psq_proPRO_INS7: TBlobField;
    psq_proPRO_INS8: TBlobField;
    psq_proPRO_QEST: TIBBCDField;
    psq_proPRO_REST: TLargeintField;
    psq_proPRO_QEST2: TIBBCDField;
    psq_proPRO_REST2: TLargeintField;
    psq_proPRO_QEST3: TIBBCDField;
    psq_proPRO_REST3: TLargeintField;
    psq_proPRO_QEST4: TIBBCDField;
    psq_proPRO_REST4: TLargeintField;
    psq_proPRO_QEST5: TIBBCDField;
    psq_proPRO_REST5: TLargeintField;
    psq_proPRO_QEST6: TIBBCDField;
    psq_proPRO_REST6: TLargeintField;
    psq_proPRO_QEST7: TIBBCDField;
    psq_proPRO_REST7: TLargeintField;
    psq_proPRO_QEST8: TIBBCDField;
    psq_proPRO_REST8: TLargeintField;
    psq_proPRO_QEST9: TIBBCDField;
    psq_proPRO_REST9: TLargeintField;
    psq_proPRO_QRES: TIBBCDField;
    psq_proPRO_RRES: TLargeintField;
    psq_proPRO_QRES2: TIBBCDField;
    psq_proPRO_RRES2: TLargeintField;
    psq_proPRO_QRES3: TIBBCDField;
    psq_proPRO_RRES3: TLargeintField;
    psq_proPRO_QRES4: TIBBCDField;
    psq_proPRO_RRES4: TLargeintField;
    psq_proPRO_QRES5: TIBBCDField;
    psq_proPRO_RRES5: TLargeintField;
    psq_proPRO_QRES6: TIBBCDField;
    psq_proPRO_RRES6: TLargeintField;
    psq_proPRO_QRES7: TIBBCDField;
    psq_proPRO_RRES7: TLargeintField;
    psq_proPRO_QRES8: TIBBCDField;
    psq_proPRO_RRES8: TLargeintField;
    psq_proPRO_QRES9: TIBBCDField;
    psq_proPRO_RRES9: TLargeintField;
    psq_proPRO_QSEP: TIBBCDField;
    psq_proPRO_RSEP: TLargeintField;
    psq_proPRO_QSEP2: TIBBCDField;
    psq_proPRO_RSEP2: TLargeintField;
    psq_proPRO_QSEP3: TIBBCDField;
    psq_proPRO_RSEP3: TLargeintField;
    psq_proPRO_QSEP4: TIBBCDField;
    psq_proPRO_RSEP4: TLargeintField;
    psq_proPRO_QSEP5: TIBBCDField;
    psq_proPRO_RSEP5: TLargeintField;
    psq_proPRO_QSEP6: TIBBCDField;
    psq_proPRO_RSEP6: TLargeintField;
    psq_proPRO_QSEP7: TIBBCDField;
    psq_proPRO_RSEP7: TLargeintField;
    psq_proPRO_QSEP8: TIBBCDField;
    psq_proPRO_RSEP8: TLargeintField;
    psq_proPRO_QSEP9: TIBBCDField;
    psq_proPRO_RSEP9: TLargeintField;
    psq_proPRO_QPRG: TIBBCDField;
    psq_proPRO_RPRG: TLargeintField;
    psq_proPRO_QPRC: TIBBCDField;
    psq_proPRO_QPRD: TIBBCDField;
    psq_proPRO_RPRC1: TLargeintField;
    psq_proPRO_QDEF: TIBBCDField;
    psq_proPRO_RDEF: TLargeintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSaiClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgromKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure siINCClick(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure siCANClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure rom_001AfterCancel(DataSet: TDataSet);
    procedure rom_001AfterDelete(DataSet: TDataSet);
    procedure rom_001AfterEdit(DataSet: TDataSet);
    procedure rom_001AfterOpen(DataSet: TDataSet);
    procedure rom_001AfterPost(DataSet: TDataSet);
    procedure rom_001BeforeCancel(DataSet: TDataSet);
    procedure rom_001NewRecord(DataSet: TDataSet);
    procedure BVisClick(Sender: TObject);
    procedure BSavClick(Sender: TObject);
    procedure psq_proCalcFields(DataSet: TDataSet);
    procedure siLIClick(Sender: TObject);
    procedure sbpsqpClick(Sender: TObject);
    procedure edTXTExit(Sender: TObject);
    procedure edqtdeExit(Sender: TObject);
    procedure rom_001CalcFields(DataSet: TDataSet);
    procedure sbpsqdClick(Sender: TObject);
    procedure rom_001BeforePost(DataSet: TDataSet);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrgrom_dvenBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    procedure ABRE_TABELA;
    procedure PESQUISA_PRODUTO(campo,cpro:string);
  public
    { Public declarations }
    procedure IMPRIME_IDENTIFICACAO1;
    procedure IMPRIME_IDENTIFICACAO2;
    procedure IMPRIME_CARTELA_COM_COR;
    procedure IMPRIME_CARTELA_SEM_COR;
    procedure IMPRIME_CODIGO_BARRA;
    procedure IMPRIME_CATALOGO;
    procedure CLONE_PRODUTO;
  end;

var
  frmetiqueta_geral: Tfrmetiqueta_geral;
  neti: integer;

implementation

uses p_funcoes, uPrincipal, pcad_pro_con, parquivo_geral;

{$R *.dfm}

procedure Tfrmetiqueta_geral.CLONE_PRODUTO;
var
  i: word;
begin
  try
    with rom_002 do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_PRO_ETI');
      SelectSQL.Add('ORDER BY ID');
      Open;
    end;

    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT MAX(PRO_QTDE) FROM CAD_PRO_ETI');
      Open;

      neti := fields[0].AsInteger;

      SQL.Clear;
      SQL.Add('SELECT   PRO_CPRO FROM CAD_PRO_ETI');
      SQL.Add('GROUP BY PRO_CPRO');
      Open;
    end;

    for i := 1 to strtoint(edqtde.Text) do
    begin
      inc(neti);

      consulta_S.First;
      while not consulta_S.Eof do
      begin
        with rom_001 do
        begin
          Close;
          SelectSQL.Clear;
          SelectSQL.Add('SELECT * FROM CAD_PRO_ETI');
          SelectSQL.Add('WHERE PRO_CPRO = '''+consulta_S.Fields[0].AsString+'''');
          Open;
        end;

        rom_002.Append;
        rom_002ID.Value       := 0;
        rom_002PRO_CDRO.Value := rom_001PRO_CDRO.Value;
        rom_002PRO_IPRO.Value := rom_001PRO_IPRO.Value;
        rom_002PRO_IPR2.Value := rom_001PRO_IPR2.Value;
        rom_002PRO_CDNF.Value := rom_001PRO_CDNF.Value;
        rom_002PRO_ITEM.Value := rom_001PRO_ITEM.Value;
        rom_002PRO_CART.Value := rom_001PRO_CART.Value;
        rom_002PRO_CPRO.Value := rom_001PRO_CPRO.Value;
        rom_002PRO_CPR2.Value := rom_001PRO_CPR2.Value;
        rom_002PRO_CFOR.Value := rom_001PRO_CFOR.Value;
        rom_002PRO_CDET.Value := rom_001PRO_CDET.Value;
        rom_002PRO_CBAR.Value := rom_001PRO_CBAR.Value;
        rom_002PRO_DPRO.Value := rom_001PRO_DPRO.Value;
        rom_002PRO_COMP.Value := rom_001PRO_COMP.Value;
        rom_002PRO_DUNI.Value := rom_001PRO_DUNI.Value;
        rom_002PRO_CCOR.Value := rom_001PRO_CCOR.Value;
        rom_002PRO_RCOR.Value := rom_001PRO_RCOR.Value;
        rom_002PRO_DCOR.Value := rom_001PRO_DCOR.Value;
        rom_002PRO_CCOL.Value := rom_001PRO_CCOL.Value;
        rom_002PRO_DCOL.Value := rom_001PRO_DCOL.Value;
        rom_002PRO_CGRP.Value := rom_001PRO_CGRP.Value;
        rom_002PRO_RGRP.Value := rom_001PRO_RGRP.Value;
        rom_002PRO_DGRP.Value := rom_001PRO_DGRP.Value;
        rom_002PRO_CCAT.Value := rom_001PRO_CCAT.Value;
        rom_002PRO_RCAT.Value := rom_001PRO_RCAT.Value;
        rom_002PRO_DCAT.Value := rom_001PRO_DCAT.Value;
        rom_002PRO_REST.Value := rom_001PRO_REST.Value;
        rom_002PRO_RPRG.Value := rom_001PRO_RPRG.Value;
        rom_002PRO_RDIS.Value := rom_001PRO_RDIS.Value;
        rom_002PRO_QTRL.Value := rom_001PRO_QTRL.Value;
        rom_002PRO_QEST.Value := rom_001PRO_QEST.Value;
        rom_002PRO_QPRG.Value := rom_001PRO_QPRG.Value;
        rom_002PRO_QDIS.Value := rom_001PRO_QDIS.Value;
        rom_002PRO_QTDE.Value := rom_001PRO_QTDE.Value;
        rom_002PRO_GRAM.Value := rom_001PRO_GRAM.Value;
        rom_002PRO_LARG.Value := rom_001PRO_LARG.Value;
        rom_002PRO_UTIL.Value := rom_001PRO_UTIL.Value;
        rom_002PRO_METR.Value := rom_001PRO_METR.Value;
        rom_002PRO_REND.Value := rom_001PRO_REND.Value;
        rom_002PRO_DORI.Value := rom_001PRO_DORI.Value;
        rom_002PRO_INST.Value := rom_001PRO_INST.Value;
        rom_002PRO_STLN.Value := rom_001PRO_STLN.Value;
        rom_002PRO_PRN1.Value := rom_001PRO_PRN1.Value;
        rom_002PRO_PRN2.Value := rom_001PRO_PRN2.Value;
        rom_002PRO_PRN3.Value := rom_001PRO_PRN3.Value;
        rom_002PRO_PRN4.Value := rom_001PRO_PRN4.Value;
        rom_002PRO_PRN5.Value := rom_001PRO_PRN5.Value;
        rom_002PRO_PRN6.Value := rom_001PRO_PRN6.Value;
        rom_002PRO_PRN7.Value := rom_001PRO_PRN7.Value;
        rom_002PRO_PRN8.Value := rom_001PRO_PRN8.Value;
        rom_002PRO_FOTO.Value := rom_001PRO_FOTO.Value;
        rom_002PRO_OBSE.Value := TRIM(rom_001PRO_OBSE.AsString);
        rom_002PRO_FLAG.Value := rom_001PRO_FLAG.Value;
        rom_002PRO_PREC.Value := rom_001PRO_PREC.Value;
        rom_002PRO_PESO.Value := rom_001PRO_PESO.Value;
        rom_002PRO_QTDe.Value := neti;
        rom_002.Post;
        consulta_S.Next;
      end;
    end;
  finally
    tSHEILD.CommitRetaining;
    frmetiqueta_geral.tag := 0;

    rom_002.Close;
    with rom_001 do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_PRO_ETI');
      SelectSQL.Add('ORDER BY ID');
      Open;
    end;
  end;

end;

procedure Tfrmetiqueta_geral.IMPRIME_IDENTIFICACAO1;
begin
  frmprincipal.FazPrnAtualVirarDefault('Etiqueta de Identificação');

  qrlraza.Caption := frmprincipal.parametrosPAR_RAZA.AsString;
  qrlcnpj.Caption := copy(frmprincipal.parametrosPAR_CNPJ.AsString,1,2)+'.'+copy(frmprincipal.parametrosPAR_CNPJ.AsString,3,3)+'.'+
                     copy(frmprincipal.parametrosPAR_CNPJ.AsString,6,3)+'/'+copy(frmprincipal.parametrosPAR_CNPJ.AsString,9,4)+'-'+
                     copy(frmprincipal.parametrosPAR_CNPJ.AsString,13,2);
  qrpeti_ide_las.Prepare;
  if tag = 0 then
  qrpeti_ide_las.Preview
  else if tag = 1 then
  qrpeti_ide_las.Print;
end;

procedure Tfrmetiqueta_geral.IMPRIME_CARTELA_COM_COR;
begin
  frmprincipal.FazPrnAtualVirarDefault('Etiqueta de Cor');

  qprn_car_mat_cor.Prepare;
  if tag = 0 then
     qprn_car_mat_cor.Preview
  else if tag = 1 then
     qprn_car_mat_cor.Print
  else if tag = 2 then
  begin
//    frmarquivo_geral.expPDF.Report := qprn_car_mat_cor;
//    frmarquivo_geral.expPDF.ExportQRPDF(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text),false);
  end;
end;

procedure Tfrmetiqueta_geral.IMPRIME_CARTELA_SEM_COR;
begin
  frmprincipal.FazPrnAtualVirarDefault('Etiqueta de Cor');

  qprn_car_mat_sem.Prepare;
  if tag = 0 then
     qprn_car_mat_sem.Preview
  else if tag = 1 then
     qprn_car_mat_sem.Print
  else if tag = 2 then
  begin
//    frmarquivo_geral.expPDF.Report := qprn_car_mat_sem;
//    frmarquivo_geral.expPDF.ExportQRPDF(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text),false);
  end;
end;

procedure Tfrmetiqueta_geral.IMPRIME_IDENTIFICACAO2;
begin
  frmprincipal.FazPrnAtualVirarDefault('Etiqueta de Cor');

  qrliraza.Caption := frmprincipal.parametrosPAR_FANT.AsString;
  qrlicnpj.Caption := 'CNPJ: '+copy(frmprincipal.parametrosPAR_CNPJ.AsString,1,2)+'.'+copy(frmprincipal.parametrosPAR_CNPJ.AsString,3,3)+'.'+
                               copy(frmprincipal.parametrosPAR_CNPJ.AsString,6,3)+'/'+copy(frmprincipal.parametrosPAR_CNPJ.AsString,9,4)+'-'+
                               copy(frmprincipal.parametrosPAR_CNPJ.AsString,13,2);

  qrpeti_ide_mat.Prepare;
  if tag = 0 then
     qrpeti_ide_mat.Preview
  else if tag = 1 then
     qrpeti_ide_mat.Print
  else if tag = 2 then
  begin
//    frmarquivo_geral.expPDF.Report := qrpeti_ide_mat;
//    frmarquivo_geral.expPDF.ExportQRPDF(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text),false);
  end;
end;

procedure Tfrmetiqueta_geral.IMPRIME_CATALOGO;
begin
end;

procedure Tfrmetiqueta_geral.IMPRIME_CODIGO_BARRA;
begin
end;

procedure Tfrmetiqueta_geral.PESQUISA_PRODUTO(campo,cpro:string);
var
  cField,cData: string;
  i: word;
begin
  cField := '';
  if campo = 'Referencia' then
     cField := 'CAD_PRO.PRO_CART'
  else if campo = 'Produto' then
     cField := 'PRO_CPRO'
  else if campo = 'Ref. Fornecedor' then
     cField := 'PRO_CFOR'
  else if campo = 'Categoria' then
     cField := 'PRO_DCAT'
  else if campo = 'Grupo' then
     cField := 'PRO_DGRP'
  else if campo = 'Coleção' then
     cField := 'PRO_DCOL';

  cData := '';
  if cbDATA.Text = 'Cadastro' then
     cData := 'CAD_PRO.PRO_DCAD'
  else if cbDATA.Text = 'Alteração' then
     cData := 'CAD_PRO.PRO_DALT'
  else if cbDATA.Text = 'Programação' then
     cData := 'CAD_PRO.PRO_DPRG'
  else if cbDATA.Text = 'Entrada' then
     cData := 'CAD_PRO.PRO_DENT'
  else if cbDATA.Text = 'Venda' then
     cData := 'CAD_PRO.PRO_DULT';

  with psq_pro do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CAD_PRO.ID      ,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DPRO,CAD_PRO.PRO_CCOR,CAD_PRO.PRO_DCOR,');
    SQL.Add('         CAD_PRO.PRO_DUNI,CAD_PRO_IMG.PRO_FOTO,CAD_PRO.PRO_CBAR,CAD_PRO.PRO_STA,CAD_PRO.PRO_OBSE,CAD_PRO.PRO_UTIL,FOR_FANT,');
    SQL.Add('         CAD_PRO.PRO_CEMB,CAD_PRO.PRO_GRAD,CAD_PRO.PRO_CCLF,CAD_PRO.PRO_CCST,CAD_PRO.PRO_DCAT,CAD_PRO.PRO_DGRP,CAD_PRO.PRO_APRC,CAD_PRO.PRO_LDSC,');
    SQL.Add('         CAD_PRO.PRO_CFOR,CAD_PRO.PRO_DORI,CAD_PRO.PRO_STAV,');
    SQL.Add('         CAD_PRO.PRO_PREC,CAD_PRO.PRO_PPRO,CAD_PRO.PRO_PDSC,');
    SQL.Add('         CAD_PRO.PRO_VPRC,CAD_PRO.PRO_VPRO,CAD_PRO.PRO_VDSC,');
    SQL.Add('         CAD_PRO.PRO_RPRC,CAD_PRO.PRO_RPRO,CAD_PRO.PRO_RDSC,');
    SQL.Add('         CAD_PRO.PRO_PCOM,CAD_PRO.PRO_CUST,CAD_PRO.PRO_PCOR,');
    SQL.Add('         CAD_PRO.PRO_SPRC,');
    SQL.Add('         CAD_PRO.PRO_METR,CAD_PRO.PRO_REND,CAD_PRO.PRO_PESO,CAD_PRO.PRO_PSCN,CAD_PRO.PRO_PSMR,CAD_PRO.PRO_STLN,');
    SQL.Add('         CAD_PRO.PRO_LARG,CAD_PRO.PRO_GRAM,CAD_PRO.PRO_COMP,CAD_PRO.PRO_PIPI,CAD_PRO.PRO_REPR,CAD_PRO.PRO_APRO,');
    SQL.Add('         CAD_PRO_IMG.PRO_INS1,CAD_PRO_IMG.PRO_INS2,CAD_PRO_IMG.PRO_INS3,CAD_PRO_IMG.PRO_INS4,CAD_PRO_IMG.PRO_INS5,');
    SQL.Add('         CAD_PRO_IMG.PRO_INS6,CAD_PRO_IMG.PRO_INS7,CAD_PRO_IMG.PRO_INS8,');

    if frmprincipal.parametrosPAR_PECA.AsString = '1' then
    begin
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST     WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST     WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_002 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST2,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_002 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST2,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_003 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST3,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_003 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST3,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_004 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST4,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_004 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST4,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_005 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST5,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_005 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST5,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_006 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST6,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_006 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST6,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_007 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST7,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_007 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST7,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_008 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST8,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_008 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST8,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_009 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST9,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_009 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST9,');
    end
    else
    begin
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
    end;

    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_002 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES2,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_002 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES2,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_003 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES3,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_003 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES3,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_004 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES4,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_004 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES4,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_005 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES5,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_005 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES5,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_006 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES6,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_006 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES6,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_007 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES7,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_007 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES7,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_008 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES8,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_008 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES8,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_009 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES9,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_009 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES9,');

    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP     WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP     WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_002 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP2,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_002 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP2,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_003 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP3,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_003 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP3,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_004 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP4,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_004 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP4,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_005 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP5,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_005 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP5,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_006 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP6,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_006 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP6,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_007 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP7,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_007 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP7,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_008 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP8,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_008 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP8,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_009 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP9,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_009 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP9,');

    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM '+TSConsulta.Values['cad_pro_prg']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QPRG,');
    SQL.Add('         (SELECT COUNT(*)               FROM '+TSConsulta.Values['cad_pro_prg']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RPRG,');
    SQL.Add('         (SELECT SUM(EST_CRED)          FROM '+TSConsulta.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QPRC,');
    SQL.Add('         (SELECT SUM(EST_DEBI)          FROM '+TSConsulta.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QPRD,');
    SQL.Add('         (SELECT COUNT(*)               FROM '+TSConsulta.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RPRC,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM '+TSConsulta.Values['cad_pro_def']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QDEF,');
    SQL.Add('         (SELECT COUNT(*)               FROM '+TSConsulta.Values['cad_pro_def']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RDEF ');

    SQL.Add('FROM     CAD_PRO,CAD_PRO_IMG,CAD_FOR');
    SQL.Add('WHERE    CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');
    SQL.Add('AND      CAD_PRO.PRO_CDFO = CAD_FOR.ID');

    if edTXT.Text <> '' then
    SQL.Add('AND '+cField+' LIKE ''%'+cpro+'%''')
    else
    SQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

    if cbstat.Text <> 'Todos' then
    SQL.Add('AND PRO_STLN = '''+copy(cbstat.Text,1,1)+'''');

    if frmprincipal.parametrosPAR_SPRO.AsString = '1' then
    SQL.Add('AND PRO_CDFO = '''+frmprincipal.parametrosID.AsString+'''');

    SQL.Add('GROUP BY CAD_PRO.ID      ,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DPRO,CAD_PRO.PRO_CCOR,CAD_PRO.PRO_DCOR,');
    SQL.Add('         CAD_PRO.PRO_DUNI,CAD_PRO_IMG.PRO_FOTO,CAD_PRO.PRO_CBAR,CAD_PRO.PRO_STA,CAD_PRO.PRO_OBSE,CAD_PRO.PRO_UTIL,FOR_FANT,');
    SQL.Add('         CAD_PRO.PRO_CEMB,CAD_PRO.PRO_GRAD,CAD_PRO.PRO_CCLF,CAD_PRO.PRO_CCST,CAD_PRO.PRO_DCAT,CAD_PRO.PRO_DGRP,CAD_PRO.PRO_APRC,CAD_PRO.PRO_LDSC,');
    SQL.Add('         CAD_PRO.PRO_CFOR,CAD_PRO.PRO_DORI,CAD_PRO.PRO_STAV,');
    SQL.Add('         CAD_PRO.PRO_PREC,CAD_PRO.PRO_PPRO,CAD_PRO.PRO_PDSC,');
    SQL.Add('         CAD_PRO.PRO_VPRC,CAD_PRO.PRO_VPRO,CAD_PRO.PRO_VDSC,');
    SQL.Add('         CAD_PRO.PRO_RPRC,CAD_PRO.PRO_RPRO,CAD_PRO.PRO_RDSC,');
    SQL.Add('         CAD_PRO.PRO_PCOM,CAD_PRO.PRO_CUST,CAD_PRO.PRO_PCOR,');
    SQL.Add('         CAD_PRO.PRO_SPRC,');
    SQL.Add('         CAD_PRO.PRO_METR,CAD_PRO.PRO_REND,CAD_PRO.PRO_PESO,CAD_PRO.PRO_PSCN,CAD_PRO.PRO_PSMR,CAD_PRO.PRO_STLN,');
    SQL.Add('         CAD_PRO.PRO_LARG,CAD_PRO.PRO_GRAM,CAD_PRO.PRO_COMP,CAD_PRO.PRO_PIPI,CAD_PRO.PRO_REPR,CAD_PRO.PRO_APRO,');
    SQL.Add('         CAD_PRO_IMG.PRO_INS1,CAD_PRO_IMG.PRO_INS2,CAD_PRO_IMG.PRO_INS3,CAD_PRO_IMG.PRO_INS4,CAD_PRO_IMG.PRO_INS5,');
    SQL.Add('         CAD_PRO_IMG.PRO_INS6,CAD_PRO_IMG.PRO_INS7,CAD_PRO_IMG.PRO_INS8');
    SQL.Add('ORDER BY CAD_PRO.PRO_CART,CAD_PRO.PRO_DCOR');
    Open;
    Last;

    if psq_proID.IsNull then
    begin
      messageBox(handle,PChar(campo+' não Cadastrado !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end
    else if (recordcount > 1) and (edTXT.Text <> '') and (rgTIPO.ItemIndex <> 5) then
    begin
      frmcad_pro_con := TFrmcad_pro_con.Create(self);
      with frmcad_pro_con.cadastro do
      begin
        SQL.Clear;
        SQL.Add(psq_pro.Text);
        Open;
      end;
      frmcad_pro_con.ShowModal;
    end
    else if (recordcount > 1) and (edTXT.Text <> '') and (rgTIPO.ItemIndex = 5) then
    begin
      first;
      try
        frmetiqueta_geral.tag := 1;

        with consulta_S do
        begin
          SQL.Clear;
          SQL.Add('SELECT MAX(PRO_QTDE) FROM CAD_PRO_ETI');
          Open;

          neti := fields[0].AsInteger;
        end;

        rom_001.DisableControls;
        if rom_001.State in [dsInsert,dsEdit] then
           rom_001.Cancel;

        for i := 1 to strtoint(edqtde.Text) do
        begin
          inc(neti);

          psq_pro.First;
          while not psq_pro.Eof do
          begin
            rom_001.Append;
            rom_001PRO_IPRO.Value := psq_proID.AsInteger;
            rom_001PRO_IPR2.Value := psq_proID.AsInteger;
            rom_001PRO_CART.Value := psq_proPRO_CART.AsString;
            rom_001PRO_CPRO.Value := psq_proPRO_CPRO.AsString;
            rom_001PRO_CPR2.Value := psq_proPRO_CPRO.AsString;
            rom_001PRO_DPRO.Value := psq_proPRO_DPRO.AsString;
            rom_001PRO_CCOR.Value := psq_proPRO_CCOR.AsInteger;
            rom_001PRO_DCOR.Value := psq_proPRO_DCOR.AsString;
            rom_001PRO_DUNI.Value := psq_proPRO_DUNI.AsString;
            rom_001PRO_FOTO.Value := psq_proPRO_FOTO.Value;
            rom_001PRO_CBAR.Value := psq_proPRO_CBAR.AsString;
            rom_001PRO_PREC.Value := psq_proPRO_PREC.AsFloat;
            rom_001PRO_QDIS.Value := psq_proQDIS.AsFloat;
            rom_001PRO_DORI.Value := psq_proPRO_DORI.AsString;
            rom_001PRO_STAT.Value := psq_proPRO_STLN.AsString;
            rom_001PRO_METR.Value := psq_proPRO_METR.AsFloat;
            rom_001PRO_LARG.Value := psq_proPRO_LARG.AsFloat;
            rom_001PRO_UTIL.Value := psq_proPRO_UTIL.AsFloat;
            rom_001PRO_REND.Value := psq_proPRO_REND.AsFloat;
            rom_001PRO_GRAM.Value := psq_proPRO_GRAM.AsFloat;
            rom_001PRO_PESO.Value := psq_proPRO_PESO.AsFloat;
            rom_001PRO_COMP.Value := psq_proPRO_COMP.AsString;
            if cbobs.Text = 'SIM' then
            rom_001PRO_OBSE.Value := TRIM(psq_proPRO_OBSE.AsString);
            rom_001PRO_QTDE.Value := neti;
            rom_001.Post;
            psq_pro.Next;
          end;
        end;
      finally
        frmetiqueta_geral.tag := 0;

        rom_001.Close;
        rom_001.Open;
        rom_001.EnableControls;
      end;
    end
    else if (recordcount > 1) and (edTXT.Text = '') then
    begin
      first;
      try
        frmetiqueta_geral.tag := 1;

        rom_001.DisableControls;
        if rom_001.State in [dsInsert,dsEdit] then
           rom_001.Cancel;

        while not psq_pro.Eof do
        begin
          for i := 1 to strtoint(edqtde.Text) do
          begin
            rom_001.Append;
            rom_001PRO_IPRO.Value := psq_proID.AsInteger;
            rom_001PRO_IPR2.Value := psq_proID.AsInteger;
            rom_001PRO_CART.Value := psq_proPRO_CART.AsString;
            rom_001PRO_CPRO.Value := psq_proPRO_CPRO.AsString;
            rom_001PRO_CPR2.Value := psq_proPRO_CPRO.AsString;
            rom_001PRO_DPRO.Value := psq_proPRO_DPRO.AsString;
            rom_001PRO_CCOR.Value := psq_proPRO_CCOR.AsInteger;
            rom_001PRO_DCOR.Value := psq_proPRO_DCOR.AsString;
            rom_001PRO_DUNI.Value := psq_proPRO_DUNI.AsString;
            rom_001PRO_FOTO.Value := psq_proPRO_FOTO.Value;
            rom_001PRO_CBAR.Value := psq_proPRO_CBAR.AsString;
            rom_001PRO_PREC.Value := psq_proPRO_PREC.AsFloat;
            rom_001PRO_QDIS.Value := psq_proQDIS.AsFloat;
            rom_001PRO_DORI.Value := psq_proPRO_DORI.AsString;
            rom_001PRO_STAT.Value := psq_proPRO_STLN.AsString;
            rom_001PRO_METR.Value := psq_proPRO_METR.AsFloat;
            rom_001PRO_LARG.Value := psq_proPRO_LARG.AsFloat;
            rom_001PRO_UTIL.Value := psq_proPRO_UTIL.AsFloat;
            rom_001PRO_REND.Value := psq_proPRO_REND.AsFloat;
            rom_001PRO_GRAM.Value := psq_proPRO_GRAM.AsFloat;
            rom_001PRO_PESO.Value := psq_proPRO_PESO.AsFloat;
            rom_001PRO_COMP.Value := psq_proPRO_COMP.AsString;
            if cbobs.Text = 'SIM' then
            rom_001PRO_OBSE.Value := TRIM(psq_proPRO_OBSE.AsString);
            rom_001.Post;
          end;
          psq_pro.Next;
        end;
      finally
        frmetiqueta_geral.tag := 0;

        rom_001.Close;
        rom_001.Open;
        rom_001.EnableControls;
      end;
    end
    else if recordcount = 1 then
    begin
      if psq_proPRO_STA.AsString <> '0' then
      begin
        messageBox(handle,'Referencia Enviado para a Lixeira !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      try
        frmetiqueta_geral.tag := 1;

        rom_001.DisableControls;
        if rom_001.State in [dsInsert,dsEdit] then
           rom_001.Cancel;

        for i := 1 to strtoint(edqtde.Text) do
        begin
          rom_001.Append;
          rom_001PRO_IPRO.Value := psq_proID.AsInteger;
          rom_001PRO_IPR2.Value := psq_proID.AsInteger;
          rom_001PRO_CART.Value := psq_proPRO_CART.AsString;
          rom_001PRO_CPRO.Value := psq_proPRO_CPRO.AsString;
          rom_001PRO_CPR2.Value := psq_proPRO_CPRO.AsString;
          rom_001PRO_DPRO.Value := psq_proPRO_DPRO.AsString;
          rom_001PRO_CCOR.Value := psq_proPRO_CCOR.AsInteger;
          rom_001PRO_DCOR.Value := psq_proPRO_DCOR.AsString;
          rom_001PRO_DUNI.Value := psq_proPRO_DUNI.AsString;
          rom_001PRO_FOTO.Value := psq_proPRO_FOTO.Value;
          rom_001PRO_CBAR.Value := psq_proPRO_CBAR.AsString;
          rom_001PRO_PREC.Value := psq_proPRO_PREC.AsFloat;
          rom_001PRO_QDIS.Value := psq_proQDIS.AsFloat;
          rom_001PRO_DORI.Value := psq_proPRO_DORI.AsString;
          rom_001PRO_STAT.Value := psq_proPRO_STLN.AsString;
          rom_001PRO_METR.Value := psq_proPRO_METR.AsFloat;
          rom_001PRO_LARG.Value := psq_proPRO_LARG.AsFloat;
          rom_001PRO_UTIL.Value := psq_proPRO_UTIL.AsFloat;
          rom_001PRO_REND.Value := psq_proPRO_REND.AsFloat;
          rom_001PRO_GRAM.Value := psq_proPRO_GRAM.AsFloat;
          rom_001PRO_PESO.Value := psq_proPRO_PESO.AsFloat;
          rom_001PRO_COMP.Value := psq_proPRO_COMP.AsString;
          if cbobs.Text = 'SIM' then
          rom_001PRO_OBSE.Value := TRIM(psq_proPRO_OBSE.AsString);
          rom_001.Post;
        end;
      finally
        frmetiqueta_geral.tag := 0;

        rom_001.Close;
        rom_001.Open;
        rom_001.EnableControls;
      end;
    end;
  end;
end;
procedure Tfrmetiqueta_geral.ABRE_TABELA;
begin
  if not tSHEILD.Active then
         tSHEILD.StartTransaction;

  with rom_001 do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM CAD_PRO_ETI');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_PRO_ETI');
    SelectSQL.Add('ORDER BY PRO_CPRO');
    Open;
    tSHEILD.CommitRetaining;
  end;
end;

procedure Tfrmetiqueta_geral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmprincipal.FazPrnAtualVirarDefault('Relatórios');
  action := cafree;
end;

procedure Tfrmetiqueta_geral.BSaiClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmetiqueta_geral.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_ESCAPE: BSai.Click;
       VK_RETURN: if (not (activeControl is TdxDBGrid) and
                      not (activeControl is TdxMemo)   and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       40       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       38       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, false, true);
  end;
end;

procedure Tfrmetiqueta_geral.FormCreate(Sender: TObject);
begin
  cbcampo.Text := 'Referencia';

  if frmprincipal.parametrosPAR_PGRD.AsString = '1' then
     cbcampo.Text := 'Produto';

  if not IBTra.Active then
     IBTra.StartTransaction;

  if not tSHEILD.Active then
     tSHEILD.StartTransaction;

  ABRE_TABELA;
end;

procedure Tfrmetiqueta_geral.dbgromKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_DELETE: if rom_001.State = dsBrowse then
                  siDEL.Click;
    VK_ESCAPE: if rom_001.State = dsBrowse then close else rom_001.Cancel;
    VK_INSERT: if not siSAV.Enabled then siINC.Click;
  end;
end;

procedure Tfrmetiqueta_geral.siINCClick(Sender: TObject);
begin
  rom_001.Append;
end;

procedure Tfrmetiqueta_geral.siALTClick(Sender: TObject);
begin
  rom_001.Edit;
end;

procedure Tfrmetiqueta_geral.siDELClick(Sender: TObject);
begin
  rom_001.Delete;
end;

procedure Tfrmetiqueta_geral.siSAVClick(Sender: TObject);
begin
  rom_001.Post;
end;

procedure Tfrmetiqueta_geral.siCANClick(Sender: TObject);
begin
  rom_001.Cancel;
end;


procedure Tfrmetiqueta_geral.rom_001AfterCancel(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;
  end;
end;

procedure Tfrmetiqueta_geral.rom_001AfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
end;

procedure Tfrmetiqueta_geral.rom_001AfterEdit(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siALT.Enabled := false;
    siDEL.Enabled := false;
    siSAV.Enabled := true;
    siCAN.Enabled := true;
  end;
end;

procedure Tfrmetiqueta_geral.rom_001AfterOpen(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;
  end;  
end;

procedure Tfrmetiqueta_geral.rom_001AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  tSHEILD.CommitRetaining;

  if not dbgrom.CanFocus then
     edTXT.SetFocus;

  if tag = 0 then
  begin
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;

    wRec := rom_001.GetBookmark;
    rom_001.Close;
    rom_001.Open;
    if (wRec = Nil) or (rom_001.Fields[0].IsNull) then rom_001.last
       else rom_001.GotoBookmark(wRec);
    rom_001.FreeBookmark(wRec);
  end;  
end;

procedure Tfrmetiqueta_geral.rom_001BeforeCancel(DataSet: TDataSet);
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

procedure Tfrmetiqueta_geral.rom_001NewRecord(DataSet: TDataSet);
begin
  rom_001ID.Value := 0;
end;

procedure Tfrmetiqueta_geral.BVisClick(Sender: TObject);
begin
  tag := 1;
  if rgTIPO.ItemIndex <> 5 then
  begin
    try
      rom_001.DisableControls;
      rom_001.First;
      while not rom_001.Eof do
      begin
        rom_001.Edit;
        rom_001PRO_SEQU.Value := rom_001.RecNo;
        rom_001.Post;
        rom_001.Next;
      end;
    finally
      rom_001.EnableControls;
      rom_001.Close;
    end;
  end
  else
  begin
    with rom_001 do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_PRO_ETI');
      SelectSQL.Add('ORDER BY PRO_QTDE,PRO_SEQU');
    end;
  end;
  rom_001.Open;

  Tag := 0;
  case rgTIPO.ItemIndex of
    0  : IMPRIME_CODIGO_BARRA;
    2,3: IMPRIME_CATALOGO;
    4  : IMPRIME_IDENTIFICACAO1;
    5  : IMPRIME_CARTELA_COM_COR;
    6  : IMPRIME_CARTELA_SEM_COR;
    9  : IMPRIME_IDENTIFICACAO2;
  end;
end;

procedure Tfrmetiqueta_geral.BSavClick(Sender: TObject);
begin
  frmarquivo_geral := Tfrmarquivo_geral.Create(self);
  frmarquivo_geral.Position          := poDesigned;
  frmarquivo_geral.Top               := 0;
  frmarquivo_geral.Left              := 0;
  frmarquivo_geral.edfile.Text       := 'CATÁLOGO '+frmprincipal.parametrosPAR_FANT.AsString;

  try
    frmarquivo_geral.ShowModal;
  finally
    freeAndNil(frmarquivo_geral);
    frmarquivo_geral.Free;
  end;
end;

procedure Tfrmetiqueta_geral.psq_proCalcFields(DataSet: TDataSet);
var
  qest,qres,qsep: double;
  rest,rres,rsep: integer;
begin
  qest := 0;
  rest := 0;
  qres := 0;
  rres := 0;
  qsep := 0;
  rsep := 0;

  if frmprincipal.parametrosPAR_ESEG.AsString <> '1' then
  begin
    case frmprincipal.parametrosID.AsInteger of
    1: begin
         qest := psq_proPRO_QEST.AsFloat;
         rest := psq_proPRO_REST.AsInteger;
         qres := psq_proPRO_QRES.AsFloat;
         rres := psq_proPRO_RRES.AsInteger;
         qsep := psq_proPRO_QSEP.AsFloat;
         rsep := psq_proPRO_RSEP.AsInteger;
       end;
    2: begin
         qest := psq_proPRO_QEST2.AsFloat;
         rest := psq_proPRO_REST2.AsInteger;
         qres := psq_proPRO_QRES2.AsFloat;
         rres := psq_proPRO_RRES2.AsInteger;
         qsep := psq_proPRO_QSEP2.AsFloat;
         rsep := psq_proPRO_RSEP2.AsInteger;
       end;
    3: begin
         qest := psq_proPRO_QEST3.AsFloat;
         rest := psq_proPRO_REST3.AsInteger;
         qres := psq_proPRO_QRES3.AsFloat;
         rres := psq_proPRO_RRES3.AsInteger;
         qsep := psq_proPRO_QSEP3.AsFloat;
         rsep := psq_proPRO_RSEP3.AsInteger;
       end;
    4: begin
         qest := psq_proPRO_QEST4.AsFloat;
         rest := psq_proPRO_REST4.AsInteger;
         qres := psq_proPRO_QRES4.AsFloat;
         rres := psq_proPRO_RRES4.AsInteger;
         qsep := psq_proPRO_QSEP4.AsFloat;
         rsep := psq_proPRO_RSEP4.AsInteger;
       end;
    5: begin
         qest := psq_proPRO_QEST5.AsFloat;
         rest := psq_proPRO_REST5.AsInteger;
         qres := psq_proPRO_QRES5.AsFloat;
         rres := psq_proPRO_RRES5.AsInteger;
         qsep := psq_proPRO_QSEP5.AsFloat;
         rsep := psq_proPRO_RSEP5.AsInteger;
       end;
    6: begin
         qest := psq_proPRO_QEST6.AsFloat;
         rest := psq_proPRO_REST6.AsInteger;
         qres := psq_proPRO_QRES6.AsFloat;
         rres := psq_proPRO_RRES6.AsInteger;
         qsep := psq_proPRO_QSEP6.AsFloat;
         rsep := psq_proPRO_RSEP6.AsInteger;
       end;
    7: begin
         qest := psq_proPRO_QEST7.AsFloat;
         rest := psq_proPRO_REST7.AsInteger;
         qres := psq_proPRO_QRES7.AsFloat;
         rres := psq_proPRO_RRES7.AsInteger;
         qsep := psq_proPRO_QSEP7.AsFloat;
         rsep := psq_proPRO_RSEP7.AsInteger;
       end;
    8: begin
         qest := psq_proPRO_QEST8.AsFloat;
         rest := psq_proPRO_REST8.AsInteger;
         qres := psq_proPRO_QRES8.AsFloat;
         rres := psq_proPRO_RRES8.AsInteger;
         qsep := psq_proPRO_QSEP8.AsFloat;
         rsep := psq_proPRO_RSEP8.AsInteger;
       end;
    9: begin
         qest := psq_proPRO_QEST9.AsFloat;
         rest := psq_proPRO_REST9.AsInteger;
         qres := psq_proPRO_QRES9.AsFloat;
         rres := psq_proPRO_RRES9.AsInteger;
         qsep := psq_proPRO_QSEP9.AsFloat;
         rsep := psq_proPRO_RSEP9.AsInteger;
       end;
    end;
  end else
  begin
    qest := psq_proPRO_QEST.AsFloat  +psq_proPRO_QEST2.AsFloat  +psq_proPRO_QEST3.AsFloat  +psq_proPRO_QEST4.AsFloat  +psq_proPRO_QEST5.AsFloat  +psq_proPRO_QEST6.AsFloat  +psq_proPRO_QEST7.AsFloat  +psq_proPRO_QEST8.AsFloat  +psq_proPRO_QEST9.AsFloat;
    rest := psq_proPRO_REST.AsInteger+psq_proPRO_REST2.AsInteger+psq_proPRO_REST3.AsInteger+psq_proPRO_REST4.AsInteger+psq_proPRO_REST5.AsInteger+psq_proPRO_REST6.AsInteger+psq_proPRO_REST7.AsInteger+psq_proPRO_REST8.AsInteger+psq_proPRO_REST9.AsInteger;

    qres := psq_proPRO_QRES.AsFloat  +psq_proPRO_QRES2.AsFloat  +psq_proPRO_QRES3.AsFloat  +psq_proPRO_QRES4.AsFloat  +psq_proPRO_QRES5.AsFloat  +psq_proPRO_QRES6.AsFloat  +psq_proPRO_QRES7.AsFloat  +psq_proPRO_QRES8.AsFloat  +psq_proPRO_QRES9.AsFloat;
    rres := psq_proPRO_RRES.AsInteger+psq_proPRO_RRES2.AsInteger+psq_proPRO_RRES3.AsInteger+psq_proPRO_RRES4.AsInteger+psq_proPRO_RRES5.AsInteger+psq_proPRO_RRES6.AsInteger+psq_proPRO_RRES7.AsInteger+psq_proPRO_RRES8.AsInteger+psq_proPRO_RRES9.AsInteger;

    qsep := psq_proPRO_QSEP.AsFloat  +psq_proPRO_QSEP2.AsFloat  +psq_proPRO_QSEP3.AsFloat  +psq_proPRO_QSEP4.AsFloat  +psq_proPRO_QSEP5.AsFloat  +psq_proPRO_QSEP6.AsFloat  +psq_proPRO_QSEP7.AsFloat  +psq_proPRO_QSEP8.AsFloat  +psq_proPRO_QSEP9.AsFloat;
    rsep := psq_proPRO_RSEP.AsInteger+psq_proPRO_RSEP2.AsInteger+psq_proPRO_RSEP3.AsInteger+psq_proPRO_RSEP4.AsInteger+psq_proPRO_RSEP5.AsInteger+psq_proPRO_RSEP6.AsInteger+psq_proPRO_RSEP7.AsInteger+psq_proPRO_RSEP8.AsInteger+psq_proPRO_RSEP9.AsInteger;
  end;

  // ******************************* ESTOQUE FÍSICO ******************************* //

  if frmprincipal.parametrosPAR_PECA.AsString <> '1' then
  begin
    if (copy(psq_proPRO_DUNI.AsString,1,1) = 'M') and (psq_proPRO_METR.AsFloat > 0 ) then
    rest := trunc(roundto((qest/psq_proPRO_METR.AsFloat),-2)) else
    if (copy(psq_proPRO_DUNI.AsString,1,1) = 'K') and (psq_proPRO_PESO.AsFloat > 0 ) then
    rest := trunc(roundto(qest/(psq_proPRO_PESO.AsFloat+psq_proPRO_PSCN.AsFloat),-2)) else
    if (copy(psq_proPRO_DUNI.AsString,1,1) = 'P') or (copy(psq_proPRO_DUNI.AsString,1,1) = 'C') then
    rest := trunc(qest);
  end;

  psq_proQFIS.Value := qest;
  psq_proRFIS.Value := rest;

  // ******************************* ESTOQUE RESERVADO ******************************* //

  if (copy(psq_proPRO_DUNI.AsString,1,1) = 'M') and (psq_proPRO_METR.AsFloat > 0 ) then
  rres := trunc(roundto((qres/psq_proPRO_METR.AsFloat),-2)) else
  if (copy(psq_proPRO_DUNI.AsString,1,1) = 'K') and (psq_proPRO_PESO.AsFloat > 0 ) then
  rres := trunc(roundto(qres/(psq_proPRO_PESO.AsFloat+psq_proPRO_PSCN.AsFloat),-2)) else
  if (copy(psq_proPRO_DUNI.AsString,1,1) = 'P') or (copy(psq_proPRO_DUNI.AsString,1,1) = 'C') then
  rres := trunc(qres);

  psq_proQRES.Value := qres;
  psq_proRRES.Value := rres;


  // ******************************* ESTOQUE SEPARADO ******************************* //

  if frmprincipal.parametrosPAR_PECA.AsString <> '1' then
  begin
    if (copy(psq_proPRO_DUNI.AsString,1,1) = 'M') and (psq_proPRO_METR.AsFloat > 0 ) then
    rsep := trunc(roundto((qsep/psq_proPRO_METR.AsFloat),-2)) else
    if (copy(psq_proPRO_DUNI.AsString,1,1) = 'K') and (psq_proPRO_PESO.AsFloat > 0 ) then
    rsep := trunc(roundto(qsep/(psq_proPRO_PESO.AsFloat+psq_proPRO_PSCN.AsFloat),-2)) else
    if (copy(psq_proPRO_DUNI.AsString,1,1) = 'P') or (copy(psq_proPRO_DUNI.AsString,1,1) = 'C') then
    rsep := trunc(qsep);
  end;

  psq_proQSEP.Value := qsep;
  psq_proRSEP.Value := rsep;

  // ******************************* SUMÁRIO ******************************* //

  psq_proQDIS.Value := psq_proQFIS.AsFloat   - qres;
  psq_proRDIS.Value := psq_proRFIS.AsInteger - rres;

  if psq_proPRO_QPRD.AsFloat > 0 then
  psq_proPPRC.Value := psq_proPRO_QPRD.AsFloat else
  psq_proPPRC.Value := psq_proPRO_QPRC.AsFloat;
  psq_proPDIS.Value := psq_proPPRC.AsFloat-psq_proPRO_QPRG.AsFloat;
end;

procedure Tfrmetiqueta_geral.siLIClick(Sender: TObject);
begin
  if yesno(handle,'Confirma limpeza do produtos selecionados ?') = mrno then
     abort;

  ABRE_TABELA;   
end;

procedure Tfrmetiqueta_geral.sbpsqpClick(Sender: TObject);
begin
  activecontrol := nil;
  try
    if (edTXT.Text = '') and (rom_001.Fields[0].IsNull) then
       raise exception.Create('Edição não informado !');

    if rgTIPO.ItemIndex < 0 then
       raise exception.Create('Tipo de etiqueta não informado !');

    if edTXT.Text = '' then
       CLONE_PRODUTO
    else
       PESQUISA_PRODUTO(cbCAMPO.Text,edTXT.Text);
  finally
    if rom_001.State <> dsBrowse then
       rom_001.Post;

    edTXT.Text  := '';
    edTXT.SetFocus;
  end;
end;

procedure Tfrmetiqueta_geral.edTXTExit(Sender: TObject);
  var Ctrl: TWinControl;
      cpro: string;
begin
  try
    cpro := edTXT.Text;
    try
      if cbcampo.Text = 'Referencia' then
      begin
        if (frmprincipal.parametrosPAR_FANT.AsString = 'MIXXON') or
           (frmprincipal.parametrosPAR_FANT.AsString = 'SQUAFF') or
           (frmprincipal.parametrosPAR_FANT.AsString = 'FOR WHY') then
        begin
          if copy (cpro,3,1) <> '-' then
             cpro := copy(cpro,1,2)+'-'+copy(cpro,3,3);
        end;
      end
      else if (cbcampo.Text = 'Produto') then
      begin
        if (frmprincipal.parametrosPAR_TIPO.AsString = '0') or (frmprincipal.parametrosPAR_TIPO.AsString = '1') or (frmprincipal.parametrosPAR_TIPO.AsString = '4') then
        cpro := RETORNA_PRODUTO(cpro);
      end;
    finally
      edtxt.Text := cpro;
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

procedure Tfrmetiqueta_geral.edqtdeExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if edqtde.Text = '' then
       edqtde.Text := '1';

    formatfloat('0',RETORNA_REAL(edqtde.Text));
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

procedure Tfrmetiqueta_geral.rom_001CalcFields(DataSet: TDataSet);
begin
  if rom_001PRO_STLN.AsString = 'F' then
  rom_001PRO_STAT.Value := 'Fora de Linha'
  else if rom_001PRO_STLN.AsString = 'E' then
  rom_001PRO_STAT.Value := 'Estoque'
  else
  rom_001PRO_STAT.Value := 'Linha';
end;

procedure Tfrmetiqueta_geral.sbpsqdClick(Sender: TObject);
begin
  activecontrol := nil;
  try
    if (dxDT1.Date <= 0) or (dxDT2.Date <= 0) then
       raise exception.Create('Data Inicial ou Data Final não informada !');

    if rgTIPO.ItemIndex < 0 then
       raise exception.Create('Tipo de etiqueta não informado !');

    edTXT.Text := '';
    PESQUISA_PRODUTO(cbCAMPO.Text,edTXT.Text);
  finally
    if rom_001.State <> dsBrowse then
       rom_001.Post;

    edTXT.Text  := '';
    edTXT.SetFocus;
  end;
end;

procedure Tfrmetiqueta_geral.rom_001BeforePost(DataSet: TDataSet);
begin
  if rom_001PRO_CART.AsString <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT PRO_INS1,PRO_INS2,PRO_INS3,PRO_INS4,PRO_INS5,PRO_INS6,PRO_INS7,PRO_INS8 FROM CAD_PRO_IMG');
    SQL.Add('WHERE  PRO_CART = '''+rom_001PRO_CART.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      rom_001PRO_PRN1.Value := fields[0].Value;
      rom_001PRO_PRN2.Value := fields[1].Value;
      rom_001PRO_PRN3.Value := fields[2].Value;
      rom_001PRO_PRN4.Value := fields[3].Value;
      rom_001PRO_PRN5.Value := fields[4].Value;
      rom_001PRO_PRN6.Value := fields[5].Value;
      rom_001PRO_PRN7.Value := fields[6].Value;
      rom_001PRO_PRN8.Value := fields[7].Value;
    end;  
  end;
end;

procedure Tfrmetiqueta_geral.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if copy(rom_001PRO_DUNI.AsString,1,1) = 'M' then
  qrliqtde.Caption := floattostr(rom_001PRO_METR.AsFloat) else
  if copy(rom_001PRO_DUNI.AsString,1,1) = 'K' then
  qrliqtde.Caption := floattostr(rom_001PRO_PESO.AsFloat) else
  qrliqtde.Caption := floattostr(rom_001PRO_METR.AsFloat);
  qrliqtde.Caption :=  formatfloat('#,0.00 '+rom_001PRO_DUNI.AsString,strtofloat(qrliqtde.Caption));

  qrlindu.Caption  := 'INDÚSTRIA BRASILEIRA';
  if rom_001PRO_DORI.AsString <> 'BRASIL' then
  qrlindu.Caption  := 'PRODUTO IMPORTADO';
end;

procedure Tfrmetiqueta_geral.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var i,j: word;
      BRet: boolean;
begin
  if copy(rom_001PRO_DUNI.AsString,1,1) = 'M' then
  begin
    qrlrend.Caption     := '';
    qrldbrend.DataField := '';
  end
  else
  begin
    qrlrend.Caption     := 'Rendimento:';
    qrldbrend.DataField := 'PRO_REND';
  end;

  BRet := false;
  for i := 1 to length(rom_001PRO_COMP.AsString) do
  begin
    if copy(rom_001PRO_COMP.AsString,i,1) = ':' then
    begin
      BRet := true;
      break;
    end;
  end;

  qrlcomp3.Caption := '';
  qrlcomp4.Caption := '';

  if not BRet then
  begin
    if length(rom_001PRO_COMP.AsString) > 40 then
    begin
      j := 0;
      for i := 1 to length(rom_001PRO_COMP.AsString) do
      begin
        if copy(rom_001PRO_COMP.AsString,i,1) = ' ' then
        begin
          inc(j);
        end;

        if j = 4 then
           break;

        qrlcomp3.Caption := qrlcomp3.Caption + copy(rom_001PRO_COMP.AsString,i,1);
      end;
      qrlcomp4.Caption := trim(copy(rom_001PRO_COMP.AsString,i,40));
    end
    else
      qrlcomp3.Caption := rom_001PRO_COMP.AsString;
  end
  else
  begin
    inc(i);
    for j := i to length(rom_001PRO_COMP.AsString) do
    begin
      if copy(rom_001PRO_COMP.AsString,j,1) = ':' then
      begin
        for i := j downto 1 do
        begin
          if copy(rom_001PRO_COMP.AsString,i,1) = ' ' then
          begin
            qrlcomp3.Caption := TRIM(copy(rom_001PRO_COMP.AsString,1,i));
            qrlcomp4.Caption := TRIM(copy(rom_001PRO_COMP.AsString,i,120));
            break;
          end;
        end;
        break;
      end;
    end;

    if qrlcomp3.Caption = '' then
       qrlcomp3.Caption := TRIM(copy(rom_001PRO_COMP.AsString,1,Length(rom_001PRO_COMP.AsString)));
  end;
end;

procedure Tfrmetiqueta_geral.qrgrom_dvenBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var i,j: word;
      BRet: boolean;
begin
  if copy(rom_001PRO_DUNI.AsString,1,1) = 'M' then
  begin
    qrlrend.Caption     := '';
    qrldbrend.DataField := '';
  end
  else
  begin
    qrlrend.Caption     := 'Rendimento:';
    qrldbrend.DataField := 'PRO_REND';
  end;

  BRet := false;
  for i := 1 to length(rom_001PRO_COMP.AsString) do
  begin
    if copy(rom_001PRO_COMP.AsString,i,1) = ':' then
    begin
      BRet := true;
      break;
    end;
  end;

  qrlcomp1.Caption := '';
  qrlcomp2.Caption := '';

  if not BRet then
  begin
    if length(rom_001PRO_COMP.AsString) > 40 then
    begin
      j := 0;
      for i := 1 to length(rom_001PRO_COMP.AsString) do
      begin
        if copy(rom_001PRO_COMP.AsString,i,1) = ' ' then
        begin
          inc(j);
        end;

        if j = 4 then
           break;

        qrlcomp1.Caption := qrlcomp1.Caption + copy(rom_001PRO_COMP.AsString,i,1);
      end;
      qrlcomp2.Caption := trim(copy(rom_001PRO_COMP.AsString,i,40));
    end
    else
      qrlcomp1.Caption := rom_001PRO_COMP.AsString;
  end
  else
  begin
    inc(i);
    for j := i to length(rom_001PRO_COMP.AsString) do
    begin
      if copy(rom_001PRO_COMP.AsString,j,1) = ':' then
      begin
        for i := j downto 1 do
        begin
          if copy(rom_001PRO_COMP.AsString,i,1) = ' ' then
          begin
            qrlcomp1.Caption := TRIM(copy(rom_001PRO_COMP.AsString,1,i));
            qrlcomp2.Caption := TRIM(copy(rom_001PRO_COMP.AsString,i,120));
            break;
          end;
        end;
        break;
      end;
    end;

    if qrlcomp1.Caption = '' then
    qrlcomp1.Caption := TRIM(copy(rom_001PRO_COMP.AsString,1,Length(rom_001PRO_COMP.AsString)));

    if length(qrlcomp2.Caption) > 40 then
    begin
      qrlcomp1.Caption := TRIM(copy(rom_001PRO_COMP.AsString,01,45));
      qrlcomp2.Caption := TRIM(copy(rom_001PRO_COMP.AsString,46,45));
    end;
  end;
end;

end.
