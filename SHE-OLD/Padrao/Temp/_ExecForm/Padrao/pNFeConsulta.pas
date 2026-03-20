unit pNFeConsulta;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, StdCtrls,
  dxCntner, dxEditor, dxEdLib, dxDBELib, rxSpeedbar, IBEvents, dxExEdtr,
  RXCtrls, dxTL, dxDBCtrl, dxDBGrid, cxGraphics, cxControls, dxStatusBar,
  dxDBTLCl, dxGrClms, IBSQL, ActnList, rxAnimate, rxGIFCtrl;

type
  TFrmNFeConsulta = class(TFrmPadr3)
    GBFavorecido: TGroupBox;
    LACliente: TLabel;
    DTSConsulta: TDataSource;
    GBNotaFiscal: TGroupBox;
    LANotaFiscal: TLabel;
    LADTEmissao: TLabel;
    LAChave: TLabel;
    LAProtocolo: TLabel;
    EDNotaFiscal: TdxMaskEdit;
    DBCliente: TdxDBEdit;
    DBVendedor: TdxDBEdit;
    LAVendedor: TLabel;
    LADTSaida: TLabel;
    LAFinalidade: TLabel;
    DBRepresentante: TdxDBEdit;
    LARepresentante: TLabel;
    PNLOutros: TPanel;
    GBTransporte: TGroupBox;
    LAFrete: TLabel;
    LAVolume: TLabel;
    LAPesoB: TLabel;
    DBFrete: TdxDBEdit;
    DBVolume: TdxDBEdit;
    DBPesoB: TdxDBEdit;
    DBPesoL: TdxDBEdit;
    LAPesoL: TLabel;
    GBInfoNFe: TGroupBox;
    DBInfoNFe: TdxDBMemo;
    GroupBox3: TGroupBox;
    LACobranca: TLabel;
    LABanco: TLabel;
    DBCobranca: TdxDBEdit;
    DBBanco: TdxDBEdit;
    GBRecebimentos: TGroupBox;
    DBDTEmissao: TdxDBEdit;
    DBDTSaida: TdxDBEdit;
    DBCFOP: TdxDBEdit;
    DBNatureza: TdxDBEdit;
    DBChave: TdxDBEdit;
    DBAutorizado: TdxDBEdit;
    DBCancelado: TdxDBEdit;
    DBGRecebimentos: TdxDBGrid;
    PNLPedidos: TPanel;
    GBPedido: TGroupBox;
    LAPedido: TLabel;
    LAPrazo: TLabel;
    LADTPedido: TLabel;
    LASTPedido: TLabel;
    Label1: TLabel;
    DBPedido: TdxDBEdit;
    DBPrazo: TdxDBEdit;
    DBDTPedido: TdxDBEdit;
    DBSTPedido: TdxDBEdit;
    GBInfoPed: TGroupBox;
    DBInfoPed: TdxDBMemo;
    DBTPPedido: TdxDBEdit;
    GBRomaneio: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    DBGRecebimentosTitulo: TdxDBGridMaskColumn;
    DBGRecebimentosDTVencto: TdxDBGridDateColumn;
    DBGRecebimentosVLTitulo: TdxDBGridCurrencyColumn;
    DBGRecebimentosSTTitulo: TdxDBGridMaskColumn;
    DBDuplicata: TdxDBEdit;
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDNotaFiscalValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure _WM_AFTER_ACTIVATE(var Msg: TMessage); message WM_AFTER_ACTIVATE;
  end;

var
  FrmNFeConsulta: TFrmNFeConsulta;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TFrmNFECONSULTA._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
  inherited;
end;

procedure TFrmNFeConsulta.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := EmptyStr; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GAdmin := True; { Grant }
  inherited;
end;

procedure TFrmNFeConsulta.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmNFeConsulta := Nil;
end;

procedure TFrmNFeConsulta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_escape then
  Close;
end;

procedure TFrmNFeConsulta.EDNotaFiscalValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
var
  i: Word;
begin
  with Consulta do
  if oBSONumero(EDNotaFiscal.Text) then
  begin
    SQL.Clear;
    for i := 1 to 5 do
    begin
      SQL.Add('SELECT NFe.NFE_CDNF "NotaFiscal",NFe.NFE_DEMI "DTEmissao",NFe.NFE_DSAI "DTSaida",');
      SQL.Add('       NFe.NFE_CHAV "Chave",NFe.NFE_PROT "PROTAutoricado",NFe.NFE_PROC "PROTCancelado",NFe.NFE_OBSE "InfoNFe",');
      SQL.Add('       CFOP.NAT_TIPO "Finalidade",''( ''||CFOP.NAT_CNAT||'' ) ''||CFOP.NAT_DNAT "CFOP",');
      SQL.Add('       NFe.NFE_DTRA||'' (''||');
      SQL.Add('       CASE T.NFE_MODFRETE');
      SQL.Add('            WHEN ''0'' THEN ''REMETENTE (CIF)''');
      SQL.Add('            WHEN ''1'' THEN ''DESTINATÁRIO (FOB)''');
      SQL.Add('            WHEN ''2'' THEN ''TERCEIROS''');
      SQL.Add('            WHEN ''3'' THEN ''REMETENTE (PRÓPRIO)''');
      SQL.Add('            WHEN ''4'' THEN ''DESTINATÁRIO (PRÓPRIO)''');
      SQL.Add('            WHEN ''4'' THEN ''DESTINATÁRIO (PRÓPRIO)''');
      SQL.Add('            ELSE ''Desconhecido ! Favor entrar em contato com o administrador do sistema.''');
      SQL.Add('       END||'' )'' "Transportadora",');
      SQL.Add('       T.NFE_QVOL||'' ''||T.NFE_ESP "Volume",T.NFE_PSBR "PesoB",T.NFE_PSLQ "PesoL",');
      SQL.Add('       ''( ''||C.Id||'' ) ''||C.CLI_FANT||'' - ''||C.CLI_RAZA "Favorecido",');
      SQL.Add('       ''( ''||VEN.USU_CUSU||'' ) ''||VEN.USU_DUSU "Vendedor",');
      SQL.Add('       ''( ''||REP.Id||'' ) ''||REP.REP_FANT "Representante",');
      SQL.Add('       P.ROM_DERO "Pedido",P.ROM_DROM "DTPedido",P.ROM_STPD "TPPedido",P.ROM_STCO "TPCobranca",P.ROM_OBSE "InfoPed",P.ROM_DSEP "Revisor",');
      SQL.Add('       Prz.PAG_PARC||'' Parcelas ''||''( ''||Prz.PAG_DPAG||'' )'' "Prazo",');
      SQL.Add('       R.ID "Romaneio",R.ROM_DROM "DTRomaneio",');
      SQL.Add('       ''( ''||FB.FIN_CDDP||'' ) ''||FB.FIN_DTDP "EnvDup",');
      SQL.Add('       ''( ''||FB.FIN_CDBC||'' ) ''||FB.FIN_DTBC "EnvBan",');
      SQL.Add('       FB.FIN_STDO "Cobranca",FB.FIN_DOCT "Titulo",FB.FIN_DVEN "DTVencto",FB.FIN_VALO "VLTitulo",FB.FIN_STFI "STTitulo"');
      SQL.Add('FROM '+oREPZero('nfe_cab','_',i,3)+' AS NFe');
      SQL.Add('JOIN '+oREPZero('nfe_tra','_',i,3)+' AS T ON (T.NFE_CCAB = NFe.Id)');
      SQL.Add('JOIN   TAB_NAT AS CFOP ON (CFOP.NAT_CNAT = NFe.NFE_CNAT)');
      SQL.Add('JOIN   CAD_CLI AS C    ON (C.Id          = NFe.NFE_CFAV)');
      SQL.Add('LEFT   OUTER JOIN '+oREPZero('ped_ven_cab','_',i,3)+' AS P ON (P.ROM_CDNF = NFe.NFE_CDNF)');
      SQL.Add('LEFT   OUTER JOIN CAD_USU AS VEN ON (VEN.USU_CUSU = P.ROM_CVEN)');
      SQL.Add('LEFT   OUTER JOIN CAD_REP AS REP ON (REP.Id       = P.ROM_CREP)');
      SQL.Add('LEFT   OUTER JOIN '+oREPZero('rom_cab','_',i,3)        +' AS R  ON (R.ROM_CDNF  = NFe.NFE_CDNF)');
      SQL.Add('LEFT   OUTER JOIN '+oREPZero('fin_rec_ban_bai','_',i,3)+' AS FB ON (FB.FIN_CDBX = P.ROM_CDBX)');
      SQL.Add('LEFT   OUTER JOIN TAB_PAG AS Prz ON (Prz.Id = P.ROM_CPAG)  ');
      SQL.Add('WHERE  NFe.NFE_CDNF = '''+EDNotaFiscal.Text+'''');
      SQL.Add('AND    NOT FEmpty(NFe.NFE_CHAV)');
      if i < 5 then
      SQL.Add('UNION');
    end;
    Prepare;
    Open;

    if Eof then
    begin
      SQL.Clear;
      for i := 1 to 5 do
      begin
        SQL.Add('SELECT NFe.NFE_CDNF "NotaFiscal",NFe.NFE_DEMI "DTEmissao",NFe.NFE_DSAI "DTSaida",');
        SQL.Add('       NFe.NFE_CHAV "Chave",NFe.NFE_PROT "PROTAutoricado",NFe.NFE_PROC "PROTCancelado",NFe.NFE_OBSE "InfoNFe",');
        SQL.Add('       CFOP.NAT_TIPO "Finalidade",''( ''||CFOP.NAT_CNAT||'' ) ''||CFOP.NAT_DNAT "CFOP",');
        SQL.Add('       NFe.NFE_DTRA||'' (''||');
        SQL.Add('       CASE T.NFE_MODFRETE');
        SQL.Add('            WHEN ''0'' THEN ''REMETENTE (CIF)''');
        SQL.Add('            WHEN ''1'' THEN ''DESTINATÁRIO (FOB)''');
        SQL.Add('            WHEN ''2'' THEN ''TERCEIROS''');
        SQL.Add('            WHEN ''3'' THEN ''REMETENTE (PRÓPRIO)''');
        SQL.Add('            WHEN ''4'' THEN ''DESTINATÁRIO (PRÓPRIO)''');
        SQL.Add('            WHEN ''4'' THEN ''DESTINATÁRIO (PRÓPRIO)''');
        SQL.Add('            ELSE ''Desconhecido ! Favor entrar em contato com o administrador do sistema.''');
        SQL.Add('       END||'' )'' "Transportadora",');
        SQL.Add('       T.NFE_QVOL||'' ''||T.NFE_ESP "Volume",T.NFE_PSBR "PesoB",T.NFE_PSLQ "PesoL",');
        SQL.Add('       ''( ''||C.Id||'' ) ''||C.FOR_FANT||'' - ''||C.FOR_RAZA "Favorecido",');
        SQL.Add('       ''( ''||VEN.USU_CUSU||'' ) ''||VEN.USU_DUSU "Vendedor",');
        SQL.Add('       ''( ''||REP.Id||'' ) ''||REP.REP_FANT "Representante",');
        SQL.Add('       P.ROM_DERO "Pedido",P.ROM_DROM "DTPedido",P.ROM_STPD "TPPedido",P.ROM_STCO "TPCobranca",P.ROM_OBSE "InfoPed",P.ROM_DSEP "Revisor",');
        SQL.Add('       Prz.PAG_PARC||'' Parcelas ''||''( ''||Prz.PAG_DPAG||'' )'' "Prazo",');
        SQL.Add('       R.ID "Romaneio",R.ROM_DROM "DTRomaneio",');
        SQL.Add('       ''( ''||FB.FIN_CDDP||'' ) ''||FB.FIN_DTDP "EnvDup",');
        SQL.Add('       ''( ''||FB.FIN_CDBC||'' ) ''||FB.FIN_DTBC "EnvBan",');
        SQL.Add('       FB.FIN_STDO "Cobranca",FB.FIN_DOCT "Titulo",FB.FIN_DVEN "DTVencto",FB.FIN_VALO "VLTitulo",FB.FIN_STFI "STTitulo"');
        SQL.Add('FROM '+oREPZero('nfe_cab','_',i,3)+' AS NFe');
        SQL.Add('JOIN '+oREPZero('nfe_tra','_',i,3)+' AS T ON (T.NFE_CCAB = NFe.Id)');
        SQL.Add('JOIN   TAB_NAT AS CFOP ON (CFOP.NAT_CNAT = NFe.NFE_CNAT)');
        SQL.Add('JOIN   CAD_FOR AS C    ON (C.Id          = NFe.NFE_CFAV)');
        SQL.Add('LEFT   OUTER JOIN '+oREPZero('ped_ven_cab','_',i,3)+' AS P ON (P.ROM_CDNF = NFe.NFE_CDNF)');
        SQL.Add('LEFT   OUTER JOIN CAD_USU AS VEN ON (VEN.USU_CUSU = P.ROM_CVEN)');
        SQL.Add('LEFT   OUTER JOIN CAD_REP AS REP ON (REP.Id       = P.ROM_CREP)');
        SQL.Add('LEFT   OUTER JOIN '+oREPZero('rom_cab','_',i,3)        +' AS R  ON (R.ROM_CDNF  = NFe.NFE_CDNF)');
        SQL.Add('LEFT   OUTER JOIN '+oREPZero('fin_rec_ban_bai','_',i,3)+' AS FB ON (FB.FIN_CDBX = P.ROM_CDBX)');
        SQL.Add('LEFT   OUTER JOIN TAB_PAG AS Prz ON (Prz.Id = P.ROM_CPAG)  ');
        SQL.Add('WHERE  NFe.NFE_CDNF = '''+EDNotaFiscal.Text+'''');
        SQL.Add('AND    NOT FEmpty(NFe.NFE_CHAV)');
        if i < 5 then
        SQL.Add('UNION');
      end;
      Prepare;
      Open;
    end;
  end;
end;

end.
