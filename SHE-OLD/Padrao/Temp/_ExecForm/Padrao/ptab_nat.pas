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
    dbgConsultaNAT_CSTA: TdxDBGridMaskColumn;
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
    procedure SIEIncluiClick(Sender: TObject);
    procedure SIEAlteraClick(Sender: TObject);
  private
    { Private declarations }
    procedure _Edicao(AEdicao: Word);
  public
    { Public declarations }

    procedure _WM_AFTER_ACTIVATE(var Msg: TMessage); message WM_AFTER_ACTIVATE;
  end;

var
  frmtab_nat: Tfrmtab_nat;

implementation

uses uPrincipal, ptab_nat_edi;

{$R *.dfm}

procedure Tfrmtab_nat._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
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

procedure Tfrmtab_nat.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'FIS_CFOP'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GAdmin := True; { Grant }
  inherited;
end;

procedure Tfrmtab_nat.SIEIncluiClick(Sender: TObject);
begin
  _Edicao(0);
end;

procedure Tfrmtab_nat.SIEAlteraClick(Sender: TObject);
begin
  inherited;
  _Edicao(1);
end;

procedure Tfrmtab_nat._Edicao(AEdicao: Word);
begin
  frmtab_nat_edi     := TFrmtab_nat_edi.Create(Self);
  frmtab_nat_edi.Tag := AEdicao;
  try frmtab_nat_edi.ShowModal;
  finally FreeAndNil(frmtab_nat_edi);
  end;
end;

end.
