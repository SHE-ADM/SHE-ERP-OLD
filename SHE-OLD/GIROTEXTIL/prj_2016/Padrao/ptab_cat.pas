unit ptab_cat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, DB, IBCustomDataSet, ImgList, IBStoredProc,
  IBDatabase, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls,  ComCtrls, math, IBEvents, dxExEdtr, dxDBTLCl,
  dxGrClms, StdCtrls, rxSpeedbar;

type
  Tfrmtab_cat = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroCAT_CCAT: TIBStringField;
    cadastroCAT_DCAT: TIBStringField;
    cadastroCAT_STA: TIBStringField;
    dbgConsultaCAT_CCAT: TdxDBGridMaskColumn;
    dbgConsultaCAT_DCAT: TdxDBGridMaskColumn;
    pnlite: TPanel;
    dxDBGrid1: TdxDBGrid;
    cad_pro_cai: TIBDataSet;
    dtscad_pro_cai: TDataSource;
    cad_pro_caiID: TIntegerField;
    cad_pro_caiCAT_CCAB: TIntegerField;
    cad_pro_caiCAT_SEQU: TIBStringField;
    cad_pro_caiCAT_COMI: TIBBCDField;
    dxDBGrid1CAT_SEQU: TdxDBGridMaskColumn;
    dxDBGrid1CAT_PRCI: TdxDBGridMaskColumn;
    dxDBGrid1CAT_PRCF: TdxDBGridMaskColumn;
    dxDBGrid1CAT_COMI: TdxDBGridMaskColumn;
    siCOM: TSpeedItem;
    cadastroCAT_PESO: TIBBCDField;
    cadastroCAT_METR: TIBBCDField;
    cadastroCAT_REND: TIBBCDField;
    dbgConsultaCAT_PESO: TdxDBGridMaskColumn;
    cadastroCAT_CCLF: TIBStringField;
    cadastroCAT_PIPI: TSmallintField;
    dbgConsultaCAT_CCLF: TdxDBGridMaskColumn;
    dbgConsultaCAT_PIPI: TdxDBGridMaskColumn;
    siPRC: TSpeedItem;
    dbgConsultaCAT_METR: TdxDBGridMaskColumn;
    cadastroCAT_LARG: TIBBCDField;
    dbgConsultaCAT_LARG: TdxDBGridMaskColumn;
    cad_pro_caiCAT_FCOM: TIBBCDField;
    cad_pro_caiCAT_FPRC: TIBBCDField;
    cad_pro_caiCAT_NREP: TIBBCDField;
    cad_pro_caiCAT_COMS: TIBBCDField;
    cadastroCAT_DCAD: TDateField;
    dbgConsultaCAT_DCAD: TdxDBGridDateColumn;
    cad_pro_caiCAT_PRCI: TFloatField;
    cad_pro_caiCAT_PRCF: TFloatField;
    cadastroCAT_PCOM: TFloatField;
    cadastroCAT_CUST: TFloatField;
    cadastroCAT_PREC: TFloatField;
    cadastroCAT_PPRO: TFloatField;
    cadastroCAT_PDSC: TIBBCDField;
    cadastroCAT_PPER: TIBBCDField;
    cadastroCAT_PPRZ: TFloatField;
    cadastroCAT_VPRC: TFloatField;
    cadastroCAT_VPRO: TFloatField;
    cadastroCAT_VDSC: TIBBCDField;
    cadastroCAT_VPER: TIBBCDField;
    cadastroCAT_VPRZ: TFloatField;
    cadastroCAT_RPRC: TFloatField;
    cadastroCAT_RPRO: TFloatField;
    cadastroCAT_RDSC: TIBBCDField;
    cadastroCAT_RPER: TIBBCDField;
    cadastroCAT_RPRZ: TFloatField;
    cadastroCAT_SPRC: TFloatField;
    cadastroCAT_SPRO: TFloatField;
    cadastroCAT_SDSC: TIBBCDField;
    cadastroCAT_SPER: TIBBCDField;
    cadastroCAT_SPRZ: TFloatField;
    cadastroCAT_CDEP: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure cadastroBeforePost(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
    procedure siLIXOClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cadastroAfterPost(DataSet: TDataSet);
    procedure cadastroAfterDelete(DataSet: TDataSet);
    procedure cadastroAfterOpen(DataSet: TDataSet);
    procedure cadastroAfterEdit(DataSet: TDataSet);
    procedure cadastroAfterInsert(DataSet: TDataSet);
    procedure cadastroAfterCancel(DataSet: TDataSet);
    procedure siCOMClick(Sender: TObject);
    procedure siPRCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmtab_cat: Tfrmtab_cat;

implementation

uses p_funcoes, uPrincipal, ptab_cat_edi, ptab_cat_prc;

{$R *.dfm}

procedure Tfrmtab_cat.FormCreate(Sender: TObject);
begin
  siLIXO.Enabled := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_NOVO','Tabelas','Categorias','Permissões Gerais',false);
  siREL.Enabled  := frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_PRIN','Tabelas','Categorias','Permissões Gerais',false);

  cEvent := 'TAB_CAT';
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_PRO_CAC');
    SelectSQL.Add('WHERE    CAT_STA  = ''0''');
    SelectSQL.Add('AND      CAT_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    SelectSQL.Add('ORDER BY CAT_DCAT');
  end;  
  inherited;
end;

procedure Tfrmtab_cat.cadastroBeforeEdit(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Categorias';
  PCampo[3] := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmtab_cat.cadastroBeforeInsert(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Categorias';
  PCampo[3] := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmtab_cat.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value       := 0;
  cadastroCAT_CDEP.Value := frmprincipal.parametrosID.AsInteger;
end;

procedure Tfrmtab_cat.cadastroBeforePost(DataSet: TDataSet);
begin
  cadastroCAT_STA.Value := '0';

  if cadastroCAT_DCAT.AsString = '' then
     Databaseerror('Categoria não informada !');

  if cadastroCAT_CCAT.AsString = '' then
     Databaseerror('Referencia não informada !');

  if cadastroCAT_CCLF.AsString = '' then
     Databaseerror('NCM não informado !');

  if cadastroCAT_PESO.IsNull then
  cadastroCAT_PESO.Value := 0;

  if cadastroCAT_METR.IsNull then
  cadastroCAT_METR.Value := 0;

  if cadastroCAT_LARG.IsNull then
  cadastroCAT_LARG.Value := 0;

  if cadastroCAT_PIPI.IsNull then
  cadastroCAT_PIPI.Value := 0;   

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAT_CCAT FROM CAD_PRO_CAC');
    SQL.Add('WHERE  CAT_DCAT = '''+cadastroCAT_DCAT.AsString+'''');
    SQL.Add('AND    ID <> '''+cadastroID.AsString+'''');
    SQL.Add('AND    CAT_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    Open;

    if not fields[0].IsNull then
       DataBaseError('Descrição de categoria já utilizado para outra referencia de categoria !'+#13+
                     'Referencia Original: '+fields[0].AsString);

    SQL.Clear;
    SQL.Add('SELECT CAT_DCAT FROM CAD_PRO_CAC');
    SQL.Add('WHERE  CAT_CCAT = '''+cadastroCAT_CCAT.AsString+'''');
    SQL.Add('AND    CAT_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    SQL.Add('AND    ID <> '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
       DataBaseError('Referencia de categoria já utilizada para outra descrição de categoria !'+#13+
                     'Descrição Original: '+fields[0].AsString);
  end;

  if cadastro.State = dsInsert then
     frmprincipal.Log_Eve('Produtos','Tabela de Categorias','Inclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroCAT_DCAT.AsString),'','')
  else
  begin
    if cadastroCAT_CCAT.AsString <> cadastroCAT_CCAT.OldValue then
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID FROM CAD_PRO');
        SQL.Add('WHERE  PRO_CCAT = '''+cadastroID.AsString+'''');
        Open;

        if not fields[0].IsNull then
           DataBaseError('Não é possível alterar a referencia '+cadastroCAT_CCAT.AsString+' !'+#13+'Referencia desejada está comprometida com alguns produtos cadastrados.');
      end;
    end;

    if cadastroCAT_DCAT.AsString <> cadastroCAT_DCAT.OldValue then
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID FROM CAD_PRO');
        SQL.Add('WHERE  PRO_CCAT = '''+cadastroID.AsString+'''');
        Open;

        if not fields[0].IsNull then
        begin
          if yesno(frmtab_cat.Handle,'Descrição de categoria desejada está comprometida com alguns produtos cadastrados e possivelmente vendas efetuadas. ' +
                                     'Caso prossiga com as mudanças isso afetará toda cadeia de produtos cadastrados e vendas efetuadas.'+#13+
                                     'Confirma alteração ?') = mrno then
             abort;
        end;

        with frmprincipal.sp_sql do
        begin
          ibSP.StoredProcName := 'SP_SQL';
          SQL.Clear;
          SQL.Add('UPDATE CAD_PRO');
          SQL.Add('SET    PRO_DCAT = '''+cadastroCAT_DCAT.AsString+''',');
          SQL.Add('       PRO_CCAT = '''+cadastroID.AsString      +''',');
          SQL.Add('       PRO_RCAT = '''+cadastroCAT_CCAT.AsString+'''');
          SQL.Add('WHERE  PRO_CCAT = '''+cadastroID.AsString+'''');

          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;
        end;
      end;
    end;

    if (cadastroCAT_PESO.AsFloat <> cadastroCAT_PESO.OldValue) then
    begin
      with frmprincipal.sp_sql do
      begin
        ibSP.StoredProcName := 'SP_SQL';
        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO');
        SQL.Add('SET    PRO_PESO = '''+strtran(cadastroCAT_PESO.AsString,',','.')+'''');
        SQL.Add('WHERE  PRO_CCAT = '''+cadastroID.AsString+'''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;
      end;
    end;

    if (cadastroCAT_METR.AsFloat <> cadastroCAT_METR.OldValue) then
    begin
      with frmprincipal.sp_sql do
      begin
        ibSP.StoredProcName := 'SP_SQL';
        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO');
        SQL.Add('SET    PRO_METR = '''+strtran(cadastroCAT_METR.AsString,',','.')+'''');
        SQL.Add('WHERE  PRO_CCAT = '''+cadastroID.AsString+'''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;
      end;
    end;

    if (cadastroCAT_LARG.AsFloat <> cadastroCAT_LARG.OldValue) then
    begin
      with frmprincipal.sp_sql do
      begin
        ibSP.StoredProcName := 'SP_SQL';
        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO');
        SQL.Add('SET    PRO_LARG = '''+strtran(cadastroCAT_LARG.AsString,',','.')+'''');
        SQL.Add('WHERE  PRO_CCAT = '''+cadastroID.AsString+'''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;
      end;
    end;

    if (cadastroCAT_CCLF.AsString <> cadastroCAT_CCLF.AsString) then
    begin
      with frmprincipal.sp_sql do
      begin
        ibSP.StoredProcName := 'SP_SQL';
        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO');
        SQL.Add('SET    PRO_CCLF = '''+cadastroCAT_CCLF.AsString+'''');
        SQL.Add('WHERE  PRO_CCAT = '''+cadastroID.AsString+'''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;
      end;
    end;

    if (cadastroCAT_PIPI.AsFloat <> cadastroCAT_PIPI.OldValue) then
    begin
      with frmprincipal.sp_sql do
      begin
        ibSP.StoredProcName := 'SP_SQL';
        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO');
        SQL.Add('SET    PRO_PIPI = '''+strtran(cadastroCAT_PIPI.AsString,',','.')+'''');
        SQL.Add('WHERE  PRO_CCAT = '''+cadastroID.AsString+'''');

        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;
      end;
    end;

    frmprincipal.Log_Eve('Produtos','Tabela de Categorias','Alteração',cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroCAT_DCAT.AsString),'','');
  end;
end;

procedure Tfrmtab_cat.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Categorias';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_PRO');
    SQL.Add('WHERE  PRO_CCAT = '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir a categoria '+cadastroCAT_DCAT.AsString+' !'+#13+'Categoria desejada está comprometida com alguns produtos cadastrados.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;

  if cadastroCAT_STA.Value = '1' then
  begin
    if yesno(handle,'Confirma a exclusão da categoria '+cadastroCAT_DCAT.AsString+' ?') = mrno then
       abort;
     cadastro.Delete
  end
  else
  with consulta do
  begin
    if yesno(handle,'Enviar para a lixeira a categoria '+cadastroCAT_DCAT.AsString+' ?') = mrno then
       abort;

    SQL.Clear;
    SQL.Add('UPDATE CAD_PRO_CAC');
    SQL.Add('SET    CAT_STA  = ''1''');
    SQL.Add('WHERE  ID       = '''+cadastroID.AsString+'''');
    SQL.Add('AND    CAT_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    ExecSQL;
    frmprincipal.Log_Eve('Produtos','Tabela de Categorias','Lixeira' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroCAT_DCAT.AsString),'','');
    ExecuteEvent;
  end;
end;

procedure Tfrmtab_cat.siLIXOClick(Sender: TObject);
begin
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_PRO_CAC');
    if dbgconsulta.Tag = 0 then
    begin
      dbgconsulta.Tag   := 1;
      dbgconsulta.Color := clBtnface;
      SelectSQL.Add('WHERE CAT_STA = ''1''');
    end
    else
    begin
      dbgconsulta.Tag   := 0;
      dbgconsulta.Color := clWhite;
      SelectSQL.Add('WHERE CAT_STA = ''0''');
    end;
    SelectSQL.Add('AND      CAT_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    SelectSQL.Add('ORDER BY CAT_DCAT');
    Open;
  end;
end;

procedure Tfrmtab_cat.FormDestroy(Sender: TObject);
begin
  inherited;
  frmtab_cat := nil;
end;

procedure Tfrmtab_cat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (frmtab_cat <> nil)  and (frmtab_cat.FormStyle = fsMDIChild) then
  begin
    frmtab_cat.Release;
    frmtab_cat := nil;
  end;
end;

procedure Tfrmtab_cat.dbgConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if cadastro.State in [dsEdit,dsInsert] then
                 begin
                   if dbgconsulta.FocusedColumn = 6 then
                   begin
                     cadastro.Next;
                     if cadastro.Eof then
                        cadastro.Append;
                     dbgconsulta.FocusedColumn := 0;
                   end
                   else
                      dbgconsulta.FocusedColumn := dbgconsulta.FocusedColumn + 1;
                 end
                 else
                 begin
                   if not cadastroID.IsNull then
                   cadastro.Edit;
                 end;       
               end;
    VK_DELETE: if cadastro.State = dsBrowse then
                  siDEL.Click;
    VK_ESCAPE: if cadastro.State = dsBrowse then close else cadastro.Cancel;
    VK_INSERT: if not siSAV.Enabled then siINC.Click;
  end;
end;

procedure Tfrmtab_cat.cadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
  editado := true;
  pnlite.Enabled := true;
end;

procedure Tfrmtab_cat.cadastroAfterDelete(DataSet: TDataSet);
begin
  inherited;
  frmprincipal.Log_Eve('Produtos','Tabela de Categorias','Exclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroCAT_DCAT.AsString),'','');
  editado := true;
end;

procedure Tfrmtab_cat.cadastroAfterOpen(DataSet: TDataSet);
begin
  cad_pro_cai.Close;
  cad_pro_cai.Open;
end;

procedure Tfrmtab_cat.cadastroAfterEdit(DataSet: TDataSet);
begin
  inherited;
  pnlite.Enabled := false;
end;

procedure Tfrmtab_cat.cadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  pnlite.Enabled := false;
end;

procedure Tfrmtab_cat.cadastroAfterCancel(DataSet: TDataSet);
begin
  inherited;
  pnlite.Enabled := true;
end;

procedure Tfrmtab_cat.siCOMClick(Sender: TObject);
const
  aSeq: array [0..14] of string = ('A','B','C','D','E','F','G',
                                   'H','I','J','K','L','M','N',
                                   'O');

var
  j,i: word;
  pfprc,ultprc,ultcom: double;
  wRec: TBookMark;
begin
  cad_pro_cai.First;

  j    := 0;
  wRec := cadastro.GetBookmark;

  frmtab_cat_edi := tfrmtab_cat_edi.create(self);
  try
    frmtab_cat_edi.edfcom.Text := formatFloat('#,0.00########',cad_pro_caiCAT_FCOM.AsFloat);
    frmtab_cat_edi.edfprc.Text := formatFloat('#,0.00########',cad_pro_caiCAT_FPRC.AsFloat);
    frmtab_cat_edi.ednrep.Text := cad_pro_caiCAT_NREP.AsString;
    frmtab_cat_edi.edcoms.Text := formatFloat('#,0.00########',cad_pro_caiCAT_COMS.AsFloat);
    frmtab_cat_edi.edprec.Text := formatFloat('#,0.00########',cad_pro_caiCAT_PRCF.AsFloat);
    frmtab_cat_edi.eddcat.Text := cadastroCAT_DCAT.AsString;
    frmtab_cat_edi.Tag         := cadastroID.AsInteger;
    frmtab_cat_edi.ShowModal;
  finally
    if frmtab_cat_edi.editado then
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('DELETE FROM CAD_PRO_CAI');
        SQL.Add('WHERE  CAT_CCAB = '''+cadastroID.AsString+'''');
        ExecSQL;
      end;

      IBTra.CommitRetaining;
      cad_pro_cai.Close;
      cad_pro_cai.Open;

      ultcom := RETORNA_REAL(frmtab_cat_edi.edcomi.Text);
      ultprc := RETORNA_REAL(frmtab_cat_edi.edprec.Text);
      pfprc  := 1;

      for i := 0 to strtoint(frmtab_cat_edi.ednrep.Text) do
      begin
        cad_pro_cai.Append;
        cad_pro_caiID.Value       := 0;
        cad_pro_caiCAT_CCAB.Value := cadastroID.Value;
        cad_pro_caiCAT_SEQU.Value := aSeq[i];

        if i = 0 then
        begin
          cad_pro_caiCAT_COMI.Value := ultcom;
          cad_pro_caiCAT_PRCI.Value := 0;
          cad_pro_caiCAT_PRCF.Value := ultprc;
        end
        else
        begin
          cad_pro_caiCAT_PRCI.Value := ultprc+0.01;

          ultcom := roundto(ultcom +  RETORNA_REAL(frmtab_cat_edi.edfcom.Text)     ,-2);          
          pfprc  := roundto(pfprc  + (RETORNA_REAL(frmtab_cat_edi.edfprc.Text)/100),-2);
          ultprc := roundto(pfprc  *  RETORNA_REAL(frmtab_cat_edi.edprec.Text)     ,-2);

          cad_pro_caiCAT_COMI.Value := ultcom;
          cad_pro_caiCAT_PRCF.Value := ultprc;
        end;

        if cad_pro_caiCAT_COMI.AsFloat >= RETORNA_REAL(frmtab_cat_edi.edcoms.Text) then
        begin
          cad_pro_caiCAT_COMI.Value := RETORNA_REAL(frmtab_cat_edi.edcoms.Text)+j;
          inc(j);
        end;

        cad_pro_caiCAT_FCOM.Value := RETORNA_REAL(frmtab_cat_edi.edfcom.Text);
        cad_pro_caiCAT_FPRC.Value := RETORNA_REAL(frmtab_cat_edi.edfprc.Text);
        cad_pro_caiCAT_NREP.Value := RETORNA_REAL(frmtab_cat_edi.ednrep.Text);
        cad_pro_caiCAT_COMS.Value := RETORNA_REAL(frmtab_cat_edi.edcoms.Text);
        cad_pro_cai.Post;
      end;
    end;
    IBTra.CommitRetaining;
    cad_pro_cai.Close;
    cad_pro_cai.Open;

    if (wRec = Nil) or (cadastro.Fields[0].IsNull) then cadastro.last
       else cadastro.GotoBookmark(wRec);
    cadastro.FreeBookmark(wRec);

    freeAndNil(frmtab_cat_edi);
    frmtab_cat_edi.Free;
  end;
end;

procedure Tfrmtab_cat.siPRCClick(Sender: TObject);
var
  wRec: TBookMark;
begin
  wRec := cadastro.GetBookmark;
  
  frmtab_cat_prc := tfrmtab_cat_prc.create(self);
  try

    with frmtab_cat_prc.cad_pro_cac do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM CAD_PRO_CAC');
      SQL.Add('WHERE  ID       = '''+cadastroID.AsString+'''');
      SQL.Add('AND    CAT_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      Open;
    end;

    frmtab_cat_prc.edprec.Text := formatFloat('#,0.00########',cadastroCAT_PREC.AsFloat);
    frmtab_cat_prc.edppro.Text := formatFloat('#,0.00########',cadastroCAT_PPRO.AsFloat);
    frmtab_cat_prc.edpdsc.Text := formatFloat('#,0.00########',cadastroCAT_PDSC.AsFloat);
    frmtab_cat_prc.edpper.Text := formatFloat('#,0.00########',cadastroCAT_PPER.AsFloat);
    frmtab_cat_prc.edpprz.Text := formatFloat('#,0.00########',cadastroCAT_PPRZ.AsFloat);

    frmtab_cat_prc.edvprc.Text := formatFloat('#,0.00########',cadastroCAT_VPRC.AsFloat);
    frmtab_cat_prc.edvpro.Text := formatFloat('#,0.00########',cadastroCAT_VPRO.AsFloat);
    frmtab_cat_prc.edvdsc.Text := formatFloat('#,0.00########',cadastroCAT_VDSC.AsFloat);
    frmtab_cat_prc.edvper.Text := formatFloat('#,0.00########',cadastroCAT_VPER.AsFloat);
    frmtab_cat_prc.edvprz.Text := formatFloat('#,0.00########',cadastroCAT_VPRZ.AsFloat);

    frmtab_cat_prc.edrprc.Text := formatFloat('#,0.00########',cadastroCAT_RPRC.AsFloat);
    frmtab_cat_prc.edrpro.Text := formatFloat('#,0.00########',cadastroCAT_RPRO.AsFloat);
    frmtab_cat_prc.edrdsc.Text := formatFloat('#,0.00########',cadastroCAT_RDSC.AsFloat);
    frmtab_cat_prc.edrper.Text := formatFloat('#,0.00########',cadastroCAT_RPER.AsFloat);
    frmtab_cat_prc.edrprz.Text := formatFloat('#,0.00########',cadastroCAT_RPRZ.AsFloat);

    frmtab_cat_prc.edsprc.Text := formatFloat('#,0.00########',cadastroCAT_SPRC.AsFloat);
    frmtab_cat_prc.edspro.Text := formatFloat('#,0.00########',cadastroCAT_SPRO.AsFloat);
    frmtab_cat_prc.edsdsc.Text := formatFloat('#,0.00########',cadastroCAT_SDSC.AsFloat);
    frmtab_cat_prc.edsper.Text := formatFloat('#,0.00########',cadastroCAT_SPER.AsFloat);
    frmtab_cat_prc.edsprz.Text := formatFloat('#,0.00########',cadastroCAT_SPRZ.AsFloat);

    frmtab_cat_prc.edpcom.Text := formatFloat('#,0.00########',cadastroCAT_PCOM.AsFloat);
    frmtab_cat_prc.edcust.Text := formatFloat('#,0.00########',cadastroCAT_CUST.AsFloat);

    frmtab_cat_prc.ShowModal;
  finally
    cadastro.Close;
    cadastro.Open;

    if (wRec = Nil) or (cadastro.Fields[0].IsNull) then cadastro.last
       else cadastro.GotoBookmark(wRec);
    cadastro.FreeBookmark(wRec);

    freeAndNil(frmtab_cat_prc);
    frmtab_cat_prc.Free;
  end;
end;

end.
