unit pctr_pro;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, DB, IBStoredProc, IBEvents,
  IBDatabase, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ComCtrls, ExtCtrls, DBCtrls, dxPageControl, dxEditor, dxEdLib,
  StdCtrls, dxDBTLCl, dxGrClms, DateUtils, dxExEdtr, jpeg, Menus, Shellapi,
  Math, dxDBELib, rxSpeedbar;

type
  Tfrmctr_pro = class(Tfrmpadr1)
    siCRO: TSpeedItem;
    rom_ite: TIBQuery;
    dtsrom_ite: TDataSource;
    PopupMenu1: TPopupMenu;
    GerarPlanilha1: TMenuItem;
    Label23: TLabel;
    pcIMG: TdxPageControl;
    tsITE: TdxTabSheet;
    tsOBS: TdxTabSheet;
    dxDBMemo1: TdxDBMemo;
    dbgite: TdxDBGrid;
    cadastroID: TIntegerField;
    cadastroPRO_CDEP: TIntegerField;
    cadastroPRO_CFOR: TIntegerField;
    cadastroPRO_CUSU: TIntegerField;
    cadastroPRO_DCAD: TDateField;
    cadastroPRO_DNFS: TDateField;
    cadastroPRO_CDNF: TIBStringField;
    cadastroPRO_OPER: TIBStringField;
    cadastroPRO_PECA: TIntegerField;
    cadastroPRO_QTDE: TIBBCDField;
    cadastroPRO_OBSE: TMemoField;
    cadastroPRO_STA: TIBStringField;
    cadastroPAR_FANT: TIBStringField;
    cadastroFOR_FANT: TIBStringField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaPRO_OPER: TdxDBGridMaskColumn;
    dbgConsultaPRO_DCAD: TdxDBGridDateColumn;
    dbgConsultaPRO_CDNF: TdxDBGridMaskColumn;
    dbgConsultaPRO_STA: TdxDBGridMaskColumn;
    dbgConsultaPAR_FANT: TdxDBGridMaskColumn;
    rom_itePRO_ITEM: TIBStringField;
    rom_itePRO_CART: TIBStringField;
    rom_itePRO_CPRO: TIBStringField;
    rom_itePRO_DCOR: TIBStringField;
    rom_itePRO_DPRO: TIBStringField;
    rom_itePRO_QTDE: TIBBCDField;
    rom_itePRO_CDET: TIBStringField;
    rom_itePRO_FOTO: TBlobField;
    rom_iteID: TIntegerField;
    rom_itePRO_CCOR: TIntegerField;
    rom_itePRO_RCOR: TIBStringField;
    rom_itePRO_DUNI: TIBStringField;
    rom_iteID1: TIntegerField;
    cadastroPRO_DUSU: TIBStringField;
    dbgConsultaPRO_DUSU: TdxDBGridMaskColumn;
    cadastroPRO_TIPO: TIBStringField;
    dbgConsultaPRO_TIPO: TdxDBGridMaskColumn;
    cadastroPRO_DMAP: TIBStringField;
    cadastroPRO_CTNR: TIBStringField;
    rom_itePRO_DMAP: TIBStringField;
    rom_itePRO_CTNR: TIBStringField;
    dbgConsultaPRO_DMAP: TdxDBGridMaskColumn;
    dbgConsultaPRO_CTNR: TdxDBGridMaskColumn;
    rom_itePRO_DGRP: TIBStringField;
    rom_itePRO_DCOL: TIBStringField;
    rom_itePRO_DCAT: TIBStringField;
    dbgitePRO_ITEM: TdxDBGridMaskColumn;
    dbgitePRO_CDET: TdxDBGridMaskColumn;
    dbgitePRO_CART: TdxDBGridMaskColumn;
    dbgitePRO_DCOR: TdxDBGridMaskColumn;
    dbgitePRO_DPRO: TdxDBGridMaskColumn;
    dbgitePRO_DUNI: TdxDBGridMaskColumn;
    dbgitePRO_QTDE: TdxDBGridMaskColumn;
    dbgitePRO_DGRP: TdxDBGridMaskColumn;
    dbgitePRO_DCOL: TdxDBGridMaskColumn;
    dbgitePRO_DCAT: TdxDBGridMaskColumn;
    cadastroPRO_LOTE: TIBStringField;
    dbgConsultaPRO_LOTE: TdxDBGridMaskColumn;
    siCON: TSpeedItem;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure dtscadastroDataChange(Sender: TObject; Field: TField);
    procedure siRELClick(Sender: TObject);
    procedure cadastroAfterOpen(DataSet: TDataSet);
    procedure siCROClick(Sender: TObject);
    procedure siEVEClick(Sender: TObject);
    procedure dtsrom_iteDataChange(Sender: TObject; Field: TField);
    procedure siPSQClick(Sender: TObject);
    procedure siCONClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmctr_pro : Tfrmctr_pro;

implementation

uses uPrincipal, prelatorio_geral, pent_pro,
  ppesquisa;

{$R *.dfm}

procedure Tfrmctr_pro.FormCreate(Sender: TObject);
begin
  cEvent := 'CTR_PRO';
  inherited;

  with cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   CAD_PRO_ENC.*,CAD_FOR.FOR_FANT,PAR_SIS.PAR_FANT');
    SelectSQL.Add('FROM     CAD_PRO_ENC,CAD_FOR,PAR_SIS');
    SelectSQL.Add('WHERE    CAD_PRO_ENC.PRO_CDEP = PAR_SIS.ID');
    SelectSQL.Add('AND      CAD_PRO_ENC.PRO_CFOR = CAD_FOR.ID');
    SelectSQL.Add('AND      CAD_PRO_ENC.PRO_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    SelectSQL.Add('ORDER BY ID DESC');
    Prepare;
  end;
end;

procedure Tfrmctr_pro.FormDestroy(Sender: TObject);
begin
  inherited;
  frmctr_pro := Nil;
end;

procedure Tfrmctr_pro.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  if not ASelected then
  begin
    AFont.Color := clBlack;
    AColor      := clWhite;

    Value := ANode.Values[6];
    if not VarIsNull(Value) then
    begin
      if Value = '1' then
      begin
         AFont.Color := clwhite;
         AColor      := RGB(StrToInt( '$ED') ,
                            StrToInt( '$1F') ,
                            StrToInt( '$43'));
      end;
    end;
  end;
end;

procedure Tfrmctr_pro.cadastroBeforeEdit(DataSet: TDataSet);
begin
  {};
end;

procedure Tfrmctr_pro.cadastroBeforeInsert(DataSet: TDataSet);
begin
  {};
end;

procedure Tfrmctr_pro.dtscadastroDataChange(Sender: TObject;
  Field: TField);
begin
  sbMSG.Panels[2].Text        := cadastroPRO_OBSE.AsString;
  siCRO.Enabled               := (cadastroPRO_STA.AsString = '0');
  dbgConsultaPRO_TIPO.Visible := (cadastroPRO_TIPO.AsString <> '');
end;

procedure Tfrmctr_pro.siRELClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.tsENT_PRO.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsENT_PRO;
    frmrelatorio_geral.cbENT_PRO_TREL.Text  := 'ROMANEIO DE ENTRADA POR ETIQUETAS';
    frmrelatorio_geral.cbENT_PRO_CDRO.Text  := cadastroID.AsString;
    if cadastroPRO_OPER.AsString = 'DEFEITO' then
    frmrelatorio_geral.cbENT_PRO_TREL.Tag   := 1 else
    frmrelatorio_geral.cbENT_PRO_TREL.Tag   := 0;
    frmrelatorio_geral.cbENT_PRO_DATA.Text  := 'DATA LANÇAMENTO';

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PRO_OPER FROM CAD_PRO_ENC');
      SQL.Add('GROUP BY PRO_OPER');
      SQL.Add('ORDER BY PRO_OPER');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbENT_PRO_OPER.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbENT_PRO_OPER.Descriptions.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT    PAR_FANT FROM PAR_SIS');
      SQL.Add('GROUP  BY PAR_FANT');
      SQL.Add('ORDER  BY PAR_FANT');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbENT_PRO_DEMP.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbENT_PRO_DEMP.Descriptions.Add(fields[0].AsString);
        next;
      end;
    end;  
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmctr_pro.cadastroAfterOpen(DataSet: TDataSet);
begin
  with rom_ite do
  begin
    SQL.Clear;
    SQL.Add('SELECT    CAD_PRO_ENI.ID,CAD_PRO_ENI.PRO_ITEM,CAD_PRO.ID,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_CCOR,CAD_PRO.PRO_RCOR,');
    SQL.Add('          CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DPRO, CAD_PRO.PRO_DUNI,CAD_PRO.PRO_DGRP,CAD_PRO.PRO_DCOL,CAD_PRO.PRO_DCAT,CAD_PRO_ENI.PRO_DMAP,');
    SQL.Add('          CAD_PRO_ENI.PRO_CTNR,CAD_PRO_ENI.PRO_QTDE,CAD_PRO_ENI.PRO_CDET,CAD_PRO_IMG.PRO_FOTO');
    SQL.Add('FROM      CAD_PRO_ENI,CAD_PRO,CAD_PRO_IMG');
    SQL.Add('WHERE     CAD_PRO_ENI.PRO_CPRO = CAD_PRO.ID');
    SQL.Add('AND       CAD_PRO.PRO_CART     = CAD_PRO_IMG.PRO_CART');
    SQL.Add('AND       CAD_PRO_ENI.PRO_CDRO = :ID');
    SQL.Add('ORDER  BY CAD_PRO_ENI.PRO_ITEM');
    Open;
  end;
end;

procedure Tfrmctr_pro.siCROClick(Sender: TObject);
var
  BRet: Boolean;
begin
  if oYesNo(handle,'Cancelar Lançamentos ?') = mrno then
     abort;

  BRet := false;

  try
    rom_ite.First;
    while not rom_ite.Eof do
    begin
      with consulta do
      begin
        if cadastroPRO_OPER.AsString = 'DEFEITO' then
        begin
          SQL.Clear;
          SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_def']);
          SQL.Add('WHERE  EST_CDET = '''+rom_itePRO_CDET.AsString+'''');
          ExecSQL;
        end else
        begin
          SQL.Clear;
          SQL.Add('SELECT EST_CDPD FROM '+SLPrincipal.Values['cad_pro_est']);
          SQL.Add('WHERE  EST_CDET = '''+rom_itePRO_CDET.AsString+'''');
          Open;

          if not fields[0].IsNull then
          BRet := true;

          if not BRet then
          begin
            SQL.Clear;
            SQL.Add('DELETE FROM '+SLPrincipal.Values['cad_pro_est']);
            SQL.Add('WHERE  EST_CDET = '''+rom_itePRO_CDET.AsString+'''');
            ExecSQL;
          end;
        end;
      end;
      rom_ite.Next;
    end;

    cadastro.Edit;
    cadastroPRO_STA.Value := '1';
    cadastro.Post;
  finally
  end;
end;

procedure Tfrmctr_pro.siEVEClick(Sender: TObject);
begin
  //inherited;
  cadastro.First;
  while not cadastro.Eof do
  begin
    if (cadastroPRO_OPER.AsString = 'ZERAR') and (cadastroPRO_CDEP.AsInteger = frmprincipal.parametrosID.AsInteger) then
    begin
      rom_ite.First;
      while not rom_ite.Eof do
      begin
        with consulta do
        begin
          SQL.Clear;
          SQL.Add('UPDATE CAD_PRO_ENI');
          SQL.Add('SET    PRO_CDET = ''9999999999''');
          SQL.Add('WHERE  ID = '''+rom_iteID.AsString+'''');
          ExecSQL;

          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_est']);
          SQL.Add('SET    EST_CDET = ''9999999999''');
          SQL.Add('WHERE  EST_CDET = '''+rom_itePRO_CDET.AsString+'''');
          ExecSQL;
          IBTra.CommitRetaining;
        end;
        rom_ite.Next;
      end;
    end;
    cadastro.Next;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('UPDATE CAD_PRO_EST_004');
    SQL.Add('SET    EST_FLAG = ''S''');
    SQL.Add('WHERE  EST_CDET = ''9999999999''');
    SQL.Add('AND    EST_DEBI > 0');
    ExecSQL;
    IBTra.CommitRetaining;
  end;

  showmessage('ok');
end;

procedure Tfrmctr_pro.dtsrom_iteDataChange(Sender: TObject; Field: TField);
begin
  dbgitePRO_DCOR.Visible := (rom_itePRO_DCOR.AsString <> '');
end;

procedure Tfrmctr_pro.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 14;
    frmpesquisa.cbCAMPO.Text := 'Local Estoque';
    frmpesquisa.cbDATA.Text  := 'Lançamento';
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      if (edTXT.Text = '') and (dxdt1.Date < 0) then
         {nothing}
      else
      with cadastro do
      begin
        Close;
        SelectSQL.Clear;
        SelectSQL.Add('SELECT CAD_PRO_ENC.*,CAD_FOR.FOR_FANT,PAR_SIS.PAR_FANT');
        SelectSQL.Add('FROM   CAD_PRO_ENC,CAD_FOR,PAR_SIS');
        SelectSQL.Add('WHERE  CAD_PRO_ENC.PRO_CDEP = PAR_SIS.ID');
        SelectSQL.Add('AND    CAD_PRO_ENC.PRO_CFOR = CAD_FOR.ID');

        if edtxt.Text <> '' then
        SelectSQL.Add('AND '+cField+' LIKE ''%'+edtxt.Text+'%''');

        if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
        SelectSQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

        SelectSQL.Add('ORDER BY CAD_PRO_ENC.ID');
        Open;
      end;
      dbgconsulta.SetFocus;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmctr_pro.siCONClick(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
  ClickedOK := InputQuery('Entre com o Número do Container', 'Número', NewString);
  if (not ClickedOK) or (Length(NewString) < 3) then
  abort;

  if oYesNo(handle,'Confirma atualização do número do container ?') = mryes then
  begin
    with frmprincipal.sp_sql do
    begin
      ibSP.StoredProcName := 'SP_SQL';

      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_ENI');
      SQL.Add('SET    PRO_CTNR = '''+NewString+'''');
      SQL.Add('WHERE  PRO_CDRO = '''+cadastroID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_est']);
      SQL.Add('SET    PRO_CTNR = '''+NewString+'''');
      SQL.Add('WHERE  PRO_CDRO = '''+cadastroID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_res']);
      SQL.Add('SET    PRO_CTNR = '''+NewString+'''');
      SQL.Add('WHERE  PRO_CDRO = '''+cadastroID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;

      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['cad_pro_sep']);
      SQL.Add('SET    PRO_CTNR = '''+NewString+'''');
      SQL.Add('WHERE  PRO_CDRO = '''+cadastroID.AsString+'''');

      ibSP.Prepare;
      ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
      ibSP.ExecProc;
    end;

    cadastro.Edit;
    cadastroPRO_CTNR.Value := NewString;
    cadastro.Post;
  end;

end;

end.

