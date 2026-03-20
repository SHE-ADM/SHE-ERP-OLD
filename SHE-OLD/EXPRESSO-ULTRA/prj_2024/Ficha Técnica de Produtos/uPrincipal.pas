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
    MPFicha: TMenuItem;
    ODFiles: TOpenDialog;
    TEdicao: TIBTransaction;
    CAD_PRO_IMG_ART: TIBDataSet;
    SQLEdicao: TIBSQL;
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
    MPrincipal: TMemo;
    SQLConsulta: TIBSQL;
    MIArtigo: TMenuItem;
    MIPeriodo: TMenuItem;
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
    MIUnidade: TMenuItem;
    GerarPromoo1: TMenuItem;
    ImportarPDF1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MIArtigoClick(Sender: TObject);
    procedure MIPeriodoClick(Sender: TObject);
    procedure MIUnidadeClick(Sender: TObject);
    procedure ImportarPDF1Click(Sender: TObject);
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
  Artigo,
  ArquivO: String;

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
      bExecPrinter;
      bExecCaixa;
    end;
    
    { Foto de Fundo da Tela Principal}
    oLoadJPG(RECParametros.IMG_JPG_SPLASH,IPrincipal.Picture);

    { Preenchendo o rodapé do Form Principal }
    SBRodape.Width          := Screen.Width + 1;
    SBRodape.Panels[0].Text := RECParametros.Fantasia;
    SBRodape.Panels[1].Text := RECParametros.ServerHost;

    SLPrincipal.Values['fin_pag']         := oREPZero('fin_pag'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_pag_rec']     := oREPZero('fin_pag_rec'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_pag_bai']     := oREPZero('fin_pag_bai'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_pag_coc']     := oREPZero('fin_pag_coc'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_pag_coi']     := oREPZero('fin_pag_coi'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_pag_dup']     := oREPZero('fin_pag_dup'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_pag_obs']     := oREPZero('fin_pag_obs'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_rec']         := oREPZero('fin_rec'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_rec_dup']     := oREPZero('fin_rec_dup'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_rec_obs']     := oREPZero('fin_rec_obs'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_rec_ban_bai'] := oREPZero('fin_rec_ban_bai','_',RECParametros.Id,3);
    SLPrincipal.Values['fin_rec_car_bai'] := oREPZero('fin_rec_car_bai','_',RECParametros.Id,3);
    SLPrincipal.Values['nfe_cab']         := oREPZero('nfe_cab'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['nfe_dup']         := oREPZero('nfe_dup'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['nfe_ite']         := oREPZero('nfe_ite'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['nfe_tra']         := oREPZero('nfe_tra'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_avi_cab']     := oREPZero('ped_avi_cab'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_avi_ite']     := oREPZero('ped_avi_ite'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_oca_cab']     := oREPZero('ped_oca_cab'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_oca_ite']     := oREPZero('ped_oca_ite'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_com_cab']     := oREPZero('ped_com_cab'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_com_ite']     := oREPZero('ped_com_ite'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_prg_cab']     := oREPZero('ped_prg_cab'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_prg_ite']     := oREPZero('ped_prg_ite'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_tec_cab']     := oREPZero('ped_tec_cab'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_tec_ite']     := oREPZero('ped_tec_ite'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_ven_cab']     := oREPZero('ped_ven_cab'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['ped_ven_ite']     := oREPZero('ped_ven_ite'    ,'_',RECParametros.Id,3);
    SLPrincipal.Values['rom_cab']         := oREPZero('rom_cab'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['rom_ite']         := oREPZero('rom_ite'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['rom_des']         := oREPZero('rom_des'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['tab_alq']         := oREPZero('tab_alq'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['tab_ban']         := oREPZero('tab_ban'        ,'_',RECParametros.Id,3);
    SLPrincipal.Values['fin_caption']     := 'Consultas em Carteira';
    SLPrincipal.Values['fin_hint']        := '';
    SLPrincipal.Values['fin_baixa']       := '';
    SLPrincipal.Values['fin_consulta']    := '';
  Finally
    FrmPrincipal.Repaint;
    Application.ProcessMessages;
  end;
end;

procedure TFrmPrincipal.MIArtigoClick(Sender: TObject);
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
  RECRelatorios.IEC1ConsultaField := 'CP.ARTIGO';
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
      SQL.Add('SELECT CP.ARTIGO FROM CAD_PRO AS CP');
      SQL.Add('WHERE  CP.IDEP = 1');
      SQL.Add('AND    CP.ARTIGO IS NOT NULL');

      if ((ClickedOK) and (not oEmpty(NewString))) then
      SQL.Add('AND CP.ARTIGO LIKE '''+NewString+'%''');

//      SQL.Add('AND ARTIGO >= '''+NewString+'''');      
      SQL.Add('GROUP BY 1');
      SQL.Add('ORDER BY 1');
      ExecQuery;

      while not eof do
      begin
        if (NewString <> EmptyStr) or ((NewString = EmptyStr) and (not FileExists('C:\Sheild\Documentos\Ficha Técnica\' + Current.ByName('ARTIGO').AsString + '.PDF'))) then
        begin
          RECUsuarios.CurrentPrinter := 'Relatório';

          RECRelatorios.Id     := Current.ByName('ARTIGO').AsString;
          RECRelatorios.Titulo := 'Ficha Técnica de Produtos';
          RECRelatorios.PEC1ConsultaText := Current.ByName('ARTIGO').AsString;

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

procedure TFrmPrincipal.MIPeriodoClick(Sender: TObject);
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
  RECRelatorios.IEC1ConsultaField := 'CP.ARTIGO';
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
      SQL.Add('SELECT ARTIGO FROM CAD_PRO WHERE IDEP = 1 AND CAST(DTCA AS DATE) >= ''10/03/22'' GROUP BY 1 ORDER BY 1');
      ExecQuery;

      while not eof do
      begin
        RECRelatorios.Id     := Current.ByName('ARTIGO').AsString;
        RECRelatorios.Titulo := 'Ficha Técnica de Produtos';
        RECRelatorios.PEC1ConsultaText := Current.ByName('ARTIGO').AsString;

        qrpFicha_Tecnica := TqrpFicha_Tecnica.Create(Nil,RECRelatorios);
        qrpFicha_Tecnica.WinControlFormCreate(qrpFicha_Tecnica);

        next;
      end;
    end;
  finally
    oCTransact(TEdicao);
  end;
end;

procedure TFrmPrincipal.MIUnidadeClick(Sender: TObject);
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
  RECRelatorios.IEC1ConsultaField := 'CP.ARTIGO';
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
      SQL.Add('SELECT ARTIGO FROM CAD_PRO WHERE IDEP = 1 AND UCOM = ''KG'' GROUP BY 1 ORDER BY 1');
      ExecQuery;

      while not eof do
      begin
        RECRelatorios.Id     := Current.ByName('ARTIGO').AsString;
        RECRelatorios.Titulo := 'Ficha Técnica de Produtos';
        RECRelatorios.PEC1ConsultaText := Current.ByName('ARTIGO').AsString;

        qrpFicha_Tecnica := TqrpFicha_Tecnica.Create(Nil,RECRelatorios);
        qrpFicha_Tecnica.WinControlFormCreate(qrpFicha_Tecnica);

        next;
      end;
    end;
  finally
    oCTransact(TEdicao);
  end;
end;

procedure TFrmPrincipal.ImportarPDF1Click(Sender: TObject);
var
  F: TSearchRec;
  R: Integer;
begin
  if not ODFiles.Execute then
  Abort;

  Arquivo := EmptyStr;
  Artigo  := EmptyStr;

  Pasta := ExtractFilePath(ODFiles.FileName);
  R     := FindFirst(Pasta+'*.PDF',faAnyFile,F);

  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_PDF');
      ExecQuery;
    end;

    while R = 0 do
    begin
      SBRodape.Panels[0].Text := Pasta+F.Name;
      Application.ProcessMessages;

      Arquivo := TRIM(LeftStr(F.Name,Pos('.pdf',LowerCase(F.Name)) - 1));
      Artigo  := IFThen(Length(Arquivo) <= 7,Arquivo,EmptyStr);

      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO CAD_PRO_PDF (ARQUIVO,ARTIGO)');
        SQL.Add('VALUES (');

        SQL.Add('''' + ARQUIVO + ''',');
        SQL.Add('''' + ARTIGO  + ''')');

        ExecQuery;
      end;

      R := FindNext(F);
    end;
    
    oCTransact(TEdicao);
  finally
    FindClose(F);
  end;

  oAviso(Application.Handle,'PDF importado com sucesso !');
end;

end.
