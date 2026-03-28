unit ptab_nat;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, IBStoredProc, IBDatabase,
  DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ComCtrls, ExtCtrls, dxDBTLCl, dxGrClms, IBEvents, dxExEdtr,
  StdCtrls, rxSpeedbar, cxGraphics, IBSQL, dxPageControl, cxControls,
  dxStatusBar, pConsulta, ActnList;

type
  Tfrmtab_nat = class(TFrmConsulta)
    cadastroID: TIntegerField;
    cadastroNAT_CNAT: TIBStringField;
    cadastroNAT_DNAT: TIBStringField;
    cadastroNAT_OPER: TIBStringField;
    cadastroNAT_BIPI: TIBStringField;
    cadastroNAT_MATE: TIBStringField;
    cadastroNAT_TIPO: TIBStringField;
    cadastroNAT_CSTI: TIBStringField;
    cadastroNAT_PIPP: TIBBCDField;
    cadastroNAT_CSTP: TIBStringField;
    cadastroNAT_PIPC: TIBBCDField;
    cadastroNAT_CSTC: TIBStringField;
    cadastroNAT_STA: TIBStringField;
    dbgConsultaNAT_CNAT: TdxDBGridMaskColumn;
    dbgConsultaNAT_DNAT: TdxDBGridMaskColumn;
    dbgConsultaNAT_OPER: TdxDBGridMaskColumn;
    dbgConsultaNAT_TIPO: TdxDBGridMaskColumn;
    cadastroNAT_CCST: TIBStringField;
    cadastroNAT_PENF: TIBBCDField;
    cadastroNAT_FRET: TIBStringField;
    cadastroNAT_OBSE: TMemoField;
    cadastroNAT_CSTS: TIBStringField;
    cadastroNAT_CSTA: TIBStringField;
    dbgConsultaNAT_CSTI: TdxDBGridMaskColumn;
    dbgConsultaNAT_PIPP: TdxDBGridMaskColumn;
    dbgConsultaNAT_CSTP: TdxDBGridMaskColumn;
    dbgConsultaNAT_PIPC: TdxDBGridMaskColumn;
    dbgConsultaNAT_CSTC: TdxDBGridMaskColumn;
    dbgConsultaNAT_CCST: TdxDBGridMaskColumn;
    dbgConsultaNAT_CSTS: TdxDBGridMaskColumn;
    cadastroNAT_INDT: TIBStringField;
    cadastroNAT_CFOP: TIBStringField;
    dbgConsultaNAT_CFOP: TdxDBGridMaskColumn;
    CadastroNAT_INV: TIBStringField;
    CadastroNAT_FATU: TIBStringField;
    CadastroNAT_TPNF: TIBStringField;
    CadastroNAT_REDBC: TIBBCDField;
    CadastroCENQ: TIBStringField;
    DBGConsultaCENQ: TdxDBGridMaskColumn;
    CadastroNAT_CSTI0: TIBStringField;
    CadastroNAT_PIPP_SIM: TIBBCDField;
    CadastroNAT_PIPC_SIM: TIBBCDField;
    CadastroNAT_PIPP_REAL: TIBBCDField;
    CadastroNAT_PIPC_REAL: TIBBCDField;
    procedure FormCreate(Sender: TObject);
    procedure ACTMEAppendExecute(Sender: TObject);
    procedure ACTMEEditExecute(Sender: TObject);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtab_nat: Tfrmtab_nat;

implementation

uses uPrincipal, ptab_nat_edi;

{$R *.dfm}

procedure Tfrmtab_nat.FormCreate(Sender: TObject);
begin
  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'FIS_CFOP'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Tabelas';
  REC_SHE_DEF.GReferencia := 'CFOP';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
  inherited;

  with cadastro do
  begin
    SQL.Clear;
    UnPrepare;
    SQL.Add('SELECT * FROM TAB_NAT');
    SQL.Add('WHERE    ID > 0');
    SQL.Add('ORDER BY NAT_CNAT');
    Prepare;
    Open;
  end;
end;

procedure Tfrmtab_nat.ACTMEAppendExecute(Sender: TObject);
begin
  inherited;

  frmtab_nat_edi := TFrmtab_nat_edi.Create(Nil,0);
  try frmtab_nat_edi.ShowModal;
  finally FreeAndNil(frmtab_nat_edi);
  end;
end;

procedure Tfrmtab_nat.ACTMEEditExecute(Sender: TObject);
begin
  inherited;

  frmtab_nat_edi := TFrmtab_nat_edi.Create(Nil,CadastroID.AsInteger);
  try frmtab_nat_edi.ShowModal;
  finally FreeAndNil(frmtab_nat_edi);
  end;
end;

procedure Tfrmtab_nat.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;

  if ANode.Selected then
  begin
    AColor      := $00750000;//$00400000;
    AFont.Color := clHighlightText;
  end;

  if ASelected then
  begin
    AColor      := clHighlight; //$00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;

end.
