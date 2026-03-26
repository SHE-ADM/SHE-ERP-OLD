unit pcad_chq;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, dxExEdtr, IBEvents, ImgList, IBStoredProc, IBDatabase,
  DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls,  ComCtrls, dxDBTLCl, dxGrClms, StdCtrls, dxPageControl,
  DateUtils, math, rxSpeedbar;

type
  Tfrmcad_chq = class(Tfrmpadr2)
    cadastroID: TIntegerField;
    cadastroCHQ_CDEP: TIntegerField;
    cadastroCHQ_CDCX: TIntegerField;
    cadastroCHQ_CDBX: TIntegerField;
    cadastroCHQ_CDLT: TIntegerField;
    cadastroCHQ_CCLI: TIntegerField;
    cadastroCHQ_CVEN: TIntegerField;
    cadastroCHQ_CREP: TIntegerField;
    cadastroCHQ_CCON: TIntegerField;
    cadastroCHQ_MOTI: TSmallintField;
    cadastroCHQ_STDO: TIBStringField;
    cadastroCHQ_DCHQ: TIBStringField;
    cadastroCHQ_BANC: TIBStringField;
    cadastroCHQ_DBAN: TIBStringField;
    cadastroCHQ_AGEN: TIBStringField;
    cadastroCHQ_CONT: TIBStringField;
    cadastroCHQ_NCHQ: TIBStringField;
    cadastroCHQ_STFI: TIBStringField;
    cadastroCHQ_VALO: TIBBCDField;
    cadastroCHQ_DCAD: TDateField;
    cadastroCHQ_DSAI: TDateField;
    cadastroCHQ_DVEN: TDateField;
    cadastroCHQ_OBSE: TMemoField;
    cadastroUSU_DUSU: TIBStringField;
    cadastroREP_FANT: TIBStringField;
    cadastroCLI_FANT: TIBStringField;
    cadastroCLI_RAZA: TIBStringField;
    cadastroPAR_FANT: TIBStringField;
    dbgConsultaPAR_FANT: TdxDBGridMaskColumn;
    dbgConsultaCLI_FANT: TdxDBGridMaskColumn;
    dbgConsultaCHQ_BANC: TdxDBGridMaskColumn;
    dbgConsultaCHQ_AGEN: TdxDBGridMaskColumn;
    dbgConsultaCHQ_CONT: TdxDBGridMaskColumn;
    dbgConsultaCHQ_NCHQ: TdxDBGridMaskColumn;
    dbgConsultaCHQ_STFI: TdxDBGridMaskColumn;
    dbgConsultaCHQ_VALO: TdxDBGridMaskColumn;
    dbgConsultaCHQ_DCAD: TdxDBGridDateColumn;
    dbgConsultaCHQ_DSAI: TdxDBGridDateColumn;
    dbgConsultaCHQ_DVEN: TdxDBGridDateColumn;
    dbgConsultaUSU_DUSU: TdxDBGridMaskColumn;
    dbgConsultaREP_FANT: TdxDBGridMaskColumn;
    siCHQ: TSpeedItem;
    GroupBox1: TGroupBox;
    ped_ven_cab: TIBQuery;
    dtsped_ven_cab: TDataSource;
    ped_ven_cabROM_DERO: TIBStringField;
    ped_ven_cabROM_DROM: TDateField;
    ped_ven_cabROM_DBAI: TDateField;
    ped_ven_cabROM_DNFS: TDateField;
    ped_ven_cabROM_QTVE: TIBBCDField;
    ped_ven_cabROM_TSDE: TIBBCDField;
    ped_ven_cabROM_TDSC: TIBStringField;
    ped_ven_cabROM_PDSC: TIBBCDField;
    ped_ven_cabROM_TCDE: TIBBCDField;
    ped_ven_cabID: TIntegerField;
    ped_ven_cabROM_CDNF: TIntegerField;
    ped_ven_cabROM_OBSE: TMemoField;
    dbgCAB: TdxDBGrid;
    dbgCABROM_DERO: TdxDBGridMaskColumn;
    dbgCABROM_DROM: TdxDBGridDateColumn;
    dbgCABROM_CDNF: TdxDBGridMaskColumn;
    dbgCABROM_DNFS: TdxDBGridDateColumn;
    dbgCABROM_TSDE: TdxDBGridMaskColumn;
    dbgCABROM_PDSC: TdxDBGridMaskColumn;
    dbgCABROM_TCDE: TdxDBGridMaskColumn;
    siPED: TSpeedItem;
    cadastroCHQ_DCAN: TDateField;
    cadastroCHQ_CADA: TIBStringField;
    cadastroCHQ_SAID: TIBStringField;
    cadastroCHQ_CANC: TIBStringField;
    cadastroCHQ_OBSS: TMemoField;
    cadastroCHQ_OBSC: TMemoField;
    cadastroCHQ_CPF: TIBStringField;
    cadastroCHQ_DOCT: TIBStringField;
    cadastroCHQ_VTER: TIBBCDField;
    cadastroCHQ_VPRO: TIBBCDField;
    dbgConsultaCHQ_DCAN: TdxDBGridDateColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure siPSQClick(Sender: TObject);
    procedure siCHQClick(Sender: TObject);
    procedure cadastroAfterOpen(DataSet: TDataSet);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dtsped_ven_cabDataChange(Sender: TObject; Field: TField);
    procedure siPEDClick(Sender: TObject);
  private
    { Private declarations }
    procedure AjustaForm;
  public
    { Public declarations }
  end;

var
  frmcad_chq: Tfrmcad_chq;

implementation

uses uPrincipal, ppesquisa, qven_ped;

{$R *.dfm}

procedure Tfrmcad_chq.AjustaForm;
begin
  screen.Cursor:=crHourGlass;
  screen.Cursor:=crDefault;

  Self.top    := 0;
  Self.left   := 0;
  Self.Height := frmprincipal.pnCustomize.Height-4;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
   self.Height := screen.Height;
   self.Width  :=  screen.Width;

   if frmprincipal.pnbot.Visible then
      self.Height := self.Height - frmprincipal.pnbot.Height;
  end;
end;

procedure Tfrmcad_chq.FormCreate(Sender: TObject);
begin
  campo_pesquisa := '';
  cEvent := 'CAD_CHQ';

  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAD_CHQ.*,USU_DUSU,REP_FANT,CLI_FANT,CLI_RAZA,PAR_FANT');
    SQL.Add('FROM   CAD_CHQ,PAR_SIS,CAD_CLI,CAD_USU,CAD_REP');
    SQL.Add('WHERE  CHQ_CDEP = PAR_SIS.ID');
    SQL.Add('AND    CHQ_CVEN = CAD_USU.USU_CUSU');
    SQL.Add('AND    CHQ_CREP = CAD_REP.ID');
    SQL.Add('AND    CHQ_CCLI = CAD_CLI.ID');
    SQL.Add('ORDER BY CHQ_DCAD');
  end;

  inherited;
  Ajustaform;
end;

procedure Tfrmcad_chq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmcad_chq <> nil then
  begin
    frmcad_chq.Release;
    frmcad_chq := nil;
  end;
end;

procedure Tfrmcad_chq.FormShow(Sender: TObject);
begin
  inherited;
  dbgconsulta.SetFocus;
end;

procedure Tfrmcad_chq.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 15;
    if campo_pesquisa = '' then
    frmpesquisa.cbCAMPO.Text := 'Cheque No' else
    frmpesquisa.cbCAMPO.Text := campo_pesquisa;
    frmpesquisa.cbDATA.Text  := 'Lançamento';
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      if (edTXT.Text = '') and (dxdt1.Date < 0) and (cField <> 'Todos') then
         {nothing}
      else
      begin
        with consulta do
        begin
          if frmpesquisa.cbCAMPO.Text = 'Pedido No' then
          begin
            SQL.Clear;
            SQL.Add('SELECT ROM_CDBX FROM '+SLPrincipal.Values['ped_ven_cab']);
            SQL.Add('WHERE  ROM_DERO = '''+edtxt.Text+'''');
            Open;

            edtxt.Text := IntToStr(fields[0].AsInteger);
            cField     := 'CHQ_CDBX';
          end;

          if frmpesquisa.cbCAMPO.Text = 'Cheque No - Bordero' then
          begin
            SQL.Clear;
            SQL.Add('SELECT CHQ_CDBX FROM CAD_CHQ');
            SQL.Add('WHERE  CHQ_NCHQ = '''+edtxt.Text+'''');
            Open;
            edtxt.Text := fields[0].AsString;
            cField     := 'CHQ_CDBX';
          end;
        end;

        with cadastro do
        begin
          SQL.Clear;
          SQL.Add('SELECT CAD_CHQ.*,USU_DUSU,REP_FANT,CLI_FANT,CLI_RAZA,PAR_FANT');
          SQL.Add('FROM   CAD_CHQ,PAR_SIS,CAD_CLI,CAD_USU,CAD_REP');
          SQL.Add('WHERE  CHQ_CDEP = PAR_SIS.ID');
          SQL.Add('AND    CHQ_CVEN = CAD_USU.USU_CUSU');
          SQL.Add('AND    CHQ_CREP = CAD_REP.ID');
          SQL.Add('AND    CHQ_CCLI = CAD_CLI.ID');

          if cField <> 'Todos' then
          begin
            if edtxt.Text <> '' then
            begin
              if (cField <> 'CHQ_CDBX') and (cField <> 'CAD_CLI.ID') then
              SQL.Add('AND '+cField+' LIKE ''%'+edtxt.Text+'%''') else
              SQL.Add('AND '+cField+' = '''+edtxt.Text+'''');
            end;

            if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
            SQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');
          end;

          if cField = 'Todos' then
          cField := 'CHQ_DCAD';

          SQL.Add('ORDER BY '+cfield);
          Open;
        end;
      end;
      dbgconsulta.SetFocus;
      campo_pesquisa := frmpesquisa.cbCAMPO.Text;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmcad_chq.siCHQClick(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
  wRec: TBookMark;
begin
  if oYesNo(handle,'Confirma Cancelamento ?'+#13+
                  'Cheque No '+cadastroCHQ_NCHQ.AsString+#13+
                  'Cliente '+cadastroCLI_FANT.AsString) = mrno then
  abort;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM '+SLPrincipal.Values['fin_rec_ban_bai']);
    SQL.Add('WHERE  FIN_CDBX = '''+cadastroCHQ_CDBX.AsString+'''');
    SQL.Add('AND    FIN_STFI <> ''PENDENTE''');
    SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
    Open;

    if not fields[0].IsNull then
    raise exception.Create('Venda já possui lançamento de contas a receber em bancário !'+#13+
                           'Favor entrar em contato com o setor financeiro.');

    SQL.Clear;
    SQL.Add('SELECT ID FROM '+SLPrincipal.Values['fin_rec_car_bai']);
    SQL.Add('WHERE  FIN_CDBX = '''+cadastroCHQ_CDBX.AsString+'''');
    SQL.Add('AND    FIN_STFI <> ''PENDENTE''');
    SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
    Open;

    if not fields[0].IsNull then
    raise exception.Create('Venda já possui lançamento de contas a receber em carteira !'+#13+
                           'Favor entrar em contato com o setor financeiro.');
  end;

  ClickedOK := InputQuery('Cancelamento de Pedido', 'Motivo', NewString);
  if not ClickedOK then
  abort;

  if (NewString = '') or (length(NewString) < 5) then
  raise exception.Create('Motivo não informado ou incorreto !');

  with frmprincipal.sp_sql do
  begin
    ibSP.StoredProcName := 'SP_SQL';

    SQL.Clear;
    SQL.Add('UPDATE CAD_CHQ');
    SQL.Add('SET CHQ_STFI = ''CANCELADO'',');
    SQL.Add('    CHQ_DCAN = '''+formatDateTime('mm/dd/yy',strtodate(SLPrincipal.Values['data_sistema']))+'''');
    SQL.Add('WHERE     ID = '''+cadastroID.AsString+'''');

    ibSP.Prepare;
    ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
    ibSP.ExecProc;

    IBTra.CommitRetaining;

    wRec := cadastro.GetBookmark;

    cadastro.Close;
    cadastro.Open;
    if (wRec = Nil) or (cadastro.Fields[0].IsNull) then cadastro.last
       else cadastro.GotoBookmark(wRec);
    cadastro.FreeBookmark(wRec);
  end;  
end;

procedure Tfrmcad_chq.cadastroAfterOpen(DataSet: TDataSet);
begin
  with ped_ven_cab do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,ROM_DERO,ROM_DROM,ROM_DBAI,ROM_CDNF,ROM_DNFS,ROM_QTVE,ROM_TSDE,ROM_TDSC,ROM_PDSC,ROM_TCDE,ROM_OBSE');
    SQL.Add('FROM '+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
    SQL.Add('WHERE  ROM_CDBX = :CHQ_CDBX');
    Open;
  end;
end;

procedure Tfrmcad_chq.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  if not ASelected then
  begin
    Value  := ANode.Values[4];

    if (not VarIsNull(Value)) then
    begin
      if copy(Value,1,4) = 'PAGO' then
      begin
         AFont.Color := clwhite;
         AColor      := $00A4A400;
      end
      else if Value = 'FATURADO' then
      begin
         AFont.Color := clwhite;
         AColor      := $00C6C600;
      end
      else if Value = 'SEM COBRANÇA' then
      begin
         AFont.Color := clBlack;
         AColor      := $00E1E1E1;
      end
      else if Value = 'AGUARDANDO LIBERAÇÃO' then
      begin
         AFont.Color := clBlack;
         AColor      := $00C8C8C8;
      end
      else if Value = 'AGUARDANDO CRÉDITO' then
      begin
         AFont.Color := clBlack;
         AColor      := $00959595;
      end
      else if Value = 'PROTESTADO' then
      begin
         AFont.Color := clBlack;
         AColor      := $0095FFFF;
      end
      else if Value = 'NÃO PAGO' then
      begin
         AFont.Color := clBlack;
         AColor      := $003EFFFF;
      end
      else if Value = 'SUSPENSO' then
      begin
         AFont.Color := clBlack;
         AColor      := $0000FDFD;
      end
      else if Value = 'SEPARAÇÃO' then
      begin
         AFont.Color := clWhite;
         AColor      := clBlack;
      end
      else if Value = 'CANCELADO' then
      begin
         AFont.Color := clwhite;
         AColor      := RGB(StrToInt( '$ED') ,
                            StrToInt( '$1F') ,
                            StrToInt( '$43') );
      end;
    end;
  end;
end;

procedure Tfrmcad_chq.dtsped_ven_cabDataChange(Sender: TObject;
  Field: TField);
begin
  dbgCABROM_PDSC.Caption := 'Desc ('+ped_ven_cabROM_TDSC.AsString+')';
  dbgCABROM_PDSC.Visible := (ped_ven_cabROM_PDSC.AsFloat > 0);
end;

procedure Tfrmcad_chq.siPEDClick(Sender: TObject);

procedure VEN_PED_PEDIDO_SEMBAIXA;
var
  i: word;
  valo: double;
begin
  with consulta do
  begin
    valo := qrpven_ped.romanROM_TCDE.AsFloat;

    SQL.Clear;
    SQL.Add('SELECT PAG_PARC,PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,PAG_D010 FROM TAB_PAG');
    SQL.Add('WHERE  ID = '''+qrpven_ped.romanROM_CPAG.AsString+'''');
    Open;
  end;

  for i := 1 to consulta.Fields[0].AsInteger do
  begin
    case i of
        1: begin
             qrpven_ped.lanpa1.Caption  := '01)';
             qrpven_ped.ladpa1.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[1].Value)));
             qrpven_ped.lavpa1.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        2: begin
             qrpven_ped.lanpa2.Caption  := '02)';
             qrpven_ped.ladpa2.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[2].Value)));
             qrpven_ped.lavpa2.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        3: begin
             qrpven_ped.lanpa3.Caption  := '03)';
             qrpven_ped.ladpa3.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[3].Value)));
             qrpven_ped.lavpa3.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        4: begin
             qrpven_ped.lanpa4.Caption  := '04)';
             qrpven_ped.ladpa4.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[4].Value)));
             qrpven_ped.lavpa4.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        5: begin
             qrpven_ped.lanpa5.Caption  := '05)';
             qrpven_ped.ladpa5.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[5].Value)));
             qrpven_ped.lavpa5.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        6: begin
             qrpven_ped.lanpa6.Caption  := '06)';
             qrpven_ped.ladpa6.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[6].Value)));
             qrpven_ped.lavpa6.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        7: begin
             qrpven_ped.lanpa7.Caption  := '07)';
             qrpven_ped.ladpa7.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[7].Value)));
             qrpven_ped.lavpa7.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        8: begin
             qrpven_ped
             .lanpa8.Caption  := '08)';
             qrpven_ped.ladpa8.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[8].Value)));
             qrpven_ped.lavpa8.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        9: begin
             qrpven_ped.lanpa9.Caption  := '09)';
             qrpven_ped.ladpa9.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[9].Value)));
             qrpven_ped.lavpa9.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
       10: begin
             qrpven_ped.lanpa10.Caption  := '10)';
             qrpven_ped.ladpa10.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[10].Value)));
             qrpven_ped.lavpa10.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
    end;
  end;
end;

procedure VEN_PED_PEDIDO_COMBAIXA(stco: string);
var
  i,p: word;
begin
  with consulta do
  begin
    SQL.Clear;
    if stco = 'BANCÁRIO' then
    SQL.Add('SELECT   FIN_DOCT,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_ban_rec']) else
    SQL.Add('SELECT   FIN_NCHQ,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_car_rec']);
    SQL.Add('WHERE    FIN_CDBX = '''+cadastroCHQ_CDBX.AsString+'''');
    SQL.Add('ORDER BY FIN_DVEN');
    Open;

    if fields[3].IsNull then
    begin
      SQL.Clear;
      if stco = 'BANCÁRIO' then
      SQL.Add('SELECT   FIN_DOCT,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_ban_bai']) else
      SQL.Add('SELECT   FIN_NCHQ,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_car_bai']);
      SQL.Add('WHERE    FIN_CDBX = '''+cadastroCHQ_CDBX.AsString+'''');
      SQL.Add('ORDER BY FIN_DVEN');
      Open;
    end
  end;

  consulta.Last;
  p := consulta.recno;
  consulta.First;

  for i := 1 to p do
  begin
    case i of
        1: begin
             qrpven_ped.lanpa1.Caption  := '01) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa1.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa1.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        2: begin
             qrpven_ped.lanpa2.Caption  := '02) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa2.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa2.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        3: begin
             qrpven_ped.lanpa3.Caption  := '03) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa3.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa3.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        4: begin
             qrpven_ped.lanpa4.Caption  := '04) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa4.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa4.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        5: begin
             qrpven_ped.lanpa5.Caption  := '05) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa5.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa5.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        6: begin
             qrpven_ped.lanpa6.Caption  := '06) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa6.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa6.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        7: begin
             qrpven_ped.lanpa7.Caption  := '07) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa7.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa7.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        8: begin
             qrpven_ped.lanpa8.Caption  := '08) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa8.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa8.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        9: begin
             qrpven_ped.lanpa9.Caption  := '09) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa9.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa9.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
       10: begin
             qrpven_ped.lanpa10.Caption := '10) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa10.Caption := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa10.Caption := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
           end;

    end;
  end;
end;

begin
  frmprincipal.FazPrnAtualVirarDefault('Pedidos');

  if qrpven_ped = nil then
  qrpven_ped:= Tqrpven_ped.Create(self);

  try
    with qrpven_ped.roman do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
      SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND      PED_VEN_CAB.ID = '''+ped_ven_cabID.AsString+'''');
      SQL.Add('ORDER BY PED_VEN_CAB.ID DESC');
      Open;
    end;

    with qrpven_ped.ven_efe do
    begin
      SQL.Clear;
      SQL.Add('SELECT   CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
      SQL.Add('         PED_VEN_ITE.ROM_DUNI,PED_VEN_ITE.ID,PED_VEN_ITE.ROM_ITEM,PED_VEN_ITE.ROM_DCOR,PED_VEN_ITE.ROM_DPRO,PED_VEN_ITE.ROM_QTDE,PED_VEN_ITE.ROM_UNIT,PED_VEN_ITE.ROM_PREC,PED_VEN_ITE.ROM_VDSC,PED_VEN_ITE.ROM_TOTA,PED_VEN_ITE.ROM_OBSE');
      SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
      SQL.Add('WHERE    PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND      PED_VEN_ITE.ROM_CCAB = '''+ped_ven_cabID.AsString+'''');
      SQL.Add('ORDER BY PED_VEN_ITE.ROM_ITEM');
      Open;
    end;

    qrpven_ped.qrmemo1.Lines.Add(TRIM(frmprincipal.parametrosPAR_OPED.AsString));
    qrpven_ped.qrmemo2.Lines.Add(TRIM(frmprincipal.parametrosPAR_OPED.AsString));

    qrpven_ped.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpven_ped.carregaFoto2(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);

    qrpven_ped.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpven_ped.qrlraza2.Caption     := qrpven_ped.qrlraza.Caption;

    qrpven_ped.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpven_ped.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpven_ped.qrlend3.Caption      := qrpven_ped.qrlend1.Caption;
    qrpven_ped.qrlend4.Caption      := qrpven_ped.qrlend2.Caption;

    qrpven_ped.qrlemai_site.Caption  := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpven_ped.qrlemai_site2.Caption := qrpven_ped.qrlemai_site.Caption;

    qrpven_ped.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpven_ped.qrlfone2.Caption     := qrpven_ped.qrlfone.Caption;

    qrpven_ped.ReportTitle          := 'Pedido de Venda';
    qrpven_ped.qrltitulo.Caption    := 'Pedido de Venda';

    if qrpven_ped.romanROM_STPD.AsString = 'DEVOLUÇÃO' then
    begin
      qrpven_ped.ReportTitle           := 'Pedido de Devolução';
      qrpven_ped.qrltitulo.Caption     := 'Pedido de Devolução';
    end
    else if qrpven_ped.romanROM_STPD.AsString = 'ABATIMENTO' then
    begin
      qrpven_ped.ReportTitle           := 'Pedido de Abatimento';
      qrpven_ped.qrltitulo.Caption     := 'Pedido de Abatimento';
    end
    else if qrpven_ped.romanROM_STPD.AsString = 'SERVIÇO' then
    begin
      qrpven_ped.ReportTitle           := 'Pedido de Serviço';
      qrpven_ped.qrltitulo.Caption     := 'Pedido de Serviço';
    end;

    qrpven_ped.qrltitulo2.Caption := qrpven_ped.qrltitulo.Caption;
    qrpven_ped.qrlrodape.Caption  := frmprincipal.cad_usuUSU_DUSU.AsString;

    qrpven_ped.qrlrodape3.Caption := '';
    if qrpven_ped.romanROM_CBAI.AsInteger > 0 then
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT USU_DUSU FROM CAD_USU');
      SQL.Add('WHERE  USU_CUSU = '''+qrpven_ped.romanROM_CBAI.AsString+'''');
      Open;
      qrpven_ped.qrlrodape3.Caption := fields[0].AsString+' '+formatDateTime('dd/mm/yy hh:mm:ss',qrpven_ped.romanROM_TBAI.AsDateTime);
    end;

    qrpven_ped.qrlrodape2.Caption   := qrpven_ped.qrlrodape.Caption;
    qrpven_ped.qrlrodape4.Caption   := qrpven_ped.qrlrodape3.Caption;

    qrpven_ped.qrlcli.Caption  := oStrZero(qrpven_ped.romanROM_CCLI.AsInteger,5)+' - '+qrpven_ped.romanCLI_FANT.AsString;
    qrpven_ped.qrlcli2.Caption := qrpven_ped.qrlcli.Caption;

    qrpven_ped.qrlven.Caption  := oStrZero(qrpven_ped.romanROM_CVEN.AsInteger,5)+' - '+qrpven_ped.romanUSU_DUSU.AsString;
    qrpven_ped.qrlven2.Caption := qrpven_ped.qrlven.Caption;

    qrpven_ped.qrlrep.Caption  := oStrZero(qrpven_ped.romanROM_CREP.AsInteger,5)+' - '+qrpven_ped.romanREP_FANT.AsString;
    qrpven_ped.qrlrep2.Caption := qrpven_ped.qrlrep.Caption;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpven_ped.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    if frmprincipal.parametrosPAR_NVIA.AsString = '1' then
    begin
      qrpven_ped.qtitulo2.Height    := 0;
      qrpven_ped.qsubtitulo2.Height := 0;
      qrpven_ped.qdetalhe2.Height   := 0;
      qrpven_ped.qsumario2.Height   := 0;
    end;

    qrpven_ped.qrldesc.Caption := '';
    if (qrpven_ped.romanROM_TDSC.AsString = '%') and (qrpven_ped.romanROM_PDSC.AsFloat > 0) then
    qrpven_ped.qrldesc.Caption := 'Desc (%)' else
    if (qrpven_ped.romanROM_TDSC.AsString = '$') and (qrpven_ped.romanROM_PDSC.AsFloat > 0) then
    qrpven_ped.qrldesc.Caption  := 'Desc ($)';
    qrpven_ped.qrldesc2.Caption := qrpven_ped.qrldesc.Caption;

    if qrpven_ped.qrldesc.Caption = '' then
    begin
      qrpven_ped.qrdbROM_PDSC.DataField := '';
      qrpven_ped.qrdbROM_PDSC.DataSet   := nil;
    end;  

    qrpven_ped.qrlpagina.Caption  := 'Página: '+qrpven_ped.romanROM_CONC.AsString;
    if (qrpven_ped.romanROM_PPRN.AsInteger) >= 1 then
    qrpven_ped.qrlpagina.Caption  := 'Página: '+qrpven_ped.romanROM_CONC.AsString+'/'+inttostr(qrpven_ped.romanROM_PPRN.AsInteger + 1);
    qrpven_ped.qrlpagina2.Caption := qrpven_ped.qrlpagina.Caption;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PAG_PARC,PAG_DPAG FROM TAB_PAG');
      SQL.Add('WHERE  ID = '''+qrpven_ped.romanROM_CPAG.AsString+'''');
      Open;

      qrpven_ped.qrlparc.Caption  := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpven_ped.qrlparc2.Caption := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpven_ped.qrlpag.Caption   := fields[1].AsString;
      qrpven_ped.qrlpag2.Caption  := fields[1].AsString;

      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpven_ped.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpven_ped.lanpa1.Caption  := '';
    qrpven_ped.ladpa1.Caption  := '';
    qrpven_ped.lavpa1.Caption  := '';
    qrpven_ped.lanpa2.Caption  := '';
    qrpven_ped.ladpa2.Caption  := '';
    qrpven_ped.lavpa2.Caption  := '';
    qrpven_ped.lanpa3.Caption  := '';
    qrpven_ped.ladpa3.Caption  := '';
    qrpven_ped.lavpa3.Caption  := '';
    qrpven_ped.lanpa4.Caption  := '';
    qrpven_ped.ladpa4.Caption  := '';
    qrpven_ped.lavpa4.Caption  := '';
    qrpven_ped.lanpa5.Caption  := '';
    qrpven_ped.ladpa5.Caption  := '';
    qrpven_ped.lavpa5.Caption  := '';
    qrpven_ped.lanpa6.Caption  := '';
    qrpven_ped.ladpa6.Caption  := '';
    qrpven_ped.lavpa6.Caption  := '';
    qrpven_ped.lanpa7.Caption  := '';
    qrpven_ped.ladpa7.Caption  := '';
    qrpven_ped.lavpa7.Caption  := '';
    qrpven_ped.lanpa8.Caption  := '';
    qrpven_ped.ladpa8.Caption  := '';
    qrpven_ped.lavpa8.Caption  := '';
    qrpven_ped.lanpa9.Caption  := '';
    qrpven_ped.ladpa9.Caption  := '';
    qrpven_ped.lavpa9.Caption  := '';
    qrpven_ped.lanpa10.Caption := '';
    qrpven_ped.ladpa10.Caption := '';
    qrpven_ped.lavpa10.Caption := '';

    if qrpven_ped.romanROM_CDBX.AsInteger = 0 then
    VEN_PED_PEDIDO_SEMBAIXA
    else
    VEN_PED_PEDIDO_COMBAIXA(qrpven_ped.romanROM_STCO.AsString);

    qrpven_ped.lanpa21.Caption  := qrpven_ped.lanpa1.Caption ;
    qrpven_ped.ladpa21.Caption  := qrpven_ped.ladpa1.Caption ;
    qrpven_ped.lavpa21.Caption  := qrpven_ped.lavpa1.Caption ;
    qrpven_ped.lanpa22.Caption  := qrpven_ped.lanpa2.Caption ;
    qrpven_ped.ladpa22.Caption  := qrpven_ped.ladpa2.Caption ;
    qrpven_ped.lavpa22.Caption  := qrpven_ped.lavpa2.Caption ;
    qrpven_ped.lanpa23.Caption  := qrpven_ped.lanpa3.Caption ;
    qrpven_ped.ladpa23.Caption  := qrpven_ped.ladpa3.Caption ;
    qrpven_ped.lavpa23.Caption  := qrpven_ped.lavpa3.Caption ;
    qrpven_ped.lanpa24.Caption  := qrpven_ped.lanpa4.Caption ;
    qrpven_ped.ladpa24.Caption  := qrpven_ped.ladpa4.Caption ;
    qrpven_ped.lavpa24.Caption  := qrpven_ped.lavpa4.Caption ;
    qrpven_ped.lanpa25.Caption  := qrpven_ped.lanpa5.Caption ;
    qrpven_ped.ladpa25.Caption  := qrpven_ped.ladpa5.Caption ;
    qrpven_ped.lavpa25.Caption  := qrpven_ped.lavpa5.Caption ;
    qrpven_ped.lanpa26.Caption  := qrpven_ped.lanpa6.Caption ;
    qrpven_ped.ladpa26.Caption  := qrpven_ped.ladpa6.Caption ;
    qrpven_ped.lavpa26.Caption  := qrpven_ped.lavpa6.Caption ;
    qrpven_ped.lanpa27.Caption  := qrpven_ped.lanpa7.Caption ;
    qrpven_ped.ladpa27.Caption  := qrpven_ped.ladpa7.Caption ;
    qrpven_ped.lavpa27.Caption  := qrpven_ped.lavpa7.Caption ;
    qrpven_ped.lanpa28.Caption  := qrpven_ped.lanpa8.Caption ;
    qrpven_ped.ladpa28.Caption  := qrpven_ped.ladpa8.Caption ;
    qrpven_ped.lavpa28.Caption  := qrpven_ped.lavpa8.Caption ;
    qrpven_ped.lanpa29.Caption  := qrpven_ped.lanpa9.Caption ;
    qrpven_ped.ladpa29.Caption  := qrpven_ped.ladpa9.Caption ;
    qrpven_ped.lavpa29.Caption  := qrpven_ped.lavpa9.Caption ;
    qrpven_ped.lanpa210.Caption := qrpven_ped.lanpa10.Caption;
    qrpven_ped.ladpa210.Caption := qrpven_ped.ladpa10.Caption;
    qrpven_ped.lavpa210.Caption := qrpven_ped.lavpa10.Caption;

    qrpven_ped.Prepare;
    qrpven_ped.Preview
  finally
    freeAndNil(qrpven_ped);
    qrpven_ped.Free;
  end;
end;

end.
