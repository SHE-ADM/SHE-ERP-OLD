unit pCFeSat;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc, math, StrUtils,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, dxDBELib, dxExEdtr, rxSpeedbar,
  IBSQL, cxGraphics, cxControls, dxStatusBar, dxPageControl, dxEditor,
  RXCtrls, Shellapi;

type
  EBranco = class(Exception);
  ENull = class(Exception);
  TFrmCFeSat = class(TForm)
    TConsulta: TIBTransaction;
    QCadastro: TIBQuery;
    PV: TIBQuery;
    DTSPV: TDataSource;
    SBRodape: TdxStatusBar;
    GBVenda: TGroupBox;
    LANumero: TLabel;
    EDNumero: TdxMaskEdit;
    EDCPFOUCNPJ: TdxMaskEdit;
    LACPFOUCNPJ: TLabel;
    RSBCupom: TRxSpeedButton;
    RSBSaida: TRxSpeedButton;
    PVFK: TIBQuery;
    DTSPVFK: TDataSource;
    EDNome: TdxMaskEdit;
    LACliente: TLabel;
    CETSDE: TdxCurrencyEdit;
    IEPagto: TdxImageEdit;
    LATSDE: TLabel;
    CETCDE: TdxCurrencyEdit;
    LATCDE: TLabel;
    LAPagto: TLabel;
    LARecebido: TLabel;
    CERecebido: TdxCurrencyEdit;
    CETroco: TdxCurrencyEdit;
    LATroco: TLabel;
    CEVDESC: TdxCurrencyEdit;
    Label1: TLabel;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    PVID: TIntegerField;
    PVDEPV: TIBStringField;
    PVDTPV: TDateField;
    PVCDNF: TIntegerField;
    PVDTNF: TDateField;
    PVIDCL: TIntegerField;
    PVDECL: TIBStringField;
    PVRZCL: TIBStringField;
    PVCNPJ: TIBStringField;
    PVCPF: TIBStringField;
    PVUF: TIBStringField;
    PVIDCV: TIntegerField;
    PVDECV: TIBStringField;
    PVIDCR: TIntegerField;
    PVDECR: TIBStringField;
    PVQTDE: TIBBCDField;
    PVQTRL: TIntegerField;
    PVSTCO: TIBStringField;
    PVTPCO: TSmallintField;
    PVCDPG: TIntegerField;
    PVDEPG: TIBStringField;
    PVNUPG: TSmallintField;
    PVTSDE: TIBBCDField;
    PVTCDE: TIBBCDField;
    PVPICMS: TIntegerField;
    PVVICMS: TIBBCDField;
    PVPPIS: TIBBCDField;
    PVVPIS: TIBBCDField;
    PVPCOFINS: TIBBCDField;
    PVVCOFINS: TIBBCDField;
    PVVITEM12741: TIBBCDField;
    PVIDCT: TIntegerField;
    PVDECT: TIBStringField;
    PVMFRT: TSmallintField;
    PVPSBR: TIBBCDField;
    PVPSLQ: TIBBCDField;
    PVFKID: TIntegerField;
    PVFKITEM: TIntegerField;
    PVFKIDCP: TIntegerField;
    PVFKARTIGO: TIBStringField;
    PVFKNCM: TIBStringField;
    PVFKCEST: TIBStringField;
    PVFKEXTIPI: TIBStringField;
    PVFKSKU: TIBStringField;
    PVFKCEAN: TIBStringField;
    PVFKDECP: TIBStringField;
    PVFKDGCP: TIBStringField;
    PVFKUCOM: TIBStringField;
    PVFKQTDE: TIBBCDField;
    PVFKQTRL: TIntegerField;
    PVFKVPRC_PAD: TFloatField;
    PVFKPDSC: TIBBCDField;
    PVFKVPRC_COM: TFloatField;
    PVFKTSDE: TIBBCDField;
    PVFKTCDE: TIBBCDField;
    PVFKPICMS: TIntegerField;
    PVFKVICMS: TIBBCDField;
    PVFKPPIS: TIBBCDField;
    PVFKVPIS: TIBBCDField;
    PVFKPCOFINS: TIBBCDField;
    PVFKVCOFINS: TIBBCDField;
    PVFKVITEM12741: TIBBCDField;
    PVFKTDSC: TIBBCDField;
    TEvent: TIBTransaction;
    SQLEvent: TIBSQL;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    PVFKORIG: TSmallintField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RSBSaidaClick(Sender: TObject);
    procedure RSBCupomClick(Sender: TObject);
    procedure PVAfterOpen(DataSet: TDataSet);
    procedure LACPFOUCNPJClick(Sender: TObject);
    procedure EDNumeroValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EDCPFOUCNPJValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CERecebidoValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    procedure _VLDNumero;
    procedure _PSQNumero;
  public
    { Public declarations }
    Constructor Create(AOwner: TComponent;const ANumero: String); reintroduce; overload;
  end;

var
  FrmCFeSat: TFrmCFeSat;
  Numero: String;

implementation

uses
  uPrincipal;

{$R *.dfm}

Constructor TFrmCFeSat.Create(AOwner: TComponent;const ANumero: String);
begin
  Numero := ANumero;
  inherited Create(AOwner);
end;

procedure TFrmCFeSat.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
  Tag := 1;

  with EEvent do
       try
         UnregisterEvents;
         Events.Add(oREPZero('CTR_PED','_',RECParametros.Id,3));
         RegisterEvents;
       except
         on E: Exception do
               oErro(Handle,'Falha ao tentar registrar evento !'+#13+#13+
                            'Error Code: '+E.Message);
       end;

  oOTransact(TConsulta);
  EDNumero.Text := Numero;
  _PSQNumero;
end;

procedure TFrmCFeSat.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if EDNumero.Text <> '0' then
     if oEmpty(EDCPFOUCNPJ.Text) then
     EDCPFOUCNPJ.SetFocus else
     CERECEBIDO.SetFocus;
end;

procedure TFrmCFeSat.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Screen.Cursor := crDefault;
  Tag := 0;
end;

procedure TFrmCFeSat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCFeSat.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  TFArquivo: TextFile;
  Chave,
  CDCF : String;
  BRet : Boolean;
begin
  BRet := False;

  if FileExists(PChar(RECParametros.CFE_PATH_PRINCIPAL+'\Envia\Retorno\'+EDNumero.Text+'.txt')) then
     try
       AssignFile(TFArquivo,PAnsiChar(RECParametros.CFE_PATH_PRINCIPAL+'\Envia\Retorno\'+EDNumero.Text+'.txt'));
       Reset(TFArquivo);

       Readln(TFArquivo,Chave);
       BRet  := Pos('SUCESSO',UPPERCASE(Chave)) > 0;
       Chave := Copy(Chave,Pos(',',Chave) + 1,44);
       CDCF  := Copy(Chave,31,07);
     finally
       CloseFile(TFArquivo);
     end;

  if BRet then
     try
       oOTransact(TEdicao);
       with SQLEdicao do
       begin
         Close;
         SQL.Clear;
         SQL.Add('UPDATE ' + oREPZero('PED_VEN_CAB','_',RECParametros.Id,3));
         SQL.Add('SET   ROM_CDNF = ''' + CDCF + ''',');
         SQL.Add('      ROM_DNFS = CURRENT_DATE    ,');
         SQL.Add('      DTNF     = CURRENT_TIMESTAMP');
         SQL.Add('WHERE DEPD     = ''' + PVDEPV.AsString + '''');
         ExecQuery;
       
         Close;
         SQL.Clear;
         SQL.Add('SELECT GEN_ID(ID_NO_'+SLPrincipal.Values['nfe_cab']+',1) FROM RDB$DATABASE');
         ExecQuery;
         Tag := Current.Vars[0].AsInteger;
       end;

       SPEdicao.Close;
       SPEdicao.StoredProcName := 'SP_NFE_CAB';
       SPEdicao.Prepare;

       SPEdicao.ParamByName('nfe').Value          := oREPZero('NFE_CAB','_',RECParametros.Id,3);
       SPEdicao.ParamByName('id').Value           := SQLEdicao.Tag;
       SPEdicao.ParamByName('REST').Value         := 'A';
       SPEdicao.ParamByName('CDNF').Value         := CDCF;
       SPEdicao.ParamByName('R_CDNF').Value       := 0;
       SPEdicao.ParamByName('DEMI').Value         := Date;
       SPEdicao.ParamByName('DSAI').Value         := Date;
       SPEdicao.ParamByName('CDRO').Value         := 0;
       SPEdicao.ParamByName('DERO').Value         := PVDEPV.AsString;
       SPEdicao.ParamByName('CVEN').Value         := PVIDCV.AsInteger;
       SPEdicao.ParamByName('DVEN').Value         := PVDECV.AsString;
       SPEdicao.ParamByName('CREP').Value         := PVIDCR.AsInteger;
       SPEdicao.ParamByName('DREP').Value         := PVDECR.AsString;
       SPEdicao.ParamByName('CFAV').Value         := PVIDCL.AsInteger;
       SPEdicao.ParamByName('DFAV').Value         := PVDECL.AsString;
       SPEdicao.ParamByName('CTRA').Value         := 2;
       SPEdicao.ParamByName('DTRA').Value         := 'CLIENTE RETIRA';
       SPEdicao.ParamByName('MFRT').Value         := '9';
       SPEdicao.ParamByName('CFRT').Value         := EmptyStr;
       SPEdicao.ParamByName('CNAT').Value         := '5102';
       SPEdicao.ParamByName('INDPAG').Value       := IFThen(PVNUPG.AsInteger > 1,0,1);
       SPEdicao.ParamByName('TPNF').Value         := 1;
       SPEdicao.ParamByName('NFREF').Value        := 0;
       SPEdicao.ParamByName('REFNFE').Value       := EmptyStr;
       SPEdicao.ParamByName('CUFREF').Value       := RECParametros.SGUF;
       SPEdicao.ParamByName('CNPJREF').Value      := RECParametros.Cnpj;
       SPEdicao.ParamByName('MODREF').Value       := '01';
       SPEdicao.ParamByName('SERIEREF').Value     := RECParametros.NFE_SERIE;
       SPEdicao.ParamByName('NNFREF').Value       := 0;
       SPEdicao.ParamByName('TPEMIS').Value       := 1;
       SPEdicao.ParamByName('FINNFE').Value       := 5;
       SPEdicao.ParamByName('CHAV').Value         := Chave;
       SPEdicao.ParamByName('PROT').Value         := EmptyStr;
       SPEdicao.ParamByName('QCOM').Value         := PVQTDE.AsFloat;
       SPEdicao.ParamByName('VBC').Value          := PVTCDE.AsFloat;
       SPEdicao.ParamByName('VICMS').Value        := PVVICMS.AsFloat;
       SPEdicao.ParamByName('VBCST').Value        := 0;
       SPEdicao.ParamByName('VST').Value          := 0;
       SPEdicao.ParamByName('VPROD').Value        := PVTSDE.AsFloat;
       SPEdicao.ParamByName('VFRETE').Value       := 0;
       SPEdicao.ParamByName('VSEG').Value         := 0;
       SPEdicao.ParamByName('VDESC').Value        := 0;
       SPEdicao.ParamByName('VII').Value          := 0;
       SPEdicao.ParamByName('VIPI').Value         := 0;
       SPEdicao.ParamByName('VPIS').Value         := PVVPIS.AsFloat;
       SPEdicao.ParamByName('VCOFINS').Value      := PVVCOFINS.AsFloat;
       SPEdicao.ParamByName('VOUTRO').Value       := 0;
       SPEdicao.ParamByName('VNF').Value          := PVTCDE.AsFloat;
       SPEdicao.ParamByName('VSERVISSQN').Value   := 0;
       SPEdicao.ParamByName('VBCISSQN').Value     := 0;
       SPEdicao.ParamByName('VISS').Value         := 0;
       SPEdicao.ParamByName('VPISISSQN').Value    := 0;
       SPEdicao.ParamByName('VCOFINSISSQN').Value := 0;
       SPEdicao.ParamByName('VRETPIS').Value      := 0;
       SPEdicao.ParamByName('VRETCOFINS').Value   := 0;
       SPEdicao.ParamByName('VRETCSLL').Value     := 0;
       SPEdicao.ParamByName('VBCIRRF').Value      := 0;
       SPEdicao.ParamByName('VIRRF').Value        := 0;
       SPEdicao.ParamByName('VBCRETPREV').Value   := 0;
       SPEdicao.ParamByName('VRETPREV').Value     := 0;
       SPEdicao.ParamByName('VRETPREV').Value     := 0;
       SPEdicao.ParamByName('VRETPREV').Value     := 0;
       SPEdicao.ParamByName('OBSE').Value         := EmptyStr;
       SPEdicao.ParamByName('CLFO').Value         := 0;
       SPEdicao.ParamByName('ESTO').Value         := 0;
       SPEdicao.ExecProc;

       SPEdicao.Close;
       SPEdicao.StoredProcName := 'SP_NFE_TRA';
       SPEdicao.Prepare;

       SPEdicao.ParamByName('nfe').Value       := oREPZero('NFE_TRA','_',RECParametros.Id,3);
       SPEdicao.ParamByName('id').Value        := 0;
       SPEdicao.ParamByName('CCAB').Value      := SQLEdicao.Tag;
       SPEdicao.ParamByName('CTRA').Value      := PVIDCT.AsInteger;
       SPEdicao.ParamByName('CFRT').Value      := EmptyStr;
       SPEdicao.ParamByName('MODFRETE').Value  := PVMFRT.AsInteger;
       SPEdicao.ParamByName('RETTRANSP').Value := EmptyStr;
       SPEdicao.ParamByName('VSERV').Value     := 0;
       SPEdicao.ParamByName('VBCRET').Value    := 0;
       SPEdicao.ParamByName('PICMSRET').Value  := 0;
       SPEdicao.ParamByName('VICMSRET').Value  := 0;
       SPEdicao.ParamByName('CFOP').Value      := 0;
       SPEdicao.ParamByName('CMUNFG').Value    := 0;
       SPEdicao.ParamByName('PLACA').Value     := EmptyStr;
       SPEdicao.ParamByName('UF').Value        := EmptyStr;
       SPEdicao.ParamByName('RNTC').Value      := EmptyStr;
       SPEdicao.ParamByName('QVOL').Value      := 0;
       SPEdicao.ParamByName('ESP').Value       := EmptyStr;
       SPEdicao.ParamByName('MARCA').Value     := EmptyStr;
       SPEdicao.ParamByName('NVOL').Value      := 0;
       SPEdicao.ParamByName('PSBR').Value      := PVPSBR.AsFloat;
       SPEdicao.ParamByName('PSLQ').Value      := PVPSLQ.AsFloat;
       SPEdicao.ParamByName('NLACRE').Value    := EmptyStr;
       SPEdicao.ExecProc;

       while not PVFK.Eof do
       begin
         SPEdicao.Close;
         SPEdicao.StoredProcName := 'SP_NFE_ITE';
         SPEdicao.Prepare;
         
         SPEdicao.ParamByName('nfe').Value            := oREPZero('NFE_ITE','_',RECParametros.Id,3);
         SPEdicao.ParamByName('id').Value             := 0;
         SPEdicao.ParamByName('CCAB').Value           := SQLEdicao.Tag;
         SPEdicao.ParamByName('CDNF').Value           := CDCF;
         SPEdicao.ParamByName('INDTOT').Value         := 1;
         SPEdicao.ParamByName('CFOP').Value           := '5102';
         SPEdicao.ParamByName('CART').Value           := PVFKARTIGO.AsString;
         SPEdicao.ParamByName('CPROD').Value          := PVFKSKU.AsString;
         SPEdicao.ParamByName('CEAN').Value           := PVFKCEAN.AsString;
         SPEdicao.ParamByName('NCM').Value            := PVFKNCM.AsString;
         SPEdicao.ParamByName('EXTIPI').Value         := PVFKEXTIPI.AsString;
         SPEdicao.ParamByName('CEST').Value           := PVFKCEST.AsString;
         SPEdicao.ParamByName('DCOR').Value           := LeftStr(PVFKDGCP.AsString,30);
         SPEdicao.ParamByName('XPROD').Value          := PVFKDECP.AsString;
         SPEdicao.ParamByName('INFADPROD').Value      := EmptyStr;
         SPEdicao.ParamByName('UCOM').Value           := PVFKUCOM.AsString;
         SPEdicao.ParamByName('QCOM').Value           := PVFKQTDE.AsFloat;
         SPEdicao.ParamByName('RCOM').Value           := PVFKQTRL.AsInteger;

         SPEdicao.ParamByName('PSCN').Value           := 0;
         SPEdicao.ParamByName('PSBR').Value           := 0;
         SPEdicao.ParamByName('PSLQ').Value           := 0;

         SPEdicao.ParamByName('VUNCOM').Value         := PVFKVPRC_COM.AsFloat;
         SPEdicao.ParamByName('VPROD').Value          := PVFKTSDE.AsFloat;
         SPEdicao.ParamByName('VFRETE').Value         := 0;
         SPEdicao.ParamByName('VSEG').Value           := 0;
         SPEdicao.ParamByName('VDESC').Value          := 0;
         SPEdicao.ParamByName('VOUTRO').Value         := 0;
         SPEdicao.ParamByName('XLOCEMBARQ').Value     := EmptyStr;
         SPEdicao.ParamByName('UFEMBARQ').Value       := EmptyStr;
         SPEdicao.ParamByName('NDI').Value            := EmptyStr;
         SPEdicao.ParamByName('DDI').Value            := 0;
         SPEdicao.ParamByName('XLOCDESEMB').Value     := EmptyStr;
         SPEdicao.ParamByName('UFDESEMB').Value       := EmptyStr;
         SPEdicao.ParamByName('DDESEMB').Value        := 0;
         SPEdicao.ParamByName('CEXPORTADOR').Value    := 0;
         SPEdicao.ParamByName('NADICAO').Value        := 0;
         SPEdicao.ParamByName('NSEQADIC').Value       := 0;
         SPEdicao.ParamByName('CFABRICANTE').Value    := 0;
         SPEdicao.ParamByName('VDESCDI').Value        := 0;
         SPEdicao.ParamByName('XPED').Value           := EDNumero.Text;
         SPEdicao.ParamByName('ITEMPED').Value        := PVFKITEM.AsString;
         SPEdicao.ParamByName('ORIG').Value           := PVFKORIG.AsString;
         SPEdicao.ParamByName('CST').Value            := '00';
         SPEdicao.ParamByName('MODBC').Value          := EmptyStr;
         SPEdicao.ParamByName('PREDBC').Value         := 0;
         SPEdicao.ParamByName('VBC').Value            := PVFKTCDE.AsFloat;
         SPEdicao.ParamByName('PICMS').Value          := PVFKPICMS.AsFloat;
         SPEdicao.ParamByName('VICMS').Value          := PVFKVICMS.AsFloat;
         SPEdicao.ParamByName('MODBCST').Value        := EmptyStr;
         SPEdicao.ParamByName('MVAST').Value          := 0;
         SPEdicao.ParamByName('PREDBCST').Value       := 0;
         SPEdicao.ParamByName('VBCST').Value          := 0;
         SPEdicao.ParamByName('VBCSTRET').Value       := 0;
         SPEdicao.ParamByName('VICMSSTRET').Value     := 0;
         SPEdicao.ParamByName('PICMSST').Value        := 0;
         SPEdicao.ParamByName('VICMSST').Value        := 0;
         SPEdicao.ParamByName('PCREDSN').Value        := 0;
         SPEdicao.ParamByName('VCREDICMSSN').Value    := 0;
         SPEdicao.ParamByName('CSTIPI').Value         := 0;
         SPEdicao.ParamByName('VBCIPI').Value         := 0;
         SPEdicao.ParamByName('PIPI').Value           := 0;
         SPEdicao.ParamByName('VIPI').Value           := 0;
         SPEdicao.ParamByName('VBCIMP').Value         := 0;
         SPEdicao.ParamByName('VDESPADU').Value       := 0;
         SPEdicao.ParamByName('VIIIMP').Value         := 0;
         SPEdicao.ParamByName('VIOFIMP').Value        := 0;
         SPEdicao.ParamByName('CSTPIS').Value         := '01';
         SPEdicao.ParamByName('VBCPIS').Value         := PVFKTCDE.AsFloat;
         SPEdicao.ParamByName('PPIS').Value           := PVFKPPIS.AsFloat;
         SPEdicao.ParamByName('VPIS').Value           := PVFKVPIS.AsFloat;
         SPEdicao.ParamByName('VBCPISST').Value       := 0;
         SPEdicao.ParamByName('PPISST').Value         := 0;
         SPEdicao.ParamByName('VPISST').Value         := 0;
         SPEdicao.ParamByName('CSTCOFINS').Value      := '01';
         SPEdicao.ParamByName('VBCOFINS').Value       := PVFKTCDE.AsFloat;
         SPEdicao.ParamByName('PCOFINS').Value        := PVFKPCOFINS.AsFloat;
         SPEdicao.ParamByName('VCOFINS').Value        := PVFKVCOFINS.AsFloat;
         SPEdicao.ParamByName('VBCOFINSST').Value     := 0;
         SPEdicao.ParamByName('PCOFINSST').Value      := 0;
         SPEdicao.ParamByName('VCOFINSST').Value      := 0;
         SPEdicao.ParamByName('VBCISSQN').Value       := 0;
         SPEdicao.ParamByName('VALIQISSQN').Value     := 0;
         SPEdicao.ParamByName('VISSQN').Value         := 0;
         SPEdicao.ParamByName('CMUNFGISSQN').Value    := EmptyStr;
         SPEdicao.ParamByName('CLISTSERV').Value      := 0;
         SPEdicao.ParamByName('VNF').Value            := PVFKTCDE.AsFloat;
         SPEdicao.ParamByName('VBCSTDEST').Value      := 0;
         SPEdicao.ParamByName('VICMSSTDEST').Value    := 0;
         SPEdicao.ParamByName('VBCUFDEST').Value      := 0;
         SPEdicao.ParamByName('PFCPUFDEST').Value     := 0;
         SPEdicao.ParamByName('PICMSUFDEST').Value    := 0;
         SPEdicao.ParamByName('PICMSINTER').Value     := 0;
         SPEdicao.ParamByName('PICMSINTERPART').Value := 0;
         SPEdicao.ParamByName('VFCPUFDEST').Value     := 0;
         SPEdicao.ParamByName('VICMSUFDEST').Value    := 0;
         SPEdicao.ParamByName('VICMSUFREMET').Value   := 0;
         SPEdicao.ParamByName('NFCI').Value           := EmptyStr;
         SPEdicao.ExecProc;                              

         PVFK.Next;
       end;

       oCTransact(TEdicao);

       oOTransact(TEvent);
       SPEvent.StoredProcName := 'SP_EVENT';
       SPEvent.Prepare;
       SPEvent.Params[0].AsString := oREPZero('CTR_PED','_',RECParametros.Id,3);
       SPEvent.ExecProc;
       oCTransact(TEvent);
     except
     end;
end;

procedure TFrmCFeSat.FormDestroy(Sender: TObject);
begin
  OnDestroy := Nil;

  try
    Screen.Cursor := crAppStart;

    try
      EEvent.UnRegisterEvents;
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar fechar eventos !'+#13+#13+
                                 'Error Code: '+E.Message+'.'      +#13+
                                  Caption+'.');
      end;
    end;

    try
      oFTransact(TConsulta);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                 'Error Code: '+E.Message+'.'      +#13+
                                  Self.Caption+'.');
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    FrmCFeSat     := Nil;
  end;
end;

procedure TFrmCFeSat.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: RSBSaida.Click;
       vk_return: if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))        then
                  SelectNext (ActiveControl, True, True);
       40       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext (ActiveControl, True, True);
       38       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext(ActiveControl, False, True);
  end;
end;

procedure TFrmCFeSat.RSBCupomClick(Sender: TObject);
          procedure _GERTxt;
          var
            TFTxt: TextFile;
            ARQTxt,
            ARQTxt2: PAnsiChar;
          begin
            ARQTxt  := PAnsiChar(RECParametros.CFE_PATH_PRINCIPAL+'\Txt\'  +EDNumero.Text+'.txt');
            ARQTxt2 := PAnsiChar(RECParametros.CFE_PATH_PRINCIPAL+'\Envia\'+EDNumero.Text+'.txt');
            try
              AssignFile(TFTxt,PChar(ARQTxt));
              Rewrite(TFTxt);

              WriteLN(TFTxt,'formato=tx2');
              WriteLN(TFTxt,'INCLUIR');
              WriteLN(TFTxt,'versaoDadosEnt_A03='+RECParametros.CFE_VER_PROC);
              WriteLN(TFTxt,'CNPJ_B11='+RECParametros.CFE_CNPJ);
              WriteLN(TFTxt,'signAC_B12='+RECParametros.CFE_API_TOKEN);
              WriteLN(TFTxt,'numeroCaixa_B14=123');

              WriteLN(TFTxt,'');
              WriteLN(TFTxt,'CNPJ_C02='+Trim(RECParametros.Cnpj));
              WriteLN(TFTxt,'IE_C12='+Trim(RECParametros.IE));
              WriteLN(TFTxt,'IM_C13=');
              WriteLN(TFTxt,'cRegTribISSQN_C15=');
              WriteLN(TFTxt,'indRatISSQN_C16=N');

              WriteLN(TFTxt,'');
              if Length(EDCPFOUCNPJ.Text) >= 14 then
              begin
                WriteLN(TFTxt,'CNPJ_E02='+EDCPFOUCNPJ.Text);
                WriteLN(TFTxt,'CPF_E03=');
              end else
              begin
                WriteLN(TFTxt,'CNPJ_E02=');
                WriteLN(TFTxt,'CPF_E03='+EDCPFOUCNPJ.Text);
              end;
              WriteLN(TFTxt,'xNome_E04='+EDNome.Text);

              WriteLN(TFTxt,'');
              WriteLN(TFTxt,'xLgr_G02=');
              WriteLN(TFTxt,'nro_G03=');
              WriteLN(TFTxt,'xCpl_G04=');
              WriteLN(TFTxt,'xBairro_G05=');
              WriteLN(TFTxt,'xMun_G06=');
              WriteLN(TFTxt,'UF_G07=');


              PVFK.First;
              while not PVFK.Eof do
              begin
                WriteLN(TFTxt,'');
                WriteLN(TFTxt,'INCLUIRITEM');
                WriteLN(TFTxt,'nItem_H02    = ' + PVFKITEM.AsString);
                WriteLN(TFTxt,'cProd_I02    = ' + PVFKSKU.AsString);
                WriteLN(TFTxt,'cEAN_I03     = ' + PVFKCEAN.AsString);
                WriteLN(TFTxt,'xProd_I04    = ' + PVFKDECP.AsString);
                WriteLN(TFTxt,'NCM_I05      = ' + PVFKNCM.AsString);
                WriteLN(TFTxt,'CFOP_I06     = 5102');
                WriteLN(TFTxt,'uCom_I07     = ' + PVFKUCOM.AsString);
                WriteLN(TFTxt,'qCom_I08     = ' + oTextToValor(PVFKQTDE.AsFloat    ,4,True));
                WriteLN(TFTxt,'vUnCom_I09   = ' + oTextToValor(PVFKVPRC_COM.AsFloat,3,True));
                WriteLN(TFTxt,'indRegra_I11 = A');

                WriteLN(TFTxt,'vDesc_I12 = ' + oTextToValor(PVFKTDSC.AsFloat,2,true));

                WriteLN(TFTxt,'vOutro_I13=');

                WriteLN(TFTxt,'');
                WriteLN(TFTxt,'vItem12741_M02='+oTextToValor(PVFKVITEM12741.AsFloat,2,True));

                WriteLN(TFTxt,'');
                WriteLN(TFTxt,'Orig_N06='+PVFKORIG.AsString);
                WriteLN(TFTxt,'CST_N07=00');
                WriteLN(TFTxt,'pICMS_N08=18.00');

                WriteLN(TFTxt,'');
                WriteLN(TFTxt,'CST_Q07=01');
                WriteLN(TFTxt,'vBC_Q08='+oTextToValor(PVFKTCDE.AsFloat,2,True));
                WriteLN(TFTxt,'pPIS_Q09=0.0065');

                WriteLN(TFTxt,'');
                WriteLN(TFTxt,'CST_S07=01');
                WriteLN(TFTxt,'vBC_S08='+oTextToValor(PVFKTCDE.AsFloat,2,True));
                WriteLN(TFTxt,'pCOFINS_S09=0.0300');

                WriteLN(TFTxt,'');
                WriteLN(TFTxt,'infAdProd_V01=');
                WriteLN(TFTxt,'SALVARITEM');

                PVFK.Next;
              end;

              WriteLN(TFTxt,'');
              WriteLN(TFTxt,'INCLUIRPARTE=PAGAMENTO');
              WriteLN(TFTxt,'cMP_WA03='+IEPagto.Text);
              WriteLN(TFTxt,'vMP_WA04='+oTextToValor(CERecebido.Value,2,True));
              WriteLN(TFTxt,'cAdmC_WA05=');
              WriteLN(TFTxt,'SALVARPARTE=PAGAMENTO');

              WriteLN(TFTxt,'');
              if CEVDESC.Value > 0 then
                 WriteLN(TFTxt,'vDescSubTot_W20='+oTextToValor(CEVDESC.Value,2,True))
              else
                 WriteLN(TFTxt,'vDescSubTot_W20=');

              WriteLN(TFTxt,'vAcresSubtot_W21=');
              WriteLN(TFTxt,'vCFeLei12741_W22='+oTextToValor(PVVITEM12741.AsFloat,2,True));

              WriteLN(TFTxt,'');
              WriteLN(TFTxt,'infCpl_Z02=');
              WriteLN(TFTxt,'SALVAR');
            finally
              CloseFile(TFTxt);
              if FileExists(ARQTxt) then
              begin
                CopyFile(ARQTxt,ARQTxt2,False);
                RSBCupom.Tag := 1;
              end;
            end;
          end;
begin
  ActiveControl := Nil;

  if oEmpty(EDNumero.Text) then
     oException(EDNumero,'Número do Pedido não Informado !');

  if oYesNo(handle,'Imprimir Cupom Fiscal ?') = mrYes then
     _GERTxt;
end;

procedure TFrmCFeSat.RSBSaidaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCFeSat.PVAfterOpen(DataSet: TDataSet);
begin
  if not PVFK.Active then PVFK.Open;

  EDCPFOUCNPJ.Text := IFThen(not oEmpty(PVCPF.AsString),PVCPF.AsString,PVCNPJ.AsString);
  if Length(EDCPFOUCNPJ.Text) >= 14 then
  begin
    LACPFOUCNPJ.Caption  := 'CNPJ';
    EDCPFOUCNPJ.EditMask := '99.999.999/9999-999;0; ';
  end else
  begin
    LACPFOUCNPJ.Caption  := 'CPF';
    EDCPFOUCNPJ.EditMask := '999.999.999-99;0; ';
  end;


  EDNome.Text      := PVDECL.AsString;
  CETSDE.Value     := PVTSDE.AsFloat;
  CETCDE.Value     := PVTCDE.AsFloat;
  CERecebido.Value := PVTCDE.AsFloat;
  CEVDESC.Value    := PVTSDE.AsFloat - PVTCDE.AsFloat;

  if PVDEPG.AsString = 'DINHEIRO' then
  IEPagto.Text := '01' else
  if Pos('CHE',PVDEPG.AsString) > 0 then
  IEPagto.Text := '02' else
  if (Pos('CRE',PVDEPG.AsString) > 0) or (Pos('CRÉ',PVDEPG.AsString) > 0) then
  IEPagto.Text := '03' else
  if (Pos('DEB',PVDEPG.AsString) > 0) or (Pos('DÉB',PVDEPG.AsString) > 0) then
  IEPagto.Text := '04' else
  if (Pos('FUNCIONARIO',PVDEPG.AsString) > 0) or (Pos('FUNCIONÁRIO',PVDEPG.AsString) > 0) then
  IEPagto.Text := '05' else
  IEPagto.Text := '99';
end;

procedure TFrmCFeSat.EDNumeroValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (not oEmpty(EDNumero.Text)) and (PVDEPV.AsString <> EDNumero.Text) then
      _PSQNumero;
end;

procedure TFrmCFeSat.LACPFOUCNPJClick(Sender: TObject);
begin
  if LACPFOUCNPJ.Caption  = 'CPF' then
  begin
    LACPFOUCNPJ.Caption  := 'CNPJ';
    EDCPFOUCNPJ.EditMask := '99.999.999/9999-999;0; ';
    EDCPFOUCNPJ.Text     := PVCNPJ.AsString;
  end else
  begin
    LACPFOUCNPJ.Caption  := 'CPF';
    EDCPFOUCNPJ.EditMask := '999.999.999-99;0; ';
    EDCPFOUCNPJ.Text     := PVCPF.AsString;
  end;
end;

procedure TFrmCFeSat.EDCPFOUCNPJValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if LACPFOUCNPJ.Caption  = 'CPF' then
  begin
    if not oEmpty(EDCPFOUCNPJ.Text) then
    try
      if not oCPF(EDCPFOUCNPJ.Text) then
      raise exception.Create('CPF Incorreto !');
    except
      on E: Exception do
      begin
        EDCPFOUCNPJ.Text := '';
        oException(EDCPFOUCNPJ,E.Message);
      end;
    end;
  end else
  begin
    if not oEmpty(EDCPFOUCNPJ.Text) then
    try
      if not oCNPJ(EDCPFOUCNPJ.Text) then
      raise exception.Create('CNPJ Incorreto !');
    except
      on E: Exception do
      begin
        EDCPFOUCNPJ.Text := '';
        oException(EDCPFOUCNPJ,E.Message);
      end;
    end;
  end;
end;

procedure TFrmCFeSat._VLDNumero;
begin
  try
    if EDNumero.Text = '' then
    raise EBranco.Create('Número do Pedido não Informado !');
  except
    on E: EBranco do
    oException(EDNumero,E.Message);
  end;
end;

procedure TFrmCFeSat._PSQNumero;
begin
  _VLDNumero;
  try
    with PVFK do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   PK.ID  ,PK.ITEM,');
      SQL.Add('         PK.IDCP,CP.ARTIGO,CP.NCM,CP.CEST,CP.EXTIPI,');
      SQL.Add('         CP.SKU ,CP.CEAN,');
      SQL.Add('         PK.DECP,PK.DGCP,CP.UCOM,');
      SQL.Add('         PK.QTDE,PK.QTRL,');
      SQL.Add('         PK.VPRC_PAD,PK.PDSC,PK.TDSC,PK.VPRC_COM,');
      SQL.Add('         PK.TSDE    ,PK.TCDE,');
      SQL.Add('         18 AS PICMS,CAST(PK.TCDE * 0.18 AS NUMERIC(15,2)) AS VICMS,');
      SQL.Add('         TC.NAT_PIPP_SIM AS PPIS   ,CAST(PK.TCDE * 0.0065  AS NUMERIC(15,2)) AS VPIS   ,');
      SQL.Add('         TC.NAT_PIPC_SIM AS PCOFINS,CAST(PK.TCDE * 0.0300  AS NUMERIC(15,2)) AS VCOFINS,');
      SQL.Add('         CAST((PK.TCDE * 41) / 100 AS NUMERIC(15,2))       AS VITEM12741,');
      SQL.Add('         CP.ORIG');
      SQL.Add('FROM '  +SLPrincipal.Values['ped_ven_ite']+' AS PK');
      SQL.Add('JOIN     CAD_PRO AS CP ON (CP.ID       = PK.IDCP )');
      SQL.Add('JOIN     TAB_NAT AS TC ON (TC.NAT_CNAT = ''5102'')');
      SQL.Add('WHERE    PK.IDPK = :ID');
      SQL.Add('ORDER BY ITEM');
      Prepare;
    end;

    with PV do
    begin
      SQL.Clear;
      SQL.Clear;
      SQL.Add('SELECT PK.ID AS ID,PK.ROM_DERO AS DEPV,PK.ROM_DROM AS DTPV,');
      SQL.Add('       PK.ROM_CDNF AS CDNF,PK.ROM_DNFS AS DTNF,');
      SQL.Add('       PK.ROM_CCLI AS IDCL,CL.CLI_FANT AS DECL,CL.CLI_RAZA AS RZCL,CL.CLI_CNPJ AS CNPJ,CL.CLI_CPF AS CPF,CL.CLI_ESTA AS UF,');
      SQL.Add('       PK.ROM_CVEN AS IDCV,CV.LOGIN    AS DECV,PK.ROM_CREP AS IDCR,CR.REP_FANT AS DECR,');
      SQL.Add('       PK.ROM_QTVE AS QTDE,PK.ROM_RLVE AS QTRL,');
      SQL.Add('       PK.ROM_STCO AS STCO,PK.ROM_CONC AS TPCO,PK.ROM_CPAG AS CDPG,TPG.PAG_DPAG AS DEPG,TPG.PAG_PARC AS NUPG,');
      SQL.Add('       PK.ROM_TSDE AS TSDE,PK.ROM_TCDE AS TCDE,');
      SQL.Add('       18 AS PICMS,CAST(PK.ROM_TCDE * 0.18 AS NUMERIC(15,2)) AS VICMS,');
      SQL.Add('       TC.NAT_PIPP_SIM AS PPIS   ,CAST(PK.ROM_TCDE * 0.0065  AS NUMERIC(15,2)) AS VPIS,');
      SQL.Add('       TC.NAT_PIPC_SIM AS PCOFINS,CAST(PK.ROM_TCDE * 0.0300  AS NUMERIC(15,2)) AS VCOFINS,');
      SQL.Add('       CAST((PK.ROM_TCDE * 41) / 100 AS NUMERIC(15,2)) AS VITEM12741,');
      SQL.Add('       PK.ROM_CTRA AS IDCT,PK.ROM_DTRA AS DECT,PK.ROM_MFRT AS MFRT,PK.ROM_PSBR AS PSBR,PK.ROM_PSLQ AS PSLQ');
      SQL.Add('FROM '+SLPrincipal.Values['ped_ven_cab']+' AS PK');
      SQL.Add('JOIN   CAD_CLI  AS CL  ON (CL.ID  = PK.ROM_CCLI)');
      SQL.Add('JOIN   TAB_USER AS CV  ON (CV.ID  = PK.ROM_CVEN)');
      SQL.Add('JOIN   CAD_REP  AS CR  ON (CR.ID  = PK.ROM_CREP)');
      SQL.Add('JOIN   TAB_PAG  AS TPG ON (TPG.ID = PK.ROM_CPAG)');
      SQL.Add('JOIN   TAB_NAT  AS TC  ON (TC.NAT_CNAT = ''5102'')');
      SQL.Add('WHERE  PK.ROM_DERO = '''+EDNumero.Text+'''');
      Open;
    end;
    if (PV.Fields[0].IsNull) and (EDNumero.Text <> '0') then
        raise ENull.Create('Pedido não Encontrado !');
  except
    on E: ENull do
    oException(EDNumero,E.Message);
  end;
end;

procedure TFrmCFeSat.CERecebidoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CETroco.Text := FormatFloat('#,0.00',RoundTO(CERecebido.Value - PVTCDE.AsFloat,-2));
  CETroco.Refresh;

  RSBCupom.Click;
end;

end.
