unit pIMG_PAD_INF;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,DB,IBCustomDataSet,IBQuery,jpeg, StdCtrls, StrUtils, math;

type
  TFrmIMG_PAD_INF = class(TForm)
    PNLTOP: TPanel;
    PNLProduto: TPanel;
    shSKU: TShape;
    shD_SKU: TShape;
    shDGCP: TShape;
    shD_DGCP: TShape;
    shDECP: TShape;
    shD_DECP: TShape;
    LAD_SKU: TLabel;
    LASKU: TLabel;
    LADGCP: TLabel;
    LAD_DGCP: TLabel;
    LADECP: TLabel;
    LAD_DECP: TLabel;
    PNLBOT: TPanel;
    PNLIMG_PAD: TPanel;
    IMG_PAD: TImage;
    shCMP_PAD: TShape;
    shD_CMP_PAD: TShape;
    LACMP_PAD: TLabel;
    LAD_CMP_PAD: TLabel;
    shGRP_NO: TShape;
    shD_GRP_NO: TShape;
    LAGRP_NO: TLabel;
    LAD_GRP_NO: TLabel;
    shCAT_NO: TShape;
    shD_CAT_NO: TShape;
    LACAT_NO: TLabel;
    LAD_CAT_NO: TLabel;
    shFPAIS: TShape;
    shD_FPAIS: TShape;
    LAFPAIS: TLabel;
    LAD_FPAIS: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    RECDefault: TRECDefault;

    SKU,
    DGCP,
    DECP,
    CMP_PAD,
    GRP_NO,
    CAT_NO,
    XPAIS,
    FPAIS: String;

    IMG_PAD_RES: String;
    IMG_PAD_PIC: TPicture;
  public
    { Public declarations }
    Constructor Create(AOwner: TComponent; const AIMG_PAD_PIC: TPicture; AIMG_PAD_RES: String; ASKU,ADGCP,ADECP,ACMP_PAD,AGRP_NO,ACAT_NO,AXPAIS,AFPAIS: String); reintroduce; overload;
  end;

var
  FrmIMG_PAD_INF: TFrmIMG_PAD_INF;

implementation

uses uPrincipal;

{$R *.dfm}

Constructor TFrmIMG_PAD_INF.Create(AOwner: TComponent; const AIMG_PAD_PIC: TPicture; AIMG_PAD_RES: String; ASKU,ADGCP,ADECP,ACMP_PAD,AGRP_NO,ACAT_NO,AXPAIS,AFPAIS: String);
begin
  { Imagem }
  IMG_PAD_PIC := AIMG_PAD_PIC;
  IMG_PAD_RES := AIMG_PAD_RES;

  { Produtos }
  SKU     := ASKU;
  DGCP    := ADGCP;
  DECP    := ADECP;
  CMP_PAD := ACMP_PAD;

  GRP_NO := AGRP_NO;
  CAT_NO := ACAT_NO;

  XPAIS := AXPAIS;
  FPAIS := AFPAIS;

  inherited Create(AOwner);
end;

procedure TFrmIMG_PAD_INF.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
  oIRECDefault(RECDefault);

  { Paginação }
  RECDefault.FrmPosition := poDefault; { Abertura Controlada  }
  RECDefault.WorkArea    := False;     { Toda Tela do Windows }
  RECDefault.MainArea    := False;     { Toda Tela MainForm + Exclusão Botões }

  { Imagem }
  Self.Caption := Trim('Imagem Aumentada... ' + IFThen(IMG_PAD_RES = EmptyStr,EmptyStr,'Resolução Original = ' + IMG_PAD_RES)); 
  IMG_PAD.Picture.Assign(IMG_PAD_PIC);

  { SKU }
  if SKU = EmptyStr then
  begin
    SKU := 'NÃO INFORMADO';
    LAD_SKU.Font.Color := clRed;
    LAD_SKU.Font.Style := [fsBold];
  end;
  LAD_SKU.Caption  := SKU;

  { Grade }
  if DGCP = EmptyStr then
  begin
    DGCP := 'NÃO INFORMADO';
    LAD_DGCP.Font.Color := clRed;
    LAD_DGCP.Font.Style := [fsBold];
  end;
  LAD_DGCP.Caption := DGCP;

  { Produto }
  if DECP = EmptyStr then
  begin
    DECP := 'NÃO INFORMADO';
    LAD_DECP.Font.Color := clRed;
    LAD_DECP.Font.Style := [fsBold];
  end;
  LAD_DECP.Caption := DECP;

  { Composição }
  if CMP_PAD = EmptyStr then
  begin
    CMP_PAD := 'NÃO INFORMADO';
    LAD_CMP_PAD.Font.Color := clRed;
    LAD_CMP_PAD.Font.Style := [fsBold];
  end;
  LAD_CMP_PAD.Caption := CMP_PAD;

  { Grupo }
  if GRP_NO = EmptyStr then
  begin
    GRP_NO := 'NÃO INFORMADO';
    LAD_GRP_NO.Font.Color := clRed;
    LAD_GRP_NO.Font.Style := [fsBold];
  end;
  LAD_GRP_NO.Caption := GRP_NO;

  { Categoria }
  if CAT_NO = EmptyStr then
  begin
    CAT_NO := 'NÃO INFORMADO';
    LAD_CAT_NO.Font.Color := clRed;
    LAD_CAT_NO.Font.Style := [fsBold];
  end;
  LAD_CAT_NO.Caption := CAT_NO;

  { Fabricação }
  if FPAIS = EmptyStr then
  begin
    XPAIS :=  EmptyStr;
    FPAIS := 'NÃO INFORMADO';

    LAD_FPAIS.Font.Color := clRed;
    LAD_FPAIS.Font.Style := [fsBold];
  end;
  LAD_FPAIS.Caption := FPAIS + IFThen(Pos('IND',FPAIS) = 0,' - ' + XPAIS,'');
end;

procedure TFrmIMG_PAD_INF.FormActivate(Sender: TObject);
begin
  Screen.Cursor := crDefault;
end;

procedure TFrmIMG_PAD_INF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFrmIMG_PAD_INF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 27 then
  close;
end;

procedure TFrmIMG_PAD_INF.FormDestroy(Sender: TObject);
begin
  try
    Screen.Cursor := crAppStart;
    OnDestroy     := Nil;

    { record e afins }
    try
      oFRECDefault(RECDefault);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                 'Error Code: '+E.Message+'.'        +#13+
                                  Caption+'.');
      end;
    end;
  finally
    Screen.Cursor  := crDefault;
    FrmIMG_PAD_INF := Nil;
  end;  
end;

procedure TFrmIMG_PAD_INF.FormPaint(Sender: TObject);
var
  S: TRect;
  H,
  T,
  B,
  L,
  R,
  FHeight,
  FWidth: Word;
begin
  if Showing then
  begin
    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,S);
    T := S.Top;
    B := S.Bottom;
    L := S.Left;
    R := S.Right;
    H := B;

    if RECDefault.FrmPosition = poDesigned then
    begin
      FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
      FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

      if (RECDefault.Top > 0) and (RECDefault.Left > 0) then
      begin
        Top    := RECDefault.Top;
        Left   := RECDefault.Left;
      end else
      begin
        if FHeight > 0 then Height := FHeight;
        if FWidth  > 0 then Width  := FWidth;

        if FormStyle = fsNormal then
        begin
          Top  := (T  + (H - Height)) div 2;
          Left := ((R + L) - Width )  div 2;
        end else
        begin
          Top  := ((B - T ) - Height) div 2;
          Left := ((R - L)  - Width ) div 2;
        end;
      end;
    end else
    if (RECDefault.WorkArea) and (FormStyle = fsNormal) then
    begin
      Top    := Screen.WorkAreaTop;
      Left   := Screen.WorkAreaLeft;
      Width  := Screen.WorkAreaWidth;
      Height := Screen.WorkAreaHeight;
    end else
    if (RECDefault.MainArea) and (FormStyle = fsNormal) then
    begin
      Top    := 1;
      Left   := 1;
      Width  := R - L - 5;
      Height := H - T - 5;
    end else
    if RECDefault.FrmPosition = poDefault then
    begin
      Top    := IFThen(FormStyle = fsNormal,T,0) + 2;
      Left   := IFThen(FormStyle = fsNormal,L,0) + 2;
      Width  := IFThen(RECDefault.FrmPosition = poDefault,R - L - 5,0);
      Height := IFThen(RECDefault.FrmPosition = poDefault,H - T - 5,0);
    end;
  end;
end;

procedure TFrmIMG_PAD_INF.FormResize(Sender: TObject);
begin
  if Self <> Nil then
  begin
    { Produtos }
    PNLProduto.Width := PNLTOP.Width - 14;
    shD_GRP_NO.Width := 250 + (PNLProduto.Width - 1012);
    shD_CAT_NO.Width := shD_GRP_NO.Width;
    shD_FPAIS.Width  := shD_GRP_NO.Width;

    { Imagem }
    PNLIMG_PAD.Height := PNLBOT.Height - 10;
    PNLIMG_PAD.Width  := PNLBOT.Width  - 14;

    IMG_PAD.Width  := PNLIMG_PAD.Width  - 31;
    IMG_PAD.Height := PNLIMG_PAD.Height - 10;

    Paint;
  end;
end;

end.
