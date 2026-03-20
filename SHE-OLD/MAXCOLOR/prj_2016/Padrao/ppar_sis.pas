unit ppar_sis;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, dxTL, dxDBCtrl, dxDBGrid, DB, IBCustomDataSet,
  IBStoredProc, IBDatabase, ImgList, IBQuery, dxCntner,
  ComCtrls, ExtCtrls, IBEvents, dxExEdtr, StdCtrls, rxSpeedbar;

type
  Tfrmpar_sis = class(Tfrmpadr2)
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaPAR_FANT: TdxDBGridMaskColumn;
    dbgConsultaPAR_CNPJ: TdxDBGridMaskColumn;
    cadastroID: TIntegerField;
    cadastroPAR_CDNF: TIBStringField;
    cadastroPAR_SERI: TIBStringField;
    cadastroPAR_CCRT: TIBStringField;
    cadastroPAR_OCRT: TMemoField;
    cadastroPAR_CNA1: TIBStringField;
    cadastroPAR_CNA2: TIBStringField;
    cadastroPAR_CCLI: TIntegerField;
    cadastroPAR_FANT: TIBStringField;
    cadastroPAR_RAZA: TIBStringField;
    cadastroPAR_RAMO: TIBStringField;
    cadastroPAR_CNAE: TIBStringField;
    cadastroPAR_CNPJ: TIBStringField;
    cadastroPAR_INSC: TIBStringField;
    cadastroPAR_DDD: TIBStringField;
    cadastroPAR_FONE: TIBStringField;
    cadastroPAR_TLOG: TIBStringField;
    cadastroPAR_LOGR: TIBStringField;
    cadastroPAR_NUME: TIBStringField;
    cadastroPAR_COMP: TIBStringField;
    cadastroPAR_CEP: TIBStringField;
    cadastroPAR_BAI: TIBStringField;
    cadastroPAR_CID: TIBStringField;
    cadastroPAR_CCID: TIBStringField;
    cadastroPAR_UF: TIBStringField;
    cadastroPAR_CUF: TIBStringField;
    cadastroPAR_FMAI: TIBStringField;
    cadastroPAR_DOLA: TIBBCDField;
    cadastroPAR_DUPL: TIBStringField;
    cadastroPAR_FRET: TIBStringField;
    cadastroPAR_TCLI: TIBStringField;
    cadastroPAR_TPRO: TIBStringField;
    cadastroPAR_GRAD: TIBStringField;
    cadastroPAR_NVIA: TIBStringField;
    cadastroPAR_STA: TIBStringField;
    cadastroPAR_FOTO: TBlobField;
    cadastroPAR_CPAG: TIntegerField;
    cadastroPAR_CTRA: TIntegerField;
    cadastroPAR_TVOL: TIBStringField;
    cadastroPAR_CICM: TIBBCDField;
    cadastroPAR_FOT2: TBlobField;
    cadastroPAR_CAIX: TIBStringField;
    cadastroPAR_CNSD: TIBStringField;
    cadastroPAR_CSTD: TIBStringField;
    cadastroPAR_CNSF: TIBStringField;
    cadastroPAR_CSTF: TIBStringField;
    cadastroPAR_STPD: TIBStringField;
    cadastroPAR_STCO: TIBStringField;
    cadastroPAR_STAV: TStringField;
    dbgConsultaPAR_STAV: TdxDBGridColumn;
    cadastroPAR_TIPO: TIBStringField;
    cadastroPAR_PGRD: TIBStringField;
    cadastroPAR_CFOR: TIntegerField;
    cadastroPAR_CREP: TIntegerField;
    cadastroPAR_FOT3: TBlobField;
    cadastroPAR_MAIL: TIBStringField;
    cadastroPAR_SITE: TIBStringField;
    cadastroPAR_LOGO: TIBStringField;
    cadastroPAR_CANH: TIBStringField;
    cadastroPAR_CEND: TIBStringField;
    cadastroPAR_SPRO: TIBStringField;
    cadastroPAR_RICM: TIBStringField;
    cadastroPAR_PECA: TIBStringField;
    cadastroPAR_LIMC: TSmallintField;
    cadastroPAR_LIMB: TSmallintField;
    cadastroPAR_ONFE: TMemoField;
    cadastroPAR_LIME: TIBStringField;
    cadastroPAR_ESEG: TIBStringField;
    cadastroPAR_OPED: TMemoField;
    cadastroPAR_DIOR: TIBStringField;
    cadastroPAR_PSEP: TIBStringField;
    cadastroPAR_RFOR: TIBStringField;
    cadastroPAR_IEST: TIBStringField;
    cadastroPAR_BPAG: TSmallintField;
    cadastroPAR_CSEQ: TIBStringField;
    cadastroPAR_PVAR: TIBBCDField;
    cadastroPAR_PREP: TIBBCDField;
    cadastroPAR_DSEP: TSmallintField;
    cadastroPAR_BCHQ: TSmallintField;
    cadastroPAR_MCRD: TIBBCDField;
    cadastroPAR_PCRD: TIBBCDField;
    cadastroPAR_PREL: TIBStringField;
    cadastroPAR_REND: TIBStringField;
    cadastroPAR_DCRD: TIBStringField;
    cadastroPAR_DMAP: TIBStringField;
    CadastroPAR_CBAR: TBlobField;
    CadastroPAR_IM: TIBStringField;
    CadastroPAR_IE: TIBStringField;
    CadastroPAR_UNIDADEFEDERADA: TIBStringField;
    CadastroPAR_UNIDADEFEDERADACODIGO: TSmallintField;
    CadastroPAR_NOSERIECERTIFICADO: TIBStringField;
    CadastroPAR_EMAILCONTABIL: TIBStringField;
    CadastroPAR_EMAILXMLCOFRE: TIBStringField;
    CadastroPAR_LKFACEBOOK: TIBStringField;
    CadastroPAR_FTFACEBOOK: TBlobField;
    CadastroPAR_LKINSTAGRAM: TIBStringField;
    CadastroPAR_FTINSTAGRAM: TBlobField;
    CadastroPAR_LKTWITTER: TIBStringField;
    CadastroPAR_FTTWITTER: TBlobField;
    CadastroPAR_SWHASSINATURA: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure siINCClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure cadastroCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpar_sis: Tfrmpar_sis;

implementation

{$R *.dfm}

uses uPrincipal, ppar_sis_edi;

procedure Tfrmpar_sis.FormCreate(Sender: TObject);
begin
  cEvent := 'PAR_SIS';
  inherited;
end;

procedure Tfrmpar_sis.siINCClick(Sender: TObject);
begin
  inherited;
  frmpar_sis_edi := TFrmpar_sis_edi.Create(self);
  try
    frmpar_sis_edi.Tag := frmpar_sis.Tag;
    frmpar_sis_edi.ShowModal;
  finally
    if frmpar_sis_edi.editado then
       ExecuteEvent;
    freeAndNil(frmpar_sis_edi);
    frmpar_sis_edi.Free;
  end;
end;

procedure Tfrmpar_sis.siALTClick(Sender: TObject);
begin
  inherited;
  frmpar_sis_edi := TFrmpar_sis_edi.Create(self);
  try
    frmpar_sis_edi.Tag := frmpar_sis.Tag;
    frmpar_sis_edi.ShowModal;
  finally
    if frmpar_sis_edi.editado then
       ExecuteEvent;
    freeAndNil(frmpar_sis_edi);
    frmpar_sis_edi.Free;
  end;
end;

procedure Tfrmpar_sis.siDELClick(Sender: TObject);
begin
  if cadastroPAR_STA.AsString = '1' then
     raise exception.Create('Empresa já cancelada !');
     
  if oYesNo(handle,'Cancelar o cadastro da empresa '+cadastroPAR_FANT.AsString+' ?') = mrno then
     abort;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('UPDATE PAR_SIS');
    SQL.Add('SET    PAR_STA = ''1''');
    SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
    ExecSQL;
    frmprincipal.Log_Eve('PARAMETROS','PARAMETROS DO SISTEMA','LIXEIRA' ,cadastroID.AsString,cadastroID.AsString,cadastroPAR_FANT.AsString,'','');
  end;
  ExecuteEvent;
end;

procedure Tfrmpar_sis.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
  var Value: Variant;
begin
  if not ASelected then
  begin
    AFont.Color := clBlack;
    AColor      := clWhite;

    Value := ANode.Values[3];
    if not VarIsNull(Value) then
    begin
      if Value = 'INATIVO' then
      begin
         AFont.Color := clwhite;
         AColor      := clRed;
      end;
    end;
  end;
end;

procedure Tfrmpar_sis.cadastroCalcFields(DataSet: TDataSet);
begin
  cadastroPAR_STAV.Value := 'ATIVO';
  if cadastroPAR_STA.AsString <> '0' then
  cadastroPAR_STAV.Value := 'INATIVO';
end;

end.

