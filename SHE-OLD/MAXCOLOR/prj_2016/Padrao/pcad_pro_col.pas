unit pcad_pro_col;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr6, dxExEdtr, ImgList, IBDatabase, DB, IBCustomDataSet,
  IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls,  ComCtrls,
  dxDBTLCl, dxGrClms, rxSpeedbar;

type
  Tfrmcad_pro_col = class(Tfrmpadr6)
    cadastroID: TIntegerField;
    cadastroPRO_CART: TIBStringField;
    cadastroPRO_CPRO: TIBStringField;
    cadastroPRO_DPRO: TIBStringField;
    cadastroPRO_DCOR: TIBStringField;
    cadastroPRO_DESC: TIBStringField;
    cadastroPRO_DUNI: TIBStringField;
    cadastroPRO_RUNI: TIBStringField;
    cadastroPRO_CCLF: TIBStringField;
    cadastroPRO_PREC: TFloatField;
    cadastroPRO_QEST: TIBBCDField;
    cadastroPRO_REST: TIntegerField;
    cadastroPRO_QRES: TIBBCDField;
    cadastroPRO_RRES: TIntegerField;
    cadastroPRO_QDIS: TIBBCDField;
    cadastroPRO_RDIS: TIntegerField;
    cadastroPRO_QDEF: TIBBCDField;
    cadastroPRO_RDEF: TIntegerField;
    cadastroPRO_QPRG: TIBBCDField;
    cadastroPRO_RPRG: TIntegerField;
    cadastroPRO_QPRC: TIBBCDField;
    cadastroPRO_RPRC: TIntegerField;
    cadastroPRO_QPRD: TIBBCDField;
    cadastroPRO_RPRD: TIntegerField;
    cadastroPRO_PPRC: TIBBCDField;
    cadastroPRO_PDIS: TIBBCDField;
    cadastroPRO_COMP: TIBStringField;
    cadastroPRO_LARG: TIBBCDField;
    cadastroPRO_FOTO: TBlobField;
    cadastroPRO_CDEP: TIntegerField;
    cadastroPRO_PECA: TIntegerField;
    cadastroPRO_DEMP: TIBStringField;
    cadastroPRO_DMAP: TIBStringField;
    cadastroPRO_CTNR: TIBStringField;
    cadastroPRO_LOTE: TIBStringField;
    cadastroPRO_DFOR: TIBStringField;
    dbgConsultaPRO_CART: TdxDBGridMaskColumn;
    dbgConsultaPRO_DPRO: TdxDBGridMaskColumn;
    dbgConsultaPRO_DCOR: TdxDBGridMaskColumn;
    dbgConsultaPRO_DUNI: TdxDBGridMaskColumn;
    dbgConsultaPRO_QEST: TdxDBGridCurrencyColumn;
    dbgConsultaPRO_DFOR: TdxDBGridMaskColumn;
    siLIM: TSpeedItem;
    OpenDialog: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure siLIMClick(Sender: TObject);
    procedure siREFClick(Sender: TObject);
  private
    { Private declarations }
    procedure ABRE_ARQUIVO;
    procedure ABRE_TABELA;
  public
    { Public declarations }
  end;

var
  frmcad_pro_col: Tfrmcad_pro_col;

implementation

uses p_funcoes, uPrincipal;

{$R *.dfm}

procedure Tfrmcad_pro_col.ABRE_ARQUIVO;
begin
end;

procedure Tfrmcad_pro_col.ABRE_TABELA;
begin
  if not tSHEILD.Active then tSHEILD.StartTransaction;

  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_PRO_EST');
    SelectSQL.Add('ORDER BY PRO_CART,PRO_DCOR');
    Open;
  end;
end;

procedure Tfrmcad_pro_col.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if frmcad_pro_col <> nil then
  begin
    frmcad_pro_col.Release;
    frmcad_pro_col := nil;
  end;
end;

procedure Tfrmcad_pro_col.FormCreate(Sender: TObject);
begin
  ABRE_TABELA;

  Self.top    := 0;
  Self.left   := 0;
  Self.Height := frmprincipal.pnCustomize.Height-4;
  Self.Width  := TELA_WIDTH;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
    self.Height := screen.Height;
    self.Width  :=  screen.Width;

    if frmprincipal.pnbot.Visible then
    self.Height := self.Height - frmprincipal.pnbot.Height;
  end;
end;

procedure Tfrmcad_pro_col.siLIMClick(Sender: TObject);
begin
  if yesno(handle,'Confirma Limpeza ?') = mrno then
  abort;

  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM CAD_PRO_EST');
    ExecSQL;

    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_PRO_EST');
    SelectSQL.Add('ORDER BY PRO_CART,PRO_DCOR');
    Open;
  end;  
end;

procedure Tfrmcad_pro_col.siREFClick(Sender: TObject);
begin
  if opendialog.Execute then
  ABRE_ARQUIVO;
end;

end.
