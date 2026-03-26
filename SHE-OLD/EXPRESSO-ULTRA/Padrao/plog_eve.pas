unit plog_eve;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, ImgList, IBStoredProc, IBDatabase,
  DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid, Jpeg,
  ExtCtrls,  ComCtrls, dxDBTLCl, dxGrClms, DBCtrls, StdCtrls,
  IBEvents, dxExEdtr, rxSpeedbar, IBSQL;

type
  Tfrmlog_eve = class(Tfrmpadr2)
    cadastroEVE_DLOG: TIBStringField;
    cadastroEVE_AUTO: TIBStringField;
    cadastroEVE_IP: TIBStringField;
    cadastroEVE_FUNC: TIBStringField;
    cadastroEVE_ROTI: TIBStringField;
    cadastroEVE_EVEN: TIBStringField;
    cadastroEVE_CODI: TIBStringField;
    cadastroEVE_DESC: TIBStringField;
    dbgConsultaEVE_DLOG: TdxDBGridMaskColumn;
    dbgConsultaEVE_IP: TdxDBGridMaskColumn;
    dbgConsultaEVE_ROTI: TdxDBGridMaskColumn;
    dbgConsultaEVE_EVEN: TdxDBGridMaskColumn;
    dbgConsultaEVE_CODI: TdxDBGridMaskColumn;
    dbgConsultaEVE_DESC: TdxDBGridMaskColumn;
    cadastroEVE_CDEP: TIntegerField;
    cadastroEVE_CLOG: TIntegerField;
    cadastroID: TIntegerField;
    cadastroEVE_DEVE: TDateTimeField;
    cadastroPAR_FANT: TIBStringField;
    cadastroFUN_FOTO: TBlobField;
    dbgConsultaEVE_DEVE: TdxDBGridDateColumn;
    dbgConsultaPAR_FANT: TdxDBGridMaskColumn;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    laauto: TLabel;
    dbauto: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    Label8: TLabel;
    DBText8: TDBText;
    Label9: TLabel;
    DBText9: TDBText;
    Label10: TLabel;
    DBText10: TDBText;
    Label11: TLabel;
    DBText11: TDBText;
    GroupBox1: TGroupBox;
    writeFoto: TImage;
    Bevel1: TBevel;
    dbtaut: TDBText;
    lataut: TLabel;
    cadastroEVE_CEVE: TIBStringField;
    cadastroEVE_TAUT: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure dtscadastroDataChange(Sender: TObject; Field: TField);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);  
  public
    { Public declarations }
  end;

var
  frmlog_eve: Tfrmlog_eve;

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmlog_eve.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
     BlobStream := tab.CreateBlobStream(valor,bmRead);

  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    writefoto.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmlog_eve.FormCreate(Sender: TObject);
begin
  cEvent := 'LOG_EVE';
  inherited;
end;

procedure Tfrmlog_eve.dtscadastroDataChange(Sender: TObject;
  Field: TField);
begin
  carregaFoto(cadastroFUN_FOTO.BlobSize,cadastroFUN_FOTO,cadastro,frmprincipal.parametros);

  laauto.Visible := (cadastroEVE_AUTO.AsString <> '');
  dbauto.Visible := (cadastroEVE_AUTO.AsString <> '');
  lataut.Visible := (cadastroEVE_TAUT.AsString <> '');
  dbtaut.Visible := (cadastroEVE_TAUT.AsString <> '');
end;

procedure Tfrmlog_eve.FormDestroy(Sender: TObject);
begin
  if frmlog_eve <> nil then
  begin
    frmlog_eve.Release;
    frmlog_eve := nil;
  end;
end;

end.
