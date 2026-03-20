unit pfin_dup;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls,  ComCtrls, dxDBTLCl, dxGrClms,
  Registry,StrInt, StrIntImp, Xmlxform, xmldom, XMLIntf, msxmldom, XMLDoc,
  IBEvents, dxExEdtr, StdCtrls, rxSpeedbar, IBSQL;

type
  Tfrmfin_dup = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroNFE_CDRO: TIntegerField;
    cadastroNFE_CCAB: TIntegerField;
    cadastroNFE_CFAV: TIntegerField;
    cadastroNFE_DROM: TDateField;
    cadastroNFE_CDNF: TIntegerField;
    cadastroNFE_DNFE: TDateField;
    cadastroNFE_TITU: TIBStringField;
    cadastroNFE_STPD: TIBStringField;
    cadastroNFE_STCO: TIBStringField;
    cadastroNFE_STFI: TIBStringField;
    cadastroNFE_PARC: TIntegerField;
    cadastroNFE_DVEN: TDateField;
    cadastroNFE_VDUP: TIBBCDField;
    cadastroNFE_DPAG: TDateField;
    cadastroNFE_VPAG: TIBBCDField;
    cadastroNFE_VPEN: TIBBCDField;
    cadastroNFE_OBSE: TMemoField;
    cadastroNFE_STA: TIBStringField;
    dbgConsultaNFE_CDNF: TdxDBGridMaskColumn;
    dbgConsultaNFE_DNFE: TdxDBGridDateColumn;
    dbgConsultaNFE_TITU: TdxDBGridMaskColumn;
    dbgConsultaNFE_STCO: TdxDBGridMaskColumn;
    dbgConsultaNFE_DVEN: TdxDBGridDateColumn;
    dbgConsultaNFE_VDUP: TdxDBGridMaskColumn;
    dbgConsultaNFE_STA: TdxDBGridMaskColumn;
    cadastroCLI_FANT: TIBStringField;
    dbgConsultaCLI_FANT: TdxDBGridMaskColumn;
    dbgConsultaNFE_STFI: TdxDBGridMaskColumn;
    dbgConsultaNFE_DPAG: TdxDBGridDateColumn;
    dbgConsultaNFE_VPAG: TdxDBGridMaskColumn;
    dbgConsultaNFE_STPD: TdxDBGridMaskColumn;
    cadastroNFE_VNF: TIBBCDField;
    cadastroCLI_RAZA: TIBStringField;
    cadastroCLI_DDD: TIBStringField;
    cadastroCLI_TEL1: TIBStringField;
    cadastroCLI_CNPJ: TIBStringField;
    cadastroCLI_INSC: TIBStringField;
    cadastroCLI_TLOG: TIBStringField;
    cadastroCLI_LOGR: TIBStringField;
    cadastroCLI_CEP: TIBStringField;
    cadastroCLI_NUME: TIBStringField;
    cadastroCLI_COMP: TIBStringField;
    cadastroCLI_BAI: TIBStringField;
    cadastroCLI_CID: TIBStringField;
    cadastroCLI_ESTA: TIBStringField;
    cadastroCLI_TLOC: TIBStringField;
    cadastroCLI_LOGC: TIBStringField;
    cadastroCLI_CEPC: TIBStringField;
    cadastroCLI_NUMC: TIBStringField;
    cadastroCLI_COMC: TIBStringField;
    cadastroCLI_BAIC: TIBStringField;
    cadastroCLI_CIDC: TIBStringField;
    cadastroCLI_ESTC: TIBStringField;
    cadastroNFE_LOGR: TStringField;
    cadastroNFE_CHAV: TIBStringField;
    cadastroTLOG: TStringField;
    cadastroLOGR: TStringField;
    cadastroCEP: TStringField;
    cadastroNUME: TStringField;
    cadastroCOMP: TStringField;
    cadastroBAI: TStringField;
    cadastroCID: TStringField;
    cadastroESTA: TStringField;
    cadastroCNPJ: TStringField;
    cadastroNFE_IDBX: TIBStringField;
    dbgConsultaNFE_IDBX: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure siPSQClick(Sender: TObject);
    procedure siRELClick(Sender: TObject);
    procedure cadastroCalcFields(DataSet: TDataSet);
    procedure siDUPClick(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure abre_tabela;
  public
    { Public declarations }
  end;

var
  frmfin_dup: Tfrmfin_dup;
  Ano, Mes, Dia: Word;

implementation

uses uPrincipal, ppesquisa, prelatorio_geral, pfin_dup_edi;

{$R *.dfm}

procedure Tfrmfin_dup.FormCreate(Sender: TObject);
begin
  RECDefault.Event := 'NFE_DUP';
  inherited;

  abre_tabela;
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   NFE_DUP.*,NFE_CAB.NFE_VNF,NFE_CAB.NFE_CHAV,');
    SelectSQL.Add('         CAD_CLI.CLI_FANT,CAD_CLI.CLI_RAZA,CAD_CLI.CLI_DDD,CAD_CLI.CLI_TEL1,CAD_CLI.CLI_CNPJ,CAD_CLI.CLI_INSC,');
    SelectSQL.Add('         CAD_CLI.CLI_TLOG,CAD_CLI.CLI_LOGR,CAD_CLI.CLI_CEP ,CAD_CLI.CLI_NUME,CAD_CLI.CLI_COMP,CAD_CLI.CLI_BAI ,CAD_CLI.CLI_CID ,CAD_CLI.CLI_ESTA,');
    SelectSQL.Add('         CAD_CLI.CLI_TLOC,CAD_CLI.CLI_LOGC,CAD_CLI.CLI_CEPC,CAD_CLI.CLI_NUMC,CAD_CLI.CLI_COMC,CAD_CLI.CLI_BAIC,CAD_CLI.CLI_CIDC,CAD_CLI.CLI_ESTC');
    SelectSQL.Add('FROM     CAD_CLI,'+SLPrincipal.Values['nfe_dup']+' "NFE_DUP" ,'+SLPrincipal.Values['nfe_cab']+' "NFE_CAB"');
    SelectSQL.Add('WHERE    CAD_CLI.ID = NFE_DUP.NFE_CFAV');
    SelectSQL.Add('AND      NFE_DUP.NFE_CCAB = NFE_CAB.ID');
    SelectSQL.Add('AND      NFE_DUP.ID = 0');
    SelectSQL.Add('ORDER BY NFE_DUP.ID');
  end;
end;

procedure Tfrmfin_dup.FormDestroy(Sender: TObject);
begin
  inherited;
  frmfin_dup := Nil;
end;

procedure Tfrmfin_dup.abre_tabela;
begin
  with cadastro do
  begin
    DeleteSQL.Clear;
    DeleteSQL.Add('delete from '+SLPrincipal.Values['nfe_dup']);
    DeleteSQL.Add('where');
    DeleteSQL.Add('ID = :OLD_ID');

    InsertSQL.Clear;
    InsertSQL.Add('insert into '+SLPrincipal.Values['nfe_dup']);
    InsertSQL.Add('  (ID, NFE_CCAB, NFE_CDNF, NFE_CDRO, NFE_CFAV, NFE_DNFE, NFE_DPAG, NFE_DROM,');
    InsertSQL.Add('   NFE_DVEN, NFE_OBSE, NFE_PARC, NFE_STA, NFE_STCO, NFE_STFI, NFE_STPD,');
    InsertSQL.Add('   NFE_TITU, NFE_VDUP, NFE_VPAG, NFE_VPEN)');
    InsertSQL.Add('values');
    InsertSQL.Add('  (:ID, :NFE_CCAB, :NFE_CDNF, :NFE_CDRO, :NFE_CFAV, :NFE_DNFE, :NFE_DPAG,');
    InsertSQL.Add('   :NFE_DROM, :NFE_DVEN, :NFE_OBSE, :NFE_PARC, :NFE_STA, :NFE_STCO, :NFE_STFI,');
    InsertSQL.Add('   :NFE_STPD, :NFE_TITU, :NFE_VDUP, :NFE_VPAG, :NFE_VPEN)');

    ModifySQL.Clear;
    ModifySQL.Add('update '+SLPrincipal.Values['nfe_dup']);
    ModifySQL.Add('set');
    ModifySQL.Add('  ID       = :ID,');
    ModifySQL.Add('  NFE_CCAB = :NFE_CCAB,');
    ModifySQL.Add('  NFE_CDNF = :NFE_CDNF,');
    ModifySQL.Add('  NFE_CDRO = :NFE_CDRO,');
    ModifySQL.Add('  NFE_CFAV = :NFE_CFAV,');
    ModifySQL.Add('  NFE_DNFE = :NFE_DNFE,');
    ModifySQL.Add('  NFE_DPAG = :NFE_DPAG,');
    ModifySQL.Add('  NFE_DROM = :NFE_DROM,');
    ModifySQL.Add('  NFE_DVEN = :NFE_DVEN,');
    ModifySQL.Add('  NFE_OBSE = :NFE_OBSE,');
    ModifySQL.Add('  NFE_PARC = :NFE_PARC,');
    ModifySQL.Add('  NFE_STA  = :NFE_STA,');
    ModifySQL.Add('  NFE_STCO = :NFE_STCO,');
    ModifySQL.Add('  NFE_STFI = :NFE_STFI,');
    ModifySQL.Add('  NFE_STPD = :NFE_STPD,');
    ModifySQL.Add('  NFE_TITU = :NFE_TITU,');
    ModifySQL.Add('  NFE_VDUP = :NFE_VDUP,');
    ModifySQL.Add('  NFE_VPAG = :NFE_VPAG,');
    ModifySQL.Add('  NFE_VPEN = :NFE_VPEN');
    ModifySQL.Add('where');
    ModifySQL.Add('  ID = :OLD_ID');
  end;
end;

procedure Tfrmfin_dup.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 6;
    frmpesquisa.cbCAMPO.Text := 'Nota Fiscal';
    frmpesquisa.cbDATA.Text  := 'Emissão';
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      if (edTXT.Text = '') and (dxdt1.Date < 0) and (cField <> 'NFE_DUP.NFE_IDBX') then
         {nothing}
      else
      with cadastro do
      begin
        Close;
        SelectSQL.Clear;
        SelectSQL.Add('SELECT   NFE_DUP.*,NFE_CAB.NFE_VNF,NFE_CAB.NFE_CHAV,');
        SelectSQL.Add('         CAD_CLI.CLI_FANT,CAD_CLI.CLI_RAZA,CAD_CLI.CLI_DDD,CAD_CLI.CLI_TEL1,CAD_CLI.CLI_CNPJ,CAD_CLI.CLI_INSC,');
        SelectSQL.Add('         CAD_CLI.CLI_TLOG,CAD_CLI.CLI_LOGR,CAD_CLI.CLI_CEP ,CAD_CLI.CLI_NUME,CAD_CLI.CLI_COMP,CAD_CLI.CLI_BAI ,CAD_CLI.CLI_CID ,CAD_CLI.CLI_ESTA,');
        SelectSQL.Add('         CAD_CLI.CLI_TLOC,CAD_CLI.CLI_LOGC,CAD_CLI.CLI_CEPC,CAD_CLI.CLI_NUMC,CAD_CLI.CLI_COMC,CAD_CLI.CLI_BAIC,CAD_CLI.CLI_CIDC,CAD_CLI.CLI_ESTC');
        SelectSQL.Add('FROM     CAD_CLI,'+SLPrincipal.Values['nfe_dup']+' "NFE_DUP" ,'+SLPrincipal.Values['nfe_cab']+' "NFE_CAB"');
        SelectSQL.Add('WHERE    CAD_CLI.ID = NFE_DUP.NFE_CFAV');
        SelectSQL.Add('AND      NFE_DUP.NFE_CCAB = NFE_CAB.ID');
        SelectSQL.Add('AND      NFE_CAB.NFE_STA  = ''0''');

        if (edtxt.Text <> '') or (cField = 'NFE_DUP.NFE_IDBX') then
        begin
          if (cField = 'NFE_DUP.NFE_IDBX') and (edtxt.Text = '') then
          begin
            SelectSQL.Add('AND NFE_IDBX = '' ''');
            if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
            SelectSQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');
            SelectSQL.Add('OR  CAD_CLI.ID = NFE_DUP.NFE_CFAV');
            SelectSQL.Add('AND NFE_DUP.NFE_CCAB = NFE_CAB.ID');
            SelectSQL.Add('AND NFE_CAB.NFE_STA  = ''0''');
            SelectSQL.Add('AND NFE_IDBX IS NULL');
            if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
            SelectSQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');
          end else
          SelectSQL.Add('AND '+cField+' LIKE ''%'+edtxt.Text+'%''');
        end;

        if (cField = 'NFE_DUP.NFE_IDBX') and (edtxt.Text = '') then
        {} else
        if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
        SelectSQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

        SelectSQL.Add('ORDER BY '+cField);
        Open;
      end;
      dbgconsulta.SetFocus;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmfin_dup.siRELClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   NFE_STFI FROM '+SLPrincipal.Values['nfe_dup']);
    SQL.Add('GROUP BY NFE_STFI');
    SQL.Add('ORDER BY NFE_STFI');
    Open;

    while not eof do
    begin
      frmrelatorio_geral.cbFIN_DUP_STFI.Values.Add(fields[0].AsString);
      frmrelatorio_geral.cbFIN_DUP_STFI.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   NFE_IDBX FROM '+SLPrincipal.Values['nfe_dup']);
    SQL.Add('GROUP BY NFE_IDBX');
    SQL.Add('ORDER BY NFE_IDBX');
    Open;

    while not eof do
    begin
      frmrelatorio_geral.cbFIN_DUP_IDBX.Values.Add(fields[0].AsString);
      frmrelatorio_geral.cbFIN_DUP_IDBX.Descriptions.Add(fields[0].AsString);
      next;
    end;
  end;

  try
    frmrelatorio_geral.tsFIN_DUP.TabVisible := true;
    frmrelatorio_geral.cbFIN_DUP_TREL.Text  := 'DUPLICATAS';
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsFIN_DUP;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmfin_dup.cadastroCalcFields(DataSet: TDataSet);
begin
  cadastroTLOG.Value := cadastroCLI_TLOG.AsString;
  cadastroLOGR.Value := cadastroCLI_LOGR.AsString;
  cadastroNUME.Value := cadastroCLI_NUME.AsString;
  cadastroCEP.Value  := cadastroCLI_CEP.AsString;
  cadastroCOMP.Value := cadastroCLI_COMP.AsString;
  cadastroBAI.Value  := cadastroCLI_BAI.AsString;
  cadastroCID.Value  := cadastroCLI_CID.AsString;
  cadastroESTA.Value := cadastroCLI_ESTA.AsString;

  if (cadastroCLI_LOGC.AsString <> '') and (cadastroCLI_NUMC.AsString <> '') then
  begin
    cadastroTLOG.Value := cadastroCLI_TLOC.AsString;
    cadastroLOGR.Value := cadastroCLI_LOGC.AsString;
    cadastroNUME.Value := cadastroCLI_NUMC.AsString;
    cadastroCEP.Value  := cadastroCLI_CEPC.AsString;
    cadastroCOMP.Value := cadastroCLI_COMC.AsString;
    cadastroBAI.Value  := cadastroCLI_BAIC.AsString;
    cadastroCID.Value  := cadastroCLI_CIDC.AsString;
    cadastroESTA.Value := cadastroCLI_ESTC.AsString;
  end;

  cadastroNFE_LOGR.Value := frmfin_dup.cadastroTLOG.AsString+' '+frmfin_dup.cadastroLOGR.AsString+', '+frmfin_dup.cadastroNUME.AsString+' '+frmfin_dup.cadastroCOMP.AsString;
  cadastroCNPJ.Value     := copy(frmfin_dup.cadastroCLI_CNPJ.AsString,1,2)+'.'+copy(frmfin_dup.cadastroCLI_CNPJ.AsString,3,3)+'.'+
                            copy(frmfin_dup.cadastroCLI_CNPJ.AsString,6,3)+'/'+copy(frmfin_dup.cadastroCLI_CNPJ.AsString,9,4)+'-'+
                            copy(frmfin_dup.cadastroCLI_CNPJ.AsString,13,2);
end;

procedure Tfrmfin_dup.siDUPClick(Sender: TObject);
begin
  frmfin_dup_edi := tfrmfin_dup_edi.create(self);
  try
    frmfin_dup_edi.ShowModal;
  finally
    if frmfin_dup_edi.editado then
    with cadastro do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT   NFE_DUP.*,NFE_CAB.NFE_VNF,NFE_CAB.NFE_CHAV,');
      SelectSQL.Add('         CAD_CLI.CLI_FANT,CAD_CLI.CLI_RAZA,CAD_CLI.CLI_DDD,CAD_CLI.CLI_TEL1,CAD_CLI.CLI_CNPJ,CAD_CLI.CLI_INSC,');
      SelectSQL.Add('         CAD_CLI.CLI_TLOG,CAD_CLI.CLI_LOGR,CAD_CLI.CLI_CEP ,CAD_CLI.CLI_NUME,CAD_CLI.CLI_COMP,CAD_CLI.CLI_BAI ,CAD_CLI.CLI_CID ,CAD_CLI.CLI_ESTA,');
      SelectSQL.Add('         CAD_CLI.CLI_TLOC,CAD_CLI.CLI_LOGC,CAD_CLI.CLI_CEPC,CAD_CLI.CLI_NUMC,CAD_CLI.CLI_COMC,CAD_CLI.CLI_BAIC,CAD_CLI.CLI_CIDC,CAD_CLI.CLI_ESTC');
      SelectSQL.Add('FROM     CAD_CLI,'+SLPrincipal.Values['nfe_dup']+' "NFE_DUP" ,'+SLPrincipal.Values['nfe_cab']+' "NFE_CAB"');
      SelectSQL.Add('WHERE    CAD_CLI.ID = NFE_DUP.NFE_CFAV');
      SelectSQL.Add('AND      NFE_DUP.NFE_CCAB = NFE_CAB.ID');
      SelectSQL.Add('AND      NFE_DUP.NFE_CDNF = '''+frmfin_dup_edi.edcdnf.Text+'''');
      SelectSQL.Add('ORDER BY NFE_DUP.NFE_CDNF');
      Open;
    end;
    freeAndNil(frmfin_dup_edi);
    frmfin_dup_edi.Free;
  end;
end;

procedure Tfrmfin_dup.siDELClick(Sender: TObject);
begin
  if oYesNo(handle,'Confirma exclusão da duplicata selecionada ?'+#13+'Título: '+cadastroNFE_TITU.AsString+'.') = mrno then
     abort;

  with Consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM '+SLPrincipal.Values['nfe_dup']);
    SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
    ExecSQL;
    TEdicao.CommitRetaining;
  end;
  cadastro.Close;
  cadastro.Open;
end;

procedure Tfrmfin_dup.cadastroBeforeEdit(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Financeiro';
  PCampo[2] := 'Controle Bancário';
  PCampo[3] := 'Duplicatas';
  inherited;
end;

end.
