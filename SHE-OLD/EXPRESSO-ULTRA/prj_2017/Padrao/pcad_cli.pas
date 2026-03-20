unit pcad_cli;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, DB,
  IBCustomDataSet, IBQuery, ImgList, dxCntner,  ComCtrls, ExtCtrls,
  dxExEdtr, dxEdLib, dxEditor, StdCtrls, DateUtils, DBCtrls, dxPageControl,
  dxDBELib, Menus, IBStoredProc, IBDatabase, IBEvents, Shellapi,
  jpeg, math, rxSpeedbar, IBSQL;

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
    SIINF: TSpeedItem;
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
    procedure siPSQClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGConsultaDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SIINFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcad_cli: Tfrmcad_cli;

implementation

uses uPrincipal, pcad_cli_edi, pcad_pro_con,  pven_ped,
     ppesquisa, pven_nfe, pcad_cli_inf;

{$R *.dfm}

procedure Tfrmcad_cli.FormCreate(Sender: TObject);
begin
  RECDefault.Event := 'CAD_CLI';
  inherited;

  RECDefault.FrmPosition := poDefault; { Abertura Controlada  }
  RECDefault.WorkArea    := True;      { Toda Tela do Windows }
  RECDefault.MainArea    := False;     { Toda Tela MainForm + Exclusão Botões }
  
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

  if cadastro.Fields[0].IsNull then abort;

  if not SBEdicao.Visible then exit;

  Application.CreateForm (Tfrmcad_cli_edi, frmcad_cli_edi);
  try
    frmcad_cli_edi.Tag := 1;
    frmcad_cli_edi.IDCliente := IntToStr(CadastroID.AsInteger);
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

  if oYesNo(handle,'Excluir Cliente ?'+CadastroCLI_FANT.AsString+' ?') = mrNo then
     Abort;

  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_CLI');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecQuery;
    end;

    oCTransact(TEdicao);
    frmprincipal.Log_Eve('Clientes','Cadastro de Clientes','Exclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroCLI_FANT.AsString),'','');
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oErro(Application.Handle,'Falha ao tentar excluir cliente !'+#13+#13+
                               'Error Code: '+E.Message+'.'       +#13+
                                Caption+'.');
    end;
  end;

  ExecuteEvent;
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

procedure Tfrmcad_cli.DBGConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
     DBGConsultaDblClick(Sender) else
     inherited;
end;

procedure Tfrmcad_cli.DBGConsultaDblClick(Sender: TObject);
begin
  if Assigned(frmven_ped) then
  begin
    frmven_ped.PESQUISA_CLIENTE('I',cadastroID.AsString,0,false,false);
    Close;
  end else
  if Assigned(frmven_nfe) then
  begin
    frmven_nfe.PESQUISA_CLIENTE('I',cadastroID.AsString,0);
    Close;
  end else
  inherited;
end;

procedure Tfrmcad_cli.FormActivate(Sender: TObject);
begin
  inherited;
  DBGConsulta.FocusedColumn := DBGConsultaCLI_FANT.ColIndex;
end;

procedure Tfrmcad_cli.SIINFClick(Sender: TObject);
begin
  if cadastroID.AsInteger = 0 then
     Abort;

  frmcad_cli_inf := tfrmcad_cli_inf.create(self);
  frmcad_cli_inf.gbinfo.Caption := 'Informaçãoes Resumidas - '+cadastroCLI_FANT.AsString;
  frmcad_cli_inf.gbinfo.Hint    := cadastroCLI_FANT.AsString;
  frmcad_cli_inf.gbinfo.Tag     := cadastroID.AsInteger;

  frmcad_cli_inf.NewString := EmptyStr;
  frmcad_cli_inf.ShowModal;
end;

end.

