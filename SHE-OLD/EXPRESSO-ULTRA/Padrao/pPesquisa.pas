unit pPesquisa;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math, StrUtils, rxSpeedbar;

type
  TFrmPesquisa = class(TForm)
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
    procedure FormResize(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Editado: Boolean;
    cField,cWhere,cData,cOrder: string;
  end;

var
  FrmPesquisa: TFrmPesquisa;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TFrmPesquisa.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
  cWhere := '=';
end;

procedure TFrmPesquisa.FormShow(Sender: TObject);
begin
  case tag of
    1: begin
         cbcampo.Items.Add('Referencia');
         cbcampo.Items.Add('Produto');
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
    8: begin
         cbcampo.Items.Add('Nota Fiscal');
         cbcampo.Items.Add('Pedido');
         cbcampo.Items.Add('Favorecido');
         cbcampo.Items.Add('Transportadora');
         cbcampo.Items.Add('C.F.O.P.');         
         cbcampo.Items.Add('Vendedor');
         cbcampo.Items.Add('Representante');
         cbcampo.Items.Add('Todos');

         cbdata.Items.Add('Emissão');
         cbdata.Items.Add('Saída');
         cbdata.Items.Add('Cancelamento');
         cbdata.Text := 'Emissão';
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
         cbcampo.Items.Add('Documento');
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
         cbcampo.Items.Add('Documento');
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
         cbcampo.Items.Add('Tipo');
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
    97: begin
         cbcampo.Items.Add('Pedido');
         cbcampo.Items.Add('Container');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Nº Cliente');
         cbcampo.Items.Add('Cliente');
         cbcampo.Items.Add('Razão Social');
         cbcampo.Items.Add('CNPJ');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Artigo');
         cbcampo.Items.Add('SKU');
         cbcampo.Items.Add('Produto');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('SKU Fornecedor');
         cbcampo.Items.Add('Fornecedor');
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

         APSQ_PED_VEN := IFThen(APSQ_PED_VEN = '','Pedido',APSQ_PED_VEN);
         cbcampo.Text := APSQ_PED_VEN;

         cbdata.Items.Add('Emissão');
         cbdata.Text :=   'Emissão';
       end;
    98: begin
         cbcampo.Items.Add('Artigo');
         cbcampo.Items.Add('SKU');
         cbcampo.Items.Add('Produto');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('SKU Fornecedor');
         cbcampo.Items.Add('Fornecedor');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Grupo');
         cbcampo.Items.Add('Categoria');

         cbdata.Items.Add('Cadastro');
         cbdata.Text :=   'Cadastro';

         APSQ_CAD_PRO := 'Artigo';
         cbcampo.Text :=  APSQ_CAD_PRO;
       end;
   99: begin
         cbcampo.Items.Add('Romaneio');
         cbcampo.Items.Add('Tipo');
         cbcampo.Items.Add('');
         
         cbcampo.Items.Add('Artigo');
         cbcampo.Items.Add('SKU');
         cbcampo.Items.Add('Produto');

         APSQ_ROM_EST := IFThen(APSQ_ROM_EST = EmptyStr,'Romaneio',APSQ_ROM_EST);
         cbcampo.Text := APSQ_ROM_EST;

         cbdata.Items.Add('Emissão');
         cbdata.Text :=   'Emissão';
       end;
  end;
  cbCAMPO.DropDownRows := cbCAMPO.Items.Count;
end;

procedure TFrmPesquisa.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Screen.Cursor := crDefault;
end;

procedure TFrmPesquisa.FormCloseQuery(Sender: TObject;
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

    if (Pos('ARTIGO',CField) > 0) and (RightStr(EDTXT.Text,1) <> '.') then
        EDTXT.Text := EDTXT.Text + '.';

    if Pos('.',EDTXT.Text) = Length(EDTXT.Text) then
    begin
      CField     := 'ARTIGO';
      CWhere     := '=';
      EDTXT.Text := LeftStr(EDTXT.Text,Length(EDTXT.Text) - 1);
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

  case tag of
    1: begin
         if cbCAMPO.Text = 'Referencia' then
            cField := 'CAD_PRO.PRO_CART'
         else if cbCAMPO.Text = 'Produto' then
            cField := 'CAD_PRO.PRO_CPRO'
         else if cbCAMPO.Text = 'Ref. Fornecedor' then
            cField := 'CAD_PRO.PRO_CFOR'
         else if cbCAMPO.Text = 'Descrição' then
            cField := 'CAD_PRO.PRO_DPRO'
         else if cbCAMPO.Text = 'Categoria' then
            cField := 'CAD_PRO.PRO_DCAT'
         else if cbCAMPO.Text = 'Grupo' then
            cField := 'CAD_PRO.PRO_DGRP'
         else if cbCAMPO.Text = 'Coleção' then
            cField := 'CAD_PRO.PRO_DCOL'
         else if cbCAMPO.Text = 'Cor' then
            cField := 'CAD_PRO.PRO_DCOR'
         else if cbCAMPO.Text = 'Status' then
            cField := 'CAD_PRO.PRO_STAV'
         else if cbCAMPO.Text = 'Todos' then
            cField := 'Todos';

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
       end;
    2: begin
         if cbCAMPO.Text = 'Número Pedido' then
            cField := 'ROM_DERO'
         else if cbCAMPO.Text = 'Número Romaneio' then
            cField := 'ROM_CDRO'
         else if cbCAMPO.Text = 'Número Baixa' then
            cField := 'ROM_CDBX'
         else if cbCAMPO.Text = 'Nota Fiscal' then
            cField := 'ROM_CDNF'
         else if cbCAMPO.Text = 'Nome Cliente' then
            cField := 'CAD_CLI.CLI_FANT'
         else if cbCAMPO.Text = 'Código Cliente' then
            cField := 'CAD_CLI.ID'
         else if cbCAMPO.Text = 'C.N.P.J.' then
            cField := 'CAD_CLI.CLI_CNPJ'
         else if cbCAMPO.Text = 'C.P.F.' then
            cField := 'CAD_CLI.CLI_CPF'
         else if cbCAMPO.Text = 'Vendedor' then
            cField := 'CAD_USU.USU_DUSU'
         else if cbCAMPO.Text = 'Representante' then
            cField := 'CAD_REP.REP_FANT'
         else if cbCAMPO.Text = 'Forma de Pagamento' then
            cField := 'TAB_PAG.PAG_DPAG'
         else if cbCAMPO.Text = 'Status' then
            cField := 'ROM_STFI'
         else if cbCAMPO.Text = 'Tipo de Pedido' then
            cField := 'ROM_STPD'
         else if cbCAMPO.Text = 'Tipo de Cobrança' then
            cField := 'ROM_STCO'
         else if cbCAMPO.Text = 'Container' then
            cField := 'ROM_CTNR'
         else if cbCAMPO.Text = 'Transportadora' then
            cField := 'ROM_DTRA'
         else if cbCAMPO.Text = 'Todos' then
            cField := 'Todos';

         if cbDATA.Text = 'Lançamento' then
            cData := 'ROM_DROM'
         else if cbDATA.Text = 'Baixa' then
            cData := 'ROM_DBAI'
         else if cbDATA.Text = 'Cancelamento' then
            cData := 'ROM_DCAN'
         else if cbDATA.Text = 'Alteração' then
            cData := 'ROM_DALT'
         else if cbDATA.Text = 'Emissão NF' then
            cData := 'ROM_DNFS';
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
            cField := 'NFE_CDNF'
         else if cbCAMPO.Text  = 'Pedido' then
            cField := 'NFE_CDPD'
         else if cbCAMPO.Text  = 'Favorecido' then
            cField := 'NFE_DFAV'
         else if cbCAMPO.Text  = 'Transportadora' then
            cField := 'NFE_DTRA'
         else if cbCAMPO.Text  = 'C.F.O.P.' then
            cField := 'NFE_CNAT'
         else if cbCAMPO.Text  = 'Vendedor' then
            cField := 'NFE_DVEN'
         else if cbCAMPO.Text  = 'Representante' then
            cField := 'NFE_DREP'
         else if cbCAMPO.Text  = 'Todos' then
            cField := 'Todos';


         if cbDATA.Text = 'Emissão' then
            cData := 'NFE_DEMI'
         else if cbDATA.Text = 'Saída' then
            cData := 'NFE_DSAI'
         else if cbDATA.Text = 'Cancelamento' then
            cData := 'NFE_DCAN';
       end;
    9: begin
         if cbCAMPO.Text = 'Referencia' then
            cField := 'CAD_PRO.PRO_CART'
         else if cbCAMPO.Text = 'Produto' then
            cField := 'CAD_PRO.PRO_CPRO'
         else if cbCAMPO.Text = 'Ref. Fornecedor' then
            cField := 'CAD_PRO.PRO_CFOR'
         else if cbCAMPO.Text = 'Descrição' then
            cField := 'CAD_PRO.PRO_DPRO'
         else if cbCAMPO.Text = 'Categoria' then
            cField := 'CAD_PRO.PRO_DCAT'
         else if cbCAMPO.Text = 'Grupo' then
            cField := 'CAD_PRO.PRO_DGRP'
         else if cbCAMPO.Text = 'Coleção' then
            cField := 'CAD_PRO.PRO_DCOL';
       end;
    10: begin
         if cbCAMPO.Text = 'Documento' then
            cField := 'FIN_DOCT'
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
            cField := 'ID'
         else if cbCAMPO.Text = 'Número Pedido' then
            cField := 'ROM_DERO'
         else if cbCAMPO.Text = 'Número Baixa' then
            cField := 'ROM_CDBX'
         else if cbCAMPO.Text = 'Nota Fiscal' then
            cField := 'ROM_CDNF'
         else if cbCAMPO.Text = 'Nome Cliente' then
            cField := 'CAD_CLI.CLI_FANT'
         else if cbCAMPO.Text = 'Código Cliente' then
            cField := 'CAD_CLI.ID'
         else if cbCAMPO.Text = 'C.N.P.J.' then
            cField := 'CAD_CLI.CLI_CNPJ'
         else if cbCAMPO.Text = 'C.P.F.' then
            cField := 'CAD_CLI.CLI_CPF'
         else if cbCAMPO.Text = 'Vendedor' then
            cField := 'CAD_USU.USU_DUSU'
         else if cbCAMPO.Text = 'Representante' then
            cField := 'CAD_REP.REP_FANT'
         else if cbCAMPO.Text = 'Forma de Pagamento' then
            cField := 'TAB_PAG.PAG_DPAG'
         else if cbCAMPO.Text = 'Status' then
            cField := 'ROM_STFI'
         else if cbCAMPO.Text = 'Tipo de Pedido' then
            cField := 'ROM_STPD'
         else if cbCAMPO.Text = 'Container' then
            cField := 'ROM_CTNR'
         else if cbCAMPO.Text = 'Transportadora' then
            cField := 'ROM_DTRA'
         else if cbCAMPO.Text = 'Tipo de Cobrança' then
            cField := 'ROM_STCO';

         if cbDATA.Text = 'Lançamento' then
            cData := 'ROM_DROM'
         else if cbDATA.Text = 'Baixa' then
            cData := 'ROM_DBAI'
         else if cbDATA.Text = 'Cancelamento' then
            cData := 'ROM_DCAN'
         else if cbDATA.Text = 'Alteração' then
            cData := 'ROM_DALT'
         else if cbDATA.Text = 'Emissão' then
            cData := 'ROM_DPRI';
       end;
    12: begin
         if cbCAMPO.Text = 'Documento' then
            cField := 'FIN_DOCT'
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
            cField := 'CAD_PRO_ENC.PRO_DMAP'
         else if cbCAMPO.Text = 'Tipo' then
            cField := 'CAD_PRO_ENC.PRO_OPER'
         else if cbCAMPO.Text = 'Container No' then
            cField := 'CAD_PRO_ENC.PRO_CTNR'
         else if cbCAMPO.Text = 'Descrição' then
            cField := 'CAD_PRO.PRO_DPRO'
         else if cbCAMPO.Text = 'Categoria' then
            cField := 'CAD_PRO.PRO_DCAT'
         else if cbCAMPO.Text = 'Grupo' then
            cField := 'CAD_PRO.PRO_DGRP'
         else if cbCAMPO.Text = 'Coleção' then
            cField := 'CAD_PRO.PRO_DCOL';

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
    97: begin
          if cbCAMPO.Text = 'Pedido'  then
             cField := 'PK.DEPK' else

          if cbCAMPO.Text = 'Container' then
             cField := 'PK.CTNR' else

          if cbCAMPO.Text = 'Nº Cliente' then
             cField := 'PK.IDCD' else

          if cbCAMPO.Text = 'Cliente' then
             cField := 'PK.DECD' else

          if cbCAMPO.Text = 'Razão Social' then
             cField := 'PK.RZCD' else

          if cbCAMPO.Text = 'CNPJ' then
             cField := 'PK.CD_CNPJ' else

          if cbCAMPO.Text = 'Artigo' then
             cField := 'CP.ARTIGO' else

          if cbCAMPO.Text = 'SKU' then
             cField := 'CP.SKU' else

          if cbCAMPO.Text = 'Produto' then
             cField := 'CP.DECP' else

          if cbCAMPO.Text = 'SKU Fornecedor' then
             cField := 'CP.CF_SKU' else

          if cbCAMPO.Text = 'Fornecedor' then
             cField := 'CP.CF_SKU' else

          if cbCAMPO.Text = 'B2B' then
             cField := 'PK.API_B2B_DEPK' else

          if cbCAMPO.Text = 'B2C' then
             cField := 'PK.API_B2C_DEPK' else

          if cbCAMPO.Text = 'Grupo Comercial' then
             cField := 'PK.CD_DEGP' else

          if cbCAMPO.Text = 'Cidade' then
             cField := 'PK.CD_LOC_NO' else

          if cbCAMPO.Text = 'UF' then
             cField := 'PK.CD_UF' else

          if cbCAMPO.Text = 'Vendedor' then
             cField := 'PK.DECV' else

          if cbCAMPO.Text = 'Representante' then
             cField := 'PK.DECR' else

          if cbCAMPO.Text = 'Prazo' then
             cField := 'PK.DEPG' else

          if cbCAMPO.Text = 'Tipo de Pedido' then
             cField := 'PK.STPD' else

          if cbCAMPO.Text = 'Tipo de Cobrança' then
             cField := 'PK.STCO' else

          if cbCAMPO.Text = 'Situação' then
             cField := 'PK.DEST';
             cData  := 'CAST(PK.DTCA AS DATE)';
        end;
    98: begin
          if Pos(cbCAMPO.Text,'ArtigoReferenciaReferência') > 0 then
          begin
            cField := 'ARTIGO';
            cWhere := 'LIKE';
          end else
          if cbCAMPO.Text = 'SKU' then
          begin
            cField := 'SKU';
            cWhere := 'LIKE';
          end else
          if cbCAMPO.Text = 'Produto' then
          begin
            cField := 'DECP';
            cWhere := 'CONTAINING';
          end;
          if cbCAMPO.Text = 'SKU Fornecedor' then
          begin
            cField := 'CF_SKU';
            cWhere := 'LIKE';
          end else
          if cbCAMPO.Text = 'Fornecedor' then
          begin
            cField := 'CF_NO';
            cWhere := 'CONTAINING';
          end else
          if cbCAMPO.Text = 'Grupo' then
          begin
            cField := 'DEGRP';
            cWhere := 'CONTAINING';
          end;
          if cbCAMPO.Text = 'Categoria' then
          begin
            cField := 'DECAT';
            cWhere := 'CONTAINING';
          end;

          if cbDATA.Text = 'Cadastro' then
             cData := 'DTCA';
        end;
    99: begin
          if cbCAMPO.Text = 'Romaneio' then
          begin
            cField := 'CDRO';
            cWhere := '=';
          end else
          if cbCAMPO.Text = 'Tipo' then
          begin
            cField := 'DEOP';
            cWhere := '=';
          end else
          if cbCAMPO.Text = 'Artigo' then
          begin
            cField := 'ARTIGO';
            cWhere := 'LIKE';
          end else
          if cbCAMPO.Text = 'SKU' then
          begin
            cField := 'SKU';
            cWhere := 'LIKE';
          end else
          if cbCAMPO.Text = 'Produto' then
          begin
            cField := 'DECP';
            cWhere := 'CONTAINING';
          end else
          if cbCAMPO.Text = 'SKU Fornecedor' then
          begin
            cField := 'CF_SKU';
            cWhere := 'LIKE';
          end else
          if cbCAMPO.Text = 'Fornecedor' then
          begin
            cField := 'CF_NO';
            cWhere := 'CONTAINING';
          end else
          if cbCAMPO.Text = 'Grupo' then
          begin
            cField := 'DEGRP';
            cWhere := 'CONTAINING';
          end;
          if cbCAMPO.Text = 'Categoria' then
          begin
            cField := 'DECAT';
            cWhere := 'CONTAINING';
          end;

          if cbDATA.Text = 'Emissão' then
          cData := 'DTRO';
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

procedure TFrmPesquisa.SIMSaidaClick(Sender: TObject);
begin
  Editado := False;
  Close;
end;

procedure TFrmPesquisa.EDTXTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
     SIMValida.Click;
end;

procedure TFrmPesquisa.EDTXTKeyPress(Sender: TObject; var Key: Char);
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
         97,
         98,
         99: begin
               if Pos(cbCAMPO.Text,'ClienteNome FantasiaRazão SocialVendedorRepresentanteTipo de PedidoTipo de CobrançaSituaçãoGrupo ComercialCidadeUF') > 0 then
                  cbCAMPO.Text := IFThen(TAG = 99,'Romaneio','Pedido');
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
         97,
         98,
         99: begin
               if (((Pos(LeftStr(cbCAMPO.Text,2),'NºNFRO') > 0) or (cbCAMPO.Text = 'Pedido') or (cbCAMPO.Text = 'Romaneio') or (cbCAMPO.Text = 'B2B') or (cbCAMPO.Text = 'B2C')) and
                   ((EDTXT.Text    =  EmptyStr ) or (Length(EDTXT.Text) = 1)))   then
                     cbCAMPO.Text := 'Cliente';
             end;
      end;
    end;
  end;
end;

procedure TFrmPesquisa.dxDT1Change(Sender: TObject);
begin
  dxDT2.Date := RECParametros.DTMES_FIM;
end;

procedure TFrmPesquisa.dxDT1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) and (dxDT1.Date > 0) and (dxDT2.Date > 0) then
      SIMValida.Click;
end;

procedure TFrmPesquisa.FormResize(Sender: TObject);
begin
  if Self <> Nil then
     Paint;
end;

procedure TFrmPesquisa.FormPaint(Sender: TObject);
begin
  Self.Top := Self.Top - 50;
end;

end.
