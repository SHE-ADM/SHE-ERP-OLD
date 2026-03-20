unit pPesquisa;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxEditor, dxEdLib, StdCtrls, ExtCtrls, rxSpeedbar,
  ImgList, ComCtrls, dxExEdtr, DateUtils, StrUtils, cxGraphics, cxControls,
  dxStatusBar;

type
  TFrmPesquisa = class(TForm)
    PNLMenu: TPanel;
    PNLPrincipal: TPanel;
    GBPesquisaPeriodo: TGroupBox;
    PNLPesquisaData: TPanel;
    GBPesquisaData: TGroupBox;
    IEPesquisaData: TdxImageEdit;
    GBFiltroData: TGroupBox;
    EMFiltroData: TdxMemo;
    GBData1: TGroupBox;
    MCData1: TMonthCalendar;
    GBData2: TGroupBox;
    MCData2: TMonthCalendar;
    GBPesquisaCampo: TGroupBox;
    PNLPesquisa: TPanel;
    PNLPesquisaComplemento: TPanel;
    GBPesquisaComplemento: TGroupBox;
    PEPesquisaComplemento: TdxPickEdit;
    GBPesquisaComplemento2: TGroupBox;
    PEPesquisaComplemento2: TdxPickEdit;
    PNLPesquisaTexto: TPanel;
    GBPesquisaTexto: TGroupBox;
    PEPesquisaTexto: TdxPickEdit;
    GBFiltroTexto: TGroupBox;
    EMFiltroTexto: TdxMemo;
    PNLPesquisaCampo: TPanel;
    RGPesquisaCampo: TRadioGroup;
    RGPesquisaLike: TRadioGroup;
    SBRodape: TdxStatusBar;
    ILMenu: TImageList;
    SBMenu: TSpeedBar;
    SSPrincipal: TSpeedbarSection;
    SIMValida: TSpeedItem;
    SIMSaida: TSpeedItem;
    procedure MCData1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RGPesquisaCampoClick(Sender: TObject);
    procedure RGPesquisaLikeClick(Sender: TObject);
    procedure IEPesquisaDataChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure PEPesquisaComplementoValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure PEPesquisaComplemento2Validate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure SIMValidaClick(Sender: TObject);
    procedure SIMSaidaClick(Sender: TObject);
  private
    { Private declarations }
    procedure FiltroTexto;
    procedure FiltroData;
  public
    { Public declarations }
    RECPesquisa: TRECPrincipal;
    Constructor Create(AOwner: TComponent; const ARECPesquisa: TRECPrincipal); reintroduce; overload;
  end;

var
  FrmPesquisa: TFrmPesquisa;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

Constructor TFrmPesquisa.Create(AOwner: TComponent; const ARECPesquisa: TRECPrincipal);
begin
  Initialize(RECPesquisa);
  FillChar(RECPesquisa,SizeOf(RECPesquisa),0);

  RECPesquisa := ARECPesquisa;
  RECPesquisa.Selected        := False;
  RECPesquisa.PSQTextoField   := '';
  RECPesquisa.PSQWhere        := '';
  RECPesquisa.PSQLike1        := '';
  RECPesquisa.PSQLike2        := '';
  RECPesquisa.PSQTexto        := '';
  RECPesquisa.PSQComplemento  := 'TODOS';
  RECPesquisa.PSQComplemento2 := 'TODOS';
  RECPesquisa.PSQData         := '';
  RECPesquisa.PSQDT1          := 0;
  RECPesquisa.PSQDT2          := 0;

  inherited Create(AOwner);
end;

procedure TFrmPesquisa.FormCreate(Sender: TObject);
var
  i,
  WPosLike : Word;
  SPosCampo: String;
begin
  Screen.Cursor := crAppStart;

  WPosLike := 1;
  { Define Perfil de Pesquisa
    Sempre que criar um perfil novo, não esquecer de atualizar a Array aPesquisa no oPrincipal }
  for i := Low(aPesquisa) to High(aPesquisa) do
      {  aPesquisa[i,0] - Perfil de Pesquisa }
      if aPesquisa[i,0] = RECPesquisa.Perfil then
      begin
        {  aPesquisa[i,1] - Descricao Campo [RGPesquisaCampo] }
        if Copy(aPesquisa[i,1],1,3) = 'Dt.' then
        begin
          IEPesquisaData.Descriptions.Add(aPesquisa[i,1]);
          {  aPesquisa[i,2] - Select Campo. Exemplo: "PRO_CART" }
          IEPesquisaData.Values.Add(aPesquisa[i,2]);
        end else
        RGPesquisaCampo.Items.Add(aPesquisa[i,1]);

        { Default RGPesquisaCampo }
        if aPesquisa[i,3] = '1' then
        begin
          RECPesquisa.PSQTextoField := aPesquisa[i,2];
          SPosCampo := aPesquisa[i,1];
          { Default RGPesquisaLike }
          if not oEmpty(aPesquisa[i,4]) then
          WPosLike := StrToInt(aPesquisa[i,4]);
        end;
      end;

  RGPesquisaCampo.ItemIndex  := RGPesquisaCampo.Items.IndexOf(SPosCampo);
  RGPesquisaLike.ItemIndex   := WPosLike;

  MCData1.Date := RECParametros.SHE_DATA_MES_PK;
  MCData2.Date := RECParametros.SHE_DATA_MES_FK;

  if ((not oEmpty(RECPesquisa.PSQComplementoSelect)) or (not oEmpty(RECPesquisa.PSQComplementoSelect2))) then
           with FBird do
           try
             oRTransact(TFBConsulta);
             with SQLFBConsulta do
             begin
               if not oEmpty(RECPesquisa.PSQComplementoSelect) then
               begin
                 GBPesquisaComplemento.Caption    := '  '+Trim(RECPesquisa.PSQComplementoCaption)+'  ';
                 GBPesquisaComplemento.Font.Color := clBlack;
                 PEPesquisaComplemento.Enabled    := True;

                 Close;
                 SQL.Clear;
                 SQL.Add(RECPesquisa.PSQComplementoSelect);
                 Prepare;
                 ExecQuery;
                 while not Eof do
                 begin
                   PEPesquisaComplemento.Items.Add(Current.Vars[0].AsString);
                   Next;
                 end;
               end;
               if not oEmpty(RECPesquisa.PSQComplementoSelect2) then
               begin
                 GBPesquisaComplemento2.Caption    := '  '+Trim(RECPesquisa.PSQComplementoCaption2)+'  ';
                 GBPesquisaComplemento2.Font.Color := clBlack;
                 PEPesquisaComplemento2.Enabled    := True;

                 Close;
                 SQL.Clear;
                 SQL.Add(RECPesquisa.PSQComplementoSelect2);
                 Prepare;
                 ExecQuery;
                 while not Eof do
                 begin
                   PEPesquisaComplemento2.Items.Add(Current.Vars[0].AsString);
                   Next;
                 end;
               end;
             end;
           finally
             oCTransact(TFBConsulta);
           end;
end;

procedure TFrmPesquisa.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Screen.Cursor := crDefault;
  Tag := 0;

  PNLPesquisaComplemento.Visible := ((GBPesquisaComplemento.Caption <> '') or (GBPesquisaComplemento2.Caption <> ''));
  PEPesquisaTexto.Width := PNLPesquisaTexto.Width - 10;
  EMFiltroTexto.Width   := PNLPesquisaTexto.Width - 10;
end;

procedure TFrmPesquisa.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  i: Word;
begin
  if RECPesquisa.Selected then
  begin
    PEPesquisaTexto.Text := Trim(PEPesquisaTexto.Text);

    if not oEmpty(PEPesquisaTexto.Text) then
    for i := Low(aPesquisa) to High(aPesquisa) do
        if aPesquisa[i,0] = RECPesquisa.Perfil then
           if aPesquisa[i,1] = RGPesquisaCampo.Items.Strings[RGPesquisaCampo.ItemIndex] then
              if aPesquisa[i,5] = 'N' then
                 if not oBSoNumero(PEPesquisaTexto.Text) then
                 begin
                   RECPesquisa.Selected := False;
                   oException(PEPesquisaTexto,'Tipo de pesquisa selecionada: '+RGPesquisaCampo.Items.Strings[RGPesquisaCampo.ItemIndex]+#13+
                                              'Aceita somente números !');
                 end;
    if not oEmpty(IEPesquisaData.Text) then
       if MCData1.Date > MCData2.Date then
       begin
         RECPesquisa.Selected := False;
         oException(Nil,'Data Inicial não pode ser maior que Data Final !');
       end;  
  end;
end;

procedure TFrmPesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Word;
begin
  if RECPesquisa.Selected then
     RECPesquisa.Selected := ((not oEmpty(PEPesquisaTexto.Text)) or (not oEmpty(IEPesquisaData.Text)) or (PEPesquisaComplemento.Text <> 'TODOS') or (PEPesquisaComplemento2.Text <> 'TODOS'));

  if RECPesquisa.Selected then
  for i := Low(aPesquisa) to High(aPesquisa) do
      if aPesquisa[i,0] = RECPesquisa.Perfil then
      begin
        aPesquisa[i,3] := '';
        
        if aPesquisa[i,1] = RGPesquisaCampo.Items.Strings[RGPesquisaCampo.ItemIndex] then
        begin
          aPesquisa[i,3] := '1';
          aPesquisa[i,4] := IntToStr(RGPesquisaLike.ItemIndex);

          { Define as cláusula WHERE e LIKE }
          case RGPesquisaLike.ItemIndex of
            0: begin
                 aPesquisa[i,6] := 'LIKE';
                 aPesquisa[i,7] := '%';
                 aPesquisa[i,8] := '%';
               end;
            1: begin
                 aPesquisa[i,6] := 'LIKE';
                 aPesquisa[i,7] := '';
                 aPesquisa[i,8] := '%';
               end;
            2: begin
                 aPesquisa[i,6] := '=';
                 aPesquisa[i,7] := '';
                 aPesquisa[i,8] := '';
               end;
            3: begin
                 aPesquisa[i,6] := 'LIKE';
                 aPesquisa[i,7] := '%';
                 aPesquisa[i,8] := '';
               end;
          end;

          if Length(PEPesquisaTexto.Text) >= 1 then
          begin
            aPesquisa[i,9]  := PEPesquisaTexto.Text;
            aPesquisa[i,12] := aPesquisa[i,12]+' '+EMFiltroTexto.Hint;

            RECPesquisa.PSQTextoCaption := aPesquisa[i,1];
            RECPesquisa.PSQTextoField   := aPesquisa[i,2];
            RECPesquisa.PSQWhere        := aPesquisa[i,6];
            RECPesquisa.PSQLike1        := aPesquisa[i,7];
            RECPesquisa.PSQLike2        := aPesquisa[i,8];
            RECPesquisa.PSQTexto        := aPesquisa[i,9];
          end;
        end;

        if (aPesquisa[i,2] = IEPesquisaData.Text) and (not oEmpty(EMFiltroData.Text)) then
        begin
          aPesquisa[i,5]  := '1';
          aPesquisa[i,10] := FormatDateTime('dd/mm/yy',MCData1.Date);
          aPesquisa[i,11] := FormatDateTime('dd/mm/yy',MCData2.Date);
          aPesquisa[i,12] := aPesquisa[i,12]+' '+EMFiltroData.Text;

          RECPesquisa.PSQData := aPesquisa[i,2];
          RECPesquisa.PSQDT1  := MCData1.Date;
          RECPesquisa.PSQDT2  := MCData2.Date;

          if oEmpty(RECPesquisa.PSQTextoField) then
          RECPesquisa.PSQTextoField := aPesquisa[i,2];
        end;
      end;

  RECPesquisa.PSQComplemento  := PEPesquisaComplemento.Text;
  RECPesquisa.PSQComplemento2 := PEPesquisaComplemento2.Text;

  Action := caFree;
end;

procedure TFrmPesquisa.FormDestroy(Sender: TObject);
begin
  Finalize(RECPesquisa);
  FillChar(RECPesquisa,SizeOf(RECPesquisa),0);

  FrmPesquisa := Nil;
end;

procedure TFrmPesquisa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_return: SIMValida.Click;
       vk_escape: SIMSaida.Click;
  end;
end;

procedure TFrmPesquisa.FormPaint(Sender: TObject);
var
  R: TRect;
begin
  if Showing then
  begin
    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(Application.MainForm.ClientHandle,R);

    { Centraliza no MainForm }
    Top  := R.Top + ((R.Bottom - R.Top ) - Height) div 2;
    Left :=         ((R.Right  + R.Left) - Width ) div 2;

    PEPesquisaTexto.Width := GBPesquisaTexto.Width - 10;
    PEPesquisaTexto.Left  := 3;
  end;
end;

procedure TFrmPesquisa.FormResize(Sender: TObject);
begin
  if Self <> Nil then
  Paint;
end;

procedure TFrmPesquisa.SIMValidaClick(Sender: TObject);
begin
  ActiveControl := Nil;
  
  RECPesquisa.Selected := True;
  Close;
end;

procedure TFrmPesquisa.SIMSaidaClick(Sender: TObject);
begin
  RECPesquisa.Selected := False;
  Close;
end;

procedure TFrmPesquisa.FiltroTexto;
begin
  EMFiltroTexto.Text := '';
  EMFiltroTexto.Hint := '';

  if RGPesquisaCampo.ItemIndex = -1 then
  oException(Nil,'Opção de Pesquisa não Selecionada !');
  
  if Length(PEPesquisaTexto.Text) >= 1 then
  begin
    case RGPesquisaLike.ItemIndex of
      0: begin
           RGPesquisaLike.Hint   := 'no início, meio ou fim da pesquisa.';
           EMFiltroTexto.Hint := 'que contém';
         end;
      1: begin
           RGPesquisaLike.Hint   := 'no início da pesquisa.';
           EMFiltroTexto.Hint := 'que comece com';
         end;
      2: begin
           RGPesquisaLike.Hint   := 'de forma literal e exata.';
           EMFiltroTexto.Hint := 'apenas';
         end;
      3: begin
           RGPesquisaLike.Hint   := 'no fim da pesquisa.';
           EMFiltroTexto.Hint := 'que termine com';
         end;
    end;

    EMFiltroTexto.Hint := RGPesquisaCampo.Items.Strings[RGPesquisaCampo.ItemIndex]+', '+
                                                   EMFiltroTexto.Hint+' '+
                                                   PEPesquisaTexto.Text;
    EMFiltroTexto.Text := 'Procurar em '+RGPesquisaCampo.Items.Strings[RGPesquisaCampo.ItemIndex]+' '+
                                                                  'o texto '+PEPesquisaTexto.Text+' '+
                                                                  RGPesquisaLike.Hint;
    PEPesquisaTexto.SetFocus;
  end;
end;

procedure TFrmPesquisa.FiltroData;
begin
  EMFiltroData.Text := '';

  if IEPesquisaData.Text = '' then
  oException(IEPesquisaData,'Tipo de Data não definida !');

  EMFiltroData.Text := 'Por Período: '+'início em '+FormatDateTime('dd/mm/yy',MCData1.Date)+' até '+
                                                    FormatDateTime('dd/mm/yy',MCData2.Date);
end;

procedure TFrmPesquisa.RGPesquisaCampoClick(Sender: TObject);
          Function _Concatena(ATexto: String): String; STDCall;
            Const
            aConcatena: Array[00..07] of String = ('Grupos','Estoque','Nomes','Usuários','Clientes','Fornecedores','Representantes','Produtos');
          var
            i: Word;
          begin
            Result := 'a';
            for i  := 0 to Length(aConcatena) - 1 do
                if Pos(ATexto, aConcatena[i]) > 0 then
                begin
                  Result := 'o';
                  Break;
                end;
          end;
var
  i: Word;
begin
  if Tag = 0 then
  for i := Low(aPesquisa) to High(aPesquisa) do
      if aPesquisa[i,0] = RECPesquisa.Perfil then
         if aPesquisa[i,1] = RGPesquisaCampo.Items.Strings[RGPesquisaCampo.ItemIndex] then
            if aPesquisa[i,4] <> '' then
            RGPesquisaLike.ItemIndex := StrToInt(aPesquisa[i,4]);

  GBPesquisaTexto.Caption :=  '  Digite aqui '+_Concatena(RGPesquisaCampo.Items.Strings[RGPesquisaCampo.ItemIndex])+' '+
                                                          RGPesquisaCampo.Items.Strings[RGPesquisaCampo.ItemIndex] +' que deseja encontrar  '; // Retorna Caption do GBPesquisaTexto
  GBPesquisaTexto.Refresh;
  if Showing then
     if Length(PEPesquisaTexto.Text) > 3 then
     begin
       RECPesquisa.Selected := True;
       Close;
     end else
     PEPesquisaTexto.SetFocus;
end;

procedure TFrmPesquisa.RGPesquisaLikeClick(Sender: TObject);
begin
  if Showing then
  PEPesquisaTexto.SetFocus;
  FiltroTexto;
end;

procedure TFrmPesquisa.PEPesquisaComplementoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if oEmpty(PEPesquisaComplemento.Text) then
     PEPesquisaComplemento.Text := 'TODOS';
end;

procedure TFrmPesquisa.PEPesquisaComplemento2Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if oEmpty(PEPesquisaComplemento.Text) then
     PEPesquisaComplemento.Text := 'TODOS';
end;

procedure TFrmPesquisa.MCData1Click(Sender: TObject);
begin
  FiltroData;
end;

procedure TFrmPesquisa.IEPesquisaDataChange(Sender: TObject);
begin
  if Showing then
     if IEPesquisaData.Text = '' then
        EMFiltroData.Text := ''
     else
        FiltroData;
end;

end.
