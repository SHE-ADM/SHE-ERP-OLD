unit pCAD_PRO_EDI;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pPadr3, dxCntner, dxDockControl, ImgList, IBEvents, DB,
  IBCustomDataSet, IBStoredProc, IBSQL, IBDatabase, ActnList, rxSpeedbar,
  ExtCtrls, dxExEdtr, dxEdLib, dxEditor, StdCtrls, dxDockPanel,
  math, StrUtils;

type
  TFrmCAD_PRO_EDI = class(TFrmPadr3)
    DSArtigo: TdxDockSite;
    LDSArtigo: TdxLayoutDockSite;
    DPArtigo: TdxDockPanel;
    PNLFArtigo: TPanel;
    PNLEArtigo: TPanel;
    LAARTIGO: TLabel;
    LADECP: TLabel;
    LADCCP: TLabel;
    LACDST: TLabel;
    EDARTIGO: TdxEdit;
    EDDECP: TdxEdit;
    EDDTCP: TdxEdit;
    IECDST: TdxImageEdit;
    DSEmpresas: TdxDockSite;
    LDSEmpresas: TdxLayoutDockSite;
    DPEmpresas: TdxDockPanel;
    PNLFEmpresas: TPanel;
    PNLEEmpresas: TPanel;
    LADECF: TLabel;
    LACF_SKU: TLabel;
    LACF_CEAN: TLabel;
    EDCF_SKU: TdxEdit;
    PEDECF: TdxPickEdit;
    DSCategorias: TdxDockSite;
    dxLayoutDockSite4: TdxLayoutDockSite;
    DPCategorias: TdxDockPanel;
    PNLFCategorias: TPanel;
    PNLECategorias: TPanel;
    LASEG_ID: TLabel;
    LAGRP_ID: TLabel;
    LASGP_ID: TLabel;
    LACAT_ID: TLabel;
    LASCT_ID: TLabel;
    IESEG_ID: TdxImageEdit;
    IEGRP_ID: TdxImageEdit;
    IESGP_ID: TdxImageEdit;
    IECAT_ID: TdxImageEdit;
    IESCT_ID: TdxImageEdit;
    DSMarketPlaces: TdxDockSite;
    dxLayoutDockSite5: TdxLayoutDockSite;
    DPMarketPlaces: TdxDockPanel;
    PNLFMarketPlaces: TPanel;
    PNLEMarketPlaces: TPanel;
    CHKMKP_MLV_ID: TdxCheckEdit;
    CHKMKP_MPG_ID: TdxCheckEdit;
    CHKMKP_MSP_ID: TdxCheckEdit;
    CHKMKP_SHP_ID: TdxCheckEdit;
    CHKMKP_AMZ_ID: TdxCheckEdit;
    CHKMKP_BLG_ID: TdxCheckEdit;
    CHKMKP_TRY_ID: TdxCheckEdit;
    DSINFADCAD: TdxDockSite;
    DPINFADCAD: TdxDockPanel;
    dxLayoutDockSite2: TdxLayoutDockSite;
    DPINFADCPL: TdxDockPanel;
    TCDSINFADCAD: TdxTabContainerDockSite;
    EMINFADCPL: TdxMemo;
    EMINFADCAD: TdxMemo;
    IECOL_ID: TdxImageEdit;
    LACOL_ID: TLabel;
    IEIDEP: TdxImageEdit;
    LAIDEP: TLabel;
    EDCF_CEAN: TdxEdit;
    Panel1: TPanel;
    DSPrincipal: TdxDockSite;
    DPMedidas: TdxDockPanel;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxDockPanel2: TdxDockPanel;
    dxTabContainerDockSite1: TdxTabContainerDockSite;
    PNLFMedidas: TPanel;
    PNLEMedidas: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure EDARTIGOChange(Sender: TObject);
    procedure EDDECPChange(Sender: TObject);
    procedure IECOL_IDChange(Sender: TObject);
    procedure EDARTIGOValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure _WM_ACTIVATE(var Msg: TMessage); message WM_ACTIVATE;
  end;

var
  FrmCAD_PRO_EDI: TFrmCAD_PRO_EDI;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmCAD_PRO_EDI._WM_ACTIVATE(var Msg: TMessage);
begin
  inherited;
//Resize;
end;

procedure TFrmCAD_PRO_EDI.FormCreate(Sender: TObject);
begin
  { FORM MANAGER }
  REC_SHE_DEF.FrmPosition := Self.Position;

  { USERS }
  REC_SHE_DEF.FB_Event    := 'CAD_PRO';
  REC_SHE_DEF.GDescricao  := 'Produtos';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;

  TCDSINFADCAD.ActiveChildIndex := 0; { Informações Adicionais }
end;

procedure TFrmCAD_PRO_EDI.ACTPesquisaExecute(Sender: TObject);
begin
  inherited;

  try
    oLockWindowUpdate;

    { TABELAS }
    with SQLConsulta do
    begin
      { Empresas }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.FANTASIA FROM TAB_PAR_SIS AS PK WHERE PK.CDST = 30 ORDER BY PK.ID');
      ExecQuery;
      
      while not eof do
      begin
        IEIDEP.Values.Add(Current.Vars[0].AsString);
        IEIDEP.Descriptions.Add(Current.Vars[1].AsString);
        Next;
      end;

      { Fabriantes }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.FANTASIA FROM CAD_FOR AS PK WHERE PK.CDST = 30 ORDER BY PK.FANTASIA');
      ExecQuery;

      while not eof do
      begin
        PEDECF.Items.Add(Current.Vars[0].AsString);
        Next;
      end;

      { Situações }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_STA_CAD AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        //DBGGradeDEST.Items.Add(Current.Vars[1].AsString);

        IECDST.Values.Add(Current.Vars[0].AsString);
        IECDST.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;

      { Composições }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.DESCRICAO FROM TAB_CMP AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        //DBGCMPDESCRICAO.Items.Add(Current.Vars[0].AsString);
        next;
      end;

      { Estoque Vendável }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO_EVD AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        //IEFIN_EST_ID.Values.Add(Current.Vars[0].AsString);
       // IEFIN_EST_ID.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;

      { Finalidade do Produto }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO_EFN AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        ////IEFIN_CAD_ID.Values.Add(Current.Vars[0].AsString);
        //IEFIN_CAD_ID.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;

      { Coleções }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_COL AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        IECOL_ID.Values.Add(Current.Vars[0].AsString);
        IECOL_ID.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;

      { Segmentos }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_SEG AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        IESEG_ID.Values.Add(Current.Vars[0].AsString);
        IESEG_ID.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;

      { Grupos }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_GRP AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        IEGRP_ID.Values.Add(Current.Vars[0].AsString);
        IEGRP_ID.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;

      { Sub Grupos }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_SGP AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        IESGP_ID.Values.Add(Current.Vars[0].AsString);
        IESGP_ID.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;

      { Categorias }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_CAT AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        IECAT_ID.Values.Add(Current.Vars[0].AsString);
        IECAT_ID.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;

      { Sub Categorias }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_SCT AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
        IESCT_ID.Values.Add(Current.Vars[0].AsString);
        IESCT_ID.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;

      { Origem }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO_ORI AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;

      while not Eof do
      begin
     //   IEORIG.Values.Add(Current.Vars[0].AsString);
     //   IEORIG.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;

      { País }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.CPAIS,PK.XPAIS FROM TAB_PAIS AS PK ORDER BY PK.XPAIS');
      ExecQuery;

      while not Eof do
      begin
      //  IECPAIS.Values.Add(Current.Vars[0].AsString);
      //  IECPAIS.Descriptions.Add(Current.Vars[1].AsString);

        next;
      end;
    end;

    { GENERATORS }
    with SQLConsulta do
    begin
      { Artigo }
      REC_SHE_DEF.AIDAK := REC_SHE_DEF.AIDPK;
      if REC_SHE_DEF.AIDAK = 0 then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT GEN_ID(IDG_IDAK,1) FROM RDB$DATABASE');
        ExecQuery;
        REC_SHE_DEF.AIDAK := Current.Vars[0].AsString;
      end;

      { Eventos }
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(IDG_SHE_GRD,1) FROM RDB$DATABASE');
      ExecQuery;
      REC_SHE_DEF.AIDEV := Current.Vars[0].AsString;
    end;

    { Inicialização }
    IEIDEP.Text  := RECParametros.Id;
    IECDST.Text  := '30';
//    IEORIG.Text  := '0';
//    IECPAIS.Text := '1058';

    //IEFIN_CAD_ID.Text := RECParametros.PRO_IDFIN_CAD;
//    IEFIN_EST_ID.Text := RECParametros.PRO_IDFIN_EST;

//  EDArtigo.Tag     := VARTOINT(REC_SHE_DEF.AIDPK );
//  EDArtigo.Text    :=  DECadastro;
//  EDArtigo.Enabled := (DECadastro = EmptyStr);


    { ARTIGO }
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   CP.* FROM VW_PSQ_CAD_PRO AS CP');
      SQL.Add('WHERE    CP.IDAK = ''' + REC_SHE_DEF.AIDAK + '''');
      SQL.Add('ORDER BY CP.DTEV DESC');
      ExecQuery;

      if not Eof then
      begin
        IEIDEP.Text  := Current.ByName('IDEP' ).AsString;
//        IECPAIS.Text := Current.ByName('CPAIS').AsString;
//        IEORIG.Text  := Current.ByName('ORIG' ).AsString;
        IECDST.Text  := Current.ByName('CDST' ).AsString;

        //IEFIN_CAD_ID.Text := Current.ByName('FIN_CAD_ID').AsString;
//        IEFIN_EST_ID.Text := Current.ByName('FIN_EST_ID').AsString;

        EDARTIGO.Text := Current.ByName('ARTIGO').AsString;
//        EDCEAN.Text   := Current.ByName('CEAN'  ).AsString;

//        REC_SHE_DEF.ACEAN := EDCEAN.Text;
//
        EDDECP.Text := Current.ByName('DECP').AsString;
        EDDTCP.Text    := Current.ByName('DTCP').AsString;
       // EDDCCP.Text   := Current.ByName('DCCP').AsString;

        PEDECF.Tag    := Current.ByName('IDCF').AsInteger;
        PEDECF.Text   := Current.ByName('DECF').AsString;

        EDCF_SKU.Text   := Current.ByName('CF_SKU' ).AsString;
        EDCF_CEAN.Text := Current.ByName('CF_CEAN').AsString;

        { Controle de Vendas }
        { Loja Física }
//        IEUCOM.Text   := Current.ByName('UCOM' ).AsString;
//        CEUQVOL.Value := Current.ByName('UQVOL').AsCurrency;
//        EDUESP.Text   := Current.ByName('UESP' ).AsString;
//        EDUCON.Text   := Current.ByName('UCON' ).AsString;
//        CEUQTDE_VEN_MIN.Value := Current.ByName('UQTDE_VEN_MIN').AsCurrency;
//
//        { Loja Virtual }
//        IEUCOM_LV.Text   := Current.ByName('LJV_UCOM' ).AsString;
//        CEUQVOL_LV.Value := Current.ByName('LJV_UQVOL').AsCurrency;
//        EDUESP_LV.Text   := Current.ByName('LJV_UESP' ).AsString;
//        CEUQTDE_VEN_MIN_LV.Value := 1;
//
//        { Controle de Estoque }
//        { Loja Física }
//        IEUCDBE.Text  := Current.ByName('UCDBE').AsString;
//        CEUQTDE.Value := Current.ByName('UQTDE').AsFloat;
//        CEUQTDE_VEN_MUL.Value := Current.ByName('UQTDE_VEN_MUL').AsCurrency;
//        CEUQTDE_EST_MIN.Value := Current.ByName('UQTDE_EST_MIN').AsCurrency;
//
        { Loja Virtual }
//        IEUCDBE_LV.Text  := 'Quantidade';
//        CEUQTDE_LV.Value := 1;
//        CEUQTDE_VEN_MUL_LV.Value := 1;
//      CEUQTDE_EST_MIN_LV.Value := Current.ByName('UQTDE_EST_MIN_SITE').AsCurrency;

        { Medidas Principais }
//        CEPESO.Value := Current.ByName('MPESO').AsCurrency;
//        CEPSCN.Value := Current.ByName('UPSCN').AsCurrency;

//        CEMetros.Value     := Current.ByName('MMETRO').AsCurrency;
//        CEGramatura.Value  := Current.ByName('MGRAMA').AsCurrency;
//        PEDGramatura.Text  := Current.ByName('MGRAMA_NO').AsString;
//        CERend.Value := Current.ByName('MREND').AsCurrency;
//
//        { Outras Medidas }
//        CELARG_U.Value := Current.ByName('MLGRU').AsCurrency;
//        CELARG_T.Value := Current.ByName('MLGRT').AsCurrency;
//
//        CEENCO_L.Value := Current.ByName('MENCL').AsCurrency;
//        CEENCO_C.Value := Current.ByName('MENCC').AsCurrency;
//        PEDENCO.Text   := Current.ByName('MENC_NO').AsString;
//
//        CEELAS_L.Value := Current.ByName('MELAL').AsCurrency;
//        CEELAS_C.Value := Current.ByName('MELAC').AsCurrency;
//
//        CEEspessura.Value := Current.ByName('MESP').AsCurrency;
//        IEEspessura.Text  := Current.ByName('MESP_NO').AsString;
//
//        { Tabela de Preços }
//        { Atacado }
//        CEVPRC_PAD.Value     := Current.ByName('VPRC_PAD').AsCurrency;
//        CEVPRC_PAD_PRZ.Value := Current.ByName('VPRC_PRZ').AsCurrency;
//        CEVPRC_PAD_PRO.Value := Current.ByName('VPRC_PRO').AsCurrency;
//
//        { Atacarejo }
//        CEVPRC_ATV.Value     := Current.ByName('ATJ_VPRC_PAD').AsCurrency;
//        CEVPRC_ATV_PRZ.Value := Current.ByName('ATJ_VPRC_PRZ').AsCurrency;
//        CEVPRC_ATV_PRO.Value := Current.ByName('ATJ_VPRC_PRO').AsCurrency;
//
//        { Varejo }
//        CEVPRC_VAR.Value     := Current.ByName('VAR_VPRC_PAD').AsCurrency;
//        CEVPRC_VAR_PRZ.Value := Current.ByName('VAR_VPRC_PRZ').AsCurrency;
//        CEVPRC_VAR_PRO.Value := Current.ByName('VAR_VPRC_PRO').AsCurrency;
//
//        { Representante }
//        CEVPRC_REP.Value     := Current.ByName('REP_VPRC_PAD').AsCurrency;
//        CEVPRC_REP_PRZ.Value := Current.ByName('REP_VPRC_PRZ').AsCurrency;
//        CEVPRC_REP_PRO.Value := Current.ByName('REP_VPRC_PRO').AsCurrency;
//
//        { Loja Virtual }
//        CEVPRC_LV.Value := Current.ByName('LJV_VPRC_PAD').AsCurrency;
//        CEPMKP.Value    := Current.ByName('LJV_VPRC_MKP').AsCurrency;
//
//        { Compras }
//        CEVPRC_COM.Value     := Current.ByName('CF_VPRC_PAD').AsCurrency;
//        CEVPRC_COM_IMP.Value := Current.ByName('CF_VPRC_PAD').AsCurrency;

        IECOL_ID.Text  := IntToStr(Current.ByName('COL_ID').AsInteger);
        IESEG_ID.Text  := IntToStr(Current.ByName('SEG_ID').AsInteger);
        IEGRP_ID.Text  := IntToStr(Current.ByName('GRP_ID').AsInteger);
        IESGP_ID.Text  := IntToStr(Current.ByName('SGP_ID').AsInteger);
        IECAT_ID.Text  := IntToStr(Current.ByName('CAT_ID').AsInteger);
        IESCT_ID.Text  := IntToStr(Current.ByName('SCT_ID').AsInteger);

//        IEMKP_IDML.Text := IntToStr(Current.ByName('MKP_MLV_ID').AsInteger);
//        IEMKP_IDSP.Text := IntToStr(Current.ByName('MKP_MPG_ID').AsInteger);

//        PENCM.Text   := Current.ByName('NCM' ).AsString;
//        CEPIPI.Value := Current.ByName('PIPI').AsCurrency;

//        cbdens.Text := Current.ByName('DNS_NO').AsString;
//        cbtitf.Text := Current.ByName('TFI_NO').AsString;
//        cbstal.Text := Current.ByName('ACB_NO').AsString;

        EMINFADCAD.Text := Current.ByName('INFADCAD').AsString;
        EMINFADCPL.Text := Current.ByName('INFADTEC').AsString;
      end;  
    end;

    try
      oOTransact(TEdicao);

      { Pesquisa Grade }
      SPEdicao.Close;
      SPEdicao.StoredProcName := 'SP_SHE_GRD_EDI';
      SPEdicao.Prepare;

      { Parâmetros }
      SPEdicao.ParamByName('PIDEV').Value := REC_SHE_DEF.AIDEV;
      SPEdicao.ParamByName('PCDEV').Value := 1;
      SPEdicao.ParamByName('PFLAG').Value := 0;

      SPEdicao.ParamByName('PIDEP').Value := RECParametros.ID;
      SPEdicao.ParamByName('PIDCA').Value := RECUsuarios.ID;

      SPEdicao.ParamByName('PIP'  ).Value := RECParametros.IP;
      SPEdicao.ParamByName('PHOST').Value := RECParametros.HOST;

      { Edição }
      SPEdicao.ParamByName('AIDAK').Value := REC_SHE_DEF.AIDAK;
      SPEdicao.ExecProc;

      { Pesquisa Composição }
      { Parâmetros }
      SPEdicao.ParamByName('PIDEV').Value := REC_SHE_DEF.AIDEV;
      SPEdicao.ParamByName('PCDEV').Value := 1;
      SPEdicao.ParamByName('PFLAG').Value := 0;

      SPEdicao.ParamByName('PIDEP').Value := RECParametros.ID;
      SPEdicao.ParamByName('PIDCA').Value := RECUsuarios.ID;

      SPEdicao.ParamByName('PIP'  ).Value := RECParametros.IP;
      SPEdicao.ParamByName('PHOST').Value := RECParametros.HOST;

      { Edição }
      SPEdicao.ParamByName('AIDAK').Value := REC_SHE_DEF.AIDAK;
      SPEdicao.ExecProc;

      oCTransact(TEdicao);
    except
      oCTransact(TEdicao,ltRollback);
    end;

    oOTransact(TEdicao);
//    _SHE_GRD; { Grade }
//    _SHE_CMP; { Composição }

//    REC_SHE_DEF.AIDCP := INTTOSTR(CAD_PRO_GRDIDCP.AsInteger);
//    REC_SHE_DEF.ACEAN := CAD_PRO_GRDCEAN.AsString;
  finally
    oUnLockWindowUpdate; { Destrava }
  end;
end;

procedure TFrmCAD_PRO_EDI.EDARTIGOChange(Sender: TObject);
begin
  EDARTIGO.Enabled := (EDARTIGO.Text = EmptyStr);
end;

procedure TFrmCAD_PRO_EDI.EDARTIGOValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  EDARTIGO.Text := Trim(EDARTIGO.Text);
end;

procedure TFrmCAD_PRO_EDI.EDDECPChange(Sender: TObject);
begin
  TdxImageEdit(Self).Font.Size := IFThen(Length(TdxImageEdit(Self).Text) >= 65,8,9);
end;

procedure TFrmCAD_PRO_EDI.IECOL_IDChange(Sender: TObject);
begin
  TdxImageEdit(Self).Font.Size := IFThen(Length(TdxImageEdit(Self).Text) >= 55,8,9);
end;

end.
