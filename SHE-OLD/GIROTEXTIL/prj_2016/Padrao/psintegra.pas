unit psintegra;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, math, StrUtils,
  ACBrBase, ACBrSocket, ACBrConsultaCNPJ, Mask, dxCntner, dxEditor, dxEdLib,
  ACBrDFe, ACBrNFe, StrInt, StrIntImp, RXCtrls, dximctrl, dxExEdtr,
  dxTL, dxDBCtrl, dxDBGrid, DBCtrls, Grids, DBGrids, dxDBELib;

{$DEFINE SUPPORT_PNG}  // Remova o Ponto, se seu Delphi suporta PNG

const
  dllNFe = 'NFe.dll';

type
  Tfrmsintegra = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    ButBuscar: TBitBtn;
    Label14: TLabel;
    Label13: TLabel;
    Panel3: TPanel;
    ICaptcha: TImage;
    LabAtualizarCaptcha: TLabel;
    ckRemoverEspacosDuplos: TCheckBox;
    ListCNAE2: TListBox;
    Label15: TLabel;
    Label16: TLabel;
    EDCaptcha: TdxEdit;
    EditCNPJ: TdxMaskEdit;
    EditTipo: TdxEdit;
    EditRazaoSocial: TdxEdit;
    EditAbertura: TdxEdit;
    EditFantasia: TdxEdit;
    EditEndereco: TdxEdit;
    EditNumero: TdxEdit;
    EditComplemento: TdxEdit;
    EditBairro: TdxEdit;
    EditCidade: TdxEdit;
    EditUF: TdxEdit;
    EditCEP: TdxEdit;
    EditSituacao: TdxEdit;
    EditCNAE1: TdxEdit;
    EditFone: TdxEdit;
    Label18: TLabel;
    Label17: TLabel;
    EditEmail: TdxEdit;
    ACBrConsultaCNPJ1: TACBrConsultaCNPJ;
    EditDDD: TdxEdit;
    EditFone2: TdxEdit;
    EditDDD2: TdxEdit;
    Label19: TLabel;
    EDIE: TdxEdit;
    Label20: TLabel;
    procedure LabAtualizarCaptchaClick(Sender: TObject);
    procedure ButBuscarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EDCaptchaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function NFeCadastro(UF,CNPJ: ShortString): IString; STDCall; External dllNfe; far; //v6.4.1

var
  frmsintegra: Tfrmsintegra;

implementation

uses
  JPEG
{$IFDEF SUPPORT_PNG}
  , pngimage
{$ENDIF}
  , bDados;

{$R *.dfm}

procedure Tfrmsintegra.ButBuscarClick(Sender: TObject);
          procedure _Fone;
          var
            i: Word;
            Fone: String;
          begin
            Fone := Trim(LeftStr(ACBrConsultaCNPJ1.Telefone,15));
            EditDDD.Text  := IFThen(Pos('(',Fone) > 0,Copy(Fone,Pos('(',Fone)+1,2),'');
            EditFone.Text := '';
            for i := Pos(')',Fone) + 1 to 15 do
            if oBSoNumero(Fone[i]) then
            EditFone.Text := EditFone.Text + Fone[i];

            EditDDD2.Text  := '';
            EditFone2.Text := '';
            if Length(ACBrConsultaCNPJ1.Telefone) > 15 then
            begin
              Fone := Trim(RightStr(ACBrConsultaCNPJ1.Telefone,15));
              EditDDD2.Text  := IFThen(Pos('(',Fone) > 0,Copy(Fone,Pos('(',Fone)+1,2),'');
              EditFone2.Text := '';
              for i := Pos(')',Fone) + 1 to 15 do
              if oBSoNumero(Fone[i]) then
              EditFone2.Text := EditFone2.Text + Fone[i];
            end;

            if (EditDDD.Text = EditDDD2.Text) and (EditFone.Text = EditFone2.Text) then
            begin
              EditDDD2.Text  := '';
              EditFone2.Text := '';
            end;
          end;
var
  I: Integer;
begin
  if EDCaptcha.Text <> '' then
  begin
    if ACBrConsultaCNPJ1.Consulta(
      EditCNPJ.Text,
      EDCaptcha.Text,
      ckRemoverEspacosDuplos.Checked
    ) then
    begin
      EditTipo.Text        := ACBrConsultaCNPJ1.EmpresaTipo;
      EditRazaoSocial.Text := copy(ACBrConsultaCNPJ1.RazaoSocial,1,60);
      EditFantasia.Text    := copy(ACBrConsultaCNPJ1.Fantasia,1,40);
      EditEndereco.Text    := copy(ACBrConsultaCNPJ1.Endereco,1,60);
      EditNumero.Text      := copy(ACBrConsultaCNPJ1.Numero,1,10);
      EditComplemento.Text := copy(ACBrConsultaCNPJ1.Complemento,1,40);
      EditBairro.Text      := copy(ACBrConsultaCNPJ1.Bairro,1,40);
      EditComplemento.Text := ACBrConsultaCNPJ1.Complemento;
      EditCidade.Text      := copy(ACBrConsultaCNPJ1.Cidade,1,40);
      EditUF.Text          := ACBrConsultaCNPJ1.UF;
      EditCEP.Text         := ACBrConsultaCNPJ1.CEP;
      EditSituacao.Text    := ACBrConsultaCNPJ1.Situacao;
      EditCNAE1.Text       := copy(ACBrConsultaCNPJ1.CNAE1,1,120);
      EditAbertura.Text    := '';
      if ACBrConsultaCNPJ1.Abertura > 0 then
      EditAbertura.Text    := DateToStr( ACBrConsultaCNPJ1.Abertura );

      ListCNAE2.Clear;
      ListCNAE2.Items.Add(ACBrConsultaCNPJ1.NaturezaJuridica);

      for I := 0 to ACBrConsultaCNPJ1.CNAE2.Count - 1 do
      ListCNAE2.Items.Add(ACBrConsultaCNPJ1.CNAE2[I]);

      Application.ProcessMessages;
      SleepEx(500,False);
      try
        EDIE.Text := NFeCadastro(EditUF.Text, EditCNPJ.text).Str;
        EDIE.Text := oRETNumero(Copy(EDIE.Text,Pos('IE',EDIE.Text),Pos('/IE',EDIE.Text)-Pos('IE',EDIE.Text)));
      except
        ;
      end;
    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    EDCaptcha.SetFocus;
  end;
end;

procedure Tfrmsintegra.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  LabAtualizarCaptchaClick(LabAtualizarCaptcha);
end;

procedure Tfrmsintegra.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;

  Application.ProcessMessages;
  SleepEx(1000,False);
end;

procedure Tfrmsintegra.LabAtualizarCaptchaClick(Sender: TObject);
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
    ACBrConsultaCNPJ1.Captcha(Stream);

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
    if not oEmpty(EditCNPJ.Text) then
    EDCaptcha.SetFocus else
    EditCNPJ.SetFocus;
  finally
    Stream.Free;
  end;
end;

procedure Tfrmsintegra.EDCaptchaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  ButBuscarClick(ButBuscar);
end;

procedure Tfrmsintegra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmsintegra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_RETURN: if (not (activeControl is TdxDBGrid) and
                      not (activeControl is TDBMemo)   and
                      not (activeControl is TdxMemo)   and
                      not (activeControl is TdxDBMemo) and
                      not (activeControl is TdbGrid)   and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       40       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       38       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, false, true);
  end;
end;

procedure Tfrmsintegra.FormDestroy(Sender: TObject);
begin
  frmsintegra := Nil;
end;

end.
