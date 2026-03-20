unit pctr_ped_sep;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, math, StrUtils, dxDBTLCl, dxGrClms, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  DBCtrls, Grids, DBGrids, StdCtrls, dxPageControl, IBEvents, rxSpeedbar,
  IBSQL;

type
  Tfrmctr_ped_sep = class(Tfrmpadr3)
    siPSQ: TSpeedItem;
    dtsrom_cab: TDataSource;
    DTSEdicao: TDataSource;
    Panel2: TPanel;
    siMTD: TSpeedItem;
    siDTD: TSpeedItem;
    Edicao: TIBDataSet;
    PCPedidos: TdxPageControl;
    TSPedidos: TdxTabSheet;
    DBGEdicao: TdxDBGrid;
    DBGEdicaoITEM: TdxDBGridMaskColumn;
    DBGEdicaoSKU: TdxDBGridMaskColumn;
    DBGEdicaoDECP: TdxDBGridMaskColumn;
    DBGEdicaoDGCP: TdxDBGridMaskColumn;
    DBGEdicaoQTDE: TdxDBGridMaskColumn;
    DBGEdicaoQTSP: TdxDBGridMaskColumn;
    SpeedBar3: TSpeedBar;
    SpeedbarSection9: TSpeedbarSection;
    SpeedbarSection10: TSpeedbarSection;
    SpeedbarSection11: TSpeedbarSection;
    SpeedbarSection12: TSpeedbarSection;
    pINC: TSpeedItem;
    pALT: TSpeedItem;
    pDEL: TSpeedItem;
    pSAV: TSpeedItem;
    pCAN: TSpeedItem;
    rom_cab: TIBDataSet;
    rom_cabID: TIntegerField;
    rom_cabROM_CDOC: TIntegerField;
    rom_cabROM_CDPR: TIntegerField;
    rom_cabROM_CDPD: TIntegerField;
    rom_cabROM_CDRO: TIntegerField;
    rom_cabROM_CDRD: TIntegerField;
    rom_cabROM_CDNF: TIntegerField;
    rom_cabROM_CDBX: TIntegerField;
    rom_cabROM_DERO: TIBStringField;
    rom_cabROM_STPD: TIBStringField;
    rom_cabROM_STCO: TIBStringField;
    rom_cabROM_STFI: TIBStringField;
    rom_cabROM_DROM: TDateField;
    rom_cabROM_HROM: TTimeField;
    rom_cabROM_DBAI: TDateField;
    rom_cabROM_DCAN: TDateField;
    rom_cabROM_DNFS: TDateField;
    rom_cabROM_DEXP: TDateField;
    rom_cabROM_HEXP: TTimeField;
    rom_cabROM_CEXP: TIntegerField;
    rom_cabROM_CCLI: TIntegerField;
    rom_cabROM_DCLI: TIBStringField;
    rom_cabROM_CVEN: TIntegerField;
    rom_cabROM_DVEN: TIBStringField;
    rom_cabROM_CREP: TIntegerField;
    rom_cabROM_DREP: TIBStringField;
    rom_cabROM_CPAG: TIntegerField;
    rom_cabROM_DPAG: TIBStringField;
    rom_cabROM_QTVE: TIBBCDField;
    rom_cabROM_QTSP: TIBBCDField;
    rom_cabROM_QTPD: TIBBCDField;
    rom_cabROM_RLVE: TIntegerField;
    rom_cabROM_TSDE: TIBBCDField;
    rom_cabROM_TDSC: TIBStringField;
    rom_cabROM_PDSC: TIBBCDField;
    rom_cabROM_CDSC: TIBBCDField;
    rom_cabROM_ADSC: TIBBCDField;
    rom_cabROM_TCDE: TIBBCDField;
    rom_cabROM_CONC: TSmallintField;
    rom_cabROM_OBSE: TMemoField;
    rom_cabROM_STA: TIBStringField;
    rom_cabROM_CDCX: TSmallintField;
    edfatu: TdxMaskEdit;
    EdicaoID: TIntegerField;
    EdicaoIDEP: TSmallintField;
    EdicaoITEM: TIntegerField;
    EdicaoIDCP: TIntegerField;
    EdicaoIDAK: TLargeintField;
    EdicaoIDSK: TLargeintField;
    EdicaoIDEK: TLargeintField;
    EdicaoARTIGO: TIBStringField;
    EdicaoPIPI: TIBBCDField;
    EdicaoEXTIPI: TIBStringField;
    EdicaoCEST: TIBStringField;
    EdicaoSKU: TIBStringField;
    EdicaoCEAN: TIBStringField;
    EdicaoDECP: TIBStringField;
    EdicaoDGCP: TIBStringField;
    EdicaoCMP_PAD: TIBStringField;
    EdicaoUCOM: TIBStringField;
    EdicaoUPSBR: TIBBCDField;
    EdicaoUPSLQ: TIBBCDField;
    EdicaoMPESO: TIBBCDField;
    EdicaoMPSCN: TIBBCDField;
    EdicaoMMETRO: TIBBCDField;
    EdicaoMGRAM: TIBBCDField;
    EdicaoMREND: TIBBCDField;
    EdicaoEPE_QTDE: TIBBCDField;
    EdicaoEPE_QTRL: TIntegerField;
    EdicaoQTDE: TIBBCDField;
    EdicaoQTRL: TIntegerField;
    EdicaoQTSP: TIBBCDField;
    EdicaoRLSP: TIntegerField;
    EdicaoPSBR: TIBBCDField;
    EdicaoPSLQ: TIBBCDField;
    EdicaoVPRC_PAD_INI: TFloatField;
    EdicaoVPRC_PAD_FIM: TFloatField;
    EdicaoVPRC_PAD: TFloatField;
    EdicaoVPRC_COM: TFloatField;
    EdicaoPDSC: TIBBCDField;
    EdicaoVDSC: TIBBCDField;
    EdicaoTSDE: TIBBCDField;
    EdicaoTCDE: TIBBCDField;
    EdicaoVIPI: TIBBCDField;
    EdicaoVST: TIBBCDField;
    EdicaoGRP_NO: TIBStringField;
    EdicaoCAT_NO: TIBStringField;
    EdicaoXPAIS: TIBStringField;
    EdicaoFPAIS: TIBStringField;
    EdicaoIDEV: TLargeintField;
    EdicaoCDEV: TSmallintField;
    EdicaoIP: TIBStringField;
    EdicaoHOST: TIBStringField;
    EdicaoFLAG: TSmallintField;
    EdicaoCDRO: TLargeintField;
    EdicaoCDET: TLargeintField;
    EdicaoCTNR: TIBStringField;
    EdicaoLOTE: TIBStringField;
    EdicaoMAPA: TIBStringField;
    EdicaoIDPK: TLargeintField;
    EdicaoDEPK: TIBStringField;
    EdicaoDTPK: TDateTimeField;
    procedure FormShow(Sender: TObject);
    procedure rom_cabAfterPost(DataSet: TDataSet);
    procedure siSAVClick(Sender: TObject);
    procedure DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure siMTDClick(Sender: TObject);
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure siDTDClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pALTClick(Sender: TObject);
    procedure pSAVClick(Sender: TObject);
    procedure pCANClick(Sender: TObject);
    procedure EdicaoAfterCancel(DataSet: TDataSet);
    procedure EdicaoAfterEdit(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdicaoAfterOpen(DataSet: TDataSet);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure DBGEdicaoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure rom_cabAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure _ExecEvent;
  public
    { Public declarations }
    procedure ADICIONA(cdpd: integer);
  end;

var
  frmctr_ped_sep: Tfrmctr_ped_sep;

implementation

uses uPrincipal, pctr_ped;

{$R *.dfm}

procedure Tfrmctr_ped_sep.FormCreate(Sender: TObject);
begin
  inherited;
  { Evento }
  RECDefault.Event := 'CTR_PED';

  oOTransact(TSEdicao);
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM PED_VEN_CAB');
    ExecQuery;

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM PED_VEN_ITE');
    ExecQuery;
  end;
  oRTransact(TSEdicao);
end;

procedure Tfrmctr_ped_sep.FormShow(Sender: TObject);
begin
  inherited;
  if Assigned(frmctr_ped) then
     ADICIONA(frmctr_ped.cadastroID.AsInteger);
end;

procedure Tfrmctr_ped_sep.FormActivate(Sender: TObject);
begin
  inherited;
  sbMSG.Panels[0].Text := 'Separação';
end;

procedure Tfrmctr_ped_sep.FormDestroy(Sender: TObject);
begin
  inherited;
  frmctr_ped_sep := Nil;
end;

procedure Tfrmctr_ped_sep.ADICIONA(cdpd: integer);
begin
  try
    Tag := 1;

    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID  ,PK.IDEP,');
      SQL.Add('       PK.IDCA,PK.DTCA,PK.DTCA,PK.IDST,PK.CDST,PK.REST,PK.DEST,');
      SQL.Add('       PK.ROM_DERO AS DEPK,PK.ROM_CCLI AS IDCD,CD.CLI_FANT AS DECD,PK.ROM_CVEN AS IDCV,CV.USU_DUSU AS DECV,PK.ROM_CREP AS IDCR,CR.REP_FANT AS DECR,');
      SQL.Add('       PK.ROM_CDRO AS CDRO,PK.ROM_CDNF AS CDNF,PK.ROM_CDBX AS CDBX,PK.ROM_DBAI AS DTBX,');
      SQL.Add('       PK.ROM_STPD AS STPD,PK.ROM_STCO AS STCO,PK.ROM_TCDE AS TCDE');
      SQL.Add('FROM ' + oREPZero('PED_VEN_CAB','_',RECParametros.Id,3) + ' AS PK');
      SQL.Add('JOIN   CAD_CLI AS CD ON (CD.ID = PK.ROM_CCLI)');
      SQL.Add('JOIN   CAD_USU AS CV ON (CV.ID = PK.ROM_CVEN)');
      SQL.Add('JOIN   CAD_REP AS CR ON (CR.ID = PK.ROM_CREP)');
      SQL.Add('WHERE  PK.ID = ''' + IntToStr(cdpd) + '''');
      ExecQuery;

      if Current.ByName('ID').AsInteger = 0 then
         oException(Nil,'Pedido não Encontrado !');

      if Current.ByName('REST').AsString = 'C' then
         oException(Nil,'Pedido Cancelado !');

      if Current.ByName('CDRO').AsInteger > 0 then
         oException(Nil,'Romaneio já Gerado !');

      if Current.ByName('CDBX').AsInteger > 0 then
         oException(Nil,'Pedido já Finalizado !');
    end;

    rom_cab.Append;
    rom_cabID.Value       := 0;
    rom_cabROM_CDPD.Value := SQLConsulta.Current.ByName('ID'  ).AsInteger;
    rom_cabROM_DERO.Value := SQLConsulta.Current.ByName('DEPK').AsString;
    rom_cabROM_DROM.Value := SQLConsulta.Current.ByName('DTCA').AsDateTime;
    rom_cabROM_CCLI.Value := SQLConsulta.Current.ByName('IDCD').AsInteger;
    rom_cabROM_DCLI.Value := SQLConsulta.Current.ByName('DECD').AsString;
    rom_cabROM_CVEN.Value := SQLConsulta.Current.ByName('IDCV').AsInteger;
    rom_cabROM_DVEN.Value := SQLConsulta.Current.ByName('DECV').AsString;
    rom_cabROM_CREP.Value := SQLConsulta.Current.ByName('IDCR').AsInteger;
    rom_cabROM_DREP.Value := SQLConsulta.Current.ByName('DECR').AsString;
    rom_cabROM_STPD.Value := SQLConsulta.Current.ByName('STPD').AsString;
    rom_cabROM_STCO.Value := SQLConsulta.Current.ByName('STCO').AsString;
    rom_cabROM_STFI.Value := SQLConsulta.Current.ByName('DEST').AsString;
    rom_cabROM_TCDE.Value := SQLConsulta.Current.ByName('TCDE').AsFloat;
    rom_cab.Post;


    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID  ,PK.IDEP,PK.ROM_CCAB AS IDPK,');
      SQL.Add('       PK.IDCA,PK.DTCA,PK.DTCA,PK.IDST,PK.CDST,PK.REST,PK.DEST,');
      SQL.Add('       PK.ROM_ITEM AS ITEM,PK.ROM_CPRO AS IDCP,CP.PRO_CART AS ARTIGO,CP.PRO_CPRO AS SKU,PK.ROM_DPRO AS DECP,PK.ROM_DCOR AS DGCP,');
      SQL.Add('       PK.ROM_CPR2 AS IDCP_TNG,PK.ROM_DCO2 AS DGCP_TNG,');
      SQL.Add('       PK.ROM_DUNI AS UCOM,PK.ROM_QTDE AS QTDE,PK.ROM_QTRL AS QTRL,PK.ROM_QTPD AS QTSP,PK.ROM_RLPD AS RLSP,');
      SQL.Add('       PK.ROM_PREC AS VPRC_PAD,PK.ROM_UNIT AS VPRC_COM,PK.ROM_TOTA AS TCDE');
      SQL.Add('FROM ' + oREPZero('PED_VEN_ITE','_',RECParametros.Id,3) + ' AS PK');
      SQL.Add('JOIN   CAD_PRO AS CP ON (CP.ID = PK.ROM_CPRO)');
      SQL.Add('WHERE  PK.ROM_CCAB = ''' + IntToStr(cdpd) + '''');
      ExecQuery;

      if Current.ByName('ID').AsInteger = 0 then
         oException(Nil,'Itens do pedido não Encontrado !');
    end;

    while not SQLConsulta.Eof do
    begin
      Edicao.Append;
      EdicaoID.Value   := 0;
      EdicaoIDPK.Value := SQLConsulta.Current.ByName('IDPK').AsInteger;
      EdicaoITEM.Value := SQLConsulta.Current.ByName('ITEM').AsInteger;

      EdicaoIDCP.Value   := SQLConsulta.Current.ByName('IDCP').AsInteger;
      EdicaoARTIGO.Value := SQLConsulta.Current.ByName('ARTIGO').AsString;
      EdicaoSKU.Value    := SQLConsulta.Current.ByName('SKU' ).AsString;

      EdicaoDECP.Value := SQLConsulta.Current.ByName('DECP').AsString;
      EdicaoDGCP.Value := SQLConsulta.Current.ByName('DGCP').AsString;

      EdicaoUCOM.Value := SQLConsulta.Current.ByName('UCOM').AsString;
      EdicaoQTDE.Value := SQLConsulta.Current.ByName('QTDE').AsCurrency;
      EdicaoQTRL.Value := SQLConsulta.Current.ByName('QTRL').AsInteger;
      EdicaoQTSP.Value := SQLConsulta.Current.ByName('QTSP').AsCurrency;
      EdicaoRLSP.Value := SQLConsulta.Current.ByName('RLSP').AsInteger;

      EdicaoVPRC_PAD.Value := SQLConsulta.Current.ByName('VPRC_PAD').AsFloat;
      EdicaoVPRC_COM.Value := SQLConsulta.Current.ByName('VPRC_COM').AsFloat;
      EdicaoTCDE.Value     := SQLConsulta.Current.ByName('TCDE').AsFloat;
      Edicao.Post;

      SQLConsulta.Next;
    end;
    oRTransact(TSEdicao);
  finally
    tag := 0;
  end;
end;

procedure Tfrmctr_ped_sep.rom_cabAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  if Tag = 0 then
  begin
    TSEdicao.CommitRetaining;

    wRec := rom_cab.GetBookmark;
    rom_cab.Close;
    rom_cab.Open;
    if (wRec = Nil) or (rom_cab.Fields[0].IsNull) then rom_cab.last
       else rom_cab.GotoBookmark(wRec);
    rom_cab.FreeBookmark(wRec);
  end;  
end;

procedure Tfrmctr_ped_sep.siSAVClick(Sender: TObject);
begin
  if oYesNo(handle,'Confirma separação do pedido ?') = mrno then
     Abort;

  if rom_cab.RecNo = 0 then
  oException(Nil,'Pedido não Encontrado !');

  if Edicao.State in [dsInsert,dsEdit] then
  Edicao.Post;
  Edicao.First;

  if Edicao.RecNo = 0 then
  oException(Nil,'Itens do pedido não encontrado !');

  try
    oOTransact(TEdicao);

    rom_cab.First;
    while not rom_cab.Eof do
    begin
      { Pedido }
      with SQLSEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT SUM(QTSP),SUM(RLSP),SUM(QTSP * VPRC_COM) FROM PED_VEN_ITE');
        ExecQuery;
      end;
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE ' + oREPZero('PED_VEN_CAB','_',RECParametros.Id,3));
        SQL.Add('SET');

        SQL.Add('ROM_STFI = ''' + IFThen(SQLSEdicao.Current.Vars[0].AsFloat > 0,'PENDENTE','SEPARANDO') + ''',');

        SQL.Add('IDSP     = ''' + RECUsuarios.Id    + ''',');
        SQL.Add('ROM_DSEP = ''' + RECUsuarios.Login + ''',');

        SQL.Add('ROM_QTPD = ''' + oStrTran(SQLSEdicao.Current.Vars[0].AsString,',','.') + ''',');
        SQL.Add('ROM_RLPD = ''' + oStrTran(SQLSEdicao.Current.Vars[1].AsString,',','.') + ''',');
        SQL.Add('VTSP     = ''' + oStrTran(SQLSEdicao.Current.Vars[2].AsString,',','.') + ''' ');

        SQL.Add('WHERE ID = ''' + rom_cabROM_CDPD.AsString +'''');
        ExecQuery;

        { Reservados }
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM ' + oREPZero('CAD_PRO_RES','_',RECParametros.Id,3));
        SQL.Add('WHERE  EST_CDEP = ''' + frmprincipal.parametrosID.AsString + '''');
        SQL.Add('AND    EST_CDPD = ''' + rom_cabROM_CDPD.AsString           + '''');
        ExecQuery;

        { Separados }
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM ' + oREPZero('CAD_PRO_SEP','_',RECParametros.Id,3));
        SQL.Add('WHERE  EST_CDEP = ''' + frmprincipal.parametrosID.AsString + '''');
        SQL.Add('AND    EST_CDPD = ''' + rom_cabROM_CDPD.AsString           + '''');
        ExecQuery;
      end;

      Edicao.First;
      while not Edicao.Eof do
      begin
        { Itens }
        with SQLEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE ' + oREPZero('PED_VEN_ITE','_',RECParametros.Id,3));
          SQL.Add('SET');

          //SQL.Add('DEST = ''' + IFThen(SQLSEdicao.Current.Vars[0].AsFloat > 0,'PENDENTE','SEPARANDO') + ''',');

          SQL.Add('IDSP     = ''' + RECUsuarios.Id    + ''',');
          SQL.Add('ROM_DSEP = ''' + RECUsuarios.Login + ''',');

          SQL.Add('ROM_QTPD = ''' + oStrTran(EdicaoQTSP.AsString,',','.') + ''',');
          SQL.Add('ROM_RLPD = ''' + oStrTran(EdicaoRLSP.AsString,',','.') + ''' ');

          SQL.Add('WHERE IDPK = ''' + EdicaoIDPK.AsString + '''');
          SQL.Add('AND   IDCP = ''' + EdicaoIDCP.AsString + '''');
          SQL.Add('AND   ITEM = ''' + EdicaoITEM.AsString + '''');
          ExecQuery;
        end;

        if EdicaoQTSP.AsFloat > 0 then
        begin
          SPEdicao.Close;
          SPEdicao.StoredProcName := 'SP_CAD_PRO_SEP';
          SPEdicao.Prepare;

          SPEdicao.ParamByName('est').Value  := oREPZero('CAD_PRO_SEP','_',RECParametros.Id,3);
          SPEdicao.ParamByName('id').Value   := 0;
          SPEdicao.ParamByName('cdep').Value := RECParametros.ID;
          SPEdicao.ParamByName('cdro').Value := 0;
          SPEdicao.ParamByName('cdpd').Value := EdicaoIDPK.AsInteger;
          SPEdicao.ParamByName('cdbx').Value := 0;
          SPEdicao.ParamByName('cpro').Value := EdicaoIDCP.AsInteger;
          SPEdicao.ParamByName('cusu').Value := rom_cabROM_CVEN.AsInteger;
          SPEdicao.ParamByName('dusu').Value := rom_cabROM_DVEN.AsString;
          SPEdicao.ParamByName('cfav').Value := rom_cabROM_CCLI.AsInteger;
          SPEdicao.ParamByName('dfav').Value := rom_cabROM_DCLI.AsString;
          SPEdicao.ParamByName('dcad').Value := strtodate(SLPrincipal.Values['data_sistema']);
          SPEdicao.ParamByName('docu').Value := oStrZero(rom_cabROM_CDPD.AsInteger,6);
          SPEdicao.ParamByName('flag').Value := 'R';
          SPEdicao.ParamByName('cdet').Value := '';
          SPEdicao.ParamByName('dsep').Value := RECUsuarios.Login;
          SPEdicao.ParamByName('debi').Value := 0;
          SPEdicao.ParamByName('cred').Value := EdicaoQTSP.AsFloat;
          SPEdicao.ParamByName('dmap').Value := '';
          SPEdicao.ParamByName('ctnr').Value := 0;
          SPEdicao.ParamByName('lote').Value := '';
          SPEdicao.ExecProc;
        end else
        begin
          SPEdicao.Close;
          SPEdicao.StoredProcName := 'SP_CAD_PRO_RES';
          SPEdicao.Prepare;

          SPEdicao.ParamByName('est').Value  := oREPZero('CAD_PRO_RES','_',RECParametros.Id,3);
          SPEdicao.ParamByName('id').Value   := 0;
          SPEdicao.ParamByName('cdep').Value := RECParametros.ID;
          SPEdicao.ParamByName('cdro').Value := 0;
          SPEdicao.ParamByName('cdpd').Value := EdicaoIDPK.AsInteger;
          SPEdicao.ParamByName('cdbx').Value := 0;
          SPEdicao.ParamByName('cpro').Value := EdicaoIDCP.AsInteger;
          SPEdicao.ParamByName('cusu').Value := rom_cabROM_CVEN.AsInteger;
          SPEdicao.ParamByName('dusu').Value := rom_cabROM_DVEN.AsString;
          SPEdicao.ParamByName('cfav').Value := rom_cabROM_CCLI.AsInteger;
          SPEdicao.ParamByName('dfav').Value := rom_cabROM_DCLI.AsString;
          SPEdicao.ParamByName('dcad').Value := strtodate(SLPrincipal.Values['data_sistema']);
          SPEdicao.ParamByName('docu').Value := rom_cabROM_DERO.AsString;
          SPEdicao.ParamByName('flag').Value := 'R';
          SPEdicao.ParamByName('cdet').Value := '';
          SPEdicao.ParamByName('dsep').Value := RECUsuarios.Login;
          SPEdicao.ParamByName('debi').Value := 0;
          SPEdicao.ParamByName('cred').Value := EdicaoQTDE.AsFloat;
          SPEdicao.ParamByName('dmap').Value := '';
          SPEdicao.ParamByName('ctnr').Value := 0;
          SPEdicao.ParamByName('lote').Value := '';
          SPEdicao.ExecProc;
        end;
        Edicao.Next;
      end;
      rom_cab.Next;
    end;
    
    oCTransact(TEdicao);
    oAviso(handle,'Pedido separado com sucesso !');
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
       oException(DBGEdicao,'Falha ao tentar registrar abatimento !'+#13+
                            'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                            'Error Code: '+E.Message+'.'+#13+
                            Caption+'.');
    end;
  end;

  _ExecEvent;
  Close;
end;

procedure Tfrmctr_ped_sep.DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if DBGEdicao.FocusedField.FieldName = 'QTSP' then
                 begin
                   DBGEdicaoQTSP.Field.FocusControl;
                   Edicao.Next
                 end;
               end;
    VK_ESCAPE: if Edicao.State = dsBrowse then close else Edicao.Cancel;
  end;
end;

procedure Tfrmctr_ped_sep.siMTDClick(Sender: TObject);
begin
  try
    Edicao.DisableControls;
    Edicao.First;
    while not Edicao.Eof do
    begin
      Edicao.Edit;
      EdicaoQTSP.Value := EdicaoQTDE.Value;
      Edicao.Post;
      Edicao.Next;
    end;
  finally
    Edicao.EnableControls;
  end;
  oRTransact(TSEdicao);
end;

procedure Tfrmctr_ped_sep.siDTDClick(Sender: TObject);
begin
  try
    Edicao.DisableControls;
    Edicao.First;
    while not Edicao.Eof do
    begin
      Edicao.Edit;
      EdicaoQTSP.Value := 0;
      Edicao.Post;
      Edicao.Next;
    end;
  finally
    Edicao.EnableControls;
  end;
  oRTransact(TSEdicao);
end;

procedure Tfrmctr_ped_sep.FormKeyDown(Sender: TObject; var Key: Word;
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
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       38       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, false, true);
       118      : siPSQ.Click;
  end;

  if ((ssCtrl in Shift) and (Key in [83])) then
     siSAV.Click;
end;

procedure Tfrmctr_ped_sep.pALTClick(Sender: TObject);
begin
  if Edicao.State = dsBrowse then
     Edicao.Edit;
end;

procedure Tfrmctr_ped_sep.pSAVClick(Sender: TObject);
begin
  if Edicao.State in [dsedit,dsinsert] then
     Edicao.Post;
end;

procedure Tfrmctr_ped_sep.pCANClick(Sender: TObject);
begin
  Edicao.Cancel;
end;

procedure Tfrmctr_ped_sep.EdicaoAfterCancel(DataSet: TDataSet);
begin
  pALT.Enabled := true;
  pSAV.Enabled := false;
  pCAN.Enabled := false;
end;

procedure Tfrmctr_ped_sep.EdicaoAfterEdit(DataSet: TDataSet);
begin
  pALT.Enabled := false;
  pSAV.Enabled := true;
  pCAN.Enabled := true;

  DBGEdicao.FocusedColumn := 6;
end;

procedure Tfrmctr_ped_sep.EdicaoAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  if Tag = 0 then
  begin
    pALT.Enabled := true;
    pSAV.Enabled := false;
    pCAN.Enabled := false;

    TSEdicao.CommitRetaining;

    wRec := Edicao.GetBookmark;
    Edicao.Close;
    Edicao.Open;
    if (wRec = Nil) or (Edicao.Fields[0].IsNull) then Edicao.last
       else Edicao.GotoBookmark(wRec);
    Edicao.FreeBookmark(wRec);
  end;  
end;

procedure Tfrmctr_ped_sep.EdicaoBeforePost(DataSet: TDataSet);
begin
  if (EdicaoQTSP.AsFloat > EdicaoQTDE.AsFloat) and (EdicaoQTDE.AsFloat > 0) then
     DataBaseError('Quantidade separada para o pedido não pode ser maior que a quantidade programada !');

  if EdicaoQTSP.AsFloat < 0 then
     DataBaseError('Quantidade separada não pode ser inferior a 0 !');

  EdicaoRLSP.Value := IFThen(EdicaoQTSP.AsFloat = 0,0,1);
end;

procedure TFrmctr_ped_sep._ExecEvent;
begin
  if  EEvent.Registered then
      try
        oOTransact(TEvent);

        SPEvent.StoredProcName := 'SP_EVENT';
        SPEvent.Prepare;
        SPEvent.Params[0].AsString := oREPZero(RECDefault.Event,'_',RECParametros.Id,3);
        SPEvent.ExecProc;

        oCTransact(TEvent);
      except
        on E: Exception do
        begin
          oCTransact(TEvent,ltRollback);
          oException(Nil,'Falha ao tentar salvar evento !'+#13+
                         'Evento: '    +oREPZero('CTR_PED','_',RECParametros.Id,3)+'.'+#13+#13+
                         'Formulário: '+Self.Name+'.'     +#13+#13+
                         'Error Code: '+E.Message+'.');
        end;
      end;
end;

procedure Tfrmctr_ped_sep.EdicaoAfterOpen(DataSet: TDataSet);
begin
  if Showing then
  begin
    DBGEdicao.SetFocus;
    DBGEdicaoQTSP.Field.FocusControl;
  end;
end;

procedure Tfrmctr_ped_sep.EdicaoNewRecord(DataSet: TDataSet);
begin
  EdicaoID.Value   := 0;
  EdicaoIDEP.Value := RECParametros.ID;

  EdicaoCDRO.Value := 0;
  EdicaoCDET.Value := 0;
  EdicaoIDPK.Value := 0;

  EdicaoIP.Value   := RECParametros.IP;
  EdicaoHOST.Value := RECParametros.HOST;

  EdicaoEPE_QTDE.Value := 0;
  EdicaoEPE_QTRL.Value := 0;

  EdicaoQTDE.Value := 0;
  EdicaoQTRL.Value := 0;
  EdicaoQTSP.Value := 0;
  EdicaoRLSP.Value := 0;

  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT MAX(ITEM) FROM PED_VEN_ITE');
    SQL.Add('WHERE  FLAG = 0');
    ExecQuery;
    EdicaoITEM.Value := Current.Vars[0].AsInteger + 1;
  end;
end;

procedure Tfrmctr_ped_sep.DBGEdicaoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if AColumn = DBGEdicaoQTSP then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
      AFont.Style := [];

      if ANode.Values[DBGEdicaoQTSP.Index] > 0 then
         AFont.Style := [fsBold];
    end;     
  end;
end;

procedure Tfrmctr_ped_sep.rom_cabAfterOpen(DataSet: TDataSet);
begin
  TSPedidos.Caption := 'Pedido Nº ' + rom_cabROM_DERO.AsString + ' ' + rom_cabROM_DVEN.AsString + ' - ' + rom_cabROM_DCLI.AsString; 
end;

end.
