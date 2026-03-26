unit ppar_pri;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, IBDatabase, DB, IBCustomDataSet, IBQuery, 
  ComCtrls, ExtCtrls, StdCtrls, Buttons, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, dximctrl, Printers, dxExEdtr, IdBaseComponent, IdComponent,
  IdIPWatch;

type
  Tfrmpar_pri = class(TForm)
    pnlcadastro: TPanel;
    PaintBox: TPaintBox;
    Label2: TLabel;
    Bevel1: TBevel;
    Bevel5: TBevel;
    sbMSG: TStatusBar;
    consulta: TIBQuery;
    imageOPC: TImageList;
    listpri: TdxImageListBox;
    Bevel2: TBevel;
    listsec: TdxImageListBox;
    Label1: TLabel;
    dbgConsulta: TdxDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Bevel3: TBevel;
    par_pri: TIBDataSet;
    par_priID: TIntegerField;
    par_priPRI_CPRI: TSmallintField;
    par_priPRI_DPRI: TIBStringField;
    par_priPRI_SECA: TIBStringField;
    dtspar_pri: TDataSource;
    dbgConsultaPRI_CPRI: TdxDBGridMaskColumn;
    dbgConsultaPRI_DPRI: TdxDBGridMaskColumn;
    dbgConsultaPRI_SECA: TdxDBGridMaskColumn;
    par_priPRI_IP: TIBStringField;
    ibTRA: TIBTransaction;
    IP: TIdIPWatch;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure par_priAfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure par_priAfterDelete(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpar_pri: Tfrmpar_pri;

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmpar_pri.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmpar_pri.par_priAfterPost(DataSet: TDataSet);
begin
  IBTra.CommitRetaining;
end;

procedure Tfrmpar_pri.BitBtn1Click(Sender: TObject);
begin
  if Listsec.ItemIndex < 0 then
  begin
    MessageBox(handle,PChar('Serviço de impressão não selecionado !'),'Sistema de Vendas',MB_ICONERROR+MB_OK);
    Abort;
  end;

  if Listpri.ItemIndex < 0 then
  begin
    MessageBox(handle,PChar('Impressora não selecionada !'),'Sistema de Vendas',MB_ICONERROR+MB_OK);
    Abort;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM '+SLPrincipal.Values['par_pri']);
    SQL.Add('WHERE  PRI_SECA = '''+Listsec.Items.Strings[Listsec.ItemIndex]+'''');
    SQL.Add('AND    PRI_IP   = '''+IP.LocalIP+'''');
    Open;

    if not fields[0].IsNull then
    begin
      MessageBox(handle,PChar('Serviço de impressão já cadastrado !'),'Sistema de Vendas',MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;

  par_pri.Append;
  par_priID.Value       := 0;
  par_priPRI_IP.Value   := IP.LocalIP;
  par_priPRI_SECA.Value := Listsec.Items.Strings[Listsec.ItemIndex];
  par_priPRI_DPRI.Value := Listpri.Items.Strings[listpri.ItemIndex];
  par_priPRI_CPRI.Value := Listpri.ItemIndex;
  par_pri.Post;
  par_pri.Close;
  par_pri.Open;
end;

procedure Tfrmpar_pri.par_priAfterDelete(DataSet: TDataSet);
begin
  IBTra.CommitRetaining;
end;

procedure Tfrmpar_pri.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 27 then
     close;
end;
procedure Tfrmpar_pri.BitBtn2Click(Sender: TObject);
begin
  if par_pri.RecordCount > 0 then
     par_pri.Delete;
end;

procedure Tfrmpar_pri.FormCreate(Sender: TObject);
begin
  IBTra.StartTransaction;
end;

procedure Tfrmpar_pri.FormShow(Sender: TObject);
begin
  with par_pri do
  begin
    DeleteSQL.Clear;
    DeleteSQL.Add('delete from '+SLPrincipal.Values['par_pri']);
    DeleteSQL.Add('where');
    DeleteSQL.Add('ID = :OLD_ID');

    InsertSQL.Clear;
    InsertSQL.Add('insert into '+SLPrincipal.Values['par_pri']);
    InsertSQL.Add('  (ID, PRI_CPRI, PRI_DPRI, PRI_IP, PRI_SECA)');
    InsertSQL.Add('values');
    InsertSQL.Add('  (:ID, :PRI_CPRI, :PRI_DPRI, :PRI_IP, :PRI_SECA)');

    ModifySQL.Clear;
    ModifySQL.Add('update '+SLPrincipal.Values['par_pri']);
    ModifySQL.Add('set');
    ModifySQL.Add('  ID       = :ID,');
    ModifySQL.Add('  PRI_CPRI = :PRI_CPRI,');
    ModifySQL.Add('  PRI_DPRI = :PRI_DPRI,');
    ModifySQL.Add('  PRI_IP   = :PRI_IP,');
    ModifySQL.Add('  PRI_SECA = :PRI_SECA');
    ModifySQL.Add('where');
    ModifySQL.Add('  ID = :OLD_ID');
  end;

  with par_pri do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM '+SLPrincipal.Values['par_pri']);
    SelectSQL.Add('WHERE  PRI_IP = '''+IP.LocalIP+'''');
    Open;
  end;
  ListPri.Items.Assign(Printer.Printers);
  ListPri.ItemIndex := Printer.PrinterIndex;
end;

end.
