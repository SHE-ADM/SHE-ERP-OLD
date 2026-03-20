unit pPesquisa;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math, StrUtils, rxSpeedbar,
  cxGraphics, cxControls, dxStatusBar;

type
  TFrmPesquisa = class(TForm)
    SBMenu: TSpeedBar;
    SSPrincipal: TSpeedbarSection;
    SIMValida: TSpeedItem;
    SIMSaida: TSpeedItem;
    PNLPrincipal: TPanel;
    Label11: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EDTXT: TdxMaskEdit;
    DEDTPK: TdxDateEdit;
    DEDTFK: TdxDateEdit;
    EDTXT2: TdxMaskEdit;
    IECampo2: TdxImageEdit;
    IECampo: TdxImageEdit;
    ILMenu: TImageList;
    IEDATA: TdxImageEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDTXTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure EDTXTKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SIMValidaClick(Sender: TObject);
    procedure SIMSaidaClick(Sender: TObject);
    procedure DEDTPKChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DEDTPKKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure EDTXT2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDTXT2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Editado: Boolean;
    cPesquisaWhere ,cPesquisaLike,
    cPesquisaWhere2,cPesquisaLike2: String;
  end;

var
  FrmPesquisa: TFrmPesquisa;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TFrmPesquisa.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
end;

procedure TFrmPesquisa.FormShow(Sender: TObject);
begin
  case tag of
    1: begin
         { PESQUISA PRINCIPAL CLIENTES }
         IECAMPO.Descriptions.Add('Código Cliente');
         IECAMPO.Values.Add('PK.CD_ID');
         IECAMPO.Descriptions.Add('Nome Fantasia');
         IECAMPO.Values.Add('PK.CD_NO');
         IECAMPO.Descriptions.Add('Razão Social');
         IECAMPO.Values.Add('PK.CD_RZ_NO');
         IECAMPO.Descriptions.Add('Grupo Comercial');
         IECAMPO.Values.Add('PK.CD_GP_NO');
         IECAMPO.Descriptions.Add('CNPJ');
         IECAMPO.Values.Add('PK.CNPJ');
         IECAMPO.Descriptions.Add('Inscrição Estadual');
         IECAMPO.Values.Add('PK.IE');
         IECAMPO.Descriptions.Add('CPF');
         IECAMPO.Values.Add('PK.CPF');
         IECAMPO.Descriptions.Add('Situação Cadastral');
         IECAMPO.Values.Add('PK.DEST');
         IECAMPO.Descriptions.Add('');
         IECAMPO.Values.Add('');

         { VENDEDORES }
         IECAMPO.Descriptions.Add('Vendedor');
         IECAMPO.Values.Add('PK.CV_NO');

         { REPRESENTANRES }
         IECAMPO.Descriptions.Add('Representante');
         IECAMPO.Values.Add('PK.CR_NO');

         { TRANSPORTADORAS }
         IECAMPO.Descriptions.Add('Transportadora');
         IECAMPO.Values.Add('PK.CT_NO');
         IECAMPO.Descriptions.Add('');
         IECAMPO.Values.Add('');

         { ENDEREÇOS }
         IECAMPO.Descriptions.Add('Logradouro');
         IECAMPO.Values.Add('PK.LOG_NO_ABREV');
         IECAMPO.Descriptions.Add('Cep');
         IECAMPO.Values.Add('PK.CEP');
         IECAMPO.Descriptions.Add('Bairro');
         IECAMPO.Values.Add('PK.BAI_NO_ABREV');
         IECAMPO.Descriptions.Add('Cidade');
         IECAMPO.Values.Add('PK.LOC_NO_ABREV');
         IECAMPO.Descriptions.Add('UF');
         IECAMPO.Values.Add('PK.UF');

         { DEFAULT }
         APSQ_CAD_PAD := IFThen(APSQ_CAD_PAD = '','PK.CD_NO',APSQ_CAD_PAD);
         IECAMPO.Text := APSQ_CAD_PAD;

         IECAMPO.HelpKeyword := 'Código Cliente'; { Campo Numérico }
         IECAMPO.Hint := 'Nome Fantasia'; { Campo Texto }

         { PESQUISA ADICIONAL CLIENTES }
         { PEDIDOS }
         IECAMPO2.Descriptions.Add('Nº Pedido');
         IECAMPO2.Values.Add('PED.DEPK');
         IECAMPO2.Descriptions.Add('Nº Romaneio');
         IECAMPO2.Values.Add('PED.CDRO');
         IECAMPO2.Descriptions.Add('Tipo Pedido');
         IECAMPO2.Values.Add('PED.STPD');
         IECAMPO2.Descriptions.Add('Situação Pedido');
         IECAMPO2.Values.Add('PED.DEST');
         IECAMPO2.Descriptions.Add('');
         IECAMPO2.Values.Add('');

         { FISCAL }
         IECAMPO2.Descriptions.Add('Nº Nota Fiscal');
         IECAMPO2.Values.Add('FIS.CDNF');
         IECAMPO2.Descriptions.Add('Situação Nota Fiscal');
         IECAMPO2.Values.Add('FIS.DEST');
         IECAMPO2.Descriptions.Add('');
         IECAMPO2.Values.Add('');

         { FINANCEIRO }
         IECAMPO2.Descriptions.Add('Nº Título');
         IECAMPO2.Values.Add('FIN.TITULO');
         IECAMPO2.Descriptions.Add('Situação Financeira');
         IECAMPO2.Values.Add('FIN.DEST');
         IECAMPO2.Descriptions.Add('Situação Bancária');
         IECAMPO2.Values.Add('PK.API_ST');
         IECAMPO2.Descriptions.Add('');
         IECAMPO2.Values.Add('');

         { DEFAULT }
         APSQ_CAD_ADC  := IFThen(APSQ_CAD_ADC = '','PED.DEPK',APSQ_CAD_ADC);
         IECAMPO2.Text := APSQ_CAD_ADC;

         { PESQUISA PERÍODO }
         { CADASTRO }
         IEDATA.Descriptions.Add('Criação de Cadastro');
         IEDATA.Values.Add('CAST(PK.DTCA AS DATE)');
         IEDATA.Descriptions.Add('Cancelamento de Cadastro');
         IEDATA.Values.Add('CAST(PK.DTST AS DATE)');

         { PEDIDOS }
         IEDATA.Descriptions.Add('Emissão de Pedido');
         IEDATA.Values.Add('CAST(PED.DTCA AS DATE)');
         IEDATA.Descriptions.Add('Pedido Faturado' );
         IEDATA.Values.Add('CAST(PED.DTBX AS DATE)');

         IEDATA.Descriptions.Add('Emissão de Notas Fiscal');
         IEDATA.Values.Add('CAST(PED.DTNF AS DATE)');
         IEDATA.Descriptions.Add('Saída de Notas Fiscal');
         IEDATA.Values.Add('CAST(PED.DTSA AS DATE)');

         { DEFAULT }
         APSQ_CAD_PRD := IFThen(APSQ_CAD_PRD = '','CAST(PK.DTCA AS DATE)',APSQ_CAD_PRD);
         IEDATA.Text  := APSQ_CAD_PRD;
       end;

    7: begin { Vendas }
         { PESQUISA PRINCIPAL VENDAS }
         IECAMPO.Descriptions.Add('Nº Pedido');
         IECAMPO.Values.Add('PK.DEPK');
         IECAMPO.Descriptions.Add('Nº Romaneio');
         IECAMPO.Values.Add('PK.CDRO');
         IECAMPO.Descriptions.Add('Nº Nota Fiscal');
         IECAMPO.Values.Add('PK.CDNF');
         IECAMPO.Descriptions.Add('Nº Container');
         IECAMPO.Values.Add('PK.CTNR');
         IECAMPO.Descriptions.Add('');
         IECAMPO.Values.Add('');

         { CLIENTES }
         IECAMPO.Descriptions.Add('Código Cliente');
         IECAMPO.Values.Add('PK.IDCD');
         IECAMPO.Descriptions.Add('Nome Fantasia');
         IECAMPO.Values.Add('PK.DECD');
         IECAMPO.Descriptions.Add('Razão Social');
         IECAMPO.Values.Add('PK.RZCD');
         IECAMPO.Descriptions.Add('CNPJ');
         IECAMPO.Values.Add('PK.PJCD');
         IECAMPO.Descriptions.Add('CPF');
         IECAMPO.Values.Add('PK.PFCD');
         IECAMPO.Descriptions.Add('');
         IECAMPO.Values.Add('');

         { VENDEDORES }
         IECAMPO.Descriptions.Add('Vendedor');
         IECAMPO.Values.Add('PK.DECV');

         { REPRESENTANRES }
         IECAMPO.Descriptions.Add('Representante');
         IECAMPO.Values.Add('PK.DECR');

         { TRANSPORTADORAS }
         IECAMPO.Descriptions.Add('Transportadora');
         IECAMPO.Values.Add('PK.DECT');

         { SEPARADORES }
         IECAMPO.Descriptions.Add('Separador');
         IECAMPO.Values.Add('PK.DESP');

         { DEFAULT }
         APSQ_PDV_PAD := IFThen(APSQ_PDV_PAD = '','PK.DEPK',APSQ_PDV_PAD);
         IECAMPO.Text := APSQ_PDV_PAD;

         IECAMPO.HelpKeyword := 'Código Cliente'; { Campo Numérico }
         IECAMPO.Hint := 'Nome Fantasia'; { Campo Texto }

         { PESQUISA ADICIONAL VENDAS }
         IECAMPO2.Descriptions.Add('Situação do Pedido');
         IECAMPO2.Values.Add('PK.DEST');
         IECAMPO2.Descriptions.Add('Tipo de Pedido');
         IECAMPO2.Values.Add('PK.STPD');
         IECAMPO2.Descriptions.Add('Tipo de Cobrança');
         IECAMPO2.Values.Add('PK.STCO');
         IECAMPO2.Descriptions.Add('Prazo de Vencimento');
         IECAMPO2.Values.Add('PK.DEPG');
         IECAMPO2.Descriptions.Add('');
         IECAMPO2.Values.Add('');

         { FINANCEIRO }
         IECAMPO2.Descriptions.Add('Nº Título');
         IECAMPO2.Values.Add('FIN.TITULO');
         IECAMPO2.Descriptions.Add('Situação Financeira');
         IECAMPO2.Values.Add('FIN.STFI');
         IECAMPO2.Descriptions.Add('Situação Bancária');
         IECAMPO2.Values.Add('PK.API_ST');
         IECAMPO2.Descriptions.Add('');
         IECAMPO2.Values.Add('');

         { DEFAULT }
         APSQ_PDV_ADC  := IFThen(APSQ_PDV_ADC = '','PK.DEST',APSQ_PDV_ADC);
         IECAMPO2.Text := APSQ_PDV_ADC;

         { PESQUISA PERÍODO }
         IEDATA.Descriptions.Add('Emissão de Pedido');
         IEDATA.Values.Add('PK.DTPK');
         IEDATA.Descriptions.Add('Emissão de Romaneio');
         IEDATA.Values.Add('PK.DTRO');
         IEDATA.Descriptions.Add('Emissão de Nota Fiscal');
         IEDATA.Values.Add('PK.DTNF');
         IEDATA.Descriptions.Add('Saída de Nota Fiscal');
         IEDATA.Values.Add('PK.DTSA');
         IEDATA.Descriptions.Add('Separação');
         IEDATA.Values.Add('PK.DTSP');
         IEDATA.Descriptions.Add('Faturamento');
         IEDATA.Values.Add('PK.DTBX');

         { DEFAULT }
         APSQ_PDV_PRD := IFThen(APSQ_PDV_PRD = '','PK.DTPK',APSQ_PDV_PRD);
         IEDATA.Text  := APSQ_PDV_PRD;
       end;
   10: begin { Financeiro }
         IECampo.Descriptions.Add('Título');
         IECampo.Values.Add('PK.TITULO');
         IECAMPO.Descriptions.Add('Nº Carteira');
         IECampo.Values.Add('PK.API_CA');
         IECAMPO.Descriptions.Add('Nº Pedido');
         IECampo.Values.Add('FK.DEPK');
         IECAMPO.Descriptions.Add('Nº Nota Fiscal');
         IECampo.Values.Add('FK.CDNF');
         IECAMPO.Descriptions.Add('Nº Container');
         IECampo.Values.Add('PK.CTNR');
         IECAMPO.Descriptions.Add('');
         IECampo.Values.Add('');

         IECampo.Descriptions.Add('Código Cliente');
         IECampo.Values.Add('PK.IDCD');
         IECampo.Descriptions.Add('Nome Fantasia');
         IECampo.Values.Add('PK.DECD');
         IECampo.Descriptions.Add('Razão Social');
         IECampo.Values.Add('PK.RZCD');
         IECampo.Descriptions.Add('Grupo Comercial');
         IECampo.Values.Add('PK.GRUPO');
         IECampo.Descriptions.Add('CNPJ');
         IECampo.Values.Add('PK.CNPJ');
         IECampo.Descriptions.Add('CPF');
         IECampo.Values.Add('PK.CPF');
         IECampo.Descriptions.Add('');
         IECampo.Values.Add('');

         IECampo.Descriptions.Add('Vendedor');
         IECampo.Values.Add('PK.DECV');
         IECampo.Descriptions.Add('Representante');
         IECampo.Values.Add('PK.DECR');
         IECampo.Descriptions.Add('');
         IECampo.Values.Add('');

         IECampo.Descriptions.Add('Situação Título');
         IECampo.Values.Add('PK.DEST');
         IECampo.Descriptions.Add('Tipo');
         IECampo.Values.Add('PK.STPD');
         IECampo.Descriptions.Add('');
         IECampo.Values.Add('');

         IECampo.Descriptions.Add('Situação Bancária');
         IECampo.Values.Add('PK.API_ST');
         IECampo.Descriptions.Add('Nosso Número');
         IECampo.Values.Add('PK.API_NN');
         IECampo.Descriptions.Add('ID de Integração Bancária');
         IECampo.Values.Add('PK.API_ID');

         IECAMPO2.Descriptions.Add('Título');
         IECAMPO2.Values.Add('PK.TITULO');
         IECAMPO2.Descriptions.Add('Nº Carteira');
         IECAMPO2.Values.Add('PK.API_CA');
         IECAMPO2.Descriptions.Add('Nº Pedido');
         IECAMPO2.Values.Add('FK.DEPK');
         IECAMPO2.Descriptions.Add('Nº Nota Fiscal');
         IECAMPO2.Values.Add('FK.CDNF');
         IECAMPO2.Descriptions.Add('Nº Container');
         IECAMPO2.Values.Add('PK.CTNR');
         IECAMPO2.Descriptions.Add('');
         IECAMPO2.Values.Add('');

         IECAMPO2.Descriptions.Add('Código Cliente');
         IECAMPO2.Values.Add('PK.IDCD');
         IECAMPO2.Descriptions.Add('Nome Fantasia');
         IECAMPO2.Values.Add('PK.DECD');
         IECAMPO2.Descriptions.Add('Razão Social');
         IECAMPO2.Values.Add('PK.RZCD');
         IECAMPO2.Descriptions.Add('Grupo Comercial');
         IECAMPO2.Values.Add('PK.GRUPO');
         IECAMPO2.Descriptions.Add('CNPJ');
         IECAMPO2.Values.Add('PK.CNPJ');
         IECAMPO2.Descriptions.Add('CPF');
         IECAMPO2.Values.Add('PK.CPF');
         IECAMPO2.Descriptions.Add('');
         IECAMPO2.Values.Add('');

         IECAMPO2.Descriptions.Add('Vendedor');
         IECAMPO2.Values.Add('PK.DECV');
         IECAMPO2.Descriptions.Add('Representante');
         IECAMPO2.Values.Add('PK.DECR');
         IECAMPO2.Descriptions.Add('');
         IECAMPO2.Values.Add('');

         IECAMPO2.Descriptions.Add('Situação Título');
         IECAMPO2.Values.Add('PK.DEST');
         IECAMPO2.Descriptions.Add('Tipo');
         IECAMPO2.Values.Add('PK.STPD');
         IECAMPO2.Descriptions.Add('');
         IECAMPO2.Values.Add('');

         IECAMPO2.Descriptions.Add('Situação Bancária');
         IECAMPO2.Values.Add('PK.API_ST');
         IECAMPO2.Descriptions.Add('Nosso Número');
         IECAMPO2.Values.Add('PK.API_NN');
         IECAMPO2.Descriptions.Add('ID de Integração Bancária');
         IECAMPO2.Values.Add('PK.API_ID');

         APSQ_FIN_REC := IFThen(APSQ_FIN_REC = '','PK.TITULO',APSQ_FIN_REC);
         IECAMPO.Text := APSQ_FIN_REC;

         IEDATA.Descriptions.Add('Fatura');
         IEDATA.Descriptions.Add('Vencimento');
         IEDATA.Descriptions.Add('Pagamento');
         IEDATA.Descriptions.Add('Baixa');
         IEDATA.Descriptions.Add('Cancelamento');
         IEDATA.Text := 'Fatura';
       end;

   11: begin { Financeiro }
         IECAMPO.Descriptions.Add('Nº Nota Fiscal');
         IECAMPO.Descriptions.Add('');
       end;
  end;

  IECAMPO.DropDownRows  := IFThen(IECAMPO.Values.Count  > 20,20,IECAMPO.Values.Count);
  IECAMPO2.DropDownRows := IFThen(IECAMPO2.Values.Count > 20,20,IECAMPO2.Values.Count);
  IEDATA.DropDownRows   := IFThen(IEDATA.Values.Count   > 20,20,IEDATA.Values.Count);
end;

procedure TFrmPesquisa.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Screen.Cursor := crDefault;
end;
                                                    
procedure TFrmPesquisa.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Editado := ((IECAMPO.TExt  <> EmptyStr) and (EDTXT.Text  <> EmptyStr)) or
             ((IECAMPO2.TExt <> EmptyStr) and (EDTXT2.Text <> EmptyStr)) or
             ((IEDATA.Text   <> EmptyStr) and (DEDTPK.Date > 0) and (DEDTFK.Date > 0));

  if Editado then
  begin
    { PESQUISA PRINCIPAL }
    if (EDTXT.Text <> EmptyStr) and (IECAMPO.Text = EmptyStr) then
    oException(IECAMPO,'Campo da pesquisa principal não informado !');

    { PESQUISA ADICIONAL }
    if (EDTXT2.Text <> EmptyStr) and (IECAMPO2.Text = EmptyStr) then
    oException(IECAMPO2,'Campo da pesquisa adicional não informado !');

    { PESQUISA POR DATA }
    if (IEDATA.Text = EmptyStr) and (DEDTPK.Date > 0) and (DEDTFK.Date > 0) then
    oException(IEDATA,'Campo da pesquisa por data não informada !');

    if (DEDTPK.Date > 0) and (DEDTFK.Date <= 0) then
    oException(DEDTFK,'Data final não informada !');

    if (DEDTFK.Date > 0) and (DEDTPK.Date <= 0) then
    oException(DEDTPK,'Data inicial não informada !');

    if (DEDTPK.Date > 0) and (DEDTFK.Date < DEDTPK.Date) then
    oException(DEDTFK,'Data final não não pode ser menor que data inicial !');

    { PESQUISA PRINCIPAL }
    { = }
    if ((Pos('Cód'   ,IECAMPO.Descriptions[IECAMPO.Values.IndexOf(IECAMPO.Text)]) > 0) or
        (Pos('Nº'    ,IECAMPO.Descriptions[IECAMPO.Values.IndexOf(IECAMPO.Text)]) > 0) or
        (Pos('UF'    ,IECAMPO.Descriptions[IECAMPO.Values.IndexOf(IECAMPO.Text)]) > 0) or
        (Pos('API_CA',IECAMPO.Text) > 0)) and

       ((Pos('Pedido'   ,IECAMPO.Descriptions[IECAMPO.Values.IndexOf(IECAMPO.Text)]) = 0) and
        (Pos('Container',IECAMPO.Descriptions[IECAMPO.Values.IndexOf(IECAMPO.Text)]) = 0) and
        (Pos('Fatura'   ,IECAMPO.Descriptions[IECAMPO.Values.IndexOf(IECAMPO.Text)]) = 0) and
        (Pos('Título'   ,IECAMPO.Descriptions[IECAMPO.Values.IndexOf(IECAMPO.Text)]) = 0)) then
    begin
      if (EDTXT.Text <> EmptyStr) and (not oBSONumero(EDTXT.Text)) then
      begin
        Editado := False;
        oException(Nil,'Digite apenas números !');
      end;

      cPesquisaWhere := '=';
      cPesquisaLike  := '';
    end else

    { LIKE }
    if (Pos('Pedido'  ,IECAMPO.Descriptions[IECAMPO.Values.IndexOf(IECAMPO.Text)]) > 0) or
       (Pos('Fatura'  ,IECAMPO.Descriptions[IECAMPO.Values.IndexOf(IECAMPO.Text)]) > 0) or
       (Pos('Título'  ,IECAMPO.Descriptions[IECAMPO.Values.IndexOf(IECAMPO.Text)]) > 0) or
       (Pos('CNPJ'    ,IECAMPO.Descriptions[IECAMPO.Values.IndexOf(IECAMPO.Text)]) > 0) or
       (Pos('CPF'     ,IECAMPO.Descriptions[IECAMPO.Values.IndexOf(IECAMPO.Text)]) > 0) or
       (Pos('Vendedor',IECAMPO.Descriptions[IECAMPO.Values.IndexOf(IECAMPO.Text)]) > 0) or
       (Pos('Tipo'    ,IECAMPO.Descriptions[IECAMPO.Values.IndexOf(IECAMPO.Text)]) > 0) or
       (Pos('Status'  ,IECAMPO.Descriptions[IECAMPO.Values.IndexOf(IECAMPO.Text)]) > 0) or
       (Pos('Situação',IECAMPO.Descriptions[IECAMPO.Values.IndexOf(IECAMPO.Text)]) > 0) then
    begin
      cPesquisaWhere := 'LIKE';
      cPesquisaLike  := '%';
    end else

    { CONTAINING }
    begin
      cPesquisaWhere := 'CONTAINING';
      cPesquisaLike  := '';
    end;

    { PESQUISA PRINCIPAL }
    { = }
    if ((Pos('Cód'   ,IECAMPO2.Descriptions[IECAMPO2.Values.IndexOf(IECAMPO2.Text)]) > 0) or
        (Pos('Nº'    ,IECAMPO2.Descriptions[IECAMPO2.Values.IndexOf(IECAMPO2.Text)]) > 0) or
        (Pos('UF'    ,IECAMPO2.Descriptions[IECAMPO2.Values.IndexOf(IECAMPO2.Text)]) > 0) or
        (Pos('API_CA',IECAMPO2.Text) > 0)) and

       ((Pos('Pedido',IECAMPO2.Descriptions[IECAMPO2.Values.IndexOf(IECAMPO2.Text)]) = 0) and
        (Pos('Fatura',IECAMPO2.Descriptions[IECAMPO2.Values.IndexOf(IECAMPO2.Text)]) = 0) and
        (Pos('Título',IECAMPO2.Descriptions[IECAMPO2.Values.IndexOf(IECAMPO2.Text)]) = 0)) then
    begin
      if (EDTXT2.Text <> EmptyStr) and (not oBSONumero(EDTXT2.Text)) then
      begin
        Editado := False;
        oException(Nil,'Digite apenas números !');
      end;

      cPesquisaWhere2 := '=';
      cPesquisaLike2  := '';
    end else

    { LIKE }
    if (Pos('Pedido'  ,IECAMPO2.Descriptions[IECAMPO2.Values.IndexOf(IECAMPO2.Text)]) > 0) or
       (Pos('Fatura'  ,IECAMPO2.Descriptions[IECAMPO2.Values.IndexOf(IECAMPO2.Text)]) > 0) or
       (Pos('Título'  ,IECAMPO2.Descriptions[IECAMPO2.Values.IndexOf(IECAMPO2.Text)]) > 0) or
       (Pos('CNPJ'    ,IECAMPO2.Descriptions[IECAMPO2.Values.IndexOf(IECAMPO2.Text)]) > 0) or
       (Pos('CPF'     ,IECAMPO2.Descriptions[IECAMPO2.Values.IndexOf(IECAMPO2.Text)]) > 0) or
       (Pos('Tipo'    ,IECAMPO2.Descriptions[IECAMPO2.Values.IndexOf(IECAMPO2.Text)]) > 0) or
       (Pos('Status'  ,IECAMPO2.Descriptions[IECAMPO2.Values.IndexOf(IECAMPO2.Text)]) > 0) or
       (Pos('Situação',IECAMPO2.Descriptions[IECAMPO2.Values.IndexOf(IECAMPO2.Text)]) > 0) or
       (Pos('Grupo'   ,IECAMPO2.Descriptions[IECAMPO2.Values.IndexOf(IECAMPO2.Text)]) > 0) then
    begin
      cPesquisaWhere2 := 'LIKE';
      cPesquisaLike2  := '%';
    end else

    { CONTAINING }
    begin
      cPesquisaWhere2 := 'CONTAINING';
      cPesquisaLike2  := '';
    end;
  end;
end;

procedure TFrmPesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPesquisa.FormDestroy(Sender: TObject);
begin
  FrmPesquisa := Nil;
end;

procedure TFrmPesquisa.FormKeyDown(Sender: TObject; var Key: Word;
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
       VK_ESCAPE: SIMSaida.Click;
  end;
end;

procedure TFrmPesquisa.SIMValidaClick(Sender: TObject);
begin
  Editado := True;
  Close;
end;

procedure TFrmPesquisa.SIMSaidaClick(Sender: TObject);
begin
  EDTXT.Text  := EmptyStr;
  EDTXT2.Text := EmptyStr;
  DEDTPK.Text := '';
  DEDTFK.Text := '';

  Editado := False;
  Close;
end;

procedure TFrmPesquisa.EDTXTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) and (EDTXT.Text <> EmptyStr) then
  SIMValida.Click;
end;

procedure TFrmPesquisa.EDTXTKeyPress(Sender: TObject; var Key: Char);
begin
  if (IECAMPO.HelpKeyword = EmptyStr) or { Campo Numérico }
     (IECAMPO.Hint = EmptyStr) then { Campo Texto }
  Exit;

  if (Length(EDTXT.Text) >= 1) and (key <> #8) then
  if key in ['0'..'9'] then
  begin
    if IECAMPO.Hint = IECAMPO.Descriptions[IECAMPO.Values.IndexOf(IECAMPO.Text)] then
    begin
      IECAMPO.Text := IECAMPO.Values[IECAMPO.Descriptions.IndexOf(IECAMPO.HelpKeyword)];
      EDTXT.Tag    := 1;
    end;
  end else
  begin
    if IECAMPO.HelpKeyword = IECAMPO.Descriptions[IECAMPO.Values.IndexOf(IECAMPO.Text)] then
    begin
      IECAMPO.Text := IECAMPO.Values[IECAMPO.Descriptions.IndexOf(IECAMPO.Hint)];
      EDTXT.Tag    := 1;
    end;
  end;
end;

procedure TFrmPesquisa.DEDTPKChange(Sender: TObject);
begin
  DEDTFK.Date := RECParametros.SHE_DATA_MES_FK;
end;

procedure TFrmPesquisa.DEDTPKKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) and (DEDTPK.Date > 0) and (DEDTFK.Date > 0) then
      SIMValida.Click;
end;

procedure TFrmPesquisa.EDTXT2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) and (EDTXT2.Text <> EmptyStr) then
  SIMValida.Click;
end;

procedure TFrmPesquisa.EDTXT2KeyPress(Sender: TObject; var Key: Char);
begin
  if (IECAMPO2.HelpKeyword = EmptyStr) or { Campo Numérico }
     (IECAMPO2.Hint = EmptyStr) then { Campo Texto }
  Exit;

  if (Length(EDTXT2.Text) >= 1) and (key <> #8) then
  if key in ['0'..'9'] then
  begin
    if IECAMPO2.Hint = IECAMPO2.Descriptions[IECAMPO2.Values.IndexOf(IECAMPO2.Text)] then
    begin
      IECAMPO2.Text := IECAMPO2.Values[IECAMPO2.Descriptions.IndexOf(IECAMPO2.HelpKeyword)];
      EDTXT2.Tag    := 1;
    end;
  end else
  begin
    if IECAMPO2.HelpKeyword = IECAMPO2.Descriptions[IECAMPO2.Values.IndexOf(IECAMPO2.Text)] then
    begin
      IECAMPO2.Text := IECAMPO2.Values[IECAMPO2.Descriptions.IndexOf(IECAMPO2.Hint)];
      EDTXT2.Tag    := 1;
    end;
  end;
end;

end.

