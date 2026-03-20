unit pcai_fec;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, StdCtrls, dxDBTLCl, dxGrClms, dxExEdtr, rxSpeedbar,
  IBEvents, IBSQL, ActnList;

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
    procedure ACTMPostExecute(Sender: TObject);
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
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAIXA'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Caixa';
  REC_SHE_DEF.GReferencia := 'Fechamento';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
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
  inherited;
  
  frmcai_fec := Nil;
  bExecEvent('Caixa');
end;

procedure Tfrmcai_fec.ACTMPostExecute(Sender: TObject);
begin
  inherited;
  if oYesNo(handle,'Confirma o fechamento do caixa ?'+#13+#13+'Empresa: '+cadastroFANTASIA.AsString
                                                    +#13+'Caixa      : ' +cadastroCAI_DECX.AsString+' - '+'Abertura: '+formatDateTime('dd/mm/yy',cadastroCAI_DABR.AsDateTime)+' '+formatDateTime('hh:mm:ss',cadastroCAI_HABR.AsDateTime)
                                                    +#13+'Usuário  : '   +cadastroUSU_DUSU.AsString) = mrno then
  Abort;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(CAI_CRED),SUM(CAI_DEBI) FROM CAI_MOV');
    SQL.Add('WHERE  CAI_CCAB = '''+cadastroID.AsString+'''');
    SQL.Add('AND    CAI_CTSR <> 533');
    Open;
  end;

  with ConsultaAux do
  begin
    SQL.Clear;
    SQL.Add('UPDATE CAI_LAF');
    SQL.Add('SET    CAI_DFEC = '''+formatDateTime('mm/dd/yy',RECParametros.SHE_DATA)+''',');
    SQL.Add('       CAI_HFEC = '''+formatDateTime('hh:mm:ss',time)+''',');
    if consulta.Fields[0].AsFloat > 0 then
    SQL.Add('       CAI_SATU = '''+oStrTran(consulta.Fields[0].AsString,',','.')+'''') else
    SQL.Add('       CAI_SATU = 0');
    SQL.Add('WHERE  ID       = '''+cadastroID.AsString+'''');
    ExecSQL;
  end;

  oCTransact(IBTra);
  REC_SHE_DEF.Editing := False;
  ACTExecEvent.Execute;
  Close;
end;

end.
