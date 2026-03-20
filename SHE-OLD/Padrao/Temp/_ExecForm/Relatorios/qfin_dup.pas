unit qfin_dup;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB,
  QrAngLbl,DateUtils, jpeg, IBCustomDataSet, IBQuery, IBDatabase,
  IBStoredProc, IBSQL;

type
  Tqrpfin_dup = class(TQuickRep)
    qrldia: TQRLabel;
    QRLabel54: TQRLabel;
    QRDBText23: TQRDBText;
    QRShape21: TQRShape;
    QRBand1: TQRBand;
    QRShape29: TQRShape;
    QRShape1: TQRShape;
    QRShape5: TQRShape;
    QRShape31: TQRShape;
    QRShape3: TQRShape;
    QRLabel38: TQRLabel;
    QRShape14: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape4: TQRShape;
    QRShape2: TQRShape;
    QRLabel11: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel17: TQRLabel;
    QRShape13: TQRShape;
    QRLabel18: TQRLabel;
    QRShape15: TQRShape;
    QRLabel19: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape19: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape20: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape22: TQRShape;
    QRLabel12: TQRLabel;
    QRShape27: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape35: TQRShape;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRLabel65: TQRLabel;
    QRShape39: TQRShape;
    QRLabel66: TQRLabel;
    QRShape40: TQRShape;
    QRLabel67: TQRLabel;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRShape45: TQRShape;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRShape47: TQRShape;
    QRLabel49: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    valorext1: TQRLabel;
    qrlmes: TQRLabel;
    QRLabel62: TQRLabel;
    qrlano: TQRLabel;
    QRDBText27: TQRDBText;
    QRITituloLogo: TQRImage;
    QRAngledLabel4: TQRAngledLabel;
    QRAngledLabel3: TQRAngledLabel;
    QRLabel55: TQRLabel;
    QRDBText29: TQRDBText;
    qrlraza1: TQRLabel;
    qrllogr1: TQRLabel;
    qrlend1: TQRLabel;
    qrlcnpj1: TQRLabel;
    qrlinsc1: TQRLabel;
    qrltel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText13: TQRDBText;
    qrlraza5: TQRAngledLabel;
    valorext2: TQRLabel;
    QRLabel85: TQRLabel;
    QRDBText24: TQRDBText;
    QRShape30: TQRShape;
    QRShape46: TQRShape;
    QRShape34: TQRShape;
    QRLabel94: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel95: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    qrlraza3: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    qrlraza4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel32: TQRLabel;
    qrlend2: TQRLabel;
    qrlraza2: TQRLabel;
    qrllogr2: TQRLabel;
    qrlend3: TQRLabel;
    qrlend4: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    qrltel2: TQRLabel;
    QRLabel51: TQRLabel;
    QRDBText26: TQRDBText;
    qrlinsc2: TQRLabel;
    qrlcnpj2: TQRLabel;
    QRDBText31: TQRDBText;
    QRShape26: TQRShape;
    QRShape44: TQRShape;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel45: TQRLabel;
    QRLabel50: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel52: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel56: TQRLabel;
    QRDBText30: TQRDBText;
    QRITituloLogo2: TQRImage;
    QConsulta: TIBQuery;
    qrlvnf: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText17: TQRDBText;
    TCadastro: TIBTransaction;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
  private
  public
  end;

var
  qrpfin_dup: Tqrpfin_dup;

implementation

uses pfin_dup, uPrincipal;

{$R *.DFM}

procedure Tqrpfin_dup.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  valorext1.Caption := '';
  valorext1.Caption := oRETValorExtenso(frmfin_dup.cadastroNFE_VDUP.AsFloat);
  valorext1.Update;
  valorext2.Caption := '';
  valorext2.Caption := valorext1.Caption;
  valorext2.Update;

  with QConsulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(NFE_VDUP) FROM '+SLPrincipal.Values['nfe_dup']);
    SQL.Add('WHERE  NFE_CCAB = '''+frmfin_dup.cadastroNFE_CCAB.AsString+'''');
    Open;
    qrlvnf.Caption  := formatfloat('#,0.00',fields[0].AsFloat);
  end;  
end;

procedure Tqrpfin_dup.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrlmes.Caption := uppercase(oRETMesExtenso(date));
  qrlano.Caption := oStrZero(YearOf(Date),4);
  qrldia.Caption := oStrZero(DayOf(date),2);
end;

procedure Tqrpfin_dup.QuickRepAfterPrint(Sender: TObject);
begin
  try
    oOTransact(TEdicao);
    if not frmfin_dup.cadastro.Active then
    frmfin_dup.cadastro.Open;
    frmfin_dup.cadastro.DisableControls;
    frmfin_dup.cadastro.First;
    while not frmfin_dup.cadastro.Eof do
    begin
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['nfe_dup']);
        SQL.Add('SET   NFE_IDBX = ''99''');
        SQL.Add('WHERE NFE_TITU = '''+frmfin_dup.cadastroNFE_TITU.AsString+'''');
        ExecQuery;

        Close;
        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['fin_rec_ban_bai']);
        SQL.Add('SET   FIN_CDDP = ''99''');
        SQL.Add('WHERE FIN_TITU = '''+frmfin_dup.cadastroNFE_TITU.AsString+'''');
        ExecQuery;
      end;
      frmfin_dup.cadastro.Next;
    end;
  finally
    frmfin_dup.cadastro.EnableControls;

    oCTransact(TEdicao);
    oRTransact(frmfin_dup.IBTRA);
  end;
end;

end.


