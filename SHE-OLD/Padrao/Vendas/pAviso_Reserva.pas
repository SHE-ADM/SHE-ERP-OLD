unit pAviso_Reserva;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefaultConsultaGrid, cxGraphics, dxExEdtr, DB, IBCustomDataSet,
  ImgList, ActnList, dxDockControl, dxBar, dxBarExtItems, IBEvents,
  IBStoredProc, IBSQL, IBDatabase, IBQuery, ComCtrls, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDockPanel, ExtCtrls, dxPageControl, cxControls,
  dxStatusBar, dxDBTLCl, dxGrClms, DateUtils;

type
  TFrmAviso_Reserva = class(TFrmDefaultConsultaGrid)
    CadastroC_ID: TIntegerField;
    DBGConsultaC_ID: TdxDBGridColumn;
    BLBProrrogar: TdxBarLargeButton;
    ACTProrrogar: TAction;
    CadastroCDPV: TIntegerField;
    CadastroDEPV: TIBStringField;
    CadastroDTPV: TDateField;
    CadastroQTDE: TIBBCDField;
    CadastroQTRL: TIntegerField;
    CadastroTCDE: TIBBCDField;
    CadastroDTPR: TDateField;
    CadastroDTFI: TDateField;
    CadastroPZFI: TLargeintField;
    CadastroAVCL: TSmallintField;
    CadastroDECL: TIBStringField;
    CadastroDECR: TIBStringField;
    CadastroDECV: TIBStringField;
    CadastroSTFI: TIBStringField;
    DBGConsultaDEPV: TdxDBGridColumn;
    DBGConsultaDTPV: TdxDBGridColumn;
    DBGConsultaQTDE: TdxDBGridColumn;
    DBGConsultaQTRL: TdxDBGridColumn;
    DBGConsultaTCDE: TdxDBGridColumn;
    DBGConsultaDTFI: TdxDBGridColumn;
    DBGConsultaPZFI: TdxDBGridColumn;
    DBGConsultaAVCL: TdxDBGridColumn;
    DBGConsultaDECL: TdxDBGridColumn;
    DBGConsultaDECR: TdxDBGridColumn;
    DBGConsultaDECV: TdxDBGridColumn;
    DBGConsultaSTFI: TdxDBGridColumn;
    CadastroID: TIntegerField;
    CadastroIDEP: TSmallintField;
    CadastroIDCL: TIntegerField;
    CadastroIDCV: TIntegerField;
    CadastroIDCR: TIntegerField;
    CadastroPZPV: TLargeintField;
    DBGConsultaPZPV: TdxDBGridColumn;
    CadastroUF: TIBStringField;
    DBGConsultaUF: TdxDBGridMaskColumn;
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure ACTProrrogarExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CadastroAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAviso_Reserva: TFrmAviso_Reserva;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmAviso_Reserva.FormCreate(Sender: TObject);
begin
  REC_SHE_DEF.FB_Event := 'CTR_PED';
  REC_SHE_DEF.GAdmin  := True;
  inherited;

  with Cadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM VW_PED_VEN_AVR AS PK');
    SQL.Add('WHERE  PK.IDEP = '''+RECParametros.EP_ID+'''');

    if RECUsuarios.Grupo = 'VEN' then
    SQL.Add('AND      PK.IDCV = '''+RECUsuarios.Id+'''');

    SQL.Add('ORDER BY PK.DTFI');
    Prepare;
    Open;
  end;
end;

procedure TFrmAviso_Reserva.CadastroCalcFields(DataSet: TDataSet);
begin
  CadastroC_ID.Value := Cadastro.RecNo;
end;

procedure TFrmAviso_Reserva.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGConsultaC_ID.Index] mod 2 = 0 then
       AColor := $00EFF0F1;

    if (AColumn = DBGConsultaDTFI) or (AColumn = DBGConsultaPZFI) then
        if ANode.Values[DBGConsultaPZFI.Index] < 1 then
        begin
          AFont.Style := [fsBold];
          AFont.Color := clWhite;
          AColor := $000024B3;
        end else
        if (ANode.Values[DBGConsultaPZFI.Index] >= 1) and (ANode.Values[DBGConsultaPZFI.Index] <= 3) then
        begin
          AFont.Style := [];
          AFont.Color := clBlack;
          AColor := clInfoBk;
        end;

    if  AColumn = DBGConsultaSTFI then
        if Pos('AGU',ANode.Values[DBGConsultaSTFI.Index]) > 0 then
        begin
          AColor      := $0080FFFF;
          AFont.Color := clBlack;
        end else
        begin
          AFont.Color := clWhite;
          AColor := clGray;
        end;
      end
end;

procedure TFrmAviso_Reserva.ACTProrrogarExecute(Sender: TObject);
begin
  if oYesNo(handle,'Prorrogar Cancelamento ?'+#13+
                   'Pedido Nº '+CadastroDEPV.AsString+' ?') = mrNo then
     Abort;

  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('SET   ROM_DTPR = '''+FormatDateTime('mm/dd/yy',IncDay(Date,7))+'''');
      SQL.Add('WHERE ID = '''+CadastroCDPV.AsString+'''');
      ExecQuery;
    end;
    oCTransact(TEdicao);
  finally
    oRefresh(Cadastro);
  end;
end;

procedure TFrmAviso_Reserva.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Cadastro.First;
  if RECUsuarios.Grupo = 'VEN' then
  begin
    if (Cadastro.Locate('PZFI',0,[])) or (Cadastro.Locate('PZFI',1,[])) then
        oAviso(handle,'Existem pedidos agendados para cancelamento automático.'+#13+
                      'Favor entrar em contato com o gerente comercial.');
  end else
  if (ACTProrrogar.Enabled) and (Cadastro.Locate('PZFI',0,[])) then
  begin
    if oYesNo(handle,'Existem pedidos agendados para cancelamento automático.'+#13+
                     'Deseja realmente sair ?') = mrNo then
       Abort;

    try
      oOTransact(TEdicao);
      Cadastro.First;
      while not Cadastro.Eof do
      begin
        if CadastroPZFI.AsInteger = 0 then
           with SQLEdicao do
           begin
             Close;
             SQL.Clear;
             SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
             SQL.Add('SET   ROM_STA  = 1,');
             SQL.Add('      ROM_STFI = ''CANCELADO'',');
             SQL.Add('      ROM_DCAN = '''+FormatDateTime('mm/dd/yy',Date)+''',');
             SQL.Add('      ROM_OBSC = ''Cancelamento Automático - '+FormatDateTime('mm/dd/yy hh:mm',Now)+'''');
             SQL.Add('WHERE ID       = '''+CadastroCDPV.AsString+'''');
             ExecQuery;

             Close;
             SQL.Clear;
             SQL.Add('DELETE FROM CAD_PRO_RES');
             SQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID     +'''');
             SQL.Add('AND    IDPK = '''+CadastroCDPV.AsString+'''');
             ExecQuery;

             Close;
             SQL.Clear;
             SQL.Add('DELETE FROM CAD_PRO_SEP');
             SQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID     +'''');
             SQL.Add('AND    CDPV = '''+CadastroCDPV.AsString+'''');
             ExecQuery;

             Close;
             SQL.Clear;
             SQL.Add('UPDATE CAD_PRO_EST');
             SQL.Add('SET    EST_CDPD = NULL,');
             SQL.Add('       IDSP     = NULL,');
             SQL.Add('       CDSP     = NULL,');
             SQL.Add('       DTSP     = NULL ');

             SQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID     +'''');
             SQL.Add('AND    CDPV = '''+CadastroCDPV.AsString+'''');
             SQL.Add('AND    REOP = ''E''');
             ExecQuery;
           end;
        Cadastro.Next;
      end;
      oCTransact(TEdicao);
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRollback);
        oException(Nil    ,'Falha ao tentar executar o cancelamento automático !'   +#13+
                           'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                           'Erro: '+E.Message);
      end;
    end;
  end;
end;

procedure TFrmAviso_Reserva.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ACTProrrogar.Enabled := (RECUsuarios.Grupo = 'GER') and
                          (Cadastro.Locate('PZFI',0,[]) or (Cadastro.Locate('PZFI',1,[])));
end;

end.
