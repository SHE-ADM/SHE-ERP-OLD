unit pcai_sar_edi;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, StdCtrls,
  dxExEdtr, dxEdLib, dxEditor, dxCntner, rxSpeedbar, IBEvents, IBSQL,
  ActnList;

type
  Tfrmcai_sar_edi = class(Tfrmpadr3)
    Label3: TLabel;
    edctsr: TdxButtonEdit;
    GroupBox1: TGroupBox;
    eddoct: TdxEdit;
    Label1: TLabel;
    eddcad: TdxDateEdit;
    Label4: TLabel;
    edtcad: TdxTimeEdit;
    Label5: TLabel;
    Label6: TLabel;
    Timer1: TTimer;
    edid: TdxEdit;
    edtipo: TdxEdit;
    edcdcx: TdxEdit;
    eddesc: TdxPickEdit;
    edvalo: TdxButtonEdit;
    consulta_s: TIBQuery;
    tSHEILD: TIBTransaction;
    edcdbx: TdxEdit;
    cai_mov: TIBQuery;
    cai_movID: TIntegerField;
    cai_movCAI_CCAB: TIntegerField;
    cai_movCAI_CTSR: TIntegerField;
    cai_movCAI_DESC: TIBStringField;
    cai_movCAI_DOCT: TIBStringField;
    cai_movCAI_DCAD: TDateField;
    cai_movCAI_HCAD: TTimeField;
    cai_movCAI_SANT: TIBBCDField;
    cai_movCAI_CRED: TIBBCDField;
    cai_movCAI_DEBI: TIBBCDField;
    cai_movCAI_SATU: TIBBCDField;
    cai_movCAI_CONC: TSmallintField;
    cai_movCAI_CDBX: TIntegerField;
    Label2: TLabel;
    edbcon: TdxButtonEdit;
    eddcon: TdxPickEdit;
    cai_movCAI_BCON: TIntegerField;
    cai_movCAI_DCON: TIBStringField;
    aux: TIBQuery;
    ConsultaAux: TIBQuery;
    procedure edctsrButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edctsrValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eddescExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ACTMPostExecute(Sender: TObject);
  private
    { Private declarations }
    procedure NOVO_LANCTO;
    procedure ALTERA_LANCTO;
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmcai_sar_edi: Tfrmcai_sar_edi;

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmcai_sar_edi.FormCreate(Sender: TObject);
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
  REC_SHE_DEF.GReferencia := 'Tabela de Sangrias';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
  inherited;

  if tag = 1 then
  timer1.Enabled := false;
end;

procedure Tfrmcai_sar_edi.FormDestroy(Sender: TObject);
begin
  inherited;
  frmcai_sar_edi := Nil;
end;

procedure Tfrmcai_sar_edi.ALTERA_LANCTO;
begin
  edctsr.Tag  := 1;
  edctsr.Text := cai_movCAI_CTSR.AsString;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAI_DESC,CAI_TIPO FROM CAI_TSR');
    SQL.Add('WHERE  ID = '''+edctsr.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      edctsr.SetFocus;
      raise exception.Create('Código do tipo de sangria \ reforço não encontrado !');
    end;
    eddesc.Text := fields[0].AsString;
    edtipo.Text := fields[1].AsString;
  end;

  eddoct.Text := cai_movCAI_DOCT.AsString;
  eddcad.Date := cai_movCAI_DCAD.AsDateTime;
  edtcad.Time := cai_movCAI_HCAD.AsDateTime;
  edcdbx.Text := cai_movCAI_CDBX.AsString;
  edbcon.Text := cai_movCAI_BCON.AsString;
  eddcon.Text := cai_movCAI_DCON.AsString;

  if edtipo.Text = 'SAÍDA' then
  edvalo.Text := formatFloat('#,0.00',cai_movCAI_DEBI.AsFloat) else
  edvalo.Text := formatFloat('#,0.00',cai_movCAI_CRED.AsFloat);
end;

procedure Tfrmcai_sar_edi.NOVO_LANCTO;
begin
  edid.Text   := '0';
  edctsr.Tag  := 0;
  edbcon.Text := '0';
  eddcon.Text := '';
  edctsr.Text := '';
  eddoct.Text := '';
  eddcad.Date := RECParametros.SHE_DATA;
  edtcad.Time := time;

  if frmcai_sar_edi.edcdcx.Hint <> 'Custodia' then
  eddesc.Text := '';
end;

procedure Tfrmcai_sar_edi.edctsrButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
{  frmcai_tsr := Tfrmcai_tsr.Create(Nil);
  try
    frmcai_tsr.FormStyle := fsNormal;
    frmcai_tsr.Visible   := false;
    frmcai_tsr.Position  := poDesktopCenter;
    frmcai_tsr.ShowModal;
  finally
    if frmcai_tsr.editado then
    begin
      eddesc.Items.Clear;
      frmcai_tsr.cadastro.First;
      while not frmcai_tsr.cadastro.Eof do
      begin
        eddesc.Items.Add(frmcai_tsr.cadastroCAI_DESC.AsString);
        frmcai_tsr.cadastro.Next;
      end;
    end;
    freeAndnil(frmcai_tsr);
  end;}
end;

procedure Tfrmcai_sar_edi.edctsrValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edctsr.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAI_DESC FROM CAI_TSR');
    SQL.Add('WHERE  ID = '''+edctsr.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      edctsr.SetFocus;
      raise exception.Create('Código do tipo de sangria \ suprimento não encontrado !');
    end;
    eddesc.Text := fields[0].AsString;
  end
  else
    eddesc.Text := '';

  edbcon.SetFocus;
end;

procedure Tfrmcai_sar_edi.Timer1Timer(Sender: TObject);
begin
  edtcad.Time := time;
  edtcad.Update;
end;

procedure Tfrmcai_sar_edi.FormShow(Sender: TObject);
begin
  inherited;
  if tag = 1 then
  ALTERA_LANCTO else
  NOVO_LANCTO;
end;

procedure Tfrmcai_sar_edi.eddescExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if eddesc.Text = eddesc.Hint then
    exit;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,CAI_TIPO FROM CAI_TSR');
      SQL.Add('WHERE  CAI_DESC = '''+eddesc.Text+'''');
      Open;

      if not fields[0].IsNull then
      begin
        edctsr.Text := fields[0].AsString;
        edtipo.Text := fields[1].AsString;
        eddoct.Text := copy(eddesc.Text,1,2)+oStrZero(strtoint(edctsr.Text),18);

        if edcdcx.Hint = 'Custodia' then
        begin
          aux.SQL.Clear;
          aux.SQL.Add('SELECT GEN_ID(ID_NO_BAI_REC,1) FROM RDB$DATABASE');
          aux.Open;
          IBtra.CommitRetaining;

          eddoct.Text := copy(eddesc.Text,1,2)+'CUSTODIA'+oStrZero(aux.Fields[0].AsInteger,10);
        end;  
      end else
      begin
        messageBox(handle,'Descrição do Tipo de Lançamento não encontrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
        exit;
      end;
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmcai_sar_edi.FormActivate(Sender: TObject);
begin
  with consulta do
  begin
    if edcdcx.Hint = 'Custodia' then
    begin
      eddesc.Items.Add('CHEQUE A VISTA');
      eddesc.Items.Add('CHEQUE PRE-DATADO');
    end else
    begin
      SQL.Clear;
      SQL.Add('SELECT    CAI_DESC FROM CAI_TSR');
      SQL.Add('GROUP  BY CAI_DESC');
      SQL.Add('ORDER  BY CAI_DESC');
      Open;

      eddesc.Items.Clear;
      while not eof do
      begin
        eddesc.Items.Add(fields[0].AsString);
        next;
      end;
    end;  
  end;
end;

procedure Tfrmcai_sar_edi.ACTMPostExecute(Sender: TObject);
begin
  inherited;
  if oYesNo(handle,'Salvar Lançamento ?') = mrno then
     abort;

  if frmcai_sar_edi.edcdcx.Hint = 'Custodia' then
  begin
    if (edbcon.Text = '') or (edbcon.Text = '') then
    raise exception.Create('Conta não Selecionada !');
  end;
    
  with consulta do
  begin
    if frmcai_sar_edi.Tag = 0 then
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAI_MOV');
      SQL.Add('WHERE  CAI_CCAB = '''+edcdcx.Text+'''');
      SQL.Add('AND    CAI_DOCT = '''+eddoct.Text+'''');
      Open;

      if not fields[0].IsNull then
      raise exception.Create('Número de documento já lançado para esse caixa !');
    end;  
  end;

  if (edctsr.Text = '') or (edctsr.Text = '0') then
  raise exception.Create('Código do tipo de sangria \ reforço não selecionado !');

  if (eddesc.Text = '') then
  raise exception.Create('Descrição do tipo de sangria \ reforço não selecionado !');

  if oTextToValor(edvalo.Text) <= 0 then
  raise exception.Create('Valor do tipo de sangria \ reforço não selecionado !');

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAI_TSR');
    SQL.Add('WHERE  CAI_DESC = '''+eddesc.Text+'''');
    Open;

    if fields[0].IsNull then
    raise exception.Create('Descrição do tipo de sangria \ reforço não cadastro !');
  end;  

  if edbcon.Text = '' then
  begin
    edbcon.Text := '0';
    eddcon.Text := '';
  end;
    
  try
    timer1.Enabled        := false;
    try
      ibSP.StoredProcName := 'SP_CAI_MOV';
      ibSP.Prepare;

      case frmcai_sar_edi.Tag of
        0: ibSP.Params[0].Value := null;
        1: ibSP.Params[0].Value := edid.Text;
      end;

      ibSP.ParamByName('CCAB').Value := edcdcx.Text;
      ibSP.ParamByName('CTSR').Value := edctsr.Text;
      ibSP.ParamByName('CONC').Value := 1;
      ibSP.ParamByName('DOCT').Value := eddoct.Text;
      ibSP.ParamByName('DEMV').Value := eddesc.Text;
      ibSP.ParamByName('DCAD').Value := eddcad.Text;

      if edtipo.Text = 'SAÍDA' then
      begin
        ibSP.ParamByName('CRED').Value := 0;
        ibSP.ParamByName('DEBI').Value := oTextToValor(edvalo.Text);
      end else
      begin
        ibSP.ParamByName('CRED').Value := oTextToValor(edvalo.Text);
        ibSP.ParamByName('DEBI').Value := 0;
      end;

      ibSP.ExecProc;
      IBTra.CommitRetaining;

      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT SUM(CAI_CRED),SUM(CAI_DEBI),SUM(CAI_CRED-CAI_DEBI) FROM CAI_MOV');
        SQL.Add('WHERE  CAI_CCAB = '''+edcdcx.Text+'''');
        Open;
      end;

      with ConsultaAux do
      begin
        SQL.Clear;
        SQL.Add('UPDATE CAI_LAF');
        SQL.Add('SET    CAI_CRED = '''+oStrTran(consulta.Fields[0].AsString,',','.')+''',');
        SQL.Add('       CAI_DEBI = '''+oStrTran(consulta.Fields[1].AsString,',','.')+''',');
        SQL.Add('       CAI_SATU = '''+oStrTran(consulta.Fields[2].AsString,',','.')+'''');
        SQL.Add('WHERE  ID       = '''+edcdcx.Text+'''');
        ExecSQL;
      end;

      editado := true;
      IBTra.Commit;
      IBTra.StartTransaction;

      oAviso(Application.Handle,'Lançamento atualizado coom sucesso !');
      REC_SHE_DEF.Editing := False;
      ACTExecEvent.Execute;
    except
      editado := false;
      IBTRA.Rollback;
      IBTra.StartTransaction;
    end;
  finally
    timer1.Enabled := true;
    Close;
  end;
end;

end.















