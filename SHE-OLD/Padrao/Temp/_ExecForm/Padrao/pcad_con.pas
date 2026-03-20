unit pcad_con;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBEvents, ImgList, IBStoredProc,
  IBDatabase, DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, ExtCtrls,  ComCtrls, dxDBTLCl, dxGrClms, dxPageControl,
  StdCtrls, DBCtrls, dxEditor, dxExEdtr, dxEdLib, dxDBELib, rxSpeedbar,
  cxGraphics, IBSQL, cxControls, dxStatusBar, pConsulta, ActnList;

type
  Tfrmcad_con = class(TFrmConsulta)
    cadastroID: TIntegerField;
    cadastroCON_CTNR: TIBStringField;
    cadastroCON_DTNR: TIBStringField;
    cadastroCON_DCAD: TDateField;
    cadastroCON_DCOL: TDateField;
    cadastroCON_DCOP: TDateField;
    cadastroCON_PSBR: TIBBCDField;
    cadastroCON_PSLQ: TIBBCDField;
    cadastroCON_VICMS: TIBBCDField;
    cadastroCON_VIPI: TIBBCDField;
    cadastroCON_VPIS: TIBBCDField;
    cadastroCON_VCOFINS: TIBBCDField;
    cadastroCON_VFRETE: TIBBCDField;
    cadastroCON_VDESP: TIBBCDField;
    cadastroCON_VII: TIBBCDField;
    cadastroCON_VEXTRA: TIBBCDField;
    cadastroCON_VLI: TIBBCDField;
    cadastroCON_VMULTALI: TIBBCDField;
    cadastroCON_VTRANSP: TIBBCDField;
    cadastroCON_VARMAZEN: TIBBCDField;
    cadastroCON_VHONO: TIBBCDField;
    cadastroCON_VOUTRO: TIBBCDField;
    cadastroCON_VCOL: TIBBCDField;
    cadastroCON_VCOP: TIBBCDField;
    cadastroCON_OBSE: TMemoField;
    cadastroCON_STA: TIBStringField;
    dbgConsultaCON_CTNR: TdxDBGridMaskColumn;
    dbgConsultaCON_DCAD: TdxDBGridDateColumn;
    dbgConsultaCON_PSBR: TdxDBGridMaskColumn;
    dbgConsultaCON_PSLQ: TdxDBGridMaskColumn;
    dbgConsultaCON_STA: TdxDBGridMaskColumn;
    cadastroCON_CEMP: TIntegerField;
    cadastroCON_VDUMP: TIBBCDField;
    CadastroCON_VCUSTO: TIBBCDField;
    DBGConsultaCON_VCUSTO: TdxDBGridCurrencyColumn;
    CadastroFANTASIA: TIBStringField;
    DBGConsultaFANTASIA: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure SIEIncluiClick(Sender: TObject);
    procedure SIEAlteraClick(Sender: TObject);
    procedure CadastroAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure _Edicao(AEdicao: Word);
  public
    { Public declarations }
    procedure _WM_AFTER_ACTIVATE  (var Msg: TMessage); message WM_AFTER_ACTIVATE;
  end;

var
  frmcad_con: Tfrmcad_con;

implementation

uses uPrincipal, pcad_con_edi;

{$R *.dfm}

procedure TFrmCAD_CON._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
  inherited;
  with Cadastro do
  begin
    SQL.Clear;
    UnPrepare;
    SQL.Add('SELECT   CAD_CON.*,EP.FANTASIA');
    SQL.Add('FROM     CAD_CON,TAB_PAR_SIS AS EP');
    SQL.Add('WHERE    CAD_CON.CON_CEMP = EP.ID');
    SQL.Add('ORDER BY CAD_CON.ID DESC');
    Prepare;
    Open;
  end;
end;

procedure Tfrmcad_con.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CONTAINERS'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Container';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmcad_con.SIEIncluiClick(Sender: TObject);
begin
  inherited;
  _Edicao(0);
end;

procedure Tfrmcad_con.SIEAlteraClick(Sender: TObject);
begin
  inherited;
  _Edicao(1);
end;

procedure Tfrmcad_con._Edicao(AEdicao: Word);
begin
  frmcad_con_edi     := TFrmcad_con_edi.Create(Self);
  frmcad_con_edi.Tag := AEdicao;
  try frmcad_con_edi.ShowModal;
  finally FreeAndNil(frmcad_con_edi);
  end;
end;

procedure Tfrmcad_con.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DBGConsultaCON_CTNR.Field.FocusControl;
end;

end.
