unit pcad_cli;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, DB,
  IBCustomDataSet, IBQuery, ImgList, dxCntner,  ComCtrls, ExtCtrls,
  dxExEdtr, dxEdLib, dxEditor, StdCtrls, DateUtils, DBCtrls, dxPageControl,
  dxDBELib, Menus, IBStoredProc, IBDatabase, IBEvents, Shellapi,
  jpeg, math, rxSpeedbar;

type
  Tfrmcad_cli = class(Tfrmpadr2)
    cadastroID: TIntegerField;
    cadastroCLI_RAZA: TIBStringField;
    cadastroCLI_FANT: TIBStringField;
    cadastroCLI_STA: TIBStringField;
    cadastroCLI_CPF: TIBStringField;
    cadastroCLI_CNPJ: TIBStringField;
    cadastroCLI_LOGR: TIBStringField;
    cadastroCLI_BAI: TIBStringField;
    cadastroCLI_CID: TIBStringField;
    cadastroCLI_ESTA: TIBStringField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaCLI_RAZA: TdxDBGridMaskColumn;
    dbgConsultaCLI_FANT: TdxDBGridMaskColumn;
    dbgConsultaCLI_CNPJ: TdxDBGridMaskColumn;
    dbgConsultaCLI_CID: TdxDBGridMaskColumn;
    siROM: TSpeedItem;
    dbgConsultaCLI_CRED: TdxDBGridMaskColumn;
    dbgConsultaCLI_STAV: TdxDBGridMaskColumn;
    Label8: TLabel;
    dbgConsultaCLI_LOGR: TdxDBGridMaskColumn;
    dbgConsultaCLI_BAI: TdxDBGridMaskColumn;
    dbgConsultaCLI_ESTA: TdxDBGridMaskColumn;
    dbgConsultaCLI_CPF: TdxDBGridMaskColumn;
    cadastroCLI_CRED: TIBBCDField;
    cadastroCLI_DPAG: TIBStringField;
    cadastroCLI_STAV: TIBStringField;
    cadastroCLI_VDSC: TIBBCDField;
    cadastroCLI_DCAD: TDateField;
    cadastroCLI_DFUN: TDateField;
    cadastroCLI_DALT: TDateField;
    cadastroCLI_DULT: TDateField;
    dbgConsultaCLI_DCAD: TdxDBGridDateColumn;
    dbgConsultaCLI_DFUN: TdxDBGridDateColumn;
    dbgConsultaCLI_DALT: TdxDBGridDateColumn;
    dbgConsultaCLI_DULT: TdxDBGridDateColumn;
    cadastroCLI_DDD: TIBStringField;
    cadastroCLI_TEL1: TIBStringField;
    dbgConsultaCLI_DDD: TdxDBGridMaskColumn;
    dbgConsultaCLI_TEL1: TdxDBGridMaskColumn;
    siCOM: TSpeedItem;
    cadastroREP_FANT: TIBStringField;
    cadastroUSU_DUSU: TIBStringField;
    dbgConsultaREP_FANT: TdxDBGridMaskColumn;
    dbgConsultaUSU_DUSU: TdxDBGridMaskColumn;
    cadastroCLI_DUSU: TIBStringField;
    dbgConsultaCLI_DUSU: TdxDBGridMaskColumn;
    cadastroCLI_VULT: TIBBCDField;
    CadastroCLI_TLOG: TIBStringField;
    CadastroCLI_NUME: TIBStringField;
    CadastroCLI_CEP: TIBStringField;
    CadastroCLI_COMP: TIBStringField;
    CadastroCLI_STPD: TSmallintField;
    CadastroCLI_DTRA: TIBStringField;
    CadastroCLI_OBSO: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure siINCClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siDELClick(Sender: TObject);
    procedure siLIXOClick(Sender: TObject);
    procedure siPRNClick(Sender: TObject);
    procedure siEVEClick(Sender: TObject);
    procedure siPSQClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcad_cli: Tfrmcad_cli;

implementation

uses uPrincipal, pcad_cli_edi, pcad_pro_con, prelatorio_geral, plog_eve, pven_ped,
     ppesquisa, pven_nfe, pven_oca;

{$R *.dfm}

procedure Tfrmcad_cli.FormCreate(Sender: TObject);
begin
  cEvent := 'CAD_CLI';
  inherited;

  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CLI_BAI,CLI_TLOG,CLI_LOGR,CLI_NUME,CLI_CEP,CLI_COMP,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,');
    SQL.Add('       CLI_VDSC,CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,CLI_VULT,CLI_DDD,CLI_TEL1,REP_FANT,USU_DUSU,CLI_STPD,CLI_DTRA,CLI_DUSU,');
    SQL.Add('       TRIM(CAST(SUBSTRING(CLI_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) CLI_OBSO');
    SQL.Add('FROM   CAD_CLI');
    SQL.Add('LEFT   OUTER JOIN CAD_USU ON CAD_CLI.CLI_CVEN = CAD_USU.USU_CUSU');
    SQL.Add('LEFT   OUTER JOIN CAD_REP ON CAD_CLI.CLI_CREP = CAD_REP.ID');
    SQL.Add('WHERE  CAD_CLI.CLI_STA  = ''0''');
    if frmprincipal.parametrosPAR_TCLI.AsString = '0' then
    SQL.Add('AND CAD_CLI.ID = 0');

    if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
    SQL.Add('AND USU_DUSU = '''+frmprincipal.cad_usuUSU_DUSU.AsString+'''');

    SQL.Add('ORDER BY CLI_FANT');
    Prepare;
  end;
end;

procedure Tfrmcad_cli.FormDestroy(Sender: TObject);
begin
  inherited;
  frmcad_cli := Nil;
end;

procedure Tfrmcad_cli.siINCClick(Sender: TObject);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Clientes';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  frmcad_cli_edi := TFrmcad_cli_edi.Create(self);
  try
    frmcad_cli_edi.Tag := frmcad_cli.Tag;
    frmcad_cli_edi.ShowModal;
  finally
    if frmcad_cli_edi.editado then
    ExecuteEvent;

    freeAndNil(frmcad_cli_edi);
  end;
end;

procedure Tfrmcad_cli.siALTClick(Sender: TObject);
begin
  sbMSG.Panels[0].Text := 'Alteração';
  sbMSG.Update;

  wRecord := cadastro.GetBookmark;

  if cadastro.Fields[0].IsNull then abort;

  if not SpeedBar1.Visible then exit;

  Application.CreateForm (Tfrmcad_cli_edi, frmcad_cli_edi);
  try
    frmcad_cli_edi.Tag := 1;
    frmcad_cli_edi.ShowModal;
  finally
    if frmcad_cli_edi.editado then
    ExecuteEvent;

    freeAndNil(frmcad_cli_edi);
  end;
end;

procedure Tfrmcad_cli.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
  var Value: Variant;
begin
  if (not ASelected) and (dbgconsulta.Tag = 0) then
  begin
    AFont.Color := clBlack;
    AColor      := clWhite;

    Value := ANode.Values[14];
    if (Value = '') or (VarIsNull(Value)) then
    begin
      AColor      := clWhite;
      AFont.Color := clBlack;
    end
    else
    begin
      AColor      := $00BEEFF8;
      AFont.Color := clBlack;
    end;

    Value := ANode.Values[19];

    if dbgconsulta.Tag = 0 then
    AColor := clWhite
    else
    AColor := clBtnface;

    if not VarIsNull(Value) then
    begin
      if Value = 'I' then
      begin
         AFont.Color := clwhite;
         AColor      := clRed;
      end
      else if Value = 'S' then
      begin
         AFont.Color := clwhite;
         AColor      := $000024B3;
      end
    end;
  end;
end;

procedure Tfrmcad_cli.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Clientes';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  with consulta do
  begin
    if cadastroCLI_STA.Value = '1' then
    begin
      if oYesNo(handle,'Confirma a exclusão do cliente '+cadastroCLI_FANT.AsString+' ?') = mrno then
         abort;

      SQL.Clear;
      SQL.Add('DELETE FROM CAD_CLI');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecSQL;
      frmprincipal.Log_Eve('Clientes','Cadastro de Clientes','Exclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroCLI_FANT.AsString),'','');
    end
    else
    begin
      if oYesNo(handle,'Enviar para a lixeira o cliente '+cadastroCLI_FANT.AsString+' ?') = mrno then
         abort;

      SQL.Clear;
      SQL.Add('UPDATE CAD_CLI');
      SQL.Add('SET    CLI_STA = ''1''');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecSQL;
      frmprincipal.Log_Eve('Clientes','Cadastro de Clientes','Lixeira' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroCLI_FANT.AsString),'','');
    end;
  end;

  IBTra.CommitRetaining;
  wRecord := nil;
  ExecuteEvent;

  if dbgconsulta.Tag = 1 then
  siLIXO.Click;
end;

procedure Tfrmcad_cli.siLIXOClick(Sender: TObject);
begin
  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CLI_BAI,CLI_TLOG,CLI_LOGR,CLI_NUME,CLI_CEP,CLI_COMP,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,');
    SQL.Add('       CLI_VDSC,CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,CLI_VULT,CLI_DDD,CLI_TEL1,REP_FANT,USU_DUSU,CLI_STPD,CLI_DTRA,CLI_DUSU,');
    SQL.Add('       TRIM(CAST(SUBSTRING(CLI_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) CLI_OBSO');
    SQL.Add('FROM   CAD_CLI');
    SQL.Add('LEFT   OUTER JOIN CAD_USU ON CAD_CLI.CLI_CVEN = CAD_USU.USU_CUSU');
    SQL.Add('LEFT   OUTER JOIN CAD_REP ON CAD_CLI.CLI_CREP = CAD_REP.ID');

    if dbgconsulta.Tag = 0 then
    begin
    dbgconsulta.Tag   := 1;
    dbgconsulta.Color := clBtnface;
    end
    else
    begin
    dbgconsulta.Tag   := 0;
    dbgconsulta.Color := clWhite;
    end;

    SQL.Add('WHERE  CAD_CLI.CLI_STA  = '''+inttostr(dbgconsulta.Tag)+'''');

    if dbgconsulta.Tag = 0 then
    begin
      if frmprincipal.parametrosPAR_TCLI.AsString <> '1' then
      SQL.Add('AND CAD_CLI.CLI_DULT BETWEEN '''+formatDateTime('mm/dd/yy',StartOfTheMonth(strtodate(SLPrincipal.Values['data_sistema'])))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(strtodate(SLPrincipal.Values['data_sistema'])))+'''');

      if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
      SQL.Add('AND USU_DUSU = '''+frmprincipal.cad_usuUSU_DUSU.AsString+'''');
    end;

    SQL.Add('ORDER BY CLI_FANT');
    Open;
  end;
end;

procedure Tfrmcad_cli.siPRNClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.tsCAD_CLI.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsCAD_CLI;

    if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
    frmrelatorio_geral.cbCAD_CLI_DVEN.Text := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   REP_FANT');
      SQL.Add('FROM     CAD_REP,'+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('WHERE    CAD_REP.ID = ROM_CREP');
      SQL.Add('GROUP BY REP_FANT');
      SQL.Add('ORDER BY REP_FANT');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_CLI_DREP.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   USU_DUSU');
      SQL.Add('FROM     CAD_USU,'+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('WHERE    CAD_USU.USU_CUSU = ROM_CVEN');
      SQL.Add('GROUP BY USU_DUSU');
      SQL.Add('ORDER BY USU_DUSU');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_CLI_DVEN.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   CLI_CID');
      SQL.Add('FROM     CAD_CLI,'+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('WHERE    CAD_CLI.ID = ROM_CCLI');
      SQL.Add('GROUP BY CLI_CID');
      SQL.Add('ORDER BY CLI_CID');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_CLI_DCID.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   PAR_FANT FROM PAR_SIS');
      SQL.Add('ORDER BY PAR_FANT');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_CLI_CDEP.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbCAD_CLI_CDEP.Descriptions.Add(fields[0].AsString);
        next;
      end;
    end;

    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmcad_cli.siEVEClick(Sender: TObject);
begin
  frmlog_eve := tfrmlog_eve.create(self);
  with frmlog_eve.cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT LOG_EVE.*,PAR_SIS.PAR_FANT,CAD_FUN.FUN_FOTO');
    SQL.Add('FROM   LOG_EVE,PAR_SIS');
    SQL.Add('LEFT   OUTER JOIN CAD_FUN ON LOG_EVE.EVE_CLOG = CAD_FUN.ID');
    SQL.Add('WHERE  LOG_EVE.EVE_CDEP = PAR_SIS.ID');
    SQL.Add('AND    LOG_EVE.EVE_FUNC = ''Clientes''');
    if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
    SQL.Add('AND    LOG_EVE.EVE_CLOG = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
    SQL.Add('ORDER BY ID DESC');
    Open;
  end;
  frmlog_eve.show;
end;

procedure Tfrmcad_cli.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 3;
    if campo_pesquisa = '' then
    frmpesquisa.cbCAMPO.Text := 'Fantasia' else
    frmpesquisa.cbCAMPO.Text := campo_pesquisa;
    frmpesquisa.cbDATA.Text  := 'Última Compra';
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      if (edTXT.Text = '') and (dxdt1.Date < 0) and (cField <> 'Todos') then
         {nothing}
      else
      begin
        if cbCAMPO.Text = 'Nota Fiscal' then
        with consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT   NFE_CAB.NFE_CFAV FROM NFE_CAB "NFE_CAB"');
          SQL.Add('WHERE    NFE_CAB.NFE_CDNF = '''+edTXT.Text+'''');
          SQL.Add('UNION');
          SQL.Add('SELECT   NFE_CAB.NFE_CFAV FROM NFE_CAB_002 "NFE_CAB"');
          SQL.Add('WHERE    NFE_CAB.NFE_CDNF = '''+edTXT.Text+'''');
          SQL.Add('UNION');
          SQL.Add('SELECT   NFE_CAB.NFE_CFAV FROM NFE_CAB_003 "NFE_CAB"');
          SQL.Add('WHERE    NFE_CAB.NFE_CDNF = '''+edTXT.Text+'''');
          SQL.Add('UNION');
          SQL.Add('SELECT   NFE_CAB.NFE_CFAV FROM NFE_CAB_004 "NFE_CAB"');
          SQL.Add('WHERE    NFE_CAB.NFE_CDNF = '''+edTXT.Text+'''');
          SQL.Add('UNION');
          SQL.Add('SELECT   NFE_CAB.NFE_CFAV FROM NFE_CAB_005 "NFE_CAB"');
          SQL.Add('WHERE    NFE_CAB.NFE_CDNF = '''+edTXT.Text+'''');
          SQL.Add('UNION');
          SQL.Add('SELECT   NFE_CAB.NFE_CFAV FROM NFE_CAB_006 "NFE_CAB"');
          SQL.Add('WHERE    NFE_CAB.NFE_CDNF = '''+edTXT.Text+'''');
          Open;

          if fields[0].IsNull then
             raise exception.Create('Número da nota fiscal não encontrada !');

          edTXT.Text   := fields[0].AsString;
          cbCAMPO.Text := 'Código';
          cField       := 'ID';
        end;

        with cadastro do
        begin
          SQL.Clear;
          SQL.Add('SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CLI_BAI,CLI_TLOG,CLI_LOGR,CLI_NUME,CLI_CEP,CLI_COMP,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,');
          SQL.Add('       CLI_VDSC,CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,CLI_VULT,CLI_DDD,CLI_TEL1,REP_FANT,USU_DUSU,CLI_STPD,CLI_DTRA,CLI_DUSU,');
          SQL.Add('       TRIM(CAST(SUBSTRING(CLI_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) CLI_OBSO');
          SQL.Add('FROM   CAD_CLI');
          SQL.Add('LEFT   OUTER JOIN CAD_USU ON CAD_CLI.CLI_CVEN = CAD_USU.USU_CUSU');
          SQL.Add('LEFT   OUTER JOIN CAD_REP ON CAD_CLI.CLI_CREP = CAD_REP.ID');
          SQL.Add('WHERE  CAD_CLI.CLI_STA  = '''+inttostr(dbgconsulta.Tag)+'''');

          if cField <> 'Todos' then
          begin
            if frmprincipal.cad_usuUSU_MENU.AsString = 'REP' then
            SQL.Add('AND REP_FANT = '''+frmprincipal.cad_usuUSU_DUSU.AsString+'''');

            if edtxt.Text <> '' then
            begin
              if cField = 'ID' then
              SQL.Add('AND CAD_CLI.ID = '''+edtxt.Text+'''')
              else
              SQL.Add('AND '+cField+' LIKE ''%'+edtxt.Text+'%''');
            end;

            if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
            SQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');
          end;

          if cField = 'Todos' then
             cField := 'CLI_FANT';

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

end.

