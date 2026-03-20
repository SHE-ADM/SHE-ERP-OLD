unit ptab_pag;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, DB, IBStoredProc, IBEvents, IBDatabase, StrUtils, Math,
  IBCustomDataSet, IBQuery, ImgList, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ComCtrls, ExtCtrls, dxDBTLCl, dxGrClms, dxExEdtr, StdCtrls, rxSpeedbar,
  IBSQL, ActnList, cxGraphics, cxControls, dxStatusBar;

type
  Tfrmtab_pag = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroPAG_DPAG: TIBStringField;
    cadastroPAG_D001: TIntegerField;
    cadastroPAG_D002: TIntegerField;
    cadastroPAG_D003: TIntegerField;
    cadastroPAG_D004: TIntegerField;
    cadastroPAG_D005: TIntegerField;
    cadastroPAG_D006: TIntegerField;
    cadastroPAG_D007: TIntegerField;
    cadastroPAG_D008: TIntegerField;
    cadastroPAG_D009: TIntegerField;
    cadastroPAG_D010: TIntegerField;
    cadastroPAG_PARC: TSmallintField;
    dbgConsultaPAG_DPAG: TdxDBGridMaskColumn;
    dbgConsultaPAG_D001: TdxDBGridMaskColumn;
    dbgConsultaPAG_D002: TdxDBGridMaskColumn;
    dbgConsultaPAG_D003: TdxDBGridMaskColumn;
    dbgConsultaPAG_D004: TdxDBGridMaskColumn;
    dbgConsultaPAG_D005: TdxDBGridMaskColumn;
    dbgConsultaPAG_D006: TdxDBGridMaskColumn;
    dbgConsultaPAG_D007: TdxDBGridMaskColumn;
    dbgConsultaPAG_D008: TdxDBGridMaskColumn;
    dbgConsultaPAG_D009: TdxDBGridMaskColumn;
    dbgConsultaPAG_D010: TdxDBGridMaskColumn;
    dbgConsultaPAG_PARC: TdxDBGridMaskColumn;
    cadastroPAG_PRAZ: TSmallintField;
    CadastroPAG_D011: TIntegerField;
    CadastroPAG_D012: TIntegerField;
    dbgConsultaPAG_D011: TdxDBGridMaskColumn;
    dbgConsultaPAG_D012: TdxDBGridMaskColumn;
    CadastroPAG_D013: TIntegerField;
    CadastroPAG_D014: TIntegerField;
    CadastroPAG_D015: TIntegerField;
    CadastroPAG_D016: TIntegerField;
    CadastroPAG_D017: TIntegerField;
    CadastroPAG_D018: TIntegerField;
    DBGConsultaPAG_D013: TdxDBGridMaskColumn;
    DBGConsultaPAG_D014: TdxDBGridMaskColumn;
    DBGConsultaPAG_D015: TdxDBGridMaskColumn;
    DBGConsultaPAG_D016: TdxDBGridMaskColumn;
    DBGConsultaPAG_D017: TdxDBGridMaskColumn;
    DBGConsultaPAG_D018: TdxDBGridMaskColumn;
    CadastroPAG_D019: TIntegerField;
    CadastroPAG_D020: TIntegerField;
    DBGConsultaPAG_D019: TdxDBGridMaskColumn;
    DBGConsultaPAG_D020: TdxDBGridMaskColumn;
    DBGConsultaPAG_PRAZ: TdxDBGridMaskColumn;
    CadastroIDEP: TSmallintField;
    CadastroIDCA: TSmallintField;
    CadastroIP: TIBStringField;
    CadastroHOST: TIBStringField;
    CadastroDECA: TIBStringField;
    CadastroDEED: TIBStringField;
    DBGConsultaHOST: TdxDBGridMaskColumn;
    DBGConsultaDECA: TdxDBGridMaskColumn;
    DBGConsultaDEED: TdxDBGridMaskColumn;
    CadastroIDED: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure cadastroBeforePost(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure CadastroNewRecord(DataSet: TDataSet);
    procedure DTSCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure VERIFICA_CONDICAO;
  public
    { Public declarations }
    procedure _WM_AFTER_ACTIVATE  (var Msg: TMessage); message WM_AFTER_ACTIVATE;
  end;

var
  frmtab_pag: Tfrmtab_pag;

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmtab_pag._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
  inherited;
  with Cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   PK.*,CA.LOGIN||'' ''||FTIMESTAMP(PK.DTCA) AS DECA,ED.LOGIN||'' ''||FTIMESTAMP(PK.DTED) AS DEED');
    SelectSQL.Add('FROM     TAB_PAG  AS PK');
    SelectSQL.Add('JOIN     TAB_USER AS CA ON (CA.ID = PK.IDCA)');
    SelectSQL.Add('JOIN     TAB_USER AS ED ON (ED.ID = PK.IDED)');
    SelectSQL.Add('WHERE    PK.ID > 0');
    SelectSQL.Add('ORDER BY PK.PAG_DPAG');
    Prepare;
    Open;
  end;
end;

procedure Tfrmtab_pag.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'TAB_PAG_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GAdmin := True;
  inherited;
end;

procedure Tfrmtab_pag.FormDestroy(Sender: TObject);
begin
  inherited;
  frmtab_pag := nil;
end;

procedure Tfrmtab_pag.siDELClick(Sender: TObject);
begin
  inherited;

  VERIFICA_CONDICAO;

  if oYesNo(handle,'Confirma a exclusão da condição de pagamento '+cadastroPAG_DPAG.AsString+' ?') = mrno then
  abort;
  cadastro.Delete;
end;

procedure Tfrmtab_pag.cadastroBeforePost(DataSet: TDataSet);
var
  i,x,
  Parcelas,PrazoTotal: word;
begin
  if oEmpty(CadastroPAG_DPAG.AsString) then
     DataBaseError('Descrição não Informada !');

  with Consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_PAG');
    SQL.Add('WHERE  PAG_DPAG = '''+CadastroPAG_DPAG.AsString+'''');
    SQL.Add('AND    ID  <>     '''+CadastroId.AsString      +'''');
    Open;

    if not Eof then
       DataBaseError('Condição de Pagamento já Cadastrada !');
  end;

  if (CadastroPAG_D001.AsInteger = 0) and (CadastroPAG_D002.AsInteger = 0) then
      DataBaseError('Prazo não Informado !');

  PrazoTotal := 0;
  Parcelas   := 0;
  for x := 1 to 20 do
    for i := 1 to Cadastro.FieldCount - 1 do
    if Pos(oStrZero(x,3),Cadastro.Fields[i].Name) > 0 then
    begin
      if Cadastro.Fields[i].AsInteger > 0 then
      begin
        inc(Parcelas);
        PrazoTotal := Cadastro.Fields[i].AsInteger;
      end;
      Break;
    end;

  CadastroIDCA.Value     := RECUsuarios.Id;
  CadastroPAG_PARC.Value := IFThen(Parcelas > 0,Parcelas,1);
  CadastroPAG_PRAZ.Value := PrazoTotal;

  CadastroIP.Value   := RECParametros.IP;
  CadastroHOST.Value := RECParametros.HOST;
end;

procedure Tfrmtab_pag.VERIFICA_CONDICAO;
begin
  with consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(CDPD) AS CDPD FROM (');
    SQL.Add('SELECT COUNT(ID) AS CDPD FROM PED_VEN_CAB');
    SQL.Add('WHERE  CDPG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) AS CDPD FROM PED_VEN_CAB_002');
    SQL.Add('WHERE  CDPG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) AS CDPD FROM PED_VEN_CAB_003');
    SQL.Add('WHERE  CDPG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) AS CDPD FROM PED_VEN_CAB_004');
    SQL.Add('WHERE  CDPG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) AS CDPD FROM PED_VEN_CAB_005');
    SQL.Add('WHERE  CDPG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) AS CDPD FROM PED_VEN_CAB_006');
    SQL.Add('WHERE  CDPG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) AS CDPD FROM PED_VEN_CAB_007');
    SQL.Add('WHERE  CDPG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) AS CDPD FROM PED_VEN_CAB_008');
    SQL.Add('WHERE  CDPG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) AS CDPD FROM PED_VEN_CAB_009');
    SQL.Add('WHERE  CDPG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) AS CDPD FROM PED_PRG_CAB');
    SQL.Add('WHERE  CDPG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) AS CDPD FROM PED_PRG_CAB_002');
    SQL.Add('WHERE  CDPG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) AS CDPD FROM PED_PRG_CAB_003');
    SQL.Add('WHERE  CDPG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) AS CDPD FROM PED_PRG_CAB_004');
    SQL.Add('WHERE  CDPG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) AS CDPD FROM PED_PRG_CAB_005');
    SQL.Add('WHERE  CDPG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) AS CDPD FROM PED_PRG_CAB_006');
    SQL.Add('WHERE  CDPG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) AS CDPD FROM PED_PRG_CAB_007');
    SQL.Add('WHERE  CDPG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) AS CDPD FROM PED_PRG_CAB_008');
    SQL.Add('WHERE  CDPG = '''+cadastroID.AsString+'''');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(ID) AS CDPD FROM PED_PRG_CAB_009');
    SQL.Add('WHERE  CDPG = '''+cadastroID.AsString+'''');
    SQL.Add(')');
    Open;

    if Fields[0].AsInteger > 0 then
    DataBaseError('Condição de pagamento comprometida com pedidos de vendas'+#13+
                  'Número de Pedidos '+consulta.Fields[0].AsString);
  end;
end;

procedure Tfrmtab_pag.DBGConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_insert: SIINC.Click;
       vk_return: if Cadastro.State = dsBrowse then SIALT.Click else
                  begin
                    DBGConsulta.FocusedColumn := DBGConsulta.FocusedColumn + 1;
                    if DBGConsulta.FocusedColumn > DBGConsultaPAG_D020.ColIndex then
                    begin
                      Cadastro.Next;
                      if Cadastro.Eof then
                         Cadastro.Append else
                      DBGConsulta.FocusedColumn := DBGConsulta.FocusedColumn - 1;
                    end;
                  end;
       vk_escape: if Cadastro.State in [dsInsert,dsEdit] then Cadastro.Cancel else SICAN.Click;           
       vk_delete: SIDEL.Click;
  end;
end;

procedure Tfrmtab_pag.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if (AColumn = DBGConsultaPAG_D001) and (ANode.Values[DBGConsultaPAG_D001.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPAG_D002) and (ANode.Values[DBGConsultaPAG_D002.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPAG_D003) and (ANode.Values[DBGConsultaPAG_D003.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPAG_D004) and (ANode.Values[DBGConsultaPAG_D004.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPAG_D005) and (ANode.Values[DBGConsultaPAG_D005.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPAG_D006) and (ANode.Values[DBGConsultaPAG_D006.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPAG_D007) and (ANode.Values[DBGConsultaPAG_D007.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPAG_D008) and (ANode.Values[DBGConsultaPAG_D008.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPAG_D009) and (ANode.Values[DBGConsultaPAG_D009.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPAG_D010) and (ANode.Values[DBGConsultaPAG_D010.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPAG_D011) and (ANode.Values[DBGConsultaPAG_D011.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPAG_D012) and (ANode.Values[DBGConsultaPAG_D012.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPAG_D013) and (ANode.Values[DBGConsultaPAG_D013.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPAG_D014) and (ANode.Values[DBGConsultaPAG_D014.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPAG_D015) and (ANode.Values[DBGConsultaPAG_D015.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPAG_D016) and (ANode.Values[DBGConsultaPAG_D016.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPAG_D017) and (ANode.Values[DBGConsultaPAG_D017.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPAG_D018) and (ANode.Values[DBGConsultaPAG_D018.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPAG_D019) and (ANode.Values[DBGConsultaPAG_D019.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaPAG_D020) and (ANode.Values[DBGConsultaPAG_D020.Index] > 0) then
        AFont.Style := [fsBold];
  end;
end;

procedure Tfrmtab_pag.CadastroNewRecord(DataSet: TDataSet);
begin
  CadastroID.Value   := 0;
  CadastroIDEP.Value := RECParametros.EP_ID;
end;

procedure Tfrmtab_pag.DTSCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  DBGConsulta.Bands[3].Visible := (CadastroIDCA.AsInteger > 0);
  DBGConsulta.Bands[4].Visible := (CadastroIDED.AsInteger > 0);
  DBGConsulta.Bands[5].Visible := (CadastroHOST.AsString <> EmptyStr);

  { Ajusta Colunas }
  if Cadastro.State = dsBrowse then
  begin
    DBGConsulta.ApplyBestFit(DBGConsultaDECA);
    DBGConsulta.ApplyBestFit(DBGConsultaDEED);
    DBGConsulta.ApplyBestFit(DBGConsultaHOST);
  end;  
end;

end.
