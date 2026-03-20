unit pven_npr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxEditor, dxExEdtr, dxEdLib, ExtCtrls, StdCtrls,
  ComCtrls;

const
 dllNfe = 'NFe.dll';

type
  Tfrmven_npr = class(TForm)
    sbMSG: TStatusBar;
    Panel1: TPanel;
    Shape1: TShape;
    Shape9: TShape;
    Label5: TLabel;
    Shape10: TShape;
    Label1: TLabel;
    Shape2: TShape;
    edchv: TdxEdit;
    edpro: TdxEdit;
    GroupBox2: TGroupBox;
    edconsulta: TdxMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function NFeConsulta(chNFe : WideString) : WideString; stdcall; External dllNfe; far;

  
var
  frmven_npr: Tfrmven_npr;

implementation

{$R *.dfm}

procedure Tfrmven_npr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmven_npr.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_ESCAPE: close;
    VK_RETURN: selectNext (activecontrol, true, true);
    40       : selectNext (activecontrol, true, true);
    38       : selectNext (activecontrol, false, true);
  end;  
end;

procedure Tfrmven_npr.FormActivate(Sender: TObject);
var
  i: word;
  BRet: boolean;
begin
  if tag = 0 then
  begin
    BRet := true;
    for i := 1 to length(frmven_npr.edconsulta.Text) do
    begin
      if UPPERCASE(copy(frmven_npr.edconsulta.Text,i,3)) = 'REJ' then
      BRet := false;
    end;

    if BRet then
    begin
      frmven_npr.edconsulta.Text := TRIM(NFeConsulta(frmven_npr.edchv.Text));

      for i := 1 to length(frmven_npr.edconsulta.Text) do
      begin
        if copy(frmven_npr.edconsulta.Text,i,1) = '#' then
        break;
      end;
      inc(i);

      frmven_npr.edpro.Text := TRIM(copy(frmven_npr.edconsulta.Text,i,length(frmven_npr.edconsulta.Text)));
    end else
    frmven_npr.edpro.Text := '';
  end;  
end;

end.
