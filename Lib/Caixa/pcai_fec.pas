unit pcai_fec;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, StdCtrls, dxDBTLCl, dxGrClms, dxExEdtr, rxSpeedbar,
  IBEvents, IBSQL, ActnList, cxGraphics, rxAnimate, rxGIFCtrl, cxControls,
  dxStatusBar;

type
  Tfrmcai_fec = class(Tfrmpadr3)
    GroupBox1: TGroupBox;
    dbgConsulta: TdxDBGrid;
    cadastro: TIBQuery;
    dtscadastro: TDataSource;
    cadastroID: TIntegerField;
    cadastroCAI_CDEP: TIntegerField;
    cadastroCAI_CDCX: TSmallintField;
    cadastroCAI_DECX: TIBStringField;
    cadastroCAI_DABR: TDateField;
    cadastroCAI_HABR: TTimeField;
    cadastroCAI_VABR: TIBBCDField;
    cadastroCAI_DFEC: TDateField;
    cadastroCAI_HFEC: TTimeField;
    cadastroCAI_VFEC: TIBBCDField;
    cadastroCAI_CUSU: TIntegerField;
    cadastroCAI_IP: TIBStringField;
    cadastroCAI_TERM: TIBStringField;
    cadastroCAI_CRED: TIBBCDField;
    cadastroCAI_DEBI: TIBBCDField;
    cadastroCAI_SATU: TIBBCDField;
    dbgConsultaCAI_DECX: TdxDBGridMaskColumn;
    dbgConsultaCAI_DABR: TdxDBGridDateColumn;
    dbgConsultaCAI_HABR: TdxDBGridTimeColumn;
    dbgConsultaCAI_VABR: TdxDBGridMaskColumn;
    dbgConsultaCAI_IP: TdxDBGridMaskColumn;
    dbgConsultaCAI_CRED: TdxDBGridMaskColumn;
    dbgConsultaCAI_DEBI: TdxDBGridMaskColumn;
    dbgConsultaCAI_SATU: TdxDBGridMaskColumn;
    cadastroUSU_DUSU: TIBStringField;
    dbgConsultaUSU_DUSU: TdxDBGridMaskColumn;
    cadastroFANTASIA: TIBStringField;
    dbgConsultaFANTASIA: TdxDBGridMaskColumn;
    ConsultaAux: TIBQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ACTMPPostExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcai_fec: Tfrmcai_fec;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure Tfrmcai_fec.FormCreate(Sender: TObject);
begin
  { FORM }
  REC_SHE_DEF.FPosition := Self.Position; { Posição Inicial }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Desktop    }

  { EVENTOS }
  REC_SHE_DEF.FB_Event := 'Caixa'; { Nome }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := '';
  REC_SHE_DEF.GReferencia := '';
  REC_SHE_DEF.GRegra      := '';
  REC_SHE_DEF.GAdmin   := True;    { Grant   }
  inherited;

  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAI_LAF.*,FANTASIA,CAD_USU.USU_DUSU');
    SQL.Add('FROM   CAI_LAF,TAB_PAR_SIS AS EP,CAD_USU');
    SQL.Add('WHERE  CAI_LAF.CAI_CDEP = EP.ID');
    SQL.Add('AND    CAI_LAF.CAI_CUSU = CAD_USU.USU_CUSU');
    SQL.Add('AND    CAI_LAF.CAI_DFEC IS NULL');
    SQL.Add('AND    CAI_LAF.CAI_CDEP = '''+RECParametros.EP_ID+'''');
    Open;
  end;
end;

procedure Tfrmcai_fec.FormDestroy(Sender: TObject);
begin
  bExecEvent('Caixa');
  inherited;

  frmcai_fec := Nil;
end;

procedure Tfrmcai_fec.ACTMPPostExecute(Sender: TObject);
begin
  ACTMPPost.HelpKeyword := 'Confirma Fechamento de caixa ?' + #13 + #13 +
                           'Caixa '     + cadastroCAI_DECX.AsString + #13 +
                           'Aberto em ' + formatDateTime('dd/mm/yy',cadastroCAI_DABR.AsDateTime) + ' ' + formatDateTime('hh:mm:ss',cadastroCAI_HABR.AsDateTime);
  inherited;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(CAI_CRED),SUM(CAI_DEBI) FROM CAI_MOV');
    SQL.Add('WHERE  CAI_CCAB = '''+cadastroID.AsString+'''');
    SQL.Add('AND    CAI_CTSR <> 533');
    Open;
  end;

  try
    oOTransact(TEdicao,ltRead_Only);

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;

      SQL.Add('UPDATE CAI_LAF');
      SQL.Add('SET    CAI_DFEC = '''+formatDateTime('mm/dd/yy',RECParametros.SHE_DATA)+''',');
      SQL.Add('       CAI_HFEC = '''+formatDateTime('hh:mm:ss',time)+''',');
      if consulta.Fields[0].AsFloat > 0 then
      SQL.Add('       CAI_SATU = '''+oStrTran(consulta.Fields[0].AsString,',','.')+'''') else
      SQL.Add('       CAI_SATU = 0');
      SQL.Add('WHERE  ID       = '''+cadastroID.AsString+'''');

      ExecQuery;
    end;

    oCTransact(TEdicao,ltRead_Only_Release_Commit);
    oAviso(Application.Handle,'Registro(s) atualizado(s) com sucesso !');

  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRead_Only_Release_Rollback);
      oException(Nil,'Falha ao tentar concluir registro !' + #13 +
                     'Erro: ' + E.Message);
    end;
  end;

  ACTEveExecute.Execute;
  Close;
end;

end.
