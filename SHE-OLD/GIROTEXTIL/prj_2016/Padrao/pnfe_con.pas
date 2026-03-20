unit pnfe_con;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, StdCtrls,
  dxCntner, dxEditor, dxEdLib, dxDBELib, rxSpeedbar;

type
  Tfrmnfe_con = class(Tfrmpadr3)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edcdnf: TdxEdit;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    dxDBEdit1: TdxDBEdit;
    consultaPAR_FANT: TIBStringField;
    consultaNFE_DEMI: TDateField;
    consultaNFE_CFAV: TIntegerField;
    consultaNFE_DFAV: TIBStringField;
    consultaNFE_CVEN: TIntegerField;
    consultaNFE_DVEN: TIBStringField;
    consultaNFE_CREP: TIntegerField;
    consultaNFE_DREP: TIBStringField;
    consultaID: TIntegerField;
    consultaTRA_FANT: TIBStringField;
    consultaNFE_ESP: TIBStringField;
    consultaNFE_QVOL: TSmallintField;
    consultaNFE_PSBR: TIBBCDField;
    consultaNFE_PSLQ: TIBBCDField;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit12: TdxDBEdit;
    dxDBEdit13: TdxDBEdit;
    dxDBEdit14: TdxDBEdit;
    dxDBEdit15: TdxDBEdit;
    Label12: TLabel;
    consultaNAT_OPER: TIBStringField;
    consultaNAT_TIPO: TIBStringField;
    Label7: TLabel;
    dxDBEdit11: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    Label13: TLabel;
    consultaNFE_STA: TIBStringField;
    edsta: TdxEdit;
    Label14: TLabel;
    consultaNFE_CHAV: TIBStringField;
    dxDBEdit16: TdxDBEdit;
    edchav: TdxEdit;
    procedure Button1Click(Sender: TObject);
    procedure edcdnfValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure consultaAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnfe_con: Tfrmnfe_con;

implementation

uses p_funcoes;

{$R *.dfm}

procedure Tfrmnfe_con.Button1Click(Sender: TObject);
var i: word;
    nfe_cab,nfe_tra: string;
begin
  edcdnf.SetFocus;
  
  nfe_cab := 'NFE_CAB';
  nfe_tra := 'NFE_TRA';

  for i := 1 to 9 do
  begin
    if i > 1 then
    begin
      nfe_cab := 'NFE_CAB_'+strzero(i,3);
      nfe_tra := 'NFE_TRA_'+strzero(i,3);
    end;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PAR_FANT,NFE_DEMI,NFE_CFAV,NFE_DFAV,NFE_CVEN,NFE_DVEN,NFE_CREP,NFE_DREP,CAD_TRA.ID,CAD_TRA.TRA_FANT,NFE_ESP,NFE_QVOL,NFE_PSBR,NFE_PSLQ,NFE_STA,NAT_OPER,NAT_TIPO,NFE_CHAV');
      SQL.Add('FROM   PAR_SIS,CAD_TRA,TAB_NAT,'+nfe_cab+' "NFE_CAB" ,'+nfe_tra+' "NFE_TRA"');
      SQL.Add('WHERE  PAR_SIS.ID = '''+inttostr(i)+'''');
      SQL.Add('AND    NFE_TRA.NFE_CCAB = NFE_CAB.ID');
      SQL.Add('AND    CAD_TRA.ID       = NFE_TRA.NFE_CTRA');
      SQL.Add('AND    NFE_CNAT         = TAB_NAT.NAT_CNAT');
      SQL.Add('AND    NFE_CDNF         = '''+edcdnf.Text+'''');
      Open;

      if not fields[1].IsNull then
      break;
    end;  
  end;

  if consulta.Fields[1].IsNull then
  raise exception.Create('Número da nota fiscal não encontrado !');
end;

procedure Tfrmnfe_con.edcdnfValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcdnf.Text = '' then
  edcdnf.Text := '0';
end;

procedure Tfrmnfe_con.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_ESCAPE then
  close;
end;

procedure Tfrmnfe_con.consultaAfterOpen(DataSet: TDataSet);
begin
  edchav.Text := consultaNFE_CHAV.AsString;
  edsta.Text  := 'FATURADA';
  if consultaNFE_STA.AsString = '1' then
  edsta.Text  := 'CANCELADA';
end;

end.
