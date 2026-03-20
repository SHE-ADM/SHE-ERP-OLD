unit pCAD_PRO_EST_DEL;

interface

uses
  oPrincipal, pSHE_DEF_EDI,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, dxCntner, ImgList, IBEvents,
  IBStoredProc, DB, IBCustomDataSet, IBQuery, IBSQL, IBDatabase, ActnList,
  dxBar, dxBarExtItems, dxDockControl, dxDockPanel, dxPageControl,
  ExtCtrls, cxControls, dxStatusBar, dxEditor, dxEdLib, StdCtrls, dxExEdtr;

type
  TFrmCAD_PRO_EST_DEL = class(TFrmSHE_DEF_EDI)
    PNLCDRO: TPanel;
    SHCDRO: TShape;
    LACDRO: TLabel;
    PNLSKU: TPanel;
    SHSKU: TShape;
    LASKU: TLabel;
    EDSKU: TdxEdit;
    PNLCOL_ID: TPanel;
    SHCOL_ID: TShape;
    LACOL_ID: TLabel;
    PNLCDET_INI: TPanel;
    Shape3: TShape;
    LACDET_INI: TLabel;
    PNLIDEP: TPanel;
    SHIDEP: TShape;
    LAIDEP: TLabel;
    PNLGRP_ID: TPanel;
    SHGRP_ID: TShape;
    LAGRP_ID: TLabel;
    PNLCAT_ID: TPanel;
    SHCAT_ID: TShape;
    LACAT_ID: TLabel;
    PNLSGP_ID: TPanel;
    SHSGP_ID: TShape;
    LASGP_ID: TLabel;
    PNLSEG_ID: TPanel;
    SHSEG_ID: TShape;
    LASEG_ID: TLabel;
    PNLNCM: TPanel;
    SHNCM: TShape;
    LANCM: TLabel;
    EDNCM: TdxEdit;
    PNLSCT_ID: TPanel;
    SHSCT_ID: TShape;
    LASCT_ID: TLabel;
    IEIDEP: TdxImageEdit;
    CECDRO: TdxCurrencyEdit;
    PNLARTIGO: TPanel;
    SHARTIGO: TShape;
    LAARTIGO: TLabel;
    EDARTIGO: TdxEdit;
    PNLCDET_FIM: TPanel;
    Shape11: TShape;
    LACDET_FIM: TLabel;
    CECDET_INI: TdxCurrencyEdit;
    CECDET_FIM: TdxCurrencyEdit;
    IECOL_ID: TdxImageEdit;
    IESEG_ID: TdxImageEdit;
    IEGRP_ID: TdxImageEdit;
    IESGP_ID: TdxImageEdit;
    IECAT_ID: TdxImageEdit;
    IESCT_ID: TdxImageEdit;
    procedure FormCreate(Sender: TObject);
    procedure IEIDEPChange(Sender: TObject);
    procedure ACTMPostExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure _WM_AFTER_CREATE  (var Msg: TMessage); message WM_AFTER_CREATE;
  end;

var
  FrmCAD_PRO_EST_DEL: TFrmCAD_PRO_EST_DEL;

implementation

{$R *.dfm}

procedure TFrmCAD_PRO_EST_DEL._WM_AFTER_CREATE(var Msg: TMessage);
begin
  inherited;

  with SQLConsulta do
  begin
    { Empresas }
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PK.LG_IDEP,FK.FANTASIA');
    SQL.Add('FROM     TAB_PAR_SIS_EST_EMP AS PK');
    SQL.Add('JOIN     TAB_PAR_SIS         AS FK ON (FK.ID = PK.LG_IDEP)');
    SQL.Add('WHERE    PK.ID = ''' + RECParametros.EP_ID + '''');
    SQL.Add('ORDER BY PK.ID');
    ExecQuery;
    while not eof do
    begin
      IEIDEP.Descriptions.Add(Current.Vars[1].AsString);
      IEIDEP.Values.Add(Current.Vars[0].AsString);
      next;
    end;

    { Coleções }
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_COL WHERE CDST = 30 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IECOL_ID.Descriptions.Add(Current.Vars[1].AsString);
      IECOL_ID.Values.Add(Current.Vars[0].AsString);
      next;
    end;

    { Segmentos }
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_SEG WHERE CDST = 30 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IESEG_ID.Descriptions.Add(Current.Vars[1].AsString);
      IESEG_ID.Values.Add(Current.Vars[0].AsString);
      next;
    end;

    { Grupos }
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_GRP WHERE CDST = 30 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IEGRP_ID.Descriptions.Add(Current.Vars[1].AsString);
      IEGRP_ID.Values.Add(Current.Vars[0].AsString);
      next;
    end;

    { Sub Grupos }
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_SGP WHERE CDST = 30 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IESGP_ID.Descriptions.Add(Current.Vars[1].AsString);
      IESGP_ID.Values.Add(Current.Vars[0].AsString);
      next;
    end;

    { Categorias }
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_CAT WHERE CDST = 30 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IECAT_ID.Descriptions.Add(Current.Vars[1].AsString);
      IECAT_ID.Values.Add(Current.Vars[0].AsString);
      next;
    end;

    { Sub Categorias }
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_SCT WHERE CDST = 30 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IESCT_ID.Descriptions.Add(Current.Vars[1].AsString);
      IESCT_ID.Values.Add(Current.Vars[0].AsString);
      next;
    end;
  end;
end;

procedure TFrmCAD_PRO_EST_DEL.FormCreate(Sender: TObject);
begin
  REC_SHE_DEF.FB_Event := 'CAD_PRO_EST'; { Eventos }

  { Grant }
  REC_SHE_DEF.GDescricao  := 'Produtos';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;
end;

procedure TFrmCAD_PRO_EST_DEL.IEIDEPChange(Sender: TObject);
begin
  REC_SHE_DEF.Editing := True;
end;

procedure TFrmCAD_PRO_EST_DEL.ACTMPostExecute(Sender: TObject);
var
  i: word;
  RNRecNo: Integer;
begin
  RNRecNo := 0;
  inherited;

  if (CECDRO.Value     = 0) and
     (CECDET_INI.Value = 0) and
     (CECDET_FIM.Value = 0) and

     (EDSKU.Text    = EmptyStr) and
     (EDArtigo.Text = EmptyStr) and
     (EDNCM.Text    = EmptyStr) and

     (IECOL_ID.Text = '0') and
     (IESEG_ID.Text = '0') and

     (IEGRP_ID.Text = '0') and
     (IESGP_ID.Text = '0') and

     (IECAT_ID.Text = '0') and
     (IESCT_ID.Text = '0') then
  oException(Nil,'Nenhum filtro selecionado para pesquisa !');
             
  try
    try
      oOTransact(TEdicao);

      SPEdicao.Close;
      SPEdicao.StoredProcName := 'SP_CAD_PRO_EST_LAN_DEL';
      SPEdicao.Prepare;

      for i := 0 to SPEdicao.ParamCount - 1 do
      SPEdicao.Params[i].Value := Null;

      SPEdicao.ParamByName('AEL_IDEP').Value := RECParametros.EP_ID;
      SPEdicao.ParamByName('AEF_IDEP').Value := IEIDEP.Text;

      SPEdicao.ParamByName('ASKU'   ).Value := EDSKU.Text;
      SPEdicao.ParamByName('AARTIGO').Value := EDARTIGO.Text;
      SPEdicao.ParamByName('ANCM'   ).Value := EDNCM.Text;

      SPEdicao.ParamByName('ACDRO'    ).Value := CECDRO.Value;
      SPEdicao.ParamByName('ACDET_INI').Value := CECDET_INI.Value;
      SPEdicao.ParamByName('ACDET_FIM').Value := CECDET_FIM.Value;

      SPEdicao.ParamByName('ACOL_ID').Value := IECOL_ID.Text;
      SPEdicao.ParamByName('ASEG_ID').Value := IESEG_ID.Text;
      SPEdicao.ParamByName('AGRP_ID').Value := IEGRP_ID.Text;
      SPEdicao.ParamByName('ASGP_ID').Value := IESGP_ID.Text;
      SPEdicao.ParamByName('ACAT_ID').Value := IECAT_ID.Text;
      SPEdicao.ParamByName('ASCT_ID').Value := IESCT_ID.Text;
      SPEdicao.ExecProc;

      RNRecNo := SPEdicao.ParamByName('RNRecNo').Value;
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRollback);
        oException(Nil,'Falha ao tentar cancelar estoque !' + #13 +
                       'Favor entrar em contato com o administrador do sistema.' + #13 + #13 +
                        oFBException(E.Message));
      end;
    end;

    if RNRecNo > 0 then
       case messageBox(handle,PChar(INTTOSTR(RNRecNo)  + ' registro(s) encontrado(s) !' + #13 +
                             'Confirma Exclusão ?'),
                              PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of

            mrYes   : begin
                        oCTransact(TEdicao);
                        ACTExecEvent.Execute;
                      end;
                      
            mrCancel: Abort;
            mrNo    : Abort;
       end;

  finally
    if TEdicao.InTransaction then
    begin
      //uSP_CAD_PRO_EST_LAN_UPD(AREC_SHE_DEF.FB_Table,INTTOSTR(RECParametros.EP_ID),CECDRO.Text,CECDRO.Text,'PK.CDRO');
      oCTransact(TEdicao,ltRollback);
    end
  end;

  REC_SHE_DEF.Editing := False;
  Close;
end;

end.



