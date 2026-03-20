unit pfin_dup_edi;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB, DateUtils,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxExEdtr,
  dxEdLib, dxCntner, dxEditor, StdCtrls, dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms, math, rxSpeedbar;

type
  Tfrmfin_dup_edi = class(Tfrmpadr3)
    Panel1: TPanel;
    Label14: TLabel;
    linha2: TShape;
    Shape3: TShape;
    Label7: TLabel;
    Label1: TLabel;
    edcdnf: TdxMaskEdit;
    eddemi: TdxDateEdit;
    Shape1: TShape;
    Label3: TLabel;
    Shape2: TShape;
    lacfav: TLabel;
    Label5: TLabel;
    Label71: TLabel;
    edcfav: TdxMaskEdit;
    eddfav: TdxMaskEdit;
    edrfav: TdxMaskEdit;
    Shape4: TShape;
    Label6: TLabel;
    Shape5: TShape;
    Label37: TLabel;
    cbdpag: TdxImageEdit;
    edvnf: TdxMaskEdit;
    Label13: TLabel;
    cadastro: TIBDataSet;
    dtscadastro: TDataSource;
    psq_cli: TIBQuery;
    psq_for: TIBQuery;
    psq_forID: TIntegerField;
    psq_forFOR_FANT: TIBStringField;
    psq_forFOR_RAZA: TIBStringField;
    psq_forFOR_CNPJ: TIBStringField;
    psq_forFOR_CPF: TIBStringField;
    psq_forFOR_CRED: TIBBCDField;
    psq_forFOR_CID: TIBStringField;
    psq_forFOR_BAI: TIBStringField;
    psq_forFOR_LOGR: TIBStringField;
    psq_forFOR_ESTA: TIBStringField;
    psq_forFOR_STA: TIBStringField;
    psq_forFOR_STAV: TIBStringField;
    psq_forFOR_DPAG: TIBStringField;
    psq_forFOR_OBSO: TMemoField;
    psq_forFOR_VDSC: TIBBCDField;
    psq_forFOR_DCAD: TDateField;
    psq_forFOR_DFUN: TDateField;
    psq_forFOR_DALT: TDateField;
    psq_forFOR_DULT: TDateField;
    dup_001: TIBDataSet;
    dup_001ID: TIntegerField;
    dup_001NFE_CDRO: TIntegerField;
    dup_001NFE_CCAB: TIntegerField;
    dup_001NFE_CFAV: TIntegerField;
    dup_001NFE_DROM: TDateField;
    dup_001NFE_CDNF: TIntegerField;
    dup_001NFE_DNFE: TDateField;
    dup_001NFE_TITU: TIBStringField;
    dup_001NFE_DVEN: TDateField;
    dup_001NFE_PARC: TIntegerField;
    dup_001NFE_VDUP: TIBBCDField;
    dup_001NFE_DPAG: TDateField;
    dup_001NFE_VPAG: TIBBCDField;
    dup_001NFE_VPEN: TIBBCDField;
    dup_001NFE_OBSE: TMemoField;
    dup_001NFE_STA: TIBStringField;
    dup_001NFE_STPD: TIBStringField;
    dup_001NFE_STCO: TIBStringField;
    dup_001NFE_STFI: TIBStringField;
    dtsdup_001: TDataSource;
    dbgdup: TdxDBGrid;
    dbgdupNFE_CDNF: TdxDBGridMaskColumn;
    dbgdupNFE_DNFE: TdxDBGridDateColumn;
    dbgdupNFE_TITU: TdxDBGridMaskColumn;
    dbgdupNFE_DVEN: TdxDBGridDateColumn;
    dbgdupNFE_VDUP: TdxDBGridMaskColumn;
    SpeedBar1: TSpeedBar;
    SpeedbarSection10: TSpeedbarSection;
    SpeedbarSection11: TSpeedbarSection;
    SpeedbarSection12: TSpeedbarSection;
    SpeedbarSection13: TSpeedbarSection;
    siIDU: TSpeedItem;
    siDDU: TSpeedItem;
    siSDU: TSpeedItem;
    siCDU: TSpeedItem;
    siADU: TSpeedItem;
    tab_pag: TIBQuery;
    tab_pagID: TIntegerField;
    tab_pagPAG_DPAG: TIBStringField;
    tab_pagPAG_D001: TIntegerField;
    tab_pagPAG_D002: TIntegerField;
    tab_pagPAG_D003: TIntegerField;
    tab_pagPAG_D004: TIntegerField;
    tab_pagPAG_D005: TIntegerField;
    tab_pagPAG_D006: TIntegerField;
    tab_pagPAG_D007: TIntegerField;
    tab_pagPAG_D008: TIntegerField;
    tab_pagPAG_D009: TIntegerField;
    tab_pagPAG_D010: TIntegerField;
    tab_pagPAG_STA: TIBStringField;
    tab_pagPAG_PARC: TSmallintField;
    tab_pagPAG_DUPL: TIBStringField;
    psq_rom: TIBQuery;
    psq_romID: TIntegerField;
    psq_romROM_CDNF: TIntegerField;
    psq_romROM_STPD: TIBStringField;
    psq_romROM_STCO: TIBStringField;
    psq_romROM_STFI: TIBStringField;
    psq_romROM_CCLI: TIntegerField;
    psq_romROM_CVEN: TIntegerField;
    psq_romROM_CREP: TIntegerField;
    psq_romROM_CPAG: TIntegerField;
    psq_romPAG_DPAG: TIBStringField;
    psq_nfe: TIBQuery;
    tSHEILD: TIBTransaction;
    consulta_S: TIBQuery;
    psq_nfeID: TIntegerField;
    psq_nfeNFE_CDNF: TIntegerField;
    psq_nfeNFE_DEMI: TDateField;
    psq_nfeNFE_CFAV: TIntegerField;
    psq_nfeNFE_VNF: TIBBCDField;
    psq_nfeNFE_CLFO: TIBStringField;
    Shape6: TShape;
    Shape7: TShape;
    Label4: TLabel;
    Label8: TLabel;
    edstpd: TdxMaskEdit;
    edstco: TdxMaskEdit;
    Label2: TLabel;
    psq_romROM_CONC: TSmallintField;
    cbconc: TdxImageEdit;
    Label9: TLabel;
    edcdbx: TdxMaskEdit;
    psq_romROM_CDBX: TIntegerField;
    psq_romROM_DERO: TIBStringField;
    psq_cliID: TIntegerField;
    psq_cliCLI_FANT: TIBStringField;
    psq_cliCLI_RAZA: TIBStringField;
    psq_cliCLI_CNPJ: TIBStringField;
    psq_cliCLI_CPF: TIBStringField;
    psq_cliCLI_CRED: TIBBCDField;
    psq_cliCLI_CID: TIBStringField;
    psq_cliCLI_BAI: TIBStringField;
    psq_cliCLI_TLOG: TIBStringField;
    psq_cliCLI_LOGR: TIBStringField;
    psq_cliCLI_NUME: TIBStringField;
    psq_cliCLI_CEP: TIBStringField;
    psq_cliCLI_COMP: TIBStringField;
    psq_cliCLI_ESTA: TIBStringField;
    psq_cliCLI_STA: TIBStringField;
    psq_cliCLI_STAV: TIBStringField;
    psq_cliCLI_DPAG: TIBStringField;
    psq_cliCLI_VDSC: TIBBCDField;
    psq_cliCLI_DCAD: TDateField;
    psq_cliCLI_DFUN: TDateField;
    psq_cliCLI_DALT: TDateField;
    psq_cliCLI_DULT: TDateField;
    psq_cliCLI_VULT: TIBBCDField;
    psq_cliCLI_DDD: TIBStringField;
    psq_cliCLI_TEL1: TIBStringField;
    psq_cliREP_FANT: TIBStringField;
    psq_cliUSU_DUSU: TIBStringField;
    psq_cliCLI_STPD: TSmallintField;
    psq_cliCLI_DTRA: TIBStringField;
    psq_cliCLI_DUSU: TIBStringField;
    psq_cliCLI_OBSO: TIBStringField;
    procedure edcdnfExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dup_001AfterDelete(DataSet: TDataSet);
    procedure dup_001AfterEdit(DataSet: TDataSet);
    procedure dup_001AfterPost(DataSet: TDataSet);
    procedure dup_001BeforeCancel(DataSet: TDataSet);
    procedure dup_001NewRecord(DataSet: TDataSet);
    procedure siIDUClick(Sender: TObject);
    procedure siDDUClick(Sender: TObject);
    procedure siSDUClick(Sender: TObject);
    procedure siCDUClick(Sender: TObject);
    procedure siADUClick(Sender: TObject);
    procedure cbdpagExit(Sender: TObject);
    procedure edvnfValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure siSAVClick(Sender: TObject);
    procedure dup_001BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure PESQUISA_NOTA_FISCAL;
    procedure PESQUISA_CLIENTE;
    procedure PESQUISA_FORNECEDOR;
    procedure DUPLICATAS;
    procedure ABRE_TABELA;
  public
    { Public declarations }
  end;

var
  frmfin_dup_edi: Tfrmfin_dup_edi;

implementation

uses uprincipal, pcad_cli, pcad_for;

{$R *.dfm}

procedure Tfrmfin_dup_edi.ABRE_TABELA;
begin
  if not tSHEILD.Active then tSHEILD.StartTransaction;

  with dup_001 do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM NFE_DUP');
    ExecSQL;

    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM NFE_DUP');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;
end;

procedure Tfrmfin_dup_edi.DUPLICATAS;
var
  i: word;
  valNFE,valDUP: double;
const
  aDup : array [1..24] of string = ('A','B','C','D','E','F','G',
                                    'H','I','J','K','L','M','N',
                                    'O','P','Q','R','S','T','U',
                                    'V','X','Z');
begin
  ABRE_TABELA;
  with tab_pag do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM TAB_PAG');
    if cbdpag.Text <> '' then
    SQL.Add('WHERE  PAG_DPAG = '''+cbdpag.Text+'''')
    else
    SQL.Add('WHERE  ID       = '''+frmprincipal.parametrosPAR_CPAG.AsString+'''');
    Open;
  end;

  valNFE := oTextToValor(edvnf.text);
  valDUP := ROUNDTO(valNFE/tab_pagPAG_PARC.AsInteger,-2);

  for i  := 1 to tab_pagPAG_PARC.AsInteger do
  begin
    dup_001.Append;

    dup_001NFE_CDRO.Value := psq_romID.AsInteger;
    dup_001NFE_DROM.Value := eddemi.Date;
    dup_001NFE_CFAV.Value := strtoint(edcfav.Text);
    dup_001NFE_CDNF.Value := strtoint(edcdnf.Text);
    dup_001NFE_DNFE.Value := eddemi.Date;
    dup_001NFE_TITU.Value := dup_001NFE_CDNF.AsString+'-'+aDUP[i];
    dup_001NFE_DVEN.Value := incDay(eddemi.Date,tab_pag.Fields[i+1].Value);
    dup_001NFE_STPD.Value := psq_romROM_STPD.AsString;
    dup_001NFE_STCO.Value := psq_romROM_STCO.AsString;
    dup_001NFE_STFI.Value := psq_romROM_STFI.AsString;
    dup_001NFE_PARC.Value := i;
    dup_001NFE_VDUP.Value := valDUP;
    dup_001.Post;
  end;

  if roundto(valDUP*tab_pagPAG_PARC.AsInteger,-2) <> valNFE then
  begin
    dup_001.Last;
    dup_001.Edit;
    if roundto(valDUP*tab_pagPAG_PARC.AsInteger,-2) > valNFE then
    dup_001NFE_VDUP.Value := valDUP - (roundto(valDUP*tab_pagPAG_PARC.AsInteger,-2) - valNFE)
    else
    dup_001NFE_VDUP.Value := valDUP + (valNFE - roundto(valDUP*tab_pagPAG_PARC.AsInteger,-2));
    dup_001.Post;
  end;
  dup_001.Close;
  dup_001.Open;
end;

procedure Tfrmfin_dup_edi.PESQUISA_CLIENTE;
begin
  activecontrol := nil;
  try
    tag := 1;

    with psq_cli do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CLI_BAI,CLI_TLOG,CLI_LOGR,CLI_NUME,CLI_CEP,CLI_COMP,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,');
      SQL.Add('       CLI_VDSC,CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,CLI_VULT,CLI_DDD,CLI_TEL1,REP_FANT,USU_DUSU,CLI_STPD,CLI_DTRA,CLI_DUSU,');
      SQL.Add('       TRIM(CAST(SUBSTRING(CLI_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) CLI_OBSO');
      SQL.Add('FROM   CAD_CLI');
      SQL.Add('LEFT   OUTER JOIN CAD_USU ON CAD_CLI.CLI_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('LEFT   OUTER JOIN CAD_REP ON CAD_CLI.CLI_CREP = CAD_REP.ID');
      SQL.Add('WHERE  CAD_CLI.ID = '''+edcfav.Text+'''');
      Open;
    end;

    if psq_cli.recordcount = 0 then
    begin
      messageBox(handle,'Código do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end
    else if psq_cli.recordcount = 1 then
    begin
      if psq_cliCLI_STA.AsString <> '0' then
      begin
        messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
      end;

      if psq_cliCLI_STAV.AsString <> 'A' then
      begin
        if psq_cliCLI_STAV.AsString = 'I' then
           messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
        else if psq_cliCLI_STAV.AsString = 'P' then
           messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' aguardando autorização de compra !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
      end;

      if (psq_cliCLI_ESTA.AsString <> 'EX') and (psq_cliID.AsString <> frmprincipal.parametrosPAR_CCLI.AsString) then
      begin
        if (Length(psq_cliCLI_CNPJ.AsString) < 5) and (Length(psq_cliCLI_CPF.AsString) < 5) then
        begin
          messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' sem C.N.P.J. e C.P.F cadastrado. '+#13+'Verifique !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;
      end;

      eddfav.Text := psq_cliCLI_FANT.AsString;
      edrfav.Text := psq_cliCLI_RAZA.AsString;
    end;
  finally
    tag := 0;
  end;
end;

procedure Tfrmfin_dup_edi.PESQUISA_FORNECEDOR;
begin
  activecontrol := nil;
  try
    tag := 1;

    with psq_for do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAD_FOR.ID,FOR_FANT,FOR_RAZA,FOR_CNPJ,FOR_CPF,FOR_CRED,FOR_CID,FOR_BAI,FOR_TLOG,FOR_LOGR,FOR_NUME,FOR_CEP,FOR_COMP,FOR_ESTA,FOR_STA,FOR_STAV,FOR_DPAG,');
      SQL.Add('       FOR_VDSC,FOR_DCAD,FOR_DFUN,FOR_DALT,FOR_DULT,FOR_VULT,FOR_DDD,FOR_TEL1,FOR_DTRA,FOR_CDEP,');
      SQL.Add('       TRIM(CAST(SUBSTRING(FOR_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) FOR_OBSO');
      SQL.Add('FROM   CAD_FOR');
      SQL.Add('WHERE  CAD_FOR.ID = '''+edcfav.Text+'''');
      Open;
    end;

    if psq_for.recordcount = 0 then
    begin
      edcfav.SetFocus;
      messageBox(handle,'Código do fornecedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end
    else if psq_for.recordcount = 1 then
    begin
      if psq_forFOR_STA.AsString <> '0' then
      begin
        edcfav.SetFocus;
        messageBox(handle,PChar('Fornecedor '+psq_forFOR_FANT.AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
      end;

      if psq_forFOR_STAV.AsString <> 'A' then
      begin
        edcfav.SetFocus;

        if psq_forFOR_STAV.AsString = 'I' then
           messageBox(handle,PChar('Fornecedor '+psq_forFOR_FANT.AsString+' inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
        else if psq_forFOR_STAV.AsString = 'P' then
           messageBox(handle,PChar('Fornecedor '+psq_forFOR_FANT.AsString+' aguardando autorização de compra !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
      end;

      if (Length(psq_forFOR_CNPJ.AsString) < 5) and (Length(psq_forFOR_CPF.AsString) < 5) then
      begin
        edcfav.SetFocus;
        messageBox(handle,PChar('Fornecedor '+psq_forFOR_FANT.AsString+' sem C.N.P.J. e C.P.F cadastrado. '+#13+'Verifique !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
      end;

      eddfav.Text := psq_forFOR_FANT.AsString;
      edrfav.Text := psq_forFOR_RAZA.AsString;
    end;
  finally
    tag := 0;
  end;
end;

procedure Tfrmfin_dup_edi.PESQUISA_NOTA_FISCAL;
begin
  with psq_nfe do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,NFE_CDNF,NFE_DEMI,NFE_CFAV,NFE_VNF,NFE_CLFO FROM '+SLPrincipal.Values['nfe_cab']);
    SQL.Add('WHERE  NFE_CDNF = '''+edcdnf.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      messageBox(handle,'Nota fiscal não encontrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;

  eddemi.Date := psq_nfeNFE_DEMI.AsDateTime;
  edvnf.Text  := formatfloat('#,0.00########',psq_nfeNFE_VNF.AsFloat);
  edcfav.Text := psq_nfeNFE_CFAV.AsString;

  if psq_nfeNFE_CLFO.AsString = '1' then
  PESQUISA_FORNECEDOR
  else
  PESQUISA_CLIENTE;

  with psq_rom do
  begin
    SQL.Clear;
    SQL.Add('SELECT PED_VEN_CAB.ID,ROM_CDNF,ROM_STPD,ROM_STCO,ROM_STFI,ROM_CCLI,ROM_CVEN,ROM_CREP,ROM_CPAG,PAG_DPAG,ROM_CONC,ROM_CDBX,ROM_DERO');
    SQL.Add('FROM   TAB_PAG, '+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
    SQL.Add('WHERE  TAB_PAG.ID       = PED_VEN_CAB.ROM_CPAG');
    SQL.Add('AND    PED_VEN_CAB.ROM_CDNF = '''+edcdnf.Text+'''');
    Open;
  end;

  if not psq_rom.Fields[0].IsNull then
  begin
    edstpd.Text := psq_romROM_STPD.AsString;
    edstco.Text := psq_romROM_STCO.AsString;
    cbdpag.Text := psq_romPAG_DPAG.AsString;
    cbconc.Text := psq_romROM_CONC.AsString;
    edcdbx.Text := inttostr(psq_romROM_CDBX.AsInteger);

    if (frmprincipal.cad_usuUSU_MENU.AsString <> 'ADM') and (frmprincipal.cad_usuUSU_MENU.AsString <> 'FIN') then
    begin
      if (edcdbx.Text <> '') and (edcdbx.Text <> '0') and (psq_romROM_STCO.AsString = 'BANCÁRIO') then
      begin
        messageBox(handle,PChar('Nota fiscal já faturada !'+#13+'Pedido No '+psq_romROM_DERO.AsString),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;
    end;  
  end;
  DUPLICATAS;
end;

procedure Tfrmfin_dup_edi.edcdnfExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if (edcdnf.Text <> '') and (edcdnf.Text <> '0') then
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID FROM '+SLPrincipal.Values['nfe_cab']);
        SQL.Add('WHERE  NFE_CDNF = '''+edcdnf.Text+'''');
        Open;

        if fields[0].IsNull then
           raise exception.Create('Nota Fiscal não encontrada !');
      end;
      PESQUISA_NOTA_FISCAL;
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

procedure Tfrmfin_dup_edi.FormCreate(Sender: TObject);
begin
  inherited;

  ABRE_TABELA;
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PAG_DPAG FROM TAB_PAG');
    SQL.Add('WHERE    PAG_STA = ''0''');
    SQL.Add('ORDER BY PAG_DPAG');
    Open;

    while not eof do
    begin
      cbdpag.Values.Add(fields[0].AsString);
      cbdpag.Descriptions.Add(fields[0].AsString);
      next;
    end;
  end;
  editado := false;
end;

procedure Tfrmfin_dup_edi.dup_001AfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
end;

procedure Tfrmfin_dup_edi.dup_001AfterEdit(DataSet: TDataSet);
begin
  siIDU.Enabled := false;
  siADU.Enabled := false;
  siDDU.Enabled := false;
  siSDU.Enabled := true;
  siCDU.Enabled := true;
end;

procedure Tfrmfin_dup_edi.dup_001AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  siIDU.Enabled := true;
  siADU.Enabled := true;
  siDDU.Enabled := true;
  siSDU.Enabled := false;
  siCDU.Enabled := false;

  tSHEILD.CommitRetaining;

  wRec := dup_001.GetBookmark;

  dup_001.Close;
  dup_001.Open;
  if (wRec = Nil) or (dup_001.Fields[0].IsNull) then dup_001.last
     else dup_001.GotoBookmark(wRec);
  dup_001.FreeBookmark(wRec);
end;

procedure Tfrmfin_dup_edi.dup_001BeforeCancel(DataSet: TDataSet);
begin
  siIDU.Enabled := true;
  siADU.Enabled := true;
  siDDU.Enabled := true;
  siSDU.Enabled := false;
  siCDU.Enabled := false;

  if dup_001.RecordCount = 0 then
  begin
    dup_001.Close;
    dup_001.Open;
    ABORT;
  end;
end;

procedure Tfrmfin_dup_edi.dup_001NewRecord(DataSet: TDataSet);
begin
  dup_001ID.Value := 0;
end;

procedure Tfrmfin_dup_edi.siIDUClick(Sender: TObject);
begin
  dup_001.Append;
end;

procedure Tfrmfin_dup_edi.siDDUClick(Sender: TObject);
begin
  dup_001.Delete;
end;

procedure Tfrmfin_dup_edi.siSDUClick(Sender: TObject);
begin
  dup_001.Post;
end;

procedure Tfrmfin_dup_edi.siCDUClick(Sender: TObject);
begin
  dup_001.Cancel;
end;

procedure Tfrmfin_dup_edi.siADUClick(Sender: TObject);
begin
  dup_001.Edit;
end;

procedure Tfrmfin_dup_edi.cbdpagExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if psq_nfeNFE_CDNF.AsInteger > 0 then
       DUPLICATAS;
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

procedure Tfrmfin_dup_edi.edvnfValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if psq_nfeNFE_CDNF.AsInteger > 0 then
     DUPLICATAS;
end;

procedure Tfrmfin_dup_edi.siSAVClick(Sender: TObject);
begin
  activecontrol := nil;

  if psq_nfeID.AsInteger = 0 then
     raise exception.Create('Nota fiscal não selecionada para geração de duplicata !');

  if oYesNo(handle,'Gerar Duplicatas ?') = mrno then
     abort;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM '+SLPrincipal.Values['nfe_dup']);
    SQL.Add('WHERE  NFE_TITU LIKE '''+edcdnf.Text+'%''');
    Open;
  end;

  dup_001.DisableControls;
  dup_001.First;
  while not dup_001.Eof do
  begin
    try
      ibSP.StoredProcName := 'SP_NFE_DUP';
      ibSP.Prepare;

      ibSP.ParamByName('nfe').Value  := 'NFE_DUP';
      if frmprincipal.parametrosID.AsInteger > 1 then
      ibSP.ParamByName('nfe').Value  := 'NFE_DUP_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

      ibSP.ParamByName('id').Value    := 0;
      ibSP.ParamByName('CCAB').Value  := psq_nfeID.AsInteger;
      ibSP.ParamByName('CDRO').Value  := dup_001NFE_CDRO.AsInteger;
      ibSP.ParamByName('CFAV').Value  := dup_001NFE_CFAV.AsInteger;
      ibSP.ParamByName('DROM').Value  := dup_001NFE_DROM.AsDateTime;
      ibSP.ParamByName('CDNF').Value  := dup_001NFE_CDNF.AsInteger;
      ibSP.ParamByName('DNFE').Value  := dup_001NFE_DNFE.AsDateTime;
      ibSP.ParamByName('TITU').Value  := dup_001NFE_TITU.AsString;
      if dup_001NFE_STPD.AsString <> '' then
      ibSP.ParamByName('STPD').Value  := dup_001NFE_STPD.AsString else
      ibSP.ParamByName('STPD').Value  := frmprincipal.parametrosPAR_STPD.AsString;
      if dup_001NFE_STCO.AsString <> '' then
      ibSP.ParamByName('STCO').Value  := dup_001NFE_STCO.AsString else
      ibSP.ParamByName('STCO').Value  := 'BANCÁRIO';
      if dup_001NFE_STFI.AsString <> '' then
      ibSP.ParamByName('STFI').Value  := dup_001NFE_STFI.AsString;
      ibSP.ParamByName('STFI').Value  := 'PENDENTE';
      ibSP.ParamByName('PARC').Value  := dup_001NFE_PARC.AsInteger;
      ibSP.ParamByName('DVEN').Value  := dup_001NFE_DVEN.AsDateTime;
      ibSP.ParamByName('VDUP').Value  := dup_001NFE_VDUP.AsFloat;
      ibSP.ParamByName('DPAG').Value  := dup_001NFE_DPAG.AsDateTime;
      ibSP.ParamByName('VPAG').Value  := 0;
      ibSP.ParamByName('VPEN').Value  := 0;
      if copy(dup_001NFE_STFI.AsString,1,4) = 'PAGO' then
      ibSP.ParamByName('VPAG').Value  := dup_001NFE_VDUP.AsFloat else
      ibSP.ParamByName('VPEN').Value  := dup_001NFE_VDUP.AsFloat;
      ibSP.ParamByName('OBSE').Value  := dup_001NFE_OBSE.Value;
      ibSP.ParamByName('STA').Value   := '0';
      ibSP.ExecProc;

      IBTra.CommitRetaining;
    except
      IBTra.RollbackRetaining;
      messageBox(handle,'Problemas na gravação da duplicata !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
    dup_001.Next;
  end;

  editado := true;
  close;
end;

procedure Tfrmfin_dup_edi.dup_001BeforePost(DataSet: TDataSet);
begin
  dup_001NFE_DVEN.Value := frmprincipal.RETORNA_DATA_VENCIMENTO(dup_001NFE_DVEN.AsDateTime);
end;

end.
