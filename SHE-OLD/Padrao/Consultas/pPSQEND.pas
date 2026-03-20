unit pPSQEND;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefault, dxExEdtr, cxGraphics, IBQuery, dxBar, ImgList,
  ActnList, dxDockControl, dxBarExtItems, IBEvents, DB, IBCustomDataSet,
  IBStoredProc, IBSQL, IBDatabase, cxControls, dxStatusBar, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDockPanel, ExtCtrls, dxDBTLCl, dxGrClms, math, StrUtils,
  dxsbar;

type
  TFrmPSQEND = class(TFrmDefault)
    DBGConsultaC_ID: TdxDBGridColumn;
    ConsultaID: TLargeintField;
    ConsultaTIPO: TIBStringField;
    ConsultaLOGRADOURO: TIBStringField;
    ConsultaLOGRADOURO_ABREV: TIBStringField;
    ConsultaCEP: TIBStringField;
    ConsultaCOMPLEMENTO: TIBStringField;
    ConsultaBAIRRO: TIBStringField;
    ConsultaBAIRRO_ABREV: TIBStringField;
    ConsultaCIDADE: TIBStringField;
    ConsultaCIDADE_ABREV: TIBStringField;
    ConsultaCMUN: TIBStringField;
    ConsultaUF: TIBStringField;
    ConsultaC_ID: TIntegerField;
    DBGConsultaTIPO: TdxDBGridMaskColumn;
    DBGConsultaLOGRADOURO: TdxDBGridMaskColumn;
    DBGConsultaCEP: TdxDBGridMaskColumn;
    DBGConsultaBAIRRO: TdxDBGridMaskColumn;
    DBGConsultaCIDADE: TdxDBGridMaskColumn;
    DBGConsultaUF: TdxDBGridMaskColumn;
    BLBPSQ_CEP: TdxBarLargeButton;
    BLBPSQ_LOG: TdxBarLargeButton;
    DBGConsultaCOMPLEMENTO: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure ConsultaCalcFields(DataSet: TDataSet);
    procedure DBGConsultaDblClick(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DTSConsultaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    RECEndereco: TRECEnderecos;
  end;

var
  FrmPSQEND: TFrmPSQEND;

implementation

{$R *.dfm}

procedure TFrmPSQEND.FormCreate(Sender: TObject);
begin
  oIRECEnderecos(RECEndereco);

  REC_SHE_DEF.GAdmin := True;
  REC_SHE_DEF.Id   := -3; { Grid Focus }
  inherited;
end;

procedure TFrmPSQEND.FormActivate(Sender: TObject);
begin
  inherited;
  DBGConsulta.FocusedColumn := DBGConsultaLOGRADOURO.Index;
end;

procedure TFrmPSQEND.FormDestroy(Sender: TObject);
begin
  inherited;
  oFRECEnderecos(RECEndereco);
end;

procedure TFrmPSQEND.ACTPesquisaExecute(Sender: TObject);
begin
  BBPSQ_CAD.Hint := IFThen(BBPSQ_CAD.Caption = 'Pesquisa Rápida','Cep, Logradouro, etc',EmptyStr);
  BEPSQ_CAD.Hint := BBPSQ_CAD.Hint;
  Application.ProcessMessages;

  { Verifica integridade da pesquisa
    Evita campos alphanuméricos em campos apenas numéricos
  }
  if (Pos(BBPSQ_CAD.Caption,'Cep') > 0) and (not oBSONumero(BEPSQ_CAD.Text)) then
      Abort;

  inherited;

  { Load Default }
  if ACTPesquisa.Tag = 1 then
     Consulta.Open else
  if BEPSQ_CAD.Text <> EmptyStr then
     try
       with Consulta do
       begin
         Close;
         SQL.Clear;

         SQL.Add('SELECT * FROM SP_PSQ_TAB_CEP');
         SQL.Add('(');
         SQL.Add('''' + BEPSQ_CAD.Text    + ''',');
         SQL.Add('''' + BBPSQ_CAD.Caption + ''',');

         if Pos('Log',BBPSQ_CAD.Caption) > 0 then
         SQL.Add('''CONTAINING''') else
         begin
           SQL.Add(''''',');
           SQL.Add('''%''');
         end;

         SQL.Add(')');
       end;

       Consulta.Open;
       if (Consulta.Eof) and (BEPSQ_CAD.Text <> EmptyStr) then
           oAviso(Self.Handle,BBPSQ_CAD.Caption + ' não Encontrado !');
  finally
    DPConsulta.Caption := 'Cadastro(s) Encontrado(s)';

    BEPSQ_CAD.Text    := EmptyStr;
    BEPSQ_CAD.CurText := EmptyStr;

    BDPSQ_PER_INI.Text    := EmptyStr;
    BDPSQ_PER_INI.CurText := EmptyStr;

    BDPSQ_PER_FIM.Text    := EmptyStr;
    BDPSQ_PER_FIM.CurText := EmptyStr;

    Application.ProcessMessages;
  end;
end;

procedure TFrmPSQEND.ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  ConsultaC_ID.Value := Consulta.RecNo;
end;

procedure TFrmPSQEND.DTSConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  DBGConsulta.ApplyBestFit(DBGConsultaCOMPLEMENTO);
end;

procedure TFrmPSQEND.DBGConsultaDblClick(Sender: TObject);
begin
  inherited;
  REC_SHE_DEF.Selected := (ConsultaCEP.AsInteger > 0);
  Close;
end;

procedure TFrmPSQEND.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_escape then
     Close else
  if key = vk_return then
     DBGConsultaDblClick(Self);
end;

end.
