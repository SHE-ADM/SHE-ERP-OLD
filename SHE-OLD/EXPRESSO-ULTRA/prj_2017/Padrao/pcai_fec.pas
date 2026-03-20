unit pcai_fec;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, StdCtrls, dxDBTLCl, dxGrClms, dxExEdtr, rxSpeedbar,
  IBEvents, IBSQL;

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
    cadastroPAR_FANT: TIBStringField;
    cadastroUSU_DUSU: TIBStringField;
    dbgConsultaPAR_FANT: TdxDBGridMaskColumn;
    dbgConsultaUSU_DUSU: TdxDBGridMaskColumn;
    Aux: TIBQuery;
    procedure siSAVClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcai_fec: Tfrmcai_fec;

implementation

uses uPrincipal, bDados;

{$R *.dfm}

procedure Tfrmcai_fec.siSAVClick(Sender: TObject);
begin
  if oYesNo(handle,'Confirma o fechamento do caixa ?'+#13+#13+'Empresa: '  +cadastroPAR_FANT.AsString
                                                    +#13+'Caixa      : '  +cadastroCAI_DECX.AsString+' - '+'Abertura: '+formatDateTime('dd/mm/yy',cadastroCAI_DABR.AsDateTime)+' '+formatDateTime('hh:mm:ss',cadastroCAI_HABR.AsDateTime)
                                                    +#13+'Usuário  : '+cadastroUSU_DUSU.AsString) = mrno then
     abort;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(CAI_CRED),SUM(CAI_DEBI) FROM CAI_MOV');
    SQL.Add('WHERE  CAI_CCAB = '''+cadastroID.AsString+'''');
    Open;
  end;

  with Aux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CAI_LAF');
    SQL.Add('SET    CAI_DFEC = '''+formatDateTime('mm/dd/yy',strtodate(SLPrincipal.Values['data_sistema']))+''',');
    SQL.Add('       CAI_HFEC = '''+formatDateTime('hh:mm:ss',time)+''',');
    if consulta.Fields[0].AsFloat > 0 then
    SQL.Add('       CAI_SATU = '''+oStrTran(consulta.Fields[0].AsString,',','.')+'''') else
    SQL.Add('       CAI_SATU = 0');
    SQL.Add('WHERE  ID       = '''+cadastroID.AsString+'''');
    ExecSQL;
  end;
  IBTra.CommitRetaining;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAST (''NOW'' AS TIMESTAMP) as DATA FROM RDB$DATABASE');
    Open;
    SLPrincipal.Values['data_caixa'] := formatDateTime('dd/mm/yy',Fields[0].AsDateTime);
  end;

  close;
end;

procedure Tfrmcai_fec.FormCreate(Sender: TObject);
begin
  inherited;
  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAI_LAF.*,PAR_SIS.PAR_FANT,CAD_USU.USU_DUSU');
    SQL.Add('FROM   CAI_LAF,PAR_SIS,CAD_USU');
    SQL.Add('WHERE  CAI_LAF.CAI_CDEP = PAR_SIS.ID');
    SQL.Add('AND    CAI_LAF.CAI_CUSU = CAD_USU.USU_CUSU');
    SQL.Add('AND    CAI_LAF.CAI_DFEC IS NULL');
    SQL.Add('AND    CAI_LAF.CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    Open;
  end;
end;

procedure Tfrmcai_fec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmcai_fec <> nil then
  begin
    frmcai_fec.Release;
    frmcai_fec := nil;
  end;
end;

procedure Tfrmcai_fec.FormDestroy(Sender: TObject);
begin
  inherited;
  bExecEvent('Caixa');
end;

end.
