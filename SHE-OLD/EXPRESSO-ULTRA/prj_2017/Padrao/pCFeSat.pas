unit pCFeSat;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc, math, StrUtils,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, dxDBELib, dxExEdtr, rxSpeedbar,
  IBSQL, cxGraphics, cxControls, dxStatusBar, dxPageControl, dxEditor,
  RXCtrls;

type
  EBranco = class(Exception);
  ENull = class(Exception);
  TFrmCFeSat = class(TForm)
    TCadastro: TIBTransaction;
    QCadastro: TIBQuery;
    PEDVendas: TIBQuery;
    DTSPEDVendas: TDataSource;
    SBRodape: TdxStatusBar;
    GBVenda: TGroupBox;
    LANumero: TLabel;
    EDNumero: TdxMaskEdit;
    EDCPFOUCNPJ: TdxMaskEdit;
    LACPFOUCNPJ: TLabel;
    RSBCupom: TRxSpeedButton;
    RSBSaida: TRxSpeedButton;
    PEDITVendas: TIBQuery;
    DTSPEDVendasIT: TDataSource;
    EDNome: TdxMaskEdit;
    LACliente: TLabel;
    PEDITVendasID: TIntegerField;
    PEDITVendasITEM: TIBStringField;
    PEDITVendasIDPRODUTO: TIntegerField;
    PEDITVendasARTIGO: TIBStringField;
    PEDITVendasCPROD: TIBStringField;
    PEDITVendasCEAN: TIBStringField;
    PEDITVendasNCM: TIBStringField;
    PEDITVendasORIG: TIBStringField;
    PEDITVendasCOR: TIBStringField;
    PEDITVendasXPROD: TIBStringField;
    PEDITVendasUCOM: TIBStringField;
    PEDITVendasQCOM: TIBBCDField;
    PEDITVendasVUNCOM: TFloatField;
    PEDITVendasVPROD: TFloatField;
    PEDITVendasVDESC: TFloatField;
    PEDITVendasVTOTAL: TFloatField;
    PEDITVendasVITEM12741: TFloatField;
    PEDVendasID: TIntegerField;
    PEDVendasPEDIDO: TIBStringField;
    PEDVendasDTPEDIDO: TDateField;
    PEDVendasNOTAFISCAL: TIntegerField;
    PEDVendasDTNOTAFISCAL: TDateField;
    PEDVendasFANTASIA: TIBStringField;
    PEDVendasRAZAOSOCIAL: TIBStringField;
    PEDVendasCNPJ: TIBStringField;
    PEDVendasCPF: TIBStringField;
    PEDVendasVTOTAL: TFloatField;
    PEDVendasVITEM12741: TFloatField;
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
    PEDVendasTSDE: TIBBCDField;
    PEDVendasTCDE: TIBBCDField;
    PEDVendasPAGTO: TIBStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RSBSaidaClick(Sender: TObject);
    procedure RSBCupomClick(Sender: TObject);
    procedure PEDVendasAfterOpen(DataSet: TDataSet);
    procedure LACPFOUCNPJClick(Sender: TObject);
    procedure EDNumeroValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EDCPFOUCNPJValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CERecebidoValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
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

  oOTransact(TCadastro);
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
  Screen.Cursor := crAppStart;
  try oFTransact(TCadastro);
  finally
    Action := caFree;
  end;
end;

procedure TFrmCFeSat.FormDestroy(Sender: TObject);
begin
  FrmCFeSat := Nil;
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
            ARQTxt  := PAnsiChar(RECParametros.CFE_PATH_PRINCIPAL+'Txt\'+EDNumero.Text+'.txt');
            ARQTxt2 := PAnsiChar(RECParametros.CFE_PATH_PRINCIPAL+'Envia\'+EDNumero.Text+'.txt');
            try
              AssignFile(TFTxt,PChar(ARQTxt));
              Rewrite(TFTxt);

              WriteLN(TFTxt,'formato=tx2');
              WriteLN(TFTxt,'INCLUIR');
              WriteLN(TFTxt,'versaoDadosEnt_A03=0.07');
              WriteLN(TFTxt,'CNPJ_B11=03815904000163');
              WriteLN(TFTxt,'signAC_B12='+Trim(RECParametros.CFE_API_TOKEN));
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

              PEDITVendas.First;
              while not PEDITVendas.Eof do
              begin
                WriteLN(TFTxt,'');
                WriteLN(TFTxt,'INCLUIRITEM');
                WriteLN(TFTxt,'nItem_H02=' +IntToStr(PEDITVendasITEM.AsInteger));
                WriteLN(TFTxt,'cProd_I02=' +PEDITVendasCPROD.AsString);
                WriteLN(TFTxt,'cEAN_I03='  +PEDITVendasCEAN.AsString);
                WriteLN(TFTxt,'xProd_I04=' +PEDITVendasXPROD.AsString);
                WriteLN(TFTxt,'NCM_I05='   +PEDITVendasNCM.AsString);
                WriteLN(TFTxt,'CFOP_I06=5102');
                WriteLN(TFTxt,'uCom_I07='  +PEDITVendasUCOM.AsString);
                WriteLN(TFTxt,'qCom_I08='  +oTextToValor(PEDITVendasQCOM.AsFloat,4,True));
                WriteLN(TFTxt,'vUnCom_I09='+oTextToValor(PEDITVendasVUNCOM.AsFloat,3,True));
                WriteLN(TFTxt,'indRegra_I11=A');
                if PEDITVendasVDESC.AsFloat > 0 then
                WriteLN(TFTxt,'vDesc_I12=' +oTextToValor(PEDITVendasVDESC.AsFloat,2,True)) else
                WriteLN(TFTxt,'vDesc_I12=');
                WriteLN(TFTxt,'vOutro_I13=');

                WriteLN(TFTxt,'');
                WriteLN(TFTxt,'vItem12741_M02='+oTextToValor(PEDITVendasVITEM12741.AsFloat,2,True));

                WriteLN(TFTxt,'');
                WriteLN(TFTxt,'Orig_N06='+PEDITVendasORIG.AsString);
                WriteLN(TFTxt,'CST_N07=00');
                WriteLN(TFTxt,'pICMS_N08=18.00');

                WriteLN(TFTxt,'');
                WriteLN(TFTxt,'CST_Q07=01');
                WriteLN(TFTxt,'vBC_Q08='+oTextToValor(PEDITVendasVTOTAL.AsFloat,2,True));
                WriteLN(TFTxt,'pPIS_Q09=0.0065');

                WriteLN(TFTxt,'');
                WriteLN(TFTxt,'CST_S07=01');
                WriteLN(TFTxt,'vBC_S08='+oTextToValor(PEDITVendasVTOTAL.AsFloat,2,True));
                WriteLN(TFTxt,'pCOFINS_S09=0.0003');

                WriteLN(TFTxt,'');
                WriteLN(TFTxt,'infAdProd_V01=');
                WriteLN(TFTxt,'SALVARITEM');

                PEDITVendas.Next;
              end;

              WriteLN(TFTxt,'');
              WriteLN(TFTxt,'INCLUIRPARTE=PAGAMENTO');
              WriteLN(TFTxt,'cMP_WA03='+IEPagto.Text);
              WriteLN(TFTxt,'vMP_WA04='+oTextToValor(CERecebido.Value,2,True));
              WriteLN(TFTxt,'cAdmC_WA05=');
              WriteLN(TFTxt,'SALVARPARTE=PAGAMENTO');

              WriteLN(TFTxt,'');
              WriteLN(TFTxt,'vDescSubTot_W20=');
              WriteLN(TFTxt,'vAcresSubtot_W21=');
              WriteLN(TFTxt,'vCFeLei12741_W22='+oTextToValor(PEDVendasVITEM12741.AsFloat,2,True));

              WriteLN(TFTxt,'');
              WriteLN(TFTxt,'infCpl_Z02=');
              WriteLN(TFTxt,'SALVAR');
            finally
              CloseFile(TFTxt);
              
              if FileExists(ARQTxt) then
              CopyFile(ARQTxt,ARQTxt2,False);
            end;
          end;
begin
  ActiveControl := Nil;

  if oEmpty(EDNumero.Text) then
  oException(EDNumero,'Número do Pedido não Informado !');

  if oYesNo(handle,'Imprimir Cupom Fiscal ?') = mrYes then
  try
    _GERTxt;
  finally
    Close;
  end;
end;

procedure TFrmCFeSat.RSBSaidaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCFeSat.PEDVendasAfterOpen(DataSet: TDataSet);
begin
  if not PEDITVendas.Active then
  PEDITVendas.Open;

  EDCPFOUCNPJ.Text := IFThen(not oEmpty(PEDVendasCPF.AsString),PEDVendasCPF.AsString,PEDVendasCNPJ.AsString);
  if Length(EDCPFOUCNPJ.Text) >= 14 then
  begin
    LACPFOUCNPJ.Caption  := 'CNPJ';
    EDCPFOUCNPJ.EditMask := '99.999.999/9999-999;0; ';
  end else
  begin
    LACPFOUCNPJ.Caption  := 'CPF';
    EDCPFOUCNPJ.EditMask := '999.999.999-99;0; ';
  end;


  EDNome.Text      := PEDVendasFANTASIA.AsString;
  CETSDE.Text      := FormatFloat('#,0.00',PEDVendasTSDE.AsFloat);
  CETCDE.Text      := FormatFloat('#,0.00',PEDVendasTCDE.AsFloat);
  CERecebido.Text  := FormatFloat('#,0.00',PEDVendasTCDE.AsFloat);

  if PEDVendasPAGTO.AsString = 'DINHEIRO' then
  IEPagto.Text := '01' else
  if Pos('CHE',PEDVendasPAGTO.AsString) > 0 then
  IEPagto.Text := '02' else
  if (Pos('CRE',PEDVendasPAGTO.AsString) > 0) or (Pos('CRÉ',PEDVendasPAGTO.AsString) > 0) then
  IEPagto.Text := '03' else
  if (Pos('DEB',PEDVendasPAGTO.AsString) > 0) or (Pos('DÉB',PEDVendasPAGTO.AsString) > 0) then
  IEPagto.Text := '04' else
  if (Pos('FUNCIONARIO',PEDVendasPAGTO.AsString) > 0) or (Pos('FUNCIONÁRIO',PEDVendasPAGTO.AsString) > 0) then
  IEPagto.Text := '05' else
  IEPagto.Text := '99';
end;

procedure TFrmCFeSat.EDNumeroValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (not oEmpty(EDNumero.Text)) and (PEDVendasPEDIDO.AsString <> EDNumero.Text) then
  _PSQNumero;
end;

procedure TFrmCFeSat.LACPFOUCNPJClick(Sender: TObject);
begin
  if LACPFOUCNPJ.Caption  = 'CPF' then
  begin
    LACPFOUCNPJ.Caption  := 'CNPJ';
    EDCPFOUCNPJ.EditMask := '99.999.999/9999-999;0; ';
    EDCPFOUCNPJ.Text     := PEDVendasCNPJ.AsString;
  end else
  begin
    LACPFOUCNPJ.Caption  := 'CPF';
    EDCPFOUCNPJ.EditMask := '999.999.999-99;0; ';
    EDCPFOUCNPJ.Text     := PEDVendasCPF.AsString;
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
    with PEDITVendas do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PEDIT.ID AS ID,PEDIT.ROM_ITEM AS ITEM,PRO.ID AS IDPRODUTO,PRO.PRO_CART AS ARTIGO,PRO.PRO_CPRO AS CPROD,');
      SQL.Add('         PRO.PRO_CBAR AS CEAN,PRO.PRO_CCLF AS NCM,PRO.PRO_CCST AS ORIG,');
      SQL.Add('         PEDIT.ROM_DCOR AS COR,PEDIT.ROM_DPRO XPROD,PRO.PRO_DUNI AS UCOM,');
      SQL.Add('         PEDIT.ROM_QTDE AS QCOM,PEDIT.ROM_PREC AS VUNCOM,Round(PEDIT.ROM_QTDE*PEDIT.ROM_PREC,2) AS VPROD,');
      SQL.Add('         Round((PEDIT.ROM_QTDE*PEDIT.ROM_PREC)  -(PEDIT.ROM_QTDE*PEDIT.ROM_UNIT),2) AS VDESC,');
      SQL.Add('         Round((PEDIT.ROM_QTDE*PEDIT.ROM_PREC)  -((PEDIT.ROM_QTDE*PEDIT.ROM_PREC)-(PEDIT.ROM_QTDE*PEDIT.ROM_UNIT)),2) AS VTOTAL,');
      SQL.Add('         Round((((PEDIT.ROM_QTDE*PEDIT.ROM_PREC)-((PEDIT.ROM_QTDE*PEDIT.ROM_PREC)-(PEDIT.ROM_QTDE*PEDIT.ROM_UNIT)))*41)/100,2) AS VITEM12741');
      SQL.Add('FROM   '+SLPrincipal.Values['ped_ven_ite']+' AS PEDIT');
      SQL.Add('JOIN     CAD_PRO AS PRO ON (PRO.ID = PEDIT.ROM_CPRO)');
      SQL.Add('WHERE    PEDIT.ROM_CCAB = :ID');
      SQL.Add('ORDER BY ITEM');
      Prepare;
    end;
    with PEDVendas do
    begin
      SQL.Clear;
      SQL.Add('SELECT PED.ID AS ID,PED.ROM_DERO AS PEDIDO,PED.ROM_DROM AS DTPEDIDO,PED.ROM_CDNF AS NOTAFISCAL,PED.ROM_DNFS AS DTNOTAFISCAL,PED.ROM_TSDE AS TSDE,PED.ROM_TCDE AS TCDE,PED.ROM_STCO AS PAGTO,');
      SQL.Add('       CLI.CLI_FANT AS FANTASIA,CLI.CLI_RAZA AS RAZAOSOCIAL,CLI.CLI_CNPJ AS CNPJ,CLI.CLI_CPF AS CPF,');
      SQL.Add('       (SELECT SUM(Round((PEDIT.ROM_QTDE*PEDIT.ROM_PREC)-((PEDIT.ROM_QTDE*PEDIT.ROM_PREC)-(PEDIT.ROM_QTDE*PEDIT.ROM_UNIT)),2))            FROM '+SLPrincipal.Values['ped_ven_ite']+' AS PEDIT WHERE ROM_CCAB = PED.ID) AS VTOTAL,');
      SQL.Add('       (SELECT SUM(Round((((PEDIT.ROM_QTDE*PEDIT.ROM_PREC)-((PEDIT.ROM_QTDE*PEDIT.ROM_PREC)-(PEDIT.ROM_QTDE*PEDIT.ROM_UNIT)))*41)/100,2)) FROM '+SLPrincipal.Values['ped_ven_ite']+' AS PEDIT WHERE ROM_CCAB = PED.ID) AS VITEM12741');
      SQL.Add('FROM '+SLPrincipal.Values['ped_ven_cab']+' AS PED');
      SQL.Add('JOIN   CAD_CLI AS CLI ON (CLI.ID = PED.ROM_CCLI)');
      SQL.Add('WHERE  ROM_DERO = '''+EDNumero.Text+'''');
      Prepare;
      Open;
    end;
    if (PEDVendas.Fields[0].IsNull) and (EDNumero.Text <> '0') then
    raise ENull.Create('Pedido não Encontrado !');
  except
    on E: ENull do
    oException(EDNumero,E.Message);
  end;
end;

procedure TFrmCFeSat.CERecebidoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CETroco.Text := FormatFloat('#,0.00',RoundTO(CERecebido.Value - PEDVendasTCDE.AsFloat,-2));
  CETroco.Refresh;

  RSBCupom.Click;
end;

end.
