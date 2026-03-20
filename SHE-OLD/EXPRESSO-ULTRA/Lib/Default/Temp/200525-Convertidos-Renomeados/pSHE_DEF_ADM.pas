unit pSHE_DEF_ADM;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, StrUtils, Math, dxExEdtr, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxEdLib, dxDBELib, dxEditor, ExtCtrls, ActnList, ImgList,
  dxBar, dxBarExtItems, dxDockControl, dxPageControl, dxDockPanel,
  cxGraphics, cxControls, dxStatusBar, IBEvents, IBStoredProc, DB,
  IBCustomDataSet, IBQuery, IBSQL, IBDatabase, rxSpeedbar,
  IDGlobal, DSiWin32, dxsbar, ComCtrls;

type
  TFrmSHE_DEF_ADM = class(TForm)
    BMPrincipal: TdxBarManager;

    BLBRefresh: TdxBarLargeButton;
    BLBRelatorios: TdxBarLargeButton;
    BLBPSQ_CAD: TdxBarLargeButton;
    BEPSQ_CAD: TdxBarEdit;
    BBPSQ_PER_MENU: TdxBarButton;
    BDPSQ_PER_INI: TdxBarDateCombo;
    BDPSQ_PER_FIM: TdxBarDateCombo;
    BLBMAppend: TdxBarLargeButton;
    BLBMEdit: TdxBarLargeButton;
    BLBMCancel: TdxBarLargeButton;
    BLBConfirma: TdxBarLargeButton;
    BLBSaida: TdxBarLargeButton;
    BLBMDelete: TdxBarLargeButton;
    BLBPesquisa: TdxBarLargeButton;
    BSProgresso: TdxBarStatic;
    BPProcesso: TdxBarProgressItem;
    BLBPSQ_CAD_MENU: TdxBarLargeButton;
    BBPSQ_PER: TdxBarButton;
    SBSMenu: TdxSideBarStore;
    SSIEAppend: TdxStoredSideItem;
    SSIEEdit: TdxStoredSideItem;
    SSIEDelete: TdxStoredSideItem;
    SSIEPost: TdxStoredSideItem;
    SSIECancel: TdxStoredSideItem;
    SSIMAppend: TdxStoredSideItem;
    SSIMEdit: TdxStoredSideItem;
    SSIMDelete: TdxStoredSideItem;
    PMPSQ_CAD: TdxBarPopupMenu;
    PMPSQ_PER: TdxBarPopupMenu;
    ALPrincipal: TActionList;
    ACTRefresh: TAction;
    ACTExecEvent: TAction;
    ACTPesquisa: TAction;
    ACTRelatorios: TAction;
    ACTEAppend: TAction;
    ACTEEdit: TAction;
    ACTEDelete: TAction;
    ACTEPost: TAction;
    ACTECancel: TAction;
    ACTMAppend: TAction;
    ACTMEdit: TAction;
    ACTMDelete: TAction;
    ACTMPost: TAction;
    ACTMCancel: TAction;
    ACTSaida: TAction;
    ACTPSQ_OK: TAction;
    ACTPSQ_FOCUS: TAction;
    ILMenu: TImageList;
    ILEdicao: TImageList;
    StyleController: TdxEditStyleController;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TEvent: TIBTransaction;
    SQLEvent: TIBSQL;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    DMPrincipal: TdxDockingManager;
    DSPrincipal: TdxDockSite;
    DPMenu: TdxDockPanel;
    LDSMenu: TdxLayoutDockSite;
    SBPrincipal: TdxSideBar;
    DPSubMenu5: TdxDockPanel;
    LDSSubMenu5: TdxLayoutDockSite;
    DPSubMenu4: TdxDockPanel;
    DPSubMenu3: TdxDockPanel;
    DPSubMenu2: TdxDockPanel;
    DPSubMenu1: TdxDockPanel;
    LDSSubMenu4: TdxLayoutDockSite;
    LDSSubMenu3: TdxLayoutDockSite;
    LDSSubMenu2: TdxLayoutDockSite;
    LDSSubMenu1: TdxLayoutDockSite;
    DPPrincipal1: TdxDockPanel;
    LDSPrincipal1: TdxLayoutDockSite;
    DPPrincipal2: TdxDockPanel;
    TCDSPrincipal: TdxTabContainerDockSite;
    PNLPrincipal1: TPanel;
    DSPrincipal1: TdxDockSite;
    LDSPrincipal1ConsultaINFADCAD: TdxLayoutDockSite;
    DPPrincipal1Consulta1: TdxDockPanel;
    DPPrincipal1RodapeLE1: TdxDockPanel;
    LDSPrincipal1Rodape1: TdxLayoutDockSite;
    DPPrincipal1RodapeLD1: TdxDockPanel;
    LDSPrincipal1RodapeLD: TdxLayoutDockSite;
    DPPrincipal1RodapeLE2: TdxDockPanel;
    DPPrincipal1RodapeLEB: TdxDockPanel;
    TCDSPrincipal1RodapeLE: TdxTabContainerDockSite;
    VCDSPrincipal1RodapeLE: TdxVertContainerDockSite;
    DPPrincipal1RodapeLD2: TdxDockPanel;
    TCDSPrincipal1RodapeLD: TdxTabContainerDockSite;
    DPPrincipal1RodapeLDB: TdxDockPanel;
    VCDSPrincipal1RodapeLD: TdxVertContainerDockSite;
    DPPrincipal1LE: TdxDockPanel;
    LDSPrincipal1LE: TdxLayoutDockSite;
    DPPrincipal1LD: TdxDockPanel;
    LDSPrincipal1LD: TdxLayoutDockSite;
    DPPrincipal1Titulo: TdxDockPanel;
    LDSPrincipal1Titulo: TdxLayoutDockSite;
    DPPrincipal1INFADCAD: TdxDockPanel;
    LDSPrincipal1INFADCAD: TdxLayoutDockSite;
    DPPrincipal1INFADCPL: TdxDockPanel;
    LDSPrincipal1INFADCPL: TdxLayoutDockSite;
    DPPrincipal1ConsultaLE1: TdxDockPanel;
    HCDSPrincipal1Consulta: TdxHorizContainerDockSite;
    DPPrincipal1ConsultaLD1: TdxDockPanel;
    DPPrincipal1ConsultaLE2: TdxDockPanel;
    TCDSPrincipal1ConsultaLE: TdxTabContainerDockSite;
    DPPrincipal1ConsultaLD2: TdxDockPanel;
    TCDSPrincipal1ConsultaLD: TdxTabContainerDockSite;
    DPPrincipal1Consulta2: TdxDockPanel;
    TCDSPrincipal1Consulta: TdxTabContainerDockSite;
    DPPrincipal1RodapeTitulo: TdxDockPanel;
    LDSPrincipal1RodapeTitulo: TdxLayoutDockSite;
    DPPrincipal1Rodape: TdxDockPanel;
    LDSPrincipal1RodapeLE: TdxLayoutDockSite;
    DPPrincipal1Rodape1: TdxDockPanel;
    LDSPrincipal1Rodape2: TdxLayoutDockSite;
    DPPrincipal1Rodape2: TdxDockPanel;
    TCDSPrincipal1Rodape: TdxTabContainerDockSite;
    Consulta: TIBQuery;
    DTSConsulta: TDataSource;
    PNLDBGConsulta: TPanel;
    DBGConsulta: TdxDBGrid;




    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ACTRefreshExecute(Sender: TObject);
    procedure ACTMAppendExecute(Sender: TObject);
    procedure ACTMEditExecute(Sender: TObject);
    procedure ACTMDeleteExecute(Sender: TObject);
    procedure ACTMPostExecute(Sender: TObject);
    procedure ACTMCancelExecute(Sender: TObject);
    procedure ACTEAppendExecute(Sender: TObject);
    procedure ACTEEditExecute(Sender: TObject);
    procedure ACTEDeleteExecute(Sender: TObject);
    procedure ACTEPostExecute(Sender: TObject);
    procedure ACTECancelExecute(Sender: TObject);
    procedure ACTPSQ_OKExecute(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACTPSQ_FOCUSExecute(Sender: TObject);
    procedure BEPSQ_CADCurChange(Sender: TObject);
    procedure BDPSQ_PER_INICurChange(Sender: TObject);
    procedure BDPSQ_PER_FIMCurChange(Sender: TObject);
    procedure ACTExecEventExecute(Sender: TObject);
    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure DPPrincipal1RodapeLDBUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
  private
  private
    { Private declarations }
    FDockControl : TdxCustomDockControl;
    FCurrentEvent: String;
    FForceClose  : Boolean;
    { Definindo uma propriedade no form
      Criado um atributo FMSGCaption e um método SetMSGCaption para trabalhar com a propriedade
      FMSGCaption   - Encapsula a informação
      SetMSGCaption - Método de acesso que recebe a atualização da informação MSGCaption
      Não usarei o método SetMSGCaption para atribuir informação a FMSGRodpae,
      vou apenas utilizar a propriedade }

    { método para atribuição\validação de valor }
    procedure _SetCurrentEvent(const AValue: String);
    procedure _SetForceClose  (const AValue: Boolean);
    procedure _SetDockControl (const AValue: TdxCustomDockControl; AXPos: Integer = 0; AYPos: Integer = 0);
    procedure _SetDockView    (const AValue: TdxCustomDockControl; ADirection: TDirection = lNone; AXPos: Integer = 0; AYPos: Integer = 0);
  public
    { Public declarations }
    REC_SHE_DEF: TREC_SHE_DEF;
    
    property CurrentEvent: String  read FCurrentEvent write _SetCurrentEvent;
    property ForceClose  : Boolean read FForceClose   write _SetForceClose;

    procedure _WM_CREATE(var Msg: TMessage); message WM_CREATE;
    procedure _SW_SHOWNOACTIVATE(var Msg: TMessage); message SW_SHOWNOACTIVATE;
    procedure _WM_ACTIVATE(var Msg: TMessage); message WM_ACTIVATE;
    procedure _WM_BEFORE_RESIZE(var Message: TMessage); message WM_ENTERSIZEMOVE;
    procedure _WM_AFTER_RESIZE(var Message: TMessage); message WM_EXITSIZEMOVE;

    Constructor Create(AOwner: TComponent;
                  const AIDEP: Integer;
                        AIDPK: LongInt;
                        AIDEV: LongInt;
                        ACDEV: Word;
                        AFBEV: String;
                        ATPEV: String); reintroduce; overload;

    Destructor  Destroy; override;

    class procedure _ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                              AIDEP    : Integer = 0;
                              AIDPK    : LongInt = 0;
                              AIDEV    : LongInt = 0;
                              ACDEV    : Word    = 0;
                              AFBEV    : String  = '';
                              ATPEV    : String  = '');

  end;

var
  FrmSHE_DEF_ADM: TFrmSHE_DEF_ADM;

  _Form: TStringList = Nil;
  _FormPesquisa: Boolean;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmSHE_DEF_ADM._WM_CREATE(var Msg: TMessage);
begin
  { DOCK MANAGER }
  _SetDockView(DPPrincipal1Rodape,lVertical,
  IFThen(DPPrincipal1Rodape.Tag = 0,0,DSPrincipal.Height - 350));

  { Título Principal }
  _SetDockView(DPPrincipal1Titulo,lVertical,DPPrincipal1Titulo.Tag);

  { Lado Esquerdo
  _SetDockView(VCDSPrincipal1LE,lHorizontal,
  IFThen(VCDSPrincipal1LE.Tag = 0,0,IFThen(Screen.Width > 864,500,300)));

  _SetDockView(TCDSPrincipal1LE,lHorizontal,
  IFThen(TCDSPrincipal1LE.Tag = 0,0,IFThen(Screen.Width > 864,500,300)));

  _SetDockView(DPPrincipal1LE1,lHorizontal,
  IFThen(DPPrincipal1LE1.Tag = 0,0,IFThen(Screen.Width  > 864,500,300)));

  _SetDockView(DPPrincipal1LE2,lHorizontal,
  IFThen(DPPrincipal1LE2.Tag = 0,0,IFThen(Screen.Width  > 864,500,300)));

  _SetDockView(DPPrincipal1LEB,lVertical,
  IFThen(DPPrincipal1LEB.Tag = 0,0,IFThen(Screen.Width  > 864,100,100)));  }

  { Lado Direito
  _SetDockView(VCDSPrincipal1LD,lHorizontal,
  IFThen(VCDSPrincipal1LD.Tag = 0,0,IFThen(Screen.Width > 864,300,300)));

  _SetDockView(TCDSPrincipal1LD,lHorizontal,
  IFThen(TCDSPrincipal1LD.Tag = 0,0,IFThen(Screen.Width > 864,300,300)));

  _SetDockView(DPPrincipal1LD1,lHorizontal,
  IFThen(DPPrincipal1LD1.Tag = 0,0,IFThen(Screen.Width  > 864,300,300)));

  _SetDockView(DPPrincipal1LD2,lHorizontal,
  IFThen(DPPrincipal1LD2.Tag = 0,0,IFThen(Screen.Width  > 864,300,300)));

  _SetDockView(DPPrincipal1LDB,lVertical,
  IFThen(DPPrincipal1LDB.Tag = 0,0,IFThen(Screen.Width  > 864,100,100)));   }

  { Consulta Principal }
//  _SetDockView(DPPrincipal1ConsultaTitulo,lVertical,DPPrincipal1ConsultaTitulo.Tag); { Título }
//  _SetDockView(DPPrincipal1ConsultaRodape,lVertical,DPPrincipal1ConsultaRodape.Tag); { Rodapé }




end;


procedure TFrmSHE_DEF_ADM._SW_SHOWNOACTIVATE(var Msg: TMessage);
          procedure _ProcessPaintMessages; // << not tested, pulled out of code
          var
            Msg: TMsg;
          begin
            while PeekMessage(msg, 0, WM_PAINT, WM_PAINT, PM_REMOVE) do
                  DispatchMessage(msg);
          end;
begin
  _ProcessPaintMessages;
end;

procedure TFrmSHE_DEF_ADM._WM_ACTIVATE(var Msg: TMessage);
begin
  if REC_SHE_DEF.FB_Event <> EmptyStr then
     with EEvent do
     try
       UnregisterEvents;

       Events.Add(TRIM(oREPZero(REC_SHE_DEF.FB_Event,'_',RECParametros.ID,3))); { Padrão }
       Events.Add(TRIM(oREPZero(REC_SHE_DEF.FB_Event,'_',RECUsuarios.ID  ,3))); { Login }

       if (ACTExecEvent.Tag > 0) and (ACTExecEvent.Tag <> RECUsuarios.ID) then
       Events.Add(TRIM(oREPZero(REC_SHE_DEF.FB_Event,'_',ACTExecEvent.Tag,3))); { Responsável }

       RegisterEvents;
     except
       on E: Exception do
       begin
         oErro(Application.Handle,'Falha ao tentar executar evento !' + #13 +
                                   REC_SHE_DEF.FB_Event   + '.' + #13 + #13 +
                                   E.Message              + '.' + #13 + #13 +
                                  'Favor entrar em contato com o administrador do sistema.');
       end;
     end;



//  ACTPesquisa.Execute;
end;

procedure TFrmSHE_DEF_ADM._WM_BEFORE_RESIZE(var Message: TMessage);
begin
  { Before Resize }
  DSPrincipal.Tag := DSPrincipal.Tag + 1;
end;

procedure TFrmSHE_DEF_ADM._WM_AFTER_RESIZE(var Message: TMessage);
begin
  { After Resize }
  if DSPrincipal.Tag >= 2 then
     try
//       oResize(DBGConsulta);
       Paint;
     finally
       DSPrincipal.Tag := 0;
       ACTPesquisa.Execute;
     end;
end;

procedure TFrmSHE_DEF_ADM._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmSHE_DEF_ADM._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

Class procedure TFrmSHE_DEF_ADM._ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                                          AIDEP : Integer = 0;
                                          AIDPK : LongInt = 0;
                                          AIDEV : LongInt = 0;
                                          ACDEV : Word    = 0;
                                          AFBEV : String  = '';
                                          ATPEV : String  = '');

var
  idxForm: Integer;
begin
  oLockWindowUpdate;
  
  if not Assigned(_Form) then
  begin
    _Form := TStringList.Create;
    _Form.Sorted := True;
  end;

  { Inicia pela pesquisa }
  _FormPesquisa := AFormPesquisa;

  if not _Form.Find(ClassName,idxForm) then
  idxForm := _Form.Add(ClassName);

  if ((TForm(AForm) = Nil) or (ACDEV = 1)) then
  TForm(AForm) := Self.Create (AOwner,
                               AIDEP ,
                               AIDPK ,
                               AIDEV ,
                               ACDEV ,
                               AFBEV ,
                               ATPEV);

  _Form.Objects[idxForm] := TObject(@AForm);

  TForm(AForm).FormStyle   := AFormStyle;
  if TForm(AForm).FormStyle = fsNormal then
  begin
    TForm(AForm).Visible := False;
    TForm(AForm).ShowModal;
  end else
  begin
    TForm(AForm).Visible := True;
    TForm(AForm).Show;
  end;
end;

Destructor TFrmSHE_DEF_ADM.Destroy;
type
  PtrForm = ^TForm;
var
  idxForm: Integer;
begin
  try
    if TForm(Self).Name <> EmptyStr then
    if Assigned(_Form) and _Form.Find(ClassName,idxForm) and (_Form.Objects[idxForm] <> Nil) then
       try
         { Eventos }
         try
           try
             EEvent.UnRegisterEvents;
           except
             on E: Exception do
             begin
               oErro(Application.Handle,'Falha ao tentar fechar eventos !'+#13+#13+
                                        'Error Code: '+E.Message+'.'      +#13+
                                         Caption+'.');
             end;
           end;

         finally
           try
             { Transação Principal }
             try
               oFTransact(TConsulta);
             except
               on E: Exception do
               begin
                 oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                          'Error Code: '+E.Message+'.'      +#13+
                                           Caption+'.');
               end;
             end;

           finally
             { record e afins }
             try
               Finalize(REC_SHE_DEF);
               FillChar(REC_SHE_DEF,SizeOf(REC_SHE_DEF),0);
             except
               on E: Exception do
               begin
                oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                         'Error Code: '+E.Message+'.'        +#13+
                                          Caption+'.');
               end;
             end;
           end;
         end;

       finally
         PtrForm(_Form.Objects[idxForm])^ := Nil;
         _Form.Objects[idxForm] := Nil;
       end;
  finally
    inherited;
  end;

  oDSiTrimWorkingSet;
end;

Constructor TFrmSHE_DEF_ADM.Create(AOwner: TComponent;
                              const AIDEP: Integer;
                                    AIDPK: LongInt;
                                    AIDEV: LongInt;
                                    ACDEV: Word;
                                    AFBEV: String;
                                    ATPEV: String);
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.AIDEP := INTTOSTR(AIDEP);
  REC_SHE_DEF.AIDPK := INTTOSTR(AIDPK);

  REC_SHE_DEF.AIDEV := INTTOSTR(AIDEV);
  REC_SHE_DEF.ACDEV := INTTOSTR(ACDEV);

  REC_SHE_DEF.AFBEV := Trim(AFBEV);
  REC_SHE_DEF.ATPEV := Trim(ATPEV);

  REC_SHE_DEF.FForceCaixa := False; { Caixa }

  inherited Create(AOwner);
end;

procedure TFrmSHE_DEF_ADM.FormCreate(Sender: TObject);
begin
  PostMessage( Handle, WM_ENTERSIZEMOVE, 0, 0 ); { Before Resize }
  REC_SHE_DEF.FrmPosition := Self.Position; { Página }
  SetCursorPos(500,Self.Top); { Cursor }

  { BAR MANAGER }
  BMPrincipal.Bars[1].BorderStyle := bbsNone; { Sistema }
  BMPrincipal.Bars[4].BorderStyle := bbsNone; { Pesquisa Período }

  { Grant Users }
  REC_SHE_DEF.FB_Event    := 'CAD_PRO';
  REC_SHE_DEF.GDescricao  := 'Produtos';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';

  if ((REC_SHE_DEF.GDescricao = EmptyStr) and (REC_SHE_DEF.GReferencia = EmptyStr) and (REC_SHE_DEF.GRegra = EmptyStr)) or
      (REC_SHE_DEF.GAdmin) then
  begin
    REC_SHE_DEF.GAppend := True;
    REC_SHE_DEF.GEdit   := True;
    REC_SHE_DEF.GDelete := True;
    REC_SHE_DEF.GView   := True;
    REC_SHE_DEF.GPrint  := True;
  end else
  begin
    oUSER(REC_SHE_DEF);
  end;

  { VER FEC }
  if not ForceClose then
  ForceClose := (not REC_SHE_DEF.GView); { Apenas quando parâmetro não setado }

  REC_SHE_DEF.FForceClose := ForceClose;
  REC_SHE_DEF.FAlert      := 'Usuário não Autorizado.' + #13 +
                             'Favor entrar em contato com o administrador do sistema.';

  { DEF FEC }
  if (not REC_SHE_DEF.FForceClose) and (REC_SHE_DEF.FForceCaixa) and (REC_SHE_DEF.AIDEV = 0) and
     (RECParametros.STCX <> 'Caixa Aberto') then
  begin
    ForceClose := True;
    REC_SHE_DEF.FForceClose := ForceClose;
    REC_SHE_DEF.FAlert      := 'Caixa não Aberto.' + #13 +
                               'Favor entrar em contato com o administrador do sistema.';
  end;


  { Executa }
  if not REC_SHE_DEF.FForceClose then
         PostMessage( Handle, WM_CREATE, 0, 0 ) else
  begin
    oErro(Application.Handle,'ACESSO NEGADO !' + #13 + #13 +
                              REC_SHE_DEF.FAlert);

    Self.Visible := False;
    Self.Height  := 0;
    Self.Width   := 0;

    PostMessage(Handle, WM_CLOSE, 0, 0);
  end;
end;

procedure TFrmSHE_DEF_ADM.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;

  PostMessage(Handle, SW_SHOWNOACTIVATE, 0, 0 );
end;

procedure TFrmSHE_DEF_ADM.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;

  PostMessage(Handle, WM_ACTIVATE, 0, 0 );
end;

procedure TFrmSHE_DEF_ADM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action  := caFree;
  OnClose := Nil;
end;

procedure TFrmSHE_DEF_ADM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: Close; //ACTCancela.Execute;
       vk_return: if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);

       38       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext(ActiveControl,False,True);

       40       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);
  end;
end;

procedure TFrmSHE_DEF_ADM.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #5 then
  {[Ctrl+E]} else
  if key = #8 then
  {[Ctrl+H]} else
  if key = #9 then
  {[Ctrl+I]} else
  if key = #16 then
  ACTRelatorios.Execute else
  if key = #19 then
  {[Ctrl+S]} else
  if key = #22 then
  {[Ctrl+V]};
end;

procedure TFrmSHE_DEF_ADM.FormPaint(Sender: TObject);
var
  AMainFormScreen: TRect;
  FHeight,
  FWidth ,
  H,
  T,
  B,
  L,R: Word;
begin
  if (not Showing) or (REC_SHE_DEF.FForceClose) then
  Exit;

  { Ajusta o Form para o tamanho da area livre do MainForm }
  GetWindowRect(FrmPrincipal.ClientHandle,AMainFormScreen);

  T := AMainFormScreen.Top;
  B := AMainFormScreen.Bottom;
  L := AMainFormScreen.Left;
  R := AMainFormScreen.Right;
  H := B;

  if REC_SHE_DEF.FrmPosition = poDesigned then
  begin
    if (HelpContext = 0) then { % da altura }
    if (AMainFormScreen.Bottom - AMainFormScreen.Top < Self.Height) then { Área livre menor que página }
    HelpContext := 95; { % }

    FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
    FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

    if (REC_SHE_DEF.FTop > 0) and (REC_SHE_DEF.FLeft > 0) then
    begin
      Top    := REC_SHE_DEF.FTop;
      Left   := REC_SHE_DEF.FLeft;

      if Top + Height > B then
      begin
        Top := Top - ((Top + Height) - B);
      end;

      if Left + Width > R then
      begin
        Left := Left - ((Left + Width) - R);
      end;

    end else
    begin
      if FHeight > 0 then Height := FHeight;
      if FWidth  > 0 then Width  := FWidth;

      if FormStyle = fsNormal then
      begin
        //if FHeight > 0 then
        Top := (T  + (H - Height)) div 2;

        //if FWidth > 0 then
        Left := ((R + L) - Width )  div 2;
      end else
      //if (FHeight > 0) or (FWidth  > 0) then
      begin
        Top  := ((B - T ) - Height) div 2;
        Left := ((R - L)  - Width ) div 2;
      end;
    end;
  end else
  if (REC_SHE_DEF.FWorkArea) and (FormStyle = fsNormal) then
  begin
    Top    := Screen.WorkAreaTop;
    Left   := Screen.WorkAreaLeft;
    Width  := Screen.WorkAreaWidth;
    Height := Screen.WorkAreaHeight;
  end else
  if (REC_SHE_DEF.FMainArea) and (FormStyle = fsNormal) then
  begin
    Top    := 0;
    Left   := 0;
    Width  := R - L - 5;
    Height := H - T - 5;
  end else
  if REC_SHE_DEF.FrmPosition = poDefault then
  begin
    Top    := IFThen(FormStyle = fsNormal,T,0);
    Left   := IFThen(FormStyle = fsNormal,L,0);
    Width  := IFThen(REC_SHE_DEF.FrmPosition = poDefault,R - L - 5,0);
    Height := IFThen(REC_SHE_DEF.FrmPosition = poDefault,H - T - 5,0);
  end;
end;

procedure TFrmSHE_DEF_ADM.FormResize(Sender: TObject);
begin
  if (not Showing) or (REC_SHE_DEF.FForceClose) then
  Exit;

  PostMessage(Handle, WM_ENTERSIZEMOVE , 0, 0 );
  
  { VER TAM TELA }
  if (REC_SHE_DEF.FWorkArea) and (Screen.Width > 1024) then
  begin
    REC_SHE_DEF.FWorkArea := False;
  end;

  if (REC_SHE_DEF.FMainArea) and (Screen.Width > 1366) then
  begin
    REC_SHE_DEF.FMainArea := False;
  end;

  if (REC_SHE_DEF.FWorkArea) or (REC_SHE_DEF.FMainArea) then
  begin
    HelpKeyword := '3';
    REC_SHE_DEF.FrmPosition := poDefault;
  end else

  if (HelpKeyword = '5') and (Screen.Width >= 1360) and (Screen.Width <= 1366) then {MainArea, mas sem desabilitar botões }
  begin
    REC_SHE_DEF.FrmPosition := poDefault;
  end;

  { VER DIM TELA }
  REC_SHE_DEF.FHeight := Self.Height;
  REC_SHE_DEF.FWidth  := Self.Width ;

  if RECUsuarios.Id = 0 then
  if Pos('APP',Self.Caption) = 0 then
  Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_DEF.FWidth)  + ' x ' + IntToStr(REC_SHE_DEF.FHeight) + '. ' + Self.Caption;

  { DOCK SITE MANAGER }
  _SetDockView(DPPrincipal1Rodape,lVertical,
  IFThen(DPPrincipal1Rodape.Tag = 0,0,DSPrincipal.Height - 350));

//  _SetDockControl(DPPrincipal1ConsultaRodape,DPPrincipal1ConsultaRodape.Tag + 5);



  { DSPrincpal }
  TCDSPrincipal.Height := DPPrincipal1.Height - 1;
  TCDSPrincipal.Width  := DPPrincipal1.Width  - 1;






  PostMessage( Handle, WM_EXITSIZEMOVE , 0, 0 );

  { Focused }
  if (BEPSQ_CAD.Visible <> ivNever) and (_FormPesquisa) then
      BEPSQ_CAD.SetFocus(False) else

  if (Showing) then
  begin
//    PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
  //  TWinControl(DBGConsulta).SetFocus;
  end;

end;

procedure TFrmSHE_DEF_ADM._SetDockControl(const AValue: TdxCustomDockControl; AXPos: Integer = 0; AYPos: Integer = 0);
begin
  if AValue <> Nil then
  begin
    if FDockControl <> AValue then
       FDockControl := AValue;

    if FDockControl = AValue then
    if TdxCustomDockControl(AValue).Tag <> AXPos then
    begin
      TdxCustomDockControl(AValue).Tag    := AXPos;
      TdxCustomDockControl(AValue).Height := AXPos;

      AValue.OnUpdateDockZones(AValue,Avalue.DockZones);
    end;
  end;
end;

procedure TFrmSHE_DEF_ADM._SetDockView(const AValue: TdxCustomDockControl; ADirection: TDirection = lNone; AXPos: Integer = 0; AYPos: Integer = 0);
begin
  if AValue <> Nil then
  begin
    if FDockControl <> AValue then
       FDockControl := AValue;

    if (AXPos = 0) and (AYPos = 0) then
    begin
      TdxCustomDockControl(AValue).Tag     := 0;
      TdxCustomDockControl(AValue).Visible := False;
    end;

    TdxCustomDockControl(AValue).Tag     := AXPos;
    TdxCustomDockControl(AValue).Visible := not (TdxCustomDockControl(AValue).Tag = 0);

    if ADirection = lVertical then
    begin
      TdxCustomDockControl(AValue).Height := TdxCustomDockControl(AValue).Tag;
    end else

    if ADirection = lHorizontal then
    begin
      TdxCustomDockControl(AValue).Width := TdxCustomDockControl(AValue).Tag;
    end;
  end;
end;

procedure TFrmSHE_DEF_ADM.DPPrincipal1RodapeLDBUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  I: Integer;
begin
  if Showing then
  begin
    I := 0;
    while I < AZones.Count do
    begin
      caption :=  TdxCustomDockControl(TdxZone(AZones.Items[I]).Owner).Name;


      if TdxZone(AZones.Items[I]).Owner = Sender then { usar somente quando fixo }
      begin
        Sender.Height:= Sender.Tag;
        Break;
      end;

      if (TdxZone(AZones.Items[I]).Direction = zdVertical)   or (TdxZone(AZones.Items[I]).Direction = zdUndefined) then
          TdxCustomDockControl(TdxZone(AZones.Items[I]).Owner).Left := TdxCustomDockControl(TdxZone(AZones.Items[I]).Owner).Left - 1;

      if (TdxZone(AZones.Items[I]).Direction = zdHorizontal) or (TdxZone(AZones.Items[I]).Direction = zdUndefined) then
          TdxCustomDockControl(TdxZone(AZones.Items[I]).Owner).Top := TdxCustomDockControl(TdxZone(AZones.Items[I]).Owner).Top - 1;

      Inc(I);
    end;
  end;
end;

procedure TFrmSHE_DEF_ADM.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Consulta);
end;

procedure TFrmSHE_DEF_ADM.ACTMAppendExecute(Sender: TObject);
begin
  if (not ACTMAppend.Enabled) or (not ACTMAppend.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_ADM.ACTMEditExecute(Sender: TObject);
begin
  if (not ACTMEdit.Enabled) or (not ACTMEdit.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_ADM.ACTMDeleteExecute(Sender: TObject);
begin
  if (not ACTMDelete.Enabled) or (not ACTMDelete.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_ADM.ACTMPostExecute(Sender: TObject);
begin
  if (not ACTMPost.Enabled) or (not ACTMPost.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_ADM.ACTMCancelExecute(Sender: TObject);
begin
  if (not ACTMCancel.Enabled) or (not ACTMCancel.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_ADM.ACTSaidaExecute(Sender: TObject);
begin
  REC_SHE_DEF.PSQ_OK := False;
  Close;
end;

procedure TFrmSHE_DEF_ADM.ACTEAppendExecute(Sender: TObject);
begin
  if (not ACTEAppend.Enabled) or (not ACTEAppend.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_ADM.ACTEEditExecute(Sender: TObject);
begin
  if (not ACTEEdit.Enabled) or (not ACTEEdit.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_ADM.ACTEDeleteExecute(Sender: TObject);
begin
  if (not ACTEDelete.Enabled) or (not ACTEDelete.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_ADM.ACTEPostExecute(Sender: TObject);
begin
  if (not ACTEPost.Enabled) or (not ACTEPost.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_ADM.ACTECancelExecute(Sender: TObject);
begin
  if (not ACTECancel.Enabled) or (not ACTECancel.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_ADM.ACTPesquisaExecute(Sender: TObject);
begin
  { Reinicia }
  oCTransact(TConsulta);
  oOTransact(TConsulta);

  { Reset Filter }
//  DBGConsulta.Filter.Clear; { Pedidos }

  { Texto Pesquisa }
  REC_SHE_DEF.PSQ_FB_FD := BLBPSQ_CAD_MENU.Description; { Campo }
  REC_SHE_DEF.PSQ_FB_VD := BEPSQ_CAD.Text;
  REC_SHE_DEF.PSQ_FB_PK := BEPSQ_CAD.Text;
  REC_SHE_DEF.PSQ_FB_FK := EmptyStr;

  { Campos Coringas }
  REC_SHE_DEF.PSQ_FB_EP := EmptyStr; { Empresa }
  REC_SHE_DEF.PSQ_FB_CF := EmptyStr; { Fornecedor }
  REC_SHE_DEF.PSQ_FB_CP := EmptyStr; { Artigo }
  REC_SHE_DEF.PSQ_FB_CD := EmptyStr; { Código }
  REC_SHE_DEF.PSQ_FB_BC := EmptyStr; { Barcode }
  REC_SHE_DEF.PSQ_FB_NU := EmptyStr; { NCM }
  REC_SHE_DEF.PSQ_FB_NO := EmptyStr; { Descrição }
  REC_SHE_DEF.PSQ_FB_GD := EmptyStr; { Grade }

  { Lista Digitada }
  if REC_SHE_DEF.PSQ_FB_SL = Nil then
  REC_SHE_DEF.PSQ_FB_SL := TStringList.Create else
  REC_SHE_DEF.PSQ_FB_SL.Clear;

  if (REC_SHE_DEF.PSQ_FB_VD <> EmptyStr) and (REC_SHE_DEF.PSQ_FB_VD <> '0') then
  begin
    { Capturar as palavras separadamente }
    While Length(REC_SHE_DEF.PSQ_FB_VD) > 0 do
    begin
      REC_SHE_DEF.PSQ_FB_FK := Trim(Fetch(REC_SHE_DEF.PSQ_FB_VD  ,' '));
      REC_SHE_DEF.PSQ_FB_FK := oStrTran(REC_SHE_DEF.PSQ_FB_FK,'+',' ');
      REC_SHE_DEF.PSQ_FB_SL.Add(REC_SHE_DEF.PSQ_FB_FK);

      with SQLConsulta do
      begin
        { Âncora de Artigos }
        if (Pos(REC_SHE_DEF.PSQ_FB_PD,'ProdutosPedidos') > 0) then
        if (REC_SHE_DEF.PSQ_FB_CP = EmptyStr) and (Pos('.',REC_SHE_DEF.PSQ_FB_SL.Strings[0]) > 0) then { somente na primeira palavra }
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT   FIRST 1 PK.ID FROM CAD_PRO AS PK');
          SQL.Add('WHERE    PK.ARTIGO LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');
          SQL.Add('ORDER BY 1');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.PSQ_FB_CP := REC_SHE_DEF.PSQ_FB_FK;
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,''); { Retira conteúdo da pesquisa principal }
          end;
        end else
        begin
          { Âncora de Revendedores }
          if (Pos(REC_SHE_DEF.PSQ_FB_PD,'ProdutosPedidos') > 0) then
          if (REC_SHE_DEF.PSQ_FB_EP = EmptyStr) and (Length(REC_SHE_DEF.PSQ_FB_PK) > 2)  then
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT   FIRST 1 PK.ID FROM TAB_PAR_SIS AS PK');
            SQL.Add('WHERE    PK.FANTASIA LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');
            SQL.Add('ORDER BY 1');
            ExecQuery;

            if not Eof then
            begin
              REC_SHE_DEF.PSQ_FB_EP := REC_SHE_DEF.PSQ_FB_FK;
              REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,''); { Retira conteúdo da pesquisa principal }
            end
          end;

          { Âncora de Fabricantes }
          if (Pos(REC_SHE_DEF.PSQ_FB_PD,'ProdutosPedidos') > 0) then
          if (REC_SHE_DEF.PSQ_FB_CF = EmptyStr) and (Length(REC_SHE_DEF.PSQ_FB_PK) > 2)  then
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT   FIRST 1 PK.ID FROM CAD_FOR AS PK');
            SQL.Add('WHERE    PK.FANTASIA LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');
            SQL.Add('ORDER BY 1');
            ExecQuery;

            if not Eof then
            begin
              REC_SHE_DEF.PSQ_FB_CF := REC_SHE_DEF.PSQ_FB_FK;
              REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,''); { Retira conteúdo da pesquisa principal }
            end;
          end;

          { Âncora de Situações }
          if (REC_SHE_DEF.PSQ_FB_ST = EmptyStr) and (Length(REC_SHE_DEF.PSQ_FB_PK) > 2)  then
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT FIRST 1 PK.ID FROM TAB_STA_API AS PK');
            SQL.Add('WHERE  PK.DESCRICAO  LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');

            SQL.Add('UNION');
            SQL.Add('SELECT FIRST 1 PK.ID FROM TAB_STA_CAD AS PK');
            SQL.Add('WHERE  PK.DESCRICAO  LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');

            SQL.Add('UNION');
            SQL.Add('SELECT FIRST 1 PK.ID FROM TAB_STA_EST AS PK');
            SQL.Add('WHERE  PK.DESCRICAO  LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');

            SQL.Add('UNION');
            SQL.Add('SELECT FIRST 1 PK.ID FROM TAB_STA_FIN AS PK');
            SQL.Add('WHERE  PK.DESCRICAO  LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');

            SQL.Add('UNION');
            SQL.Add('SELECT FIRST 1 PK.ID FROM TAB_STA_FIS AS PK');
            SQL.Add('WHERE  PK.DESCRICAO  LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');

            SQL.Add('UNION');
            SQL.Add('SELECT FIRST 1 PK.ID FROM TAB_STA_PED AS PK');
            SQL.Add('WHERE  PK.DESCRICAO  LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');

            SQL.Add('UNION');
            SQL.Add('SELECT FIRST 1 PK.ID FROM TAB_STA_PRO AS PK');
            SQL.Add('WHERE  PK.DESCRICAO  LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');
            ExecQuery;

            if not Eof then
            begin
              REC_SHE_DEF.PSQ_FB_ST := REC_SHE_DEF.PSQ_FB_FK;
              REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,''); { Retira conteúdo da pesquisa principal }
            end;
          end;
        end;
      end;
    end;

    { Âncora de grade de produtos }
    if (Pos(REC_SHE_DEF.PSQ_FB_PD,'ProdutosPedidos') > 0) then
    if (REC_SHE_DEF.psq_FB_PK <> EmptyStr) then { somente quando último }
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   FIRST 1 PK.ID FROM CAD_PRO AS PK');
      SQL.Add('WHERE    PK.DGCP CONTAINING ''' + REC_SHE_DEF.PSQ_FB_PK + '''');
      SQL.Add('ORDER BY 1');
      ExecQuery;

      if not Eof then
      begin
        REC_SHE_DEF.PSQ_FB_GD := REC_SHE_DEF.PSQ_FB_FK;
        REC_SHE_DEF.PSQ_FB_PK := oStrTran(oStrTran(REC_SHE_DEF.PSQ_FB_PK,'+',' '),REC_SHE_DEF.PSQ_FB_FK,''); { Retira conteúdo da pesquisa principal }
      end;
    end;
  end;
end;

procedure TFrmSHE_DEF_ADM.ACTPSQ_OKExecute(Sender: TObject);
begin
  if ACTPesquisa.Enabled then
  begin
    if Sender.ClassType = TdxBarLargeButton then
    begin
      BLBPSQ_CAD_MENU.Description := TdxBarLargeButton(Sender).Description;
      BLBPSQ_CAD_MENU.Caption     := TdxBarLargeButton(Sender).Caption;
      BLBPSQ_CAD_MENU.Hint        := TdxBarLargeButton(Sender).Hint;
      BLBPSQ_CAD_MENU.Tag         := TdxBarLargeButton(Sender).Tag;

      BEPSQ_CAD.SetFocus(False);
    end;

    if Sender.ClassType = TdxBarButton then
    begin
      BBPSQ_PER_MENU.Description := TdxBarButton(Sender).Description;
      BBPSQ_PER_MENU.Caption     := TdxBarButton(Sender).Caption;
      BBPSQ_PER_MENU.Hint        := TdxBarButton(Sender).Hint;
      BBPSQ_PER_MENU.Tag         := TdxBarButton(Sender).Tag;
    end;

    if ((BEPSQ_CAD.Text = EmptyStr) and
       ((BDPSQ_PER_INI.Date <= 0  ) or (BDPSQ_PER_FIM.Date <= 0))) then
    Abort;

    if BDPSQ_PER_FIM.Date > 0 then
    if BDPSQ_PER_INI.Date > BDPSQ_PER_FIM.Date then
       oException(Nil,'DATA INICIAL não pode ser maior que DATA FINAL !');

    ACTPesquisa.Execute;
  end;
end;

procedure TFrmSHE_DEF_ADM.ACTPSQ_FOCUSExecute(Sender: TObject);
begin
  if (ACTPesquisa.Enabled) and (BEPSQ_CAD.Enabled) then
  BEPSQ_CAD.SetFocus(False);
end;

procedure TFrmSHE_DEF_ADM.BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    BEPSQ_CAD.Text := Trim(BEPSQ_CAD.Text);
    with REC_SHE_DEF do
    begin
      if oBSONumero(BEPSQ_CAD.Text) then
      begin
        PSQ_WHERE := ' = ';
        PSQ_LKINI := '''' ;
        PSQ_LKFIM := '''' ;
      end else
      begin
        PSQ_WHERE := ' LIKE ';
        PSQ_LKINI := '''' ;
        PSQ_LKFIM := '%''';
      end;
    end;

    ACTPesquisa.Tag := 1;
    ACTPSQ_OK.Execute;
  end else

  if key = VK_DOWN then
  begin
    if (ACTPesquisa.Enabled) and (BEPSQ_CAD.Enabled) and (DBGConsulta.Enabled) then
    begin
      PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(DBGConsulta).SetFocus;
    end;
  end else

  if key = vk_escape then
  ACTSaida.Execute;
end;

procedure TFrmSHE_DEF_ADM.BEPSQ_CADCurChange(Sender: TObject);
begin
  BEPSQ_CAD.Text := BEPSQ_CAD.CurText;
end;

procedure TFrmSHE_DEF_ADM.BDPSQ_PER_INICurChange(Sender: TObject);
begin
  BDPSQ_PER_INI.Date := BDPSQ_PER_INI.CurDate;
end;

procedure TFrmSHE_DEF_ADM.BDPSQ_PER_FIMCurChange(Sender: TObject);
begin
  BDPSQ_PER_FIM.Date := BDPSQ_PER_FIM.CurDate;
end;

procedure TFrmSHE_DEF_ADM.ACTExecEventExecute(Sender: TObject);
var
  i: word;
begin
  if REC_SHE_DEF.FB_Event <> EmptyStr then
     try
       oOTransact(TEvent);

       SPEvent.Close;
       SPEvent.StoredProcName := 'SP_FB_EVENT';
       SPEvent.Prepare;

       for i := 0 to SPEvent.ParamCount - 1 do
       SPEvent.Params[i].Value := Null;

       for i := 0 to EEvent.Events.Count - 1 do
       SPEvent.Params[i].Value := EEvent.Events.Strings[i];
       SPEvent.ExecProc;

       oCTransact(TEvent);
     except
       on E: Exception do
       begin
         oCTransact(TEvent,ltRollback);
         oErro(Application.Handle,'Falha ao tentar executar evento !' + #13 +
                                   REC_SHE_DEF.FB_Event   + '.' + #13 + #13 +
                                   E.Message              + '.' + #13 + #13 + #13 +
                                  'Favor entrar em contato com o administrador do sistema.');
       end;
     end;
end;

procedure TFrmSHE_DEF_ADM.EEventEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  oRefresh(Consulta);
end;

procedure TFrmSHE_DEF_ADM.ConsultaAfterOpen(DataSet: TDataSet);
begin
  if Consulta.RecNo = 0 then
  begin
    DPPrincipal1Consulta1.Caption := 'Registro(s) não Encontrado(s)';
    BEPSQ_CAD.SetFocus(False);
  end else

  if Showing then
  begin
    DPPrincipal1Consulta1.Caption := 'Consulta';

    PostMessage(DBGConsulta.Handle, WM_SETFOCUS, 0, 0);
    TWinControl(DBGConsulta).SetFocus;
  end;
end;

procedure TFrmSHE_DEF_ADM.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  DBGConsulta.PreviewFont.Color := clGrayText;
  DBGConsulta.PreviewFont.Name  := 'Segoe UI';
  DBGConsulta.PreviewFont.Size  := 9;

  if ANode.Selected then
  begin
    AColor      := $00750000;//$00400000;
    AFont.Color := clHighlightText;
  end;

  if ASelected then
  begin
    AColor      := clHighlight; //$00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;

procedure TFrmSHE_DEF_ADM.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
       VK_insert: ACTEAppend.Execute;
       vk_return: ACTEEdit.Execute;
       VK_delete: ACTEDelete.Execute;
       VK_escape: ACTECancel.Execute;
  end;
end;

end.
