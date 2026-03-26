unit psenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, dxCntner, dxEditor, dxEdLib,
  StdCtrls, ExtCtrls, Buttons;

type
  Tfrmsenha = class(TForm)
    btnLogin: TBitBtn;
    btnSair: TBitBtn;
    Image2: TImage;
    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    Label1: TLabel;
    edpassA: TdxEdit;
    Label2: TLabel;
    edpassN: TdxEdit;
    consulta: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure edpassAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    editado: boolean;
    dusu: string;
  end;

var
  frmsenha: Tfrmsenha;

implementation

uses bDADOS;

{$R *.dfm}

procedure Tfrmsenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmsenha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  try
      case key of
          VK_return : selectNext (activecontrol, true, true);
          VK_UP     : selectNext (activecontrol, False, true);
          VK_Escape : btnSair.Click;  // Fecha Tela
      end;
  except
      ;
  end;
end;

procedure Tfrmsenha.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmsenha.btnLoginClick(Sender: TObject);
begin
 if edpassN.Enabled then
 begin
   editado := true;
   close;
 end;
end;

procedure Tfrmsenha.edpassAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT USU_PASS,ID FROM CAD_USU');
    if edpassA.Text = '' then
       SQL.Add('WHERE  USU_PASS IS NULL')
    else
       SQL.Add('WHERE  USU_PASS = '''+edpassA.Text+'''');
    SQL.Add('AND    USU_DUSU = '''+dusu+'''');
    Open;

    if not fields[1].IsNull then
    begin
      edpassA.Text    := fields[0].AsString;
      edpassN.Text    := '';
      edpassN.Enabled := true;
      edpassN.SetFocus;
    end
    else
    begin
      edpassA.SetFocus;
      MessageBox(handle,PChar('Senha não Encontrada !'),'Sistema de Planejamento e Controle de Produção',MB_ICONERROR+MB_OK);
      abort;
    end;
  end;
end;

end.
