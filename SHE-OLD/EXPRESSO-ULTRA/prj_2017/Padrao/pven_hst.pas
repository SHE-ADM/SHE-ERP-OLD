unit pven_hst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SpeedBar, ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, Psock, NMHttp, IBStoredProc,
  IBEvents, IBDatabase, StdCtrls, NMFtp, dxEdLib, dxDBTLCl, dxGrClms,
  dxPageControl, dxEditor;

type
  Tfrmven_hst = class(TForm)
    sbMSG: TStatusBar;
    consulta: TIBQuery;
    dtscadastro: TDataSource;
    cadastro: TIBQuery;
    ibTRA: TIBTransaction;
    ibSP: TIBStoredProc;
    NMHTTP1: TNMHTTP;
    NMFTP1: TNMFTP;
    pnldir: TPanel;
    cadastroID: TIntegerField;
    cadastroCLI_FANT: TIBStringField;
    cadastroID1: TIntegerField;
    cadastroROM_DROM: TDateField;
    cadastroPRO_CART: TIBStringField;
    cadastroPRO_CPRO: TIBStringField;
    cadastroPRO_DPRO: TIBStringField;
    cadastroID2: TIntegerField;
    cadastroROM_QTDE: TIBBCDField;
    cadastroROM_UNIT: TIBBCDField;
    cadastroROM_TOTA: TIBBCDField;
    cadastroPRO_DCOR: TIBStringField;
    cad_cli_prc: TIBQuery;
    dtscad_cli_prc: TDataSource;
    imageOPC: TImageList;
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    siEVE: TSpeedItem;
    siPSQ: TSpeedItem;
    siSAIR: TSpeedItem;
    siREL: TSpeedItem;
    siPRO: TSpeedItem;
    SpeedItem1: TSpeedItem;
    pnlpro: TPanel;
    Panel2: TPanel;
    rgcli: TGroupBox;
    rgout: TGroupBox;
    dbgConsulta: TdxDBGrid;
    dbgConsultaID1: TdxDBGridMaskColumn;
    dbgConsultaROM_DROM: TdxDBGridDateColumn;
    dbgConsultaPRO_CPRO: TdxDBGridMaskColumn;
    dbgConsultaPRO_DPRO: TdxDBGridMaskColumn;
    dbgConsultaROM_QTDE: TdxDBGridMaskColumn;
    dbgConsultaROM_UNIT: TdxDBGridMaskColumn;
    dbgConsultaROM_TOTA: TdxDBGridMaskColumn;
    dxDBGrid1: TdxDBGrid;
    cadastroID3: TIntegerField;
    cad_cli_prcID: TIntegerField;
    cad_cli_prcCLI_CCLI: TIntegerField;
    cad_cli_prcCLI_DCAD: TDateField;
    cad_cli_prcCLI_MANO: TIBStringField;
    cad_cli_prcCLI_CPRO: TIBStringField;
    cad_cli_prcCLI_DPRO: TIBStringField;
    cad_cli_prcCLI_PREC: TIBBCDField;
    cad_cli_prcCLI_DPAG: TIBStringField;
    dxDBGrid1CLI_DCAD: TdxDBGridDateColumn;
    dxDBGrid1CLI_MANO: TdxDBGridMaskColumn;
    dxDBGrid1CLI_CPRO: TdxDBGridMaskColumn;
    dxDBGrid1CLI_DPRO: TdxDBGridMaskColumn;
    dxDBGrid1CLI_PREC: TdxDBGridMaskColumn;
    dxDBGrid1CLI_DPAG: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure siREFClick(Sender: TObject);
    procedure dbgConsultaBackgroundDrawEvent(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect);
    procedure siSAIRClick(Sender: TObject);
    procedure siPROClick(Sender: TObject);
    procedure SpeedItem1Click(Sender: TObject);
    procedure siPSQClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmven_hst: Tfrmven_hst;

implementation

uses p_funcoes, uPrincipal, ppesquisa;

{$R *.dfm}

procedure Tfrmven_hst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmven_hst.siREFClick(Sender: TObject);
begin
  cadastro.Close;
  cadastro.Open;
end;

procedure Tfrmven_hst.dbgConsultaBackgroundDrawEvent(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect);
var
  Text : String;
begin
  with ACanvas do
  begin
    Brush.Color := clBtnShadow;
    FillRect(ARect);
    if (Sender as TdxDBGrid).GroupColumnCount = 0 then

    begin
      Font.Color := clMenu;
      Text := 'Arraste as colunas para poder agrupá-las.';
      TextOut(ARect.Left, ARect.Top, Text);
    end;
  end;
end;

procedure Tfrmven_hst.siSAIRClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmven_hst.siPROClick(Sender: TObject);
begin
  pnlpro.Visible := false;
  panel2.Visible := true;
end;

procedure Tfrmven_hst.SpeedItem1Click(Sender: TObject);
begin
  pnlpro.Visible := true;
  panel2.Visible := false;
end;

procedure Tfrmven_hst.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 9;
    frmpesquisa.cbCAMPO.Text := 'Referencia';
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
        SQL.Clear;
        SQL.Add('SELECT   CAD_CLI.ID,CAD_CLI.CLI_FANT,PED_VEN_CAB.ID,PED_VEN_CAB.ROM_DROM,CAD_PRO.ID,');
        SQL.Add('         CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DPRO,');
        SQL.Add('         PED_VEN_ITE.ID,PED_VEN_ITE.ROM_QTDE,PED_VEN_ITE.ROM_UNIT,PED_VEN_ITE.ROM_TOTA');
        SQL.Add('FROM     CAD_PRO,CAD_CLI,'+TSConsulta.Values['ped_ven_ite']+' "PED_VEN_ITE" ,'+TSConsulta.Values['ped_ven_cab']+' "PED_VEN_CAB"');
        SQL.Add('WHERE    PED_VEN_CAB.ID       = PED_VEN_ITE.ROM_CCAB');
        SQL.Add('AND      PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
        SQL.Add('AND      PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
        SQL.Add('AND      CAD_CLI.ID = '''+inttostr(rgcli.Tag)+'''');

        if edtxt.Text <> '' then
           SQL.Add('AND '+cField+' LIKE ''%'+edtxt.Text+'%''');

        SQL.Add('ORDER BY CAD_PRO.PRO_CPRO,PED_VEN_ITE.ROM_UNIT');
        Open;
      end;
      dbgconsulta.SetFocus;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmven_hst.FormDestroy(Sender: TObject);
var
  i: word;
  BRet: boolean;
begin
  BRet  := true;
  for I := frmprincipal.MDIChildCount-1 downto 0 do
  begin
    if (frmprincipal.MDIChildren[I] <> nil) and (frmprincipal.MDIChildren[I].Name <> self.Name) then 
       BRet := false;
  end;
  frmprincipal.pnbot.Visible := BRet;
end;

procedure Tfrmven_hst.FormCreate(Sender: TObject);
begin
  frmprincipal.pnbot.Visible := false;
end;

end.
