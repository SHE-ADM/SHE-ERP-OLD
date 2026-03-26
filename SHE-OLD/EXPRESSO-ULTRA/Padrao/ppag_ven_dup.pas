unit ppag_ven_dup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, dxExEdtr, IBEvents, ImgList, IBStoredProc, IBDatabase,
  DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls,  ComCtrls, dxDBTLCl, dxGrClms, StdCtrls, rxSpeedbar;

type
  Tfrmpag_ven_dup = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroFIN_CCAB: TIntegerField;
    cadastroFIN_CDBX: TIntegerField;
    cadastroFIN_CDCX: TIntegerField;
    cadastroFIN_CFOR: TIntegerField;
    cadastroFIN_CVEN: TIntegerField;
    cadastroFIN_CREP: TIntegerField;
    cadastroFIN_PRAZ: TSmallintField;
    cadastroFIN_ATRA: TSmallintField;
    cadastroFIN_CONC: TSmallintField;
    cadastroFIN_DCAD: TDateField;
    cadastroFIN_DVEN: TDateField;
    cadastroFIN_DPAG: TDateField;
    cadastroFIN_DMED: TDateField;
    cadastroFIN_DATR: TDateField;
    cadastroFIN_STDO: TIBStringField;
    cadastroFIN_DOCT: TIBStringField;
    cadastroFIN_BANC: TIBStringField;
    cadastroFIN_DBAN: TIBStringField;
    cadastroFIN_AGEN: TIBStringField;
    cadastroFIN_CONT: TIBStringField;
    cadastroFIN_NCHQ: TIBStringField;
    cadastroFIN_MCHQ: TSmallintField;
    cadastroFIN_TIPO: TIBStringField;
    cadastroFIN_STFI: TIBStringField;
    cadastroFIN_STCO: TIBStringField;
    cadastroFIN_VALO: TIBBCDField;
    cadastroFIN_VPAG: TIBBCDField;
    cadastroFIN_VPEN: TIBBCDField;
    cadastroFIN_OBSE: TMemoField;
    cadastroFIN_STA: TIBStringField;
    cadastroFIN_PREV: TIBStringField;
    cadastroFIN_DUPL: TIBStringField;
    cadastroFIN_DCAN: TDateField;
    cadastroFIN_CPPL: TIntegerField;
    cadastroFIN_CCUS: TIntegerField;
    cadastroFIN_CBCO: TIntegerField;
    cadastroFIN_PORT: TIBStringField;
    cadastroFIN_VMUL: TIBBCDField;
    cadastroFIN_PMUL: TIBBCDField;
    cadastroFIN_VJUR: TIBBCDField;
    cadastroFIN_PJUR: TIBBCDField;
    cadastroFIN_VDES: TIBBCDField;
    cadastroFIN_PDES: TIBBCDField;
    cadastroFIN_DESC: TIBStringField;
    cadastroFIN_CDCO: TIntegerField;
    cadastroFIN_CDBA: TIBStringField;
    cadastroFIN_DEBA: TIBStringField;
    cadastroFIN_DBAI: TDateField;
    cadastroFIN_IDBX: TIBStringField;
    cadastroFIN_VENC: TIBBCDField;
    cadastroFIN_DDES: TDateField;
    dbgConsultaFIN_DCAD: TdxDBGridDateColumn;
    dbgConsultaFIN_DVEN: TdxDBGridDateColumn;
    dbgConsultaFIN_DOCT: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ABRE_TABELA;
  public
    { Public declarations }
  end;

var
  frmpag_ven_dup: Tfrmpag_ven_dup;

implementation

uses p_funcoes,uPrincipal;

{$R *.dfm}

procedure Tfrmpag_ven_dup.ABRE_TABELA;
begin
  with cadastro do
  begin
    DeleteSQL.Clear;
    DeleteSQL.Add('delete from '+TSConsulta.Values['fin_pag']);
    DeleteSQL.Add('where');
    DeleteSQL.Add('ID = :OLD_ID');

    InsertSQL.Clear;
    InsertSQL.Add('insert into '+TSConsulta.Values['fin_pag']);
    InsertSQL.Add('  (FIN_AGEN, FIN_ATRA, FIN_BANC, FIN_CBCO, FIN_CCAB, FIN_CCUS, FIN_CDBA,');
    InsertSQL.Add('   FIN_CDBX, FIN_CDCO, FIN_CDCX, FIN_CFOR, FIN_CONC, FIN_CONT, FIN_CPPL,');
    InsertSQL.Add('   FIN_CREP, FIN_CVEN, FIN_DATR, FIN_DBAI, FIN_DBAN, FIN_DCAD, FIN_DCAN,');
    InsertSQL.Add('   FIN_DDES, FIN_DEBA, FIN_DESC, FIN_DMED, FIN_DOCT, FIN_DPAG, FIN_DUPL,');
    InsertSQL.Add('   FIN_DVEN, FIN_IDBX, FIN_MCHQ, FIN_NCHQ, FIN_OBSE, FIN_PDES, FIN_PJUR,');
    InsertSQL.Add('   FIN_PMUL, FIN_PORT, FIN_PRAZ, FIN_PREV, FIN_STA , FIN_STCO, FIN_STDO,');
    InsertSQL.Add('   FIN_STFI, FIN_TIPO, FIN_VALO, FIN_VDES, FIN_VENC, FIN_VJUR, FIN_VMUL,');
    InsertSQL.Add('   FIN_VPAG, FIN_VPEN, ID)');
    InsertSQL.Add('values');
    InsertSQL.Add('  (:FIN_AGEN, :FIN_ATRA, :FIN_BANC, :FIN_CBCO, :FIN_CCAB, :FIN_CCUS, :FIN_CDBA,');
    InsertSQL.Add('   :FIN_CDBX, :FIN_CDCO, :FIN_CDCX, :FIN_CFOR, :FIN_CONC, :FIN_CONT, :FIN_CPPL,');
    InsertSQL.Add('   :FIN_CREP, :FIN_CVEN, :FIN_DATR, :FIN_DBAI, :FIN_DBAN, :FIN_DCAD, :FIN_DCAN,');
    InsertSQL.Add('   :FIN_DDES, :FIN_DEBA, :FIN_DESC, :FIN_DMED, :FIN_DOCT, :FIN_DPAG, :FIN_DUPL,');
    InsertSQL.Add('   :FIN_DVEN, :FIN_IDBX, :FIN_MCHQ, :FIN_NCHQ, :FIN_OBSE, :FIN_PDES, :FIN_PJUR,');
    InsertSQL.Add('   :FIN_PMUL, :FIN_PORT, :FIN_PRAZ, :FIN_PREV, :FIN_STA , :FIN_STCO, :FIN_STDO,');
    InsertSQL.Add('   :FIN_STFI, :FIN_TIPO, :FIN_VALO, :FIN_VDES, :FIN_VENC, :FIN_VJUR, :FIN_VMUL,');
    InsertSQL.Add('   :FIN_VPAG, :FIN_VPEN, :ID)');

    ModifySQL.Clear;
    ModifySQL.Add('update '+TSConsulta.Values['fin_pag']);
    ModifySQL.Add('set');
    ModifySQL.Add('  FIN_AGEN = :FIN_AGEN,');
    ModifySQL.Add('  FIN_ATRA = :FIN_ATRA,');
    ModifySQL.Add('  FIN_BANC = :FIN_BANC,');
    ModifySQL.Add('  FIN_CBCO = :FIN_CBCO,');
    ModifySQL.Add('  FIN_CCAB = :FIN_CCAB,');
    ModifySQL.Add('  FIN_CCUS = :FIN_CCUS,');
    ModifySQL.Add('  FIN_CDBA = :FIN_CDBA,');
    ModifySQL.Add('  FIN_CDBX = :FIN_CDBX,');
    ModifySQL.Add('  FIN_CDCO = :FIN_CDCO,');
    ModifySQL.Add('  FIN_CDCX = :FIN_CDCX,');
    ModifySQL.Add('  FIN_CFOR = :FIN_CFOR,');
    ModifySQL.Add('  FIN_CONC = :FIN_CONC,');
    ModifySQL.Add('  FIN_CONT = :FIN_CONT,');
    ModifySQL.Add('  FIN_CPPL = :FIN_CPPL,');
    ModifySQL.Add('  FIN_CREP = :FIN_CREP,');
    ModifySQL.Add('  FIN_CVEN = :FIN_CVEN,');
    ModifySQL.Add('  FIN_DATR = :FIN_DATR,');
    ModifySQL.Add('  FIN_DBAI = :FIN_DBAI,');
    ModifySQL.Add('  FIN_DBAN = :FIN_DBAN,');
    ModifySQL.Add('  FIN_DCAD = :FIN_DCAD,');
    ModifySQL.Add('  FIN_DCAN = :FIN_DCAN,');
    ModifySQL.Add('  FIN_DDES = :FIN_DDES,');
    ModifySQL.Add('  FIN_DEBA = :FIN_DEBA,');
    ModifySQL.Add('  FIN_DESC = :FIN_DESC,');
    ModifySQL.Add('  FIN_DMED = :FIN_DMED,');
    ModifySQL.Add('  FIN_DOCT = :FIN_DOCT,');
    ModifySQL.Add('  FIN_DPAG = :FIN_DPAG,');
    ModifySQL.Add('  FIN_DUPL = :FIN_DUPL,');
    ModifySQL.Add('  FIN_DVEN = :FIN_DVEN,');
    ModifySQL.Add('  FIN_IDBX = :FIN_IDBX,');
    ModifySQL.Add('  FIN_MCHQ = :FIN_MCHQ,');
    ModifySQL.Add('  FIN_NCHQ = :FIN_NCHQ,');
    ModifySQL.Add('  FIN_OBSE = :FIN_OBSE,');
    ModifySQL.Add('  FIN_PDES = :FIN_PDES,');
    ModifySQL.Add('  FIN_PJUR = :FIN_PJUR,');
    ModifySQL.Add('  FIN_PMUL = :FIN_PMUL,');
    ModifySQL.Add('  FIN_PORT = :FIN_PORT,');
    ModifySQL.Add('  FIN_PRAZ = :FIN_PRAZ,');
    ModifySQL.Add('  FIN_PREV = :FIN_PREV,');
    ModifySQL.Add('  FIN_STA  = :FIN_STA, ');
    ModifySQL.Add('  FIN_STCO = :FIN_STCO,');
    ModifySQL.Add('  FIN_STDO = :FIN_STDO,');
    ModifySQL.Add('  FIN_STFI = :FIN_STFI,');
    ModifySQL.Add('  FIN_TIPO = :FIN_TIPO,');
    ModifySQL.Add('  FIN_VALO = :FIN_VALO,');
    ModifySQL.Add('  FIN_VDES = :FIN_VDES,');
    ModifySQL.Add('  FIN_VENC = :FIN_VENC,');
    ModifySQL.Add('  FIN_VJUR = :FIN_VJUR,');
    ModifySQL.Add('  FIN_VMUL = :FIN_VMUL,');
    ModifySQL.Add('  FIN_VPAG = :FIN_VPAG,');
    ModifySQL.Add('  FIN_VPEN = :FIN_VPEN,');
    ModifySQL.Add('  ID = :ID');
    ModifySQL.Add('where');
    ModifySQL.Add('  ID = :OLD_ID');
  end;
end;

procedure Tfrmpag_ven_dup.FormCreate(Sender: TObject);
begin
  cEvent := 'FIN_PAG';
  ABRE_TABELA;
end;

end.
