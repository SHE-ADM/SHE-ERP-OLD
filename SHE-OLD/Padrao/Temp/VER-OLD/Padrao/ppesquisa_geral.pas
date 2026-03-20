unit ppesquisa_geral;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math, StrUtils, rxSpeedbar;

type
  TFrmPesquisa_Geral = class(TForm)
    Shape21: TShape;
    Label11: TLabel;
    EDTXT: TdxMaskEdit;
    Label5: TLabel;
    StatusBar1: TStatusBar;
    Label2: TLabel;
    Label1: TLabel;
    Shape3: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    dxDT1: TdxDateEdit;
    dxDT2: TdxDateEdit;
    cbDATA: TdxPickEdit;
    cbCAMPO: TdxPickEdit;
    linha2: TShape;
    Shape1: TShape;
    ILMenu: TImageList;
    SBMenu: TSpeedBar;
    SSPrincipal: TSpeedbarSection;
    SIMValida: TSpeedItem;
    SIMSaida: TSpeedItem;
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
    procedure dxDT1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dxDT1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Editado: Boolean;
    cField,cWhere,cData,cOrder: string;
  end;

var
  FrmPesquisa_Geral: TFrmPesquisa_Geral;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TFrmPesquisa_Geral.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
  cWhere := '=';
end;

procedure TFrmPesquisa_Geral.FormShow(Sender: TObject);
begin
  case tag of
    1: begin
         cbcampo.Items.Add('Referencia');
         cbcampo.Items.Add('Produto');
         cbcampo.Items.Add('NCM');
         cbcampo.Items.Add('Ref. Fornecedor');
         cbcampo.Items.Add('Descrição');
         cbcampo.Items.Add('Categoria');
         cbcampo.Items.Add('Grupo');
         cbcampo.Items.Add('Coleção');
         cbcampo.Items.Add('Cor');
         cbcampo.Items.Add('Status');
         cbcampo.Items.Add('Todos');

         cbdata.Items.Add('Cadastro');
         cbdata.Items.Add('Alteração');
         cbdata.Items.Add('Programação');
         cbdata.Items.Add('Entrada');
         cbdata.Items.Add('Venda');
         cbdata.Text := 'Cadastro';
       end;
    2: begin
         cbcampo.Items.Add('Número Pedido');
         cbcampo.Items.Add('Número B2B');
         cbcampo.Items.Add('Nome Cliente');
         cbcampo.Items.Add('Código Cliente');
         cbcampo.Items.Add('CNPJ');
         cbcampo.Items.Add('Vendedor');
         cbcampo.Items.Add('Representante');
         cbcampo.Items.Add('Transportadora');
         cbcampo.Items.Add('Todos');

         cbdata.Items.Add('Lançamento');
         cbdata.Items.Add('Baixa');
         cbdata.Text := 'Lançamento';
       end;
  3,4: begin
       cbcampo.Items.Add('Código');
       cbcampo.Items.Add('Nota Fiscal');
       cbcampo.Items.Add('Fantasia');
       cbcampo.Items.Add('Razão Social');
       cbcampo.Items.Add('C.N.P.J.');
       cbcampo.Items.Add('C.P.F.');
       cbcampo.Items.Add('Logradouro');
       cbcampo.Items.Add('Bairro');
       cbcampo.Items.Add('Cidade');
       cbcampo.Items.Add('UF');
       cbcampo.Items.Add('Todos');

       cbdata.Items.Add('Cadastro');
       cbdata.Items.Add('Fundação');
       cbdata.Items.Add('Alteração');
       cbdata.Items.Add('Última Compra');
       cbdata.Text := 'Última Compra';
     end;
  5: begin
       cbcampo.Items.Add('Número');
     end;
  6: begin
       cbcampo.Items.Add('Nota Fiscal');
       cbcampo.Items.Add('Título');
       cbcampo.Items.Add('Instrução Bancária');
       cbcampo.Items.Add('Status');
       cbcampo.Items.Add('Código do Cliente');
       cbcampo.Items.Add('Nome Fantasia do Cliente');
       cbcampo.Items.Add('Razão Social do Cliente');

       cbdata.Items.Add('Emissão');
       cbdata.Items.Add('Vencimento');
       cbdata.Text := 'Emissão';
     end;
  7: begin
       cbcampo.Items.Add('Pedido');
     end;
  9: begin
       cbcampo.Items.Add('Referencia');
       cbcampo.Items.Add('Produto');
       cbcampo.Items.Add('Ref. Fornecedor');
       cbcampo.Items.Add('Descrição');
       cbcampo.Items.Add('Categoria');
       cbcampo.Items.Add('Grupo');
       cbcampo.Items.Add('Coleção');
     end;
   10: begin
         cbcampo.Items.Add('Título');
         cbcampo.Items.Add('Cheque No');
         cbcampo.Items.Add('Container');
         cbcampo.Items.Add('Cliente - Código');
         cbcampo.Items.Add('Cliente - Fantasia');
         cbcampo.Items.Add('Cliente - Razão Social');
         cbcampo.Items.Add('Vendedor');
         cbcampo.Items.Add('Representante');

         cbdata.Items.Add('Lançamento');
         cbdata.Items.Add('Baixa');
         cbdata.Items.Add('Vencimento');
         cbdata.Items.Add('Pagamento');
         cbdata.Text := 'Vencimento';
       end;
    11: begin
         cbcampo.Items.Add('Número Romaneio');
         cbcampo.Items.Add('Número Pedido');
         cbcampo.Items.Add('Número Baixa');
         cbcampo.Items.Add('Nota Fiscal');
         cbcampo.Items.Add('Container');
         cbcampo.Items.Add('Transportadora');
         cbcampo.Items.Add('Nome Cliente');
         cbcampo.Items.Add('Código Cliente');
         cbcampo.Items.Add('C.N.P.J.');
         cbcampo.Items.Add('C.P.F.');
         cbcampo.Items.Add('Vendedor');
         cbcampo.Items.Add('Representante');
         cbcampo.Items.Add('Forma de Pagamento');
         cbcampo.Items.Add('Status');
         cbcampo.Items.Add('Tipo de Pedido');
         cbcampo.Items.Add('Tipo de Cobrança');

         cbdata.Items.Add('Lançamento');
         cbdata.Items.Add('Baixa');
         cbdata.Items.Add('Cancelamento');
         cbdata.Items.Add('Alteração');
         cbdata.Items.Add('Emissão');
         cbdata.Text := 'Lançamento';
       end;
   12: begin
         cbcampo.Items.Add('Título');
         cbcampo.Items.Add('Descrição');
         cbcampo.Items.Add('Centro de Custo');
         cbcampo.Items.Add('Fornecedor - Código');
         cbcampo.Items.Add('Fornecedor - Fantasia');
         cbcampo.Items.Add('Fornecedor - Razão Social');

         cbdata.Items.Add('Lançamento');
         cbdata.Items.Add('Vencimento');
         cbdata.Items.Add('Pagamento');
         cbdata.Text := 'Vencimento';
       end;
   13: begin
         cbdata.Items.Add('Lançamento');
         cbdata.Text := 'Lançamento';
       end;
   14: begin
         cbcampo.Items.Add('Local Estoque');
         cbcampo.Items.Add('Container No');
         cbcampo.Items.Add('Descrição');
         cbcampo.Items.Add('Todos');

         cbdata.Items.Add('Lançamento');
         cbdata.Text := 'Lançamento';
       end;
   15: begin
         cbcampo.Items.Add('Pedido No');
         cbcampo.Items.Add('Cheque No');
         cbcampo.Items.Add('Cheque No - Bordero');
         cbcampo.Items.Add('CPF ou CNPJ (Cheque)');
         cbcampo.Items.Add('Situação');
         cbcampo.Items.Add('Cliente - Código');
         cbcampo.Items.Add('Cliente - Fantasia');
         cbcampo.Items.Add('Cliente - Razão Social');
         cbcampo.Items.Add('Vendedor');
         cbcampo.Items.Add('Representante');
         cbcampo.Items.Add('Banco');
         cbcampo.Items.Add('Motivo de Devolução');
         cbcampo.Items.Add('Todos');

         cbdata.Items.Add('Lançamento');
         cbdata.Items.Add('Vencimento');
         cbdata.Items.Add('Baixa');
         cbdata.Text := 'Lançamento';
       end;
   16: begin
        cbcampo.Items.Add('Número Pedido');
        cbcampo.Items.Add('Número B2B');
        cbcampo.Items.Add('Número Romaneio');
        cbcampo.Items.Add('Número Baixa');
        cbcampo.Items.Add('Nota Fiscal');
        cbcampo.Items.Add('Container');
        cbcampo.Items.Add('Transportadora');
        cbcampo.Items.Add('Nome Cliente');
        cbcampo.Items.Add('Código Cliente');
        cbcampo.Items.Add('C.N.P.J.');
        cbcampo.Items.Add('C.P.F.');
        cbcampo.Items.Add('Vendedor');
        cbcampo.Items.Add('Representante');
        cbcampo.Items.Add('Forma de Pagamento');
        cbcampo.Items.Add('Status');
        cbcampo.Items.Add('Tipo de Pedido');
        cbcampo.Items.Add('Tipo de Cobrança');
        cbcampo.Items.Add('Todos');

        cbdata.Items.Add('Lançamento');
        cbdata.Items.Add('Baixa');
        cbdata.Items.Add('Cancelamento');
        cbdata.Items.Add('Alteração');
        cbdata.Items.Add('Emissão NF');
        cbdata.Text := 'Lançamento';
      end;
  17: begin
         cbcampo.Items.Add('Nº Pedido');
         cbcampo.Items.Add('Nº Container');
         cbcampo.Items.Add('Fantasia');
         cbcampo.Items.Add('Razão Social');
         cbcampo.Items.Add('CNPJ');
         cbcampo.Items.Add('Comprador');
         cbcampo.Items.Add('Representante');
         cbcampo.Items.Add('Transportadora');
         cbcampo.Items.Add('Tipo de Pedido');
         cbcampo.Items.Add('Tipo de Cobrança');
         cbcampo.Items.Add('Forma de Pagamento');
         cbcampo.Items.Add('Situação');
         cbcampo.Items.Add('Todos');

         cbdata.Items.Add('Emissão');
         cbdata.Items.Add('Previsão Chegada');
         cbdata.Items.Add('Real Chegada');
         cbdata.Text := 'Emissão';
       end;
   96: begin
         cbcampo.Items.Add('NF');
         cbcampo.Items.Add('CFOP');
         cbcampo.Items.Add('Pedido');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Nº Destinatário');
         cbcampo.Items.Add('Nome Fantasia');
         cbcampo.Items.Add('Razão Social');
         cbcampo.Items.Add('CNPJ');
         cbcampo.Items.Add('CPF');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Vendedor');
         cbcampo.Items.Add('Representante');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Transportadora');
         cbcampo.Items.Add('');

         APSQ_NFE := IFThen(APSQ_NFE = '','NF',APSQ_NFE);
         cbcampo.Text := APSQ_NFE;

         cbdata.Items.Add('Emissão');
         cbdata.Items.Add('Saída');
         cbdata.Items.Add('Cancelamento');
         cbdata.Text := 'Emissão';
       end;
   97: begin { Programação }
         cbcampo.Items.Add('Pedido');
         cbcampo.Items.Add('Container');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Nº Cliente');
         cbcampo.Items.Add('Nome Fantasia');
         cbcampo.Items.Add('Razão Social');
         cbcampo.Items.Add('CNPJ');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('SKU');
         cbcampo.Items.Add('Artigo');
         cbcampo.Items.Add('Nome Produto');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('SKU Fornecedor');
         cbcampo.Items.Add('Nome Fornecedor');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('B2B');
         cbcampo.Items.Add('B2C');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Grupo Comercial');
         cbcampo.Items.Add('Cidade');
         cbcampo.Items.Add('UF');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Vendedor');
         cbcampo.Items.Add('Representante');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Prazo');
         cbcampo.Items.Add('Tipo de Pedido');
         cbcampo.Items.Add('Tipo de Cobrança');
         cbcampo.Items.Add('Situação');

         APSQ_NFE := IFThen(APSQ_NFE = '','Pedido',APSQ_NFE);
         cbcampo.Text := APSQ_NFE;

         cbdata.Items.Add('Emissão');
         cbdata.Text :=   'Emissão';
       end;
   98: begin { Pedido }
         cbcampo.Items.Add('Pedido');
         cbcampo.Items.Add('Romaneio');
         cbcampo.Items.Add('NF');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('B2B');
         cbcampo.Items.Add('B2C');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Nº Cliente');
         cbcampo.Items.Add('Nome Fantasia');
         cbcampo.Items.Add('Razão Social');
         cbcampo.Items.Add('CNPJ');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Grupo Comercial');
         cbcampo.Items.Add('Cidade');
         cbcampo.Items.Add('UF');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Vendedor');
         cbcampo.Items.Add('Representante');
         cbcampo.Items.Add('Transportadora');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Tipo Pedido');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Tipo Cobrança');
         cbcampo.Items.Add('Crédito');
         cbcampo.Items.Add('Referência');
         cbcampo.Items.Add('Prazo');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Situação');

         APSQ_PED_VEN := IFThen(APSQ_PED_VEN = '','Pedido',APSQ_PED_VEN);
         cbcampo.Text := APSQ_PED_VEN;

         cbdata.Items.Add('Emissão');
         cbdata.Items.Add('Separação');
         cbdata.Items.Add('Romaneio');
         cbdata.Items.Add('NF');
         cbdata.Items.Add('Baixa');
         cbdata.Text :=   'Emissão';
       end;
   99: begin { Romaneio }
         cbcampo.Items.Add('Pedido');
         cbcampo.Items.Add('Romaneio');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('NF');
         cbcampo.Items.Add('B2B');
         cbcampo.Items.Add('B2C');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Nº Cliente');
         cbcampo.Items.Add('Nome Fantasia');
         cbcampo.Items.Add('Razão Social');
         cbcampo.Items.Add('CNPJ');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Grupo Comercial');
         cbcampo.Items.Add('Cidade');
         cbcampo.Items.Add('UF');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Vendedor');
         cbcampo.Items.Add('Representante');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Prazo');
         cbcampo.Items.Add('Tipo de Pedido');
         cbcampo.Items.Add('Tipo de Cobrança');
         cbcampo.Items.Add('Situação');

         APSQ_ROM_CAB := IFThen(APSQ_ROM_CAB = '','Pedido',APSQ_ROM_CAB);
         cbcampo.Text := APSQ_ROM_CAB;

         cbdata.Items.Add('Emissão');
         cbdata.Items.Add('NF');
         cbdata.Text :=   'Emissão';
       end;
  end;

  cbCAMPO.DropDownRows := cbCAMPO.Items.Count;
end;

procedure TFrmPesquisa_Geral.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Screen.Cursor := crDefault;
end;
                                                    
procedure TFrmPesquisa_Geral.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Editado := ((CField <> EmptyStr) and (EDTXT.Text <> EmptyStr)) or ((CData <> EmptyStr) and (dxDT1.Date > 0) and (dxDT2.Date > 0));

  if (Editado) and (EDTXT.Text <> EmptyStr) then
  begin
    if (Pos(LeftStr(cbCAMPO.Text,2),'NºNFRO') > 0) and (TAG >= 97) then
       if not oBSONumero(EDTXT.Text) then
       begin
         Editado := False;
         oErro(Self.Handle,'Digite apenas números !');
       end;  

 {   if Pos('.',EDTXT.Text) = Length(EDTXT.Text) then
    begin
      CField     := 'ARTIGO';
      CWhere     := '=';
      EDTXT.Text := LeftStr(EDTXT.Text,Length(EDTXT.Text) - 1);
    end;   }
  end;
end;

procedure TFrmPesquisa_Geral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPesquisa_Geral.FormDestroy(Sender: TObject);
begin
  FrmPesquisa_Geral := Nil;
end;

procedure TFrmPesquisa_Geral.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmPesquisa_Geral.SIMValidaClick(Sender: TObject);
begin
  CField := EmptyStr;
  CData  := EmptyStr;
  COrder := EmptyStr;
  cWhere := IFThen((Pos(LeftStr(cbCAMPO.Text,2),'NºNFROUF') > 0) or (Pos(cbCAMPO.Text,'Artigo') > 0),'=',IFThen(Pos(cbCAMPO.Text,'PedidoB2BB2CGrupo ComercialSKU') > 0,'LIKE','CONTAINING'));

  if dxDT1.Date > 0 then
  begin
    if dxDT2.Date < 0 then
       raise exception.Create('Data final não definida !');

    if dxDT2.Date < dxDT1.Date then
       raise exception.Create('Data final não pode ser menor que data inicial !');
  end
  else if dxDT2.Date > 0 then
  begin
    if dxDT1.Date < 0 then
       raise exception.Create('Data inicial não definida !');

    if dxDT1.Date > dxDT2.Date then
       raise exception.Create('Data inicial não pode ser maior que data final !');
  end;

  case Tag of
    1: begin
         if cbCAMPO.Text = 'Referencia' then
            cField := 'CAD_PRO.PRO_CART'
         else if cbCAMPO.Text = 'Produto' then
            cField := 'CAD_PRO.PRO_CPRO'
         else if cbCAMPO.Text = 'NCM' then
            cField := 'CAD_PRO.NCM'
         else if cbCAMPO.Text = 'Ref. Fornecedor' then
            cField := 'CAD_PRO.CDCF'
         else if cbCAMPO.Text = 'Descrição' then
            cField := 'CAD_PRO.PRO_DPRO'
         else if cbCAMPO.Text = 'Grupo' then
            cField := 'CAD_PRO.PRO_DGRP'
         else if cbCAMPO.Text = 'Cor' then
            cField := 'CAD_PRO.PRO_DCOR'
         else if cbCAMPO.Text = 'Status' then
            cField := 'CAD_PRO.REST'
         else if cbCAMPO.Text = 'Todos' then
            cField := 'Todos';

         if cbDATA.Text = 'Cadastro' then
            cData := 'CAD_PRO.DTCA'
         else if cbDATA.Text = 'Alteração' then
            cData := 'CAD_PRO.DTED'
         else if cbDATA.Text = 'Venda' then
            cData := 'CAD_PRO.DTUTPV';
       end;
    2: begin
         if cbCAMPO.Text      = 'Número Pedido' then
            cField := 'PK.DEPK'
         else if cbCAMPO.Text = 'Número B2B' then
            cField := 'PK.B2B_DEPK'
         else if cbCAMPO.Text = 'Nome Cliente' then
            cField := 'CD.FANTASIA'
         else if cbCAMPO.Text = 'Código Cliente' then
            cField := 'PK.IDCD'
         else if cbCAMPO.Text = 'CNPJ' then
            cField := 'PK.CNPJ'
         else if cbCAMPO.Text = 'Vendedor' then
            cField := 'CV.LOGIN'
         else if cbCAMPO.Text = 'Representante' then
            cField := 'CR.FANTASIA'
         else if cbCAMPO.Text = 'Transportadora' then
            cField := 'CT.FANTASIA'
         else if cbCAMPO.Text = 'Todos' then
            cField := 'Todos';

         if cbDATA.Text = 'Lançamento' then
            cData := 'CAST(PK.DTCA AS DATE)'
         else if cbDATA.Text = 'Baixa' then
            cData := 'ROM_DBAI'; 

       end;
    3: begin
         if cbCAMPO.Text = 'Código' then
            cField := 'ID'
         else if cbCAMPO.Text  = 'Nota Fiscal' then
            cField := 'NFE_CDNF'
         else if cbCAMPO.Text  = 'Fantasia' then
            cField := 'CLI_FANT'
         else if cbCAMPO.Text  = 'Razão Social' then
            cField := 'CLI_RAZA'
         else if cbCAMPO.Text  = 'C.N.P.J.' then
            cField := 'CLI_CNPJ'
         else if cbCAMPO.Text  = 'C.P.F.' then
            cField := 'CLI_CPF'
         else if cbCAMPO.Text  = 'Logradouro' then
            cField := 'CLI_LOGR'
         else if cbCAMPO.Text  = 'Bairro' then
            cField := 'CLI_BAI'
         else if cbCAMPO.Text  = 'Cidade' then
            cField := 'CLI_CID'
         else if cbCAMPO.Text  = 'UF' then
            cField := 'CLI_ESTA'
         else if cbCAMPO.Text  = 'Todos' then
            cField := 'Todos';

         if cbDATA.Text = 'Cadastro' then
            cData := 'CLI_DCAD'
         else if cbDATA.Text = 'Fundação' then
            cData := 'CLI_DFUN'
         else if cbDATA.Text = 'Alteração' then
            cData := 'CLI_DALT'
         else if cbDATA.Text = 'Última Compra' then
            cData := 'CLI_DULT';
       end;
    4: begin
         if cbCAMPO.Text = 'Código' then
            cField := 'CAD_FOR.ID'
         else if cbCAMPO.Text  = 'Fantasia' then
            cField := 'FOR_FANT'
         else if cbCAMPO.Text  = 'Razão Social' then
            cField := 'FOR_RAZA'
         else if cbCAMPO.Text  = 'C.N.P.J.' then
            cField := 'FOR_CNPJ'
         else if cbCAMPO.Text  = 'C.P.F.' then
            cField := 'FOR_CPF'
         else if cbCAMPO.Text  = 'Logradouro' then
            cField := 'FOR_LOGR'
         else if cbCAMPO.Text  = 'Bairro' then
            cField := 'FOR_BAI'
         else if cbCAMPO.Text  = 'Cidade' then
            cField := 'FOR_CID'
         else if cbCAMPO.Text  = 'UF' then
            cField := 'FOR_ESTA';

         if cbDATA.Text = 'Cadastro' then
            cData := 'FOR_DCAD'
         else if cbDATA.Text = 'Fundação' then
            cData := 'FOR_DFUN'
         else if cbDATA.Text = 'Alteração' then
            cData := 'FOR_DALT'
         else if cbDATA.Text = 'Última Compra' then
            cData := 'FOR_DULT';
       end;
    5: begin
         if cbCAMPO.Text = 'Número' then
            cField := 'ID';

         cbDATA.Enabled := false;
         dxDT1.Enabled  := false;
         dxDT2.Enabled  := false;
       end;
    6: begin
         if cbCAMPO.Text = 'Nota Fiscal' then
            cField := 'NFE_DUP.NFE_CDNF'
         else if cbCAMPO.Text  = 'Título' then
            cField := 'NFE_DUP.NFE_TITU'
         else if cbCAMPO.Text  = 'Instrução Bancária' then
            cField := 'NFE_DUP.NFE_IDBX'
         else if cbCAMPO.Text  = 'Status' then
            cField := 'NFE_DUP.NFE_STFI'
         else if cbCAMPO.Text  = 'Código do Cliente' then
            cField := 'CAD_CLI.ID'
         else if cbCAMPO.Text  = 'Nome Fantasia do Cliente' then
            cField := 'CAD_CLI.CLI_FANT'
         else if cbCAMPO.Text  = 'Razão Social do Cliente' then
            cField := 'CAD_CLI.CLI_RAZA';

         if cbDATA.Text = 'Emissão' then
            cData := 'NFE_DUP.NFE_DNFE'
         else if cbDATA.Text = 'Vencimento' then
            cData := 'NFE_DUP.NFE_DVEN';
       end;
    7: begin
         if cbCAMPO.Text = 'Pedido' then
            cField := 'ID';
       end;
    8: begin
         if cbCAMPO.Text = 'Nota Fiscal' then
            cField := 'NFC.NFE_CDNF'
         else if cbCAMPO.Text  = 'Pedido' then
            cField := 'NFC.NFE_DERO'
         else if cbCAMPO.Text  = 'Romaneio' then
            cField := 'NFC.NFE_CDRO'
         else if cbCAMPO.Text  = 'Favorecido' then
            cField := 'NFC.NFE_DFAV'
         else if cbCAMPO.Text  = 'Transportadora' then
            cField := 'NFC.NFE_DTRA'
         else if cbCAMPO.Text  = 'C.F.O.P.' then
            cField := 'NFC.NFE_CNAT'
         else if cbCAMPO.Text  = 'Vendedor' then
            cField := 'NFC.NFE_DVEN'
         else if cbCAMPO.Text  = 'Representante' then
            cField := 'NFC.NFE_DREP'
         else if cbCAMPO.Text  = 'Todos' then
            cField := 'Todos';


         if cbDATA.Text = 'Emissão' then
            cData := 'NFC.NFE_DEMI'
         else if cbDATA.Text = 'Saída' then
            cData := 'NFC.NFE_DSAI'
         else if cbDATA.Text = 'Cancelamento' then
            cData := 'NFC.NFE_DCAN';
       end;
    9: begin
         if cbCAMPO.Text = 'Referencia' then
            cField := 'CAD_PRO.PRO_CART'
         else if cbCAMPO.Text = 'Produto' then
            cField := 'CAD_PRO.PRO_CPRO'
         else if cbCAMPO.Text = 'Ref. Fornecedor' then
            cField := 'CAD_PRO.CDCF'
         else if cbCAMPO.Text = 'Descrição' then
            cField := 'CAD_PRO.PRO_DPRO'
         else if cbCAMPO.Text = 'Grupo' then
            cField := 'CAD_PRO.PRO_DGRP';
       end;
    10: begin
         if cbCAMPO.Text = 'Título' then
            cField := 'FIN_TITU'
         else if cbCAMPO.Text = 'Cheque No' then
            cField := 'FIN_NCHQ'
         else if cbCAMPO.Text = 'Container' then
            cField := 'FIN_CTNR'
         else if cbCAMPO.Text = 'Cliente - Código' then
            cField := 'CAD_CLI.ID'
         else if cbCAMPO.Text = 'Cliente - Fantasia' then
            cField := 'CAD_CLI.CLI_FANT'
         else if cbCAMPO.Text = 'Cliente - Razão Social' then
            cField := 'CAD_CLI.CLI_RAZA'
         else if cbCAMPO.Text = 'Vendedor' then
            cField := 'CAD_USU.USU_DUSU'
         else if cbCAMPO.Text = 'Representante' then
            cField := 'CAD_REP.REP_FANT';

         if cbDATA.Text = 'Lançamento' then
            cData := 'FIN_DCAD'
         else if cbDATA.Text = 'Baixa' then
            cData := 'FIN_DBAI'
         else if cbDATA.Text = 'Vencimento' then
            cData := 'FIN_DVEN'
         else if cbDATA.Text = 'Pagamento' then
            cData := 'FIN_DPAG';
       end;
   11: begin
         if cbCAMPO.Text = 'Número Romaneio' then
            cField := 'P.ID'
         else if cbCAMPO.Text = 'Número Pedido' then
            cField := 'P.ROM_DERO'
         else if cbCAMPO.Text = 'Número Baixa' then
            cField := 'P.ROM_CDBX'
         else if cbCAMPO.Text = 'Nota Fiscal' then
            cField := 'P.ROM_CDNF'
         else if cbCAMPO.Text = 'Nome Cliente' then
            cField := 'P.CAD_CLI.CLI_FANT'
         else if cbCAMPO.Text = 'Código Cliente' then
            cField := 'P.CAD_CLI.ID'
         else if cbCAMPO.Text = 'C.N.P.J.' then
            cField := 'P.CAD_CLI.CLI_CNPJ'
         else if cbCAMPO.Text = 'C.P.F.' then
            cField := 'P.CAD_CLI.CLI_CPF'
         else if cbCAMPO.Text = 'Vendedor' then
            cField := 'P.CAD_USU.USU_DUSU'
         else if cbCAMPO.Text = 'Representante' then
            cField := 'P.CAD_REP.REP_FANT'
         else if cbCAMPO.Text = 'Forma de Pagamento' then
            cField := 'P.TAB_PAG.PAG_DPAG'
         else if cbCAMPO.Text = 'Status' then
            cField := 'P.ROM_STFI'
         else if cbCAMPO.Text = 'Tipo de Pedido' then
            cField := 'P.ROM_STPD'
         else if cbCAMPO.Text = 'Container' then
            cField := 'P.ROM_CTNR'
         else if cbCAMPO.Text = 'Transportadora' then
            cField := 'P.ROM_DTRA'
         else if cbCAMPO.Text = 'Tipo de Cobrança' then
            cField := 'P.ROM_STCO';

         if cbDATA.Text = 'Lançamento' then
            cData := 'P.ROM_DROM'
         else if cbDATA.Text = 'Baixa' then
            cData := 'P.ROM_DBAI'
         else if cbDATA.Text = 'Cancelamento' then
            cData := 'P.ROM_DCAN'
         else if cbDATA.Text = 'Alteração' then
            cData := 'P.ROM_DALT'
         else if cbDATA.Text = 'Emissão' then
            cData := 'P.ROM_DNFS';
       end;
    12: begin
         if cbCAMPO.Text = 'Título' then
            cField := 'FIN_TITU'
         else if cbCAMPO.Text = 'Descrição' then
            cField := 'FIN_DESC'
         else if cbCAMPO.Text = 'Centro de Custo' then
            cField := 'FIN_DCUS'
         else if cbCAMPO.Text = 'Fornecedor - Código' then
            cField := 'CAD_FOR.ID'
         else if cbCAMPO.Text = 'Fornecedor - Fantasia' then
            cField := 'CAD_FOR.FOR_FANT'
         else if cbCAMPO.Text = 'Fornecedor - Razão Social' then
            cField := 'CAD_FOR.FOR_RAZA';

         if cbDATA.Text = 'Lançamento' then
            cData := 'FIN_DCAD'
         else if cbDATA.Text = 'Vencimento' then
            cData := 'FIN_DVEN'
         else if cbDATA.Text = 'Pagamento' then
            cData := 'FIN_DPAG';
       end;
    13: begin
          if cbDATA.Text = 'Lançamento' then
          cData := 'CAI_DCAD';
       end;
    14: begin
         if cbCAMPO.Text = 'Referencia' then
            cField := 'CAD_PRO.PRO_CART'
         else if cbCAMPO.Text = 'Produto' then
            cField := 'CAD_PRO.PRO_CPRO'
         else if cbCAMPO.Text = 'Local Estoque' then
            cField := 'CAD_PRO_ENC.MAPA'
         else if cbCAMPO.Text = 'Container No' then
            cField := 'CAD_PRO_ENC.CTNR'
         else if cbCAMPO.Text = 'Descrição' then
            cField := 'CAD_PRO.PRO_DPRO'
         else if cbCAMPO.Text = 'Grupo' then
            cField := 'CAD_PRO.PRO_DGRP';

         if cbDATA.Text = 'Lançamento' then
         cData := 'PRO_DCAD';
       end;
    15: begin
         if cbCAMPO.Text      = 'Pedido No' then
            cField := 'CHQ_CDBX'
         else if cbCAMPO.Text = 'Cheque No' then
            cField := 'CHQ_NCHQ'
         else if cbCAMPO.Text = 'Cheque No - Bordero' then
            cField := 'CHQ_NCHQ'
         else if cbCAMPO.Text = 'Situação' then
            cField := 'CHQ_STFI'
         else if cbCAMPO.Text = 'Cliente - Código' then
            cField := 'CHQ_CCLI'                                                      
         else if cbCAMPO.Text = 'Cliente - Fantasia' then                             
            cField := 'CLI_FANT'                                                      
         else if cbCAMPO.Text = 'Cliente - Razão Social' then                         
            cField := 'CLI_RAZA'
         else if cbCAMPO.Text = 'CPF ou CNPJ (Cheque)' then
            cField := 'CHQ_CPF'
         else if cbCAMPO.Text = 'Vendedor' then
            cField := 'USU_DUSU'
         else if cbCAMPO.Text = 'Representante' then
            cField := 'REP_FANT'
         else if cbCAMPO.Text = 'Banco' then
            cField := 'CHQ_BANC'
         else if cbCAMPO.Text = 'Motivo de Devolução' then
            cField := 'CHQ_MOTI';

         if cbDATA.Text = 'Lançamento' then
         cData := 'CHQ_DCAD' else
         if cbDATA.Text = 'Vencimento' then
         cData := 'CHQ_DVEN' else
         if cbDATA.Text = 'Baixa' then
         cData := 'CHQ_DSAI';
       end;
    16: begin
         if cbCAMPO.Text = 'Número Pedido' then
            cField := 'PK.DEPV'
         else if cbCAMPO.Text = 'Número Romaneio' then
            cField := 'PK.CDRO'
         else if cbCAMPO.Text = 'Número Baixa' then
            cField := 'PK.CDBX'
         else if cbCAMPO.Text = 'Nota Fiscal' then
            cField := 'PK.CDNF'
         else if cbCAMPO.Text = 'Nome Cliente' then
            cField := 'PK.DECL'
         else if cbCAMPO.Text = 'Código Cliente' then
            cField := 'PK.IDCL'
         else if cbCAMPO.Text = 'C.N.P.J.' then
            cField := 'PK.CNPJ'
         else if cbCAMPO.Text = 'Vendedor' then
            cField := 'PK.DECV'
         else if cbCAMPO.Text = 'Representante' then
            cField := 'PK.DECR'
         else if cbCAMPO.Text = 'Forma de Pagamento' then
            cField := 'PK.DEPG'
         else if cbCAMPO.Text = 'Status' then
            cField := 'PK.STFI'
         else if cbCAMPO.Text = 'Tipo de Pedido' then
            cField := 'PK.STPD'
         else if cbCAMPO.Text = 'Tipo de Cobrança' then
            cField := 'PK.STCO'
         else if cbCAMPO.Text = 'Container' then
            cField := 'PK.CTNR'
         else if cbCAMPO.Text = 'Transportadora' then
            cField := 'PK.DECT'
         else if cbCAMPO.Text = 'Todos' then
            cField := 'Todos';

         if cbDATA.Text = 'Lançamento' then
            cData := 'CAST(PK.DTPV AS DATE)'
         else if cbDATA.Text = 'Baixa' then
            cData := 'CAST(PK.DTBX AS DATE)'
         else if cbDATA.Text = 'Emissão NF' then
            cData := 'CAST(PK.DTNF AS DATE)';
       end;
    17: begin
         if cbCAMPO.Text = 'Nº Pedido' then
            cField := 'PK.DEPK'
         else if cbCAMPO.Text = 'Nº Container' then
            cField := 'PK.CTNR'
         else if cbCAMPO.Text = 'Fantasia' then
            cField := 'PK.CD_NO'
         else if cbCAMPO.Text = 'Razão Social' then
            cField := 'PK.CD_NO_RZ'
         else if cbCAMPO.Text = 'CNPJ' then
            cField := 'PK.CNPJ'
         else if cbCAMPO.Text = 'Comprador' then
            cField := 'PK.CV_NO'
         else if cbCAMPO.Text = 'Representante' then
            cField := 'PK.CR_NO'
         else if cbCAMPO.Text = 'Transportadora' then
            cField := 'PK.CT_NO'
         else if cbCAMPO.Text = 'Tipo de Pedido' then
            cField := 'PK.TPD_NO'
         else if cbCAMPO.Text = 'Tipo de Cobrança' then
            cField := 'PK.TCO_NO_PRZ'
         else if cbCAMPO.Text = 'Forma de Pagamento' then
            cField := 'PK.PRZ_NO'
         else if cbCAMPO.Text = 'Situação' then
            cField := 'PK.DEST'
         else if cbCAMPO.Text = 'Todos' then
            cField := 'Todos';

         if cbDATA.Text = 'Emissão' then
            cData := 'PK.DTPK'
         else if cbDATA.Text = 'Previsão Chegada' then
            cData := 'PK.CTNR_PCHP'
         else if cbDATA.Text = 'Real Chegada' then
            cData := 'PK.CTNR_RCHP';
       end;
    96: begin
          if cbCAMPO.Text = 'NF' then
             cField := 'PK.CDNF' else

          if cbCAMPO.Text = 'CFOP' then
             cField := 'PK.CFOP' else

          if cbCAMPO.Text = 'Pedido' then
             cField := 'PK.DEPK' else

          if cbCAMPO.Text = 'Nº Destinatário' then
             cField := 'PK.IDCD' else

          if cbCAMPO.Text = 'Nome Fantasia' then
             cField := 'PK.DECD' else

          if cbCAMPO.Text = 'Razão Social' then
             cField := 'PK.RZCD' else

          if cbCAMPO.Text = 'CNPJ' then
             cField := 'PK.PJCD' else

          if cbCAMPO.Text = 'CPF' then
             cField := 'PK.PFCD' else

          if cbCAMPO.Text = 'Vendedor' then
             cField := 'PK.DECV' else

          if cbCAMPO.Text = 'Representante' then
             cField := 'PK.DECR' else

          if cbCAMPO.Text = 'Transportadora' then
             cField := 'PK.DECT';

          if cbDATA.Text = 'Emissão' then
             cData := 'CAST(PK.DTCA AS DATE)' else

          if cbDATA.Text = 'Saída' then
             cData := 'CAST(PK.DTSA AS DATE)' else

          if cbDATA.Text = 'Cancelamento' then
             cData := 'CAST(PK.DTST AS DATE)';
       end;
    97: begin
          if cbCAMPO.Text = 'Pedido'  then
             cField := 'PK.DEPK' else

          if cbCAMPO.Text = 'Container' then
             cField := 'FK.CTNR' else

          if cbCAMPO.Text = 'Nº Cliente' then
             cField := 'PK.IDCD' else

          if cbCAMPO.Text = 'Nome Fantasia' then
             cField := 'CD.FANTASIA' else

          if cbCAMPO.Text = 'Razão Social' then
             cField := 'CD.RAZAO' else

          if cbCAMPO.Text = 'CNPJ' then
             cField := 'CD.CNPJ' else

          if cbCAMPO.Text = 'SKU' then
             cField := 'CP.SKU' else

          if cbCAMPO.Text = 'Artigo' then
             cField := 'CP.ARTIGO' else

          if cbCAMPO.Text = 'Nome Produto' then
             cField := 'CP.DECP' else

          if cbCAMPO.Text = 'SKU Fornecedor' then
             cField := 'CP.CF_SKU' else

          if cbCAMPO.Text = 'Nome Fornecedor' then
             cField := 'CP.CF_SKU' else

          if cbCAMPO.Text = 'B2B' then
             cField := 'PK.API_B2B_DEPK' else

          if cbCAMPO.Text = 'B2C' then
             cField := 'PK.API_B2C_DEPK' else

          if cbCAMPO.Text = 'Grupo Comercial' then
             cField := 'CD.GRUPO' else

          if cbCAMPO.Text = 'Cidade' then
             cField := 'CD.LOC_NO' else

          if cbCAMPO.Text = 'UF' then
             cField := 'CD.UF' else

          if cbCAMPO.Text = 'Vendedor' then
             cField := 'CV.LOGIN' else

          if cbCAMPO.Text = 'Representante' then
             cField := 'CR.FANTASIA' else

          if cbCAMPO.Text = 'Prazo' then
             cField := 'PG.DESCRICAO' else

          if cbCAMPO.Text = 'Tipo de Pedido' then
             cField := 'PK.STPD' else

          if cbCAMPO.Text = 'Tipo de Cobrança' then
             cField := 'PK.STCO' else

          if cbCAMPO.Text = 'Situação' then
             cField := 'PK.DEST';
             cData  := 'CAST(PK.DTCA AS DATE)';
       end;
    98: begin
          if cbCAMPO.Text = 'Pedido' then
             cField := 'PK.DEPK' else

          if cbCAMPO.Text = 'Romaneio' then
             cField := 'PK.CDRO' else

          if cbCAMPO.Text = 'NF' then
             cField := 'PK.CDNF' else

          if cbCAMPO.Text = 'B2B' then
             cField := 'PK.API_B2B_DEPK' else

          if cbCAMPO.Text = 'B2C' then
             cField := 'PK.API_B2C_DEPK' else

          if cbCAMPO.Text = 'Nº Cliente' then
             cField := 'PK.IDCD' else

          if cbCAMPO.Text = 'Nome Fantasia' then
             cField := 'PK.DECD' else

          if cbCAMPO.Text = 'Razão Social' then
             cField := 'PK.RZCD' else

          if cbCAMPO.Text = 'CNPJ' then
             cField := 'PK.PJCD' else

          if cbCAMPO.Text = 'Grupo Comercial' then
             cField := 'PK.GPCD' else

          if cbCAMPO.Text = 'Cidade' then
             cField := 'PK.LOC_NO_CD' else

          if cbCAMPO.Text = 'UF' then
             cField := 'PK.UF' else

          if cbCAMPO.Text = 'Vendedor' then
             cField := 'PK.DECV' else

          if cbCAMPO.Text = 'Representante' then
             cField := 'PK.DECR' else

          if cbCAMPO.Text = 'Transportadora' then
             cField := 'PK.DECT' else

          if cbCAMPO.Text = 'Tipo Pedido' then
             cField := 'PK.STPD' else

          if cbCAMPO.Text = 'Tipo Cobrança' then
             cField := 'PK.STCO' else

          if cbCAMPO.Text = 'Crédito' then
             cField := 'PK.TPCO' else

          if cbCAMPO.Text = 'Referência' then
             cField := 'PK.RECO' else

          if cbCAMPO.Text = 'Prazo' then
             cField := 'PK.DEPG' else

          if cbCAMPO.Text = 'Situação' then
             cField := 'PK.DEST';


          if cbDATA.Text = 'Emissão' then
             cData := 'PK.DTPK' else

          if cbDATA.Text = 'Separação' then
             cData := 'PK.DTSP' else

          if cbDATA.Text = 'Romaneio' then
             cData := 'PK.DTRO' else

          if cbDATA.Text = 'NF' then
             cData := 'PK.DTNF' else

          if cbDATA.Text = 'Saída' then
             cData := 'PK.DTSA' else

          if cbDATA.Text = 'Baixa' then
             cData := 'PK.DTBX';
       end;
    99: begin
          if cbCAMPO.Text = 'Pedido'  then
             cField := 'PK.DEPK' else

          if cbCAMPO.Text = 'Romaneio' then
             cField := 'PK.CDRO' else

          if cbCAMPO.Text = 'NF' then
             cField := 'PK.CDNF' else

          if cbCAMPO.Text = 'B2B' then
             cField := 'PK.API_B2B_DEPK' else

          if cbCAMPO.Text = 'B2C' then
             cField := 'PK.API_B2C_DEPK' else

          if cbCAMPO.Text = 'Nº Cliente' then
             cField := 'PK.IDCD' else

          if cbCAMPO.Text = 'Nome Fantasia' then
             cField := 'CD.FANTASIA' else

          if cbCAMPO.Text = 'Razão Social' then
             cField := 'CD.RAZAO' else

          if cbCAMPO.Text = 'CNPJ' then
             cField := 'CD.CNPJ' else

          if cbCAMPO.Text = 'Grupo Comercial' then
             cField := 'CD.GRUPO' else

          if cbCAMPO.Text = 'Cidade' then
             cField := 'CD.LOC_NO' else

          if cbCAMPO.Text = 'UF' then
             cField := 'CD.UF' else

          if cbCAMPO.Text = 'Vendedor' then
             cField := 'CV.LOGIN' else

          if cbCAMPO.Text = 'Representante' then
             cField := 'CR.FANTASIA' else

          if cbCAMPO.Text = 'Prazo' then
             cField := 'TB_PG.DESCRICAO' else

          if cbCAMPO.Text = 'Tipo de Pedido' then
             cField := 'PK.STPD' else

          if cbCAMPO.Text = 'Tipo de Cobrança' then
             cField := 'PK.STCO' else

          if cbCAMPO.Text = 'Situação' then
             cField := 'PK.DEST';

          if cbDATA.Text = 'Emissão' then
             cData := 'CAST(PK.DTCA AS DATE)' else

          if cbDATA.Text = 'NF' then
             cData := 'CAST(PK.DTNF AS DATE)';
       end;
  end;

  if (CField <> EmptyStr) and (EDTXT.Text <> EmptyStr) then
      COrder := 'DTCA DESC';

  if (CData <> EmptyStr) and (dxDT1.Date > 0) and (dxDT2.Date > 0) then
      COrder := CData + ' DESC';
      COrder := oStrTran(COrder,'DTPK','DTCA');

  Editado := True;
  Close;
end;

procedure TFrmPesquisa_Geral.SIMSaidaClick(Sender: TObject);
begin
  Editado := False;
  Close;
end;

procedure TFrmPesquisa_Geral.EDTXTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
     SIMValida.Click;
end;

procedure TFrmPesquisa_Geral.EDTXTKeyPress(Sender: TObject; var Key: Char);
begin
  if (Length(edTXT.Text) >= 1) and (key <> #8) then
  begin
    if key in ['0'..'9'] then
    begin
      case tag of
          2: begin
               if cbCAMPO.Text  = 'Nome Cliente' then
                  cbCAMPO.Text := 'Número Pedido';
             end;
          3: begin
               if cbCAMPO.Text  = 'Fantasia' then
                  cbCAMPO.Text := 'Código';
             end;
        6,8: begin
               if cbCAMPO.Text  = 'Nome Fantasia do Cliente' then
                  cbCAMPO.Text := 'Nota Fiscal';
             end;
         11: begin
               if cbCAMPO.Text  = 'Nome Cliente' then
                  cbCAMPO.Text := 'Número Romaneio';
             end;
         96,
         97,
         98,
         99: begin
               if Pos(cbCAMPO.Text,'Nome FantasiaRazão SocialVendedorRepresentanteTipo de PedidoTipo de CobrançaSituaçãoGrupo ComercialCidadeUF') > 0 then
                  cbCAMPO.Text :=  'Pedido';
             end;
      end;
    end else
    begin
      case tag of
          3: begin
               if cbCAMPO.Text = 'Número Pedido' then
                  cbCAMPO.Text := 'Fantasia' else
               if cbCAMPO.Text = 'Código' then
                  cbCAMPO.Text := 'Fantasia' else
             end;
          6: begin
               if cbCAMPO.Text = 'Nota Fiscal' then
                  cbCAMPO.Text := 'Nome Fantasia do Cliente';
             end;
          8: begin
               if cbCAMPO.Text = 'Nota Fiscal' then
                  cbCAMPO.Text := 'Favorecido';
             end;
          2,16: begin
                if cbCAMPO.Text = 'Número Pedido' then
                   cbCAMPO.Text := 'Nome Cliente';
             end;
         11: begin
               if cbCAMPO.Text = 'Número Romaneio' then
                  cbCAMPO.Text := 'Nome Cliente';
             end;
         96,
         97,
         98,
         99: begin
               if (((Pos(LeftStr(cbCAMPO.Text,2),'NºNFRO') > 0) or (cbCAMPO.Text = 'Nota Fiscal') or (cbCAMPO.Text = 'Pedido') or (cbCAMPO.Text = 'B2B') or (cbCAMPO.Text = 'B2C')) and
                   ((EDTXT.Text    =  EmptyStr ) or (Length(EDTXT.Text) = 1)))   then
                     cbCAMPO.Text := 'Nome Fantasia';
             end;
      end;
    end;
  end;
end;

procedure TFrmPesquisa_Geral.dxDT1Change(Sender: TObject);
begin
  dxDT2.Date := RECParametros.DTMES_FIM;
end;

procedure TFrmPesquisa_Geral.dxDT1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) and (dxDT1.Date > 0) and (dxDT2.Date > 0) then
      SIMValida.Click;
end;

end.
