unit ptra_pro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SpeedBar, ExtCtrls, ImgList, dxEdLib, dxCntner, dxEditor,
  dxExEdtr, StdCtrls, IBDatabase, DB, IBCustomDataSet, IBQuery,
  IBStoredProc;

type
  Tfrmtra_pro = class(TForm)
    ImageList2: TImageList;
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    BSal: TSpeedItem;
    BSai: TSpeedItem;
    Shape3: TShape;
    Label3: TLabel;
    Shape4: TShape;
    Shape1: TShape;
    Shape2: TShape;
    cbdest: TdxImageEdit;
    cborig: TdxImageEdit;
    Label1: TLabel;
    Shape8: TShape;
    Label6: TLabel;
    Shape11: TShape;
    edcpro: TdxEdit;
    Shape5: TShape;
    Label2: TLabel;
    Shape6: TShape;
    edqtde: TdxEdit;
    consulta: TIBQuery;
    IBTra: TIBTransaction;
    cad_pro_est: TIBDataSet;
    cad_pro_estID: TIntegerField;
    cad_pro_estEST_CEST: TIntegerField;
    cad_pro_estEST_DOCU: TIBStringField;
    cad_pro_estEST_DATA: TDateField;
    cad_pro_estEST_CFAV: TIntegerField;
    cad_pro_estEST_DFAV: TIBStringField;
    cad_pro_estEST_CART: TIBStringField;
    cad_pro_estEST_CPRO: TIBStringField;
    cad_pro_estEST_DPRO: TIBStringField;
    cad_pro_estEST_DEBI: TIBBCDField;
    cad_pro_estEST_CRED: TIBBCDField;
    cad_pro_estEST_SANT: TIBBCDField;
    cad_pro_estEST_SATU: TIBBCDField;
    cad_pro_estEST_DUNI: TIBStringField;
    cad_pro_estEST_FLAG: TIBStringField;
    cad_pro_estEST_DUSU: TIBStringField;
    cad_pro_estEST_CODI: TIBStringField;
    cad_pro_estEST_CEMP: TIntegerField;
    cad_pro_estEST_DEMP: TIBStringField;
    cad_pro_estEST_CPR2: TIBStringField;
    ibSP: TIBStoredProc;
    cad_emp: TIBQuery;
    cad_empEMP_FANT: TIBStringField;
    cad_pro_estEST_CDET: TIBStringField;
    Shape7: TShape;
    Shape9: TShape;
    Label4: TLabel;
    cbeven: TdxImageEdit;
    procedure edcproKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BSalClick(Sender: TObject);
    procedure BSaiClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtra_pro: Tfrmtra_pro;

implementation

uses p_funcoes, pcad_pro, uPrincipal;

{$R *.dfm}

procedure Tfrmtra_pro.edcproKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmtra_pro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtra_pro.FormCreate(Sender: TObject);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   EMP_FANT FROM CAD_EMP');
    SQL.Add('WHERE    EMP_STA = 0');
    SQL.Add('ORDER BY EMP_FANT');
    Open;

    while not eof do
    begin
      cborig.Values.Add(fields[0].AsString);
      cborig.Descriptions.Add(fields[0].AsString);

      cbdest.Values.Add(fields[0].AsString);
      cbdest.Descriptions.Add(fields[0].AsString);
      next;
    end;
  end;
end;

procedure Tfrmtra_pro.BSalClick(Sender: TObject);
var
  orig,dest,id: integer;
  sant: double;
  satu: double;
  qres: double;
begin
  if yesno(handle,'Confirma tranferência do estoque ?') = mrno then
     abort;

  if cbeven.Text = '' then
  begin
    cbeven.SetFocus;
    raise exception.Create('Evento não selecionado !');
  end;

  if cborig.Text = '' then
  begin
    cborig.SetFocus;
    raise exception.Create('Local de origem não selecionado !');
  end;

  if (cbdest.Text = '') and (copy(cbeven.Text,1,1) = 'T') then
  begin
    cbdest.SetFocus;
    raise exception.Create('Local de destino não selecionado !');
  end;

  if strtofloat(edqtde.Text) < 0 then
  begin
    edqtde.SetFocus;
    raise exception.Create('Não é permitido lançamento negativo !');
  end;

  if strtofloat(edqtde.Text) = 0 then
  begin
    edqtde.SetFocus;
    raise exception.Create('Quantidade de lançamento não selecionado !');
  end;

  try
    with consulta do
    begin
      // ========================= * ESTOQUE ORIGEM * ========================= //

      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_EMP');
      SQL.Add('WHERE  EMP_FANT = '''+cborig.Text+'''');
      Open;
      orig := fields[0].AsInteger;

      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_EMP');
      SQL.Add('WHERE  EMP_FANT = '''+cbdest.Text+'''');
      Open;
      dest := fields[0].AsInteger;

      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_CAD_PRO_EST,0) FROM CAD_PRO_EST');
      Open;
      id := fields[0].AsInteger+1;

      ibSP.StoredProcName := 'SP_CAD_PRO_EST';
      ibSP.Prepare;
      ibSP.ParamByName('id').Value   := null;
      ibSP.ParamByName('cest').Value := id;
      ibSP.ParamByName('docu').Value := strzero(id,6);
      ibSP.ParamByName('dcad').Value := Date;
      ibSP.ParamByName('cfav').Value := dest;
      ibSP.ParamByName('dfav').Value := cbdest.Text;
      ibSP.ParamByName('cemp').Value := orig;
      ibSP.ParamByName('demp').Value := cborig.Text;
      ibSP.ParamByName('cart').Value := frmcad_pro.cadastroPRO_CART.AsString;
      ibSP.ParamByName('cpro').Value := edcpro.Text;
      ibSP.ParamByName('cpr2').Value := edcpro.Text;
      ibSP.ParamByName('dpro').Value := frmcad_pro.cadastroPRO_DPRO.AsString;
      ibSP.ParamByName('duni').Value := frmcad_pro.cadastroPRO_DUNI.AsString;
      ibSP.ParamByName('dero').Value := null;      
      if copy(cbeven.Text,1,1) = 'E' then
      begin
        ibSP.ParamByName('debi').Value := 0;
        ibSP.ParamByName('cred').Value := edqtde.Text;
      end
      else
      begin
        ibSP.ParamByName('debi').Value := edqtde.Text;
        ibSP.ParamByName('cred').Value := 0;
      end;
      ibSP.ParamByName('flag').Value := copy(cbeven.Text,1,1);
      ibSP.ParamByName('dusu').Value := frmprincipal.cad_usuUSU_DUSU.AsString;
      ibSP.ParamByName('cdet').Value := '';
      ibSP.ExecProc;

      qres := 0;
      sant := 0;
      with cad_pro_est do
      begin
        Close;
        SelectSQL.Clear;
        SelectSQL.Add('SELECT * FROM CAD_PRO_EST');
        SelectSQL.Add('WHERE  EST_CPRO = '''+edcpro.Text+'''');
        SelectSQL.Add('AND    EST_DEMP = '''+cborig.Text+'''');
        SelectSQL.Add('ORDER  BY ID');
        Open;

        while not cad_pro_est.Eof do
        begin
          cad_pro_est.Edit;
          cad_pro_estEST_SANT.Value := sant;
          if cad_pro_estEST_DEBI.AsFloat > 0 then
             cad_pro_estEST_SATU.Value := cad_pro_estEST_SANT.AsFloat - cad_pro_estEST_DEBI.AsFloat
          else
             cad_pro_estEST_SATU.Value := cad_pro_estEST_SANT.AsFloat + cad_pro_estEST_CRED.AsFloat;
          sant := cad_pro_estEST_SATU.AsFloat;
          cad_pro_est.Post;
          cad_pro_est.Next;
        end;
        Last;

        if not cad_emp.Active then
           cad_emp.Open;
        cad_emp.First;

        satu := 0;
        while not cad_emp.Eof do
        begin
          Close;
          SelectSQL.Clear;
          SelectSQL.Add('SELECT * FROM CAD_PRO_EST');
          SelectSQL.Add('WHERE  EST_CPRO = '''+edcpro.Text+'''');
          SelectSQL.Add('AND    EST_DEMP = '''+cad_empEMP_FANT.AsString+'''');
          SelectSQL.Add('ORDER  BY ID');
          Open;
          Last;
          satu := satu + cad_pro_estEST_SATU.AsFloat;

          cad_emp.Next;
        end;
      end;

      with consulta do
      begin
        if frmprincipal.parametrosPAR_GRAD.AsString = '1' then
        begin
          SQL.Clear;
          SQL.Add('UPDATE CAD_PRO_GRD');
          SQL.Add('SET    GRD_QEST = '''+strtran(floattostr(satu),',','.')+''',');
          SQL.Add('       GRD_QRES = '''+strtran(floattostr(qres),',','.')+'''');
          SQL.Add('WHERE  GRD_CGRD = '''+edcpro.Text+'''');
          ExecSQL;

          SQL.Clear;
          SQL.Add('UPDATE CAD_PRO_GRD');
          SQL.Add('SET    GRD_QDIS = GRD_QEST - GRD_QRES');
          SQL.Add('WHERE  GRD_CGRD = '''+edcpro.Text+'''');
          ExecSQL;
        end
        else
        begin
          SQL.Clear;
          SQL.Add('UPDATE CAD_PRO');
          SQL.Add('SET    PRO_QEST = '''+strtran(floattostr(satu),',','.')+''',');
          SQL.Add('       PRO_QRES = '''+strtran(floattostr(qres),',','.')+'''');
          SQL.Add('WHERE  PRO_CPRO = '''+edcpro.Text+'''');
          ExecSQL;

          SQL.Clear;
          SQL.Add('UPDATE CAD_PRO');
          SQL.Add('SET    PRO_QDIS = PRO_QEST - PRO_QRES,');
          SQL.Add('       PRO_DENT = '''+formatDateTime('mm/dd/yy',date)+'''');
          SQL.Add('WHERE  PRO_CPRO = '''+edcpro.Text+'''');
          ExecSQL;
        end;
      end;
      IBTra.CommitRetaining;

      if copy(cbeven.Text,1,1) = 'T' then
      begin
        // ========================= * ESTOQUE DESTINO * ========================= //

        SQL.Clear;
        SQL.Add('SELECT GEN_ID(ID_NO_CAD_PRO_EST,0) FROM CAD_PRO_EST');
        Open;
        id := fields[0].AsInteger+1;

        ibSP.StoredProcName := 'SP_CAD_PRO_EST';
        ibSP.Prepare;
        ibSP.ParamByName('id').Value   := null;
        ibSP.ParamByName('cest').Value := id;
        ibSP.ParamByName('docu').Value := strzero(id,6);
        ibSP.ParamByName('dcad').Value := Date;
        ibSP.ParamByName('cfav').Value := orig;
        ibSP.ParamByName('dfav').Value := cborig.Text;
        ibSP.ParamByName('cemp').Value := dest;
        ibSP.ParamByName('demp').Value := cbdest.Text;
        ibSP.ParamByName('cart').Value := frmcad_pro.cadastroPRO_CART.AsString;
        ibSP.ParamByName('cpro').Value := edcpro.Text;
        ibSP.ParamByName('cpr2').Value := edcpro.Text;
        ibSP.ParamByName('dpro').Value := frmcad_pro.cadastroPRO_DPRO.AsString;
        ibSP.ParamByName('duni').Value := frmcad_pro.cadastroPRO_DUNI.AsString;
        ibSP.ParamByName('debi').Value := 0;
        ibSP.ParamByName('cred').Value := edqtde.Text;
        ibSP.ParamByName('flag').Value := 'T';
        ibSP.ParamByName('dusu').Value := frmprincipal.cad_usuUSU_DUSU.AsString;
        ibSP.ParamByName('cdet').Value := '';
        ibSP.ParamByName('dero').Value := null;        
        ibSP.ExecProc;
      end;
    end;

    qres := 0;
    sant := 0;
    with cad_pro_est do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_PRO_EST');
      SelectSQL.Add('WHERE  EST_CPRO = '''+edcpro.Text+'''');
      SelectSQL.Add('AND    EST_DEMP = '''+cbdest.Text+'''');
      SelectSQL.Add('ORDER  BY ID');
      Open;

      while not cad_pro_est.Eof do
      begin
        cad_pro_est.Edit;
        cad_pro_estEST_SANT.Value := sant;
        if cad_pro_estEST_DEBI.AsFloat > 0 then
           cad_pro_estEST_SATU.Value := cad_pro_estEST_SANT.AsFloat - cad_pro_estEST_DEBI.AsFloat
        else
           cad_pro_estEST_SATU.Value := cad_pro_estEST_SANT.AsFloat + cad_pro_estEST_CRED.AsFloat;
        sant := cad_pro_estEST_SATU.AsFloat;
        cad_pro_est.Post;
        cad_pro_est.Next;
      end;
      Last;

      if not cad_emp.Active then
         cad_emp.Open;
      cad_emp.First;

      satu := 0;
      while not cad_emp.Eof do
      begin
        Close;
        SelectSQL.Clear;
        SelectSQL.Add('SELECT * FROM CAD_PRO_EST');
        SelectSQL.Add('WHERE  EST_CPRO = '''+edcpro.Text+'''');
        SelectSQL.Add('AND    EST_DEMP = '''+cad_empEMP_FANT.AsString+'''');
        SelectSQL.Add('ORDER  BY ID');
        Open;
        Last;
        satu := satu + cad_pro_estEST_SATU.AsFloat;

        cad_emp.Next;
      end;
    end;

    with consulta do
    begin
      if frmprincipal.parametrosPAR_GRAD.AsString = '1' then
      begin
        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO_GRD');
        SQL.Add('SET    GRD_QEST = '''+strtran(floattostr(satu),',','.')+''',');
        SQL.Add('       GRD_QRES = '''+strtran(floattostr(qres),',','.')+'''');
        SQL.Add('WHERE  GRD_CGRD = '''+edcpro.Text+'''');
        ExecSQL;

        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO_GRD');
        SQL.Add('SET    GRD_QDIS = GRD_QEST - GRD_QRES');
        SQL.Add('WHERE  GRD_CGRD = '''+edcpro.Text+'''');
        ExecSQL;
      end
      else
      begin
        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO');
        SQL.Add('SET    PRO_QEST = '''+strtran(floattostr(satu),',','.')+''',');
        SQL.Add('       PRO_QRES = '''+strtran(floattostr(qres),',','.')+'''');
        SQL.Add('WHERE  PRO_CPRO = '''+edcpro.Text+'''');
        ExecSQL;

        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO');
        SQL.Add('SET    PRO_QDIS = PRO_QEST - PRO_QRES,');
        SQL.Add('       PRO_DENT = '''+formatDateTime('mm/dd/yy',date)+'''');
        SQL.Add('WHERE  PRO_CPRO = '''+edcpro.Text+'''');
        ExecSQL;
      end;
    end;
    IBTra.CommitRetaining;
  except
    IBTra.RollbackRetaining;
    messageBox(handle,'Problemas na baixa do estoque !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar('P.D.V.'),MB_ICONERROR+MB_OK);
    Abort;
  end;
  frmcad_pro.cadastro.Close;
  frmcad_pro.cadastro.Open;
  close;
end;

procedure Tfrmtra_pro.BSaiClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmtra_pro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_RETURN: if not (activeControl is TdxImageEdit) then
                     selectNext (activecontrol, true, true);
       40       : if not (activeControl is TdxImageEdit) then
                     selectNext (activecontrol, true, true);
       38       : if not (activeControl is TdxImageEdit) then
                     selectNext (activecontrol, false, true);
       27       : close;              
  end;
end;

end.
