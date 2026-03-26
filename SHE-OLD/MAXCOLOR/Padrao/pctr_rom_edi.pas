unit pctr_rom_edi;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxExEdtr,
  dxEdLib, StdCtrls, dxPageControl, dxCntner, dxEditor, math, rxSpeedbar;

type
  Tfrmctr_rom_edi = class(Tfrmpadr3)
    pnlped: TPanel;
    Shape4: TShape;
    Label3: TLabel;
    Label4: TLabel;
    linha1: TShape;
    Label9: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    Label28: TLabel;
    linha2: TShape;
    Shape3: TShape;
    Label7: TLabel;
    edcdro: TdxMaskEdit;
    pcobs: TdxPageControl;
    tsobs: TdxTabSheet;
    edobse: TdxMemo;
    edcrep: TdxMaskEdit;
    edcpag: TdxMaskEdit;
    edcven: TdxMaskEdit;
    Label14: TLabel;
    edccli: TdxMaskEdit;
    Label12: TLabel;
    edrcli: TdxMaskEdit;
    eddcli: TdxMaskEdit;
    edcnpj: TdxMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    aux: TIBQuery;
    psq_cli: TIBQuery;
    ped_ven_cab: TIBDataSet;
    dtsped_ven_cab: TDataSource;
    ped_ven_ite: TIBDataSet;
    dtsped_ven_ite: TDataSource;
    rom_cab: TIBDataSet;
    dtsrom_cab: TDataSource;
    rom_ite: TIBDataSet;
    dtsrom_ite: TDataSource;
    rom_cabID: TIntegerField;
    rom_cabROM_CDOC: TIntegerField;
    rom_cabROM_CDPR: TIntegerField;
    rom_cabROM_CDPD: TIntegerField;
    rom_cabROM_CDRO: TIntegerField;
    rom_cabROM_CDRD: TIntegerField;
    rom_cabROM_CDNF: TIntegerField;
    rom_cabROM_CDBX: TIntegerField;
    rom_cabROM_CDCX: TIntegerField;
    rom_cabROM_DERO: TIBStringField;
    rom_cabROM_STPD: TIBStringField;
    rom_cabROM_STCO: TIBStringField;
    rom_cabROM_STFI: TIBStringField;
    rom_cabROM_DROM: TDateField;
    rom_cabROM_HROM: TTimeField;
    rom_cabROM_DBAI: TDateField;
    rom_cabROM_DCAN: TDateField;
    rom_cabROM_DNFS: TDateField;
    rom_cabROM_DEXP: TDateField;
    rom_cabROM_HEXP: TTimeField;
    rom_cabROM_CEXP: TIntegerField;
    rom_cabROM_CCLI: TIntegerField;
    rom_cabROM_CVEN: TIntegerField;
    rom_cabROM_CREP: TIntegerField;
    rom_cabROM_CPAG: TIntegerField;
    rom_cabROM_QTVE: TIBBCDField;
    rom_cabROM_QTSP: TIBBCDField;
    rom_cabROM_QTPD: TIBBCDField;
    rom_cabROM_RLVE: TIntegerField;
    rom_cabROM_TSDE: TIBBCDField;
    rom_cabROM_TDSC: TIBStringField;
    rom_cabROM_PDSC: TIBBCDField;
    rom_cabROM_CDSC: TIBBCDField;
    rom_cabROM_ADSC: TIBBCDField;
    rom_cabROM_TCDE: TIBBCDField;
    rom_cabROM_CONC: TSmallintField;
    rom_cabROM_OBSE: TMemoField;
    rom_cabROM_STA: TIBStringField;
    rom_cabROM_COMI: TIBBCDField;
    ped_ven_cabID: TIntegerField;
    ped_ven_cabROM_CDOC: TIntegerField;
    ped_ven_cabROM_CDPR: TIntegerField;
    ped_ven_cabROM_CDPD: TIntegerField;
    ped_ven_cabROM_CDRO: TIntegerField;
    ped_ven_cabROM_CDRD: TIntegerField;
    ped_ven_cabROM_CDNF: TIntegerField;
    ped_ven_cabROM_CDBX: TIntegerField;
    ped_ven_cabROM_CDCX: TIntegerField;
    ped_ven_cabROM_DERO: TIBStringField;
    ped_ven_cabROM_STPD: TIBStringField;
    ped_ven_cabROM_STCO: TIBStringField;
    ped_ven_cabROM_STFI: TIBStringField;
    ped_ven_cabROM_DROM: TDateField;
    ped_ven_cabROM_HROM: TTimeField;
    ped_ven_cabROM_DBAI: TDateField;
    ped_ven_cabROM_DCAN: TDateField;
    ped_ven_cabROM_DNFS: TDateField;
    ped_ven_cabROM_DEXP: TDateField;
    ped_ven_cabROM_HEXP: TTimeField;
    ped_ven_cabROM_CEXP: TIntegerField;
    ped_ven_cabROM_CCLI: TIntegerField;
    ped_ven_cabROM_CVEN: TIntegerField;
    ped_ven_cabROM_CREP: TIntegerField;
    ped_ven_cabROM_CPAG: TIntegerField;
    ped_ven_cabROM_QTVE: TIBBCDField;
    ped_ven_cabROM_QTSP: TIBBCDField;
    ped_ven_cabROM_QTPD: TIBBCDField;
    ped_ven_cabROM_RLVE: TIntegerField;
    ped_ven_cabROM_TSDE: TIBBCDField;
    ped_ven_cabROM_TDSC: TIBStringField;
    ped_ven_cabROM_PDSC: TIBBCDField;
    ped_ven_cabROM_CDSC: TIBBCDField;
    ped_ven_cabROM_ADSC: TIBBCDField;
    ped_ven_cabROM_TCDE: TIBBCDField;
    ped_ven_cabROM_CONC: TSmallintField;
    ped_ven_cabROM_OBSE: TMemoField;
    ped_ven_cabROM_STA: TIBStringField;
    ped_ven_cabROM_COMI: TIBBCDField;
    cbstco: TdxImageEdit;
    cbstpd: TdxImageEdit;
    cbdven: TdxImageEdit;
    cbdrep: TdxImageEdit;
    cbdpag: TdxImageEdit;
    edcred: TdxMaskEdit;
    cbstfi: TdxMaskEdit;
    edcdpd: TdxMaskEdit;
    tsout: TdxTabSheet;
    edctnr: TdxMaskEdit;
    Label5: TLabel;
    Bevel1: TBevel;
    ped_ven_cabROM_DPRD: TDateField;
    ped_ven_cabROM_CTNR: TIBStringField;
    ped_ven_cabROM_DEMB: TDateField;
    ped_ven_cabROM_DDES: TDateField;
    ped_ven_cabROM_CBAI: TIntegerField;
    ped_ven_cabROM_TBAI: TDateTimeField;
    ped_ven_cabROM_UPRN: TIntegerField;
    ped_ven_cabROM_PPRN: TSmallintField;
    ped_ven_cabROM_TPRN: TDateTimeField;
    rom_cabROM_DPRD: TDateField;
    rom_cabROM_CTNR: TIBStringField;
    rom_cabROM_DEMB: TDateField;
    rom_cabROM_DDES: TDateField;
    rom_cabROM_CBAI: TIntegerField;
    rom_cabROM_TBAI: TDateTimeField;
    rom_cabROM_UPRN: TIntegerField;
    rom_cabROM_PPRN: TSmallintField;
    rom_cabROM_TPRN: TDateTimeField;
    ped_ven_iteID: TIntegerField;
    ped_ven_iteROM_CCAB: TIntegerField;
    ped_ven_iteROM_CDOC: TIntegerField;
    ped_ven_iteROM_CDPR: TIntegerField;
    ped_ven_iteROM_CDPD: TIntegerField;
    ped_ven_iteROM_CDRO: TIntegerField;
    ped_ven_iteROM_CDRD: TIntegerField;
    ped_ven_iteROM_CDNF: TIntegerField;
    ped_ven_iteROM_ITEM: TIBStringField;
    ped_ven_iteROM_CPRO: TIntegerField;
    ped_ven_iteROM_CPR2: TIntegerField;
    ped_ven_iteROM_CDET: TIBStringField;
    ped_ven_iteROM_QTDE: TIBBCDField;
    ped_ven_iteROM_QTRL: TIntegerField;
    ped_ven_iteROM_QTSP: TIBBCDField;
    ped_ven_iteROM_RLSP: TIntegerField;
    ped_ven_iteROM_QTPD: TIBBCDField;
    ped_ven_iteROM_RLPD: TIntegerField;
    ped_ven_iteROM_UNIT: TFloatField;
    ped_ven_iteROM_PREC: TFloatField;
    ped_ven_iteROM_VDSC: TIBBCDField;
    ped_ven_iteROM_TOTA: TIBBCDField;
    ped_ven_iteROM_FLAG: TIBStringField;
    ped_ven_iteROM_COMI: TIBBCDField;
    ped_ven_iteROM_DPRO: TIBStringField;
    ped_ven_iteROM_TPRC: TIBStringField;
    ped_ven_iteROM_ABCD: TIBStringField;
    ped_ven_iteROM_DCOR: TIBStringField;
    ped_ven_iteROM_PCOR: TIBStringField;
    ped_ven_iteROM_DCO2: TIBStringField;
    ped_ven_iteROM_PCO2: TIBStringField;
    ped_ven_iteROM_DSEP: TIBStringField;
    ped_ven_iteROM_DUNI: TIBStringField;
    rom_iteID: TIntegerField;
    rom_iteROM_CCAB: TIntegerField;
    rom_iteROM_CDOC: TIntegerField;
    rom_iteROM_CDPR: TIntegerField;
    rom_iteROM_CDPD: TIntegerField;
    rom_iteROM_CDRO: TIntegerField;
    rom_iteROM_CDRD: TIntegerField;
    rom_iteROM_CDNF: TIntegerField;
    rom_iteROM_ITEM: TIBStringField;
    rom_iteROM_CPRO: TIntegerField;
    rom_iteROM_CPR2: TIntegerField;
    rom_iteROM_CDET: TIBStringField;
    rom_iteROM_QTDE: TIBBCDField;
    rom_iteROM_QTRL: TIntegerField;
    rom_iteROM_QTSP: TIBBCDField;
    rom_iteROM_RLSP: TIntegerField;
    rom_iteROM_QTPD: TIBBCDField;
    rom_iteROM_RLPD: TIntegerField;
    rom_iteROM_UNIT: TFloatField;
    rom_iteROM_PREC: TFloatField;
    rom_iteROM_VDSC: TIBBCDField;
    rom_iteROM_TOTA: TIBBCDField;
    rom_iteROM_FLAG: TIBStringField;
    rom_iteROM_DPRO: TIBStringField;
    rom_iteROM_COMI: TIBBCDField;
    rom_iteROM_TPRC: TIBStringField;
    rom_iteROM_ABCD: TIBStringField;
    rom_iteROM_DCOR: TIBStringField;
    rom_iteROM_PCOR: TIBStringField;
    rom_iteROM_DCO2: TIBStringField;
    rom_iteROM_PCO2: TIBStringField;
    rom_iteROM_DSEP: TIBStringField;
    rom_iteROM_DUNI: TIBStringField;
    psq_cliID: TIntegerField;
    psq_cliCLI_FANT: TIBStringField;
    psq_cliCLI_RAZA: TIBStringField;
    psq_cliCLI_CNPJ: TIBStringField;
    psq_cliCLI_CPF: TIBStringField;
    psq_cliCLI_CRED: TIBBCDField;
    psq_cliCLI_CID: TIBStringField;
    psq_cliCLI_BAI: TIBStringField;
    psq_cliCLI_TLOG: TIBStringField;
    psq_cliCLI_LOGR: TIBStringField;
    psq_cliCLI_NUME: TIBStringField;
    psq_cliCLI_CEP: TIBStringField;
    psq_cliCLI_COMP: TIBStringField;
    psq_cliCLI_ESTA: TIBStringField;
    psq_cliCLI_STA: TIBStringField;
    psq_cliCLI_STAV: TIBStringField;
    psq_cliCLI_DPAG: TIBStringField;
    psq_cliCLI_VDSC: TIBBCDField;
    psq_cliCLI_DCAD: TDateField;
    psq_cliCLI_DFUN: TDateField;
    psq_cliCLI_DALT: TDateField;
    psq_cliCLI_DULT: TDateField;
    psq_cliCLI_VULT: TIBBCDField;
    psq_cliCLI_DDD: TIBStringField;
    psq_cliCLI_TEL1: TIBStringField;
    psq_cliREP_FANT: TIBStringField;
    psq_cliUSU_DUSU: TIBStringField;
    psq_cliCLI_STPD: TSmallintField;
    psq_cliCLI_DTRA: TIBStringField;
    psq_cliCLI_DUSU: TIBStringField;
    psq_cliCLI_OBSO: TIBStringField;
    procedure edcvenValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbdvenExit(Sender: TObject);
    procedure edcrepValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbdrepExit(Sender: TObject);
    procedure edcpagValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbdpagExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure tsoutShow(Sender: TObject);
  private
    { Private declarations }
    procedure ABRE_TABELA;
    procedure PESQUISA_CLIENTE(pesq,chave: string;cdsc: double);
    procedure PESQUISA_VENDEDOR(pesq,chave: string);
    procedure PESQUISA_REPRESENTANTE(pesq,chave: string);
    procedure PESQUISA_FPAGTO(pesq,chave: string);
  public
    { Public declarations }
  end;

var
  frmctr_rom_edi: Tfrmctr_rom_edi;

implementation

uses pcad_cli, uPrincipal;

{$R *.dfm}

procedure Tfrmctr_rom_edi.ABRE_TABELA;
begin
  with rom_cab do
  begin
    DeleteSQL.Clear;
    DeleteSQL.Add('delete from '+SLPrincipal.Values['rom_cab']);
    DeleteSQL.Add('where');
    DeleteSQL.Add('ID = :OLD_ID');

    InsertSQL.Clear;
    InsertSQL.Add('insert into '+SLPrincipal.Values['rom_cab']);
    InsertSQL.Add('  (ID, ROM_ADSC, ROM_CCLI, ROM_CDBX, ROM_CDCX, ROM_CDNF, ROM_CDOC, ROM_CDPD,');
    InsertSQL.Add('   ROM_CDPR, ROM_CDRD, ROM_CDRO, ROM_CDSC, ROM_CEXP, ROM_COMI, ROM_CONC,');
    InsertSQL.Add('   ROM_CPAG, ROM_CREP, ROM_CTNR, ROM_CVEN, ROM_DBAI, ROM_DCAN, ROM_DDES,');
    InsertSQL.Add('   ROM_DEMB, ROM_DERO, ROM_DEXP, ROM_DNFS, ROM_DPRD, ROM_DROM, ROM_HEXP,');
    InsertSQL.Add('   ROM_HROM, ROM_OBSE, ROM_PDSC, ROM_QTPD, ROM_QTSP, ROM_QTVE, ROM_RLVE,');
    InsertSQL.Add('   ROM_STA, ROM_STCO, ROM_STFI, ROM_STPD, ROM_TCDE, ROM_TDSC, ROM_TSDE)');
    InsertSQL.Add('values');
    InsertSQL.Add('  (:ID, :ROM_ADSC, :ROM_CCLI, :ROM_CDBX, :ROM_CDCX, :ROM_CDNF, :ROM_CDOC,');
    InsertSQL.Add('   :ROM_CDPD, :ROM_CDPR, :ROM_CDRD, :ROM_CDRO, :ROM_CDSC, :ROM_CEXP, :ROM_COMI,');
    InsertSQL.Add('   :ROM_CONC, :ROM_CPAG, :ROM_CREP, :ROM_CTNR, :ROM_CVEN, :ROM_DBAI, :ROM_DCAN,');
    InsertSQL.Add('   :ROM_DDES, :ROM_DEMB, :ROM_DERO, :ROM_DEXP, :ROM_DNFS, :ROM_DPRD, :ROM_DROM,');
    InsertSQL.Add('   :ROM_HEXP, :ROM_HROM, :ROM_OBSE, :ROM_PDSC, :ROM_QTPD, :ROM_QTSP, :ROM_QTVE,');
    InsertSQL.Add('   :ROM_RLVE, :ROM_STA, :ROM_STCO, :ROM_STFI, :ROM_STPD, :ROM_TCDE, :ROM_TDSC,');
    InsertSQL.Add('   :ROM_TSDE)');

    ModifySQL.Clear;
    ModifySQL.Add('update '+SLPrincipal.Values['rom_cab']);
    ModifySQL.Add('set');
    ModifySQL.Add('  ID       = :ID,');
    ModifySQL.Add('  ROM_ADSC = :ROM_ADSC,');
    ModifySQL.Add('  ROM_CCLI = :ROM_CCLI,');
    ModifySQL.Add('  ROM_CDBX = :ROM_CDBX,');
    ModifySQL.Add('  ROM_CDCX = :ROM_CDCX,');
    ModifySQL.Add('  ROM_CDNF = :ROM_CDNF,');
    ModifySQL.Add('  ROM_CDOC = :ROM_CDOC,');
    ModifySQL.Add('  ROM_CDPD = :ROM_CDPD,');
    ModifySQL.Add('  ROM_CDPR = :ROM_CDPR,');
    ModifySQL.Add('  ROM_CDRD = :ROM_CDRD,');
    ModifySQL.Add('  ROM_CDRO = :ROM_CDRO,');
    ModifySQL.Add('  ROM_CDSC = :ROM_CDSC,');
    ModifySQL.Add('  ROM_CEXP = :ROM_CEXP,');
    ModifySQL.Add('  ROM_COMI = :ROM_COMI,');
    ModifySQL.Add('  ROM_CONC = :ROM_CONC,');
    ModifySQL.Add('  ROM_CPAG = :ROM_CPAG,');
    ModifySQL.Add('  ROM_CREP = :ROM_CREP,');
    ModifySQL.Add('  ROM_CTNR = :ROM_CTNR,');
    ModifySQL.Add('  ROM_CVEN = :ROM_CVEN,');
    ModifySQL.Add('  ROM_DBAI = :ROM_DBAI,');
    ModifySQL.Add('  ROM_DCAN = :ROM_DCAN,');
    ModifySQL.Add('  ROM_DDES = :ROM_DDES,');
    ModifySQL.Add('  ROM_DEMB = :ROM_DEMB,');
    ModifySQL.Add('  ROM_DERO = :ROM_DERO,');
    ModifySQL.Add('  ROM_DEXP = :ROM_DEXP,');
    ModifySQL.Add('  ROM_DNFS = :ROM_DNFS,');
    ModifySQL.Add('  ROM_DPRD = :ROM_DPRD,');
    ModifySQL.Add('  ROM_DROM = :ROM_DROM,');
    ModifySQL.Add('  ROM_HEXP = :ROM_HEXP,');
    ModifySQL.Add('  ROM_HROM = :ROM_HROM,');
    ModifySQL.Add('  ROM_OBSE = :ROM_OBSE,');
    ModifySQL.Add('  ROM_PDSC = :ROM_PDSC,');
    ModifySQL.Add('  ROM_QTPD = :ROM_QTPD,');
    ModifySQL.Add('  ROM_QTSP = :ROM_QTSP,');
    ModifySQL.Add('  ROM_QTVE = :ROM_QTVE,');
    ModifySQL.Add('  ROM_RLVE = :ROM_RLVE,');
    ModifySQL.Add('  ROM_STA  = :ROM_STA, ');
    ModifySQL.Add('  ROM_STCO = :ROM_STCO,');
    ModifySQL.Add('  ROM_STFI = :ROM_STFI,');
    ModifySQL.Add('  ROM_STPD = :ROM_STPD,');
    ModifySQL.Add('  ROM_TCDE = :ROM_TCDE,');
    ModifySQL.Add('  ROM_TDSC = :ROM_TDSC,');
    ModifySQL.Add('  ROM_TSDE = :ROM_TSDE ');
    ModifySQL.Add('where');
    ModifySQL.Add('  ID = :OLD_ID');
  end;

  with rom_ite do
  begin
    DeleteSQL.Clear;
    DeleteSQL.Add('delete from '+SLPrincipal.Values['rom_ite']);
    DeleteSQL.Add('where');
    DeleteSQL.Add('ID = :OLD_ID');

    InsertSQL.Clear;
    InsertSQL.Add('insert into '+SLPrincipal.Values['rom_ite']);
    InsertSQL.Add('  (ID,       ROM_ABCD, ROM_CCAB, ROM_CDET, ROM_CDNF, ROM_CDOC, ROM_CDPD, ROM_CDPR,');
    InsertSQL.Add('   ROM_CDRD, ROM_CDRO, ROM_COMI, ROM_CPR2, ROM_CPRO, ROM_DCOR, ROM_DPRO,');
    InsertSQL.Add('   ROM_FLAG, ROM_ITEM, ROM_PCOR, ROM_PREC, ROM_QTDE, ROM_QTPD, ROM_QTRL,');
    InsertSQL.Add('   ROM_QTSP, ROM_RLPD, ROM_RLSP, ROM_TOTA, ROM_TPRC, ROM_UNIT, ROM_VDSC)');
    InsertSQL.Add('values');
    InsertSQL.Add('  (:ID,       :ROM_ABCD, :ROM_CCAB, :ROM_CDET, :ROM_CDNF, :ROM_CDOC, :ROM_CDPD,');
    InsertSQL.Add('   :ROM_CDPR, :ROM_CDRD, :ROM_CDRO, :ROM_COMI, :ROM_CPR2, :ROM_CPRO, :ROM_DCOR,');
    InsertSQL.Add('   :ROM_DPRO, :ROM_FLAG, :ROM_ITEM, :ROM_PCOR, :ROM_PREC, :ROM_QTDE, :ROM_QTPD,');
    InsertSQL.Add('   :ROM_QTRL, :ROM_QTSP, :ROM_RLPD, :ROM_RLSP, :ROM_TOTA, :ROM_TPRC, :ROM_UNIT,');
    InsertSQL.Add('   :ROM_VDSC)');

    ModifySQL.Clear;
    ModifySQL.Add('update '+SLPrincipal.Values['rom_ite']);
    ModifySQL.Add('set');
    ModifySQL.Add('  ID       = :ID,');
    ModifySQL.Add('  ROM_ABCD = :ROM_ABCD,');
    ModifySQL.Add('  ROM_CCAB = :ROM_CCAB,');
    ModifySQL.Add('  ROM_CDET = :ROM_CDET,');
    ModifySQL.Add('  ROM_CDNF = :ROM_CDNF,');
    ModifySQL.Add('  ROM_CDOC = :ROM_CDOC,');
    ModifySQL.Add('  ROM_CDPD = :ROM_CDPD,');
    ModifySQL.Add('  ROM_CDPR = :ROM_CDPR,');
    ModifySQL.Add('  ROM_CDRD = :ROM_CDRD,');
    ModifySQL.Add('  ROM_CDRO = :ROM_CDRO,');
    ModifySQL.Add('  ROM_COMI = :ROM_COMI,');
    ModifySQL.Add('  ROM_CPR2 = :ROM_CPR2,');
    ModifySQL.Add('  ROM_CPRO = :ROM_CPRO,');
    ModifySQL.Add('  ROM_DCOR = :ROM_DCOR,');
    ModifySQL.Add('  ROM_DPRO = :ROM_DPRO,');
    ModifySQL.Add('  ROM_FLAG = :ROM_FLAG,');
    ModifySQL.Add('  ROM_ITEM = :ROM_ITEM,');
    ModifySQL.Add('  ROM_PCOR = :ROM_PCOR,');
    ModifySQL.Add('  ROM_PREC = :ROM_PREC,');
    ModifySQL.Add('  ROM_QTDE = :ROM_QTDE,');
    ModifySQL.Add('  ROM_QTPD = :ROM_QTPD,');
    ModifySQL.Add('  ROM_QTRL = :ROM_QTRL,');
    ModifySQL.Add('  ROM_QTSP = :ROM_QTSP,');
    ModifySQL.Add('  ROM_RLPD = :ROM_RLPD,');
    ModifySQL.Add('  ROM_RLSP = :ROM_RLSP,');
    ModifySQL.Add('  ROM_TOTA = :ROM_TOTA,');
    ModifySQL.Add('  ROM_TPRC = :ROM_TPRC,');
    ModifySQL.Add('  ROM_UNIT = :ROM_UNIT,');
    ModifySQL.Add('  ROM_VDSC = :ROM_VDSC ');
    ModifySQL.Add('where');
    ModifySQL.Add('  ID = :OLD_ID');
  end;

  with ped_ven_cab do
  begin
    DeleteSQL.Clear;
    DeleteSQL.Add('delete from '+SLPrincipal.Values['ped_ven_cab']);
    DeleteSQL.Add('where');
    DeleteSQL.Add('ID = :OLD_ID');

    InsertSQL.Clear;
    InsertSQL.Add('insert into '+SLPrincipal.Values['ped_ven_cab']);
    InsertSQL.Add('  (ID, ROM_ADSC, ROM_CCLI, ROM_CDBX, ROM_CDCX, ROM_CDNF, ROM_CDOC, ROM_CDPD,');
    InsertSQL.Add('   ROM_CDPR, ROM_CDRD, ROM_CDRO, ROM_CDSC, ROM_CEXP, ROM_COMI, ROM_CONC,');
    InsertSQL.Add('   ROM_CPAG, ROM_CREP, ROM_CTNR, ROM_CVEN, ROM_DBAI, ROM_DCAN, ROM_DDES,');
    InsertSQL.Add('   ROM_DEMB, ROM_DERO, ROM_DEXP, ROM_DNFS, ROM_DPRD, ROM_DROM, ROM_HEXP,');
    InsertSQL.Add('   ROM_HROM, ROM_OBSE, ROM_PDSC, ROM_QTPD, ROM_QTSP, ROM_QTVE, ROM_RLVE,');
    InsertSQL.Add('   ROM_STA, ROM_STCO, ROM_STFI, ROM_STPD, ROM_TCDE, ROM_TDSC, ROM_TSDE)');
    InsertSQL.Add('values');
    InsertSQL.Add('  (:ID, :ROM_ADSC, :ROM_CCLI, :ROM_CDBX, :ROM_CDCX, :ROM_CDNF, :ROM_CDOC,');
    InsertSQL.Add('   :ROM_CDPD, :ROM_CDPR, :ROM_CDRD, :ROM_CDRO, :ROM_CDSC, :ROM_CEXP, :ROM_COMI,');
    InsertSQL.Add('   :ROM_CONC, :ROM_CPAG, :ROM_CREP, :ROM_CTNR, :ROM_CVEN, :ROM_DBAI, :ROM_DCAN,');
    InsertSQL.Add('   :ROM_DDES, :ROM_DEMB, :ROM_DERO, :ROM_DEXP, :ROM_DNFS, :ROM_DPRD, :ROM_DROM,');
    InsertSQL.Add('   :ROM_HEXP, :ROM_HROM, :ROM_OBSE, :ROM_PDSC, :ROM_QTPD, :ROM_QTSP, :ROM_QTVE,');
    InsertSQL.Add('   :ROM_RLVE, :ROM_STA, :ROM_STCO, :ROM_STFI, :ROM_STPD, :ROM_TCDE, :ROM_TDSC,');
    InsertSQL.Add('   :ROM_TSDE)');

    ModifySQL.Clear;
    ModifySQL.Add('update '+SLPrincipal.Values['ped_ven_cab']);
    ModifySQL.Add('set');
    ModifySQL.Add('  ID       = :ID,');
    ModifySQL.Add('  ROM_ADSC = :ROM_ADSC,');
    ModifySQL.Add('  ROM_CCLI = :ROM_CCLI,');
    ModifySQL.Add('  ROM_CDBX = :ROM_CDBX,');
    ModifySQL.Add('  ROM_CDCX = :ROM_CDCX,');
    ModifySQL.Add('  ROM_CDNF = :ROM_CDNF,');
    ModifySQL.Add('  ROM_CDOC = :ROM_CDOC,');
    ModifySQL.Add('  ROM_CDPD = :ROM_CDPD,');
    ModifySQL.Add('  ROM_CDPR = :ROM_CDPR,');
    ModifySQL.Add('  ROM_CDRD = :ROM_CDRD,');
    ModifySQL.Add('  ROM_CDRO = :ROM_CDRO,');
    ModifySQL.Add('  ROM_CDSC = :ROM_CDSC,');
    ModifySQL.Add('  ROM_CEXP = :ROM_CEXP,');
    ModifySQL.Add('  ROM_COMI = :ROM_COMI,');
    ModifySQL.Add('  ROM_CONC = :ROM_CONC,');
    ModifySQL.Add('  ROM_CPAG = :ROM_CPAG,');
    ModifySQL.Add('  ROM_CREP = :ROM_CREP,');
    ModifySQL.Add('  ROM_CTNR = :ROM_CTNR,');
    ModifySQL.Add('  ROM_CVEN = :ROM_CVEN,');
    ModifySQL.Add('  ROM_DBAI = :ROM_DBAI,');
    ModifySQL.Add('  ROM_DCAN = :ROM_DCAN,');
    ModifySQL.Add('  ROM_DDES = :ROM_DDES,');
    ModifySQL.Add('  ROM_DEMB = :ROM_DEMB,');
    ModifySQL.Add('  ROM_DERO = :ROM_DERO,');
    ModifySQL.Add('  ROM_DEXP = :ROM_DEXP,');
    ModifySQL.Add('  ROM_DNFS = :ROM_DNFS,');
    ModifySQL.Add('  ROM_DPRD = :ROM_DPRD,');
    ModifySQL.Add('  ROM_DROM = :ROM_DROM,');
    ModifySQL.Add('  ROM_HEXP = :ROM_HEXP,');
    ModifySQL.Add('  ROM_HROM = :ROM_HROM,');
    ModifySQL.Add('  ROM_OBSE = :ROM_OBSE,');
    ModifySQL.Add('  ROM_PDSC = :ROM_PDSC,');
    ModifySQL.Add('  ROM_QTPD = :ROM_QTPD,');
    ModifySQL.Add('  ROM_QTSP = :ROM_QTSP,');
    ModifySQL.Add('  ROM_QTVE = :ROM_QTVE,');
    ModifySQL.Add('  ROM_RLVE = :ROM_RLVE,');
    ModifySQL.Add('  ROM_STA  = :ROM_STA, ');
    ModifySQL.Add('  ROM_STCO = :ROM_STCO,');
    ModifySQL.Add('  ROM_STFI = :ROM_STFI,');
    ModifySQL.Add('  ROM_STPD = :ROM_STPD,');
    ModifySQL.Add('  ROM_TCDE = :ROM_TCDE,');
    ModifySQL.Add('  ROM_TDSC = :ROM_TDSC,');
    ModifySQL.Add('  ROM_TSDE = :ROM_TSDE ');
    ModifySQL.Add('where');
    ModifySQL.Add('  ID = :OLD_ID');
  end;

  with ped_ven_ite do
  begin
    DeleteSQL.Clear;
    DeleteSQL.Add('delete from '+SLPrincipal.Values['ped_ven_ite']);
    DeleteSQL.Add('where');
    DeleteSQL.Add('ID = :OLD_ID');

    InsertSQL.Clear;
    InsertSQL.Add('insert into '+SLPrincipal.Values['ped_ven_ite']);
    InsertSQL.Add('  (ID,       ROM_ABCD, ROM_CCAB, ROM_CDET, ROM_CDNF, ROM_CDOC, ROM_CDPD, ROM_CDPR,');
    InsertSQL.Add('   ROM_CDRD, ROM_CDRO, ROM_COMI, ROM_CPR2, ROM_CPRO, ROM_DCOR, ROM_DPRO,');
    InsertSQL.Add('   ROM_FLAG, ROM_ITEM, ROM_PCOR, ROM_PREC, ROM_QTDE, ROM_QTPD, ROM_QTRL,');
    InsertSQL.Add('   ROM_QTSP, ROM_RLPD, ROM_RLSP, ROM_TOTA, ROM_TPRC, ROM_UNIT, ROM_VDSC)');
    InsertSQL.Add('values');
    InsertSQL.Add('  (:ID,       :ROM_ABCD, :ROM_CCAB, :ROM_CDET, :ROM_CDNF, :ROM_CDOC, :ROM_CDPD,');
    InsertSQL.Add('   :ROM_CDPR, :ROM_CDRD, :ROM_CDRO, :ROM_COMI, :ROM_CPR2, :ROM_CPRO, :ROM_DCOR,');
    InsertSQL.Add('   :ROM_DPRO, :ROM_FLAG, :ROM_ITEM, :ROM_PCOR, :ROM_PREC, :ROM_QTDE, :ROM_QTPD,');
    InsertSQL.Add('   :ROM_QTRL, :ROM_QTSP, :ROM_RLPD, :ROM_RLSP, :ROM_TOTA, :ROM_TPRC, :ROM_UNIT,');
    InsertSQL.Add('   :ROM_VDSC)');

    ModifySQL.Clear;
    ModifySQL.Add('update '+SLPrincipal.Values['ped_ven_ite']);
    ModifySQL.Add('set');
    ModifySQL.Add('  ID       = :ID,');
    ModifySQL.Add('  ROM_ABCD = :ROM_ABCD,');
    ModifySQL.Add('  ROM_CCAB = :ROM_CCAB,');
    ModifySQL.Add('  ROM_CDET = :ROM_CDET,');
    ModifySQL.Add('  ROM_CDNF = :ROM_CDNF,');
    ModifySQL.Add('  ROM_CDOC = :ROM_CDOC,');
    ModifySQL.Add('  ROM_CDPD = :ROM_CDPD,');
    ModifySQL.Add('  ROM_CDPR = :ROM_CDPR,');
    ModifySQL.Add('  ROM_CDRD = :ROM_CDRD,');
    ModifySQL.Add('  ROM_CDRO = :ROM_CDRO,');
    ModifySQL.Add('  ROM_COMI = :ROM_COMI,');
    ModifySQL.Add('  ROM_CPR2 = :ROM_CPR2,');
    ModifySQL.Add('  ROM_CPRO = :ROM_CPRO,');
    ModifySQL.Add('  ROM_DCOR = :ROM_DCOR,');
    ModifySQL.Add('  ROM_DPRO = :ROM_DPRO,');
    ModifySQL.Add('  ROM_FLAG = :ROM_FLAG,');
    ModifySQL.Add('  ROM_ITEM = :ROM_ITEM,');
    ModifySQL.Add('  ROM_PCOR = :ROM_PCOR,');
    ModifySQL.Add('  ROM_PREC = :ROM_PREC,');
    ModifySQL.Add('  ROM_QTDE = :ROM_QTDE,');
    ModifySQL.Add('  ROM_QTPD = :ROM_QTPD,');
    ModifySQL.Add('  ROM_QTRL = :ROM_QTRL,');
    ModifySQL.Add('  ROM_QTSP = :ROM_QTSP,');
    ModifySQL.Add('  ROM_RLPD = :ROM_RLPD,');
    ModifySQL.Add('  ROM_RLSP = :ROM_RLSP,');
    ModifySQL.Add('  ROM_TOTA = :ROM_TOTA,');
    ModifySQL.Add('  ROM_TPRC = :ROM_TPRC,');
    ModifySQL.Add('  ROM_UNIT = :ROM_UNIT,');
    ModifySQL.Add('  ROM_VDSC = :ROM_VDSC ');
    ModifySQL.Add('where');
    ModifySQL.Add('  ID = :OLD_ID');
  end;
end;  

procedure Tfrmctr_rom_edi.PESQUISA_CLIENTE(pesq,chave: string;cdsc: double);
begin
  try
    tag := 1;

    with psq_cli do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CLI_BAI,CLI_TLOG,CLI_LOGR,CLI_NUME,CLI_CEP,CLI_COMP,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,');
      SQL.Add('       CLI_VDSC,CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,CLI_VULT,CLI_DDD,CLI_TEL1,REP_FANT,USU_DUSU,CLI_STPD,CLI_DTRA,CLI_DUSU,');
      SQL.Add('       TRIM(CAST(SUBSTRING(CLI_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) CLI_OBSO');
      SQL.Add('FROM   CAD_CLI');
      SQL.Add('LEFT   OUTER JOIN CAD_USU ON CAD_CLI.CLI_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('LEFT   OUTER JOIN CAD_REP ON CAD_CLI.CLI_CREP = CAD_REP.ID');

      if pesq = 'I' then
      SQL.Add('WHERE  CAD_CLI.ID = '''+chave+'''')
      else if pesq = 'C' then
      SQL.Add('WHERE  CLI_CNPJ LIKE ''%'+edcnpj.Text+'%''')
      else if pesq = 'F' then
      SQL.Add('WHERE  CLI_FANT LIKE ''%'+chave+'%''')
      else if pesq = 'R' then
      SQL.Add('WHERE  CLI_RAZA LIKE ''%'+chave+'%''');

      Open;
      Last;
    end;

    if psq_cli.recordcount = 0 then
    begin
      if pesq = 'I' then
      begin
        edccli.SetFocus;
        messageBox(handle,'Código do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'C' then
      begin
        edcnpj.SetFocus;
        messageBox(handle,'C.N.P.J. do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'F' then
      begin
        eddcli.SetFocus;
        messageBox(handle,'Nome fantasia do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'R' then
      begin
        edrcli.SetFocus;
        messageBox(handle,'Razão social do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end;
      Abort;
    end
    else if psq_cli.recordcount = 1 then
    begin
      if psq_cliCLI_STA.AsString <> '0' then
      begin
        if pesq = 'I' then
           edccli.SetFocus
        else if pesq = 'C' then
          edcnpj.SetFocus
        else if pesq = 'F' then
          eddcli.SetFocus
        else if pesq = 'R' then
          edrcli.SetFocus;

        messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if psq_cliCLI_STAV.AsString <> 'A' then
      begin
        if pesq = 'I' then
           edccli.SetFocus
        else if pesq = 'C' then
          edcnpj.SetFocus
        else if pesq = 'F' then
          eddcli.SetFocus
        else if pesq = 'R' then
          edrcli.SetFocus;

        if psq_cliCLI_STAV.AsString = 'I' then
           messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
        else if psq_cliCLI_STAV.AsString = 'P' then
           messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' aguardando autorização de compra !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if (psq_cliCLI_ESTA.AsString <> 'EX') and (psq_cliID.AsString <> frmprincipal.parametrosPAR_CCLI.AsString) then
      begin
        if (Length(psq_cliCLI_CNPJ.AsString) < 5) and (Length(psq_cliCLI_CPF.AsString) < 5) then
        begin
          if pesq = 'I' then
             edccli.SetFocus
          else if pesq = 'C' then
            edcnpj.SetFocus
          else if pesq = 'F' then
            eddcli.SetFocus
          else if pesq = 'R' then
            edrcli.SetFocus;

          messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' sem C.N.P.J. e C.P.F cadastrado. '+#13+'Verifique !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;
      end;

      edccli.Text := psq_cliID.AsString;
      edcnpj.Text := psq_cliCLI_CNPJ.AsString;
      eddcli.Text := psq_cliCLI_FANT.AsString;
      edrcli.Text := psq_cliCLI_RAZA.AsString;
    end;
  finally
    tag := 0;
  end;
end;

procedure Tfrmctr_rom_edi.PESQUISA_VENDEDOR(pesq,chave: string);
begin
  if (chave = '0') or (chave = '') then
  exit;

  try
    tag := 1;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT USU_CUSU,USU_DUSU,USU_STA,USU_MENU,USU_STAV FROM CAD_USU');

      if pesq = 'C' then
      SQL.Add('WHERE  USU_CUSU = '''+chave+'''')
      else if pesq = 'F' then
      SQL.Add('WHERE  USU_DUSU = '''+chave+'''');
      Open;

      if fields[0].IsNull then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
        begin
        edcven.SetFocus;
        messageBox(handle,'Código do vendedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end
        else if pesq = 'F' then
        begin
        cbdven.SetFocus;
        messageBox(handle,'Nome do vendedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;

        Abort;
      end;

      if fields[2].AsString <> '0' then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
           edcven.SetFocus
        else if pesq = 'F' then
           cbdven.SetFocus;

        messageBox(handle,PChar('Vendedor '+fields[1].AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if fields[3].AsString <> 'VEN' then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
           edcven.SetFocus
        else if pesq = 'F' then
           cbdven.SetFocus;

        messageBox(handle,PChar('Vendedor '+fields[1].AsString+' não está habilitado para efetuar vendas !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        abort;
      end;

      if fields[4].AsString <> 'A' then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
        edcven.SetFocus
        else if pesq = 'F' then
        cbdven.SetFocus;

        if fields[4].AsString = 'I' then
        messageBox(handle,PChar('Login do Vendedor '+fields[1].AsString+' está inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK) else
        if fields[4].AsString = 'S' then
        messageBox(handle,PChar('Login do Vendedor '+fields[1].AsString+' está suspenso !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        abort;
      end;

      edcven.Text := fields[0].AsString;
      cbdven.Text := fields[1].AsString;
    end;
  finally
    tag := 0;
  end;
end;

procedure Tfrmctr_rom_edi.PESQUISA_REPRESENTANTE(pesq,chave: string);
begin
  try
    tag := 1;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,REP_FANT,REP_STA,REP_STAV FROM CAD_REP');
      if pesq = 'C' then
         SQL.Add('WHERE  ID = '''+chave+'''')
      else if pesq = 'F' then
         SQL.Add('WHERE  REP_FANT = '''+chave+'''');
      Open;

      if fields[0].IsNull then
      begin
        edcrep.Text := '';
        cbdrep.Text := '';

        if pesq = 'C' then
        begin
          edcrep.SetFocus;
          messageBox(handle,'Código do representante não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end
        else if pesq = 'F' then
        begin
          cbdrep.SetFocus;
          messageBox(handle,'Nome do representante não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;
        Abort;
      end;

      if fields[2].AsString = '1' then
      begin
        edcrep.Text := '';
        cbdrep.Text := '';

        if pesq = 'C' then
           edcrep.SetFocus
        else if pesq = 'F' then
           cbdrep.SetFocus;

        messageBox(handle,PChar('Representante '+fields[1].AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if fields[3].AsString <> 'A' then
      begin
        edcrep.Text := '';
        cbdrep.Text := '';

        if pesq = 'C' then
           edcrep.SetFocus
        else if pesq = 'F' then
           cbdrep.SetFocus;

        if fields[3].AsString = 'I' then
           messageBox(handle,PChar('Representante '+fields[1].AsString+' inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
        else if fields[3].AsString = 'P' then
           messageBox(handle,PChar('Representante '+fields[1].AsString+' aguardando autorização para efetuar vendas !'),PChar(self.Caption),MB_ICONERROR+MB_OK);

        Abort;
      end;
      edcrep.Text := fields[0].AsString;
      cbdrep.Text := fields[1].AsString;
    end;
  finally
    tag := 0;
  end;
end;

procedure Tfrmctr_rom_edi.PESQUISA_FPAGTO(pesq,chave: string);
begin
  try
    tag := 1;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,PAG_DPAG,PAG_STA,PAG_PARC,PAG_DUPL FROM TAB_PAG');
      if pesq = 'C' then
         SQL.Add('WHERE  ID = '''+chave+'''')
      else if pesq = 'F' then
         SQL.Add('WHERE  PAG_DPAG = '''+chave+'''');
      Open;

      if fields[0].IsNull then
      begin
        edcpag.Text := '';
        cbdpag.Text := '';

        if pesq = 'C' then
        begin
          edcpag.SetFocus;
          messageBox(handle,'Código da forma de pagamento não cadastrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end
        else if pesq = 'F' then
        begin
          cbdpag.SetFocus;
          messageBox(handle,'Nome da forma de pagamento não cadastrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;
        Abort;
      end;

      if fields[2].AsString = '1' then
      begin
        edcpag.Text := '';
        cbdpag.Text := '';
      
        if pesq = 'C' then
           edcpag.SetFocus;

        messageBox(handle,PChar('Forma de pagamento '+fields[1].AsString+' enviada para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      edcpag.Text := fields[0].AsString;
      cbdpag.Text := fields[1].AsString;

      if fields[4].AsString = 'SIM' then
         cbstco.Text := 'BANCÁRIO';
    end;
  finally
    tag := 0;
  end;
end;

procedure Tfrmctr_rom_edi.edcvenValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcven.Text = '' then
  begin
    cbdven.Text := '';
    abort;
  end;

  PESQUISA_VENDEDOR('C',edcven.Text);
end;

procedure Tfrmctr_rom_edi.cbdvenExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    PESQUISA_VENDEDOR('F',cbdven.Text);
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

procedure Tfrmctr_rom_edi.edcrepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcrep.Text = '' then
  begin
    cbdrep.Text := '';
    abort;
  end;

  PESQUISA_REPRESENTANTE('C',edcrep.Text);
end;

procedure Tfrmctr_rom_edi.cbdrepExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    PESQUISA_REPRESENTANTE('F',cbdrep.Text);
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

procedure Tfrmctr_rom_edi.edcpagValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcpag.Text = '' then
  begin
    cbdpag.Text := '';
    abort;
  end;

  PESQUISA_FPAGTO('C',edcpag.Text);
end;

procedure Tfrmctr_rom_edi.cbdpagExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    PESQUISA_FPAGTO('F',cbdpag.Text);
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

procedure Tfrmctr_rom_edi.FormCreate(Sender: TObject);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   USU_DUSU FROM CAD_USU');
    SQL.Add('WHERE    USU_MENU = ''VEN''');
    SQL.Add('AND      USU_STA  = ''0''');
    SQL.Add('ORDER BY USU_DUSU');
    Open;
    while not eof do
    begin
      cbdven.Values.Add(fields[0].AsString);
      cbdven.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   REP_FANT FROM CAD_REP');
    SQL.Add('WHERE    REP_STA = ''0''');
    SQL.Add('ORDER BY REP_FANT');
    Open;
    while not eof do
    begin
      cbdrep.Values.Add(fields[0].AsString);
      cbdrep.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   VEN_TIPO FROM TAB_PED');
    SQL.Add('ORDER BY VEN_TIPO');
    Open;
    while not eof do
    begin
      if fields[0].AsString <> 'DEVOLUÇÃO' then
      begin
        cbstpd.Values.Add(fields[0].AsString);
        cbstpd.Descriptions.Add(fields[0].AsString);
      end;
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   PAG_DPAG FROM TAB_PAG');
    SQL.Add('WHERE    PAG_STA = ''0''');
    SQL.Add('ORDER BY PAG_DPAG');
    Open;
    while not eof do
    begin
      cbdpag.Values.Add(fields[0].AsString);
      cbdpag.Descriptions.Add(fields[0].AsString);
      next;
    end;
  end;
  ABRE_TABELA;
end;

procedure Tfrmctr_rom_edi.FormShow(Sender: TObject);
begin
  PESQUISA_CLIENTE('I',edccli.Text,0);
  PESQUISA_VENDEDOR('C',edcven.Text);
  PESQUISA_REPRESENTANTE('C',edcrep.Text);
  PESQUISA_FPAGTO('C',edcpag.Text);
end;

procedure Tfrmctr_rom_edi.siSAVClick(Sender: TObject);
var
  stco,stfi: string;
  cpag: integer;
begin
  activecontrol := nil;

  if oYesNo(handle,'Confirma alteração do romaneio ?') = mrno then
     abort;

  try
    try
      stco := cbstco.Text;
      cpag := strtoint(edcpag.Text);
      stfi := cbstfi.Text;
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT VEN_FATU FROM TAB_PED');
        SQL.Add('WHERE  VEN_TIPO = '''+cbstpd.Text+'''');
        Open;

        if fields[0].AsString <> '1' then
        begin
          stco := 'SEM COBRANÇA';
          stfi := 'SEM COBRANÇA';
          
          SQL.Clear;
          SQL.Add('SELECT ID FROM TAB_PAG');
          SQL.Add('WHERE  PAG_DPAG = ''SEM COBRANÇA''');
          Open;
          cpag := fields[0].AsInteger;
        end;
      end;

      with ped_ven_cab do
      begin
        Close;
        SelectSQL.Clear;
        SelectSQL.Add('SELECT * FROM '+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
        SelectSQL.Add('WHERE ROM_CDRO = '''+edcdro.Text+'''');
        Open;

        ped_ven_cab.Edit;
        ped_ven_cabROM_CVEN.Value := strtoint(edcven.Text);
        ped_ven_cabROM_CREP.Value := strtoint(edcrep.Text);
        ped_ven_cabROM_STPD.Value := cbstpd.Text;
        ped_ven_cabROM_CPAG.Value := cpag;
        ped_ven_cabROM_STCO.Value := stco;
        ped_ven_cabROM_STFI.Value := stfi;
        ped_ven_cabROM_CTNR.Value := edctnr.Text;
        ped_ven_cab.Post;

        edcdpd.Text := fields[0].AsString;
      end;

      with rom_cab do
      begin
        Close;
        SelectSQL.Clear;
        SelectSQL.Add('SELECT * FROM '+SLPrincipal.Values['rom_cab']+' "ROM_CAB"');
        SelectSQL.Add('WHERE  ID = '''+edcdro.Text+'''');
        Open;
      end;

      rom_cab.Edit;
      rom_cabROM_CVEN.Value := strtoint(edcven.Text);
      rom_cabROM_CREP.Value := strtoint(edcrep.Text);
      rom_cabROM_STPD.Value := cbstpd.Text;
      rom_cabROM_CPAG.Value := cpag;
      rom_cabROM_STCO.Value := stco;
      rom_cabROM_STFI.Value := stfi;
      rom_cabROM_CTNR.Value := edctnr.Text;
      rom_cabROM_OBSE.Value := edobse.Text;
      rom_cab.Post;

      if rom_cabROM_CDNF.AsInteger > 0 then
      with frmprincipal.sp_sql do
      begin

        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['nfe_cab']);
        SQL.Add('SET    NFE_CVEN = '''+edcven.Text+''',');
        SQL.Add('       NFE_DVEN = '''+cbdven.Text+''',');
        SQL.Add('       NFE_CREP = '''+edcrep.Text+''',');
        SQL.Add('       NFE_DREP = '''+cbdrep.Text+'''');
        SQL.Add('WHERE  NFE_CDNF = '''+rom_cabROM_CDNF.AsString+'''');

        ibSP.StoredProcName := 'SP_SQL';
        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;
      end;

      frmprincipal.Log_Eve('Vendas','Romaneios','Alteração de romaneio',rom_cabROM_DERO.AsString,rom_cabROM_DERO.AsString,LOWERCASE(edccli.Hint),'','');
      IBTra.CommitRetaining;

      messageBox(handle,'Romaneio alterado com sucesso !',PChar(Self.Caption),MB_ICONINFORMATION+MB_OK);
    except
      messageBox(handle,'Erro na alteração do romaneio !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    end;
  finally
  end;
end;

procedure Tfrmctr_rom_edi.tsoutShow(Sender: TObject);
begin
  edctnr.SetFocus;
end;

end.
