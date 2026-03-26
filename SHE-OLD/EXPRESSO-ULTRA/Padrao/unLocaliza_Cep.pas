unit unLocaliza_Cep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Mask, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, DB,
  DBTables, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  IBCustomDataSet, IBTable, dxEditor, dxEdLib, IBQuery,  ImgList,
  dxExEdtr, IBDatabase, rxSpeedbar;

type
  TfrmLocaliza_Cep = class(TForm)
    Bevel1: TBevel;
    sbForm: TStatusBar;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cep_log: TIBQuery;
    dtscep_log: TDataSource;
    gridlogradouros: TdxDBGrid;
    edcep: TdxMaskEdit;
    edlogradouro: TdxEdit;
    imageOPC: TImageList;
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    BOK: TSpeedItem;
    BSair: TSpeedItem;
    cep_logLOG_TIT: TIBStringField;
    cep_logLOG_NO: TIBStringField;
    cep_logLOG_CEP: TIBStringField;
    cep_logBAI_NO: TIBStringField;
    cep_logLOC_NO: TIBStringField;
    cep_logLOG_UF: TIBStringField;
    gridlogradourosLOG_TIT: TdxDBGridMaskColumn;
    gridlogradourosLOG_NO: TdxDBGridMaskColumn;
    gridlogradourosLOG_CEP: TdxDBGridMaskColumn;
    gridlogradourosLOG_UF: TdxDBGridMaskColumn;
    cep_logID: TIntegerField;
    Label3: TLabel;
    cbuf: TComboBox;
    gridlogradourosBAI_NO: TdxDBGridMaskColumn;
    gridlogradourosLOC_NO: TdxDBGridMaskColumn;
    Label10: TLabel;
    caTipo: TDBText;
    caLogradouro: TDBText;
    Label12: TLabel;
    caCep: TDBText;
    Label13: TLabel;
    caBairro: TDBText;
    Label14: TLabel;
    Label15: TLabel;
    caUf: TDBText;
    caCidade: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridLogradourosDblClick(Sender: TObject);
    procedure edLogradouroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridLogradourosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edcepValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure BOKClick(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure edlogradouroValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cep_logAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmLocaliza_Cep: TfrmLocaliza_Cep;

implementation

{$R *.dfm}

procedure TfrmLocaliza_Cep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmLocaliza_Cep.gridLogradourosDblClick(Sender: TObject);
begin
  editado := true;
  Close;
end;

procedure TfrmLocaliza_Cep.edLogradouroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 40 then gridLogradouros.SetFocus;
end;

procedure TfrmLocaliza_Cep.gridLogradourosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
  begin
    editado := true;
    Close;
  end;
end;

procedure TfrmLocaliza_Cep.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_return,40: if not (activeControl is TdxDBGrid) then
                       selectNext (activecontrol, true, true);
       38          : if not (activeControl is TdxDBGrid) then
                       selectNext (activecontrol, false, true);
       27          : begin
                       editado := false;
                       close;
                     end;
  end;                                     
end;

procedure TfrmLocaliza_Cep.edcepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  with cep_log do
  begin
    SQL.Clear;
    SQL.Add('SELECT CEP_LOG.ID,LOG_TIT,LOG_NO,LOG_CEP,BAI_NO,LOC_NO,LOG_UF FROM CEP_LOG,CEP_BAI,CEP_LOC');
    SQL.Add('WHERE LOG_CEP = '''+edcep.Text+'''');
    SQL.Add('AND   LOG_BAI = BAI_NU');
    SQL.Add('AND   LOG_CID = CEP_LOC.LOC_NU');
    SQL.Add('ORDER BY LOG_CEP');
    Open;
  end;
  gridlogradouros.SetFocus;
end;

procedure TfrmLocaliza_Cep.FormActivate(Sender: TObject);
begin
  edlogradouro.SetFocus;
end;

procedure TfrmLocaliza_Cep.BOKClick(Sender: TObject);
begin
  editado := true;
  close;
end;

procedure TfrmLocaliza_Cep.BSairClick(Sender: TObject);
begin
  editado := false;
  close;
end;

procedure TfrmLocaliza_Cep.edlogradouroValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if cbUF.Text <> '' then
  with cep_log do
  begin
    sbform.Panels[0].Text := 'Consultando';
    sbform.Update;

    SQL.Clear;
    SQL.Add('SELECT CEP_LOG.ID,LOG_TIT,LOG_NO,LOG_CEP,BAI_NO,LOC_NO,LOG_UF FROM CEP_LOG,CEP_BAI,CEP_LOC');
    SQL.Add('WHERE LOG_NO  LIKE '''+edlogradouro.Text+'%''');
    SQL.Add('AND   LOG_UF  = '''+cbUF.Text+'''');
    SQL.Add('AND   LOG_BAI = BAI_NU');
    SQL.Add('AND   LOG_CID = CEP_LOC.LOC_NU');
    SQL.Add('ORDER BY LOG_NO');
    Open;
    gridlogradouros.SetFocus;
  end;
end;

procedure TfrmLocaliza_Cep.cbufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    if cbuf.Text = '' then
    begin
      edlogradouro.SetFocus;
      abort;
    end;

    if edlogradouro.Text = '' then
    begin
      cbuf.Text := '';
      edlogradouro.SetFocus;
      raise exception.Create('Logradouro não definido !');
    end;

    sbform.Panels[0].Text := 'Consultando';
    sbform.Update;

    with cep_log do
    begin
      SQL.Clear;
      SQL.Add('SELECT CEP_LOG.ID,LOG_TIT,LOG_NO,LOG_CEP,BAI_NO,LOC_NO,LOG_UF FROM CEP_LOG,CEP_BAI,CEP_LOC');
      SQL.Add('WHERE LOG_NO  LIKE '''+edlogradouro.Text+'%''');
      SQL.Add('AND   LOG_UF  = '''+cbUF.Text+'''');
      SQL.Add('AND   LOG_BAI = BAI_NU');
      SQL.Add('AND   LOG_CID = CEP_LOC.LOC_NU');
      SQL.Add('ORDER BY LOG_NO');
      Open;
    end;
    gridlogradouros.SetFocus;
  end;
end;

procedure TfrmLocaliza_Cep.cep_logAfterOpen(DataSet: TDataSet);
begin
  sbform.Panels[0].Text := 'Pronto';
  sbform.Update;
end;

end.


