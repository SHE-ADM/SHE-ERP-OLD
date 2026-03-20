unit pConsultaCNPJ;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, math, StrUtils,
  ACBrBase, ACBrSocket, ACBrConsultaCNPJ, Mask, dxCntner, dxEditor, dxEdLib,
  ACBrDFe, ACBrNFe, StrInt, StrIntImp, RXCtrls, dximctrl, dxExEdtr,
  dxTL, dxDBCtrl, dxDBGrid, DBCtrls, Grids, DBGrids, dxDBELib;

{$DEFINE SUPPORT_PNG}  // Remova o Ponto, se seu Delphi suporta PNG

type
  TFrmConsultaCNPJ = class(TForm)
    ACBrConsultaCNPJ: TACBrConsultaCNPJ;
    GBConsulta: TGroupBox;
    PNLCaptcha: TPanel;
    LACnpj: TLabel;
    EDCNPJ: TdxMaskEdit;
    EDCaptcha: TdxMaskEdit;
    LACaptchaEdicao: TLabel;
    RSBConsulta: TRxSpeedButton;
    BVCaptcha: TBevel;
    LACaptchaRefresh: TLabel;
    ICaptcha: TImage;
    GBResultado: TGroupBox;
    LARazaoSocial: TLabel;
    EDRazaoSocial: TdxMaskEdit;
    LAFantasia: TLabel;
    EDFantasia: TdxMaskEdit;
    LAStatus: TLabel;
    EDStatus: TdxMaskEdit;
    EDIE: TdxMaskEdit;
    LAIE: TLabel;
    EDEmail: TdxMaskEdit;
    LAEmail: TLabel;
    LAFone1: TLabel;
    EDENDTipo: TdxMaskEdit;
    LAENDTipo: TLabel;
    EDENDLogradouro: TdxMaskEdit;
    LAENDCep: TLabel;
    EDENDNumero: TdxMaskEdit;
    LAENDNumero: TLabel;
    EDENDBairro: TdxMaskEdit;
    LAENDBairro: TLabel;
    EDENDCidade: TdxMaskEdit;
    LAENDCidade: TLabel;
    EDENDComplemento: TdxMaskEdit;
    LAENDComplemento: TLabel;
    EDENDUF: TdxMaskEdit;
    LAENDUF: TLabel;
    LAENDIDIBGE: TLabel;
    EDENDIDIBGE: TdxMaskEdit;
    PNLRodape: TPanel;
    GBCNAE: TGroupBox;
    LACNAES: TLabel;
    LACNAEP: TLabel;
    ILCNAES: TdxImageListBox;
    EDCNAEP: TdxMaskEdit;
    GroupBox1: TGroupBox;
    LATipo: TLabel;
    EDTipo: TdxMaskEdit;
    LAPorte: TLabel;
    EDPorte: TdxMaskEdit;
    DEAbertura: TdxDateEdit;
    LADTAbertura: TLabel;
    EDDDD1: TdxMaskEdit;
    EDFone1: TdxMaskEdit;
    EDFone2: TdxMaskEdit;
    EDENDCep: TdxMaskEdit;
    EDDDD2: TdxMaskEdit;
    LAFone2: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure LACaptchaRefreshClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RSBConsultaClick(Sender: TObject);
    procedure EDCaptchaValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EDRazaoSocialKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    RECCadastros: TRECCadastros;
    RECEndereco : TRECEnderecos; 

    Constructor Create(AOwner: TComponent;const ADocumento: String); reintroduce; overload;
  end;

var
  FrmConsultaCNPJ: TFrmConsultaCNPJ;

implementation

uses
  JPEG
{$IFDEF SUPPORT_PNG}
  , pngimage
{$ENDIF}
  , bPrincipal;

{$R *.dfm}

function NFeCadastro(UF, CNPJ : shortstring) : IString; stdcall; External dllNfe; far; //v6.4.1

Constructor TFrmConsultaCNPJ.Create(AOwner: TComponent;const ADocumento: String);
begin
  Initialize(RECCadastros);
  FillChar(RECCadastros,SizeOF(RECCadastros),0);

  if Length(oREPTxt(ADocumento)) > 11 then
  RECCadastros.CNPJ := ADocumento else
  RECCadastros.CPF  := ADocumento;
  
  inherited Create(AOwner);
end;

procedure TFrmConsultaCNPJ.FormShow(Sender: TObject);
begin
  OnShow := Nil;
end;

procedure TFrmConsultaCNPJ.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  LACaptchaRefreshClick(LACaptchaRefresh);
end;

procedure TFrmConsultaCNPJ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmConsultaCNPJ.FormDestroy(Sender: TObject);
begin
  Finalize(RECCadastros);
  FillChar(RECCadastros,SizeOf(RECCadastros),0);

  FrmConsultaCNPJ := Nil;
end;

procedure TFrmConsultaCNPJ.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: Close;
       vk_return: if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo)) then
                  SelectNext (ActiveControl, True, True);
       40       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext (ActiveControl, True, True);
       38       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext(ActiveControl, False, True);
  end;
end;

procedure TFrmConsultaCNPJ.LACaptchaRefreshClick(Sender: TObject);
var
  Stream: TMemoryStream;
{$IFDEF DELPHI2009_UP}
  png: TPngImage;
{$ELSE}
  ImgArq: String;
{$ENDIF}
begin
  {$IFNDEF SUPPORT_PNG}
    ShowMessage('Atenção: Problema com nativo a imagens PNG !');
    Exit;
    // COMO PROCEDER:
    //
    // 1) Caso o site da receita esteja utilizando uma imagem do tipo JPG, você pode utilizar o código comentado abaixo.
    //    * Comente ou apague o código que trabalha com PNG, incluindo o IFDEF/ENDIF;
    //    * descomente a declaração da variável jpg
    //    * descomente o código abaixo;
    // 2) Caso o site da receita esteja utilizando uma imagem do tipo PNG, você terá que utilizar uma biblioteca de terceiros para
    //conseguir trabalhar com imagens PNG.
    //  Neste caso, recomendamos verificar o manual da biblioteca em como fazer a implementação. Algumas sugestões:
    //    * Procure no Fórum do ACBr sobre os erros que estiver recebendo. Uma das maneiras mais simples está no link abaixo:
    //      - http://www.projetoacbr.com.br/forum/topic/20087-imagem-png-delphi-7/
    //    * O exemplo acima utiliza a biblioteca GraphicEX. Mas existem outras bibliotecas, caso prefira:
    //      - http://synopse.info/forum/viewtopic.php?id=115
    //      - http://graphics32.org/wiki/
    //      - http://cc.embarcadero.com/Item/25631
    //      - Várias outras: http://torry.net/quicksearchd.php?String=png&Title=Yes
  {$ENDIF}

  Stream:= TMemoryStream.Create;
  try
    ACBrConsultaCNPJ.Captcha(Stream);

   {$IFDEF DELPHI2009_UP}
    //Use esse código quando a imagem do site for do tipo PNG
    png:= TPngImage.Create;
    try
      png.LoadFromStream(Stream);
      Image1.Picture.Assign(png);
    finally
      png.Free;
    end;
    { //Use esse código quando a imagem do site for do tipo JPG
      Jpg:= TJPEGImage.Create;
      try
        Jpg.LoadFromStream(Stream);
        Image1.Picture.Assign(Jpg);
      finally
        Jpg.Free;
      end;
    }
   {$ELSE}
    ImgArq := ExtractFilePath(ParamStr(0))+PathDelim+'captch.png';
    Stream.SaveToFile( ImgArq );
    ICaptcha.Picture.LoadFromFile( ImgArq );
   {$ENDIF}

    EDCaptcha.Clear;
    if not oEmpty(EDCNPJ.Text) then
    EDCaptcha.SetFocus else
    EDCNPJ.SetFocus;
  finally
    Stream.Free;
  end;
end;

procedure TFrmConsultaCNPJ.RSBConsultaClick(Sender: TObject);
          procedure _Fone;
          var
            i: Word;
            Fone: String;
          begin
            Fone := Trim(LeftStr(ACBrConsultaCNPJ.Telefone,15));
            if not oEmpty(Fone) then
            begin
              EDDDD1.Text  := IFThen(Pos('(',Fone) > 0,Copy(Fone,Pos('(',Fone)+1,2),'');
              EDFone1.Text := '';
              for i := Pos(')',Fone) + 1 to 15 do
              if oBSoNumero(Fone[i]) then
              EDFone1.Text := EDFone1.Text + Fone[i];

              EDDDD2.Text  := '';
              EDFone2.Text := '';
              if Length(ACBrConsultaCNPJ.Telefone) > 15 then
              begin
                Fone := Trim(RightStr(ACBrConsultaCNPJ.Telefone,15));
                EDDDD2.Text  := IFThen(Pos('(',Fone) > 0,Copy(Fone,Pos('(',Fone)+1,2),'');
                EDFone2.Text := '';
                for i := Pos(')',Fone) + 1 to 15 do
                if oBSoNumero(Fone[i]) then
                EDFone2.Text := EDFone2.Text + Fone[i];
              end;

              if (EDDDD1.Text = EDDDD2.Text) and (EDFone1.Text = EDFone2.Text) then
              begin
                EDDDD2.Text  := '';
                EDFone2.Text := '';
              end;
            end;
          end;
var
  i: Integer;
begin
  RECCadastros.Selected := False;
  if EDCaptcha.Text <> '' then
  begin
    if ACBrConsultaCNPJ.Consulta(
      EDCNPJ.Text,
      EDCaptcha.Text,
      True) then
    begin
      DEAbertura.Text    := DateToStr(ACBrConsultaCNPJ.Abertura);
      if LeftStr(DEAbertura.Text,2) = '00' then
      DEAbertura.Text    := '';

      EDTipo.Text        := ACBrConsultaCNPJ.EmpresaTipo;
      EDPorte.Text       := ACBrConsultaCNPJ.Porte;
      EDStatus.Text      := ACBrConsultaCNPJ.Situacao;
      EDRazaoSocial.Text := ACBrConsultaCNPJ.RazaoSocial;
      EDFantasia.Text    := IFThen(LeftStr(ACBrConsultaCNPJ.Fantasia,1) = '*',ACBrConsultaCNPJ.RazaoSocial,ACBrConsultaCNPJ.Fantasia);
      EDFantasia.Text    := oStrTran(EDFantasia.Text,'LTDA'  ,'');
      EDFantasia.Text    := oStrTran(EDFantasia.Text,' ME'   ,'');
      EDFantasia.Text    := oStrTran(EDFantasia.Text,' -ME'  ,'');
      EDFantasia.Text    := oStrTran(EDFantasia.Text,'-ME'   ,'');
      EDFantasia.Text    := oStrTran(EDFantasia.Text,'- ME'  ,'');
      EDFantasia.Text    := oStrTran(EDFantasia.Text,' - ME' ,'');
      EDFantasia.Text    := oStrTran(EDFantasia.Text,' EPP'  ,'');
      EDFantasia.Text    := oStrTran(EDFantasia.Text,' -EPP' ,'');
      EDFantasia.Text    := oStrTran(EDFantasia.Text,'-EPP'  ,'');
      EDFantasia.Text    := oStrTran(EDFantasia.Text,'- EPP' ,'');
      EDFantasia.Text    := oStrTran(EDFantasia.Text,' - EPP','');



      EDCNAEP.Text := ACBrConsultaCNPJ.CNAE1;
      ILCNAES.Clear;
      for i := 0 to ACBrConsultaCNPJ.CNAE2.Count - 1 do
      ILCNAES.Items.Add(ACBrConsultaCNPJ.CNAE2[I]);

      _Fone;
      EDEmail.Text := LowerCase(ACBrConsultaCNPJ.EndEletronico);

      RECEndereco.Value := oStrTran(ACBrConsultaCNPJ.CEP,'-','');
      bPesquisaEnderecos(RECEndereco);
      if RECEndereco.Selected then
      begin
        EDENDLogradouro.Tag   := RECEndereco.Id;
        EDENDTipo.Text        := RECEndereco.Tipo;
        EDENDLogradouro.Text  := RECEndereco.Logradouro;
        EDENDNumero.Text      := ACBrConsultaCNPJ.Numero;
        EDENDComplemento.Text := ACBrConsultaCNPJ.Complemento;
        EDENDCep.Text         := RECEndereco.Cep;
        EDENDBairro.Text      := RECEndereco.Bairro;
        EDENDCidade.Text      := RECEndereco.Cidade;
        EDENDIDIBGE.Text      := RECEndereco.CMUN;
        EDENDUF.Text          := RECEndereco.UF;
      end;

      if DEAbertura.Date > 0 then
      RECCadastros.DTFU     := DEAbertura.Date;
//    RECCadastros.Tipo     := EDTipo.Text;
//    RECCadastros.Porte    := EDPorte.Text;
      RECCadastros.DEST     := EDStatus.Text;
      RECCadastros.DECD     := EDFantasia.Text;
      RECCadastros.RZCD     := EDRazaoSocial.Text;
      RECCadastros.CNPJ     := EDCNPJ.Text;
      RECCadastros.DDD      := EDDDD1.Text;
      RECCadastros.TEL      := oRETNumero(EDFone1.Text);
      RECCadastros.Email    := EDEmail.Text;
      RECCadastros.LOG_NU   := EDENDLogradouro.Tag;
      RECCadastros.TLO_TX   := EDENDTipo.Text;
      RECCadastros.LOG_NO   := EDENDLogradouro.Text;
      RECCadastros.NRO      := EDENDNumero.Text;
      RECCadastros.XCPL     := EDENDComplemento.Text;
      RECCadastros.CEP      := EDENDCep.Text;
      RECCadastros.BAI_NO   := EDENDBairro.Text;
      RECCadastros.LOC_NO   := EDENDCidade.Text;
      RECCadastros.CMUN     := EDENDIDIBGE.Text;
      RECCadastros.UF       := EDENDUF.Text;
      RECCadastros.Selected := True;

      SleepEx(1000,False);
      Application.ProcessMessages;
      try
        EDIE.Text := NFeCadastro(EDENDUF.Text, EDCNPJ.text).Str;
        EDIE.Text := oRETNumero(Copy(EDIE.Text,Pos('IE',EDIE.Text),Pos('/IE',EDIE.Text)-Pos('IE',EDIE.Text)));

        RECCadastros.IE := EDIE.Text;
      except
        ;
      end;
    end;
  end else
  oException(EDCaptcha,'É necessário digitar o captcha.');
end;

procedure TFrmConsultaCNPJ.EDCaptchaValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  RSBConsulta.Click;
end;

procedure TFrmConsultaCNPJ.EDRazaoSocialKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0;
end;

end.
