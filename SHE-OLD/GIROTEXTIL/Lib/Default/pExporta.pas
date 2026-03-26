unit pExporta;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBDatabase, QRExport, IBQuery, ImgList,
  StdCtrls, Mask, RxToolEdit, dxCntner, dxEditor, dxEdLib, ComCtrls,
  RxSpeedBar, ExtCtrls, dxDBGrid, dxDBCtrl, dxExEdtr, Shellapi, QRPDFFilt;

type
  TFrmExporta = class(TForm)
    SBRodape: TStatusBar;
    PNLPrincipal: TPanel;
    SBPrincipal: TSpeedBar;
    SSPrincipal: TSpeedbarSection;
    GBArquivo: TGroupBox;
    EDArquivo: TdxEdit;                
    IETipo: TdxImageEdit;
    DELocal: TDirectoryEdit;
    LAArquivo: TLabel;
    LATipo: TLabel;
    LALocal: TLabel;
    ILPrincipal: TImageList;
    SIPGera: TSpeedItem;
    SIPVisualiza: TSpeedItem;
    SIPEmail: TSpeedItem;
    SIPSaida: TSpeedItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSaiClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BGerClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure IETipoChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmExporta: TFrmExporta;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TFrmExporta.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
  DELocal.Text := 'C:\Sheild\Documentos\';
end;

procedure TFrmExporta.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Screen.Cursor := crDefault;
end;

procedure TFrmExporta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmExporta.FormDestroy(Sender: TObject);
begin
  FrmExporta := Nil;
end;

procedure TFrmExporta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_ESCAPE: SIPSaida.Click;
       VK_RETURN: if (not (activeControl is TdxDBGrid) and
                      not (activeControl is TdxMemo)   and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       40       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       38       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, false, true);
  end;
end;

procedure TFrmExporta.BGerClick(Sender: TObject);
begin
  if DELocal.Text = '' then
  raise exception.Create('Local de Gravação não Informado !');

{  with FrmRelatorios do
  begin
    Tag := FrmExporta.Tag;
  end;
 }
  SIPEmail.Enabled := true;
  SIPEmail.Enabled := true;
end;

procedure TFrmExporta.BSaiClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmExporta.IETipoChange(Sender: TObject);
begin
  if IETipo.Text = 'PDF - CATALOGO'       then
  Tag := 2 else
  if IETipo.Text = 'XLS - PLANILHA EXCEL' then
  Tag := 3 else
  if IETipo.Text = 'DOC - DOCUMENTO WORD' then
  Tag := 4;
end;

end.
