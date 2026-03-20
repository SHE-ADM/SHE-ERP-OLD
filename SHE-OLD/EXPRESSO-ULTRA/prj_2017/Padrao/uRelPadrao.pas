unit uRelPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, StdCtrls, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls, DB, ZQuery, ZIbSqlQuery, ImgList, SpeedBar, ShellApi, QuickRpt,
  QRCtrls;

type
  TFrmRelatorioPadrao = class(TForm)
    pnlTitulo: TPanel;
    pnlParametros: TPanel;
    lblTitulo: TLabel;
    dtsCadastro: TDataSource;
    ZSQCadastro: TZIbSqlQuery;
    Label36: TLabel;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRBANDGRUPO: TQRBand;
    SpeedBar1: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedbarSection2: TSpeedbarSection;
    SpeedbarSection3: TSpeedbarSection;
    SpeedbarSection4: TSpeedbarSection;
    SpeedItem10: TSpeedItem;
    SpeedItem12: TSpeedItem;
    SpeedItem1: TSpeedItem;
    imgLogo: TQRImage;
    QRDBText1: TQRDBText;
    QRSysData1: TQRSysData;
    ZSQEmpresa: TZIbSqlQuery;
    dtsEmpresa: TDataSource;
    QRLabel1: TQRLabel;
    QrlUsuario: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel3: TQRLabel;
    SpeedItem2: TSpeedItem;
    QRLabel12: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel23: TQRLabel;
    QRExpr3: TQRExpr;
    lblSubtitulo: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton15Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ZSQCadastroAfterOpen(DataSet: TDataSet);
    procedure ZSQCadastroBeforeOpen(DataSet: TDataSet);
    procedure SpeedItem12Click(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure SpeedItem2Click(Sender: TObject);
    procedure SpeedItem10Click(Sender: TObject);
    procedure Abre_Filtro; Virtual;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioPadrao: TFrmRelatorioPadrao;

implementation

uses ufrmPrincipal, p_Funcoes;

{$R *.dfm}


procedure TFrmRelatorioPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=CaFree;
end;

procedure TFrmRelatorioPadrao.ToolButton15Click(Sender: TObject);
begin
   if self.FormStyle=fsNormal then
      modalresult:=mrOk
   else begin
         Close;
//         Release;
   end;
end;

procedure TFrmRelatorioPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    try
        case key of
            VK_return : selectNext (activecontrol, true, true);
            VK_UP     : selectNext (activecontrol, False, true);
            VK_Escape : SpeedItem12.Click;  // Fecha Tela
        end;
    except
        ;
    end;
end;

procedure TFrmRelatorioPadrao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    dtsCadastro.DataSet.Close;
end;

procedure TFrmRelatorioPadrao.FormCreate(Sender: TObject);
begin
    top := ((frmPrincipal.ClientHeight-24)-height) div 2;
    QuickRep1.SendToBack;
    Self.Caption:=lbltitulo.Caption;
    if (dtsCadastro.DataSet <> nil) then
    begin
       screen.Cursor:=crHourGlass;
       ActionOnAllTables (Self,'O','Q');
       screen.Cursor:=crDefault;
    end;
    ZSQEmpresa.close;
    ZSQEmpresa.Parambyname ('COD_EMPRESA').AsInteger := 1;
    ZSQEmpresa.Open;
    SpeedItem1.Click;
end;

procedure TFrmRelatorioPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       Key := #0;
end;

procedure TFrmRelatorioPadrao.ZSQCadastroAfterOpen(DataSet: TDataSet);
begin
    screen.cursor := crDefault;
end;

procedure TFrmRelatorioPadrao.ZSQCadastroBeforeOpen(DataSet: TDataSet);
begin
    try
       screen.cursor := crHourGlass;
       ZSQCadastro.AfterScroll := nil;
    except;
       screen.cursor := crDefault;
    end;

end;

procedure TFrmRelatorioPadrao.SpeedItem12Click(Sender: TObject);
begin
    Close;
    Release;
end;

procedure TFrmRelatorioPadrao.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    QRLUsuario.Caption := FrmPrincipal.sUsuario;
    imgLogo.Picture := nil;
    // Será implementado depois que o campo for criado...
    if fileexists (ZSQEmpresa.Fieldbyname ('NOM_LOGO').AsString) then
        imgLogo.Picture.LoadFromFile(ZSQEmpresa.Fieldbyname ('NOM_LOGO').AsString);
end;

procedure TFrmRelatorioPadrao.SpeedItem2Click(Sender: TObject);
begin
    Abre_Filtro;
    QuickRep1.Preview;
end;

procedure TFrmRelatorioPadrao.SpeedItem10Click(Sender: TObject);
begin
    Abre_Filtro;
    QuickRep1.Print;
end;

procedure TFrmRelatorioPadrao.Abre_Filtro;
begin
    // Filtro do relatório
end;

end.
