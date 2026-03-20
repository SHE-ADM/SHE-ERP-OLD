unit pPesquisaLogradouros;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefaultConsulta, dxExEdtr, cxGraphics, dxBar, ImgList, IBQuery,
  ActnList, dxDockControl, dxBarExtItems, IBEvents, DB, IBCustomDataSet,
  IBStoredProc, IBSQL, IBDatabase, cxControls, dxStatusBar, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDockPanel, ExtCtrls, math, StrUtils;

type
  TFrmPesquisaLogradouros = class(TFrmDefaultConsulta)
    DBGConsultaTIPO: TdxDBGridMaskColumn;
    DBGConsultaLOGRADOURO: TdxDBGridMaskColumn;
    DBGConsultaCEP: TdxDBGridMaskColumn;
    DBGConsultaCOMPLEMENTO: TdxDBGridMaskColumn;
    DBGConsultaBAIRRO: TdxDBGridMaskColumn;
    DBGConsultaCIDADE: TdxDBGridMaskColumn;
    DBGConsultaUF: TdxDBGridMaskColumn;
    CadastroID: TLargeintField;
    CadastroTIPO: TIBStringField;
    CadastroLOGRADOURO: TIBStringField;
    CadastroLOGRADOURO_ABREV: TIBStringField;
    CadastroCEP: TIBStringField;
    CadastroCOMPLEMENTO: TIBStringField;
    CadastroBAIRRO: TIBStringField;
    CadastroBAIRRO_ABREV: TIBStringField;
    CadastroCIDADE: TIBStringField;
    CadastroCIDADE_ABREV: TIBStringField;
    CadastroCMUN: TIBStringField;
    CadastroUF: TIBStringField;
    BLBPesquisaCep: TdxBarLargeButton;
    BLBPesquisaLogradouro: TdxBarLargeButton;
    BLBPesquisaBairro: TdxBarLargeButton;
    BLBPesquisaCidade: TdxBarLargeButton;
    ACTPesquisaCep: TAction;
    ACTPesquisaLogradouro: TAction;
    ACTPesquisaBairro: TAction;
    ACTPesquisaCidade: TAction;
    CadastroC_ID: TIntegerField;
    DBGConsultaC_ID: TdxDBGridColumn;
    CadastroC_ABREV: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BEPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACTPesquisa_RapidaExecute(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure CadastroCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure _Pesquisa;
    procedure _Saida;
  public
    { Public declarations }
  end;

var
  FrmPesquisaLogradouros: TFrmPesquisaLogradouros;

implementation

{$R *.dfm}

procedure TFrmPesquisaLogradouros.FormCreate(Sender: TObject);
begin
  { ADMIN }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM MANAGER }
  REC_SHE_DEF.GAdmin := True; { Grant   }
  REC_SHE_DEF.Id     := -3;   { Grid Focus }
  inherited;
end;

procedure TFrmPesquisaLogradouros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  REC_SHE_DEF.Selected := (REC_SHE_DEF.ID > 0);
  inherited;
end;

procedure TFrmPesquisaLogradouros.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
     _Saida
  else
     inherited;
end;

procedure TFrmPesquisaLogradouros.BEPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_return then _Pesquisa;
end;

procedure TFrmPesquisaLogradouros.ACTPesquisa_RapidaExecute(
  Sender: TObject);
begin
  inherited; _Pesquisa;
end;

procedure TFrmPesquisaLogradouros._Pesquisa;
begin
  if BEPesquisa.Text <> EmptyStr then
     try
       with Cadastro do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT * FROM VW_TAB_CEP');
         SQL.Add('WHERE ');

         if BBPesquisa.Caption = 'CEP'        then SQL.Add('CEP        = '''+BEPesquisa.Text+'''') else
         if BBPesquisa.Caption = 'Logradouro' then SQL.Add('LOGRADOURO CONTAINING '''+BEPesquisa.Text+'''') else
         if BBPesquisa.Caption = 'Bairro'     then SQL.Add('BAIRRO     CONTAINING '''+BEPesquisa.Text+'''') else
         if BBPesquisa.Caption = 'Cidade'     then SQL.Add('CIDADE     CONTAINING '''+BEPesquisa.Text+'''') else

         if  oBSONumero(LeftStr(BEPesquisa.Text,5)) then
             SQL.Add('CEP = '''+BEPesquisa.Text+'''')
         else
             SQL.Add('LOGRADOURO CONTAINING '''+BEPesquisa.Text+'''');

         SQL.Add('ORDER BY LOGRADOURO');
         Open;
       end;

       if Cadastro.Eof then
          oAviso(Self.Handle,BBPesquisa.Caption+' não Encontrado !');
     finally
       BEPesquisa.Text    := EmptyStr;
       DPConsulta.Caption := 'Logradouro(s) Encontrado(s).';
       DBGConsulta.SetFocus;
     end;
end;

procedure TFrmPesquisaLogradouros._Saida;
begin
  if CadastroId.AsInteger > 0 then
  begin
    REC_SHE_DEF.Selected := (CadastroId.AsInteger > 0);
    Close;
  end;  
end;

procedure TFrmPesquisaLogradouros.DBGConsultaCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
     if ANode.Values[DBGConsultaC_ID.Index] <> Null then
     begin
       if ANode.Values[DBGConsultaC_ID.Index] mod 2 <> 0 then
          AColor := clWhite;

       if (AColor = clWhite) and (AFont.Color = clWhite) then
           AFont.Color := clBlack;
     end;
end;

procedure TFrmPesquisaLogradouros.CadastroCalcFields(DataSet: TDataSet);
begin
  CadastroC_ID.Value    := Cadastro.RecNo;
  CadastroC_ABREV.Value := CadastroLogradouro_Abrev.AsString+' '+CadastroBairro_Abrev.AsString+' '+CadastroCidade_Abrev.AsString;
end;

end.
