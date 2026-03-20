unit ptab_grp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, DB, IBStoredProc, IBEvents, IBDatabase,
  IBCustomDataSet, IBQuery, ImgList, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
   ComCtrls, ExtCtrls, Menus, dxPageControl, dxDBTLCl, dxGrClms,
  dxExEdtr, StdCtrls, rxSpeedbar;

type
  Tfrmtab_grp = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroGRP_CGRP: TIBStringField;
    cadastroGRP_DGRP: TIBStringField;
    cadastroGRP_STA: TIBStringField;
    cadastroGRP_CCLF: TIBStringField;
    cadastroGRP_PADR: TIBStringField;
    cadastroGRP_APRC: TIBStringField;
    cadastroGRP_LDSC: TIBBCDField;
    dbgConsultaGRP_CGRP: TdxDBGridMaskColumn;
    dbgConsultaGRP_DGRP: TdxDBGridMaskColumn;
    dbgConsultaGRP_APRC: TdxDBGridCheckColumn;
    dbgConsultaGRP_LDSC: TdxDBGridCurrencyColumn;
    cad_pro: TIBQuery;
    dtscad_pro: TDataSource;
    GroupBox1: TGroupBox;
    dbgcad_pro: TdxDBGrid;
    cad_proPRO_CART: TIBStringField;
    cad_proPRO_DPRO: TIBStringField;
    cad_proPRO_DUNI: TIBStringField;
    dbgcad_proPRO_CART: TdxDBGridMaskColumn;
    dbgcad_proPRO_DPRO: TdxDBGridMaskColumn;
    dbgcad_proPRO_DUNI: TdxDBGridMaskColumn;
    cadastroGRP_CDEP: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure cadastroNewRecord(DataSet: TDataSet);
    procedure cadastroBeforePost(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
    procedure siLIXOClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cadastroAfterPost(DataSet: TDataSet);
    procedure cadastroAfterDelete(DataSet: TDataSet);
    procedure cadastroAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmtab_grp: Tfrmtab_grp;

implementation

uses bDados, uPrincipal;

{$R *.dfm}

procedure Tfrmtab_grp.FormCreate(Sender: TObject);
begin
  cEvent := 'TAB_GRP';
  inherited;

  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_PRO_GRP');
    SelectSQL.Add('WHERE    GRP_STA  = ''0''');
    SelectSQL.Add('ORDER BY GRP_DGRP');
    Prepare;
  end;
end;

procedure Tfrmtab_grp.FormDestroy(Sender: TObject);
begin
  inherited;
  frmtab_grp := nil;
end;

procedure Tfrmtab_grp.cadastroBeforeEdit(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Grupos';
  PCampo[3] := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmtab_grp.cadastroBeforeInsert(DataSet: TDataSet);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Grupos';
  PCampo[3] := 'Permissões Gerais';
  inherited;
end;

procedure Tfrmtab_grp.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value       := 0;
  cadastroGRP_CDEP.Value := frmprincipal.parametrosID.AsInteger;
end;

procedure Tfrmtab_grp.cadastroBeforePost(DataSet: TDataSet);
begin
  cadastroGRP_STA.Value := '0';

  if cadastroGRP_DGRP.AsString = '' then
     Databaseerror('Grupo não informado !');

  if cadastroGRP_CGRP.AsString = '' then
     Databaseerror('Referencia não informada !');

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GRP_CGRP FROM CAD_PRO_GRP');
    SQL.Add('WHERE  GRP_DGRP = '''+cadastroGRP_DGRP.AsString+'''');
    SQL.Add('AND    ID <> '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
       DataBaseError('Descrição de grupo já utilizado para outra referencia de grupo !'+#13+
                     'Referencia Original: '+fields[0].AsString);

    SQL.Clear;
    SQL.Add('SELECT GRP_DGRP FROM CAD_PRO_GRP');
    SQL.Add('WHERE  GRP_CGRP = '''+cadastroGRP_CGRP.AsString+'''');
    SQL.Add('AND    ID <> '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
       DataBaseError('Referencia de grupo já utilizada para outra descrição de grupo !'+#13+
                     'Descrição Original: '+fields[0].AsString);
  end;

  if cadastro.State = dsInsert then
  frmprincipal.Log_Eve('Produtos','Tabela de Grupos','Inclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroGRP_DGRP.AsString),'','');

  cad_pro.First;
  if not cad_pro.Fields[0].IsNull then
  begin
    if (cadastroGRP_CGRP.AsString <> cadastroGRP_CGRP.OldValue) and (cadastroGRP_CGRP.AsString <> '') then
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID FROM CAD_PRO');
        SQL.Add('WHERE  PRO_CGRP = '''+cadastroID.AsString+'''');
        Open;

        if not fields[0].IsNull then
        begin
          if yesno(frmtab_grp.Handle,'Referencia do grupo desejado está comprometido com alguns produtos cadastrados e possivelmente vendas efetuadas. ' +
                                     'Caso prossiga com as mudanças isso afetará toda cadeia de produtos cadastrados e vendas efetuadas.'+#13+
                                     'Confirma alteração ?') = mrno then
             abort;
        end;

        with frmprincipal.sp_sql do
        begin
          SQL.Clear;
          SQL.Add('UPDATE CAD_PRO');
          SQL.Add('SET    PRO_RGRP = '''+cadastroGRP_CGRP.AsString+'''');
          SQL.Add('WHERE  PRO_CGRP = '''+cadastroID.AsString+'''');

          ibSP.StoredProcName := 'SP_SQL';
          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;
          IBTra.CommitRetaining;
        end;
        messageBox(handle,'Referencia do grupo alterada com sucesso.',PChar(Self.Caption),MB_ICONINFORMATION+MB_OK);
      end;
    end;

    if (cadastroGRP_DGRP.AsString <> cadastroGRP_DGRP.OldValue) and (cadastroGRP_DGRP.AsString <> '') then
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID FROM CAD_PRO');
        SQL.Add('WHERE  PRO_CGRP = '''+cadastroID.AsString+'''');
        Open;

        if not fields[0].IsNull then
        begin
          if yesno(frmtab_grp.Handle,'Descrição de grupo desejado está comprometido com alguns produtos cadastrados e possivelmente vendas efetuadas. ' +
                                     'Caso prossiga com as mudanças isso afetará toda cadeia de produtos cadastrados e vendas efetuadas.'+#13+
                                     'Confirma alteração ?') = mrno then
             abort;
        end;

        with frmprincipal.sp_sql do
        begin
          SQL.Clear;
          SQL.Add('UPDATE CAD_PRO');
          SQL.Add('SET    PRO_DGRP = '''+cadastroGRP_DGRP.AsString+'''');
          SQL.Add('WHERE  PRO_CGRP = '''+cadastroID.AsString+'''');

          ibSP.StoredProcName := 'SP_SQL';
          ibSP.Prepare;
          ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
          ibSP.ExecProc;
          IBTra.CommitRetaining;
        end;
        messageBox(handle,'Descrição do grupo alterada com sucesso.',PChar(Self.Caption),MB_ICONINFORMATION+MB_OK);
      end;
    end;

    if (cadastroGRP_APRC.AsString <> cadastroGRP_APRC.OldValue) and (cadastroGRP_APRC.AsString <> '') then
    begin
      with frmprincipal.sp_sql do
      begin
        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO');
        SQL.Add('SET    PRO_APRC = '''+cadastroGRP_APRC.AsString+'''');
        SQL.Add('WHERE  PRO_CGRP = '''+cadastroID.AsString+'''');

        ibSP.StoredProcName := 'SP_SQL';
        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;
        IBTra.CommitRetaining;
      end;
    end;

    if (cadastroGRP_LDSC.AsString <> cadastroGRP_LDSC.OldValue) and (cadastroGRP_LDSC.AsString <> '') then
    begin
      with frmprincipal.sp_sql do
      begin
        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO');
        SQL.Add('SET    PRO_LDSC = '''+strtran(cadastroGRP_LDSC.AsString,',','.')+'''');
        SQL.Add('WHERE  PRO_CGRP = '''+cadastroID.AsString+'''');

        ibSP.StoredProcName := 'SP_SQL';
        ibSP.Prepare;
        ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
        ibSP.ExecProc;
        IBTra.CommitRetaining;
      end;
    end;

    frmprincipal.Log_Eve('Produtos','Tabela de Grupos','Alteração',cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroGRP_DGRP.AsString),'','');
  end;
end;

procedure Tfrmtab_grp.siDELClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Grupos';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_PRO');
    SQL.Add('WHERE  PRO_CGRP = '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o grupo '+cadastroGRP_DGRP.AsString+' !'+#13+'Grupo desejado está comprometido com alguns produtos cadastrados.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;

  if cadastroGRP_STA.Value = '1' then
  begin
    if yesno(handle,'Confirma a exclusão do grupo '+cadastroGRP_DGRP.AsString+' ?') = mrno then
       abort;
     cadastro.Delete
  end
  else
  with consulta do
  begin
    if yesno(handle,'Enviar para a lixeira o grupo '+cadastroGRP_DGRP.AsString+' ?') = mrno then
       abort;

    SQL.Clear;
    SQL.Add('UPDATE CAD_PRO_GRP');
    SQL.Add('SET    GRP_STA = ''1''');
    SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
    ExecSQL;
    frmprincipal.Log_Eve('Produtos','Tabela de Grupos','Lixeira' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroGRP_DGRP.AsString),'','');
    ExecuteEvent;
  end;
end;

procedure Tfrmtab_grp.siLIXOClick(Sender: TObject);
begin
  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_PRO_GRP');
    if dbgconsulta.Tag = 0 then
    begin
      dbgconsulta.Tag   := 1;
      dbgconsulta.Color := clBtnface;
      SelectSQL.Add('WHERE GRP_STA = ''1''');
    end
    else
    begin
      dbgconsulta.Tag   := 0;
      dbgconsulta.Color := clWhite;
      SelectSQL.Add('WHERE GRP_STA = ''0''');
    end;
//    SelectSQL.Add('AND      GRP_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    SelectSQL.Add('ORDER BY GRP_DGRP');
    Open;
  end;
end;


procedure Tfrmtab_grp.dbgConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgconsulta.FocusedColumn = 3 then
                 begin
                   cadastro.Next;
                   if cadastro.Eof then
                      cadastro.Append;
                   dbgconsulta.FocusedColumn := 3;
                 end
                 else
                    dbgconsulta.FocusedColumn := dbgconsulta.FocusedColumn + 1;
               end;
    VK_DELETE: if cadastro.State = dsBrowse then
                  siDEL.Click;
    VK_ESCAPE: if cadastro.State = dsBrowse then close else cadastro.Cancel;
    VK_INSERT: if not siSAV.Enabled then siINC.Click;
  end;
end;

procedure Tfrmtab_grp.cadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
  editado := true;
end;

procedure Tfrmtab_grp.cadastroAfterDelete(DataSet: TDataSet);
begin
  inherited;
  frmprincipal.Log_Eve('Produtos','Tabela de Grupos','Exclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroGRP_DGRP.AsString),'','');
  editado := true;
end;

procedure Tfrmtab_grp.cadastroAfterOpen(DataSet: TDataSet);
begin
  cad_pro.Close;
  cad_pro.Open;
end;

end.

