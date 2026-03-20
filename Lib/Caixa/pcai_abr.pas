unit pcai_abr;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxExEdtr,
  dxEdLib, dxCntner, dxEditor, StdCtrls, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, IdBaseComponent, IdComponent, IdIPWatch, rxSpeedbar,
  IBEvents, IBSQL, ActnList, cxGraphics, rxAnimate, rxGIFCtrl, cxControls,
  dxStatusBar;

type
  Tfrmcai_abr = class(Tfrmpadr3)
    Label4: TLabel;
    Label6: TLabel;
    edvabr: TdxEdit;
    Label1: TLabel;
    eddabr: TdxDateEdit;
    cbdecx: TdxImageEdit;
    Label2: TLabel;
    Label3: TLabel;
    edterm: TdxEdit;
    aux: TIBQuery;
    eddusu: TdxEdit;
    Label5: TLabel;
    edhabr: TdxEdit;
    Timer1: TTimer;
    edip: TdxEdit;
    Label7: TLabel;
    IP: TIdIPWatch;
    procedure cbdecxChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edvabrValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ACTMPPostExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcai_abr: Tfrmcai_abr;

implementation

uses uPrincipal,bPrincipal;

{$R *.dfm}

procedure Tfrmcai_abr.FormCreate(Sender: TObject);
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

  eddabr.Date := RECParametros.SHE_DATA;
  eddusu.Text := RECUsuarios.Login;
  edip.Text   := IP.LocalIP;
end;

procedure Tfrmcai_abr.FormDestroy(Sender: TObject);
begin
  bExecEvent('Caixa');
  inherited;

  frmcai_abr := Nil;
end;

procedure Tfrmcai_abr.cbdecxChange(Sender: TObject);
begin
  edip.Text := IP.LocalIP;
end;

procedure Tfrmcai_abr.edvabrValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvabr.Text = '' then
     edvabr.Text := '0';

  if oTextToValor(edvabr.Text) < 0 then
     raise exception.Create('Valor para abertura de caixa não pode ser negativo !');
        
  edvabr.Text := formatfloat('#,0.00',strtofloat(edvabr.Text));
end;

procedure Tfrmcai_abr.Timer1Timer(Sender: TObject);
begin
  edhabr.Text := formatDateTime('hh:mm:ss',time);
end;

procedure Tfrmcai_abr.ACTMPPostExecute(Sender: TObject);
var
  ccab,ctsr: integer;
begin
  if cbdecx.Text = '' then
  raise exception.Create('Caixa não selecionado !');

  ACTMPPost.HelpKeyword := 'Confirma abertura de caixa ?';
  inherited;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAI_TSR');
    SQL.Add('WHERE  CAI_DESC = ''CAIXA INICIAL''');
    Open;

    if fields[0].IsNull then
    raise exception.Create('Descrição CAIXA INICIAL não encontrado !');

    ctsr := fields[0].AsInteger;

    SQL.Clear;
    SQL.Add('SELECT EP.FANTASIA,CAI_IP,CAI_DABR,CAI_HABR,USU_DUSU,CAI_DECX,CAI_DFEC,CAI_HFEC');
    SQL.Add('FROM   CAI_LAF,CAD_USU,TAB_PAR_SIS AS EP');
    SQL.Add('WHERE  CAD_USU.USU_CUSU = CAI_CUSU');
    SQL.Add('AND    EP.ID   = CAI_CDEP');
    SQL.Add('AND    CAI_CDEP = '''+RECParametros.EP_ID+'''');
    SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',eddabr.Date)+'''');
    SQL.Add('AND    CAI_DFEC IS NOT NULL');
    Open;

    if not fields[0].IsNull then
       raise exception.Create('Caixa '+fields[5].AsString+' selecionado já está registrado !'+#13+#13+'Empresa: '+fields[0].AsString
                                                                                             +#13+'Abertura: '   +formatDateTime('dd/mm/yy',fields[2].AsDateTime)+' '+formatDateTime('hh:mm:ss',fields[3].AsDateTime)+' - '+'Terminal: '+fields[1].AsString
                                                                                             +#13+'Fechamento: ' +formatDateTime('dd/mm/yy',fields[6].AsDateTime)+' '+formatDateTime('hh:mm:ss',fields[7].AsDateTime)+' - '+'Terminal: '+fields[1].AsString
                                                                                             +#13+'Usuário  : '  +fields[4].AsString);
    SQL.Clear;
    SQL.Add('SELECT FANTASIA,CAI_IP,CAI_DABR,CAI_HABR,USU_DUSU,CAI_DECX');
    SQL.Add('FROM   CAI_LAF,CAD_USU,TAB_PAR_SIS AS EP');
    SQL.Add('WHERE  CAD_USU.USU_CUSU = CAI_CUSU');
    SQL.Add('AND    EP.ID   = CAI_CDEP');
    SQL.Add('AND    CAI_CDEP         = '''+RECParametros.EP_ID+'''');
    SQL.Add('AND    CAI_DFEC IS NULL');
    Open;

    if not fields[0].IsNull then
       raise exception.Create('Caixa '+fields[5].AsString+' selecionado já está aberto !'+#13+#13+'Empresa: '+fields[0].AsString
                                                                                         +#13+'Abertura: '   +formatDateTime('dd/mm/yy',fields[2].AsDateTime)+' '+formatDateTime('hh:mm:ss',fields[3].AsDateTime)+' - '+'Terminal: '+fields[1].AsString
                                                                                         +#13+'Usuário  : '  +fields[4].AsString);

    SQL.Clear;
    SQL.Add('SELECT FANTASIA,CAI_DECX,CAI_DABR,CAI_HABR,USU_DUSU');
    SQL.Add('FROM   CAI_LAF,CAD_USU,TAB_PAR_SIS AS EP');
    SQL.Add('WHERE  CAD_USU.USU_CUSU = CAI_CUSU');
    SQL.Add('AND    EP.ID   = CAI_CDEP');
    SQL.Add('AND    CAI_IP           = '''+edip.Text       +'''');
    SQL.Add('AND    CAI_CDEP         = '''+RECParametros.EP_ID+'''');
    SQL.Add('AND    CAI_DFEC IS NULL');
    Open;

    if not fields[0].IsNull then
       raise exception.Create('Terminal já possui caixa aberto !'+#13+#13+'Empresa: '+fields[0].AsString
                                                                 +#13+'Caixa      :' +fields[1].AsString+' - '+'Abertura: '+formatDateTime('dd/mm/yy',fields[2].AsDateTime)+' '+formatDateTime('hh:mm:ss',fields[3].AsDateTime)
                                                                 +#13+'Usuário  : '  +fields[4].AsString);

    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_CAI_LAF,0) FROM RDB$DATABASE');
    Open;
    ccab := fields[0].AsInteger+1;
  end;

  try
    oOTransact(TEdicao,ltRead_Only);

    SPEdicao.Close;
    SPEdicao.StoredProcName := 'SP_CAI_LAF';
    SPEdicao.Prepare;

    SPEdicao.ParamByName('ID').Value   := 0;
    SPEdicao.ParamByName('CDEP').Value := RECParametros.EP_ID;
    SPEdicao.ParamByName('CDCX').Value := copy(cbdecx.Text,1,1);
    SPEdicao.ParamByName('DECX').Value := cbdecx.Text;
    SPEdicao.ParamByName('DABR').Value := eddabr.Date;
    SPEdicao.ParamByName('HABR').Value := edhabr.Text;
    SPEdicao.ParamByName('VABR').Value := oTextToValor(edvabr.Text);
    SPEdicao.ParamByName('DFEC').Value := null;
    SPEdicao.ParamByName('HFEC').Value := null;
    SPEdicao.ParamByName('VFEC').Value := 0;
    SPEdicao.ParamByName('CUSU').Value := RECUsuarios.Id;
    SPEdicao.ParamByName('IP').Value   := edip.Text;
    SPEdicao.ParamByName('DETE').Value := edterm.Text;
    SPEdicao.ExecProc;

    SPEdicao.Close;
    SPEdicao.StoredProcName := 'SP_CAI_MOV';
    SPEdicao.Prepare;
    
    SPEdicao.ParamByName('ID').Value   := 0;
    SPEdicao.ParamByName('CCAB').Value := ccab;
    SPEdicao.ParamByName('CTSR').Value := ctsr;
    SPEdicao.ParamByName('CONC').Value := 1;
    SPEdicao.ParamByName('DOCT').Value := inttostr(ccab)+oStrZero(ccab,20-Length(inttostr(ccab)));
    SPEdicao.ParamByName('DEMV').Value := 'CAIXA INICIAL';
    SPEdicao.ParamByName('DCAD').Value := RECParametros.SHE_DATA;
    SPEdicao.ParamByName('CRED').Value := oTextToValor(edvabr.Text);
    SPEdicao.ParamByName('DEBI').Value := 0;
    SPEdicao.ExecProc;

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
    
    
    
    
    
    
    
    
    
    


