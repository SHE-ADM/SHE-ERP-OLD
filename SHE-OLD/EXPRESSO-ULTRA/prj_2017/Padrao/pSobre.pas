unit pSobre;

interface      

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, jpeg;

type
  TfrmSobre = class(TForm)
    
    sbMain: TStatusBar;
    Panel1: TPanel;
    Image1: TImage;
    Panel3: TPanel;
    Bevel1: TBevel;
    OKButton: TButton;
    PhysMem: TLabel;
    FreeRes: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel4: TPanel;
    LAVersao: TLabel;
    LAData: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel2: TPanel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TfrmSobre.FormCreate(Sender: TObject);
var
  MS: TMemoryStatus;
begin
  GlobalMemoryStatus(MS);
  PhysMem.Caption := FormatFloat('#,###" KB"', MS.dwTotalPhys / 1024);
  FreeRes.Caption := Format('%d %%', [MS.dwMemoryLoad]);

//  lafant.Caption        := frmprincipal.parametrosPAR_FANT.AsString;
//  laraza.Caption        := frmprincipal.parametrosPAR_RAZA.AsString;
//  sbmain.Panels[0].Text := frmprincipal.parametrosPAR_COPY.AsString;
end;

procedure TfrmSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

end.
