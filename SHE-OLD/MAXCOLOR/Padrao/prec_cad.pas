unit prec_cad;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxEditor,
  dxExEdtr, dxEdLib, dxCntner, StdCtrls, dxPageControl, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, rxSpeedbar;

type
  Tfrmrec_cad = class(Tfrmpadr3)
    Label41: TLabel;
    pcmain: TdxPageControl;
    tsban1: TdxTabSheet;
    psq_cli: TIBQuery;
    psq_cliID: TIntegerField;
    psq_cliCLI_FANT: TIBStringField;
    psq_cliCLI_RAZA: TIBStringField;
    psq_cliCLI_CNPJ: TIBStringField;
    psq_cliCLI_CPF: TIBStringField;
    psq_cliCLI_CRED: TIBBCDField;
    psq_cliCLI_CID: TIBStringField;
    psq_cliCLI_BAI: TIBStringField;
    psq_cliCLI_LOGR: TIBStringField;
    psq_cliCLI_ESTA: TIBStringField;
    psq_cliCLI_STA: TIBStringField;
    psq_cliCLI_STAV: TIBStringField;
    psq_cliCLI_DPAG: TIBStringField;
    psq_cliCLI_OBSO: TMemoField;
    psq_cliCLI_VDSC: TIBBCDField;
    psq_cliCLI_DCAD: TDateField;
    psq_cliCLI_DFUN: TDateField;
    psq_cliCLI_DALT: TDateField;
    psq_cliCLI_DULT: TDateField;
    tschq: TdxTabSheet;
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label28: TLabel;
    edcdcx: TdxEdit;
    edid: TdxEdit;
    eddesc: TdxEdit;
    edcppl: TdxButtonEdit;
    cbdppl: TdxPickEdit;
    edccus: TdxButtonEdit;
    cbdcus: TdxPickEdit;
    edccli: TdxButtonEdit;
    edcven: TdxButtonEdit;
    edcrep: TdxButtonEdit;
    eddven: TdxDateEdit;
    cbdven: TdxPickEdit;
    cbdrep: TdxPickEdit;
    cbidbx: TdxImageEdit;
    eddibx: TdxEdit;
    Label14: TLabel;
    Label27: TLabel;
    cbstco: TdxImageEdit;
    cbstfi: TdxImageEdit;
    Label13: TLabel;
    GroupBox1: TGroupBox;
    edvmul: TdxCalcEdit;
    Label29: TLabel;
    edpmul: TdxCalcEdit;
    Label30: TLabel;
    edvjur: TdxCalcEdit;
    edpjur: TdxCalcEdit;
    Label32: TLabel;
    Label31: TLabel;
    edvdes: TdxCalcEdit;
    Label33: TLabel;
    edpdes: TdxCalcEdit;
    Label35: TLabel;
    edddes: TdxDateEdit;
    Label34: TLabel;
    Label36: TLabel;
    edvpag: TdxEdit;
    Label37: TLabel;
    edvpen: TdxEdit;
    Label38: TLabel;
    edvenc: TdxEdit;
    Label39: TLabel;
    eddcad: TdxDateEdit;
    Label40: TLabel;
    eddpag: TdxDateEdit;
    edcdbx: TdxEdit;
    edccab: TdxEdit;
    eddoct: TdxButtonEdit;
    GroupBox2: TGroupBox;
    edobse: TdxMemo;
    Label42: TLabel;
    cbstdo: TdxImageEdit;
    Label43: TLabel;
    cbtipo: TdxImageEdit;
    edconc: TdxEdit;
    eddbai: TdxDateEdit;
    edippl: TdxEdit;
    Bevel3: TBevel;
    edvalo: TdxButtonEdit;
    dbgchq: TdxDBGrid;
    dtslan_chq: TDataSource;
    tSHEILD: TIBTransaction;
    ibSHEILD: TIBStoredProc;
    dbgchqFIN_DVEN: TdxDBGridDateColumn;
    dbgchqFIN_BANC: TdxDBGridMaskColumn;
    dbgchqFIN_AGEN: TdxDBGridMaskColumn;
    dbgchqFIN_CONT: TdxDBGridMaskColumn;
    dbgchqFIN_NCHQ: TdxDBGridMaskColumn;
    dbgchqFIN_VALO: TdxDBGridMaskColumn;
    consulta_S: TIBQuery;
    cadastro: TIBDataSet;
    cadastroID: TIntegerField;
    cadastroFIN_CCAB: TIntegerField;
    cadastroFIN_CDBX: TIntegerField;
    cadastroFIN_CDCX: TIntegerField;
    cadastroFIN_CCLI: TIntegerField;
    cadastroFIN_DFIN: TIBStringField;
    cadastroFIN_DCLI: TIBStringField;
    cadastroFIN_RCLI: TIBStringField;
    cadastroFIN_CVEN: TIntegerField;
    cadastroFIN_VEND: TIBStringField;
    cadastroFIN_CREP: TIntegerField;
    cadastroFIN_DREP: TIBStringField;
    cadastroFIN_RREP: TIBStringField;
    cadastroFIN_PRAZ: TSmallintField;
    cadastroFIN_ATRA: TSmallintField;
    cadastroFIN_CONC: TSmallintField;
    cadastroFIN_DCAD: TDateField;
    cadastroFIN_DVEN: TDateField;
    cadastroFIN_DPAG: TDateField;
    cadastroFIN_DMED: TDateField;
    cadastroFIN_DATR: TDateField;
    cadastroFIN_DBAI: TDateField;
    cadastroFIN_CPPL: TIntegerField;
    cadastroFIN_CCUS: TIntegerField;
    cadastroFIN_CDCO: TIntegerField;
    cadastroFIN_CDBA: TIBStringField;
    cadastroFIN_DEBA: TIBStringField;
    cadastroFIN_STDO: TIBStringField;
    cadastroFIN_DOCT: TIBStringField;
    cadastroFIN_BANC: TIBStringField;
    cadastroFIN_DBAN: TIBStringField;
    cadastroFIN_AGEN: TIBStringField;
    cadastroFIN_CONT: TIBStringField;
    cadastroFIN_NCHQ: TIBStringField;
    cadastroFIN_MCHQ: TSmallintField;
    cadastroFIN_TIPO: TIBStringField;
    cadastroFIN_STFI: TIBStringField;
    cadastroFIN_STCO: TIBStringField;
    cadastroFIN_VALO: TIBBCDField;
    cadastroFIN_VPAG: TIBBCDField;
    cadastroFIN_VPEN: TIBBCDField;
    cadastroFIN_VENC: TIBBCDField;
    cadastroFIN_OBSE: TMemoField;
    cadastroFIN_STA: TIBStringField;
    cadastroFIN_COBR: TIBStringField;
    cbdcli: TdxPickEdit;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    edctnr: TdxEdit;
    cadastroFIN_CTNR: TIBStringField;
    lan_chq: TIBDataSet;
    lan_chqID: TIntegerField;
    lan_chqFIN_CCAB: TIntegerField;
    lan_chqFIN_CDBX: TIntegerField;
    lan_chqFIN_CDCX: TIntegerField;
    lan_chqFIN_CCLI: TIntegerField;
    lan_chqFIN_DCLI: TIBStringField;
    lan_chqFIN_RCLI: TIBStringField;
    lan_chqFIN_CVEN: TIntegerField;
    lan_chqFIN_VEND: TIBStringField;
    lan_chqFIN_CREP: TIntegerField;
    lan_chqFIN_DREP: TIBStringField;
    lan_chqFIN_RREP: TIBStringField;
    lan_chqFIN_PRAZ: TSmallintField;
    lan_chqFIN_ATRA: TSmallintField;
    lan_chqFIN_CONC: TSmallintField;
    lan_chqFIN_DCAD: TDateField;
    lan_chqFIN_DVEN: TDateField;
    lan_chqFIN_DPAG: TDateField;
    lan_chqFIN_DMED: TDateField;
    lan_chqFIN_DATR: TDateField;
    lan_chqFIN_STDO: TIBStringField;
    lan_chqFIN_DOCT: TIBStringField;
    lan_chqFIN_BANC: TIBStringField;
    lan_chqFIN_DBAN: TIBStringField;
    lan_chqFIN_AGEN: TIBStringField;
    lan_chqFIN_CONT: TIBStringField;
    lan_chqFIN_NCHQ: TIBStringField;
    lan_chqFIN_MCHQ: TSmallintField;
    lan_chqFIN_TIPO: TIBStringField;
    lan_chqFIN_STFI: TIBStringField;
    lan_chqFIN_STCO: TIBStringField;
    lan_chqFIN_VALO: TIBBCDField;
    lan_chqFIN_VPAG: TIBBCDField;
    lan_chqFIN_VPEN: TIBBCDField;
    lan_chqFIN_OBSE: TMemoField;
    lan_chqFIN_STA: TIBStringField;
    lan_chqFIN_COBR: TIBStringField;
    lan_chqFIN_DBAI: TDateField;
    lan_chqFIN_VENC: TIBBCDField;
    psq_cliCLI_VULT: TIBBCDField;
    edcdrd: TdxEdit;
    cadastroFIN_CDRD: TIntegerField;
    cadastroFIN_VMUL: TIBBCDField;
    cadastroFIN_PMUL: TIBBCDField;
    cadastroFIN_VJUR: TIBBCDField;
    cadastroFIN_PJUR: TIBBCDField;
    cadastroFIN_VDES: TIBBCDField;
    cadastroFIN_PDES: TIBBCDField;
    cadastroFIN_VCHQ: TIBBCDField;
    cadastroFIN_CPF: TIBStringField;
    cadastroFIN_DERD: TIBStringField;
    cadastroFIN_DTST: TDateTimeField;
    lan_chqFIN_CDRD: TIntegerField;
    lan_chqFIN_DFIN: TIBStringField;
    lan_chqFIN_CPPL: TIntegerField;
    lan_chqFIN_CCUS: TIntegerField;
    lan_chqFIN_CDCO: TIntegerField;
    lan_chqFIN_CDBA: TIBStringField;
    lan_chqFIN_DEBA: TIBStringField;
    lan_chqFIN_CTNR: TIBStringField;
    lan_chqFIN_VMUL: TIBBCDField;
    lan_chqFIN_PMUL: TIBBCDField;
    lan_chqFIN_VJUR: TIBBCDField;
    lan_chqFIN_PJUR: TIBBCDField;
    lan_chqFIN_VDES: TIBBCDField;
    lan_chqFIN_PDES: TIBBCDField;
    lan_chqFIN_VCHQ: TIBBCDField;
    lan_chqFIN_CPF: TIBStringField;
    lan_chqFIN_DERD: TIBStringField;
    lan_chqFIN_DTST: TDateTimeField;
    procedure edcpplValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edccusValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edccliButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edccliValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcvenValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbdvenExit(Sender: TObject);
    procedure cbdrepExit(Sender: TObject);
    procedure edcvenButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edcrepButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edcrepValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure siSAVClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edvmulValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpmulValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvjurValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpjurValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvdesValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpdesValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbidbxChange(Sender: TObject);
    procedure eddoctButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure cbdpplExit(Sender: TObject);
    procedure cbdcusExit(Sender: TObject);
    procedure edvpagValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvaloValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbdcliExit(Sender: TObject);
    procedure eddoctValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure eddvenValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvaloExit(Sender: TObject);
    procedure cbstfiValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
  private
    { Private declarations }
    procedure SALVA_LANCTO;
    function  RETORNA_CREDITO:word;
  public
    { Public declarations }
    editado: boolean;
    procedure NOVO_LANCAMENTO;
    procedure PESQUISA_CLIENTE(pesq,chave: string;cdsc: double);
    procedure PESQUISA_VENDEDOR(pesq,chave: string);
    procedure PESQUISA_REPRESENTANTE(pesq,chave: string);
    procedure ALTERA_ENCARGO;
  end;

var
  frmrec_cad: Tfrmrec_cad;

implementation

uses p_funcoes, uPrincipal, pcad_cli, pcad_fun, pcad_rep,
     prec_ban, prec_car;

{$R *.dfm}

procedure Tfrmrec_cad.SALVA_LANCTO;
begin
  if cbstco.Text = 'BANCÁRIO' then
  begin
    with frmprincipal.sp_sql do
    begin
      ibSP.StoredProcName := 'SP_SQL';

      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['nfe_dup']);
      SQL.Add('SET    NFE_STFI = '''+cbstfi.Text+''',');
      SQL.Add('       NFE_IDBX = '''+cbidbx.Text+'''');
      SQL.Add('WHERE  NFE_TITU = '''+eddoct.Text+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    ibSP.StoredProcName := 'SP_FIN_REC_BAN_EDI';
    ibSP.Prepare;

    ibSP.ParamByName('fin').Value := 'FIN_REC_BAN_BAI';
    if frmprincipal.parametrosID.AsInteger > 1 then
    ibSP.ParamByName('fin').Value := 'FIN_REC_BAN_BAI_'+strzero(frmprincipal.parametrosID.AsInteger,3);
  end
  else
  begin
    ibSP.StoredProcName := 'SP_FIN_REC_CAR_EDI';
    ibSP.Prepare;

    ibSP.ParamByName('fin').Value := 'FIN_REC_CAR_BAI';
    if frmprincipal.parametrosID.AsInteger > 1 then
    ibSP.ParamByName('fin').Value := 'FIN_REC_CAR_BAI_'+strzero(frmprincipal.parametrosID.AsInteger,3);
  end;

  ibSP.ParamByName('id').Value   := edid.Text;
  ibSP.ParamByName('CCAB').Value := edccab.Text;
  ibSP.ParamByName('DFIN').Value := eddesc.Text;
  ibSP.ParamByName('IDBX').Value := cbidbx.Text;
  ibSP.ParamByName('CDBX').Value := strtoint(edcdbx.Text);
  ibSP.ParamByName('CDCX').Value := edcdcx.Text;
  ibSP.ParamByName('STDO').Value := cbstdo.Text;
  ibSP.ParamByName('CONC').Value := RETORNA_CREDITO;

  ibSP.ParamByName('CCLI').Value := edccli.Text;
  if (edccli.Text = '') or (edccli.Text = '0') then
  ibSP.ParamByName('CCLI').Value := 0;

  ibSP.ParamByName('CVEN').Value := edcven.Text;
  if (edcven.Text = '') or (edcven.Text = '0') then
  ibSP.ParamByName('CVEN').Value := 0;


  ibSP.ParamByName('CREP').Value := edcrep.Text;
  if (edcrep.Text = '') or (edcrep.Text = '0') then
  ibSP.ParamByName('CREP').Value := 0;

  ibSP.ParamByName('CPPL').Value := edippl.Text;
  if (edippl.Text = '') or (edippl.Text = '0') then
  ibSP.ParamByName('CPPL').Value := '0';

  ibSP.ParamByName('CCUS').Value := edccus.Text;
  if (edccus.Text = '') or (edccus.Text = '0') then
  ibSP.ParamByName('CCUS').Value := '0';

  ibSP.ParamByName('DCAD').Value := eddcad.Date;
  if eddbai.date > 0 then
  ibSP.ParamByName('DBAI').Value := eddbai.Date;
  ibSP.ParamByName('DVEN').Value := eddven.Date;
  ibSP.ParamByName('DOCT').Value := eddoct.Text;
  ibSP.ParamByName('BANC').Value := '';
  ibSP.ParamByName('DBAN').Value := '';
  ibSP.ParamByName('AGEN').Value := '';
  ibSP.ParamByName('CONT').Value := '';
  ibSP.ParamByName('NCHQ').Value := '';
  ibSP.ParamByName('TIPO').Value := cbtipo.Text;
  ibSP.ParamByName('STFI').Value := cbstfi.Text;
  ibSP.ParamByName('CDCO').Value := 0;
  ibSP.ParamByName('CDBA').Value := '';
  ibSP.ParamByName('DEBA').Value := '';
  ibSP.ParamByName('VALO').Value := RETORNA_REAL(edvalo.Text);

  ibSP.ParamByName('DPAG').Value := 0;
  if eddpag.Date > 0 then
  ibSP.ParamByName('DPAG').Value := eddpag.Date;
  ibSP.ParamByName('VPAG').Value := RETORNA_REAL(edvpag.Text);
  ibSP.ParamByName('VPEN').Value := RETORNA_REAL(edvpen.Text);

  ibSP.ParamByName('VENC').Value := RETORNA_REAL(edvenc.Text);
  ibSP.ParamByName('VMUL').Value := RETORNA_REAL(edvmul.Text);
  ibSP.ParamByName('PMUL').Value := RETORNA_REAL(edpmul.Text);
  ibSP.ParamByName('VJUR').Value := RETORNA_REAL(edvjur.Text);
  ibSP.ParamByName('PJUR').Value := RETORNA_REAL(edpjur.Text);
  ibSP.ParamByName('VDES').Value := RETORNA_REAL(edvdes.Text);
  ibSP.ParamByName('PDES').Value := RETORNA_REAL(edpdes.Text);

  ibSP.ParamByName('OBSE').Value := edobse.Text;
  ibSP.ParamByName('STA').Value  := '0';
  ibSP.ParamByName('CTNR').Value := edctnr.Text;
  ibSP.ExecProc;

  lan_chq.First;
  if lan_chq.Fields[0].IsNull then
  begin
    if copy(cbstfi.Text,1,4) = 'PAGO' then
    begin
      ibSP.StoredProcName := 'SP_FIN_REC_REC';
      ibSP.Prepare;

      if cbstco.Text = 'BANCÁRIO' then
      begin
        ibSP.ParamByName('fin').Value  := 'FIN_REC_BAN_REC';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('fin').Value  := 'FIN_REC_BAN_REC_'+strzero(frmprincipal.parametrosID.AsInteger,3);
      end
      else
      begin
        ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_REC';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_REC_'+strzero(frmprincipal.parametrosID.AsInteger,3);
      end;

      ibSP.ParamByName('id').Value   := 0;
      ibSP.ParamByName('CCAB').Value := 0;
      ibSP.ParamByName('DFIN').Value := eddesc.Text;
      ibSP.ParamByName('CDBX').Value := strtoint(edcdbx.Text);
      ibSP.ParamByName('CDCX').Value := edcdcx.Text;
      ibSP.ParamByName('STDO').Value := cbstdo.Text;
      ibSP.ParamByName('CONC').Value := RETORNA_CREDITO;

      ibSP.ParamByName('CCLI').Value := edccli.Text;
      if (edccli.Text = '') or (edccli.Text = '0') then
      ibSP.ParamByName('CCLI').Value := 0;

      ibSP.ParamByName('CVEN').Value := edcven.Text;
      if (edcven.Text = '') or (edcven.Text = '0') then
      ibSP.ParamByName('CVEN').Value := 0;


      ibSP.ParamByName('CREP').Value := edcrep.Text;
      if (edcrep.Text = '') or (edcrep.Text = '0') then
      ibSP.ParamByName('CREP').Value := 0;

      ibSP.ParamByName('CPPL').Value := edippl.Text;
      if (edippl.Text = '') or (edippl.Text = '0') then
      ibSP.ParamByName('CPPL').Value := '0';

      ibSP.ParamByName('CCUS').Value := edccus.Text;
      if (edccus.Text = '') or (edccus.Text = '0') then
      ibSP.ParamByName('CCUS').Value := '0';

      ibSP.ParamByName('DCAD').Value := eddcad.Date;
      if eddbai.date > 0 then
      ibSP.ParamByName('DBAI').Value := eddbai.Date;
      ibSP.ParamByName('DVEN').Value := eddven.Date;
      ibSP.ParamByName('DOCT').Value := eddoct.Text;
      ibSP.ParamByName('BANC').Value := '';
      ibSP.ParamByName('DBAN').Value := '';
      ibSP.ParamByName('AGEN').Value := '';
      ibSP.ParamByName('CONT').Value := '';
      ibSP.ParamByName('NCHQ').Value := '';
      ibSP.ParamByName('TIPO').Value := cbtipo.Text;
      ibSP.ParamByName('STFI').Value := cbstfi.Text;
      ibSP.ParamByName('CDCO').Value := 0;
      ibSP.ParamByName('CDBA').Value := '';
      ibSP.ParamByName('DEBA').Value := '';
      ibSP.ParamByName('VALO').Value := RETORNA_REAL(edvalo.Text);
      ibSP.ParamByName('DPAG').Value := eddven.Date;
      ibSP.ParamByName('VPAG').Value := RETORNA_REAL(edvpag.Text);
      ibSP.ParamByName('VPEN').Value := RETORNA_REAL(edvpen.Text);
      ibSP.ParamByName('OBSE').Value := edobse.Text;
      ibSP.ParamByName('STA').Value  := '0';
      ibSP.ParamByName('BCON').Value := 0;
      ibSP.ParamByName('DCON').Value := '';
      ibSP.ParamByName('LOTE').Value := 0;
      ibSP.ParamByName('DLOT').Value := 0;
      ibSP.ParamByName('CDCH').Value := 0;
      ibSP.ExecProc;
    end;
  end
  else
  begin
    while not lan_chq.Eof do
    begin
      ibSP.StoredProcName := 'SP_FIN_REC_REC';
      ibSP.Prepare;

      if cbstco.Text = 'BANCÁRIO' then
      begin
        ibSP.ParamByName('fin').Value  := 'FIN_REC_BAN_REC';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('fin').Value  := 'FIN_REC_BAN_REC_'+strzero(frmprincipal.parametrosID.AsInteger,3);
      end
      else
      begin
        ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_REC';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_REC_'+strzero(frmprincipal.parametrosID.AsInteger,3);
      end;

      ibSP.ParamByName('id').Value   := 0;
      ibSP.ParamByName('CCAB').Value := 0;
      ibSP.ParamByName('DFIN').Value := eddesc.Text;
      ibSP.ParamByName('CDBX').Value := strtoint(edcdbx.Text);
      ibSP.ParamByName('CDCX').Value := edcdcx.Text;
      ibSP.ParamByName('STDO').Value := cbstdo.Text;
      ibSP.ParamByName('CONC').Value := RETORNA_CREDITO;

      ibSP.ParamByName('CCLI').Value := edccli.Text;
      if (edccli.Text = '') or (edccli.Text = '0') then
      ibSP.ParamByName('CCLI').Value := 0;

      ibSP.ParamByName('CVEN').Value := edcven.Text;
      if (edcven.Text = '') or (edcven.Text = '0') then
      ibSP.ParamByName('CVEN').Value := 0;


      ibSP.ParamByName('CREP').Value := edcrep.Text;
      if (edcrep.Text = '') or (edcrep.Text = '0') then
      ibSP.ParamByName('CREP').Value := 0;

      ibSP.ParamByName('CPPL').Value := edippl.Text;
      if (edippl.Text = '') or (edippl.Text = '0') then
      ibSP.ParamByName('CPPL').Value := '0';

      ibSP.ParamByName('CCUS').Value := edccus.Text;
      if (edccus.Text = '') or (edccus.Text = '0') then
      ibSP.ParamByName('CCUS').Value := '0';

      ibSP.ParamByName('DCAD').Value := eddcad.Date;
      if eddbai.date > 0 then
      ibSP.ParamByName('DBAI').Value := eddbai.Date;
      ibSP.ParamByName('DVEN').Value := lan_chqFIN_DVEN.AsDateTime;
      ibSP.ParamByName('DOCT').Value := eddoct.Text;
      ibSP.ParamByName('BANC').Value := lan_chqFIN_BANC.AsString;
      ibSP.ParamByName('DBAN').Value := eddesc.Text;
      ibSP.ParamByName('AGEN').Value := lan_chqFIN_AGEN.AsString;
      ibSP.ParamByName('CONT').Value := lan_chqFIN_CONT.AsString;
      ibSP.ParamByName('NCHQ').Value := lan_chqFIN_NCHQ.AsString;

      if lan_chqFIN_DVEN.AsDateTime = eddcad.Date then
      ibSP.ParamByName('TIPO').Value := 'CHEQUE A VISTA' else
      ibSP.ParamByName('TIPO').Value := 'CHEQUE PRE-DATADO';
      ibSP.ParamByName('STFI').Value := cbstfi.Text;
      ibSP.ParamByName('CDCO').Value := 0;
      ibSP.ParamByName('CDBA').Value := '';
      ibSP.ParamByName('DEBA').Value := '';
      ibSP.ParamByName('VALO').Value := lan_chqFIN_VALO.AsFloat;
      ibSP.ParamByName('DPAG').Value := lan_chqFIN_DVEN.AsDateTime;
      ibSP.ParamByName('VPAG').Value := lan_chqFIN_VALO.AsFloat;
      ibSP.ParamByName('VPEN').Value := 0;
      ibSP.ParamByName('OBSE').Value := edobse.Text;
      ibSP.ParamByName('STA').Value  := '0';
      ibSP.ParamByName('BCON').Value := 0;
      ibSP.ParamByName('DCON').Value := '';
      ibSP.ParamByName('LOTE').Value := 0;
      ibSP.ParamByName('DLOT').Value := 0;
      ibSP.ParamByName('CDCH').Value := 0;
      ibSP.ExecProc;

      lan_chq.Next;
    end;
  end;
end;

function Tfrmrec_cad.RETORNA_CREDITO: word;
var
  conc: word;
begin
  if sbMSG.Panels[0].Text = 'Alteração' then
  conc := strtoint(edconc.Text) else
  conc := strtoint(copy(cbstdo.Text,3,1));

  if conc = 0 then
  conc   := 1;
  result := conc;
end;

procedure Tfrmrec_cad.NOVO_LANCAMENTO;
begin
  if not tSHEILD.Active then
  tSHEILD.StartTransaction;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM FIN_REC_BAI');
    ExecSQL;
    tSHEILD.CommitRetaining;
  end;
  lan_chq.Close;
  lan_chq.Open;

  eddcad.Date := strtodate(SLPrincipal.Values['data_sistema']);
  eddbai.Date := strtodate(SLPrincipal.Values['data_sistema']);
  eddesc.Text := '';
  edippl.Text := '0';
  edcppl.Text := '';
  cbdppl.Text := '';
  edccus.Text := '';
  cbdcus.Text := '';
  edccli.Text := '0';
  cbdcli.Text := '';
  edcven.Text := '0';
  cbdven.Text := '';
  edcrep.Text := '0';
  cbdrep.Text := '';
  eddoct.Text := '';
  eddven.Text := '';
  cbstco.Text := 'CARTEIRA';
  cbtipo.Text := 'CARTEIRA';
  cbstdo.Text := 'C 0';
  cbstfi.Text := 'PENDENTE';
  edccab.Text := '0';
  edid.Text   := '0';
  edcdbx.Text := '0';
  edvalo.Text := '0,00';
  edvpen.Text := '0,00';
  edvpag.Text := '0,00';

  pcmain.ActivePageIndex := 0;
end;

procedure Tfrmrec_cad.PESQUISA_REPRESENTANTE(pesq,chave: string);
begin
  if (chave = '') or (chave = '0') then
  begin
    edcrep.Text := '0';
    cbdrep.Text := '';

    exit;
  end;

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
      messageBox(handle,'Código do representante não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK)
      else if pesq = 'F' then
      messageBox(handle,'Nome do representante não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if fields[2].AsString = '1' then
    begin
      edcrep.Text := '';
      cbdrep.Text := '';

      messageBox(handle,PChar('Representante '+fields[1].AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if fields[3].AsString <> 'A' then
    begin
      edcrep.Text := '';
      cbdrep.Text := '';

      if fields[3].AsString = 'I' then
         messageBox(handle,PChar('Representante '+fields[1].AsString+' inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
      else if fields[3].AsString = 'P' then
         messageBox(handle,PChar('Representante '+fields[1].AsString+' aguardando autorização para efetuar vendas !'),PChar(self.Caption),MB_ICONERROR+MB_OK);

      Abort;
    end;
    edcrep.Text := fields[0].AsString;
    cbdrep.Text := fields[1].AsString;
  end;
end;

procedure Tfrmrec_cad.PESQUISA_VENDEDOR(pesq,chave: string);
begin
  if (chave = '') or (chave = '0') then
  begin
    edcven.Text := '0';
    cbdven.Text := '';

    exit;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,FUN_APEL,FUN_CDEP,FUN_STA FROM CAD_FUN');
    if pesq = 'C' then
    SQL.Add('WHERE  ID = '''+chave+'''')
    else if pesq = 'F' then
    SQL.Add('WHERE  FUN_APEL = '''+chave+'''');
    Open;

    if fields[0].IsNull then
    begin
      edcven.Text := '';
      cbdven.Text := '';

      if pesq = 'C' then
      messageBox(handle,'Código do vendedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK)
      else if pesq = 'F' then
      messageBox(handle,'Nome do vendedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if fields[3].AsString = '1' then
    begin
      edcven.Text := '';
      cbdven.Text := '';

      messageBox(handle,PChar('Vendedor '+fields[1].AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if fields[2].AsInteger <> 1 then
    begin
      edcven.Text := '';
      cbdven.Text := '';

      messageBox(handle,PChar('Funcionário '+fields[1].AsString+' não está habilitado para efetuar vendas !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
    edcven.Text := fields[0].AsString;
    cbdven.Text := fields[1].AsString;
  end;
end;

procedure Tfrmrec_cad.PESQUISA_CLIENTE(pesq,chave: string;cdsc: double);
begin
  if chave = '' then
  begin
    edccli.Text := '0';
    cbdcli.Text  := '';
    exit;
  end;
  
  try
    tag := 1;

    with psq_cli do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CLI_BAI,CLI_LOGR,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,CLI_OBSO,CLI_VDSC,');
      SQL.Add('       CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,CLI_DDD,CLI_TEL1,CLI_VULT');
      SQL.Add('FROM   CAD_CLI');

      if pesq = 'I' then
      SQL.Add('WHERE  CAD_CLI.ID = '''+chave+'''')
      else if pesq = 'F' then
      SQL.Add('WHERE  CLI_FANT LIKE ''%'+chave+'%''');

      Open;
      Last;
    end;

    if psq_cli.recordcount = 0 then
    begin
      if pesq = 'I' then
      messageBox(handle,'Código do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK)
      else if pesq = 'F' then
      messageBox(handle,'Nome fantasia do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end
    else if psq_cli.recordcount = 1 then
    begin
      if psq_cliCLI_STA.AsString <> '0' then
      begin
        messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if (psq_cliCLI_ESTA.AsString <> 'EX') and (psq_cliID.AsString <> frmprincipal.parametrosPAR_CCLI.AsString) then
      begin
        if (Length(psq_cliCLI_CNPJ.AsString) < 5) and (Length(psq_cliCLI_CPF.AsString) < 5) then
        begin
          messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' sem C.N.P.J. e C.P.F cadastrado. '+#13+'Verifique !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
          Abort;
        end;
      end;

      edccli.Text := psq_cliID.AsString;
      cbdcli.Text := psq_cliCLI_FANT.AsString;
    end
    else
    begin
      frmcad_cli := TFrmcad_cli.Create(self);
      with frmcad_cli.cadastro do
      begin
        SQL.Clear;
        SQL.Add('SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CLI_BAI,CLI_LOGR,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,CLI_OBSO,CLI_VDSC,');
        SQL.Add('       CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DUSU,CLI_DULT,CLI_VULT,CLI_DDD,CLI_TEL1');
        SQL.Add('FROM   CAD_CLI');
        SQL.Add('WHERE  CAD_CLI.ID > 0');

        if pesq = 'F' then
           SQL.Add('AND CLI_FANT LIKE ''%'+cbdcli.Text+'%''');
        SQL.Add('AND    CLI_STA  = 0');
        SQL.Add('AND    CLI_STAV = ''A''');

        if pesq = 'I' then
        begin
          SQL.Add('ORDER BY CAD_CLI.ID');
          frmcad_cli.dbgConsulta.FocusedColumn := 0;
        end
        else if pesq = 'F' then
        begin
          SQL.Add('ORDER BY CLI_FANT');
          frmcad_cli.dbgConsulta.FocusedColumn := 1;
        end;
        Open;
      end;

      frmcad_cli := tfrmcad_cli.Create(self);
      frmcad_cli.FormStyle := fsNormal;
      frmcad_cli.Visible   := false;
      frmcad_cli.Position  := poDesktopCenter;
      frmcad_cli.ShowModal;
    end;
  finally
    tag := 0;
  end;
end;

procedure Tfrmrec_cad.edcpplValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcppl.Text = '' then
  begin
    edippl.Text := '0';
    edcppl.Text := '0';
  end;

  if edcppl.Text = '0' then
  begin
    cbdppl.Text := '';
    abort;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,FIN_DFIN FROM FIN_PPL');
    SQL.Add('WHERE  FIN_CPPL = '''+edcppl.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      edcppl.SetFocus;
      raise exception.Create('Plano de Conta não encontrado !');
    end;

    edippl.Text := fields[0].AsString;
    cbdppl.Text := fields[1].AsString;
    edccus.SetFocus;
  end;
end;

procedure Tfrmrec_cad.edccusValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edccus.Text = '' then
     edccus.Text := '0';

  if edccus.Text = '0' then
  begin
    cbdcus.Text := '';
    abort;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT FIN_DCUS FROM FIN_CUS');
    SQL.Add('WHERE  ID = '''+edccus.Text+'''');
    SQL.Add('AND    FIN_STA = ''0''');
    Open;

    if fields[0].IsNull then
    begin
      edccus.SetFocus;
      raise exception.Create('Centro de Custo não encontrado !');
    end;

    cbdcus.Text := fields[0].AsString;
    edccli.SetFocus;
  end;
end;

procedure Tfrmrec_cad.edccliButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmcad_cli := tfrmcad_cli.Create(self);
  frmcad_cli.FormStyle := fsNormal;
  frmcad_cli.Visible   := false;
  frmcad_cli.Position  := poDesktopCenter;
  frmcad_cli.ShowModal;
end;

procedure Tfrmrec_cad.edccliValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edccli.Text = '' then
  begin
    cbdcli.Text := '';
    abort;
  end;
  PESQUISA_CLIENTE('I',edccli.Text,0);
end;

procedure Tfrmrec_cad.edcvenValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcven.Text = '' then
  begin
    cbdven.Text := '';
    abort;
  end;

  PESQUISA_VENDEDOR('C',edcven.Text);
end;

procedure Tfrmrec_cad.cbdvenExit(Sender: TObject);
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

procedure Tfrmrec_cad.cbdrepExit(Sender: TObject);
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

procedure Tfrmrec_cad.edcvenButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmcad_fun := tfrmcad_fun.Create(self);
  frmcad_fun.Width     := 800;
  frmcad_fun.FormStyle := fsNormal;
  frmcad_fun.Visible   := false;
  frmcad_fun.Position  := poDesktopCenter;
  frmcad_fun.ShowModal;
end;

procedure Tfrmrec_cad.edcrepButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  frmcad_rep := tfrmcad_rep.Create(self);
  frmcad_rep.Width     := 800;
  frmcad_rep.FormStyle := fsNormal;
  frmcad_rep.Visible   := false;
  frmcad_rep.Position  := poDesktopCenter;
  frmcad_rep.ShowModal;
end;

procedure Tfrmrec_cad.edcrepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcrep.Text = '' then
  begin
    cbdrep.Text := '';
    abort;
  end;

  PESQUISA_REPRESENTANTE('C',edcrep.Text);
end;

procedure Tfrmrec_cad.siSAVClick(Sender: TObject);
procedure SALVA_PARCELAS;
begin
  cadastro.Close;
  cadastro.Open;

  frmprincipal.sp_sql.SQL.Clear;
  frmprincipal.sp_sql.SQL.Add('DELETE FROM '+SLPrincipal.Values['fin_rec_ban_bai']+' "FIN_REC"');
  frmprincipal.sp_sql.SQL.Add('WHERE  FIN_CDBX = '''+cadastroFIN_CDBX.AsString+'''');

  frmprincipal.ibSP.StoredProcName := 'SP_SQL';
  frmprincipal.ibSP.Prepare;
  frmprincipal.ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
  frmprincipal.ibSP.ExecProc;

  frmprincipal.sp_sql.SQL.Clear;
  frmprincipal.sp_sql.SQL.Add('DELETE FROM '+SLPrincipal.Values['fin_rec_car_bai']+' "FIN_REC"');
  frmprincipal.sp_sql.SQL.Add('WHERE  FIN_CDBX = '''+cadastroFIN_CDBX.AsString+'''');

  frmprincipal.ibSP.StoredProcName := 'SP_SQL';
  frmprincipal.ibSP.Prepare;
  frmprincipal.ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
  frmprincipal.ibSP.ExecProc;

  while not cadastro.Eof do
  begin
    try
      if cbstco.Text = 'BANCÁRIO' then
      begin
        ibSP.StoredProcName := 'SP_FIN_REC_BAN_EDI';
        ibSP.Prepare;

        ibSP.ParamByName('fin').Value := 'FIN_REC_BAN_BAI';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('fin').Value := 'FIN_REC_BAN_BAI_'+strzero(frmprincipal.parametrosID.AsInteger,3);
      end
      else
      begin
        ibSP.StoredProcName := 'SP_FIN_REC_CAR_EDI';
        ibSP.Prepare;

        ibSP.ParamByName('fin').Value := 'FIN_REC_CAR_BAI';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('fin').Value := 'FIN_REC_CAR_BAI_'+strzero(frmprincipal.parametrosID.AsInteger,3);
      end;

      ibSP.ParamByName('id').Value   := 0;
      ibSP.ParamByName('CCAB').Value := cadastroFIN_CCAB.Value;
      ibSP.ParamByName('DFIN').Value := cadastroFIN_DFIN.Value;
      ibSP.ParamByName('CDBX').Value := cadastroFIN_CDBX.Value;
      ibSP.ParamByName('CDCX').Value := cadastroFIN_CDCX.Value;
      ibSP.ParamByName('STDO').Value := cadastroFIN_STDO.Value;
      ibSP.ParamByName('CONC').Value := cadastroFIN_CONC.Value;
      ibSP.ParamByName('CCLI').Value := cadastroFIN_CCLI.Value;
      ibSP.ParamByName('CVEN').Value := cadastroFIN_CVEN.Value;
      ibSP.ParamByName('CREP').Value := cadastroFIN_CREP.Value;
      ibSP.ParamByName('CPPL').Value := cadastroFIN_CPPL.Value;
      ibSP.ParamByName('CCUS').Value := cadastroFIN_CCUS.Value;
      ibSP.ParamByName('DCAD').Value := cadastroFIN_DCAD.Value;
      ibSP.ParamByName('DBAI').Value := cadastroFIN_DBAI.Value;
      ibSP.ParamByName('DVEN').Value := cadastroFIN_DVEN.Value;
      ibSP.ParamByName('DOCT').Value := cadastroFIN_DOCT.Value;
      ibSP.ParamByName('BANC').Value := cadastroFIN_BANC.Value;
      ibSP.ParamByName('DBAN').Value := cadastroFIN_DBAN.Value;
      ibSP.ParamByName('AGEN').Value := cadastroFIN_AGEN.Value;
      ibSP.ParamByName('CONT').Value := cadastroFIN_CONT.Value;
      ibSP.ParamByName('NCHQ').Value := cadastroFIN_NCHQ.Value;
      ibSP.ParamByName('TIPO').Value := cadastroFIN_TIPO.Value;
      ibSP.ParamByName('STFI').Value := cadastroFIN_STFI.Value;
      ibSP.ParamByName('CDCO').Value := cadastroFIN_CDCO.Value;
      ibSP.ParamByName('CDBA').Value := cadastroFIN_CDBA.Value;
      ibSP.ParamByName('DEBA').Value := cadastroFIN_DEBA.Value;
      ibSP.ParamByName('VALO').Value := cadastroFIN_VALO.Value;
      ibSP.ParamByName('DPAG').Value := cadastroFIN_DPAG.Value;
      ibSP.ParamByName('VPAG').Value := cadastroFIN_VPAG.Value;
      ibSP.ParamByName('VPEN').Value := cadastroFIN_VPEN.Value;
      ibSP.ParamByName('OBSE').Value := cadastroFIN_OBSE.Value;
      ibSP.ParamByName('STA').Value  := cadastroFIN_STA.Value;
      ibSP.ParamByName('CTNR').Value := cadastroFIN_CTNR.Value;
      ibSP.ExecProc;
    except
      IBTra.RollbackRetaining;
      messageBox(handle,'Problemas na gravação das parcelas da cona !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
    cadastro.Next;
  end;

  IBTra.CommitRetaining;
end;

begin
  activecontrol := nil;

  if yesno(handle,'Confirma Lançamento ?') = mrno then
     abort;

  if (Campo_Obrigatorio(PnlCadastro)) then
     Abort;

  if RETORNA_REAL(edvalo.Text) = 0 then
     raise exception.Create('Valor não informado !');

  if (edccli.Text = '0') or (edccli.Text = '') then
  raise exception.Create('Cliente não informado !');

  if (edcven.Text = '0') or (edcven.Text = '') then
  raise exception.Create('Vendedor não informado !');

  if (edcrep.Text = '0') or (edcrep.Text = '') then
  raise exception.Create('Representante não informado !');

  if cbstco.Text = '' then
  raise exception.Create('Tipo de cobrança não informado !');

  if cbstdo.Text = '' then
  raise exception.Create('Forma de cobrança não informada !');

  if cbtipo.Text = '' then
  raise exception.Create('Forma de pagamento não informada !');

  if cbstfi.Text = '' then
  raise exception.Create('Status não informado !');

  if eddoct.Text = '' then
  raise exception.Create('Documento não informado !');

  if eddcad.Date < 0 then
  raise exception.Create('Data de lançamento não informado !');

  if eddven.Date < 0 then
  raise exception.Create('Data de vencimento não informado !');

  if not Assigned(frmrec_car) then
  begin
    if ((copy(cbstdo.Text,1,1) = 'C') and (copy(cbstco.Text,1,1) = 'B')) or
       ((copy(cbstdo.Text,1,1) = 'B') and (copy(cbstco.Text,1,1) = 'C')) then
    raise exception.Create('Forma de pagamento não é válida para o tipo de cobrança selecionado');
  end;
  
  try
    if (edcdbx.Text = '') or (edcdbx.Text = '0') then
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_BAI_REC,1) FROM RDB$DATABASE');
      Open;
      IBtra.CommitRetaining;
      
      edcdbx.Text := fields[0].AsString;
    end;

    try
      SALVA_LANCTO;
      editado := true;
      IBTra.CommitRetaining;
    except
      IBTra.RollbackRetaining;
      messageBox(handle,'Problemas na gravação da conta !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  finally
  end;
end;

procedure Tfrmrec_cad.FormCreate(Sender: TObject);
begin
  inherited;
  NOVO_LANCAMENTO;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CLI_FANT FROM CAD_CLI,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
    SQL.Add('WHERE    CLI_STAV   = ''A''');
    SQL.Add('AND      CAD_CLI.ID = PED_VEN_CAB.ROM_CCLI');
    SQL.Add('GROUP BY CLI_FANT');
    SQL.Add('ORDER BY CLI_FANT');
    Open;

    while not eof do
    begin
      cbdcli.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   USU_DUSU FROM CAD_USU');
    SQL.Add('WHERE    USU_MENU = ''VEN''');
    SQL.Add('AND      USU_STA  = ''0''');
    SQL.Add('ORDER BY USU_DUSU');
    Open;
    while not eof do
    begin
      cbdven.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   REP_FANT FROM CAD_REP');
    SQL.Add('WHERE    REP_STA = ''0''');
    SQL.Add('ORDER BY REP_FANT');
    Open;
    while not eof do
    begin
      cbdrep.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FIN_DFIN FROM FIN_PPL');
    SQL.Add('ORDER BY FIN_DFIN');
    Open;

    while not eof do
    begin
      cbdppl.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FIN_DCUS FROM FIN_CUS');
    SQL.Add('ORDER BY FIN_DCUS');
    Open;

    while not eof do
    begin
      cbdcus.Items.Add(fields[0].AsString);
      next;
    end;
  
    SQL.Clear;
    SQL.Add('SELECT ID,FIN_DFIN FROM FIN_PPL');
    SQL.Add('WHERE  FIN_CPPL = ''1.1.7.0001''');
    Open;

    if not fields[0].IsNull then
    begin
      edcppl.Text := '1.1.7.0001';
      edippl.Text := fields[0].AsString;
      cbdppl.Text := fields[1].AsString;
    end;

    SQL.Clear;
    SQL.Add('SELECT FIN_DCUS FROM FIN_CUS');
    SQL.Add('WHERE  ID = ''18''');
    Open;

    if not fields[0].IsNull then
    begin
      edccus.Text := '18';
      cbdcus.Text := fields[0].AsString;
    end;

    SQL.Clear;
    SQL.Add('SELECT   VEN_TIPO FROM TAB_COB');
    SQL.Add('ORDER BY VEN_TIPO');
    Open;

    while not eof do
    begin
      cbtipo.Values.Add(fields[0].AsString);
      cbtipo.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   IBX_IDBX FROM TAB_IBX');
    SQL.Add('ORDER BY IBX_IDBX');
    Open;

    while not eof do
    begin
      cbidbx.Values.Add(fields[0].AsString);
      cbidbx.Descriptions.Add(fields[0].AsString);
      next;
    end;
  end;
end;

procedure Tfrmrec_cad.edvmulValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edVMUL.Text = '' then
     edVMUL.Text := '0,00';

  if RETORNA_REAL(edvalo.Text) = 0 then
  begin
    edvalo.SetFocus;
    raise exception.Create('Valor a Pagar não Preenchido !');
  end;

  edVMUL.Text := formatfloat('#,0.00########',RETORNA_REAL(edVMUL.Text));
  edPMUL.Text := formatfloat('#,0.00########',(RETORNA_REAL(edVMUL.Text)*100)/RETORNA_REAL(edVALO.Text));

  ALTERA_ENCARGO;
end;

procedure Tfrmrec_cad.edpmulValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edPMUL.Text = '' then
     edPMUL.Text := '0,00';

  if RETORNA_REAL(edvalo.Text) = 0 then
  begin
    edvalo.SetFocus;
    raise exception.Create('Valor a Pagar não Preenchido !');
  end;

  edPMUL.Text := formatfloat('#,0.00########',RETORNA_REAL(edPMUL.Text));
  edVMUL.Text := formatfloat('#,0.00########',(RETORNA_REAL(edVALO.Text)*RETORNA_REAL(edPMUL.Text))/100);

  ALTERA_ENCARGO;
end;

procedure Tfrmrec_cad.edvjurValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edVJUR.Text = '' then
     edVJUR.Text := '0,00';

  if RETORNA_REAL(edvalo.Text) = 0 then
  begin
    edvalo.SetFocus;
    raise exception.Create('Valor a Pagar não Preenchido !');
  end;

  edVJUR.Text := formatfloat('#,0.00########',RETORNA_REAL(edVJUR.Text));
  edPJUR.Text := formatfloat('#,0.00########',(RETORNA_REAL(edVJUR.Text)*100)/RETORNA_REAL(edVALO.Text));

  ALTERA_ENCARGO;
end;

procedure Tfrmrec_cad.edpjurValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edPJUR.Text = '' then
     edPJUR.Text := '0,00';

  if RETORNA_REAL(edvalo.Text) = 0 then
  begin
    edvalo.SetFocus;
    raise exception.Create('Valor a Pagar não Preenchido !');
  end;

  edPJUR.Text := formatfloat('#,0.00########',RETORNA_REAL(edPJUR.Text));
  edVJUR.Text := formatfloat('#,0.00########',(RETORNA_REAL(edVALO.Text)*RETORNA_REAL(edPJUR.Text))/100);

  ALTERA_ENCARGO;
end;

procedure Tfrmrec_cad.edvdesValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edVDES.Text = '' then
     edVDES.Text := '0,00';

  if RETORNA_REAL(edvalo.Text) = 0 then
  begin
    edvalo.SetFocus;
    raise exception.Create('Valor a Pagar não Preenchido !');
  end;

  edVDES.Text := formatfloat('#,0.00########',RETORNA_REAL(edVDES.Text));
  edPDES.Text := formatfloat('#,0.00########',(RETORNA_REAL(edVDES.Text)*100)/RETORNA_REAL(edVALO.Text));

  ALTERA_ENCARGO;
end;

procedure Tfrmrec_cad.edpdesValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edPDES.Text = '' then
     edPDES.Text := '0,00';

  if RETORNA_REAL(edvalo.Text) = 0 then
  begin
    edvalo.SetFocus;
    raise exception.Create('Valor a Pagar não Preenchido !');
  end;

  edPDES.Text := formatfloat('#,0.00########',RETORNA_REAL(edPDES.Text));
  edVDES.Text := formatfloat('#,0.00########',(RETORNA_REAL(edVALO.Text)*RETORNA_REAL(edPDES.Text))/100);

  ALTERA_ENCARGO;
end;

procedure Tfrmrec_cad.cbidbxChange(Sender: TObject);
begin
  if cbidbx.Text = '' then
  exit;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT IBX_DIBX FROM TAB_IBX');
    SQL.Add('WHERE  IBX_IDBX = '''+cbidbx.Text+'''');
    Open;

    eddibx.Text := fields[0].AsString;
  end;
end;

procedure Tfrmrec_cad.ALTERA_ENCARGO;
var
  venc: double;
begin
  venc := 0;

  if (RETORNA_REAL(edvmul.Text) > 0) or (RETORNA_REAL(edvjur.Text) > 0) or (RETORNA_REAL(edvdes.Text) > 0) then
  venc := (RETORNA_REAL(edvmul.Text)+RETORNA_REAL(edvjur.Text))-RETORNA_REAL(edvdes.Text);

  edvenc.Text := formatfloat('#,0.00########',venc);
  edvpen.Text := formatfloat('#,0.00########',RETORNA_REAL(edvalo.Text) + venc);
end;

procedure Tfrmrec_cad.eddoctButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  if eddoct.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT NFE_CFAV,NFE_DFAV,NFE_CVEN,NFE_DVEN,NFE_CREP,NFE_DREP,NFE_DEMI FROM '+SLPrincipal.Values['nfe_cab']);
    SQL.Add('WHERE  NFE_CDNF = '''+eddoct.Text+'''');
    Open;

    if not Fields[0].IsNull then
    begin
      edccli.Text := Fields[0].AsString;
      cbdcli.Text := Fields[1].AsString;
      edcven.Text := Fields[2].AsString;
      cbdven.Text := Fields[3].AsString;
      edcrep.Text := Fields[4].AsString;
      cbdrep.Text := Fields[5].AsString;
      eddcad.Date := Fields[6].AsDateTime;

      SQL.Clear;
      SQL.Add('SELECT ID FROM '+SLPrincipal.Values['nfe_dup']);
      SQL.Add('WHERE  NFE_CDNF = '''+eddoct.Text+'''');
      Open;

      if not fields[0].IsNull then
      begin
        cbstco.Text := 'BANCÁRIO';
        cbtipo.Text := 'DUPLICATA';
        cbstdo.Text := 'B 1';
      end;

      SQL.Clear;
      SQL.Add('SELECT ROM_STPD FROM '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('WHERE  ROM_CDNF = '''+eddoct.Text+'''');
      Open;

      if not fields[0].IsNull then
      begin
        cbdppl.Text := fields[0].AsString;

        SQL.Clear;
        SQL.Add('SELECT ID,FIN_CPPL FROM FIN_PPL');
        SQL.Add('WHERE  FIN_DFIN = '''+cbdppl.Text+'''');
        Open;

        if not fields[0].IsNull then
        begin
          edippl.Text := fields[0].AsString;
          edcppl.Text := fields[1].AsString;
        end;
      end;
    end;
  end;
end;

procedure Tfrmrec_cad.FormDestroy(Sender: TObject);
begin
  frmrec_cad := nil;
end;

procedure Tfrmrec_cad.cbdpplExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,FIN_CPPL FROM FIN_PPL');
      SQL.Add('WHERE  FIN_DFIN = '''+cbdppl.Text+'''');
      Open;
      edippl.Text := fields[0].AsString;
      edcppl.Text := fields[1].AsString;
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

procedure Tfrmrec_cad.cbdcusExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM FIN_CUS');
      SQL.Add('WHERE  FIN_DCUS = '''+cbdcus.Text+'''');
      Open;
      edccus.Text := fields[0].AsString;
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

procedure Tfrmrec_cad.edvpagValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvpag.Text = '' then
  edvpag.Text := '0';

  edvpag.Text := formatfloat('#,0.00########',RETORNA_REAL(edvpag.Text));
end;

procedure Tfrmrec_cad.edvaloValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvalo.Text = '' then
  edvalo.Text := '0';

  edvalo.Text := formatfloat('#,0.00########',RETORNA_REAL(edvalo.Text));
end;

procedure Tfrmrec_cad.cbdcliExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    PESQUISA_CLIENTE('F',cbdcli.Text,0);
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

procedure Tfrmrec_cad.eddoctValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (eddoct.Text = '') or (eddoct.Text = '0') then
  exit;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT FIN_REC.ID,CLI_FANT,FIN_DESC');
    SQL.Add('FROM   CAD_CLI,'+SLPrincipal.Values['fin_rec_ban_bai']+' "FIN_REC"');
    SQL.Add('WHERE  FIN_DOCT   = '''+eddoct.Text+'''');
    SQL.Add('AND    CAD_CLI.ID = FIN_REC.FIN_CCLI');
    SQL.Add('UNION');
    SQL.Add('SELECT FIN_REC.ID,CLI_FANT,FIN_DESC');
    SQL.Add('FROM   CAD_CLI,'+SLPrincipal.Values['fin_rec_car_bai']+' "FIN_REC"');
    SQL.Add('WHERE  FIN_DOCT = '''+eddoct.Text+'''');
    SQL.Add('AND    CAD_CLI.ID = FIN_REC.FIN_CCLI');
    Open;

    if not fields[0].IsNull then
    begin
      eddoct.SetFocus;
      messageBox(handle,PChar('Documento já cadastrado !'+#13+'Cliente '+fields[1].AsString+#13+'Conta '+fields[2].AsString),PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;
end;

procedure Tfrmrec_cad.eddvenValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (eddven.Date = eddcad.Date) and (copy(cbstfi.Text,1,4) <> 'PAGO') then
  cbstfi.Text := 'PAGO';

  if (copy(cbstfi.Text,1,4) = 'PAGO') and (RETORNA_REAL(edvpag.Text) = 0) then
  edvpag.Text := edvalo.Text;
end;

procedure Tfrmrec_cad.edvaloExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if (copy(cbstfi.Text,1,4) = 'PAGO') then
    begin
      edvpag.Text := edvalo.Text;
      if eddpag.Date <= 0 then
      eddpag.Date := eddven.Date;
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

procedure Tfrmrec_cad.cbstfiValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if copy(cbstfi.Text,1,4) <> 'PAGO' then
  begin
    eddpag.Text := '';
    edvpag.Text := '0,00';
  end;  
end;

end.
