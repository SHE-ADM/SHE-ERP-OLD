unit pfin_pag_com;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, NMFtp, IBStoredProc, IBDatabase, ImgList, DB, Psock,
  NMHttp, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  SpeedBar, ComCtrls, ExtCtrls, dxDBTLCl, dxGrClms;

type
  Tfrmfin_pag_com = class(Tfrmpadr1)
    cadastroID: TIntegerField;
    cadastroFIN_TIPO: TIBStringField;
    cadastroFIN_CODI: TIntegerField;
    cadastroFIN_DESC: TIBStringField;
    cadastroFIN_FILT: TIBStringField;
    cadastroFIN_DAT1: TDateField;
    cadastroFIN_DAT2: TDateField;
    cadastroFIN_STVE: TIBStringField;
    cadastroFIN_PERC: TIBBCDField;
    cadastroFIN_STCO: TIBStringField;
    cadastroFIN_DTCO: TDateField;
    dbgConsultaFIN_TIPO: TdxDBGridPickColumn;
    dbgConsultaFIN_DESC: TdxDBGridPickColumn;
    dbgConsultaFIN_FILT: TdxDBGridPickColumn;
    dbgConsultaFIN_DAT1: TdxDBGridDateColumn;
    dbgConsultaFIN_DAT2: TdxDBGridDateColumn;
    dbgConsultaFIN_PERC: TdxDBGridMaskColumn;
    dbgConsultaFIN_STCO: TdxDBGridPickColumn;
    dbgConsultaFIN_DTCO: TdxDBGridDateColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfin_pag_com: Tfrmfin_pag_com;

implementation

{$R *.dfm}

end.
