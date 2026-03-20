unit pNFeSaida;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefaultEdicao, cxGraphics, dxsbar, ActnList, dxDockControl,
  dxBar, dxBarExtItems, ImgList, IBEvents, IBStoredProc, DB,
  IBCustomDataSet, IBQuery, IBSQL, IBDatabase, dxDockPanel, ExtCtrls,
  dxPageControl, cxControls, dxStatusBar, StdCtrls, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, math,StrUtils;

type
  TFrmNFeSaida = class(TFrmDefaultEdicao)
    BLBHistorico: TdxBarLargeButton;
    ACTHistorico: TAction;
    GBCEAN: TGroupBox;
    EDCEAN: TdxMaskEdit;
    PNLEdicao: TPanel;
    LACDNF: TLabel;
    LADTSA: TLabel;
    LAMotorista: TLabel;
    LACarro: TLabel;
    LAModelo: TLabel;
    LATipo: TLabel;
    LAAjudante1: TLabel;
    LAAjudante2: TLabel;
    CECDNF: TdxCurrencyEdit;
    TEHRSA: TdxTimeEdit;
    DEDTSA: TdxDateEdit;
    PNLConsulta: TPanel;
    LALCDPV: TLabel;
    LADCDPV: TLabel;
    LALDTPV: TLabel;
    LADDTPV: TLabel;
    LALFavorecido: TLabel;
    LADFavorecido: TLabel;
    LALVendedor: TLabel;
    LADVendedor: TLabel;
    LALRepresentante: TLabel;
    LADRepresentante: TLabel;
    LALVNF: TLabel;
    LADVNF: TLabel;
    LALTransportadora: TLabel;
    LADTransportadora: TLabel;
    LALVolume: TLabel;
    LADVolume: TLabel;
    LALPesoB: TLabel;
    LADPesoB: TLabel;
    LADPesoL: TLabel;
    LALPesoL: TLabel;
    LADPCPV: TLabel;
    LALPCPV: TLabel;
    LADSPPV: TLabel;
    LALSPPV: TLabel;
    LALDTEM: TLabel;
    LADDTEM: TLabel;
    PNLEmpresa: TPanel;
    LAEmpresa: TLabel;
    GBInfAd: TGroupBox;
    EMInfAd: TdxMemo;
    PEPlaca: TdxPickEdit;
    PEMotorista: TdxPickEdit;
    IETIPO: TdxImageEdit;
    PEAjudante1: TdxPickEdit;
    PEAjudante2: TdxPickEdit;
    EDCFRT: TdxMaskEdit;
    Label4: TLabel;
    procedure CECDNFValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure ACTValidaExecute(Sender: TObject);
    procedure ACTHistoricoExecute(Sender: TObject);
    procedure PEMotoristaExit(Sender: TObject);
    procedure EDCEANChange(Sender: TObject);
    procedure EDCEANKeyPress(Sender: TObject; var Key: Char);
    procedure PEAjudante2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure _Pesquisa(ATexto: String);
  public
    { Public declarations }
  end;

var
  FrmNFeSaida: TFrmNFeSaida;

implementation

uses pNFeSaidaConsulta;

{$R *.dfm}

procedure TFrmNFeSaida.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := ''; { Eventos }

  { Grant }
  REC_SHE_DEF.GAdmin := True;
  inherited;

  try
    oOTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT NAT_TIPO FROM TAB_NAT GROUP BY 1 ORDER BY 1');
      ExecQuery;
      while not Eof do
      begin
        IETipo.Values.Add(Current.Vars[0].AsString);
        IETipo.Descriptions.Add(Current.Vars[0].AsString);
        Next;
      end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.MOTORISTA FROM NFE_LOG AS PK WHERE PK.MOTORISTA IS NOT NULL GROUP BY 1 ORDER BY 1');
    ExecQuery;
    while not Eof do
    begin
      PEMotorista.Items.Add(Current.Vars[0].AsString);
      Next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.AJUDANTE1 FROM NFE_LOG AS PK WHERE PK.AJUDANTE1 IS NOT NULL GROUP BY 1');
    SQL.Add('UNION');
    SQL.Add('SELECT PK.AJUDANTE2 FROM NFE_LOG AS PK WHERE PK.AJUDANTE2 IS NOT NULL GROUP BY 1');
    SQL.Add('UNION');
    SQL.Add('SELECT PK.AJUDANTE3 FROM NFE_LOG AS PK WHERE PK.AJUDANTE3 IS NOT NULL GROUP BY 1');
    SQL.Add('UNION');
    SQL.Add('SELECT PK.AJUDANTE4 FROM NFE_LOG AS PK WHERE PK.AJUDANTE4 IS NOT NULL GROUP BY 1');
    SQL.Add('UNION');
    SQL.Add('SELECT PK.AJUDANTE5 FROM NFE_LOG AS PK WHERE PK.AJUDANTE5 IS NOT NULL GROUP BY 1');
    SQL.Add('ORDER BY 1');

    ExecQuery;
    while not Eof do
    begin
      PEAjudante1.Items.Add(Current.Vars[0].AsString);
      PEAjudante2.Items.Add(Current.Vars[0].AsString);
      Next;
    end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT REFERENCIA FROM TAB_VEI ORDER BY 1');
      ExecQuery;
      while not Eof do
      begin
        PEPlaca.Items.Add(Current.Vars[0].AsString);
        Next;
      end;
    end;
  finally
    oCTransact(TConsulta);
  end;    
end;

procedure TFrmNFeSaida.CECDNFValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  _Pesquisa(CECDNF.Text);
end;

procedure TFrmNFeSaida.ACTValidaExecute(Sender: TObject);
begin
  inherited;
  if CECDNF.Value = 0 then
     Abort;

  if oYesNo(handle,'Confirma Lançamento ?') = mrNo then
     Abort;

  if oEmpty(IETipo.Text) then
     oException(IETipo,'Tipo da Nota Fiscal não Informado !');
        
  with SQLEdicao do
  try
    oOTransact(TEdicao);

    Close;
    SQL.Clear;
    SQL.Add('UPDATE '+oREPZero('PED_VEN_CAB','_',LAEmpresa.Tag,3));
    SQL.Add('SET     IDSA = '''+RECUsuarios.Id   +''',');
    SQL.Add('        DESA = '''+RECUsuarios.Login+''',');
    SQL.Add('        CFRT = '''+EDCFRT.Text+'''');
    SQL.Add('WHERE   CDNF = '''+CECDNF.Text+'''');
    ExecQuery;

    Close;
    SQL.Clear;
    SQL.Add('UPDATE '+oREPZero('ROM_CAB','_',LAEmpresa.Tag,3));
    SQL.Add('SET     IDSA = '''+RECUsuarios.Id   +''',');
    SQL.Add('        DESA = '''+RECUsuarios.Login+''',');
    SQL.Add('        CFRT = '''+EDCFRT.Text+'''');
    SQL.Add('WHERE   CDNF = '''+CECDNF.Text+'''');
    ExecQuery;

    Close;
    SQL.Clear;
    SQL.Add('UPDATE '+oREPZero('NFE_CAB','_',LAEmpresa.Tag,3));
    SQL.Add('SET     IDSA     = '''+RECUsuarios.Id                      +''',');
    SQL.Add('        DTSA     = '''+FormatDateTime('mm/dd/yy hh:mm',Now)+''',');
    SQL.Add('        CFRT     = '''+EDCFRT.Text+'''');
    SQL.Add('WHERE   NFE_CDNF = '''+CECDNF.Text+'''');
    ExecQuery;

    Close;
    SQL.Clear;
    SQL.Add('UPDATE OR INSERT');
    SQL.Add('INTO NFE_LOG (IDEP,CDNF,DTEM,DTSA,TIPO,DESTINATARIO,VENDEDOR,REPRESENTANTE,IDCT,TRANSPORTADORA,CFRT,');
    SQL.Add('     MOTORISTA,AJUDANTE1,AJUDANTE2,PLACA,VOLUME,PESOB,PESOL,PEDIDO,DTPV,QTPC,SEPARADOR,CONFERENTE,INFAD)');
    SQL.Add('VALUES (');
    SQL.Add(''''+IntToStr(LAEmpresa.Tag)+''',');
    SQL.Add(''''+CECDNF.Text            +''',');
    SQL.Add(''''+FormatDateTime('mm/dd/yy',StrToDate(LADDTEM.Caption))   +''',');
    SQL.Add(''''+FormatDateTime('mm/dd/yy hh:mm',DEDTSA.Date+TEHRSA.Time)+''',');
    SQL.Add(''''+IETipo.Text+''',');
    SQL.Add(''''+StringReplace(oREPApostrofos(LADFavorecido.Caption),Char(39),'',[rfReplaceAll])+''',');
    SQL.Add(''''+LADVendedor.Caption      +''',');
    SQL.Add(''''+LADRepresentante.Caption +''',');
    SQL.Add(''''+IntToStr(LADTransportadora.Tag)+''',');
    SQL.Add(''''+LADTransportadora.Caption+''',');
    SQL.Add(''''+EDCFRT.Text      +''',');
    SQL.Add(''''+PEMotorista.Text +''',');
    SQL.Add(''''+PEAjudante1.Text +''',');
    SQL.Add(''''+PEAjudante2.Text +''',');
    SQL.Add(''''+PEPlaca.Text     +''',');
    SQL.Add(''''+LADVolume.Caption+''',');
    SQL.Add(''''+oStrTran(oTrimValor(LADpesoB.Caption),',','.')+''',');
    SQL.Add(''''+oStrTran(oTrimValor(LADpesoL.Caption),',','.')+''',');
    SQL.Add(''''+LADCDPV.Caption  +''',');

    if oEmpty(LADDTPV.Caption) then
       SQL.Add('NULL,')
    else
       SQL.Add(''''+FormatDateTime('mm/dd/yy',StrToDate(LADDTPV.Caption))+''',');

    SQL.Add(''''+LADPCPV.Caption  +''',');
    SQL.Add(''''+LADSPPV.Caption  +''',');
    SQL.Add(''''+RECUsuarios.Login+''',');
    SQL.Add(''''+EMInfAd.Text     +'''' );
    SQL.Add(')');
    SQL.Add('MATCHING (IDEP,CDNF,TIPO)');
    ExecQuery;

    if not oEmpty(PEPlaca.Text) then
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE OR INSERT');
      SQL.Add('INTO TAB_VEI (REFERENCIA)');
      SQL.Add('VALUES (');
      SQL.Add(''''+PEPLACA.Text+'''');
      SQL.Add(')');
      SQL.Add('MATCHING (REFERENCIA)');
      ExecQuery;
    end;
    
    oCTransact(TEdicao);

    CECDNF.Value     := 0;
    DEDTSA.Text      := '';
    TEHRSA.Text      := '';
    PEMotorista.Text := '';
    PEPlaca.Text     := '';
    IETipo.Text      := '';
    EMInfAd.Lines.Clear;

    PNLConsulta.Visible := False;
    LAModelo.Visible    := False;

    EDCEAN.SetFocus;
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(cecdnf,'Falha ao tentar validar nota fiscal !'+#13+
                        'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                        'Erro: '+E.Message);
    end;
  end;
end;

procedure TFrmNFeSaida.ACTHistoricoExecute(Sender: TObject);
begin
  TFrmNFeSaidaConsulta._ExecForm(Self,FrmNFeSaidaConsulta);
end;

procedure TFrmNFeSaida.PEMotoristaExit(Sender: TObject);
  var
    Ctrl: TWinControl;
begin
  if not oEmpty(PEMotorista.Text) then
  try
    oOTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   FIRST 1 PLACA FROM NFE_LOG');
      SQL.Add('WHERE    MOTORISTA = '''+PEMotorista.Text+'''');
      SQL.Add('ORDER BY DTCA DESC');
      ExecQuery;
      PEPlaca.Text := Current.Vars[0].AsString;
    end;
  finally
    oCTransact(TConsulta);

    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure TFrmNFeSaida.EDCEANChange(Sender: TObject);
begin
  if Length(EDCEAN.Text) = 44 then
     _Pesquisa(EDCEAN.Text);
end;

procedure TFrmNFeSaida._Pesquisa(ATexto: String);
  var i: Word;
begin
  try
    oOTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      for i := 1 to 9 do
      begin
        SQL.Add('SELECT PS.ID AS IDEP,PS.FANTASIA AS EMPRESA,PK.ID,PK.NFE_CDNF AS CDNF,PK.NFE_DEMI AS DTEM,');
        SQL.Add('       IIF(PK.NFE_CLFO = 0,(SELECT CLI_RAZA FROM CAD_CLI WHERE ID = PK.NFE_CFAV),(SELECT FOR_RAZA FROM CAD_FOR WHERE ID = PK.NFE_CFAV)) AS FAVORECIDO,');
        SQL.Add('       PK.NFE_DVEN AS VENDEDOR,PK.NFE_DREP AS REPRESENTANTE,');
        SQL.Add('       PK.NFE_VNF AS VNF,PK.NFE_CHAV AS CHAV,');
        SQL.Add('       PK.NFE_CTRA AS IDCT,PK.NFE_DTRA AS TRANSPORTADORA,PK.CFRT,');
        SQL.Add('       FK.NFE_QVOL||'' ''||FK.NFE_ESP AS VOLUME,FK.NFE_PSBR AS PESOB,FK.NFE_PSLQ AS PESOL,');
        SQL.Add('       PV.ID AS IDPV,PV.ROM_DERO AS CDPV,PV.ROM_DROM AS DTPV,');
        SQL.Add('       TN.NAT_TIPO AS TIPO');
        SQL.Add('FROM '+oREPZero('NFE_CAB','_',i,3)+' AS PK');
        SQL.Add('JOIN   TAB_NAT AS TN ON (TN.NAT_CNAT = PK.NFE_CNAT)');
        SQL.Add('JOIN '+oREPZero('NFE_TRA','_',i,3)+' AS FK ON (FK.NFE_CCAB = PK.ID)');
        SQL.Add('LEFT');
        SQL.Add('JOIN '+oREPZero('PED_VEN_CAB','_',i,3)+' AS PV ON (PV.ROM_CDNF = PK.NFE_CDNF)');
        SQL.Add('JOIN   TAB_PAR_SIS AS PS ON (PS.ID = '''+IntToStr(i)+''')');
        if Length(ATexto) = 44 then
           SQL.Add('WHERE PK.NFE_CHAV = '''+ATexto+'''')
        else
           SQL.Add('WHERE PK.NFE_CDNF = '''+ATexto+'''');
        SQL.Add('AND PK.NFE_CNPJREF = '''+RECParametros.Cnpj+'''');
        if i < 9 then
        SQL.Add('UNION');
      end;
      ExecQuery;

      PNLConsulta.Visible := (not Eof);
      LAModelo.Visible    := (not Eof);

      if not Eof then
      begin
        DEDTSA.Date := Date;
        TEHRSA.Time := Time;

        CECDNF.Value              :=  Current.ByName('CDNF').AsInteger;
        LAEmpresa.Tag             :=  Current.ByName('IDEP').AsInteger;
        LAEmpresa.Caption         :=  Current.ByName('EMPRESA').AsString;
        LADDTEM.Caption           :=  IFThen(Current.ByName('DTEM').AsDateTime > 0,Current.ByName('DTEM').AsString,'');
        LADCDPV.Tag               :=  Current.ByName('IDPV').AsInteger;
        LADCDPV.Caption           :=  Current.ByName('CDPV').AsString;
        LADDTPV.Caption           :=  IFThen(Current.ByName('DTPV').AsDateTime > 0,Current.ByName('DTPV').AsString,'');
        LADFavorecido.Caption     :=  Current.ByName('FAVORECIDO').AsString;
        LADVendedor.Caption       :=  Current.ByName('VENDEDOR').AsString;
        LADRepresentante.Caption  :=  Current.ByName('REPRESENTANTE').AsString;
        LADVNF.Caption            :=  FormatFloat('R$ #,0.00',Current.ByName('VNF').AsFloat);
        LADTransportadora.Tag     :=  Current.ByName('IDCT').AsInteger;
        LADTransportadora.Caption :=  Current.ByName('TRANSPORTADORA').AsString;
        EDCFRT.Text               :=  Current.ByName('CFRT').AsString;
        EDCFRT.Enabled            := (Current.ByName('CFRT').AsString = EmptyStr);
        LADVolume.Caption         :=  Current.ByName('VOLUME').AsString;
        LADPesoB.Caption          :=  FormatFloat('#,0.00',Current.ByName('PESOB').AsFloat);
        LADPesoL.Caption          :=  FormatFloat('#,0.00',Current.ByName('PESOL').AsFloat);
        IETipo.Text               :=  Current.ByName('TIPO').AsString;

        Close;
        SQL.Clear;
        SQL.Add('SELECT COUNT(*),MAX(ROM_DSEP) FROM '+oREPZero('ROM_ITE','_',LAEmpresa.Tag,3));
        SQL.Add('WHERE  ROM_CDPD = '''+IntToStr(LADCDPV.Tag)+'''');
        ExecQuery;
        LADPCPV.Caption := IntToStr(Current.Vars[0].AsInteger);
        LADSPPV.Caption := Current.Vars[1].AsString;

        PEMotorista.SetFocus;
      end else
      begin
        DEDTSA.Text := '';
        TEHRSA.Text := '';
        EDCEAN.Text := '';

        oException(CECDNF,'Nota Fiscal não Encontrada !');
      end;
    end;
    EDCEAN.Text := EmptyStr;
  finally
    oCTransact(TConsulta);
  end;
end;

procedure TFrmNFeSaida.EDCEANKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9']) then key := #0;
end;

procedure TFrmNFeSaida.PEAjudante2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
     ACTValida.Execute;
end;

end.
