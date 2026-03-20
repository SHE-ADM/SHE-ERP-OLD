unit uPrincipal;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, RXCtrls, ToolWin, StdCtrls, Buttons,
  DB, IBCustomDataSet, IBQuery, IBDatabase, IBTable, ActnList, ActnMan,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, DateUtils, Printers, StrUtils,
  Grids, DBGrids, IBStoredProc, ImgList, Shellapi, DBTables, jpeg, math,
  XPStyleActnCtrls, IdBaseComponent, IdComponent, qrPrev, Registry,
  IdIPWatch, Provider, cxGraphics, cxControls, dxStatusBar, ACBrBarCode,
  IBSQL;

type
  TFrmPrincipal = class(TForm)
    SBRodape: TdxStatusBar;
    IPrincipal: TImage;
    MMPrincipal: TMainMenu;
    MenuPrincipal1: TMenuItem;
    Importar1: TMenuItem;
    ODFiles: TOpenDialog;
    TEdicao: TIBTransaction;
    CAD_PRO_IMG_ART: TIBDataSet;
    SQLEdicao: TIBSQL;
    Renomear1: TMenuItem;
    AtualizarB2B1: TMenuItem;
    AtualizarB2BLebianco1: TMenuItem;
    AtualizarInstruodeLavagem1: TMenuItem;
    TAB_IMG_ILA: TIBDataSet;
    TAB_IMG_ILAID: TSmallintField;
    TAB_IMG_ILAIDEV: TLargeintField;
    TAB_IMG_ILACDEV: TSmallintField;
    TAB_IMG_ILAIDCA: TSmallintField;
    TAB_IMG_ILADTCA: TDateTimeField;
    TAB_IMG_ILAIDED: TSmallintField;
    TAB_IMG_ILADTED: TDateTimeField;
    TAB_IMG_ILAIDST: TSmallintField;
    TAB_IMG_ILACDST: TSmallintField;
    TAB_IMG_ILADTST: TDateTimeField;
    TAB_IMG_ILAIP: TIBStringField;
    TAB_IMG_ILAHOST: TIBStringField;
    TAB_IMG_ILAREFERENCIA: TIBStringField;
    TAB_IMG_ILAINSTRUCAO: TIBStringField;
    TAB_IMG_ILAIMAGEM: TBlobField;
    N1: TMenuItem;
    N2: TMenuItem;
    Exportar1: TMenuItem;
    N3: TMenuItem;
    MPrincipal: TMemo;
    SQLConsulta: TIBSQL;
    Download1: TMenuItem;
    Upload1: TMenuItem;
    N4: TMenuItem;
    PDFFichaTcnica1: TMenuItem;
    PorArtigos1: TMenuItem;
    PorPerodo1: TMenuItem;
    CAD_PRO_IMG_ARTID: TLargeintField;
    CAD_PRO_IMG_ARTIDCA: TSmallintField;
    CAD_PRO_IMG_ARTDTCA: TDateTimeField;
    CAD_PRO_IMG_ARTIDED: TSmallintField;
    CAD_PRO_IMG_ARTDTED: TDateTimeField;
    CAD_PRO_IMG_ARTIMG_PAD: TBlobField;
    CAD_PRO_IMG_ARTIP: TIBStringField;
    CAD_PRO_IMG_ARTHOST: TIBStringField;
    CAD_PRO_IMG_ARTFLAG: TIntegerField;
    CAD_PRO_IMG_SKU: TIBDataSet;
    CAD_PRO_IMG_SKUID: TIntegerField;
    CAD_PRO_IMG_SKUIDCA: TSmallintField;
    CAD_PRO_IMG_SKUDTCA: TDateTimeField;
    CAD_PRO_IMG_SKUIDED: TSmallintField;
    CAD_PRO_IMG_SKUDTED: TDateTimeField;
    CAD_PRO_IMG_SKUIMG_PAD: TBlobField;
    CAD_PRO_IMG_SKUIP: TIBStringField;
    CAD_PRO_IMG_SKUHOST: TIBStringField;
    CAD_PRO_IMG_SKUFLAG: TIntegerField;
    CAD_PRO_IMG: TIBDataSet;
    PorEmpresa1: TMenuItem;
    CAD_PRO_IMGID: TIntegerField;
    CAD_PRO_IMGPRO_CDEP: TSmallintField;
    CAD_PRO_IMGPRO_CART: TIBStringField;
    CAD_PRO_IMGPRO_FOTO: TBlobField;
    CAD_PRO_IMGPRO_FOT2: TBlobField;
    CAD_PRO_IMGPRO_FOT3: TBlobField;
    CAD_PRO_IMGPRO_FOT4: TBlobField;
    CAD_PRO_IMGPRO_FOT5: TBlobField;
    CAD_PRO_IMGPRO_FOT6: TBlobField;
    CAD_PRO_IMGPRO_FOT7: TBlobField;
    CAD_PRO_IMGPRO_FOT8: TBlobField;
    CAD_PRO_IMGPRO_INS1: TBlobField;
    CAD_PRO_IMGPRO_INS2: TBlobField;
    CAD_PRO_IMGPRO_INS3: TBlobField;
    CAD_PRO_IMGPRO_INS4: TBlobField;
    CAD_PRO_IMGPRO_INS5: TBlobField;
    CAD_PRO_IMGPRO_INS6: TBlobField;
    CAD_PRO_IMGPRO_INS7: TBlobField;
    CAD_PRO_IMGPRO_INS8: TBlobField;
    CAD_PRO_IMGPRO_ENVWEB: TSmallintField;
    CAD_PRO_IMGPRO_ONS1: TIBStringField;
    CAD_PRO_IMGPRO_ONS2: TIBStringField;
    CAD_PRO_IMGPRO_ONS3: TIBStringField;
    CAD_PRO_IMGPRO_ONS4: TIBStringField;
    CAD_PRO_IMGPRO_ONS5: TIBStringField;
    CAD_PRO_IMGPRO_ONS6: TIBStringField;
    CAD_PRO_IMGPRO_ONS7: TIBStringField;
    CAD_PRO_IMGPRO_ONS8: TIBStringField;
    IMAGEM: TIBQuery;
    IMAGEMIMG_ID: TLargeintField;
    IMAGEMIMG_NO: TIBStringField;
    IMAGEMIMG_PAD: TBlobField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Importar1Click(Sender: TObject);
    procedure Renomear1Click(Sender: TObject);
    procedure AtualizarB2B1Click(Sender: TObject);
    procedure AtualizarB2BLebianco1Click(Sender: TObject);
    procedure Exportar1Click(Sender: TObject);
    procedure Download1Click(Sender: TObject);
    procedure PorArtigos1Click(Sender: TObject);
    procedure PorPerodo1Click(Sender: TObject);
    procedure PorEmpresa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure _TrimAppMemorySize;
    procedure _Login(AIDUSER,AIDEP: Variant);
  end;

{ Procedures do Sistema }
var
  FrmPrincipal: TFrmPrincipal;
  Pasta,
  Artigo: String;

implementation

uses bPrincipal, qFicha_Tecnica;

{$R *.dfm}

function ClientWindowProc(wnd: HWND; msg: Cardinal; wparam, lparam: Integer ): Integer; STDCall;
var
  Ponteiro: Pointer;
begin
  Ponteiro := Pointer(GetWindowLong(wnd,GWL_USERDATA));
  case msg of
       WM_NCCALCSIZE: if (GetWindowLong(wnd,GWL_STYLE) and (WS_HSCROLL or WS_VSCROLL)) <> 0 then
                      SetWindowLong(wnd,GWL_STYLE,GetWindowLong(wnd,GWL_STYLE) and Not (WS_HSCROLL or WS_VSCROLL));
  end;
  Result := CallWindowProc(Ponteiro,wnd,msg,wparam,lparam);
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  if ClientHandle <> 0 then
     if (not (GetWindowLong(ClientHandle, GWL_USERDATA) <> 0)) then
              SetWindowLong(ClientHandle, GWL_USERDATA, SetWindowLong(ClientHandle, GWL_WNDPROC, integer(@ClientWindowProc)));

  CurrencyString    := 'R$';
  ThousandSeparator := '.';
  DecimalSeparator  := ',';

  _Login('0','1');
end;

procedure TFrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPrincipal._TrimAppMemorySize;
var
  MainHandle: THandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID);
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF);
    CloseHandle(MainHandle);
  except
    ;
  end;
  Application.ProcessMessages;
end;

procedure TFrmPrincipal._Login(AIDUSER,AIDEP: Variant);
begin
  if (not oEmpty(AIDUSER)) and (not oEmpty(AIDEP)) and (oEmpty(RECParametros.DataBaseError)) then
  try
    FreeAndNil(SLPrincipal);
    SLPrincipal := TStringList.Create;

    with FBird do
    begin
      bExecParametros(AIDEP);
      bExecUsuarios(AIDUSER);
      bExecCaixa;
    end;
    
    { Foto de Fundo da Tela Principal}
    _oLoadJPG(Nil,Nil,IPrincipal,True,'JPG_SPLASH');

    { Preenchendo o rodapé do Form Principal }
    SBRodape.Width          := Screen.Width + 1;
    SBRodape.Panels[0].Text := RECParametros.EP_NO;
    SBRodape.Panels[1].Text := RECParametros.ServerHost;

  Finally
    FrmPrincipal.Repaint;
    Application.ProcessMessages;
  end;
end;

procedure TFrmPrincipal.Importar1Click(Sender: TObject);
var
  F: TSearchRec;
  R: Integer;
begin
  if not ODFiles.Execute then
     Abort;

  Pasta := ExtractFilePath(ODFiles.FileName);
  R     := FindFirst(Pasta+'*.JPG',faAnyFile,F);

  try
    oOTransact(TEdicao);

    while R = 0 do
    begin
      IPrincipal.Picture.LoadFromFile(Pasta+F.Name);
      SBRodape.Panels[0].Text := Pasta+F.Name;
      Application.ProcessMessages;

      Artigo := Trim(LeftStr(F.Name,Pos('.jpg',LowerCase(F.Name)) - 1));
      with SQLConsulta do
      begin
        { Artigo }
        Close;
        SQL.Clear;
        SQL.Add('SELECT IDAK FROM CAD_PRO WHERE PRO_CART = '''+ARTIGO+'''');
        ExecQuery;
        if Current.Vars[0].AsInteger = 0 then
        begin
          { SKU }
          Close;
          SQL.Clear;
          SQL.Add('SELECT ID FROM CAD_PRO WHERE PRO_CPRO = '''+ARTIGO+'''');
          ExecQuery;
        end;
      end;

      if SQLConsulta.Current.Vars[0].AsInteger > 0 then
      begin
        if SQLConsulta.Current.Vars[0].Name = 'IDAK' then
        begin
          with CAD_PRO_IMG_ART do
          begin
            Close;
            SelectSQL.Clear;
            SelectSQL.Add('SELECT * FROM CAD_PRO_IMG_ART');
            SelectSQL.Add('WHERE  ID = '''+SQLConsulta.Current.Vars[0].AsString+'''');
            Open;
          end;

          if CAD_PRO_IMG_ART.Eof then
             CAD_PRO_IMG_ART.Append else
             CAD_PRO_IMG_ART.Edit;

          CAD_PRO_IMG_ARTID.Value   := SQLConsulta.Current.Vars[0].AsInteger;
          CAD_PRO_IMG_ARTIP.Value   := RECParametros.IP;
          CAD_PRO_IMG_ARTHOST.Value := RECParametros.HOST;

          CAD_PRO_IMG_ARTIMG_PAD.LoadFromStream(oLoadStream(IPrincipal.Picture));
          CAD_PRO_IMG_ART.Post;
        end else
        if SQLConsulta.Current.Vars[0].Name = 'ID' then
        begin
          with CAD_PRO_IMG_SKU do
          begin
            Close;
            SelectSQL.Clear;
            SelectSQL.Add('SELECT * FROM CAD_PRO_IMG_SKU');
            SelectSQL.Add('WHERE  ID = '''+SQLConsulta.Current.Vars[0].AsString+'''');
            Open;
          end;

          if CAD_PRO_IMG_SKU.Eof then
             CAD_PRO_IMG_SKU.Append else
             CAD_PRO_IMG_SKU.Edit;

          CAD_PRO_IMG_SKUID.Value   := SQLConsulta.Current.Vars[0].AsInteger;
          CAD_PRO_IMG_SKUIP.Value   := RECParametros.IP;
          CAD_PRO_IMG_SKUHOST.Value := RECParametros.HOST;

          CAD_PRO_IMG_SKUIMG_PAD.LoadFromStream(oLoadStream(IPrincipal.Picture));
          CAD_PRO_IMG_SKU.Post;
        end;
        TEdicao.CommitRetaining;
      end;

      R := FindNext(F);
    end;
    
    oCTransact(TEdicao);
  finally
    FindClose(F);
  end;

  oAviso(Application.Handle,'Fotos importadas com sucesso !');
end;

procedure TFrmPrincipal.Renomear1Click(Sender: TObject);
var
  Pasta,
  Artigo: String;
  F: TSearchRec;
  R: Integer;
begin
  if not ODFiles.Execute then Abort;

  Pasta := ExtractFilePath(ODFiles.FileName);
  R     := FindFirst(Pasta+'*.JPG',faAnyFile,F);

  try
    while R = 0 do
    begin
      Artigo := LeftStr(F.Name,5)+'.jpg';

      RenameFile(Pasta+F.Name,PChar(Pasta+Artigo));

      R := FindNext(F);
    end;
  finally
    FindClose(F);
  end;

  oAviso(Application.Handle,'Arquivos Renomeados com Sucesso !');
end;

procedure TFrmPrincipal.AtualizarB2B1Click(Sender: TObject);
var
  F: TSearchRec;
  R: Integer;
begin
  if not ODFiles.Execute then
     Abort;

  with FBird do
  try
    Pasta := ExtractFilePath(ODFiles.FileName);
    R     := FindFirst(Pasta+'*.JPG',faAnyFile,F);

    try
      oODatabase(DBB2B,lwNone,'198.50.189.229/3050:C:\dbFirebird\OtimotexB2B.fdb');
    except
      on E: Exception do
            oErro(FrmPrincipal.Handle,'B2B Erro: '+E.Message);
    end;

    if DBB2B.TestConnected then
    try
      oOTransact(TB2BEdicao);
      while R = 0 do
      begin
        Artigo := Trim(LeftStr(F.Name,Pos('.jpg',LowerCase(F.Name)) - 1));

        SBRodape.Panels[0].Text := Artigo;
        Application.ProcessMessages;

        with SQLB2BEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE CAD_PRO');
          SQL.Add('SET    PRO_IDJPG = '''+Artigo+'''');
          SQL.Add('WHERE  PRO_CPRO  = '''+Artigo+'''');
          ExecQuery;
        end;

        R := FindNext(F);
      end;
      oCTransact(TB2BEdicao);
    except
      ;
    end;
  finally
    oCTransact(TB2BEdicao);
    oCTransact(TFBEdicao);
    oCDataBase(DBB2B);

    FindClose(F);
  end;

  oAviso(Application.Handle,'Artigos OTIMOTEX Atualizados com Sucesso !');
end;

procedure TFrmPrincipal.AtualizarB2BLebianco1Click(Sender: TObject);
var
  F: TSearchRec;
  R: Integer;
begin
  if not ODFiles.Execute then
     Abort;

  with FBird do
  try
    Pasta := ExtractFilePath(ODFiles.FileName);
    R     := FindFirst(Pasta+'*.JPG',faAnyFile,F);

    try
      oODatabase(DBB2B,lwNone,'198.50.189.229/3050:C:\dbFirebird\LebiancoB2B.fdb');
    except
      on E: Exception do
            oErro(FrmPrincipal.Handle,'B2B Erro: '+E.Message);
    end;

    if DBB2B.TestConnected then
    try
      oOTransact(TB2BEdicao);
      while R = 0 do
      begin
        Artigo := Trim(LeftStr(F.Name,Pos('.jpg',LowerCase(F.Name)) - 1));

        SBRodape.Panels[0].Text := Artigo;
        Application.ProcessMessages;

        with SQLB2BEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE CAD_PRO');
          SQL.Add('SET    PRO_IDJPG = '''+Artigo+'''');
          SQL.Add('WHERE  PRO_CPRO  = '''+Artigo+'''');
          ExecQuery;
        end;

        R := FindNext(F);
      end;
      oCTransact(TB2BEdicao);
    except
      ;
    end;
  finally
    oCTransact(TB2BEdicao);
    oCTransact(TFBEdicao);
    oCDataBase(DBB2B);

    FindClose(F);
  end;

  oAviso(Application.Handle,'Artigos LEBIANCO Atualizados com Sucesso !');
end;

procedure TFrmPrincipal.Exportar1Click(Sender: TObject);
begin
  if not ODFiles.Execute then Abort;

  Pasta := ExtractFilePath(ODFiles.FileName);
  try
    oOTransact(TEdicao);
    with IMAGEM do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   CDN.IMG_ID,CDN.IMG_NO,CDN.IMG_PAD');
      SQL.Add('FROM     VW_CAD_PRO_IMG_CDN AS CDN');
      SQL.Add('JOIN     CAD_PRO AS CP ON (CP.CP_ID = CDN.IDCP)');
      SQL.Add('WHERE    CP.EP_ID = 1');
      SQL.Add('GROUP BY 1,2,3');
      SQL.Add('ORDER BY 2');
      Open;
    end;
    while not IMAGEM.Eof do
    begin
      Application.ProcessMessages;
      SBRodape.Panels[0].Text := Pasta;

      if IMAGEMIMG_PAD.BlobSize > 0 then
      begin
        _oLoadJPG(IMAGEMIMG_ID,IMAGEMIMG_PAD,IPrincipal,True);


        Caption := Format('  Imagem do Produto ( %d kb)',[oLoadJPG(IMAGEMIMG_PAD,IPrincipal.Picture)]);
        IPrincipal.Picture.SaveToFile(PChar(Pasta+IMAGEMIMG_NO.AsString+'.jpg'));
      end else
      MPrincipal.Lines.Add(IMAGEMIMG_NO.AsString);

      IMAGEM.Next;
    end;

    MPrincipal.Lines.SaveToFile(Pasta+'Arquivos_Sem_Fotos.txt');
  finally
    oCTransact(TEdicao);
  end;

  oAviso(Application.Handle,'Fotos Exportadas com Sucesso !');
end;

procedure TFrmPrincipal.Download1Click(Sender: TObject);
begin
{  if not ODFiles.Execute then Abort;

  Pasta := ExtractFilePath(ODFiles.FileName);
  try
    oOTransact(TEdicao);
    with CPFT do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_PRO_IMG');
      SelectSQL.Add('WHERE    PRO_INS8 IS NOT NULL');
      SelectSQL.Add('ORDER BY PRO_INS8');
      Open;
    end;
    while not CPFT.Eof do
    begin
      Application.ProcessMessages;
      SBRodape.Panels[0].Text := Pasta;

      Caption := Format('  Imagem do Produto ( %d kb)',[oBITMAPLoad(CPFTPRO_INS8,IPrincipal.Picture)]);
      IPrincipal.Picture.SaveToFile(PChar(Pasta+CPFTPRO_CART.AsString+'.bmp'));

      CPFT.Next;
    end;
  finally
    oCTransact(TEdicao);
  end;

  oAviso(Application.Handle,'Instruções de Lavagem Exportadas com Sucesso !'); }
end;

procedure TFrmPrincipal.PorArtigos1Click(Sender: TObject);
var
  RECRelatorios: TRECRelatorios;
      ClickedOK: Boolean;
      NewString: String;
begin
  Initialize(RECRelatorios);
  FillChar(RECRelatorios,SizeOf(RECRelatorios),0);

  RECRelatorios.IDEP := 1;

  RECRelatorios.PrintTAG := 2;
  RECRelatorios.Handle   := Self.Handle;

  RECRelatorios.PEC1CodigoText    := 'TODOS';
  RECRelatorios.PEC2CodigoText    := 'TODOS';
  RECRelatorios.IEC1ConsultaField := 'CP.PRO_CART';
  RECRelatorios.PEC1ConsultaText  := 'TODOS';
  RECRelatorios.IEC1ConsultaWhere := '=';
  RECRelatorios.PEC2ConsultaText  := 'TODOS';
  RECRelatorios.PEC3ConsultaText  := 'TODOS';
  RECRelatorios.PEC4ConsultaText  := 'TODOS';
  RECRelatorios.IEDataField       := '';

  try
    ClickedOK := InputQuery('Entre com o código do artigo', 'Artigo', NewString);
    NewString := Trim(NewString);

    oOTransact(TEdicao);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT TRIM(PRO_CART) AS PRO_CART FROM CAD_PRO WHERE IDEP = 1');

      if ((ClickedOK) and (not oEmpty(NewString))) then
      SQL.Add('AND PRO_CART CONTAINING '''+NewString+'''');

//      SQL.Add('AND PRO_CART >= '''+NewString+'''');      
      SQL.Add('GROUP BY 1');
      SQL.Add('ORDER BY 1');
      ExecQuery;

      while not eof do
      begin
        if not FileExists('C:\Sheild\Documentos\Ficha Técnica\' + Current.ByName('PRO_CART').AsString + '.pdf') then
        begin
          RECUsuarios.CurrentPrinter := 'Relatório';

          RECRelatorios.Id     := Current.ByName('PRO_CART').AsString;
          RECRelatorios.Titulo := 'Ficha Técnica de Produtos';
          RECRelatorios.PEC1ConsultaText := Current.ByName('PRO_CART').AsString;

          qrpFicha_Tecnica := TqrpFicha_Tecnica.Create(Nil,RECRelatorios);
          qrpFicha_Tecnica.WinControlFormCreate(qrpFicha_Tecnica);
        end;

        next;
      end;
    end;
  finally
    oCTransact(TEdicao);
  end;
end;

procedure TFrmPrincipal.PorPerodo1Click(Sender: TObject);
var
  RECRelatorios: TRECRelatorios;
begin
  Initialize(RECRelatorios);
  FillChar(RECRelatorios,SizeOf(RECRelatorios),0);

  RECRelatorios.IDEP := 1;

  RECRelatorios.PrintTAG := 2;
  RECRelatorios.Handle   := Self.Handle;

  RECRelatorios.PEC1CodigoText    := 'TODOS';
  RECRelatorios.PEC2CodigoText    := 'TODOS';
  RECRelatorios.IEC1ConsultaField := 'CP.PRO_CART';
  RECRelatorios.PEC1ConsultaText  := 'TODOS';
  RECRelatorios.IEC1ConsultaWhere := '=';
  RECRelatorios.PEC2ConsultaText  := 'TODOS';
  RECRelatorios.PEC3ConsultaText  := 'TODOS';
  RECRelatorios.PEC4ConsultaText  := 'TODOS';
  RECRelatorios.IEDataField       := '';

  try
    oOTransact(TEdicao);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PRO_CART FROM CAD_PRO WHERE IDEP = 1 AND CAST(DTCA AS DATE) >= ''10/03/22'' GROUP BY 1 ORDER BY 1');
      ExecQuery;

      while not eof do
      begin
        RECRelatorios.Id     := Current.ByName('PRO_CART').AsString;
        RECRelatorios.Titulo := 'Ficha Técnica de Produtos';
        RECRelatorios.PEC1ConsultaText := Current.ByName('PRO_CART').AsString;

        qrpFicha_Tecnica := TqrpFicha_Tecnica.Create(Nil,RECRelatorios);
        qrpFicha_Tecnica.WinControlFormCreate(qrpFicha_Tecnica);

        next;
      end;
    end;
  finally
    oCTransact(TEdicao);
  end;
end;

procedure TFrmPrincipal.PorEmpresa1Click(Sender: TObject);
var
  RECRelatorios: TRECRelatorios;
begin
  Initialize(RECRelatorios);
  FillChar(RECRelatorios,SizeOf(RECRelatorios),0);

  RECRelatorios.IDEP := 1;

  RECRelatorios.PrintTAG := 2;
  RECRelatorios.Handle   := Self.Handle;

  RECRelatorios.PEC1CodigoText    := 'TODOS';
  RECRelatorios.PEC2CodigoText    := 'TODOS';
  RECRelatorios.IEC1ConsultaField := 'CP.PRO_CART';
  RECRelatorios.PEC1ConsultaText  := 'TODOS';
  RECRelatorios.IEC1ConsultaWhere := '=';
  RECRelatorios.PEC2ConsultaText  := 'TODOS';
  RECRelatorios.PEC3ConsultaText  := 'TODOS';
  RECRelatorios.PEC4ConsultaText  := 'TODOS';
  RECRelatorios.IEDataField       := '';

  try
    oOTransact(TEdicao);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PRO_CART FROM CAD_PRO WHERE IDEP = 1 AND UCOM = ''KG'' GROUP BY 1 ORDER BY 1');
      ExecQuery;

      while not eof do
      begin
        RECRelatorios.Id     := Current.ByName('PRO_CART').AsString;
        RECRelatorios.Titulo := 'Ficha Técnica de Produtos';
        RECRelatorios.PEC1ConsultaText := Current.ByName('PRO_CART').AsString;

        qrpFicha_Tecnica := TqrpFicha_Tecnica.Create(Nil,RECRelatorios);
        qrpFicha_Tecnica.WinControlFormCreate(qrpFicha_Tecnica);

        next;
      end;
    end;
  finally
    oCTransact(TEdicao);
  end;
end;

end.
