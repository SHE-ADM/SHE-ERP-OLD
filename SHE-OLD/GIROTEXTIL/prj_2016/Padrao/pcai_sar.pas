unit pcai_sar;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, ImgList, IBStoredProc, IBDatabase,
  DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls,  ComCtrls, dxDBTLCl, dxGrClms, IBEvents, dxExEdtr,
  StdCtrls, rxSpeedbar;

type
  Tfrmcai_sar = class(Tfrmpadr2)
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
    GroupBox1: TGroupBox;
    dxDBGrid1: TdxDBGrid;
    fin_rec: TIBQuery;
    dtsfin_rec: TDataSource;
    fin_recFIN_DVEN: TDateField;
    fin_recFIN_BANC: TIBStringField;
    fin_recFIN_AGEN: TIBStringField;
    fin_recFIN_CONT: TIBStringField;
    fin_recFIN_NCHQ: TIBStringField;
    fin_recFIN_VALO: TIBBCDField;
    fin_recCLI_FANT: TIBStringField;
    dxDBGrid1FIN_DVEN: TdxDBGridDateColumn;
    dxDBGrid1FIN_BANC: TdxDBGridMaskColumn;
    dxDBGrid1FIN_AGEN: TdxDBGridMaskColumn;
    dxDBGrid1FIN_CONT: TdxDBGridMaskColumn;
    dxDBGrid1FIN_NCHQ: TdxDBGridMaskColumn;
    dxDBGrid1FIN_VALO: TdxDBGridCurrencyColumn;
    dxDBGrid1CLI_FANT: TdxDBGridMaskColumn;
    fin_recID: TIntegerField;
    cadastroCAI_CDBX: TIntegerField;
    cadastroCAI_BCON: TIntegerField;
    cadastroCAI_DCON: TIBStringField;
    procedure siINCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure siALTClick(Sender: TObject);
    procedure siPSQClick(Sender: TObject);
    procedure dtscadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure AjustaForm;
  public
    { Public declarations }
  end;

var
  frmcai_sar: Tfrmcai_sar;

implementation

uses uPrincipal, pcai_sar_edi, ppesquisa;

{$R *.dfm}

procedure Tfrmcai_sar.AjustaForm;
begin
  screen.Cursor:=crHourGlass;
  screen.Cursor:=crDefault;

  Self.top    := 0;
  Self.left   := 0;
  Self.Height := frmprincipal.pnCustomize.Height-4;

  if (Screen.Width > 1024)      and (Screen.Width <= 1280) then
     Width := 1030
  else if (Screen.Width > 1280) and (Screen.Width <= 1360) then
     Width := 1108
  else if Screen.Width > 1360 then
    Width  := 1114;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
    Left    := 7;
    Top     := 50;
    Width   := Screen.Width-15;

    if frmprincipal.pnbot.Visible then
       Top := frmprincipal.ToolBar1.Height+53;

    if Top <= 50 then
       Height := frmprincipal.pnCustomize.Height+3
    else
       Height := frmprincipal.pnCustomize.Height+4;
  end;
end;

procedure Tfrmcai_sar.siINCClick(Sender: TObject);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Financeiro';
  PCampo[2] := 'Caixa';
  PCampo[3] := 'Sangria \ Reforço';
  inherited;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,CAI_DECX,CAI_DABR,CAI_HABR,CAI_DFEC,CAI_HFEC FROM CAI_LAF');
    SQL.Add('WHERE  CAI_DABR = '''+formatDateTime('mm/dd/yy',strtodate(SLPrincipal.Values['data_sistema']))+'''');
    SQL.Add('AND    CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    Open;

    if fields[0].IsNull then
    raise exception.Create('Caixa não aberto !');

    if not fields[4].IsNull then
    raise exception.Create('Caixa já fechado !');
  end;

  frmcai_sar_edi := Tfrmcai_sar_edi.Create(self);

  frmcai_sar_edi.cai_mov.Close;
  frmcai_sar_edi.cai_mov.Params[0].Value := cadastroID.AsInteger;
  frmcai_sar_edi.cai_mov.Open;
  
  try
    frmcai_sar_edi.edcdcx.Text := consulta.Fields[0].AsString;
    frmcai_sar_edi.Tag         := frmcai_sar.Tag;
    frmcai_sar_edi.ShowModal;
  finally
    ExecuteEvent;
    freeAndNil(frmcai_sar_edi);
    frmcai_sar_edi.Free;

    sbMSG.Panels[0].Text := 'Consulta';
    sbMSG.Update;
  end;
end;

procedure Tfrmcai_sar.FormCreate(Sender: TObject);
begin
  cEvent := 'CAI_SAR';

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAI_LAF');
    SQL.Add('WHERE  CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',strtodate(SLPrincipal.Values['data_sistema']))+'''');
    Open;
  end;

  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM CAI_MOV');
    SQL.Add('WHERE    CAI_CCAB = '''+consulta.Fields[0].AsString+'''');
    SQL.Add('ORDER BY ID');
  end;

  inherited;
  Ajustaform;
end;

procedure Tfrmcai_sar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmcai_sar <> nil then
  begin
    frmcai_sar.Release;
    frmcai_sar := nil;
  end;
end;

procedure Tfrmcai_sar.siALTClick(Sender: TObject);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Financeiro';
  PCampo[2] := 'Caixa';
  PCampo[3] := 'Sangria \ Reforço';
  inherited;

  frmcai_sar_edi := Tfrmcai_sar_edi.Create(self);

  frmcai_sar_edi.cai_mov.Close;
  frmcai_sar_edi.cai_mov.Params[0].Value := cadastroID.AsInteger;
  frmcai_sar_edi.cai_mov.Open;

  try
    frmcai_sar_edi.edcdcx.Text := cadastroCAI_CCAB.AsString;
    frmcai_sar_edi.edcdbx.Text := cadastroCAI_CDBX.AsString;
    frmcai_sar_edi.edid.Text   := cadastroID.AsString;
    frmcai_sar_edi.Tag         := frmcai_sar.Tag;
    frmcai_sar_edi.ShowModal;
  finally
    ExecuteEvent;

    freeAndNil(frmcai_sar_edi);
    frmcai_sar_edi.Free;

    sbMSG.Panels[0].Text := 'Consulta';
    sbMSG.Update;
  end;
end;

procedure Tfrmcai_sar.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag             := 13;
    frmpesquisa.cbDATA.Text     := 'Lançamento';
    frmpesquisa.cbCAMPO.Enabled := false;
    frmpesquisa.edTXT.Enabled   := false;

    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      if (edTXT.Text = '') and (dxdt1.Date < 0) then
         {nothing}
      else
      begin
        with consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT ID FROM CAI_LAF');
          SQL.Add('WHERE  CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
          SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',dxDT1.Date)+'''');
          Open;
        end;

        with cadastro do
        begin
          SQL.Clear;
          SQL.Add('SELECT * FROM CAI_MOV');
          SQL.Add('WHERE    CAI_MOV.CAI_CCAB = '''+consulta.Fields[0].AsString+'''');
          SQL.Add('ORDER BY CAI_MOV.CAI_DCAD,CAI_MOV.CAI_HCAD');
          Open;
        end;
      end;
      dbgconsulta.SetFocus;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmcai_sar.dtscadastroDataChange(Sender: TObject;
  Field: TField);
begin
  if cadastroCAI_CDBX.AsInteger > 0 then
  with fin_rec do
  begin
    SQL.Clear;
    SQL.Add('SELECT FIN_REC_CAR_REC.ID,FIN_DVEN,FIN_BANC,FIN_AGEN,FIN_CONT,FIN_NCHQ,FIN_VALO,CLI_FANT');
    SQL.Add('FROM   CAD_CLI,'+SLPrincipal.Values['fin_rec_car_rec']+' "FIN_REC_CAR_REC"');
    SQL.Add('WHERE  CAD_CLI.ID = FIN_REC_CAR_REC.FIN_CCLI');
    SQL.Add('AND    FIN_CDBX   = '''+cadastroCAI_CDBX.AsString+'''');
    Open;
  end;
//  pnlbot.Visible := (cadastroCAI_CDBX.AsInteger > 0);
  fin_rec.Active := (cadastroCAI_CDBX.AsInteger > 0);
end;

end.















