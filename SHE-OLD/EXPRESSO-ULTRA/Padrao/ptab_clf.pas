unit ptab_clf;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, IBStoredProc, IBDatabase, ImgList, DB,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
   ComCtrls, ExtCtrls, IBEvents, dxExEdtr, dxDBTLCl, dxGrClms,
  StdCtrls, rxSpeedbar;

type
  Tfrmtab_clf = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroCLF_CCLF: TIBStringField;
    GroupBox1: TGroupBox;
    dbgcad_pro: TdxDBGrid;
    cad_pro: TIBQuery;
    dtscad_pro: TDataSource;
    cad_proPRO_CART: TIBStringField;
    cad_proPRO_DPRO: TIBStringField;
    dbgcad_proPRO_CART: TdxDBGridMaskColumn;
    dbgcad_proPRO_DPRO: TdxDBGridMaskColumn;
    cadastroCLF_VI04: TIBBCDField;
    cadastroCLF_VI07: TIBBCDField;
    cadastroCLF_VI12: TIBBCDField;
    cadastroCLF_UF: TIBStringField;
    dbgConsultaCLF_CCLF: TdxDBGridMaskColumn;
    dbgConsultaCLF_VI04: TdxDBGridMaskColumn;
    dbgConsultaCLF_VI07: TdxDBGridMaskColumn;
    dbgConsultaCLF_VI12: TdxDBGridMaskColumn;
    dbgConsultaCLF_UF: TdxDBGridMaskColumn;
    procedure cadastroBeforeEdit(DataSet: TDataSet);
    procedure cadastroBeforeInsert(DataSet: TDataSet);
    procedure siDELClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cadastroAfterOpen(DataSet: TDataSet);
    procedure cadastroNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtab_clf: Tfrmtab_clf;

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmtab_clf.cadastroBeforeEdit(DataSet: TDataSet);
begin
//  PCampo := 'USU_CAD_PROA';
  inherited;
end;

procedure Tfrmtab_clf.cadastroBeforeInsert(DataSet: TDataSet);
begin
//  PCampo := 'USU_CAD_PROI';
  inherited;
end;

procedure Tfrmtab_clf.siDELClick(Sender: TObject);
begin
//  PCampo := 'USU_CAD_PROI';
  inherited;

  if oYesNo(handle,'Confirma a exclusão do N.C.M. '+cadastroCLF_CCLF.AsString+' ?') = mrno then
     abort;
  cadastro.Delete;
end;

procedure Tfrmtab_clf.FormDestroy(Sender: TObject);
begin
  inherited;
  frmtab_clf := nil;
end;

procedure Tfrmtab_clf.FormCreate(Sender: TObject);
begin
//  siLIXO.Enabled   := (frmprincipal.cad_usuUSU_CAD_PROI.AsString = '1');
  siREL.Enabled    := false;

  inherited;
  cEvent := 'TAB_CLF';
end;

procedure Tfrmtab_clf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmtab_clf <> nil then
  begin
    frmtab_clf.Release;
    frmtab_clf := nil;
  end;
end;

procedure Tfrmtab_clf.dbgConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if cadastro.State in [dsEdit,dsInsert] then
                 begin
                   if dbgconsulta.FocusedColumn = 4 then
                   begin
                     cadastro.Next;
                     if cadastro.Eof then
                        cadastro.Append;
                     dbgconsulta.FocusedColumn := 0;
                   end
                   else
                   dbgconsulta.FocusedColumn := dbgconsulta.FocusedColumn + 1;
                 end;
               end;
    VK_DELETE: if cadastro.State = dsBrowse then
                  siDEL.Click;
    VK_ESCAPE: if cadastro.State = dsBrowse then close else cadastro.Cancel;
    VK_INSERT: if not siSAV.Enabled then siINC.Click;
  end;
end;

procedure Tfrmtab_clf.cadastroAfterOpen(DataSet: TDataSet);
begin
  cad_pro.Close;
  cad_pro.Open;
end;

procedure Tfrmtab_clf.cadastroNewRecord(DataSet: TDataSet);
begin
  cadastroID.Value := 0;
end;

end.
