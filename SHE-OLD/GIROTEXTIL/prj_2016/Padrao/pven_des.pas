unit pven_des;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, DB, IBCustomDataSet, ImgList, IBStoredProc, IBDatabase,
  IBQuery,  ComCtrls, ExtCtrls, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, dxEditor, dxEdLib, dxPageControl, QRExport, dxExEdtr,
  rxSpeedbar;

type
  Tfrmven_des = class(Tfrmpadr3)
    des_001: TIBDataSet;
    des_001ID: TIntegerField;
    des_001ROM_DESE: TIBStringField;
    des_001ROM_DCOR: TIBStringField;
    des_001ROM_QTDE: TIBBCDField;
    des_001ROM_NOME: TIBStringField;
    des_002: TIBDataSet;
    des_002ID: TIntegerField;
    des_002ROM_DESE: TIBStringField;
    des_002ROM_DCOR: TIBStringField;
    des_002ROM_QTDE: TIBBCDField;
    des_002ROM_NOME: TIBStringField;
    des_003: TIBDataSet;
    des_003ID: TIntegerField;
    des_003ROM_DESE: TIBStringField;
    des_003ROM_QTDE: TIBBCDField;
    des_003ROM_DCOR: TIBStringField;
    des_003ROM_NOME: TIBStringField;
    des_004: TIBDataSet;
    des_004ID: TIntegerField;
    des_004ROM_DESE: TIBStringField;
    des_004ROM_DCOR: TIBStringField;
    des_004ROM_QTDE: TIBBCDField;
    des_004ROM_NOME: TIBStringField;
    des_005: TIBDataSet;
    des_005ID: TIntegerField;
    des_005ROM_DESE: TIBStringField;
    des_005ROM_DCOR: TIBStringField;
    des_005ROM_QTDE: TIBBCDField;
    des_005ROM_NOME: TIBStringField;
    des_006: TIBDataSet;
    des_006ID: TIntegerField;
    des_006ROM_DESE: TIBStringField;
    des_006ROM_DCOR: TIBStringField;
    des_006ROM_QTDE: TIBBCDField;
    des_006ROM_NOME: TIBStringField;
    des_007: TIBDataSet;
    des_007ID: TIntegerField;
    des_007ROM_DESE: TIBStringField;
    des_007ROM_DCOR: TIBStringField;
    des_007ROM_QTDE: TIBBCDField;
    des_007ROM_NOME: TIBStringField;
    des_008: TIBDataSet;
    des_008ID: TIntegerField;
    des_008ROM_DESE: TIBStringField;
    des_008ROM_DCOR: TIBStringField;
    des_008ROM_QTDE: TIBBCDField;
    des_008ROM_NOME: TIBStringField;
    dtsdes_008: TDataSource;
    dtsdes_007: TDataSource;
    dtsdes_006: TDataSource;
    dtsdes_005: TDataSource;
    dstdes_004: TDataSource;
    dtsdes_003: TDataSource;
    dtsdes_002: TDataSource;
    dtsdes_001: TDataSource;
    pcDES: TdxPageControl;
    tsDES01: TdxTabSheet;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel91: TPanel;
    edDES1: TdxEdit;
    dbg001: TdxDBGrid;
    dbg001ROM_DCOR: TdxDBGridMaskColumn;
    dbg001ROM_QTDE: TdxDBGridMaskColumn;
    tsDES02: TdxTabSheet;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel27: TPanel;
    edDES2: TdxEdit;
    dbg002: TdxDBGrid;
    dbg002ROM_DCOR: TdxDBGridMaskColumn;
    dbg002ROM_QTDE: TdxDBGridMaskColumn;
    tsDES03: TdxTabSheet;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel28: TPanel;
    edDES3: TdxEdit;
    dbg003: TdxDBGrid;
    dbg003ROM_DCOR: TdxDBGridMaskColumn;
    dbg003ROM_QTDE: TdxDBGridMaskColumn;
    tsDES04: TdxTabSheet;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel92: TPanel;
    edDES4: TdxEdit;
    dbg004: TdxDBGrid;
    dbg004ROM_DCOR: TdxDBGridMaskColumn;
    dbg004ROM_QTDE: TdxDBGridMaskColumn;
    tsDES05: TdxTabSheet;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel93: TPanel;
    edDES5: TdxEdit;
    dbg005: TdxDBGrid;
    dbg005ROM_DCOR: TdxDBGridMaskColumn;
    dbg005ROM_QTDE: TdxDBGridMaskColumn;
    tsDES06: TdxTabSheet;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel94: TPanel;
    edDES6: TdxEdit;
    dbg006: TdxDBGrid;
    dxDBGridMaskColumn73: TdxDBGridMaskColumn;
    dxDBGridMaskColumn74: TdxDBGridMaskColumn;
    tsDES07: TdxTabSheet;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel95: TPanel;
    edDES7: TdxEdit;
    dbg007: TdxDBGrid;
    dxDBGridMaskColumn75: TdxDBGridMaskColumn;
    dxDBGridMaskColumn76: TdxDBGridMaskColumn;
    tsDES08: TdxTabSheet;
    Panel25: TPanel;
    Panel26: TPanel;
    dbg008: TdxDBGrid;
    dxDBGridMaskColumn77: TdxDBGridMaskColumn;
    dxDBGridMaskColumn78: TdxDBGridMaskColumn;
    Panel96: TPanel;
    edDES8: TdxEdit;
    SpeedBar6: TSpeedBar;
    SpeedbarSection25: TSpeedbarSection;
    SpeedbarSection26: TSpeedbarSection;
    SpeedbarSection27: TSpeedbarSection;
    SpeedbarSection28: TSpeedbarSection;
    d1I: TSpeedItem;
    d1E: TSpeedItem;
    d1S: TSpeedItem;
    d1C: TSpeedItem;
    d1A: TSpeedItem;
    SpeedBar7: TSpeedBar;
    SpeedbarSection29: TSpeedbarSection;
    SpeedbarSection30: TSpeedbarSection;
    SpeedbarSection31: TSpeedbarSection;
    SpeedbarSection32: TSpeedbarSection;
    d2I: TSpeedItem;
    d2E: TSpeedItem;
    d2S: TSpeedItem;
    d2C: TSpeedItem;
    d2A: TSpeedItem;
    SpeedBar8: TSpeedBar;
    SpeedbarSection33: TSpeedbarSection;
    SpeedbarSection34: TSpeedbarSection;
    SpeedbarSection35: TSpeedbarSection;
    SpeedbarSection36: TSpeedbarSection;
    d3I: TSpeedItem;
    d3E: TSpeedItem;
    d3S: TSpeedItem;
    d3C: TSpeedItem;
    d3A: TSpeedItem;
    SpeedBar9: TSpeedBar;
    SpeedbarSection37: TSpeedbarSection;
    SpeedbarSection38: TSpeedbarSection;
    SpeedbarSection39: TSpeedbarSection;
    SpeedbarSection40: TSpeedbarSection;
    d4I: TSpeedItem;
    d4E: TSpeedItem;
    d4S: TSpeedItem;
    d4C: TSpeedItem;
    d4A: TSpeedItem;
    SpeedBar10: TSpeedBar;
    SpeedbarSection41: TSpeedbarSection;
    SpeedbarSection42: TSpeedbarSection;
    SpeedbarSection43: TSpeedbarSection;
    SpeedbarSection44: TSpeedbarSection;
    d5I: TSpeedItem;
    d5E: TSpeedItem;
    d5S: TSpeedItem;
    d5C: TSpeedItem;
    d5A: TSpeedItem;
    SpeedBar11: TSpeedBar;
    SpeedbarSection45: TSpeedbarSection;
    SpeedbarSection46: TSpeedbarSection;
    SpeedbarSection47: TSpeedbarSection;
    SpeedbarSection48: TSpeedbarSection;
    d6I: TSpeedItem;
    d6E: TSpeedItem;
    d6S: TSpeedItem;
    d6C: TSpeedItem;
    d6A: TSpeedItem;
    SpeedBar12: TSpeedBar;
    SpeedbarSection49: TSpeedbarSection;
    SpeedbarSection50: TSpeedbarSection;
    SpeedbarSection51: TSpeedbarSection;
    SpeedbarSection52: TSpeedbarSection;
    d7I: TSpeedItem;
    d7E: TSpeedItem;
    d7S: TSpeedItem;
    d7C: TSpeedItem;
    d7A: TSpeedItem;
    SpeedBar13: TSpeedBar;
    SpeedbarSection53: TSpeedbarSection;
    SpeedbarSection54: TSpeedbarSection;
    SpeedbarSection55: TSpeedbarSection;
    SpeedbarSection56: TSpeedbarSection;
    d8I: TSpeedItem;
    d8E: TSpeedItem;
    d8S: TSpeedItem;
    d8C: TSpeedItem;
    d8A: TSpeedItem;
    siVIS: TSpeedItem;
    siPRI: TSpeedItem;
    des_001ROM_CCAB: TIntegerField;
    des_002ROM_CCAB: TIntegerField;
    des_003ROM_CCAB: TIntegerField;
    des_004ROM_CCAB: TIntegerField;
    des_005ROM_CCAB: TIntegerField;
    des_006ROM_CCAB: TIntegerField;
    des_007ROM_CCAB: TIntegerField;
    des_008ROM_CCAB: TIntegerField;
    SpeedItem1: TSpeedItem;
    QRRTFFilter1: TQRRTFFilter;
    expXLS: TQRExcelFilter;
    siPSQ: TSpeedItem;
    edcdro: TdxMaskEdit;
    procedure d1IClick(Sender: TObject);
    procedure d1AClick(Sender: TObject);
    procedure d1EClick(Sender: TObject);
    procedure d1SClick(Sender: TObject);
    procedure d1CClick(Sender: TObject);
    procedure d2IClick(Sender: TObject);
    procedure d2AClick(Sender: TObject);
    procedure d2EClick(Sender: TObject);
    procedure d2SClick(Sender: TObject);
    procedure d2CClick(Sender: TObject);
    procedure d3IClick(Sender: TObject);
    procedure d3EClick(Sender: TObject);
    procedure d3SClick(Sender: TObject);
    procedure d3CClick(Sender: TObject);
    procedure d3AClick(Sender: TObject);
    procedure d4IClick(Sender: TObject);
    procedure d4EClick(Sender: TObject);
    procedure d4SClick(Sender: TObject);
    procedure d4CClick(Sender: TObject);
    procedure d4AClick(Sender: TObject);
    procedure d5IClick(Sender: TObject);
    procedure d5EClick(Sender: TObject);
    procedure d5SClick(Sender: TObject);
    procedure d5CClick(Sender: TObject);
    procedure d5AClick(Sender: TObject);
    procedure d6IClick(Sender: TObject);
    procedure d6EClick(Sender: TObject);
    procedure d6SClick(Sender: TObject);
    procedure d6CClick(Sender: TObject);
    procedure d6AClick(Sender: TObject);
    procedure d7IClick(Sender: TObject);
    procedure d7EClick(Sender: TObject);
    procedure d7SClick(Sender: TObject);
    procedure d7CClick(Sender: TObject);
    procedure d7AClick(Sender: TObject);
    procedure d8IClick(Sender: TObject);
    procedure d8EClick(Sender: TObject);
    procedure d8SClick(Sender: TObject);
    procedure d8CClick(Sender: TObject);
    procedure d8AClick(Sender: TObject);
    procedure dbg001KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg002KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg003KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg004KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg005KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg006KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg007KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg008KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure des_001AfterCancel(DataSet: TDataSet);
    procedure des_001AfterEdit(DataSet: TDataSet);
    procedure des_001AfterPost(DataSet: TDataSet);
    procedure des_001BeforeCancel(DataSet: TDataSet);
    procedure des_001BeforePost(DataSet: TDataSet);
    procedure des_001NewRecord(DataSet: TDataSet);
    procedure des_001AfterDelete(DataSet: TDataSet);
    procedure des_002AfterCancel(DataSet: TDataSet);
    procedure des_002AfterDelete(DataSet: TDataSet);
    procedure des_002AfterEdit(DataSet: TDataSet);
    procedure des_002AfterPost(DataSet: TDataSet);
    procedure des_002BeforeCancel(DataSet: TDataSet);
    procedure des_002BeforePost(DataSet: TDataSet);
    procedure des_002NewRecord(DataSet: TDataSet);
    procedure des_003AfterCancel(DataSet: TDataSet);
    procedure des_003AfterDelete(DataSet: TDataSet);
    procedure des_003AfterEdit(DataSet: TDataSet);
    procedure des_003AfterPost(DataSet: TDataSet);
    procedure des_003BeforeCancel(DataSet: TDataSet);
    procedure des_003BeforePost(DataSet: TDataSet);
    procedure des_003NewRecord(DataSet: TDataSet);
    procedure des_004AfterCancel(DataSet: TDataSet);
    procedure des_004AfterDelete(DataSet: TDataSet);
    procedure des_004AfterEdit(DataSet: TDataSet);
    procedure des_004AfterPost(DataSet: TDataSet);
    procedure des_004BeforeCancel(DataSet: TDataSet);
    procedure des_004BeforePost(DataSet: TDataSet);
    procedure des_004NewRecord(DataSet: TDataSet);
    procedure des_005AfterCancel(DataSet: TDataSet);
    procedure des_005AfterDelete(DataSet: TDataSet);
    procedure des_005AfterEdit(DataSet: TDataSet);
    procedure des_005AfterPost(DataSet: TDataSet);
    procedure des_005BeforeCancel(DataSet: TDataSet);
    procedure des_005BeforePost(DataSet: TDataSet);
    procedure des_005NewRecord(DataSet: TDataSet);
    procedure des_006AfterCancel(DataSet: TDataSet);
    procedure des_006AfterDelete(DataSet: TDataSet);
    procedure des_006AfterEdit(DataSet: TDataSet);
    procedure des_006AfterPost(DataSet: TDataSet);
    procedure des_006BeforeCancel(DataSet: TDataSet);
    procedure des_006BeforePost(DataSet: TDataSet);
    procedure des_006NewRecord(DataSet: TDataSet);
    procedure des_007AfterCancel(DataSet: TDataSet);
    procedure des_007AfterDelete(DataSet: TDataSet);
    procedure des_007AfterEdit(DataSet: TDataSet);
    procedure des_007AfterPost(DataSet: TDataSet);
    procedure des_007BeforeCancel(DataSet: TDataSet);
    procedure des_007BeforePost(DataSet: TDataSet);
    procedure des_007NewRecord(DataSet: TDataSet);
    procedure des_008AfterCancel(DataSet: TDataSet);
    procedure des_008AfterDelete(DataSet: TDataSet);
    procedure des_008AfterEdit(DataSet: TDataSet);
    procedure des_008AfterPost(DataSet: TDataSet);
    procedure des_008BeforeCancel(DataSet: TDataSet);
    procedure des_008BeforePost(DataSet: TDataSet);
    procedure des_008NewRecord(DataSet: TDataSet);
    procedure siVISClick(Sender: TObject);
    procedure des_001BeforeInsert(DataSet: TDataSet);
    procedure des_002BeforeInsert(DataSet: TDataSet);
    procedure des_003BeforeInsert(DataSet: TDataSet);
    procedure des_004BeforeInsert(DataSet: TDataSet);
    procedure des_005BeforeInsert(DataSet: TDataSet);
    procedure des_006BeforeInsert(DataSet: TDataSet);
    procedure des_007BeforeInsert(DataSet: TDataSet);
    procedure des_008BeforeInsert(DataSet: TDataSet);
    procedure siPSQClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    procedure ABRE_DESENHOS;
  public
    { Public declarations }
    procedure IMPRIME_DESENHO;
  end;

var
  frmven_des  : Tfrmven_des;
  nome_des_001: string;
  nome_des_002: string;
  nome_des_003: string;
  nome_des_004: string;
  nome_des_005: string;
  nome_des_006: string;
  nome_des_007: string;
  nome_des_008: string;

implementation

uses uprincipal, pven_ped, qven_des, parquivo_geral, ppesquisa;

{$R *.dfm}

procedure Tfrmven_des.ABRE_DESENHOS;
begin
  with des_001 do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM '+SLPrincipal.Values['rom_des']);
    SelectSQL.Add('WHERE    ROM_CCAB = '''+edcdro.Text+'''');
    SelectSQL.Add('AND      ROM_NOME = ''DESENHO 1''');
    SelectSQL.Add('ORDER BY ID');
    Open;
    nome_des_001 := des_001ROM_DESE.AsString;
    if des_001ROM_DESE.AsString <> '' then
       eddes1.Text := nome_des_001;
  end;

  with des_002 do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM '+SLPrincipal.Values['rom_des']);
    SelectSQL.Add('WHERE    ROM_CCAB = '''+edcdro.Text+'''');
    SelectSQL.Add('AND      ROM_NOME = ''DESENHO 2''');
    SelectSQL.Add('ORDER BY ID');
    Open;
    nome_des_002 := des_001ROM_DESE.AsString;
    if des_002ROM_DESE.AsString <> '' then
       eddes2.Text := nome_des_002;
  end;

  with des_003 do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM '+SLPrincipal.Values['rom_des']);
    SelectSQL.Add('WHERE    ROM_CCAB = '''+edcdro.Text+'''');
    SelectSQL.Add('AND      ROM_NOME = ''DESENHO 3''');
    SelectSQL.Add('ORDER BY ID');
    Open;
    nome_des_003 := des_001ROM_DESE.AsString;
    if des_003ROM_DESE.AsString <> '' then
       eddes3.Text := nome_des_003;
  end;

  with des_004 do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM '+SLPrincipal.Values['rom_des']);
    SelectSQL.Add('WHERE    ROM_CCAB = '''+edcdro.Text+'''');
    SelectSQL.Add('AND      ROM_NOME = ''DESENHO 4''');
    SelectSQL.Add('ORDER BY ID');
    Open;
    nome_des_004 := des_001ROM_DESE.AsString;
    if des_004ROM_DESE.AsString <> '' then
       eddes4.Text := nome_des_004;
  end;

  with des_005 do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM '+SLPrincipal.Values['rom_des']);
    SelectSQL.Add('WHERE    ROM_CCAB = '''+edcdro.Text+'''');
    SelectSQL.Add('AND      ROM_NOME = ''DESENHO 5''');
    SelectSQL.Add('ORDER BY ID');
    Open;
    nome_des_005 := des_001ROM_DESE.AsString;
    if des_005ROM_DESE.AsString <> '' then
       eddes5.Text := nome_des_005;
  end;

  with des_006 do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM '+SLPrincipal.Values['rom_des']);
    SelectSQL.Add('WHERE    ROM_CCAB = '''+edcdro.Text+'''');
    SelectSQL.Add('AND      ROM_NOME = ''DESENHO 6''');
    SelectSQL.Add('ORDER BY ID');
    Open;
    nome_des_006 := des_001ROM_DESE.AsString;
    if des_006ROM_DESE.AsString <> '' then
       eddes6.Text := nome_des_006;
  end;

  with des_007 do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM '+SLPrincipal.Values['rom_des']);
    SelectSQL.Add('WHERE    ROM_CCAB = '''+edcdro.Text+'''');
    SelectSQL.Add('AND      ROM_NOME = ''DESENHO 7''');
    SelectSQL.Add('ORDER BY ID');
    Open;
    nome_des_007 := des_001ROM_DESE.AsString;
    if des_007ROM_DESE.AsString <> '' then
       eddes7.Text := nome_des_007;
  end;

  with des_008 do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM '+SLPrincipal.Values['rom_des']);
    SelectSQL.Add('WHERE    ROM_CCAB = '''+edcdro.Text+'''');
    SelectSQL.Add('AND      ROM_NOME = ''DESENHO 8''');
    SelectSQL.Add('ORDER BY ID');
    Open;
    nome_des_008 := des_001ROM_DESE.AsString;
    if des_008ROM_DESE.AsString <> '' then
       eddes8.Text := nome_des_008;
  end;
end;

procedure Tfrmven_des.IMPRIME_DESENHO;
begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  if qrpven_des = nil then
     qrpven_des := Tqrpven_des.Create(self);

  try
    with qrpven_des do
    begin
      rom_des.Close;
      rom_des.ParamByName('ROM_CCAB').Value := edcdro.Text ;
      rom_des.Open;
    end;

    qrpven_des.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpven_des.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpven_des.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpven_des.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpven_des.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpven_des.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpven_des.qrltitulo.Caption    := 'Romaneio: '+edcdro.Text;
    qrpven_des.ReportTitle          := 'Romaneio: '+edcdro.Text;
    qrpven_des.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;


    qrpven_des.Prepare;
    if tag = 0 then
       qrpven_des.Preview
    else if tag = 1 then
       qrpven_des.Print
    else if tag = 2 then
    begin
//      frmarquivo_geral.expPDF.Report := qrpven_des;
//      frmarquivo_geral.expPDF.ExportQRPDF(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text),false);
    end
    else if tag = 3 then
    begin
      qrpven_des.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpven_des.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpven_des);
    qrpven_des.Free;
  end;
end;

procedure Tfrmven_des.d1IClick(Sender: TObject);
begin
  des_001.Append;
end;

procedure Tfrmven_des.d1AClick(Sender: TObject);
begin
  des_001.Edit;
end;

procedure Tfrmven_des.d1EClick(Sender: TObject);
begin
  des_001.Delete;
end;

procedure Tfrmven_des.d1SClick(Sender: TObject);
begin
  des_001.Post;
end;

procedure Tfrmven_des.d1CClick(Sender: TObject);
begin
  des_001.Cancel;
end;

procedure Tfrmven_des.d2IClick(Sender: TObject);
begin
  des_002.Append;
end;

procedure Tfrmven_des.d2AClick(Sender: TObject);
begin
  des_002.Edit;
end;

procedure Tfrmven_des.d2EClick(Sender: TObject);
begin
  des_002.Delete;
end;

procedure Tfrmven_des.d2SClick(Sender: TObject);
begin
  des_002.Post;
end;

procedure Tfrmven_des.d2CClick(Sender: TObject);
begin
  des_002.Cancel;
end;

procedure Tfrmven_des.d3IClick(Sender: TObject);
begin
  des_003.Append;
end;

procedure Tfrmven_des.d3AClick(Sender: TObject);
begin
  des_003.Edit;
end;

procedure Tfrmven_des.d3EClick(Sender: TObject);
begin
  des_003.Delete;
end;

procedure Tfrmven_des.d3SClick(Sender: TObject);
begin
  des_003.Post;
end;

procedure Tfrmven_des.d3CClick(Sender: TObject);
begin
  des_003.Cancel;
end;

procedure Tfrmven_des.d4IClick(Sender: TObject);
begin
  des_004.Append;
end;

procedure Tfrmven_des.d4AClick(Sender: TObject);
begin
  des_004.Edit;
end;

procedure Tfrmven_des.d4EClick(Sender: TObject);
begin
  des_004.Delete;
end;

procedure Tfrmven_des.d4SClick(Sender: TObject);
begin
  des_004.Post;
end;

procedure Tfrmven_des.d4CClick(Sender: TObject);
begin
  des_004.Cancel;
end;

procedure Tfrmven_des.d5IClick(Sender: TObject);
begin
  des_005.Append;
end;

procedure Tfrmven_des.d5AClick(Sender: TObject);
begin
  des_005.Edit;
end;

procedure Tfrmven_des.d5EClick(Sender: TObject);
begin
  des_005.Delete;
end;

procedure Tfrmven_des.d5SClick(Sender: TObject);
begin
  des_005.Post;
end;

procedure Tfrmven_des.d5CClick(Sender: TObject);
begin
  des_005.Cancel;
end;

procedure Tfrmven_des.d6IClick(Sender: TObject);
begin
  des_006.Append;
end;

procedure Tfrmven_des.d6AClick(Sender: TObject);
begin
  des_006.Edit;
end;

procedure Tfrmven_des.d6EClick(Sender: TObject);
begin
  des_006.Delete;
end;

procedure Tfrmven_des.d6SClick(Sender: TObject);
begin
  des_006.Post;
end;

procedure Tfrmven_des.d6CClick(Sender: TObject);
begin
  des_006.Cancel;
end;

procedure Tfrmven_des.d7IClick(Sender: TObject);
begin
  des_007.Append;
end;

procedure Tfrmven_des.d7AClick(Sender: TObject);
begin
  des_007.Edit;
end;

procedure Tfrmven_des.d7EClick(Sender: TObject);
begin
  des_007.Delete;
end;

procedure Tfrmven_des.d7SClick(Sender: TObject);
begin
  des_007.Post;
end;

procedure Tfrmven_des.d7CClick(Sender: TObject);
begin
  des_007.Cancel;
end;

procedure Tfrmven_des.d8IClick(Sender: TObject);
begin
  des_008.Append;
end;

procedure Tfrmven_des.d8AClick(Sender: TObject);
begin
  des_008.Edit;
end;

procedure Tfrmven_des.d8EClick(Sender: TObject);
begin
  des_008.Delete;
end;

procedure Tfrmven_des.d8SClick(Sender: TObject);
begin
  des_008.Post;
end;

procedure Tfrmven_des.d8CClick(Sender: TObject);
begin
  des_008.Cancel;
end;

procedure Tfrmven_des.dbg001KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  cor: string;
begin
  case key of
    VK_RETURN: begin
                 cor := des_001ROM_DCOR.AsString;
                 if dbg001.FocusedColumn = 1 then
                 begin
                   des_001.Next;
                   if des_001.Eof then
                   begin
                     des_001.Append;
                     des_001ROM_DCOR.Value := cor;
                   end;
                   dbg001.FocusedColumn := 1;
                 end
                 else
                    dbg001.FocusedColumn := dbg001.FocusedColumn + 1;
               end;
    VK_DELETE: if des_001.State = dsBrowse then
                  d1E.Click;
    VK_ESCAPE: if des_001.State = dsBrowse then close else des_001.Cancel;
    VK_INSERT: if not d1S.Enabled then d1I.Click;
  end;
end;

procedure Tfrmven_des.dbg002KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  cor: string;
begin
  case key of
    VK_RETURN: begin
                 cor := des_002ROM_DCOR.AsString;
                 if dbg002.FocusedColumn = 1 then
                 begin
                   des_002.Next;
                   if des_002.Eof then
                   begin
                     des_002.Append;
                     des_002ROM_DCOR.Value := cor;
                   end;
                   dbg002.FocusedColumn := 1;
                 end
                 else
                    dbg002.FocusedColumn := dbg002.FocusedColumn + 1;
               end;
    VK_DELETE: if des_002.State = dsBrowse then
                  d2E.Click;
    VK_ESCAPE: if des_002.State = dsBrowse then close else des_002.Cancel;
    VK_INSERT: if not d2S.Enabled then d2I.Click;
  end;
end;

procedure Tfrmven_des.dbg003KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  cor: string;
begin
  case key of
    VK_RETURN: begin
                 cor := des_003ROM_DCOR.AsString;
                 if dbg003.FocusedColumn = 1 then
                 begin
                   des_003.Next;
                   if des_003.Eof then
                   begin
                     des_003.Append;
                     des_003ROM_DCOR.Value := cor;
                   end;
                   dbg003.FocusedColumn := 1;
                 end
                 else
                    dbg003.FocusedColumn := dbg003.FocusedColumn + 1;
               end;
    VK_DELETE: if des_003.State = dsBrowse then
                  d3E.Click;
    VK_ESCAPE: if des_003.State = dsBrowse then close else des_003.Cancel;
    VK_INSERT: if not d3S.Enabled then d3I.Click;
  end;
end;

procedure Tfrmven_des.dbg004KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  cor: string;
begin
  case key of
    VK_RETURN: begin
                 cor := des_004ROM_DCOR.AsString;
                 if dbg004.FocusedColumn = 1 then
                 begin
                   des_004.Next;
                   if des_004.Eof then
                   begin
                     des_004.Append;
                     des_004ROM_DCOR.Value := cor;
                   end;
                   dbg004.FocusedColumn := 1;
                 end
                 else
                    dbg004.FocusedColumn := dbg004.FocusedColumn + 1;
               end;
    VK_DELETE: if des_004.State = dsBrowse then
                  d4E.Click;
    VK_ESCAPE: if des_004.State = dsBrowse then close else des_004.Cancel;
    VK_INSERT: if not d4S.Enabled then d4I.Click;
  end;
end;

procedure Tfrmven_des.dbg005KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  cor: string;
begin
  case key of
    VK_RETURN: begin
                 cor := des_005ROM_DCOR.AsString;
                 if dbg005.FocusedColumn = 1 then
                 begin
                   des_005.Next;
                   if des_005.Eof then
                   begin
                     des_005.Append;
                     des_005ROM_DCOR.Value := cor;
                   end;
                   dbg005.FocusedColumn := 1;
                 end
                 else
                    dbg005.FocusedColumn := dbg005.FocusedColumn + 1;
               end;
    VK_DELETE: if des_005.State = dsBrowse then
                  d5E.Click;
    VK_ESCAPE: if des_005.State = dsBrowse then close else des_005.Cancel;
    VK_INSERT: if not d5S.Enabled then d5I.Click;
  end;
end;

procedure Tfrmven_des.dbg006KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  cor: string;
begin
  case key of
    VK_RETURN: begin
                 cor := des_006ROM_DCOR.AsString;
                 if dbg006.FocusedColumn = 1 then
                 begin
                   des_006.Next;
                   if des_006.Eof then
                   begin
                     des_006.Append;
                     des_006ROM_DCOR.Value := cor;
                   end;
                   dbg006.FocusedColumn := 1;
                 end
                 else
                    dbg006.FocusedColumn := dbg006.FocusedColumn + 1;
               end;
    VK_DELETE: if des_006.State = dsBrowse then
                  d6E.Click;
    VK_ESCAPE: if des_006.State = dsBrowse then close else des_006.Cancel;
    VK_INSERT: if not d6S.Enabled then d6I.Click;
  end;
end;

procedure Tfrmven_des.dbg007KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  cor: string;
begin
  case key of
    VK_RETURN: begin
                 cor := des_007ROM_DCOR.AsString;
                 if dbg007.FocusedColumn = 1 then
                 begin
                   des_007.Next;
                   if des_007.Eof then
                   begin
                     des_007.Append;
                     des_007ROM_DCOR.Value := cor;
                   end;
                   dbg007.FocusedColumn := 1;
                 end
                 else
                    dbg007.FocusedColumn := dbg007.FocusedColumn + 1;
               end;
    VK_DELETE: if des_007.State = dsBrowse then
                  d7E.Click;
    VK_ESCAPE: if des_007.State = dsBrowse then close else des_007.Cancel;
    VK_INSERT: if not d7S.Enabled then d7I.Click;
  end;
end;

procedure Tfrmven_des.dbg008KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  cor: string;
begin
  case key of
    VK_RETURN: begin
                 cor := des_008ROM_DCOR.AsString;
                 if dbg008.FocusedColumn = 1 then
                 begin
                   des_008.Next;
                   if des_008.Eof then
                   begin
                     des_008.Append;
                     des_008ROM_DCOR.Value := cor;
                   end;
                   dbg008.FocusedColumn := 1;
                 end
                 else
                    dbg008.FocusedColumn := dbg008.FocusedColumn + 1;
               end;
    VK_DELETE: if des_008.State = dsBrowse then
                  d8E.Click;
    VK_ESCAPE: if des_008.State = dsBrowse then close else des_008.Cancel;
    VK_INSERT: if not d8S.Enabled then d8I.Click;
  end;
end;

procedure Tfrmven_des.des_001AfterCancel(DataSet: TDataSet);
begin
  d1I.Enabled := true;
  d1A.Enabled := true;
  d1E.Enabled := true;
  d1S.Enabled := false;
  d1C.Enabled := false;
end;

procedure Tfrmven_des.des_001AfterDelete(DataSet: TDataSet);
begin
  IBTra.CommitRetaining;
end;

procedure Tfrmven_des.des_001AfterEdit(DataSet: TDataSet);
begin
  d1I.Enabled := false;
  d1A.Enabled := false;
  d1E.Enabled := false;
  d1S.Enabled := true;
  d1C.Enabled := true;
end;

procedure Tfrmven_des.des_001AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  wRec := des_001.GetBookmark;
  d1I.Enabled := true;
  d1A.Enabled := true;
  d1E.Enabled := true;
  d1S.Enabled := false;
  d1C.Enabled := false;

  IBTra.CommitRetaining;

  des_001.Close;
  des_001.Open;
  if (wRec = Nil) or (des_001.Fields[0].IsNull) then des_001.last
     else des_001.GotoBookmark(wRec);
  des_001.FreeBookmark(wRec);
end;

procedure Tfrmven_des.des_001BeforeCancel(DataSet: TDataSet);
begin
  d1I.Enabled := true;
  d1A.Enabled := true;
  d1E.Enabled := true;
  d1S.Enabled := false;
  d1C.Enabled := false;

  if des_001.RecordCount = 0 then
  begin
    des_001.Close;
    des_001.Open;
    ABORT;
  end;
end;

procedure Tfrmven_des.des_001BeforeInsert(DataSet: TDataSet);
begin
  nome_des_001 := des_001ROM_DESE.AsString;
end;

procedure Tfrmven_des.des_001BeforePost(DataSet: TDataSet);
begin
  if (edDES1.Text = 'Digite aqui o nome do desenho') or (edDES1.Text = '') then
     Databaseerror('Nome do desenho não selecionado !');

  des_001ROM_DESE.Value := edDES1.Text;
  if des_001ROM_QTDE.AsFloat = 0 then
     Databaseerror('Quantidade não pode ser igual a zero !');
end;

procedure Tfrmven_des.des_001NewRecord(DataSet: TDataSet);
begin
  des_001ID.Value       := 0;
  des_001ROM_CCAB.Value := strtoint(edcdro.Text);
  des_001ROM_NOME.Value := 'DESENHO 1';
  des_001ROM_DESE.Value := nome_des_001;
end;

procedure Tfrmven_des.des_002AfterCancel(DataSet: TDataSet);
begin
  d2I.Enabled := true;
  d2A.Enabled := true;
  d2E.Enabled := true;
  d2S.Enabled := false;
  d2C.Enabled := false;
end;

procedure Tfrmven_des.des_002AfterDelete(DataSet: TDataSet);
begin
  IBTra.CommitRetaining;
end;

procedure Tfrmven_des.des_002AfterEdit(DataSet: TDataSet);
begin
  d2I.Enabled := false;
  d2A.Enabled := false;
  d2E.Enabled := false;
  d2S.Enabled := true;
  d2C.Enabled := true;
end;

procedure Tfrmven_des.des_002AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  wRec := des_002.GetBookmark;
  d2I.Enabled := true;
  d2A.Enabled := true;
  d2E.Enabled := true;
  d2S.Enabled := false;
  d2C.Enabled := false;

  IBTra.CommitRetaining;

  des_002.Close;
  des_002.Open;
  if (wRec = Nil) or (des_002.Fields[0].IsNull) then des_002.last
     else des_002.GotoBookmark(wRec);
  des_002.FreeBookmark(wRec);
end;

procedure Tfrmven_des.des_002BeforeCancel(DataSet: TDataSet);
begin
  d2I.Enabled := true;
  d2A.Enabled := true;
  d2E.Enabled := true;
  d2S.Enabled := false;
  d2C.Enabled := false;

  if des_002.RecordCount = 0 then
  begin
    des_002.Close;
    des_002.Open;
    ABORT;
  end;
end;

procedure Tfrmven_des.des_002BeforeInsert(DataSet: TDataSet);
begin
  nome_des_002 := des_002ROM_DESE.AsString;
end;

procedure Tfrmven_des.des_002BeforePost(DataSet: TDataSet);
begin
  if (edDES2.Text = 'Digite aqui o nome do desenho') or (edDES2.Text = '') then
     Databaseerror('Nome do desenho não selecionado !');

  des_002ROM_DESE.Value := edDES2.Text;
  if des_002ROM_QTDE.AsFloat = 0 then
     Databaseerror('Quantidade não pode ser igual a zero !');
end;

procedure Tfrmven_des.des_002NewRecord(DataSet: TDataSet);
begin
  des_002ID.Value       := 0;
  des_002ROM_CCAB.Value := strtoint(edcdro.Text);
  des_002ROM_NOME.Value := 'DESENHO 2';
end;

procedure Tfrmven_des.des_003AfterCancel(DataSet: TDataSet);
begin
  d3I.Enabled := true;
  d3A.Enabled := true;
  d3E.Enabled := true;
  d3S.Enabled := false;
  d3C.Enabled := false;
end;

procedure Tfrmven_des.des_003AfterDelete(DataSet: TDataSet);
begin
  IBTra.CommitRetaining;
end;

procedure Tfrmven_des.des_003AfterEdit(DataSet: TDataSet);
begin
  d3I.Enabled := false;
  d3A.Enabled := false;
  d3E.Enabled := false;
  d3S.Enabled := true;
  d3C.Enabled := true;
end;

procedure Tfrmven_des.des_003AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  wRec := des_003.GetBookmark;
  d3I.Enabled := true;
  d3A.Enabled := true;
  d3E.Enabled := true;
  d3S.Enabled := false;
  d3C.Enabled := false;

  IBTra.CommitRetaining;

  des_003.Close;
  des_003.Open;
  if (wRec = Nil) or (des_003.Fields[0].IsNull) then des_003.last
     else des_003.GotoBookmark(wRec);
  des_003.FreeBookmark(wRec);
end;

procedure Tfrmven_des.des_003BeforeCancel(DataSet: TDataSet);
begin
  d3I.Enabled := true;
  d3A.Enabled := true;
  d3E.Enabled := true;
  d3S.Enabled := false;
  d3C.Enabled := false;

  if des_003.RecordCount = 0 then
  begin
    des_003.Close;
    des_003.Open;
    ABORT;
  end;
end;

procedure Tfrmven_des.des_003BeforeInsert(DataSet: TDataSet);
begin
  nome_des_003 := des_003ROM_DESE.AsString;
end;

procedure Tfrmven_des.des_003BeforePost(DataSet: TDataSet);
begin
  if (edDES3.Text = 'Digite aqui o nome do desenho') or (edDES3.Text = '') then
     Databaseerror('Nome do desenho não selecionado !');

  des_003ROM_DESE.Value := edDES3.Text;
  if des_003ROM_QTDE.AsFloat = 0 then
     Databaseerror('Quantidade não pode ser igual a zero !');
end;

procedure Tfrmven_des.des_003NewRecord(DataSet: TDataSet);
begin
  des_003ID.Value       := 0;
  des_003ROM_CCAB.Value := strtoint(edcdro.Text);
  des_003ROM_NOME.Value := 'DESENHO 3';
end;

procedure Tfrmven_des.des_004AfterCancel(DataSet: TDataSet);
begin
  d4I.Enabled := true;
  d4A.Enabled := true;
  d4E.Enabled := true;
  d4S.Enabled := false;
  d4C.Enabled := false;
end;

procedure Tfrmven_des.des_004AfterDelete(DataSet: TDataSet);
begin
  IBTra.CommitRetaining;
end;

procedure Tfrmven_des.des_004AfterEdit(DataSet: TDataSet);
begin
  d4I.Enabled := false;
  d4A.Enabled := false;
  d4E.Enabled := false;
  d4S.Enabled := true;
  d4C.Enabled := true;
end;

procedure Tfrmven_des.des_004AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  wRec := des_004.GetBookmark;
  d4I.Enabled := true;
  d4A.Enabled := true;
  d4E.Enabled := true;
  d4S.Enabled := false;
  d4C.Enabled := false;

  IBTra.CommitRetaining;

  des_004.Close;
  des_004.Open;
  if (wRec = Nil) or (des_004.Fields[0].IsNull) then des_004.last
     else des_004.GotoBookmark(wRec);
  des_004.FreeBookmark(wRec);
end;

procedure Tfrmven_des.des_004BeforeCancel(DataSet: TDataSet);
begin
  d4I.Enabled := true;
  d4A.Enabled := true;
  d4E.Enabled := true;
  d4S.Enabled := false;
  d4C.Enabled := false;

  if des_004.RecordCount = 0 then
  begin
    des_004.Close;
    des_004.Open;
    ABORT;
  end;
end;

procedure Tfrmven_des.des_004BeforeInsert(DataSet: TDataSet);
begin
  nome_des_004 := des_004ROM_DESE.AsString;
end;

procedure Tfrmven_des.des_004BeforePost(DataSet: TDataSet);
begin
  if (edDES4.Text = 'Digite aqui o nome do desenho') or (edDES4.Text = '') then
     Databaseerror('Nome do desenho não selecionado !');

  des_004ROM_DESE.Value := edDES4.Text;
  if des_004ROM_QTDE.AsFloat = 0 then
     Databaseerror('Quantidade não pode ser igual a zero !');
end;

procedure Tfrmven_des.des_004NewRecord(DataSet: TDataSet);
begin
  des_004ID.Value       := 0;
  des_004ROM_CCAB.Value := strtoint(edcdro.Text);
  des_004ROM_NOME.Value := 'DESENHO 4';
end;

procedure Tfrmven_des.des_005AfterCancel(DataSet: TDataSet);
begin
  d5I.Enabled := true;
  d5A.Enabled := true;
  d5E.Enabled := true;
  d5S.Enabled := false;
  d5C.Enabled := false;
end;

procedure Tfrmven_des.des_005AfterDelete(DataSet: TDataSet);
begin
  IBTra.CommitRetaining;
end;

procedure Tfrmven_des.des_005AfterEdit(DataSet: TDataSet);
begin
  d5I.Enabled := false;
  d5A.Enabled := false;
  d5E.Enabled := false;
  d5S.Enabled := true;
  d5C.Enabled := true;
end;

procedure Tfrmven_des.des_005AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  wRec := des_005.GetBookmark;
  d5I.Enabled := true;
  d5A.Enabled := true;
  d5E.Enabled := true;
  d5S.Enabled := false;
  d5C.Enabled := false;

  IBTra.CommitRetaining;

  des_005.Close;
  des_005.Open;
  if (wRec = Nil) or (des_005.Fields[0].IsNull) then des_005.last
     else des_005.GotoBookmark(wRec);
  des_005.FreeBookmark(wRec);
end;

procedure Tfrmven_des.des_005BeforeCancel(DataSet: TDataSet);
begin
  d5I.Enabled := true;
  d5A.Enabled := true;
  d5E.Enabled := true;
  d5S.Enabled := false;
  d5C.Enabled := false;

  if des_005.RecordCount = 0 then
  begin
    des_005.Close;
    des_005.Open;
    ABORT;
  end;
end;

procedure Tfrmven_des.des_005BeforeInsert(DataSet: TDataSet);
begin
  nome_des_005 := des_005ROM_DESE.AsString;
end;

procedure Tfrmven_des.des_005BeforePost(DataSet: TDataSet);
begin
  if (edDES5.Text = 'Digite aqui o nome do desenho') or (edDES5.Text = '') then
     Databaseerror('Nome do desenho não selecionado !');

  des_005ROM_DESE.Value := edDES5.Text;
  if des_005ROM_QTDE.AsFloat = 0 then
     Databaseerror('Quantidade não pode ser igual a zero !');
end;

procedure Tfrmven_des.des_005NewRecord(DataSet: TDataSet);
begin
  des_005ID.Value       := 0;
  des_005ROM_CCAB.Value := strtoint(edcdro.Text);
  des_005ROM_NOME.Value := 'DESENHO 5';
end;

procedure Tfrmven_des.des_006AfterCancel(DataSet: TDataSet);
begin
  d6I.Enabled := true;
  d6A.Enabled := true;
  d6E.Enabled := true;
  d6S.Enabled := false;
  d6C.Enabled := false;
end;

procedure Tfrmven_des.des_006AfterDelete(DataSet: TDataSet);
begin
  IBTra.CommitRetaining;
end;

procedure Tfrmven_des.des_006AfterEdit(DataSet: TDataSet);
begin
  d6I.Enabled := false;
  d6A.Enabled := false;
  d6E.Enabled := false;
  d6S.Enabled := true;
  d6C.Enabled := true;
end;

procedure Tfrmven_des.des_006AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  wRec := des_006.GetBookmark;
  d6I.Enabled := true;
  d6A.Enabled := true;
  d6E.Enabled := true;
  d6S.Enabled := false;
  d6C.Enabled := false;

  IBTra.CommitRetaining;

  des_006.Close;
  des_006.Open;
  if (wRec = Nil) or (des_006.Fields[0].IsNull) then des_006.last
     else des_006.GotoBookmark(wRec);
  des_006.FreeBookmark(wRec);
end;

procedure Tfrmven_des.des_006BeforeCancel(DataSet: TDataSet);
begin
  d6I.Enabled := true;
  d6A.Enabled := true;
  d6E.Enabled := true;
  d6S.Enabled := false;
  d6C.Enabled := false;

  if des_006.RecordCount = 0 then
  begin
    des_006.Close;
    des_006.Open;
    ABORT;
  end;
end;

procedure Tfrmven_des.des_006BeforeInsert(DataSet: TDataSet);
begin
  nome_des_006 := des_006ROM_DESE.AsString;
end;

procedure Tfrmven_des.des_006BeforePost(DataSet: TDataSet);
begin
  if (edDES6.Text = 'Digite aqui o nome do desenho') or (edDES6.Text = '') then
     Databaseerror('Nome do desenho não selecionado !');

  des_006ROM_DESE.Value := edDES6.Text;
  if des_006ROM_QTDE.AsFloat = 0 then
     Databaseerror('Quantidade não pode ser igual a zero !');
end;

procedure Tfrmven_des.des_006NewRecord(DataSet: TDataSet);
begin
  des_006ID.Value       := 0;
  des_006ROM_CCAB.Value := strtoint(edcdro.Text);
  des_006ROM_NOME.Value := 'DESENHO 6';
end;

procedure Tfrmven_des.des_007AfterCancel(DataSet: TDataSet);
begin
  d7I.Enabled := true;
  d7A.Enabled := true;
  d7E.Enabled := true;
  d7S.Enabled := false;
  d7C.Enabled := false;
end;

procedure Tfrmven_des.des_007AfterDelete(DataSet: TDataSet);
begin
  IBTra.CommitRetaining;
end;

procedure Tfrmven_des.des_007AfterEdit(DataSet: TDataSet);
begin
  d7I.Enabled := false;
  d7A.Enabled := false;
  d7E.Enabled := false;
  d7S.Enabled := true;
  d7C.Enabled := true;
end;

procedure Tfrmven_des.des_007AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  wRec := des_007.GetBookmark;
  d7I.Enabled := true;
  d7A.Enabled := true;
  d7E.Enabled := true;
  d7S.Enabled := false;
  d7C.Enabled := false;

  IBTra.CommitRetaining;

  des_007.Close;
  des_007.Open;
  if (wRec = Nil) or (des_007.Fields[0].IsNull) then des_007.last
     else des_007.GotoBookmark(wRec);
  des_007.FreeBookmark(wRec);
end;

procedure Tfrmven_des.des_007BeforeCancel(DataSet: TDataSet);
begin
  d7I.Enabled := true;
  d7A.Enabled := true;
  d7E.Enabled := true;
  d7S.Enabled := false;
  d7C.Enabled := false;

  if des_007.RecordCount = 0 then
  begin
    des_007.Close;
    des_007.Open;
    ABORT;
  end;
end;

procedure Tfrmven_des.des_007BeforeInsert(DataSet: TDataSet);
begin
  nome_des_007 := des_007ROM_DESE.AsString;
end;

procedure Tfrmven_des.des_007BeforePost(DataSet: TDataSet);
begin
  if (edDES7.Text = 'Digite aqui o nome do desenho') or (edDES7.Text = '') then
     Databaseerror('Nome do desenho não selecionado !');

  des_007ROM_DESE.Value := edDES7.Text;
  if des_007ROM_QTDE.AsFloat = 0 then
     Databaseerror('Quantidade não pode ser igual a zero !');
end;

procedure Tfrmven_des.des_007NewRecord(DataSet: TDataSet);
begin
  des_007ID.Value       := 0;
  des_007ROM_CCAB.Value := strtoint(edcdro.Text);
  des_007ROM_NOME.Value := 'DESENHO 7';
end;

procedure Tfrmven_des.des_008AfterCancel(DataSet: TDataSet);
begin
  d8I.Enabled := true;
  d8A.Enabled := true;
  d8E.Enabled := true;
  d8S.Enabled := false;
  d8C.Enabled := false;
end;

procedure Tfrmven_des.des_008AfterDelete(DataSet: TDataSet);
begin
  IBTra.CommitRetaining;
end;

procedure Tfrmven_des.des_008AfterEdit(DataSet: TDataSet);
begin
  d8I.Enabled := false;
  d8A.Enabled := false;
  d8E.Enabled := false;
  d8S.Enabled := true;
  d8C.Enabled := true;
end;

procedure Tfrmven_des.des_008AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  wRec := des_008.GetBookmark;
  d8I.Enabled := true;
  d8A.Enabled := true;
  d8E.Enabled := true;
  d8S.Enabled := false;
  d8C.Enabled := false;

  IBTra.CommitRetaining;

  des_008.Close;
  des_008.Open;
  if (wRec = Nil) or (des_008.Fields[0].IsNull) then des_008.last
     else des_008.GotoBookmark(wRec);
  des_008.FreeBookmark(wRec);
end;

procedure Tfrmven_des.des_008BeforeCancel(DataSet: TDataSet);
begin
  d8I.Enabled := true;
  d8A.Enabled := true;
  d8E.Enabled := true;
  d8S.Enabled := false;
  d8C.Enabled := false;

  if des_008.RecordCount = 0 then
  begin
    des_008.Close;
    des_008.Open;
    ABORT;
  end;
end;

procedure Tfrmven_des.des_008BeforeInsert(DataSet: TDataSet);
begin
  nome_des_008 := des_008ROM_DESE.AsString;
end;

procedure Tfrmven_des.des_008BeforePost(DataSet: TDataSet);
begin
  if (edDES8.Text = 'Digite aqui o nome do desenho') or (edDES8.Text = '') then
     Databaseerror('Nome do desenho não selecionado !');

  des_008ROM_DESE.Value := edDES8.Text;
  if des_008ROM_QTDE.AsFloat = 0 then
     Databaseerror('Quantidade não pode ser igual a zero !');
end;

procedure Tfrmven_des.des_008NewRecord(DataSet: TDataSet);
begin
  des_008ID.Value       := 0;
  des_008ROM_CCAB.Value := strtoint(edcdro.Text);
  des_008ROM_NOME.Value := 'DESENHO 8';
end;

procedure Tfrmven_des.siVISClick(Sender: TObject);
begin
  try
    tag := 0;
    IMPRIME_DESENHO;
  finally
    tag := 0;
  end;
end;

procedure Tfrmven_des.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 7;
    frmpesquisa.cbCAMPO.Text := 'Pedido';
    frmpesquisa.cbDATA.Text  := 'Emissão';
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID FROM '+SLPrincipal.Values['ped_ven_cab']);
        SQL.Add('WHERE  ID = '''+edtxt.Text+'''');
        Open;
      end;

      if consulta.Fields[0].IsNull then
         raise exception.Create('Número do pedido não encontrado !');

      edcdro.Text := consulta.Fields[0].AsString;
      ABRE_DESENHOS;   
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmven_des.FormActivate(Sender: TObject);
begin
  inherited;
  ABRE_DESENHOS;
end;

end.
