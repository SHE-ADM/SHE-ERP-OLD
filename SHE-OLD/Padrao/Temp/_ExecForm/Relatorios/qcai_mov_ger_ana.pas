unit qcai_mov_ger_ana;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg;

type
  Tqrpcai_mov_ger_ana = class(TQuickRep)
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
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    RelatorioROM_DERO: TIBStringField;
    RelatorioROM_DROM: TDateField;
    RelatorioROM_CONC: TSmallintField;
    RelatorioROM_STCO: TIBStringField;
    RelatorioROM_STPD: TIBStringField;
    RelatorioROM_STFI: TIBStringField;
    RelatorioCLI_FANT: TIBStringField;
    RelatorioUSU_DUSU: TIBStringField;
    RelatorioREP_FANT: TIBStringField;
    RelatorioROM_VALO: TIBBCDField;
    TCadastro: TIBTransaction;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
  private

  public
  end;

var
  qrpcai_mov_ger_ana: Tqrpcai_mov_ger_ana;

implementation

uses uPrincipal;

{$R *.DFM}

end.
