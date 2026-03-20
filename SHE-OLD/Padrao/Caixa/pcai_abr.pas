unit pcai_abr;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxExEdtr,
  dxEdLib, dxCntner, dxEditor, StdCtrls, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, IdBaseComponent, IdComponent, IdIPWatch, rxSpeedbar,
  IBEvents, IBSQL, ActnList;

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
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure siCANClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ACTMPostExecute(Sender: TObject);
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
  REC_SHE_DEF.GReferencia := 'Abertura';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
  inherited;

  eddabr.Date := RECParametros.SHE_DATA;
  edip.Text   := IP.LocalIP;
  eddusu.Text := RECUsuarios.Login;
end;

procedure Tfrmcai_abr.FormDestroy(Sender: TObject);
begin
  inherited;
  
  frmcai_abr := Nil;
  bExecEvent('Caixa');
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

procedure Tfrmcai_abr.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_escape   : close;
       VK_return,40: if (not (activeControl is TdxDBGrid) and
                         not (activeControl is TdxMaskEdit)) then
                        selectNext (activecontrol, true, true);
       38          : if (not (activeControl is TdxDBGrid) and
                         not (activeControl is TdxMaskEdit)) then
                       selectNext (activecontrol, false, true);
       120         : siCAN.Click;
       121         : siSAV.Click;
  end;
end;

procedure Tfrmcai_abr.siCANClick(Sender: TObject);
begin
  if oTextToValor(edvabr.Text) > 0 then
  case messageBox(handle,'Existem Alterações Pendentes !'+#13+
                         'Deseja Salvar ?',
                         PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
       mrCancel: Abort;
       mrYes   : close;
       mrNo    : siSAV.Click;
  end else
  Close;
end;

procedure Tfrmcai_abr.ACTMPostExecute(Sender: TObject);
var
  ccab,ctsr: integer;
begin
  if cbdecx.Text = '' then
  raise exception.Create('Caixa não selecionado !');

  if oYesNo(handle,'Confirma abertura do caixa ?') = mrno then
  abort;

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

  ibSP.StoredProcName := 'SP_CAI_LAF';
  ibSP.Prepare;
  ibSP.ParamByName('ID').Value   := 0;
  ibSP.ParamByName('CDEP').Value := RECParametros.EP_ID;
  ibSP.ParamByName('CDCX').Value := copy(cbdecx.Text,1,1);
  ibSP.ParamByName('DECX').Value := cbdecx.Text;
  ibSP.ParamByName('DABR').Value := eddabr.Date;
  ibSP.ParamByName('HABR').Value := edhabr.Text;
  ibSP.ParamByName('VABR').Value := oTextToValor(edvabr.Text);
  ibSP.ParamByName('DFEC').Value := null;
  ibSP.ParamByName('HFEC').Value := null;
  ibSP.ParamByName('VFEC').Value := 0;
  ibSP.ParamByName('CUSU').Value := RECUsuarios.Id;
  ibSP.ParamByName('IP').Value   := edip.Text;
  ibSP.ParamByName('DETE').Value := edterm.Text;
  ibSP.ExecProc;

  ibSP.StoredProcName := 'SP_CAI_MOV';
  ibSP.Prepare;
  ibSP.ParamByName('ID').Value   := 0;
  ibSP.ParamByName('CCAB').Value := ccab;
  ibSP.ParamByName('CTSR').Value := ctsr;
  ibSP.ParamByName('CONC').Value := 1;
  ibSP.ParamByName('DOCT').Value := inttostr(ccab)+oStrZero(ccab,20-Length(inttostr(ccab)));
  ibSP.ParamByName('DEMV').Value := 'CAIXA INICIAL';
  ibSP.ParamByName('DCAD').Value := RECParametros.SHE_DATA;
  ibSP.ParamByName('CRED').Value := oTextToValor(edvabr.Text);
  ibSP.ParamByName('DEBI').Value := 0;
  ibSP.ExecProc;

  oCTransact(IBTra);
  REC_SHE_DEF.Editing := False;
  ACTExecEvent.Execute;
  Close;
end;

end.
    
    
    
    
    
    
    
    
    
    


