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
    procedure ACTMEAppendExecute(Sender: TObject);
    procedure ACTMEEditExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcad_con: Tfrmcad_con;

implementation

uses uPrincipal, pcad_con_edi;

{$R *.dfm}

procedure Tfrmcad_con.FormCreate(Sender: TObject);
begin
  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_CTNR_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Cadastro';
  REC_SHE_DEF.GReferencia := 'Containers';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
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

procedure Tfrmcad_con.ACTMEAppendExecute(Sender: TObject);
begin
  inherited;

  frmcad_con_edi := TFrmcad_con_edi.Create(Nil,0);
  try frmcad_con_edi.ShowModal;
  finally FreeAndNil(frmcad_con_edi);
  end;
end;

procedure Tfrmcad_con.ACTMEEditExecute(Sender: TObject);
begin
  inherited;

  frmcad_con_edi := TFrmcad_con_edi.Create(Nil,CadastroID.AsInteger);
  try frmcad_con_edi.ShowModal;
  finally FreeAndNil(frmcad_con_edi);
  end;
end;

end.
