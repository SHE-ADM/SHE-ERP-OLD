unit qcai_mov_cai_ana;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg;

type
  Tqrpcai_mov_cai_ana = class(TQuickRep)
    QConsulta: TIBQuery;
    Relatorio: TIBQuery;
    QRBand8: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    qrgrom_dven: TQRGroup;
    QRDBText3: TQRDBText;
    qrgrom_drep: TQRGroup;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRBand9: TQRBand;
    QRLabel43: TQRLabel;
    QRExpr20: TQRExpr;
    QRExpr1: TQRExpr;
    qrlsub: TQRLabel;
    QRBand10: TQRBand;
    QRLabel46: TQRLabel;
    QRExpr24: TQRExpr;
    QRExpr3: TQRExpr;
    QRSysData1: TQRSysData;
    qrlrodape: TQRLabel;
    QRLabel1: TQRLabel;
    RelatorioCLI_FANT: TIBStringField;
    RelatorioREP_FANT: TIBStringField;
    RelatorioFIN_STDO: TIBStringField;
    RelatorioFIN_TIPO: TIBStringField;
    RelatorioFIN_VALO: TIBBCDField;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    RelatorioFIN_CDBX: TIntegerField;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape4: TQRShape;
    RelatorioFIN_VENT: TCurrencyField;
    RelatorioFIN_CONC: TSmallintField;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    RelatorioUSU_DUSU: TIBStringField;
    RelatorioROM_DERO: TIBStringField;
    RelatorioID: TIntegerField;
    TCadastro: TIBTransaction;
    RelatorioFIN_DBAI: TDateField;
    RelatorioFIN_TITU: TIBStringField;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    RelatorioVTFA: TIBBCDField;
  private

  public
  end;

var
  qrpcai_mov_cai_ana: Tqrpcai_mov_cai_ana;

implementation

{$R *.DFM}

end.
