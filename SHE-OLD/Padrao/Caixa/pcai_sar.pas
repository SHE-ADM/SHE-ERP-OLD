unit pcai_sar;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, IBStoredProc, IBDatabase,
  DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls,  ComCtrls, dxDBTLCl, dxGrClms, IBEvents, dxExEdtr,
  StdCtrls, rxSpeedbar, cxGraphics, IBSQL, dxPageControl, cxControls,
  dxStatusBar, pConsulta, ActnList;

type
  Tfrmcai_sar = class(TFrmConsulta)
    cadastroID: TIntegerField;
    cadastroCAI_CCAB: TIntegerField;
    cadastroCAI_CTSR: TIntegerField;
    cadastroCAI_DESC: TIBStringField;
    cadastroCAI_DOCT: TIBStringField;
    cadastroCAI_DCAD: TDateField;
    cadastroCAI_HCAD: TTimeField;
    cadastroCAI_SANT: TIBBCDField;
    cadastroCAI_CRED: TIBBCDField;
    cadastroCAI_DEBI: TIBBCDField;
    cadastroCAI_SATU: TIBBCDField;
    cadastroCAI_CONC: TSmallintField;
    dbgConsultaCAI_DESC: TdxDBGridMaskColumn;
    dbgConsultaCAI_DOCT: TdxDBGridMaskColumn;
    dbgConsultaCAI_DCAD: TdxDBGridDateColumn;
    dbgConsultaCAI_HCAD: TdxDBGridTimeColumn;
    dbgConsultaCAI_CRED: TdxDBGridMaskColumn;
    dbgConsultaCAI_DEBI: TdxDBGridMaskColumn;
    cadastroCAI_CDBX: TIntegerField;
    cadastroCAI_BCON: TIntegerField;
    cadastroCAI_DCON: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure ACTEAppendExecute(Sender: TObject);
    procedure ACTEEditExecute(Sender: TObject);
    procedure ACTEDeleteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcai_sar: Tfrmcai_sar;

implementation

uses uPrincipal, bPrincipal, pcai_sar_edi;

{$R *.dfm}

procedure Tfrmcai_sar.FormCreate(Sender: TObject);
begin
  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAIXA'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Caixa';
  REC_SHE_DEF.GReferencia := 'Sangrias';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
  inherited;

  with cadastro do
  begin
    SQL.Clear;
    UnPrepare;
    SQL.Add('SELECT * FROM CAI_MOV');
    SQL.Add('WHERE    CAI_CCAB = '''+RECParametros.CDCX+'''');
    SQL.Add('ORDER BY ID');
    Prepare;
    Open;
  end;
end;

procedure Tfrmcai_sar.ACTEAppendExecute(Sender: TObject);
begin
  bExecEvent('Caixa',lwShowWarning);
    
  frmcai_sar_edi := Tfrmcai_sar_edi.Create(Nil);
  frmcai_sar_edi.cai_mov.Close;
  frmcai_sar_edi.cai_mov.Params[0].Value := cadastroID.AsInteger;
  frmcai_sar_edi.cai_mov.Open;
  try
    frmcai_sar_edi.edcdcx.Text := RECParametros.CDCX;
    frmcai_sar_edi.ShowModal;
  finally
    freeAndNil(frmcai_sar_edi);
  end;
end;

procedure Tfrmcai_sar.ACTEEditExecute(Sender: TObject);
begin
  frmcai_sar_edi := Tfrmcai_sar_edi.Create(Nil);

  frmcai_sar_edi.cai_mov.Close;
  frmcai_sar_edi.cai_mov.Params[0].Value := cadastroID.AsInteger;
  frmcai_sar_edi.cai_mov.Open;

  try
    frmcai_sar_edi.edcdcx.Text := cadastroCAI_CCAB.AsString;
    frmcai_sar_edi.edcdbx.Text := cadastroCAI_CDBX.AsString;
    frmcai_sar_edi.edid.Text   := cadastroID.AsString;
    frmcai_sar_edi.Tag         := 1;
    frmcai_sar_edi.ShowModal;
  finally
    freeAndNil(frmcai_sar_edi);
  end;
end;

procedure Tfrmcai_sar.ACTEDeleteExecute(Sender: TObject);
begin
  if oYesNo(handle,'Confirma Exclusão ?') = mrNo then
  Abort;

  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAI_MOV');
      SQL.Add('WHERE  ID = '''+CadastroId.AsString+'''');
      ExecQuery;
    end;
    oCTransact(TEdicao);
  except
    ;
  end;
end;

end.
